---
name: book-writing-pipeline-lite
description: Pipeline 8 giai đoạn viết sách Hizashi DIALOGUE-ONLY (không có bài tập JSON, không seed DB). Focus 100% vào hội thoại thực tế + cast nhân vật + story arc. Phù hợp cho sách hội thoại pure (vd "Một Năm của Hoa năm 2/3", "Real Dialogues", smalltalk). Main Claude orchestrate, spawn subagent cho research / JP-VN review / consistency / hội đồng. State lưu trong books/<name>/_pipeline/state.json. Kích hoạt khi user nói "viết sách hội thoại", "write dialogue book", "/write-book-lite", hoặc "không cần bài tập app".
---

# Book Writing Pipeline LITE — Hizashi (Dialogue-Only)

8 giai đoạn end-to-end để xuất bản 1 cuốn sách hội thoại pure (không có app exercises) cho Hizashi.

## Khác gì với pipeline gốc?

| Pipeline gốc (10 stages) | Pipeline LITE (8 stages) |
|---|---|
| Stage 5: Bài tập JSON | ❌ Skip |
| Stage 8: Module mapping + build script | ❌ Skip |
| Stage 10: Apply fix + build SQL + seed DB | ⚠️ Modify: chỉ apply fix, KHÔNG SQL/seed |
| Output: SQL + JSON + markdown | Output: chỉ markdown (.md) + ePub-ready |

→ Pipeline LITE focus 100% vào **hội thoại / story / cast / dialogue density**.

## Khi nào dùng

✅ DÙNG khi:
- User nói "viết sách hội thoại / story / dialogue", "không cần bài tập"
- Sách năm 2-3 của Hoa (sách 12, 13)
- Sách thuần dialogue cho người đọc (không phải app)
- Spinoff / tiếp nối từ sách có sẵn
- Sách phong cách "real dialogues" như sách 09

❌ KHÔNG dùng:
- Sách cần seed vào Hizashi app (Study Course với BaiTap + Mogishiken) → dùng pipeline gốc
- Sách lý thuyết ngữ pháp + bài tập (vd "Tiếng Nhật Thương Mại — Kính ngữ" sách 10)

---

## Cấu trúc state

File: `books/<book_name>/_pipeline/state.json`

```json
{
  "book_name": "hoa_year2",
  "book_title_vn": "Hoa Năm 2 — Trở Thành Sempai",
  "topic": "Năm 2 của TTS Hoa: Sekininsha + dạy kohai mới + chuyển dịch sang Tokutei Ginou",
  "target_audience": "TTS đã xong năm 1, sắp lên năm 2; người đọc sách 11 muốn theo tiếp Hoa",
  "domain_expert_role": "Cán bộ phụ trách thực tập sinh + chuyên gia Tokutei Ginou path",
  "pipeline_type": "lite",

  "current_stage": 4,
  "stages": {
    "01_research":     {"status": "done"},
    "02_outline":      {"status": "done"},
    "03_draft":        {"status": "done"},
    "04_content_md":   {"status": "in_progress", "modules_done": [...]},
    "05_jp_vn_review": {"status": "pending"},
    "06_consistency":  {"status": "pending"},
    "07_council":      {"status": "pending", "outputs": []},
    "08_finalize":     {"status": "pending"}
  },
  "modules": [...],
  "metadata": {...}
}
```

### Stage status values
- `pending` / `in_progress` / `done` / `failed` / `needs_review`

---

## 8 stages

| # | Stage | Cách triển khai | Output |
|---|-------|----------------|--------|
| 1 | Research | Subagent `book-researcher` | `_pipeline/01_research.md` |
| 2 | Outline (TOC + module list) | Main Claude | `_pipeline/02_outline.md` + cập nhật `state.modules` |
| 3 | Draft (mỗi module 1 outline chi tiết) | Main Claude | `_pipeline/03_draft.md` |
| 4 | **Content markdown — DIALOGUE FOCUS** | Main Claude | `books/<book>/<topic>_<module>/<topic>_<Name>_HoiThoai.md` (×N) |
| 5 | Review JP/VN | Subagent `japanese-vietnamese-reviewer` | `_pipeline/05_jp_vn_review.md` |
| 6 | Consistency check | Subagent `consistency-reviewer` | `_pipeline/06_consistency.md` |
| 7 | Hội đồng thẩm định | 3 subagents song song | `_pipeline/07_council/{linguist,pedagogue,domain_expert}.md` + `_summary.md` |
| 8 | Finalize (apply fix only — KHÔNG SQL) | Main Claude | `_pipeline/08_revision_log.md` |

Chi tiết từng stage: xem `stages/01_research.md` ... `stages/08_finalize.md`.

### Stage 4 đặc thù LITE (DIALOGUE FOCUS)

