# Sách BrSE năm 1 · T8. Chuẩn bị ra mắt Hizashi v1.0 — PR + ProductHunt + influencer (v1.0ローンチ準備)

> **Mục tiêu nhân vật:** Đại 25 tuổi, vừa bắt đầu BD BrSE 3 ngày/tuần (1/10/2030), 4 ngày còn lại dồn cho Hizashi v1.0 ra mắt 11/11. Học các mẫu hội thoại của founder chuẩn bị launch: (1) chào hỏi ngày đầu vai trò mới với sếp Tanaka, (2) brainstorm kế hoạch ra mắt với cofounder qua Slack, (3) email mời hợp tác influencer JP keigo, (4) trao đổi với phóng viên TechCrunch JP qua LINE, (5) báo cáo Stripe payment go-live + stress test, (6) phỏng vấn TechCrunch JP trực tiếp 60 phút, (7) đưa Hana đi nhà trẻ sáng thứ Năm + hội thoại cô giáo.

---

## Bối cảnh

Tháng 10-11 năm 2030. 1/10 Đại bắt đầu vai trò Business Development BrSE 3 ngày/tuần (Hai-Tư-Sáu). Hizashi 350 paid user cuối T7, MRR ¥343k, burn rate ¥1.32M, runway 18 tháng. v1.0 launch target 11/11/2030 (1.1.1 = ngày của bắt đầu mới). Cofounder: Tuấn (CTO ở Osaka) + Aiko (designer Nhật ở Tokyo, remote). Mai làm hướng dẫn viên 3 buổi/tuần, Hana 24 tháng vừa qua sinh nhật 2 tuổi tuần trước. Chương này tập trung mẫu câu của founder chuẩn bị ra mắt sản phẩm: email mời hợp tác + trao đổi báo chí + báo cáo tiến độ kỹ thuật.

---

## Tình huống 1 — Office Thanh A tầng 6 · Sáng thứ Hai 1/10 9:00, BD Day 1 chào hỏi

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンさん、おはようございます。Business Development BrSE Day 1、おめでとうございます。<br>*(Anh Nguyễn, chào sáng. Chúc mừng BD BrSE Day 1.)* |
| Đại | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>新<rt>あら</rt></ruby>たな<ruby>役職<rt>やくしょく</rt></ruby>でお<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào sáng ạ. Từ hôm nay em xin được nhờ cậy với vai trò mới. Mong tiếp tục được giúp đỡ.)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダでございます。<ruby>一<rt>いち</rt></ruby>、<ruby>新規<rt>しんき</rt></ruby>クライアントパイプラインの<ruby>確認<rt>かくにん</rt></ruby>。<ruby>二<rt>に</rt></ruby>、NTT Smart Solutions <ruby>第二期<rt>だいにき</rt></ruby><ruby>提案<rt>ていあん</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>。<ruby>三<rt>さん</rt></ruby>、ソニー<ruby>系子会社<rt>けいこがいしゃ</rt></ruby>との<ruby>初回<rt>しょかい</rt></ruby><ruby>商談<rt>しょうだん</rt></ruby>。<br>*(Agenda hôm nay. 1. Xem pipeline khách mới. 2. Chuẩn bị đề xuất phase 2 NTT Smart Solutions. 3. Họp lần đầu với công ty con của Sony.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>早速<rt>さっそく</rt></ruby><ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Em đã rõ. Mình bắt đầu ngay nhé.)* |
| Đại | (thầm tiếng Việt) Vai trò BD = kết hợp kinh doanh và kỹ thuật. Em sẽ học được rất nhiều kỹ năng khác với BrSE thuần. |

---

## Tình huống 2 — Apt Senri-chuo phòng làm việc · Tối thứ Hai 21:00, brainstorm kế hoạch v1.0 với cofounder

