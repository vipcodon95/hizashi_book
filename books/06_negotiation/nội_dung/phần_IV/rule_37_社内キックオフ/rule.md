# Rule 37 — Internal kickoff hand-off / 社内キックオフ

> **Luận điểm.** Sau ký, giai đoạn bàn giao do Tanaka PMO + Tuấn dẫn dắt — KHÔNG phải Dũng. Nhưng Dũng chịu trách nhiệm bàn giao: **(1) Tóm tắt ngữ cảnh đàm phán** (tại sao ¥17M, scope mỗi phần đến từ trade nào), **(2) Hồ sơ nhân sự phía khách** (Ōgaki trực tiếp, Tanaka chi tiết), **(3) Open promises** (mọi cam kết miệng còn nợ). Bỏ qua bàn giao → delivery team phải dò lại từ đầu, làm lại, tốn thời gian.
>
> 商談 → delivery 引き継ぎでは、価格・スコープの背景、相手 personality、口頭 commitment を文書化して PMO + Tech Lead に渡す。
>
> **Liên quan:** rule 30 (合意確認), rule 36 (post-deal挨拶), sách 04 rule 30 (持ち帰り相談).

---

## Bối cảnh / 場面

Phase 3 ký xong thứ Hai. Thứ Tư có internal kickoff: Tuấn (Tech Lead delivery), Tanaka PMO 白鷗 tham gia async, Dũng bàn giao. Nếu Dũng chỉ "đính kèm contract, có gì hỏi" → tuần thứ 2 Tuấn sẽ Slack "scope item này từ đâu ra?" và Ōgaki Slack lại Dũng → vòng xoáy leo thang.

---

## ❌ Hội thoại XẤU — bàn giao lỏng, không context

| | Vai | Câu (社内 MTG) |
|--|---------|-----|
| **L1** | **ズン** *(15分 MTG)* | 「トゥアン、Phase 3 contract attach しました。SOW 通りに進めてください。<ruby>質問<rt>しつもん</rt></ruby>あれば Slack で。」 |
| | | *Anh Tuấn, em đính kèm contract Phase 3. Cứ đi theo SOW. Có gì hỏi Slack.* |
| **L2** | **トゥアン** | 「OK、<ruby>分<rt>わ</rt></ruby>かった。」 |
| | | *OK, hiểu rồi.* |
| **L3** | (2 週間後) **トゥアン** *(Slack)* | 「ズン、SOW の **AI dashboard カスタム 1 <ruby>機能<rt>きのう</rt></ruby>** とは<ruby>具体的<rt>ぐたいてき</rt></ruby>に何？<ruby>大垣<rt>おおがき</rt></ruby>様何ご<ruby>希望<rt>きぼう</rt></ruby>？」 |
| | | *Dũng, AI dashboard custom 1 feature trong SOW cụ thể là gì? Anh Ōgaki muốn cái nào?* |
| **L4** | **ズン** *(忙しく forget)* | 「えっと、<ruby>確<rt>たし</rt></ruby>か customer churn prediction だった<ruby>気<rt>き</rt></ruby>がします…」 |
| | | *À ờ, hình như là customer churn prediction thì phải...* |
| **L5** | **トゥアン** | 「<ruby>気<rt>き</rt></ruby>がしますじゃ<ruby>困<rt>こま</rt></ruby>る。<ruby>大垣<rt>おおがき</rt></ruby>様に<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>するから、<ruby>契約<rt>けいやく</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>の context <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>教<rt>おし</rt></ruby>えて。」 |
| | | *'Hình như' là kẹt rồi. Anh hỏi thẳng anh Ōgaki, em chia sẻ hết context đàm phán đi.* |

**Vì sao xấu:** Bàn giao 15 phút + "có gì hỏi Slack" → mất ngữ cảnh. Tuấn buộc phải Slack thẳng cho Ōgaki → khách thắc mắc "あれ、ズンさん共有してないの？" → sứt mẻ lòng tin. ¥0.5M công sức mất trên việc dò lại không cần thiết.

