# Consistency Report — Sách 24 "Đại ĐH Năm 4"

> Reviewer: consistency-reviewer
> Date: 2026-04-29
> Verdict: **NOT PASS — cần round fix trước Council**

## Severity ranking

| Severity | Count |
|----------|-------|
| CRITICAL | 6 |
| MAJOR    | 7 |
| MINOR    | 6 |

## CRITICAL findings

### C1. Cybozu mentor sai tên — vẫn là "Inoue", phải là "Inomata-san"
- **File**: `t08_decision_startup:68` `(LINE Cybozu HR + LINE Inoue Cybozu) Same decline`
- Collision với "Inoue-sensei" (Inoue Lab head NLP/AI)
- Per chuẩn cross-ref: Cybozu mentor đã rename "Inomata-san"
- Grep sách 24 → 0 occurrence "Inomata"
- **Fix**: Replace "Inoue" Cybozu context → "Inomata-san"

### C2. Tuấn cofounder origin lệch hoàn toàn
- **File**: `t09_cofounder_tuan_aiko:3, 12, 14, 16`
- Sách 24: "Tuấn-em (cohort sách 19-20, vừa tốt nghiệp Kobe U Kinh tế, 22t, vợ sắp cưới Yuna)"
- **Canon**: "Tuấn cousin (28t, ex-Mercari) cofounder T9"
- Quyết định: GIỮ canon (28t cousin ex-Mercari) → rewrite scene 1-3 t09

### C3. Equity / runway numbers t08 ↔ t10 mâu thuẫn
- **t08:15** "Anri 15% equity, 18 month runway"
- **t10:13, 50** "Anri 13%, 22 months runway"
- **Fix**: Chốt canon = ¥31M, Anri 13%, 22 months. T08 viết "~15% conditional → final 13%"

### C4. Đại "valedictorian" speech claim
- **t12:54-66**: "Đại được chọn 外国人留学生代表" speech 2800 SV
- Canon không mention valedictorian
- **Fix**: Downgrade thành "lời cảm ơn riêng cohort" hoặc "外国人留学生代表 phát biểu ngắn 5 phút" (realistic)

### C5. Yamada vs Yamato bị conflate
- **t05:11** `Authors: Đại Nguyen, **Yamato Tanaka (山田Senior)**, Inoue-sensei`
- "Yamato Tanaka" = cohort Suzuki Lab. Co-author đúng là **Yamada-senpai** (M2 Inoue Lab)
- T01+t06+t11 gọi đúng "Yamada"; chỉ t05 sai
- **Fix**: T05:11 → "Yamada-senpai"

### C6. Hana age timeline lệch
- Canon: Hana sinh 5/8/2028 (xác nhận t12:141)
- **T03 (6/2029)**: "Hana 14 tháng" → SAI, đúng **10 tháng** (4 chỗ: title, mục tiêu, scene 5, closing quote)
- **T05 (8/2029)**: "Hana 13 tháng" → SAI, đúng **12 tháng**
- T01/T08/T12 OK
- **Fix**: T03 re-write title + 3 mentions → "10 tháng"; T05:56 → "12 tháng"

## MAJOR findings

### M1. Mai/Đại tuổi inconsistency
- Canon: Mai sinh 2/2005, Đại sinh 4/2005
- T03 (6/2029): "Mai 23t" → SAI, đúng 24t (đã sinh nhật 2/2029)
- T08 (12/2029): "Mai 23t" + "Anh 25t" → SAI, đúng 24t cả hai
- T11 (2/2030): "25t Đại done thesis" → SAI, Đại vẫn 24t (sinh nhật 4/2030 chưa tới)
- T12 (25/3/2030): "Đại 25t. Mai 24t" → SAI, Đại vẫn 24t
- **Fix**: Revise toàn bộ "25t" Đại → "24t" hoặc "sắp 25t". Mai T03/T08 23t → 24t

### M2. IPSJ-NL paper award timing
- Canon: 11/2029. Content T05: 25-27/8/2029 Kyoto
- IPSJ-NL annual late summer thực tế → giữ 8/2029 + update canon

### M3. Pre-seed "¥30M" vs "¥31M" inconsistent
- T07-T09 dùng "¥30M"; T10+T12 dùng "¥31M"
- **Fix**: T07-T08 thêm "Anri lead ¥25M (round size ¥30M)" → "¥31M total closed (Anri ¥25M + DG ¥5M + Tony ¥1M)"

### M4. Structure gap — thiếu "## Bối cảnh" 10/12 chương
Chỉ T01 + T12 có. **Fix**: Add 2-4 bullets cho 10 chương (defer optional)

### M5. Hizashi v0.5 vs v0.7 timing chưa khớp
- T01:29 roadmap "Q2 v0.5 / Q3 v0.7 / Q4 v0.9 / 2030 Q1 v1.0"
- T01 đã "v0.5 (50 user)"; T04 (7/2029) "v0.5 → v0.7" → mâu thuẫn
- **Fix**: Clarify T01 = bắt đầu build v0.5 (5 user), T04 = ra mắt v0.7 đạt 50 user

### M6. Glossary inconsistency
- 卒論 vs 卒研: Unify 卒論 (graduation thesis) sách 24
- Yamada vs 山田 vs Yamada-senpai: Unify "Yamada-senpai"
- Inoue-sensei vs 井上先生: Unify "Inoue-sensei"
- Anri vs ANRI vs アンリ: Unify "Anri" Latin trong VN narration

### M7. Rajesh path Cybozu Osaka (T12:78) vs canon Murakami Cloud Lab — minor flag

## MINOR findings

- m1: T01:8 Mai N2 đỗ — verify cohort sách 23
- m2: T09:65 Hana "Bááá/Bààà/Mááá" 16 tháng đa âm hơi sớm
- m3: T10:13 "Aiko 12.5%" vs T09:61 "Aiko 13%" rounding
- m4: T12:48 "78 cử nhân CNTT" vs canon "101 SV/khoa" chênh
- m5: T05:11 "Yamato Tanaka" co-author lặp t05:65 "Yamada+Inoue"
- m6: T03:53 "em gái Đại từ 16t sang Nhật" cross-check Linh-Anh

## Verdict

**KHÔNG PASS — cần round fix trước finalize**.

3 critical blockers: C1 (Inomata rename), C2 (Tuấn identity), C6 (Hana age T03) — factual canon violations cross-book series.

C3-C5 internal inconsistencies dễ fix (numbers + name swap + downgrade).

M1 (Đại/Mai tuổi), M5 (Hizashi version) scope rộng nhưng pattern đơn giản.

### Recommended fix order Stage 8

1. **Round 1 Critical**: C1, C2, C5, C6
2. **Round 2 Numbers**: C3 + M3
3. **Round 3 Major**: M1 (revise tuổi), M5 (version timeline)
4. **Round 4 Polish**: M6 glossary, M7, minors
