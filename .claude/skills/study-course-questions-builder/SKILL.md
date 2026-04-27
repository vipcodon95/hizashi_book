---
name: study-course-questions-builder
description: Tạo file JSON bài tập / câu hỏi / question_set cho Study Course Hizashi (bảng questions / questions_answers / study_question_sets / reading_passages). Định nghĩa schema chuẩn, ID convention, 20+ question_type taxonomy, 7 example files, validator. Kích hoạt khi user nói "tạo bài tập", "tạo question set", "seed sách mới", "viết JSON câu hỏi", hoặc đề cập bảng questions / question_sets / reading_passages của Study Course.
---

# Study Course Questions Builder

Skill này chuẩn hoá **format JSON một lần** cho mọi sách Study Course tương lai (vd `business_japanese`, `it_japanese`, ...). Các sách trước đây mỗi cái 1 format → mỗi lần seed phải viết lại normalize script. Skill này dập tắt vấn đề đó.

Nguồn schema: `HizashiWeb/backend/app/models/learning/models.py` + `study/models.py` (verified 2026-04-27).

---

## Khi nào dùng

✅ DÙNG khi:
- Tạo file JSON bài tập mới cho 1 sách Study Course
- Convert content Word/PDF/markdown sang JSON seed
- Review file JSON người khác viết
- Viết build script `build_sql_<book>.py` mới
- Debug lỗi seed DB do JSON sai schema

❌ KHÔNG dùng:
- Seed flashcards (skill riêng)
- Seed kaiwa/conversation (pipeline riêng)
- Seed JLPT mondai (đã có `seed_jlpt_mondai/` riêng — schema khác hơi)

---

## Workflow nhanh — 5 bước

```
1. Đọc Database Schema (mục bên dưới) + Question Types
2. Copy example từ examples/ → folder module
3. Sửa nội dung (giữ structure)
4. Validate: python scripts/validate_json.py <file>
5. Build SQL + seed (xem mục Workflow)
```

---

## 1. Database Schema

### Bảng 1: `questions` — Master câu hỏi

| Column | Type | Nullable | JSON field |
|--------|------|----------|-----------|
| `id` | Integer PK | No | tự sinh từ ID convention |
| `user_id` | Text | Yes | `null` cho seed |
| `is_system` | Bool | No | `true` cho seed |
| `is_khoa_cu` | Bool | No | `false` cho study course |
| **`question_type`** | Text | Yes | `question_type` (xem mục 2) |
| **`content_type`** | Text | Yes | `content_type` (vd `keigo_baitap_<module>`) |
| `level` | Text | Yes | `level` (N5..N1 hoặc BJT-1..BJT-4) |
| `selection_type` | Text | Default `single` | `single` / `multi` / `order` / `short` |
| **`question`** | Text | Yes | gộp `question_jp` + `question_vn` |
| `passage` | Text | Yes | **STR(passage_id)** — link reading_passage |
| `passage_translation` | Text | Yes | dịch passage |
| `sentence` | Text | Yes | câu ví dụ (vd có gạch chân) |
| `sentence_translation` | Text | Yes | dịch câu ví dụ |
| **`general_explanation`** | Text | Yes | gộp `explanation` + `tip` (prefix `💡`) |
| `furigana` | Text | Yes | furigana cho câu hỏi |
| `image_link` | Text | Yes | URL hình |
| `audio_ids` | JSONB | Yes | List audio_id |
| `audio_data` | JSONB | Yes | Object audio (xem audio spec) |
| **`skill_category`** | String(30) | Yes | `mojigoi` / `bunpou` / `dokkai` / `choukai` / `grammar` / `vocab` |
| `question_type_num` | Int | Default 0 | số mondai (1-6) cho JLPT |
| `base_difficulty` | Int | Default 1 | 1-5 |
| `tenant_id`, `is_deleted`, `is_active`, `created_at`, ... | — | — | tự fill |

### Bảng 2: `questions_answers` — Đáp án

| Column | Type | JSON field |
|--------|------|-----------|
| `id` | PK auto-increment | bỏ qua (DB sinh) |
| **`question_id`** | FK questions.id | tự sinh |
| **`sentence`** | Text | `text` |
| `sentence_translation` | Text | `text_translation` |
| **`is_correct`** | Bool | `is_correct` |
| `explanation` | Text | `explanation` (per-option) |
| `furigana`, `image_link`, `audio_ids`, `audio_data` | — | optional |
| **`order`** | Int | `order` |

