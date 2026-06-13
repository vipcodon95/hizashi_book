# Consolidated Fix List — batch_0111_0120

## Score
- Linguist: 1 critical, 6 major, 8 minor
- Pedagogue: 0 critical, 2 major, 6 minor (Q2 4/10 đạt min, Q3 8/10)
- Domain: 1 critical, 4 major, 5 minor

---

## P1 — MUST FIX

### 1. R_0111 timeline 戦争 (Domain critical)
- "戦争 + 18歳 cưới" → bà ~99 tuổi 2026 → unrealistic cho jp grandparent
- **Fix**: Đổi `戦争があったので、大学をやめなければなりませんでした` → `家が貧しかったので、大学をやめなければなりませんでした` HOẶC `兄弟が多くて、大学に行けませんでした`
- Update process + translation + comprehension nếu liên quan

### 2. R_0118 title "Văn hóa tế nhớ đời" (Linguist critical)
- Sai từ vựng tiếng Việt
- **Fix**: Đổi → "Lễ hội văn hóa nhớ đời". Update translation câu chứa 文化祭 cho consistent.

### 3. R_0118 cultural realism — bánh tự làm (Domain major)
- Trường JP cấm bán đồ tự làm (食品衛生法)
- **Fix**: Đổi `ケーキを焼く` (làm bánh) → `クッキーをラッピングする` HOẶC `ドリンクを準備する`. HOẶC clarify 高校 + 調理室 permission.
- Update text + process + comp nếu liên quan

### 4. R_0119 面接 etiquette (Domain major)
- Miss 入室マナー / オンライン面接 / 履歴書 / スーツ
- **Fix**: Thêm 1-2 câu về formal etiquette: vd `スーツを着て、履歴書を持って行きました。` HOẶC `部屋に入る前に、3回ノックしました。`
- Có thể thêm vocab `履歴書` (りれきしょ) hoặc `面接マナー`

### 5. R_0119 志望動機 generic (Domain major)
- "日本の技術を学ぶために" → JP HR red flag (sợ học xong về)
- **Fix**: Đổi → `この会社の○○に魅力を感じて、ぜひ働きたいです。` (specific to company) hoặc context phù hợp hơn (vd "thích văn hoá công ty" / "muốn đóng góp ngành").

### 6. R_0114 すみません/ごめんなさい nuance (Domain major)
- Bài dùng generic 謝りました
- **Fix**: Cụ thể hoá: vd thêm dialog `「ごめんね」と謝りました` (close friend, emotional)
- Hoặc thêm note vocab về nuance 2 từ

### 7. R_0112 ことになっている nuance (Linguist major)
- Translation hiện "theo quy định" → quá strong
- **Fix**: Đổi translation → "theo lệ thường" hoặc "theo tục lệ"
- Process guide đổi tương ứng

### 8. R_0117 なら underspecified (Linguist major)
- `君ならできる` guide quá đơn giản
- **Fix**: Process guide bổ sung: "なら ở đây mang nuance topic-conditional 'nếu là em thì...' (specifically về capability)"

### 9. R_0119 grammar_used misclassified (Linguist major)
- `〜と聞かれた`, `〜と答えた` không phải grammar pattern riêng
- **Fix**: Bỏ 2 entries này HOẶC gộp thành `「と」引用 + 受身/能動`

### 10. R_0120 Q1 length giveaway (Pedagogue major)
- Đáp án đúng dài 38 chars vs distractor 8-12 chars
- **Fix**: Rút gọn đáp án đúng xuống ≤20 chars: "仕事を教えたり、昼ご飯を食べたりしてくれます" hoặc pad distractors

### 11. Q2 Apply boost — 5 bài còn Recall thuần (Pedagogue major)
- R_0113, R_0114, R_0117, R_0118, R_0119 Q2 chỉ Recall
- **Fix khuyến nghị (chọn 2-3 bài)**:
  - R_0114 Q2: đổi "Yuki làm gì thực sự" → "どうして「私」はゆきが秘密を話したと思ってしまいましたか" (Apply, force ghép câu 2 + 3 + 11)
  - R_0117 Q2: đổi direct quote → "先生はどんな時に「私」を励ましてくれましたか" (Apply, ghép câu 5+7+8)
  - R_0118 Q2: đổi paraphrase → "どうして「私」は文化祭で失敗しなかったと思っていますか" (Apply)

### 12. R_0120 senpai naming (Domain major)
- 「鈴木先輩」 dialog đôi khi sound 体育会系
- **Fix**: Đổi 「鈴木先輩」 trong general narration → 「鈴木さん」. Giữ "先輩" cho concept reference.

---

## P2 — Should fix

### 13. R_0112 お盆 thêm 迎え火/送り火
- Core ritual của Obon
- **Fix**: Có thể thêm 1 câu `13日には迎え火をして、ご先祖様を迎えます。` (skip nếu sc đầy)

### 14. R_0115 学校の前に走る ambiguity
- Location vs temporal
- **Fix**: Đổi → `学校に行く前に走る` HOẶC `登校前に走る`

### 15. R_0118 vocab thiếu 出し物
- Key vocab 文化祭
- **Fix**: Thêm vocab `出し物` (だしもの - tiết mục) nếu vẫn ≤8

### 16. R_0119 vocab thiếu 志望動機
- Most common term
- **Fix**: Thêm vocab `志望動機` (しぼうどうき - lý do ứng tuyển)

### 17. R_0118 思い出に残る collocation
- Native dùng 印象に残る hoặc よく覚えています
- **Fix**: Có thể đổi 1 instance

### 18. R_0117 Q3 Recall → Inference
- Hiện chỉ Recall
- **Fix**: Đổi → "Bài học người viết rút ra từ 3 năm với thầy là gì?"

### 19. R_0113 Q3 Recall → Inference
- **Fix**: Đổi → "どうしてクラスのみんなの数学の成績が上がったと考えられますか" (inference cause)

### 20. R_0112 vocab お盆 cross-cultural note
- "Lễ Vu Lan" false friend
- **Fix**: Đổi meaning → "Obon (lễ tổ tiên Nhật, gần Vu Lan nhưng khác văn hoá Phật)"

### 21. Tags taxonomy
- Audit tags chỉ chứa particles thuần
- **Fix**: Bỏ grammar patterns khỏi tags arrays

---

## P3 — Skip

- R_0117 missing 答辞/送辞 detail
- R_0115 missing 熱中症対策
- R_0120 missing リモートワーク/ハイブリッド
- R_0119 missing オンライン面接 (sẽ add ở fix 4)
- Vocab katakana reading lặp redundant
- Add new bài cho アルバイト/オンライン授業

---

## Action plan (12 P1 + 9 P2)

### P1 Critical/Major (12):
1. R_0111 timeline (戦争 → 貧しかった)
2. R_0118 title "Văn hóa tế" → "Lễ hội văn hóa"
3. R_0118 ケーキ焼く → クッキー or 高校 context
4. R_0119 面接 etiquette (履歴書/スーツ/ノック)
5. R_0119 志望動機 specific
6. R_0114 ごめんね nuance
7. R_0112 ことになっている "lệ thường"
8. R_0117 なら topic-conditional clarify
9. R_0119 grammar_used cleanup
10. R_0120 Q1 length giveaway
11. Q2 Apply 2-3 bài (R_0114, R_0117, R_0118)
12. R_0120 senpai naming

### P2 (9):
13-21 ở list trên (chọn 5-6 quan trọng nhất)