---

## ✅ Hội thoại TỐT — 30 phút bàn giao có cấu trúc + doc

*MTG 開始 · ① context · ② personality · ③ open promises · Slack 同期*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 <ruby>内部<rt>ないぶ</rt></ruby>キックオフ、30 分です。<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダは **3 セクション**【1】: ①<ruby>交渉<rt>こうしょう</rt></ruby> context、②<ruby>白鷗<rt>はくおう</rt></ruby><ruby>側<rt>がわ</rt></ruby> personality map、③open promises。<ruby>事前<rt>じぜん</rt></ruby>に hand-off doc <ruby>共有済<rt>きょうゆうず</rt></ruby>み。<ruby>質問<rt>しつもん</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>で。」 |
| | | *Internal kickoff Phase 3, 30 phút. Agenda hôm nay 3 sections: ①Context đàm phán, ②Personality map bên Hakuō, ③Open promises. Hand-off doc đã share trước. Câu hỏi nêu trực tiếp.* |
| **ズン** | 「**<ruby>価格<rt>かかく</rt></ruby> ¥17M は Phase 2 <ruby>比<rt>ひ</rt></ruby> +24%**、<ruby>内訳<rt>うちわけ</rt></ruby>は AI レコメンド + <ruby>専任<rt>せんにん</rt></ruby> PM + dashboard customization 1 <ruby>機能<rt>きのう</rt></ruby>。trade で 2 <ruby>年契約<rt>ねんけいやく</rt></ruby>を<ruby>取<rt>と</rt></ruby>った<ruby>代<rt>か</rt></ruby>わりに、<ruby>契約期間中<rt>けいやくきかんちゅう</rt></ruby> SLA 99.9% commit。なので **SLA 99.5% に<ruby>落<rt>お</rt></ruby>とすことは<ruby>交渉的<rt>こうしょうてき</rt></ruby>に NG**【2】、<ruby>技術的<rt>ぎじゅつてき</rt></ruby>に<ruby>可能<rt>かのう</rt></ruby>でも<ruby>避<rt>さ</rt></ruby>ける。」 |
| | | *Giá ¥17M là +24% so với Phase 2. Breakdown: AI recommend + PM chuyên trách + 1 dashboard customization. Trade lấy được 2 năm contract đổi lại commit SLA 99.9% suốt kỳ. Vì vậy hạ SLA xuống 99.5% là NG về mặt đàm phán — kỹ thuật có thể làm được nhưng tránh.* |
| **ズン** | 「<ruby>大垣<rt>おおがき</rt></ruby>様 — direct、<ruby>数字主義<rt>すうじしゅぎ</rt></ruby>、<ruby>沈黙<rt>ちんもく</rt></ruby>が<ruby>長<rt>なが</rt></ruby>い (=<ruby>熟考中<rt>じゅっこうちゅう</rt></ruby>、<ruby>急<rt>せ</rt></ruby>かさない)。**<ruby>初回<rt>しょかい</rt></ruby> weekly は<ruby>厳<rt>きび</rt></ruby>しめ review される<ruby>可能性<rt>かのうせい</rt></ruby><ruby>高<rt>たか</rt></ruby>い** (rule 36 hype したら<ruby>更<rt>さら</rt></ruby>に)。Tanaka PMO — Slack-heavy、detail-oriented、async OK。Nakamura CFO は monthly executive review 1 <ruby>度<rt>ど</rt></ruby>だけ<ruby>参加<rt>さんか</rt></ruby>、<ruby>財務指標<rt>ざいむしひょう</rt></ruby><ruby>厳<rt>きび</rt></ruby>しい。」 |
| | | *Anh Ōgaki — direct, số liệu, im lặng dài (=đang nghĩ, đừng giục). Weekly đầu khả năng cao bị review chặt (rule 36 hype thì còn chặt hơn). Anh Tanaka PMO — Slack nhiều, chi tiết, async OK. Anh Nakamura CFO chỉ join monthly executive review 1 lần, chỉ số tài chính chặt.* |
| **ズン** | 「**<ruby>口頭<rt>こうとう</rt></ruby> commitment 2 <ruby>件<rt>けん</rt></ruby>**【3】: (a) 8 <ruby>月初旬<rt>がつしょじゅん</rt></ruby>に Phase 4 scope <ruby>軽<rt>かる</rt></ruby>く discussion (binding <ruby>無<rt>な</rt></ruby>し)、(b) Tanaka PMO に<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby> dashboard preview <ruby>共有<rt>きょうゆう</rt></ruby> — これは<ruby>契約外<rt>けいやくがい</rt></ruby>サービス、<ruby>注意<rt>ちゅうい</rt></ruby>。」 |
| | | *2 commitments miệng: (a) Đầu tháng 8 thảo luận nhẹ scope Phase 4 (không binding), (b) Mỗi sáng thứ Sáu share dashboard preview cho Tanaka PMO — đây là dịch vụ ngoài contract, lưu ý.* |
| **トゥアン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。SLA 99.9% の reasoning ありがたい。<ruby>最初<rt>さいしょ</rt></ruby> sprint で reliability budget <ruby>厳<rt>きび</rt></ruby>しめに<ruby>設定<rt>せってい</rt></ruby>する。Tanaka PMO の<ruby>金曜<rt>きんよう</rt></ruby> preview は<ruby>内部<rt>ないぶ</rt></ruby> calendar <ruby>入<rt>い</rt></ruby>れる。」 |
| | | *Hiểu rồi. Reasoning SLA 99.9% rất ích. Sprint đầu anh sẽ set reliability budget chặt hơn. Preview thứ Sáu cho Tanaka PMO anh đưa vào calendar nội bộ.* |
| **田中PMO** | 「ズン様、ありがとうございました。tomorrow <ruby>朝<rt>あさ</rt></ruby>、Tuấn さんと<ruby>初回<rt>しょかい</rt></ruby> sync <ruby>設定<rt>せってい</rt></ruby>します。<ruby>引継<rt>ひきつ</rt></ruby>ぎ doc <ruby>拝見<rt>はいけん</rt></ruby>しました【4】、 personality map <ruby>助<rt>たす</rt></ruby>かります。」 |
| | | *Anh Dũng, tôi cảm ơn. Sáng mai tôi sẽ set sync đầu tiên với anh Tuấn. Em đã xem doc bàn giao, personality map rất ích ạ.* |

