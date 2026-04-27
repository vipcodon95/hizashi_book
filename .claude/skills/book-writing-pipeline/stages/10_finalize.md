# Stage 10: Finalize (Hiệu đính + Tạo SQL seed)

> **Mục tiêu**:
> 1. Apply tất cả feedback từ stage 6 (review JP/VN), stage 7 (consistency), stage 9 (council)
> 2. Build SQL từ JSON
> 3. Seed DB local để verify
> 4. Generate revision log

## Triển khai

**Main Claude trực tiếp**.

## Quy trình

### 1. Đọc tất cả feedback

```python
review_jp_vn = read("books/<book>/_pipeline/06_jp_vn_review.md")
consistency = read("books/<book>/_pipeline/07_consistency.md")
council_summary = read("books/<book>/_pipeline/09_council/_summary.md")
council_linguist = read("books/<book>/_pipeline/09_council/linguist.md")
council_pedagogue = read("books/<book>/_pipeline/09_council/pedagogue.md")
council_domain = read("books/<book>/_pipeline/09_council/domain_expert.md")
```

### 2. Tổng hợp action items

Tạo list ưu tiên:

| Severity | Source | Action item | Files affected |
|----------|--------|------------|----------------|
| Critical | Council 3/3 | <action> | <files> |
| Critical | Consistency dead links | <action> | <files> |
| Major | Council 2/3 | <action> | <files> |
| Major | Pedagogue difficulty | <action> | <files> |
| Minor | Linguist nuance | <action> | <files> |

### 3. Apply fixes (theo thứ tự severity)

Phase A — Critical fixes:
- Dead cross-references → Edit file, sửa link
- Wrong difficulty → restructure module (có thể cần move content giữa các module)
- Factual errors (domain) → Edit file, fix nội dung
- Validate JSON sau mỗi fix

Phase B — Major fixes:
- Style inconsistencies → Edit
- Pedagogy issues (vd add more examples) → Edit
- Distractor quality → Edit JSON

Phase C — Minor fixes:
- Glossary preference → Edit (nếu nhiều file thì search-replace)
- Linguist nuance → Edit

### 4. Run hook validate sau fix

```bash
for f in books/<book>/*/*.json; do
  python3 .claude/skills/study-course-questions-builder/scripts/validate_json.py "$f"
done
```

Nếu có FAIL → fix tiếp đến PASS.

### 5. Build SQL

```bash
cd Hizashi_book
python3 _shared/scripts/build_sql_<book>.py
python3 _shared/scripts/build_sql_<book>_theory.py
```

Verify file output:
```bash
ls -lh release/<book>_sql/
```

### 6. Seed DB local (verify SQL không lỗi)

⚠️ Pre-flight check:
- Nếu sách đã từng seed (vd business_japanese), cần xoá cũ trước:
  ```bash
  python3 HizashiWeb/backend/scripts/delete_<book>.py --yes 2>/dev/null || true
  ```
  (Nếu chưa có script delete, skip — DB chưa có data)

- Seed:
  ```bash
  PGPASSWORD=admin123 /Applications/Postgres.app/Contents/Versions/16/bin/psql \
    -h localhost -U admin -d hizashi_db \
    -f release/<book>_sql/<book>.sql
  
  PGPASSWORD=admin123 /Applications/Postgres.app/Contents/Versions/16/bin/psql \
    -h localhost -U admin -d hizashi_db \
    -f release/<book>_sql/<book>_theory.sql
  ```

### 7. Verify seed

```sql
-- Counts
SELECT COUNT(*) FROM study_courses WHERE id = <prefix>;
SELECT COUNT(*) FROM questions WHERE id::text LIKE '<digit_prefix>%';
SELECT set_type, COUNT(*) FROM study_question_sets
   WHERE id BETWEEN <prefix>0000 AND <prefix>9999 GROUP BY set_type;
```

So sánh với expected count từ outline. Nếu lệch → flag warning.

### 8. Tạo revision log

Save vào `_pipeline/10_revision_log.md`:

```markdown
# Revision Log — <book_title_vn>

## Pipeline summary
- Started: <state.metadata.started_at>
- Finalized: <now>
- Total stages: 10/10 ✓

## Fixes applied (stage 10)

### Critical (<N>)
- [x] <action> — <files affected>
- [x] ...

### Major (<M>)
- [x] ...

### Minor (<P>)
- [x] ...

## SQL seed verification

| Table | Expected | Actual | Match? |
|-------|----------|--------|--------|
| study_courses | 1 | 1 | ✅ |
| study_modules | 5 | 5 | ✅ |
| reading_passages | 25 | 25 | ✅ |
| questions | 420 | 420 | ✅ |
| study_question_sets | 37 | 37 | ✅ |

## Files generated

- SQL: release/<book>_sql/<book>.sql (<X> KB)
- SQL theory: release/<book>_sql/<book>_theory.sql (<Y> KB)
- Build script: _shared/scripts/build_sql_<book>.py

## Outstanding (nếu có)

Nếu có issues từ council/consistency chưa được fix vì lý do specific:
- <issue>: <reason for not fixing>

## Sách đã sẵn sàng

✅ Sách <book_title_vn> đã hoàn thành toàn bộ pipeline 10 stages.
- <N> modules
- <X> reading passages
- <Y> questions
- <Z> question sets

Next steps cho user:
1. Test trên Flutter app (mở Hizashi app, xem course id <prefix>)
2. Deploy production: dùng skill deploy của Hizashi
3. Update memory `business_japanese_seed.md` (hoặc tạo memory mới cho book này)
```

### 9. Update state final

```python
state["stages"]["10_finalize"] = {
  "status": "done",
  "output": "_pipeline/10_revision_log.md",
  "completed_at": "<now>"
}
state["current_stage"] = 11  # >10 = đã hoàn thành
state["metadata"]["last_action"] = "Pipeline completed"
state["metadata"]["finalized_at"] = "<now>"
save_state(state)
```

### 10. Báo user

```
🎉 Pipeline hoàn tất! Sách <book_title_vn> đã sẵn sàng.

Output cuối:
- release/<book>_sql/<book>.sql (<size>)
- release/<book>_sql/<book>_theory.sql (<size>)

DB seed: <table counts match expected>

Revision log: _pipeline/10_revision_log.md

Chạy:
- Test trên Flutter app: mở app, vào tab Khoá học, chọn course id <prefix>
- Deploy: dùng skill deploy của Hizashi với SQL files trên
```

## Constraints

- KHÔNG fix bất cứ thứ gì mà council/review không flag (no scope creep)
- KHÔNG skip validate sau khi fix JSON
- KHÔNG seed production DB ở stage này (chỉ local)
- Trước khi seed: nếu sách đã seed trước, xoá cũ — nếu không có script delete, fail safely

## Failure handling

- Build SQL fail → STOP, debug build script
- Seed SQL fail (vd duplicate key) → user phải xoá data cũ qua delete script, retry
- Outstanding issues > 5 → flag warning trong revision log, user quyết tiếp tục hay rollback
