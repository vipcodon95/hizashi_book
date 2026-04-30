# Consistency Report — Sách 20 "Đại Năm 2 (Closure trường tiếng Osaka)"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **FAIL** — phải fix 3 CRITICAL trước Stage 8
> Severity: 3 CRITICAL, 12 MAJOR, 7 MINOR

## Top 3 CRITICAL

### CRIT-1: EJU max score system loạn 3 cách (~14 instances)
EJU thật cho khối 文系: 日本語 450 + 総合 200 + 数学 200 = **800 max**.

Sách dùng 3 maxes khác nhau:
- T2:3 header "280/450", T2:17 "650満点", T2:32 "480/800"
- T8:25 "320/650", T8:39 "570/650", T8:54 "545/800"
- T9:43 "320/650でした"
- T10:1 header "360/450", T10:3 mục tiêu "580/650", T10:42-45 "290/400 + 145/200 + 185/200 = 620/800"
- T10:147-148 vocab có cả 580/650 LẪN 620/800
- T12:153 "EJU 620/800"

**Fix**: Unify ALL → /800 với final EJU 2 = 620/800. Mock 1 = 480/800. EJU 1 thật = ~480/800. Update vocab.

### CRIT-2: T11:48 ngày test ĐH Osaka clash
- T11:1 header "5/2/2026"
- T11:48 Scene 4 header **"Sáng 2/2/2026"** ← SAI
- Tất cả refs khác (T9:28, T9:131, T10:135, T10:86, T11:12, T11:25) đều dùng 5/2.
**Fix**: T11:48 → "Sáng 5/2/2026"

### CRIT-3: T2 mock vs T8 EJU 1 thật conflict
- T2:32 mock EJU 1 (5/2025): 480/800
- T8:25 EJU 1 thật (6/2025): 320/650 → 480 → 320 (Đại đi xuống 160 điểm 1 tháng?)
**Fix**: T8:25 EJU 1 score → ~480/800 consistent với mock.

## Top 12 MAJOR (5 thực, 7 acceptable)

### MAJ-1: Mẹ vs Mẹ+Bố T7
User spec: "Mẹ Đại qua thăm". Content: Mẹ + Bố cùng sang. Confirm với user.

### MAJ-2: T7 visa 短期滞在 procedure missing detail
**Fix**: Add 1 mini-scene T7 prep (Đại bảo lãnh 身元保証書).

### MAJ-3: Hùng nhân vật mới sách 20 (không trong cohort spec)
T3+ introduce Hùng (em Đại Lawson 6/2025). Acceptable bonus.

### MAJ-4: Suzuki promotion T2 → T3 first kohai Hùng (logical OK)

### MAJ-5: T8 header "Mock từ 480→520→560" body chỉ 480 + 545
**Fix**: Update header "Mock từ 480→545".

### MAJ-6: T10 N2 50+47+45=142 ✓ math OK

### MAJ-7-12: Lawson timing, Linh ký túc, Yamada giới thiệu, mock N2 sách 19→20, T7 Tony+Yumi visit — đều OK no clash

## 7 MINOR

1. T10:71 vs T8:103 Linh N3/N4 score 105 conflict (cả 2 đều 105 cùng kỳ thi 12/2025)
2. T8:91 Lawson + tour song song timing (5000/tuần vs T4 setup 10000/tour)
3. 大阪大学 vs 大阪大 mixed (acceptable)
4. Tony role-play giáo sư mock 面接 (Tony nhân viên office, không educator — OK role-play)
5. T10 vocab duplicate "W合格" (xóa 1 entry)
6. T11 Tomodachi app không follow up (acceptable)
7. T10 Yumi nói "5/2" trong khi T11:48 "2/2" — trace của CRIT-2

## Strengths

- Structure 12/12 chương consistent (H1, mục tiêu, scenes, vocab, closing quote)
- Cross-refs chain mạch lạc T9 research → T10 apply → T11 test → T12 KQ
- Difficulty progression N3→N2→EJU→ĐH match
- Style/tone consistent (Đại internal monologue, Yumi/Tony register, Yamada keigo)
- T7 Tony+Yumi maintain bond (sách 19 T11:171 thứ 6 mỗi tuần ăn tối) realistic

## Verdict

**FAIL** — phải fix 3 CRITICAL (EJU score loạn, T11 ngày clash, T8 EJU 1 vs mock T2) trước Stage 8.

Sau fix → PASS WITH CAVEATS.
