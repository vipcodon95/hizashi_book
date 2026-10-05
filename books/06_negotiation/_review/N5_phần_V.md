# N5 — Phần V (rule 40→45) + NHẤT QUÁN TOÀN SÁCH

> Agent N5. Phạm vi: 6 rule phần V + `meta/mục_lục.md` + `_front_matter.md` + `_back_matter.md`.
> Đã đọc trọn `.claude/rules/book-review.md`, `_review/00_TIEN_DO.md`, `meta/STATUS.md`.
> Mọi phép đo đều **strip ruby bằng python** trước khi kết luận (mục 1.1).
> **CHỈ BÁO CÁO — không sửa bất kỳ file nội dung nào.**

---

# PHẦN 1 — 6 RULE CỦA PHẦN V

## Tổng quan

| Rule | Tên | Kết luận |
|---|---|---|
| 40 | 多者間交渉 | 🔴 **1 lỗi nặng** — payback 18 tháng mâu thuẫn toàn sách |
| 41 | オンライン交渉 | ✅ Sạch (1 ghi nhận 🔵) |
| 42 | 通訳介在 | ✅ Sạch về nội dung (1 ghi nhận 🔵) |
| 43 | エスカレーション | 🔴 **1 lỗi tiếng Nhật** + 🟡 cross-ref sai |
| 44 | VN_JP ギャップ | ✅ Sạch — rule tốt nhất phần V |
| 45 | 振り返り | 🟡 Mục `## Mẫu` RỖNG + 🟡 cross-ref sai |

**Không có lỗi keigo nào trong phần V.** Quét `部長様 / 社長様 / お伺いさせて / 申させて / ご質問になられ / おっしゃっておられ` trên 6 file → **0 kết quả**. Cả 3 ca keigo mà main Claude tìm thấy đều nằm ở phần II (r12, r16), không lan sang phần V.

---

## 🔴 N5-01 · rule_40 — Payback 18 tháng MÂU THUẪN với toàn sách (trục D + B)

**File:** `nội_dung/phần_V/rule_40_多者間交渉/rule.md` — **dòng 26** (Hội thoại XẤU) và **dòng 46** (Hội thoại TỐT)

**Nguyên văn d46 (đã strip ruby):**
> 「**最後に中村 CFO の payback**: 御社 GMV インパクト ¥80M / 年に対し、Phase 3 投資 ¥17M、**payback 約 18 ヶ月**【3】、3 年目から純利益 acceleration、**5 年累計 ROI 4.4 倍**を試算しております。」
>
> *Cuối cùng payback của anh Nakamura CFO: GMV impact bên anh ¥80M/năm, đầu tư Phase 3 ¥17M, payback khoảng 18 tháng, từ năm 3 lợi nhuận ròng accelerate, ROI tích lũy 5 năm 4.4 lần.*

**Vấn đề — ba tầng, tầng nào cũng sai:**

**(a) Mâu thuẫn trực tiếp với rule_23 và rule_27.** Sách chỉ có MỘT mô hình ROI, dựng ở rule_23:

| Rule | Payback | Nguồn |
|---|---|---|
| r23 d37 | **2.3 ヶ月** | `¥17.5M ÷ ¥92.1M ≒ 2.3 ヶ月` |
| r27 d36 | **2.3 ヶ月** | nhắc lại r23 |
| **r40 d26, d46** | **18 ヶ月** | ❌ không có nguồn |

r23 và r27 khớp nhau tuyệt đối. r40 đứng một mình, lệch **gần 8 lần**.

**(b) Tự mâu thuẫn ngay trong chính câu đó.** Câu này tự cho đủ dữ kiện để bác chính nó: đầu tư ¥17M, lợi ích ¥80M/năm → payback = 17/80 × 12 = **2.55 tháng**, không phải 18 tháng. Muốn ra 18 tháng thì lợi ích hàng năm phải là ¥11.3M/năm — mâu thuẫn với chính con số ¥80M vừa nêu ở nửa câu trước.

**(c) "5 年累計 ROI 4.4 倍" phá luôn định nghĩa ROI 4.4x của sách.** Toàn sách (r18 d39, r25, r27, r41) dùng ROI 4.4x = **80 ÷ 18 = 4.44** — tức lợi ích GMV một năm chia cho đầu tư, **không** phải tích lũy 5 năm. Nếu tính tích lũy 5 năm như r40 viết thì phải là 400 ÷ 17 ≈ **23.5 lần**, không phải 4.4.

**Vì sao nặng:** Đây đúng loại lỗi sách 05 rule_19 mà `00_TIEN_DO.md` cảnh báo — một rule lệch trục số với phần còn lại, chỉ lộ khi nhìn toàn sách. Nặng hơn ở chỗ rule_40 là **rule dạy cách trả lời CFO**; con số sai nằm ngay trong "câu mẫu chuẩn" mà học viên được bảo là hình mẫu. Học viên học thuộc câu này rồi nói trước CFO thật → bị bắt lỗi số học ngay tại bàn.

**Đề xuất:** sửa r40 d26 và d46 từ `18 ヶ月` → `約 2.3 ヶ月`, và `5 年累計 ROI 4.4 倍` → `ROI 4.4 倍` (bỏ "5 年累計"). ⚠️ Sửa phải chỉnh **cả JA lẫn VN** ở cả 2 dòng (mục 5 — vá JA quên VN). ⚠️ d46 có ruby chen giữa số: dùng `sed -n '46p'` lấy nguyên văn trước khi Edit.

---

