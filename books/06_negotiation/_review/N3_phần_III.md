# N3 — Báo cáo rà soát Phần III (rule_18 → rule_29)

> Phạm vi: 12 file `nội_dung/phần_III/rule_*/rule.md`. Chỉ báo cáo, không sửa.
> Áp dụng `.claude/rules/book-review.md` mục 1/3/4/5. Mọi trích dẫn đã strip ruby bằng python.
> Đối chiếu bắt buộc ra ngoài phạm vi (chỉ để **kiểm chứng**, không sửa): phần I (rule_01/02/05/06/09) và phần IV (rule_30/35) — vì trục giá và mạch truyện vắt qua các phần (mục 6).

---

## Bảng tổng kết

| # | Mức | Rule | Vấn đề | Trục |
|---|---|---|---|---|
| 1 | 🔴 | r23 d37 | **Công thức Payback viết NGƯỢC** — `¥17.5M ÷ ¥92.1M ≒ 2.3 ヶ月` ra 0.19, không ra 2.3 tháng | A/B/D |
| 2 | 🔴 | r18 d39, r25 d39/45, r27 d36 | **"ROI 4.4 倍" tính trên GMV, không phải lợi nhuận** — ROI thật là ÂM | A/D |
| 3 | 🔴 | r28 d13 | **Ngưỡng rút lui ¥15.5M** mâu thuẫn ¥15M ở r01/r02/r05/r09/r35 | B |
| 4 | 🔴 | r28 vs r29 | **Kết cục ngược nhau**: r28 thương vụ đổ vỡ ↔ r29 "sau khi Phase 3 chốt ¥17M" | B |
| 5 | 🔴 | r28 vs r35 (P4) | **Trùng lặp nguyên cảnh** vòng 4 / ¥14M / rút lui phong nhã | B/F |
| 6 | 🔴 | r21 d25/d27 | **Biên lợi nhuận 14%** không khớp giá vốn ¥13M (tính ra 18.75%) | B |
| 7 | 🟡 | r21 d3 | "¥18M → ¥16M = **-11% biên lợi nhuận**" — -11% là % giảm tổng tiền, không phải biên | B/D |
| 8 | 🟡 | r29 d36, d37 | **2 thẻ ruby vỡ**: `</ruByの</ruby>`, `</ruById</ruby>` — hiển thị rác | F |
| 9 | 🟡 | r19 d64, r20 d69 | **Mục "Danh mục kiểm tra" RỖNG** dù mục lục hứa `[TEMPLATE: checklist]` | F |
| 10 | 🟡 | r09 (P1) ↔ r18–r27 | Bậc nhượng bộ **không nhỏ dần**: 1.0 / 0.5 / 0.5 / 1.0 / 1.0 | A |
| 11 | 🟡 | r25 d13, r27 d13 | Mạch thời gian nhảy lùi về mốc r18/r19 sau khi giá đã xuống | F |
| 12 | 🔵 | r23 d36 | Tổng ¥92.1M (làm tròn xuống từ 92.16) — sai số chấp nhận được | — |
| 13 | 🔵 | r22 d34 | Chiết khấu gói ¥1M vs 5% của ¥18.5M = ¥0.925M — làm tròn | — |

**Tiếng Nhật (trục C): 12/12 rule SẠCH.** Không có 二重敬語, 過剰敬語, さ入れ言葉, lỗi uchi/soto, hay lẫn 弊社/当社. 3 ca keigo main Claude tìm trước đều nằm ngoài phần III (r12, r16). Xem mục CẤM SỬA.

---

## 🔢 BẢNG KIỂM TOÁN SỐ HỌC (bắt buộc)

### A. Trục giá xuyên sách — nguồn gốc từ phần I

| Mốc | Giá trị | Nguồn |
|---|---|---|
| Giá vốn (原価) | ¥13M | r05 d21 |
| Neo giá (anchor) | ¥19M | r05 d35, r09 d35 |
| Mục tiêu (target) | ¥18M | r02 d34, r05 d35, r09 d35 |
| Giá bảo lưu (reservation) | **¥15M** | r02 d34, r05 d35 |
| Trần ngân sách khách | ¥17M | r02 d34, r18 d28 |
| ZOPA | ¥15M–¥17M (biên 2M) | r02 d37 |
| 3 bậc | Good ¥14M / Better ¥18M / Best ¥24M | r06 d34 |

**Kiểm lại từng phép của phần I (làm nền so sánh):**
- `13 × 1.25 = 16.25` → làm tròn ¥16.5M ✅
- Biên lợi nhuận tại ¥18M: `(18−13)/18 = 27.78%` — sách nói **26%** (r05 d38, r21 d3). Lệch 1.8pp, nằm trong vùng làm tròn/chi phí phát sinh → 🔵 chấp nhận được.

### B. Kiểm toán từng phép tính trong phần III

