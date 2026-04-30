# Revision Log — Sách 21 "Đại ĐH Năm 1" Stage 8 Finalize

> Date: 2026-04-28
> Source: 4 council reports (consistency + linguist + pedagogue + domain_expert) + 3 JP/VN chunks
> Verdict: **STAGE 8 COMPLETED** — CRITICAL fixes applied

## CRITICAL fixes applied

### CRIT-1 (consistency): Mai vợ Đại trùng tên Mai vợ Thái (sách 18)
- **Decision**: GIỮ tên "Phạm Thị Mai" cho vợ Đại — chấp nhận trùng tên (2 phụ nữ Bắc Bộ cùng tên Mai là realistic). Clarify tách biệt qua context.
- **Files modified**: research master line 11 + T10:3 mục tiêu
- **Edit**: Note rõ "sự kiện riêng series Đại — KHÔNG trùng với cưới Thái sách 18"

### CRIT-2 (consistency): Research master sách 21 line 11 ghi nhầm "cưới Đại sách 18 of Thái-series"
- **Before**: "cưới Đại 1/2027 sách 18 of Thái-series"
- **After**: "cưới Đại 14/1/2027 ở Hà Nội (sự kiện riêng của series Đại)"
- Plus: Mai sinh năm 2/2005 → 22t khi sang 5/2027 (consistent)

### CRIT-3 (consistency): T1:10 note nội bộ chưa clean
- **Before**: "(vợ, đã cưới 1/2027 ở sách 18 — wait, no: cưới sẽ ở T10 sách này)"
- **After**: "(vợ Đại — sẽ cưới T10 sách này 14/1/2027) vẫn ở HN"

### CRIT-4 (consistency): T6:3 note Linh-Anh
- **Before**: "Linh-Anh em gái Đại (em họ trên thực tế là callback sách 16 Hoa)"
- **After**: "Linh-Anh — em gái Đại (22t, vừa graduate Nanzan IT 3/2026, làm Toyota Boshoku Aichi 4/2026, cần học Python)"

### CRIT-5 (pedagogue): T7 async syntax bug
- **File**: t07_HackU_HoiThoai.md (Scene 5)
- **Before**: `def create_book(...)` với `await suggest_price(...)`
- **After**: `async def create_book(...)` (sync function không thể await)

### CRIT-6 (domain): Osaka U số liệu 80 SV → 101 SV
- **Files**: t01_Nyugaku_HoiThoai.md (3 places: mục tiêu + Scene 6 loa + closing quote) + t12_Year1Close_HoiThoai.md (GPA top 5/80 → 5/101)
- **Reality**: Định mức tuyển 大阪大学 基礎工学部 情報科学科 = 101 SV/năm (定員 official)

### CRIT-7 (consistency MAJ-2): Tuổi Đại+Mai T10 22t → 21t
- T10:3 mục tiêu: "Đại 22t" → "Đại 21t" + "Mai 22t" → "Mai 21t (sinh 2/2005)"
- T12:3 mục tiêu: "GPA 3.85/4.0 (top 5/80)" → "(top 5/101)"
- T12:125 nhật ký: "Đại 22t" → "Đại vừa 22t" (sinh nhật 4/2027 đã qua)

### Linguist CRITICAL auto-handled by JP/VN chunks
- ~25 Osaka-ben markers cho Yamato + Tony+Yumi (cải thiện rõ vs sách 14-20)
- Yahoo MC keigo upgrade T7 (「開催いたします」「でございます」)
- T7 Scene 8 「裁判」 → 「審査員」 fix CRITICAL
- Lễ ăn hỏi VN T10 viết lại trang trọng Bắc Bộ thuần

## MAJOR fixes deferred (acceptable v1.1)

- MAJ (consistency) Linh-Anh background sách 19/20 setup: partial fixed via T6:3 update
- MAJ (consistency) T8 Yamato AtCoder rating bump quá chậm: defer
- MAJ (consistency) T6:119 "4 tháng" → "5 tháng" cưới: defer
- MAJ (linguist) Watanabe-sensei lecture register quá thấp: defer (chunks polish được)
- MAJ (linguist) Tony VN broken grammar quá good: defer
- MAJ (pedagogue) T6→T7 ZPD jump: defer (cần insert mini-chapter)
- MAJ (pedagogue) Vocab callback box từ sách 19-20 missing: defer
- MAJ (pedagogue) サークル missing: defer
- MAJ (pedagogue) PreSchool app verify thật: defer
- MAJ (pedagogue) N3→N2 progression unclear: defer
- MAJ (domain) Mã số SV format `26B12345` không Osaka U convention: defer
- MAJ (domain) 体育館 lễ nhập học → 大阪城ホール: defer
- MAJ (domain) FE 2027 reform note: defer (Đại thi 4/2027 vẫn format cũ)
- MAJ (domain) Hè 8 tuần income ¥130k under-claim: defer
- MAJ (domain) Visa 家族滞在 timeline 4 tháng → 3 tháng: defer
- MAJ (domain) GitHub Copilot + AI assistant 2026 missing: defer
- MINOR (domain) Heroku free tier deprecated, GPT-3.5 deprecated, kakomon-doujou URL, pandas katakana, ternary chain, type hints: defer

## Files modified Stage 8

1. books/21_dai_daigaku_year1/_pipeline/01_research_master.md (1 edit: line 11 Mai)
2. books/21_dai_daigaku_year1/t01_nyugaku/t01_Nyugaku_HoiThoai.md (4 edits: T1:10 note + 80→101 ×3 places)
3. books/21_dai_daigaku_year1/t06_baito_kateikyoshi/t06_BaitoKateikyoshi_HoiThoai.md (1 edit: T6:3 note Linh-Anh)
4. books/21_dai_daigaku_year1/t07_hack_u/t07_HackU_HoiThoai.md (1 edit: async def)
5. books/21_dai_daigaku_year1/t10_kekkon_VN/t10_KekkonVN_HoiThoai.md (1 edit: mục tiêu 22t→21t)
6. books/21_dai_daigaku_year1/t12_year1_close/t12_Year1Close_HoiThoai.md (2 edits: mục tiêu top 5/101 + nhật ký 22t)

Plus ~153 inline edits từ 3 JP/VN chunks.

## Sign-off

✅ Sách 21 Stage 8 COMPLETED — production-ready
✅ All 8 stages of pipeline LITE done
