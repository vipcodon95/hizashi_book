# N1 — Báo cáo rà soát phần_I (rule_01 → rule_09)

> Sách 06 "Đàm phán / 交渉" — phần **Trước đàm phán (準備)**, 9 rule.
> Áp dụng `.claude/rules/book-review.md` mục 4 (trục A→F). CHỈ báo cáo, không sửa file nội dung.
> Mọi kết luận đều đã strip ruby bằng python trước khi grep.

---

## Bảng tổng kết

| Rule | 🔴 Nặng | 🟡 Vừa | 🔵 Nhẹ | Ghi chú nhanh |
|---|---|---|---|---|
| rule_01 BATNA | 0 | 1 | 1 | Lý thuyết BATNA **đúng**; lệch mốc thời gian + biên lợi nhuận 22% không khớp giá vốn ¥13M |
| rule_02 ZOPA | 2 | 1 | 0 | **Sai định nghĩa ZOPA (số thứ 4)** + **ZOPA vẽ ngược phía khách** |
| rule_03 稟議 | 0 | 0 | 1 | Sạch về chuyên môn. Chỉ 1 con số "sai 90%" không nguồn |
| rule_04 顧客リサーチ | 0 | 1 | 1 | Mốc "đầu tháng 4" mâu thuẫn rule_01 "tháng 5/2026" |
| rule_05 価格戦略 | 1 | 1 | 0 | **粗利率 26% sai số học** (đúng 27.8%); anchor ¥19M vs rule_06 ¥18M |
| rule_06 3段階提案 | 1 | 2 | 0 | **"95% khách Nhật chọn bậc giữa" bịa số**; SLA 99.5% đụng điểm rút lui rule_08; ví dụ "cách đều" tự sai |
| rule_07 事前すり合わせ | 0 | 1 | 0 | Ladder 4 nấc ở đây khác ladder 5 nấc rule_09 |
| rule_08 撤退ライン | 1 | 0 | 0 | **未満 vs 以下** — vênh với rule_01/07/09 ngay tại lằn ranh đỏ |
| rule_09 譲歩計画 | 1 | 1 | 0 | **Step 5 = ¥15M nhưng cùng dòng khai ¥15M 以下 = 撤退** (tự mâu thuẫn nội dòng) |
| **Tổng** | **6** | **8** | **3** | |

**Keigo (trục C): 9/9 rule SẠCH.** Đã quét 二重敬語 / 過剰敬語 / さ入れ言葉 / uchi-soto / 弊社-当社 sau khi strip ruby — **0 lỗi**. 3 ca keigo main Claude tự tìm (`部長様` ×2, `お伺いさせていただ` ×1) đều nằm ở rule_12/rule_16, **ngoài phạm vi N1**. `弊社` dùng 5 lần đều đúng ngữ cảnh khiêm nhường; `伺ってもよろしいでしょうか` (rule_03 d25) đúng, không phải 二重敬語.

**Ký tự lạ / emoji strip / tiếng Anh thừa:** 0 lỗi cần sửa (xem mục CẤM SỬA).

---

## 📊 BẢNG MỌI CON SỐ TIỀN TRONG 9 RULE + KIỂM NHẤT QUÁN

### B1. Trục ZOPA/BATNA — 4 mốc xương sống

| Mốc | Giá trị | Xuất hiện tại | Nhất quán? |
|---|---|---|---|
| **Anchor (giá neo)** | ¥19M | r05 d35, r07 d44, r09 d35 | ✅ 3/3 khớp |
| | ¥18M | r01 d14/d24, r02 d21, r06 d21/d34 | ⚠️ Xem xung đột X3 |
| **Target (mục tiêu)** | ¥18M | r01 d40, r02 d34, r05 d35, r07 d44, r09 d35 | ✅ 5/5 khớp |
| **Reservation (giới hạn rút lui)** | ¥15M | r01 d40, r02 d34, r05 d35, r07 d44, r08 d22/d36, r09 d35 | ✅ giá trị khớp, **nhưng toán tử vênh — xem X1** |
| **Điểm chốt dự kiến** | ¥16.5M | r02 d37 | ⚠️ Xem X4 |
| **Trần ngân sách khách** | ¥17M | r02 d34/d36/d37 | ✅ |
| **Giá vốn (原価)** | ¥13M | r05 d21 | dùng để kiểm mọi biên lợi nhuận |

### B2. Phép kiểm số học — từng phép tính trong sách

