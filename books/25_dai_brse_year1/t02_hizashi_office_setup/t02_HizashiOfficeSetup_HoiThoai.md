# Sách kỹ sư cầu nối & khởi nghiệp · T2. Setup văn phòng Hizashi tại WeWork Umeda + nhịp dual-track

> **Mục tiêu nhân vật:** 4-5/2030. Đại 25t dựng nhịp song song BrSE-Hizashi. Học các mẫu hội thoại tiếng Nhật của founder Việt vận hành team Nhật-Việt: 1) đặt phòng họp / xin hỗ trợ tại WeWork (会議室を予約させていただきたい); 2) báo cáo daily standup ngắn gọn (本日の進捗・明日の予定・ブロッカー); 3) trao đổi quyết định kỹ thuật với CTO Tuấn (xen JP); 4) chào cô giáo nhà trẻ Hana lần đầu (お世話になっております); 5) xin lỗi vì về muộn (遅くなり申し訳ございません); 6) nhắn LINE khách hàng Nhật xin gia hạn (恐縮ですが).

---

## Bối cảnh

Tháng 4-5/2030. Hizashi Inc một tuần tuổi đã thuê 3 desks tại WeWork Umeda Tower tầng 23. Đại làm BrSE Thanh A 9-18, tối + cuối tuần dồn vào Hizashi. Tuấn (CTO 28t ex-Mercari) full-time. Aiko (Head of Design 23t) đang M1 lab Watanabe HCI, part-time Hizashi. Burn rate ¥1.32M/tháng, runway 22.7 tháng. Hana 20 tháng đi nhà trẻ Senri-chuo Day 1 từ 1/4. Chương này tập trung vào nhịp standup, ngôn ngữ founder Việt vận hành team song ngữ và keigo giao tiếp với cô giáo Hana.

---

## Tình huống 1 — Quầy lễ tân WeWork Umeda 23F · 4/4 thứ Sáu 19:00, xin thẻ guest

| Vai | Lời thoại |
|---|---|
| Receptionist (Nhật, 26t) | いらっしゃいませ。<ruby>本日<rt>ほんじつ</rt></ruby>はどちらのチームでしょうか?<br>*(Xin chào. Hôm nay anh thuộc team nào ạ?)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>からこちらにオフィスを<ruby>構<rt>かま</rt></ruby>えさせていただきます「Hizashi<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>」のグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。3デスク<ruby>契約<rt>けいやく</rt></ruby>でございます。<br>*(Từ hôm nay công ty Hizashi của em bắt đầu đặt văn phòng tại đây. Em là Nguyễn Đại. Hợp đồng 3 desks.)* |
| Receptionist | グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>入館証<rt>にゅうかんしょう</rt></ruby>を<ruby>3枚<rt>さんまい</rt></ruby>お<ruby>渡<rt>わた</rt></ruby>しいたします。<ruby>会議室<rt>かいぎしつ</rt></ruby>のご<ruby>予約<rt>よやく</rt></ruby>はアプリからお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Đại, chúng tôi đã đợi. Đây là 3 thẻ ra vào. Đặt phòng họp xin qua app.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>21時<rt>にじゅういちじ</rt></ruby>まで<ruby>利用<rt>りよう</rt></ruby>させていただいても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Em đã hiểu. Hôm nay em có thể dùng đến 21h được không ạ?)* |
| Receptionist | はい、24<ruby>時間<rt>じかん</rt></ruby><ruby>利用可能<rt>りようかのう</rt></ruby>でございます。<br>*(Vâng, dùng 24/7 được ạ.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn chị.)* |

---

## Tình huống 2 — 3 desks Hizashi · 19:15, gặp Tuấn + Aiko

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị! Em đến rồi. Tầng 23 view đẹp ghê. |
| Tuấn (28t) | (tiếng Việt) Em đói chưa? Anh đặt pizza Domino's rồi, 20 phút giao đến. |
| Aiko (23t) | (tiếng Nhật, đang chuẩn bị màn hình) ダイくん、おかえり!<ruby>wifi<rt>ワイファイ</rt></ruby>もモニターも<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>できてるよ。<br>*(Đại-kun, em về rồi! Wifi và màn hình đều đã chuẩn bị xong.)* |
| Đại | アイコさん、ありがとう!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かる。<br>*(Aiko, cảm ơn em! Em giúp anh quá.)* |
| Tuấn | (tiếng Việt) Em đổi đồ chưa? Vest BrSE bỏ ra, mặc hoodie cho thoải mái. |
| Đại | (tiếng Việt) Anh để em đi thay. Em mang theo hoodie đen rồi. |

