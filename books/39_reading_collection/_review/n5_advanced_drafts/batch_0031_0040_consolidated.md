# Consolidated Fix List — batch_0031_0040 (R_0031-R_0040)

> Tổng hợp 3 council (linguist + pedagogue + domain) review

## Score average
- Linguist: 8.1/10 (2 P1 patterns, 8 major, 6 minor)
- Pedagogue: 7/10 (1 critical Bloom, 2 major, 5 minor)
- Domain: 7/10 (2 critical, 4 major, 3 minor)

---

## P1 — MUST FIX (high impact)

### Cultural inaccuracies (Domain expert critical)

#### 1. R_0033 (コンビニ) — Giờ mở cửa SAI factual
- Hiện: `朝7時から夜11時まで開いています` ❌
- Reality: コンビニ Nhật 95% là 24h
- **Fix**: Đổi → `このコンビニは24時間開いています。` (bỏ `〜から〜まで` pattern, hoặc giữ pattern bằng `朝6時から夜12時まで` đỡ sai)
- Update process câu 2 + translation
- Thêm 1 câu về ATM hoặc お弁当 cho coverage rộng hơn (vd `お弁当もたくさん売っています。` hoặc `ATMもあります。`)
- Update vocab nếu thêm câu mới

#### 2. R_0032 (ファミレス) — Title mismatch content
- Title: ファミリーレストラン nhưng content chỉ ghi `レストラン` — không có defining features
- **Fix lựa chọn**:
  - Option A: Đổi `レストラン` → `ガスト` (brand cụ thể) trong câu 1
  - Option B: Thêm 1 câu về `ドリンクバー` (drink bar — defining feature ファミレス)
- **Khuyến nghị**: Option B vì brand name có thể không phổ biến với người Việt, nhưng ドリンクバー là cultural keyword
- Update vocab thêm `ドリンクバー` nếu chọn Option B

### Language errors (Linguist critical)

#### 3. R_0033 câu 8 — `〜で、〜です` te-form vs 連体形 misanalyze
- `お茶は150円で、ジュースは160円です` — guide hiện ghi "で nối câu (liệt kê)"
- Sai: đây là **te-form của copula です** (`〜であって`), không phải trợ từ で
- **Fix**: Process guide câu 8 đổi → "で = te-form của だ/です, dùng nối 2 mệnh đề danh từ liền nhau"

#### 4. R_0038 + R_0040 — `みんなで` analysis SAI
- R_0038 câu 6: `お盆にみんなでお墓参りをします` 
- R_0040 câu 9: `みんなで一緒に食べました`
- Guide hiện ghi "で 'cùng mọi người'" — SAI terminology
- **Fix**: Đổi → "で = trợ từ chỉ nhóm/phương thức tập thể (みんなで = cả nhóm cùng làm)"
- Note: nhất quán cho cả 2 bài

#### 5. R_0038 câu 10 — `一緒の` analysis sai
- `お盆は家族と一緒の大切な時間です` — guide ghi "一緒の 'trải qua'"
- Sai: `[家族と一緒]の[大切な時間]` = "thời gian quý giá [cùng với gia đình]"
- **Fix**: Process guide đổi → "家族と一緒 = 'cùng gia đình' → の biến cụm thành adnominal bổ nghĩa cho 時間"

### Cultural depth (Domain expert)

#### 6. R_0038 (お盆) — Thiếu 盆踊り (defining feature)
- Hiện chỉ có 「花火も見ます」 — pháo hoa không phải defining
- **Fix**: Thay `花火も見ます。` → `夜は盆踊りをします。` HOẶC thêm `公園で盆踊りもあります。`
- Update vocab thêm `盆踊り` (ぼんおどり)
- Update process + translation

#### 7. R_0040 (料理クラブ) — Term confusion
- `料理クラブ` không chuẩn — Nhật dùng `料理部` (りょうりぶ)
- **Fix**: Thay `クラブ` → `部` trong text + title + vocab
- `料理クラブ` → `料理部` (りょうりぶ — câu lạc bộ nấu ăn / lớp nấu ăn)
- Update title + title_vi nếu cần (nhưng `Câu lạc bộ nấu ăn` vẫn OK trong VN)

### Bloom progression (Pedagogue critical)

#### 8. 5/10 bài Q1+Q2 đều Recall (R_0031, R_0032, R_0037, R_0039, R_0040)
- **Fix khuyến nghị (chọn 3 bài quan trọng)**:
  - R_0031 Q2: Đổi từ "đi đến ga bằng cách nào" → "Tổng cộng người này dùng mấy phương tiện đi từ nhà đến công ty?" (= 2: xe đạp + tàu) → Analyze
  - R_0037 Q2: Đổi từ "đi đâu ở Kyoto" → "Người này đã trải qua mấy hoạt động ở Kyoto?" → tổng hợp 4 câu
  - R_0040 Q2: Đổi từ "tuần trước làm gì" → "Hoạt động CLB tuần trước và tuần này khác gì?" → Compare/Analyze

---

## P2 — Should fix

### 9. R_0036 (大きい家族) — phrasing hơi Việt-hoá
- `私の家族は大きいです` → natural là `私は大家族です` hoặc `家族が多いです`
- **Fix**: Đổi câu 1 → `私の家族は人が多いです。` (giữ structure đơn giản N5)
- Hoặc giữ nguyên + add note "natural Japanese: 大家族"

### 10. R_0036 — clarity về sống chung/riêng
- Bài viết các thành viên sống RIÊNG nhưng học viên có thể tưởng同居
- **Fix**: Có thể thêm 1 câu `みんな別々に住んでいます` hoặc giữ implicit

### 11. R_0033 distractor "同じ値段です" giveaway
- 2 giá khác nhau (120 vs 200) — distractor dễ loại trừ
- **Fix**: Đổi distractor để confuse số (vd "150円のおにぎりは200円のサンドイッチより..." hoặc dùng pattern khác)

### 12. R_0040 vocab missing
- Thiếu `切ります`, `活動` (vocab quan trọng)
- **Fix**: Thêm vào vocabulary

### 13. R_0039 vocab missing
- Thiếu `やさしい` (xuất hiện câu kết, character description)
- **Fix**: Thêm vào vocabulary nếu vẫn ≤5 từ

### 14. R_0031 câu 7 — guide note thừa
- Guide ghi "で vừa địa điểm vừa phương tiện" nhưng câu KHÔNG có で địa điểm
- **Fix**: Xóa note thừa

### 15. Translation thiếu chủ ngữ inconsistency
- R_0032, R_0039 dịch lược chủ ngữ → có thể giữ ẩn nhưng nhất quán
- **Fix**: Acceptable, skip

---

## P3 — Skip (minor)

- R_0035 電話 vs LINE update
- R_0037 おじ伯父/叔父 ambiguity
- R_0039 tên リン (acceptable)
- R_0033 セルフレジ/PayPay update
- R_0034 vocab có thể bổ sung

---

## Action plan cho agent fix

### Critical (8 fix):
1. R_0033 giờ コンビニ → 24h + thêm câu ATM/弁当
2. R_0032 thêm ドリンクバー
3. R_0033 process câu 8 で copula
4. R_0038 + R_0040 process `みんなで`
5. R_0038 process `一緒の`
6. R_0038 thêm 盆踊り
7. R_0040 `クラブ` → `部` toàn bộ
8. Bloom Q2 cho 3 bài (R_0031, R_0037, R_0040)

### Should fix (3):
9. R_0036 phrasing 大家族
10. R_0033 distractor giveaway
11. R_0040 + R_0039 vocab missing
12. R_0031 guide note thừa
