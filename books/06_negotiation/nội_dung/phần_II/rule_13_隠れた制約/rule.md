# Rule 13 — Listen for hidden constraints / 隠れた制約の傾聴

> **Luận điểm.** Khách Nhật rất hiếm khi trực tiếp nói "có vấn đề X", thay vào đó signals indirect: 言葉尻 ("ちょっと…"), 時間 ("少し時間かかる"), passive voice. Phải bắt được 3 loại constraint ẩn: **(1) 稟議 timeline (~ thực sự bao lâu)**, **(2) Budget cycle limit**, **(3) Internal politics** (sếp khác phản đối).
>
> 日本の顧客は制約を直接言わない。「ちょっと」「少し時間がかかる」「内部で議論が」などの signal を listen して隠れた制約 (稟議期間・予算枠・社内反対) を読み解く。
>
> **Liên quan:** rule 03 (稟議), rule 12 (discovery), rule 14 (mirroring).

---

## Bối cảnh / 場面

Discovery question xong (rule 12), 大垣 trả lời nhưng có vài "ちょっと…" và pause dài. Dũng phải đào hidden constraint chứ không bỏ qua.

---

## ❌ Hội thoại XẤU — bỏ qua signal "ちょっと"

*信号読まず*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**社内で議論があって…」 |
| **ズン** | 「では 7 月末ローンチでスケジュール組みます。」 |
| **大垣** | 「あ、はい…」 |
| (3週間後 Slack) **大垣** | 「すみません、稟議が止まっており…」 |

**Vì sao xấu:** "ちょっと" + pause = signal có vấn đề, có thể là sếp khác phản đối hoặc budget chưa sure. Dũng push schedule luôn → 3 tuần sau bị surprise. Phải đào ngay tại chỗ.

---

## ✅ Hội thoại TỐT — đào "ちょっと" với câu hỏi mở

*signal キャッチ · 少し沈黙、その後*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**社内で議論があって…」 |
| **ズン** | 「『社内で議論』とのこと、**もう少し詳しくお聞かせいただけますでしょうか**【1】？タイミングや調整事項に影響しそうでしたら、こちらでも対応を検討したいので。」 |
| **大垣** | 「実は IT 部門長が AI レコメンドの導入リスクを慎重に見ていまして…7 月末は厳しいかもしれません。」 |
| **ズン** | 「**承知しました。IT 部門長様のご懸念点、具体的にどのあたりでしょうか**【2】？こちらで white paper や PoC データをご用意できれば稟議の助けになるかと思います。」 |
| **大垣** | 「データ漏洩リスクとモデル説明可能性。御社で説明できる資料があれば助かります。」 |
| **ズン** | 「**白鷗様 IT 部門長様向けに security PoC + AI explainability の brief を 1 週間以内に**【3】。それに合わせて Timeline は 7 月末→ 8 月中旬に余裕を持たせる案も併せてご提案します。」 |

📝 **Ghi chú:**
- 【1】**「もう少し詳しく…」** = câu open-ended để khách elaborate. Tránh closed question (yes/no).
- 【2】**「具体的にどのあたり」** — đào pain xuống level operational. Khách Nhật thường share khi đã build trust.
- 【3】**Quay constraint thành solution** — biết IT lead lo, đề xuất security brief + dời timeline → tăng cơ hội稟議 pass.

---

## 🎯 Câu chốt

> **「『ちょっと』『少し』『議論があって』はredflag。即押さない、もう少し詳しくお聞かせください。」**
>
> *"ちょっと" / "少し" / "議論があって" = red flag. KHÔNG bỏ qua, hỏi thêm.*

---

## ⚠ Tránh

- "ちょっと" 聞き流す → 3 週後 surprise
- 詰問 tone "なんでですか？" → khách close down. Dùng "もう少し詳しく…"
- Constraint ra rồi mà push schedule cứng → tone của bạn thành "không nghe"
- Quên propose solution sau khi đào → discovery thuần info gathering, không value-add

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 隠れた制約 | かくれたせいやく | Constraint ẩn |
| 議論 | ぎろん | Bàn luận / disagreement |
| 慎重 | しんちょう | Thận trọng |
| 漏洩リスク | ろうえいリスク | Risk rò rỉ |
| 説明可能性 | せつめいかのうせい | Explainability |
| 余裕を持たせる | よゆうをもたせる | Để dư địa |
| 稟議の助け | りんぎのたすけ | Hỗ trợ ringi |
