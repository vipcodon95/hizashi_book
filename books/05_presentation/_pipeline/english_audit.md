# Audit từ tiếng Anh — Sách 05: Presentation

Tổng số từ flag: **17** (đã loại trừ JSON keys và từ cho phép theo tiêu chí)

> Ghi chú phương pháp: Đã đọc toàn bộ 35 rule.md, 4 file phụ lục (.md), voice_profiles.json và kiểm tra mẫu conversation.json. JSON keys (speaker, gender, tone, sentence_translation...) và value enum (male/female/formal/casual/neutral) KHÔNG flag. Từ đã chuẩn hoá trong môi trường VP-Nhật (slide/presentation/deadline/feedback/OK/Q&A/team/agenda) KHÔNG flag.

---

## nội_dung/phần_I/rule_01_準備7問/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 63 | `① 誰に？(Audience)` | **Audience** | Đối tượng | Từ nằm trong template tiếng Nhật làm label phụ — nhưng template cũng có bản VN song song; label tiếng Anh thuần trong ngoặc trên dòng tiếng Nhật mà không có tương đương VN trong cùng ngữ cảnh VN |
| 68 | `② 何を決めたい？(Decision target)` | **Decision target** | Mục tiêu quyết định | Cùng ngữ cảnh template JP |
| 73 | `③ 時間 (Time)` | **Time** | Thời gian | Cùng ngữ cảnh template JP |
| 78 | `④ 場所 (Setting)` | **Setting** | Địa điểm / Bối cảnh | Cùng ngữ cảnh template JP |
| 83 | `⑤ 期待されるアウトプット (Output)` | **Output** | Đầu ra / Kết quả mong đợi | Cùng ngữ cảnh template JP |
| 88 | `⑥ リスク (Risk)` | **Risk** | Rủi ro | Cùng ngữ cảnh template JP |
| 93 | `⑦ バックアップ (Backup)` | **Backup** | Dự phòng | Cùng ngữ cảnh template JP |

**Pattern systemic — Template tiếng Nhật:** 7 label tiếng Anh trong ngoặc đơn kèm thuật ngữ JP (①②③... row) là nhãn phụ giải thích. Phần bản VN song song (`content_vi` trong conversation.json) đã dịch đúng. Vấn đề nằm ở phần rule.md thuần (mục `## 📐 Template`): label tiếng Anh tồn tại trong văn bản dẫn giải VN mà không kèm nghĩa VN. Mức độ: **thấp** — template JP chuyên ngành, khán giả VN trong context này có thể hiểu; nhưng nếu muốn nhất quán, thêm chú thích VN vào ngoặc thứ hai.

---

## nội_dung/phần_I/rule_02_1スライド1メッセージ/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 72 | `認知負荷 (cognitive load)` | **cognitive load** | tải nhận thức | Từ giải nghĩa tiếng Anh trong ngoặc đơn theo sau thuật ngữ JP — nhất quán với pattern vocab table. Chấp nhận được về học thuật; flag vì có thể thêm VN thay cho Anh |

---

## nội_dung/phần_I/rule_03_ストーリーアーク/rule.md

Không có từ tiếng Anh gượng ép. **Vendor-first** xuất hiện trong hội thoại như thuật ngữ kỹ thuật bán hàng — chấp nhận được.

---

## nội_dung/phần_I/rule_06_密度ルール/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 3 | `Guy Kawasaki **10-20-30 rule**` | **rule** (lẻ) | quy tắc | Trong cụm "10-20-30 rule" — khi viết giải thích VN liền sau nên thay bằng "quy tắc 10-20-30". "Rule" đơn lẻ tiếng Anh không cần thiết vì toàn bộ sách gọi là "Rule XX" (tên số chương), nhưng trong câu giải thích VN mang ý nghĩa chung |

---

## nội_dung/phần_I/rule_07_バックアップ計画/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 3 | `⑤ printed handout 5 bản` | **handout** | tài liệu phát tay | Trong giải thích VN luận điểm — "handout" xuất hiện thuần Anh không kèm nghĩa VN. Từ này tái xuất nhiều lần trong sách. Pattern systemic — xem rule 31 |

