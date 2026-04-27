---
description: Seed file SQL của 1 sách Study Course vào DB local (Postgres). Đã build SQL trước qua /build-questions.
argument-hint: <book_name> (vd business_japanese)
---

Seed SQL của sách `$ARGUMENTS` vào DB local.

## Pre-flight check

### 1. SQL files tồn tại

```bash
ls release/${ARGUMENTS}_sql/${ARGUMENTS}.sql 2>/dev/null
ls release/${ARGUMENTS}_sql/${ARGUMENTS}_theory.sql 2>/dev/null
```

Nếu thiếu file chính → STOP, yêu cầu user chạy `/build-questions $ARGUMENTS` trước.

### 2. DB connection

```bash
PGPASSWORD=admin123 /Applications/Postgres.app/Contents/Versions/16/bin/psql \
  -h localhost -U admin -d hizashi_db -c "SELECT 1" 2>&1
```

Nếu không connect được → báo lỗi (Postgres.app chưa chạy?).

### 3. Confirm với user

⚠️ Hiển thị cảnh báo:
- Liệt kê file SQL sẽ chạy
- Cảnh báo: "Sẽ INSERT vào DB. Nếu sách đã seed trước, phải xoá data cũ qua `HizashiWeb/backend/scripts/delete_<book>.py --yes` trước."

Yêu cầu user xác nhận YES trước khi tiếp tục.

## Seed

```bash
PGPASSWORD=admin123 /Applications/Postgres.app/Contents/Versions/16/bin/psql \
  -h localhost -U admin -d hizashi_db \
  -f release/${ARGUMENTS}_sql/${ARGUMENTS}.sql

# Nếu có theory:
PGPASSWORD=admin123 /Applications/Postgres.app/Contents/Versions/16/bin/psql \
  -h localhost -U admin -d hizashi_db \
  -f release/${ARGUMENTS}_sql/${ARGUMENTS}_theory.sql
```

Watch output:
- Toàn `INSERT 0 1` + `COMMIT` cuối → OK
- `ERROR: duplicate key value` → đã seed trước, cần xoá data cũ
- `ERROR: violates foreign key constraint` → SQL lỗi schema, rebuild

## Verify sau seed

Read prefix ID từ memory `business_japanese_seed.md` hoặc từ build script (COURSE_ID).

```sql
-- Số rows từng bảng
SELECT 'study_courses' AS t, COUNT(*) FROM study_courses WHERE id = <COURSE_ID>
UNION ALL SELECT 'study_modules', COUNT(*) FROM study_modules
   WHERE id BETWEEN <COURSE_ID>+1 AND <COURSE_ID>+10
UNION ALL SELECT 'questions', COUNT(*) FROM questions
   WHERE id::text LIKE '<digit_prefix>%' AND is_system = TRUE
UNION ALL SELECT 'study_question_sets', COUNT(*) FROM study_question_sets
   WHERE id BETWEEN <COURSE_ID>0000 AND <COURSE_ID>9999
UNION ALL SELECT 'reading_passages', COUNT(*) FROM reading_passages
   WHERE id BETWEEN <COURSE_ID>001 AND <COURSE_ID>999;

-- set_type breakdown
SELECT set_type, COUNT(*) FROM study_question_sets
   WHERE id BETWEEN <COURSE_ID>0000 AND <COURSE_ID>9999 GROUP BY set_type;

-- Reading questions có passage link?
SELECT COUNT(*) FROM questions
   WHERE id::text LIKE '<digit_prefix>%'
     AND question_type = 'reading'
     AND passage IS NOT NULL AND passage != '';
```

## Report

- Số rows từng bảng
- Set_type breakdown
- Cảnh báo nếu reading questions thiếu passage link

## Troubleshooting

### duplicate key value
→ Sách đã seed trước. Xoá:
```bash
python HizashiWeb/backend/scripts/delete_$ARGUMENTS.py --yes
```

### foreign key constraint
→ SQL có lỗi schema. Rebuild qua `/build-questions $ARGUMENTS` rồi seed lại.

## Constraints

- KHÔNG chạy production DB (chỉ local).
- Nếu user muốn deploy production, dùng skill `deploy` (ở `HizashiWeb/.claude/skills/deploy/`).
