# Revision Log — Sách 19 "Đại Năm 1: Du học sinh Osaka" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports + 3 JP/VN chunks
> Verdict: **STAGE 8 COMPLETED** — CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1 (consistency): T6 Hoa miền Nam VN sai (梅の花 → ホアマイ Ochna integerrima)
- **Files**: t06:177 (dialogue) + vocab line 238
- **Before**: `南部は梅の花とバインテット` (梅 = ume hoa mơ Nhật, SAI cho hoa mai miền Nam VN)
- **After**: `南部は黄色いホアマイ（日本の梅とは違う、Ochna integerrima）とバインテット`
- Vocab table updated: "ホアマイ (Ochna integerrima) | Hoa mai vàng VN miền Nam (khác 梅 ume Nhật)"

### CRIT-2 (domain): T7 Hanabi 5000発 → 3000発 (factual error)
- **Files**: t07:3 mục tiêu + vocab line 179 + multiple in-dialogue mentions (replace_all)
- **Reason**: Tenjin Matsuri 奉納花火 2024 thực tế ~3000 phát (verified YouTube official + Hotel New Otani PR 2024)

### CRIT-3 (consistency): T11 rent ký túc clash 6万 vs 5万
- **File**: t11:155 nhật ký
- **Before**: "5 万 tiền nhà + 1 万 tiện ích = 6 万. Còn 70 - 6 = 64 万 chi tiêu"
- **After**: "4 万 tiền nhà + 1 万 tiện ích = 5 万. Còn 70 - 5 = 65 万 chi tiêu"
- Match T11:23 (rent 4万) + T11:50 (4万+1万=5万 receptionist)

### CRIT (linguist) auto-handled by JP/VN chunks
- Empty `<rt></rt>` clean partial (chunks 1+2 áp dụng)
- Số + counter bao block (1日, 45分, 28時間 etc.)
- Osaka-ben markers thêm cho Tony+Yumi+Suzuki (~25 occurrences mới)
- JLPT N3 format đúng chuẩn 3 sections

## MAJOR fixes deferred (acceptable v1.1)

- MAJ (consistency) Linh-chị Nagoya cross-series cameo "bố nhờ" giải thích T8:92: defer
- MAJ (consistency) Outline state.json TQ/Hàn/Đài Loan vs content Myanmar: defer
- MAJ (consistency) T8→T9 vocab N2-N1 jump: defer (pedagogue cũng raise)
- MAJ (consistency) T11 plot extend 3→12 tháng homestay không scene transition: defer
- MAJ (linguist) Customer-service keigo Lawson buffer phrases ("失礼ですが"): defer
- MAJ (linguist) Telegraphic JP overuse: defer
- MAJ (linguist) "Hoan nghênh, mời vào" T01:147 register sai: defer
- MAJ (domain) MNB procedure missing T1/T3: defer
- MAJ (domain) N3 sectional 19/60 disclaimer T8: defer
- MAJ (domain) T12 N2 mock 110 sau 3 tháng aspirational: defer (cần cross-book backport sách 20)
- MAJ (pedagogue) Comprehension self-check missing: defer (LITE limitation)
- MAJ (pedagogue) Mục tiêu chương Bloom-aligned: defer

## Files modified Stage 8

1. books/19_dai_year1/t06_class_presentation/t06_ClassPresentation_HoiThoai.md (2 edits: dialogue 梅 → ホアマイ + vocab)
2. books/19_dai_year1/t07_summer_matsuri/t07_SummerMatsuri_HoiThoai.md (3 edits: mục tiêu 5000 → 3000 + replace_all + vocab kana)
3. books/19_dai_year1/t11_hikkoshi_dorm/t11_HikkoshiDorm_HoiThoai.md (1 edit: nhật ký 5万→4万)

Plus ~178 inline edits từ 3 JP/VN chunks.

## Sign-off

✅ Sách 19 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
✅ Series Đại du học (sách 19+20) năm 1 done