---

## Tình huống 3 — Bàn họp Hizashi · 19:30, thiết kế nhịp standup

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị, mình thống nhất nhịp standup nhé. Em ban ngày làm BrSE 9-18 không standup buổi sáng được. |
| Tuấn | (tiếng Việt) Anh đề xuất standup hằng ngày 21:00-21:15 trên Google Meet. Ba câu kinh điển: hôm nay làm gì, mai làm gì, có blocker gì không. |
| Aiko | (Nhật) <ruby>21時<rt>にじゅういちじ</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby><ruby>普段<rt>ふだん</rt></ruby><ruby>23時<rt>にじゅうさんじ</rt></ruby>まで<ruby>作業<rt>さぎょう</rt></ruby>するから、ちょうどいい。<br>*(21h được. Mình thường làm đến 23h nên vừa hay.)* |
| Đại | (tiếng Việt) Em cũng OK 21:00. Mai cho Hana ngủ 20:30, em rảnh từ 20:45. |
| Tuấn | (tiếng Việt) Anh viết quy tắc luôn vào Notion: ai vắng phải post async trên Slack #standup trước 21:00. Cuối tuần nghỉ. |
| Đại | (tiếng Việt) OK anh. Em thêm: lúc bay công tác hoặc onsite khách Nhật thì cho phép skip. |
| Aiko | (Nhật) <ruby>議事録<rt>ぎじろく</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>はローテーションでいい?<br>*(Người ghi biên bản xoay vòng được không?)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>。じゃあ<ruby>月<rt>げつ</rt></ruby>・<ruby>火<rt>か</rt></ruby><ruby>俺<rt>おれ</rt></ruby>、<ruby>水<rt>すい</rt></ruby>・<ruby>木<rt>もく</rt></ruby>トゥアン、<ruby>金<rt>きん</rt></ruby>アイコでいこう。<br>*(Đồng ý. Thứ Hai-Ba mình, Tư-Năm Tuấn, Sáu Aiko nhé.)* |

---

## Tình huống 4 — Bàn họp · 21:00, standup #1 chính thức

