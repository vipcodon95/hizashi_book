# Stage 2: Outline (TOC + module list)

> **Mục tiêu**: Từ research output → outline cụ thể với danh sách module + ID allocation + plan reading passages.

## Triển khai

**Main Claude trực tiếp** (không subagent — cần xuyên suốt context của research).

## Quy trình

### 1. Đọc input

```python
research = read("books/<book>/_pipeline/01_research.md")
state = json.loads(read("books/<book>/_pipeline/state.json"))
template = read(".claude/skills/book-writing-pipeline/templates/outline_template.md")
```

### 2. Sinh outline

Main Claude tự generate outline dựa vào research, theo template `outline_template.md`. Bắt buộc gồm:

#### A. Modules (5-8 modules)

Mỗi module phải có đủ field:
- `position` (1, 2, 3, ...)
- `module_id` = `course_id_prefix + position` (vd 8011, 8012, ... cho prefix 8010)
- `code` — snake_case tiếng Anh (vd `keigo_phan_loai`)
- `name` — tiếng Việt
- `module_type` — `grammar` | `vocabulary` | `reading` | `listening`
- `topic` — keyword
- `difficulty` — `basic` | `intermediate` | `advanced`
- `folder` — naming `<topic_decimal>_<code>` (vd `2.1.0_keigo_phan_loai`)

#### B. Reading passages plan (nếu có dạng đọc hiểu)

Mỗi module có Mogishiken cần list:
- Số sections (thường 5)
- Mỗi section: `document_type` (vd `ビジネスメール`), `situation_summary`

#### C. ID allocation

Phải tính sẵn theo `id_convention.md`:
```
study_courses.id              = <prefix>             vd 8010
study_modules.id              = <prefix>+1..N        vd 8011..8015
reading_passages.id           = <prefix>0XX          vd 8010101..8010705
questions.id                  = 8<topic><kind><seq>  vd 81110001..
study_question_sets.id        = <prefix>0<topic><kind><level>
```

Verify KHÔNG collision với prefix khác (đọc memory `business_japanese_seed.md` để xem prefix nào đã dùng).

### 3. Save output + update state

```python
write("books/<book>/_pipeline/02_outline.md", outline_content)

state["modules"] = [
  {"position": 1, "module_id": 8021, "code": "...", "name": "...", ...},
  ...
]
state["stages"]["02_outline"] = {
  "status": "done",
  "output": "_pipeline/02_outline.md",
  "completed_at": "<now>"
}
state["current_stage"] = 3
write("books/<book>/_pipeline/state.json", json.dumps(state, indent=2))
```

### 4. Tạo skeleton folders

Trước khi báo user xong, tạo sẵn folder structure để stage 3-5 có chỗ ghi:

```bash
for module in state.modules:
    mkdir -p books/<book>/<module.folder>/
```

(Empty folders sẽ được fill bởi stage 4-5.)

### 5. Báo user

```
✓ Stage 2 (Outline) hoàn tất.
Output: books/<book>/_pipeline/02_outline.md

Tóm tắt outline:
- <N> modules từ <module 1> đến <module N>
- ID range: <prefix>0001..<prefix>9999 (đã verify không collision)
- Estimated total: <X> câu hỏi, <Y> reading passages, <Z> chapters lý thuyết

Chạy /book-next <book> để sang Stage 3 (Draft chi tiết từng module).
```

## Constraints

- **KHÔNG** dùng prefix đã có (đọc memory trước)
- **KHÔNG** đặt module_type sai (vd module dạy ngữ pháp mà type=`vocabulary`)
- **KHÔNG** quên cập nhật `state.modules[]` — stage sau cần list này
- Outline phải explicit về số câu hỏi/sections/passages dự kiến (để stage 5 biết đo chuẩn)

## Failure handling

- Research output không đủ chi tiết → Main Claude vẫn tự outline, ghi note vào "Risks" nếu thiếu thông tin
- ID prefix collision → STOP, yêu cầu user chọn prefix khác

## Ví dụ output

Xem `Hizashi_book/release/business_japanese_sql/business_japanese.sql` để thấy structure của 1 sách đã hoàn chỉnh — outline phải đủ thông tin để build được structure đó.
