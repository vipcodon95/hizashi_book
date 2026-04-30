# JP/VN Review Report — Sách 23 "Đại ĐH Năm 3"

> Reviewer: japanese-vietnamese-reviewer (3 chunks song song)
> Date: 2026-04-29
> Verdict: **PASS WITH FIXES APPLIED INLINE** (~95 fixes total)

## Strategy: Chunked review (4 chương/chunk)

| Chunk | Files | Fixes |
|-------|-------|-------|
| 1 | T1-T4 (InoueLabJoin + PytorchBasic + HanaBirth + TransformerBert) | ~33 |
| 2 | T5-T8 (CybozuInternStart + ClaudeApi + InternFinish + SotsukenBrainstorm) | ~32 |
| 3 | T9-T12 (EurekaHizashi + ArchitectureDesign + BetaV01 + ShukatsuStart) | ~30 |

**Total: ~95 fixes**

## Highlights per chunk

### Chunk 1 (T1-T4) — ~33 fixes
- **Inoue-sensei keigo lecture** (t01 Scene 1-3): chuyển telegraphic JP → câu hoàn chỉnh です/ます + 当研究室/おこないます
- **助産師 keigo** (t03 Scene 1-2): "Bác sĩ" → 助産師; thêm 〜ですよ/〜しましょう
- **Tony+Yumi Osaka-ben grandparent** (t03): "俺おじいちゃんや" → "わし、おじいちゃんになったで〜"; Yumi: "ベビーベッドどこ買う?" → "ベビーベッドどこで買うん?"
- **Mai-Đại VN Bắc Bộ vợ-chồng sau sinh** (t03): thêm đấy/nhé/ạ/lắm/đi; "Hana ơi! Bố đây con!"
- **Empty rt + katakana=furigana bug** fix: ~12 instances (マイさん, ハナ, テーマ, システム, ステップ, ダイ, おじいちゃん, あった, あり)

### Chunk 2 (T5-T8) — ~32 fixes
- **t05 Cybozu Inomata mentor** business keigo (お願いします、ようこそ、家庭優先でお願いします); Đại request remote kenjougo (お願いできますでしょうか). Mai VN: "Anh là một người bố tuyệt vời"
- **t06 Claude API**: Senior eng peer register (バニラ派, 抽象化が過ぎる). EN→JP: demo→デモ, offer→内定, prompt eng dịch sạch
- **t07 InternFinish**: HR business keigo cao (お疲れさまでした、ご返答いただけますと幸いです). Inoue farewell warm (会えるといいね). Đại humble (検討させていただきます)
- **t08 SotsukenBrainstorm**: Inoue-sensei academic (~ましょう、提示します); Yamada-senpai casual respectful (~じゃん、コラボできるチャンス); Đại với senpai です-form

### Chunk 3 (T9-T12) — ~30 fixes
- **t09 EurekaHizashi**: Scene 6 Inoue + Đại + Yamada câu hoàn chỉnh keigo (グエンさん…決まりましたか / 正式に承認します); Scene 7 Yamato/Aiko/Đại/Tony Osaka-ben (わしも投資家みたいなことしたるわ / 気にせんでええ。家族同然やからな)
- **t10 ArchitectureDesign**: Yamada review câu rút gọn → "明確でいいね！ただ、ER図を追加した方がいいよ"
- **t11 BetaV01**: "test"→"kiểm thử/dùng thử", "feedback gold"→"phản hồi quý như vàng", "key value"→"giá trị cốt lõi". Hizashi v0.1 公開
- **t12 ShukatsuStart**: Yamato 就活戦略 keigo (4〜6社に応募 / カルチャーフィット / 内定獲得目標); Mai N2 reveal Bắc Bộ "Trời ơi! Em giỏi quá!"

## Issues defer Stage 8 (factual content)

1. **CRIT (consistency) C1 t03 author meta-commentary leak** lines 5-12 — apply Stage 8
2. **CRIT (consistency) C2 t03 title "5/2028" → "8/2028"** — apply Stage 8
3. **CRIT (consistency) C3 Cybozu "Inoue-san" → "Inomata-san"** — apply Stage 8
4. **CRIT (consistency) C4 Mai/Đại tuổi** (t03:15, t03:102, t12:86) — apply Stage 8
5. **CRIT (consistency) C5 t03 Mục tiêu update sync content** — apply Stage 8
6. **CRIT (consistency) C6 t01 Mai 5 tháng → 6 tháng thai** — apply Stage 8
7. **CRIT (linguist) C1 ~30+ telegraphic Japanese instances** — partial fix Stage 8
8. **CRIT (linguist) C3 sensei voice differentiation** — defer
9. **CRIT (pedagogue) C1 cognitive overload t04/t06** — defer
10. **CRIT (pedagogue) M2 母子手帳/出産育児一時金 t03 cultural learning missing** — defer
11. **CRIT (linguist M5 + pedagogue C1 t10) box-drawing chars** — apply Stage 8
12. **CRIT (domain) Yahoo Japan → LY Corporation T12** — apply Stage 8
13. **CRIT (domain) AtCoder Yellow 1850 → Blue 1850** — apply Stage 8
14. **CRIT (domain) Senri-chuo Maternity Clinic không tồn tại** — apply Stage 8

## Verdict

**PASS WITH FIXES APPLIED** — ~95 fixes inline. Stage 8 sẽ handle CRITICAL factual + structure cleanups.
