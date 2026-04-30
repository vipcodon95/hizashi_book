# Revision Log — Sách 18 "Thái Năm 5 (Closure)" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports + 3 JP/VN chunks
> Verdict: **STAGE 8 COMPLETED** — CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1 (domain): PP-GF40 → PA66-GF30 V-0 (EV battery casing material)
- **Files**: t01:61 + vocab line 101, t04:45
- Reality 2025-2026 Toyota EV: PP-GF40 KHÔNG đủ flame retardant UL94 V-0 + CTI cho high-voltage isolation. PA66-GF30 V-0 chuẩn industry.

### CRIT-2 (domain): Toyota 個人感謝状 30 năm history → "異例の措置"
- **File**: t06:37
- **Before**: "当社30年の歴史で、初めての個人感謝状だぞ"
- **After**: "異例の措置だ。会社宛感謝状に君の名前が明記されているなんて、近年では初めてだぞ"
- Reality: Toyota Group rất hiếm 個人感謝状 cho engineer Tier-2/中小. Frame là 異例 + 会社宛 với tên Thái — realistic.

### CRIT-3 (consistency): T10 Scene 1 title sai "Tanaka cho nghỉ"
- **File**: t10:7
- **Before**: "Scene 1 — Tanaka cho nghỉ"
- **After**: "Scene 1 — Kawakami duyệt nghỉ phép"
- Reason: Tanaka đã 嘱託 từ 9/2026, không có quyền duyệt phép. Kawakami là 工場長 chính thức.

### CRIT (linguist) auto-handled by JP/VN agents
- Empty `<rt></rt>` katakana/English đã fix (chunks 1+2+3)
- 1日 furigana → ついたち (chunk 3)
- 機械加工 2級 ruby block fix
- マイ様 → マイさん (T11)

### CRIT (consistency) Translation 係長 unify
- JP/VN chunks đã unify "係長" → "Trưởng nhóm" (CHUNK 1+2+3)

## MAJOR fixes deferred (acceptable v1.1)

- MAJ (consistency) Marco continuity gap sách 16-17: defer (cross-book backport expensive)
- MAJ (consistency) 係長 vs 主任 cascade từ sách 17: defer (council recommended keep 係長)
- MAJ (consistency) Linh-Anh N2 result missing: defer
- MAJ (consistency) T10 visa timing collision: defer (clarity acceptable)
- MAJ (linguist) Aichi-ben Sakurai recurring: defer (systematic 4 sách blind spot)
- MAJ (linguist) `5つ` wago counter: defer (cosmetic)
- MAJ (linguist) Marco Tagalog absent: defer
- MAJ (linguist) Yamamoto 俺 trong meeting: defer
- MAJ (linguist) みなみ精密金型様 / グエン様 over-formal: defer
- MAJ (domain) 6 tháng → 8 tháng EV deadline: defer (narrative compression OK)
- MAJ (domain) Thái 27t lead Toyota mega: defer
- MAJ (domain) Team 5 người under-resourced: defer
- MAJ (domain) Visa 家族滞在 income 32万 misleading: defer
- MAJ (domain) Praise letter format incomplete: defer
- MAJ (domain) Mẹ visa 短期 prep skipped: defer
- MAJ (domain) Missing trends (gigacasting, conformal cooling, AI-DOE): defer
- MAJ (domain) 永住 path + HSP option T8: defer (cần backport sách 17)
- MAJ (pedagogue) T6→T7 progression break: defer (inline JP/VN polished T7)
- MAJ (pedagogue) Vocab callback EDM/Mastercam từ sách 14-15: defer
- MAJ (pedagogue) Leader scaffolding yếu: defer

## Files modified Stage 8

1. books/18_thai_year5/t01_ev_project_kick/t01_EvProjectKick_HoiThoai.md (2 edits: PP-GF40 → PA66-GF30 V-0 dialogue + vocab)
2. books/18_thai_year5/t04_4m_analysis/t04_4mAnalysis_HoiThoai.md (1 edit: PA66-GF30 V-0)
3. books/18_thai_year5/t06_toyota_praise/t06_ToyotaPraise_HoiThoai.md (1 edit: 異例の措置 frame)
4. books/18_thai_year5/t10_kekkon_jp/t10_KekkonJp_HoiThoai.md (1 edit: Scene 1 title Kawakami)

Plus ~190 inline edits từ 3 JP/VN chunks.

## Sign-off

✅ Sách 18 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
✅ Series Thái 14-18 (60 tháng cycle) closure đạt
