# Đặc Tả Bài Tập -- Exercise Specification

## Thư mục

```
book_reading/content/
├── exercises_common/              ← File chung cho TẤT CẢ parts
│   ├── EXERCISE_SPEC.md           ← File này
│   └── convert_draft_to_json.py
├── part_01/
│   ├── exercises/                 ← JSON chuẩn (cho app/DB)
│   └── exercises_draft/           ← Draft dạng markdown
├── part_02/
│   ├── exercises/
│   └── exercises_draft/
└── ...
```

## Chạy chuyển đổi
```bash
# Từ thư mục exercises_common/
python convert_draft_to_json.py ../part_XX/exercises_draft/lesson_YY_draft.md ../part_XX/exercises/lesson_YY.json

# Hoặc từ thư mục exercises_draft/ của từng part
python ../../exercises_common/convert_draft_to_json.py lesson_YY_draft.md ../exercises/lesson_YY.json
```

---

## 7 Loại Câu Hỏi

### 1. fill_particle (Điền trợ từ)
- answer_mode: **select**
- Người dùng chọn trợ từ đúng điền vào （　）

### 2. prediction (Dự đoán)
- answer_mode: **select**
- Cho đầu câu + trợ từ → người dùng dự đoán phần tiếp

### 3. chunking (Chia khối)
- answer_mode: **order**
- Người dùng sắp xếp các khối bunsetsu đúng thứ tự

### 4. pair_distinction (Phân biệt cặp)
- answer_mode: **select**
- Cho 2 câu gần giống → chọn câu đúng nghĩa

### 5. packaging (Đóng gói)
- answer_mode: **select**
- Cho cụm bunsetsu → chọn hình ảnh đóng gói 🔒 đúng

### 6. reorder (Sắp xếp)
- answer_mode: **order**
- Các khối xáo trộn → sắp xếp thành câu đúng

### 7. quick_translate (Dịch nhanh)
- answer_mode: **select**
- Cho câu tiếng Nhật → chọn bản dịch tự nhiên nhất

---

## JSON Schema

```json
{
  "id": "L02_FP_01",
  "lesson_id": 2,
  "question_type": "fill_particle",
  "answer_mode": "select",
  "difficulty": 1,
  "sentence": "猫がいます。",
  "sentence_translation": "Có con mèo.",
  "question_text": "猫（　）います。",
  "question_description": "Điền trợ từ đúng",
  "answers": [
    { "text": "が", "is_correct": true, "order": null },
    { "text": "は", "is_correct": false, "order": null }
  ],
  "explanation": "が đánh dấu chủ ngữ tồn tại",
  "hint": "Chủ ngữ tồn tại → が",
  "tags": ["が", "tồn_tại"]
}
```

### Quy tắc answers
- **select**: `is_correct` = true/false, `order` = null
- **order**: `is_correct` = true (tất cả), `order` = 1, 2, 3...
- Đáp án được shuffle tự động (seed tối ưu phân bố đều)

---

## Draft Format (.md)

```markdown
## [question_type] | [difficulty]
[sentence - câu chuẩn tiếng Nhật]
[sentence_translation - bản dịch]
[question_text - câu hiển thị cho người dùng]
> [answers phân cách bằng |]
= [đáp án đúng: text cho select, index(0-based) cho prediction, thứ tự cho reorder]
? [hint - optional, bỏ dòng này nếu không cần]
! [explanation]
# [tags phân cách bằng space]
```

### Ví dụ mỗi loại

**fill_particle:**
```
## fill_particle | 1
猫がいます。
Có con mèo.
猫（　）います。
> が | は | を | に
= が
? Chủ ngữ tồn tại → が
! が đánh dấu chủ ngữ tồn tại
# が tồn_tại
```

**prediction:**
```
## prediction | 1
本を読みます。
Đọc sách.
本を... → Gặp を, dự đoán?
> Sắp có hành động tác động | Sắp có tồn tại | Sắp có điểm đến | Sắp có mô tả
= 0
! を → sắp có động từ tác động
# を dự_đoán
```

**chunking:**
```
## chunking | 1
本を読みます
Đọc sách.
> 本を | 読みます
# を chunking
```

**pair_distinction:**
```
## pair_distinction | 2
田中さんは来ました。/ 田中さんが来ました。
Tanaka đã đến. / Tanaka (chính anh ấy) đã đến.
Câu nào nhấn mạnh 'chính TANAKA'?
> 田中さんは来ました。 | 田中さんが来ました。
= 田中さんが来ました。
! は = chủ đề. が = nhấn mạnh thông tin mới
# は が phân_biệt
```

**packaging:**
```
## packaging | 2
母が作った料理はおいしいです。
Món ăn mẹ nấu rất ngon.
🔒 母が作った料理は → đóng gói thành?
> 🔒 "món ăn MẸ nấu" → は → sắp có nhận xét | 🔒 "mẹ nấu ăn" → sắp kết câu | ...
= 🔒 "món ăn MẸ nấu" → は → sắp có nhận xét
! Đóng gói gom mệnh đề thành 1 hình ảnh
# が は đóng_gói
```

**reorder:**
```
## reorder | 1
本を読みます。
Đọc sách.
> 読みます | 本を
= 本を | 読みます
# を reorder
```

**quick_translate:**
```
## quick_translate | 1
本を読みます。
Đọc sách.
本を / 読みます。 → Chọn bản dịch đúng:
> Đọc sách. | Sách đọc. | Viết sách. | Mua sách.
= Đọc sách.
! を = đối tượng → 本 bị tác động bởi 読む
# を dịch
```

---

## Nguyên tắc viết câu hỏi

1. **Phải giúp người dùng HIỂU phương pháp**, không phải đố mẹo
2. Mỗi câu hỏi phải liên kết với kỹ thuật: chia khối / dự đoán / đóng gói
3. Explanation phải giải thích TẠI SAO, không chỉ đáp án đúng
4. Đáp án sai phải hợp lý (người chưa hiểu có thể chọn), không quá dễ loại
5. Không lộ đáp án trong question_text hoặc đáp án (không thêm chú thích)
6. Difficulty: 1 = cơ bản, 2 = cần phân biệt/suy luận, 3 = nâng cao
7. Mỗi lesson nên có ~35-40 câu, phân bố đều 7 loại
