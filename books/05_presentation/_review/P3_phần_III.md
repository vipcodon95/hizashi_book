# P3 — Báo cáo rà soát phần_III (rule_14 → rule_21)

> Sách 05 "Thuyết trình / プレゼンテーション" · 8 rule · Body / 本論
> Áp dụng `.claude/rules/book-review.md` mục 4 (trục A→F). Đã strip ruby bằng python trước mọi kết luận "không có".
> **Chỉ báo cáo — không sửa file nội dung.**

---

## Bảng tổng kết

| Rule | Tên | 🔴 nặng | 🟡 vừa | 🔵 nhẹ | Ghi chú |
|---|---|---|---|---|---|
| 14 | 論理マーカー | 0 | 0 | 0 | **SẠCH** — không tìm được lỗi nào |
| 15 | データ提示 | 0 | 1 | 1 | Chữ Trung giản thể `项目`; callout 90% lệch rule_17 |
| 16 | デモの流れ | 0 | 1 | 0 | Cross-ref liên sách SAI (sách 03 rule 32) |
| 17 | 比較マトリクス | 0 | 0 | 1 | Hán Việt `責任放棄` sai 2 chữ |
| 18 | 顧客の声 | 0 | 0 | 0 | **SẠCH** |
| 19 | 価格スライド | **2** | 0 | 0 | ROI: công thức NGƯỢC + con số 8ヶ月 sai (đúng 3.2ヶ月) |
| 20 | リスクと対策 | **1** | 1 | 0 | Tự mâu thuẫn 3-5 vs 「3個少ない」; lọt tiếng Việt vào bảng JA |
| 21 | ロードマップ | 0 | 0 | 1 | Nhãn Gantt `(15日)` vs 5/15–6/30 = 47 ngày |
| **Tổng** | | **3** | **3** | **3** | |

**Đánh giá chung:** phần III chất lượng cao. Lời khuyên nghề (công khai rủi ro, ghi nguồn, nêu tên khách có xin phép, có 弊社推奨) đều **đúng chuẩn business Nhật** — đã kiểm chứng WebSearch. Tiếng Nhật keigo **sạch**: không có 二重敬語, không có さ入れ言葉, uchi/soto (弊社/御社) dùng đúng 100%. Vế tiếng Việt sạch, tiếng Anh còn lại đều là thuật ngữ nghề đã chuẩn (`slide`, `demo`, `Gantt`) — **không báo**.

Ba lỗi nặng đều nằm ở **con số / logic nghiệp vụ**, không phải ngôn ngữ.

---

## 🔴 NẶNG

### 🔴 A+D-1 — rule_19 dòng 45: công thức ROI bị VIẾT NGƯỢC

**Nguyên văn (dòng 45):**
```
- 【2】**ROI = mức tiết kiệm / giá** — 年間ロス削減 ÷ 投資 = 回収月数. "1.2億÷3,200万 ≈ 8ヶ月".
```

**Vấn đề — 3 lỗi chồng nhau trong 1 dòng:**

1. **Công thức ngược.** Thời gian hoàn vốn (投資回収期間 / payback period) = **投資額 ÷ 年間キャッシュフロー**, KHÔNG phải 年間削減 ÷ 投資. Đã kiểm chứng: mọi nguồn tài chính Nhật đều thống nhất "投資回収期間＝投資総額÷年間キャッシュ・フロー".
2. **Phép tính không ra kết quả đã ghi.** `1.2億 ÷ 3,200万 = 3.75`, không phải 8. Dù có hiểu 3.75 là "năm" hay "tháng" cũng không ra 8.
3. **Kết quả đúng khác hẳn con số trong sách.** 3,200万 ÷ 1.2億/năm = 0.267 năm = **3.2 tháng**, không phải 8 tháng.

