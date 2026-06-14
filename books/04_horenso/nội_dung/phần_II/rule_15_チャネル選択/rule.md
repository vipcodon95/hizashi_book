# Rule 15 — Chọn kênh: chat / mail / phone / チャネル選択

> **Luận điểm.** Cùng 1 nội dung, kênh sai = liên lạc thất bại. **Ma trận quyết định 2 chiều: mức khẩn × số người nhận**. Khẩn + 1 người → phone. Khẩn + cả team → Slack @here. Chi tiết + 1 người → mail. Tài liệu tra cứu dài hạn → Notion/Confluence.
>
> Chọn kênh liên lạc dựa vào **緊急度 × 受信者数** theo ma trận 2 trục. Sai kênh thì mất tốc độ, mất lưu trữ, mất tỉ lệ đọc.
>
> **Liên quan:** rule 09 (口頭/書面), rule 13 (即時性), rule 16 (Slack), rule 17 (緊急).

---

## Bối cảnh / 場面

Em Linh (nhân viên mới, vừa vào nhóm) lần đầu cần chọn kênh liên lạc cho 4 tình huống. Em Dũng hướng dẫn Linh ma trận quyết định.

---

## Hội thoại XẤU — Linh chọn kênh sai 4/4

| Vai | Câu |
|---------|-----|
| **リン** | 「ズンさん、4つ<ruby>連絡<rt>れんらく</rt></ruby>があります：(1) <ruby>緊急<rt>きんきゅう</rt></ruby>バグ → メール、(2) 5月の<ruby>休暇<rt>きゅうか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby> → <ruby>電話<rt>でんわ</rt></ruby>、(3) <ruby>仕様書<rt>しようしょ</rt></ruby> v3 → Slack DM、(4) ハイ<ruby>先輩<rt>せんぱい</rt></ruby>への<ruby>質問<rt>しつもん</rt></ruby> → @channel に<ruby>投稿<rt>とうこう</rt></ruby>。」 <br/>*Anh Dũng, em có 4 việc liên lạc: (1) bug khẩn → mail, (2) đơn nghỉ phép tháng 5 → điện thoại, (3) đặc tả v3 → Slack DM, (4) hỏi anh Hải → đăng @channel.* |
| **ズン** | 「リンちゃん、**4つとも channel が逆**…落ち着いて。**<ruby>緊急度<rt>きんきゅうど</rt></ruby>** と **<ruby>受信者数<rt>じゅしんしゃすう</rt></ruby>** で決まる。」 <br/>*Linh, cả 4 đều ngược... Bình tĩnh. Quyết theo mức khẩn và số người nhận.* |
| **リン** | 「えっ、全部<ruby>間違<rt>まちが</rt></ruby>いですか？」 <br/>*Hả, sai hết ạ?* |
| **ズン** | 「(1) 緊急なら電話、(2) 休暇は<ruby>記録<rt>きろく</rt></ruby>要だからメール、(3) 仕様書は<ruby>皆<rt>みな</rt></ruby>が見るから Notion、(4) 1人質問なら DM。」 <br/>*(1) Khẩn thì gọi điện, (2) nghỉ phép cần lưu nên mail, (3) đặc tả ai cũng xem nên Notion, (4) hỏi 1 người thì DM.* |

**Vì sao xấu:** Linh không có ma trận quyết định. Chọn theo cảm tính.

---

## Hội thoại TỐT — ma trận quyết định

