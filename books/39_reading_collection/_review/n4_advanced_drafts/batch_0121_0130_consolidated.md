# Consolidated Fix List — batch_0121_0130

## Score
- Linguist: 3 critical (metadata mismatch), 12 major, 8 minor
- Pedagogue: 2 critical (Q2 2/10, Q3 5/10 regression), 1 major, 6 minor
- Domain: 1 critical (R_0122 email), 3 major, 4 minor

---

## P1 — MUST FIX

### 1. Metadata sync (Linguist 3 critical)
- **R_0123 grammar_used**: thêm `〜(ら)れる (受身)` (text dùng nhiều bị động)
- **R_0125 grammar_used**: thêm `〜ことができる`
- **R_0126 grammar_used**: thêm `〜てみる`

### 2. R_0122 Email format (Domain critical)
- Thiếu 自己紹介 + signature
- 「連絡していただけませんか」 hơi 失礼 với sếp
- **Fix**: 
  - Thêm 1 câu sau `お疲れ様です` → `営業部のリンです。`
  - Đổi câu 11 `連絡していただけませんか` → `ご連絡いただければ幸いです`
  - Có thể thêm signature cuối email

### 3. Q2 Apply boost — 4 bài (Pedagogue critical, đang 2/10)
- **R_0124 Q2**: đổi từ "Bạn nhà thiết kế nói gì" (Recall) → "Tại sao lời nói của bạn nhà thiết kế giúp người này quyết định?" (Apply)
- **R_0127 Q2**: đổi từ trích lịch trình → "Lý do người này chọn 山形 ngày 3 thay vì khác?" (Apply)
- **R_0129 Q2**: đổi từ "Xe bus thế nào" (Recall) → "Theo bài này, ai phù hợp đi tàu hơn xe bus?" (Apply scenario)
- **R_0130 Q2** (đã Inference, giữ)

### 4. Q3 Inference boost — 5 bài (Pedagogue critical)
- **R_0121 Q3**: đổi từ "định làm gì lần sau" (Recall trích nguyên văn) → "Bài học rút ra từ trải nghiệm này là gì?" (Inference)
- **R_0123 Q3**: đổi → "Tính cách người này thể hiện qua cảm xúc với 昇進 là gì?" (Inference)
- **R_0124 Q3**: đổi → "Thái độ người này về tương lai thế nào?" (Inference)
- **R_0127 Q3**: đổi → "Người này có vẻ là người du lịch như thế nào?" (Inference từ chi tiết chuẩn bị)
- **R_0128 Q3**: đổi → "Tác giả khuyên người chưa quen Nhật nên chọn gì?" (Apply/Inference)

### 5. R_0126 — Add 開業届/platform reality (Domain major)
- Bài về ネットショップ thiếu mention pháp lý
- **Fix**: Thêm 1 câu hoặc vocab về platform: vd `BASEというサービスで店を作りました。` HOẶC giữ nhưng add note
- Optional: Add `税金` vocab

### 6. R_0128 — Modernize 民泊 (Domain major)
- "鍵の場所がわからなくて困った" outdated 2017-style
- **Fix**: Đổi → `スマートロックの使い方がわからなくて困りました` HOẶC `Wi-Fiのパスワードがわからなくて困った` (modern minpaku reality)

### 7. R_0127 — Add 福島 (Domain major)
- Title 東北 nhưng chỉ có 仙台+山形, miss 福島
- **Fix**: Thêm 1 câu mention 福島温泉: vd `4日目は福島の温泉に泊まる予定です。` (sentence_count +1)

### 8. R_0123 リーダー context (Domain minor → upgrade major)
- リーダー không phải chức danh formal, JP truyền thống dùng 主任/係長
- **Fix**: Có thể giữ リーダー (modern startup context) HOẶC đổi → `主任` 
- Có thể thêm note context startup/IT

### 9. R_0124 でも vs ても (Linguist major)
- Câu 7 `大変でも` — guide ghi `ても` nhưng đây là `でも` (na-adj/N + でも)
- **Fix**: Process guide đổi → "でも = な-adj/danh từ + でも (form khác với V-て+ も)"

### 10. R_0127 process câu 6 (Linguist major)
- `日本三景の一つで` guide ghi "tính từ な" → SAI
- **Fix**: "danh từ + で (te-form copula của だ)"

### 11. R_0123 câu 2 clunky (Linguist major)
- `リーダーになることになったと言われました` — double clunky
- **Fix**: Đổi → `来月からリーダーになると言われました` HOẶC `リーダーに昇進することになったと聞きました`

### 12. R_0125 câu 11 (Linguist major)
- `同じフリーランスの人たち` bookish
- **Fix**: Đổi → `フリーランス仲間` (collocation chuẩn) HOẶC `他のフリーランスの人たち`

### 13. Distractor 180° contrast (Pedagogue major, 5 cases)
- R_0122 Q1, R_0123 Q2, R_0124 Q1, R_0127 Q3, R_0130 Q2 đều có distractor mâu thuẫn 180° với bài
- **Fix**: Thay distractor giveaway thành "lệch nhẹ realistic confusion"

---

## P2 — Should fix

### 14. R_0130 typo `ずっt` → `ずっと` (Linguist minor)

### 15. R_0125 vocab フリーランス redundant
- Có thể đổi sang vocab khác

### 16. R_0126 thêm vocab 諦める
- Hiện text dùng 諦めそうになりました nhưng 諦める không có vocab

### 17. R_0128 vocab 迷っています form
- Đổi → base form 迷う

### 18. R_0121 process câu 7 — phân biệt 2 と
- Conditional と vs quotative と trong cùng câu

### 19. R_0125 + R_0126 process — phân biệt 2 のに
- Concessive vs regret-suggestion

### 20. Tags taxonomy
- Audit tags chỉ chứa particles thuần

### 21. R_0129 立ったままで → 立ちっぱなしで (natural)

### 22. R_0123 — Thêm 飲み会/お祝い với đồng nghiệp
- Cultural complete

---

## P3 — Skip

- R_0122 humble form かけませんか acceptable N4
- R_0126 そうになる out-of-N4 (acceptable)
- R_0129 ICカード/定期券 vocab
- R_0130 typo nhỏ
- Format diversity (cần ở batch khác)

---

## Action plan

### P1 Critical/Major (13):
1. Metadata sync 3 bài
2. R_0122 email format + 自己紹介 + signature
3. Q2 Apply boost 3 bài (R_0124, R_0127, R_0129)
4. Q3 Inference boost 5 bài
5. R_0126 BASE platform mention
6. R_0128 modernize スマートロック
7. R_0127 福島 add
8. R_0123 リーダー context
9. R_0124 でも vs ても guide
10. R_0127 process な-adj fix
11. R_0123 câu 2 simplify
12. R_0125 câu 11 natural
13. Distractor 5 bài 180°

### P2 (9):
14-22 chọn 5 quan trọng nhất
