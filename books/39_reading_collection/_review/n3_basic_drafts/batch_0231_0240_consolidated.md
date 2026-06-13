# Consolidated Fix List — batch_0231_0240 (cấp 5)

## Score
- Linguist: 2 critical, ~17 major
- Pedagogue: 2 critical (Q3 Recall summary 8/10, length-bias 6/10), 5 major
- Domain: 2 critical (R_0235 thiếu 熱中症警戒アラート, R_0237 sai レジ袋有料化 luật toàn quốc), 4 major

## P1 — MUST FIX

### 1. R_0233 câu 12 — `未来をこめて` collocation impossible (Linguist critical)
- をこめて gắn với 心/愛/気持ち/感謝/祈り/願い (cảm xúc trừu tượng), KHÔNG gắn với 未来 (thời gian)
- **Fix**: Đổi → `お子さんの未来への願いをこめて、温かい目で見守ってほしい`

### 2. R_0234 câu 12 — `その言葉らしい気持ち` SAI nghĩa らしい (Linguist critical)
- らしい sau danh từ = "đúng kiểu" (子どもらしい) — không thể "その言葉らしい気持ち"
- **Fix**: Đổi → `私もその言葉に込められた気持ちを共有した` HOẶC `私も同じ気持ちだった`

### 3. R_0235 — Add 熱中症警戒アラート 2024 (Domain critical)
- Bài health mùa hè mà không nhắc アラート quốc gia + WBGT + OS-1 (経口補水液)
- **Fix**: Add 1 câu `近年は環境省の「熱中症警戒アラート」も発表されるようになり、暑い日は特に注意が必要だ。` (sentence_count +1) + add 1 câu về `経口補水液や塩分の補給` thay cho lore "uống lạnh đau bụng"
- Vocab thêm `熱中症警戒アラート` HOẶC `経口補水液`

### 4. R_0237 — Sửa レジ袋 sai luật (Domain critical)
- Câu `このスーパーでは、レジ袋は有料` ngụ ý quy định riêng — SAI factual
- Reality: 1/7/2020 toàn quốc (容器包装リサイクル法)
- **Fix**: Đổi → `2020年から、日本ではレジ袋は有料ということになっているので…`

### 5. R_0240 câu 7 — `気持ちをこめて机に向かう` collocation forced (Linguist major)
- をこめて modify hành động creative/expressive, không modify "ngồi vào bàn"
- **Fix**: Đổi → `強い気持ちで毎日机に向かい` HOẶC `気合を入れて毎日机に向かい`

### 6. Q3 Recall summary thay vì Inference (Pedagogue critical) — 8/10 bài
- 8 bài Q3 chỉ paraphrase câu kết bài 1:1
- Bài: R_0231, R_0232, R_0233, R_0234, R_0236, R_0237, R_0238, R_0239
- **Fix khuyến nghị 4 bài**:
  - R_0231 Q3 → Inference ("Tác giả ngụ ý gì khi gọi izakaya là 'nơi kết nối'?")
  - R_0233 Q3 → Inference ("Có thể suy luận gì về cảm xúc của nhân vật chính khi trở thành thầy giáo?")
  - R_0234 Q3 → Inference ("Tại sao tác giả nhấn mạnh 'lại đến năm sau'?")
  - R_0238 Q3 → Inference ("Có thể suy ra điều gì về phương pháp dạy của thầy?")

### 7. Length-bias distractor (Pedagogue critical) — 6 bài
- R_0231 Q1, R_0232 Q1, R_0233 Q2 (50 chars vs 6-10!), R_0235 Q3, R_0239 Q2 (60 chars vs 8-12!), R_0240 Q3
- **Fix**: Pad distractor lên ngang đáp án đúng (chênh ≤20%)

### 8. Pattern overuse (Linguist major) — 8/10 bài
- R_0232: 向き×5+わりに×5, R_0233: 際に×7+について×5, R_0234: らしい×5+ば～ほど×5, R_0235: ように×5+がち×5, R_0236: て以来×5+って×7, R_0237: ところ×5, R_0238: にもとづいて×4+通り×4+をもとに×4 = 12/13, R_0239: において×6
- **Fix**: Cap ≤4 lần/pattern. Replace bằng synonym

### 9. R_0236 câu 11 — `〜て以来` sai sắc thái (Linguist major)
- 〜て以来 = duration kéo dài; câu describe instantaneous "あっという間に戻った気がした" — mâu thuẫn
- **Fix**: Đổi → `話していると、私たちはあっという間に高校生のころに戻った気がした` (bỏ て以来)

### 10. R_0239 において register mismatch (Linguist major)
- において formal × 6 trong tự sự personal về CLB hàng xóm
- **Fix**: Downgrade 4-5 lần において → では/で. Chỉ giữ 1-2 lần ở context formal

### 11. R_0232 — Add 初期費用/保証会社 (Domain major)
- Bài tìm trọ mà thiếu chi tiết Nhật cốt lõi
- **Fix**: Add 1 câu `家賃のほかに、敷金・礼金などの初期費用や保証会社も準備しないといけない。`
- Vocab thêm `初期費用` HOẶC `保証会社`

### 12. R_0231 — Add ノンアル + お通し (Domain major)
- Izakaya 2026 thiếu trend Gen Z + chi tiết văn hóa
- **Fix**: Add 1 câu `最近はノンアルコールビールを頼む若い人も増えている。お通しも出てくるのが居酒屋らしい。`
- Vocab thêm `ノンアル` HOẶC `お通し`

### 13. R_0239 — Add LINE/町内会 (Domain major)
- Bài 地域サークル mà analog hoàn toàn (掲示板)
- **Fix**: Add 1 câu `今ではLINEグループでイベントの連絡をしている` HOẶC mention `回覧板`/`町内会`

### 14. R_0240 câu 5 `に対し` register (Linguist minor → major)
- に対し formal cứng cho quan hệ thầy-trò warm
- **Fix**: Đổi 2-3 lần `に対し` → `に対して` cho mềm hơn

### 15. Distractor 180° contrast (Pedagogue major) — 4 bài
- R_0234 Q3, R_0236 Q3, R_0237 Q3, R_0240 Q3
- **Fix**: Replace bằng partial-truth (sai 1 chi tiết, không 180°)

### 16. R_0233 cognitive overload (Pedagogue major)
- 際に×7 + について×5 + をこめて×4 trong 14 câu
- **Fix**: Giảm về ≤4 lần/pattern (đồng bộ Linguist mục 8)

## P2 — Should fix
17. R_0240 add 縦書き / 拝啓-敬具 mention
18. R_0238 vocab add 千利休, 主菓子, 干菓子
19. R_0234 câu 10 `赤からオレンジにかけて` color spectrum non-canonical
20. Translation polish (における → "trong" thay "tại", 水そのもの → "nước lọc")
21. R_0235 reading こまめに inconsistency

## Action plan
- 16 P1 critical/major
- 5 P2 nếu time
