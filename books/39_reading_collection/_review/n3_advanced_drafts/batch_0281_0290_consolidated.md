# Consolidated Fix List — batch_0281_0290 (cấp 6)

## Score
- Linguist: 2 critical (R_0283 越/超 title, R_0289 Hangul `묵묵히`), 15 major
- Pedagogue: 5 critical (Q2 không cause 9/10 + 4/4 Recall ở R_0285 + Q4 copy câu cuối R_0290 + flat 15), 27 major
- Domain: 2 critical (R_0287 missing 2024 reforms + ライドシェア, R_0290 missing 能登半島地震 2024), 18 major

## P1 — MUST FIX

### 1. R_0289 Hangul leak `묵묵히` (Linguist critical)
- Translation câu 5: `tấm lưng묵묵히 làm việc lặng lẽ` — Hangul lẫn vào tiếng Việt
- **Fix**: Đổi → `tấm lưng lặng lẽ làm việc` (xóa `묵묵히`)

### 2. R_0283 title `越えた` → `超えた` (Linguist critical)
- 限界 chuẩn đi với `超える` (vượt mức/giới hạn), không phải `越える` (qua không gian)
- **Fix**: Title Nhật → `限界を超えたアスリートたち`. Câu 6 `乗り越えた` giữ (đúng pattern)

### 3. R_0290 missing 能登半島地震 (Domain critical)
- Bài 災害 phục hồi 3年後 viết 2026 mà không nhắc 能登地震 1/1/2024
- **Fix**: Add 1 câu reference `2024年に能登半島地震が起きてからも、地域では「こころのケア」や「サロン活動」などの取り組みが続いている。` (sc +1)
- Vocab thêm `災害関連死` HOẶC `こころのケア`

### 4. R_0287 missing 2024 reforms + ライドシェア (Domain critical)
- Bài giao thông công cộng 2026 không touch luật pháp/MaaS/ライドシェア部分解禁 4/2024
- **Fix**: Add 1 câu `2024年からは「日本版ライドシェア」も一部地域で始まり、MaaSのような新しい移動サービスも広がっている。` (sc +1)
- Vocab thêm `ライドシェア` HOẶC `MaaS`

### 5. R_0285 — 4/4 Recall (Pedagogue critical)
- Q1-Q4 đều paraphrase trực tiếp + Q4 copy ý "信じて待つ" của Q3
- **Fix**: Q3 → Inference ("Tác giả ngụ ý gì khi nói 「信じて待つ」?") + Q4 → ý chính khác (vd "Bài học giáo dục đặc biệt khác giáo dục thường ở điểm nào?")

### 6. R_0290 Q4 copy câu cuối nguyên xi (Pedagogue critical)
- "人と人とのつながりの大切さを心に刻んだ" copy đúng câu 15
- **Fix**: Đáp án đúng paraphrase "Sự gắn kết với người khác là điểm tựa để phục hồi sau thảm họa"

### 7. Q2 không phải cause/why (Pedagogue critical) — 9/10 bài
- Spec yêu cầu Q2 = なぜ/どうして
- **Fix khuyến nghị 5 bài**: R_0281, R_0282, R_0284, R_0285, R_0288 — Q2 rewrite なぜ/どうして
  - R_0281 Q2 → "Tại sao quyền truy cập rộng lại nguy hiểm?"
  - R_0282 Q2 → "Tại sao âm nhạc trị liệu hiệu quả với 認知症?"
  - R_0284 Q2 → "Tại sao Aoki cảm thấy hoạt động tình nguyện ý nghĩa?"
  - R_0288 Q2 → "Tại sao bỏ bữa sáng ảnh hưởng não?"

### 8. Sentence count flat 15 toàn batch (Pedagogue critical)
- 10/10 sc=15 — vi phạm spec variance 14-18
- **Fix**: Add câu cho ≥4 bài (mục 3, 4, + 2 Domain khác) → variance lên 16-17

