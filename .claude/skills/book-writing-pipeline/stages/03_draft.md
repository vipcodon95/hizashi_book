# Stage 3: Draft (Chi tiết từng module)

> **Mục tiêu**: Từ outline → draft chi tiết cho mỗi module. Mỗi module có outline ~500-1000 từ (sub-sections, key points, ví dụ minh hoạ). Stage 4 sẽ expand draft này thành full markdown.

## Triển khai

**Main Claude trực tiếp**.

## Quy trình

### 1. Đọc input

```python
outline = read("books/<book>/_pipeline/02_outline.md")
state = json.loads(read("books/<book>/_pipeline/state.json"))
modules = state["modules"]
```

### 2. Cho mỗi module trong `state.modules`, tạo draft section

Format trong file `_pipeline/03_draft.md`:

```markdown
# Draft — <book_title_vn>

## Module 1: <module.name>

**ID**: <module.module_id>
**Code**: <module.code>
**Folder**: <module.folder>
**Type**: <module.module_type>
**Difficulty**: <module.difficulty>

### Mục tiêu học tập (3-5 bullet)
- ...
- ...

### Cấu trúc bài lý thuyết (5-8 sub-sections)

#### 1. <Tên sub-section 1>
- Key points:
  - ...
  - ...
- Ví dụ minh hoạ: ...

#### 2. <Tên sub-section 2>
...

### Bài tập kế hoạch
- BaiTap (40 câu × 4 levels):
  - Level 1 (10 câu): <focus>, <ví dụ câu hỏi mẫu>
  - Level 2 (10 câu): ...
  - Level 3 (10 câu): ...
  - Level 4 (10 câu): ...
- Mogishiken (nếu có): 5 sections × 4 câu
  - Section 1: <document_type>, <situation>
  - ...

### Liên kết kiến thức
- Cần kiến thức từ module: <list>
- Là tiền đề cho module: <list>

---

## Module 2: ...
```

### 3. Quy tắc cho draft

- **Mỗi sub-section có 3-5 key points** — không quá ngắn (chỉ 1 dòng), không quá dài (1 trang)
- **Ví dụ minh hoạ phải cụ thể** — đưa ra câu Nhật mẫu (chưa cần đầy đủ furigana/dịch ở stage này)
- **Avoid filler text** — không viết "Phần này sẽ giải thích về ..." (vô nghĩa, cụ thể luôn)
- **Plan câu hỏi mẫu cho mỗi level** — giúp stage 5 nhanh hơn

### 4. Save output + update state

```python
write("books/<book>/_pipeline/03_draft.md", draft_content)
state["stages"]["03_draft"] = {
  "status": "done",
  "output": "_pipeline/03_draft.md",
  "completed_at": "<now>"
}
state["current_stage"] = 4
save_state(state)
```

### 5. Báo user

```
✓ Stage 3 (Draft) hoàn tất.
Output: books/<book>/_pipeline/03_draft.md (<X> chars)

Đã draft <N> modules:
1. <module 1 name> — <X> sub-sections
2. <module 2 name> — <Y> sub-sections
...

Chạy /book-next <book> để sang Stage 4 (Content markdown).
```

## Constraints

- File draft 1 file duy nhất, KHÔNG tách N file (vì cross-module reference dễ hơn khi cùng 1 file)
- Mỗi module section trong draft 500-1000 từ — quá ngắn → stage 4 sẽ thiếu materail; quá dài → đã viết content rồi (sai stage)
- Không tạo file `.md` thực trong folder module ở stage này — đó là việc stage 4

## Failure handling

- 1 module không đủ thông tin → ghi `> TODO: cần research thêm về X` trong draft, vẫn save và continue
- Stage 4 sẽ catch các TODO này

## Tham khảo

- Template: `templates/chapter_template.md` — structure stage 4 sẽ apply
- Nội dung mẫu: `books/business_japanese/2.1.0_keigo_phan_loai/2.1.0_Phan_loai_Kinh_ngu.md`