📝 **Ghi chú:**
- 【1】**Cấu trúc 3 phần** — context / hồ sơ nhân sự / promises. それぞれ 8-10 分.
- 【2】**「交渉的 NG」 vs 「技術的可能」** = delivery team が知らないと shortcut で SLA 落とす可能性. Tradeoff の歴史を共有.
- 【3】**口頭 commitment 必ず文書化**. 「ついで」「次回も」 は契約外でも顧客記憶。Tanaka PMO 知らないと将来 nibble (rule 29) source.
- 【4】**Pre-share doc + 同期 read** = MTG が確認の場になる、 discovery の場ではない.

---

## 🎯 Câu chốt

> **「ハンドオフ 3 セクション (context / personality / open promises) + 事前 doc 共有 = delivery team 立ち上がり -2 週間。」**
>
> *Bàn giao 3 phần + chia sẻ doc trước = delivery team khởi động sớm 2 tuần.*

---

## ⚠ Tránh

- 「contract 読んでください」 only → context loss 100%
- Hồ sơ nhân sự skip → delivery team が "なぜ Ōgaki さん厳しい" 自学。1 ヶ月コスト
- 口頭 commitment 文書化忘れ → 顧客から急に "あれは" 引用 → contract 外なのに対応せざるを得ず
- Không có buổi bàn giao, chỉ Slack DM → 文脈が散らばって後から検索できない (ngữ cảnh tản mác, sau không tra lại được)
- Sau bàn giao Dũng が delivery 質問対応続ける → trách nhiệm が曖昧, Tuấn 育たず

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
