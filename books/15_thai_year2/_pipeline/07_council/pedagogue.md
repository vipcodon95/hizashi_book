# Pedagogue Council Review — Sách 15: Thái Năm 2 (MC Operator + N3 đỗ)

> Reviewer: council-pedagogue
> Date: 2026-04-28
> Verdict: **APPROVE WITH CAVEATS**
> Severity: 2 CRITICAL, 8 MAJOR, 6 MINOR

## Top 2 CRITICAL (BẮT BUỘC fix Stage 8)

### CRIT-1: T2→T3 progression jump quá lớn
- T2 Mastercam basic (mental model: G-code subtraction) → T3 EDM die-sinker (mental model: erosion via 放電現象 + 銅電極) là 2 thế giới khác.
- **Fix**: Thêm bridge 200-300 từ ở đầu T3 — so sánh "MC removes by cutting" vs "EDM removes by spark erosion".

### CRIT-2: T9→T10 jump không có consolidation
- T9 N3 đỗ → T10 nhảy thẳng "中級精密 ±0.01mm" + 光線式安全装置 + 工具寿命.
- **Fix**: T10 đầu chương cần "celebration window" + recap N3→N2 step-up.

## Top 8 MAJOR (SHOULD FIX)

### MAJ-1: KY宣言 / ヒヤリハット (sách 14) KHÔNG recur trong sách 15
T1-T5 nhiều scene MC mà 0 KY mention → realistic gap.
**Fix**: Restore safety thread — ít nhất 1 KY mention T1 + 1 ヒヤリハット recall T4.

### MAJ-2: 報連相 (horenso, sách 14 pillar) chỉ implicit
T5 defect là moment vàng để Thái 報告 Kawakami theo horenso framework — bỏ lỡ.

### MAJ-3: Mục tiêu chương KHÔNG tách rõ vocab/skill/grammar/plot
Reader không biết focus đâu. Add "Grammar focus" + "JLPT level" header mỗi chương.

### MAJ-4: T9 N3 test scene — `~ようとする` skip pedagogically PHÍ
Đây là moment vàng để teach pattern + show "skip-and-return" strategy. Hiện chỉ flash qua "Câu 35. Khó. Skip".

### MAJ-5: Vocab quiz / recall checkpoint missing
Vocab table = passive list, không testable. Reader không tự verify đã học chưa.
**Fix**: Add 2-3 self-quiz cuối chương + cross-book flag `[recall sách 14]` vs `[new]`.

### MAJ-6: T5 vocab density quá cao
TIG溶接 + 低入熱 + 冷却水路 + 溶接盛り + 再加工 + マツモト new char trong 7 scenes. ~15-18 từ mới nhưng vocab table chỉ list 10 → 5-8 từ "leak".

### MAJ-7: Scaffolding tech vocab thiếu etymology
切削条件選定 (t11:24) chỉ dịch "Chọn điều kiện cắt" — translate, not teach. Cần breakdown 切削+条件+選定.

### MAJ-8: KHÔNG có "Reader practice section"
LITE pipeline không bắt buộc nhưng 1-2 reflection question cuối chương sẽ chuyển từ "đọc passive" → "apply active" (Bloom Apply).

## 6 MINOR

1. Scene 7 "đêm reflect" mỗi chương cùng pattern (12/12) — predictable, monotone. Suggest variation.
2. VN translation đôi chỗ over-simplified ("(Vâng!)") → reader không thấy nuance はい vs ええ vs うん.
3. φ16エンドミル, NAK80 không có pronunciation guide
4. 客先 culture absent dù T12 mention "first khách Toyota Tier-1"
5. 有給 (Tanaka cho Thái nghỉ phép thi N3, t07:81) cần spotlight thêm 1 line giải thích cultural value
6. Self-assessment tools KHÔNG có

## Verdict

**APPROVE WITH CAVEATS** — Sách đạt foundational pedagogy goals (measurable outcomes N3+2級 đỗ + promotion, authentic context, plot drama strong). Top strengths: Plot-driven engagement world-class (Suzuki 転職 + Mitutoyo torch), realistic technical authenticity (ABS 240°C, NAK80, Taylor V·T^n=C), cultural learning embedded organically (転職 multi-perspective debate).

CRITICAL phải fix Stage 8: T2→T3 + T9→T10 bridges + KY/horenso safety recall.
