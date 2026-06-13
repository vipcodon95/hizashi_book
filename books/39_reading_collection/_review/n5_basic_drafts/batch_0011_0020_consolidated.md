# Consolidated Fix List — batch_0011_0020 (R_0011-R_0020)

> Tổng hợp 3 council review

## Average score: 7.6/10
- Linguist: 7.8/10
- Pedagogue: 7.0/10 (Medium-Good)
- Domain expert: 7.0/10

---

## P1 — MUST FIX (3 council đồng thuận)

### 1. R_0015 — Duplicate vocab `厳しい`
- 3/3 council flag
- **Fix**: Xoá 1 entry duplicate. Thay bằng từ mới (vd `先輩` hoặc `試合`).

### 2. R_0012 — Thiếu お正月 cultural keystones (お年玉 + 初詣)
- Domain expert P1 critical
- **Fix**: Thêm `お年玉` (lì xì) + đổi `神社に行く` → `初詣に行く` (gọi tên truyền thống). Vocab thêm 2 từ.

### 3. Spec violation — Dùng `⚠️` trong explanation (3 chỗ)
- Linguist P0 — Vi phạm spec "cấp 1 KHÔNG dùng ⚠️"
- R_0012_Q2, R_0013_Q2, R_0020_Q2 explanation chứa `⚠️ Bẫy:`
- **Fix**: Bỏ `⚠️` icon, giữ nội dung trừ icon.

### 4. Reading katakana ghi hiragana
- Linguist + Domain expert flag
- **Fix**: 6 chỗ — `クラス` (R_0013), `サッカー`, `グラウンド`, `コーチ` (R_0015), `テスト` (R_0016), `プール` (R_0019), `ギター` (R_0020), `ベトナム人` (R_0014). Bỏ field reading hoặc giữ katakana.

### 5. R_0017 — `持って来ます` vượt cấp + thiếu 卒業式 cultural
- Linguist + Pedagogue + Domain
- **Fix**:
  - Đổi `持って来ます` → `持ってきます` (kana hoá) hoặc đơn giản `母は花束を持ちます`
  - Thêm 桜/3月 detail (mùa hoa anh đào)
  - `花` → `花束` (bouquet)

### 6. R_0018 — 遠足 vs 修学旅行 confusion
- Domain expert P1
- 京都 + おみやげ ngụ ý 修学旅行, không phải 遠足
- **Fix lựa chọn**:
  - Option A: Đổi 京都 → 公園 hoặc 動物園, bỏ おみやげ
  - Option B: Đổi title `遠足` → `修学旅行` (giữ Kyoto)
  - Title_vi "Chuyến đi học tập" → "Chuyến dã ngoại" (cho 遠足) hoặc "Chuyến tham quan tốt nghiệp" (cho 修学旅行)
- **Khuyến nghị**: Option A vì 修学旅行 tiếng nặng hơn, R_0018 ngắn 8 câu phù hợp 遠足.

---

## P1 — Bloom progression (Pedagogue critical)

### 7. 6/10 bài Q1+Q2 đều Recall
- R_0011, R_0015, R_0016, R_0017, R_0018, R_0019
- **Fix**: Q2 phải nâng lên Apply (inference particle, synthesis, negation).
- **Khuyến nghị**: Skip ở batch này vì rewriting 6 questions tốn nhiều effort. Note để batch sau viết tốt hơn.

---

## P2 — Process guide adverbializer

### 8. Adverbializer `に`/`く` không gọi tên
- R_0014 (`一緒に`), R_0016 (`ていねいに`), R_0019 (`速く`)
- **Fix**: Process guide explain "X+に là dạng adverb của X" (cho na-adj/noun) và "X+く là dạng adverb của X" (cho i-adj).

### 9. R_0011 — `魚をとります` → `魚を釣ります`
- Domain expert minor
- **Fix**: Đổi text + process. `釣ります` natural hơn cho fishing.

### 10. R_0017 — `母は花を持って来ます`
- **Fix**: Đổi → `母は花束を持ってきます` (bouquet + kana)

---

## P3 — Minor (skip nếu thời gian tight)

- R_0011 dịch "Ông năm nay 75 tuổi" — over-translate (thêm "năm nay")
- R_0011 75歳 → 70歳 cho realistic
- R_0012 title_vi "Tết ở nhà" → "Tết Nhật Bản"
- R_0014 chỉ 4 vocab, có thể thêm 1
- R_0014 reading `べとなむじん` → katakana
- R_0015 grammar `入っています` không khai trong grammar_used
- R_0018 distractor pattern leak (số 10/15/20/25)

---

## Action plan cho agent fix

### Cần apply (P1):
1. R_0015: Xoá duplicate 厳しい, thay bằng từ mới
2. R_0012: Thêm お年玉 + 初詣 vào text + vocab + comprehension nếu cần
3. Bỏ `⚠️` ở 3 explanation (R_0012, R_0013, R_0020)
4. Fix reading katakana: bỏ hoặc giữ katakana ở 6+ chỗ
5. R_0017: `持って来ます` → `持ってきます`, `花` → `花束`, thêm 桜 detail
6. R_0018: Đổi → 公園/動物園 (Option A), bỏ おみやげ
7. R_0011: `とります` → `釣ります`
8. Process guide adverbializer (R_0014, R_0016, R_0019)
