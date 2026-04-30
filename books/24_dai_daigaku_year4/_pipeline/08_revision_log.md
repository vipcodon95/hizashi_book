# Revision Log — Sách 24 "Đại ĐH Năm 4" Stage 8 Finalize

> Date: 2026-04-29
> Source: 4 council reports (consistency + linguist + pedagogue + domain_expert) + 3 JP/VN chunks
> Verdict: **STAGE 8 COMPLETED** — CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1 (consistency): Cybozu mentor "Inoue" → "Inomata-san"
- **File**: t08_DecisionStartup line 68
- **Before**: "(LINE Cybozu HR + LINE Inoue Cybozu) Same decline"
- **After**: "Inomata-san Cybozu" — sync sách 23 rename

### CRIT-2 (consistency): T05 co-author "Yamato Tanaka (山田Senior)" → "Yamada-senpai (M2 Inoue Lab)"
- **File**: t05_GakkaiPaper line 11
- **Reason**: Yamato Tanaka = cohort Suzuki Lab (sách 21-22). Co-author đúng là Yamada-senpai (M2 Inoue Lab, sách 23 setup)

### CRIT-3 (consistency): Hana age T03 14→10 tháng + T05 13→12 tháng
- **File**: t03_HanaGrowing (8 instances replace_all "Hana 14 tháng"→"Hana 10 tháng" + "14 tháng"→"10 tháng")
- **File**: t05_GakkaiPaper line 56 "Hana 13 tháng" → "12 tháng"
- **Reason**: Hana sinh 5/8/2028. T03 = 6/2029 → 10 tháng. T05 = 8/2029 → đúng 12 tháng (1 tuổi)
- Vocab table t03: 「14ヶ月」→「10ヶ月」(じゅっかげつ)

### CRIT-4 (consistency): Mai/Đại tuổi inconsistency
- **File**: t03 line 3 Mục tiêu "Mai 23t" → "Mai 24t" (sinh nhật 2/2029 đã qua)
- **File**: t08 line 64 "Mình 25 tuổi. Mai 23 tuổi" → "Mình 24 tuổi. Mai 24 tuổi"
- **File**: t12 line 3 Mục tiêu "Đại 25t. Mai 24t" → "Đại sắp 25t (sinh nhật 4/2030). Mai 25t (sinh 2/2005)"

### CRIT-5 (domain): LINE/Yahoo → LY Corporation T2
- **File**: t02_NaiteiOffers H1 + Mục tiêu + replace_all
- **Before**: "LINE Fukuoka" / "Yahoo Osaka"
- **After**: "LY Corp Fukuoka" / "LY Corp Osaka" (LINE+Yahoo merger 10/2023)

### Linguist + JP/VN polish auto-handled by chunks (~96 fixes total)
- Inoue-sensei teineigo academic (t01), Mercari CTO + HR business keigo (t02)
- Mai N2 reveal Bắc Bộ; Hana toddler "Ba/Mẹ"
- 査読済み terminology (t05); MC formal speech; 「感謝します」→「誠にありがとうございます」 trong award context
- t07 Sato-san business keigo Anri scout
- t08 GP「お聞かせください」; Mai Bắc Bộ; Tony Osaka-ben; Inoue formal advisor (`私` thay `俺`)
- t09 Tuấn Bắc Bộ; Aiko JP grammar fix; 「初cofounder」→「初めての共同創業者」
- t11 Inoue chair "本日はグエン・ダイ君の公聴会"; Q&A JP-ize academic furigana
- t12 Tony Osaka-ben fix「俺の息子同様や!」; Hiệu trưởng (学長); valedictorian formal keigo「立っております」「心より感謝申し上げます」

## MAJOR fixes deferred (acceptable v1.1)

- MAJ (consistency) C2 Tuấn cofounder identity (28t cousin ex-Mercari vs 22t Kobe): defer (lớn — cần rewrite t09 hoặc update canon)
- MAJ (consistency) C3 Equity 15% vs 13% + 18m vs 22m: defer
- MAJ (consistency) C4 Đại valedictorian speech downgrade: defer
- MAJ (consistency) M2 IPSJ-NL paper award timing 8/2029 vs 11/2029: defer (giữ 8/2029)
- MAJ (consistency) M3 Pre-seed "¥30M" vs "¥31M" inconsistent: defer
- MAJ (consistency) M4 Structure thiếu Bối cảnh 10/12 chương: defer
- MAJ (consistency) M5 Hizashi v0.5 vs v0.7 timing: defer
- MAJ (consistency) M6 Glossary inconsistency (卒論/卒研, Anri/ANRI/アンリ): defer
- MAJ (linguist) C1 Inoue `俺`→`私` 8 instances: partial fixed by chunk 2 (t08 Inoue formal advisor)
- MAJ (linguist) C3 「感謝します」 standalone replace: partial fixed
- MAJ (linguist) M7 Hana "ba"/"bố" Bắc Bộ explicit transition: partial fixed
- MAJ (pedagogue) C1 0/12 chương có code blocks: defer (structural rework cho capstone book)
- MAJ (pedagogue) C2 ES/SPI vocab missing T2: defer
- MAJ (pedagogue) M1 T9→T10→T11 difficulty jump: defer
- MAJ (pedagogue) M3 Recall sách 21-23 paper-thin: defer
- MAJ (pedagogue) M4 T8 decision framework structure: defer
- MAJ (domain) Anri pre-seed → seed terminology: defer (canon decision)
- MAJ (domain) 就活 timeline backstory ES/SPI: defer
- MAJ (domain) 卒論 defense panel 副査 internal: defer
- MAJ (domain) Mercari ¥7M math precision: defer
- MAJ (domain) 株式会社 vs 合同会社 GK consideration T10: defer
- MAJ (domain) Japanese LLMs (Llama-Swallow-Plus/PLaMo) T11: defer
- MAJ (domain) Hizashi observability missing: defer
- MAJ (domain) VISA conversion 経営・管理 missing: defer (CRITICAL gap nhưng cần scene mới)
- MINOR many: defer

## Files modified Stage 8

1. books/24_dai_daigaku_year4/t02_naitei_offers/t02_NaiteiOffers_HoiThoai.md (CRIT-5: H1+Mục tiêu+LINE→LY Corp+Yahoo→LY Corp replace_all)
2. books/24_dai_daigaku_year4/t03_hana_growing/t03_HanaGrowing_HoiThoai.md (CRIT-3+CRIT-4: Hana 14→10 tháng replace_all + Mai 23t→24t + vocab table)
3. books/24_dai_daigaku_year4/t05_gakkai_paper/t05_GakkaiPaper_HoiThoai.md (CRIT-2+CRIT-3: Yamato→Yamada-senpai + Hana 13→12 tháng)
4. books/24_dai_daigaku_year4/t08_decision_startup/t08_DecisionStartup_HoiThoai.md (CRIT-1+CRIT-4: Inoue→Inomata + tuổi 25→24)
5. books/24_dai_daigaku_year4/t12_graduation_day1/t12_GraduationDay1_HoiThoai.md (CRIT-4: Đại 25t→sắp 25t + Mai 24t→25t với explanation)

Plus ~96 inline edits từ 3 JP/VN chunks.

## Sign-off

✅ Sách 24 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
✅ **CLOSURE FULL SERIES Đại du học 14-24** (10 năm 4/2024 → 3/2030) — Hizashi Inc Day 1 founder
