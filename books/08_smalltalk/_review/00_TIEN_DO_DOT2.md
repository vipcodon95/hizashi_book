# Sách 08 — Smalltalk — ĐỢT RÀ SOÁT 2 (áp dụng rule book-review.md)

> Đợt 1 đã có: `00_TIEN_DO.md`, `A1`–`A4`, `meta/REVIEW_FINDINGS_JP.md`, `REVIEW_FINDINGS_VN.md`.
> **Đợt 2 này** dùng `.claude/rules/book-review.md` (viết SAU đợt 1, đúc kết từ 6 sách).
> 5 subagent Opus, mỗi agent 1 phần. Main Claude tổng duyệt — **kiểm chứng trước khi sửa**.

## ⛔ PHẠM VI

CHỈ sửa `.md`: `rule.md`, `meta/mục_lục.md`, `_front_matter.md`, `_back_matter.md`.
**KHÔNG đụng:** `conversation.json` · script build · `phụ_lục_*.md` (sinh tự động).

## Quy mô: **51 rule**, 5 phần

| Phần | Số rule |
|---|---|
| I | 8 · II | 12 · III | 13 · IV | 8 · V | 10 |

## 📏 Thước đo main Claude — VÀ 2 BÁO ĐỘNG SAI TỰ BẮT ĐƯỢC

