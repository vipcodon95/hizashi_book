# Consistency Report — Sách 14 "Thái Năm 1"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **PASS WITH CAVEATS**
> Severity: 2 CRITICAL, 3 MAJOR, 6 MINOR, 4 INFO

## CRITICAL (MUST FIX trước Stage 8)

### CRIT-01: Visa "現場研修期間6ヶ月" mismatch CAD start
**Files**: t01 line 7 + t02 Scene 6 line 98 + t10 line 7 + Bí quyết
- T1 ghi "**6ヶ月**"
- T2 Tanaka teaser "6**ヶ月後** CAD"
- T10 thực tế CAD bắt đầu **9-10 tháng** sau arrival
**Fix**: Sửa T1 + T2 thành "**6〜9ヶ月**" hoặc "**半年から1年**" — flexible.

### CRIT-02: Tết VN 2023 sai ngày trong tuần
**File**: t09 Scene 5 line 85
- T9: "Tetは1月22日。**水曜**"
- Reality: 22/1/2023 = **CHỦ NHẬT**
**Fix**: Đổi thành "**日曜だけど月曜から有給取りたい**" hoặc Tanaka cho lấy 23/1 (mùng 2 Tết) làm phép.

## MAJOR (SHOULD FIX)

### MAJ-01 (downgraded → MIN-08): Putra timeline OK
Audit lại OK: Putra đến 5/2021 → 5/2022 năm 2 → 5/2023 năm 3. Logic consistent. KHÔNG fix.

### MAJ-02: Sakurai 2級 timeline mâu thuẫn 受験資格
**Files**: t04 Scene 2 line 30 + t11 Scene 1 line 18
- T4 (6/2022): Sakurai "機械加工2年目"
- T11 (3/2023): thi 2級 (yêu cầu 2 năm exp)
- ~1.7-1.9 năm — gần đủ chưa tròn 2
**Fix**: Thêm 1 câu T4 hoặc T11 "高専時代インターンも経験年数に算入される" để justify.

### MAJ-03: T9 diary "8 tháng" sai → "9 tháng"
**File**: t09 Scene 8 line 130
- T9 (1/2023, tháng 9 from arrival 5/2022): diary viết "8 tháng"
- Đúng: 5,6,7,8,9,10,11,12,1 = **9 tháng**
**Fix**: Sửa "8 tháng" → "9 tháng".

## MINOR

1. **MIN-01**: Putra "俺" với cohort OK, không cần fix.
2. **MIN-02**: N4→N3 progression: Linh nói "1.5 năm", thực Thái plan 2 năm. Hơi lệch. Acceptable.
3. **MIN-03**: Mai bạn gái xưng "anh/em" consistent OK.
4. **MIN-04**: Folder structure 12/12 chương consistent 100% (header + bối cảnh + 8 scenes + vocab + bí quyết + closing).
5. **MIN-05**: "機械加工技能士" vs "機械加工" mix. Recommend full form lần đầu, viết tắt sau.
6. **MIN-06**: T9 "10 năm thường" 永住 = 2032 OK plot.
7. **MIN-07**: T7 N3 "12/2023" plan nhất quán T10/T12.
8. **MIN-08**: Putra 1年前 vs SSW1 2年目 OK consistent (xem MAJ-01).

## INFO

### Cast list final
- Thái (23, N4→N3 plan, ĐH BKHN cơ khí, Hà Nội)
- Tanaka 部長 (lead, recurring T1-T12)
- Suzuki sempai (OJT magaki 10 năm, ~30 tuổi)
- Kawakami 課長 (chief design, T8 first → T10 deep → T12)
- Sakurai (25, 高専 機械科, recurring T4-T12)
- Putra (Indo SSW1 5/2021→, cohort xuyên T1-T12)
- Linh-chị (30, IT engineer Nagoya 高度専門職)
- Mai (bạn gái VN, recurring T1/T3/T9/T11/T12)

### Timeline
- T1 = 5/5/2022, T2 = 6/5/2022, T3 = tuần 2-3/5
- T4 = 6/2022, T5 = 15/7/2022, T6 = 8/2022
- T7 = 11/2022, T8 = 28/12/2022, T9 = 1-22/1/2023
- T10 = 2/2023, T11 = 25/3 + KQ 4/2023, T12 = 30/4/2023

### Tone progression smooth
T1 cú sốc → T2-T3 struggle → T4-T6 confidence build → T7-T8 settle → T9-T10 maturity → T11-T12 closure.

### Glossary terms consistent (audit pass)
技人国, 金型, KY/ヒヤリハット, MC/EDM, CAD/SolidWorks, 機械加工技能士, JLPT — all spelling consistent xuyên 12 chương.

## Recommendations cho Stage 8

**Priority 1 (MUST)**: Fix CRIT-01 + CRIT-02 — 2 dòng nhỏ
**Priority 2 (SHOULD)**: Fix MAJ-02 + MAJ-03 — 2 dòng nhỏ
**Priority 3 (NICE)**: MIN-05 unify "機械加工技能士"

## Verdict

PASS với 2 critical fixes ngay. Continuity tổng thể strong. Cast/timeline/glossary/structure đều coherent xuyên 12 chương.
