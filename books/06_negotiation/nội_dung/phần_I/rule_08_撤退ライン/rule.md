# Rule 08 — Walk-away point / 撤退ライン

> **Luận điểm.** **Walk-away** = list cứng các điều kiện "nếu vi phạm, bỏ deal". Khác BATNA (alternative): walk-away là **ranking đỏ tuyệt đối** (giá / scope / IP / SLA / payment terms). Phải được CTO + Hương ký xác nhận trước khi đàm phán.
>
> 撤退ラインは「これを破られたら deal 不可」の絶対条件リスト。価格だけでなく scope・IP・SLA・支払条件 も含む。CTO+Hương の事前承認が必須。
>
> **Liên quan:** rule 01 (BATNA), rule 07 (alignment), rule 28 (撤退の作法).

---

## Bối cảnh / 場面

Sáng đàm phán Phase 3, sau alignment meeting. Hà CTO yêu cầu Dũng đọc lại walk-away list để confirm. Dũng chỉ nhớ giá, quên 3 điều kiện khác.

---

## ❌ Hội thoại XẤU — walk-away chỉ có giá

| Speaker | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、撤退ライン全部読み上げて。」 |
| **ズン** | 「¥15M 以下です。」 |
| **ハー CTO** | 「それだけ？IP は？SLA は？支払 net 30 か net 60 か？大垣さんが『価格 ¥18M でも、IP は白鷗側 100%』と言い出したらどうする？」 |
| **ズン** | 「えっ、それは…考えてなかったです。」 |
| **ハー CTO** | 「**価格は撤退ラインの 1 軸でしかない**。今すぐ 5 軸書き出せ。書けないなら今日は出ない。」 |

**Vì sao xấu:** Walk-away thường nghĩ chỉ là giá. Nhưng IP / SLA / payment / liability cap có thể destroy deal nhiều hơn giá. 大垣 sharp sẽ test walk-away ở 1 trong 5 trục, Dũng không có ranking đỏ → conceded sai chỗ.

---

## ✅ Hội thoại TỐT — walk-away 5 軸 với approval

| Speaker | Câu |
|---------|-----|
| **ハー CTO** | 「ズン、撤退ライン全部読み上げて。」 |
| **ズン** | 「**5 軸読み上げます**【1】。(1) **価格**: ¥15M 未満は撤退。(2) **IP**: ベース技術の所有権は弊社、white-label OK だが core IP 譲渡は撤退条件。(3) **SLA**: 99.5% 以下は受けない、その下は罰則賠償リスクが粗利を超える。(4) **支払**: net 60 まで OK、net 90 以上は撤退。(5) **責任上限**: 契約金額の 100% 超えは撤退【2】。」 |
| **ハー CTO** | 「IP の white-label と core IP の境界は？」 |
| **ズン** | 「白鷗向けカスタマイズ部分は white-label OK。AI レコメンドエンジン本体・モデルパラメータは core IP として留保【3】。これフオン副部長 + ハー CTO 両者承認済みです (Slack 昨日)。」 |
| **ハー CTO** | 「OK、5 軸どれか破られたら『弊社 CTO に確認させてください』で持ち帰り。その場で yes は絶対言わない。」 |

📝 **Ghi chú:**
- 【1】**5 軸 walk-away** — 価格 / IP / SLA / 支払 / 責任上限. Một số vụ thêm: 競業避止、再委託禁止 etc.
- 【2】**責任上限 (liability cap)** — thường = 契約金額の 100%. Khách JP đôi khi đòi unlimited → walk-away ngay.
- 【3】**Core IP vs white-label** — định nghĩa rõ ranh giới. AI engine bản thể vs customization layer.

---

## 🎯 Câu chốt

> **「撤退ラインは価格1軸ではなく5軸 (価格・IP・SLA・支払・責任) で持つ。CTO 承認必須。」**
>
> *Walk-away không chỉ là giá — 5 trục: giá / IP / SLA / payment / liability. CTO bắt buộc duyệt.*

---

## ⚠ Tránh

- Walk-away chỉ có giá → bị bypass qua IP / SLA
- Walk-away không có evidence approval → tới giờ G CTO không backup
- Đàm phán ad-hoc thêm walk-away mới trong phòng → mất uy tín
- Cho khách thấy walk-away list ("đây là red lines của em") → là tactical mistake, walk-away là internal info

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 撤退ライン | てったいライン | Walk-away line |
| 知財 / IP | ちざい | Intellectual Property |
| 所有権 | しょゆうけん | Quyền sở hữu |
| white-label | howaitorēberu | OEM / nhãn trắng |
| 罰則賠償 | ばっそくばいしょう | Penalty / damages |
| 支払条件 | しはらいじょうけん | Điều kiện thanh toán |
| 責任上限 | せきにんじょうげん | Liability cap |
| 競業避止 | きょうぎょうひし | Non-compete |
