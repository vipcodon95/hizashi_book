# Sách 02 Điện thoại Công Việc — Bảng điều khiển rà soát

> File này là **nguồn sự thật** về tiến độ. Mọi agent phải cập nhật vào đây khi xong.
> Ngày khởi tạo: 2026-08-15

## Quy mô
- **60 rule**, chia 5 phần: **I: 10, II: 13, III: 12, IV: 13, V: 12**
  ⚠️ **ĐÍNH CHÍNH (C3 bắt đúng, main Claude đã đếm sai):** tôi đếm THƯ MỤC ra 10/13/15/17/15 = 70. Thực tế có **10 thư mục rác chỉ chứa `.placeholder`** (tên cũ còn sót sau đổi tên): phần_III rule_25/30/32, phần_IV rule_38/39/40/41, phần_V rule_50/54/57. Phải đếm `rule.md` mới đúng.
  → Hệ quả: phạm vi C2 là **25 rule** (không phải 32), C3 là **12 rule** phần V (không phải 15). Không ảnh hưởng kết quả vì agent đọc theo file thật.
- 60 × `rule.md` (~2.470 dòng — NGẮN hơn sách 08 nhiều) + 60 × `conversation.json`
- 3 phụ lục: A (script template), B (vocab), C (BJT practice)
- Sách đã qua **5 đợt review** → v1.2 (3 expert + 1 verification + 1 native JP), xem `meta/STATUS.md` + `meta/REVIEW_FINDINGS_v1.1.md`

## ⚠️ PHẠM VI ĐỢT NÀY (chủ nhà chốt)
**CHỈ SỬA FILE `.md`. KHÔNG ĐỤNG `conversation.json`.**
Lý do: sản phẩm hiển thị từ `.md`. Pipeline `build_release_books_02_08.py` chỉ đọc `rule.md`, còn strip mọi tham chiếu tới `conversation.json` (đã xác minh ở sách 08).

## Bài học từ sách 08 + 09 — áp dụng cho đợt này
1. **Fix đợt trước thường chạy nửa vời**: script chỉ vá `conversation.json`, KHÔNG đụng `rule.md`; hoặc vá bản Nhật mà quên bản Việt. → Phải kiểm từng mục trong `REVIEW_FINDINGS_v1.1.md` xem đã ăn vào `rule.md` chưa.
2. **Báo cáo agent hay phóng đại phạm vi** (2 lần ở sách 08/09: 91 dòng → thực 11; 43 dòng → thực 7). → Main Claude PHẢI tự kiểm chứng trước khi sửa hàng loạt.
3. Lỗi nguy hiểm nhất là **lời khuyên sai gây hậu quả thật** và **sách tự mâu thuẫn**.

## Phân công giai đoạn 1 (rà soát, chỉ báo cáo)

| Agent | Phạm vi | File báo cáo | Trạng thái |
|---|---|---|---|
| C1 | `rule.md` phần I + II (23 rule) | `_review/C1_rule_phan_I_II.md` | ✅ xong — 31 lỗi (🔴14/🟡11/🔵6) |
| C2 | `rule.md` phần III + IV (**25** rule) | `_review/C2_rule_phan_III_IV.md` | ✅ xong — 21 lỗi (🔴8/🟡9/🔵4) |
| C3 | `rule.md` phần V (**12** rule) + 3 phụ lục + mục lục + nhất quán xuyên sách | `_review/C3_phan_V_va_nhat_quan.md` | ✅ xong — 24 lỗi (🔴6/🟡12/🔵6) |

## Nhật ký
- 2026-08-15: tạo hạ tầng `_review/`, tung 3 agent giai đoạn 1.

## ✅ MAIN CLAUDE TỰ KIỂM CHỨNG TRƯỚC (làm ngay khi tung agent, để có thước đo đối chiếu báo cáo)

Kiểm 6 mục v1.1 nêu đích danh, xem fix có ăn vào `rule.md` không:

| Mục v1.1 | File | Bản SAI còn không? | Bản ĐÚNG có chưa? | Kết luận |
|---|---|---|---|---|
| JP-2 | rule_04_片手メモ | `メモのご準備` = 0 | — | ✅ đã fix |
| JP-3 | rule_08_静かな環境 | `お声が遠く` = 0 | `お電話が遠く` = 1 | ✅ đã fix |
| JP-2 | rule_42_電話で断る | `ご参加` = 0 | `参加が難しい` = 1 | ✅ đã fix |
| JP-1 | rule_43_延期変更 | `トゥアンリーダー` = 0 | `弊社のトゥアン` = có (d14) | ✅ đã fix |
| JP-4 | rule_47_督促電話 | `ご請求書` = 0 | `請求書` = 3 | ✅ đã fix |
| JP-1 | rule_34_緊急電話 | `トゥアンリーダー` = 0 | — | ✅ đã fix |

**KẾT LUẬN QUAN TRỌNG:** fix v1.1 của sách 02 **ĐÃ ăn vào `rule.md`** — khác hẳn sách 08 (script chỉ vá `conversation.json`) và sách 09. Nếu agent nào báo "fix v1.1 chưa ăn" ở các mục trên thì **báo cáo đó sai**, phải kiểm lại.

⚠️ **BẪY ĐÃ GẶP:** grep `弊社のトゥアン` trả 0 vì ruby chen giữa (`弊社<rt>へいしゃ</rt>のトゥアン`). Luôn kiểm bằng bản đã strip ruby trước khi kết luận "không có".

## 📋 MAIN CLAUDE ĐÁNH GIÁ BÁO CÁO AGENT

### C3 — ĐỘ TIN CẬY CAO ✅
Kiểm chứng 3 cáo buộc chính, **cả 3 đều ĐÚNG**:
1. **Bắt lỗi trong chính file tôi viết** — tôi ghi (I:10, II:13, III:15, IV:17, V:15) = 70 vì đếm THƯ MỤC. Thực tế 10 thư mục chỉ chứa `.placeholder` (tên cũ sót lại sau đổi tên): phần_III rule_25/30/32, phần_IV rule_38/39/40/41, phần_V rule_50/54/57. Số thật **10/13/12/13/12 = 60**. ĐÃ ĐÍNH CHÍNH.
2. **rule_50_留守電後 dạy ngược nhau trong 3 dòng** — d3 (bản Việt) dạy mở lời bằng `聞きました`, d5 (bản Nhật) ngay dưới lại dạy `確認いたしました`. Xác minh: ĐÚNG.
3. Phụ lục sạch (66/66 A, 195/195 B, 60/60 C, 0 ca đáp án≠giải thích) — khác sách 08 có 159 nhãn sai. C3 giải thích được **lý do**: `build_appendices.py` lấy số rule từ đường dẫn thư mục, ánh xạ 1:1.

C3 còn tự phát hiện đúng bẫy ruby mà tôi đã gặp (`grep "お声" rule_58` trả 0 dù chuỗi có thật).

### C1 — ĐÚNG SỰ KIỆN, SAI KẾT LUẬN ⚠️
C1 khẳng định *"fix v1.1/v1.2 chỉ chạy trên conversation.json, không chạy trên rule.md"* và đưa 6 ca "lệch md↔json".

**Tôi viết script so toàn bộ 60 rule (strip ruby, lọc mẫu câu khái quát có 〇/→) và kiểm từng ca:**
- **rule_21 `3軒目` vs `3つ目`: LỖI THẬT** ✅ — `3軒目` đếm nhà/cửa hàng, chỉ đường tới *toà nhà 8 tầng* phải dùng `3つ目`. Lệch 2 chỗ (d15, d16) + `右折いただきます` (không tự nhiên) → **sẽ sửa**
- **rule_01, rule_12, rule_19: KHÔNG PHẢI LỖI** ❌ — C1 so nhầm **hai lượt thoại khác nhau**. rule_01 d43 là Matsumoto chào, d44 là Dũng đáp: hai người khác nhau thì câu khác nhau là đương nhiên.

**Kết luận:** giả thuyết "fix chỉ vá json" của C1 **KHÔNG đứng vững**. Đối chiếu với thước đo tôi lập ở trên: JP-1..JP-4 của v1.1 **đều đã ăn vào rule.md**. Sách 02 khác hẳn sách 08/09 ở điểm này.

