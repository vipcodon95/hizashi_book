# Consistency Report — Sách 16 "Thái Năm 3"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **FAIL** — phải fix CRITICAL trước Stage 8
> Severity: 5 CRITICAL, 8 MAJOR, 7 MINOR, 3 INFO

## Top 5 CRITICAL (BẮT BUỘC fix Stage 8)

### CRIT-1: Timeline inversion T11 (7-9/2025) trước T12 (4/2025)
- T11: thi 金型 + N2 (kết quả 8/2025)
- T12: 4/2025 cuối, list achievements gồm "金型製作 2級 / JLPT N2" — chưa xảy ra!
**Fix (recommend option C)**: T11 = "金型製作 2級 đỗ" (3-4/2025) only; N2 đẩy sang sách 17.

### CRIT-2: Tanaka 工場長 dropped TOÀN BỘ sách 16 (regression sách 14 fix lần 2)
12/12 chương — zero matches `工場長`. Sách 14 + 15 đã standardize. Sách 16 lặp lại regression.
**Fix**: Re-apply 工場長. Khi 3rd person → "タナカ工場長". Khi xưng hô trực tiếp → "工場長".

### CRIT-3: T12 broken ruby tags + T11 missing opening ruby tag
- T12 line 12: `<ruby>achievements<rt></rt></ruby>:` (English + rt rỗng)
- T12 line 16: `<ruby>solo<rt></rt></ruby>` 
- T11 line 11: missing `<ruby>` opening tag trước `頑張`
**Fix**: Replace English-in-ruby + add missing opening tag.

### CRIT-4: 名古屋大学 vs 南山大学 — em gái du học 2 trường khác
- T5 line 3 + 20 + 40 + 91: Nanzan
- T5 line 67 Tanaka: 名古屋大学 (KHÁC TRƯỜNG, national top 7 ≠ Nanzan private)
**Fix**: Sửa Tanaka line 67 → 南山大学.

### CRIT-5: T7 dialogue "金型 2級 3月受験" mâu thuẫn T11 "7月受験"
**Fix**: Liên kết CRIT-1. Nếu chọn (C) — T11 dời 3-4/2025 → giữ T7 "3月受験".

## Top 8 MAJOR

### MAJ-1: Visa 技人国 thread tiếp tục im lặng
Sách 16 = năm 3 = milestone visa renewal (3 năm), zero mention 技人国/在留/ビザ.
**Fix**: T12 Scene 2 thêm Tanaka line "在留3年更新申請も設計者身分で提出。5年許可狙う".

### MAJ-2: Sakurai 1級 status không setup
12 chương sách 16 zero scene confirm Sakurai 1級.
**Fix**: T1 Scene 1 thêm Sakurai "俺3月 1級 合格した。君も続け".

### MAJ-3: "Assistant Designer" title không bao giờ dùng T1-T11
T12 đột ngột nói "アシスタント卒業" — graduation từ title chưa setup.
**Fix**: T1 Scene 1 Kawakami brief: "君はアシスタント設計者として CAD 専属".

### MAJ-4: T4 nhật ký "Còn 5 tháng N2 thi" mâu thuẫn N2 prep T10
T4 (8/2024): "Còn 5 tháng N2 thi" → 5 tháng = 1/2025 (không phải kỳ N2).
**Fix**: T4 line 63 sửa "Còn 5 tháng **3D CAD 2級** thi".

### MAJ-5: N2 max điểm sai (175 vs 180)
T10 line 50: "Total 120/175. Pass 90." Reality N2: **180** max.
**Fix**: "120/180" + reformat thành 3 categories (言語知識 50/60. 読解 30/60. 聴解 40/60).

### MAJ-6: ## Bối cảnh missing 12/12 chương
Book 14 standard có. Book 15 dropped (đã fix). Book 16 cũng dropped.

### MAJ-7: Vocab recycling sách 14+15 missing
Zero callback EDM/Mastercam/磨き/段取り/ヒヤリハット.
**Fix**: Mỗi chương Vocab table thêm row "Recall".

### MAJ-8: Vocab heading "## Vocab" vs sách 15 standard "## Vocab tóm tắt"
**Fix**: Rename 12 chương.

## 7 MINOR

1. Em gái name "Linh-Anh" collision với "Linh chị" — đổi "Linh-An"/"Lan-Anh"
2. Kawakami chức vụ inconsistent — chỉ T12 dùng "課長"
3. Putra cohort interaction mỏng (3/12 chương)
4. T3 "1冊2000ページ" — Misumi mainstream ~3000 trang
5. T8 Hamada "Toyota車体" hierarchy — Toyota Auto Body là Group company không Tier-1 generic
6. Closing blockquote inconsistent length
7. T6 score 43/50 thiếu context "(70% 合格基準)"

## INFO

1. Structure 6 scenes + Vocab + closing blockquote consistent 12/12
2. Difficulty progression T1→T12 realistic gradient
3. Suzuki absence handled correctly

## Verdict

**FAIL** — phải fix CRIT-1 (timeline inversion), CRIT-3 (broken HTML/ruby), CRIT-2 (Tanaka 工場長 regression), CRIT-4 (大学 conflict), CRIT-5 (受験 month) trước seed.

Tổng thể narrative arc strong nhưng timeline T11/T12 ordering bug + ruby render bugs + 工場長 regression lặp giống sách 15 — pipeline writer cần guidance rõ hơn về Tanaka role + ruby tag rules trước khi viết sách 17-18.
