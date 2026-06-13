# Consolidated Fix List — batch_0351_0360 (cấp 7)

## Score
- Linguist: 19 critical (R_0353/0357/0360 fabricated grammar; R_0354 だの…だのの; R_0355 にしては SAI + 压力 TQ leak; R_0356 typo っっこない; R_0359 Q4 ref câu 17 trong bài 16 câu), 27 major
- Pedagogue: 9 critical (R_0357 grammar lỗi text body; R_0360 際に際して + Q4 copy câu kết; meta-grammar Q lạm dụng 6/10; R_0355 75% meta-Q), 22 major
- Domain: 6 critical (R_0352 metaverse outdated framing; R_0354 missing COVID + すすきの廃止; R_0355 AO入試 outdated → 総合型選抜; R_0359 missing ジャニーズ; R_0360 missing 能登), 42 major

## P1 — MUST FIX

### 1. R_0357 fabricated grammar TEXT BODY (Linguist + Pedagogue critical)
- Câu 3: `を境にきり` — combo SAI (を境に + きり 2 grammar tách rời)
- Câu 9: `心にきり` — きり không thể bổ ngữ V-に
- Câu 5: `ものとはなんて` — combo SAI (とは + なんて redundant)
- Câu 11: `決まるとはなんて、ほど` — không có cấu trúc gì
- Câu 12: `燃え尽きそうげな` — そう + げ redundant
- Câu 14: `なんて、そのような` — sai usage tích cực
- **Fix**:
  - Câu 3: `ある時期を境に変質してしまう` (bỏ きり)
  - Câu 9: `かつての理想を心の奥にしまったきり` HOẶC `かつての理想を捨てたきり`
  - Câu 5: `これほど過酷なものとは、社会全体が…` (bỏ なんて) HOẶC `これほど過酷だなんて、社会全体が…`
  - Câu 11: `決まるのだと実感させられる局面でもある`
  - Câu 12: `燃え尽きそうな同僚` (bỏ げ)
  - Câu 14: `喜びを取り戻すような未来を実現するためには`

### 2. R_0360 `際に際して` SAI grammar (Linguist critical)
- Câu 3 + 15 — combo redundant + ungrammatical
- **Fix**: Đổi → `警報が発令された際に` HOẶC `警報の発令に際して` (bỏ kết hợp)

### 3. R_0353 `まで` mức độ SAI usage (Linguist critical) — 3 instance
- Câu 6, 8, 14 dùng `まで` chỗ phải dùng `ほど`
- **Fix**: Đổi `まで` → `ほど` ở cả 3 câu

### 4. R_0355 Q3 `压力` TQ kanji leak (Linguist critical)
- Q3 option C dùng `压力` (Trung giản thể)
- **Fix**: Đổi → `圧力`

### 5. R_0355 câu 14 `にしては` SAI usage (Linguist critical)
- "共通テストの得点にしては合否の判定が行われており" — fabricated meaning
- **Fix**: Đổi → `共通テストの得点に基づいて合否の判定が行われており` HOẶC `共通テストの得点で合否の判定が行われており`

### 6. R_0354 `だの…だのの` SAI grammar (Linguist critical)
- Câu 5: `だの氷像だのの数々` — `だのの` không tồn tại
- **Fix**: Đổi → `大雪像・中雪像、氷像など多くの作品が並ぶ`

### 7. R_0356 typo Q2 `っっこない` (Linguist critical)
- 2 small tsu liên tiếp
- **Fix**: Đổi → `走りっこない`

### 8. R_0359 Q4 explanation reference câu 17 (Linguist critical)
- Bài 16 câu nhưng explanation reference "câu 17" + quote `「その意義は否定できない」` không có trong text
- **Fix**: Đổi reference đúng câu trong text + remove fake quote

### 9. R_0360 Q3 + Q4 copy câu kết verbatim (Pedagogue critical)
- Q3 đáp án copy 90% từ câu 10
- Q4 đáp án copy "両輪となって" verbatim từ câu kết
- **Fix**: Paraphrase đáp án xa text gốc

### 10. R_0357 4 distractor và Q copy verbatim (Pedagogue critical)
- **Fix**: Sau khi fix grammar text body (mục 1), update Q + đáp án để paraphrase

### 11. Meta-grammar Q lạm dụng 6/10 bài (Pedagogue critical)
- R_0351 Q2, R_0352 Q2, R_0353 Q2, R_0355 Q1+Q2+Q3 (75%), R_0356 Q2+Q3, R_0357 Q2, R_0358 Q2, R_0359 Q3, R_0360 Q2
- R_0355 cực đoan
- **Fix khuyến nghị 5 bài**: Convert sang content cause/inference Q
  - R_0351 Q2 → "Tại sao 世代ギャップ depthening?"
  - R_0353 Q2 → "Tại sao越境EC market expand?"
  - R_0355 Q1 → Recall content (về thực trạng áp lực)
  - R_0355 Q2 → "Tại sao thi cử trở nên áp lực?"
  - R_0357 Q2 → "Tại sao giáo viên 燃え尽きる?"

### 12. R_0354 — Add COVID 2021-2022 + すすきの会場廃止 2024 (Domain critical)
- Bài 雪まつり thiếu biến cố lịch sử
- **Fix**: Add 1 câu `2021-2022年はコロナ禍でオンライン開催に変更され、2024年からはすすきの会場も廃止されるなど、伝統行事も時代の影響を受けている。` (sc +1)

