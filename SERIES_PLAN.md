# Hizashi — Bộ 8 sách: Dàn bài tổng

*Hizashi Teams. 2026.*

Bộ sách song ngữ Việt-Nhật cho người Việt làm cùng khách hàng / đối tác Nhật, đặc biệt luyện thi BJT (Business Japanese Test).

---

## 📚 Danh mục 8 sách

| # | Tên sách (VN / JP) | Trạng thái | Format | Số rule |
|---|--------------------|-----------|--------|---------|
| **01** | Email Công Việc / メール業務 | ✅ v1.1 | Split vi/ja, text-heavy | 22 |
| **02** | Điện thoại Công Việc / 電話応対 | ✅ v1.2 | Single-file bilingual + JSON TTS | 60 |
| **03** | Họp / 会議 | ✅ v1.1 | Hybrid: rule + conversation JSON + template | 50 |
| **04** | Báo·Liên·Tham vấn / 報・連・相 | ✅ v1.1 | Single-file + templates | 40 |
| **05** | Thuyết trình / プレゼンテーション | ✅ v1.1 | Single-file + templates | 35 |
| **06** | Đàm phán · Đề xuất / 商談・交渉 | ✅ v1.1 | Single-file + templates | 45 |
| **07** | Tiếp khách · Thăm · Danh thiếp / 来客・訪問・名刺交換 | ✅ v1.1 | Single-file + templates | 35 |
| **08** | **Trò chuyện thân thiết / 雑談・関係構築** | ✅ v1.1 | Single-file + 47 prefectures cheat sheet + 3-4 dialogue scenarios/rule | **51** |

**Tổng:** ~338 rules (≈ curriculum 1 năm tự học, 1 rule/ngày). Sách 08 mở rộng cast +6 regional speakers (Hiroshi/Yamamoto/Sato/Kobayashi/Ito/Kato) → 19 nhân vật xuyên suốt.

---

## 🎯 Đối tượng học

- Nhân viên onsite/offshore làm IT, BD, kế toán cho công ty Nhật.
- Người chuẩn bị thi BJT J3 → J2 → J1.
- Người đã N3 trở lên muốn nâng kỹ năng business communication.

---

## 🎬 Cast & Continuity

Cast lõi xuyên suốt 7 sách (giữ trong `_shared/voice_profiles.json` cho TTS):

### Cty Thiên Phát / ティエンファット社 (HCMC, IT outsourcing)
| VN | JP | Vai | Tiến triển character qua 7 sách |
|----|-----|-----|--------------------------------|
| em Dũng | ズン | BD担当 → Leader | Junior 01-04 → Mid 05-06 → Leader 07 |
| chị Hương | フオン副部長 | 副部長 | Mentor xuyên suốt |
| anh Tuấn | トゥアンリーダー | チームリーダー | Tech lead, hay onsite Nhật |
| chị Loan | ロアン経理部長 | 経理部長 | Kế toán, rare appearance |
| em Linh | リン | アシスタント | **Active từ sách 04** (rookie sau Dũng) |
| em Hải | ハイ | FE/DevOps | Same-rank Dũng |
| anh Hà | ハー | CTO | Boss, ít xuất hiện |

### Khách Nhật / 白鷗株式会社
| VN | JP | Vai |
|----|-----|-----|
| anh Matsumoto | 松本PM | PM (đối tác chính) |
| ông Nakamura | 中村CFO | Cấp cao 白鷗 |
| lễ tân Hakuō | 白鷗 受付 | Lễ tân |
| (mới — sách 06+) | 大垣 営業部長 | 白鷗 営業部長 — đối tác đàm phán |
| (mới — sách 07) | 田中 ファシリティ | 白鷗 受入担当 |

### Mạch câu chuyện
- **01 Email**: Dũng mới vào, chị Hương dạy viết mail. Khách Matsumoto là người liên lạc chính.
- **02 Phone**: Dũng học nhận/gọi điện. Bắt đầu hiểu văn hóa keigo.
- **03 Meeting**: Dũng tham gia họp định kỳ với khách. Học cách phát biểu, ghi biên bản.
- **04 Hou-Ren-Sou**: Dũng thành thạo, bắt đầu mentor Linh (rookie mới).
- **05 Presentation**: Dũng lần đầu pitch độc lập với khách. Crisis: slide bị lỗi.
- **06 Negotiation**: Dũng + Tuấn đàm phán hợp đồng mới với 大垣. Pressure cao.
- **07 Visit/Card**: Dũng đi onsite Nhật lần đầu. Học bow, danh thiếp, omiyage.

→ Reader đọc theo thứ tự thấy "growth arc" của Dũng. Cũng có thể đọc lẻ từng cuốn.

---

## 📐 Tài sản dùng chung trong `_shared/`

| File | Dùng cho sách | Mô tả |
|------|--------------|-------|
| `công_thức_rule.md` | Tất cả | Khung 8 khối cho mỗi rule |
| `voice_profiles.json` | 02-07 (có TTS) | 11+ speakers + voice hint |
| `cast_chung.md` | 03-07 | Dàn nhân vật chuẩn (sẽ tạo khi viết sách 03) |
| `db.sql` / `postgresql_model.sql` | Tất cả | Schema CSDL chung |

---

## 🛠️ Format chuẩn cho sách 03+

Mỗi sách đặt tại `books/0N_<topic>/` với cấu trúc giống sách 02:

```
books/0N_<topic>/
├── README.md
├── meta/
│   ├── STATUS.md
│   ├── mục_lục.md
│   └── REVIEW_FINDINGS_*.md (sau review)
├── nội_dung/
│   ├── _front_matter.md
│   ├── _schema/rule_conversation.schema.json (link _shared)
│   ├── voice_profiles.json (link _shared)
│   ├── phần_I/ ... phần_V/ (rule_NN_<slug>/ với rule.md + conversation.json)
│   └── phụ_lục/ (auto-gen từ scripts)
├── scripts/
│   ├── build_appendices.py
│   ├── build_book.sh
│   ├── review_book.py
│   └── gen_sql.py (SQL output)
└── output/
    ├── Hizashi_<topic>_v1.0.{docx,html,epub}
    └── load_v1.0.sql
```

Các template script đã có trong sách 02, copy & tùy chỉnh cho từng sách.

---

## 📅 Roadmap đề xuất

**Q2 2026:** Sách 03 (Họp) + Sách 04 (Hou-Ren-Sou) — extension natural từ sách 02
**Q3 2026:** Sách 05 (Presentation) + Sách 06 (Negotiation)
**Q4 2026:** Sách 07 (Visit/Card)
**2027:** v2.0 release toàn bộ + TTS audio cho 7 sách + web app interactive

Mỗi sách ~6-8 tuần (60 rules) với pace tương tự sách 02.

---

## ⚖️ Bản quyền

© 2026 Hizashi Teams. Sách bộ Hizashi là sáng tác gốc, tham khảo từ tài liệu BJT công khai và kinh nghiệm thực tế làm việc với khách Nhật. Không sao chép thương mại không phép.

---

*Phiên bản dàn bài: 2026-04-25. Cập nhật khi mỗi sách hoàn thành / đổi scope.*
