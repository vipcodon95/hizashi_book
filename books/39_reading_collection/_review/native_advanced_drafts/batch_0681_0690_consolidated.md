# Consolidated fix list — batch_0681_0690 (Native_advanced cấp 10)

File: `books/reading_collection/native_advanced_drafts/batch_0681_0690.json`

**Đặc điểm**: 13 critical linguistic (Hangul ×2: 귀속 R_0681 + 여유 R_0690; pseudo-原文 fab attribution ×4: R_0682/R_0683/R_0684/R_0687; fab grammar にほかならず + ざるをえない bare + たるべく Heike interpolation; 間柄=かんがら sai reading; mojibake "tự律化" R_0686). 4 critical factual (R_0682 mislabel + 間柄, R_0684 mislabel + cổ văn bịa, R_0688 280万人不足→57万人不足, R_0686 gloss "sai động từ"). R_0684 4/5 meta CRITICAL. Q5 length giveaway 7-9/10 ratio 1.7-2.4×. Q2 cause = 2/10.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q5 length giveaway** 9/20 Q4-Q5 vượt 1.3× (4 CRITICAL ≥2×: R_0681/R_0682/R_0684 Q4+Q5) → rewrite cắt correct ~60 chars + expand distractor.
- **Q2 cause-format = 2/10** → ≥5/10. Rewrite Q2 ≥3 bài (R_0681/R_0685/R_0688/R_0690).
- **Meta-grammar Q vi phạm** R_0684 4/5 CRITICAL + R_0687/R_0689 2/5 → giảm ≤1/5 mỗi bài.
- **Process check** R_0686 sentence 22 duplicate (sentence + chunks lặp câu 21) → fill mới hoặc xóa.

### R_0681 (Risk Society / Beck) — HANGUL + GRAMMAR FAB
- **Hangul leak CRITICAL**: line 237 process guide `(帰属 = quy thuộc,귀속; 主体 = chủ thể)` → bỏ `귀속`.
- **Fab grammar MAJOR**: line 217-219 sentence 14 `いかんによらず保険の本質は…` (standalone không có N+を/に kèm) → `事情のいかんによらず` / `不確実性のいかんによらず` / `いかなる場合であれ`.
- **Pattern overuse**: をめぐって ×5 → ≤4.
- **Q1+Q3 lexical fingerprint giveaway** (にほかならない match) → paraphrase.
- **Q5 length 2.4× CRITICAL** + stem 2-in-1 → rút + tách.
- **Currency add**: 2024/10 火災保険参考純率改定 +13% (損保料率算出機構).

### R_0682 (Watsuji Fūdo) — FACTUAL + READING + GRAMMAR FAB CRITICAL
- **Mislabel CRITICAL**: title `『風土』原文抜粋と哲学的分析` — text là composed pastiche, KHÔNG Watsuji nguyên văn. Sửa title `和辻哲郎『風土』の哲学的分析` HOẶC restore actual `ここに風土と呼ぶのは、ある土地の気候、気象、地質、地味、地形、景観などの総称である`.
- **Reading error CRITICAL ×2**: line 461 + 460 + process guide `間柄` ghi `かんがら` SAI. Đọc đúng **あいだがら** — Watsuji's central concept. Sửa toàn bộ.
- **Fab grammar CRITICAL**: sentence 19 line 435 `単なる知識の獲得にほかならず、自己と共同体の在り方そのものへの問いを開くことである` (にほかならない không có dạng phủ định 連用形 để nói "không phải là") → `単なる知識の獲得にとどまらず` / `単なる知識の獲得ではなく`.
- **Q4 extreme cluster 3 distractors** (完全に克服/完全に解放/不可能) → soft-tone partial truth.
- **Q4 length 1.82× + Q5 length 2.27× CRITICAL** → rút.
- **Pattern overuse**: のである ×8+, たらしめる lạm dụng → cắt.