> ⚠️ Build script dùng `DELETE FROM questions_answers WHERE question_id = X` trước insert (id auto, không ON CONFLICT được).

### Bảng 3: `study_question_sets`

| Column | JSON field | Notes |
|--------|-----------|-------|
| **`id`** | tự sinh | xem ID convention |
| **`name`** | `name` | tên hiển thị |
| `description` | `description` | mô tả |
| **`set_type`** | `set_type` | `practice` / `reading` / `review` / `quiz` / `midterm_exam` / `final_exam` / `completion_test` |
| `card_count` | `card_count` | số câu |

### Bảng 4: `study_question_set_questions` (junction)

| Column | Notes |
|--------|-------|
| `study_question_set_id` (FK) | reference set |
| `question_id` | reference questions.id |
| `order_index` | thứ tự câu trong set |
| UNIQUE `(set_id, question_id)` | upsert |

### Bảng 5: `study_resource_question_sets` (junction module/course ↔ set)

| Column | Notes |
|--------|-------|
| `resource_type` | `'module'` / `'course'` / `'learning_path'` |
| `resource_id` | module_id / course_id |
| `study_question_set_id` (FK) | reference set |
| `position` | thứ tự set trong module |
| `context` JSONB | metadata `{label: ..., section: ...}` |

> Bảng quyết định **set xuất hiện ở đâu trong UI**.

### Bảng 6: `reading_passages`

| Column | JSON field | Notes |
|--------|-----------|-------|
| **`id`** | tự sinh | |
| **`title`** | `title` | tiêu đề |
| **`content`** | `content_ja` | nội dung Nhật |
| `furigana` | `furigana` | optional |
| `translation` | `translation_vn` | dịch |
| `jlpt_level` | `jlpt_level` | "N5" / "BJT" / ... |
| `category` | `category` | `email` / `article` / `letter` / `notice` / `essay` |
| `difficulty` | `difficulty` | 1-5 |
| `word_count` | `word_count` | |
| `audio_url` | `audio_url` | nếu có |
| `highlighted_segments` | `highlighted_segments` | JSON array gạch chân (xem dưới) |

#### highlighted_segments format

```json
[{
  "marker": "①",
  "surface": "それを見て",
  "start_pos": 45,
  "end_pos": 50,
  "type": "underline | blank | highlight",
  "reading": "それをみて",
  "meaning": "..."
}]
```

### Bảng 7-8: `study_modules` + `study_courses` + `study_course_modules`

Định nghĩa trong **build script** Python (`MODULE_DEFS`), không phải JSON.

---

## 2. Question Types — 20+ giá trị

### Phân loại theo skill_category

**mojigoi (文字語彙)**
| question_type | Mục đích |
|---------------|---------|
| `kanji_yomi` | Đọc Kanji (mondai 1) |
| `kanji_kaki` | Viết Kanji (mondai 2) |
| `gokeisei` | Từ ghép (mondai 3) |
| `bunmyaku` | Ngữ cảnh (mondai 4) |
| `iikae` | Paraphrase (mondai 5) |
| `youhou` | Cách dùng từ (mondai 6) |
| `hyouki` | Chính tả |

**bunpou (文法)**
| question_type | Mục đích |
|---------------|---------|
| `khoang_trong` | Điền chỗ trống |
| `kingi_chikan` | Thay từ cận nghĩa |
| `dau_sao` | Điền dấu sao |
| `dien_tu_ngu_phap` | Điền từ ngữ pháp |
| `chon_dap_an_ngu_phap` | Chọn đáp án ngữ pháp |
| `reorder` | Sắp xếp câu (selection_type='order') |
| `chunking` | Chia cụm |

**dokkai (読解)**
| question_type | Mục đích |
|---------------|---------|
| `reading` | Đọc hiểu chung |
| `gaiyou_rikai` | Hiểu khái quát |
| `tougou_rikai` | Hiểu tích hợp |

