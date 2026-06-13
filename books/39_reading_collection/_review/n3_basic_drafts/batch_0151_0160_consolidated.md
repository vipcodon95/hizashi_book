# Consolidated Fix List — batch_0151_0160 (cấp 5)

## Score
- Linguist: 2 critical, 5 major, 10 minor + 37 icon violations
- Pedagogue: 2 critical (sc 10/10 thiếu, Q2 Apply 0/10), 2 major, 4 minor
- Domain: 1 critical (R_0154 介護保険 missing), 5 major, 4 minor

---

## P1 — MUST FIX

### 1. R_0156 — `に加えて` đầu câu sai grammar (Linguist critical)
- `に加えて` cần danh từ phía trước, KHÔNG đứng đầu câu
- **Fix**: Đổi → `それに加えて、ご当地グルメは…` HOẶC `さらに、ご当地グルメ…`

### 2. R_0153 — `にかかわらず` → `にもかかわらず` (Linguist major)
- `英語があまり得意でないにかかわらず` — sau động từ phủ định cần `にもかかわらず`
- **Fix**: Đổi text + tag/grammar_used update

### 3. R_0158 — `ことはない` sai sắc thái (Linguist major)
- Câu cuối `ケアを怠ることはない` — không có nghĩa "không được phép lơ là"
- **Fix**: Đổi → `ケアを怠ってはいけない` HOẶC `怠るべきではない`

### 4. R_0154 — `ことになった` translation mâu thuẫn process (Linguist major)
- Process explain `ことになった ≠ ことにした` nhưng translation lại dùng "quyết định"
- **Fix**: Translation câu 1 → "đã phải chăm sóc" (passive obligation)

### 5. R_0154 — Add 介護保険・ケアマネ (Domain critical)
- Bài KHÔNG mention 介護保険制度 — backbone của 介護 ở Nhật
- **Fix**: Thêm câu reference: `介護保険制度のおかげで、ケアマネジャーと相談しながらサービスを受けることができた。`
- Vocab thêm `介護保険` (かいごほけん) HOẶC `ケアマネジャー`

### 6. Sentence count thiếu spec 12-15 (Pedagogue critical)
- 10/10 bài có sc=10, spec yêu cầu 12-15
- **Fix**: Thêm 2-5 câu mỗi bài để đạt spec
- **Khuyến nghị scope**: Chỉ thêm 2-3 câu/bài cho 10 bài (tổng +30 câu) vì effort lớn, có thể skip nếu time tight

### 7. Q2 Apply boost (Pedagogue critical) — chỉ 0/10
- 100% Q2 là Recall hoặc Understand
- **Fix khuyến nghị 4 bài**:
  - R_0151 Q2: nâng từ "giải nghĩa 一方だ" → "Áp dụng cảnh báo bài, gia đình phòng bão nên làm gì?"
  - R_0152 Q2: từ "mua gom chú ý gì" → "Theo bài, người chi tiêu thế nào dễ rơi vào 衝動買い?"
  - R_0153 Q2: từ "không thông làm gì" → "Bài học rút ra cho người chưa giỏi tiếng có thể là gì?"
  - R_0154 Q2: "giải nghĩa てたまらない" → "Tại sao gia đình cảm thấy 絆 sâu hơn sau khi chăm sóc?"

### 8. Icon violations cấp 5 (Linguist critical) — 37 chỗ
- Cấp 5 chỉ → và 🔒
- **Fix**: Bỏ tất cả `💡 Insight:` và `⚠️ Bẫy:` khỏi process[].guide

### 9. Vocab count thiếu spec (Pedagogue major)
- 10/10 bài chỉ 6 vocab, spec 8-12
- **Fix**: Bổ sung 2-4 từ N3 mỗi bài

### 10. R_0157 — Add ハイブリッド + Web会議 (Domain major)
- Outdated 2026 reality
- **Fix**: Có thể thêm câu `週3日のテレワークと2日の出社というハイブリッド勤務が一般的になっている。`
- Vocab thêm `ハイブリッド勤務`, `Web会議`

### 11. R_0158 — Add 心療内科 / 産業医 (Domain major)
- Bài quá soft, miss professional resources
- **Fix**: Thêm câu `症状が長く続く場合は、心療内科に相談することも大切だ。`
- Vocab thêm `心療内科` (しんりょうないか) hoặc `産業医`

### 12. R_0151 — Add 警戒レベル (Domain major)
- 5-level system (2019+)
- **Fix**: Thêm câu `気象庁は警戒レベル3以上で避難を呼びかける。`
- Vocab thêm `警戒レベル`

### 13. R_0152 — Add キャッシュレス + ポイント (Domain major)
- 2026 currency
- **Fix**: Thêm câu `キャッシュレス決済のポイント還元を活用する人も増えている。`
- Vocab thêm `キャッシュレス` hoặc `ポイント還元`

---

## P2 — Should fix

### 14. R_0156 — Add specific dishes
- Hiện chỉ Champuru + 大阪. Thêm 札幌ラーメン, 仙台牛タン, 博多もつ鍋 mention
- **Fix**: Có thể list 1-2 món

### 15. R_0152 câu 7 — `かえって` cần dấu phẩy
- **Fix**: Thêm `、` trước `かえって`

### 16. R_0156 — `存在する` bookish
- **Fix**: Đổi → `ある`

### 17. Distractor mơ hồ
- R_0152 Q3 D, R_0156 Q2 A, R_0160 Q3 D
- **Fix**: Thay distractor plausible hơn

### 18. R_0160 — Add ES + インターン
- 2026 就活 vocab
- **Fix**: Thêm `エントリーシート` mention

---

## P3 — Skip

- R_0155 部 vs クラブ vs サークル distinction
- R_0153 円安 mention
- R_0159 デジタルデトックス
- predict-and-verify in process
- katakana reading hiragana
