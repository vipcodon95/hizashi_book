# Rule 44 — VN-JP negotiation gap / VN-JP 交渉ギャップ

> **Luận điểm.** VN style: **直接 (direct)**, "Giảm 10% thì OK?", concession 1 lần lớn. JP style: **間接 (indirect)**, 「条件面で…」「持ち帰りでも…」, concession nhỏ + reciprocal. VN BD đem direct style vào phòng JP → khách Nhật thấy 「無礼」 hoặc 「未熟」. JP exec đem indirect style sang VN → VN BD thấy "không quyết được", "vòng vo". Hizashi VN BD cần chuyển đổi phong cách: **directness 30% lower + concession reciprocal pattern**.
>
> VN は直接、JP は間接。concession も VN は 1 回大きく、JP は小刻み reciprocal。混在せずに JP mode で運用、 VN-style memo は内部用に分離。
>
> **Liên quan:** rule 24 (譲歩交換), rule 26 (脅し対応), rule 35 (打ち切り).

---

## Bối cảnh / 場面

Phase 4 với client mới (manufacturing JP, Tokyo HQ). Tuấn Tech Lead support — Tuấn ít kinh nghiệm với JP exec, bring VN style vào. Dũng cần chuyển đổi phong cách chính mình + coach Tuấn realtime.

---

## ❌ Hội thoại XẤU — VN direct style trong phòng JP

*直接 · 沈黙、 メモを 取る · 沈黙不安*

| Vai | Câu |
|---------|-----|
| **JP client (松本 stand-in)** | 「<ruby>価格<rt>かかく</rt></ruby> ¥20M はやや<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>がございます。」 |
|  | *Giá ¥20M hơi tạo cảm giác cao ạ.* |
| **トゥアン** | 「では ¥18M でいかがですか？10% <ruby>下<rt>さ</rt></ruby>げます！」 |
|  | *Vậy ¥18M có được không ạ? Em giảm 10%!* |
| **JP client** | …(<ruby>無言<rt>むごん</rt></ruby>、 <ruby>表情変化<rt>ひょうじょうへんか</rt></ruby>なし) |
|  | *(Im lặng, ghi note, không biến sắc)* |
| **トゥアン** | 「¥17M でも<ruby>検討可能<rt>けんとうかのう</rt></ruby>です…」 |
|  | *¥17M cũng xem xét được ạ...* |
| **JP client** | 「…<ruby>御社<rt>おんしゃ</rt></ruby> <ruby>内部<rt>ないぶ</rt></ruby>でじっくり<ruby>再検討<rt>さいけんとう</rt></ruby>された<ruby>後<rt>あと</rt></ruby>、<ruby>改<rt>あらた</rt></ruby>めてご<ruby>提案<rt>ていあん</rt></ruby><ruby>頂<rt>いただ</rt></ruby>けますでしょうか。」 |
|  | *Bên em sau khi cân nhắc kỹ trong nội bộ, đề xuất lại giúp tôi được không.* |
| (商談後 Slack) **JP client → Dũng の上司** | 「Tuấn さん、 concession を 2 <ruby>回<rt>かい</rt></ruby><ruby>続<rt>つづ</rt></ruby>けて<ruby>下<rt>さ</rt></ruby>げました。 <ruby>弊社<rt>へいしゃ</rt></ruby> negotiate ratchet として **¥15M target で<ruby>社内<rt>しゃない</rt></ruby> anchor** が<ruby>動<rt>うご</rt></ruby>いてしまいました。」 |
|  | *Anh Tuấn giảm liên tiếp 2 lần. Bên tôi ratchet trong đàm phán, anchor nội bộ đã dịch xuống mức ¥15M.* |

**Vì sao xấu:** (a) 1 phát giảm 10% = "もっと下がる" signal. JP は concession を slow + reciprocal で expect, (b) 2 連続 concession なし trade = JP 内部 anchor が ¥15M に shift, (c) 「やや高い」は JP indirect signal で「具体的説明欲しい」意図、 直接 discount ではない.

---

## ✅ Hội thoại TỐT — JP mode で運用 + Tuấn realtime coach

*2 秒 silence、 Tuấn に micro-eye signal "wait" · 具体化 · 頷き、 メモ*

