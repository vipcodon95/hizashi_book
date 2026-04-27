# Rule 13 — Nguyên tắc liên lạc tức thì / 連絡の即時性原則

> **Luận điểm.** Liên lạc trễ = liên lạc sai. **"Information delayed = information wrong"**. Trong Hou-Ren-Sou, 連絡 (sharing thông tin) có giá trị giảm theo cấp số mũ theo thời gian. Biết 1 thông tin → share trong **15 phút** với người liên quan. Để 1 ngày = giá trị giảm 80%.
>
> 連絡は鮮度がすべて。**「遅れた情報は誤った情報と同じ」**。知ったら15分以内に共有。1日寝かせると価値は80%消える。
>
> **Liên quan:** rule 01 (3 nguyên tắc — タイムリー), rule 09 (口頭/書面), rule 17 (緊急).

---

## Bối cảnh / 場面

Anh Matsumoto báo Dũng (qua phone) thay đổi yêu cầu Phase 3 — cần thêm tính năng X. Dũng nắm thông tin lúc 10h sáng. Đến 17h chiều mới chia sẻ với team → anh Tuấn đã code 6 giờ theo spec cũ. Lần 2 áp dụng "15 phút rule".

---

## ❌ Hội thoại XẤU — ngâm 7 giờ

*17h, Slack #phase3*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆さん、今朝松本様から電話があり、機能 X を追加するそうです。」 |
| **トゥアン** | 「**今朝**？私6時間、機能 Y のロジック書いてたんだけど。X 追加なら Y は再設計だよ。」 |
| **ズン** | 「あ、すみません、忙しくて連絡が遅れて…」 |
| **トゥアン** | 「連絡は **15分以内** が原則。半日寝かせるなら共有しないのと同じ。」 |

**Vì sao xấu:** Dũng "ngâm" 7 giờ vì "忙しい". Trong 7 giờ đó anh Tuấn lãng phí 6 giờ work. Chi phí trễ liên lạc = 6 hour-Tuấn.

---

## ✅ Hội thoại TỐT — báo 15 phút

*10:15, Slack #phase3*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「皆さん、**緊急共有** です【1】。10時に松本様から電話。**Phase 3 に機能 X 追加**との要望。Y との関係性は午後の打ち合わせで詰めます。一旦 Y のコーディングは保留してください【2】。」 |
| **トゥアン** | 「了解、Y は中断します。15分前に教えてくれて助かった。」 |
| **ズン** | 「**詳細議事録は 10:45 までに共有**します【3】。」 |
| **トゥアン** | 「OK、待ちます。」 |

📝 **Ghi chú:**
- 【1】**「緊急共有」** — gắn label. Đồng nghiệp biết priority cao, ngừng việc đang làm.
- 【2】**「保留してください」** — không chỉ chia sẻ mà nói **action cần làm ngay**. "保留 (hold)" tránh wasted work.
- 【3】**「10:45 までに共有」** — show next step + deadline. Tránh đồng nghiệp hỏi "詳細は?".

---

## 15-phút rule — algorithm

```
Bạn nhận thông tin có ảnh hưởng team/khách:
  1. Thông tin có cần ai khác hành động ngay? → YES
  2. Trong 15 phút: gửi Slack #channel với label 【緊急共有】
     - 1 dòng: chuyện gì (rút gọn)
     - 1 dòng: ai cần làm gì ngay (保留 / 続行 / 確認)
     - 1 dòng: chi tiết khi nào có
  3. Trong 1 giờ: gửi detail / minutes / link
```

---

## 🎯 Câu chốt

> **「【緊急共有】〇〇発生。一旦〇〇してください。詳細は〇〇までに共有します。」**

---

## ⚠ Tránh

- "忙しいので後で" — sau là khi nào? Định lượng đi: 「30分後に詳細共有」.
- Share thông tin to without action item — đồng nghiệp đọc xong vẫn không biết phải làm gì.
- Dùng DM cho thông tin team-level — DM = chỉ 1 người biết. Phải #channel.
- Đợi đến daily standup hôm sau mới chia sẻ — đã trễ 12-18 giờ.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 即時性 | そくじせい | Tức thời |
| 連絡 | れんらく | Liên lạc / chia sẻ thông tin |
| 鮮度 | せんど | Độ tươi |
| 緊急共有 | きんきゅうきょうゆう | Chia sẻ khẩn |
| 保留 | ほりゅう | Tạm dừng |
| 寝かせる | ねかせる | Ngâm tin (negative) |
| 価値 | かち | Giá trị |
| 続行 | ぞっこう | Tiếp tục (việc) |