*Đại mở Notion chia sẻ màn hình qua Zoom. Tuấn ở apt cách 3 ga, Aiko ở Tokyo.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị! Mình có 6 tuần đến ngày ra mắt 11/11. Em đã viết bản nháp kế hoạch trên Notion. |
| Đại | (tiếng Việt) **Tuần 1-2 (1-15/10)**: Hoàn thiện tính năng v1.0 + sửa lỗi. **Tuần 3 (16-22/10)**: Tiếp cận báo chí + hợp tác influencer. **Tuần 4 (23-29/10)**: Thiết kế lại landing page + xây danh sách email. **Tuần 5 (30/10-5/11)**: Phỏng vấn TechCrunch JP + bộ tài liệu truyền thông. **Tuần 6 (6-11/11)**: Chuẩn bị D-day + cấu hình ProductHunt + ra mắt nội bộ. |
| Tuấn | (tiếng Việt) Em viết thông cáo báo chí JP+VN + kịch bản video demo kỹ thuật. Anh sẽ lo backend kiểm thử tải 10k user đồng thời + tối ưu p95 latency. |
| Aiko | (JP) <ruby>私<rt>わたし</rt></ruby>はランディングページのリデザインとメディアキット(<ruby>ロゴ<rt>ろご</rt></ruby> + <ruby>スクリーンショット<rt>すくりーんしょっと</rt></ruby> + ワンページャー)を<ruby>担当<rt>たんとう</rt></ruby>します。<ruby>五人<rt>ごにん</rt></ruby>のインフルエンサー<ruby>向<rt>む</rt></ruby>けの<ruby>素材<rt>そざい</rt></ruby>も<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Em phụ trách thiết kế lại landing page và media kit — logo, screenshot, one-pager. Cả tài liệu cho 5 influencer em cũng chuẩn bị luôn.)* |
| Đại | (tiếng Việt) Danh sách 5 đối tác em đã chuẩn bị:<br>1. **Yoshi-sensei** (YouTube 200k, giáo viên Nhật dạy người Việt)<br>2. **Phạm Hùng Linh** (YouTube 50k, công nghệ Việt tại Nhật)<br>3. **Akari** (Instagram 180k, lifestyle Nhật, vợ là người Việt)<br>4. **Sato-san** TechCrunch JP (do Anri giới thiệu)<br>5. **VietWorks Japan** (cộng đồng 30k người Việt tại Nhật) |
| Tuấn | (tiếng Việt) Em chuẩn bị email mẫu cho từng người. Mỗi người tone khác. |
| Đại | (tiếng Việt) Đúng. Yoshi-sensei dùng keigo. Phạm Hùng Linh dùng tiếng Việt thân thiện. Akari dùng JP casual. Sato dùng JP business. VietWorks dùng tiếng Việt cộng đồng. |

---

## Tình huống 3 — Apt phòng làm việc · Thứ Tư 16/10 10:00, Đại soạn email JP gửi Yoshi-sensei

*Đại ngồi máy, mở Gmail soạn email tiếng Nhật.*

| Vai | Lời thoại |
|---|---|
| Đại | (đọc lại nháp email JP)<br><br>**Subject**: <ruby>初<rt>はじ</rt></ruby>めまして / Hizashi v1.0 ローンチ<ruby>協力<rt>きょうりょく</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>い<br><br><ruby>吉田先生<rt>よしだせんせい</rt></ruby><br><br><ruby>初<rt>はじ</rt></ruby>めまして。Hizashi<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br><br><ruby>先生<rt>せんせい</rt></ruby>のYouTubeチャンネル「<ruby>吉田先生<rt>よしだせんせい</rt></ruby>のベトナム<ruby>人向<rt>じんむ</rt></ruby>け<ruby>日本語<rt>にほんご</rt></ruby>」を<ruby>三年前<rt>さんねんまえ</rt></ruby>より<ruby>拝見<rt>はいけん</rt></ruby>しております。<ruby>先生<rt>せんせい</rt></ruby>の<ruby>丁寧<rt>ていねい</rt></ruby>な<ruby>解説<rt>かいせつ</rt></ruby>に<ruby>常<rt>つね</rt></ruby>に<ruby>感銘<rt>かんめい</rt></ruby>を<ruby>受<rt>う</rt></ruby>けております。<br><br>このたび、<ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>来<rt>きた</rt></ruby>る<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>十一日<rt>じゅういちにち</rt></ruby>にHizashi v1.0を<ruby>正式<rt>せいしき</rt></ruby>ローンチする<ruby>予定<rt>よてい</rt></ruby>でございます。つきましては、<ruby>先生<rt>せんせい</rt></ruby>のチャンネルにて<ruby>本<rt>ほん</rt></ruby>アプリのレビュー<ruby>動画<rt>どうが</rt></ruby>を<ruby>掲載<rt>けいさい</rt></ruby>していただけませんでしょうか。<br><br>スポンサー<ruby>料<rt>りょう</rt></ruby>として<ruby>二十万円<rt>にじゅうまんえん</rt></ruby>、<ruby>並<rt>なら</rt></ruby>びに<ruby>一年間<rt>いちねんかん</rt></ruby>のプレミアムアカウントを<ruby>進呈<rt>しんてい</rt></ruby>させていただきます。<br><br>ご<ruby>検討<rt>けんとう</rt></ruby>のほど、<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br><br>グエン・ダイ |
| Đại | (thầm) OK. Send. |

---

## Tình huống 4 — Apt phòng làm việc · Thứ Năm 17/10 14:00, Yoshi-sensei phản hồi