### 9. R_0288 add 紅麹サプリ問題 (Domain major)
- Bài 食事 2026 phải reference scandal 2024
- **Fix**: Add 1 câu `2024年の紅麹サプリ問題以降、機能性表示食品の安全性も注目されている。`
- Vocab thêm `機能性表示食品` HOẶC `紅麹問題`

### 10. R_0285 add 主体的・対話的で深い学び (Domain major)
- Giáo dục đặc biệt 2026 thiếu term chuẩn của 学習指導要領
- **Fix**: Add 1 câu reference `インクルーシブ教育` HOẶC `主体的・対話的で深い学び` HOẶC `こども家庭庁`

### 11. R_0281 add 個人情報保護法 改正 2022/2024 (Domain major)
- Bài bảo mật DN không nhắc cốt lõi pháp lý
- **Fix**: Add 1 câu `2022年の個人情報保護法改正で、漏えい時の報告義務化や罰則強化が行われた。`
- Vocab thêm `個人情報保護法` HOẶC `漏えい`

### 12. R_0289 add 後継者問題/働き方改革 (Domain major)
- 師匠-弟子 2024 thiếu crisis context
- **Fix**: Add 1 câu `近年は伝統工芸の後継者不足が深刻化し、デジタルアーカイブ化など新しい取り組みも始まっている。`

### 13. R_0284 add JICA/オンラインボランティア (Domain major)
- Bài tình nguyện thiếu org thật + post-COVID trend
- **Fix**: Add 1 câu `近年はJICA青年海外協力隊やオンラインボランティアなど、参加方法も多様化している。`

### 14. Length giveaway Q4 7 bài (Pedagogue major)
- Đáp án đúng dài hơn distractor 30-60%
- Bài: R_0281, R_0282, R_0283, R_0284, R_0285, R_0286, R_0287, R_0289
- **Fix**: Pad distractor / shorten đáp án đúng

### 15. Distractor 180° + extreme words (Pedagogue major) — 8 bài
- Pattern "だけ/全て/完全に/唯一/どんな…でも" lộ liễu
- Bài: R_0282 Q4 (どんな…でも), R_0285 Q1 (180°), R_0286 Q1 D (180°), R_0287 Q3 (唯一), R_0290 Q3 (完全に + 180°)
- **Fix**: Replace bằng partial-truth/realistic mismatch

### 16. R_0288 dịch câu 1 awkward (Linguist major)
- "điều này đã được làm sáng tỏ" tách rời chủ ngữ
- **Fix**: Đổi → "Các nghiên cứu gần đây đã làm sáng tỏ rằng thức ăn..."

### 17. R_0282 metadata mismatch (Linguist major)
- Tag 5 bị động khoa học nhưng text dùng 4-5 biến thể (示される/証明される/確認される/報告される)
- **Fix**: Cap số biến thể hoặc unify metadata

### 18. R_0284 idiom translation (Linguist major)
- "quan hệ hai mặt của cùng một tờ giấy" — 表と裏 = "hai mặt của đồng xu"
- **Fix**: Đổi → "hai mặt của một đồng xu"

### 19. R_0286 vocab `解明` translation (Linguist major)
- "giải mã" sai context — Việt "giải mã" = mật mã/code
- **Fix**: Đổi → "làm sáng tỏ" (apply across batch R_0282/R_0288)

### 20. Q3 vẫn Recall (Pedagogue major) — 8 bài
- Convert Q3 → Inference cho 4 bài (R_0282, R_0286, R_0288, R_0290)

## P2 — Should fix
21. R_0286 thêm context モダン: デジタルデトックス / マインドフルネス / 裏千家
22. R_0290 add 臨床心理士 / 自主防災組織 / 二次避難
23. R_0287 add 2024年問題 / 自転車ヘルメット 努力義務 / 地方ローカル線廃止
24. R_0282 thêm 介護施設 唱歌/童謡
25. Translation polish (R_0291 cumulative cảnh báo, R_0287 câu 6)

## Action plan
- 20 P1 critical/major
- 5 P2 nếu time
