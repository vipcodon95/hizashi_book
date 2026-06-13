# Consolidated Fix List — batch_0291_0300 (cấp 6)

## Score
- Linguist: 0 critical, 18 major (vocab morphology + lạm dụng `相関する` 8x R_0294)
- Pedagogue: 5 critical (flat 15 toàn batch, 0/40 Q dùng なぜ/どうして, Recall heavy 87.5%, Q4 copy câu cuối 7/10, length giveaway 7/10), 18 major
- Domain: 9 critical (R_0291/0293 missing AI+luật, R_0292/0295/0300 missing Japan-specific), 21 major

## P1 — MUST FIX

### 1. Q2 không phải cause/why TOÀN BATCH (Pedagogue critical)
- 0/40 câu hỏi dùng なぜ/どうして explicit
- **Fix khuyến nghị 5 bài**: R_0291, R_0292, R_0294, R_0297, R_0299 — Q2 rewrite なぜ/どうして
  - R_0291 Q2 → "Tại sao robot và con người cần hợp tác?"
  - R_0292 Q2 → "Tại sao 冬の祭り gắn kết cộng đồng?"
  - R_0294 Q2 → "Tại sao 人間関係 quan trọng cho hạnh phúc?"
  - R_0297 Q2 → "Tại sao đọc sách tiếp tục có giá trị?"
  - R_0299 Q2 → "Tại sao kinh nghiệm dạy bài học sâu hơn lý thuyết?"

### 2. Sentence count flat 15 toàn batch (Pedagogue critical)
- 10/10 sc=15
- **Fix**: Add câu cho ≥5 bài (do mục Domain) → variance lên 16-17

### 3. Recall heavy 87.5% + Q4 copy câu cuối (Pedagogue critical)
- 35/40 Q là Recall paraphrase, 7/10 bài Q4 copy câu cuối
- **Fix khuyến nghị 5 bài**: Convert Q3 hoặc Q4 → Inference cho R_0293, R_0295, R_0297, R_0299, R_0300
  - Format: "Tác giả ngụ ý gì khi nói X?" / "Có thể suy ra điều gì?"

### 4. R_0300 — Add こども家庭庁/LGBT理解増進法/男性育休 stats (Domain critical)
- Bài ジェンダー 2026 thiếu 3 cốt lõi 2022-2023 + số liệu
- **Fix**: Add 1-2 câu `2024年の男性育休取得率は約4割に達し、2023年には「LGBT理解増進法」も成立した。` (sc +1)
- Vocab thêm `LGBT理解増進法` HOẶC `男性育休`

### 5. R_0291 — Add AI/生成AI/介護ロボット (Domain critical)
- Bài robot 2026 không touch AI = critical gap
- **Fix**: Add 1 câu `近年は生成AIと組み合わせた協働ロボットや、介護ロボットの普及も進んでいる。` (sc +1)
- Vocab thêm `生成AI` HOẶC `介護ロボット`

### 6. R_0295 — Add 介護保険 + 見守りサービス (Domain critical)
- Bài chăm sóc bố mẹ già từ xa thiếu institutional context Nhật
- **Fix**: Add 1 câu `日本では介護保険制度や郵便局のみまもりサービスなど、家族を支える仕組みも整っている。` (sc +1)
- Vocab thêm `介護保険` HOẶC `見守りサービス`

### 7. R_0293 — Add レジ袋有料化 2020 + プラスチック資源循環促進法 2022 (Domain critical)
- Bài プラスチックごみ thiếu 2 luật cốt lõi
- **Fix**: Add 1 câu `日本でも2020年のレジ袋有料化や2022年のプラスチック資源循環促進法など、対策が進められている。` (sc +1)
- Vocab thêm `プラスチック資源循環促進法`

### 8. R_0292 — Add 札幌雪まつり / 担い手不足 (Domain critical)
- Bài 冬祭り thiếu lễ hội cụ thể + thực trạng 2024
- **Fix**: Add 1 câu `札幌雪まつりやなまはげなど有名な祭りもあるが、担い手不足やオーバーツーリズムも課題となっている。` (sc +1)