**Pattern systemic — "handout":** xuất hiện ít nhất 4 lần trong sách (rule_07, rule_31 rule.md, rule_31 conversation.json). Từ này không thuộc danh sách từ chuẩn công sở VN-Nhật đã cho phép. Gợi ý: "tài liệu phát tay" hoặc giữ "handout" kèm chú thích lần đầu xuất hiện.

---

## nội_dung/phần_II/rule_08_30秒オープニング/rule.md

Không có từ tiếng Anh gượng ép trong giải thích VN. Từ "Hook", "Stake", "Promise" là tên kỹ thuật cấu trúc được định nghĩa đầu rule — chấp nhận.

---

## nội_dung/phần_II/rule_11_フック3パターン/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 3 | `**(A) Story** (anecdote 30s)` | **anecdote** | câu chuyện ngắn / giai thoại | Từ học thuật tiếng Anh trong ngoặc đơn kèm tên pattern — người học VN không quen; có thể thay bằng "câu chuyện ngắn" |

---

## nội_dung/phần_II/rule_12_ムード作り/rule.md

Không có từ tiếng Anh gượng ép. "US-style", "TED-talk" là tên tham chiếu văn hoá — chấp nhận.

---

## nội_dung/phần_III/rule_16_デモの流れ/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 3 | `**Setup** (誰が何をしようとしている、30s)` | **Setup** | Thiết lập cảnh | Trong giải thích VN của luận điểm — "Setup" viết hoa không kèm VN; các bước 4-step đều dùng tên Anh (Setup/User journey/Key moment/Recap) trong khi đây là văn bản hướng dẫn VN. Pattern systemic — lặp lại ở hội thoại và phụ lục A |

**Pattern systemic — Demo 4-step terms:** "Setup", "User journey", "Key moment", "Recap" xuyên suốt rule_16. Đây là framework tên riêng — chấp nhận được nếu giữ nhất quán; flag vì trong giải thích VN thuần không kèm nghĩa VN lần đầu.

---

## nội_dung/phần_III/rule_20_リスクと対策/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 64 | `4 | 保守要員依存 (低・中) → 2名以上の cross-training` | **cross-training** | đào tạo chéo | Trong Risk Matrix template — "cross-training" không kèm nghĩa VN. Từ này có thể thay bằng "đào tạo chéo" hoàn toàn |

---

## nội_dung/phần_IV/rule_26_クロージングCTA/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 81 | `サインオフ \| sain in ofu \| Sign-off` | **sain in ofu** | (đã có JP romaji, không cần flag riêng) | Từ vocab: "サインオフ = sain in ofu = Sign-off" — đây là vocab row, không phải văn bản VN. Không flag |

---

## nội_dung/phần_IV/rule_27_謝辞スライド/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 26 | `**「Thank You」だけ？」** … Dũng nervous` | **Thank You** | Cảm ơn | Trong hội thoại tiếng Nhật — nhân vật JP nói "Thank You" trong dấu nháy, có nghĩa quote chỉ slide chữ "Thank You". Ngữ cảnh hợp lý — KHÔNG flag |
| 28 | `「**Thank You** 一文字 center」` | **Thank You** | (không cần flag) | Cùng ngữ cảnh trên — tên slide được trích dẫn |
| 90 | `- "Thank You" trống → wasted 5-10 phút screen time` | **wasted** | lãng phí | Trong giải thích VN mục "⚠ Tránh" — "wasted" dùng đơn lẻ tiếng Anh thay vì "lãng phí". Tương tự "mottainai" bên JP. Gượng ép nhẹ |

---

## nội_dung/phần_V/rule_29_オンラインプレゼン/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 26 | `**double chin** で見える` | **double chin** | cằm đôi / góc ngẩng ngược | Trong câu tiếng Nhật của nhân vật — dùng tiếng Anh không kèm nghĩa. Mặc dù là hội thoại nhân vật VN nói tiếng Nhật, reader VN đọc bản dịch; trong bản JP sentence đã có, bản translation thiếu giải thích "double chin" |