**Vì sao là 🔴 A (dạy làm sai việc thật):** đây là sách bán cho BD/PM đi báo giá thật trước khách Nhật. Học viên học thuộc công thức này rồi đứng trước 大垣 営業部長 mà đọc ra "年間削減 ÷ 投資 = 回収月数" thì bị bắt lỗi ngay tại chỗ — đúng cái tình huống rule_19 đang dạy cách sống sót. Nghiêm trọng gấp đôi vì rule_19 là rule dạy **chống phản biện 「高い」**.

**Đề xuất sửa (dòng 45):**
```
- 【2】**ROI = 投資 ÷ 年間削減効果** — 投資額 ÷ 年間ロス削減 = 回収期間. "3,200万 ÷ 1.2億 ≈ 0.27年 = 約3.2ヶ月".
```

**Kéo theo — dòng 38 (thoại của ズン) cũng phải sửa đồng bộ (bẫy "fix nửa vời" mục 5):**

Nguyên văn JA: `**(3) ROI**: B案で**年間1.2億円のロス削減**【2】見込み、**8ヶ月で投資回収**。`
Nguyên văn VN: `(3) ROI: case B dự kiến giảm lỗ 120 triệu/năm, hoàn vốn 8 tháng.`

→ **Hai hướng sửa, chọn 1:**
- **(a) Giữ 8ヶ月, hạ mức tiết kiệm:** đổi `年間1.2億円` → `年間4,800万円` (3,200万 ÷ 4,800万 = 0.667 năm = 8 tháng). VN: "giảm lỗ 48 triệu yên/năm".
- **(b) Giữ 1.2億, sửa kỳ hoàn vốn:** đổi `8ヶ月` → `約3ヶ月`. VN: "hoàn vốn khoảng 3 tháng".

⚠️ **Khuyến nghị chọn (a).** Lý do: con số `年間1.2億円` **có mặt ở rule_11 dòng 58** (「在庫差異5%は、年間1.2億円のロスに相当します」) làm mẫu hook số liệu. Sửa 1.2億 ở rule_19 sẽ làm lệch rule_11. Ngược lại, `8ヶ月` chỉ xuất hiện đúng 1 chỗ trong cả sách nên đổi 8ヶ月 → 3ヶ月 an toàn hơn về mặt lan toả… **nhưng** hoàn vốn 3 tháng cho dự án 3,200万 là con số phi thực tế đến mức khách Nhật sẽ nghi ngờ ngay — mà chính rule_20 dạy "khách không tin cái quá hoàn hảo". Nếu chọn (a) thì phải kiểm lại rule_11 xem 1.2億 ở đó có phải cùng ngữ cảnh 白鷗 không (là hook cho khách, tính trên toàn bộ tổn thất 5% — khác với phần B案 thu hồi được), nếu đúng thì hai con số **không mâu thuẫn** và (a) chạy được sạch.

---

### 🔴 D-2 — rule_19 dòng 38: 「Phase 2 比で約2倍」 sai số học

**Nguyên văn (dòng 39, thoại ハーCTO):**
```
「Phase 2 比で約2倍だね、なぜ？」
Gần gấp đôi Phase 2 nhỉ, vì sao?
```

**Vấn đề:** 3,200万 ÷ 1,800万 = **1.78 lần**. Gọi 1.78 là "約2倍" thì tạm chấp nhận được trong hội thoại đời thường, **nhưng** đây là câu của **Hà CTO đóng vai 大垣 営業部長** — nhân vật mà chính rule_15 dòng 25 mô tả là người "データの期間とサンプル数必ず聞く" (luôn hỏi kỳ và số mẫu). Một nhân vật được xây dựng là người soi số cực kỹ mà lại làm tròn 1.78 → 2 là **lệch tính cách nhân vật**, và vô tình dạy học viên rằng làm tròn số kiểu này trước khách Nhật là chấp nhận được — trái với chính luận điểm rule_15 ("chính xác + minh bạch > đẹp") và mục "Tránh" rule_15 ("Trục Y cắt cụt để tạo hiệu ứng giật gân → đối tượng người Nhật phát hiện = mất niềm tin").

