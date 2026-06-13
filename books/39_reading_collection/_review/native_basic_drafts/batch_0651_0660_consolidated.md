# Consolidated fix list — batch_0651_0660 (Native_basic cấp 10)

File: `books/reading_collection/native_basic_drafts/batch_0651_0660.json`

**Đặc điểm**: 17 placeholder leak (R_0651/R_0653/R_0659). R_0653 critical Oe novel chủ đề sai (死産→障害児). R_0660 横浜特区 bịa. R_0656 quy đổi tiền sai. R_0658 こども家庭庁 dịch "Sảnh". R_0654 hotline outdated. R_0652 与党→"chuyên chính" 2 lần. R_0658 入所 logic ngược. R_0660 文化と価値観 apposition mistranslate. Q5 length giveaway hệ thống ≥2× (8/10). Q4 length R_0654/R_0658 cluster blacklist 3/Q.

## P1 — MUST FIX (Critical)

### Toàn batch
- **Q5 length giveaway hệ thống** 8/10 ratio 2-3.6× → rewrite Q5: cắt correct ~50-60 chars JP, expand distractors lên ~50 chars để ratio ≤1.3×.
- **Q5 cognitive overload + 2-trong-1 stem** R_0651/R_0654/R_0660 → tách / giảm luận điểm.
- **Process placeholder leak ×17 CRITICAL**:
  - R_0651 line 118-125: 2 entries
  - R_0653 line 942-955, 1026-1111: ~13 entries (mất nguyên block)
  - R_0659 line 3394-3401: 2 entries
  → Fill toàn bộ với guide thật + translation thật.

### R_0653 (Oe Manen Football) — FACTUAL CRITICAL + PLACEHOLDER ×13
- **Factual error CRITICAL**: line 808 `その距離は、死産の記憶から生まれたものにほかならなかった` — SAI bản chất tác phẩm Oe. Đứa con KHÔNG 死産 mà sinh với 重篤な脳障害 (như 大江光 ngoài đời). Sửa: `重い障害をもって生まれた子の記憶` / `障害児を施設に預けたことの記憶`.
- **Placeholder leak ×13 CRITICAL**: R_0653 mất nguyên block process (~13 entries) → fill nội dung thật.
- **Translation**: 菜採子 reading = なつみこ (Natsumiko), KHÔNG Natsuko.
- **Title**: `万延元年のフットボール` "Bầu dục" hơi cũ → "Bóng bầu dục".
- **Q3 length giveaway** correct >120 chars → rút.

### R_0660 (Nikkei BP Startup) — FACTUAL + TRANSLATION
- **Factual error MAJOR**: line 3717 `横浜市が推進するスタートアップ特区構想` — KHÔNG có Yokohama startup special zone nổi tiếng. Cabinet Office 2020 chỉ định: Tokyo Consortium / Osaka-Kyoto-Hyogo / Fukuoka / Aichi-Nagoya. Sửa: `福岡市グローバルスタートアップ拠点` / `大阪・京都・神戸 consortium`.
- **Currency MAJOR**: 岸田政権 ban hành 5カ年計画 2022/11 OK, nhưng Kishida đã từ chức 2024/10 (Ishiba/Takaichi kế nhiệm). Bài đặt thời gian hiện tại → bổ sung `前岸田政権下で策定された`.
- **Translation MAJOR**: câu kết `という、より長期的な地殻変動を待つほかない` — `という` là apposition (cái gọi là), KHÔNG so sánh. Hiện dịch "hơn là sự biến đổi văn hóa và giá trị" SAI. Sửa: `chờ đợi sự chuyển dịch kiến tạo dài hạn HƠN — tức là sự biến đổi văn hóa và giá trị`.
- **Translation**: `に至っては` → `còn về thực trạng hợp tác công tư thì...` (escalation marker).
- **Q5 length giveaway** → rút.

### R_0658 (Asahi Shoshika) — TRANSLATION + LOGIC
- **Awkward Japanese MAJOR**: line ~ `都市部を中心に入所を余儀なくされる現象が続いている` — 入所 = nhập học/vào nhà trẻ (positive); câu hàm ý "buộc phải vào danh sách chờ" → ngược nghĩa. Sửa: `入所を待つことを余儀なくされる` / `入所できない状況`.
- **Translation MAJOR**: line 2899 こども家庭庁 → "Sảnh Gia đình và Trẻ em" SAI. 庁 = Cục/Tổng cục. Sửa: `Cục Trẻ em và Gia đình` hoặc `Kodomo Katei-cho (Cục Trẻ em và Gia đình)`.