| # | Phép đo | Kết quả |
|---|---|---|
| 1 | Mục lục vs H1 | **VN lệch 51/51**, JP lệch 9/51 ← vấn đề thật |
| 2 | 二重敬語/過剰敬語 (16 pattern) | **0** |
| 3 | Ký tự lạ | **0** (xem báo động sai #1) |
| 4 | Emoji strip | **0** (xem báo động sai #2) |
| 5 | Ruby vỡ | **0** |

### 🪤 Báo động sai #1 — "11 ký tự giản thể"

Bộ lọc của tôi có chữ `那` → báo 11 ca. Nhưng **`那` là KANJI NHẬT**: 那覇 (Naha, Okinawa),
那珂川 (Fukuoka). Lọc lại với bộ ký tự chỉ-có-ở-giản-thể còn `点/几/没` — mở ra xem thì:
`几帳面` (kichōmen, tính tỉ mỉ) và `没` (mất, qua đời) đều là **kanji Nhật hợp lệ**.
→ **Sách 08 KHÔNG có ký tự lạ.**

### 🪤 Báo động sai #2 — "29 file mất emoji"

Phép đo `\n \*\*` bắt được 29 file. Nhưng sách 08 **không dùng cấu trúc `📝 **Ghi chú:**`**
như sách 02-07 (chỉ 2/51 file có chữ "Ghi chú"). 29 ca đó là dòng in đậm bình thường
(`**Vì sao XẤU:`, `**Đúng:`, `**Công thức vàng:`) — **không phải emoji bị strip**.
→ Phép đo lấy từ sách khác, **không áp dụng được cho sách này**.

⚠️ **Bài học cho agent:** đừng bê thước đo của sách khác sang. Kiểm cấu trúc sách này trước.

## ⚠️ ĐẶC THÙ SÁCH 08 — ĐÃ QUA RÀ SOÁT ĐỢT 1

Có sẵn `meta/REVIEW_FINDINGS_JP.md` + `REVIEW_FINDINGS_VN.md` + `_review/A1`–`A4`.
→ **NHIỆM VỤ BẮT BUỘC (rule mục 5):** với mỗi mục trong REVIEW_FINDINGS, mở đúng file,
tìm chuỗi "Sai" và chuỗi "Đúng", báo **ĐÃ FIX / CHƯA FIX / FIX NỬA VỜI (chỉ JA hoặc chỉ VN)**.

**Bài học đã ghi trong rule mục 5 — chính từ sách 08 này:**
- Script đợt trước chỉ vá `conversation.json`, **không đụng `.md`** — mà `.md` mới vào sản phẩm
- Vá thoại nhưng **quên bảng từ vựng** (rule_36 sửa "Buôn Ma Thuột" mà vocab vẫn "Đà Lạt")
- Script xưng hô **không có pattern "chị"** → nhân vật nữ sót toàn bộ
- rule_28: `約20店舗` (d33) vs `25店舗` (d35) — tự mâu thuẫn

## Phân công

| Agent | Phần | Số rule | Trạng thái |
|---|---|---|---|
| S1 | phần_I | 8 | ✅ XONG → `S1_phần_I.md`. **15 dòng xưng hô CHƯA fix trong .md** (P0-1 chỉ vá .json + rule_01; sót "chị" ở rule_08) · 2 ký tự `內` U+5167 (**thước đo "ký tự lạ=0" SAI**) · mục lục phần I **8/8 KHỚP** (**thước đo "VN lệch 51/51" SAI ở phần này**) · 9/9 dữ kiện WebSearch ĐÚNG · 0 lỗi kính ngữ (xác nhận) · rule_08 thiếu vùng cấm 野球 |
| S2 | phần_II | 12 | ⏳ đang chạy |
| S3 | phần_III | 13 | ✅ XONG → `_review/S3_phần_III.md` · 6 🔴 / 8 🟡 / 9 🔵 · 61 dữ kiện WebSearch (8 SAI) · fix đợt trước: 9 ĐỦ / 1 NỬA VỜI / 3 CHƯA · 15 mục CẤM SỬA |
| S4 | phần_IV | 8 | ✅ XONG → `S4_phần_IV.md` · 8 🔴 / 9 🟡 / 7 🔵 · **rule_36 "Buôn Ma Thuột" ĐÃ FIX TRỌN (thoại+vocab) — cảnh báo cũ không còn đúng** · nặng nhất: Trung thu 2026 sai ngày (7/9→25/9), `4500万ドン` lệch 10× (JA sai/VN đúng), Bát Đàn≡Gia Truyền là 1 quán |
| S5 | phần_V + nhất quán toàn sách | 10 | ✅ XONG → `S5_phần_V.md`. **"VN lệch 51/51" là BÁO ĐỘNG SAI — thực tế 0/51** (phép đo so H1 với cột JP; mục lục 3 cột, cột 2 khớp 100%) · 9 ca lệch cột JP = CHỦ Ý (tiền tố vùng 中部/関西/九州) · **bug 159 nhãn `Rule 08` ĐÃ FIX** (A: 51 rule/51 ref, C: 51 rule/153 câu, ánh xạ 1-1) · 🔴 **Phụ lục C: 35/153 câu giải thích chê CHÍNH đáp án đúng** (17 câu phần V, lệch nhãn chữ cái có hệ thống — NGOÀI PHẠM VI, sửa ở script) · 🔴 rule_44 「むぎとオリーブ」khai 24h (thật: đóng 21:45, nghỉ CN) · 🔴 rule_47 Hiroshi "mới gặp lần 2" mâu thuẫn rule_09/10/11/14/18 · 🔴 rule_45 T6/2026 lệch (42/43/44/46 + rule_51 đều T5, ngày 2026-05-20) · 🔴 **中村 Hokkaido nói Kansai-ben** rule_49 d59 + rule_08 d117 (大垣/佐藤 nói phương ngữ ĐÚNG — CẤM sửa hàng loạt) · 🟡 mục lục hứa phụ lục C "50 câu" thực tế 153 · 🟡 rule_45 nhãn "(Reiwa)" gán cho nhạc Heisei 2018 · 🟡 rule_49 「観測史上最も早い積雪」 quá mạnh (thật: sớm hơn TB 4 ngày) · **0 lỗi kính ngữ, 0 lỗi xưng hô, 0 ký tự lạ, 0 ruby vỡ** ở phần V · tên sách khớp 4/4 nơi · front matter không hứa suông |

## Danh sách rule theo phần

### phần_I — 8 rule

- rule_01_タイミング
- rule_02_8_2のルール
- rule_03_親密度レベル
- rule_04_開かれた質問
- rule_05_聞き上手
- rule_06_トピック転換
- rule_07_沈黙
- rule_08_NG話題

### phần_II — 12 rule

- rule_09_天気
- rule_10_出身地
- rule_11_食
- rule_12_酒
- rule_13_家族
- rule_14_趣味
- rule_15_旅行温泉
- rule_16_季節行事
- rule_17_健康
- rule_18_世代
- rule_19_アニメ
- rule_20_ニュース

### phần_III — 13 rule

- rule_21_北海道
- rule_22_東北
- rule_23_関東東京
- rule_24_愛知
- rule_25_岐阜
- rule_26_大阪
- rule_27_京都
- rule_28_広島
- rule_29_四国
- rule_30_福岡
- rule_31_熊本鹿児島
- rule_32_沖縄
- rule_33_メモバンク

### phần_IV — 8 rule

- rule_34_フォー
- rule_35_テト
- rule_36_コーヒー
- rule_37_気候
- rule_38_都市
- rule_39_祭り
- rule_40_和食
- rule_41_観光

### phần_V — 10 rule

- rule_42_居酒屋オーダー
- rule_43_乾杯お酌
- rule_44_二次会
- rule_45_カラオケ
- rule_46_飲み過ぎ防止
- rule_47_GOLD話題
- rule_48_地雷話題
- rule_49_雑談ネタ収集
- rule_50_関係維持
- rule_51_自己振り返り

---

## Nhật ký

- Lập thước đo, **tự bắt 2 báo động sai của chính mình** (giản thể + emoji), tung 5 agent.

---

## ✅ Main Claude thẩm định — 8 chỗ sửa, và BA báo động sai của chính tôi

### 🪤 Báo động sai #3 — "Mục lục lệch 51/51" (nặng nhất)

**S5 và S1 độc lập cùng bác.** Mục lục sách 08 có cột 2 chứa **cả VN lẫn JP** (`Khi nào "tán" được? / 雑談のタイミング`), cột 3 lặp lại phần JP. Phép đo của tôi so H1 đầy đủ với **cột 3** → luôn trả 51/51 **bất kể sách đúng hay sai**.

Đo lại đúng cấu trúc (so cột 2 với cả chuỗi H1): **lệch 1/51**, và ca đó chỉ là mục lục còn ruby chưa strip. **Sách 08 KHÔNG có việc gì phải làm về mục lục.**

→ Ba lần trong một đợt tôi bê thước đo sách khác sang: `那` (giản thể), emoji strip, mục lục. **Đã ghi vào rule mục 1.9.**

### Agent ĐÚNG

| Agent | Phát hiện | Kiểm chứng |
|---|---|---|
| **S1** | 2 ca `內` (U+5167 phồn thể) ở r03 d104, r06 d105 | **Đúng** — r01 d94 viết đúng `内` (U+5185). Bộ lọc của tôi không có ký tự này |
| **S4** | `rule_39` sai ngày Trung thu 2026 | **Đúng.** WebSearch: rằm tháng 8 ÂL 2026 = **25/9** (thứ Sáu), không phải 7/9. Sai ở **4 chỗ** |
| **S2** | `rule_20` `スーパーフライト` là tên đòn **BỊA** | **Đúng** — đòn đưa 平野歩夢 tới HCV Bắc Kinh 2022 là **トリプルコーク1440** |
| **S4** | `rule_40` `4500万ドン(約23,000円)` sai gấp 10 | **Đúng** — 45 triệu VND ≈ 260.000 yen. Vế Việt ghi "4,5 triệu" ĐÚNG, chỉ ô Nhật sai |
| **S2** | `rule_10` `お当地グルメ` | **Đúng** — phải là `ご当地` (r11 đã viết đúng) |
| **S2** | `rule_12` (rượu) + `rule_15` (ヒートショック) **đã fix triệt để** | **Xác nhận.** r12 nay viết "Tuyệt đối không ép bản thân uống" + nêu ALDH2 40% + アルハラ + 2 câu từ chối. r15 đã đúng chiều **cả JA lẫn VN** |
| **S4** | Cảnh báo `rule_36` "Buôn Ma Thuột/Đà Lạt" **không còn đúng** | **Xác nhận** — đã fix trọn cả thoại lẫn bảng từ vựng. Đưa vào CẤM SỬA |
| **S5** | Bug 159 nhãn `Rule 08` **đã fix hoàn toàn** | Phụ lục A 51/51 rule 1-1; phụ lục C 51 rule/153 câu |

### Agent SAI (main bác)

| Agent | Báo cáo | Thực tế |
|---|---|---|
| **S1** | "15 dòng khách Nhật tự xưng anh/chị chưa fix trong `.md`" | **Phóng đại.** Quét đúng cấu trúc sách 08 (JA và VN nằm **hai dòng riêng**) ra 8 ca nghi vấn; mở từng ca thì **0 sai thật**. Ví dụ r08 d59: 山本 **tự nói tuổi mình**, "Chị" ở đó là **ngôi 1** — phụ nữ lớn tuổi tự xưng "chị" với đàn em là tự nhiên trong tiếng Việt. Đúng vệt "43 → thực tế 7" của chính sách này (rule mục 3) |

### 8 chỗ sửa

| # | File | Sửa |
|---|---|---|
| 1-2 | `rule_03` d104, `rule_06` d105 | `內` (phồn thể) → `内` |
| 3-6 | `rule_39` d18, d28, d29, d132 | Trung thu 2026: `7/9` → `25/9` (bối cảnh + thoại JA + thoại VN + câu vàng) |
| 7 | `rule_20` d98 + chú thích 【9】 | `スーパーフライト` (bịa) → `トリプルコーク1440` + viết lại chú thích |
| 8 | `rule_40` d40, d134 | `4500万ドン(約23,000円)` → `450万ドン(約26,000円)` |
| 9 | `rule_10` d159 | `お当地` → `ご当地` |

**Kiểm cuối trên release:** 5/5 nội dung mới có mặt · 6/6 nội dung cũ = 0.

## ⚠️ Ngoài phạm vi — chờ chủ nhà quyết

1. **🔴 Phụ lục C: 35/153 câu có GIẢI THÍCH chê chính đáp án đúng** (S5). Lệch nhãn chữ cái **có hệ thống** — chuỗi phê phán luôn là `A…; C…; D…`, B gần như không bao giờ bị nhắc. **File sinh tự động → sửa ở script.**
2. **`rule_49` d59 + `rule_08` d117 — 中村 (quê Hokkaido) nói Kansai-ben** (S5). Nặng vì phương ngữ vùng miền là giá trị bán hàng cốt lõi của chính cuốn sách. ⚠️ CẤM sửa hàng loạt: 大垣 (Osaka) và 佐藤 (Hakata) nói phương ngữ là **ĐÚNG**.
3. **4 lỗi dữ kiện S4/S2 nêu, chưa sửa vì cần chủ nhà chốt hướng:** r34 tách một quán phở thành hai (Phở Bát Đàn = Phở Gia Truyền Bát Đàn); r41 lịch trình Sapa bất khả thi (chợ Bắc Hà cách 100km, "ga Sapa" không tồn tại); r38 Phở Quỳnh không có Michelin và VN dịch "sao" thay vì Bib Gourmand; r15 入湯手形 1300→1500 yên.
4. `REVIEW_FINDINGS_VN` khai "36/50 file lỗi xưng hô" còn `STATUS.md` khai script sửa "25 file" — **chênh 36 vs 25 chưa được giải thích**.

---

## ✅ ĐỢT 2b — xử 8 mục từng xếp "chờ chủ nhà" (+12 chỗ, tổng sách 08 = 21)

Chủ nhà hỏi *"thế sách 8 thì sao?"* → rà lại: sách 08 mới sửa 9 chỗ trong khi sách 07 sửa 30. Kiểm thì **cả 8 mục agent nêu còn nguyên**, và phần lớn là **lỗi về Việt Nam** — loại nguy hiểm nhất (rule mục 4D).

### Lỗi về Việt Nam — 3 ca, đều đã WebSearch

| Rule | Sách nói | Thực tế |
|---|---|---|
| **r34** | Liệt ①`Phở Bát Đàn` và ③`Phở Gia Truyền` thành **2 quán khác nhau**, mô tả ngược nhau ("chắc chắn xếp hàng" vs "ít khách du lịch") | **Cùng một quán**: Phở Gia Truyền Bát Đàn, 49 Bát Đàn, Hoàn Kiếm. → Thay ③ bằng **Phở Sướng** (ngõ Trung Yên, Đinh Liệt, gia truyền từ 1930s) |
| **r41** | "Chợ Bắc Hà chủ nhật" trong lịch Sapa 1 đêm; "Hotel de la Coupole **trước ga Sapa thời Pháp thuộc**" | Chợ Bắc Hà cách Sapa **2,5h xe một chiều** → phải tách ngày riêng. **Sapa không có ga** (tàu dừng Lào Cai). Khách sạn **khai trương 12/2018**, Bill Bensley thiết kế phỏng phong cách Đông Dương |
| **r38** | "Phở Lệ, **Phở Quỳnh**, Bánh Xèo 46A đều vào **sao**" | Phở Quỳnh **không có trong Michelin Guide**; hai quán kia là **Bib Gourmand** (hạng "ngon, giá hợp lý"), không phải sao. Nhân vật nghe lại đúng là blogger ẩm thực |

### Lỗi về Nhật — 5 ca

| Rule | Sửa |
|---|---|
| **r49 + r08** | **中村 (quê Sapporo, Hokkaido) nói Kansai-ben** (`異常やね`, `なさそうやけど`, `話やから`) → giọng chuẩn. Nặng vì phương ngữ vùng miền là **giá trị bán hàng cốt lõi** của chính cuốn sách |
| **r15 + r31** | 入湯手形 Kurokawa `1300円 / 3軒` → **`1500円`, 2 tem tắm + 1 tem ăn-quà** (hệ thống đổi mới 2024). Lỗi ở **2 file**, r31 là chỗ tôi suýt bỏ sót |
| **r44** | 「銀座の『むぎとオリーブ』、24時間営業」 lúc 00:20 — quán thật đóng 21:45 LO, **nghỉ Chủ nhật**, lại là quán ramen cao cấp ban ngày → bỏ tên quán, đổi thành 「この時間でもやってる店、探しとくわ」 |
| **r45** | Bối cảnh `Tháng 6/2026` → **5/2026** (r42/43/44/46 cùng buổi tiệc đều 5/2026, r51 ghi rõ 2026-05-20) |
| **r47** | "Dũng mới gặp Hiroshi **lần thứ hai**" nhưng ngay d46 lại hỏi kiểu người đã quen → "đã gặp vài lần ở các buổi họp" |

### 🪤 Một ca tôi sửa nhầm rồi tự hoàn nguyên

Thấy `広島さん` tưởng là **gọi khách bằng tên tỉnh** (S4 cũng báo vậy), đã đổi thành `ヒロシさん`.
Nhưng quét toàn sách thì `r26` d54 giải thích rõ: 「**広島さん**(=Hiroshi さん)から教わったんやな?」 — đây là **biệt danh có chủ ý**, dùng nhất quán 5 lần khắp r26/r28/r40/r47.
→ **Đã hoàn nguyên.** Bài học: trước khi sửa tên nhân vật, phải quét **toàn sách** xem có phải quy ước không.

### Ba mục quét ra số dương nhưng KHÔNG phải lỗi (CẤM SỬA)

- `24時間営業` ở **r34** — nói về **quán phở vỉa hè Hà Nội**, đúng; khác hẳn ca quán Ginza ở r44
- `Tháng 6/2026` ở **r22/r24/r38** — bối cảnh riêng của từng rule, không liên quan r45
- `広島さん` 5 lần — biệt danh, xem trên

**Kiểm cuối trên release:** 9/9 nội dung mới có mặt · 6/6 nội dung cũ = 0.

---

## ✅ ĐỢT 2c — Sửa 49 câu phụ lục C lệch nhãn đáp án

Chủ nhà chốt: *"xử lý luôn đi, khớp dữ liệu là được... ta đang làm kiến thức chứ không phải tạo phụ lục"*.

### 🔍 Tìm ra thủ phạm — `scripts/shuffle_bjt_answers.py`

Script này xáo lại vị trí 4 option để phân bố A/B/C/D đều 25% (trước đó 72,5% câu có đáp án B → lộ pattern). Nhưng nó **chỉ xáo option, không đụng phần giải thích** — trong khi giải thích viết theo **nhãn** (`A = vùng cấm`, `C = chưa giao danh thiếp`).

Trớ trêu: docstring của script tự khai *"Đã verify (Haiku + regex) KHÔNG có câu nào tham chiếu nhãn chéo"* — phép verify đó chỉ soi **câu hỏi + option**, bỏ qua `explain_vi`.

### Cách sửa: tái dựng hoán vị từ git

`conversation.json` là nguồn, `.md` phụ lục là sản phẩm sinh tự động → sửa ở nguồn.

Tìm được commit **`b16aa6c`** là bản **trước khi shuffle**. Với mỗi câu:
1. So text 4 option bản cũ ↔ bản mới → dựng bản đồ nhãn `cũ→mới` (vd `{A→B, B→A, C→D, D→C}`)
2. Kiểm chứng bản đồ bằng chính đáp án: `map[ans_cũ] == ans_mới` — **117/117 câu khớp**, không câu nào phải bỏ qua
3. Lấy `explain_vi` từ **bản gốc** rồi ánh xạ nhãn theo bản đồ

**Kết quả: 54 câu được sửa nhãn** (4 câu vốn không bị xáo nên giữ nguyên).

### 🪤 Chạy sai chiều lần đầu — tự bắt được

Lần chạy đầu tôi lấy `explain_vi` từ **bản MỚI** (đã sai) rồi map tiếp → hỏng thêm. Bằng chứng lộ ngay ở dòng đối chiếu: `rule_01` trước sửa đang ĐÚNG, sau sửa lại thành chê chính đáp án.

→ `git checkout` hoàn nguyên, phân tích lại, rồi chạy đúng: **nguồn phải là `explain_vi` của bản GỐC**.

Bài học: script biến đổi dữ liệu phải in **trước/sau của vài mẫu** và **đọc thật** — không chỉ đếm số dòng đã đổi.

### 2 ca sửa tay (không nằm trong hoán vị)

| Câu | Vấn đề | Sửa |
|---|---|---|
| `rule_50` J-?? | Câu hỏi tìm phương án **NG nhất**, giải thích lại viết *"B ít rõ nhất... chọn B vì rõ là over-use"* — tự mâu thuẫn | Viết lại: B = nhắc dồn 5-6 chi tiết → khách thấy bị "điều tra"; nêu rõ C mới là cách đúng |
| `rule_20` J1-51 | Đáp án A ("chuyển chủ đề an toàn ngay") nhưng giải thích chê *"A = ép"* — "ép" thực ra là B (hỏi lại y hệt). Câu này dùng trường `correct` nên không có `explain_vi` | Thêm `explain_vi` đúng nội dung |

### Kiểm cuối

| Chỉ số | Trước | Sau |
|---|---|---|
| Câu giải thích chê chính đáp án đúng | **49/153** | **0/153** |
| Phân bố đáp án | — | A39 / B38 / C38 / D38 (vẫn cân) |

Phạm vi thay đổi: **26 `conversation.json` + phụ lục C**. Đã xác minh A/B/D/E **không bị đụng** (so md5 trước/sau — chỉ file C đổi).

⚠️ **Nợ kỹ thuật cần biết:** `shuffle_bjt_answers.py` vẫn còn khiếm khuyết — nếu chạy lại lần nữa sẽ **tái tạo đúng lỗi này**. Muốn xáo lại trong tương lai thì phải sửa script để ánh xạ luôn nhãn trong `explain_vi`, hoặc viết giải thích theo **nội dung** thay vì theo nhãn.