## 🔴 N5-02 · rule_43 — `決裁 down ません` không phải tiếng Nhật (trục C)

**File:** `nội_dung/phần_V/rule_43_エスカレーション/rule.md` — **dòng 23 VÀ dòng 38** (lặp y hệt ở cả hội thoại XẤU và TỐT)

**Nguyên văn (còn ruby, lấy bằng `sed -n '23p'`):**
> `「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>じゃないと<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>決裁<rt>けっさい</rt></ruby> down ません。<ruby>今<rt>いま</rt></ruby>ここで<ruby>決<rt>き</rt></ruby>めてください。」`
>
> *Indemnity không unlimited thì bên tôi không duyệt được. Bây giờ anh quyết đi.*

**Vấn đề:** `down ません` là cấu trúc **không tồn tại**. `ません` là đuôi phủ định của động từ tiếng Nhật; không thể gắn trực tiếp vào từ tiếng Anh `down`. Muốn dùng từ ngoại lai phải qua `する`: `ダウンしません`. Nhưng ngay cả `決裁がダウンする` cũng không phải tiếng Nhật thương mại — 決裁 là thứ **下りる** (được ban xuống). Câu đúng: **「決裁が下りません」**.

Suy đoán nguồn gốc: ai đó viết `決裁 下りません` rồi `下り` bị dịch nhầm/thay nhầm thành `down` (下る ↔ "down"). Dấu vết còn nguyên trong bản Việt — "không duyệt được" chính là nghĩa của 下りません.

**Vì sao nặng:** đây là lời của **中村 CFO** — nhân vật Nhật cấp cao nhất sách. Người học đọc bảng này để học cách CFO Nhật nói. Lỗi nằm ở cả hội thoại XẤU lẫn TỐT, mà hai khối đó chỉ khác nhau ở cách Dũng *phản ứng* — câu của CFO đáng lẽ phải là tiếng Nhật chuẩn ở cả hai. Bản Việt đã đúng sẵn nên đây là ca sửa JA đơn thuần.

**Đề xuất:** `決裁 down ません` → `決裁が下りません` ở **cả d23 và d38**. Bản Việt giữ nguyên (đã đúng).

---

## 🟡 N5-03 · rule_45 — Mục `## Mẫu` RỖNG, sách bị cắt cụt (trục F)

**File:** `nội_dung/phần_V/rule_45_振り返り/rule.md` — **dòng 92–93 (cuối file)**

**Nguyên văn:**
```
90: ---
91:
92: ## Mẫu
93:
```
File hết ở đây. Tiêu đề `## Mẫu` có, nội dung **không có gì**.

**Đối chiếu 3 rule khác có cùng mục này** — tất cả đều có nội dung:

| Rule | Nội dung sau `## Mẫu` |
|---|---|
| r31 | `(Mẫu mail tóm tắt JP/VN với 5 phần — xem hướng dẫn đính kèm cuốn sách)` |
| r32 | `(Mẫu LOI 1-2 trang JP/VN với 6 phần điều khoản thương mại — …)` |
| r38 | `(Mẫu thông cáo báo chí JP với các phần Tiêu đề / Dẫn nhập / …)` |
| **r45** | **(rỗng)** ❌ |

**Vấn đề:** `meta/mục_lục.md` dòng 110 hứa rõ với rule 45: `[TEMPLATE: checklist]`. Sách hứa mà không giao. Rule 45 lại là **rule CUỐI CÙNG của cả quyển** — trang cuối học viên đọc là một tiêu đề trống, ấn tượng "sách chưa làm xong".

**Đề xuất:** thêm 1 dòng mô tả theo đúng khuôn 3 rule kia, ví dụ: `(Mẫu bảng nhìn lại 5 phần: Hiệu quả / Chưa tốt / Giả định ngược / Xu hướng / Cam kết lần sau — xem hướng dẫn đính kèm cuốn sách)`. Hoặc bỏ hẳn tiêu đề `## Mẫu` nếu không định giao mẫu — nhưng khi đó phải gỡ `[TEMPLATE: checklist]` ở mục lục cho khớp.

---

## 🟡 N5-04 · rule_42, rule_43, rule_45, rule_41 — 4 cross-ref LIÊN SÁCH trỏ sai đích (trục F)

⚠️ Đã áp dụng mục 1.6 — giữ đủ tiền tố `sách 0X` khi quét, không lặp lại ca báo động sai của sách 03. Tôi đã mở tận nơi từng sách đích để đối chiếu H1.

| Nguồn | Cross-ref khai | Đích THẬT trong sách đó | Phán định |
|---|---|---|---|
| r42 d7 | `sách 04 rule 17 (escalation)` | sách 04 r17 = **緊急連絡の優先順位** (liên lạc khẩn cấp) | ❌ SAI. Rule escalation của sách 04 là **rule 32** (クレームのエスカレーション) |
| r43 d7 | `sách 04 rule 17 (mô hình leo thang)` | như trên | ❌ SAI — cùng lỗi, cùng nên trỏ **sách 04 rule 32** |
| r45 d7 | `sách 04 rule 45 (vòng cải tiến)` | **sách 04 chỉ có 40 rule** — rule 45 KHÔNG TỒN TẠI | ❌ SAI. Đích đúng gần như chắc chắn là **sách 04 rule 40 — 振り返り** |
| r41 d7 | `sách 03 rule 17 (online MTG)` | sách 03 r17 = **遅れて入室する場合** (vào họp muộn) | ❌ SAI. Online MTG của sách 03 là **rule 04** (オンライン会議のセットアップ) hoặc **rule 33** (オンライン会議のマナー) |

