# Rule 30 — Mang về tham vấn (持ち帰り) / 持ち帰り相談

> **Luận điểm.** Sách 03 đã dạy 「持ち帰り検討」 với khách (rule 25/32). Sách 04 mở rộng: **sau khi mang về**, làm sao **vận hành** trong nội bộ? Pattern đúng: **(1) Convert lời khách thành 1 entry trong CSDL nội bộ** (Notion / Confluence / Slack channel chuyên cho 持ち帰り), **(2) Assign owner + deadline ngắn hơn deadline đã hứa khách** (buffer 1 ngày), **(3) Hold internal 相談会議 nếu cần**, **(4) Trước deadline 1 ngày, owner báo Dũng**, **(5) Dũng reply khách đúng deadline đã hứa**. Quy tắc: **持ち帰り = 1 ticket nội bộ, không phải 1 lời hứa miệng**.
>
> 持ち帰り運用5ステップ：①社内DB化 ②owner+期限(顧客約束より1日前)③社内会議 ④期限前日報告 ⑤客への回答。約束した『来週水曜』なら社内では『火曜EOD』。
>
> **Liên quan:** Sách 03 rule 25 (持ち帰り検討), rule 32 (持ち帰り bàn nội bộ). Rule 27 (DR), rule 39 (チーム文化).

---

## Bối cảnh / 場面

Cuộc họp client xong, Dũng đã hứa anh Matsumoto: "**Phase 2 lock cost trong tuần này, em sẽ mang về tham vấn nội bộ và phản hồi anh trước thứ Tư 4/24 EOD**". Lần đầu Dũng chỉ note miệng. Lần 2 áp 5-step internal flow.

---

## ❌ Hội thoại XẤU — note miệng + quên

*thứ Hai 19h, sau họp với Matsumoto · Thứ Tư 14h, Slack từ Matsumoto · panic*

| Speaker | Câu |
|---------|-----|
| **ズン** | (Trong đầu) 「水曜までに lock cost 回答…まあ、覚えとくか…」 |
|  | 「ズンさん、本日 EOD まで lock cost のご回答お待ちしております。」 |
| **ズン** | 「あ、忘れてた…」 (chạy lên hỏi chị Hương + anh Hà) |
| **フオン** | 「ズン、客に持ち帰った件は **必ず Notion #持ち帰りボード に1枚チケット作る**。owner + 期限 (社内は前日)。今ハーCTO 不在で水曜EODは無理。明日に客にリスケ依頼かけて、社内は金曜 lock。」 |

**Vì sao xấu:** L1 chỉ note miệng = trí nhớ. L3 quên = phá nightmare scenario. Nội bộ chưa kịp tham vấn xong (anh Hà bận) → phải reschedule client = mất uy tín.

---

## ✅ Hội thoại TỐT — 5-step internal flow

| Speaker | Câu |
|---------|-----|
| **L1** | **ズン** *(Thứ Hai 19h, sau họp Matsumoto)* | *(Notion #持ち帰りボード に新規チケット)*  
  「**TICKET-MOCH-2026-0421**: Phase 2 lock cost 回答 / **顧客約束**: 4/24 (水) EOD / **社内期限**: 4/23 (火) EOD【1】 / **owner**: ズン / **必要参加者**: ハーCTO + フオン副部長 + トゥアン / **判断材料**: 3社見積 + 過去Phase1実績 / **ステータス**: open」 |
| **L2** | **ズン** *(Slack #内部相談)* | 「@ハーCTO @フオン @トゥアン 火曜 (4/23) 11:00-11:30 で持ち帰り相談セットしました。アジェンダと判断材料は TICKET-MOCH-2026-0421 をご確認ください【2】。」 |
| **L3** | **ズン** *(火曜 11:30, 会議後)* | 「決定: 案B (¥18M)。Decision Register DR-2026-0423 起票。**月曜の予定通り、明日 EOD までに松本様へ回答メール送付します**【3】。」 |
| **L4** | **ズン** *(水曜 16:00, メール松本様)* | 「松本様、お世話になっております。先日お持ち帰りした Phase 2 lock cost の件、社内検討の結果、**¥18M でご提案させていただけますでしょうか**。詳細は添付ファイルをご確認くださいませ。Phase 2 内 cost lock いただけますと幸いです【4】。」 |
| **L5** | **松本PM** *(水曜 17:00)* | 「ご回答ありがとうございます。約束通りの期日でしたね。社内で検収しまして金曜までにお返事します。」 |

📝 **Ghi chú:**
- 【1】**社内期限 = 顧客期限 - 1日** — buffer chuẩn. Tránh case L4 trên (quên).
- 【2】**TICKET ID + agenda link** — không spam Slack với chi tiết. 1 entry là source-of-truth.
- 【3】**「月曜の予定通り」** — đảm bảo timeline so với hứa với khách. Báo cáo nội bộ rõ.
- 【4】**「先日お持ち帰りした件」** — câu reference khách hiểu ngay. Câu mở chuẩn cho reply 持ち帰り.

---

## 🔄 5-step Flow

```
① 社内DB化:        Notion チケット作成 (ID + 顧客期限 + 社内期限 + owner + 判断材料)
                   ↓
② Owner+期限設定:   社内期限 = 顧客期限 - 1日 (buffer)
                   ↓
③ 社内相談会議:     必要参加者を集めて15-30分。Decision Register に1行
                   ↓
④ 前日報告:         Dũng reply 顧客 trước. 内部チケット → ステータス = closed
                   ↓
⑤ 顧客回答:         「先日お持ち帰りした〇〇の件、〜」
```

---

## 🎯 Câu chốt

> **「持ち帰り = 社内Notion 1枚チケット + 社内期限は顧客期限の1日前 + Decision Register 1行で締め。記憶ではなくチケットで管理。」**

---

## ⚠ Tránh

- 「覚えてます」 → trí nhớ chắc chắn rớt sau 2 ngày.
- 内部期限 = 顧客期限 → 0 buffer = một sự cố nhỏ là miss.
- Không hold internal meeting → tham vấn miệng riêng từng người = info bất nhất quán.
- Reply khách bằng casual tone — phải dùng 「先日お持ち帰りした件、社内検討の結果〜」 (rule 29).

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 持ち帰り | もちかえり | Mang về (xem xét) |
| 社内検討 | しゃないけんとう | Xem xét nội bộ |
| 社内期限 | しゃないきげん | Deadline nội bộ |
| 顧客期限 | こきゃくきげん | Deadline với khách |
| チケット | ticket | Ticket |
| 起票 | きひょう | Mở entry / log |
| ボード | board | Board (kanban) |
| ステータス | status | Trạng thái |
