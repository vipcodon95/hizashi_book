# Hizashi_book — Project Guide

> File này được Claude Code tự load mỗi session. Mục đích: cho Claude biết nhanh dự án có gì, dùng skill/command nào — KHÔNG phải đọc full docs.

## Dự án này là gì?

Repo content cho hệ thống học tiếng Nhật **Hizashi**. Chứa:
- **Sách giáo trình** (markdown) ở `books/<book_name>/`
- **Bài tập** (JSON) ở `books/<book_name>/<topic>_<module>/*.json`
- **SQL seed** (auto-generated) ở `release/<book>_sql/`

DB target: PostgreSQL local của `HizashiWeb/backend` (project anh chị em ở `/Users/binh/Documents/Project/Hizashi`).

## Có 3 skill chính

### 1. `study-course-questions-builder` — tạo JSON câu hỏi

**Khi nào dùng**: Tạo / sửa / validate file JSON bài tập.

**Đọc**: `.claude/skills/study-course-questions-builder/SKILL.md`

**Quick reference**:
- Schema: `questions` / `questions_answers` / `study_question_sets` / `reading_passages` / junction tables
- 20+ question_type values (chon_dap_an, reading, kanji_yomi, ...)
- Examples: `examples/example_<type>.json`
- Validator: `scripts/validate_json.py`

### 2. `book-writing-pipeline` — viết sách FULL (có bài tập app)

**Khi nào dùng**: Sách Hizashi cần seed vào app (Study Course có BaiTap + Mogishiken).

**Đọc**: `.claude/skills/book-writing-pipeline/SKILL.md`

**Pipeline 10 stages**:
1. Research → 2. Outline → 3. Draft → 4. Content md → 5. Exercises JSON → 6. JP/VN review → 7. Consistency → 8. Module mapping → 9. Council (3 reviewers) → 10. Finalize + SQL seed

**State**: `books/<book>/_pipeline/state.json` với `pipeline_type: "full"` hoặc absent (resume-friendly)

**Subagents available** (tự spawn từ stage tương ứng):
- `book-researcher` (stage 1)
- `japanese-vietnamese-reviewer` (stage 6, có Edit quyền)
- `consistency-reviewer` (stage 7, report-only)
- `council-linguist` / `council-pedagogue` / `council-domain-expert` (stage 9, parallel)
- `question-set-reviewer` (utility — review JSON câu hỏi anytime)

### 3. `book-writing-pipeline-lite` — viết sách DIALOGUE-ONLY

**Khi nào dùng**: Sách hội thoại pure (không seed DB app), vd "Hoa năm 2/3", "Real Dialogues", smalltalk.

**Đọc**: `.claude/skills/book-writing-pipeline-lite/SKILL.md`

**Pipeline 8 stages** (skip exercises + module mapping + SQL):
1. Research → 2. Outline → 3. Draft → 4. **Content md DIALOGUE-FOCUS** (≥70% dialogue density, file `_HoiThoai.md`) → 5. JP/VN review → 6. Consistency → 7. Council (3 parallel) → 8. Finalize (apply fix, KHÔNG SQL/seed)

**State**: `books/<book>/_pipeline/state.json` với **`pipeline_type: "lite"`** (BẮT BUỘC để command phân biệt)

**Khác chính so với pipeline FULL**:
- File suffix `_HoiThoai.md` thay vì `_LyThuyet.md`
- Stage 4 enforce ≥70% dialogue, lý thuyết tối đa 30%
- KHÔNG có JSON exercises, KHÔNG seed DB
- 8 stages thay vì 10 → nhanh hơn ~30-40%
- Subagents dùng giống nhau nhưng prompt focus dialogue

## Slash commands available

| Command | Mục đích |
|---------|---------|
| `/write-book <name>` | Khởi tạo pipeline FULL (10 stages, có bài tập app) |
| `/book-next <name>` | Chạy stage tiếp theo của pipeline FULL |
| `/write-book-lite <name>` | Khởi tạo pipeline LITE (8 stages, dialogue-only) |
| `/book-next-lite <name>` | Chạy stage tiếp theo của pipeline LITE |
| `/book-status <name>` | Xem progress pipeline (auto-detect FULL vs LITE) |
| `/validate-questions <file>` | Validate JSON câu hỏi (chỉ FULL) |
| `/build-questions <book>` | Build SQL từ JSON (chỉ FULL) |
| `/seed-book <book>` | Seed SQL vào DB local (chỉ FULL) |

