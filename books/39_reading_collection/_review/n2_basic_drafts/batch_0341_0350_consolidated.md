# Consolidated Fix List — batch_0341_0350 (cấp 7)

## Score
- Linguist: 3 critical (R_0342 ことなく logic broken, R_0346 个人 TQ kanji leak, R_0347 がたい đảo nghĩa), 15 major
- Pedagogue: 0 critical, 23 major (Q2 không cause/why 6/10, length giveaway 6/10, extreme distractors 7/10, 180° contrast 7/10), 18 minor
- Domain: 2 critical (R_0346 typo `个人`, R_0348 missing Kunming-Montreal GBF 2022), 32 major

## P1 — MUST FIX

### 1. R_0342 câu 13 SAI ngữ pháp ことなく + particle (Linguist critical)
- 「やりがいと適切な報酬は両立させることなく」 — particle は + ことなく logic ngược
- **Fix**: Đổi → `やりがいと適切な報酬を両立させることなく、どちらかを犠牲にすることは～`

### 2. R_0346 câu 17 `个人` TQ kanji leak (Linguist + Domain critical)
- `个人` (Trung giản thể) — phải là `個人`
- **Fix**: Đổi `个人` → `個人` ở cả text + translation + process

### 3. R_0347 câu 11 `〜がたい` SAI nghĩa (Linguist critical)
- 「希薄化させがたい問題」 — がたい không có nghĩa "khó tránh"
- **Fix**: Đổi → `希薄化させかねない問題` HOẶC `希薄化を招きかねない問題`

### 4. R_0348 — Add Kunming-Montreal GBF 2022 (Domain critical)
- Bài 生物多様性 2026 không nhắc agreement quan trọng nhất 30 năm
- **Fix**: Add 1 câu `2022年12月の昆明・モントリオール生物多様性枠組（GBF）では、2030年までに陸海30%の保護（30 by 30）が国際目標として採択された。` (sc +1)
- Vocab thêm `生物多様性枠組` HOẶC `30 by 30`

### 5. R_0344 câu 2 `ばかりだ` chủ ngữ sai (Linguist major)
- 「教育の質は拡大するばかりだ」 — chất lượng không thể "mở rộng"
- **Fix**: Đổi → `教育の質**の格差**は拡大するばかりだ` HOẶC `教育の質に**差**がつくばかりだ`

### 6. Q2 không phải なぜ/どうして (Pedagogue major) — 6/10 bài
- Spec yêu cầu Q2 = cause/why
- **Fix khuyến nghị 5 bài**: R_0341, R_0342, R_0343, R_0344, R_0348, R_0349 — rewrite Q2 sang `なぜ/どうして〜のですか`
  - R_0341 Q2 → "Tại sao 少子化 vẫn tiếp tục dù có chính sách?"
  - R_0342 Q2 → "Tại sao やりがい搾取 trở thành vấn đề?"
  - R_0343 Q2 → "Tại sao 生成AI gặp vấn đề về 著作権?"
  - R_0344 Q2 → "Tại sao 義務教育 vẫn còn 格差?"
  - R_0348 Q2 → "Tại sao 国際社会 cần hợp tác về 生物多様性?"

### 7. Lạm dụng pattern grammar showcase (Linguist major)
- R_0342 ものだ ×5; R_0347 がたい ×5; R_0345 8 grammar slots ép vào 18 câu
- **Fix**: Cap ≤4 lần/pattern. Replace bằng synonym (がたい→にくい, ものだ→だ/である)

### 8. R_0341 — Add こども家庭庁 + 異次元の少子化対策 (Domain major)
- Bài 少子化 2026 không nhắc 2 chính sách trụ cột 2023+
- **Fix**: Add 1 câu `2023年4月にこども家庭庁が発足し、児童手当拡充など「異次元の少子化対策」も進められている。` (sc +1)
- Vocab thêm `こども家庭庁`

### 9. R_0342 — Add 働き方改革 + リスキリング + 春闘 2024 (Domain major)
- Bài 労働 2026 thiếu cải cách 5 năm + spring negotiation record
- **Fix**: Add 1 câu `2019年からの働き方改革やリスキリング推進、2024年春闘では33年ぶりの大幅賃上げも実現した。` (sc +1)
- Vocab thêm `働き方改革` HOẶC `春闘`

### 10. R_0343 — Add AI事業者ガイドライン 2024 + Gemini/Claude (Domain major)
- Bài 生成AI cần tên cụ thể + governance Nhật
- **Fix**: Đổi tên AI generic + add 1 câu `経産省・総務省は2024年4月に「AI事業者ガイドライン」を策定し、ChatGPTやGemini、Claudeなどの利用ルールを整備している。` (sc +1)
- Vocab thêm `AI事業者ガイドライン`