*Tuấn share màn hình Notion template "Daily Standup".*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>第<rt>だい</rt></ruby><ruby>1回<rt>いっかい</rt></ruby>スタンドアップ<ruby>始<rt>はじ</rt></ruby>めます。まず<ruby>俺<rt>おれ</rt></ruby>から。<br>*(Mở standup số 1 nào. Mình trước.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>:<ruby>清華<rt>タンハー</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>、タン<ruby>先輩<rt>せんぱい</rt></ruby>のshadow、<ruby>仕様書<rt>しようしょ</rt></ruby><ruby>25枚<rt>にじゅうごまい</rt></ruby><ruby>読了<rt>どくりょう</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:<ruby>5枚<rt>ごまい</rt></ruby><ruby>翻訳<rt>ほんやく</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。ブロッカー:なし。<br>*(Hôm nay: ngày đầu Thanh A, shadow tiền bối Thanh, đọc xong 25 trang spec. Mai: bắt đầu dịch 5 trang. Blocker: không.)* |
| Tuấn | (Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>:バックエンドリファクタ、TTSラグ2<ruby>秒<rt>びょう</rt></ruby>の<ruby>原因調査<rt>げんいんちょうさ</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:pgvectorマイグレーション、<ruby>1024次元<rt>せんにじゅうよじげん</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>。ブロッカー:Voyage AIかmultilingual-e5、アーキ<ruby>決定<rt>けってい</rt></ruby>がほしい。<br>*(Hôm nay: refactor backend, điều tra nguyên nhân TTS lag 2 giây. Mai: migration pgvector sang 1024 dimensions. Blocker: cần quyết định kiến trúc — Voyage AI hay multilingual-e5.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>週末<rt>しゅうまつ</rt></ruby>にレビューして、Slack #arch-decisionsで<ruby>決定<rt>けってい</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>す。<br>*(Hiểu rồi. Cuối tuần mình review, kết luận sẽ lưu ở Slack #arch-decisions.)* |
| Aiko | (Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>:アイコンUIリファクタ、オンボーディング<ruby>3画面<rt>さんがめん</rt></ruby><ruby>再設計<rt>さいせっけい</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:ダークモードの design tokens<ruby>定義<rt>ていぎ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。ブロッカー:なし。<br>*(Hôm nay: refactor icon UI, redesign 3 màn hình onboarding. Mai: bắt đầu định nghĩa design tokens cho dark mode. Blocker: không.)* |
| Đại | OK、12<ruby>分<rt>ふん</rt></ruby>で<ruby>終了<rt>しゅうりょう</rt></ruby>。いい<ruby>感<rt>かん</rt></ruby>じ。<br>*(OK, 12 phút là xong. Cảm giác tốt đấy.)* |

---

## Tình huống 5 — Khu pantry WeWork · 21:30, làm quen founder Nhật bàn cạnh

*Đại đi lấy cà phê, gặp founder bàn cạnh.*

| Vai | Lời thoại |
|---|---|
| Sato (founder Nhật, 32t) | あ、<ruby>隣<rt>となり</rt></ruby>の<ruby>新<rt>あたら</rt></ruby>しいチームの<ruby>方<rt>かた</rt></ruby>ですか?<br>*(À, anh là người team mới bên cạnh à?)* |
| Đại | はい、<ruby>本日<rt>ほんじつ</rt></ruby>からHizashiという<ruby>会社<rt>かいしゃ</rt></ruby>でこちらにお<ruby>世話<rt>せわ</rt></ruby>になります。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Vâng, từ hôm nay công ty Hizashi của em bắt đầu nhờ chỗ ở đây. Em là Nguyễn Đại.)* |
| Sato | <ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>隣<rt>となり</rt></ruby>でFinTechのスタートアップやってます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。Hizashiさんは<ruby>何<rt>なに</rt></ruby>を?<br>*(Mình là Sato. Bên cạnh làm startup FinTech. Hizashi làm gì vậy?)* |
| Đại | ベトナム<ruby>人向<rt>じんむ</rt></ruby>けの<ruby>日本語学習<rt>にほんごがくしゅう</rt></ruby>アプリでございます。<ruby>音声合成<rt>おんせいごうせい</rt></ruby>と<ruby>間隔反復<rt>かんかくはんぷく</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>を<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせたものです。<br>*(Là app học tiếng Nhật cho người Việt. Kết hợp text-to-speech và spaced repetition.)* |
| Sato | おもしろい!<ruby>創業<rt>そうぎょう</rt></ruby>は?<br>*(Hay đấy! Mới thành lập à?)* |
| Đại | <ruby>先月<rt>せんげつ</rt></ruby><ruby>登記<rt>とうき</rt></ruby>したばかりです。pre-seedで<ruby>3千万円<rt>さんぜんまんえん</rt></ruby><ruby>調達<rt>ちょうたつ</rt></ruby>させていただきました。<br>*(Tháng trước vừa đăng ký doanh nghiệp. Pre-seed huy động được 30 triệu yên.)* |
| Sato | え、すごい!ぜひ<ruby>今度<rt>こんど</rt></ruby>ランチでも。<ruby>名刺<rt>めいし</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>させてください。<br>*(Ồ giỏi! Hôm nào mình ăn trưa nhé. Cho mình xin danh thiếp.)* |
| Đại | (đưa danh thiếp hai tay) <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、こちら<ruby>名刺<rt>めいし</rt></ruby>でございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin phép, đây là danh thiếp của em. Mong anh giúp đỡ.)* |

---

## Tình huống 6 — Bàn họp · 22:00, brainstorm chi phí

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị, mình rà chi phí cuối tháng 4 nhé. Em đã update Notion budget. |
| Đại | Đại lương 150k, Tuấn 600k, Aiko 150k, WeWork 3 desks 150k, AWS 80k, Claude API 100k, Supabase pgvector 30k, Cloudflare R2 20k, misc 40k. Tổng 1.320.000 yên/tháng. |
| Tuấn | (tiếng Việt) Pre-seed Anri 30 triệu / 1.32 triệu = 22.7 tháng runway. OK lắm. |
| Aiko | (Nhật) <ruby>収入<rt>しゅうにゅう</rt></ruby><ruby>側<rt>がわ</rt></ruby>はどう?<br>*(Phía thu nhập thế nào?)* |
| Đại | <ruby>現在<rt>げんざい</rt></ruby>、<ruby>無料<rt>むりょう</rt></ruby>ユーザー200<ruby>名<rt>めい</rt></ruby>、<ruby>有料<rt>ゆうりょう</rt></ruby>30<ruby>名<rt>めい</rt></ruby>、<ruby>月額<rt>げつがく</rt></ruby><ruby>980円<rt>きゅうひゃくはちじゅうえん</rt></ruby>。MRRは<ruby>29,400円<rt>にまんきゅうせんよんひゃくえん</rt></ruby>。<br>*(Hiện 200 free, 30 paid, 980 yên/tháng. MRR 29.400 yên.)* |
| Aiko | (Nhật) まだ<ruby>小<rt>ちい</rt></ruby>さいね。v1.0までに<ruby>伸<rt>の</rt></ruby>ばそう!<br>*(Còn nhỏ nhỉ. Đến v1.0 cùng tăng lên nào!)* |
| Đại | <ruby>計画<rt>けいかく</rt></ruby>:v1.0は11<ruby>月<rt>がつ</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>500<ruby>名<rt>めい</rt></ruby>、<ruby>年末<rt>ねんまつ</rt></ruby>1500<ruby>名<rt>めい</rt></ruby>、MRR<ruby>目標<rt>もくひょう</rt></ruby><ruby>150万円<rt>ひゃくごじゅうまんえん</rt></ruby>。<br>*(Kế hoạch: v1.0 ra mắt tháng 11, ngày đầu 500, cuối năm 1500, mục tiêu MRR 1.5 triệu yên.)* |

---

## Tình huống 7 — LINE Mai · 22:30, update Hana đi nhà trẻ Day 1

| Vai | Lời thoại |
|---|---|
| Mai | (LINE tiếng Việt + ảnh Hana) Anh ơi! Hana cười rồi này. Cô Yamada gửi ảnh chiều nay. Tay con đang cầm xe đẩy tập đi. |
| Đại | (LINE) Trời ơi, Hana cười tươi quá! 5 bước thật à em? |
| Mai | (LINE) Cô bảo 5 bước liền, không vịn. Cô khen Hana cười tươi nhất phòng. |
| Đại | (LINE) Anh muốn nhắn cảm ơn cô Yamada. Em cho anh xin số LINE cô đi. |
| Mai | (LINE) Cô không cho LINE riêng — quy định nhà trẻ. Nhưng mai sáng 8:30 anh đến đưa Hana, anh gặp cô trực tiếp được. |
| Đại | (LINE) OK em. Anh chuẩn bị câu chào cô Yamada bằng tiếng Nhật từ giờ. |

---

## Tình huống 8 — Bàn họp · 23:00, Tuấn dạy Đại keigo xin gia hạn với khách Nhật

*Tuấn nhận email từ khách FreeC (client cũ Mercari Tuấn vẫn nhận freelance) — yêu cầu deadline gấp.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (tiếng Việt) Em xem anh viết câu này hộ. Khách FreeC yêu cầu deadline mai nhưng anh không kịp. Em thấy keigo ổn chưa? |
| Tuấn | (đọc) <ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、いつも<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>誠<rt>まこと</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>本件<rt>ほんけん</rt></ruby>の<ruby>納期<rt>のうき</rt></ruby>を<ruby>2日間<rt>ふつかかん</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>させていただけませんでしょうか。<br>*(Anh Yamada, luôn được anh quan tâm. Em thực sự rất ngại, có thể cho phép em xin gia hạn deadline việc này thêm 2 ngày được không ạ?)* |
| Đại | (tiếng Việt) Câu đầu chuẩn rồi. Anh thêm phần lý do nữa — khách Nhật cần biết lý do cụ thể, không nhất thiết dài. |
| Tuấn | (gõ tiếp) <ruby>理由<rt>りゆう</rt></ruby>といたしましては、<ruby>追加要件<rt>ついかようけん</rt></ruby>のテストに<ruby>想定<rt>そうてい</rt></ruby>より<ruby>時間<rt>じかん</rt></ruby>を<ruby>要<rt>よう</rt></ruby>しているためでございます。ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけし<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Lý do là việc test các yêu cầu phát sinh tốn nhiều thời gian hơn dự kiến. Em xin lỗi vì đã gây phiền hà.)* |
| Đại | (tiếng Việt) Câu "ご迷惑をおかけし申し訳ございません" chuẩn lắm. Em sẽ học thuộc câu này — BrSE Thanh A chắc dùng suốt. |
| Tuấn | (tiếng Việt) Bí kíp: 3 yếu tố — apology mở (誠に恐縮ですが), request cụ thể (〜させていただけませんでしょうか), apology đóng (ご迷惑をおかけし申し訳ございません). |
| Đại | (ghi vào Notion) Anh đặt tên template này là "三段謝罪" — xin lỗi 3 lớp. Em xin phép copy nhé. |
| Tuấn | (tiếng Việt) Lấy đi em. Tài sản chung Hizashi. |

---

## Tình huống 9 — Cửa apt Senri-chuo · 23:05, về muộn, gặp Mai

| Vai | Lời thoại |
|---|---|
| Đại | (whisper tiếng Việt) Em ơi, anh về. |
| Mai | (whisper) Sshh anh. Hana mới ngủ 10 phút thôi. |
| Đại | (whisper) Xin lỗi em anh về muộn. Standup quá giờ tí. |
| Mai | (whisper) Em hâm cháo cho anh nhé? |
| Đại | (whisper) Thôi em, anh ăn pizza ở văn phòng rồi. Em đi ngủ đi, để anh tắm. |
| Mai | (whisper) Hana hỏi bố lúc 19:00. Em bảo bố làm việc. Con không khóc, chỉ ngơ ngác. |
| Đại | (whisper) Anh xót quá. Mai anh sẽ về ăn tối với hai mẹ con — Hizashi cho phép em một buổi sớm. |
| Mai | (whisper) Vâng anh. Đừng quá sức. |

---

## Tình huống 10 — Sân nhà trẻ Senri-chuo · Thứ Bảy 8:30, gặp cô Yamada lần đầu

| Vai | Lời thoại |
|---|---|
| Đại | (cúi 30 độ với cô Yamada đang đứng cổng) <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、おはようございます。グエン・ハナの<ruby>父親<rt>ちちおや</rt></ruby>でございます。いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Cô Yamada, chào buổi sáng. Tôi là bố của Nguyễn Hana. Cô đã luôn chăm sóc cháu.)* |
| Cô Yamada (28t) | グエンさん、おはようございます!ハナちゃんのお<ruby>父<rt>とう</rt></ruby>さんですね。ハナちゃん、とてもいい<ruby>子<rt>こ</rt></ruby>ですよ。<ruby>笑顔<rt>えがお</rt></ruby>が<ruby>素敵<rt>すてき</rt></ruby>。<br>*(Anh Đại, chào buổi sáng! Anh là bố Hana đúng không. Hana ngoan lắm. Nụ cười dễ thương.)* |
| Đại | ありがとうございます。<ruby>初日<rt>しょにち</rt></ruby>の<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>妻<rt>つま</rt></ruby>から<ruby>見<rt>み</rt></ruby>せてもらいました。<ruby>5歩<rt>ごほ</rt></ruby><ruby>歩<rt>ある</rt></ruby>けたとのこと、<ruby>家族<rt>かぞく</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby><ruby>感動<rt>かんどう</rt></ruby>いたしました。<br>*(Cảm ơn cô. Vợ em đã cho em xem ảnh ngày đầu. Cháu đi được 5 bước, cả nhà em đều xúc động.)* |
| Cô Yamada | おうちでも<ruby>応援<rt>おうえん</rt></ruby>してあげてください。あと、<ruby>何<rt>なに</rt></ruby>かご<ruby>不明<rt>ふめい</rt></ruby>な<ruby>点<rt>てん</rt></ruby>があれば、いつでも<ruby>連絡帳<rt>れんらくちょう</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてくださいね。<br>*(Ở nhà anh cổ vũ con nhé. Có gì không rõ thì ghi vào sổ liên lạc bất cứ lúc nào.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>一<rt>ひと</rt></ruby>つご<ruby>相談<rt>そうだん</rt></ruby>させていただきたいのですが、ハナはまだベトナム<ruby>語<rt>ご</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>混<rt>ま</rt></ruby>ざっている<ruby>状態<rt>じょうたい</rt></ruby>でして、<ruby>園<rt>えん</rt></ruby>で<ruby>気<rt>き</rt></ruby>になることがあれば<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Em đã hiểu. Em xin trao đổi một việc: Hana hiện đang ở giai đoạn lẫn tiếng Việt và tiếng Nhật, nếu ở trường có gì đáng lưu ý thì cô báo em được không ạ?)* |
| Cô Yamada | もちろんです。バイリンガル<ruby>環境<rt>かんきょう</rt></ruby>の<ruby>子<rt>こ</rt></ruby>は<ruby>言葉<rt>ことば</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>めに<ruby>出<rt>で</rt></ruby>ることが<ruby>多<rt>おお</rt></ruby>いですが、<ruby>心配<rt>しんぱい</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>です。<ruby>気付<rt>きづ</rt></ruby>いた<ruby>点<rt>てん</rt></ruby>は<ruby>連絡帳<rt>れんらくちょう</rt></ruby>に<ruby>書<rt>か</rt></ruby>きますね。<br>*(Tất nhiên. Trẻ song ngữ thường ra tiếng muộn hơn, không cần lo. Tôi sẽ ghi các điểm nhận thấy vào sổ liên lạc.)* |
| Đại | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn cô. Mong cô giúp đỡ.)* |

