# Rule 37 — Internal kickoff hand-off / 社内キックオフ

> **Luận điểm.** Sau ký, phase delivery do Tanaka PMO + Tuấn drive — KHÔNG phải Dũng. Nhưng Dũng owns hand-off: **(1) Negotiation context summary** (tại sao ¥17M, scope mỗi phần đến từ trade nào), **(2) Khách side personality map** (Ōgaki direct, Tanaka detail), **(3) Open promises** (mọi commitment miệng còn nợ). Skip hand-off → delivery team rediscover, redo work, cost time.
>
> 商談 → delivery 引き継ぎでは、価格・スコープの背景、相手 personality、口頭 commitment を文書化して PMO + Tech Lead に渡す。
>
> **Liên quan:** rule 30 (合意確認), rule 36 (post-deal挨拶), sách 04 rule 30 (持ち帰り相談).

---

## Bối cảnh / 場面

Phase 3 ký xong thứ Hai. Thứ Tư có internal kickoff: Tuấn (Tech Lead delivery), Tanaka PMO 白鷗 join async, Dũng hand-off. Nếu Dũng chỉ "contract attach, có gì hỏi" → tuần thứ 2 Tuấn sẽ Slack "scope item này từ đâu ra?" và Ōgaki Slack lại Dũng → spiral.

---

## ❌ Hội thoại XẤU — hand-off lỏng, không context

| | Speaker | Câu (社内 MTG) |
|--|---------|-----|
| **L1** | **ズン** *(15分 MTG)* | 「トゥアン、Phase 3 contract attach しました。SOW 通りに進めてください。質問あれば Slack で。」 |
| **L2** | **トゥアン** | 「OK、分かった。」 |
| **L3** | (2 週間後) **トゥアン** *(Slack)* | 「ズン、SOW の **AI dashboard カスタム 1 機能** とは具体的に何？大垣様何ご希望？」 |
| **L4** | **ズン** *(忙しく forget)* | 「えっと、確か customer churn prediction だった気がします…」 |
| **L5** | **トゥアン** | 「気がしますじゃ困る。大垣様に直接確認するから、契約交渉の context 全部教えて。」 |

**Vì sao xấu:** Hand-off 15 phút + "質問あれば Slack" → context loss. Tuấn buộc phải Slack Ōgaki direct → khách wonder "あれ、ズンさん共有してないの？" → trust dent. ¥0.5M effort lost trên unnecessary discovery.

---

## ✅ Hội thoại TỐT — 30 phút structured hand-off + doc

*MTG 開始 · ① context · ② personality · ③ open promises · Slack 同期*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Phase 3 内部キックオフ、30 分です。本日のアジェンダは **3 セクション**【1】: ①交渉 context、②白鷗側 personality map、③open promises。事前に hand-off doc 共有済み。質問はその場で。」 |
| **ズン** | 「**価格 ¥17M は Phase 2 比 +24%**、内訳は AI レコメンド + 専任 PM + dashboard customization 1 機能。trade で 2 年契約を取った代わりに、契約期間中 SLA 99.9% commit。なので **SLA 99.5% に落とすことは交渉的に NG**【2】、技術的に可能でも避ける。」 |
| **ズン** | 「大垣様 — direct、数字主義、沈黙が長い (=熟考中、急かさない)。**初回 weekly は厳しめ review される可能性高い** (rule 36 hype したら更に)。Tanaka PMO — Slack-heavy、detail-oriented、async OK。Nakamura CFO は monthly executive review 1 度だけ参加、財務指標厳しい。」 |
| **ズン** | 「**口頭 commitment 2 件**【3】: (a) 8 月初旬に Phase 4 scope 軽く discussion (binding 無し)、(b) Tanaka PMO に毎週金曜 dashboard preview 共有 — これは契約外サービス、注意。」 |
| **トゥアン** | 「了解。SLA 99.9% の reasoning ありがたい。最初 sprint で reliability budget 厳しめに設定する。Tanaka PMO の金曜 preview は内部 calendar 入れる。」 |
| **田中PMO** | 「ズン様、ありがとうございました。tomorrow 朝、Tuấn さんと初回 sync 設定します。引継ぎ doc 拝見しました【4】、 personality map 助かります。」 |

📝 **Ghi chú:**
- 【1】**3 セクション structure** — context / personality / promises. それぞれ 8-10 分.
- 【2】**「交渉的 NG」 vs 「技術的可能」** = delivery team が知らないと shortcut で SLA 落とす可能性. Tradeoff の歴史を共有.
- 【3】**口頭 commitment 必ず文書化**. 「ついで」「次回も」 は契約外でも顧客記憶。Tanaka PMO 知らないと将来 nibble (rule 29) source.
- 【4】**Pre-share doc + 同期 read** = MTG が確認の場になる、 discovery の場ではない.

---

## 🎯 Câu chốt

> **「ハンドオフ 3 セクション (context / personality / open promises) + 事前 doc 共有 = delivery team 立ち上がり -2 週間。」**
>
> *Hand-off 3 sections + pre-share doc = delivery team start sớm 2 tuần.*

---

## ⚠ Tránh

- 「contract 読んでください」 only → context loss 100%
- Personality map skip → delivery team が "なぜ Ōgaki さん厳しい" 自学。1 ヶ月コスト
- 口頭 commitment 文書化忘れ → 顧客から急に "あれは" 引用 → contract 外なのに対応せざるを得ず
- Hand-off MTG なし、Slack DM のみ → 文脈が search でき even retrievable
- Hand-off 後も Dũng が delivery 質問対応続ける → ownership が曖昧, Tuấn 育たず

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| キックオフ | kickoff | Kickoff |
| 引き継ぎ | ひきつぎ | Hand-off |
| 内訳 | うちわけ | Cấu thành / breakdown |
| 専任 | せんにん | Chuyên trách |
| commitment | コミットメント | Cam kết |
| reliability budget | リライアビリティバジェット | Reliability budget |
| 同期 | どうき | Đồng bộ / sync |
