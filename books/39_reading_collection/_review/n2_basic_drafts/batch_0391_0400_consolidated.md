# Consolidated Fix List — batch_0391_0400 (N2_basic vòng 3)

> Source: 3 council reviews (linguist + pedagogue + domain) — 2026-05-09
> File: `/Users/binh/Documents/Claude/Projects/Hizashi_book/books/reading_collection/n2_basic_drafts/batch_0391_0400.json`

## P1 — MUST FIX (Critical/Major)

### R_0391「研修医の現実」
1. **MAJOR — Currency**: thêm reference **医師の働き方改革 2024年4月適用** (時間外労働 960h/年 A水準, 連続勤務時間制限 28時間, 勤務間インターバル 9時間). 1-2 câu thay frame "改革を求める声は以前からある".
2. **MAJOR — Q4 distractor D extreme "廃止"**: đổi "研修医制度は廃止し" → "研修医制度を抜本的に見直し" hoặc nuanced.
3. **MAJOR — Pattern overuse 末に**: 3 lần (câu 1, 7, 15) — borderline. Nếu fit, giảm 1 chỗ.

### R_0392「ポップカルチャーの中の浮世絵」
4. **CRITICAL — Morphology câu 5 ことも+もかまわず**: 「遠近法にとらわれることももかまわず」 SAI (double も). SỬA: 「遠近法にとらわれることをもかまわず」 (ことを + もかまわず).
5. **MAJOR — Pattern overuse からいうと** 4 lần (boundary). `として` quá tải — giảm 2 chỗ nếu fit.
6. **MAJOR — Q2 distractor D extreme "公式に認定", Q4-D "最大の功績"**: đổi nuanced.

