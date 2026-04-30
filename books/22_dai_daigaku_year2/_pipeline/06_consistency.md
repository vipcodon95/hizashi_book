# Consistency Report — Sách 22 "Đại ĐH Năm 2: Web/Mobile + Mai sang + Lab tour"

> Reviewer: consistency-reviewer agent
> Date: 2026-04-28
> Files reviewed: 12 chương t01→t12
> Cross-references: sách 21 `08_revision_log.md` + `01_research_master.md`

## CRITICAL findings (MUST fix Stage 8)

1. **CRIT-1**: T10:7 Mai sinh "6/2005" → "2/2005" (sync sách 21)
2. **CRIT-2**: T9 + T12 cohort size 80 → 101 (5+ inline edits, sync sách 21 fix CRIT-6)
3. **CRIT-3**: T12:3 Mai tuổi "22t" → "23t" (4/2028 đã qua sinh nhật 2/2005)
4. **CRIT-4**: T12:51 "5/2028 Hana sinh giữa Cybozu intern offer 6/" — logic sai (dự sinh 8/2028); fix → "8/2028 Hana sinh giữa Cybozu intern (6-9)"
5. **CRIT-5**: T11:64 GPA "3.85" → "3.82" (sync với T12 final stats) + "top 7/80" → "top 7/101"
6. **CRIT-6**: Inoue Cybozu engineer (T3+T6+T10 ~15 occurrences) → đổi họ khác (đề xuất "Inomata-san") tránh confuse với Inoue-sensei Lab head T11
7. **CRIT-7**: Yamada Network sensei (T7 ~10 occurrences) → đổi họ khác (đề xuất "Yamanaka-sensei") tránh confuse với Yamada-senpai cohort
8. **CRIT-8**: T1:25 "xong N4 ở Yamato School" → "xong N2" (Mai đã N3 12/2026, đang prep N2)

## MAJOR findings

- **MAJ-1**: Linh-Anh tuổi sync giữa sách 21 T6 (22t hè 2026) vs research master line 27 (graduate 3/2027) — defer (sách 21 base issue)
- **MAJ-2**: T2:102 Linh-Anh "data analyst senior chỉ sau 1 năm" — phi thực tế Toyota Boshoku, bỏ "senior"
- **MAJ-3**: Cybozu Osaka office "Honmachi 8F" — domain expert verify thực tế là Grand Front Umeda
- **MAJ-4**: ¥150k stipend 2 tuần intern hơi cao end nhưng acceptable
- **MAJ-5**: Yamato AtCoder year-end claim cần cross-check khi viết sách 23
- **MAJ-6**: Hack U "top 7" claim T11 → cross-check sách 21 T7 final ranking

## MINOR findings

- T1:1 "Lab Web技術 I" → "Lecture" (đây là môn học, không phải lab)
- T3:7 FE result "7-8 tuần" → "5-6 tuần" (CBT format 2025+)
- T11:9 Inoue Lab pick "5-8 SV/year" → "4-6 SV/year" (Osaka U realistic)

## Glossary inconsistencies (ranked by severity)

| Term | Variants | Recommended | Severity |
|------|----------|-------------|----------|
| Inoue | Cybozu engineer (T3,T6,T10) + Lab head (T11) | Cybozu → "Inomata" | CRIT |
| Yamada | Network sensei (T7) + Senpai cohort (T1,T11,T12) | Network → "Yamanaka" | CRIT |
| Yamato | Cohort + Language School Mai | Acceptable (school context rõ) | OK |
| Cohort | "cohort" (8 files) + "nhóm bạn" (T1) | Mix acceptable | MINOR |

## Style + Structure

✅ Tất cả 12 chương đều có: H1 title chuẩn, blockquote Mục tiêu, Bối cảnh, Scenes numbered, Vocab tóm tắt, Bí quyết chương, closing italic quote.
✅ Tone friendly + technical document đồng nhất.
✅ Xưng hô anh/em Đại-Mai consistent.
✅ Code-switching JP-VN-EN tự nhiên.
✅ Tony+Yumi Osaka-ben markers tốt T1+T10+T12.

## Cross-references (no dead links)

✅ T11:26 → sách 21 Inoue Lab (consistent)
✅ T1:113 Yamada-senpai Master Inoue Lab (sync research master)
✅ T10:114 forward-ref sách 23 T3 Hana sinh (foreshadow OK)

## Verdict: **PASS WITH CAVEATS**

8 CRITICAL fixes (factual continuity sách 21) cần áp dụng Stage 8. Sau fix → production-ready.