**Đề xuất sửa (dòng 39):**
```
「Phase 2 比で約1.8倍だね、なぜ？」
Gấp khoảng 1.8 lần Phase 2 nhỉ, vì sao?
```
Sửa xong còn được thêm giá trị dạy học: chính người hỏi cũng dùng số chính xác.

---

### 🔴 B — rule_20: sách tự mâu thuẫn về SỐ LƯỢNG rủi ro (3-5 vs "3 là ít")

Rule dạy con số chuẩn ở **4 chỗ**, rồi note 【1】 phủ định luôn con số đó.

| Dòng | Nguyên văn | Dạy |
|---|---|---|
| 3 (luận điểm VN) | "Trình bày **3-5 rủi ro** với 対策 cụ thể" | 3-5 |
| 5 (luận điểm JA) | `3-5 リスクを発生確率＋影響度＋対策付きで開示。` | 3-5 |
| 26 (thoại ズン) | `**3-5個 + 各対策**が標準。` / *"Chuẩn là 3-5 cái + mỗi cái có đối sách."* | 3-5 |
| 52 (Câu chốt) | `**「3-5リスク × 確率 × 影響 × 対策。…」**` | 3-5 |
| **44 (note 【1】)** | `- 【1】**4-5 リスク** — 3個少ない、6個以上希薄化. 4-5 cái là điểm vàng (sweet spot).` | **4-5, và 3 là ÍT** |

**Vấn đề:** note 【1】 nói thẳng **「3個少ない」 (3 cái là quá ít)** trong khi câu chốt — thứ học viên học thuộc — lại dạy "3-5". Học viên làm slide 3 rủi ro theo câu chốt, rồi đọc note thì biết mình vừa làm cái mà sách bảo là "quá ít". Đây đúng dạng B "lý thuyết vs chú thích" trong rule mục 4.

Thêm nữa mục **Tránh** (dòng 76) viết "6+ rủi ro → đối tượng nghe quá tải" — khớp với note 【1】 (`6個以上希薄化`) chứ không khớp với biên "3-5".

**Đề xuất sửa — thống nhất về 4-5 (hướng đúng nghiệp vụ hơn, và khớp cả note 【1】 lẫn mục Tránh):**
- dòng 3: "Trình bày **4-5 rủi ro**…"
- dòng 5: `4-5 リスクを発生確率＋影響度＋対策付きで開示。`
- dòng 26: `**4-5個 + 各対策**が標準。` / *"Chuẩn là 4-5 cái + mỗi cái có đối sách."*
- dòng 52: `**「4-5リスク × 確率 × 影響 × 対策。『リスクなし』は信頼の自殺。」**` + vế Việt dòng 54 tương ứng
- dòng 44: giữ nguyên (đã đúng)

⚠️ **Kiểm chéo bắt buộc trước khi sửa:** thoại ở dòng 38 Linh đưa ra **4 rủi ro**, còn bảng mẫu (dòng 60-66) có **5 rủi ro**. Cả hai đều nằm trong biên 4-5 → sau khi sửa vẫn nhất quán. Không cần đụng.

---

## 🟡 VỪA

### 🟡 F-1 — rule_16 dòng 44: cross-ref LIÊN SÁCH trỏ sai sách

**Nguyên văn (dòng 44):**
```
- 【3】**「ナレーションは私」** — phân vai đồng trình bày. Tách người thao tác với người dẫn lời thì mạch demo mượt. Tham chiếu chéo sách 03 rule 32.
```

**Vấn đề:** đã mở tận nơi cả hai file (theo cảnh báo rule mục 1.6 — giữ đủ tiền tố "sách 03" khi kết luận):

| Đích | H1 thật |
|---|---|
| `books/03_meeting/nội_dung/phần_III/rule_32_結論先送り/rule.md` | `# Rule 32 — Hoãn quyết định / 結論先送り` |
| `books/05_presentation/nội_dung/phần_V/rule_32_引き継ぎ/rule.md` | `# Rule 32 — Bàn giao giữa người đồng trình bày / 共同プレゼンの引き継ぎ` |

