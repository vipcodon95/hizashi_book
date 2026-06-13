# Consolidated Fix List — batch_0311_0320 (cấp 6)

## Score
- Linguist: 8 critical (translation truncate 6 bài thiếu câu cuối + R_0315 sentence count mismatch + R_0315 Q3 cross-contamination), 14 major
- Pedagogue: 7 critical (R_0315 Q3 BUG, sentence flat 10/10, Q2 không cause 7/10, Inference 7.5%, Q4 copy câu cuối 8/10, distractor extreme 5/10, length giveaway 6/10), 5 major
- Domain: 1 critical (R_0314 số liệu sai 100人あたり9㎡), 8 major

## P1 — MUST FIX

### 1. Translation field thiếu câu cuối (Linguist critical) — 6 bài
- Process[] có đủ 15 entries nhưng `translation` field bị truncate, thiếu câu 15
- Bài: R_0313, R_0314, R_0316, R_0318, R_0319, R_0320
- **Fix**: Append câu translation 15 vào `translation` field, đối chiếu với process[14].translation

### 2. R_0315 sentence count mismatch (Linguist critical)
- `sentence_count: 15` nhưng text có 17 câu, process[] chỉ 14 entries
- **Fix**: Đếm lại text + sync sc + add/remove process entries cho đồng bộ

### 3. R_0315 Q3 cross-contamination (Linguist + Pedagogue critical)
- Q3 dùng cụm `「それでも書き続ける」` — clone từ R_0313 (日記)
- Bài R_0315 là 転職 không có cụm này
- **Fix**: Rewrite Q3 hoàn toàn về context 転職: "Tại sao tác giả cảm thấy 'đã làm tốt' khi nhìn lại?" hoặc tương tự

### 4. R_0314 số liệu 100人あたり9㎡ SAI factual (Domain critical)
- 都市公園法 thực tế là `住民1人あたり10平方メートル以上` (per capita)
- **Fix**: Đổi → `住民1人あたり10平方メートル以上 (都市公園法)` HOẶC `WHO基準では1人あたり9平方メートル以上`

### 5. Q2 không phải なぜ (Pedagogue critical) — 7/10 bài
- 7 bài Q2 dùng "どのような" / "何ですか" / "理由は何"
- **Fix khuyến nghị 5 bài**: Rewrite なぜ/どうして
  - R_0311 Q2 → "Tại sao thế hệ sandwich gặp khó khăn?"
  - R_0312 Q2 → "Tại sao SEL ngày càng quan trọng?"
  - R_0314 Q2 → "Tại sao đô thị cần không gian xanh?"
  - R_0316 Q2 → "Tại sao 新素材 cần nghiên cứu lâu dài?"
  - R_0318 Q2 → "Tại sao 教育格差 lan rộng?"

### 6. Inference Q3-Q4 chỉ 7.5% (Pedagogue critical)
- 7/10 bài có 0/4 Inference; chỉ R_0317 Q4 + R_0320 Q3 thực sự inference
- **Fix**: Convert Q3 hoặc Q4 → Inference cho 5 bài (R_0311, R_0312, R_0316, R_0318, R_0319)
- Cấm Q4 copy câu cuối literal

### 7. Distractor extreme words 5/10 bài (Pedagogue critical)
- R_0311 (最優先), R_0312 (唯一+しか), R_0318 (唯一+完全に), R_0319 (完全に+全面的+唯一+すべて), R_0320 (完全に+過ぎない)
- **Fix**: Replace bằng partial-truth / nuance ("phần lớn", "thường", "có xu hướng")

### 8. Length giveaway Q3-Q4 6 bài (Pedagogue critical)
- R_0311 Q4, R_0312 Q1, R_0314 Q4 (56 vs 28-32), R_0315 Q3 (64 vs 16), R_0318 Q3-Q4, R_0319 Q4 (88 vs 35), R_0320 Q3 (87 vs 34) + Q4 (79 vs 36)
- **Fix**: Pad distractor / shorten đáp án đúng (≤1.3x distractor)

### 9. Sentence count flat 15 (Pedagogue critical) — 10/10 bài
- **Fix**: Add câu cho ≥4 bài (do mục Domain) → variance 16-17

### 10. R_0311 — Add 2025年問題 + 介護休業法 改正 2024 (Domain major)
- Bài sandwich generation 2026 thiếu cốt lõi pháp lý
- **Fix**: Add 1 câu `2025年には団塊世代が全員75歳以上になり、2024年4月の育児・介護休業法改正で介護休業も拡充された。` (sc +1)
- Vocab thêm `2025年問題`

### 11. R_0312 — Add 主体的・対話的で深い学び + 非認知能力 (Domain major)
- SEL Nhật phải có term từ 学習指導要領 mới
- **Fix**: Add 1 câu reference `「主体的・対話的で深い学び」「非認知能力」など` HOẶC mention アクティブラーニング

