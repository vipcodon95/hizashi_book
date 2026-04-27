---
description: Validate file JSON câu hỏi của Study Course theo schema chuẩn (skill study-course-questions-builder).
argument-hint: <path-to-json-file>
---

Run validator script trên file JSON câu hỏi.

Cách sử dụng:
- User truyền 1 file path: validate file đó
- User không truyền gì hoặc truyền pattern: tìm tất cả `*_BaiTap.json | *_Mogishiken.json | *_LuyenTap.json` trong workspace và validate

```bash
python3 .claude/skills/study-course-questions-builder/scripts/validate_json.py "$1"
```

Nếu validator FAIL:
- Hiển thị danh sách lỗi
- Reference đến mục **6. Anti-patterns** trong `.claude/skills/study-course-questions-builder/SKILL.md` cho hướng fix
- KHÔNG tự sửa — đề xuất fix cho user xác nhận

Nếu validator PASS:
- Báo "✅ PASS" + tóm tắt số questions/sets
- Gợi ý dùng `/build-questions <book>` để build SQL
- Nếu user muốn deep review chất lượng nội dung → suggest dùng subagent `question-set-reviewer`
