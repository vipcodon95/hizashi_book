# Outline — <Tên sách>

> Template cho stage 02_outline. Output thực tế ghi vào `_pipeline/02_outline.md`.

## Metadata

- **Tên sách**: <book_title_vn>
- **Chủ đề**: <topic>
- **Đối tượng**: <target_audience>
- **Số module dự kiến**: <N>
- **Tổng số câu hỏi dự kiến**: <X>
- **Thời lượng học ước tính**: <hours>

## Triết lý sách

<1-2 đoạn giải thích góc nhìn / cách tiếp cận khác biệt của sách so với sách cùng chủ đề trên thị trường>

## Cấu trúc tổng thể

<Mô tả flow logic xuyên suốt sách. Vd: "Sách đi từ nền tảng → áp dụng → phân tích lỗi → tổng hợp">

## Modules

### Module 1: <Tên module>

- **Code**: `<module_code_snake>` (sẽ thành `code` trong `study_modules.code`)
- **Topic**: `<topic_keyword>`
- **Difficulty**: `basic | intermediate | advanced`
- **Module type**: `grammar | vocabulary | reading | listening`
- **Folder**: `<topic>_<module_code>`  (vd `2.1.0_keigo_phan_loai`)
- **Position**: 1
- **module_id**: `<course_id_prefix> + 1` (vd 8011)

**Mô tả ngắn**: <1-2 câu>

**Học gì**:
- <bullet 1>
- <bullet 2>
- <bullet 3>

**Bài tập**:
- BaiTap: 40 câu (10 × 4 levels)
- Mogishiken (optional): 5 sections × 4 câu = 20 câu reading

**Tài liệu lý thuyết**: 1 file `_LyThuyet.md`

---

### Module 2: <...>

<Tương tự>

---

(... lặp lại cho N modules ...)

---

## Reading passages plan (nếu sách có dạng đọc hiểu)

| Module | Section ID | Loại tài liệu | Tình huống |
|--------|-----------|--------------|-----------|
| 2.1.0 | 1 | ビジネスメール | Yêu cầu thông tin |
| 2.1.0 | 2 | 電話応対 | Tiếp nhận khiếu nại |
| ... | ... | ... | ... |

## ID allocation

```
study_courses.id              = <course_id_prefix>
study_modules.id              = <prefix>+1 .. <prefix>+N
reading_passages.id           = <prefix>0XX (vd 8010101)
questions.id                  = 8<topic><kind><seq:04d>
study_question_sets.id        = <prefix>0<topic><kind><level>
```

## Dependencies

- Module N học sau khi xong module M? (vd module 7 cần kiến thức module 1-6)
- Liệt kê sequence học được khuyến nghị

## Risks / Open questions

- <Câu hỏi cần làm rõ trước khi viết content>
- <Vấn đề tiềm ẩn>