**Cách tôi kiểm:** `find` đếm rule mỗi sách (sách 03 = 50, sách 04 = 40), rồi `head -1` từng `rule.md` đích để đọc H1 thật.

**Vì sao đáng sửa:** cross-ref là lời hứa điều hướng. Người học lật sang sách 04 rule 17 mong thấy escalation, gặp "liên lạc khẩn cấp" → mất lòng tin vào toàn bộ hệ thống tham chiếu. Riêng `sách 04 rule 45` là ca nặng nhất: **trỏ tới rule không tồn tại**.

**Đề xuất:** r42/r43 → `sách 04 rule 32`; r45 → `sách 04 rule 40`; r41 → `sách 03 rule 33`. Nên để main Claude xác nhận đích trước khi sửa.

**Ghi nhận cân bằng:** 41 dòng `**Liên quan:**` còn lại (cross-ref **trong cùng sách 06**) tôi đã đối chiếu toàn bộ với H1 thật của rule đích — **100% đúng**. Lỗi chỉ tập trung ở nhóm liên sách.

---

## 🔵 N5-05 · rule_41 — Số giây im lặng: nhất quán, KHÔNG phải lỗi

Ghi lại để **chống sửa nhầm** ở đợt sau. rule_41 có nhiều con số giây trông như đá nhau nhưng thực ra đúng:

- Luận điểm d3: "7 giây trực tiếp = 4 giây trực tuyến"
- Bối cảnh d13: "Bình thường trực tiếp im lặng 7 giây" — khớp **rule_25** (`Offer 後 7 秒沈黙`) ✅
- Hội thoại XẤU d23: im lặng 7 giây → hỏng (đúng ý đồ, đây là hội thoại XẤU)
- Hội thoại TỐT d46: im lặng 4 giây → thành công ✅
- Ghi chú 【2】 d57: "Quá 5 giây sẽ bị hiểu nhầm là độ trễ mạng" — nhất quán: 4 < 5 < 7

Một điểm **hơi lệch nhưng không sai**: mục Tránh d77 viết `「聞こえてますか?」 ở giây thứ 2` trong khi hội thoại XẤU d25 để ông Ōgaki cắt ngang ở **giây thứ 4** (`4 秒目`). "Giây thứ 2" ở mục Tránh nên hiểu là nói khái quát "cắt quá sớm", không phải mốc cứng. 🔵 Không đề xuất sửa.

---

## 🔵 N5-06 · rule_42 — Nội dung dạy ĐÚNG, ghi nhận 1 điểm tinh tế

rule_42 dạy phát âm tách `99.95% = きゅうきゅう・きゅうご` để tránh nhầm với 99.5%. Kiểm chứng: đây là kỹ thuật **có thật** và đúng trong phiên dịch thương mại — chuỗi số dài dễ mất một âm tiết khi truyền qua người thứ ba, và 99.5 vs 99.95 chênh nhau đúng mức SLA gây tranh chấp tiền thật. Ghi chú 【2】 giải thích "3 と 5 / 9 と 4 は Vietnamese で類似音" — hợp lý với tiếng Việt ("ba/năm" thì không, nhưng "chín/năm" trong chuỗi đọc nhanh thì có).

Bản Việt d48 viết `chín-chín-chín-năm` (4 cụm) trong khi bản Nhật d47 viết `きゅうきゅう・きゅうご` (2 cụm, dấu ・ ngăn đôi). Khác nhau về hình thức trình bày nhưng **cùng đọc ra 99.95** → không phải lỗi nghĩa. 🔵 Không đề xuất sửa.

**rule_44 — sạch hoàn toàn.** Nội dung đàm phán liên văn hóa chính xác: "JP 高い ≠ giảm giá", hiệu ứng bánh cóc (ratchet), nhượng bộ có qua có lại, 4 lớp diễn giải chữ 「高い」. Không tìm thấy lỗi nào ở cả 6 trục A–F. Đây là rule chất lượng cao nhất phần V.

---

# PHẦN 2 — NHẤT QUÁN TOÀN SÁCH

## 🎯 NHIỆM VỤ 1 — TRỤC GIÁ XUYÊN SÁCH

### Phép đo

`find` ra đúng **45 file `rule.md`** (mục 1.2 — không đếm thư mục). Strip ruby rồi quét regex `¥[\d,\.]+\s?[MK万億]?円?`:

- **50 giá trị tiền riêng biệt**, **522 lần xuất hiện**
- ¥18M: 97 lần / **19 rule** · ¥17M: 84 lần / **20 rule** · ¥15M: 61 lần / **13 rule**

→ Khớp gần như tuyệt đối với thước đo main Claude (¥17M 21 rule, ¥18M 19, ¥15M 14; lệch 1 rule do main Claude có thể đếm cả biến thể `¥17.5M`). **Tôi xác nhận thước đo của main Claude là đáng tin.**

### Bảng trục giá — vai của từng con số

Sách dựng **một câu chuyện đàm phán duy nhất**: Tiên Phát bán Phase 3 cho 白鷗. Trục giá như sau:

| Giá | Vai | Rule đặt ra | Rule dùng lại | Nhất quán? |
|---|---|---|---|---|
| **¥22M** | Giá đối thủ Y社 (mốc so sánh trên) | r04 d36 | r05, r06, r45 | ✅ |
| **¥19M** | **Giá chào / anchor xuất phát** | r05 d35, r07 d44 | r09, r10, r12, r18 | ✅ |
| **¥18M** | **Giá mục tiêu (target)** | r02 d21, d34 | 19 rule | ✅ |
| **¥17M** | Trần ngân sách khách (ZOPA ceiling) → sau thành **giá chốt** | r02 d34 (trần), r24 d39 (chốt) | 20 rule | ✅ |
| **¥16.5M** | Điểm hạ cánh dự kiến | r01 d40, r02 d37, r05 d35 | r01, r02, r05 | ✅ |
| **¥15M** | **Giá bảo lưu / điểm rút lui (reservation)** | r02 d34, r08 d36 | 13 rule | ⚠️ xem dưới |
| **¥14M** | Giá khách ép — **dưới ngưỡng rút lui** → sách cho rút | r28 d23, r35 d23 | r06, r09, r18 | ✅ |
| **¥80M** | GMV impact/năm của khách (mẫu số ROI) | r12 d38 | r05, r06, r18, r27, r40 | ✅ |

**Chuỗi nhượng bộ ở r09 d35 và r07 d44 khớp nhau từng bậc** — đây là xương sống của sách và nó lành lặn:

```
¥19M anchor → ¥18M target → ¥17.5M ⇄ hợp đồng 2 năm → ¥17M ⇄ scope -10%
→ ¥16M ⇄ scope -20% → ¥15M ⇄ scope -30% (cuối) → dưới ¥15M = RÚT
```

### ✅ Kết luận nhiệm vụ 1: trục giá KHÔNG có lỗi kiểu sách 05

Tôi đã đi tìm đúng lỗi kiểu `rule_19` sách 05 (một rule dùng trục giá khác hẳn) và **không tìm thấy**. 45 rule chia sẻ chung một trục. Đây là điểm mạnh thật sự của sách 06 và **cần được ghi nhận, không phải bịa lỗi cho đủ số** (mục 0 nguyên tắc 4).

### 🟡 N5-07 · Một chỗ trục giá đáng lưu ý: ¥15M vs ¥15.5M

**Không phải lỗi**, nhưng cần ghi để đợt sau khỏi "sửa cho thống nhất" rồi phá mất chủ ý.

| Rule | Ngưỡng rút lui | Bối cảnh |
|---|---|---|
| r01, r02, r05, r07, r08, r09, r43 | **¥15M** | Ngưỡng gốc, phạm vi đã cắt -30% |
| **r26 d43** | **¥15.5M** | Hà CTO công bố: `Phase 2 同等のスコープであれば、弊社 walk-away ライン ¥15.5M` |
| r28 d13, r35 d44 | **¥15.5M** | kế thừa từ r26 |

**Phán định: NHẤT QUÁN CÓ ĐIỀU KIỆN, không mâu thuẫn.** r26 nói rõ điều kiện: ¥15M chỉ chấp nhận được **khi cắt scope -30%**; còn **giữ nguyên scope tương đương Phase 2** thì sàn là ¥15.5M. Hai con số gắn hai mức phạm vi khác nhau — giống hệt ca `5月末 納期 vs 7月末 リリース` của sách 03 (mục 3) mà agent đã báo nhầm là mâu thuẫn.

⚠️ **Cảnh báo cho main Claude:** nếu agent nào báo "r26/r28/r35 lệch trục ¥15M" → đó là **báo động sai**, đừng sửa. Xem mục CẤM SỬA.

---

## 🎯 NHIỆM VỤ 2 — MỤC LỤC vs H1

### Kiểm ĐỘC LẬP

Script riêng: parse cột `Tên VN` / `Tên JP` từ `meta/mục_lục.md`, parse H1 từ 45 `rule.md` (strip ruby, bỏ tiền tố `Rule NN — `, tách theo `/`).

**Kết quả: VN lệch 37/45, JP lệch 3/45 — trùng KHÍT với main Claude.**

### 🔵 Nhưng "JP lệch 3" là ẢO — thực tế JP khớp 45/45

3 ca JP lệch đều là **lỗi script của chính tôi**, không phải lỗi sách. Nguyên nhân: tôi tách H1 theo `/`, mà 3 rule này có dấu `/` **nằm trong phần tên tiếng Việt**:

| Rule | H1 thật | Vì sao script hiểu nhầm |
|---|---|---|
| 06 | `Đề xuất 3 bậc: Good / Better / Best / 3段階提案` | `/` trong "Good / Better / Best" |
| 22 | `Gộp gói / tách mục định giá / バンドリング・アンバンドリング` | `/` trong "Gộp gói / tách mục" |
| 26 | `Đối phó với threat / ultimatum / 脅し・最終通告への対応` | `/` trong "threat / ultimatum" |

→ **Cột JP của mục lục khớp H1 tuyệt đối 45/45.** Ghi rõ ở đây để main Claude **không đi sửa 3 ca này** (đúng tinh thần mục 3 — tự chặn phóng đại).

### Phân loại 37 ca VN lệch

Câu hỏi đề bài: lỗi THẬT (mục lục chưa Việt hoá) hay **rút gọn có chủ ý**? Trả lời: **áp đảo là lỗi THẬT**, nhưng không phải toàn bộ.

**Nhóm A — Mục lục CHƯA VIỆT HOÁ (lỗi thật) — 24/37 ca.**
Mục lục để nguyên tiếng Anh, H1 đã Việt hoá đầy đủ:

| # | Mục lục (chưa dịch) | H1 (đã dịch) |
|---|---|---|
| 06 | `3-tier proposal` | Đề xuất 3 bậc: Good / Better / Best |
| 08 | `Walk-away point` | Điểm rút lui |
| 09 | `Concession plan` | Kế hoạch nhượng bộ |
| 11 | `Set context + agenda` | Thiết lập bối cảnh + chương trình |
| 13 | `Listen for hidden constraints` | Lắng nghe ràng buộc ẩn |
| 14 | `Mirror + summarize` | Phản chiếu + tóm tắt |
| 15 | `Probe price sensitivity` | Thăm dò mức độ nhạy cảm giá |
| 16 | `Confirm decision authority` | Xác nhận người có quyền quyết định |
| 17 | `Time-box discussion` | Phân bổ thời gian thảo luận |
| 18 | `Anchor price first hay wait?` | Neo giá trước hay chờ? |
| 22 | `Bundle / unbundle pricing` | Gộp gói / tách mục định giá |
| 24 | `Trade concession (tit-for-tat)` | Đổi nhượng bộ (ngang giá) |
| 25 | `Silence as tool` | Im lặng như vũ khí |
| 29 | `Nibble & late demand handling` | Xử lý yêu cầu nhỏ sau chốt |
| 31 | `Summarize + recap email` | Mail tóm tắt xác nhận |
| 33 | `Final negotiation on terms` | Đàm phán cuối về điều khoản |
| 34 | `Mời ký formal` | Yêu cầu ký kết trang trọng |
| 36 | `Post-deal celebration đúng mức` | Chào hỏi sau ký kết (điềm tĩnh) |
| 37 | `Internal kickoff sau ký` | Bàn giao nội bộ khởi động dự án |
| 38 | `Public announcement` | Thông cáo báo chí cần duyệt chung |
| 39 | `Stakeholder thank-you` | Cảm ơn toàn bộ chuỗi liên quan |
| 41 | `Online negotiation tactics` | Chiến thuật đàm phán trực tuyến |
| 42 | `Translator-mediated` | Đàm phán qua phiên dịch |
| 43 | `When to escalate senior` | Các tình huống cần leo thang |
| 44 | `VN vs JP negotiation gap` | Khoảng cách phong cách đàm phán VN-JP |
| 45 | `Self-review + iteration` | Nhìn lại và cải thiện sau đàm phán |

Vi phạm rõ quy ước `feedback_vietnamese_labels` (mọi label/text hướng tới người đọc phải là tiếng Việt có dấu). Đáng chú ý: nhiều ca là **tiếng Việt lai** (`Mời ký formal`, `Internal kickoff sau ký`, `Post-deal celebration đúng mức`) — chứng tỏ mục lục là bản nháp Việt hoá dở dang, không phải bản rút gọn có chủ ý.

**Nhóm B — Khác biệt chỉ ở dấu câu / rút gọn nhẹ, CÙNG nghĩa — 5 ca.** 🔵 Ưu tiên thấp:

| # | Mục lục | H1 | Khác |
|---|---|---|---|
| 01 | `BATNA — phương án thay thế tốt nhất` | `BATNA: Phương án thay thế tốt nhất` | `—` vs `:` |
| 02 | `ZOPA — vùng có thể thỏa thuận` | `ZOPA: Vùng có thể thỏa thuận` | như trên |
| 04 | `Thu thập intel khách` | `Thu thập thông tin khách` | `intel` → `thông tin` |
| 05 | `Định giá strategy` | `Chiến lược định giá` | lai → thuần Việt |
| 20 | `Đối phó với "高い" (giá cao)` | `Đối phó với "高い"` | mục lục **đầy đủ hơn** H1 |

Ca 20 đáng chú ý: mục lục có chú giải `(giá cao)` mà H1 không có — nếu "thống nhất" bằng cách bê H1 sang mục lục thì **mất chú giải**, người đọc mục lục gặp kanji trần.

**Nhóm C — Rút gọn có chủ ý (mục lục ngắn, H1 đủ) — 6 ca.** Ranh giới mờ, nhưng có lý do giữ:

| # | Mục lục | H1 |
|---|---|---|
| 03 | `Hiểu 稟議 (ringi) decision style` | `Hiểu phong cách quyết định ringi (稟議)` |
| 07 | `Pre-meeting alignment nội bộ` | `Thống nhất nội bộ trước đàm phán` |
| 12 | `Đặt câu hỏi discovery` | `Câu hỏi tìm hiểu nhu cầu: 5 nhóm` |
| 26 | `Đối phó với threat / ultimatum` | `Đối phó với threat / ultimatum` (thực chất KHỚP) |
| 32 | `Hợp đồng draft + LOI` | `LOI trước, soạn hợp đồng sau` |
| 35 | `Hủy bỏ tinh tế nếu fail` | `Rút lui đàm phán phong nhã` |

H1 của r12 (`: 5 nhóm`) và r32 (`LOI trước, soạn hợp đồng sau`) mang thêm thông tin cấu trúc — hợp lý khi mục lục ngắn hơn.

### Kết luận nhiệm vụ 2

**Không nên kết luận vội "37 lỗi".** Phân loại đúng: **~26 ca là lỗi thật cần Việt hoá mục lục** (nhóm A), **~5 ca khác biệt vụn** (nhóm B), **~6 ca rút gọn chấp nhận được** (nhóm C). Hướng sửa đúng: **Việt hoá cột `Tên VN` của mục lục theo H1**, không phải sửa H1 theo mục lục — vì H1 mới là bản đã qua review Việt hoá (STATUS v1.1 ghi nhận "VN review"), mục lục v1 ngày 2026-04-25 là bản cũ hơn chưa được cập nhật theo.

---

## 🎯 NHIỆM VỤ 3 — KẾT LUẬN VỀ CÁCH VIẾT `¥18M`

