# Consolidated Fix List — batch_0061_0070 (cấp 3 N4_basic)

## Avg Score
- Linguist: 0 critical, 9 major, 11 minor
- Pedagogue: 0 critical, 4 major, 10 minor
- Domain: 1 critical, 3 major, 6 minor

---

## P1 — MUST FIX

### 1. R_0067 metadata bug (Linguist major)
- `sentence_count: 11` nhưng text thực có 12 câu
- Process thiếu entry cho câu 12 `来週の日曜日は晴れてほしいです`
- **Fix**: Update sc=12, thêm process entry cho câu 12 với guide về 〜てほしい

### 2. R_0063 false friend "びっくり" → "ngạc nhiên" (Linguist major)
- Translation hiện: "tôi bị giật mình" SAI
- **Fix**: Đổi → "tôi rất ngạc nhiên/bất ngờ"
- Cũng đổi `たくさんありすぎて` → `多すぎて` (bỏ redundancy)

### 3. R_0061 false continuous (Linguist major)
- `駅まで自転車で行っています` translation "Tôi đang đi đến ga" gây hiểu nhầm progressive
- **Fix**: Đổi text Nhật → `駅まで自転車で行きます` (thói quen) HOẶC giữ ています nhưng đổi dịch → "Tôi (vẫn thường) đi đến ga bằng xe đạp"
- Process guide note: ている thói quen → tiếng Việt KHÔNG dùng "đang"

### 4. R_0070 — 待機児童 + 入園式 (Domain critical)
- Bài thiếu cultural keystones của 保育園 Nhật
- **Fix**: Thêm 1 câu signal 4月 hoặc 持ち物リスト. Vd `4月の朝、初めて娘を保育園に送りました。持ち物がたくさんあって、準備が大変でした。` (sentence_count tăng 1-2)
- Update process + vocab nếu thêm

### 5. R_0066 medical advice cultural mismatch (Domain major)
- Bác sĩ Nhật rất hiếm khuyên `朝ごはんを食べないでください`
- **Fix**: Đổi → `夜遅く食べないでください` (đêm khuya không ăn) HOẶC `寝る前にスマホを見ないでください`
- Update Q nếu liên quan

### 6. R_0061 — Add アルバイト reality (Domain major)
- Du học sinh Việt 75% làm baito (visa cho phép 28h/tuần)
- **Fix**: Thêm 1 câu `夕方からアルバイトをしています。` (sentence_count +1)
- Update vocab thêm `アルバイト` (đi làm thêm)

### 7. R_0063 — Donki authentic features (Domain major)
- Bài quá generic, thiếu 24時間営業 / 多種多様な商品
- **Fix**: Thêm/sửa 1 câu: vd thay câu mơ hồ → `ドン・キホーテは24時間開いていて、化粧品も食品も雑貨も全部あります。`
- Có thể thêm payment method PayPay nếu vẫn ≤12 câu

### 8. Grammar_used metadata thiếu (Linguist major)
- R_0066: thêm `〜ようにする`
- R_0070: thêm `〜てしまう`, `〜てくれる`, `〜てほしい`, `〜てはいけない`
- R_0069: thêm `〜てほしい`
- R_0061: thêm `〜になりたい`
- R_0067: thêm `〜ている`
- **Fix**: Update grammar_used arrays cho match text

### 9. R_0066 — Process guide `ないようにしている` quá ngắn (Pedagogue + Linguist major)
- Pattern phức tạp 4 layer: ない + ように + する + ている
- **Fix**: Mở rộng guide câu này thành "ない (không) + ように (sao cho) + している (duy trì) = đang duy trì thói quen không xem"

### 10. Q3 Bloom — R_0065 + R_0067 literal copy (Pedagogue major)
- R_0065 Q3 đáp án = nguyên văn câu 5 (`簡単な料理から始めたから`) — không phải inference
- R_0067 Q3 đáp án = nguyên văn câu 11 (`雨の日も悪くない`)
- **Fix R_0065 Q3**: Đổi sang "Người này có lời khuyên gì cho người mới bắt đầu nấu ăn?" (synthesize từ kinh nghiệm)
- **Fix R_0067 Q3**: "Tâm trạng người này thay đổi thế nào trong ngày?" (trace つもりでした → 悪くない)

---

## P2 — Should fix

### 11. R_0063 「来たい」 → 「行きたい」
- Narrative kể sau chuyến đi → 行きたい natural hơn

### 12. R_0070 câu 7 — translation thiếu nuance てくれる
- `先生が...と言ってくれました` → "cô giáo nói cho tôi" hoặc "ân cần nói"

### 13. R_0068 — `飛行機のチケット` → `航空券` hoặc `飛行機代`
- Từ direct-translate Việt
- **Fix**: Đổi → `飛行機代` (more native)

### 14. R_0062 `ウインナー` thiếu vocab list
- **Fix**: Thêm vocab `ウインナー` (xúc xích Vienna)

### 15. R_0062 `毎日作っていたら` → translation sửa từ "vì... nên..." → "khi cứ làm mỗi ngày thì..."

### 16. R_0065 Q3 distractor "毎日練習" ambiguous
- Có thể đúng từ góc khác. Đổi sang option clearly wrong (vd `料理学校に通ったから`)

### 17. R_0067 thêm 梅雨 hoặc indoor activities Nhật-specific (Domain minor)
- Có thể thêm reference 室内 activities

### 18. R_0065 — TikTok era 2026 (Domain)
- 2026 reality: TikTok/Reels co-dominance
- **Fix**: Có thể thêm `YouTubeやTikTokで` để current

---

## P3 — Skip

- R_0067 〜たり non-exhaustive note (cumulative concern)
- が ở stative gọi "đối tượng" (terminology drift)
- ご飯/ごはん inconsistency
- R_0064 distractor Q3 ambiguous

---

## Action plan (10 critical/major + 8 should fix)

### Critical/Major (10):
1. R_0067 sc=12 + process câu 12
2. R_0063 びっくり translation + redundancy fix
3. R_0061 ています translation (false continuous)
4. R_0070 入園式 + 持ち物 (cultural)
5. R_0066 medical advice → 夜遅く食べない
6. R_0061 thêm アルバイト
7. R_0063 Donki features
8. Grammar_used metadata 5 bài
9. R_0066 process ないようにしている scaffold
10. Q3 R_0065 + R_0067 inference fix

### Should fix (8):
11. R_0063 来たい → 行きたい
12. R_0070 translation てくれる nuance
13. R_0068 飛行機のチケット → 飛行機代
14. R_0062 vocab ウインナー
15. R_0062 たら translation
16. R_0065 Q3 distractor swap
17. R_0067 indoor activities (skip if effort)
18. R_0065 YouTube → YouTubeやTikTok
