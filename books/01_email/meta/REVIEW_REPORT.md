# Báo cáo Review Bản thảo — Song ngữ VN + JP

*Hai biên tập viên độc lập đã review song song. Dưới đây là tổng hợp.*

---

## 🔴 Lỗi NGHIÊM TRỌNG (cần sửa ngay)

### A. Lỗi logic / cast bị đảo

| # | File | Vấn đề | Hướng sửa |
|---|------|--------|-----------|
| A1 | `vi/phần_IV/rule_55_trả_lời_phàn_nàn.md` | Dũng đại diện An Khang (nhà thầu) xin lỗi chị Hương (sếp Dũng tại Thiên Phát) — **đảo vai cast hoàn toàn** | Viết lại: chị Hương / anh Minh phàn nàn về Bình Minh, Dũng/Thiên Phát trả lời |
| A2 | `ja/第4章/rule_55_苦情返信.md` | Cùng lỗi — 田中 thay mặt 安全セキュリティ社 trả lời 花田 (sếp 田中) | Viết lại: 安全セキュリティ社 担当者 trả lời 山本部長/花田副部長 |
| A3 | `vi/phần_I/rule_16_câu_kết_gọn.md` dòng 58 | "Mail siêu ngắn (Rule 36 — mail 1 dòng)" — Rule 36 là về xưng hô, không phải mail 1 dòng | Sửa thành **Rule 30** |
| A4 | `ja/付録/付録A_メール雛形.md` 雛形10 | Chữ ký mail từ 田中 → 林 lại ghi tên "花田" | Sửa chữ ký thành **田中** |
| A5 | `ja/付録/付録A_メール雛形.md` 雛形14 | "副部長の器ではない" trong mail chúc mừng thăng chức — câu này **mang nghĩa "không xứng làm phó phòng = bất tài"**, là sỉ nhục, không phải khen | Sửa thành "副部長の器に留まる方ではない" |

### B. Lỗi factual / số liệu / can chi

| # | File | Vấn đề | Sửa |
|---|------|--------|-----|
| B1 | `vi/phụ_lục/phụ_lục_A_khuôn_mẫu.md` item 19 | "Tết Nguyên đán **Đinh Tỵ 2027**" — sai. 2027 là **Đinh Mùi** | Đổi |
| B2 | `vi/phụ_lục/phụ_lục_A_khuôn_mẫu.md` item 7 | "PO với An Khang **400tr**" — toàn sách dùng 78tr/80tr | Đổi cho khớp |
| B3 | `ja/付録/付録A_メール雛形.md` 雛形6 | "**ダナン**出張便" — Đà Nẵng (VN), chưa Nhật hoá | Đổi sang 福岡 / 大阪 / hoặc giữ ホーチミン |
| B4 | Phụ lục A 雛形 nhiều chỗ | Inconsistent: 1h15p (Rule 53/56) vs 1h30p (Phụ lục) cùng 1 sự cố | Thống nhất 1 con số |

### C. Sai kiến thức敬語 (JP nghiêm trọng)

| # | File | Vấn đề |
|---|------|--------|
| C1 | `ja/第3章/rule_36_3つの敬語.md` | Bảng có "知る → お知りになる" — **không tự nhiên, gần như không dùng**. Đúng: chỉ "ご存じ" |
| C2 | `ja/第3章/rule_36_3つの敬語.md` | "もらう → お受け取りになる" — phân loại sai. もらう nguyên là 謙譲側, kính ngữ thật phải là **くださる** |
| C3 | `ja/第3章/rule_44_させていただきます.md` | "出社させていただきます" — phủ định rồi *ngay câu sau* lại mở ngoặc "実は許可があれば該当" — tự mâu thuẫn |
| C4 | `ja/付録/付録B_フレーズ集.md` グループ8 | "全責任を**負わせていただきます**" — chính rule 44 chê濫用 nhưng phụ lục lại dùng |

### D. Typo / lỗi chính tả

| # | File | Sai | Đúng |
|---|------|-----|------|
| D1 | `vi/phần_III/rule_40_cảm_ơn_cấp_độ.md` | "bỏ công **nhỉn** hơn mức tối thiểu" | nhỉnh |
| D2 | `vi/phần_IV/rule_57_báo_trễ_deadline.md` | "phần kỹ thuật của **ảnh**" | anh ấy |
| D3 | `ja/第2章/rule_27_一文一義.md` | "1文＝85文字×**相当数**" — vô nghĩa | Sửa thành "約120文字" hoặc số xác định |
| D4 | `ja/第3章/rule_35_空虚な言葉を削る.md` | Ví dụ XẤU dùng "花田副部長 様" (二重敬語) — đúng là *xấu* nhưng cần ghi chú đây là lỗi 二重敬語, không cùng vấn đề "rỗng" | Thêm chú thích |

---