### Phán định: **QUY ƯỚC CÓ CHỦ Ý → CẤM SỬA**, nhưng có MỘT ngoại lệ thật cần vá.

### Căn cứ

**(1) Nhất quán tuyệt đối, 522/522 lần.** Quét toàn sách: **không có một lần nào** dùng `1,800万円` hay `1800万円` cho các con số thương vụ. Lỗi văn phong lai thường lởm chởm (chỗ này `万円`, chỗ kia `M`); ở đây sạch tuyệt đối trên 45 file — dấu hiệu điển hình của quy ước được áp có ý thức.

**(2) Bằng chứng quyết định: sách BIẾT `万円` và dùng đúng chỗ.** rule_38 (thông cáo báo chí) dùng `数千万円規模` — đúng 4 lần, kể cả trong bảng từ vựng (`数千万円規模 / すうせんまんえんきぼ`). Tức tác giả **nắm vững** cách viết Nhật chuẩn và chủ động chọn nó cho văn bản PR đối ngoại, còn `¥18M` cho bảng đàm phán nội bộ. Đây là **phân vai có ý thức**, không phải thiếu hiểu biết.

**(3) Bối cảnh tác phẩm hợp lý.** Sách viết cho **BD người Việt tại công ty Việt (Tiên Phát)** làm việc với khách Nhật. Ký hiệu `¥18M` xuất hiện trong: bảng ZOPA, chuỗi nhượng bộ, Slack nội bộ, kịch bản BATNA — đều là **công cụ làm việc nội bộ**, nơi ký hiệu gọn ưu tiên hơn văn phong bản địa. Trong ngành IT/SIer làm việc xuyên biên giới, ký hiệu `M` cho triệu là phổ biến trong tài liệu nội bộ.

**(4) Lợi ích sư phạm.** Với 522 lần xuất hiện và nhiều bảng so sánh dày đặc, `¥17.5M` gọn hơn hẳn `1,750万円`; cột bảng không vỡ, người học so sánh trục giá nhanh hơn.

**(5) WebSearch xác nhận** `万円` / `千円` là đơn vị chuẩn trong chứng từ Nhật (見積書, 請求書, 契約書) — nhưng đó là chuẩn cho **chứng từ chính thức**, và sách đã tuân thủ đúng ở chỗ cần (rule_38 PR). Không có xung đột.

### ⚠️ Ngoại lệ DUY NHẤT cần vá — `¥20M` bị đọc thành lời

**File:** `nội_dung/phần_V/rule_42_通訳介在/rule.md` — **d24, d26, d45, d46**

Quy ước `¥20M` là ký hiệu **để nhìn**. Nhưng rule_42 là rule về **phiên dịch nói**, và ở đây con số bị đưa vào miệng nhân vật:

- d45 (JA, Dũng nói): `「indemnity 上限は 年契約額相当の ¥20M。」`
- d46 (VN, Linh dịch): `「Indemnity (損害賠償上限) đặt ở mức annual ¥20M.」`
- d26 (VN, Linh dịch): `「Indemnity 20 triệu yên, …」` ← **chỗ này đã tự chuyển sang lời nói**

Mâu thuẫn nội bộ: cùng một con số, d26 đọc là "20 triệu yên" còn d46 giữ ký hiệu `¥20M`. Trớ trêu hơn — **rule_42 là rule dạy phát âm số cho chuẩn** (`99.95% = きゅうきゅう・きゅうご`), mà chính nó lại để một con số ở dạng không đọc được. Người Nhật nói câu d45 sẽ phải phát ra `にせんまんえん` (2,000万円), không ai đọc "にじゅうエム".

🟡 **Đề xuất:** ở riêng rule_42, cân nhắc đổi `¥20M` trong **lời thoại nói** thành `2,000万円` (JA) / `20 triệu yên` (VN) cho khớp d26. Chỉ trong phạm vi lời nói của rule_42 — **không đụng 45 rule còn lại**.

---

## 🎯 NHIỆM VỤ 4 — NHẤT QUÁN KHÁC

### 4.1 ✅ Tên sách — khớp 4/4

| Nguồn | Tên |
|---|---|
| `meta/mục_lục.md` d1 | Hizashi Sách 06 — **Đàm phán·Đề xuất / 商談・交渉** |
| `_front_matter.md` d1 | Hizashi — **Đàm phán·Đề xuất / 商談・交渉** |
| `_back_matter.md` d16 | Hizashi — **Đàm phán·Đề xuất / 商談・交渉** |
| `meta/STATUS.md` d1 | Hizashi Sách 06 — **Đàm phán·Đề xuất / 商談・交渉** |

Nhất quán cả dấu `·` lẫn thứ tự. Phiên bản cũng khớp: STATUS `1.1` = back matter `1.1`. Không có dấu vết kế thừa khung sách khác (khác hẳn ca sách 03 ở mục 1.4).

### 4.2 Front matter — có hứa thứ sách không có không?

**Phần lớn ĐÚNG.** Kiểm từng lời hứa:

| Lời hứa | Thực tế | ✓ |
|---|---|---|
| "45 quy tắc" | `find` = đúng 45 `rule.md` | ✅ |
| Cấu trúc 5 phần 9/8/12/10/6 | Khớp thư mục | ✅ |
| BATNA/ZOPA, 稟議, im lặng, nhượng bộ có qua có lại | r01, r02, r03, r25, r24 — có đủ | ✅ |
| "**Em Linh** — học cách làm việc qua phiên dịch (rule 42)" | rule_42 đúng là Linh phiên dịch | ✅ |
| 大垣 "xuyên suốt phần lớn quyển sách" | Xuất hiện rải khắp 5 phần | ✅ |
| 中村 "tham gia các vòng định giá cuối" | r23, r28, r40, r43 | ✅ |