### R_0683 (Tanizaki In'ei Raisan) — PSEUDO-原文 + FAB
- **Mislabel CRITICAL**: title gán Tanizaki nhưng câu `これを仮に「陰翳の美学」と呼ぶとすれば〜` không có trong nguyên bản 陰翳礼讃. Sửa title `谷崎潤一郎『陰翳礼讃』に基づく考察` hoặc verbatim.
- **Fab grammar MAJOR**: 
  - sentence 19 line 826 `積極的な美的要素たらしむる力を持っている` (たらしむ thiếu 対象 Y) → `陰翳をして積極的な美的要素たらしむる力` / bỏ たらしむ
  - sentence 7 line 943 `金箔の放つ光はひときわ神秘的にして、観る者の心を打つ` (にして mix bungo+modern) → `神秘的であり、〜心を打つ`
- **Over-archaicization**: `燦然たる`/`俗なる`/`〜よかろう`/`〜あるまい`/`みよ` quá dày — Tanizaki không archaic đậm vậy. Giảm.

### R_0684 (Heike Monogatari) — FACTUAL + GRAMMAR FAB CRITICAL
- **Fab interpolation CRITICAL**: nhiều câu KHÔNG có trong Kakuichi-bon Heike: `この理は古より変はらず` (line 1323), `されど、おごりの心は天をも恐れず…思ひけり` (line 1371), `春の花はやがて散りぬ。秋の月もやがて雲に隠れぬ`, `平家の繁栄もまた、久しからじ`, `君もし疑はば、鐘の音を聞くべし…伝へけり` → bỏ hoặc đánh dấu là `現代語による補足` (KHÔNG gán cho 古文 nguyên bản).
- **Mislabel CRITICAL**: title `冒頭古文抜粋と注釈` nhưng mix real Heike + pseudo-bungo + 注 inline. Hoặc thay text bằng Kakuichi-bon strict + tách 注 thành field riêng, hoặc đổi title `『平家物語』祇園精舎—冒頭部とその注釈的再構成`.
- **注 markers chèn lệch CRITICAL**: `【注一】 / 【注二：こそ〜已然形の係り結び】` chèn giữa narrative — phá vỡ thể loại 軍記物語. Tách ra section riêng.
- **Fab grammar**: line 1419 `久しからじ` không trong Heike thật.
- **Genuine Heike line corrupted**: `猛き者もつひにはほろびぬ` — chuẩn Kakuichi-bon = `たけき者もつひにはほろびぬ` (kanji 猛き đọc たけき).
- **Meta-grammar 4/5 CRITICAL** (Q2 ぬ完了/Q3 こそ係り結び/Q4 文体/Q5 円環構造) → giảm ≤1/5, thêm Q content về vô thường/Phật giáo/Kiyomori.
- **Q4 length 2.04× + Q5 length 2.18× CRITICAL** → rút.

### R_0686 (Maruyama Sorai) — MOJIBAKE + GLOSS
- **Mojibake CRITICAL ×2**: line 2042 (translation) + line 2207 (process câu 9 translation) chứa kanji 律 chèn vào tiếng Việt: `tự律化của khái niệm` → `tự luật hóa của khái niệm` (thêm space + kanji bỏ).
- **Gloss error CRITICAL**: grammar_used line 2033 `〜たらしめる — sai động từ 使役 + せる/たる` — `sai động từ` đáng lẽ `dạng động từ` / `cấu trúc 使役`. Sửa.
- **Q3 paraphrase MAJOR**: copy gần literal câu 10 (倫理的内実を「人間」の次元に取り戻そう) → paraphrase xa.
- **にほかならない ×4** + `と言ってよかろう ×2` hedge-overload borderline → cắt 1.

### R_0687 (Mishima Kinkakuji) — PSEUDO-原文 + FAB
- **Mislabel CRITICAL**: title gán Mishima nhưng câu không có trong nguyên bản 金閣寺. Sửa title hoặc verbatim.
- **Fab grammar CRITICAL**: 
  - sentence 21 line 2435 `執着を捨てることなど、ざるをえない結論として焼却しか残されていなかった` (ざるをえない bare không có verb stem) → `焼却するほかないという結論` / `焼却せざるをえないという結論`
  - sentence 10 `美は私を癒すどころか、むしろ私を苦しめてならなかった` (てならない chỉ với cảm xúc/tự phát) → `苦しくてならなかった` / `苦しめてやまなかった`
- **Q5 interpretive overreach** (explanation tự thừa nhận "tất cả đều có một phần đúng") → clarify distractors.
- **Meta 2/5** (Q2 擬人法/暗喩 + Q4 chiasmus) → giảm 1/5.