## Hooks tự động

- **PostToolUse Edit/Write/MultiEdit**: Hook `validate_questions_json.sh` tự validate khi save file matching `books/<book>/<topic>/*_BaiTap.json` / `*_Mogishiken.json` / `*_LuyenTap.json`. Nếu sai schema → cảnh báo (không chặn).

## Cấu trúc folder

```
Hizashi_book/
├── books/<book_name>/
│   ├── _pipeline/                       ← state + outputs từng stage (gitignored state.json)
│   ├── <topic>_<module>/                ← vd 2.1.0_keigo_phan_loai
│   │   ├── *_LyThuyet.md                ← markdown lý thuyết
│   │   ├── *_BaiTap.json                ← bài tập 40 câu
│   │   ├── *_Mogishiken.json            ← đọc hiểu (optional)
│   │   └── *_LuyenTap.json              ← bài tập số 2 (optional)
│   └── _normalized/                      ← (legacy) script-generated normalize
├── _shared/
│   ├── scripts/build_sql_<book>.py      ← build SQL per book
│   └── master_glossary.md               ← thuật ngữ chuẩn
├── release/
│   └── <book>_sql/<book>.sql            ← SQL output sẵn để seed
└── .claude/
    ├── skills/                           ← 2 skill (đọc SKILL.md mỗi cái khi cần)
    ├── agents/                           ← 7 subagent
    ├── commands/                         ← 6 slash command
    ├── hooks/                            ← 1 hook auto-validate JSON
    └── settings.json
```

## Quy tắc đặt tên folder + ID prefix (CHUẨN HOÁ)

### Folder STT — tăng tuần tự +1

Mỗi sách có **STT 2 chữ số** prefix folder name, tăng tuần tự khi tạo sách mới (KHÔNG group/category, chỉ để dễ nhìn khi `ls books/`):

```
books/
├── 01_email/
├── 02_phone/
├── 03_meeting/
├── 04_horenso/
├── 05_presentation/
├── 06_negotiation/
├── 07_visit_card/
├── 08_smalltalk/
├── 09_real_dialogues/
├── 10_business_japanese/    ← ✓ đã dùng
├── 11_<next>/                ← sách kế tiếp dùng STT này
└── ...
```

### ID prefix — match với STT folder

Course ID = `8` + `<STT 2 chữ số>` = **4 chữ số**:

| Folder | course_id | Format | Status |
|--------|-----------|--------|--------|
| `10_business_japanese` | **8010** | **LEGACY** (4-8 digits) | đã production — KHÔNG migrate |
| `11_<book>` | **8011** | **NEW** (4-9 digits) | reserved |
| `12_<book>` | **8012** | **NEW** | reserved |
| ... | ... | NEW | ... |

**LEGACY format** (chỉ `10_business_japanese`):
```
study_courses.id          = 8010                    (4 digits)
study_modules.id          = 8011-8015               (4 digits — sẽ collision với new books nếu dùng cùng format)
reading_passages.id       = 8010<topic><section>    (7 digits)
questions.id              = 8<topic><kind><seq:04d> (8 digits)
study_question_sets.id    = 80100<topic><kind><lv>  (8 digits)
```

**NEW format** (sách từ `11_<book>` trở đi — TRÁNH collision với LEGACY):
```
study_courses.id          = 8<NN>                                (4 digits)
study_modules.id          = 8<NN><pos:3d>                        (7 digits)
                            vd 8011001 = course 8011 module 1
reading_passages.id       = 8<NN>0<topic:1d><section:2d>         (8 digits)
                            vd 80110101 = course 8011, topic 1, section 1
questions.id              = 8<NN><topic:1d><kind:1d><seq:03d>    (8 digits)
                            vd 80111001 = course 8011, topic 1, BaiTap, câu 001
study_question_sets.id    = 8<NN>0<topic><kind><level>           (9 digits)
                            vd 801101110 = course 8011, topic 1, BaiTap, lv 1
```

