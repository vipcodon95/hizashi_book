# Consistency Report — Sách 25 "Đại BrSE Year 1"

> Reviewer: consistency-reviewer
> Date: 2026-04-29
> Verdict: **PASS WITH FIXES**

## Severity Summary

| Severity | Count |
|----------|-------|
| CRITICAL | 3 |
| MAJOR | 4 |
| MINOR | 4 |

## CRITICAL findings

### C1. T04 mục tiêu vs body MRR mâu thuẫn
- **t04 line 3**: "Paid 30→200, MRR ¥196k" vs body T04:91-92, T04:101 ("30→78, MRR ¥76k")
- **Fix**: Sửa mục tiêu thành "30→78 sau v0.8 → trend tới 200 cuối T7"

### C2. T11 Hana age math sai
- "Hana 2.5 tuổi" sai: 5/8/2028 → 25/1/2031 = 2 năm 5 tháng 20 ngày = **2.4 tuổi**
- **Fix**: H1 + lines 3, 23, 61, 144, 146, 151 → "2.4 tuổi" hoặc "2 tuổi muộn 1 tháng"

### C3. T05:60 Frontend stack disambiguation
- Tech stack proposal NTT có "React + Next.js" — cần disambiguate vs Hizashi Flutter
- **Fix**: Add note "(NTT internal dashboard — enterprise web stack, khác Hizashi consumer Flutter)"

## MAJOR findings

### M1. 3 Linh confusion
- Linh-lễ tân T01:44 (28t) + Linh-chị BrSE T01:78 + Pham Hung Linh influencer T08/T09 + (memory: Linh em gái Đại Nagoya)
- **Fix**: Đổi lễ tân = "Hằng", Linh-chị BrSE = "Hà-chị"

### M2. Linh em gái Đại missing callback
- Sách 19-22 establish Linh + Sato Nagoya Toyota Boshoku, sách 25 không có scene/mention
- **Fix**: Add 1 LINE message từ Linh cuối T06 (Obon HN) hoặc T11

### M3. Bố mẹ HN underused T06 Obon arc
- Chỉ T06:24 LINE 1 dòng, không có scene cơm tối với 2 ông bà
- **Fix**: Thêm 2-3 line dialogue scene 3 hoặc 4

### M4. T11:3 quit notice wording confusing
- "đã báo Tanaka quit cuối 3/2031" gây hiểu lầm vs scene LINE 1/2 + quit effective 31/3
- **Fix**: "notice 1/2/2031, effective 31/3/2031"

## MINOR findings

- m1: Mai T11 không nhắc 26t (sinh 2/2005)
- m2: Aiko 23t T02 → 24t T11 verify
- m3: Number formatting ¥280k vs ¥280,000 mixed
- m4: Linh-chị tag pattern apply cho cả "Tuấn-em"

## Cross-references PASS

- Sách 24 closure callback ✓
- Pre-seed Anri ¥30M ✓
- Inomata-san rename ✓
- Yamada-senpai ✓
- Inoue-sensei distinct ✓
- Tony+Yumi Osaka-ben ✓
- Hana sinh 5/8/2028 ✓

## Tech stack consistency PASS

- v0.7 → v0.8 → v0.9 → v1.0 linear
- pgvector + FastAPI + Cloudflare R2 + Claude API + Stripe consistent
- BGE-M3 migration arc good narrative
- MRR progression realistic 50x growth Year 1

## BrSE terminology PASS

- 仕様書, 機能要件, 生産ライン, 稼働率, 不良率, トレーサビリティ chuẩn
- 正社員, 業務提携, アドバイザリー chuẩn HR
- 送別会, 緊急事態, 納期, 中間レビュー chuẩn business

## Verdict

PASS WITH FIXES. Sách 25 structure chuẩn LITE, character continuity tốt với sách 19-24, tech narrative arc realistic, business JP terminology accurate. 3 CRITICAL + 4 MAJOR fixes Stage 8.