---

## Tình huống 11 — Tàu Hankyu · Thứ Bảy 9:30, LINE trưởng nhóm Thanh xin về sớm thứ Tư

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Thanh, JP) <ruby>タン先輩<rt>タンせんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。グエン・ダイです。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>水曜日<rt>すいようび</rt></ruby>、<ruby>家庭<rt>かてい</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>で<ruby>17時<rt>じゅうしちじ</rt></ruby>に<ruby>退社<rt>たいしゃ</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Anh Thanh, chào anh. Em là Đại. Thứ Tư tuần sau, vì việc gia đình em xin phép về lúc 17h được không ạ?)* |
| Đại | (LINE) <ruby>娘<rt>むすめ</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めて<ruby>保育園<rt>ほいくえん</rt></ruby>に<ruby>通<rt>かよ</rt></ruby>い<ruby>始<rt>はじ</rt></ruby>めまして、<ruby>週<rt>しゅう</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby><ruby>早<rt>はや</rt></ruby>めに<ruby>帰<rt>かえ</rt></ruby>って<ruby>夕食<rt>ゆうしょく</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>取<rt>と</rt></ruby>りたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Con gái em mới bắt đầu đi nhà trẻ, em muốn 1 lần/tuần về sớm ăn tối cùng cháu.)* |
| Thanh | (LINE) もちろん!<ruby>家族<rt>かぞく</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<ruby>水曜日<rt>すいようび</rt></ruby><ruby>17時退社<rt>じゅうしちじたいしゃ</rt></ruby>OK。<ruby>毎週<rt>まいしゅう</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Tất nhiên! Gia đình quan trọng. Thứ Tư về 17h OK. Cố định hàng tuần cũng được.)* |
| Đại | (LINE) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>毎週水曜日<rt>まいしゅうすいようび</rt></ruby><ruby>17時退社<rt>じゅうしちじたいしゃ</rt></ruby>で<ruby>固定<rt>こてい</rt></ruby>させていただきます。<br>*(Em cảm ơn anh thật lòng. Em xin cố định thứ Tư hàng tuần về 17h.)* |
| Thanh | (LINE tiếng Việt) Em cứ thoải mái. Anh có 2 con rồi anh hiểu. |
| Đại | (LINE tiếng Việt) Cảm ơn anh nhiều. |

