# Consolidated Fix List — batch_0331_0340 (cấp 6, FINAL)

## Score
- Linguist: 4 critical (R_0333 process thiếu câu cuối, R_0338 process thiếu 2 câu cuối + sc sai, R_0340 process thiếu câu cuối + sc sai, R_0334 Q3 question_vi `不能` Hán-Việt leak), 9 major
- Pedagogue: 4 critical (Q2 không cause 6/10, Q4 length giveaway 10/10, extreme word distractor 16 instances, Inference ≈0%, copy câu kết 6/10, R_0335 Q1 trivia STEM viết tắt), 9 major
- Domain: 7 critical (R_0335 STEM → STEAM official term, R_0334 missing 特定技能/育成就労, R_0339 missing 熊出没/鳥獣保護管理法 2024, plus 4 sentence_count inconsistency), 18 major

## P1 — MUST FIX

### 1. R_0335 STEM → STEAM term sai (Domain critical)
- 文部科学省 official term là **STEAM教育** (thêm A = Arts), không phải STEM
- **Fix**: Replace `STEM` → `STEAM` toàn bài (text + title + vocab + Q + explanation)

### 2. R_0334 — Add 特定技能 + 育成就労 (Domain critical)
- Bài 多文化共生 thiếu visa system mới nhất
- **Fix**: Add 1 câu `2019年からは特定技能制度が始まり、2024年には新たな「育成就労」制度も成立した。` (sc +1)
- Vocab thêm `特定技能` HOẶC `育成就労`

### 3. R_0339 — Add 熊出没/鳥獣保護管理法 2024 (Domain critical)
- Bài 都市の野生動物 missing biggest 2023-2024 issue (gấu)
- **Fix**: Add 1 câu `特に近年は熊の出没も急増し、2024年には鳥獣保護管理法も改正された。` (sc +1)
- Vocab thêm `鳥獣保護管理法`

### 4. R_0334 Q3 question_vi `不能` Hán-Việt leak (Linguist critical)
- "**'不能** vì lý do hiệu suất" — kanji leak vào tiếng Việt
- **Fix**: Đổi → "không thể"

### 5. R_0333 process thiếu câu cuối (Linguist critical)
- sc=15, process[]=14. Thiếu câu 15: 「書道を通して伝わるのは...」
- **Fix**: Add process item 15

### 6. R_0338 process thiếu 2 câu cuối + sc sai (Linguist critical)
- sc=16, process[]=15, text thực có 17 câu
- Thiếu: 「行動心理学は人間の幸福に貢献できる強力な道具に違いないが...」và 「これからは、研究者だけでなく利用者側にも...」
- **Fix**: Update sc=17, add 2 process items

### 7. R_0340 process thiếu câu cuối + sc sai (Linguist critical)
- sc=16, process[]=15. Thiếu câu cuối: 「これからの時代、AIと共に成長していく覚悟...」
- **Fix**: Update sc match thực tế, add process item

### 8. R_0335 Q1 trivia STEAM viết tắt (Pedagogue critical)
- Q1 "STEM viết tắt gì" = trivia, không test reading comprehension
- **Fix**: Convert Q1 → Recall comprehension (vd "Tại sao STEAM giáo dục được nhấn mạnh?" / "Theo bài, đặc điểm STEAM là gì?")

### 9. Q2 không phải なぜ/どうして (Pedagogue critical) — 6/10 bài
- Bài: R_0334, R_0335, R_0336, R_0337, R_0338, R_0339
- **Fix khuyến nghị 4 bài**: Rewrite Q2 なぜ/どうして
  - R_0335 Q2 → "Tại sao STEAM giáo dục cần thiết?"
  - R_0336 Q2 → "Tại sao 口腔ケア quan trọng cho người già?"
  - R_0337 Q2 → "Tại sao thế hệ khác nhau bị ảnh hưởng khác nhau bởi lạm phát?"
  - R_0339 Q2 → "Tại sao động vật vào đô thị?"

### 10. Q4 length giveaway 10/10 bài (Pedagogue critical)
- Đáp án đúng dài 2-3.5x distractor
- Worst: R_0340 (3.4x), R_0335 (3x), R_0338 (3x), R_0337 (2.5x), R_0339 (2.4x)
- **Fix**: Pad distractor / shorten đáp án (≤1.3x distractor average)

### 11. Distractor extreme words 16 instances (Pedagogue critical)
- "完全に" (3 lần), "のみ" (4 lần), "すべて" (2 lần), "だけ" (3 lần), "唯一" (1 lần), "全員" (1 lần), "しか" (1 lần), "過ぎない" (1 lần)
- **Fix**: Replace toàn bộ bằng nuance ("phần lớn", "thường", "có xu hướng")

### 12. Q4 copy câu kết 6/10 (Pedagogue critical)
- Bài: R_0331, R_0332, R_0333, R_0334, R_0337, R_0339
- **Fix khuyến nghị 3 bài**: Convert Q4 → Apply/Analyze HOẶC paraphrase
  - R_0332 Q4 → "Theo bài, doanh nhân xã hội thành công thế nào?"
  - R_0337 Q4 → "Bài học cá nhân về lạm phát?"
  - R_0339 Q4 → "Tác giả ngụ ý gì về quan hệ con người-động vật?"