### R_0688 (Yomiuri Editorial Aging) — FACTUAL CRITICAL
- **Statistical error CRITICAL**: line 3185-3193 + 2858 `2040年度には介護職員が約280万人不足するとの推計` SAI. MHLW 2024-07: 必要数 約272万人, 実績 215万人 → **不足 約57万人** (hoặc 約69万人 推計 khác). 280万 = 必要総数 (cũ) — bài conflate 必要総数 với 不足数. Sửa: `2040年度には介護職員が約57万人不足` (要員必要数 約272万人に対し). Cập nhật Q3 đáp án.
- **Currency**: 2025年度社会保障費 thực tế ≈ 137.8兆円 概算要求 (bài: 130兆円) — pass minor.
- **Q5 length 1.82× MAJOR** → rút.
- **Translation MINOR**: `壁を取り除くにあたって` → "Khi gỡ bỏ những rào cản này" (KHÔNG "Nhân dịp").

### R_0689 (Yayoi Yokoku) — CHRONOLOGY + TRANSLATION
- **Currency MAJOR**: vocabulary 弥生時代 `約300 TCN — 300 SCN` outdated. Post-2003 国立歴史民俗博物館 AMS C14 đẩy 弥生開始 lên ≈ 紀元前10世紀 (1000-900 BCE). Sửa: `theo định tuổi C14 mới ≈ 1000-900 TCN ~ 300 SCN`.
- **Translation MAJOR**: 石包丁 → "liềm đá" SAI. 石包丁 = stone reaping knife (≠ 鎌). Sửa: `dao gặt đá` / `lưỡi cắt lúa bằng đá`.
- **Meta 2/5** (Q3 にほかならない function + Q5 cấu trúc 論文) → giảm 1/5; Q5 → main-message synthesis về Yayoi origins (KHÔNG meta drift).

### R_0690 (Kurosawa 7 Samurai) — HANGUL
- **Hangul leak CRITICAL**: line 3862 process guide `(息継ぎ = lấy hơi + 余裕 =여유)` → bỏ `여유`.
- **Q4 length 1.6× MAJOR** → rút.
- **Currency add**: Venice Silver Lion 1954.

### R_0685 (Postwar Literature)
- **Pattern overuse hedge**: `と論じうる/と評しうる/と見るべきであろう` ≥13 lần / 22 câu → cắt ~50%.
- **Q5 length 1.89× MAJOR** + stem 2-in-1 → rút + tách.

## P2 — SHOULD FIX (Major systemic)

- Distractor extreme cluster ≤2/Q (R_0682_Q4 đặc biệt 3-cluster).
- Q4 paraphrase distance — phần lớn ở mức Recall/Apply (Bloom L2-L3) → synonym hóa keyword.
- Q1/Q3 trivialization từ process guides — tách process từ Q.
- Lexical fingerprint giveaway (にほかならない match) — paraphrase distractors.

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài
- [ ] R_0681: 귀속 → bỏ; いかんによらず → 事情のいかんによらず
- [ ] R_0682: title bỏ "原文抜粋"; 間柄 かんがら → あいだがら ×3; にほかならず → にとどまらず
- [ ] R_0683: title sửa hoặc verbatim; たらしむ + たい
- [ ] R_0684: bỏ fab interpolation; 注 tách field riêng; 猛き → たけき; meta 4/5 → 1/5
- [ ] R_0686: tự律化 → tự luật hóa ×2; sai động từ → dạng động từ
- [ ] R_0687: ざるをえない bare + てならない → form chuẩn
- [ ] R_0688: 280万人不足 → 57万人不足
- [ ] R_0689: 弥生時代 chronology update; 石包丁 → dao gặt đá
- [ ] R_0690: 여유 → bỏ
- [ ] Q2 cause ≥5/10
- [ ] Q5 length ≤1.3×
- [ ] Meta-grammar Q ≤1/5 (R_0684 đặc biệt 4/5→1/5)
- [ ] Distractor extreme cluster ≤2/Q (R_0682_Q4 3-cluster)
- [ ] No Hangul / TQ giản thể
- [ ] No mislabel `原文抜粋` cho pseudo-bungo (R_0682/R_0683/R_0684/R_0687)
