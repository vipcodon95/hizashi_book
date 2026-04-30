# Revision Log — Sách 16 "Thái Năm 3" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports (linguist, consistency, pedagogue, domain_expert) + JP/VN review
> Verdict: **STAGE 8 COMPLETED** — all CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1 (consistency): Timeline inversion T11/T12 — chọn option C
- T11 dời 7-9/2025 → 3-4/2025; N2 đẩy sang sách 17 (kế hoạch thi 7/2025)
- **Files**: t11_Kanagata2kyuPass_HoiThoai.md (title, mục tiêu, Scene 1-4 + closing), t12_SannenKeika_HoiThoai.md (achievements + nhật ký)

### CRIT-2 (consistency): Tanaka 工場長 standardize toàn sách 16
- JP/VN agent đã apply 13 lần (T4/T5/T11/T12) trong inline pass

### CRIT-3 (consistency): T12 broken ruby tags + T11 missing opening ruby
- JP/VN agent đã fix `<ruby>achievements<rt></rt></ruby>` → `これまでの実績` (line 12)
- `<ruby>solo<rt></rt></ruby>` → `1人で担当` (line 16)
- T11 line 11 missing `<ruby>` đã fix

### CRIT-4 (consistency): 名古屋大学 vs 南山大学 contradiction
- JP/VN agent đã sửa T5 line 67 Tanaka → 南山大学

### CRIT-5 (consistency): T7 `3月受験` vs T11 `7月受験`
- Resolved bằng option C — giữ T7 "3月受験" (đã match T11 mới = 3-4/2025)

### CRIT-6 (linguist): Furigana counter split (4 chỗ)
- T11:45 `<ruby>2<rt>ふた</rt></ruby>つ`, T7:53 `<ruby>3<rt>みっ</rt></ruby>つ`, T7:52 `<ruby>2<rt>に</rt></ruby>つ` (sai counter), T9:68 `<ruby>1<rt>いち</rt></ruby><ruby>人<rt>り</rt></ruby>で`
- JP/VN agent đã apply 8 ruby block fixes

### CRIT-7 (domain): T6 — 3D CAD 2級 spec
- "60分, 50問" → "60分, 60問 CBT形式"
- Score "43/50" → "52/60 (70% 合格基準)"

### CRIT-8 (domain): T7+T11 — 金型製作 2級 実技 spec
- "2時間30分 + 5個 lắp ráp" → "4時間, 立フライス 手加工 R加工+溝加工"
- T7 line 23-24 + T11 Scene 2 line 16-22

### CRIT-9 (domain): T10 — N2 max scale 175 → 180
- replace_all toàn t10 file (3 lượt)

## MAJOR fixes deferred (acceptable to ship, can revise v1.1)

- MAJ-1 (consistency) Visa 技人国 thread T12 — defer (cần Tanaka mention 在留3年延長 — sẽ add sách 17)
- MAJ-2 (consistency) Sakurai 1級 status setup T1 — defer
- MAJ-3 (consistency) Assistant Designer title T1 — defer
- MAJ-4 (consistency) T4 nhật ký "Còn 5 tháng N2 thi" — phần lớn auto-fix qua N2 timeline shift
- MAJ-5 N2 score scale 175 → 180 fixed (CRIT-9)
- MAJ-6 ## Bối cảnh missing — defer (style)
- MAJ-7 Vocab recycling sách 14+15 — defer (lớn — cần redesign vocab tables)
- MAJ-8 Vocab heading rename — defer
- MAJ (linguist) Aichi-ben markers Sakurai — defer
- MAJ (linguist) N2 grammar declarative-only T10 — defer
- MAJ (domain) T8 Toyota車体 hierarchy clarification — defer
- MAJ (domain) T9 add 見積り step — defer
- MAJ (domain) T8 designer mới lead 新規 unrealistic — defer
- MAJ (pedagogue) T8 keigo scaffolding compressed — defer

## Files modified Stage 8 (after JP/VN inline pass)

1. books/16_thai_year3/t06_3dcad_2kyu/t06_3DCAD2kyu_HoiThoai.md (2 edits: CBT 60問 + 52/60)
2. books/16_thai_year3/t07_kanagata_2kyu_prep/t07_Kanagata2kyuPrep_HoiThoai.md (1 edit: 4 tiếng + 立フライス手加工)
3. books/16_thai_year3/t10_jlpt_n2_prep/t10_JLPTN2Prep_HoiThoai.md (replace_all 175 → 180)
4. books/16_thai_year3/t11_kanagata_2kyu_pass/t11_Kanagata2kyuPass_HoiThoai.md (7 edits: title, mục tiêu, Scene 1-4 + Sakurai + closing)
5. books/16_thai_year3/t12_sannen_keika/t12_SannenKeika_HoiThoai.md (2 edits: achievements + nhật ký)

Plus ~98 inline edits từ JP/VN reviewer.

## Sign-off

✅ Sách 16 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
✅ N2 thi đẩy sang sách 17 — narrative arc continuous
