# Consolidated Fix List — batch_0021_0030 (R_0021-R_0030)

> Tổng hợp 3 council review

## Average score
- Linguist: ~7.5/10 (2 critical, 7 major, 8 minor)
- Pedagogue: 7/10 (1 critical Bloom + 1 major + 5 minor)
- Domain expert: 7/10 (4 major, 5 minor, 0 critical)

---

## P1 — MUST FIX

### 1. R_0030 câu 1 — translation scope sở hữu sai
- "友達のゆきさんのふるさとは長野です。" hiện dịch "Quê của bạn tôi là Yuki ở Nagano." → ambiguous (Yuki ở Nagano = resident).
- **Fix**: Đổi → "Quê của Yuki, bạn tôi, là Nagano." hoặc "Quê của bạn tôi (Yuki) là ở Nagano."

### 2. R_0024 câu 6 — câu Nhật bookish + lặp từ
- "カメラは小さいカメラを使います" — bookish, lặp `カメラ`.
- **Fix**: Đổi → "小さいカメラを使います" hoặc "私のカメラは小さいです".
- Process + translation update.

### 3. R_0027 — Cognitive overload + thiếu cảm thức 4 mùa Nhật
- 4 mùa + 4 tính từ trong 8 câu. Domain expert cũng phát hiện thiếu 紅葉 (mùa thu) + 雪 (mùa đông).
- **Fix**: Giữ 8 câu nhưng restructure:
  - Câu mùa thu: thêm `秋は紅葉がきれいです` (thay câu chỉ "涼しい")
  - Câu mùa đông: thêm `冬は雪が降ります` (thay câu chỉ "寒い")
  - Hoặc giữ tính từ + thêm 1 cultural element/mùa
- Update vocab: thêm `紅葉` (こうよう/もみじ) hoặc `雪` (ゆき)
- Update process + comprehension nếu cần

### 4. R_0027 + R_0029 — Subject ẩn dịch sai
- R_0027 câu 6 "海で泳ぎます": dịch "Mọi người bơi" giả định không có cơ sở
- R_0029 câu 6 "東京で買い物をします": dịch "Mọi người mua sắm"
- **Fix**: Đổi tiếng Nhật thành rõ chủ ngữ:
  - R_0027: `夏は海で泳ぎます。` (mùa hè bơi biển - subject = season)
  - R_0029: `東京でよく買い物をします。`
- Hoặc giữ Nhật, đổi dịch Việt thành ẩn chủ ngữ

### 5. R_0023 — 鶴 thiếu cultural meaning + giấy 青 không truyền thống
- 100 con hạc lẻ không có ý nghĩa văn hoá rõ. Truyền thống Nhật là 千羽鶴.
- 青い紙 không phổ biến cho hạc origami.
- **Fix**:
  - Đổi `青い紙` → `ピンクの紙` hoặc `黄色い紙` (truyền thống hơn)
  - Có thể thêm context "病気の友達のために" (vì bạn ốm) để có cultural meaning, hoặc đổi 100 → "千羽鶴を作ります" với giải thích vocab

### 6. R_0029 — Tokyo description quá generic
- Có Tokyo Tower + Sky Tree nhưng thiếu 電車 (đặc trưng Tokyo) hoặc district.
- **Fix**: Thêm 1 câu hoặc thay 1 câu bằng `東京には電車がたくさんあります。`

---

## P1 — Bloom progression (Pedagogue critical)

### 7. 8/10 bài Q1+Q2 đều Recall (regression vs batch trước)
- Chỉ R_0027 Q2 và R_0029 Q2 đạt Apply/Synthesize.
- 8 bài còn lại Q2 nên nâng lên Apply (inference, synthesis 2 câu).
- **Fix khuyến nghị**:
  - R_0021 Q2: hỏi inference (vd "Tại sao đi thư viện thứ Bảy?" — buộc đọc câu nhiều)
  - R_0023 Q2: synthesis "100 + 鶴 = ý nghĩa gì?"
  - R_0026 Q2: chủ ngữ ẩn "ミケはどこで寝ますか" (buộc đọc câu 7 + suy luận)
  - R_0028 Q2: synthesis 桜 + 花見 culture
  - R_0030 Q2: tổng hợp activities ở ふるさと
- **Note**: Quá nhiều fix Q2 cùng lúc có thể tốn time → ưu tiên 4 bài quan trọng (R_0026, R_0023, R_0028, R_0030).

---

## P2 — Process guide minor

### 8. R_0023 câu 6 — counter 羽 thiếu
- "百あります" → native dùng "百羽あります". N5 chưa học counter 羽 nhưng nên giới thiệu.
- **Fix**: Đổi → `百羽あります`. Vocab thêm note `羽` (counter cho chim).

### 9. R_0028 — 学生は花見 không match reality
- 花見 thường là 家族/会社員/友達, không phải 学生.
- **Fix**: Đổi `学生` → `家族` hoặc `人々`.

### 10. R_0030 double-の scaffolding
- "友達のゆきさんのふるさと" 2 lớp の.
- **Fix**: Process guide câu 1 thêm note "の có thể chồng nhiều lớp = sở hữu lồng".

### 11. R_0026 câu 7 — `昼は` bookish
- 昼は thường nghĩa "giữa trưa". Native dùng `昼間は` cho "ban ngày".
- **Fix**: Đổi → `昼間は` (note vocab).

---

## P3 — Skip

- R_0027 vocab `紅葉` cho cấp 1 hơi nặng (đã thêm vào P1)
- R_0029 `首都` (N3 vocab) — acceptable cấp 1 vì cần thiết cho topic
- R_0028 ピンク色 reading mixed — keep
- R_0021 thiếu personalization
- Vocabulary readings inconsistency

---

## Action plan cho agent fix

### Apply P1 (5 critical):
1. R_0030 dịch câu 1 fix scope
2. R_0024 câu 6 sửa bookish
3. R_0027 thêm 紅葉 + 雪 (cảm thức 4 mùa)
4. R_0027 + R_0029 fix chủ ngữ ẩn (đổi text Nhật)
5. R_0023 đổi 青い紙 → ピンクの紙 + thêm cultural context
6. R_0029 thêm 電車

### Apply P1.5 (Bloom Q2 — 4 bài quan trọng):
7. R_0023, R_0026, R_0028, R_0030: nâng Q2 lên Apply

### Apply P2 (4 bài):
8. R_0023 counter 羽
9. R_0028 学生 → 家族
10. R_0030 process guide double-の
11. R_0026 昼は → 昼間は
