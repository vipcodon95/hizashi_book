# Hizashi Sách 03 — Họp / 会議

*Sách song ngữ Việt-Nhật về tổ chức + tham gia họp với khách Nhật / đồng nghiệp Nhật. Phục vụ luyện BJT J3-J2.*

---

## Cấu trúc thư mục

```
books/03_meeting/
├── README.md                    ← file này
├── meta/
│   ├── STATUS.md               ← tiến độ
│   └── mục_lục.md              ← outline 50 rules
├── nội_dung/
│   ├── _front_matter.md        ← lời nói đầu (sẽ tạo khi gần xong)
│   ├── _schema/
│   │   └── rule_conversation.schema.json   ← Schema v3
│   ├── voice_profiles.json     ← 12 speakers (extend sách 02 + 大垣)
│   ├── phần_I/                 ← 8 rules (Chuẩn bị)
│   ├── phần_II/                ← 10 rules (Mở đầu)
│   ├── phần_III/               ← 14 rules (Trong họp)
│   ├── phần_IV/                ← 10 rules (Tình huống đặc biệt)
│   ├── phần_V/                 ← 8 rules (Sau họp + Biên bản)
│   └── phụ_lục/
│       ├── phụ_lục_A_script_template.md   (auto-gen)
│       ├── phụ_lục_B_vocab.md             (auto-gen)
│       ├── phụ_lục_C_bjt_practice.md      (auto-gen)
│       └── phụ_lục_D_templates.md         (NEW — auto-gen từ templates[])
├── scripts/
│   ├── build_appendices.py     (cần update: thêm phụ lục D)
│   ├── build_book.sh
│   ├── review_book.py
│   ├── canonicalize_roles.py
│   └── gen_sql.py
└── output/                     ← .docx / .html / .epub / .sql
```

---

## Schema v3 — Thay đổi so với v2

Mở rộng v2 (sách 02) — thêm field `templates[]` ở cấp top-level của `conversation.json`:

```json
{
  "rule_id": "rule_01",
  ...
  "templates": [
    {
      "template_id": "rule_01_tpl_01",
      "format": "agenda",
      "title_ja": "...",
      "content_ja": "...",
      "content_vi": "...",
      "notes_ja": "...",
      "notes_vi": "..."
    }
  ]
}
```

`format` enum: `agenda` | `minutes` | `email_invite` | `email_followup` | `checklist` | `report` | `other`.

App có thể render template như download-ready box (copy clipboard hoặc tải .md/.docx).

---

## Cast mới so với sách 02

- **大垣 営業部長 / anh Ōgaki** — Sales head bên 白鷗株式会社, vai đối tác đàm phán hợp đồng phase 2. Tone formal nhưng straight-to-the-point hơn Matsumoto.
- **em Linh / リン** — đã có trong cast sách 02 nhưng bắt đầu **active** từ sách 03 (Dũng mentor lần đầu).

---

## Build / review

```bash
cd books/03_meeting

# Auto-gen phụ lục từ JSON
python3 scripts/build_appendices.py

# Build docx/html/epub
bash scripts/build_book.sh

# Review tất cả rules
python3 scripts/review_book.py

# Generate SQL load
python3 scripts/gen_sql.py
```

---

## Roadmap

- ✅ v0.1 — Pilot rule_01 (Agenda 5W1H với template).
- 🔜 v0.5 — Viết content 49 rules còn lại.
- 🔜 v1.0 — 5 review pass (JP keigo / VN translation / terminology / verification / native JP).
- 🔜 v1.1+ — TTS audio gen + native review thực sự.

---

*Hizashi Teams. 2026. Sách 03 — Đang phát triển.*
