# Rule 09 — Báo cáo miệng vs văn bản / 口頭報告 vs 書面報告

> **Luận điểm.** Cùng 1 thông tin nhưng kênh sai = báo cáo sai. **Ma trận quyết định**: ngắn + khẩn → 口頭 (miệng/điện thoại). Dài + cần lưu vết → 書面 (mail/báo cáo). Quan trọng + nhạy cảm → **口頭 trước, 書面 sau** (kết hợp cả hai).
>
> 同じ情報でも channel を間違えると報告失敗。短い・緊急 → 口頭、長い・記録要 → 書面、重要・センシティブ → **口頭で第一報、書面でフォローアップ** の組み合わせ。
>
> **Liên quan:** rule 07 (悪い知らせ), rule 15 (チャネル選択), rule 17 (緊急).

---

## Bối cảnh / 場面

Em Dũng có 3 việc cần báo trong cùng 1 ngày. Lần đầu Dũng bê hết vào mail dài 2000 chữ → chị Hương không kịp đọc tin khẩn. Anh Tuấn dạy ma trận quyết định.

---

## Hội thoại XẤU — gom hết vào 1 mail dài

*gửi mail 9h sáng · 15h, sau khi đọc*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>件名<rt>けんめい</rt></ruby>：本日のご<ruby>報告<rt>ほうこく</rt></ruby>いろいろ」 (nội dung 2000 chữ gồm: bug critical + tiến độ tuần + đề xuất dời lịch họp) <br/>*Tiêu đề "Báo cáo nhiều thứ hôm nay", gộp 3 việc — sự cố production, tiến độ tuần, dời lịch họp — dài 2000 chữ.* |
| **フオン** | 「ズン、**critical bug** が<ruby>朝<rt>あさ</rt></ruby>9時に<ruby>発生<rt>はっせい</rt></ruby>してたって、私はメール<ruby>埋<rt>う</rt></ruby>もれて15時に<ruby>気<rt>き</rt></ruby>づきましたよ。なぜ<ruby>電話<rt>でんわ</rt></ruby>してくれなかったの？」 <br/>*Dũng, bug critical xảy ra 9h sáng mà chị bị chôn trong mail, đến 15h mới thấy đó. Sao em không gọi điện?* |
| **ズン** | 「えっと、メールに<ruby>全部<rt>ぜんぶ</rt></ruby>書いたので…」 <br/>*Ờ, em viết hết trong mail rồi nên...* |
| **フオン** | 「**<ruby>緊急<rt>きんきゅう</rt></ruby>は<ruby>口頭<rt>こうとう</rt></ruby>**、<ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>書面<rt>しょめん</rt></ruby>、リスケは<ruby>別<rt>べつ</rt></ruby>メール — <ruby>用件<rt>ようけん</rt></ruby>ごとに channel を分けて。」 <br/>*Khẩn thì gọi điện, tiến độ thì văn bản, dời lịch thì mail riêng — chia kênh theo loại việc đi.* |

**Vì sao xấu:** Bug critical 9h sáng → cần 口頭 ngay (phone). Lẫn vào mail dài + tiêu đề mơ hồ "いろいろ" = chị Hương phát hiện trễ 6 giờ. Một mail = một chủ đề.

---

## Hội thoại TỐT — chia kênh theo ma trận quyết định

*9:05, phone gọi cá nhân chị Hương · 11:00, gửi mail "週次進捗報告 第3週" · 14:00, gửi mail "【リスケ依頼】明日16時 定例会議について" · 15:00*

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、<ruby>緊急<rt>きんきゅう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>本番<rt>ほんばん</rt></ruby>で critical bug が<ruby>発生<rt>はっせい</rt></ruby>しております【1】。<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>今<rt>いま</rt></ruby>からメールも<ruby>送<rt>おく</rt></ruby>ります。」 <br/>*Chị Hương, em báo cáo khẩn cấp ạ. Production đang có bug critical. Chi tiết em gửi mail luôn ạ.* |
| **フオン** | 「<ruby>了解<rt>りょうかい</rt></ruby>、すぐ<ruby>動<rt>うご</rt></ruby>きます。メール<ruby>待<rt>ま</rt></ruby>ちます。」 <br/>*Hiểu rồi, chị xử lý ngay. Đợi mail em nhé.* |
| **ズン** | (Body theo mẫu DDBN — không gồm bug, vì bug đã có luồng riêng) <br/>*11h em gửi mail "[Tiến độ tuần] Phase 2 Tuần 3", 14h gửi mail "[Xin dời lịch] Họp định kỳ 16h ngày mai" — 2 mail riêng ạ.* |
| **ズン** | (1 chủ đề duy nhất, có tiêu đề rõ) |
| **フオン** | 「3つの<ruby>用件<rt>ようけん</rt></ruby>、3つの channel で分けてくれて<ruby>整理<rt>せいり</rt></ruby>しやすかった。<ruby>週次<rt>しゅうじ</rt></ruby>は OK、リスケも<ruby>承認<rt>しょうにん</rt></ruby>します。」 <br/>*3 việc, em chia 3 kênh nên chị dễ tổng hợp. Tiến độ tuần OK, dời lịch chị duyệt nhé.* |

 **Ghi chú:**
- 【1】**Gọi điện trước cho việc khẩn** — bug critical không gửi mail rồi đợi. Gọi điện → mail tiếp nối.
- Một mail = một chủ đề. Tiêu đề rõ ràng, không "いろいろ".
- Bug critical sau khi 口頭 phải có 書面 tiếp nối (tạo lưu vết kiểm toán).

---

## Ma trận quyết định

| Tình huống | Kênh | Lý do |
|-----------|---------|-------|
| Bug critical / sự cố production | **口頭 (phone) → 書面 tiếp nối** | Tốc độ + lưu vết kiểm toán |
| Tiến độ ngày | Slack (書面 ngắn) | Lưu được, lướt nhanh |
| Tiến độ tuần | Mail (書面) | Cần chia sẻ rộng + lưu vết |
| Đề xuất / tham vấn | **口頭 trước (15ph) → 書面 sau** | Bàn bạc dễ hơn miệng |
| Dời lịch họp | Mail (書面) | Cần ghi lại lịch mới |
| Báo nghỉ vắng | Mail + Slack mention | Cần lưu + nhanh |
| Báo cáo chính thức cuối giai đoạn | 書面 (報告書) | Lưu vĩnh viễn |

---

## Câu chốt

> **「Urgent = 口頭、Detail = 書面、Critical = 口頭 → 書面 combo。」**

---

## Tránh

- Thông tin nghiêm trọng trong mail dài 2000 chữ — sếp lướt mất 6 giờ mới thấy.
- Phone báo tiến độ hằng ngày — không lưu vết, sếp quên.
- Một mail nhiều chủ đề — sếp reply 1 chủ đề, các chủ đề kia mất.
- "口頭で OK もらいました" mà không có 書面 tiếp nối — sau này không chứng minh được.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 口頭 | こうとう | KHẨU ĐẦU | Miệng / nói |
| 書面 | しょめん | THƯ DIỆN | Văn bản |
| 用件 | ようけん | DỤNG KIỆN | Việc cần báo |
| 緊急 | きんきゅう | KHẨN CẤP | Khẩn cấp |
| センシティブ | センシティブ | — | Nhạy cảm |
| フォローアップ | フォローアップ | — | Tiếp nối sau đó |
| 第一報 | だいいっぽう | ĐỆ NHẤT BÁO | Báo cáo đầu tiên |
| 監査証跡 | かんさしょうせき | GIÁM TRA CHỨNG TÍCH | Lưu vết kiểm toán |