**choukai (聴解)**
| question_type | Mục đích |
|---------------|---------|
| `kadai_rikai` | Hiểu nhiệm vụ (mondai 1) |
| `point_rikai` | Hiểu trọng điểm (mondai 2) |
| `sokuji_outou` | Phản ứng tức thì (mondai 4 — 3 options audio) |
| `hatsuwa_hyougen` | Cách diễn đạt |
| `tougou_rikai` | Tích hợp |

**Generic (BJT/business)**
| question_type | Mục đích |
|---------------|---------|
| `chon_dap_an` | Trắc nghiệm thuần (4 đáp án) |
| `dien_tu` | Điền từ thông thường |
| `hoshi` | Điền dấu sao 2 vị trí |

### Số choices

| question_type | Số choices |
|---------------|-----------|
| Đa số | **4** |
| `sokuji_outou` | **3** |
| `reorder` | **4** (sắp xếp 4 từ) |

### Mapping question_type → set_type

| question_type | set_type |
|---------------|----------|
| `chon_dap_an`, `khoang_trong`, `kanji_*`, `iikae`, `youhou` | `practice` |
| `reading`, `gaiyou_rikai`, `tougou_rikai` | `reading` |
| Nghe các loại | `practice` (hoặc `quiz`) |
| Test cuối module | `final_exam` |
| Test giữa kỳ | `midterm_exam` |
| Test mở khoá | `completion_test` |

### Format JSON từng loại — xem `examples/`

- `chon_dap_an` → `examples/example_baitap.json`
- `reading` → `examples/example_mogishiken.json`
- `kanji_yomi` → `examples/example_kanji_yomi.json`
- `kanji_kaki` → `examples/example_kanji_kaki.json`
- `khoang_trong` → `examples/example_khoang_trong.json`
- `reorder` → `examples/example_reorder.json`
- Listening (kadai_rikai + sokuji_outou) → `examples/example_listening.json`

---

## 3. JSON Schema chuẩn

### Cấu trúc 1 file đầy đủ

```json
{
  "_schema_version": "1.0",
  "_skill": "study-course-questions-builder",

  "meta": {
    "title": "...",
    "title_vn": "...",
    "module_code": "<must match build script MODULE_DEFS>",
    "total_questions": <int>,
    "focus": "...",
    "description_vn": "..."
  },

  "reading_passages": [
    /* CHỈ khi có question_type='reading'. Mỗi passage:
       { "id": "passage_001", "title": "...", "category": "email",
         "jlpt_level": "BJT", "difficulty": 1, "word_count": 87,
         "content_ja": "...", "translation_vn": "...", "audio_url": null }
    */
  ],

  "questions": [
    /* Tất cả câu hỏi của file (xem schema dưới) */
  ],

  "question_sets": [
    {
      "set_id": "set_2.1.1_baitap_level1",
      "set_type": "practice",
      "name": "...",
      "description": "...",
      "card_count": 10,
      "module_position": 1,
      "reading_passage_ref": null,
      "question_ids": ["q_001", "q_002", ...]
    }
  ]
}
```

### Schema Question

```json
{
  "id": "<unique_in_file>",
  "question_type": "<chon_dap_an | reading | kanji_yomi | ...>",
  "selection_type": "single | multi | order",
  "level": "<BJT-1..4 hoặc N5..N1>",
  "skill_category": "<grammar | dokkai | mojigoi | ...>",
  "question_jp": "<câu hỏi tiếng Nhật>",
  "question_vn": "<câu hỏi tiếng Việt>",
  "passage_ref": "<id passage — chỉ dạng reading>",
  "sentence": "<câu ví dụ — chỉ dạng kanji_*/khoang_trong>",
  "sentence_translation": "<dịch câu ví dụ>",
  "category": "<nhóm câu — tự do>",
  "choices": [
    {
      "id": "A",
      "text": "<text Nhật>",
      "text_translation": "<dịch — có thể null>",
      "is_correct": true | false,
      "order": 0,
      "explanation": "<giải thích cho option — optional>",
      "audio_data": {} | null
    }
  ],
  "explanation": "<giải thích chung>",
  "tip": "<mẹo nhớ — optional, prepend 💡>",
  "audio_data": null
}
```

### Schema Question Set