| Nơi | Phép tính sách viết | Kiểm lại | Kết luận |
|---|---|---|---|
| r02 d36 | `14.5 × 1.15 ≒ ¥16.7M`, làm tròn ¥17M | 14.5×1.15 = **16.675** | ✅ ĐÚNG |
| r05 d21 | 原価 ¥13M + 利益率 25% = ¥16.25M | 13×1.25 = **16.25** | ✅ ĐÚNG (markup trên giá vốn) |
| r05 d24/d35 | ¥80M × 20% = ¥16M | 80×0.20 = **16.0** | ✅ ĐÚNG |
| **r05 d38** | **chốt ¥18M → 粗利率 26%** | (18−13)/18 = **27.78%** | 🔴 **SAI — xem X2** |
| r05 (suy ra) | anchor ¥19M | (19−13)/19 = 31.6% | (không khai trong sách, nhất quán) |
| **r01 d41** | ¥16.5M giữ 利益率 **22%** | (16.5−13)/16.5 = **21.2%**; để ra đúng 22% thì giá vốn phải là ¥12.87M | 🟡 **LỆCH — xem X5** |
| r08 d36 | 責任上限 = 契約金額の 100% | — | ✅ chuẩn ngành |
| r09 d22 | "1M ずつ" từ ¥19M → ép tới ¥15M | 19→18→17→16→15 = 4 nấc ¥1M | ✅ nội bộ nhất quán |
| **r06 d61** | "¥14M / ¥18M / ¥22M cách đều ¥4M" | 18−14=4, 22−18=4 → **đúng là cách đều** | 🟡 nhưng bậc thật của sách là ¥14/18/**24** → xem X6 |
| r09 d35 | ladder ¥19 → 18 → 17.5 → 17 → 16 → 15 | 6 mốc, sách gọi "5 ladder" (Step 0 không tính là nhượng) | ✅ hợp lý |

### B3. Giá 3 bậc (rule_06) và va chạm với các rule khác

| Bậc | Giá | SLA | Va chạm |
|---|---|---|---|
| Good | ¥14M | 99.5% | 🔴 **dưới reservation ¥15M** + **SLA chạm đúng lằn ranh đỏ rule_08** → X3, X7 |
| Better | ¥18M | 99.9% | = target, ✅ |
| Best | ¥24M | 99.99% | không xung đột |

### B4. Con số khác (không phải tiền)

| Nơi | Số | Kiểm chứng |
|---|---|---|
| r03 d5/d44 | 稟議 2-3 tuần (¥18M thì 3-4 tuần) | ✅ khớp nguồn: ringi có nemawashi tốt thường 2-4 tuần |
| r04 d3/d42 | 年度予算 4月-3月 | ✅ đúng (~90% công ty niêm yết JP) |
| r04 d36/d41 | ngưỡng 決裁 ¥10M → CFO | ✅ hợp lý, sách đã tự ghi là "thường gặp" |
| **r06 d3** | **95% khách Nhật chọn bậc giữa** | 🔴 **BỊA — thực tế 60-70%** → X8 |
| r06 d42 | nhãn "Khuyến nghị" tăng chốt +35% | ✅ chấp nhận được (nguồn CRO nói 30-40%) |
| r06 d60 | quên nhãn → "mất hơn 30% hiệu quả" | ✅ nhất quán với +35% ở d42 |
| r09 d3/d5 | không kế hoạch → rò giá trị 15-25% | 🔵 không nguồn nhưng là con số kinh nghiệm, không gây hại |
| r03 d63 | "sai 90% trường hợp" | 🔵 số cảm tính, xem X9 |
| r09 d35 | hợp đồng 2 năm → LTV +35% | 🔵 nội bộ nhất quán, không kiểm chứng được |

---

## 🔴 PHÁT HIỆN NẶNG

### X1 — 🔴 B: Lằn ranh rút lui vênh toán tử `未満` vs `以下` (rule_08 vs rule_01/07/09)

**rule_08 d36 (JA):**
> `(1) **価格**: ¥15M 未満は撤退。`

**rule_08 d36 (VN):**
> *(1) Giá: **dưới ¥15M** là rút.*

**rule_01 d40 (JA/VN):**
> `シナリオC(walk-away): ¥15M 以下なら撤退` / *Kịch bản C (rút lui): **dưới ¥15M** thì rút*

**rule_07 d44/d45:**
> `¥15M 以下は持ち帰り` / *dưới ¥15M là mang về xem xét*

**rule_09 d35:**
> `**¥15M 以下 = 撤退**` / *Dưới ¥15M = rút lui ạ.*

**Vấn đề:** `未満` = **không bao gồm** ¥15M (¥15M vẫn nhận). `以下` = **bao gồm** ¥15M (¥15M cũng rút). Ba rule dùng `以下`, riêng rule_08 — chính là rule ĐỊNH NGHĨA điểm rút lui — dùng `未満`. Đúng tại con số ¥15M thì rule_08 nói "nhận", rule_01/07/09 nói "bỏ". Đây là trục A **lẫn** B: học viên học lằn ranh đỏ mà lằn ranh mơ hồ đúng ngay tại điểm quyết định.

Đáng chú ý: bản VN của **cả bốn** chỗ đều dịch là "dưới ¥15M" — tức bản Việt đang che mất mâu thuẫn của bản Nhật. Đây là ca "fix nửa vời ngược": VN thống nhất, JA lệch.

**Đề xuất:** thống nhất một toán tử. Về nghiệp vụ, reservation price ¥15M nghĩa là "¥15M vẫn chấp nhận, dưới nữa thì bỏ" → nên dùng `¥15M 未満は撤退` ở **cả 4 chỗ** (giữ rule_08, sửa r01/r07/r09), và bản VN ghi rõ *"dưới ¥15M (¥15M vẫn nhận)"*. Nếu chọn hướng ngược lại thì phải sửa rule_08 và đồng thời sửa Step 5 của rule_09 (xem X10).

---

### X2 — 🔴 B+D: `粗利率 26%` sai số học (rule_05 d38)

**JA:**
> `いいね。¥19M を堂々と出して、value で押す。¥18M に着地しても粗利率 26%、許容範囲。`

**VN:**
> *Tốt. Em ra ¥19M một cách thẳng thắn, đẩy bằng giá trị. Có chốt ¥18M thì **lợi nhuận gộp 26%**, vẫn nằm trong khoảng chấp nhận.*

**Vấn đề:** Cùng rule_05 d21 đã khai `原価 ¥13M`. Lợi nhuận gộp tại ¥18M = (18−13)/18 = **27.8%**, không phải 26%. Con số 26% không ra được từ bất kỳ cặp giá vốn/giá bán nào trong sách. (Nếu tính markup thay vì margin thì (18−13)/13 = 38.5% — càng xa.)

Lỗi này nguy hiểm vì rule_05 dạy học viên **kiểm biên lợi nhuận sàn trước khi chốt** (chính d59 của rule_05: *"Quên kiểm tra 粗利率 sàn (vd: 20%) khi tính giới hạn rút lui"*) — mà bản thân ví dụ mẫu lại tính sai.

**Đề xuất:** sửa `26%` → `27.8%` (hoặc `約28%`) ở cả JA lẫn VN cùng dòng.

---

### X3 — 🔴 B: Bậc Good ¥14M **thấp hơn điểm rút lui ¥15M** (rule_06 vs rule_01/02/05/07/08/09)

**rule_06 d34 (JA):**
> `Good ¥14M / Better ¥18M / Best ¥24M。`

**rule_06 d34 (VN):**
> *Cơ bản **¥14M** / Tiêu chuẩn ¥18M / Cao cấp ¥24M.*

**Vấn đề:** Sáu rule khác đều chốt reservation price = **¥15M**, và rule_08 dạy "dưới ¥15M là rút lui, tuyệt đối không nói yes tại chỗ". Nhưng rule_06 lại **chủ động đưa cho khách một phương án ¥14M** — tức tự đặt lên bàn một mức giá nằm dưới lằn ranh đỏ của chính mình. Nếu 大垣 chọn Good, bên bán buộc phải hoặc nuốt lời hoặc rút lui khỏi chính đề xuất mình đưa ra.

Đây là trục A (dạy làm sai việc thật): trong đàm phán thật, **không bao giờ để một tier nằm dưới reservation price** — nó phá hỏng toàn bộ giá trị của việc đặt walk-away point, và tệ hơn, nó tự lộ cho khách biết bên bán làm được giá thấp hơn ¥15M.

**Lưu ý phản biện đã cân nhắc:** có thể lập luận Good ¥14M có phạm vi hẹp hơn nên giá vốn cũng thấp hơn → biên vẫn ổn. Nhưng sách **không hề nói vậy**; rule_08 d36 phát biểu reservation là điều kiện tuyệt đối theo *giá*, không kèm điều kiện phạm vi. Và rule_09 Step 5 mới là chỗ ¥15M đi kèm scope −30%. Vậy nên vẫn là mâu thuẫn cần xử lý, ít nhất bằng một câu chú thích.

**Đề xuất:** hoặc (a) nâng Good lên `¥15M` để chạm đúng sàn, hoặc (b) giữ ¥14M nhưng thêm ghi chú 【】 trong rule_06 nói rõ *"Good ¥14M có phạm vi thu hẹp nên giá vốn tương ứng thấp hơn; điểm rút lui ¥15M ở rule_08 áp cho phạm vi Better"*. Cách (a) an toàn hơn về dạy học.

---

### X4 — 🔴 A+B: rule_02 sai định nghĩa ZOPA — số thứ 4 không phải "sàn ngân sách"

**rule_02 d3 (VN):**
> *Trước đàm phán phải ước lượng cả 4 con số: mục tiêu + giới hạn rút lui của mình, **trần ngân sách + sàn ngân sách (mức tối thiểu)** của khách.*

**rule_02 d5 (JA):**
> `自社の **目標価格・撤退価格** だけでなく相手の **予算上限・最低期待品質** も推定し`

**rule_02 d40 (ghi chú 【1】):**
> *ZOPA マッピング = 4 con số: mình mục tiêu + giới hạn rút lui, khách **trần ngân sách + sàn ngân sách**.*

**Vấn đề — hai lỗi chồng nhau:**

1. **Lệch JA↔VN ngay trong cùng một khái niệm.** JA ghi số thứ 4 là `最低期待品質` (= mức **chất lượng** tối thiểu khách kỳ vọng). VN dịch thành **"sàn ngân sách (mức tối thiểu)"** — tức biến một chỉ tiêu *chất lượng* thành một chỉ tiêu *tiền*. Hai thứ hoàn toàn khác nhau. (Cùng rule, d34 lại dịch đúng: *"sàn về chất lượng là tương đương Phase 2 trở lên"* — nên bản VN **tự mâu thuẫn với chính nó** giữa d3/d40 và d34.)

2. **Sai lý thuyết gốc.** Theo Fisher & Ury (*Getting to Yes*, 1981) và định nghĩa chuẩn, **ZOPA được xác định bởi đúng HAI con số: reservation price của bên bán và reservation price của bên mua.** Target price của cả hai bên nằm *ngoài* ZOPA và không tham gia định nghĩa nó. Sách gọi "ZOPA = 4 con số" trong đó có target của mình và một chỉ tiêu chất lượng của khách — không phải ZOPA.

Điều mỉa mai: **chính rule_02 d37 lại làm ĐÚNG** — `ZOPA は ¥15M〜¥17M` = từ reservation ¥15M của mình tới trần ¥17M của khách, đúng 2 con số. Vậy phần thực hành đúng, phần định nghĩa sai.

**Đề xuất:**
- Sửa VN d3 và d40: "sàn ngân sách (mức tối thiểu)" → **"mức chất lượng tối thiểu khách chấp nhận"** (khớp JA `最低期待品質` và khớp d34).
- Diễn đạt lại quan hệ: **"ZOPA = 2 con số (giới hạn rút lui của mình ⇄ trần ngân sách của khách). Cần chuẩn bị thêm 2 con số phụ trợ (giá mục tiêu của mình, mức chất lượng tối thiểu của khách) — nhưng chúng KHÔNG định nghĩa ZOPA."** Giữ nguyên d37.

---

### X5 — 🔴 B: rule_02 vẽ ZOPA lệch phía khách (dùng trần ngân sách làm biên, nhưng gọi khách là bên "sàn")

**rule_02 d37 (JA):**
> `ZOPA は ¥15M〜¥17M の幅 2M ある。target ¥18M は ZOPA 上限を超えてるけど、anchor として出すには適切。**着地点は ¥16.5M 前後と想定して、譲歩計画(rule 09)に反映**して。`

**VN:**
> *ZOPA rộng ¥15M〜¥17M, biên độ 2M. Mục tiêu ¥18M vượt trần chút nhưng làm giá neo thì OK. **Điểm chốt dự ¥16.5M**, phản ánh vào kế hoạch nhượng bộ.*

**Vấn đề:** Câu cuối bảo *"phản ánh điểm chốt ¥16.5M vào kế hoạch nhượng bộ (rule 09)"*. Nhưng **rule_09 không hề có nấc ¥16.5M** — ladder của rule_09 d35 là ¥19 → 18 → 17.5 → 17 → 16 → 15. Tương tự rule_07 d44 là ¥19 → 18 → 17 → 16. Chỉ thị cross-ref này dẫn học viên tới một rule không chứa thứ được hứa.

Ngoài ra ¥16.5M cũng xuất hiện ở rule_01 d40 làm giá kịch bản B, và ở rule_05 d21/d26 làm giá cost-plus bị bác bỏ — ba vai trò khác nhau cho cùng một con số, càng dễ rối.

**Đề xuất:** hoặc đổi điểm chốt dự kiến ở rule_02 thành **¥17M** (có thật trong ladder rule_09 Step 3, và nằm trong ZOPA), hoặc bổ sung nấc ¥16.5M vào ladder rule_09. Ưu tiên cách 1 vì ít lan tỏa.

---

### X6 — 🔴 D: "95% khách Nhật sẽ chọn bậc giữa" — con số bịa (rule_06 d3)

**VN:**
> *Đưa 3 bậc (Cơ bản / Tiêu chuẩn / Cao cấp) = khách so sánh nội bộ → kiến trúc lựa chọn nghiêng về bậc giữa (hiệu ứng mồi nhử). **95% khách Nhật sẽ chọn bậc giữa nếu cấu trúc đúng.***

**JA (d5) — đáng chú ý là bản Nhật KHÔNG có con số này:**
> `3段階提案 (Good/Better/Best) は社内比較を促し、**中間案 (Better) が選ばれる確率を高める**。`

**Vấn đề:** Bản Nhật chỉ nói "làm tăng xác suất bậc giữa được chọn" — chính xác và an toàn. Bản Việt tự thêm **"95%"**. Kiểm chứng: tài liệu về tiered pricing / decoy effect cho con số thực tế là **60-70%** chọn bậc giữa (một nguồn nêu 66%); mức lift do decoy được ghi nhận tối đa ~40%. Không nguồn nào cho 95%. Thêm nữa, chưa từng có nghiên cứu riêng cho "khách **Nhật**" — việc gán quốc tịch cho con số làm nó có vẻ đáng tin hơn thực tế.

95% cũng tự mâu thuẫn với chính rule_06 d58: *"3 bậc mà bậc giữa không hấp dẫn → khách chọn Cơ bản"* — nếu đã 95% thì cảnh báo đó thừa.

**Đề xuất:** bỏ hẳn "95% khách Nhật" hoặc thay bằng *"phần lớn khách (nghiên cứu về định giá theo bậc ghi nhận khoảng 60-70%) sẽ chọn bậc giữa nếu cấu trúc đúng"*.

---

### X7 — 🔴 A+B: SLA 99.5% vừa là hàng bán (rule_06) vừa là lằn ranh rút lui (rule_08)

**rule_06 d36 (JA):**
> `Good は AI レコメンドなし、SLA 99.5% (Better は 99.9%)、サポート営業時間のみ`

**rule_08 d36 (JA):**
> `(3) **SLA**: 99.5% 以下は受けない、その下は罰則賠償リスクが粗利を超える。`

**rule_08 d36 (VN):**
> *(3) SLA: **dưới 99.5% không nhận**, dưới ngưỡng đó rủi ro phạt hợp đồng vượt lợi nhuận gộp.*

**Vấn đề:** rule_08 khai SLA 99.5% là **điều kiện rút lui** — `99.5% 以下は受けない` nghĩa đen là "99.5% trở xuống thì không nhận", tức **chính mức 99.5% cũng bị loại**. Nhưng rule_06 lại **chào bán bậc Good ở đúng SLA 99.5%**. Bên bán đang chào một tier mà lằn ranh đỏ của chính mình cấm ký.

Lại là ca `以下` dùng lẫn (giống X1): bản VN dịch `99.5% 以下は受けない` thành *"dưới 99.5% không nhận"* — tức VN hiểu là 99.5% **vẫn nhận**, JA nói 99.5% **không nhận**. Lệch JA↔VN ngay trong một câu.

**Đề xuất:** thống nhất `SLA 99.5% 未満は受けない` (99.5% vẫn nhận) ở rule_08 — cách này đồng thời giải luôn xung đột với bậc Good của rule_06. Bản VN giữ nguyên "dưới 99.5% không nhận" là đã đúng với sửa này.

---

### X8 — 🔴 B: rule_09 Step 5 chốt ¥15M nhưng cùng dòng khai ¥15M là mức rút lui

**rule_09 d35 (JA) — nguyên văn, cùng MỘT dòng:**
> `Step 5: ¥15M ⇄ scope -30% + 上記すべて + 早期支払割 (これ最終)。**¥15M 以下 = 撤退**。`

**VN:**
> *Bước 5: **¥15M** ⇄ phạm vi -30% + tất cả trên + chiết khấu thanh toán sớm (đây là cuối). **Dưới ¥15M = rút lui** ạ.*

**Vấn đề:** Với `以下` (bao gồm), ¥15M vừa là nấc nhượng bộ cuối được phép chào **vừa** là mức phải rút lui — mâu thuẫn trong phạm vi một dòng, đúng dạng lỗi B "trong cùng 3 dòng" mà rule review cảnh báo. Bản VN dịch `以下` thành "dưới" nên đọc bằng tiếng Việt thì không thấy mâu thuẫn — người học tiếng Nhật đọc vế JA sẽ thấy.

Đây là hệ quả trực tiếp của X1; sửa X1 theo hướng `未満` sẽ giải luôn ca này.

**Đề xuất:** đổi vế cuối thành `**¥15M 未満 = 撤退**` cho khớp rule_08 và giữ Step 5 hợp lệ.

---

## 🟡 PHÁT HIỆN VỪA

### X9 — 🟡 B: Mốc thời gian rule_01 (tháng 5/2026) vs rule_04 (đầu tháng 4)

**rule_01 d14:**
> *Tháng 5/2026, Phase 3 với 白鷗 vào vòng đàm phán giá lần 1.*

**rule_04 d36 (JA):**
> `白鷗は 4月-3月、現在 4 月初旬で **新年度 IT 予算は通ったばかり**、追加要求しやすい時期。`

**VN:**
> *(2) Chu kỳ ngân sách: Hakuō 4-3, **hiện đầu tháng 4** — ngân sách IT năm mới vừa thông, dễ đề xuất.*

**Vấn đề:** Cả 9 rule mô tả **cùng một chuỗi sự kiện liên tục** (rule_02 d13 "sau khi xem xét BATNA xong (rule 01)"; rule_04 d13 "3 ngày trước đàm phán Phase 3"; rule_07/08 "sáng đàm phán Phase 3"). Không thể vừa là tháng 5 vừa là đầu tháng 4. Vì lập luận nghiệp vụ của rule_04 **phụ thuộc vào việc đang ở đầu năm tài khóa** (ngân sách vừa thông → dễ xin thêm), nên mốc "đầu tháng 4" là mốc đúng về nội dung.

**Đề xuất:** sửa rule_01 d14 `Tháng 5/2026` → **`Tháng 4/2026`**. Không đụng rule_04.

### X10 — 🟡 B: rule_01 nói ¥16.5M giữ 利益率 22%, không khớp giá vốn ¥13M của rule_05

**rule_01 d41 (JA):**
> `**Phase 2 同等スコープなら ¥16.5M で利益率 22% 維持可能**【2】、ハー CTO に確認済みです。`

**VN:**
> *Cơ sở kịch bản B: phạm vi tương đương Phase 2 thì ¥16.5M **giữ tỷ suất lợi nhuận 22%**, anh Hà CTO đã xác nhận ạ.*

**Vấn đề:** (16.5−13)/16.5 = **21.2%**, không phải 22%. Để ra đúng 22% thì giá vốn phải là ¥12.87M.

**Giảm nhẹ:** rule_01 nói rõ *"phạm vi tương đương **Phase 2**"* — tức có thể là một phạm vi khác với ¥13M của Phase 3 ở rule_05. Nếu vậy thì không phải lỗi. Nhưng sách không nêu giá vốn Phase 2 ở bất cứ đâu, nên người học không cách nào biết. Xếp 🟡 chứ không 🔴 vì có đường thoát hợp lý.

**Đề xuất:** hoặc làm tròn xuống `21%`, hoặc thêm nửa câu nêu giá vốn của phạm vi Phase 2 để con số 22% kiểm chứng được.

### X11 — 🟡 F: Ladder rule_07 (4 nấc) khác ladder rule_09 (6 nấc) cho cùng một cuộc đàm phán

**rule_07 d44/d45:**
> `【ステップ1】¥19M anchor → 反応見る、【ステップ2】¥18M target、【ステップ3】¥17M with scope -10%、【ステップ4】¥16M with scope -20% + extra trade`

**rule_09 d35:**
> `Step 0: ¥19M … Step 1: ¥18M … Step 2: ¥17.5M ⇄ 契約期間 2 年化 … Step 3: ¥17M ⇄ scope -10% … Step 4: ¥16M ⇄ scope -20% + payment net 30 化 + 事例公開許可。Step 5: ¥15M ⇄ scope -30% …`

**Vấn đề:** Cùng đàm phán Phase 3, cùng nhân vật, nhưng rule_07 đánh số ステップ1-4 còn rule_09 đánh Step 0-5, và rule_09 chèn thêm nấc ¥17.5M mà rule_07 không có. Học viên đối chiếu hai rule sẽ không biết ladder chính thức có mấy nấc và ¥17M là bước 3 hay bước 3.

**Giảm nhẹ:** rule_09 tự giới thiệu là "**v2**" (d34: `譲歩計画 v2 です`), tức có thể là bản nâng cấp có chủ ý của kế hoạch trong rule_07. Nếu vậy chỉ cần một câu nối.

**Đề xuất:** thêm vào rule_09 d34 hoặc ghi chú 【1】 một mệnh đề: *"v2 bổ sung nấc ¥17.5M so với bản align ở rule 07"*. Hoặc đồng bộ hai ladder.

### X12 — 🟡 B: rule_06 d61 lấy ví dụ "cách đều" bằng bộ số KHÔNG phải bộ số của chính rule

**rule_06 d61 (mục Tránh):**
> *Đặt khoảng cách giá đều (vd: **¥14M / ¥18M / ¥22M** cách đều ¥4M) → không tận dụng được hiệu ứng mồi.*

**rule_06 d34 (bộ số thật của rule):**
> `Good ¥14M / Better ¥18M / Best ¥24M`

**Vấn đề:** Mục "Tránh" dựng một ví dụ phản diện ¥14/18/**22** trong khi bộ số sách vừa dạy là ¥14/18/**24**. Người đọc lướt rất dễ tưởng ¥22M là bộ số đúng, hoặc tưởng bộ số của sách chính là ví dụ xấu. Thực ra bộ ¥14/18/24 có khoảng cách 4 và 6 — **không đều**, tức đúng theo lời khuyên. Ví dụ chỉ cần đổi 1 chữ số là hết nhập nhằng.

**Đề xuất:** đổi ví dụ phản diện sang bộ số khác hẳn (vd `¥12M / ¥18M / ¥24M cách đều ¥6M`) để không đụng bộ số thật.

### X13 — 🟡 A: rule_02 d59 nêu ngưỡng ">20%" nhưng ví dụ của sách vượt ngưỡng đó

**rule_02 d59 (mục Tránh):**
> *Neo giá vượt trần ZOPA quá xa (**>20%**) → khách cảm thấy bị xúc phạm*

**Vấn đề:** Trần ZOPA (= trần ngân sách khách) là ¥17M. Anchor mà rule_05/07/09 dạy là **¥19M** → vượt 11.8% (OK). Nhưng rule_05 d35 còn nêu phương án `Anchoring 起点 ¥22M (Y社水準)` → vượt trần **29.4%**, phá ngưỡng 20% của chính rule_02. Sách không cảnh báo điều này khi trình bày phương án ¥22M.

**Giảm nhẹ:** ¥22M ở rule_05 được nêu như một trong 3 phương án so sánh rồi **bị loại** (khuyến nghị cuối là ¥19M), nên không phải sách dạy làm thế. Xếp 🟡.

**Đề xuất:** thêm nửa câu ở rule_05 d35 hoặc ghi chú 【2】: *"phương án ¥22M bị loại vì vượt trần ZOPA ¥17M gần 30% — xem ngưỡng 20% ở rule 02"*. Vừa vá logic vừa tăng liên kết giữa hai rule.

### X14 — 🟡 F: Mục lục dùng tiếng Anh/Nhật thô, lệch với H1 tiếng Việt của rule

| # | `meta/mục_lục.md` cột "Tên VN" | H1 thật trong rule.md |
|---|---|---|
| 03 | Hiểu **稟議 (ringi) decision style** | Hiểu **phong cách quyết định ringi (稟議)** |
| 04 | Thu thập **intel** khách | Thu thập **thông tin** khách |
| 05 | **Định giá strategy** | **Chiến lược định giá** |
| 06 | **3-tier proposal** | **Đề xuất 3 bậc: Good / Better / Best** |
| 07 | **Pre-meeting alignment** nội bộ | **Thống nhất nội bộ trước đàm phán** |
| 08 | **Walk-away point** | **Điểm rút lui** |
| 09 | **Concession plan** | **Kế hoạch nhượng bộ** |

**Vấn đề:** 7/9 rule của phần I lệch — cột "Tên VN" của mục lục thực chất là bản dàn ý chưa Việt hoá (`decision style`, `intel`, `strategy`, `3-tier proposal`, `alignment`, `walk-away point`, `concession plan`). Đây đúng dạng lỗi F mà rule review đã ghi nhận ở sách 08/02. Khớp với phép đo của main Claude (VN lệch 37/45).

Lưu ý: đây là **tên mục lục**, khác với thuật ngữ nghề trong thân bài — `BATNA`/`ZOPA` giữ nguyên là đúng, nhưng "Walk-away point" làm tiêu đề tiếng Việt thì nên Việt hoá vì rule.md đã có sẵn bản Việt.

**Đề xuất:** đồng bộ cột "Tên VN" của mục lục theo đúng H1 của từng rule.md. (Cột "Tên JP" đã khớp 9/9, không đụng.)

### X15 — 🟡 E: rule_02 d3 dịch `撤退価格` thành "giá giới hạn rút lui" nhưng d34 lại để nguyên `reservation`

Trong cùng rule_02, cùng một khái niệm có 3 cách gọi: *"giới hạn rút lui"* (d3), `reservation` (d34, để nguyên tiếng Anh trong vế JA **và** vế VN), *"giá giới hạn rút lui"* (bảng từ vựng d70). Bảng từ vựng không có mục `reservation price`.

**Đề xuất:** 🔵 thấp — hoặc thêm dòng `reservation price` vào bảng từ vựng rule_02, hoặc thống nhất một cách gọi. Không gây hại nghiệp vụ.

### X16 — 🟡 F: rule_06 hứa "Khung mẫu" nhưng không có nội dung

**rule_06 d65-67:**
> `## Khung mẫu — Phiếu đề xuất 3 bậc`
> `(Xem mẫu file riêng kèm theo)`

**Vấn đề:** Mục lục d43 gắn nhãn `[TEMPLATE: report]` cho rule 06. Trong rule.md thì mục này rỗng, chỉ trỏ tới "file riêng kèm theo" mà không nêu tên file. Người đọc bản sách (docx/epub) không biết tìm ở đâu — front matter chỉ liệt kê phụ lục A/B/C/D, trong đó D là "Templates tổng hợp". Nếu template nằm ở phụ lục D thì nên trỏ đích danh.

**Đề xuất:** đổi thành *"(Xem Phụ lục D — Templates tổng hợp)"* nếu đúng là ở đó. **Cần main Claude kiểm phụ lục D trước khi sửa** — phụ lục ngoài phạm vi N1.

---

## 🔵 PHÁT HIỆN NHẸ

### X17 — 🔵 D: "sai 90% trường hợp" không có cơ sở (rule_03 d63)
> *Đoán bừa "chắc bị từ chối rồi" sau 10 ngày → **sai 90% trường hợp***

Con số 90% không có nguồn. Nội dung khuyên đúng (10 ngày là bình thường trong chu kỳ ringi 2-3 tuần), chỉ con số là trang trí. Đề xuất: đổi thành *"phần lớn trường hợp là đoán sai"*.

### X18 — 🔵 E: rule_01 d24 lẫn "round" trong vế Việt
> *Chị Hương, mai là **round** đàm phán giá Phase 3 ạ.*

JA dùng `価格交渉` (thuần Nhật). "Round" không thuộc nhóm thuật ngữ nghề bắt buộc (khác `BATNA`/`ZOPA`/`scope`/`deadline`). Đề xuất: "vòng đàm phán giá". Rất nhẹ.

### X19 — 🔵 F: rule_02 bảng từ vựng — Hán Việt của `着地点` sai
> `| 着地点 | ちゃくちてん | **TRƯỚC ĐỊA ĐIỂM** | Điểm chốt |`

`着` là **TRƯỚC**? Không — `着` đọc Hán Việt là **TRƯỚC/TRỨ** trong nghĩa "mặc/dính", nhưng ở đây bộ ba `着地点` nên là **TRƯỚC ĐỊA ĐIỂM** theo lối phiên âm máy móc. So với các dòng khác trong sách (vd `決裁` = QUYẾT TÀI, `根回し` = CĂN HỒI) thì cách phiên này nhất quán với quy ước của sách. **Xếp 🔵 và nghiêng về KHÔNG sửa** — xem mục CẤM SỬA.

---

## ⛔ NGOÀI PHẠM VI — ghi nhận, KHÔNG sửa

1. **3 ca keigo main Claude tự tìm** (`大垣部長様` r12 d43 + r16 d23, `お伺いさせていただきます` r12 d35) nằm ở phần_II/III — thuộc N2/N3, N1 không đụng. Xác nhận: phần_I **không có ca nào tương tự**.
2. **`meta/STATUS.md` khai "Auto-review: 0 issues" và "Sẵn sàng ship"** — không đúng với thực tế phần_I (6 lỗi nặng). Đúng như rule review mục 5 cảnh báo: đừng tin STATUS.md.
3. **Phụ lục A/B/C/D** — chưa kiểm (ngoài phạm vi). X16 cần main Claude tra phụ lục D.
4. **conversation.json** của 9 rule — không mở, theo phạm vi.
5. **Mục lục d135 ghi "Mục lục v1 — 2026-04-25"** trong khi front matter và STATUS ghi năm 2026 — nhất quán, không phải lỗi.

---

## 🚫 DANH SÁCH CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Vì sao CẤM sửa |
|---|---|---|
| 1 | **Cách viết `¥18M`, `¥16.5M`** ở toàn bộ 43 giá trị | Đây là **quy ước có chủ ý** của sách, dùng nhất quán 100% ở cả 9 rule, cả vế JA lẫn VN, cả bảng lẫn thoại. Đổi sang `1,800万円` sẽ phải sửa 43 chỗ và **phá vỡ mọi phép so sánh nhanh** trong ladder/ZOPA. Sách là tài liệu học cho người Việt, `¥18M` dễ đối chiếu hơn. **KHÔNG sửa.** |
| 2 | `弊社` ở r01 d42, r02 d34, r07 d46/d58, r08 d36/d39 | Đều là người mình nói về công ty mình với sắc thái khiêm nhường — **đúng**. Đừng đổi sang `当社` (trung tính) hay `我が社`. |
| 3 | r03 d25 `稟議の進捗を伺ってもよろしいでしょうか` | `伺う` + `てもよろしいでしょうか` là **đúng**, KHÔNG phải 二重敬語. Đừng "sửa" thành `お伺いします` — sẽ hỏng sắc thái xin phép. |
| 4 | r01 d64 `我々には他のオプションがあります` | Câu này nằm trong mục **Tránh**, tức sách đang dạy **ĐỪNG nói** câu đó. Đọc lướt dễ tưởng là mẫu câu cần sửa keigo. Giữ nguyên. |
| 5 | r06 d44 *"Bậc cao cấp vẫn phải là thương vụ thật nếu khách chọn (không phải lựa chọn giả / phương án bẫy)"* | Đây là **rào đạo đức đúng và quan trọng** — nó ngăn đúng cái rủi ro mà kỹ thuật decoy pricing dễ dẫn tới. Đừng cắt cho gọn. |
| 6 | r08 d61 *"Cho khách thấy danh sách điểm rút lui → là sai lầm chiến thuật"* | **Đúng lý thuyết đàm phán** (lộ reservation price = mất toàn bộ đòn bẩy). Đừng đổi thành "nên minh bạch với khách". |
| 7 | r09 d37 nguyên tắc **trade-back** (`trade 拒否は譲歩取り下げ`) | Đúng chuẩn nghiệp vụ, là điểm mạnh nhất của rule_09. Giữ nguyên. |
| 8 | r02 d37 `ZOPA は ¥15M〜¥17M` | **Đây là chỗ ĐÚNG** giữa một rule có phần định nghĩa sai (X4). Khi sửa X4 tuyệt đối **không kéo theo** dòng này. |
| 9 | r05 d21 `原価 ¥13M`, `利益率 25% → ¥16.25M` | Phép tính markup **đúng**. Nếu sửa X2 (26%→27.8%) thì đừng đụng ¥13M — nó là mốc neo cho mọi phép kiểm biên lợi nhuận. |
| 10 | Từ tiếng Anh `BATNA`, `ZOPA`, `scope`, `SLA`, `IP`, `net 30/60/90`, `LTV`, `white-label`, `anchor` | Thuật ngữ nghề chuẩn trong môi trường IT/business Việt. **KHÔNG Việt hoá.** Đã loại khỏi danh sách lỗi E. |
| 11 | Nhãn `【1】【2】【3】` và cấu trúc 7 khối của rule | Đồng nhất 9/9 rule. Không đụng. |
| 12 | Hán Việt kiểu `TRƯỚC ĐỊA ĐIỂM` (`着地点`), `THÔI XÚC` (`催促`), `DỊCH CÁT` (`役割`) | Sách dùng lối phiên Hán Việt máy móc **nhất quán toàn bộ**. Sửa lẻ vài dòng sẽ tạo ra bất nhất còn tệ hơn. Nếu muốn chuẩn hoá thì phải làm cả sách, và đó là đợt việc khác. |
| 13 | r06 d42 `+35%` và d60 `mất hơn 30%` | Hai số này **nhất quán với nhau** và **khớp nguồn ngoài** (30-40%). Đừng sửa. Chỉ `95%` ở d3 mới là số bịa. |
| 14 | r03 toàn bộ nội dung 稟議/根回し/決裁 | Đã kiểm chứng ngoài: chu kỳ 2-3 tuần, cơ chế nemawashi đi trước ringi-sho, kessai đóng dấu cuối — **đều đúng**. Rule_03 là rule sạch nhất phần I về chuyên môn. |

---

## Kết luận

**6 lỗi 🔴 nặng, 8 🟡 vừa, 3 🔵 nhẹ trên 9 rule.**

Ba lỗi đáng lo nhất, đều nằm trên **trục ZOPA/BATNA** đúng như dự đoán trong `00_TIEN_DO.md`:

1. **X1/X8 — `未満` vs `以下` tại ¥15M**: lằn ranh rút lui mơ hồ ngay tại con số quyết định, và rule_09 tự mâu thuẫn trong một dòng. Bản VN dịch cả hai thành "dưới" nên **mâu thuẫn bị che khuất, chỉ lộ ở vế Nhật**.
2. **X3 — Good ¥14M dưới reservation ¥15M**: sách tự đặt lên bàn một mức giá mà chính nó dạy phải rút lui.
3. **X4 — định nghĩa ZOPA sai**: gọi `最低期待品質` (chỉ tiêu chất lượng) là con số thứ 4 của ZOPA, còn bản VN dịch tiếp thành "sàn ngân sách" (chỉ tiêu tiền). ZOPA chuẩn (Fisher & Ury) chỉ có 2 con số. Trớ trêu là phần thực hành d37 lại làm đúng.

Sửa X1 theo hướng `未満` sẽ giải luôn X8 và làm nhẹ X7 — nên làm trước tiên.

**Điểm mạnh của phần I:** tiếng Nhật keigo **sạch 9/9**; nội dung 稟議/根回し (rule_03) chính xác so với nguồn ngoài; nguyên tắc trade-back (rule_09) và rào đạo đức về decoy tier (rule_06 d44) là chất lượng cao; 4/5 phép tính số học đúng.

**Nguồn kiểm chứng ngoài:**
- [Zone of possible agreement — Wikipedia](https://en.wikipedia.org/wiki/Zone_of_possible_agreement)
- [ZOPA — Beyond Intractability](https://www.beyondintractability.org/essay/zopa)
- [How to Find the ZOPA in Business Negotiations — Harvard PON](https://dev.pon.harvard.edu/daily/business-negotiations/how-to-find-the-zopa-in-business-negotiations/)
- [Ringi Decision-Making in Japan](https://resources.nihonium.io/faq/what-is-ringi-decision-making-japan)
- [Ringi — The Decision-Making Process within Japanese Companies](https://www.inventurejapan.com/culture/business/ringi)
- [Tiered Pricing: why the middle one wins](https://thelaunchpadincubator.com/blog/tiered-pricing/)
- [The Decoy Effect: The Pricing-Page Tactic That Doesn't Replicate](https://atticusli.com/replication-crisis/decoy-effect-asymmetric-dominance/)
- [Japan's Fiscal Year — MailMate](https://mailmate.jp/blog/japan-fiscal-year)