| Rule/dòng | Sách nói | Tôi tính lại | Phán định |
|---|---|---|---|
| r18 d39 | `+¥80M GMV → ROI 4.4 倍` | `80 ÷ 18 = 4.44` | Số học ✅ / **Bản chất SAI** → mục 🔴#2 |
| r20 d40 | `5名 × 240日 × 2時間 ≒ 年 2,400 時間` | `5×240×2 = 2400` | ✅ |
| r20 d40 | `¥17.5M ÷ 2年 = 月 ¥730K` | `17.5M/24 = ¥729,167` | ✅ (làm tròn) |
| r20 d40 | `¥1.2M − ¥730K = lợi thuần ¥470K/月` | `1.2 − 0.730 = 0.470` | ✅ |
| r20↔r23 | ¥1.2M/tháng ↔ ¥14.4M/năm | `14.4/12 = 1.2` | ✅ **nhất quán chéo rule** |
| r23 d36 | `¥600M/tháng × 12 × 12% = +¥864M/năm` | `7200 × 0.12 = 864` | ✅ |
| r23 d36 | `¥864M × 9% = ¥77.7M/năm` | `864 × 0.09 = 77.76` | ✅ |
| r23 d36 | `5名×240日×2h×¥6,000 = ¥14.4M/năm` | `5×240×2×6000 = 14,400,000` | ✅ |
| r23 d36 | `Tổng ¥92.1M/năm` | `77.76 + 14.4 = 92.16` | ✅ (làm tròn xuống) |
| **r23 d37** | **`¥17.5M ÷ ¥92.1M ≒ 2.3 ヶ月`** | **`17.5/92.1 = 0.19` (đơn vị NĂM)** | **🔴 CÔNG THỨC SAI** |
| r23 d37 | `初年度で 5.3 倍の return` | `92.1/17.5 = 5.26` | ✅ |
| r23 d37 | `3年 NPV (割引率5%) = ¥234M` | `Σ 92.1/1.05^t (t=1..3) − 17.5 = 233.3` | ✅ (rất chính xác) |
| r21 d3 | `¥18M → ¥16M = −11%` | `(18−16)/18 = 11.1%` giảm **tổng tiền** | 🟡 nhãn sai → #7 |
| r21 d25 | `¥16M giữ scope = margin 14%` | `(16−13)/16 = 18.75%` | **🔴 LỆCH** → #6 |
| r21 d27 | `biên từ 26% xuống 14%` | `27.8% → 18.75%` | **🔴 LỆCH** → #6 |
| r21 d36 | `−¥1M − ¥0.5M` từ ¥17.5M → ¥16M | `17.5 − 1 − 0.5 = 16.0` | ✅ |
| r22 d34 | `9 + 3 + 3.5 + 3 = ¥18.5M` | `= 18.5` | ✅ |
| r22 d34 | `gói ¥17.5M → chiết khấu ¥1M` | `18.5 − 17.5 = 1.0` | ✅ |
| r22 d36 | cơ sở chiết khấu `工数 5% 削減` | `18.5 × 5% = 0.925` ≈ ¥1M | 🔵 làm tròn |
| r26 d43 | `¥15M → scope −30%, đạt 65%` | khớp r09 Step 5 (`¥15M ⇄ scope −30%`) | ✅ **nhất quán** |
| r27 d37 | `+14% → Annual return +¥15M/năm` | `(7200×0.14 − 864) × 9% = 12.96` | 🟡 lệch ~2M, "見込み" nên chấp nhận |
| r29 d35 | `training 1 ngày = ¥0.4M` | nhất quán r29 d3 (`1 lần ≈ ¥0.5M`) | ✅ |

### C. Kiểm logic nhượng bộ (nguyên tắc đàm phán)

Bậc thang chính thức ở r09 (P1): `¥19M → ¥18M → ¥17.5M → ¥17M → ¥16M → ¥15M`
Khoảng cách: **1.0 / 0.5 / 0.5 / 1.0 / 1.0** → xem 🟡#10.

**Mỗi lần nhượng có đổi lấy gì không? — ĐẠT.** Đây là điểm mạnh nhất của phần III:

| Rule | Nhượng | Đổi lấy |
|---|---|---|
| r19 | ¥18M → ¥17.5M | hợp đồng 2 năm ✅ |
| r20 | 3 phương án (A/B/C) | mỗi phương án gắn điều kiện ✅ |
| r21 | ¥17.5M → ¥16M | cắt scope tương đương ✅ |
| r24 | thêm dashboard | 2 năm + cho công bố case ✅ |
| r27 | ¥18M → ¥17M | giữ scope + 2 năm ✅ |
| r29 | training | (A) trả phí hoặc (B) trade scope ✅ |

Không có ca nào dạy nhượng bộ đơn phương. r09 d37 còn dạy **rút lại nhượng bộ khi điều kiện đổi bị từ chối** — đúng chuẩn.