| Vai | Lời thoại |
|---|---|
| Yoshi-sensei | (email JP) グエンさん、ご<ruby>連絡<rt>れんらく</rt></ruby>ありがとうございます。<ruby>素晴<rt>すば</rt></ruby>らしいご<ruby>提案<rt>ていあん</rt></ruby>です。<ruby>喜<rt>よろこ</rt></ruby>んでレビューさせていただきます。アプリのデモアカウントを<ruby>頂戴<rt>ちょうだい</rt></ruby>できますでしょうか。<br>*(Anh Nguyễn, cảm ơn anh liên hệ. Đề xuất tuyệt vời. Tôi vui lòng nhận làm review. Anh cho tôi xin tài khoản demo nhé?)* |
| Đại | (email phản hồi JP) <ruby>吉田先生<rt>よしだせんせい</rt></ruby>、ご<ruby>承諾<rt>しょうだく</rt></ruby>いただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。デモアカウントと<ruby>機能<rt>きのう</rt></ruby><ruby>説明<rt>せつめい</rt></ruby><ruby>資料<rt>しりょう</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>いたします。<ruby>動画<rt>どうが</rt></ruby><ruby>公開<rt>こうかい</rt></ruby><ruby>日<rt>び</rt></ruby>は<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>十一日<rt>じゅういちにち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか。<br>*(Sensei, cảm ơn thầy đã nhận lời. Em đính kèm tài khoản demo và tài liệu giải thích tính năng. Ngày phát video em xin lịch sáng 9 giờ ngày 11/11 ạ?)* |
| Yoshi-sensei | (email) はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>当日<rt>とうじつ</rt></ruby><ruby>朝<rt>あさ</rt></ruby>に<ruby>同時<rt>どうじ</rt></ruby><ruby>公開<rt>こうかい</rt></ruby>いたします。<br>*(Vâng, tôi đã rõ. Sẽ phát đồng thời sáng hôm đó.)* |
| Đại | (Slack #hizashi-cofounders) Yoshi-sensei đồng ý rồi! Video phát đồng thời 9:00 sáng 11/11. Tiếp cận 200k người. 1/5 đã chốt. |
| Aiko | (Slack JP) <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>残<rt>のこ</rt></ruby>り<ruby>四人<rt>よにん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Tuyệt vời! 4 người còn lại mình cố gắng nhé.)* |

---

## Tình huống 5 — Apt làm việc · Thứ Sáu 18/10 11:00, Đại nhắn LINE Phạm Hùng Linh

| Vai | Lời thoại |
|---|---|
| Đại | (LINE tiếng Việt) Chào anh Linh, em là Đại từ Hizashi. Anri-san của Eureka VC giới thiệu anh cho em. |
| Hùng Linh | (LINE) Chào Đại! Anh có nghe Anri kể về em. Founder Hizashi đỉnh. Có chuyện gì giúp được? |
| Đại | (LINE) Em đang chuẩn bị ra mắt v1.0 ngày 11/11. Muốn mời anh làm video review trên kênh anh — kênh 50k người Việt tại Nhật. Cộng đồng đúng đối tượng của Hizashi. |
| Hùng Linh | (LINE) OK em. Anh thích sản phẩm có ý nghĩa cộng đồng. Phí thế nào? |
| Đại | (LINE) Em đề xuất ¥150k tài trợ + 1 năm premium cho anh + 50 mã giảm giá cho follower của anh. |
| Hùng Linh | (LINE) Deal. Em gửi anh làm mẫu + script gợi ý. Anh sẽ làm theo phong cách kênh anh nhưng giữ thông điệp chính của em. |
| Đại | (LINE) Cảm ơn anh nhiều. Em gửi luôn qua email. |

---

## Tình huống 6 — Apt làm việc · Thứ Sáu 25/10 14:00, Stripe payment go-live

| Vai | Lời thoại |
|---|---|
| Tuấn | (Slack) Em ơi! Khóa production Stripe đã live! Cấu hình webhook xong. Giao dịch thử 50 cent thành công rồi. |
| Đại | (Slack tiếng Việt) Đỉnh anh! Kiểm thử bảng kiểm:<br>- Phiên thanh toán OK<br>- Webhook subscription.created OK<br>- Cập nhật DB user.is_paid=true OK<br>- Email "Welcome paid user" đã gửi OK<br>- Webhook subscription.updated/canceled/payment_failed cả 3 đều OK |
| Tuấn | (Slack) Có 4 webhook đã kiểm thử hết. Code coverage 92%. |
| Aiko | (Slack JP) <ruby>支払<rt>しはら</rt></ruby>い<ruby>画面<rt>がめん</rt></ruby>のUIをチェックしました。<ruby>二<rt>に</rt></ruby>タップで<ruby>登録<rt>とうろく</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>非常<rt>ひじょう</rt></ruby>にスムーズです。<br>*(Em check UI thanh toán rồi. 2 tap là xong đăng ký. Mượt cực.)* |
| Đại | (Slack) v1.0 sẵn sàng cho production. Tuần sau là tổng duyệt + phỏng vấn TechCrunch. |

