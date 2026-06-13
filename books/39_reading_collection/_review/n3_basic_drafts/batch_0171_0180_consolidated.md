# Consolidated Fix List — batch_0171_0180 (cấp 5)

## P1 — MUST FIX

### 1. R_0173 câu 6 grammar critical
- `企業では、AIを使った作業が当たり前になっているようになっている` — chuỗi `ようになっている` lặp lại không grammatical
- **Fix**: Đổi → `企業では、AIを使った作業が当たり前になってきている` HOẶC `当たり前になりつつある`

### 2. R_0173 — Update AI 2026 (Domain critical)
- Bài "AIと社会" 2026 nhưng không nhắc 生成AI/ChatGPT
- **Fix**: Có thể thêm 1 câu `特に2022年以降、ChatGPTのような生成AIが社会に大きな影響を与えている。` hoặc tương tự
- Vocab thêm `生成AI` hoặc `ChatGPT`

### 3. R_0172 洪水 anchor specific event (Domain critical)
- "三年前の夏" mơ hồ
- **Fix**: Đổi → `2019年の台風19号` HOẶC `令和元年東日本台風` HOẶC giữ "三年前" nhưng add context

### 4. R_0175 grammar issues (Linguist major)
- Câu 4: `薄いような色をしている` — ような không gắn với i-adj. Đổi → `薄い色をしている` HOẶC `薄めの色をしている`
- Câu cuối: `次の世代にかけて` — から～にかけて cần cả から. Đổi → `次の世代まで` HOẶC `次の世代へと`

### 5. R_0173 lạm dụng grammar pattern (Linguist major)
- 3 lần ないことには + 3 lần どうやら + 3 lần ようになっている → bookish
- **Fix**: Đa dạng hóa: thay 1 lần ないことには → なければ; thay 1 lần どうやら → 〜らしい

### 6. R_0178 grammar_used metadata (Linguist minor → upgrade major)
- Tags có 3 nhưng grammar_used thiếu `〜てくる`
- **Fix**: Cập nhật grammar_used array

### 7. Sentence count tăng 10 → 12-13 (Pedagogue critical)
- 3 bài đầu (R_0171, R_0172, R_0173) sc=10
- **Fix**: Thêm 2-3 câu

### 8. Q2 Apply boost (Pedagogue critical) — 3/10
- 7 bài Q2 chỉ Recall
- **Fix khuyến nghị 3 bài**:
  - R_0171 Q2: nâng từ "cách Tokyo thay đổi" → Apply ("Theo bài, để hiểu Tokyo, ai cần làm gì?")
  - R_0172 Q2: nâng từ "làm gì với info" → Apply ("Áp dụng bài học, gia đình mới chuyển đến vùng lũ nên làm gì?")
  - R_0177 Q2: nâng → Apply

### 9. R_0176 — Add 女性専用車両 (Domain major)
- Cultural feature critical
- **Fix**: Thêm 1 câu mention `女性専用車両もあり、安心して乗れる人も多い。`
- Vocab thêm `女性専用車両`

### 10. R_0178 — Add brand cụ thể (Domain major)
- Bài generic, không mention TOHOシネマズ etc.
- **Fix**: Thêm reference `TOHOシネマズなどの大きな映画館で…` HOẶC giữ generic + add 1 vocab

### 11. R_0179 — Add クールビズ (Domain minor → major)
- 衣替え modern version cho doanh nghiệp
- **Fix**: Thêm câu `最近では「クールビズ」という名前で、夏の軽装が広がっている。`
- Vocab thêm `クールビズ`

### 12. R_0173 ようになっている lạm dụng (Linguist major)
- 3 lần `ようになっている` cho process diachronic
- **Fix**: Đổi 1-2 lần → `ようになってきている` HOẶC `普及しつつある`

---

## P2 — Should fix

### 13. R_0171 add brand/location specific (渋谷 etc.)
### 14. R_0174 add 朝活 keyword
### 15. R_0177 紫陽花 kanji + カビ対策
### 16. R_0180 contrast 完璧主義 mention
### 17. Translation refinements (まで render "theo", 心まで整う dịch poetic, etc.)

---

## Action plan
- 12 P1 critical/major
- Skip P2 nếu effort lớn