**Điểm tốt của C1:** chủ động báo **"xưng hô tiếng Việt: 0 lỗi"** sau khi rà kỹ — đúng tinh thần cảnh báo tôi đưa, và trùng khớp với thực tế 2 sách trước (agent hay phóng đại trục này). C1 cũng lập danh sách CẤM SỬA (`申し伝えます` rule_18 đúng, `トゥアンリーダー` rule_23 đúng vì nội bộ) — chi tiết quan trọng để không chạy sed toàn cục.

## Lỗi đã xác nhận (sau kiểm chứng)
- rule_50_留守電後 d3: luận điểm VN dạy `聞きました`, mâu thuẫn d5 + phụ lục C (C3)
- rule_21_訪問先案内 d15,16: `3軒目` → `3つ目`; `右折いただきます` → `右に曲がっていただきます` (C1)
- rule_58_ハイブリッド d22: Câu chốt còn `お声`, mâu thuẫn bảng ngay trên (C3)
- Mục lục lệch 35/60 tiêu đề — bản tiếng Anh cũ trước đợt Việt hoá (C3)
- rule_14 d14: chữ `详` giản thể Trung Quốc, tiếng Nhật là `詳` (C1)
- rule_17: `保留は1分以内` lệch chuẩn ngành 30 giây + vênh rule_03 d23 (C1)
- rule_05: định nghĩa Where = kênh liên lạc, mâu thuẫn rule_14 (Where = phòng họp) (C1)
- VN-A chưa fix: 7 dòng dịch `お世話になっております` thành "cảm ơn anh đã hỗ trợ" (C1)
- 56/60 rule không có khối BJT Practice dù front matter hứa (C1 + C3 cùng chỉ ra)

### C2 — ĐỘ TIN CẬY CAO ✅
Kiểm 3 cáo buộc chính, **cả 3 ĐÚNG**:
1. **Tự phát hiện lỗi đếm thư mục ĐỘC LẬP với C3** (7 folder rỗng ở phạm vi của nó) — hai agent khác nhau cùng chỉ ra một lỗi của tôi.
2. **rule_34 d15: JA sửa, VN quên** — JA là `至急共有いたします` + `ご指示ください` (khẳng định + xin chỉ thị), VN vẫn *"Em nghĩ cần báo gấp… anh thấy thế nào ạ?"* (do dự, mất hẳn vế xin chỉ thị). Xác minh: ĐÚNG.
3. **Cụm rule 40/41/45 không thống nhất trục quy trình** + `全責任は弊社にございます` làm câu chốt không kèm điều kiện. Xác minh: ĐÚNG.

**C2 BÁC BỎ giả thuyết của C1** và trùng khớp thước đo của tôi: "18/22 mục v1.1 đã ăn đúng vào rule.md, script sách này KHÔNG bỏ qua rule.md như sách 08/09."

**Sắc thái tôi bổ sung cho C2:** rule_45 d14 có ngữ cảnh `弊社の確認漏れにより` (lỗi đã xác định là của mình) → `全責任は弊社に` ở đó **đúng**. Vấn đề thật nằm ở **d21**: câu bị tách ra làm câu chốt học thuộc, mất ngữ cảnh, lại vào Phụ lục A.

## ✅ GIAI ĐOẠN 2 — ĐÃ SỬA (main Claude tự làm)

| # | Việc | Chỗ |
|---|---|---|
| 1 | rule_50 luận điểm VN dạy `聞きました` → `メッセージを確認いたしました` + cảnh báo | 1 |
| 2 | rule_34 bản dịch VN lệch bản Nhật → viết lại khớp `至急共有` + `ご指示ください` | 1 |
| 3 | rule_45 câu chốt `全責任` → thêm điều kiện 全面謝罪 vs 部分謝罪 + cảnh báo vào mục "Tránh" | 2 |
| 4 | rule_21 `3軒目`→`3つ目` (2), `右折いただきます`→`右に曲がっていただきます` | 3 |
| 5 | rule_14 chữ `详` giản thể Trung Quốc → `詳` | 2 |
| 6 | rule_58 câu chốt `お声` → `ご意見をお伺い` | 1 |
| 7 | VN-A: `お世話になっております` dịch "cảm ơn anh đã hỗ trợ" → "chào anh, rất mong được anh giúp đỡ" (**10 chỗ**, C1 báo 7 — thiếu rule_48) | 10 |
| 8 | H1 4 rule còn chữ `phone` → `điện thoại` (rule_30/42/43/44) | 4 |
| 9 | Mục lục: đồng bộ **60/60** tên theo H1 + Việt hoá 4 mục (`Voicemail`, `script template`, `phone`) | 64 |