**🟡 N5-08 — một lời hứa LỆCH, ở mục lục (không phải front matter):**

`meta/mục_lục.md` d18: `Hương 副部長 mentor đàm phán + **final approval ¥18M+**`

Kiểm thực tế: Hương **không hề** là người duyệt cuối cho mức ¥18M+. Sách nhất quán cho thấy:
- r01 d40, r08 d38: các mốc lớn đều `ハー CTO 承認済` — **Hà CTO duyệt**
- r08 d5: `CTO+Hương の事前承認が必須` — hai người **cùng** duyệt
- r43: khi vượt thẩm quyền, Dũng escalate lên **Hà CTO**, không phải Hương

→ Mô tả "final approval ¥18M+" gán sai vai. Đúng hơn: "mentor đàm phán + đồng duyệt cùng Hà CTO". 🟡 Ưu tiên trung bình — chỉ ở mục lục, không lan vào rule.

**🔵 Ghi nhận nhỏ:** `_front_matter.md` d5 ghi "cho người Việt làm với **khách hàng**" và d9 "đàm phán hợp đồng với **khách hàng**" — mất chữ "Nhật" mà mục lục d7 có ("đàm phán hợp đồng với **khách Nhật**"). Sách hoàn toàn về khách Nhật. Không sai, nhưng front matter mô tả nhạt hơn thực tế.

### 4.3 ✅ Thuật ngữ — nhất quán

| Thuật ngữ | Phán định |
|---|---|
| **BATNA** | Giữ nguyên viết hoa toàn sách. Chú giải nhất quán: `phương án thay thế` (r01, r42 d39). ✅ Không cần Việt hoá (đề bài xác nhận) |
| **ZOPA** | Nhất quán. `vùng có thể thỏa thuận` / `合意可能領域` ✅ |
| **LOI** | Nhất quán r32, r45 ✅ |
| **稟議** | Luôn kèm chú `(ringi)` ở lần đầu, VN dùng "quy trình duyệt nội bộ" ✅ |
| **決裁者** | VN chủ yếu `Người quyết định`; r16 bảng từ vựng ghi `Người duyệt`. 🔵 Biến thể nhẹ, cùng nghĩa, chấp nhận được |
| **walk-away** | `điểm rút lui` 24 lần (áp đảo), `giới hạn rút lui` 7, `ngưỡng rút lui` 4. 🔵 Đồng nghĩa, không gây hiểu nhầm |

Không có ca nào dùng hai cách gọi **đá nhau về nghĩa**.

### 4.4 🟡 N5-09 · PHÁT HIỆN VẮT QUA NHIỀU PHẦN — tiếng Việt lọt vào ô tiếng Nhật

Đây là thứ **chỉ lộ ra khi nhìn toàn sách** (mục 6). Tôi phát hiện khi rà phần V, nhưng kiểm rộng ra thì thấy **nó không phải đặc sản phần V**:

**Hiện tượng:** trong ô tiếng Nhật `「...」`, nhiều từ khoá bị thay bằng tiếng Việt có dấu.

**Quy mô thật (đã strip ruby, quét cả 45 rule):**

- **Câu chốt:** 15/46 câu chốt trộn tiếng Việt vào trong `「」` — rải **cả 5 phần** (r19, 20, 22, 25, 26, 28, 29, 30, 37, 38, **41, 42, 43, 44, 45**)
- **Lời thoại nói với khách Nhật:** ~24 dòng, rải **từ r18 đến r45** — ví dụ r18 d38 `ご検討の tài liệu としてお持ちしました`, r23 d36 `**Đầu tư**: ¥17.5M。**Lợi tức hàng năm**:…`, r43 d45 `giới hạn bồi thường ¥20M`

**Phán định — phải tách làm hai, ĐỪNG gộp:**

**(a) Trong Câu chốt / Slack nội bộ → CHẤP NHẬN ĐƯỢC 🔵.** Câu chốt là khẩu quyết cho **người học Việt**, trộn song ngữ giúp nhớ. Slack giữa Dũng–Hương–Tuấn–Hà là **người Việt nói với nhau**, lẫn lộn Việt–Nhật–Anh là thực tế công sở đúng. Đây rõ ràng là văn phong có chủ ý của sách, áp đều 5 phần.

**(b) Trong lời thoại NÓI VỚI KHÁCH NHẬT → đáng xem lại 🟡.** Ví dụ r43 d45, Hà CTO nói với 中村 CFO:
> `「中村様、ハーでございます。giới hạn bồi thường ¥20M (年契約額) は弊社取締役会規定上の上限。これを超えるご提案は弊社で cam kết 不可です。」`

中村 CFO **không biết tiếng Việt**. Câu này người Nhật nghe không hiểu. Học viên học thuộc mẫu này rồi bê nguyên vào phòng đàm phán sẽ nói ra câu khách không hiểu — đúng trục A (dạy làm sai việc thật). Cùng dạng: r23 d36 `**Đầu tư**: ¥17.5M。**Lợi tức hàng năm**:…` nói trước CFO.

