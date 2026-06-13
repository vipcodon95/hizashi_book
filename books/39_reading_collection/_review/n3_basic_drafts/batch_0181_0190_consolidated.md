# Consolidated Fix List — batch_0181_0190 (cấp 5)

## Score
- Linguist: 0 critical, 3 major, 25 minor
- Pedagogue: 2 critical (length giveaway, 180° contrast), 2 major
- Domain: 1 critical (R_0184 hanami drinking), 4 major

## P1 — MUST FIX

### 1. R_0188 câu 9 — `かわりに` logic dịch sai (Linguist major)
- `家族で外食する回数を減らすかわりに...` translation hiện "Thay vì giảm số lần đi ăn ngoài..." → ngược nghĩa
- **Fix**: Đổi → "Đổi lại việc giảm số lần đi ăn ngoài..." HOẶC "Bù cho việc giảm số lần đi ăn ngoài..."

### 2. R_0189 câu 8 — `をはじめ` logic dịch sai (Linguist major)
- `伝統的な技法をはじめ、海外のスタイルも取り入れて` translation hiện sai cấu trúc
- **Fix**: Đổi → "Họ kết hợp cả phong cách nước ngoài, bên cạnh các kỹ thuật truyền thống là chính, để tạo ra tác phẩm"

### 3. R_0183 grammar_used thiếu (Linguist major)
- `ものだから` xuất hiện text nhưng không có trong tags/grammar_used
- **Fix**: Thêm `〜ものだから` vào grammar_used

### 4. Distractor length giveaway (Pedagogue critical) — 3 bài
- R_0183 Q2: correct 47 chars vs distractor 7-8 → 6x giveaway
- R_0185 Q2: correct 51 vs 9-12 → 5x
- R_0181 Q1: correct 28 vs 11-14 → 2.5x
- **Fix**: Pad distractors lên cùng độ dài

### 5. 180° contrast distractor Q3 (Pedagogue critical) — 5 bài
- R_0184 Q3: "騒がしいので、もうやめたい" trái với "大切な時間"
- R_0187 Q3: "もう辞めたい" 180°
- R_0188 Q3: "近所に自慢" lố bịch
- R_0190 Q3: "もうやめたい" 180°
- R_0182 Q3: "không có ý nghĩa"
- **Fix**: Thay distractor "almost-right" (chỉ sai 1 chi tiết)

### 6. R_0184 Hanami drinking (Domain critical)
- Bài tả uống rượu nhiều, post-COVID 2026 nhiều công viên cấm/giới hạn
- **Fix**: Đổi `お酒` → `飲み物` HOẶC thêm context `公園のルールを守りながら` HOẶC tone down rượu

### 7. R_0185 PayPay specific (Domain major)
- "スマホアプリ" quá vague
- **Fix**: Đổi → `PayPayや交通系ICカード` cụ thể

### 8. R_0186 add 電子書籍 (Domain major)
- Thiếu digital library trend
- **Fix**: Thêm 1 câu `電子書籍も貸し出すようになっている` (sentence_count +1)
- Vocab thêm `電子書籍`

### 9. R_0182 add AI tools (Domain major)
- Bài về 単語覚え 2026 mà không nhắc AI/app
- **Fix**: Thêm câu `最近はAIや単語アプリを使う人も増えている` (sentence_count +1)
- Vocab thêm `単語アプリ` hoặc `AI`

### 10. R_0186 Q2 nâng Apply (Pedagogue major)
- Q2 hiện Recall trá hình
- **Fix**: Đổi → "vai trò ～として của tác giả khác thủ thư ở điểm nào?" hoặc tương tự

### 11. R_0188 density かわりに (Pedagogue major)
- 5 lần kết với câu 9 logic gượng
- **Fix**: Đổi 1 lần `かわりに` → `ものの` hoặc `〜が`

## P2 — Should fix
12. R_0190 add online yoga
13. R_0184 collocation 思わず声を上げ
14. R_0181 process explain "性格の" inversion
15. Translation R_0185 「寒い朝にとっては」 — đổi vế người
16. R_0183 「など/なんか」 dịch đa dạng

## Action plan
- 11 P1 critical/major
- 5 P2 nếu có thời gian
