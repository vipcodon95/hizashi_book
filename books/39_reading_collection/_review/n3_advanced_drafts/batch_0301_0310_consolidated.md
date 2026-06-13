# Consolidated Fix List — batch_0301_0310 (cấp 6)

## Score
- Linguist: 7 critical (R_0301 dịch どころか sai, R_0303 reading 確固たる, R_0303 collocation 普及を広める, R_0304 metadata にすぎない không có, R_0306 tag-text mismatch, pattern overuse vượt ngưỡng), 14 major
- Pedagogue: 28 critical cumulative (Q2 không cause 9/10, 0/4 Inference 6/10, Q4 copy câu cuối R_0301+R_0308, R_0306 meta-Q excess, R_0308 trivia question, sentence flat 10/10), 14 major
- Domain: 2 critical (R_0304 EV reality Nhật bị lờ, R_0308 missing 孤独・孤立担当大臣 + 推進法 2024), 16 major

## P1 — MUST FIX

### 1. R_0303 vocab `確固たる` reading sai (Linguist critical)
- Listed `かっことたる` — sai
- **Fix**: Đổi → `かっこたる`

### 2. R_0303 collocation `普及を広める` lỗi (Linguist critical)
- 普及 + 広める = 重複 (cùng nghĩa lan rộng)
- **Fix**: Đổi → `普及させる` HOẶC đơn giản `広める`

### 3. R_0301 câu 8 dịch `どころか` đảo logic (Linguist critical)
- `Aどころか B` = "không phải A mà còn B (hơn cả A)"
- **Fix**: Đổi dịch → "Không chỉ buộc phải tiếp tục canh tác trong gian khó mà cuối cùng còn bị buộc phải đóng cửa"

### 4. R_0304 metadata `にすぎない` không có trong text (Linguist critical)
- grammar_used liệt kê nhưng text không có
- **Fix**: Bỏ `にすぎない` khỏi grammar_used HOẶC thêm câu dùng pattern

### 5. R_0306 tag `を活かして` vs text `を活かしながら` mismatch (Linguist critical)
- **Fix**: Unify metadata theo form thực tế trong text

### 6. R_0301/R_0302/R_0303 pattern overuse (Linguist critical)
- R_0301: `を余儀なくされる` 3 lần (câu 8 lặp 2 lần liên tiếp); `をもたらす` 4 lần
- R_0302: `に関係する` 5+ lần; `が不可欠だ` 4 lần
- R_0303: `を広める/広まる` overused; `に認められる` 5 lần
- **Fix**: Cap ≤4 lần/pattern. Replace bằng synonym

### 7. R_0308 — Add 孤独・孤立担当大臣 2021 + 推進法 2024 (Domain critical)
- Bài cô đơn đô thị 2026 không nhắc Nhật đã có cơ quan + luật chính thức
- **Fix**: Add 1 câu `日本も2021年に「孤独・孤立対策担当大臣」を設置し、2024年4月には「孤独・孤立対策推進法」が施行された。` (sc +1)
- Vocab thêm `孤独・孤立対策推進法`

### 8. R_0304 — EV reality Nhật 2024-2026 (Domain critical)
- Bài lờ đi Nhật chậm EV (~3.5%), Toyota 全方位, 全固体電池
- **Fix**: Đổi câu nói "新型ガソリン車の開発を縮小し" → balanced view. Add 1 câu `日本ではトヨタなど多くのメーカーがハイブリッドや全固体電池の開発も進めている。` (sc +1)
- Vocab thêm `全固体電池` HOẶC `ハイブリッド車`

### 9. Q2 không phải cause/why (Pedagogue critical) — 9/10 bài
- 9/10 Q2 không dùng なぜ/どうして
- **Fix khuyến nghị 6 bài**: Rewrite Q2 → なぜ/どうして
  - R_0301 Q2 → "Tại sao 干ばつ gây thiệt hại nặng cho nông dân?"
  - R_0302 Q2 → "Tại sao thiếu ngủ ảnh hưởng não?"
  - R_0303 Q2 → "Tại sao washoku được thế giới đón nhận?"
  - R_0307 Q2 → "Tại sao thiết kế tốt cần cân bằng?"
  - R_0309 Q2 → "Tại sao vaccine quan trọng?"
  - R_0310 Q2 → "Tại sao 発酵食品 tốt cho sức khỏe?"

### 10. Inference Q3-Q4 chỉ 22.5% (Pedagogue critical)
- 7/10 bài có 0-1/4 inference (target ≥2/4)
- **Fix**: Convert Q3 hoặc Q4 → Inference cho 6 bài (R_0301, R_0302, R_0303, R_0307, R_0308, R_0309)
- Q4 cấm copy câu cuối literal (R_0301, R_0308)

### 11. R_0306 meta-grammar excess 2/4 (Pedagogue critical)
- Q2 (磨いていく) + Q3 (三つの柱) đều meta-grammar
- **Fix**: Convert Q2 → cause/inference; giữ Q3 hoặc rewrite

