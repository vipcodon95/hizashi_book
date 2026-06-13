# Consolidated Fix List — batch_0381_0390 (N2_basic vòng 3)

> Source: 3 council reviews (linguist + pedagogue + domain) — 2026-05-09
> File: `/Users/binh/Documents/Claude/Projects/Hizashi_book/books/reading_collection/n2_basic_drafts/batch_0381_0390.json`

## P1 — MUST FIX (Critical/Major)

### R_0381「完全自動運転車の未来」
1. **CRITICAL — sentence_count mismatch**: declared 15 nhưng text có 16 câu (process[] có 15 entries; câu "新技術の導入には社会的な混乱が伴うものだ。" sau câu 11 không có process entry). FIX: thêm process entry tương ứng + update `sentence_count: 16`.
2. **MAJOR — Câu 6 syntax sai**: 「自動運転システムはばかりか、〜」. ばかりか không gắn sau は trực tiếp. SỬA: 「自動運転システムは、安全性の向上ばかりか、渋滞の緩和や〜」 (chèn N giữa は và ばかりか).
3. **MAJOR — Câu 3, 10 ことだから unnatural**: 「技術の進歩が著しいことだから」 / 「高度なシステムであることだから」. ことだから dùng cho người/đặc tính người đã biết. SỬA: 「技術の進歩が著しいことから」 / 「高度なシステムであることから」.
4. **MAJOR — Q4 explanation hallucinated reference**: nhắc "câu 16 mở rộng thêm: 技術の発展と社会制度の整備が歩調を合わせて進むことが不可欠" — text KHÔNG có câu này. BỎ tham chiếu sai khỏi explanation.
5. **MAJOR — Q4 length giveaway**: đáp án C ~50 chars vs A/B/D ~25-30 (ratio ~1.7×). Cắt C còn ~35 chars hoặc nâng distractors.
6. **MAJOR — Q4 distractor extreme**: A "中止すべき", D "唯一/だけが/国際協調は必要ない", B "はるかに上回る". Đổi sang nuanced wrong (vd "海外の動向にあまり影響されない" thay "国際協調は必要ない").
7. **Domain Major** — Bổ sung **特定自動運行/レベル4 道交法改正 2023/4** + ví dụ **福井県永平寺町 5/2023** thương mại Lv4 (1 câu currency).

### R_0382「大相撲と伝統文化」
8. **CRITICAL — Mistranslation 大相撲**: title_vi "Đại tướng sumo" SAI. SỬA: "Sumo chuyên nghiệp" hoặc giữ "Ozumo". Sửa toàn bộ instances trong translation field.
9. **MAJOR — Mistranslation 相撲部屋**: hiện "nhà ổn sumo" SAI. SỬA: "lò sumo" hoặc "heya". Toàn bộ instances.
10. **MAJOR — Outdated trend "外国出身の力士が増加"**: trend đã đảo ngược (mongolian giảm, nhật-sinh tăng — 大の里 横綱 5/2025). Đổi thành "近年は外国出身力士の活躍が定着しており" hoặc soften.
11. **MAJOR — Q4 distractor extreme**: D "唯一/のみ/最も重要", Q3-C "完全に排除", Q3-A "一切加えない". Đổi sang nuanced.
12. **MAJOR — Q4 length giveaway**: C ~55 vs A/B/D ~30 (ratio ~1.8×). Cân bằng.

### R_0383「地方ボランティア活動」
13. **MAJOR — Pattern overuse として/としての/としては** ~7 lần. Giảm xuống ≤4 (thay 3 chỗ bằng `役割を担う`/`の立場で`/`に位置づけられる`).
14. **MAJOR — Q4 distractor extreme**: A "唯一の手段". Đổi sang "主要な手段の一つ".
15. **MAJOR — Q4 length giveaway**: C ~70 vs A/B/D ~30-40. Cân bằng.
16. **MAJOR — Q1 distractor D**: "短期間で / できるだけ多く" mâu thuẫn câu 14 → quá obvious wrong. Soften.
17. **Domain Major** — Bổ sung **地域おこし協力隊** (tên chính thức) + **関係人口** (1-2 câu) thay generic.

