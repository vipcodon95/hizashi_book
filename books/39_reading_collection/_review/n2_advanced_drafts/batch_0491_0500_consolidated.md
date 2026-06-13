# Consolidated Fix List — batch_0491_0500 (N2_advanced cấp 8 vòng 2)

> Source: 3 council reviews — 2026-05-09
> File: `/Users/binh/Documents/Claude/Projects/Hizashi_book/books/reading_collection/n2_advanced_drafts/batch_0491_0500.json`

## P0 — SYSTEMIC

### S1 — Add 🎯 ≥2/bài
0/10 bài. Add ≥2-3 mỗi bài tại synthesis/inference points.

### S2 — Length giveaway Q4
Cân bằng ratio ≤1.3×.

### S3 — Distractor extreme cluster ≤2/Q

### S4 — `にほかならない` cross-batch overuse
Cộng dồn 49 lần / 10 bài (R_0491 4×, R_0494 2×, R_0499 2×, R_0500 2×). Trim total xuống ≤30 lần.

## P1 — Per-bài

### R_0491「西田幾多郎」
1. **MAJOR — Pattern overuse `とすれば` 4 lần** (câu 4, 11, 17, 19): cap ≤4 borderline. Replace 1 nếu fit.
2. **MAJOR — `に他ならない` 3 lần + `とすれば` 4 lần**: density cao. Trim 1.
3. **MAJOR — Q4 copy literal câu 17** ("グローバル化の時代において...貢献しうる"): paraphrase.
4. **MAJOR — 2/4 meta-grammar Q** (Q2 とすれば+からであろう, Q3 のに対し): vượt ngưỡng. Restructure 1 thành comprehension.
5. **MAJOR — Q1 quá Recall thuần**: thêm Apply/Analyze.
6. **MINOR — Translation câu 19 typo "căn nguồn"** → "căn nguyên" / "cội nguồn".

### R_0492「水俣」 — Critical Hangul
7. **CRITICAL — Hangul leak `문학` line 478** trong guide câu 8: SỬA: `文学`.
8. **MAJOR — Pattern overuse `がゆえに` 4 lần + `ばこそ` 3 lần**: borderline. Trim nếu fit.
9. **MAJOR — Q3 length giveaway** ratio ~1.4×. Cân bằng.
10. **MAJOR — Q4 length giveaway** B 110字 vs A 50字. Cắt nghiêm trọng.
11. **MAJOR — Q2 meta-grammar `がゆえに`**: 1/4 OK nhưng phối hợp với Q1/Q3 dày grammar → restructure thành cause comprehension.
12. **MINOR — Translation typo "căn nguồn"** → "cội nguồn".
13. **Domain Minor — Add 2004年最高裁関西訴訟 hoặc 2009年水俣病被害者救済特別措置法** (optional currency).

### R_0493「芭蕉」
14. **MAJOR — Q4 length giveaway** B 95字 vs distractors 30-40字 ratio >2×. Cắt.
15. **MAJOR — Q4 copy literal câu 15+17 ghép**: paraphrase.
16. **MAJOR — Q3, Q4 compound questions** (kép): tách hoặc đơn giản hóa.
17. **MAJOR — Q1 distractor B copy literal `ことゆえ`**: paraphrase.
18. **MINOR — もののあわれ-Bashō pairing gượng**: focus wabi/sabi/不易流行 thay vì もののあわれ (Motoori Norinaga concept).
19. **MINOR — `んがため`/`ことゆえ` cổ điển ZPD jump**: thêm guide chú thích.

### R_0494「ものづくり」 — Major factual
20. **MAJOR — "Toyota 匠工房" verify**: không phải tên chính thức Toyota. SỬA: `技能伝承プログラム` hoặc `マイスター制度` generic, hoặc verify với Toyota official source.
21. **MAJOR — Pattern overuse `に即して` 4 + `ぐるみ` 3 + `にしてみれば` 3**: borderline. Replace 1 mỗi cluster nếu fit.
22. **MAJOR — Q4 meta-grammar `会社ぐるみ/社会全体ぐるみ`**: 1/4 OK nhưng overlap với Q1/Q3 grammar-dependence.
23. **MINOR — Vocab reading có space giữa kanji**: cleanup formatting.

### R_0495「甘え」
24. **MAJOR — `べきところ` chỉ 1 lần**: grammar trọng tâm không scaffold đủ. Add 1 instance hoặc remove khỏi grammar_used.
25. **MAJOR — Bloom thiếu Apply/Analyze toàn bài**: restructure ≥1 Q.
26. **Domain Minor — Add 孤独・孤立対策推進法 2024/4** (currency tie-in optional).

### R_0496「お盆」
27. **MINOR — Q2 field `"translation": ""`** rỗng schema issue: xoá field hoặc điền.
28. **MINOR — Q3, Q4 đáp án dài 2 mệnh đề**: cân bằng length.
29. **MAJOR — Q2 meta-grammar `が早いか`**: 1/4 OK borderline.
30. **MINOR — Q4 distractor extreme**: A "nhất định biến mất", C "chỉ tài nguyên du lịch". Đổi nuanced.