---

## 🔴 Phát hiện nghiêm trọng

### #1 — r23 d37: Công thức Payback viết NGƯỢC (lỗi kiểu sách 05)

**Nguyên văn JA (d37):**
> 「**Payback period: ¥17.5M ÷ ¥92.1M ≒ 2.3 ヶ月**【3】、つまり初年度で 5.3 倍の return。」

**Nguyên văn VN (d37):**
> *Thời gian thu hồi vốn: ¥17.5M ÷ ¥92.1M ≒ 2.3 tháng, tức năm đầu hoàn vốn 5.3 lần.*

**Vấn đề.** `¥92.1M` là lợi tức **một NĂM** (chính d36 ghi `合計 ¥92.1M/年`). Chia đầu tư cho dòng tiền năm sẽ ra **số NĂM**:

```
17.5 ÷ 92.1 = 0.19        ← đơn vị NĂM, không phải tháng
```

Đọc đúng nguyên văn thì kết quả là **"0.19 tháng"** — vô nghĩa. Muốn ra tháng phải:

```
17.5 ÷ (92.1 ÷ 12) = 2.28 tháng      hoặc      17.5 ÷ 92.1 × 12 = 2.28 tháng
```

**Kết quả 2.3 đúng, nhưng phép tính in ra sách thì sai** — thiếu bước `×12` / `÷12`. Học viên bấm máy tính theo đúng công thức sách sẽ ra 0.19 và không hiểu 2.3 ở đâu ra. Đây chính xác là dạng lỗi sách 05 (`lợi ích ÷ đầu tư = số tháng`).