### 11. R_0344 — Add 主体的・対話的で深い学び + GIGAスクール構想 (Domain major)
- Giáo dục Nhật 2026 thiếu 2 term cốt lõi
- **Fix**: Add 1 câu `「主体的・対話的で深い学び」を掲げる新学習指導要領のもと、GIGAスクール構想で1人1台端末も整備された。`

### 12. R_0345 — Add プラスチック資源循環促進法 2022 + レジ袋有料化 (Domain major)
- **Fix**: Add 1 câu `日本でも2020年のレジ袋有料化や2022年のプラスチック資源循環促進法など、国内法整備も進んでいる。`
- Vocab thêm `プラスチック資源循環促進法`

### 13. R_0346 — Add ストレスチェック制度 + オンライン診療 (Domain major)
- Bài tâm thần thiếu chính sách core Nhật
- **Fix**: Add 1 câu `2015年からのストレスチェック制度や、コロナ禍で広がったオンライン診療など、現代の精神医療は新しい枠組みも生まれている。`

### 14. R_0347 — Add 千利休 + 金継ぎ (Domain major)
- Bài 侘び寂び thiếu 2 reference cốt lõi
- **Fix**: Add 1 câu `千利休が確立した茶道や、金継ぎの美学などにも、侘び寂びの精神が今も息づいている。`
- Vocab thêm `金継ぎ`

### 15. R_0348 — Add 30 by 30 + 名古屋議定書 + ネイチャーポジティブ (Domain major)
- **Fix**: Đã cover ở mục 4 (sc +1)

### 16. R_0349 — Add 二十歳のつどい 2022 + タイパ + 推し活 (Domain major)
- **Fix**: Add 1 câu `2022年の成人年齢引き下げで「二十歳のつどい」が広がり、Z世代では「タイパ」や「推し活」など新しい価値観も主流になっている。`
- Vocab thêm `二十歳のつどい` HOẶC `タイパ`

### 17. R_0350 — Add ジャニーズ性加害 2023 + 不同意性交罪 + 能登 (Domain major)
- Bài media 2026 thiếu MeToo Japan + 報道 case study
- **Fix**: Add 1 câu `2023年のジャニーズ問題報道や、2024年能登半島地震をめぐるSNS上のフェイクニュースなど、メディアの責任が改めて問われている。`

### 18. Length giveaway Q4 (Pedagogue major) — 6/10 bài
- R_0341, R_0342, R_0345, R_0347, R_0348, R_0350
- **Fix**: Pad distractor / shorten đáp án (≤1.3x distractor)

### 19. Distractor extreme words 7 bài (Pedagogue major)
- "唯一/完全/すべて/だけ/さえあれば/最も/しか" trong R_0341, R_0342, R_0343, R_0345, R_0349, R_0350
- **Fix**: Replace bằng nuance ("phần lớn", "thường", "có xu hướng")

### 20. Distractor 180° contrast 7 bài (Pedagogue major)
- R_0341 Q1, R_0342 Q1, R_0343 Q1, R_0346 Q3, R_0347 Q1, R_0349 Q1, R_0350 Q3
- **Fix**: Replace bằng partial-truth (sai 1 chi tiết)

### 21. R_0341 dịch câu 11 (Linguist major)
- "trùng hợp" cho 重なる — sai nuance
- **Fix**: Đổi → "cộng hưởng/chồng chất"

### 22. R_0341 dịch câu cuối "sự thực hiện" cứng (Linguist major)
- **Fix**: Đổi → "mới có thể hướng tới một xã hội bền vững"

### 23. R_0343 lạm dụng ものだ + 以上は chồng chéo (Linguist major)
- Câu 7 + câu 11 ép pattern showcase
- **Fix**: Đổi câu 11 → `道具である以上、それをどのように使うかは人間の責任だ`

### 24. R_0346 lạm dụng `得る` 4 lần + guide sai (Linguist major)
- **Fix**: Cap ≤3, replace 1 lần. Sửa guide morphology うる/える

### 25. R_0348 câu 4 + 11 `につき` register sai (Linguist major)
- にしき không phù hợp essay register
- **Fix**: Đổi → `ため/ことから/関わらず`

## P2 — Should fix
26. R_0349 dịch câu 5 awkward — restructure
27. R_0345 lạm dụng grammar 8 slots — giảm còn 5
28. R_0350 cluster `上で` 2 nghĩa — explicit warning
29. R_0341 ことだから guide chưa đầy đủ
30. R_0344 vocab `保護者` precise

## Action plan
- 25 P1 critical/major
- 5 P2 nếu time
