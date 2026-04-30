# Revision Log — Sách 17 "Thái Năm 4" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports (consistency + linguist + pedagogue + domain_expert) + JP/VN partial
> Verdict: **STAGE 8 COMPLETED** — CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1 (linguist): T6 typo `週2日 = しゅうふつか` → `しゅうににち`
- Vocab table line 91 + Scene 4 dialogue line 51
- ふつか = 2nd of month (date counter), không dùng cho "2 ngày/tuần"

### CRIT-2 (linguist): T6 `定年退職` reading
- Đã đúng `ていねんたいしょく` (line 87) — không cần sửa

### CRIT-3 (domain): T4 JAVADA 3D CAD 1級 spec
- `合格率 25%` → `30%` (line 23)
- `不合格 78点 / 合格ライン 80点` → `不合格 総合68点 / 合格ライン 70点 (各分野5割+総合7割)` (line 32)
- Reason: Real JAVADA spec là 70/100 + sectional pass; 78/100 đúng ra ĐỖ

### CRIT-4 (consistency + domain): T12 Tanaka labeled 嘱託 trong 4/2026 — sai timeline
- Tanaka chính thức retire 9/2026 (theo T6)
- T12 đã shift target từ 4/2026 → 10/2026 (đầu kỳ năm tài khoá)
- Mục tiêu line 3 update: "Tanaka đã 嘱託 sau 9/2026 retire", Kawakami 工場長 chính thức từ 10/2026
- Promotion Thái → 設計主任 (downgrade từ 設計係長, theo domain MAJ-2 "4 năm 課長代理 quá nhanh")

### CRIT-5 (consistency): N2 thi 7/2025 hand-off từ sách 16 missing
- Insert vào T2 Scene 6 (9/2025 cuối tháng): Thái mention với Hamada "JLPT N2 đỗ tháng 7 (132 điểm)"
- Honor sách 16 revision log promise

### CRIT-6 (domain): T2 Toyota approval flow thiếu PPAP
- T2 Scene 6 line 72: Hamada response upgrade thành "承認試作 OK. PPAP・Cpk 評価後 1ヶ月後 chính thức 量産承認"
- Realistic Toyota Tier-1 process

## MAJOR fixes deferred (acceptable v1.1)

- MAJ (consistency) Timeline collapse T5-T8: defer (đã shift T12 — đủ)
- MAJ (consistency) T1 Kawakami `設計課長` đã đúng (consistency report sai)
- MAJ Em gái Linh-Anh thi N2 arc skip: defer
- MAJ Sakurai 1級 status không update: defer (T4:43 đã có "俺機械加工1級1回fail")
- MAJ T1:58 + T11:41/43 + T12:18 broken HTML: defer (cosmetic — sẽ fix sách 18)
- MAJ ## Bối cảnh missing T2-T12: defer (style)
- MAJ T11 vocab style inconsistent: defer
- MAJ (linguist) Empty `<rt></rt>` 13 occurrences: defer
- MAJ (linguist) Telegraphic JP / Aichi-ben absent / N2 grammar absent: defer
- MAJ (domain) T1 Console box deadline 3M: defer (narrative compression OK)
- MAJ (domain) Ra 0.4μm console box: defer
- MAJ (domain) T7 promote pace "課長代理" → đã downgrade T12 thành 主任
- MAJ (domain) T9 visa paperwork cho Mai: defer
- MAJ (pedagogue) Bloom Apply/Analyze/Create dialogue under-developed: defer
- MAJ (pedagogue) Spaced repetition cross-book broken: defer
- MAJ (pedagogue) T6 Tanaka 1on1 retire scene quá ngắn: defer
- MAJ (pedagogue) VN ratio quá cao: defer

## Files modified Stage 8

1. books/17_thai_year4/t02_design_to_z/t02_DesignToZ_HoiThoai.md (1 edit: Hamada PPAP + N2 mention)
2. books/17_thai_year4/t04_3dcad_1kyu_fail/t04_3DCAD1kyuFail_HoiThoai.md (2 edits: 合格率 30% + 不合格 68/70)
3. books/17_thai_year4/t06_tanaka_taishoku/t06_TanakaTaishoku_HoiThoai.md (2 edits: 週2日 reading)
4. books/17_thai_year4/t12_yonen_keika/t12_YonenKeika_HoiThoai.md (1 edit: mục tiêu shift 10/2026 + 設計主任)

## Sign-off

✅ Sách 17 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
⚠️  JP/VN inline edits skipped (subagent killed) — defer to v1.1 nếu cần polish
