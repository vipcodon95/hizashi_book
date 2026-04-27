# Rule 09 — Báo cáo miệng vs văn bản / 口頭報告 vs 書面報告

> **Luận điểm.** Cùng 1 thông tin nhưng kênh sai = báo cáo sai. **Decision matrix**: ngắn + khẩn → 口頭 (miệng/phone). Dài + cần lưu vết → 書面 (mail/báo cáo). Quan trọng + nhạy cảm → **口頭 trước, 書面 sau** (combo).
>
> 同じ情報でも channel を間違えると報告失敗。短い・緊急 → 口頭、長い・記録要 → 書面、重要・センシティブ → **口頭で第一報、書面でフォローアップ** の組み合わせ。
>
> **Liên quan:** rule 07 (悪い知らせ), rule 15 (チャネル選択), rule 17 (緊急).

---

## Bối cảnh / 場面

Em Dũng có 3 việc cần báo trong cùng 1 ngày. Lần đầu Dũng bê hết vào mail dài 2000 chữ → chị Hương không kịp đọc tin urgent. Anh Tuấn dạy decision matrix.

---

## ❌ Hội thoại XẤU — gom hết vào 1 mail dài

*gửi mail 9h sáng · 15h, sau khi đọc*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「件名：本日のご報告いろいろ」 (nội dung 2000 chữ gồm: bug critical + tiến độ tuần + đề xuất reschedule họp) |
| **フオン** | 「ズン、**critical bug** が朝9時に発生してたって、私はメール埋もれて15時に気づきましたよ。なぜ電話してくれなかったの？」 |
| **ズン** | 「えっと、メールに全部書いたので…」 |
| **フオン** | 「**緊急は口頭**、進捗は書面、リスケは別メール — 用件ごとに channel を分けて。」 |

**Vì sao xấu:** Bug critical 9h sáng → cần 口頭 ngay (phone). Lẫn vào mail dài + tiêu đề mơ hồ "いろいろ" = chị Hương phát hiện trễ 6 giờ. 1 mail = 1 chủ đề.

---

## ✅ Hội thoại TỐT — chia channel theo decision matrix

*9:05, phone gọi cá nhân chị Hương · 11:00, gửi mail "週次進捗報告 第3週" · 14:00, gửi mail "【リスケ依頼】明日16時 定例会議について" · 15:00*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「フオン副部長、緊急のご報告です。本番で critical bug が発生しております【1】。詳細は今からメールも送ります。」 |
| **フオン** | 「了解、すぐ動きます。メール待ちます。」 |
| **ズン** | (Body theo template DDBN — không gồm bug, vì bug đã có thread riêng) |
| **ズン** | (1 chủ đề duy nhất, có tiêu đề rõ) |
| **フオン** | 「3つの用件、3つの channel で分けてくれて整理しやすかった。週次は OK、リスケも承認します。」 |

📝 **Ghi chú:**
- 【1】**Phone trước cho urgent** — bug critical không gửi mail rồi đợi. Phone → email follow-up.
- 1 mail = 1 chủ đề. Tiêu đề rõ ràng, không "いろいろ".
- Bug critical sau khi 口頭 phải có 書面 follow-up (tạo audit trail).

---

## Decision matrix tóm tắt

| Tình huống | Channel | Lý do |
|-----------|---------|-------|
| Bug critical / sự cố production | **口頭 (phone) → 書面 follow** | Tốc độ + audit trail |
| Tiến độ daily | Slack (書面 ngắn) | Lưu được, lướt nhanh |
| Tiến độ weekly | Mail (書面) | Cần share rộng + lưu vết |
| Đề xuất / tham vấn | **口頭 trước (15ph) → 書面 sau** | Bàn bạc dễ hơn miệng |
| Reschedule meeting | Mail (書面) | Cần ghi lại lịch mới |
| Báo nghỉ vắng | Mail + Slack mention | Cần lưu + nhanh |
| Báo cáo formal cuối phase | 書面 (報告書) | Lưu vĩnh viễn |

---

## 🎯 Câu chốt

> **「Urgent = 口頭、Detail = 書面、Critical = 口頭 → 書面 combo。」**

---

## ⚠ Tránh

- Critical info trong mail dài 2000 chữ — sếp lướt mất 6 giờ mới thấy.
- Phone báo tiến độ daily — không lưu vết, sếp quên.
- 1 mail nhiều chủ đề — sếp reply 1 chủ đề, các chủ đề kia mất.
- "口頭で OK もらいました" mà không có 書面 follow — sau này không proof được.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 口頭 | こうとう | Miệng / nói |
| 書面 | しょめん | Văn bản |
| 用件 | ようけん | Việc cần báo / business |
| 緊急 | きんきゅう | Khẩn cấp |
| センシティブ | sensitibu | Nhạy cảm |
| フォローアップ | forōappu | Follow up |
| 第一報 | だいいっぽう | Báo cáo đầu tiên |
| 監査証跡 | かんさしょうせき | Audit trail |