### R_0654 (Asahi Editorial) — DISTRACTOR + CURRENCY
- **Q4 distractor extreme cluster 3/Q CRITICAL** (最優先/一切/不要) → soft-tone partial truth.
- **Q5 distractor 2-cluster** (絶対に/一切) → 1.
- **Currency**: line 1283 `2022年以降ホットライン議論` outdated. Reality: 日中防衛当局間ホットライン vận hành **2023/3/31**. Sửa: `2023年3月に運用開始された日中防衛ホットライン` + thảo luận tiếp về Coast Guard hotline.
- **Q4 length 2.0×, Q5 2.6× CRITICAL** → rút mạnh.

### R_0652 (Yomiuri Editorial) — TRANSLATION
- **Translation MAJOR ×2**: 与党 dịch `chuyên chính` SAI (chuyên chính = 独裁/専制). 与党 = đảng cầm quyền. Sửa line 410 + guide line 535: `không phân biệt đảng cầm quyền hay đảng đối lập`.
- Guide line 631 `kitaru` reading chính xác là **きたる**, gọi "văn kinh" mơ hồ → đổi `連体詞 cổ điển/văn báo chí`.

### R_0656 (translation số tiền)
- **Translation MAJOR**: line 2085 `数十万円` → "hàng chục triệu đồng" SAI. 数十万円 = 200,000-800,000円 ≈ 30-130 triệu VND. Sửa: `hàng chục vạn yên` / `hàng trăm triệu đồng`.

### R_0651 (Kawabata Yukiguni) — PLACEHOLDER + LENGTH
- **Placeholder leak ×2** (line 118-125) → fill.
- **Q1 length 3.3× + Q5 length 3.6× CRITICAL** → rút mạnh.
- **Q1+Q5 meta drift overlap** (cả 2 đều synthesis multi-sentence) → tách angle.

### R_0659 (Uchida Tatsuru) — PLACEHOLDER + LENGTH
- **Placeholder leak ×2** (line 3394-3401) → fill.
- 神戸女学院大学 → "Đại học nữ Kobe Jogakuin" / `Kobe College` (KHÔNG "of Liberal Arts").
- Pattern `のではないか` ×5 → ≤4.

### R_0657 (Shiba Saka no Ue no Kumo)
- **Tag mismatch**: tags+grammar_used khai `たるもの` nhưng text KHÔNG dùng (chỉ `というものを`/`という時代`/`に至った`). Bỏ tag `たるもの`.
- **Vocab typo**: line 2515 己 reading `おのれ / おのれ` (lặp) → `おのれ` (1 lần).

### R_0655 (Mogi Qualia)
- **Q4 length 1.36× borderline, Q5 1.49×** → rút.

## P2 — SHOULD FIX (Major systemic)

- Q4/Q5 paraphrase distance.
- Distractor extreme cluster ≤2/Q.
- Translation flow chuyên ngành (政治/経済/学校).

## Verify checklist sau fix
- [ ] sentence_count == len(process[]) per bài (đặc biệt sau fill 17 placeholder)
- [ ] R_0653: 死産 → 障害児; placeholder ×13 fill; 菜採子 → Natsumiko
- [ ] R_0660: 横浜特区 → 福岡 / 大阪consortium; 岸田政権 → 前岸田政権; 文化と価値観 apposition
- [ ] R_0658: 入所 logic sửa; こども家庭庁 → Cục
- [ ] R_0654: distractor cluster soft-tone; hotline 2023/3
- [ ] R_0652: 与党 → đảng cầm quyền (×2)
- [ ] R_0656: 数十万円 → đúng quy đổi
- [ ] R_0651/R_0659: placeholder fill
- [ ] R_0657: tag たるもの bỏ; vocab 己 lặp sửa
- [ ] Q2 cause ≥5/10 (đã đạt 6-7/10, OK)
- [ ] Q5 length ≤1.3× toàn batch
- [ ] Q5 stem 2-trong-1 (R_0651/R_0654/R_0660) tách
- [ ] No Hangul / TQ giản thể
