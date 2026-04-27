---
description: Khởi tạo pipeline viết sách Hizashi mới. Hỏi metadata, tạo state.json, sẵn sàng cho /book-next chạy stage 1.
argument-hint: <book_name_snake_case> (vd it_japanese)
---

Khởi tạo pipeline viết sách `$ARGUMENTS` cho Hizashi.

## Bước 1: Verify book chưa tồn tại

```bash
ls books/$ARGUMENTS/_pipeline/state.json 2>/dev/null
```

Nếu state.json đã tồn tại → STOP, báo user đã có pipeline. Suggest:
- Xem progress: `/book-status $ARGUMENTS`
- Continue: `/book-next $ARGUMENTS`
- Reset: xoá thư mục `_pipeline/` rồi chạy lại `/write-book`

## Bước 2: Hỏi user các metadata bắt buộc

Hỏi 5 thứ (1 message hỏi tất cả, đợi user trả lời):

1. **`book_title_vn`** — tên hiển thị tiếng Việt (vd "Tiếng Nhật cho Lập Trình Viên")
2. **`topic`** — chủ đề chính 1 câu (vd "Tiếng Nhật chuyên ngành Software Engineering")
3. **`target_audience`** — đối tượng (vd "Engineer Việt làm việc cho công ty Nhật, N3+")
4. **`course_id_prefix`** — prefix ID 4 chữ số. Đề xuất check memory `business_japanese_seed.md` để biết prefix nào đã dùng. Suggest 8020 (next sau 8010 business).
5. **`domain_expert_role`** — vai trò expert cho stage 9c (vd "Senior Software Engineer Nhật 10 năm kinh nghiệm")

## Bước 3: Validate inputs

- `$ARGUMENTS` snake_case OK?
- `course_id_prefix` chưa được dùng (verify bằng cách read memory + grep release/)?
- 5 fields đều có giá trị?

Nếu fail → ask user lại.

## Bước 4: Tạo folder + state

```bash
mkdir -p books/$ARGUMENTS/_pipeline
```

Tạo `books/$ARGUMENTS/_pipeline/state.json` từ template `.claude/skills/book-writing-pipeline/templates/state.json`, fill:
- `book_name`: $ARGUMENTS
- `book_title_vn`: <user input>
- `topic`: <user input>
- `target_audience`: <user input>
- `course_id_prefix`: <user input>
- `domain_expert_role`: <user input>
- `current_stage`: 1
- `metadata.started_at`: now ISO
- `metadata.last_action`: "Pipeline initialized"

## Bước 5: Báo user

```
✓ Pipeline khởi tạo thành công cho sách: $ARGUMENTS

Metadata:
- Title: <book_title_vn>
- Topic: <topic>
- Target: <target_audience>
- Course ID prefix: <course_id_prefix>
- Domain expert: <domain_expert_role>

State: books/$ARGUMENTS/_pipeline/state.json (current_stage = 1)

10 stages của pipeline:
1. Research (subagent book-researcher) ← NEXT
2. Outline (TOC + module list)
3. Draft (chi tiết từng module)
4. Content markdown (full chương lý thuyết)
5. Bài tập JSON
6. Review JP/VN (subagent)
7. Consistency check (subagent)
8. Module mapping
9. Hội đồng thẩm định (3 subagents)
10. Hiệu đính + tạo SQL seed

Chạy /book-next $ARGUMENTS để bắt đầu Stage 1.
```

## Constraints

- KHÔNG override state.json đã có (chỉ tạo nếu chưa có)
- KHÔNG chạy stage nào — chỉ init
- Hỏi user trước khi tạo (đừng giả định values)
