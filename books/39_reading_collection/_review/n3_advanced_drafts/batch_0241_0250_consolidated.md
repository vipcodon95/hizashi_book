# Consolidated Fix List — batch_0241_0250 (cấp 6)

## Score
- Linguist: 3 critical, 14 major
- Pedagogue: 4 critical, ~14 major (Recall bias 55%, sc/vocab flat)
- Domain: 3 critical (Korean Hangul leaks + 学習指導要領 term missing), 18 major

## P1 — MUST FIX

### 1. Korean Hangul leak vocab (Domain + Linguist critical) — 3 chỗ
- R_0241 Q1 distractor `철 triệt để` (Hangul `철` lẫn vào)
- R_0246 vocab `余裕` meaning `"sự thong thả,여유, khoảng trống thoải mái"`
- R_0246 câu 2 translation `bắt đầu một ngày với sự余裕` (kanji không dịch)
- R_0249 vocab `倫理` meaning `"đạo đức,윤리"`
- **Fix**: Script grep `[가-힯]` + `[一-鿿]` trong text_vi/translation/meaning, replace bằng tiếng Việt thuần

### 2. R_0242 câu 2 guide sai morphology (Linguist critical)
- Guide gọi `焦らず` là "ない形 của 焦る" — SAI
- **Fix**: Đổi → `連用形 + ず (dạng phủ định cổ điển/văn viết, tương đương ないで)`

### 3. R_0245 câu 8 guide sai morphology (Linguist critical)
- Guide gọi `おり` là "dạng rút gọn formal của おいて" — SAI
- **Fix**: Đổi → `おり là 連用形 của 居る (おる), tương đương ていて trong văn nói formal`

### 4. R_0244 metadata trộn (Linguist critical)
- Tags trộn ngữ pháp + vocabulary (`批判的思考`, `体験学習` không phải grammar)
- grammar_used chỉ có 3 mục (mismatch với tags 5)
- **Fix**: Bỏ `批判的思考` `体験学習` khỏi tags HOẶC thêm vào grammar_used (nếu là pattern)

### 5. R_0244 Q2 không có cơ sở văn bản (Pedagogue critical)
- Đáp án A "テストの記憶が短期的" — bài không nói; là suy luận của người ra đề
- **Fix**: Rewrite Q2 dựa vào câu rõ ràng hơn HOẶC reword đáp án để paraphrase câu 12 thay vì suy luận ngầm

### 6. R_0244 thiếu 「主体的・対話的で深い学び」 (Domain critical)
- Bài giáo dục cải cách 2020+ mà không có term chính của 学習指導要領
- **Fix**: Thêm 1 câu `「主体的・対話的で深い学び」を目指すアクティブ・ラーニングが導入されている。` (sc +1)
- Vocab thêm `主体的・対話的で深い学び` HOẶC `アクティブ・ラーニング`

### 7. Pattern overuse (Linguist major) — 8/10 bài
- R_0241 を踏まえて×6 + に応じて×5
- R_0245 をめぐって×6 + において×5 (worst register)
- R_0246 を心がける×9 (worst overall) + に努める×6
- R_0248 ながら×7 + に配慮して×5
- R_0249 に伴い×7 + をはじめとする×6
- R_0250 を通じて×5 + とともに×5
- R_0242 てならない×4
- R_0244 によれば×4 + に向けて×4
- **Fix**: Cap ≤4 lần/pattern. Replace bằng synonym (をめぐって→について, を心がける→ようにしている, に伴い→とともに, をはじめとする→など)

### 8. Bloom Recall heavy (Pedagogue critical)
- 55% Q là Recall, chỉ 8% Analyze; spec yêu cầu ≥2/4 inference
- 6 bài fail (R_0241, R_0243, R_0244, R_0247, R_0248, R_0250)
- **Fix khuyến nghị 4 bài**: Convert Q3 hoặc Q4 thành true Inference:
  - R_0241 Q3 → "Tác giả ngụ ý gì khi nói 国民の信頼を踏まえた上で初めて?"
  - R_0247 Q1/Q2 → "Theo bài, người chỉ tập trung 個人の生産性 sẽ gặp vấn đề gì?"
  - R_0248 Q1 → Inference về tinh thần "ăn ở"
  - R_0250 Q2/Q3 → Inference về thay đổi của parenting

### 9. R_0243 vocabulary N1 leak (Linguist + Pedagogue major)
- 形骸化, 対抗軸, 堕する, 在り方 ở mức N2-N1
- **Fix**: Thay 堕する → なる + 形骸化, hoặc 陥る. Giữ 形骸化 nếu giải thích vocab rõ

### 10. R_0243 translation 対抗軸 sai (Linguist major)
- "trục phản chiếu" — SAI nuance. 対抗軸 = "trục đối kháng/phản đề"
- **Fix**: Đổi → "trục đối kháng" HOẶC "lực đối trọng"

### 11. R_0249 thiếu ChatGPT/生成AI (Domain major)
- Bài AI 2026 mà không nhắc 生成AI
- **Fix**: Add 1 câu `2022年のChatGPTの登場以来、生成AIは社会の様々な分野に影響を与えている。` (sc +1)
- Vocab thêm `生成AI` HOẶC `ChatGPT`

### 12. R_0250 thiếu こども家庭庁 + 男性育休 (Domain major)
- Parenting 2026 thiếu 2 trends quan trọng nhất 2023-2024
- **Fix**: Add 1 câu `近年は男性の育児休業の取得も増えており、社会全体で子育てを支える動きが広がっている。`

### 13. R_0241 thiếu 異次元の少子化対策 (Domain major)
- Bài "少子高齢化 + 育児支援/無償化" mà không có chính sách 2023+
- **Fix**: Add 1 câu reference `児童手当の拡充や高校授業料無償化など` (sc +1)

### 14. Distractor 180° contrast (Pedagogue major) — 4 bài
- R_0241 Q2, R_0245 Q1, R_0247 Q4, R_0249 Q1
- **Fix**: Replace bằng partial-truth (sai 1 chi tiết)

### 15. Length asymmetry distractor (Pedagogue major) — 3 bài
- R_0241 Q1, R_0244 Q4, R_0248 Q1
- **Fix**: Pad distractor lên ngang đáp án đúng (chênh ≤20%)

### 16. R_0252 (placeholder — chỉ kiểm tra batch 0241_0250) — không applicable

## P2 — Should fix
17. R_0245 thiếu 2050年カーボンニュートラル + GX
18. R_0247 thiếu テレワーク/Web会議 context
19. R_0248 thiếu オーバーツーリズム + 富士山入山料 2025
20. R_0242 thiếu 働き方改革 + パワハラ防止法
21. Translation polish (R_0241 厳しい判断 → "đánh giá khắt khe", R_0244 文部科学省 unify)

## Action plan
- 16 P1 critical/major
- 5 P2 nếu time
