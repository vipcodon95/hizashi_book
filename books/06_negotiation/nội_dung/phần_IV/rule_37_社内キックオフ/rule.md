# Rule 37 — Bàn giao nội bộ khởi động dự án / 社内キックオフ

> **Luận điểm.** Sau ký, giai đoạn bàn giao do Tanaka PMO + Tuấn dẫn dắt — KHÔNG phải Dũng. Nhưng Dũng chịu trách nhiệm bàn giao: **(1) Tóm tắt bối cảnh đàm phán** (tại sao ¥17M, mỗi phần phạm vi đến từ điều kiện đổi nào), **(2) Hồ sơ nhân sự phía khách** (Ōgaki trực tiếp, Tanaka chi tiết), **(3) Cam kết miệng còn nợ** (mọi lời hứa chưa đưa vào hợp đồng). Bỏ qua bàn giao → nhóm thực thi phải dò lại từ đầu, làm lại, tốn thời gian.
>
> 商談 → delivery 引き継ぎでは、価格・スコープの背景、相手 personality、口頭 commitment を文書化して PMO + Tech Lead に渡す。
>
> **Liên quan:** rule 30 (合意確認), rule 36 (post-deal挨拶), sách 04 rule 30 (持ち帰り相談).

---

## Bối cảnh / 場面

Phase 3 ký xong thứ Hai. Thứ Tư có buổi khởi động nội bộ: Tuấn (Trưởng kỹ thuật thực thi), Tanaka PMO 白鷗 tham gia không đồng bộ, Dũng bàn giao. Nếu Dũng chỉ "đính kèm hợp đồng, có gì hỏi" → tuần thứ 2 Tuấn sẽ Slack "mục phạm vi này từ đâu ra?" và Ōgaki Slack lại Dũng → vòng xoáy leo thang.

---

## Hội thoại XẤU — bàn giao lỏng, không bối cảnh

| Vai | Câu (社内 MTG) |
|---------|-----|
| **ズン** *(15分 MTG)* | 「トゥアン、Phase 3 contract attach しました。SOW 通りに進めてください。<ruby>質問<rt>しつもん</rt></ruby>あれば Slack で。」 |
| | *Anh Tuấn, em đính kèm hợp đồng Phase 3. Cứ đi theo SOW. Có gì hỏi Slack.* |
| **トゥアン** | 「OK、<ruby>分<rt>わ</rt></ruby>かった。」 |
| | *OK, hiểu rồi.* |
| (2 週間後) **トゥアン** *(Slack)* | 「ズン、SOW の **AI dashboard カスタム 1 <ruby>機能<rt>きのう</rt></ruby>** とは<ruby>具体的<rt>ぐたいてき</rt></ruby>に何？<ruby>大垣<rt>おおがき</rt></ruby>様何ご<ruby>希望<rt>きぼう</rt></ruby>？」 |
| | *Dũng, AI bảng theo dõi tùy chỉnh 1 tính năng trong SOW cụ thể là gì? Anh Ōgaki muốn cái nào?* |
| **ズン** *(忙しく forget)* | 「えっと、<ruby>確<rt>たし</rt></ruby>か customer churn prediction だった<ruby>気<rt>き</rt></ruby>がします…」 |
| | *À ờ, hình như là dự đoán khách rời bỏ thì phải...* |
| **トゥアン** | 「<ruby>気<rt>き</rt></ruby>がしますじゃ<ruby>困<rt>こま</rt></ruby>る。<ruby>大垣<rt>おおがき</rt></ruby>様に<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>するから、<ruby>契約<rt>けいやく</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>の context <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>教<rt>おし</rt></ruby>えて。」 |
| | *'Hình như' là kẹt rồi. Anh hỏi thẳng anh Ōgaki, em chia sẻ hết bối cảnh đàm phán đi.* |

**Vì sao xấu:** Bàn giao 15 phút + "có gì hỏi Slack" → mất bối cảnh. Tuấn buộc phải Slack thẳng cho Ōgaki → khách thắc mắc "あれ、ズンさん共有してないの？" → sứt mẻ lòng tin. ¥0.5M công sức mất trên việc dò lại không cần thiết.

---

## Hội thoại TỐT — 30 phút bàn giao có cấu trúc + doc

*MTG 開始 · ① context · ② personality · ③ open promises · Slack 同期*

| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 3 <ruby>内部<rt>ないぶ</rt></ruby>キックオフ、30 分です。<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダは **3 phần**【1】: ①<ruby>交渉<rt>こうしょう</rt></ruby> bối cảnh、②<ruby>白鷗<rt>はくおう</rt></ruby><ruby>側<rt>がわ</rt></ruby> sơ đồ nhân sự、③cam kết miệng còn nợ。<ruby>事前<rt>じぜん</rt></ruby>に tài liệu bàn giao <ruby>共有済<rt>きょうゆうず</rt></ruby>み。<ruby>質問<rt>しつもん</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>で。」 |
| | | *Khởi động nội bộ Phase 3, 30 phút. Nội dung hôm nay 3 phần: ①Bối cảnh đàm phán, ②Sơ đồ nhân sự bên Hakuō, ③Cam kết miệng còn nợ. Tài liệu bàn giao đã chia sẻ trước. Câu hỏi nêu trực tiếp.* |
| **ズン** | 「**<ruby>価格<rt>かかく</rt></ruby> ¥17M は Phase 2 <ruby>比<rt>ひ</rt></ruby> +24%**、<ruby>内訳<rt>うちわけ</rt></ruby>は AI レコメンド + <ruby>専任<rt>せんにん</rt></ruby> PM + dashboard customization 1 <ruby>機能<rt>きのう</rt></ruby>。trade で 2 <ruby>年契約<rt>ねんけいやく</rt></ruby>を<ruby>取<rt>と</rt></ruby>った<ruby>代<rt>か</rt></ruby>わりに、<ruby>契約期間中<rt>けいやくきかんちゅう</rt></ruby> SLA 99.9% commit。なので **SLA 99.5% に<ruby>落<rt>お</rt></ruby>とすことは<ruby>交渉的<rt>こうしょうてき</rt></ruby>に NG**【2】、<ruby>技術的<rt>ぎじゅつてき</rt></ruby>に<ruby>可能<rt>かのう</rt></ruby>でも<ruby>避<rt>さ</rt></ruby>ける。」 |
| | | *Giá ¥17M là +24% so với Phase 2. Cấu thành: AI đề xuất + PM chuyên trách + 1 dashboard customization. Điều kiện đổi lấy được 2 năm hợp đồng, đổi lại cam kết SLA 99.9% suốt kỳ. Vì vậy hạ SLA xuống 99.5% là NG về mặt đàm phán — kỹ thuật có thể làm được nhưng tránh.* |
| **ズン** | 「<ruby>大垣<rt>おおがき</rt></ruby>様 — trực tiếp、<ruby>数字主義<rt>すうじしゅぎ</rt></ruby>、khoảng im lặng dài (=<ruby>熟考中<rt>じゅっこうちゅう</rt></ruby>、đừng giục)。**<ruby>初回<rt>しょかい</rt></ruby> weekly は<ruby>厳<rt>きび</rt></ruby>しめ review される<ruby>可能性<rt>かのうせい</rt></ruby><ruby>高<rt>たか</rt></ruby>い** (rule 36 phô trương したら<ruby>更<rt>さら</rt></ruby>に)。Tanaka PMO — Slack nhiều、chi tiết、làm không đồng bộ OK。Nakamura CFO は monthly executive review 1 <ruby>度<rt>ど</rt></ruby>だけ<ruby>参加<rt>さんか</rt></ruby>、<ruby>財務指標<rt>ざいむしひょう</rt></ruby><ruby>厳<rt>きび</rt></ruby>しい。」 |
| | | *Anh Ōgaki — trực tiếp, coi trọng số liệu, khoảng im lặng dài (=đang nghĩ, đừng giục). Họp tuần đầu khả năng cao bị kiểm tra chặt (rule 36 phô trương thì còn chặt hơn). Anh Tanaka PMO — Slack nhiều, chi tiết, làm việc không đồng bộ OK. Anh Nakamura CFO chỉ tham gia họp xét duyệt tháng 1 lần, chỉ số tài chính chặt.* |
| **ズン** | 「**<ruby>口頭<rt>こうとう</rt></ruby> cam kết miệng 2 <ruby>件<rt>けん</rt></ruby>**【3】: (a) 8 <ruby>月初旬<rt>がつしょじゅん</rt></ruby>に Phase 4 phạm vi <ruby>軽<rt>かる</rt></ruby>く trao đổi (không ràng buộc)、(b) Tanaka PMO に<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby> xem trước bảng theo dõi <ruby>共有<rt>きょうゆう</rt></ruby> — これは<ruby>契約外<rt>けいやくがい</rt></ruby>サービス、<ruby>注意<rt>ちゅうい</rt></ruby>。」 |
| | | *2 cam kết miệng: (a) Đầu tháng 8 trao đổi nhẹ về phạm vi Phase 4 (không ràng buộc), (b) Mỗi thứ Sáu chia sẻ xem trước bảng theo dõi cho Tanaka PMO — đây là dịch vụ ngoài hợp đồng, lưu ý.* |
| **トゥアン** | 「<ruby>了解<rt>りょうかい</rt></ruby>。SLA 99.9% の reasoning ありがたい。<ruby>最初<rt>さいしょ</rt></ruby> sprint で reliability budget <ruby>厳<rt>きび</rt></ruby>しめに<ruby>設定<rt>せってい</rt></ruby>する。Tanaka PMO の<ruby>金曜<rt>きんよう</rt></ruby> preview は<ruby>内部<rt>ないぶ</rt></ruby> calendar <ruby>入<rt>い</rt></ruby>れる。」 |
| | | *Hiểu rồi. Lý do SLA 99.9% rất hữu ích. Vòng đầu anh sẽ đặt ngưỡng độ tin cậy chặt hơn. Xem trước thứ Sáu cho Tanaka PMO anh đưa vào lịch nội bộ.* |
| **田中PMO** | 「ズン様、ありがとうございました。tomorrow <ruby>朝<rt>あさ</rt></ruby>、Tuấn さんと<ruby>初回<rt>しょかい</rt></ruby> sync <ruby>設定<rt>せってい</rt></ruby>します。<ruby>引継<rt>ひきつ</rt></ruby>ぎ doc <ruby>拝見<rt>はいけん</rt></ruby>しました【4】、 personality map <ruby>助<rt>たす</rt></ruby>かります。」 |
| | | *Anh Dũng, tôi cảm ơn. Sáng mai tôi sẽ đặt lịch đồng bộ đầu tiên với anh Tuấn. Em đã xem tài liệu bàn giao, hồ sơ nhân sự rất hữu ích ạ.* |

