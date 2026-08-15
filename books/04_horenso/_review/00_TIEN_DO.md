# Sách 04 Hô-Ren-Sô / 報連相 — Bảng điều khiển rà soát

> **Nguồn sự thật** về tiến độ. Áp dụng `.claude/rules/book-review.md`. Ngày: 2026-08-15

## ⛔ PHẠM VI (theo rule — mục đầu file)
**CHỈ review NỘI DUNG trong các file `.md`.**
KHÔNG đụng `conversation.json`, KHÔNG đụng script build, KHÔNG sửa phụ lục (file sinh tự động).
Lỗi ngoài phạm vi → **ghi vào báo cáo, không tự sửa**.

## Quy mô (đã đếm `rule.md`, KHÔNG đếm thư mục — rule mục 1.2)
- **40 rule**: phần_I 12, phần_II 9, phần_III 9, phần_IV 6, phần_V 4
- ~3.630 dòng (~91 dòng/rule) · **không có thư mục rác**
- 4 phụ lục (A/B/C/D) — chỉ báo cáo, không sửa

## ✅ MAIN CLAUDE TỰ KIỂM CHỨNG TRƯỚC (thước đo đánh giá báo cáo)

### 1. Quét keigo điển hình — sách RẤT SẠCH
| Pattern | Ca | Kết luận |
|---|---|---|
| `部長様/社長様` (二重敬語) | 0 | sạch |
| `ご〜になられる` | 0 | sạch |
| `お伺いさせていただく` | 0 | sạch |
| `申させていただく` | 0 | sạch |
| `ご請求書` | 0 | sạch |
| `さ入れ言葉` | 0 | sạch |
| `お声が遠い` | 0 | sạch |

### 2. ⚠️ 11 ca `ご相談させていただく` — **KHÔNG PHẢI LỖI**
rule_24, rule_29. **相談 có đối phương cùng tham gia** → `ご` là 謙譲語 hợp lệ. Bài học sách 03: `ご確認させて` mới sai (việc tự thân), còn `ご相談させて`/`ご共有させて` thì đúng.
→ **Agent nào báo đây là 過剰敬語 thì báo cáo đó SAI.**

### 3. ⚠️ 2 ca `当社` ở rule_32 — **KHÔNG PHẢI LỖI**
Người nói là **khách Ōgaki tự xưng công ty mình** (`当社の客が…`). 当社 = trung tính, hợp lệ khi khách tự xưng. Chỉ sai nếu phía Thiên Phát dùng 当社 khi nói với khách (phải là 弊社).

### 4. Cấu trúc 40 rule — ĐỒNG DẠNG TỐT
`## Bối cảnh / 場面`, `## Câu chốt`, `## Tránh`, `## Bảng từ vựng` đều **40/40**.

### 5. Mục lục lệch — đã tách 2 loại
- **19/40 chỉ thiếu vế tiếng Nhật** → sửa máy móc
- **21/40 tên Việt KHÁC HẲN** — mục lục là bản **chưa Việt hoá**: `Format`, `interim`, `formal document`, `morning standup`, `Checklist`, `broadcast`
→ Cùng dạng sách 02 (60/60) và 03 (24/50).

### 6. Bug ruby-loss (rule mục 1.3): **0 ca** — sách 04 không dính.

## Phân công giai đoạn 1 — 5 agent, mỗi agent 1 phần

| Agent | Phần | Số rule | File báo cáo | Trạng thái |
|---|---|---|---|---|
| E1 | phần_I — 報告 (Hōkoku) | 12 | `_review/E1_phan_I.md` | ✅ xong — 18 lỗi (🔴4/🟡9/🔵5) |
| E2 | phần_II — 連絡 (Renraku) | 9 | `_review/E2_phan_II.md` | ✅ xong — 20 lỗi (🔴12/🟡8/🔵0) |
| E3 | phần_III — 相談 (Sōdan) | 9 | `_review/E3_phan_III.md` | ✅ xong — 15 lỗi (🔴8/🟡7/🔵0) |
| E4 | phần_IV — tình huống khó | 6 | `_review/E4_phan_IV.md` | ✅ xong — 12 lỗi (🔴6/🟡6/🔵0) |
| E5 | phần_V + mục lục + nhất quán xuyên sách | 4 | `_review/E5_phan_V_nhat_quan.md` | ✅ xong — 21 lỗi (🔴5/🟡9/🔵7) |