```json
{
  "set_id": "<unique>",
  "set_type": "<practice | reading | review | midterm_exam | final_exam | quiz | completion_test>",
  "name": "<tên hiển thị>",
  "description": "<mô tả>",
  "module_position": <int>,
  "card_count": <int>,
  "reading_passage_ref": "<id passage hoặc null>",
  "question_ids": ["<list id question>"]
}
```

> CRITICAL: 1 set chỉ chứa **1 question_type** thuần. KHÔNG trộn lẫn.

### audio_data spec (5 use cases)

```json
// 1. Conversation (choukai mondai 1-2)
{"type": "conversation", "conversation_id": 656,
 "full_audio": "uploads/audio/.../full.mp3",
 "question_audio": "uploads/audio/.../question.mp3"}

// 2. Conversation line cụ thể
{"type": "conversation_line", "conversation_id": 656, "line_id": 1953}

// 3. Situation + Options audio (choukai mondai 4)
{"type": "situation_options",
 "situation_audio": "uploads/audio/.../situation.mp3",
 "option_audios": [".../o1.mp3", ".../o2.mp3", ".../o3.mp3"]}

// 4. YouTube
{"type": "youtube", "url": "https://...", "start": 120, "end": 180}

// 5. File audio thường
{"type": "audio", "url": "uploads/audio/.../file.mp3", "start": null, "end": null}
```

---

## 4. ID Convention — Tránh collision

### Reserved prefix ranges

| Prefix | Domain |
|--------|--------|
| `1xxxxx`-`7xxxxx` | User data — KHÔNG đụng |
| `8001-8009` | Reserved |
| `8010` | **10_business_japanese** ✓ (LEGACY — đã production) |
| `8011-8099` | Sách mới — dùng FORMAT MỚI (xem dưới) |
| `9xxxxxxx` | JLPT exams — KHÔNG đụng |

### Quy tắc thăng tiến

**Course ID = `8` + STT folder (2 chữ số)** = 4 chữ số.

→ Mỗi sách mới: STT folder tăng +1, course_id tự match.

| Folder | course_id | Format | Note |
|--------|-----------|--------|------|
| `10_business_japanese` | 8010 | **LEGACY** | đã production — KHÔNG đổi |
| `11_<next>` | 8011 | **NEW** | reserved |
| `12_<next>` | 8012 | **NEW** | reserved |

---

### LEGACY format (chỉ áp dụng cho `10_business_japanese`)

Đã seed production, KHÔNG migrate. Format:

```
study_courses.id              = 8010
study_modules.id              = 8011..8015           (4-digit — collision risk)
reading_passages.id           = 8010 + topic*100 + section          (7-digit)
                                vd 8010101 = topic 1 section 1
questions.id                  = 8 + topic + kind + seq:04d          (8-digit)
                                vd 81110001 = topic 1 BaiTap câu 1
study_question_sets.id        = 8010 + 0 + topic + kind + level     (8-digit)
                                vd 80100111 = topic 1 BaiTap level 1
```

---

### NEW format (áp dụng cho mọi sách từ `11_<book>` trở đi)

Tránh collision với LEGACY: tất cả ID con của course mới có thêm digit để tách biệt.

```
study_courses.id              = 8<NN>                            (4 digits)
                                vd folder 11_<book> → 8011
                                vd folder 25_<book> → 8025

study_modules.id              = 8<NN><pos:3d>                    (7 digits)
                                vd 8011001 = course 8011 module 1
                                vd 8011005 = course 8011 module 5
                                → KHÔNG đụng 8011 (course of 11)
                                → KHÔNG đụng 8012 (course of 12)

reading_passages.id           = 8<NN>0<topic:1d><section:2d>     (8 digits)
                                vd 80110101 = course 8011, topic 1, section 1
                                vd 80110205 = course 8011, topic 2, section 5

questions.id                  = 8<NN><topic:1d><kind:1d><seq:03d>  (8 digits)
                                kind: 1=BaiTap, 2=Mogishiken, 3=LuyenTap
                                vd 80111001 = course 8011, topic 1, BaiTap, câu 001
                                Mỗi (course, topic, kind) tối đa 999 câu.

study_question_sets.id        = 8<NN>0<topic:1d><kind:1d><level:1d>  (9 digits)
                                vd 801101110 = course 8011, topic 1, BaiTap, level 1
                                Format: 8<NN>0<topic><kind><level>

junction tables               = AUTO-INCREMENT
```

