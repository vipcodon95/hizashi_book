# Revision Log — Sách 14 "Thái Năm 1" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports (linguist, consistency, pedagogue, domain_expert) + JP/VN review
> Verdict: **STAGE 8 COMPLETED** — all CRITICAL fixes applied

## CRITICAL fixes applied (8/8)

### CRIT-1: Visa 技人国 plot device + 入管届出 disclosure
- **Files**: t01_Rainichi_HoiThoai.md (line 7 bối cảnh + line 157 bí quyết), t10_CADNyumon_HoiThoai.md (line 153 bí quyết)
- **Before**: JD ghi "現場研修期間 6ヶ月" không có disclosure 入管
- **After**: JD ghi "現場研修期間 6〜9ヶ月（入管届出済み）" + bí quyết note "技術習得目的, đã khai báo 入管"
- **Reason**: Visa 技人国 cấm 単純労働. Plot device cần explicit để tránh hint compliance violation.

### CRIT-2: 部長 → 工場長 standardization (Tanaka cấp bậc)
- **Files**: t01_Rainichi_HoiThoai.md (line 3 mục tiêu, line 31 + 79 dialogue)
- **Before**: 田中部長 (chủ nhiệm)
- **After**: 田中工場長 (trưởng nhà máy / こうじょうちょう)
- **Reason**: User spec 工場長, dịch VN "trưởng nhà máy". 部長 ≠ 工場長.

### CRIT-3: Tết VN 22/1/2023 weekday fix
- **File**: t09_OshogatsuTet_HoiThoai.md (line 85 Scene 5)
- **Before**: "テトは1月22日、水曜日です" (Tết 22/1, thứ 4 — SAI)
- **After**: "テトは1月22日、日曜日です。23日に有給取りたいです" (Tết 22/1, chủ nhật. Em muốn xin nghỉ phép ngày 23 — ĐÚNG)
- **Reason**: 22/1/2023 thực tế là CHỦ NHẬT.

### CRIT-4: Forklift 受講料 ¥35.000 → ¥40.000 + center change
- **File**: t04_ForkliftTamakake_HoiThoai.md (line 3 mục tiêu)
- **Before**: "¥35.000 + 中央労働災害防止協会 Aichi"
- **After**: "¥40.000 + 愛知労働基準協会"
- **Reason**: Giá thị trường Aichi 2022-2024 là ¥38-45k. 中央労働災害防止協会 không có chi nhánh Aichi.

### CRIT-5: Hainrich's law 1:29:1 → 1:29:300
- **File**: t05_HiyariHatto_HoiThoai.md (Scene 3 line 48 dialogue + line 121 nhật ký + line 146 bí quyết)
- **Before**: "1 ヒヤリハット : 29 軽事故 : 1 重大事故" (1:29:1)
- **After**: "1 重大事故 : 29 軽事故 : 300 ヒヤリハット" (1:29:300)
- **Reason**: Định luật Heinrich gốc là 1:29:300, không phải 1:29:1.

### CRIT-6: JAVADA 3級 学科 50問 → 30問/60分
- **File**: t11_KikaiKakou3kyu_HoiThoai.md (line 3 mục tiêu + line 72 Scene 5 dialogue)
- **Before**: "学科50問, 50分"
- **After**: "学科 30問, 60分"
- **Reason**: 機械加工技能士 3級 学科 thực tế là 30 câu / 60 phút (JAVADA).

### CRIT-7: JAVADA 3級 実技 NCフライス 1h20 → 2時間
- **File**: t11_KikaiKakou3kyu_HoiThoai.md (line 28 Scene 2 + line 87 Scene 6)
- **Before**: "実技 1時間20分"
- **After**: "実技 2時間"
- **Reason**: NCフライス 3級 実技 thực tế 2 tiếng theo JAVADA.

### CRIT-8: T9 nhật ký "8 tháng" → "9 tháng"
- **File**: t09_OshogatsuTet_HoiThoai.md (line 130)
- **Before**: "Năm 1 trôi nhanh. 8 tháng. Còn 4 tháng."
- **After**: "Năm 1 trôi nhanh. 9 tháng rồi. Còn 4 tháng."
- **Reason**: T9 = tháng 1/2023 = tháng 9 sau arrival 5/2022 (không phải 8 tháng).

## MAJOR fixes deferred (acceptable to ship)

- MAJOR Sakurai 2級 受験資格 timeline → DEFER (justification "高専インターン経験算入" có thể add nhưng không critical)
- MAJOR Tanaka register polish → handled by JP/VN reviewer inline
- MAJOR Suzuki izakaya register → handled by JP/VN reviewer inline
- MAJOR HH report N4 vocab → DEFER (can polish in v2)

## Files modified Stage 8

1. books/14_thai_year1/t01_rainichi/t01_Rainichi_HoiThoai.md (5 edits: visa + 部長×2 + bí quyết)
2. books/14_thai_year1/t04_forklift_tamakake/t04_ForkliftTamakake_HoiThoai.md (1 edit: price + center)
3. books/14_thai_year1/t05_hiyari_hatto/t05_HiyariHatto_HoiThoai.md (3 edits: Hainrich law)
4. books/14_thai_year1/t09_oshogatsu_tet/t09_OshogatsuTet_HoiThoai.md (2 edits: weekday + 9 tháng)
5. books/14_thai_year1/t10_cad_nyumon/t10_CADNyumon_HoiThoai.md (1 edit: visa bí quyết)
6. books/14_thai_year1/t11_kikai_kakou_3kyu/t11_KikaiKakou3kyu_HoiThoai.md (4 edits: JAVADA numbers)

## Sign-off

✅ Sách 14 Stage 8 COMPLETED — ready for production
✅ All 8 stages of pipeline LITE done (research → outline → draft → content → JP/VN → consistency → council → finalize)