---

## Tình huống 7 — LINE Sato-san TechCrunch JP · Thứ Tư 30/10, chuẩn bị phỏng vấn

| Vai | Lời thoại |
|---|---|
| Sato-san | (LINE JP) グエンさん、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby>の<ruby>取材<rt>しゅざい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>でいらっしゃいますか?<br>*(Anh Nguyễn, công tác chuẩn bị buổi phỏng vấn thứ Ba tuần sau ổn chứ?)* |
| Đại | (LINE JP) <ruby>佐藤<rt>さとう</rt></ruby>さん、お<ruby>世話<rt>せわ</rt></ruby>になっております。はい、プレゼン<ruby>資料<rt>しりょう</rt></ruby>と<ruby>創業<rt>そうぎょう</rt></ruby>ストーリーの<ruby>整理<rt>せいり</rt></ruby>は<ruby>済<rt>す</rt></ruby>んでおります。<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>のWeWork<ruby>梅田<rt>うめだ</rt></ruby>でよろしいでしょうか。<br>*(Anh Sato, cảm ơn anh đã chiếu cố. Vâng, em đã chuẩn bị xong slide thuyết trình và câu chuyện sáng lập. Địa điểm WeWork Umeda của bên em có ổn không ạ?)* |
| Sato-san | はい、<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>四日<rt>よっか</rt></ruby><ruby>火曜<rt>かよう</rt></ruby><ruby>午後<rt>ごご</rt></ruby><ruby>二時<rt>じ</rt></ruby>から<ruby>六十分間<rt>ろくじゅっぷんかん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>写真<rt>しゃしん</rt></ruby><ruby>撮影<rt>さつえい</rt></ruby>もございますので、<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>のお<ruby>二人<rt>ふたり</rt></ruby>もご<ruby>同席<rt>どうせき</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br>*(Vâng, được ạ. Hẹn thứ Ba 4/11 từ 2 giờ chiều, kéo dài 60 phút. Có chụp ảnh nên rất mong cả hai cofounder cùng có mặt.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>(<ruby>愛子<rt>あいこ</rt></ruby>)と<ruby>阮<rt>グエン</rt></ruby>(<ruby>俊<rt>トゥアン</rt></ruby>)も<ruby>同席<rt>どうせき</rt></ruby>いたします。<br>*(Em đã rõ. Hai cofounder Sato Aiko và Nguyen Tuan cũng sẽ có mặt ạ.)* |

---

## Tình huống 8 — WeWork Umeda phòng riêng · Thứ Ba 4/11 14:00, phỏng vấn TechCrunch JP

*Phòng họp WeWork Umeda tầng 12. Sato-san (38t, mặc áo phông + jeans, Macbook), kèm theo nhiếp ảnh gia. Đại + Aiko + Tuấn ngồi cùng phía bàn.*

| Vai | Lời thoại |
|---|---|
| Sato | では<ruby>早速<rt>さっそく</rt></ruby><ruby>始<rt>はじ</rt></ruby>めさせていただきます。グエンさん、<ruby>創業<rt>そうぎょう</rt></ruby>のきっかけを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vậy mình bắt đầu ngay. Anh Nguyễn, anh chia sẻ động lực sáng lập được không?)* |
| Đại | はい。<ruby>私<rt>わたくし</rt></ruby>は<ruby>大阪<rt>おおさか</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>時代<rt>じだい</rt></ruby>に、<ruby>日本語学習<rt>にほんごがくしゅう</rt></ruby>の<ruby>難<rt>むずか</rt></ruby>しさを<ruby>身<rt>み</rt></ruby>をもって<ruby>体験<rt>たいけん</rt></ruby>いたしました。<ruby>市販<rt>しはん</rt></ruby>のアプリは<ruby>英語話者<rt>えいごわしゃ</rt></ruby><ruby>向<rt>む</rt></ruby>けが<ruby>大半<rt>たいはん</rt></ruby>で、ベトナム<ruby>人学習者<rt>じんがくしゅうしゃ</rt></ruby>に<ruby>特化<rt>とっか</rt></ruby>したものが<ruby>存在<rt>そんざい</rt></ruby>しませんでした。<br>*(Vâng. Thời du học sinh tại ĐH Osaka em đã trải nghiệm trực tiếp sự khó khăn của việc học tiếng Nhật. Đa số app trên thị trường nhắm vào người nói tiếng Anh, không có app chuyên cho người học Việt Nam.)* |
| Sato | なるほど。<ruby>競合<rt>きょうごう</rt></ruby>サービスとの<ruby>差別化<rt>さべつか</rt></ruby>ポイントは<ruby>何<rt>なん</rt></ruby>でしょうか?<br>*(Ra vậy. Điểm khác biệt với các dịch vụ cạnh tranh là gì?)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>いち</rt></ruby>、AIチューターによる<ruby>個別<rt>こべつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>。<ruby>二<rt>に</rt></ruby>、ベトナム<ruby>語<rt>ご</rt></ruby><ruby>解説<rt>かいせつ</rt></ruby>のRAGデータベース。<ruby>三<rt>さん</rt></ruby>、SRS<ruby>方式<rt>ほうしき</rt></ruby>の<ruby>記憶<rt>きおく</rt></ruby><ruby>定着<rt>ていちゃく</rt></ruby>アルゴリズムでございます。<br>*(Có ba điểm. 1. AI tutor hướng dẫn cá nhân hóa. 2. Database RAG giải thích bằng tiếng Việt. 3. Thuật toán ghi nhớ kiểu SRS.)* |
| Sato | <ruby>佐藤<rt>さとう</rt></ruby>さんはデザインを<ruby>担当<rt>たんとう</rt></ruby>されているとのことですが、こだわりは?<br>*(Cô Sato phụ trách thiết kế đúng không, có điểm tâm huyết gì?)* |
| Aiko | はい。ベトナムと<ruby>日本<rt>にほん</rt></ruby>の<ruby>美意識<rt>びいしき</rt></ruby>を<ruby>融合<rt>ゆうごう</rt></ruby>させた<ruby>温<rt>あたた</rt></ruby>かみのあるUIを<ruby>意識<rt>いしき</rt></ruby>しております。<ruby>色<rt>いろ</rt></ruby>はHizashi<ruby>独自<rt>どくじ</rt></ruby>のオレンジ #ff7b1c で、「<ruby>陽射<rt>ひざ</rt></ruby>し」を<ruby>表現<rt>ひょうげん</rt></ruby>しております。<br>*(Vâng. Em chú trọng UI ấm áp dung hợp thẩm mỹ Việt và Nhật. Màu là cam đặc trưng Hizashi #ff7b1c, biểu hiện cho "tia nắng".)* |
| Sato | <ruby>素敵<rt>すてき</rt></ruby>ですね。<ruby>阮<rt>グエン</rt></ruby>さんは<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>面<rt>めん</rt></ruby>ですか?<br>*(Đẹp đấy. Anh Tuấn phụ trách kỹ thuật à?)* |
| Tuấn | はい、<ruby>私<rt>わたくし</rt></ruby>はCTOとしてバックエンドと<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>パイプラインを<ruby>担当<rt>たんとう</rt></ruby>しております。<ruby>本日<rt>ほんじつ</rt></ruby>はストレステストで<ruby>同時<rt>どうじ</rt></ruby><ruby>接続<rt>せつぞく</rt></ruby><ruby>一万<rt>いちまん</rt></ruby>ユーザーをクリアいたしました。<br>*(Vâng, tôi làm CTO phụ trách backend và pipeline machine learning. Hôm nay đã pass stress test 10000 user đồng thời.)* |
| Sato | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>記事<rt>きじ</rt></ruby>は<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>十一日<rt>じゅういちにち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>に<ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tuyệt vời. Bài viết dự kiến đăng sáng 9 giờ ngày 11/11.)* |
| Đại | ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn anh. Mong tiếp tục cộng tác.)* |

