# Stage 4: Content Markdown (Full chương lý thuyết)

> **Mục tiêu**: Expand draft thành full markdown file cho mỗi module. Đây là stage **dài và quan trọng nhất** — chiếm 40-60% effort của pipeline.

## Triển khai

**Main Claude trực tiếp**.

## Quy trình

### 1. Đọc input

```python
draft = read("books/<book>/_pipeline/03_draft.md")
state = json.loads(read("books/<book>/_pipeline/state.json"))
modules = state["modules"]
template = read(".claude/skills/book-writing-pipeline/templates/chapter_template.md")
```

### 2. Cho TỪNG module, viết full markdown

Output path: `books/<book>/<module.folder>/<module.folder_decimal>_<Name>_LyThuyet.md`

Vd: `books/business_japanese/2.1.0_keigo_phan_loai/2.1.0_Phan_loai_Kinh_ngu.md`

Mỗi file phải:

#### A. Tuân theo `templates/chapter_template.md`

#### B. Độ dài

- Module `basic`: 1500-2500 từ (~5-7 sections)
- Module `intermediate`: 2500-4000 từ (~7-10 sections)
- Module `advanced`: 4000-6000 từ (~8-12 sections)

#### C. Quy tắc nội dung — CRITICAL

| ✅ DO | ❌ DON'T |
|-------|---------|
| Dùng furigana với `<ruby>漢字<rt>かんじ</rt></ruby>` | Box-drawing chars `━`, `─`, `═`, `├──`, `└──`, `│` |
| Markdown table chuẩn cho so sánh | ASCII art tree trong code block |
| Code block ` ``` ` cho công thức ngắn 1-2 dòng | Code block dài tree với indent |
| Câu Nhật + dịch Việt + giải thích | Câu Nhật trần không dịch |
| Header H2/H3 rõ ràng | Header H4+ (quá nested) |
| Ví dụ thực tế (email, hội thoại business mẫu) | Ví dụ trừu tượng "X làm Y" |

#### D. Cấu trúc tiêu chuẩn

```markdown
# <X.Y.Z> <Tên chương>

> **Mục tiêu:** ...

---

## Tổng quan

<intro 3-5 câu>

## 1. <Phần chính 1>

### Định nghĩa
### 1.1 <Sub>
### 1.2 <Sub>

## 2. <Phần chính 2>
...

## So sánh / Phân tích lỗi (nếu có)

| ❌ SAI | ✅ ĐÚNG |
|--------|---------|

## Tổng kết

> **Quy tắc vàng:** ...

## Mẹo ghi nhớ
```

### 3. Track progress

```python
state["stages"]["04_content_md"]["modules_done"].append(module.code)
save_state(state)  # save mỗi lần xong 1 module
```

→ Nếu session đứt giữa chừng, /book-next chỉ cần làm tiếp module chưa done.

### 4. Sau khi xong tất cả modules

```python
state["stages"]["04_content_md"] = {
  "status": "done",
  "output": "[<N> files in books/<book>/*/]",
  "completed_at": "<now>",
  "modules_done": [...]
}
state["current_stage"] = 5
save_state(state)
```

### 5. Báo user

```
✓ Stage 4 (Content markdown) hoàn tất.

Đã viết <N> files:
1. books/<book>/2.1.0_keigo_phan_loai/2.1.0_Phan_loai_Kinh_ngu.md (<X> từ)
2. ...

Tổng <Y> từ. Chạy /book-next <book> để sang Stage 5 (Bài tập JSON).
```

## Constraints

- **Resume-friendly**: Mỗi module xong save state trước khi sang module tiếp. Đứt session vẫn restart được.
- **KHÔNG quá ngắn**: <1000 từ/module = chưa đủ depth, fail stage này
- **KHÔNG nhồi quá nhiều**: >6000 từ/module = học sinh không đọc nổi, tách thành 2 module
- **Furigana**: Bắt buộc cho Kanji ở module `basic` (target N5-N4). Module advanced có thể optional.
- **Verify Flutter render OK**:
  - KHÔNG có box-drawing chars (hook validate sẽ catch nếu user save thủ công, nhưng pipeline bypass hook → phải tự discipline)
  - Bảng markdown không có cell quá dài (>200 chars) → tách thành đoạn văn riêng

## Quality checklist (tự check sau khi viết mỗi file)

- [ ] Có heading H1 với title chương
- [ ] Có "Mục tiêu" trong blockquote ở đầu
- [ ] Có ít nhất 5 sub-sections (## level)
- [ ] Có ít nhất 3 ví dụ thực tế
- [ ] Có ít nhất 1 bảng markdown
- [ ] Có "Tổng kết" ở cuối
- [ ] Không có box-drawing chars
- [ ] Furigana cho Kanji khó (target audience phụ thuộc)
- [ ] Không có "TODO" hoặc placeholder

## Failure handling

- Module quá khó để viết (thiếu material) → spawn lại `book-researcher` với scope hẹp (chỉ module đó), update draft, viết lại
- Hết context (file quá dài) → chia module thành 2 file: `<...>_LyThuyet_1.md` + `<...>_LyThuyet_2.md`, ghi note vào outline

## Tham khảo

- Sách mẫu hoàn chỉnh: `books/business_japanese/2.1.0_keigo_phan_loai/2.1.0_Phan_loai_Kinh_ngu.md`
- Template: `templates/chapter_template.md`
