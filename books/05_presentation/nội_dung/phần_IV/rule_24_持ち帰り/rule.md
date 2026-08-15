# Rule 24 — Mang về xem xét cho câu chưa biết / 不明事項の持ち帰り

> **Luận điểm.** Câu hỏi không biết → **đừng đoán bừa**. Công thức Nhật chuẩn: 「申し訳ございません、その点は **持ち帰って確認** させていただきます。**〇日までに** ご回答いたします」. **Bắt buộc hạn chót cụ thể** + ghi chép tại chỗ + theo dõi phản hồi đúng hẹn. Đoán bừa = mất uy tín trầm trọng hơn nói "không biết".
>
> 不明事項は推測せず「持ち帰って確認＋〇日まで回答」が標準。Deadline 必須。Honest 持ち帰り＞いい加減な推測。
>
> **Liên quan:** rule 23 (LASR), rule 28 (email phản hồi sau buổi). Sách 03 rule 35 (gijiroku — biên bản theo dõi), Sách 04 rule 30 (持ち帰り基本).

---

## Bối cảnh / 場面

Q&A Phase 3. Anh Ōgaki hỏi câu technical chi tiết về protocol tích hợp API với hệ thống legacy của 白鷗. Dũng không nắm sâu → 2 lựa chọn: đoán bừa hay 持ち帰り.

---

## Hội thoại XẤU — đoán bừa + không hạn chót

*không biết, đoán · ấn tượng: không đáng tin*

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>レガシーの SOAP API、Phase 3 で REST に<ruby>統合<rt>とうごう</rt></ruby>できますか？<ruby>認証<rt>にんしょう</rt></ruby>は OAuth 2.0 ですが<ruby>対応可能<rt>たいおうかのう</rt></ruby>ですか？」 <br/>*SOAP API legacy bên chúng tôi, Phase 3 có tích hợp được sang REST không? Auth OAuth 2.0, có xử lý được không?* |
| **ズン** | 「えっと、たぶんできると思います。OAuth 2.0 は<ruby>標準<rt>ひょうじゅん</rt></ruby>なので…」 <br/>*Ờ, em nghĩ chắc làm được ạ. OAuth 2.0 là chuẩn nên...* |
| **大垣** | 「『たぶん』ですか？OAuth 2.0 のどのフロー<ruby>対応<rt>たいおう</rt></ruby>ですか？」 <br/>*「Chắc」 à? Flow OAuth 2.0 nào hỗ trợ?* |
| **ズン** | 「あ、それは…<ruby>後<rt>あと</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>します…」 *(không hạn chót)* <br/>*À, cái đó... em sẽ kiểm tra sau ạ...* |
| **大垣** | 「…<ruby>分<rt>わ</rt></ruby>かりました、<ruby>回答<rt>かいとう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちします。」 <br/>*...Hiểu rồi, tôi đợi câu trả lời.* |

**Vì sao xấu:** "たぶん" = đoán bừa không cơ sở. Khách kỹ thuật đặt câu hỏi sâu thêm → lộ ngay. "後で確認" không hạn chót = lời hứa mơ hồ → khách không biết khi nào có câu trả lời → ấn tượng "không đáng tin".

---

## Hội thoại TỐT — thành thật 持ち帰り + hạn chót + ghi chép