## Nhật ký
- 2026-08-15: tạo `_review/`, tự kiểm chứng lập 6 thước đo, tung 5 agent Opus.

## 📋 MAIN CLAUDE TỔNG DUYỆT — đánh giá 3 báo cáo đầu

### Cả 3 agent XÁC NHẬN thước đo của tôi ✅
E1: "quét 二重敬語/過剰敬語 ra 0 ca, khớp thước đo #1". E3: "xác nhận cả 6 thước đo đều đúng — 11 ca `ご相談させて` hợp lệ, tôi không báo là lỗi". Không agent nào lặp lại lỗi phóng đại.

### Phát hiện chung của 3 agent — lỗi LỊCH, vắt qua 5 phần
E1/E2/E3 độc lập cùng chỉ ra. E3 đưa **bằng chứng quyết định**: rule_29 gọi 4/24 là 木, rule_30 gọi cùng ngày là 水.
**Tôi chốt năm bằng dữ liệu:** grep toàn sách → `2026` xuất hiện **26 lần**, `2025` **0 lần** (`2026/4/22`, `DR-2026-0118`, `TICKET-MOCH-2026-0421`). Kiểm giả thuyết "soạn theo lịch 2025" của E2 → **chỉ khớp 3/8, không đứng vững**. Đây là thứ tự do, không theo lịch năm nào.
→ Sửa theo **lịch 2026**: 10 ca. Kiểm lại: **11/11 đúng, 0 sai**.

⚠️ **Một ca tôi xử lý khác máy móc:** rule_19 dạy xin nghỉ phép ngày `4/26`, sửa thứ theo lịch 2026 sẽ thành **Chủ nhật** — xin nghỉ phép vào Chủ nhật là vô nghĩa. Nên tôi **đổi NGÀY** (4/26→4/24 thứ Sáu, trở lại 4/29→4/27 thứ Hai) thay vì đổi thứ, và sửa cả bản dịch VN. Máy móc sẽ tạo lỗi logic mới.

### Kiểm chứng từng cáo buộc
| Agent | Cáo buộc | Kiểm chứng |
|---|---|---|
| E2 | rule_21 "VN-JP cách 2h (mùa hè), 4h (Hokkaido)" | ✅ ĐÚNG — Nhật bỏ giờ mùa hè từ 1952, toàn quốc một múi JST. Mọi phép quy đổi khác trong rule **đã đúng 2h** → chỉ dòng 3 sai |
| E1 | rule_11 tự mâu thuẫn mức keigo | ✅ ĐÚNG — thoại+câu chốt dùng `ご報告でございます`, chú thích+vocab+mục Tránh dạy `ご報告申し上げます` |
| E1 | `宛先` = "OẠN TIÊN" | ✅ ĐÚNG — 宛 âm Hán Việt là **UYỂN** |
| E1 | Ruby chữ Latin trên katakana | ✅ ĐÚNG — `<rt>refactor</rt>`, `<rt>matorikusu</rt>` |
| E2 | Giả thuyết "soạn theo lịch 2025" | ❌ **SAI** — chỉ khớp 3/8 |

## ✅ ĐÃ SỬA (main Claude, sau kiểm chứng) — 17 chỗ
| # | Việc | Chỗ |
|---|---|---|
| 1 | rule_21 luận điểm giờ Hokkaido → "lệch đúng 2h quanh năm, Nhật không có giờ mùa hè, toàn quốc một múi JST" | 1 |
| 2 | Ngày↔thứ theo lịch 2026 (rule_18, 21, 29, 30) | 7 |
| 3 | rule_19 đổi ngày nghỉ 4/26(CN)→4/24(T6), trở lại 4/29→4/27(T2), đồng bộ bản VN | 5 |
| 4 | rule_11 `ご報告でございます`→`ご報告申し上げます` (thoại + câu chốt) | 2 |
| 5 | rule_08 `OẠN TIÊN`→`UYỂN TIÊN` | 1 |
| 6 | Gỡ ruby chữ Latin trên katakana (rule_10, rule_15) | 2 |

