# Hizashi — Bộ sách song ngữ Việt-Nhật

*Hizashi (日差し — "tia nắng") là dòng sách song ngữ Việt-Nhật của **Hizashi Teams** dành cho người Việt làm việc với khách hàng / đối tác Nhật Bản.*

---

## 🗺️ Dàn bài tổng

Toàn bộ kế hoạch 7 sách + cast continuity + roadmap: xem [SERIES_PLAN.md](SERIES_PLAN.md).

## 📚 Danh mục sách

| # | Tên sách | Ngôn ngữ | Trạng thái | Phiên bản |
|---|----------|----------|-----------|-----------|
| 01 | [Email Công Việc / メール業務](books/01_email/) | VN + JP (split) | ✅ Phát hành | v1.1 |
| 02 | [Điện thoại Công Việc / 電話応対](books/02_phone/) | VN + JP (single-file) | ✅ Phát hành | v1.2 |
| 03 | [Họp / 会議](books/03_meeting/) | VN + JP (single-file + templates) | ✅ Bản nháp | v1.0 |
| 04 | [Báo·Liên·Tham vấn / 報・連・相](books/04_horenso/) | VN + JP (single-file + templates) | ✅ Phát hành | v1.1 |
| 05 | [Thuyết trình / プレゼンテーション](books/05_presentation/) | VN + JP (single-file + templates) | ✅ Phát hành | v1.1 |
| 06 | [Đàm phán·Đề xuất / 商談・交渉](books/06_negotiation/) | VN + JP (single-file + templates) | ✅ Phát hành | v1.1 |
| 07 | [Tiếp khách·Thăm·Danh thiếp / 来客・訪問・名刺交換](books/07_visit_card/) | VN + JP (single-file + templates) | ✅ Phát hành | v1.1 |
| 08 | [Trò chuyện thân thiết / 雑談・関係構築](books/08_smalltalk/) | VN + JP (single-file + 47 prefectures cheat sheet) | ✅ Phát hành | v1.1 |

---

## 📂 Cấu trúc dự án

```
Hizashi_book/
├── README.md                       ← bạn đang ở đây
├── _shared/                        Tài sản dùng chung mọi sách
│   ├── README.md
│   └── công_thức_rule.md           Khung 8 khối (tái dùng cho mọi sách how-to)
└── books/
    ├── 01_email/                   Sách 1 — Email công việc (v1.0)
    │   ├── README.md
    │   ├── source/                 OCR ảnh sách tham khảo
    │   ├── meta/                   Mục lục, COPYRIGHT, REVIEW, STATUS
    │   ├── nội_dung/               Bản nguồn .md (vi/ + ja/)
    │   └── output/                 File phát hành (.docx, .html, .epub)
    │
    └── 02_phone/                   Sách 2 — Điện thoại công việc (v1.2)
        ├── README.md
        ├── meta/                   STATUS, mục lục, REVIEW_FINDINGS
        ├── nội_dung/               Bản nguồn (60 rules + phụ lục)
        │   ├── _front_matter.md    Lời nói đầu song ngữ
        │   ├── _schema/            JSON schema v2 cho conversation
        │   ├── voice_profiles.json 11 nhân vật + voice TTS hint
        │   ├── phần_I/             10 rules (mỗi rule = 1 folder con)
        │   │   └── rule_NN_<slug>/
        │   │       ├── rule.md          ← bài học song ngữ
        │   │       └── conversation.json ← data hội thoại + BJT
        │   ├── phần_II/            13 rules
        │   ├── phần_III/           12 rules
        │   ├── phần_IV/            13 rules
        │   ├── phần_V/             12 rules
        │   └── phụ_lục/            3 phụ lục auto-generate (A/B/C)
        ├── scripts/                Build pipeline (Python + bash)
        │   ├── build_appendices.py
        │   ├── build_book.sh
        │   ├── canonicalize_roles.py
        │   └── review_book.py
        └── output/                 .docx / .html / .epub v1.1
```

---

## 🎨 Triết lý Hizashi Teams

- **Song ngữ thực dụng** — không chỉ dịch, mà adapt cho bối cảnh Việt làm việc với Nhật.
- **Cast nhân vật xuyên suốt** — mỗi sách dùng một dàn nhân vật nhất quán (chị Hương / フオン副部長, em Dũng / ズン v.v.) để câu chuyện dễ nhớ.
- **Khung 8 khối cho mỗi rule** — Header → Luận điểm → Bối cảnh → Ví dụ Xấu → Phân tích → Ví dụ Tốt → Biến thể → Câu chốt copy-paste. Xem `_shared/công_thức_rule.md`.
- **Open kiến trúc** — mỗi sách là một module độc lập, tài sản chung tách ở `_shared/`.

---

## 📄 Bản quyền

© 2026 Hizashi Teams. Tất cả các sách trong dự án này thuộc bản quyền Hizashi Teams. Không sao chép, phát tán, hoặc sử dụng thương mại nếu không có văn bản đồng ý.

---

*Hizashi — Tia nắng đầu ngày trong hộp thư công việc của bạn.*
