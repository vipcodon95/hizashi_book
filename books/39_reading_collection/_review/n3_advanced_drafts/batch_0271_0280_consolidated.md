# Consolidated Fix List — batch_0271_0280 (cấp 6)

## Score
- Linguist: 1 critical (R_0274 vocab reading sai), 19 major
- Pedagogue: 5 critical cumulative (flat 15, R_0271 2/4 + R_0272 3/4 meta-grammar, Inference ≤1/4, R_0277 length+extreme Q4), 18 major
- Domain: 1 critical (R_0277 cancer mechanism factual error), 19 major

## P1 — MUST FIX

### 1. R_0274 vocab `怠さ` reading sai (Linguist + Domain critical)
- Reading ghi `なまけさ` — SAI. `怠さ` đọc là `だるさ` (uể oải, mệt mỏi cơ thể)
- Translation câu 3 "sự lười biếng" cũng sai semantic
- **Fix**: Đổi reading → `だるさ`. Đổi meaning → "uể oải, mệt mỏi rã rời". Translation câu 3 → "sự mệt mỏi và uể oải" thay vì "lười biếng"

### 2. R_0277 câu cancer "解明できた" (Domain critical factual)
- `研究者たちはがんの発症メカニズムをついに解明することができた` — SAI factual. Ung thư là 200+ bệnh, không có 1 mechanism duy nhất giải mã
- **Fix**: Đổi → `がんの一部の発症メカニズムを解明することができた` HOẶC `特定のがんの発症メカニズム`

### 3. R_0271 + R_0272 meta-grammar Q (Pedagogue critical)
- R_0271 2/4 (Q1, Q3 đều meta-grammar)
- R_0272 3/4 (Q1, Q2, Q3 đều meta-grammar/định nghĩa)
- **Fix**: Convert sang content/cause/inference Q
  - R_0271 Q1 → "Theo bài, đặc điểm của hybrid work là gì?"
  - R_0271 Q3 → "Tại sao 信頼 quan trọng trong hybrid work?"
  - R_0272 Q1 → "Tại sao online learning lan rộng?"
  - R_0272 Q3 → "Theo bài, người học online cần phẩm chất gì?"

### 4. Sentence count flat 15 toàn batch (Pedagogue critical)
- 10/10 bài đều sc=15 — vi phạm spec variance 14-18
- **Fix**: Domain mục 9-15 sẽ add câu cho ≥5 bài → variance lên 16-17

### 5. Inference Q ≤ 1/4 toàn batch (Pedagogue critical)
- Q4 main message chủ yếu copy câu kết
- **Fix**: Q3 hoặc Q4 mỗi bài convert thành Inference (theme/ngụ ý/cause-effect) cho 5 bài (R_0274, R_0275, R_0276, R_0278, R_0279)

### 6. R_0277 Q4 length + extreme word (Pedagogue critical)
- Distractor B "唯一" + length asymmetry
- **Fix**: Bỏ "唯一" + balance length

### 7. R_0272 lạm dụng `を活用する` 6 lần (Linguist major)
- Vượt ngưỡng cap ≤4
- **Fix**: Replace 2 lần bằng `を使う`/`を取り入れる`/`を導入する`

### 8. R_0271 lạm dụng `にかかわらず` 3 lần (Linguist major)
- Dày đặc bất thường
- **Fix**: Đổi câu 13 → `場所を問わず` HOẶC `どこで仕事をしようと`

### 9. R_0273 câu 13 sub-cat của 含まれる (Linguist major)
- `恩恵は…も含まれる` — chủ ngữ logic không khớp
- **Fix**: Đổi `は` → `には`: `恩恵には…も含まれる` HOẶC `恩恵は…も含む`

### 10. R_0276 inconsistency 越える/超える (Linguist major)
- Title `越える` nhưng text dùng `超える`
- **Fix**: Unify thành `越える` (cho rào cản) trong text

### 11. R_0277 — Add 国民皆保険/iPS細胞/オンライン診療 (Domain major)
- Bài医学 2026 thiếu Nhật-specific
- **Fix**: Add 1 câu `日本では国民皆保険制度のもと、iPS細胞を用いた再生医療やオンライン診療なども広がっている。` (sc +1)
- Vocab thêm `iPS細胞` HOẶC `国民皆保険`

### 12. R_0271 — Add 働き方改革 (Domain major)
- Bài hybrid work thiếu khung pháp lý
- **Fix**: Add 1 câu `2024年には残業時間の上限規制も全業種に適用され、働き方改革がさらに進んでいる。` (sc +1)
- Vocab thêm `働き方改革` HOẶC `フレックスタイム`

### 13. R_0272 — Add 生成AI/ChatGPT (Domain major)
- Bài online learning 2026 không có 生成AI = critical gap
- **Fix**: Add 1 câu `2022年に登場したChatGPTのような生成AIも、学習を支援する重要なツールとなりつつある。` (sc +1)
- Vocab thêm `生成AI` HOẶC `ChatGPT`

### 14. R_0279 — Add 男性育休 (Domain major)
- Bài work-life balance Nhật 2022+ phải có 産後パパ育休
- **Fix**: Add 1 câu `2022年には産後パパ育休の制度も整い、男性が育児に関わりやすくなっている。` (sc +1)
- Vocab thêm `産後パパ育休` HOẶC `男性育休`

### 15. R_0276 — Add 在留外国人/やさしい日本語 (Domain major)
- Bài 異文化 thiếu Nhật reality 2024 (340万 người)
- **Fix**: Add 1 câu `日本では在留外国人が3百万人を超え、「やさしい日本語」などの取り組みも広がっている。` (sc +1)

### 16. R_0273 — Add 森林環境税 2024 (Domain major)
- Bài 森 thiếu policy mới
- **Fix**: Add 1 câu reference 森林環境税 hoặc 国産材

### 17. R_0275 translation câu 6 calque (Linguist major)
- "người gặp gỡ", "sống động" — calque vụng từ Nhật
- **Fix**: Đổi → "những người tôi gặp được" + "rạng rỡ/tràn đầy sức sống"

### 18. R_0277 câu 6 dịch thì sai (Linguist major)
- `応用されることになった` (quá khứ) dịch "sẽ được" — SAI
- **Fix**: Đổi → "đã được đưa vào ứng dụng"

### 19. Length giveaway Q4 (Pedagogue major) — 2 bài
- R_0280 Q4 (75 vs 30-35 chars), R_0271 Q4
- **Fix**: Pad distractor

### 20. Distractor extreme words (Pedagogue major)
- "唯一", "全て", "決して", "完全に", "誰でも" — easy elimination
- Bài: R_0273 Q3, R_0276 Q4, R_0277 Q3
- **Fix**: Thay bằng nuance ("phần lớn", "thường", "có xu hướng")

### 21. Q4 copy câu cuối (Pedagogue major) — 5 bài
- R_0274, R_0275, R_0276, R_0278, R_0279 — đáp án đúng copy gần nguyên văn câu kết
- **Fix**: Đáp án đúng paraphrase ngắn HOẶC convert sang Q analyze "tác giả ngụ ý gì?"

## P2 — Should fix
22. R_0273 tag `にもたらす` thiếu を — fix metadata
23. R_0275 `お金には替えられない` → `代えられない` (chuẩn hơn)
24. R_0271 dịch `定着した` → "đã ổn định" thay "thói quen"
25. R_0278 add スタートアップ育成5か年計画 2022
26. R_0280 add 地方創生 + 移住支援金
27. R_0274 add ラジオ体操 / 朝活 (Japan-specific habit)

## Action plan
- 21 P1 critical/major
- 6 P2 nếu time
