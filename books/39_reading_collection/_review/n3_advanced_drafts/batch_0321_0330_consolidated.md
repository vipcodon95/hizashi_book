# Consolidated Fix List — batch_0321_0330 (cấp 6)

## Score
- Linguist: 4 critical (R_0321 typo `thụ動`, R_0324 process thiếu câu cuối, R_0325 Q4 cross-contamination câu 15 không tồn tại, R_0330 typo `một方だ`), 22 major
- Pedagogue: 5 critical (Q4 copy câu cuối 8/10, length giveaway 9/10 + extreme distractor 6/10, cognitive load R_0326 quá tải, R_0329 distractor unrealistic), 12 major
- Domain: 3 critical (R_0323 số liệu hikikomori sai 100万 → 146万, R_0328 missing マイナンバー + 2024改正, R_0330 missing 熱中症警戒アラート), 26 major

## P1 — MUST FIX

### 1. R_0321 typo `thụ動` (Linguist critical)
- process[1].guide: `thụ動 + tiến hành` mix kanji 動
- **Fix**: Đổi → `thụ động + tiến hành`

### 2. R_0324 process thiếu câu cuối (Linguist critical)
- sc=16, process[]=15. Thiếu câu 16: 「教育の機会均等は...使命なのである」
- **Fix**: Add process item 16

### 3. R_0325 Q4 cross-contamination (Linguist critical)
- Q4 explanation reference "Câu 15" 「海を守ることは...」 nhưng câu 15 không tồn tại trong text
- **Fix**: Đổi explanation reference đúng câu trong text HOẶC bỏ reference cụ thể

### 4. R_0330 typo `一方だ` mix kanji (Linguist critical)
- Q4 explanation: `「一方だ: chỉ ngày càng」` viết là `「một方だ: chỉ ngày càng」`
- **Fix**: Đổi → `一方だ` (giữ nguyên Nhật)

### 5. R_0323 số liệu hikikomori sai (Domain critical)
- "約百万人以上" — sai, 内閣府 2023 là **約146万人**
- **Fix**: Đổi → "約146万人 (内閣府2023年調査)"

### 6. R_0328 — Add マイナンバー + 2024改正 (Domain critical)
- Bài 個人情報保護 2026 không nhắc My Number = miss core
- **Fix**: Add 1 câu `2024年4月の個人情報保護法施行規則改正により、マイナンバーカード関連の情報保護も強化されている。` (sc +1)
- Vocab thêm `マイナンバーカード`

### 7. R_0330 — Add 熱中症警戒アラート 2024 (Domain critical)
- Bài 異常気象 thiếu landmark Nhật
- **Fix**: Add 1 câu `日本では2024年から「熱中症特別警戒アラート」が新設され、熱中症対策も強化されている。` (sc +1)
- Vocab thêm `熱中症警戒アラート`

### 8. R_0326 cognitive load Q4 quá tải (Pedagogue critical)
- Đáp án đúng C dài 100+ chars với 3 mệnh đề
- **Fix**: Shorten đáp án xuống ≤50 chars

### 9. R_0329 distractor unrealistic (Pedagogue critical)
- Q3 distractor C "外国人に日本語が伝わらない", D "法律で曖昧な表現が義務付けられている" phi lý
- **Fix**: Replace bằng plausible learner mistake

### 10. R_0327 sentence_count vs process[] mismatch (Linguist critical)
- text count 。 ≈18 câu, process[]=15
- **Fix**: Đếm lại + sync sc với process[]. Add process entries cho câu thiếu

### 11. Q4 copy câu cuối literal 8/10 (Pedagogue critical)
- Bài: R_0321, R_0322, R_0324, R_0325, R_0326, R_0328, R_0329, R_0330
- **Fix khuyến nghị 4 bài**: Convert Q4 → Apply/Analyze hoặc paraphrase xa câu kết
  - R_0321 Q4 → "Theo bài, áp dụng nguyên tắc nào để phát triển blockchain bền vững?"
  - R_0322 Q4 → "Tác giả ngụ ý gì khi nói ý nghĩa cuộc sống do tự xây dựng?"
  - R_0327 Q4 → "Theo bài, làm gì để giảm FOMO?"
  - R_0330 Q4 → "Bài học rút ra cho cá nhân về biến đổi khí hậu?"

### 12. Length giveaway Q3-Q4 9/10 (Pedagogue major)
- Đáp án đúng dài 60-100 chars vs distractors 25-35 (3-4x ratio)
- **Fix**: Pad distractor hoặc shorten đáp án đúng (≤1.3x distractor average)

