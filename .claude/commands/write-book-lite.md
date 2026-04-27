---
description: Khởi tạo pipeline LITE viết sách Hizashi DIALOGUE-ONLY (không có bài tập JSON, không seed DB). Hỏi metadata, tạo state.json, sẵn sàng cho /book-next-lite chạy stage 1.
argument-hint: <book_name_snake_case> (vd hoa_year2)
---

Khởi tạo pipeline LITE viết sách `$ARGUMENTS` cho Hizashi.

**Pipeline LITE = 8 stages, dialogue-only, KHÔNG có bài tập, KHÔNG seed DB.**

## Bước 1: Verify book chưa tồn tại

```bash
ls books/$ARGUMENTS/_pipeline/state.json 2>/dev/null
```

Nếu state.json đã tồn tại → STOP, báo user đã có pipeline. Suggest:
- Xem progress: `/book-status $ARGUMENTS`
- Continue: `/book-next-lite $ARGUMENTS`
- Reset: xoá thư mục `_pipeline/` rồi chạy lại `/write-book-lite`

## Bước 2: Hỏi user các metadata bắt buộc

Hỏi 4 thứ (1 message hỏi tất cả, đợi user trả lời) — **KHÔNG hỏi `course_id_prefix`** vì pipeline LITE không seed DB:

1. **`book_title_vn`** — tên hiển thị tiếng Việt (vd "Hoa Năm 2 — Trở Thành Sempai")
2. **`topic`** — chủ đề chính 1 câu (vd "Năm 2 của TTS Hoa: lấy chứng chỉ Sekininsha + dạy kohai mới")
3. **`target_audience`** — đối tượng (vd "TTS đã xong năm 1, người đọc đã theo sách 11")
4. **`domain_expert_role`** — vai trò expert cho stage 7c (vd "Cán bộ phụ trách thực tập sinh + chuyên gia Tokutei Ginou")

## Bước 3: Validate inputs

- `$ARGUMENTS` snake_case OK?
- 4 fields đều có giá trị?

Nếu fail → ask user lại.

## Bước 4: Tạo folder + state

```bash
mkdir -p books/$ARGUMENTS/_pipeline
```

Tạo `books/$ARGUMENTS/_pipeline/state.json` từ template `.claude/skills/book-writing-pipeline-lite/templates/state.json`, fill:
- `pipeline_type`: "lite" (BẮT BUỘC để phân biệt với pipeline gốc)
- `book_name`: $ARGUMENTS
- `book_title_vn`: <user input>
- `topic`: <user input>
- `target_audience`: <user input>
- `domain_expert_role`: <user input>
- `current_stage`: 1
- `metadata.started_at`: now ISO
- `metadata.last_action`: "Pipeline LITE initialized"

## Bước 5: Báo user

```
✓ Pipeline LITE khởi tạo thành công cho sách: $ARGUMENTS

Metadata:
- Title: <book_title_vn>
- Topic: <topic>
- Target: <target_audience>
- Domain expert: <domain_expert_role>
- Pipeline type: LITE (8 stages, dialogue-only, no exercises/SQL)

State: books/$ARGUMENTS/_pipeline/state.json (current_stage = 1)

8 stages của pipeline LITE:
1. Research (subagent book-researcher) ← NEXT
2. Outline (TOC + module list)
3. Draft (chi tiết từng chương)
4. Content markdown DIALOGUE-FOCUS (8-15 scene/chương, ≥70% dialogue density)
5. Review JP/VN (subagent)
6. Consistency check (subagent)
7. Hội đồng thẩm định (3 subagents song song)
8. Finalize (apply fixes — KHÔNG SQL/seed)

Chạy /book-next-lite $ARGUMENTS để bắt đầu Stage 1.
```

## Constraints

- KHÔNG override state.json đã có
- KHÔNG chạy stage nào — chỉ init
- Hỏi user trước khi tạo (đừng giả định values)
- Set `pipeline_type: "lite"` BẮT BUỘC để `/book-next-lite` + `/book-status` phân biệt được
