# Đặc Tả Bài Luyện Tập -- Practice Specification

## Mục đích
Cho người dùng luyện **đọc-dịch** câu tiếng Nhật theo phương pháp: chia khối → dự đoán → đóng gói → dịch.

## Thư mục
```
book_reading/content/
├── part_XX/
│   └── practice/              ← JSON luyện tập
│       ├── lesson_XX_practice.json
│       └── ...
```

---

## JSON Schema

```json
{
  "lesson_id": 1,
  "lesson_title": "Trợ từ đề mục - は・も",
  "sentence_practice": [
    {
      "id": "L01_SP_01",
      "difficulty": 1,
      "sentence": "田中さんは / 先生です。",
      "translation": "Tanaka là giáo viên.",
      "note": "は → chủ đề 'Tanaka' → です khẳng định. Câu 2 khối cơ bản."
    }
  ],
  "reading_passage": [
    {
      "id": "L01_RP_01",
      "title": "Tự giới thiệu bản thân",
      "text": "私はグエンです。ベトナム人です。今は東京に住んでいます。",
      "translation": "Tôi là Nguyen. Là người Việt Nam. Hiện tại sống ở Tokyo.",
      "process": "Câu 1: は → chủ đề 'tôi' → です kết câu. Câu 2: lược bỏ は (chủ đề 'tôi' đã rõ từ câu 1). Câu 3: 今は → tương phản ngầm (hiện tại thì ở Tokyo, trước đây ở nơi khác) → に → nơi tồn tại → 住んでいます kết câu."
    }
  ]
}
```

---

## Quy tắc

### sentence_practice
- `sentence`: câu tiếng Nhật ĐÃ CHIA KHỐI bằng dấu `/` (ví dụ: `私は / 本を / 読みます。`)
- `translation`: bản dịch tiếng Việt tự nhiên
- `note`: giải thích ngắn gọn quá trình xử lý (trợ từ → dự đoán → xác nhận). Chỉ nêu điểm quan trọng, không liệt kê từng bước
- `difficulty`: 1 = cơ bản (2 khối), 2 = trung bình (3 khối), 3 = nâng cao (4+ khối)

### reading_passage
- `text`: đoạn văn liền (KHÔNG chia khối, để người dùng tự chia)
- `translation`: dịch toàn đoạn, tự nhiên
- `process`: giải thích quá trình xử lý ĐỌC từng câu, tập trung vào: trợ từ nào → dự đoán gì → đóng gói 🔒 ở đâu → lược bỏ は khi nào → chủ ngữ ẩn là ai

### Số lượng
- Part 1: ~12-15 câu mẫu + 1 passage (3-5 câu) mỗi lesson
- Part 2+: ~10-12 câu mẫu + 1-2 passages (4-6 câu) mỗi lesson

### Nguyên tắc viết
1. Tiếng Việt PHẢI có dấu
2. Câu mẫu KHÁC với câu trong bài học (không copy)
3. Câu phải tự nhiên, thực tế
4. note/process tập trung vào KỸ THUẬT ĐỌC, không giải thích ngữ pháp lý thuyết
5. Tăng dần độ khó: diff 1 → 2 → 3
