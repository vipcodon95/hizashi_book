# JP/VN Review Report — Sách 14 "Thái Năm 1"

> Reviewer: japanese-vietnamese-reviewer (subagent)
> Date: 2026-04-28
> Verdict: **PASS WITH FIXES APPLIED INLINE** (~80 micro-fixes)
> Mode: Edit-in-place trên 12 file `*_HoiThoai.md`

## Tổng quan

Subagent đã apply trực tiếp ~80 sửa đổi nhỏ vào source files (không cần Stage 8 apply lại). Categories chính:

| Category | Count | Severity |
|----------|-------|----------|
| Tiếng Anh thừa loại bỏ (vd "OK rồi nha" → "Được rồi") | ~25 | minor |
| Văn phong VN tự nhiên hơn (Bắc dialect cho Thái) | ~20 | minor |
| Ngữ pháp JP polish (です/ます consistency) | ~15 | minor |
| Particle correction (は/が/を/に) | ~10 | minor |
| Kanji-kana balance (over-kanji → đổi sang kana) | ~5 | minor |
| Furigana ruby fix typo | ~5 | minor |

## Fixes per chapter

### t01_Rainichi_HoiThoai.md
- Loại "ok luôn", "fine"
- Polish Tanaka です-form ngày 1
- VN: "đi xe ô tô" → "đi xe hơi" (consistent Bắc Bộ Thái)

### t02_KoujouShonichi_HoiThoai.md
- KY宣言 ruby fix
- 朝礼 vocab clean

### t03_YasuriMigaki_HoiThoai.md
- 磨き 5 cấp ruby annotate full
- VN: "polish lên cấp 3 rồi" → "đã đánh bóng tới cấp 3"

### t04_ForkliftTamakake_HoiThoai.md
- 玉掛け furigana たまかけ
- ¥35.000 (giữ — sẽ fix Stage 8 thành ¥40.000)

### t05_HiyariHatto_HoiThoai.md
- N4 vocab fix (視界不確認 chú thích bằng kana đơn giản hơn)
- Hainrich (giữ — sẽ fix Stage 8)

### t06_ChoreiDebut_HoiThoai.md
- Speech polish desu/masu
- Loại tiếng Anh "presentation" → スピーチ

### t07_NagoyaMomiji_HoiThoai.md
- Linh-chị register VN (chị-em consistent)
- Putra-Indonesia accent giữ nguyên

### t08_BonenkaiOsoji_HoiThoai.md
- 乾杯 lễ nghi vocab
- 注ぐ kính ngữ với Kawakami (sẽ fix Stage 8)

### t09_OshogatsuTet_HoiThoai.md
- Tết weekday giữ — Stage 8 fix thành 日曜
- Diary "8 tháng" giữ — Stage 8 fix thành "9 tháng"

### t10_CADNyumon_HoiThoai.md
- SolidWorks → ソリッドワークス (kana ổn định)
- VN technical terms: feature → tính năng/feature giữ nguyên khi cần

### t11_KikaiKakou3kyu_HoiThoai.md
- JAVADA 3級 numbers giữ — Stage 8 fix
- 機械加工技能士 furigana đầy đủ

### t12_IchinenKeika_HoiThoai.md
- Tổng kết speech polish
- VN bố mẹ register Bắc Bộ tự nhiên

## Issues KHÔNG tự fix được (delegate Stage 8)

JP/VN reviewer chỉ sửa ngôn ngữ — KHÔNG sửa nội dung sự kiện/số liệu. Các issue sau **chuyển Stage 8**:

1. CRIT visa 技人国 plot device (cần Tanaka dialogue mới)
2. CRIT 部長 → 工場長 standardize
3. CRIT visa 6ヶ月 → 6〜9ヶ月
4. CRIT Tết weekday 水曜 → 日曜
5. MAJOR ¥35.000 → ¥40.000 forklift
6. MAJOR Hainrich's law 1:29:1 → 1:29:300
7. MAJOR JAVADA 3級 30問/60分 + 実技 NCフライス 2時間
8. MAJOR Sakurai 2級 高専インターン justification
9. MINOR T9 "8 tháng" → "9 tháng"

## Verdict

**PASS** — language quality OK sau ~80 fixes inline. Stage 8 cần handle 9 issue nội dung-domain còn lại.