### 13. Distractor extreme words 6/10 (Pedagogue major)
- R_0321 Q1 (のみ/しか/どの〜も), R_0322 Q3 (全く/すぐに/必ず), R_0324 Q4 (必ず/全員), R_0327 Q3 (すべて/二度と), R_0328 Q4 (完璧/すべて), R_0329 Q4 (すぐに/べきではない/完全に)
- **Fix**: Replace bằng nuance ("phần lớn", "thường", "có xu hướng")

### 14. Q2 không phải なぜ (Pedagogue major) — 5 bài
- R_0321, R_0323, R_0325, R_0327, R_0330 — Q2 dùng "理由" implicit
- **Fix**: Đổi sang format `なぜ/どうして〜のですか`

### 15. R_0323 — Add 8050問題 + 孤独・孤立対策推進法 2024 (Domain major)
- **Fix**: Add 1 câu reference 8050問題 hoặc 推進法 2024
- Vocab thêm `8050問題`

### 16. R_0324 — Add こども家庭庁 2023 + GIGA constructed 2021 (Domain major)
- **Fix**: Add reference こども家庭庁 + clarify GIGAスクール構想 cải thiện situation

### 17. R_0325 — Add プラスチック資源循環促進法 2022 (Domain major)
- **Fix**: Add 1 câu `日本でも2022年からプラスチック資源循環促進法が施行されている。`

### 18. R_0326 — Add カスタマーハラスメント (Domain major)
- 2024-2025 trend mới
- **Fix**: Add 1 câu `近年は「カスタマーハラスメント（カスハラ）」も社会問題となり、東京都では2025年から条例で対応している。`

### 19. R_0327 — Add デジタルデトックス + Z世代 (Domain major)
- **Fix**: Add 1 câu `「デジタルデトックス」を実践し、Z世代を中心にSNSと距離を置く動きも広がっている。`
- Vocab thêm `デジタルデトックス`

### 20. R_0329 vocab 9 → 10 (Pedagogue major)
- Spec 8-12 nhưng cố định 10 phổ biến hơn
- **Fix**: Add 本音と建前 hoặc 空気を読む vào vocab

### 21. R_0321 — Update blockchain framing (Domain major)
- "最も注目されている技術" outdated 2024-2026
- **Fix**: Đổi → "かつて注目された技術として、現在は実用段階に入っている". Add reference 生成AI hoặc Web3

### 22. R_0322 — Add ウェルビーイング/生きがい (Domain major)
- Bài philosophy thiếu Japan flavor
- **Fix**: Add reference 生きがい

### 23. R_0321 lạm dụng `てからでないと` 4 lần (Linguist major)
- **Fix**: Cap ≤4. Replace 1 lần bằng `〜なければ`

### 24. R_0322 lạm dụng `のではないだろうか` 5 lần (Linguist major)
- **Fix**: Cap ≤4. Replace 1 lần bằng `〜と言えるだろう` HOẶC `かもしれない`

### 25. R_0322 metadata mismatch (Linguist major)
- tags 5 vs grammar_used 4 (drop という)
- **Fix**: Sync metadata

### 26. R_0327 nuance label inconsistent (Linguist major)
- もので "trang trọng" vs ものだから "casual" — guide trái nhau
- **Fix**: Unify nhãn — cả 2 đều mang nuance biện hộ casual/explanatory

### 27. R_0329 morphology label `ず` (Linguist major)
- Guide gọi `ず` là "て形 phủ định trang trọng" — SAI
- **Fix**: Đổi → "phủ định 連用形 trang trọng (variant of ない trong văn viết)"

### 28. Translation calque/awkward (Linguist major) — 5 bài
- R_0321 "ôm nghi vấn"/"làm sao mà..."; R_0327 "cảm giác cứ thấy là không chịu nổi"; R_0328 "ý thức bảo vệ ở phía người dùng"; R_0324 "ngộ nhận"; R_0321 sense of (定語) Trung
- **Fix**: Polish Vietnamese register

### 29. Cross-passage distractor R_0330 Q1 (Pedagogue major)
- Distractor D "海洋プラスチック汚染" mượn topic R_0325 cùng batch
- **Fix**: Replace bằng distractor khác

### 30. R_0326 quote register (Linguist major)
- Văn nghị luận formal trộn `もん` (very colloquial) → register mismatch
- **Fix**: Đổi `もん` → `もの` HOẶC giữ nhưng frame là dialogue character

## P2 — Should fix
31. R_0321 add NFT/Web3/生成AI references
32. R_0322 add ウェルビーイング term
33. R_0323 add コロナ禍 context
34. R_0324 add JASSO 給付型奨学金 specific
35. R_0325 add バイオプラスチック alternatives
36. R_0327 add TikTok/Instagram Reels specific
37. R_0328 add Nhật-EU 十分性認定 2019
38. R_0330 add カーボンニュートラル 2050

## Action plan
- 30 P1 critical/major
- 8 P2 nếu time
