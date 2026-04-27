---
description: Build SQL từ JSON câu hỏi của 1 sách Study Course (chạy build_sql_<book>.py). Xuất file SQL vào release/<book>_sql/.
argument-hint: <book_name> (vd business_japanese)
---

Build SQL từ các file JSON của sách `$ARGUMENTS`.

## Workflow

### 1. Verify book + scripts tồn tại

Check folder `books/$ARGUMENTS/` có tồn tại không.
Check script `_shared/scripts/build_sql_$ARGUMENTS.py` có tồn tại không.

Nếu thiếu script → báo cho user copy template từ `build_sql_business_japanese.py`.

### 2. Validate tất cả JSON files trước khi build

```bash
for f in books/$ARGUMENTS/*/*_BaiTap.json books/$ARGUMENTS/*/*_Mogishiken.json books/$ARGUMENTS/*/*_LuyenTap.json 2>/dev/null; do
  if [ -f "$f" ]; then
    python3 .claude/skills/study-course-questions-builder/scripts/validate_json.py "$f"
  fi
done
```

Nếu có file FAIL → STOP, yêu cầu user fix trước khi build (tránh seed SQL có lỗi).

### 3. Run build script

```bash
python3 _shared/scripts/build_sql_$ARGUMENTS.py
```

Nếu có script theory:
```bash
python3 _shared/scripts/build_sql_${ARGUMENTS}_theory.py
```

### 4. Verify output

Check file `release/${ARGUMENTS}_sql/${ARGUMENTS}.sql` đã được sinh.

Đếm INSERT statements để verify counts:
```bash
grep -c "INSERT INTO questions " release/${ARGUMENTS}_sql/${ARGUMENTS}.sql
grep -c "INSERT INTO study_question_sets " release/${ARGUMENTS}_sql/${ARGUMENTS}.sql
grep -c "INSERT INTO reading_passages " release/${ARGUMENTS}_sql/${ARGUMENTS}.sql
```

### 5. Report

Báo cáo cho user:
- File SQL output đã sinh
- Số rows mỗi loại
- Lệnh seed tiếp theo: `/seed-book $ARGUMENTS`

## Constraints

- KHÔNG seed DB (chỉ build SQL). User phải xác nhận trước khi seed bằng `/seed-book`.
- KHÔNG sửa JSON files để build pass. Báo lỗi cho user fix.