Sách 03 rule 32 nói về **hoãn quyết định trong họp** — không dính gì tới phân vai đồng trình bày. Nội dung mà note đang muốn trỏ tới nằm ở **rule 32 của CHÍNH sách 05** (共同プレゼンの引き継ぎ). Chữ "sách 03" là thừa.

**Đề xuất sửa:** `Tham chiếu chéo rule 32.` (bỏ "sách 03" — thành cross-ref cùng sách, đúng quy ước dòng 7 và dòng 86 của chính file này).

**Kiểm chéo:** cross-ref liên sách còn lại trong phạm vi — rule_19 dòng 7 và dòng 46 `sách 03 rule 27 (根拠反論)` — đã mở tận nơi: `03_meeting/.../rule_27_根拠反論/rule.md` = `# Rule 27 — Phản biện có cơ sở / 根拠を伴った反論`. **ĐÚNG, không đụng.**

---

### 🟡 E — rule_20 dòng 65: lọt TIẾNG VIỆT vào ô tiếng Nhật của bảng mẫu

**Nguyên văn (dòng 65, trong bảng 「Mẫu bảng rủi ro」):**
```
| 4 | 保守要員依存 | 低 | 中 | 2名以上の đào tạo chéo |
```

**Vấn đề:** đây là **bảng mẫu tiếng Nhật để học viên copy vào slide thật**. Bốn dòng còn lại đều thuần Nhật (`旧環境 parallel 3ヶ月`, `日次リコンサイル監査`, `月次見直し + 再計画権利`, `ML model 月次再学習`), riêng dòng 4 lẫn tiếng Việt giữa cột 対策. Học viên copy nguyên xi sang slide gửi khách Nhật là lộ ngay. Tàn dư của một đợt dịch trước (thoại dòng 38 vẫn dùng bản gốc `2名以上の training`).

**Đề xuất sửa (dòng 65):** `| 4 | 保守要員依存 | 低 | 中 | 2名以上のクロストレーニング |`
(hoặc thuần Nhật hơn: `2名以上への引き継ぎ教育`)

**Kiểm chéo — không sửa quá tay:** đã quét toàn phạm vi, đây là **ca DUY NHẤT** tiếng Việt lọt vào vế Nhật trong 8 rule. Đừng suy ra "cả phần III bị lẫn ngôn ngữ".

---

### 🟡 E — rule_15 dòng 71: chữ Trung GIẢN THỂ trong vế tiếng Việt

**Nguyên văn (dòng 71, mục Tránh):**
```
- Biểu đồ tròn >5 项目 → không thể so sánh các phần
```

**Vấn đề:** `项目` là **giản thể**, dạng Nhật/phồn thể phải là **`項目`**. Đây đúng loại lỗi "ký tự lạ" ở rule mục 4E. Đáng chú ý: `STATUS.md` changelog v1.0→v1.1 đã khai sửa đúng loại này ở rule_06 (`100%发生` → `100% sẽ xảy ra`) — tức **đợt fix trước chạy nửa vời, script không quét hết** (rule mục 5).

**Đề xuất sửa (dòng 71):** `- Biểu đồ tròn > 5 項目 → không thể so sánh các phần`
(hoặc Việt hoá hẳn cho thống nhất với các gạch đầu dòng khác: `- Biểu đồ tròn > 5 mục → không thể so sánh các phần`)

**Kiểm chéo:** đã quét toàn bộ 8 file phần III với bộ ký tự giản thể + Hangul → **chỉ 1 ca này**. Không có Hangul.

---

## 🔵 NHẸ

### 🔵 F — rule_21 dòng 61: nhãn số ngày trên Gantt lệch với khoảng ngày