Khác biệt chính:
- **File suffix**: `_HoiThoai.md` (không phải `_LyThuyet.md`)
- **Density**: ≥ 70% nội dung là DIALOGUE (Speaker: ...). Lý thuyết / vocab / box bí quyết tối đa 30%.
- **Số scene/chương**: Mỗi chương 8-15 scene hội thoại, mỗi scene 5-15 lượt nói.
- **Cast continuity**: Bám sát cast đã định nghĩa trong `state.book_design.supporting_cast`. Mỗi nhân vật có tone/quirk riêng nhất quán.
- **Show, don't tell**: Kiến thức ngành / văn hoá truyền tải QUA hành động + lời nói của nhân vật, không phải bullet point.

Xem `templates/chapter_template_dialogue.md` cho structure chuẩn.

---

## Workflow

### A. Khởi tạo sách mới

```
User: /write-book-lite hoa_year2
```

Main Claude:
1. Hỏi metadata (4 fields, KHÔNG hỏi `course_id_prefix` vì không seed DB):
   - `book_title_vn`
   - `topic`
   - `target_audience`
   - `domain_expert_role`
2. Tạo folder `books/<book>/_pipeline/`
3. Khởi tạo `state.json` từ template (set `pipeline_type: "lite"`)
4. Báo: "Đã khởi tạo pipeline LITE. Chạy `/book-next-lite` để bắt đầu Stage 1."

### B. Chạy stage tiếp theo

```
User: /book-next-lite hoa_year2
```

Main Claude:
1. Load state, đọc `current_stage` → file `stages/<NN>_<name>.md`
2. Set status `in_progress`, save state
3. Execute stage (có thể spawn subagent)
4. Save output → `_pipeline/<NN>_<name>.md`
5. Set status `done`, `current_stage += 1`, save state
6. Báo user: "Hoàn tất stage X. Chạy `/book-next-lite` để sang stage X+1."

### C. Run-to-completion

User có thể chạy hết 8 stage liên tục (như sách 11) hoặc 1 stage / lần.

---

## Command interface

| Command | Action |
|---------|--------|
| `/write-book-lite <book>` | Khởi tạo pipeline LITE mới |
| `/book-next-lite <book>` | Chạy stage hiện tại |
| `/book-status <book>` | (dùng chung với pipeline gốc) Xem progress — auto detect từ `pipeline_type` |

KHÔNG có `/build-questions`, `/seed-book` cho pipeline lite vì không có JSON/SQL.

---

## Subagents triggered

| Stage | Subagent | Tools |
|-------|---------|-----------|
| 1 | `book-researcher` | WebSearch, WebFetch, Read, Grep, Glob |
| 5 | `japanese-vietnamese-reviewer` | Read, Edit, Grep, Glob |
| 6 | `consistency-reviewer` | Read, Grep, Glob |
| 7a | `council-linguist` | Read, Grep, Glob |
| 7b | `council-pedagogue` | Read, Grep, Glob |
| 7c | `council-domain-expert` | Read, Grep, Glob, WebSearch |

Stage 4 là **Main Claude** trực tiếp (dialogue cần xuyên suốt context của cast + story arc).

---

## Tích hợp với skill khác

- ❌ KHÔNG dùng skill `study-course-questions-builder` (vì không có bài tập)
- ❌ KHÔNG có hook `validate_questions_json.sh` trigger
- ✅ Có thể tham khảo `_shared/master_glossary.md` để giữ thuật ngữ nhất quán

---

## Anti-patterns

❌ Stage 4 viết kiểu giáo trình lý thuyết (textbook) — phải DIALOGUE-DRIVEN
❌ Mật độ dialogue < 70% nội dung
❌ Cast nhân vật không nhất quán giữa các chương (tone, voice, quirk)
❌ Lý thuyết block dài → phá nhịp đọc
❌ "Tell" thay vì "Show" văn hoá / kiến thức ngành
❌ Trộn pipeline gốc + LITE (vd dùng `/book-next` cho lite hoặc ngược lại)

---

## File trong skill

```
book-writing-pipeline-lite/
├── SKILL.md                              ← bạn đang đọc
├── stages/
│   ├── 01_research.md                    ← copy từ pipeline gốc
│   ├── 02_outline.md                     ← copy từ pipeline gốc
│   ├── 03_draft.md                       ← copy từ pipeline gốc
│   ├── 04_content_md_dialogue.md         ← MỚI — focus dialogue density
│   ├── 05_jp_vn_review.md                ← copy từ pipeline gốc stage 6
│   ├── 06_consistency.md                 ← copy từ pipeline gốc stage 7
│   ├── 07_council.md                     ← copy từ pipeline gốc stage 9
│   └── 08_finalize.md                    ← MỚI — apply fix, KHÔNG SQL
└── templates/
    ├── state.json                        ← MỚI — pipeline_type=lite, 8 stages
    ├── outline_template.md               ← copy từ pipeline gốc
    └── chapter_template_dialogue.md      ← MỚI — dialogue-heavy structure
```
