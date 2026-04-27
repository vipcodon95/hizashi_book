---
description: Hiển thị trạng thái pipeline viết sách — current stage, progress bar, files đã tạo, last action.
argument-hint: <book_name>
---

Hiển thị trạng thái pipeline cho sách `$ARGUMENTS`.

## Bước 1: Load state

```bash
cat books/$ARGUMENTS/_pipeline/state.json
```

Nếu không tồn tại → báo user chạy `/write-book $ARGUMENTS` trước.

## Bước 2: Render progress bar

```
📚 Pipeline: <book_title_vn> ($ARGUMENTS)
─────────────────────────────────────────────

Metadata:
  Topic:        <topic>
  Target:       <target_audience>
  Course ID:    <course_id_prefix>
  Domain expert: <domain_expert_role>
  Started:      <metadata.started_at>
  Last action:  <metadata.last_action>

Progress:
  ✅ 1. Research          <completed_at>
  ✅ 2. Outline           <completed_at>
  ✅ 3. Draft             <completed_at>
  🔄 4. Content markdown  in_progress (<modules_done>/<total>)
  ⏸  5. Exercises         pending
  ⏸  6. JP/VN Review      pending
  ⏸  7. Consistency       pending
  ⏸  8. Module mapping    pending
  ⏸  9. Council           pending
  ⏸  10. Finalize         pending

Current stage: 4
```

Status icons:
- ✅ done
- 🔄 in_progress
- ⏸ pending
- ❌ failed
- ⚠️  needs_review

## Bước 3: List files đã tạo

```bash
find books/$ARGUMENTS/_pipeline/ -type f -name "*.md" | sort
find books/$ARGUMENTS -type f \( -name "*.md" -o -name "*.json" \) ! -path "*/_pipeline/*" | sort
```

Hiển thị:
```
Files generated:

Pipeline outputs:
  _pipeline/01_research.md          (5.2 KB)
  _pipeline/02_outline.md           (8.1 KB)
  _pipeline/03_draft.md             (12.3 KB)
  ...

Book content (modules):
  2.1.0_keigo_phan_loai/2.1.0_*.md (3.5 KB) ← LyThuyet
  2.1.0_keigo_phan_loai/2.1.1_*.json (8.2 KB) ← BaiTap
  ...
```

## Bước 4: Module breakdown (nếu state.modules có)

```
Modules planned:
  1. <name> (id=8011, basic)         [LyThuyet:✅ BaiTap:✅ Mogishiken:✅]
  2. <name> (id=8012, intermediate)  [LyThuyet:✅ BaiTap:✅ Mogishiken:❌]
  3. <name> (id=8013, intermediate)  [LyThuyet:🔄 BaiTap:⏸ Mogishiken:⏸]
  ...
```

## Bước 5: Hint next action

```
Next:
  - Continue: /book-next $ARGUMENTS
  - Specific stage <N>: <chạy lại stage failed nếu cần>
```

## Bước 6: Recent issues (nếu có)

Đọc các file `_pipeline/06_jp_vn_review.md`, `07_consistency.md`, `09_council/_summary.md` — extract "Critical issues" section nếu có.

```
⚠️  Outstanding issues (latest reviews):

From stage 6:
  - <issue 1>

From stage 7:
  - <issue 2>

From stage 9:
  - Council critical: <issue 3>
```

## Constraints

- KHÔNG modify state — chỉ read
- KHÔNG run any stage
- Output dưới 80 dòng
- Sort files alphabetically
- Sizes hiển thị KB (rounded)

## Edge cases

- state.json corrupted → báo lỗi, instruct user check
- _pipeline/ directory missing → báo "pipeline not initialized"
- Pipeline đã hoàn thành (current_stage > 10) → hiển thị "🎉 Pipeline completed!" + path tới revision log