---

## Tình huống 12 — Bàn họp Hizashi · Thứ Bảy 11:00, Aiko present design tokens

| Vai | Lời thoại |
|---|---|
| Aiko | (share Figma, Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>は design tokens ver.1 を<ruby>共有<rt>きょうゆう</rt></ruby>します。プライマリーは Hizashi orange #FF7B1C、セカンダリーは sunrise yellow #FFD166、<ruby>背景<rt>はいけい</rt></ruby>は warm white #FFF8F0。<br>*(Hôm nay mình chia sẻ design tokens ver.1. Primary là Hizashi orange #FF7B1C, secondary là sunrise yellow #FFD166, background là warm white #FFF8F0.)* |
| Đại | <ruby>名前<rt>なまえ</rt></ruby>「Hizashi=<ruby>日差<rt>ひざ</rt></ruby>し」だから、オレンジと<ruby>黄色<rt>きいろ</rt></ruby>が<ruby>軸<rt>じく</rt></ruby>になるの、いいね。<br>*(Vì tên "Hizashi = nắng" nên cam và vàng làm trục — hay đấy.)* |
| Tuấn | (Nhật) <ruby>暗<rt>くら</rt></ruby>いところで<ruby>読<rt>よ</rt></ruby>める? furigana<ruby>用<rt>よう</rt></ruby>のグレーは?<br>*(Đọc trong tối được không? Màu xám cho furigana?)* |
| Aiko | (Nhật) Furigana<ruby>用<rt>よう</rt></ruby>は #999999、ダークモード<ruby>時<rt>じ</rt></ruby>は #BBBBBB に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。コントラスト<ruby>比<rt>ひ</rt></ruby>は WCAG AA をクリア。<br>*(Furigana #999999, dark mode chuyển sang #BBBBBB. Contrast ratio đạt WCAG AA.)* |
| Đại | アクセシビリティまで<ruby>考<rt>かんが</rt></ruby>えてくれて<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Tính cả accessibility — cảm ơn em thật.)* |

