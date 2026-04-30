# Linguist Council Review — Sách 20 "Đại Năm 2 (Closure)"

> Reviewer: council-linguist
> Date: 2026-04-28
> Verdict: **CONDITIONAL PASS**
> Severity: 2 CRITICAL, 7 MAJOR, 6 MINOR

## Top 2 CRITICAL

### CRIT-1: Osaka-ben markers thiếu nghiêm trọng cho Tony/Yumi/Suzuki (recurring 4 sách Thái + sách 19)
Sách 19 đã establish Tony+Yumi+Suzuki Kansai-ben. Sách 20 chỉ tìm thấy **2 instances duy nhất** (T3:11 Suzuki + T1:90 Bahra).
Toàn bộ 200+ utterance còn lại của Tony+Yumi+Suzuki đều standard Tokyo-ben.
**Fix**: Sprinkle `〜やん / 〜やで / ほんま / めっちゃ / 〜へん / せやな / 〜ねん` trong 30-40% utterance Tony/Yumi/Suzuki (informal context).

### CRIT-2: Furigana empty `<rt></rt>` ở 9 vị trí trong 5 file
t03:11, t05:16-17, t05:39, t05:139, t07:60, t07:79, t08:54, t09:58 — không render ruby được.
**Fix**: Loại bỏ tag hoặc thêm katakana reading.

## Top 7 MAJOR

### MAJ-1: N2 grammar bị "list-dump" T1:58-63
5 grammar items chỉ liệt kê dịch ngắn — không có context-of-use phân biệt với near-synonyms (vd `~ものの` vs `~けれども` vs `~にもかかわらず`).

### MAJ-2: Active grammar deployment thưa
User spec đòi Đại "active dùng" 5 grammar N2/N1, nhưng từ T2-T12 hầu như KHÔNG xuất hiện trong dialogue Đại.
**Fix**: Re-thread cluster qua T8 mock + T11 essay + T9 mock 面接.

### MAJ-3: Restore particles + copula trong utterance Yamada/Examiner format-list
T5:15-18, T9:114, T11:25-28 reads như "slide bullet" syntax thay vì natural teacher register.

### MAJ-4: T4 code-switch JP/EN/VN bị flatten ở ending
T4:108-115 dịch lười (`(Enjoy?)`, `(Insist!)`, `(50%!)`).
**Fix**: Full sentence VN gloss để capture pragmatics "tip refusal ritual" (American assertive vs Japanese deference).

### MAJ-5: Sonkeigo/kenjougo Việt Nam thiếu hệ thống tương đương
T11:122 `権威のある先生が多くいらっしゃいます` dịch `"có nhiều giáo sư uy tín"` — mất hoàn toàn marker sonkeigo `いらっしゃる`.

### MAJ-6: Half-translations narration `*(15000!)*` `*(N2!)*` `*(Khó.)*`
Reduce-style không phải translation pedagogy.
**Fix**: Full Vietnamese clause để học viên audio-shadow.

### MAJ-7: T4 tour guide JP customer service register imbalanced
T4:97 `大人2名＋ガイド1名お願いします` thiếu `を`. Native: `大人2名とガイド1名分お願いします`.

## 6 MINOR

1. T11:120 `三菱商事就職3年目` thiếu particle → `〜に就職して3年目`
2. T9:163 `Behavioral Economics → ビヘイビアラル経済学` katakana sai → `行動経済学` hoặc `ビヘイビアル`
3. T1:66 `「合格するわけではない」` Đại dịch "Cố không đảm bảo đỗ" — bỏ mất nuance subject ("luyện tập")
4. T8:65 `バツ学業` mixed VN-JP token → `合格祈願のお守り`
5. T11:53 Receptionist `グエン様?` → `グエン様でいらっしゃいますか？`
6. T11:160 `権威 → "Uy thế"` nuance lệch → "uy tín học thuật"

## Strengths

- **Sociolinguistic richness của 4-quốc dorm + 5-quốc lớp**: cohort cross-talk (Bahra Mongol, John Mỹ, Rim VN sempai, Đại) — academic-level diverse
- **志望理由書 T9 6-section template + 面接 register T11**: chính xác formal academic Japanese institutional discourse
- **VN dialect Bắc Bộ thuần T7 mẹ+bố**: lexical naturalness + sentence-final particles (`đấy / cơ à / ạ / nhé`) đáng khen
- **N2 grammar inventory T1:58-63** chính xác JLPT N2 cluster
- **JLPT N2 score breakdown T10:13-17** chuẩn (sectional 19/60 + total 90/180)
- **T7 Tony** `「私たち息子がいないんです。ダイ君が来てくれて本当に幸せです」` natural conversational L1 register
- **T1:90 Bahra** `N2勉強会始めへん?` chuẩn Kansai negative marker

## Verdict

**CONDITIONAL PASS** — Phải fix 2 CRITICAL (Osaka-ben thiếu + furigana empty `<rt></rt>` 9 vị trí) trước ship. 7 MAJOR address Stage 8 finalize. 6 MINOR có thể defer.