---

## Tình huống 9 — Apt phòng làm việc · Thứ Bảy 8/11 19:00, ra mắt nội bộ 50 người

| Vai | Lời thoại |
|---|---|
| Đại | (Slack #hizashi-cofounders) Anh chị! Mời 50 người vòng tròn thân thiết. Email đã gửi 18:00 tối nay. |
| Đại | Danh sách:<br>- 8 đồng đội BrSE Thanh A<br>- 12 cựu thành viên Inoue Lab (Yamada-senpai, Tanaka-senpai...)<br>- 5 đồng nghiệp cũ Cybozu (trưởng nhóm Inomata-san)<br>- 5 founder trong danh mục đầu tư của Anri<br>- 10 power user Hizashi hiện tại<br>- 10 người thân + bạn bè Tony+Yumi |
| Tuấn | (Slack) OK em. Anh sẽ trực dashboard Stripe + đồng hồ MRR real-time. |
| Aiko | (Slack JP) <ruby>私<rt>わたし</rt></ruby>もユーザーフィードバックを Notion で<ruby>収集<rt>しゅうしゅう</rt></ruby>します。<br>*(Em cũng thu thập feedback user trong Notion.)* |
| (24 giờ sau, Chủ Nhật 9/11 19:00) | |
| Đại | (Slack, xem dashboard) Kết quả 24h:<br>- 50 mời → 47 đăng ký (94%)<br>- 47 → 38 dùng ít nhất 1 phiên (81%)<br>- 38 → 22 chuyển sang trả phí (58% từ active)<br>- **Tỉ lệ chuyển đổi tổng 47%!** |
| Tuấn | (Slack) MRR Stripe nhảy: ¥343k → ¥365k chỉ trong 24h. |
| Đại | Phản hồi lỗi từ 38 active user:<br>- 3 lỗi nhỏ (font dấu tiếng Việt không hiển thị trên iOS Safari) → đã sửa<br>- 1 lỗi trung bình (chế độ offline lỗi trên iPad của Hana) → đã sửa<br>- 0 lỗi nghiêm trọng |
| Aiko | (Slack JP) <ruby>完璧<rt>かんぺき</rt></ruby>ですね。<ruby>明後日<rt>あさって</rt></ruby>のローンチに<ruby>備<rt>そな</rt></ruby>えましょう。<br>*(Hoàn hảo. Mình chuẩn bị cho buổi ra mắt ngày kia.)* |

---

## Tình huống 10 — Apt phòng làm việc · Chủ Nhật 10/11 23:00, bảng kiểm D-day -1

| Vai | Lời thoại |
|---|---|
| Đại | (Slack tiếng Việt) Anh chị! Bảng kiểm cuối cho 11/11:<br>- [x] App Store + Play Store v1.0 đã submit và được duyệt<br>- [x] Stripe production đã live<br>- [x] Landing page đã deploy production<br>- [x] Bài TechCrunch JP đã đặt lịch xuất bản 11/11 09:00<br>- [x] ProductHunt đã đặt lịch 11/11 12:01 PT (= 03:01 sáng 12/11 giờ Nhật)<br>- [x] Nội dung 5 influencer sẵn sàng (Yoshi-sensei, Phạm Hùng Linh, Akari, VietWorks, Sato)<br>- [x] Danh sách email 3,200 sẵn sàng<br>- [x] Thông cáo báo chí JP + VN sẵn sàng |
| Tuấn | (Slack) Backend qua bài kiểm thử tải: 10000 user đồng thời + 50k truy vấn embedding/phút. Độ trễ p95 = 320ms. An toàn. |
| Aiko | (Slack JP) <ruby>朝<rt>あさ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>から<ruby>戦闘準備<rt>せんとうじゅんび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>！<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Sẵn sàng chiến đấu từ 9 giờ sáng! Cố lên nào.)* |
| Đại | (Slack) Em đi ngủ sớm. Mai 7:00 dậy. 9:00 ra mắt. |