---

## Tình huống 13 — Pantry · Thứ Bảy 13:00, ăn trưa với Tuấn, hỏi về work-life

*Aiko đã về lab, hai anh em ăn cơm hộp.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (tiếng Việt) Em ơi, anh hỏi thật. Tuần này em ngủ trung bình mấy tiếng? |
| Đại | (tiếng Việt) 6 tiếng anh. Hơi mỏng. |
| Tuấn | (tiếng Việt) Anh cũng từng vậy hồi Mercari Y1. 3 tháng là cháy. Anh đề xuất: thứ Bảy hoặc Chủ Nhật em chọn 1 ngày off hoàn toàn — không laptop. |
| Đại | (tiếng Việt) Em chọn Chủ Nhật. Cho Mai và Hana. |
| Tuấn | (tiếng Việt) Tốt. Anh sẽ giữ cho em. Nếu thứ Bảy nào em vắng thì cứ vắng, anh xử lý standup. |
| Đại | (tiếng Việt) Cảm ơn anh. Anh chăm em hơn em chăm em. |
| Tuấn | (tiếng Việt) Cofounder phải vậy chứ. Em là CEO, em mà cháy thì cả công ty cháy. |

---

## Tình huống 14 — Phòng khách apt Senri-chuo · Chủ Nhật 19:00, cảnh tiếng Việt với Mai

