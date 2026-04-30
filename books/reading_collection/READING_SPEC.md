# Đặc Tả Bài Đọc Luyện Tập -- Reading Collection Specification

## Mục đích
1000 bài đọc từ N5 đến Native, mỗi bài kèm câu hỏi comprehension + hướng dẫn đọc theo phương pháp Hizashi.

---

## JSON Schema -- MỌI bài đọc PHẢI theo đúng format này

```json
{
  "id": "R_0001",
  "level": 1,
  "level_label": "N5_basic",
  "jlpt": "N5",
  "title": "私の家族",
  "title_vi": "Gia đình tôi",
  "topic": "family",
  "subtopic": "giới thiệu",
  "tags": ["は", "も", "です", "がいます"],
  "grammar_used": ["～は～です", "～も～", "～がいます"],
  "sentence_count": 7,
  "text": "私の家族は4人です。父と母と姉がいます。父は会社員です。母は先生です。姉も先生です。姉は英語の先生です。私は大学生です。",
  "translation": "Gia đình tôi có 4 người. Có bố, mẹ và chị gái. Bố là nhân viên công ty. Mẹ là giáo viên. Chị gái cũng là giáo viên. Chị là giáo viên tiếng Anh. Tôi là sinh viên đại học.",
  "vocabulary": [
    {"word": "家族", "reading": "かぞく", "meaning": "gia đình"},
    {"word": "会社員", "reading": "かいしゃいん", "meaning": "nhân viên công ty"}
  ],
  "process": [
    {
      "sentence": "私の家族は4人です。",
      "chunks": "私の家族は / 4人です",
      "guide": "の liên kết 'tôi' + 'gia đình' → は chủ đề → です khẳng định",
      "translation": "Gia đình tôi có 4 người."
    },
    {
      "sentence": "父と母と姉がいます。",
      "chunks": "父と / 母と / 姉が / います",
      "guide": "と liệt kê đầy đủ (chỉ 3 người này) → が chủ ngữ tồn tại → います xác nhận",
      "translation": "Có bố, mẹ và chị gái."
    },
    {
      "sentence": "父は会社員です。",
      "chunks": "父は / 会社員です",
      "guide": "は chuyển chủ đề → 'bố' → です khẳng định nghề nghiệp",
      "translation": "Bố là nhân viên công ty."
    },
    {
      "sentence": "母は先生です。",
      "chunks": "母は / 先生です",
      "guide": "は chuyển chủ đề → 'mẹ' → です khẳng định",
      "translation": "Mẹ là giáo viên."
    },
    {
      "sentence": "姉も先生です。",
      "chunks": "姉も / 先生です",
      "guide": "も → 'cũng' → chị cũng giống mẹ (cũng là giáo viên). も báo hiệu điểm chung với câu trước",
      "translation": "Chị gái cũng là giáo viên."
    },
    {
      "sentence": "姉は英語の先生です。",
      "chunks": "姉は / 英語の先生です",
      "guide": "は quay lại chủ đề 'chị' → の liên kết 'tiếng Anh' + 'giáo viên' → です khẳng định. Câu này bổ sung chi tiết cho câu trước",
      "translation": "Chị là giáo viên tiếng Anh."
    },
    {
      "sentence": "私は大学生です。",
      "chunks": "私は / 大学生です",
      "guide": "は chuyển chủ đề cuối → 'tôi' → です khẳng định. Kết thúc bài giới thiệu bằng bản thân",
      "translation": "Tôi là sinh viên đại học."
    }
  ],
  "comprehension": [
    {
      "id": "R_0001_Q1",
      "question": "家族は何人ですか。",
      "question_vi": "Gia đình có mấy người?",
      "answers": [
        {"text": "3人で、父と母と私です。", "text_vi": "3 người, gồm bố, mẹ và tôi.", "is_correct": false},
        {"text": "4人で、父と母と姉と私です。", "text_vi": "4 người, gồm bố, mẹ, chị và tôi.", "is_correct": true},
        {"text": "5人で、祖父もいます。", "text_vi": "5 người, có cả ông nội.", "is_correct": false},
        {"text": "6人で、兄もいます。", "text_vi": "6 người, có cả anh trai.", "is_correct": false}
      ],
      "explanation": "Câu 1 nói 「家族は4人です」 và câu 2 liệt kê 「父と母と姉がいます」→ と liệt kê đầy đủ = chỉ có 3 người này + 私 = 4 người."
    },
    {
      "id": "R_0001_Q2",
      "question": "お姉さんの仕事は何ですか。",
      "question_vi": "Chị gái làm nghề gì?",
      "answers": [
        {"text": "会社員です。", "text_vi": "Là nhân viên công ty.", "is_correct": false},
        {"text": "大学生です。", "text_vi": "Là sinh viên đại học.", "is_correct": false},
        {"text": "英語の先生です。", "text_vi": "Là giáo viên tiếng Anh.", "is_correct": true},
        {"text": "日本語の先生です。", "text_vi": "Là giáo viên tiếng Nhật.", "is_correct": false}
      ],
      "explanation": "Câu 5 nói 「姉も先生です」(cũng là GV) và câu 6 bổ sung chi tiết 「姉は英語の先生です」→ の liên kết 'tiếng Anh' + 'giáo viên' = giáo viên tiếng Anh. ⚠️ Bẫy: câu 5 nói 'giáo viên' nhưng câu 6 mới nói rõ 'tiếng Anh', phải đọc kỹ cả 2 câu."
    }
  ]
}
```

