-- Hizashi LITE book SQL — Thái Y4
-- curriculum_id = 800000017  (book_seq=17)
-- nguồn: books/17_thai_year4/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000017, 'N3', 'markdown_book', 'Cơ khí', 'Thái Y4', 'Bộ sách Hizashi — Thái Y4', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000001, 800000017, NULL, 'markdown_book', 'T1. Nhận dự án lead đầu tiên (初リード)', '# Sách kỹ sư khuôn đúc · T1. Nhận dự án lead đầu tiên (初リード)

> **Mục tiêu nhân vật:** Thái (khoảng 26 tuổi, năm 4 tại Aichi) lần đầu được giao dẫn dắt một dự án khuôn nhựa cho khách Toyota Tier-1. Học các mẫu hội thoại tiếng Nhật của một designer junior khi nhận đề bài lớn: tiếp nhận chỉ thị từ cấp trên (案件をお願いします), hỏi lại chi tiết spec (〜というのは・許容範囲は), báo cáo tiến độ với 課長 (進捗報告), xin lời khuyên khi gặp khó (ご相談したいことがあります), quan sát đàn anh review thiết kế, và nói lời cảm ơn / cam kết với đồng nghiệp nước ngoài sắp về nước.

---

## Bối cảnh

Tháng 5 năm 2025. Thái đã sang năm thứ 4 tại **株式会社みなみ精密金型** ở Anjo, Aichi và vừa được nâng lên thiết kế viên junior. Hôm nay 工場長 田中 (Tanaka) giao cho Thái lead một mình khuôn console box (~600×400×200mm) cho khách Hamada — nhà cung cấp Tier-1 của Toyota — với hạn ba tháng. 設計課長 川上 (Kawakami) sẽ hỗ trợ khi cần. Chương này tập trung dạy các mẫu câu công sở Nhật khi một junior nhận dự án lead: nhận chỉ thị, hỏi lại spec, báo cáo định kỳ, xin tư vấn, và giao tiếp với đồng nghiệp.

---

## Tình huống 1 — Phòng họp thiết kế · 9:00, nhận chỉ thị dự án lead từ cấp trên

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、ちょっといいですか。<ruby>初<rt>はつ</rt></ruby>リードの<ruby>案件<rt>あんけん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいんです。<br>*(Tai-kun, em có thời gian không? Tôi muốn giao em một dự án lead đầu tiên.)* |
| Thái | （<ruby>姿勢<rt>しせい</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>す）はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chỉnh lại tư thế. Vâng, em xin nhận ạ.)* |
| Tanaka | コンソールボックスの<ruby>金型<rt>かながた</rt></ruby>です。<ruby>客<rt>きゃく</rt></ruby>さんは<ruby>浜田<rt>はまだ</rt></ruby>さん、トヨタの<ruby>一次<rt>いちじ</rt></ruby>サプライヤーですね。<br>*(Khuôn hộp console. Khách là anh Hamada, nhà cung cấp Tier-1 của Toyota.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>納期<rt>のうき</rt></ruby>はいつまででしょうか。<br>*(Vâng, em rõ ạ. Hạn nộp đến khi nào ạ?)* |
| Tanaka | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>です。<ruby>8<rt>はち</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までに<ruby>設計<rt>せっけい</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>させてください。<br>*(Ba tháng. Em hoàn thành thiết kế trước cuối tháng 8 nhé.)* |
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>8<rt>はち</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Ba tháng, đến cuối tháng 8 ạ. Em rõ rồi.)* |
| Tanaka | <ruby>今回<rt>こんかい</rt></ruby>はタイ<ruby>君<rt>くん</rt></ruby>がリードです。<ruby>設計課長<rt>せっけいかちょう</rt></ruby>のカワカミさんがサポートしますが、<ruby>判断<rt>はんだん</rt></ruby>はタイ<ruby>君<rt>くん</rt></ruby>がしてください。<br>*(Lần này em là lead. Anh Kawakami trưởng phòng thiết kế sẽ hỗ trợ, nhưng quyết định là em.)* |
| Thái | はい。<ruby>初<rt>はじ</rt></ruby>めてのリードなので<ruby>緊張<rt>きんちょう</rt></ruby>していますが、<ruby>精<rt>せい</rt></ruby><ruby>一杯<rt>いっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Là lead lần đầu nên em hồi hộp, nhưng em sẽ cố gắng hết sức.)* |
| Tanaka | <ruby>分<rt>わ</rt></ruby>からないことがあれば、<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>相談<rt>そうだん</rt></ruby>してください。<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Có gì không hiểu thì cứ thoải mái trao đổi. Đừng quên 報連相 nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin được chỉ bảo ạ.)* |

---

## Tình huống 2 — Bàn 設計課長 Kawakami · 10:00, review bản spec và hỏi lại chi tiết

| Vai | Lời thoại |
|---|---|
| Kawakami | タイさん、<ruby>浜田<rt>はまだ</rt></ruby>さんの<ruby>仕様書<rt>しようしょ</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<ruby>50<rt>ごじゅっ</rt></ruby>ページありますよ。<br>*(Anh Thái, mình cùng xem bản spec của anh Hamada nhé. Dày 50 trang đấy.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |
| Kawakami | <ruby>主要<rt>しゅよう</rt></ruby>な<ruby>要求<rt>ようきゅう</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つあります。まずキャビ<ruby>表面<rt>ひょうめん</rt></ruby>の<ruby>粗<rt>あら</rt></ruby>さがRa<ruby>0.4<rt>れいてんよん</rt></ruby>μm<ruby>以下<rt>いか</rt></ruby>。<br>*(Yêu cầu chính có ba. Đầu tiên là độ nhám bề mặt cavity dưới Ra 0.4μm.)* |
| Thái | すみません、「Ra<ruby>0.4<rt>れいてんよん</rt></ruby>μm」というのはどのレベルでしょうか。<ruby>普段<rt>ふだん</rt></ruby>の<ruby>案件<rt>あんけん</rt></ruby>と<ruby>比<rt>くら</rt></ruby>べてどうですか。<br>*(Xin lỗi, "Ra 0.4μm" là mức như thế nào ạ? So với các dự án thường thì sao?)* |
| Kawakami | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>普段<rt>ふだん</rt></ruby>はRa<ruby>0.8<rt>れいてんはち</rt></ruby>μmぐらい。<ruby>今回<rt>こんかい</rt></ruby>はその<ruby>半分<rt>はんぶん</rt></ruby>、つまり<ruby>鏡面<rt>きょうめん</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>い<ruby>仕上<rt>しあ</rt></ruby>げです。<ruby>磨<rt>みが</rt></ruby>き<ruby>工程<rt>こうてい</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>ですよ。<br>*(Câu hỏi tốt. Thường là Ra 0.8μm. Lần này một nửa, tức là gần như mặt gương. Khâu đánh bóng sẽ vất vả đấy.)* |
| Thái | なるほど、<ruby>鏡面<rt>きょうめん</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げに<ruby>近<rt>ちか</rt></ruby>いということですね。メモします。<br>*(Ra vậy, gần như đánh bóng mặt gương ạ. Em ghi lại.)* |
| Kawakami | <ruby>二<rt>に</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>、<ruby>反<rt>そ</rt></ruby>りの<ruby>許容<rt>きょよう</rt></ruby><ruby>値<rt>ち</rt></ruby>は<ruby>0.2<rt>れいてんに</rt></ruby>ミリ<ruby>以下<rt>いか</rt></ruby>です。<br>*(Thứ hai, dung sai cong vênh dưới 0.2 milimet.)* |
| Thái | <ruby>反<rt>そ</rt></ruby>り<ruby>0.2<rt>れいてんに</rt></ruby>ミリですね。<ruby>製品<rt>せいひん</rt></ruby>のサイズが<ruby>600<rt>ろっぴゃく</rt></ruby>ミリだとかなり<ruby>厳<rt>きび</rt></ruby>しいです。<br>*(Cong vênh 0.2mm ạ. Sản phẩm dài 600mm thì khá khó.)* |
| Kawakami | そうです。だから<ruby>水路<rt>すいろ</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>が<ruby>勝負<rt>しょうぶ</rt></ruby>になります。<ruby>三<rt>さん</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>、サイクル<ruby>時間<rt>じかん</rt></ruby>は<ruby>60<rt>ろくじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>以下<rt>いか</rt></ruby>。<br>*(Đúng. Vì vậy thiết kế kênh nước là quyết định. Thứ ba, thời gian chu kỳ dưới 60 giây.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>三<rt>みっ</rt></ruby>つとも<ruby>仕様書<rt>しようしょ</rt></ruby>の<ruby>何<rt>なん</rt></ruby>ページに<ruby>書<rt>か</rt></ruby>いてありますか。<br>*(Em rõ rồi. Cả ba ghi ở trang nào của spec ạ?)* |
| Kawakami | <ruby>12<rt>じゅうに</rt></ruby>ページから<ruby>15<rt>じゅうご</rt></ruby>ページにまとめてあります。<ruby>付箋<rt>ふせん</rt></ruby>を<ruby>貼<rt>は</rt></ruby>っておいてください。<br>*(Tổng hợp ở trang 12 đến 15. Em dán tab vào để dễ tra.)* |
| Thái | はい、すぐ<ruby>貼<rt>は</rt></ruby>ります。ありがとうございます。<br>*(Vâng, em dán ngay. Em cảm ơn ạ.)* |

---

## Tình huống 3 — Bàn làm việc Thái · 14:00, vừa thiết kế vừa tự nói thành lời để ghi nhớ

| Vai | Lời thoại |
|---|---|
| Thái | （SolidWorksを<ruby>起動<rt>きどう</rt></ruby>しながら）まずは<ruby>製品<rt>せいひん</rt></ruby>の<ruby>3<rt>さん</rt></ruby>Dデータを<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>もう。<br>*(Vừa khởi động SolidWorks. Trước hết nạp dữ liệu 3D của sản phẩm.)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>つめる）コンソールボックスは<ruby>600<rt>ろっぴゃく</rt></ruby>×<ruby>400<rt>よんひゃく</rt></ruby>×<ruby>200<rt>にひゃく</rt></ruby>ミリ。<ruby>結構<rt>けっこう</rt></ruby><ruby>大<rt>おお</rt></ruby>きいな。<br>*(Nhìn màn hình. Hộp console 600×400×200mm. Khá là to.)* |
| Thái | <ruby>次<rt>つぎ</rt></ruby>に<ruby>分割線<rt>ぶんかつせん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>こう。アンダーカットの<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しないと。<br>*(Tiếp theo vẽ đường phân khuôn. Phải kiểm tra vị trí undercut.)* |
| Thái | （マウスを<ruby>動<rt>うご</rt></ruby>かす）あ、ここにアンダーカットが<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>ある。スライドコアが<ruby>必要<rt>ひつよう</rt></ruby>だ。<br>*(Di chuột. À, có hai chỗ undercut. Cần lõi trượt.)* |
| Thái | （<ruby>付箋<rt>ふせん</rt></ruby>にメモ）スライド<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>カワカミ<ruby>課長<rt>かちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してもらおう。<br>*(Ghi vào giấy nhớ. Hai chỗ slide, mai nhờ trưởng phòng Kawakami xác nhận.)* |
| Thái | <ruby>仕様書<rt>しようしょ</rt></ruby>の<ruby>12<rt>じゅうに</rt></ruby>ページ、もう<ruby>一度<rt>いちど</rt></ruby><ruby>読<rt>よ</rt></ruby>もう。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>明日<rt>あした</rt></ruby><ruby>聞<rt>き</rt></ruby>かなきゃ。<br>*(Đọc lại trang 12 của spec lần nữa. Chỗ nào không hiểu mai phải hỏi.)* |

---

## Tình huống 4 — Bàn 設計課長 Kawakami · sáng hôm sau 9:30, hỏi lại khi chưa hiểu thuật ngữ

| Vai | Lời thoại |
|---|---|
| Thái | カワカミ<ruby>課長<rt>かちょう</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<ruby>確認<rt>かくにん</rt></ruby>したいことがあります。<br>*(Trưởng phòng Kawakami, anh có thời gian không ạ? Em có việc muốn xác nhận.)* |
| Kawakami | いいですよ、どうぞ。<br>*(Được, em nói đi.)* |
| Thái | <ruby>仕様書<rt>しようしょ</rt></ruby>の<ruby>14<rt>じゅうよん</rt></ruby>ページに「<ruby>離型<rt>りけい</rt></ruby><ruby>抵抗<rt>ていこう</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>がありますが、これはどういう<ruby>意味<rt>いみ</rt></ruby>ですか。<br>*(Ở trang 14 của spec có từ "離型抵抗", nghĩa là gì ạ?)* |
| Kawakami | <ruby>製品<rt>せいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>抜<rt>ぬ</rt></ruby>くときの<ruby>抵抗<rt>ていこう</rt></ruby>のことです。<ruby>抵抗<rt>ていこう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいと<ruby>製品<rt>せいひん</rt></ruby>が<ruby>傷<rt>きず</rt></ruby>つきます。<br>*(Là lực cản khi tách sản phẩm ra khỏi khuôn. Lực cản lớn thì sản phẩm bị xước.)* |
| Thái | なるほど、<ruby>離型<rt>りけい</rt></ruby><ruby>抵抗<rt>ていこう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいと<ruby>傷<rt>きず</rt></ruby>になるということですね。どう<ruby>対策<rt>たいさく</rt></ruby>しますか。<br>*(Ra vậy, lực tách lớn thì xước. Cách xử lý là gì ạ?)* |
| Kawakami | <ruby>抜<rt>ぬ</rt></ruby>き<ruby>勾配<rt>こうばい</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きくしたり、<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>いたりします。<ruby>今回<rt>こんかい</rt></ruby>の<ruby>製品<rt>せいひん</rt></ruby>は<ruby>勾配<rt>こうばい</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>取<rt>と</rt></ruby>ってください。<br>*(Tăng góc thoát khuôn, hoặc đánh bóng bề mặt. Lần này em lấy góc thoát từ 1 độ trở lên.)* |
| Thái | <ruby>抜<rt>ぬ</rt></ruby>き<ruby>勾配<rt>こうばい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>ですね。それから、スライドコアが<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>だと<ruby>判断<rt>はんだん</rt></ruby>しました。<ruby>見<rt>み</rt></ruby>ていただけますか。<br>*(Góc thoát trên 1 độ ạ. Còn nữa, em phán đoán cần hai lõi trượt. Anh xem giúp em được không?)* |
| Kawakami | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）うん、<ruby>位置<rt>いち</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しいです。<ruby>判断<rt>はんだん</rt></ruby>が<ruby>早<rt>はや</rt></ruby>いですね、いいです。<br>*(Nhìn màn hình. Ừm, vị trí đúng. Em phán đoán nhanh đấy, tốt.)* |
| Thái | ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em cảm ơn ạ. Em học được nhiều.)* |

---

## Tình huống 5 — Phòng họp nhỏ · 1 tuần sau 10:00, báo cáo tiến độ với 課長

| Vai | Lời thoại |
|---|---|
| Kawakami | では、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>経<rt>た</rt></ruby>ちましたね。<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Một tuần đã trôi qua nhỉ. Em báo cáo tiến độ đi.)* |
| Thái | はい。<ruby>現在<rt>げんざい</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>約<rt>やく</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby>%です。<ruby>分割線<rt>ぶんかつせん</rt></ruby>とスライドコアの<ruby>配置<rt>はいち</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Vâng. Hiện tại tiến độ khoảng 25% tổng thể. Đường phân khuôn và bố trí lõi trượt đã xong.)* |
| Kawakami | スライド<ruby>位置<rt>いち</rt></ruby>はこの<ruby>前<rt>まえ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>したやつですね。OKです。<ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めますか。<br>*(Vị trí slide là cái hôm trước đã xác nhận nhỉ. OK. Tiếp theo em làm gì?)* |
| Thái | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>水路<rt>すいろ</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>です。<ruby>反<rt>そ</rt></ruby>り<ruby>0.2<rt>れいてんに</rt></ruby>ミリの<ruby>要求<rt>ようきゅう</rt></ruby>が<ruby>厳<rt>きび</rt></ruby>しいので、<ruby>慎重<rt>しんちょう</rt></ruby>にやります。<br>*(Tuần tới em dự định bắt đầu thiết kế kênh nước. Yêu cầu cong vênh 0.2mm khắt khe nên em làm cẩn thận.)* |
| Kawakami | <ruby>水路<rt>すいろ</rt></ruby>はMoldex<ruby>3<rt>さん</rt></ruby>Dのシミュレーションが<ruby>必須<rt>ひっす</rt></ruby>です。やり<ruby>方<rt>かた</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりますか。<br>*(Kênh nước thì mô phỏng Moldex3D là bắt buộc. Em biết cách làm chưa?)* |
| Thái | <ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>研修<rt>けんしゅう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>いましたが、<ruby>一人<rt>ひとり</rt></ruby>でやるのは<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>不安<rt>ふあん</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>があれば<ruby>相談<rt>そうだん</rt></ruby>させていただきたいです。<br>*(Hai năm trước em được học trong khoá đào tạo, nhưng tự mình làm là lần đầu. Có chỗ lo lắng em xin được trao đổi với anh ạ.)* |
| Kawakami | もちろんです。<ruby>困<rt>こま</rt></ruby>ったら<ruby>声<rt>こえ</rt></ruby>をかけてください。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>の<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>定例<rt>ていれい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>にしましょうか。<br>*(Tất nhiên. Có khó thì gọi anh. Mỗi tuần thứ Sáu 10 giờ ta lập báo cáo định kỳ nhé.)* |
| Thái | はい、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>定例<rt>ていれい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>ですね。カレンダーに<ruby>入<rt>い</rt></ruby>れます。<br>*(Vâng, thứ Sáu hàng tuần 10 giờ báo cáo định kỳ ạ. Em bỏ vào lịch.)* |
| Kawakami | <ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>のフォーマットはメールで<ruby>送<rt>おく</rt></ruby>っておきます。<br>*(Mẫu báo cáo tiến độ anh sẽ gửi qua mail.)* |
| Thái | ありがとうございます。<ruby>確認<rt>かくにん</rt></ruby>して<ruby>返信<rt>へんしん</rt></ruby>します。<br>*(Em cảm ơn ạ. Em xem rồi trả lời.)* |

---

## Tình huống 6 — Bàn 先輩 Sato · 15:00, quan sát đàn anh review thiết kế

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いただけますか。<br>*(Đàn anh Sato, xin lỗi đã làm phiền lúc anh bận. Em xin chút thời gian được không?)* |
| Sato | おう、タイ<ruby>君<rt>くん</rt></ruby>。<ruby>初<rt>はつ</rt></ruby>リードだって？<br>*(Ồ, Tai-kun. Nghe nói lead đầu hả?)* |
| Thái | はい。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>はリードの<ruby>経験<rt>けいけん</rt></ruby>が<ruby>豊富<rt>ほうふ</rt></ruby>なので、<ruby>水路<rt>すいろ</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>の<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>を<ruby>見<rt>み</rt></ruby>せていただきたくて。<br>*(Vâng. Đàn anh kinh nghiệm lead phong phú, em muốn xin xem cách anh tiến hành thiết kế kênh nước ạ.)* |
| Sato | いいよ。ちょうど<ruby>今<rt>いま</rt></ruby><ruby>別<rt>べつ</rt></ruby>の<ruby>案件<rt>あんけん</rt></ruby>の<ruby>水路<rt>すいろ</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>いているところだ。<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>てて。<br>*(Được. Anh đang vẽ kênh nước dự án khác. Đứng cạnh xem đi.)* |
| Sato | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>指<rt>さ</rt></ruby>す）<ruby>水路<rt>すいろ</rt></ruby>はまず<ruby>製品<rt>せいひん</rt></ruby>の<ruby>厚<rt>あつ</rt></ruby>みを<ruby>見<rt>み</rt></ruby>る。<ruby>厚<rt>あつ</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>に<ruby>水<rt>みず</rt></ruby>をしっかり<ruby>当<rt>あ</rt></ruby>てる。<br>*(Chỉ màn hình. Vẽ kênh nước trước hết phải xem độ dày sản phẩm. Chỗ dày thì cho nước chạy mạnh vào.)* |
| Thái | <ruby>厚<rt>あつ</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>に<ruby>水<rt>みず</rt></ruby>をしっかり<ruby>当<rt>あ</rt></ruby>てる、ですね。メモします。<br>*(Chỗ dày thì cho nước chạy mạnh vào ạ. Em ghi.)* |
| Sato | <ruby>次<rt>つぎ</rt></ruby>、<ruby>水路<rt>すいろ</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は<ruby>製品<rt>せいひん</rt></ruby>の<ruby>厚<rt>あつ</rt></ruby>みの<ruby>3<rt>さん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>が<ruby>目安<rt>めやす</rt></ruby>。<br>*(Tiếp, khoảng cách kênh nước thường lấy 3 đến 5 lần độ dày sản phẩm.)* |
| Thái | <ruby>3<rt>さん</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>ですね。<ruby>厚<rt>あつ</rt></ruby>みが<ruby>3<rt>さん</rt></ruby>ミリだったら<ruby>9<rt>きゅう</rt></ruby>ミリから<ruby>15<rt>じゅうご</rt></ruby>ミリということですか。<br>*(3 đến 5 lần ạ. Vậy dày 3mm thì khoảng 9 đến 15mm ạ?)* |
| Sato | そうそう。<ruby>計算<rt>けいさん</rt></ruby><ruby>早<rt>はや</rt></ruby>いね。それから、<ruby>必<rt>かなら</rt></ruby>ずMoldex<ruby>3<rt>さん</rt></ruby>Dで<ruby>確認<rt>かくにん</rt></ruby>すること。<ruby>頭<rt>あたま</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えただけでは<ruby>足<rt>た</rt></ruby>りない。<br>*(Đúng đúng. Tính nhanh nhỉ. Còn nữa, nhất định kiểm tra bằng Moldex3D. Suy nghĩ trong đầu thôi thì chưa đủ.)* |
| Thái | はい、シミュレーションは<ruby>必<rt>かなら</rt></ruby>ずやります。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vâng, mô phỏng em chắc chắn sẽ làm. Em học được rất nhiều ạ.)* |
| Sato | リードは<ruby>大変<rt>たいへん</rt></ruby>だけど<ruby>楽<rt>たの</rt></ruby>しいよ。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Lead vất vả nhưng vui đấy. Cố lên.)* |

---

## Tình huống 7 — Khu hút thuốc · 17:30, xin lời khuyên 工場長 khi cảm thấy áp lực

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。ちょっとご<ruby>相談<rt>そうだん</rt></ruby>したいことがあるんですが、よろしいでしょうか。<br>*(Trưởng nhà máy, anh vất vả rồi. Em có chuyện muốn trao đổi, có được không ạ?)* |
| Tanaka | お<ruby>疲<rt>つか</rt></ruby>れさま。どうしましたか。<br>*(Em vất vả. Có chuyện gì thế?)* |
| Thái | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げると、<ruby>初<rt>はつ</rt></ruby>リードのプレッシャーが<ruby>大<rt>おお</rt></ruby>きくて、<ruby>夜<rt>よる</rt></ruby><ruby>眠<rt>ねむ</rt></ruby>れないことがあります。<br>*(Em xin nói thật, áp lực lead đầu lớn quá, có hôm em không ngủ được.)* |
| Tanaka | そうですか。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>してくれてありがとう。<br>*(Vậy à. Cảm ơn em đã nói thật.)* |
| Thái | <ruby>失敗<rt>しっぱい</rt></ruby>したら<ruby>会社<rt>かいしゃ</rt></ruby>にご<ruby>迷惑<rt>めいわく</rt></ruby>をかけるのではないかと<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Em lo nếu thất bại sẽ làm phiền công ty.)* |
| Tanaka | <ruby>気持<rt>きも</rt></ruby>ちはよく<ruby>分<rt>わ</rt></ruby>かります。<ruby>私<rt>わたし</rt></ruby>も<ruby>初<rt>はつ</rt></ruby>リードのときは<ruby>同<rt>おな</rt></ruby>じでした。<br>*(Anh hiểu rõ cảm xúc đó. Anh hồi lead đầu cũng vậy.)* |
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>もですか。<br>*(Trưởng nhà máy cũng vậy ạ?)* |
| Tanaka | はい。<ruby>大切<rt>たいせつ</rt></ruby>なのは<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>まないこと。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>聞<rt>き</rt></ruby>く、<ruby>困<rt>こま</rt></ruby>ったら<ruby>相談<rt>そうだん</rt></ruby>する。それが<ruby>報連相<rt>ほうれんそう</rt></ruby>の<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Ừ. Quan trọng là đừng ôm một mình. Không biết thì hỏi, khó thì trao đổi. Đó mới là ý nghĩa thật của 報連相.)* |
| Thái | <ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>まない...ですね。<ruby>心<rt>こころ</rt></ruby>に<ruby>留<rt>と</rt></ruby>めます。<br>*(Không ôm một mình ạ. Em xin khắc ghi.)* |
| Tanaka | リーダーは「<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でやる<ruby>人<rt>ひと</rt></ruby>」ではなく、「<ruby>適切<rt>てきせつ</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>れる<ruby>人<rt>ひと</rt></ruby>」です。<br>*(Lead không phải là "người làm hết một mình" mà là "người biết nhờ cậy đúng cách".)* |
| Thái | はい、ありがとうございます。<ruby>気持<rt>きも</rt></ruby>ちが<ruby>軽<rt>かる</rt></ruby>くなりました。<br>*(Vâng, em cảm ơn ạ. Em thấy nhẹ lòng hơn.)* |

---

## Tình huống 8 — Phòng 201 ký túc · 22:00, Putra động viên bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、<ruby>今日<rt>きょう</rt></ruby>も<ruby>遅<rt>おそ</rt></ruby>かったね。<ruby>初<rt>はつ</rt></ruby>リード、どう？<br>*(Anh Thái, hôm nay cũng về muộn nhỉ. Lead đầu thế nào?)* |
| Thái | プトラさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。プレッシャーが<ruby>大<rt>おお</rt></ruby>きいですが、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>進<rt>すす</rt></ruby>めています。<br>*(Anh Putra, anh vất vả rồi. Áp lực lớn nhưng em đang nhích từng chút một.)* |
| Putra | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、タイさんなら<ruby>絶対<rt>ぜったい</rt></ruby>できますよ。<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>と<ruby>比<rt>くら</rt></ruby>べて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>変<rt>か</rt></ruby>わりました。<br>*(Yên tâm đi, là anh thì chắc chắn làm được. So với 3 năm trước, anh thay đổi nhiều thật đấy.)* |
| Thái | そうですか。<ruby>自分<rt>じぶん</rt></ruby>では<ruby>分<rt>わ</rt></ruby>からないですが。<br>*(Vậy à. Em thì không tự thấy được.)* |
| Putra | <ruby>来日<rt>らいにち</rt></ruby>したばかりのときは、<ruby>二次<rt>にじ</rt></ruby>サプライヤーの<ruby>意味<rt>いみ</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からなかったでしょう？<ruby>今<rt>いま</rt></ruby>はリードですよ、リード。<br>*(Lúc mới sang Nhật, nghĩa của "Tier-2 supplier" anh còn chưa hiểu nhỉ? Giờ là lead rồi đấy, lead.)* |
| Thái | （<ruby>笑<rt>わら</rt></ruby>う）プトラさんに<ruby>教<rt>おし</rt></ruby>えてもらった<ruby>言葉<rt>ことば</rt></ruby>、たくさんあります。<br>*(Cười. Em được anh Putra dạy nhiều từ lắm.)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby>、SSW<ruby>1<rt>いち</rt></ruby>が<ruby>終<rt>お</rt></ruby>わってインドネシアに<ruby>帰<rt>かえ</rt></ruby>ります。タイさんの<ruby>初<rt>はつ</rt></ruby>リードが<ruby>成功<rt>せいこう</rt></ruby>するのを<ruby>見<rt>み</rt></ruby>てから<ruby>帰<rt>かえ</rt></ruby>りたいです。<br>*(Sang năm SSW1 của tôi kết thúc, tôi về Indonesia. Tôi muốn nhìn thấy lead đầu của anh thành công rồi mới về.)* |
| Thái | プトラさん...ありがとうございます。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>させます。<ruby>約束<rt>やくそく</rt></ruby>します。<br>*(Anh Putra... em cảm ơn anh. Em chắc chắn sẽ làm thành công. Em xin hứa.)* |
| Putra | <ruby>頑張<rt>がんば</rt></ruby>って、タイさん。<ruby>明日<rt>あした</rt></ruby>も<ruby>早<rt>はや</rt></ruby>いから、もう<ruby>寝<rt>ね</rt></ruby>ましょう。<br>*(Cố lên anh Thái. Mai cũng sớm, ngủ thôi.)* |
| Thái | はい、おやすみなさい。<br>*(Vâng, ngủ ngon ạ.)* |

---

## Tình huống 9 — Phòng 201 · 23:00, gọi điện về Việt Nam cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại với người yêu ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai à, em ngủ chưa? Anh gọi muộn quá. |
| Mai | (tiếng Việt) Chưa anh, em đang đợi anh. Hôm nay sao rồi? |
| Thái | (tiếng Việt) Hôm nay ông Tanaka giao anh dự án lead đầu tiên. Khuôn console box cho khách Hamada — Tier-1 của Toyota. Hạn ba tháng. |
| Mai | (tiếng Việt) Lead đầu tiên cơ á? Vui không anh? |
| Thái | (tiếng Việt) Vui mà cũng sợ. Spec dày 50 trang. Yêu cầu mặt cavity Ra 0.4 micromet, cong vênh dưới 0.2 milimet, chu kỳ dưới 60 giây. Cái nào cũng khắt khe hơn dự án thường. |
| Mai | (tiếng Việt) Anh có ai hỗ trợ không? |
| Thái | (tiếng Việt) Có. Trưởng phòng Kawakami chỉ anh từng bước, đàn anh Sato cho anh đứng cạnh xem cách vẽ kênh nước. Trưởng nhà máy còn dặn lead không phải làm một mình, mà là biết nhờ cậy đúng cách. |
| Mai | (tiếng Việt) Câu đó hay đấy. Anh học được nhiều rồi. |
| Thái | (tiếng Việt) Ừ. Putra thì hẹn anh trước khi cậu ấy về Indonesia phải thấy dự án này thành công. Áp lực lắm em ạ, nhưng cũng ấm. |
| Mai | (tiếng Việt) Anh cứ làm từng bước. Báo cáo định kỳ thứ Sáu hàng tuần như anh kể, cứ vậy mà nhích. Em đợi anh. |
| Thái | (tiếng Việt) Ừ. Em ngủ ngon. Mai 7 giờ rưỡi anh xuống xưởng rồi. |
| Mai | (tiếng Việt) Anh ngủ ngon. Cố lên anh. |

---

## Đọng lại chương 1

Lần đầu được giao lead một mình, Thái học được các mẫu câu công sở Nhật mà mọi designer junior đều phải dùng: **nhận chỉ thị từ cấp trên** (お願いしたい・承知しました・精一杯頑張ります), **hỏi lại chi tiết spec khi chưa rõ** (〜というのはどういう意味ですか・〜ということですね), **báo cáo tiến độ định kỳ** (現在の進捗は〜%です・来週から〜に入る予定です), **xin tư vấn khi áp lực** (ご相談したいことがあります・正直に申し上げると), và **học bằng quan sát đàn anh** (横で見せてください・メモします). Quan trọng hơn, Thái nhận ra triết lý mà 工場長 Tanaka truyền: lead không phải "người làm hết một mình" mà là **người biết nhờ cậy đúng cách** — đó mới là ý nghĩa thật của **報連相**. Cuối ngày, lời hứa với Putra và Mai chốt lại mạch tinh thần: ba tháng tới, mỗi câu **〜ということですね**, mỗi cái mail báo cáo định kỳ, sẽ là từng viên gạch xây nên designer thực thụ.

> Từ vựng & mẫu câu chương này: 初リード・案件・承知しました・納期・仕様書・キャビ表面・粗さ・反り・許容値・サイクル時間・分割線・アンダーカット・スライドコア・抜き勾配・離型抵抗・水路設計・進捗報告・定例報告・Moldex3D・シミュレーション・報連相・相談・抱え込まない・〜というのは・〜ということですね・ご相談したいことがあります・精一杯頑張ります・正直に申し上げると

## Bí quyết chương

- **Setup payoff sách 18**: 設計者 + N2 + 永住 — sách này là cột mốc "đầu tiên được lead".
- **Putra hẹn về Indonesia**: lời hứa "muốn thấy dự án thành công" sẽ payoff cuối arc.
- **VN nhà**: Mai vẫn đợi — giữ mạch xuyên 5 sách.
- **Triết lý Tanaka**: "リーダーは適切に頼れる人" — câu chốt giá trị nghề.

> *"5/2025. Lead đầu. Console box. Ba tháng. 報連相 mới là vũ khí thật."*', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000002, 800000017, NULL, 'markdown_book', 'T2. Thiết kế A→Z trong 3 tháng (設計A→Z)', '# Sách kỹ sư khuôn đúc · T2. Thiết kế A→Z trong 3 tháng (設計A→Z)

> **Mục tiêu nhân vật:** Thái (26 tuổi, Hà Nội) lead thiết kế khuôn console hộp lần đầu tại みなみ精密金型 (Anjo). Học các mẫu hội thoại tiếng Nhật chuyên ngành khuôn đúc cao cấp: báo cáo kết quả mô phỏng Moldex3D (反り・水路), điều phối CAM với 先輩 (お願いする・分担), hỏi lại khi nghe thuật ngữ lạ (〜というのは?), báo lỗi sau trial (ウェルドライン・ゲート位置), trao đổi phương án sửa với 設計課長, nhận feedback chăm sóc sức khoẻ từ cấp trên (休もう・無理しないで), và báo cáo kết quả 承認試作 với 品質保証 (PPAP・Cpk).

---

## Bối cảnh

Tháng 6–9 năm 2025. Thái đã làm tại **株式会社みなみ精密金型** (Anjo, Aichi) được 3 năm, lần đầu lead thiết kế khuôn console hộp cho khách Toyota 車体. Trình độ tiếng Nhật N2 (đỗ tháng 7/2025). Ba tháng cao điểm: tháng 6 chốt mô phỏng, tháng 7 phối hợp CAM với 桜井先輩, tháng 8 gia công liên tục, tháng 9 bắn thử lần đầu — lộ lỗi ウェルドライン — sửa ゲート rồi đạt 承認試作. Chương này tập trung mẫu câu báo cáo kết quả kỹ thuật, hỏi/xin hỗ trợ đàn anh, hội ý sửa lỗi với 設計課長, và đối thoại trang trọng với 品質保証.

---

## Tình huống 1 — Phòng thiết kế · 6/2025 giữa tháng 10:30, báo cáo kết quả mô phỏng Moldex3D

| Vai | Lời thoại |
|---|---|
| Thái | （Moldex3Dの<ruby>結果<rt>けっか</rt></ruby><ruby>画面<rt>がめん</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>く）<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>解析<rt>かいせき</rt></ruby><ruby>結果<rt>けっか</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Mở màn hình kết quả Moldex3D. Trưởng phòng Kawakami, em xin báo cáo kết quả phân tích.)* |
| Kawakami | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời cậu.)* |
| Thái | コンソールボックスの<ruby>反<rt>そ</rt></ruby>りは0.18<ruby>ミリ<rt>みり</rt></ruby>でした。<ruby>許容<rt>きょよう</rt></ruby><ruby>値<rt>ち</rt></ruby>の0.2<ruby>ミリ<rt>みり</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まっています。<br>*(Warpage của console box là 0.18mm. Nằm trong giá trị cho phép 0.2mm.)* |
| Kawakami | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）よし、OKだ。<ruby>水路<rt>すいろ</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby>はどうなっている？<br>*(Kiểm tra màn hình. Tốt, OK. Còn thiết kế đường nước thì sao?)* |
| Thái | <ruby>水路<rt>すいろ</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>配置<rt>はいち</rt></ruby>しました。<ruby>左右<rt>さゆう</rt></ruby><ruby>対称<rt>たいしょう</rt></ruby>で、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>22<rt>にじゅうに</rt></ruby><ruby>秒<rt>びょう</rt></ruby>です。<br>*(Em bố trí 5 đường nước. Đối xứng trái phải, thời gian làm nguội 22 giây.)* |
| Kawakami | <ruby>冷却<rt>れいきゃく</rt></ruby>バランスは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か？<br>*(Cân bằng làm nguội ổn chứ?)* |
| Thái | はい、<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<ruby>解析<rt>かいせき</rt></ruby><ruby>レポート<rt>れぽーと</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Vâng, chênh nhiệt trong vòng 3 độ. Em xin nộp báo cáo phân tích.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby>からCAM<ruby>工程<rt>こうてい</rt></ruby>に<ruby>進<rt>すす</rt></ruby>もう。<br>*(Hiểu rồi. Tuần sau bắt đầu sang công đoạn CAM.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Bàn 桜井先輩 · 7/2025 đầu tháng 13:00, xin hỗ trợ CAM 50 chi tiết

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>のCAMを<ruby>俺<rt>おれ</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>うんだろう？<ruby>聞<rt>き</rt></ruby>いたよ。<br>*(Tai-kun, tớ hỗ trợ CAM cho cậu phải không? Tớ nghe rồi.)* |
| Thái | はい、<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>今回<rt>こんかい</rt></ruby>のコンソールは<ruby>部品<rt>ぶひん</rt></ruby>が<ruby>50<rt>ごじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>あります。<br>*(Vâng, đàn anh Sakurai, em mong anh giúp đỡ. Console lần này có 50 chi tiết.)* |
| Sakurai | <ruby>50<rt>ごじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>か。Mastercamで<ruby>切<rt>き</rt></ruby>るんだな？<br>*(50 chi tiết à. Cắt bằng Mastercam nhỉ?)* |
| Thái | はい、Mastercamです。<ruby>納期<rt>のうき</rt></ruby>までに<ruby>4<rt>よん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>しかありません。<br>*(Vâng, Mastercam ạ. Đến deadline chỉ còn 4 tuần.)* |
| Sakurai | <ruby>分担<rt>ぶんたん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めよう。<ruby>俺<rt>おれ</rt></ruby>が<ruby>形状<rt>けいじょう</rt></ruby>の<ruby>複雑<rt>ふくざつ</rt></ruby>な<ruby>20<rt>にじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、タイ<ruby>君<rt>くん</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>りの<ruby>30<rt>さんじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>。どう？<br>*(Phân công đi. Tớ làm 20 chi tiết hình dạng phức tạp, Tai-kun làm 30 chi tiết còn lại. Sao?)* |
| Thái | はい、<ruby>助<rt>たす</rt></ruby>かります。すみません、「<ruby>分担<rt>ぶんたん</rt></ruby>」というのは、<ruby>仕事<rt>しごと</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けて<ruby>担当<rt>たんとう</rt></ruby>するということですね？<br>*(Vâng, anh giúp em quá. Xin lỗi, "buntan" tức là chia việc ra phụ trách phải không ạ?)* |
| Sakurai | そうそう。<ruby>分<rt>わ</rt></ruby>けて<ruby>担当<rt>たんとう</rt></ruby>する、つまり<ruby>分担<rt>ぶんたん</rt></ruby>だ。<br>*(Đúng đúng. Chia ra phụ trách, tức là buntan.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>に<ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をしてもよろしいですか？<br>*(Em hiểu rồi. Mỗi thứ Sáu kiểm tra tiến độ với anh được không ạ?)* |
| Sakurai | いいよ。<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>聞<rt>き</rt></ruby>いてね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Được. Có khó khăn gì lúc nào cũng hỏi tớ nhé. Cùng cố lên.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh giúp đỡ.)* |

---

## Tình huống 3 — Xưởng gia công · 7/2025 giữa tháng 15:00, quan sát đàn anh chạy Mastercam

| Vai | Lời thoại |
|---|---|
| Sakurai | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>指<rt>さ</rt></ruby>す）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>見<rt>み</rt></ruby>てて。この<ruby>形状<rt>けいじょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>軸<rt>じく</rt></ruby>じゃ<ruby>無理<rt>むり</rt></ruby>だから<ruby>5<rt>ご</rt></ruby><ruby>軸<rt>じく</rt></ruby><ruby>加工<rt>かこう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>える。<br>*(Chỉ vào màn hình. Tai-kun, xem này. Hình dạng này 3 trục không được, phải chuyển sang gia công 5 trục.)* |
| Thái | <ruby>5<rt>ご</rt></ruby><ruby>軸<rt>じく</rt></ruby><ruby>加工<rt>かこう</rt></ruby>...というのは？<br>*(Gia công 5 trục... nghĩa là gì ạ?)* |
| Sakurai | <ruby>普通<rt>ふつう</rt></ruby>のフライスはXYZの<ruby>3<rt>さん</rt></ruby><ruby>軸<rt>じく</rt></ruby>だけ<ruby>動<rt>うご</rt></ruby>くだろう？<ruby>5<rt>ご</rt></ruby><ruby>軸<rt>じく</rt></ruby>は<ruby>傾<rt>かたむ</rt></ruby>きと<ruby>回転<rt>かいてん</rt></ruby>が<ruby>加<rt>くわ</rt></ruby>わるんだ。<ruby>深<rt>ふか</rt></ruby>い<ruby>溝<rt>みぞ</rt></ruby>とアンダーカットが<ruby>一度<rt>いちど</rt></ruby>で<ruby>切<rt>き</rt></ruby>れる。<br>*(Phay thường chỉ chạy 3 trục XYZ phải không? 5 trục thêm góc nghiêng và xoay. Rãnh sâu và undercut cắt được trong một lần.)* |
| Thái | なるほど、<ruby>傾<rt>かたむ</rt></ruby>きと<ruby>回転<rt>かいてん</rt></ruby>が<ruby>加<rt>くわ</rt></ruby>わるということですね。<br>*(Em hiểu, tức là cộng thêm nghiêng và xoay ạ.)* |
| Sakurai | そうそう。<ruby>工具<rt>こうぐ</rt></ruby><ruby>軌道<rt>きどう</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>するのが<ruby>難<rt>むずか</rt></ruby>しいから、まずは<ruby>俺<rt>おれ</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てね。<br>*(Đúng. Tính quỹ đạo dao khó nên cứ quan sát kỹ cách của tớ trước.)* |
| Thái | はい、メモ<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vâng, em xin phép ghi chú lại.)* |
| Sakurai | （ツールパスを<ruby>作<rt>つく</rt></ruby>る）まず<ruby>荒削<rt>あらけず</rt></ruby>り、<ruby>次<rt>つぎ</rt></ruby>に<ruby>中仕上<rt>ちゅうしあ</rt></ruby>げ、<ruby>最後<rt>さいご</rt></ruby>に<ruby>仕上<rt>しあ</rt></ruby>げ。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>間違<rt>まちが</rt></ruby>えるとビビリが<ruby>出<rt>で</rt></ruby>るぞ。<br>*(Tạo toolpath. Đầu tiên thô, sau đó bán tinh, cuối cùng tinh. Sai thứ tự là rung ngay.)* |
| Thái | <ruby>荒削<rt>あらけず</rt></ruby>り→<ruby>中仕上<rt>ちゅうしあ</rt></ruby>げ→<ruby>仕上<rt>しあ</rt></ruby>げ、ですね。「ビビリ」というのは<ruby>振動<rt>しんどう</rt></ruby>のことですか？<br>*(Thô → bán tinh → tinh ạ. "Bibiri" tức là rung phải không ạ?)* |
| Sakurai | そう、<ruby>工具<rt>こうぐ</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えて<ruby>面<rt>めん</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くなる<ruby>現象<rt>げんしょう</rt></ruby>。<ruby>切削<rt>せっさく</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>が<ruby>合<rt>あ</rt></ruby>わないと<ruby>起<rt>お</rt></ruby>こる。<br>*(Đúng, hiện tượng dao rung làm bề mặt xấu. Xảy ra khi điều kiện cắt không hợp.)* |
| Thái | ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Cảm ơn anh. Em học được nhiều.)* |

---

## Tình huống 4 — Phòng thiết kế · 8/2025 giữa tháng 21:00, cấp trên dặn nghỉ ngơi

| Vai | Lời thoại |
|---|---|
| Sakurai | （<ruby>覗<rt>のぞ</rt></ruby>き<ruby>込<rt>こ</rt></ruby>む）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いよ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>残業<rt>ざんぎょう</rt></ruby>してるだろ？<br>*(Liếc nhìn. Tai-kun, sắc mặt kém đấy. Tăng ca 10 tiếng mỗi ngày phải không?)* |
| Thái | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>納期<rt>のうき</rt></ruby>が<ruby>迫<rt>せま</rt></ruby>っていますので、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em không sao. Sắp đến deadline nên em cố thêm chút nữa.)* |
| Sakurai | <ruby>無理<rt>むり</rt></ruby>しないで。<ruby>休<rt>やす</rt></ruby>もう。コンソールボックス<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>が<ruby>世界<rt>せかい</rt></ruby>のすべてじゃないんだから。<br>*(Đừng cố quá. Nghỉ đi. Một cái console không phải là cả thế giới.)* |
| Thái | （<ruby>頷<rt>うなず</rt></ruby>く）はい...すみません。<br>*(Gật đầu. Vâng... em xin lỗi.)* |
| Sakurai | <ruby>謝<rt>あやま</rt></ruby>らなくていい。<ruby>体<rt>からだ</rt></ruby>を<ruby>壊<rt>こわ</rt></ruby>したら<ruby>納期<rt>のうき</rt></ruby>に<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わなくなる。<ruby>今日<rt>きょう</rt></ruby>は<ruby>早<rt>はや</rt></ruby>く<ruby>帰<rt>かえ</rt></ruby>って<ruby>寝<rt>ね</rt></ruby>よう。<br>*(Không cần xin lỗi. Hỏng người thì không kịp deadline đâu. Hôm nay về sớm ngủ đi.)* |
| Thái | はい、ありがとうございます。<ruby>明日<rt>あした</rt></ruby>からは<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>には<ruby>帰<rt>かえ</rt></ruby>るようにします。<br>*(Vâng, cảm ơn anh. Từ mai em sẽ về trước 9 giờ.)* |
| Sakurai | それでいい。<ruby>困<rt>こま</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>して。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>むな。<br>*(Vậy được. Có gì khó cứ bàn với tớ. Đừng ôm một mình.)* |
| Thái | はい、お<ruby>言葉<rt>ことば</rt></ruby>に<ruby>甘<rt>あま</rt></ruby>えさせていただきます。<br>*(Vâng, em xin nhận lời ạ.)* |

---

## Tình huống 5 — Xưởng射出 · 9/2025 đầu tháng 10:00, bắn thử lần đầu phát hiện ウェルドライン

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>金型<rt>かながた</rt></ruby>を<ruby>機械<rt>きかい</rt></ruby>にマウントする）<ruby>金型<rt>かながた</rt></ruby>のセット、<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Lắp khuôn lên máy. Em đã lắp xong khuôn.)* |
| Operator | <ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby><ruby>240<rt>にひゃくよんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>圧力<rt>あつりょく</rt></ruby><ruby>80<rt>はちじゅう</rt></ruby>MPa<ruby>設定<rt>せってい</rt></ruby>OKです。<ruby>射出<rt>しゃしゅつ</rt></ruby>します。<br>*(Nhiệt độ nhựa 240 độ, áp suất bắn 80MPa setting OK. Bắn nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh.)* |
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>する）...あ、<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>にウェルドラインが<ruby>出<rt>で</rt></ruby>ています！<br>*(Lấy sản phẩm ra kiểm tra. Á, góc dưới bên trái có weldline!)* |
| Kawakami | （<ruby>来<rt>く</rt></ruby>る）どうした？ウェルドラインか？<br>*(Đi tới. Sao thế? Weldline à?)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>してください。ゲート<ruby>位置<rt>いち</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>がありそうです。<br>*(Vâng, trưởng phòng Kawakami, anh kiểm tra giúp em. Có vẻ vấn đề ở vị trí gate ạ.)* |
| Kawakami | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>手<rt>て</rt></ruby>に<ruby>取<rt>と</rt></ruby>る）<ruby>確<rt>たし</rt></ruby>かに<ruby>溶融<rt>ようゆう</rt></ruby><ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>合流点<rt>ごうりゅうてん</rt></ruby>がここに<ruby>来<rt>き</rt></ruby>てるな。<br>*(Cầm sản phẩm. Đúng là điểm hợp dòng nhựa lỏng đến đây.)* |
| Thái | すみません、<ruby>原因<rt>げんいん</rt></ruby>の<ruby>分析<rt>ぶんせき</rt></ruby>と<ruby>対策<rt>たいさく</rt></ruby><ruby>案<rt>あん</rt></ruby>を<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Em xin lỗi, em sẽ nộp phân tích nguyên nhân và phương án đối sách trước sáng mai.)* |
| Kawakami | うん。<ruby>慌<rt>あわ</rt></ruby>てなくていい。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>掴<rt>つか</rt></ruby>むことが<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Ừ. Không cần vội. Bắt đúng nguyên nhân mới quan trọng.)* |

---

## Tình huống 6 — Phòng thiết kế · 9/2025 ngày hôm sau 9:00, hội ý phương án sửa ゲート

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>昨日<rt>きのう</rt></ruby>のウェルドラインの<ruby>件<rt>けん</rt></ruby>、<ruby>再<rt>さい</rt></ruby><ruby>解析<rt>かいせき</rt></ruby>しました。<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Trưởng phòng Kawakami, vụ weldline hôm qua em đã phân tích lại. Em xin báo cáo.)* |
| Kawakami | はい、どうぞ。<br>*(Vâng, mời cậu.)* |
| Thái | <ruby>現状<rt>げんじょう</rt></ruby>のゲートは<ruby>中央<rt>ちゅうおう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>です。<ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>左右<rt>さゆう</rt></ruby>に<ruby>流<rt>なが</rt></ruby>れて<ruby>底<rt>そこ</rt></ruby>で<ruby>合流<rt>ごうりゅう</rt></ruby>するため、ウェルドラインが<ruby>発生<rt>はっせい</rt></ruby>しています。<br>*(Gate hiện tại 1 vị trí ở giữa. Nhựa chảy sang trái phải gặp nhau dưới đáy nên phát sinh weldline.)* |
| Kawakami | なるほど。<ruby>対策<rt>たいさく</rt></ruby><ruby>案<rt>あん</rt></ruby>は？<br>*(Hiểu rồi. Phương án đối sách?)* |
| Thái | ゲートを<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>して<ruby>合計<rt>ごうけい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>にし、<ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>分散<rt>ぶんさん</rt></ruby>させます。<ruby>解析<rt>かいせき</rt></ruby>では<ruby>合流点<rt>ごうりゅうてん</rt></ruby>が<ruby>目立<rt>めだ</rt></ruby>たない<ruby>位置<rt>いち</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りました。<br>*(Bổ sung 2 gate, tổng cộng 3 vị trí, phân tán dòng nhựa. Trong mô phỏng, điểm hợp dòng đã dịch sang vị trí khuất.)* |
| Kawakami | いいね。<ruby>金型<rt>かながた</rt></ruby><ruby>修正<rt>しゅうせい</rt></ruby>は<ruby>何日<rt>なんにち</rt></ruby>かかる？<br>*(Tốt đấy. Sửa khuôn mất mấy ngày?)* |
| Thái | <ruby>追加<rt>ついか</rt></ruby><ruby>加工<rt>かこう</rt></ruby>と<ruby>仕上<rt>しあ</rt></ruby>げで<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>見込<rt>みこ</rt></ruby>んでいます。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>応援<rt>おうえん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいです。<br>*(Gia công bổ sung và hoàn thiện dự kiến 3 ngày. Em muốn nhờ đàn anh Sakurai hỗ trợ.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>、<ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>には<ruby>俺<rt>おれ</rt></ruby>から<ruby>話<rt>はな</rt></ruby>す。<ruby>進<rt>すす</rt></ruby>めてくれ。<br>*(Hiểu rồi, Sakurai-kun để tớ nói. Cứ tiến hành đi.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |

---

## Tình huống 7 — Xưởng射出 · 9/2025 giữa tháng 14:00, bắn thử lần 2 thành công

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>修正<rt>しゅうせい</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>をセット）ゲート<ruby>追加<rt>ついか</rt></ruby><ruby>修正<rt>しゅうせい</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>のトライアルをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lắp khuôn đã sửa. Bổ sung gate đã xong. Mong anh cho bắn thử lần 2.)* |
| Operator | <ruby>条件<rt>じょうけん</rt></ruby>は<ruby>前回<rt>ぜんかい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか？<br>*(Điều kiện giống lần trước chứ?)* |
| Thái | はい、<ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby>と<ruby>圧力<rt>あつりょく</rt></ruby>は<ruby>変<rt>か</rt></ruby>えません。ゲートの<ruby>変更<rt>へんこう</rt></ruby>だけです。<br>*(Vâng, không đổi nhiệt độ nhựa và áp suất. Chỉ thay đổi gate.)* |
| Operator | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>射出<rt>しゃしゅつ</rt></ruby>します。<br>*(Hiểu rồi. Bắn nhé.)* |
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>）…ウェルドラインが<ruby>消<rt>き</rt></ruby>えました！<br>*(Lấy sản phẩm kiểm tra. ... Weldline biến mất rồi!)* |
| Kawakami | （<ruby>覗<rt>のぞ</rt></ruby>き<ruby>込<rt>こ</rt></ruby>む）<ruby>表面<rt>ひょうめん</rt></ruby>もきれいだな。<ruby>反<rt>そ</rt></ruby>りは？<br>*(Liếc xem. Bề mặt cũng đẹp đấy. Còn warpage?)* |
| Thái | <ruby>測定<rt>そくてい</rt></ruby>します。（<ruby>三<rt>さん</rt></ruby><ruby>次元<rt>じげん</rt></ruby><ruby>測定<rt>そくてい</rt></ruby><ruby>機<rt>き</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>）…<ruby>反<rt>そ</rt></ruby>りは0.18<ruby>ミリ<rt>みり</rt></ruby>です！<ruby>許容<rt>きょよう</rt></ruby><ruby>値<rt>ち</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<br>*(Em đo nhé. Đo bằng máy 3D. ... Warpage 0.18mm! Trong giá trị cho phép.)* |
| Kawakami | <ruby>合格<rt>ごうかく</rt></ruby>だ！よくやった。<br>*(Đạt rồi! Cậu làm tốt lắm.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<br>*(Cúi đầu. Cảm ơn anh. Nhờ đàn anh Sakurai cả.)* |

---

## Tình huống 8 — Phòng họp 品質保証 · 9/2025 cuối tháng 11:00, báo cáo承認試作 với Hamada

| Vai | Lời thoại |
|---|---|
| Hamada | （サンプルを<ruby>確認<rt>かくにん</rt></ruby>する）<ruby>表面<rt>ひょうめん</rt></ruby>はきれいですね。<ruby>寸法<rt>すんぽう</rt></ruby><ruby>検査<rt>けんさ</rt></ruby><ruby>結果<rt>けっか</rt></ruby>はどうですか？<br>*(Kiểm tra mẫu. Bề mặt đẹp đấy. Kết quả đo kích thước thế nào?)* |
| Thái | <ruby>全<rt>ぜん</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>です。<ruby>反<rt>そ</rt></ruby>り0.18<ruby>ミリ<rt>みり</rt></ruby>、ウェルドライン<ruby>無<rt>な</rt></ruby>し、<ruby>外観<rt>がいかん</rt></ruby>キズ<ruby>無<rt>な</rt></ruby>しです。<br>*(Toàn bộ 30/30 hạng mục đạt. Warpage 0.18mm, không có weldline, không xước bề mặt.)* |
| Hamada | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>承認試作<rt>しょうにんしさく</rt></ruby>はOKとします。<br>*(Tuyệt vời. Tớ duyệt trial chấp thuận.)* |
| Thái | ありがとうございます！<br>*(Em cảm ơn ạ!)* |
| Hamada | グエンさん、よくやりましたね。ただし<ruby>正式<rt>せいしき</rt></ruby><ruby>量産<rt>りょうさん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>はPPAPと<ruby>工程<rt>こうてい</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby><ruby>指数<rt>しすう</rt></ruby>Cpkの<ruby>評価<rt>ひょうか</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>ヶ月後<rt>かげつご</rt></ruby>になります。<br>*(Anh Nguyễn làm tốt. Tuy nhiên duyệt sản xuất chính thức phải sau khi đánh giá PPAP và chỉ số năng lực công đoạn Cpk, 1 tháng nữa.)* |
| Thái | すみません、Cpkというのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>指標<rt>しひょう</rt></ruby>ですか？<br>*(Xin lỗi, Cpk cụ thể là chỉ số đánh giá điều gì ạ?)* |
| Hamada | <ruby>量産<rt>りょうさん</rt></ruby>でばらつきがどのくらい<ruby>安定<rt>あんてい</rt></ruby>しているかを<ruby>数値化<rt>すうちか</rt></ruby>したものです。<ruby>1.33<rt>いってんさんさん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>が<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>です。<br>*(Là số hoá độ ổn định của sai lệch khi sản xuất hàng loạt. Trên 1.33 là tiêu chuẩn đạt.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>1<rt>いっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>のデータを<ruby>取<rt>と</rt></ruby>って<ruby>提出<rt>ていしゅつ</rt></ruby>します。それから、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPT N2は<ruby>合格<rt>ごうかく</rt></ruby>しました（<ruby>132<rt>ひゃくさんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>）。<br>*(Em rõ. Em sẽ lấy data 1 tháng nộp. Còn nữa, JLPT N2 em thi tháng 7 đã đỗ (132 điểm).)* |
| Hamada | おお、<ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>技術<rt>ぎじゅつ</rt></ruby>も<ruby>日本語<rt>にほんご</rt></ruby>も<ruby>順調<rt>じゅんちょう</rt></ruby>ですね。<br>*(Ồ, tuyệt vời! Cả kỹ thuật và tiếng Nhật đều thuận lợi nhỉ.)* |
| Thái | （<ruby>感激<rt>かんげき</rt></ruby>して<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm động cúi đầu. Em cảm ơn ạ. Em sẽ tiếp tục cố gắng.)* |

---

## Tình huống 9 — Phòng 201 ký túc · 9/2025 cuối tháng 22:00, gọi điện báo tin về Việt Nam

> Scene tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, anh xong rồi. Console box đầu tay đã được Hamada duyệt 承認試作. |
| Mai | (tiếng Việt) Trời ơi, mừng quá anh! Em biết mà, ba tháng anh tăng ca như điên. |
| Thái | (tiếng Việt) Suýt thì hỏng. Lần bắn đầu xuất hiện ウェルドライン — đường hàn nhựa ở góc dưới. Anh sợ tái mặt. |
| Mai | (tiếng Việt) Rồi sửa thế nào? |
| Thái | (tiếng Việt) Anh thêm 2 cái ゲート (cổng phun) thành 3 cái, phân tán dòng nhựa. Bắn lại lần 2 là sạch. Warpage 0.18mm trong khoảng cho phép. |
| Mai | (tiếng Việt) Anh giỏi quá. Mẹ đâu rồi, mẹ ơi! |
| Mẹ Thái | (tiếng Việt, ghé vào) Thái! Mẹ đây. Có chuyện gì đấy con? |
| Thái | (tiếng Việt) Mẹ, con đã làm xong cái khuôn console đầu tiên do con lead. Hôm nay sếp duyệt rồi. Một tháng nữa làm xong PPAP với Cpk là duyệt sản xuất hàng loạt chính thức. |
| Mẹ Thái | (tiếng Việt) Mẹ mừng quá. Sức khoẻ con thế nào? Cái anh đàn anh người Nhật vẫn tốt với con chứ? |
| Thái | (tiếng Việt) Anh Sakurai tốt lắm mẹ. Tháng 8 con tăng ca dữ quá, ảnh bảo "Một cái console không phải cả thế giới đâu, về nghỉ đi". Con cảm động muốn khóc. |
| Mai | (tiếng Việt) Bên này em với mẹ cũng vừa đi đám cưới bạn em. Em cũng đang đợi anh. Visa còn 1 năm là về phải không? |
| Thái | (tiếng Việt) Ừ. Mà N2 anh cũng đỗ rồi, 132 điểm. Hôm nay nói với Hamada-san, ổng vui lắm. |
| Mẹ Thái | (tiếng Việt) Giỏi! Mẹ với Mai đi ngủ. Con cũng ngủ sớm đi nhé. |
| Thái | (tiếng Việt) Vâng mẹ. Con yêu mẹ với em. |

---

## Đọng lại chương 2

Ba tháng cao điểm của lần đầu lead, Thái học được trọn bộ mẫu câu giao tiếp kỹ sư khuôn đúc trung cấp: **báo cáo kết quả mô phỏng** (反りは0.18ミリで許容値以内に収まっています), **xin hỗ trợ đàn anh và thoả thuận 分担** (〜をお願いします・分担を決めよう), **hỏi lại lễ phép khi gặp thuật ngữ mới** (〜というのは?・具体的に何を見る指標ですか?), **báo lỗi sau trial bằng hành động cụ thể** (ウェルドラインが出ています・原因はゲート位置です), **trình bày phương án sửa với cấp trên** (ゲートを2箇所追加して合流点を移します), **nhận lời khuyên chăm sóc sức khoẻ** (無理しないで・休もう・お言葉に甘えさせていただきます), và **đối thoại trang trọng với 品質保証** (承認試作OK・PPAP・Cpk1.33以上が合格基準). Thái thấm bài học: nghề khuôn đúc không phải một mình mà sống — phải biết hỏi, biết nhờ, biết nghỉ. Và ngôn ngữ chuyên ngành chỉ là vỏ; bên trong là văn hoá **報連相** và sự tin cậy giữa đồng nghiệp.

> Từ vựng & mẫu câu chương này: 解析・反り・許容値・水路・冷却・対称・分担・進捗・5軸加工・荒削り・中仕上げ・仕上げ・ビビリ・切削条件・残業・顔色・無理しないで・休もう・射出・樹脂温度・射出圧力・ウェルドライン・ゲート位置・合流点・対策案・修正・承認試作・PPAP・Cpk・量産承認・〜させていただきます・〜というのは・お言葉に甘えさせていただきます・お疲れさまでした

## Bí quyết chương

- **Lead đầu tay**: Console box do Thái lead toàn bộ A→Z — payoff arc kỹ sư của sách 17.
- **Đàn anh chăm sóc**: Sakurai (Nhật, 先輩 CAM) dạy 5軸加工・分担・休もう — pattern "quan sát đàn anh + đàn anh che chở".
- **Lỗi → sửa → đạt**: Pattern điển hình "trial 1 lộ lỗi → phân tích → trial 2 đạt" — dạy cách báo lỗi và đề xuất đối sách bằng tiếng Nhật trang trọng.
- **N2 + lead song hành**: Mốc trưởng thành — payoff cho arc học tiếng từ N4 (sách 14) → N2 (sách 17).

> *"6→9/2025. Ba tháng. Lead đầu tay. Hamada duyệt 承認試作."*', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000003, 800000017, NULL, 'markdown_book', 'T3. Dự án diecast lần đầu (ダイカスト初体験)', '# Sách kỹ sư khuôn đúc · T3. Dự án diecast lần đầu (ダイカスト初体験)

> **Mục tiêu nhân vật:** Thái (kỹ sư khuôn đúc tại Aichi, năm thứ 4) được Kawakami giao một dự án phụ về khuôn diecast nhôm. Học các mẫu hội thoại tiếng Nhật khi nhận mảng việc mới ngoài chuyên môn: nhận chỉ thị từ cấp trên (〜を担当してもらう), hỏi lại lễ phép khi nghe từ chuyên ngành lạ (〜というのは？), xác nhận đối chiếu hai lĩnh vực (〜と比べて・〜に対して), trình bày phương án thiết kế (〜を多めに配置します), báo cáo tiến độ giữa kỳ (進捗を報告します), và quan sát đàn anh giải thích kinh nghiệm 5 năm về phần mềm mô phỏng.

---

## Bối cảnh

Tháng 10 năm 2025. Thái đã làm việc tại **株式会社みなみ精密金型** ở Anjo được hơn 3 năm, chuyên khuôn nhựa cho linh kiện nội thất Toyota. Lần này 川上 (Kawakami) — đàn anh thiết kế cấp cao — gọi Thái sang đỡ một dự án phụ về khuôn diecast nhôm cho ngàm động cơ. Trình độ tiếng Nhật của Thái nay đã ngưỡng N2. Chương này tập trung các mẫu câu giao tiếp khi nhận lĩnh vực mới: hỏi lại từ chuyên ngành lạ, đối chiếu hai loại vật liệu, xác nhận thông số kỹ thuật, báo cáo tiến độ và chốt mạch nhân vật qua cuộc gọi về Việt Nam cho Mai.

---

## Tình huống 1 — Bàn thiết kế Kawakami · 9:00, nhận chỉ thị mảng việc mới

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、ちょっといいかな。<ruby>新<rt>あたら</rt></ruby>しい<ruby>案件<rt>あんけん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してもらいたいんだ。<br>*(Thái-kun, có chút việc nhé. Tôi muốn giao em phụ trách một dự án mới.)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby>さん。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。どんな<ruby>案件<rt>あんけん</rt></ruby>ですか？<br>*(Vâng, anh Kawakami. Em rất sẵn lòng. Là dự án thế nào ạ?)* |
| Kawakami | ダイカスト<ruby>金型<rt>かながた</rt></ruby>だよ。タイ<ruby>君<rt>くん</rt></ruby>は<ruby>初<rt>はつ</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>だね。<br>*(Khuôn diecast đấy. Với em là lần đầu nhỉ.)* |
| Thái | すみません、「ダイカスト」というのは<ruby>何<rt>なん</rt></ruby>ですか？<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Em xin lỗi, "diecast" nghĩa là gì ạ? Em chưa nghe từ này bao giờ.)* |
| Kawakami | <ruby>金属<rt>きんぞく</rt></ruby>、<ruby>主<rt>おも</rt></ruby>に<ruby>アルミ合金<rt>アルミごうきん</rt></ruby>を<ruby>高圧<rt>こうあつ</rt></ruby>で<ruby>金型<rt>かながた</rt></ruby>に<ruby>注入<rt>ちゅうにゅう</rt></ruby>する<ruby>鋳造<rt>ちゅうぞう</rt></ruby><ruby>方式<rt>ほうしき</rt></ruby>だ。<ruby>温度<rt>おんど</rt></ruby>は500〜700°Cになる。<br>*(Là phương thức đúc bơm kim loại — chủ yếu hợp kim nhôm — vào khuôn dưới áp lực cao. Nhiệt độ lên tới 500–700°C.)* |
| Thái | 500〜700°Cですか…プラスチックの<ruby>金型<rt>かながた</rt></ruby>とは<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>いますね。<br>*(500–700°C cơ ạ… Khác hẳn khuôn nhựa nhỉ.)* |
| Kawakami | そう。だから<ruby>金型<rt>かながた</rt></ruby>の<ruby>材質<rt>ざいしつ</rt></ruby>もSKD61という<ruby>耐熱鋼<rt>たいねつこう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。NAK80じゃ<ruby>持<rt>も</rt></ruby>たない。<br>*(Đúng. Nên vật liệu khuôn cũng phải dùng thép chịu nhiệt SKD61. NAK80 không trụ nổi.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<br>*(Em rõ ạ. Em xin được học hỏi.)* |

---

## Tình huống 2 — Phòng họp nhỏ · 10:00, quan sát đàn anh đối chiếu hai lĩnh vực

| Vai | Lời thoại |
|---|---|
| Kawakami | プラスチック<ruby>金型<rt>かながた</rt></ruby>とダイカスト<ruby>金型<rt>かながた</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いを<ruby>整理<rt>せいり</rt></ruby>するよ。<ruby>大<rt>おお</rt></ruby>きく<ruby>四<rt>よっ</rt></ruby>つある。<br>*(Tôi tóm tắt sự khác biệt giữa khuôn nhựa và khuôn diecast. Có bốn điểm lớn.)* |
| Thái | はい、メモを<ruby>取<rt>と</rt></ruby>ります。<br>*(Vâng, em ghi chú ạ.)* |
| Kawakami | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>温度<rt>おんど</rt></ruby>。ダイカストは700°C、プラスチックは200°Cぐらいだ。<br>*(Thứ nhất, nhiệt độ. Diecast 700°C, nhựa khoảng 200°C.)* |
| Kawakami | <ruby>二<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>金型<rt>かながた</rt></ruby><ruby>寿命<rt>じゅみょう</rt></ruby>。ダイカストは<ruby>5<rt>ご</rt></ruby><ruby>万<rt>まん</rt></ruby>ショット、プラスチックは<ruby>50<rt>ごじゅう</rt></ruby><ruby>万<rt>まん</rt></ruby>ショットだ。<br>*(Thứ hai, tuổi thọ khuôn. Diecast 50 nghìn shot, nhựa 500 nghìn shot.)* |
| Thái | <ruby>十<rt>じゅう</rt></ruby><ruby>倍<rt>ばい</rt></ruby>も<ruby>違<rt>ちが</rt></ruby>うんですか。<br>*(Khác nhau những mười lần cơ ạ.)* |
| Kawakami | <ruby>三<rt>さん</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>材質<rt>ざいしつ</rt></ruby>。SKD61に<ruby>対<rt>たい</rt></ruby>してNAK80。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>離型剤<rt>りけいざい</rt></ruby>がダイカストでは<ruby>必須<rt>ひっす</rt></ruby>だ。<br>*(Thứ ba, vật liệu. SKD61 so với NAK80. Thứ tư, chất tách khuôn là bắt buộc với diecast.)* |
| Thái | すみません、「<ruby>離型剤<rt>りけいざい</rt></ruby>」というのは？<br>*(Em xin lỗi, "rikeizai" nghĩa là gì ạ?)* |
| Kawakami | <ruby>製品<rt>せいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>離<rt>はな</rt></ruby>しやすくする<ruby>薬剤<rt>やくざい</rt></ruby>だ。<ruby>毎<rt>まい</rt></ruby>ショット<ruby>金型<rt>かながた</rt></ruby>の<ruby>表面<rt>ひょうめん</rt></ruby>に<ruby>吹<rt>ふ</rt></ruby>き<ruby>付<rt>つ</rt></ruby>ける。<br>*(Là hoá chất giúp tách sản phẩm khỏi khuôn dễ hơn. Mỗi shot phải xịt lên bề mặt khuôn.)* |
| Thái | なるほど、<ruby>毎<rt>まい</rt></ruby>ショット<ruby>吹<rt>ふ</rt></ruby>き<ruby>付<rt>つ</rt></ruby>けるということですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi, tức là mỗi shot đều xịt một lần đúng không ạ. Em rõ rồi.)* |

---

## Tình huống 3 — Bàn CAD · 11:00, xác nhận thông số thiết kế sản phẩm

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>製品<rt>せいひん</rt></ruby>はエンジンブラケットだ。<ruby>3<rt>さん</rt></ruby>Dデータを<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Sản phẩm là ngàm động cơ. Cùng xem dữ liệu 3D nào.)* |
| Thái | （モニターを<ruby>見<rt>み</rt></ruby>ながら）<ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いですね。<ruby>肉厚<rt>にくあつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ミリですか？<br>*(Vừa nhìn màn hình. Có nhiều chỗ dày nhỉ. Độ dày thành bao nhiêu mm ạ?)* |
| Kawakami | <ruby>一番厚<rt>いちばんあつ</rt></ruby>いところで8ミリ、<ruby>薄<rt>うす</rt></ruby>いところで3ミリだ。<br>*(Chỗ dày nhất 8mm, chỗ mỏng nhất 3mm.)* |
| Thái | <ruby>収縮率<rt>しゅうしゅくりつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>パーセントで<ruby>計算<rt>けいさん</rt></ruby>すればいいですか？<br>*(Hệ số co tính theo bao nhiêu phần trăm thì được ạ?)* |
| Kawakami | アルミの<ruby>収縮率<rt>しゅうしゅくりつ</rt></ruby>は0.6%。ABSの0.5%とほぼ<ruby>同<rt>おな</rt></ruby>じだから、<ruby>感覚<rt>かんかく</rt></ruby>はつかみやすいと<ruby>思<rt>おも</rt></ruby>うよ。<br>*(Nhôm co 0.6%. Gần bằng ABS 0.5% nên cảm giác sẽ dễ nắm thôi.)* |
| Thái | <ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いので、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>を<ruby>多<rt>おお</rt></ruby>めに<ruby>配置<rt>はいち</rt></ruby>します。よろしいでしょうか？<br>*(Vì có nhiều chỗ dày, em sẽ bố trí kênh nước làm mát nhiều hơn một chút. Anh thấy được không ạ?)* |
| Kawakami | いいね。ただし<ruby>金型<rt>かながた</rt></ruby><ruby>本体<rt>ほんたい</rt></ruby>の<ruby>強度<rt>きょうど</rt></ruby>も<ruby>考<rt>かんが</rt></ruby>えて、<ruby>水路<rt>すいろ</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は15ミリ<ruby>以上<rt>いじょう</rt></ruby><ruby>空<rt>あ</rt></ruby>けてくれ。<br>*(Tốt. Nhưng cũng cân nhắc độ bền thân khuôn, để khoảng cách giữa các kênh nước cách nhau từ 15mm trở lên nhé.)* |
| Thái | 15ミリ<ruby>以上<rt>いじょう</rt></ruby>ですね。<ruby>了解<rt>りょうかい</rt></ruby>しました。<br>*(Từ 15mm trở lên ạ. Em rõ rồi.)* |

---

## Tình huống 4 — Bàn mô phỏng · 14:00, quan sát đàn anh giới thiệu phần mềm mới

| Vai | Lời thoại |
|---|---|
| Kawakami | ダイカストのシミュレーションはMAGMAというソフトを<ruby>使<rt>つか</rt></ruby>うんだ。<br>*(Mô phỏng diecast dùng phần mềm tên MAGMA.)* |
| Thái | プラスチックで<ruby>使<rt>つか</rt></ruby>っているMoldex3Dとは<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(Khác Moldex3D mình dùng cho nhựa ạ?)* |
| Kawakami | <ruby>全<rt>まった</rt></ruby>く<ruby>違<rt>ちが</rt></ruby>うソフトだ。MAGMAは<ruby>金属溶湯<rt>きんぞくようとう</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れと<ruby>凝固<rt>ぎょうこ</rt></ruby>を<ruby>専門<rt>せんもん</rt></ruby>に<ruby>解析<rt>かいせき</rt></ruby>する。<br>*(Hoàn toàn khác. MAGMA chuyên phân tích dòng chảy và quá trình đông kết của kim loại lỏng.)* |
| Thái | 「<ruby>凝固<rt>ぎょうこ</rt></ruby>」というのは、<ruby>液体<rt>えきたい</rt></ruby>が<ruby>固<rt>かた</rt></ruby>まるということですか？<br>*(Gyouko nghĩa là chất lỏng đông cứng lại đúng không ạ?)* |
| Kawakami | そう、<ruby>溶<rt>と</rt></ruby>けた<ruby>金属<rt>きんぞく</rt></ruby>が<ruby>冷<rt>ひ</rt></ruby>えて<ruby>固<rt>かた</rt></ruby>まる<ruby>過程<rt>かてい</rt></ruby>だ。これが<ruby>不<rt>ふ</rt></ruby><ruby>均一<rt>きんいつ</rt></ruby>だと<ruby>製品<rt>せいひん</rt></ruby>に<ruby>不良<rt>ふりょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>る。<br>*(Đúng vậy, là quá trình kim loại nóng chảy nguội đi và đông lại. Nếu không đều thì sản phẩm sẽ có lỗi.)* |
| Thái | <ruby>難<rt>むずか</rt></ruby>しそうですね。<ruby>使<rt>つか</rt></ruby>いこなすのにどのくらいかかりますか？<br>*(Nghe có vẻ khó. Để dùng thạo mất bao lâu ạ?)* |
| Kawakami | <ruby>俺<rt>おれ</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>覚<rt>おぼ</rt></ruby>えたよ。<ruby>今回<rt>こんかい</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>解析<rt>かいせき</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>すから、タイ<ruby>君<rt>くん</rt></ruby>は<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>て<ruby>覚<rt>おぼ</rt></ruby>えてくれ。<br>*(Tôi mất 5 năm mới quen. Lần này tôi sẽ chạy phân tích, em đứng bên xem rồi học.)* |
| Thái | はい、しっかり<ruby>観察<rt>かんさつ</rt></ruby>させていただきます。<br>*(Vâng, em sẽ quan sát thật kỹ ạ.)* |

---

## Tình huống 5 — Bàn họp · sáng thứ hai 9:30, báo cáo tiến độ giữa kỳ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Kawakami, em xin báo cáo tiến độ tuần trước ạ.)* |
| Kawakami | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời em.)* |
| Thái | キャビコアの<ruby>形状<rt>けいじょう</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>が60%<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>は<ruby>間隔<rt>かんかく</rt></ruby>15ミリで<ruby>配置<rt>はいち</rt></ruby>しています。<br>*(Phần thiết kế hình dạng cavity-core đã xong 60%. Kênh nước làm mát em bố trí cách nhau 15mm.)* |
| Kawakami | <ruby>順調<rt>じゅんちょう</rt></ruby>だね。<ruby>問題<rt>もんだい</rt></ruby><ruby>点<rt>てん</rt></ruby>は？<br>*(Trôi chảy nhỉ. Có điểm gì vướng không?)* |
| Thái | <ruby>厚肉<rt>あつにく</rt></ruby><ruby>部<rt>ぶ</rt></ruby>のところで<ruby>水路<rt>すいろ</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>に<ruby>分岐<rt>ぶんき</rt></ruby>させるかどうかで<ruby>悩<rt>なや</rt></ruby>んでいます。ご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Chỗ thành dày em đang phân vân có nên chia kênh nước thành hai nhánh không. Em xin được hỏi ý anh ạ.)* |
| Kawakami | <ruby>分岐<rt>ぶんき</rt></ruby>させたほうがいい。<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>は<ruby>増<rt>ふ</rt></ruby>えるけど、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby>のほうが<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Nên chia. Tổn thất áp suất sẽ tăng nhưng hiệu quả làm mát quan trọng hơn.)* |
| Thái | はい、<ruby>分岐<rt>ぶんき</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>までに80%まで<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Vâng, em sẽ làm theo hướng chia nhánh. Đến thứ tư tuần sau em sẽ hoàn thiện lên 80%.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>何<rt>なに</rt></ruby>かあったらすぐ<ruby>連絡<rt>れんらく</rt></ruby>してね。<br>*(Rõ. Có gì cứ liên lạc ngay nhé.)* |

---

## Tình huống 6 — Phòng họp · 11/2025, 16:00, bàn giao và rút kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Kawakami | ダイカスト<ruby>金型<rt>かながた</rt></ruby>の<ruby>納品<rt>のうひん</rt></ruby>が<ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>したよ。お<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Đã giao khuôn diecast xong xuôi rồi. Em vất vả rồi.)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Anh vất vả rồi ạ. Em thực sự đã học được rất nhiều.)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>感想<rt>かんそう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせて。<br>*(Thái-kun, cho tôi nghe cảm nhận của em đi.)* |
| Thái | <ruby>温度<rt>おんど</rt></ruby>も<ruby>材質<rt>ざいしつ</rt></ruby>も<ruby>寿命<rt>じゅみょう</rt></ruby>も<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>違<rt>ちが</rt></ruby>って、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>戸惑<rt>とまど</rt></ruby>いました。でも<ruby>収縮率<rt>しゅうしゅくりつ</rt></ruby>のような<ruby>共通<rt>きょうつう</rt></ruby><ruby>点<rt>てん</rt></ruby>もあって、<ruby>面白<rt>おもしろ</rt></ruby>かったです。<br>*(Nhiệt độ, vật liệu, tuổi thọ đều khác hết, ban đầu em hơi bối rối. Nhưng cũng có điểm chung như hệ số co, nên rất thú vị.)* |
| Kawakami | これからダイカストも<ruby>続<rt>つづ</rt></ruby>けたい？<br>*(Sau này có muốn tiếp tục cả diecast không?)* |
| Thái | いいえ、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>俺<rt>おれ</rt></ruby>はプラスチックを<ruby>専門<rt>せんもん</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けたいです。<ruby>今回<rt>こんかい</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>はプラスチックの<ruby>仕事<rt>しごと</rt></ruby>にも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つと<ruby>思<rt>おも</rt></ruby>います。<br>*(Không, nói thật là em muốn tiếp tục chuyên về nhựa. Em nghĩ kinh nghiệm lần này cũng sẽ giúp ích cho công việc khuôn nhựa.)* |
| Kawakami | いい<ruby>答<rt>こた</rt></ruby>えだ。<ruby>専門<rt>せんもん</rt></ruby>を<ruby>持<rt>も</rt></ruby>つことは<ruby>大切<rt>たいせつ</rt></ruby>だよ。<br>*(Câu trả lời hay đấy. Có chuyên môn riêng là quan trọng.)* |

---

## Tình huống 7 — Hỏi lại Kimura先輩 · 17:00, xác nhận từ chuyên ngành chưa rõ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ちょっとお<ruby>聞<rt>き</rt></ruby>きしてもいいですか？<br>*(Đàn anh Kimura, em hỏi một chút có được không ạ?)* |
| Kimura | はい、どうぞ。<br>*(Ừ, em hỏi đi.)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さんが「<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>」とおっしゃっていたんですが、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>のことですか？<br>*(Anh Kawakami có nhắc đến "tổn thất áp suất", cụ thể là gì ạ?)* |
| Kimura | <ruby>水<rt>みず</rt></ruby>が<ruby>水路<rt>すいろ</rt></ruby>を<ruby>流<rt>なが</rt></ruby>れるとき、<ruby>分岐<rt>ぶんき</rt></ruby>や<ruby>曲<rt>ま</rt></ruby>がりで<ruby>圧力<rt>あつりょく</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がるんだ。それを<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>と<ruby>呼<rt>よ</rt></ruby>ぶ。<br>*(Khi nước chảy qua kênh, ở chỗ chia nhánh hay chỗ uốn cong áp suất sẽ giảm xuống. Cái đó gọi là tổn thất áp suất.)* |
| Thái | なるほど、<ruby>分岐<rt>ぶんき</rt></ruby>すると<ruby>圧力<rt>あつりょく</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がるということですね。<br>*(Em hiểu rồi, tức là chia nhánh thì áp suất giảm đúng không ạ.)* |
| Kimura | そう。でも<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby>と<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>は<ruby>常<rt>つね</rt></ruby>に<ruby>天秤<rt>てんびん</rt></ruby>だ。どっちを<ruby>優先<rt>ゆうせん</rt></ruby>するかは<ruby>製品<rt>せいひん</rt></ruby><ruby>次第<rt>しだい</rt></ruby>だよ。<br>*(Đúng. Nhưng hiệu quả làm mát và tổn thất áp suất luôn là cán cân. Ưu tiên cái nào tuỳ sản phẩm.)* |
| Thái | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Em học được nhiều ạ. Em cảm ơn anh.)* |

---

## Tình huống 8 — Phòng 201 ký túc · 22:00, gọi điện về cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & ôn lại từ chuyên ngành qua hội thoại với người yêu ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, dự án phụ xong chưa? Tháng trước thấy anh kêu mệt liên tục. |
| Thái | (tiếng Việt) Xong rồi em. Giao hàng tháng 11 đúng hẹn. Anh Kawakami khen, nhẹ cả người. |
| Mai | (tiếng Việt) Mà cái diecast đó là gì hả anh? Em đọc tin nhắn anh gửi nãy giờ không hiểu. |
| Thái | (tiếng Việt) Diecast là đúc áp lực bằng nhôm nóng chảy 700 độ. Khác hẳn nhựa anh hay làm. Vật liệu khuôn cũng đổi sang SKD61 — thép chịu nhiệt, khác con NAK80 quen tay. |
| Mai | (tiếng Việt) Trời, 700 độ cơ á? Nguy hiểm không anh? |
| Thái | (tiếng Việt) Anh chỉ thiết kế khuôn thôi, không trực tiếp đứng máy. Yên tâm. Mà còn cái phần mềm mới nữa, tên MAGMA. Anh Kawakami nói anh ấy học 5 năm mới nắm, anh chỉ đứng xem học lỏm. |
| Mai | (tiếng Việt) Anh có muốn chuyển sang diecast hẳn không? |
| Thái | (tiếng Việt) Không em. Anh nói với anh Kawakami rồi, anh vẫn theo nhựa. Nhưng cái 凝固 — quá trình đông kết — đó áp dụng được cho cả nhựa, học không thừa. |
| Mai | (tiếng Việt) Ừ, anh có nghề riêng là tốt. Đừng ôm đồm. |
| Thái | (tiếng Việt) Cảm ơn em. Thôi đi ngủ đi, mai anh còn phải báo cáo tổng kết quý. |
| Mai | (tiếng Việt) Ngủ ngon anh. |

---

## Đọng lại chương 3

Tháng 10–11/2025, Thái lần đầu bước ra ngoài chuyên môn nhựa để đỡ một dự án phụ về **ダイカスト金型** (khuôn đúc áp lực nhôm). Học được các mẫu câu khi nhận lĩnh vực mới: **nhận chỉ thị từ cấp trên** (〜を担当してもらいたい・〜させていただきます), **hỏi lại lễ phép khi nghe từ chuyên ngành lạ** (〜というのは？・具体的に何のことですか?), **đối chiếu hai lĩnh vực** (〜に対して・〜と比べて) qua bốn điểm khác nhau giữa nhựa và diecast (温度・寿命・材質・離型剤), **trình bày phương án thiết kế** (〜を多めに配置します・よろしいでしょうか?), **báo cáo tiến độ giữa kỳ** theo nguyên tắc 報連相 (進捗を報告します・ご相談させてください), và quan sát đàn anh giải thích kinh nghiệm 5 năm về **MAGMA** — phần mềm chuyên cho 金属溶湯 và 凝固. Bài học lớn: chuyên môn riêng (プラスチック) là cột sống nghề nghiệp, nhưng kinh nghiệm ngoài chuyên môn không bao giờ thừa.

> Từ vựng & mẫu câu chương này: ダイカスト・アルミ合金・鋳造・高圧・SKD61・耐熱鋼・NAK80・離型剤・キャビコア・収縮率・肉厚・冷却水路・分岐・圧力損失・金属溶湯・凝固・MAGMA・Moldex3D・寿命・進捗・報告・連絡・相談・〜を担当してもらう・〜というのは・〜に対して・〜と比べて・〜させていただきます・ご相談させてください・よろしいでしょうか

## Bí quyết chương

- **Setup arc**: dự án diecast là *cameo* — Thái không chuyển ngành, chỉ mở rộng vốn từ chuyên môn. Sẽ payoff khi Thái lên 設計者 chính ở T4-T5 với góc nhìn rộng hơn.
- **Sempai mới**: Kawakami (5 năm MAGMA) — kiểu sempai chuyên biệt từng mảng, khác Tanaka 工場長 ở T1.
- **VN nhà**: Mai — vai trò "người nghe Thái giải thích chuyên ngành tiếng Việt", giúp người học ôn lại từ vựng.', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000004, 800000017, NULL, 'markdown_book', 'T4. Trượt 3D CAD 1 級 (3D CAD 1級不合格)', '# Sách kỹ sư khuôn đúc · T4. Trượt 3D CAD 1 級 (3D CAD 1級不合格)

> **Mục tiêu nhân vật:** Thái (27 tuổi, kỹ sư khuôn đúc tại Anjo, Aichi) thi chứng chỉ **3D CAD 利用技術者 1 級** lần đầu và trượt sát rạt 2 điểm. Học các mẫu hội thoại tiếng Nhật quanh kỳ thi chuyên môn: chào hỏi giám thị tại 試験会場, báo cáo kết quả thi với 先輩 qua LINE, đọc và xác nhận thông báo 不合格 (合格ライン・各分野・総合), nhận lời an ủi từ đồng nghiệp Nhật (〜だって・もうちょっと・再チャレンジ), hỏi lại đàn anh kinh nghiệm thi lại (〜のコツは何ですか), và xin sếp lịch ôn thi (お時間をいただけますか).

---

## Bối cảnh

Tháng 12 năm 2025 → tháng 1 năm 2026. Thái đã 4 năm rưỡi tại **株式会社みなみ精密金型**, được giao đăng ký thi **3D CAD 利用技術者 1 級** — chứng chỉ khó với tỉ lệ đỗ chỉ khoảng 25-30%. Trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu giao tiếp quanh thất bại chuyên môn đầu tiên: vào phòng thi, báo tin xấu với cấp trên và đàn anh, đọc kết quả 不合格, nhận và đáp lại lời an ủi (励まし), xin lịch ôn thi lại, và chốt mạch nhân vật qua scene tiếng Việt với người yêu Mai cuối ngày.

---

## Tình huống 1 — Cổng 試験会場 Nagoya · 8:30, chào giám thị và xác nhận chỗ ngồi

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>受付<rt>うけつけ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づく）おはようございます。<ruby>3D<rt>スリーディー</rt></ruby>CAD<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>受験<rt>じゅけん</rt></ruby>です。<br>*(Tiến đến quầy lễ tân. Chào buổi sáng. Em là thí sinh dự thi 3D CAD 1 級.)* |
| Giám thị | おはようございます。<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>と<ruby>本人<rt>ほんにん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Vui lòng cho xem phiếu dự thi và giấy tờ tuỳ thân.)* |
| Thái | （<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<ruby>在留<rt>ざいりゅう</rt></ruby>カードでもよろしいですか？<br>*(Đưa thẻ cư trú. Vâng, đây ạ. Em dùng thẻ cư trú có được không ạ?)* |
| Giám thị | はい、<ruby>結構<rt>けっこう</rt></ruby>です。グエン・ヴァン・タイさん、<ruby>座席<rt>ざせき</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>は<ruby>B<rt>ビー</rt></ruby>-<ruby>23<rt>にじゅうさん</rt></ruby>です。<ruby>3<rt>さん</rt></ruby><ruby>階<rt>がい</rt></ruby>の<ruby>301<rt>さんまるいち</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>へどうぞ。<br>*(Vâng, được. Anh Nguyễn Văn Thái, số ghế là B-23. Mời lên phòng 301 ở tầng 3.)* |
| Thái | すみません、「<ruby>各<rt>かく</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby><ruby>5割<rt>ごわり</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>」というのは、<ruby>分野<rt>ぶんや</rt></ruby>ごとに<ruby>5割<rt>ごわり</rt></ruby><ruby>取<rt>と</rt></ruby>らないと<ruby>不合格<rt>ふごうかく</rt></ruby>ということですか？<br>*(Xin lỗi, "mỗi phần phải từ 50% trở lên" tức là từng phần đều phải đạt 50%, nếu không thì trượt ạ?)* |
| Giám thị | はい、そうです。<ruby>総合<rt>そうごう</rt></ruby>で<ruby>7割<rt>ななわり</rt></ruby><ruby>取<rt>と</rt></ruby>っても、<ruby>1<rt>ひと</rt></ruby>つの<ruby>分野<rt>ぶんや</rt></ruby>が<ruby>5割<rt>ごわり</rt></ruby><ruby>未満<rt>みまん</rt></ruby>なら<ruby>不合格<rt>ふごうかく</rt></ruby>になります。<br>*(Vâng, đúng vậy. Dù tổng đạt 70%, nhưng một phần dưới 50% thì vẫn trượt.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ rồi ạ. Em cảm ơn.)* |

---

## Tình huống 2 — Phòng thi 301 · 9:00, giám thị phổ biến quy chế thi

| Vai | Lời thoại |
|---|---|
| Giám thị | これから<ruby>試験<rt>しけん</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>します。<ruby>試験時間<rt>しけんじかん</rt></ruby>は<ruby>120<rt>ひゃくにじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Bây giờ chúng ta bắt đầu kỳ thi. Thời gian thi là 120 phút.)* |
| Giám thị | <ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って、カバンの<ruby>中<rt>なか</rt></ruby>にしまってください。<br>*(Vui lòng tắt nguồn điện thoại và cất vào cặp.)* |
| Thái | （<ruby>携帯<rt>けいたい</rt></ruby>を<ruby>切<rt>き</rt></ruby>る）はい。<br>*(Tắt điện thoại. Vâng.)* |
| Giám thị | <ruby>途中<rt>とちゅう</rt></ruby>でトイレに<ruby>行<rt>い</rt></ruby>く<ruby>場合<rt>ばあい</rt></ruby>は、<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げてください。<ruby>試験官<rt>しけんかん</rt></ruby>が<ruby>付<rt>つ</rt></ruby>き<ruby>添<rt>そ</rt></ruby>います。<br>*(Trong lúc thi nếu cần đi vệ sinh, vui lòng giơ tay. Sẽ có giám thị đi cùng.)* |
| Thái | （<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる）すみません、<ruby>質問<rt>しつもん</rt></ruby>してもいいですか？<ruby>下書<rt>したが</rt></ruby>き<ruby>用<rt>よう</rt></ruby>の<ruby>紙<rt>かみ</rt></ruby>は<ruby>使<rt>つか</rt></ruby>っていいですか？<br>*(Giơ tay. Xin lỗi, em hỏi được không ạ? Giấy nháp được dùng không ạ?)* |
| Giám thị | はい、<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>の<ruby>白<rt>しろ</rt></ruby>い<ruby>紙<rt>かみ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってください。<ruby>終<rt>お</rt></ruby>わったら<ruby>回収<rt>かいしゅう</rt></ruby>します。<br>*(Vâng, dùng tờ giấy trắng trên bàn. Thi xong sẽ thu lại.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Giám thị | それでは、<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>試験<rt>しけん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>です。<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vậy, 9 giờ 10 phút, bắt đầu thi. Mời các thí sinh làm bài.)* |

---

## Tình huống 3 — Hành lang ngoài phòng thi · 11:15, vừa thi xong, gặp đàn anh Kawakami qua LINE

| Vai | Lời thoại |
|---|---|
| Thái | （LINEで<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>送<rt>おく</rt></ruby>る）<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>試験<rt>しけん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<br>*(Gửi LINE cho đàn anh Kawakami. Anh Kawakami, em chào anh. Em vừa thi xong rồi ạ.)* |
| Thái | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>難<rt>むずか</rt></ruby>しかったです。<ruby>後半<rt>こうはん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>番<rt>ばん</rt></ruby>からは<ruby>時間<rt>じかん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りませんでした。<br>*(Nói thật, khó lắm anh ạ. Từ câu 30 trở đi em không kịp thời gian.)* |
| Kawakami | （<ruby>既読<rt>きどく</rt></ruby>）<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ、タイ<ruby>君<rt>くん</rt></ruby>。<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>合格率<rt>ごうかくりつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby>%だからね。<ruby>一発<rt>いっぱつ</rt></ruby>で<ruby>受<rt>う</rt></ruby>かる<ruby>人<rt>ひと</rt></ruby>のほうが<ruby>少<rt>すく</rt></ruby>ない。<br>*(Đã đọc. Không sao đâu Thái-kun. Vì 1 級 tỉ lệ đỗ chỉ 25% mà. Người đỗ ngay lần đầu ít hơn nhiều.)* |
| Thái | <ruby>合格率<rt>ごうかくりつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby>%ですか…<ruby>思<rt>おも</rt></ruby>っていたより<ruby>低<rt>ひく</rt></ruby>いですね。<br>*(Tỉ lệ đỗ 25% sao… thấp hơn em tưởng đấy ạ.)* |
| Kawakami | そう。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>とはレベルが<ruby>違<rt>ちが</rt></ruby>うんだ。<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>はいつ？<br>*(Đúng vậy. Khác hẳn 2 級 về độ khó. Bao giờ có kết quả?)* |
| Thái | <ruby>来月<rt>らいげつ</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>に<ruby>公式<rt>こうしき</rt></ruby>サイトで<ruby>発表<rt>はっぴょう</rt></ruby>です。<br>*(Tháng sau, giữa tháng 1 sẽ công bố trên trang chính thức ạ.)* |
| Kawakami | <ruby>分<rt>わ</rt></ruby>かった。<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら<ruby>必<rt>かなら</rt></ruby>ず<ruby>連絡<rt>れんらく</rt></ruby>してね。<ruby>今日<rt>きょう</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>んで。<br>*(Hiểu rồi. Có kết quả thì báo anh nhé. Hôm nay cứ nghỉ ngơi thoải mái đi.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |

---

## Tình huống 4 — Phòng 201 ký túc · 1/2026 trưa, đọc kết quả 不合格 trên web

| Vai | Lời thoại |
|---|---|
| Thái | （パソコンを<ruby>開<rt>ひら</rt></ruby>く）<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>のページにログインします。<br>*(Mở máy tính. Em đăng nhập trang công bố kết quả.)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む）「<ruby>結果<rt>けっか</rt></ruby>：<ruby>不合格<rt>ふごうかく</rt></ruby>。<ruby>総合<rt>そうごう</rt></ruby><ruby>68<rt>ろくじゅうはっ</rt></ruby><ruby>点<rt>てん</rt></ruby>」…<ruby>不合格<rt>ふごうかく</rt></ruby>か…<br>*(Đọc màn hình. "Kết quả: Trượt. Tổng điểm 68." Trượt rồi à…)* |
| Thái | <ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>70<rt>ななじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>各<rt>かく</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby><ruby>5割<rt>ごわり</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>、<ruby>総合<rt>そうごう</rt></ruby><ruby>7割<rt>ななわり</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>足<rt>た</rt></ruby>りない…<br>*(Đường đỗ là 70 điểm. Mỗi phần từ 50% trở lên, tổng từ 70% trở lên. Thiếu đúng 2 điểm…)* |
| Thái | （<ruby>分野別<rt>ぶんやべつ</rt></ruby>の<ruby>点数<rt>てんすう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>）<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>「CADリテラシー」<ruby>22<rt>にじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>「<ruby>形状<rt>けいじょう</rt></ruby><ruby>処理<rt>しょり</rt></ruby>」<ruby>20<rt>にじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>「<ruby>空間<rt>くうかん</rt></ruby><ruby>把握<rt>はあく</rt></ruby>」<ruby>15<rt>じゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>第<rt>だい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>「<ruby>製図<rt>せいず</rt></ruby>」<ruby>11<rt>じゅういち</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(Kiểm tra điểm từng phần. Phần 1 "CAD literacy" 22 điểm, phần 2 "xử lý hình dạng" 20 điểm, phần 3 "tư duy không gian" 15 điểm, phần 4 "vẽ kỹ thuật" 11 điểm.)* |
| Thái | <ruby>製図<rt>せいず</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>が<ruby>5割<rt>ごわり</rt></ruby>ぎりぎりだったか…そこを<ruby>強化<rt>きょうか</rt></ruby>すれば<ruby>合格<rt>ごうかく</rt></ruby>できたのに。<br>*(Phần vẽ kỹ thuật sát mức 50%… Giá mà em tăng cường được phần đó thì đã đỗ.)* |

---

## Tình huống 5 — Văn phòng kỹ thuật · 14:00, báo cáo kết quả với 工場長 Tanaka

| Vai | Lời thoại |
|---|---|
| Thái | （ドアをノック）<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>今<rt>いま</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>をいただけますか？<br>*(Gõ cửa. Em xin phép vào. Trưởng nhà máy, em có thể xin anh ít phút được không ạ?)* |
| Tanaka | はい、どうぞ。<ruby>何<rt>なに</rt></ruby>かありましたか？<br>*(Vâng, mời. Có chuyện gì vậy?)* |
| Thái | <ruby>3D<rt>スリーディー</rt></ruby>CAD<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<ruby>残念<rt>ざんねん</rt></ruby>ながら、<ruby>不合格<rt>ふごうかく</rt></ruby>でした。<br>*(Em đến báo cáo kết quả 3D CAD 1 級 ạ. Đáng tiếc là em trượt rồi ạ.)* |
| Tanaka | そうか…<ruby>点数<rt>てんすう</rt></ruby>はどのくらいでしたか？<br>*(Vậy à… Điểm số khoảng bao nhiêu?)* |
| Thái | <ruby>総合<rt>そうごう</rt></ruby><ruby>68<rt>ろくじゅうはっ</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<ruby>合格<rt>ごうかく</rt></ruby>ラインまであと<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>足<rt>た</rt></ruby>りませんでした。<ruby>製図<rt>せいず</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>かったです。<br>*(Tổng 68 điểm ạ. Thiếu 2 điểm so với đường đỗ. Em yếu phần vẽ kỹ thuật.)* |
| Tanaka | <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しい<ruby>試験<rt>しけん</rt></ruby>ですから、<ruby>気<rt>き</rt></ruby>を<ruby>落<rt>お</rt></ruby>とさないでください。<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>差<rt>さ</rt></ruby>なら<ruby>次<rt>つぎ</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>できますよ。<br>*(1 級 là kỳ thi thực sự khó, đừng nản chí. Cách 2 điểm thì lần sau chắc chắn đỗ.)* |
| Thái | ありがとうございます。<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>再<rt>さい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>がありますので、もう<ruby>一度<rt>いちど</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>させていただきたいです。<br>*(Em cảm ơn ạ. Tháng 6 có đợt thi lại, em xin phép được thử lần nữa ạ.)* |
| Tanaka | もちろんです。<ruby>受験料<rt>じゅけんりょう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>負担<rt>ふたん</rt></ruby>します。<ruby>業務<rt>ぎょうむ</rt></ruby>に<ruby>支障<rt>ししょう</rt></ruby>のない<ruby>範囲<rt>はんい</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>も<ruby>確保<rt>かくほ</rt></ruby>してください。<br>*(Tất nhiên rồi. Lệ phí thi công ty chịu. Em cứ sắp xếp thời gian học miễn không ảnh hưởng công việc.)* |
| Thái | お<ruby>心遣<rt>こころづか</rt></ruby>い、ありがとうございます。<br>*(Em cảm ơn anh đã quan tâm ạ.)* |

---

## Tình huống 6 — Phòng nghỉ · 15:30, đồng nghiệp Sakurai an ủi và chia sẻ kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いたよ。<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>不合格<rt>ふごうかく</rt></ruby>だったって？<br>*(Tai-kun, tớ nghe rồi. 1 級 trượt à?)* |
| Thái | はい…<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>足<rt>た</rt></ruby>りなくて。ちょっと<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>んでいます。<br>*(Vâng… Thiếu 2 điểm anh ạ. Em cũng hơi nản.)* |
| Sakurai | <ruby>俺<rt>おれ</rt></ruby>もね、<ruby>機械<rt>きかい</rt></ruby><ruby>加工<rt>かこう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>落<rt>お</rt></ruby>ちたんだ。<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>でやっと<ruby>受<rt>う</rt></ruby>かったよ。<br>*(Tớ này, 1 級 gia công cơ khí cũng trượt một lần. Lần hai mới đỗ đấy.)* |
| Thái | え、そうだったんですか。<ruby>桜井<rt>さくらい</rt></ruby>さんもですか。<br>*(Ơ, vậy ạ. Anh Sakurai cũng từng trượt à.)* |
| Sakurai | <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>はみんな<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby>は<ruby>落<rt>お</rt></ruby>ちるもんだよ。<ruby>鈴木<rt>すずき</rt></ruby>さんなんて<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>落<rt>お</rt></ruby>ちて<ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>だった。<br>*(1 級 ai cũng trượt ít nhất một lần. Anh Suzuki còn trượt hai lần, lần ba mới đỗ.)* |
| Thái | すみません、<ruby>桜井<rt>さくらい</rt></ruby>さんに<ruby>聞<rt>き</rt></ruby>きたいんですが、<ruby>再<rt>さい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>向<rt>む</rt></ruby>けての<ruby>勉強<rt>べんきょう</rt></ruby>のコツは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, em muốn hỏi anh Sakurai, bí quyết ôn thi lại là gì ạ?)* |
| Sakurai | コツね。<ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby><ruby>解<rt>と</rt></ruby>くこと。<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>弱<rt>よわ</rt></ruby>い<ruby>分野<rt>ぶんや</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でいいから<ruby>続<rt>つづ</rt></ruby>けること。<br>*(Bí quyết hả. Một là giải đề thi 3 năm gần nhất. Hai là phần yếu thì mỗi ngày 30 phút thôi cũng được, nhưng phải đều.)* |
| Thái | <ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>と<ruby>毎日<rt>まいにち</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ですね。メモします。ありがとうございます！<br>*(3 năm đề thi cũ và mỗi ngày 30 phút ạ. Em ghi lại. Em cảm ơn anh!)* |
| Sakurai | <ruby>頑張<rt>がんば</rt></ruby>って。<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かるよ。<br>*(Cố lên nhé. Tháng 6 chắc chắn đỗ thôi.)* |

---

## Tình huống 7 — Bàn làm việc · 16:00, quan sát đàn anh Kawakami làm mẫu thao tác CAD

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>製図<rt>せいず</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>かったんだろ？ちょっと<ruby>俺<rt>おれ</rt></ruby>の<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てて。<br>*(Tai-kun, em yếu phần vẽ kỹ thuật đúng không? Nhìn màn hình tớ này.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ ạ.)* |
| Kawakami | （CADを<ruby>操作<rt>そうさ</rt></ruby>しながら）<ruby>三<rt>さん</rt></ruby><ruby>面図<rt>めんず</rt></ruby>を<ruby>書<rt>か</rt></ruby>くときは、まず<ruby>正面<rt>しょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>を<ruby>決<rt>き</rt></ruby>めてから、<ruby>上面<rt>じょうめん</rt></ruby>と<ruby>側面<rt>そくめん</rt></ruby>を<ruby>展開<rt>てんかい</rt></ruby>するんだ。<br>*(Vừa thao tác CAD. Khi vẽ ba hình chiếu, trước hết quyết định hình chiếu chính diện, rồi mới triển khai mặt trên và mặt bên.)* |
| Thái | すみません、「<ruby>展開<rt>てんかい</rt></ruby>する」というのは、<ruby>正面<rt>しょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>から<ruby>他<rt>ほか</rt></ruby>の<ruby>面<rt>めん</rt></ruby>を<ruby>導<rt>みちび</rt></ruby>き<ruby>出<rt>だ</rt></ruby>すという<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "triển khai" có nghĩa là từ hình chiếu chính diện suy ra các mặt khác ạ?)* |
| Kawakami | そう、その<ruby>通<rt>とお</rt></ruby>り。<ruby>線<rt>せん</rt></ruby>を<ruby>真<rt>ま</rt></ruby>っすぐ<ruby>引<rt>ひ</rt></ruby>けば<ruby>位置<rt>いち</rt></ruby>がそろう。これが<ruby>製図<rt>せいず</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>ルール。<br>*(Đúng, chính xác. Kẻ thẳng đường thì vị trí khớp nhau. Đây là quy tắc cơ bản của vẽ kỹ thuật.)* |
| Thái | なるほど。<ruby>線<rt>せん</rt></ruby>を<ruby>真<rt>ま</rt></ruby>っすぐ<ruby>引<rt>ひ</rt></ruby>く、<ruby>位置<rt>いち</rt></ruby>をそろえる、ということですね。<br>*(Ra vậy. Kẻ đường thẳng, khớp vị trí — đúng không ạ.)* |
| Kawakami | そう。それから、<ruby>断面図<rt>だんめんず</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ずハッチングを<ruby>入<rt>い</rt></ruby>れる。これを<ruby>忘<rt>わす</rt></ruby>れると<ruby>減点<rt>げんてん</rt></ruby>される。<br>*(Đúng vậy. Còn nữa, hình cắt nhất định phải tô gạch chéo. Quên là bị trừ điểm.)* |
| Thái | ハッチング…すみません、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。どんな<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Hatching… Xin lỗi em mới nghe lần đầu. Nghĩa là gì ạ?)* |
| Kawakami | <ruby>切<rt>き</rt></ruby>った<ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>斜<rt>なな</rt></ruby>めの<ruby>細<rt>ほそ</rt></ruby>い<ruby>線<rt>せん</rt></ruby>をたくさん<ruby>入<rt>い</rt></ruby>れることだよ。<ruby>切<rt>き</rt></ruby>った<ruby>面<rt>めん</rt></ruby>だと<ruby>分<rt>わ</rt></ruby>かるようにするマークだ。<br>*(Là kẻ nhiều đường mảnh nghiêng vào phần bị cắt. Là dấu để người xem biết đó là mặt cắt.)* |
| Thái | <ruby>切<rt>き</rt></ruby>った<ruby>面<rt>めん</rt></ruby>のマークですね。<ruby>分<rt>わ</rt></ruby>かりました。<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>を<ruby>解<rt>と</rt></ruby>くとき<ruby>注意<rt>ちゅうい</rt></ruby>します。<br>*(Là dấu cho mặt cắt ạ. Em hiểu rồi. Em sẽ chú ý khi giải đề.)* |
| Kawakami | <ruby>分<rt>わ</rt></ruby>からないところがあったら、いつでも<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Có gì không hiểu, hỏi anh bất cứ lúc nào nhé.)* |

---

## Tình huống 8 — Phòng đào tạo · 17:00, xin sếp giờ ôn thi cố định mỗi tuần

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>相談<rt>そうだん</rt></ruby>させていただけますか？<br>*(Trưởng nhà máy, em xin được bàn thêm một việc nữa được không ạ?)* |
| Tanaka | はい、どうぞ。<br>*(Vâng, mời em.)* |
| Thái | <ruby>再<rt>さい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>だけ、<ruby>会議室<rt>かいぎしつ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って<ruby>勉強<rt>べんきょう</rt></ruby>させていただきたいんですが、よろしいでしょうか？<br>*(Để chuẩn bị thi lại, mỗi thứ tư chiều em xin một tiếng mượn phòng họp để học, anh cho phép được không ạ?)* |
| Tanaka | いいですよ。<ruby>業務<rt>ぎょうむ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わった<ruby>後<rt>あと</rt></ruby>なら<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Được chứ. Sau giờ làm thì không vấn đề gì.)* |
| Thái | ありがとうございます。それから、<ruby>桜井<rt>さくらい</rt></ruby>さんと<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>製図<rt>せいず</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらいたいんですが、お<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>に<ruby>許可<rt>きょか</rt></ruby>をいただけますか？<br>*(Em cảm ơn. Còn nữa, em muốn nhờ anh Sakurai và anh Kawakami chỉ phần vẽ kỹ thuật, anh xin phép giúp em hai anh ấy được không ạ?)* |
| Tanaka | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>には<ruby>私<rt>わたし</rt></ruby>から<ruby>頼<rt>たの</rt></ruby>んでおきます。<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるのも<ruby>仕事<rt>しごと</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つだからね。<br>*(Tớ sẽ nhờ hai cậu ấy giúp em. Bồi dưỡng đàn em cũng là một phần công việc mà.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>してきます。<br>*(Em thực sự cảm ơn anh. Tháng 6, em nhất định sẽ đỗ.)* |
| Tanaka | <ruby>頑張<rt>がんば</rt></ruby>って。<ruby>会社<rt>かいしゃ</rt></ruby>もタイ<ruby>君<rt>くん</rt></ruby>のことを<ruby>応援<rt>おうえん</rt></ruby>していますよ。<br>*(Cố lên. Công ty cũng ủng hộ Tai-kun mà.)* |

---

## Tình huống 9 — Phòng 201 · 22:00, gọi video cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & người yêu ở VN.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, anh có chuyện muốn nói. |
| Mai | (tiếng Việt) Anh sao thế? Mặt buồn vậy. Kết quả ra rồi à? |
| Thái | (tiếng Việt) Ừ. Anh trượt 1 級. Thiếu đúng 2 điểm. |
| Mai | (tiếng Việt) Anh ơi… không sao đâu mà. Anh đã nói tỉ lệ đỗ có 25% thôi. Anh đã làm hết sức rồi. |
| Thái | (tiếng Việt) Nhưng anh ức lắm em. Chỉ cần 2 điểm thôi. Phần 製図 — vẽ kỹ thuật — anh yếu. |
| Mai | (tiếng Việt) Vậy anh đã có kế hoạch chưa? |
| Thái | (tiếng Việt) Rồi. Tháng 6 thi lại. Sếp Tanaka cho mượn phòng họp tối thứ tư. Anh Sakurai với anh Kawakami sẽ chỉ riêng cho anh. Mỗi ngày anh dành 30 phút cho 製図, làm đề 過去問 3 năm. |
| Mai | (tiếng Việt) Hay quá. Ở Nhật người ta tốt với anh thật. |
| Thái | (tiếng Việt) Ừ. Hôm nay anh học được hai điều: 不合格 không phải tận thế, và "ai cũng từng trượt một lần". Anh Sakurai nói 1 級 ai cũng trượt ít nhất một lần. |
| Mai | (tiếng Việt) Anh à, em thấy anh trưởng thành hơn rồi đấy. Trượt một lần mà biết xin sếp, xin đàn anh dạy thêm. Hồi mới sang Nhật anh đâu dám hỏi như vậy. |
| Thái | (tiếng Việt) Ừ, 4 năm rồi mà em. Học được nhất là biết hỏi và biết nhờ. Trượt hay đỗ vẫn yêu anh chứ? |
| Mai | (tiếng Việt) Đỗ thì yêu thêm tí nữa thôi. (cười) Đi nghỉ sớm đi anh, mai còn đi làm. |
| Thái | (tiếng Việt) Ừ, chúc em ngủ ngon. |

---

## Tình huống 10 — Phòng 201 · 23:30, viết kế hoạch ôn thi bằng tiếng Nhật vào sổ tay

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>手帳<rt>てちょう</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>く）<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>再<rt>さい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>まで<ruby>5<rt>ご</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>。<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てます。<br>*(Mở sổ tay. Còn 5 tháng đến kỳ thi lại tháng 6. Lập kế hoạch nào.)* |
| Thái | （<ruby>書<rt>か</rt></ruby>きながら）<ruby>1<rt>いち</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>製図<rt>せいず</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>する。<br>*(Vừa viết. Một, mỗi ngày 30 phút tăng cường phần vẽ kỹ thuật.)* |
| Thái | <ruby>2<rt>に</rt></ruby>、<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>を<ruby>解<rt>と</rt></ruby>く。<ruby>3<rt>さん</rt></ruby>、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>会議室<rt>かいぎしつ</rt></ruby>で<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>集中<rt>しゅうちゅう</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>。<br>*(Hai, giải đề thi 3 năm gần nhất. Ba, mỗi thứ tư chiều, học tập trung 1 tiếng ở phòng họp.)* |
| Thái | <ruby>4<rt>よん</rt></ruby>、<ruby>桜井<rt>さくらい</rt></ruby>さんと<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>製図<rt>せいず</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらう。<ruby>5<rt>ご</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>模擬<rt>もぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける。<br>*(Bốn, mỗi tháng hai lần nhờ anh Sakurai và anh Kawakami dạy vẽ kỹ thuật. Năm, tháng 5 thi thử.)* |
| Thái | （<ruby>独<rt>ひと</rt></ruby>り<ruby>言<rt>ごと</rt></ruby>）<ruby>今度<rt>こんど</rt></ruby>こそ、<ruby>合格<rt>ごうかく</rt></ruby>します。<ruby>頑張<rt>がんば</rt></ruby>ろう、タイ。<br>*(Độc thoại. Lần này nhất định em sẽ đỗ. Cố lên, Thái.)* |

---

## Đọng lại chương 4

Tháng 12/2025 đến tháng 1/2026, Thái lần đầu vấp ngã trong sự nghiệp kỹ sư: thi **3D CAD 利用技術者 1 級** và **不合格** với 68 điểm — thiếu đúng 2 điểm so với 合格ライン 70. Nhưng từ thất bại đó, Thái học được loạt mẫu câu giao tiếp người đi làm Nhật phải biết: **xác nhận quy chế thi** (各分野5割以上・総合7割以上ということですか?), **báo cáo kết quả xấu với cấp trên một cách trung thực** (残念ながら、不合格でした), **xin lịch ôn cố định** (毎週〜の夕方、会議室を使わせていただきたいんですが), **xin sếp giới thiệu đàn anh dạy thêm** (お2人に許可をいただけますか?), **đáp lại lời an ủi của đồng nghiệp** (お心遣い、ありがとうございます), **hỏi lại bí quyết của đàn anh** (再試験に向けての勉強のコツは何ですか?), và **hỏi lễ phép khi gặp từ chuyên ngành mới** (「展開する」というのは〜という意味ですか? / ハッチングはどんな意味ですか?). Quan trọng hơn, Thái nhận ra văn hoá công sở Nhật: **不合格 không phải tận thế** — 桜井 trượt 1 lần, 鈴木 trượt 2 lần, công ty vẫn chi 受験料 cho lần thi lại, **後輩を育てる** là một phần công việc của 先輩. Đó là phẩm giá nghề kỹ sư: thất bại rồi đứng dậy, biết nhờ, biết hỏi, biết lập kế hoạch.

> Từ vựng & mẫu câu chương này: 3D CAD利用技術者・1級・不合格・合格ライン・合格率・各分野・総合・受験票・本人確認書類・座席番号・試験会場・試験官・付き添う・下書き・製図・形状処理・空間把握・CADリテラシー・三面図・正面図・側面図・展開する・断面図・ハッチング・減点・過去問・再試験・再チャレンジ・模擬試験・受験料・業務に支障のない範囲・後輩を育てる・お心遣い・残念ながら〜でした・お時間をいただけますか・〜させていただきたいんですが・〜というのはどんな意味ですか・〜ということですか・気を落とさないでください', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000005, 800000017, NULL, 'markdown_book', 'T5. Putra hết SSW1 về nước (プトラ帰国)', '# Sách kỹ sư khuôn đúc · T5. Putra hết SSW1 về nước (プトラ帰国)

> **Mục tiêu nhân vật:** Thái (27 tuổi, kỹ sư khuôn đúc tại みなみ精密金型 Anjo) tiễn người bạn cùng phòng 4 năm Putra hết visa SSW1 về Jakarta khởi nghiệp. Học các mẫu hội thoại tiếng Nhật quanh chủ đề chia tay và khởi nghiệp: nói về **kế hoạch sau khi về nước** (帰国後の計画), **kể chuyện vốn liếng – tiết kiệm** (貯金・資金), **hỏi lại lễ phép về khái niệm kinh doanh** (〜というのは?), **phát biểu cảm ơn tại 送別会**, **chào tạm biệt ở sân bay** (お元気で・また会いましょう), **trao đổi qua LINE/video call** giữ liên lạc bạn cũ.

---

## Bối cảnh

Tháng 2 năm 2026. Putra (Indonesia, SSW1) hết hợp đồng 5 năm và sẽ về Jakarta lập công ty dịch vụ sửa khuôn (金型修理). Thái đang ở năm thứ 4 tại みなみ精密金型 Anjo, trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu giao tiếp xoay quanh **chia tay đồng nghiệp nước ngoài**: hỏi đáp về kế hoạch khởi nghiệp, phát biểu trang trọng tại tiệc 送別会, chào tạm biệt ở sân bay và giữ liên lạc qua LINE.

---

## Tình huống 1 — Phòng 201 · 22:00 đêm 1/2026, Putra báo trước ngày về

| Vai | Lời thoại |
|---|---|
| Putra | タイ、SSWの<ruby>残<rt>のこ</rt></ruby>りはあと<ruby>1<rt>いっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>になったよ。<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>末<rt>すえ</rt></ruby>には<ruby>日本<rt>にほん</rt></ruby>を<ruby>離<rt>はな</rt></ruby>れる。<br>*(Tai ơi, SSW chỉ còn một tháng nữa thôi. Cuối tháng 2 tớ rời Nhật rồi.)* |
| Thái | （しばらく<ruby>黙<rt>だま</rt></ruby>る）...<ruby>本当<rt>ほんとう</rt></ruby>にもうそんなに<ruby>近<rt>ちか</rt></ruby>いんですね。<br>*(Im lặng một lúc... Thật sự gần đến vậy rồi sao.)* |
| Putra | <ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>部屋<rt>へや</rt></ruby>に<ruby>住<rt>す</rt></ruby>んだなんて、<ruby>嘘<rt>うそ</rt></ruby>みたいだな。<br>*(Bốn năm sống chung một phòng, cứ như giấc mơ.)* |
| Thái | <ruby>俺<rt>おれ</rt></ruby>が<ruby>来日<rt>らいにち</rt></ruby>した<ruby>日<rt>ひ</rt></ruby>のこと、まだ<ruby>覚<rt>おぼ</rt></ruby>えていますよ。プトラさんがファミマの<ruby>弁当<rt>べんとう</rt></ruby>を<ruby>買<rt>か</rt></ruby>ってくれた。<br>*(Em vẫn nhớ ngày em mới sang. Anh Putra đã mua cơm hộp Famima cho em.)* |
| Putra | <ruby>懐<rt>なつ</rt></ruby>かしいな。あの<ruby>時<rt>とき</rt></ruby>のタイはN4で、「<ruby>乾燥<rt>かんそう</rt></ruby>」の<ruby>意味<rt>いみ</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からなかった。<br>*(Hồi xa rồi nhỉ. Hồi đó Tai mới N4, cả từ "kansou" cũng chưa biết.)* |
| Thái | <ruby>恥<rt>は</rt></ruby>ずかしい<ruby>話<rt>はなし</rt></ruby>です。<ruby>今<rt>いま</rt></ruby>でも<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>がたくさんありますが。<br>*(Chuyện ngại thật. Đến giờ vẫn còn nhiều từ em không biết.)* |
| Putra | N2に<ruby>合格<rt>ごうかく</rt></ruby>したじゃないか。よく<ruby>頑張<rt>がんば</rt></ruby>ったよ。<br>*(Cậu thi đỗ N2 rồi còn gì. Cố gắng tốt lắm.)* |

---

## Tình huống 2 — Phòng 201 · 22:30, Putra kể kế hoạch khởi nghiệp ở Jakarta

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、インドネシアに<ruby>帰<rt>かえ</rt></ruby>ったら<ruby>何<rt>なに</rt></ruby>をするつもりですか？<br>*(Anh Putra, về Indonesia anh định làm gì?)* |
| Putra | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>っている。<ruby>金型<rt>かながた</rt></ruby><ruby>修理<rt>しゅうり</rt></ruby>サービスの<ruby>会社<rt>かいしゃ</rt></ruby>だ。<br>*(Tớ định lập công ty riêng. Công ty dịch vụ sửa khuôn.)* |
| Thái | <ruby>起業<rt>きぎょう</rt></ruby>ですか！すごいですね。すみません、「<ruby>金型<rt>かながた</rt></ruby><ruby>修理<rt>しゅうり</rt></ruby>サービス」というのは<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>にどんな<ruby>仕事<rt>しごと</rt></ruby>ですか？<br>*(Khởi nghiệp ạ! Tuyệt quá. Xin lỗi, "dịch vụ sửa khuôn" cụ thể là công việc gì ạ?)* |
| Putra | <ruby>古<rt>ふる</rt></ruby>くなったり<ruby>傷<rt>きず</rt></ruby>がついたりした<ruby>金型<rt>かながた</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>いたり<ruby>修正<rt>しゅうせい</rt></ruby>したりする<ruby>仕事<rt>しごと</rt></ruby>だ。<ruby>新<rt>あたら</rt></ruby>しい<ruby>金型<rt>かながた</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るより<ruby>安<rt>やす</rt></ruby>い。<br>*(Là công việc đánh bóng, chỉnh sửa khuôn bị mòn hoặc bị xước. Rẻ hơn làm khuôn mới.)* |
| Thái | なるほど、<ruby>修正<rt>しゅうせい</rt></ruby>サービスということですね。インドネシアにはそういう<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないんですか？<br>*(Ra vậy, dịch vụ chỉnh sửa ạ. Indonesia ít công ty như vậy hả anh?)* |
| Putra | そう。<ruby>大手<rt>おおて</rt></ruby>はあるけど<ruby>高<rt>たか</rt></ruby>すぎる。<ruby>中小<rt>ちゅうしょう</rt></ruby><ruby>企業<rt>きぎょう</rt></ruby>はみんな<ruby>困<rt>こま</rt></ruby>っているんだ。<br>*(Đúng vậy. Có hãng lớn nhưng đắt quá. Doanh nghiệp vừa và nhỏ ai cũng khổ vì cái đó.)* |
| Thái | <ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>磨<rt>みが</rt></ruby>きと<ruby>修正<rt>しゅうせい</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちますね。<br>*(Bốn năm kinh nghiệm mài và chỉnh sửa thật sự có ích anh nhỉ.)* |
| Putra | うん。<ruby>日本<rt>にほん</rt></ruby>の<ruby>精度<rt>せいど</rt></ruby>の<ruby>感覚<rt>かんかく</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>るのが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>財産<rt>ざいさん</rt></ruby>だよ。<br>*(Ừ. Mang cảm giác về độ chính xác Nhật về nước, đó là tài sản lớn nhất của tớ.)* |

---

## Tình huống 3 — Phòng 201 · 23:00, hỏi về vốn liếng và quy mô công ty

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>失礼<rt>しつれい</rt></ruby>ですが、<ruby>資金<rt>しきん</rt></ruby>はどうやって<ruby>用意<rt>ようい</rt></ruby>するんですか？<br>*(Em hỏi khí không phải, vốn anh xoay sở thế nào ạ?)* |
| Putra | SSWの<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>で<ruby>2000<rt>にせん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>貯<rt>た</rt></ruby>めたんだ。<ruby>家賃<rt>やちん</rt></ruby>が<ruby>安<rt>やす</rt></ruby>かったし、<ruby>残業<rt>ざんぎょう</rt></ruby>も<ruby>多<rt>おお</rt></ruby>かった。<br>*(Bốn năm SSW tớ để dành được 20 triệu yên. Tiền nhà rẻ, lại làm thêm giờ nhiều.)* |
| Thái | <ruby>2000<rt>にせん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>！すごいですね。<br>*(20 triệu yên! Đỉnh thật đấy.)* |
| Putra | インドネシアの<ruby>物価<rt>ぶっか</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えると、<ruby>工場<rt>こうじょう</rt></ruby>を<ruby>小<rt>ちい</rt></ruby>さく<ruby>始<rt>はじ</rt></ruby>めるには<ruby>十分<rt>じゅうぶん</rt></ruby>だよ。<br>*(Tính theo giá Indonesia thì đủ để mở một xưởng nhỏ.)* |
| Thái | <ruby>初期<rt>しょき</rt></ruby>の<ruby>従業員<rt>じゅうぎょういん</rt></ruby>は<ruby>何人<rt>なんにん</rt></ruby>ぐらい<ruby>予定<rt>よてい</rt></ruby>ですか？<br>*(Ban đầu anh dự định bao nhiêu nhân viên?)* |
| Putra | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>人<rt>にん</rt></ruby>くらいかな。<ruby>磨<rt>みが</rt></ruby>き<ruby>担当<rt>たんとう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>、<ruby>営業<rt>えいぎょう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby>、<ruby>事務<rt>じむ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby>。<br>*(Đầu tiên khoảng năm người. Ba người mài, một kinh doanh, một văn phòng.)* |
| Thái | <ruby>営業<rt>えいぎょう</rt></ruby>はプトラさん<ruby>自<rt>じ</rt></ruby><ruby>身<rt>しん</rt></ruby>ではないんですか？<br>*(Kinh doanh không phải chính anh Putra ạ?)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>は<ruby>技術<rt>ぎじゅつ</rt></ruby>のほうに<ruby>集中<rt>しゅうちゅう</rt></ruby>したい。<ruby>営業<rt>えいぎょう</rt></ruby>は<ruby>現地<rt>げんち</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せる<ruby>方<rt>ほう</rt></ruby>がいい。<br>*(Tớ muốn tập trung mảng kỹ thuật. Kinh doanh nên giao người bản địa thì tốt hơn.)* |
| Thái | なるほど、<ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby>ということですね。<br>*(Ra là phân chia vai trò ạ.)* |

---

## Tình huống 4 — Xưởng みなみ精密金型 · 14:00 ngày sau, quan sát Putra dạy cho Việt Nam kohai

| Vai | Lời thoại |
|---|---|
| Putra | （<ruby>新人<rt>しんじん</rt></ruby>のヒエップに） ヒエップさん、この<ruby>磨<rt>みが</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れすぎないように。<br>*(Nói với Hiệp, kohai mới: Hiệp ơi, em xem cách mài này nhé. Đừng dồn lực quá mạnh.)* |
| Hiệp | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em rõ ạ.)* |
| Putra | <ruby>砥石<rt>といし</rt></ruby>は<ruby>軽<rt>かる</rt></ruby>く<ruby>動<rt>うご</rt></ruby>かして、<ruby>面<rt>めん</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>均等<rt>きんとう</rt></ruby>に<ruby>磨<rt>みが</rt></ruby>く。<ruby>一<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>するとへこむ。<br>*(Đẩy đá mài nhẹ tay, mài đều khắp mặt. Tập trung một điểm là bị lõm.)* |
| Hiệp | プトラさん、「へこむ」というのは？<br>*(Anh Putra, "hekomu" nghĩa là gì ạ?)* |
| Putra | <ruby>表面<rt>ひょうめん</rt></ruby>が<ruby>下<rt>した</rt></ruby>に<ruby>沈<rt>しず</rt></ruby>むこと。<ruby>凹<rt>へこ</rt></ruby>みができる。<br>*(Là bề mặt bị lún xuống. Sinh ra vết lõm.)* |
| Hiệp | あ、<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(À, em hiểu rồi. Cảm ơn anh.)* |
| Thái | （<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>ながら、<ruby>小声<rt>こごえ</rt></ruby>でプトラに）プトラさん、<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>上手<rt>うま</rt></ruby>くなりましたね。<br>*(Đứng cạnh xem, nói nhỏ với Putra: Anh dạy bây giờ giỏi thật đấy.)* |
| Putra | タイから<ruby>学<rt>まな</rt></ruby>んだんだよ。タイは<ruby>後輩<rt>こうはい</rt></ruby>にとても<ruby>丁寧<rt>ていねい</rt></ruby>だから。<br>*(Tớ học từ Tai đó. Tai luôn tận tình với hậu bối mà.)* |
| Thái | （<ruby>照<rt>て</rt></ruby>れる）いえいえ、まだまだです。<br>*(Ngượng ngùng.) Đâu có đâu, em còn kém lắm.)* |

---

## Tình huống 5 — Phòng họp · 18:00 ngày 27/2, 送別会 phát biểu cảm ơn

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>はプトラさんの<ruby>送別会<rt>そうべつかい</rt></ruby>です。<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người ạ, hôm nay là tiệc tiễn anh Putra. Bốn năm vất vả rồi.)* |
| Putra | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）<ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はこのような<ruby>会<rt>かい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いていただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Đứng dậy. Thưa quý vị, hôm nay được tổ chức buổi tiệc thế này, tôi xin chân thành cảm ơn.)* |
| Putra | <ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>もろくに<ruby>話<rt>はな</rt></ruby>せない<ruby>私<rt>わたし</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れてくださり、<ruby>金型<rt>かながた</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>一<rt>いち</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えてくださいました。<br>*(Bốn năm trước, tôi tiếng Nhật còn chưa nói được, vậy mà mọi người đã đón nhận và dạy tôi kỹ thuật khuôn từ đầu.)* |
| Sakurai | プトラ、ジャカルタで<ruby>絶対<rt>ぜったい</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>しろよ！<br>*(Putra, ở Jakarta nhất định phải thành công đấy!)* |
| Putra | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>成功<rt>せいこう</rt></ruby>します。<ruby>皆<rt>みな</rt></ruby>さんから<ruby>学<rt>まな</rt></ruby>んだ<ruby>精度<rt>せいど</rt></ruby>の<ruby>感覚<rt>かんかく</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>ります。<br>*(Vâng, nhất định sẽ thành công. Tôi sẽ mang theo cảm giác về độ chính xác đã học được từ mọi người về nước.)* |
| Tanaka | プトラさん、<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>に<ruby>君<rt>きみ</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>くからな。<br>*(Putra, năm năm nữa tớ sẽ qua thăm công ty của cậu đấy.)* |
| Putra | <ruby>是非<rt>ぜひ</rt></ruby>お<ruby>越<rt>こ</rt></ruby>しください！<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Nhất định mời ông qua! Trưởng nhà máy, em đã được ông chăm sóc rất nhiều.)* |
| Thái | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる、<ruby>声<rt>こえ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>震<rt>ふる</rt></ruby>える）プトラさん、<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>来日<rt>らいにち</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>からずっと<ruby>支<rt>ささ</rt></ruby>えてくれた<ruby>兄<rt>あに</rt></ruby><ruby>貴<rt>き</rt></ruby>です。<br>*(Đứng dậy, giọng hơi run.) Anh Putra, bốn năm qua thật sự cảm ơn anh. Anh là người anh đã dìu dắt em từ ngày đầu tiên đặt chân tới Nhật.)* |
| Putra | タイ...こちらこそ、ありがとう。<br>*(Tai... tớ mới phải cảm ơn cậu.)* |

---

## Tình huống 6 — Sân bay Centrair · 14:00 ngày 28/2, chào tạm biệt

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、<ruby>荷物<rt>にもつ</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>預<rt>あず</rt></ruby>けましたか？<br>*(Anh Putra, hành lý anh ký gửi hết chưa?)* |
| Putra | うん、<ruby>済<rt>す</rt></ruby>んだ。あとは<ruby>搭乗<rt>とうじょう</rt></ruby>ゲートに<ruby>行<rt>い</rt></ruby>くだけだ。<br>*(Ừ, xong rồi. Chỉ còn ra cửa lên máy bay nữa thôi.)* |
| Thái | <ruby>飛行機<rt>ひこうき</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby><ruby>発<rt>はつ</rt></ruby>でしたっけ？<br>*(Máy bay mấy giờ cất cánh anh nhỉ?)* |
| Putra | <ruby>16<rt>じゅうろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、ジャカルタ<ruby>直行<rt>ちょっこう</rt></ruby><ruby>便<rt>びん</rt></ruby>。<ruby>7<rt>しち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>で<ruby>着<rt>つ</rt></ruby>く。<br>*(16h30, chuyến thẳng Jakarta. Bảy tiếng là tới.)* |
| Thái | <ruby>無事<rt>ぶじ</rt></ruby>に<ruby>着<rt>つ</rt></ruby>いたらLINEを<ruby>送<rt>おく</rt></ruby>ってくださいね。<br>*(Đến nơi an toàn anh nhắn LINE cho em nhé.)* |
| Putra | もちろん。タイ、<ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて。<ruby>残<rt>のこ</rt></ruby>り<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>れよ。<br>*(Đương nhiên. Tai giữ gìn sức khoẻ nhé. Năm cuối, cố lên.)* |
| Thái | はい。プトラさんも<ruby>新<rt>あたら</rt></ruby>しい<ruby>会社<rt>かいしゃ</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Vâng. Anh Putra cũng cố lên với công ty mới.)* |
| Putra | （<ruby>抱<rt>だ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>う）タイ、<ruby>君<rt>きみ</rt></ruby>がいたから<ruby>俺<rt>おれ</rt></ruby>はここまで<ruby>頑張<rt>がんば</rt></ruby>れたんだ。<br>*(Ôm chầm lấy nhau.) Tai, nhờ có cậu tớ mới cố được đến hôm nay.)* |
| Thái | <ruby>俺<rt>おれ</rt></ruby>もプトラさんのおかげです。お<ruby>元気<rt>げんき</rt></ruby>で。また<ruby>会<rt>あ</rt></ruby>いましょう。<br>*(Em cũng vậy, nhờ anh cả. Anh giữ gìn sức khoẻ. Mình lại gặp nhau nhé.)* |
| Putra | <ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、ジャカルタで。<br>*(Năm năm nữa, ở Jakarta.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>きます！<br>*(Vâng, em nhất định sẽ qua!)* |

---

## Tình huống 7 — Phòng 201 · 22:00 cùng ngày, gọi điện cho Mai và mẹ (scene tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt-Việt với người yêu và mẹ ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, qua video call) Anh ơi? Putra về rồi à? Em thấy anh đăng story ở sân bay. |
| Thái | (tiếng Việt) Ừ, tiễn anh ấy bay lúc 4 giờ rưỡi chiều. Bốn năm cùng phòng, giờ phòng trống một nửa, lạ ghê em. |
| Mai | (tiếng Việt) Anh ấy về Indonesia làm gì hả anh? |
| Thái | (tiếng Việt) Mở công ty dịch vụ sửa khuôn — bên Nhật gọi là 金型修理サービス. Vốn 20 triệu yên anh ấy để dành 4 năm SSW. Dự kiến 5 nhân viên, anh ấy phụ trách 技術, để người bản địa làm 営業. |
| Mai | (tiếng Việt) Khâm phục anh ấy thật. Tiết kiệm được nhiều thế. |
| Thái | (tiếng Việt) Em biết không, hôm nay 送別会 anh đứng lên cảm ơn, anh suýt khóc. Anh ấy là người mua cơm hộp Famima cho anh đêm đầu tiên ở Nhật, lúc anh còn chẳng biết 乾燥 nghĩa là gì. |
| Mẹ Thái | (tiếng Việt, ghé vào màn hình) Thái! Mẹ nghe rồi. Tình anh em bạn bè giữ cho khéo con, đời người ít ai gặp được người tốt thế. |
| Thái | (tiếng Việt) Vâng mẹ. Hẹn 5 năm nữa con qua Jakarta thăm công ty anh ấy. Anh ấy bảo lúc đó nếu con muốn thì sang làm cùng. |
| Mai | (tiếng Việt) Vậy mình có cả mạng lưới Đông Nam Á rồi. Em mừng cho anh. |
| Thái | (tiếng Việt) Anh còn 1 năm hợp đồng nữa thôi. Cố nốt, rồi tính chuyện hai đứa mình. Em với mẹ ngủ sớm đi, mai anh phải dậy 6 giờ. |
| Mẹ Thái | (tiếng Việt) Ừ, giữ sức khoẻ con. |

---

## Tình huống 8 — Phòng 201 · 23:00, một mình nhìn vật kỷ niệm Putra để lại

| Vai | Lời thoại |
|---|---|
| Thái | （プトラが<ruby>残<rt>のこ</rt></ruby>したノギスを<ruby>手<rt>て</rt></ruby>に<ruby>取<rt>と</rt></ruby>る）<ruby>4<rt>よ</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>間<rt>かん</rt></ruby><ruby>使<rt>つか</rt></ruby>っていたノギスだ。<br>*(Cầm cây thước cặp Putra để lại. Cây thước cặp anh ấy đã dùng suốt bốn năm.)* |
| Thái | （メモを<ruby>見<rt>み</rt></ruby>る）「タイへ。これで<ruby>精度<rt>せいど</rt></ruby>を<ruby>測<rt>はか</rt></ruby>り<ruby>続<rt>つづ</rt></ruby>けろよ。— プトラ」<br>*(Nhìn mảnh ghi chú. "Gửi Tai. Hãy tiếp tục đo độ chính xác bằng cái này. — Putra")* |
| Thái | （LINEに<ruby>返信<rt>へんしん</rt></ruby>する）プトラさん、ノギス<ruby>気<rt>き</rt></ruby>づきました。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Trả lời tin LINE: Anh Putra, em thấy cây thước rồi. Em sẽ dùng cẩn thận.)* |
| Putra | （LINE）<ruby>無事<rt>ぶじ</rt></ruby>にジャカルタに<ruby>着<rt>つ</rt></ruby>いたよ。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>再会<rt>さいかい</rt></ruby>した。<br>*(Tin LINE: Tớ đến Jakarta an toàn rồi. Gặp lại gia đình.)* |
| Thái | （LINE）よかったです！ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Tin LINE: Mừng quá! Anh nghỉ ngơi đi nhé.)* |
| Putra | （LINE）タイも<ruby>頑張<rt>がんば</rt></ruby>って。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>会<rt>あ</rt></ruby>おう。<br>*(Tin LINE: Tai cũng cố lên. Năm năm nữa, nhất định gặp lại.)* |
| Thái | （<ruby>独<rt>ひと</rt></ruby>り<ruby>言<rt>ごと</rt></ruby>）<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、ジャカルタ。<ruby>必<rt>かなら</rt></ruby>ず。<br>*(Lẩm bẩm một mình. Năm năm nữa, Jakarta. Nhất định.)* |

---

## Đọng lại chương 5

Chương này Thái học được các mẫu hội thoại quanh chủ đề **chia tay người nước ngoài cùng phòng** — tình huống ít gặp nhưng cảm xúc nặng nhất sau 4 năm: hỏi đáp về **kế hoạch khởi nghiệp sau khi về nước** (帰国後の計画・起業), kể chuyện **tiết kiệm và vốn liếng** (貯金・資金・2000万円), **hỏi lại lễ phép về khái niệm kinh doanh** (〜というのは・具体的に), quan sát Putra dạy kohai cách **mài khuôn** (磨き・砥石・へこむ) — bài học truyền nghề, **phát biểu trang trọng tại 送別会** (本日はこのような会を開いていただき・お世話になりました・是非お越しください), **chào tạm biệt ở sân bay** (お元気で・また会いましょう・気を付けて), và **giữ liên lạc qua LINE** sau khi bạn về nước. Cuối cùng nhận ra: tình bạn vượt quốc tịch ở nhà máy Nhật là **mạng lưới** thật sự cho cả cuộc đời nghề kỹ sư — không chỉ là kỷ niệm.

> Từ vựng & mẫu câu chương này: 帰国・SSW1・5年契約・起業・金型修理サービス・磨き・修正・砥石・へこむ・精度・感覚・資金・貯める・2000万円・従業員・営業・事務・役割分担・送別会・お世話になりました・是非お越しください・〜というのは・具体的に・無事に・搭乗ゲート・直行便・お元気で・また会いましょう・気を付けて・5年後・ジャカルタ', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000006, 800000017, NULL, 'markdown_book', 'T6. Trưởng nhà máy Tanaka thông báo nghỉ hưu (田中工場長定年)', '# Sách kỹ sư khuôn đúc · T6. Trưởng nhà máy Tanaka thông báo nghỉ hưu (田中工場長定年)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Hà Nội) đã làm dưới quyền 工場長 Tanaka suốt 4 năm tại Anjo. Học các mẫu hội thoại tiếng Nhật xoay quanh thông báo nghỉ hưu của cấp trên: nghe và phản hồi **朝礼** thông báo **定年退職**, hỏi thăm đồng nghiệp lúc sốc tin, đáp lời sếp khi được khen ngợi 4 năm trưởng thành, hỏi lại lễ phép về chế độ **嘱託** (〜というのは?), quan sát đàn anh nhìn nhận sự thay đổi nhân sự, và nói về tương lai chức **係長** với cấp trên.

---

## Bối cảnh

Tháng 3 năm 2026. Thái đã 27 tuổi, năm thứ 4 tại **株式会社みなみ精密金型** ở Anjo, đã có 金型2級 + N2, vừa làm lead dự án đầu tiên. Trình độ tiếng Nhật N2. Sáng nay trong 朝礼, 工場長 Tanaka — người đón Thái ngày đầu sang Nhật — bất ngờ thông báo sẽ 定年退職 cuối tháng 9, còn 6 tháng để bàn giao cho người kế nhiệm Kawakami. Chương này tập trung các mẫu câu giao tiếp trong tình huống biến động nhân sự công ty Nhật: nghe thông báo trang trọng, đáp lời khi được sếp khen, hỏi về chế độ hậu nghỉ hưu, và bàn bạc tương lai nghề nghiệp.

---

## Tình huống 1 — Phòng họp xưởng · 8:30, nghe 朝礼 thông báo 定年退職

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせがあります。<br>*(Chào buổi sáng cả công ty. Hôm nay tôi có một thông báo quan trọng.)* |
| Sakurai | (nói nhỏ với Thái) <ruby>何<rt>なん</rt></ruby>だろう、<ruby>真剣<rt>しんけん</rt></ruby>な<ruby>顔<rt>かお</rt></ruby>だな。<br>*(Chuyện gì nhỉ, mặt ông ấy nghiêm trang lắm.)* |
| Tanaka | <ruby>私<rt>わたし</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>は、<ruby>本年<rt>ほんねん</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>をもちまして、<ruby>定年退職<rt>ていねんたいしょく</rt></ruby>させていただくことになりました。<br>*(Tôi, Tanaka, sẽ chính thức về hưu vào cuối tháng 9 năm nay.)* |
| Thái | (sửng sốt, nói nhỏ) えっ…<br>*(Ơ…)* |
| Tanaka | <ruby>30<rt>さんじゅう</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>皆<rt>みな</rt></ruby>さんにお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>心<rt>こころ</rt></ruby>から<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Suốt 30 năm qua, tôi thực sự đã được mọi người giúp đỡ rất nhiều. Tôi xin cảm ơn từ tận đáy lòng.)* |
| Tanaka | <ruby>後任<rt>こうにん</rt></ruby>の<ruby>工場長<rt>こうじょうちょう</rt></ruby>は<ruby>川上<rt>かわかみ</rt></ruby>さんに<ruby>務<rt>つと</rt></ruby>めていただきます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きご<ruby>協力<rt>きょうりょく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Người kế nhiệm chức 工場長 là anh Kawakami. Kính mong mọi người tiếp tục hợp tác.)* |
| Toàn thể | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Cùng cúi đầu thật sâu. Bao năm qua ông đã vất vả nhiều.)* |
| Thái | (cúi đầu cùng mọi người, lòng nặng) お<ruby>疲<rt>つか</rt></ruby>れさまでした…<br>*(Ông đã vất vả rồi…)* |

---

## Tình huống 2 — Hành lang xưởng · 9:00, Sakurai an ủi Thái — hỏi thăm khi đồng nghiệp sốc

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か？<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いよ。<br>*(Tai-kun, em có ổn không? Mặt em tái nhợt kìa.)* |
| Thái | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です…ちょっとびっくりしました。<br>*(Em ổn ạ… Chỉ là hơi bất ngờ.)* |
| Sakurai | だよな。<ruby>君<rt>きみ</rt></ruby>は<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>空港<rt>くうこう</rt></ruby>まで<ruby>迎<rt>むか</rt></ruby>えに<ruby>来<rt>き</rt></ruby>てもらった<ruby>世代<rt>せだい</rt></ruby>だもんな。<br>*(Phải rồi. Em là thế hệ được chính ông Tanaka ra tận sân bay đón mà.)* |
| Thái | はい…<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>ずっと<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>下<rt>もと</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いてきましたから。<br>*(Vâng… Suốt 4 năm em đều làm việc dưới quyền ông Tanaka mà.)* |
| Sakurai | でも<ruby>川上<rt>かわかみ</rt></ruby><ruby>新工場長<rt>しんこうじょうちょう</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<ruby>技術<rt>ぎじゅつ</rt></ruby>も<ruby>人柄<rt>ひとがら</rt></ruby>もしっかりしている。<br>*(Nhưng anh Kawakami lên 工場長 thì yên tâm thôi. Cả kỹ thuật lẫn tính cách đều vững vàng.)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby>さんには<ruby>設計<rt>せっけい</rt></ruby>で<ruby>何度<rt>なんど</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Vâng, anh Kawakami đã nhiều lần chỉ em về thiết kế.)* |
| Sakurai | <ruby>変化<rt>へんか</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>でもつらいよ。でも<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>までまだ<ruby>半年<rt>はんとし</rt></ruby>ある。<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎを<ruby>大切<rt>たいせつ</rt></ruby>にしような。<br>*(Thay đổi ai cũng khó. Nhưng còn nửa năm đến tháng 9. Mình hãy trân trọng việc bàn giao.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh.)* |

---

## Tình huống 3 — Phòng 工場長 · 14:00, Tanaka mời Thái nói chuyện riêng — đáp lời khi được khen 4 năm trưởng thành

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>そうか。<ruby>座<rt>すわ</rt></ruby>って。<br>*(Tai-kun, mình nói chuyện một chút nhé. Em ngồi đi.)* |
| Thái | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em xin phép.)* |
| Tanaka | <ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、セントレア<ruby>空港<rt>くうこう</rt></ruby>で<ruby>初<rt>はじ</rt></ruby>めて<ruby>君<rt>きみ</rt></ruby>に<ruby>会<rt>あ</rt></ruby>った<ruby>日<rt>ひ</rt></ruby>のことを<ruby>今<rt>いま</rt></ruby>でも<ruby>覚<rt>おぼ</rt></ruby>えているよ。<br>*(Bốn năm trước, lần đầu gặp em ở sân bay Centrair, tôi vẫn còn nhớ rõ.)* |
| Thái | はい、<ruby>私<rt>わたし</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れられません。<br>*(Vâng, em cũng không quên được ạ.)* |
| Tanaka | あの<ruby>時<rt>とき</rt></ruby>の<ruby>君<rt>きみ</rt></ruby>は<ruby>23<rt>にじゅうさん</rt></ruby><ruby>歳<rt>さい</rt></ruby>、N4で「<ruby>二次<rt>にじ</rt></ruby>サプライヤー」も<ruby>知<rt>し</rt></ruby>らなかった。<br>*(Lúc đó em mới 23 tuổi, N4, đến cụm "nhà cung cấp cấp hai" cũng chưa biết.)* |
| Thái | (mỉm cười ngượng) はい、<ruby>何<rt>なに</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりませんでした。<br>*(Vâng, em chẳng biết gì cả ạ.)* |
| Tanaka | <ruby>今<rt>いま</rt></ruby>はどうだ。<ruby>27<rt>にじゅうしち</rt></ruby><ruby>歳<rt>さい</rt></ruby>、<ruby>金型<rt>かながた</rt></ruby><ruby>製作<rt>せいさく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、N2、<ruby>初<rt>はじ</rt></ruby>めてのリードもやり<ruby>遂<rt>と</rt></ruby>げた。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>成長<rt>せいちょう</rt></ruby>だ。<br>*(Còn bây giờ thì sao. 27 tuổi, 金型製作 2 級, N2, đã hoàn thành dự án lead đầu tiên. Trưởng thành thật sự đáng nể.)* |
| Thái | (rưng rưng, cúi đầu) <ruby>田中<rt>たなか</rt></ruby>さんが<ruby>毎日<rt>まいにち</rt></ruby><ruby>声<rt>こえ</rt></ruby>をかけてくださったおかげです。<br>*(Là nhờ ông Tanaka mỗi ngày đều quan tâm em ạ.)* |
| Tanaka | いや、<ruby>君<rt>きみ</rt></ruby>が<ruby>自分<rt>じぶん</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>った<ruby>結果<rt>けっか</rt></ruby>だよ。<ruby>誇<rt>ほこ</rt></ruby>っていい。<br>*(Không, đó là thành quả em tự nỗ lực. Em có quyền tự hào.)* |
| Thái | ありがとうございます…（<ruby>涙<rt>なみだ</rt></ruby>をこらえる）<br>*(Em cảm ơn ông… Cố nén nước mắt.)* |

---

## Tình huống 4 — Phòng 工場長 · 14:20, hỏi lại lễ phép về chế độ 嘱託

| Vai | Lời thoại |
|---|---|
| Tanaka | それからね、<ruby>退職後<rt>たいしょくご</rt></ruby>のことなんだが、<ruby>嘱託<rt>しょくたく</rt></ruby>として<ruby>週<rt>しゅう</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>だ。<br>*(Còn nữa, sau khi nghỉ hưu, tôi dự định ở lại công ty hai ngày một tuần dưới dạng cộng tác.)* |
| Thái | すみません、「<ruby>嘱託<rt>しょくたく</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Xin lỗi, "shokutaku" nghĩa là gì ạ?)* |
| Tanaka | <ruby>定年退職<rt>ていねんたいしょく</rt></ruby>した<ruby>人<rt>ひと</rt></ruby>が、<ruby>正社員<rt>せいしゃいん</rt></ruby>ではなく、<ruby>契約<rt>けいやく</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>のような<ruby>形<rt>かたち</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けることだよ。<br>*(Là khi người đã về hưu tiếp tục làm việc dưới dạng nhân viên hợp đồng, không phải nhân viên chính thức nữa.)* |
| Thái | <ruby>正社員<rt>せいしゃいん</rt></ruby>ではない<ruby>契約<rt>けいやく</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>、ということですね。<br>*(Tức là nhân viên hợp đồng chứ không phải chính thức ạ.)* |
| Tanaka | そう。<ruby>給料<rt>きゅうりょう</rt></ruby>は<ruby>下<rt>さ</rt></ruby>がるけど、<ruby>技術<rt>ぎじゅつ</rt></ruby>の<ruby>伝承<rt>でんしょう</rt></ruby>のために<ruby>残<rt>のこ</rt></ruby>るつもりだ。<br>*(Đúng. Lương sẽ giảm, nhưng tôi định ở lại để truyền lại kỹ thuật.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>ですか！じゃあ、これからも<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>会<rt>あ</rt></ruby>えるんですね。<br>*(Thật ạ! Vậy là từ giờ em vẫn được gặp ông ạ.)* |
| Tanaka | ああ、<ruby>火曜日<rt>かようび</rt></ruby>と<ruby>木曜日<rt>もくようび</rt></ruby>に<ruby>来<rt>く</rt></ruby>る。<ruby>分<rt>わ</rt></ruby>からないことがあれば、いつでも<ruby>聞<rt>き</rt></ruby>きなさい。<br>*(Ừ, tôi sẽ đến vào thứ ba và thứ năm. Có gì không hiểu cứ hỏi tôi bất kỳ lúc nào.)* |
| Thái | はい、ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Vâng, em cảm ơn ông. Em thực sự yên tâm rồi ạ.)* |

---

## Tình huống 5 — Phòng 工場長 · 14:35, Tanaka gợi tương lai 係長 — bàn về định hướng nghề

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>のことを<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>しておきたい。<br>*(Tai-kun, tôi muốn nói chút về chuyện một năm nữa.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời ông ạ.)* |
| Tanaka | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>春<rt>はる</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>を<ruby>係長<rt>かかりちょう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>に<ruby>推薦<rt>すいせん</rt></ruby>しようと<ruby>思<rt>おも</rt></ruby>っている。<ruby>準備<rt>じゅんび</rt></ruby>しておきなさい。<br>*(Mùa xuân năm sau, tôi định tiến cử em làm ứng viên trưởng nhóm. Em hãy chuẩn bị dần.)* |
| Thái | えっ、<ruby>係長<rt>かかりちょう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>ですか！<ruby>私<rt>わたし</rt></ruby>に<ruby>務<rt>つと</rt></ruby>まるでしょうか…<br>*(Ơ, ứng viên 係長 ấy ạ! Liệu em có làm nổi không…)* |
| Tanaka | <ruby>務<rt>つと</rt></ruby>まる。<ruby>君<rt>きみ</rt></ruby>はもう「やってもらう<ruby>側<rt>がわ</rt></ruby>」じゃない、「やってもらう<ruby>立場<rt>たちば</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>側<rt>がわ</rt></ruby>」になる。<br>*(Làm được. Em không còn ở vị trí "được giao việc" nữa, mà sẽ thành người "tạo ra vị trí giao việc cho người khác".)* |
| Thái | はい…<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>もしっかり<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Vâng… Em sẽ học cách hướng dẫn đàn em cho tử tế.)* |
| Tanaka | <ruby>川上<rt>かわかみ</rt></ruby><ruby>新工場長<rt>しんこうじょうちょう</rt></ruby>とも<ruby>相談<rt>そうだん</rt></ruby>してある。<ruby>応援<rt>おうえん</rt></ruby>してくれるよ。<br>*(Tôi đã bàn với anh Kawakami 工場長 mới rồi. Anh ấy sẽ ủng hộ em.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>必<rt>かなら</rt></ruby>ず<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em rõ ạ. Em thực sự cảm ơn ông. Em nhất định sẽ cố gắng.)* |

---

## Tình huống 6 — Xưởng · 16:00, quan sát đàn anh Kawakami nhận chức 工場長

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、ちょっといいか。<br>*(Tai-kun, em rảnh chút không?)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby>さん。<br>*(Vâng, anh Kawakami.)* |
| Kawakami | <ruby>今朝<rt>けさ</rt></ruby>の<ruby>発表<rt>はっぴょう</rt></ruby>、びっくりしただろう。<br>*(Thông báo sáng nay chắc làm em sốc nhỉ.)* |
| Thái | はい、<ruby>正直<rt>しょうじき</rt></ruby><ruby>言<rt>い</rt></ruby>って<ruby>少<rt>すこ</rt></ruby>し<ruby>動揺<rt>どうよう</rt></ruby>しました。<br>*(Vâng, thật lòng thì em hơi dao động.)* |
| Kawakami | <ruby>俺<rt>おれ</rt></ruby>も<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>育<rt>そだ</rt></ruby>てられた<ruby>人間<rt>にんげん</rt></ruby>だ。<ruby>君<rt>きみ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じだよ。<br>*(Anh cũng là người được ông Tanaka dìu dắt. Giống em thôi.)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さんも<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>下<rt>もと</rt></ruby>で<ruby>長<rt>なが</rt></ruby>く？<br>*(Anh Kawakami cũng làm dưới quyền ông Tanaka lâu rồi ạ?)* |
| Kawakami | <ruby>22<rt>にじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>。<ruby>新人<rt>しんじん</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>からずっとだ。だから<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎは<ruby>責任<rt>せきにん</rt></ruby><ruby>持<rt>も</rt></ruby>ってやる。<ruby>安心<rt>あんしん</rt></ruby>してくれ。<br>*(22 năm. Từ thời nhân viên mới. Nên việc bàn giao anh sẽ chịu trách nhiệm hoàn toàn. Em yên tâm.)* |
| Thái | はい。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng. Từ nay mong anh chỉ bảo ạ.)* |
| Kawakami | <ruby>来年<rt>らいねん</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>を<ruby>係長<rt>かかりちょう</rt></ruby>に<ruby>推<rt>お</rt></ruby>す<ruby>件<rt>けん</rt></ruby>も<ruby>聞<rt>き</rt></ruby>いている。<ruby>俺<rt>おれ</rt></ruby>も<ruby>賛成<rt>さんせい</rt></ruby>だ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>していこう。<br>*(Chuyện năm sau đẩy em lên 係長 anh cũng nghe rồi. Anh tán thành. Cùng chuẩn bị nhé.)* |
| Thái | ありがとうございます。<ruby>精<rt>せい</rt></ruby><ruby>一杯<rt>いっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn anh. Em sẽ cố hết sức.)* |

---

## Tình huống 7 — Quán izakaya gần xưởng · 19:00, đồng môn Sakurai bàn về biến động nhân sự

| Vai | Lời thoại |
|---|---|
| Sakurai | (rót bia) お<ruby>疲<rt>つか</rt></ruby>れ、タイ。<ruby>今日<rt>きょう</rt></ruby>は<ruby>大<rt>おお</rt></ruby>ニュースだったな。<br>*(Vất vả rồi Thái. Hôm nay tin lớn ghê.)* |
| Thái | はい、<ruby>朝<rt>あさ</rt></ruby>から<ruby>頭<rt>あたま</rt></ruby>がぐるぐるしています。<br>*(Vâng, từ sáng đầu em quay cuồng.)* |
| Sakurai | でもさ、<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>嘱託<rt>しょくたく</rt></ruby>で<ruby>残<rt>のこ</rt></ruby>ってくれるのは<ruby>嬉<rt>うれ</rt></ruby>しいよな。<br>*(Nhưng mà, việc ông Tanaka ở lại làm cộng tác cũng mừng nhỉ.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>に。<ruby>週<rt>しゅう</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>日<rt>か</rt></ruby>でも<ruby>会<rt>あ</rt></ruby>えるなら<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Thật đấy. Hai ngày một tuần được gặp là đủ rồi ạ.)* |
| Sakurai | <ruby>川上<rt>かわかみ</rt></ruby>さんが<ruby>工場長<rt>こうじょうちょう</rt></ruby>、スズキさんは<ruby>来月<rt>らいげつ</rt></ruby><ruby>転職<rt>てんしょく</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>は<ruby>主任<rt>しゅにん</rt></ruby><ruby>昇格<rt>しょうかく</rt></ruby><ruby>試験<rt>しけん</rt></ruby>。<ruby>変化<rt>へんか</rt></ruby><ruby>多<rt>おお</rt></ruby>すぎだろ。<br>*(Anh Kawakami lên 工場長, anh Suzuki tháng sau chuyển việc, anh thi thăng chức 主任. Thay đổi nhiều quá đi.)* |
| Thái | はい。でも<ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>変化<rt>へんか</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>いですけど…<br>*(Vâng. Nhưng anh Sakurai ơi, thay đổi sợ thật nhưng…)* |
| Sakurai | <ruby>変化<rt>へんか</rt></ruby>こそ<ruby>成長<rt>せいちょう</rt></ruby>の<ruby>機会<rt>きかい</rt></ruby>だ、って<ruby>田中<rt>たなか</rt></ruby>さんがよく<ruby>言<rt>い</rt></ruby>ってたな。<br>*(Có thay đổi mới có cơ hội trưởng thành — ông Tanaka hay nói thế.)* |
| Thái | はい、<ruby>私<rt>わたし</rt></ruby>もその<ruby>言葉<rt>ことば</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にします。<br>*(Vâng, em sẽ trân trọng câu nói đó.)* |
| Sakurai | <ruby>来年<rt>らいねん</rt></ruby>、<ruby>係長<rt>かかりちょう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いたぞ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>応援<rt>おうえん</rt></ruby>するから。<br>*(Chuyện ứng viên 係長 năm sau anh nghe rồi. Anh cũng ủng hộ.)* |
| Thái | ありがとうございます！<br>*(Em cảm ơn anh!)* |

---

## Tình huống 8 — Phòng 201 ký túc · 22:00, gọi video về cho Mai (scene tiếng Việt — giữ mạch nhân vật)

> Scene tiếng Việt — gọi điện về Việt Nam, ôn lại từ vựng JP qua hội thoại đồng hương.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Em ơi, hôm nay ở công ty có chuyện lớn. |
| Mai | (tiếng Việt) Chuyện gì anh? Có sao không? |
| Thái | (tiếng Việt) Ông Tanaka — trưởng nhà máy đón anh ngày đầu sang đó — vừa thông báo nghỉ hưu cuối tháng 9. Nhật gọi là 定年退職, về hưu đúng tuổi 60. |
| Mai | (tiếng Việt) Trời ơi. Anh có sốc không? |
| Thái | (tiếng Việt) Sốc chứ. Nhưng may là ổng sẽ ở lại theo dạng 嘱託 — kiểu hợp đồng cộng tác, tuần hai ngày. Vẫn gặp được. |
| Mai | (tiếng Việt) Vậy đỡ. Còn ai lên thay? |
| Thái | (tiếng Việt) Anh Kawakami — phó hồi giờ. Chiều ổng gọi anh ra dặn dò, hứa bàn giao tử tế. Mà có chuyện này hay hơn… |
| Mai | (tiếng Việt) Gì anh? |
| Thái | (tiếng Việt) Ông Tanaka nói sang xuân năm sau sẽ tiến cử anh lên 係長 — kakari-chou, trưởng nhóm. Cả Kawakami với Sakurai đều ủng hộ. |
| Mai | (tiếng Việt) Anh ơi! Mừng quá! Bốn năm trước anh còn N4 đi bộ ngơ ngác ở Centrair, giờ sắp làm sếp nhỏ rồi. |
| Thái | (tiếng Việt) Ừ. Hôm nay ổng ngồi khen anh, anh suýt khóc trong phòng. Từ 23 lên 27 tuổi, từ N4 lên N2, từ thằng học việc lên người làm lead. Ổng nói "誇っていい" — em có quyền tự hào. |
| Mai | (tiếng Việt) Em ghi câu đó vào sổ luôn. Anh giữ sức khoẻ, ngủ sớm đi. Em đợi anh lên 係長 rồi về cưới. |
| Thái | (tiếng Việt) Ừ, anh hứa. Ngủ ngon em. |

---

## Tình huống 9 — Phòng 201 · 23:00, chốt ngày bằng câu cảm ơn Tanaka qua LINE

| Vai | Lời thoại |
|---|---|
| Thái | (gõ LINE cho Tanaka) <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>なお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございました。<br>*(Thưa 工場長 Tanaka, hôm nay cảm ơn ông đã dành thời gian quý báu cho em.)* |
| Thái | <ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>ご<ruby>指導<rt>しどう</rt></ruby>いただいたこと、<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Em xin khắc ghi suốt đời sự chỉ bảo của ông trong 4 năm qua.)* |
| Thái | <ruby>嘱託<rt>しょくたく</rt></ruby>として<ruby>残<rt>のこ</rt></ruby>っていただけるとのこと、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Việc ông ở lại với tư cách cộng tác viên, em thực sự rất mừng. Từ nay mong ông tiếp tục chỉ bảo em.)* |
| Tanaka | (trả lời) こちらこそ、ありがとう。<ruby>係長<rt>かかりちょう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、しっかり<ruby>準備<rt>じゅんび</rt></ruby>しなさい。<ruby>応援<rt>おうえん</rt></ruby>しているよ。<br>*(Tôi mới phải cảm ơn em. Chuyện ứng viên 係長 — em hãy chuẩn bị chu đáo. Tôi luôn ủng hộ.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>頑張<rt>がんば</rt></ruby>ります。お<ruby>休<rt>やす</rt></ruby>みなさい。<br>*(Vâng, em nhất định sẽ cố. Chúc ông ngủ ngon.)* |

---

## Đọng lại chương 6

Tháng 3/2026, Thái nghe 工場長 Tanaka thông báo **定年退職** cuối tháng 9 ngay trong **朝礼** — học cấu trúc thông báo trang trọng "〜をもちまして〜させていただくことになりました" và lời đáp tập thể "**長い間、お疲れさまでした**". Khi đồng nghiệp Sakurai an ủi lúc sốc, Thái học mẫu hỏi thăm "**顔色が悪いよ・大丈夫か？**" và cách trả lời lịch sự "**ちょっとびっくりしました**". Trong phòng riêng, Tanaka khen 4 năm trưởng thành — Thái học cách đáp khi được sếp khen: cúi đầu, ghi công cấp trên "**〜のおかげです**", nhận lại với "**ありがとうございます**". Khi nghe đến chế độ **嘱託** (週2日 cộng tác viên hậu nghỉ hưu), Thái dùng pattern **〜というのは何でしょうか？** để hỏi lại, rồi xác nhận bằng **〜ということですね**. Tanaka còn báo tin sẽ tiến cử Thái lên **係長候補** mùa xuân năm sau — Thái học mẫu khiêm nhường "**私に務まるでしょうか**" và quyết tâm "**精一杯頑張ります**". Quan sát đàn anh **川上新工場長** trấn an "**引き継ぎは責任持ってやる・安心してくれ**", Thái thấy được cách lãnh đạo Nhật chuyển giao thế hệ. Cuối ngày, qua LINE Thái gửi lời cảm ơn 4 năm bằng "**ご指導いただいたこと、一生忘れません**" — chốt lại một ngày biến động bằng thái độ biết ơn đúng phong cách công sở Nhật.

> Từ vựng & mẫu câu chương này: 定年退職・朝礼・後任・工場長・嘱託・週2日・正社員・契約社員・技術の伝承・係長候補・推薦・引き継ぎ・転職・主任昇格試験・変化・成長の機会・動揺・顔色が悪い・〜をもちまして〜させていただくことになりました・長い間お疲れさまでした・〜というのは何でしょうか・〜ということですね・〜のおかげです・私に務まるでしょうか・精一杯頑張ります・ご指導いただいたこと一生忘れません・誇っていい

## Bí quyết chương

- **Payoff arc 5 năm**: Tanaka — người đón Thái ngày đầu (T1) — chính thức rời sân khấu, nhưng ở lại qua 嘱託 → giữ kết nối cho sách 18.
- **Setup chức 係長**: Mùa xuân 2027 Thái lên 係長 → arc sách cuối.
- **Kawakami lên 工場長**: Cấp trên mới cho 18 tháng còn lại — đã có thiện cảm với Thái từ trước.
- **Mai ở VN**: Vẫn lặp xuyên 5 sách, lần này nhắc lời hứa cưới khi Thái lên 係長.

```json
{"written": true, "n_situations": 9, "n_vocab": 27, "added_situations": ["TH4 hỏi lại 嘱託 với 〜というのは", "TH6 quan sát đàn anh Kawakami nhận chức 工場長", "TH8 scene tiếng Việt gọi video về Mai (vì ở chung với Putra nước ngoài, scene Việt-Việt chuyển sang gọi điện)", "TH9 LINE cảm ơn Tanaka chốt ngày"], "notes": "Giữ nguyên tên nhân vật (Tanaka, Thái, Sakurai, Kawakami, Suzuki, Mai), setting tháng 3/2026 Anjo, các câu JP có ruby từ bản gốc TH1/TH3/TH4. Mở rộng stage direction rỗng (注目・頷く・嬉しそう・涙) thành câu JP đủ hoặc stage direction VN có nghĩa. Thêm TH4 hỏi 嘱託 (kỹ năng hỏi lại), TH6 quan sát Kawakami (kỹ năng quan sát đàn anh), TH8 gọi Mai (scene tiếng Việt — vì Thái ở chung Putra nước ngoài). Đổi tên mọi tình huống theo format địa điểm+giờ+kỹ năng. Đọng lại chương in đậm 7+ mẫu câu chuyên. Blockquote 27 mục từ vựng. Giữ Bí quyết chương làm metadata phụ."}
```', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000007, 800000017, NULL, 'markdown_book', 'T7. Kawakami lên trưởng nhà máy, Thái nhận quyền trưởng phòng thiết kế (川上工場長)', '# Sách kỹ sư khuôn đúc · T7. Kawakami lên trưởng nhà máy, Thái nhận quyền trưởng phòng thiết kế (川上工場長)

> **Mục tiêu nhân vật:** Thái (28 tuổi, Anjo) được giao **設計課長代理** (quyền trưởng phòng thiết kế) khi Kawakami lên 工場長代理. Học các mẫu hội thoại tiếng Nhật cấp quản lý: nghe **朝礼** thông báo bổ nhiệm và đáp lễ, **辞令交付** (nhận lệnh điều động) với cấp trên, hỏi lại lễ phép khi chưa rõ phạm vi trách nhiệm (〜の範囲はどこまでですか), quan sát đàn anh Sakurai cách phân chia thời gian giữa hội nghị và bản vẽ, trình bày **判断・提案** trong cuộc họp tuyển dụng, và báo cáo tin lên chức về quê qua scene tiếng Việt.

---

## Bối cảnh

Tháng 4 năm 2026. Thái đã làm việc tại **株式会社みなみ精密金型** ở Anjo được 4 năm, vừa đỗ N2. Kawakami — đàn anh thiết kế gắn bó từ ngày đầu — được chỉ định lên 工場長代理 thay 田中工場長 sắp về hưu, và Thái được giao kế vị Kawakami ở ghế **設計課長代理**. Trình độ tiếng Nhật N2. Chương này tập trung mẫu câu giao tiếp cấp quản lý: nghe lệnh bổ nhiệm ở 朝礼, đối thoại với cấp trên về phạm vi trách nhiệm, ra quyết định tuyển dụng, và phối hợp với đồng nghiệp khi lịch họp dày đặc.

---

## Tình huống 1 — Phòng họp lớn · 8:30, nghe 朝礼 thông báo bổ nhiệm và đáp lễ

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>人事<rt>じんじ</rt></ruby>の<ruby>発表<rt>はっぴょう</rt></ruby>があります。<br>*(Chào buổi sáng mọi người. Hôm nay có thông báo nhân sự quan trọng.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>川上<rt>かわかみ</rt></ruby>さんが<ruby>工場長<rt>こうじょうちょう</rt></ruby><ruby>代理<rt>だいり</rt></ruby>に<ruby>就<rt>つ</rt></ruby>きます。<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Từ hôm nay anh Kawakami sẽ giữ chức quyền trưởng nhà máy. Tháng 9 dự kiến nhậm chức chính thức.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | （<ruby>一歩前<rt>いっぽまえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>て<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>川上<rt>かわかみ</rt></ruby>です。<ruby>身<rt>み</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>いです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tiến lên một bước cúi đầu. Tôi là Kawakami. Tôi cảm thấy thật sự nghiêm túc và căng thẳng. Mong mọi người giúp đỡ.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>続<rt>つづ</rt></ruby>いて、<ruby>設計課長<rt>せっけいかちょう</rt></ruby><ruby>代理<rt>だいり</rt></ruby>はタイ<ruby>君<rt>くん</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せます。<ruby>入社<rt>にゅうしゃ</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>での<ruby>抜擢<rt>ばってき</rt></ruby>です。<br>*(Tiếp theo, vị trí quyền trưởng phòng thiết kế giao cho Tai-kun. Đề bạt khi mới vào công ty được 4 năm.)* |
| Thái | （<ruby>驚<rt>おどろ</rt></ruby>いて<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）えっ…<br>*(Bất ngờ đứng dậy. Ơ…)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | （<ruby>小声<rt>こごえ</rt></ruby>で）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>挨拶<rt>あいさつ</rt></ruby>！<br>*(Thì thầm. Tai-kun, chào đi!)* |
| Thái | （<ruby>慌<rt>あわ</rt></ruby>てて<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>る）グエン・ヴァン・タイです。<ruby>力不足<rt>ちからぶそく</rt></ruby>ですが、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>努<rt>つと</rt></ruby>めさせていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vội ra phía trước. Em là Nguyễn Văn Thái. Năng lực còn thiếu sót, nhưng em sẽ nỗ lực hết sức. Mong các anh chị giúp đỡ.)* |
| Mọi người | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |

---

## Tình huống 2 — Phòng 工場長 · 9:00, Kawakami trao 辞令 và Thái hỏi lại phạm vi trách nhiệm

| Vai | Lời thoại |
|---|---|
| <ruby>川上<rt>かわかみ</rt></ruby> | タイ<ruby>君<rt>くん</rt></ruby>、まずはこの<ruby>辞令<rt>じれい</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。（<ruby>書類<rt>しょるい</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<br>*(Tai-kun, trước tiên em nhận quyết định bổ nhiệm này. Đưa giấy tờ.)* |
| Thái | （<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）<ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けいたします。ありがとうございます。<br>*(Nhận bằng hai tay. Em xin trân trọng tiếp nhận. Em cảm ơn anh.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>俺<rt>おれ</rt></ruby>の<ruby>後<rt>あと</rt></ruby>を<ruby>継<rt>つ</rt></ruby>いで<ruby>設計課<rt>せっけいか</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>ってほしい。<ruby>4<rt>よ</rt></ruby><ruby>年<rt>ねん</rt></ruby>でこの<ruby>役職<rt>やくしょく</rt></ruby>は<ruby>稀<rt>まれ</rt></ruby>なケースだけど、<ruby>君<rt>きみ</rt></ruby>のスキルと<ruby>努力<rt>どりょく</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>認<rt>みと</rt></ruby>めている。<br>*(Tôi muốn em kế vị tôi dẫn dắt phòng thiết kế. Bốn năm mà lên vị trí này là hiếm, nhưng kỹ năng và nỗ lực của em đã được công ty công nhận.)* |
| Thái | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>責任<rt>せきにん</rt></ruby>の<ruby>重<rt>おも</rt></ruby>さを<ruby>感<rt>かん</rt></ruby>じています。<br>*(Em không dám ạ. Em cảm nhận được sự nặng nề của trách nhiệm.)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>設計課長<rt>せっけいかちょう</rt></ruby><ruby>代理<rt>だいり</rt></ruby>の<ruby>権限<rt>けんげん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>はどこまででしょうか？<br>*(Anh Kawakami, cho em xác nhận một điều. Phạm vi quyền hạn của quyền trưởng phòng thiết kế đến đâu ạ?)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | いい<ruby>質問<rt>しつもん</rt></ruby>だ。<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>一<rt>いち</rt></ruby>、<ruby>設計課<rt>せっけいか</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>。<ruby>二<rt>に</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby>と<ruby>工数<rt>こうすう</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>。<ruby>三<rt>さん</rt></ruby>、<ruby>採用<rt>さいよう</rt></ruby>の<ruby>一次<rt>いちじ</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>。<br>*(Câu hỏi hay. Có ba việc. Một, duyệt bản vẽ toàn phòng. Hai, điều phối thời hạn giao hàng và số giờ công. Ba, phỏng vấn vòng một khi tuyển dụng.)* |
| Thái | すみません、「<ruby>工数<rt>こうすう</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどのような<ruby>業務<rt>ぎょうむ</rt></ruby>でしょうか？<br>*(Em xin lỗi, "điều phối số giờ công" cụ thể là công việc thế nào ạ?)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>各<rt>かく</rt></ruby><ruby>案件<rt>あんけん</rt></ruby>に<ruby>誰<rt>だれ</rt></ruby>が<ruby>何<rt>なん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>かかるかを<ruby>見積<rt>みつ</rt></ruby>もって、<ruby>人<rt>ひと</rt></ruby>を<ruby>割<rt>わ</rt></ruby>り<ruby>振<rt>ふ</rt></ruby>ることだ。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>に<ruby>会議<rt>かいぎ</rt></ruby>がある。<br>*(Là ước lượng từng dự án mất bao nhiêu giờ của ai, rồi phân người. Mỗi sáng thứ Hai có cuộc họp.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>分<rt>わ</rt></ruby>からないことがあったら、その<ruby>都度<rt>つど</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>させていただきます。<br>*(Em đã rõ. Có gì không hiểu em sẽ xin được hỏi anh từng lúc.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | もちろんだ。<ruby>俺<rt>おれ</rt></ruby>が<ruby>工場長<rt>こうじょうちょう</rt></ruby>としてしっかり<ruby>支援<rt>しえん</rt></ruby>する。<ruby>遠慮<rt>えんりょ</rt></ruby>するなよ。<br>*(Tất nhiên rồi. Tôi làm 工場長 sẽ hỗ trợ chu đáo. Đừng ngại.)* |

---

## Tình huống 3 — Phòng thiết kế · 10:30, Thái nhận bàn giao đầu việc từ Kawakami

| Vai | Lời thoại |
|---|---|
| <ruby>川上<rt>かわかみ</rt></ruby> | （ノートを<ruby>開<rt>ひら</rt></ruby>く）<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎの<ruby>案件<rt>あんけん</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つだ。<br>*(Mở sổ. Có ba dự án bàn giao.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はトヨタ<ruby>車体<rt>しゃたい</rt></ruby>のドアトリム、<ruby>納期<rt>のうき</rt></ruby>は<ruby>6<rt>ろく</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はインパネの<ruby>金型<rt>かながた</rt></ruby><ruby>修正<rt>しゅうせい</rt></ruby>、これは<ruby>急<rt>いそ</rt></ruby>ぎだ。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はEV<ruby>向<rt>む</rt></ruby>けの<ruby>新規<rt>しんき</rt></ruby><ruby>案件<rt>あんけん</rt></ruby>。<br>*(Một là tấm cửa của Toyota Shatai, hạn cuối tháng 6. Hai là sửa khuôn bảng đồng hồ — cái này gấp. Ba là dự án mới cho xe EV.)* |
| Thái | <ruby>急<rt>いそ</rt></ruby>ぎのインパネは<ruby>誰<rt>だれ</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>していますか？<br>*(Bảng đồng hồ gấp đang ai phụ trách ạ?)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>だ。<ruby>明日<rt>あした</rt></ruby><ruby>客先<rt>きゃくさき</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>。<ruby>君<rt>きみ</rt></ruby>が<ruby>承認<rt>しょうにん</rt></ruby>のハンコを<ruby>押<rt>お</rt></ruby>す。<br>*(Là Sakurai-kun. Mai nộp khách. Em đóng dấu duyệt.)* |
| Thái | はい。<ruby>私<rt>わたし</rt></ruby>の<ruby>判子<rt>はんこ</rt></ruby>でいいのですか？<br>*(Vâng. Đóng dấu của em được ạ?)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>君<rt>きみ</rt></ruby>はもう<ruby>設計課長代理<rt>せっけいかちょうだいり</rt></ruby>だ。<ruby>君<rt>きみ</rt></ruby>の<ruby>判子<rt>はんこ</rt></ruby>でいい。ただし、<ruby>図面<rt>ずめん</rt></ruby>はちゃんとレビューしてからだぞ。<br>*(Em đã là quyền trưởng phòng thiết kế rồi. Dấu của em là được. Nhưng phải xem bản vẽ kỹ trước đã.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ずレビューしてから<ruby>押<rt>お</rt></ruby>します。<br>*(Vâng, em chắc chắn review xong mới đóng.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | それと、<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>課内<rt>かない</rt></ruby><ruby>ミーティング<rt>みーてぃんぐ</rt></ruby>を<ruby>君<rt>きみ</rt></ruby>が<ruby>仕切<rt>しき</rt></ruby>る。<ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>と<ruby>課題<rt>かだい</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>だ。<br>*(Còn nữa, họp phòng 9 giờ mỗi sáng em chủ trì. Kiểm tra tiến độ và chia sẻ vấn đề.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。メモいたします。<br>*(Vâng em rõ. Em ghi lại ạ.)* |

---

## Tình huống 4 — Phòng thiết kế · 1 tuần sau 18:00, Sakurai bày cách cân lịch họp và bản vẽ (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| <ruby>桜井<rt>さくらい</rt></ruby> | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>最近<rt>さいきん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>ばかりだな？<br>*(Tai-kun, dạo này ngày nào cũng họp suốt nhỉ?)* |
| Thái | はい…<ruby>朝<rt>あさ</rt></ruby>と<ruby>昼<rt>ひる</rt></ruby>と<ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>もあります。<ruby>設計<rt>せっけい</rt></ruby>に<ruby>使<rt>つか</rt></ruby>える<ruby>時間<rt>じかん</rt></ruby>が<ruby>減<rt>へ</rt></ruby>って<ruby>困<rt>こま</rt></ruby>っています。<br>*(Vâng… sáng, trưa, chiều, một ngày ba lượt liền. Thời gian dành cho thiết kế bị bớt, em đang khó xử.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>俺<rt>おれ</rt></ruby>も<ruby>前任<rt>ぜんにん</rt></ruby>の<ruby>川上<rt>かわかみ</rt></ruby>さんを<ruby>見<rt>み</rt></ruby>てきたから<ruby>分<rt>わ</rt></ruby>かる。コツがあるんだ。<br>*(Tôi nhìn anh Kawakami làm trước em rồi nên hiểu. Có mẹo đấy.)* |
| Thái | ぜひ<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh dạy em với.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>一<rt>いち</rt></ruby>、<ruby>会議<rt>かいぎ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずアジェンダを<ruby>確認<rt>かくにん</rt></ruby>する。<ruby>出<rt>で</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>がない<ruby>会議<rt>かいぎ</rt></ruby>は<ruby>断<rt>ことわ</rt></ruby>る。<br>*(Một, trước khi họp phải xem agenda. Họp nào không cần dự thì từ chối.)* |
| Thái | <ruby>断<rt>ことわ</rt></ruby>っても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Từ chối có ổn không ạ?)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>理由<rt>りゆう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。「<ruby>図面<rt>ずめん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>したい」と<ruby>言<rt>い</rt></ruby>えばいい。<br>*(Giải thích lý do là ổn. Cứ nói "muốn để dành thời gian duyệt bản vẽ" là được.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>二<rt>に</rt></ruby>、<ruby>会議<rt>かいぎ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>図面<rt>ずめん</rt></ruby>をレビューしない。<ruby>集中<rt>しゅうちゅう</rt></ruby>できない。<ruby>朝<rt>あさ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>早<rt>はや</rt></ruby>く<ruby>来<rt>く</rt></ruby>る。<br>*(Hai, không review bản vẽ trong cuộc họp. Không tập trung được. Sáng đến sớm một tiếng.)* |
| Thái | なるほど、<ruby>朝<rt>あさ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですね。<br>*(Ra vậy, dùng buổi sáng ạ.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>三<rt>さん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>たち<ruby>部下<rt>ぶか</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じて<ruby>任<rt>まか</rt></ruby>せろ。<ruby>君<rt>きみ</rt></ruby>が<ruby>会議<rt>かいぎ</rt></ruby>に<ruby>出<rt>で</rt></ruby>る<ruby>間<rt>あいだ</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>図面<rt>ずめん</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めるから。<br>*(Ba, tin tưởng giao việc cho bọn tớ — cấp dưới. Em đi họp, tớ tiến bản vẽ.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがたいです。<ruby>明日<rt>あした</rt></ruby>から<ruby>三<rt>みっ</rt></ruby>つ<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>試<rt>ため</rt></ruby>します。<br>*(Anh Sakurai, em cảm ơn anh thật sự. Từ mai em thử cả ba điều đó.)* |

---

## Tình huống 5 — Phòng thiết kế · 14:00, Thái chủ trì họp tuyển dụng và trình bày 判断・提案

| Vai | Lời thoại |
|---|---|
| Thái | お<ruby>集<rt>あつ</rt></ruby>まりいただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>のテーマは<ruby>新規<rt>しんき</rt></ruby><ruby>設計者<rt>せっけいしゃ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>採用<rt>さいよう</rt></ruby>方針です。<br>*(Cảm ơn các anh chị đã tập trung. Chủ đề hôm nay là phương châm tuyển dụng 2 designer mới.)* |
| Thái | <ruby>選択肢<rt>せんたくし</rt></ruby>は<ruby>二<rt>ふた</rt></ruby>つあります。<ruby>一<rt>いち</rt></ruby>、<ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>新卒<rt>しんそつ</rt></ruby>。<ruby>二<rt>に</rt></ruby>、<ruby>経験<rt>けいけん</rt></ruby>のある<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>設計者<rt>せっけいしゃ</rt></ruby>。<br>*(Có hai phương án. Một, sinh viên Nhật mới ra trường. Hai, designer người nước ngoài có kinh nghiệm.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | タイ<ruby>君<rt>くん</rt></ruby>の<ruby>意見<rt>いけん</rt></ruby>は？<br>*(Ý kiến của Tai-kun thế nào?)* |
| Thái | <ruby>私<rt>わたし</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>は<ruby>経験者<rt>けいけんしゃ</rt></ruby>の<ruby>外国人<rt>がいこくじん</rt></ruby>です。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つあります。<br>*(Quyết định của em là người nước ngoài có kinh nghiệm. Có ba lý do.)* |
| Thái | <ruby>一<rt>いち</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby>が<ruby>逼迫<rt>ひっぱく</rt></ruby>しているので、<ruby>即<rt>そく</rt></ruby><ruby>戦力<rt>せんりょく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>二<rt>に</rt></ruby>、<ruby>当社<rt>とうしゃ</rt></ruby>はすでに<ruby>多国籍<rt>たこくせき</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>です。<ruby>三<rt>さん</rt></ruby>、<ruby>新卒<rt>しんそつ</rt></ruby>は<ruby>来年度<rt>らいねんど</rt></ruby><ruby>採用<rt>さいよう</rt></ruby>で<ruby>計画的<rt>けいかくてき</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てたいです。<br>*(Một, thời hạn đang cấp, cần lực lượng vào việc được ngay. Hai, công ty đã là môi trường đa quốc tịch. Ba, sinh viên mới ra trường để năm sau tuyển và đào tạo theo kế hoạch.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>論理的<rt>ろんりてき</rt></ruby>でいい。<br>*(Đồng ý. Logic, ổn đấy.)* |
| <ruby>北原<rt>きたはら</rt></ruby> | <ruby>私<rt>わたくし</rt></ruby>も<ruby>賛成<rt>さんせい</rt></ruby>です。ただ、<ruby>言語<rt>げんご</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>はどうしますか？<br>*(Tôi cũng đồng ý. Nhưng điều kiện về ngôn ngữ thì sao?)* |
| Thái | <ruby>最低<rt>さいてい</rt></ruby>N3<ruby>以上<rt>いじょう</rt></ruby>を<ruby>必須<rt>ひっす</rt></ruby>とし、N2 を<ruby>歓迎<rt>かんげい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>にしたいと<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Em nghĩ N3 trở lên là điều kiện bắt buộc, N2 là điều kiện ưu tiên.)* |
| <ruby>北原<rt>きたはら</rt></ruby> | <ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Em rõ rồi.)* |
| Thái | では、この<ruby>方針<rt>ほうしん</rt></ruby>で<ruby>川上<rt>かわかみ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>提案<rt>ていあん</rt></ruby>させていただきます。<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<br>*(Vậy em sẽ đề xuất với 工場長 Kawakami theo phương châm này. Cảm ơn các anh chị hôm nay.)* |

---

## Tình huống 6 — Phòng 工場長 · 16:00, Thái báo cáo kết quả họp và hỏi lại quy trình

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Anh Kawakami, bây giờ anh có rảnh không ạ?)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | どうぞ。<br>*(Mời.)* |
| Thái | <ruby>採用<rt>さいよう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>と<ruby>提案<rt>ていあん</rt></ruby>がございます。<br>*(Em xin báo cáo và đề xuất về vụ tuyển dụng.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>聞<rt>き</rt></ruby>こう。<br>*(Tớ nghe đây.)* |
| Thái | <ruby>設計課<rt>せっけいか</rt></ruby><ruby>内<rt>ない</rt></ruby>で<ruby>議論<rt>ぎろん</rt></ruby>した<ruby>結果<rt>けっか</rt></ruby>、<ruby>経験者<rt>けいけんしゃ</rt></ruby>の<ruby>外国人<rt>がいこくじん</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>採用<rt>さいよう</rt></ruby>する<ruby>方針<rt>ほうしん</rt></ruby>で<ruby>意見<rt>いけん</rt></ruby>が<ruby>一致<rt>いっち</rt></ruby>しました。<ruby>日本語<rt>にほんご</rt></ruby>はN3<ruby>必須<rt>ひっす</rt></ruby>、N2<ruby>歓迎<rt>かんげい</rt></ruby>です。<br>*(Sau khi trao đổi trong phòng thiết kế, mọi người thống nhất phương châm tuyển 2 người nước ngoài có kinh nghiệm. Tiếng Nhật bắt buộc N3, ưu tiên N2.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>納得<rt>なっとく</rt></ruby>できる<ruby>提案<rt>ていあん</rt></ruby>だ。<ruby>承認<rt>しょうにん</rt></ruby>する。<br>*(Đề xuất thuyết phục. Tôi duyệt.)* |
| Thái | ありがとうございます。<ruby>次<rt>つぎ</rt></ruby>のステップを<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>人事<rt>じんじ</rt></ruby><ruby>部<rt>ぶ</rt></ruby>への<ruby>依頼<rt>いらい</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>から<ruby>直接<rt>ちょくせつ</rt></ruby>でよろしいですか？<br>*(Em cảm ơn anh. Cho em xác nhận bước tiếp. Em liên hệ trực tiếp với phòng nhân sự được không ạ?)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | <ruby>正式<rt>せいしき</rt></ruby>な<ruby>文書<rt>ぶんしょ</rt></ruby>は<ruby>工場長名<rt>こうじょうちょうめい</rt></ruby>で<ruby>出<rt>だ</rt></ruby>す。<ruby>君<rt>きみ</rt></ruby>が<ruby>下書<rt>したが</rt></ruby>きを<ruby>作<rt>つく</rt></ruby>って、<ruby>俺<rt>おれ</rt></ruby>がハンコを<ruby>押<rt>お</rt></ruby>す。それが<ruby>順番<rt>じゅんばん</rt></ruby>だ。<br>*(Văn bản chính thức dưới tên 工場長. Em soạn nháp, tớ đóng dấu. Đó là quy trình.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>明日<rt>あした</rt></ruby>の<ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>下書<rt>したが</rt></ruby>きをお<ruby>持<rt>も</rt></ruby>ちします。<br>*(Em rõ. Sáng mai em mang bản nháp lên.)* |
| <ruby>川上<rt>かわかみ</rt></ruby> | よろしく。<ruby>順調<rt>じゅんちょう</rt></ruby>だな、タイ<ruby>君<rt>くん</rt></ruby>。<br>*(Nhờ em. Suôn sẻ đấy, Tai-kun.)* |

---

## Tình huống 7 — Phòng 201 · 22:00, gọi video về Việt Nam báo tin lên chức

> Scene tiếng Việt — giữ mạch nhân vật & gia đình.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, sao mặt anh đăm chiêu thế? |
| Thái | (tiếng Việt) Anh có tin báo. Hôm nay anh được giao quyền trưởng phòng thiết kế. Tiếng Nhật gọi là 設計課長代理. |
| Mai | (tiếng Việt) Trời ơi, anh được lên chức à! Em mừng quá! |
| Thái | (tiếng Việt) Mới có bốn năm thôi mà. Anh Kawakami lên 工場長 thay ông Tanaka sắp về hưu. Anh ấy kéo anh lên. |
| Mai | (tiếng Việt) Anh xứng đáng mà. Anh học N2 đỗ, làm khuôn 4 năm rồi. |
| Thái | (tiếng Việt) Nhưng áp lực lắm em. Hôm nay anh chủ trì họp tuyển dụng, suýt lắp bắp. May có anh Sakurai bên cạnh đỡ. Anh ấy còn dạy anh ba mẹo cân lịch họp với bản vẽ. |
| Mai | (tiếng Việt) Mẹo gì hay vậy? |
| Thái | (tiếng Việt) Một là từ chối họp không cần thiết, hai là review bản vẽ vào buổi sáng sớm, ba là tin tưởng cấp dưới mà giao việc. Đúng kiểu 報連相 ngày xưa anh học, giờ ở vị trí khác lại càng thấm. |
| Mai | (tiếng Việt) Anh nhớ giữ sức khoẻ. Còn ba tuần nữa em sang Nhật rồi. |
| Thái | (tiếng Việt) Ừ. Đến lúc đó anh đã thuần vị trí này rồi, mình đỡ vất. Em đi học tiếng đi, đừng quên 工場長代理 với 設計課長代理 nhé, sang đây nhiều người gọi anh kiểu đó đấy. |
| Mai | (tiếng Việt) Em ghi vào sổ rồi. Ngủ ngon anh nhé. |
| Thái | (tiếng Việt) Ngủ ngon em. |

---

## Tình huống 8 — Phòng 201 · 23:00, Thái viết nhật ký bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Thái | （ノートに<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>書<rt>か</rt></ruby>く）<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>。<ruby>設計課長<rt>せっけいかちょう</rt></ruby><ruby>代理<rt>だいり</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>。<br>*(Ghi tiếng Nhật vào sổ. Ngày 15 tháng 4. Ngày đầu nhậm chức quyền trưởng phòng thiết kế.)* |
| Thái | <ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>：<ruby>辞令<rt>じれい</rt></ruby>、<ruby>抜擢<rt>ばってき</rt></ruby>、<ruby>権限<rt>けんげん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>、<ruby>工数<rt>こうすう</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>、<ruby>判子<rt>はんこ</rt></ruby>、<ruby>即<rt>そく</rt></ruby><ruby>戦力<rt>せんりょく</rt></ruby>、<ruby>歓迎<rt>かんげい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>。<br>*(Từ đã nhớ: giấy bổ nhiệm, đề bạt, phạm vi quyền hạn, điều phối giờ công, duyệt bản vẽ, con dấu, lực lượng vào việc ngay, điều kiện ưu tiên.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さんの<ruby>三<rt>みっ</rt></ruby>つのコツ：<ruby>一<rt>いち</rt></ruby>、<ruby>会議<rt>かいぎ</rt></ruby>のアジェンダを<ruby>確認<rt>かくにん</rt></ruby>する。<ruby>二<rt>に</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>く<ruby>図面<rt>ずめん</rt></ruby>レビューする。<ruby>三<rt>さん</rt></ruby>、<ruby>部下<rt>ぶか</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せる。<br>*(Ba mẹo của anh Sakurai: 1. xem agenda họp. 2. review bản vẽ buổi sáng sớm. 3. giao việc cho cấp dưới.)* |
| Thái | <ruby>明日<rt>あした</rt></ruby>は<ruby>採用<rt>さいよう</rt></ruby><ruby>依頼<rt>いらい</rt></ruby><ruby>書<rt>しょ</rt></ruby>の<ruby>下書<rt>したが</rt></ruby>きを<ruby>作<rt>つく</rt></ruby>る。おやすみなさい。<br>*(Mai soạn bản nháp đơn yêu cầu tuyển dụng. Chúc ngủ ngon.)* |

---

## Đọng lại chương 7

Ngày đầu Thái đứng ở vị trí quản lý, học được những mẫu câu rất khác so với hồi mới sang Nhật: nghe **朝礼 thông báo bổ nhiệm** và đáp **力不足ですが精一杯努めさせていただきます**, **nhận 辞令** bằng hai tay với câu **謹んでお受けいたします**, và quan trọng nhất — **hỏi lại lễ phép về phạm vi trách nhiệm** (権限の範囲はどこまででしょうか・〜というのは具体的にどのような業務でしょうか). Khi chủ trì họp tuyển dụng, Thái lần đầu nói cấu trúc **三つあります → 一、二、三 → 賛成いただけますか**, rồi báo cáo lên **工場長** theo trình tự **報告と提案がございます → 次のステップを確認させてください**. Đàn anh Sakurai dạy ba mẹo cân lịch họp — từ chối họp không cần, review buổi sáng sớm, tin và giao việc cho cấp dưới — đúng tinh thần **報連相** ở tầm quản lý. Cuối ngày, Thái báo tin vui về cho Mai và viết **日記** tiếng Nhật để khắc từ vựng vừa học.

> Từ vựng & mẫu câu chương này: 工場長代理・設計課長代理・就任・辞令・抜擢・権限の範囲・工数の調整・図面承認・判子・即戦力・新卒・経験者・歓迎条件・採用方針・報告と提案・謹んでお受けいたします・力不足ですが精一杯努めさせていただきます・〜の範囲はどこまでですか・〜というのは具体的にどのような業務ですか・次のステップを確認させてください・順調です

## Bí quyết chương

- **Arc 5 năm payoff**: Thái lên quyền trưởng phòng thiết kế ở năm thứ 4 — bước đệm cho mục tiêu 設計者 + N2 + 永住 ở sách 18.
- **Kawakami sempai → 工場長**: nhân vật đã đỡ đầu Thái từ những chương đầu, giờ trở thành cấp trên trực tiếp.
- **Sakurai 同僚**: vai trò ổn định nhóm khi Thái bận họp.
- **Mai sang Nhật trong 3 tuần**: setup cho chương cuối sách 17.

> *"4/2026. 設計課長代理. Bốn năm. Áp lực và cơ hội trưởng thành."*', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000008, 800000017, NULL, 'markdown_book', 'T8. Chuyến công tác đầu tiên tại Toyota City (初出張)', '# Sách kỹ sư khuôn đúc · T8. Chuyến công tác đầu tiên tại Toyota City (初出張)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) lần đầu tháp tùng cấp trên đi 出張 đến nhà máy Hamada ở Toyota City. Học các mẫu hội thoại tiếng Nhật trong chuyến công tác B2B: kiểm tra hành lý công tác (名刺・仕様書・サンプル), chào hỏi đối tác trang trọng (本日はお世話になります), nghe quan sát đàn anh chốt số lượng - giá - 納期 trong phòng họp, hỏi lại lễ phép khi chưa hiểu thuật ngữ (〜と申しますのは?), phản hồi khi tour 工場 (射出機・稼働), và báo cáo cảm tưởng cuối ngày với 先輩.

---

## Bối cảnh

Cuối tháng 4 năm 2026. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo được 4 năm, vừa được giao thiết kế khuôn độc lập. Hôm nay lần đầu đi 出張 cùng 川上 (Kawakami) 設計課長 đến nhà máy của **浜田工業** ở Toyota City — một Tier-1 Toyota. Trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu kỹ sư trẻ phải dùng khi ra ngoài gặp khách hàng: xác nhận chuẩn bị công tác, kính ngữ chào đối tác, theo dõi đàm phán 発注・納期・金額, và tổng kết với cấp trên trên đường về.

---

## Tình huống 1 — Trước cổng công ty Minami · 7:00, kiểm tra chuẩn bị công tác với cấp trên

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>準備<rt>じゅんび</rt></ruby>はできた?<br>*(Tai-kun, chào buổi sáng. Chuẩn bị xong chưa?)* |
| Thái | おはようございます。はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Em chào anh ạ. Vâng, em ổn rồi ạ.)* |
| Kawakami | <ruby>名刺<rt>めいし</rt></ruby>と<ruby>仕様書<rt>しようしょ</rt></ruby>とサンプル、<ruby>持<rt>も</rt></ruby>ったか?<br>*(Card, bản spec và mẫu, có đủ chưa?)* |
| Thái | はい、<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>名刺<rt>めいし</rt></ruby>は<ruby>50<rt>ごじゅう</rt></ruby><ruby>枚<rt>まい</rt></ruby>、<ruby>仕様書<rt>しようしょ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>部<rt>ぶ</rt></ruby>、サンプルは<ruby>2<rt>に</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby><ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Vâng, em đã kiểm tra hết rồi ạ. Card 50 tấm, bản spec 3 bộ, mẫu chuẩn bị 2 loại ạ.)* |
| Kawakami | よし。<ruby>名刺<rt>めいし</rt></ruby>は<ruby>上着<rt>うわぎ</rt></ruby>の<ruby>内<rt>うち</rt></ruby>ポケットに<ruby>入<rt>い</rt></ruby>れておけ。すぐ<ruby>出<rt>だ</rt></ruby>せるように。<br>*(Tốt. Card cứ để túi trong áo khoác. Để lấy ra cho nhanh.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Kawakami | <ruby>俺<rt>おれ</rt></ruby>が<ruby>運転<rt>うんてん</rt></ruby>するから。<ruby>君<rt>きみ</rt></ruby>は<ruby>助手席<rt>じょしゅせき</rt></ruby>で<ruby>資料<rt>しりょう</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby><ruby>読<rt>よ</rt></ruby>んでおいて。<br>*(Tớ lái xe. Em ngồi ghế phụ đọc lại tài liệu một lần nữa.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |

---

## Tình huống 2 — Trên xe ra Toyota City · 8:00, nghe đàn anh briefing mục đích chuyến đi

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>豊田市<rt>とよたし</rt></ruby>まで<ruby>1<rt>いっ</rt></ruby><ruby>時間半<rt>じかんはん</rt></ruby>くらいだ。<ruby>道<rt>みち</rt></ruby>はそんなに<ruby>混<rt>こ</rt></ruby>まないと<ruby>思<rt>おも</rt></ruby>うよ。<br>*(Đến Toyota City mất khoảng một tiếng rưỡi. Đường chắc không tắc lắm đâu.)* |
| Thái | <ruby>初<rt>はつ</rt></ruby><ruby>出張<rt>しゅっちょう</rt></ruby>なので<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Lần đầu công tác nên em hơi hồi hộp ạ.)* |
| Kawakami | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<ruby>浜田工業<rt>はまだこうぎょう</rt></ruby>さんとは<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いが<ruby>長<rt>なが</rt></ruby>いから、<ruby>雰囲気<rt>ふんいき</rt></ruby>は<ruby>柔<rt>やわ</rt></ruby>らかいよ。<br>*(Yên tâm. Bên Hamada quen tớ lâu rồi, không khí dễ chịu lắm.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマを<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Cho em xác nhận lại chủ đề hôm nay ạ.)* |
| Kawakami | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマは、<ruby>来年度<rt>らいねんど</rt></ruby><ruby>新車<rt>しんしゃ</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>新規<rt>しんき</rt></ruby><ruby>金型<rt>かながた</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby>の<ruby>発注<rt>はっちゅう</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>だ。<ruby>納期<rt>のうき</rt></ruby>と<ruby>金額<rt>きんがく</rt></ruby>の<ruby>合意<rt>ごうい</rt></ruby>がゴール。<br>*(Chủ đề hôm nay là trao đổi đặt 3 khuôn mới cho mẫu xe sang năm. Mục tiêu là chốt được 納期 và 金額.)* |
| Thái | すみません、「<ruby>合意<rt>ごうい</rt></ruby>」というのは<ruby>正式<rt>せいしき</rt></ruby>な<ruby>契約<rt>けいやく</rt></ruby>のことですか?<br>*(Xin lỗi, "gôui" có phải hợp đồng chính thức không ạ?)* |
| Kawakami | いや、<ruby>合意<rt>ごうい</rt></ruby>はお<ruby>互<rt>たが</rt></ruby>いに「この<ruby>条件<rt>じょうけん</rt></ruby>でいきましょう」と<ruby>口頭<rt>こうとう</rt></ruby>で<ruby>決<rt>き</rt></ruby>めることだ。<ruby>契約書<rt>けいやくしょ</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby>。<br>*(Không, 合意 là hai bên miệng đồng ý "chốt theo điều kiện này". Hợp đồng giấy thì để sau.)* |
| Thái | なるほど、<ruby>口頭<rt>こうとう</rt></ruby>の<ruby>合意<rt>ごうい</rt></ruby>を<ruby>取<rt>と</rt></ruby>るということですね。メモします。<br>*(Em hiểu rồi, là chốt 合意 bằng miệng ạ. Em ghi lại.)* |
| Kawakami | それから、<ruby>俺<rt>おれ</rt></ruby>が<ruby>話<rt>はな</rt></ruby>しているときは、<ruby>君<rt>きみ</rt></ruby>はメモに<ruby>集中<rt>しゅうちゅう</rt></ruby>してくれ。<ruby>聞<rt>き</rt></ruby>かれたら<ruby>答<rt>こた</rt></ruby>えればいい。<br>*(Thêm nữa, lúc tớ đang nói thì em tập trung ghi chép. Khi nào được hỏi thì hãy trả lời.)* |
| Thái | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em rõ rồi ạ.)* |

---

## Tình huống 3 — Sảnh lễ tân nhà máy Hamada · 9:30, chào hỏi đối tác lần đầu (kính ngữ)

| Vai | Lời thoại |
|---|---|
| Receptionist | カワカミ<ruby>様<rt>さま</rt></ruby>、グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。ただいま<ruby>浜田<rt>はまだ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んでまいります。<br>*(Anh Kawakami, anh Nguyễn, chúng tôi đã chờ ạ. Tôi gọi anh Hamada xuống ngay.)* |
| Kawakami | お<ruby>世話<rt>せわ</rt></ruby>になっております。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn chị đã giúp đỡ. Mong chị giúp ạ.)* |
| Hamada | (bước nhanh đến, cúi đầu) カワカミさん、グエンさん、ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<br>*(Anh Kawakami, anh Nguyễn, hoan nghênh hai anh đã ghé thăm.)* |
| Kawakami | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>世話<rt>せわ</rt></ruby>になります。こちら、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>設計担当<rt>せっけいたんとう</rt></ruby>のグエンです。<br>*(Hôm nay xin được làm phiền ạ. Đây là anh Nguyễn, phụ trách thiết kế bên em.)* |
| Thái | (cúi sâu, hai tay đưa card) <ruby>初<rt>はじ</rt></ruby>めまして。<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>みなみ<ruby>精密<rt>せいみつ</rt></ruby><ruby>金型<rt>かながた</rt></ruby><ruby>設計課<rt>せっけいか</rt></ruby>のグエン・ヴァン・タイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Rất hân hạnh. Em là Nguyễn Văn Thái, phòng thiết kế công ty Minami Seimitsu Kanagata. Hôm nay rất mong được giúp đỡ ạ.)* |
| Hamada | (nhận card, đưa lại card mình) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>浜田工業<rt>はまだこうぎょう</rt></ruby><ruby>調達部<rt>ちょうたつぶ</rt></ruby>の<ruby>浜田<rt>はまだ</rt></ruby>です。グエンさんのお<ruby>名前<rt>なまえ</rt></ruby>はカワカミさんからよく<ruby>伺<rt>うかが</rt></ruby>っております。<br>*(Em xin nhận ạ. Tôi là Hamada, phòng mua hàng Hamada Kougyou. Tên anh Nguyễn tôi nghe anh Kawakami nhắc nhiều rồi.)* |
| Thái | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Em không dám ạ.)* |
| Hamada | では、<ruby>会議室<rt>かいぎしつ</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします。どうぞこちらへ。<br>*(Vậy, mời hai anh sang phòng họp. Mời đi lối này.)* |

---

## Tình huống 4 — Phòng họp tầng 3 · 10:00, mở đầu họp + nghe yêu cầu phía khách

| Vai | Lời thoại |
|---|---|
| Hamada | <ruby>改<rt>あらた</rt></ruby>めまして、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>お<ruby>越<rt>こ</rt></ruby>しいただき、ありがとうございます。<br>*(Xin được nhắc lại, hôm nay rất cảm ơn hai anh đã bớt chút thời gian sang đây ạ.)* |
| Kawakami | こちらこそ、お<ruby>声<rt>こえ</rt></ruby>がけいただきありがとうございます。<br>*(Bên em mới phải cảm ơn anh đã liên hệ ạ.)* |
| Hamada | <ruby>早速<rt>さっそく</rt></ruby>ですが、<ruby>来年度<rt>らいねんど</rt></ruby>の<ruby>新車<rt>しんしゃ</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>車種<rt>しゃしゅ</rt></ruby>ございまして、<ruby>内装部品<rt>ないそうぶひん</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>発注<rt>はっちゅう</rt></ruby>させていただきたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Em xin vào việc luôn, năm tới bên em có 3 mẫu xe mới, muốn đặt 3 khuôn cho linh kiện nội thất ạ.)* |
| Kawakami | ありがとうございます。<ruby>仕様書<rt>しようしょ</rt></ruby>は<ruby>事前<rt>じぜん</rt></ruby>に<ruby>頂戴<rt>ちょうだい</rt></ruby>しております。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>した?<br>*(Cảm ơn anh. Bản spec bên em đã nhận trước rồi. Tai-kun, xem chưa?)* |
| Thái | はい、<ruby>3<rt>さん</rt></ruby><ruby>点<rt>てん</rt></ruby>とも<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>形状<rt>けいじょう</rt></ruby>と<ruby>寸法<rt>すんぽう</rt></ruby>については、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>仕様<rt>しよう</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でございます。<br>*(Vâng, em đã kiểm tra cả 3 bản. Về hình dạng và kích thước, bên em xử lý được theo spec chuẩn ạ.)* |
| Hamada | それは<ruby>心強<rt>こころづよ</rt></ruby>いですね。<ruby>納期<rt>のうき</rt></ruby>はいかがでしょうか?<br>*(Vậy thì yên tâm rồi. 納期 thì thế nào ạ?)* |
| Thái | <ruby>納期<rt>のうき</rt></ruby>は<ruby>各<rt>かく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<ruby>仮<rt>かり</rt></ruby>に<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby><ruby>発注<rt>はっちゅう</rt></ruby>をいただければ、<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby>には<ruby>納品<rt>のうひん</rt></ruby>できます。<br>*(納期 mỗi khuôn 3 tháng bên em xử lý được. Giả sử đầu tháng 5 anh đặt chính thức thì đầu tháng 8 bên em giao được ạ.)* |
| Hamada | ありがとうございます。<ruby>金額<rt>きんがく</rt></ruby>は<ruby>各<rt>かく</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>でいかがでしょうか。<br>*(Cảm ơn anh. 金額 mỗi khuôn khoảng 5 triệu yên, được không ạ?)* |
| Kawakami | はい、<ruby>標準<rt>ひょうじゅん</rt></ruby>の<ruby>範囲内<rt>はんいない</rt></ruby>でございます。<ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby>まとめてのご<ruby>発注<rt>はっちゅう</rt></ruby>ですので、<ruby>合計<rt>ごうけい</rt></ruby><ruby>1,500<rt>せんごひゃく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>で<ruby>承<rt>うけたまわ</rt></ruby>ります。<br>*(Vâng, nằm trong khung chuẩn của bên em ạ. Đặt gộp 3 cái, tổng 15 triệu yên bên em xin nhận ạ.)* |

---

## Tình huống 5 — Phòng họp · 11:30, Thái hỏi lại lễ phép khi chưa hiểu thuật ngữ

| Vai | Lời thoại |
|---|---|
| Hamada | <ruby>追加<rt>ついか</rt></ruby>で<ruby>一点<rt>いってん</rt></ruby>、<ruby>今回<rt>こんかい</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>は<ruby>量産<rt>りょうさん</rt></ruby>テストの<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いをお<ruby>願<rt>ねが</rt></ruby>いしたいんですが。<br>*(Thêm một điểm nữa, đợt khuôn này em muốn nhờ anh trực tiếp dự buổi 量産 thử ạ.)* |
| Thái | すみません、「<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い」と<ruby>申<rt>もう</rt></ruby>しますのは、どのような<ruby>意味<rt>いみ</rt></ruby>でしょうか?<br>*(Em xin lỗi, "tachiai" có nghĩa cụ thể là gì ạ?)* |
| Hamada | あ、すみません。<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>用語<rt>ようご</rt></ruby>でしたね。<ruby>金型<rt>かながた</rt></ruby>を<ruby>納<rt>おさ</rt></ruby>めた<ruby>後<rt>あと</rt></ruby>、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>射出機<rt>しゃしゅつき</rt></ruby>で<ruby>最初<rt>さいしょ</rt></ruby>のテストショットを<ruby>打<rt>う</rt></ruby>つときに、<ruby>設計者<rt>せっけいしゃ</rt></ruby>に<ruby>同席<rt>どうせき</rt></ruby>していただくことです。<br>*(À xin lỗi, từ ngành nghề rồi. Là khi đã giao khuôn, lúc bắn thử mẻ đầu trên máy ép phun của bên em, mời người thiết kế đến cùng dự ạ.)* |
| Thái | なるほど、<ruby>設計者<rt>せっけいしゃ</rt></ruby>が<ruby>現場<rt>げんば</rt></ruby>で<ruby>初回<rt>しょかい</rt></ruby><ruby>成形<rt>せいけい</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>する、ということですね。<br>*(Ra vậy ạ, tức là người thiết kế đến hiện trường cùng kiểm tra mẻ ép đầu tiên đúng không ạ.)* |
| Hamada | そのとおりです。<ruby>不具合<rt>ふぐあい</rt></ruby>が<ruby>出<rt>で</rt></ruby>たとき、その<ruby>場<rt>ば</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>していただけると<ruby>助<rt>たす</rt></ruby>かるんです。<br>*(Đúng như vậy ạ. Khi có lỗi, anh ngay tại chỗ phán đoán được thì bên em đỡ lắm.)* |
| Kawakami | <ruby>承知<rt>しょうち</rt></ruby>しました。タイ<ruby>君<rt>くん</rt></ruby>に<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>わせます。<ruby>日程<rt>にってい</rt></ruby>が<ruby>決<rt>き</rt></ruby>まりましたらご<ruby>連絡<rt>れんらく</rt></ruby>ください。<br>*(Em rõ ạ. Em sẽ cử Tai-kun dự. Khi có lịch anh báo cho bên em.)* |
| Thái | <ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いの<ruby>件<rt>けん</rt></ruby>、<ruby>承<rt>うけたまわ</rt></ruby>りました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Việc 立ち会い em xin nhận ạ. Rất mong được giúp đỡ.)* |

---

## Tình huống 6 — Quán cơm gần nhà máy · 12:30, ăn trưa với khách (quan sát đàn anh xã giao)

| Vai | Lời thoại |
|---|---|
| Hamada | <ruby>近<rt>ちか</rt></ruby>くに<ruby>美味<rt>おい</rt></ruby>しい<ruby>定食屋<rt>ていしょくや</rt></ruby>がございまして、ご<ruby>案内<rt>あんない</rt></ruby>します。<br>*(Gần đây có quán cơm phần ngon, em mời hai anh.)* |
| Kawakami | ありがとうございます。<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<br>*(Cảm ơn anh ạ. Em ngại quá.)* |
| Hamada | (sau khi gọi món) カワカミさん、お<ruby>子<rt>こ</rt></ruby>さんはお<ruby>元気<rt>げんき</rt></ruby>ですか?<br>*(Sau khi gọi món. Anh Kawakami, các cháu vẫn khoẻ chứ?)* |
| Kawakami | おかげさまで。<ruby>上<rt>うえ</rt></ruby>の<ruby>子<rt>こ</rt></ruby>が<ruby>今年<rt>ことし</rt></ruby><ruby>小学校<rt>しょうがっこう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りました。<br>*(Nhờ trời ổn ạ. Cháu lớn năm nay vào lớp 1 rồi.)* |
| Hamada | おめでとうございます。グエンさんはご<ruby>家族<rt>かぞく</rt></ruby>は?<br>*(Chúc mừng anh. Anh Nguyễn còn gia đình thì sao ạ?)* |
| Thái | はい、<ruby>去年<rt>きょねん</rt></ruby><ruby>結婚<rt>けっこん</rt></ruby>しまして、<ruby>妻<rt>つま</rt></ruby>と<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>で<ruby>安城<rt>あんじょう</rt></ruby>に<ruby>住<rt>す</rt></ruby>んでおります。<br>*(Vâng, năm ngoái em kết hôn, hiện đang sống ở Anjo cùng vợ ạ.)* |
| Hamada | そうですか、それはおめでとうございます。<ruby>奥<rt>おく</rt></ruby>さんもベトナムの<ruby>方<rt>かた</rt></ruby>ですか?<br>*(Vậy ạ, chúc mừng anh nhé. Vợ anh cũng người Việt ạ?)* |
| Thái | はい、ベトナム<ruby>人<rt>じん</rt></ruby>です。<ruby>名古屋<rt>なごや</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>に<ruby>留学<rt>りゅうがく</rt></ruby>していまして、そこで<ruby>知<rt>し</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いました。<br>*(Vâng, người Việt ạ. Cô ấy du học ở đại học Nagoya, hai đứa em quen nhau ở đó.)* |
| Hamada | 素敵ですね。<ruby>安城<rt>あんじょう</rt></ruby>はベトナムの<ruby>方<rt>かた</rt></ruby>も<ruby>多<rt>おお</rt></ruby>くて<ruby>住<rt>す</rt></ruby>みやすいでしょう。<br>*(Tuyệt nhỉ. Anjo có nhiều người Việt sống cũng dễ chịu nhỉ.)* |
| Thái | はい、<ruby>大変<rt>たいへん</rt></ruby><ruby>助<rt>たす</rt></ruby>かっております。<br>*(Vâng, bên em đỡ nhiều lắm ạ.)* |
| Kawakami | (sau khi Hamada đi rửa tay) タイ<ruby>君<rt>くん</rt></ruby>、<ruby>食事<rt>しょくじ</rt></ruby>のときも<ruby>商談<rt>しょうだん</rt></ruby>の<ruby>続<rt>つづ</rt></ruby>きだ。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>な<ruby>関係<rt>かんけい</rt></ruby><ruby>作<rt>づく</rt></ruby>りだぞ。<br>*(Sau khi Hamada đi rửa tay. Tai-kun, bữa ăn cũng là phần tiếp theo của thương lượng. Câu chuyện gia đình cũng là cách xây quan hệ đấy.)* |
| Thái | はい、<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Vâng, em học được nhiều điều ạ.)* |

---

## Tình huống 7 — Sảnh xưởng máy ép · 15:30, tour 工場 phản hồi khi đối tác giới thiệu

| Vai | Lời thoại |
|---|---|
| Hamada | では、<ruby>工場<rt>こうじょう</rt></ruby>をご<ruby>案内<rt>あんない</rt></ruby>いたします。<ruby>当工場<rt>とうこうじょう</rt></ruby>は<ruby>500<rt>ごひゃく</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>で<ruby>運営<rt>うんえい</rt></ruby>しております。<br>*(Vậy em mời các anh tham quan xưởng. Nhà máy bên em vận hành quy mô 500 người.)* |
| Thái | <ruby>500<rt>ごひゃく</rt></ruby><ruby>名<rt>めい</rt></ruby>ですか、<ruby>大<rt>おお</rt></ruby>きいですね。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>6<rt>ろく</rt></ruby><ruby>倍<rt>ばい</rt></ruby>ぐらいです。<br>*(500 người ạ, lớn quá. Gấp khoảng 6 lần công ty em.)* |
| Hamada | <ruby>射出機<rt>しゃしゅつき</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby><ruby>台<rt>だい</rt></ruby>ございまして、<ruby>24<rt>にじゅうよ</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>稼働<rt>かどう</rt></ruby>しております。<ruby>3<rt>さん</rt></ruby><ruby>交代制<rt>こうたいせい</rt></ruby>です。<br>*(Bên em có 30 máy ép phun, chạy 24/24. Chia 3 ca.)* |
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>交代<rt>こうたい</rt></ruby>で<ruby>24<rt>にじゅうよ</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>稼働<rt>かどう</rt></ruby>ですか。<ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>交代<rt>こうたい</rt></ruby>までですので、<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Chạy 24/24 chia 3 ca ạ. Bên em mới chỉ chia 2 ca, em học được nhiều điều.)* |
| Hamada | (dừng trước một máy lớn) こちらが<ruby>大型<rt>おおがた</rt></ruby><ruby>射出機<rt>しゃしゅつき</rt></ruby>です。<ruby>1,800<rt>せんはっぴゃく</rt></ruby>トンの<ruby>型締力<rt>かたじめりょく</rt></ruby>がございます。<br>*(Dừng trước máy lớn. Đây là máy ép phun cỡ lớn. Lực kẹp khuôn 1.800 tấn ạ.)* |
| Thái | <ruby>1,800<rt>せんはっぴゃく</rt></ruby>トンですか。<ruby>大<rt>おお</rt></ruby>きい<ruby>金型<rt>かながた</rt></ruby>でも<ruby>対応<rt>たいおう</rt></ruby>できるんですね。<br>*(1.800 tấn ạ. Khuôn lớn cỡ nào cũng xử lý được nhỉ.)* |
| Hamada | (dẫn đến một máy khác) そして、こちらが<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っている<ruby>機械<rt>きかい</rt></ruby>です。<ruby>去年<rt>きょねん</rt></ruby><ruby>納<rt>おさ</rt></ruby>めていただいたものですね。<br>*(Dẫn đến máy khác. Còn đây là máy đang dùng khuôn của công ty anh. Cái anh giao năm ngoái đấy ạ.)* |
| Thái | (đứng lại nhìn, hơi nghẹn) ...<ruby>自分<rt>じぶん</rt></ruby>が<ruby>設計<rt>せっけい</rt></ruby>した<ruby>金型<rt>かながた</rt></ruby>が<ruby>実際<rt>じっさい</rt></ruby>に<ruby>動<rt>うご</rt></ruby>いているのを<ruby>初<rt>はじ</rt></ruby>めて<ruby>見<rt>み</rt></ruby>ました。<ruby>感動<rt>かんどう</rt></ruby>しています。<br>*(... Lần đầu em tận mắt thấy khuôn mình thiết kế đang chạy thực tế. Em xúc động lắm ạ.)* |
| Hamada | (mỉm cười) <ruby>不良率<rt>ふりょうりつ</rt></ruby>は<ruby>0.3<rt>れいてんさん</rt></ruby>%です。<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>安定<rt>あんてい</rt></ruby>しております。<br>*(Cười. Tỉ lệ lỗi 0,3%. Rất ổn định ạ.)* |
| Thái | ありがとうございます。<ruby>現場<rt>げんば</rt></ruby>で<ruby>動<rt>うご</rt></ruby>いている<ruby>姿<rt>すがた</rt></ruby>を<ruby>見<rt>み</rt></ruby>ると、<ruby>設計者<rt>せっけいしゃ</rt></ruby>として<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn anh. Thấy khuôn chạy thật ngoài hiện trường, là người thiết kế em mừng vô cùng.)* |

---

## Tình huống 8 — Sảnh tiễn khách · 16:30, chốt 合意 và chào tạm biệt trang trọng

| Vai | Lời thoại |
|---|---|
| Hamada | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、<ruby>遠方<rt>えんぽう</rt></ruby>までお<ruby>越<rt>こ</rt></ruby>しいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Hôm nay rất cảm ơn hai anh đã không ngại đường xa đến với chúng em ạ.)* |
| Kawakami | こちらこそ、<ruby>大変<rt>たいへん</rt></ruby><ruby>有意義<rt>ゆういぎ</rt></ruby>な<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby>セットで<ruby>1,500<rt>せんごひゃく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby><ruby>各<rt>かく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でお<ruby>受<rt>う</rt></ruby>けします。<br>*(Bên em mới phải cảm ơn anh đã cho buổi làm việc rất có ý nghĩa ạ. Việc hôm nay: bộ 3 cái 15 triệu yên, 納期 mỗi cái 3 tháng, bên em xin nhận.)* |
| Hamada | ありがとうございます。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>発注書<rt>はっちゅうしょ</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>にお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Em cảm ơn ạ. Đơn đặt hàng chính thức em sẽ gửi trong tuần sau.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>なお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>き、ありがとうございました。<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いの<ruby>件<rt>けん</rt></ruby>、しっかり<ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Hôm nay rất cảm ơn anh đã dành thời gian quý báu ạ. Việc 立ち会い em sẽ chuẩn bị kỹ.)* |
| Hamada | グエンさん、<ruby>今後<rt>こんご</rt></ruby>ともよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Nguyễn, từ nay rất mong được hợp tác ạ.)* |
| Kawakami | では、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vậy, chúng em xin phép ạ.)* |
| Thái | (cúi đầu sâu) <ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Cúi đầu sâu. Em xin phép ạ.)* |

---

## Tình huống 9 — Trên xe về Anjo · 18:00, đàn anh feedback chuyến công tác

| Vai | Lời thoại |
|---|---|
| Kawakami | お<ruby>疲<rt>つか</rt></ruby>れさま。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>初<rt>はつ</rt></ruby><ruby>出張<rt>しゅっちょう</rt></ruby>はどうだった?<br>*(Vất vả rồi. Tai-kun, chuyến công tác đầu tiên thấy thế nào?)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感動<rt>かんどう</rt></ruby>しました。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby>した<ruby>金型<rt>かながた</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いていましたから。<br>*(Anh vất vả rồi ạ. Em xúc động thật. Vì khuôn em thiết kế đang chạy thật ngoài hiện trường.)* |
| Kawakami | その<ruby>感<rt>かん</rt></ruby>じを<ruby>持<rt>も</rt></ruby>つことが<ruby>大事<rt>だいじ</rt></ruby>なんだ。<ruby>図面<rt>ずめん</rt></ruby>だけ<ruby>見<rt>み</rt></ruby>ていると、<ruby>製品<rt>せいひん</rt></ruby>の<ruby>重<rt>おも</rt></ruby>みが<ruby>分<rt>わ</rt></ruby>からなくなる。<br>*(Có được cảm xúc đó mới là điều quan trọng. Chỉ nhìn bản vẽ thì không cảm được sức nặng của sản phẩm.)* |
| Thái | はい。<ruby>反省<rt>はんせい</rt></ruby>もあります。「<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い」を<ruby>知<rt>し</rt></ruby>らなかったのは<ruby>恥<rt>は</rt></ruby>ずかしかったです。<br>*(Vâng. Em cũng có điểm phải rút kinh nghiệm. Không biết từ "tachiai" làm em xấu hổ.)* |
| Kawakami | いや、<ruby>知<rt>し</rt></ruby>らない<ruby>言葉<rt>ことば</rt></ruby>はちゃんと<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>した。あれが<ruby>正解<rt>せいかい</rt></ruby>だ。<ruby>分<rt>わ</rt></ruby>からないまま<ruby>頷<rt>うなず</rt></ruby>くほうが<ruby>危険<rt>きけん</rt></ruby>だ。<br>*(Không, từ không biết em đã hỏi lại đàng hoàng. Đó mới là đúng. Không hiểu mà gật bừa mới nguy hiểm.)* |
| Thái | ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em cảm ơn anh. Em học được nhiều điều ạ.)* |
| Kawakami | <ruby>2<rt>に</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いは<ruby>君<rt>きみ</rt></ruby><ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby>で<ruby>行<rt>い</rt></ruby>くんだぞ。<br>*(立ち会い hai tháng nữa em đi một mình đấy.)* |
| Thái | え、<ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby>でですか。<br>*(Ơ, một mình ạ?)* |
| Kawakami | そうだ。<ruby>名刺<rt>めいし</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>も<ruby>納期<rt>のうき</rt></ruby><ruby>金額<rt>きんがく</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>も、<ruby>今日<rt>きょう</rt></ruby><ruby>君<rt>きみ</rt></ruby>はちゃんとできた。あとは<ruby>場数<rt>ばかず</rt></ruby>だけだ。<br>*(Đúng vậy. Trao card, giải thích 納期, 金額, hôm nay em đều làm tốt cả. Còn lại là chuyện kinh nghiệm.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng ạ.)* |

---

## Tình huống 10 — Căn hộ Anjo · 21:00, gọi điện về cho mẹ (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng JP đã học.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi, hôm nay con đi công tác lần đầu. |
| Mẹ Thái | (tiếng Việt) Thái! Đi đâu con? Có xa không? |
| Thái | (tiếng Việt) Toyota City mẹ ạ, cách Anjo tiếng rưỡi. Con đi cùng anh Kawakami, sếp thiết kế. Đến gặp công ty Hamada — họ là Tier-1 của Toyota. |
| Mẹ Thái | (tiếng Việt) Vào đó làm gì con? |
| Thái | (tiếng Việt) Đàm phán đặt 3 cái khuôn mới cho mẫu xe sang năm. Tổng 15 triệu yên, mỗi cái hạn 3 tháng. Anh Kawakami chốt giá, con giải thích 納期 — tức là deadline giao hàng. |
| Mẹ Thái | (tiếng Việt) Con nói được hết không? |
| Thái | (tiếng Việt) Được mẹ ạ. Có một từ con không biết — 立ち会い (tachiai), nghĩa là người thiết kế đến hiện trường dự buổi bắn thử khuôn lần đầu. Con đã hỏi lại lễ phép, anh Kawakami khen là làm đúng. |
| Mẹ Thái | (tiếng Việt) Mẹ mừng quá. Mới ngày nào con qua N4, giờ ngồi họp tiếng Nhật được rồi. |
| Vợ Thái | (tiếng Việt, ghé vào) Anh ơi, ăn cơm chưa? Em hâm rồi đấy. |
| Thái | (tiếng Việt) Rồi em. À mẹ, hai tháng nữa con phải tự đi 立ち会い một mình, không có anh Kawakami theo nữa. |
| Mẹ Thái | (tiếng Việt) Được con. Con đã làm 4 năm rồi, đủ sức rồi. Đi ngủ sớm nhé. |
| Thái | (tiếng Việt) Vâng mẹ. Con chào mẹ ạ. |

---

## Đọng lại chương 8

Chuyến 出張 đầu tiên dạy Thái một bộ mẫu câu kỹ sư trẻ phải mặc lên người khi ra ngoài gặp khách: **xác nhận chuẩn bị với sếp** (確認済みです・〜を用意しました), **chào đối tác lần đầu bằng kính ngữ** (本日はお世話になります・〜と申します・頂戴いたします), **báo cáo trong họp** (対応可能でございます・〜で承ります), **chốt 合意 miệng** (3個セットで〜万円、納期各3ヶ月でお受けします), và quan trọng nhất là **hỏi lại lễ phép khi gặp thuật ngữ chưa biết** (〜と申しますのは、どのような意味でしょうか?) — anh Kawakami nói gật bừa mới nguy hiểm, hỏi lại mới là đúng. Quan sát đàn anh trong bữa trưa, Thái còn học được rằng **食事も商談の続き** — bữa ăn cũng là phần tiếp của thương lượng, câu chuyện gia đình cũng là cách xây 関係. Và phần thưởng cảm xúc: lần đầu thấy chính cái khuôn mình thiết kế đang quay 24 giờ trong xưởng — đó là **重み** mà nghề kỹ sư khuôn đúc trao cho người làm nó.

> Từ vựng & mẫu câu chương này: 出張・初出張・名刺・仕様書・サンプル・確認済み・発注・納期・金額・合意・口頭・立ち会い・量産・射出機・型締力・24時間稼働・3交代制・不具合・設計者・調達部・本日はお世話になります・ようこそお越しくださいました・頂戴いたします・対応可能でございます・〜で承ります・〜と申しますのは・恐れ入ります・誠にありがとうございました・場数

## Bí quyết chương

- **Setup arc**: Thái lần đầu được tin tưởng cho ra ngoài gặp khách — payoff arc 5 năm "trở thành 設計者 độc lập".
- **2 tháng nữa 立ち会い một mình**: cliffhanger sang chương sau.
- **Vợ Thái**: nhắc nhẹ chuyện kết hôn năm ngoái — lặp xuyên các sách 17-18.

> *"4/2026. Lần đầu ra ngoài gặp khách. Khuôn mình đang chạy ở Toyota City."*', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000009, 800000017, NULL, 'markdown_book', 'T9. Mai sang thăm hai tuần (マイ来日)', '# Sách kỹ sư khuôn đúc · T9. Mai sang thăm hai tuần (マイ来日)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Anjo) đón hôn thê Mai sang Nhật hai tuần theo visa ngắn hạn. Học các mẫu hội thoại tiếng Nhật đời sống & nghi thức: đón người thân ở sân bay và xác nhận chuyến bay (お<ruby>迎<rt>むか</rt></ruby>え・<ruby>到着<rt>とうちゃく</rt></ruby><ruby>便<rt>びん</rt></ruby>), giới thiệu hôn thê với <ruby>工場長<rt>こうじょうちょう</rt></ruby> và đồng nghiệp theo nghi thức trang trọng (<ruby>婚約者<rt>こんやくしゃ</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>する), hỏi đường + mua vé tàu Shinkansen tại nhà ga (<ruby>新幹線<rt>しんかんせん</rt></ruby>の<ruby>切符<rt>きっぷ</rt></ruby>), hỏi lại lễ phép khi chưa hiểu hướng dẫn ở chùa Kinkaku-ji (<ruby>拝観<rt>はいかん</rt></ruby>), quan sát đàn anh Sakurai mời cơm và chúc mừng đính hôn (<ruby>婚約<rt>こんやく</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>い), thông báo lịch cưới và xin tư vấn về visa <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>.

---

## Bối cảnh

Tháng 5 năm 2026. Thái đã làm việc tại **株式会社みなみ精密金型** ở Anjo, Aichi sang năm thứ năm, trình độ tiếng Nhật N2. Hôn thê Mai từ Hà Nội sang Nhật hai tuần theo visa <ruby>短期滞在<rt>たんきたいざい</rt></ruby>. Đám cưới dự kiến Tết 2027, sau đó Mai sẽ sang Nhật theo visa <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>. Chương này tập trung các mẫu câu Thái dùng để dẫn người thân lần đầu đến Nhật: đón ở sân bay, giới thiệu hôn thê với cấp trên & đồng nghiệp, hỏi đường + mua vé Shinkansen đi Kyoto, hỏi lễ tân ở chùa, và xin tư vấn visa gia đình.

---

## Tình huống 1 — Quầy <ruby>到着<rt>とうちゃく</rt></ruby>ロビー Centrair · 10:00, xác nhận chuyến bay với nhân viên sân bay

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>案内<rt>あんない</rt></ruby>カウンターへ）すみません、ベトナム<ruby>航空<rt>こうくう</rt></ruby>VN340<ruby>便<rt>びん</rt></ruby>の<ruby>到着<rt>とうちゃく</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Đến quầy thông tin. Xin lỗi, anh/chị cho em hỏi giờ đến của chuyến VN340 Vietnam Airlines ạ?)* |
| Nhân viên | はい。VN340<ruby>便<rt>びん</rt></ruby>はもうすぐ<ruby>到着<rt>とうちゃく</rt></ruby>です。10<ruby>時<rt>じ</rt></ruby>15<ruby>分<rt>ふん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>でしたが、5<ruby>分<rt>ふん</rt></ruby><ruby>遅<rt>おく</rt></ruby>れの10<ruby>時<rt>じ</rt></ruby>20<ruby>分<rt>ふん</rt></ruby>になります。<br>*(Vâng. Chuyến VN340 sắp đến rồi. Dự kiến 10h15 nhưng muộn 5 phút, sẽ là 10h20.)* |
| Thái | ありがとうございます。<ruby>出口<rt>でぐち</rt></ruby>はどちらでしょうか？<br>*(Em cảm ơn. Lối ra ở phía nào ạ?)* |
| Nhân viên | <ruby>国際線<rt>こくさいせん</rt></ruby>の<ruby>到着<rt>とうちゃく</rt></ruby><ruby>口<rt>ぐち</rt></ruby>は2<ruby>階<rt>かい</rt></ruby>の<ruby>北<rt>きた</rt></ruby>ゲートです。エスカレーターで<ruby>上<rt>あ</rt></ruby>がってください。<br>*(Cửa đến quốc tế ở tầng 2 cổng Bắc. Anh đi thang cuốn lên ạ.)* |
| Thái | すみません、「<ruby>北<rt>きた</rt></ruby>ゲート」というのは<ruby>建物<rt>たてもの</rt></ruby>のどちら<ruby>側<rt>がわ</rt></ruby>ですか？<br>*(Xin lỗi, "cổng Bắc" là phía nào của toà nhà ạ?)* |
| Nhân viên | <ruby>今<rt>いま</rt></ruby>いる<ruby>場所<rt>ばしょ</rt></ruby>から<ruby>右側<rt>みぎがわ</rt></ruby>のエスカレーターです。<ruby>看板<rt>かんばん</rt></ruby>に「<ruby>到着<rt>とうちゃく</rt></ruby> Arrivals」と<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Là thang cuốn bên phải từ chỗ anh đang đứng. Trên bảng có ghi "到着 Arrivals".)* |
| Thái | <ruby>右側<rt>みぎがわ</rt></ruby>のエスカレーターで2<ruby>階<rt>かい</rt></ruby><ruby>北<rt>きた</rt></ruby>ゲートですね。ありがとうございました。<br>*(Thang cuốn bên phải lên tầng 2 cổng Bắc, đúng không ạ. Em cảm ơn ạ.)* |

---

## Tình huống 2 — Cửa <ruby>到着<rt>とうちゃく</rt></ruby><ruby>口<rt>ぐち</rt></ruby> Centrair · 10:30, đón hôn thê (scene tiếng Việt xen Nhật)

| Vai | Lời thoại |
|---|---|
| Mai | (VN, vẫy tay) Anh ơi! Em đây này! |
| Thái | (VN) Mai! Bốn năm rồi em ơi. (ôm) |
| Mai | (VN) Em mệt nhưng vui lắm. Đi máy bay sáu tiếng mà cứ ngỡ chỉ vài phút. |
| Thái | (VN) Hành lý nặng không, để anh xách. Mình ra xe buýt đi Anjo nhé. |
| Mai | (VN) Anh, sân bay đẹp ghê. Sạch quá. |
| Nhân viên | （<ruby>声<rt>こえ</rt></ruby>をかける）すみません、ここは<ruby>通路<rt>つうろ</rt></ruby>ですので、<ruby>少<rt>すこ</rt></ruby>し<ruby>横<rt>よこ</rt></ruby>へ<ruby>移動<rt>いどう</rt></ruby>していただけますか？<br>*(Bắt chuyện. Xin lỗi, đây là lối đi, anh chị di chuyển sang một bên giúp tôi được không?)* |
| Thái | あ、<ruby>失礼<rt>しつれい</rt></ruby>しました。すぐに<ruby>移<rt>うつ</rt></ruby>ります。<br>*(À, xin lỗi anh. Em chuyển ngay đây.)* |
| Thái | (VN, kéo Mai sang bên) Em sang đây với anh. Người ta nhắc mình đứng giữa lối đi. |

---

## Tình huống 3 — Trên xe buýt <ruby>名鉄<rt>めいてつ</rt></ruby>バス · 11:30, Mai hỏi Thái về cuộc sống ở Anjo (scene tiếng Việt giữ mạch)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi, **二次サプライヤー** vẫn là từ anh nói hồi mới sang à? |
| Thái | (VN) Ừ, công ty mình vẫn là cấp hai. Bốn năm rồi vẫn vậy. Nhưng giờ anh làm **設計** (sekkei) — thiết kế khuôn, không chỉ phụ nữa. |
| Mai | (VN) Hôm trước anh có nói **報連相**. Em thuộc rồi đấy: báo cáo - liên lạc - bàn bạc. |
| Thái | (VN) Em giỏi. Ở công ty Nhật mỗi ngày đều phải 報連相. Mai mình lên công ty, ông Tanaka muốn gặp em đó. |
| Mai | (VN) Em hồi hộp ghê. Em phải nói gì? |
| Thái | (VN) Đơn giản thôi. **はじめまして・マイと申します・よろしくお願いします**. Anh dịch lại phần dài hộ em. |
| Mai | (VN) Ừ. Em tập đi đường. |

---

## Tình huống 4 — Văn phòng <ruby>工場長<rt>こうじょうちょう</rt></ruby> · ngày 3, 10:00, giới thiệu hôn thê với cấp trên

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。こちらが<ruby>私<rt>わたし</rt></ruby>の<ruby>婚約者<rt>こんやくしゃ</rt></ruby>のマイです。<br>*(Anh Tanaka, hôm nay cảm ơn ông đã dành thời gian. Đây là hôn thê của em, Mai.)* |
| Mai | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして。マイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Rất hân hạnh. Em tên là Mai. Mong ông giúp đỡ.)* |
| Tanaka | マイさん、ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Em Mai, hoan nghênh em đã đến. Đường dài vất vả rồi.)* |
| Mai | (VN, Thái dịch) Cảm ơn ông đã chăm sóc anh Thái suốt bốn năm qua. |
| Thái | マイは、<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>私<rt>わたし</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えてくださり、ありがとうございましたと<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mai nói cảm ơn ông đã giúp đỡ em suốt bốn năm qua ạ.)* |
| Tanaka | こちらこそ。タイさんは<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>宝<rt>たから</rt></ruby>ですよ。マイさん、<ruby>来年<rt>らいねん</rt></ruby>のご<ruby>結婚<rt>けっこん</rt></ruby>、<ruby>心<rt>こころ</rt></ruby>からお<ruby>祝<rt>いわ</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Tôi mới phải cảm ơn. Thái là báu vật của công ty. Em Mai, xin chúc mừng đám cưới năm sau từ tận đáy lòng.)* |
| Thái | ありがとうございます。<ruby>結婚<rt>けっこん</rt></ruby><ruby>後<rt>ご</rt></ruby>、マイは<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザで<ruby>日本<rt>にほん</rt></ruby>に<ruby>参<rt>まい</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>がございましたら、<ruby>教<rt>おし</rt></ruby>えていただけますでしょうか？<br>*(Em cảm ơn ông. Sau khi cưới, Mai dự định sang Nhật bằng visa diện gia đình. Nếu công ty cần giấy tờ gì thì xin ông chỉ giúp ạ.)* |
| Tanaka | はい、<ruby>総務<rt>そうむ</rt></ruby>の<ruby>川上<rt>かわかみ</rt></ruby>さんに<ruby>指示<rt>しじ</rt></ruby>しておきます。<ruby>在職<rt>ざいしょく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>と<ruby>給与<rt>きゅうよ</rt></ruby><ruby>明細<rt>めいさい</rt></ruby>などが<ruby>必要<rt>ひつよう</rt></ruby>になります。<br>*(Vâng, tôi sẽ chỉ thị cho cô Kawakami bộ phận hành chính. Sẽ cần giấy chứng nhận đang làm việc và bảng lương các thứ.)* |
| Thái | すみません、「<ruby>在職<rt>ざいしょく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>」というのは、<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>勤<rt>つと</rt></ruby>めていることを<ruby>証明<rt>しょうめい</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>のことでしょうか？<br>*(Xin lỗi ông, "giấy chứng nhận đang làm việc" là giấy chứng nhận em đang làm tại công ty, đúng không ạ?)* |
| Tanaka | そうです。<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>する<ruby>大事<rt>だいじ</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>川上<rt>かわかみ</rt></ruby>さんに<ruby>頼<rt>たの</rt></ruby>んでください。<br>*(Đúng vậy. Là giấy tờ quan trọng nộp cho cục xuất nhập cảnh. Tuần sau em nhờ cô Kawakami.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Vâng, em rõ ạ. Em cảm ơn ông.)* |

---

## Tình huống 5 — Hành lang công ty · ngày 3, 10:30, quan sát đàn anh Sakurai chúc mừng đính hôn

| Vai | Lời thoại |
|---|---|
| Sakurai | （<ruby>走<rt>はし</rt></ruby>って<ruby>来<rt>く</rt></ruby>る）タイさん、マイさん！はじめまして、<ruby>桜井<rt>さくらい</rt></ruby>です。<ruby>同<rt>おな</rt></ruby>じ<ruby>設計<rt>せっけい</rt></ruby><ruby>部<rt>ぶ</rt></ruby>でタイさんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>いております。<br>*(Chạy đến. Anh Thái, em Mai! Rất hân hạnh, tôi là Sakurai. Tôi làm cùng phòng thiết kế với anh Thái.)* |
| Mai | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして、マイです。タイがいつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Cúi đầu. Rất hân hạnh, em là Mai. Cảm ơn anh đã luôn quan tâm đến Thái.)* |
| Sakurai | こちらこそ。タイさんから、ご<ruby>婚約<rt>こんやく</rt></ruby>のことを<ruby>聞<rt>き</rt></ruby>きました。<ruby>本当<rt>ほんとう</rt></ruby>におめでとうございます！<br>*(Tôi mới phải cảm ơn. Tôi đã nghe Thái kể về việc đính hôn. Thật sự chúc mừng hai bạn!)* |
| Thái | ありがとうございます、<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Em cảm ơn anh Sakurai.)* |
| Sakurai | <ruby>今夜<rt>こんや</rt></ruby>、<ruby>設計<rt>せっけい</rt></ruby><ruby>部<rt>ぶ</rt></ruby>のみんなで<ruby>歓迎会<rt>かんげいかい</rt></ruby>をしましょう。<ruby>居酒屋<rt>いざかや</rt></ruby>の「<ruby>桜<rt>さくら</rt></ruby>」を<ruby>予約<rt>よやく</rt></ruby>しておきました。マイさんは<ruby>日本<rt>にほん</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Tối nay cả phòng thiết kế tổ chức tiệc chào mừng nhé. Tôi đã đặt quán izakaya "Sakura" rồi. Em Mai có ăn được món Nhật không?)* |
| Mai | (VN, Thái dịch) Em ăn được hết, em không kiêng gì cả. |
| Thái | マイは<ruby>何<rt>なん</rt></ruby>でも<ruby>食<rt>た</rt></ruby>べられます。アレルギーもございませんとのことです。<br>*(Mai nói em ăn được hết, không có dị ứng gì cả ạ.)* |
| Sakurai | よかった！では、<ruby>今夜<rt>こんや</rt></ruby>7<ruby>時<rt>じ</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>玄関<rt>げんかん</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちしております。<br>*(Tốt quá! Vậy tối nay 7 giờ em đợi hai bạn ở sảnh công ty nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong anh giúp đỡ ạ.)* |

---

## Tình huống 6 — Quầy vé <ruby>名古屋駅<rt>なごやえき</rt></ruby> · ngày 7, 7:30, mua vé Shinkansen đi Kyoto

| Vai | Lời thoại |
|---|---|
| Thái | おはようございます。<ruby>京都<rt>きょうと</rt></ruby><ruby>行<rt>ゆ</rt></ruby>きの<ruby>新幹線<rt>しんかんせん</rt></ruby>の<ruby>切符<rt>きっぷ</rt></ruby>を2<ruby>枚<rt>まい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Cho em 2 vé Shinkansen đi Kyoto ạ.)* |
| Nhân viên | <ruby>指定席<rt>していせき</rt></ruby>と<ruby>自由席<rt>じゆうせき</rt></ruby>、どちらにしますか？<br>*(Anh muốn ghế đặt trước hay ghế tự do?)* |
| Thái | すみません、「<ruby>指定席<rt>していせき</rt></ruby>」と「<ruby>自由席<rt>じゆうせき</rt></ruby>」の<ruby>違<rt>ちが</rt></ruby>いを<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Xin lỗi, anh giải thích giúp em điểm khác giữa "ghế đặt trước" và "ghế tự do" được không ạ?)* |
| Nhân viên | <ruby>指定席<rt>していせき</rt></ruby>は<ruby>席<rt>せき</rt></ruby>が<ruby>決<rt>き</rt></ruby>まっています。<ruby>自由席<rt>じゆうせき</rt></ruby>は<ruby>空<rt>あ</rt></ruby>いている<ruby>席<rt>せき</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>ります。<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>指定席<rt>していせき</rt></ruby>のほうが520<ruby>円<rt>えん</rt></ruby><ruby>高<rt>たか</rt></ruby>いです。<br>*(Ghế đặt trước thì chỗ ngồi được định sẵn. Ghế tự do thì ngồi vào chỗ trống. Giá vé ghế đặt trước cao hơn 520 yên.)* |
| Thái | <ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>指定席<rt>していせき</rt></ruby>のほうが<ruby>520<rt>ごひゃくにじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>高<rt>たか</rt></ruby>いですが、<ruby>必<rt>かなら</rt></ruby>ず<ruby>座<rt>すわ</rt></ruby>れるということですね。<br>*(Cho em xác nhận lại. Ghế đặt trước đắt hơn 520 yên nhưng chắc chắn có chỗ ngồi, đúng không ạ?)* |
| Nhân viên | そうです。<ruby>今日<rt>きょう</rt></ruby>は<ruby>土曜日<rt>どようび</rt></ruby>ですので、<ruby>自由席<rt>じゆうせき</rt></ruby>は<ruby>混<rt>こ</rt></ruby>むかもしれません。<ruby>指定席<rt>していせき</rt></ruby>をお<ruby>勧<rt>すす</rt></ruby>めします。<br>*(Đúng vậy. Hôm nay là thứ Bảy, ghế tự do có thể đông. Tôi khuyên anh mua ghế đặt trước.)* |
| Thái | では、<ruby>指定席<rt>していせき</rt></ruby>を2<ruby>枚<rt>まい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>窓側<rt>まどがわ</rt></ruby>と<ruby>通路側<rt>つうろがわ</rt></ruby>、<ruby>並<rt>なら</rt></ruby>んだ<ruby>席<rt>せき</rt></ruby>はありますか？<br>*(Vậy cho em 2 vé ghế đặt trước. Có cặp ghế cạnh nhau cửa sổ và lối đi không ạ?)* |
| Nhân viên | はい、ございます。8<ruby>時<rt>じ</rt></ruby>15<ruby>分<rt>ふん</rt></ruby><ruby>発<rt>はつ</rt></ruby>の「のぞみ」、<ruby>11<rt>じゅういち</rt></ruby><ruby>号車<rt>ごうしゃ</rt></ruby>のAとBの<ruby>席<rt>せき</rt></ruby>でよろしいですか？<br>*(Vâng, có ạ. Chuyến "Nozomi" khởi hành lúc 8h15, toa số 11 ghế A và B, được không ạ?)* |
| Thái | はい、それでお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>料金<rt>りょうきん</rt></ruby>はいくらになりますか？<br>*(Vâng, cho em đó ạ. Tổng giá vé bao nhiêu ạ?)* |
| Nhân viên | お<ruby>二人<rt>ふたり</rt></ruby><ruby>様<rt>さま</rt></ruby>で<ruby>22,720<rt>にまんにせんななひゃくにじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Hai vị tổng 22.720 yên.)* |
| Thái | カードでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho em thanh toán bằng thẻ ạ.)* |

---

## Tình huống 7 — Quầy vé chùa <ruby>金閣寺<rt>きんかくじ</rt></ruby> · ngày 7, 14:00, hỏi lễ tân về phí <ruby>拝観<rt>はいかん</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Thái | こんにちは。<ruby>大人<rt>おとな</rt></ruby>2<ruby>名<rt>めい</rt></ruby>の<ruby>拝観券<rt>はいかんけん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin chào. Cho em 2 vé tham quan người lớn ạ.)* |
| Lễ tân | はい、お<ruby>一人<rt>ひとり</rt></ruby><ruby>様<rt>さま</rt></ruby>500<ruby>円<rt>えん</rt></ruby>です。<ruby>合<rt>あ</rt></ruby>わせて1,000<ruby>円<rt>えん</rt></ruby>になります。<br>*(Vâng, mỗi người 500 yên. Tổng cộng 1.000 yên.)* |
| Thái | （<ruby>払<rt>はら</rt></ruby>う）ありがとうございます。すみません、「<ruby>拝観<rt>はいかん</rt></ruby>」というのは、<ruby>普通<rt>ふつう</rt></ruby>の<ruby>観光<rt>かんこう</rt></ruby>と<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Trả tiền. Em cảm ơn. Xin lỗi, "haikan" khác gì với tham quan thông thường ạ?)* |
| Lễ tân | <ruby>拝観<rt>はいかん</rt></ruby>は<ruby>仏様<rt>ほとけさま</rt></ruby>を<ruby>拝<rt>おが</rt></ruby>む<ruby>意味<rt>いみ</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれています。<ruby>静<rt>しず</rt></ruby>かに<ruby>歩<rt>ある</rt></ruby>いて、<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>さないでください。<br>*(Haikan có nghĩa bao gồm việc bái lạy Đức Phật. Anh chị đi nhẹ nhàng, đừng nói to ạ.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>ってもよろしいでしょうか？<br>*(Em rõ ạ. Em chụp ảnh có được không ạ?)* |
| Lễ tân | <ruby>外<rt>そと</rt></ruby>からは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。お<ruby>堂<rt>どう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>は<ruby>撮影<rt>さつえい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>です。<br>*(Chụp từ bên ngoài thì được. Bên trong điện cấm chụp ảnh.)* |
| Thái | <ruby>外<rt>そと</rt></ruby>からはOK、<ruby>中<rt>なか</rt></ruby>は<ruby>禁止<rt>きんし</rt></ruby>、ということですね。ありがとうございます。<br>*(Bên ngoài OK, bên trong cấm, đúng không ạ. Em cảm ơn ạ.)* |
| Lễ tân | はい。<ruby>順路<rt>じゅんろ</rt></ruby>はこちらの<ruby>矢印<rt>やじるし</rt></ruby>に<ruby>従<rt>したが</rt></ruby>って、お<ruby>進<rt>すす</rt></ruby>みください。<ruby>出口<rt>でぐち</rt></ruby>は<ruby>反対側<rt>はんたいがわ</rt></ruby>です。<br>*(Vâng. Đường tham quan đi theo mũi tên này. Lối ra ở phía đối diện ạ.)* |
| Thái | はい、ありがとうございました。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 8 — Trước <ruby>金閣寺<rt>きんかくじ</rt></ruby> · ngày 7, 14:30, cầu hôn (scene tiếng Việt)

> Scene tiếng Việt — khoảnh khắc riêng tư.

| Vai | Lời thoại |
|---|---|
| Mai | (VN, đứng trước Chùa Vàng) Đẹp quá anh ơi! Em chưa thấy gì đẹp thế này. |
| Thái | (VN) Em này… anh có chuyện muốn nói. |
| Mai | (VN) Sao ạ? |
| Thái | (VN, quỳ một gối, mở hộp nhẫn) Mai, bốn năm em đợi anh. Hôm nay anh chính thức cầu hôn em ở Kinkaku-ji. Em đồng ý làm vợ anh nhé? |
| Mai | (VN, khóc) Vâng anh! Em đồng ý! |
| Thái | (VN, đeo nhẫn) Tết 2027 mình cưới. Cưới xong em sang Nhật với anh. |
| Mai | (VN) Em hứa với anh — em sẽ học tiếng Nhật chăm hơn để sang sống cùng anh không bỡ ngỡ. |
| Thái | (VN, ôm) Anh chờ em từng ngày. |

---

## Tình huống 9 — Quầy <ruby>総務<rt>そうむ</rt></ruby> công ty · ngày 10, 9:00, xin tư vấn về visa <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、おはようございます。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Cô Kawakami, chào buổi sáng. Cô có chút thời gian không ạ?)* |
| Kawakami | はい、どうぞ。<ruby>工場長<rt>こうじょうちょう</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いておりますよ。ご<ruby>結婚<rt>けっこん</rt></ruby>おめでとうございます！<br>*(Vâng, mời em. Tôi đã nghe trưởng nhà máy nói rồi. Chúc mừng đám cưới em!)* |
| Thái | ありがとうございます。<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザの<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただきたいのですが。<br>*(Em cảm ơn cô. Em muốn hỏi về giấy tờ xin visa diện gia đình ạ.)* |
| Kawakami | はい。タイさん<ruby>側<rt>がわ</rt></ruby>で<ruby>用意<rt>ようい</rt></ruby>するのは、<ruby>在職<rt>ざいしょく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>給与<rt>きゅうよ</rt></ruby><ruby>明細<rt>めいさい</rt></ruby>の<ruby>過去<rt>かこ</rt></ruby>3ヶ<ruby>月分<rt>げつぶん</rt></ruby>です。<br>*(Vâng. Bên em cần chuẩn bị: giấy chứng nhận đang làm việc, giấy đăng ký cư trú, giấy chứng nhận đóng thuế, và bảng lương 3 tháng gần nhất.)* |
| Thái | すみません、「<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>」というのは、どこで<ruby>取<rt>と</rt></ruby>れますか？<br>*(Xin lỗi cô, "giấy chứng nhận đóng thuế" lấy ở đâu ạ?)* |
| Kawakami | <ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>取<rt>と</rt></ruby>れます。<ruby>安城市役所<rt>あんじょうしやくしょ</rt></ruby>の<ruby>税務課<rt>ぜいむか</rt></ruby>へ<ruby>行<rt>い</rt></ruby>って、「<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします」と<ruby>言<rt>い</rt></ruby>えば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>1<rt>いっ</rt></ruby><ruby>通<rt>つう</rt></ruby>300<ruby>円<rt>えん</rt></ruby>です。<br>*(Lấy ở tòa thị chính. Em đến phòng thuế tòa thị chính Anjo, nói "cho em giấy chứng nhận đóng thuế" là được. Một bản 300 yên.)* |
| Thái | <ruby>市役所<rt>しやくしょ</rt></ruby>の<ruby>税務課<rt>ぜいむか</rt></ruby>ですね。<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>物<rt>もの</rt></ruby>は<ruby>在留<rt>ざいりゅう</rt></ruby>カードだけでいいですか？<br>*(Phòng thuế tòa thị chính ạ. Em cần mang thẻ cư trú thôi đúng không ạ?)* |
| Kawakami | <ruby>在留<rt>ざいりゅう</rt></ruby>カードと<ruby>印鑑<rt>いんかん</rt></ruby>もあったほうがいいです。マイナンバーカードがあれば、コンビニでも<ruby>取<rt>と</rt></ruby>れますよ。<br>*(Thẻ cư trú và con dấu cũng nên mang. Nếu có thẻ My Number thì lấy ở cửa hàng tiện lợi cũng được.)* |
| Thái | コンビニで<ruby>取<rt>と</rt></ruby>れるんですか！それは<ruby>便利<rt>べんり</rt></ruby>ですね。やってみます。<br>*(Lấy ở cửa hàng tiện lợi được luôn ạ! Tiện thật. Em sẽ thử.)* |
| Kawakami | <ruby>在職<rt>ざいしょく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>はこちらで<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>ほどで<ruby>用意<rt>ようい</rt></ruby>します。できたら<ruby>連絡<rt>れんらく</rt></ruby>しますね。<br>*(Giấy chứng nhận đang làm việc bên này chuẩn bị khoảng 1 tuần. Xong tôi sẽ liên lạc nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong cô giúp đỡ ạ.)* |

---

## Tình huống 10 — Quán <ruby>居酒屋<rt>いざかや</rt></ruby> <ruby>桜<rt>さくら</rt></ruby> · ngày 10, 19:00, đồng hương Linh + Linh-Anh chúc mừng (scene tiếng Việt)

> Scene tiếng Việt với đồng hương — ôn lại từ vựng JP, chốt mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Linh | (VN, ôm Mai) Chị Mai! Anh ấy cầu hôn rồi đúng không! Chị khoe nhẫn em xem nào! |
| Mai | (VN, đưa tay khoe nhẫn) Vâng đây ạ! Anh Thái quỳ ngay trước Kinkaku-ji luôn. |
| Linh-Anh | (VN) Chị Mai sắp thành chị dâu mình rồi! Bao giờ cưới chị ơi? |
| Thái | (VN) Tết 2027 ở Hà Nội. Cưới xong Mai sang Nhật theo visa **家族滞在** — visa diện gia đình. |
| Linh | (VN) Anh đã hỏi công ty chưa? Cần bao nhiêu giấy? |
| Thái | (VN) Hỏi rồi. Sáng nay anh gặp chị Kawakami bộ phận **総務** (sōmu — hành chính). Cần **在職証明書** giấy chứng nhận đi làm, **住民票** giấy cư trú, **納税証明書** giấy thuế, và **給与明細** bảng lương ba tháng. |
| Linh-Anh | (VN) Wow, anh thuộc lòng cả mấy từ đó rồi. N2 có khác. |
| Thái | (VN) Bốn năm rồi mà. Mà chị Kawakami nói **マイナンバーカード** — thẻ My Number thì ra cửa hàng tiện lợi cũng lấy được giấy thuế. Tiện thật. |
| Linh | (VN) Em cũng đi xin My Number sớm đi chị Mai. Sang đây làm cái đầu tiên. |
| Mai | (VN) Em ghi vào sổ rồi. Em hứa qua đây em sẽ tự đi 市役所 (shiyakusho — toà thị chính), không phiền anh Thái mãi đâu. |
| Thái | (VN, cười) Em cứ phiền anh thoải mái. Phiền cả đời cũng được. |
| Linh | (VN) Trời ạ, tan chảy luôn. Nâng ly mừng đôi sắp cưới nào! Kanpai! |

---

## Tình huống 11 — Centrair cửa khởi hành · ngày 14, 9:00, tiễn Mai về (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — chốt mạch tình cảm, mở sang T10.

| Vai | Lời thoại |
|---|---|
| Mai | (VN, ôm) Anh ơi. Hai tuần qua nhanh thật. |
| Thái | (VN) Tám tháng nữa mình cưới em nhé. Anh đếm từng ngày. |
| Mai | (VN) Em đợi từng ngày. Em sẽ học tiếng Nhật chăm hơn. Hôm nay em đã đếm được sáu chữ mới: **拝観**・**指定席**・**自由席**・**在職証明書**・**納税証明書**・**家族滞在**. |
| Thái | (VN) Em giỏi quá. Bố mẹ ở nhà chuẩn bị nhà cưới đến đâu rồi? |
| Mai | (VN) Bố em mới sửa lại mặt tiền. Mẹ thì hỏi anh thích món gì để học làm. |
| Thái | (VN) Em nói với mẹ là gì anh cũng ăn. Quan trọng là có em ngồi đối diện. |
| Mai | (VN, vẫy tay) Em đi nhé. Hẹn anh ngày Tết! |
| Thái | (VN) Bay an toàn em. Anh chờ. |

---

## Đọng lại chương 9

Hai tuần Mai sang Nhật, Thái dùng tiếng Nhật ở vai mới — không còn là thực tập sinh hỏi đường, mà là người chủ động dẫn người thân hoà nhập. Mẫu câu chính: **xác nhận chuyến bay & hỏi đường ở sân bay** (〜<ruby>便<rt>びん</rt></ruby>の<ruby>到着<rt>とうちゃく</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか・「<ruby>北<rt>きた</rt></ruby>ゲート」というのは), **giới thiệu hôn thê trang trọng với <ruby>工場長<rt>こうじょうちょう</rt></ruby>** (こちらが<ruby>私<rt>わたし</rt></ruby>の<ruby>婚約者<rt>こんやくしゃ</rt></ruby>のマイです・<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>支<rt>ささ</rt></ruby>えてくださりありがとうございます), **mua vé Shinkansen với phân biệt 指定席/自由席** (<ruby>確認<rt>かくにん</rt></ruby>させてください・〜ということですね), **hỏi lễ tân ở chùa về <ruby>拝観<rt>はいかん</rt></ruby>** (<ruby>外<rt>そと</rt></ruby>からはOK・<ruby>中<rt>なか</rt></ruby>は<ruby>禁止<rt>きんし</rt></ruby>ということですね), và **xin tư vấn visa 家族滞在 từ <ruby>総務<rt>そうむ</rt></ruby>** (<ruby>在職<rt>ざいしょく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>・<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>・マイナンバーカード). Đồng thời quan sát đàn anh **桜井先輩** mẫu mực trong việc mời quán izakaya chúc mừng đính hôn — văn hoá <ruby>歓迎会<rt>かんげいかい</rt></ruby> mà Thái sẽ học để chủ trì cho thế hệ kohai tiếp theo. Phía sau câu chuyện cá nhân là một chuyển giai đoạn nghề nghiệp: từ kỹ sư trẻ độc thân thành người chuẩn bị lập gia đình tại Nhật.

> Từ vựng & mẫu câu chương này: 来日・短期滞在・到着便・北ゲート・婚約者・婚約・お祝い申し上げます・在職証明書・住民票・納税証明書・給与明細・家族滞在・総務・市役所・税務課・マイナンバーカード・印鑑・新幹線・指定席・自由席・拝観・拝観券・順路・撮影禁止・歓迎会・〜していただけますか・〜というのは・〜ということですね・確認させてください・よろしくお願いいたします

## Bí quyết chương

- **Closure arc 4 năm**: Mai cầu hôn ở Kinkaku-ji — payoff của motif "Tết 2027 cưới" lặp từ T1.
- **Đồng nghiệp**: Tanaka・Sakurai・Kawakami — gia đình Nhật của Thái, mỗi người 1 vai (cấp trên・đàn anh・hành chính).
- **VN nhà**: Mai (hôn thê) + Linh-chị + Linh-Anh (đồng hương ở Aichi) — chuẩn bị cho T10 sang Nhật chung.
- **Visa pivot**: 家族滞在 — keyword sẽ payoff trong sách 18 khi Mai thực sự sang ở.', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000010, 800000017, NULL, 'markdown_book', 'T10. Thi lại 3D CAD 1 級 và đỗ (1級リトライ合格)', '# Sách kỹ sư khuôn đúc · T10. Thi lại 3D CAD 1 級 và đỗ (1級リトライ合格)

> **Mục tiêu nhân vật:** Thái (27 tuổi, kỹ sư khuôn đúc tại Anjo, Aichi) bước vào kỳ thi lại chứng chỉ 3D CAD 1 級 sau lần trượt năm trước. Học các mẫu hội thoại tiếng Nhật quanh ôn thi và báo cáo kết quả: báo cáo tiến độ ôn tập với 先輩, hỏi lại lễ phép về điểm yếu kỳ trước (〜というのは?), quan sát đàn anh chia sẻ chiến lược làm bài (戦略・時間配分), xin phép vào phòng thi và xác nhận quy định, báo tin đỗ qua LINE bằng kính ngữ với cấp trên, đáp lễ tại tiệc 祝賀会 ở 居酒屋.

---

## Bối cảnh

Tháng 5–7 năm 2026. Thái đã 4 năm tại **株式会社みなみ精密金型** ở Anjo, Aichi, đang giữ vị trí thiết kế khuôn nhựa. Năm ngoái Thái thi 3D CAD 1 級 được 68 điểm — trượt sát mức đỗ (thiếu 2 điểm so với 合格ライン 70). Trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu giao tiếp xoay quanh ôn thi và báo cáo kết quả: tham vấn cấp trên về chiến lược thi lại, hỏi lại khi chưa hiểu thuật ngữ chấm thi, xác nhận quy định phòng thi, báo tin đỗ và đáp lễ trong tiệc chúc mừng.

---

## Tình huống 1 — Phòng thiết kế · 17:30 cuối tháng 5/2026, báo cáo tiến độ ôn thi với 先輩

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>再<rt>さい</rt></ruby>チャレンジの<ruby>準備<rt>じゅんび</rt></ruby>はOKか？<ruby>来月<rt>らいげつ</rt></ruby>もう<ruby>本番<rt>ほんばん</rt></ruby>だぞ。<br>*(Tai-kun, chuẩn bị thi lại ổn chưa? Tháng sau là thi thật rồi đấy.)* |
| Thái | はい！<ruby>過去問<rt>かこもん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>を<ruby>解<rt>と</rt></ruby>き<ruby>終<rt>お</rt></ruby>えました。<ruby>平均<rt>へいきん</rt></ruby>で<ruby>83<rt>はちじゅうさん</rt></ruby><ruby>点<rt>てん</rt></ruby>ぐらい<ruby>取<rt>と</rt></ruby>れています。<br>*(Vâng ạ! Em đã giải xong đề năm năm vừa rồi. Trung bình được khoảng 83 điểm.)* |
| Sakurai | お、<ruby>去年<rt>きょねん</rt></ruby>より<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びてるな。<ruby>前回<rt>ぜんかい</rt></ruby>は<ruby>68<rt>ろくじゅうはっ</rt></ruby><ruby>点<rt>てん</rt></ruby>だったよな？<br>*(Ồ, rõ ràng tăng so với năm ngoái rồi. Lần trước em được 78 điểm phải không?)* |
| Thái | はい、<ruby>合格<rt>ごうかく</rt></ruby>ラインまで<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>足<rt>た</rt></ruby>りませんでした。<br>*(Vâng ạ, em thiếu 2 điểm so với mức đỗ.)* |
| Sakurai | <ruby>悔<rt>くや</rt></ruby>しかっただろう。<ruby>今回<rt>こんかい</rt></ruby>は<ruby>85<rt>はちじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>狙<rt>ねら</rt></ruby>おう。<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>合格<rt>ごうかく</rt></ruby>するためだ。<br>*(Tiếc lắm nhỉ. Lần này nhắm 85 điểm. Để đỗ với khoảng dư an toàn.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rõ ạ. Mong anh chỉ bảo.)* |

---

## Tình huống 2 — Phòng thiết kế · 17:45, hỏi lại về điểm yếu kỳ trước (〜というのは?)

| Vai | Lời thoại |
|---|---|
| Sakurai | <ruby>前回<rt>ぜんかい</rt></ruby>の<ruby>失点<rt>しってん</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>はもうしたか？<br>*(Em đã phân tích điểm mất lần trước chưa?)* |
| Thái | はい。<ruby>後半<rt>こうはん</rt></ruby>の<ruby>応用<rt>おうよう</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>で<ruby>時間<rt>じかん</rt></ruby><ruby>切<rt>ぎ</rt></ruby>れになりました。<ruby>特<rt>とく</rt></ruby>に「<ruby>公差<rt>こうさ</rt></ruby><ruby>解析<rt>かいせき</rt></ruby>」のところで<ruby>詰<rt>つ</rt></ruby>まりました。<br>*(Vâng. Phần ứng dụng nửa cuối em bị hết giờ. Đặc biệt là chỗ "phân tích dung sai" em mắc kẹt.)* |
| Sakurai | <ruby>公差<rt>こうさ</rt></ruby><ruby>解析<rt>かいせき</rt></ruby>か。あれは<ruby>慣<rt>な</rt></ruby>れだな。<br>*(Phân tích dung sai à. Cái đó là quen tay thôi.)* |
| Thái | すみません、<ruby>戦略<rt>せんりゃく</rt></ruby>というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか？<ruby>時間配分<rt>じかんはいぶん</rt></ruby>のことですか？<br>*(Xin lỗi, "chiến lược" cụ thể nghĩa là gì ạ? Có phải là phân bổ thời gian không ạ?)* |
| Sakurai | そう、<ruby>時間配分<rt>じかんはいぶん</rt></ruby>と<ruby>問題<rt>もんだい</rt></ruby>の<ruby>取捨選択<rt>しゅしゃせんたく</rt></ruby>だ。<ruby>難<rt>むずか</rt></ruby>しい<ruby>問題<rt>もんだい</rt></ruby>に<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>かけたら、いったん<ruby>飛<rt>と</rt></ruby>ばす。<ruby>最後<rt>さいご</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って<ruby>来<rt>く</rt></ruby>る。<br>*(Đúng, là phân bổ thời gian và chọn-bỏ câu hỏi. Câu nào quá 10 phút thì tạm bỏ. Cuối cùng quay lại làm.)* |
| Thái | なるほど、<ruby>難問<rt>なんもん</rt></ruby>は<ruby>後回<rt>あとまわ</rt></ruby>しにするということですね。<ruby>必<rt>かなら</rt></ruby>ずメモします。<br>*(Em hiểu rồi, tức là để câu khó lại sau ạ. Em sẽ ghi lại ngay.)* |

---

## Tình huống 3 — Phòng thiết kế · 18:00, Kawakami chia sẻ kinh nghiệm thi 1 級 (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Kawakami | （<ruby>通<rt>とお</rt></ruby>りかかって）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>再<rt>さい</rt></ruby>チャレンジか。<ruby>俺<rt>おれ</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>でやっと<ruby>受<rt>う</rt></ruby>かったぞ。<br>*(Đi qua. Tai-kun, thi lại 1 級 à. Anh cũng mãi lần hai mới đỗ đấy.)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>も<ruby>再<rt>さい</rt></ruby>チャレンジ<ruby>組<rt>ぐみ</rt></ruby>だったんですか！<ruby>初耳<rt>はつみみ</rt></ruby>です。<br>*(Anh Kawakami cũng từng thi lại sao! Em mới nghe lần đầu ạ.)* |
| Kawakami | あまり<ruby>言<rt>い</rt></ruby>いたくないけどな。<ruby>1<rt>いち</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>は<ruby>74<rt>ななじゅうよん</rt></ruby><ruby>点<rt>てん</rt></ruby>でひどく<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>んだ。でも<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>で<ruby>88<rt>はちじゅうはっ</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(Anh không thích nói lắm. Lần đầu được 74 điểm, buồn dữ lắm. Nhưng lần hai được 88 điểm.)* |
| Thái | すごい<ruby>伸<rt>の</rt></ruby>びですね。どんな<ruby>工夫<rt>くふう</rt></ruby>をされましたか？<br>*(Tiến bộ ghê thật ạ. Anh đã làm gì để cải thiện?)* |
| Kawakami | <ruby>3<rt>みっ</rt></ruby>つだけだ。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>本番<rt>ほんばん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>120<rt>ひゃくにじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>解<rt>と</rt></ruby>く。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>間違<rt>まちが</rt></ruby>えた<ruby>問題<rt>もんだい</rt></ruby>はノートに<ruby>書<rt>か</rt></ruby>く。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>前日<rt>ぜんじつ</rt></ruby>は<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>る。<br>*(Chỉ ba điều. Một, giải đề cũ trong đúng 120 phút như thi thật. Hai, câu sai phải ghi vào sổ. Ba, hôm trước thi đi ngủ sớm.)* |
| Thái | <ruby>前日<rt>ぜんじつ</rt></ruby>に<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>るというのは、<ruby>何<rt>なん</rt></ruby><ruby>時<rt>じ</rt></ruby>ごろですか？<br>*(Đi ngủ sớm hôm trước là khoảng mấy giờ ạ?)* |
| Kawakami | <ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>には<ruby>布団<rt>ふとん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れ。<ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くまで<ruby>勉強<rt>べんきょう</rt></ruby>するより、<ruby>頭<rt>あたま</rt></ruby>がスッキリしている<ruby>方<rt>ほう</rt></ruby>がずっと<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(10 giờ là phải vào chăn. Đầu óc tỉnh táo còn quan trọng hơn nhiều so với học khuya.)* |
| Thái | はい、ありがとうございます。<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>、<ruby>真似<rt>まね</rt></ruby>させていただきます。<br>*(Vâng, em cảm ơn anh. Em xin bắt chước cách của anh Kawakami.)* |

---

## Tình huống 4 — Trước phòng thi · 8:50 ngày 15/6/2026, xác nhận quy định với giám thị

| Vai | Lời thoại |
|---|---|
| Thái | すみません、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>受験<rt>じゅけん</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>はこちらでよろしいでしょうか？<br>*(Xin lỗi, phòng thi 1 級 có phải ở đây không ạ?)* |
| Examiner | はい、こちらです。<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Vâng, đây ạ. Cho xem phiếu dự thi.)* |
| Thái | （<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<br>*(Đưa phiếu. Vâng, đây ạ.)* |
| Examiner | グエン・ヴァン・タイさんですね。<ruby>席<rt>せき</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>は<ruby>23<rt>にじゅうさん</rt></ruby><ruby>番<rt>ばん</rt></ruby>です。<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>みは<ruby>筆記用具<rt>ひっきようぐ</rt></ruby>のみとなります。<br>*(Anh Nguyễn Văn Thái phải không. Số ghế là 23. Chỉ được mang dụng cụ viết vào phòng.)* |
| Thái | <ruby>確認<rt>かくにん</rt></ruby>させてください。スマートフォンは<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って<ruby>鞄<rt>かばん</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる、ということですね？<br>*(Cho em xác nhận lại. Điện thoại thì tắt nguồn rồi cho vào cặp, đúng không ạ?)* |
| Examiner | はい、<ruby>電源<rt>でんげん</rt></ruby><ruby>OFF<rt>オフ</rt></ruby>のうえ、<ruby>足元<rt>あしもと</rt></ruby>の<ruby>鞄<rt>かばん</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby><ruby>開始<rt>かいし</rt></ruby>です。<br>*(Vâng, tắt nguồn xong cho vào cặp dưới chân. 9h10 bắt đầu phổ biến quy chế.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em rõ ạ. Em xin phép vào.)* |

---

## Tình huống 5 — Trong phòng thi · 9:00, bắt đầu thi và tự nhủ chiến lược

| Vai | Lời thoại |
|---|---|
| Examiner | これより<ruby>3D<rt>スリーディー</rt></ruby> CAD <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>します。<ruby>試験<rt>しけん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>120<rt>ひゃくにじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。それでは、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Giờ bắt đầu kỳ thi 3D CAD 1 級. Thời gian 120 phút. Mời các thí sinh bắt đầu.)* |
| Thái | （<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>き、<ruby>大<rt>おお</rt></ruby>きく<ruby>息<rt>いき</rt></ruby>を<ruby>吐<rt>は</rt></ruby>く）<br>*(Mở đề, thở ra một hơi dài.)* |
| Thái | (VN, độc thoại) Bình tĩnh. Câu 1 đến 30 là cơ bản — làm trong 40 phút. Câu 31 đến 50 ứng dụng — 70 phút. Còn 10 phút kiểm tra. |
| Thái | （<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>解<rt>と</rt></ruby>き<ruby>進<rt>すす</rt></ruby>める。<ruby>40<rt>よんじゅっ</rt></ruby><ruby>問目<rt>もんめ</rt></ruby>で<ruby>公差<rt>こうさ</rt></ruby><ruby>解析<rt>かいせき</rt></ruby>に<ruby>当<rt>あ</rt></ruby>たり、<ruby>少<rt>すこ</rt></ruby>し<ruby>考<rt>かんが</rt></ruby>えて、いったん<ruby>飛<rt>と</rt></ruby>ばす）<br>*(Giải đều tay. Đến câu 40 gặp dạng phân tích dung sai, suy nghĩ một chút rồi tạm bỏ qua.)* |
| Thái | (VN, độc thoại) Đúng chiến lược anh Sakurai dạy. Quay lại sau. |
| Thái | （<ruby>最後<rt>さいご</rt></ruby>の<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>飛<rt>と</rt></ruby>ばした<ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>り、<ruby>2<rt>に</rt></ruby><ruby>問<rt>もん</rt></ruby>を<ruby>埋<rt>う</rt></ruby>める）<br>*(10 phút cuối quay lại 3 câu đã bỏ, điền được 2 câu.)* |

---

## Tình huống 6 — Quán cà phê gần hội trường · 12:30, báo cáo cảm giác bài làm cho Sakurai

| Vai | Lời thoại |
|---|---|
| Thái | （LINE）<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>試験<rt>しけん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました！<ruby>感覚<rt>かんかく</rt></ruby>では<ruby>85<rt>はちじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>くらいいけそうです。<br>*(LINE. Anh Sakurai, em đã thi xong rồi! Cảm giác khoảng 85 điểm trở lên.)* |
| Sakurai | （<ruby>既読<rt>きどく</rt></ruby>）よかったな！<ruby>戦略<rt>せんりゃく</rt></ruby><ruby>通<rt>どお</rt></ruby>りいけたか？<br>*(Đã đọc. Tốt rồi! Có làm đúng chiến lược không?)* |
| Thái | はい、<ruby>難問<rt>なんもん</rt></ruby>は<ruby>後<rt>あと</rt></ruby><ruby>回<rt>まわ</rt></ruby>しにして、<ruby>最後<rt>さいご</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って<ruby>2<rt>に</rt></ruby><ruby>問<rt>もん</rt></ruby>埋<ruby>う</ruby>められました。<br>*(Vâng, em để câu khó lại sau, cuối cùng quay lại điền được 2 câu nữa ạ.)* |
| Sakurai | それは<ruby>大<rt>おお</rt></ruby>きい！<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby>だな。とりあえず<ruby>今日<rt>きょう</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>めよ。<br>*(Hai câu là to đấy! Kết quả công bố tháng sau nhỉ. Hôm nay nghỉ ngơi cho khoẻ đã.)* |
| Thái | はい、ありがとうございました。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Vâng, em cảm ơn anh nhiều. Anh đã giúp em rất nhiều.)* |

---

## Tình huống 7 — Phòng thiết kế · 10:00 ngày 18/7/2026, kiểm tra kết quả và báo tin

| Vai | Lời thoại |
|---|---|
| Thái | （PCで<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>のページを<ruby>開<rt>ひら</rt></ruby>く。<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>を<ruby>入力<rt>にゅうりょく</rt></ruby>する）<br>*(Mở trang công bố kết quả trên máy tính, nhập số báo danh.)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>つめる）...<ruby>合格<rt>ごうかく</rt></ruby>！<ruby>87<rt>はちじゅうしち</rt></ruby><ruby>点<rt>てん</rt></ruby>！<br>*(Nhìn chằm chằm vào màn hình... Đỗ! 87 điểm!)* |
| Thái | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>！<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>しました！<br>*(Đứng bật dậy. Anh Sakurai! Em đỗ 1 級 rồi!)* |
| Sakurai | おー！<ruby>本当<rt>ほんとう</rt></ruby>か！<ruby>何<rt>なん</rt></ruby><ruby>点<rt>てん</rt></ruby>だった？<br>*(Ồ! Thật à! Bao nhiêu điểm?)* |
| Thái | <ruby>87<rt>はちじゅうしち</rt></ruby><ruby>点<rt>てん</rt></ruby>です！<ruby>目標<rt>もくひょう</rt></ruby>の<ruby>85<rt>はちじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えました。<br>*(87 điểm ạ! Vượt cả mục tiêu 85 điểm.)* |
| Sakurai | おめでとう、タイ<ruby>君<rt>くん</rt></ruby>！<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>で<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>るのは<ruby>本当<rt>ほんとう</rt></ruby>にすごいことだぞ。<br>*(Chúc mừng, Tai-kun! Người nước ngoài lấy được 1 級 là thật sự ghê đấy.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<ruby>後<rt>あと</rt></ruby>で<ruby>工場長<rt>こうじょうちょう</rt></ruby>にもご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Nhờ anh Sakurai và anh Kawakami cả ạ. Lát nữa em cũng sẽ báo cáo với trưởng nhà máy.)* |

---

## Tình huống 8 — Hành lang văn phòng · 10:30, báo cáo kính ngữ với 工場長 Tanaka

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Trưởng nhà máy Tanaka, em xin phép làm phiền ạ. Anh cho em xin chút thời gian được không ạ?)* |
| Tanaka | おう、タイ<ruby>君<rt>くん</rt></ruby>。どうした？<br>*(Ờ, Tai-kun. Có chuyện gì?)* |
| Thái | ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>3D<rt>スリーディー</rt></ruby> CAD <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>がありまして、<ruby>87<rt>はちじゅうしち</rt></ruby><ruby>点<rt>てん</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>いたしました。<br>*(Em xin báo cáo. Hôm nay có công bố kết quả 3D CAD 1 級, em đã đỗ với 87 điểm ạ.)* |
| Tanaka | おお！それは<ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>去年<rt>きょねん</rt></ruby>の<ruby>悔<rt>くや</rt></ruby>しさを<ruby>晴<rt>は</rt></ruby>らしたな。<br>*(Ồ! Tuyệt vời! Đã xoá được nỗi tiếc năm ngoái rồi nhỉ.)* |
| Thái | はい、<ruby>嘱託<rt>しょくたく</rt></ruby>になられた<ruby>田中<rt>たなか</rt></ruby>さんにも<ruby>長年<rt>ながねん</rt></ruby><ruby>支<rt>ささ</rt></ruby>えていただきました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng. Anh Tanaka cũng đã đỡ đần em suốt nhiều năm dù đã chuyển sang chế độ cộng tác viên. Em xin chân thành cảm ơn ạ.)* |
| Tanaka | <ruby>水臭<rt>みずくさ</rt></ruby>いことを<ruby>言<rt>い</rt></ruby>うな。<ruby>君<rt>きみ</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>だ。<ruby>夜<rt>よる</rt></ruby>、みんなで<ruby>祝<rt>いわ</rt></ruby>おう。<br>*(Đừng nói khách sáo. Đây là thành quả nỗ lực của em. Tối nay cả nhóm ăn mừng nhé.)* |
| Thái | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nhận ạ.)* |

---

## Tình huống 9 — 居酒屋「鳥松」 · 19:00, tiệc 祝賀会 cùng cohort

| Vai | Lời thoại |
|---|---|
| Sakurai | （<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>取<rt>と</rt></ruby>る）<ruby>本日<rt>ほんじつ</rt></ruby>はタイ<ruby>君<rt>くん</rt></ruby>の<ruby>3D<rt>スリーディー</rt></ruby> CAD <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>って、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Hô đầu nâng ly. Hôm nay chúc mừng Tai-kun đỗ 3D CAD 1 級, dzô!)* |
| みんな | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Dzô!)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つに<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>1<rt>ひと</rt></ruby>つ。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>でこれは<ruby>稀<rt>まれ</rt></ruby>な<ruby>記録<rt>きろく</rt></ruby>だぞ！<br>*(Tai-kun, ba cái 2 級 cộng một cái 1 級. Người nước ngoài có thành tích này là hiếm đấy!)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>戦略<rt>せんりゃく</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてくださったおかげです。<ruby>難問<rt>なんもん</rt></ruby>を<ruby>後回<rt>あとまわ</rt></ruby>しにする<ruby>技<rt>わざ</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>効<rt>き</rt></ruby>きました。<br>*(Nhờ anh Kawakami chỉ chiến lược. Cái mẹo để câu khó lại sau, vào phòng thi thật sự rất hiệu quả.)* |
| Tanaka | <ruby>嘱託<rt>しょくたく</rt></ruby>の<ruby>身<rt>み</rt></ruby>からもお<ruby>祝<rt>いわ</rt></ruby>いを<ruby>言<rt>い</rt></ruby>わせてくれ。タイ<ruby>君<rt>くん</rt></ruby>が<ruby>来日<rt>らいにち</rt></ruby>した<ruby>日<rt>ひ</rt></ruby>を<ruby>今<rt>いま</rt></ruby>でも<ruby>覚<rt>おぼ</rt></ruby>えているよ。<br>*(Để cộng tác viên này cũng được nói lời chúc mừng. Anh vẫn nhớ ngày Tai-kun đặt chân tới Nhật.)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>空港<rt>くうこう</rt></ruby>で<ruby>出迎<rt>でむか</rt></ruby>えていただいた<ruby>日<rt>ひ</rt></ruby>から<ruby>4<rt>よ</rt></ruby><ruby>年<rt>ねん</rt></ruby>になります。みんなのおかげで<ruby>今日<rt>きょう</rt></ruby>があります。<br>*(Anh Tanaka, từ ngày anh ra sân bay đón em đến giờ là 4 năm rồi ạ. Nhờ tất cả mọi người mới có em ngày hôm nay.)* |
| Sakurai | <ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>狙<rt>ねら</rt></ruby>う？<ruby>設計士<rt>せっけいし</rt></ruby>の<ruby>道<rt>みち</rt></ruby>はもう<ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>だぞ。<br>*(Tiếp theo nhắm gì? Con đường thiết kế viên đã ngay trước mặt rồi đấy.)* |
| Thái | <ruby>来年<rt>らいねん</rt></ruby>はN1と<ruby>金型<rt>かながた</rt></ruby><ruby>設計<rt>せっけい</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Năm sau em nhắm N1 và kỹ năng sĩ thiết kế khuôn cấp 1 ạ.)* |
| Kawakami | <ruby>大<rt>おお</rt></ruby>きく<ruby>出<rt>で</rt></ruby>たな！でも<ruby>応援<rt>おうえん</rt></ruby>するぞ。<br>*(Mạnh tay đấy! Nhưng anh ủng hộ.)* |

---

## Tình huống 10 — Ký túc, phòng 201 · 22:00, gọi điện Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật và ôn lại từ vựng JP trong chương.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, anh đỗ rồi! 1 級 — 87 điểm. |
| Mai | (tiếng Việt) Anh! Em mừng quá! Em đoán là anh đỗ mà. Đợi gọi cả ngày luôn. |
| Thái | (tiếng Việt) Nhờ chiến lược anh Kawakami chỉ. Câu khó để sau, làm xong câu dễ rồi quay lại. Anh điền thêm được 2 câu trong 10 phút cuối. |
| Mai | (tiếng Việt) Chính cái "戦略" với "時間配分" mà anh nhắc tháng trước đó hả? |
| Thái | (tiếng Việt) Ừ. Em nhớ luôn từ tiếng Nhật à? Giỏi đấy. |
| Mai | (tiếng Việt) Em theo dõi mà. Anh kể nhiều quá, em nghe riết cũng thuộc. Mà sao tự nhiên năm nay anh đỗ được, năm ngoái sát có 2 điểm? |
| Thái | (tiếng Việt) Anh nghĩ là vì lần này anh chịu phân tích bài thi trước. Năm ngoái anh chỉ giải đề nhiều cho hết — không nhìn lại chỗ mất điểm. Năm nay anh ghi sổ từng câu sai, nên "公差解析" — phân tích dung sai — anh không sợ nữa. |
| Mai | (tiếng Việt) Vậy bài học là gì anh? |
| Thái | (tiếng Việt) Trượt không phải dấu chấm hết. Thi lại với chiến thuật mới thì qua. Quan trọng là chịu khiêm tốn nhìn lại điểm yếu, và hỏi đàn anh. |
| Mai | (tiếng Việt) Anh nói nghe người lớn ghê. 4 năm rồi mà. |
| Thái | (tiếng Việt) Sắp hết series rồi em. Một năm nữa là về quê đón em đi đăng ký. |
| Mai | (tiếng Việt) Em chờ. Ngủ ngon anh. |
| Thái | (tiếng Việt) Ngủ ngon em. |

---

## Đọng lại chương 10

Trượt năm ngoái không phải dấu chấm hết — Thái học được điều đó qua lần thi lại 3D CAD 1 級 với **87 điểm**. Trước thi, học **báo cáo tiến độ ôn tập** với 先輩 (〜点ぐらい取れています), **hỏi lại lễ phép** về thuật ngữ chấm thi (〜というのは具体的にどういう意味でしょうか), **quan sát đàn anh** Kawakami chia sẻ ba bí quyết — giải đề trong đúng **120分**, ghi sổ câu sai, **前日に早く寝る**. Vào phòng thi, học **xác nhận quy định với giám thị** (〜ということですね) và áp dụng **戦略・時間配分**: bỏ câu khó qua một bên, quay lại sau. Khi đỗ, học **báo cáo kính ngữ với 工場長** (ご報告があります・合格いたしました) và **đáp lễ tại 祝賀会** ở 居酒屋 (みんなのおかげで今日があります). Cốt lõi nghề kỹ sư Nhật: trượt thì khiêm tốn nhìn lại điểm yếu, hỏi đàn anh, ghi sổ, rồi thi lại — chính 報連相 trong việc học cũng đáng giá như trong công việc.

> Từ vựng & mẫu câu chương này: 再チャレンジ・過去問・5年分・合格ライン・失点分析・公差解析・戦略・時間配分・取捨選択・難問・後回し・受験票・席番号・筆記用具・電源OFF・結果発表・受験番号・嘱託・祝賀会・乾杯・金型設計技能士・〜というのは・〜ということですね・ご報告があります・合格いたしました・お疲れさまでした・みんなのおかげです

## Bí quyết chương

- **Payoff arc**: lần trượt sách t09 trả thù bằng 87 điểm — đỉnh nhỏ trước khi sách 17 khép lại (sách 18 sẽ là N1 + 設計士).
- **Cohort gần như đủ**: Sakurai (cố vấn trực tiếp), Kawakami (đàn anh đồng cảnh), Tanaka (cộng tác viên, mạch xuyên series).
- **Mai xuyên 5 sách**: scene tiếng Việt chốt mạch hôn ước; nhắc lại setup "1 năm nữa đón em đăng ký".

> *"15/6/2026 thi. 18/7/2026 đỗ. 87. Khiêm tốn + chiến thuật mới = qua."*', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000011, 800000017, NULL, 'markdown_book', 'T11. Lần đầu làm sempai hướng dẫn đàn em (後輩指導)', '# Sách kỹ sư khuôn đúc · T11. Lần đầu làm sempai hướng dẫn đàn em (後輩指導)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Hà Nội) sang Nhật năm thứ tư, được chỉ định làm 指導員 cho ba kohai mới (Long, Hùng — TTS Việt Nam; Adi — SSW1 Indonesia). Học các mẫu hội thoại tiếng Nhật của vai sempai: nhận chỉ thị giao nhiệm vụ hướng dẫn từ cấp trên (お任せします・承知しました), tự giới thiệu mình với kohai bằng tư cách 先輩 (〜の指導を担当します), dẫn đi tham quan và giải thích thiết bị xưởng (こちらが〜・〜から始めます), khuyên đàn em lộ trình phát triển nghề (〜したほうがいい・〜を目指す), hỏi lại lễ phép khi kohai chưa rõ (〜というのは？), báo cáo tiến độ với cấp trên (順調です・〜を思い出します).

---

## Bối cảnh

Tháng 8 năm 2026. Thái đã sang Nhật được 4 năm, trình độ N2, đang làm 設計補助 ở **株式会社みなみ精密金型**. Sáng nay 工場長 Tanaka (giờ đã chuyển sang chế độ 嘱託) giao Thái phụ trách hướng dẫn ba kohai mới đến: Long và Hùng là TTS từ Hà Nội, Adi là SSW1 người Indonesia. Chương này tập trung các mẫu câu giao tiếp của vai sempai năm thứ tư: tiếp nhận chỉ thị, giới thiệu bản thân với đàn em, hướng dẫn tham quan xưởng, khuyên đàn em lộ trình học, và báo cáo lên cấp trên.

---

## Tình huống 1 — Phòng họp tầng 2 · 8:30, nhận chỉ thị giao nhiệm vụ 指導員 từ cấp trên

| Vai | Lời thoại |
|---|---|
| Tanaka | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>新人<rt>しんじん</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>します。<br>*(Chào buổi sáng. Hôm nay có ba bạn mới đến.)* |
| Thái | おはようございます。はい、<ruby>聞<rt>き</rt></ruby>いております。<br>*(Chào buổi sáng. Vâng, em đã được nghe ạ.)* |
| Tanaka | <ruby>名前<rt>なまえ</rt></ruby>はロンとフン（ベトナムTTS）、それからアディ（インドネシアSSW1）です。<br>*(Tên là Long và Hùng — TTS Việt Nam, và Adi — SSW1 Indonesia.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>ですね。<br>*(Em rõ rồi ạ. Ba người đúng không ạ.)* |
| Tanaka | <ruby>指導員<rt>しどういん</rt></ruby>はタイ<ruby>君<rt>くん</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せます。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>のオンボーディングをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Người hướng dẫn tôi giao cho Tai-kun. Nhờ cậu phụ trách một tuần onboarding.)* |
| Thái | はい！<ruby>精<rt>せい</rt></ruby><ruby>一杯<rt>いっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。すみません、「オンボーディング」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>みますか？<br>*(Vâng ạ! Em sẽ cố gắng hết sức. Xin lỗi, "onboarding" cụ thể bao gồm những gì ạ?)* |
| Tanaka | <ruby>工場<rt>こうじょう</rt></ruby><ruby>案内<rt>あんない</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>、<ruby>担当<rt>たんとう</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、それから<ruby>寮<rt>りょう</rt></ruby><ruby>生活<rt>せいかつ</rt></ruby>の<ruby>相談<rt>そうだん</rt></ruby><ruby>役<rt>やく</rt></ruby>です。<br>*(Dẫn đi tham quan xưởng, đào tạo an toàn, giải thích công đoạn phụ trách, và làm người để tham vấn về sinh hoạt ký túc.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>毎日<rt>まいにち</rt></ruby><ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Em rõ rồi ạ. Hằng ngày em sẽ báo cáo tiến độ.)* |
| Tanaka | <ruby>報連相<rt>ほうれんそう</rt></ruby>をしっかりお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>君<rt>きみ</rt></ruby>のことを<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>してね。<br>*(報連相 cho chắc nhé. Hãy nhớ lại chính cậu của bốn năm trước.)* |
| Thái | はい、<ruby>忘<rt>わす</rt></ruby>れていません。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em không quên đâu ạ. Em xin phép.)* |

---

## Tình huống 2 — Sảnh tiếp tân · 9:00, lần đầu gặp ba kohai, tự giới thiệu với tư cách sempai

| Vai | Lời thoại |
|---|---|
| Long | (tiếng Việt, cúi đầu) Em chào anh ạ! |
| Hùng | (tiếng Việt) Em là Hùng ạ! Em chào anh! |
| Adi | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして、アディと<ruby>申<rt>もう</rt></ruby>します。インドネシアから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cúi đầu. Rất hân hạnh, em tên là Adi. Em đến từ Indonesia. Mong anh giúp đỡ.)* |
| Thái | (tiếng Việt, quay sang Long Hùng) Long, Hùng, anh chào hai em! Anh là Thái, sempai của các em, đã ở đây bốn năm rồi. Có gì khó cứ hỏi anh, đừng ngại. |
| Long | (tiếng Việt) Vâng, may quá có anh người Việt ạ. |
| Thái | アディさん、<ruby>改<rt>あらた</rt></ruby>めて<ruby>自己<rt>じこ</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>します。グエン・ヴァン・タイです。<ruby>4<rt>よ</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>設計補助<rt>せっけいほじょ</rt></ruby>です。<ruby>今週<rt>こんしゅう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Anh Adi, tôi xin tự giới thiệu lại. Tôi là Nguyễn Văn Thái, năm thứ tư phụ trợ thiết kế. Tuần này tôi phụ trách hướng dẫn cả ba bạn.)* |
| Adi | よろしくお<ruby>願<rt>ねが</rt></ruby>いします、タイ<ruby>先輩<rt>せんぱい</rt></ruby>！<br>*(Mong anh giúp đỡ, sempai Thái!)* |
| Thái | <ruby>俺<rt>おれ</rt></ruby>もインドネシア<ruby>出身<rt>しゅっしん</rt></ruby>のプトラさんと<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>同室<rt>どうしつ</rt></ruby>でしたよ。<br>*(Tôi từng ở chung phòng với anh Putra người Indonesia bốn năm liền đấy.)* |
| Adi | プトラさん！<ruby>知<rt>し</rt></ruby>っています！<ruby>地元<rt>じもと</rt></ruby>が<ruby>近<rt>ちか</rt></ruby>いんです。ジャカルタの<ruby>修理<rt>しゅうり</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですよね？<br>*(Anh Putra! Em biết! Quê em ở gần đó. Anh ấy giờ ở công ty sửa khuôn tại Jakarta đúng không ạ?)* |
| Thái | えっ！<ruby>本当<rt>ほんとう</rt></ruby>に？<ruby>世<rt>よ</rt></ruby>の<ruby>中<rt>なか</rt></ruby><ruby>狭<rt>せま</rt></ruby>いね。<br>*(Ơ! Thật à? Thế giới nhỏ thật.)* |
| Adi | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>狭<rt>せま</rt></ruby>いです！<br>*(Vâng, đúng là nhỏ thật ạ!)* |

---

## Tình huống 3 — Trước cửa xưởng · 9:30, giải thích quy định an toàn trước khi vào xưởng

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>工場<rt>こうじょう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>安全<rt>あんぜん</rt></ruby>のルールを<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>大事<rt>だいじ</rt></ruby>なので、<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Trước khi vào xưởng, anh giải thích các quy tắc an toàn. Quan trọng nên nhất định phải nhớ.)* |
| Long | はい！<br>*(Vâng!)* |
| Thái | <ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby><ruby>靴<rt>ぐつ</rt></ruby>とヘルメットは<ruby>必<rt>かなら</rt></ruby>ず<ruby>着用<rt>ちゃくよう</rt></ruby>します。<ruby>2<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>機械<rt>きかい</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>必<rt>かなら</rt></ruby>ず<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけます。<br>*(Một, giày bảo hộ và mũ bảo hộ phải mang đầy đủ. Hai, trước khi chạm máy phải lên tiếng với sempai.)* |
| Hùng | すみません、「<ruby>着用<rt>ちゃくよう</rt></ruby>」というのは？<br>*(Xin lỗi, "chakuyou" nghĩa là gì ạ?)* |
| Thái | いい<ruby>質問<rt>しつもん</rt></ruby>だね。「<ruby>身<rt>み</rt></ruby>に<ruby>着<rt>つ</rt></ruby>ける」という<ruby>意味<rt>いみ</rt></ruby>です。<ruby>靴<rt>くつ</rt></ruby>を<ruby>履<rt>は</rt></ruby>く、ヘルメットをかぶる、ということだよ。<br>*(Câu hỏi tốt. Có nghĩa là "mặc lên người". Tức là đi giày, đội mũ đấy.)* |
| Hùng | なるほど、ありがとうございます。<br>*(Ra vậy, em cảm ơn ạ.)* |
| Thái | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>分<rt>わ</rt></ruby>からないことがあったら、その<ruby>場<rt>ば</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。<br>*(Ba, có gì không hiểu thì tại chỗ phải hỏi ngay. Đừng ngại.)* |
| Adi | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Thái | これは<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>もタナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>われたよ。<br>*(Điều này, bốn năm trước anh cũng được trưởng nhà máy Tanaka dặn y như vậy.)* |

---

## Tình huống 4 — Phòng gia công cơ khí · 10:00, dẫn tham quan và giải thích thiết bị

| Vai | Lời thoại |
|---|---|
| Thái | こちらが<ruby>機械加工室<rt>きかいかこうしつ</rt></ruby>です。これがMC、こっちがEDMです。<br>*(Đây là phòng gia công cơ khí. Cái này là MC, cái kia là EDM.)* |
| Long | すみません、MCというのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, MC là gì ạ?)* |
| Thái | マシニングセンターの<ruby>略<rt>りゃく</rt></ruby>です。<ruby>金属<rt>きんぞく</rt></ruby>を<ruby>削<rt>けず</rt></ruby>って<ruby>金型<rt>かながた</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>機械<rt>きかい</rt></ruby>だよ。EDMは<ruby>放電加工<rt>ほうでんかこう</rt></ruby>、<ruby>細<rt>こま</rt></ruby>かい<ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>電気<rt>でんき</rt></ruby>で<ruby>削<rt>けず</rt></ruby>るんだ。<br>*(Là viết tắt của Machining Center. Là máy cắt kim loại để tạo hình khuôn. Còn EDM là gia công phóng điện, dùng điện để cắt những phần nhỏ tinh xảo.)* |
| Long | (tiếng Việt, nhỏ với Hùng) Đẹp quá mày ơi! |
| Hùng | (tiếng Việt) Ừ, hơn cả trường mình ở Hà Nội. |
| Thái | <ruby>俺<rt>おれ</rt></ruby>も<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>感想<rt>かんそう</rt></ruby>だったよ。<ruby>当時<rt>とうじ</rt></ruby>、タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>案内<rt>あんない</rt></ruby>してもらったのを<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Bốn năm trước anh cũng cùng cảm giác đó. Anh vẫn nhớ hồi đó được trưởng nhà máy Tanaka dẫn đi tham quan.)* |
| Adi | タイ<ruby>先輩<rt>せんぱい</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby>、どの<ruby>工程<rt>こうてい</rt></ruby>からスタートしましたか？<br>*(Sempai Thái lúc đầu bắt đầu từ công đoạn nào ạ?)* |
| Thái | <ruby>俺<rt>おれ</rt></ruby>も<ruby>磨<rt>みが</rt></ruby>きからだったよ。<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>磨<rt>みが</rt></ruby>き<ruby>担当<rt>たんとう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Anh cũng bắt đầu từ mài. Cả ba bạn đầu tiên cũng bắt đầu từ công đoạn mài.)* |

---

## Tình huống 5 — Phòng hoàn thiện · 10:30, quan sát đàn anh Sakurai làm mẫu công đoạn mài

| Vai | Lời thoại |
|---|---|
| Thái | こちらが<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>室<rt>しつ</rt></ruby>です。<ruby>磨<rt>みが</rt></ruby>きは<ruby>5<rt>ご</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>あります。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>がお<ruby>手本<rt>てほん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてくれます。よく<ruby>見<rt>み</rt></ruby>てください。<br>*(Đây là phòng hoàn thiện. Mài có năm cấp. Anh Sakurai sẽ làm mẫu cho các bạn xem. Hãy quan sát kỹ.)* |
| Sakurai | みなさん、はじめまして。<ruby>桜井<rt>さくらい</rt></ruby>です。<ruby>磨<rt>みが</rt></ruby>きの<ruby>基本<rt>きほん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せますね。<br>*(Chào các bạn, rất hân hạnh. Tôi là Sakurai. Tôi sẽ làm mẫu cơ bản của công đoạn mài nhé.)* |
| Sakurai | （<ruby>砥石<rt>といし</rt></ruby>を<ruby>持<rt>も</rt></ruby>ちながら）まず、<ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れすぎないこと。<ruby>手首<rt>てくび</rt></ruby>を<ruby>柔<rt>やわ</rt></ruby>らかく<ruby>使<rt>つか</rt></ruby>います。<br>*(Cầm viên đá mài. Trước tiên, không được dùng lực quá mạnh. Cổ tay phải mềm.)* |
| Long | （<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>見<rt>み</rt></ruby>る）<br>*(Chăm chú quan sát.)* |
| Sakurai | <ruby>次<rt>つぎ</rt></ruby>に、<ruby>同<rt>おな</rt></ruby>じ<ruby>方向<rt>ほうこう</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かします。<ruby>行<rt>い</rt></ruby>ったり<ruby>来<rt>き</rt></ruby>たりではなく、<ruby>一<rt>いち</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>です。<br>*(Tiếp theo, di chuyển theo cùng một hướng. Không phải qua lại, mà một chiều.)* |
| Adi | <ruby>一<rt>いち</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Một chiều, em hiểu rồi ạ.)* |
| Thái | (nói nhỏ với ba kohai) <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>磨<rt>みが</rt></ruby>き<ruby>職人<rt>しょくにん</rt></ruby>です。<ruby>動<rt>うご</rt></ruby>きを<ruby>真似<rt>まね</rt></ruby>するのが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>近道<rt>ちかみち</rt></ruby>だよ。<br>*(Anh Sakurai là thợ mài hơn mười năm rồi. Bắt chước động tác của anh ấy là con đường ngắn nhất đấy.)* |
| Hùng | はい、<ruby>真似<rt>まね</rt></ruby>します！<br>*(Vâng, em sẽ bắt chước!)* |
| Sakurai | <ruby>分<rt>わ</rt></ruby>からないことがあったら、いつでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Có gì không hiểu thì hỏi bất cứ lúc nào nhé.)* |

---

## Tình huống 6 — Nhà ăn công ty · 12:30, khuyên kohai lộ trình phát triển nghề

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, với Long Hùng) Long, Hùng, anh khuyên ba điều cho năm đầu nhé. |
| Long | (tiếng Việt) Vâng anh, em nghe ạ. |
| Thái | (tiếng Việt) Một: ngoài giờ học CAD. Bốn năm trước anh không học sớm, mất hai năm mới lên được vị trí phụ trợ thiết kế. Hai em bắt đầu sớm đi. |
| Hùng | (tiếng Việt) Vâng, em sẽ học ạ. |
| Thái | (tiếng Việt) Hai: trong năm đầu thi 機械加工技能士 cấp 3. Có chứng chỉ thì lương tăng, mà visa cũng dễ chuyển sang SSW. |
| Long | (tiếng Việt) Cái này em mới biết. |
| Thái | (tiếng Việt) Ba: lấy JLPT N3 trong vòng một năm rưỡi. Tiếng Nhật không lên N3 thì đọc bản vẽ kỹ thuật khó lắm. |
| Hùng | (tiếng Việt) Em sẽ cố ạ! |
| Adi | （<ruby>聞<rt>き</rt></ruby>いている、<ruby>日本語<rt>にほんご</rt></ruby>で）すみません、<ruby>俺<rt>おれ</rt></ruby>はSSW1だからCADは<ruby>無理<rt>むり</rt></ruby>ですか？<br>*(Đã nghe, hỏi bằng tiếng Nhật. Xin lỗi, em là SSW1 nên không học CAD được ạ?)* |
| Thái | プトラと<ruby>同<rt>おな</rt></ruby>じ<ruby>立場<rt>たちば</rt></ruby>だね。でもプトラは<ruby>磨<rt>みが</rt></ruby>きを<ruby>極<rt>きわ</rt></ruby>めて、<ruby>修理<rt>しゅうり</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>創業<rt>そうぎょう</rt></ruby>したよ。<ruby>道<rt>みち</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つじゃない。<br>*(Cùng vị trí với Putra. Nhưng Putra theo nghề mài đến cùng rồi lập công ty sửa khuôn. Con đường không chỉ có một.)* |
| Adi | <ruby>俺<rt>おれ</rt></ruby>もそれを<ruby>目指<rt>めざ</rt></ruby>します！<br>*(Em cũng sẽ nhắm con đường đó!)* |
| Thái | いいね。<ruby>磨<rt>みが</rt></ruby>きの<ruby>技能士<rt>ぎのうし</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>そう。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>するといいよ。<br>*(Hay đấy. Hãy nhắm chứng chỉ technician mài cấp 1. Cứ hỏi anh Sakurai nhé.)* |

---

## Tình huống 7 — Phòng họp nhỏ · 14:00, hỏi lại kohai có chỗ nào chưa hiểu

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>午前中<rt>ごぜんちゅう</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>で、<ruby>分<rt>わ</rt></ruby>からないところはありますか？<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Phần giải thích buổi sáng, có chỗ nào chưa hiểu không? Cứ hỏi đừng ngại.)* |
| Long | あの、<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>言<rt>い</rt></ruby>った「<ruby>手首<rt>てくび</rt></ruby>を<ruby>柔<rt>やわ</rt></ruby>らかく」というのは、どのくらいの<ruby>力<rt>ちから</rt></ruby>ですか？<br>*(Cái câu anh Sakurai nói "cổ tay mềm" ấy, là lực cỡ nào ạ?)* |
| Thái | いい<ruby>質問<rt>しつもん</rt></ruby>だね。<ruby>言葉<rt>ことば</rt></ruby>では<ruby>説明<rt>せつめい</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい。<ruby>明日<rt>あした</rt></ruby>、<ruby>実際<rt>じっさい</rt></ruby>に<ruby>砥石<rt>といし</rt></ruby>を<ruby>持<rt>も</rt></ruby>って、<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>手<rt>て</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えてもらうのが<ruby>一番<rt>いちばん</rt></ruby>だよ。<br>*(Câu hỏi tốt. Khó tả bằng lời. Mai cầm thực tế viên đá mài, để anh Sakurai đặt tay lên tay em là tốt nhất.)* |
| Hùng | すみません、「<ruby>放電加工<rt>ほうでんかこう</rt></ruby>」がよく<ruby>分<rt>わ</rt></ruby>かりませんでした。<br>*(Xin lỗi, "houden kakou" em chưa hiểu rõ ạ.)* |
| Thái | <ruby>電気<rt>でんき</rt></ruby>のスパークで<ruby>金属<rt>きんぞく</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>溶<rt>と</rt></ruby>かす<ruby>技術<rt>ぎじゅつ</rt></ruby>です。<ruby>細<rt>こま</rt></ruby>かい<ruby>形<rt>かたち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るときに<ruby>使<rt>つか</rt></ruby>います。<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>実物<rt>じつぶつ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せます。<br>*(Là kỹ thuật dùng tia lửa điện làm tan kim loại từng chút một. Dùng khi tạo hình nhỏ tinh xảo. Tuần sau anh cho xem thực tế.)* |
| Adi | タイ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>寮<rt>りょう</rt></ruby>の<ruby>洗濯機<rt>せんたくき</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Sempai Thái, anh chỉ em cách dùng máy giặt ký túc được không ạ?)* |
| Thái | もちろん。<ruby>仕事<rt>しごと</rt></ruby><ruby>後<rt>あと</rt></ruby>、<ruby>寮<rt>りょう</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。コインランドリーで、<ruby>洗濯<rt>せんたく</rt></ruby>が<ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>乾燥<rt>かんそう</rt></ruby>がもう<ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>だよ。<br>*(Tất nhiên. Sau giờ làm về ký túc cùng xem nhé. Là máy xu, giặt 200 yên, sấy thêm 200 yên.)* |
| Adi | ありがとうございます！<br>*(Em cảm ơn ạ!)* |

---

## Tình huống 8 — Văn phòng cấp trên · 18:00, báo cáo tiến độ ngày đầu hướng dẫn

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>たち、<ruby>順調<rt>じゅんちょう</rt></ruby>？<br>*(Tai-kun, vất vả rồi. Ba bạn kohai vẫn ổn chứ?)* |
| Thái | はい、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>んでいます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>工場<rt>こうじょう</rt></ruby><ruby>案内<rt>あんない</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>、<ruby>磨<rt>みが</rt></ruby>きの<ruby>見学<rt>けんがく</rt></ruby>まで<ruby>終<rt>お</rt></ruby>わりました。<br>*(Vâng, anh vất vả rồi. Đang tiến triển thuận lợi ạ. Hôm nay em đã hoàn tất tham quan xưởng, đào tạo an toàn, và quan sát công đoạn mài.)* |
| Sakurai | いいね。<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>はどう？<br>*(Tốt. Tình trạng ba bạn thế nào?)* |
| Thái | ロンとフンは<ruby>真面目<rt>まじめ</rt></ruby>で、<ruby>質問<rt>しつもん</rt></ruby>もたくさんしてくれます。アディさんはSSW1で<ruby>経験<rt>けいけん</rt></ruby>があるので、<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みが<ruby>早<rt>はや</rt></ruby>いです。<br>*(Long và Hùng nghiêm túc, hỏi nhiều. Anh Adi là SSW1 có kinh nghiệm rồi nên tiếp thu nhanh.)* |
| Sakurai | <ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>君<rt>きみ</rt></ruby><ruby>自身<rt>じしん</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>すでしょ？<br>*(Cậu lại nhớ chính mình của bốn năm trước nhỉ?)* |
| Thái | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>します。サイクルが<ruby>続<rt>つづ</rt></ruby>いていくんですね。<br>*(Vâng, em đúng là nhớ lại. Vòng tròn cứ thế tiếp diễn nhỉ.)* |
| Sakurai | そうだね。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>には<ruby>彼<rt>かれ</rt></ruby>らも<ruby>指導員<rt>しどういん</rt></ruby>になっているはずだよ。<br>*(Đúng vậy. Năm năm nữa chắc chắn các em ấy cũng sẽ thành 指導員.)* |
| Thái | はい。<ruby>明日<rt>あした</rt></ruby>は<ruby>磨<rt>みが</rt></ruby>きの<ruby>実技<rt>じつぎ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Mai em bắt đầu hướng dẫn thực hành mài. Anh Sakurai, mong anh tiếp tục giúp đỡ ạ.)* |
| Sakurai | こちらこそ。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Tôi mới phải cảm ơn. Cùng cố gắng.)* |

---

## Tình huống 9 — Phòng 201 ký túc · 21:00, gọi điện về cho Mai (scene tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, qua video call) Anh ơi, hôm nay đi làm thế nào? Em nghe nói anh được giao việc gì mới? |
| Thái | (tiếng Việt) Ừ em. Hôm nay ông Tanaka giao anh làm 指導員 — tức là người hướng dẫn cho ba bạn kohai mới. Hai bạn Việt Nam là Long với Hùng, một bạn Indonesia tên Adi. |
| Mai | (tiếng Việt) Oa, anh thành sempai chính thức rồi! |
| Thái | (tiếng Việt) Ừ. Mà buồn cười lắm, thằng Adi quê gần chỗ Putra ở Indonesia. Còn biết Putra mở công ty sửa khuôn ở Jakarta. Thế giới nhỏ thật. |
| Mai | (tiếng Việt) Vậy anh hướng dẫn các bạn ấy thế nào? |
| Thái | (tiếng Việt) Sáng anh dẫn tham quan xưởng, giải thích MC với EDM. Anh khuyên Long Hùng ba điều: học CAD ngoài giờ, thi 機械加工技能士 cấp 3 trong năm đầu, lấy N3 trong một năm rưỡi. |
| Mai | (tiếng Việt) Y hệt anh ngày xưa mẹ kể. |
| Thái | (tiếng Việt) Đúng rồi. Anh kể với anh Sakurai là sáng nay anh thấy lại chính mình của bốn năm trước. Vòng tròn cứ thế tiếp diễn — サイクル, người Nhật gọi vậy. |
| Mai | (tiếng Việt) Năm sau anh về Việt Nam ăn cưới chứ? |
| Thái | (tiếng Việt) Ừ, hết visa lần 2 anh về. Em đợi thêm tí nữa. |
| Mai | (tiếng Việt) Em đợi. Anh ngủ sớm đi, mai còn dạy các em. |

---

## Tình huống 10 — Phòng 201 · 22:30, viết nhật ký bằng tiếng Việt

> Scene tiếng Việt — nhật ký cuối ngày, giữ mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, viết nhật ký) Tháng 8/2026. Ngày đầu làm 指導員. Ba kohai: Long, Hùng từ Hà Nội. Adi từ Indonesia, quê gần chỗ Putra. |
| Thái | (tiếng Việt) Hôm nay mình nói lại y hệt những gì Tanaka và Sakurai từng nói với mình bốn năm trước: 安全靴, 着用, 報連相, 分からないことは必ず聞く. |
| Thái | (tiếng Việt) Vòng tròn bốn năm — mình thành người mà Tanaka đã từng là với mình. |
| Thái | (tiếng Việt) Còn một năm visa nữa. Năm thứ năm đang đến gần. Mai phải dạy Long Hùng cầm 砥石. |

---

## Đọng lại chương 11

Ngày đầu làm sempai, Thái học được các mẫu câu của vai 指導員 trong công ty Nhật: **nhận chỉ thị giao nhiệm vụ** (お任せします → 承知しました・精一杯頑張ります), **tự giới thiệu bản thân với kohai** (〜の指導を担当します・4年目の設計補助です), **dẫn tham quan và giải thích thiết bị** (こちらが〜・〜の略です・〜から始めます), **giải thích quy tắc an toàn** (必ず着用します・声をかけます), **khuyên kohai lộ trình nghề** (〜したほうがいい・〜を目指す・道は一つじゃない), **hỏi lại kohai chỗ chưa hiểu** (分からないところはありますか・遠慮なく聞いてください), và **báo cáo tiến độ với cấp trên** (順調に進んでいます・〜まで終わりました・引き続きお願いします). Đồng thời nhận ra triết lý lớn của nghề: **サイクル** — đàn anh từng dạy mình thế nào, mình dạy đàn em y như vậy, và năm năm nữa các em ấy cũng sẽ đứng ở chỗ mình bây giờ.

> Từ vựng & mẫu câu chương này: 指導員・新人・到着・お任せします・承知しました・オンボーディング・案内・安全教育・着用・安全靴・ヘルメット・機械加工室・マシニングセンター・放電加工・仕上げ室・磨き・砥石・手首を柔らかく・一方向・技能士・機械加工技能士・創業・修理会社・順調・引き続き・報連相・サイクル・5年後・〜というのは・〜を目指す・遠慮なく聞いてください', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (817000012, 800000017, NULL, 'markdown_book', 'T12. Khép lại bốn năm — ứng viên trưởng nhóm (4年経過)', '# Sách kỹ sư khuôn đúc · T12. Khép lại bốn năm — ứng viên trưởng nhóm (4年経過)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Hà Nội) bước vào buổi đánh giá cuối năm tài khoá thứ tư tại みなみ精密金型. Học các mẫu hội thoại tiếng Nhật ngữ cảnh đánh giá nhân sự cuối kỳ và bàn giao thế hệ: nghe cấp trên tổng kết 実績 (thành tích) bằng kính ngữ, đáp nhận quyết định bổ nhiệm 係長 (任命する・拝命する), xác nhận lại lương + chế độ mới (〜ということでよろしいでしょうか), hỏi lại lễ phép về kế hoạch năm sau (〜について教えていただけますか), trình bày cam kết trước đàn anh đã 嘱託 (引き続きご指導お願いします), quan sát cách 工場長 mới chuyển giao trách nhiệm với 嘱託 cũ, và động viên hậu bối bằng câu chốt cấp trưởng nhóm.

---

## Bối cảnh

Tháng 10 năm 2026, đầu kỳ năm tài khoá mới. Tanaka đã nghỉ hưu chính thức từ 30/9, quay lại với tư cách 嘱託 (cộng tác viên cao cấp). Kawakami chính thức lên 工場長 từ 1/10. Buổi 面接評価 (phỏng vấn đánh giá) cuối năm 4 quyết định Thái lên 設計係長 từ 1/11, lương 32 vạn yên. Trình độ tiếng Nhật của Thái đã ổn định N2. Chương này tập trung các mẫu câu kính ngữ ngữ cảnh tổng kết - bổ nhiệm - bàn giao thế hệ trong công ty Nhật, cùng cách đáp lễ khi nhận chức vụ và lúc đàn anh chuyển vai trò.

---

## Tình huống 1 — Phòng họp tầng 2 · 14:00, nghe cấp trên tổng kết thành tích năm

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>4<rt>よ</rt></ruby><ruby>年<rt>ねん</rt></ruby>が<ruby>経<rt>た</rt></ruby>ちましたね。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>年度末<rt>ねんどまつ</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Anh Thái, vậy là đã bốn năm. Hôm nay chúng ta bắt đầu buổi phỏng vấn đánh giá cuối kỳ.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em mong được anh chỉ bảo ạ.)* |
| Tanaka | （<ruby>嘱託<rt>しょくたく</rt></ruby>として<ruby>同席<rt>どうせき</rt></ruby>します）<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Tham dự với tư cách cộng tác viên. Xin phép.)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>も<ruby>同席<rt>どうせき</rt></ruby>いただきありがとうございます。<br>*(Anh Tanaka, hôm nay anh lại dự cùng, em xin cảm ơn.)* |
| Kawakami | では、<ruby>4<rt>よ</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>実績<rt>じっせき</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>3D<rt>スリーディー</rt></ruby> CAD <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>再<rt>さい</rt></ruby>チャレンジで<ruby>合格<rt>ごうかく</rt></ruby>しましたね。<br>*(Vậy, tôi xác nhận thành tích năm thứ tư. Em đã đỗ 3D CAD bậc 1 ở vòng thi lại.)* |
| Thái | はい、<ruby>二度目<rt>にどめ</rt></ruby>の<ruby>挑戦<rt>ちょうせん</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>することができました。<br>*(Vâng, em đã đỗ ở lần thử thứ hai ạ.)* |
| Kawakami | <ruby>浜田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>案件<rt>あんけん</rt></ruby>は、<ruby>初<rt>はじ</rt></ruby>めてのリードでしたが<ruby>納期内<rt>のうきない</rt></ruby>に<ruby>仕<rt>し</rt></ruby><ruby>上<rt>あ</rt></ruby>げました。<ruby>客先<rt>きゃくさき</rt></ruby>からの<ruby>評価<rt>ひょうか</rt></ruby>も<ruby>高<rt>たか</rt></ruby>かったですよ。<br>*(Dự án của khách Hamada, là lần đầu em làm chủ trì nhưng đã giao đúng hạn. Khách hàng cũng đánh giá cao.)* |
| Thái | <ruby>先輩<rt>せんぱい</rt></ruby><ruby>方<rt>がた</rt></ruby>のサポートのおかげです。ありがとうございます。<br>*(Là nhờ các đàn anh hỗ trợ ạ. Em xin cảm ơn.)* |
| Kawakami | ダイカストの<ruby>初<rt>はつ</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>、<ruby>初<rt>はつ</rt></ruby><ruby>出張<rt>しゅっちょう</rt></ruby>、それに<ruby>後輩<rt>こうはい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby><ruby>開始<rt>かいし</rt></ruby> — <ruby>多<rt>おお</rt></ruby>くの<ruby>初<rt>はじ</rt></ruby>めてを<ruby>経験<rt>けいけん</rt></ruby>した<ruby>一年<rt>いちねん</rt></ruby>でしたね。<br>*(Lần đầu làm diecast, chuyến công tác đầu tiên, bắt đầu hướng dẫn ba đàn em — một năm đầy "lần đầu" nhỉ.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>充実<rt>じゅうじつ</rt></ruby>した<ruby>一年<rt>いちねん</rt></ruby>でした。<br>*(Quả thật là một năm đầy đặn ạ.)* |

---

## Tình huống 2 — Phòng họp tầng 2 · 14:30, đáp nhận quyết định bổ nhiệm 係長

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>本題<rt>ほんだい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>より、タイ<ruby>君<rt>くん</rt></ruby>を<ruby>設計<rt>せっけい</rt></ruby><ruby>係長<rt>かかりちょう</rt></ruby>に<ruby>任命<rt>にんめい</rt></ruby>します。<br>*(Vào vấn đề chính. Từ tháng 11, tôi bổ nhiệm anh Thái làm trưởng nhóm thiết kế.)* |
| Thái | えっ、<ruby>係長<rt>かかりちょう</rt></ruby>でしょうか。<br>*(Dạ, là chức trưởng nhóm ạ?)* |
| Kawakami | はい、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>役職<rt>やくしょく</rt></ruby>です。<ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>28<rt>にじゅうはち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>から<ruby>32<rt>さんじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がります。<br>*(Vâng, là chức vụ chính thức. Lương cũng tăng từ 28 vạn lên 32 vạn yên.)* |
| Thái | <ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>32<rt>さんじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>ということでよろしいでしょうか。<br>*(Lương sẽ là 32 vạn yên, em xác nhận lại có đúng không ạ?)* |
| Kawakami | はい、そのとおりです。<ruby>基本給<rt>きほんきゅう</rt></ruby>に<ruby>役職手当<rt>やくしょくてあて</rt></ruby>が<ruby>加算<rt>かさん</rt></ruby>されます。<br>*(Vâng, đúng vậy. Lương cơ bản được cộng thêm phụ cấp chức vụ.)* |
| Tanaka | おめでとう、タイ<ruby>君<rt>くん</rt></ruby>。<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>センターでお<ruby>迎<rt>むか</rt></ruby>えしたあの<ruby>日<rt>ひ</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>します。<br>*(Chúc mừng em, anh Thái. Tôi nhớ lại cái ngày bốn năm trước đón em ở sân bay Centrair.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>深<rt>ふか</rt></ruby>く<ruby>下<rt>さ</rt></ruby>げる）<ruby>係長<rt>かかりちょう</rt></ruby>の<ruby>役<rt>やく</rt></ruby>、<ruby>謹<rt>つつし</rt></ruby>んで<ruby>拝命<rt>はいめい</rt></ruby>いたします。これまでのご<ruby>指導<rt>しどう</rt></ruby>に<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申<rt>もう</rt>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Cúi đầu thật sâu. Em xin trân trọng nhận chức 係長. Em chân thành cảm ơn sự dìu dắt của các anh từ trước tới nay.)* |
| Kawakami | <ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き、<ruby>会社<rt>かいしゃ</rt></ruby>のためによろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếp tục cố gắng vì công ty nhé.)* |
| Thái | はい、<ruby>身<rt>み</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>いです。<br>*(Vâng, em cảm thấy phải tự nhắc mình nghiêm túc hơn.)* |

---

## Tình huống 3 — Phòng họp tầng 2 · 15:00, hỏi lại lễ phép kế hoạch năm 5

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>5<rt>ご</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のプランについてお<ruby>話<rt>はな</rt></ruby>しします。<ruby>四<rt>よっ</rt></ruby>つあります。<br>*(Tôi nói về kế hoạch năm thứ năm. Có bốn việc.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mời anh ạ.)* |
| Kawakami | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、EV<ruby>電池<rt>でんち</rt></ruby>ケースの<ruby>金型<rt>かながた</rt></ruby>メガプロジェクトをリードしてもらいます。<br>*(Việc thứ nhất, em sẽ chủ trì dự án lớn về khuôn vỏ pin xe điện.)* |
| Thái | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、メガプロジェクトの<ruby>規模<rt>きぼ</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただけますか。<br>*(Em xin phép, anh giải thích giúp em quy mô của dự án lớn được không ạ?)* |
| Kawakami | <ruby>金額<rt>きんがく</rt></ruby>ベースで<ruby>3<rt>さん</rt></ruby><ruby>億<rt>おく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>規模<rt>きぼ</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby><ruby>14<rt>じゅうよん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby><ruby>過去最大<rt>かこさいだい</rt></ruby><ruby>規模<rt>きぼ</rt></ruby>です。<br>*(Quy mô 300 triệu yên, thời hạn 14 tháng. Là dự án lớn nhất từ trước đến nay của công ty.)* |
| Thái | <ruby>過去最大<rt>かこさいだい</rt></ruby><ruby>規模<rt>きぼ</rt></ruby>ということですね。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めて<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Là quy mô lớn nhất từ trước, em xin nhắc lại. Em sẽ siết tinh thần để làm.)* |
| Kawakami | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>金型<rt>かながた</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>受験<rt>じゅけん</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めてください。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>育成<rt>いくせい</rt></ruby>を<ruby>本格化<rt>ほんかくか</rt></ruby>します。<br>*(Thứ hai, em chuẩn bị thi 金型 bậc 1. Thứ ba, đào tạo ba đàn em đi vào chính thức.)* |
| Thái | <ruby>育成<rt>いくせい</rt></ruby>のKPIはどのように<ruby>設定<rt>せってい</rt></ruby>すればよろしいでしょうか。<br>*(KPI đào tạo em nên đặt như thế nào ạ?)* |
| Kawakami | <ruby>各人<rt>かくじん</rt></ruby><ruby>3D<rt>スリーディー</rt></ruby> CAD <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>取得<rt>しゅとく</rt></ruby>、それを<ruby>目標<rt>もくひょう</rt></ruby>にしましょう。<br>*(Mỗi người lấy được 3D CAD bậc 2 trong vòng một năm, lấy đó làm mục tiêu.)* |
| Kawakami | <ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ご<ruby>結婚<rt>けっこん</rt></ruby>と<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザの<ruby>手続<rt>てつづ</rt></ruby>きです。<ruby>会社<rt>かいしゃ</rt></ruby>としても<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Việc thứ tư, kết hôn và làm thủ tục visa 家族滞在. Công ty cũng sẽ ủng hộ.)* |
| Thái | ありがとうございます。<ruby>仕事<rt>しごと</rt></ruby>と<ruby>家庭<rt>かてい</rt></ruby>、<ruby>両立<rt>りょうりつ</rt></ruby>させていきます。<br>*(Em cảm ơn ạ. Em sẽ cố cân bằng công việc và gia đình.)* |

---

## Tình huống 4 — Phòng họp tầng 2 · 15:30, quan sát đàn anh 嘱託 bàn giao tinh thần

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>一言<rt>ひとこと</rt></ruby>いいですか。<br>*(Anh Thái, tôi nói một câu được không?)* |
| Thái | はい、<ruby>田中<rt>たなか</rt></ruby>さん、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mời anh Tanaka.)* |
| Tanaka | <ruby>私<rt>わたし</rt></ruby>は<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>で<ruby>定年退職<rt>ていねんたいしょく</rt></ruby>し、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>嘱託<rt>しょくたく</rt></ruby>として<ruby>週<rt>しゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>です。<br>*(Tôi đã nghỉ hưu chính thức tháng 9, từ tháng 10 quay lại với tư cách cộng tác viên, làm 3 ngày một tuần.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<br>*(Vâng, em đã biết ạ.)* |
| Tanaka | <ruby>係長<rt>かかりちょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は、<ruby>図面<rt>ずめん</rt></ruby>を<ruby>描<rt>か</rt></ruby>くことだけではありません。<ruby>部下<rt>ぶか</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>受<rt>う</rt></ruby>けることでもあります。<br>*(Công việc của 係長 không chỉ là vẽ bản vẽ. Còn là gánh thay lỗi của cấp dưới nữa.)* |
| Thái | （<ruby>姿勢<rt>しせい</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>す）はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Sửa lại tư thế ngồi. Vâng, em xin khắc cốt.)* |
| Tanaka | <ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>はキャビコアの<ruby>意味<rt>いみ</rt></ruby>も<ruby>知<rt>し</rt></ruby>らなかった。<ruby>今<rt>いま</rt></ruby>はメガプロジェクトをリードする<ruby>立場<rt>たちば</rt></ruby>になった。<br>*(Bốn năm trước, em còn không biết cavity-core là gì. Bây giờ em ở vị trí chủ trì dự án lớn.)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby>さんが<ruby>空港<rt>くうこう</rt></ruby>で<ruby>迎<rt>むか</rt></ruby>えてくださった<ruby>日<rt>ひ</rt></ruby>のことは<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Ngày anh ra sân bay đón em, cả đời em sẽ không quên.)* |
| Tanaka | <ruby>嘱託<rt>しょくたく</rt></ruby>でいる<ruby>間<rt>あいだ</rt></ruby>は、<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>はいつでも<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>陰<rt>かげ</rt></ruby>から<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Trong thời gian tôi còn là cộng tác viên, có khó khăn cứ gọi tôi bất kỳ lúc nào. Tôi sẽ hỗ trợ phía sau.)* |
| Thái | <ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きご<ruby>指導<rt>しどう</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Mong anh tiếp tục chỉ bảo cho em ạ.)* |

---

## Tình huống 5 — Văn phòng tầng 1 · 16:00, hỏi lại tổng vụ thủ tục 役職手当

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>佐々木<rt>ささき</rt></ruby>さん、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>からの<ruby>役職手当<rt>やくしょくてあて</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でお<ruby>伺<rt>うかが</rt></ruby>いします。<br>*(Chị Sasaki, em xin lỗi vì làm phiền lúc chị bận. Em hỏi việc phụ cấp chức vụ từ tháng 11 ạ.)* |
| Sasaki | はい、<ruby>係長<rt>かかりちょう</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>おめでとうございます。どんなご<ruby>質問<rt>しつもん</rt></ruby>ですか。<br>*(Vâng, chúc mừng em nhận chức trưởng nhóm. Em hỏi gì?)* |
| Thái | <ruby>役職手当<rt>やくしょくてあて</rt></ruby>というのは、<ruby>基本給<rt>きほんきゅう</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>に<ruby>支給<rt>しきゅう</rt></ruby>される<ruby>手当<rt>てあて</rt></ruby>ということでよろしいでしょうか。<br>*(Phụ cấp chức vụ, là khoản trợ cấp được chi trả riêng so với lương cơ bản, đúng không ạ?)* |
| Sasaki | そうです。<ruby>基本給<rt>きほんきゅう</rt></ruby>は<ruby>26<rt>にじゅうろく</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>役職手当<rt>やくしょくてあて</rt></ruby>が<ruby>6<rt>ろく</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>で、<ruby>合計<rt>ごうけい</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<br>*(Đúng vậy. Lương cơ bản 26 vạn, phụ cấp chức vụ 6 vạn, tổng cộng 32 vạn yên.)* |
| Thái | <ruby>残業手当<rt>ざんぎょうてあて</rt></ruby>は、<ruby>係長<rt>かかりちょう</rt></ruby>になっても<ruby>支給<rt>しきゅう</rt></ruby>されますか。<br>*(Phụ cấp tăng ca, lên 係長 vẫn được trả chứ ạ?)* |
| Sasaki | <ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>係長<rt>かかりちょう</rt></ruby>までは<ruby>残業手当<rt>ざんぎょうてあて</rt></ruby>の<ruby>対象<rt>たいしょう</rt></ruby>です。<ruby>課長<rt>かちょう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>は<ruby>管理職<rt>かんりしょく</rt></ruby><ruby>扱<rt>あつか</rt></ruby>いになります。<br>*(Công ty mình thì 係長 vẫn được tính tăng ca. Từ 課長 trở lên mới tính là cấp quản lý.)* |
| Thái | <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザの<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いしたいのですが、<ruby>来月<rt>らいげつ</rt></ruby>でもよろしいでしょうか。<br>*(Em cũng muốn nhờ chị làm giấy tờ xin visa 家族滞在, để tháng sau có được không ạ?)* |
| Sasaki | はい、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってからで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>のリストをメールでお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Được, sang tháng 11 cũng được. Tôi sẽ gửi mail danh sách giấy tờ cần thiết.)* |
| Thái | お<ruby>手数<rt>てすう</rt></ruby>をおかけしますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Phiền chị giúp em ạ.)* |

---

## Tình huống 6 — Sảnh nhà máy · 17:30, thông báo cho hậu bối và động viên

| Vai | Lời thoại |
|---|---|
| Adi | タイさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>面接<rt>めんせつ</rt></ruby>はどうでしたか。<br>*(Anh Thái, anh vất vả rồi. Buổi phỏng vấn thế nào ạ?)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさま、アディ<ruby>君<rt>くん</rt></ruby>。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby><ruby>係長<rt>かかりちょう</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めることになりました。<br>*(Vất vả rồi, Adi. Từ tháng 11 anh sẽ làm trưởng nhóm thiết kế.)* |
| Long | （ベトナム<ruby>語<rt>ご</rt></ruby>）<ruby>本当<rt>ほんとう</rt></ruby>ですか<ruby>兄<rt>あに</rt></ruby>さん！おめでとうございます！<br>*(Thật á anh! Chúc mừng anh!)* |
| Hùng | （ベトナム<ruby>語<rt>ご</rt></ruby>）すごい！<ruby>4<rt>よ</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>係長<rt>かかりちょう</rt></ruby>って<ruby>早<rt>はや</rt></ruby>いですよね？<br>*(Đỉnh thật! 4 năm lên 係長 là nhanh lắm đúng không?)* |
| Adi | <ruby>俺<rt>おれ</rt></ruby>もいつかタイさんみたいになりたいです。<ruby>何<rt>なに</rt></ruby>か<ruby>秘訣<rt>ひけつ</rt></ruby>はありますか。<br>*(Em cũng muốn một ngày được như anh Thái. Có bí quyết gì không ạ?)* |
| Thái | <ruby>秘訣<rt>ひけつ</rt></ruby>というほどではありませんが、<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>プトラ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わった<ruby>言葉<rt>ことば</rt></ruby>があります。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>くこと、それから<ruby>報連相<rt>ほうれんそう</rt></ruby>。これだけです。<br>*(Bí quyết thì không hẳn, nhưng có câu đàn anh Putra đã dạy anh 4 năm trước. Có gì không hiểu phải hỏi, sau đó là 報連相. Chỉ vậy thôi.)* |
| Adi | <ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>から<ruby>変<rt>か</rt></ruby>わらないんですね。<br>*(Từ 4 năm trước đến giờ không đổi nhỉ.)* |
| Thái | はい。<ruby>10<rt>じゅう</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>たちが<ruby>係長<rt>かかりちょう</rt></ruby>になる<ruby>番<rt>ばん</rt></ruby>です。その<ruby>時<rt>とき</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じ<ruby>言葉<rt>ことば</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Phải. 10 năm nữa đến lượt các em làm 係長. Lúc đó các em hãy truyền lại đúng những lời ấy cho đàn em mình.)* |
| Long, Hùng, Adi | はい！<br>*(Vâng ạ!)* |

---

## Tình huống 7 — Izakaya gần ga Anjo · 19:00, dự tiệc mừng + báo cáo đàn anh cũ

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>係長<rt>かかりちょう</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>おめでとう！<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Tai-kun, chúc mừng nhậm chức 係長! Cạn ly!)* |
| Thái | <ruby>乾杯<rt>かんぱい</rt></ruby>！<ruby>皆<rt>みな</rt></ruby>さん、ありがとうございます。<br>*(Cạn ly! Mọi người, em cảm ơn ạ.)* |
| Tanaka | （<ruby>嘱託<rt>しょくたく</rt></ruby>として<ruby>参加<rt>さんか</rt></ruby>）<ruby>誇<rt>ほこ</rt></ruby>らしい<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Dự với tư cách cộng tác viên. Tôi cảm thấy tự hào.)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Anh Tanaka, hôm nay anh đến em xin cảm ơn ạ.)* |
| Sakurai | プトラから「タイ<ruby>君<rt>くん</rt></ruby>によろしく」と<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>来<rt>き</rt></ruby>ましたよ。<br>*(Putra nhắn rằng "gửi lời chúc tới Tai-kun".)* |
| Thái | プトラ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>覚<rt>おぼ</rt></ruby>えていてくれたんですね。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Anh Putra vẫn nhớ em. Em vui quá.)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>係長<rt>かかりちょう</rt></ruby>として<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>何<rt>なん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>いますか。<br>*(Tai-kun, em nghĩ việc đầu tiên với tư cách 係長 là gì?)* |
| Thái | <ruby>後輩<rt>こうはい</rt></ruby>3<ruby>名<rt>めい</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>と<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えて、<ruby>一人<rt>ひとり</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>と<ruby>面談<rt>めんだん</rt></ruby>することかと<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Em nghĩ là nhớ mặt và tên ba đàn em, rồi gặp riêng từng người một ạ.)* |
| Kawakami | いい<ruby>答<rt>こた</rt></ruby>えですね。<ruby>人<rt>ひと</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かすには、まず<ruby>人<rt>ひと</rt></ruby>を<ruby>知<rt>し</rt></ruby>ること。<ruby>正解<rt>せいかい</rt></ruby>です。<br>*(Câu trả lời hay. Muốn điều người thì phải biết người trước. Chuẩn rồi.)* |

---

## Tình huống 8 — Phòng 201 · 22:00, gọi điện cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua tiếng Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, video) Anh ơi, phỏng vấn xong chưa? |
| Thái | (tiếng Việt) Xong rồi em. Anh chính thức lên 設計係長 — trưởng nhóm thiết kế — từ 1/11. Lương 32 vạn yên một tháng. |
| Mai | (tiếng Việt) Trời ơi, mừng quá! Em đợi tin từ chiều giờ. |
| Thái | (tiếng Việt) Anh Kawakami giao cho anh dự án lớn — メガプロジェクト khuôn vỏ pin xe điện. 300 triệu yên, 14 tháng. Là dự án to nhất của công ty từ trước đến giờ. |
| Mai | (tiếng Việt) To vậy à! Anh có lo không? |
| Thái | (tiếng Việt) Lo chứ, nhưng anh Tanaka — ông trưởng nhà máy cũ đã nghỉ hưu — bảo có khó cứ gọi. Ông quay lại làm 嘱託, kiểu cộng tác viên ấy, ba ngày một tuần. |
| Mai | (tiếng Việt) Tử tế thật. Còn đám cưới với visa thì sao anh? |
| Thái | (tiếng Việt) Chị Sasaki tổng vụ nói tháng 11 bắt đầu làm hồ sơ 家族滞在 cho em. Tết 2027 mình tổ chức ở nhà như đã hẹn. |
| Mai | (tiếng Việt) Em đã đặt áo dài rồi. Còn 8 tháng nữa thôi. |
| Thái | (tiếng Việt) Ừ, 8 tháng. Năm 5 anh chỉ còn 4 việc: dự án EV, thi 金型 1 級, đào tạo ba đứa Long-Hùng-Adi, và visa cho em. Khép lại đẹp rồi nhỉ. |
| Mai | (tiếng Việt) Anh giỏi quá. Ngủ ngon đi anh, mai dậy sớm. |

---

## Tình huống 9 — Phòng 201 · 23:30, viết nhật ký reflect bằng tiếng Việt

> Scene tiếng Việt — Thái viết sổ tay riêng, ôn lại từ vựng JP đã học.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nhật ký) 15/10/2026. Tròn 53 tháng ở Nhật. Nhìn lại năm thứ tư: |
| Thái | (tiếng Việt) - Đỗ 3D CAD 1 級 ở lần thi lại. |
| Thái | (tiếng Việt) - Lead khuôn cho khách Hamada lần đầu, đúng 納期. |
| Thái | (tiếng Việt) - Lần đầu làm diecast, lần đầu 出張 công tác. |
| Thái | (tiếng Việt) - Putra về Indonesia. Tanaka 定年退職, quay lại làm 嘱託. Kawakami lên 工場長 chính thức. |
| Thái | (tiếng Việt) - Nhận hướng dẫn 3 hậu bối: Long, Hùng, Adi. |
| Thái | (tiếng Việt) - Mai sang chơi, anh cầu hôn chính thức. |
| Thái | (tiếng Việt) - Hôm nay 拝命 chức 設計係長. Lương 32 vạn yên. 役職手当 6 vạn. |
| Thái | (tiếng Việt) Năm 5 — năm cuối visa kỹ sư — chỉ còn 4 mảnh: メガプロジェクト EV, thi 金型 1 級, đào tạo cohort, kết hôn + 家族滞在. |
| Thái | <ruby>頑張<rt>がんば</rt></ruby>るぞ。<br>*(Cố lên thôi.)* |

---

## Đọng lại chương 12

Buổi đánh giá cuối năm 4 dồn vào một ngày những mẫu câu kính ngữ ngữ cảnh nhân sự cấp trưởng nhóm mà người sang Nhật năm năm phải dùng được. Thái học **nghe tổng kết 実績** từ cấp trên (〜を確認します・〜を経験した一年でしたね), **đáp nhận quyết định bổ nhiệm** (謹んで拝命いたします・身の引き締まる思いです), **xác nhận lại lương + chế độ** (〜ということでよろしいでしょうか), **hỏi lại lễ phép về kế hoạch năm sau** (〜について教えていただけますか・KPIはどのように設定すれば), **đáp lễ với 嘱託 cũ** (引き続きご指導のほどよろしくお願い申し上げます・肝に銘じます), **trao đổi tổng vụ về 役職手当 + 家族滞在ビザ** (基本給と役職手当の合計・申請書類), và **động viên hậu bối** bằng đúng câu năm xưa Putra trao cho mình (分からないことは必ず聞く・報連相). Năm thứ tư khép lại với chức **設計係長**, lương **32万円**, và mạch truyện chốt sang năm 5 cuối — メガプロジェクト EV, thi 金型 1 級, đào tạo cohort, cưới Mai + 家族滞在.

> Từ vựng & mẫu câu chương này: 4年経過・年度末・評価面接・実績・嘱託・同席・設計係長・任命する・拝命する・役職・基本給・役職手当・残業手当・管理職・課長・メガプロジェクト・EV電池ケース・3億円規模・納期・金型1級・後輩育成・KPI・家族滞在ビザ・申請書類・定年退職・週3日勤務・肝に銘じる・身の引き締まる思い・〜ということでよろしいでしょうか・〜について教えていただけますか・謹んで拝命いたします・引き続きご指導のほどよろしくお願い申し上げます・お手数をおかけしますが

## Bí quyết chương

- **Closure năm 4**: tổng kết đủ 8 milestones năm thứ tư (CAD 1 級, Hamada lead, diecast, công tác, kohai, cầu hôn, 嘱託 chuyển giao, lên 係長).
- **Setup năm 5**: 4 mảnh khép lại — メガプロジェクト EV, 金型 1 級, đào tạo cohort, kết hôn + 家族滞在.
- **Đối xứng T1↔T12**: Tanaka đón sân bay năm 0 → Tanaka 嘱託 chứng kiến học trò lên 係長 năm 4. Câu Putra dạy năm 0 (聞く + 報連相) → Thái dạy lại cho Adi năm 4.
- **Lương**: 28 vạn → 32 vạn (basic 26 + 役職手当 6). Vẫn được tăng ca vì 係長 chưa phải 管理職.

> *"15/10/2026. 53 tháng. 設計係長. 32 vạn yên. Năm 5 khép lại — 4 mảnh cuối."*', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