### R_0384「コロナ後のリモートワーク」
18. **CRITICAL — Vocab typo**: `制度化する` reading `せいどかするど` (thừa ど cuối). SỬA: `せいどかする`.
19. **MAJOR — Outdated trend "ハイブリッド勤務が増えている"**: 2024-2026 trend là RTO (Honda, Rakuten, Mercari, GMO). Balance hơn: thêm 1 câu "ただし、2024年以降はオフィス回帰(RTO)を進める企業も増えている".
20. **MAJOR — VR/メタバースオフィス outdated**: trend hạ nhiệt sau 2023. Soften hoặc replace bằng **Apple Vision Pro 2024** mention nếu fit.
21. **MAJOR — Q3 meta-grammar overuse**: hiện 2/4 meta (Q2 ものやら + Q3 だの…だの). Đổi Q3 thành content-Q.
22. **MAJOR — Q4 length giveaway**: C ~70 vs A/B/D ~35 (ratio ~2×). Cắt + extreme markers ("早急に"/"完全な") nuanced.

### R_0385「摂食障害の現状」
23. **MAJOR — にしては misuse 2 chỗ**:
   - Câu 4 「思春期の若者にしては」 → SỬA: 「思春期の若者にあっては」 hoặc 「においては」.
   - Câu 16 「回復には時間がかかるにしては」 → SỬA: 「ものの」 hoặc 「とはいえ」.
24. **MAJOR — Q3 meta-grammar (のもとで)** + **Q4 distractor extreme** ("唯一/だけが", "完全に克服/自力で", "SNSを規制"). Restructure Q3 thành comprehension; nuanced distractors Q4.
25. **MAJOR — Q4 length giveaway**: C ~50 vs A/B/D ~25-30 (ratio ~1.6×). Cân bằng.
26. **MINOR — Q1 distractor A "症状が夜間にのみ現れる"** quá vô lý. Replace bằng plausible wrong.
27. **Domain Major** — Bổ sung **過食性障害 (binge-eating disorder)** type thứ 3 + **ルッキズム** keyword (1 câu).

### R_0386「日本のレトロな鉄道」
28. **MAJOR — Q2 meta-grammar (撮影しっぱなし)** + **Q3 meta-inference**: 2/4 meta. Restructure Q3 thành comprehension.
29. **MAJOR — Q2 distractor A "撮影をやめてしまった"** trái ngược 100%, obvious wrong. Replace.
30. **MAJOR — Q4 length giveaway**: C ~70 vs A/B/D ~30 (ratio ~2.3×). Cắt nghiêm trọng.
31. **Domain Major** — Bổ sung **再構築協議会 2023/10** + ví dụ cụ thể (**只見線 2022 phục hồi**, **芸備線 2024 first 再構築協議会**) thay generic.

### R_0387「ホームスクーリング」
32. **CRITICAL — きり misuse câu 2**: 「学校を離れたきり、家庭学習の道を選ぶ」 SAI. SỬA: 「学校を離れたのを機に、家庭学習の道を選ぶ」 hoặc 「学校を離れたまま、〜」.
33. **CRITICAL — Miss luật 教育機会確保法 2016/2017**: bài về homeschooling Nhật mà không nhắc luật này = sai về context pháp lý. THÊM 1 câu về luật này.
34. **CRITICAL — Q2 + Q3 đều meta-grammar** (げ pattern, なんて). Restructure ít nhất 1 thành comprehension.
35. **MAJOR — 喜びげに forced collocation** câu 10. SỬA: 「嬉しそうに」.
36. **MAJOR — Q4 length giveaway**: C ~75 vs A/B/D ~25-35 (ratio ~2.5× nghiêm trọng). Cắt + extreme markers ("即刻禁止"/"完璧"/"すべての") nuanced.
37. **MAJOR — Q2 distractors strawman**: A "確実に証明された", B "ふりをしている". Replace bằng plausible.
38. **Domain Major** — Bổ sung **不登校過去最多 2023年度 約34万人** số liệu (1 câu).

