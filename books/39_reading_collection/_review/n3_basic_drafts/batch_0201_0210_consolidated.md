# Consolidated Fix List — batch_0201_0210 (cấp 5)

## Score
- Linguist: 1 critical (R_0205 sc mismatch), 6 major
- Pedagogue: 1 critical (Q2 Apply 4/10), 3 major
- Domain: 1 critical (R_0204 成人式 outdated 2022 法改正), 4 major

## P1 — MUST FIX

### 1. R_0205 process thiếu câu 14 + sentence_count sai (Linguist critical)
- `sentence_count=13` nhưng text có 14 câu (process[] cũng phải 14)
- **Fix**: Thêm process item câu 14 (jp + romaji + vi + grammar_note + guide) đồng bộ với câu cuối text. Set `sentence_count=14`

### 2. R_0204 成人式 update 2022 法改正 (Domain critical)
- Bài về 成人式 nhưng không nhắc đổi tuổi 18 từ 4/2022 + tên `二十歳のつどい`
- **Fix**: Thêm 1 câu `2022年の法改正で成人年齢は18歳になったが、多くの自治体では今も20歳の節目として「二十歳のつどい」を行っている。` (sentence_count +1)
- Vocab thêm `二十歳のつどい` HOẶC `成人年齢`

### 3. Q2 Apply boost (Pedagogue critical) — chỉ 4/10
- 6 bài Q2 vẫn Recall/Understand
- **Fix khuyến nghị 3 bài**:
  - R_0201 Q2: nâng từ Recall → Apply ("Theo bài, người mới chuyển vùng nên ưu tiên làm gì?")
  - R_0203 Q2: nâng → Apply causality
  - R_0208 Q2: nâng → Apply opinion

### 4. Distractor length giveaway (Pedagogue major) — 3 bài
- R_0202 Q3, R_0205 Q3, R_0209 Q3: correct dài 2-3x distractor
- **Fix**: Pad distractors lên cùng độ dài

### 5. R_0207 grammar inconsistency (Linguist major)
- Tag có grammar nhưng grammar_used array thiếu — cập nhật metadata

### 6. R_0203 lạm dụng pattern (Linguist major)
- 4 lần `〜ようになる` trong 13 câu
- **Fix**: Đa dạng hóa: thay 1-2 lần → `〜になってきた` HOẶC `〜つつある`

### 7. R_0210 distractor 180° (Pedagogue major)
- Q3 distractor đối lập rõ với main idea
- **Fix**: Thay distractor "almost-right" (sai 1 chi tiết)

### 8. R_0206 — Add modern context (Domain major)
- Bài thiếu 2026 reality
- **Fix**: Thêm 1 câu reference modern tool/trend phù hợp topic

### 9. R_0208 — Add specific brand/example (Domain major)
- Generic, không có anchor
- **Fix**: Thêm tên cụ thể (Suica/PASMO/JR Pass tùy topic)

### 10. R_0205 grammar nuance (Linguist major)
- 1 câu bookish formal cuối bài, không phù hợp register cấp 5
- **Fix**: Đổi sang form casual/neutral hơn

### 11. R_0209 translation "Vたり" (Linguist major)
- Vài chỗ dịch ≠ "vừa…vừa"
- **Fix**: Đổi → "lúc thì… lúc thì…" HOẶC "ví dụ như…hoặc…"

## P2 — Should fix
12. R_0201 katakana reading hiragana — bỏ field
13. R_0202 process explain pattern bookish
14. R_0207 thêm vocab N3 thiếu (tăng từ 7 → 9)
15. R_0210 add 1 cultural detail

## Action plan
- 11 P1 critical/major
- 4 P2 nếu time