---

## Mô tả từng field

### Metadata (bắt buộc)
| Field | Type | Mô tả | Ví dụ |
|-------|------|-------|-------|
| `id` | string | ID duy nhất, format R_XXXX | "R_0001" |
| `level` | int | Cấp độ 1-10 | 1 |
| `level_label` | string | Nhãn cấp độ | "N5_basic" |
| `jlpt` | string | JLPT tương đương | "N5" |
| `title` | string | Tiêu đề tiếng Nhật | "私の家族" |
| `title_vi` | string | Tiêu đề tiếng Việt (CÓ DẤU) | "Gia đình tôi" |
| `topic` | string | Chủ đề chính (key) | "family" |
| `subtopic` | string | Chủ đề phụ | "giới thiệu" |
| `tags` | array | Trợ từ/ngữ pháp chính | ["は", "も", "です"] |
| `grammar_used` | array | Mẫu ngữ pháp sử dụng | ["～は～です", "～も～"] |
| `sentence_count` | int | Số câu trong bài | 7 |

### Nội dung (bắt buộc)
| Field | Type | Mô tả |
|-------|------|-------|
| `text` | string | Đoạn văn tiếng Nhật, KHÔNG chia khối, viết liền tự nhiên |
| `translation` | string | Dịch toàn đoạn tiếng Việt, CÓ DẤU, tự nhiên |
| `vocabulary` | array | Từ vựng khó: [{word, reading, meaning}] |
| `process` | array | Hướng dẫn đọc từng câu (xem format bên dưới) |
| `comprehension` | array | Câu hỏi trắc nghiệm (xem format bên dưới) |

---

## Format `process` -- Hướng dẫn đọc (ARRAY)

Mỗi phần tử là 1 câu trong bài:

```json
{
  "sentence": "Câu tiếng Nhật gốc",
  "chunks": "Khối 1 / Khối 2 / Khối 3",
  "guide": "Hướng dẫn đọc: trợ từ → dự đoán → đóng gói → giải thích",
  "translation": "Dịch câu này"
}
```

### Quy tắc `guide` theo cấp độ

**Cấp 1-4 (N5-N4):** Ngắn gọn, tập trung trợ từ + dự đoán
```
"guide": "は chủ đề → です khẳng định. Câu giới thiệu cơ bản."
```

**Cấp 5-6 (N3):** Thêm dự đoán + đóng gói 🔒
```
"guide": "ので → dự đoán: sắp có kết quả → 🔒 Đóng gói: 'vì lý do X' → giải phóng bộ nhớ → đọc tiếp"
```