### 13. R_0359 — Add ジャニーズ性加害問題 2023 + 不同意性交罪 (Domain critical)
- Bài MeToo Nhật bỏ qua case lớn nhất
- **Fix**: Add 1 câu `2023年のジャニーズ性加害問題、2023年の不同意性交等罪施行など、日本のMeTooも具体的な節目を迎えている。` (sc +1)

### 14. R_0360 — Add 能登半島地震 2024 + 南海トラフ臨時情報 2024 (Domain critical)
- Bài 津波警報 2026 thiếu biggest disaster
- **Fix**: Add 1 câu `2024年1月の能登半島地震では大津波警報が発令され、2024年8月には初の南海トラフ地震臨時情報も出された。` (sc +1)

### 15. R_0352 — Pivot sang 生成AI + Vision Pro 2024 (Domain critical)
- Metaverse outdated 2024-2026
- **Fix**: Add 1 câu `近年は生成AIブームに移り、2024年にはApple Vision Proが日本でも発売されるなど、仮想空間の役割も再定義されつつある。`

### 16. R_0355 — Đổi AO入試 → 総合型選抜 (Domain critical)
- AO入試 đổi tên 2021
- **Fix**: Replace `AO入試` → `総合型選抜` toàn bài. Add 1 câu `2025年の共通テストでは「情報I」が新設されるなど、入試改革も進んでいる。`

### 17. Q2 không phải なぜ/どうして 9/10 bài (Pedagogue major)
- **Fix khuyến nghị 5 bài**: R_0354, R_0356, R_0357, R_0358, R_0359 — rewrite Q2 sang `なぜ/どうして〜のですか`

### 18. Lạm dụng pattern (Linguist major)
- R_0352 つつある×5; R_0353 まで×3 (đã fix); R_0355 のもとで×5; R_0359 かかわらず×5; R_0360 際に+にあたって×9 (worst); R_0358 にすぎない×4 + べき×5
- **Fix**: Cap ≤3 mỗi pattern. Replace bằng synonym

### 19. R_0357 — Add 教員不足 2024 + 給与改定 + 部活動地域移行 (Domain major)
- **Fix**: Add 1 câu `近年は教員不足が深刻化し、2024年には教職調整額の引き上げや部活動の地域移行も進められている。`

### 20. R_0351 — Add 男性育休 2022 + ヤングケアラー (Domain major)
- **Fix**: Add 1 câu `2022年の男性育休法改正やヤングケアラー支援法など、家族の在り方も変わりつつある。`

### 21. R_0353 — Add インボイス制度 2023 + TEMU/SHEIN (Domain major)
- **Fix**: Add 1 câu `2023年のインボイス制度導入や、TEMU・SHEINなど海外プラットフォームの参入で、日本市場も大きく変わっている。`

### 22. R_0356 — Add 熱中症警戒アラート 2024 + 東京マラソン (Domain major)
- **Fix**: Add 1 câu `近年は熱中症警戒アラートも整備され、東京マラソンなど大規模大会の安全対策も強化されている。`

### 23. R_0358 — Add 熱中症警戒アラート + クーリングシェルター 2024 (Domain major)
- **Fix**: Add 1 câu `2024年からは「熱中症特別警戒アラート」と「クーリングシェルター」の指定制度が始まり、対策が強化されている。`

### 24. Length giveaway Q4 5/10 bài (Pedagogue major)
- R_0351, R_0354, R_0355, R_0357, R_0358
- **Fix**: Pad distractor / shorten đáp án

### 25. Copy verbatim Q đáp án 6/10 bài (Pedagogue major)
- R_0353 Q1, R_0354 Q2, R_0357 Q4, R_0358 Q3, R_0359 Q1, R_0360 Q3+Q4 (đã ở mục 9)
- **Fix**: Paraphrase đáp án ≤50% verbatim

### 26. Metadata mismatch tags vs grammar_used 5/10 (Linguist major)
- R_0351, R_0353, R_0354, R_0356, R_0359
- **Fix**: Sync metadata

### 27. R_0356 Q3 idiom ambiguity `走りっぱなし` (Pedagogue major)
- Wordplay gây nhầm với chạy marathon thực
- **Fix**: Add explicit note hoặc đổi câu

### 28. NEGATIVE Recall pattern lạm dụng (Pedagogue major)
- R_0352 Q1, R_0357 Q1, R_0352 Q2 — pattern "không được nêu"
- **Fix**: Đa dạng hóa Q1 sang positive Recall

### 29. R_0355 「ならともかく」guide chưa đủ + AO outdated (Linguist + Pedagogue major)
- **Fix**: Đã cover ở mục 16

### 30. R_0354 register mismatch だの formal (Pedagogue major)
- だの…だの khẩu ngữ trong essay nghị luận
- **Fix**: Đã cover ở mục 6

## P2 — Should fix
31. R_0352 add VTuber経済 / N高 specific examples
32. R_0353 add Amazon Japan/楽天/Yahoo specific
33. R_0354 add 2024 attendance số 240万人 specific
34. R_0356 add トレラン boom
35. R_0357 add スクールカウンセラー / SSW specific
36. R_0358 add 東京2020 marathon Sapporo case study
37. R_0359 add 伊藤詩織 + 宝塚 case 2023-2024
38. R_0360 add 緊急地震速報 / NHK World multi-language
39. Translation polish multiple bài

## Action plan
- 30 P1 critical/major (cao!)
- 9 P2 nếu time

## NOTE: Đây là batch chất lượng KÉM nhất từ đầu pipeline. R_0357 + R_0360 có grammar errors trong text body (fabricated), R_0355 75% meta-Q. Cần MAJOR REVISION.
