# Hướng dẫn JSON Schema cho Study Course

Tài liệu này định nghĩa **format JSON chuẩn** dùng để seed bài tập (questions) và bộ câu hỏi (question_sets) cho **Study Course system** của Hizashi (bảng `study_courses`/`study_modules`/`study_question_sets`).

> **Bắt buộc tuân thủ** khi tạo sách mới. Mỗi sách có nhiều format khác nhau là bug — nguyên nhân chính khiến seed script phải viết đi viết lại.

---

## 1. Tổng quan Mapping JSON → DB

```
JSON file                     →    DB tables
────────────────────────────────────────────────────────────────────
1 file BaiTap.json            →    1+ study_question_sets (split theo level)
                                   N questions + N×4 questions_answers
                                   N study_question_set_questions

1 file Mogishiken.json        →    M reading_passages (1 per section)
                                   1 study_question_set (set_type='reading')
                                   M×K questions (passage field link)
                                   M×K×4 questions_answers

Module/Course liên kết qua    →    study_resource_question_sets
                                   (resource_type='module', resource_id=module_id)
```

### Hai dạng JSON

| Dạng | Mục đích | Schema | Set type | Có passage? |
|------|---------|--------|----------|-------------|
| **BaiTap** | Bài tập trắc nghiệm thuần (40 câu × 4 level) | Schema A | `practice` | ❌ Không |
| **Mogishiken** | Mô phỏng đề thi đọc hiểu (5 section × 4 câu) | Schema B | `reading` | ✅ Có (passage_ja) |
| **LuyenTap** | Biến thể của BaiTap (bài tập số 2 trong cùng module) | Schema A | `practice` | ❌ Không |

---

## 2. Schema A — File BaiTap / LuyenTap

**Tên file:** `<topic>_<name>_BaiTap.json` hoặc `<topic>_<name>_LuyenTap.json`
**Vd:** `2.1.1_Teineigo_BaiTap.json`, `2.1.7_TongHop_LuyenTap.json`

### Cấu trúc

```json
{
  "meta": {
    "title": "<title tiếng Anh/Romaji>",
    "title_vn": "<title tiếng Việt — sẽ thành tên question_set>",
    "total_questions": 40,
    "levels": {
      "level1": "<mô tả level 1>",
      "level2": "<mô tả level 2>",
      "level3": "<mô tả level 3>",
      "level4": "<mô tả level 4>"
    },
    "focus": "<chủ đề trọng tâm>",
    "description_vn": "<mô tả ngắn cho người dùng>"
  },
  "questions": [
    {
      "id": 1,
      "level": 1,
      "level_name": "Cơ bản",
      "category": "<nhóm/dạng câu>",
      "question_jp": "<câu hỏi tiếng Nhật>",
      "question_vn": "<câu hỏi tiếng Việt>",
      "choices": [
        {"key": "A", "jp": "<đáp án A tiếng Nhật>", "vn": "<đáp án A tiếng Việt | null>"},
        {"key": "B", "jp": "...", "vn": "..."},
        {"key": "C", "jp": "...", "vn": "..."},
        {"key": "D", "jp": "...", "vn": "..."}
      ],
      "answer": "C",
      "explanation": "<giải thích chi tiết tiếng Việt>",
      "tip": "<mẹo nhớ — optional>"
    }
  ]
}
```

### Quy tắc

- `questions` array phải có đúng `meta.total_questions` câu
- `level` ∈ `{1, 2, 3, 4}` — phân chia độ khó
  - 1 = Cơ bản (基礎)
  - 2 = Trung bình / Sơ cấp kinh doanh (初級ビジネス)
  - 3 = Trung cấp kinh doanh (中級ビジネス)
  - 4 = Nâng cao kinh doanh (上級ビジネス)
- Mỗi level nên có **10 câu** để chia đều thành 4 sets
- `choices` luôn có **4 phần tử** với `key` ∈ `{A, B, C, D}`
- `vn` trong choices có thể `null` (không bắt buộc dịch tất cả)
- `answer` là 1 trong `{A, B, C, D}` — chính xác key của đáp án đúng
- `tip` là field optional — nếu có sẽ được append vào `general_explanation` với prefix `💡`

### Sinh ra DB

