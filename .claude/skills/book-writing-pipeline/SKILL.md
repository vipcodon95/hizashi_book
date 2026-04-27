---
name: book-writing-pipeline
description: Pipeline 10 giai đoạn viết sách Hizashi từ research → outline → draft → md content → bài tập JSON → review tiếng Nhật/Việt → check nhất quán → map module → hội đồng thẩm định → hiệu đính + SQL seed. Main Claude orchestrate, spawn subagents chuyên môn cho các stage cần expertise. State lưu trong books/<name>/_pipeline/state.json. Kích hoạt khi user nói "viết sách", "tạo sách", "write book", "khởi tạo pipeline", hoặc dùng /write-book / /book-next / /book-status.
---

# Book Writing Pipeline — Hizashi

10 giai đoạn end-to-end để xuất bản 1 cuốn sách Hizashi (vd `business_japanese`, `it_japanese`, `medical_japanese`, ...).

## Triết lý

- **Orchestrator pattern**: Main Claude điều phối toàn bộ. Subagent chỉ được spawn cho stage cần expertise riêng (research, JP/VN review, hội đồng).
- **State-driven**: Mỗi sách có 1 file `state.json` lưu progress. Resume được khi đứt session.
- **Run-to-completion**: Khi `/book-next` triggered, chạy stage hiện tại đến xong, ghi state, dừng. KHÔNG tự nhảy stage tiếp.
- **No mid-stage interrupts**: Trong 1 stage không hỏi user xác nhận (ngoại trừ stage 1 — domain expert cho hội đồng).
- **Output to disk**: Mọi stage ghi output vào `_pipeline/<NN>_<name>.md` để traceable.

## Khi nào dùng

✅ User nói:
- "Viết sách <chủ đề>"
- "Tạo sách <chủ đề>"
- "Khởi tạo pipeline cho sách X"
- "/write-book", "/book-next", "/book-status"

❌ KHÔNG dùng:
- Sửa nhỏ trong sách đã hoàn thành (sửa trực tiếp file)
- Tạo bài tập riêng lẻ không thuộc sách (dùng skill `study-course-questions-builder`)

---

## Cấu trúc state

File: `books/<book_name>/_pipeline/state.json`

```json
{
  "book_name": "business_japanese",
  "book_title_vn": "Tiếng Nhật Thương Mại",
  "topic": "Kính ngữ trong giao tiếp thương mại Nhật",
  "target_audience": "Người học Nhật trình độ N3+ chuẩn bị thi BJT",
  "course_id_prefix": 8010,
  "domain_expert_role": "BJT/Business Japanese Expert",
  "current_stage": 3,
  "stages": {
    "01_research":     {"status": "done",     "output": "_pipeline/01_research.md",     "completed_at": "2026-04-27T..."},
    "02_outline":      {"status": "done",     "output": "_pipeline/02_outline.md",      "completed_at": "2026-04-27T..."},
    "03_draft":        {"status": "in_progress", "output": "_pipeline/03_draft.md",       "started_at":  "2026-04-27T..."},
    "04_content_md":   {"status": "pending",  "output": null},
    "05_exercises":    {"status": "pending",  "output": null},
    "06_jp_vn_review": {"status": "pending",  "output": null},
    "07_consistency":  {"status": "pending",  "output": null},
    "08_module_mapping":{"status": "pending", "output": null},
    "09_council":      {"status": "pending",  "outputs": []},
    "10_finalize":     {"status": "pending",  "output": null}
  },
  "modules": [
    /* Sau stage 02_outline điền vào: list các module với code, name, topic */
  ],
  "metadata": {
    "started_at": "2026-04-27T...",
    "last_action": "completed stage 02_outline"
  }
}
```

### Stage status values

- `pending` — chưa chạy
- `in_progress` — đang chạy
- `done` — xong
- `failed` — lỗi (cần retry)
- `needs_review` — đợi user xem output trước khi sang stage tiếp (CHỈ khi user explicit yêu cầu)

---

## 10 stages

| # | Stage | Cách triển khai | Output |
|---|-------|----------------|--------|
| 1 | Research | Subagent `book-researcher` | `_pipeline/01_research.md` |
| 2 | Outline (TOC + module list) | Main Claude | `_pipeline/02_outline.md` + cập nhật `state.modules` |
| 3 | Draft (mỗi module 1 outline chi tiết) | Main Claude | `_pipeline/03_draft.md` |
| 4 | Content markdown từng chương | Main Claude | `books/<book>/<topic>_<module>/<topic>_<Name>_LyThuyet.md` (×N) |
| 5 | Bài tập JSON | Main Claude (dùng skill `study-course-questions-builder`) | `books/<book>/<topic>_<module>/<topic>_<Name>_BaiTap.json` (×N) |
| 6 | Review tiếng Nhật/Việt + xoá tiếng Anh thừa | Subagent `japanese-vietnamese-reviewer` | `_pipeline/06_jp_vn_review.md` |
| 7 | Check nhất quán giữa các chương | Subagent `consistency-reviewer` | `_pipeline/07_consistency.md` |
| 8 | Map content vào module/section của course | Main Claude | `_pipeline/08_module_mapping.md` (chỉ là log, file md/json đã ở đúng chỗ từ stage 4-5) |
| 9 | Hội đồng thẩm định | 3 subagents song song: `council-linguist`, `council-pedagogue`, `council-domain-expert` | `_pipeline/09_council/{linguist,pedagogue,domain_expert}.md` |
| 10 | Hiệu đính + tạo SQL seed | Main Claude (apply feedback từ stage 6/7/9) + chạy `/build-questions <book>` | `_pipeline/10_revision_log.md` + `release/<book>_sql/<book>.sql` |

