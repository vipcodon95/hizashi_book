# Linguist Council Review — Sách 17 "Thái Năm 4"

> Reviewer: council-linguist
> Date: 2026-04-28
> Verdict: **CONDITIONAL PASS**
> Severity: 4 CRITICAL, 5 MAJOR, 4 MINOR

## Top 4 CRITICAL

### CRIT-1: Furigana sai chính tả t06:87
`定年退職 | ていねいたいしょく` — SAI. Phải là **ていねんたいしょく** (定年 = ていねん, không ていねい = polite).

### CRIT-2: Furigana counter sai loại t06:91
`週2日 | しゅうふつか` — SAI. ふつか = 2nd day of month (date counter), không dùng cho "2 ngày/tuần".
**Fix**: **しゅうににち**

### CRIT-3: Empty `<rt></rt>` trên katakana/English (13 occurrences) — recurring từ 14-15-16
- t01:60 シミュ, t01:72 プロジェクト
- t02:46 マウント, t02:71 サンプル
- t03:39 ほぼ (hiragana không cần ruby)
- t04:43 `fail` (English)
- t05:11 「ヶ」, t05:16 サービス, t05:42 「Thái」, t05:65 ノギス
- t08:13 サンプル
- t12:13 `achievements`, t12:19 マイ
**Fix**: Bỏ ruby tag hoàn toàn cho katakana/English/tên riêng.

### CRIT-4: Timeline T11 vs T12 contradiction
T12 (4/2026) liệt kê "3 kohai mới" làm year-4 achievement nhưng T11 đặt kohai onboarding ở 8/2026.
**Fix**: T11 ≤ 4/2026 hoặc T12 ≥ 8/2026.

## Top 5 MAJOR

### MAJ-1: Telegraphic Japanese (book-wide)
Hầu hết câu cụt particles. `納期3ヶ月。` thay vì `納期は3ヶ月です。`. Acceptable cho 2 senior engineer talking shop, nhưng dialogue với customer (Hamada T8, T2) phải full sentence.

### MAJ-2: Sakurai casual KHÔNG có Aichi-ben markers (recurring 14-15-16)
Sakurai native Aichi/Anjo, casual với Thái sau 4 năm — phải có markers `だがや`, `やっとる`, `〜だら`, `でら`. Hiện 100% standard.

### MAJ-3: N2-N1 grammar không active dùng
Thái N2 từ 7/2025 → năm 4 phải active grammar N2. Sample sách hầu như N4-N5 grammar. Không thấy `〜ざるを得ない`, `〜にかかわらず`, `〜ものの`, `〜とはいえ`, `〜次第`.

### MAJ-4: Dịch thiếu nuance emotional
- t06:42 `本当にすばらしい` → `Thật tuyệt` (mất nuance lifetime achievement praise)
- t05:53 `タイ君のおかげで頑張れた` → `Nhờ Thái cố lên được` (telegraphic)

### MAJ-5: Putra Indonesian Vietnamese-English code-switch không có
T5 farewell — Putra 5 năm Nhật về. Real Indo SSW1 5 năm vẫn còn dấu vết L1.

## 4 MINOR

1. Counter readings inconsistency じっぷん vs じゅっぷん giữa các sách
2. Mai register Bắc Bộ — `Đẹp quá!` có thể `Đẹp ghê!` natural hơn
3. `誇らしい = Tự hào` — should be "Tự hào về việc này" (specific event)
4. T11 register quá casual với new kohai

## Verdict

**CONDITIONAL PASS**

Strengths: Keigo ritual T8 correct (お世話になります sequence), hierarchy progression coherent (junior→designer→課長代理→係長), technical register accurate (parting line, slide core, MAGMA, SKD61).

2 lỗi CRITICAL về furigana reading (定年退職, 週2日) là factual errors về hệ thống counter Nhật mà L2 learner sẽ memorize sai. Empty `<rt></rt>` là pattern recurring CRITICAL chưa được fix sau 3 sách.
