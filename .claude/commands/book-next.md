---
description: Chạy stage tiếp theo của pipeline viết sách. Đọc state, execute theo file stages/<NN>_<name>.md, save output, update state.
argument-hint: <book_name>
---

Chạy stage tiếp theo của pipeline cho sách `$ARGUMENTS`.

## Bước 1: Load state

```bash
cat books/$ARGUMENTS/_pipeline/state.json
```

Nếu file không tồn tại → STOP, báo user chạy `/write-book $ARGUMENTS` trước.

Parse:
```python
state = json.loads(...)
current_stage = state["current_stage"]  # 1..10
```

Nếu `current_stage > 10` → báo: "Pipeline đã hoàn tất. Xem `_pipeline/10_revision_log.md`."

## Bước 2: Đọc stage instruction

```bash
stage_file=".claude/skills/book-writing-pipeline/stages/$(printf '%02d' $current_stage)_*.md"
cat $stage_file
```

File theo pattern:
- `01_research.md`
- `02_outline.md`
- `03_draft.md`
- `04_content_md.md`
- `05_exercises.md`
- `06_jp_vn_review.md`
- `07_consistency.md`
- `08_module_mapping.md`
- `09_council.md`
- `10_finalize.md`

## Bước 3: Update state status

Trước khi chạy:
```python
state["stages"][f"{NN}_{name}"]["status"] = "in_progress"
state["stages"][f"{NN}_{name}"]["started_at"] = now_iso()
save_state(state)
```

## Bước 4: Execute stage theo instruction

Theo đúng quy trình trong stage file. Có thể:
- **Spawn subagent** (stage 1, 6, 7, 9)
- **Main Claude làm trực tiếp** (stage 2, 3, 4, 5, 8, 10)

Cho stage 9 (council) — spawn 3 subagents trong **CÙNG 1 message** (parallel):

```
3 Agent tool calls trong 1 message:
- subagent_type: council-linguist
- subagent_type: council-pedagogue
- subagent_type: council-domain-expert
```

## Bước 5: Verify output

Theo expected output trong stage file:
- File output đã được tạo?
- Size hợp lý?
- Content match expected format?

Nếu fail → set state status = "failed", báo user, không advance current_stage.

## Bước 6: Update state — done

```python
state["stages"][f"{NN}_{name}"]["status"] = "done"
state["stages"][f"{NN}_{name}"]["completed_at"] = now_iso()
state["stages"][f"{NN}_{name}"]["output"] = "<path to output>"
state["current_stage"] = current_stage + 1
state["metadata"]["last_action"] = f"Completed stage {NN}_{name}"
save_state(state)
```

## Bước 7: Báo user

Theo format trong stage file (mỗi stage có template báo cáo riêng).

Format chung:
```
✓ Stage <NN> (<Tên>) hoàn tất.

Output: <path>
<summary>

<Highlights / issues>

Next: chạy /book-next $ARGUMENTS để sang Stage <NN+1> (<Tên>).
```

## Run-to-completion

User có thể chạy:
```
/book-next book → /book-next book → ...
```

KHÔNG tự nhảy stage tiếp (per user decision). Mỗi `/book-next` chạy 1 stage thôi.

## Constraints

- KHÔNG skip stage
- KHÔNG ngược stage (trừ khi user explicit request /book-status để xem)
- Save state sau mỗi step quan trọng — đứt session vẫn resume được
- Stage 4 + 5 (content + exercises): save state sau MỖI module xong (không đợi xong all)

## Failure handling

- Stage fail (output không đúng) → set status = "failed", KHÔNG advance current_stage
- User retry bằng cách chạy lại `/book-next` — sẽ pick up từ stage failed
- Nếu fail 2 lần liên tiếp → báo user xem log + decide manual fix vs re-run

## Edge cases

- `current_stage` không hợp lệ (< 1 hoặc > 10): báo lỗi state corrupted, instruct user fix manual
- File stage không tồn tại: STOP, instruct user check skill book-writing-pipeline
- Subagent timeout: log warning, set partial output, instruct user retry stage
