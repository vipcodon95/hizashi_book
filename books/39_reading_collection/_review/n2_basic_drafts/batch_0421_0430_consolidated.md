# Consolidated Fix List — batch_0421_0430 (N2_basic vòng 5)

> Source: 3 council reviews — 2026-05-09
> File: `/Users/binh/Documents/Claude/Projects/Hizashi_book/books/reading_collection/n2_basic_drafts/batch_0421_0430.json`

## P1 — MUST FIX

### R_0421「STEM分野の女性」
1. **CRITICAL — Domain "STEM"→"STEAM"**: MEXT 2020+ chính thức dùng STEAM. SỬA toàn bộ instances trong title/text/Q/vocab/explanation.
2. **MAJOR — Pattern overuse `を問わず` 5 lần + `の末に` 4 lần**: cap ≤4. Replace 1 instance mỗi cái.
3. **MAJOR — Q4 length giveaway** ratio ~1.78×. Cân bằng (≤1.3×).
4. **MAJOR — Q4 distractor extreme**: D "だけで十分", Q3-D "最善の方法". Đổi nuanced.
5. **MAJOR — Q2 không phải cause**: hiện meta-grammar về `を契機に`. Restructure thành cause-Q.
6. **Domain Major — Add 女性活躍推進法 2022/4 + 男女共同参画基本計画 第5次** + Nhật nữ研究者 ~17% (1 câu cite).

### R_0422「盆栽」
7. **CRITICAL — Câu 7 syntax sai `老人のかのようだ`**: かのようだ phải gắn với mệnh đề/動詞普通形. SỬA: 「老人であるかのようだ」 hoặc 「老人のようだ」.
8. **MAJOR — Q1-A "完璧な"** + Q3-D "不滅の文化財" + Q4-A "外国には理解できない": đổi nuanced.
9. **MAJOR — Q2 length giveaway** ratio ~1.45×. Cân bằng.
10. **MAJOR — Q2 không phải cause**: restructure.

### R_0423「神道とアイデンティティ」
11. **CRITICAL — Hangul leak `섭리`** trong vocab `摂理` meaning. SỬA: bỏ `,섭리` (giữ "quy luật tự nhiên").
12. **CRITICAL — sentence_count mismatch**: declared 16 nhưng text + process = 17. SỬA `sentence_count: 17`.
13. **MAJOR — Q4 length giveaway** ratio ~2.3× SEVERE. Cắt nghiêm trọng.
14. **MAJOR — Q4 distractor extreme**: A "完全に分離 / 危険", B "消滅の危機", D "最重要課題". Đổi nuanced.
15. **MAJOR — Câu 11 `創作を続けぬいている` collocation awkward**: SỬA: 「創作を続けている」 hoặc 「創作を貫いている」.
16. **MAJOR — Q4 copy literal câu 14+17**: paraphrase xa.
17. **MAJOR — Pattern overuse `として` ~6 lần**: cap ≤4 nếu fit.
18. **MAJOR — Q2 distractor "完全に"**: đổi nuanced.

### R_0424「ドローンと農業」
19. **MAJOR — Q4 length giveaway** ratio ~1.85×. Cân bằng.
20. **MAJOR — Q4 distractor extreme**: A "時期尚早", C "すべての課題は解決", D "のみ + 不可能". Đổi nuanced.
21. **MAJOR — Q2 không phải cause**: hiện meta-grammar `たところで`. Restructure thành cause-Q.
22. **Domain Major — Add 改正航空法 2022/12 (登録義務化 + Level 4 飛行)** + **みどりの食料システム戦略 2021** + **2024年問題 物流/担い手** (1-2 câu).

### R_0425「祖父母世代サポート」
23. **CRITICAL — Hangul leak `여유`** trong translation field. SỬA: thay bằng từ Việt/Nhật.
24. **MAJOR — Q4 length giveaway** ratio ~2× SEVERE. Cắt.
25. **MAJOR — Q2 distractor extreme**: A "諦めるべき", D "解決不可能". Đổi nuanced.
26. **Domain Major — Add こども家庭庁 2023/4 + こども基本法 2023/4 + 異次元の少子化対策 + ヤングケアラー** (1-2 câu).

### R_0426「ハラスメントと沈黙」
27. **CRITICAL — sentence_count mismatch**: declared 17 nhưng text actual = 16. SỬA `sentence_count: 16` (hoặc thêm 1 câu nếu cần).
28. **CRITICAL — Domain năm sai**: "2020年に施行" thiếu nuance. SỬA: 「2020年に大企業、2022年に中小企業も対象に」.
29. **CRITICAL — Domain miss カスハラ + 東京都カスハラ防止条例 2025/4** (Nhật BẢN ĐẦU TIÊN). Thêm 1 câu.
30. **MAJOR — 2/4 meta-grammar Q** (Q2 どころか + Q4 cấu trúc bài). Restructure 1 thành comprehension.
31. **MAJOR — Q3 distractor extreme**: A "すべての", D "即刻解雇", Q1-C "楽しんでいる" absurd. Đổi nuanced.
32. **MAJOR — Q3 length giveaway** ratio ~1.5×. Cân bằng.
33. **MAJOR — Q2 không phải cause**: restructure.
34. **Domain Major — Add フリーランス保護法 2024/11** + **ストレスチェック制度 mở rộng 2025-2026** (1 câu).

