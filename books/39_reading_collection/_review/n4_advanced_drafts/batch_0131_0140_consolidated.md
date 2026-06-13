# Consolidated Fix List — batch_0131_0140 (BATCH CUỐI N4)

## Score
- Linguist: 2 critical, 5 major, 11 minor
- Pedagogue: 0 critical, 4 major, 7 minor (Q2 Apply 6/10 vượt target!)
- Domain: 0 critical, 1 major (R_0133), 5 minor

---

## P1 — MUST FIX

### 1. R_0133 — 一週間 → realistic flu rule (Domain major + Linguist critical)
- 「一週間は休まなければなりません」 quá đơn giản, không khớp 学校保健安全法
- **Fix**: Đổi → 「**少なくとも一週間は休まなければなりません**」 HOẶC `熱が下がっても、二日は家で休まなければなりません`
- Update process + translation

### 2. R_0133 process câu 10 — `〜てもいいか` embedded question (Linguist critical)
- Câu `土曜日に少し散歩してもいいかと医者に聞きました` — guide hiện ghi "てもいいか xin phép"
- **Fix**: Process guide đổi → "[V-てもいい]+か = embedded question (聞く takes か-clause indirectly), không phải direct yêu cầu xin phép"

### 3. Q2 Apply boost 3 bài (Pedagogue major)
- R_0132 Q2, R_0133 Q2, R_0136 Q2 vẫn Recall
- **Fix**:
  - R_0132 Q2: đổi → "どうして筆者は何回も鎌倉に行くのですか" (Apply: kết hợp câu 1 + câu 12)
  - R_0133 Q2: đổi → "どうして医者は会社を休ませましたか" (Apply: suy luận causality)
  - R_0136 Q2: đổi → "どうしてアドバイスは効果がありましたか" (Apply: phân tích vì sao)

### 4. Grammar_used metadata sync (Linguist major)
- R_0136: thêm `〜たら`
- R_0138: thêm `〜たら`
- R_0137: thêm `〜ようと思う`

### 5. R_0139 食欲の秋 cultural translation (Linguist major)
- Translation `mùa ăn ngon` chưa capture nuance
- **Fix**: Đổi → "mùa thu là mùa thèm ăn / mùa của ẩm thực phong phú" (cultural note về `〜の秋` series)

### 6. R_0139 câu 9 redundancy (Linguist major)
- `冬は寒い時に鍋料理を食べます` — 冬 + 寒い時 redundant
- **Fix**: Đổi → `冬の寒い日には鍋料理を食べます`

### 7. R_0131 出かける translation (Linguist major)
- Câu 1 `天気予報を見ないで出かけてしまいました` translation `lỡ ra ngoài` sai context (đi du lịch)
- **Fix**: Đổi → "đã lỡ đi mà không xem dự báo thời tiết"

### 8. R_0131 vocab 悲しそう classification (Linguist major)
- Vocab list trình bày `悲しそう` như từ độc lập — sai
- **Fix**: Bỏ vocab này HOẶC giải thích `悲しい + そう` (suffix conjecture)

---

## P2 — Should fix

### 9. R_0138 LINE通話 update (Domain minor)
- 2026 reality cho người Việt sang Nhật
- **Fix**: Có thể đổi `母に電話しました` → `LINEで母に電話しました`

### 10. R_0140 toppings (Domain minor)
- Hoàn thiện văn hoá たこ焼き
- **Fix**: Thêm 1 câu hoặc đề cập `ソース、マヨネーズ、青のり、かつお節をかけて食べました`

### 11. R_0134 ハーフマラソン (Domain minor)
- Tiến độ 1 năm phù hợp Half hơn Full
- **Fix**: Có thể đổi `マラソン大会` → `ハーフマラソン大会` cho realistic

### 12. R_0131 コンビニ買い占め (Domain minor)
- Thêm authenticity Okinawa typhoon
- **Fix**: Có thể thêm `コンビニで水や食べ物を買っておきました`

### 13. R_0135 câu 6 — translation ていました thói quen (Linguist critical fixed)
- Đã handle "luôn đi" — tuân thủ rule. Skip.

### 14. R_0137 process câu 2 — 気がつくと idiom (Linguist minor)
- Đây là idiom set phrase, không phải と conditional thuần
- **Fix**: Process guide note "気がつくと là idiom = khi nhận ra"

### 15. R_0140 vocab 意外と word class (Linguist minor)
- Đổi → "意外と (adverb form), giải thích từ loại"

### 16. R_0138 ある寒い夜 (Linguist minor)
- `ある` là 連体詞, KHÁC `ある` động từ
- **Fix**: Process note distinction

### 17. R_0140 Q2 — process câu 2 sơ sài (Pedagogue minor)
- Thêm note về cấu trúc liệt kê

---

## P3 — Skip (acceptable cumulative)

- R_0133 マスク mention (cumulative add later)
- R_0136 産業医 awareness
- R_0138 emotional translation nuance
- R_0140 process[2] guide expansion
- Topic balance health 6/10

---

## Action plan (8 P1 + 8 P2)

### P1 (8):
1. R_0133 一週間 realistic
2. R_0133 process てもいいか embedded
3. Q2 Apply 3 bài (R_0132, R_0133, R_0136)
4. Grammar_used metadata 3 bài
5. R_0139 食欲の秋 translation
6. R_0139 câu 9 redundancy
7. R_0131 出かける translation
8. R_0131 vocab 悲しそう

### P2 (chọn 5):
9. R_0138 LINE
10. R_0140 toppings
11. R_0134 ハーフ
12. R_0137 気がつくと idiom
13. R_0140 意外と word class