⚠️ **Không tự sửa và không kết luận thay chủ nhà.** Đây **rất có thể là quy ước sư phạm** (đánh dấu khung để người học nhận ra cấu trúc, giống cách sách dùng `【1】`). Nhưng quy mô 24 dòng vắt 4 phần khiến nó **vượt thẩm quyền một agent phần V** — cần chủ nhà chốt một lần cho toàn sách. Nếu là chủ ý → ghi vào CẤM SỬA để đợt sau khỏi "vá" lẻ tẻ.

📌 **Đây chính là ca mục 6:** mỗi agent chỉ thấy phần mình sẽ báo "phần tôi có N dòng lỗi" và main Claude dễ sửa lẻ; thực tế là **một quyết định văn phong xuyên sách**.

### 4.5 🔵 Ngoài phạm vi — ghi nhận, KHÔNG sửa

- `nội_dung/phụ_lục/` là **file sinh tự động** (mục 1.4) → tôi **không mở để soi lỗi và không đề xuất sửa**. Mục lục d114-119 hứa 4 phụ lục A/B/C/D; việc đối chiếu thuộc đợt khác.
- `conversation.json` (45 file): **không đụng** theo phạm vi.
- ⚠️ Nếu main Claude sửa `rule.md`, nhớ mục 5: `conversation.json` sẽ **lệch** với `.md`. Pipeline chỉ đọc `.md` nên không vỡ build, nhưng cần biết là hai nguồn đã rẽ nhánh.

---

# TỔNG HỢP PHÁT HIỆN

| Mã | Mức | Vị trí | Vấn đề |
|---|---|---|---|
| N5-01 | 🔴 | r40 d26, d46 | Payback 18 tháng vs 2.3 tháng toàn sách; "5年累計 ROI 4.4倍" sai định nghĩa |
| N5-02 | 🔴 | r43 d23, d38 | `決裁 down ません` không phải tiếng Nhật → `決裁が下りません` |
| N5-03 | 🟡 | r45 d92 | Mục `## Mẫu` rỗng, mục lục hứa `[TEMPLATE: checklist]` |
| N5-04 | 🟡 | r41, r42, r43, r45 d7 | 4 cross-ref liên sách sai đích (1 ca trỏ rule không tồn tại) |
| N5-07 | 🔵 | r26, r28, r35 | ¥15.5M — **KHÔNG phải lỗi**, có điều kiện scope |
| N5-08 | 🟡 | mục_lục d18 | "Hương final approval ¥18M+" — sai vai, thực tế Hà CTO duyệt |
| N5-09 | 🟡 | r18→r45, 5 phần | Tiếng Việt trong ô JA nói với khách Nhật — cần chủ nhà chốt toàn sách |
| — | 🟡 | mục lục 26 ca | Cột `Tên VN` chưa Việt hoá (nhóm A nhiệm vụ 2) |
| — | 🟡 | r42 d45, d46 | `¥20M` trong lời NÓI, lệch với d26 "20 triệu yên" |

**Phần V có 2 lỗi 🔴, không có lỗi keigo.** rule_44 sạch hoàn toàn; rule_41 và rule_42 sạch về nội dung dạy học.

---

# ⛔ CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

1. **`¥18M` / `¥17.5M` — quy ước ký hiệu của sách.** 522 lần, nhất quán tuyệt đối, có chủ ý (nhiệm vụ 3). **KHÔNG đổi hàng loạt sang `1,800万円`.** Ngoại lệ duy nhất được nêu là lời NÓI trong r42.

2. **`数千万円規模` ở rule_38 (d3, d5, d33, d39, d41, d43, d56, d78).** ĐÚNG — đây là chỗ sách cố tình dùng cách viết Nhật chuẩn cho PR đối ngoại. Đừng "thống nhất" nó thành `¥M`.

3. **`¥15.5M` ở r26 d43, r28 d13, r35 d44.** KHÔNG mâu thuẫn với ngưỡng ¥15M — hai mức phạm vi khác nhau (scope Phase 2 nguyên vẹn vs scope -30%). Xem N5-07.

4. **Cột `Tên JP` của mục lục — khớp H1 45/45.** "JP lệch 3/45" là **ảo do script tách dấu `/`** (r06, r22, r26). **Đừng sửa 3 rule này.**

5. **Mục lục r20 `Đối phó với "高い" (giá cao)`.** Mục lục **đầy đủ hơn** H1 nhờ chú giải `(giá cao)`. Nếu đồng bộ theo H1 sẽ **mất** chú giải.

6. **Số giây im lặng rule_41: 7 giây (trực tiếp) vs 4 giây (trực tuyến).** ĐÚNG và có chủ ý, khớp rule_25 (`7 秒沈黙`). Đừng "thống nhất" hai con số này về một.

7. **`99.95%` vs `99.5%` ở rule_42.** Chênh lệch này là **chủ đề của rule** (dạy tránh dịch nhầm), không phải lỗi số liệu. Tuyệt đối đừng "sửa cho khớp".

8. **`BATNA`, `ZOPA`, `LOI`** — giữ nguyên tiếng Anh viết hoa, KHÔNG Việt hoá.

9. **Tiếng Việt trong Câu chốt và trong Slack nội bộ** (15 câu chốt + toàn bộ Slack, 5 phần). Văn phong có chủ ý — chờ chủ nhà chốt, đừng vá lẻ. Xem N5-09(a).

10. **Trục giá chính `¥19M → ¥18M → ¥17M → ¥15M`** và chuỗi nhượng bộ r07 d44 / r09 d35. Đã kiểm 45 rule: **nhất quán, không có lỗi kiểu sách 05.** Đừng "chuẩn hoá" thêm.

---

*N5 — Phần V + Nhất quán toàn sách. Chỉ báo cáo, không sửa file nội dung.*
