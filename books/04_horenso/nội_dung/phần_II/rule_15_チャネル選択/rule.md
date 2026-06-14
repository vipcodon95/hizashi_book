# Rule 15 — Chọn channel: chat / mail / phone / チャネル選択

> **Luận điểm.** Cùng 1 nội dung, channel sai = liên lạc thất bại. **Decision matrix 2 chiều: urgency × audience size**. Urgent + 1 người → phone. Urgent + team → Slack @here. Detail + 1 người → mail. Reference dài → Notion/Confluence.
>
> Channel 選択は **緊急度 × 受信者数** の2軸マトリクスで決める。間違えると速度・記録性・読まれる確率が崩れる。
>
> **Liên quan:** rule 09 (口頭/書面), rule 13 (即時性), rule 16 (Slack), rule 17 (緊急).

---

## Bối cảnh / 場面

Em Linh (junior, vừa onboard) lần đầu cần chọn channel cho 4 tình huống. Em Dũng coach Linh decision matrix.

---

## ❌ Hội thoại XẤU — Linh chọn channel sai 4/4

| Vai | Câu |
|---------|-----|
| **リン** | 「ズンさん、4つ<ruby>連絡<rt>れんらく</rt></ruby>があります：(1) <ruby>緊急<rt>きんきゅう</rt></ruby>バグ → メール、(2) 5月の<ruby>休暇<rt>きゅうか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby> → <ruby>電話<rt>でんわ</rt></ruby>、(3) <ruby>仕様書<rt>しようしょ</rt></ruby> v3 → Slack DM、(4) ハイ<ruby>先輩<rt>せんぱい</rt></ruby>への<ruby>質問<rt>しつもん</rt></ruby> → @channel に<ruby>投稿<rt>とうこう</rt></ruby>。」 |
|  | *Anh Dũng, em có 4 việc liên lạc: (1) bug khẩn → mail, (2) đơn nghỉ phép tháng 5 → điện thoại, (3) tài liệu spec v3 → Slack DM, (4) hỏi anh Hải → đăng @channel.* |
| **ズン** | 「リンちゃん、**4つとも channel が逆**…落ち着いて。**<ruby>緊急度<rt>きんきゅうど</rt></ruby>** と **<ruby>受信者数<rt>じゅしんしゃすう</rt></ruby>** で決まる。」 |
|  | *Linh, cả 4 đều ngược... Bình tĩnh. Quyết theo urgency và số người nhận.* |
| **リン** | 「えっ、全部<ruby>間違<rt>まちが</rt></ruby>いですか？」 |
|  | *Hả, sai hết ạ?* |
| **ズン** | 「(1) 緊急なら電話、(2) 休暇は<ruby>記録<rt>きろく</rt></ruby>要だからメール、(3) 仕様書は<ruby>皆<rt>みな</rt></ruby>が見るから Notion、(4) 1人質問なら DM。」 |
|  | *(1) Khẩn thì gọi điện, (2) nghỉ phép cần lưu nên mail, (3) spec ai cũng xem nên Notion, (4) hỏi 1 người thì DM.* |

**Vì sao xấu:** Linh không có khung quyết định. Chọn theo cảm tính.

---

## ✅ Hội thoại TỐT — decision matrix

| Vai | Câu |
|---------|-----|
| **ズン** | 「リンちゃん、**<ruby>マトリクス<rt>matorikusu</rt></ruby>** を覚えて【1】。」 |
|  | *Linh, học matrix nhé.* |
| **ズン** | 「**緊急 × 1人** → 電話。**緊急 × チーム** → Slack @here または @channel。**<ruby>通常<rt>つうじょう</rt></ruby> × 1人** → メールまたは Slack DM。**通常 × チーム** → Slack #channel または<ruby>定例<rt>ていれい</rt></ruby>。**<ruby>長期参照<rt>ちょうきさんしょう</rt></ruby> × <ruby>全員<rt>ぜんいん</rt></ruby>** → Notion/Confluence【2】。」 |
|  | *Khẩn x 1 người → điện thoại. Khẩn x team → Slack @here hoặc @channel. Thường x 1 người → mail hoặc Slack DM. Thường x team → Slack #channel hoặc họp định kỳ. Tham khảo dài hạn x cả nhà → Notion/Confluence.* |
| **リン** | 「なるほど。バグは緊急 × チームだから @channel ですね。」 |
|  | *À hiểu rồi. Bug là khẩn x team nên @channel ạ.* |
| **ズン** | 「<ruby>正解<rt>せいかい</rt></ruby>。**ただし critical bug は電話で<ruby>第一報<rt>だいいっぽう</rt></ruby>、Slack でフォロー** — <ruby>二重<rt>にじゅう</rt></ruby>に【3】。」 |
|  | *Đúng rồi. Nhưng critical bug thì điện thoại báo đầu, Slack follow — 2 lớp.* |
| **リン** | 「2<ruby>層<rt>そう</rt></ruby>に。覚えました。」 |
|  | *2 lớp. Em ghi nhớ ạ.* |

📝 **Ghi chú:**
- 【1】**Matrix có 5 ô** — Linh học 1 lần, dùng cả đời.
- 【2】**「長期参照」** — thông tin cần ai cũng tra cứu được sau này → wiki, không Slack (thông tin trên Slack trôi nhanh).
- 【3】**「critical bug は二重」** — ngoại lệ: critical mà chỉ Slack có thể bị trôi → gọi điện trước, Slack follow.

---

## Decision matrix tổng hợp

| Urgency / Audience | 1 người | Team (~5-15) | Cả org / Khách |
|---|---|---|---|
| **Critical (< 1h)** | Phone → Slack DM follow | Phone (key person) → Slack @channel follow | Phone → Mail (formal) |
| **Urgent (1-4h)** | Slack DM | Slack @here | Mail + Slack |
| **Normal (1-2 days)** | Slack DM hoặc Mail | Slack #channel | Mail |
| **Reference (long-term)** | Mail (lưu) | Notion/Confluence | Wiki + Mail link |
| **Casual / chitchat** | Slack DM | Slack #random | (không) |

---

## 🎯 Câu chốt

> **「<ruby>緊急度<rt>きんきゅうど</rt></ruby> × <ruby>受信者数<rt>じゅしんしゃすう</rt></ruby> → channel <ruby>決定<rt>けってい</rt></ruby>。Critical は<ruby>二重<rt>にじゅう</rt></ruby>チャネル。Reference は wiki。」**

---

## ⚠ Tránh

- Gọi điện cho các cập nhật casual — phá nhịp làm việc của người nhận, lại không lưu.
- Mail cho urgent < 1h — sếp lướt mail mỗi 2-3h, trễ.
- Slack DM cho team-level info — cả team cần biết, đừng giấu trong DM.
- Notion link mà không gửi notification — không ai check Notion liên tục.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| チャネル | chaneru | Channel |
| 緊急度 | きんきゅうど | Mức độ khẩn |
| 受信者 | じゅしんしゃ | Người nhận |
| 通常 | つうじょう | Bình thường |
| 長期参照 | ちょうきさんしょう | Tham khảo dài hạn |
| 二重 | にじゅう | Hai lớp |
| マトリクス | matorikusu | Matrix |
| 流れる | ながれる | Trôi đi (mất tin) |