### 9. R_0294 lạm dụng `相関する` 8x (Linguist major)
- Vượt ngưỡng cap ≤4
- **Fix**: Replace 4 lần bằng `関連する`/`結びつく`/`関係がある`

### 10. R_0292 vocab morphology (Linguist major)
- `根ざした` (động từ form) — list dạng vocab độc lập
- `一丸となって` — entry trùng になって
- **Fix**: Đổi `根ざした` → `根ざす` (ねざす). Đổi `一丸となって` → `一丸` (いちがん) HOẶC `一丸となる`

### 11. R_0295 câu 9 guide sai parsing (Linguist major)
- `には及ばない` parsing as "には = so sánh bất lợi" — SAI
- **Fix**: Đổi → "に là object marker for comparison; は là topic emphasis"

### 12. R_0298 câu 14 guide sai (Linguist major)
- `わけではない` ghi "phủ định toàn bộ nhẹ" — SAI (đó là partial negation)
- **Fix**: Đổi → "phủ định một phần (partial negation): không phải là (như đã suy ra)"

### 13. R_0297 vocab `気づかせる` (Linguist major)
- 使役形 không phải vocab độc lập
- **Fix**: Đổi entry → `気づく` với note causative HOẶC giữ và clarify "thể sai khiến"

### 14. R_0298 add バーンアウト/うつ病 balance (Domain major)
- Bài 忍耐 ca ngợi một chiều, không touch sức khỏe tâm thần
- **Fix**: Add 1 câu `ただし、過剰な我慢は燃え尽き症候群やうつ病の原因にもなり得るため、注意も必要だ。`
- Vocab thêm `燃え尽き症候群`

### 15. R_0296 add 働き方改革/男性育休 (Domain major)
- Bài 会社文化 2026 outdated framing
- **Fix**: Add 1 câu `近年は働き方改革やテレワークの普及、男性育休の浸透など、会社文化も大きく変化している。`

### 16. R_0299 add リスキリング (Domain major)
- Bài 学び 2024 thiếu term cốt lõi
- **Fix**: Add 1 câu `近年は「リスキリング」や「学び直し」が注目され、社会人の学習機会も広がっている。`
- Vocab thêm `リスキリング`

### 17. R_0291 nuance dịch (Linguist major)
- Câu 14 `あくまでも` → "dù sao" (sai). Câu 11 も = "ngay cả" (sai → liệt kê)
- **Fix**: Đổi `あくまでも` → "suy cho cùng/về bản chất". Câu 11 も → "cũng (có)" liệt kê

### 18. R_0296 nuance dịch (Linguist major)
- Câu 5 `にじみ出てくる` dịch "rò rỉ" — context tiêu cực không phù hợp
- **Fix**: Đổi → "lộ ra, hiện ra rõ rệt qua..."

### 19. R_0300 vocab `ジェンダー平等` reading (Linguist major)
- Reading `ジェンダーびょうどう` — kỳ vì katakana đã có pronunciation
- **Fix**: Reading chỉ ghi `びょうどう` cho phần kanji HOẶC bỏ reading

### 20. Length giveaway Q4 7 bài (Pedagogue major)
- Đáp án đúng dài gấp đôi distractor
- **Fix**: Pad distractor / shorten đáp án đúng

### 21. Distractor extreme words 4 bài (Pedagogue major)
- "唯一/全て/決して/完全に/だけ/のみ" — easy elimination
- Bài: R_0291 Q3, R_0292 Q3, R_0294 Q1+Q4, R_0299 Q2
- **Fix**: Replace bằng nuance ("phần lớn", "thường", "có xu hướng")

## P2 — Should fix
22. R_0297 add オーディオブック/Audible 2024 trend
23. R_0294 add World Happiness Report Nhật rank 51
24. R_0291 add 自動運転 Lv4 解禁 2023
25. R_0293 add バイオプラ/紙ストロー specifics
26. Vocab `解明` cross-batch consistency với mục R_0288
27. Translation polish câu 5 R_0297 (lost くれる nuance)

## Action plan
- 21 P1 critical/major
- 6 P2 nếu time