*Đại tắt laptop, gập lại, đặt sang phòng làm việc. Hana đang chơi xếp hình trên thảm.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, tuần này anh muốn báo lại em mấy thứ. Mình sống mới một tuần, em chịu nhiều thứ quá. |
| Mai | (tiếng Việt) Em ổn anh. Em chỉ lo anh. |
| Đại | (tiếng Việt) Anh đã thống nhất với anh Thanh — thứ Tư hàng tuần anh về 17h ăn tối với hai mẹ con. Cố định luôn. |
| Mai | (tiếng Việt) Thật á? Anh xin được luôn? Em tưởng tuần đầu chưa dám xin. |
| Đại | (tiếng Việt) Anh xin bằng keigo: "家庭の都合で17時に退社させていただいてもよろしいでしょうか". Anh Thanh có 2 con, anh hiểu ngay. |
| Mai | (tiếng Việt) Câu đấy hay quá. "家庭の都合" — vì việc gia đình. Em ghi nhớ. |
| Đại | (tiếng Việt) Còn nữa. Tuấn ép anh nghỉ Chủ Nhật, không laptop. Từ tuần sau Chủ Nhật là của ba mẹ con mình. |
| Mai | (tiếng Việt, đôi mắt sáng) Thật á anh? |
| Đại | (tiếng Việt) Thật. Sáng nay anh gặp cô Yamada nhà trẻ. Cô bảo Hana có hơi chậm tiếng vì song ngữ nhưng không lo. Mình cứ nói cả Việt cả Nhật ở nhà như đang làm. |
| Mai | (tiếng Việt) Em mừng anh nói chuyện được với cô. Em nói tiếng Nhật ngại lắm. |
| Đại | (tiếng Việt) Anh sẽ làm cho em bộ flashcard câu cô giáo nhà trẻ. 20 câu thôi: "お世話になっております", "連絡帳に書きます", "熱が出ました", "お迎えに参ります"... Em học 1 tuần là dùng được. |
| Hana | (tiếng Việt) Bố! Mẹ! Đây! Đây! |
| Đại | (bế Hana, tiếng Việt) Ừ con, đây bố mẹ. Bố không đi đâu nữa. |
| Mai | (tiếng Việt) Em chụp một tấm. Cả nhà cười nào. |

---

## Đọng lại chương 2

Tuần đầu Hizashi office Đại đặt được nền cho cả năm: nhịp **standup 21:00 ba câu** (本日・明日・ブロッカー), template **"三段謝罪"** xin gia hạn với khách Nhật (誠に恐縮ですが → 〜させていただけませんでしょうか → ご迷惑をおかけし申し訳ございません), bộ câu mở chat khách **「いつも大変お世話になっております」**. Trao đổi keigo với cô giáo Hana lần đầu — **「いつもお世話になっております・ご相談させていただきたいのですが・連絡帳」** — mở kênh giao tiếp song ngữ cho Hana lớn lên. Xin được trưởng nhóm Thanh cho cố định **thứ Tư 17h về** bằng câu **「家庭の都合で17時に退社させていただいてもよろしいでしょうか」**. Cofounder Tuấn ép Đại nghỉ Chủ Nhật không laptop để giữ sức cho 22.7 tháng runway. Cảnh tiếng Việt cuối ngày Đại dạy lại Mai chuỗi keigo cô giáo nhà trẻ để vợ dùng được khi tự đón Hana.