### Verify không collision

| ID | LEGACY (8010) | NEW (8011) | NEW (8012) |
|----|--------------|------------|------------|
| `8010` | course | — | — |
| `8011` | module 1 của 8010 | course | — |
| `8012` | module 2 của 8010 | — | course |
| `8011001` | — | module 1 của 8011 | — |
| `8011005` | — | module 5 của 8011 | — |
| `80100111` | set của 8010 | — | — |
| `801101110` | — | set của 8011 | — |

→ NEW format có **9 digits cho sets** (vs LEGACY 8 digits) → KHÔNG đụng nhau.
→ Module NEW 7 digits (vs LEGACY 4 digits) → KHÔNG đụng.

⚠️ **Khi tạo build script cho sách mới**: copy template `_shared/scripts/build_sql_business_japanese.py`, **đổi formula ID** sang NEW format trên (sửa các function `question_id()`, `passage_id()`, `question_set_id()`).

### JSON dùng symbolic ID

```json
{"id": "q_2.1.1_baitap_001"}
{"set_id": "set_2.1.1_baitap_level1", "question_ids": ["q_2.1.1_baitap_001", ...]}
```

Build script convert sang integer theo formula trên.

---

## 5. Workflow seed sách mới (7 bước)

### Bước 1: Tạo folder + chọn prefix ID

```
Hizashi_book/books/<book_name>/
├── <topic>_<module_code>/
│   ├── <topic>_<Name>_LyThuyet.md
│   ├── <topic>_<Name>_BaiTap.json
│   ├── <topic>_<Name>_Mogishiken.json    (optional)
│   └── <topic>_<Name>_LuyenTap.json      (optional)
```

Naming:
- `<book_name>` snake_case (vd `business_japanese`)
- `<topic>` dạng `2.1.0`, `2.1.1`, ...
- `<Name>` PascalCase Romaji (vd `Keigo`, `Teineigo`)
- Suffix bắt buộc: `_LyThuyet.md` / `_BaiTap.json` / `_Mogishiken.json` / `_LuyenTap.json`

### Bước 2: Viết markdown lý thuyết

✅ DO: heading, list, table markdown chuẩn
❌ DON'T: box-drawing chars (`━`, `─`, `═`, `├──`, `└──`, `│`) — Flutter render crash

### Bước 3: Viết JSON theo example

```bash
cp .claude/skills/study-course-questions-builder/examples/example_<type>.json \
   books/<book>/<topic>_<module>/<topic>_<Name>_BaiTap.json
```

### Bước 4: Validate

```bash
python .claude/skills/study-course-questions-builder/scripts/validate_json.py \
  books/<book>/<topic>_<module>/<file>.json
```

Validator check 13 anti-patterns + missing fields.

### Bước 5: Khai báo MODULE_DEFS trong build script

`Hizashi_book/_shared/scripts/build_sql_<book>.py`:

```python
COURSE_ID = 8020   # next prefix
MODULE_DEFS = [
    {
        "position": 1, "module_id": 8021,
        "code": "<module_code>", "name": "<Tên hiển thị>",
        "module_type": "grammar",  # | vocabulary | reading | listening
        "topic": "<topic_keyword>",
        "difficulty": "basic",     # | intermediate | advanced
        "folder": "<topic>_<module_code>",
    },
]
```

Tham khảo `build_sql_business_japanese.py`.

### Bước 6: Build SQL

```bash
cd Hizashi_book
python _shared/scripts/build_sql_<book>.py
python _shared/scripts/build_sql_<book>_theory.py    # nếu có lý thuyết
```

### Bước 7: Seed DB local

```bash
PGPASSWORD=admin123 /Applications/Postgres.app/Contents/Versions/16/bin/psql \
  -h localhost -U admin -d hizashi_db \
  -f release/<book>_sql/<book>.sql
```

Verify:
```sql
SELECT COUNT(*) FROM study_courses WHERE id = <prefix>;
SELECT set_type, COUNT(*) FROM study_question_sets
   WHERE id BETWEEN <prefix>0000 AND <prefix>9999 GROUP BY set_type;
```

### Re-seed khi sửa JSON

```bash
python HizashiWeb/backend/scripts/delete_<book>.py --yes
python Hizashi_book/_shared/scripts/build_sql_<book>.py
psql -f release/<book>_sql/<book>.sql
```