Đã kiểm chứng chuẩn tài chính: payback = đầu tư ÷ dòng tiền **năm**, kết quả tính bằng **năm**; muốn ra tháng phải nhân phần thập phân với 12 ([Wall Street Prep](https://www.wallstreetprep.com/knowledge/payback-period/), [SoFi](https://www.sofi.com/learn/content/how-to-calculate-the-payback-period/)).

**Đề xuất:** sửa cả JA lẫn VN thành `¥17.5M ÷ (¥92.1M ÷ 12ヶ月) ≒ 2.3 ヶ月` (hoặc `¥17.5M ÷ ¥92.1M × 12 ≒ 2.3ヶ月`). ⚠️ Dòng 37 có ruby chen sau chữ số — phải `sed -n '37p'` lấy nguyên văn trước khi Edit (mục 1.1).

---

### #2 — "ROI 4.4 倍" tính trên GMV, không phải lợi nhuận (4 chỗ)

**Vị trí:** r18 d39, r25 d39, r25 d45, r27 d36.

**Nguyên văn JA (r18 d39):**
> 「**御社の +¥80M GMV インパクトに対し ROI 4.4 倍**【2】に位置します。」

**Nguyên văn VN (r18 d39):**
> *So với impact +¥80M GMV của quý cty, ROI ở mức 4.4 lần ạ.*

**Vấn đề.** `80 ÷ 18 = 4.44` — số học đúng, **bản chất sai**:

1. **GMV không phải lợi nhuận.** GMV là tổng giá trị giao dịch. Chính rule_23 d36 đặt biên lợi nhuận của khách là **9%**. Nên ¥80M GMV chỉ mang lại `80 × 9% = ¥7.2M` lợi nhuận, tức **ÍT HƠN** khoản đầu tư ¥18M. ROI thật = `(7.2 − 18)/18 = −60%` — âm.
2. **ROI ≠ tỷ số thô.** Định nghĩa chuẩn `ROI = (lợi ích − chi phí) ÷ chi phí`. Kể cả lấy 80 làm lợi ích thì `(80−18)/18 = 3.44 lần`, không phải 4.4.

Nguy hiểm ở trục A: học viên đem "ROI 4.4 lần" nói trước CFO Nhật thật, CFO chỉ cần hỏi *"đó là GMV hay lợi nhuận?"* là hỏng cả buổi. Rule 23 dạy rất chuẩn việc phải quy GMV → lợi nhuận qua biên 9%, nhưng r18/r25/r27 lại bỏ qua đúng bước đó → **sách tự mâu thuẫn về phương pháp** giữa r18/r25/r27 và r23.

**Đề xuất:** đổi nhãn `ROI 4.4 倍` → `GMV インパクト倍率 4.4 倍` (bội số tác động GMV), hoặc tính lại theo lợi nhuận cho khớp r23. Sửa đồng bộ 4 chỗ + bảng từ vựng r18 d77 (`ROI 倍率 | Bội số ROI`).

---

### #3 — r28 d13: Ngưỡng rút lui ¥15.5M lệch trục ¥15M

**Nguyên văn (r28 d13):**
> Round 4: 大垣 + 中村 CFO push xuống ¥14M (**dưới điểm rút lui ¥15.5M**).

**Đối chiếu 5 chỗ khác:**

| Nguồn | Ngưỡng rút lui |
|---|---|
| r01 d40 (kịch bản C) | `¥15M 以下なら撤退` |
| r02 d34 | `reservation ¥15M` |
| r05 d35 | `reservation ¥15M` |
| r09 d35 | `¥15M ⇄ scope −30% (これ最終)。¥15M 以下 = 撤退` |
| **r35 d13 (P4)** | `dưới ngưỡng rút lui **¥15M** của Hà CTO` |
| **r28 d13** | **¥15.5M** ❌ |

**Lưu ý — tôi đã KHÔNG tính r26 vào lỗi.** r26 d43 nói `Phase 2 同等のスコープであれば、弊社 walk-away ライン ¥15.5M` — có **điều kiện gắn kèm** (giữ nguyên scope Phase 2), trong khi ¥15M ở r09 là mức **đã cắt scope −30%**. Hai con số này **logic khớp nhau**, chỉ là r26 dùng nhãn "walk-away ライン" cho một mức không phải walk-away line chính thức. Đó là dùng thuật ngữ lỏng, không phải lỗi số.

Nhưng **r28 d13 thì sai thật**: nó bê thẳng ¥15.5M làm "điểm rút lui" trần trụi, không kèm điều kiện scope, và mâu thuẫn trực tiếp với r35 — vốn mô tả **cùng một cảnh** và ghi ¥15M.

**Đề xuất:** r28 d13 sửa `¥15.5M` → `¥15M`. Cân nhắc đổi nhãn ở r26 d43 thành `Phase 2 同等スコープでの最低条件` để khỏi va thuật ngữ 撤退ライン của r08.

---

### #4 — r28 ↔ r29: hai rule liền nhau, kết cục ngược nhau

**r28** (d13 + toàn bộ hội thoại TỐT): thương vụ **ĐỔ VỠ**. Dũng nói `本件はここでクローズとさせていただければと存じます` (xin khép lại vụ việc), hẹn `Phase 4 や別案件`.

**r29 d13** ngay sau đó:
> Sau Phase 3 **chốt ¥17M + 2 năm + dashboard kèm trade (rule 24)**, 田中 PMO Slack Dũng…

Và r29 d21/d34 nói `Phase 3 contract draft 確認しました` — đang soát **bản thảo hợp đồng**.

Hai rule đứng cạnh nhau mô tả hai thực tại loại trừ nhau: r28 không có hợp đồng, r29 đang soạn hợp đồng.

**Đã kiểm chứng theo mục 6 (điểm mù agent) — không phải phần IV cứu được:** phần IV đi tiếp mạch **CHỐT** (r30 "Round 3 vừa close ¥17M + 2 năm + dashboard" → r31 mail tóm tắt → r32 LOI → r33 điều khoản → r34 ký). Nên mạch chính của sách là **chốt được ở ¥17M**; r28 là nhánh rẽ "nếu đổ vỡ".

**Đề xuất:** r28 d13 nói rõ đây là **kịch bản giả định/nhánh song song**, ví dụ *"Giả sử vòng 4 khách ép xuống ¥14M — dưới điểm rút lui ¥15M…"*, để không đọc thành diễn biến thật. (Cùng lúc xử lý #5.)

---

### #5 — r28 trùng lặp nguyên cảnh với r35 (phần IV)

| | r28 (phần III) | r35 (phần IV) |
|---|---|---|
| Bối cảnh | Round 4, 大垣+CFO ép ¥14M | Phase 3 vòng 4, 大垣 ép ¥14M |
| Ngưỡng rút lui | ¥15.5M ❌ | ¥15M ✅ |
| Nội dung | rút lui phong nhã, để ngỏ cửa | rút lui phong nhã, để ngỏ cửa |
| Câu lõi | `条件面で折り合いがつかず、誠に残念` | `条件面で折り合いがつかず、今回は誠に残念ながら見送り` |
| Để ngỏ | `Phase 4 や別案件、いつでも歓迎` | `ご縁がございましたら` |
| Tránh | nhắc Y社 = thù địch | `お断りします` cứng = cắt quan hệ |

Hai rule dạy **gần như cùng một bài**. r28 d7 tự khai `**Liên quan:** … rule 35 (sách 06 phần IV — 商談打ち切り)` — tức tác giả biết có trùng nhưng chưa phân vai rõ.

Ghi nhận: r35 **hay hơn** (có đoạn khách quay lại sau 1 tuần với ¥15.5M — chốt được bài học "rút lui phong nhã đôi khi khiến khách tự nâng ngân sách", và giải thích luôn ¥15.5M đến từ đâu).

**Đề xuất:** đây là quyết định biên tập của chủ nhà, không phải sửa máy móc. Hai hướng: (a) gộp, hoặc (b) phân vai — r28 dạy **quyết định rút** (đọc tín hiệu vượt ngưỡng, cách báo cấp trên), r35 dạy **câu chữ khi rút** (mẫu câu 打ち切り). Nếu chọn (b) thì phải cắt phần mẫu câu trùng ở r28.

---

### #6 — r21: biên lợi nhuận 14% không khớp giá vốn ¥13M

**Nguyên văn JA (r21 d25):**
> 「¥16M で同じ scope は**粗利 14%**、Phase 2 と同じスタッフ配置不可。」

**Nguyên văn VN (r21 d25):**
> *¥16M giữ nguyên scope là **margin 14%**, không bố trí staff như Phase 2 được.*

Và r21 d27: *"biên lợi nhuận từ **26%** xuống **14%**"*.

**Tính lại với giá vốn ¥13M (r05 d21):**

```
tại ¥18M: (18−13)/18 = 27.8%   (sách nói 26% — chấp nhận được)
tại ¥16M: (16−13)/16 = 18.75%  (sách nói 14% — LỆCH 4.75pp)
```

Để ra 14% thì giá vốn phải là **¥13.76M**, không phải ¥13M. Mà giá vốn ¥13M là hằng số nền do r05 đặt ra.

**Đề xuất:** sửa `14%` → `18%` (hoặc `19%`) ở cả r21 d25 và d27, đồng bộ JA + VN. Nếu chủ nhà muốn giữ 14% để kịch tính hơn thì phải sửa ngược giá vốn ở r05 — nhưng thế thì kéo theo cả biên 26% ở r05 d38 và r21 d3, nên **sửa ở r21 là an toàn hơn**.

---

## 🟡 Phát hiện trung bình

### #7 — r21 d3: "-11% biên lợi nhuận" gọi sai bản chất

**Nguyên văn:** *"Giảm đơn giá ¥18M → ¥16M = **-11% biên lợi nhuận** không hồi phục được."*

`(18−16)/18 = 11.1%` — đó là **% giảm tổng tiền/doanh thu**, không phải biên lợi nhuận. Biên lợi nhuận giảm `27.8% → 18.75%`, tức **-9pp**. Trộn hai khái niệm ngay câu luận điểm mở đầu rule.

**Đề xuất:** *"Giảm đơn giá ¥18M → ¥16M = **-11% doanh thu**, kéo biên lợi nhuận từ 26% xuống 18%…"*.

### #8 — r29 d36, d37: 2 thẻ ruby vỡ

Đây là **2 ca duy nhất trong toàn sách** (đã grep 45 rule).

**d36 nguyên văn:** `…に<ruby>際<rt>さい</rt></ruByの</ruby>しては…`
→ phải là `…に<ruby>際<rt>さい</rt></ruby>しては…` (thừa `の`, `</ruBy` sai hoa/thường)

**d37 nguyên văn:** `…<ruby>当初<rt>とうしょ</rt></ruby><ruby>通<rt>どお</rt></ruById</ruby>り…`
→ phải là `…<ruby>通<rt>どお</rt></ruby>り…` (thừa `d`, `</ruByI` sai)

Thẻ sai hoa/thường sẽ không đóng đúng → HTML/epub hiển thị rác giữa câu thoại. ⚠️ Phải copy nguyên văn từ `sed -n '36p'` / `sed -n '37p'` rồi mới Edit (mục 1.1).

### #9 — r19 d64 & r20 d69: mục "Danh mục kiểm tra" RỖNG

```
## Danh mục kiểm tra — Đề xuất giá      (r19 d64)

---
## Bảng từ vựng
```

Cả hai heading không có một dòng nội dung nào. Mục lục (`meta/mục_lục.md` d70, d71) hứa `[TEMPLATE: checklist]` cho đúng rule 19 và 20.

Đối chiếu: rule_06 (`[TEMPLATE: report]`) có mục `## Khung mẫu — Phiếu đề xuất 3 bậc` **có nội dung thật**. Nên đây là thiếu sót thật, không phải quy ước. (Toàn sách chỉ còn r45 d92 `## Mẫu` cũng rỗng — ngoài phạm vi, ghi để chủ nhà biết.)

**Đề xuất:** bổ sung checklist cho r19/r20 (nội dung mới → cần chủ nhà duyệt hướng, vòng 5 theo mục 8), hoặc gỡ heading rỗng.

### #10 — Bậc nhượng bộ không nhỏ dần

r09 (P1) đặt ladder `19 → 18 → 17.5 → 17 → 16 → 15`, khoảng cách **1.0 / 0.5 / 0.5 / 1.0 / 1.0**.

Nguyên tắc đàm phán chuẩn: bước nhượng phải **thu hẹp dần** để phát tín hiệu "đang chạm đáy". Bước **nở lại** (0.5 → 1.0) báo hiệu ngược — khách đọc là "vẫn còn dư địa" và ép tiếp. Chính r09 d60 tự cảnh báo *"Nhượng quá nhanh → khách đoán còn dư địa lớn"* nhưng bậc thang của chính nó lại phạm điều đó.

Phần III đi đúng ladder này (r19 ¥17.5M → r21/r24/r27 ¥17M → ¥16M), nên bước nở lại lan sang phần III.

**Ghi chú phạm vi:** gốc nằm ở r09 (phần I) — thuộc N1. Tôi báo ở đây vì phần III là nơi ladder được **thực thi**. Đề xuất ladder thu hẹp dần: `19 → 18 → 17.5 → 17.2 → 17 → 16.8`, hoặc giữ số cũ nhưng thêm một câu giải thích vì sao bước nở lại (vd: đổi lấy nhượng bộ lớn hơn từ phía khách).

### #11 — Mạch thời gian nhảy lùi

- **r25 d13**: *"sau khi Dũng báo ¥18M anchor (rule 18)"* — nhưng r19→r24 giá đã xuống ¥17.5M → ¥17M → ¥16M.
- **r27 d13**: *"Sau khi 大垣 reject ¥18M là 厳しい (rule 19), tới ngày 2"* — cũng quay về mốc r19.
- **r26** (khách ép ¥15M) đứng **trước** r27 (khách đòi ¥16M) — khách tự nâng giá đòi lên mà không có lý do.

Đọc tuần tự sẽ thấy giá lên xuống thất thường. Có thể là chủ ý (mỗi rule là một lát cắt kỹ thuật độc lập, không phải truyện liên tục), nhưng r29 d13 *"Sau Phase 3 chốt…"* lại khẳng định có mạch tuyến tính → không nhất quán về cách đọc.

**Đề xuất:** thêm một dòng ở đầu phần III nói rõ các rule là **lát cắt kỹ thuật**, không phải trình tự thời gian; hoặc chỉnh lại các dòng "Bối cảnh" cho khớp mốc giá.

---

## Trục A — chiến thuật có vượt ranh giới đạo đức không?

Đã soát riêng vì đây là sách đàm phán. **Kết luận: KHÔNG có ca dạy làm sai việc thật về mặt đạo đức.** Cụ thể:

- **r25 (im lặng)** — kỹ thuật hợp lệ, không lừa dối. Sách dạy đúng bối cảnh Nhật (沈黙 = thời gian suy nghĩ).
- **r26 (đối phó dọa dẫm)** — sách dạy **đối phó** khi bị dọa, **không** dạy đi dọa người khác. r26 d64 còn cấm thách thức khách (`Y社で本当にできるとは…` → mất 顔). Đúng hướng.
- **r18 (neo giá)** — có ràng buộc đạo đức tốt: r18 d47 buộc `根拠データ揃ってる`, r18 d63 cấm neo cao không cơ sở, r02 d59 cấm neo vượt ZOPA >20% ("khách cảm thấy bị xúc phạm").
- **r22 d42** — nói thẳng `không bịa, có thật. CFO sẽ kiểm chứng` ✅.
- **r29 (đặt lại đồng hồ)** — dùng lịch trình làm sức răn đe, nhưng là **hệ quả thật** của việc thay đổi phạm vi, không phải dọa giả.
- **r28 (rút lui)** — giữ quan hệ, không đốt cầu ✅.

**Điểm cần chú ý (không phải lỗi):** r27 d37 đưa "thông tin mới" `AI 精度 +18%（社内検証結果）` ngay lúc cần tái neo giá. Cách dựng tình huống này rất sát biên giới "bịa dữ kiện để cứu giá". Sách có gài chốt an toàn — r27 d60 cấm *"thông tin mới quá yếu → khách đọc là độn chỗ"* — nhưng cấm vì **yếu**, chưa cấm vì **không có thật**. Đề xuất thêm một gạch đầu dòng ở mục Tránh: *"Thông tin mới phải kiểm chứng được — bịa số để cứu giá là rủi ro pháp lý + mất khách vĩnh viễn"*. 🔵

**Về nhượng bộ tự hại:** không có. Ngược lại, phần III **dạy rất chắc** việc không nhượng đơn phương (r24), không giảm giá phản xạ (r20), giữ biên bằng cắt scope (r21), không cho thêm miễn phí (r29).

---

## Trục C — Tiếng Nhật: 12/12 SẠCH

Đã quét toàn bộ phần III sau khi strip ruby, tìm: `部長様/社長様/CTO様`, `お伺いさせていただく`, `お〜させていただく` chồng khiêm nhường, `さ入れ言葉`, `ご+việc của mình`, lẫn lộn `弊社/当社`.

**Kết quả: 0 lỗi.** Ba chỗ dùng `させていただく` đều hợp lệ:
- r18 d38 `ご提案させていただいております` ✅ (đề xuất là việc mình làm hướng tới khách — đúng chuẩn)
- r27 d36 `改めて整理させていただきますと` ✅
- r28 d39 `クローズとさせていただければと存じます` ✅

`弊社` được dùng nhất quán và đúng (r26 d40/d43, r28 d38/d40) — luôn là công ty mình khi nói với khách. Không có chỗ nào dùng `当社` sai chỗ. Kính ngữ hướng khách (`御社`, `ご検討`, `いただければ`) và khiêm nhường ngữ hướng mình (`いたします`, `ございます`, `伺いました`) phân tách đúng.

**Chú ý:** r23 d78 ghi Hán Việt của 取締役会 là **"THỦ ĐẾ DỊCH HỘI"** — 取 là THỦ, 締 là ĐẾ/THẾ, 役 là DỊCH, 会 là HỘI. Đúng chữ. 🔵 Không sửa.

---

## Trục E — Tiếng Việt

Đã đối chiếu cả hai vế JA↔VN của toàn bộ hội thoại. **Không tìm thấy lỗi dịch lệch nghĩa.** Vài ghi nhận 🔵 (không đề xuất sửa):

- **Xưng hô nhất quán và đúng.** Dũng tự xưng "em" với khách (JA có `いたします/ございます` → khiêm nhường, hợp lệ). 大垣/中村 tự xưng "tôi" (r21 d39 `検討します` → *"Tôi sẽ xem xét"* ✅). Đây là kết quả fix v1.1 ở STATUS.md — **đã ăn vào .md**, xác nhận không phải "fix nửa vời" (mục 5).
- **Tiếng Anh trong ô tiếng Nhật** (`scope`, `trade`, `anchor`, `ROI`, `payback`, `tier`) — dày đặc nhưng là **chủ ý xuyên sách**: đây là sách đàm phán B2B cho người đã J2-J1, và các thuật ngữ này thật sự được dùng nguyên dạng trong 商談 Nhật. Nhất quán ở cả 45 rule. **Không báo lỗi** (tránh lặp lại ca phóng đại sách 09).
- **Cách viết `¥18M`** — theo yêu cầu: đây là **quy ước có chủ ý**, dùng nhất quán 43 giá trị / 45 rule, tiện cho bảng so sánh và cho việc dạy. Người Nhật thật sẽ viết `1,800万円`, nhưng đổi lúc này sẽ phá vỡ toàn bộ trục giá. → **CẤM SỬA**, xem mục dưới.
- r20 d82 bảng từ vựng có dòng `lợi thuần | ネット・ポジティブ` — mục "Từ" là tiếng Việt còn "Cách đọc" là katakana, hơi ngược so với các dòng khác. 🔵 Lỗi nhẹ về hình thức bảng, không ảnh hưởng nội dung.

---

## Trục F — Nhất quán & meta

- **Mục lục vs H1 phần III: khớp 12/12** về tinh thần. Có khác chữ (mục lục "Anchor price first hay wait?" ↔ H1 "Neo giá trước hay chờ?"; mục lục "Bundle / unbundle pricing" ↔ H1 "Gộp gói / tách mục định giá"). H1 đã Việt hoá, mục lục còn lai Anh — đây chính là hiện tượng main Claude đo được (**VN lệch 37/45**). Phần III đóng góp vào con số đó nhưng **bản .md rule là bản ĐÚNG** (đã Việt hoá); cần sửa ở mục lục, không sửa ở rule.
- **Cấu trúc 12/12 rule đồng nhất**: Luận điểm → Bối cảnh → Hội thoại XẤU → Hội thoại TỐT → Ghi chú 📝 → Câu chốt → Tránh → Bảng từ vựng. Chỉ r19/r20 chèn thêm "Danh mục kiểm tra" (rỗng, #9).
- **Bảng từ vựng**: 12/12 rule đều có, 7-8 mục mỗi rule, đủ 4 cột. ✅
- **Cross-ref**: đã kiểm cả dạng liên sách theo mục 1.6. r28 d7 `rule 35 (sách 06 phần IV — 商談打ち切り)` ghi rõ tiền tố ✅. r26 d7 `sách 04 escalation` ✅. r29 d7 `sách 06 phần IV rule 33` ✅. Không có ca trỏ sai.
- **Bug ruby-loss do câu lặp (mục 1.3)**: đã kiểm — phần III có nhiều câu lặp giữa khối XẤU và TỐT (r19 d21↔d35, r20 d23↔d38, r21 d23↔d35, r22 d21↔d33, r23 d23↔d35, r24 d23↔d36, r25 d23↔d39, r26 d23↔d38, r27 d21↔d35, r28 d23↔d38). **Không có ca nào mất ruby** ở bản thứ hai. Sạch.
- **Emoji ✅/❌ bị strip**: 0 ca.
- **Ký tự lạ (Hangul / giản thể)**: 0 ca.

---

## Ngoài phạm vi — ghi nhận, KHÔNG tự sửa

1. **r09 (phần I)** — ladder nhượng bộ không nhỏ dần (#10). Gốc lỗi ở phần I, thuộc N1.
2. **r35 (phần IV)** — trùng lặp với r28 (#5). Quyết định gộp/tách thuộc chủ nhà.
3. **r05 d38 / r21 d3** — "biên 26%" vs tính ra 27.8%. Sai số nhỏ, nhưng nếu chủ nhà chuẩn hoá thì phải sửa **đồng bộ cả phần I lẫn phần III**.
4. **`meta/mục_lục.md`** — cột "Tên VN" phần III còn lai tiếng Anh so với H1 đã Việt hoá (11 dòng). Thuộc đợt meta.
5. **r45 d92** — mục `## Mẫu` rỗng (giống #9). Thuộc N5.
6. **`meta/STATUS.md`** khai *"Auto-review: 0 issues"* và *"Sẵn sàng ship"* — không đúng thực tế (mục 5: đừng tin STATUS.md).

---

## ⛔ CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| Chỗ | Vì sao CẤM SỬA |
|---|---|
| **`¥18M` / `¥17.5M` / ký hiệu M** toàn phần III | **Quy ước có chủ ý**, nhất quán 43 giá trị / 45 rule. Đổi sang `1,800万円` sẽ phá vỡ toàn bộ trục giá và các bảng so sánh. |
| **r26 d43 `walk-away ライン ¥15.5M`** | KHÔNG mâu thuẫn với ¥15M. Có điều kiện gắn kèm `Phase 2 同等のスコープであれば` — mức giữ nguyên scope, khác mức ¥15M (đã cắt scope −30% ở r09 Step 5). Cùng lắm chỉ chỉnh **nhãn thuật ngữ**, đừng đổi con số. |
| **r23 d37 `NPV ¥234M`** | Tính lại ra `233.31` — sách chính xác. Đừng "sửa cho tròn". |
| **r23 d37 `5.3 倍`** | `92.1/17.5 = 5.26` ✅. Đúng. |
| **r23 d36 `¥92.1M`** | `77.76 + 14.4 = 92.16`, làm tròn xuống. Đúng. |
| **r20 d40 `¥730K` / `¥470K`** | `17.5M/24 = 729,167` và `1.2 − 0.73 = 0.47` ✅. Nhất quán chéo với r23 (`14.4/12 = 1.2`). Đừng đụng. |
| **r22 d34 `¥9M + ¥3M + ¥3.5M + ¥3M = ¥18.5M`** | Cộng đúng. Chiết khấu ¥1M đúng. |
| **r26 d43 `scope −30%` / `65%`** | Khớp r09 Step 5 (`¥15M ⇄ scope −30%`). Nhất quán. |
| **r18 `Better ¥18M / Best ¥24M`** | Khớp r06 (Good ¥14M / Better ¥18M / Best ¥24M). Đừng đổi. |
| **`させていただく` ở r18 d38, r27 d36, r28 d39** | **ĐÚNG**, không phải 二重敬語. Đừng "sửa keigo" ở đây. |
| **`弊社` toàn phần III** | Dùng đúng — công ty mình khi nói với khách. Đừng đổi sang `当社`. |
| **Tiếng Anh `scope/trade/anchor/ROI/tier` trong ô JA** | Chủ ý xuyên sách, đúng thực tế 商談 Nhật cho J2-J1. Đừng "làm sạch tiếng Anh". |
| **H1 tiếng Việt của 12 rule** | Bản .md đã Việt hoá là bản ĐÚNG. Lệch với mục lục thì **sửa mục lục**, không sửa H1. |
| **r18 d28 `¥19M`** | Là giá neo lẽ ra phải ra (khớp r05/r09 anchor ¥19M), không phải lỗi. |

---

## Thứ tự sửa đề xuất

| Vòng | Việc | Rủi ro |
|---|---|---|
| 1 | #8 ruby vỡ r29 d36/d37 (⚠️ `sed -n` lấy nguyên văn trước) | thấp |
| 2 | #1 công thức payback r23 d37 (JA + VN) | thấp |
| 2 | #6 biên 14% → 18% r21 d25/d27 (JA + VN) | thấp |
| 3 | #3 ngưỡng rút lui r28 d13 → ¥15M | thấp |
| 3 | #7 nhãn "-11% biên lợi nhuận" r21 d3 | thấp |
| 3 | #2 "ROI 4.4 倍" 4 chỗ + vocab r18 d77 | trung bình — đụng nhiều rule |
| 4 | #4 + #5 khung truyện r28 (nhánh giả định / phân vai với r35) | **cần chủ nhà duyệt** |
| 5 | #9 checklist r19/r20, #10 ladder r09, #11 mạch thời gian | **cần chủ nhà duyệt hướng** |

---

*N3 — phần III (rule_18 → rule_29). 12/12 rule đã rà. Chỉ báo cáo, không sửa file nội dung.*