### E4 — ĐỘ TIN CẬY CAO ✅ (3/3 kiểm chứng đúng)
Tra luật Nhật: `育児・介護休業法` quy định **1 tháng**, sách ghi "60 ngày (luật)" → sai sự thật pháp lý. Và rule_33 tự mâu thuẫn: bối cảnh "70 ngày" vs 3 chỗ gọi "3 tháng" (tôi tính lại: 22/4→1/7 = **đúng 70 ngày ≈ 2,3 tháng**).
**E4 chủ động báo trục A SẠCH**: quét `全責任`/`責任は弊社` = 0 ca, rule_32 dạy đúng mô hình 部分謝罪 → 全面謝罪. Xử lý tốt hơn sách 02.

### E5 — ĐỘ TIN CẬY CAO ✅, và **BẮT LỖI ĐO CỦA TÔI**
E5 phản bác thước đo #5: *"mục lục có sẵn cột Tên JP cho cả 40 rule → nhóm thiếu vế tiếng Nhật không tồn tại"*.
**Kiểm chứng: E5 ĐÚNG.** Mục lục có **cột JP riêng**; phép đo của tôi so cột 2 với cả chuỗi H1 (`Việt / Nhật`) nên 19 ca "chỉ thiếu vế JA" là **ẢO**.
Đo lại theo 2 cột: **15/40 khớp hoàn toàn · 21 cột Việt khác · 11 cột Nhật khác**. (E5 báo 19 — cách đếm khác, không trọng yếu.)

E5 cũng xác nhận: phụ lục C **40/40 câu sạch**, cross-ref **40/40 đúng**, front/back matter không hứa suông, ruby-loss 0 ca.

## ✅ ĐÃ SỬA — TỔNG 33 chỗ
| # | Việc | Chỗ |
|---|---|---|
| 1 | rule_21 giờ Hokkaido → "lệch đúng 2h quanh năm, Nhật không có giờ mùa hè" | 1 |
| 2 | Ngày↔thứ theo lịch 2026 (rule_18/21/29/30) | 7 |
| 3 | rule_19 đổi ngày nghỉ 4/26(CN)→4/24(T6), trở lại →4/27(T2) + bản VN | 5 |
| 4 | rule_11 `ご報告でございます`→`ご報告申し上げます` | 2 |
| 5 | rule_08 `OẠN TIÊN`→`UYỂN TIÊN` | 1 |
| 6 | Gỡ ruby chữ Latin trên katakana | 2 |
| 7 | rule_33 `60 ngày (luật)`→`1 tháng (育児・介護休業法)` | 1 |
| 8 | rule_33 `3ヶ月`→`2ヶ月半` (JA+VN, khớp 70 ngày thật) | 4 |
| 9 | rule_32 `ご認識合って`→`ご認識でお間違いない` (đồng bộ bản đúng d60) | 2 |
| 10 | rule_37 Slack retention → bỏ con số sai, nêu bản chất | 2 |
| 11 | rule_39 câu chốt mở đầu tiếng Anh → `報連相はチーム競技です` | 1 |
| 12 | rule_38 gán nhầm việc của Hải cho Dũng (2 ca ③ và ⑪, JA+VN) | 5 |

