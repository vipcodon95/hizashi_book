# Consolidated Fix List — batch_0091_0100 (cấp 3 batch cuối N4_basic)

## Score
- Linguist: 1 critical (tag/text mismatch), 6 major, 18 minor
- Pedagogue: 2 critical (Q3 regression, length giveaway), 3 major, 6 minor — **Q2 4→3, Q3 10→7 REGRESSION**
- Domain: 0 critical, 1 major (R_0092 Hakone), 7 minor

---

## P1 — MUST FIX

### 1. Q3 Inference regression — restore quality (Pedagogue critical)
- 4 bài có Q3 verbatim quote (R_0097, R_0098, R_0100, R_0093 Q2 verbatim)
- **Fix**:
  - R_0097 Q3: hiện `寝る前にスマホを見てはいけない` (verbatim từ text). Đổi sang inference: "もしこの人が睡眠を改善したいなら、何をすべきですか?" hoặc "Tại sao tác giả nghĩ thiếu ngủ ảnh hưởng học tập?"
  - R_0100 Q3: hiện `おいしい！` (verbatim quote). Đổi sang: "Bạn người Nhật có cảm nhận thế nào về phở Việt?" với đáp án synthesize từ 2 câu cuối
  - R_0098 Q3: hiện gần verbatim "悪いことではなく、家族を大切に思う証拠". Đổi: "Tại sao tác giả không xem ホームシック là điều xấu?" (force inference)

### 2. Length giveaway pattern Q3 (Pedagogue critical)
- 4 bài có "longest answer = correct" pattern (R_0095 Q3, R_0096 Q1+Q3, R_0098 Q3)
- **Fix**: Pad distractors hoặc shorten correct answer ở 4 bài này

### 3. R_0100 tag `のに` mismatch (Linguist critical)
- Tag list `のに` nhưng text dùng `ので` không có `のに`
- **Fix**: Bỏ `のに` khỏi tags HOẶC thêm 1 câu dùng `のに` trong text

### 4. Tags taxonomy fix (Linguist critical, 6 bài)
- `tags` đang lẫn lộn particles + grammar patterns + auxiliaries
- **Fix**:
  - R_0094: bỏ `ようになりました` khỏi tags (đã có trong grammar_used)
  - R_0095: bỏ `ようにしています` khỏi tags
  - R_0096: clarify `ばかり` (giữ) vs `たばかり` (move sang grammar_used)
  - R_0098: bỏ `たい` khỏi tags
  - R_0099: bỏ `という` khỏi tags
  - R_0100: bỏ `のに`, đảm bảo tags chỉ chứa particles thuần

### 5. R_0092 Hakone — Add iconic spots (Domain major)
- Bài "review Hakone" mà thiếu 大涌谷 + 黒たまご + ロープウェイ
- **Fix**: Thêm 1-2 câu hoặc thay 1 câu generic. Vd: thay câu vague → `大涌谷で黒たまごを食べました。ロープウェイから富士山が見えました。`
- Update vocab: thêm `大涌谷` (おおわくだに), `黒たまご` (くろたまご), hoặc `ロープウェイ`

### 6. R_0095 câu 7 — particle logic (Linguist major)
- `毎日、肉か魚も食べます` — `も` không khớp logic với `か`
- **Fix**: Đổi → `毎日、肉か魚を食べます`. Update process + translation.

### 7. R_0096 câu 11 dịch tense (Linguist major)
- `ストレスがあった時の自分` (past) dịch "đang stress" (present) → sai tense
- **Fix**: Đổi → "lúc bị stress" hoặc "khi đang phải chịu stress"

### 8. Q2 Apply — boost từ 3/10 (Pedagogue major)
- R_0091, R_0093, R_0098, R_0099, R_0100 Q2 chỉ Recall
- **Fix**: Đổi 2-3 Q2 sang Apply level
  - R_0093 Q2: "Tại sao bác sĩ kê thuốc và dặn nghỉ ngơi?" (apply causality)
  - R_0098 Q2: hiện hỏi action cụ thể, đổi sang "Tại sao bạn classmate giúp tác giả?" (apply emotion)
  - R_0099 Q2: "ラーメン nào phù hợp với người thích đậm đà?" (apply taste profile)

### 9. R_0094 process câu 2 — `だけで` analysis (Linguist major)
- Guide hiện ghi "で nguyên nhân" — sai
- **Fix**: Đổi → "`〜だけで` = chỉ cần [làm gì đó] (limit + means), không phải nguyên nhân thuần"

---

## P2 — Should fix

### 10. R_0092 collocation `美術館を見る`
- Native hơn `美術館に行く`
- **Fix**: Đổi `美術館を見たり` → `美術館に行ったり`

### 11. R_0093 — Add クリニック / 問診票 awareness
- 病院 vs クリニック distinction
- **Fix**: Có thể giữ 病院 + thêm 1 câu `受付で問診票を書きました。` HOẶC thêm vocab note クリニック

### 12. R_0091 câu 11 dịch over-interpretation
- `これからは気をつけなければなりません` dịch "phải cẩn thận hơn mới được" — thêm "hơn" không có
- **Fix**: Đổi → "Từ giờ phải cẩn thận."

### 13. R_0094 câu 3 dịch
- `走れるようになりました` dịch "đã chạy được" — mất nuance potential
- **Fix**: "dần dần đã có thể chạy [lâu hơn]"

### 14. R_0099 Add つけ麺 mention
- Update 2026 reality
- **Fix**: Có thể thêm 1 câu hoặc add `つけ麺` vào vocab list

### 15. Vocab katakana redundancy
- Reading field cho `ジョギング/シャワー/ストレス/パクチー/ナンプラー/レシピ` lặp y nguyên
- **Fix**: Bỏ field reading cho katakana words HOẶC để giải thích etymology

### 16. R_0098 + R_0100 — `恋しい` duplicate
- Vocab xuất hiện cả 2 bài liên tiếp
- **Fix**: R_0100 bỏ `恋しい` (đã có ở R_0098), thay từ khác

### 17. R_0093 process câu 4 — `なければなりませんでした`
- Guide không nhắc cấu trúc gốc double-negative
- **Fix**: Process guide bổ sung "= nếu không làm thì không được"

### 18. R_0099 — `たことがあります` metadata mismatch
- Listed grammar nhưng text dùng `食べてみました` không phải `食べたことがあります`
- **Fix**: Bỏ `たことがあります` khỏi grammar_used

---

## P3 — Skip

- R_0094 missing 熱中症/反射材 safety
- R_0097 missing 残業/シフト for TTS context
- R_0100 missing 業務スーパー alternative
- R_0095 missing 一汁三菜
- R_0091 missing 交番 alternative path
- R_0093 マイナ保険証 (acceptable cumulative)

---

## Action plan (9 P1 + 9 P2)

### P1 Critical (9):
1. Q3 inference fix — R_0097, R_0098, R_0100
2. Length giveaway normalize — R_0095, R_0096 x2, R_0098
3. R_0100 tag のに mismatch
4. Tags taxonomy 6 bài
5. R_0092 Hakone 大涌谷+黒たまご
6. R_0095 particle logic 肉か魚を
7. R_0096 dịch tense
8. Q2 Apply boost — R_0093/R_0098/R_0099
9. R_0094 process だけで

### P2 (9):
10-18 ở list trên