---

## 6. Anti-patterns — KHÔNG được làm

### 1. Choices format dict thay vì list

```json
// ❌ SAI
"choices": {"A": "...", "B": "..."}, "answer": "B"

// ✅ ĐÚNG
"choices": [
  {"id": "A", "text": "...", "is_correct": false, "order": 0},
  {"id": "B", "text": "...", "is_correct": true,  "order": 1}
]
```

### 2. Field names sai

```
❌ question_ja        ✅ question_jp
❌ question_vi        ✅ question_vn
❌ explanation_vn     ✅ explanation
❌ jp_text            ✅ text
❌ japanese           ✅ jp
```

### 3. Nest questions trong sections (cho reading)

❌ `sections[].questions[]` — 1 question chỉ thuộc 1 section, KHÔNG reuse được
✅ Tách 3 mảng độc lập: `reading_passages` / `questions` / `question_sets` (link qua `passage_ref`)

### 4. Box-drawing chars trong content

```
❌ "├── 尊敬語\n├── 謙譲語\n└── 丁寧語"
❌ "━━━━━━━━━━━━━━━━━━━━"

✅ Markdown list/table chuẩn
```

### 5. `answer` field ở question level

```json
// ❌ SAI
{"choices": [...], "answer": "B"}

// ✅ ĐÚNG
{"choices": [{"id": "B", ..., "is_correct": true}]}
```

### 6. Trộn nhiều question_type trong 1 set

❌ Set chứa cả `chon_dap_an` + `kanji_yomi` + `reading`
✅ Mỗi set 1 question_type thuần. Cần combo → tách nhiều set.

### 7. ID không follow convention

❌ `"id": 1`, `"id": "abc-001"`, `"id": "1234567890"`
✅ Symbolic structured: `"id": "q_2.1.1_baitap_001"`

### 8. Thiếu `module_position`

✅ Explicit `"module_position": 1` cho mỗi set (không để build script tự đếm).

### 9. `set_type` sai

❌ `"exam"`, `"reading_practice"`, `null`
✅ 1 trong 7: `practice` | `reading` | `review` | `quiz` | `midterm_exam` | `final_exam` | `completion_test`

### 10. audio_data sai schema

❌ `"audio_data": "file.mp3"` (string)
❌ `"audio_data": {"url": "..."}` (thiếu `type`)
✅ `{"type": "audio", "url": "...", "start": null, "end": null}`

### 11. selection_type không match số correct

❌ `"selection_type": "single"` + 2 option `is_correct=true`
✅ Single → đúng 1 correct. Multi → ≥1 correct. Order → 1 correct (option ở vị trí ★).

### 12. `order` không 0-based tuần tự

❌ `[5, 2, 0, 99]`
✅ `[0, 1, 2, 3]`

### 13. `tip` quá dài

❌ Đoạn 5 câu với nhiều giải thích
✅ 1 câu ngắn — 1 mẹo. Nội dung dài → bỏ vào `explanation`.

---

## 7. Files trong skill

```
study-course-questions-builder/
├── SKILL.md                          ← file này
├── examples/
│   ├── example_baitap.json           ← chon_dap_an (8 câu × 4 levels)
│   ├── example_mogishiken.json       ← reading (2 passages × 4 câu)
│   ├── example_kanji_yomi.json       ← kanji_yomi
│   ├── example_kanji_kaki.json       ← kanji_kaki
│   ├── example_khoang_trong.json     ← khoang_trong
│   ├── example_reorder.json          ← reorder (selection_type='order')
│   └── example_listening.json        ← kadai_rikai + sokuji_outou
└── scripts/
    └── validate_json.py              ← validator (13 anti-pattern checks)
```

## Liên quan

- Memory: `memory/business_japanese_seed.md` — ID đã dùng + scripts seed
- Build scripts reference: `_shared/scripts/build_sql_business_japanese.py`
- Models DB: `HizashiWeb/backend/app/models/learning/models.py`, `study/models.py`
- Slash commands: `/build-questions`, `/validate-questions`, `/seed-book`
- Subagent: `question-set-reviewer` (review JSON câu hỏi)
- Hook: auto-validate khi save JSON trong `books/`
