# Stage 8 (LITE): Finalize — Apply Fixes (KHÔNG SQL)

> **Mục tiêu**:
> 1. Apply tất cả feedback từ stage 5 (review JP/VN), stage 6 (consistency), stage 7 (council)
> 2. Generate revision log
> 3. **KHÔNG** build SQL, **KHÔNG** seed DB (vì sách lite không có exercises)

## Khác gì với stage 10 pipeline gốc?

| Stage 10 (gốc) | Stage 8 (LITE) |
|---|---|
| Apply fixes | ✅ Apply fixes |
| Run validate JSON | ❌ Skip (không có JSON) |
| Build SQL (`/build-questions`) | ❌ Skip |
| Seed DB local | ❌ Skip |
| Verify table counts | ❌ Skip |
| Revision log | ✅ Revision log |

→ Stage 8 LITE chỉ làm 2 việc: (1) apply fixes, (2) ghi revision log.

## Triển khai

**Main Claude trực tiếp**.

## Quy trình

### 1. Đọc tất cả feedback

```python
review_jp_vn = read("books/<book>/_pipeline/05_jp_vn_review.md")
consistency = read("books/<book>/_pipeline/06_consistency.md")
council_summary = read("books/<book>/_pipeline/07_council/_summary.md")
council_linguist = read("books/<book>/_pipeline/07_council/linguist.md")
council_pedagogue = read("books/<book>/_pipeline/07_council/pedagogue.md")
council_domain = read("books/<book>/_pipeline/07_council/domain_expert.md")
```

### 2. Tổng hợp action items

| Severity | Source | Action item | Files affected |
|----------|--------|------------|----------------|
| Critical | Council 3/3 | <action> | <files> |
| Critical | Consistency dead links | <action> | <files> |
| Major | Council 2/3 | <action> | <files> |
| Minor | Linguist nuance | <action> | <files> |

### 3. Apply fixes (theo thứ tự severity)

**Phase A — Critical**:
- Dead cross-references → Edit file, sửa link
- Factual errors (domain) → Edit file, fix nội dung
- Cast continuity gap (vd nhân vật promise nhưng không xuất hiện) → thêm scene

**Phase B — Major**:
- Style inconsistencies → Edit
- Pedagogy issues (vd dialogue density quá thấp) → refactor
- Glossary inconsistency → search-replace

**Phase C — Minor**:
- Linguist nuance → Edit nếu nhanh, ghi note nếu phức tạp
- Glossary preference → Edit

### 4. KHÔNG cần validate / build SQL / seed

→ Skip thẳng sang revision log.

### 5. Tạo revision log

Save vào `_pipeline/08_revision_log.md`:

```markdown
# Revision Log — <book_title_vn>

## Pipeline summary
- Pipeline type: **LITE** (dialogue-only, no exercises)
- Started: <state.metadata.started_at>
- Finalized: <now>
- Total stages: 8/8 ✓

## Fixes applied (stage 8)

### Critical (<N>)
- [x] <action> — <files affected>
- [x] ...

### Major (<M>)
- [x] ...

### Minor (<P>)
- [x] ...

## Files generated

| Type | Count | Path |
|---|---|---|
| Markdown HoiThoai | <N> | `books/<book>/<folder>/*_HoiThoai.md` |
| Pipeline reports | 8 | `books/<book>/_pipeline/*.md` |

Tổng độ dài: <X> từ markdown.

## Outstanding (nếu có)

Issues từ council/consistency chưa fix vì lý do specific:
- <issue>: <reason>

## Sách đã sẵn sàng (LITE)

✅ Sách <book_title_vn> đã hoàn thành toàn bộ pipeline LITE 8 stages.
- <N> chương dialogue
- ~<X> dialogue turns
- ~<Y> từ
- Cast: <list nhân vật chính>

Next steps cho user:
1. Đọc / proofread thủ công 1-2 chương spot-check
2. Xuất bản: convert markdown → ePub / PDF / web (dùng pandoc hoặc tool tương tự)
3. KHÔNG seed DB — sách lite chỉ là content reading, không vào Hizashi app
4. Update memory `book_<NN>_<name>.md` đánh dấu hoàn thành
```

### 6. Update state final

```python
state["stages"]["08_finalize"] = {
  "status": "done",
  "output": "_pipeline/08_revision_log.md",
  "completed_at": "<now>"
}
state["current_stage"] = 9  # >8 = đã hoàn thành
state["metadata"]["last_action"] = "Pipeline LITE completed"
state["metadata"]["finalized_at"] = "<now>"
save_state(state)
```

### 7. Báo user

```
🎉 Pipeline LITE hoàn tất! Sách <book_title_vn> đã sẵn sàng.

Output:
- <N> chương markdown ở books/<book>/<folder>/*_HoiThoai.md
- Revision log: _pipeline/08_revision_log.md

Pipeline LITE không build SQL/seed DB.

Next:
- Proofread spot-check 1-2 chương
- Xuất bản: pandoc → ePub/PDF/web
```

## Constraints

- KHÔNG fix issues mà council/review không flag (no scope creep)
- KHÔNG build SQL (vì không có exercises JSON)
- KHÔNG seed DB
- Outstanding > 5 → flag warning trong revision log

## Failure handling

- Apply fix gây regression → revert + ghi note "skipped due to regression"
- Outstanding critical chưa fix → flag "v1.1 backlog" trong revision log
