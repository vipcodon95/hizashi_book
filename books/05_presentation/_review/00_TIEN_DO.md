# Sách 05 — Thuyết trình / プレゼンテーション — Tiến độ rà soát

> Áp dụng `.claude/rules/book-review.md`. Đợt này: **5 subagent Opus**, mỗi agent 1 phần.
> Main Claude giữ vai tổng duyệt — **kiểm chứng từng báo cáo trước khi sửa**.

## ⛔ PHẠM VI

CHỈ sửa file `.md`: `rule.md`, `meta/mục_lục.md`, `_front_matter.md`, `_back_matter.md`.

**KHÔNG đụng:** `conversation.json` · script build · `phụ_lục_*.md` (sinh tự động).
Lỗi ngoài phạm vi → **ghi báo cáo, không tự sửa**.

## Quy mô

- **35 rule** (đếm bằng `find -name rule.md`, không đếm thư mục), 5 phần, ~157.000 ký tự
- Chưa từng có `_review/` — đây là đợt rà soát có hạ tầng đầu tiên

## 📏 Thước đo main Claude lập TRƯỚC khi tung agent

Dùng để đánh giá báo cáo có phóng đại không (rule mục 3):

| # | Phép đo | Kết quả |
|---|---|---|
| 1 | Mục lục vs H1 lệch | **33/35** (đo lại — xem ghi chú dưới) |
| 2 | 二重敬語/過剰敬語 mẫu | **1** (`部長様`) |
| 3 | さ入れ言葉 | **0** |
| 4 | Tiếng Anh trong vế Việt | **40** lần (`slide` 34, `demo` 4, `review` 1, `flow` 1) |
| 5 | Emoji strip dòng `**` | **0** (đã khôi phục đợt trước) |
| 6 | Ký tự lạ (Hangul/giản thể) | **0** |

→ Agent báo vượt xa các số này thì phải kiểm chứng lại.

### ⚠️ Sửa thước đo #1: 25 → 33 (lỗi của main Claude)

Lần đo đầu tôi ra **25/35**. SAI: bảng mục lục có 4 cột (`# | Tên VN | Tên JP | Brief`)
nhưng regex của tôi bắt `\|(\d+)\|([^|]+)\|` nên lấy nhầm **cột `#`** làm tên.
Đo lại đúng cột: **33/35 lệch**, chỉ rule 03 và 23 khớp.

**Nguyên nhân lệch (không phải 33 lỗi riêng lẻ):** mục lục là **bản CHƯA VIỆT HOÁ**,
H1 trong rule.md thì đã Việt hoá. Đúng dạng đã gặp ở sách 08 (51/51) và 02 (60/60) — rule mục 4F.

| Ví dụ | Mục lục (cũ) | H1 (đã Việt hoá) |
|---|---|---|
| 13 | `Time-keeping promise` | `Cam kết giữ đúng giờ` |
| 20 | `Risk & mitigation` | `Rủi ro và biện pháp đối phó` |
| 29 | `Online presentation` | `Thuyết trình trực tuyến` |

**Cột Tên JP khớp 31/33** — chỉ rule 11 và 14 lệch thật, cần xem riêng.

→ Hướng sửa: đồng bộ mục lục theo H1 (không phải ngược lại), vì H1 mới là bản đã Việt hoá.

### 🔴 Lỗi keigo main Claude tự tìm được

`nội_dung/phần_V/rule_33_録画と共有/rule.md` d44: **`山田部長様`** — 二重敬語.
Chức danh `部長` đã hàm kính ngữ, thêm `様` là thừa. Đúng: `山田部長` hoặc `山田様`.
Thuộc phạm vi P5 — đối chiếu xem P5 có bắt được không.

### 🔴 Sai sự thật main Claude tự tìm (đã WebSearch xác minh)

`rule_06_密度ルール` d3 + d40: quy tắc **10-20-30 của Guy Kawasaki** bị mô tả là
*"Bản gốc dùng cho **người tiêu dùng**"* (d40).

**Thực tế:** Kawasaki viết bài "The 10/20/30 Rule of PowerPoint" (2005) dành cho
**startup pitch cho nhà đầu tư mạo hiểm (VC)** — ông đặt ra sau khi ngồi nghe quá nhiều
buổi pitch dài lê thê. Lý do chọn 10 slide: *"một người bình thường không tiếp thu nổi
quá 10 khái niệm trong một cuộc họp — mà VC thì rất bình thường."*

Nguồn: https://guykawasaki.com/the_102030_rule/