## 🟡 Mâu thuẫn nội bộ giữa các rule

| # | Mâu thuẫn | Sửa |
|---|----------|-----|
| E1 | Rule 16 (VN) chê "Thanks" cụt là ❌ Xấu, nhưng Phụ lục B Nhóm 10 lại liệt "Thanks chị" là OK cho nội bộ | Thống nhất: Rule 16 ghi "Thanks đứng một mình ❌, Thanks + tên ✓ trong nội bộ", hoặc Phụ lục B bỏ |
| E2 | Rule 53 đặt **"xin lỗi 4 bước"** nhưng Phụ lục B Nhóm 8 chia **3 cấp xin lỗi** — người đọc dễ tưởng tác giả đổi ý | Thêm dòng: "4 bước = cấu trúc viết; 3 cấp = mức trang trọng. Hai trục khác nhau" |
| E3 | Rule 53 = 4 bước (Sự thật→Nguyên nhân→Biện pháp→Cam kết); Rule 55 = 5 bước (Xác nhận→Xin lỗi→Nguyên nhân→Giải pháp→Ngăn tái phát) | Rule 55 thêm câu: "Rule 53 = bạn xin lỗi. Rule 55 = trả lời người khác phàn nàn → có thêm bước xác nhận cảm xúc" |
| E4 | Phụ lục A item 1 (VN) dùng chữ ký rút gọn cho khách hàng — vi phạm Rule 17 | Sửa chữ ký theo bản A đầy đủ |
| E5 | Phần V Rule 62 (VN) khuyên hạn chế Hán Việt; nhưng Phần IV/Phụ lục A trộn nhiều tiếng Anh ("follow up", "review", "deliver", "MVP", "OT", "Q&A") | Quyết định: giữ context IT/BD (note ở đầu phụ lục) hoặc Việt hoá toàn bộ |

---

## 🟠 Cụm từ / câu chào dịch máy hoặc gượng

### Bản VN
- "Hy vọng anh/chị có một buổi sáng suôn sẻ" — dịch sát từ "have a smooth morning" → đổi: "Mong anh/chị một sáng làm việc thuận lợi"
- "Hy vọng mail này đến anh/chị vào một lúc thuận tiện" — dịch sát "I hope this email finds you well" → "Em xin phép gửi anh/chị mail này"
- "Em **được** chị Mai giới thiệu" — câu bị động kiểu Tây → "Chị Mai đã giới thiệu em với anh"
- "Em **luôn nghĩ chức Phó phòng không đủ với năng lực chị**" (Phụ lục A item 14) — kiểu nịnh quá lộ liễu, nhân viên Việt ít khen sếp công khai vậy

### Bản JP
- `rule_01` kết "**宜しくお願い致します**" — chữ Hán quá nặng. Chuẩn hiện đại: "**よろしくお願いいたします**" (rule 62 chính sách của sách yêu cầu vậy)
- `rule_38` "**経緯で、こちらからご連絡させていただきました**" → "**お名刺を頂戴いたしましたので、ご連絡差し上げました**"
- `付録A 雛形13` "**この組織の一員であったことを、私は一生の誇りにいたします**" — trực dịch tiếng Anh, "私は" thừa
- `付録B グループ6` "**基本方針としてはOKですが**" — "OK" trong sách giáo khoa Nhật → đổi "**問題ございませんが**"

---

## 🟢 Điểm mạnh chung (cả 2 reviewer đồng ý)

- Khung 8 khối nhất quán, dễ đọc lướt
- Cast nhân vật core (chị Hương, em Dũng / 花田, 田中) ổn định xuyên suốt
- Brand keyword (3 chạm/3タッチ, 7 từ/7語, 5 khối/5ブロック) giữ tên nhất quán
- Phụ lục B chia 10 nhóm thực dụng
- Rule 36, 37, 44 (JP) — kiến thức敬語 cốt lõi đúng

---

## 📌 Vấn đề cần quyết định ở mức chính sách (cần user)

1. **Tỷ lệ tiếng Anh** trong ví dụ VN: giữ context IT/BD (deploy, MVP, Q&A) hay Việt hoá toàn bộ?
2. **Mức độ trang trọng mặc định** — sách hướng người đi làm trẻ (giảm tone "kính nhờ thiệt nhiều"), hay người làm việc với đối tác lớn (giữ trang trọng tối đa)?
3. **Cross-reference** — thêm "Liên quan: Rule X" cuối mỗi rule không?
4. **Twin-rule cho hai trường hợp 4-bước/5-bước** (Rule 53 vs Rule 55) — viết thêm 1 rule giải thích sự phân biệt, hay chỉ thêm 1 dòng note?
5. **Bản JP — ruby (振り仮名)** cho từ khó đọc (幸甚, 鞭撻, 賜る) không?

---

*Báo cáo gốc của 2 reviewer được đính kèm trong response chat.*