| Vai | Câu |
|---------|-----|
| **ズン** | 「リンちゃん、**<ruby>マトリクス<rt>matorikusu</rt></ruby>** を覚えて【1】。」 <br/>*Linh, học bảng ma trận nhé.* |
| **ズン** | 「**緊急 × 1人** → 電話。**緊急 × チーム** → Slack @here または @channel。**<ruby>通常<rt>つうじょう</rt></ruby> × 1人** → メールまたは Slack DM。**通常 × チーム** → Slack #channel または<ruby>定例<rt>ていれい</rt></ruby>。**<ruby>長期参照<rt>ちょうきさんしょう</rt></ruby> × <ruby>全員<rt>ぜんいん</rt></ruby>** → Notion/Confluence【2】。」 <br/>*Khẩn x 1 người → điện thoại. Khẩn x team → Slack @here hoặc @channel. Thường x 1 người → mail hoặc Slack DM. Thường x team → Slack #channel hoặc họp định kỳ. Tham khảo dài hạn x cả nhà → Notion/Confluence.* |
| **リン** | 「なるほど。バグは緊急 × チームだから @channel ですね。」 <br/>*À hiểu rồi. Bug là khẩn x team nên @channel ạ.* |
| **ズン** | 「<ruby>正解<rt>せいかい</rt></ruby>。**ただし critical bug は電話で<ruby>第一報<rt>だいいっぽう</rt></ruby>、Slack でフォロー** — <ruby>二重<rt>にじゅう</rt></ruby>に【3】。」 <br/>*Đúng rồi. Nhưng critical bug thì điện thoại báo đầu, Slack follow — 2 lớp.* |
| **リン** | 「2<ruby>層<rt>そう</rt></ruby>に。覚えました。」 <br/>*2 lớp. Em ghi nhớ ạ.* |

 **Ghi chú:**
- 【1】**Ma trận có 5 ô** — Linh học 1 lần, dùng cả đời.
- 【2】**「長期参照」** — thông tin cần tra cứu lâu dài → wiki, không Slack (thông tin trên Slack trôi nhanh).
- 【3】**「critical bug は二重」** — ngoại lệ: critical mà chỉ Slack có thể bị trôi → gọi điện trước, Slack follow.

---

## Ma trận quyết định tổng hợp

| Mức khẩn / Đối tượng | 1 người | Nhóm (~5-15) | Cả công ty / Khách |
|---|---|---|---|
| **Nghiêm trọng (< 1h)** | Điện thoại → Slack DM tiếp nối | Điện thoại (người chủ chốt) → Slack @channel tiếp nối | Điện thoại → Mail (trang trọng) |
| **Khẩn (1-4h)** | Slack DM | Slack @here | Mail + Slack |
| **Thông thường (1-2 ngày)** | Slack DM hoặc Mail | Slack #kênh | Mail |
| **Tài liệu tra cứu (dài hạn)** | Mail (lưu) | Notion/Confluence | Wiki + đường dẫn mail |
| **Thông thường / xã giao** | Slack DM | Slack #random | (không) |

---

## Câu chốt

> **「<ruby>緊急度<rt>きんきゅうど</rt></ruby> × <ruby>受信者数<rt>じゅしんしゃすう</rt></ruby> → kênh <ruby>決定<rt>けってい</rt></ruby>。Critical は<ruby>二重<rt>にじゅう</rt></ruby>チャネル。Reference は wiki。」**

---

## Tránh

- Gọi điện cho các cập nhật xã giao — phá nhịp làm việc của người nhận, lại không lưu.
- Mail cho urgent < 1h — sếp lướt mail mỗi 2-3h, trễ.
- Slack DM cho thông tin cả nhóm — cả team cần biết, đừng giấu trong DM.
- Đường dẫn Notion mà không gửi thông báo — không ai mở Notion liên tục để xem.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| チャネル | チャネル | — | Kênh liên lạc |
| 緊急度 | きんきゅうど | KHẨN CẤP ĐỘ | Mức độ khẩn |
| 受信者 | じゅしんしゃ | THỤ TÍN GIẢ | Người nhận |
| 通常 | つうじょう | THÔNG THƯỜNG | Bình thường |
| 長期参照 | ちょうきさんしょう | TRƯỜNG KỲ THAM CHIẾU | Tra cứu dài hạn |
| 二重 | にじゅう | NHỊ TRÙNG | Hai lớp |
| マトリクス | マトリクス | — | Ma trận |
| 流れる | ながれる | LƯU | Trôi đi (mất tin) |