**Nguyên văn (dòng 60-64, khối Gantt trong mẫu):**
```
                    5月  6月  7月  8月  9月  10月 11月 12月
①要件定義 (15日)    ███
②設計開発 (90日)         ████████████
③テスト (45日)                          ██████
④リリース移行(30日)                              ████
```
Đối chiếu với thoại dòng 34 (cùng file): `①要件定義(5/15-6/30) ②設計開発(7/1-9/30) ③テスト(10/1-11/15) ④リリース移行(11/16-12/15)`

| Phase | Nhãn trong Gantt | Khoảng ngày thật | Lệch |
|---|---|---|---|
| ①要件定義 | 15日 | 5/15–6/30 = **47 ngày** | **-32 ngày** ❌ |
| ②設計開発 | 90日 | 7/1–9/30 = 92 ngày | 2 ngày (làm tròn, OK) |
| ③テスト | 45日 | 10/1–11/15 = 46 ngày | 1 ngày (OK) |
| ④リリース移行 | 30日 | 11/16–12/15 = 30 ngày | 0 ✅ |

**Vấn đề:** `(15日)` gần như chắc chắn là nhầm từ ngày bắt đầu **5/15**. Ba phase kia đều khớp trong sai số làm tròn, riêng phase ① lệch hơn gấp 3 lần. Rule_21 là rule dạy "khách Nhật soi tiến độ cực kỳ nghiêm" nên bảng mẫu sai số ngày là mỉa mai.

**Đề xuất sửa (dòng 61):** `①要件定義 (45日)    ███`

*(Thanh `███` của phase ① phủ 5月-6月 là đúng tỉ lệ với 47 ngày rồi — chỉ nhãn sai.)*

---

### 🔵 F — rule_15 dòng 37: callout 「90%削減見込み」 hơi lệch rule_17

**Nguyên văn rule_15 dòng 37:** `コールアウトは『**Phase 2 で64%削減、Phase 3 で90%削減見込み**』の1つだけ。`

**Kiểm chứng:** `Phase 2 で64%削減` **KHỚP TUYỆT ĐỐI** với trục truyện toàn sách (rule_02/03/08/10: 在庫差異 5% → 1.8%; (5−1.8)/5 = **64.0%**). Đây là chi tiết được cài rất khéo — **CẤM SỬA**.

`Phase 3 で90%削減見込み` từ mốc 5% ⇒ đích **0.5%**. Nhưng rule_17 dòng 59 (bảng so sánh phương án) ghi 差異率改善見込み của **B案(推奨)** = **0.3%** ⇒ tương đương 94%削減.

**Vì sao chỉ 🔵:** bảng rule_17 là **mẫu trừu tượng** (các ô khác toàn `〇〇万円`, `〇ヶ月`), không phải số chốt của dự án 白鷗; và 90% có thể hiểu là con số bảo thủ nói với khách trong khi 0.3% là kỳ vọng nội bộ — điều này thậm chí hợp với tinh thần rule_20 (đừng hứa lịch/số hoàn hảo). **Không nhất thiết phải sửa.** Nếu chủ nhà muốn khít tuyệt đối thì đổi rule_17 dòng 59 `◎ 0.3%` → `◎ 0.5%` (khi đó 差異率改善見込み cột B ăn khớp với callout rule_15).

⚠️ Nếu sửa thì phải xem lại tương quan A=1.0% / B / C=0.2% để B vẫn nằm giữa.

---

### 🔵 E — rule_17 dòng 87: âm Hán Việt `責任放棄` sai 2 chữ

**Nguyên văn (dòng 87, bảng từ vựng):**
```
| 責任放棄 | せきにんほうき | TRÁCH NHẬM PHÓNG KHỨ | Bỏ trách nhiệm |
```

**Vấn đề:**
- `責任` = **TRÁCH NHIỆM** (đang ghi "TRÁCH NHẬM" — lỗi chính tả tiếng Việt)
- `放棄` = **PHÓNG KHÍ** (棄 đọc là *khí*, không phải *khứ*; 去 mới là *khứ*). Đã kiểm chứng từ điển Hán Nôm.