→ Hệ thống hỗ trợ tới 90 sách (NN = 10..99).
→ Sách cũ (LEGACY) KHÔNG sửa — đã production.
→ Mọi sách mới dùng NEW format để không bao giờ collision với LEGACY.
→ ID >= 9xxxxxxx KHÔNG đụng (JLPT Khoa Cử dùng).

### Quy tắc khi tạo sách mới

1. **Check** folder cuối cùng trong `books/` → STT = X
2. **Tạo** folder `<X+1>_<book_name>` (vd nếu hiện tại là 10, sách mới là `11_<name>`)
3. **course_id** = `8<X+1>` (4 digits)
4. **Update** memory `business_japanese_seed.md` thêm dòng mới

### Sách hiện có

| STT | Folder | Dùng study_courses? | course_id | Status |
|-----|--------|---------------------|-----------|--------|
| 01 | 01_email | ❌ (dùng curricula) | — | content có |
| 02 | 02_phone | ❌ | — | content có |
| 03 | 03_meeting | ❌ | — | content có |
| 04 | 04_horenso | ❌ | — | content có |
| 05 | 05_presentation | ❌ | — | content có |
| 06 | 06_negotiation | ❌ | — | content có |
| 07 | 07_visit_card | ❌ | — | content có |
| 08 | 08_smalltalk | ❌ | — | content có |
| 09 | 09_real_dialogues | ❌ | — | content có |
| **10** | **10_business_japanese** | ✓ | **8010** | đã seed ✓ |
| **11** | **11_jisshusei_shokuhin** | ✓ | **8011** | đã seed ✓ (pipeline FULL) |

## Quy tắc CRITICAL khi viết content

### Markdown lý thuyết (.md)

❌ KHÔNG được dùng box-drawing chars: `━`, `─`, `═`, `├──`, `└──`, `│`
→ Flutter render crash với lỗi `RenderBox not laid out: hasSize` hoặc `maxIntrinsicWidth >= minIntrinsicWidth`

✅ Dùng markdown list/table chuẩn thay thế.

### JSON bài tập

❌ KHÔNG dùng `choices: {"A": "...", "B": "..."}` (dict)
✅ Dùng `choices: [{id, text, text_translation, is_correct, order}]` (list)

❌ KHÔNG dùng `answer: "B"` ở question level
✅ Dùng `is_correct: true` trong từng option

❌ KHÔNG dùng `question_ja`, `explanation_vn` (sai naming)
✅ Dùng `question_jp`, `explanation`

Chi tiết 13 anti-patterns: xem `.claude/skills/study-course-questions-builder/SKILL.md` mục 6.

## Khi user request gì → làm gì?

| User nói | Action |
|---------|--------|
| "Viết sách <chủ đề>" / "tạo sách" (có app + bài tập) | Skill `book-writing-pipeline` + `/write-book` |
| "Viết sách hội thoại" / "không cần bài tập" / "dialogue book" | Skill `book-writing-pipeline-lite` + `/write-book-lite` |
| "Tạo bài tập" / "viết JSON câu hỏi" | Skill `study-course-questions-builder`, copy từ `examples/` |
| "Validate file JSON" | `/validate-questions <file>` |
| "Build SQL" / "tạo SQL seed" | `/build-questions <book>` |
| "Seed DB" | `/seed-book <book>` |
| "Review chất lượng câu hỏi" | Spawn subagent `question-set-reviewer` |
| "Tiếp tục viết sách X" | `/book-status X` xem progress, rồi `/book-next X` |

## Liên quan

- **Hizashi backend** (FastAPI): `/Users/binh/Documents/Project/Hizashi/HizashiWeb/backend/`
  - Models DB: `app/models/learning/models.py`, `app/models/study/models.py`
  - Delete script template: `scripts/delete_business_japanese.py`
- **Memory tổng**: `~/.claude/projects/-Users-binh-Documents-Project-Hizashi/memory/MEMORY.md`
  - `business_japanese_seed.md` — ID đã dùng + scripts seed
- **Hook git_guard** của Hizashi đã được update để allow Hizashi_book (commit/push được tự do)

---

**Last updated**: 2026-04-27
**Repo**: https://github.com/vipcodon95/hizashi_book
