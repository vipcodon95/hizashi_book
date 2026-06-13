# Consolidated Fix List — batch_0001_0010 (R_0001-R_0010)

> Tổng hợp 3 council review (linguist + pedagogue + domain expert)

## Average score: 7.4/10
- Linguist: 7.6/10
- Pedagogue: 7.15/10
- Domain expert: 7.45/10

## P1 — MUST FIX (cross-cutting issues)

### Pattern 1: Trợ từ analysis trong process[].guide chưa chính xác
- **R_0003** câu 2 `母と一緒に行きます`: guide gọi `に` là "cách thức". Sai. `一緒に` là cụm phó từ (adverb), `に` là adverbializer chứ không phải particle độc lập.
- **R_0004** câu 5 `本をきれいに並べます`: tương tự, `きれいに` là adverb của na-adj.
- **Fix**: Thay "に cách thức" → "X+に → adverb"

### Pattern 2: `に` (đích/tồn tại) vs `で` (nơi hành động) terminology không nhất quán
- **R_0006** câu 5: `ノートに書きます` guide gọi `に` "nơi 'vở'" → sai (phải là "đích viết LÊN").
- **R_0007** câu 7: `お風呂に入ります` guide gọi `に` "nơi" → sai.
- **R_0010** câu 5: `おもちゃで遊ぶ` `で` là means/with chứ không phải địa điểm.
- **Fix**: Chuẩn hoá terminology — `に` = đích/tồn tại tĩnh, `で` = nơi action xảy ra/công cụ.

### Pattern 3: Double-subject construction `Xは Yが ADJ` không explain
- Xuất hiện ở R_0001 (`散歩は気持ちがいい`), R_0002 (`カレーが好き`), R_0008 (`花が好き`), R_0010 (`ゆいが大好き`).
- **Fix**: Bài đầu tiên gặp pattern (R_0001) bổ sung 1-2 câu explain cấu trúc `Xは Yが ADJ`.

### Pattern 4: Reading katakana ghi sai dạng hiragana
- **R_0009** `バラ` → reading "ばら" (sai)
- **R_0010** `ミルク` → reading "みるく" (sai), `パーティー` → "ぱーてぃー"
- **Fix**: Katakana words giữ nguyên katakana ở reading, hoặc bỏ field reading.

### Pattern 5: Grammar vượt cấp N5_basic (P1!)
- **R_0006**: `〜のが好きです` (N4 nominalization), `ています` continuous duration (N4), `〜の前に` (N5 advanced).
- **R_0010**: `〜のが好きです` (N4).
- **Fix**: R_0006 nên rewrite đơn giản hơn HOẶC move sang N5_advanced batch.

### Pattern 6: Process guide over-interpret (suy diễn ngoài text)
- **R_0008** câu 8: "妹も花が好きです → guide nói 'em gái giống mẹ (mẹ ở tiệm hoa)'" — suy diễn không có trong text.
- **R_0009** Q1 explanation: "quà bất ngờ" — text không nói "bất ngờ".
- **Fix**: Process N5 chỉ giải thích cấu trúc + literal, không infer.

## P1 — Cultural mismatches (Domain expert)

### R_0009 — Hoa hồng đỏ tặng mẹ ❌
- "赤いバラ" cho sinh nhật mẹ là **cultural mismatch** ở Nhật. Hoa hồng đỏ = tình yêu lãng mạn (vợ chồng). Tặng mẹ phải là カーネーション hoặc ピンクのバラ.
- **Fix**: Đổi `赤いバラ` → `ピンクのバラ` hoặc `カーネーション`.

### R_0007 — サッカー ở 公園 ❌
- 公園 thành phố ở Nhật thường cấm bóng (球技禁止 sign).
- **Fix**: Đổi `サッカーをします` → `キャッチボールをします` hoặc `遊びます`.

### R_0008 — Inconsistency 母 vs お母さん
- Text dùng `母` (humble), question Q1 dùng `お母さん` (honorific) → confusing N5.
- **Fix**: Thống nhất 1 form, hoặc giải thích trong vocabulary/explanation.

## P2 — Specific bài fixes

### R_0001
- Câu 7 `朝の散歩は気持ちがいいです` mâu thuẫn với câu 5 (`学校まで歩いて行きます`). 散歩 ≠ đi học. Đổi `朝の散歩` → `朝の道` hoặc `朝の空気`.
- Câu 5 `〜まで`: guide gọi "điểm đến" → phải là "giới hạn/đến tận".

### R_0003
- Câu 7 `荷物は母と半分です` awkward grammar. Đổi → `荷物は母と半分ずつ持ちます`.
- Câu 6 `全部で`: guide gọi `で` "phạm vi" → phải là "tổng hợp/tổng cộng".

### R_0005
- Bữa Nhật chuẩn cần ご飯 (cơm trắng). Bài thiếu. Thêm câu `ご飯もたきます`.
- Vocab thiếu key word: `フライパン`, `焼く`, `入れる`. Có thể swap `割る` → `フライパン`.

### R_0006 (TRỌNG TÂM REWRITE)
- Grammar overload cho cấp 1.
- Lựa chọn: (A) Rewrite đơn giản hơn — bỏ `〜のが好き`, `〜ています`, dùng `〜が好きです`, `〜ます` thay thế; (B) Move sang N5_advanced.
- **Khuyến nghị**: (A) — rewrite để giữ topic "thói quen" nhưng grammar N5_basic.

### R_0008
- Thống nhất 母/お母さん.
- Bỏ suy diễn câu 8 (mẹ ở tiệm hoa → em gái giống mẹ).
- Thêm vocab thân tộc cốt lõi: 父, 母, 兄, 妹.

### R_0010
- Đổi reading `みるく` → `ミルク` (hoặc bỏ).
- Vocab `ミルク`: meaning hiện chỉ "sữa" → mơ hồ. Đổi thành "sữa công thức (cho em bé)" để phân biệt với 牛乳.

## P3 — Minor (có thể skip nếu thời gian tight)

- R_0001 process câu 5: `て-form` introduce nhưng không cảnh báo "chưa học, sẽ học sau".
- R_0002 Q1 explanation reference sai (mention C/D không tồn tại).
- R_0004 vocab list dạng dictionary form vs text dạng ます-form: mismatch.
- R_0005 `6時に晩ごはん` hơi sớm (Nhật ăn 7-8h tối nhiều hơn).
- R_0009 `45歳になります` `〜になる` hơi sớm cho N5_basic.
- Topic diversity: 10 bài chỉ 2 topic (daily_life + family). Cần thêm school/weather/hobby/transport ở batch sau.

## Action plan

### Bước 1: Fix grammar/cultural P1 (5 lỗi quan trọng nhất)
1. R_0009: 赤いバラ → ピンクのバラ + update process/translation
2. R_0007: サッカー → キャッチボール
3. R_0001: 朝の散歩は気持ちがいい → 朝の空気は気持ちがいい
4. R_0005: thêm ご飯もたきます
5. R_0008: thống nhất 母/お母さん

### Bước 2: Fix process[].guide patterns (1 batch fix)
- Standardize trợ từ terminology
- Add double-subject explanation ở R_0001
- Fix katakana reading (R_0009, R_0010)

### Bước 3: R_0006 rewrite (đặc biệt)
- Spawn agent rewrite R_0006 với grammar N5_basic only

### Bước 4: Per-bài minor fixes (P2-P3)
- Apply remaining adjustments

### Bước 5: Verify
- Re-validate schema
- Re-validate content (grammar/vocab in text)
