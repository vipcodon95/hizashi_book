# Consolidated Fix List — batch_0081_0090

## Score
- Linguist: 1 critical, 4 major, 9 minor
- Pedagogue: 0 critical, 0 major, 7 minor (Q2 Apply 4/10 ✓ recovery!)
- Domain: 1 critical, 3 major, 4 minor

---

## P1 — MUST FIX

### 1. R_0088 câu 11 — Critical grammar misuse (Linguist)
- `朝ご飯も部屋で食べてもらいました` — 食べる là hành động của subject, không cần ai làm hộ
- **Fix**: Đổi → `朝ご飯も部屋に運んでもらいました` (được mang đến) HOẶC `朝ご飯も部屋で出してもらいました`

### 2. R_0090 — Add 入れ墨 rule (Domain critical)
- Safety info quan trọng cho TTS/SSW Việt
- **Fix**: Thêm 1 câu cuối paragraph rules: `入れ墨がある人は入れません。` (sentence_count +1)
- Vocab thêm `入れ墨` (irezumi - hình xăm)
- Update process + translation

### 3. R_0082 — Email structure + お疲れ様 mistranslation (Domain major + Linguist major)
- `お疲れ様です` dịch "Xin chào anh/chị" — sai cultural
- Thiếu mention signature/xưng tên
- **Fix translation**: `お疲れ様です` → "Cảm ơn anh đã vất vả (lời chào trong công ty Nhật)"
- Có thể thêm 1 câu về xưng tên: `「Linhです」と書きました。` (signature)
- Update process + translation

### 4. R_0085 — Hybrid work reality 2026 (Domain major)
- Bài như full remote — reality 2026 phần lớn hybrid
- **Fix**: Thêm hoặc sửa 1 câu để phản ánh hybrid: vd `うちの会社は週2日リモートワークができます。` HOẶC `週に1回ぐらい家で仕事をします。`
- Có thể thêm `Web会議` term thay `オンライン会議`

### 5. R_0084 — Thêm 引継ぎ concept (Domain major)
- 退職 quan trọng có 引継ぎ (bàn giao)
- **Fix**: Thêm 1 câu: `同僚に仕事を引き継いでから辞めます。` (sentence_count +1)
- Vocab thêm `引継ぎ` (hikitsugi - bàn giao)

### 6. R_0083 process câu 4 — `が` analysis sai (Linguist major)
- Guide ghi "が nhấn mạnh 'tôi' là người mới" — không đúng
- **Fix**: Đổi guide → "が dùng để identify chủ ngữ trong cấu trúc giới thiệu vai trò (XはY、ZがWです)"

### 7. R_0089 process câu 3 — `〜ばいい` cấu trúc (Linguist major)
- Guide tách "ば điều kiện + か" — thiếu giải thích pattern
- **Fix**: Process guide thêm note "〜ばいい = nên làm gì cho đúng (advice/suggestion), idiom cố định, không tách thành ば + か"

### 8. R_0081 — Newcomer behavior unrealistic (Domain minor → upgrade major)
- Newcomer phát biểu 自分の意見 đầu tiên — too Western
- **Fix**: Đổi `自分の意見も言ってみました` → `議事録を取りました。` (đã ghi biên bản — đúng role newcomer)
- Process + translation + comprehension Q nếu liên quan

---

## P2 — Should fix

### 9. R_0086 — `カフェの名前` translation
- `ひだまり` dịch "Nắng ấm" hơi loose
- **Fix**: Đổi → `ひだまり (Nơi nắng nhẹ chiếu vào)` hoặc giữ nguyên + note

### 10. R_0085 câu 6 translation
- `午後も報告書を書いていました` — dịch "Buổi chiều cũng đang viết..."
- Acceptable continuous past, có thể giữ. Skip nếu time tight.

### 11. R_0089 Q1 length normalize
- Option đúng dài hơn 3 distractor
- **Fix**: Pad distractors hoặc shorten correct answer

### 12. Grammar_used metadata audit
- R_0083 list `〜てくれました` nhưng text không có
- R_0089 list `〜ています` nhưng phần lớn `〜ていました`
- **Fix**: Cleanup grammar_used arrays

### 13. R_0081 distractor "「大丈夫だよ」" 
- Distractor xuất sắc nhưng có thể đa dạng hơn

---

## P3 — Skip

- R_0090 generic 牛乳 (could specify コーヒー牛乳)
- R_0083 humble expression
- R_0086 over-simplified cafe
- R_0089 grammar khó (どこに行けばいいか)
- Topic lệch nhẹ về work
- Ending pattern repetitive

---

## Action plan (8 P1 + 4 P2)

### P1 (8):
1. R_0088 câu 11 grammar fix
2. R_0090 add 入れ墨 rule
3. R_0082 email mistranslation + signature
4. R_0085 hybrid work reality
5. R_0084 引継ぎ
6. R_0083 process が analysis
7. R_0089 process ばいい
8. R_0081 newcomer behavior 議事録

### P2 (4):
9. R_0086 ひだまり translation
10. R_0089 Q1 length normalize
11. Grammar_used metadata cleanup
12. R_0081 distractor variety