| Vai | Câu |
|---------|-----|
| **JP client** | 「<ruby>価格<rt>かかく</rt></ruby> ¥20M はやや<ruby>高<rt>たか</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>がございます。」 |
|  | *Giá ¥20M hơi tạo cảm giác cao ạ.* |
| **ズン** | 「ご<ruby>感想<rt>かんそう</rt></ruby>ありがとうございます。**『<ruby>高<rt>たか</rt></ruby>い』という<ruby>印象<rt>いんしょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で、<ruby>特<rt>とく</rt></ruby>に<ruby>気<rt>き</rt></ruby>にされている<ruby>内訳要素<rt>うちわけようそ</rt></ruby>**【1】はございますでしょうか？AI engine <ruby>部分<rt>ぶぶん</rt></ruby>でしょうか、PM <ruby>体制<rt>たいせい</rt></ruby>でしょうか。」 |
|  | *Em cảm ơn cảm nhận của anh ạ. Trong cảm nhận 'cao' đó, có phần breakdown nào anh đặc biệt quan tâm không ạ? Phần AI engine hay phần cơ chế PM ạ?* |
| **JP client** | 「…AI engine <ruby>部分<rt>ぶぶん</rt></ruby>、 <ruby>御社<rt>おんしゃ</rt></ruby> Phase 2 <ruby>比<rt>ひ</rt></ruby> +30% の<ruby>理由<rt>りゆう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>いたい。」 |
|  | *Phần AI engine, anh muốn nghe lý do +30% so với Phase 2 bên em.* |
| **ズン** | 「Phase 2 <ruby>比<rt>ひ</rt></ruby> +30% の<ruby>内訳<rt>うちわけ</rt></ruby>: customer churn prediction model <ruby>追加<rt>ついか</rt></ruby>が +20%、SLA 99.5% → 99.95% upgrade が +10% です。**もしどちらかをスコープ<ruby>外<rt>がい</rt></ruby>にする trade なら**【2】、 ¥18M に<ruby>調整可能<rt>ちょうせいかのう</rt></ruby>でございます。」 |
|  | *Breakdown +30% so với Phase 2: thêm model customer churn prediction là +20%, upgrade SLA 99.5% → 99.95% là +10%. Nếu mình trade bằng cách đưa 1 trong 2 ra ngoài scope thì có thể điều chỉnh xuống ¥18M ạ.* |
| **JP client** | 「なるほど、 churn prediction の<ruby>必要性<rt>ひつようせい</rt></ruby>は<ruby>社内<rt>しゃない</rt></ruby>で <ruby>議論余地<rt>ぎろんよち</rt></ruby>あり。**<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り**<ruby>社内検討<rt>しゃないけんとう</rt></ruby>します。」 |
|  | *Hiểu rồi, mức độ cần thiết của churn prediction có dư địa thảo luận nội bộ. Anh mang về xem.* |
| (商談後 Slack Tuấn に) **ズン** | 「Tuấn、 JP は『<ruby>高<rt>たか</rt></ruby>い』 ≠ 『discount せよ』。 specific reason を indirect に asking している【3】。VN style で<ruby>即<rt>そく</rt></ruby> 10% <ruby>下<rt>さ</rt></ruby>げると ratchet <ruby>動<rt>うご</rt></ruby>く。next time も<ruby>同<rt>おな</rt></ruby>じ pattern で。」 |
|  | *Tuấn, JP 'cao' KHÔNG phải 'giảm đi'. Họ hỏi gián tiếp specific reason. Style VN giảm 10% phát thì ratchet xảy ra. Lần sau cùng pattern này.* |
| **トゥアン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。<ruby>沈黙<rt>ちんもく</rt></ruby> 2 <ruby>秒<rt>びょう</rt></ruby>で Dũng の signal <ruby>待<rt>ま</rt></ruby>つ pattern <ruby>学<rt>まな</rt></ruby>んだ。」 |
|  | *Hiểu rồi. Anh học được pattern 'silence 2 giây chờ signal Dũng'.* |

📝 **Ghi chú:**
- 【1】**「内訳要素」 questioning** = JP indirect 「高い」 を unbundle + reframe. 即 discount せず discovery.
- 【2】**Trade 形 concession** (「if scope 外なら ¥18M」) = JP reciprocal pattern. 1 方向大幅 discount は VN style.
- 【3】**JP「高い」 4 layer 解釈**: (i) 真に高い (rare), (ii) 内訳説明欲しい (most common), (iii) 比較相手と差説明欲しい, (iv) face-saving "uncertainty" expression. Direct discount は (i) のみ正解.
- **Tuấn realtime coach** = micro-eye signal で Dũng が wait sign 送る. 商談後 debrief で深堀.

---

## 🎯 Câu chốt

> **「JP『高い』≠『discount』。先に内訳 unbundle + trade 形 reciprocal concession。VN 1 発 10% はNG。」**
>
> *JP 'cao' không phải đề nghị giảm giá. Phải unbundle + concession dạng trade. VN giảm 10% phát = NG.*

---

## ⚠ Tránh

- 「では下げます」即決 → hiệu ứng leo thang một chiều (ratchet effect) で next round もっと下げを期待される
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