**Đề xuất sửa (dòng 87):** `| 責任放棄 | せきにんほうき | TRÁCH NHIỆM PHÓNG KHÍ | Bỏ trách nhiệm |`

**Kiểm chéo:** đã soi toàn bộ cột Hán Việt của 8 rule. Các ô còn lại **ĐÚNG HẾT** — kể cả những ô trông lạ: `推奨` = SUY TƯỞNG ✅, `運用負荷` = VẬN DỤNG PHỤ HÀ ✅, `要警戒` = YẾU CẢNH GIỚI ✅, `監査` = GIÁM TRA ✅, `倉庫担当` = THƯƠNG KHỐ ĐẢM ĐƯƠNG ✅. **Chỉ 1 ô sai.**

---

## Ngoài phạm vi — chỉ báo cáo, KHÔNG sửa

### 1. Mục lục vs H1 lệch 8/8 rule của phần III

`meta/mục_lục.md` dòng 65-72 vẫn dùng tên **tiếng Anh chưa Việt hoá**, còn H1 trong `rule.md` đã Việt hoá:

| # | mục_lục.md | H1 thật trong rule.md |
|---|---|---|
| 14 | Logical flow markers | Dấu hiệu luồng logic |
| 15 | Data presentation | Trình bày dữ liệu |
| 16 | Demo flow trong pitch | Luồng demo |
| 17 | So sánh phương án (matrix) | So sánh phương án (bảng so sánh) |
| 18 | Customer voice / case study | Lời chứng thực của khách |
| 19 | Pricing slide tactful | Slide giá cả khéo léo |
| 20 | Risk & mitigation | Rủi ro và biện pháp đối phó |
| 21 | Roadmap visualization | Trực quan hóa lộ trình |