**TỔNG: 88 chỗ**

## ❌ KHÔNG SỬA — đã kiểm chứng là ĐÚNG
- **rule_17 `保留は1分以内` vs rule_03**: C1 báo "vênh chuẩn 30 giây". Kiểm rule_03 d23-24: dùng thang **30 giây → 1 phút → 1 phút+** nhất quán với rule_17. Đây là hệ thống có chủ ý, KHÔNG mâu thuẫn.
- **rule_01/12/19 md↔json**: C1 báo lệch. Thực tế C1 so nhầm **hai lượt thoại khác nhau** (d43 Matsumoto chào, d44 Dũng đáp).
- `申し伝えます` rule_18/31/32 — đúng (hứa với người ngoài). `トゥアンリーダー` rule_23 — đúng (nội bộ).
- Nhãn rule 3 phụ lục, đáp án↔giải thích phụ lục C, cột JP mục lục, 151 cross-reference — C3 kiểm 100%, sạch.

## Quyết định đã chốt
- **Không sửa tay 3 phụ lục** — chúng là file SINH TỰ ĐỘNG từ `conversation.json` qua `build_appendices.py`. Sửa tay sẽ bị ghi đè. Lỗi emoji-strip 198 chỗ ở phụ lục A phải sửa ở script, để đợt sau.
- **Khối BJT Practice — ĐÃ GIẢI QUYẾT, và cả C1 lẫn C3 đều đánh giá sai bản chất.**

  Cả hai báo "56/60 rule THIẾU bài luyện BJT" và gọi đó là "việc lớn nhất của cả sách" (C1). Tôi kiểm chứng:
  - **Phụ lục C có đúng 60 câu cho đúng 60 rule** — mọi rule ĐỀU đã có bài luyện.
  - **Cả 4 câu trong `rule.md` (rule 01–04) đều đã có nguyên vẹn trong Phụ lục C** — tức là bản TRÙNG LẶP, không phải bản gốc.

  → 56 rule kia **không thiếu gì cả**. Cái "thiếu" chỉ là thiếu bản sao. Đây là **kiến trúc có chủ ý**: `rule.md` để DẠY, Phụ lục C để LUYỆN — tách ra giúp mạch đọc 60 rule không bị cắt vụn. 4 khối ở rule 01–04 là **tàn dư bản pilot** (C3 quan sát đúng: rule 01–04 dài 83–125 dòng, rule 05–60 chỉ ~35 dòng — người viết làm mẫu rồi đổi cách làm).

  **Việc cần làm là NGƯỢC LẠI** với đề xuất của agent: không thêm 56 khối, mà sửa lời hứa ở front matter cho khớp thực tế. ✅ ĐÃ SỬA 2 chỗ (`_front_matter.md` d44 + d86): nêu rõ bài luyện nằm ở Phụ lục C, tra theo số rule, và giải thích LÝ DO gom về cuối sách.

  Giữ nguyên 4 khối ở rule 01–04 — trùng nhưng vô hại, gỡ đi tốn công mà không được gì.

  **Bài học đánh giá agent:** C1 xếp đây là "việc lớn nhất của cả sách", C3 xếp vào lỗi 🔴. Cả hai đọc `rule.md` thấy thiếu khối là kết luận thiếu nội dung, **không đối chiếu sang Phụ lục C** — dù chính C3 đã kiểm phụ lục C rất kỹ (60/60 câu khớp rule). Hai mảnh dữ kiện nằm trong cùng một báo cáo mà không được nối lại.
