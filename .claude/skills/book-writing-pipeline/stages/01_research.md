# Stage 1: Research

> **Mục tiêu**: Hiểu sâu chủ đề sách trước khi outline. Tìm hiểu xu hướng, đối thủ, gap thị trường, nội dung tham khảo.

## Triển khai

**Subagent**: `book-researcher` (file `.claude/agents/book-researcher.md`)

**Tools**: WebSearch, WebFetch, Read, Grep, Glob

## Quy trình

### 1. Main Claude prepare context

Đọc state.json:
```python
state = json.loads(read("books/<book>/_pipeline/state.json"))
topic = state["topic"]
target = state["target_audience"]
prefix = state["course_id_prefix"]
```

### 2. Spawn `book-researcher` agent

Prompt cho agent (gồm ~5 mục):

```
Tôi đang viết sách "<book_title_vn>" cho Hizashi (app học tiếng Nhật).

Topic: <topic>
Target audience: <target_audience>

Hãy research và tổng hợp các điểm sau:

1. **Tài liệu hiện có trong Hizashi**:
   Đọc folder `books/` và `release/` xem có sách nào liên quan chủ đề chưa.
   Note để tránh duplicate hoặc tận dụng được nội dung.

2. **Xu hướng & nguồn tham khảo bên ngoài** (dùng WebSearch):
   - Sách giáo trình Nhật cùng chủ đề (vd みんなの日本語, BJTビジネス日本語)
   - Bài blog/YouTube channel uy tín
   - Đề thi mẫu (nếu liên quan kỳ thi như BJT, JLPT)
   - Nguồn corpus thực tế (vd email business mẫu, hội thoại kinh doanh)
   List 5-10 nguồn quan trọng.

3. **Gap analysis**:
   So với 3-5 sách phổ biến nhất trên thị trường về chủ đề này:
   - Họ làm tốt gì?
   - Họ thiếu gì?
   - Sách Hizashi có thể khác biệt thế nào?

4. **Cấu trúc đề xuất**:
   Đề xuất 5-7 chủ đề con (sub-topic) chính cho cuốn sách.
   Mỗi chủ đề mô tả ngắn (1-2 câu) + lý do nên có.

5. **Risks / Open questions**:
   - Vấn đề khó (vd: chủ đề quá rộng, target audience chưa rõ, ...)
   - Câu hỏi cần làm rõ với user trước khi outline

Báo cáo ghi vào file `books/<book>/_pipeline/01_research.md` theo format:

```markdown
# Research — <book_title_vn>

## 1. Existing content in Hizashi
...

## 2. External references
...

## 3. Gap analysis
...

## 4. Proposed sub-topics
...

## 5. Risks / Open questions
...
```

Dưới 1500 từ. Cụ thể, dẫn nguồn, không generic.
```

### 3. Sau khi agent xong

Main Claude:
1. Verify file `_pipeline/01_research.md` đã được tạo
2. Update state:
   ```json
   "01_research": {
     "status": "done",
     "output": "_pipeline/01_research.md",
     "completed_at": "<ISO timestamp>"
   },
   "current_stage": 2
   ```
3. Báo user:
   ```
   ✓ Stage 1 (Research) hoàn tất.
   Output: books/<book>/_pipeline/01_research.md (<X> chars)

   Tóm tắt:
   - <highlight 1 từ research>
   - <highlight 2>
   - <Risks/questions cần user làm rõ trước khi sang stage 2>

   Chạy /book-next <book> để sang Stage 2 (Outline).
   ```

## Constraints

- Agent KHÔNG ghi vào `state.json` — chỉ Main Claude làm
- Agent KHÔNG sửa file `books/` ngoài `_pipeline/01_research.md`
- Nếu có "open question" critical → Main Claude phải highlight trong báo cáo cho user
- Timeout: agent không quá 5 phút (web search tốn thời gian)

## Failure handling

- Agent không tìm được nguồn → vẫn tiếp tục với research nội bộ + general knowledge
- WebSearch fail → log warning, tiếp tục với 2 phần còn lại
- Output < 500 từ → flag warning trong báo cáo cho user

## Ví dụ output mong đợi

Xem `_pipeline/01_research.md` của business_japanese (sau khi pipeline chạy lần đầu).