→ Sửa `người tiêu dùng` → `pitch gọi vốn cho nhà đầu tư (VC)`. Thuộc phạm vi **P1**.

### 🟡 Dịch nhầm ở H1 (main Claude tự tìm)

`rule_05_色彩心理` d1: `# Rule 05 — Tâm lý màu sắc trong **Tiếng Nhật công việc** / 色彩心理`

Mục lục ghi `Color psychology **JP business**`. Người Việt hoá đã dịch `JP` thành
**"Tiếng Nhật"** thay vì **"kinh doanh Nhật"**. Bản Nhật d5 nói rõ `日本ビジネスは保守的色調`
= "kinh doanh Nhật chuộng tông màu bảo thủ" — hoàn toàn không liên quan tới ngôn ngữ.

→ Sửa thành `Tâm lý màu sắc trong kinh doanh Nhật`. Thuộc phạm vi **P1**.

### ✅ Đã kiểm, KHÔNG phải lỗi (CẤM SỬA)

- `rule_03` gán **SCQA** cho khung **Minto Pyramid** — ĐÚNG (Barbara Minto, *The Pyramid Principle*).
- `rule_05` dạy đỏ chỉ dùng cảnh báo/CTA, bảng màu navy/charcoal — đúng chuẩn slide B2B Nhật.

### 🪤 BẪY chuẩn bị sẵn: "từ vựng không có trong thoại"

Tôi quét thử: **32 từ** trong bảng từ vựng không xuất hiện nguyên văn ở phần thoại.
Nếu agent báo đây là lỗi thì **PHẢI kiểm chứng**, vì có 2 lý do vô hại:

1. **Dạng chia khác** — `持ち帰る` (thể từ điển, trong bảng) vs `持ち帰り` (thể danh từ, trong thoại).
   Kiểm bằng cách cắt đuôi động từ rồi tìm gốc.
2. **Từ bổ sung có chủ ý** — bảng từ vựng được phép dạy thêm từ cùng chủ đề
   (`質疑応答`, `ルーブリック`, `機密`…) dù thoại không dùng.

→ Chỉ là lỗi thật khi bảng từ vựng ghi từ **MÂU THUẪN** với thoại
(kiểu sách 08: thoại sửa thành "Buôn Ma Thuột" mà vocab vẫn "Đà Lạt").

## Phân công

| Agent | Phần | Số rule | Trạng thái |
|---|---|---|---|
| P1 | phần_I | 7 | ✅ xong — `P1_phần_I.md` · 5 nặng / 5 vừa / 7 nhẹ · rule_07 sạch |
| P2 | phần_II | 6 | ✅ xong — 1🔴/3🟡/5🔵 |
| P3 | phần_III | 8 | ✅ xong — `P3_phần_III.md` · 3🔴 / 3🟡 / 3🔵 · rule_14+18 sạch |
| P4 | phần_IV | 7 | ✅ XONG — `P4_phần_IV.md`. 5🔴 / 6🟡 / 4🔵. Nặng nhất: **rule_25** (số học -8% sai + phương án 950万 tự phá lập luận). Ngoài phạm vi: **rule_19 (P3) lệch giá 1,800/3,200万 vs cả sách 800/1200万** |
| P5 | phần_V | 7 | ✅ xong — 1🔴/3🟡 + nhất quán |

## Danh sách rule theo phần

### phần_I — 7 rule

- rule_01_準備7問
- rule_02_1スライド1メッセージ
- rule_03_ストーリーアーク
- rule_04_視覚階層
- rule_05_色彩心理
- rule_06_密度ルール
- rule_07_バックアップ計画

### phần_II — 6 rule

- rule_08_30秒オープニング
- rule_09_プレゼン自己紹介
- rule_10_背景アジェンダ
- rule_11_フック3パターン
- rule_12_ムード作り
- rule_13_時間管理の約束

### phần_III — 8 rule

- rule_14_論理マーカー
- rule_15_データ提示
- rule_16_デモの流れ
- rule_17_比較マトリクス
- rule_18_顧客の声
- rule_19_価格スライド
- rule_20_リスクと対策
- rule_21_ロードマップ

### phần_IV — 7 rule

- rule_22_QA導入
- rule_23_LASR
- rule_24_持ち帰り
- rule_25_敵対的質問
- rule_26_クロージングCTA
- rule_27_謝辞スライド
- rule_28_事後フォロー

### phần_V — 7 rule

