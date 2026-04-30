# Consistency Report — Sách 23 "Đại ĐH Năm 3"

> Reviewer: consistency-reviewer
> Date: 2026-04-29
> Files reviewed: 12 chapters (t01-t12)

## Severity Summary

| Severity | Count | Action |
|----------|-------|--------|
| CRITICAL | 6 | MUST fix Stage 8 |
| MAJOR | 7 | SHOULD fix |
| MINOR | 5 | NICE to fix |

## CRITICAL Findings

### C1. Author meta-commentary leak (BLOCKER)
- **File**: `t03_hana_birth/t03_HanaBirth_HoiThoai.md` lines 5-12
- **Issue**: Section "Bối cảnh" chứa author notes thô — `"em sửa: bé sinh đúng dự 5/8/2028"`, `"Cho phù hợp timeline"`, `"Plot adjust"`, `"→ **Adjust**: T3 = 7-8/2028"`, dual "Bối cảnh" + "Bối cảnh actual"
- **Fix**: Xoá lines 5-12, giữ duy nhất 1 "Bối cảnh" sạch

### C2. Tiêu đề + Mục tiêu chương 3 mâu thuẫn nội dung
- **File**: `t03_hana_birth` line 1 + line 3
- **Issue**: H1 viết "T3. **5/2028** — Bé Hana sinh"; Mục tiêu nói "5-12/5/2028 Mai sinh Hana sớm hơn dự (5/5)". Nhưng content Scene 1+ đều là **5/8/2028** (đúng dự sinh)
- **Fix**: H1 → "T3. 8/2028 — Bé Hana sinh"; Mục tiêu → "5-12/8/2028. Mai sinh đúng dự 5/8/2028..."

### C3. Cybozu mentor naming collision với Inoue-sensei
- **File**: `t05_cybozu_intern_start` lines 3, 11, 61, 62 (+ t06, t07 likely cùng pattern)
- **Issue**: Cybozu mentor "Inoue-san" / "井上さん" trùng với Inoue-sensei Lab head ĐH
- **Fix**: Replace "Inoue-san" / "井上さん" → "Inomata-san" / "猪股さん" sweep tất cả files

### C4. Mai/Đại tuổi inconsistent
- Per chuẩn: Mai sinh 2/2005, Đại sinh 4/2005
- **t03 line 15, 102**: "Mai 22t" tại 5/8/2028 → SAI, Mai 23t
- **t12 line 86**: "Em 24t. Mai 23t" tại 3/2029 → SAI, Mai đã 24t (sinh nhật 2/2029 qua), Đại còn 23 (sinh nhật 4/2029 chưa tới)
- **Fix**: Recompute mọi mention age theo birth dates chuẩn

### C5. Hana birth date title vs content
- Per chuẩn: Hana dự sinh 8/2028
- Content t03 đúng (5/8/2028) nhưng Mục tiêu line 3 nói "5/5 thay 8/2028 dự sinh"
- Liên kết bug C2

### C6. Mai 5 tháng thai @ 4/2028 inconsistent với Hana 8/2028
- **t01 line 3, 64, 80**: "Mai 5 tháng thai" tại 4/2028
- Nếu Hana sinh 5/8/2028 (40w), 4/2028 phải ~6 tháng
- **Decision**: Adjust Mai @ 4/2028 = "6 tháng" (giữ chuẩn cross-ref Hana 8/2028)
- **Fix**: T01 đổi "5 tháng" → "6 tháng"

## MAJOR Findings

### M1. Structure inconsistency — thiếu "Bối cảnh" 9/12 chương
Chỉ t01, t03, t09 có section. t02, t04-t08, t10-t12 thiếu.
**Fix**: Add "## Bối cảnh" 2-4 bullets cho 9 chương (defer optional)

### M2-M7
- M2: Tony+Yumi register OK t03, các chương khác không xuất hiện đủ
- M3: Rajesh underused (chỉ xuất hiện 1 lần t09)
- M4: Yamanaka-sensei callback missing (acceptable nếu không học môn Network năm 3)
- M5: GPA progression 3.82 → 3.88 reasonable
- M6: T12:84 "Linh-Anh có Sato (sắp cưới?)" — Sato dangling reference
- M7: t04 "Hana 1 tháng" tại 5-6/2028 timeline contradiction (Hana chưa sinh)

## MINOR

- m1: "Đại 23t" repetitive t01
- m2: Vocab table format đôi chỗ kana = ASCII (acceptable)
- m3: Closing quote format consistent
- m4: Tech stack mention OK
- m5: t09:97 Rajesh "AWS infra" nhưng t10 Render+R2 — không có dialogue Đại reject AWS

## Tech Stack Verification (PASS)

Stack consistent across t05, t06, t10, t11:
- Flutter (mobile), FastAPI (backend), PostgreSQL + pgvector, Cloudflare R2 (storage), Claude API, Render (deploy)
Match 100% chuẩn.

## Verdict: **PASS WITH FIXES** (FAIL nếu C1+C2+C3+C4+C6 không fix)

Sau 5 critical fixes → PASS production-ready.
