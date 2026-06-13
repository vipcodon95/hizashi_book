# Consolidated Fix List — batch_0251_0260 (cấp 6)

## Score
- Linguist: 3 critical, 21 major
- Pedagogue: 3 critical (meta-grammar Q lạm dụng 7/10 + thiếu cause Q 7/10 + length giveaway Q4 8/10), 3 major
- Domain: 1 critical (R_0256 民泊新法 missing), ~20 major

## P1 — MUST FIX

### 1. R_0252 câu 11 — `かどうかとは限らない` SAI grammar (Linguist critical)
- とは限らない không đứng sau câu hỏi gián tiếp かどうか
- **Fix**: Đổi → `情報が正確かどうか分からない状況でも` HOẶC `情報が正確とは限らない状況でも`

### 2. R_0256 câu 4-5 — `動詞 + に代わって` SAI form (Linguist critical)
- に代わって gắn với DANH TỪ. Với động từ phải dùng `代わりに`
- **Fix**: Đổi → `自動車を買う代わりに、カーシェアリングサービスを…` + `ホテルに泊まる代わりに、…`

### 3. R_0259 câu 6 — `を経て` SAI semantic (Linguist critical)
- を経て chỉ "trải qua quá trình/thời gian", không dùng với danh từ vật lý 街並み
- **Fix**: Đổi → `新しい街並みのもとで、地域の人々は少しずつ日常を取り戻していった` HOẶC `新しい街並みが整う中で…`

### 4. R_0256 — Add 民泊新法 2018 + 2024-2025 民泊 reality (Domain critical)
- Bài シェアリング 2026 thiếu luật trụ cột về 民泊
- **Fix**: Add 1 câu `2018年に施行された住宅宿泊事業法（民泊新法）により、宿泊サービスを提供できる日数が制限されている。` (sc +1)
- Vocab thêm `民泊新法` HOẶC `住宅宿泊事業法`

### 5. Meta-grammar Q lạm dụng (Pedagogue critical) — 7/10 bài
- 7 bài có Q dạng "Xという表現の意味は?": R_0253 Q2, R_0254 Q1, R_0256 Q1, R_0257 Q1+Q2, R_0258 Q1, R_0259 Q2, R_0260 Q2
- R_0257 chiếm 2/4 — worst
- **Fix khuyến nghị 4 bài**: Convert sang reading comprehension Q (cause / inference):
  - R_0254 Q1 → "Tại sao quy hoạch đô thị 2026 đề cao chất lượng cuộc sống?"
  - R_0257 Q1 → Cause/why
  - R_0258 Q1 → Inference về vai trò ngôn ngữ
  - R_0259 Q2 → Cause/why "Tại sao 復興 mất hơn 10 năm?"

### 6. Thiếu cause Q (Pedagogue critical) — 7/10 bài
- Spec yêu cầu 1 sự thật + 1 nguyên nhân + 1-2 suy luận
- 7 bài thiếu hoàn toàn Q dạng なぜ/どうして
- **Fix**: Q2 mỗi bài rewrite thành cause Q (なぜ/どうして) — kết hợp với mục 5

### 7. Length giveaway Q4 main idea (Pedagogue critical) — 8/10 bài
- Đáp án đúng dài 1.5-2x distractor (R_0251 76 vs 22-30 chars, R_0254 49 vs 24-30, R_0256 60 vs 22-36)
- Bài: R_0251, R_0252, R_0254, R_0255, R_0256, R_0258, R_0260, R_0259
- **Fix**: Shorten đáp án đúng paraphrase ngắn HOẶC pad distractor

### 8. Pattern overuse (Linguist major) — 8/10 bài
- R_0251 を反映する×6 + に由来する×5
- R_0254 をもって sai collocation câu 7-8
- R_0255 なければならない×5
- R_0256 が広まる×5 + 課題も広まっている (semantic mismatch)
- R_0257 明らかになる×6 + をきっかけとして×4
- R_0258 においても×6 (worst) + を活かす×7 (worst) + にかかわる×4
- R_0260 を表現する×5
- **Fix**: Cap ≤4. Replace bằng synonym (においても→という点でも, 明らかになる→解明される/判明する, を反映する→を映し出す)