| Vai | Câu |
|---------|-----|
| **大垣** | 「<ruby>弊社<rt>へいしゃ</rt></ruby>レガシーの SOAP API、Phase 3 で REST に<ruby>統合<rt>とうごう</rt></ruby>できますか？<ruby>認証<rt>にんしょう</rt></ruby>は OAuth 2.0 ですが<ruby>対応可能<rt>たいおうかのう</rt></ruby>ですか？」 <br/>*SOAP API legacy bên chúng tôi, Phase 3 có tích hợp được sang REST không? Auth OAuth 2.0, có xử lý được không?* |
| **ズン** | 「**ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます**。**<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと**、SOAP→REST <ruby>統合<rt>とうごう</rt></ruby>の technical detail は **<ruby>私<rt>わたし</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>で<ruby>即答<rt>そくとう</rt></ruby>できかねます**【1】。」 <br/>*Em cảm ơn câu hỏi của anh ạ. Em xin nói thẳng ạ — chi tiết technical về tích hợp SOAP→REST em không thể trả lời ngay tại chỗ ạ.* |
| **ズン** | 「**<ruby>弊社<rt>へいしゃ</rt></ruby> CTO ハー** に<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、**<ruby>今週金曜<rt>こんしゅうきんよう</rt></ruby> 17時までに** メールで<ruby>詳細回答<rt>しょうさいかいとう</rt></ruby>させていただきます。**OAuth 2.0 のフロー** も<ruby>併<rt>あわ</rt></ruby>せて<ruby>確認<rt>かくにん</rt></ruby>いたします【2】。」 — ghi chép vào sổ tay <br/>*Em sẽ xác nhận với anh Hà CTO bên em, và phản hồi chi tiết qua email trước 17h thứ Sáu tuần này ạ. Em sẽ kiểm tra thêm luồng OAuth 2.0 luôn ạ.* |
| **ズン** | 「**お<ruby>時間<rt>じかん</rt></ruby> 3<ruby>営業日<rt>えいぎょうび</rt></ruby>いただいて** よろしいでしょうか？」【3】 <br/>*Cho em xin 3 ngày làm việc được không ạ?* |
| **大垣** | 「<ruby>結構<rt>けっこう</rt></ruby>です、お<ruby>待<rt>ま</rt></ruby>ちします。<ruby>技術詳細<rt>ぎじゅつしょうさい</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>了解<rt>りょうかい</rt></ruby>です。」 <br/>*Được, tôi đợi. Chi tiết technical mang về xem xét, OK.* |
| **ズン** | 「ありがとうございます。**<ruby>期限内<rt>きげんない</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずご<ruby>回答<rt>かいとう</rt></ruby>いたします**。」 <br/>*Em cảm ơn ạ. Em xin chắc chắn phản hồi đúng hẹn ạ.* |

📝 **Ghi chú:**
- 【1】**「即答できかねます」** — khiêm tốn + trang trọng. Tốt hơn "わかりません". 「〜かねます」 = "không thể (do hoàn cảnh)" → từ chối lịch sự.
- 【2】**Deadline cụ thể + ai xác nhận + định dạng phản hồi** — 3 yếu tố bắt buộc của 持ち帰り. Ghi chép tại chỗ → khách thấy mình nghiêm túc.
- 【3】**「お時間〇営業日いただいて」** — đề nghị hạn chót + xin phép. Khách có thể thương lượng rút ngắn hơn nếu gấp.

---

## Câu chốt

> **「<ruby>即答<rt>そくとう</rt></ruby>できかねます。〇<ruby>日<rt>にち</rt></ruby>までに、〇〇に<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、〇〇でご<ruby>回答<rt>かいとう</rt></ruby>いたします。」**
>
> *Thành thật "không thể trả lời ngay" + hạn chót + người xác nhận + định dạng phản hồi.*

---

## Tránh

- "たぶん…と思います" đoán bừa → khách hỏi sâu thêm là vỡ
- "後で確認します" không hạn chót → mơ hồ, ấn tượng không nghiêm túc
- "わかりません" cộc → thiếu chuyên nghiệp. Dùng 「即答できかねます」 / 「持ち帰らせていただきます」
- 持ち帰り xong quên theo dõi phản hồi → mất uy tín toàn bộ (xem rule 28)
- Hứa hạn chót không khả thi ("明日まで") khi cần xác nhận nhiều bên → trễ hẹn còn tệ hơn

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 持ち帰る | もちかえる | — | Mang về (xem xét) |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 即答 | そくとう | TỨC ĐÁP | Trả lời ngay |
| 〜かねます | 〜かねます | — | Không thể (formal) |
| 営業日 | えいぎょうび | DOANH NGHIỆP NHẬT | Ngày làm việc |
| 期限 | きげん | KỲ HẠN | Hạn |
| 認証 | にんしょう | NHẬN CHỨNG | Xác thực |
| 統合 | とうごう | THỐNG HỢP | Tích hợp |