### 12. R_0306 Q4 length giveaway (Pedagogue critical)
- Đáp án đúng C 42 chars vs 21-26 distractor
- **Fix**: Pad distractor / shorten đáp án đúng xuống ≤30 chars

### 13. R_0308 R_0301 Q4 copy câu cuối (Pedagogue critical)
- R_0301 Q4 paraphrase câu 15 literal "持続可能な水管理"
- R_0308 Q4 copy câu 15 literal "恥ずかしいこと vs 普通のこと"
- **Fix**: Đáp án đúng paraphrase xa câu kết

### 14. R_0308 Q3 trivia about UK (Pedagogue critical)
- Q3 hỏi địa lý UK — không xứng cấp 6 N3
- **Fix**: Convert Q3 → Inference về tâm lý cô đơn / nguyên nhân

### 15. Sentence count flat 15 (Pedagogue critical) — 10/10 bài
- **Fix**: Add câu cho ≥4 bài (do mục Domain) → variance 16-17

### 16. Distractor extreme words 7 bài (Pedagogue major)
- 「唯一/全て/決して/完全に/だけ/のみ/最も/100%」
- Bài: R_0301 (完全に), R_0303 (最も健康的), R_0305 (唯一+普遍的+最も effective), R_0306 (他のスキルは不要+完璧), R_0307 (完全に無視), R_0309 (完全に撲滅+すべて+禁止), R_0310 (打ち消し合う+区別する必要はない)
- **Fix**: Replace bằng partial-truth / nuance

### 17. R_0303 — Add 日本酒 UNESCO 2024 (Domain major)
- Update mới nhất Dec 2024 cùng topic
- **Fix**: Add 1 câu `2024年12月には「伝統的酒造り」もユネスコ無形文化遺産に登録された。` (sc +1)
- Vocab thêm `伝統的酒造り`

### 18. R_0302 — Update khuyến nghị 厚労省 2024 (Domain major)
- "7-9 giờ" outdated; phải dùng 厚労省「健康づくりのための睡眠ガイド2023」 (公表 2024)
- **Fix**: Đổi câu khuyến nghị → "成人 6時間以上、高齢者 床上時間8時間未満" theo guide MHLW 2024

### 19. R_0301 — Add Japan reality (Domain major)
- Bài 干ばつ thiếu米不足 2024/讃岐平野/早明浦ダム
- **Fix**: Add 1 câu reference Nhật hoặc mention 線状降水帯/熱中症警戒アラート

### 20. R_0306 — Add リスキリング/Web面接 (Domain major)
- Bài career 2026 outdated
- **Fix**: Add 1 câu `近年は「リスキリング」やWeb面接など、職場のあり方も変化している。`
- Vocab thêm `リスキリング`

### 21. R_0307 — Add MUJI/わびさび (Domain major)
- Bài design Nhật thiếu icon thực tế
- **Fix**: Add 1 câu `無印良品（MUJI）のように、シンプルで「わびさび」の精神を取り入れたデザインも世界で評価されている。`
- Vocab thêm `わびさび` HOẶC `無印良品`

### 22. R_0309 — Add HPV積極的勧奨再開 2022 (Domain major)
- Bài vaccine thiếu Nhật-specific 2022 reform
- **Fix**: Add 1 câu `2022年4月にはHPVワクチンの積極的勧奨が再開され、キャッチアップ接種も進められている。`

### 23. R_0310 — Add 麹菌「国菌」 + 紅麹問題 2024 (Domain major)
- Bài 発酵 thiếu 国菌 (2006 chỉ định) + 2024 scandal
- **Fix**: Add 1 câu `日本では「麹菌」が国菌として親しまれているが、2024年の紅麹問題で発酵食品の安全性も注目されている。`
- Vocab thêm `麹菌`

### 24. R_0301 dịch `効果` collocation (Linguist major)
- 「効果をもたらす」 bookish; native dùng `効果をあげる/発揮する`

### 25. R_0302 vocab `定着させる` causative form (Linguist major)
- **Fix**: Đổi → `定着する` dictionary form

### 26. R_0306 dịch câu 11 nuance (Linguist major)
- `バランス感覚が問われる` → "cần có" mất nuance
- **Fix**: Đổi → "khả năng cân bằng bị xã hội đánh giá/đặt thành thử thách"

### 27. R_0308 dịch câu 11 (Linguist major)
- "có nhiều người chuyển nhà" — sai logic
- **Fix**: Đổi → "ở đô thị thường xuyên có người chuyển nhà"

### 28. Length giveaway Q4 (Pedagogue major) — 4 bài
- R_0301, R_0306, R_0309, R_0310
- **Fix**: Normalize length distractor

## P2 — Should fix
29. R_0307 add GOOD DESIGN AWARD
30. R_0305 add 空気を読む / 本音と建前 / 以心伝心
31. R_0304 add MIRAI/水素社会
32. R_0302 add 睡眠負債 / オレキシン受容体拮抗薬
33. R_0301 add 線状降水帯
34. R_0309 add 国産mRNA/5類移行 2023

## Action plan
- 28 P1 critical/major
- 6 P2 nếu time
