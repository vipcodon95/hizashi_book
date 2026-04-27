# Rule 14 — Cấu trúc liên lạc broadcast / 全員に届く連絡

> **Luận điểm.** Khi gửi thông tin cho cả team (broadcast), người Việt thường mặc định "ai cũng đọc hết". Sai. Thực tế: 30% lướt subject, 50% đọc 3 dòng đầu, 20% đọc kỹ. Cấu trúc: **TL;DR (1-2 dòng) → Detail → Action items rõ ràng cho từng vai trò**.
>
> 全員向けの連絡は **TL;DR → Detail → Action item by role** で構成。subject line だけ読む人、最初3行だけ読む人を想定する。
>
> **Liên quan:** rule 13 (即時性), rule 16 (Slack), rule 21 (cross-timezone).

---

## Bối cảnh / 場面

Sau họp với khách, em Dũng cần broadcast 5 quyết định quan trọng cho team Phase 2 (8 người). Lần đầu Dũng viết 1 mail dài 1500 chữ → có 2 người làm sai vì miss action item dành cho mình.

---

## ❌ Hội thoại XẤU — văn xuôi 1500 chữ

*mail to team@, "今日の打ち合わせ報告" · 2 ngày sau*

| Speaker | Câu |
|---------|-----|
| **ズン** | 1500-character narrative kể lại buổi họp 90 phút. Action items lẫn trong văn. |
| **ハイ** | 「ズン、デプロイの件、私の担当だったの？メールに書いてあった？」 |
| **ズン** | 「あ、3パラグラフ目に書きました…」 |
| **ハイ** | 「3パラグラフ目までに3分かかる。**自分の action だけ抜き出せる構造**にしてくれないと miss する。」 |

**Vì sao xấu:** Action items lẫn trong văn xuôi → người đọc phải scan 1500 chữ để tìm "việc của tôi". Hải miss → deploy trễ.

---

## ✅ Hội thoại TỐT — TL;DR + Action by role

*mail subject: "【決定事項5件】4/22 松本様打ち合わせ - Phase 3 移行" · reply 30 giây sau*

| Speaker | Câu |
|---------|-----|
| **ズン** | (Body theo template — see template box) |
| **ハイ** | 「ズン、自分の担当2件 (デプロイ準備・CI設定) 確認しました。期日 4/26 までに完了します。」 |
| **トゥアン** | 「私の担当3件、了解。優先順位は (1)→(3) で進めます。」 |
| **ズン** | 「了解。**4/24 朝礼で進捗確認**します。」 |

📝 **Ghi chú:**
- Subject line đã có 「決定事項5件」 — người chưa mở mail cũng nắm priority.
- TL;DR (3 dòng đầu): tóm 5 quyết định.
- Action items chia theo **assignee** với deadline rõ — không chia theo topic.
- Cuối: pre-schedule check-in (「4/24 朝礼で」).

---

## Cấu trúc broadcast chuẩn

```
Subject: 【〇〇〇】〇〇 - 〇〇 (label rõ ràng)

[TL;DR]
本日の決定: ① 〇〇 ② 〇〇 ③ 〇〇

[Detail]
1. 〇〇 → 〇〇に決定（理由：〇〇）
2. 〇〇 → ...

[Action items by assignee]
@トゥアン:
  - 〇〇（期日 〇/〇）
  - 〇〇（期日 〇/〇）
@ハイ:
  - 〇〇（期日 〇/〇）
@リン:
  - 〇〇（期日 〇/〇）

[Next check-in]
〇/〇 朝礼で進捗確認
```

---

## 🎯 Câu chốt

> **「TL;DR → Detail → Action by assignee → Next check-in」**
>
> *Mỗi dòng có owner. Không có "誰か" (ai đó).*

---

## ⚠ Tránh

- 「皆さんで対応お願いします」 — không có owner = không ai làm.
- Action item lẫn trong văn xuôi — phải tách section riêng có @assignee.
- Subject mơ hồ "今日の打ち合わせ" — phải có hint priority + chủ đề.
- Không có check-in tiếp theo — sếp/lead không biết khi nào catch up.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 全員 | ぜんいん | Toàn thể |
| 決定事項 | けっていじこう | Hạng mục đã quyết |
| 担当 | たんとう | Người phụ trách |
| 期日 | きじつ | Deadline |
| 優先順位 | ゆうせんじゅんい | Thứ tự ưu tiên |
| 進捗確認 | しんちょくかくにん | Xác nhận tiến độ |
| 抜き出す | ぬきだす | Trích ra |
| 構造 | こうぞう | Cấu trúc |
