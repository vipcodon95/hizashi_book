# Hizashi Sách 03 — Họp / 会議 — Tiến độ

*Hizashi Teams. 2026.*

---

## 🎯 Thông tin sách

**Tên:** Hizashi — Sách Họp / 会議 (Song ngữ Việt-Nhật)
**Tác giả:** Hizashi Teams
**Phiên bản:** **1.1 final — Sau 3 review pass (JP keigo + VN translation + native JP final), apply 30 fixes (13 JP keigo + 55 VN raw-kanji conversation + 13 raw-kanji rule.md + 1 critical 弊社CTO uchi-soto)**
**Năm:** 2026
**Đối tượng:** Người Việt làm với khách Nhật, BD/PM/Dev, ôn BJT J3-J2.

---

## ✅ Đã hoàn thành

- ✅ Mục lục 50 rules (5 phần × 8/10/14/10/8)
- ✅ Cấu trúc folder
- ✅ Schema v3 (mở rộng từ v2 — thêm field `templates[]` cho rules có template)
- ✅ Voice profiles 12 nhân vật (extend sách 02 + thêm 大垣 営業部長)
- ✅ Scripts pipeline (build_appendices, build_book, review_book, gen_sql)
- ✅ Pilot rule_01 — Lập agenda 5W1H (with template đính kèm)

---

## 📋 Roadmap viết content

| Phần | Tên | Số rule | Trạng thái |
|------|-----|---------|-----------|
| I | Chuẩn bị trước họp | 8 | ✅ |
| II | Mở đầu cuộc họp | 10 | ✅ |
| III | Tham gia trong họp | 14 | ✅ |
| IV | Tình huống đặc biệt | 10 | ✅ |
| V | Sau họp + Biên bản | 8 | ✅ |

**Tổng tiến độ:** **50/50 rules (100%)** — bản nháp v1.0.

### 📊 Số liệu

- **conversation_lines:** 377 lines
- **key_phrases:** 97
- **BJT questions:** 50 (J4: 1, J3: 32, J2: 17)
- **BJT skills:** 場面把握 29, 表現読解 17, 発言聴解 4
- **Templates:** 8 (agenda, minutes, email_invite, email_followup, checklist)
- **Vocab unique:** 288 từ
- **Speakers active:** 9/12 (zun, oogaki_sales, matsumoto, linh, fuon, tuan_leader, ha_cto, hai, loan_keiri)

### 📦 Output v1.0

- `output/Hizashi_meeting_v1.1.docx` (155K)
- `output/Hizashi_meeting_v1.1.html` (460K)
- `output/Hizashi_meeting_v1.1.epub` (203K)

Auto-review: 0 issues.

---

## 📐 Format đặc thù sách 03

- **Schema v3**: thêm field `templates[]` cho rules có template (agenda, biên bản, mail, checklist).
- **Phụ lục D mới**: Template tổng hợp dưới dạng download-ready.
- **Cast mới**: 大垣 営業部長 (Ōgaki) — sales head 白鷗, đối tác đàm phán.
- **Em Linh active**: bắt đầu xuất hiện chính thức (sau intro ở voice_profiles sách 02).

---

## 🔗 Đường dẫn

- [Mục lục 50 rules](mục_lục.md)
- [Schema v3](../nội_dung/_schema/rule_conversation.schema.json)
- [Voice profiles (12 speakers)](../nội_dung/voice_profiles.json)
- [Pilot rule_01](../nội_dung/phần_I/rule_01_アジェンダ5W1H/)

---

*Hizashi Sách 03 v0.1 — Pilot ready, sẵn sàng batch viết 49 rules còn lại.*