```
1 file BaiTap → 4 study_question_sets (1/level), tên dạng:
   "<title_vn> — Cơ bản" (level 1, 10 câu)
   "<title_vn> — Trung bình" (level 2, 10 câu)
   "<title_vn> — Trung cấp" (level 3, 10 câu)
   "<title_vn> — Nâng cao" (level 4, 10 câu)
   set_type='practice', skill_category='grammar'
```

---

## 3. Schema B — File Mogishiken

**Tên file:** `<topic>_<name>_Mogishiken.json`
**Vd:** `2.1.0_Keigo_Mogishiken.json`, `2.1.7_TongHop_Mogishiken.json`

### Cấu trúc

```json
{
  "meta": {
    "title": "<title tiếng Anh/Romaji>",
    "title_vn": "<title tiếng Việt>",
    "type": "mogishiken_dokkai",
    "total_sections": 5,
    "total_questions": 20,
    "format_note": "<ghi chú format đề thi>",
    "description_vn": "<mô tả ngắn>"
  },
  "sections": [
    {
      "section_id": 1,
      "level": 1,
      "level_name": "Cơ bản",
      "document_type": "<loại tài liệu — sẽ thành reading_passage.title>",
      "situation_vn": "<tình huống — sẽ thành reading_passage.translation>",
      "passage_ja": "<nội dung bài đọc tiếng Nhật, có thể nhiều paragraph với \\n>",
      "word_count": 87,
      "difficulty_note": "<ghi chú độ khó>",
      "questions": [
        {
          "id": "1-1",
          "question_jp": "<câu hỏi tiếng Nhật>",
          "question_vn": "<câu hỏi tiếng Việt>",
          "choices": [
            {"key": "A", "jp": "...", "vn": "..."},
            {"key": "B", "jp": "...", "vn": "..."},
            {"key": "C", "jp": "...", "vn": "..."},
            {"key": "D", "jp": "...", "vn": "..."}
          ],
          "answer": "B",
          "explanation": "<giải thích chi tiết tiếng Việt>"
        }
      ]
    }
  ]
}
```

### Quy tắc

- `sections` array phải có đúng `meta.total_sections` section
- Mỗi section có **4 câu hỏi** — tổng `total_questions = total_sections × 4`
- `document_type` nên là loại tài liệu thực tế: `"ビジネスメール"`, `"電話応対スクリプト"`, `"社内通知・お知らせ"`, `"会議議事録"`, `"プレゼンテーション"`, ...
- `passage_ja` là markdown thuần — KHÔNG dùng box-drawing chars (`━`, `─`, `═`, `├──`, `└──`, `│`) vì gây lỗi render Flutter
- `question.id` dạng `"<section_id>-<seq>"` (vd `"1-1"`, `"1-2"`, ..., `"5-4"`)
- Cấu trúc choices/answer giống Schema A
- KHÔNG có field `level_name` ở question level (chỉ ở section level)

### Sinh ra DB

```
1 file Mogishiken → M reading_passages + 1 study_question_set:
   - Mỗi section → 1 reading_passages row (id, content=passage_ja, title=document_type)
   - 1 set duy nhất gộp tất cả M×4 câu, set_type='reading'
   - Mỗi question có:
     * question_type='reading'
     * skill_category='dokkai'
     * passage='<reading_passage_id>' (link tới passage)
     * passage_translation=section.situation_vn
   - UI sẽ group questions cùng passage_id để hiển thị panel passage chung
```

---

## 4. Quy tắc đặt tên & tổ chức folder

### Folder structure

```
books/<book_name>/
├── <topic>_<module_code>/
│   ├── <topic>_<Name>_LyThuyet.md         # markdown lý thuyết
│   ├── <topic>_<Name>_BaiTap.json         # bài tập chính (40 câu)
│   ├── <topic>_<Name>_Mogishiken.json     # mô phỏng đề (20 câu) — optional
│   └── <topic>_<Name>_LuyenTap.json       # bài tập phụ — optional
└── _normalized/                            # script tự sinh, không sửa tay
    └── <topic>_<module_code>/
        └── <... files đã chuẩn hoá schema A/B>
```

### Quy tắc tên file

- Tiền tố `<topic>` dạng `2.1.0`, `2.1.1`, ... (số module)
- `<Name>` PascalCase tiếng Anh/Romaji (vd `Keigo`, `Teineigo`, `JuzuDoushi`)
- Suffix bắt buộc: `_LyThuyet.md` / `_BaiTap.json` / `_Mogishiken.json` / `_LuyenTap.json`

### Mapping với Module DB