### 13. R_0331 — Add 生成AI/ChatGPT context (Domain major)
- Bài deepfake 2026 thiếu 生成AI mainstream
- **Fix**: Add 1 câu `近年は生成AIの普及により、ディープフェイクの精度もさらに高まっている。` (sc +1)
- Vocab thêm `生成AI`

### 14. R_0332 — Add SDGs + 休眠預金活用法 (Domain major)
- **Fix**: Add 1 câu `日本でも「休眠預金活用法」によりNPOや社会起業家への支援が広がり、SDGs実現の動きも加速している。` (sc +1)
- Vocab thêm `SDGs` HOẶC `休眠預金活用法`

### 15. R_0335 — Add GIGAスクール構想 + リスキリング (Domain major)
- **Fix**: Add 1 câu `GIGAスクール構想で1人1台端末も配備され、社会人のリスキリングも国を挙げて推進されている。`
- Vocab thêm `GIGAスクール構想`

### 16. R_0336 — Add 8020運動 + オーラルフレイル (Domain major)
- Bài 高齢者の口腔ケア thiếu 2 term cốt lõi
- **Fix**: Add 1 câu `「8020運動」(80歳で20本の歯を保つ)や「オーラルフレイル」の概念も広く知られている。`
- Vocab thêm `8020運動` HOẶC `オーラルフレイル`

### 17. R_0337 — Add 日銀政策転換 2024 + 春闘 + PayPay (Domain major)
- Bài インフレ 2026 thiếu cốt lõi 2024
- **Fix**: Add 1 câu `2024年には日銀がマイナス金利政策を解除し、春闘では33年ぶりの賃上げも実現した。` (sc +1)
- Vocab thêm `春闘`

### 18. R_0338 — Add ナッジ理論 + EBPM (Domain major)
- Bài 行動心理学 thiếu term Nobel 2017
- **Fix**: Add 1 câu `「ナッジ理論」を活用したEBPM(エビデンスに基づく政策立案)も日本で進められている。`
- Vocab thêm `ナッジ理論`

### 19. R_0340 — Add 生成AI + リスキリング + AI事業者ガイドライン (Domain major)
- **Fix**: Add 1 câu `生成AIの普及に伴い、政府は2024年に「AI事業者ガイドライン」を策定し、リスキリング政策も強化している。`
- Vocab thêm `生成AI` HOẶC `AI事業者ガイドライン`

### 20. Pattern overuse cap (Linguist major)
- R_0332 (ばかりでなく ×4); R_0334 (に対し ×4); R_0336 (がち×4 + わけだ×4 + おそれがある×4 worst); R_0337 (一方 instances ×5 confuse); R_0340 (にともなって ×4)
- **Fix**: Cap ≤4 per pattern. Replace bằng synonym

### 21. Vocab thiếu key terms (Linguist major)
- R_0332 thiếu `掲げる`; R_0337 thiếu `賃金`; R_0336 thiếu `悪循環`; R_0340 thiếu `奪う`; R_0333 thiếu `習字`
- **Fix**: Add key vocab khi xuất hiện trong text

### 22. Metalanguage `(定語)` Trung (Linguist major)
- Xuyên suốt batch dùng `(定語)` (Trung văn) thay tiếng Việt
- **Fix**: Replace `(定語)` → `(định ngữ)` HOẶC `(修飾語)` toàn batch

### 23. R_0331 vocab `思われる` morphology (Linguist major)
- Guide gọi "thụ動 mềm" — SAI; thực ra là 自発の助動詞 (spontaneous)
- **Fix**: Đổi → "tự phát/spontaneous form" thay vì passive

### 24. R_0335 — Add 文部科学省 + JST女子支援 (Domain major)
- **Fix**: Add reference 学習指導要領 cho framing chuẩn

### 25. R_0339 — Add 鹿/猪/アライグマ + エキノコックス (Domain major)
- **Fix**: Mention các động vật khác ngoài tanuki/hakubishin

## P2 — Should fix
26. R_0331 add ファクトチェック / EU AI Act
27. R_0332 add マザーハウス / B Corp
28. R_0333 add 書道 UNESCO 2024 nomination
29. R_0334 add ハラル/礼拝室 / DE&I研修
30. R_0336 add 健康日本21 / 誤嚥性肺炎 第6位 stats
31. R_0337 add 円安 155-160 yen / 定額減税 2024
32. R_0338 add デフォルト設定 / ヘルスケアアプリ modern examples
33. R_0340 add ジョブ型雇用 / 2024年問題

## Action plan
- 25 P1 critical/major
- 8 P2 nếu time

## TỔNG KẾT 100/100 BÀI cấp 6 SẮP HOÀN THÀNH
- Vòng 1: 0241-0260 ✓
- Vòng 2: 0261-0280 ✓
- Vòng 3: 0281-0300 ✓
- Vòng 4: 0301-0320 ✓
- Vòng 5 (CUỐI): 0321-0340 — đang fix
