# Consolidated Fix List — batch_0071_0080

## Score
- Linguist: 3 critical, 14 major, 12 minor (29 issues)
- Pedagogue: 1 critical (Bloom Q2), 4 major, 5 minor
- Domain: 0 critical, 4 major, 5 minor

---

## P1 — MUST FIX

### 1. Grammar_used metadata systematic gap (Linguist critical+major, all 10 bài)
- 7/10 bài có grammar trong text nhưng KHÔNG list trong grammar_used array
- R_0072: thêm `〜そうです` (truyền văn)
- R_0073: thêm `〜ながら`, `〜のおかげで`
- R_0074: thêm `〜なければなりません`, `〜ても`, `〜(よ)うと思います`
- R_0075: thêm `〜てもらいたい`
- R_0076: thêm `〜(よ)うと思います`, `〜たら`
- R_0077: thêm `〜ても`
- R_0078: thêm `〜たいと思います`
- R_0079: thêm `可能形 (〜られる)`, `〜そうです` (truyền văn)
- R_0080: thêm `〜たことがあります`, `〜のおかげで`

### 2. Q2 Bloom progression CRITICAL (Pedagogue)
- 0/10 Q2 đạt Apply (REGRESSION từ batch trước 1/10)
- 100% Q2 hiện là Recall (literal lookup)
- **Fix khuyến nghị (chọn 4 bài quan trọng)**:
  - R_0071 Q2: nâng lên "Tại sao ông lại say mê chụp ảnh đến vậy?" (synthesize 3+5+9)
  - R_0072 Q2: "Lý do gia đình ăn そうめん vào dịp này có thể là gì?" (apply tradition reasoning)
  - R_0078 Q2: "Vì sao chuyến đi cảm thấy 楽しい dù có sợ hươu?" (apply emotion reasoning)
  - R_0079 Q2: "Tại sao 'tôi' chọn cuối tuần thay vì ngày thường?" (apply context — vì 学校がある)

### 3. R_0079 Q3 literal copy câu cuối (Pedagogue major)
- Q3 đáp án đúng = câu 11 nguyên văn
- **Fix**: Đổi sang inference - "なぜ「いい結果が来る」と思いますか?" hoặc "Nếu không qua phỏng vấn, 'tôi' sẽ làm gì?"

### 4. Distractor length giveaway 3 bài (Pedagogue major)
- R_0077 Q3, R_0078 Q2, R_0080 Q3: đáp án đúng dài hơn distractor 1.5-2x
- **Fix**: Pad distractors hoặc shorten correct answer

### 5. R_0079 — Konbini realistic 2026 (Domain major)
- Hiện 「結果は来週メールで連絡」 — reality 電話 trong 2-3 ngày
- Thiếu 履歴書, 時給, 服装
- **Fix**: Đổi `メール` → `電話` (gọi điện trong vài ngày). Có thể thêm 1 câu về 履歴書 hoặc 時給.

### 6. R_0076 JLPT timing (Domain major)
- `来月` ambiguous — JLPT chỉ 7月 + 12月
- **Fix**: Đổi `来月` → `7月` (cụ thể) HOẶC giữ 来月 nhưng add hint context
- Có thể add `受験票` vocab

### 7. R_0080 Logic 同僚 vs 先輩 (Domain major)
- Tanaka mới đến nhưng dạy 'tôi' kính ngữ → mâu thuẫn
- **Fix**: Đổi `新しい同僚の田中さん` → `先輩の田中さん` HOẶC `日本語が上手な田中さん`

### 8. R_0077 — Add 答辞 (Domain major)
- 卒業式 speech thiếu 答辞 reference (representative)
- **Fix**: Thêm 1 phrase hoặc note `卒業生代表として答辞を読みました` hoặc clarify role

### 9. R_0075 title_vi sai (Pedagogue major)
- "CLB văn nghệ chuẩn bị văn hóa tế" — sai/lủng củng
- 演劇部 = CLB kịch (không phải văn nghệ); 文化祭 ≠ "văn hóa tế"
- **Fix**: Đổi → "Chuẩn bị lễ hội văn hóa"

### 10. Translation issues (Linguist major)
- R_0072 `たり〜たり` dịch "vừa…vừa" → confuse với 〜ながら. Đổi: "Có ăn, có trò chuyện..."
- R_0075 `言っていました` continuous → dịch "ai cũng đều khen" thay vì "cũng nói"
- R_0078 `〜で、〜たいと思います` aspect — đổi: "Đây là chuyến đi rất vui và..." hoặc "...rất vui. Tôi muốn..."

---

## P2 — Should fix

### 11. R_0073 `〜ながら` câu 2 bookish
- `実験をしながら教えてくれます` → đổi `教える` → `説明する` natural hơn

### 12. R_0075 `本番では失敗してはいけません` quá strict
- **Fix**: Đổi → `失敗を恐れないで` HOẶC `落ち着いてやろう`

### 13. R_0074 — Add 寄せ書き
- 寄せ書き iconic của 転校 farewell
- **Fix**: Có thể thêm `みんなで寄せ書きを書きました` (sentence_count +1)

### 14. R_0078 cảm xúc generic
- Có thể thêm 1 detail riêng (vd `鹿せんべいがすぐなくなりました`) cho memorable
- **Skip nếu không có space**

### 15. R_0080 logic
- Sau khi fix #7 (đổi 同僚 → 先輩), context coherent

---

## P3 — Skip

- R_0073 vocab `おかげで` swap
- R_0080 カラオケ speed (workplace intimacy)
- Linguistic minor (R_0071 ねえ particle, R_0076 リスニング vs 聴解, etc.)
- R_0078 spec details

---

## Action plan

### P1 Critical (10):
1. Grammar_used metadata — cập nhật 9 bài
2. Q2 Bloom Apply 4 bài (R_0071, R_0072, R_0078, R_0079)
3. R_0079 Q3 inference fix
4. Distractor length 3 bài (R_0077, R_0078, R_0080)
5. R_0079 メール→電話 + add 履歴書/時給
6. R_0076 timing 7月
7. R_0080 同僚→先輩
8. R_0077 add 答辞
9. R_0075 title_vi
10. Translation: R_0072/0075/0078

### P2 Should fix (3):
11. R_0073 教える→説明する
12. R_0075 strict tone
13. R_0074 寄せ書き
