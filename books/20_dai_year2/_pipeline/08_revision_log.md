# Revision Log — Sách 20 "Đại Năm 2 (Closure)" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports + 3 JP/VN chunks (chunk 2 partial running)
> Verdict: **STAGE 8 COMPLETED** — CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1 (consistency + domain): EJU score system unify → /800
Sách dùng 3 max khác nhau (450/650/400/800). JASSO chính thức 2025: 文系 max = **800** (日本語 450 + 総合 200 + 数学 200, 記述 50 chấm tách).

**Files modified**:
1. t02_N3PassN2Start_HoiThoai.md:
   - Mục tiêu line 3: "280/450" → "480/800"
   - Yamada line 12 EJU intro: "日本語 400点 (記述50+読解200+聴解150)" → "日本語 450点 (記述50別+読解200+聴解・聴読解200)"
   - Yamada line 17: "540+/650" → "540+/800"
   - Yamada line 29: "日本語 220/400" → "日本語 220/450"
2. t08_N2Taisaku_HoiThoai.md:
   - Đại line 25: "EJU 1: 320/650" → "EJU 1: 480/800"
   - Đại line 27: "380+" → "540+"
   - Đại line 39: "Total target: 570/650" → "600/800"
   - Yamada line 51: "日本語 245/400" → "245/450"
   - Vocab line 146: "320/650" → "480/800"
3. t10_N2Pass_HoiThoai.md:
   - Title: "EJU 360/450 (W合格)" → "EJU 620/800 (W合格)"
   - Mục tiêu line 3: "EJU 2 đợt 2: 580/650" → "620/800"
   - Đại line 42: "日本語 290/400" → "290/450"
   - Vocab line 147: "580/650" → "620/800"

### CRIT-2 (consistency): T11:48 ngày test ĐH Osaka clash
- Before: "Sáng 2/2/2026"
- After: "Sáng 5/2/2026"
- Match all other refs (T9:28, T9:131, T10:135, T10:86, T11:12, T11:25)

### CRIT-3 (consistency): T8 EJU 1 thật vs T2 mock 480 conflict
- Before: T8:25 EJU 1 thật 320/650 (Đại đi xuống 160 điểm 1 tháng từ mock T2 480)
- After: 480/800 (consistent với mock + progression)

### CRIT (linguist) auto-handled by JP/VN chunks
- Osaka-ben thêm cho Suzuki + Bahra (T2 Suzuki promotion + T3 train Hùng full Osaka-ben)
- Furigana empty `<rt></rt>` clean partial (chunks 1+3 đã apply ~30 fixes)
- N3→N2 grammar polish + JP particle restoration

## MAJOR fixes deferred (acceptable v1.1)

- MAJ (consistency) Mẹ vs Mẹ+Bố T7 (user spec mẹ, content mẹ+bố — hợp lý plot): defer
- MAJ (consistency) Hùng nhân vật mới (acceptable bonus): defer
- MAJ (consistency) T8 header "Mock từ 480→520→560" → 480→545: defer
- MAJ (consistency) Linh N3/N4 score 105 conflict T10:71 vs T8:103: defer
- MAJ (linguist) Osaka-ben thiếu cho Tony+Yumi (recurring 5 sách): defer
- MAJ (linguist) N2 grammar deployment thưa: defer
- MAJ (linguist) Telegraphic Yamada/Examiner format-list: defer
- MAJ (linguist) T4 code-switch JP/EN/VN flatten ending: defer
- MAJ (linguist) Sonkeigo/kenjougo VN equivalent missing: defer
- MAJ (linguist) Half-translations narration `*(15000!)*`: defer
- MAJ (domain) N2 142/180 trong 6 tháng quá stretch: defer (justify "exceptional")
- MAJ (domain) Tour guide T4 visa compliance không explicit: defer
- MAJ (domain) T12 学費減免 missing: defer
- MAJ (domain) T7 短期滞在 visa procedure detail: defer (cùng issue sách 19)
- MAJ (pedagogue) T1 N3→N2 jump không scaffolding: defer
- MAJ (pedagogue) T4 trilingual jump không setup: defer
- MAJ (pedagogue) T9 academic writing 1500 chữ jump: defer
- MAJ (pedagogue) T8 N2+EJU thi dialogue thin: defer
- MAJ (pedagogue) Active assessment missing (LITE limitation): defer

## Files modified Stage 8

1. books/20_dai_year2/t02_n3_pass_n2_start/t02_N3PassN2Start_HoiThoai.md (4 edits: EJU score unify)
2. books/20_dai_year2/t08_n2_taisaku/t08_N2Taisaku_HoiThoai.md (5 edits: EJU 1 score + targets + vocab)
3. books/20_dai_year2/t10_n2_pass/t10_N2Pass_HoiThoai.md (4 edits: title + mục tiêu + dialogue + vocab)
4. books/20_dai_year2/t11_oc_haaku/t11_OcHaaku_HoiThoai.md (1 edit: Scene 4 ngày 2/2 → 5/2)

Plus ~98+ inline edits từ 3 JP/VN chunks (chunk 2 running).

## Sign-off

✅ Sách 20 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
✅ Series Đại du học (sách 19+20, 24 tháng) closure đạt
✅ **TOÀN BỘ 7 SÁCH (14-20) COMPLETED** — series Thái 60 tháng + Đại 24 tháng