---

## Tình huống 11 — Apt phòng ngủ · Chủ Nhật 23:30, Đại Mai trước ngày ra mắt

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, vào phòng) Anh ơi, đi ngủ đi. Mai mới là ngày quan trọng nhất. |
| Đại | (tiếng Việt, ôm Mai) Cảm ơn em đã ủng hộ anh 6 tuần qua. Mai ra mắt xong, mình đi ăn nhà hàng Pháp ở Umeda. Đặt bàn rồi. |
| Mai | (tiếng Việt) Em đợi từ tháng trước rồi. Anh không phải hứa. Anh ngủ ngon nhé. |
| Đại | (tiếng Việt, nằm xuống) Em ơi, anh hồi hộp quá. Ba năm chuẩn bị cho ngày mai. |
| Mai | (tiếng Việt, vuốt tóc Đại) Anh đã làm hết những gì có thể. Còn lại trời cho. Ngủ đi anh. |

---

## Tình huống 12 — Apt phòng khách · Thứ Năm 7/11 8:00, Đại đưa Hana đi nhà trẻ (cam kết với Mai)

*Sáng thứ Năm — ngày Đại không đi Thanh A. Hana mặc đồng phục nhà trẻ vàng, đeo balo nhỏ có hình con voi.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Hana ơi, bố đưa con đi nhà trẻ nhé. Tạm biệt mẹ. |
| Hana | (vẫy tay với Mai) Mẹ! Mẹ! Bye bye! |
| Mai | (tiếng Việt, cười) Hai bố con ngoan. Đi cẩn thận nhé. |
| (Đến cửa nhà trẻ Senri Hoikuen) | |
| Cô Sasaki | おはようございます、ハナちゃん！<ruby>今日<rt>きょう</rt></ruby>もお<ruby>父<rt>とう</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>ですね。<br>*(Chào sáng Hana! Hôm nay lại cùng bố nhỉ.)* |
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>もお<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Cô Yamada, chào buổi sáng. Hôm nay lại nhờ cô.)* |
| Cô Sasaki | <ruby>父<rt>ちち</rt></ruby><ruby>送<rt>おく</rt></ruby>りが<ruby>増<rt>ふ</rt></ruby>えてハナちゃんも<ruby>嬉<rt>うれ</rt></ruby>しそうですね。<br>*(Bố đưa nhiều hơn, Hana có vẻ vui hẳn lên.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>火曜<rt>かよう</rt></ruby>と<ruby>木曜<rt>もくよう</rt></ruby>は<ruby>私<rt>わたくし</rt></ruby>が<ruby>送迎<rt>そうげい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しております。<br>*(Em không dám nhận. Thứ Ba và thứ Năm em phụ trách đưa đón ạ.)* |
| Cô Sasaki | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>共働<rt>ともばたら</rt></ruby>きでも<ruby>役割分担<rt>やくわりぶんたん</rt></ruby>が<ruby>素敵<rt>すてき</rt></ruby>です。<br>*(Tuyệt quá. Vợ chồng cùng đi làm mà chia vai trò đẹp ghê.)* |
| Đại | (cúi đầu) <ruby>妻<rt>つま</rt></ruby>のおかげでございます。では<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>四時<rt>よじ</rt></ruby>にお<ruby>迎<rt>むか</rt></ruby>えに<ruby>参<rt>まい</rt></ruby>ります。<br>*(Là nhờ vợ em ạ. Vâng, chiều 4 giờ em đến đón.)* |
| Hana | (vẫy tay với bố) Bố! Bye bye! |
| Đại | (vẫy lại) Bye bye Hana. Lát bố đón con nhé. |

---

## Tình huống 13 — Cảnh tiếng Việt — Đường về nhà từ nhà trẻ · Thứ Năm 8:30, Đại gọi Mai cập nhật

| Vai | Lời thoại |
|---|---|
| Đại | (gọi Mai, tiếng Việt) Em ơi, đã giao Hana cho cô Yamada. Con chào bố bye bye rất ngoan. |
| Mai | (tiếng Việt) Cảm ơn anh. Cô Sasaki có nói gì không? |
| Đại | (tiếng Việt) Cô khen mình "vợ chồng cùng đi làm mà chia vai trò đẹp" — em nghe có tự hào không? |
| Mai | (tiếng Việt, cười) Tự hào chứ. Cảm ơn anh giữ lời. Một tháng rồi anh đưa con đi liên tục. |
| Đại | (tiếng Việt) Vì anh sợ Mai cau mày. Anh không bao giờ muốn thấy. Giờ anh về làm tiếp Hizashi. Tuần sau ra mắt v1.0. |
| Mai | (tiếng Việt) Anh tập trung làm đi. Tối nay em làm bún chả ăn mừng trước cho ngày 11/11. |
| Đại | (tiếng Việt) Tuyệt. Anh đi đây. Yêu em. |
| Mai | (tiếng Việt) Yêu anh. |

---

## Đọng lại chương 8

Đại trải qua 6 tuần chuẩn bị ra mắt Hizashi v1.0 song song với vai trò BD BrSE 3 ngày/tuần tại Thanh A. Ngày đầu vai trò mới dùng **「本日より新たな役職でお世話になります」** + cúi chào. Soạn email mời hợp tác influencer JP với cấu trúc 5 phần: greeting + giới thiệu + lý do chọn → đề xuất cụ thể → chốt **「ご検討のほど、何卒よろしくお願い申し上げます」**. Trao đổi với phóng viên TechCrunch JP qua LINE keigo **「お世話になっております」**. Buổi phỏng vấn 60 phút tại WeWork Umeda với Sato-san — Đại kể câu chuyện sáng lập bằng JP business chuẩn **「身をもって体験いたしました」**. Stripe payment go-live với 4 webhook, soft launch nội bộ 50 người tỉ lệ chuyển đổi 47% — MRR ¥343k → ¥365k. Cảnh đẹp nhất: sáng thứ Năm Đại đưa Hana đi nhà trẻ — cô Yamada khen "vợ chồng chia vai trò đẹp" → Đại đáp **「妻のおかげでございます」**. Chủ Nhật 10/11 23:00 hoàn tất bảng kiểm D-day với cú đẩy lớn: kiểm thử tải 10k đồng thời + p95 320ms, 5 influencer đã chốt, TechCrunch đã đặt lịch.

> Từ vựng & mẫu câu chương này: ローンチ・ProductHunt・プレスリリース・インフルエンサー・スポンサーシップ・ランディングページ・コンバージョン・A/Bテスト・Stripe・Webhook・ストレステスト・ソフトローンチ・メディアキット・プレゼン資料・ご検討のほど何卒よろしくお願い申し上げます・お世話になっております・身をもって体験いたしました・〜していただけませんでしょうか・ご承諾いただき誠にありがとうございます・引き続きよろしくお願いいたします・妻のおかげでございます・送迎・共働き・役割分担

## Bí quyết chương

- **Email mời hợp tác influencer JP**: cấu trúc 5 phần (greeting + giới thiệu bản thân + lý do chọn + đề xuất cụ thể + chốt câu nhờ) — không nhảy ngay vào tiền
- **Tone khác theo đối tượng**: Yoshi-sensei keigo cao + Phạm Hùng Linh tiếng Việt thân thiện + Sato JP business + Akari JP casual — cùng một thông điệp nhưng tone khác
- **Phỏng vấn TechCrunch JP**: kể câu chuyện sáng lập từ trải nghiệm cá nhân **「身をもって体験」** + 3 điểm khác biệt cụ thể + 3 người đồng sáng lập có vai trò rõ
- **Chi phí hợp tác influencer chuẩn**: ¥200k tài trợ + 1 năm premium cho YouTuber Nhật 100-200k follower, ¥150k cho 50k follower
- **Soft launch 50 người trước launch công khai**: kiểm thử toàn bộ luồng + thu thập lỗi + đo tỉ lệ chuyển đổi (47% = ngưỡng tốt)
- **Stress test chuẩn production**: 10k user đồng thời + p95 320ms = ngưỡng xác nhận sẵn sàng
- **Giữ lời với vợ về việc đưa con đi nhà trẻ**: cam kết sáng thứ Ba + thứ Năm không bao giờ nuốt lời — niềm tin trong nhà là nền tảng cho cú đẩy lớn ở công ty

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新たな | あらたな | TÂN | mới |
| パイプライン |  |  | pipeline |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 感銘 | かんめい | CẢM MINH | cảm động, ấn tượng |
| 解説 | かいせつ | GIẢI THUYẾT | giải thích |
| 丁寧 | ていねい | ĐINH NINH | cẩn thận, tử tế |
| 掲載 | けいさい | KHẢI TẢI | đăng, đăng tải |
| 進呈 | しんてい | TIẾN TRÌNH | tặng biếu |
| 承諾 | しょうだく | THỪA NẶC | chấp thuận |
| 資料 | しりょう | TƯ LIỆU | tài liệu |
| 同時公開 | どうじこうかい | ĐỒNG THỜI CÔNG KHAI | phát đồng thời |
| 取材 | しゅざい | THỦ TÀI | phỏng vấn báo chí |
| プレゼン資料 | プレゼンしりょう | TƯ LIỆU | slide thuyết trình |
| 同席 | どうせき | ĐỒNG TỊCH | cùng có mặt |
| 撮影 | さつえい | TRÁC ẢNH | chụp ảnh |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | du học sinh |
| 身をもって | みをもって | THÂN | tự thân |
| 体験 | たいけん | THỂ NGHIỆM | trải nghiệm |
| 市販 | しはん | THỊ PHIẾN | bán ngoài thị trường |
| 特化 | とっか | ĐẶC HÓA | chuyên biệt |
| 競合 | きょうごう | CẠNH HỢP | cạnh tranh |
| 差別化 | さべつか | SAI BIỆT HÓA | khác biệt hóa |
| 個別指導 | こべつしどう | CÁ BIỆT CHỈ ĐẠO | hướng dẫn cá nhân |
| 美意識 | びいしき | MỸ Ý THỨC | thẩm mỹ |
| 融合 | ゆうごう | DUNG HỢP | hòa quyện |
| 独自 | どくじ | ĐỘC TỰ | riêng biệt |
| 機械学習 | きかいがくしゅう | CƠ GIỚI HỌC TẬP | machine learning |
| ストレステスト |  |  | stress test |
| 同時接続 | どうじせつぞく | ĐỒNG THỜI TIẾP TỤC | kết nối đồng thời |
| 戦闘準備 | せんとうじゅんび | CHIẾN ĐẤU CHUẨN BỊ | sẵn sàng chiến đấu |
| 共働き | ともばたらき | CỘNG ĐỘNG | vợ chồng cùng đi làm |
| 役割分担 | やくわりぶんたん | DỊCH CÁT PHÂN ĐẢM | phân chia vai trò |
| 送迎 | そうげい | TỐNG NGHINH | đưa đón |
| ご検討のほど | ごけんとうのほど | KIỂM ĐẢO | xin xem xét |
| 申し上げます | もうしあげます | THÂN THƯỢNG | xin/kính trình (khiêm) |
| 妻 | つま | THÊ | vợ |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 累計 | るいけい | LŨY KẾ | lũy kế, tổng cộng |