### R_0427「LGBTQと法律」 — PROBLEMATIC
35. **CRITICAL — `だけあって` sentence-initial misuse 2 chỗ** (câu 10, 13): sai cú pháp dạy sai N2. SỬA câu 10: thay bằng `〜たこともあって、〜` hoặc rewrite. SỬA câu 13: thay `〜だけあって` bằng `おかげで` hoặc `こともあって`.
36. **CRITICAL — Domain miss LGBT理解増進法 2023/6/23** (luật thực sự về LGBTQ Nhật): SỬA câu mô tả "差別禁止規定が法律上明確化されていない" thành nuanced kèm luật mới.
37. **CRITICAL — Domain miss 最高裁 2023/10/25 ruling 性同一性障害特例法 vi hiến + 札幌高裁 2024/3 同性婚 vi hiến**: bài 2024-2026 BẮT BUỘC. Thêm 1-2 câu.
38. **MAJOR — Pattern overuse `上(じょう)` ~6 lần**: cap ≤4. Replace 2 instances.
39. **MAJOR — Q4 length giveaway** ratio ~1.5-2×. Cân bằng.
40. **MAJOR — Q4 distractor extreme**: A "そのまま + 早急に + すべき", C "最優先すべき", Q3-D "不要". Đổi nuanced.
41. **MAJOR — Update パートナーシップ制度**: ~85% dân số sống ở 自治体 có制度 (2024). Thay "一部の自治体" bằng "現在は多くの自治体で".

### R_0428「フィンテックと伝統金融」
42. **MAJOR — English leak "parallel"** trong translation câu 12. SỬA: thay bằng từ Việt thuần "song song".
43. **MAJOR — Pattern overuse `上で` 5 lần**: cap ≤4. Replace 1 instance.
44. **MAJOR — 2/4 meta-grammar Q** (Q2 ないではいられない + Q4 上で repeat). Restructure 1 thành comprehension.
45. **MAJOR — Q2 không phải cause**: restructure.
46. **MAJOR — Q4 length giveaway** ratio ~2×. Cân bằng.
47. **MAJOR — Q1 distractor extreme**: A "近い将来に銀行は不要", D "取って代わるべき". Đổi nuanced.
48. **Domain Major — Add 新NISA 2024/1 + インボイス 2023 + PayPay code決済 ~40% + デジタル給与払い 2023/4** (1-2 câu).

### R_0429「漢字離れ」 — PROBLEMATIC
49. **CRITICAL — `に限る` prenominal misuse 3 chỗ** (câu 6, 14, 15): SỬA:
   - Câu 6 「読み書きに限る能力だけ」 → 「読み書きに限った能力」 hoặc 「読み書きだけの能力」.
   - Câu 14 「学校教育のみに限る対応」 → 「学校教育のみに限った対応」.
   - Câu 15 「現代の漢字教育に限る最善策」 → 「現代の漢字教育における最善策」.
50. **CRITICAL — Pattern overuse 限 family ≥9 lần**: cap ≤6. Replace ≥3 instances bằng `…のみ`/`…だけ`/`…において`.
51. **MAJOR — Q4 length giveaway** ratio ~2×. Cân bằng.
52. **MAJOR — Q4 distractor extreme**: A "完全に + 不要", B "不可逆的". Đổi nuanced.
53. **Domain Minor — Add GIGAスクール構想** (1 câu).

### R_0430「田舎ホームステイ」
54. **MAJOR — Q4 length giveaway** ratio ~2.3-2.5× SEVERE. Cắt.
55. **MAJOR — Q4 copy literal câu 16+17**: paraphrase xa.
56. **MAJOR — Q4 distractor extreme**: A "最も重要", D "消滅の危機 / 緊急 / 保護政策" 3 extremes. Đổi nuanced.
57. **MINOR — Câu 4 chunks/tags mismatch**: tags ghi `か～ないかのうちに` nhưng text dùng `か否かのうちに`. Align tags với form thực tế.

## P2 — Systemic
- Q2 cause: R_0421, R_0422, R_0424, R_0426, R_0428.
- Length giveaway Q4 systemic 7/10. Verify ≤1.3×.
- Meta-grammar Q ≤1/4 per bài.

## Verify
1. JSON parse OK; Hangul/TQ giản thể: 0 (đặc biệt 섭리, 여유)
2. R_0421: text dùng "STEAM"; count `を問わず` ≤4; count `の末に` ≤4
3. R_0422 câu 7: KHÔNG còn `老人のかのようだ`
4. R_0423: sentence_count = len(process) = 17; KHÔNG còn `섭리`; count `として` ≤4
5. R_0425: KHÔNG còn `여유`
6. R_0426: sentence_count match; phải có "2022年" cho 中小企業; phải có "カスハラ"
7. R_0427: KHÔNG còn `だけあって` đầu câu standalone; phải có "LGBT理解増進法 2023"; count `上(じょう)` ≤4
8. R_0428: KHÔNG còn "parallel"; count `上で` ≤4; phải có "新NISA"
9. R_0429: KHÔNG còn `に限る` modifier prenominal; count 限 family ≤6
10. sentence_count == len(process) per bài
11. Length ratio Q4 ≤1.3×
12. Distractor extreme cluster ≤2/Q
