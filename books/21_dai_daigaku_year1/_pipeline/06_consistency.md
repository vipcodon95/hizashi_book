# Consistency Report — Sách 21 "Đại ĐH Năm 1"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **FAIL** — phải fix 4 CRITICAL trước Stage 8
> Severity: 4 CRITICAL, 6 MAJOR, 5 MINOR

## Top 4 CRITICAL

### CRIT-1: "Phạm Thị Mai" trùng tên vợ Thái (sách 18) và vợ Đại (sách 21)
- Sách 18 T11: chú rể Nguyễn Văn Thái + cô dâu **Phạm Thị Mai**
- Sách 21 T10: chú rể Nguyễn Văn Đại + cô dâu **Phạm Thị Mai**
- Cả 2 cùng cưới ~1-2/2027
**Fix**: Đổi vợ Đại sang tên khác (vd "Phạm Thị Linh-Mai" / "Đặng Thị Mai" / "Nguyễn Thị Mai-Anh"). Apply 12 chương + research master.

### CRIT-2: Research master sách 21 ghi nhầm "Mai cưới Đại 1/2027 sách 18 of Thái-series"
Research master line 11 tự mâu thuẫn — sách 18 Mai cưới Thái, không cưới Đại.
**Fix**: Sửa line 11 thành "cưới Đại 14/1/2027 (tách biệt Mai-vợ-Thái sách 18)".

### CRIT-3: Note nội bộ chưa clean lộ trong T1:10
"(vợ, đã cưới 1/2027 ở sách 18 — **wait, no: cưới sẽ ở T10 sách này**)" — comment draft chưa xóa.
**Fix**: Xóa note, viết lại "(vợ Đại — cưới T10 sách này) vẫn ở HN".

### CRIT-4: Note nội bộ chưa clean lộ trong T6:3
"Linh-Anh em gái Đại **(em họ trên thực tế là callback sách 16 Hoa)**" — editor comment + cross-ref unverified.
**Fix**: Xóa note + verify với sách 16 + viết lại background T6 rõ ràng.

## Top 6 MAJOR

### MAJ-1: Tuổi Mai T10 sai
- Research master: "Mai sinh 2006 → 22t khi sang [5/2027]"
- T10:3 + T10:154: "Mai 22t" tại 1/2027 — Mai 2006 thì 1/2027 = 20-21t
**Fix**: Đồng bộ Mai sinh 2/2005 → 22t tại 1/2027.

### MAJ-2: Đại 22t tại T10 (1/2027) sai
T10:3 "Đại 22t". Đại sinh 2005 → 1/2027 = 21t.
**Fix**: T10:3 "Đại 22t" → "Đại 21t".

### MAJ-3: T10:76 "Em quen Mai từ năm lớp 11" conflict với Mai sinh 2006
Đại lớp 11 ~2021 = 16t. Mai cùng lớp → cùng tuổi → sinh 2005.
**Fix**: Decide Mai sinh 2005 hay 2006 + sync.

### MAJ-4: Linh-Anh background chưa setup sách 19/20, sudden xuất hiện T6
Sách 19/20 có "Linh" (TPHCM cohort) — KHÔNG phải Linh-Anh.
**Fix**: Add 2-3 dòng background T6 Scene 2 trước Linh-Anh xuất hiện.

### MAJ-5: T8 Yamato AtCoder rating bump quá chậm
T5 (6/2026) Yamato Green 1100 → T8 (10-11/2026) Green 1135 = chỉ +35 trong 5 tháng. Không match "AtCoder fan otaku" personality.
**Fix**: T8 Yamato nên Green 1180+ hoặc Cyan 1200+.

### MAJ-6: T6:119 timeline tháng cưới off
"Còn 4 tháng nữa cưới" tại 8/2026. Cưới 14/1/2027 = 5 tháng.
**Fix**: T6:119 "4 tháng" → "5 tháng".

## 5 MINOR

1. Style xưng hô "tớ" cho Yamato consistent OK
2. T1 Vocab AtCoder rating bracket variant (T1: 600-799, T5: 400-799) — standard 茶 = 400-799
3. T2:114 Học phí ¥535k/năm — clarify "(ngoài 入学金 ¥282k năm 1)"
4. T2:150 Vocab 笔记 typo TQ — note nội bộ nên xóa
5. T11:7 + T11:109 "プロメトリック梅田" + "same place EJU sách 20" — verify sách 20 EJU venue

## Cross-reference với sách 19+20 revision logs

- ✓ Sách 21 T1 ghi "情報科学科" + "基礎工学部" match backport sách 19/20
- ✓ Tony+Yumi tradition recurring
- ✓ Linh-chị Nagoya 永住 path
- N/A ホアマイ + hanabi + rent (không context sách 21)

## Structure check

12/12 chương có H1, Mục tiêu, ## Bối cảnh, ## Scene, ## Vocab tóm tắt, ## Bí quyết chương, closing quote — STRUCTURE PASS.

## Verdict

**FAIL** — phải fix 4 CRITICAL trước Stage 8 council. Recommended sequence:
1. Quyết định: Mai vợ Đại có đổi tên không? (CRIT-1)
2. Sửa research master line 11 (CRIT-2)
3. Clean note nội bộ T1:10 + T6:3 (CRIT-3, CRIT-4)
4. Sync tuổi Mai+Đại (MAJ-1, MAJ-2, MAJ-3)
5. Setup Linh-Anh background T6 (MAJ-4)
6. Optional MAJ-5/6 + 5 MINOR