- rule_29_オンラインプレゼン
- rule_30_ハイブリッド
- rule_31_技術トラブル
- rule_32_引き継ぎ
- rule_33_録画と共有
- rule_34_自己評価
- rule_35_改善サイクル

---

## Nhật ký

- Lập thước đo 6 phép đo, tạo `_review/`, tung 5 agent.

---

## ✅ Main Claude thẩm định 5 báo cáo

### Agent làm ĐÚNG (kiểm chứng độc lập xác nhận)

| Agent | Phát hiện | Kiểm chứng của main |
|---|---|---|
| P1+main | `rule_06` 10-20-30 "cho người tiêu dùng" | WebSearch: Kawasaki viết 2005 cho **startup pitch gọi vốn VC**. P1 tìm độc lập, trùng main |
| P1 | `rule_06` `川崎流` sai tên | Đúng — tiếng Nhật viết `ガイ・カワサキ`; `川崎` là địa danh/hãng |
| P1 | `rule_04` mâu thuẫn cỡ chữ | Đúng, và rộng hơn báo cáo: **3 chuẩn** khác nhau (18-22 / 20-24 / min 24) rải 3 rule |
| P2 | `rule_09` "Ōgaki chỉ gặp 1 lần ở Sách 03" | Đếm sách 03: **24 rule** có thoại 大垣. Sai rõ |
| P3 | `rule_19` công thức ROI viết NGƯỢC | **Nặng nhất cả sách.** Tính lại: 3200÷(12000÷12) = **3,2 tháng**, không phải 8. Công thức sách ra "số lần" chứ không ra "số tháng" |
| P3 | `rule_19` `約2倍` sai | 3200/1800 = **1,78 lần** |
| P3 | `rule_20` note 【1】 đá 4 chỗ khác | Đúng — 4 chỗ dạy "3-5", note nói "3 quá ít" |
| P4 | `rule_25` phương án 950万 tự phá lập luận | Đúng: cùng phạm vi Phase 2 (800万) mà chào 950万 = **+18,8%** ngay sau khi nói "đơn giá tôi rẻ hơn" |
| P5 | `rule_33` `山田部長様` 二重敬語 | Đúng — chính rule đó dùng `山田部長` đúng ở 4 chỗ khác |
| P5 | `rule_31` fix nửa vời | Đúng — thoại đã đổi sang `ご迷惑をおかけし`, **bảng từ vựng vẫn `お騒がせ`** |
| P4+P5 | `rule_19` lệch trục giá với 5 rule | Đúng — r19 dùng 1,800/3,200; r25/26/27/28/31 dùng 800/1,200 |

### Agent SAI hoặc phóng đại (main bác bỏ)

| Agent | Báo cáo | Thực tế |
|---|---|---|
| P2 | 🔴 "sách để thực tập sinh pitch khách thật một mình, rủi ro dạy sai" | **Phóng đại.** `rule_11` thoại chỉ có Linh + Dũng, **không có khách nào**. Chỉ 1 câu mô tả bối cảnh lệch. Lõi mâu thuẫn thì có thật (r11 "khách hàng nhỏ" vs r12 "buổi diễn thử" vs r35 "nội bộ đầu tiên") → sửa 1 dòng r11 là hết |
| P4 | `-8%` sai, đúng là `-5,26%` | **Số đúng, cách tính thiếu.** P4 chỉ đếm chức năng. Sách nêu **3 cấu phần** (1.6x + ISO +15% + support). Tính cả ISO ra −18%. Con số −8% nằm giữa — vấn đề thật là sách **không cho đủ dữ liệu để dựng lại**, nên tôi sửa theo hướng hiện phép tính minh bạch (800÷12 vs 1200÷19 = −5%) |
| P1 | 🔴 `rule_03` d23 dùng `弊社` nội bộ là lỗi | **CẤM SỬA.** Đó là **khối XẤU có chủ ý** — Hương chỉnh ngay ở d24. Sửa sẽ phá bài học. P1 tự đưa `自社` d24 vào CẤM SỬA nhưng lại xếp d23 thành lỗi |
| main | Thước đo #1 "mục lục lệch 25/35" | **Của chính tôi sai.** Regex lấy nhầm cột. P5 đo độc lập ra **33/35** — khớp lần đo lại của tôi |

## 📋 Bảng sửa — 26 chỗ