**Cấp 7-8 (N2):** Thêm ⚠️ bẫy + 💡 insight
```
"guide": "⚠️ Bẫy: にもかかわらず trông giống のに nhưng trang trọng hơn → 🔒 Đóng gói: 'mặc dù X' → 💡 Tác giả dùng formal → đây là bài nghị luận"
```

**Cấp 9-10 (N1-Native):** Thêm 🎯 ý tác giả + phân tích văn học
```
"guide": "⚠️ Bẫy: 「風が泣いている」→ ẩn dụ nhân hóa, gió không khóc thật → 🔒 Đóng gói: 'cảnh vật buồn' → 💡 Kỹ thuật: nhân hóa (擬人法) → 🎯 Ý tác giả: qua thiên nhiên diễn tả nỗi cô đơn"
```

### Ký hiệu trong guide
| Ký hiệu | Ý nghĩa | Dùng từ cấp |
|----------|---------|-------------|
| → | Bước xử lý / dự đoán | 1+ |
| 🔒 | Điểm đóng gói | 3+ |
| ⚠️ | Bẫy / điểm dễ nhầm | 5+ |
| 💡 | Insight / kiến thức quan trọng | 5+ |
| 🎯 | Ý đồ tác giả / kỹ thuật văn học | 7+ |

---

## Format `comprehension` -- Câu hỏi (ARRAY)

```json
{
  "id": "R_XXXX_Q1",
  "question": "Câu hỏi bằng tiếng Nhật",
  "question_vi": "Câu hỏi bằng tiếng Việt (CÓ DẤU)",
  "answers": [
    {"text": "Đáp án A tiếng Nhật", "text_vi": "Dịch đáp án A (CÓ DẤU)", "is_correct": false},
    {"text": "Đáp án B tiếng Nhật", "text_vi": "Dịch đáp án B (CÓ DẤU)", "is_correct": true},
    {"text": "Đáp án C tiếng Nhật", "text_vi": "Dịch đáp án C (CÓ DẤU)", "is_correct": false},
    {"text": "Đáp án D tiếng Nhật", "text_vi": "Dịch đáp án D (CÓ DẤU)", "is_correct": false}
  ],
  "explanation": "Giải thích tại sao đáp án đúng. Chỉ ra CÂU NÀO trong bài + ngữ pháp liên quan. Tiếng Việt CÓ DẤU."
}
```

### Quy tắc câu hỏi
- `answers`: luôn **4 đáp án**, mỗi đáp án có `text` (JP), `text_vi` (VN có dấu), `is_correct` (boolean)
- Chỉ **1 đáp án** có `is_correct: true`
- `text`: đáp án tiếng Nhật, có ngữ cảnh (không chỉ 1 từ ngắn)
- `text_vi`: dịch đáp án sang tiếng Việt CÓ DẤU
- Đáp án sai phải **hợp lý** (người chưa đọc kỹ có thể chọn)
- `question`: tiếng Nhật phù hợp level (N5 dùng ます体, N1+ dùng TTT)
- `question_vi`: dịch câu hỏi sang tiếng Việt CÓ DẤU
- `explanation`: giải thích bằng tiếng Việt CÓ DẤU, chỉ ra câu nào chứa đáp án + ngữ pháp liên quan

### Loại câu hỏi theo cấp độ

| Cấp | Loại câu hỏi |
|-----|-------------|
| 1-2 | Hỏi sự thật trực tiếp: ai? cái gì? ở đâu? khi nào? |
| 3-4 | + Hỏi nguyên nhân/kết quả: tại sao? rồi sao? |
| 5-6 | + Hỏi suy luận: tác giả muốn nói gì? ý chính là gì? |
| 7-8 | + Hỏi phân tích: so sánh, đánh giá, đồng ý/không đồng ý |
| 9-10 | + Hỏi ẩn ý: ẩn dụ là gì? tâm trạng nhân vật? thông điệp sâu? |

### Số câu hỏi theo cấp

