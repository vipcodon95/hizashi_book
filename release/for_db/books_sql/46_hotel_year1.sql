-- Hizashi LITE book SQL — Trang Y1 — TTS Khách sạn năm 1 (ryokan Kyoto)
-- curriculum_id = 800000046  (book_seq=46)
-- nguồn: books/46_hotel_year1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000046, 'N4', 'markdown_book', 'Khách sạn', 'Trang Y1 — TTS Khách sạn năm 1 (ryokan Kyoto)', 'Bộ sách Hizashi — Trang Y1 — TTS Khách sạn năm 1 (ryokan Kyoto)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000001, 800000046, NULL, 'markdown_book', 'T1. Ngày đầu đặt chân tới Nhật (来日・京都へ)', '# Sách thực tập sinh khách sạn · T1. Ngày đầu đặt chân tới Nhật (来日・京都へ)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, có kinh nghiệm phục vụ nhà hàng VN) sang Nhật làm thực tập sinh tại ryokan truyền thống Higashiyama, Kyoto. Học các mẫu hội thoại tiếng Nhật ngày đầu nhập cảnh: trả lời 入管 sân bay Kansai, hỏi đường mua vé tàu shinkansen, hỏi nhân viên trên tàu, chào hỏi 女将 (Okami) đón tại ga Kyoto, hỏi lại lễ phép khi chưa hiểu (〜というのは?), tự giới thiệu khi tới ryokan.

---

## Bối cảnh

Ngày 5 tháng 4 năm 2025. Trang vào làm tại **旅館 東山** ở khu Higashiyama, Kyoto — ryokan truyền thống 80 năm tuổi với 12 phòng khách. Trình độ tiếng Nhật N5. Chương này tập trung các mẫu câu giao tiếp đầu tiên ngày đặt chân tới Nhật: trả lời cục xuất nhập cảnh ở Kansai, hỏi mua vé shinkansen Haruka/Nozomi, chào hỏi 女将 đón ga Kyoto, hỏi lại từ chuyên ngành ryokan trên xe taxi, và chốt mạch nhân vật qua cảnh tiếng Việt gọi điện về Huế cuối ngày.

---

## Tình huống 1 — Quầy 入管 sân bay Kansai · 13:00, trả lời cục xuất nhập cảnh

| Vai | Lời thoại |
|---|---|
| 入管 | パスポートとビザを<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho xem hộ chiếu và visa.)* |
| Trang | （パスポートを<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<br>*(Đưa hộ chiếu. Vâng, đây ạ.)* |
| 入管 | <ruby>滞在<rt>たいざい</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Mục đích lưu trú là gì?)* |
| Trang | <ruby>就労<rt>しゅうろう</rt></ruby>です。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Đi làm ạ. Em làm việc tại ryokan ở Kyoto.)* |
| 入管 | どのくらい<ruby>日本<rt>にほん</rt></ruby>に<ruby>滞在<rt>たいざい</rt></ruby>しますか？<br>*(Lưu trú ở Nhật bao lâu?)* |
| Trang | <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>のビザです。<br>*(3 năm ạ. Visa thực tập kỹ năng.)* |
| 入管 | はい、わかりました。<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>渡<rt>わた</rt></ruby>します。<ruby>住所<rt>じゅうしょ</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>登録<rt>とうろく</rt></ruby>してください。<br>*(Vâng, rõ rồi. Tôi đưa thẻ cư trú. Địa chỉ sau hãy đăng ký ở uỷ ban thành phố.)* |
| Trang | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| 入管 | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Anh chị vất vả rồi.)* |
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |

---

## Tình huống 2 — Quầy JR sân bay Kansai · 14:00, mua vé tàu shinkansen

*Trang kéo vali ra khỏi cửa nhập cảnh. 女将 dặn trước qua tin nhắn: "Đi tàu Haruka đến ga Kyoto, đừng đi Nozomi vì không thuận."*

| Vai | Lời thoại |
|---|---|
| Trang | すみません、<ruby>京都<rt>きょうと</rt></ruby><ruby>駅<rt>えき</rt></ruby>まで<ruby>行<rt>い</rt></ruby>きたいです。<br>*(Xin lỗi, em muốn đi đến ga Kyoto ạ.)* |
| Nhân viên JR | はい。「はるか」という<ruby>特急<rt>とっきゅう</rt></ruby>が<ruby>便利<rt>べんり</rt></ruby>ですよ。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Vâng. Tàu tốc hành "Haruka" tiện lắm. Mất 1 tiếng 20 phút.)* |
| Trang | すみません、「<ruby>特急<rt>とっきゅう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "tokkyuu" nghĩa là gì ạ?)* |
| Nhân viên JR | <ruby>速<rt>はや</rt></ruby>い<ruby>電車<rt>でんしゃ</rt></ruby>です。<ruby>普通<rt>ふつう</rt></ruby>の<ruby>電車<rt>でんしゃ</rt></ruby>より<ruby>料金<rt>りょうきん</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<br>*(Là tàu nhanh. Giá cao hơn tàu thường.)* |
| Trang | なるほど。<ruby>片道<rt>かたみち</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em hiểu rồi. Cho em một vé một chiều ạ.)* |
| Nhân viên JR | <ruby>指定席<rt>していせき</rt></ruby>ですか、<ruby>自由席<rt>じゆうせき</rt></ruby>ですか？<br>*(Ghế chỉ định hay ghế tự do?)* |
| Trang | え...すみません、<ruby>意味<rt>いみ</rt></ruby>がわかりません。<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Ơ... em xin lỗi, em không hiểu. Cô giải thích giúp em ạ.)* |
| Nhân viên JR | <ruby>指定席<rt>していせき</rt></ruby>は<ruby>席<rt>せき</rt></ruby>が<ruby>決<rt>き</rt></ruby>まっています。<ruby>自由席<rt>じゆうせき</rt></ruby>は<ruby>空<rt>あ</rt></ruby>いている<ruby>席<rt>せき</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>ります。<br>*(Ghế chỉ định là ghế đã định sẵn. Ghế tự do là ngồi vào ghế còn trống.)* |
| Trang | では、<ruby>指定席<rt>していせき</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>荷物<rt>にもつ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいですから。<br>*(Vậy cho em ghế chỉ định ạ. Vì hành lý em to.)* |
| Nhân viên JR | <ruby>3,640<rt>さんぜんろっぴゃくよんじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>5<rt>ご</rt></ruby><ruby>番<rt>ばん</rt></ruby>ホームから<ruby>14<rt>じゅうよん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>の<ruby>発車<rt>はっしゃ</rt></ruby>です。<br>*(3.640 yên. Khởi hành lúc 14h30 từ sân ga số 5.)* |
| Trang | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 3 — Trên tàu Haruka · 14:45, người ngồi cạnh hỏi chuyện

| Vai | Lời thoại |
|---|---|
| Bà cụ Nhật | お<ruby>嬢<rt>じょう</rt></ruby>さん、どちらから<ruby>来<rt>き</rt></ruby>ましたか？<br>*(Cháu gái, cháu đến từ đâu?)* |
| Trang | あ、ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(À, cháu đến từ Việt Nam ạ.)* |
| Bà cụ Nhật | あら、ベトナム！<ruby>旅行<rt>りょこう</rt></ruby>ですか？<br>*(Ôi, Việt Nam! Đi du lịch hả?)* |
| Trang | いいえ、<ruby>仕事<rt>しごと</rt></ruby>です。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Không ạ, đi làm ạ. Cháu làm việc tại ryokan ở Kyoto.)* |
| Bà cụ Nhật | <ruby>旅館<rt>りょかん</rt></ruby>ですか、いいですね！どこの<ruby>旅館<rt>りょかん</rt></ruby>ですか？<br>*(Ryokan hả, hay quá! Ryokan ở đâu vậy?)* |
| Trang | <ruby>東山<rt>ひがしやま</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby><ruby>東山<rt>ひがしやま</rt></ruby>です。<br>*(Ryokan Higashiyama ở Higashiyama ạ.)* |
| Bà cụ Nhật | あ、<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>旅館<rt>りょかん</rt></ruby>ですね。<ruby>女将<rt>おかみ</rt></ruby>さんはとても<ruby>厳<rt>きび</rt></ruby>しいですが、<ruby>優<rt>やさ</rt></ruby>しい<ruby>方<rt>かた</rt></ruby>ですよ。<br>*(À, ryokan nổi tiếng đấy. Bà chủ tuy nghiêm khắc nhưng tốt bụng lắm.)* |
| Trang | すみません、「<ruby>女将<rt>おかみ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "Okami" nghĩa là gì ạ?)* |
| Bà cụ Nhật | <ruby>旅館<rt>りょかん</rt></ruby>の<ruby>女<rt>おんな</rt></ruby>の<ruby>主人<rt>しゅじん</rt></ruby>です。<ruby>社長<rt>しゃちょう</rt></ruby>みたいな<ruby>人<rt>ひと</rt></ruby>。<br>*(Là người chủ nữ của ryokan. Giống như giám đốc.)* |
| Trang | なるほど、<ruby>女<rt>おんな</rt></ruby>の<ruby>社長<rt>しゃちょう</rt></ruby>さんですね。ありがとうございます。<br>*(Ra vậy, là nữ giám đốc ạ. Cháu cảm ơn bà.)* |
| Bà cụ Nhật | <ruby>頑張<rt>がんば</rt></ruby>ってくださいね。<br>*(Cố gắng nhé.)* |

---

## Tình huống 4 — Trên tàu · 15:30, hỏi nhân viên về việc xuống tàu

| Vai | Lời thoại |
|---|---|
| Trang | すみません、<ruby>次<rt>つぎ</rt></ruby>の<ruby>駅<rt>えき</rt></ruby>は<ruby>京都<rt>きょうと</rt></ruby>ですか？<br>*(Xin lỗi, ga tiếp theo là Kyoto ạ?)* |
| Nhân viên tàu | はい、<ruby>次<rt>つぎ</rt></ruby>が<ruby>終点<rt>しゅうてん</rt></ruby>の<ruby>京都<rt>きょうと</rt></ruby><ruby>駅<rt>えき</rt></ruby>です。<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらいで<ruby>着<rt>つ</rt></ruby>きます。<br>*(Vâng, ga tiếp theo là ga cuối Kyoto. Khoảng 10 phút nữa là đến.)* |
| Trang | <ruby>出口<rt>でぐち</rt></ruby>は<ruby>左<rt>ひだり</rt></ruby>ですか、<ruby>右<rt>みぎ</rt></ruby>ですか？<br>*(Cửa ra ở bên trái hay bên phải ạ?)* |
| Nhân viên tàu | <ruby>進行<rt>しんこう</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>の<ruby>右側<rt>みぎがわ</rt></ruby>です。<br>*(Phía bên phải theo hướng đi.)* |
| Trang | <ruby>中央口<rt>ちゅうおうぐち</rt></ruby>はどちらですか？<ruby>迎<rt>むか</rt></ruby>えの<ruby>人<rt>ひと</rt></ruby>が<ruby>待<rt>ま</rt></ruby>っています。<br>*(Cửa trung tâm ở phía nào ạ? Có người đến đón em.)* |
| Nhân viên tàu | <ruby>改札<rt>かいさつ</rt></ruby>を<ruby>出<rt>で</rt></ruby>たら、<ruby>看板<rt>かんばん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。「<ruby>中央口<rt>ちゅうおうぐち</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Ra khỏi cửa soát vé thì nhìn bảng chỉ dẫn. Có ghi "Cửa trung tâm".)* |
| Trang | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 5 — Ga Kyoto · 16:00, gặp 女将 Sato lần đầu

*Trang ra khỏi cửa soát vé, kéo vali tìm bảng "Cửa trung tâm". Một phụ nữ Nhật khoảng 55 tuổi mặc kimono màu xanh đậm, cầm bảng giấy ghi "チャン・ティ・チャン<ruby>様<rt>さま</rt></ruby>".*

| Vai | Lời thoại |
|---|---|
| Okami Sato | チャンさん、こちらです！<br>*(Cô Trang, đây ạ!)* |
| Trang | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）あの、<ruby>佐藤<rt>さとう</rt></ruby><ruby>女将<rt>おかみ</rt></ruby>でいらっしゃいますか？<br>*(Cúi đầu. Dạ, có phải cô là bà chủ Sato không ạ?)* |
| Okami Sato | はい、<ruby>佐藤<rt>さとう</rt></ruby>です。チャンさん、ようこそ<ruby>日本<rt>にほん</rt></ruby>へ。<ruby>京都<rt>きょうと</rt></ruby>へようこそ。<br>*(Vâng, Sato đây. Cô Trang, hoan nghênh đến Nhật. Hoan nghênh đến Kyoto.)* |
| Trang | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu sâu. Rất hân hạnh. Em tên là Nguyễn Thị Trang. Mong cô chỉ bảo ạ.)* |
| Okami Sato | <ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Đường dài vất vả rồi. Em có khoẻ không?)* |
| Trang | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ありがとうございます。<br>*(Vâng, em vẫn khoẻ ạ. Em cảm ơn cô.)* |
| Okami Sato | お<ruby>荷物<rt>にもつ</rt></ruby>はそれだけですか？<br>*(Hành lý chỉ chừng đó thôi à?)* |
| Trang | はい、スーツケースが<ruby>一<rt>ひと</rt></ruby>つと、リュックが<ruby>一<rt>ひと</rt></ruby>つです。<br>*(Vâng, một vali và một ba lô ạ.)* |
| Okami Sato | わかりました。タクシーで<ruby>旅館<rt>りょかん</rt></ruby>まで<ruby>行<rt>い</rt></ruby>きます。<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらいかかります。<br>*(Rõ rồi. Mình đi taxi về ryokan. Khoảng 20 phút.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rõ ạ. Mong cô giúp đỡ.)* |

---

## Tình huống 6 — Trong taxi đi Higashiyama · 16:15, Okami giới thiệu về ryokan

| Vai | Lời thoại |
|---|---|
| Okami Sato | チャンさん、<ruby>旅館<rt>りょかん</rt></ruby>のことを<ruby>少<rt>すこ</rt></ruby>し<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Cô Trang, để tôi giải thích chút về ryokan nhé.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời cô ạ.)* |
| Okami Sato | <ruby>当館<rt>とうかん</rt></ruby>は<ruby>80<rt>はちじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>があります。<ruby>部屋<rt>へや</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby><ruby>部屋<rt>へや</rt></ruby>です。<br>*(Quán của chúng tôi có 80 năm lịch sử. Có 12 phòng.)* |
| Trang | <ruby>80<rt>はちじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>ですか！<ruby>古<rt>ふる</rt></ruby>い<ruby>旅館<rt>りょかん</rt></ruby>ですね。<br>*(80 năm cơ ạ! Là ryokan lâu đời nhỉ.)* |
| Okami Sato | はい。<ruby>主<rt>おも</rt></ruby>に<ruby>外国<rt>がいこく</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いです。<ruby>懐石<rt>かいせき</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>と<ruby>温泉<rt>おんせん</rt></ruby>が<ruby>自慢<rt>じまん</rt></ruby>です。<br>*(Vâng. Chủ yếu là khách nước ngoài. Tự hào về món kaiseki và suối nước nóng.)* |
| Trang | すみません、「<ruby>懐石<rt>かいせき</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>」というのは？<br>*(Xin lỗi, "kaiseki ryouri" là gì ạ?)* |
| Okami Sato | <ruby>日本<rt>にほん</rt></ruby>の<ruby>伝統<rt>でんとう</rt></ruby>の<ruby>高<rt>たか</rt></ruby>い<ruby>料理<rt>りょうり</rt></ruby>です。<ruby>季節<rt>きせつ</rt></ruby>の<ruby>食材<rt>しょくざい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って、<ruby>小<rt>ちい</rt></ruby>さい<ruby>器<rt>うつわ</rt></ruby>でたくさん<ruby>出<rt>だ</rt></ruby>します。<br>*(Là món ăn truyền thống cao cấp của Nhật. Dùng nguyên liệu theo mùa, bày trong nhiều đĩa nhỏ.)* |
| Trang | なるほど、<ruby>伝統<rt>でんとう</rt></ruby>の<ruby>料理<rt>りょうり</rt></ruby>ですね。<br>*(Ra vậy, món ăn truyền thống ạ.)* |
| Okami Sato | チャンさんは<ruby>仲居<rt>なかい</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Cô Trang sẽ làm việc với tư cách "nakai".)* |
| Trang | <ruby>仲居<rt>なかい</rt></ruby>...というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Nakai... nghĩa là gì ạ?)* |
| Okami Sato | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>のお<ruby>世話<rt>せわ</rt></ruby>をする<ruby>係<rt>かかり</rt></ruby>です。お<ruby>部屋<rt>へや</rt></ruby>の<ruby>掃除<rt>そうじ</rt></ruby>、お<ruby>食事<rt>しょくじ</rt></ruby>のお<ruby>世話<rt>せわ</rt></ruby>、<ruby>布団<rt>ふとん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>などをします。<br>*(Là người chăm sóc khách. Dọn phòng, phục vụ bữa ăn, chuẩn bị nệm futon.)* |
| Trang | はい、ベトナムでレストランで<ruby>働<rt>はたら</rt></ruby>いた<ruby>経験<rt>けいけん</rt></ruby>があります。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em có kinh nghiệm làm nhà hàng ở Việt Nam. Em sẽ cố gắng ạ.)* |
| Okami Sato | <ruby>頼<rt>たの</rt></ruby>もしいですね。でも、<ruby>日本<rt>にほん</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby>はベトナムのレストランとは<ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>います。ゆっくり<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Đáng tin cậy đấy. Nhưng ryokan Nhật có khác với nhà hàng Việt Nam một chút. Từ từ học nhé.)* |

---

## Tình huống 7 — Trong taxi, đường Higashiyama · 16:30, dặn dò văn hoá おもてなし

| Vai | Lời thoại |
|---|---|
| Okami Sato | チャンさん、<ruby>旅館<rt>りょかん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>なことを<ruby>言<rt>い</rt></ruby>いますね。<br>*(Cô Trang, tôi nói cho cháu điều quan trọng nhất trong công việc ở ryokan nhé.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời cô ạ.)* |
| Okami Sato | 「おもてなし」です。<br>*("Omotenashi" đó.)* |
| Trang | おもてなし...というのは？<br>*(Omotenashi... là gì ạ?)* |
| Okami Sato | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>考<rt>かんが</rt></ruby>えて、<ruby>心<rt>こころ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めておもてなしすること。<ruby>言葉<rt>ことば</rt></ruby>だけではなくて、<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちで<ruby>表<rt>あらわ</rt></ruby>します。<br>*(Là suy nghĩ cho tâm trạng khách, đón tiếp bằng cả tấm lòng. Không chỉ bằng lời nói mà thể hiện bằng tình cảm.)* |
| Trang | <ruby>心<rt>こころ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めて、ということですね。<br>*(Bằng cả tấm lòng, đúng không ạ?)* |
| Okami Sato | そうです。それから「<ruby>報連相<rt>ほうれんそう</rt></ruby>」も<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. Sau đó "hourensou" cũng quan trọng.)* |
| Trang | ほうれんそう...？<br>*(Hourensou...?)* |
| Okami Sato | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>です。わからないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Là viết tắt của báo cáo - liên lạc - bàn bạc. Có gì không hiểu nhất định phải hỏi đàn anh đàn chị.)* |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ nhớ chắc ạ.)* |

---

## Tình huống 8 — Trước cửa ryokan · 16:45, đến nơi và chào đồng nghiệp

*Taxi dừng trước một ryokan gỗ hai tầng có rèm cửa noren màu chàm. Yumiko-san — sempai nakai 35 tuổi mặc kimono làm việc — đang đứng đợi ở cửa.*

| Vai | Lời thoại |
|---|---|
| Okami Sato | <ruby>由美子<rt>ゆみこ</rt></ruby>さん、チャンさんが<ruby>着<rt>つ</rt></ruby>きました。<br>*(Yumiko, cô Trang đến rồi.)* |
| Yumiko | お<ruby>疲<rt>つか</rt></ruby>れさまです、<ruby>女将<rt>おかみ</rt></ruby>さん。チャンさん、ようこそ！<br>*(Cô vất vả rồi ạ, bà chủ. Cô Trang, hoan nghênh!)* |
| Trang | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cúi đầu. Rất hân hạnh. Em tên là Nguyễn Thị Trang. Em đến từ Việt Nam. Mong chị giúp đỡ ạ.)* |
| Yumiko | はじめまして、<ruby>由美子<rt>ゆみこ</rt></ruby>です。<ruby>仲居<rt>なかい</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>です。よろしくね、チャンさん。<br>*(Rất hân hạnh, tôi là Yumiko. Là đàn chị nakai. Mong cô giúp đỡ nhé, cô Trang.)* |
| Okami Sato | <ruby>由美子<rt>ゆみこ</rt></ruby>さんは<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いています。<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Yumiko làm 10 năm rồi. Có gì cũng hỏi nhé.)* |
| Trang | はい、<ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, chị Yumiko, mong chị giúp đỡ.)* |
| Yumiko | 「<ruby>先輩<rt>せんぱい</rt></ruby>」は<ruby>呼<rt>よ</rt></ruby>ばなくていいですよ。「<ruby>由美子<rt>ゆみこ</rt></ruby>さん」だけで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Không cần gọi "đàn chị" đâu. Chỉ "chị Yumiko" là được.)* |
| Trang | はい、<ruby>由美子<rt>ゆみこ</rt></ruby>さん。<br>*(Vâng, chị Yumiko.)* |
| Yumiko | お<ruby>部屋<rt>へや</rt></ruby>に<ruby>案内<rt>あんない</rt></ruby>しますね。<ruby>荷物<rt>にもつ</rt></ruby>を<ruby>持<rt>も</rt></ruby>ちましょうか？<br>*(Tôi dẫn cô về phòng nhé. Tôi xách hành lý giúp cô không?)* |
| Trang | いいえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>自分<rt>じぶん</rt></ruby>で<ruby>持<rt>も</rt></ruby>てます。<br>*(Không ạ, không sao. Em tự xách được.)* |

---

## Tình huống 9 — Hành lang ryokan · 17:00, Yumiko dẫn về ký túc

| Vai | Lời thoại |
|---|---|
| Yumiko | チャンさんの<ruby>部屋<rt>へや</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>寮<rt>りょう</rt></ruby>です。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>です。<br>*(Phòng cô Trang ở ký túc nhân viên tầng 2. Khác với phòng của khách.)* |
| Trang | はい、わかりました。<br>*(Vâng, em hiểu.)* |
| Yumiko | <ruby>同室<rt>どうしつ</rt></ruby>はメイさんという<ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。<br>*(Cùng phòng là cô Mei, người Trung Quốc. Năm thứ 2 rồi.)* |
| Trang | <ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>ですか。<ruby>安心<rt>あんしん</rt></ruby>します。<br>*(Năm thứ 2 ạ. Em yên tâm rồi.)* |
| Yumiko | あ、そうそう、<ruby>韓国<rt>かんこく</rt></ruby>のソヨンさんとネパールのプラディープさんもいます。プラディープさんはチャンさんと<ruby>同<rt>おな</rt></ruby>じ<ruby>新人<rt>しんじん</rt></ruby>です。<br>*(À đúng rồi, còn có cô Soyeon người Hàn và anh Pradeep người Nepal nữa. Anh Pradeep cùng đợt mới với cô Trang.)* |
| Trang | わあ、<ruby>国際的<rt>こくさいてき</rt></ruby>ですね！<br>*(Ồ, đa quốc tịch quá!)* |
| Yumiko | はい、<ruby>外国<rt>がいこく</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いですから、<ruby>外国<rt>がいこく</rt></ruby>の<ruby>従業員<rt>じゅうぎょういん</rt></ruby>も<ruby>多<rt>おお</rt></ruby>いです。<br>*(Vâng, vì khách nước ngoài nhiều nên nhân viên nước ngoài cũng nhiều.)* |
| Yumiko | ここがチャンさんとメイさんのお<ruby>部屋<rt>へや</rt></ruby>です。<br>*(Đây là phòng của cô Trang và cô Mei.)* |
| Trang | きれいですね。ありがとうございます。<br>*(Đẹp quá. Em cảm ơn ạ.)* |

---

## Tình huống 10 — Phòng ký túc · 17:15, gặp Mei người Trung Quốc

| Vai | Lời thoại |
|---|---|
| Mei | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）あ、チャンさんですか？はじめまして、メイです。<br>*(Đứng dậy. À, cô Trang ạ? Rất hân hạnh, tôi là Mei.)* |
| Trang | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして、チャンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cúi đầu. Rất hân hạnh, em là Trang. Mong chị giúp đỡ ạ.)* |
| Mei | <ruby>窓側<rt>まどがわ</rt></ruby>のベッドがチャンさんの<ruby>場所<rt>ばしょ</rt></ruby>です。タンスもこちらが<ruby>空<rt>あ</rt></ruby>いています。<br>*(Giường phía cửa sổ là chỗ của cô Trang. Tủ này cũng đang trống.)* |
| Trang | ありがとうございます。メイさんは<ruby>中国<rt>ちゅうごく</rt></ruby>のどちらからですか？<br>*(Em cảm ơn ạ. Chị Mei đến từ vùng nào của Trung Quốc?)* |
| Mei | <ruby>上海<rt>シャンハイ</rt></ruby>です。チャンさんは？<br>*(Thượng Hải. Cô Trang thì sao?)* |
| Trang | <ruby>私<rt>わたし</rt></ruby>は<ruby>中部<rt>ちゅうぶ</rt></ruby>ベトナム、フエという<ruby>町<rt>まち</rt></ruby>です。<br>*(Em ở miền Trung Việt Nam, thành phố tên Huế ạ.)* |
| Mei | フエ、<ruby>聞<rt>き</rt></ruby>いたことがあります。<ruby>古<rt>ふる</rt></ruby>い<ruby>都<rt>みやこ</rt></ruby>ですね。<br>*(Huế, tôi có nghe rồi. Là cố đô nhỉ.)* |
| Trang | はい、<ruby>京都<rt>きょうと</rt></ruby>みたいです。<br>*(Vâng, giống như Kyoto ạ.)* |
| Mei | あ、いいですね！<ruby>晩<rt>ばん</rt></ruby>ごはんは<ruby>従業員<rt>じゅうぎょういん</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>食<rt>た</rt></ruby>べます。<ruby>夜<rt>よる</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>からです。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(À, hay đó! Bữa tối ăn ở nhà ăn nhân viên. Từ 7h tối. Mình cùng đi nhé.)* |
| Trang | はい、<ruby>助<rt>たす</rt></ruby>かります。<br>*(Vâng, chị giúp em quá.)* |

---

## Tình huống 11 — Nhà ăn nhân viên · 19:30, gặp Pradeep kohai cùng đợt

| Vai | Lời thoại |
|---|---|
| Pradeep | あの、チャンさんですか？<br>*(Dạ, cô Trang ạ?)* |
| Trang | はい、チャンです。プラディープさんですね？<br>*(Vâng, em là Trang. Anh là Pradeep đúng không?)* |
| Pradeep | はい、プラディープです。ネパールから<ruby>来<rt>き</rt></ruby>ました。<ruby>今日<rt>きょう</rt></ruby><ruby>着<rt>つ</rt></ruby>きました。<br>*(Vâng, tôi là Pradeep. Tôi đến từ Nepal. Hôm nay tôi vừa đến.)* |
| Trang | あ、<ruby>同<rt>おな</rt></ruby>じですね。<ruby>私<rt>わたし</rt></ruby>も<ruby>今日<rt>きょう</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(À, giống nhau ha. Em cũng hôm nay. Mong anh giúp đỡ.)* |
| Pradeep | こちらこそ。<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>はどのくらいですか？<br>*(Tôi mới phải. Cô học tiếng Nhật được bao lâu rồi?)* |
| Trang | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>半<rt>はん</rt></ruby>です。N5です。プラディープさんは？<br>*(1 năm rưỡi ạ. N5. Anh Pradeep thì sao?)* |
| Pradeep | <ruby>同<rt>おな</rt></ruby>じです、N5です。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Giống nhau, tôi cũng N5. Cùng cố gắng nhé.)* |
| Mei | (vào ngồi cùng) お<ruby>2人<rt>ふたり</rt></ruby>、ごはんを<ruby>食<rt>た</rt></ruby>べましょう。<ruby>今日<rt>きょう</rt></ruby>はカレーですよ。<br>*(Hai người, ăn đi nào. Hôm nay là cà ri đấy.)* |
| Trang | あ、カレー！<ruby>大好<rt>だいす</rt></ruby>きです。いただきます。<br>*(À, cà ri! Em rất thích. Mời ăn.)* |
| Pradeep | いただきます。<br>*(Mời ăn.)* |
| Mei | <ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>は<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>起<rt>お</rt></ruby>きます。<ruby>朝食<rt>ちょうしょく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>見学<rt>けんがく</rt></ruby>します。<br>*(Sáng mai 6h30 dậy. Đi xem chuẩn bị bữa sáng.)* |
| Trang | <ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>ですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(6h30 ạ. Em hiểu rồi.)* |

---

## Tình huống 12 — Phòng ký túc · 22:00, gọi điện về Huế (cảnh tiếng Việt)

> Cảnh tiếng Việt — gọi điện về cho mẹ và em gái ở Huế.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Mẹ ơi, con đến nơi rồi. |
| Mẹ Trang | (tiếng Việt) Trang! Mẹ chờ điện thoại cả ngày. Có mệt không con? |
| Trang | (tiếng Việt) Mệt mẹ ạ. Bay từ Tân Sơn Nhất, qua Kansai, rồi đi tàu shinkansen nữa. Nhưng đến Kyoto thì bà chủ ryokan ra tận ga đón. |
| Mẹ Trang | (tiếng Việt) Bà chủ tốt không con? |
| Trang | (tiếng Việt) Tốt mẹ ạ. Bà tên Sato, 55 tuổi, mặc kimono đẹp lắm. Người ta gọi là 女将 Okami, nghĩa là bà chủ ryokan đó mẹ. |
| Em Trang | (tiếng Việt, ghé màn hình) Chị Trang! Có giống cô Tấm trong phim Nhật không? |
| Trang | (tiếng Việt) Có, có. Chị còn ở chung phòng với chị Mei người Trung Quốc, làm năm thứ 2 rồi. Bạn cùng đợt là anh Pradeep người Nepal nữa. |
| Mẹ Trang | (tiếng Việt) Trời, đa quốc tịch ghê. Ăn được không con? |
| Trang | (tiếng Việt) Tối nay con ăn cà ri Nhật. Ngon mẹ ạ. Còn ngày mai 6h30 con dậy đi xem bếp chuẩn bị bữa sáng. |
| Em Trang | (tiếng Việt) Chị nhớ ghi từ mới vào sổ nha. Em thấy chị nói 旅館, 女将, 仲居, おもてなし trong tin nhắn rồi. |
| Trang | (tiếng Việt) Ừ, chị ghi đầy đủ. Bà chủ dạy chị おもてなし là tiếp khách bằng cả tấm lòng, không chỉ nói suông. Chị thấy hay lắm. |
| Mẹ Trang | (tiếng Việt) Con giữ sức khoẻ. 3 năm qua nhanh thôi. Mẹ với em chờ con về. |
| Trang | (tiếng Việt) Dạ. Con đi ngủ mẹ ạ. Mai 6h30 phải xuống nhà ăn rồi. |

---

## Tình huống 13 — Phòng ký túc · 22:30, chúc ngủ ngon bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Trang | メイさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Chị Mei, hôm nay cảm ơn chị rất nhiều.)* |
| Mei | いえいえ、こちらこそ。<ruby>明日<rt>あした</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Không có gì, tôi mới phải. Từ mai cùng cố gắng nhé.)* |
| Trang | <ruby>明日<rt>あした</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>ですね。<ruby>遅<rt>おく</rt></ruby>れないようにします。<br>*(Mai 6h30 nhỉ. Em sẽ không đến muộn đâu.)* |
| Mei | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>が<ruby>起<rt>お</rt></ruby>こします。おやすみなさい。<br>*(Không sao, tôi sẽ gọi cô dậy. Ngủ ngon nhé.)* |
| Trang | おやすみなさい、メイさん。<br>*(Ngủ ngon, chị Mei.)* |

---

## Đọng lại chương 1

Ngày đầu, Trang học được các mẫu câu nền tảng người sang Nhật làm việc ngành khách sạn dùng ngay: **trả lời 入管 ở Kansai** (滞在目的は何ですか → 就労です), **mua vé shinkansen Haruka** (片道一枚お願いします・指定席), **hỏi nhân viên trên tàu** (次の駅は〜ですか・出口は左ですか右ですか), **chào hỏi 女将 đón ga Kyoto** (お疲れさまでした・〜と申します・よろしくお願いいたします), **hỏi lại lễ phép khi chưa hiểu** (〜というのは？・意味がわかりません), **tự giới thiệu với người cùng phòng nước ngoài** (はじめまして・〜から来ました), và **chốt mẫu câu sinh hoạt ký túc**. Đồng thời nhận ra văn hoá ryokan trọng **おもてなし** (tiếp khách bằng cả tấm lòng) và **報連相** — phẩm chất nghề nakai Trang phải mang theo suốt 3 năm.

> Từ vựng & mẫu câu chương này: 来日・入管・滞在目的・就労・在留カード・旅館・女将・仲居・おもてなし・懐石料理・温泉・特急・指定席・自由席・片道・改札・中央口・報連相・従業員・新人・〜と申します・〜というのは・〜ということですね・お疲れさまでした・よろしくお願いいたします

## Bí quyết chương

- **Cửa ngõ Kansai**: Trang vào qua sân bay Kansai (KIX), không phải Narita — Kyoto thuận đi Kansai → tàu Haruka 1h20''.
- **女将 Sato 55 tuổi**: Nhân vật quyền uy nhất ryokan, nhưng dạy Trang triết lý おもてなし ngay xe taxi đầu tiên — set tone cho 12 chương.
- **Sempai Yumiko 35t**: 10 năm kinh nghiệm, sẽ là người dạy thực hành 仲居 hàng ngày.
- **Đa quốc tịch**: Mei (Trung Quốc, năm 2) + Soyeon (Hàn) + Pradeep (Nepal, cùng đợt) — Trang sẽ giao tiếp tiếng Nhật là ngôn ngữ chung.
- **Huế ↔ Kyoto**: Cả hai đều là cố đô — sợi dây tinh thần giúp Trang thấy gần gũi với văn hoá truyền thống Nhật.

> *"5/4/2025. Ngày 1. Mai sáng 6h30 xem chuẩn bị 朝食. 3 năm bắt đầu."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入管 | にゅうかん | NHẬP QUẢN | Cục xuất nhập cảnh |
| 滞在目的 | たいざいもくてき | TRỆ TẠI MỤC ĐÍCH | Mục đích lưu trú |
| 就労 | しゅうろう | TỰU LAO | Đi làm, lao động |
| 旅館 | りょかん | LỮ QUÁN | Quán trọ kiểu Nhật, ryokan |
| 技能実習 | ぎのうじっしゅう | KỸ NĂNG THỰC TẬP | Thực tập kỹ năng |
| 在留カード | ざいりゅうカード | TẠI LƯU | Thẻ cư trú |
| 市役所 | しやくしょ | THỊ DỊCH SỞ | Uỷ ban thành phố |
| 登録 | とうろく | ĐĂNG LỤC | Đăng ký |
| 特急 | とっきゅう | ĐẶC CẤP | Tàu tốc hành |
| 普通 | ふつう | PHỔ THÔNG | Bình thường |
| 料金 | りょうきん | LIỆU KIM | Giá tiền, cước phí |
| 片道 | かたみち | PHIẾN ĐẠO | Một chiều (vé) |
| 指定席 | していせき | CHỈ ĐỊNH TỊCH | Ghế chỉ định |
| 自由席 | じゆうせき | TỰ DO TỊCH | Ghế tự do |
| 発車 | はっしゃ | PHÁT XA | Khởi hành (tàu) |
| 終点 | しゅうてん | CHUNG ĐIỂM | Ga cuối |
| 進行方向 | しんこうほうこう | TIẾN HÀNH PHƯƠNG HƯỚNG | Hướng đi |
| 改札 | かいさつ | CẢI TRÁT | Cửa soát vé |
| 中央口 | ちゅうおうぐち | TRUNG ƯƠNG KHẨU | Cửa trung tâm |
| 看板 | かんばん | KHÁN BẢN | Bảng hiệu, bảng chỉ dẫn |
| 女将 | おかみ | NỮ TƯỚNG | Bà chủ ryokan |
| 主人 | しゅじん | CHỦ NHÂN | Chủ |
| 長旅 | ながたび | TRƯỜNG LỮ | Chuyến đi dài |
| 体調 | たいちょう | THỂ ĐIỀU | Tình trạng sức khoẻ |
| 承知 | しょうち | THỪA TRI | Hiểu rõ, biết |
| 当館 | とうかん | ĐƯƠNG QUÁN | Quán chúng tôi |
| 歴史 | れきし | LỊCH SỬ | Lịch sử |
| 懐石料理 | かいせきりょうり | HOÀI THẠCH LIỆU LÝ | Món kaiseki truyền thống |
| 温泉 | おんせん | ÔN TUYỀN | Suối nước nóng |
| 自慢 | じまん | TỰ MẠN | Tự hào |
| 伝統 | でんとう | TRUYỀN THỐNG | Truyền thống |
| 季節 | きせつ | QUÝ TIẾT | Mùa |
| 食材 | しょくざい | THỰC TÀI | Nguyên liệu nấu ăn |
| 器 | うつわ | KHÍ | Đồ đựng, bát đĩa |
| 仲居 | なかい | TRỌNG CƯ | Nhân viên phục vụ ryokan |
| 係 | かかり | HỆ | Người phụ trách |
| 布団 | ふとん | BỐ ĐOÀN | Nệm futon |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 経験 | けいけん | KINH NGHIỆM | Kinh nghiệm |
| おもてなし | おもてなし | — | Tiếp đãi tận tâm |
| 心を込める | こころをこめる | TÂM | Dồn cả tấm lòng |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | Báo cáo - liên lạc - bàn bạc |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | Bàn bạc |
| 略 | りゃく | LƯỢC | Viết tắt |
| 従業員 | じゅうぎょういん | TÒNG NGHIỆP VIÊN | Nhân viên |
| 寮 | りょう | LIÊU | Ký túc xá |
| 同室 | どうしつ | ĐỒNG THẤT | Cùng phòng |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 国際的 | こくさいてき | QUỐC TẾ ĐÍCH | Quốc tế |
| 食堂 | しょくどう | THỰC ĐƯỜNG | Nhà ăn |
| 朝食 | ちょうしょく | TRIỀU THỰC | Bữa sáng |
| 見学 | けんがく | KIẾN HỌC | Quan sát, kiến tập |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000002, 800000046, NULL, 'markdown_book', 'T2. Ngày đầu tại ryokan Higashiyama (旅館初日)', '# Sách thực tập sinh khách sạn · T2. Ngày đầu tại ryokan Higashiyama (旅館初日)

> **Mục tiêu nhân vật:** Trang trải qua ngày đầu chính thức tại ryokan Higashiyama. Học các mẫu hội thoại tiếng Nhật cơ bản trong ryokan: chào buổi sáng theo nghi thức (おはようございます・本日もよろしく), nhận chỉ thị từ sempai (〜してください), tham quan các khu vực ryokan (玄関・客室・厨房・大浴場), cách xưng hô khách (お客様), mặc kimono làm việc, và 報告 báo cáo cuối ngày với sempai Yumiko.

---

## Bối cảnh

Ngày 6 tháng 4 năm 2025. Sáng hôm sau ngày Trang đến. Chương này tập trung các mẫu câu giao tiếp ngày đầu trong ryokan Higashiyama: chào hỏi nghi thức đầu ngày, tham quan các khu vực (玄関 sảnh, 客室 phòng khách, 厨房 bếp, 大浴場 đại nhà tắm), mặc kimono làm việc dưới hướng dẫn của Yumiko, học các từ chuyên ngành ryokan, và báo cáo 報連相 cuối ngày.

---

## Tình huống 1 — Phòng ký túc · 6:25, Mei gọi Trang dậy

| Vai | Lời thoại |
|---|---|
| Mei | チャンさん、<ruby>朝<rt>あさ</rt></ruby>ですよ。<ruby>起<rt>お</rt></ruby>きてください。<br>*(Cô Trang, sáng rồi đó. Dậy đi.)* |
| Trang | あ...おはようございます、メイさん。<br>*(À... chào buổi sáng, chị Mei.)* |
| Mei | おはようございます。よく<ruby>眠<rt>ねむ</rt></ruby>れましたか？<br>*(Chào buổi sáng. Cô ngủ ngon chứ?)* |
| Trang | はい、よく<ruby>眠<rt>ねむ</rt></ruby>れました。ありがとうございます。<br>*(Vâng, em ngủ ngon. Em cảm ơn chị.)* |
| Mei | <ruby>顔<rt>かお</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>って、<ruby>着替<rt>きが</rt></ruby>えてください。<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>50<rt>ごじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>に<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>集合<rt>しゅうごう</rt></ruby>です。<br>*(Cô rửa mặt và thay đồ đi. 6h50 tập trung ở nhà ăn.)* |
| Trang | <ruby>着替<rt>きが</rt></ruby>えは<ruby>何<rt>なに</rt></ruby>を<ruby>着<rt>き</rt></ruby>ますか？<br>*(Thay đồ thì mặc gì ạ?)* |
| Mei | <ruby>今日<rt>きょう</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>ですから、<ruby>普通<rt>ふつう</rt></ruby>の<ruby>服<rt>ふく</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby>から<ruby>着物<rt>きもの</rt></ruby>を<ruby>着<rt>き</rt></ruby>ます。<br>*(Hôm nay là kiến tập nên mặc đồ thường được. Từ mai sẽ mặc kimono.)* |
| Trang | <ruby>着物<rt>きもの</rt></ruby>ですか！<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Kimono ạ! Em hồi hộp quá.)* |
| Mei | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>由美子<rt>ゆみこ</rt></ruby>さんが<ruby>教<rt>おし</rt></ruby>えてくれます。<br>*(Không sao, chị Yumiko sẽ dạy cô.)* |

---

## Tình huống 2 — Nhà ăn nhân viên · 6:55, chào nghi thức buổi sáng

*Trang xuống nhà ăn cùng Mei. 女将 Sato đã ngồi đầu bàn. Yumiko, Pradeep, Soyeon và các nhân viên khác đứng đợi.*

| Vai | Lời thoại |
|---|---|
| Yumiko | みなさん、<ruby>揃<rt>そろ</rt></ruby>いましたか？では、<ruby>朝<rt>あさ</rt></ruby>のご<ruby>挨拶<rt>あいさつ</rt></ruby>を。<br>*(Mọi người tập hợp đủ chưa? Vậy thì chào buổi sáng nào.)* |
| Tất cả | <ruby>女将<rt>おかみ</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Bà chủ, chào buổi sáng. Hôm nay cũng mong bà giúp đỡ ạ.)* |
| Okami Sato | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, chào buổi sáng. Hôm nay cũng mong mọi người ạ.)* |
| Okami Sato | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>新人<rt>しんじん</rt></ruby>の<ruby>二<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>、チャンさんとプラディープさんが<ruby>初日<rt>しょにち</rt></ruby>です。みなさん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hôm nay là ngày đầu của hai nhân viên mới, cô Trang và anh Pradeep. Mọi người giúp đỡ nhé.)* |
| Trang | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Em tên là Nguyễn Thị Trang. Em quê Việt Nam. Mong mọi người ạ.)* |
| Pradeep | プラディープと<ruby>申<rt>もう</rt></ruby>します。ネパール<ruby>出身<rt>しゅっしん</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em tên là Pradeep. Em quê Nepal. Mong mọi người.)* |
| Okami Sato | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>由美子<rt>ゆみこ</rt></ruby>さんが<ruby>館内<rt>かんない</rt></ruby>を<ruby>案内<rt>あんない</rt></ruby>します。よく<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Hôm nay Yumiko sẽ dẫn đi tham quan ryokan. Hãy nhớ kỹ.)* |
| Trang, Pradeep | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, chúng em rõ ạ.)* |

---

## Tình huống 3 — 玄関 sảnh chính · 7:30, Yumiko giới thiệu khu vực sảnh

*Yumiko dẫn Trang và Pradeep ra sảnh chính, nơi có rèm noren, thềm gỗ và 下駄箱.*

| Vai | Lời thoại |
|---|---|
| Yumiko | ここが<ruby>玄関<rt>げんかん</rt></ruby>です。<ruby>旅館<rt>りょかん</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>な<ruby>場所<rt>ばしょ</rt></ruby>です。<br>*(Đây là sảnh chính. Là nơi quan trọng nhất của ryokan.)* |
| Trang | なぜ<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>ですか？<br>*(Vì sao quan trọng nhất ạ?)* |
| Yumiko | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>る<ruby>場所<rt>ばしょ</rt></ruby>ですから。<ruby>第一<rt>だいいち</rt></ruby><ruby>印象<rt>いんしょう</rt></ruby>が<ruby>決<rt>き</rt></ruby>まります。<br>*(Vì là nơi khách nhìn thấy đầu tiên. Ấn tượng ban đầu được quyết định ở đây.)* |
| Pradeep | <ruby>第一<rt>だいいち</rt></ruby><ruby>印象<rt>いんしょう</rt></ruby>...というのは？<br>*(Ấn tượng ban đầu... là gì ạ?)* |
| Yumiko | <ruby>最初<rt>さいしょ</rt></ruby>に<ruby>感<rt>かん</rt></ruby>じることです。「いい<ruby>旅館<rt>りょかん</rt></ruby>だな」と<ruby>思<rt>おも</rt></ruby>ってもらいたいです。<br>*(Là cảm nhận đầu tiên. Mình muốn khách nghĩ "ryokan này tốt đấy".)* |
| Trang | なるほど。<ruby>玄関<rt>げんかん</rt></ruby>はいつもきれいにします。<br>*(Em hiểu rồi. Sảnh luôn phải giữ sạch ạ.)* |
| Yumiko | はい。<ruby>毎朝<rt>まいあさ</rt></ruby>、<ruby>水<rt>みず</rt></ruby>を<ruby>打<rt>う</rt></ruby>ちます。<ruby>打<rt>う</rt></ruby>ち<ruby>水<rt>みず</rt></ruby>と<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng. Mỗi sáng phải vẩy nước. Gọi là "uchimizu".)* |
| Trang | <ruby>打<rt>う</rt></ruby>ち<ruby>水<rt>みず</rt></ruby>...どうしてですか？<br>*(Uchimizu... vì sao vậy ạ?)* |
| Yumiko | ほこりを<ruby>抑<rt>おさ</rt></ruby>えるためです。それから「ようこそ」という<ruby>気持<rt>きも</rt></ruby>ちも<ruby>表<rt>あらわ</rt></ruby>します。<br>*(Để giảm bụi. Và còn thể hiện tâm tình "hoan nghênh".)* |
| Pradeep | <ruby>気持<rt>きも</rt></ruby>ちを<ruby>表<rt>あらわ</rt></ruby>すために<ruby>水<rt>みず</rt></ruby>を<ruby>打<rt>う</rt></ruby>つ、ということですね。<br>*(Vẩy nước để thể hiện tâm tình, đúng không ạ?)* |
| Yumiko | そうです。<ruby>細<rt>こま</rt></ruby>かいことですが、<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. Việc nhỏ nhưng quan trọng.)* |

---

## Tình huống 4 — Hành lang ryokan · 8:00, học cách xưng hô お客様

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも、<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>のことは<ruby>必<rt>かなら</rt></ruby>ず「お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>」と<ruby>呼<rt>よ</rt></ruby>びます。<br>*(Hai người, nhớ một từ quan trọng. Khách thì luôn gọi là "okyaku-sama".)* |
| Trang | お<ruby>客<rt>きゃく</rt></ruby>さんではなくて、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>ですね。<br>*(Không phải okyaku-san mà là okyaku-sama nhỉ.)* |
| Yumiko | はい、「<ruby>様<rt>さま</rt></ruby>」をつけます。<ruby>旅館<rt>りょかん</rt></ruby>はお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>を<ruby>神様<rt>かみさま</rt></ruby>のように<ruby>大切<rt>たいせつ</rt></ruby>にします。<br>*(Vâng, thêm "sama". Ryokan đối xử với khách trân trọng như thần.)* |
| Pradeep | <ruby>神様<rt>かみさま</rt></ruby>のように...すごいですね。<br>*(Như thần... ghê thật.)* |
| Yumiko | それから、<ruby>道<rt>みち</rt></ruby>で<ruby>会<rt>あ</rt></ruby>ったら、<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まって<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げてください。<br>*(Còn nữa, nếu gặp ở hành lang, phải dừng lại và cúi đầu.)* |
| Trang | <ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まって<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる、ということですね。<br>*(Dừng lại và cúi đầu, đúng không ạ?)* |
| Yumiko | はい。「お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>、おはようございます」とか「<ruby>失礼<rt>しつれい</rt></ruby>いたします」と<ruby>声<rt>こえ</rt></ruby>をかけます。<br>*(Vâng. Lên tiếng "okyaku-sama, chào buổi sáng" hoặc "xin phép".)* |
| Trang | <ruby>練習<rt>れんしゅう</rt></ruby>します。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>、おはようございます。<br>*(Em luyện ạ. Okyaku-sama, chào buổi sáng.)* |
| Yumiko | いいですね。もう<ruby>少<rt>すこ</rt></ruby>しゆっくり、<ruby>笑顔<rt>えがお</rt></ruby>で。<br>*(Tốt đấy. Chậm thêm chút nữa, với nụ cười.)* |
| Trang | （<ruby>笑顔<rt>えがお</rt></ruby>で）お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>、おはようございます。<br>*(Với nụ cười. Okyaku-sama, chào buổi sáng.)* |
| Yumiko | <ruby>完璧<rt>かんぺき</rt></ruby>です！<br>*(Hoàn hảo!)* |

---

## Tình huống 5 — Trước 客室 "桜の間" · 8:30, học nghi thức vào phòng khách

| Vai | Lời thoại |
|---|---|
| Yumiko | ここは<ruby>客室<rt>きゃくしつ</rt></ruby>の「<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」です。<ruby>当館<rt>とうかん</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>広<rt>ひろ</rt></ruby>い<ruby>部屋<rt>へや</rt></ruby>です。<br>*(Đây là phòng khách "Sakura no Ma". Là phòng rộng nhất của quán.)* |
| Trang | きれいな<ruby>名前<rt>なまえ</rt></ruby>ですね。<br>*(Tên đẹp quá ạ.)* |
| Yumiko | はい、お<ruby>部屋<rt>へや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>時<rt>とき</rt></ruby>のルールを<ruby>教<rt>おし</rt></ruby>えます。まず、ノックします。<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>。<br>*(Vâng. Tôi dạy quy tắc khi vào phòng. Trước tiên, gõ cửa. 3 lần.)* |
| Pradeep | <ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>ですね。<br>*(3 lần ạ.)* |
| Yumiko | はい。それから「<ruby>失礼<rt>しつれい</rt></ruby>いたします」と<ruby>声<rt>こえ</rt></ruby>をかけます。<ruby>返事<rt>へんじ</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ってから<ruby>開<rt>あ</rt></ruby>けます。<br>*(Vâng. Sau đó lên tiếng "xin phép". Đợi trả lời rồi mở cửa.)* |
| Trang | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>返事<rt>へんじ</rt></ruby>しない<ruby>時<rt>とき</rt></ruby>は？<br>*(Lúc khách không trả lời thì sao ạ?)* |
| Yumiko | もう<ruby>一度<rt>いちど</rt></ruby><ruby>声<rt>こえ</rt></ruby>をかけます。それでも<ruby>返事<rt>へんじ</rt></ruby>がなかったら、ゆっくり<ruby>開<rt>あ</rt></ruby>けます。「<ruby>失礼<rt>しつれい</rt></ruby>いたします」と<ruby>言<rt>い</rt></ruby>いながら。<br>*(Gọi thêm lần nữa. Vẫn không trả lời thì mở từ từ. Vừa mở vừa nói "xin phép".)* |
| Trang | <ruby>引<rt>ひ</rt></ruby>き<ruby>戸<rt>ど</rt></ruby>ですから、ゆっくり<ruby>開<rt>あ</rt></ruby>けますね。<br>*(Là cửa kéo nên phải mở từ từ ạ.)* |
| Yumiko | そうです。それから、お<ruby>部屋<rt>へや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>正座<rt>せいざ</rt></ruby>して<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げます。<br>*(Đúng vậy. Trước khi vào phòng, ngồi seiza và cúi đầu.)* |
| Pradeep | <ruby>正座<rt>せいざ</rt></ruby>...というのは？<br>*(Seiza... là gì ạ?)* |
| Yumiko | <ruby>膝<rt>ひざ</rt></ruby>を<ruby>折<rt>お</rt></ruby>って<ruby>座<rt>すわ</rt></ruby>る<ruby>座<rt>すわ</rt></ruby>り<ruby>方<rt>かた</rt></ruby>です。やってみますね。（やる）<br>*(Là kiểu ngồi gập đầu gối. Tôi làm thử nhé.)* |
| Trang | わあ、<ruby>足<rt>あし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>そうですね。<br>*(Ồ, chân có vẻ đau nhỉ.)* |
| Yumiko | <ruby>慣<rt>な</rt></ruby>れます。<ruby>毎日<rt>まいにち</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>してください。<br>*(Rồi sẽ quen. Hãy luyện hàng ngày.)* |

---

## Tình huống 6 — Trong 客室 "桜の間" · 9:00, giới thiệu các phần trong phòng khách

| Vai | Lời thoại |
|---|---|
| Yumiko | お<ruby>部屋<rt>へや</rt></ruby>の<ruby>中<rt>なか</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。これは「<ruby>床<rt>とこ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」です。<br>*(Tôi giải thích bên trong phòng. Đây là "tokonoma".)* |
| Trang | <ruby>床<rt>とこ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>...<ruby>絵<rt>え</rt></ruby>と<ruby>花<rt>はな</rt></ruby>がありますね。<br>*(Tokonoma... có tranh và hoa nhỉ.)* |
| Yumiko | はい、<ruby>季節<rt>きせつ</rt></ruby>の<ruby>掛<rt>か</rt></ruby>け<ruby>軸<rt>じく</rt></ruby>と<ruby>生<rt>い</rt></ruby>け<ruby>花<rt>ばな</rt></ruby>を<ruby>飾<rt>かざ</rt></ruby>ります。<ruby>今<rt>いま</rt></ruby>は<ruby>春<rt>はる</rt></ruby>ですから、<ruby>桜<rt>さくら</rt></ruby>の<ruby>掛<rt>か</rt></ruby>け<ruby>軸<rt>じく</rt></ruby>です。<br>*(Vâng, treo tranh cuộn và cắm hoa theo mùa. Bây giờ là mùa xuân nên là tranh sakura.)* |
| Pradeep | <ruby>床<rt>とこ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>には<ruby>荷物<rt>にもつ</rt></ruby>を<ruby>置<rt>お</rt></ruby>いてもいいですか？<br>*(Tokonoma có được đặt hành lý không ạ?)* |
| Yumiko | いいえ、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてはいけません。<ruby>神聖<rt>しんせい</rt></ruby>な<ruby>場所<rt>ばしょ</rt></ruby>です。<br>*(Không, tuyệt đối không được đặt. Là nơi thiêng liêng.)* |
| Trang | <ruby>分<rt>わ</rt></ruby>かりました、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em hiểu rồi, em sẽ chú ý.)* |
| Yumiko | これは<ruby>畳<rt>たたみ</rt></ruby>です。<ruby>歩<rt>ある</rt></ruby>く<ruby>時<rt>とき</rt></ruby>は<ruby>畳<rt>たたみ</rt></ruby>の<ruby>縁<rt>へり</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まないでください。<br>*(Đây là tatami. Khi đi, đừng giẫm lên viền tatami.)* |
| Trang | <ruby>縁<rt>へり</rt></ruby>...というのは？<br>*(Heri... là gì ạ?)* |
| Yumiko | <ruby>畳<rt>たたみ</rt></ruby>の<ruby>端<rt>はし</rt></ruby>の<ruby>布<rt>ぬの</rt></ruby>の<ruby>部分<rt>ぶぶん</rt></ruby>です。(chỉ tay) ここです。<br>*(Là phần vải ở mép tatami. Đây này.)* |
| Trang | あ、なるほど。<ruby>畳<rt>たたみ</rt></ruby>の<ruby>縁<rt>へり</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まないように<ruby>歩<rt>ある</rt></ruby>きます。<br>*(À, em hiểu rồi. Đi sao cho không giẫm lên viền tatami.)* |
| Yumiko | はい。それから、これは<ruby>座布団<rt>ざぶとん</rt></ruby>、これはお<ruby>茶<rt>ちゃ</rt></ruby>のセットです。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>到着<rt>とうちゃく</rt></ruby>したらお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng. Còn đây là nệm zabuton, đây là bộ trà. Khi khách đến sẽ dâng trà.)* |

---

## Tình huống 7 — Hành lang đi xuống · 9:45, hỏi sempai về quy tắc đi lại

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby>さん、<ruby>質問<rt>しつもん</rt></ruby>してもいいですか？<br>*(Chị Yumiko, em hỏi được không ạ?)* |
| Yumiko | どうぞ。<br>*(Cứ nói.)* |
| Trang | <ruby>廊下<rt>ろうか</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>く<ruby>時<rt>とき</rt></ruby>、<ruby>右側<rt>みぎがわ</rt></ruby>と<ruby>左側<rt>ひだりがわ</rt></ruby>、どちらを<ruby>歩<rt>ある</rt></ruby>きますか？<br>*(Khi đi hành lang, đi bên phải hay bên trái ạ?)* |
| Yumiko | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>左側<rt>ひだりがわ</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>きます。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>右側<rt>みぎがわ</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>きやすいようにです。<br>*(Câu hỏi hay. Mình đi bên trái. Để khách dễ đi bên phải.)* |
| Trang | なるほど、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>ですね。<br>*(Em hiểu rồi, ưu tiên khách ạ.)* |
| Yumiko | はい。それから<ruby>音<rt>おと</rt></ruby>も<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>足音<rt>あしおと</rt></ruby>を<ruby>立<rt>た</rt></ruby>てないように<ruby>歩<rt>ある</rt></ruby>きます。<br>*(Vâng. Tiếng động cũng quan trọng. Đi sao cho không phát tiếng bước chân.)* |
| Pradeep | <ruby>静<rt>しず</rt></ruby>かに<ruby>歩<rt>ある</rt></ruby>く、ということですね。<br>*(Đi yên lặng, đúng không ạ?)* |
| Yumiko | そうです。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>がお<ruby>休<rt>やす</rt></ruby>みになっている<ruby>時<rt>とき</rt></ruby>もありますから。<br>*(Đúng vậy. Vì có lúc khách đang nghỉ ngơi.)* |

---

## Tình huống 8 — 厨房 bếp · 10:30, gặp bếp trưởng

| Vai | Lời thoại |
|---|---|
| Yumiko | ここが<ruby>厨房<rt>ちゅうぼう</rt></ruby>です。<ruby>板長<rt>いたちょう</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby>さんを<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Đây là bếp. Tôi giới thiệu bếp trưởng Kimura.)* |
| Bếp trưởng Kimura | （<ruby>振<rt>ふ</rt></ruby>り<ruby>向<rt>む</rt></ruby>く）あ、<ruby>新人<rt>しんじん</rt></ruby>さんですね。<ruby>木村<rt>きむら</rt></ruby>です。<br>*(Quay lại. À, người mới đây à. Tôi là Kimura.)* |
| Trang | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。チャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Rất hân hạnh. Em là Trang. Mong chú giúp đỡ.)* |
| Pradeep | プラディープと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là Pradeep. Mong chú giúp đỡ.)* |
| Bếp trưởng Kimura | こちらこそ。<ruby>厨房<rt>ちゅうぼう</rt></ruby>のルールを<ruby>一<rt>ひと</rt></ruby>つだけ<ruby>言<rt>い</rt></ruby>います。<br>*(Tôi mới phải. Một quy tắc duy nhất của bếp.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời chú ạ.)* |
| Bếp trưởng Kimura | <ruby>料理<rt>りょうり</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>必<rt>かなら</rt></ruby>ず<ruby>手<rt>て</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>ってください。<ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<br>*(Trước khi chạm vào món ăn, nhất định phải rửa tay. Trên 30 giây.)* |
| Trang | はい、<ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>ですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, trên 30 giây ạ. Em rõ rồi.)* |
| Bếp trưởng Kimura | それから、お<ruby>膳<rt>ぜん</rt></ruby>を<ruby>運<rt>はこ</rt></ruby>ぶ<ruby>時<rt>とき</rt></ruby>はゆっくり、<ruby>両手<rt>りょうて</rt></ruby>で。<ruby>急<rt>いそ</rt></ruby>がないでください。<br>*(Còn khi bưng mâm thì từ từ, hai tay. Đừng vội.)* |
| Trang | お<ruby>膳<rt>ぜん</rt></ruby>...<ruby>料理<rt>りょうり</rt></ruby>を<ruby>運<rt>はこ</rt></ruby>ぶ<ruby>台<rt>だい</rt></ruby>ですか？<br>*(Ozen... là cái bàn bưng món ăn ạ?)* |
| Bếp trưởng Kimura | そうです。<ruby>四角<rt>しかく</rt></ruby>い<ruby>木<rt>き</rt></ruby>の<ruby>台<rt>だい</rt></ruby>です。<br>*(Đúng vậy. Là cái bàn gỗ vuông.)* |

---

## Tình huống 9 — 大浴場 đại nhà tắm · 11:15, học về nhà tắm chung

| Vai | Lời thoại |
|---|---|
| Yumiko | ここが<ruby>大浴場<rt>だいよくじょう</rt></ruby>です。<ruby>男湯<rt>おとこゆ</rt></ruby>と<ruby>女湯<rt>おんなゆ</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かれています。<br>*(Đây là đại nhà tắm. Chia thành tắm nam và tắm nữ.)* |
| Trang | <ruby>温泉<rt>おんせん</rt></ruby>ですか？<br>*(Là suối nước nóng ạ?)* |
| Yumiko | はい、<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>温泉<rt>おんせん</rt></ruby>です。<ruby>地下<rt>ちか</rt></ruby>から<ruby>湧<rt>わ</rt></ruby>いています。<br>*(Vâng, suối nước nóng thật. Phun lên từ dưới đất.)* |
| Pradeep | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>はいつ<ruby>使<rt>つか</rt></ruby>えますか？<br>*(Khách dùng được lúc nào ạ?)* |
| Yumiko | <ruby>朝<rt>あさ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>夜<rt>よる</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>までです。<br>*(Từ 5h sáng đến 11h tối.)* |
| Yumiko | <ruby>掃除<rt>そうじ</rt></ruby>は<ruby>夜<rt>よる</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>朝<rt>あさ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>までです。チャンさんも<ruby>担当<rt>たんとう</rt></ruby>することがあります。<br>*(Dọn từ 11h tối đến 5h sáng. Cô Trang cũng có lúc phải phụ trách.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Yumiko | お<ruby>風呂<rt>ふろ</rt></ruby>のお<ruby>湯<rt>ゆ</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>は<ruby>42<rt>よんじゅうに</rt></ruby><ruby>度<rt>ど</rt></ruby>です。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が「<ruby>熱<rt>あつ</rt></ruby>い」と<ruby>言<rt>い</rt></ruby>ったら、<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Nhiệt độ nước tắm là 42 độ. Nếu khách nói "nóng quá", phải báo cáo bà chủ.)* |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em nhất định sẽ báo cáo.)* |

---

## Tình huống 10 — Phòng thay đồ · 14:00, Yumiko dạy mặc kimono làm việc

*Sau bữa trưa, Yumiko dẫn Trang vào phòng thay đồ, đưa cho cô bộ kimono làm việc màu nâu nhạt và 帯 obi đỏ.*

| Vai | Lời thoại |
|---|---|
| Yumiko | これがチャンさんの<ruby>着物<rt>きもの</rt></ruby>です。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>ですから、<ruby>動<rt>うご</rt></ruby>きやすいです。<br>*(Đây là kimono của cô Trang. Là kimono làm việc nên dễ cử động.)* |
| Trang | きれいな<ruby>色<rt>いろ</rt></ruby>ですね。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>着<rt>き</rt></ruby>られますか？<br>*(Màu đẹp quá. Em mặc một mình được không ạ?)* |
| Yumiko | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>今日<rt>きょう</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Lúc đầu khó. Hôm nay tôi giúp.)* |
| Yumiko | まず<ruby>肌着<rt>はだぎ</rt></ruby>を<ruby>着<rt>き</rt></ruby>ます。それから<ruby>着物<rt>きもの</rt></ruby>を<ruby>羽織<rt>はお</rt></ruby>ります。<br>*(Trước tiên mặc đồ lót. Sau đó khoác kimono.)* |
| Trang | <ruby>右<rt>みぎ</rt></ruby>と<ruby>左<rt>ひだり</rt></ruby>、どちらが<ruby>上<rt>うえ</rt></ruby>ですか？<br>*(Phải và trái, bên nào ở trên ạ?)* |
| Yumiko | <ruby>大事<rt>だいじ</rt></ruby>な<ruby>質問<rt>しつもん</rt></ruby>です！<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>です。<ruby>右前<rt>みぎまえ</rt></ruby>は<ruby>死装束<rt>しにしょうぞく</rt></ruby>で、<ruby>絶対<rt>ぜったい</rt></ruby>にダメです。<br>*(Câu hỏi quan trọng! Trái ở trên. Phải ở trên là quần áo tang, tuyệt đối không được.)* |
| Trang | え、<ruby>死装束<rt>しにしょうぞく</rt></ruby>...！<ruby>必<rt>かなら</rt></ruby>ず<ruby>気<rt>き</rt></ruby>をつけます。<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>、<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>...<br>*(Ơ, quần áo tang...! Em sẽ chú ý chắc chắn. Trái trên, trái trên...)* |
| Yumiko | はい。それから<ruby>帯<rt>おび</rt></ruby>を<ruby>結<rt>むす</rt></ruby>びます。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>時<rt>とき</rt></ruby>は<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>結<rt>むす</rt></ruby>び<ruby>方<rt>かた</rt></ruby>です。<br>*(Vâng. Sau đó buộc obi. Khi làm việc thì buộc kiểu đơn giản.)* |
| Trang | <ruby>帯<rt>おび</rt></ruby>はきついですね。<br>*(Obi chặt quá ạ.)* |
| Yumiko | <ruby>慣<rt>な</rt></ruby>れます。きつすぎたら<ruby>言<rt>い</rt></ruby>ってください。<br>*(Sẽ quen. Nếu chặt quá thì nói nhé.)* |
| Trang | はい。あの、<ruby>動<rt>うご</rt></ruby>けますか？（<ruby>歩<rt>ある</rt></ruby>いてみる）<br>*(Vâng. Dạ, đi được không nhỉ? Đi thử.)* |
| Yumiko | <ruby>歩幅<rt>ほはば</rt></ruby>を<ruby>小<rt>ちい</rt></ruby>さく。<ruby>急<rt>いそ</rt></ruby>がないように。<br>*(Bước nhỏ thôi. Đừng vội.)* |

---

## Tình huống 11 — Hành lang · 15:30, gặp 女将 Sato kiểm tra

| Vai | Lời thoại |
|---|---|
| Okami Sato | （<ruby>近<rt>ちか</rt></ruby>づいてくる）チャンさん、<ruby>着物<rt>きもの</rt></ruby>を<ruby>着<rt>き</rt></ruby>ましたね。<br>*(Tiến lại. Cô Trang, mặc kimono rồi nhỉ.)* |
| Trang | （<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まって<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、<ruby>女将<rt>おかみ</rt></ruby>さん。<ruby>由美子<rt>ゆみこ</rt></ruby>さんが<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Dừng lại cúi đầu. Vâng, bà chủ ạ. Chị Yumiko đã chỉ cho em.)* |
| Okami Sato | （<ruby>着物<rt>きもの</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>...いいですね。<ruby>帯<rt>おび</rt></ruby>もきれいです。<br>*(Nhìn kimono. Trái ở trên... tốt đấy. Obi cũng đẹp.)* |
| Trang | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Okami Sato | <ruby>姿勢<rt>しせい</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてください。<ruby>背筋<rt>せすじ</rt></ruby>を<ruby>伸<rt>の</rt></ruby>ばして。<br>*(Chú ý tư thế. Thẳng lưng lên.)* |
| Trang | （<ruby>背筋<rt>せすじ</rt></ruby>を<ruby>伸<rt>の</rt></ruby>ばす）はい。<br>*(Thẳng lưng. Vâng ạ.)* |
| Okami Sato | <ruby>着物<rt>きもの</rt></ruby>を<ruby>着<rt>き</rt></ruby>ると、<ruby>自然<rt>しぜん</rt></ruby>に<ruby>動<rt>うご</rt></ruby>き<ruby>方<rt>かた</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります。それが「<ruby>和<rt>わ</rt></ruby>の<ruby>心<rt>こころ</rt></ruby>」です。<br>*(Mặc kimono thì tự nhiên cách cử động sẽ thay đổi. Đó là "tâm hồn Nhật".)* |
| Trang | <ruby>和<rt>わ</rt></ruby>の<ruby>心<rt>こころ</rt></ruby>...<ruby>素敵<rt>すてき</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Tâm hồn Nhật... lời hay quá ạ.)* |
| Okami Sato | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby>には<ruby>自然<rt>しぜん</rt></ruby>になります。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Sau 1 năm sẽ thành tự nhiên. Cố gắng nhé.)* |

---

## Tình huống 12 — Phòng văn phòng · 17:00, báo cáo 報連相 cuối ngày

| Vai | Lời thoại |
|---|---|
| Yumiko | チャンさん、プラディープさん、<ruby>1日<rt>いちにち</rt></ruby><ruby>目<rt>め</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>をしてください。<br>*(Cô Trang, anh Pradeep, hãy báo cáo ngày đầu.)* |
| Trang | はい。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>玄関<rt>げんかん</rt></ruby>、<ruby>客室<rt>きゃくしつ</rt></ruby>、<ruby>厨房<rt>ちゅうぼう</rt></ruby>、<ruby>大浴場<rt>だいよくじょう</rt></ruby>を<ruby>案内<rt>あんない</rt></ruby>していただきました。<br>*(Vâng. Hôm nay được dẫn đi sảnh, phòng khách, bếp, đại nhà tắm.)* |
| Yumiko | はい。<br>*(Ừ.)* |
| Trang | <ruby>新<rt>あたら</rt></ruby>しく<ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>は「<ruby>打<rt>う</rt></ruby>ち<ruby>水<rt>みず</rt></ruby>」「<ruby>床<rt>とこ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」「<ruby>畳<rt>たたみ</rt></ruby>の<ruby>縁<rt>へり</rt></ruby>」「お<ruby>膳<rt>ぜん</rt></ruby>」「<ruby>板長<rt>いたちょう</rt></ruby>」などです。<br>*(Từ mới học là "uchimizu", "tokonoma", "viền tatami", "ozen", "bếp trưởng", v.v.)* |
| Yumiko | よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。<br>*(Nhớ giỏi đấy.)* |
| Trang | <ruby>着物<rt>きもの</rt></ruby>の<ruby>着<rt>き</rt></ruby><ruby>方<rt>かた</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えていただきました。<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>が<ruby>下<rt>した</rt></ruby>です。<br>*(Còn được dạy cách mặc kimono. Trái trên, phải dưới.)* |
| Yumiko | <ruby>大事<rt>だいじ</rt></ruby>です。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>間違<rt>まちが</rt></ruby>えないでください。<br>*(Quan trọng. Tuyệt đối không được nhầm.)* |
| Trang | <ruby>明日<rt>あした</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をしますか？<br>*(Mai làm gì ạ?)* |
| Yumiko | <ruby>明日<rt>あした</rt></ruby>は<ruby>女将<rt>おかみ</rt></ruby>さんが「おもてなし」の<ruby>講義<rt>こうぎ</rt></ruby>をします。それから<ruby>挨拶<rt>あいさつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>です。<br>*(Mai bà chủ giảng về "omotenashi". Sau đó luyện chào hỏi.)* |
| Trang | はい、<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(Vâng, em mong đợi ạ.)* |
| Pradeep | チャンさん、メモ<ruby>取<rt>と</rt></ruby>るのが<ruby>早<rt>はや</rt></ruby>いですね。<br>*(Cô Trang, cô ghi chép nhanh quá nhỉ.)* |
| Trang | ベトナムでレストランで<ruby>働<rt>はたら</rt></ruby>いていたから、メモの<ruby>癖<rt>くせ</rt></ruby>があります。<br>*(Vì làm nhà hàng ở Việt Nam nên có thói quen ghi chép.)* |

---

## Tình huống 13 — Phòng ký túc · 21:00, gọi điện về Huế (cảnh tiếng Việt)

> Cảnh tiếng Việt — gọi cho mẹ và em gái, kể về ngày đầu chính thức.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Mẹ, em ơi, ngày đầu chính thức của con xong rồi. |
| Mẹ Trang | (tiếng Việt) Có gì hay không con? |
| Trang | (tiếng Việt) Hay lắm mẹ ạ. Chị sempai dẫn con đi xem hết ryokan. Có 床の間 — chỗ trang trí tranh và hoa, thiêng liêng không được đặt đồ. Có 畳 chiếu tatami, đi không được giẫm lên viền. |
| Em Trang | (tiếng Việt) Sao nhiều quy tắc thế chị? |
| Trang | (tiếng Việt) Đúng, nhiều lắm. Mà cái hay nhất là con được mặc kimono! Màu nâu nhạt, có obi đỏ. Bà chủ khen con đẹp. |
| Mẹ Trang | (tiếng Việt) Trời, mẹ phải xem ảnh. Mai chụp gửi mẹ nhé. |
| Trang | (tiếng Việt) Dạ. Mà mẹ ơi, có một điều con nhớ kỹ: mặc kimono phải bên trái trên bên phải dưới. Nếu ngược lại là kiểu mặc cho người chết, kỵ lắm. |
| Em Trang | (tiếng Việt) Eo ơi, ghê quá. Chị cẩn thận đó. |
| Trang | (tiếng Việt) Ừ. Còn nữa, khách thì gọi là お客様 okyaku-sama, không phải okyaku-san. Đi hành lang gặp khách phải dừng lại cúi đầu. |
| Mẹ Trang | (tiếng Việt) Như đối xử với khách quý. |
| Trang | (tiếng Việt) Đúng vậy mẹ. Bà chủ gọi là "đối xử với khách như thần". |
| Em Trang | (tiếng Việt) Chị giống cô tiên ryokan rồi đấy. |
| Trang | (tiếng Việt) Cô tiên cái gì. Mai 6h30 lại dậy nữa. Con đi ngủ đây. |

---

## Đọng lại chương 2

Ngày đầu chính thức, Trang tham quan toàn bộ ryokan Higashiyama: **玄関** (sảnh chính, nơi gây 第一印象 — ấn tượng đầu tiên, vẩy 打ち水 mỗi sáng), **客室** (床の間 thiêng liêng cấm đặt đồ, 畳の縁 không giẫm), **厨房** (bếp trưởng dạy 30秒以上 rửa tay, お膳 bưng hai tay), **大浴場** (温泉 thật, nhiệt độ 42度). Học **cách xưng hô お客様** (luôn có 様, gặp dừng lại cúi đầu, đi bên trái nhường khách bên phải), **mặc 着物 làm việc** (LEFT trên RIGHT dưới — RIGHT trên = 死装束 áo tang KỴ tuyệt đối), và làm **報告 báo cáo 報連相** cuối ngày với sempai Yumiko.

> Từ vựng & mẫu câu chương này: 玄関・打ち水・第一印象・客室・床の間・掛け軸・畳・縁・座布団・お膳・厨房・板長・大浴場・男湯・女湯・温泉・着物・帯・肌着・死装束・和の心・報告・お客様・本日もよろしくお願いいたします・失礼いたします・〜が上です

## Bí quyết chương

- **Hai sai lầm chết người Y1 phải tránh**: mặc 右前 kimono (áo tang) + giẫm lên 畳の縁. Trang ghim ngay ngày 1.
- **Pyramid xưng hô**: お客様 (tuyệt đối) > 女将さん > 板長 > 〜さん (đồng nghiệp). Đừng dùng 〜さん cho khách.
- **打ち水 = lời chào không lời**: Wet ground = "we welcome you". Trang sẽ làm hàng sáng từ T3.
- **Phân ca đêm**: Dọn 大浴場 11pm–5am — Trang sẽ vào ca này từ T6 trở đi.
- **VN nhà**: Mẹ Trang & em gái — sợi dây tinh thần Huế xuyên suốt 12 chương.

> *"6/4/2025. Ngày 2. Đã mặc kimono. Trái trên — tuyệt đối nhớ."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本日 | ほんじつ | BẢN NHẬT | Hôm nay (kính ngữ) |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán |
| 館内 | かんない | QUÁN NỘI | Bên trong quán |
| 案内 | あんない | ÁN NỘI | Hướng dẫn, dẫn đường |
| 玄関 | げんかん | HUYỀN QUAN | Sảnh chính |
| 第一印象 | だいいちいんしょう | ĐỆ NHẤT ẤN TƯỢNG | Ấn tượng đầu tiên |
| 打ち水 | うちみず | ĐẢ THUỶ | Tưới nước trước cửa |
| 細かい | こまかい | TẾ | Tỉ mỉ, chi tiết |
| お客様 | おきゃくさま | KHÁCH | Khách (kính ngữ) |
| 神様 | かみさま | THẦN | Thần thánh |
| 立ち止まる | たちどまる | LẬP CHỈ | Dừng lại |
| 笑顔 | えがお | TIẾU NHAN | Khuôn mặt cười |
| 客室 | きゃくしつ | KHÁCH THẤT | Phòng khách |
| 失礼いたします | しつれいいたします | THẤT LỄ | Xin phép (kính ngữ) |
| 返事 | へんじ | PHẢN SỰ | Trả lời |
| 引き戸 | ひきど | DẪN HỘ | Cửa kéo |
| 正座 | せいざ | CHÍNH TOẠ | Ngồi seiza (gập đầu gối) |
| 床の間 | とこのま | SÀNG GIAN | Tokonoma (góc trang trí) |
| 掛け軸 | かけじく | QUẢI TRỤC | Tranh cuộn treo |
| 生け花 | いけばな | SINH HOA | Cắm hoa nghệ thuật |
| 飾る | かざる | SỨC | Trang trí |
| 神聖 | しんせい | THẦN THÁNH | Thiêng liêng |
| 畳 | たたみ | ĐIỆP | Chiếu tatami |
| 縁 | へり | DUYÊN | Viền, mép |
| 端 | はし | ĐOAN | Đầu, mép |
| 座布団 | ざぶとん | TOẠ BỐ ĐOÀN | Nệm ngồi zabuton |
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 廊下 | ろうか | LANG HẠ | Hành lang |
| 優先 | ゆうせん | ƯU TIÊN | Ưu tiên |
| 足音 | あしおと | TÚC ÂM | Tiếng bước chân |
| 静か | しずか | TĨNH | Yên lặng |
| 厨房 | ちゅうぼう | TRÙ PHÒNG | Bếp |
| 板長 | いたちょう | BẢN TRƯỞNG | Bếp trưởng |
| 紹介 | しょうかい | THIỆU GIỚI | Giới thiệu |
| 触る | さわる | XÚC | Chạm vào |
| お膳 | おぜん | THIỆN | Mâm bưng món |
| 両手 | りょうて | LƯỠNG THỦ | Hai tay |
| 大浴場 | だいよくじょう | ĐẠI DỤC TRƯỜNG | Đại nhà tắm |
| 男湯 | おとこゆ | NAM THANG | Tắm nam |
| 女湯 | おんなゆ | NỮ THANG | Tắm nữ |
| 湧く | わく | DŨNG | Phun, vọt lên |
| 温度 | おんど | ÔN ĐỘ | Nhiệt độ |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 着物 | きもの | TRƯỚC VẬT | Kimono |
| 帯 | おび | ĐỚI | Đai obi |
| 肌着 | はだぎ | CƠ TRƯỚC | Đồ lót |
| 羽織る | はおる | VŨ ĐÌNH | Khoác lên |
| 死装束 | しにしょうぞく | TỬ TRANG THÚC | Quần áo tang |
| 結ぶ | むすぶ | KẾT | Buộc, thắt |
| 歩幅 | ほはば | BỘ PHÚC | Bước chân |
| 姿勢 | しせい | TƯ THẾ | Tư thế |
| 背筋 | せすじ | BỐI CÂN | Sống lưng |
| 和の心 | わのこころ | HOÀ TÂM | Tâm hồn Nhật |
| 講義 | こうぎ | GIẢNG NGHĨA | Bài giảng |
| 癖 | くせ | TÍCH | Thói quen |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000003, 800000046, NULL, 'markdown_book', 'T3. 女将 giới thiệu おもてなし và dạy chào khách (女将のおもてなし講義)', '# Sách thực tập sinh khách sạn · T3. 女将 giới thiệu おもてなし và dạy chào khách (女将のおもてなし講義)

> **Mục tiêu nhân vật:** Trang học bài giảng đầu tiên từ 女将 Sato về triết lý おもてなし — tinh thần cốt lõi của ryokan Nhật. Học các mẫu hội thoại tiếng Nhật chào khách chuẩn nghi thức ryokan: いらっしゃいませ・ようこそお越しくださいました・お足元にお気をつけください・ごゆっくりどうぞ. Luyện thao tác cúi đầu 3 mức (会釈・敬礼・最敬礼), chào nhập vai, và đối thoại tình huống khách đến.

---

## Bối cảnh

Ngày 7 tháng 4 năm 2025, sáng. Sau bữa sáng, 女将 Sato dẫn Trang và Pradeep vào phòng trà nhỏ "<ruby>梅<rt>うめ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>" để giảng bài đầu tiên về おもてなし — triết lý đãi khách tận tâm. Chương này tập trung học các mẫu câu chào khách chuẩn ryokan, 3 mức cúi đầu, và mô phỏng cảnh khách đến check-in.

---

## Tình huống 1 — Phòng "梅の間" · 9:00, 女将 mở bài giảng おもてなし

| Vai | Lời thoại |
|---|---|
| Okami Sato | チャンさん、プラディープさん、おはようございます。<br>*(Cô Trang, anh Pradeep, chào buổi sáng.)* |
| Trang, Pradeep | （<ruby>正座<rt>せいざ</rt></ruby>して<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>女将<rt>おかみ</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Ngồi seiza cúi đầu. Bà chủ, chào buổi sáng. Hôm nay cũng mong bà ạ.)* |
| Okami Sato | <ruby>本日<rt>ほんじつ</rt></ruby>は「おもてなし」について<ruby>話<rt>はな</rt></ruby>します。<ruby>当館<rt>とうかん</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>な<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<br>*(Hôm nay tôi nói về "omotenashi". Là tư duy quan trọng nhất của quán.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong bà ạ.)* |
| Okami Sato | 「おもてなし」は、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>から<ruby>大切<rt>たいせつ</rt></ruby>にする<ruby>気持<rt>きも</rt></ruby>ちです。<br>*("Omotenashi" là tâm tình trân quý khách bằng cả tấm lòng.)* |
| Pradeep | サービスとは<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Có khác với dịch vụ không ạ?)* |
| Okami Sato | いい<ruby>質問<rt>しつもん</rt></ruby>です。サービスは<ruby>料金<rt>りょうきん</rt></ruby>に<ruby>対<rt>たい</rt></ruby>する<ruby>仕事<rt>しごと</rt></ruby>です。おもてなしは<ruby>料金<rt>りょうきん</rt></ruby>を<ruby>越<rt>こ</rt></ruby>えます。<ruby>見返<rt>みかえ</rt></ruby>りを<ruby>求<rt>もと</rt></ruby>めません。<br>*(Câu hỏi hay. Dịch vụ là công việc đối với phí. Omotenashi vượt qua phí. Không cầu báo đáp.)* |
| Trang | <ruby>見返<rt>みかえ</rt></ruby>り...というのは？<br>*(Mikaeri... là gì ạ?)* |
| Okami Sato | お<ruby>礼<rt>れい</rt></ruby>やチップのことです。おもてなしは「<ruby>感謝<rt>かんしゃ</rt></ruby>されたいから」<ruby>行<rt>おこな</rt></ruby>うものではありません。「お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>喜<rt>よろこ</rt></ruby>んでいただきたいから」<ruby>行<rt>おこな</rt></ruby>うものです。<br>*(Là lời cảm ơn hoặc tiền tip. Omotenashi không phải làm vì "muốn được cảm ơn". Làm vì "muốn khách vui".)* |
| Trang | なるほど、<ruby>深<rt>ふか</rt></ruby>い<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Ra vậy, là từ ngữ sâu sắc.)* |

---

## Tình huống 2 — Phòng "梅の間" · 9:20, 女将 dạy 3 nguyên tắc おもてなし

| Vai | Lời thoại |
|---|---|
| Okami Sato | おもてなしには<ruby>三<rt>みっ</rt></ruby>つの<ruby>原則<rt>げんそく</rt></ruby>があります。<br>*(Omotenashi có 3 nguyên tắc.)* |
| Trang | （メモを<ruby>取<rt>と</rt></ruby>る）はい。<br>*(Ghi chép. Vâng.)* |
| Okami Sato | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>察<rt>さっ</rt></ruby>する<ruby>心<rt>こころ</rt></ruby>」。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>言<rt>い</rt></ruby>う<ruby>前<rt>まえ</rt></ruby>に<ruby>気付<rt>きづ</rt></ruby>くこと。<br>*(Thứ nhất, "tâm thấu hiểu". Nhận ra trước khi khách nói.)* |
| Pradeep | <ruby>言<rt>い</rt></ruby>う<ruby>前<rt>まえ</rt></ruby>に...<ruby>難<rt>むずか</rt></ruby>しいですね。<br>*(Trước khi nói... khó nhỉ.)* |
| Okami Sato | <ruby>例<rt>たと</rt></ruby>えば、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>寒<rt>さむ</rt></ruby>そうにしていたら、すぐにブランケットをお<ruby>持<rt>も</rt></ruby>ちします。<ruby>聞<rt>き</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に。<br>*(Ví dụ, nếu khách có vẻ lạnh, mình mang chăn ngay. Trước khi hỏi.)* |
| Trang | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>をよく<ruby>観察<rt>かんさつ</rt></ruby>する、ということですね。<br>*(Là quan sát khách kỹ, đúng không ạ?)* |
| Okami Sato | そうです。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>陰<rt>かげ</rt></ruby>のおもてなし」。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>見<rt>み</rt></ruby>ていないところでも<ruby>同<rt>おな</rt></ruby>じように<ruby>仕事<rt>しごと</rt></ruby>すること。<br>*(Đúng vậy. Thứ hai, "omotenashi trong bóng tối". Làm việc giống nhau cả khi khách không thấy.)* |
| Trang | <ruby>陰<rt>かげ</rt></ruby>のおもてなし...?<br>*(Omotenashi trong bóng tối...?)* |
| Okami Sato | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>外<rt>そと</rt></ruby>に<ruby>出<rt>で</rt></ruby>ている<ruby>間<rt>あいだ</rt></ruby>も、お<ruby>部屋<rt>へや</rt></ruby>をきれいに<ruby>整<rt>ととの</rt></ruby>えます。<ruby>誰<rt>だれ</rt></ruby>も<ruby>見<rt>み</rt></ruby>ていなくても、<ruby>手<rt>て</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>きません。<br>*(Ngay cả khi khách đi ra ngoài cũng dọn phòng gọn gàng. Dù không ai nhìn cũng không cẩu thả.)* |
| Pradeep | <ruby>手<rt>て</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>く...というのは？<br>*(Te wo nuku... là gì ạ?)* |
| Okami Sato | <ruby>仕事<rt>しごと</rt></ruby>を<ruby>適当<rt>てきとう</rt></ruby>にすることです。おもてなしには<ruby>絶対<rt>ぜったい</rt></ruby>にダメです。<br>*(Là làm việc qua loa. Omotenashi tuyệt đối không được thế.)* |
| Trang | わかりました。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Em hiểu. Điểm thứ ba ạ?)* |
| Okami Sato | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>一期一会<rt>いちごいちえ</rt></ruby>」。<br>*(Thứ ba, "ichigo ichie".)* |
| Trang | い、いちごいちえ...?<br>*(I, ichigo ichie...?)* |

---

## Tình huống 3 — Phòng "梅の間" · 9:40, 女将 giải thích 一期一会

| Vai | Lời thoại |
|---|---|
| Okami Sato | 「<ruby>一期一会<rt>いちごいちえ</rt></ruby>」は<ruby>茶道<rt>さどう</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>です。「<ruby>一生<rt>いっしょう</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby>の<ruby>出会<rt>であ</rt></ruby>い」という<ruby>意味<rt>いみ</rt></ruby>です。<br>*("Ichigo ichie" là từ trong trà đạo. Nghĩa là "cuộc gặp một lần duy nhất trong đời".)* |
| Trang | <ruby>一生<rt>いっしょう</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby>...?<br>*(Một lần trong đời...?)* |
| Okami Sato | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>とのこの<ruby>瞬間<rt>しゅんかん</rt></ruby>は、<ruby>二度<rt>にど</rt></ruby>とありません。だから、<ruby>毎回<rt>まいかい</rt></ruby>、<ruby>心<rt>こころ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めて<ruby>接<rt>せっ</rt></ruby>します。<br>*(Khoảnh khắc này với khách không có lần hai. Vì thế, mỗi lần đều dồn cả tấm lòng.)* |
| Trang | わあ、<ruby>素敵<rt>すてき</rt></ruby>な<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですね。<br>*(Ồ, suy nghĩ hay quá ạ.)* |
| Okami Sato | <ruby>同<rt>おな</rt></ruby>じお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>来年<rt>らいねん</rt></ruby>もまた<ruby>来<rt>く</rt></ruby>るかもしれません。でも、その<ruby>時<rt>とき</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>はもう「<ruby>違<rt>ちが</rt></ruby>うお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>」です。<ruby>気持<rt>きも</rt></ruby>ちが<ruby>変<rt>か</rt></ruby>わっているかもしれません。<br>*(Cùng vị khách có thể sang năm lại tới. Nhưng lúc đó khách đã là "khách khác". Tâm tình có thể đã khác.)* |
| Pradeep | だから<ruby>毎回<rt>まいかい</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めて、ということですね。<br>*(Vì vậy mỗi lần đều là lần đầu, đúng không ạ?)* |
| Okami Sato | そうです。これがおもてなしの<ruby>心<rt>こころ</rt></ruby>です。<br>*(Đúng vậy. Đây là tâm hồn omotenashi.)* |
| Trang | ベトナム<ruby>語<rt>ご</rt></ruby>に<ruby>翻訳<rt>ほんやく</rt></ruby>しても<ruby>難<rt>むずか</rt></ruby>しいですね。<ruby>気持<rt>きも</rt></ruby>ちで<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Dịch sang tiếng Việt cũng khó ạ. Em sẽ nhớ bằng cảm xúc.)* |
| Okami Sato | それでいいです。<ruby>頭<rt>あたま</rt></ruby>ではなくて、<ruby>心<rt>こころ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Vậy là đủ. Không phải bằng đầu mà bằng tim.)* |

---

## Tình huống 4 — Phòng "梅の間" · 10:00, 女将 dạy 3 mức cúi đầu

*Okami đứng dậy, chỉnh kimono. Trang và Pradeep cũng đứng lên.*

| Vai | Lời thoại |
|---|---|
| Okami Sato | <ruby>次<rt>つぎ</rt></ruby>に<ruby>挨拶<rt>あいさつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をします。お<ruby>辞儀<rt>じぎ</rt></ruby>には<ruby>三<rt>みっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>があります。<br>*(Tiếp theo luyện chào hỏi. Cúi chào có 3 cấp độ.)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>...?<br>*(3 cấp độ...?)* |
| Okami Sato | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>会釈<rt>えしゃく</rt></ruby>」。<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>ぐらいです。<ruby>軽<rt>かる</rt></ruby>い<ruby>挨拶<rt>あいさつ</rt></ruby>です。<br>*(Thứ nhất, "eshaku". Khoảng 15 độ. Là chào nhẹ.)* |
| Okami Sato | （やる）こうです。<br>*(Làm thử. Như này.)* |
| Trang | （まねする）こうですか？<br>*(Bắt chước. Như này ạ?)* |
| Okami Sato | はい、いいですね。<ruby>廊下<rt>ろうか</rt></ruby>でお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>とすれ<ruby>違<rt>ちが</rt></ruby>う<ruby>時<rt>とき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Vâng, tốt. Dùng khi đi qua khách ở hành lang.)* |
| Okami Sato | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>敬礼<rt>けいれい</rt></ruby>」。<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>ぐらいです。<ruby>普通<rt>ふつう</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>です。<br>*(Thứ hai, "keirei". Khoảng 30 độ. Là chào thông thường.)* |
| Okami Sato | （やる）「いらっしゃいませ」と<ruby>言<rt>い</rt></ruby>う<ruby>時<rt>とき</rt></ruby>はこれです。<br>*(Làm thử. Khi nói "irasshaimase" thì dùng cái này.)* |
| Pradeep | （まねする）<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>...こうですか？<br>*(Bắt chước. 30 độ... như này ạ?)* |
| Okami Sato | もう<ruby>少<rt>すこ</rt></ruby>し<ruby>深<rt>ふか</rt></ruby>く。そう。<br>*(Sâu thêm chút nữa. Đúng rồi.)* |
| Okami Sato | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>最敬礼<rt>さいけいれい</rt></ruby>」。<ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>ぐらいです。<ruby>一番<rt>いちばん</rt></ruby><ruby>深<rt>ふか</rt></ruby>いお<ruby>辞儀<rt>じぎ</rt></ruby>です。<br>*(Thứ ba, "saikeirei". Khoảng 45 độ. Là cúi sâu nhất.)* |
| Okami Sato | （やる）お<ruby>礼<rt>れい</rt></ruby>とお<ruby>詫<rt>わ</rt></ruby>びの<ruby>時<rt>とき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Làm thử. Dùng khi cảm ơn và xin lỗi.)* |
| Trang | （まねする）<ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>...<ruby>足<rt>あし</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>痛<rt>いた</rt></ruby>いです。<br>*(Bắt chước. 45 độ... chân hơi đau ạ.)* |
| Okami Sato | <ruby>慣<rt>な</rt></ruby>れます。<ruby>大事<rt>だいじ</rt></ruby>なのは、<ruby>頭<rt>あたま</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がる<ruby>時<rt>とき</rt></ruby>は<ruby>息<rt>いき</rt></ruby>を<ruby>吐<rt>は</rt></ruby>き、<ruby>上<rt>あ</rt></ruby>げる<ruby>時<rt>とき</rt></ruby>は<ruby>吸<rt>す</rt></ruby>うこと。<br>*(Sẽ quen. Điều quan trọng là khi cúi xuống thở ra, khi ngẩng lên hít vào.)* |

---

## Tình huống 5 — Phòng "梅の間" · 10:30, học mẫu câu chào khách đến

| Vai | Lời thoại |
|---|---|
| Okami Sato | <ruby>挨拶<rt>あいさつ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えます。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>来<rt>こ</rt></ruby>られたら、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>いますか？<br>*(Tôi dạy lời chào hỏi. Khi khách đến, đầu tiên nói gì?)* |
| Trang | はい、「いらっしゃいませ」です。<br>*(Vâng, "irasshaimase" ạ.)* |
| Okami Sato | そうです。でも、<ruby>当館<rt>とうかん</rt></ruby>では、もう<ruby>一言<rt>ひとこと</rt></ruby><ruby>加<rt>くわ</rt></ruby>えます。「ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました」。<br>*(Đúng vậy. Nhưng ở quán mình thêm một câu nữa. "Youkoso o-koshi kudasaimashita".)* |
| Pradeep | ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました...どういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*("Youkoso o-koshi kudasaimashita"... nghĩa là gì ạ?)* |
| Okami Sato | 「<ruby>来<rt>き</rt></ruby>てくださってありがとうございます」のとても<ruby>丁寧<rt>ていねい</rt></ruby>な<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です。<br>*(Là cách nói rất kính trọng của "cảm ơn vì đã đến".)* |
| Trang | ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました...<ruby>長<rt>なが</rt></ruby>いですね。<br>*("Youkoso o-koshi kudasaimashita"... dài nhỉ.)* |
| Okami Sato | はい、<ruby>長<rt>なが</rt></ruby>いです。でも、ゆっくり、<ruby>心<rt>こころ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めて<ruby>言<rt>い</rt></ruby>ってください。<br>*(Vâng, dài. Nhưng nói chậm, dồn cả tấm lòng.)* |
| Okami Sato | やってみてください。<br>*(Thử đi.)* |
| Trang | （<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>で）いらっしゃいませ。ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<br>*(Cúi 30 độ. Irasshaimase. Youkoso o-koshi kudasaimashita.)* |
| Okami Sato | いいですね。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>笑顔<rt>えがお</rt></ruby>で。<br>*(Tốt đấy. Thêm chút nụ cười nữa.)* |
| Trang | （<ruby>笑顔<rt>えがお</rt></ruby>で<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す）いらっしゃいませ。ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<br>*(Lặp lại với nụ cười. Irasshaimase. Youkoso o-koshi kudasaimashita.)* |
| Okami Sato | <ruby>完璧<rt>かんぺき</rt></ruby>です！<br>*(Hoàn hảo!)* |

---

## Tình huống 6 — Phòng "梅の間" · 11:00, học các mẫu câu khác

| Vai | Lời thoại |
|---|---|
| Okami Sato | <ruby>他<rt>ほか</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えます。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>玄関<rt>げんかん</rt></ruby>の<ruby>段差<rt>だんさ</rt></ruby>を<ruby>上<rt>あ</rt></ruby>がる<ruby>時<rt>とき</rt></ruby>は?<br>*(Tôi dạy các từ quan trọng khác. Khi khách bước lên thềm sảnh thì sao?)* |
| Trang | え、<ruby>段差<rt>だんさ</rt></ruby>...?<br>*(Ơ, "dansa"...?)* |
| Okami Sato | <ruby>床<rt>ゆか</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さの<ruby>違<rt>ちが</rt></ruby>いです。<ruby>玄関<rt>げんかん</rt></ruby>には<ruby>段差<rt>だんさ</rt></ruby>があります。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>転<rt>ころ</rt></ruby>ぶと<ruby>大変<rt>たいへん</rt></ruby>です。<br>*(Là chênh lệch độ cao sàn. Sảnh có bậc lên. Khách té là chuyện lớn.)* |
| Okami Sato | だから「お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください」と<ruby>言<rt>い</rt></ruby>います。<br>*(Nên nói "o-ashimoto ni o-ki wo tsuke kudasai".)* |
| Trang | お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください。「<ruby>足下<rt>あしもと</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて」の<ruby>丁寧<rt>ていねい</rt></ruby>な<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>ですね。<br>*("O-ashimoto ni o-ki wo tsuke kudasai". Là cách nói lịch sự của "chú ý chân", đúng không ạ?)* |
| Okami Sato | はい、<ruby>正解<rt>せいかい</rt></ruby>です。それから、お<ruby>部屋<rt>へや</rt></ruby>にご<ruby>案内<rt>あんない</rt></ruby>する<ruby>時<rt>とき</rt></ruby>は「お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします」。<br>*(Vâng, đúng. Khi dẫn về phòng thì "o-heya e go-annai itashimasu".)* |
| Pradeep | お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします...<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*("O-heya e go-annai itashimasu"... em sẽ nhớ.)* |
| Okami Sato | そして、お<ruby>部屋<rt>へや</rt></ruby>を<ruby>出<rt>で</rt></ruby>る<ruby>時<rt>とき</rt></ruby>は「ごゆっくりどうぞ」と<ruby>言<rt>い</rt></ruby>って、<ruby>静<rt>しず</rt></ruby>かに<ruby>引<rt>ひ</rt></ruby>き<ruby>戸<rt>ど</rt></ruby>を<ruby>閉<rt>し</rt></ruby>めます。<br>*(Khi ra khỏi phòng thì nói "go-yukkuri douzo" và đóng cửa kéo nhẹ.)* |
| Trang | ごゆっくりどうぞ。「ゆっくりしてください」の<ruby>意味<rt>いみ</rt></ruby>ですね。<br>*("Go-yukkuri douzo". Nghĩa là "xin cứ thong thả" nhỉ.)* |
| Okami Sato | はい。<ruby>3<rt>みっ</rt></ruby>つの<ruby>言葉<rt>ことば</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えてください。「いらっしゃいませ・ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました」「お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください」「ごゆっくりどうぞ」。<br>*(Vâng. Nhớ chắc 3 câu này. "Irasshaimase, youkoso o-koshi kudasaimashita", "o-ashimoto ni o-ki wo tsuke kudasai", "go-yukkuri douzo".)* |

---

## Tình huống 7 — Sảnh chính · 13:30, mô phỏng cảnh khách đến (Yumiko đóng vai khách)

*Sau bữa trưa, 女将 Sato và Yumiko đưa Trang ra sảnh chính để diễn vai. Yumiko sẽ đóng vai khách.*

| Vai | Lời thoại |
|---|---|
| Okami Sato | チャンさん、<ruby>由美子<rt>ゆみこ</rt></ruby>さんがお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>役<rt>やく</rt></ruby>です。<ruby>玄関<rt>げんかん</rt></ruby>で<ruby>挨拶<rt>あいさつ</rt></ruby>してください。<br>*(Cô Trang, Yumiko đóng vai khách. Chào ở sảnh đi.)* |
| Trang | はい！<br>*(Vâng!)* |
| Yumiko (vai khách) | （ドアを<ruby>開<rt>あ</rt></ruby>けて<ruby>入<rt>はい</rt></ruby>る）こんにちは。<ruby>予約<rt>よやく</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>です。<br>*(Mở cửa vào. Chào, tôi là Yamada đã đặt phòng.)* |
| Trang | （<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>、<ruby>笑顔<rt>えがお</rt></ruby>で）いらっしゃいませ！ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Cúi 30 độ, nụ cười. Irasshaimase! Youkoso o-koshi kudasaimashita. Quý ông Yamada, chúng tôi đã chờ.)* |
| Yumiko (vai khách) | ありがとう。<br>*(Cảm ơn.)* |
| Trang | お<ruby>荷物<rt>にもつ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Để cháu xách hành lý ạ.)* |
| Yumiko (vai khách) | あ、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(À, nhờ cô.)* |
| Trang | こちらへどうぞ。お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください。<br>*(Mời đi lối này. Xin chú ý chân.)* |
| Yumiko (vai khách) | はい。<br>*(Vâng.)* |
| Trang | お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Cháu sẽ dẫn ngài về phòng.)* |
| Okami Sato | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>初<rt>はじ</rt></ruby>めてとは<ruby>思<rt>おも</rt></ruby>えません。<br>*(Vỗ tay. Tuyệt vời! Không tưởng là lần đầu.)* |
| Trang | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Em cảm ơn ạ. Em hồi hộp lắm.)* |

---

## Tình huống 8 — Sảnh chính · 13:50, lượt Pradeep và lỗi nhỏ

| Vai | Lời thoại |
|---|---|
| Okami Sato | プラディープさん、<ruby>次<rt>つぎ</rt></ruby>はあなたです。<br>*(Anh Pradeep, đến lượt anh.)* |
| Pradeep | はい！<br>*(Vâng!)* |
| Yumiko (vai khách) | （<ruby>入<rt>はい</rt></ruby>る）こんにちは。<br>*(Vào. Chào.)* |
| Pradeep | （お<ruby>辞儀<rt>じぎ</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>浅<rt>あさ</rt></ruby>い）いらっしゃいませ。お<ruby>越<rt>こ</rt></ruby>しください。<br>*(Cúi đầu, hơi nông. Irasshaimase. O-koshi kudasai.)* |
| Okami Sato | プラディープさん、ストップ。「お<ruby>越<rt>こ</rt></ruby>しください」ではなくて、「お<ruby>越<rt>こ</rt></ruby>しくださいました」です。<ruby>過去形<rt>かこけい</rt></ruby>です。<br>*(Anh Pradeep, dừng. Không phải "o-koshi kudasai" mà "o-koshi kudasaimashita". Quá khứ.)* |
| Pradeep | あ、すみません。お<ruby>越<rt>こ</rt></ruby>しくださいました。<ruby>過去形<rt>かこけい</rt></ruby>ですね。<br>*(À, xin lỗi. "O-koshi kudasaimashita". Quá khứ ạ.)* |
| Okami Sato | はい。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>はもう<ruby>来<rt>き</rt></ruby>てくれたのです。<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Vâng. Khách đã đến rồi. Là tâm tình biết ơn.)* |
| Pradeep | もう<ruby>一度<rt>いちど</rt></ruby>、いいですか？<br>*(Em làm lại được không ạ?)* |
| Okami Sato | もちろん。<br>*(Tất nhiên.)* |
| Yumiko (vai khách) | （もう<ruby>一度<rt>いちど</rt></ruby><ruby>入<rt>はい</rt></ruby>る）こんにちは。<br>*(Vào lần nữa. Chào.)* |
| Pradeep | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）いらっしゃいませ。ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<br>*(Cúi sâu hơn. Irasshaimase. Youkoso o-koshi kudasaimashita.)* |
| Okami Sato | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>間違<rt>まちが</rt></ruby>えても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Hoàn hảo. Sai cũng không sao. Quan trọng là tâm tình.)* |

---

## Tình huống 9 — Phòng "梅の間" · 14:30, 女将 dạy chào tạm biệt

| Vai | Lời thoại |
|---|---|
| Okami Sato | <ruby>最後<rt>さいご</rt></ruby>に、お<ruby>見送<rt>みおく</rt></ruby>りの<ruby>挨拶<rt>あいさつ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えます。<br>*(Cuối cùng, dạy chào tiễn khách.)* |
| Trang | お<ruby>見送<rt>みおく</rt></ruby>り...というのは、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>帰<rt>かえ</rt></ruby>る<ruby>時<rt>とき</rt></ruby>ですか？<br>*(O-miokuri... là khi khách về ạ?)* |
| Okami Sato | そうです。<ruby>玄関<rt>げんかん</rt></ruby>でお<ruby>見送<rt>みおく</rt></ruby>りします。<ruby>最敬礼<rt>さいけいれい</rt></ruby>で「<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。またのお<ruby>越<rt>こ</rt></ruby>しをお<ruby>待<rt>ま</rt></ruby>ちしております」と<ruby>言<rt>い</rt></ruby>います。<br>*(Đúng vậy. Tiễn ở sảnh. Cúi 45 độ và nói "honjitsu wa makoto ni arigatou gozaimashita. Mata no o-koshi wo o-machi shite orimasu".)* |
| Trang | <ruby>長<rt>なが</rt></ruby>いですね。「<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました」は「<ruby>今日<rt>きょう</rt></ruby>はどうもありがとうございました」の<ruby>丁寧<rt>ていねい</rt></ruby>な<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>ですか？<br>*(Dài nhỉ. "Honjitsu wa makoto ni arigatou gozaimashita" là cách nói lịch sự của "kyou wa doumo arigatou gozaimashita" ạ?)* |
| Okami Sato | はい、その<ruby>通<rt>とお</rt></ruby>りです。よく<ruby>気付<rt>きづ</rt></ruby>きました。<br>*(Vâng, đúng vậy. Cô nhận ra giỏi.)* |
| Pradeep | 「またのお<ruby>越<rt>こ</rt></ruby>しをお<ruby>待<rt>ま</rt></ruby>ちしております」は?<br>*(Còn "mata no o-koshi wo o-machi shite orimasu" thì sao ạ?)* |
| Okami Sato | 「また<ruby>来<rt>き</rt></ruby>てくださるのをお<ruby>待<rt>ま</rt></ruby>ちしています」の<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Nghĩa là "chúng tôi mong ngài lại đến".)* |
| Trang | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>姿<rt>すがた</rt></ruby>が<ruby>見<rt>み</rt></ruby>えなくなるまで<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げますか？<br>*(Có cúi đầu đến khi không thấy bóng khách nữa không ạ?)* |
| Okami Sato | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>質問<rt>しつもん</rt></ruby>です！はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>姿<rt>すがた</rt></ruby>が<ruby>見<rt>み</rt></ruby>えなくなるまで<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げ<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Câu hỏi tuyệt vời! Vâng, đúng vậy. Cúi đầu cho đến khi bóng khách khuất.)* |

---

## Tình huống 10 — Hành lang · 15:30, Trang gặp khách thật lần đầu

*Bài giảng kết thúc. Trang đi qua hành lang để về văn phòng. Bất ngờ một cặp khách Nhật đang đi ngược lại.*

| Vai | Lời thoại |
|---|---|
| Trang | （<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まって<ruby>左<rt>ひだり</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>る、<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>の<ruby>会釈<rt>えしゃく</rt></ruby>）お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>、おはようございます...あ、こんにちは。<br>*(Dừng lại nép bên trái, cúi 15 độ. Okyaku-sama, chào buổi sáng... à, xin chào.)* |
| Khách nữ | あら、ベトナムの<ruby>方<rt>かた</rt></ruby>ですか？お<ruby>若<rt>わか</rt></ruby>いですね。<br>*(Ôi, cô người Việt Nam à? Trẻ quá nhỉ.)* |
| Trang | はい、ベトナムから<ruby>来<rt>き</rt></ruby>ました。<ruby>新人<rt>しんじん</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>勉強<rt>べんきょう</rt></ruby>しています。<br>*(Vâng, em đến từ Việt Nam. Em là người mới. Hôm nay em mới học.)* |
| Khách nam | <ruby>頑張<rt>がんば</rt></ruby>ってね。<ruby>日本<rt>にほん</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて？<br>*(Cố gắng nhé. Lần đầu đến Nhật à?)* |
| Trang | はい、<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Vâng, em đến 3 ngày trước.)* |
| Khách nữ | まあ、<ruby>大変<rt>たいへん</rt></ruby>ですね。<ruby>京都<rt>きょうと</rt></ruby>は<ruby>素敵<rt>すてき</rt></ruby>な<ruby>町<rt>まち</rt></ruby>ですよ。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Ôi, vất vả nhỉ. Kyoto là thành phố tuyệt vời đấy. Cố gắng nhé.)* |
| Trang | ありがとうございます。お<ruby>気<rt>き</rt></ruby>をつけて。<ruby>本日<rt>ほんじつ</rt></ruby>もごゆっくりどうぞ。<br>*(Em cảm ơn ạ. Xin chú ý. Hôm nay cũng xin cứ thong thả.)* |
| Khách nam | ありがとう。<br>*(Cảm ơn.)* |
| Trang | （<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>が<ruby>歩<rt>ある</rt></ruby>き<ruby>去<rt>さ</rt></ruby>るまでもう<ruby>一度<rt>いちど</rt></ruby>お<ruby>辞儀<rt>じぎ</rt></ruby>）<br>*(Cúi đầu lần nữa cho đến khi hai vị khách đi khỏi.)* |

---

## Tình huống 11 — Văn phòng nhỏ · 16:00, Trang khoe Yumiko

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby>さん！<ruby>廊下<rt>ろうか</rt></ruby>でお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>会<rt>あ</rt></ruby>って、<ruby>挨拶<rt>あいさつ</rt></ruby>できました！<br>*(Chị Yumiko! Em đã gặp khách ở hành lang và chào được rồi!)* |
| Yumiko | あら、よかったですね！どんなお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>でしたか？<br>*(Ôi, tốt quá! Khách thế nào?)* |
| Trang | ご<ruby>夫婦<rt>ふうふ</rt></ruby>でした。<ruby>奥<rt>おく</rt></ruby><ruby>様<rt>さま</rt></ruby>はとても<ruby>優<rt>やさ</rt></ruby>しくて、「<ruby>頑張<rt>がんば</rt></ruby>って」と<ruby>言<rt>い</rt></ruby>ってくださいました。<br>*(Là cặp vợ chồng. Bà vợ rất hiền, đã nói "cố gắng nhé".)* |
| Yumiko | それがおもてなしの<ruby>始<rt>はじ</rt></ruby>まりです。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>温<rt>あたた</rt></ruby>かい<ruby>気持<rt>きも</rt></ruby>ちになる。チャンさんも<ruby>温<rt>あたた</rt></ruby>かい<ruby>気持<rt>きも</rt></ruby>ちになる。<br>*(Đó là khởi đầu của omotenashi. Khách thấy ấm áp. Cô Trang cũng thấy ấm áp.)* |
| Trang | はい、<ruby>本当<rt>ほんとう</rt></ruby>に。<ruby>心<rt>こころ</rt></ruby>が<ruby>軽<rt>かる</rt></ruby>くなりました。<br>*(Vâng, thật vậy. Lòng em nhẹ hơn ạ.)* |
| Yumiko | <ruby>一期一会<rt>いちごいちえ</rt></ruby>ですね。あのご<ruby>夫婦<rt>ふうふ</rt></ruby>とは、<ruby>今<rt>いま</rt></ruby>のあの<ruby>瞬間<rt>しゅんかん</rt></ruby>だけです。<br>*(Là ichigo ichie đó. Với cặp vợ chồng đó, chỉ có khoảnh khắc bây giờ.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さんの<ruby>話<rt>はなし</rt></ruby>がわかってきました。<br>*(Em bắt đầu hiểu lời bà chủ ạ.)* |

---

## Tình huống 12 — Phòng văn phòng · 17:00, báo cáo cuối ngày với 女将

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>をいたします。<br>*(Bà chủ, em xin báo cáo hôm nay.)* |
| Okami Sato | はい、どうぞ。<br>*(Vâng, mời.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>は「おもてなし」の<ruby>三<rt>みっ</rt></ruby>つの<ruby>原則<rt>げんそく</rt></ruby>を<ruby>学<rt>まな</rt></ruby>びました。「<ruby>察<rt>さっ</rt></ruby>する<ruby>心<rt>こころ</rt></ruby>」「<ruby>陰<rt>かげ</rt></ruby>のおもてなし」「<ruby>一期一会<rt>いちごいちえ</rt></ruby>」です。<br>*(Hôm nay em học 3 nguyên tắc omotenashi: "tâm thấu hiểu", "omotenashi trong bóng tối", "ichigo ichie".)* |
| Okami Sato | はい。<br>*(Ừ.)* |
| Trang | お<ruby>辞儀<rt>じぎ</rt></ruby>の<ruby>三<rt>みっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>も<ruby>練習<rt>れんしゅう</rt></ruby>しました。<ruby>会釈<rt>えしゃく</rt></ruby>、<ruby>敬礼<rt>けいれい</rt></ruby>、<ruby>最敬礼<rt>さいけいれい</rt></ruby>です。<br>*(Em cũng luyện 3 cấp cúi chào. Eshaku, keirei, saikeirei.)* |
| Trang | それから、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>える<ruby>言葉<rt>ことば</rt></ruby>と<ruby>見送<rt>みおく</rt></ruby>る<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Sau đó em nhớ các câu đón khách và tiễn khách.)* |
| Okami Sato | <ruby>言<rt>い</rt></ruby>ってみてください。<br>*(Thử nói xem.)* |
| Trang | はい。「いらっしゃいませ。ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました」「お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください」「お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします」「ごゆっくりどうぞ」「<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。またのお<ruby>越<rt>こ</rt></ruby>しをお<ruby>待<rt>ま</rt></ruby>ちしております」。<br>*(Vâng. [đầy đủ các câu trên].)* |
| Okami Sato | <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>一日<rt>いちにち</rt></ruby>でこんなに<ruby>覚<rt>おぼ</rt></ruby>えるとは。<br>*(Tuyệt vời! Một ngày mà nhớ được vậy.)* |
| Trang | あ、<ruby>廊下<rt>ろうか</rt></ruby>でご<ruby>夫婦<rt>ふうふ</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>会釈<rt>えしゃく</rt></ruby>しました。「<ruby>頑張<rt>がんば</rt></ruby>って」と<ruby>言<rt>い</rt></ruby>ってくださいました。<br>*(À, em đã chào nhẹ một cặp vợ chồng ở hành lang. Họ nói "cố gắng nhé".)* |
| Okami Sato | （<ruby>微笑<rt>ほほえ</rt></ruby>む）それが<ruby>初<rt>はじ</rt></ruby>めての「おもてなし」ですね。よくできました。<br>*(Mỉm cười. Đó là "omotenashi" lần đầu của cô đấy. Làm tốt.)* |

---

## Tình huống 13 — Phòng ký túc · 21:00, gọi điện về Huế (cảnh tiếng Việt)

> Cảnh tiếng Việt — Trang kể về triết lý おもてなし với mẹ và em gái.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Mẹ ơi, hôm nay con học triết lý nghề khách sạn Nhật. Hay lắm. |
| Mẹ Trang | (tiếng Việt) Triết lý gì con? |
| Trang | (tiếng Việt) Tiếng Nhật gọi là おもてなし omotenashi. Nghĩa là tiếp đãi khách bằng cả tấm lòng, không cần khách cảm ơn. Bà chủ nói nó khác với "dịch vụ" — dịch vụ là làm vì tiền, omotenashi là làm vì muốn khách vui. |
| Em Trang | (tiếng Việt) Như mẹ nấu cơm cho chị em mình vậy. Mẹ không cần con cảm ơn. |
| Trang | (tiếng Việt) Đúng, đúng! Em em sáng lắm. Còn cái nguyên tắc 一期一会 ichigo ichie — nghĩa là "cuộc gặp một lần trong đời". Bà chủ nói mỗi khách gặp là một khoảnh khắc duy nhất, không có lần hai. |
| Mẹ Trang | (tiếng Việt) Triết lý sâu thật. |
| Trang | (tiếng Việt) Vâng mẹ. Mà hôm nay con còn luyện 3 mức cúi chào: 15 độ là chào nhẹ ở hành lang, 30 độ là chào khách đến, 45 độ là cảm ơn xin lỗi. |
| Em Trang | (tiếng Việt) Chị đứng dậy biểu diễn cho em xem đi. |
| Trang | (tiếng Việt) (đứng dậy) Đây, 15 độ này... 30 độ này... 45 độ này. Có chú ý không khi cúi: thở ra khi cúi, hít vào khi ngẩng. |
| Em Trang | (tiếng Việt) Như tập yoga vậy! |
| Trang | (tiếng Việt) Còn hay nữa, hôm nay con gặp một cặp vợ chồng ở hành lang, chào được luôn. Bà vợ nói "cố gắng nhé". Con vui cả buổi. |
| Mẹ Trang | (tiếng Việt) Mẹ mừng. Con học giỏi đấy. |
| Trang | (tiếng Việt) Mai bắt đầu học dọn phòng khách thật. Con đi ngủ đây mẹ. |

---

## Đọng lại chương 3

Ngày thứ 3, Trang nhận được bài giảng cốt lõi từ 女将 Sato: **おもてなし** với 3 nguyên tắc — **察する心** (tâm thấu hiểu trước khi khách nói), **陰のおもてなし** (làm việc giống nhau cả khi không ai nhìn), **一期一会** (mỗi cuộc gặp là duy nhất trong đời). Học 3 mức **お辞儀**: **会釈** (15度, hành lang) / **敬礼** (30度, chào khách) / **最敬礼** (45度, cảm ơn-xin lỗi) — kèm kỹ thuật hơi thở. Thuộc 5 mẫu câu chuẩn ryokan: **いらっしゃいませ・ようこそお越しくださいました**, **お足元にお気をつけください**, **お部屋へご案内いたします**, **ごゆっくりどうぞ**, **本日は誠にありがとうございました・またのお越しをお待ちしております**. Mô phỏng đón khách với Yumiko, rồi chạm thực một cặp vợ chồng ở hành lang — lần đầu thực hiện おもてなし thật.

> Từ vựng & mẫu câu chương này: おもてなし・察する心・陰のおもてなし・一期一会・会釈・敬礼・最敬礼・お辞儀・段差・お見送り・いらっしゃいませ・ようこそお越しくださいました・お足元にお気をつけください・お部屋へご案内いたします・ごゆっくりどうぞ・本日は誠にありがとうございました・またのお越しをお待ちしております・見返り・手を抜く・瞬間

## Bí quyết chương

- **3 mức お辞儀 phải khắc**: 15-30-45 độ. Sai mức là sai nghi thức — Trang ghim "thở ra khi cúi" để khỏi hụt hơi.
- **過去形 「お越しくださいました」**: Pradeep mắc lỗi điển hình của người mới — phải dùng quá khứ vì khách đã đến rồi, không phải "kudasai" (mời/yêu cầu).
- **見送り tới khi khuất**: Đặc trưng ryokan Nhật vs khách sạn phương Tây — cúi đầu đến khi không thấy bóng khách. Trang sẽ thực hành từ T7.
- **一期一会 → bring full self**: Khái niệm trà đạo, Trang hiểu được qua phép so sánh "mẹ nấu cơm" với em gái — sợi dây Việt Nhật.
- **VN nhà**: Em gái thông minh, hiểu nhanh — sẽ là khán giả tin cậy cho Trang chia sẻ học tập.

> *"7/4/2025. Ngày 3. おもてなし = mẹ nấu cơm. 一期一会."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 講義 | こうぎ | GIẢNG NGHĨA | Bài giảng |
| 当館 | とうかん | ĐƯƠNG QUÁN | Quán chúng tôi |
| 考え方 | かんがえかた | KHẢO PHƯƠNG | Cách suy nghĩ |
| 心から | こころから | TÂM | Từ tận đáy lòng |
| 越える | こえる | VIỆT | Vượt qua |
| 見返り | みかえり | KIẾN HOÀN | Báo đáp |
| 求める | もとめる | CẦU | Đòi hỏi, mong |
| 感謝 | かんしゃ | CẢM TẠ | Cảm tạ |
| 喜ぶ | よろこぶ | HỶ | Vui mừng |
| 深い | ふかい | THÂM | Sâu sắc |
| 原則 | げんそく | NGUYÊN TẮC | Nguyên tắc |
| 察する | さっする | SÁT | Thấu hiểu, đoán biết |
| 気付く | きづく | KHÍ PHÓ | Nhận ra |
| 観察 | かんさつ | QUAN SÁT | Quan sát |
| 陰 | かげ | ẤM | Bóng, khuất |
| 整える | ととのえる | CHỈNH | Sắp xếp gọn gàng |
| 手を抜く | てをぬく | THỦ BẠT | Làm qua loa |
| 適当 | てきとう | THÍCH ĐƯƠNG | Qua loa, đại khái |
| 一期一会 | いちごいちえ | NHẤT KỲ NHẤT HỘI | Cuộc gặp một lần trong đời |
| 茶道 | さどう | TRÀ ĐẠO | Trà đạo |
| 一生 | いっしょう | NHẤT SINH | Một đời |
| 出会い | であい | XUẤT HỘI | Cuộc gặp gỡ |
| 瞬間 | しゅんかん | THUẤN GIAN | Khoảnh khắc |
| 接する | せっする | TIẾP | Tiếp đãi |
| 翻訳 | ほんやく | PHIÊN DỊCH | Phiên dịch |
| 段階 | だんかい | ĐOẠN GIAI | Cấp độ, bậc |
| お辞儀 | おじぎ | TỪ NGHI | Cúi chào |
| 会釈 | えしゃく | HỘI THÍCH | Cúi nhẹ 15 độ |
| 敬礼 | けいれい | KÍNH LỄ | Cúi 30 độ |
| 最敬礼 | さいけいれい | TỐI KÍNH LỄ | Cúi 45 độ |
| すれ違う | すれちがう | VI | Đi ngang qua |
| 息を吐く | いきをはく | TỨC THỔ | Thở ra |
| 吸う | すう | HẤP | Hít vào |
| 加える | くわえる | GIA | Thêm vào |
| お越し | おこし | VIỆT | Việc đến (kính ngữ) |
| 丁寧 | ていねい | ĐINH NINH | Lịch sự, tỉ mỉ |
| 段差 | だんさ | ĐOẠN SAI | Chênh lệch độ cao |
| 転ぶ | ころぶ | CHUYỂN | Té ngã |
| お足元 | おあしもと | TÚC NGUYÊN | Bước chân (kính ngữ) |
| 案内 | あんない | ÁN NỘI | Hướng dẫn, dẫn đường |
| ごゆっくり | ごゆっくり | — | Cứ thong thả (kính ngữ) |
| 予約 | よやく | DỰ ƯỚC | Đặt trước |
| お見送り | おみおくり | KIẾN TÔNG | Tiễn khách |
| 誠に | まことに | THÀNH | Thật là (kính ngữ) |
| 過去形 | かこけい | QUÁ KHỨ HÌNH | Thì quá khứ |
| 拍手 | はくしゅ | BẠT THỦ | Vỗ tay |
| 素晴らしい | すばらしい | TỐ TÍCH | Tuyệt vời |
| 夫婦 | ふうふ | PHU PHỤ | Vợ chồng |
| 奥様 | おくさま | ÁO | Bà nhà (kính ngữ) |
| 温かい | あたたかい | ÔN | Ấm áp |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000004, 800000046, NULL, 'markdown_book', 'T4. Dọn phòng 客室 chuẩn ryokan (客室清掃)', '# Sách thực tập sinh khách sạn · T4. Dọn phòng 客室 chuẩn ryokan (客室清掃)

> **Mục tiêu nhân vật:** Trang học kỹ thuật dọn phòng khách 客室 chuẩn ryokan: trải nệm 布団, gấp 浴衣, chuẩn bị bộ trà 茶器, lau 畳, kiểm tra 床の間. Học các mẫu câu chỉ thị từ sempai (〜してください・〜の順番で), báo cáo thực hiện (〜が終わりました), hỏi lại khi thiếu dụng cụ, và 確認 với 由美子先輩 trước khi hoàn tất.

---

## Bối cảnh

Ngày 8 tháng 4 năm 2025, sáng. Sau bài giảng おもてなし hôm trước, hôm nay Trang vào thực hành dọn phòng "桜の間" cùng Yumiko. Khách check-out hôm nay là một cặp người Mỹ; ngày mai sẽ có khách Nhật đến (gia đình 4 người). Chương này tập trung quy trình dọn 客室 chuẩn ryokan từ A đến Z: thu 布団 → giặt 浴衣 → lau 畳 → lau bàn trà → đặt 茶器 → trải 布団 mới → kiểm tra 床の間 → 確認 với sempai.

---

## Tình huống 1 — Văn phòng nhỏ · 8:00, Yumiko phân công

| Vai | Lời thoại |
|---|---|
| Yumiko | チャンさん、おはようございます。<br>*(Cô Trang, chào buổi sáng.)* |
| Trang | （<ruby>会釈<rt>えしゃく</rt></ruby>）おはようございます、<ruby>由美子<rt>ゆみこ</rt></ruby>さん。<br>*(Cúi nhẹ. Chào buổi sáng, chị Yumiko.)* |
| Yumiko | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>客室<rt>きゃくしつ</rt></ruby>の<ruby>清掃<rt>せいそう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をします。<br>*(Hôm nay bắt đầu luyện dọn phòng khách.)* |
| Trang | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị giúp.)* |
| Yumiko | 「<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」のお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>今朝<rt>けさ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>にチェックアウトされます。それから<ruby>掃除<rt>そうじ</rt></ruby>します。<br>*(Khách "Sakura no Ma" check-out sáng nay lúc 10h. Sau đó mình dọn.)* |
| Trang | <ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>からですね。<br>*(Từ 10h ạ.)* |
| Yumiko | はい。<ruby>明日<rt>あした</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しいお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>来<rt>こ</rt></ruby>られます。<ruby>日本人<rt>にほんじん</rt></ruby>のご<ruby>家族<rt>かぞく</rt></ruby>、<ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>です。<br>*(Vâng. Mai có khách mới. Gia đình Nhật, 4 người.)* |
| Trang | <ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>...<ruby>布団<rt>ふとん</rt></ruby>も<ruby>4<rt>よっ</rt></ruby>つですね。<br>*(4 người... vậy 4 cái futon ạ.)* |
| Yumiko | そうです。<ruby>清掃<rt>せいそう</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Đúng vậy. Tôi giải thích thứ tự dọn nhé.)* |

---

## Tình huống 2 — Văn phòng · 8:15, Yumiko giảng thứ tự dọn phòng

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>客室<rt>きゃくしつ</rt></ruby>の<ruby>清掃<rt>せいそう</rt></ruby>は<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>間違<rt>まちが</rt></ruby>えると<ruby>時間<rt>じかん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りません。<br>*(Dọn phòng quan trọng là thứ tự. Sai là không đủ thời gian.)* |
| Trang | はい、メモします。<br>*(Vâng, em ghi chép.)* |
| Yumiko | まず、<ruby>窓<rt>まど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けて<ruby>空気<rt>くうき</rt></ruby>を<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えます。<br>*(Trước tiên, mở cửa sổ để thay khí.)* |
| Trang | <ruby>空気<rt>くうき</rt></ruby>を<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>える、ですね。<br>*(Thay không khí, đúng không ạ?)* |
| Yumiko | はい。<ruby>次<rt>つぎ</rt></ruby>に、<ruby>布団<rt>ふとん</rt></ruby>を<ruby>畳<rt>たた</rt></ruby>んで<ruby>押<rt>お</rt></ruby>し<ruby>入<rt>い</rt></ruby>れに<ruby>戻<rt>もど</rt></ruby>します。<br>*(Tiếp, gấp futon và cất vào tủ.)* |
| Pradeep | <ruby>押<rt>お</rt></ruby>し<ruby>入<rt>い</rt></ruby>れ...というのは？<br>*(Oshiire... là gì ạ?)* |
| Yumiko | <ruby>布団<rt>ふとん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる<ruby>大<rt>おお</rt></ruby>きな<ruby>戸棚<rt>とだな</rt></ruby>です。<ruby>客室<rt>きゃくしつ</rt></ruby>の<ruby>奥<rt>おく</rt></ruby>にあります。<br>*(Là tủ lớn để cất futon. Ở phía trong của phòng khách.)* |
| Yumiko | それから<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めて、<ruby>洗濯<rt>せんたく</rt></ruby>に<ruby>出<rt>だ</rt></ruby>します。<br>*(Sau đó thu yukata, đem giặt.)* |
| Trang | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>使<rt>つか</rt></ruby>った<ruby>浴衣<rt>ゆかた</rt></ruby>は<ruby>毎回<rt>まいかい</rt></ruby><ruby>洗<rt>あら</rt></ruby>いますか？<br>*(Yukata khách dùng có giặt mỗi lần không ạ?)* |
| Yumiko | もちろんです。<ruby>必<rt>かなら</rt></ruby>ず<ruby>毎回<rt>まいかい</rt></ruby><ruby>洗<rt>あら</rt></ruby>います。<br>*(Tất nhiên. Nhất định phải giặt mỗi lần.)* |
| Yumiko | <ruby>次<rt>つぎ</rt></ruby>に、<ruby>畳<rt>たたみ</rt></ruby>を<ruby>掃<rt>は</rt></ruby>きます。<ruby>掃<rt>は</rt></ruby>き<ruby>方<rt>かた</rt></ruby>は「<ruby>目<rt>め</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って」です。<br>*(Tiếp, quét tatami. Quét theo "thớ".)* |
| Trang | <ruby>目<rt>め</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って...<ruby>畳<rt>たたみ</rt></ruby>の<ruby>線<rt>せん</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って、ということですか？<br>*(Theo "me"... theo đường vân của tatami à ạ?)* |
| Yumiko | はい。<ruby>畳<rt>たたみ</rt></ruby>の<ruby>表<rt>おもて</rt></ruby>には<ruby>線<rt>せん</rt></ruby>のような<ruby>目<rt>め</rt></ruby>があります。それに<ruby>沿<rt>そ</rt></ruby>って<ruby>掃<rt>は</rt></ruby>かないと<ruby>畳<rt>たたみ</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>みます。<br>*(Vâng. Mặt tatami có vân như đường kẻ. Không quét theo đó là tatami bị hư.)* |
| Trang | <ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em sẽ chú ý.)* |
| Yumiko | <ruby>畳<rt>たたみ</rt></ruby>を<ruby>掃<rt>は</rt></ruby>いてから、<ruby>家具<rt>かぐ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>きます。<ruby>最後<rt>さいご</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>浴衣<rt>ゆかた</rt></ruby>と<ruby>茶器<rt>ちゃき</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Quét xong tatami thì lau nội thất. Cuối cùng chuẩn bị yukata mới và bộ trà.)* |
| Trang | <ruby>窓<rt>まど</rt></ruby>→<ruby>布団<rt>ふとん</rt></ruby>→<ruby>浴衣<rt>ゆかた</rt></ruby>→<ruby>畳<rt>たたみ</rt></ruby>→<ruby>家具<rt>かぐ</rt></ruby>→<ruby>準備<rt>じゅんび</rt></ruby>ですね。<br>*(Cửa sổ → futon → yukata → tatami → nội thất → chuẩn bị, đúng không ạ?)* |
| Yumiko | <ruby>完璧<rt>かんぺき</rt></ruby>です。<br>*(Hoàn hảo.)* |

---

## Tình huống 3 — Trước phòng "桜の間" · 10:15, vào phòng dọn

*Khách Mỹ đã check-out. Yumiko và Trang đứng trước cửa phòng.*

| Vai | Lời thoại |
|---|---|
| Yumiko | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>がお<ruby>帰<rt>かえ</rt></ruby>りでも、ノックをします。<ruby>習慣<rt>しゅうかん</rt></ruby>です。<br>*(Khách về rồi vẫn gõ cửa. Là thói quen.)* |
| Trang | はい、（ノック<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>）<ruby>失礼<rt>しつれい</rt></ruby>いたします。（<ruby>引<rt>ひ</rt></ruby>き<ruby>戸<rt>ど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>ける）<br>*(Vâng. Gõ 3 lần. Xin phép. Mở cửa kéo.)* |
| Yumiko | では、<ruby>清掃<rt>せいそう</rt></ruby>カートを<ruby>入<rt>い</rt></ruby>れます。<br>*(Vậy mình đưa xe dọn vào.)* |
| Trang | （<ruby>部屋<rt>へや</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）あ、<ruby>布団<rt>ふとん</rt></ruby>がそのままですね。<br>*(Nhìn phòng. À, futon vẫn để nguyên nhỉ.)* |
| Yumiko | はい、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>畳<rt>たた</rt></ruby>まないでお<ruby>帰<rt>かえ</rt></ruby>りになります。それでいいです。<br>*(Vâng, khách về không gấp. Không sao.)* |
| Yumiko | まず<ruby>窓<rt>まど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けてください。<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>あります。<br>*(Trước mở cửa sổ đi. Có 2 cái.)* |
| Trang | はい。（<ruby>2<rt>に</rt></ruby>つの<ruby>窓<rt>まど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>ける）<ruby>空気<rt>くうき</rt></ruby>がきれいですね。<br>*(Vâng. Mở 2 cửa sổ. Không khí trong lành quá.)* |
| Yumiko | <ruby>京都<rt>きょうと</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>は<ruby>気持<rt>きも</rt></ruby>ちがいいですよ。<ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ぐらい<ruby>開<rt>あ</rt></ruby>けておきます。<br>*(Sáng Kyoto dễ chịu lắm. Mở khoảng 15 phút.)* |

---

## Tình huống 4 — Phòng "桜の間" · 10:25, thu futon

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>布団<rt>ふとん</rt></ruby>を<ruby>畳<rt>たた</rt></ruby>みます。やって<ruby>見<rt>み</rt></ruby>せますね。<br>*(Gấp futon. Tôi làm cho cô xem.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời chị.)* |
| Yumiko | まず<ruby>掛<rt>か</rt></ruby>け<ruby>布団<rt>ぶとん</rt></ruby>を<ruby>三<rt>み</rt></ruby>つ<ruby>折<rt>お</rt></ruby>りに。それから<ruby>敷<rt>し</rt></ruby>き<ruby>布団<rt>ぶとん</rt></ruby>を<ruby>三<rt>み</rt></ruby>つ<ruby>折<rt>お</rt></ruby>りに。<br>*(Trước tiên gấp chăn đắp làm ba. Sau đó nệm trải làm ba.)* |
| Trang | <ruby>掛<rt>か</rt></ruby>け<ruby>布団<rt>ぶとん</rt></ruby>と<ruby>敷<rt>し</rt></ruby>き<ruby>布団<rt>ぶとん</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Kakefuton và shikifuton khác nhau ạ?)* |
| Yumiko | <ruby>掛<rt>か</rt></ruby>け<ruby>布団<rt>ぶとん</rt></ruby>は<ruby>上<rt>うえ</rt></ruby>に<ruby>掛<rt>か</rt></ruby>ける<ruby>布団<rt>ふとん</rt></ruby>。<ruby>敷<rt>し</rt></ruby>き<ruby>布団<rt>ぶとん</rt></ruby>は<ruby>下<rt>した</rt></ruby>に<ruby>敷<rt>し</rt></ruby>く<ruby>布団<rt>ふとん</rt></ruby>です。<br>*(Kakefuton là chăn đắp ở trên. Shikifuton là nệm trải ở dưới.)* |
| Trang | なるほど。<ruby>枕<rt>まくら</rt></ruby>とシーツも<ruby>外<rt>はず</rt></ruby>しますか？<br>*(Em hiểu. Có tháo gối và ga không ạ?)* |
| Yumiko | はい、シーツと<ruby>枕<rt>まくら</rt></ruby>カバーは<ruby>必<rt>かなら</rt></ruby>ず<ruby>外<rt>はず</rt></ruby>して、<ruby>洗濯<rt>せんたく</rt></ruby>に<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng, ga và áo gối phải tháo ra, đem giặt.)* |
| Yumiko | （<ruby>畳<rt>たた</rt></ruby>みながら）こうやって、<ruby>角<rt>かど</rt></ruby>をきれいに<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Vừa gấp. Như vầy, ghép góc cho gọn.)* |
| Trang | （<ruby>真似<rt>まね</rt></ruby>する）<ruby>角<rt>かど</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせて...こうですか？<br>*(Bắt chước. Ghép góc... như này ạ?)* |
| Yumiko | もう<ruby>少<rt>すこ</rt></ruby>しきっちり。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>見<rt>み</rt></ruby>たら<ruby>嬉<rt>うれ</rt></ruby>しいような<ruby>畳<rt>たた</rt></ruby>み<ruby>方<rt>かた</rt></ruby>です。<br>*(Chặt thêm chút nữa. Gấp sao cho nếu khách thấy sẽ vui.)* |
| Trang | （もう<ruby>一度<rt>いちど</rt></ruby><ruby>畳<rt>たた</rt></ruby>む）こうですね。<br>*(Gấp lại. Như này nhỉ.)* |
| Yumiko | はい、<ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>押<rt>お</rt></ruby>し<ruby>入<rt>い</rt></ruby>れに<ruby>戻<rt>もど</rt></ruby>します。<br>*(Vâng, hoàn hảo. Cất vào tủ.)* |

---

## Tình huống 5 — Phòng "桜の間" · 10:50, thu yukata

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>次<rt>つぎ</rt></ruby>は<ruby>浴衣<rt>ゆかた</rt></ruby>です。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>使<rt>つか</rt></ruby>った<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めて、<ruby>洗濯<rt>せんたく</rt></ruby>カゴに<ruby>入<rt>い</rt></ruby>れます。<br>*(Tiếp là yukata. Gom yukata khách đã dùng, cho vào giỏ giặt.)* |
| Trang | これですね？<br>*(Cái này phải không ạ?)* |
| Yumiko | はい。あ、ちょっと<ruby>待<rt>ま</rt></ruby>って。シミがありますね。<br>*(Vâng. À, đợi chút. Có vết bẩn này.)* |
| Trang | え、シミ？<br>*(Ơ, vết bẩn?)* |
| Yumiko | （<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げる）ほら、ここに<ruby>赤<rt>あか</rt></ruby>いシミがあります。ワインかな？<br>*(Trải yukata ra. Đây, có vết đỏ. Rượu vang chăng?)* |
| Trang | ワインみたいですね。どうしますか？<br>*(Giống rượu vang ạ. Mình làm sao?)* |
| Yumiko | こういう<ruby>時<rt>とき</rt></ruby>は、<ruby>普通<rt>ふつう</rt></ruby>の<ruby>洗濯<rt>せんたく</rt></ruby>ではなくて、<ruby>特別<rt>とくべつ</rt></ruby>クリーニングに<ruby>出<rt>だ</rt></ruby>します。<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Trường hợp này không phải giặt thường mà đem giặt khô đặc biệt. Báo cho bà chủ.)* |
| Trang | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>後<rt>あと</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em hiểu. Em sẽ báo cáo sau.)* |
| Yumiko | これも<ruby>陰<rt>かげ</rt></ruby>のおもてなしですね。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>はもう<ruby>帰<rt>かえ</rt></ruby>られましたが、<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にします。<br>*(Đây cũng là omotenashi trong bóng tối. Khách đã về nhưng vẫn trân trọng yukata.)* |
| Trang | <ruby>昨日<rt>きのう</rt></ruby><ruby>習<rt>なら</rt></ruby>った<ruby>言葉<rt>ことば</rt></ruby>ですね！<br>*(Là từ học hôm qua nhỉ!)* |

---

## Tình huống 6 — Phòng "桜の間" · 11:15, quét tatami và lau bàn

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>畳<rt>たたみ</rt></ruby>を<ruby>掃<rt>は</rt></ruby>きます。ほうきと<ruby>塵取<rt>ちりと</rt></ruby>りです。<br>*(Quét tatami. Chổi và đồ hốt rác.)* |
| Trang | <ruby>畳<rt>たたみ</rt></ruby>の<ruby>目<rt>め</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って<ruby>掃<rt>は</rt></ruby>きますね。<br>*(Quét theo vân tatami nhỉ.)* |
| Yumiko | そうです。<ruby>奥<rt>おく</rt></ruby>から<ruby>手前<rt>てまえ</rt></ruby>へ、<ruby>一<rt>いち</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>に。<br>*(Đúng vậy. Từ trong ra ngoài, một chiều.)* |
| Trang | （<ruby>掃<rt>は</rt></ruby>く）<ruby>奥<rt>おく</rt></ruby>から<ruby>手前<rt>てまえ</rt></ruby>、<ruby>一<rt>いち</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>...<br>*(Quét. Từ trong ra ngoài, một chiều...)* |
| Yumiko | <ruby>大変<rt>たいへん</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>です。それから<ruby>家具<rt>かぐ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>きます。お<ruby>茶<rt>ちゃ</rt></ruby>の<ruby>台<rt>だい</rt></ruby>と<ruby>座<rt>すわ</rt></ruby>るところです。<br>*(Khéo lắm. Sau đó lau nội thất. Bàn trà và chỗ ngồi.)* |
| Trang | <ruby>雑巾<rt>ぞうきん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>いますか？<br>*(Dùng giẻ lau ạ?)* |
| Yumiko | はい、<ruby>2<rt>に</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>あります。<ruby>水<rt>みず</rt></ruby><ruby>拭<rt>ぶ</rt></ruby>き<ruby>用<rt>よう</rt></ruby>と<ruby>乾<rt>かん</rt></ruby><ruby>拭<rt>ぶ</rt></ruby>き<ruby>用<rt>よう</rt></ruby>です。<br>*(Vâng, có 2 loại. Lau ướt và lau khô.)* |
| Trang | <ruby>順番<rt>じゅんばん</rt></ruby>は？<br>*(Thứ tự ạ?)* |
| Yumiko | <ruby>水<rt>みず</rt></ruby><ruby>拭<rt>ぶ</rt></ruby>き→<ruby>乾<rt>かん</rt></ruby><ruby>拭<rt>ぶ</rt></ruby>きの<ruby>順番<rt>じゅんばん</rt></ruby>です。<ruby>水<rt>みず</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>すと<ruby>家具<rt>かぐ</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>みます。<br>*(Lau ướt → lau khô. Để nước đọng là hỏng nội thất.)* |
| Trang | <ruby>必<rt>かなら</rt></ruby>ず<ruby>乾<rt>かん</rt></ruby><ruby>拭<rt>ぶ</rt></ruby>きで<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Em sẽ luôn kết thúc bằng lau khô.)* |
| Yumiko | はい。お<ruby>茶<rt>ちゃ</rt></ruby>の<ruby>台<rt>だい</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>丁寧<rt>ていねい</rt></ruby>に。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>がお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>飲<rt>の</rt></ruby>む<ruby>場所<rt>ばしょ</rt></ruby>ですから。<br>*(Vâng. Đặc biệt cẩn thận với bàn trà. Vì là nơi khách uống trà.)* |

---

## Tình huống 7 — Phòng "桜の間" · 12:00, kiểm tra 床の間

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>床<rt>とこ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>掛<rt>か</rt></ruby>け<ruby>軸<rt>じく</rt></ruby>と<ruby>生<rt>い</rt></ruby>け<ruby>花<rt>ばな</rt></ruby>です。<br>*(Tokonoma cũng phải kiểm tra. Tranh cuộn và bình hoa.)* |
| Trang | <ruby>生<rt>い</rt></ruby>け<ruby>花<rt>ばな</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>替<rt>か</rt></ruby>えますか？<br>*(Hoa thay hàng ngày ạ?)* |
| Yumiko | <ruby>水<rt>みず</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>替<rt>か</rt></ruby>えます。<ruby>花<rt>はな</rt></ruby>は<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby>です。<ruby>枯<rt>か</rt></ruby>れていないか<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Nước thì hàng ngày. Hoa thì 3 ngày một lần. Kiểm tra có héo không.)* |
| Trang | （<ruby>近<rt>ちか</rt></ruby>づいて<ruby>見<rt>み</rt></ruby>る）まだきれいですね。<br>*(Lại gần nhìn. Vẫn còn đẹp ạ.)* |
| Yumiko | はい、<ruby>水<rt>みず</rt></ruby>だけ<ruby>替<rt>か</rt></ruby>えます。<ruby>花瓶<rt>かびん</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>る<ruby>時<rt>とき</rt></ruby>は<ruby>両手<rt>りょうて</rt></ruby>で、<ruby>大事<rt>だいじ</rt></ruby>に。<br>*(Vâng, chỉ thay nước. Khi chạm vào bình hoa thì hai tay, trân trọng.)* |
| Trang | <ruby>掛<rt>か</rt></ruby>け<ruby>軸<rt>じく</rt></ruby>は?<br>*(Tranh cuộn thì sao ạ?)* |
| Yumiko | <ruby>触<rt>さわ</rt></ruby>らないでください。<ruby>古<rt>ふる</rt></ruby>くて<ruby>大切<rt>たいせつ</rt></ruby>なものです。ほこりがあれば<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Đừng chạm vào. Là vật cổ và quý. Nếu có bụi thì báo bà chủ.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |

---

## Tình huống 8 — Phòng "桜の間" · 12:30, chuẩn bị bộ trà 茶器

*Phòng đã sạch. Yumiko mang vào khay 茶器 — đặt lên bàn trà.*

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>茶器<rt>ちゃき</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>します。<ruby>急須<rt>きゅうす</rt></ruby>、<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>の</rt></ruby>み、<ruby>茶筒<rt>ちゃづつ</rt></ruby>、お<ruby>菓子<rt>かし</rt></ruby><ruby>皿<rt>ざら</rt></ruby>です。<br>*(Chuẩn bị bộ trà. Ấm trà, chén trà, hộp trà, đĩa bánh.)* |
| Trang | <ruby>急須<rt>きゅうす</rt></ruby>...というのは？<br>*(Kyuusu... là gì ạ?)* |
| Yumiko | お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる<ruby>小<rt>ちい</rt></ruby>さいポットです。これです。<br>*(Là ấm nhỏ pha trà. Cái này.)* |
| Trang | あ、<ruby>急須<rt>きゅうす</rt></ruby>ですね。<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>の</rt></ruby>みは<ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby>?<br>*(À, là kyuusu. Chén trà mấy cái ạ?)* |
| Yumiko | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>人数<rt>にんずう</rt></ruby><ruby>分<rt>ぶん</rt></ruby>。<ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>ですから<ruby>4<rt>よっ</rt></ruby>つです。<br>*(Bằng số khách. 4 người nên 4 cái.)* |
| Trang | <ruby>茶筒<rt>ちゃづつ</rt></ruby>には<ruby>何<rt>なに</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っていますか？<br>*(Chazutsu đựng gì ạ?)* |
| Yumiko | <ruby>玉露<rt>ぎょくろ</rt></ruby>です。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>緑茶<rt>りょくちゃ</rt></ruby>。<br>*(Là gyokuro. Trà xanh nổi tiếng của Kyoto.)* |
| Trang | お<ruby>菓子<rt>かし</rt></ruby>は?<br>*(Bánh thì sao ạ?)* |
| Yumiko | <ruby>京都<rt>きょうと</rt></ruby>の<ruby>和菓子<rt>わがし</rt></ruby>です。<ruby>季節<rt>きせつ</rt></ruby>のもの。<ruby>今<rt>いま</rt></ruby>は<ruby>桜餅<rt>さくらもち</rt></ruby>です。<br>*(Bánh wagashi Kyoto. Theo mùa. Bây giờ là sakuramochi.)* |
| Trang | <ruby>桜餅<rt>さくらもち</rt></ruby>！きれいですね。<br>*(Sakuramochi! Đẹp quá.)* |
| Yumiko | <ruby>並<rt>なら</rt></ruby>べ<ruby>方<rt>かた</rt></ruby>です。<ruby>急須<rt>きゅうす</rt></ruby>は<ruby>右<rt>みぎ</rt></ruby>、<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>の</rt></ruby>みは<ruby>左<rt>ひだり</rt></ruby>に<ruby>並<rt>なら</rt></ruby>べます。お<ruby>菓子<rt>かし</rt></ruby>は<ruby>中央<rt>ちゅうおう</rt></ruby>。<br>*(Cách bày. Kyuusu bên phải, chén trà bên trái. Bánh ở giữa.)* |
| Trang | <ruby>右<rt>みぎ</rt></ruby>に<ruby>急須<rt>きゅうす</rt></ruby>、<ruby>左<rt>ひだり</rt></ruby>に<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>の</rt></ruby>み、<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>にお<ruby>菓子<rt>かし</rt></ruby>。<br>*(Phải kyuusu, trái chén trà, giữa bánh.)* |
| Yumiko | <ruby>完璧<rt>かんぺき</rt></ruby>。やってみてください。<br>*(Hoàn hảo. Cô thử đi.)* |
| Trang | （<ruby>並<rt>なら</rt></ruby>べる）こうですね。<br>*(Bày. Như này.)* |
| Yumiko | はい。<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>の</rt></ruby>みの<ruby>絵<rt>え</rt></ruby>はお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて。<br>*(Vâng. Hình trên chén trà hướng về phía khách.)* |
| Trang | あ、<ruby>絵<rt>え</rt></ruby>の<ruby>向<rt>む</rt></ruby>きも<ruby>大事<rt>だいじ</rt></ruby>なんですね。<ruby>気<rt>き</rt></ruby>がつきませんでした。<br>*(À, hướng của hình cũng quan trọng nhỉ. Em không để ý.)* |
| Yumiko | これがおもてなしの<ruby>細<rt>こま</rt></ruby>かさです。<br>*(Đây là sự tỉ mỉ của omotenashi.)* |

---

## Tình huống 9 — Phòng "桜の間" · 14:00, chuẩn bị yukata mới

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>します。<ruby>明日<rt>あした</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>でしたね。<br>*(Chuẩn bị yukata. Khách mai là 4 người nhỉ.)* |
| Trang | はい、<ruby>大人<rt>おとな</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>、お<ruby>子<rt>こ</rt></ruby>さんが<ruby>2<rt>に</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>と<ruby>聞<rt>き</rt></ruby>きました。<br>*(Vâng, em nghe có 2 người lớn và 2 trẻ em.)* |
| Yumiko | はい。<ruby>大人<rt>おとな</rt></ruby><ruby>用<rt>よう</rt></ruby>はLとMサイズ、<ruby>子供<rt>こども</rt></ruby><ruby>用<rt>よう</rt></ruby>はSと<ruby>子供<rt>こども</rt></ruby>サイズ。<br>*(Vâng. Người lớn size L và M, trẻ em size S và size trẻ em.)* |
| Trang | サイズはどこを<ruby>見<rt>み</rt></ruby>ますか？<br>*(Size nhìn ở đâu ạ?)* |
| Yumiko | タグです。<ruby>襟<rt>えり</rt></ruby>の<ruby>裏側<rt>うらがわ</rt></ruby>に<ruby>付<rt>つ</rt></ruby>いています。<br>*(Mác. Dán ở mặt sau cổ áo.)* |
| Trang | （<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>取<rt>と</rt></ruby>る）これはLですね。<br>*(Lấy yukata. Cái này là L ạ.)* |
| Yumiko | はい、いいですね。<ruby>畳<rt>たた</rt></ruby>み<ruby>方<rt>かた</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>です。<br>*(Vâng, tốt. Chú ý cách gấp.)* |
| Trang | <ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>ですね。<br>*(Trái ở trên nhỉ.)* |
| Yumiko | はい、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>右前<rt>みぎまえ</rt></ruby>にしないでください。<ruby>畳<rt>たた</rt></ruby>む<ruby>時<rt>とき</rt></ruby>も<ruby>左前<rt>ひだりまえ</rt></ruby>です。<br>*(Vâng, tuyệt đối không được "phải trên". Khi gấp cũng là "trái trên".)* |
| Trang | <ruby>覚<rt>おぼ</rt></ruby>えています。<ruby>死装束<rt>しにしょうぞく</rt></ruby>になるからですね。<br>*(Em nhớ. Vì nếu không sẽ thành áo tang.)* |
| Yumiko | そうです。<ruby>帯<rt>おび</rt></ruby>はその<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>きます。<br>*(Đúng vậy. Obi đặt lên trên.)* |
| Trang | （<ruby>並<rt>なら</rt></ruby>べる）<ruby>4<rt>よ</rt></ruby><ruby>人分<rt>にんぶん</rt></ruby><ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Bày. Em chuẩn bị 4 phần rồi.)* |
| Yumiko | <ruby>素晴<rt>すば</rt></ruby>らしい。<br>*(Tuyệt vời.)* |

---

## Tình huống 10 — Phòng "桜の間" · 15:00, gặp khó khăn — thiếu khăn

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby>さん、すみません、<ruby>質問<rt>しつもん</rt></ruby>があります。<br>*(Chị Yumiko, xin lỗi, em có câu hỏi.)* |
| Yumiko | はい、どうぞ。<br>*(Vâng, cứ nói.)* |
| Trang | タオルが<ruby>3<rt>みっ</rt></ruby>つしかありません。<ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>ですから<ruby>4<rt>よっ</rt></ruby>つ<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Khăn chỉ có 3 cái. Cần 4 vì có 4 người.)* |
| Yumiko | あ、<ruby>確認<rt>かくにん</rt></ruby>してくれてありがとうございます。<ruby>1<rt>いち</rt></ruby><ruby>階<rt>かい</rt></ruby>のリネン<ruby>室<rt>しつ</rt></ruby>から<ruby>取<rt>と</rt></ruby>ってきてください。<br>*(À, cảm ơn cô đã kiểm tra. Lấy ở phòng linen tầng 1 nhé.)* |
| Trang | リネン<ruby>室<rt>しつ</rt></ruby>...というのは<ruby>洗濯<rt>せんたく</rt></ruby><ruby>物<rt>もの</rt></ruby>を<ruby>保管<rt>ほかん</rt></ruby>する<ruby>場所<rt>ばしょ</rt></ruby>ですか？<br>*(Phòng linen... là nơi cất đồ giặt ạ?)* |
| Yumiko | はい。シーツ、タオル、<ruby>浴衣<rt>ゆかた</rt></ruby>などをしまう<ruby>部屋<rt>へや</rt></ruby>です。<br>*(Vâng. Phòng cất ga, khăn, yukata, v.v.)* |
| Trang | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>白<rt>しろ</rt></ruby>いタオルでいいですか？<br>*(Em hiểu. Khăn trắng được không ạ?)* |
| Yumiko | はい、<ruby>当館<rt>とうかん</rt></ruby>のタオルはすべて<ruby>白<rt>しろ</rt></ruby>です。<br>*(Vâng, khăn của quán đều màu trắng.)* |
| Trang | <ruby>取<rt>と</rt></ruby>ってきます！<br>*(Em đi lấy đây!)* |

---

## Tình huống 11 — Hành lang đi xuống · 15:10, gặp 女将

| Vai | Lời thoại |
|---|---|
| Trang | （リネン<ruby>室<rt>しつ</rt></ruby>から<ruby>戻<rt>もど</rt></ruby>る、<ruby>女将<rt>おかみ</rt></ruby>と<ruby>会<rt>あ</rt></ruby>う）あ、<ruby>女将<rt>おかみ</rt></ruby>さん。<br>*(Từ phòng linen quay lại, gặp bà chủ. À, bà chủ.)* |
| Okami Sato | チャンさん、<ruby>掃除<rt>そうじ</rt></ruby>はどうですか？<br>*(Cô Trang, dọn dẹp thế nào rồi?)* |
| Trang | （<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まる、<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>）はい、<ruby>順調<rt>じゅんちょう</rt></ruby>です。あ、ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Dừng lại, cúi 30 độ. Vâng, ổn ạ. À, em có báo cáo.)* |
| Okami Sato | どうぞ。<br>*(Cứ nói.)* |
| Trang | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>浴衣<rt>ゆかた</rt></ruby>に<ruby>赤<rt>あか</rt></ruby>いシミが<ruby>付<rt>つ</rt></ruby>いていました。ワインのようです。<ruby>由美子<rt>ゆみこ</rt></ruby>さんは<ruby>特別<rt>とくべつ</rt></ruby>クリーニングに<ruby>出<rt>だ</rt></ruby>すと<ruby>言<rt>い</rt></ruby>っていました。<br>*(Yukata của khách có vết đỏ. Giống rượu vang. Chị Yumiko nói sẽ đưa giặt khô đặc biệt.)* |
| Okami Sato | <ruby>分<rt>わ</rt></ruby>かりました。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>には<ruby>請求<rt>せいきゅう</rt></ruby>しません。<ruby>当館<rt>とうかん</rt></ruby>の<ruby>負担<rt>ふたん</rt></ruby>です。<br>*(Rõ rồi. Không tính tiền khách. Quán mình chịu.)* |
| Trang | え、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くしたのに?<br>*(Ơ, khách làm hỏng mà?)* |
| Okami Sato | はい。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>を<ruby>恥<rt>はず</rt></ruby>かしくさせないこと。これも「おもてなし」です。<br>*(Vâng. Không làm khách xấu hổ. Đây cũng là "omotenashi".)* |
| Trang | なるほど...<ruby>深<rt>ふか</rt></ruby>いです。<br>*(Ra vậy... sâu sắc thật.)* |
| Okami Sato | はい。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Vâng. Cố gắng tiếp nhé.)* |

---

## Tình huống 12 — Phòng "桜の間" · 16:00, 確認 cuối cùng với Yumiko

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby>さん、<ruby>清掃<rt>せいそう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。ご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Yumiko, em đã dọn xong. Xin chị kiểm tra ạ.)* |
| Yumiko | はい、<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, để tôi xem.)* |
| Yumiko | （<ruby>部屋<rt>へや</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>窓<rt>まど</rt></ruby>は<ruby>閉<rt>し</rt></ruby>めましたね。<br>*(Nhìn phòng. Cửa sổ đóng rồi nhỉ.)* |
| Trang | はい、<ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>閉<rt>し</rt></ruby>めました。<br>*(Vâng, 15 phút sau em đóng rồi.)* |
| Yumiko | <ruby>畳<rt>たたみ</rt></ruby>もきれいです。<ruby>家具<rt>かぐ</rt></ruby>の<ruby>拭<rt>ふ</rt></ruby>き<ruby>取<rt>と</rt></ruby>りも<ruby>良<rt>よ</rt></ruby>い。<br>*(Tatami cũng đẹp. Lau nội thất cũng tốt.)* |
| Yumiko | <ruby>茶器<rt>ちゃき</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます...<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>の</rt></ruby>みの<ruby>絵<rt>え</rt></ruby>の<ruby>向<rt>む</rt></ruby>き、<ruby>完璧<rt>かんぺき</rt></ruby>です。<br>*(Xem bộ trà... hướng hình chén trà, hoàn hảo.)* |
| Trang | ありがとうございます。<br>*(Em cảm ơn.)* |
| Yumiko | <ruby>浴衣<rt>ゆかた</rt></ruby>もきれいに<ruby>並<rt>なら</rt></ruby>べてあります。<ruby>4<rt>よ</rt></ruby>つ。<ruby>確認<rt>かくにん</rt></ruby>OKです。<br>*(Yukata cũng bày đẹp. 4 cái. Kiểm tra OK.)* |
| Yumiko | あ、<ruby>一<rt>ひと</rt></ruby>つだけ。<ruby>畳<rt>たたみ</rt></ruby>の<ruby>角<rt>かど</rt></ruby>にゴミが<ruby>残<rt>のこ</rt></ruby>っていますね。<br>*(À, một điểm thôi. Còn rác ở góc tatami.)* |
| Trang | あ！すみません、<ruby>気<rt>き</rt></ruby>づきませんでした。すぐに<ruby>取<rt>と</rt></ruby>ります。<br>*(Á! Em xin lỗi, em không để ý. Em lấy ngay.)* |
| Yumiko | <ruby>角<rt>かど</rt></ruby>は<ruby>見落<rt>みお</rt></ruby>としやすい<ruby>場所<rt>ばしょ</rt></ruby>です。<ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Góc là chỗ dễ bỏ sót. Lần sau chú ý nhé.)* |
| Trang | （ゴミを<ruby>取<rt>と</rt></ruby>る）はい、<ruby>必<rt>かなら</rt></ruby>ず。<br>*(Lấy rác. Vâng, chắc chắn.)* |
| Yumiko | これで「<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」の<ruby>清掃<rt>せいそう</rt></ruby>は<ruby>完了<rt>かんりょう</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vậy là hoàn tất dọn "Sakura no Ma". Vất vả rồi.)* |
| Trang | お<ruby>疲<rt>つか</rt></ruby>れさまでした。ありがとうございました。<br>*(Vất vả rồi ạ. Em cảm ơn.)* |

---

## Tình huống 13 — Phòng ký túc · 22:00, gọi điện về Huế (cảnh tiếng Việt)

> Cảnh tiếng Việt — Trang kể chi tiết quy trình dọn phòng và bài học omotenashi.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Mẹ ơi, hôm nay con dọn phòng khách thật. Mệt nhưng vui. |
| Mẹ Trang | (tiếng Việt) Dọn thế nào con? |
| Trang | (tiếng Việt) Quy trình 6 bước: mở cửa sổ thay không khí → gấp futon cất vào tủ 押し入れ → thu yukata đem giặt → quét tatami theo vân → lau nội thất ướt rồi khô → chuẩn bị bộ trà 茶器 và yukata mới. |
| Em Trang | (tiếng Việt) Chuyên nghiệp quá chị. |
| Trang | (tiếng Việt) Có nhiều chi tiết hay lắm em. Như cái cốc trà — hình trên thân cốc phải hướng về phía khách. Nếu để hướng vào trong, khách không nhìn thấy thì sai. |
| Mẹ Trang | (tiếng Việt) Tỉ mỉ thế. |
| Trang | (tiếng Việt) Mà chuyện hay nhất hôm nay: yukata của khách có vết rượu vang. Con báo bà chủ. Bà nói KHÔNG tính tiền khách. Quán chịu. |
| Em Trang | (tiếng Việt) Sao thế? Khách làm hỏng mà? |
| Trang | (tiếng Việt) Bà chủ nói "Không làm khách xấu hổ — đây cũng là omotenashi". Con choáng luôn. |
| Mẹ Trang | (tiếng Việt) Tử tế thật. Ở Việt Nam mình chắc tính tiền liền. |
| Trang | (tiếng Việt) Vâng mẹ. Mà cuối ngày chị sempai kiểm tra, con vẫn còn sót rác ở góc tatami. Chị bảo "Góc là chỗ dễ bỏ sót, lần sau chú ý". Không la mắng gì. |
| Em Trang | (tiếng Việt) Sempai hiền ghê. |
| Trang | (tiếng Việt) Ừ chị Yumiko hiền lắm. Ngày mai con tiếp tục dọn 2 phòng nữa. Mai 6h30 lại dậy. |
| Mẹ Trang | (tiếng Việt) Con ngủ đi. Mẹ vui lắm. |

---

## Đọng lại chương 4

Trang nắm được quy trình dọn 客室 chuẩn ryokan 6 bước: **窓→布団→浴衣→畳→家具→準備** (cửa sổ → futon → yukata → tatami → nội thất → chuẩn bị mới). Học kỹ thuật **畳むchăn 3 nếp** (掛け布団 + 敷き布団), **掃き方 theo 目** (vân chiếu, một chiều từ trong ra ngoài), **水拭き→乾拭き** (lau ướt trước, lau khô sau), **茶器 setup** (急須 phải, 湯呑み trái, 和菓子 giữa, hình hướng khách), **浴衣 gấp 左前** (cấm 右前 áo tang). Phát hiện **シミ** trên yukata → 報告 đúng quy trình → 女将 đưa ra bài học "không làm khách xấu hổ = おもてなし". Cuối ngày 確認 với sempai, sót rác góc tatami — Trang ghim "góc tatami = blind spot".

> Từ vựng & mẫu câu chương này: 清掃・順番・空気を入れ替える・布団・掛け布団・敷き布団・畳む・押し入れ・浴衣・洗濯・シミ・特別クリーニング・畳の目・沿う・雑巾・水拭き・乾拭き・茶器・急須・湯呑み・茶筒・玉露・和菓子・桜餅・床の間・掛け軸・生け花・花瓶・リネン室・確認・〜が終わりました・ご確認をお願いします・見落とす

## Bí quyết chương

- **Quy trình 6 bước cố định**: Không được đảo thứ tự. Nếu trải futon trước khi lau tatami là phải làm lại — Trang khắc vào sổ.
- **湯呑み hướng hình**: Detail cấp ryokan cao — design pattern phải face khách. Tương tự mâm 懐石 (sách T6 sẽ học).
- **シミ logic**: 女将 không tính tiền khách = signature ryokan. Y2/Y3 sẽ có 失敗 lớn hơn — đây là groundwork.
- **角 tatami = blind spot**: 99% người mới sót rác góc. Sempai dạy lần đầu nhẹ, lần sau khắt khe — Trang ghim.
- **VN nhà**: Em gái tiếp tục là "khán giả" hiểu nhanh, đặt câu hỏi đúng — giúp Trang hệ thống bài học.

> *"8/4/2025. Ngày 4. 6 bước. 角=blind spot. シミ→bà chủ chịu."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 清掃 | せいそう | THANH TẢO | Dọn dẹp, vệ sinh |
| 順番 | じゅんばん | THUẬN PHIÊN | Thứ tự |
| 入れ替える | いれかえる | NHẬP THẾ | Thay đổi, đổi mới |
| 空気 | くうき | KHÔNG KHÍ | Không khí |
| 布団 | ふとん | BỐ ĐOÀN | Nệm futon |
| 畳む | たたむ | ĐIỆP | Gấp lại |
| 押し入れ | おしいれ | ÁP NHẬP | Tủ âm tường |
| 戸棚 | とだな | HỘ TRÚ | Tủ |
| 浴衣 | ゆかた | DỤC Y | Yukata |
| 集める | あつめる | TẬP | Thu thập |
| 洗濯 | せんたく | TẨY TRẠC | Giặt |
| 掛け布団 | かけぶとん | QUẢI BỐ ĐOÀN | Chăn đắp |
| 敷き布団 | しきぶとん | PHU BỐ ĐOÀN | Nệm trải |
| 三つ折り | みつおり | TAM CHIẾT | Gấp ba |
| 枕 | まくら | CHẨM | Gối |
| カバー | カバー | — | Bao, vỏ |
| 角 | かど | GIÁC | Góc |
| シミ | シミ | — | Vết bẩn |
| 特別 | とくべつ | ĐẶC BIỆT | Đặc biệt |
| クリーニング | クリーニング | — | Giặt khô |
| 陰のおもてなし | かげのおもてなし | ẤM | Omotenashi trong bóng tối |
| 目 | め | MỤC | Vân (chiếu) |
| 沿う | そう | DUYÊN | Dọc theo |
| 奥 | おく | ÁO | Phía trong |
| 手前 | てまえ | THỦ TIỀN | Phía trước |
| 一方向 | いちほうこう | NHẤT PHƯƠNG HƯỚNG | Một chiều |
| 雑巾 | ぞうきん | TẠP CÂN | Giẻ lau |
| 水拭き | みずぶき | THUỶ THỨC | Lau ướt |
| 乾拭き | かんぶき | CAN THỨC | Lau khô |
| 種類 | しゅるい | CHỦNG LOẠI | Loại |
| 仕上げる | しあげる | SĨ THƯỢNG | Hoàn tất, kết thúc |
| 茶器 | ちゃき | TRÀ KHÍ | Bộ trà |
| 急須 | きゅうす | CẤP TU | Ấm trà |
| 湯呑み | ゆのみ | THANG ẨM | Chén trà |
| 茶筒 | ちゃづつ | TRÀ ĐỒNG | Hộp đựng trà |
| 皿 | さら | MÃNH | Đĩa |
| 玉露 | ぎょくろ | NGỌC LỘ | Trà gyokuro |
| 緑茶 | りょくちゃ | LỤC TRÀ | Trà xanh |
| 和菓子 | わがし | HOÀ QUẢ TỬ | Bánh ngọt truyền thống |
| 桜餅 | さくらもち | ANH BÍNH | Bánh mochi anh đào |
| 並べる | ならべる | TỊNH | Bày, xếp |
| 中央 | ちゅうおう | TRUNG ƯƠNG | Trung tâm |
| 向き | むき | HƯỚNG | Hướng |
| 細かさ | こまかさ | TẾ | Sự tỉ mỉ |
| 襟 | えり | KHÂM | Cổ áo |
| 裏側 | うらがわ | LÝ TRẮC | Mặt sau |
| タグ | タグ | — | Mác, nhãn |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 花瓶 | かびん | HOA BÌNH | Bình hoa |
| 枯れる | かれる | CỐ | Héo |
| リネン室 | リネンしつ | THẤT | Phòng linen |
| 保管 | ほかん | BẢO QUẢN | Bảo quản, cất giữ |
| 順調 | じゅんちょう | THUẬN ĐIỀU | Suôn sẻ |
| 請求 | せいきゅう | THỈNH CẦU | Yêu cầu thanh toán |
| 負担 | ふたん | PHỤ ĐẢM | Chịu, gánh |
| 恥ずかしい | はずかしい | SỈ | Xấu hổ |
| 確認 | かくにん | XÁC NHẬN | Kiểm tra, xác nhận |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn tất |
| 見落とす | みおとす | KIẾN LẠC | Bỏ sót, không thấy |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000005, 800000046, NULL, 'markdown_book', 'T5. Yukata và Obi (浴衣・帯)', '# Sách thực tập sinh khách sạn · T5. Yukata và Obi (浴衣・帯)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N5→N4). Học các mẫu hội thoại tiếng Nhật khi phục vụ yukata: chào hỏi khi vào phòng, hỏi cỡ áo, hướng dẫn cách mặc, giải thích nguyên tắc gấp obi, xin phép lui phòng, hỏi lại khi chưa nhớ tên đồ.

---

## Bối cảnh

Tháng 9 năm 2025. Trang đã quen việc dọn phòng và trải futon. Hôm nay 女将 Sato bảo phải học gấp 浴衣 (yukata) và 帯 (obi) trong 3 ngày, vì cuối tuần ryokan có đoàn khách 8 người Tokyo về Kyoto ngắm 紅葉. Yumiko-san sempai (người Nhật, 28 tuổi, 仲居 chính) sẽ kèm. Mei (Trung Quốc), Soyeon (Hàn Quốc) và Pradeep (Nepal) cùng học. Sai cách buộc obi là khách phật ý cả tối.

---

## Tình huống 1 — Phòng nhân viên · 6:30, 女将 Sato giao việc đầu ngày

| Vai | Lời thoại |
|---|---|
| Sato | おはようございます。<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>、<ruby>東京<rt>とうきょう</rt></ruby>から<ruby>八名様<rt>はちめいさま</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>がいらっしゃいます。<br>*(Chào buổi sáng. Thứ Sáu tuần này có đoàn 8 vị khách từ Tokyo đến.)* |
| Trang | おはようございます。はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Chào buổi sáng ạ. Vâng, em đã rõ ạ.)* |
| Sato | チャンさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>浴衣<rt>ゆかた</rt></ruby>と<ruby>帯<rt>おび</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしてください。<ruby>三日間<rt>みっかかん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Trang, từ hôm nay em luyện yukata và obi nhé. Trong 3 ngày phải nhớ.)* |
| Trang | はい、ゆかたと…おび、ですか?<br>*(Vâng, yukata và... obi ạ?)* |
| Sato | そう、<ruby>帯<rt>おび</rt></ruby>。ユミコさんが<ruby>教<rt>おし</rt></ruby>えてくれますよ。<br>*(Đúng, obi. Yumiko sẽ chỉ em.)* |
| Trang | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ chị ạ.)* |
| Yumiko | チャンちゃん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ゆっくり<ruby>覚<rt>おぼ</rt></ruby>えようね。<br>*(Trang, không sao, mình học từ từ nha.)* |

---

## Tình huống 2 — Kho áo · 7:00, Yumiko giới thiệu các cỡ yukata

*Trong 衣裳部屋 (kho áo) treo dãy yukata theo cỡ, mỗi giá có thẻ S/M/L/LL.*

| Vai | Lời thoại |
|---|---|
| Yumiko | これが<ruby>浴衣<rt>ゆかた</rt></ruby>。サイズはS、M、L、LLの<ruby>四種類<rt>よんしゅるい</rt></ruby>あるよ。<br>*(Đây là yukata. Có 4 cỡ S, M, L, LL.)* |
| Trang | <ruby>四種類<rt>よんしゅるい</rt></ruby>…はい。<ruby>色<rt>いろ</rt></ruby>はみんな<ruby>同<rt>おな</rt></ruby>じですか?<br>*(4 cỡ ạ... Vâng. Màu giống nhau hết không ạ?)* |
| Yumiko | <ruby>男性<rt>だんせい</rt></ruby>は<ruby>紺色<rt>こんいろ</rt></ruby>、<ruby>女性<rt>じょせい</rt></ruby>はピンクと<ruby>水色<rt>みずいろ</rt></ruby>があるの。<br>*(Nam màu xanh đậm, nữ có hồng và xanh nước.)* |
| Trang | こんいろ、ピンク、みずいろ。<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Xanh đậm, hồng, xanh nước. Em ghi nhớ.)* |
| Yumiko | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>身長<rt>しんちょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、<ruby>選<rt>えら</rt></ruby>ぶの。150センチならM、170センチならL。<br>*(Nhìn chiều cao khách rồi chọn. 150cm thì M, 170cm thì L.)* |
| Trang | あの、すみません、170センチは…Lですね?<br>*(Dạ, em xin lỗi, 170cm là... L đúng không ạ?)* |
| Yumiko | そう、L。<ruby>背<rt>せ</rt></ruby>の<ruby>高<rt>たか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>はLL。<br>*(Đúng, L. Khách cao thì LL.)* |
| Trang | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi.)* |

---

## Tình huống 3 — Kho áo · 7:20, Yumiko dạy cách gấp yukata

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>畳<rt>たた</rt></ruby>むよ。<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>が<ruby>下<rt>した</rt></ruby>ね。<br>*(Mình gấp yukata. Bên trái nằm trên, bên phải nằm dưới nhé.)* |
| Trang | <ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>…どうしてですか?<br>*(Trái ở trên... Tại sao vậy ạ?)* |
| Yumiko | <ruby>逆<rt>ぎゃく</rt></ruby>は<ruby>死<rt>し</rt></ruby>んだ<ruby>人<rt>ひと</rt></ruby>の<ruby>着方<rt>きかた</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby><ruby>逆<rt>ぎゃく</rt></ruby>はダメだよ。<br>*(Ngược lại là kiểu mặc cho người chết. Tuyệt đối không mặc ngược cho khách.)* |
| Trang | え!<ruby>怖<rt>こわ</rt></ruby>いです。<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Ơ! Sợ quá. Trái trên, em nhớ kỹ.)* |
| Yumiko | ベトナムのアオザイも<ruby>合<rt>あ</rt></ruby>わせ<ruby>方<rt>かた</rt></ruby>があるでしょ?<br>*(Áo dài Việt Nam cũng có cách gài đúng nhỉ?)* |
| Trang | はい、ボタンは<ruby>右<rt>みぎ</rt></ruby>です。<br>*(Vâng, cúc bên phải ạ.)* |
| Yumiko | じゃあ、<ruby>袖<rt>そで</rt></ruby>を<ruby>内側<rt>うちがわ</rt></ruby>に<ruby>折<rt>お</rt></ruby>って、<ruby>三<rt>み</rt></ruby>つ<ruby>折<rt>お</rt></ruby>りにするよ。<br>*(Vậy gấp tay vào trong, gấp ba.)* |
| Trang | はい、やってみます。<br>*(Vâng, em thử ạ.)* |

---

## Tình huống 4 — Kho áo · 7:45, Trang hỏi lại tên các bộ phận obi

*Yumiko trải obi dài 3.6m trên bàn, các đầu có tên gọi khác nhau.*

| Vai | Lời thoại |
|---|---|
| Yumiko | これは<ruby>帯<rt>おび</rt></ruby>。<ruby>長<rt>なが</rt></ruby>さは3.6メートルあるよ。<br>*(Đây là obi. Dài 3.6 mét.)* |
| Trang | わぁ、<ruby>長<rt>なが</rt></ruby>いですね。<br>*(Wa, dài thật ạ.)* |
| Yumiko | <ruby>手<rt>て</rt></ruby><ruby>先<rt>さき</rt></ruby>と<ruby>垂<rt>た</rt></ruby>れ、<ruby>覚<rt>おぼ</rt></ruby>えてね。<br>*(Tesaki và tare, nhớ nhé.)* |
| Trang | てさき…たれ。すみません、もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>言<rt>い</rt></ruby>っていただけますか?<br>*(Tesaki... tare. Xin lỗi, chị nói lại một lần được không ạ?)* |
| Yumiko | <ruby>手<rt>て</rt></ruby>・<ruby>先<rt>さき</rt></ruby>、<ruby>垂<rt>た</rt></ruby>れ。「<ruby>手先<rt>てさき</rt></ruby>」は<ruby>短<rt>みじか</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>、「<ruby>垂<rt>た</rt></ruby>れ」は<ruby>長<rt>なが</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>。<br>*(Te-saki, ta-re. "Tesaki" là đầu ngắn, "tare" là đầu dài.)* |
| Trang | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>短<rt>みじか</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>が<ruby>手先<rt>てさき</rt></ruby>ですね。<br>*(À, em hiểu rồi. Đầu ngắn là tesaki ạ.)* |
| Yumiko | そう。メモしておくといいよ。<br>*(Đúng. Ghi vào sổ là tốt đó.)* |
| Trang | はい、メモします。<br>*(Vâng, em ghi ạ.)* |

---

## Tình huống 5 — Kho áo · 8:30, Yumiko biểu diễn cách buộc 蝶結び

| Vai | Lời thoại |
|---|---|
| Yumiko | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>帯<rt>おび</rt></ruby>は<ruby>蝶結<rt>ちょうむす</rt></ruby>びでいいの。<ruby>簡単<rt>かんたん</rt></ruby>だよ。<br>*(Obi của khách buộc nơ bướm là được. Dễ thôi.)* |
| Trang | ちょうむすび…<ruby>蝶<rt>ちょう</rt></ruby>は<ruby>虫<rt>むし</rt></ruby>のちょうですか?<br>*(Choumusubi... "chou" là con bướm ạ?)* |
| Yumiko | そう、バタフライ。<ruby>結<rt>むす</rt></ruby>ぶ<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>後<rt>うし</rt></ruby>ろ。<ruby>前<rt>まえ</rt></ruby>じゃないよ。<br>*(Đúng, butterfly. Chỗ buộc ở phía sau. Không phải trước nhé.)* |
| Trang | <ruby>後<rt>うし</rt></ruby>ろですね。お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>自身<rt>じしん</rt></ruby>で<ruby>結<rt>むす</rt></ruby>びますか?<br>*(Phía sau ạ. Khách tự buộc ạ?)* |
| Yumiko | <ruby>普通<rt>ふつう</rt></ruby>はお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>自身<rt>じしん</rt></ruby>。でも、できない<ruby>方<rt>かた</rt></ruby>には「お<ruby>手伝<rt>てつだ</rt></ruby>いしましょうか」と<ruby>聞<rt>き</rt></ruby>くの。<br>*(Bình thường khách tự buộc. Nhưng ai không biết thì mình hỏi "Có cần em giúp không ạ".)* |
| Trang | 「お<ruby>手伝<rt>てつだ</rt></ruby>いしましょうか」、はい。<br>*(Có cần em giúp không ạ, vâng.)* |
| Yumiko | じゃ、<ruby>練習<rt>れんしゅう</rt></ruby>マネキンで<ruby>練習<rt>れんしゅう</rt></ruby>しようね。<br>*(Vậy mình tập trên ma-nơ-canh nhé.)* |

---

## Tình huống 6 — Kho áo · 9:00, Trang tập trên ma-nơ-canh — lần đầu vụng

| Vai | Lời thoại |
|---|---|
| Trang | (cố buộc)…ユミコさん、<ruby>左右<rt>さゆう</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じになりません。<br>*(Yumiko-san, hai bên không bằng nhau.)* |
| Yumiko | あ、<ruby>手先<rt>てさき</rt></ruby>が<ruby>長<rt>なが</rt></ruby>すぎる。<ruby>三十<rt>さんじゅっ</rt></ruby>センチくらいでいいよ。<br>*(À, tesaki dài quá. Khoảng 30cm thôi.)* |
| Trang | <ruby>三十<rt>さんじゅっ</rt></ruby>センチ…<ruby>短<rt>みじか</rt></ruby>くします。<br>*(30 phân... Em làm ngắn lại.)* |
| Yumiko | <ruby>蝶<rt>ちょう</rt></ruby>の<ruby>羽<rt>はね</rt></ruby>は<ruby>左右<rt>さゆう</rt></ruby><ruby>同<rt>おな</rt></ruby>じくらい、<ruby>形<rt>かたち</rt></ruby>がきれいに<ruby>見<rt>み</rt></ruby>えるように。<br>*(Cánh bướm hai bên bằng nhau cho đẹp.)* |
| Trang | (làm lại) …これでいいですか?<br>*(... Vậy được không ạ?)* |
| Yumiko | うん、いいね!<ruby>上手<rt>じょうず</rt></ruby>になってきた。<br>*(Ừm, được rồi! Em khá lên rồi đó.)* |
| Trang | ありがとうございます。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn ạ. Em mừng quá.)* |

---

## Tình huống 7 — Hành lang · 11:00, Mei và Soyeon than khó

| Vai | Lời thoại |
|---|---|
| Mei | チャンちゃん、<ruby>帯<rt>おび</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいね。<br>*(Trang ơi, obi khó nhỉ.)* |
| Trang | うん、<ruby>長<rt>なが</rt></ruby>すぎる。でもユミコさんに<ruby>聞<rt>き</rt></ruby>けば、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Ừ, dài quá. Nhưng hỏi Yumiko thì được.)* |
| Soyeon | <ruby>韓国<rt>かんこく</rt></ruby>のチマチョゴリも<ruby>結<rt>むす</rt></ruby>ぶけど、<ruby>違<rt>ちが</rt></ruby>うね。<br>*(Hanbok Hàn cũng buộc nhưng khác.)* |
| Mei | <ruby>中国<rt>ちゅうごく</rt></ruby>のチャイナドレスはボタンだけ。<ruby>簡単<rt>かんたん</rt></ruby>。<br>*(Sườn xám Trung Quốc chỉ có nút. Dễ.)* |
| Trang | アオザイもボタン。<ruby>日本<rt>にほん</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>特別<rt>とくべつ</rt></ruby>ですね。<br>*(Áo dài cũng nút. Nhật đặc biệt thật.)* |
| Soyeon | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>しようね。<br>*(Cùng tập nhé.)* |
| Trang | うん、<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Ừ, cố lên.)* |

---

## Tình huống 8 — Phòng khách 桜の間 · Thứ Sáu 16:00, lần đầu mang yukata vào phòng

*Đoàn khách Tokyo đã đến. Trang ôm 2 bộ yukata cỡ M cho cặp vợ chồng phòng 桜の間.*

| Vai | Lời thoại |
|---|---|
| Trang | (gõ cửa 3 tiếng) <ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em xin phép ạ.)* |
| Khách nam | はい、どうぞ。<br>*(Vâng, vào đi.)* |
| Trang | (cúi 30 độ) お<ruby>邪魔<rt>じゃま</rt></ruby>いたします。<ruby>浴衣<rt>ゆかた</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちしました。<br>*(Em xin phép vào. Em mang yukata đến ạ.)* |
| Khách nữ | あら、ありがとう。<br>*(Ôi, cảm ơn em.)* |
| Trang | サイズはMでよろしいでしょうか?<br>*(Cỡ M có được không ạ?)* |
| Khách nam | ええ、Mで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, M là được.)* |
| Trang | こちらに<ruby>置<rt>お</rt></ruby>かせていただきます。<br>*(Em xin phép đặt ở đây ạ.)* |

---

## Tình huống 9 — Phòng khách 桜の間 · 16:05, hướng dẫn cách mặc — khách hỏi

| Vai | Lời thoại |
|---|---|
| Khách nữ | すみません、<ruby>着方<rt>きかた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらえますか?<br>*(Xin lỗi, em hướng dẫn cách mặc được không?)* |
| Trang | はい、<ruby>喜<rt>よろこ</rt></ruby>んで。<ruby>左<rt>ひだり</rt></ruby>の<ruby>身頃<rt>みごろ</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>になります。<br>*(Vâng, em xin ạ. Vạt trái nằm trên ạ.)* |
| Khách nữ | <ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>ですね。<br>*(Trái trên đúng không?)* |
| Trang | はい、<ruby>逆<rt>ぎゃく</rt></ruby>はダメです。<ruby>帯<rt>おび</rt></ruby>は<ruby>後<rt>うし</rt></ruby>ろで<ruby>蝶結<rt>ちょうむす</rt></ruby>びにしてください。<br>*(Vâng, không được ngược ạ. Obi buộc nơ bướm ở phía sau ạ.)* |
| Khách nữ | <ruby>蝶結<rt>ちょうむす</rt></ruby>び、<ruby>難<rt>むずか</rt></ruby>しいかしら。<br>*(Nơ bướm, có khó không nhỉ.)* |
| Trang | お<ruby>手伝<rt>てつだ</rt></ruby>いしましょうか?<br>*(Có cần em giúp không ạ?)* |
| Khách nữ | お<ruby>願<rt>ねが</rt></ruby>いできる?<br>*(Nhờ em được không?)* |
| Trang | はい、<ruby>後<rt>のち</rt></ruby>ほどお<ruby>伺<rt>うかが</rt></ruby>いします。<br>*(Vâng, lát nữa em sẽ đến ạ.)* |

---

## Tình huống 10 — Phòng khách 桜の間 · 16:30, Trang quay lại giúp buộc obi

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。お<ruby>帯<rt>おび</rt></ruby>のお<ruby>手伝<rt>てつだ</rt></ruby>いに<ruby>参<rt>まい</rt></ruby>りました。<br>*(Em xin phép. Em đến giúp buộc obi ạ.)* |
| Khách nữ | あ、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(À, nhờ em.)* |
| Trang | (đứng sau lưng khách) <ruby>後<rt>うし</rt></ruby>ろに<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép đứng sau ạ.)* |
| Khách nữ | はい。<br>*(Vâng.)* |
| Trang | <ruby>手先<rt>てさき</rt></ruby>を<ruby>三十<rt>さんじゅっ</rt></ruby>センチ<ruby>取<rt>と</rt></ruby>って…(buộc)…はい、できました。<br>*(Em lấy tesaki 30cm... Vâng, xong ạ.)* |
| Khách nữ | わあ、<ruby>可愛<rt>かわい</rt></ruby>い<ruby>蝶<rt>ちょう</rt></ruby>!ありがとう。<br>*(Wa, bướm đẹp quá! Cảm ơn em.)* |
| Trang | とんでもないです。お<ruby>夕食<rt>ゆうしょく</rt></ruby>は<ruby>六時<rt>ろくじ</rt></ruby>からです。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Dạ không có gì. Bữa tối từ 6 giờ ạ. Em xin phép lui ạ.)* |

---

## Tình huống 11 — Phòng nhân viên · 17:00, Yumiko khen Trang

| Vai | Lời thoại |
|---|---|
| Yumiko | チャンちゃん、<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>がほめてたよ。<br>*(Trang ơi, khách phòng Hoa Anh Đào khen em đó.)* |
| Trang | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Ơ, thật ạ? Em vui quá.)* |
| Yumiko | 「ベトナムの<ruby>子<rt>こ</rt></ruby>、<ruby>丁寧<rt>ていねい</rt></ruby>で<ruby>優<rt>やさ</rt></ruby>しい」って。<br>*(Bảo "Bé Việt Nam cẩn thận và dịu dàng".)* |
| Trang | <ruby>三日間<rt>みっかかん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>して<ruby>良<rt>よ</rt></ruby>かったです。<br>*(May là em tập 3 ngày.)* |
| Yumiko | <ruby>女将<rt>おかみ</rt></ruby>さんにも<ruby>報告<rt>ほうこく</rt></ruby>しておくね。<br>*(Chị sẽ báo cáo với 女将 luôn.)* |
| Trang | ありがとうございます。<ruby>明日<rt>あした</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn. Mai em tiếp tục cố ạ.)* |

---

## Tình huống 12 — Phòng nhân viên · 21:30, gọi điện về Huế

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Mẹ | Trang à, hôm nay ra sao con? |
| Trang | Mẹ ơi, hôm nay con mặc *yukata* cho khách Nhật! Khách khen con luôn. |
| Mẹ | Yu-ka-ta là gì con? |
| Trang | Là áo kimono mỏng mẹ ạ, mùa hè khách *ryokan* mặc. Còn cái dây thắt eo gọi là *obi*, dài 3 mét 6 cơ. |
| Mẹ | Trời ơi, 3 mét 6, làm sao con thắt nổi? |
| Trang | Con tập 3 ngày với chị sempai Yumiko. Phải buộc thành nơ bướm, gọi là *chou-musubi*. Trái phải đều nhau mới đẹp. |
| Mẹ | Con gái mẹ giỏi quá. Có khó hơn mặc áo dài không? |
| Trang | Khó hơn nhiều mẹ ơi. Áo dài chỉ có cúc, *yukata* phải nhớ vạt trái trên vạt phải, ngược lại là kiêng. |
| Mẹ | Ờ, vậy con nhớ kỹ nha. Tháng sau giỗ bà nội, con có gọi về được không? |
| Trang | Dạ con sẽ xin 女将 cho gọi ạ. Mẹ giữ sức khoẻ. |

---

## Đọng lại chương

**Mẫu câu cốt lõi:**
- **「サイズはMでよろしいでしょうか」** — Cỡ M có được không ạ
- **「お手伝いしましょうか」** — Có cần em giúp không ạ
- **「失礼いたします / 失礼します」** — Em xin phép (vào/ra phòng)
- **「お持ちしました」** — Em mang đến ạ (khiêm nhường)
- **「後ほどお伺いします」** — Lát nữa em sẽ đến ạ
- **「もう一度言っていただけますか」** — Chị nói lại lần nữa được không ạ

> Từ vựng & mẫu câu chương này: 浴衣・帯・手先・垂れ・蝶結び・身頃・サイズ・身長・紺色・水色・畳む・三つ折り・逆・お客様・女将・仲居・お手伝い・失礼いたします・承知しました・お邪魔いたします・とんでもないです.

---

## Bí quyết chương

- **左前は死装束** — Vạt phải trên vạt trái là cách khâm liệm người chết. Tuyệt đối không mặc nhầm cho khách sống.
- **3 tiếng gõ cửa** — Vào phòng khách luôn gõ 3 cái, đợi 「どうぞ」 rồi mới mở.
- **「お手伝いしましょうか」** thay vì 「手伝います」 — keigo khiêm nhường cho khách.
- **Đứng sau lưng buộc obi** — Trước khi đứng sau khách phải báo 「後ろに失礼します」.
- **Khen ngợi đến qua 女将** — Khách khen nhân viên Việt thường nói với sempai/女将 chứ ít nói trực tiếp; cảm ơn cả hai.
- **Yukata vs Kimono** — Yukata mỏng, mùa hè/onsen; kimono dày, có lót. Ryokan thường phát yukata.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 今週 | こんしゅう | KIM CHU | tuần này |
| 金曜日 | きんようび | KIM DIỆU NHẬT | thứ Sáu |
| 八名様 | はちめいさま | BÁT DANH DẠNG | tám vị khách |
| 承知 | しょうち | THỪA TRI | đã rõ, hiểu rõ |
| 浴衣 | ゆかた | DỤC Y | áo yukata |
| 帯 | おび | ĐỚI | dây thắt obi |
| 練習 | れんしゅう | LUYỆN TẬP | luyện tập |
| 三日間 | みっかかん | TAM NHẬT GIAN | trong 3 ngày |
| 衣裳部屋 | いしょうべや | Y THƯỜNG BỘ ỐC | kho áo |
| 四種類 | よんしゅるい | TỨ CHỦNG LOẠI | bốn loại |
| 男性 | だんせい | NAM TÍNH | nam giới |
| 女性 | じょせい | NỮ TÍNH | nữ giới |
| 紺色 | こんいろ | CÁM SẮC | màu xanh đậm |
| 水色 | みずいろ | THUỶ SẮC | màu xanh nước |
| 身長 | しんちょう | THÂN TRƯỜNG | chiều cao |
| 畳む | たたむ | ĐIỆP | gấp (vải) |
| 逆 | ぎゃく | NGHỊCH | ngược |
| 死装束 | しにしょうぞく | TỬ TRANG THÚC | y phục khâm liệm |
| 着方 | きかた | TRỨ PHƯƠNG | cách mặc |
| 袖 | そで | TỤ | tay áo |
| 内側 | うちがわ | NỘI TRẮC | bên trong |
| 三つ折り | みつおり | TAM CHIẾT | gấp ba |
| 手先 | てさき | THỦ TIÊN | đầu ngắn (của obi) |
| 垂れ | たれ | THUỲ | đầu dài (của obi) |
| 蝶結び | ちょうむすび | ĐIỆP KẾT | buộc nơ bướm |
| 後ろ | うしろ | HẬU | phía sau |
| 身頃 | みごろ | THÂN | vạt áo |
| 失礼 | しつれい | THẤT LỄ | xin phép, xin lỗi |
| 邪魔 | じゃま | TÀ MA | làm phiền |
| 喜んで | よろこんで | HỈ | sẵn lòng |
| 後ほど | のちほど | HẬU | lát nữa |
| 伺う | うかがう | TỨ | đến (khiêm nhường) |
| 丁寧 | ていねい | ĐINH NINH | cẩn thận, lịch sự |
| 報告 | ほうこく | BÁO CÁO | báo cáo |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000006, 800000046, NULL, 'markdown_book', 'T6. Phục vụ Kaiseki (懐石料理)', '# Sách thực tập sinh khách sạn · T6. Phục vụ Kaiseki (懐石料理)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N5→N4). Học các mẫu hội thoại tiếng Nhật khi phục vụ 懐石料理: trình bày từng món, giải thích nguyên liệu, hỏi dị ứng/khẩu vị, dọn món, rót sake/trà, ứng phó khi khách hỏi mà chưa biết.

---

## Bối cảnh

Tháng 10 năm 2025. Trang đã thạo yukata. Hôm nay 女将 Sato dạy cô bài khó nhất của 仲居: phục vụ 懐石料理 — 8 món theo trình tự nghiêm ngặt. Bếp trưởng (板長) Kimura-san dạy tên món, Yumiko-san sempai dạy cách bưng và rót. Mei (Trung Quốc), Soyeon (Hàn Quốc), Pradeep (Nepal) học cùng. Tối nay có khách 2 vợ chồng người Osaka kỷ niệm cưới.

---

## Tình huống 1 — Bếp · 14:00, 板長 Kimura giới thiệu thứ tự kaiseki

| Vai | Lời thoại |
|---|---|
| Kimura | チャンさん、<ruby>懐石料理<rt>かいせきりょうり</rt></ruby>は<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>だよ。<br>*(Trang, kaiseki quan trọng nhất là thứ tự.)* |
| Trang | はい、<ruby>順番<rt>じゅんばん</rt></ruby>ですね。<ruby>何品<rt>なんぴん</rt></ruby>ありますか?<br>*(Vâng, thứ tự ạ. Có mấy món ạ?)* |
| Kimura | <ruby>今日<rt>きょう</rt></ruby>は<ruby>八品<rt>はっぴん</rt></ruby>。<ruby>先付<rt>さきづけ</rt></ruby>、<ruby>椀物<rt>わんもの</rt></ruby>、<ruby>向付<rt>むこうづけ</rt></ruby>、<ruby>焼物<rt>やきもの</rt></ruby>、<ruby>煮物<rt>にもの</rt></ruby>、<ruby>揚物<rt>あげもの</rt></ruby>、<ruby>御飯<rt>ごはん</rt></ruby>、<ruby>水菓子<rt>みずがし</rt></ruby>。<br>*(Hôm nay 8 món. Sakizuke, wanmono, mukouzuke, yakimono, nimono, agemono, gohan, mizugashi.)* |
| Trang | (ghi vào sổ) はち…ぴん。<ruby>覚<rt>おぼ</rt></ruby>えるのが<ruby>大変<rt>たいへん</rt></ruby>です。<br>*(8 món ạ... Nhớ vất vả ạ.)* |
| Kimura | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>順番<rt>じゅんばん</rt></ruby>。<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えるよ。<br>*(Không sao, ngày nào cũng cùng thứ tự. Cơ thể tự nhớ.)* |
| Trang | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố.)* |

---

## Tình huống 2 — Bếp · 14:30, Kimura giải thích 先付 và nguyên liệu

*Trên bàn bếp có chén nhỏ 8cm đường kính, bên trong đậu hũ sống màu xanh và miso.*

| Vai | Lời thoại |
|---|---|
| Kimura | これが<ruby>先付<rt>さきづけ</rt></ruby>。「<ruby>枝豆<rt>えだまめ</rt></ruby><ruby>豆腐<rt>どうふ</rt></ruby>」。<br>*(Đây là sakizuke. "Đậu hũ đậu tằm".)* |
| Trang | <ruby>枝豆<rt>えだまめ</rt></ruby>…とうふ。きれいな<ruby>緑色<rt>みどりいろ</rt></ruby>ですね。<br>*(Edamame... đậu hũ. Màu xanh đẹp quá ạ.)* |
| Kimura | お<ruby>客様<rt>きゃくさま</rt></ruby>に「<ruby>枝豆<rt>えだまめ</rt></ruby>の<ruby>豆腐<rt>どうふ</rt></ruby>、<ruby>白味噌<rt>しろみそ</rt></ruby>のソースでございます」って<ruby>言<rt>い</rt></ruby>うの。<br>*(Nói với khách "Đây là đậu hũ edamame sốt miso trắng ạ".)* |
| Trang | 「えだまめのとうふ、しろみそのソースでございます」。<br>*(...)* |
| Kimura | アレルギーを<ruby>聞<rt>き</rt></ruby>くのも<ruby>忘<rt>わす</rt></ruby>れないで。<ruby>大豆<rt>だいず</rt></ruby>アレルギーの<ruby>方<rt>かた</rt></ruby>はダメだから。<br>*(Đừng quên hỏi dị ứng. Khách dị ứng đậu nành không ăn được.)* |
| Trang | <ruby>大豆<rt>だいず</rt></ruby>アレルギー…どう<ruby>聞<rt>き</rt></ruby>きますか?<br>*(Dị ứng đậu nành... Hỏi sao ạ?)* |
| Kimura | 「アレルギーはございませんか」だよ。<br>*(Câu "Quý khách có dị ứng gì không ạ".)* |
| Trang | はい、メモしました。<br>*(Vâng, em ghi rồi.)* |

---

## Tình huống 3 — Bếp · 15:00, học cách bưng khay (お膳)

| Vai | Lời thoại |
|---|---|
| Yumiko | チャンちゃん、お<ruby>膳<rt>ぜん</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えるね。<br>*(Trang, chị dạy cách bưng khay nhé.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ chị.)* |
| Yumiko | <ruby>両手<rt>りょうて</rt></ruby>でね。<ruby>胸<rt>むね</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さ。<ruby>顔<rt>かお</rt></ruby>に<ruby>息<rt>いき</rt></ruby>がかからないように。<br>*(Hai tay nha. Ngang ngực. Đừng để hơi thở vào đồ ăn.)* |
| Trang | <ruby>息<rt>いき</rt></ruby>がかからない…マスクですか?<br>*(Hơi thở không vào... Đeo khẩu trang ạ?)* |
| Yumiko | マスクもするけど、<ruby>顔<rt>かお</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>横<rt>よこ</rt></ruby>に<ruby>向<rt>む</rt></ruby>けるの。<br>*(Có đeo khẩu trang, nhưng mặt phải nghiêng đi.)* |
| Trang | (thử bưng)…<ruby>重<rt>おも</rt></ruby>いです。<br>*(... Nặng quá.)* |
| Yumiko | <ruby>毎日<rt>まいにち</rt></ruby>すれば<ruby>慣<rt>な</rt></ruby>れるよ。<ruby>転<rt>ころ</rt></ruby>ばないように<ruby>足元<rt>あしもと</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(Ngày nào cũng làm sẽ quen. Cẩn thận chân kẻo ngã.)* |
| Trang | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý.)* |

---

## Tình huống 4 — Bếp · 15:30, Trang hỏi tên cá khó

*Kimura cầm cá hồng nhỏ, da đỏ tươi.*

| Vai | Lời thoại |
|---|---|
| Kimura | <ruby>向付<rt>むこうづけ</rt></ruby>は<ruby>鯛<rt>たい</rt></ruby>のお<ruby>造<rt>つく</rt></ruby>り。<br>*(Mukouzuke là sashimi cá tai.)* |
| Trang | たい…ですか?<br>*(Tai... ạ?)* |
| Kimura | <ruby>赤<rt>あか</rt></ruby>い<ruby>魚<rt>さかな</rt></ruby>、<ruby>鯛<rt>たい</rt></ruby>。<ruby>日本<rt>にほん</rt></ruby>で<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>魚<rt>さかな</rt></ruby>だよ。<br>*(Cá đỏ, "tai" — cá tráp đỏ. Cá nổi tiếng ở Nhật.)* |
| Trang | あの、すみません、ベトナム<ruby>語<rt>ご</rt></ruby>では<ruby>分<rt>わ</rt></ruby>かりません。「タイ」と<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Dạ xin lỗi, tiếng Việt em không biết. Em nhớ là "tai" ạ.)* |
| Kimura | いいよ。お<ruby>客様<rt>きゃくさま</rt></ruby>に「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>鯛<rt>たい</rt></ruby>は<ruby>明石<rt>あかし</rt></ruby><ruby>産<rt>さん</rt></ruby>でございます」って<ruby>言<rt>い</rt></ruby>う。<br>*(Được. Nói với khách "Cá tai hôm nay từ Akashi ạ".)* |
| Trang | あかしさん…<ruby>地名<rt>ちめい</rt></ruby>ですか?<br>*(Akashi-san... Tên địa danh ạ?)* |
| Kimura | <ruby>明石<rt>あかし</rt></ruby>は<ruby>兵庫県<rt>ひょうごけん</rt></ruby>の<ruby>町<rt>まち</rt></ruby>。「<ruby>産<rt>さん</rt></ruby>」は「そこで<ruby>取<rt>と</rt></ruby>れた」<ruby>意味<rt>いみ</rt></ruby>。<br>*(Akashi là phố ở tỉnh Hyogo. "San" nghĩa là "đánh bắt ở đó".)* |
| Trang | あ、<ruby>分<rt>わ</rt></ruby>かりました。あかしさん。<br>*(À, em hiểu. Akashi-san.)* |

---

## Tình huống 5 — Phòng khách 紅葉の間 · 18:00, đón vợ chồng Osaka

*Trang quỳ ở cửa phòng đợi. Khách bước vào.*

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>待<rt>ま</rt></ruby>ちしておりました。お<ruby>夕食<rt>ゆうしょく</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めさせていただきます。<br>*(Em đã chờ ạ. Em xin bắt đầu phục vụ bữa tối.)* |
| Khách chồng | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ em.)* |
| Trang | お<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>は<ruby>何<rt>なに</rt></ruby>になさいますか?<br>*(Quý khách dùng đồ uống gì ạ?)* |
| Khách vợ | <ruby>冷酒<rt>れいしゅ</rt></ruby>を<ruby>一本<rt>いっぽん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho tôi một bình sake lạnh.)* |
| Trang | <ruby>冷酒<rt>れいしゅ</rt></ruby>を<ruby>一本<rt>いっぽん</rt></ruby>でございますね。アレルギーはございませんか?<br>*(Sake lạnh một bình ạ. Quý khách có dị ứng gì không ạ?)* |
| Khách chồng | <ruby>特<rt>とく</rt></ruby>にありません。<br>*(Không có gì đặc biệt.)* |
| Trang | かしこまりました。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Em đã rõ. Quý khách chờ một lát ạ.)* |

---

## Tình huống 6 — Phòng khách · 18:10, trình 先付 và giải thích

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>先付<rt>さきづけ</rt></ruby>でございます。<br>*(Quý khách đợi rồi ạ. Đây là món sakizuke.)* |
| Khách vợ | あら、きれいね。<br>*(Ôi, đẹp quá.)* |
| Trang | <ruby>枝豆<rt>えだまめ</rt></ruby>の<ruby>豆腐<rt>どうふ</rt></ruby>、<ruby>白味噌<rt>しろみそ</rt></ruby>のソースでございます。<br>*(Là đậu hũ edamame sốt miso trắng ạ.)* |
| Khách chồng | <ruby>枝豆<rt>えだまめ</rt></ruby>で<ruby>豆腐<rt>どうふ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るんですか?<br>*(Đậu hũ làm từ edamame à?)* |
| Trang | はい、<ruby>板長<rt>いたちょう</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby>が<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>作<rt>つく</rt></ruby>っております。<br>*(Vâng, bếp trưởng Kimura làm tươi mỗi sáng ạ.)* |
| Khách vợ | <ruby>手作<rt>てづく</rt></ruby>りなのね。<br>*(Làm thủ công đó nhỉ.)* |
| Trang | はい、どうぞお<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がりください。<br>*(Vâng, mời quý khách dùng ạ.)* |

---

## Tình huống 7 — Phòng khách · 18:25, rót sake — học keigo

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>酒<rt>さけ</rt></ruby>をお<ruby>注<rt>つ</rt></ruby>ぎいたします。<br>*(Em xin rót sake ạ.)* |
| Khách chồng | あ、ありがとう。<br>*(À, cảm ơn.)* |
| Trang | (rót bằng hai tay) ご<ruby>夫婦<rt>ふうふ</rt></ruby>でいらっしゃいますか?<br>*(Hai vị là vợ chồng ạ?)* |
| Khách vợ | ええ、<ruby>結婚<rt>けっこん</rt></ruby><ruby>記念日<rt>きねんび</rt></ruby>なんです。<br>*(Vâng, kỷ niệm ngày cưới.)* |
| Trang | おめでとうございます!<ruby>素敵<rt>すてき</rt></ruby>ですね。<br>*(Chúc mừng ạ! Tuyệt quá ạ.)* |
| Khách chồng | <ruby>三十年<rt>さんじゅうねん</rt></ruby>になります。<br>*(30 năm rồi đó.)* |
| Trang | <ruby>三十年<rt>さんじゅうねん</rt></ruby>!<ruby>素晴<rt>すば</rt></ruby>らしいです。<ruby>後<rt>のち</rt></ruby>ほど<ruby>女将<rt>おかみ</rt></ruby>からもご<ruby>挨拶<rt>あいさつ</rt></ruby>に<ruby>参<rt>まい</rt></ruby>ります。<br>*(30 năm! Tuyệt vời. Lát nữa 女将 sẽ đến chào ạ.)* |

---

## Tình huống 8 — Phòng khách · 18:40, khách hỏi tên cá Trang chưa biết

*Khách trỏ vào đĩa sashimi có 3 lát cá trắng kèm cá tai.*

| Vai | Lời thoại |
|---|---|
| Khách vợ | この<ruby>白<rt>しろ</rt></ruby>い<ruby>魚<rt>さかな</rt></ruby>、<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Cá trắng này là cá gì?)* |
| Trang | (lúng túng) すみません、<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<ruby>板長<rt>いたちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してまいります。<br>*(Em xin lỗi, quý khách chờ một lát. Em xin hỏi bếp trưởng ạ.)* |
| Khách chồng | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ em.)* |
| Trang | (chạy xuống bếp) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>白<rt>しろ</rt></ruby>い<ruby>魚<rt>さかな</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Kimura-san, cá trắng là gì ạ?)* |
| Kimura | <ruby>平目<rt>ひらめ</rt></ruby>だよ。「ひらめ」。<br>*(Cá bơn. "Hirame".)* |
| Trang | ひらめ、ありがとうございます。(quay lại phòng) お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>白<rt>しろ</rt></ruby>い<ruby>魚<rt>さかな</rt></ruby>は<ruby>平目<rt>ひらめ</rt></ruby>でございます。<br>*(Hirame, em cảm ơn. Quý khách đợi ạ. Cá trắng là cá bơn ạ.)* |
| Khách vợ | あら、ひらめ。ありがとう。<br>*(Ô, hirame. Cảm ơn em.)* |

---

## Tình huống 9 — Hành lang · 19:00, Yumiko khuyên về câu "phải hỏi lại"

| Vai | Lời thoại |
|---|---|
| Yumiko | チャンちゃん、お<ruby>客様<rt>きゃくさま</rt></ruby>に「<ruby>分<rt>わ</rt></ruby>かりません」と<ruby>言<rt>い</rt></ruby>ったの?<br>*(Trang, em nói "không biết" với khách hả?)* |
| Trang | いいえ、「<ruby>確認<rt>かくにん</rt></ruby>してまいります」と<ruby>言<rt>い</rt></ruby>いました。<br>*(Không, em nói "Em xin đi xác nhận ạ".)* |
| Yumiko | <ruby>偉<rt>えら</rt></ruby>い!それが<ruby>正解<rt>せいかい</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby>「<ruby>知<rt>し</rt></ruby>りません」って<ruby>言<rt>い</rt></ruby>わないでね。<br>*(Giỏi! Đúng đó. Tuyệt đối đừng nói "không biết" nhé.)* |
| Trang | はい、ユミコさんに<ruby>教<rt>おし</rt></ruby>えていただいたから。<br>*(Vâng, vì chị Yumiko đã chỉ em.)* |
| Yumiko | <ruby>魚<rt>さかな</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>覚<rt>おぼ</rt></ruby>えていこうね。<br>*(Tên cá, mình học dần dần nhé.)* |
| Trang | はい、ノートにまとめます。<br>*(Vâng, em tổng hợp vào sổ.)* |

---

## Tình huống 10 — Phòng khách · 19:30, dọn 焼物 và 煮物

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>焼物<rt>やきもの</rt></ruby>でございます。<ruby>銀<rt>ぎん</rt></ruby>だらの<ruby>西京焼<rt>さいきょうやき</rt></ruby>。<br>*(Em xin phép. Đây là món nướng. Cá tuyết bạc tẩm miso Saikyo.)* |
| Khách chồng | <ruby>西京焼<rt>さいきょうやき</rt></ruby>、<ruby>好<rt>す</rt></ruby>きなんだよ。<br>*(Tôi thích saikyo-yaki lắm.)* |
| Trang | <ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>続<rt>つづ</rt></ruby>いて<ruby>煮物<rt>にもの</rt></ruby>もお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Em mừng quá. Em xin mang tiếp món nimono ạ.)* |
| Khách vợ | <ruby>煮物<rt>にもの</rt></ruby>は<ruby>何<rt>なに</rt></ruby>かしら。<br>*(Nimono là món gì nhỉ.)* |
| Trang | <ruby>大根<rt>だいこん</rt></ruby>と<ruby>京<rt>きょう</rt></ruby><ruby>湯葉<rt>ゆば</rt></ruby>の<ruby>炊<rt>た</rt></ruby>き<ruby>合<rt>あ</rt></ruby>わせでございます。<br>*(Là củ cải và yuba Kyoto kho cùng ạ.)* |
| Khách vợ | <ruby>京都<rt>きょうと</rt></ruby>らしいわね。<br>*(Đậm chất Kyoto nhỉ.)* |
| Trang | はい、<ruby>京<rt>きょう</rt></ruby><ruby>湯葉<rt>ゆば</rt></ruby>は<ruby>京都<rt>きょうと</rt></ruby>の<ruby>名物<rt>めいぶつ</rt></ruby>でございます。<br>*(Vâng, yuba là đặc sản Kyoto ạ.)* |

---

## Tình huống 11 — Phòng khách · 20:30, dọn 御飯 và 水菓子

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>食事<rt>しょくじ</rt></ruby>はいかがでしたか?<br>*(Bữa ăn thế nào ạ?)* |
| Khách chồng | <ruby>美味<rt>おい</rt></ruby>しかったよ。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>食<rt>た</rt></ruby>べちゃった。<br>*(Ngon lắm. Ăn hết sạch.)* |
| Trang | ありがとうございます。<ruby>御飯<rt>ごはん</rt></ruby>と<ruby>赤<rt>あか</rt></ruby>だしのお<ruby>味噌汁<rt>みそしる</rt></ruby>でございます。<br>*(Em cảm ơn ạ. Đây là cơm và canh miso đỏ ạ.)* |
| Khách vợ | お<ruby>米<rt>こめ</rt></ruby>はどこの?<br>*(Gạo ở đâu vậy em?)* |
| Trang | <ruby>滋賀県<rt>しがけん</rt></ruby>の<ruby>近江米<rt>おうみまい</rt></ruby>でございます。<br>*(Là gạo Oumi tỉnh Shiga ạ.)* |
| Khách chồng | <ruby>近江米<rt>おうみまい</rt></ruby>、いいね。<br>*(Oumi-mai, hay.)* |
| Trang | <ruby>最後<rt>さいご</rt></ruby>に<ruby>水菓子<rt>みずがし</rt></ruby>、<ruby>柿<rt>かき</rt></ruby>のシャーベットをお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Cuối cùng em xin mang món tráng miệng, sorbet hồng ạ.)* |

---

## Tình huống 12 — Phòng nhân viên · 22:00, 女将 phản hồi

| Vai | Lời thoại |
|---|---|
| Sato | チャンさん、<ruby>今夜<rt>こんや</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>結婚<rt>けっこん</rt></ruby><ruby>記念日<rt>きねんび</rt></ruby>でしたね。<br>*(Trang, khách tối nay là kỷ niệm cưới đúng không.)* |
| Trang | はい、<ruby>三十年<rt>さんじゅうねん</rt></ruby>とおっしゃいました。<br>*(Vâng, hai vị bảo 30 năm ạ.)* |
| Sato | お<ruby>客様<rt>きゃくさま</rt></ruby>から「ベトナムの<ruby>子<rt>こ</rt></ruby>、<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>く」とほめていただきました。<br>*(Khách khen "Bé Việt Nam khéo léo".)* |
| Trang | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか!<br>*(Ơ, thật ạ!)* |
| Sato | <ruby>魚<rt>さかな</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しに<ruby>行<rt>い</rt></ruby>ったの、<ruby>正<rt>ただ</rt></ruby>しい<ruby>対応<rt>たいおう</rt></ruby>でしたよ。<br>*(Em đi hỏi tên cá là cách xử lý đúng đó.)* |
| Trang | ありがとうございます。<ruby>明日<rt>あした</rt></ruby>から<ruby>魚<rt>さかな</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Em cảm ơn. Mai em sẽ học tên cá ạ.)* |
| Sato | お<ruby>疲<rt>つか</rt></ruby>れさま。ゆっくり<ruby>休<rt>やす</rt></ruby>んでね。<br>*(Em vất vả rồi. Nghỉ ngơi nhé.)* |

---

## Tình huống 13 — Phòng nhân viên · 23:00, gọi điện về Huế

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Ba | A lô, Trang ơi, ăn cơm chưa con? |
| Trang | Dạ ăn rồi ba. Ba ơi, hôm nay con phục vụ *kaiseki* — bữa cơm Nhật 8 món đó ba. |
| Ba | 8 món? Như tiệc cưới hả con? |
| Trang | Dạ không, một bữa thôi nhưng 8 món nhỏ. Có *sakizuke* khai vị, *mukouzuke* là sashimi, rồi *yakimono* nướng, *nimono* kho, *agemono* chiên, cơm, canh miso, rồi *mizugashi* tráng miệng. |
| Ba | Ôi trời, cách phục vụ cũng khó hả con? |
| Trang | Dạ khó lắm ba. Phải nhớ tên cá, tên rau. Hôm nay khách hỏi cá gì mà con không biết, con xin phép xuống bếp hỏi *itamae*, rồi quay lên trả lời. Khách khen con khéo. |
| Ba | Chà, con gái ba khá rồi đó. Còn đôi vợ chồng Nhật ấy bao tuổi? |
| Trang | Họ cưới 30 năm rồi ba. Con chúc mừng, *女将* — bà chủ — cũng vào chào. |
| Ba | Ờ, người Nhật trọng kỷ niệm cưới ha. Mẹ con đang nấu cơm. Con nhớ giữ ấm. |
| Trang | Dạ, Kyoto bắt đầu lạnh rồi ba. Con thương ba mẹ. |

---

## Đọng lại chương

**Mẫu câu cốt lõi:**
- **「先付でございます」** — Đây là món sakizuke ạ (giới thiệu món)
- **「アレルギーはございませんか」** — Quý khách có dị ứng gì không ạ
- **「少々お待ちくださいませ」** — Quý khách chờ một lát ạ
- **「確認してまいります」** — Em xin đi xác nhận ạ (thay cho "không biết")
- **「お注ぎいたします」** — Em xin rót ạ
- **「どうぞお召し上がりください」** — Mời quý khách dùng ạ
- **「お持ちいたします」** — Em xin mang đến ạ

> Từ vựng & mẫu câu chương này: 懐石料理・順番・先付・椀物・向付・焼物・煮物・揚物・御飯・水菓子・板長・お膳・冷酒・鯛・平目・湯葉・大根・近江米・アレルギー・確認・記念日・お注ぎ・お召し上がり・西京焼.

---

## Bí quyết chương

- **8 món theo thứ tự cố định** — sakizuke → wanmono → mukouzuke → yakimono → nimono → agemono → gohan → mizugashi. Sai thứ tự là sai cả bữa.
- **Không bao giờ nói「知りません」** — Thay bằng「確認してまいります」rồi chạy đi hỏi bếp.
- **Rót sake bằng hai tay** — Tay phải cầm chai, tay trái đỡ đáy chai. Chai nhỏ thì tay trái chạm khẽ.
- **Hỏi dị ứng trước món đầu** — Nhất là đậu nành, lúa mì, tôm cua, trứng.
- **Bưng khay ngang ngực, mặt nghiêng** — Tránh thở vào đồ ăn của khách.
- **「〜産」 = nơi đánh bắt/trồng** — 明石産, 滋賀県産. Khách Nhật rất quan tâm xuất xứ.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 懐石料理 | かいせきりょうり | HOÀI THẠCH LIỆU LÝ | ẩm thực kaiseki |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 八品 | はっぴん | BÁT PHẨM | tám món |
| 先付 | さきづけ | TIÊN PHÓ | món khai vị |
| 椀物 | わんもの | UYỂN VẬT | món canh |
| 向付 | むこうづけ | HƯỚNG PHÓ | sashimi |
| 焼物 | やきもの | THIÊU VẬT | món nướng |
| 煮物 | にもの | CHỬ VẬT | món kho |
| 揚物 | あげもの | DƯƠNG VẬT | món chiên |
| 御飯 | ごはん | NGỰ PHẠN | cơm |
| 水菓子 | みずがし | THUỶ QUẢ TỬ | trái cây / tráng miệng |
| 板長 | いたちょう | BẢN TRƯỞNG | bếp trưởng Nhật |
| 枝豆 | えだまめ | CHI ĐẬU | đậu tằm xanh |
| 豆腐 | とうふ | ĐẬU HỦ | đậu hũ |
| 白味噌 | しろみそ | BẠCH MIỄU NỖ | miso trắng |
| 大豆 | だいず | ĐẠI ĐẬU | đậu nành |
| アレルギー | あれるぎー | — | dị ứng |
| お膳 | おぜん | THIỆN | khay đồ ăn |
| 両手 | りょうて | LƯỠNG THỦ | hai tay |
| 鯛 | たい | ĐIÊU | cá tráp đỏ |
| 平目 | ひらめ | BÌNH MỤC | cá bơn |
| 明石 | あかし | MINH THẠCH | Akashi (Hyogo) |
| 産 | さん | SẢN | xuất xứ |
| 冷酒 | れいしゅ | LÃNH TỬU | sake lạnh |
| 注ぐ | つぐ | CHÚ | rót |
| 夫婦 | ふうふ | PHU PHỤ | vợ chồng |
| 結婚記念日 | けっこんきねんび | KẾT HÔN KỶ NIỆM NHẬT | ngày cưới |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 西京焼 | さいきょうやき | TÂY KINH THIÊU | cá nướng tẩm miso Saikyo |
| 銀だら | ぎんだら | NGÂN TUYẾT | cá tuyết bạc |
| 大根 | だいこん | ĐẠI CĂN | củ cải trắng |
| 湯葉 | ゆば | THANG DIỆP | váng đậu yuba |
| 炊き合わせ | たきあわせ | XUY HỢP | kho hỗn hợp |
| 名物 | めいぶつ | DANH VẬT | đặc sản |
| 近江米 | おうみまい | CẬN GIANG MỄ | gạo Oumi (Shiga) |
| 召し上がる | めしあがる | TRIỆU THƯỢNG | dùng (kính ngữ) |
| 気が利く | きがきく | KHÍ LỢI | khéo léo, ý tứ |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000007, 800000046, NULL, 'markdown_book', 'T7. Quy trình Check-in (玄関のお出迎え)', '# Sách thực tập sinh khách sạn · T7. Quy trình Check-in (玄関のお出迎え)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N5→N4). Học các mẫu hội thoại tiếng Nhật khi check-in: cúi chào ở 玄関, hỏi tên khách, nhận hành lý, dẫn khách lên phòng, giải thích giờ ăn/onsen, giao chìa khoá, ứng phó khi khách Tây không biết tiếng Nhật.

---

## Bối cảnh

Tháng 11 năm 2025. Trang đã thạo bưng kaiseki. Hôm nay 女将 Sato bảo "đến lúc đứng 玄関 đón khách". Đây là điểm chạm đầu tiên — 第一印象 (ấn tượng đầu) sẽ quyết định cả kỳ nghỉ. Yumiko-san sempai dạy 3 cấp cúi chào và quy trình 10 bước. Mei và Soyeon tập cùng. Cuối tuần ryokan có cả khách Nhật và một đôi người Pháp.

---

## Tình huống 1 — 玄関 · 13:00, 女将 Sato dạy 3 cấp cúi chào

| Vai | Lời thoại |
|---|---|
| Sato | チャンさん、<ruby>玄関<rt>げんかん</rt></ruby>のお<ruby>出迎<rt>でむか</rt></ruby>えは<ruby>旅館<rt>りょかん</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>です。<br>*(Trang, đón khách ở cửa là bộ mặt của ryokan.)* |
| Trang | はい、しっかり<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ học kỹ ạ.)* |
| Sato | お<ruby>辞儀<rt>じぎ</rt></ruby>は<ruby>三<rt>さん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>。<ruby>会釈<rt>えしゃく</rt></ruby>15<ruby>度<rt>ど</rt></ruby>、<ruby>敬礼<rt>けいれい</rt></ruby>30<ruby>度<rt>ど</rt></ruby>、<ruby>最敬礼<rt>さいけいれい</rt></ruby>45<ruby>度<rt>ど</rt></ruby>。<br>*(Cúi chào có 3 loại. Eshaku 15 độ, keirei 30 độ, saikeirei 45 độ.)* |
| Trang | <ruby>三<rt>さん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>…どれをいつ<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Ba loại... Khi nào dùng cái nào ạ?)* |
| Sato | <ruby>普段<rt>ふだん</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>は<ruby>会釈<rt>えしゃく</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>える<ruby>時<rt>とき</rt></ruby>は<ruby>敬礼<rt>けいれい</rt></ruby>。<ruby>謝<rt>あやま</rt></ruby>る<ruby>時<rt>とき</rt></ruby>は<ruby>最敬礼<rt>さいけいれい</rt></ruby>。<br>*(Chào thường là eshaku. Đón khách là keirei. Xin lỗi là saikeirei.)* |
| Trang | あいさつ、おでむかえ、おわび、ですね。<br>*(Chào thường, đón khách, xin lỗi ạ.)* |
| Sato | そう。<ruby>背筋<rt>せすじ</rt></ruby>を<ruby>伸<rt>の</rt></ruby>ばして、<ruby>手<rt>て</rt></ruby>は<ruby>前<rt>まえ</rt></ruby>に<ruby>重<rt>かさ</rt></ruby>ねて。<br>*(Đúng. Lưng thẳng, hai tay chắp trước.)* |

---

## Tình huống 2 — 玄関 · 13:30, Yumiko dạy quy trình 10 bước

*Yumiko trải tờ giấy ghi 10 bước trên quầy gỗ ở 玄関.*

| Vai | Lời thoại |
|---|---|
| Yumiko | チェックインは10ステップあるよ。<br>*(Check-in có 10 bước.)* |
| Trang | じゅっ…ステップ。<ruby>多<rt>おお</rt></ruby>いです。<br>*(10 bước. Nhiều quá ạ.)* |
| Yumiko | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>言<rt>い</rt></ruby>うね。1.お<ruby>出迎<rt>でむか</rt></ruby>え、2.お<ruby>名前<rt>なまえ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、3.お<ruby>荷物<rt>にもつ</rt></ruby>、4.スリッパ、5.<ruby>記帳<rt>きちょう</rt></ruby>。<br>*(Không sao. Theo thứ tự nhé. 1. Đón khách, 2. Xác nhận tên, 3. Hành lý, 4. Dép, 5. Ký sổ.)* |
| Trang | (ghi sổ) はい。<br>*(Vâng.)* |
| Yumiko | 6.お<ruby>抹茶<rt>まっちゃ</rt></ruby>、7.お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>、8.<ruby>説明<rt>せつめい</rt></ruby>、9.お<ruby>茶<rt>ちゃ</rt></ruby>とお<ruby>菓子<rt>かし</rt></ruby>、10.<ruby>退出<rt>たいしゅつ</rt></ruby>。<br>*(6. Matcha, 7. Dẫn lên phòng, 8. Giải thích, 9. Trà bánh, 10. Lui phòng.)* |
| Trang | おまっちゃ、ご<ruby>案内<rt>あんない</rt></ruby>、せつめい、たいしゅつ。<br>*(...)* |
| Yumiko | <ruby>練習<rt>れんしゅう</rt></ruby>しよう。<ruby>私<rt>わたし</rt></ruby>がお<ruby>客様<rt>きゃくさま</rt></ruby>ね。<br>*(Mình tập. Chị đóng vai khách nhé.)* |

---

## Tình huống 3 — 玄関 · 14:00, tập với Yumiko (vai khách)

| Vai | Lời thoại |
|---|---|
| Yumiko (vai khách) | こんにちは。<br>*(Chào em.)* |
| Trang | (cúi 30 độ) いらっしゃいませ。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Quý khách đã đến ạ. Chúng em đã chờ.)* |
| Yumiko | はい、よろしく。<br>*(Vâng, nhờ em.)* |
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>ですが、お<ruby>名前<rt>なまえ</rt></ruby>をお<ruby>伺<rt>うかが</rt></ruby>いしてもよろしいでしょうか?<br>*(Em xin phép hỏi tên quý khách được không ạ?)* |
| Yumiko | <ruby>田中<rt>たなか</rt></ruby>です。<br>*(Tanaka.)* |
| Trang | <ruby>田中様<rt>たなかさま</rt></ruby>でいらっしゃいますね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。お<ruby>荷物<rt>にもつ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Quý ông Tanaka ạ. Em đã đợi. Em xin xách hành lý ạ.)* |
| Yumiko | OK!でも「<ruby>失礼<rt>しつれい</rt></ruby>ですが」の<ruby>後<rt>あと</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>間<rt>ま</rt></ruby>を<ruby>取<rt>と</rt></ruby>ってね。<br>*(OK! Nhưng sau "Shitsurei desu ga" chừa chút khoảng nha.)* |
| Trang | はい、<ruby>間<rt>ま</rt></ruby>を<ruby>取<rt>と</rt></ruby>ります。<br>*(Vâng, em chừa khoảng.)* |

---

## Tình huống 4 — 玄関 · 14:20, tập đổi dép

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>玄関<rt>げんかん</rt></ruby>で<ruby>靴<rt>くつ</rt></ruby>を<ruby>脱<rt>ぬ</rt></ruby>ぐ<ruby>時<rt>とき</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>靴<rt>くつ</rt></ruby>はどうする?<br>*(Khi khách cởi giày ở cửa, em xử lý ra sao?)* |
| Trang | <ruby>分<rt>わ</rt></ruby>かりません。<br>*(Em không biết ạ.)* |
| Yumiko | お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>脱<rt>ぬ</rt></ruby>いだ<ruby>靴<rt>くつ</rt></ruby>を、<ruby>外向<rt>そとむ</rt></ruby>きに<ruby>揃<rt>そろ</rt></ruby>えるの。<br>*(Giày khách cởi ra, mình quay mũi giày ra ngoài.)* |
| Trang | そとむきに?<br>*(Quay ra ngoài ạ?)* |
| Yumiko | <ruby>帰<rt>かえ</rt></ruby>る<ruby>時<rt>とき</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>がすぐ<ruby>履<rt>は</rt></ruby>けるように。<br>*(Để khi về khách xỏ ngay vào được.)* |
| Trang | あー、<ruby>親切<rt>しんせつ</rt></ruby>ですね。<br>*(À, chu đáo ạ.)* |
| Yumiko | スリッパは「どうぞ、お<ruby>履<rt>は</rt></ruby>きください」って<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す。<br>*(Dép thì đưa ra, nói "Mời quý khách đi dép".)* |
| Trang | 「どうぞ、お<ruby>履<rt>は</rt></ruby>きください」。<br>*(...)* |

---

## Tình huống 5 — 玄関 · 14:45, học câu khi dẫn khách lên phòng

| Vai | Lời thoại |
|---|---|
| Yumiko | お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>する<ruby>時<rt>とき</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>少<rt>すこ</rt></ruby>し<ruby>前<rt>まえ</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>くの。<br>*(Khi dẫn lên phòng, mình đi trước khách một chút.)* |
| Trang | <ruby>前<rt>まえ</rt></ruby>ですね。<br>*(Phía trước ạ.)* |
| Yumiko | <ruby>階段<rt>かいだん</rt></ruby>では「<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけくださいませ」と<ruby>言<rt>い</rt></ruby>う。<br>*(Cầu thang nói "Quý khách cẩn thận bước chân ạ".)* |
| Trang | あしもとにおきをつけくださいませ。<br>*(...)* |
| Yumiko | <ruby>角<rt>かど</rt></ruby>では「こちらへどうぞ」と<ruby>手<rt>て</rt></ruby>で<ruby>示<rt>しめ</rt></ruby>すの。<ruby>指<rt>ゆび</rt></ruby><ruby>差<rt>さ</rt></ruby>しはダメ。<br>*(Chỗ rẽ thì xoè tay nói "Mời quý khách qua đây". Không chỉ ngón tay.)* |
| Trang | <ruby>指<rt>ゆび</rt></ruby><ruby>差<rt>さ</rt></ruby>しはダメ…はい。<br>*(Không chỉ ngón, vâng.)* |
| Yumiko | <ruby>手<rt>て</rt></ruby>のひらを<ruby>上<rt>うえ</rt></ruby>に、<ruby>四指<rt>よんし</rt></ruby><ruby>揃<rt>そろ</rt></ruby>えて。<br>*(Lòng bàn tay ngửa lên, bốn ngón khép.)* |

---

## Tình huống 6 — 玄関 · 15:30, đôi vợ chồng Tanaka đến

*Cặp vợ chồng già khoảng 65 tuổi bước vào 玄関, đeo kính, lịch sự.*

| Vai | Lời thoại |
|---|---|
| Trang | (cúi 30 độ) いらっしゃいませ。<br>*(Quý khách đã đến ạ.)* |
| Khách | こんにちは。<ruby>田中<rt>たなか</rt></ruby>です。<br>*(Chào em. Tanaka đây.)* |
| Trang | <ruby>田中様<rt>たなかさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>本日<rt>ほんじつ</rt></ruby>はようこそおいでくださいました。<br>*(Ông Tanaka, em đã đợi. Hôm nay xin chào mừng quý khách.)* |
| Khách | お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Nhờ em.)* |
| Trang | お<ruby>荷物<rt>にもつ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたします。スリッパをどうぞ。<br>*(Em xin xách hành lý. Mời quý khách đi dép.)* |
| Khách vợ | ありがとう。<br>*(Cảm ơn em.)* |
| Trang | こちらでご<ruby>記帳<rt>きちょう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mời quý khách ký sổ tại đây ạ.)* |

---

## Tình huống 7 — 玄関 quầy · 15:35, ký sổ và mời 抹茶

| Vai | Lời thoại |
|---|---|
| Trang | こちらにお<ruby>名前<rt>なまえ</rt></ruby>とご<ruby>住所<rt>じゅうしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mời quý khách điền tên và địa chỉ vào đây ạ.)* |
| Khách | はい。(viết) <br>*(Vâng.)* |
| Trang | ありがとうございます。お<ruby>抹茶<rt>まっちゃ</rt></ruby>をお<ruby>出<rt>だ</rt></ruby>しいたしました。どうぞお<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がりください。<br>*(Em cảm ơn. Em đã pha matcha ạ. Mời quý khách dùng.)* |
| Khách vợ | あら、<ruby>抹茶<rt>まっちゃ</rt></ruby>。<ruby>嬉<rt>うれ</rt></ruby>しいわ。<br>*(Ô, matcha. Vui quá.)* |
| Trang | <ruby>京<rt>きょう</rt></ruby><ruby>菓子<rt>がし</rt></ruby>もご<ruby>一緒<rt>いっしょ</rt></ruby>にどうぞ。<br>*(Bánh Kyoto mời cùng ạ.)* |
| Khách | ありがとう。<ruby>長旅<rt>ながたび</rt></ruby>でしたから、<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn. Đi xa nên mừng quá.)* |
| Trang | <ruby>東京<rt>とうきょう</rt></ruby>からでいらっしゃいますか?<br>*(Quý khách từ Tokyo đến ạ?)* |
| Khách | ええ、<ruby>新幹線<rt>しんかんせん</rt></ruby>で。<br>*(Vâng, đi shinkansen.)* |

---

## Tình huống 8 — Hành lang · 15:50, dẫn khách lên phòng

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします。こちらへどうぞ。<br>*(Em xin dẫn quý khách lên phòng. Mời quý khách qua đây.)* |
| Khách | はい。<br>*(Vâng.)* |
| Trang | <ruby>階段<rt>かいだん</rt></ruby>がございます。<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけくださいませ。<br>*(Có cầu thang. Quý khách cẩn thận bước chân ạ.)* |
| Khách vợ | はい、ありがとう。<br>*(Vâng, cảm ơn em.)* |
| Trang | お<ruby>部屋<rt>へや</rt></ruby>は<ruby>二階<rt>にかい</rt></ruby>の「<ruby>紅葉<rt>もみじ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」でございます。<br>*(Phòng quý khách là "Hồng Diệp" tầng 2 ạ.)* |
| Khách | <ruby>紅葉<rt>もみじ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>、いい<ruby>名前<rt>なまえ</rt></ruby>だね。<br>*(Hồng Diệp, tên đẹp đấy.)* |
| Trang | はい、<ruby>窓<rt>まど</rt></ruby>から<ruby>紅葉<rt>もみじ</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。<br>*(Vâng, từ cửa sổ nhìn ra lá phong ạ.)* |

---

## Tình huống 9 — Phòng 紅葉の間 · 15:55, giải thích phòng và giờ giấc

| Vai | Lời thoại |
|---|---|
| Trang | (gõ 3 tiếng, mở cửa) こちらがお<ruby>部屋<rt>へや</rt></ruby>でございます。<br>*(Đây là phòng ạ.)* |
| Khách vợ | わぁ、<ruby>素敵<rt>すてき</rt></ruby>。<br>*(Wa, đẹp quá.)* |
| Trang | お<ruby>夕食<rt>ゆうしょく</rt></ruby>は<ruby>六時<rt>ろくじ</rt></ruby>から、お<ruby>部屋<rt>へや</rt></ruby>でお<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がりいただきます。<br>*(Bữa tối từ 6 giờ, dùng tại phòng ạ.)* |
| Khách | はい。<br>*(Vâng.)* |
| Trang | <ruby>温泉<rt>おんせん</rt></ruby>は<ruby>一階<rt>いっかい</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby><ruby>五時<rt>ごじ</rt></ruby>から<ruby>夜<rt>よる</rt></ruby><ruby>十一時<rt>じゅういちじ</rt></ruby>までご<ruby>利用<rt>りよう</rt></ruby>いただけます。<br>*(Onsen ở tầng 1, dùng được từ 5h sáng đến 11h tối ạ.)* |
| Khách vợ | <ruby>朝<rt>あさ</rt></ruby><ruby>風呂<rt>ぶろ</rt></ruby>もいいわね。<br>*(Tắm sáng cũng hay nhỉ.)* |
| Trang | お<ruby>朝食<rt>ちょうしょく</rt></ruby>は<ruby>七時<rt>しちじ</rt></ruby>から<ruby>九時<rt>くじ</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>、お<ruby>食事処<rt>しょくじどころ</rt></ruby>でございます。<br>*(Bữa sáng từ 7h đến 9h, tại nhà ăn ạ.)* |
| Khách | <ruby>何<rt>なに</rt></ruby>かあったら<ruby>誰<rt>だれ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べばいい?<br>*(Có gì thì gọi ai?)* |
| Trang | こちらの<ruby>内線電話<rt>ないせんでんわ</rt></ruby>で「9」を<ruby>押<rt>お</rt></ruby>してくださいませ。<br>*(Quý khách bấm số 9 trên máy nội bộ này ạ.)* |

---

## Tình huống 10 — Phòng · 16:05, giao chìa khoá và lui

| Vai | Lời thoại |
|---|---|
| Trang | こちらがお<ruby>部屋<rt>へや</rt></ruby>の<ruby>鍵<rt>かぎ</rt></ruby>でございます。お<ruby>出<rt>で</rt></ruby>かけの<ruby>際<rt>さい</rt></ruby>はフロントへお<ruby>預<rt>あず</rt></ruby>けくださいませ。<br>*(Đây là chìa phòng ạ. Khi quý khách ra ngoài, xin gửi ở lễ tân ạ.)* |
| Khách | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, hiểu rồi.)* |
| Trang | <ruby>他<rt>ほか</rt></ruby>にご<ruby>不明<rt>ふめい</rt></ruby>な<ruby>点<rt>てん</rt></ruby>はございませんか?<br>*(Quý khách còn điều gì chưa rõ không ạ?)* |
| Khách vợ | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Không ạ.)* |
| Trang | ごゆっくりお<ruby>過<rt>す</rt></ruby>ごしくださいませ。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Mong quý khách nghỉ ngơi thoải mái. Em xin phép lui ạ.)* |
| Trang | (lùi 3 bước, cúi 45 độ, đóng cửa nhẹ) |

---

## Tình huống 11 — 玄関 · 17:00, khách Pháp đến — Trang lúng túng

*Đôi vợ chồng người Pháp khoảng 40 tuổi, vali to, không biết tiếng Nhật.*

| Vai | Lời thoại |
|---|---|
| Khách Pháp | Bonjour... Hello?<br>*(Xin chào...)* |
| Trang | (cúi 30 độ) Welcome to our ryokan. <ruby>名前<rt>なまえ</rt></ruby>…name, please?<br>*(Chào mừng đến ryokan. Tên ạ?)* |
| Khách Pháp | Dupont. D-U-P-O-N-T.<br>*(...)* |
| Trang | デュポン<ruby>様<rt>さま</rt></ruby>ですね。One moment, please. <ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Vợ chồng Dupont ạ. Vui lòng chờ.)* |
| Trang | (chạy gọi Yumiko) ユミコさん、フランスのお<ruby>客様<rt>きゃくさま</rt></ruby>です!<br>*(Yumiko-san, có khách Pháp ạ!)* |
| Yumiko | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>英語<rt>えいご</rt></ruby>のカードを<ruby>使<rt>つか</rt></ruby>って。<br>*(Không sao, dùng thẻ tiếng Anh đi.)* |
| Trang | はい!(quay lại) Sorry to keep you waiting. Please take off your shoes here.<br>*(Xin lỗi đã để quý khách chờ. Mời cởi giày tại đây.)* |
| Khách Pháp | Oh, OK. Thank you.<br>*(...)* |

---

## Tình huống 12 — 玄関 · 17:10, dùng thẻ song ngữ giải thích

*Yumiko đưa Trang quyển thẻ song ngữ có hình minh hoạ.*

| Vai | Lời thoại |
|---|---|
| Trang | (trỏ thẻ) Dinner is from 6 PM. お<ruby>夕食<rt>ゆうしょく</rt></ruby>は<ruby>六時<rt>ろくじ</rt></ruby>から。<br>*(Bữa tối từ 6 giờ tối.)* |
| Khách Pháp | OK, 6 PM. In room?<br>*(OK, 6 giờ. Trong phòng?)* |
| Trang | Yes, in your room. お<ruby>部屋<rt>へや</rt></ruby>で。<br>*(Vâng, trong phòng ạ.)* |
| Khách Pháp | Onsen?<br>*(...)* |
| Trang | Onsen, 5 AM to 11 PM. <ruby>温泉<rt>おんせん</rt></ruby>、<ruby>五時<rt>ごじ</rt></ruby>から<ruby>十一時<rt>じゅういちじ</rt></ruby>。Tattoo?<br>*(Onsen 5 sáng đến 11 đêm. Quý khách có hình xăm?)* |
| Khách Pháp | No tattoo.<br>*(Không xăm.)* |
| Trang | OK, no problem. Yukata is here. <ruby>浴衣<rt>ゆかた</rt></ruby>。<br>*(OK, không sao. Yukata ở đây.)* |
| Khách Pháp | Merci! Thank you!<br>*(...)* |
| Trang | どういたしまして。You''re welcome.<br>*(Không có gì.)* |

---

## Tình huống 13 — Phòng nhân viên · 18:00, 女将 đánh giá

| Vai | Lời thoại |
|---|---|
| Sato | チャンさん、<ruby>今日<rt>きょう</rt></ruby>のチェックイン、<ruby>三組<rt>さんくみ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>しましたね。<br>*(Trang, hôm nay em check-in 3 đoàn nhỉ.)* |
| Trang | はい、<ruby>田中様<rt>たなかさま</rt></ruby>、<ruby>山田様<rt>やまださま</rt></ruby>、デュポン<ruby>様<rt>さま</rt></ruby>です。<br>*(Vâng, ông Tanaka, ông Sato, ông Dupont ạ.)* |
| Sato | フランスのお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>慌<rt>あわ</rt></ruby>てましたか?<br>*(Lúc khách Pháp, em có hoảng không?)* |
| Trang | はい、<ruby>少<rt>すこ</rt></ruby>し。でも、<ruby>英語<rt>えいご</rt></ruby>カードを<ruby>使<rt>つか</rt></ruby>いました。<br>*(Vâng, hơi hoảng. Nhưng em dùng thẻ tiếng Anh ạ.)* |
| Sato | それでいいです。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>笑顔<rt>えがお</rt></ruby>と<ruby>気持<rt>きも</rt></ruby>ち。<br>*(Vậy là tốt. Quan trọng là nụ cười và thành ý.)* |
| Trang | はい。<ruby>英語<rt>えいご</rt></ruby>も<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Vâng. Em sẽ học cả tiếng Anh.)* |
| Sato | <ruby>無理<rt>むり</rt></ruby>しないでね。まずは<ruby>日本語<rt>にほんご</rt></ruby>。<ruby>十二月<rt>じゅうにがつ</rt></ruby>のN4<ruby>検定<rt>けんてい</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Đừng quá sức. Trước hết tiếng Nhật. Tháng 12 thi N4 quan trọng.)* |

---

## Tình huống 14 — Phòng nhân viên · 22:30, gọi điện về Huế

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Em gái | Chị Trang ơi, em đây! Hôm nay có gì kể em nghe đi. |
| Trang | Hôm nay chị bắt đầu đứng *玄関* — cửa chính ryokan — đón khách em ạ. |
| Em gái | Đón khách thì khó gì chị? |
| Trang | Khó lắm em. Có 10 bước, phải cúi chào 30 độ — *keirei*, hỏi tên xong xin xách hành lý, dẫn lên phòng, mời *matcha*. Quan trọng nhất là không được chỉ ngón tay, phải xoè cả bàn tay. |
| Em gái | Trời, kỹ vậy. |
| Trang | Hôm nay có đôi người Pháp đến em ơi. Chị quýnh. Phải gọi chị Yumiko ra. Sau dùng thẻ song ngữ giải thích giờ tắm onsen, giờ ăn. |
| Em gái | Khách Pháp có vui không? |
| Trang | Vui em. Họ nói "Merci". Chị cười muốn rớt răng. *女将* — bà chủ — bảo "Quan trọng nhất là nụ cười và thành ý". |
| Em gái | Em thấy chị giỏi quá. Khi nào chị về? |
| Trang | Đầu tháng 12 chị thi N4 cái đã. Tết Tây xong chắc chị xin nghỉ Tết Ta về thăm nhà. |
| Em gái | Ba mẹ chờ chị đó. Cố lên! |

---

## Đọng lại chương

**Mẫu câu cốt lõi:**
- **「いらっしゃいませ」** — Quý khách đã đến ạ (chào đón)
- **「お待ちしておりました」** — Em đã chờ ạ
- **「失礼ですが、お名前をお伺いしてもよろしいでしょうか」** — Em xin phép hỏi tên quý khách được không ạ
- **「お荷物をお持ちいたします」** — Em xin xách hành lý ạ
- **「足元にお気をつけくださいませ」** — Quý khách cẩn thận bước chân ạ
- **「こちらへどうぞ」** — Mời quý khách qua đây
- **「ごゆっくりお過ごしくださいませ」** — Mong quý khách nghỉ ngơi thoải mái

> Từ vựng & mẫu câu chương này: 玄関・出迎え・会釈・敬礼・最敬礼・記帳・抹茶・案内・足元・指差し・スリッパ・温泉・朝食・夕食・内線電話・鍵・お預け・笑顔・新幹線・紅葉・第一印象.

---

## Bí quyết chương

- **3 cấp お辞儀**: 15° eshaku (chào nhau ngày thường), 30° keirei (đón/tiễn khách), 45° saikeirei (cảm ơn / xin lỗi sâu).
- **Xếp giày khách hướng ra ngoài** — Để khi về khách xỏ vào ngay không phải xoay.
- **Đi trước khách, không chỉ ngón** — Khi dẫn đường, đi trước nửa bước, dùng cả bàn tay ngửa xoè ra.
- **Lùi 3 bước rồi mới quay** — Khi ra khỏi phòng khách, lùi 3 bước, cúi, rồi mới khép cửa.
- **Khách nước ngoài: thẻ song ngữ + nụ cười** — Đừng hoảng. Ryokan đều có sẵn thẻ tiếng Anh có hình minh hoạ giờ ăn, giờ onsen, luật hình xăm.
- **Hỏi hình xăm trước khi mời onsen** — Nhiều onsen Nhật cấm xăm vì gắn yakuza; nếu có thì hướng dẫn 貸切風呂 (bồn riêng).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 玄関 | げんかん | HUYỀN QUAN | cửa chính |
| お出迎え | おでむかえ | XUẤT NGHÊNH | đón tiếp |
| 第一印象 | だいいちいんしょう | ĐỆ NHẤT ẤN TƯỢNG | ấn tượng đầu |
| お辞儀 | おじぎ | TỪ NGHI | cúi chào |
| 会釈 | えしゃく | HỘI THÍCH | cúi chào nhẹ 15° |
| 敬礼 | けいれい | KÍNH LỄ | cúi chào 30° |
| 最敬礼 | さいけいれい | TỐI KÍNH LỄ | cúi chào 45° |
| 背筋 | せすじ | BỐI CÂN | xương sống, lưng |
| 記帳 | きちょう | KÝ TRƯỚNG | ký sổ khách |
| 抹茶 | まっちゃ | MẠT TRÀ | bột trà xanh |
| 京菓子 | きょうがし | KINH QUẢ TỬ | bánh ngọt Kyoto |
| 案内 | あんない | ÁN NỘI | dẫn đường |
| 階段 | かいだん | GIAI ĐOẠN | cầu thang |
| 足元 | あしもと | TÚC NGUYÊN | bước chân, dưới chân |
| 指差し | ゆびさし | CHỈ SAI | chỉ ngón tay |
| スリッパ | すりっぱ | — | dép đi trong nhà |
| 揃える | そろえる | TỀ | xếp gọn, đều |
| 外向き | そとむき | NGOẠI HƯỚNG | hướng ra ngoài |
| 紅葉 | もみじ | HỒNG DIỆP | lá phong đỏ |
| 温泉 | おんせん | ÔN TUYỀN | suối nước nóng |
| 朝食 | ちょうしょく | TRIÊU THỰC | bữa sáng |
| 夕食 | ゆうしょく | TỊCH THỰC | bữa tối |
| 食事処 | しょくじどころ | THỰC SỰ XỨ | nhà ăn |
| 内線電話 | ないせんでんわ | NỘI TUYẾN ĐIỆN THOẠI | điện thoại nội bộ |
| 鍵 | かぎ | KIỀN | chìa khoá |
| お預け | おあずけ | DỰ | gửi lại |
| 不明 | ふめい | BẤT MINH | chưa rõ |
| 過ごす | すごす | QUÁ | trải qua, nghỉ |
| 新幹線 | しんかんせん | TÂN CÁN TUYẾN | tàu shinkansen |
| 長旅 | ながたび | TRƯỜNG LỮ | hành trình dài |
| 笑顔 | えがお | TIẾU NHAN | nụ cười |
| 慌てる | あわてる | HOẢNG | cuống, hoảng |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 検定 | けんてい | KIỂM ĐỊNH | kỳ thi (JLPT) |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000008, 800000046, NULL, 'markdown_book', 'T8. Đăng ký và thi N4 (N4検定)', '# Sách thực tập sinh khách sạn · T8. Đăng ký và thi N4 (N4検定)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N5→N4). Học các mẫu hội thoại tiếng Nhật khi đăng ký 検定: hỏi 女将 xin nghỉ, nhờ in giấy tờ, xin sempai phụ đạo, hỏi đường đến hội trường thi, làm test thử, báo kết quả sau khi thi.

---

## Bối cảnh

Cuối tháng 11 năm 2025. Trang sang Nhật được 6 tháng. 女将 Sato nhắc cô đăng ký N4検定 kỳ thi 7/12/2025 tại 京都産業大学. Hạn đăng ký online 30/9 đã đóng từ lâu — may là 監理団体 đăng ký giúp từ tháng 9. Còn 2 tuần ôn. Yumiko-san sempai từng đậu N2, đồng ý kèm 3 tối/tuần. Mei (TQ) thi N3, Soyeon (HQ) thi N2, Pradeep (Nepal) thi N4 cùng Trang.

---

## Tình huống 1 — Phòng nhân viên · 18:30, Sato xác nhận lịch thi

| Vai | Lời thoại |
|---|---|
| Sato | チャンさん、N4の<ruby>受験票<rt>じゅけんひょう</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きました。<br>*(Trang, giấy báo thi N4 đã đến.)* |
| Trang | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?ありがとうございます。<br>*(Ơ, thật ạ? Em cảm ơn.)* |
| Sato | <ruby>十二月<rt>じゅうにがつ</rt></ruby><ruby>七日<rt>なのか</rt></ruby>、<ruby>日曜日<rt>にちようび</rt></ruby>、<ruby>京都産業大学<rt>きょうとさんぎょうだいがく</rt></ruby>です。<br>*(Ngày 7 tháng 12, Chủ Nhật, Đại học Sangyo Kyoto.)* |
| Trang | <ruby>七日<rt>なのか</rt></ruby>…はい、お<ruby>休<rt>やす</rt></ruby>みをいただけますか?<br>*(Mùng 7 ạ... Em xin nghỉ được không ạ?)* |
| Sato | もちろん、<ruby>当日<rt>とうじつ</rt></ruby>は<ruby>一日<rt>いちにち</rt></ruby>お<ruby>休<rt>やす</rt></ruby>みです。<ruby>前日<rt>ぜんじつ</rt></ruby>も<ruby>半日<rt>はんにち</rt></ruby>お<ruby>休<rt>やす</rt></ruby>みでいいですよ。<br>*(Tất nhiên, hôm đó nghỉ cả ngày. Hôm trước cũng nghỉ nửa ngày nhé.)* |
| Trang | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ. Em sẽ cố.)* |
| Sato | プラディープさんも<ruby>同<rt>おな</rt></ruby>じN4ですね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Pradeep cũng N4 đó. Cùng cố lên nhé.)* |

---

## Tình huống 2 — Phòng nhân viên · 19:00, kiểm tra 受験票

*Trang ngồi cạnh Yumiko, mở phong bì.*

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>大事<rt>だいじ</rt></ruby>に<ruby>持<rt>も</rt></ruby>っていってね。<ruby>当日<rt>とうじつ</rt></ruby>これがないと<ruby>入<rt>はい</rt></ruby>れない。<br>*(Giấy báo thi giữ kỹ nhé. Hôm đó không có là không vào được.)* |
| Trang | はい、<ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Vâng, em giữ kỹ.)* |
| Yumiko | <ruby>写真<rt>しゃしん</rt></ruby>、<ruby>名前<rt>なまえ</rt></ruby>、<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>、<ruby>会場<rt>かいじょう</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Ảnh, tên, số báo danh, hội trường, kiểm tra đi.)* |
| Trang | <ruby>受験番号<rt>じゅけんばんごう</rt></ruby>はK4-23456。<ruby>会場<rt>かいじょう</rt></ruby>は<ruby>京都産業大学<rt>きょうとさんぎょうだいがく</rt></ruby><ruby>本館<rt>ほんかん</rt></ruby>301<ruby>教室<rt>きょうしつ</rt></ruby>。<br>*(Số báo danh K4-23456. Hội trường nhà chính Đại học Sangyo, phòng 301.)* |
| Yumiko | OK。<ruby>身分証<rt>みぶんしょう</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>。<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>持<rt>も</rt></ruby>っていって。<br>*(OK. Cần giấy tờ tuỳ thân. Mang thẻ ngoại kiều đi.)* |
| Trang | はい、<ruby>在留<rt>ざいりゅう</rt></ruby>カード。<br>*(Vâng, thẻ ngoại kiều.)* |
| Yumiko | <ruby>鉛筆<rt>えんぴつ</rt></ruby>HBと<ruby>消<rt>け</rt></ruby>しゴム、<ruby>時計<rt>とけい</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れないで。<br>*(Bút chì HB và tẩy, đồng hồ đừng quên.)* |

---

## Tình huống 3 — Phòng nhân viên · 20:00, Yumiko bắt đầu phụ đạo

| Vai | Lời thoại |
|---|---|
| Yumiko | じゃあ、N4の<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めるよ。<ruby>苦手<rt>にがて</rt></ruby>なところは?<br>*(Vậy mình bắt đầu học N4. Em yếu chỗ nào?)* |
| Trang | <ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>早<rt>はや</rt></ruby>くて<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Em yếu nghe. Nhanh quá em không hiểu.)* |
| Yumiko | <ruby>聴解<rt>ちょうかい</rt></ruby>ね。<ruby>毎日<rt>まいにち</rt></ruby><ruby>三十分<rt>さんじゅっぷん</rt></ruby>、JLPT<ruby>公式<rt>こうしき</rt></ruby>サイトの<ruby>練習問題<rt>れんしゅうもんだい</rt></ruby>を<ruby>聞<rt>き</rt></ruby>こう。<br>*(Nghe. Mỗi ngày 30 phút, nghe bài luyện trên trang JLPT chính thức.)* |
| Trang | <ruby>無料<rt>むりょう</rt></ruby>ですか?<br>*(Miễn phí ạ?)* |
| Yumiko | うん、<ruby>無料<rt>むりょう</rt></ruby>。スマホで<ruby>聞<rt>き</rt></ruby>けるよ。<br>*(Ừ, miễn phí. Nghe trên điện thoại được.)* |
| Trang | <ruby>文法<rt>ぶんぽう</rt></ruby>もちょっと<ruby>苦手<rt>にがて</rt></ruby>です。「〜なければならない」と「〜なくてもいい」がよく<ruby>混<rt>こん</rt></ruby><ruby>乱<rt>らん</rt></ruby>します。<br>*(Ngữ pháp em cũng yếu. "~nakereba naranai" với "~nakute mo ii" em hay lẫn.)* |
| Yumiko | あー、<ruby>反対<rt>はんたい</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>だよ。「<ruby>義務<rt>ぎむ</rt></ruby>」と「<ruby>許可<rt>きょか</rt></ruby>」、<ruby>覚<rt>おぼ</rt></ruby>えて。<br>*(À, nghĩa ngược đó. "Nghĩa vụ" và "cho phép", nhớ đi.)* |

---

## Tình huống 4 — Phòng nhân viên · 20:30, ôn 文法 với ví dụ ryokan

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>う<ruby>文<rt>ぶん</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Mình tập với câu công việc.)* |
| Trang | はい。<br>*(Vâng.)* |
| Yumiko | 「お<ruby>布団<rt>ふとん</rt></ruby>を<ruby>敷<rt>し</rt></ruby>かなければなりません」。<ruby>意味<rt>いみ</rt></ruby>は?<br>*(Câu "Phải trải futon". Nghĩa là gì?)* |
| Trang | <ruby>必<rt>かなら</rt></ruby>ず<ruby>敷<rt>し</rt></ruby>く、ですね。<br>*(Bắt buộc phải trải, đúng không?)* |
| Yumiko | そう。「<ruby>掃除<rt>そうじ</rt></ruby>しなくてもいいです」。<br>*(Đúng. Câu "Không cần dọn cũng được".)* |
| Trang | <ruby>掃除<rt>そうじ</rt></ruby>しなくてもいい、しなくても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Không dọn, không dọn cũng không sao.)* |
| Yumiko | <ruby>正解<rt>せいかい</rt></ruby>!じゃ、「お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>ってはいけません」。<br>*(Đúng! Vậy "Không được chạm vào khách".)* |
| Trang | <ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>っちゃダメ。<br>*(Tuyệt đối không được chạm.)* |
| Yumiko | <ruby>完璧<rt>かんぺき</rt></ruby>!N4の<ruby>三大<rt>さんだい</rt></ruby><ruby>文法<rt>ぶんぽう</rt></ruby>、<ruby>義務<rt>ぎむ</rt></ruby>・<ruby>許可<rt>きょか</rt></ruby>・<ruby>禁止<rt>きんし</rt></ruby>だよ。<br>*(Hoàn hảo! 3 ngữ pháp lớn N4: nghĩa vụ, cho phép, cấm đoán.)* |

---

## Tình huống 5 — Phòng nhân viên · 22:00, Pradeep ghé học cùng

| Vai | Lời thoại |
|---|---|
| Pradeep | チャンさん、<ruby>勉強<rt>べんきょう</rt></ruby>、どうですか?<br>*(Trang, học sao rồi?)* |
| Trang | プラディープさん、<ruby>文法<rt>ぶんぽう</rt></ruby>はだいたい<ruby>分<rt>わ</rt></ruby>かりました。<ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい。<br>*(Anh Pradeep, ngữ pháp tôi hiểu sơ. Phần nghe khó.)* |
| Pradeep | わたしも。<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいです。ネパール<ruby>語<rt>ご</rt></ruby>は<ruby>漢字<rt>かんじ</rt></ruby>ないから。<br>*(Tôi cũng. Kanji khó nhất. Tiếng Nepal không có kanji.)* |
| Trang | ベトナム<ruby>語<rt>ご</rt></ruby>も<ruby>今<rt>いま</rt></ruby>は<ruby>漢字<rt>かんじ</rt></ruby><ruby>使<rt>つか</rt></ruby>いません。でも、<ruby>昔<rt>むかし</rt></ruby>は<ruby>使<rt>つか</rt></ruby>いました。<br>*(Tiếng Việt giờ không dùng kanji. Nhưng ngày xưa có dùng.)* |
| Pradeep | あ、<ruby>知<rt>し</rt></ruby>っています。<ruby>漢越<rt>かんえつ</rt></ruby>ですね。<br>*(À, tôi biết. Hán-Việt nhỉ.)* |
| Trang | はい!「<ruby>大学<rt>だいがく</rt></ruby>」はベトナム<ruby>語<rt>ご</rt></ruby>で「đại học」。<ruby>音<rt>おと</rt></ruby>が<ruby>似<rt>に</rt></ruby>てます。<br>*(Vâng! "Daigaku" tiếng Việt là "đại học". Âm gần giống.)* |
| Pradeep | リン!じゃなくてチャンさん、いいですね。<br>*(Linh! À không Trang, hay quá.)* |
| Yumiko | <ruby>二人<rt>ふたり</rt></ruby>とも、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Cả hai cố lên nhé.)* |

---

## Tình huống 6 — Phòng nhân viên · Tuần sau, làm 模試 (đề thử)

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>今日<rt>きょう</rt></ruby>は<ruby>模試<rt>もし</rt></ruby>をやろう。<ruby>時間<rt>じかん</rt></ruby>は<ruby>本番<rt>ほんばん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ。<br>*(Hôm nay làm đề thử. Thời gian như thi thật.)* |
| Trang | <ruby>本番<rt>ほんばん</rt></ruby>は<ruby>何分<rt>なんぷん</rt></ruby>ですか?<br>*(Thi thật bao nhiêu phút ạ?)* |
| Yumiko | N4は<ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>が30<ruby>分<rt>ぷん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby>が60<ruby>分<rt>ぷん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby>が35<ruby>分<rt>ぷん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby>125<ruby>分<rt>ぷん</rt></ruby>。<br>*(N4: ngôn ngữ 30 phút, đọc hiểu 60 phút, nghe 35 phút. Tổng 125 phút.)* |
| Trang | ながいですね。トイレは?<br>*(Dài nhỉ. Đi vệ sinh thì sao ạ?)* |
| Yumiko | <ruby>各<rt>かく</rt></ruby>セクションの<ruby>間<rt>あいだ</rt></ruby>に<ruby>休<rt>やす</rt></ruby>みがあるよ。<ruby>試験中<rt>しけんちゅう</rt></ruby>はダメ。<br>*(Giữa các phần có nghỉ. Trong giờ thi thì không được.)* |
| Trang | じゃあ、<ruby>水<rt>みず</rt></ruby><ruby>少<rt>すこ</rt></ruby>ししか<ruby>飲<rt>の</rt></ruby>みません。<br>*(Vậy em uống nước ít thôi.)* |
| Yumiko | (cười) そうそう。じゃ<ruby>始<rt>はじ</rt></ruby>めようか。<br>*(Đúng đó. Vậy bắt đầu nhé.)* |

---

## Tình huống 7 — Phòng nhân viên · 1 tiếng sau, chấm 模試

| Vai | Lời thoại |
|---|---|
| Yumiko | チャンちゃん、<ruby>模試<rt>もし</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Trang, kết quả đề thử.)* |
| Trang | どきどき…。<br>*(Hồi hộp...)* |
| Yumiko | <ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>45/60、<ruby>読解<rt>どっかい</rt></ruby>40/60、<ruby>聴解<rt>ちょうかい</rt></ruby>30/60。<ruby>合計<rt>ごうけい</rt></ruby>115/180。<br>*(Ngôn ngữ 45/60, đọc 40/60, nghe 30/60. Tổng 115/180.)* |
| Trang | <ruby>合格点<rt>ごうかくてん</rt></ruby>はいくつですか?<br>*(Điểm đậu bao nhiêu ạ?)* |
| Yumiko | N4は90<ruby>点<rt>てん</rt></ruby>。<ruby>各<rt>かく</rt></ruby>セクション19<ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<br>*(N4 là 90 điểm. Mỗi phần trên 19 điểm.)* |
| Trang | じゃあ、<ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Vậy là đậu!)* |
| Yumiko | このまま<ruby>本番<rt>ほんばん</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。でも<ruby>聴解<rt>ちょうかい</rt></ruby>もう<ruby>少<rt>すこ</rt></ruby>し<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Cứ vậy là thi thật cũng được. Nhưng phần nghe cố thêm chút.)* |
| Trang | はい!<ruby>聴解<rt>ちょうかい</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng! Phần nghe, em nghe mỗi ngày.)* |

---

## Tình huống 8 — Phòng nhân viên · Tối thứ Bảy 6/12, chuẩn bị đồ thi

| Vai | Lời thoại |
|---|---|
| Yumiko | <ruby>明日<rt>あした</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>!カバンの<ruby>中<rt>なか</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Mai thi thật! Kiểm tra túi nào.)* |
| Trang | <ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カード、<ruby>鉛筆<rt>えんぴつ</rt></ruby>HB<ruby>三本<rt>さんぼん</rt></ruby>、<ruby>消<rt>け</rt></ruby>しゴム、<ruby>時計<rt>とけい</rt></ruby>。<br>*(Giấy báo thi, thẻ ngoại kiều, 3 bút chì HB, tẩy, đồng hồ.)* |
| Yumiko | <ruby>携帯<rt>けいたい</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>オフにしてバッグへ。<ruby>会場<rt>かいじょう</rt></ruby>では<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>出<rt>だ</rt></ruby>さないで。<br>*(Điện thoại tắt nguồn cho vào túi. Trong phòng thi tuyệt đối không lấy ra.)* |
| Trang | はい、<ruby>電源<rt>でんげん</rt></ruby>オフ。<br>*(Vâng, tắt nguồn.)* |
| Yumiko | <ruby>京都駅<rt>きょうとえき</rt></ruby>から<ruby>地下鉄<rt>ちかてつ</rt></ruby>で<ruby>北山駅<rt>きたやまえき</rt></ruby>まで。15<ruby>分<rt>ふん</rt></ruby>ぐらい。<br>*(Từ ga Kyoto đi metro đến ga Kitayama. Khoảng 15 phút.)* |
| Trang | <ruby>北山駅<rt>きたやまえき</rt></ruby>から<ruby>大学<rt>だいがく</rt></ruby>は?<br>*(Từ ga Kitayama đến trường?)* |
| Yumiko | <ruby>歩<rt>ある</rt></ruby>いて10<ruby>分<rt>ぷん</rt></ruby>。<ruby>朝<rt>あさ</rt></ruby><ruby>七時<rt>しちじ</rt></ruby>に<ruby>旅館<rt>りょかん</rt></ruby>を<ruby>出<rt>で</rt></ruby>てね。<br>*(Đi bộ 10 phút. 7 giờ sáng đi từ ryokan nhé.)* |
| Trang | はい、<ruby>早<rt>はや</rt></ruby>めに<ruby>出<rt>で</rt></ruby>ます。<br>*(Vâng, em đi sớm.)* |

---

## Tình huống 9 — Ngày thi 7/12 · 8:30, hỏi đường gần 北山駅

*Trang đứng ngơ ngác ở ngã tư gần ga, hỏi một bà cụ đi qua.*

| Vai | Lời thoại |
|---|---|
| Trang | すみません、ちょっとお<ruby>伺<rt>うかが</rt></ruby>いします。<br>*(Em xin lỗi, em hỏi một chút.)* |
| Bà cụ | はい、なんでしょう?<br>*(Vâng, gì cơ?)* |
| Trang | <ruby>京都産業大学<rt>きょうとさんぎょうだいがく</rt></ruby>はどちらでしょうか?<br>*(Đại học Sangyo Kyoto đi hướng nào ạ?)* |
| Bà cụ | あー、<ruby>大学<rt>だいがく</rt></ruby>ね。この<ruby>道<rt>みち</rt></ruby>をまっすぐ。<ruby>信号<rt>しんごう</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つ<ruby>越<rt>こ</rt></ruby>えて<ruby>右<rt>みぎ</rt></ruby>へ<ruby>曲<rt>ま</rt></ruby>がるの。<br>*(À, trường đại học. Đường này đi thẳng. Qua 2 đèn xanh rồi rẽ phải.)* |
| Trang | <ruby>信号<rt>しんごう</rt></ruby><ruby>二<rt>ふた</rt></ruby>つ、<ruby>右<rt>みぎ</rt></ruby>ですね。ありがとうございます。<br>*(Hai đèn, rẽ phải. Em cảm ơn ạ.)* |
| Bà cụ | <ruby>検定<rt>けんてい</rt></ruby>?<ruby>頑張<rt>がんば</rt></ruby>ってね!<br>*(Đi thi à? Cố lên nhé!)* |
| Trang | はい、ありがとうございます!<br>*(Vâng, em cảm ơn!)* |

---

## Tình huống 10 — Hội trường thi · 8:55, vào phòng 301

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho xem giấy báo thi.)* |
| Trang | はい、こちらです。<br>*(Vâng, đây ạ.)* |
| Giám thị | K4-23456さんですね。<ruby>席<rt>せき</rt></ruby>は<ruby>窓側<rt>まどがわ</rt></ruby>の<ruby>三列目<rt>さんれつめ</rt></ruby>です。<br>*(K4-23456 nhỉ. Chỗ ngồi hàng 3 phía cửa sổ.)* |
| Trang | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Giám thị | <ruby>身分証<rt>みぶんしょう</rt></ruby>は<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<ruby>携帯<rt>けいたい</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って<ruby>鞄<rt>かばん</rt></ruby>へ。<br>*(Giấy tờ tuỳ thân đặt trên bàn. Điện thoại tắt nguồn cho vào túi.)* |
| Trang | はい、もう<ruby>切<rt>き</rt></ruby>ってあります。<br>*(Vâng, em đã tắt rồi.)* |
| Giám thị | <ruby>九時<rt>くじ</rt></ruby><ruby>三十分<rt>さんじゅっぷん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<ruby>静<rt>しず</rt></ruby>かにお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(9:30 bắt đầu. Vui lòng giữ trật tự.)* |

---

## Tình huống 11 — Sảnh trường · 16:00, gặp Pradeep sau thi

*Sau ca thi cuối, Trang ra sảnh, gặp Pradeep tay cầm chai nước, mặt mệt.*

| Vai | Lời thoại |
|---|---|
| Pradeep | チャンさん!お<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Trang! Vất vả rồi.)* |
| Trang | お<ruby>疲<rt>つか</rt></ruby>れさまです。どうでしたか?<br>*(Anh vất vả. Sao rồi anh?)* |
| Pradeep | <ruby>文法<rt>ぶんぽう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。でも<ruby>漢字<rt>かんじ</rt></ruby>、<ruby>三問<rt>さんもん</rt></ruby><ruby>分<rt>わ</rt></ruby>からなかった。<br>*(Ngữ pháp ổn. Nhưng kanji 3 câu không biết.)* |
| Trang | わたしは<ruby>聴解<rt>ちょうかい</rt></ruby>。スピーカーの<ruby>音<rt>おと</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さくて<ruby>困<rt>こま</rt></ruby>りました。<br>*(Tôi phần nghe. Loa nhỏ quá khó nghe.)* |
| Pradeep | え、<ruby>本当<rt>ほんとう</rt></ruby>?<ruby>後<rt>うし</rt></ruby>ろの<ruby>席<rt>せき</rt></ruby>だったの?<br>*(Ơ thật à? Anh ngồi cuối à?)* |
| Trang | いいえ、<ruby>窓側<rt>まどがわ</rt></ruby>。<ruby>外<rt>そと</rt></ruby>から<ruby>車<rt>くるま</rt></ruby>の<ruby>音<rt>おと</rt></ruby>が<ruby>聞<rt>き</rt></ruby>こえました。<br>*(Không, phía cửa sổ. Có tiếng xe ngoài đường.)* |
| Pradeep | あー、<ruby>残念<rt>ざんねん</rt></ruby>。<ruby>結果<rt>けっか</rt></ruby>は<ruby>二月<rt>にがつ</rt></ruby>ですね?<br>*(Tiếc nhỉ. Kết quả tháng 2 đúng không?)* |
| Trang | はい、2<ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めにオンラインで<ruby>発表<rt>はっぴょう</rt></ruby>です。<br>*(Vâng, đầu tháng 2 công bố online.)* |

---

## Tình huống 12 — Ryokan · 19:00, báo cáo 女将

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、ただいま<ruby>戻<rt>もど</rt></ruby>りました。<br>*(Thưa bà chủ, em đã về ạ.)* |
| Sato | お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>試験<rt>しけん</rt></ruby>はどうでしたか?<br>*(Vất vả rồi. Bài thi sao?)* |
| Trang | <ruby>文法<rt>ぶんぽう</rt></ruby>と<ruby>読解<rt>どっかい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>難<rt>むずか</rt></ruby>しかったです。<br>*(Em nghĩ ngữ pháp và đọc hiểu ổn. Phần nghe hơi khó ạ.)* |
| Sato | <ruby>合格<rt>ごうかく</rt></ruby>できそうですか?<br>*(Có vẻ đậu được không?)* |
| Trang | <ruby>分<rt>わ</rt></ruby>かりません。でも、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Em không rõ. Nhưng em đã cố đến cuối ạ.)* |
| Sato | それで<ruby>十分<rt>じゅうぶん</rt></ruby>。<ruby>結果<rt>けっか</rt></ruby>はいつ?<br>*(Vậy là đủ. Khi nào có kết quả?)* |
| Trang | <ruby>二月<rt>にがつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めです。<br>*(Đầu tháng 2 ạ.)* |
| Sato | <ruby>合格<rt>ごうかく</rt></ruby>したらお<ruby>祝<rt>いわ</rt></ruby>いしましょう。<ruby>今日<rt>きょう</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>んでね。<br>*(Đậu thì mình mừng nhé. Hôm nay em nghỉ ngơi đi.)* |
| Trang | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 13 — Phòng nhân viên · 22:00, gọi điện về Huế

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Mẹ | A lô, Trang à! Thi xong chưa con? |
| Trang | Dạ xong rồi mẹ. Con vừa về ryokan, vừa ăn cơm xong. |
| Mẹ | Mệt không con? |
| Trang | Mệt mẹ ơi. Thi từ 9 rưỡi đến 3 rưỡi chiều, 3 phần liền. Phần *bunpou* ngữ pháp với *dokkai* đọc hiểu thì con ổn. Phần *choukai* nghe thì khó, loa nhỏ với có tiếng xe ngoài. |
| Mẹ | Trời, vậy có đậu được không con? |
| Trang | Con không chắc mẹ ạ. Đề thử trước thi được 115 điểm, đậu là 90 thôi. Nhưng hôm nay phần nghe con đoán nhiều câu lắm. |
| Mẹ | Đoán là sao? |
| Trang | Là không nghe rõ nên con khoanh đại đáp án. Phải đến tháng 2 mới biết kết quả mẹ ạ. |
| Mẹ | Ờ, không sao. Cố hết sức rồi là được. Mẹ với ba tự hào con lắm. Một mình sang Nhật 6 tháng, học tiếng, đi làm, đi thi. |
| Trang | Dạ con cảm ơn ba mẹ. *女将* — bà chủ — bảo nếu đậu sẽ mừng cho con. Chị Yumiko cũng kèm con 3 tối/tuần suốt 2 tuần. |
| Mẹ | Nhớ cảm ơn bà chủ với chị ấy con nha. |
| Trang | Dạ con biết rồi. Mai con ngủ bù xong, đi làm tiếp ạ. |

---

## Đọng lại chương

**Mẫu câu cốt lõi:**
- **「お休みをいただけますか」** — Em xin nghỉ được không ạ
- **「〜なければなりません」** — Phải làm ~ (nghĩa vụ)
- **「〜なくてもいいです」** — Không cần ~ cũng được (cho phép)
- **「〜てはいけません」** — Không được ~ (cấm)
- **「ちょっとお伺いします」** — Em xin hỏi một chút (hỏi đường)
- **「ただいま戻りました」** — Em đã về ạ (báo cáo)
- **「最後まで頑張りました」** — Em đã cố đến cuối ạ

> Từ vựng & mẫu câu chương này: 検定・受験票・受験番号・会場・身分証・在留カード・鉛筆・消しゴム・模試・合格点・言語知識・読解・聴解・文法・義務・許可・禁止・地下鉄・信号・電源・発表・合格.

---

## Bí quyết chương

- **3 đồ thi cốt yếu**: 受験票 + 在留カード + bút chì HB (3 cây) + tẩy + đồng hồ analog. Đồng hồ điện tử có còi cấm.
- **N4 cần ≥90/180 điểm + mỗi phần ≥19/60** — Một phần dưới sàn là trượt dù tổng cao.
- **3 mẫu N4 cốt lõi**: 〜なければならない (nghĩa vụ), 〜なくてもいい (cho phép), 〜てはいけない (cấm). Học bằng câu công việc thật cho dễ nhớ.
- **JLPT công bố kết quả sau ~2 tháng** — Kỳ 12 ra đầu tháng 2 năm sau, online.
- **Hỏi đường lịch sự**: 「すみません、ちょっとお伺いします」 → đợi → nói địa điểm 「〜はどちらでしょうか」.
- **Phần 聴解 chỉ chạy 1 lần** — Không có quyền tua lại. Tập trung tuyệt đối, không đoán giữa chừng.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 検定 | けんてい | KIỂM ĐỊNH | kỳ thi (JLPT) |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | giấy báo thi |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |
| 会場 | かいじょう | HỘI TRƯỜNG | hội trường thi |
| 身分証 | みぶんしょう | THÂN PHẬN CHỨNG | giấy tờ tuỳ thân |
| 在留カード | ざいりゅうかーど | TẠI LƯU | thẻ ngoại kiều |
| 当日 | とうじつ | ĐƯƠNG NHẬT | hôm thi |
| 前日 | ぜんじつ | TIỀN NHẬT | hôm trước |
| 苦手 | にがて | KHỔ THỦ | yếu, không giỏi |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | từ vựng/ngữ pháp |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 義務 | ぎむ | NGHĨA VỤ | nghĩa vụ |
| 許可 | きょか | HỨA KHẢ | cho phép |
| 禁止 | きんし | CẤM CHỈ | cấm |
| 公式 | こうしき | CÔNG THỨC | chính thức |
| 練習問題 | れんしゅうもんだい | LUYỆN TẬP VẤN ĐỀ | bài luyện tập |
| 無料 | むりょう | VÔ LIỆU | miễn phí |
| 模試 | もし | MÔ THÍ | đề thử |
| 本番 | ほんばん | BẢN PHIÊN | thi thật |
| 合計 | ごうけい | HỢP KẾ | tổng cộng |
| 合格点 | ごうかくてん | HỢP CÁCH ĐIỂM | điểm đậu |
| 合格 | ごうかく | HỢP CÁCH | đậu, đỗ |
| 鉛筆 | えんぴつ | DUYÊN BÚT | bút chì |
| 消しゴム | けしごむ | TIÊU | tẩy |
| 電源 | でんげん | ĐIỆN NGUYÊN | nguồn điện |
| 地下鉄 | ちかてつ | ĐỊA HẠ THIẾT | tàu điện ngầm |
| 信号 | しんごう | TÍN HIỆU | đèn giao thông |
| 曲がる | まがる | KHÚC | rẽ, quẹo |
| 越える | こえる | VIỆT | vượt qua |
| 窓側 | まどがわ | SONG TRẮC | phía cửa sổ |
| 発表 | はっぴょう | PHÁT BIỂU | công bố |
| 残念 | ざんねん | TÀN NIỆM | tiếc |
| 戻る | もどる | LỆ | trở về |
| 祝う | いわう | CHÚC | mừng, chúc mừng |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000009, 800000046, NULL, 'markdown_book', 'T9. Mùa Obon — kín phòng 100% (お盆満室)', '# Sách thực tập sinh khách sạn · T9. Mùa Obon — kín phòng 100% (お盆満室)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N5→N4). Học các mẫu hội thoại tiếng Nhật khi cao điểm Obon: nhận khách dồn dập, xác nhận lịch đặt phòng, xử lý 2 đoàn cùng giờ, đếm số phần ăn, xin phép đổi ca, báo cáo 女将 hàng giờ.

---

## Bối cảnh

Tháng 8 năm 2025. Mùa **お盆** (Obon) là cao điểm lớn nhất của ryokan Kyoto — 12 phòng kín 100% suốt một tuần, có ngày 2 đoàn cùng check-in lúc 15h. Trang đã làm việc được 5 tháng, đã quen quy trình cơ bản nhưng đây là lần đầu cô chạy ca cao điểm thực sự. 女将 (Okami-san) chia cô đi với Chen-san (Trung Quốc, 26t, sempai 2 năm) phụ trách tầng 2 (4 phòng). Mệt nhưng học được rất nhiều. Chương này tập trung mẫu câu "báo nhanh — gọn — đúng" trong giờ cao điểm.

---

## Tình huống 1 — Sảnh ryokan · 6:30, 女将 họp ca sáng cao điểm

| Vai | Lời thoại |
|---|---|
| Okami | みなさん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>から<ruby>一週間<rt>いっしゅうかん</rt></ruby>、<ruby>満室<rt>まんしつ</rt></ruby>です。<br>*(Mọi người, chào buổi sáng. Từ hôm nay một tuần, kín phòng.)* |
| Okami | チェックインは15<ruby>時<rt>じ</rt></ruby>から。<ruby>今日<rt>きょう</rt></ruby>は<ruby>二<rt>ふた</rt></ruby>つの<ruby>団体<rt>だんたい</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じ<ruby>時間<rt>じかん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ます。<br>*(Check-in từ 3 giờ chiều. Hôm nay hai đoàn đến cùng giờ.)* |
| Trang | はい。<ruby>何人<rt>なんにん</rt></ruby>ですか?<br>*(Vâng. Mấy người ạ?)* |
| Okami | <ruby>合<rt>あ</rt></ruby>わせて20<ruby>名<rt>めい</rt></ruby>です。チャンさんは<ruby>二階<rt>にかい</rt></ruby>、チェンさんと<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Tổng 20 người. Trang ở tầng 2, đi với Chen.)* |
| Trang | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ Okami ạ.)* |
| Chen | チャンちゃん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>走<rt>はし</rt></ruby>るよ。<ruby>水<rt>みず</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んでね。<br>*(Trang, hôm nay chạy đó. Uống nước nhé.)* |
| Trang | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cố gắng.)* |

---

## Tình huống 2 — Văn phòng nhỏ · 7:00, Chen giải thích danh sách đặt phòng

*Chen mở sổ 予約表 — bảng 12 phòng, ghi tên đoàn và giờ dự kiến.*

| Vai | Lời thoại |
|---|---|
| Chen | これが<ruby>今日<rt>きょう</rt></ruby>の<ruby>予約表<rt>よやくひょう</rt></ruby>。201<ruby>号室<rt>ごうしつ</rt></ruby>から204まで、<ruby>私<rt>わたし</rt></ruby>たちのフロアね。<br>*(Đây là bảng đặt phòng hôm nay. Từ phòng 201 đến 204, tầng mình.)* |
| Trang | 201<ruby>号室<rt>ごうしつ</rt></ruby>は<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、4<ruby>名様<rt>めいさま</rt></ruby>ですね。<br>*(Phòng 201 là quý khách Tanaka, 4 vị ạ.)* |
| Chen | そう。202は<ruby>伊藤<rt>いとう</rt></ruby><ruby>様<rt>さま</rt></ruby>5<ruby>名様<rt>めいさま</rt></ruby>、203は<ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>のグループで6<ruby>名様<rt>めいさま</rt></ruby>、204は<ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>2<ruby>名様<rt>めいさま</rt></ruby>。<br>*(Đúng. 202 quý khách Sato 5 vị, 203 nhóm quý khách Suzuki 6 vị, 204 quý khách Yamada 2 vị.)* |
| Trang | <ruby>全部<rt>ぜんぶ</rt></ruby>で17<ruby>名様<rt>めいさま</rt></ruby>ですか?<br>*(Tổng 17 vị ạ?)* |
| Chen | そう。<ruby>夕食<rt>ゆうしょく</rt></ruby>も17<ruby>食<rt>しょく</rt></ruby>、<ruby>朝食<rt>ちょうしょく</rt></ruby>も17<ruby>食<rt>しょく</rt></ruby>。<ruby>厨房<rt>ちゅうぼう</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えるよ。<br>*(Đúng. Bữa tối 17 phần, bữa sáng 17 phần. Báo bếp.)* |
| Trang | <ruby>食<rt>しょく</rt></ruby>はご<ruby>飯<rt>はん</rt></ruby>の<ruby>数<rt>かぞ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですね。<br>*(「Shoku」 là cách đếm phần ăn ạ.)* |
| Chen | そう。<ruby>覚<rt>おぼ</rt></ruby>えておいて。<br>*(Đúng. Nhớ nhé.)* |

---

## Tình huống 3 — Phòng 201 · 9:00, dọn phòng nhanh — Chen kèm tốc độ

| Vai | Lời thoại |
|---|---|
| Chen | チャンちゃん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つの<ruby>部屋<rt>へや</rt></ruby>、20<ruby>分<rt>ぷん</rt></ruby>で<ruby>終<rt>お</rt></ruby>わらせよう。<br>*(Trang, hôm nay một phòng mình làm xong trong 20 phút.)* |
| Trang | 20<ruby>分<rt>ぷん</rt></ruby>!いつもは30<ruby>分<rt>ぷん</rt></ruby>です…<br>*(20 phút! Mọi khi 30 phút mà…)* |
| Chen | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>分担<rt>ぶんたん</rt></ruby>しよう。<ruby>私<rt>わたし</rt></ruby>は<ruby>布団<rt>ふとん</rt></ruby>、チャンちゃんはお<ruby>風呂<rt>ふろ</rt></ruby>と<ruby>洗面所<rt>せんめんじょ</rt></ruby>。<br>*(Yên tâm, chia việc. Mình làm futon, Trang làm phòng tắm và bồn rửa.)* |
| Trang | はい。タオルは<ruby>何枚<rt>なんまい</rt></ruby>ですか?<br>*(Vâng. Khăn mấy cái ạ?)* |
| Chen | <ruby>4名様<rt>よんめいさま</rt></ruby>だから、バスタオル4<ruby>枚<rt>まい</rt></ruby>、<ruby>顔<rt>かお</rt></ruby>タオル4<ruby>枚<rt>まい</rt></ruby>、<ruby>浴衣<rt>ゆかた</rt></ruby>4<ruby>着<rt>ちゃく</rt></ruby>。<br>*(4 vị, nên khăn tắm 4 cái, khăn mặt 4 cái, yukata 4 bộ.)* |
| Trang | サイズは?<br>*(Cỡ thế nào ạ?)* |
| Chen | <ruby>予約表<rt>よやくひょう</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてある。Lが<ruby>二<rt>ふた</rt></ruby>つ、Mが<ruby>二<rt>ふた</rt></ruby>つ。<br>*(Bảng đặt phòng có ghi. L hai bộ, M hai bộ.)* |
| Trang | はい、<ruby>取<rt>と</rt></ruby>ってきます。<br>*(Vâng, em đi lấy ạ.)* |

---

## Tình huống 4 — Hành lang tầng 2 · 11:00, Trang gặp Park-san (Hàn Quốc) hỗ trợ chéo

| Vai | Lời thoại |
|---|---|
| Park | チャンちゃん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Trang, ổn không?)* |
| Trang | パクさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>大変<rt>たいへん</rt></ruby>です。203<ruby>号室<rt>ごうしつ</rt></ruby>はまだ<ruby>布団<rt>ふとん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わっていません。<br>*(Anh Park, hơi vất ạ. Phòng 203 futon chưa xong.)* |
| Park | <ruby>手伝<rt>てつだ</rt></ruby>いましょうか?<ruby>三階<rt>さんかい</rt></ruby>はもう<ruby>終<rt>お</rt></ruby>わったから。<br>*(Tôi giúp nhé? Tầng 3 xong rồi.)* |
| Trang | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>助<rt>たす</rt></ruby>かります!<br>*(Ơ thật ạ? Cứu em với!)* |
| Park | <ruby>6名様<rt>ろくめいさま</rt></ruby>でしょ?<ruby>布団<rt>ふとん</rt></ruby><ruby>6組<rt>ろっくみ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>敷<rt>し</rt></ruby>こう。<br>*(6 vị nhỉ? Trải 6 bộ futon, làm cùng nhau.)* |
| Trang | はい、ありがとうございます。<ruby>枕<rt>まくら</rt></ruby>はあちらです。<br>*(Vâng, cảm ơn anh. Gối ở đằng kia.)* |
| Park | チェンさんに「パクが<ruby>手伝<rt>てつだ</rt></ruby>っています」って<ruby>言<rt>い</rt></ruby>っておいてね。<br>*(Báo Chen "Park đang giúp" nhé.)* |
| Trang | はい、すぐ<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Vâng, em báo ngay.)* |

---

## Tình huống 5 — Văn phòng nhỏ · 12:30, báo cáo 女将 giữa ca

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>二階<rt>にかい</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>をします。<br>*(Thưa Okami, em xin phép báo cáo tầng 2.)* |
| Okami | はい、どうぞ。<br>*(Ừ, nói đi.)* |
| Trang | 201、202、204は<ruby>準備完了<rt>じゅんびかんりょう</rt></ruby>です。203は<ruby>布団<rt>ふとん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。パクさんが<ruby>手伝<rt>てつだ</rt></ruby>ってくれています。<br>*(201, 202, 204 xong chuẩn bị. 203 đang trải futon. Anh Park giúp.)* |
| Okami | パクさんが?ありがたいね。<ruby>何時<rt>なんじ</rt></ruby>に<ruby>終<rt>お</rt></ruby>わりそう?<br>*(Park á? Quý hoá. Mấy giờ xong?)* |
| Trang | あと20<ruby>分<rt>ぷん</rt></ruby>ぐらいです。<br>*(Khoảng 20 phút nữa ạ.)* |
| Okami | はい、<ruby>順調<rt>じゅんちょう</rt></ruby>ね。チェックインは<ruby>15時<rt>じゅうごじ</rt></ruby>、<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いますね。<br>*(Ừ, suôn sẻ nhỉ. Check-in 3h, kịp nhỉ.)* |
| Trang | はい、<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>います。<ruby>休憩<rt>きゅうけい</rt></ruby>は<ruby>13時<rt>じゅうさんじ</rt></ruby>からお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Vâng, kịp. Em xin nghỉ từ 1h được không ạ?)* |
| Okami | どうぞ。1<ruby>時間<rt>じかん</rt></ruby><ruby>休<rt>やす</rt></ruby>んで、ちゃんと<ruby>食<rt>た</rt></ruby>べてね。<br>*(Nghỉ đi. Một tiếng, ăn cho đàng hoàng nhé.)* |

---

## Tình huống 6 — Nhà ăn nhân viên · 13:10, ăn nhanh với Chen và Park

| Vai | Lời thoại |
|---|---|
| Chen | チャンちゃん、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>食<rt>た</rt></ruby>べて<ruby>食<rt>た</rt></ruby>べて。<br>*(Trang, vất rồi. Ăn ăn đi.)* |
| Trang | パクさん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Park, em cảm ơn anh nhiều ạ.)* |
| Park | いえいえ、お<ruby>互<rt>たが</rt></ruby>いさま。<ruby>明日<rt>あした</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>三階<rt>さんかい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから、よろしくね。<br>*(Không có gì, có qua có lại. Mai tầng 3 tôi đông, nhờ Trang.)* |
| Trang | はい、もちろんです。<ruby>何<rt>なん</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>ですか?<br>*(Vâng, dĩ nhiên. Mấy vị ạ?)* |
| Park | 22<ruby>名様<rt>めいさま</rt></ruby>。<ruby>大変<rt>たいへん</rt></ruby>です。<br>*(22 vị. Vất.)* |
| Chen | お<ruby>盆<rt>ぼん</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby>こんな<ruby>感<rt>かん</rt></ruby>じ。<ruby>三日目<rt>みっかめ</rt></ruby>からは<ruby>慣<rt>な</rt></ruby>れるよ。<br>*(Obon năm nào cũng vậy. Từ ngày thứ 3 là quen.)* |
| Trang | はい。<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng. Em cố!)* |

---

## Tình huống 7 — Sảnh ryokan · 14:50, hai đoàn cùng đến sớm

*Chuông cửa kêu liên tục — 田中様 đoàn 4 người và 鈴木様 đoàn 6 người bước vào cùng lúc.*

| Vai | Lời thoại |
|---|---|
| Trang | いらっしゃいませ。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Quý khách quá bộ. Em chờ quý khách ạ.)* |
| Tanaka | <ruby>田中<rt>たなか</rt></ruby>です。4<ruby>名<rt>めい</rt></ruby>です。<br>*(Tanaka. 4 người.)* |
| Suzuki | こちらは<ruby>鈴木<rt>すずき</rt></ruby>です。6<ruby>名<rt>めい</rt></ruby>です。<br>*(Tôi Suzuki. 6 người.)* |
| Trang | <ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、こちらにお<ruby>掛<rt>か</rt></ruby>けください。<br>*(Quý khách chờ một chút. Quý khách Tanaka, mời ngồi đây ạ.)* |
| Trang | <ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>はこちらへどうぞ。<ruby>係<rt>かかり</rt></ruby>がすぐ<ruby>参<rt>まい</rt></ruby>ります。<br>*(Quý khách Suzuki sang bên này ạ. Người phụ trách đến ngay.)* |
| Chen | (đến phụ) いらっしゃいませ。<ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>、ご<ruby>案内<rt>あんない</rt></ruby>します。<br>*(Quý khách quá bộ. Quý khách Suzuki, mời theo tôi.)* |
| Trang | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>部屋<rt>へや</rt></ruby>は201<ruby>号室<rt>ごうしつ</rt></ruby>です。エレベーターはあちらです。<br>*(Quý khách Tanaka, phòng 201 ạ. Thang máy bên kia ạ.)* |

---

## Tình huống 8 — Phòng 201 · 15:10, hướng dẫn phòng cho 田中様

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>します。お<ruby>茶<rt>ちゃ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちしました。<br>*(Em xin phép. Em mang trà đến ạ.)* |
| Tanaka | ありがとう。<ruby>夕食<rt>ゆうしょく</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>?<br>*(Cảm ơn. Tối ăn mấy giờ?)* |
| Trang | お<ruby>夕食<rt>ゆうしょく</rt></ruby>は18<ruby>時<rt>じ</rt></ruby>から、こちらのお<ruby>部屋<rt>へや</rt></ruby>でお<ruby>出<rt>だ</rt></ruby> しいたします。<br>*(Bữa tối từ 6h ạ, em phục vụ tại chính phòng này.)* |
| Tanaka | お<ruby>風呂<rt>ふろ</rt></ruby>は?<br>*(Tắm onsen thì?)* |
| Trang | <ruby>大浴場<rt>だいよくじょう</rt></ruby>は1<ruby>階<rt>かい</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>5<ruby>時<rt>じ</rt></ruby>から<ruby>夜<rt>よる</rt></ruby>11<ruby>時<rt>じ</rt></ruby>までです。<br>*(Phòng tắm lớn ở tầng 1, từ 5h sáng đến 11h tối ạ.)* |
| Tanaka | <ruby>浴衣<rt>ゆかた</rt></ruby>のサイズが<ruby>合<rt>あ</rt></ruby>わないかも…<br>*(Yukata không vừa size hay sao đó…)* |
| Trang | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。サイズを<ruby>交換<rt>こうかん</rt></ruby>いたします。SかLか、お<ruby>知<rt>し</rt></ruby>らせください。<br>*(Em xin lỗi ạ. Em đổi size cho ạ. Quý khách cho biết S hay L ạ.)* |
| Tanaka | Lで<ruby>2着<rt>にちゃく</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>い。<br>*(L, hai bộ nhé.)* |
| Trang | はい、すぐお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Vâng, em mang ngay ạ.)* |

---

## Tình huống 9 — Hành lang · 16:30, Trang nói với bếp về phần ăn thêm

*田中様 nhờ thêm 1 phần ăn cho cháu nhỏ — Trang chạy xuống bếp.*

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>厨房<rt>ちゅうぼう</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>から、お<ruby>子様<rt>こさま</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>1<ruby>食<rt>しょく</rt></ruby><ruby>追加<rt>ついか</rt></ruby>のご<ruby>希望<rt>きぼう</rt></ruby>です。<br>*(Bếp ơi, em xin phép. Quý khách Tanaka muốn thêm 1 phần ăn trẻ em ạ.)* |
| 板長 | <ruby>何歳<rt>なんさい</rt></ruby>のお<ruby>子<rt>こ</rt></ruby>さま?<br>*(Bé mấy tuổi?)* |
| Trang | 5<ruby>歳<rt>さい</rt></ruby>です。<br>*(5 tuổi ạ.)* |
| 板長 | <ruby>分<rt>わ</rt></ruby>かった。エビとかアレルギーは?<br>*(Hiểu. Tôm có dị ứng gì không?)* |
| Trang | あ、<ruby>聞<rt>き</rt></ruby>いていません。<ruby>確認<rt>かくにん</rt></ruby>してきます。<br>*(À, em chưa hỏi ạ. Em đi xác nhận.)* |
| 板長 | お<ruby>願<rt>ねが</rt></ruby>い。アレルギーは<ruby>大事<rt>だいじ</rt></ruby>だから、<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Nhờ. Dị ứng quan trọng, phải hỏi nhé.)* |
| Trang | はい、すみません、すぐ<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Vâng, em xin lỗi, em quay lại ngay.)* |

---

## Tình huống 10 — Phòng 201 · 16:40, xác nhận dị ứng

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>追加<rt>ついか</rt></ruby>のお<ruby>子様<rt>こさま</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>の<ruby>件<rt>けん</rt></ruby>です。<br>*(Em xin phép. Về phần ăn trẻ em thêm ạ.)* |
| Tanaka | はい。<br>*(Vâng.)* |
| Trang | アレルギーはございますか?<br>*(Bé có dị ứng gì không ạ?)* |
| Tanaka | あ、<ruby>卵<rt>たまご</rt></ruby>がダメなんです。<br>*(À, không ăn được trứng.)* |
| Trang | <ruby>卵<rt>たまご</rt></ruby>ですね。<ruby>確認<rt>かくにん</rt></ruby>いたしました。<ruby>厨房<rt>ちゅうぼう</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Trứng phải không ạ. Em đã xác nhận. Em báo bếp ạ.)* |
| Tanaka | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Nhờ em. Cảm ơn nhiều.)* |
| Trang | とんでもないです。<ruby>他<rt>ほか</rt></ruby>にご<ruby>要望<rt>ようぼう</rt></ruby>はございませんか?<br>*(Dạ không dám. Quý khách cần gì khác không ạ?)* |
| Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。ありがとう。<br>*(Ổn rồi. Cảm ơn.)* |

---

## Tình huống 11 — Hành lang · 18:30, Trang dọn món bưng bê dồn dập

| Vai | Lời thoại |
|---|---|
| Chen | チャンちゃん、201に<ruby>先付<rt>さきづけ</rt></ruby>4<ruby>人前<rt>にんまえ</rt></ruby>、<ruby>運<rt>はこ</rt></ruby>べる?<br>*(Trang, mang sakizuke 4 phần cho 201 được không?)* |
| Trang | はい、すぐ<ruby>運<rt>はこ</rt></ruby>びます。<br>*(Vâng, em mang ngay.)* |
| Chen | お<ruby>子様<rt>こさま</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>は<ruby>卵<rt>たまご</rt></ruby>なしね。<ruby>板長<rt>いたちょう</rt></ruby>がもう<ruby>準備<rt>じゅんび</rt></ruby>した。<br>*(Phần trẻ em không trứng. Bếp trưởng làm sẵn rồi.)* |
| Trang | はい、<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, em đã xác nhận.)* |
| Chen | <ruby>転<rt>ころ</rt></ruby>ばないでね。お<ruby>盆<rt>ぼん</rt></ruby>はゆっくりでもいい、<ruby>落<rt>お</rt></ruby>とさないことが<ruby>一番<rt>いちばん</rt></ruby>。<br>*(Đừng ngã. Khay thì chậm cũng được, không làm rớt là trên hết.)* |
| Trang | はい、ゆっくり、<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Vâng, từ từ, cẩn thận.)* |
| Chen | そうそう。<br>*(Đúng đó.)* |

---

## Tình huống 12 — Văn phòng nhỏ · 22:00, 女将 tổng kết ngày cao điểm

| Vai | Lời thoại |
|---|---|
| Okami | みなさん、<ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả rồi.)* |
| Okami | チャンさん、はじめての<ruby>満室<rt>まんしつ</rt></ruby>はどうでしたか?<br>*(Trang, lần đầu kín phòng thế nào?)* |
| Trang | <ruby>大変<rt>たいへん</rt></ruby>でした…が、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vất ạ… nhưng em học được nhiều.)* |
| Okami | アレルギーの<ruby>確認<rt>かくにん</rt></ruby>、よくできました。<ruby>大事<rt>だいじ</rt></ruby>なことです。<br>*(Em hỏi dị ứng tốt lắm. Việc rất quan trọng.)* |
| Chen | チャンちゃん、<ruby>走<rt>はし</rt></ruby>るスピードも<ruby>上<rt>あ</rt></ruby>がりました。<br>*(Trang chạy cũng nhanh hơn.)* |
| Trang | パクさんとチェンさんに<ruby>助<rt>たす</rt></ruby>けてもらいました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Em được anh Park và chị Chen giúp. Cảm ơn ạ.)* |
| Okami | お<ruby>盆<rt>ぼん</rt></ruby>はあと<ruby>六日<rt>むいか</rt></ruby>。<ruby>水<rt>みず</rt></ruby>をよく<ruby>飲<rt>の</rt></ruby>んで、<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>てね。<br>*(Obon còn 6 ngày. Uống nước, ngủ sớm nhé.)* |
| Trang | はい、おやすみなさい。<br>*(Vâng, chúc cả nhà ngủ ngon.)* |

---

## Tình huống 13 — Phòng ký túc · 23:00, gọi điện về Huế

> Cảnh tiếng Việt — Trang gọi mẹ qua Messenger.

| Vai | Lời thoại |
|---|---|
| Mẹ | A lô con! Sao tối nay gọi muộn vậy? |
| Trang | Mẹ ơi, hôm nay con mệt rã rời. Bên này có lễ お盆 (Obon) — giống Vu Lan của mình ấy, dân Nhật về quê chơi đông lắm. Ryokan kín phòng cả tuần. |
| Mẹ | Trời, vậy con làm có nổi không? |
| Trang | Có chứ mẹ. Hôm nay con đón 17 khách trên tầng 2 với chị Chen người Trung Quốc và anh Park người Hàn. Anh Park còn chạy qua phụ con trải futon nữa! |
| Mẹ | Trời ơi đoàn kết quá. Ăn uống đầy đủ chưa con? |
| Trang | Đầy đủ mẹ. Hôm nay con học được mẫu câu xác nhận アレルギー (dị ứng) — có bé 5 tuổi không ăn trứng. Con đã hỏi mẹ bé bằng tiếng Nhật rồi báo bếp. Okami khen con đó! |
| Mẹ | Con gái giỏi quá. Còn tiền thưởng お盆 không? |
| Trang | Có mẹ, qua tuần này con chuyển về cho mẹ nha. Mẹ giữ giùm con để sang năm thi N3. |
| Mẹ | Ừ, mẹ giữ cho. Mai nhớ ăn sáng nha con. |
| Trang | Dạ con yêu mẹ. Con đi ngủ đây! |

---

## Đọng lại chương 9

Trang trải qua ngày đầu **満室** thực sự ở ryokan Kyoto. Học cách phối hợp với sempai Chen và Park để **分担** (chia việc) dọn 4 phòng trong khung giờ rất gắt — **20分/部屋**, biết đếm **〜名様・〜食・〜着・〜枚** chuẩn cho khay/yukata/phần ăn. Khi 2 đoàn cùng đến, dùng "**少々お待ちください**" + "**こちらにお掛けください**" để giữ khách bình tĩnh. Học xác nhận **アレルギー** trước khi báo bếp — **板長** dạy "アレルギーは必ず聞く". Khi báo cáo **女将**, cô đã quen cấu trúc [thời gian] + [tình trạng phòng] + [dự kiến hoàn thành]. Quan trọng nhất: học cách xin trợ giúp ("**手伝っていただけませんか**") khi quá tải, và cảm ơn đúng cách ("**助かります**").

> Từ vựng & mẫu câu chương này: 満室・予約表・名様・食・着・枚・分担・先付・お子様料理・アレルギー・追加・確認・少々お待ちください・お掛けください・助かります・順調・手伝う・板長・厨房

---

## Bí quyết chương

- **〜名様** đếm khách (kính ngữ thay 〜人), **〜食** đếm phần ăn, **〜着** đếm bộ yukata, **〜枚** đếm khăn — Obon nhớ chính xác để bếp/phòng tránh sai sót.
- Khi 2 đoàn cùng check-in: dùng **少々お待ちください** + **こちらにお掛けください** để 1 nhân viên giữ chân đoàn này, đồng nghiệp đến phụ đoàn kia.
- **アレルギー** là từ đầu tiên phải hỏi khi thêm phần ăn — bếp trưởng (板長) Nhật coi đây là kỷ luật tuyệt đối.
- Báo cáo 女将 cấu trúc cao điểm: [tầng] + [phòng nào xong/chưa xong] + [ai đang giúp] + [dự kiến].
- "**助かります**" (giúp em quá) là cách cảm ơn ngang hàng sempai rất tự nhiên — lịch sự nhưng không quá cứng.
- Obon ryokan = tiền thưởng お盆手当. Quản lý chi tiêu để tiết kiệm cho thi N3.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| お盆 | おぼん | BÀN | lễ Vu Lan Nhật |
| 満室 | まんしつ | MÃN THẤT | kín phòng |
| 団体 | だんたい | ĐOÀN THỂ | đoàn khách |
| 予約表 | よやくひょう | DỰ ƯỚC BIỂU | bảng đặt phòng |
| 号室 | ごうしつ | HIỆU THẤT | số phòng |
| 名様 | めいさま | DANH DẠNG | (đếm khách, kính ngữ) |
| 食 | しょく | THỰC | (đếm phần ăn) |
| 着 | ちゃく | TRƯỚC | (đếm bộ áo) |
| 枚 | まい | MAI | (đếm vật phẳng) |
| 分担 | ぶんたん | PHÂN ĐẢM | chia việc |
| 布団 | ふとん | BỐ ĐOÀN | nệm trải sàn |
| 浴衣 | ゆかた | DỤC Y | yukata |
| 大浴場 | だいよくじょう | ĐẠI DỤC TRƯỜNG | phòng tắm onsen lớn |
| 先付 | さきづけ | TIÊN PHÓ | món khai vị kaiseki |
| お子様料理 | おこさまりょうり | TỬ DẠNG LIỆU LÝ | phần ăn trẻ em |
| アレルギー | — | — | dị ứng |
| 追加 | ついか | TRUY GIA | thêm vào |
| 卵 | たまご | NOÃN | trứng |
| 厨房 | ちゅうぼう | TRÙ PHÒNG | bếp |
| 板長 | いたちょう | BẢN TRƯỞNG | bếp trưởng |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 要望 | ようぼう | YÊU VỌNG | yêu cầu |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 順調 | じゅんちょう | THUẬN ĐIỆU | suôn sẻ |
| 休憩 | きゅうけい | HƯU KHẾ | nghỉ giữa ca |
| 間に合う | まにあう | GIAN HỢP | kịp giờ |
| 交換 | こうかん | GIAO HOÁN | đổi |
| 係 | かかり | HỆ | người phụ trách |
| 助かる | たすかる | TRỢ | được giúp, đỡ quá |
| 手伝う | てつだう | THỦ TRUYỀN | giúp |
| 女将 | おかみ | NỮ TƯỚNG | bà chủ ryokan |
| 同じ | おなじ | ĐỒNG | giống nhau |
| 落とす | おとす | LẠC | làm rơi |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000010, 800000046, NULL, 'markdown_book', 'T10. Mùa đông tuyết — giới thiệu các bồn 温泉 (冬の温泉案内)', '# Sách thực tập sinh khách sạn · T10. Mùa đông tuyết — giới thiệu các bồn 温泉 (冬の温泉案内)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N5→N4). Học các mẫu hội thoại tiếng Nhật mùa đông onsen: giới thiệu loại bồn (内湯・露天・貸切), hướng dẫn quy tắc tắm, cảnh báo nhiệt độ, dặn khách lớn tuổi cẩn thận, xử lý khăn — yukata cho mùa lạnh, hỏi khách thấy bồn nào ưa nhất.

---

## Bối cảnh

Tháng 1 năm 2026. Tuyết đã rơi 3 ngày liên tiếp ở Kyoto. Ryokan đón nhiều khách đi 雪見温泉 (ngắm tuyết trong bồn lộ thiên). Trang đã làm 10 tháng, tiếng Nhật ổn N4. **女将** giao cô nhiệm vụ mới: dẫn khách giới thiệu 3 bồn 温泉 của ryokan (内湯 — bồn trong nhà, 露天風呂 — bồn lộ thiên, 貸切風呂 — bồn riêng đặt theo giờ). Trang phải học từ chuyên ngành onsen — 泉質 (chất nước), 効能 (công dụng), 入浴<ruby>注意<rt>ちゅうい</rt></ruby> (lưu ý khi tắm). Chương này tập trung mẫu câu giới thiệu nhẹ nhàng + cảnh báo trượt tuyết.

---

## Tình huống 1 — Văn phòng nhỏ · 7:00, 女将 dạy Trang về 3 bồn

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>今日<rt>きょう</rt></ruby>から「<ruby>温泉<rt>おんせん</rt></ruby>ご<ruby>案内<rt>あんない</rt></ruby>」もお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trang, từ hôm nay nhờ em phụ trách thêm "giới thiệu onsen".)* |
| Trang | はい、<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng, em sẽ cố ạ!)* |
| Okami | うちのお<ruby>風呂<rt>ふろ</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>内湯<rt>うちゆ</rt></ruby>、<ruby>露天風呂<rt>ろてんぶろ</rt></ruby>、<ruby>貸切風呂<rt>かしきりぶろ</rt></ruby>。<br>*(Ryokan có 3 bồn. Bồn trong nhà, bồn lộ thiên, và bồn riêng.)* |
| Trang | <ruby>貸切<rt>かしきり</rt></ruby>…?<br>*(Kashikiri…?)* |
| Okami | お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>一<rt>ひと</rt></ruby>つの<ruby>家族<rt>かぞく</rt></ruby>で<ruby>独占<rt>どくせん</rt></ruby>するお<ruby>風呂<rt>ふろ</rt></ruby>。50<ruby>分<rt>ぷん</rt></ruby><ruby>予約制<rt>よやくせい</rt></ruby>。<br>*(Bồn cho riêng một gia đình. Đặt trước 50 phút.)* |
| Trang | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>料金<rt>りょうきん</rt></ruby>は?<br>*(À, em hiểu rồi. Phí thế nào ạ?)* |
| Okami | <ruby>一<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>3,000<ruby>円<rt>えん</rt></ruby>。<ruby>宿泊客<rt>しゅくはくきゃく</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>です。<br>*(1 lần 3,000 yên. Dành riêng khách lưu trú.)* |
| Trang | はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em nhớ ạ.)* |

---

## Tình huống 2 — Phòng nghỉ nhân viên · 7:30, Chen dạy Trang về 泉質

*Chen mở tấm bảng nhỏ in 泉質 ryokan — natri-bicarbonate, pH 7.8.*

| Vai | Lời thoại |
|---|---|
| Chen | チャンちゃん、うちの<ruby>泉質<rt>せんしつ</rt></ruby>は「<ruby>炭酸水素塩泉<rt>たんさんすいそえんせん</rt></ruby>」。<br>*(Trang, chất nước onsen ryokan mình là "natri-bicarbonate".)* |
| Trang | …<ruby>長<rt>なが</rt></ruby>い<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Từ dài quá ạ.)* |
| Chen | お<ruby>客様<rt>きゃくさま</rt></ruby>には「お<ruby>肌<rt>はだ</rt></ruby>がツルツルになる<ruby>湯<rt>ゆ</rt></ruby>」と<ruby>簡単<rt>かんたん</rt></ruby>に<ruby>言<rt>い</rt></ruby>えばOK。<br>*(Với khách chỉ cần nói đơn giản "nước làm da mịn" là được.)* |
| Trang | あ、<ruby>美肌<rt>びはだ</rt></ruby>の<ruby>湯<rt>ゆ</rt></ruby>ですね。<br>*(À, "Nước đẹp da" phải không.)* |
| Chen | そう。<ruby>効能<rt>こうのう</rt></ruby>は<ruby>神経痛<rt>しんけいつう</rt></ruby>、<ruby>冷<rt>ひ</rt></ruby>え<ruby>性<rt>しょう</rt></ruby>、<ruby>疲労回復<rt>ひろうかいふく</rt></ruby>。<br>*(Công dụng là đau thần kinh, lạnh chân tay, hồi phục mệt.)* |
| Trang | <ruby>冷<rt>ひ</rt></ruby>え<ruby>性<rt>しょう</rt></ruby>?<br>*(Hieshou?)* |
| Chen | <ruby>体<rt>からだ</rt></ruby>がいつも<ruby>冷<rt>つめ</rt></ruby>たい<ruby>人<rt>ひと</rt></ruby>。<ruby>女性<rt>じょせい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<br>*(Người lúc nào cũng lạnh. Phụ nữ nhiều.)* |
| Trang | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>冬<rt>ふゆ</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(À em hiểu rồi. Quan trọng với khách mùa đông.)* |

---

## Tình huống 3 — Sảnh ryokan · 14:30, đón đôi vợ chồng già 田村様

*Tuyết phủ trắng cổng. Bà Sato 72 tuổi, ông Sato 75 tuổi, chống gậy.*

| Vai | Lời thoại |
|---|---|
| Trang | いらっしゃいませ、<ruby>田村<rt>たむら</rt></ruby><ruby>様<rt>さま</rt></ruby>。お<ruby>足元<rt>あしもと</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Quý khách quá bộ, quý khách Sato. Quý khách cẩn thận dưới chân ạ.)* |
| 田村(ông) | <ruby>雪<rt>ゆき</rt></ruby>がすごいね。<br>*(Tuyết dày quá nhỉ.)* |
| Trang | はい、<ruby>三日間<rt>みっかかん</rt></ruby>ずっと<ruby>降<rt>ふ</rt></ruby>っております。<ruby>露天風呂<rt>ろてんぶろ</rt></ruby>から<ruby>雪景色<rt>ゆきげしき</rt></ruby>がきれいですよ。<br>*(Vâng, suốt 3 ngày tuyết rơi ạ. Từ bồn lộ thiên ngắm tuyết rất đẹp ạ.)* |
| 田村(bà) | あら、<ruby>楽<rt>たの</rt></ruby>しみ。<br>*(Ồ, mong quá.)* |
| Trang | お<ruby>荷物<rt>にもつ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちします。お<ruby>部屋<rt>へや</rt></ruby>は305<ruby>号室<rt>ごうしつ</rt></ruby>です。<br>*(Em mang hành lý ạ. Phòng quý khách là 305.)* |
| 田村(ông) | エレベーターは?<br>*(Thang máy ở đâu?)* |
| Trang | あちらでございます。お<ruby>足元<rt>あしもと</rt></ruby>、<ruby>滑<rt>すべ</rt></ruby>りやすいので、ゆっくりどうぞ。<br>*(Bên kia ạ. Sàn dễ trượt, mời quý khách đi từ từ ạ.)* |
| 田村(bà) | ありがとう、<ruby>親切<rt>しんせつ</rt></ruby>ね。<br>*(Cảm ơn em, chu đáo quá.)* |

---

## Tình huống 4 — Phòng 305 · 15:00, Trang giới thiệu 3 bồn cho 田村様

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>茶<rt>ちゃ</rt></ruby>をどうぞ。<ruby>温泉<rt>おんせん</rt></ruby>のご<ruby>案内<rt>あんない</rt></ruby>をいたします。<br>*(Mời trà ạ. Em xin giới thiệu onsen.)* |
| 田村(ông) | はい、お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Ừ, em nói đi.)* |
| Trang | お<ruby>風呂<rt>ふろ</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つございます。<ruby>内湯<rt>うちゆ</rt></ruby>、<ruby>露天風呂<rt>ろてんぶろ</rt></ruby>、<ruby>貸切風呂<rt>かしきりぶろ</rt></ruby>です。<br>*(Có 3 bồn ạ. Bồn trong, bồn lộ thiên, và bồn riêng.)* |
| 田村(bà) | どこが<ruby>一番<rt>いちばん</rt></ruby><ruby>暖<rt>あたた</rt></ruby>かい?<br>*(Bồn nào ấm nhất?)* |
| Trang | <ruby>内湯<rt>うちゆ</rt></ruby>が42<ruby>度<rt>ど</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>熱<rt>あつ</rt></ruby>めです。<ruby>露天<rt>ろてん</rt></ruby>は40<ruby>度<rt>ど</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しぬるめです。<br>*(Bồn trong 42 độ, nóng nhất. Bồn lộ thiên 40 độ, hơi ấm hơn.)* |
| 田村(ông) | <ruby>露天<rt>ろてん</rt></ruby>がいいかな。<ruby>雪<rt>ゆき</rt></ruby>を<ruby>見<rt>み</rt></ruby>たい。<br>*(Bồn lộ thiên hợp nhỉ. Tôi muốn ngắm tuyết.)* |
| Trang | はい。<ruby>露天<rt>ろてん</rt></ruby>へ<ruby>行<rt>い</rt></ruby>くまで<ruby>廊下<rt>ろうか</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>寒<rt>さむ</rt></ruby>いので、<ruby>羽織<rt>はお</rt></ruby>りをお<ruby>使<rt>つか</rt></ruby>いください。<br>*(Vâng. Hành lang ra bồn lộ thiên hơi lạnh, mời quý khách dùng áo khoác ngoài ạ.)* |
| 田村(bà) | <ruby>貸切風呂<rt>かしきりぶろ</rt></ruby>は<ruby>予約<rt>よやく</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>?<br>*(Bồn riêng cần đặt à?)* |
| Trang | はい、50<ruby>分<rt>ぷん</rt></ruby>3,000<ruby>円<rt>えん</rt></ruby>です。お<ruby>取<rt>と</rt></ruby>りしましょうか?<br>*(Vâng, 50 phút 3,000 yên ạ. Em đặt cho ạ?)* |
| 田村(ông) | じゃ、<ruby>夜<rt>よる</rt></ruby>9<ruby>時<rt>じ</rt></ruby>からお<ruby>願<rt>ねが</rt></ruby>い。<br>*(Vậy đặt từ 9 giờ tối nhé.)* |
| Trang | かしこまりました。21<ruby>時<rt>じ</rt></ruby>から21<ruby>時<rt>じ</rt></ruby>50<ruby>分<rt>ぷん</rt></ruby>でございますね。<br>*(Em hiểu ạ. Từ 21h đến 21h50 ạ.)* |

---

## Tình huống 5 — Phòng 305 · 15:10, hướng dẫn quy tắc tắm onsen

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>初<rt>はじ</rt></ruby>めての<ruby>温泉<rt>おんせん</rt></ruby>でしたら、<ruby>少<rt>すこ</rt></ruby>しご<ruby>案内<rt>あんない</rt></ruby>させてください。<br>*(Nếu lần đầu vào onsen, em xin phép giới thiệu chút ạ.)* |
| 田村(bà) | お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Em nói đi.)* |
| Trang | お<ruby>湯<rt>ゆ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>体<rt>からだ</rt></ruby>をよく<ruby>洗<rt>あら</rt></ruby>ってください。<br>*(Trước khi vào bồn, mời quý khách rửa người sạch ạ.)* |
| 田村(ông) | はい。<br>*(Ừ.)* |
| Trang | タオルはお<ruby>湯<rt>ゆ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れないでください。<ruby>頭<rt>あたま</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Khăn không cho xuống nước ạ. Để lên đầu cũng được ạ.)* |
| 田村(bà) | <ruby>長<rt>なが</rt></ruby>く<ruby>入<rt>はい</rt></ruby>っても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Ngâm lâu được không?)* |
| Trang | 10<ruby>分<rt>ぷん</rt></ruby>ぐらいで<ruby>一<rt>いっ</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>休<rt>やす</rt></ruby>んでください。<ruby>水<rt>みず</rt></ruby>もよく<ruby>飲<rt>の</rt></ruby>んでくださいね。<br>*(Khoảng 10 phút thì nghỉ một lần ạ. Mời quý khách uống nước nhiều ạ.)* |
| 田村(ông) | <ruby>心臓<rt>しんぞう</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いんだけど…<br>*(Tim tôi yếu…)* |
| Trang | では、ぬるめの<ruby>露天<rt>ろてん</rt></ruby>がよろしいかと<ruby>存<rt>ぞん</rt></ruby>じます。<ruby>長湯<rt>ながゆ</rt></ruby>はお<ruby>控<rt>ひか</rt></ruby>えくださいませ。<br>*(Vậy bồn lộ thiên ấm hơn sẽ hợp ạ. Quý khách tránh ngâm lâu ạ.)* |

---

## Tình huống 6 — Hành lang · 17:00, Chen kiểm tra kiến thức Trang

| Vai | Lời thoại |
|---|---|
| Chen | チャンちゃん、305の<ruby>案内<rt>あんない</rt></ruby>はどうだった?<br>*(Trang, giới thiệu phòng 305 sao rồi?)* |
| Trang | <ruby>貸切<rt>かしきり</rt></ruby>を<ruby>夜<rt>よる</rt></ruby>9<ruby>時<rt>じ</rt></ruby>から<ruby>予約<rt>よやく</rt></ruby>しました。ご<ruby>主人<rt>しゅじん</rt></ruby>は<ruby>心臓<rt>しんぞう</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いそうです。<br>*(Em đã đặt bồn riêng từ 9h. Nghe nói chú yếu tim.)* |
| Chen | あ、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>。<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>伝<rt>つた</rt></ruby>えた?<br>*(À, thông tin quan trọng. Báo Okami chưa?)* |
| Trang | あ、まだです。すぐ<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Á, chưa ạ. Em báo ngay.)* |
| Chen | お<ruby>年寄<rt>としよ</rt></ruby>りで<ruby>心臓<rt>しんぞう</rt></ruby><ruby>弱<rt>よわ</rt></ruby>い<ruby>場合<rt>ばあい</rt></ruby>、<ruby>長湯<rt>ながゆ</rt></ruby>と<ruby>急<rt>きゅう</rt></ruby>な<ruby>温度差<rt>おんどさ</rt></ruby>が<ruby>危<rt>あぶ</rt></ruby>ない。<ruby>覚<rt>おぼ</rt></ruby>えておいて。<br>*(Người lớn tuổi tim yếu, ngâm lâu và sốc nhiệt nguy hiểm. Nhớ nhé.)* |
| Trang | はい、ヒートショックですね。<br>*(Vâng, sốc nhiệt ạ.)* |
| Chen | そう、よく<ruby>知<rt>し</rt></ruby>ってるね。<br>*(Đúng, em biết nhỉ.)* |
| Trang | <ruby>本<rt>ほん</rt></ruby>で<ruby>読<rt>よ</rt></ruby>みました。<br>*(Em đọc trong sách ạ.)* |

---

## Tình huống 7 — Văn phòng nhỏ · 17:20, báo cáo 女将

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。305の<ruby>田村<rt>たむら</rt></ruby><ruby>様<rt>さま</rt></ruby>のことで<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Thưa Okami, em xin báo cáo về quý khách Sato phòng 305.)* |
| Okami | はい。<br>*(Ừ.)* |
| Trang | ご<ruby>主人様<rt>しゅじんさま</rt></ruby>が<ruby>心臓<rt>しんぞう</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いとおっしゃいました。<ruby>長湯<rt>ながゆ</rt></ruby>は<ruby>控<rt>ひか</rt></ruby>えるようにお<ruby>願<rt>ねが</rt></ruby>いしました。<br>*(Bác trai có nói tim yếu. Em đã xin bác tránh ngâm lâu.)* |
| Okami | よく<ruby>気<rt>き</rt></ruby>がついたね。<br>*(Em tinh ý đấy.)* |
| Trang | <ruby>貸切<rt>かしきり</rt></ruby>は21<ruby>時<rt>じ</rt></ruby>から21<ruby>時<rt>じ</rt></ruby>50<ruby>分<rt>ぷん</rt></ruby>で<ruby>予約<rt>よやく</rt></ruby>しました。<br>*(Em đã đặt bồn riêng 21h-21h50.)* |
| Okami | <ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くね。ヒートショックに<ruby>気<rt>き</rt></ruby>をつけて、<ruby>脱衣所<rt>だついじょ</rt></ruby>に<ruby>暖房<rt>だんぼう</rt></ruby>を<ruby>強<rt>つよ</rt></ruby>めにしておいて。<br>*(Khuya nhỉ. Cẩn thận sốc nhiệt, bật sưởi mạnh phòng thay đồ.)* |
| Trang | はい、わかりました。<ruby>夕食後<rt>ゆうしょくご</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng em rõ. Sau bữa tối em sẽ kiểm tra.)* |

---

## Tình huống 8 — Phòng thay đồ · 20:50, Trang chuẩn bị 貸切

| Vai | Lời thoại |
|---|---|
| Trang | (kiểm tra một mình) <ruby>暖房<rt>だんぼう</rt></ruby>、24<ruby>度<rt>ど</rt></ruby>でセット。タオル<ruby>四枚<rt>よんまい</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Sưởi đã đặt 24 độ. 4 cái khăn, ổn.)* |
| Trang | <ruby>水<rt>みず</rt></ruby>のボトル<ruby>二本<rt>にほん</rt></ruby>、<ruby>椅子<rt>いす</rt></ruby>も<ruby>用意<rt>ようい</rt></ruby>。<br>*(2 chai nước, ghế cũng sẵn sàng.)* |
| Park | (đi qua) チャンちゃん、<ruby>準備<rt>じゅんび</rt></ruby>OK?<br>*(Trang, chuẩn bị xong chưa?)* |
| Trang | はい、もうすぐ<ruby>田村<rt>たむら</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>来<rt>こ</rt></ruby>られます。<br>*(Vâng, quý khách Sato sắp đến.)* |
| Park | <ruby>外<rt>そと</rt></ruby>は<ruby>氷<rt>こおり</rt></ruby>が<ruby>張<rt>は</rt></ruby>ってるから、<ruby>露天<rt>ろてん</rt></ruby>の<ruby>足元<rt>あしもと</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>ね。<br>*(Bên ngoài đóng băng, lưu ý sàn bồn lộ thiên nhé.)* |
| Trang | はい、<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めマットを<ruby>追加<rt>ついか</rt></ruby>しました。<br>*(Vâng, em đã thêm thảm chống trượt.)* |
| Park | さすが。<br>*(Giỏi nhỉ.)* |

---

## Tình huống 9 — Cửa 貸切 · 21:00, đón 田村様

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>田村<rt>たむら</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>貸切風呂<rt>かしきりぶろ</rt></ruby>のご<ruby>案内<rt>あんない</rt></ruby>です。<br>*(Quý khách Sato, em xin dẫn đến bồn riêng ạ.)* |
| 田村(ông) | はい。<ruby>寒<rt>さむ</rt></ruby>いね、<ruby>外<rt>そと</rt></ruby>。<br>*(Vâng. Bên ngoài lạnh nhỉ.)* |
| Trang | <ruby>脱衣所<rt>だついじょ</rt></ruby>に<ruby>暖房<rt>だんぼう</rt></ruby>を<ruby>入<rt>い</rt></ruby>れております。<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めマットもございます。<br>*(Em đã bật sưởi phòng thay đồ. Có thảm chống trượt ạ.)* |
| 田村(bà) | お<ruby>水<rt>みず</rt></ruby>もある、ありがとう。<br>*(Có cả nước, cảm ơn em.)* |
| Trang | <ruby>50分<rt>ごじゅっぷん</rt></ruby><ruby>後<rt>ご</rt></ruby>、お<ruby>呼<rt>よ</rt></ruby>びにまいります。<ruby>御用<rt>ごよう</rt></ruby>があれば、こちらのボタンを<ruby>押<rt>お</rt></ruby>してください。<br>*(50 phút nữa em đến gọi ạ. Cần gì quý khách bấm nút này ạ.)* |
| 田村(ông) | はい。<br>*(Ừ.)* |
| Trang | <ruby>長湯<rt>ながゆ</rt></ruby>はくれぐれもお<ruby>気<rt>き</rt></ruby>をつけください。<ruby>10分<rt>じゅっぷん</rt></ruby>で<ruby>一<rt>いっ</rt></ruby><ruby>度<rt>ど</rt></ruby>お<ruby>休<rt>やす</rt></ruby>みくださいね。<br>*(Quý khách nhớ tránh ngâm lâu ạ. Cứ 10 phút nghỉ một lần ạ.)* |
| 田村(bà) | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, hiểu rồi.)* |

---

## Tình huống 10 — Sảnh ryokan · 22:00, đón gia đình trẻ — câu hỏi onsen

*Gia đình 4 người (bố mẹ + 2 con nhỏ 8 và 5 tuổi) check-in muộn vì tuyết chậm tàu.*

| Vai | Lời thoại |
|---|---|
| 父 | すみません、お<ruby>風呂<rt>ふろ</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>まで?<br>*(Xin lỗi, onsen mấy giờ đóng?)* |
| Trang | <ruby>大浴場<rt>だいよくじょう</rt></ruby>は<ruby>夜<rt>よる</rt></ruby>11<ruby>時<rt>じ</rt></ruby>まででございます。<br>*(Phòng tắm lớn đến 11h tối ạ.)* |
| 母 | <ruby>子<rt>こ</rt></ruby>どもも<ruby>入<rt>はい</rt></ruby>れますか?<br>*(Trẻ em vào được không?)* |
| Trang | はい、もちろん。<ruby>男湯<rt>おとこゆ</rt></ruby>・<ruby>女湯<rt>おんなゆ</rt></ruby>とも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。お<ruby>子様<rt>こさま</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>椅子<rt>いす</rt></ruby>もございます。<br>*(Vâng, dĩ nhiên. Cả bồn nam và bồn nữ đều được. Có ghế trẻ em ạ.)* |
| 父 | <ruby>家族<rt>かぞく</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りたいんだけど…<br>*(Tôi muốn cả gia đình vào cùng…)* |
| Trang | では、<ruby>貸切風呂<rt>かしきりぶろ</rt></ruby>はいかがでしょうか?50<ruby>分<rt>ぷん</rt></ruby>3,000<ruby>円<rt>えん</rt></ruby>、ご<ruby>家族<rt>かぞく</rt></ruby>4<ruby>名様<rt>めいさま</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れます。<br>*(Vậy bồn riêng được không ạ? 50 phút 3,000 yên, gia đình 4 vị vào cùng ạ.)* |
| 母 | いいね!<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Hay đấy! Sáng mai nhé.)* |
| Trang | かしこまりました。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>7<ruby>時<rt>じ</rt></ruby>はいかがですか?<br>*(Em hiểu ạ. Sáng mai 7h được không ạ?)* |

---

## Tình huống 11 — Bồn lộ thiên · 21:55, gọi 田村様 hết giờ

| Vai | Lời thoại |
|---|---|
| Trang | (gõ cửa nhẹ) <ruby>田村<rt>たむら</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>です。お<ruby>加減<rt>かげん</rt></ruby>はいかがですか?<br>*(Quý khách Sato, hết giờ ạ. Quý khách thấy thế nào ạ?)* |
| 田村(bà) | <ruby>最高<rt>さいこう</rt></ruby>でした!<ruby>雪<rt>ゆき</rt></ruby>がきれいでね。<br>*(Tuyệt vời! Tuyết đẹp lắm.)* |
| 田村(ông) | <ruby>体<rt>からだ</rt></ruby>が<ruby>温<rt>あたた</rt></ruby>まった。<ruby>長湯<rt>ながゆ</rt></ruby>もしなかったよ。<br>*(Người ấm hẳn. Cũng không ngâm lâu đâu.)* |
| Trang | よかったです。<ruby>水<rt>みず</rt></ruby>を<ruby>飲<rt>の</rt></ruby>まれましたか?<br>*(May quá ạ. Quý khách đã uống nước chưa ạ?)* |
| 田村(bà) | <ruby>飲<rt>の</rt></ruby>みました。ありがとう。<br>*(Uống rồi. Cảm ơn.)* |
| Trang | お<ruby>部屋<rt>へや</rt></ruby>までお<ruby>送<rt>おく</rt></ruby>りいたします。<ruby>滑<rt>すべ</rt></ruby>りますので、ゆっくり<ruby>歩<rt>ある</rt></ruby>きましょう。<br>*(Em đưa quý khách về phòng ạ. Trơn, mình đi từ từ ạ.)* |
| 田村(ông) | チャンさんは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くね。<br>*(Trang chu đáo thật.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Em không dám ạ.)* |

---

## Tình huống 12 — Văn phòng nhỏ · 23:00, 女将 dạy Trang về 効能

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>田村<rt>たむら</rt></ruby><ruby>様<rt>さま</rt></ruby>から「<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>く<ruby>仲居<rt>なかい</rt></ruby>さん」とお<ruby>褒<rt>ほ</rt></ruby>めの<ruby>言葉<rt>ことば</rt></ruby>。<br>*(Trang, vất vả rồi. Quý khách Sato khen "nakai chu đáo".)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>ですか?ありがとうございます。<br>*(Thật ạ? Em cảm ơn ạ.)* |
| Okami | あなた、<ruby>泉質<rt>せんしつ</rt></ruby>と<ruby>効能<rt>こうのう</rt></ruby>もちゃんと<ruby>覚<rt>おぼ</rt></ruby>えたね。<br>*(Em cũng nhớ rõ chất nước và công dụng.)* |
| Trang | はい、<ruby>炭酸水素塩泉<rt>たんさんすいそえんせん</rt></ruby>、<ruby>美肌<rt>びはだ</rt></ruby>の<ruby>湯<rt>ゆ</rt></ruby>、<ruby>神経痛<rt>しんけいつう</rt></ruby>・<ruby>冷<rt>ひ</rt></ruby>え<ruby>性<rt>しょう</rt></ruby>・<ruby>疲労回復<rt>ひろうかいふく</rt></ruby>です。<br>*(Vâng, natri-bicarbonate, nước đẹp da, đau dây thần kinh, lạnh chân tay, hồi phục mệt.)* |
| Okami | <ruby>立派<rt>りっぱ</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>もお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから、よく<ruby>休<rt>やす</rt></ruby>んでね。<br>*(Tốt lắm. Mai cũng đông khách, em nghỉ kỹ nhé.)* |
| Trang | はい、おやすみなさい。<br>*(Vâng, chúc Okami ngủ ngon.)* |

---

## Tình huống 13 — Phòng ký túc · 23:30, gọi điện về Huế

> Cảnh tiếng Việt — Trang gọi em gái 17 tuổi đang ôn thi đại học.

| Vai | Lời thoại |
|---|---|
| Em gái | Chị Trang, sao chị gọi muộn vậy? Có tuyết hả? |
| Trang | Ờ em, Kyoto tuyết trắng xoá luôn. Chị mới dẫn 2 ông bà già 70 tuổi vào tắm 露天風呂 — bồn lộ thiên có thể ngắm tuyết. Đẹp lắm em! |
| Em gái | Tắm ngoài trời lạnh không chị? |
| Trang | Trong nước 40 độ ấm lắm, nhưng không khí ngoài 0 độ. Mà tắm onsen phức tạp lắm — phải rửa sạch trước, khăn không được nhúng vào nước. Người Nhật gọi là 入浴<ruby>注意</ruby>. |
| Em gái | Hihi nghe lạ ghê. Em thi xong nhất định qua chị chơi! |
| Trang | Ờ, qua chị cho tắm 貸切 — bồn riêng. 50 phút 3000 yên, vào cả nhà luôn. |
| Em gái | Eo trời 600 nghìn đồng tắm thôi á? |
| Trang | Mà chị làm 1 ngày là đủ tiền. Hôm nay khách khen chị 気が利く — chu đáo. Okami khen luôn! |
| Em gái | Tự hào chị quá. Em đi học đây. Chị ngủ ngon nha. |
| Trang | Ừ em, học bài giỏi. Yêu em! |

---

## Đọng lại chương 10

Trang nhận trách nhiệm mới — **温泉ご案内**. Học phân biệt **内湯・露天風呂・貸切風呂**, hiểu **泉質** ryokan là **炭酸水素塩泉** với **効能** chính: 神経痛・冷え性・疲労回復. Cô học giới thiệu nhẹ nhàng với khách lớn tuổi, nhấn mạnh quy tắc tắm: **体をよく洗ってから入る**, **タオルをお湯に入れない**, **10分で一度休む**. Đặc biệt: cảnh báo **ヒートショック** (sốc nhiệt) cho khách tim yếu — bật **暖房** phòng thay đồ, đặt **滑り止めマット**, chuẩn bị **水**. Cô đặt **貸切** đúng cấu trúc giờ ("**21時から21時50分まで**"), báo cáo 女将 thông tin sức khoẻ khách kịp thời. Khách khen "**気が利く**" — trưởng thành lớn.

> Từ vựng & mẫu câu chương này: 温泉・内湯・露天風呂・貸切風呂・泉質・効能・美肌の湯・冷え性・神経痛・疲労回復・ヒートショック・暖房・滑り止め・脱衣所・長湯・お控えください・気が利く・恐れ入ります

---

## Bí quyết chương

- **3 loại bồn ryokan**: **内湯** (trong nhà, nóng nhất), **露天風呂** (lộ thiên, ngắm tuyết, ấm hơn), **貸切風呂** (riêng, đặt theo 50 phút, có phí).
- Khách lớn tuổi/tim yếu: nhớ **ヒートショック** = sốc nhiệt giữa phòng lạnh và bồn nóng. Bật sưởi **脱衣所** + dùng thảm chống trượt + nhắc uống nước.
- **泉質** ryokan thường là 1 trong: 炭酸水素塩泉 (đẹp da), 塩化物泉 (giữ ấm), 硫黄泉 (lưu huỳnh, da đau). Nói **效能** dễ hiểu: "お肌がツルツル".
- Quy tắc onsen tóm gọn: **洗ってから入る**・**タオルは入れない**・**10分で休む**・**水を飲む**.
- "**気が利く**" = chu đáo, để ý chi tiết — là lời khen cao nhất Okami dành cho 仲居 trẻ.
- Mùa đông tuyết: ưu tiên dặn **足元注意** (cẩn thận sàn) suốt cuộc dẫn.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 温泉 | おんせん | ÔN TUYỀN | suối nước nóng |
| 内湯 | うちゆ | NỘI THANG | bồn trong nhà |
| 露天風呂 | ろてんぶろ | LỘ THIÊN PHONG LỮ | bồn ngoài trời |
| 貸切風呂 | かしきりぶろ | THẢI THIẾT PHONG LỮ | bồn riêng đặt theo giờ |
| 泉質 | せんしつ | TUYỀN CHẤT | chất nước onsen |
| 炭酸水素塩泉 | たんさんすいそえんせん | THÁN TOAN THUỶ TỐ DIÊM TUYỀN | natri-bicarbonate |
| 美肌の湯 | びはだのゆ | MỸ CƠ THANG | nước đẹp da |
| 効能 | こうのう | HIỆU NĂNG | công dụng |
| 神経痛 | しんけいつう | THẦN KINH THỐNG | đau dây thần kinh |
| 冷え性 | ひえしょう | LÃNH TÍNH | chứng lạnh tay chân |
| 疲労回復 | ひろうかいふく | BÌ LAO HỒI PHỤC | hồi phục mệt mỏi |
| ヒートショック | — | — | sốc nhiệt |
| 暖房 | だんぼう | NOÃN PHÒNG | máy sưởi |
| 脱衣所 | だついじょ | THOÁT Y SỞ | phòng thay đồ |
| 滑り止め | すべりどめ | HOẠT CHỈ | chống trượt |
| 長湯 | ながゆ | TRƯỜNG THANG | ngâm lâu |
| 控える | ひかえる | KHỐNG | hạn chế, tránh |
| 雪景色 | ゆきげしき | TUYẾT CẢNH SẮC | cảnh tuyết |
| 心臓 | しんぞう | TÂM TẠNG | tim |
| 足元 | あしもと | TÚC NGUYÊN | dưới chân |
| 滑る | すべる | HOẠT | trượt |
| 羽織り | はおり | VŨ CHỨC | áo khoác kimono |
| 男湯 | おとこゆ | NAM THANG | bồn nam |
| 女湯 | おんなゆ | NỮ THANG | bồn nữ |
| 予約制 | よやくせい | DỰ ƯỚC CHẾ | chế độ đặt trước |
| 宿泊客 | しゅくはくきゃく | TÚC BẠC KHÁCH | khách lưu trú |
| 専用 | せんよう | CHUYÊN DỤNG | dùng riêng |
| 気が利く | きがきく | KHÍ LỢI | chu đáo, tinh ý |
| 恐れ入ります | おそれいります | KHỦNG NHẬP | em không dám ạ |
| 仲居 | なかい | TRỌNG CƯ | nữ phục vụ ryokan |
| 案内 | あんない | ÁN NỘI | hướng dẫn |
| 加減 | かげん | GIA GIẢM | tình trạng, mức độ |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000011, 800000046, NULL, 'markdown_book', 'T11. Lần đầu khách phàn nàn (初めてのクレーム対応)', '# Sách thực tập sinh khách sạn · T11. Lần đầu khách phàn nàn (初めてのクレーム対応)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N5→N4 vững). Học các mẫu hội thoại tiếng Nhật khi khách phàn nàn: nhận xin lỗi keigo, xác nhận chi tiết sự cố, báo sempai và 女将, đề xuất hướng giải quyết, theo dõi đến cuối, ghi sổ クレーム記録.

---

## Bối cảnh

Tháng 2 năm 2026. Trang đã làm 11 tháng, tiếng Nhật khá tốt. Một buổi tối, khách phòng 302 — anh **木村様** (Kimura, 35 tuổi, đi công tác một mình) nhấn chuông gọi: đèn trần phòng tắt mãi không sáng. Đây là **lần đầu** Trang một mình tiếp nhận một クレーム (phàn nàn). Tay run, nhưng cô đã nhớ mẫu câu keigo Okami dạy: **申し訳ございません** — **すぐ確認いたします** — **少々お待ちください**. Chương này tập trung 4 bước クレーム対応: ① nghe — xin lỗi, ② xác nhận chi tiết, ③ giải quyết, ④ theo dõi + ghi sổ.

---

## Tình huống 1 — Hành lang tầng 3 · 20:30, chuông phòng 302 reo

*Trang đang dọn khay bữa tối ở 304 thì chuông 302 reo lần thứ 2.*

| Vai | Lời thoại |
|---|---|
| Trang | (chạy tới) はい、ただ<ruby>今<rt>いま</rt></ruby><ruby>参<rt>まい</rt></ruby>ります。<br>*(Vâng, em đến ngay ạ.)* |
| Trang | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>いたします、<ruby>仲居<rt>なかい</rt></ruby>でございます。<br>*(Em xin phép, nakai đây ạ.)* |
| Kimura | あの、<ruby>電気<rt>でんき</rt></ruby>がつかないんだけど。<br>*(Ờ, đèn không bật được.)* |
| Trang | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。どちらの<ruby>電気<rt>でんき</rt></ruby>でしょうか?<br>*(Em xin lỗi ạ. Đèn nào ạ?)* |
| Kimura | <ruby>天井<rt>てんじょう</rt></ruby>の。<ruby>真<rt>ま</rt></ruby>っ<ruby>暗<rt>くら</rt></ruby>で<ruby>本<rt>ほん</rt></ruby>が<ruby>読<rt>よ</rt></ruby>めない。<br>*(Trần. Tối om không đọc sách được.)* |
| Trang | <ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。すぐ<ruby>確認<rt>かくにん</rt></ruby>いたします。<br>*(Em vô cùng xin lỗi ạ. Em xác nhận ngay ạ.)* |

---

## Tình huống 2 — Phòng 302 · 20:32, Trang kiểm tra trực tiếp

*Trang vào phòng — đèn bàn còn sáng, nhưng đèn trần và đèn cạnh giường đều tắt. Trang thử công tắc 3 lần.*

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。スイッチを<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Em xin phép. Cho em kiểm tra công tắc ạ.)* |
| Kimura | どうぞ。<ruby>三回<rt>さんかい</rt></ruby><ruby>押<rt>お</rt></ruby>しても<ruby>駄目<rt>だめ</rt></ruby>だった。<br>*(Mời. Tôi bấm 3 lần không được.)* |
| Trang | (thử) <ruby>本当<rt>ほんとう</rt></ruby>につきませんね。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。ベッドサイドの<ruby>方<rt>ほう</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Đúng là không bật ạ. Em xin lỗi. Em xin phép xem cả đèn cạnh giường ạ.)* |
| Trang | (thử) こちらもつきません。<ruby>電球切<rt>でんきゅうぎ</rt></ruby>れか、ブレーカーかもしれません。<br>*(Cái này cũng không bật. Có thể bóng cháy hoặc cầu dao ạ.)* |
| Kimura | お<ruby>風呂<rt>ふろ</rt></ruby>の<ruby>電気<rt>でんき</rt></ruby>はついた。<br>*(Đèn phòng tắm thì bật được.)* |
| Trang | お<ruby>風呂<rt>ふろ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたか。では<ruby>部分的<rt>ぶぶんてき</rt></ruby>な<ruby>故障<rt>こしょう</rt></ruby>かと<ruby>存<rt>ぞん</rt></ruby>じます。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<ruby>係<rt>かかり</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んでまいります。<br>*(Phòng tắm thì ổn ạ. Vậy chắc hỏng một phần ạ. Quý khách chờ chút ạ. Em đi gọi người phụ trách ạ.)* |

---

## Tình huống 3 — Hành lang · 20:35, Trang gọi Chen — Okami

| Vai | Lời thoại |
|---|---|
| Trang | (qua bộ đàm) チェンさん、<ruby>女将<rt>おかみ</rt></ruby>さん、302の<ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>から<ruby>電気<rt>でんき</rt></ruby>のクレームです。<br>*(Chị Chen, Okami, quý khách Kimura phòng 302 phàn nàn về đèn.)* |
| Chen | どんな<ruby>状況<rt>じょうきょう</rt></ruby>?<br>*(Tình trạng thế nào?)* |
| Trang | <ruby>天井<rt>てんじょう</rt></ruby>とベッドサイドが<ruby>点<rt>つ</rt></ruby>きません。お<ruby>風呂<rt>ふろ</rt></ruby>とデスクライトはOKです。<br>*(Đèn trần và đèn cạnh giường không bật. Đèn phòng tắm và đèn bàn thì OK.)* |
| Okami | <ruby>部分的<rt>ぶぶんてき</rt></ruby>な<ruby>停電<rt>ていでん</rt></ruby>かブレーカー。<ruby>設備係<rt>せつびがかり</rt></ruby>の<ruby>山本<rt>やまもと</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>びます。<br>*(Mất điện cục bộ hoặc cầu dao. Tôi gọi anh Yamamoto kỹ thuật.)* |
| Chen | チャンちゃん、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>所<rt>ところ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って、<ruby>待<rt>ま</rt></ruby>っていただくようにお<ruby>願<rt>ねが</rt></ruby>いして。<ruby>懐中電灯<rt>かいちゅうでんとう</rt></ruby>と<ruby>予備<rt>よび</rt></ruby>のスタンドを<ruby>持<rt>も</rt></ruby>って。<br>*(Trang quay lại chỗ khách, xin khách chờ. Mang đèn pin và đèn bàn dự phòng.)* |
| Trang | はい、わかりました。<br>*(Vâng em rõ.)* |
| Okami | お<ruby>詫<rt>わ</rt></ruby>びに<ruby>果物<rt>くだもの</rt></ruby>の<ruby>盛<rt>も</rt></ruby>り<ruby>合<rt>あ</rt></ruby>わせも<ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>って。<br>*(Mang đĩa trái cây để xin lỗi luôn.)* |
| Trang | はい!<br>*(Vâng!)* |

---

## Tình huống 4 — Phòng 302 · 20:40, xin lỗi và mang đèn dự phòng

*Trang quay lại với đèn bàn dự phòng + đèn pin + đĩa trái cây nhỏ.*

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Để quý khách phải chờ, em vô cùng xin lỗi.)* |
| Kimura | いえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Không, ổn mà.)* |
| Trang | <ruby>設備<rt>せつび</rt></ruby>の<ruby>者<rt>もの</rt></ruby>が15<ruby>分<rt>ふん</rt></ruby>ほどで<ruby>参<rt>まい</rt></ruby>ります。それまで、<ruby>予備<rt>よび</rt></ruby>のスタンドをお<ruby>使<rt>つか</rt></ruby>いください。<br>*(Người kỹ thuật khoảng 15 phút nữa lên ạ. Trong lúc đó mời quý khách dùng đèn bàn dự phòng ạ.)* |
| Kimura | ありがとう。<br>*(Cảm ơn.)* |
| Trang | こちらはお<ruby>詫<rt>わ</rt></ruby>びの<ruby>果物<rt>くだもの</rt></ruby>でございます。<br>*(Đây là đĩa trái cây xin lỗi ạ.)* |
| Kimura | え、いいの?<br>*(Ơ, được không?)* |
| Trang | はい、どうぞお<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がりください。ご<ruby>不便<rt>ふべん</rt></ruby>をおかけして<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Vâng, mời quý khách dùng ạ. Em xin lỗi vì gây bất tiện ạ.)* |

---

## Tình huống 5 — Phòng 302 · 20:55, Yamamoto kỹ thuật đến

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします、<ruby>設備<rt>せつび</rt></ruby>の<ruby>者<rt>もの</rt></ruby>が<ruby>参<rt>まい</rt></ruby>りました。<br>*(Em xin phép, kỹ thuật đến rồi ạ.)* |
| Yamamoto | <ruby>山本<rt>やまもと</rt></ruby>です。<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>天井<rt>てんじょう</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>を<ruby>見<rt>み</rt></ruby>させていただきます。<br>*(Yamamoto đây. Xin phép. Tôi xem đèn trần.)* |
| Kimura | お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Nhờ anh.)* |
| Yamamoto | (kiểm tra) ブレーカーが<ruby>落<rt>お</rt></ruby>ちていますね。<ruby>天井<rt>てんじょう</rt></ruby>の<ruby>蛍光灯<rt>けいこうとう</rt></ruby>が<ruby>切<rt>き</rt></ruby>れて、ショートしたようです。<br>*(Cầu dao ngắt. Đèn huỳnh quang trần cháy nên chập rồi.)* |
| Trang | <ruby>直<rt>なお</rt></ruby>せますか?<br>*(Sửa được không ạ?)* |
| Yamamoto | <ruby>蛍光灯<rt>けいこうとう</rt></ruby>を<ruby>交換<rt>こうかん</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。10<ruby>分<rt>ぷん</rt></ruby>ぐらい。<br>*(Đổi bóng huỳnh quang là xong. Khoảng 10 phút.)* |
| Trang | <ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>、ロビーでお<ruby>茶<rt>ちゃ</rt></ruby>でもいかがでしょうか?<br>*(Quý khách Kimura, mời quý khách xuống sảnh uống trà nhé ạ?)* |
| Kimura | じゃ、お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Vậy nhờ em.)* |

---

## Tình huống 6 — Sảnh ryokan · 21:00, Trang phục vụ Kimura ở sảnh

| Vai | Lời thoại |
|---|---|
| Trang | こちらへどうぞ。<ruby>暖<rt>あたた</rt></ruby>かいお<ruby>茶<rt>ちゃ</rt></ruby>とお<ruby>菓子<rt>かし</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたしました。<br>*(Mời quý khách. Em mang trà ấm và bánh ạ.)* |
| Kimura | わざわざありがとう。<br>*(Phiền em quá.)* |
| Trang | とんでもないです。ご<ruby>不便<rt>ふべん</rt></ruby>をおかけして<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Dạ đâu có ạ. Em vô cùng xin lỗi vì gây bất tiện ạ.)* |
| Kimura | チャンさん、<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>?<br>*(Trang là người nước ngoài hả?)* |
| Trang | はい、ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Vâng, em từ Việt Nam ạ.)* |
| Kimura | <ruby>日本語<rt>にほんご</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>だね。<ruby>対応<rt>たいおう</rt></ruby>も<ruby>丁寧<rt>ていねい</rt></ruby>で<ruby>感心<rt>かんしん</rt></ruby>した。<br>*(Tiếng Nhật giỏi nhỉ. Cách xử lý chu đáo, tôi khâm phục.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。まだ<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Em không dám ạ. Em vẫn đang học ạ.)* |

---

## Tình huống 7 — Sảnh ryokan · 21:15, Yamamoto báo cáo xong việc

| Vai | Lời thoại |
|---|---|
| Yamamoto | (đến) チャンさん、<ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>蛍光灯<rt>けいこうとう</rt></ruby>を<ruby>二本<rt>にほん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>しました。<br>*(Trang, sửa xong. Đổi 2 bóng huỳnh quang.)* |
| Trang | ありがとうございました。<br>*(Em cảm ơn anh ạ.)* |
| Trang | <ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>部屋<rt>へや</rt></ruby>の<ruby>修理<rt>しゅうり</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。お<ruby>戻<rt>もど</rt></ruby>りいただけますでしょうか?<br>*(Quý khách Kimura, sửa phòng xong rồi ạ. Mời quý khách về phòng ạ?)* |
| Kimura | はい。<br>*(Vâng.)* |
| Trang | お<ruby>荷物<rt>にもつ</rt></ruby>がございましたら、お<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Có hành lý gì em mang cho ạ.)* |
| Kimura | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>本<rt>ほん</rt></ruby>だけ。<br>*(Ổn, chỉ cuốn sách thôi.)* |

---

## Tình huống 8 — Phòng 302 · 21:20, xác nhận đã sửa xong

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>電気<rt>でんき</rt></ruby>をつけてみてください。<br>*(Em xin phép. Mời quý khách thử bật đèn ạ.)* |
| Kimura | (bật) おっ、ついた。<br>*(Ồ, sáng rồi.)* |
| Trang | ベッドサイドも<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Mời quý khách kiểm tra cả đèn cạnh giường ạ.)* |
| Kimura | (bật) これも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Cái này cũng được.)* |
| Trang | よかったです。この<ruby>度<rt>たび</rt></ruby>はご<ruby>不便<rt>ふべん</rt></ruby>をおかけして、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<br>*(Em mừng quá. Lần này gây bất tiện, em xin lỗi chân thành ạ.)* |
| Kimura | いえ、<ruby>対応<rt>たいおう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>かったから<ruby>気<rt>き</rt></ruby>にしないで。<br>*(Không, xử lý nhanh nên đừng bận tâm.)* |
| Trang | ありがとうございます。<ruby>他<rt>ほか</rt></ruby>に<ruby>何<rt>なに</rt></ruby>かございましたら、<ruby>遠慮<rt>えんりょ</rt></ruby>なくお<ruby>申<rt>もう</rt></ruby>し<ruby>付<rt>つ</rt></ruby>けくださいませ。<br>*(Em cảm ơn ạ. Có gì khác mời quý khách cứ gọi em ạ.)* |
| Kimura | はい。おやすみ。<br>*(Ừ. Chúc ngủ ngon.)* |

---

## Tình huống 9 — Hành lang · 21:25, gặp 女将 báo cáo

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>件<rt>けん</rt></ruby>はどうなった?<br>*(Trang, vụ quý khách Kimura sao rồi?)* |
| Trang | <ruby>修理完了<rt>しゅうりかんりょう</rt></ruby>いたしました。<ruby>蛍光灯<rt>けいこうとう</rt></ruby>二<ruby>本<rt>ほん</rt></ruby><ruby>切<rt>き</rt></ruby>れ、ブレーカーが<ruby>落<rt>お</rt></ruby>ちていました。<br>*(Sửa xong rồi ạ. 2 bóng huỳnh quang cháy làm ngắt cầu dao.)* |
| Okami | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>は?<br>*(Khách thế nào?)* |
| Trang | お<ruby>怒<rt>おこ</rt></ruby>りにはなりませんでした。「<ruby>対応<rt>たいおう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>かった」とおっしゃってくださいました。<br>*(Không nổi giận ạ. Quý khách có nói "xử lý nhanh".)* |
| Okami | <ruby>立派<rt>りっぱ</rt></ruby>ね。クレーム<ruby>記録<rt>きろく</rt></ruby>ノートに<ruby>書<rt>か</rt></ruby>いておいて。<br>*(Tốt. Ghi vào sổ phàn nàn nhé.)* |
| Trang | はい、すぐ<ruby>記入<rt>きにゅう</rt></ruby>します。<br>*(Vâng, em ghi ngay ạ.)* |
| Okami | <ruby>明日<rt>あした</rt></ruby>のチェックアウトの<ruby>時<rt>とき</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>詫<rt>わ</rt></ruby>びの<ruby>言葉<rt>ことば</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えてね。<br>*(Mai check-out nhớ nói lời xin lỗi lần nữa.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 10 — Văn phòng nhỏ · 21:40, ghi sổ クレーム記録

*Trang mở sổ クレーム記録 — Chen đứng cạnh kèm.*

| Vai | Lời thoại |
|---|---|
| Chen | チャンちゃん、こう<ruby>書<rt>か</rt></ruby>けばいいよ。「<ruby>日付<rt>ひづけ</rt></ruby>・<ruby>時刻<rt>じこく</rt></ruby>・<ruby>部屋番号<rt>へやばんごう</rt></ruby>・お<ruby>客様<rt>きゃくさま</rt></ruby>・<ruby>内容<rt>ないよう</rt></ruby>・<ruby>対応<rt>たいおう</rt></ruby>・<ruby>結果<rt>けっか</rt></ruby>」。<br>*(Trang, viết thế này. "Ngày, giờ, số phòng, khách, nội dung, xử lý, kết quả".)* |
| Trang | はい。<ruby>2月15日<rt>にがつじゅうごにち</rt></ruby>、20<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、302、<ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>…<br>*(Vâng. Ngày 15/2, 20h30, 302, quý khách Kimura…)* |
| Chen | <ruby>内容<rt>ないよう</rt></ruby>:「<ruby>天井<rt>てんじょう</rt></ruby>とベッドサイドの<ruby>電気<rt>でんき</rt></ruby>が<ruby>点<rt>つ</rt></ruby>かず」と<ruby>事実<rt>じじつ</rt></ruby>だけ<ruby>書<rt>か</rt></ruby>く。<br>*(Nội dung viết đúng sự thật "Đèn trần và đèn cạnh giường không bật".)* |
| Trang | <ruby>対応<rt>たいおう</rt></ruby>は?<br>*(Xử lý ghi thế nào ạ?)* |
| Chen | 「<ruby>設備<rt>せつび</rt></ruby><ruby>山本<rt>やまもと</rt></ruby>が<ruby>蛍光灯<rt>けいこうとう</rt></ruby>2<ruby>本<rt>ほん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>、ブレーカー<ruby>復旧<rt>ふっきゅう</rt></ruby>」と。<br>*(Viết "Kỹ thuật Yamamoto đổi 2 bóng huỳnh quang, khôi phục cầu dao".)* |
| Trang | <ruby>結果<rt>けっか</rt></ruby>は<ruby>修理完了<rt>しゅうりかんりょう</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>納得<rt>なっとく</rt></ruby>。<br>*(Kết quả là sửa xong, khách thông cảm.)* |
| Chen | そう、<ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>果物<rt>くだもの</rt></ruby>の<ruby>盛<rt>も</rt></ruby>り<ruby>合<rt>あ</rt></ruby>わせも<ruby>書<rt>か</rt></ruby>いて。<br>*(Đúng, hoàn hảo. Ghi cả đĩa trái cây nhé.)* |
| Trang | はい。<br>*(Vâng.)* |

---

## Tình huống 11 — Sảnh · 9:00 ngày hôm sau, Kimura check-out

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>、おはようございます。お<ruby>休<rt>やす</rt></ruby>みになれましたでしょうか?<br>*(Quý khách Kimura, chào buổi sáng. Quý khách ngủ ngon không ạ?)* |
| Kimura | ぐっすり<ruby>寝<rt>ね</rt></ruby>たよ。<ruby>朝食<rt>ちょうしょく</rt></ruby>も<ruby>美味<rt>おい</rt></ruby>しかった。<br>*(Ngủ ngon. Bữa sáng cũng ngon.)* |
| Trang | <ruby>昨夜<rt>さくや</rt></ruby>はご<ruby>不便<rt>ふべん</rt></ruby>をおかけして<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<br>*(Đêm qua gây bất tiện, em xin lỗi quý khách ạ.)* |
| Kimura | いえいえ、もういいです。<ruby>対応<rt>たいおう</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>良<rt>よ</rt></ruby>かったよ。<br>*(Không không, ổn rồi. Xử lý tốt thật.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。お<ruby>会計<rt>かいけい</rt></ruby>は12,000<ruby>円<rt>えん</rt></ruby>でございます。<br>*(Em không dám ạ. Hoá đơn 12,000 yên ạ.)* |
| Kimura | カードで。<br>*(Quẹt thẻ nhé.)* |
| Trang | はい、<ruby>承<rt>うけたまわ</rt></ruby>ります。…ありがとうございました。またのお<ruby>越<rt>こ</rt></ruby>しをお<ruby>待<rt>ま</rt></ruby>ちしております。<br>*(Vâng em xin nhận ạ. … Cảm ơn quý khách. Em mong gặp lại quý khách ạ.)* |
| Kimura | ありがとう。チャンさん、<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Cảm ơn. Trang cố gắng nhé.)* |

---

## Tình huống 12 — Văn phòng nhỏ · 10:00, 女将 dạy thêm về クレーム

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>昨日<rt>きのう</rt></ruby>はよくやってくれました。<br>*(Trang, hôm qua làm tốt.)* |
| Trang | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Okami | クレーム<ruby>対応<rt>たいおう</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>は<ruby>四<rt>よっ</rt></ruby>つ。「<ruby>謝罪<rt>しゃざい</rt></ruby>」「<ruby>確認<rt>かくにん</rt></ruby>」「<ruby>解決<rt>かいけつ</rt></ruby>」「<ruby>フォロー<rt>ふぉろー</rt></ruby>」。<br>*(Xử lý phàn nàn có 4 bước. "Xin lỗi", "Xác nhận", "Giải quyết", "Theo dõi".)* |
| Trang | <ruby>謝罪<rt>しゃざい</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>先<rt>さき</rt></ruby>ですね。<br>*(Xin lỗi trước nhất nhỉ.)* |
| Okami | そう。<ruby>言<rt>い</rt></ruby>い<ruby>訳<rt>わけ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>ダメ。「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」が<ruby>最初<rt>さいしょ</rt></ruby>。<br>*(Đúng. Không bao giờ biện minh. "Em xin lỗi" trước tiên.)* |
| Trang | はい、<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, em nhớ ạ.)* |
| Okami | あなたは<ruby>来年<rt>らいねん</rt></ruby>、もうクレーム<ruby>担当<rt>たんとう</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ね。<br>*(Sang năm em làm phụ trách phàn nàn được rồi đấy.)* |
| Trang | <ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Em cố gắng ạ!)* |

---

## Tình huống 13 — Phòng ký túc · 22:00, gọi điện về Huế

> Cảnh tiếng Việt — Trang gọi bố qua Zalo.

| Vai | Lời thoại |
|---|---|
| Bố | A lô con! Sao tối nay rảnh vậy? |
| Trang | Bố ơi, hôm qua con xử lý lần đầu khách phàn nàn một mình đó! |
| Bố | Trời phàn nàn gì vậy? |
| Trang | Đèn trần phòng khách không bật. Khách là anh Kimura 35 tuổi đi công tác. Con sợ run luôn, nhưng nhớ lại Okami dạy: nói "申し訳ございません" trước, rồi mới hỏi chi tiết. |
| Bố | Khách có cáu không con? |
| Trang | Không bố. Sau đó còn khen con "対応が早かった" — tức là "xử lý nhanh". Sáng nay check-out anh còn dặn con "頑張って" nữa! |
| Bố | Trời, giỏi quá con gái. Nhớ hồi xưa con phục vụ nhà hàng ở Huế, có khách càm ràm là con khóc luôn. |
| Trang | Hihi giờ con keigo rồi bố. Okami nói sang năm con làm "クレーム担当" — phụ trách phàn nàn. |
| Bố | Ờ, con giỏi. Sang năm về Tết nha, mẹ làm bánh tét chờ. |
| Trang | Dạ con sẽ về! Bố giữ sức khoẻ nha. Yêu bố! |
| Bố | Bố cũng yêu. Ngủ ngon. |

---

## Đọng lại chương 11

Trang trải qua **クレーム đầu tiên một mình**: đèn trần phòng 302 hỏng tối 15/2. Cô làm đúng 4 bước Okami dạy: ① **謝罪** ngay (**申し訳ございません**), ② **確認** chi tiết (thử công tắc, hỏi đèn phòng tắm), ③ **解決** (gọi 山本 kỹ thuật, mang đèn dự phòng + trái cây xin lỗi, mời khách xuống sảnh), ④ **フォロー** (sáng check-out xin lỗi lần nữa + ghi sổ クレーム記録). Học mẫu keigo mới: **誠に申し訳ございませんでした**, **ご不便をおかけして**, **承知しました**, **承ります**, **遠慮なくお申し付けください**, **またのお越しをお待ちしております**. Khách Kimura khen "**対応が早かった**". 女将 nói sang năm Trang có thể làm クレーム担当.

> Từ vựng & mẫu câu chương này: クレーム・謝罪・確認・解決・フォロー・申し訳ございません・誠に・ご不便をおかけして・承知しました・承ります・遠慮なくお申し付けください・またのお越しをお待ちしております・対応・修理・蛍光灯・ブレーカー・設備係

---

## Bí quyết chương

- **クレーム対応 4 bước**: 謝罪 → 確認 → 解決 → フォロー. Tuyệt đối KHÔNG biện minh trước khi xin lỗi.
- "**申し訳ございません**" lặp 2-3 lần là OK, không quá nhiều thành sáo. Lúc cuối thêm "**誠に**" để nâng độ trọng.
- Khi chưa giải quyết được ngay: **少々お待ちください** + tặng đồ xin lỗi (trái cây/trà/bánh) — đừng để khách "rảnh tay rảnh trí" tức giận.
- Ghi **クレーム記録ノート** ngay sau khi xong: ngày/giờ/phòng/khách/nội dung/xử lý/kết quả. Là tài sản học cho cả ryokan.
- Sáng hôm sau gặp khách: **một câu xin lỗi nữa** — "昨夜はご不便をおかけして申し訳ございませんでした". Đừng quá nhiều mà gợi lại bực tức.
- Keigo cao cấp khi khách trả tiền: **承ります** (nhận), **またのお越しをお待ちしております** (mong gặp lại).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| クレーム | — | — | phàn nàn của khách |
| 謝罪 | しゃざい | TẠ TỘI | xin lỗi (danh từ) |
| 申し訳ございません | もうしわけございません | THÂN TRẠCH | em xin lỗi (keigo cao) |
| 誠に | まことに | THÀNH | chân thành, thật sự |
| ご不便をおかけして | ごふべんをおかけして | BẤT TIỆN | đã gây bất tiện |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 解決 | かいけつ | GIẢI QUYẾT | giải quyết |
| フォロー | — | — | theo dõi sau |
| 対応 | たいおう | ĐỐI ỨNG | cách xử lý |
| 修理 | しゅうり | TU LÝ | sửa chữa |
| 故障 | こしょう | CỐ CHƯỚNG | hỏng hóc |
| 蛍光灯 | けいこうとう | HUỲNH QUANG ĐĂNG | bóng huỳnh quang |
| 電球 | でんきゅう | ĐIỆN CẦU | bóng đèn |
| ブレーカー | — | — | cầu dao |
| 停電 | ていでん | ĐÌNH ĐIỆN | mất điện |
| 設備係 | せつびがかり | THIẾT BỊ HỆ | nhân viên kỹ thuật |
| 天井 | てんじょう | THIÊN TỈNH | trần nhà |
| 真っ暗 | まっくら | CHÂN ÁM | tối om |
| 懐中電灯 | かいちゅうでんとう | HOÀI TRUNG ĐIỆN ĐĂNG | đèn pin |
| 予備 | よび | DỰ BỊ | dự phòng |
| 盛り合わせ | もりあわせ | THỊNH HỢP | đĩa trộn (trái cây) |
| 詫び | わび | TRÁ | lời xin lỗi |
| 記録 | きろく | KÝ LỤC | ghi chép |
| 記入 | きにゅう | KÝ NHẬP | điền vào |
| 承知しました | しょうちしました | THỪA TRI | em rõ rồi ạ |
| 承る | うけたまわる | THỪA | nhận (khiêm nhường) |
| 遠慮なく | えんりょなく | VIỄN LỰ | đừng ngại |
| 申し付ける | もうしつける | THÂN PHÓ | sai bảo |
| またのお越し | またのおこし | VIỆT | lần đến tiếp theo |
| 納得 | なっとく | NẠP ĐẮC | thông cảm, thoả mãn |
| 復旧 | ふっきゅう | PHỤC CỰU | khôi phục |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 言い訳 | いいわけ | NGÔN TRẠCH | biện minh |
| 感心 | かんしん | CẢM TÂM | khâm phục |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (846000012, 800000046, NULL, 'markdown_book', 'T12. Tổng kết năm 1 — đậu N4, kế hoạch năm 2 (一年目締めくくり)', '# Sách thực tập sinh khách sạn · T12. Tổng kết năm 1 — đậu N4, kế hoạch năm 2 (一年目締めくくり)

> **Mục tiêu nhân vật:** Trang (22 tuổi, Huế, ryokan Kyoto, N4 đã đậu). Học các mẫu hội thoại tiếng Nhật khi tổng kết: nhận kết quả N4, báo cáo thành tích năm 1, nhận lời khen 女将, thảo luận kế hoạch N3 — SSW năm 2, viết kế hoạch năm sau, chào tạm biệt sempai về nước, gọi điện báo gia đình.

---

## Bối cảnh

Tháng 3 năm 2026. Tròn 1 năm Trang rời Huế sang Nhật. Tháng trước cô thi **JLPT N4** lần đầu — và hôm nay nhận được kết quả: **102/180 đậu** (合格点 90). 女将 (Okami-san) đã hẹn họp riêng để tổng kết năm 1 và thảo luận năm 2. Chen-san (Trung Quốc, sempai 2 năm) sắp hết hợp đồng 3 năm, sẽ về nước cuối tháng. Trang chuẩn bị: ① báo cáo thành tích năm 1 bằng tiếng Nhật, ② viết **目標シート** (bảng mục tiêu) năm 2: N3 + bắt đầu học フロント (lễ tân) thay vì chỉ làm 仲居 phòng. Chương này tập trung mẫu câu **総括** (tổng kết) + **目標設定** (đặt mục tiêu).

---

## Tình huống 1 — Phòng ký túc · 7:00, Trang mở email kết quả N4

| Vai | Lời thoại |
|---|---|
| Trang | (đọc email một mình) <ruby>合格<rt>ごうかく</rt></ruby>!102<ruby>点<rt>てん</rt></ruby>!<br>*(Đậu! 102 điểm!)* |
| Trang | やった!お<ruby>母<rt>かあ</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>しないと…でもまず<ruby>女将<rt>おかみ</rt></ruby>さんに。<br>*(Yeah! Phải báo mẹ… mà báo Okami trước.)* |
| Chen | (gõ cửa) チャンちゃん、おはよう。<ruby>結果<rt>けっか</rt></ruby><ruby>出<rt>で</rt></ruby>た?<br>*(Trang, chào buổi sáng. Có kết quả chưa?)* |
| Trang | チェンさん!<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Chị Chen! Em đậu rồi!)* |
| Chen | やったね!おめでとう!<ruby>何点<rt>なんてん</rt></ruby>?<br>*(Yeah! Chúc mừng! Bao nhiêu điểm?)* |
| Trang | 102<ruby>点<rt>てん</rt></ruby>です。<ruby>合格点<rt>ごうかくてん</rt></ruby>が90<ruby>点<rt>てん</rt></ruby>でした。<br>*(102 điểm ạ. Điểm đậu là 90.)* |
| Chen | <ruby>余裕<rt>よゆう</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>だね。<ruby>女将<rt>おかみ</rt></ruby>さんが<ruby>喜<rt>よろこ</rt></ruby>ぶよ。<br>*(Đậu thoải mái nhỉ. Okami sẽ vui lắm.)* |
| Trang | はい、すぐ<ruby>報告<rt>ほうこく</rt></ruby>します!<br>*(Vâng, em báo ngay!)* |

---

## Tình huống 2 — Văn phòng nhỏ · 7:30, báo Okami kết quả N4

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、おはようございます。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Thưa Okami, chào buổi sáng. Em xin phép.)* |
| Okami | おはよう、チャンさん。どうしたの?<br>*(Chào, Trang. Có chuyện gì?)* |
| Trang | <ruby>先月<rt>せんげつ</rt></ruby>のN4の<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。…<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Kết quả N4 tháng trước có rồi ạ. … Em đậu rồi ạ!)* |
| Okami | (đứng dậy) えっ、<ruby>本当<rt>ほんとう</rt></ruby>?おめでとう!よく<ruby>頑張<rt>がんば</rt></ruby>ったね!<br>*(Ơ thật à? Chúc mừng! Em cố gắng giỏi lắm!)* |
| Trang | 102<ruby>点<rt>てん</rt></ruby>でした。<br>*(102 điểm ạ.)* |
| Okami | すごい。<ruby>一年<rt>いちねん</rt></ruby>でここまで<ruby>来<rt>き</rt></ruby>たんだから、<ruby>誇<rt>ほこ</rt></ruby>っていいよ。<br>*(Giỏi quá. 1 năm đến mức này, em có quyền tự hào đó.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Em không dám ạ. Nhờ mọi người ạ.)* |
| Okami | <ruby>今日<rt>きょう</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>一年<rt>いちねん</rt></ruby>の<ruby>総括<rt>そうかつ</rt></ruby>と<ruby>二年目<rt>にねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>を<ruby>話<rt>はな</rt></ruby>しましょう。17<ruby>時<rt>じ</rt></ruby>に<ruby>事務所<rt>じむしょ</rt></ruby>へ。<br>*(Chiều nay mình họp tổng kết năm 1 và kế hoạch năm 2 nhé. 5h ở văn phòng.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 10:30, Park-san chúc mừng

| Vai | Lời thoại |
|---|---|
| Park | チャンちゃん、N4<ruby>合格<rt>ごうかく</rt></ruby><ruby>聞<rt>き</rt></ruby>いたよ。おめでとう!<br>*(Trang, nghe đậu N4 rồi. Chúc mừng!)* |
| Trang | パクさん、ありがとうございます。<br>*(Anh Park, em cảm ơn ạ.)* |
| Park | <ruby>次<rt>つぎ</rt></ruby>はN3でしょ?<br>*(Tiếp là N3 nhỉ?)* |
| Trang | はい、12<ruby>月<rt>がつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<ruby>難<rt>むずか</rt></ruby>しそうですが…<br>*(Vâng, em thi tháng 12. Nghe khó lắm…)* |
| Park | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、N4から N3は<ruby>漢字<rt>かんじ</rt></ruby>と<ruby>文法<rt>ぶんぽう</rt></ruby>が<ruby>倍<rt>ばい</rt></ruby>になるけど、<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつやれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Không sao, từ N4 lên N3 kanji và ngữ pháp gấp đôi nhưng mỗi ngày một chút là ổn.)* |
| Trang | パクさんは<ruby>何<rt>なに</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>しましたか?<br>*(Anh Park học bằng gì ạ?)* |
| Park | 「<ruby>新完全<rt>しんかんぜん</rt></ruby>マスター」シリーズと、ドラマ「<ruby>逃<rt>に</rt></ruby>げ<ruby>恥<rt>はじ</rt></ruby>」を<ruby>字幕<rt>じまく</rt></ruby><ruby>付<rt>つ</rt></ruby>きで。<br>*(Bộ "Shin Kanzen Master" và xem phim "Nigehaji" có phụ đề.)* |
| Trang | メモします!<br>*(Em ghi lại!)* |

---

## Tình huống 4 — Hành lang · 14:00, Chen sắp về nước

*Chen đang xếp hành lý nhỏ trong phòng nghỉ — tuần sau hết hợp đồng.*

| Vai | Lời thoại |
|---|---|
| Trang | チェンさん、<ruby>来週<rt>らいしゅう</rt></ruby>もうお<ruby>別<rt>わか</rt></ruby>れですね…<br>*(Chị Chen, tuần sau là chia tay rồi…)* |
| Chen | そうだね。3<ruby>年<rt>ねん</rt></ruby>あっという<ruby>間<rt>ま</rt></ruby>だった。<br>*(Đúng vậy. 3 năm thoáng cái.)* |
| Trang | チェンさんに<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。お<ruby>盆<rt>ぼん</rt></ruby>の<ruby>満室<rt>まんしつ</rt></ruby>も、クレームの<ruby>時<rt>とき</rt></ruby>も、いつも<ruby>助<rt>たす</rt></ruby>けてくれて…<br>*(Em mang ơn chị Chen nhiều. Hồi Obon kín phòng, hồi クレーム, lúc nào chị cũng giúp em…)* |
| Chen | お<ruby>互<rt>たが</rt></ruby>いさま。チャンちゃんも<ruby>毎日<rt>まいにち</rt></ruby><ruby>必死<rt>ひっし</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いてたよ。<br>*(Có qua có lại. Trang cũng ngày nào cũng cố hết sức.)* |
| Trang | <ruby>中国<rt>ちゅうごく</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>ったら、<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Về Trung Quốc chị làm gì?)* |
| Chen | <ruby>上海<rt>シャンハイ</rt></ruby>の<ruby>日系<rt>にっけい</rt></ruby>ホテルで<ruby>働<rt>はたら</rt></ruby>くつもり。ここでの<ruby>経験<rt>けいけん</rt></ruby>が<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ。<br>*(Tôi tính làm khách sạn Nhật ở Thượng Hải. Kinh nghiệm ở đây sẽ giúp.)* |
| Trang | きっと<ruby>成功<rt>せいこう</rt></ruby>します。<br>*(Chắc chắn chị thành công.)* |
| Chen | チャンちゃんは?<ruby>二年目<rt>にねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>は?<br>*(Trang thì sao? Kế hoạch năm 2?)* |
| Trang | <ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>女将<rt>おかみ</rt></ruby>さんと<ruby>相談<rt>そうだん</rt></ruby>します。フロントの<ruby>仕事<rt>しごと</rt></ruby>もやりたいです。<br>*(Chiều em họp với Okami. Em muốn thử làm cả lễ tân.)* |
| Chen | いいね。フロントは<ruby>敬語<rt>けいご</rt></ruby>がもっと<ruby>必要<rt>ひつよう</rt></ruby>だよ。<br>*(Hay. Lễ tân cần keigo nhiều hơn đó.)* |

---

## Tình huống 5 — Phòng ký túc · 16:00, Trang viết 目標シート

*Trang ngồi trước máy tính, mở mẫu 目標シート (Excel) Okami đã in sẵn.*

| Vai | Lời thoại |
|---|---|
| Trang | (gõ một mình) <ruby>2026年度<rt>にせんにじゅうろくねんど</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>…<br>*(Mục tiêu năm tài khoá 2026…)* |
| Trang | <ruby>一<rt>ひと</rt></ruby>つ、N3<ruby>合格<rt>ごうかく</rt></ruby>(12<ruby>月<rt>がつ</rt></ruby>)。<br>*(Một, đậu N3 tháng 12.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ、フロント<ruby>業務<rt>ぎょうむ</rt></ruby>の<ruby>研修<rt>けんしゅう</rt></ruby>。<br>*(Hai, được đào tạo công việc lễ tân.)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>新人<rt>しんじん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>。<br>*(Ba, kèm cặp người mới.)* |
| Trang | <ruby>四<rt>よっ</rt></ruby>つ、<ruby>毎月<rt>まいつき</rt></ruby>5<ruby>万円<rt>まんえん</rt></ruby><ruby>貯金<rt>ちょきん</rt></ruby>。<br>*(Bốn, tiết kiệm 5 vạn yên/tháng.)* |
| Trang | <ruby>五<rt>いつ</rt></ruby>つ…<ruby>京都<rt>きょうと</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>する!<br>*(Năm… học lịch sử Kyoto!)* |
| Trang | (xem lại) よし、これで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>印刷<rt>いんさつ</rt></ruby>しよう。<br>*(OK, vậy là được. In ra.)* |

---

## Tình huống 6 — Văn phòng nhỏ · 17:00, họp tổng kết với 女将

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、お<ruby>掛<rt>か</rt></ruby>けください。お<ruby>茶<rt>ちゃ</rt></ruby>どうぞ。<br>*(Trang, mời ngồi. Mời trà.)* |
| Trang | ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em cảm ơn ạ. Em xin phép.)* |
| Okami | じゃ、<ruby>一年<rt>いちねん</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りましょう。チャンさんから、<ruby>印象<rt>いんしょう</rt></ruby><ruby>深<rt>ぶか</rt></ruby>かったことを<ruby>三<rt>みっ</rt></ruby>つ。<br>*(Vậy mình nhìn lại 1 năm nhé. Trang kể 3 chuyện ấn tượng nhất.)* |
| Trang | はい。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、N4<ruby>検定<rt>けんてい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>したことです。<br>*(Vâng. Một, đậu kỳ thi N4.)* |
| Okami | はい。<br>*(Ừ.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、お<ruby>盆<rt>ぼん</rt></ruby>の<ruby>満室<rt>まんしつ</rt></ruby>を<ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えたことです。<br>*(Hai, vượt qua được mùa Obon kín phòng.)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>のクレームを<ruby>一人<rt>ひとり</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>できたことです。<br>*(Ba, một mình xử lý クレーム của quý khách Kimura.)* |
| Okami | どれもしっかりやり<ruby>遂<rt>と</rt></ruby>げました。<ruby>反省点<rt>はんせいてん</rt></ruby>は?<br>*(Cái nào em cũng làm trọn vẹn. Có điểm nào cần rút kinh nghiệm?)* |
| Trang | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、<ruby>敬語<rt>けいご</rt></ruby>を<ruby>間違<rt>まちが</rt></ruby>えて<ruby>恥<rt>はず</rt></ruby>かしかったです。これからもっと<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(3 tháng đầu em sai keigo nhiều, ngại lắm. Từ giờ em sẽ học nhiều hơn.)* |

---

## Tình huống 7 — Văn phòng nhỏ · 17:20, Okami nhận xét

| Vai | Lời thoại |
|---|---|
| Okami | <ruby>私<rt>わたし</rt></ruby>からチャンさんへの<ruby>評価<rt>ひょうか</rt></ruby>を<ruby>言<rt>い</rt></ruby>いますね。<br>*(Tôi đánh giá Trang nhé.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời Okami ạ.)* |
| Okami | <ruby>長所<rt>ちょうしょ</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つ。<ruby>素直<rt>すなお</rt></ruby>に<ruby>学<rt>まな</rt></ruby>ぶこと、<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くこと、<ruby>正直<rt>しょうじき</rt></ruby>であること。<br>*(Ưu điểm 3 cái. Học hỏi cởi mở, chu đáo, trung thực.)* |
| Trang | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Okami | <ruby>短所<rt>たんしょ</rt></ruby>というか、<ruby>課題<rt>かだい</rt></ruby>は、<ruby>声<rt>こえ</rt></ruby>がまだ<ruby>小<rt>ちい</rt></ruby>さいこと。フロントは<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Nhược điểm, hay nói là điểm cần cải thiện, là giọng nói còn nhỏ. Lễ tân cần giọng to.)* |
| Trang | はい、<ruby>意識<rt>いしき</rt></ruby>します。<br>*(Vâng, em sẽ chú ý ạ.)* |
| Okami | あと、<ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くまで<ruby>勉強<rt>べんきょう</rt></ruby>しすぎ。<ruby>健康<rt>けんこう</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>。<br>*(Còn nữa, học khuya quá. Sức khoẻ trên hết.)* |
| Trang | <ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em sẽ chú ý ạ.)* |

---

## Tình huống 8 — Văn phòng nhỏ · 17:35, trình 目標シート năm 2

| Vai | Lời thoại |
|---|---|
| Trang | こちら、<ruby>二年目<rt>にねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>シートでございます。<br>*(Đây ạ, bảng mục tiêu năm 2 ạ.)* |
| Okami | (đọc) なるほど、5つね。N3、フロント<ruby>研修<rt>けんしゅう</rt></ruby>、<ruby>新人<rt>しんじん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>、<ruby>貯金<rt>ちょきん</rt></ruby>、<ruby>京都<rt>きょうと</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>。<br>*(Hay, 5 mục. N3, đào tạo lễ tân, kèm tân binh, tiết kiệm, sử Kyoto.)* |
| Trang | フロント<ruby>業務<rt>ぎょうむ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えたいです。お<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Em muốn học việc lễ tân. Cho em được không ạ?)* |
| Okami | もちろん。4<ruby>月<rt>がつ</rt></ruby>から<ruby>週<rt>しゅう</rt></ruby>2<ruby>回<rt>かい</rt></ruby>、フロントに<ruby>入<rt>はい</rt></ruby>ってもらいます。<br>*(Dĩ nhiên. Từ tháng 4, mỗi tuần 2 lần em vào lễ tân.)* |
| Trang | ありがとうございます!<ruby>京都<rt>きょうと</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>は、お<ruby>客様<rt>きゃくさま</rt></ruby>のご<ruby>質問<rt>しつもん</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えたいからです。<br>*(Em cảm ơn ạ! Sử Kyoto là để em trả lời câu hỏi của khách ạ.)* |
| Okami | <ruby>偉<rt>えら</rt></ruby>い。<ruby>清水寺<rt>きよみずでら</rt></ruby>、<ruby>金閣寺<rt>きんかくじ</rt></ruby>、<ruby>祇園<rt>ぎおん</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>便利<rt>べんり</rt></ruby>よ。<br>*(Giỏi. Nhớ giải thích Kiyomizudera, Kinkakuji, Gion là tiện lắm.)* |
| Trang | はい、<ruby>本<rt>ほん</rt></ruby>を<ruby>買<rt>か</rt></ruby>いました。<br>*(Vâng, em mua sách rồi ạ.)* |

---

## Tình huống 9 — Văn phòng nhỏ · 17:50, Okami tặng phong bì

| Vai | Lời thoại |
|---|---|
| Okami | これ、<ruby>一年<rt>いちねん</rt></ruby>の<ruby>御祝<rt>おいわい</rt></ruby>とN4<ruby>合格<rt>ごうかく</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>い。<br>*(Đây, tiền chúc mừng 1 năm và đậu N4.)* |
| Trang | え、いただいてもよろしいのですか?<br>*(Ơ, em nhận được ạ?)* |
| Okami | もちろん。<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。3<ruby>万円<rt>まんえん</rt></ruby>。<br>*(Dĩ nhiên. Đừng ngại. 3 vạn yên.)* |
| Trang | (cúi sâu) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Em vô cùng cảm ơn Okami ạ.)* |
| Okami | ベトナムのご<ruby>家族<rt>かぞく</rt></ruby>に<ruby>何<rt>なに</rt></ruby>か<ruby>送<rt>おく</rt></ruby>って<ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げて。<br>*(Gửi gì đó về cho gia đình ở Việt Nam nhé.)* |
| Trang | はい、お<ruby>母<rt>かあ</rt></ruby>さんに<ruby>送<rt>おく</rt></ruby>ります。<br>*(Vâng, em gửi cho mẹ.)* |
| Okami | <ruby>二年目<rt>にねんめ</rt></ruby>もよろしくね。<br>*(Năm 2 nhờ em nhé.)* |
| Trang | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Dạ em mới phải nhờ Okami ạ.)* |

---

## Tình huống 10 — Hành lang · 18:30, gặp 板長

| Vai | Lời thoại |
|---|---|
| 板長 | チャンさん、N4<ruby>合格<rt>ごうかく</rt></ruby>おめでとう。<br>*(Trang, chúc mừng đậu N4.)* |
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>、ありがとうございます。<br>*(Bếp trưởng, em cảm ơn ạ.)* |
| 板長 | <ruby>来年<rt>らいねん</rt></ruby>、<ruby>厨房<rt>ちゅうぼう</rt></ruby>にも<ruby>来<rt>き</rt></ruby>てみない?<ruby>懐石<rt>かいせき</rt></ruby>の<ruby>盛<rt>も</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けを<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Sang năm thử qua bếp không? Tôi dạy bày kaiseki.)* |
| Trang | え、いいんですか?ぜひお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Ơ, được ạ? Em xin phép nhờ bếp trưởng ạ!)* |
| 板長 | <ruby>外国<rt>がいこく</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えてる。<ruby>料理<rt>りょうり</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>もできる<ruby>仲居<rt>なかい</rt></ruby>さんは<ruby>貴重<rt>きちょう</rt></ruby>だ。<br>*(Khách nước ngoài tăng. Nakai giải thích được món ăn rất quý.)* |
| Trang | <ruby>頑張<rt>がんば</rt></ruby>って<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em cố gắng nhớ ạ.)* |
| 板長 | アレルギーの<ruby>件<rt>けん</rt></ruby>でよく<ruby>気<rt>き</rt></ruby>がついたから、<ruby>食材<rt>しょくざい</rt></ruby>のことも<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>強<rt>つよ</rt></ruby>いよ。<br>*(Em đã tinh ý vụ dị ứng, nhớ thêm nguyên liệu sẽ mạnh.)* |
| Trang | はい!<br>*(Vâng!)* |

---

## Tình huống 11 — Phòng nhân viên · 21:00, tiệc nhỏ chia tay Chen

*Cả ekip ryokan tụ tập tiễn Chen. Có sushi, bia non-alcohol cho Trang.*

| Vai | Lời thoại |
|---|---|
| Okami | チェンさん、3<ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Chen, vất vả 3 năm rồi.)* |
| Chen | こちらこそ、<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Tôi mới mang ơn các anh chị.)* |
| Park | チェンさん、<ruby>上海<rt>シャンハイ</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>って。<ruby>連絡<rt>れんらく</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>おう。<br>*(Chen, cố gắng ở Thượng Hải. Mình giữ liên lạc.)* |
| Trang | チェンさん、これ、ベトナムのコーヒー。<br>*(Chị Chen, đây, cà phê Việt Nam.)* |
| Chen | わあ、<ruby>嬉<rt>うれ</rt></ruby>しい!ありがとう。チャンちゃん、<ruby>絶対<rt>ぜったい</rt></ruby>N3<ruby>受<rt>う</rt></ruby>かるよ。<br>*(Ôi, vui quá! Cảm ơn. Trang chắc chắn đậu N3.)* |
| Trang | チェンさんも、<ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Chị Chen cũng giữ sức khoẻ.)* |
| Okami | みなさん、<ruby>乾杯<rt>かんぱい</rt></ruby>しましょう。チェンさんの<ruby>新<rt>あたら</rt></ruby>しい<ruby>門出<rt>かどで</rt></ruby>と、チャンさんのN4<ruby>合格<rt>ごうかく</rt></ruby>に!<br>*(Mọi người, cụng ly nào. Chúc Chen khởi đầu mới và Trang đậu N4!)* |
| 全員 | かんぱい!<br>*(Cạn ly!)* |

---

## Tình huống 12 — Sân ryokan · 22:30, Trang một mình ngắm hoa anh đào

*Cây 桜 trước ryokan đã nở 5 phần. Trang chụp ảnh gửi mẹ.*

| Vai | Lời thoại |
|---|---|
| Park | (đi qua) チャンちゃん、まだ<ruby>起<rt>お</rt></ruby>きてるの?<br>*(Trang, còn thức à?)* |
| Trang | パクさん。<ruby>桜<rt>さくら</rt></ruby>がきれいで。<br>*(Anh Park. Hoa anh đào đẹp quá.)* |
| Park | もう<ruby>一年<rt>いちねん</rt></ruby>。<ruby>早<rt>はや</rt></ruby>いね。<br>*(Đã 1 năm. Nhanh nhỉ.)* |
| Trang | はい。<ruby>来年<rt>らいねん</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>はN3<ruby>合格<rt>ごうかく</rt></ruby>で<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng. Hoa năm sau em sẽ ngắm với chứng chỉ N3.)* |
| Park | きっと<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。チャンちゃんは<ruby>努力<rt>どりょく</rt></ruby><ruby>家<rt>か</rt></ruby>だから。<br>*(Chắc chắn được. Trang là người chăm chỉ.)* |
| Trang | パクさんも、<ruby>来年<rt>らいねん</rt></ruby><ruby>韓国<rt>かんこく</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りますか?<br>*(Anh Park, sang năm về Hàn không?)* |
| Park | いや、ここでもう1<ruby>年<rt>ねん</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>。チャンちゃんと<ruby>同<rt>おな</rt></ruby>じ<ruby>時<rt>とき</rt></ruby>に<ruby>卒業<rt>そつぎょう</rt></ruby>するかも。<br>*(Không, tôi gia hạn thêm 1 năm. Có thể "tốt nghiệp" cùng Trang.)* |
| Trang | わあ、<ruby>嬉<rt>うれ</rt></ruby>しいです!<br>*(Ôi, em vui quá!)* |

---

## Tình huống 13 — Phòng ký túc · 23:00, gọi điện về Huế

> Cảnh tiếng Việt — Trang gọi mẹ video qua Messenger, khoe điểm N4.

| Vai | Lời thoại |
|---|---|
| Mẹ | A lô con! Mặt con tươi quá! Có chuyện vui hả? |
| Trang | Mẹ ơi, con đậu N4 rồi! 102 điểm, qua mức 90! |
| Mẹ | (la lên) Trời ơi con gái mẹ! Cha ơi, con Trang đậu N4 rồi! |
| Bố | (xa xa) Trời ơi giỏi quá! |
| Trang | Còn nữa mẹ, hôm nay con họp tổng kết năm 1 với Okami. Cô ấy tặng con phong bì 3 vạn yên — hơn 5 triệu đồng đó mẹ. Con gửi mẹ 4 triệu nha. |
| Mẹ | Trời ơi sao mẹ nỡ lấy, con giữ lại đi! |
| Trang | Mẹ cứ giữ giùm con, để sang năm con thi N3 với học フロント — lễ tân. Bếp trưởng còn cho con học bày món 懐石 nữa! |
| Mẹ | Năm hai con làm nhiều việc thế? |
| Trang | Dạ, mục tiêu năm 2 con đặt 5 cái: N3, lễ tân, kèm tân binh, tiết kiệm 5 vạn/tháng, và học sử Kyoto. Sang năm Tết con về 2 tuần. |
| Bố | Về nhà nghỉ ngơi nha con. Bố mẹ chờ. |
| Trang | Dạ! Còn nữa mẹ, chị Chen Trung Quốc tuần sau về nước. Hôm nay tụi con tiệc chia tay. Buồn nhưng vui. |
| Mẹ | Đời nó vậy con. Cuộc nào cũng tan, nhưng còn liên lạc là còn duyên. |
| Trang | Dạ mẹ. Hoa anh đào ở ryokan nở rồi. Con gửi ảnh nha. |
| Mẹ | Đẹp quá. Mẹ tự hào con lắm. |
| Trang | Con yêu mẹ yêu bố. Con đi ngủ đây! |
| Mẹ + Bố | Yêu con! Ngủ ngon nhé! |

---

## Đọng lại chương 12

Trang khép lại năm 1 với 3 thành tích lớn: **N4 102 điểm** (cao hơn điểm đậu 12 điểm), vượt **お盆満室**, và một mình xử lý **クレーム đầu tiên**. Buổi họp **総括** với 女将 đi đúng cấu trúc: ① 3 chuyện ấn tượng, ② 反省点, ③ Okami nhận xét **長所・短所**, ④ trình **目標シート** năm 2 với 5 mục (N3, フロント研修, 新人指導, 貯金, 京都歴史). Học mẫu nhận lời khen khiêm tốn (**恐れ入ります — 皆さんのおかげです**), nhận phong bì kính ngữ (**いただいてもよろしいのですか**), chúc khởi đầu mới (**新しい門出**), cụng ly (**乾杯**). 板長 mời cô qua bếp học **懐石盛り付け** — khẳng định giá trị "**料理の説明もできる仲居さん**". Chen-san hết hợp đồng về Thượng Hải làm khách sạn Nhật. Park-san gia hạn thêm 1 năm. Trang đặt ngày ngắm sakura năm sau cùng N3.

> Từ vựng & mẫu câu chương này: 合格・合格点・総括・振り返る・印象深い・反省点・長所・短所・課題・目標シート・フロント・研修・新人指導・貯金・歴史・恐れ入ります・皆さんのおかげです・新しい門出・乾杯・延長・卒業・努力家・盛り付け

---

## Bí quyết chương

- **総括 năm** cấu trúc 4 bước: ① 3 việc ấn tượng (in đậm thành tích), ② 反省点 (1-2 điểm yếu), ③ nghe nhận xét 長所/短所 của 女将, ④ trình **目標シート** năm sau.
- **目標シート năm 2 ryokan**: nên có cân bằng — 1 mục JLPT, 1 mục kỹ năng nghề (フロント / 懐石 / フロアマネージャー), 1 mục giúp tân binh, 1 mục tài chính (貯金), 1 mục văn hoá (歴史/料理).
- Khi được khen: tránh "ありがとうございます" cộc — dùng "**恐れ入ります**" + "**皆さんのおかげです**" (nhờ mọi người).
- Khi được tặng phong bì cấp trên: "**いただいてもよろしいのですか**" → "**遠慮しないで**" → cúi sâu + "**本当にありがとうございます**".
- Tiệc tiễn sempai: hai vế "**新しい門出**" (khởi đầu mới) + "**連絡取り合おう**" (giữ liên lạc) là vế cảm xúc chuẩn.
- Năm 2 ryokan = chuyển từ "仲居 1 ngôi sao" sang đa kỹ năng (lễ tân/bếp). Cơ hội này quý — chủ động xin chứ đừng chờ.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 合格 | ごうかく | HỢP CÁCH | đậu (kỳ thi) |
| 合格点 | ごうかくてん | HỢP CÁCH ĐIỂM | điểm đậu |
| 余裕 | よゆう | DƯ DỤ | thoải mái, dư dả |
| 総括 | そうかつ | TỔNG QUÁT | tổng kết |
| 振り返る | ふりかえる | CHẤN PHẢN | nhìn lại |
| 印象深い | いんしょうぶかい | ẤN TƯỢNG THÂM | ấn tượng sâu sắc |
| 反省点 | はんせいてん | PHẢN TỈNH ĐIỂM | điểm rút kinh nghiệm |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 長所 | ちょうしょ | TRƯỜNG SỞ | ưu điểm |
| 短所 | たんしょ | ĐOẢN SỞ | nhược điểm |
| 課題 | かだい | KHOÁ ĐỀ | điểm cần cải thiện |
| 素直 | すなお | TỐ TRỰC | cởi mở, ngay thẳng |
| 正直 | しょうじき | CHÍNH TRỰC | trung thực |
| 意識 | いしき | Ý THỨC | chú ý, ý thức |
| 健康 | けんこう | KIỆN KHANG | sức khoẻ |
| 目標シート | もくひょうシート | MỤC TIÊU | bảng đặt mục tiêu |
| 業務 | ぎょうむ | NGHIỆP VỤ | nghiệp vụ |
| 研修 | けんしゅう | NGHIÊN TU | đào tạo, tập huấn |
| 指導 | しどう | CHỈ ĐẠO | kèm cặp, hướng dẫn |
| 貯金 | ちょきん | TRỮ KIM | tiết kiệm |
| 歴史 | れきし | LỊCH SỬ | lịch sử |
| 検定 | けんてい | KIỂM ĐỊNH | kỳ thi |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 漢字 | かんじ | HÁN TỰ | chữ kanji |
| 字幕 | じまく | TỰ MẠC | phụ đề |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 成功 | せいこう | THÀNH CÔNG | thành công |
| 努力家 | どりょくか | NỖ LỰC GIA | người chăm chỉ |
| 御祝 | おいわい | NGỰ CHÚC | tiền/quà chúc mừng |
| 門出 | かどで | MÔN XUẤT | khởi đầu mới |
| 乾杯 | かんぱい | CAN BÔI | cạn ly |
| 延長 | えんちょう | DIÊN TRƯỜNG | gia hạn |
| 卒業 | そつぎょう | TỐT NGHIỆP | tốt nghiệp (hết hạn) |
| 盛り付け | もりつけ | THỊNH PHÓ | bày món ăn |
| 食材 | しょくざい | THỰC TÀI | nguyên liệu |
| 桜 | さくら | ANH | hoa anh đào |
| 貴重 | きちょう | QUÝ TRỌNG | quý giá |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