| # | File | Sửa |
|---|---|---|
| 1-2 | `rule_19` d45 + d38 | Công thức ROI ngược → `投資 ÷ (年間ロス削減 ÷ 12)`; `8ヶ月` → `約3.2ヶ月` (JA+VN) |
| 3 | `rule_19` d39 | `約2倍` → `1.8倍` (JA+VN) |
| 4 | `rule_25` d41 | `-8%` không dựng lại được → hiện phép tính `800万÷12 = 66.7` vs `1200万÷19 = 63.2` → `-5%` |
| 5-7 | `rule_06` d3, d5, d40 | `người tiêu dùng` → `startup pitch gọi vốn VC`; `川崎流` → `ガイ・カワサキ提唱` |
| 8-11 | `rule_04` d3, d5, d65, d90 | Phần thân `18-22pt` → `20-24pt`; nhãn biểu đồ `18pt` → `20pt` |
| 12 | `rule_02` d61 | `<24pt` → `<20pt`, trỏ đúng cả rule 04 |
| 13 | `rule_20` d44 | Note `3個少ない` đá 4 chỗ dạy "3-5" → viết lại theo số đông |
| 14 | `rule_33` d44 | `山田部長様` → `山田部長` |
| 15 | `rule_31` d80 | Từ vựng `お騒がせ` (fix nửa vời) → `ご迷惑をおかけする` |
| 16 | `rule_15` d71 | Chữ giản thể `项目` → `項目` |
| 17 | `rule_20` d65 | Tiếng Việt lọt ô Nhật `đào tạo chéo` → `クロストレーニング` |
| 18 | `rule_16` d44 | Cross-ref `sách 03 rule 32` → `rule 32` (cùng sách) |
| 19 | `rule_09` d13 | "Ōgaki chỉ gặp 1 lần ở Sách 03" (sai, 24 rule) → viết lại |
| 20 | `rule_11` d13 | "lần đầu cho 1 khách hàng nhỏ" → "thuyết trình nội bộ đầu tiên" (khớp r12 + r35) |
| 21 | `rule_08` d57 | "bắt buộc nhưng không phải phần thu hút" (tối nghĩa, đá mẫu TỐT) → viết lại |
| 22 | `rule_05` d1 (H1) | `Tâm lý màu sắc trong **Tiếng Nhật** công việc` → `kinh doanh Nhật` |
| 23 | `rule_12` × 4 chỗ | Cùng lỗi: `日本ビジネス` dịch thành "Tiếng Nhật công việc" → `kinh doanh Nhật` |
| 24 | `rule_12` d59 | Bảng đối chiếu mất **cả 2 emoji** ❌/✅ → khôi phục |
| 25 | `meta/mục_lục.md` | Đồng bộ **33 dòng** theo H1 (mục lục là bản chưa Việt hoá) |
| 26 | — | Giữ nguyên cột JP r11/r14 — rút gọn CÓ CHỦ Ý (P5 xác định) |

**Kết quả mục lục sau sửa:** VN khớp **35/35**, JP còn đúng 2 ca rút gọn chủ ý.

## ⚠️ Ngoài phạm vi — CHỈ BÁO CÁO, chờ chủ nhà quyết

1. **Phụ lục A/B/C kế thừa khung sách 02** (P5): khai "60 rules" (sách 05 có 35), tiêu đề "Nền tảng trước nhấc máy" / "Nhận điện thoại". Đúng bug mục 1.4 đã gặp ở sách 03. **File sinh tự động → phải sửa ở script.**
2. **Trục giá `rule_19` lệch cả sách**: r19 dùng Phase 2 = 1,800万 / Phase 3 = 3,200万; r25/26/27/28/31 dùng 800万/1,200万. Tôi **không tự chốt** vì đổi trục giá đụng 6 rule và ảnh hưởng mọi phép tính ROI/đơn giá vừa sửa. Cần chủ nhà chọn con số.
3. **`STATUS.md` khai "Auto-review: 0 issues / Sẵn sàng ship"** trong khi tìm được 15 lỗi 🔴 — đúng cảnh báo mục 5 của rule.
4. Lịch nội bộ r24-r28 rơi trúng Golden Week (P4, đã WebSearch); `rule_21` nhãn Gantt "15日" vs 47 ngày thực (P3) — mức 🔵, chưa sửa.

---

## ✅ Đợt 2 — Thống nhất trục giá toàn sách (chủ nhà chốt: "chỉ cần dữ liệu thống nhất")

**Quyết định:** đổi `rule_19` về trục chung **Phase 2 = 800万 / Phase 3 = 1,200万**
(5 rule khác đã dùng trục này; `rule_19` là chỗ lệch đơn độc).

