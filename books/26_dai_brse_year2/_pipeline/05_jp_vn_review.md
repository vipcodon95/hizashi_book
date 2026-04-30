# JP/VN Review Report — Sách 26 "Đại BrSE Year 2"

> Reviewer: japanese-vietnamese-reviewer (3 chunks song song)
> Date: 2026-04-29
> Verdict: **PASS WITH FIXES APPLIED INLINE** (~142 fixes total)

## Strategy: Chunked review (4 chương/chunk)

| Chunk | Files | Fixes |
|-------|-------|-------|
| 1 | T1-T4 (Year2Kickoff + QuitThanha + HizashiV2Dev + FirstHire) | ~58 |
| 2 | T5-T8 (HizashiV2Launch + MaiPregnancy + SeriesAPitch + DDNegotiation) | ~46 |
| 3 | T9-T12 (SeriesAClose + OfficeExpand + VisaKeieiKanri + Year2CloseGlobal) | ~38 |

**Total: ~142 fixes**

## Highlights per chunk

### Chunk 1 (T1-T4) — ~58 fixes
- T1 Bác sĩ Tanaka JP でございます polite formal; マイさん katakana; pregnancy Scene 4 thêm cảm xúc Bắc Bộ "anh có con trai rồi"
- T2 Takahashi-CEO 商談 keigo full teineigo+sonkeigo; Tuấn 務めております humble; Reveal Scene 5: Đại lặng đi mấy giây ôm Mai "Em giỏi quá. Cảm ơn em."
- T3 freelance writer → フリーランス ライター; Mai 16w "feel được"→"em cảm nhận được rồi"; Aiko Anri-style design
- T4 Tanaka Hiroshi (Tuấn cohort) casual peer JP いや/だよ/さ + business với Đại CEO; Sakura 24t fresh grad humble-eager (大ファン/精一杯頑張ります); "perineum massage"→"massage tầng sinh môn"

### Chunk 2 (T5-T8) — ~46 fixes
- T5 "multi-region deploy/Live" → "triển khai đa khu vực"; số "1,847" → "1.847" Bắc Bộ; "month-end/Total" → "Cuối tháng/Tổng"
- T6 "all hands/announcement/take 育休" → "họp toàn team/thông báo/nghỉ 育休"; Bác sĩ Tanaka full です/ます; Sato email warm tone partner; "raise" → 調達
- T7 Sasaki 52t formal full keigo; Honda 45t continuation; Mark Suzuki SV English natural code-switch ("definitely/our bridge value"); cap table % "41.6" → "41,6"; Bác sĩ huyết áp ご安心 reassuring; "Em sợ" → "Em lo lắm anh ạ"
- T8 vest navy ceremony 誠にありがとう; CodeClimate + Mighty Trust technical formal; Lawyer Suzuki keigo (fix "Bác sĩ ơi" → "Thưa luật sư"); "DD APPROVED/brutal" → "DD đã APPROVED/khốc liệt"

### Chunk 3 (T9-T12) — ~38 fixes
- T9 `dial in` → "vào Zoom"; Suzuki+Tanaka 〜いたします/〜でございます; Sato-san toast champagne 〜が始まりました; Tony Osaka-ben やで/ホンマに/わし; 千里中央病院 furigana; Bác sĩ phòng sinh いきんでください/初めての対面ですよ
- T10 5 hires self-intro JP polite (Hayashi/Park/Wang/Yui/Ken mỗi người 〜と申します + 前職 + よろしくお願いします); Aiko bế Đông おばちゃんよ; 3rd con VN Bắc Bộ
- T11 Suzuki-sensei lawyer visa convert keigo (該当いたします、〜でございましょうか、ファストトラック); Park-director Seoul KR-JP-EN tự nhiên; "APPROVED!" → "đã được duyệt"
- **T12 P0 fix**: Table header `Lời thoại }` typo `}` → `|`; Sato/Sasaki/Yamamoto board JP keigo; "build cuộc đời" → "dựng nên cuộc đời cùng nhau"; "parallel growth" → "song hành lớn lên"

## CRITICAL fixes auto-handled inline + Stage 8

JP/VN agents proactively polish:
- **CRIT (consistency) C2** T11 title artifact "wait," — partial fix qua chunk 3
- **CRIT (consistency) M4** T12:15 broken `}` → `|` — fixed
- **CRIT (linguist) C4-C6** Sasaki/Honda/Bác sĩ telegraph tone — partial fix qua chunks
- **CRIT (linguist) M4** VN Bắc Bộ false friends ("Christmas baby"/"phần fudging mochi"/"Hana fan") — partial fix
- **MAJ (linguist) M3** Sakura 大歓迎 misuse — fixed (humble-eager pattern)

## Issues defer Stage 8 (factual content)

1. CRIT (consistency) C1 Pregnancy timeline ~5 tuần — defer (cần broader timeline rewrite)
2. CRIT (consistency) C3 Tanaka collision 5 nhân vật — defer (rename Hiroshi→Hayashi systematic)
3. CRIT (consistency) C4 Sato collision (Anri partner + Sato Yui hire) — defer
4. CRIT (consistency) C5 Hire inconsistency Tanaka Hiroshi vs Hayashi — defer (linked C3)
5. CRIT (linguist) C1 Furigana 清華 katakana ruby — defer
6. CRIT (linguist) C2 高度専門職 grace period law fact — defer
7. CRIT (domain) C1 Visa logic ngược (高度専門職 vs 経営・管理 永住 timeline) — defer
8. CRIT (domain) C2 経営・管理 capital ¥30M reform 2025/10/16 — defer
9. CRIT (domain) C3 Cap table math sai — defer (cần CFO recompute)
10. CRIT (domain) C4 Tanaka ¥9M < ex-Mercari ¥10.5M — defer
11. MAJ (pedagogue) C1 Series A pitch deck framework underexplained — defer v1.1
12. MAJ (pedagogue) C2 Vocab table coverage Series A/cap table/DD — defer v1.1
13. MAJ (domain) M2-M3 KR market 50% + TOPIK partnership backwards — defer

## Verdict

**PASS WITH FIXES APPLIED** — ~142 fixes inline. Stage 8 sẽ handle CRITICAL factual + structure. Major domain factual errors (visa logic, cap table math) defer v1.1.
