# Consolidated Fix List — batch_0141_0150 (cấp 5)

## Score
- Linguist: 2 critical, 6 major, 8 minor + 15 icon violations
- Pedagogue: 0 critical, 3 major (vocab thiếu, Q2 Apply 4/10, R_0150 jump), 5 minor
- Domain: 1 critical (R_0142 800円), 4 major, 3 minor

---

## P1 — MUST FIX

### 1. R_0142 — Lương baito 800円 → 1100円 (Domain critical, 2026 illegal)
- 800円/giờ vi phạm 最低賃金法 mọi tỉnh 2026
- **Fix**: Đổi `800円` → `1,100円` (national avg) HOẶC `1,200円` (Tokyo). 
- Tỉ lệ với game: `3000円` → `5000円` (giữ ratio "1 giờ ≈ 1/5 game")
- Update process + translation

### 2. R_0143 — Tags `ために` mismatch text (Linguist critical)
- Tags có `ために` nhưng text không có
- **Fix**: Bỏ `ために` khỏi tags HOẶC thêm câu dùng ために trong text

### 3. Icon violations cấp 5 (Linguist major) — 15+ chỗ
- Cấp 5 chỉ dùng `→` và `🔒`. KHÔNG `⚠️/💡/🎯`
- **Fix**: Bỏ tất cả `💡 Insight:` và `⚠️ Bẫy:` khỏi process[].guide ở 7 bài (R_0143, R_0144, R_0145, R_0147, R_0148, R_0149, R_0150). Giữ nội dung text, chỉ bỏ emoji.

### 4. R_0144 — `〜(よ)うとしない` analysis sai (Linguist major)
- Câu 8 guide ghi "としない = cố tình không làm" — SAI
- **Fix**: Đổi → "〜(よ)うとしない = không có ý định/không cố làm (negation of effort)"

### 5. R_0144 câu cuối — translation cấu trúc sai (Linguist major)
- `考えられなくなるほど豊かな時間が生まれる` — translation hiện tách thành 2 mệnh đề độc lập
- **Fix**: "Khi thói quen đọc sách đã hình thành, sẽ sinh ra khoảng thời gian phong phú đến mức không thể hình dung nổi cuộc sống thiếu sách."

### 6. R_0148 — `満タン` collocation sai (Linguist major)
- `ゴミ袋が満タン` — `満タン` chỉ dùng cho bình lỏng/xăng
- **Fix**: Đổi → `ゴミ袋がいっぱい` HOẶC `満杯`

### 7. R_0146 — Add 紅白歌合戦 + お雑煮 + 除夜の鐘 (Domain major)
- お正月 thiếu key cultural elements
- **Fix**: Thêm 1 câu mention `紅白歌合戦を見ながら年越し` HOẶC `元旦にお雑煮を食べる` (sentence_count +1)
- Vocab có thể thêm `お雑煮` (おぞうに)

### 8. R_0145 — Add SNS疲れ / デジタルデトックス (Domain major)
- Bài chỉ chạm bề mặt スマホ依存
- **Fix**: Có thể thêm câu về `SNS疲れ` hoặc `デジタルデトックス` — keyword 2024-2026
- Vocab thêm `SNS疲れ` hoặc `デジタルデトックス`

### 9. Vocab count thiếu spec 8-12 (Pedagogue major)
- Tất cả 10 bài có 6-7 vocab, dưới spec
- **Fix**: Bổ sung 2-3 từ N3 cho mỗi bài (ưu tiên kanji compound trong text chưa được gloss)

### 10. Q2 Apply boost (Pedagogue major) — chỉ 4/10
- Q2 ở R_0145, R_0146, R_0147, R_0148, R_0149 vẫn Recall/Understand
- **Fix khuyến nghị 3 bài**:
  - R_0145 Q2: nâng từ Recall → Apply ("nếu áp dụng nguyên tắc, ai phù hợp đổi thói quen X?")
  - R_0147 Q2: tương tự (apply causality)
  - R_0148 Q2: tương tự

---

## P2 — Should fix

### 11. R_0148 — Add 災害ボランティア (Domain)
- 2024-2026 trend (能登地震 recovery)
- **Fix**: Có thể mention `災害ボランティア` hoặc `見守りボランティア`

### 12. R_0143 — Name brand コンビニ
- Bài chung chung, không name brand
- **Fix**: Có thể đổi câu mở thành `セブンやローソンなどのコンビニ` 

### 13. R_0141 — Add ゴミ分別
- Cultural shock với người Việt
- **Fix**: Thêm 1 câu về `ゴミの分別ルール` hoặc 3R

### 14. Distractor mơ hồ
- R_0145 Q1 distractor C "kết bạn nhiều" — quá obvious
- R_0149 Q3 distractor B "muốn bỏ" — đối lập rõ
- **Fix**: Thay distractors plausible hơn

### 15. R_0144 lecture-y
- 13 câu toàn lời khuyên
- Skip nếu effort lớn

---

## P3 — Skip

- R_0146 まめ wordplay (giữ — strength)
- R_0144 vs R_0147 narrative balance
- R_0150 difficulty jump (acceptable)
- learning_objective field
