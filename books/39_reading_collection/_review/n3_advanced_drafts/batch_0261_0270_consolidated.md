# Consolidated Fix List — batch_0261_0270 (cấp 6)

## Score
- Linguist: 1 critical (R_0267 kanji 識 leak), 26 major (pattern overuse 9/10 bài)
- Pedagogue: 4 critical cumulative (flat 15, meta-grammar lạm dụng 6/10, Q2 không cause 10/10, Inference <2/4 toàn batch), 3 major
- Domain: 5 critical (R_0269 紅麹問題 RED ALERT, R_0270 missing 2025年問題/介護保険/特定技能, R_0266 missing レジ袋有料化), 23 major

## P1 — MUST FIX

### 1. R_0269 — Add 紅麹問題 (Domain critical RED ALERT)
- Bài 機能性食品 publish 2026 không thể bỏ qua scandal 小林製薬 紅麹 (3/2024) + 制度改正 9/2024
- **Fix**: Add 1 câu `2024年には紅麹問題により、健康被害情報の提供が義務化されるなど、制度の見直しも進められている。` (sc +1)
- Vocab thêm `紅麹問題` HOẶC `健康被害`

### 2. R_0269 — Phân biệt 3 cấp 機能性表示 (Domain major → critical)
- Bài混 3 hệ thống: 特定保健用食品 (トクホ) / 栄養機能食品 / 機能性表示食品
- **Fix**: Mention `「特定保健用食品（トクホ）」と「機能性表示食品」など、種類によって基準が異なる`
- Vocab thêm `特定保健用食品` (トクホ)

### 3. R_0267 — Kanji 識 leak (Linguist critical)
- Guide câu 7: `kỹ thuật trùng tu và kiến th識 chuyên môn` — kanji `識` lẫn vào tiếng Việt
- **Fix**: Đổi → "kiến thức chuyên môn"

### 4. R_0270 — Add 2025年問題 + 特定技能/育成就労 (Domain critical)
- Bài 高齢化 2026 thiếu Dankai gen turn 75+ + visa system mới
- **Fix**: Add 1 câu `2025年には団塊の世代が全員75歳以上になり、医療や介護の需要がさらに増えると予想される。` (sc +1) + đổi câu chung `外国人労働者の受け入れ` → `特定技能制度などを通じた外国人労働者の受け入れ`
- Vocab thêm `2025年問題` HOẶC `特定技能`

### 5. R_0268 — Add 働き方改革/残業上限 (Domain critical)
- Bài burnout 2026 không touch luật pháp Nhật cốt lõi
- **Fix**: Add 1 câu `2024年からは医療や運送業にも残業時間の上限規制が完全に適用され、働き方改革が広がっている。` (sc +1)
- Vocab thêm `働き方改革` HOẶC `残業時間`

### 6. R_0266 — Add レジ袋有料化 + エシカル消費 (Domain critical)
- Bài sustainable fashion thiếu 2 từ khóa cốt lõi 2020-2026
- **Fix**: Add 1 câu `日本でも2020年のレジ袋有料化以降、エシカル消費への意識が高まっている。` (sc +1)
- Vocab thêm `エシカル消費`

### 7. Pattern overuse systemic (Linguist major) — 9/10 bài
- R_0265 を意識する×11 (worst overall) + によって変わる×5
- R_0264 ことによって×8 + を伸ばす×6 + に任せる×5
- R_0262 を取り入れる×8 + に合わせて×6
- R_0263 を通して×7 + に挑む×5
- R_0266 が注目される×7 + を見直す×7 + につながる×5
- R_0267 を後世に伝える×7
- R_0269 に含まれる×6 + が期待される×5
- R_0261 に寄り添う×6 + を支える×7
- R_0268 ても×5
- **Fix**: Cap ≤4 lần/pattern. Replace bằng synonym (を意識する→気をつける/心がける, ことによって→ため/ように, を取り入れる→導入する/採用する, に合わせて→に応じて)

### 8. Sentence count flat 15 toàn batch (Pedagogue critical)
- 10/10 bài đều sc=15 — vi phạm spec variance 14-18
- **Fix**: Phân bổ — thêm 1 câu cho 5 bài (do mục Domain 1+4+5+6 đã add) → ít nhất 4-5 bài tăng lên 16

