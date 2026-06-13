# Consolidated Fix List — batch_0101_0110 (cấp 4 N4_advanced batch đầu)

## Score
- Linguist: 1 critical, 5 major, 8 minor
- Pedagogue: 1 critical (Q2 Apply 0-2/10), 4 major, 5 minor
- Domain: 0 critical, 4 major, 7 minor

---

## P1 — MUST FIX

### 1. R_0103 process câu 7 — `のに` concessive vs purpose (Linguist critical)
- `返品するのに、送料を自分で払いました` — guide ghi "のに 'để mà' (mục đích)" SAI
- Đây là `のに` concessive ("mặc dù trả lại hàng mà còn phải tự trả phí")
- **Fix**: 
  - Process guide: "のに concessive: 'mặc dù trả lại hàng, mà còn phải tự trả phí ship' (KHÁC のに mục đích chỉ dùng với danh từ)"
  - Translation: "Trả lại hàng mà còn phải tự trả phí ship"

### 2. Q2 Apply boost (Pedagogue critical, 0-2/10 → target 4/10)
- 8/10 bài Q2 chỉ Recall
- **Fix khuyến nghị (chọn 4 bài quan trọng)**:
  - R_0103 Q2: đổi từ "bạn mua gì" → "Nếu bạn muốn tiết kiệm thời gian, bạn nên chọn ネット hay 店?" (apply)
  - R_0106 Q2: đổi → "Phương pháp nào hiệu quả nhất để bỏ thói xấu, theo bài đọc?" (apply theo causality)
  - R_0107 Q2: đổi → "Tại sao kế hoạch BBQ chuyển sang 鍋?" (apply causality - mưa)
  - R_0110 Q2: đổi → "Tại sao tác giả cảm động khi con không khóc nữa?" (apply emotion)

### 3. R_0102 vocab `挑戦する` translation false friend (Linguist major)
- "thử thách" → false friend (nghĩa Việt: đặt thử thách)
- **Fix**: Đổi vocab meaning + translation câu 8 → "thử sức"

### 4. R_0108 grammar_used metadata mismatch (Linguist major)
- Liệt kê `ことができます` và `たら` nhưng text KHÔNG có
- **Fix**: Bỏ khỏi grammar_used. Thêm note về mệnh đề quan hệ (relative clauses) nếu spec cho phép

### 5. R_0107 — BBQ ở công viên (Domain major)
- Nhiều 公園 Nhật cấm BBQ (球技禁止 + 火気禁止)
- **Fix**: Đổi `公園でバーベキュー` → `公園ピクニック` HOẶC clarify `BBQができる公園` (chỉ rõ là công viên cho phép). Update process + translation.

### 6. R_0101 — 遅刻 culture (Domain major)
- Tới 9:15 trễ 30 phút thực chất (rule 15分前出社). Bài chỉ "上司にすみません" → quá nhẹ
- **Fix**: Thêm 1 câu phản ánh reality: vd `上司に電話して、遅れることを伝えました。` (Gọi điện báo trước) hoặc `「次から気をつけます」と上司に約束しました。`

### 7. R_0110 — Add 慣らし保育 (Domain major)
- 待機児童 + 慣らし保育 là khái niệm chuẩn của 保育園 quá trình
- **Fix**: Thêm 1 câu hoặc giải thích trong vocab: `初めの一週間は慣らし保育で、半日だけでした。` (sentence_count +1)
- Vocab thêm `慣らし保育` (なれらしほいく)

### 8. R_0104 + R_0106 Q3 không phải Inference (Pedagogue major)
- Q3 chỉ Recall
- **Fix**:
  - R_0104 Q3: Đổi từ "tại sao bừa" → "Tác giả học được gì sau lần dọn này?" (synthesize 2-3 câu)
  - R_0106 Q3: Đổi → "Bài học chung từ việc bỏ thói xấu là gì?" (inference)

### 9. Distractor length normalize Q3 (Pedagogue major)
- 4 bài Q3 đáp án đúng dài hơn distractors (R_0102, R_0103, R_0109, R_0110)
- **Fix**: Pad distractors lên cùng độ dài (2-clause structure)

---

## P2 — Should fix

### 10. R_0102 thêm 一汁三菜 hoặc バランス vocab
- Cultural anchor về Japan diet philosophy
- **Fix**: Có thể thêm vocab `一汁三菜` (いちじゅうさんさい)

### 11. R_0104 câu 4 — `置いてしまいました` collocation
- `置いてしまう` (đặt có chủ ý + đáng tiếc) ngữ nghĩa hơi mâu thuẫn
- **Fix**: Đổi → `服も椅子の上に積み上げてしまいました` (chất đống) HOẶC giữ + clarify guide

### 12. R_0110 process câu 7 — `朝も` guide shallow
- Guide chỉ "cả buổi sáng cũng" — chưa capture nuance
- **Fix**: Process guide đổi → "朝も = kể cả buổi sáng (vốn là lúc khóc nhiều nhất) cũng đã không còn khóc"

### 13. R_0108 — Add diversity element
- "ユニーク" nhưng nội dung 核家族 truyền thống
- **Fix**: Có thể đổi 1 element thêm diversity: vd `母 はシングルマザー` HOẶC `父はリモートワークで毎日家にいます` HOẶC giữ

### 14. R_0103 thêm キャッシュレス hoặc ポイント
- 2026 reality
- **Fix**: Có thể thêm 1 câu `ポイントもたまるので、ネットも便利です。` (skip nếu sc tăng quá)

### 15. R_0107 dịch `でも` câu 5
- `雨でも、友達と一緒なら楽しいです` dịch "Trời mưa nhưng..." — đúng nghĩa "dù trời mưa, miễn là..."
- **Fix**: "Dù trời mưa, miễn là có bạn bên cạnh thì vẫn vui"

### 16. Tags taxonomy fix (Linguist minor systemic)
- Tags trộn particles + grammar patterns
- **Fix**: Tách: tags chỉ chứa particles thuần, grammar patterns chỉ ở grammar_used

### 17. R_0101 process câu 6 — `が` conjunction nhầm naming
- `9時を過ぎてしまいましたが、上司は怒りませんでした` — guide gọi "が báo hiệu kết quả bất ngờ"
- **Fix**: Process clarify "が ở đây là conjunctive particle 'nhưng', KHÁC particle が chủ ngữ"

---

## P3 — Skip (acceptable cumulative or low priority)

- R_0107 missing 天気予報アプリ
- R_0101 missing テレワーク mention
- R_0103 デパート vs ルミネ etc
- R_0105 missing ホットケーキミックス
- R_0106 missing 残業/喫煙
- R_0109 missing 父の日
- 防災 topic missing (cần ở batch khác)

---

## Action plan

### P1 (9):
1. R_0103 のに concessive
2. Q2 Apply 4 bài (R_0103/R_0106/R_0107/R_0110)
3. R_0102 挑戦 false friend
4. R_0108 grammar_used cleanup
5. R_0107 BBQ rule
6. R_0101 遅刻 culture
7. R_0110 慣らし保育
8. R_0104+R_0106 Q3 inference
9. Distractor length 4 bài

### P2 (8):
10. R_0102 一汁三菜 vocab
11. R_0104 置く collocation
12. R_0110 朝も guide
13. R_0108 diversity element
14. R_0103 ポイント
15. R_0107 でも translation
16. Tags taxonomy
17. R_0101 が clarify