📝 **Ghi chú:**
- 【1】**Cấu trúc 3 phần** — bối cảnh / hồ sơ nhân sự / cam kết miệng. Mỗi phần 8-10 phút.
- 【2】**「NG về mặt đàm phán」 vs 「技術的可能」** = nhóm thực thi không biết có thể cắt tắt làm SLA xuống. Chia sẻ lịch sử đánh đổi.
- 【3】**Cam kết miệng phải ghi thành văn bản**. 「ついで」「次回も」 nằm ngoài hợp đồng nhưng khách nhớ. Tanaka PMO không biết sẽ là nguồn gốc yêu cầu nhỏ xin thêm sau này (rule 29).
- 【4】**Chia sẻ tài liệu trước + đọc đồng bộ trong họp** = cuộc họp để xác nhận, không phải để khám phá lại.

---

## Câu chốt

> **「Bàn giao 3 phần (bối cảnh / nhân sự / cam kết miệng) + 事前 tài liệu 共有 = delivery team 立ち上がり -2 週間。」**
>
> *Bàn giao 3 phần + chia sẻ tài liệu trước = nhóm thực thi khởi động sớm 2 tuần.*

---

## Tránh

- Chỉ "đọc hợp đồng đi" → mất 100% bối cảnh
- Bỏ sơ đồ nhân sự → nhóm thực thi tự tìm hiểu "tại sao anh Ōgaki nghiêm". Tốn 1 tháng
- Quên ghi lại cam kết miệng → khách đột ngột trích dẫn "nhớ cái đó" → nằm ngoài hợp đồng nhưng vẫn phải xử lý
- Không có buổi bàn giao, chỉ Slack DM → bối cảnh tản mác, sau không tra lại được
- Sau bàn giao Dũng tiếp tục trả lời câu hỏi thực thi → trách nhiệm mơ hồ, Tuấn không phát triển được

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| キックオフ | キックオフ | — | Khởi động dự án |
| 引き継ぎ | ひきつぎ | — | Bàn giao |
| 内訳 | うちわけ | NỘI DỊCH | Cấu thành / chi tiết phân bổ |
| 専任 | せんにん | CHUYÊN NHẬM | Chuyên trách |
| cam kết miệng | コミットメント | — | Cam kết |
| ngân sách độ tin cậy | リライアビリティバジェット | — | Ngân sách độ tin cậy |
| 同期 | どうき | ĐỒNG KỲ | Đồng bộ |