### Số liệu tính lại — mọi con số phái sinh đều phải khớp

| Mục | Cũ (rule_19) | Mới | Căn cứ |
|---|---|---|---|
| Phase 2 | 1,800万 | **800万** | Theo 5 rule kia |
| Phase 3 | 3,200万 | **1,200万** | Theo 5 rule kia |
| Tỷ lệ tăng | 1.78 lần (ghi "約2倍") | **1.5 lần** | 1200/800 — khớp luôn câu 大垣 hỏi "50%増?" ở rule_25 |
| Neo giá ngành | 4,000万 | **1,500万** | Giữ tỷ lệ 1.25× so với bậc B |
| Bậc A/B/C | 2,400 / 3,200 / 4,800 | **900 / 1,200 / 1,800** | Giữ nguyên tỷ lệ quanh bậc B |
| Giảm lỗ/năm | 1.2億 | **3,600万** | Xem mạch logic dưới |
| Hoàn vốn | "8ヶ月" (sai) | **4ヶ月** | 1,200 ÷ (3,600÷12) = 4 |
| Phương án lùi (r25) | 950万 | **850万** | Xem lý do dưới |
| Đơn giá chức năng | "-8%" (không dựng lại được) | **-5%** | 800÷12=66.7 vs 1,200÷19=63.2 |

### Vì sao 3,600万 chứ không giữ 1.2億

`rule_11` nói tồn kho lệch 5% = tổn thất **1.2億/năm** (toàn bộ vấn đề).
`rule_03`/`rule_25` nói Phase 2 đã đưa 5% → 1.8%, tức **giải quyết 64%**.
Phần còn lại = 36% × 1.2億 = **4,320万** — đó là trần của những gì Phase 3 có thể giải quyết.

Nếu giữ 1.2億 làm mức Phase 3 giảm được thì hoàn vốn ra **1,2 tháng** — phi thực tế,
và mâu thuẫn với chính rule_03 (Phase 2 đã xử phần lớn rồi).
Chọn **3,600万** (dưới trần 4,320万) → hoàn vốn **4 tháng**, con số tròn và đứng vững.

`1.2億` ở rule_11 **giữ nguyên** — đó là tổn thất tổng, độc lập với giá dự án.

### Vì sao phương án lùi 950万 → 850万

`rule_25` để Dũng nói "nếu cắt phạm vi về tương đương Phase 2 thì nén xuống 950万".
Nhưng Phase 2 = **800万** cho đúng phạm vi đó → chào 950万 là **+18,8% cho cùng một thứ**,
ngay sau khi vừa lập luận "đơn giá bên tôi rẻ hơn". Một 営業部長 bắt được ngay.

Sửa thành **850万** (+6% so Phase 2) và **nói rõ lý do chênh**: 「ISO27001 対応分のみ上乗せ」.
Giờ lập luận tự đứng vững.

### 12 chỗ sửa trong đợt 2

| # | File | Chỗ |
|---|---|---|
| 27-31 | `rule_19` d23, d24, d28, d38, d39 | Toàn bộ số liệu giá + tỷ lệ (JA+VN) |
| 32-33 | `rule_19` d44, d45 | Note neo giá + phép tính hoàn vốn |
| 34-36 | `rule_25` d41, d42, d43 | Đơn giá -5%, phương án lùi 850万, câu đáp của 大垣 |
| 37 | `rule_26` d40 | `1200万` → `1,200万`, `-8%` → `-5%` (JA **+VN**) |
| 38-39 | `rule_27` d65, `rule_28` d74 | Bảng tóm tắt còn `-8%` |
| 40 | `rule_31` d41 | `1200万` → `1,200万` |

### 🪤 Hai bẫy dính trong đợt này

1. **Ruby chen giữa CON SỐ và đơn vị** — `1200<ruby>万円<rt>まんえん</rt></ruby>`.
   Edit theo chuỗi đã strip thất bại 3 lần. Đúng mục 1.1, nhưng biến thể mới:
   trước giờ chỉ gặp ruby chen giữa kanji, lần này chen ngay sau chữ số.

2. **Fix nửa vời do chính tôi** — sửa vế Nhật `-8%` → `-5%` ở `rule_26` mà quên vế Việt
   ("đơn giá giảm 8%"). Bắt được nhờ kiểm lại vế VN của **mọi dòng vừa sửa** —
   đúng cảnh báo mục 5 kiểu hụt số 2.

**Kiểm tra cuối trên release:** 10/10 số mới có mặt, 10/10 số cũ = 0.
