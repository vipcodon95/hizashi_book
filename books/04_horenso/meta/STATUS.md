# Hizashi Sách 04 — Báo·Liên·Tham vấn / 報・連・相 — Tiến độ

*Hizashi Teams. 2026.*

**Tên:** Hizashi — Báo·Liên·Tham vấn / 報・連・相 (Song ngữ Việt-Nhật)
**Tác giả:** Hizashi Teams
**Phiên bản:** **1.1 — Sau 3 review pass (JP keigo + VN translation + native JP final)**
**Đối tượng:** Dev/PM/BD VN làm offshore với Nhật, ôn BJT J3-J2.

---

## ✅ Tiến độ

| Phần | Tên | Số rule | Trạng thái |
|------|-----|---------|-----------|
| I | 報告 (Báo cáo) | 12 | ✅ |
| II | 連絡 (Liên lạc) | 9 | ✅ |
| III | 相談 (Tham vấn) | 9 | ✅ |
| IV | Tình huống đặc biệt | 6 | ✅ |
| V | Tools + Best Practice | 4 | ✅ |

**Tổng tiến độ:** **40/40 rules (100%)** — v1.1.

### 📊 Số liệu

- conversation_lines: 370 lines
- key_phrases: 65
- BJT questions: 40 (J4: 1, J3: 34, J2: 5)
- BJT skills: 場面把握 25, 表現読解 12, 発言聴解 3
- Templates: 11 (report, checklist, email_invite)
- Vocab unique: 294 từ
- Speakers active: 9/13 (zun, tuan_leader, fuon, linh, ha_cto, hai, matsumoto, tanaka_pmo, oogaki_sales)

### 📦 Output v1.1

- `output/Hizashi_horenso_v1.1.docx` (168K)
- `output/Hizashi_horenso_v1.1.html` (471K)
- `output/Hizashi_horenso_v1.1.epub` (205K)

Auto-review: 0 issues.

---

## 🔁 Changelog v1.0 → v1.1

**JP review (8.0/10):**
- rule_01 副部長 internal: でございます過剰 → です
- rule_08 anh Tuấn口調: これ良くなった → これは良くなったね
- rule_16 田中PMO: 拝見します → 確認いたします
- rule_18 Matsumoto: お手数おかけします → 承知しました。新しい招待をお待ちしております
- rule_24 ご相談する contradiction unify
- rule_29 strengthen warning: 軽い → 不完全文 lỗi nghiêm trọng
- rule_30 ご提案させていただけませんでしょうか → ますでしょうか
- rule_32 mail twin-apology: prepend 1st apology
- rule_36 Matsumoto tone soften (nâng cấp Hou-Ren-Sou của VN team)

**VN review (7.8/10):**
- 朝礼 → chōrei (rule 10, 14, 19)
- 報告書 → houkokusho (rule 08 title)
- 休暇/病欠 → "nghỉ phép / nghỉ ốm" (rule 19 title)
- 持ち帰り → mochikaeri (rule 30)
- 候補 → "lựa chọn" (rule 29)
- 内部相談 → naibu-soudan (rule 30)
- なし → "nashi (không có)" (rule 02 templates)
- ウチ・ソト → uchi-soto + gloss
- Tanaka PMO unify "tôi" (rule 35, 37)

**Native JP final review pass:**
- Phát hiện build pipeline silent-failure: fixes apply vào JSON nhưng book chỉ build từ rule.md → propagate sang rule.md
- Templates phụ_lục D: 11/11 clean (không twin-closing, không raw kanji)
- Sample 8 untouched rules: clean 100%
- Ship v1.1 final.

---

*Hizashi Sách 04 v1.1 — Sẵn sàng ship.*