> Từ vựng & mẫu câu chương này: スタンドアップ・本日の進捗・明日の予定・ブロッカー・誠に恐縮ですが・〜させていただけませんでしょうか・ご迷惑をおかけし申し訳ございません・いつも大変お世話になっております・家庭の都合で・退社させていただいても・連絡帳・ご相談させていただきたいのですが・バーンレート・ランウェイ・MRR・design tokens・WCAG AA・有料ユーザー・お世話になっております・名刺交換

## Bí quyết chương

- Standup ba câu 21:00 (本日・明日・ブロッカー) — đủ ngắn để duy trì hằng ngày khi 1 founder bận ban ngày
- Template "三段謝罪" (xin lỗi 3 lớp) là vũ khí standard của BrSE Việt khi xin gia hạn / xin nghỉ với khách và sếp Nhật
- Khi xin về sớm hằng tuần, dùng "家庭の都合で" + "固定させていただきます" — khách quan, không cần giải thích chi tiết
- Gặp cô giáo nhà trẻ lần đầu mở bằng "いつもお世話になっております" — câu mở mặc định, an toàn 100%
- Cofounder phải bảo vệ nhau khỏi cháy: Đại lo Tuấn-Aiko không cháy, Tuấn lo Đại không cháy — chia ngày off hoàn toàn

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 株式会社 | かぶしきがいしゃ | CỔ THỨC HỘI XÃ | công ty cổ phần |
| 契約 | けいやく | KHẾ ƯỚC | hợp đồng |
| 入館証 | にゅうかんしょう | NHẬP QUÁN CHỨNG | thẻ ra vào |
| 予約 | よやく | DỰ ƯỚC | đặt trước (phòng họp) |
| 利用 | りよう | LỢI DỤNG | sử dụng |
| 進捗 | しんちょく | TIẾN BỘ | tiến độ |
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | biên bản họp |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 音声合成 | おんせいごうせい | ÂM THANH HỢP THÀNH | tổng hợp giọng nói |
| 間隔反復 | かんかくはんぷく | GIAN CÁCH PHẢN PHỤC | spaced repetition |
| 登記 | とうき | ĐĂNG KÝ | đăng ký doanh nghiệp |
| 調達 | ちょうたつ | ĐIỀU ĐẠT | huy động vốn |
| 名刺 | めいし | DANH THÍCH | danh thiếp |
| 名刺交換 | めいしこうかん | DANH THÍCH GIAO HOÁN | trao đổi danh thiếp |
| 収入 | しゅうにゅう | THU NHẬP | thu nhập |
| 有料 | ゆうりょう | HỮU LIỆU | trả phí |
| 月額 | げつがく | NGUYỆT NGẠCH | mức phí hàng tháng |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 誠に恐縮ですが | まことにきょうしゅくですが | THÀNH KHỦNG SÚC | em thật sự rất ngại |
| 延長 | えんちょう | DIÊN TRƯỜNG | gia hạn |
| 追加要件 | ついかようけん | TRUY GIA YẾU KIỆN | yêu cầu phát sinh |
| 想定 | そうてい | TƯỞNG ĐỊNH | dự kiến |
| 迷惑 | めいわく | MÊ HOẶC | phiền hà |
| 申し訳ございません | もうしわけございません | THÂN DỊCH | em rất xin lỗi |
| 三段謝罪 | さんだんしゃざい | TAM ĐOẠN TẠ TỘI | xin lỗi 3 lớp |
| 父親 | ちちおや | PHỤ THÂN | bố, cha |
| 連絡帳 | れんらくちょう | LIÊN LẠC TRƯƠNG | sổ liên lạc |
| ご相談 | ごそうだん | TƯƠNG ĐÀM | trao đổi, bàn bạc |
| 環境 | かんきょう | HOÀN CẢNH | môi trường |
| 家庭の都合 | かていのつごう | GIA ĐÌNH ĐÔ HỢP | vì việc gia đình |
| 退社 | たいしゃ | THOÁI XÃ | về sau giờ làm |
| 固定 | こてい | CỐ ĐỊNH | cố định |
| 保育園 | ほいくえん | BẢO DỤC VIÊN | nhà trẻ |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 背景 | はいけい | BỐI CẢNH | nền, background |
| 切り替え | きりかえ | THIẾT THẾ | chuyển đổi |
