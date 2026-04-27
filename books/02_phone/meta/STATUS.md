# Hizashi Sách 02 — Điện thoại Công Việc — Tiến độ

*Hizashi Teams. 2026.*

---

## 🎯 Thông tin sách

**Tên:** Hizashi — Sách Điện thoại Công Việc / 電話応対 (Song ngữ Việt-Nhật)
**Tác giả:** Hizashi Teams
**Phiên bản:** **1.2 — Sau 5 review pass (3 expert + 1 verification + 1 native JP)**
**Năm:** 2026
**Đối tượng:** Người Việt làm với khách hàng Nhật, đặc biệt luyện thi BJT.

---

## ✅ Đã hoàn thành

### Khung dự án
- ✅ Mục lục 60 rules (5 phần × ~12 rules)
- ✅ Schema JSON v2 đầy đủ (TTS + display)
- ✅ Voice profiles 11 nhân vật (cast Hizashi + 受付 + Nakamura CFO + unknown)
- ✅ Cấu trúc folder per-rule (mỗi rule = 1 folder con với rule.md + conversation.json)

### Nội dung 60 rules

| Phần | Tên | Số rule | Trạng thái |
|------|-----|---------|-----------|
| I | Nền tảng trước nhấc máy | 10 | ✅ |
| II | Nhận điện thoại / 受電 | 13 | ✅ |
| III | Gọi điện thoại đi / 発信 | 12 | ✅ |
| IV | Tình huống khó / 困難な場面 | 13 | ✅ |
| V | Voicemail + Online + Best Practice | 12 | ✅ |

**Tổng:** 60 rules × 2 file = **120 file** (60 rule.md + 60 conversation.json), tất cả JSON đều valid.

---

## 📊 Số liệu

- **rule.md:** 2,443 dòng tổng, ~40 dòng/rule trung bình
- **conversation.json:** 3,405 dòng tổng, ~57 dòng/rule trung bình
- **Schema fields được dùng:** rule_id, rule_slug, title, rule_context, related_rules, conversations (bad/good/variant), conversation_lines (line_id, speaker, speaker_role, gender, sentence, sentence_translation, tone, speed_multiplier, pause_after_ms, annotation_ids), key_phrases, bjt_practice
- **BJT questions tổng:** ~60 (1/rule), level J5-J2 phân bố đa dạng

---

## ✅ v1.0 đã hoàn thiện

| Việc | Trạng thái | File |
|------|-----------|------|
| Phụ lục A (script template) | ✅ | `nội_dung/phụ_lục/phụ_lục_A_script_template.md` (731 dòng, 66 key_phrases) |
| Phụ lục B (vocab tổng hợp) | ✅ | `nội_dung/phụ_lục/phụ_lục_B_vocab.md` (197 từ unique) |
| Phụ lục C (BJT practice) | ✅ | `nội_dung/phụ_lục/phụ_lục_C_bjt_practice.md` (60 câu, J2/J3/J4) |
| Front matter song ngữ | ✅ | `nội_dung/_front_matter.md` |
| README sách 02 | ✅ | `README.md` |
| Pipeline build docx/html/epub | ✅ | `scripts/build_book.sh` (pandoc) |
| Output v1.1 | ✅ | `output/Hizashi_phone_v1.1.{docx,html,epub}` |
| Auto-review | ✅ | `scripts/review_book.py` — 0 issues |

## 📋 Sau v1.0 (roadmap v1.1+)

| Việc | Mức ưu tiên | Ghi chú |
|------|------------|---------|
| Pipeline TTS (audio gen) | Trung bình | Đọc conversation.json → gọi TTS API + ghép theo `pause_after_ms` |
| Native review JP | Trung bình | Người bản xứ check keigo cho 60 rules |
| Web app interactive | Thấp | Render rule + audio + BJT inline |

---

## 🔗 Đường dẫn