### 9. R_0254 — `をもって` collocation sai câu 7-8 (Linguist major)
- 環境への配慮をもって/市民の意見をもって — bookish translation-Japanese
- **Fix**: Đổi → `をもとに(して)`. Câu 15 「満足度をもって測られる」 giữ (collocation chuẩn)

### 10. R_0256 — `課題も広まっている` semantic mismatch (Linguist major)
- 課題 không "広まる" theo nghĩa positive
- **Fix**: Đổi → `課題も増えている` HOẶC `課題も浮上している`

### 11. R_0252 — Add ChatGPT/生成AI/能登 (Domain major)
- Bài media literacy 2026 thiếu hoàn toàn 生成AI + AI幻覚 + Deepfake
- **Fix**: Add 1 câu `近年は生成AIによる誤情報やディープフェイクなど、新たな問題も生まれている。`
- Vocab thêm `生成AI` HOẶC `ディープフェイク`

### 12. R_0251 — Add 和食 UNESCO + Nhật-specific (Domain major)
- Bài food culture cho người học Nhật mà không có 和食/ramen-Trung Quốc
- **Fix**: Add 1 câu `日本の和食は2013年にユネスコの無形文化遺産に登録された。`
- Vocab thêm `無形文化遺産`

### 13. R_0257 — Add JAXA / SLIM (Domain major)
- Bài vũ trụ thiếu thành tựu Nhật 2024 (SLIM moon landing)
- **Fix**: Add 1 câu `日本のJAXAも、2024年に月面着陸を成功させた。`
- Vocab thêm `JAXA` HOẶC `月面着陸`

### 14. R_0260 — Add チームラボ/草間彌生 (Domain major)
- Bài 現代アート mà không có Nhật-specific
- **Fix**: Add 1 câu `チームラボの作品のように、デジタル技術を取り入れたアートも世界的に注目されている。`
- Vocab thêm `デジタルアート`

### 15. R_0259 — Add 能登 / 警戒レベル (Domain major)
- Bài 復興 2026 mà không nhắc 能登半島地震 2024
- **Fix**: Add 1 câu `2024年の能登半島地震でも、再び長い復興の道のりが始まっている。`
- Vocab thêm `警戒レベル` HOẶC `防災`

### 16. Distractor 180° contrast / irrelevant (Pedagogue major) — 5 bài
- R_0252 Q3 (使わない), R_0253 Q4 (気に入られる), R_0255 Q3D (急がなくていい), R_0256 Q4 (成長止まった), R_0258 Q3 (irrelevant 3 distractor)
- **Fix**: Replace bằng partial-truth / plausible learner mistake

### 17. R_0258 — Add 在留外国人 + やさしい日本語 (Domain major)
- Bài đa ngôn ngữ thiếu Nhật reality 2024
- **Fix**: Add 1 câu `在留外国人が3百万人を超えた今、やさしい日本語などの取り組みも広がっている。`

### 18. R_0252 translation câu 11 (Linguist minor → major)
- 判断 dịch "phán quyết" — sai register (luật pháp)
- **Fix**: Đổi → "phán đoán" HOẶC "quyết định"

### 19. R_0254 explanation typo `ni沿って` (Linguist major)
- Mix romaji + kanji
- **Fix**: Đổi → `に沿って`

## P2 — Should fix
20. R_0253 add ジョブ型雇用/リスキリング modern context
21. R_0254 add コンパクトシティ + 過疎化
22. R_0255 add トキ/環境省 レッドリスト Nhật-specific
23. R_0260 add 生成AI + 著作権 issue
24. Translation refinements (R_0255 "hơn" thừa, R_0254 câu 13 lủng củng)

## Action plan
- 19 P1 critical/major
- 5 P2 nếu time