---

## nội_dung/phần_V/rule_31_技術トラブル/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 3 | `② demo offline (local DB / mock)` | **mock** | dữ liệu giả lập | Trong luận điểm VN — "mock" kỹ thuật không kèm giải nghĩa |
| 105 | `- Cloud-only deck → no internet = no pitch` | **no internet = no pitch** | không internet = không pitch được | Cụm "no internet = no pitch" thuần tiếng Anh trong mục "⚠ Tránh" VN. Hơi gượng ép nhưng ngắn, dễ hiểu với đối tượng tech |

---

## nội_dung/phần_V/rule_34_自己評価/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 3 | `**bằng 12-item rubric**` | **rubric** | bảng tiêu chí / bảng đánh giá | Từ "rubric" xuất hiện nhiều lần trong rule_34 và phụ lục D mà không kèm VN lần đầu. Từ giáo dục học thuật Anh |

**Pattern systemic — "rubric":** lặp lại ít nhất 8 lần trong rule_34, phụ lục C, phụ lục D. Gợi ý: lần đầu xuất hiện thêm "(bảng tiêu chí đánh giá)".

---

## nội_dung/phần_V/rule_35_改善サイクル/rule.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 3 | `**Pilot** (3 ngày trước, với senior 1-1)` | **senior** | cấp trên / đàn anh | "Senior" xuất hiện 4 lần trong rule_35 giải thích VN mà không kèm nghĩa VN. Trong context công sở VN-Nhật, "senior" khá phổ biến — mức gượng ép thấp, nhưng nhất quán sẽ tốt hơn |

---

## nội_dung/phụ_lục/phụ_lục_C_bjt_practice.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 428 | `C) 1週間後に sammary` | **sammary** | tóm tắt | Lỗi chính tả: "sammary" (sai) → "summary". Không phải từ gượng ép mà là typo trong đáp án BJT; cần sửa |

---

## nội_dung/phụ_lục/phụ_lục_D_templates.md

| Dòng | Câu gốc (rút gọn) | Từ Anh | Gợi ý Tiếng Việt | Lý do |
|------|-------------------|--------|-------------------|-------|
| 243 | `- CẤM MS Mincho / MS Gothic (cũ + bị mờ)` | (không có từ Anh gượng ép) | — | Không flag |
| 259 | `- Test projector: đọc được từ hàng cuối` | (không flag) | — | "Test" trong danh mục checklist — chấp nhận |

---

## Tổng hợp pattern systemic

| Pattern | Số lần xuất hiện (ước) | File ảnh hưởng | Khuyến nghị |
|---------|----------------------|----------------|-------------|
| **handout** | 4+ | rule_07, rule_31 (rule.md + conv.json) | Thêm "(tài liệu phát tay)" lần đầu |
| **rubric** | 8+ | rule_34, phụ_lục_C, phụ_lục_D | Thêm "(bảng tiêu chí)" lần đầu |
| **Demo 4-step terms** (Setup/User journey/Key moment/Recap) | 10+ | rule_16, phụ_lục_A | Framework tên riêng — chấp nhận, nhất quán |
| **Label Anh trong template JP** (Audience/Risk/Backup...) | 7 | rule_01 template | Template JP kỹ thuật — mức độ thấp |
| **wasted** | 1 | rule_27 | Thay bằng "lãng phí" |
| **cross-training** | 1 | rule_20 | Thay bằng "đào tạo chéo" |
| **anecdote** | 1 | rule_11 | Thay bằng "câu chuyện ngắn" |

---

## Lỗi đặc biệt (không phải từ Anh — cần sửa riêng)

| File | Dòng | Vấn đề |
|------|------|--------|
| phụ_lục_C_bjt_practice.md | 428 | Typo "**sammary**" → nên là "**summary**" |