- [Mục lục 60 rules](mục_lục.md)
- [Schema v2](../nội_dung/_schema/rule_conversation.schema.json)
- [Voice profiles](../nội_dung/voice_profiles.json)
- [Pilot rule_01 (showcase đầy đủ)](../nội_dung/phần_I/rule_01_第一声/)

---

## 📝 Changelog v1.0 → v1.1

**JP keigo fixes (5 critical):**
- rule_04 var_01: メモのご準備 → メモの準備 (過剰敬語)
- rule_07 good_02: お元気ですか → いつもお世話になっております (business phone convention)
- rule_08 var_01: お声が遠く + お電話お受け → お電話が遠く + 電話を受けさせて (idiom + redundancy)
- rule_13 good_02: reorder 復唱 phrase
- rule_23 good_03: 申し伝えました → お伝えしました (internal context)
- rule_31 good_04: 構いません → 問題ございません (don't 構わない to listener)
- rule_34 good_03: トゥアンリーダー → トゥアン (drop internal title to outsider)
- rule_42 good_02: ご参加が難しい → 参加が難しい (過剰敬語)
- rule_43 good_02: トゥアンリーダー → 弊社のトゥアン (drop internal title to outsider)
- rule_47 good_02: ご請求書 → 請求書 (own-issued, drop ご)
- rule_47 good_03: 期日は4月20日でございました — Loan tự xưng "tôi"
- rule_50 good_04: お返事が遅く → ご連絡が遅く (speaker is the caller)

**VN translation fixes (10 critical):**
- rule_13: 至っとマーク → アットマーク (typo nghiêm trọng)
- rule_15: "Em đã nhận máy" → "Dạ, em ... nghe máy đây ạ" (literal → tự nhiên)
- rule_22: "Xin phép em ạ" → "Em xin phép cúp máy ạ" (cộc + thiếu động từ)
- rule_22: "Xin phép tôi ạ" → "Vậy tôi xin phép trước nhé"
- rule_44: "việc không vui" → "tin không hay" (sai sắc thái với incident IT)
- rule_44: "Tôi rõ rồi" → "Tôi hiểu rồi" (cứng → tự nhiên)
- rule_44: "case bị ảnh hưởng" → "giao dịch bị ảnh hưởng" (đúng context payment)
- rule_47: Loan (経理部長) "em" → "tôi" với khách Matsumoto (sai chức vụ)
- rule_49: "Xin phép em ạ" → "Em xin phép cúp máy ạ"
- rule_49: "em làm đến 17h" → "em có thể nhận máy đến 17h"
- rule_60: "self-diagnostic" → "tự chấm điểm" (bỏ pha tiếng Anh không cần)
- rule_60: "Sức mạnh điện thoại" → "Kỹ năng điện thoại" (literal → tự nhiên)
- rule_24: "có ở bàn không" → "có ở văn phòng không" (cụm Việt tự nhiên hơn)

**Terminology canonicalization:**
- speaker_role: 96 lines / 53 files — bỏ context như "(ティエンファット社)", "(白鷗社)" trùng lặp
- 折返し → 折り返し (rule_49, 1 case)
- お繋ぎ → おつなぎ (rule_11, 1 case)
- chuyển máy → nối máy (rule_26, 1 case)
- "công ty Thiên Phát" → "Cty Thiên Phát" (rule_01, rule_06)
- PM (白鷗社) → PM (白鷗株式会社) — đồng nhất tên công ty Nhật

---

## 🔁 Round 2 fixes (verification pass)

Verification agent tìm thêm 1 critical + 9 issues 🟡 đã apply nốt:

**Critical:**
- rule_47 line 62: Matsumoto gọi Loan "em" (sai chức vụ) → "chị"

**Consistency mass-fix:**
- "Tôi rõ rồi" → "Tôi hiểu rồi" (7 files: rule_21, 28, 29, 34, 42, 48, 55)
- "đợi máy" → "giữ máy" (3 files: rule_17, 26, 36 — đồng nhất với phụ lục B vocab)

**Keigo polish:**
- rule_19: お間違え → お間違い (chuẩn business JP)
- rule_18: お伝えいたします → 申し伝えます (về đồng nghiệp với khách ngoài)
- rule_40: お返事 → ご返信 (own action consistency với rule_50)

**VN naturalness pass 2:**
- rule_42 line 33: "Bạn" → "Em" (Matsumoto gọi Dũng nhất quán)
- rule_08 var: "đường dây có hơi xa" → "line không được rõ"
- rule_46: "giữa lúc bận" → "anh bận thế mà" (VN-C)
- rule_58: "cho mình nghe" → "cho em xin" (VN-H)
- rule_26 line 53: thêm nuance xác nhận tên cho lễ tân

---

## 🎌 v1.2 changelog — Native JP review pass

Native-level JP reviewer (敬語 + BJT + business conventions) đánh giá **8.0/10** v1.1, tìm ra:

**P0 — BJT 失点 lỗi đáp án (5 fix):**
- rule_39: お書き**する** (謙譲) → どのような漢字で**いらっしゃいますか** (尊敬) — sai 方向 keigo trong đáp án BJT
- rule_18 rule.md: お伝えいたします → 申し伝えます (mismatch với json + ウチ・ソト correct form)
- rule_19 rule.md: お間違**え** → お間違**い** (typo, mismatch với json)
- rule_50: 拝聴 → 確認/承る (拝聴 không dùng cho voicemail; sửa cả BJT explanation)
- rule_23: お伝えしました → 共有済みです (junior không dùng 謙譲 với senior cho đồng nghiệp)

**P1 — 顧客 unnatural / business standard (5 fix):**
- rule_21: 3軒目 → 3つ目 (軒 không đếm building 8 tầng), Hang Bac → ハンバック (Hang Bac), 右折いただく → 右に曲がっていただく
- rule_26: PM部の松本様 → 松本様 (PM 部 không tồn tại JP company)
- rule_16: 退社しております → 業務を終えております (退社 ambiguous với 退職)
- rule_34: 即時共有が必要かと存じますが → 至急共有いたします (緊急 phải đoán certain)
- rule_01: いつも → こちらこそいつも

**P2 — Polish (12 fix):**
- rule_04: reorder 復唱 phrase (復唱させて → 内容 → 間違いございませんでしょうか)
- rule_38: お電話が**少し**遠い → 標準形 bỏ 少し
- rule_44: あまり良くないご報告 → 残念なお知らせ (BJT explanation cũng update)
- rule_41: 当社にて → 弊社にて + 回収手配 → 回収の手配
- rule_45: すべて当社の責任 → 全責任は弊社にございます
- rule_47: closing 「お手数をおかけし申し訳ございません」 (弱腰) → 「引き続きどうぞよろしくお願いいたします」
- rule_49: voicemail と申します → でございます (相手 đã biết)
- rule_52: 皆さん → 皆様 (顧客 hiện diện)
- rule_53: スライド3ページ目 → スライド3枚目
- rule_56: ~たいと考えております → ~たく存じます
- rule_58: お声をいただけますでしょうか → ご意見をお伺いできますでしょうか
- rule_59: でございます (社内) → です
- rule_36 vocab: bỏ 「生存確認」 (internal slang)
- rule_32: メール spelled-out (z-u-n アットマーク thienphat ドット vn)
- rule_17: お時間をいただきそう → 時間がかかりそう
- rule_12: お待ちしておりました → いつもお世話に
- rule_19: いえ、失礼いたします → とんでもございません。失礼いたします

**Tổng: 32 fixes** — apply qua script `scripts/apply_jp_native_fixes.py`.

---

*Hizashi Sách 02 v1.2 — 60 rules + 3 phụ lục + front matter + pipeline build. Đã pass 5 review pass (3 expert + 1 verification + 1 native JP) + auto-review (0 issues). 195 từ vựng unique. Sẵn sàng ship cho học viên BJT.*
