# Consolidated Fix List — batch_0211_0220 (cấp 5)

## Score
- Linguist: 0 critical, 4 major
- Pedagogue: 4 critical (Q2 Apply 0/10, R_0217 + R_0216 all Recall, R_0219 なり tag lệch), 11 major
- Domain: 1 critical (R_0214 thiếu ヘルメット 努力義務 2023), 3 major

## P1 — MUST FIX

### 1. Q2 Apply 0/10 — TOÀN BATCH (Pedagogue critical)
- 100% Q2 là Recall/Understand
- **Fix khuyến nghị 5 bài**:
  - R_0211 Q2: từ Recall → Apply ("Theo bài, người mới đến nên ưu tiên làm gì?")
  - R_0213 Q2: → Apply causality ("Tại sao tác giả nhấn mạnh điểm này?")
  - R_0215 Q2: → Apply opinion ("Bài học rút ra cho bạn đọc là gì?")
  - R_0218 Q2: → Apply scenario
  - R_0220 Q2: → Apply ("Áp dụng bài học, gia đình mới chuyển đến nên làm gì?")

### 2. R_0217 + R_0216 toàn bộ comp Recall (Pedagogue critical)
- 3/3 Q đều locate + copy, không có Apply/Inference
- **Fix R_0217**: Q2 → Apply, Q3 → Inference (theme/main idea)
- **Fix R_0216**: Q2 → Apply opinion, Q3 → Inference cause/effect

### 3. R_0219 tag lệch — `なり` (Pedagogue critical)
- Tag/grammar_used có `〜なり〜なり` nhưng text dùng `〜なり` (immediate sequence)
- **Fix**: Đổi text → `〜たとたん` HOẶC `〜やいなや` HOẶC update tag cho đúng pattern thực tế
- Sync metadata grammar_used

### 4. R_0214 thiếu ヘルメット 努力義務 2023 (Domain critical)
- Bài về 自転車 mà không nhắc rule 4/2023 全年齢 努力義務
- **Fix**: Thêm 1 câu `2023年4月から、自転車に乗る全ての人にヘルメットの着用が努力義務化された。` (sentence_count +1)
- Vocab thêm `努力義務` HOẶC `ヘルメット`

### 5. Q3 Inference yếu (Pedagogue major) — 6 bài
- R_0211, R_0212, R_0214, R_0216, R_0218, R_0220 — Q3 vẫn Recall/Understand
- **Fix**: Đổi sang theme/main idea / cause-effect

### 6. Distractor 180° contrast (Pedagogue major) — 4 bài
- R_0212 Q3, R_0215 Q3, R_0217 Q3, R_0220 Q3 — distractor đối lập rõ
- **Fix**: Thay distractor "almost-right" (chỉ sai 1 chi tiết)

### 7. Distractor length giveaway (Pedagogue major) — 3 bài
- R_0213 Q2, R_0218 Q3, R_0219 Q3: correct dài 2-3x distractor
- **Fix**: Pad distractors lên cùng độ dài

### 8. R_0211 lạm dụng pattern (Linguist major)
- 4 lần `〜について` + 3 lần `〜によって` trong 13 câu
- **Fix**: Đa dạng hóa: thay `について` → `〜のこと`, `〜の話`

### 9. R_0215 grammar formal mismatch register (Linguist major)
- Vài câu dùng `〜である / 〜ねばならない` không phù hợp tone slice-of-life
- **Fix**: Đổi → `だ` / `〜なければならない`

### 10. R_0218 translation lệch (Linguist major)
- 1 câu dịch `〜ながらも` thành "vừa…vừa" — sai (concessive)
- **Fix**: Đổi → "mặc dù… vẫn…"

### 11. R_0212 process guide bookish (Linguist major)
- Một số guide câu dùng từ vựng N2
- **Fix**: Simplify

### 12. R_0212 — Add 2026 context (Domain major)
- Topic media/work/study cần anchor 2026
- **Fix**: Thêm câu reference Web面接/ChatGPT/オンライン授業 tùy topic

### 13. R_0218 — Add specific brand (Domain major)
- Generic, thiếu anchor
- **Fix**: Thêm tên cụ thể (PayPay/Suica/TOHOシネマズ tùy topic)

### 14. R_0220 — Add modern detail (Domain major)
- Thiếu 2026 reality
- **Fix**: Thêm 1 câu mention digital tool / modern trend

## P2 — Should fix
15. R_0213 distractor mơ hồ — cải thiện
16. R_0216 vocab tăng từ 7 → 9
17. R_0219 katakana reading hiragana — bỏ field
18. Translation refinements 2-3 chỗ minor
19. R_0215 add 1 cultural detail (祭り/伝統)

## Action plan
- 14 P1 critical/major
- 5 P2 nếu time
