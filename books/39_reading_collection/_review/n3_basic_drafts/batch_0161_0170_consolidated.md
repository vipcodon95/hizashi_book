# Consolidated Fix List — batch_0161_0170 (cấp 5)

## P1 — MUST FIX

### 1. R_0163 grammar bugs (Linguist critical)
- Câu 3: `丸まっていがちだ` → SAI form. Đổi → `丸まりがちだ` HOẶC `部屋の隅で丸まっていることが多い`
- Câu 4: `一人暮らしの人に向きのペット` → SAI cấu trúc. Đổi → `一人暮らしの人向きのペット` (bỏ に) HOẶC `一人暮らしの人に向いているペット`
- Câu 8: `気難しっぽく` → đổi → `気難しそうに見える`
- Câu 9: `人向きに` → đổi → `人向けに`

### 2. R_0165 grammar lỗi (Linguist critical)
- Câu 7: `観光客もはもちろん` → SAI particle. Đổi → `観光客はもちろん` (bỏ も)

### 3. R_0167 ものか sai nuance (Linguist critical)
- Câu 9: `また絶対に会いに来るものかと心に誓った` — ものか = phủ định mạnh, không thể dùng cho khẳng định
- **Fix**: Đổi → `また必ず会いに来ようと心に誓った` HOẶC `また絶対に会いに来ると心に誓った`
- Process guide câu 9: bỏ note sai "ものか tùy ngữ cảnh có thể khẳng định"

### 4. R_0169 とする dạy sai concept (Linguist critical)
- Câu 2: `「新しい政策が来月から始まるとする」` — báo chí Nhật KHÔNG dùng とする để đưa tin giả định
- **Fix**: Đổi text + Q1 + explanation:
  - Đổi `Vるとする` → `〜という` HOẶC `〜とのことだ` HOẶC `〜方針だ`
  - Q1 explanation: bỏ "仮定として報道" misconception
- Câu 8: `「本当にそうとするならば」` → `本当にそうだとするならば` (thêm だ)

### 5. R_0162 — Add specifics 引っ越し văn hoá Nhật (Domain critical)
- Bài thiếu hết yếu tố cốt lõi
- **Fix**: Có thể không thay đổi text mà bổ sung 1 câu về 敷金/礼金 hoặc 転入届
- HOẶC giữ nguyên + add note vocab

### 6. R_0166 — Update 災害 standards (Domain critical)
- Thiếu 警戒レベル, ハザードマップ, 1週間 standard
- **Fix**: Thêm 1 câu `気象庁の警戒レベルやハザードマップを確認することも欠かせない。`
- Vocab thêm `警戒レベル` hoặc `ハザードマップ`

### 7. R_0169 — Update media landscape (Domain critical)
- Bài giả định 新聞 vẫn là chính
- **Fix**: Có thể thêm 1 câu `インターネットニュースだけでなく、新聞も大切な情報源だ。` HOẶC mention フェイクニュース
- Vocab thêm `フェイクニュース` hoặc `ファクトチェック`

### 8. Sentence count tăng 10 → 12-13 (Pedagogue major)
- Tất cả 10 bài sc=10
- **Fix**: Mỗi bài thêm 2-3 câu để đạt ≥12

### 9. Vocab tăng 8-12 (Pedagogue major)
- R_0161 (6), R_0163 (7), R_0164 (7) thiếu
- **Fix**: Thêm 1-2 từ N3 cho 3 bài này

### 10. Q2 Apply boost (Pedagogue major) - chỉ 4/10
- 6 bài Q2 chỉ Recall/Understand
- **Fix khuyến nghị**: nâng Q2 cho R_0161, R_0166, R_0170 (3 bài quan trọng) sang Apply

### 11. R_0163 reading katakana (Linguist major)
- `ブラッシング` reading `ぶらっしんぐ` — vi phạm rule
- **Fix**: Bỏ field reading hoặc giữ katakana
- Tương tự `チームワーク`, `防災グッズ`

### 12. R_0170 câu 10 tautology (Linguist major)
- `見せてみせる` — redundant
- **Fix**: Đổi → `表現してみせる` HOẶC `伝えてみせる`

---

## P2 — Should fix

### 13. R_0161 thêm 盆踊り mention
### 14. R_0162 đảo chiều 挨拶 (người mới chào trước)
### 15. R_0164 add Duolingo/Speak/TOEIC
### 16. R_0168 add ふるさと納税/ポイ活 mention
### 17. R_0170 add スマホカメラ
### 18. Distractor R_0167 Q1, R_0169 Q1: cải thiện
### 19. Translation R_0161 "tiếng ồn" → "âm thanh sôi nổi"
### 20. Translation R_0168 「我慢」"nhịn nhục" → "kiềm chế"
### 21. R_0163 vocab inconsistency (giảm scope nếu effort lớn)

---

## Action plan
1-12 (P1 critical/major): grammar fixes + sc tăng + vocab + Q2 Apply
13-21 (P2): cultural updates, dịch refinement
