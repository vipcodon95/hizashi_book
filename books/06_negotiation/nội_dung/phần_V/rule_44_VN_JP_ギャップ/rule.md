# Rule 44 — VN-JP negotiation gap / VN-JP 交渉ギャップ

> **Luận điểm.** VN style: **直接 (direct)**, "Giảm 10% thì OK?", concession 1 lần lớn. JP style: **間接 (indirect)**, 「条件面で…」「持ち帰りでも…」, concession nhỏ + reciprocal. VN BD đem direct style vào phòng JP → khách Nhật thấy 「無礼」 hoặc 「未熟」. JP exec đem indirect style sang VN → VN BD thấy "không quyết được", "vòng vo". Hizashi VN BD cần code-switch: **directness 30% lower + concession reciprocal pattern**.
>
> VN は直接、JP は間接。concession も VN は 1 回大きく、JP は小刻み reciprocal。混在せずに JP mode で運用、 VN-style memo は内部用に分離。
>
> **Liên quan:** rule 24 (譲歩交換), rule 26 (脅し対応), rule 35 (打ち切り).

---

## Bối cảnh / 場面

Phase 4 với client mới (manufacturing JP, Tokyo HQ). Tuấn Tech Lead support — Tuấn ít kinh nghiệm với JP exec, bring VN style vào. Dũng cần code-switch chính mình + coach Tuấn realtime.

---

## ❌ Hội thoại XẤU — VN direct style trong phòng JP

*直接 · 沈黙、 メモを 取る · 沈黙不安*

| Speaker | Câu |
|---------|-----|
| **JP client (松本 stand-in)** | 「価格 ¥20M はやや高い印象がございます。」 |
| **トゥアン** | 「では ¥18M でいかがですか？10% 下げます！」 |
| **JP client** | …(無言、 表情変化なし) |
| **トゥアン** | 「¥17M でも検討可能です…」 |
| **JP client** | 「…御社 内部でじっくり再検討された後、改めてご提案頂けますでしょうか。」 |
| (商談後 Slack) **JP client → Dũng の上司** | 「Tuấn さん、 concession を 2 回続けて下げました。 弊社 negotiate ratchet として **¥15M target で社内 anchor** が動いてしまいました。」 |

**Vì sao xấu:** (a) 1 phát giảm 10% = "もっと下がる" signal. JP は concession を slow + reciprocal で expect, (b) 2 連続 concession なし trade = JP 内部 anchor が ¥15M に shift, (c) 「やや高い」は JP indirect signal で「具体的説明欲しい」意図、 直接 discount ではない.

---

## ✅ Hội thoại TỐT — JP mode で運用 + Tuấn realtime coach

*2 秒 silence、 Tuấn に micro-eye signal "wait" · 具体化 · 頷き、 メモ*

| Speaker | Câu |
|---------|-----|
| **JP client** | 「価格 ¥20M はやや高い印象がございます。」 |
| **ズン** | 「ご感想ありがとうございます。**『高い』という印象の中で、特に気にされている内訳要素**【1】はございますでしょうか？AI engine 部分でしょうか、PM 体制でしょうか。」 |
| **JP client** | 「…AI engine 部分、 御社 Phase 2 比 +30% の理由を伺いたい。」 |
| **ズン** | 「Phase 2 比 +30% の内訳: customer churn prediction model 追加が +20%、SLA 99.5% → 99.95% upgrade が +10% です。**もしどちらかをスコープ外にする trade なら**【2】、 ¥18M に調整可能でございます。」 |
| **JP client** | 「なるほど、 churn prediction の必要性は社内で 議論余地あり。**持ち帰り**社内検討します。」 |
| (商談後 Slack Tuấn に) **ズン** | 「Tuấn、 JP は『高い』 ≠ 『discount せよ』。 specific reason を indirect に asking している【3】。VN style で即 10% 下げると ratchet 動く。next time も同じ pattern で。」 |
| **トゥアン** | 「了解。沈黙 2 秒で Dũng の signal 待つ pattern 学んだ。」 |

📝 **Ghi chú:**
- 【1】**「内訳要素」 questioning** = JP indirect 「高い」 を unbundle + reframe. 即 discount せず discovery.
- 【2】**Trade 形 concession** (「if scope 外なら ¥18M」) = JP reciprocal pattern. 1 方向大幅 discount は VN style.
- 【3】**JP「高い」 4 layer 解釈**: (i) 真に高い (rare), (ii) 内訳説明欲しい (most common), (iii) 比較相手と差説明欲しい, (iv) face-saving "uncertainty" expression. Direct discount は (i) のみ正解.
- **Tuấn realtime coach** = micro-eye signal で Dũng が wait sign 送る. 商談後 debrief で深堀.

---

## 🎯 Câu chốt

> **「JP『高い』≠『discount』。先に内訳 unbundle + trade 形 reciprocal concession。VN 1 発 10% はNG。」**
>
> *JP 'cao' không phải đề nghị discount. Phải unbundle + concession dạng trade. VN giảm 10% phát = NG.*

---

## ⚠ Tránh

- 「では下げます」即決 → ratchet effect で next round もっと下げを期待される
- 2 連続 concession なし trade → 内部 anchor が大幅 shift
- 「やっぱり ¥18M で OK ですか？」直接 closing question → JP exec 「未熟」 perception
- VN style threat language ("もう limit です") → JP は relationship signal として読む、 negative
- Tuấn / junior staff coach せず realtime mistake 放置 → habit化
- VN-style memo を JP client 共有 → tone mismatch

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 直接 | ちょくせつ | Trực tiếp |
| 間接 | かんせつ | Gián tiếp |
| 内訳 | うちわけ | Cấu thành / breakdown |
| Reciprocal | レシプロカル | Có qua có lại |
| Ratchet effect | ラチェット効果 | Hiệu ứng bánh cóc (giảm rồi không lên lại) |
| Code-switch | コードスイッチ | Chuyển code |
| Unbundle | アンバンドル | Tách ra |
| Realtime coach | リアルタイムコーチ | Coach trực tiếp tại chỗ |
