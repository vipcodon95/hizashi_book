# Consolidated Fix List — batch_0041_0050 (R_0041-R_0050)

> Tổng hợp 3 council review

## Score
- Linguist: 0 critical, 4 major, 11 minor
- Pedagogue: 1 critical (Bloom Q2), 0 major, 6 minor
- Domain: 0 critical, 3 major, 4 minor

---

## P1 — MUST FIX

### Bloom progression CRITICAL (Pedagogue)
- 8/10 bài Q1+Q2 đều Recall (R_0041, R_0043, R_0046, R_0047, R_0048, R_0049, R_0050; R_0042 borderline). Chỉ R_0044 (Understand) + R_0045 (Apply).
- **Fix khuyến nghị (chọn 4 bài quan trọng nhất nâng Q2)**:
  - R_0049 Q2: Đổi từ "コンビニからどちらに曲がる" → "Sau khi rẽ phải tại コンビニ, đi bao xa nữa đến ga?" (synthesis 2 facts: 5分 walk + コンビニ midway)
  - R_0048 Q2: Đổi từ "窓から何が見える" → "Nếu đến ga 9:30 còn ăn sáng được không?" (apply rule "7-9 giờ")
  - R_0050 Q2: Đổi từ "電車は何番ホーム" → "Tổng thời gian từ ga đến đích bao lâu?" (synthesize 10分 + walk)
  - R_0041 Q2: Đổi từ "ai làm bữa sáng" → compare/synthesis "Buổi sáng ai làm gì?" (synthesize 4-5 câu)

### Linguistic errors (Linguist major)
1. **R_0046 text** — `玉入れは赤チームが白チームより多いです` semantically lệch (đội nhiều bóng vs đội nhiều người). Fix → `赤チームの玉が白チームより多いです`. Update text_vi.

2. **R_0044 process[9]** — Câu `テストはむずかしいですが、がんばります` guide ghi "が chuyển hướng" — phải phân biệt `〜ですが` (conjunctive) vs subject `が`. Fix guide → "が ở đây là 接続助詞 (conjunctive), nối 2 mệnh đề 'X nhưng Y' — KHÁC が chủ ngữ".

3. **R_0046 process[6]** — Câu `次に玉入れをします` guide ghi "に chỉ thứ tự". Fix → "次 (na-adj/noun) + に adverbializer = '次に' phó từ 'tiếp theo'".

4. **R_0043 process[7]** — `友だちと一緒にべんきょうします` guide tách `と` + `に` riêng. Fix → "と một-起 + に adverbializer (gắn với な-adj stem 一緒) → cụm trạng từ 'cùng nhau'".

### Cultural updates (Domain major)

5. **R_0050 (電車) — IC card 2026**:
   - Bài chỉ nói `切符を買います` (200円) — outdated, 2026 Nhật >85% dùng IC card.
   - **Fix**: Thêm/sửa 1-2 câu để mention IC card. Vd: thay 1 câu → `今日は切符を買います。でも、いつもはICカードを使います。` HOẶC sửa text → dùng `スイカで電車に乗ります`.
   - Update vocab thêm `ICカード` hoặc `スイカ`.

6. **R_0041 (三世代) — Add context "rural/special"**:
   - 三世代同居 hiếm 2026 Nhật. Học viên Việt có thể tưởng đây là norm.
   - **Fix**: Thêm 1 câu signal: vd thay câu đầu → `私の家は田舎にあります。` HOẶC thêm câu giữa `日本では三世代の家は少ないですが、私の家は祖父母も一緒に住んでいます。` (giản lược cho N5)
   - Hoặc đơn giản đổi câu 1 → `私の家は大きい三世代の家です。田舎にあります。` (tăng sentence_count nếu cần)

7. **R_0048 (ホテル) — Hotel-type confusion**:
   - 8000円 + ocean view + 大きいお風呂 → mismatch (ビジネス giá rẻ vs リゾート có ocean+ofuro).
   - **Fix**: Đơn giản nhất là đổi giá `8000円` → `15000円` để hợp với ocean view + 大きいお風呂.
   - Hoặc bỏ `海が見えます` để consistent với business hotel. Khuyến nghị Option 1 (giữ ocean view, tăng giá) vì cảnh đẹp hơn cho bài đọc.
   - Update process + translation + Q answers nếu Q hỏi giá

---

## P2 — Should fix

### 8. R_0042 (お正月) — Reinforce お年玉
- Batch trước đã fix R_0012 thêm お年玉. Batch này nên reinforce.
- **Fix**: Thêm 1 câu `祖父からお年玉をもらいます。` (thay câu nào đó hoặc thêm). Update vocab + process.

### 9. R_0046 (運動会) — Add family aspect
- Undukai = full-day family event. Bài thiếu 保護者/お弁当.
- **Fix**: Thêm 1 câu `お昼にお母さんとお弁当を食べます。` (reuse N5 grammar).

### 10. R_0049 — Add 交番 context
- おまわりさん gặp ở đâu? Add 交番.
- **Fix**: Thêm 1 câu `近くの交番に行きます。` hoặc đổi câu 1 thành `交番でおまわりさんに聞きます。`

### 11. R_0046 distractor "わかりません" yếu
- Distractor filler không hợp lý.
- **Fix**: Đổi sang distractor có logic (vd "リレー" hoặc 1 game khác)

### 12. R_0046 + R_0044 vocabulary
- R_0044 katakana `テスト` reading redundant
- R_0048 thiếu `見えます` vocab
- **Fix**: Bỏ reading katakana redundant; thêm `見えます` vào R_0048 nếu vocab vẫn ≤5

---

## P3 — Skip

- R_0042 text awkward 2 câu rời (`これは初詣です` đứng riêng)
- R_0050 text `駅は五つ目です` cụt
- R_0048 thiếu `(歩いて)` qualifier
- R_0049 cảnh sát nói `行きます` (plain) → ideally `行ってください`

---

## Action plan (12 fixes)

### P1 Critical (7):
1. R_0046 text `玉入れ` semantic + text_vi
2. R_0044 process `〜ですが` vs subject が
3. R_0046 process `次に` adverb
4. R_0043 process `一緒に` adverbializer
5. R_0050 thêm IC card / Suica
6. R_0041 thêm 田舎 context
7. R_0048 fix hotel-type (đổi giá 8000→15000)

### P1 Bloom Q2 (4):
8. R_0049 Q2 → synthesis distance
9. R_0048 Q2 → apply rule (breakfast time)
10. R_0050 Q2 → synthesize total time
11. R_0041 Q2 → compare morning routines

### P2 (4):
12. R_0042 thêm お年玉
13. R_0046 thêm 保護者+お弁当
14. R_0049 thêm 交番
15. R_0046 fix distractor "わかりません"