### R_0497「歌舞伎」 — Critical overuse
31. **CRITICAL — Pattern overuse `でなくて何だろう` 5+ lần** (câu 2, 9, 13, 20 + Q4 explanation): cap ≤2. Replace ≥3 instances bằng các cấu trúc khác (こそ.../といえる/ほかならない).
32. **MAJOR — Q4 length giveaway** C 70字 vs distractors 25-30字 ratio ~2×. Cắt.
33. **MAJOR — Q4 explanation copy literal `この均衡感覚こそが...歌舞伎の真髄でなくて何だろう`**: paraphrase.
34. **MAJOR — Pattern `とともに` 3 + `とあいまって` 2**: density. Trim 1.
35. **MINOR — "元禄期 đỉnh cao" đơn giản hóa**: thêm mention 化政期 (1804-1830) như đỉnh cao thứ 2.

### R_0498「スマートフォン」 — Critical placeholder
36. **CRITICAL — Câu 20-21 process placeholder**: guide "Câu bổ sung phân tích" + translation "Câu bổ sung." là filler. VIẾT LẠI đầy đủ:
   - Câu 20 「テクノロジーをよそに人間の本質は変わらない」: guide + translation đầy đủ ~150-250 chars.
   - Câu 21 「深い孤独を癒すのは、やはり生身の人間との温かい接触なのである」: guide + translation đầy đủ.
37. **MAJOR — 2/4 meta-grammar Q** (Q2 をよそに + Q3 ばかりに): vượt ngưỡng. Restructure 1.
38. **MAJOR — Q4 length giveaway** B 75字. Cân bằng.
39. **MAJOR — Q4 distractor extreme**: A "cấm sử dụng", D "chất lượng cải thiện" strawman. Đổi nuanced.
40. **MINOR — Câu 10 `着信音をよそに` collocation gượng**: SỬA `着信音を無視して` (をよそに dùng cho người/situation).
41. **Domain Major — Add 生成AI/ChatGPT/GPT-4o + TikTok addiction 2023-2025 + 内閣府 スマホ依存 reports**: bài 2026 BẮT BUỘC currency. 1-2 câu.

### R_0499「芥川」 — Critical morphology
42. **CRITICAL — Câu 4 `読者の心をつかんでずにはおかない` morphology fab**: SỬA: `つかまずにはおかない` (V-ない stem + ずにはおかない). Update guide câu 4 (KHÔNG rationalize lỗi).
43. **MAJOR — Q4 distractor extreme**: A "精神的に不安定 + 欠点" strawman, D "短編 giá trị thấp hơn 長編" strawman. Đổi nuanced.
44. **MAJOR — Bloom Recall heavy** (Q1, Q2, Q3, Q4 toàn Recall/Understand): thêm Apply/Analyze.
45. **MINOR — Q2 meta-grammar `生まれながらにして`**: 1/4 OK.

### R_0500「岡倉天心」 — Critical factual + fab
46. **CRITICAL — Lafcadio Hearn chronology error**: Hearn chết 9/1904, 茶の本 xuất bản 1906. KHÔNG thể "ảnh hưởng lên Hearn". SỬA: bỏ Hearn khỏi list, hoặc thay bằng Heidegger / Ananda Coomaraswamy / Ezra Pound (đã đọc 茶の本 và bị ảnh hưởng).
47. **CRITICAL — Câu 7 `この一言きり` N+きり direct fab**: SỬA: `この一言だけで` hoặc `この一言によって`.
48. **MAJOR — Pattern overuse `というところだ` 4 lần** (câu 3, 13, 16): borderline. Trim 1 nếu fit.
49. **MAJOR — Pattern `をもって` 2 + grammar_used**: cumulative cross-batch flag, monitor.
50. **MAJOR — Q4 length giveaway** C 70字 vs A/B/D 25-30字. Cân bằng.
51. **MAJOR — Q4 distractor extreme**: B "phương Tây không thể hiểu", D "Nhật vượt trội phương Tây". Đổi nuanced.
52. **MAJOR — Q3 meta-grammar `というところだ`**: 1/4 OK borderline.
53. **MINOR — Câu 10 VI translation "khoảng cách ma"** mojibake/lai romaji: SỬA: `khoảng cách 間 (ma)` hoặc dịch nguyên "khoảng lặng" / "khoảng giữa".
54. **MINOR — Câu 3, 13 VI translation `というところだ` thoát ý xa**: rephrase.

## P2 — Systemic
- Q2 cause: ≥5/10 bài.
- Length giveaway Q4 ≤1.3×.
- Meta-grammar Q ≤1/4.
- Bloom diversity ≥1 Apply/Analyze.

## Verify
1. JSON parse OK; Hangul: 0 (đặc biệt 문학); TQ giản thể: 0
2. Mỗi bài ≥2 🎯 trong process guides
3. R_0492 line 478: KHÔNG còn `문학` (phải `文学`)
4. R_0497: count `でなくて何だろう` ≤2
5. R_0498 câu 20, 21: process guide/translation đầy đủ (KHÔNG placeholder)
6. R_0499 câu 4: KHÔNG còn `つかんでずにはおかない` (phải `つかまずにはおかない`)
7. R_0500: KHÔNG còn `Hearn` trong list (hoặc clarify chronology); KHÔNG còn `この一言きり`
8. R_0494: verify `匠工房` Toyota (hoặc thay generic)
9. sentence_count == len(process[]) per bài
10. Length ratio Q4 ≤1.3×; Distractor extreme cluster ≤2/Q
