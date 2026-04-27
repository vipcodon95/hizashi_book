# Rule 27 — Lưu log tham vấn / 相談ログ

> **Luận điểm.** Tham vấn miệng → quyết định → 1 tháng sau ai cũng quên. Khi vấn đề tương tự xảy ra, team lại tham vấn lần nữa = lãng phí. Phải có **Decision Register** (相談ログ): mỗi tham vấn có quyết định ghi vào 1 dòng — **date / topic / options considered / chosen / rationale / reviewer**. Sau 6 tháng → repository tri thức team. Cũng là 防衛 (phòng vệ): khi sếp hoặc khách hỏi "tại sao quyết thế?" → mở log ra, không phải dò trí nhớ.
>
> 相談ログ = decision register。1相談1行：日付・論点・検討案・採用案・理由・承認者。Notion / Confluence / Sheets で団体運用。
>
> **Liên quan:** rule 22 (判断軸), rule 26 (複数案), rule 39 (チーム文化).

---

## Bối cảnh / 場面

Cuối tháng. Anh Hà CTO hỏi: "tại sao Phase 2 dùng MySQL chứ không Postgres?". Lần đầu Dũng không có log → ngồi 1 tiếng đào Slack history. Lần 2 có Decision Register → mở 1 dòng là xong.

---

## ❌ Hội thoại XẤU — không có log

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「ズン、Phase 3 設計レビューで疑問が出た。Phase 2 で MySQL 採用したのはなぜ?」 |
| **ズン** | 「えっと…3ヶ月前に決めたんですが…理由は…ちょっと記憶が…」 |
| **ハーCTO** | 「Slack を遡る? どのチャネル?」 |
| **ズン** | 「#phase2-tech だったか #db-選定 だったか…」(1時間後)「あ、ありました!松本様の運用チームが MySQL 慣れてるからでした…」 |
| **ハーCTO** | 「決定事項は **Decision Register に1行残す**。1時間使うのは無駄。Notion テンプレ送るから今日中に整備して。」 |

**Vì sao xấu:** L2 trí nhớ không đáng tin sau 3 tháng. L4 đào Slack 1 giờ. L5 chỉ ra: phải có log structured.

---

## ✅ Hội thoại TỐT — Decision Register sẵn sàng

*共有画面*

| Speaker | Câu |
|---------|-----|
| **ハーCTO** | 「Phase 3 設計レビューで疑問。Phase 2 で MySQL 採用したのはなぜ?」 |
| **ズン** | 「Decision Register をご確認ください。**DR-2026-0118** の1行です【1】。」 |
| **ズン** | 「日付:2026/1/18 / 論点:Phase 2 DB選定 / 検討案:①MySQL ②Postgres ③DynamoDB / 採用:MySQL / 理由:松本様運用チームが MySQL 経験豊富 + ライセンスコスト低 + Phase 1 連携容易 / 承認者:ハーCTO + フオン副部長 / リスク:水平分散時の制約【2】。」 |
| **ハーCTO** | 「完璧。これがあれば 30 秒で議論できる。Phase 3 でも継続して。」 |
| **ズン** | 「はい。**今週分も明日 EOD までに3件追加します**: AWS リージョン、デプロイ時間帯、印刷会社変更です【3】。」 |

📝 **Ghi chú:**
- 【1】**「DR-2026-0118 の1行」** — Decision Register có ID code. Sếp có thể tra cứu ngay.
- 【2】**6 trường tối thiểu** — date / topic / options / chosen / rationale / reviewer + (option) risk. Đầy đủ cho audit.
- 【3】**Cập nhật chủ động** — không đợi sếp hỏi, weekly có routine update.

---

## 🎯 Câu chốt

> **「相談で決まったことは Decision Register に1行残す。30秒の手間で、3ヶ月後の1時間を救う。」**

---

## ⚠ Tránh

- 仅 Slack thread — nhanh nhưng search khó sau 3 tháng.
- Ghi quá vague kiểu 「色々検討した結果 MySQL」 — không có giá trị.
- Bỏ ô 承認者 → khi audit không biết ai duyệt.
- Decision Register 1 lần lập rồi quên — phải có routine cập nhật weekly.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 相談ログ | そうだんログ | Log tham vấn |
| 決定 | けってい | Quyết định |
| 採用案 | さいようあん | Phương án được chọn |
| 検討案 | けんとうあん | Phương án được xem xét |
| 承認者 | しょうにんしゃ | Người duyệt |
| 論点 | ろんてん | Luận điểm / topic |
| 整備する | せいびする | Sắp xếp / build hệ thống |
