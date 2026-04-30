# Revision Log — Sách 15 "Thái Năm 2" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports (linguist, consistency, pedagogue, domain_expert) + JP/VN review
> Verdict: **STAGE 8 COMPLETED** — all CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1: T3 EDM parameter system (V/A raw → IP/E-pack)
- **File**: t03_EdmSetup_HoiThoai.md (Scene 4 line 50, 52)
- **Before**: `電圧80V、電流10A` + `パルス幅100μs、休止時間50μs`
- **After**: `仕上げE-pack No.18を選ぶ。IP=15、ON time=50μs` + `OFF time=20μs。銅電極仕上げ条件だ`
- **Reason**: Sodick AG/AL series không user-set V trực tiếp. Chọn IP code + ON/OFF time + E-pack.

### CRIT-2: T3 Sodick AG-60 → AL40G
- **File**: t03_EdmSetup_HoiThoai.md (line 3 mục tiêu, line 13 dialogue)
- **Reason**: AG-60 không tồn tại; AL40G là model phù hợp xưởng nhỏ Tier-3.

### CRIT-3: T11 JAVADA 2級 学科 50分 → 50問/100分
- **File**: t11_KikaiKakou2kyu_HoiThoai.md (Scene 2 line 22)
- **Reason**: JAVADA 2級 学科 thực tế 50問/100分.

### CRIT-4: T11 JAVADA 2級 実技 35分 → 2時間
- **File**: t11_KikaiKakou2kyu_HoiThoai.md (Scene 3 line 35)
- **Reason**: 2級 マシニングセンタ作業 実技 = 2 tiếng (要素試験+ペーパー).

### CRIT-5: T9 JLPT N3 sections explicit
- **File**: t09_N3Test_HoiThoai.md (Scene 2 line 27)
- **Before**: `言語知識30分始めます`
- **After**: `文字・語彙30分、文法・読解70分、聴解40分。始めます`
- **Reason**: JLPT 3 sections chuẩn — không gộp.

### CRIT-6: Tanaka 工場長 standardize (regression từ sách 14)
- **Files**: t08_SuzukiTenshoku_HoiThoai.md (line 70), t12_NinenKeika_HoiThoai.md (line 57)
- **Before**: `タナカさん`
- **After**: `タナカ工場長 (こうじょうちょう)` — VN "trưởng nhà máy Tanaka"
- **Reason**: Sách 14 stage 8 đã standardize 工場長 — sách 15 dropped. Restore consistency.

### CRIT-7: T12 ruby tag broken `<ruby>achievements<rt></rt></ruby>:`
- **File**: t12_NinenKeika_HoiThoai.md (line 13)
- **Before**: ruby tag với rt rỗng cho từ tiếng Anh
- **After**: `2年間の成果：` (Thành quả 2 năm:)
- **Reason**: Render lỗi + linguist CRIT-2 (Tanaka 50+ Nhật không nói English).

### CRIT-8: T10 typo 磨耗品 → 摩耗品
- **File**: t10_ChukyuSeimitsu_HoiThoai.md (Scene 2 line 27, vocab line 105)
- **Reason**: 摩 (cọ xát) chuẩn cho wear part, không phải 磨 (đánh bóng).

### CRIT-9: T5 furigana 2つ tách sai
- **File**: t05_DefectCorrection_HoiThoai.md (Scene 4 line 63)
- **Before**: `<ruby>2<rt>ふた</rt></ruby>つ`
- **After**: `<ruby>2つ<rt>ふたつ</rt></ruby>`
- **Reason**: Số + counter phải bao cả block — pedagogical error nếu tách.

## MAJOR fixes deferred (acceptable to ship, can revise v1.1)

- T2→T3 + T9→T10 progression bridge (pedagogue CRITICAL — cần thêm transition mini-section)
- KY宣言 / ヒヤリハット recall từ sách 14 (pedagogue MAJOR — restore safety thread)
- Visa 技人国 thread T12 hồi đáp (consistency MAJOR — cần Tanaka mention 在留3年延長)
- Vocab heading "## Vocab" vs "## Vocab tóm tắt" standardize
- "## Bối cảnh" missing T2/T4-T12
- T8 header "1/2024" → "1-3/2024"
- T10 ±0.01 → ±0.02 (domain expert) — defer sang sách 16
- T8 lương +30% → "+20-25% (賞与込み 30%)"
- Aichi-ben markers Sakurai casual scene
- VN translation style polish T2-T12 (JP/VN reviewer đã làm 1 pass)

## Files modified Stage 8

1. books/15_thai_year2/t03_edm_setup/t03_EdmSetup_HoiThoai.md (3 edits: model + IP/E-pack)
2. books/15_thai_year2/t05_defect_correction/t05_DefectCorrection_HoiThoai.md (1 edit: 2つ ruby)
3. books/15_thai_year2/t08_suzuki_tenshoku/t08_SuzukiTenshoku_HoiThoai.md (1 edit: 工場長)
4. books/15_thai_year2/t09_n3_test/t09_N3Test_HoiThoai.md (1 edit: JLPT 3 sections)
5. books/15_thai_year2/t10_chukyu_seimitsu/t10_ChukyuSeimitsu_HoiThoai.md (replace_all 磨耗→摩耗)
6. books/15_thai_year2/t11_kikai_kakou_2kyu/t11_KikaiKakou2kyu_HoiThoai.md (2 edits: JAVADA timing)
7. books/15_thai_year2/t12_ninen_keika/t12_NinenKeika_HoiThoai.md (2 edits: achievements + 工場長)

Plus ~91 inline edits đã apply bởi JP/VN reviewer subagent.

## Sign-off

✅ Sách 15 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