### 9. Meta-grammar Q lạm dụng (Pedagogue critical) — 6/10 bài
- R_0264 (3/4), R_0267 (3/4), R_0262 (2/4), R_0265 (2/4), R_0266 (2/4)
- **Fix khuyến nghị 4 bài**: Convert sang content/inference Q
  - R_0264 Q1 → "Tác giả ngụ ý gì khi nói 子どもに任せる?"
  - R_0267 Q2 → "Tại sao 価値 của 歴史遺産 lớn hơn vật lý?"
  - R_0262 Q1 → "Theo bài, ngôi nhà tốt nhất là ngôi nhà như thế nào?"
  - R_0266 Q2 → "Tại sao サステナブルファッション được chú ý?"

### 10. Q2 không phải cause/why (Pedagogue critical) — 10/10 bài
- Spec yêu cầu 1 sự thật + 1 nguyên nhân + 1-2 suy luận
- **Fix**: Q2 mỗi bài rewrite thành なぜ/どうして (kết hợp với mục 9 cho 4 bài)

### 11. Inference Q < 2/4 (Pedagogue critical) — 10/10 bài
- Chỉ Q4 inference; Q1-Q3 đều Recall/Understand
- **Fix**: Convert Q3 → Inference (theme/cause-effect/ngụ ý của tác giả) cho 4 bài tiêu biểu

### 12. R_0270 vocab `過度な` reading sai (Linguist major)
- Reading ghi `かどな` — sai (đó là na-form)
- **Fix**: Đổi reading → `かど` (form từ điển)

### 13. R_0265 metadata mismatch (Linguist major)
- tags 5 mục, grammar_used chỉ 3 mục — không sync
- **Fix**: Bỏ `相手の立場` `コミュニケーション` khỏi tags HOẶC unify metadata

### 14. R_0263 vocab `糧` translation (Linguist major)
- "nguồn cảm hứng" — mất nuance "nuôi dưỡng/dưỡng chất tinh thần"
- **Fix**: Đổi → "hành trang/dưỡng chất tinh thần"

### 15. Length giveaway Q3/Q4 (Pedagogue major) — 7 bài
- R_0261, R_0263, R_0264, R_0265, R_0268, R_0269, R_0270
- **Fix**: Pad distractor lên ngang đáp án đúng (chênh ≤20%)

### 16. Distractor 180° contrast (Pedagogue major) — 5 bài
- R_0263 Q1, R_0265 Q3, R_0268 Q1, R_0270 Q1 (cả 4 distractor 180°), R_0269 Q1
- **Fix**: Replace bằng partial-truth (sai 1 chi tiết)

### 17. R_0261 — Add 介護保険/民生委員 (Domain major)
- Bài tình nguyện cho NCT thiếu khung pháp lý cốt lõi
- **Fix**: Add 1 câu `日本には介護保険制度や民生委員などの公的な仕組みもあり、ボランティアと連携している。`

### 18. R_0264 — Add 主体的・対話的で深い学び (Domain major)
- Giáo dục 2020+ phải có term chính
- **Fix**: Add 1 câu reference về `新学習指導要領` HOẶC `アクティブ・ラーニング`

### 19. R_0262 — Add 省エネ基準適合義務化 2025 (Domain major)
- Housing 2025-2026 reality
- **Fix**: Add 1 câu `2025年からは新築住宅の省エネ基準への適合が義務化されている。`

## P2 — Should fix
20. R_0263 add 部活動の地域移行 hoặc パリ五輪 2024
21. R_0265 add 1on1ミーティング / 心理的安全性
22. R_0266 add SHEIN/Temu + メルカリ
23. R_0267 add 首里城復元 / 佐渡金山 UNESCO 2024
24. R_0268 add 過労死防止法 + ストレスチェック
25. Translation polish (R_0263 糧, R_0261 やりがい, R_0265 誠実)
26. R_0269 add ヤクルト1000 / プロバイオティクス

## Action plan
- 19 P1 critical/major
- 7 P2 nếu time
