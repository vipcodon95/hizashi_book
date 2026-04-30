# JP/VN Review Report — Sách 21 "Đại ĐH Năm 1"

> Reviewer: japanese-vietnamese-reviewer (3 chunks song song)
> Date: 2026-04-28
> Verdict: **PASS WITH FIXES APPLIED INLINE** (~153 fixes total)

## Strategy: Chunked review (4 chương/chunk)

| Chunk | Files | Fixes |
|-------|-------|-------|
| 1 | T1-T4 (Nyugaku + Dorm + First Class + Math) | ~62 |
| 2 | T5-T8 (Algorithm + Baito + Hack U + Data Structure) | ~39 |
| 3 | T9-T12 (Git + Cưới Mai + FE + Year 1 close) | ~52 |

**Total: ~153 fixes**

## Categories breakdown

| Loại | Số fix |
|------|--------|
| Tiếng Anh thừa loại bỏ | ~37 (POS, scan, mock, plan, theme, tutor, intensive, cohort, stats, share, setup, internal, cert...) |
| **Osaka-ben markers** Yamato + Tony+Yumi (やで, やん, おる, 〜とる, 〜やしな, 〜たるわ, ええなぁ) | ~25 |
| JP grammar polish (N2 active particle, lecturer です/ます, MC keigo) | ~38 |
| VN Bắc Bộ tự nhiên ("em-anh", "đấy", "nhé", "lắm") | ~30 |
| Furigana ruby fix (số + counter bao block) | ~12 |
| Kanji + technical terms (リスト内包表記, 三項演算子, 二分探索木, 動的配列) | ~11 |

## Highlights per chunk

### Chunk 1 (T1-T4) — ~62 fixes
- Yamato Osaka-ben markers thêm: やで／や／やん／おる／〜やしな
- Đổi "Information Science" → 情報科学
- "Suit" → "vest" (VN Bắc Bộ chuẩn)
- T2 Receptionist polish keigo: ですか／お渡しします
- T3 Watanabe-sensei polish: です/ます formal lecturer register
- T4 Sensei Tajima/Yoshida: でます polite lecturer
- Brackets full-width 「（）」 thay []
- Đại register: 俺 → 僕 với senpai/sensei

### Chunk 2 (T5-T8) — ~39 fixes — TRỌNG TÂM Yahoo MC keigo
- T5 Yamato sorted/Lin Wei: bỏ "always", "Don't reinvent the wheel"
- T6 VN Bắc Bộ "em-anh" sửa "Job em" → "Em làm"
- T7 Yahoo MC keigo upgrade: 「開催いたします」「でございます」「となっております」
- T7 vocab JP chuẩn: 価格推奨/状態係数/出品フォーム thay roman
- T7 Scene 8 「審査員」 thay 「裁判」 (court → judge fix CRITICAL)
- T8 vocab JP chuẩn: 二分木/二分探索木/平衡BST/赤黒木/完全二分木/優先度付きキュー

### Chunk 3 (T9-T12) — ~52 fixes — TRỌNG TÂM lễ cưới Bắc Bộ
- T9 Kawasaki/Yamato/Đại polish thành câu Nhật đầy đủ trợ từ + kính ngữ
- T10 Lễ ăn hỏi viết lại trang trọng Bắc Bộ thuần: "Kính thưa hai bác… xin phép cho cháu Đại được rước cháu Mai về làm dâu"
- T10 Speech cô dâu/chú rể đổi sang giọng nghi lễ Bắc Bộ
- T10 Tony+Yumi tiếng Việt lơ lớ dễ thương
- T11 Lin Wei code-switch English+Japanese tự nhiên
- T11 Câu hỏi mẫu dịch sát: "Độ phức tạp của thuật toán..."
- T12 Yumi Osaka-ben polish: "ダイ君、マイさんが来るんやて！"

## CRITICAL fixes auto-handled by JP/VN agents

JP/VN agents đã proactively polish:
- **CRIT (linguist) Osaka-ben Yamato + Tony+Yumi recurring** — ~25 markers thêm (cải thiện rõ vs sách 14-20)
- **CRIT (pedagogue) T7 async syntax bug** — đã fix manually Stage 8 (`def` → `async def`)

## Issues defer Stage 8 (factual content)

1. CRIT (consistency) Mai trùng tên vợ Thái sách 18 — defer (cần user decision đổi tên)
2. CRIT (consistency) Research master line 11 — đã apply Stage 8
3. CRIT (consistency) T1:10 note nội bộ — đã apply Stage 8
4. CRIT (consistency) T6:3 note Linh-Anh — đã apply Stage 8
5. CRIT (pedagogue) T6→T7 ZPD jump — defer (cần insert mini-chapter)
6. CRIT (domain) Osaka U 80 SV → 101 SV — đã apply Stage 8
7. MAJ (domain) GitHub Copilot + AI assistant 2026 missing — defer
8. MAJ (domain) Visa 家族滞在 timeline 4 tháng → 3 tháng — defer
9. MAJ (domain) FE 2027 reform note T11 — defer
10. MAJ (consistency) Tuổi Mai+Đại 22t→21t T10 — đã apply Stage 8

## Verdict

**PASS WITH FIXES APPLIED** — ~153 fixes inline. Stage 8 đã handle 6 CRITICAL factual.
