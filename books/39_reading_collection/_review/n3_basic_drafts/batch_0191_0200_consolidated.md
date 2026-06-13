# Consolidated Fix List — batch_0191_0200 (cấp 5)

## Score
- Linguist: 0 critical, 5 major, 11 minor
- Pedagogue: 1 critical (Q2 Apply 1-2/10), 3 major
- Domain: 0 critical, 1 major (R_0195 + 町内会費 missing), 5 minor

## P1 — MUST FIX

### 1. Q2 Apply boost (Pedagogue critical) — 9/10 Recall
- 9 bài Q2 chỉ Recall (locate + copy)
- **Fix khuyến nghị 5 bài**:
  - R_0192 Q2: từ "遅れる日 làm gì" → "Tại sao gia đình quy ước phải báo khi muộn?" (Apply causality)
  - R_0193 Q2: từ "nhân viên nghỉ trưa" → "Bài học cho người sống ở thành phố là gì?" (Apply)
  - R_0196 Q2: từ "không dùng đồ cũ" → "Nếu được khuyên dùng đồ cũ, tác giả có chấp nhận không, vì sao?" (Apply opinion)
  - R_0199 Q2: từ Recall → Apply về 旬
  - R_0200 Q2: từ "con thế nào" → "Cảm xúc của tác giả thể hiện điều gì về quan hệ thầy-trò?" (Apply)

### 2. Level mismatch reclassify (Pedagogue major) — 4 bài
- R_0191 (formal AI), R_0193 (における ×4), R_0195 (にともなって + を通じて formal), R_0199 (品種改良/地球温暖化 N2 vocab)
- **Fix**: Thay vocab/grammar nhẹ hơn HOẶC keep label nếu acceptable
- Tối thiểu thay vocab N2 ở R_0199 (品種改良 → 品種, 地球温暖化 → 気候の変化)

### 3. R_0193 もちろん misclassify (Linguist major)
- Câu 11: `もちろん 必要である` là adverb, KHÔNG phải pattern `Nはもちろん`
- **Fix**: Process guide câu 11 đổi note → "もちろん ở đây là phó từ độc lập, không phải pattern `Nはもちろん`"

### 4. R_0199 とは emphatic (Linguist major)
- Câu 12: `夏の果物を食べるとは` — topic-marking emphatic, không phải definition
- **Fix**: Process guide câu 12 thêm note "ở đây とは là topic-emphatic, KHÁC とは definition ở câu 3, 7, 11"

### 5. R_0200 câu 7 awkward (Linguist major)
- `担任の先生 + クラス代表として` — クラス代表 thường chỉ học sinh
- **Fix**: Đổi → `担任の先生は、クラスを代表して` HOẶC clarify ai là 代表

### 6. Distractor length giveaway (Pedagogue major) — 3 bài
- R_0191 Q3, R_0196 Q3, R_0197 Q3: correct dài 2-3x distractor
- **Fix**: Cân bằng length

### 7. Distractor "obviously wrong" (Pedagogue major) — 4 bài
- R_0191 Q3.D, R_0193 Q3.C, R_0194 Q3.B, R_0200 Q3.A — không liên quan/cực đoan
- **Fix**: Thay bằng "plausible misreading"

### 8. R_0191 lạm dụng grammar (Linguist major)
- 6 lần について + 3 lần によって + nhiều など/なんか trong 13 câu
- **Fix**: Đa dạng hóa: 1-2 lần đổi → `健康のこと`, `ニュース系の話` thay vì lặp について

### 9. R_0195 — Add 町内会費 context (Domain major)
- Người Việt thuê nhà cần biết phí 町内会
- **Fix**: Thêm note hoặc 1 câu `町内会費を払って参加する` (sentence_count +1)
- Vocab thêm `町内会費`

### 10. R_0193 もちろん bookish (Linguist major)
- `公園のような緑のある空間はもちろん必要である` — formal `もちろん + である` cuối câu
- **Fix**: Đổi → `欠かせない` HOẶC `必要不可欠だ`

### 11. R_0193 lặp dịch はもちろん (Linguist major)
- 3 lần dịch "Đương nhiên là... mà còn..." liên tiếp
- **Fix**: Đa dạng: "Không chỉ... mà còn", "Khỏi phải nói", "Bên cạnh..."

## P2 — Should fix
12. R_0191 register casual câu 6 — 嘘だよ → "xạo / phét"
13. R_0194 「ようがない」 dịch tự nhiên hơn
14. R_0198 câu 9 dịch ようになっている
15. Add 冷凍食品 mention R_0198
16. Add digital tools R_0194
17. Add online yoga / hybrid lifestyle

## Action plan
- 11 P1 critical/major
- 6 P2 nếu time