## Lỗi đã xác nhận, CHỜ E4/E5 để chốt
- **rule_07 vs rule_31 SLA báo tin xấu** — E1/E2 nêu, E4 xác nhận thêm mốc Post-mortem 24h vs 48h. **4 rule tham chiếu chéo (07/31/32/39)** → cần chốt một chuẩn, chưa sửa.
- rule_22 d55 "Ảnh hưởng NHỎ × Rollback THẤP → Tự quyết" mâu thuẫn d69 của chính rule (E3)
- rule_30 d43 `ご提案させていただけますでしょうか` — E3 lưu ý **KHÔNG** thuộc nhóm `ご相談させて` đang cấm sửa
- rule_29 bảng hội thoại TỐT lệch cột (3 cột thân dưới header 2 cột)
- 2 cross-ref sai sang sách 03 (rule_29, rule_30)

## CẤM SỬA (chỗ ĐÚNG dễ bị sửa nhầm)
- **11 ca `ご相談させていただく`** (rule_24, 29) — đúng, 相談 có đối phương.
- **2 ca `当社`** (rule_32) — đúng, khách tự xưng.
- Mọi khối `## Hội thoại XẤU` — chứa lỗi **CỐ Ý** để dạy. Đọc kỹ tiêu đề khối trước khi báo lỗi.

---

## Đợt 3 — main agent tự rà (sau khi user nhắc cẩn thận với script)

| # | File | Sửa |
|---|---|---|
| 91 | `nội_dung/_front_matter.md` d1 | Tên sách `Báo·Liên·Thảo luận` → `Tham vấn` |
| 92 | `nội_dung/_back_matter.md` d16 | Như trên |
| 93 | `rule_31` d97 | `Sev1 = Critical severity` → định nghĩa tiếng Việt |
| 94 | `rule_31` d1 (H1) | `Hou-Ren-Sou flow` → `quy trình Hou-Ren-Sou` |
| 95 | `rule_31` d13 | `500 error rate / user bị affect / 2 flow` → thuần Việt |
| 96 | `meta/mục_lục.md` d89 | Đồng bộ H1 rule 31 + Việt hoá cột mô tả |

**Căn cứ chọn "Tham vấn":** đếm trong 40 `rule.md` — `tham vấn` 91 lần/16 file, `thảo luận` 3 lần/2 file.

### Kết luận điều tra: "SLA vênh giữa 4 rule" — BÁO ĐỘNG SAI

E1, E2, E4 cùng nêu, nhưng đọc kỹ thì không mâu thuẫn:

| Rule | Mốc | Thực chất |
|---|---|---|
| 07 | bug critical 30 phút | Junior → sếp (cá nhân) |
| 31 | 5→15→**30**→60 phút | 30 phút = báo **khách**; cùng số, khác đối tượng |
| 32 | 24h trả lời chính thức / 48h post-mortem | Hai việc khác nhau, tự nhất quán |
| 39 | không nêu mốc | Chỉ có KPI |

Còn lại post-mortem 24h (rule_31, sự cố kỹ thuật nội bộ) vs 48h (rule_32, khiếu nại khách).
Khác bối cảnh — hứa khách mốc rộng hơn là hợp lý. **Không sửa.**

### Ca cân nhắc rồi quyết định KHÔNG sửa

- **`culture sponsor` (rule_39, 3 ô)** — nằm trong **vế tiếng Nhật**. Người Nhật ngành IT thật sự nói xen tiếng Anh kiểu này; vế Việt đã dịch "người bảo trợ văn hóa". Giữ = văn phong tự nhiên.
- **`checklist` / `template` / `review` / `format` / `feedback`** (11 rule) — thuật ngữ nghề đã chuẩn trong môi trường IT Việt. Học viên gặp đúng những từ này ở công ty. Việt hoá hết sẽ làm sách xa thực tế.

### ⚠️ Sự cố quy trình trong đợt 2 — script glob quá rộng

Script sửa `仮謝罪` dùng `glob('nội_dung/phụ_lục/*.md')` → sửa nhầm 2 file phụ lục
(file sinh tự động, **ngoài phạm vi** theo chính rule mục 1.4). Đã hoàn nguyên ngay trong bước kế.

**Bài học (đã ghi vào rule):** script sửa hàng loạt phải liệt kê file đích cụ thể,
không dùng glob mở rộng; và phải đọc lại danh sách file đã đổi trước khi đi tiếp.
