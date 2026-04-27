# Hizashi_book — Project Guide

> File này được Claude Code tự load mỗi session. Mục đích: cho Claude biết nhanh dự án có gì, dùng skill/command nào — KHÔNG phải đọc full docs.

## Dự án này là gì?

Repo content cho hệ thống học tiếng Nhật **Hizashi**. Chứa:
- **Sách giáo trình** (markdown) ở `books/<book_name>/`
- **Bài tập** (JSON) ở `books/<book_name>/<topic>_<module>/*.json`
- **SQL seed** (auto-generated) ở `release/<book>_sql/`

DB target: PostgreSQL local của `HizashiWeb/backend` (project anh chị em ở `/Users/binh/Documents/Project/Hizashi`).

## Có 2 skill chính

### 1. `study-course-questions-builder` — tạo JSON câu hỏi

**Khi nào dùng**: Tạo / sửa / validate file JSON bài tập.

**Đọc**: `.claude/skills/study-course-questions-builder/SKILL.md`

**Quick reference**:
- Schema: `questions` / `questions_answers` / `study_question_sets` / `reading_passages` / junction tables
- 20+ question_type values (chon_dap_an, reading, kanji_yomi, ...)
- Examples: `examples/example_<type>.json`
- Validator: `scripts/validate_json.py`

### 2. `book-writing-pipeline` — viết sách end-to-end

**Khi nào dùng**: Khởi tạo / tiếp tục pipeline viết 1 cuốn sách hoàn chỉnh.

**Đọc**: `.claude/skills/book-writing-pipeline/SKILL.md`

**Pipeline 10 stages**:
1. Research → 2. Outline → 3. Draft → 4. Content md → 5. Exercises JSON → 6. JP/VN review → 7. Consistency → 8. Module mapping → 9. Council (3 reviewers) → 10. Finalize + SQL seed

**State**: `books/<book>/_pipeline/state.json` (resume-friendly, đứt session vẫn tiếp được)

**Subagents available** (tự spawn từ stage tương ứng):
- `book-researcher` (stage 1)
- `japanese-vietnamese-reviewer` (stage 6, có Edit quyền)
- `consistency-reviewer` (stage 7, report-only)
- `council-linguist` / `council-pedagogue` / `council-domain-expert` (stage 9, parallel)
- `question-set-reviewer` (utility — review JSON câu hỏi anytime)

## Slash commands available

| Command | Mục đích |
|---------|---------|
| `/write-book <name>` | Khởi tạo pipeline viết sách mới (hỏi metadata, tạo state.json) |
| `/book-next <name>` | Chạy stage tiếp theo (1 stage / lần) |
| `/book-status <name>` | Xem progress pipeline + outstanding issues |
| `/validate-questions <file>` | Validate JSON câu hỏi |
| `/build-questions <book>` | Build SQL từ JSON (gọi `_shared/scripts/build_sql_<book>.py`) |
| `/seed-book <book>` | Seed SQL vào DB local |

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

## ID Convention quan trọng

| Prefix | Sách | Status |
|--------|------|--------|
| 8010 | business_japanese | ✓ đã dùng |
| 8020 | (next book) | reserved |
| 8030, 8040, ... | (next) | reserved |
| 9xxxxxxx | JLPT khoa cử | KHÔNG đụng |

→ Mỗi sách mới chọn prefix tiếp theo (8020, 8030, ...), KHÔNG random.

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
| "Viết sách <chủ đề>" / "tạo sách" | Skill `book-writing-pipeline` + slash command `/write-book` |
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
