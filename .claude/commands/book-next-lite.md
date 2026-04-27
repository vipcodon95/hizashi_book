---
description: Chạy stage tiếp theo của pipeline LITE (8 stages, dialogue-only). Đọc state, execute theo file stages/<NN>_<name>.md trong skill book-writing-pipeline-lite, save output, update state.
argument-hint: <book_name>
---

Chạy stage tiếp theo của pipeline LITE cho sách `$ARGUMENTS`.

## Bước 1: Load state

```bash
cat books/$ARGUMENTS/_pipeline/state.json
```

Nếu file không tồn tại → STOP, báo user chạy `/write-book-lite $ARGUMENTS` trước.

Parse:
```python
state = json.loads(...)
pipeline_type = state.get("pipeline_type", "full")
current_stage = state["current_stage"]  # 1..8 cho LITE
```

**Verify pipeline_type**:
- Nếu `pipeline_type != "lite"` → STOP, báo: "Sách này dùng pipeline gốc (10 stages). Chạy `/book-next` thay vì `/book-next-lite`."

Nếu `current_stage > 8` → báo: "Pipeline LITE đã hoàn tất. Xem `_pipeline/08_revision_log.md`."

## Bước 2: Đọc stage instruction

```bash
case $current_stage in
  1) stage_file=".claude/skills/book-writing-pipeline-lite/stages/01_research.md" ;;
  2) stage_file=".claude/skills/book-writing-pipeline-lite/stages/02_outline.md" ;;
  3) stage_file=".claude/skills/book-writing-pipeline-lite/stages/03_draft.md" ;;
  4) stage_file=".claude/skills/book-writing-pipeline-lite/stages/04_content_md_dialogue.md" ;;
  5) stage_file=".claude/skills/book-writing-pipeline-lite/stages/05_jp_vn_review.md" ;;
  6) stage_file=".claude/skills/book-writing-pipeline-lite/stages/06_consistency.md" ;;
  7) stage_file=".claude/skills/book-writing-pipeline-lite/stages/07_council.md" ;;
  8) stage_file=".claude/skills/book-writing-pipeline-lite/stages/08_finalize.md" ;;
esac
cat $stage_file
```

## Bước 3: Update state status

```python
stage_key = ["01_research", "02_outline", "03_draft", "04_content_md",
             "05_jp_vn_review", "06_consistency", "07_council", "08_finalize"][current_stage - 1]
state["stages"][stage_key]["status"] = "in_progress"
state["stages"][stage_key]["started_at"] = now_iso()
save_state(state)
```

## Bước 4: Execute stage theo instruction

Theo đúng quy trình trong stage file:
- **Spawn subagent** (stage 1, 5, 6, 7)
- **Main Claude làm trực tiếp** (stage 2, 3, 4, 8)

Cho stage 7 (council) — spawn 3 subagents trong **CÙNG 1 message** (parallel).

## Bước 5: Verify output

Theo expected output trong stage file. Nếu fail → set status = "failed", không advance.

## Bước 6: Update state — done

```python
state["stages"][stage_key]["status"] = "done"
state["stages"][stage_key]["completed_at"] = now_iso()
state["stages"][stage_key]["output"] = "<path>"
state["current_stage"] = current_stage + 1
state["metadata"]["last_action"] = f"Completed stage {stage_key} (LITE)"
save_state(state)
```

## Bước 7: Báo user

Format chung:
```
✓ Stage <NN> (<Tên>) hoàn tất. [LITE]

Output: <path>
<summary>

<Highlights / issues>

Next: chạy /book-next-lite $ARGUMENTS để sang Stage <NN+1> (<Tên>).
```

## Constraints

- KHÔNG dùng `/book-next-lite` cho sách full pipeline (verify `pipeline_type == "lite"`)
- KHÔNG skip stage
- Stage 4 (content): save state sau MỖI chương xong (resume-friendly)
- Stage 8 KHÔNG build SQL, KHÔNG seed DB

## Failure handling

- Stage fail → status="failed", không advance current_stage
- User retry bằng `/book-next-lite` — pick up từ failed stage
- Subagent timeout → log warning, partial output, retry