### 12. R_0315 — Add Web面接 + リスキリング (Domain major)
- 転職 2026 thiếu post-COVID reality
- **Fix**: Add 1 câu `近年はWeb面接が主流となり、リスキリングを通じてキャリアを変える人も増えている。` (sc +1)
- Vocab thêm `Web面接` HOẶC `リスキリング`

### 13. R_0316 — Add ペロブスカイト太陽電池 + 全固体電池 (Domain major)
- Vật liệu mới Nhật-led 2024-2026 missing
- **Fix**: Add 1 câu `近年、日本発のペロブスカイト太陽電池や全固体電池の研究も注目されている。` (sc +1)
- Vocab thêm `ペロブスカイト太陽電池` HOẶC `全固体電池`

### 14. R_0317 — Add マインドフルネス (Domain major)
- Term phổ biến hơn 瞑想 trong context modern Nhật
- **Fix**: Đổi 1-2 chỗ 瞑想 → `マインドフルネス（瞑想）`. Add `Yahoo JapanやMercariなど大手企業もマインドフルネスを導入している。`

### 15. R_0318 — Add 子どもの貧困 11.5% + こども家庭庁 (Domain major)
- Bài 格差 2026 thiếu data + cơ quan mới 2023
- **Fix**: Add 1 câu `日本の子どもの貧困率は約11.5%、ひとり親世帯では44%にもなり、2023年に「こども家庭庁」も設立された。` (sc +1)
- Vocab thêm `子どもの貧困` HOẶC `こども家庭庁`

### 16. R_0319 — Add 全世代型社会保障 + 2040年問題 (Domain major)
- Bài chính sách thiếu official framing
- **Fix**: Add 1 câu `政府は「全世代型社会保障」をめざし、2025年問題に続く2040年問題への対応も急いでいる。` (sc +1)
- Vocab thêm `全世代型社会保障` HOẶC `2040年問題`

### 17. R_0320 — Add ESG + 紅麹問題/ジャニーズ (Domain major)
- Bài 企業倫理 2024-2026 thiếu framework chính
- **Fix**: Add 1 câu `近年は「ESG投資」や「人的資本経営」が広がる一方、紅麹問題（2024）など企業の不祥事も社会の注目を集めている。` (sc +1)
- Vocab thêm `ESG` HOẶC `人的資本経営`

### 18. Hán-Việt typo "phủ定" (Linguist major)
- R_0311 guide câu 4, 12, 13 mix kanji `定` với hiragana
- **Fix**: Search-replace "phủ定" → "phủ định", "khẳng定" → "khẳng định" toàn batch

### 19. R_0317 Q4 explanation false attribution (Linguist major)
- Explanation reference 「かもしれない」 không có trong bài
- **Fix**: Đổi → reference cụm thực sự xuất hiện ("と言われている", "という報告もある")

### 20. R_0319 pattern overuse `一方だ` (Linguist major)
- Lặp gấp 3-4 lần (tags + grammar_used + body câu 2 + câu 6)
- **Fix**: Cap ≤4. Replace 1 lần bằng `〜ばかりだ` HOẶC `増え続けている`

### 21. R_0320 pattern overuse `わけにはいかない` (Linguist major)
- 4 lần với 2 nghĩa khác nhau (positive + negative)
- **Fix**: Paraphrase 1 instance để giảm load

### 22. Vocab morphology consistency (Linguist major)
- R_0313 `整理される` (passive form), R_0314 `必要とされる` (passive form), R_0317 `継続的` (na-adj form)
- **Fix**: Đổi sang dictionary form (`整理する`, `必要`, `継続`) HOẶC keep + giải thích pattern

### 23. R_0311 dịch "cầu xin" (Linguist major)
- 助けを求める = "tìm/nhờ sự giúp đỡ", không phải "cầu xin"
- **Fix**: Đổi → "tìm sự giúp đỡ"

### 24. R_0312 dịch câu 12 (Linguist major)
- "kỹ năng quan hệ giữa người" — calque
- **Fix**: Đổi → "kỹ năng giao tiếp giữa người với người"

### 25. R_0314 — Add グリーンインフラ (Domain major)
- Keyword 国土交通省 2017+
- **Fix**: Add reference

## P2 — Should fix
26. R_0313 add デジタル日記 trend 2026
27. R_0316 add CFRP/Toray Nhật share
28. R_0317 add Calm/Headspace apps
29. R_0319 add 国民年金保険料 16,980円 specific
30. R_0320 add グリーンウォッシュ
31. R_0311 add 単独世帯 700万 stats
32. Vietnamese register polish ("sinh lợi" → "lợi nhuận", "ngoảnh mặt" thay "quay mặt")

## Action plan
- 25 P1 critical/major
- 7 P2 nếu time
