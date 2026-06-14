# Rule 20 — Báo công tác / 出張連絡

> **Luận điểm.** Báo công tác phải báo trước **1 tuần** với 4 yếu tố: **(1) Lịch trình + nội dung làm việc (agenda)**, **(2) Kết quả mong đợi (deliverables)**, **(3) Giờ liên lạc được (reachable)** — khi nào online/offline, **(4) Người cover việc thường ngày**. Khác báo nghỉ — công tác vẫn online.
>
> 出張連絡4要素：①日程 + アジェンダ、②期待する deliverable、③reachable 状況、④代行者（通常業務）。休暇と異なり「在席相当」の連絡が必要。
>
> **Liên quan:** rule 14 (broadcast), rule 19 (不在連絡), rule 21 (cross-timezone).

---

## Bối cảnh / 場面

Em Dũng được anh Hà CTO cử sang Tokyo 3 ngày để demo Phase 2 cho anh Nakamura CFO + anh Ōgaki. Cần báo công tác cho team 1 tuần trước.

---

## ❌ Hội thoại XẤU — báo trước 2 ngày + thiếu agenda

*thứ 5 17h, Slack*

| Vai | Câu |
|---------|-----|
| **ズン** | 「皆さん、来週月曜から3日東京<ruby>出張<rt>しゅっちょう</rt></ruby>です。」 |
|  | *Mọi người, thứ Hai tuần sau em đi Tokyo công tác 3 ngày.* |
| **トゥアン** | 「ズン、何のため？私が引き継ぐ部分は？日本との<ruby>時差<rt>じさ</rt></ruby>中、Slack 見れる？」 |
|  | *Dũng, đi cho việc gì? Anh cần cover phần nào? Lệch giờ Nhật, Slack có xem được không?* |
| **ズン** | 「えっと、デモのためです、<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎは…まだ考えてなくて…」 |
|  | *Ờ, đi demo ạ, bàn giao thì... em chưa nghĩ ạ...* |
| **トゥアン** | 「<ruby>出張連絡<rt>しゅっちょうれんらく</rt></ruby>は **1週間前 + agenda + deliverables + reachable + <ruby>代行<rt>だいこう</rt></ruby>** が基本。」 |
|  | *Báo công tác là 1 tuần trước + agenda + deliverables + reachable + cover. Cơ bản đó.* |

**Vì sao xấu:** Báo trước 2 ngày + 1 dòng. Team không biết kết quả mong đợi (deliverables) là gì, không biết khi nào liên lạc được Dũng.

---

## ✅ Hội thoại TỐT — 1 tuần trước + đủ 4 yếu tố

*mail subject: "【出張連絡】5/13-5/15 東京 / 白鷗様向け Phase 2 デモ" · reply*

| Vai | Câu |
|---------|-----|
| **ズン** | (Body theo công thức mail bên dưới) |
| **トゥアン** | 「了解。Phase 3 <ruby>仕様検討<rt>しようけんとう</rt></ruby>は私が<ruby>代行<rt>だいこう</rt></ruby>します。デモ<ruby>資料<rt>しりょう</rt></ruby>の<ruby>最終<rt>さいしゅう</rt></ruby> review、明日<ruby>金曜<rt>きんよう</rt></ruby>にやろう。」 |
|  | *OK. Spec Phase 3 anh cover. Review cuối tài liệu demo, mai thứ Sáu mình làm nhé.* |
| **ハーCTO** | 「ズン、CFO <ruby>中村<rt>なかむら</rt></ruby>様へは **<ruby>数値<rt>すうち</rt></ruby>ベース** で<ruby>報告<rt>ほうこく</rt></ruby>するように。Phase 2 の<ruby>数字資料<rt>すうじしりょう</rt></ruby>は私もレビューする。」 |
|  | *Dũng, báo cáo cho anh Nakamura CFO bằng số liệu nhé. Tài liệu số Phase 2 anh cũng review.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。**毎晩21時(JST)** に Slack で<ruby>進捗報告<rt>しんちょくほうこく</rt></ruby>いたします【1】。」 |
|  | *Em hiểu ạ. Em sẽ báo cáo tiến độ qua Slack mỗi tối 21h (JST) ạ.* |

📝 **Ghi chú:**
- 【1】**「毎晩21時に進捗報告」** — báo cáo tiến độ hằng ngày từ Tokyo. Khác với nghỉ phép, công tác vẫn báo cáo mỗi ngày.

---

## Cấu trúc 出張連絡 mail

```
件名：【出張連絡】〇月〇日〜〇月〇日 〇〇 / 〇〇向け 〇〇

【出張概要】
  - 期間：〇月〇日(〇)〜〇月〇日(〇)
  - 訪問先：〇〇
  - 同行者：〇〇

【目的・アジェンダ】
  Day 1 (〇/〇)：
    AM: 〇〇との打ち合わせ
    PM: 〇〇デモ
  Day 2 (〇/〇)：
    AM: 〇〇
    PM: 〇〇

【期待する deliverables】
  ① 〇〇（〇/〇 までに）
  ② 〇〇（〇/〇 までに）

【Reachable 状況】
  - メール：終日対応可能（時差注意）
  - Slack：21時 (JST) に daily 進捗報告
  - 電話：移動時間帯（10時〜18時 JST）以外は対応可能

【代行者】
  - 通常業務：〇〇
  - 緊急対応：〇〇
```

---

## 🎯 Câu chốt

> **「<ruby>期間<rt>きかん</rt></ruby> / Agenda / Deliverables / Reachable / <ruby>代行<rt>だいこう</rt></ruby> — 1週間前 mail + <ruby>出張中<rt>しゅっちょうちゅう</rt></ruby> daily check-in。」**

---

## ⚠ Tránh

- Báo công tác như báo nghỉ ("3 日不在") — đi công tác vẫn cần báo cáo.
- Bỏ "kết quả mong đợi (deliverables)" — sếp không biết kỳ vọng gì từ chuyến đi.
- "電話に出れません" — công tác vẫn nên liên lạc được, trừ giờ họp/di chuyển.
- Bỏ báo cáo hằng ngày — sếp/team mất nắm bắt tình hình suốt 3 ngày.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 出張 | しゅっちょう | Công tác |
| 訪問先 | ほうもんさき | Nơi đến / địa điểm |
| 同行者 | どうこうしゃ | Người đi cùng |
| 期待する | きたいする | Kỳ vọng |
| 移動時間帯 | いどうじかんたい | Khung giờ di chuyển |
| 終日 | しゅうじつ | Cả ngày |
| デモ | demo | Demo |
| 数値ベース | すうちベース | Dựa trên số liệu |