### R_0393「生きがいと人生の意味」 — PROBLEMATIC
7. **CRITICAL — sentence_count mismatch**: declared 18, actual process[] có 17 entries. SỬA: `sentence_count: 17`.
8. **CRITICAL — Process câu 13-14 placeholder duplicate**: guide+translation hiện là generic placeholder ("Câu bổ sung mở rộng luận điểm chính"). Phải viết lại guide+translation thực sự cho text Nhật của 2 câu này (text: "師は答えた。" và "「意味は与えられるものではなく、自ら創るものだ」と。").
9. **MAJOR — Q4 distractor C "最善の人生哲学"**: đổi nuanced.
10. **MAJOR — Process câu 13-14 thin guide** (overlap với #8): bổ sung 🔒/⚠️/💡 đầy đủ ~150-250 chars.
11. **Domain Major — 4-circle Venn diagram là Western interpretation** (Marc Winn 2014), KHÔNG phải định nghĩa Nhật chính thống (神谷美恵子 1966 đơn giản hơn). Thêm 1 câu clarify: 「ただし、この4つの円の図式は欧米で広まった解釈であり、日本の本来の概念は『生きるに値する人生の感覚』という、より素朴なものである」.

### R_0394「5GとIoT革命」
12. **CRITICAL — ことにする misuse 2 chỗ**:
   - Câu 4 「予測することにする取り組み」 → SỬA: 「予測する取り組み」.
   - Câu 8 「講じることにしなければならない」 → SỬA: 「講じなければならない」.
13. **MAJOR — Pattern overuse ことから 6+ lần** (câu 1, 5, 8, 9, 12, 13, 14). CAP ≤4. Thay 2-3 chỗ bằng `〜ため`/`〜ので`.
14. **MAJOR — Q4 distractor D extreme "さえ + 全て + 自動的"**: đổi nuanced.
15. **MAJOR — Q1 length giveaway**: B ~56 vs A/C/D ~21-27 (ratio ~2.3×). Cắt B nghiêm trọng. Q3 cũng vậy.
16. **Domain Major** — Bổ sung **IOWN (NTT) / Beyond 5G推進戦略 (NICT)** + **生成AI + 5G/IoT融合** (1-2 câu currency).

### R_0395「東京のホームレス問題」
17. **CRITICAL — Currency miss**: thêm **孤独・孤立対策推進法 2024年4月施行** (1 câu). Bài về homeless 2024+ bắt buộc.
18. **MAJOR — Frame outdated "バブル崩壊後の長引く不況"**: đổi sang frame 2024+ (高齢化、精神疾患、コロナ後の派遣切り residual).
19. **MAJOR — "世界一安全な都市"**: outdated (Tokyo rớt 3-5 sau 2021/2023). Soften: 「依然として安全水準が高い」.
20. **MAJOR — Q4 distractor A "最善策"**: đổi nuanced.
21. **MAJOR — Q4 length giveaway**: C ~90 vs A/B/D ~39-49 (ratio ~2.3×). Cắt nghiêm trọng.
22. **Domain Minor** — Bổ sung số liệu cụ thể: 「2024年厚労省調査によれば、全国2820人、東京都609人」.

### R_0396「サラリーマンと長時間労働」
23. **MAJOR — Q4 copy literal**: đáp án copy "三方向からの変革" từ câu kết. Paraphrase.
24. **MAJOR — Q4 distractor B extreme "完全に失敗"**: đổi nuanced.
25. **MAJOR — Q2 distractor B "必ず実現", C "全て"**: đổi nuanced.
26. **MAJOR — Q4 length giveaway**: C ~46 vs A/B/D ~27-29 (ratio ~1.7×). Cân bằng.
27. **Domain Major — Currency**: thêm **2024年問題 (運輸/建設/医師 残業上限 4/2024 適用)** + **春闘2024 5.28% 大幅賃上げ** + **ジョブ型雇用** (1-2 câu).

### R_0397「児童保護法の整備」 — PROBLEMATIC
28. **CRITICAL — Sai tên luật**: 「児童基本法」 KHÔNG TỒN TẠI. Đúng là **こども基本法** (公布 2022/6, 施行 2023/4/1). SỬA toàn bộ instances trong text + Q + explanation + vocab.
29. **CRITICAL — Miss こども家庭庁 2023/4設立**: cơ quan trung tâm thực thi. THÊM 1 câu trong text.
30. **MAJOR — Q4 distractor B "最善 + だけが", D "すべての"**: đổi nuanced.
31. **MAJOR — Q4 length giveaway**: C ~52 vs A/B/D ~22-30 (ratio ~1.7×). Q1 ratio ~1.4× (marginal).

### R_0398「日本の最低賃金」 — PROBLEMATIC
32. **CRITICAL — Sai số liệu năm**: bài viết "2024年度 全国加重平均が初めて時給1000円を超え" SAI. **2023年度 = 1004円** (vượt lần đầu). 2024年度 = **1055円**. SỬA chính xác năm + số liệu.
33. **MAJOR — 東京 1163円 / 最低 953円**: số 2024年度. Nếu bài có pubdate 2025+ thì update 2025 (東京 1226円, 最低 ~1023円). Else giữ 2024.
34. **MAJOR — "2030年代半ばまでに1500円"**: 石破政権 (10/2024-) đã pivot **2020年代に1500円** mục tiêu sớm hơn. Update.
35. **MAJOR — Pattern overuse 〜上で 5 lần** (câu 1, 9, 15, 16, 17). CAP ≤4.
36. **MAJOR — まい unnatural usage** câu 10 「招くまい、とは言い切れない」 và câu 17 「議論はとどまるまい」 (まい cho non-volitional subject quá bookish). Soften: 「招く可能性も否定できない」 / 「議論はこれからも続いていくだろう」.

### R_0399「カタカナ語と外来語」 — Meta-grammar PROBLEMATIC
37. **CRITICAL — Meta-grammar 3/4 Q** (Q1/Q2/Q4 đều về biến thể của 限). Restructure ít nhất 2 trong 3 thành comprehension Q (giữ 1 meta).
38. **MAJOR — Q3 distractor A "すべて廃止 + のみ", D "完全に同意"**: đổi nuanced.
39. **MAJOR — Q1 distractor C "だけを使い + 廃止"**: đổi nuanced.
40. **MAJOR — Pattern 限 cluster 4 biến thể × tổng ~8 lần**: giảm xuống ≤6 nếu fit.
41. **Domain Minor** — Bổ sung **生成AI thuật ngữ** (プロンプト/ハルシネーション) + **「公用文作成の考え方」 文化庁 2022** (1 câu).

### R_0400「築地市場の伝説」
42. **MAJOR — Q4 length giveaway**: B ~58 vs A/C/D ~22-36 (ratio ~2.6×). Cắt nghiêm trọng.
43. **MAJOR — Q1 copy literal câu 2**: đáp án B = "1935年の開場に先立って、関東大震災後の都市復興計画に端を発する" gần nguyên văn. Paraphrase nhẹ.
44. **MAJOR — Frame "世界最大の魚市場"**: đã chuyển sang **豊洲**. Tsukiji hiện chỉ còn **場外市場 (~400店)**, KHÔNG phải 卸売市場. SỬA frame: 「築地は閉場後、場外市場として観光地化が進んでいる」.
45. **Domain Major** — Bổ sung **築地跡地再開発計画 2024/4 三井不動産 + MICE/スタジアム/ホテル** + **インバウンド オーバーツーリズム 築地場外** (1-2 câu).

## P2 — Systemic
- **Q2 cause-question rule (#12)**: áp dụng cho ≥5 bài. Ưu tiên: R_0391, R_0392, R_0394, R_0396, R_0400.
- **Length giveaway Q4 systematic** 6/10 bài (R_0394, R_0395, R_0396, R_0397, R_0400, etc.). Verify ratio ≤1.3× sau fix.
- **Distractor extreme** rải rác — verify 0-2 chỗ extreme keywords mỗi Q.

## Verify
1. JSON parse OK.
2. Hangul/TQ giản thể: 0.
3. R_0392 câu 5 không còn `ことももかまわず` (phải `ことをもかまわず`).
4. R_0393 sentence_count = 17, process câu 12-13 có guide thực (không placeholder).
5. R_0394 không còn `することにする取り組み` / `講じることにしなければ`.
6. R_0394 text: count `ことから` ≤4.
7. R_0397: KHÔNG còn 「児童基本法」, phải có 「こども基本法」 + 「こども家庭庁」.
8. R_0398: 「2023年度に1000円超」 (KHÔNG phải 2024).
9. R_0398 text: count 「上で」 ≤4.
10. R_0399: meta-grammar Q ≤2/4.
11. R_0395: phải có 「孤独・孤立対策推進法」.
12. sentence_count == len(process[]) cho mỗi bài.