| Cấp | Số câu hỏi | Chi tiết |
|-----|-----------|----------|
| 1-2 | 2 | 2 sự thật |
| 3-4 | 3 | 2 sự thật + 1 suy luận |
| 5-6 | 3-4 | 1 sự thật + 1 nguyên nhân + 1-2 suy luận |
| 7-8 | 4 | 1 sự thật + 1 nguyên nhân + 1 phân tích + 1 ý chính |
| 9-10 | 5 | 1 sự thật + 1 suy luận + 1 phân tích + 1 ẩn ý + 1 ý tác giả |

---

## Format `vocabulary`

```json
{"word": "家族", "reading": "かぞく", "meaning": "gia đình"}
```

- Chỉ liệt kê từ vựng KHÓ hơn level bài đọc
- `meaning`: tiếng Việt CÓ DẤU
- Không liệt kê ngữ pháp (ngữ pháp nằm trong `grammar_used`)
- Cấp 1-2: 3-5 từ
- Cấp 3-4: 5-8 từ
- Cấp 5-6: 8-12 từ
- Cấp 7-8: 10-15 từ
- Cấp 9-10: 12-20 từ

---

## Cấp độ chi tiết

| Cấp | Label | JLPT | Số bài | Độ dài | Q/bài | Đặc điểm nội dung |
|-----|-------|------|--------|--------|-------|-------------------|
| 1 | N5_basic | N5 | 30 | 6-8 câu | 2 | Câu đơn, chủ đề gần gũi, は/が/を/に/で |
| 2 | N5_advanced | N5 | 30 | 8-10 câu | 2 | Nhiều trợ từ hơn, câu dài hơn, も/と/から/まで |
| 3 | N4_basic | N4 | 40 | 10-12 câu | 3 | て形/ない形/た形, email/nhật ký |
| 4 | N4_advanced | N4 | 40 | 12-14 câu | 3 | Điều kiện, bị động, câu phức |
| 5 | N3_basic | N3 | 100 | 12-15 câu | 3 | Mệnh đề phức, bài báo đơn giản |
| 6 | N3_advanced | N3 | 100 | 14-18 câu | 4 | Thủ thuật văn học nhẹ, đoán ý tác giả |
| 7 | N2_basic | N2 | 120 | 15-20 câu | 4 | Luận văn, phân tích xã hội, formal |
| 8 | N2_advanced | N2 | 120 | 18-22 câu | 4 | Nhân hóa, ẩn dụ, twist, ý kiến sâu |
| 9 | N1 | N1 | 210 | 20-25 câu | 5 | Văn học, nghiên cứu, triết lý |
| 10 | native | Native | 210 | 20-30 câu | 5 | Tiểu thuyết, báo chí thật, 口語/文語 mix |

---

## Quy tắc BẮT BUỘC

1. **Tiếng Việt PHẢI có dấu** -- title_vi, translation, process.translation, process.guide, vocabulary meaning, question_vi, text_vi, explanation
2. **text KHÔNG chia khối** -- viết liền tự nhiên như văn bản thật
3. **process là ARRAY** -- mỗi phần tử = 1 câu {sentence, chunks, guide, translation}
4. **answers luôn 4 đáp án** -- mỗi đáp án có {text, text_vi, is_correct}
5. **Chỉ 1 đáp án is_correct: true** -- 3 cái còn lại false
6. **Không trùng lặp chủ đề** -- check database trước khi tạo
7. **grammar_used phải thực sự xuất hiện trong text** -- không khai khống
8. **sentence_count = số phần tử process** -- phải khớp nhau

---

## File output

Mỗi batch 10-20 bài → 1 file JSON:
```
reading_collection/
├── readings_0001_0010.json    ← Bài R_0001 - R_0010
├── readings_0011_0020.json
├── ...
├── readings_0991_1000.json
├── readings.db                ← SQLite tracking
├── init_db.py                 ← Script khởi tạo DB
└── READING_SPEC.md            ← File này
```

Mỗi file chứa array:
```json
[
  { "id": "R_0001", ... },
  { "id": "R_0002", ... },
  ...
]
```
