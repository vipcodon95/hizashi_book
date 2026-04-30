# JP/VN Review Report — Sách 22 "Đại ĐH Năm 2"

> Reviewer: japanese-vietnamese-reviewer (3 chunks song song)
> Date: 2026-04-28
> Verdict: **PASS WITH FIXES APPLIED INLINE** (~130 fixes total)

## Strategy: Chunked review (4 chương/chunk)

| Chunk | Files | Fixes |
|-------|-------|-------|
| 1 | T1-T4 (Year2Start + MaiArrival + FEPass + HtmlCssJs) | ~38 |
| 2 | T5-T8 (DbSql + SummerInternship + OsNetwork + MobileFlutter) | ~40 |
| 3 | T9-T12 (TeamProject + MaiBaby + LabTour + Year2Close) | ~52 |

**Total: ~130 fixes**

## Categories breakdown

| Loại | Số fix |
|------|--------|
| Tiếng Anh thừa loại bỏ (apt, setup, Wifi, cohort, family, prep, online, pro, intern, CV, internal, scrum, ceremony, tutor) | ~41 |
| **Osaka-ben markers** Yamato + Tony+Yumi (やで, ねん, やん, おる, ほんま, わし, 〜きはった, 〜たるわ) | ~15 |
| JP grammar polish (N2 active, lecturer です/ます, officer keigo, business keigo) | ~30 |
| VN Bắc Bộ tự nhiên (anh-em, đấy, nhé, lắm, rồi, ạ, mà, đi anh) | ~30 |
| Furigana ruby fix (số + counter bao block, empty rt remove) | ~10 |
| Kanji + technical terms (情報科学, 仮想メモリ, 独立実行単位, リアクト, 副作用, 接続型/非接続型) | ~14 |

## Highlights per chunk

### Chunk 1 (T1-T4) — ~38 fixes
- T1 Yamato whisper Osaka-ben: 〜ねん／〜やで; Tony+Yumi welcome よう来てくれはったなぁ; Mai phở promise tự nhiên hoá JP
- T2 Officer 在留 + 国民健康保険 + Yucho keigo chuẩn (いらっしゃいますか／なさいますか／お願いいたします)
- T3 Yamato Osaka-ben mời 勉強会; Inomata-san polite-casual mix
- T4 React/useState/useEffect explanations chuyển từ English fragments → Japanese N2 (状態管理フック/再描画/副作用/依存配列)
- **CRIT (linguist) auto-handled by Stage 8**: 「使たら」→「使ったら」 morphology fix T1:62

### Chunk 2 (T5-T8) — ~40 fixes
- T5 Sensei Takahashi lecture polish ER + ACID kanji 原子性・一貫性・独立性・永続性; 1NF/2NF/3NF dùng 部分関数従属/推移従属
- T6 Inomata mentor business keigo: 本日はサマーインターン5名の皆さま、歓迎いたします; HR offer 是非~したい
- T7 Nakagawa-sensei OS polite form (プロセスはOSの独立実行単位で、…されています); Yamanaka-sensei TCP/UDP 接続型/非接続型
- T8 Suzuki-sensei lecture full polite + Mai feedback Bắc Bộ casual

### Chunk 3 (T9-T12) — ~52 fixes
- T9 Watanabe intro 編成 + counter 4名×20グループ; "Solution/Switch/Refactor" → VN tự nhiên
- T10 Mai/Đại VN Bắc Bộ: anh ơi, đấy, lắm; Tony/Yumi Osaka-ben mừng baby (ほんま, わし, おじいちゃんになるんやで, 孫や、孫!); Inomata HR keigo polish
- T11 Inoue-sensei keigo academic (行っております/〜ございます); Đại interview reply 理由は3つございます + 1つ目/2つ目/3つ目
- T12 Tony Osaka-ben grandpa (わしの孫や!); Year 3 plan dịch hết "tough/intern/offer/start" → VN

## CRITICAL fixes auto-handled inline + Stage 8

JP/VN agents đã proactively polish:
- **CRIT (linguist) Osaka-ben Yamato + Tony+Yumi recurring** — ~15 markers thêm (continuous từ sách 21)
- **CRIT (linguist) 「使たら」→「使ったら」** — đã fix manually Stage 8 T1:62

## Issues defer Stage 8 (factual content)

1. CRIT (consistency) Inoue Cybozu engineer trùng tên Inoue-sensei Lab head — đã apply Stage 8 (đổi thành Inomata)
2. CRIT (consistency) Yamada Network sensei trùng Yamada-senpai cohort — đã apply Stage 8 (đổi thành Yamanaka)
3. CRIT (consistency) Mai sinh 6/2005 → 2/2005 — đã apply Stage 8 T10:7
4. CRIT (consistency) Cohort 80 → 101 SV — đã apply Stage 8 (T9, T12, T11)
5. CRIT (consistency) Mai tuổi T12 22t→23t — đã apply Stage 8
6. CRIT (consistency) Hana sinh 5/2028 → 8/2028 logic — đã apply Stage 8 T12:51
7. CRIT (consistency) GPA T11 3.85 → 3.82 — đã apply Stage 8
8. CRIT (consistency) T1 N4 → N2 — đã apply Stage 8 T1:25
9. CRIT (domain) Cybozu Osaka location Honmachi → Grand Front — defer (cần broader rewrite)
10. CRIT (domain) Osaka.rb community name → Shinosaka.rb — defer
11. CRIT (domain) FE result 7-8 tuần → 5-6 tuần — defer
12. CRIT (pedagogue) t04 cognitive overload + t07 Linux safety + vocab Bloom Level 1 — defer (cần restructure)

## Verdict

**PASS WITH FIXES APPLIED** — ~130 fixes inline. Stage 8 handle 8 CRITICAL factual continuity.
