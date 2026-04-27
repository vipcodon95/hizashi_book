# Rule 36 — Bridging gap VN-JP HouRenSou / VN-JP オフショア・ギャップ

> **Luận điểm.** VN văn hóa giao tiếp **"less = better"**: không có news = mọi thứ ổn, báo nhiều = phiền sếp. Nhật ngược lại — **"silence = problem"**: không có 報告 = sếp lo "team đang giấu". Đây là cause #1 của xích mích offshore. Adapt: **VN team phải overshoot 報告 freq theo Nhật standard**: daily standup không skip + status update mỗi 4 giờ trong incident + báo cáo 3 lần (start / middle / end) cho task >1 ngày. Cụ thể quy tắc: **"Nhật normal" = "VN +30% reporting"**. Và **chủ động báo "no news"** — 「現在進行中で、ブロッカーなしです」.
>
> VN『less = better』vs JP『silence = problem』。VN side は報告頻度を JP 基準まで増やす + 『進捗あり/なし問わず定期報告』+『no news 報告』を含める。
>
> **Liên quan:** rule 02 (DDBN), rule 13 (即時性), rule 21 (時差), rule 39 (チーム文化).

---

## Bối cảnh / 場面

Em Dũng đang làm 1 task 3 ngày: build proposal Phase 3 cost. Lần đầu Dũng "yên lặng làm" theo VN style. Lần 2 áp JP +30% reporting frequency.

---

## ❌ Hội thoại XẤU — VN style "im lặng = ổn"

*Slack thứ Hai 9:00, sau khi nhận task từ Matsumoto · thứ Hai 18:00 - thứ Tư 12:00 — silence, Dũng đang làm · thứ Tư 13:00, Slack DM · panic*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「承知しました。木曜中に提案書をご準備いたします。」 |
|  | (im lặng 51 giờ) |
| **松本PM** | 「ズンさん、進捗いかがでしょうか?月曜以降ご連絡なく、不安に感じております。」 |
| **ズン** | 「あ、すみません、順調に進めています!木曜には間違いなく…」 |
| **松本PM** | 「ズンさん、**進捗があってもなくても、3日に1度は status 連絡**をお願いします。VN チームから連絡が無い時、こちらは『何か問題が起きたか』と推察してしまいます。」 |

**Vì sao xấu:** L2 im lặng 51 giờ với khách Nhật = "im lặng = problem" theo Nhật. Dũng tin "no news = good news" (VN style). L5 chỉ ra: phải báo dù không có gì mới.

---

## ✅ Hội thoại TỐT — JP standard +30%

*thứ Hai 9:00 · 火曜 18:00, Slack · 火曜 18:30 · 水曜 18:00, Slack · 木曜 8:50, メール*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「松本様、承知しました。木曜中に提案書をご準備いたします。**進捗共有の予定:**【1】 火曜EOD: ドラフト構成案 / 水曜EOD: コスト見積完了 / 木曜AM: 完成版送付。途中で blocker あればすぐご連絡いたします。」 |
| **ズン** | 「**【中間報告 ① / 火曜EOD】** ドラフト構成案完成。Phase 3 機能スコープ8項目、コスト軸は人月+ライセンスで構成予定。**ブロッカーなし、予定通り進行中**【2】。明日のコスト見積完了報告は水曜 EOD に行います。」 |
| **松本PM** | 「ご連絡ありがとうございます。スコープ8項目、確認しました。」 |
| **ズン** | 「**【中間報告 ② / 水曜EOD】** コスト見積完了 (¥18M〜¥22M レンジ)。明日 AM 9:00 に最終版を提案書でお送りいたします。**ブロッカーなし**。」 |
| **ズン** | 「松本様、Phase 3 ご提案書をお送りいたします。**月曜お約束通り**、火曜・水曜に中間報告を経て本日完成いたしました。ご確認のほどよろしくお願い申し上げます【3】。」 |
| **松本PM** | 「進捗の見える化、非常に分かりやすくなりました。ベトナムチームのホウレンソウが大変分かりやすくなり、感謝しております。」 |

📝 **Ghi chú:**
- 【1】**月曜時点で「進捗共有の予定」を約束** — pre-commit reporting cadence. Khách Nhật biết khi nào sẽ nghe lại.
- 【2】**「ブロッカーなし、予定通り進行中」** — đây là **「no news 報告」**. Không có gì mới = vẫn báo 1 dòng.
- 【3】**「月曜お約束通り、火曜・水曜に中間報告を経て」** — close the loop. Chứng minh mỗi promise được giữ.

---

## 🔁 VN vs JP — Reporting Frequency

| Tình huống | VN style mặc định | JP standard | Adapt cho VN-JP |
|-------------|-------------------|--------------|------------------|
| Task 1 ngày | Báo cuối ngày | Daily standup | DDBN sáng + EOD |
| Task 3 ngày | Báo cuối | 中間報告 mỗi ngày | DDBN + 1 mid status / 3 ngày |
| Incident | Báo khi resolve | Update mỗi 4h | Update mỗi 4h fixed |
| "Không có gì mới" | Không báo | Báo "no change" | Báo "ブロッカーなし、予定通り" |
| Email reply | Khi có info | Trong 24h dù chỉ ack | "受領しました、〇日までに回答" |

---

## 🎯 Câu chốt

> **「VN『沈黙=順調』 ≠ JP『沈黙=問題』。タスク開始時に reporting cadence を約束、ない情報も "ブロッカーなし、予定通り" と1行報告。」**

---

## ⚠ Tránh

- 「特に共有することなければ送らないで OK でしょ」 — VN reflex, NG.
- Chỉ báo khi xong → khách Nhật suy đoán xấu nhất.
- 「忙しすぎて報告できなかった」 — không hợp lệ. 1 dòng "ブロッカーなし" mất 30 giây.
- Nghĩ "anh Matsumoto chắc hiểu VN style" — không có giả định cross-cultural.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 沈黙 | ちんもく | Im lặng |
| 中間報告 | ちゅうかんほうこく | Báo cáo trung gian |
| 進捗共有 | しんちょくきょうゆう | Chia sẻ tiến độ |
| ブロッカー | blocker | Blocker |
| オフショア | offshore | Offshore |
| ギャップ | gap | Khoảng cách |
| 文化的差異 | ぶんかてきさい | Khác biệt văn hóa |
| 予定通り | よていどおり | Đúng kế hoạch |
| 適応 | てきおう | Thích nghi |
