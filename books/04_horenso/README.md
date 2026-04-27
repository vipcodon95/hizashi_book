# Hizashi Sách 04 — Báo·Liên·Tham vấn / 報・連・相

*Sách song ngữ Việt-Nhật về 3 trụ cột giao tiếp công việc Nhật: 報告 (báo cáo) · 連絡 (liên lạc) · 相談 (tham vấn).*

**Đối tượng:** Dev/PM/BD VN làm offshore với khách Nhật. Critical cho ôn BJT J3-J2.

## Cấu trúc

```
books/04_horenso/
├── README.md                    ← file này
├── meta/
│   ├── STATUS.md
│   └── mục_lục.md              (40 rules)
├── nội_dung/
│   ├── _front_matter.md
│   ├── _schema/                (Schema v3)
│   ├── voice_profiles.json     (13 speakers — thêm 田中 PMO)
│   ├── phần_I/    12 rules (報告)
│   ├── phần_II/   9 rules  (連絡)
│   ├── phần_III/  9 rules  (相談)
│   ├── phần_IV/   6 rules  (tình huống đặc biệt)
│   ├── phần_V/    4 rules  (tools + best practice)
│   └── phụ_lục/   A/B/C/D (auto-gen)
├── scripts/
└── output/
    └── Hizashi_horenso_v1.1.{docx,html,epub}
```

## Build

```bash
python3 scripts/build_appendices.py
bash scripts/build_book.sh
python3 scripts/review_book.py
```

## Cast mới so với sách 03

- **田中 PMO (Tanaka)** — Slack tracking + async polite-direct
- **Em Linh (Linh)** — junior coaching arc đầy đủ với Dũng mentor

## Roadmap

- ✅ v1.0 — 40 rules + 4 phụ lục + front matter
- ✅ v1.1 — Sau 3 review pass (JP keigo + VN + native JP)
- 🔜 v1.2+ — TTS audio + native JP human review

---

*Hizashi Teams. 2026.*