### R_0388「学校教育における柔道」
39. **CRITICAL — Sai facts**: "2012年から中学校体育の必修科目として柔道が導入された". SAI. 2012 必修化 là **武道** (柔道/剣道/相撲... tuỳ trường chọn). SỬA: 「2012年から中学校体育で武道が必修化され、多くの学校が柔道を採用した」 hoặc tương đương.
40. **MAJOR — Q3 meta-grammar (べき)**. Restructure thành comprehension nếu fit (acceptable nếu giữ 1/4).
41. **Domain Major** — Bổ sung **柔道事故 1983-2011 約118 ca tử vong** (全国柔道事故被害者の会) data cụ thể thay vì generic "事故が相次いだ".

### R_0389「兄弟間の遺産相続」
42. **CRITICAL — Miss 2024/4 相続登記義務化** + **2018 民法相続改正** (配偶者居住権/特別寄与料): bài về thừa kế hiện đại bắt buộc nhắc. THÊM 1-2 câu currency.
43. **MAJOR — Q2 meta-grammar (にかかわらず vs にもかかわらず)**: 1/4 OK boundary. Acceptable nhưng nếu fit thì restructure.
44. **MAJOR — Q4 distractor extreme**: A "必ず解決", D "完全に解決", C "根本的に改革". Q1-D "のみ適用". Đổi nuanced.
45. **MAJOR — Q4 length giveaway**: B ~50 vs A/C/D ~25-30 (ratio ~1.7×).

### R_0390「日本の人工林」
46. **CRITICAL — Fabricated grammar 〜あまりに**: grammar_used khai 「～あまりに（vì quá～）」 SAI. Đúng là **〜あまり** (sau N/V辞書形/V-た) hoặc **〜のあまり** (sau N + の). SỬA: cập nhật grammar_used + sửa câu 3 「需要が高まるあまりに」 → 「需要が高まるあまり」 + câu 6 「採算が取れないあまりに」 → 「採算が取れないあまり」.
47. **MAJOR — Q4 copy literal câu 16**: đáp án C "単なる林業の課題にとどまらず…構造的な問題" gần nguyên văn. Paraphrase xa hơn.
48. **MAJOR — Q4 distractor extreme**: D "唯一の解決策", B "技術革新だけで解決". Đổi nuanced.
49. **MAJOR — Q4 length giveaway**: C ~70 vs A/B/D ~35-40 (ratio ~1.8×). Cân bằng.
50. **Domain Major** — Cập nhật **森林環境税 2024年6月 個人住民税徴収開始** (chứ không phải "近年導入に際して") + **花粉症対策 2023/5** (1 câu).

## P2 — Systemic
- Q2 cause-question rule (#12 cumulative): áp dụng cho ≥5/10 bài. Ưu tiên: R_0381, R_0382, R_0384, R_0386, R_0388.
- Length giveaway Q4 systematic 8/10 bài. Verify max ratio ≤1.3× sau khi fix.

## Verify
1. JSON parse OK (`python3 -c "import json; json.load(open('...'))"`)
2. Hangul/TQ giản thể: 0
3. R_0390 không còn `あまりに` trong text body (chỉ `あまり`).
4. R_0387 không còn `離れたきり` câu 2.
5. R_0388 wording phải có 「武道」 không chỉ 「柔道導入」.
6. R_0389 phải có reference 「2024年4月 相続登記義務化」 và/hoặc 「2018年民法改正」.
7. R_0397/0382 etc: title_vi phải đúng.
8. sentence_count == len(process[]) cho mỗi bài (đặc biệt R_0381 = 16).
9. Distractor extreme cluster ≤2/Q.
