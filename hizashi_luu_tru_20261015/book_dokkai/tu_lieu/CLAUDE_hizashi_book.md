# Hizashi Book - Sách đọc hiểu tiếng Nhật cho người Việt

## Quy tắc BẮT BUỘC

### 1. Tiếng Việt PHẢI có dấu
- Tất cả nội dung tiếng Việt trong project PHẢI viết CÓ DẤU đầy đủ
- KHÔNG BAO GIỜ viết tiếng Việt không dấu (ví dụ: "Toi" ❌ → "Tôi" ✅)
- Áp dụng cho: exercises, practice, reading passages, explanations, translations, comments
- Khi dùng subagents: LUÔN nhấn mạnh rule này trong prompt

### 2. Question text không lộ đáp án
- question_text chỉ chứa câu hỏi + blank (　), KHÔNG thêm gợi ý [hint]
- Chỉ thêm ngữ cảnh khi đáp án thực sự ambiguous (ví dụ: trợ từ cuối câu ね/よ)

### 3. Phương pháp đọc - 3 kỹ thuật cốt lõi
- Chia khối (bunsetsu): mỗi khối = danh từ + trợ từ hoặc cụm động từ
- Dự đoán: trợ từ = biển báo dự đoán phần tiếp theo
- Đóng gói 🔒: gom danh từ + trợ từ thành 1 hình ảnh → giải phóng bộ nhớ

### 4. TTT = Thể Thông Thường (普通形)
- Không dùng "plain form" hay "informal form", luôn dùng "TTT"

## Cấu trúc project

```
book_reading/content/
├── exercises_common/          ← Spec + tools chung
│   ├── EXERCISE_SPEC.md       ← Spec bài tập trắc nghiệm
│   ├── PRACTICE_SPEC.md       ← Spec bài luyện dịch
│   ├── convert_draft_to_json.py
│   └── validate_exercises.py
├── part_01/ ... part_05/
│   ├── exercises/             ← JSON bài tập trắc nghiệm
│   ├── exercises_draft/       ← Draft markdown
│   └── practice/              ← JSON câu mẫu + bài đọc luyện dịch
book_reading/reading_collection/
├── READING_SPEC.md            ← Spec 1000 bài đọc (FORMAT BẮT BUỘC)
├── readings.db                ← SQLite tracking chủ đề/trạng thái
├── init_db.py                 ← Script khởi tạo DB
├── readings_0001_0010.json    ← Batch bài đọc
└── ...
```

## Scripts

```bash
# Convert draft → JSON
python exercises_common/convert_draft_to_json.py <input.md> <output.json>

# Validate exercises
python exercises_common/validate_exercises.py <file.json> [file2.json ...]

# Khởi tạo reading DB
python reading_collection/init_db.py
```
