# Consistency Report — Sách 19 "Đại Năm 1: Du học sinh Osaka"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **PASS WITH CAVEATS**
> Severity: 3 CRITICAL, 4 MAJOR, 3 MINOR

## Top 3 CRITICAL

### CRIT-1: Rent ký túc clash 4万 vs 5万 vs 6万 trong T11
- T11:23 Đại nói rent ký túc = 4万 (vs homestay 8万)
- T11:50 Receptionist: 4万 + 1万 utility = 5万 tổng
- T11:155 Đại nhật ký: "5万 rent + 1万 utility = 6万" → SAI
**Fix**: Đổi line 155 thành "4万 rent + 1万 utility = 5万. Còn 70万 baito - 5 = 65万 tiêu."

### CRIT-2: Hoa miền Nam VN sai (T6 Scene 4 line 67, Scene 10 line 177)
Slide ghi "梅の花" (ume = hoa mơ Nhật) cho hoa mai miền Nam VN.
Reality: Mai vàng VN miền Nam là **Ochna integerrima (黄梅 / マイ)**, KHÔNG phải 梅 ume Nhật.
**Fix**: Đổi 梅の花 → "ホアマイ (Ochna integerrima、ベトナム南部の黄色い花、日本の梅とは違う)"

### CRIT-3: T11 plot extend 3→12 tháng homestay không có scene transition
- T1+T3 enforce "3 tháng homestay" (Yumi T3:167)
- T11 header: "Hết 12 tháng homestay (gia hạn 9 tháng từ initial 3 tháng)"
- T11 Scene 1 Yumi+Tony shock khi Đại nói chuyển — conflict
**Fix**: Thêm scene T6/T7/T8 nói Tony+Yumi đề nghị extend + Đại đồng ý, HOẶC soft-edit T3:167 từ "3 tháng" thành mềm hơn "ホームステイ家族同様に".

## Top 4 MAJOR

### MAJ-1: Outline state.json "Đài Loan" mismatch content "Myanmar"
T2 cohort actual có Aung (Myanmar), không có Đài Loan.
**Fix**: Update state.json line 9 thành "TQ/Hàn/Myanmar".

### MAJ-2: Linh-chị Nagoya cross-series cameo không giải thích "bố nhờ" (T8:92)
Đại nói "em bố nhờ chị" — Linh-chị từ series Hoa 11-13. Reader sách 19 sẽ confused.
**Fix**: Thêm 1 dòng giải thích "(Linh-chị là người quen của bố Đại làm việc Nagoya)".

### MAJ-3: Difficulty jump T8 N3 borderline → T9 N2-N1 vocab tự nhiên
Đại Mock 88→102→115, đỗ 110/180 (margin 15). T9 comprehend Yamada explain karesansui + 仏教哲学 + 1633年建立 N2-N1.
**Fix**: T9 thêm 1-2 lines internal Đại "(VN, internal) Từ này khó nhưng đoán nghĩa qua context".

### MAJ-4: Outline T9 "2 điểm" mismatch content "4 điểm"
Outline ghi Kinkaku + Fushimi, content có thêm Ryoan-ji + Kiyomizu.
**Fix**: Update outline T9 name.

## 3 MINOR

1. T7:84 "osa-sushi (mochi)" vague reference — clarify hoặc bỏ
2. T11:50 Receptionist "4万+1万=5万" wording ambiguous với line 23 chỉ rent 4万
3. T8 outline "(110/180)" có thể clearer

## Strengths

- Timeline 12 tháng (4/2024→4/2025) chính xác
- Character consistency: Đại, Tanaka (Tony+Yumi 65/60 không con), Suzuki tenchou (Kansai-ben), Yamada-sensei mentor central 8/12 chương
- Cohort B class (Yifan/Sumi/Aung/Linh/Tuấn) recurring đầy đủ
- Realistic numbers: Lương Lawson 1100/1375 yên (+25% sau 22h), 28h limit, học phí 535k yên/năm, EJU 6+11/2025
- Cultural depth: Tenjin Matsuri + Kyoto + O-shogatsu, 2-2-1 hatsumode, Ohashi 3 rules, Osechi 4 món
- Plan năm 2 (T12) setup sách 20 đầy đủ
- Structure 12/12 chương ổn 100% (H1+title, Mục tiêu, ## Bối cảnh, Scenes, Vocab, Bí quyết, closing italic)

## Verdict

**PASS WITH CAVEATS** — Sách 19 sẵn sàng Stage 7+8 sau fix 3 CRITICAL. MAJOR/MINOR có thể defer.