Phải khai báo trong build script (`_shared/scripts/build_sql_<book>.py`):

```python
MODULE_DEFS = [
    {
        "position": 1,
        "module_id": 8011,             # ID cố định
        "code": "keigo_phan_loai",
        "name": "Phân loại Kính ngữ — Tổng quan",
        "module_type": "grammar",      # grammar | vocabulary | reading | ...
        "topic": "keigo_overview",
        "difficulty": "basic",         # basic | intermediate | advanced
        "folder": "2.1.0_keigo_phan_loai",  # match folder name
    },
    # ...
]
```

---

## 5. ID Schema (cho build script)

```
study_courses.id              = <book_id>                vd 8010
study_modules.id              = <book_id> + position     vd 8011..8015

reading_passages.id           = 8 0 1 0 <topic:1d> 0 <section:1d>
                                vd 8010101 (book=10, topic=1, section=1)
                                ⚠️ Format hiện tại: 8010 + topic*100 + section
                                   vd 8010101 = topic 1, section 1
                                       8010205 = topic 2, section 5

questions.id                  = 8 <topic:1d> <kind:1d> <seq:04d>
                                kind: 1=BaiTap, 2=Mogishiken, 3=LuyenTap
                                vd 81110001 = topic 1 BaiTap câu 1
                                   82220001 = topic 2 Mogishiken câu 1

study_question_sets.id        = 8 0 1 0 0 <topic:1d> <kind:1d> <level:1d>
                                level: 1..4 cho BaiTap, 0 cho Mogishiken (gộp)
                                vd 80100111 = topic 1 BaiTap level 1
                                   80100020 = topic 0 Mogishiken
```

> Mỗi sách phải có **prefix ID riêng** (8010 cho Business Japanese, 8020 cho sách tiếp theo, ...) để tránh collision.

---

## 6. Files mẫu

Xem 2 file mẫu trong cùng thư mục `_shared/`:

- **[`sample_baitap.json`](sample_baitap.json)** — Schema A (BaiTap/LuyenTap)
- **[`sample_mogishiken.json`](sample_mogishiken.json)** — Schema B (Mogishiken)

---

## 7. Workflow tạo sách mới

1. **Tạo folder** `books/<book_name>/<topic>_<module_code>/`
2. **Viết markdown lý thuyết** `_LyThuyet.md` — KHÔNG dùng box-drawing chars
3. **Viết JSON bài tập** theo đúng Schema A hoặc B (copy từ sample)
4. **Validate** với `normalize_<book>_json.py` (nếu cần convert từ schema cũ)
5. **Khai báo MODULE_DEFS** trong `build_sql_<book>.py`
6. **Chạy build script**:
   ```bash
   python _shared/scripts/build_sql_<book>.py
   python _shared/scripts/build_sql_<book>_theory.py
   ```
7. **Seed DB**:
   ```bash
   psql -f release/<book>_sql/<book>.sql
   psql -f release/<book>_sql/<book>_theory.sql
   ```

---

## 8. Validation checklist

Trước khi commit JSON mới:

- [ ] File có cả `meta` và `questions`/`sections` đúng schema
- [ ] `total_questions` match số phần tử thực tế
- [ ] Mỗi câu có **đủ 4 choices** với key A/B/C/D
- [ ] `answer` ∈ `{A, B, C, D}`
- [ ] BaiTap: `level` chia đều 1/2/3/4 (mỗi level 10 câu cho file 40 câu)
- [ ] Mogishiken: passage_ja KHÔNG chứa box-drawing chars
- [ ] `id` trong `questions` không trùng nhau trong cùng file
- [ ] File JSON valid (parse được bằng `json.loads`)

---

## 9. Anti-patterns (KHÔNG được làm)

| ❌ Anti-pattern | ✅ Đúng |
|---------------|--------|
| `choices: {"A": "...", "B": "..."}` (dict) | `choices: [{"key": "A", "jp": "...", "vn": "..."}, ...]` (list) |
| `question_ja` | `question_jp` |
| `explanation_vn` | `explanation` |
| Mỗi sách 1 schema riêng | Dùng chung Schema A/B |
| Box-drawing trong passage_ja | Dùng markdown list/table |
| `category_vn` | `category` (chỉ 1 field) |
| Mỗi build script tự define ID range | Tuân theo ID schema chung |

---

**Last updated**: 2026-04-27
**Schema version**: 2.0 (sau migration từ multiple formats)