Đây là **8 trong số 25/35** mà main Claude đã đo trước khi tung agent (`00_TIEN_DO.md` phép đo #1) — con số của tôi **khớp thước đo**, không phóng đại. `mục_lục.md` là file chung của cả sách nên tôi không đụng; để main Claude sửa 1 lượt cho 35 rule.

### 2. `_front_matter.md` hứa "Phụ lục D (tổng hợp mẫu)" trùng "Phụ lục A (tổng hợp mẫu câu)"

`_front_matter.md` dòng 21: *"Phụ lục: A (tổng hợp mẫu câu), B (từ vựng), C (luyện BJT 35 câu), D (tổng hợp mẫu)."* — A và D mô tả gần như trùng nhau. `meta/mục_lục.md` dòng 106-109 nói rõ hơn: A = Script template, D = Templates tổng hợp (~6 templates). Front matter nên ghi D là "tổng hợp biểu mẫu (checklist / report / email)" cho phân biệt. **Ngoài phạm vi phần III — không sửa.**

### 3. `_thuat_ngu.md` thiếu 3 viết tắt phần III dùng

Phần III dùng `ML` (rule_20 dòng 66 `ML model 月次再学習`), `SKU` có rồi ✅, `UAT` có rồi ✅, nhưng **`ML`** và **`ROI`**… ROI có ✅, riêng **ML (Machine Learning)** chưa có trong bảng thuật ngữ dù xuất hiện ở rule_20. rule_19 dòng 40 viết dạng đầy đủ `機械学習` nên chỉ rule_20 dùng viết tắt trần. **Ngoài phạm vi — báo để main Claude cân nhắc.**

### 4. `meta/STATUS.md` khai "Auto-review: 0 issues" — không đúng

STATUS khai v1.1 đã qua 2 review pass và "Auto-review: 0 issues", nhưng riêng phần III còn 3 lỗi nặng (2 lỗi số học ROI, 1 tự mâu thuẫn) + chữ giản thể `项目` cùng loại với lỗi đã khai là đã fix ở rule_06. Đúng như rule mục 5 cảnh báo: **đừng tin STATUS.md**.

---

## ⛔ DANH SÁCH CẤM SỬA — chỗ ĐÚNG nhưng dễ bị sửa nhầm

| # | Chỗ | Vì sao dễ bị sửa nhầm | Vì sao ĐÚNG |
|---|---|---|---|
| 1 | **rule_18 dòng 38: `在庫差異 3.2%→0.8%`** | Xung đột thị giác với trục truyện toàn sách (5% → 1.8%) → rất dễ bị "sửa cho khớp" | Đây là khách **KHÁC**: 山田倉庫株式会社 (case study cũ), còn 5%→1.8% là của **白鷗** (khách hiện tại). Đã kiểm: 白鷗 xuất hiện ở rule_01/03/05/15/24/26/28/29/30/31; 山田倉庫 CHỈ ở rule_18. Hai tuyến số liệu độc lập. **(3.2−0.8)/3.2 = 75.0%** — con số 75%削減 trong sách chính xác tuyệt đối. |
| 2 | **rule_15 dòng 37: `Phase 2 で64%削減`** | Trông như số bịa | (5−1.8)/5 = **64.0%** — khớp chính xác trục truyện rule_02/03/08/10. Chi tiết cài rất khéo. |
| 3 | **rule_19 dòng 7 + 46: `sách 03 rule 27 (根拠反論)`** | Sau khi biết rule_16 có cross-ref liên sách SAI, dễ "dọn luôn cho sạch" cả cái này | Đã mở tận nơi: `03_meeting/.../rule_27_根拠反論/rule.md` = "Phản biện có cơ sở / 根拠を伴った反論". **ĐÚNG.** (Đây đúng cái bẫy rule mục 1.6 — quét regex cắt mất tiền tố "sách 03" sẽ báo động sai.) |
| 4 | **rule_20 dòng 41+46: `rule 05 cross-ref` (赤は要警戒専用)** | Trông như cross-ref lạc | Đã mở `phần_I/rule_05_色彩心理/rule.md`: "赤は警告／緊急のみ — 装飾には使わない". **Khớp hoàn hảo.** |
| 5 | **rule_16 dòng 38: `了解。`** (Tuấn nói) | Bộ lọc keigo hay gắn cờ 了解 là "thất lễ" | Đây là **hội thoại nội bộ ngang hàng** (Tuấn ↔ Dũng, đồng nghiệp cùng công ty, không có khách). 了解 chỉ cấm khi nói với 上司/khách. Đúng ngữ cảnh. |
| 6 | **Toàn phần III: `弊社` / `御社`** | Bộ lọc uchi/soto tự động hay gắn cờ | Đã soi từng ca (rule_15/17/19/21): 弊社 luôn chỉ công ty MÌNH (khiêm nhường), 御社 luôn chỉ công ty KHÁCH. **Đúng 100%, không có ca nào lẫn.** Đặc biệt `弊社推奨` (rule_17) là thuật ngữ chuẩn trên đề xuất business Nhật. |
| 7 | **rule_19 dòng 84: `3点ご説明させていただきます`** | Dễ bị gắn cờ 二重敬語 / 過剰敬語 「ご + させていただく」 | `ご説明する` là 謙譲語 chuẩn cho hành vi CỦA MÌNH hướng tới người nghe (bikago-kenjōgo), `させていただく` chồng lên là văn phong thương lượng chuẩn mực. **KHÔNG phải 二重敬語.** (二重敬語 sẽ là `ご説明させていただかせていただく` hoặc `お伺いさせていただく`.) |
| 8 | **rule_18 dòng 45: `ある担当者様`** | 様 gắn vào cách gọi vô danh trông sai | Đây là **ví dụ XẤU đang bị phê phán** trong chính note đó ("「Một nhân viên nào đó」 thì yếu"). Sửa là phá mất ví dụ phản diện. |
| 9 | **Tiếng Anh trong vế Việt: `slide` (rule_14 d.65, rule_20 d.19), `demo` (rule_16 d.3), `Gantt` (rule_21 d.23, d.50), `Anchor` (rule_19 d.38)** | Bộ lọc "tiếng Anh thừa" quét ra 5 ca này | Đều là **thuật ngữ nghề đã chuẩn trong môi trường IT/business Việt**. Việt hoá `slide` → "trang chiếu", `Gantt` → "biểu đồ Gantt ngang" chỉ làm văn nặng hơn. **Không báo, không sửa.** |
| 10 | **rule_15 dòng 3+60: `構成比 (≤5項目) → Tròn` nhưng dòng 70 `Tránh: 3D biểu đồ bất kỳ`** | Trông như mâu thuẫn "được dùng tròn / cấm tròn" | Không mâu thuẫn: cho phép **円グラフ 2D ≤5 mục**, cấm **3D pie**. Bảng dòng 60 ghi rõ cột "Nên tránh = Tròn 3D". Đã kiểm chứng WebSearch: quy tắc "円グラフ dùng khi ít mục, nhiều mục thì khó đọc" là chuẩn ngành. **ĐÚNG.** |
| 11 | **rule_21 dòng 34+69-73: các cặp owner `ズン / 松本`, `トゥアン / 田中`** | Trông như gán nhân vật tuỳ tiện | Khớp bối cảnh sách: 松本 = PM bên khách (rule_01 dòng 14), 田中 = PMO bên khách (front matter dòng 27), ズン/トゥアン = bên 弊社. Cặp vendor/client đúng như note 【3】 dạy. |
| 12 | **rule_21: mọi mốc ngày trong 前提条件 (dòng 80-82)** | Nhiều ngày rời rạc dễ bị nghi lệch | Đã kiểm toàn bộ: テストデータ 9/15 nằm trong 設計開発 (7/1-9/30) trước khi テスト bắt đầu 10/1 ✅; セキュリティ監査 10/1-10/15 nằm trong テスト ✅; 本番環境アクセス 11/16 = đúng ngày リリース移行 khởi động ✅; buffer 8/16-8/22 ngay sau 設計レビュー 8/15 ✅; buffer 11/8-11/15 kết đúng ngày UAT完了 ✅. **Toàn bộ logic lịch NHẤT QUÁN.** Chỉ mỗi nhãn `(15日)` sai (đã báo ở 🔵). |

---

## Ghi chú phương pháp (để đợt sau kiểm chứng lại được)

- **Đã strip ruby bằng python trước mọi kết luận** (rule mục 1.1). Không dùng grep trần trên chuỗi có kanji.
- **Cross-ref liên sách: mở tận file đích**, không suy từ số hiệu (rule mục 1.6). Đã mở 4 file ở sách 03 và phần I/V sách 05.
- **Không viết script sửa** — báo cáo thuần (rule mục 1.7 + nguyên tắc 1).
- **Tự chặn phóng đại (rule mục 3):** đã cân nhắc rồi **LOẠI** các mục sau khỏi báo cáo:
  - ~~40 ca "tiếng Anh thừa"~~ → thực tế chỉ 5 ca ở vế Việt, đều là thuật ngữ nghề chuẩn → 0 lỗi.
  - ~~"rule_18 mâu thuẫn số liệu với rule_02/03/08"~~ → hai khách khác nhau → 0 lỗi (đưa vào CẤM SỬA).
  - ~~"rule_15 cho phép tròn nhưng lại cấm tròn"~~ → 2D ≤5 mục vs 3D → 0 lỗi.
  - ~~"了解 thất lễ"~~ → hội thoại nội bộ ngang hàng → 0 lỗi.
  - ~~"ご説明させていただきます là 二重敬語"~~ → không phải → 0 lỗi.
- **rule_14 và rule_18 SẠCH** — không bịa lỗi cho đủ số (nguyên tắc 4).
- Số mục lục lệch tôi đếm được (8/8 phần III) **khớp thước đo main Claude** (25/35 toàn sách).

---

*P3 — phần_III (rule_14→21) — hoàn tất.*