Chi tiết từng stage: xem `stages/01_research.md` ... `stages/10_finalize.md`.

---

## Workflow

### A. Khởi tạo sách mới

```
User: /write-book it_japanese
```

Main Claude:
1. Hỏi user các thông tin bắt buộc:
   - `book_title_vn` — tên hiển thị
   - `topic` — chủ đề chính
   - `target_audience` — đối tượng
   - `course_id_prefix` — chọn từ `id_convention.md` (vd 8020 nếu 8010 đã dùng)
   - `domain_expert_role` — vai trò expert cho hội đồng (vd "Software Engineer Nhật", "Y bác sĩ Nhật", ...)
2. Tạo folder `books/<book>/_pipeline/`
3. Khởi tạo `state.json` từ template `templates/state.json`
4. Báo user: "Đã khởi tạo pipeline. Chạy `/book-next <book>` để bắt đầu stage 1 (Research)."

### B. Chạy stage tiếp theo

```
User: /book-next it_japanese
```

Main Claude:
1. Load `books/<book>/_pipeline/state.json`
2. Đọc `current_stage` → file hướng dẫn `stages/<NN>_<name>.md`
3. Set `stages[stage].status = "in_progress"`, save state
4. Execute stage theo hướng dẫn (có thể spawn subagent)
5. Save output → `_pipeline/<NN>_<name>.md` (hoặc thư mục cho council)
6. Set `stages[stage].status = "done"`, `current_stage += 1`, save state
7. Báo user: "Hoàn tất stage X. Output ở Y. Chạy `/book-next` để sang stage X+1."

### C. Xem trạng thái

```
User: /book-status it_japanese
```

Main Claude:
- Đọc state.json
- Hiển thị progress bar 10 stage + last_action
- Liệt kê file output đã tạo
- Hint stage tiếp theo

### D. Run-to-completion (per user request)

User có thể chạy nhiều stage liên tục:
```
User: /book-next it_japanese  → /book-next it_japanese  → ...
```

Theo decision của user (câu hỏi #5 lúc plan), pipeline KHÔNG tự dừng giữa các stage cho user review. Nhưng MỖI lần `/book-next` chỉ chạy 1 stage để user có cơ hội intervene nếu muốn.

---

## Command interface

| Command | Action |
|---------|--------|
| `/write-book <book>` | Khởi tạo pipeline mới (gather metadata, tạo state) |
| `/book-next <book>` | Chạy stage hiện tại |
| `/book-status <book>` | Xem progress |
| `/build-questions <book>` | (đã có) Build SQL từ JSON câu hỏi |
| `/seed-book <book>` | (đã có) Seed SQL vào DB local |

---

## Subagents triggered

| Stage | Subagent | Tool tools |
|-------|---------|-----------|
| 1 | `book-researcher` | WebSearch, WebFetch, Read, Grep, Glob |
| 6 | `japanese-vietnamese-reviewer` | Read, Edit, Grep, Glob |
| 7 | `consistency-reviewer` | Read, Grep, Glob |
| 9a | `council-linguist` | Read, Grep, Glob |
| 9b | `council-pedagogue` | Read, Grep, Glob |
| 9c | `council-domain-expert` | Read, Grep, Glob, WebSearch |

Stage 4 + 5 là **Main Claude** trực tiếp (không spawn subagent — content đặc thù cần xuyên suốt context).

---

## Tích hợp với skill khác

- **Stage 5 (bài tập)**: Bắt buộc dùng skill `study-course-questions-builder` — đọc SKILL.md đó để biết format JSON.
- **Stage 10 (SQL seed)**: Trigger `/build-questions` rồi `/seed-book` (commands có sẵn).
- **Hook validate_questions_json.sh**: Stage 5 ghi file JSON → hook tự validate → thấy lỗi báo lại.

---

## Anti-patterns

❌ Skip stage — vd nhảy thẳng từ outline sang exercises mà không có content md
❌ Spawn 1 subagent làm cả 10 stages — context bị overload
❌ Không lưu state — khi đứt session là mất hết
❌ Sửa output stage cũ mà không cập nhật state — gây inconsistency
❌ Chạy stage 9 (council) mà chưa qua stage 6-7 (review) — council sẽ tìm lỗi đã được catch ở stage trước → lãng phí

---

## File trong skill

```
book-writing-pipeline/
├── SKILL.md                         ← bạn đang đọc
├── stages/
│   ├── 01_research.md               ← chi tiết từng stage
│   ├── 02_outline.md
│   ├── 03_draft.md
│   ├── 04_content_md.md
│   ├── 05_exercises.md
│   ├── 06_jp_vn_review.md
│   ├── 07_consistency.md
│   ├── 08_module_mapping.md
│   ├── 09_council.md
│   └── 10_finalize.md
└── templates/
    ├── state.json                   ← template state
    ├── outline_template.md          ← template TOC
    └── chapter_template.md          ← template 1 chương
```
