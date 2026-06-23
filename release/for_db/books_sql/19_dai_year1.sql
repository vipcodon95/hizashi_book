-- Hizashi LITE book SQL — Đại Y1
-- curriculum_id = 800000019  (book_seq=19)
-- nguồn: books/19_dai_year1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000019, 'N4', 'markdown_book', 'Du học', 'Đại Y1', 'Bộ sách Hizashi — Đại Y1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000001, 800000019, NULL, 'markdown_book', 'T1. Ngày đầu đặt chân Osaka (来日大阪)', '# Sách du học sinh tiếng Nhật · T1. Ngày đầu đặt chân Osaka (来日大阪)

> **Mục tiêu nhân vật:** Đại 19 tuổi (Hà Nội Ams khoa Tin, đỗ N4 7/2023, học Đông Du HCM 1 năm). Học các mẫu hội thoại tiếng Nhật ngày đầu tới Nhật du học: trả lời 入管 sân bay Kansai, gặp staff trường đón sảnh đến, chào hỏi gia đình homestay Tanaka, hỏi đường + xác nhận thông tin trên tàu Nankai · Midosuji, hỏi lại lễ phép khi không hiểu tiếng Kansai (〜というのは・もう一度お願いします), tự giới thiệu trang trọng với người Nhật cao tuổi.

---

## Bối cảnh

4/4/2024. Đại bay VN318 Hà Nội → Kansai, hạ cánh 13:30. Visa 留学 2 năm, mục tiêu thi vào Khoa Kinh tế ĐH Osaka. Trường Kansai Gogo Gakuin (関西語言学院) cử cô Satou đón ở sảnh đến, đưa về homestay nhà ông Tanaka Tony 65 tuổi + bà Yumi 60 tuổi (không có con) ở khu Tennoji. Chương này tập trung các mẫu câu nền tảng người mới sang du học dùng ngay trong ngày đầu: thủ tục 入管, đối thoại với staff trường, di chuyển tàu điện Osaka, chào hỏi gia đình homestay.

---

## Tình huống 1 — Quầy 入管 sân bay Kansai · 14:00, trả lời cục xuất nhập cảnh

| Vai | Lời thoại |
|---|---|
| 入管 | パスポートとビザを<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho xem hộ chiếu và visa.)* |
| Đại | （<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す）はい、どうぞ。<br>*(Đưa ra. Vâng, đây ạ.)* |
| 入管 | <ruby>滞在<rt>たいざい</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Mục đích lưu trú là gì?)* |
| Đại | <ruby>留学<rt>りゅうがく</rt></ruby>です。<ruby>関西<rt>かんさい</rt></ruby><ruby>語言<rt>ごげん</rt></ruby><ruby>学院<rt>がくいん</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Du học ạ. Em sẽ học ở Kansai Gogo Gakuin.)* |
| 入管 | <ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>留学<rt>りゅうがく</rt></ruby>ビザですね。<ruby>在留<rt>ざいりゅう</rt></ruby>カードをお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Visa du học 2 năm nhỉ. Tôi đưa thẻ cư trú đây.)* |
| Đại | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| 入管 | <ruby>14日<rt>じゅうよっか</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>住所<rt>じゅうしょ</rt></ruby>を<ruby>登録<rt>とうろく</rt></ruby>してくださいね。<br>*(Trong vòng 14 ngày phải đăng ký địa chỉ tại uỷ ban quận nhé.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Quầy 入管 · 14:10, xin giấy phép baito

| Vai | Lời thoại |
|---|---|
| 入管 | アルバイトはしますか？<br>*(Có định đi làm thêm không?)* |
| Đại | はい、<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>働<rt>はたら</rt></ruby>きたいです。<br>*(Vâng, em muốn làm một chút ạ.)* |
| 入管 | では「<ruby>資格外<rt>しかくがい</rt></ruby><ruby>活動<rt>かつどう</rt></ruby><ruby>許可<rt>きょか</rt></ruby>」の<ruby>申請書<rt>しんせいしょ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>してください。<br>*(Vậy điền vào đơn xin "giấy phép hoạt động ngoài tư cách lưu trú" đi.)* |
| Đại | すみません、「<ruby>資格外<rt>しかくがい</rt></ruby><ruby>活動<rt>かつどう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "shikakugai katsudou" nghĩa là gì ạ?)* |
| 入管 | <ruby>留学<rt>りゅうがく</rt></ruby>ビザの<ruby>本来<rt>ほんらい</rt></ruby>の<ruby>目的<rt>もくてき</rt></ruby>は<ruby>勉強<rt>べんきょう</rt></ruby>です。アルバイトはそれ<ruby>以外<rt>いがい</rt></ruby>の<ruby>活動<rt>かつどう</rt></ruby>なので、<ruby>許可<rt>きょか</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Mục đích chính của visa du học là học tập. Làm thêm là hoạt động ngoài, nên cần xin phép.)* |
| Đại | なるほど。<ruby>週<rt>しゅう</rt></ruby><ruby>何時間<rt>なんじかん</rt></ruby>まで<ruby>働<rt>はたら</rt></ruby>けますか？<br>*(Ra vậy. Em được làm tối đa bao nhiêu tiếng một tuần ạ?)* |
| 入管 | <ruby>週<rt>しゅう</rt></ruby><ruby>28時間<rt>にじゅうはちじかん</rt></ruby>までです。<ruby>守<rt>まも</rt></ruby>らないとビザが<ruby>更新<rt>こうしん</rt></ruby>できなくなりますよ。<br>*(Tối đa 28 tiếng/tuần. Không tuân thủ là không gia hạn được visa đâu.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em nhất định tuân thủ.)* |

---

## Tình huống 3 — Sảnh đến Kansai · 14:30, gặp staff trường tiếng

*Đại kéo vali ra sảnh đến, tìm bảng cầm tay có tên mình. Cô Satou người Nhật, ngoài 30 tuổi, mặc vest đen, đứng cầm bảng「グエン・ヴァン・ダイ」.*

| Vai | Lời thoại |
|---|---|
| Satou | <ruby>関西<rt>かんさい</rt></ruby><ruby>語言<rt>ごげん</rt></ruby><ruby>学院<rt>がくいん</rt></ruby>です！グエンさんですか？<br>*(Kansai Gogo Gakuin đây! Anh Nguyễn phải không ạ?)* |
| Đại | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい！<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Vâng! Rất hân hạnh. Em tên là Nguyễn Văn Đại. Mong cô giúp đỡ ạ.)* |
| Satou | はじめまして、<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>長旅<rt>ながたび</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Hân hạnh, tôi là Satou. Đường dài vất vả rồi. Em có khoẻ không?)* |
| Đại | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ありがとうございます。<br>*(Vâng, em vẫn ổn ạ. Em cảm ơn cô.)* |
| Satou | これからホームステイ<ruby>先<rt>さき</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんのお<ruby>家<rt>うち</rt></ruby>まで<ruby>2時間<rt>にじかん</rt></ruby>ぐらいかかります。<br>*(Từ giờ về nhà homestay của ông Tanaka mất khoảng 2 tiếng.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rõ ạ. Mong cô giúp đỡ.)* |

---

## Tình huống 4 — Quầy mua vé Nankai · 14:50, xác nhận lộ trình

| Vai | Lời thoại |
|---|---|
| Satou | <ruby>本日<rt>ほんじつ</rt></ruby>のルートを<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Tôi giải thích lộ trình hôm nay nhé.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin nghe ạ.)* |
| Satou | まず<ruby>南海電鉄<rt>なんかいでんてつ</rt></ruby>で<ruby>難波<rt>なんば</rt></ruby>まで<ruby>45分<rt>よんじゅうごふん</rt></ruby>。それから<ruby>地下鉄<rt>ちかてつ</rt></ruby><ruby>御堂筋線<rt>みどうすじせん</rt></ruby>に<ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えて<ruby>天王寺<rt>てんのうじ</rt></ruby>まで<ruby>10分<rt>じゅっぷん</rt></ruby>です。<br>*(Trước hết đi Nankai đến Namba 45 phút. Rồi đổi sang tuyến metro Midosuji đến Tennoji 10 phút.)* |
| Đại | <ruby>南海電鉄<rt>なんかいでんてつ</rt></ruby>から<ruby>御堂筋線<rt>みどうすじせん</rt></ruby>に<ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>える、ということですね。<br>*(Tức là đi Nankai rồi đổi sang Midosuji, đúng không ạ?)* |
| Satou | そうです。<ruby>難波<rt>なんば</rt></ruby><ruby>駅<rt>えき</rt></ruby>で<ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えますよ。<ruby>切符<rt>きっぷ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>買<rt>か</rt></ruby>いますね。<br>*(Đúng vậy. Đổi tàu tại ga Namba. Vé để tôi mua nhé.)* |
| Đại | すみません、ICOCAというカードがあると<ruby>聞<rt>き</rt></ruby>きました。それは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, em nghe nói có thẻ ICOCA. Đó là gì ạ?)* |
| Satou | あ、ICOCAは<ruby>関西<rt>かんさい</rt></ruby>のICカードです。<ruby>電車<rt>でんしゃ</rt></ruby>もコンビニも<ruby>使<rt>つか</rt></ruby>えます。<ruby>明日<rt>あした</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>しますから、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>切符<rt>きっぷ</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(À, ICOCA là thẻ IC vùng Kansai. Dùng được cả tàu lẫn cửa hàng tiện lợi. Mai trường sẽ hướng dẫn, hôm nay đi vé giấy là được.)* |

---

## Tình huống 5 — Trên tàu Nankai · 15:30, hỏi chuyện cô Satou về Osaka

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>大阪<rt>おおさか</rt></ruby>は<ruby>東京<rt>とうきょう</rt></ruby>とどう<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Chị Satou, Osaka khác Tokyo thế nào ạ?)* |
| Satou | <ruby>大阪<rt>おおさか</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>はフレンドリーですよ。それから<ruby>関西弁<rt>かんさいべん</rt></ruby>を<ruby>話<rt>はな</rt></ruby>します。<br>*(Người Osaka thân thiện lắm. Và họ nói tiếng Kansai.)* |
| Đại | <ruby>関西弁<rt>かんさいべん</rt></ruby>...というのは？<br>*(Kansai-ben... nghĩa là gì ạ?)* |
| Satou | <ruby>方言<rt>ほうげん</rt></ruby>のことです。<ruby>例<rt>たと</rt></ruby>えば「ありがとう」は「おおきに」、「<ruby>違<rt>ちが</rt></ruby>う」は「ちゃう」、「<ruby>本当<rt>ほんとう</rt></ruby>」は「ほんま」と<ruby>言<rt>い</rt></ruby>います。<br>*(Là phương ngữ. Ví dụ "cảm ơn" nói "ookini", "không phải" nói "chau", "thật" nói "honma".)* |
| Đại | え、<ruby>難<rt>むずか</rt></ruby>しいですね。<ruby>学校<rt>がっこう</rt></ruby>では<ruby>標準語<rt>ひょうじゅんご</rt></ruby>ですか？<br>*(Ơ, khó cô nhỉ. Ở trường thì dùng tiếng chuẩn ạ?)* |
| Satou | はい、<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>標準語<rt>ひょうじゅんご</rt></ruby>です。でも<ruby>町<rt>まち</rt></ruby>では<ruby>関西弁<rt>かんさいべん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きますよ。<ruby>3ヶ月<rt>さんかげつ</rt></ruby>もすれば<ruby>慣<rt>な</rt></ruby>れます。<br>*(Vâng, giờ học dùng tiếng chuẩn. Nhưng ngoài phố thì nghe tiếng Kansai. Khoảng 3 tháng là quen.)* |
| Đại | <ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em sẽ cố gắng.)* |

---

## Tình huống 6 — Đổi tàu Namba · 16:30, hỏi đường lên Midosuji

| Vai | Lời thoại |
|---|---|
| Satou | ここが<ruby>難波<rt>なんば</rt></ruby><ruby>駅<rt>えき</rt></ruby>です。<ruby>大阪<rt>おおさか</rt></ruby><ruby>最大<rt>さいだい</rt></ruby>の<ruby>繁華街<rt>はんかがい</rt></ruby>ですよ。<br>*(Đây là ga Namba. Khu phố sầm uất nhất Osaka.)* |
| Đại | <ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いですね！<br>*(Đông người quá ạ!)* |
| Satou | <ruby>御堂筋線<rt>みどうすじせん</rt></ruby>のホームはこちらです。<ruby>看板<rt>かんばん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>赤<rt>あか</rt></ruby>い<ruby>線<rt>せん</rt></ruby>が<ruby>御堂筋線<rt>みどうすじせん</rt></ruby>です。<br>*(Sân ga Midosuji ở phía này. Xem biển nhé. Vạch đỏ là Midosuji.)* |
| Đại | （<ruby>看板<rt>かんばん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>赤<rt>あか</rt></ruby>は<ruby>御堂筋線<rt>みどうすじせん</rt></ruby>、ですね。<ruby>方向<rt>ほうこう</rt></ruby>はどちらですか？<br>*(Nhìn biển. Đỏ là Midosuji ạ. Hướng nào ạ?)* |
| Satou | <ruby>天王寺<rt>てんのうじ</rt></ruby>・あびこ<ruby>方面<rt>ほうめん</rt></ruby>です。<ruby>逆<rt>ぎゃく</rt></ruby>は<ruby>梅田<rt>うめだ</rt></ruby>・<ruby>新大阪<rt>しんおおさか</rt></ruby><ruby>方面<rt>ほうめん</rt></ruby>ですから、<ruby>間違<rt>まちが</rt></ruby>えないでくださいね。<br>*(Hướng Tennoji – Abiko. Hướng ngược lại là Umeda – Shin-Osaka, đừng nhầm nhé.)* |
| Đại | はい、メモします。<ruby>天王寺<rt>てんのうじ</rt></ruby><ruby>方面<rt>ほうめん</rt></ruby>ですね。<br>*(Vâng, em ghi lại. Hướng Tennoji ạ.)* |

---

## Tình huống 7 — Trên metro Midosuji · 16:50, ngắm Abeno Harukas

| Vai | Lời thoại |
|---|---|
| Satou | あの<ruby>高<rt>たか</rt></ruby>いビルが<ruby>見<rt>み</rt></ruby>えますか？あべのハルカスです。<ruby>日本<rt>にほん</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>高<rt>たか</rt></ruby>いビルですよ。<br>*(Có thấy toà nhà cao kia không? Abeno Harukas đấy. Toà nhà cao nhất Nhật Bản đó.)* |
| Đại | <ruby>高<rt>たか</rt></ruby>さは<ruby>何<rt>なん</rt></ruby>メートルですか？<br>*(Cao bao nhiêu mét ạ?)* |
| Satou | <ruby>300<rt>さんびゃく</rt></ruby>メートルです。<ruby>天王寺<rt>てんのうじ</rt></ruby><ruby>駅<rt>えき</rt></ruby>のすぐ<ruby>上<rt>うえ</rt></ruby>にあります。<ruby>田中<rt>たなか</rt></ruby>さんのお<ruby>家<rt>うち</rt></ruby>から<ruby>歩<rt>ある</rt></ruby>いて<ruby>10分<rt>じゅっぷん</rt></ruby>ですよ。<br>*(300 mét. Ngay phía trên ga Tennoji. Đi bộ từ nhà ông Tanaka 10 phút.)* |
| Đại | すごいですね。<ruby>展望台<rt>てんぼうだい</rt></ruby>はありますか？<br>*(Hoành tráng quá. Có đài quan sát không ạ?)* |
| Satou | はい、<ruby>60階<rt>ろくじゅっかい</rt></ruby>にあります。<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってみてくださいね。<br>*(Có, ở tầng 60. Cuối tuần em đi thử nhé.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>きます。<br>*(Vâng, nhất định em đi.)* |

---

## Tình huống 8 — Trước nhà Tanaka · 17:15, bấm chuông cửa

*Khu nhà ở yên tĩnh phía nam ga Tennoji. Nhà Tanaka kiểu Nhật truyền thống hai tầng, có vườn nhỏ. Satou bấm chuông cửa.*

| Vai | Lời thoại |
|---|---|
| Satou | （インターホンを<ruby>押<rt>お</rt></ruby>す）こんにちは、<ruby>関西<rt>かんさい</rt></ruby><ruby>語言<rt>ごげん</rt></ruby><ruby>学院<rt>がくいん</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>です。<br>*(Bấm chuông. Xin chào, Satou trường Kansai Gogo Gakuin đây ạ.)* |
| Bà Yumi | （<ruby>出<rt>で</rt></ruby>てくる）はーい！お<ruby>待<rt>ま</rt></ruby>ちしておりました！ダイくん、ようこそ！<br>*(Bước ra. Vâng! Tôi đang chờ! Đại, hoan nghênh nhé!)* |
| Đại | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして！グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>3ヶ月<rt>さんかげつ</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi sâu. Rất hân hạnh! Em tên là Nguyễn Văn Đại. 3 tháng tới mong cô chú giúp đỡ ạ.)* |
| Yumi | こちらこそ！<ruby>田中<rt>たなか</rt></ruby>ユミです。<ruby>夫<rt>おっと</rt></ruby>はトニーやで。さあ、<ruby>中<rt>なか</rt></ruby>へどうぞ。<br>*(Cô mới phải cảm ơn! Cô là Tanaka Yumi. Chồng cô là Tony nhé. Nào, mời vào trong.)* |
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |

---

## Tình huống 9 — Sảnh nhà Tanaka · 17:20, cởi giày + quy tắc 玄関

| Vai | Lời thoại |
|---|---|
| Tony | （<ruby>奥<rt>おく</rt></ruby>から<ruby>出<rt>で</rt></ruby>てくる）おお、ダイくん！ようこそ〜！<ruby>田中<rt>たなか</rt></ruby>トニーです。<br>*(Từ trong ra. Ồ, Đại! Hoan nghênh nhé! Tôi là Tanaka Tony.)* |
| Đại | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして、グエン・ヴァン・ダイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cúi đầu. Rất hân hạnh, em là Nguyễn Văn Đại. Mong chú giúp đỡ.)* |
| Tony | <ruby>長旅<rt>ながたび</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさん。<ruby>靴<rt>くつ</rt></ruby>を<ruby>脱<rt>ぬ</rt></ruby>いで<ruby>上<rt>あ</rt></ruby>がってや。スリッパはそこにあるで。<br>*(Đường xa vất vả. Cởi giày bước lên đi. Dép trong nhà ở chỗ kia.)* |
| Đại | はい。（<ruby>靴<rt>くつ</rt></ruby>を<ruby>脱<rt>ぬ</rt></ruby>いで<ruby>揃<rt>そろ</rt></ruby>える）<br>*(Vâng. Cởi giày, xếp ngay ngắn.)* |
| Yumi | あら、<ruby>靴<rt>くつ</rt></ruby>を<ruby>揃<rt>そろ</rt></ruby>えてくれたん？<ruby>礼儀正<rt>れいぎただ</rt></ruby>しい<ruby>子<rt>こ</rt></ruby>やね。<br>*(Ơ, cháu xếp giày à? Lễ phép quá.)* |
| Đại | ベトナムでも<ruby>母<rt>はは</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(Ở Việt Nam mẹ em cũng dạy ạ.)* |
| Tony | ええお<ruby>母<rt>かあ</rt></ruby>さんやな。さあ、リビングに<ruby>来<rt>き</rt></ruby>いや。<br>*(Mẹ cháu giỏi nhỉ. Nào, vào phòng khách đi.)* |

---

## Tình huống 10 — Phòng khách · 17:30, Satou bàn giao + dặn lịch ngày mai

| Vai | Lời thoại |
|---|---|
| Satou | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>9時<rt>くじ</rt></ruby>に<ruby>学校<rt>がっこう</rt></ruby>でクラス<ruby>分<rt>わ</rt></ruby>けテストです。<br>*(Ông bà Tanaka, hôm nay cảm ơn ạ. Sáng mai 9 giờ có bài kiểm tra phân lớp ở trường.)* |
| Tony | <ruby>9時<rt>くじ</rt></ruby>やな。<ruby>家<rt>いえ</rt></ruby>から<ruby>歩<rt>ある</rt></ruby>いて<ruby>15分<rt>じゅうごふん</rt></ruby>やから、<ruby>8時半<rt>はちじはん</rt></ruby>に<ruby>出<rt>で</rt></ruby>たらええで。<br>*(9 giờ à. Đi bộ từ nhà 15 phút, 8 rưỡi đi là vừa.)* |
| Đại | ありがとうございます。<ruby>道<rt>みち</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cháu cảm ơn ạ. Chú chỉ đường giúp cháu được không?)* |
| Tony | <ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>するわ。<ruby>地図<rt>ちず</rt></ruby>も<ruby>用意<rt>ようい</rt></ruby>してるで。<br>*(Sáng mai chú giải thích. Chú đã chuẩn bị cả bản đồ rồi.)* |
| Satou | では、<ruby>失礼<rt>しつれい</rt></ruby>します。ダイさん、<ruby>明日<rt>あした</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>でお<ruby>会<rt>あ</rt></ruby>いしましょう。<br>*(Vậy tôi xin phép. Đại, mai gặp ở trường nhé.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました！<br>*(Hôm nay cảm ơn cô rất nhiều ạ!)* |

---

## Tình huống 11 — Phòng riêng tầng 2 · 18:00, Yumi giới thiệu phòng

| Vai | Lời thoại |
|---|---|
| Yumi | こっちがダイくんの<ruby>部屋<rt>へや</rt></ruby>やで。<ruby>6畳<rt>ろくじょう</rt></ruby>の<ruby>和室<rt>わしつ</rt></ruby>やね。<br>*(Phòng của Đại đây. Phòng kiểu Nhật 6 chiếu.)* |
| Đại | わあ、<ruby>畳<rt>たたみ</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>ですね。<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Wow, phòng chiếu tatami ạ. Lần đầu em được ở.)* |
| Yumi | <ruby>布団<rt>ふとん</rt></ruby>はこの<ruby>押<rt>お</rt></ruby>し<ruby>入<rt>い</rt></ruby>れに<ruby>入<rt>はい</rt></ruby>っとる。<ruby>朝<rt>あさ</rt></ruby>になったら<ruby>畳<rt>たた</rt></ruby>んでしまってな。<br>*(Chăn nệm cất ở tủ âm tường này. Sáng dậy gấp lại cất vào nhé.)* |
| Đại | すみません、「<ruby>押<rt>お</rt></ruby>し<ruby>入<rt>い</rt></ruby>れ」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "oshiire" là gì ạ?)* |
| Yumi | （ふすまを<ruby>開<rt>あ</rt></ruby>ける）これやで。<ruby>布団<rt>ふとん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる<ruby>収納<rt>しゅうのう</rt></ruby>のことや。<br>*(Mở cửa trượt. Đây nè. Là tủ chứa chăn đệm.)* |
| Đại | なるほど！ベトナムの<ruby>家<rt>いえ</rt></ruby>にはないですね。<br>*(Ra vậy! Nhà ở Việt Nam không có ạ.)* |
| Yumi | <ruby>机<rt>つくえ</rt></ruby>、<ruby>本棚<rt>ほんだな</rt></ruby>、エアコンもあるで。Wi-Fiのパスワードはこの<ruby>紙<rt>かみ</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてあるからな。<br>*(Có bàn học, kệ sách, điều hoà. Mật khẩu Wi-Fi cô ghi ra giấy này rồi nhé.)* |
| Đại | ありがとうございます！<br>*(Cháu cảm ơn cô ạ!)* |

---

## Tình huống 12 — Bàn ăn · 19:00, bữa cơm đầu tiên + Yumi biết tiếng Việt

*Bữa cơm tối đầu tiên: cô Yumi cố ý nấu món Việt Nam — gỏi miến và súp kiểu Việt — chào mừng Đại.*

| Vai | Lời thoại |
|---|---|
| Yumi | ダイくん、<ruby>初日<rt>しょにち</rt></ruby>やから<ruby>春雨<rt>はるさめ</rt></ruby>サラダとベトナム<ruby>風<rt>ふう</rt></ruby>スープを<ruby>作<rt>つく</rt></ruby>ったで！<br>*(Đại, vì là ngày đầu nên cô làm gỏi miến với súp kiểu Việt nhé!)* |
| Đại | え！？ベトナム<ruby>料理<rt>りょうり</rt></ruby>ですか！？<br>*(Ơ!? Món Việt ạ!?)* |
| Tony | ユミは<ruby>料理<rt>りょうり</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>やで。<ruby>食<rt>た</rt></ruby>べてみい。<br>*(Yumi nấu giỏi lắm. Ăn thử đi.)* |
| Đại | いただきます。（<ruby>食<rt>た</rt></ruby>べる）...おいしいです！<ruby>本物<rt>ほんもの</rt></ruby>のベトナム<ruby>料理<rt>りょうり</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>です。<br>*(Mời ăn ạ. Ăn. Ngon quá! Đúng vị Việt Nam thật.)* |
| Yumi | (lơ lớ tiếng Việt) Em mệt không? Ăn xong tắm rồi đi ngủ nhé.<br>*(Em mệt không?)* |
| Đại | （<ruby>驚<rt>おどろ</rt></ruby>く）え！？ベトナム<ruby>語<rt>ご</rt></ruby>！？<br>*(Ngạc nhiên. Ơ!? Tiếng Việt ạ!?)* |
| Yumi | ふふ、<ruby>少<rt>すこ</rt></ruby>しだけやで。ダイくんは<ruby>4人目<rt>よにんめ</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby>やねん。<br>*(Hihi, chỉ chút thôi. Đại là du học sinh Việt thứ 4 nhà cô đó.)* |
| Đại | <ruby>感激<rt>かんげき</rt></ruby>しました。ありがとうございます。<br>*(Cháu cảm động quá. Cháu cảm ơn cô.)* |
| Tony | <ruby>俺<rt>おれ</rt></ruby>たち<ruby>子供<rt>こども</rt></ruby>がおらんからな。ダイくんは<ruby>息子<rt>むすこ</rt></ruby>みたいなもんや。<br>*(Cô chú không có con mà. Đại như con trai vậy.)* |
| Đại | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cúi sâu. Vâng, cháu nhờ cô chú ạ.)* |

---

## Tình huống 13 — Bàn ăn · 19:30, Tony giảng quy tắc gia đình

| Vai | Lời thoại |
|---|---|
| Tony | ダイくん、<ruby>家<rt>いえ</rt></ruby>のルールを<ruby>少<rt>すこ</rt></ruby>し<ruby>説明<rt>せつめい</rt></ruby>するで。<br>*(Đại, chú giải thích sơ vài quy tắc trong nhà nhé.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời chú ạ.)* |
| Tony | まず、<ruby>朝<rt>あさ</rt></ruby><ruby>7時<rt>しちじ</rt></ruby>に<ruby>朝<rt>あさ</rt></ruby>ごはん、<ruby>夜<rt>よる</rt></ruby><ruby>7時<rt>しちじ</rt></ruby>に<ruby>晩<rt>ばん</rt></ruby>ごはんや。<ruby>食<rt>た</rt></ruby>べられへん<ruby>時<rt>とき</rt></ruby>はLINEで<ruby>連絡<rt>れんらく</rt></ruby>してな。<br>*(Đầu tiên, sáng 7 giờ ăn sáng, tối 7 giờ ăn tối. Lúc nào không ăn được thì nhắn LINE nhé.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Tony | お<ruby>風呂<rt>ふろ</rt></ruby>は<ruby>夜<rt>よる</rt></ruby><ruby>9時<rt>くじ</rt></ruby>から<ruby>11時<rt>じゅういちじ</rt></ruby>まで。ルールはまた<ruby>後<rt>あと</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>するわ。<br>*(Tắm bồn từ 9 giờ đến 11 giờ tối. Quy tắc cụ thể chú nói sau.)* |
| Yumi | お<ruby>洗濯<rt>せんたく</rt></ruby>は<ruby>週<rt>しゅう</rt></ruby><ruby>2回<rt>にかい</rt></ruby>、<ruby>火<rt>か</rt></ruby><ruby>曜<rt>よう</rt></ruby>と<ruby>金<rt>きん</rt></ruby><ruby>曜<rt>よう</rt></ruby>やで。<ruby>洗濯機<rt>せんたくき</rt></ruby>は<ruby>自由<rt>じゆう</rt></ruby>に<ruby>使<rt>つか</rt></ruby>ってええよ。<br>*(Giặt đồ tuần 2 lần, Thứ Ba với Thứ Sáu. Máy giặt cháu dùng thoải mái.)* |
| Đại | ゴミは<ruby>分<rt>わ</rt></ruby>けますか？<br>*(Rác có phân loại không ạ?)* |
| Tony | おお、ええ<ruby>質問<rt>しつもん</rt></ruby>や！<ruby>大阪<rt>おおさか</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>分類<rt>ぶんるい</rt></ruby>あるで。これは<ruby>来週<rt>らいしゅう</rt></ruby><ruby>詳<rt>くわ</rt></ruby>しく<ruby>説明<rt>せつめい</rt></ruby>するわ。<br>*(Ô, câu hỏi hay! Osaka có 5 loại rác. Tuần sau chú giải thích kỹ.)* |

---

## Tình huống 14 — Phòng riêng · 22:00, gọi LINE video về Việt Nam

> Cảnh tiếng Việt — Đại gọi LINE video về cho bố mẹ và Mai (vợ chưa cưới) sau khi đã ổn định.

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Mẹ ơi, con đến nơi rồi. Đang ở nhà cô chú homestay. |
| Mẹ | (VN) Trời ơi mẹ lo cả ngày. Đi đường có mệt không con? |
| Đại | (VN) Con không sao mẹ. Cô Satou ở trường ra tận sân bay đón. Cô chú Tanaka tử tế lắm. |
| Bố | (VN) Cô chú có khó tính không con? |
| Đại | (VN) Không bố. Cô Yumi còn nấu cơm Việt mời con. Cô biết vài câu tiếng Việt. Con là du học sinh Việt thứ 4 cô chú nhận. |
| Mẹ | (VN) Tuyệt quá. Vậy thì con cũng đỡ cô đơn. Mai bắt đầu đi học chưa? |
| Đại | (VN) Mai 9 giờ kiểm tra phân lớp. Chú Tony bảo từ nhà đi bộ đến trường 15 phút. |
| Mai | (VN, ghé màn hình) Anh! Em đến chơi với cô. Anh khoẻ không? |
| Đại | (VN) Khoẻ em. Hôm nay anh học được mấy từ Nhật mới: 在留カード, 関西弁, 押し入れ. Người Osaka nói tiếng riêng, gọi là Kansai-ben. |
| Mai | (VN) Anh ghi vào sổ đi. Hai năm visa qua nhanh thôi, em đợi anh. |
| Đại | (VN) Ừ, anh sẽ cố. Mục tiêu là đỗ Khoa Kinh tế ĐH Osaka. Còn hai năm. |
| Bố | (VN) Nhớ 3 điều bố dặn: học là chính, tránh nhóm xấu, mỗi tuần gọi về một lần. |
| Đại | (VN) Vâng bố! Thôi muộn rồi, con đi ngủ. Mai con báo kết quả phân lớp. |
| Mẹ | (VN) Ngủ sớm con. Giữ sức khoẻ. |

---

## Đọng lại chương 1

Ngày đầu Đại đặt chân Kansai, học các mẫu câu nền tảng người mới sang du học dùng ngay: **trả lời 入管** (滞在目的は留学です・関西語言学院で勉強します), **xin giấy phép baito** (資格外活動許可・週28時間以内), **chào hỏi staff trường** (〜と申します・よろしくお願いいたします), **hỏi đường + xác nhận lộ trình tàu điện** (〜に乗り換える・〜方面ですね), **hỏi lại lễ phép khi chưa hiểu** (〜というのは？・もう一度お願いします), và **chào hỏi gia đình homestay** (3ヶ月お世話になります・失礼します). Đại cũng học cú sốc nhỏ về **関西弁** (おおきに・ちゃう・ほんま), **押し入れ** + **6畳の和室**, và quy tắc **玄関** cởi giày xếp ngay ngắn. Bất ngờ ấm áp: cô Yumi biết vài câu tiếng Việt và nấu món Việt đón Đại — vợ chồng không con coi Đại như con trai. Tối Đại gọi LINE về cho bố mẹ và Mai, báo cáo ngày đầu an toàn.

> Từ vựng & mẫu câu chương này: 留学・在留カード・住所登録・資格外活動許可・週28時間・関西国際空港・南海電鉄・御堂筋線・乗り換え・難波・天王寺・あべのハルカス・関西弁・おおきに・ちゃう・ほんま・標準語・玄関・押し入れ・布団・和室・6畳・3ヶ月お世話になります・〜と申します・〜というのは・〜方面ですね・失礼します・よろしくお願いいたします

## Bí quyết chương

- **Sân bay Kansai (KIX) trên đảo nhân tạo**: Đặc trưng vùng — khác Narita/Haneda Tokyo. Du học sinh Osaka đi cửa này.
- **資格外活動許可 nộp ngay tại 入管**: Mẹo thực tế — nộp ngay khi nhập cảnh, đỡ phải lên 入管 lần 2.
- **Tuyến Nankai + Midosuji**: Hai tuyến Đại sẽ đi suốt 2 năm. Midosuji vạch đỏ, ai cũng nhớ màu trước rồi mới nhớ tên.
- **関西弁 cú sốc nhỏ**: Đại sẽ học dần qua nhà Tanaka — おおきに・ちゃう・ほんま là 3 từ mở đầu.
- **Nhà Tanaka không con**: Tạo cầu nối tình cảm — bù lại khoảng cách với bố mẹ Hà Nội.
- **Cô Yumi biết tiếng Việt**: Bất ngờ ấm áp ngày đầu — báo hiệu sự thân thiết về sau.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入管 | にゅうかん | NHẬP QUẢN | Cục Quản lý xuất nhập cảnh |
| 滞在目的 | たいざいもくてき | TRỆ TẠI MỤC ĐÍCH | Mục đích lưu trú |
| 留学 | りゅうがく | LƯU HỌC | Du học |
| 在留カード | ざいりゅうカード | TẠI LƯU | Thẻ cư trú |
| 市役所 | しやくしょ | THỊ DỊCH SỞ | Uỷ ban thành phố/quận |
| 住所登録 | じゅうしょとうろく | TRÚ SỞ ĐĂNG LỤC | Đăng ký địa chỉ |
| 承知 | しょうち | THỪA TRI | Hiểu rõ, tiếp thu |
| 資格外活動許可 | しかくがいかつどうきょか | TƯ CÁCH NGOẠI HOẠT ĐỘNG HỨA KHẢ | Giấy phép hoạt động ngoài tư cách lưu trú |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | Đơn xin |
| 記入 | きにゅう | KÝ NHẬP | Điền vào |
| 本来 | ほんらい | BẢN LAI | Vốn dĩ, ban đầu |
| 更新 | こうしん | CANH TÂN | Gia hạn, cập nhật |
| 関西語言学院 | かんさいごげんがくいん | QUAN TÂY NGỮ NGÔN HỌC VIỆN | Trường Kansai Gogo Gakuin |
| 長旅 | ながたび | TRƯỜNG LỮ | Hành trình dài |
| 体調 | たいちょう | THỂ ĐIỀU | Tình trạng sức khoẻ |
| 南海電鉄 | なんかいでんてつ | NAM HẢI ĐIỆN THIẾT | Hãng tàu điện Nankai |
| 地下鉄 | ちかてつ | ĐỊA HẠ THIẾT | Tàu điện ngầm |
| 御堂筋線 | みどうすじせん | NGỰ ĐƯỜNG CÂN TUYẾN | Tuyến Midosuji |
| 乗り換え | のりかえ | THỪA HOÁN | Chuyển tàu |
| 切符 | きっぷ | THIẾT PHÙ | Vé |
| 関西弁 | かんさいべん | QUAN TÂY BIỆN | Tiếng Kansai |
| 方言 | ほうげん | PHƯƠNG NGÔN | Phương ngữ |
| 標準語 | ひょうじゅんご | TIÊU CHUẨN NGỮ | Tiếng chuẩn |
| 繁華街 | はんかがい | PHỒN HOA NHAI | Khu phố sầm uất |
| 看板 | かんばん | KHÁN BẢN | Biển hiệu |
| 方面 | ほうめん | PHƯƠNG DIỆN | Hướng, phía |
| 展望台 | てんぼうだい | TRIỂN VỌNG ĐÀI | Đài quan sát |
| 玄関 | げんかん | HUYỀN QUAN | Sảnh vào (cởi giày) |
| 礼儀正しい | れいぎただしい | LỄ NGHI CHÍNH | Lễ phép, đúng mực |
| 押し入れ | おしいれ | ÁP NHẬP | Tủ âm tường |
| 収納 | しゅうのう | THU NẠP | Cất giữ, nơi cất |
| 和室 | わしつ | HOÀ THẤT | Phòng kiểu Nhật |
| 畳 | たたみ | ĐIỆP | Chiếu tatami |
| 布団 | ふとん | BỐ ĐOÀN | Chăn nệm Nhật |
| 本棚 | ほんだな | BẢN PHỐNG | Kệ sách |
| 春雨 | はるさめ | XUÂN VŨ | Miến |
| 本物 | ほんもの | BẢN VẬT | Đồ thật, chính gốc |
| 感激 | かんげき | CẢM KÍCH | Cảm động |
| 風呂 | ふろ | PHONG LỮ | Bồn tắm |
| 洗濯 | せんたく | TẨY TRẠC | Giặt giũ |
| 分類 | ぶんるい | PHÂN LOẠI | Phân loại |
| 失礼 | しつれい | THẤT LỄ | Xin phép, thất lễ |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000002, 800000019, NULL, 'markdown_book', 'T2. Ngày đầu đến trường tiếng (学校初日)', '# Sách du học sinh tiếng Nhật · T2. Ngày đầu đến trường tiếng (学校初日)

> **Mục tiêu nhân vật:** 5/4/2024. Đại đi học ngày đầu tại Kansai Gogo Gakuin. Học các mẫu hội thoại của du học sinh ngày đầu lên trường: hỏi đường + xác nhận với chủ nhà homestay, làm thủ tục check-in lễ tân, tự giới thiệu giữa lớp 80 quốc tịch, làm quen 同期 trong và ngoài Việt Nam (関西弁 + tiếng Anh + tiếng Nhật), trả lời câu hỏi của 校長 + cô chủ nhiệm trong bài kiểm tra phân lớp (記述 + 会話), trao đổi LINE với bạn cùng lớp.

---

## Bối cảnh

5/4/2024, ngày đầu Đại đến Kansai Gogo Gakuin tại Shitennoji, Osaka. Trường có 800 sinh viên, chia làm 3 nhóm lớp: A (luyện N1), B (N2-N3), C (N4-N5). Mỗi lớp 15-20 người mix quốc tịch. Sáng làm thủ tục + nghe校長 nói, chiều thi phân lớp (記述 30 phút + 会話 10 phút). Chương này tập trung các mẫu câu Đại dùng trong ngày đầu lên trường — từ chào hỏi gia đình homestay buổi sáng, tự giới thiệu trước cô Yamada, cho đến trao đổi LINE với bạn lớp B cuối ngày.

---

## Tình huống 1 — Bàn ăn nhà Tanaka · 6:30, chào sáng + xin chỉ đường

| Vai | Lời thoại |
|---|---|
| Yumi | （ノック）ダイくん、おはよう！<ruby>朝<rt>あさ</rt></ruby>ごはんできてるで。<br>*(Gõ cửa. Đại, chào buổi sáng! Cơm sáng cô làm xong rồi.)* |
| Đại | はい、おはようございます！<ruby>今<rt>いま</rt></ruby><ruby>降<rt>お</rt></ruby>ります。<br>*(Vâng, cháu chào cô ạ! Cháu xuống ngay.)* |
| Tony | （<ruby>食卓<rt>しょくたく</rt></ruby>）パンと<ruby>卵<rt>たまご</rt></ruby>と<ruby>味噌汁<rt>みそしる</rt></ruby>やで。<ruby>味噌汁<rt>みそしる</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてかな？<br>*(Bàn ăn. Bánh mì, trứng với canh miso đây nào. Canh miso là lần đầu nhỉ?)* |
| Đại | はい、<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Vâng, lần đầu ạ.)* |
| Đại | （<ruby>飲<rt>の</rt></ruby>む）…おいしいです！<br>*(Húp một ngụm. Ngon ạ!)* |
| Yumi | よかった。<ruby>朝<rt>あさ</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby>こんな<ruby>感<rt>かん</rt></ruby>じやで。<br>*(May quá. Buổi sáng nhà cô ngày nào cũng kiểu này.)* |
| Đại | トニーさん、<ruby>学校<rt>がっこう</rt></ruby>までの<ruby>道<rt>みち</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Bác Tony ơi, bác chỉ giúp cháu đường đến trường được không ạ?)* |

---

## Tình huống 2 — Bàn ăn · 6:50, Tony chỉ đường chi tiết

| Vai | Lời thoại |
|---|---|
| Tony | （<ruby>地図<rt>ちず</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げる）<ruby>家<rt>いえ</rt></ruby>から<ruby>歩<rt>ある</rt></ruby>いて<ruby>15分<rt>じゅうごふん</rt></ruby>や。<br>*(Trải bản đồ. Đi bộ từ nhà 15 phút.)* |
| Tony | まず<ruby>家<rt>いえ</rt></ruby>を<ruby>出<rt>で</rt></ruby>たら<ruby>左<rt>ひだり</rt></ruby>に<ruby>曲<rt>ま</rt></ruby>がる。<br>*(Ra khỏi nhà rẽ trái.)* |
| Tony | <ruby>大通<rt>おおどお</rt></ruby>りを<ruby>渡<rt>わた</rt></ruby>って、コンビニを<ruby>通<rt>とお</rt></ruby>り<ruby>過<rt>す</rt></ruby>ぎる。<br>*(Sang đường lớn, đi qua cửa hàng tiện lợi.)* |
| Tony | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>信号<rt>しんごう</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>。お<ruby>寺<rt>てら</rt></ruby>を<ruby>過<rt>す</rt></ruby>ぎたら<ruby>学校<rt>がっこう</rt></ruby>の<ruby>看板<rt>かんばん</rt></ruby>が<ruby>見<rt>み</rt></ruby>えるで。<br>*(Đèn giao thông thứ 3 rẽ phải. Qua ngôi chùa là thấy biển trường.)* |
| Đại | （メモする）<ruby>左<rt>ひだり</rt></ruby>→<ruby>大通<rt>おおどお</rt></ruby>り→コンビニ→<ruby>信号<rt>しんごう</rt></ruby><ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby><ruby>右<rt>みぎ</rt></ruby>→お<ruby>寺<rt>てら</rt></ruby>→<ruby>看板<rt>かんばん</rt></ruby>、ですね。<br>*(Ghi chép. Trái → đường lớn → konbini → đèn thứ 3 rẽ phải → chùa → biển trường, đúng không ạ?)* |
| Tony | せやで！<ruby>迷<rt>まよ</rt></ruby>ったら<ruby>電話<rt>でんわ</rt></ruby>してや。<br>*(Đúng rồi! Lạc đường thì gọi chú nhé.)* |
| Yumi | お<ruby>弁当<rt>べんとう</rt></ruby>やで〜！<br>*(Hộp cơm trưa đây!)* |
| Đại | （<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）すみません、お<ruby>弁当<rt>べんとう</rt></ruby>までいただいて。ありがとうございます！<br>*(Nhận lấy. Cô làm cả cơm hộp cho cháu nữa. Cháu cảm ơn cô ạ!)* |

---

## Tình huống 3 — Sảnh lễ tân trường · 8:50, check-in tân sinh viên

| Vai | Lời thoại |
|---|---|
| Receptionist | おはようございます！<br>*(Chào buổi sáng!)* |
| Đại | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>からの<ruby>新入生<rt>しんにゅうせい</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào buổi sáng. Em là tân sinh viên Nguyễn Văn Đại, từ hôm nay nhập học ạ.)* |
| Receptionist | あ、ベトナムのグエンさんですね。お<ruby>待<rt>ま</rt></ruby>ちしていました。<ruby>新入生<rt>しんにゅうせい</rt></ruby><ruby>説明会<rt>せつめいかい</rt></ruby>は<ruby>3階<rt>さんかい</rt></ruby>の<ruby>大<rt>おお</rt></ruby>ホールですよ。<br>*(À, anh Nguyễn người Việt Nam. Chúng tôi đang chờ. Buổi giới thiệu tân sinh viên ở hội trường lớn tầng 3 nhé.)* |
| Đại | はい。<ruby>入校<rt>にゅうこう</rt></ruby>カードは<ruby>本日<rt>ほんじつ</rt></ruby><ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>るのでしょうか？<br>*(Vâng. Thẻ vào trường em nhận hôm nay luôn ạ?)* |
| Receptionist | はい、こちらが<ruby>仮<rt>かり</rt></ruby>の<ruby>入校<rt>にゅうこう</rt></ruby>カードです。<ruby>本物<rt>ほんもの</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby><ruby>写真撮影<rt>しゃしんさつえい</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>発行<rt>はっこう</rt></ruby>します。<br>*(Vâng, thẻ tạm đây. Thẻ chính thức tuần sau chụp ảnh xong mới phát.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ ạ. Em cảm ơn.)* |
| Receptionist | エレベーターはあちらです。<ruby>頑張<rt>がんば</rt></ruby>ってくださいね。<br>*(Thang máy đằng kia. Cố lên nhé.)* |

---

## Tình huống 4 — Hội trường tầng 3 · 9:00, gặp đồng hương Việt Nam

*80 tân sinh viên ngồi chia khu vực theo bảng tên. Đại tìm chỗ thì có hai bạn Việt vẫy tay.*

| Vai | Lời thoại |
|---|---|
| Linh | (VN) Anh ơi! Việt Nam à? Em thấy tên trên áo. |
| Đại | (VN) Ừ! Anh ở Hà Nội, anh tên Đại. Em mới sang à? |
| Linh | (VN) Em là Linh, ở Sài Gòn. Hôm qua mới sang. Em ở ký túc xá trường, khu Tennoji. |
| Tuấn | (VN, đi tới) Em chào hai anh chị. Em Tuấn, Đà Nẵng. Em homestay khu Tennoji luôn. |
| Đại | (VN) Anh cũng homestay Tennoji! Nhà ông Tanaka. Vậy ba đứa cùng khu. |
| Tuấn | (VN) Hay quá! Tan học cùng về anh nhé. Em mới sang còn lạ đường. |
| Linh | (VN) Em cũng đi cùng cho vui. Mà các anh trình Nhật N mấy rồi? |
| Đại | (VN) Anh N4. Em? |
| Linh | (VN) Em mới N5. Sợ vào lớp C. |
| Tuấn | (VN) Em N4 nhưng yếu hội thoại. Vào lớp nào cũng được, miễn cùng các anh chị. |

---

## Tình huống 5 — Hội trường · 9:10, làm quen Yifan (Trung Quốc)

| Vai | Lời thoại |
|---|---|
| Yifan | （<ruby>隣<rt>となり</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>る）はじめまして、イーファンです！<ruby>中国<rt>ちゅうごく</rt></ruby>から<ruby>来<rt>き</rt></ruby>ました。<br>*(Ngồi cạnh. Rất hân hạnh, mình là Yifan! Mình đến từ Trung Quốc.)* |
| Đại | はじめまして、グエン・ヴァン・ダイです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Rất hân hạnh, mình là Nguyễn Văn Đại. Mình đến từ Việt Nam.)* |
| Yifan | ダイさんは<ruby>何級<rt>なんきゅう</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていますか？<br>*(Đại có bằng cấp nào?)* |
| Đại | <ruby>去年<rt>きょねん</rt></ruby>N4に<ruby>合格<rt>ごうかく</rt></ruby>しました。イーファンさんは？<br>*(Năm ngoái mình đỗ N4. Yifan thì sao?)* |
| Yifan | <ruby>私<rt>わたし</rt></ruby>はN3です。<ruby>漢字<rt>かんじ</rt></ruby>は<ruby>中国人<rt>ちゅうごくじん</rt></ruby>なので<ruby>少<rt>すこ</rt></ruby>し<ruby>有利<rt>ゆうり</rt></ruby>です。<br>*(Mình N3. Kanji thì mình là người Trung nên hơi lợi thế.)* |
| Đại | え！すごいですね。<ruby>圧倒<rt>あっとう</rt></ruby>されます。<br>*(Ơ! Giỏi quá. Mình hơi choáng.)* |
| Yifan | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>1年<rt>いちねん</rt></ruby>あればN3に<ruby>合格<rt>ごうかく</rt></ruby>できますよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Không sao. 1 năm là đỗ N3 thôi. Cùng cố lên nhé.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong cậu giúp đỡ.)* |

---

## Tình huống 6 — Hội trường · 9:30, hiệu trưởng Kinoshita phát biểu chào mừng

| Vai | Lời thoại |
|---|---|
| Kinoshita | みなさん、おはようございます！<ruby>関西<rt>かんさい</rt></ruby><ruby>語言<rt>ごげん</rt></ruby><ruby>学院<rt>がくいん</rt></ruby><ruby>校長<rt>こうちょう</rt></ruby>の<ruby>木下<rt>きのした</rt></ruby>です。<br>*(Mọi người, chào buổi sáng! Tôi là Kinoshita, hiệu trưởng Kansai Gogo Gakuin.)* |
| Mọi người | おはようございます！<br>*(Chào ạ!)* |
| Kinoshita | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>新入生<rt>しんにゅうせい</rt></ruby><ruby>80名<rt>はちじゅうめい</rt></ruby>、<ruby>15<rt>じゅうご</rt></ruby>カ<ruby>国<rt>こく</rt></ruby>から<ruby>集<rt>あつ</rt></ruby>まりました。<ruby>当校<rt>とうこう</rt></ruby>へようこそ。<br>*(Hôm nay 80 tân sinh viên đến từ 15 nước. Hoan nghênh các em đến trường.)* |
| Kinoshita | <ruby>2年間<rt>にねんかん</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つあります。①JLPT N2<ruby>合格<rt>ごうかく</rt></ruby>。②<ruby>大学<rt>だいがく</rt></ruby><ruby>進学<rt>しんがく</rt></ruby>。③<ruby>日本文化<rt>にほんぶんか</rt></ruby>の<ruby>理解<rt>りかい</rt></ruby>です。<br>*(Mục tiêu 2 năm có 3 điều: ① Đỗ JLPT N2. ② Vào đại học. ③ Hiểu văn hoá Nhật.)* |
| Kinoshita | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>午後<rt>ごご</rt></ruby>はクラス<ruby>分<rt>わ</rt></ruby>けテストです。<ruby>明日<rt>あした</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>に<ruby>授業<rt>じゅぎょう</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まります。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Chiều nay là bài kiểm tra phân lớp. Mai bắt đầu học chính thức. Các em cố lên.)* |
| Mọi người | はい！<br>*(Vâng!)* |

---

## Tình huống 7 — Phòng học B-2 · 10:30, cô Yamada giới thiệu bản thân

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、はじめまして！<ruby>山田<rt>やまだ</rt></ruby><ruby>桜子<rt>さくらこ</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>2年間<rt>にねんかん</rt></ruby>、Bクラスの<ruby>担任<rt>たんにん</rt></ruby>です。<br>*(Mọi người, lần đầu gặp! Tôi là Yamada Sakurako. Từ hôm nay, 2 năm tới, tôi sẽ là chủ nhiệm lớp B.)* |
| Yamada | <ruby>東京大学<rt>とうきょうだいがく</rt></ruby><ruby>言語学部<rt>げんごがくぶ</rt></ruby>を<ruby>卒業<rt>そつぎょう</rt></ruby>して、<ruby>教師<rt>きょうし</rt></ruby><ruby>歴<rt>れき</rt></ruby><ruby>15年<rt>じゅうごねん</rt></ruby>です。<br>*(Tốt nghiệp Khoa Ngôn ngữ ĐH Tokyo, 15 năm đứng lớp.)* |
| Yamada | <ruby>厳<rt>きび</rt></ruby>しいですが、<ruby>愛情<rt>あいじょう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>指導<rt>しどう</rt></ruby>します。<ruby>2年後<rt>にねんご</rt></ruby>に<ruby>志望<rt>しぼう</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>に<ruby>受<rt>う</rt></ruby>かれるよう、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Tôi nghiêm khắc nhưng dạy bằng cả tấm lòng. Cùng cố để 2 năm nữa các em đỗ vào trường mong muốn.)* |
| Yamada | <ruby>質問<rt>しつもん</rt></ruby>はいつでも<ruby>歓迎<rt>かんげい</rt></ruby>します。<ruby>分<rt>わ</rt></ruby>からないことがあれば、<ruby>遠慮<rt>えんりょ</rt></ruby>しないで<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Câu hỏi luôn chào đón. Có gì không hiểu cứ thoải mái hỏi nhé.)* |
| Đại | はい、ありがとうございます。<br>*(Vâng, cảm ơn cô.)* |
| Yamada | <ruby>本日<rt>ほんじつ</rt></ruby>のテストは<ruby>13時<rt>じゅうさんじ</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>まります。<ruby>12時<rt>じゅうにじ</rt></ruby>から<ruby>1時間<rt>いちじかん</rt></ruby>の<ruby>昼休<rt>ひるやす</rt></ruby>みです。<br>*(Bài kiểm tra hôm nay bắt đầu lúc 13 giờ. Nghỉ trưa 1 tiếng từ 12 giờ.)* |

---

## Tình huống 8 — Sân trường · 12:15, hỏi mua nước tự động + làm quen Sumi/Aung

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>自販機<rt>じはんき</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で）すみません、これは<ruby>水<rt>みず</rt></ruby>ですか？<ruby>緑茶<rt>りょくちゃ</rt></ruby>ですか？<br>*(Trước máy bán tự động. Xin lỗi, cái này là nước lọc hay trà xanh ạ?)* |
| Sumi | あ、<ruby>緑茶<rt>りょくちゃ</rt></ruby>ですよ。<ruby>水<rt>みず</rt></ruby>はこっちです。<br>*(Á, trà xanh đó. Nước lọc ở đây.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn bạn.)* |
| Sumi | はじめまして、スミです！<ruby>韓国<rt>かんこく</rt></ruby>から<ruby>来<rt>き</rt></ruby>ました。Bクラスです。<br>*(Lần đầu gặp, mình là Sumi! Mình đến từ Hàn Quốc. Lớp B.)* |
| Đại | おお、<ruby>同<rt>おな</rt></ruby>じクラスですね！グエン・ヴァン・ダイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ồ, cùng lớp! Mình là Nguyễn Văn Đại. Mong cậu giúp đỡ.)* |
| Aung | （<ruby>来<rt>く</rt></ruby>る）こんにちは、アウンです、ミャンマーから。Bクラスです。<br>*(Đến. Xin chào, mình là Aung, từ Myanmar. Lớp B.)* |
| Đại | ベトナム、<ruby>中国<rt>ちゅうごく</rt></ruby>、<ruby>韓国<rt>かんこく</rt></ruby>、ミャンマー…<ruby>豪華<rt>ごうか</rt></ruby>なクラスですね！<br>*(Việt, Trung, Hàn, Myanmar... lớp phong phú/hoành tráng thật!)* |
| Sumi | <ruby>後<rt>あと</rt></ruby>でLINEを<ruby>交換<rt>こうかん</rt></ruby>しませんか？<br>*(Lát nữa mình trao đổi LINE nhé?)* |
| Đại | はい、<ruby>是非<rt>ぜひ</rt></ruby>！<br>*(Vâng, rất sẵn lòng!)* |

---

## Tình huống 9 — Phòng thi · 13:00, vào phòng + nhận đề viết

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、テストを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>記述<rt>きじゅつ</rt></ruby><ruby>30分<rt>さんじゅっぷん</rt></ruby>、その<ruby>後<rt>あと</rt></ruby><ruby>会話<rt>かいわ</rt></ruby><ruby>10分<rt>じゅっぷん</rt></ruby>です。<br>*(Mọi người, bắt đầu kiểm tra. Phần viết 30 phút, sau đó hội thoại 10 phút.)* |
| Yamada | <ruby>記述<rt>きじゅつ</rt></ruby>テストは<ruby>3<rt>みっ</rt></ruby>つの<ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かれています：<ruby>漢字<rt>かんじ</rt></ruby>、<ruby>文法<rt>ぶんぽう</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby>。<br>*(Bài viết chia 3 phần: kanji, ngữ pháp, đọc hiểu.)* |
| Yamada | <ruby>分<rt>わ</rt></ruby>からない<ruby>問題<rt>もんだい</rt></ruby>は<ruby>飛<rt>と</rt></ruby>ばしても<ruby>構<rt>かま</rt></ruby>いません。<br>*(Câu nào không biết bỏ qua cũng không sao.)* |
| Đại | <ruby>質問<rt>しつもん</rt></ruby>してもいいですか？<br>*(Em hỏi được không ạ?)* |
| Yamada | どうぞ。<br>*(Mời.)* |
| Đại | <ruby>鉛筆<rt>えんぴつ</rt></ruby>とボールペン、どちらで<ruby>書<rt>か</rt></ruby>けばいいですか？<br>*(Em viết bằng bút chì hay bút bi ạ?)* |
| Yamada | <ruby>鉛筆<rt>えんぴつ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>消<rt>け</rt></ruby>しゴムは<ruby>各自<rt>かくじ</rt></ruby>で<ruby>用意<rt>ようい</rt></ruby>してくださいね。<br>*(Bút chì nhé. Tẩy thì các em tự chuẩn bị.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 10 — Phòng thi nhỏ · 14:00, kiểm tra hội thoại cá nhân

*Sau bài viết, Đại được gọi vào phòng nhỏ phỏng vấn 1-1 với cô Yamada.*

| Vai | Lời thoại |
|---|---|
| Yamada | ダイくん、<ruby>会話<rt>かいわ</rt></ruby>テストを<ruby>始<rt>はじ</rt></ruby>めます。まず<ruby>自己紹介<rt>じこしょうかい</rt></ruby>を<ruby>1分<rt>いっぷん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đại, bắt đầu kiểm tra hội thoại. Đầu tiên tự giới thiệu trong 1 phút.)* |
| Đại | はい！<ruby>初<rt>はじ</rt></ruby>めまして、グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>19歳<rt>じゅうきゅうさい</rt></ruby>、ベトナムのハノイ<ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Vâng! Rất hân hạnh, em là Nguyễn Văn Đại. 19 tuổi, quê Hà Nội, Việt Nam.)* |
| Đại | <ruby>高校<rt>こうこう</rt></ruby>はハノイ・アムステルダム<ruby>高校<rt>こうこう</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby><ruby>科<rt>か</rt></ruby>を<ruby>卒業<rt>そつぎょう</rt></ruby>しました。<ruby>志望校<rt>しぼうこう</rt></ruby>は<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>経済学部<rt>けいざいがくぶ</rt></ruby>です。<br>*(Tốt nghiệp khoa Tin trường cấp 3 Ams Hà Nội. Trường nguyện vọng là Khoa Kinh tế ĐH Osaka.)* |
| Đại | <ruby>趣味<rt>しゅみ</rt></ruby>はサッカーと<ruby>映画<rt>えいが</rt></ruby><ruby>鑑賞<rt>かんしょう</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Sở thích là bóng đá và xem phim. Mong cô giúp đỡ.)* |
| Yamada | <ruby>発音<rt>はつおん</rt></ruby>もはっきりしていますね。<ruby>質問<rt>しつもん</rt></ruby>です：<ruby>大阪<rt>おおさか</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んだ<ruby>理由<rt>りゆう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Phát âm rõ ràng. Câu hỏi: vì sao em chọn Osaka?)* |
| Đại | <ruby>理由<rt>りゆう</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つあります。①<ruby>東京<rt>とうきょう</rt></ruby>は<ruby>家賃<rt>やちん</rt></ruby>が<ruby>高<rt>たか</rt></ruby>すぎるからです。②<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>は<ruby>親<rt>した</rt></ruby>しみやすいと<ruby>聞<rt>き</rt></ruby>いたからです。③<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>は<ruby>日本<rt>にほん</rt></ruby>のトップ<ruby>10<rt>じゅう</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>だからです。<br>*(Có 3 lý do: ① Tiền nhà Tokyo đắt quá. ② Nghe nói người Osaka thân thiện. ③ ĐH Osaka nằm trong top 10 Nhật Bản.)* |
| Yamada | <ruby>目標<rt>もくひょう</rt></ruby>がはっきりしていますね。Bクラスです。<br>*(Mục tiêu rất rõ. Em vào lớp B.)* |
| Đại | ありがとうございます！<br>*(Em cảm ơn cô!)* |

---

## Tình huống 11 — Hành lang · 14:30, hỏi cô Yamada xin tài liệu thêm

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田先生<rt>やまだせんせい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Cô Yamada, em xin cô chút thời gian được không ạ?)* |
| Yamada | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>経済学部<rt>けいざいがくぶ</rt></ruby>の<ruby>入試<rt>にゅうし</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>はどこで<ruby>調<rt>しら</rt></ruby>べられますか？<br>*(Em tìm thông tin tuyển sinh Khoa Kinh tế ĐH Osaka ở đâu được ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>進学<rt>しんがく</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>センターを<ruby>紹介<rt>しょうかい</rt></ruby>しますよ。<ruby>2年後<rt>にねんご</rt></ruby>の<ruby>入試<rt>にゅうし</rt></ruby>のスケジュールも<ruby>確認<rt>かくにん</rt></ruby>できます。<br>*(Câu hỏi hay. Tuần sau tôi giới thiệu trung tâm tư vấn lên đại học. Em có thể xem lịch tuyển sinh 2 năm sau.)* |
| Đại | ありがとうございます。それから、<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>奨学金<rt>しょうがくきん</rt></ruby>はありますか？<br>*(Cảm ơn cô. Còn nữa, có học bổng cho du học sinh không ạ?)* |
| Yamada | あります。「<ruby>日本<rt>にほん</rt></ruby><ruby>留学<rt>りゅうがく</rt></ruby><ruby>試験<rt>しけん</rt></ruby>（EJU）」で<ruby>高得点<rt>こうとくてん</rt></ruby>を<ruby>取<rt>と</rt></ruby>れば<ruby>奨学金<rt>しょうがくきん</rt></ruby>がもらえますよ。<br>*(Có. Nếu đạt điểm cao kỳ thi EJU thì được nhận học bổng.)* |
| Đại | EJU…ですか。<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(EJU... ạ. Em lần đầu nghe.)* |
| Yamada | <ruby>来月<rt>らいげつ</rt></ruby>から<ruby>説明会<rt>せつめいかい</rt></ruby>があります。<ruby>必<rt>かなら</rt></ruby>ず<ruby>参加<rt>さんか</rt></ruby>してくださいね。<br>*(Tháng sau có buổi giới thiệu. Nhất định phải tham gia nhé.)* |

---

## Tình huống 12 — Sân trường · 16:00, biết kết quả + đổi LINE với nhóm

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Anh được lớp gì? |
| Đại | (VN) Lớp B. Em? |
| Tuấn | (VN) Em cũng B! Cùng lớp anh. |
| Linh | (VN, chạy đến) Em lớp C... |
| Đại | (VN) Không sao em, lớp C luyện N5-N4 nền vững mới quan trọng. Giờ giải lao gặp nhau. |
| Yifan | （<ruby>来<rt>く</rt></ruby>る）ダイさん、Bクラスやって！<br>*(Đến. Đại, lớp B nhé!)* |
| Đại | おお、イーファンも！LINEを<ruby>交換<rt>こうかん</rt></ruby>しませんか？<br>*(Ồ, Yifan cũng vậy! Mình trao đổi LINE nhé?)* |
| Yifan | はい！QRコードを<ruby>出<rt>だ</rt></ruby>しますね。<br>*(Vâng! Mình mở mã QR.)* |
| Sumi | （<ruby>来<rt>く</rt></ruby>る）<ruby>私<rt>わたし</rt></ruby>も！<ruby>5人<rt>ごにん</rt></ruby>のグループを<ruby>作<rt>つく</rt></ruby>りましょう。<br>*(Đến. Mình cũng nữa! Tạo nhóm 5 người luôn.)* |
| Aung | グループ<ruby>名<rt>めい</rt></ruby>は「Bクラス<ruby>仲間<rt>なかま</rt></ruby>」にしませんか？<br>*(Đặt tên nhóm là "Bạn lớp B" (B-class nakama) nhé?)* |
| Đại | いいですね！<ruby>明日<rt>あした</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby><ruby>9時<rt>くじ</rt></ruby>〜<ruby>13時<rt>じゅうさんじ</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>です。お<ruby>互<rt>たが</rt></ruby>いに<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Hay đó! Từ mai mỗi ngày học 9 – 13 giờ. Cùng cố lên nhé.)* |

---

## Tình huống 13 — Phòng riêng nhà Tanaka · 22:00, LINE với Mai

> Cảnh tiếng Việt — Đại nhắn LINE với Mai sau ngày đầu lên trường.

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) Em ơi, anh vào lớp B rồi. Lớp luyện N3 lên N2. |
| Mai | (LINE) Mừng anh! Lớp có ai vui không? |
| Đại | (LINE) 5 quốc tịch. Anh gặp Linh + Tuấn người Việt, Yifan người Trung, Sumi người Hàn, Aung người Myanmar. Vừa lập nhóm LINE "B-class nakama". |
| Mai | (LINE) Hay quá. Vợ tự hào ghê. Cô giáo thế nào? |
| Đại | (LINE) Cô Yamada nghiêm khắc nhưng có tâm. Tốt nghiệp ĐH Tokyo Khoa Ngôn ngữ, 15 năm đứng lớp. Cô hỏi vì sao chọn Osaka, anh trả lời được 3 lý do trôi chảy. |
| Mai | (LINE) Anh giỏi. Em vừa thi xong môn Kinh tế vĩ mô, được 8.5. |
| Đại | (LINE) Em cũng giỏi! Vợ chồng mình cùng cố. Mục tiêu của anh là 2 năm nữa đỗ Khoa Kinh tế ĐH Osaka. Cô Yamada nói có kỳ thi EJU, điểm cao thì được học bổng. |
| Mai | (LINE) Anh nhớ chăm sức khoẻ. Mỗi tuần gọi video 1 lần nhé. |
| Đại | (LINE) Ừ. Mai 9 giờ học buổi đầu. Anh đi ngủ. Yêu em. |
| Mai | (LINE) Yêu anh. Cố lên! |

---

## Đọng lại chương 2

Ngày đầu Đại lên trường, học thêm các mẫu câu nền tảng: **xin chỉ đường + xác nhận chi tiết** (〜を教えていただけますか・〜ですね), **check-in lễ tân tân sinh viên** (本日から新入生の〜と申します), **tự giới thiệu trang trọng 1 phút** (〜と申します・出身・志望校・趣味), **trả lời câu hỏi cô giáo có cấu trúc 3 lý do** (理由は3つあります・①〜②〜③〜), **xin tài liệu + đặt câu hỏi với 先生** (少しお時間よろしいでしょうか・〜はどこで調べられますか), **đề xuất nhóm + trao đổi LINE** (LINEを交換しませんか・グループを作りましょう). Đại học rõ cấu trúc trường: 3 lớp A/B/C, mục tiêu 2 năm N2 + đại học + văn hoá, kỳ thi **EJU** cần thiết cho học bổng. Lớp B đa quốc tịch — Yifan giỏi kanji, Sumi năng động, Aung trầm tính, Linh-Tuấn Việt cùng khu Tennoji. Tối Đại nhắn LINE báo cáo cho Mai.

> Từ vựng & mẫu câu chương này: 新入生・入校カード・説明会・大ホール・自己紹介・出身・志望校・経済学部・大阪大学・趣味・記述・会話・漢字・文法・読解・自販機・緑茶・進学相談センター・奨学金・EJU・日本留学試験・LINEを交換する・〜を教えていただけますか・〜と申します・理由は3つあります・少しお時間よろしいでしょうか・グループを作りましょう

## Bí quyết chương

- **3 lý do chọn Osaka**: Trả lời có cấu trúc — Đại học từ Đông Du. Sẽ dùng lại trong phỏng vấn baito (T4) và phỏng vấn đại học (sách 20).
- **Lớp B đa quốc tịch**: Lập nhóm bạn xuyên 2 sách — Yifan (Trung giỏi kanji), Sumi (Hàn năng động), Aung (Myanmar trầm), Linh + Tuấn (Việt cùng Tennoji).
- **Cô Yamada chủ nhiệm 2 năm**: Trục dẫn dắt chính — sẽ tư vấn đại học, giới thiệu EJU, viết thư giới thiệu cho ĐH Osaka.
- **EJU + 奨学金 mục tiêu sớm**: Mở mục tiêu sách 20 — Đại sẽ thi EJU sau 1 năm.
- **Bento Yumi gói**: Cảm xúc gia đình thay thế — bù lại khoảng cách mẹ Hà Nội.
- **Nhóm LINE "B-class nakama"**: Kênh thông tin chính giữa các bạn — sẽ thấy trong các chương sau.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 朝ごはん | あさごはん | TRIÊU | Bữa sáng |
| 味噌汁 | みそしる | VỊ TĂNG TRẤP | Canh miso |
| 食卓 | しょくたく | THỰC TRÁC | Bàn ăn |
| 地図 | ちず | ĐỊA ĐỒ | Bản đồ |
| 大通り | おおどおり | ĐẠI THÔNG | Đại lộ, đường lớn |
| 信号 | しんごう | TÍN HIỆU | Đèn giao thông |
| 弁当 | べんとう | BIỆN ĐƯƠNG | Cơm hộp |
| 新入生 | しんにゅうせい | TÂN NHẬP SINH | Tân sinh viên |
| 説明会 | せつめいかい | THUYẾT MINH HỘI | Buổi giới thiệu |
| 入校カード | にゅうこうカード | NHẬP HIỆU | Thẻ vào trường |
| 写真撮影 | しゃしんさつえい | TẢ CHÂN TÁT ẢNH | Chụp ảnh |
| 発行 | はっこう | PHÁT HÀNH | Cấp phát |
| 校長 | こうちょう | HIỆU TRƯỞNG | Hiệu trưởng |
| 当校 | とうこう | ĐƯƠNG HIỆU | Trường ta |
| 目標 | もくひょう | MỤC TIÊU | Mục tiêu |
| 進学 | しんがく | TIẾN HỌC | Lên cấp/đại học |
| 文化 | ぶんか | VĂN HOÁ | Văn hoá |
| 理解 | りかい | LÝ GIẢI | Hiểu |
| 担任 | たんにん | ĐẢM NHIỆM | Chủ nhiệm |
| 言語学部 | げんごがくぶ | NGÔN NGỮ HỌC BỘ | Khoa Ngôn ngữ |
| 教師歴 | きょうしれき | GIÁO SƯ LỊCH | Thâm niên giảng dạy |
| 厳しい | きびしい | NGHIÊM | Nghiêm khắc |
| 愛情 | あいじょう | ÁI TÌNH | Tình cảm, tấm lòng |
| 指導 | しどう | CHỈ ĐẠO | Hướng dẫn |
| 志望 | しぼう | CHÍ VỌNG | Nguyện vọng |
| 歓迎 | かんげい | HOAN NGHÊNH | Hoan nghênh |
| 遠慮 | えんりょ | VIỄN LỰ | Ngại, kiêng dè |
| 昼休み | ひるやすみ | TRÚ HƯU | Nghỉ trưa |
| 自販機 | じはんき | TỰ PHÁN CƠ | Máy bán tự động |
| 緑茶 | りょくちゃ | LỤC TRÀ | Trà xanh |
| 豪華 | ごうか | HÀO HOA | Hoành tráng, đa dạng |
| 交換 | こうかん | GIAO HOÁN | Trao đổi |
| 記述 | きじゅつ | KÝ THUẬT | Phần viết |
| 会話 | かいわ | HỘI THOẠI | Hội thoại |
| 漢字 | かんじ | HÁN TỰ | Chữ Hán |
| 文法 | ぶんぽう | VĂN PHÁP | Ngữ pháp |
| 読解 | どっかい | ĐỌC GIẢI | Đọc hiểu |
| 鉛筆 | えんぴつ | DUYÊN BÚT | Bút chì |
| 各自 | かくじ | CÁC TỰ | Mỗi người tự |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | Tự giới thiệu |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán, xuất thân |
| 情報科 | じょうほうか | TÌNH BÁO KHOA | Khoa Tin học |
| 志望校 | しぼうこう | CHÍ VỌNG HIỆU | Trường nguyện vọng |
| 経済学部 | けいざいがくぶ | KINH TẾ HỌC BỘ | Khoa Kinh tế |
| 趣味 | しゅみ | THÚ MÙI | Sở thích |
| 映画鑑賞 | えいがかんしょう | ẢNH HOẠ GIÁM THƯỞNG | Xem phim |
| 発音 | はつおん | PHÁT ÂM | Phát âm |
| 理由 | りゆう | LÝ DO | Lý do |
| 家賃 | やちん | GIA TRẪM | Tiền nhà |
| 進学相談センター | しんがくそうだんセンター | TIẾN HỌC TƯƠNG ĐÀM | Trung tâm tư vấn lên ĐH |
| 入試 | にゅうし | NHẬP THÍ | Tuyển sinh |
| 奨学金 | しょうがくきん | TƯỞNG HỌC KIM | Học bổng |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | Du học sinh |
| 日本留学試験 | にほんりゅうがくしけん | NHẬT BẢN LƯU HỌC THÍ NGHIỆM | EJU - Kỳ thi du học Nhật |
| 高得点 | こうとくてん | CAO ĐẮC ĐIỂM | Điểm cao |
| 参加 | さんか | THAM GIA | Tham gia |
| 仲間 | なかま | TRỌNG GIAN | Bạn bè, đồng đội |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000003, 800000019, NULL, 'markdown_book', 'T3. Đời sống homestay (ホームステイ生活)', '# Sách du học sinh tiếng Nhật · T3. Đời sống homestay (ホームステイ生活)

> **Mục tiêu nhân vật:** 4-5/2024. Một tháng đầu homestay nhà Tanaka. Đại học các mẫu hội thoại đời sống Nhật hằng ngày: quy tắc đũa + いただきます/ごちそうさま, hỏi mượn đồ + nhờ giúp đỡ (〜してもいいですか・〜ていただけますか), nghe giải thích quy tắc rác + tắm bồn + giặt đồ, hỏi từ vựng nhà bếp (〜は何ですか), nấu cùng cô Yumi + dạy lại món Việt, từ chối lịch sự (〜はちょっと…), gọi điện báo bố mẹ.

---

## Bối cảnh

4 tuần đầu tại nhà Tanaka. Đại đi học 9-13h, về ăn trưa do cô Yumi nấu sẵn, chiều học ở nhà, ăn tối với cô chú 19h. Ngày càng thân. Chương này tập trung các mẫu câu Đại dùng trong sinh hoạt homestay hằng ngày — từ bữa ăn, rửa bát, đến phân rác, tắm bồn, nấu cùng — và cảnh gọi điện về Việt Nam cuối chương.

---

## Tình huống 1 — Bàn ăn · 7:30, quy tắc cầm đũa Nhật

| Vai | Lời thoại |
|---|---|
| Yumi | ダイくん、お<ruby>箸<rt>はし</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か？<br>*(Đại, cách cầm đũa của cháu ổn không?)* |
| Đại | はい！ベトナムも<ruby>箸<rt>はし</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<ruby>子<rt>こ</rt></ruby>どもの<ruby>時<rt>とき</rt></ruby>から<ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Vâng! Việt Nam cũng dùng đũa. Cháu tập từ nhỏ ạ.)* |
| Yumi | せやけど、<ruby>日本<rt>にほん</rt></ruby>には<ruby>違<rt>ちが</rt></ruby>うルールが<ruby>3<rt>みっ</rt></ruby>つあるねん。<br>*(Nhưng ở Nhật có 3 quy tắc khác đó.)* |
| Yumi | ①お<ruby>茶碗<rt>ちゃわん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げて<ruby>食<rt>た</rt></ruby>べる。②お<ruby>箸<rt>はし</rt></ruby>を<ruby>立<rt>た</rt></ruby>てるのは<ruby>禁止<rt>きんし</rt></ruby>。③お<ruby>箸<rt>はし</rt></ruby>から<ruby>箸<rt>はし</rt></ruby>へ<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>すのも<ruby>禁止<rt>きんし</rt></ruby>。<br>*(① Bưng bát lên ăn. ② Cấm cắm đũa thẳng đứng. ③ Cấm chuyền thức ăn từ đũa sang đũa.)* |
| Đại | え、なぜ<ruby>立<rt>た</rt></ruby>てたらいけないんですか？<br>*(Ơ, sao không được cắm thẳng ạ?)* |
| Yumi | <ruby>仏壇<rt>ぶつだん</rt></ruby>のお<ruby>供<rt>そな</rt></ruby>えを<ruby>連想<rt>れんそう</rt></ruby>するから<ruby>縁起<rt>えんぎ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いんやで。<ruby>箸<rt>はし</rt></ruby>から<ruby>箸<rt>はし</rt></ruby>は<ruby>葬式<rt>そうしき</rt></ruby>のお<ruby>骨<rt>こつ</rt></ruby><ruby>拾<rt>ひろ</rt></ruby>いを<ruby>連想<rt>れんそう</rt></ruby>するからな。<br>*(Vì gợi liên tưởng đến bàn thờ, không lành. Còn chuyền đũa-đũa gợi liên tưởng đến nhặt cốt người chết ở tang lễ.)* |
| Đại | なるほど。ベトナムでは<ruby>普通<rt>ふつう</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>すから、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Ra vậy. Việt Nam chuyền bình thường, cháu sẽ chú ý.)* |
| Yumi | ええよ、<ruby>覚<rt>おぼ</rt></ruby>えていったらええで。<br>*(Tốt mà, từ từ nhớ là được.)* |

---

## Tình huống 2 — Bàn ăn · 7:45, いただきます + thử natto lần đầu

| Vai | Lời thoại |
|---|---|
| Tony | （<ruby>手<rt>て</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせる）いただきます！<br>*(Chắp tay. Itadakimasu!)* |
| Yumi | いただきます！<br>*(Itadakimasu!)* |
| Đại | （<ruby>真似<rt>まね</rt></ruby>る）いただきます！<br>*(Bắt chước. Itadakimasu!)* |
| Tony | ダイくん、<ruby>納豆<rt>なっとう</rt></ruby><ruby>食<rt>た</rt></ruby>べてみるか？<br>*(Đại, thử natto không?)* |
| Đại | <ruby>納豆<rt>なっとう</rt></ruby>...？<ruby>初<rt>はじ</rt></ruby>めてです。どうやって<ruby>食<rt>た</rt></ruby>べますか？<br>*(Natto...? Lần đầu cháu nghe. Ăn thế nào ạ?)* |
| Tony | まずタレと<ruby>辛子<rt>からし</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる。それから<ruby>箸<rt>はし</rt></ruby>でぐるぐる<ruby>混<rt>ま</rt></ruby>ぜる。<ruby>糸<rt>いと</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>くまでな。<br>*(Đầu tiên cho nước tương và mù tạt vào. Rồi dùng đũa khuấy vòng tròn cho đến khi kéo sợi.)* |
| Đại | （<ruby>混<rt>ま</rt></ruby>ぜる）...わ、ねばねばですね！<br>*(Trộn. Ôi, dính dính thật!)* |
| Yumi | <ruby>大豆<rt>だいず</rt></ruby>の<ruby>発酵<rt>はっこう</rt></ruby><ruby>食品<rt>しょくひん</rt></ruby>やで。<ruby>体<rt>からだ</rt></ruby>にええねん。<br>*(Là thực phẩm lên men từ đậu nành. Tốt cho sức khoẻ lắm.)* |
| Đại | （<ruby>食<rt>た</rt></ruby>べる）<ruby>独特<rt>どくとく</rt></ruby>な<ruby>味<rt>あじ</rt></ruby>ですね。<ruby>慣<rt>な</rt></ruby>れる<ruby>必要<rt>ひつよう</rt></ruby>がありそうです。<br>*(Ăn. Vị đặc trưng cô nhỉ. Chắc cần thời gian quen.)* |
| Tony | <ruby>無理<rt>むり</rt></ruby>せんでもええで。<ruby>苦手<rt>にがて</rt></ruby>な<ruby>人<rt>ひと</rt></ruby>も<ruby>多<rt>おお</rt></ruby>い。<br>*(Không ép đâu. Nhiều người cũng không hợp.)* |
| Đại | <ruby>少<rt>すこ</rt></ruby>しずつ<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Cháu sẽ thử dần ạ.)* |

---

## Tình huống 3 — Bồn rửa · 8:15, xin được giúp rửa bát + học quy tắc

| Vai | Lời thoại |
|---|---|
| Đại | ごちそうさまでした！お<ruby>皿<rt>さら</rt></ruby><ruby>洗<rt>あら</rt></ruby>うのを<ruby>手伝<rt>てつだ</rt></ruby>ってもいいですか？<br>*(Cháu cảm ơn bữa ăn ạ! Cháu phụ rửa bát được không ạ?)* |
| Yumi | おお、<ruby>嬉<rt>うれ</rt></ruby>しいわ。じゃあルールを<ruby>説明<rt>せつめい</rt></ruby>するで。<br>*(Ô, cô mừng quá. Vậy cô giải thích quy tắc nhé.)* |
| Yumi | ①<ruby>白<rt>しろ</rt></ruby>い<ruby>食器<rt>しょっき</rt></ruby><ruby>用<rt>よう</rt></ruby>のスポンジは<ruby>黄色<rt>きいろ</rt></ruby>いやつ。<br>*(① Giẻ rửa bát đĩa trắng dùng cái vàng.)* |
| Yumi | ②<ruby>油物<rt>あぶらもの</rt></ruby>は<ruby>緑<rt>みどり</rt></ruby>のスポンジで<ruby>別<rt>べつ</rt></ruby>に<ruby>洗<rt>あら</rt></ruby>う。<br>*(② Đồ dính dầu mỡ dùng giẻ xanh riêng.)* |
| Yumi | ③<ruby>洗<rt>あら</rt></ruby>った<ruby>後<rt>あと</rt></ruby>はすぐ<ruby>布<rt>ふきん</rt></ruby>で<ruby>拭<rt>ふ</rt></ruby>く。<br>*(③ Rửa xong lau khô ngay bằng khăn.)* |
| Đại | はい！（<ruby>洗<rt>あら</rt></ruby>う）<br>*(Vâng! Rửa.)* |
| Yumi | （<ruby>見<rt>み</rt></ruby>る）<ruby>上手<rt>じょうず</rt></ruby>やん！<br>*(Quan sát. Khéo quá!)* |
| Đại | <ruby>母<rt>はは</rt></ruby>がベトナムで<ruby>毎日<rt>まいにち</rt></ruby><ruby>食器<rt>しょっき</rt></ruby><ruby>洗<rt>あら</rt></ruby>いをさせていました。<br>*(Mẹ cháu bắt rửa bát hằng ngày ở Việt Nam ạ.)* |
| Yumi | ええお<ruby>母<rt>かあ</rt></ruby>さんやな。<ruby>家事<rt>かじ</rt></ruby>のできる<ruby>男<rt>おとこ</rt></ruby>の<ruby>子<rt>こ</rt></ruby>は<ruby>偉<rt>えら</rt></ruby>いで。<br>*(Mẹ cháu giỏi nhỉ. Con trai biết làm việc nhà là giỏi đấy.)* |

---

## Tình huống 4 — Trước tủ lạnh · sáng thứ Bảy, học phân rác Osaka

| Vai | Lời thoại |
|---|---|
| Tony | ダイくん、ゴミの<ruby>分<rt>わ</rt></ruby>け<ruby>方<rt>かた</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>するで。<br>*(Đại, chú giải thích cách phân rác nhé.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời chú ạ.)* |
| Tony | <ruby>大阪<rt>おおさか</rt></ruby><ruby>市<rt>し</rt></ruby>では<ruby>5<rt>ご</rt></ruby><ruby>分類<rt>ぶんるい</rt></ruby>あんねん。<br>*(Thành phố Osaka có 5 loại.)* |
| Tony | ①<ruby>普通<rt>ふつう</rt></ruby>ゴミ（<ruby>食品<rt>しょくひん</rt></ruby>、<ruby>汚<rt>よご</rt></ruby>れた<ruby>紙<rt>かみ</rt></ruby>）→<ruby>月<rt>げつ</rt></ruby>・<ruby>木<rt>もく</rt></ruby>。<br>*(① Rác sinh hoạt (thực phẩm, giấy bẩn) → Thứ Hai và Thứ Năm.)* |
| Tony | ②<ruby>資源<rt>しげん</rt></ruby>ゴミ（<ruby>缶<rt>かん</rt></ruby>、ペットボトル）→<ruby>水<rt>すい</rt></ruby>。<br>*(② Rác tài nguyên (lon, chai nhựa) → Thứ Tư.)* |
| Tony | ③<ruby>古紙<rt>こし</rt></ruby>（<ruby>新聞<rt>しんぶん</rt></ruby>、<ruby>雑誌<rt>ざっし</rt></ruby>）→<ruby>金<rt>きん</rt></ruby>。<br>*(③ Giấy cũ (báo, tạp chí) → Thứ Sáu.)* |
| Tony | ④<ruby>容器<rt>ようき</rt></ruby><ruby>包装<rt>ほうそう</rt></ruby>プラスチック →<ruby>火<rt>か</rt></ruby>。<br>*(④ Nhựa bao bì → Thứ Ba.)* |
| Tony | ⑤<ruby>粗大<rt>そだい</rt></ruby>ゴミは<ruby>有料<rt>ゆうりょう</rt></ruby>で、<ruby>区役所<rt>くやくしょ</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>や。<br>*(⑤ Rác cồng kềnh có phí, phải báo uỷ ban quận.)* |
| Đại | え、そんなに<ruby>細<rt>こま</rt></ruby>かいんですか！<br>*(Ơ, chi tiết đến vậy ạ!)* |
| Tony | <ruby>分<rt>わ</rt></ruby>からんかったら<ruby>聞<rt>き</rt></ruby>いてや。<ruby>冷蔵庫<rt>れいぞうこ</rt></ruby>にマグネットの<ruby>表<rt>ひょう</rt></ruby>が<ruby>貼<rt>は</rt></ruby>ってあるで。<br>*(Không hiểu cứ hỏi nhé. Cô đã dán bảng nam châm lên tủ lạnh rồi.)* |
| Đại | ありがとうございます。<ruby>違反<rt>いはん</rt></ruby>するとどうなりますか？<br>*(Cháu cảm ơn. Vi phạm thì sao ạ?)* |
| Tony | <ruby>近所<rt>きんじょ</rt></ruby>のおばちゃんに<ruby>怒<rt>おこ</rt></ruby>られるで。<ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>間違<rt>まちが</rt></ruby>うから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<br>*(Bị các bà hàng xóm la đó. Lúc đầu ai cũng nhầm, đừng lo.)* |

---

## Tình huống 5 — Trước phòng tắm · 21:00, học quy tắc tắm bồn

| Vai | Lời thoại |
|---|---|
| Yumi | ダイくん、お<ruby>風呂<rt>ふろ</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>するわね。<br>*(Đại, cô giải thích cách dùng bồn tắm nhé.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời cô ạ.)* |
| Yumi | <ruby>日本<rt>にほん</rt></ruby>の<ruby>家庭<rt>かてい</rt></ruby>はだいたいこんな<ruby>感<rt>かん</rt></ruby>じや。①<ruby>湯船<rt>ゆぶね</rt></ruby>の<ruby>外<rt>そと</rt></ruby>でシャワーを<ruby>浴<rt>あ</rt></ruby>びて<ruby>体<rt>からだ</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>う。②<ruby>体<rt>からだ</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>った<ruby>後<rt>あと</rt></ruby>に<ruby>湯船<rt>ゆぶね</rt></ruby>に<ruby>浸<rt>つ</rt></ruby>かる。③お<ruby>湯<rt>ゆ</rt></ruby>は<ruby>抜<rt>ぬ</rt></ruby>かないで<ruby>家族<rt>かぞく</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>する。<br>*(Đại khái như vầy: ① Tắm xối ngoài bồn để gội rửa cơ thể. ② Sau khi sạch rồi mới ngâm bồn. ③ Không tháo nước, cả nhà ngâm chung.)* |
| Đại | え！？<ruby>共有<rt>きょうゆう</rt></ruby>するんですか！<br>*(Ơ!? Ngâm chung ạ!)* |
| Yumi | せやで。<ruby>順番<rt>じゅんばん</rt></ruby>はトニー → <ruby>私<rt>わたし</rt></ruby> → ダイくんや。お<ruby>湯<rt>ゆ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にするためやで。<br>*(Đúng. Thứ tự là Tony → cô → Đại. Để tiết kiệm nước.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>温度<rt>おんど</rt></ruby>は<ruby>何度<rt>なんど</rt></ruby>ぐらいですか？<br>*(Em rõ ạ. Nhiệt độ khoảng bao nhiêu ạ?)* |
| Yumi | <ruby>40<rt>よんじゅう</rt></ruby>〜<ruby>42度<rt>よんじゅうにど</rt></ruby>ぐらい。<ruby>熱<rt>あつ</rt></ruby>すぎたら<ruby>水<rt>みず</rt></ruby>を<ruby>足<rt>た</rt></ruby>してええで。<br>*(Khoảng 40-42 độ. Nóng quá thì pha thêm nước lạnh cũng được.)* |
| Đại | <ruby>朝風呂<rt>あさぶろ</rt></ruby>もしてもいいですか？<br>*(Tắm sáng có được không ạ?)* |
| Yumi | <ruby>朝<rt>あさ</rt></ruby>はシャワーだけにしてな。<ruby>湯船<rt>ゆぶね</rt></ruby>は<ruby>夜<rt>よる</rt></ruby>だけや。<br>*(Sáng chỉ tắm vòi thôi nhé. Bồn chỉ dùng buổi tối.)* |

---

## Tình huống 6 — Hành lang · 21:30, từ chối lịch sự khi Tony mời uống bia

| Vai | Lời thoại |
|---|---|
| Tony | ダイくん、お<ruby>風呂<rt>ふろ</rt></ruby>の<ruby>後<rt>あと</rt></ruby>にビールでもどうや？<br>*(Đại, sau khi tắm uống bia với chú không?)* |
| Đại | あ、すみません、<ruby>私<rt>わたし</rt></ruby>はまだ<ruby>19歳<rt>じゅうきゅうさい</rt></ruby>なので、お<ruby>酒<rt>さけ</rt></ruby>はちょっと…<br>*(À, xin lỗi chú, cháu mới 19 tuổi nên rượu bia thì hơi…)* |
| Tony | あ、そうやな！<ruby>日本<rt>にほん</rt></ruby>は<ruby>20歳<rt>はたち</rt></ruby>からやな。<ruby>忘<rt>わす</rt></ruby>れてた、ごめんな。<br>*(À đúng rồi! Ở Nhật phải 20 tuổi mới được. Chú quên, xin lỗi nhé.)* |
| Đại | いえいえ、お<ruby>気持<rt>きも</rt></ruby>ちだけで<ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>代<rt>か</rt></ruby>わりにお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>みませんか？<br>*(Dạ không. Tấm lòng chú đã đủ vui rồi. Thay vào đó cháu mời chú uống trà nhé?)* |
| Tony | おお、ええな！<ruby>緑茶<rt>りょくちゃ</rt></ruby>を<ruby>淹<rt>い</rt></ruby>れよう。<br>*(Ô, hay đó! Pha trà xanh đi.)* |
| Đại | <ruby>私<rt>わたし</rt></ruby>が<ruby>淹<rt>い</rt></ruby>れます。<ruby>淹<rt>い</rt></ruby>れ<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cháu pha cho. Chú chỉ cháu cách pha với ạ?)* |
| Tony | （<ruby>笑<rt>わら</rt></ruby>う）ええ<ruby>子<rt>こ</rt></ruby>やな。<ruby>急須<rt>きゅうす</rt></ruby>に<ruby>茶葉<rt>ちゃば</rt></ruby>を<ruby>入<rt>い</rt></ruby>れて、<ruby>70度<rt>ななじゅうど</rt></ruby>のお<ruby>湯<rt>ゆ</rt></ruby>を<ruby>注<rt>そそ</rt></ruby>ぐ。<ruby>1分<rt>いっぷん</rt></ruby><ruby>待<rt>ま</rt></ruby>つだけや。<br>*(Cười. Ngoan ghê. Cho lá trà vào ấm, đổ nước nóng 70 độ. Đợi 1 phút là xong.)* |

---

## Tình huống 7 — Bếp · chủ nhật, Yumi dạy nấu okonomiyaki

*Cuối tuần đầu tháng 5, cô Yumi mời Đại học nấu okonomiyaki — đặc sản Osaka.*

| Vai | Lời thoại |
|---|---|
| Yumi | ダイくん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>好<rt>この</rt></ruby>み<ruby>焼<rt>や</rt></ruby>きを<ruby>作<rt>つく</rt></ruby>ろう！<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>名物<rt>めいぶつ</rt></ruby>やで。<br>*(Đại, hôm nay làm okonomiyaki nhé! Đặc sản Osaka.)* |
| Đại | わあ、<ruby>嬉<rt>うれ</rt></ruby>しいです！<ruby>材料<rt>ざいりょう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Wow, cháu mừng quá! Nguyên liệu gồm những gì ạ?)* |
| Yumi | キャベツ、<ruby>豚肉<rt>ぶたにく</rt></ruby>、<ruby>卵<rt>たまご</rt></ruby>、<ruby>小麦粉<rt>こむぎこ</rt></ruby>、<ruby>山芋<rt>やまいも</rt></ruby>、<ruby>出汁<rt>だし</rt></ruby>や。<br>*(Bắp cải, thịt heo, trứng, bột mì, khoai mài, nước dùng dashi.)* |
| Đại | すみません、「<ruby>山芋<rt>やまいも</rt></ruby>」というのは？<br>*(Xin lỗi, "yamaimo" là gì ạ?)* |
| Yumi | これや。すりおろして<ruby>入<rt>い</rt></ruby>れるとフワフワになるねん。<br>*(Cái này nè. Mài nhuyễn cho vào sẽ bông xốp.)* |
| Đại | なるほど！<ruby>切<rt>き</rt></ruby>ります？<br>*(Ra vậy! Cháu thái nhé?)* |
| Yumi | はい。キャベツを<ruby>細<rt>こま</rt></ruby>かく<ruby>千切<rt>せんぎ</rt></ruby>りにして。<br>*(Vâng. Thái bắp cải nhỏ kiểu sợi.)* |
| Đại | （<ruby>切<rt>き</rt></ruby>る）これぐらいですか？<br>*(Thái. Nhỏ thế này được không ạ?)* |
| Yumi | もうちょい<ruby>細<rt>こま</rt></ruby>かく。お<ruby>好<rt>この</rt></ruby>み<ruby>焼<rt>や</rt></ruby>きは<ruby>細<rt>こま</rt></ruby>かい<ruby>千切<rt>せんぎ</rt></ruby>りが<ruby>命<rt>いのち</rt></ruby>やで。<br>*(Nhỏ thêm chút. Okonomiyaki sợi mịn là quan trọng nhất.)* |
| Tony | （<ruby>来<rt>く</rt></ruby>る）<ruby>焼<rt>や</rt></ruby>くんは<ruby>俺<rt>おれ</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>や。<ruby>大事<rt>だいじ</rt></ruby>なんは、<ruby>裏返<rt>うらがえ</rt></ruby>すんは<ruby>1回<rt>いっかい</rt></ruby>だけ。<ruby>何回<rt>なんかい</rt></ruby>もひっくり<ruby>返<rt>かえ</rt></ruby>したらあかんで。<br>*(Đến. Phần nướng chú phụ trách. Quan trọng nhất là chỉ lật 1 lần. Lật nhiều lần là hỏng nhé.)* |
| Đại | （<ruby>観察<rt>かんさつ</rt></ruby>する）はい、<ruby>1回<rt>いっかい</rt></ruby>だけ。<br>*(Quan sát. Vâng, chỉ 1 lần.)* |

---

## Tình huống 8 — Bếp · chủ nhật sau, Đại dạy phở Việt Nam

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がベトナムのフォーを<ruby>作<rt>つく</rt></ruby>ります。<br>*(Hôm nay cháu sẽ làm phở Việt Nam ạ.)* |
| Yumi | わあ、<ruby>楽<rt>たの</rt></ruby>しみやわ！<ruby>材料<rt>ざいりょう</rt></ruby>は？<br>*(Wow, cô háo hức quá! Nguyên liệu gì cháu?)* |
| Đại | <ruby>米麺<rt>こめめん</rt></ruby>、<ruby>牛肉<rt>ぎゅうにく</rt></ruby>、<ruby>牛骨<rt>ぎゅうこつ</rt></ruby>、<ruby>八角<rt>はっかく</rt></ruby>、シナモン、<ruby>玉<rt>たま</rt></ruby>ねぎ、ライム、パクチーです。<br>*(Bánh phở, thịt bò, xương bò, hồi, quế, hành tây, chanh, rau mùi ạ.)* |
| Tony | <ruby>八角<rt>はっかく</rt></ruby>か！<ruby>香<rt>かお</rt></ruby>りが<ruby>強<rt>つよ</rt></ruby>いやろ？<br>*(Có cả hồi! Mùi mạnh nhỉ?)* |
| Đại | はい。<ruby>八角<rt>はっかく</rt></ruby>とシナモンがフォーの<ruby>特徴<rt>とくちょう</rt></ruby>です。<ruby>牛骨<rt>ぎゅうこつ</rt></ruby>のスープを<ruby>3時間<rt>さんじかん</rt></ruby><ruby>煮<rt>に</rt></ruby><ruby>込<rt>こ</rt></ruby>みます。<br>*(Vâng. Hồi và quế là điểm đặc trưng của phở. Hầm nước xương bò 3 tiếng ạ.)* |
| Yumi | <ruby>3時間<rt>さんじかん</rt></ruby>！？<ruby>長<rt>なが</rt></ruby>いね。<br>*(3 tiếng!? Lâu nhỉ.)* |
| Đại | はい、<ruby>本物<rt>ほんもの</rt></ruby>のフォーは<ruby>時間<rt>じかん</rt></ruby>がかかります。<ruby>母<rt>はは</rt></ruby>からレシピを<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(Vâng, phở chuẩn vị thì mất thời gian. Cháu được mẹ chỉ công thức.)* |
| Tony | （<ruby>食<rt>た</rt></ruby>べる）…めっちゃうまい！<ruby>本物<rt>ほんもの</rt></ruby>やん！<br>*(Ăn. Ngon thật! Đúng vị luôn!)* |
| Yumi | <ruby>感動<rt>かんどう</rt></ruby>したわ。<ruby>毎月<rt>まいつき</rt></ruby><ruby>1回<rt>いっかい</rt></ruby>、フォーを<ruby>作<rt>つく</rt></ruby>ってくれへんか？<br>*(Cô cảm động lắm. Mỗi tháng cháu làm phở cho cô chú một lần được không?)* |
| Đại | はい、<ruby>喜<rt>よろこ</rt></ruby>んで！<br>*(Vâng, cháu rất sẵn lòng!)* |

---

## Tình huống 9 — Trước tủ lạnh · tuần 2, bảng kanji nhà bếp

| Vai | Lời thoại |
|---|---|
| Yumi | ダイくん、<ruby>冷蔵庫<rt>れいぞうこ</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>表<rt>ひょう</rt></ruby>を<ruby>貼<rt>は</rt></ruby>ったで。<br>*(Đại, cô dán bảng mới lên tủ lạnh rồi.)* |
| Đại | （<ruby>見<rt>み</rt></ruby>る）<ruby>調味料<rt>ちょうみりょう</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>ですね！<br>*(Nhìn. Bảng kanji gia vị cô nhỉ!)* |
| Yumi | せやで。<ruby>醤油<rt>しょうゆ</rt></ruby>、<ruby>味噌<rt>みそ</rt></ruby>、<ruby>砂糖<rt>さとう</rt></ruby>、<ruby>塩<rt>しお</rt></ruby>、<ruby>酢<rt>す</rt></ruby>、みりん、<ruby>酒<rt>さけ</rt></ruby>、<ruby>出汁<rt>だし</rt></ruby>。<br>*(Đúng. Xì dầu, miso, đường, muối, dấm, mirin, rượu, dashi.)* |
| Đại | 「みりん」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Mirin là gì ạ?)* |
| Yumi | <ruby>甘<rt>あま</rt></ruby>い<ruby>料理用<rt>りょうりよう</rt></ruby>のお<ruby>酒<rt>さけ</rt></ruby>や。<ruby>照<rt>て</rt></ruby>り<ruby>焼<rt>や</rt></ruby>きとか<ruby>煮物<rt>にもの</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うねん。<br>*(Rượu ngọt dùng nấu ăn. Dùng cho teriyaki hay món hầm.)* |
| Đại | なるほど。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>新<rt>あたら</rt></ruby>しい<ruby>表<rt>ひょう</rt></ruby>を<ruby>貼<rt>は</rt></ruby>っていただけますか？<br>*(Ra vậy. Mỗi tuần cô dán bảng mới giúp cháu được không ạ?)* |
| Yumi | もちろんや。<ruby>来週<rt>らいしゅう</rt></ruby>は<ruby>野菜<rt>やさい</rt></ruby>と<ruby>魚<rt>さかな</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>にしよう。<br>*(Tất nhiên. Tuần sau làm kanji rau và cá nhé.)* |
| Đại | ありがとうございます！<ruby>1週間<rt>いっしゅうかん</rt></ruby>で<ruby>5<rt>いつ</rt></ruby>つずつ<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Cháu cảm ơn cô! Mỗi tuần cháu thuộc 5 từ ạ.)* |

---

## Tình huống 10 — Sảnh nhà · chiều thứ Bảy, hỏi mượn xe đạp đi Namba

| Vai | Lời thoại |
|---|---|
| Đại | ユミさん、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>友達<rt>ともだち</rt></ruby>と<ruby>難波<rt>なんば</rt></ruby>に<ruby>行<rt>い</rt></ruby>きたいんですが、<ruby>自転車<rt>じてんしゃ</rt></ruby>を<ruby>貸<rt>か</rt></ruby>していただけますか？<br>*(Cô Yumi ơi, hôm nay cháu muốn đi Namba với bạn, cô cho cháu mượn xe đạp được không ạ?)* |
| Yumi | あ、<ruby>難波<rt>なんば</rt></ruby>までは<ruby>自転車<rt>じてんしゃ</rt></ruby>はちょっと<ruby>遠<rt>とお</rt></ruby>いで。<ruby>地下鉄<rt>ちかてつ</rt></ruby>で<ruby>行<rt>い</rt></ruby>った<ruby>方<rt>ほう</rt></ruby>がええよ。<br>*(À, đi xe đạp đến Namba hơi xa. Đi metro thì tốt hơn.)* |
| Đại | そうですか。<ruby>地下鉄<rt>ちかてつ</rt></ruby>はいくらですか？<br>*(Vậy ạ. Metro giá bao nhiêu ạ?)* |
| Yumi | <ruby>天王寺<rt>てんのうじ</rt></ruby>から<ruby>難波<rt>なんば</rt></ruby>まで<ruby>240円<rt>にひゃくよんじゅうえん</rt></ruby>。ICOCAあれば<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>くなるで。<br>*(Từ Tennoji đến Namba 240 yên. Có ICOCA thì rẻ hơn chút.)* |
| Đại | ICOCAはまだ<ruby>持<rt>も</rt></ruby>っていません。<br>*(Cháu chưa có ICOCA.)* |
| Yumi | じゃあ<ruby>本日<rt>ほんじつ</rt></ruby><ruby>駅<rt>えき</rt></ruby>で<ruby>買<rt>か</rt></ruby>ってきたらええで。チャージは<ruby>1000円<rt>せんえん</rt></ruby>から。<br>*(Vậy hôm nay ra ga mua. Nạp tiền từ 1000 yên trở lên.)* |
| Đại | はい、ありがとうございます。<ruby>夜<rt>よる</rt></ruby><ruby>7時<rt>しちじ</rt></ruby>までに<ruby>帰<rt>かえ</rt></ruby>ります。<br>*(Vâng, cháu cảm ơn cô. Cháu sẽ về trước 7 giờ tối.)* |
| Yumi | <ruby>遅<rt>おそ</rt></ruby>くなったら<ruby>必<rt>かなら</rt></ruby>ずLINEしてな。<br>*(Về muộn thì nhất định nhắn LINE nhé.)* |

---

## Tình huống 11 — Bàn ăn · 30/4, bữa cuối tháng + phản hồi 1 tháng

| Vai | Lời thoại |
|---|---|
| Tony | ダイくん、<ruby>1ヶ月<rt>いっかげつ</rt></ruby>たったな。<ruby>感想<rt>かんそう</rt></ruby>はどう？<br>*(Đại, vậy là 1 tháng rồi. Cảm thấy thế nào?)* |
| Đại | はい！とても<ruby>勉強<rt>べんきょう</rt></ruby>になります。お<ruby>箸<rt>はし</rt></ruby>の<ruby>3<rt>みっ</rt></ruby>つのルール、ゴミの<ruby>5<rt>ご</rt></ruby><ruby>分類<rt>ぶんるい</rt></ruby>、お<ruby>風呂<rt>ふろ</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>…たくさん<ruby>学<rt>まな</rt></ruby>びました。<br>*(Vâng! Cháu học được rất nhiều thứ ạ. 3 quy tắc về đũa, 5 loại rác, thứ tự tắm bồn... rất nhiều.)* |
| Đại | トニーさんとユミさんは<ruby>第二<rt>だいに</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby>みたいです。<br>*(Bác Tony và cô Yumi như gia đình thứ hai của cháu.)* |
| Yumi | （<ruby>嬉<rt>うれ</rt></ruby>しそう）こちらこそ。ベトナムの<ruby>料理<rt>りょうり</rt></ruby>も、<ruby>挨拶<rt>あいさつ</rt></ruby>も、<ruby>勉強<rt>べんきょう</rt></ruby>させてもろてるで。<br>*(Cảm động. Cô chú mới phải cảm ơn. Được học cả món ăn lẫn lời chào tiếng Việt.)* |
| Tony | <ruby>2方向<rt>にほうこう</rt></ruby>の<ruby>交流<rt>こうりゅう</rt></ruby>やな。<br>*(Giao lưu hai chiều nhỉ.)* |
| Đại | はい、そう<ruby>思<rt>おも</rt></ruby>います。<ruby>残<rt>のこ</rt></ruby>りの<ruby>2ヶ月<rt>にかげつ</rt></ruby>もお<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Vâng, cháu cũng nghĩ vậy. 2 tháng tới cháu xin nhờ cô chú tiếp ạ.)* |
| Yumi | <ruby>来月<rt>らいげつ</rt></ruby>からアルバイトも<ruby>始<rt>はじ</rt></ruby>めるんやろ？<ruby>無理<rt>むり</rt></ruby>せんといてな。<br>*(Tháng sau bắt đầu đi làm thêm phải không? Đừng cố quá nhé.)* |
| Đại | はい、<ruby>週<rt>しゅう</rt></ruby><ruby>16時間<rt>じゅうろくじかん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<ruby>学校<rt>がっこう</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Vâng, cháu bắt đầu từ 16 tiếng/tuần. Việc học vẫn là quan trọng nhất.)* |

---

## Tình huống 12 — Phòng riêng · 22:00, LINE video với bố mẹ Hà Nội

> Cảnh tiếng Việt — Đại gọi LINE video về Hà Nội sau 1 tháng homestay.

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Mẹ ơi, bố ơi! Tròn 1 tháng homestay rồi nhé. |
| Mẹ | (VN) Trông con khoẻ ra đấy. Cô chú đối xử tử tế không? |
| Đại | (VN) Tốt lắm mẹ. Cô Yumi dạy con cách cầm đũa Nhật, phân rác 5 loại. Chú Tony chỉ cách tắm bồn. |
| Bố | (VN) Phân rác 5 loại á? Khắc nghiệt thế. |
| Đại | (VN) Vâng bố. Còn tắm thì cả nhà chung một bồn nước nóng, mỗi người chỉ ngâm, không tháo nước. |
| Mẹ | (VN) Trời, mẹ chịu. Thế ăn uống có hợp không? |
| Đại | (VN) Hợp mẹ. Cô Yumi dạy con nấu okonomiyaki, con dạy lại cô chú phở. Cô chú khen "bản đúng vị". |
| Bố | (VN) Tự hào con. Còn việc học? |
| Đại | (VN) Vào lớp B luyện N3 lên N2. Cô Yamada chủ nhiệm nghiêm khắc nhưng có tâm. Cô giới thiệu kỳ thi EJU, điểm cao thì được học bổng vào ĐH Osaka. |
| Mẹ | (VN) Cố lên con. Tháng này mẹ chuyển khoản 2 triệu sang nhé? |
| Đại | (VN) Mẹ ơi, tháng sau con bắt đầu làm thêm Lawson. Lương 1100 yên/giờ, mỗi tháng được 70k yên. Mẹ chỉ cần lo học phí thôi, sinh hoạt con tự lo được. |
| Bố | (VN) Đừng vội, mới sang còn lạ. Học là chính, đừng tham làm thêm. |
| Đại | (VN) Vâng bố. Mục tiêu vẫn là ĐH Osaka. Mai chủ nhật con đi Namba với Tuấn + Linh tham quan Dotonbori. |
| Mẹ | (VN) Cẩn thận khi đi đường. Tuần sau gọi tiếp nhé. |
| Đại | (VN) Vâng, con yêu bố mẹ. |

---

## Đọng lại chương 3

Sau 1 tháng homestay, Đại học các mẫu câu đời sống Nhật hằng ngày: **xin được giúp** (〜を手伝ってもいいですか・〜ていただけますか), **hỏi nghĩa từ** (〜というのは何ですか), **từ chối lịch sự** (お酒はちょっと…・代わりに〜しませんか), **xin hướng dẫn cách làm** (〜を教えていただけますか), **báo cáo & hứa hẹn** (〜までに帰ります・遅くなったらLINEします), **bày tỏ cảm xúc qua bữa cơm** (いただきます・ごちそうさま・〜お代わり). Đại nắm 3 quy tắc đũa (持ち上げる・立てない・箸から箸へ渡さない), 5 phân rác Osaka, quy tắc お風呂 cả nhà chung nước nóng, và biết phân biệt 醤油・味噌・砂糖・塩・酢・みりん・酒・出汁 qua bảng kanji cô Yumi dán tủ lạnh. Bếp nhà Tanaka thành lớp học hai chiều: cô Yumi dạy okonomiyaki, Đại dạy phở. Cuối tháng Đại gọi LINE bố mẹ Hà Nội — báo sắp bắt đầu baito Lawson.

> Từ vựng & mẫu câu chương này: お箸・茶碗・仏壇・葬式・骨拾い・いただきます・ごちそうさま・納豆・大豆発酵食品・ねばねば・食器・スポンジ・布巾・普通ゴミ・資源ゴミ・古紙・容器包装プラスチック・粗大ゴミ・湯船・共有・お好み焼き・千切り・山芋・出汁・八角・米麺・醤油・味噌・みりん・〜してもいいですか・〜ていただけますか・〜はちょっと…・代わりに〜しませんか・〜までに〜します

## Bí quyết chương

- **3 quy tắc đũa**: Cú sốc văn hoá đầu — đặc biệt cấm chuyền đũa-đũa vì gợi 骨拾い tang lễ.
- **5 phân rác Osaka**: Đặc trưng đô thị Nhật — bảng nam châm tủ lạnh là mẹo thực tế.
- **Bồn tắm chung nước**: Quy tắc đặc trưng — Tony → Yumi → Đại theo thứ tự.
- **Từ chối rượu lịch sự**: Mẫu câu hữu ích cho du học sinh dưới 20 tuổi.
- **Nấu hai chiều**: Cô Yumi - okonomiyaki, Đại - phở. Tôn trọng văn hoá lẫn nhau.
- **Bảng kanji tủ lạnh**: Cô Yumi sáng tạo dạy chữ — mỗi tuần một chủ đề mới.
- **Mâu thuẫn mẹ gửi tiền vs Đại làm thêm**: Mở mạch cho T4 phỏng vấn Lawson.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 箸 | はし | TRỢ | Đũa |
| 持ち方 | もちかた | TRÌ PHƯƠNG | Cách cầm |
| 茶碗 | ちゃわん | TRÀ UYỂN | Bát cơm |
| 禁止 | きんし | CẤM CHỈ | Cấm |
| 仏壇 | ぶつだん | PHẬT ĐÀN | Bàn thờ Phật |
| 縁起 | えんぎ | DUYÊN KHỞI | Điềm lành |
| 葬式 | そうしき | TÁNG THỨC | Tang lễ |
| 骨拾い | こつひろい | CỐT THẬP | Nhặt cốt người chết |
| 納豆 | なっとう | NẠP ĐẬU | Đậu nành lên men |
| 辛子 | からし | TÂN TỬ | Mù tạt |
| 大豆 | だいず | ĐẠI ĐẬU | Đậu nành |
| 発酵食品 | はっこうしょくひん | PHÁT KHỐC THỰC PHẨM | Thực phẩm lên men |
| 独特 | どくとく | ĐỘC ĐẶC | Đặc trưng riêng |
| 挑戦 | ちょうせん | THÁCH CHIẾN | Thử thách |
| 食器 | しょっき | THỰC KHÍ | Bát đĩa |
| 油物 | あぶらもの | DU VẬT | Đồ dầu mỡ |
| 布巾 | ふきん | BỐ CÂN | Khăn lau |
| 家事 | かじ | GIA SỰ | Việc nhà |
| 普通ゴミ | ふつうゴミ | PHỔ THÔNG | Rác sinh hoạt |
| 資源ゴミ | しげんゴミ | TÀI NGUYÊN | Rác tài nguyên |
| 缶 | かん | QUÁN | Lon |
| 古紙 | こし | CỔ CHỈ | Giấy cũ |
| 雑誌 | ざっし | TẠP CHÍ | Tạp chí |
| 容器包装 | ようきほうそう | DUNG KHÍ BAO TRANG | Bao bì đựng |
| 粗大ゴミ | そだいゴミ | THÔ ĐẠI | Rác cồng kềnh |
| 有料 | ゆうりょう | HỮU LIỆU | Có phí |
| 区役所 | くやくしょ | KHU DỊCH SỞ | Uỷ ban quận |
| 冷蔵庫 | れいぞうこ | LÃNH TẠNG KHỐ | Tủ lạnh |
| 違反 | いはん | VI PHẢN | Vi phạm |
| 湯船 | ゆぶね | THANG THUYỀN | Bồn tắm |
| 共有 | きょうゆう | CỘNG HỮU | Dùng chung |
| 順番 | じゅんばん | THUẬN PHIÊN | Thứ tự |
| 温度 | おんど | ÔN ĐỘ | Nhiệt độ |
| 朝風呂 | あさぶろ | TRIÊU PHONG LỮ | Tắm sáng |
| 急須 | きゅうす | CẤP TU | Ấm trà |
| 茶葉 | ちゃば | TRÀ DIỆP | Lá trà |
| お好み焼き | おこのみやき | HẢO THIÊU | Bánh xèo Nhật okonomiyaki |
| 名物 | めいぶつ | DANH VẬT | Đặc sản |
| 材料 | ざいりょう | TÀI LIỆU | Nguyên liệu |
| 豚肉 | ぶたにく | ĐỒN NHỤC | Thịt lợn |
| 小麦粉 | こむぎこ | TIỂU MẠCH PHẤN | Bột mì |
| 山芋 | やまいも | SƠN VU | Khoai mài |
| 出汁 | だし | XUẤT TRẤP | Nước dùng dashi |
| 千切り | せんぎり | THIÊN THIẾT | Thái sợi mảnh |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 観察 | かんさつ | QUAN SÁT | Quan sát |
| 米麺 | こめめん | MỄ MIẾN | Bánh phở |
| 牛肉 | ぎゅうにく | NGƯU NHỤC | Thịt bò |
| 牛骨 | ぎゅうこつ | NGƯU CỐT | Xương bò |
| 八角 | はっかく | BÁT GIÁC | Hoa hồi |
| 玉ねぎ | たまねぎ | NGỌC | Hành tây |
| 特徴 | とくちょう | ĐẶC TRƯNG | Đặc trưng |
| 煮込む | にこむ | CHỬ ĐỒNG | Hầm |
| 感動 | かんどう | CẢM ĐỘNG | Cảm động |
| 調味料 | ちょうみりょう | ĐIỀU VỊ LIỆU | Gia vị |
| 醤油 | しょうゆ | TƯƠNG DU | Nước tương, xì dầu |
| 味噌 | みそ | VỊ TĂNG | Tương miso |
| 砂糖 | さとう | SA ĐƯỜNG | Đường |
| 塩 | しお | DIÊM | Muối |
| 酢 | す | THỐ | Giấm |
| 酒 | さけ | TỬU | Rượu |
| 料理用 | りょうりよう | LIỆU LÝ DỤNG | Dùng để nấu |
| 照り焼き | てりやき | CHIẾU THIÊU | Teriyaki |
| 煮物 | にもの | CHỬ VẬT | Món hầm |
| 自転車 | じてんしゃ | TỰ CHUYỂN XA | Xe đạp |
| 感想 | かんそう | CẢM TƯỞNG | Cảm tưởng |
| 第二の家族 | だいにのかぞく | ĐỆ NHỊ GIA TỘC | Gia đình thứ hai |
| 挨拶 | あいさつ | ÁP SÁT | Lời chào |
| 交流 | こうりゅう | GIAO LƯU | Giao lưu |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000004, 800000019, NULL, 'markdown_book', 'T4. Phỏng vấn baito Lawson Namba (バイト面接)', '# Sách du học sinh tiếng Nhật · T4. Phỏng vấn baito Lawson Namba (バイト面接)

> **Mục tiêu nhân vật:** 6/2024. Đại quen Nhật 2 tháng, bắt đầu xin baito. Học các mẫu hội thoại tìm việc làm thêm: hỏi xin lời khuyên giáo viên (アドバイスをいただけますか), viết 履歴書 + 志望動機, gọi điện hẹn phỏng vấn (お電話差し上げました), tập phỏng vấn cùng người trong nhà, tự giới thiệu trang trọng + trả lời 5 câu hỏi điển hình (志望動機・シフト・経験・困った状況), thương lượng lịch + lương, kết thúc phỏng vấn lễ phép (本日はありがとうございました).

---

## Bối cảnh

6/2024. Đại có giấy phép baito từ tháng 4 (xin ngay ở 入管 sân bay Kansai). Đã học 1 tháng vocab phỏng vấn ở lớp B. Cô Yamada khuyên thử convenience store. Đại nộp 5 đơn, được Lawson Namba (gần ga Namba, khoảng 5 phút từ Tennoji bằng Midosuji) gọi phỏng vấn. Quản lý là Suzuki tenchou, 50 tuổi, người Osaka chính gốc. Chương này tập trung các mẫu câu Đại dùng từ lúc xin lời khuyên cô giáo, viết CV, gọi xác nhận phỏng vấn, cho đến buổi phỏng vấn thực tế.

---

## Tình huống 1 — Phòng giáo viên · 17:00, xin lời khuyên cô Yamada

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田先生<rt>やまだせんせい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいですか？<br>*(Cô Yamada, em xin cô chút thời gian được không ạ?)* |
| Yamada | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | アルバイトを<ruby>始<rt>はじ</rt></ruby>めたいんですが、おすすめはありますか？<br>*(Em muốn bắt đầu đi làm thêm, cô có gợi ý gì không ạ?)* |
| Yamada | <ruby>初<rt>はじ</rt></ruby>めての<ruby>留学生<rt>りゅうがくせい</rt></ruby>にはコンビニがおすすめです。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>4<rt>よっ</rt></ruby>つあります。<br>*(Với du học sinh mới, tôi khuyên cửa hàng tiện lợi. Có 4 lý do.)* |
| Yamada | ①シフトが<ruby>柔軟<rt>じゅうなん</rt></ruby>。②マニュアルが<ruby>明確<rt>めいかく</rt></ruby>。③<ruby>敬語<rt>けいご</rt></ruby>の<ruby>実践<rt>じっせん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>になる。④<ruby>食事<rt>しょくじ</rt></ruby><ruby>支給<rt>しきゅう</rt></ruby>のあるところも<ruby>多<rt>おお</rt></ruby>い。<br>*(① Ca làm linh hoạt. ② Quy trình rõ ràng. ③ Luyện kính ngữ thực tế. ④ Nhiều nơi còn cho ăn.)* |
| Đại | ありがとうございます。ローソン<ruby>難波<rt>なんば</rt></ruby><ruby>店<rt>てん</rt></ruby>の<ruby>募集<rt>ぼしゅう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ました。<ruby>応募<rt>おうぼ</rt></ruby>してみてもいいでしょうか？<br>*(Em cảm ơn cô. Em thấy Lawson Namba đang tuyển. Em ứng tuyển được không ạ?)* |
| Yamada | いいですよ。<ruby>履歴書<rt>りれきしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>く<ruby>時<rt>とき</rt></ruby>に、<ruby>志望動機<rt>しぼうどうき</rt></ruby>で<ruby>困<rt>こま</rt></ruby>ったら<ruby>相談<rt>そうだん</rt></ruby>してくださいね。<br>*(Được. Lúc viết CV, phần lý do ứng tuyển khó thì cứ hỏi cô.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em nhờ cô ạ.)* |

---

## Tình huống 2 — Phòng riêng · 21:00, hỏi cô Yumi cách viết 志望動機

| Vai | Lời thoại |
|---|---|
| Đại | ユミさん、<ruby>履歴書<rt>りれきしょ</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cô Yumi ơi, cô chỉ cháu cách viết sơ yếu lý lịch được không ạ?)* |
| Yumi | ええで！どこが<ruby>難<rt>むずか</rt></ruby>しい？<br>*(Được! Chỗ nào khó?)* |
| Đại | <ruby>志望動機<rt>しぼうどうき</rt></ruby>です。<ruby>何<rt>なん</rt></ruby>と<ruby>書<rt>か</rt></ruby>けばいいか<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Phần lý do ứng tuyển ạ. Cháu không biết viết gì.)* |
| Yumi | <ruby>志望動機<rt>しぼうどうき</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つの<ruby>要素<rt>ようそ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れたらええで。①<ruby>店<rt>みせ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んだ<ruby>理由<rt>りゆう</rt></ruby>、②<ruby>自分<rt>じぶん</rt></ruby>の<ruby>長所<rt>ちょうしょ</rt></ruby>、③これからどうしたいか。<br>*(Lý do ứng tuyển có 3 yếu tố: ① Vì sao chọn cửa hàng này, ② Điểm mạnh của mình, ③ Muốn làm gì sau này.)* |
| Đại | （メモする）<ruby>例<rt>れい</rt></ruby>えば？<br>*(Ghi chép. Ví dụ ạ?)* |
| Yumi | 「<ruby>日本文化<rt>にほんぶんか</rt></ruby>を<ruby>体験<rt>たいけん</rt></ruby>し、<ruby>敬語<rt>けいご</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>することが<ruby>目的<rt>もくてき</rt></ruby>です。<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<ruby>将来<rt>しょうらい</rt></ruby>は<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>に<ruby>進学<rt>しんがく</rt></ruby>したいので、<ruby>大阪<rt>おおさか</rt></ruby>での<ruby>仕事<rt>しごと</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしたいです」って<ruby>感<rt>かん</rt></ruby>じや。<br>*(Đại loại: "Mục đích là trải nghiệm văn hoá Nhật và luyện kính ngữ. Em sẽ làm việc nghiêm túc. Tương lai em muốn thi vào ĐH Osaka nên muốn trân trọng kinh nghiệm làm việc tại Osaka.")* |
| Đại | ありがとうございます！<ruby>具体的<rt>ぐたいてき</rt></ruby>でいいですね。<br>*(Cháu cảm ơn cô! Cụ thể hay quá.)* |

---

## Tình huống 3 — Phòng riêng · 22:00, gọi điện hẹn phỏng vấn Lawson

*Đại đã nộp 5 đơn online qua バイトル (Baitoru). Lawson Namba gửi mail mời gọi xác nhận lịch.*

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>電話<rt>でんわ</rt></ruby>する）<br>*(Gọi điện.)* |
| Suzuki | はい、ローソン<ruby>難波<rt>なんば</rt></ruby><ruby>店<rt>てん</rt></ruby>、<ruby>店長<rt>てんちょう</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>です。<br>*(Vâng, Lawson Namba, tôi là Suzuki, quản lý cửa hàng.)* |
| Đại | お<ruby>世話<rt>せわ</rt></ruby>になっております。アルバイト<ruby>応募<rt>おうぼ</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>面接<rt>めんせつ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でお<ruby>電話<rt>でんわ</rt></ruby><ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げました。<br>*(Cảm ơn anh đã quan tâm. Em là Nguyễn Văn Đại ứng tuyển làm thêm. Em gọi xác nhận lịch phỏng vấn ạ.)* |
| Suzuki | ああ、グエンさん！<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>火曜日<rt>かようび</rt></ruby><ruby>13時半<rt>じゅうさんじはん</rt></ruby>でいかがでしょうか？<br>*(À, anh Nguyễn! Thứ Ba tuần sau lúc 13 giờ rưỡi được không?)* |
| Đại | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>店舗<rt>てんぽ</rt></ruby>でよろしいでしょうか？<br>*(Vâng, em được ạ. Địa điểm là tại cửa hàng phải không ạ?)* |
| Suzuki | はい、<ruby>店舗<rt>てんぽ</rt></ruby>のバックヤードでお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>履歴書<rt>りれきしょ</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきてくださいね。<br>*(Vâng, ở phòng phía trong cửa hàng. Mang theo CV nhé.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しいところ、ありがとうございました。<br>*(Em rõ ạ. Hôm nay làm phiền anh giữa lúc bận, em cảm ơn ạ.)* |
| Suzuki | はい、では<ruby>火曜日<rt>かようび</rt></ruby>に。<br>*(Vâng, hẹn Thứ Ba nhé.)* |
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em xin phép.)* |

---

## Tình huống 4 — Phòng khách · 19:30, Tony tập phỏng vấn vai 店長

| Vai | Lời thoại |
|---|---|
| Tony | ダイくん、<ruby>面接<rt>めんせつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>しよか。<ruby>俺<rt>おれ</rt></ruby>が<ruby>店長<rt>てんちょう</rt></ruby><ruby>役<rt>やく</rt></ruby>や。<br>*(Đại, tập phỏng vấn với chú nhé. Chú đóng vai quản lý.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cháu nhờ chú.)* |
| Tony | （<ruby>店長<rt>てんちょう</rt></ruby><ruby>役<rt>やく</rt></ruby>）グエンさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。まず<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vai quản lý. Anh Nguyễn, cảm ơn anh đã đến hôm nay. Trước tiên mời anh tự giới thiệu.)* |
| Đại | はい！<ruby>初<rt>はじ</rt></ruby>めまして、グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>19歳<rt>じゅうきゅうさい</rt></ruby>、ベトナムのハノイ<ruby>出身<rt>しゅっしん</rt></ruby>です。<ruby>関西<rt>かんさい</rt></ruby><ruby>語言<rt>ごげん</rt></ruby><ruby>学院<rt>がくいん</rt></ruby>のBクラスで<ruby>勉強<rt>べんきょう</rt></ruby>しております。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng! Rất hân hạnh, em là Nguyễn Văn Đại. 19 tuổi, quê Hà Nội Việt Nam. Em đang học lớp B trường Kansai Gogo Gakuin. Hôm nay xin được làm phiền anh.)* |
| Tony | <ruby>志望動機<rt>しぼうどうき</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho biết lý do ứng tuyển.)* |
| Đại | はい！<ruby>日本文化<rt>にほんぶんか</rt></ruby>に<ruby>触<rt>ふ</rt></ruby>れたいことと、<ruby>敬語<rt>けいご</rt></ruby>を<ruby>実践<rt>じっせん</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>したいことです。コンビニは<ruby>様々<rt>さまざま</rt></ruby>なお<ruby>客様<rt>きゃくさま</rt></ruby>と<ruby>接<rt>せっ</rt></ruby>することができるので、<ruby>勉強<rt>べんきょう</rt></ruby>になると<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng! Em muốn tiếp xúc văn hoá Nhật và luyện kính ngữ trong thực tế. Cửa hàng tiện lợi tiếp xúc nhiều loại khách nên em nghĩ sẽ học được nhiều.)* |
| Tony | （<ruby>頷<rt>うなず</rt></ruby>く）ええ<ruby>感<rt>かん</rt></ruby>じや！「<ruby>勉強<rt>べんきょう</rt></ruby>になる」を<ruby>使<rt>つか</rt></ruby>うんは<ruby>謙虚<rt>けんきょ</rt></ruby>で<ruby>好印象<rt>こういんしょう</rt></ruby>やで。<br>*(Gật. Tốt lắm! Dùng "勉強になる" thì khiêm tốn, gây ấn tượng tốt.)* |

---

## Tình huống 5 — Phòng khách · 19:45, tập câu hỏi tình huống khó

| Vai | Lời thoại |
|---|---|
| Tony | <ruby>困<rt>こま</rt></ruby>ったお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>来<rt>き</rt></ruby>たらどうしますか？<ruby>例<rt>たと</rt></ruby>えば、<ruby>酔<rt>よ</rt></ruby>っ<ruby>払<rt>ぱら</rt></ruby>いが<ruby>大声<rt>おおごえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>している<ruby>場合<rt>ばあい</rt></ruby>。<br>*(Gặp khách khó thì xử lý sao? Ví dụ khách say đang la lớn.)* |
| Đại | （<ruby>考<rt>かんが</rt></ruby>える）まず<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いた<ruby>声<rt>こえ</rt></ruby>でお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>会計<rt>かいけい</rt></ruby>を<ruby>済<rt>す</rt></ruby>ませて<ruby>早<rt>はや</rt></ruby>く<ruby>帰<rt>かえ</rt></ruby>っていただけるようにします。<br>*(Em sẽ bình tĩnh kiểm tra tình hình khách trước. Tính tiền xong để khách về nhanh.)* |
| Đại | <ruby>暴力<rt>ぼうりょく</rt></ruby>の<ruby>恐<rt>おそ</rt></ruby>れがある<ruby>場合<rt>ばあい</rt></ruby>はすぐに<ruby>店長<rt>てんちょう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びます。<ruby>他<rt>た</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>第一<rt>だいいち</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Nếu có nguy cơ bạo lực em gọi quản lý ngay. Đặt an toàn của khách khác lên hàng đầu.)* |
| Tony | （<ruby>感心<rt>かんしん</rt></ruby>）よう<ruby>考<rt>かんが</rt></ruby>えてるな！<ruby>完璧<rt>かんぺき</rt></ruby>や。<br>*(Khâm phục. Nghĩ kỹ ghê! Hoàn hảo.)* |
| Yumi | （<ruby>横<rt>よこ</rt></ruby>から）<ruby>服装<rt>ふくそう</rt></ruby>は<ruby>白<rt>しろ</rt></ruby>シャツに<ruby>黒<rt>くろ</rt></ruby>ズボン、<ruby>黒<rt>くろ</rt></ruby>い<ruby>靴<rt>くつ</rt></ruby>がええで。<ruby>髪<rt>かみ</rt></ruby>は<ruby>整<rt>ととの</rt></ruby>えてな。<br>*(Bên cạnh. Trang phục áo trắng quần đen giày đen. Đầu tóc gọn gàng nhé.)* |
| Đại | はい、ありがとうございます。<br>*(Vâng, cháu cảm ơn cô ạ.)* |
| Tony | あと<ruby>到着<rt>とうちゃく</rt></ruby>は<ruby>10分前<rt>じゅっぷんまえ</rt></ruby>や。<ruby>早<rt>はや</rt></ruby>すぎても<ruby>遅<rt>おそ</rt></ruby>すぎてもあかんで。<br>*(Đến trước 10 phút. Đến sớm quá hoặc muộn quá đều không được.)* |

---

## Tình huống 6 — Trước cửa Lawson Namba · 13:20, đến nơi + tự nhắc nhở

*Đại đến trước cửa Lawson 10 phút. Mặc áo trắng, quần đen, giày đen như cô Yumi dặn. Cầm hồ sơ + bản đồ. Hít sâu 3 cái.*

| Vai | Lời thoại |
|---|---|
| Đại | (tự nhắc, tiếng Nhật) <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて。<ruby>3<rt>みっ</rt></ruby>つの<ruby>要素<rt>ようそ</rt></ruby>。<ruby>笑顔<rt>えがお</rt></ruby>で。<br>*(Tự nhắc. Bình tĩnh. 3 yếu tố. Mỉm cười.)* |
| Đại | （<ruby>店<rt>みせ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る）<br>*(Bước vào cửa hàng.)* |
| Cashier | いらっしゃいませ！<br>*(Xin chào!)* |
| Đại | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本日<rt>ほんじつ</rt></ruby><ruby>13時半<rt>じゅうさんじはん</rt></ruby>の<ruby>面接<rt>めんせつ</rt></ruby>でお<ruby>伺<rt>うかが</rt></ruby>いしました、グエンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Cúi đầu. Em là Nguyễn, đến phỏng vấn lúc 13 giờ rưỡi hôm nay.)* |
| Cashier | あ、お<ruby>待<rt>ま</rt></ruby>ちしておりました。こちらでお<ruby>掛<rt>か</rt></ruby>けになってお<ruby>待<rt>ま</rt></ruby>ちください。<ruby>店長<rt>てんちょう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んできますね。<br>*(À, chúng tôi đang chờ. Mời ngồi đây đợi. Tôi gọi quản lý ngay.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Cảm ơn, làm phiền chị ạ.)* |

---

## Tình huống 7 — Bàn phỏng vấn · 13:35, Suzuki tenchou tự giới thiệu + bắt đầu

| Vai | Lời thoại |
|---|---|
| Suzuki | （<ruby>出<rt>で</rt></ruby>てくる）グエンさん、お<ruby>待<rt>ま</rt></ruby>たせしました。<ruby>店長<rt>てんちょう</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>です。<br>*(Bước ra. Anh Nguyễn, cảm ơn đã chờ nhé. Tôi là Suzuki, quản lý cửa hàng.)* |
| Đại | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がって<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして、グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Đứng dậy cúi đầu. Rất hân hạnh, em là Nguyễn Văn Đại. Hôm nay mong anh giúp đỡ ạ.)* |
| Suzuki | バックヤードでお<ruby>話<rt>はな</rt></ruby>ししましょう。どうぞ。<br>*(Mình nói chuyện ở phòng phía trong nhé. Mời.)* |
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。（<ruby>履歴書<rt>りれきしょ</rt></ruby>を<ruby>両手<rt>りょうて</rt></ruby>で<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す）<ruby>履歴書<rt>りれきしょ</rt></ruby>でございます。<br>*(Em xin phép. Đưa CV bằng hai tay. Đây là sơ yếu lý lịch của em ạ.)* |
| Suzuki | ありがとうございます。N4を<ruby>持<rt>も</rt></ruby>っているんですね。<br>*(Cảm ơn. Anh có bằng N4 nhỉ.)* |
| Đại | はい、<ruby>2023年<rt>にせんにじゅうさんねん</rt></ruby><ruby>7月<rt>しちがつ</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>本年<rt>ほんねん</rt></ruby><ruby>12月<rt>じゅうにがつ</rt></ruby>にN3を<ruby>受<rt>う</rt></ruby>ける<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, em đỗ tháng 7/2023. Tháng 12 năm nay em định thi N3.)* |
| Suzuki | ええ<ruby>目標<rt>もくひょう</rt></ruby>やね。では<ruby>質問<rt>しつもん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めますね。<br>*(Mục tiêu tốt nhỉ. Vậy bắt đầu hỏi nhé.)* |

---

## Tình huống 8 — Phỏng vấn · 13:40, 志望動機

| Vai | Lời thoại |
|---|---|
| Suzuki | グエンさん、<ruby>当店<rt>とうてん</rt></ruby>を<ruby>志望<rt>しぼう</rt></ruby>した<ruby>理由<rt>りゆう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Anh Nguyễn, cho tôi nghe lý do anh ứng tuyển ở cửa hàng này.)* |
| Đại | はい！<ruby>3<rt>みっ</rt></ruby>つあります。<br>*(Vâng! Có 3 lý do ạ.)* |
| Đại | ①<ruby>家<rt>いえ</rt></ruby>が<ruby>天王寺<rt>てんのうじ</rt></ruby>にあり、<ruby>御堂筋線<rt>みどうすじせん</rt></ruby>で<ruby>5分<rt>ごふん</rt></ruby>なので<ruby>通<rt>かよ</rt></ruby>いやすいです。<br>*(① Nhà em ở Tennoji, đi Midosuji 5 phút nên tiện đường.)* |
| Đại | ②<ruby>日本文化<rt>にほんぶんか</rt></ruby>に<ruby>触<rt>ふ</rt></ruby>れたいことと、<ruby>敬語<rt>けいご</rt></ruby>を<ruby>実践<rt>じっせん</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>したいです。<br>*(② Em muốn tiếp xúc văn hoá Nhật và luyện kính ngữ trong thực tế.)* |
| Đại | ③<ruby>将来<rt>しょうらい</rt></ruby>は<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>に<ruby>進学<rt>しんがく</rt></ruby>したいので、<ruby>大阪<rt>おおさか</rt></ruby>での<ruby>仕事<rt>しごと</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしたいです。<br>*(③ Em muốn thi vào ĐH Osaka, nên muốn trân trọng kinh nghiệm làm việc tại Osaka.)* |
| Suzuki | おお、<ruby>3<rt>みっ</rt></ruby>つの<ruby>理由<rt>りゆう</rt></ruby>がはっきりしてるな。<ruby>勉強<rt>べんきょう</rt></ruby>してきたんやね。<br>*(Ồ, 3 lý do rõ ràng nhỉ. Anh đã chuẩn bị kỹ.)* |
| Đại | はい、<ruby>学校<rt>がっこう</rt></ruby>の<ruby>先生<rt>せんせい</rt></ruby>とホームステイの<ruby>御<rt>ご</rt></ruby><ruby>主人<rt>しゅじん</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>してもらいました。<br>*(Vâng, em luyện với cô giáo ở trường và chú ở nhà homestay.)* |

---

## Tình huống 9 — Phỏng vấn · 13:45, thương lượng シフト + lương

| Vai | Lời thoại |
|---|---|
| Suzuki | シフトの<ruby>希望<rt>きぼう</rt></ruby>は？<br>*(Anh mong làm ca nào?)* |
| Đại | <ruby>授業<rt>じゅぎょう</rt></ruby>が<ruby>9時<rt>くじ</rt></ruby>〜<ruby>13時<rt>じゅうさんじ</rt></ruby>です。<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>18時<rt>じゅうはちじ</rt></ruby>〜<ruby>22時<rt>にじゅうにじ</rt></ruby>のシフトを<ruby>週<rt>しゅう</rt></ruby><ruby>4日<rt>よっか</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>します。<br>*(Em học 9 – 13 giờ. Em mong làm ca tối 18 – 22 giờ, 4 ngày/tuần.)* |
| Suzuki | <ruby>合計<rt>ごうけい</rt></ruby><ruby>16時間<rt>じゅうろくじかん</rt></ruby>か。<ruby>留学生<rt>りゅうがくせい</rt></ruby>の<ruby>限度<rt>げんど</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>28時間以内<rt>にじゅうはちじかんいない</rt></ruby>やからOKやな。<br>*(Tổng 16 tiếng à. Trong giới hạn 28 tiếng/tuần của du học sinh nên OK.)* |
| Suzuki | <ruby>夜<rt>よる</rt></ruby>のシフトでも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か？<ruby>帰<rt>かえ</rt></ruby>り<ruby>道<rt>みち</rt></ruby>は<ruby>暗<rt>くら</rt></ruby>いで。<br>*(Ca tối có ổn không? Đường về tối đó.)* |
| Đại | はい、<ruby>家<rt>いえ</rt></ruby>が<ruby>天王寺<rt>てんのうじ</rt></ruby>で<ruby>御堂筋線<rt>みどうすじせん</rt></ruby>で<ruby>5分<rt>ごふん</rt></ruby>なので<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ホームステイ<ruby>先<rt>さき</rt></ruby>のご<ruby>夫婦<rt>ふうふ</rt></ruby>も<ruby>了承<rt>りょうしょう</rt></ruby>してくださっています。<br>*(Vâng, nhà em ở Tennoji đi Midosuji 10 phút nên không sao. Cô chú homestay cũng đồng ý rồi.)* |
| Suzuki | <ruby>時給<rt>じきゅう</rt></ruby>は<ruby>1100円<rt>せんひゃくえん</rt></ruby>です。<ruby>22時<rt>にじゅうにじ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>深夜<rt>しんや</rt></ruby><ruby>手当<rt>てあて</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby>パーセント<ruby>増<rt>ぞう</rt></ruby>で<ruby>1375円<rt>せんさんびゃくななじゅうごえん</rt></ruby>になります。<br>*(Lương 1100 yên/giờ. Sau 22 giờ tính phụ cấp đêm tăng 25%, thành 1375 yên.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>給料<rt>きゅうりょう</rt></ruby>の<ruby>支払<rt>しはら</rt></ruby>いはいつでしょうか？<br>*(Em rõ ạ. Lương trả vào lúc nào ạ?)* |
| Suzuki | <ruby>毎月<rt>まいつき</rt></ruby><ruby>15日<rt>じゅうごにち</rt></ruby>に<ruby>前月分<rt>ぜんげつぶん</rt></ruby>を<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>振<rt>ふ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>みやで。<br>*(Mỗi tháng ngày 15 chuyển khoản phần lương tháng trước.)* |

---

## Tình huống 10 — Phỏng vấn · 13:55, câu hỏi tình huống khó

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>困<rt>こま</rt></ruby>ったお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>例<rt>れい</rt></ruby>やけど、<ruby>酔<rt>よ</rt></ruby>っ<ruby>払<rt>ぱら</rt></ruby>いが<ruby>大声<rt>おおごえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>したらどうする？<br>*(Ví dụ khách khó: nếu khách say la lớn thì làm sao?)* |
| Đại | はい！<ruby>3<rt>みっ</rt></ruby>つの<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>します。<br>*(Vâng! Em xử lý theo 3 bước.)* |
| Đại | ①まず<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いた<ruby>声<rt>こえ</rt></ruby>で<ruby>会計<rt>かいけい</rt></ruby>を<ruby>済<rt>す</rt></ruby>ませて、<ruby>早<rt>はや</rt></ruby>く<ruby>帰<rt>かえ</rt></ruby>っていただけるようにします。<br>*(① Đầu tiên em sẽ bình tĩnh tính tiền cho khách về sớm.)* |
| Đại | ②<ruby>暴力<rt>ぼうりょく</rt></ruby>の<ruby>恐<rt>おそ</rt></ruby>れがある<ruby>場合<rt>ばあい</rt></ruby>はすぐ<ruby>店長<rt>てんちょう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びます。<br>*(② Nếu có nguy cơ bạo lực em gọi quản lý ngay.)* |
| Đại | ③<ruby>他<rt>た</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>します。<br>*(③ Đảm bảo an toàn cho các khách khác.)* |
| Suzuki | （<ruby>感心<rt>かんしん</rt></ruby>）ようそこまで<ruby>考<rt>かんが</rt></ruby>えてくれたな。<ruby>留学生<rt>りゅうがくせい</rt></ruby>とは<ruby>思<rt>おも</rt></ruby>えへんわ。<br>*(Khâm phục. Anh nghĩ kỹ ghê. Không nghĩ là du học sinh.)* |
| Đại | ありがとうございます。<ruby>分<rt>わ</rt></ruby>からない<ruby>場合<rt>ばあい</rt></ruby>はすぐ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em cảm ơn ạ. Có gì không hiểu em sẽ hỏi đàn anh ngay.)* |
| Suzuki | ええ<ruby>姿勢<rt>しせい</rt></ruby>やな。<ruby>採用<rt>さいよう</rt></ruby>するで！<br>*(Thái độ tốt nhỉ. Tôi nhận em luôn!)* |
| Đại | （<ruby>感激<rt>かんげき</rt></ruby>）<ruby>本当<rt>ほんとう</rt></ruby>ですか！？ありがとうございます！<br>*(Cảm động. Thật ạ!? Em cảm ơn anh!)* |

---

## Tình huống 11 — Bàn phỏng vấn · 14:00, hỏi lại trước khi kết thúc

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>質問<rt>しつもん</rt></ruby>はある？<br>*(Anh có câu hỏi gì không?)* |
| Đại | はい、<ruby>2<rt>ふた</rt></ruby>つよろしいでしょうか？<br>*(Vâng, em xin hỏi 2 câu được không ạ?)* |
| Suzuki | どうぞ。<br>*(Mời.)* |
| Đại | <ruby>初日<rt>しょにち</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>して<ruby>来<rt>き</rt></ruby>ればよろしいでしょうか？<br>*(Ngày đầu em chuẩn bị gì mang đến ạ?)* |
| Suzuki | <ruby>印鑑<rt>いんかん</rt></ruby>と<ruby>銀行<rt>ぎんこう</rt></ruby>の<ruby>通帳<rt>つうちょう</rt></ruby>のコピー、<ruby>在留<rt>ざいりゅう</rt></ruby>カードのコピーや。<ruby>制服<rt>せいふく</rt></ruby>は<ruby>当店<rt>とうてん</rt></ruby>で<ruby>用意<rt>ようい</rt></ruby>するで。<br>*(Con dấu, bản sao sổ ngân hàng, bản sao thẻ cư trú. Đồng phục cửa hàng chuẩn bị.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。もう<ruby>1<rt>ひと</rt></ruby>つ、<ruby>研修<rt>けんしゅう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>はありますか？<br>*(Em rõ ạ. Còn một câu nữa, có giai đoạn tập sự không ạ?)* |
| Suzuki | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>2週間<rt>にしゅうかん</rt></ruby>は<ruby>研修<rt>けんしゅう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>や。<ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>くから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>時給<rt>じきゅう</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらへんで。<br>*(2 tuần đầu là giai đoạn tập sự. Làm cùng đàn anh nên không sao. Lương vẫn vậy.)* |
| Đại | ありがとうございます。<ruby>初日<rt>しょにち</rt></ruby>はいつになりますでしょうか？<br>*(Em cảm ơn ạ. Ngày đầu là khi nào ạ?)* |
| Suzuki | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>月曜<rt>げつよう</rt></ruby><ruby>18時<rt>じゅうはちじ</rt></ruby>からでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thứ Hai tuần sau từ 18 giờ nhé.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しいところ、ありがとうございました。<br>*(Vâng, em rõ ạ. Hôm nay làm phiền anh, em cảm ơn ạ.)* |

---

## Tình huống 12 — Trước cửa Lawson · 14:10, chào ra về lễ phép

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>月曜<rt>げつよう</rt></ruby>から、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi sâu. Hôm nay cảm ơn anh ạ. Từ Thứ Hai tuần sau xin nhờ anh chỉ bảo.)* |
| Suzuki | こちらこそ。<ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>ってな。<br>*(Tôi mới phải cảm ơn. Cẩn thận về nhé.)* |
| Đại | はい、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em xin phép.)* |
| Cashier | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Vất vả nhé!)* |
| Đại | ありがとうございました！（<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げて<ruby>店<rt>みせ</rt></ruby>を<ruby>出<rt>で</rt></ruby>る）<br>*(Em cảm ơn ạ! Cúi đầu rồi rời cửa hàng.)* |

---

## Tình huống 13 — Phòng khách nhà Tanaka · 22:00, báo tin + LINE mẹ

> Cảnh tiếng Việt — Đại báo tin cho cô chú Tanaka rồi gọi LINE video về cho mẹ Hà Nội và Mai.

| Vai | Lời thoại |
|---|---|
| Tony | (JP) どうやった？<br>*(Thế nào?)* |
| Đại | (JP) <ruby>採用<rt>さいよう</rt></ruby>されました！<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby><ruby>18時<rt>じゅうはちじ</rt></ruby>からです。<br>*(Cháu được nhận rồi ạ! Thứ Hai tuần sau 18 giờ.)* |
| Yumi | (JP) おめでとう！<ruby>1発<rt>いっぱつ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>やん！<br>*(Chúc mừng cháu! Đỗ luôn phát đầu!)* |
| Đại | (JP) トニーさんとユミさんの<ruby>練習<rt>れんしゅう</rt></ruby>のおかげです。ありがとうございました。<br>*(Nhờ bác Tony và cô Yumi tập với cháu đó ạ. Cháu cảm ơn cô chú.)* |
| Đại | (LINE video, VN) Mẹ ơi, con đỗ phỏng vấn Lawson rồi! Lương 1100 yên/giờ, ca tối tăng 25%. |
| Mẹ | (VN) Tuyệt vời quá! Mẹ tự hào con. |
| Đại | (VN) Tháng đầu con làm 16 tiếng/tuần thôi. 4 ngày tối từ 18-22h. Tính ra khoảng 70 nghìn yên/tháng. |
| Bố | (VN, ghé màn hình) Tốt rồi. Nhưng việc học là chính nhé. Có dấu hiệu mệt là giảm ca xuống. |
| Đại | (VN) Vâng bố. Cô Yamada cũng dặn vậy. Mỗi tháng con sẽ báo lại điểm tiếng Nhật ở lớp. |
| Mai | (LINE video, VN) Anh giỏi quá! Vợ mừng. |
| Đại | (VN) Em à, mục tiêu lớn vẫn là EJU + ĐH Osaka. Làm thêm chỉ là phụ. 2 năm nữa mình về thăm em một chuyến. |
| Mai | (VN) Em đợi. Cố lên anh! |

---

## Đọng lại chương 4

Đại đỗ phỏng vấn Lawson Namba ngay lần đầu, học các mẫu câu nền tảng tìm baito tại Nhật: **xin lời khuyên giáo viên** (少しお時間よろしいですか・アドバイスをいただけますか), **viết 志望動機 có cấu trúc 3 yếu tố** (店を選んだ理由・自分の長所・将来の目標), **gọi điện hẹn phỏng vấn** (お電話差し上げました・〜の件で), **tập phỏng vấn cùng người trong nhà** (店長役・客役), **vào phỏng vấn lễ phép** (頭を下げる・履歴書を両手で差し出す・失礼します), **trả lời câu hỏi 3 lý do** (3つあります・①〜②〜③〜), **thương lượng シフト + 時給** (週4日・夜のシフト・1100円・深夜手当25%増), **xử lý câu hỏi tình huống khó** (落ち着いた声で・店長を呼ぶ・他のお客様の安全), **hỏi lại trước khi kết thúc** (質問はよろしいでしょうか・初日は何を準備すれば), **chào ra về** (本日はお忙しいところありがとうございました・失礼いたします). Mức lương 70k yên/tháng = đủ tiền tiêu vặt, học phí mẹ vẫn lo. Mục tiêu lớn vẫn là EJU + ĐH Osaka.

> Từ vựng & mẫu câu chương này: アルバイト・コンビニ・履歴書・志望動機・学歴・職歴・資格・本人希望記入欄・シフト・週28時間以内・留学生限度・時給・深夜手当25%増・印鑑・通帳・在留カード・制服・研修期間・採用・お客様・酔っ払い・暴力・安全確保・落ち着く・少しお時間よろしいですか・アドバイスをいただけますか・お電話差し上げました・〜の件で・本日はお忙しいところありがとうございました・失礼いたします・3つあります・〜していただけますか

## Bí quyết chương

- **Xin giấy phép baito ở 入管 sân bay**: Tiết kiệm 1 lần lên 入管. Đại làm từ tháng 4, đến tháng 6 mới dùng — đúng quy trình.
- **5 đơn đỗ 1**: Sát thực tế du học sinh — phải rải nhiều đơn.
- **3 yếu tố 志望動機**: Lý do chọn cửa hàng + điểm mạnh + mục tiêu tương lai. Áp dụng cho mọi phỏng vấn baito.
- **Tony tập phỏng vấn vai 店長**: Gia đình homestay hỗ trợ thực chất — cô Yumi dạy 服装, chú Tony dạy 受け答え.
- **Lương 1100 yên/giờ × 16h × 4 tuần = 70k yên/tháng**: Mức chuẩn 2024 cho convenience store Osaka.
- **Thuê đêm 25% tăng sau 22h**: Luật Nhật — du học sinh nên biết.
- **Mục tiêu kép — baito + EJU**: Đại không quên mục tiêu chính: ĐH Osaka. Baito chỉ là phụ.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 募集 | ぼしゅう | MỘ TẬP | Tuyển dụng |
| 応募 | おうぼ | ỨNG MỘ | Ứng tuyển |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | Sơ yếu lý lịch |
| 志望動機 | しぼうどうき | CHÍ VỌNG ĐỘNG CƠ | Lý do ứng tuyển |
| シフト | — | — | Ca làm |
| 柔軟 | じゅうなん | NHU NHUYỄN | Linh hoạt |
| マニュアル | — | — | Sổ tay quy trình |
| 明確 | めいかく | MINH XÁC | Rõ ràng |
| 敬語 | けいご | KÍNH NGỮ | Kính ngữ |
| 実践練習 | じっせんれんしゅう | THỰC TIỄN LUYỆN TẬP | Luyện thực hành |
| 食事支給 | しょくじしきゅう | THỰC SỰ CHI CẤP | Chế độ cấp bữa ăn |
| 相談 | そうだん | TƯƠNG ĐÀM | Tư vấn, trao đổi |
| 要素 | ようそ | YẾU TỐ | Yếu tố |
| 長所 | ちょうしょ | TRƯỜNG SỞ | Điểm mạnh |
| 体験 | たいけん | THỂ NGHIỆM | Trải nghiệm |
| 真面目 | まじめ | CHÂN DIỆN MỤC | Nghiêm túc |
| 取り組む | とりくむ | THỦ TỔ | Bắt tay vào |
| 将来 | しょうらい | TƯƠNG LAI | Tương lai |
| 経験 | けいけん | KINH NGHIỆM | Kinh nghiệm |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | Cụ thể |
| 件 | けん | KIỆN | Vụ việc |
| 差し上げる | さしあげる | SAI THƯỢNG | Kính dâng, gửi (kính ngữ) |
| 店舗 | てんぽ | ĐIẾM PHÔ | Cửa hàng |
| バックヤード | — | — | Phòng nhân viên phía sau |
| 練習 | れんしゅう | LUYỆN TẬP | Luyện tập |
| 役 | やく | DỊCH | Vai (đóng vai) |
| お越し | おこし | VIỆT | Việc đến (kính ngữ) |
| 触れる | ふれる | XÚC | Tiếp xúc |
| 接する | せっする | TIẾP | Tiếp xúc |
| 謙虚 | けんきょ | KHIÊM HƯ | Khiêm tốn |
| 好印象 | こういんしょう | HẢO ẤN TƯỢNG | Ấn tượng tốt |
| 困る | こまる | KHỐN | Khó xử |
| 酔っ払い | よっぱらい | TUÝ | Người say |
| 大声 | おおごえ | ĐẠI THANH | To tiếng |
| 落ち着く | おちつく | LẠC TRƯỚC | Bình tĩnh |
| 状況 | じょうきょう | TÌNH HUỐNG | Tình huống |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 会計 | かいけい | HỘI KẾ | Tính tiền |
| 暴力 | ぼうりょく | BẠO LỰC | Bạo lực |
| 安全 | あんぜん | AN TOÀN | An toàn |
| 第一 | だいいち | ĐỆ NHẤT | Hàng đầu |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 服装 | ふくそう | PHỤC TRANG | Trang phục |
| 整える | ととのえる | CHỈNH | Chỉnh trang |
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 笑顔 | えがお | TIẾU NHAN | Nụ cười |
| 伺う | うかがう | TỨ | Đến thăm (kính ngữ) |
| 掛ける | かける | QUẢI | Treo, ngồi |
| 立ち上がる | たちあがる | LẬP THƯỢNG | Đứng dậy |
| 両手 | りょうて | LƯỠNG THỦ | Hai tay |
| 差し出す | さしだす | SAI XUẤT | Đưa ra |
| 当店 | とうてん | ĐƯƠNG ĐIẾM | Cửa hàng này |
| 通う | かよう | THÔNG | Đi lại (đi học, đi làm) |
| 御主人 | ごしゅじん | NGỰ CHỦ NHÂN | Ông chủ (kính ngữ) |
| 希望 | きぼう | HY VỌNG | Mong muốn |
| 合計 | ごうけい | HỢP KẾ | Tổng |
| 限度 | げんど | HẠN ĐỘ | Giới hạn |
| 夫婦 | ふうふ | PHU PHỤ | Vợ chồng |
| 了承 | りょうしょう | LIỄU THỪA | Đồng ý, thấu hiểu |
| 時給 | じきゅう | THỜI CẤP | Lương theo giờ |
| 深夜手当 | しんやてあて | THÂM DẠ THỦ ĐƯƠNG | Phụ cấp đêm |
| 給料 | きゅうりょう | CẤP LIỆU | Lương |
| 支払い | しはらい | CHI BÁT | Thanh toán, trả |
| 前月分 | ぜんげつぶん | TIỀN NGUYỆT PHẦN | Phần tháng trước |
| 振り込み | ふりこみ | CHẤN ĐỒNG | Chuyển khoản |
| 対応 | たいおう | ĐỐI ỨNG | Đối ứng, xử lý |
| 確保 | かくほ | XÁC BẢO | Đảm bảo |
| 姿勢 | しせい | TƯ THẾ | Thái độ, tư thế |
| 採用 | さいよう | THẢI DỤNG | Tuyển dụng, nhận |
| 印鑑 | いんかん | ẤN GIÁM | Con dấu |
| 通帳 | つうちょう | THÔNG TRƯỚNG | Sổ ngân hàng |
| 制服 | せいふく | CHẾ PHỤC | Đồng phục |
| 研修期間 | けんしゅうきかん | NGHIÊN TU KỲ GIAN | Giai đoạn tập sự |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000005, 800000019, NULL, 'markdown_book', 'T5. Ngày đầu baito Lawson Namba (ローソン初日)', '# Sách du học sinh tiếng Nhật · T5. Ngày đầu baito Lawson Namba (ローソン初日)

> **Mục tiêu nhân vật:** Đại (19 tuổi, du học sinh trường tiếng Kansai Gogo Gakuin, sang Osaka 4/2024). Học các mẫu hội thoại tiếng Nhật của nhân viên konbini ngày đầu: 6 câu chào keigo cốt lõi, hỏi lại khi chưa hiểu (〜というのは？), thao tác POS 5 cách thanh toán, xác nhận tuổi khi bán thuốc lá, hâm bento + cho đũa, đối ứng khách Tây bằng tiếng Anh tối thiểu, nhận phản hồi từ tenchou.

---

## Bối cảnh

Tháng 6/2024. Đại được nhận vào Lawson Namba — cửa hàng 800m² cạnh ga JR Namba — sau 2 tuần xin việc. Ca 18:00-22:00, lương 1.100 yên/giờ. Cùng ca có Suzuki tenchou (Osaka-ben), Tanaka-kun (Nhật, ĐH năm 2, mentor) và Park (senpai Hàn Quốc, đã làm 1 năm). Đại đã học 6 câu chào ở trường nhưng chưa đứng quầy thật. Chương này tập trung các mẫu câu giao tiếp khách hàng konbini: chào keigo, POS, xác nhận tuổi 20+, hâm bento, hỏi lại lễ phép, và đối ứng khách quốc tế.

---

## Tình huống 1 — Phòng homestay Tennoji · 17:30, Tony dặn trước khi đi

*Đại chuẩn bị đồng phục Lawson xanh trắng. Yumi mang nước mơ ra.*

| Vai | Lời thoại |
|---|---|
| Yumi | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>ですね。<ruby>頑張<rt>がんば</rt></ruby>って！<br>*(Đại ơi, ngày đầu nhỉ. Cố lên!)* |
| Đại | はい！ありがとうございます。<br>*(Vâng! Em cảm ơn cô.)* |
| Tony | コンビニで<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>笑顔<rt>えがお</rt></ruby>と<ruby>声<rt>こえ</rt></ruby>やで。<ruby>声<rt>こえ</rt></ruby>、<ruby>大<rt>おお</rt></ruby>きく<ruby>出<rt>だ</rt></ruby>すんやで。<br>*(Ở konbini quan trọng nhất là nụ cười với tiếng nói đó. Nói cho to vào nhé.)* |
| Đại | はい、<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố nói to ạ.)* |
| Yumi | お<ruby>守<rt>まも</rt></ruby>りです。<ruby>四天王寺<rt>してんのうじ</rt></ruby>のお<ruby>守<rt>まも</rt></ruby>り。<br>*(Lá bùa nhé. Bùa của chùa Shitennoji.)* |
| Đại | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>行<rt>い</rt></ruby>ってきます！<br>*(Cúi đầu. Cháu cảm ơn ạ. Cháu đi đây!)* |
| Tony | <ruby>行<rt>い</rt></ruby>ってらっしゃい！<br>*(Đi cẩn thận nhé!)* |

---

## Tình huống 2 — Bãi xe Lawson Namba · 17:55, gặp Suzuki tenchou

| Vai | Lời thoại |
|---|---|
| Đại | （バックヤードに<ruby>入<rt>はい</rt></ruby>る）<ruby>失礼<rt>しつれい</rt></ruby>します！グエン・ヴァン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>からお<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Vào khu nhân viên. Em xin phép! Em là Nguyễn Văn Đại. Hôm nay em bắt đầu, mong được giúp đỡ ạ.)* |
| Suzuki | おお、ダイ<ruby>君<rt>くん</rt></ruby>！<ruby>店長<rt>てんちょう</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>や。よろしくな。<ruby>制服<rt>せいふく</rt></ruby>は<ruby>更衣室<rt>こういしつ</rt></ruby>やで。<br>*(Ô, Đại! Tenchou Suzuki đây. Cố lên nhé. Đồng phục để trong phòng thay đồ.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>同<rt>おな</rt></ruby>じシフトはタナカ<ruby>君<rt>くん</rt></ruby>とパクさんや。タナカ<ruby>君<rt>くん</rt></ruby>がメンターやから、<ruby>分<rt>わ</rt></ruby>からんことは<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてな。<br>*(Cùng ca hôm nay là Tanaka với Park. Tanaka làm mentor, có gì không hiểu thì cứ hỏi.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |

---

## Tình huống 3 — Bên quầy thu ngân · 18:00, gặp Tanaka-kun và Park

| Vai | Lời thoại |
|---|---|
| Tanaka-kun | はじめまして！<ruby>田中<rt>たなか</rt></ruby><ruby>誠<rt>まこと</rt></ruby>です。<ruby>大学<rt>だいがく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくね。<br>*(Lần đầu! Tanaka Makoto. ĐH năm 2. Hôm nay nhờ cậu nhé.)* |
| Đại | グエン・ヴァン・ダイです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em là Nguyễn Văn Đại. Em từ Việt Nam đến. Mong anh giúp đỡ.)* |
| Park | パク・チョルです、<ruby>韓国<rt>かんこく</rt></ruby>から。ローソンは<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>です。よろしく。<br>*(Park Cheol, Hàn Quốc. Lawson năm thứ nhất. Mong cậu giúp đỡ.)* |
| Đại | パクさんは<ruby>日本語<rt>にほんご</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Anh Park tiếng Nhật giỏi quá ạ.)* |
| Park | いえいえ、<ruby>君<rt>きみ</rt></ruby>も<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>分<rt>わ</rt></ruby>からんかったら<ruby>俺<rt>おれ</rt></ruby>にも<ruby>聞<rt>き</rt></ruby>いてな。<br>*(Đâu có. Cậu cũng ổn mà. Không hiểu cứ hỏi tôi.)* |
| Tanaka-kun | じゃ、まず<ruby>挨拶<rt>あいさつ</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Vậy đầu tiên ôn lại các câu chào nhé.)* |

---

## Tình huống 4 — Quầy thu ngân · 18:10, Tanaka-kun ôn 6 câu chào cốt lõi

| Vai | Lời thoại |
|---|---|
| Tanaka-kun | コンビニで<ruby>必<rt>かなら</rt></ruby>ず<ruby>使<rt>つか</rt></ruby>う<ruby>挨拶<rt>あいさつ</rt></ruby>は<ruby>6<rt>むっ</rt></ruby>つ。<ruby>覚<rt>おぼ</rt></ruby>えてる？<br>*(Konbini có 6 câu chào bắt buộc. Cậu nhớ không?)* |
| Đại | <ruby>学校<rt>がっこう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>いました。<ruby>言<rt>い</rt></ruby>ってみます。いらっしゃいませ。ありがとうございました。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>確認<rt>かくにん</rt></ruby>いたします。<br>*(Em học ở trường rồi. Em đọc thử ạ. Sáu câu chào.)* |
| Tanaka-kun | パーフェクト！でも<ruby>声<rt>こえ</rt></ruby>がちょっと<ruby>小<rt>ちい</rt></ruby>さい。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>入<rt>はい</rt></ruby>った<ruby>瞬間<rt>しゅんかん</rt></ruby>に「いらっしゃいませ！」って<ruby>大<rt>おお</rt></ruby>きく<ruby>言<rt>い</rt></ruby>うんだよ。<br>*(Hoàn hảo! Nhưng tiếng hơi nhỏ. Khách vừa bước vào là phải hô to "Kính chào quý khách!" ngay.)* |
| Đại | （<ruby>大声<rt>おおごえ</rt></ruby>で）いらっしゃいませ！<br>*(To tiếng. Kính chào quý khách!)* |
| Tanaka-kun | そうそう、それでええ！<br>*(Đúng đúng, vậy mới được!)* |
| Đại | あの、すみません、「<ruby>確認<rt>かくにん</rt></ruby>いたします」というのは、いつ<ruby>使<rt>つか</rt></ruby>いますか？<br>*(Dạ xin lỗi anh, câu "kakunin itashimasu" thì dùng khi nào ạ?)* |
| Tanaka-kun | お<ruby>金<rt>かね</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>った<ruby>時<rt>とき</rt></ruby>とか、<ruby>年齢<rt>ねんれい</rt></ruby>を<ruby>聞<rt>き</rt></ruby>く<ruby>時<rt>とき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う。あとで<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Khi nhận tiền hoặc khi hỏi tuổi thì dùng. Lát luyện thực tế nhé.)* |

---

## Tình huống 5 — Quầy POS · 18:25, Tanaka-kun hướng dẫn 5 cách thanh toán

| Vai | Lời thoại |
|---|---|
| Tanaka-kun | じゃ、POSの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>。バーコードをスキャン → <ruby>合計<rt>ごうけい</rt></ruby>を<ruby>言<rt>い</rt></ruby>う → <ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>く。<br>*(Cách dùng POS. Quét mã vạch → đọc tổng → hỏi cách thanh toán.)* |
| Đại | <ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>はいくつありますか？<br>*(Có mấy cách thanh toán ạ?)* |
| Tanaka-kun | <ruby>主<rt>おも</rt></ruby>に<ruby>5<rt>いつ</rt></ruby>つ。<ruby>現金<rt>げんきん</rt></ruby>、PayPay、ICOCA、クレジットカード、それからQRコード。<br>*(Chủ yếu 5 cách. Tiền mặt, PayPay, ICOCA, thẻ tín dụng, rồi QR.)* |
| Đại | すみません、ICOCAというのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi anh, ICOCA là gì ạ?)* |
| Tanaka-kun | <ruby>関西<rt>かんさい</rt></ruby>の<ruby>交通<rt>こうつう</rt></ruby>ICカード。<ruby>電車<rt>でんしゃ</rt></ruby>に<ruby>乗<rt>の</rt></ruby>れるし、コンビニでも<ruby>使<rt>つか</rt></ruby>えるんや。<br>*(Là thẻ IC giao thông vùng Kansai. Vừa đi tàu vừa dùng konbini được.)* |
| Đại | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。お<ruby>客様<rt>きゃくさま</rt></ruby>が「PayPayで」と<ruby>言<rt>い</rt></ruby>ったら、どうしますか？<br>*(Em hiểu rồi. Khách nói "PayPay" thì làm sao ạ?)* |
| Tanaka-kun | PayPayボタンを<ruby>押<rt>お</rt></ruby>して、お<ruby>客様<rt>きゃくさま</rt></ruby>のスマホのQRコードを<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>る。それだけ。<br>*(Bấm nút PayPay, quét mã QR trên điện thoại khách. Vậy thôi.)* |
| Đại | <ruby>練習<rt>れんしゅう</rt></ruby>したいです。<br>*(Em muốn luyện thử ạ.)* |
| Tanaka-kun | じゃ、<ruby>俺<rt>おれ</rt></ruby>がお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>役<rt>やく</rt></ruby>するで。<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Vậy tôi giả vờ làm khách. Luyện 3 lần nào.)* |

---

## Tình huống 6 — Quầy thu ngân · 19:00, khách đầu tiên (onigiri + trà)

*Đại đứng quầy lần đầu. Một anh nhân viên văn phòng bước vào.*

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で）いらっしゃいませ！<br>*(To tiếng. Kính chào quý khách!)* |
| Khách 1 | （おにぎりとお<ruby>茶<rt>ちゃ</rt></ruby>をカウンターに<ruby>置<rt>お</rt></ruby>く）<br>*(Đặt cơm nắm và trà lên quầy.)* |
| Đại | （スキャン）<ruby>合計<rt>ごうけい</rt></ruby><ruby>320<rt>さんびゃくにじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。お<ruby>支払<rt>しはら</rt></ruby>いは<ruby>何<rt>なに</rt></ruby>になさいますか？<br>*(Quét mã. Tổng 320 yên ạ. Quý khách thanh toán bằng gì ạ?)* |
| Khách 1 | PayPayで。<br>*(PayPay nhé.)* |
| Đại | （<ruby>緊張<rt>きんちょう</rt></ruby>してボタンを<ruby>探<rt>さが</rt></ruby>す）<br>*(Hồi hộp tìm nút.)* |
| Tanaka-kun | （<ruby>横<rt>よこ</rt></ruby>から<ruby>指<rt>ゆび</rt></ruby>さす）こちらやで。<br>*(Bên cạnh chỉ. Ở đây này.)* |
| Đại | （ボタンを<ruby>押<rt>お</rt></ruby>す）<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、QRコードをこちらにお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bấm nút. Xin lỗi quý khách, vui lòng đưa mã QR ra đây ạ.)* |
| Khách 1 | （スマホをかざす）<br>*(Đưa điện thoại quét.)* |
| Đại | お<ruby>支払<rt>しはら</rt></ruby>い、ありがとうございました。レシートでございます。<br>*(Cảm ơn quý khách đã thanh toán. Hoá đơn đây ạ.)* |
| Khách 1 | はい、どうも。<br>*(Vâng, cảm ơn.)* |
| Đại | ありがとうございました！<br>*(Cảm ơn quý khách!)* |

---

## Tình huống 7 — Quầy thu ngân · 19:30, hỏi lại tên hàng khi chưa nghe rõ

| Vai | Lời thoại |
|---|---|
| Khách 2 | （カウンターに<ruby>来<rt>く</rt></ruby>る）<ruby>肉<rt>にく</rt></ruby>まん、<ruby>1<rt>ひと</rt></ruby>つ。<br>*(Ra quầy. Bánh bao thịt, một cái.)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin lỗi, quý khách vui lòng nhắc lại ạ.)* |
| Khách 2 | <ruby>肉<rt>にく</rt></ruby>まん。あったかいやつ。<br>*(Bánh bao thịt. Cái nóng nóng đó.)* |
| Đại | あ、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(À em rõ rồi ạ. Quý khách vui lòng đợi một chút.)* |
| Đại | （<ruby>蒸<rt>む</rt></ruby>し<ruby>器<rt>き</rt></ruby>から<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>180<rt>ひゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<br>*(Lấy từ tủ hấp. Em để quý khách chờ ạ. 180 yên.)* |
| Khách 2 | （<ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>渡<rt>わた</rt></ruby>す）<br>*(Đưa 200 yên.)* |
| Đại | <ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりいたします。<ruby>20<rt>にじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>のお<ruby>返<rt>かえ</rt></ruby>しでございます。ありがとうございました！<br>*(Em xin nhận 200 yên. Xin gửi lại 20 yên. Cảm ơn quý khách!)* |

---

## Tình huống 8 — Quầy thu ngân · 20:00, bán thuốc lá + xác nhận tuổi 20+

| Vai | Lời thoại |
|---|---|
| Khách 3 | マルボロの<ruby>赤<rt>あか</rt></ruby>、<ruby>1<rt>ひと</rt></ruby>つ。<br>*(Marlboro đỏ, một bao.)* |
| Đại | （<ruby>戸惑<rt>とまど</rt></ruby>う）え...<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Lúng túng. Ơ... Quý khách vui lòng đợi ạ.)* |
| Tanaka-kun | （<ruby>横<rt>よこ</rt></ruby>から<ruby>小声<rt>こごえ</rt></ruby>で）タバコは<ruby>番号<rt>ばんごう</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えるんや。マルボロ<ruby>赤<rt>あか</rt></ruby>は<ruby>15<rt>じゅうご</rt></ruby><ruby>番<rt>ばん</rt></ruby>。<ruby>年齢<rt>ねんれい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れんといて。<br>*(Bên cạnh nói nhỏ. Thuốc lá nhớ theo số. Marlboro đỏ là số 15. Đừng quên xác nhận tuổi.)* |
| Đại | （<ruby>頷<rt>うなず</rt></ruby>く）お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>20歳<rt>はたち</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>でいらっしゃいますか？<ruby>確認<rt>かくにん</rt></ruby>いたします。<br>*(Gật. Thưa quý khách, xin phép xác nhận, quý khách có trên 20 tuổi không ạ?)* |
| Khách 3 | （<ruby>頷<rt>うなず</rt></ruby>く）はい。<br>*(Gật. Vâng.)* |
| Đại | ありがとうございます。（<ruby>15<rt>じゅうご</rt></ruby><ruby>番<rt>ばん</rt></ruby>を<ruby>取<rt>と</rt></ruby>る）マルボロ<ruby>赤<rt>あか</rt></ruby>、<ruby>580<rt>ごひゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<ruby>年齢<rt>ねんれい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>のため、<ruby>画面<rt>がめん</rt></ruby>のボタンにタッチをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cảm ơn ạ. Lấy số 15. Marlboro đỏ, 580 yên ạ. Để xác nhận tuổi, mời quý khách chạm nút trên màn hình ạ.)* |
| Khách 3 | （<ruby>画面<rt>がめん</rt></ruby>をタッチして<ruby>1000<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>札<rt>さつ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<br>*(Chạm màn hình rồi đưa tờ 1000 yên.)* |
| Đại | <ruby>1000<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりいたします。<ruby>420<rt>よんひゃくにじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>のお<ruby>返<rt>かえ</rt></ruby>しでございます。ありがとうございました！<br>*(Em xin nhận 1000 yên. Xin gửi lại 420 yên ạ. Cảm ơn quý khách!)* |

---

## Tình huống 9 — Quầy thu ngân · 20:30, khách Tây hỏi nhà vệ sinh — Park giải vây

| Vai | Lời thoại |
|---|---|
| Khách 4 | (tiếng Anh) Excuse me, where is the bathroom?<br>*(Xin lỗi, nhà vệ sinh ở đâu?)* |
| Đại | （<ruby>慌<rt>あわ</rt></ruby>てる）あの...<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Bối rối. Dạ... quý khách đợi chút ạ.)* |
| Park | （<ruby>来<rt>く</rt></ruby>る）I''ll help. Bathroom is outside, turn left, fifty meters, inside the station.<br>*(Đến. Để tôi. Nhà vệ sinh ở ngoài, quẹo trái, 50 mét, trong nhà ga.)* |
| Khách 4 | Oh thank you so much!<br>*(Ồ cảm ơn nhiều!)* |
| Park | You''re welcome. Have a nice day.<br>*(Không có chi. Chúc ngày vui.)* |
| Park | （ダイに<ruby>日本語<rt>にほんご</rt></ruby>で）<ruby>難波<rt>なんば</rt></ruby>は<ruby>外国<rt>がいこく</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>がめっちゃ<ruby>多<rt>おお</rt></ruby>いから、<ruby>定型<rt>ていけい</rt></ruby>の<ruby>英語<rt>えいご</rt></ruby>を<ruby>5<rt>いつ</rt></ruby>つだけ<ruby>覚<rt>おぼ</rt></ruby>えとくとええよ。<br>*(Nói tiếng Nhật với Đại. Namba khách Tây đông lắm, nhớ thuộc 5 câu tiếng Anh mẫu là được.)* |
| Đại | パクさん、<ruby>恥<rt>は</rt></ruby>ずかしいです。<ruby>5<rt>いつ</rt></ruby>つの<ruby>定型<rt>ていけい</rt></ruby><ruby>表現<rt>ひょうげん</rt></ruby>、<ruby>教<rt>おし</rt></ruby>えていただけませんか？<br>*(Anh Park, em ngại quá. Anh dạy em 5 câu mẫu đó được không ạ?)* |
| Park | OK。"Bathroom is outside left." "Cash or card?" "Do you need a bag?" "Heat it up?" "Total is X yen." これだけ。<ruby>休憩<rt>きゅうけい</rt></ruby>のときにメモしとき。<br>*(OK. 5 câu này thôi. Lúc nghỉ ghi lại.)* |
| Đại | はい、ありがとうございます！<br>*(Vâng, em cảm ơn anh!)* |

---

## Tình huống 10 — Quầy thu ngân · 21:00, hâm bento + cho đũa

| Vai | Lời thoại |
|---|---|
| Khách 5 | （<ruby>弁当<rt>べんとう</rt></ruby>とお<ruby>茶<rt>ちゃ</rt></ruby>をカウンターに<ruby>置<rt>お</rt></ruby>く）これ、<ruby>温<rt>あたた</rt></ruby>めてください。<br>*(Đặt bento và trà lên quầy. Cái này, hâm hộ tôi.)* |
| Đại | はい、<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。（<ruby>電子<rt>でんし</rt></ruby>レンジに<ruby>入<rt>い</rt></ruby>れて<ruby>2<rt>に</rt></ruby><ruby>分<rt>ぷん</rt></ruby>セット）<br>*(Vâng, quý khách vui lòng đợi ạ. Cho vào lò vi sóng, đặt 2 phút.)* |
| Đại | お<ruby>箸<rt>はし</rt></ruby>はおつけしますか？<br>*(Quý khách có cần đũa không ạ?)* |
| Khách 5 | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, làm ơn.)* |
| Đại | スプーンも<ruby>必要<rt>ひつよう</rt></ruby>でいらっしゃいますか？<br>*(Quý khách có cần thìa luôn không ạ?)* |
| Khách 5 | いや、<ruby>箸<rt>はし</rt></ruby>だけで。<br>*(Không, chỉ đũa thôi.)* |
| Đại | （<ruby>2<rt>に</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>後<rt>ご</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>袋<rt>ふくろ</rt></ruby>にご<ruby>一緒<rt>いっしょ</rt></ruby>にお<ruby>入<rt>い</rt></ruby>れしてもよろしいですか？<br>*(2 phút sau lấy ra. Em để quý khách chờ ạ. Em để chung vào túi được không ạ?)* |
| Khách 5 | はい、いいですよ。<br>*(Vâng, được.)* |
| Đại | <ruby>合計<rt>ごうけい</rt></ruby><ruby>650<rt>ろっぴゃくごじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>でございます。<br>*(Tổng 650 yên ạ.)* |
| Khách 5 | （ICOCAをかざす）<br>*(Quẹt ICOCA.)* |
| Đại | <ruby>支払<rt>しはら</rt></ruby>い、ありがとうございました！<br>*(Cảm ơn quý khách đã thanh toán!)* |

---

## Tình huống 11 — Quầy thu ngân · 21:30, Suzuki tenchou đứng sau góp ý

*Suzuki đứng sau Đại quan sát 30 phút. Sau khi khách rời đi:*

| Vai | Lời thoại |
|---|---|
| Suzuki | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>やのに<ruby>素晴<rt>すば</rt></ruby>らしいで。<br>*(Đại, mới ngày đầu mà tuyệt nhỉ.)* |
| Đại | ありがとうございます！<br>*(Em cảm ơn ạ!)* |
| Suzuki | ええところを<ruby>3<rt>みっ</rt></ruby>つ<ruby>言<rt>い</rt></ruby>うわ。<ruby>1<rt>いち</rt></ruby>、<ruby>年齢<rt>ねんれい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>がきちんとできた。<ruby>2<rt>に</rt></ruby>、お<ruby>箸<rt>はし</rt></ruby>とスプーンの<ruby>聞<rt>き</rt></ruby>き<ruby>方<rt>かた</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>分<rt>わ</rt></ruby>からんかったら「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください」って<ruby>言<rt>い</rt></ruby>えた。<br>*(3 điểm tốt nhé. 1, xác nhận tuổi đàng hoàng. 2, hỏi đũa thìa lịch sự. 3, không biết thì biết nói "đợi chút ạ".)* |
| Đại | はい！<br>*(Vâng!)* |
| Suzuki | <ruby>気<rt>き</rt></ruby>になるとこも<ruby>2<rt>ふた</rt></ruby>つあるで。<ruby>1<rt>いち</rt></ruby>、<ruby>笑顔<rt>えがお</rt></ruby>がもう<ruby>少<rt>すこ</rt></ruby>し<ruby>欲<rt>ほ</rt></ruby>しい。<ruby>2<rt>に</rt></ruby>、お<ruby>釣<rt>つ</rt></ruby>り<ruby>渡<rt>わた</rt></ruby>す<ruby>時<rt>とき</rt></ruby>、<ruby>両手<rt>りょうて</rt></ruby>で<ruby>渡<rt>わた</rt></ruby>すんやで。<br>*(2 điểm cần để ý. 1, cười thêm chút. 2, lúc trả tiền thừa thì đưa bằng hai tay nhé.)* |
| Đại | <ruby>両手<rt>りょうて</rt></ruby>...<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>明日<rt>あした</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Hai tay... em rõ rồi ạ. Từ mai em sẽ chú ý.)* |
| Suzuki | うん、その<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Ừ, cứ vậy mà cố nhé.)* |

---

## Tình huống 12 — Phòng nghỉ nhân viên · 22:00, tan ca + Park rủ ăn

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby>のシフト<ruby>終了<rt>しゅうりょう</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れさま！<br>*(Hết ca hôm nay. Vất vả rồi!)* |
| Đại | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Vất vả ạ!)* |
| Tanaka-kun | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>どうやった？<br>*(Đại, 4 tiếng thấy sao?)* |
| Đại | <ruby>足<rt>あし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>いです。でもとても<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Chân em đau ạ. Nhưng học được rất nhiều.)* |
| Park | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>すれば<ruby>慣<rt>な</rt></ruby>れる。それと、<ruby>賞味期限<rt>しょうみきげん</rt></ruby><ruby>近<rt>ちか</rt></ruby>い<ruby>弁当<rt>べんとう</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>もらえるで。<br>*(1 tuần là quen. À, bento sắp hết hạn được lấy 1 cái đó.)* |
| Đại | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか？<br>*(Ơ, thật ạ?)* |
| Park | <ruby>食事<rt>しょくじ</rt></ruby><ruby>支給<rt>しきゅう</rt></ruby>っていう<ruby>制度<rt>せいど</rt></ruby>や。<ruby>今日<rt>きょう</rt></ruby>は<ruby>唐揚<rt>からあ</rt></ruby>げ<ruby>弁当<rt>べんとう</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>ってる。<br>*(Chế độ cấp ăn đó. Hôm nay còn dư cơm gà chiên.)* |
| Đại | やった！ありがとうございます！<br>*(Tuyệt! Em cảm ơn ạ!)* |
| Tanaka-kun | じゃ、お<ruby>先<rt>さき</rt></ruby>に。また<ruby>明日<rt>あした</rt></ruby>な。<br>*(Vậy mình về trước. Mai gặp nhé.)* |
| Đại | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Vất vả ạ!)* |

---

## Tình huống 13 — Cảnh tiếng Việt · 23:00, Đại gọi Mai báo tin

> Cảnh tiếng Việt — Đại về phòng homestay, gọi LINE cho Mai (vợ chưa cưới, Hà Nội). Ôn lại các mẫu câu JP học trong ngày.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi! Anh xong ca đầu rồi. |
| Mai | (tiếng Việt) Anh! Thế nào anh? Có lúng túng không? |
| Đại | (tiếng Việt) Lúng túng chứ. Lúc khách bảo "PayPay de" anh quên nút ở đâu. Anh Tanaka đứng cạnh chỉ giúp. |
| Mai | (tiếng Việt) Khách có khó tính không anh? |
| Đại | (tiếng Việt) Không, đa số dễ. Có một ông mua thuốc lá, anh phải hỏi "20 tuổi ijou de irasshaimasu ka" — xác nhận trên 20 tuổi. Quy định bắt buộc. |
| Mai | (tiếng Việt) Trời, sang đó học nói lịch sự ghê. |
| Đại | (tiếng Việt) Còn vụ này hay nè: khách Tây hỏi nhà vệ sinh bằng tiếng Anh, anh đứng đơ. Anh Park người Hàn nhảy vào nói tiếng Anh giúp. Anh ấy bảo nhớ 5 câu tiếng Anh mẫu thôi là đủ. |
| Mai | (tiếng Việt) Em ghi vào sổ anh nhé, anh đọc lại em chép. |
| Đại | (tiếng Việt) Ừ. Còn Suzuki tenchou góp ý anh hai điểm: cười nhiều hơn, và trả tiền thừa bằng hai tay. |
| Mai | (tiếng Việt) Sếp dễ thương nhỉ. Bên Hà Nội sếp toàn quát. |
| Đại | (tiếng Việt) Ừ, văn hoá Nhật vậy. Mai anh đi ca chiều tiếp. À cô Yumi tặng anh lá bùa Shitennoji trước khi đi. |
| Mai | (tiếng Việt) Thương cô chú nhỉ. Anh giữ sức khoẻ, em ngủ đây. |
| Đại | (tiếng Việt) Ngủ ngon em. Yêu em. |

---

## Đọng lại chương 5

Đại vượt qua ca baito đầu tiên ở Lawson Namba — 4 tiếng đứng quầy, gặp đủ kiểu khách: anh văn phòng mua onigiri, ông mua thuốc lá Marlboro 15 番, bà cô mua bánh bao, khách Tây hỏi nhà vệ sinh, anh trai mua bento phải hâm. Đại học được **6 câu chào keigo cốt lõi** (いらっしゃいませ・ありがとうございました・少々お待ちください・失礼いたします・申し訳ございません・確認いたします), **mẫu hỏi lại lễ phép** (もう一度お願いします・〜というのは何ですか), **mẫu xác nhận tuổi 20+** (年齢確認のため、画面のボタンにタッチをお願いします), **mẫu hâm bento** (お箸はおつけしますか・袋にご一緒にお入れしてもよろしいですか), **mẫu nhận-trả tiền** (〜円お預かりいたします・〜円のお返しでございます). Park dạy 5 câu tiếng Anh mẫu cho khách quốc tế. Suzuki tenchou feedback 3 điểm tốt + 2 điểm cần fix (cười, hai tay trả tiền thừa). Về nhà gọi Mai, kể chuyện trong ngày bằng tiếng Việt có chêm từ JP đã học.

> Từ vựng & mẫu câu chương này: いらっしゃいませ・ありがとうございました・少々お待ちください・失礼いたします・申し訳ございません・確認いたします・もう一度お願いします・〜というのは・お預かりいたします・〜のお返しでございます・年齢確認のため画面のボタンにタッチをお願いします・年齢確認・POS・バーコード・現金・PayPay・ICOCA・電子レンジ・お箸はおつけしますか・袋にご一緒にお入れします・賞味期限・食事支給・店長・更衣室

## Bí quyết chương

- **6 câu chào keigo**: Học ở trường rồi, nhưng đứng quầy thật mới biết "声、大きく出すんやで" — phải hô to.
- **Hỏi lại lễ phép**: `〜というのは何ですか` an toàn hơn `何ですか`, dùng được với cả tenchou.
- **Số thuốc lá**: Marlboro đỏ = 15 番. Đặc trưng konbini, mỗi mác có số riêng.
- **Xác nhận tuổi 20+**: Bắt buộc trước khi bán thuốc/rượu. Thực tế ở konbini Nhật, khách tự chạm nút "20歳以上です" trên màn hình POS phía khách — nhân viên chỉ hướng dẫn "画面のボタンにタッチをお願いします".
- **Park giải vây tiếng Anh**: Senpai nước ngoài dạy senpai nước ngoài — pattern thực tế Lawson Namba.
- **Hai tay trả tiền thừa**: Suzuki góp ý nhỏ nhưng định hình cả 5 năm. Văn hoá Nhật.
- **食事支給 bento gần hết hạn**: Phúc lợi ngầm — Park biết, Tanaka biết, ai cũng lấy.
- **Osaka-ben của Suzuki**: `〜やで`・`〜やのに`・`〜とき` — chuẩn tenchou Osaka thân thiện.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 初日 | しょにち | SƠ NHẬT | Ngày đầu |
| お守り | おまもり | THỦ | Bùa hộ mệnh |
| 四天王寺 | してんのうじ | TỨ THIÊN VƯƠNG TỰ | Chùa Shitennoji |
| 店長 | てんちょう | ĐIẾM TRƯỞNG | Quản lý cửa hàng |
| 更衣室 | こういしつ | CANH Y THẤT | Phòng thay đồ |
| メンター | — | — | Mentor, người dìu dắt |
| 瞬間 | しゅんかん | THUẤN GIAN | Khoảnh khắc |
| 年齢 | ねんれい | NIÊN LINH | Tuổi |
| バーコード | — | — | Mã vạch |
| 支払い方法 | しはらいほうほう | CHI BÁT PHƯƠNG PHÁP | Phương thức thanh toán |
| 主に | おもに | CHỦ | Chủ yếu |
| 現金 | げんきん | HIỆN KIM | Tiền mặt |
| 交通 | こうつう | GIAO THÔNG | Giao thông |
| ICカード | — | — | Thẻ IC |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Hồi hộp, căng thẳng |
| 恐れ入ります | おそれいります | KHỦNG NHẬP | Xin lỗi, làm phiền (kính ngữ) |
| かざす | — | — | Đưa lên, quẹt |
| レシート | — | — | Hoá đơn |
| 肉まん | にくまん | NHỤC | Bánh bao thịt |
| 蒸し器 | むしき | CHƯNG KHÍ | Tủ hấp |
| 預かる | あずかる | DỰ | Nhận giữ (tiền) |
| 戸惑う | とまどう | HỘ HOẶC | Lúng túng |
| 番号 | ばんごう | PHIÊN HIỆU | Số |
| 年齢確認 | ねんれいかくにん | NIÊN LINH XÁC NHẬN | Xác nhận tuổi |
| 札 | さつ | TRÁT | Tờ tiền |
| 慌てる | あわてる | HOẢNG | Hốt hoảng, bối rối |
| 定型表現 | ていけいひょうげん | ĐỊNH HÌNH BIỂU HIỆN | Câu mẫu chuẩn |
| 休憩 | きゅうけい | HƯU KHẾ | Giải lao |
| 温める | あたためる | ÔN | Hâm nóng |
| 電子レンジ | でんしレンジ | ĐIỆN TỬ | Lò vi sóng |
| スプーン | — | — | Thìa |
| 袋 | ふくろ | ĐẠI | Túi |
| 素晴らしい | すばらしい | TỐ TÌNH | Tuyệt vời |
| 丁寧 | ていねい | ĐINH NINH | Lịch sự, cẩn thận |
| お釣り | おつり | ĐIẾU | Tiền thừa |
| 調子 | ちょうし | ĐIỀU TỬ | Phong độ, đà |
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |
| 賞味期限 | しょうみきげん | THƯỞNG VỊ KỲ HẠN | Hạn sử dụng (vị) |
| 制度 | せいど | CHẾ ĐỘ | Chế độ |
| 唐揚げ | からあげ | ĐƯỜNG DƯƠNG | Gà chiên kiểu Nhật |
| お疲れさま | おつかれさま | BÌ | Vất vả rồi |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000006, 800000019, NULL, 'markdown_book', 'T6. Thuyết trình văn hoá Tết Việt Nam (プレゼン文化)', '# Sách du học sinh tiếng Nhật · T6. Thuyết trình văn hoá Tết Việt Nam (プレゼン文化)

> **Mục tiêu nhân vật:** Đại (19 tuổi, Kansai Gogo Gakuin, lớp B trung cấp). Học các mẫu hội thoại tiếng Nhật của người thuyết trình trước lớp: mở-thân-kết presentation (本日のテーマは・スライド〜をご覧ください・ご清聴ありがとうございました), xin gia hạn deadline với sensei, nhờ sempai góp ý slide, đối ứng Q&A (はい・いいえ・もう一度お願いします), so sánh văn hoá hai nước (共通点・相違点), nhận phản hồi chấm điểm, kể lại cho người thân ở VN.

---

## Bối cảnh

Tháng 7/2024. Yamada-sensei giao project trao đổi văn hoá cho lớp B: mỗi học viên thuyết trình 10 phút về văn hoá quê hương + 5 phút Q&A, dùng PowerPoint. Chu kỳ 4 tuần, Đại tuần 3 sau Sumi (Hàn Quốc) và Yifan (Trung Quốc). Đại chọn chủ đề **テト・ベトナム** (Tết Việt Nam) — gần Tết âm 2025, có thể so sánh với O-shogatsu Nhật. Tony và Yumi giúp xem slide + nghe tập nói. Chương này tập trung mẫu câu thuyết trình trang trọng và Q&A.

---

## Tình huống 1 — Phòng lớp B · 14:30, Yamada giao đề project

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>文化<rt>ぶんか</rt></ruby><ruby>交流<rt>こうりゅう</rt></ruby>プロジェクトを<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mọi người, tháng sau bắt đầu project trao đổi văn hoá.)* |
| Yamada | <ruby>各自<rt>かくじ</rt></ruby><ruby>母国<rt>ぼこく</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>について<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>プレゼン、<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>Q&Aです。パワーポイント<ruby>必須<rt>ひっす</rt></ruby>。<br>*(Mỗi người thuyết trình 10 phút về văn hoá nước mình + 5 phút Q&A. Bắt buộc dùng PowerPoint.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、テーマは<ruby>自由<rt>じゆう</rt></ruby>ですか？<br>*(Thưa cô, chủ đề tự do ạ?)* |
| Yamada | はい、<ruby>自由<rt>じゆう</rt></ruby>です。でも<ruby>具体的<rt>ぐたいてき</rt></ruby>なテーマがいいです。「<ruby>文化<rt>ぶんか</rt></ruby>」だけだと<ruby>広<rt>ひろ</rt></ruby>すぎますから。<br>*(Vâng, tự do. Nhưng nên chọn cụ thể. "Văn hoá" chung quá thì rộng.)* |
| Yifan | <ruby>順番<rt>じゅんばん</rt></ruby>はどうなりますか？<br>*(Thứ tự thế nào ạ?)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>週<rt>しゅう</rt></ruby>スミさん、<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>週<rt>しゅう</rt></ruby>イーファンさん、<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>週<rt>しゅう</rt></ruby>ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>第<rt>だい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>週<rt>しゅう</rt></ruby>アウン<ruby>君<rt>くん</rt></ruby>です。<br>*(Tuần 1 Sumi, tuần 2 Yifan, tuần 3 Đại, tuần 4 Aung.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Phòng lớp B · 14:45, Yamada giảng cấu trúc + tiêu chí chấm

| Vai | Lời thoại |
|---|---|
| Yamada | プレゼンの<ruby>構成<rt>こうせい</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Cấu trúc thuyết trình nhớ theo 5 bước.)* |
| Yamada | <ruby>1<rt>いち</rt></ruby>:<ruby>導入<rt>どうにゅう</rt></ruby> (テーマ<ruby>紹介<rt>しょうかい</rt></ruby>)、<ruby>2<rt>に</rt></ruby>:<ruby>背景<rt>はいけい</rt></ruby> (<ruby>歴史<rt>れきし</rt></ruby>・<ruby>地理<rt>ちり</rt></ruby>)、<ruby>3<rt>さん</rt></ruby>:<ruby>主<rt>しゅ</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>、<ruby>4<rt>よん</rt></ruby>:<ruby>日本<rt>にほん</rt></ruby>との<ruby>比較<rt>ひかく</rt></ruby>、<ruby>5<rt>ご</rt></ruby>:まとめ＋Q&A。<br>*(1: mở đầu, 2: bối cảnh, 3: nội dung chính, 4: so sánh với Nhật, 5: tổng kết + Q&A.)* |
| Đại | すみません、「<ruby>導入<rt>どうにゅう</rt></ruby>」と「<ruby>背景<rt>はいけい</rt></ruby>」の<ruby>違<rt>ちが</rt></ruby>いはどういうことですか？<br>*(Xin lỗi cô, "doonyuu" với "haikei" khác nhau thế nào ạ?)* |
| Yamada | <ruby>導入<rt>どうにゅう</rt></ruby>は「<ruby>本日<rt>ほんじつ</rt></ruby>のテーマは〜です」と<ruby>言<rt>い</rt></ruby>うところ。<ruby>背景<rt>はいけい</rt></ruby>は「いつから・どこで・なぜ」を<ruby>説明<rt>せつめい</rt></ruby>するところです。<br>*(Doonyuu là chỗ nói "Đề tài hôm nay là...". Haikei là chỗ giải thích từ khi nào, ở đâu, vì sao.)* |
| Đại | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi ạ.)* |
| Yamada | <ruby>採点<rt>さいてん</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>内容<rt>ないよう</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>発音<rt>はつおん</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、スライド<ruby>20<rt>にじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、Q&A<ruby>対応<rt>たいおう</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<br>*(Tiêu chí: nội dung 40, phát âm 30, slide 20, đối ứng Q&A 10.)* |

---

## Tình huống 3 — Phòng khách nhà Tanaka · 18:00, Đại bàn chủ đề với Tony và Yumi

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ユミさん、<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Bác Tony, cô Yumi, cháu có việc muốn xin ý kiến ạ.)* |
| Tony | おう、なんや？<br>*(Ồ, gì thế?)* |
| Đại | <ruby>来月<rt>らいげつ</rt></ruby>クラスでベトナム<ruby>文化<rt>ぶんか</rt></ruby>のプレゼンをします。テーマで<ruby>悩<rt>なや</rt></ruby>んでいます。<br>*(Tháng sau cháu thuyết trình văn hoá VN. Cháu đang phân vân chủ đề.)* |
| Yumi | <ruby>候補<rt>こうほ</rt></ruby>は？<br>*(Có những lựa chọn nào?)* |
| Đại | <ruby>5<rt>いつ</rt></ruby>つあります。アオザイ、ベトナム<ruby>料理<rt>りょうり</rt></ruby>、ハロン<ruby>湾<rt>わん</rt></ruby>、テト、<ruby>南北<rt>なんぼく</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>い。<br>*(Có 5 ạ. Áo dài, ẩm thực, vịnh Hạ Long, Tết, khác biệt Nam-Bắc.)* |
| Yumi | テト、いいわよ！<ruby>日本<rt>にほん</rt></ruby>のお<ruby>正月<rt>しょうがつ</rt></ruby>と<ruby>比較<rt>ひかく</rt></ruby>できるじゃない。<br>*(Tết hay đó! Lại so sánh được với năm mới Nhật.)* |
| Tony | <ruby>賛成<rt>さんせい</rt></ruby>。テトやったら<ruby>写真<rt>しゃしん</rt></ruby>も<ruby>多<rt>おお</rt></ruby>いし、<ruby>聞<rt>き</rt></ruby>く<ruby>人<rt>ひと</rt></ruby>も<ruby>興味<rt>きょうみ</rt></ruby><ruby>持<rt>も</rt></ruby>ちやすいで。<br>*(Đồng ý. Tết thì nhiều ảnh, người nghe cũng dễ quan tâm.)* |
| Đại | ありがとうございます！テトに<ruby>決<rt>き</rt></ruby>めます。スライドができたら<ruby>見<rt>み</rt></ruby>ていただけますか？<br>*(Cháu cảm ơn ạ! Cháu quyết chọn Tết. Khi nào xong slide nhờ cô chú xem giúp được không ạ?)* |
| Yumi | もちろん！<ruby>遠慮<rt>えんりょ</rt></ruby>しないでね。<br>*(Tất nhiên! Đừng ngại.)* |

---

## Tình huống 4 — Phòng giáo viên · 12:00, xin gia hạn nộp slide draft

*Đại thấy slide chưa xong, đến gặp Yamada-sensei xin lùi deadline 2 ngày.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>少々<rt>しょうしょう</rt></ruby>よろしいですか？<br>*(Cô Yamada, em xin phép ạ. Cô có chút thời gian không ạ?)* |
| Yamada | はい、どうぞ。<br>*(Vâng, vào đi.)* |
| Đại | プレゼンのスライドの<ruby>件<rt>けん</rt></ruby>でご<ruby>相談<rt>そうだん</rt></ruby>があります。<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>期限<rt>きげん</rt></ruby>は<ruby>明日<rt>あした</rt></ruby>ですが、<ruby>写真<rt>しゃしん</rt></ruby>がまだ<ruby>集<rt>あつ</rt></ruby>まらなくて...<br>*(Em xin trao đổi về slide presentation. Hạn nộp ngày mai nhưng ảnh em vẫn chưa gom đủ...)* |
| Yamada | テトの<ruby>写真<rt>しゃしん</rt></ruby>ですね。<ruby>家族<rt>かぞく</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>んでいるの？<br>*(Ảnh Tết nhỉ. Em nhờ gia đình gửi à?)* |
| Đại | はい、<ruby>母<rt>はは</rt></ruby>に<ruby>古<rt>ふる</rt></ruby>いアルバムを<ruby>探<rt>さが</rt></ruby>してもらっています。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>遅<rt>おく</rt></ruby>らせていただけませんか？<br>*(Vâng, mẹ em đang tìm album cũ. Em xin lỗi cô, cho em lùi 2 ngày được không ạ?)* |
| Yamada | <ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。でも<ruby>本番<rt>ほんばん</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>前<rt>まえ</rt></ruby>までには<ruby>必<rt>かなら</rt></ruby>ず<ruby>出<rt>だ</rt></ruby>してくださいね。<br>*(2 ngày thì được. Nhưng nhất định phải nộp trước ngày thuyết trình 1 tuần nhé.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせます。ありがとうございます。<br>*(Vâng, em chắc chắn kịp ạ. Em cảm ơn cô.)* |

---

## Tình huống 5 — Phòng lớp B · 14:00, quan sát Sumi presentation tuần 1

*Đại ngồi hàng giữa, quan sát Sumi thuyết trình về Kimjang (lễ ngâm kimchi Hàn Quốc) để học pattern.*

| Vai | Lời thoại |
|---|---|
| Sumi | みなさん、こんにちは！<ruby>本日<rt>ほんじつ</rt></ruby>のテーマは<ruby>韓国<rt>かんこく</rt></ruby>のキムジャンです。<br>*(Mọi người chào! Đề tài hôm nay là Kimjang Hàn Quốc.)* |
| Sumi | スライド<ruby>1<rt>いち</rt></ruby>をご<ruby>覧<rt>らん</rt></ruby>ください。キムジャンは<ruby>毎年<rt>まいとし</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>家族<rt>かぞく</rt></ruby>が<ruby>集<rt>あつ</rt></ruby>まって、<ruby>白菜<rt>はくさい</rt></ruby><ruby>100<rt>ひゃっ</rt></ruby><ruby>個<rt>こ</rt></ruby>を<ruby>漬<rt>つ</rt></ruby>ける<ruby>行事<rt>ぎょうじ</rt></ruby>です。<br>*(Mời xem slide 1. Kimjang là sự kiện gia đình tụ tập tháng 11 mỗi năm, ngâm 100 cải thảo.)* |
| Sumi | （<ruby>15<rt>じゅうご</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>）ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。<br>*(15 phút sau. Cảm ơn quý vị đã lắng nghe.)* |
| Cả lớp | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |
| Yifan | キムチは<ruby>毎日<rt>まいにち</rt></ruby><ruby>食<rt>た</rt></ruby>べますか？<br>*(Có ăn kimchi mỗi ngày không?)* |
| Sumi | はい、<ruby>毎食<rt>まいしょく</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>食<rt>た</rt></ruby>べます。<br>*(Vâng, bữa nào cũng ăn.)* |
| Đại | スミさん、<ruby>1<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>してもよろしいですか？キムジャンは<ruby>男性<rt>だんせい</rt></ruby>も<ruby>参加<rt>さんか</rt></ruby>しますか？<br>*(Sumi cho mình hỏi một câu được không? Đàn ông có tham gia Kimjang không?)* |
| Sumi | はい、<ruby>最近<rt>さいきん</rt></ruby>は<ruby>男性<rt>だんせい</rt></ruby>も<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Vâng, gần đây đàn ông cũng phụ.)* |

---

## Tình huống 6 — Phòng khách nhà Tanaka · 21:00, tập nói với Tony và Yumi

*Đại đứng giữa phòng khách, slide chiếu lên TV qua HDMI. Tony và Yumi ngồi giả vờ làm khán giả.*

| Vai | Lời thoại |
|---|---|
| Đại | みなさん、こんにちは！<ruby>本日<rt>ほんじつ</rt></ruby>のテーマはベトナムのテトです！<br>*(Mọi người chào! Đề tài hôm nay là Tết Việt Nam!)* |
| Tony | <ruby>声<rt>こえ</rt></ruby>、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>大<rt>おお</rt></ruby>きく。<ruby>後<rt>うし</rt></ruby>ろまで<ruby>届<rt>とど</rt></ruby>かへんで。<br>*(Tiếng to thêm chút. Phía sau không nghe tới đâu.)* |
| Đại | （<ruby>大声<rt>おおごえ</rt></ruby>で）みなさん、こんにちは！<ruby>本日<rt>ほんじつ</rt></ruby>のテーマはベトナムのテトです！<br>*(To tiếng. Mọi người chào! Đề tài là Tết Việt Nam!)* |
| Yumi | いいわね！でも「テト」の<ruby>説明<rt>せつめい</rt></ruby>を<ruby>先<rt>さき</rt></ruby>にしたほうがいいんじゃない？<ruby>聞<rt>き</rt></ruby>く<ruby>人<rt>ひと</rt></ruby>はテトを<ruby>知<rt>し</rt></ruby>らないから。<br>*(Được đó! Nhưng nên giải thích "Tết" là gì trước nhỉ? Người nghe đâu biết.)* |
| Đại | あ、なるほど。テトはベトナムの<ruby>旧暦<rt>きゅうれき</rt></ruby><ruby>正月<rt>しょうがつ</rt></ruby>です。<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>29<rt>にじゅうく</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>日<rt>か</rt></ruby>まで。<br>*(À ra vậy. Tết là Tết âm lịch VN. 2025 từ 29/1 đến 2/2.)* |
| Tony | そうそう、<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>日付<rt>ひづけ</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Đúng đúng, ngày cụ thể quan trọng.)* |
| Yumi | <ruby>共通点<rt>きょうつうてん</rt></ruby>と<ruby>相違点<rt>そういてん</rt></ruby>のスライド、<ruby>表<rt>ひょう</rt></ruby>にしたらどう？<br>*(Slide điểm chung điểm khác, làm thành bảng đi.)* |
| Đại | はい！<ruby>表<rt>ひょう</rt></ruby>のほうが<ruby>分<rt>わ</rt></ruby>かりやすいですね。ありがとうございます。<br>*(Vâng! Bảng dễ hiểu hơn nhỉ. Cháu cảm ơn ạ.)* |

---

## Tình huống 7 — Cafe Namba · 16:00, nhờ Tuấn (đồng hương) góp ý

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Tuấn, em xem qua slide anh giúp được không? |
| Tuấn | (tiếng Việt) Vâng anh, anh chiếu lên đi. |
| Đại | (tiếng Việt) Mai 13h30 anh trình bày. Hơi run. |
| Tuấn | (tiếng Việt) Bánh chưng 10 tiếng luộc — anh nói rõ vụ này, người Nhật mê chi tiết. |
| Đại | (tiếng Việt) OK. Còn vụ lì xì so với お年玉 thì sao? |
| Tuấn | (tiếng Việt) Anh nhấn ý nghĩa màu đỏ — xua tà. Người Nhật cũng có "厄払い" tương đương, dễ hiểu. |
| Đại | (tiếng Việt) Hay! Anh thêm slide đó. |
| Tuấn | (tiếng Việt) Mai em qua xem trực tiếp. Có cần em quay video gửi mẹ anh không? |
| Đại | (tiếng Việt) Quay giúp anh đi. Mẹ chắc khoe cả họ. |

---

## Tình huống 8 — Phòng homestay · 22:00, đêm trước presentation — nhắn Mai

| Vai | Lời thoại |
|---|---|
| Đại | (LINE, VN) Mai ơi anh run quá. Mai 13h30 thuyết trình. |
| Mai | (LINE, VN) Anh tập mấy lần rồi? |
| Đại | (LINE, VN) 8 lần với Tony, Yumi. 2 lần với Tuấn. Vẫn run. |
| Mai | (LINE, VN) Anh nói tiếng Nhật trước người Nhật mà — run là đúng rồi. Nhưng anh kể em nghe đi, anh sẽ nói gì? |
| Đại | (LINE, VN) Mở đầu: Honjitsu no tema wa Vietnam no Tết desu. Sau đó định nghĩa Tết, ngày 2025, đại tảo, bánh chưng, đào miền Bắc mai miền Nam, lì xì, so sánh với O-shogatsu Nhật. |
| Mai | (LINE, VN) Đủ rồi. Anh nhớ cười nhé, đừng nghiêm mặt. |
| Đại | (LINE, VN) Ừ. Em ngủ ngon. Cảm ơn em. |
| Mai | (LINE, VN) Ganbatte! |

---

## Tình huống 9 — Phòng lớp B · 13:30, mở đầu presentation

| Vai | Lời thoại |
|---|---|
| Yamada | では、ダイ<ruby>君<rt>くん</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy mời Đại.)* |
| Đại | （<ruby>立<rt>た</rt></ruby>って<ruby>深呼吸<rt>しんこきゅう</rt></ruby>）みなさん、こんにちは！グエン・ヴァン・ダイです。<br>*(Đứng dậy, hít sâu. Mọi người chào! Em là Nguyễn Văn Đại.)* |
| Cả lớp | こんにちは！<br>*(Chào!)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマはベトナムのテト、つまり<ruby>旧暦<rt>きゅうれき</rt></ruby>のお<ruby>正月<rt>しょうがつ</rt></ruby>です。<br>*(Đề tài hôm nay là Tết Việt Nam, tức là Tết âm lịch.)* |
| Đại | スライド<ruby>1<rt>いち</rt></ruby>をご<ruby>覧<rt>らん</rt></ruby>ください。<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby>のテトは<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>29<rt>にじゅうく</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>日<rt>か</rt></ruby>までです。<br>*(Mời xem slide 1. Tết 2025 từ 29/1 đến 2/2.)* |
| Đại | テトは<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>最大<rt>さいだい</rt></ruby>の<ruby>祝日<rt>しゅくじつ</rt></ruby>で、<ruby>家族<rt>かぞく</rt></ruby>が<ruby>集<rt>あつ</rt></ruby>まる<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>時期<rt>じき</rt></ruby>です。<br>*(Tết là ngày lễ lớn nhất năm, là dịp quan trọng gia đình tụ họp.)* |

---

## Tình huống 10 — Phòng lớp B · 13:35-13:42, thân bài bánh chưng + lì xì

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>次<rt>つぎ</rt></ruby>のスライドです。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>前<rt>まえ</rt></ruby>から<ruby>家<rt>いえ</rt></ruby>を<ruby>大掃除<rt>おおそうじ</rt></ruby>します。<ruby>古<rt>ふる</rt></ruby>いものを<ruby>捨<rt>す</rt></ruby>てて<ruby>新<rt>あたら</rt></ruby>しい<ruby>年<rt>とし</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えるためです。<br>*(Slide tiếp. 1 tuần trước Tết dọn nhà. Để bỏ cũ đón mới.)* |
| Đại | （スライド<ruby>6<rt>ろく</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>）これが<ruby>伝統<rt>でんとう</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>のバインチュンです。<ruby>北部<rt>ほくぶ</rt></ruby>は<ruby>四角<rt>しかく</rt></ruby>、<ruby>南部<rt>なんぶ</rt></ruby>は<ruby>円柱<rt>えんちゅう</rt></ruby><ruby>形<rt>けい</rt></ruby>のバインテットです。<br>*(Hiện slide 6. Đây là món truyền thống bánh chưng. Miền Bắc vuông, miền Nam tròn dài là bánh tét.)* |
| Đại | <ruby>材料<rt>ざいりょう</rt></ruby>はもち<ruby>米<rt>ごめ</rt></ruby>、<ruby>豚肉<rt>ぶたにく</rt></ruby>、<ruby>緑豆<rt>りょくとう</rt></ruby>、バナナの<ruby>葉<rt>は</rt></ruby>。<ruby>10<rt>じゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>煮<rt>に</rt></ruby>ます。<br>*(Nguyên liệu: gạo nếp, thịt heo, đậu xanh, lá chuối. Luộc 10 tiếng.)* |
| Yifan | え、<ruby>10<rt>じゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>！？<br>*(Ơ, 10 tiếng!?)* |
| Đại | はい！<ruby>夜<rt>よる</rt></ruby><ruby>家族<rt>かぞく</rt></ruby>が<ruby>火<rt>ひ</rt></ruby>の<ruby>周<rt>まわ</rt></ruby>りに<ruby>集<rt>あつ</rt></ruby>まって、<ruby>話<rt>はな</rt></ruby>しながら<ruby>待<rt>ま</rt></ruby>ちます。<ruby>子供<rt>こども</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>の<ruby>一番<rt>いちばん</rt></ruby>の<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>で</rt></ruby>です。<br>*(Vâng! Đêm cả nhà tụ quanh bếp lửa, vừa luộc vừa nói chuyện. Là kỷ niệm đẹp nhất hồi nhỏ.)* |
| Đại | （スライド<ruby>9<rt>きゅう</rt></ruby>）<ruby>元日<rt>がんじつ</rt></ruby>から<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>間<rt>かん</rt></ruby>、<ruby>子供<rt>こども</rt></ruby>に<ruby>赤<rt>あか</rt></ruby>い<ruby>封筒<rt>ふうとう</rt></ruby>「リーシー」を<ruby>渡<rt>わた</rt></ruby>します。<ruby>日本<rt>にほん</rt></ruby>のお<ruby>年玉<rt>としだま</rt></ruby>と<ruby>似<rt>に</rt></ruby>ています。<br>*(Slide 9. Từ mùng 1 đến mùng 3, tặng phong bao đỏ "lì xì" cho trẻ em. Giống o-toshidama Nhật.)* |

---

## Tình huống 11 — Phòng lớp B · 13:42-13:47, Q&A 5 phút

| Vai | Lời thoại |
|---|---|
| Yamada | では、Q&Aに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Vậy chuyển sang Q&A.)* |
| Yifan | バインチュンを<ruby>大阪<rt>おおさか</rt></ruby>で<ruby>食<rt>た</rt></ruby>べたいんですけど、どこで<ruby>買<rt>か</rt></ruby>えますか？<br>*(Tôi muốn ăn bánh chưng ở Osaka, mua được ở đâu?)* |
| Đại | はい、<ruby>難波<rt>なんば</rt></ruby>のベトナム<ruby>食材店<rt>しょくざいてん</rt></ruby>「ベンタイン<ruby>市場<rt>いちば</rt></ruby>」で<ruby>買<rt>か</rt></ruby>えます。テトの<ruby>時期<rt>じき</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めに<ruby>予約<rt>よやく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Vâng, mua được ở tiệm thực phẩm Việt "chợ Bến Thành" tại Namba. Mùa Tết phải đặt trước đầu tháng 2.)* |
| Sumi | お<ruby>年玉<rt>としだま</rt></ruby>の<ruby>金額<rt>きんがく</rt></ruby>はどれくらいですか？<br>*(Lì xì khoảng bao nhiêu?)* |
| Đại | <ruby>子供<rt>こども</rt></ruby><ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby>あたり<ruby>300<rt>さんびゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>から<ruby>1500<rt>せんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>です。<ruby>金額<rt>きんがく</rt></ruby>より<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Mỗi trẻ tương đương 300-1500 yên. Tấm lòng quan trọng hơn số tiền.)* |
| Aung | <ruby>赤<rt>あか</rt></ruby>い<ruby>封筒<rt>ふうとう</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Ý nghĩa phong bao đỏ là gì?)* |
| Đại | <ruby>赤<rt>あか</rt></ruby>は<ruby>幸運<rt>こううん</rt></ruby>と<ruby>邪気<rt>じゃき</rt></ruby><ruby>払<rt>ばら</rt></ruby>いを<ruby>意味<rt>いみ</rt></ruby>します。<ruby>中国<rt>ちゅうごく</rt></ruby><ruby>文化<rt>ぶんか</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>です。<br>*(Đỏ tượng trưng may mắn và xua tà. Ảnh hưởng văn hoá Trung Quốc.)* |
| Yamada | <ruby>最後<rt>さいご</rt></ruby>に<ruby>1<rt>ひと</rt></ruby>つ。<ruby>北部<rt>ほくぶ</rt></ruby>と<ruby>南部<rt>なんぶ</rt></ruby>のテトはどう<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Câu cuối. Tết Bắc Nam khác nhau thế nào?)* |
| Đại | <ruby>北部<rt>ほくぶ</rt></ruby>は<ruby>桃<rt>もも</rt></ruby>の<ruby>花<rt>はな</rt></ruby>とバインチュンです。<ruby>南部<rt>なんぶ</rt></ruby>は<ruby>黄色<rt>きいろ</rt></ruby>いホアマイの<ruby>花<rt>はな</rt></ruby>とバインテットです。<ruby>気候<rt>きこう</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うからです。<br>*(Bắc: hoa đào + bánh chưng. Nam: hoa mai vàng + bánh tét. Vì khí hậu khác.)* |
| Đại | ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました！<br>*(Cảm ơn quý vị đã lắng nghe!)* |
| Cả lớp | （<ruby>大<rt>おお</rt></ruby>きな<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay to.)* |

---

## Tình huống 12 — Phòng giáo viên · 14:00, Yamada góp ý + chấm điểm

| Vai | Lời thoại |
|---|---|
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>素晴<rt>すば</rt></ruby>らしいプレゼンでした。<br>*(Đại, presentation tuyệt vời.)* |
| Đại | ありがとうございます！<br>*(Em cảm ơn ạ!)* |
| Yamada | <ruby>採点<rt>さいてん</rt></ruby>です。<ruby>内容<rt>ないよう</rt></ruby><ruby>38<rt>さんじゅうはち</rt></ruby>、<ruby>発音<rt>はつおん</rt></ruby><ruby>27<rt>にじゅうなな</rt></ruby>、スライド<ruby>19<rt>じゅうきゅう</rt></ruby>、Q&A<ruby>9<rt>きゅう</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>93<rt>きゅうじゅうさん</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<br>*(Chấm điểm. Nội dung 38, phát âm 27, slide 19, Q&A 9. Tổng 93 điểm.)* |
| Đại | え、<ruby>93<rt>きゅうじゅうさん</rt></ruby><ruby>点<rt>てん</rt></ruby>！ありがとうございます！<br>*(Ơ, 93 điểm! Em cảm ơn ạ!)* |
| Yamada | クラスで<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>位<rt>い</rt></ruby>です。<ruby>特<rt>とく</rt></ruby>に<ruby>北<rt>きた</rt></ruby>と<ruby>南<rt>みなみ</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いの<ruby>説明<rt>せつめい</rt></ruby>が<ruby>具体的<rt>ぐたいてき</rt></ruby>でよかったです。<br>*(Hạng 1 lớp. Đặc biệt phần giải thích Bắc Nam cụ thể, tốt lắm.)* |
| Đại | <ruby>改善点<rt>かいぜんてん</rt></ruby>はありますか？<br>*(Có điểm cần cải thiện không ạ?)* |
| Yamada | <ruby>2<rt>ふた</rt></ruby>つあります。<ruby>1<rt>いち</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>のせいか<ruby>早口<rt>はやくち</rt></ruby>になる<ruby>場面<rt>ばめん</rt></ruby>がありました。<ruby>2<rt>に</rt></ruby>、スライドの<ruby>文字<rt>もじ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>小<rt>ちい</rt></ruby>さかったです。<ruby>後<rt>うし</rt></ruby>ろの<ruby>席<rt>せき</rt></ruby>から<ruby>見<rt>み</rt></ruby>えにくいです。<br>*(2 điểm. 1: căng nên có lúc nói nhanh. 2: chữ slide hơi nhỏ. Phía sau khó nhìn.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>次<rt>つぎ</rt></ruby>に<ruby>活<rt>い</rt></ruby>かします。<br>*(Em rõ rồi ạ. Lần sau em sẽ áp dụng.)* |

---

## Tình huống 13 — Cảnh tiếng Việt · 22:00, Đại gọi mẹ + Mai báo tin 93 điểm

> Cảnh tiếng Việt — Đại video call về VN, mẹ và Mai cùng ngồi xem.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi! Mai ơi! Con/anh thuyết trình xong rồi! |
| Mẹ Đại | (tiếng Việt) Sao rồi con? Có run không? |
| Đại | (tiếng Việt) Run lắm mẹ. Nhưng được 93 điểm, hạng 1 lớp! |
| Mẹ Đại | (tiếng Việt) Trời ơi! Hạng 1 hả con! Mẹ tự hào! |
| Mai | (tiếng Việt) Anh giỏi quá! Anh nói gì mà 93 điểm? |
| Đại | (tiếng Việt) Anh nói Tết Việt — bánh chưng, lì xì, đào miền Bắc mai miền Nam. So sánh với O-shogatsu Nhật. Có bạn Yifan Trung Quốc hỏi "10 tiếng luộc bánh chưng thật à?". |
| Mẹ Đại | (tiếng Việt) Thật chứ. Năm nào mẹ với bà ngoại cũng luộc đêm 28. |
| Đại | (tiếng Việt) Mẹ ơi, mẹ tìm hộ con cái ảnh hồi 2018 con với bố luộc bánh, gửi qua LINE để con lưu vào slide nhé. |
| Mẹ Đại | (tiếng Việt) Ừ, mai mẹ tìm. À, Tết 2025 con về không? |
| Đại | (tiếng Việt) Không về được mẹ. Visa du học chưa nên về lại. Con ăn Tết với Tuấn và mấy bạn Việt ở Osaka. |
| Mai | (tiếng Việt) Sang năm anh về luôn. Em đợi. |
| Đại | (tiếng Việt) Ừ. Cảm ơn em với mẹ. Yamada-sensei khen, Tony cô Yumi cũng vui. |

---

## Đọng lại chương 6

Đại trải qua project thuyết trình văn hoá đầu tiên ở trường tiếng — 10 ngày chuẩn bị, 8 lần tập với Tony và Yumi, 2 lần với Tuấn. Học được **mẫu câu mở** (本日のテーマは〜です・スライド〜をご覧ください), **mẫu thân bài** (次のスライドです・これが〜です), **mẫu kết** (ご清聴ありがとうございました), **mẫu xin gia hạn** (〜遅らせていただけませんか・必ず間に合わせます), **mẫu hỏi lại trong Q&A** (もう一度お願いします), **mẫu so sánh văn hoá** (〜と似ています・〜と違います・共通点は〜・相違点は〜). Bonus học **構成5段階** (mở-bối cảnh-chính-so sánh-tổng kết) và 4 tiêu chí chấm (内容40・発音30・スライド20・Q&A10). Kết quả 93/100, hạng 1 lớp. Yamada góp ý 2 điểm cần cải thiện: tốc độ nói + cỡ chữ slide. Tự tin trước đám đông tiếng Nhật tăng vọt.

> Từ vựng & mẫu câu chương này: 本日のテーマは・スライドをご覧ください・ご清聴ありがとうございました・次のスライドです・もう一度お願いします・〜と似ています・共通点・相違点・構成・導入・背景・主内容・比較・まとめ・採点基準・内容・発音・対応・旧暦正月・大掃除・バインチュン・バインテット・お年玉・邪気払い・ホアマイ・桃の花・気候・遅らせていただけませんか・間に合わせます

## Bí quyết chương

- **構成5段階**: Cấu trúc chuẩn dạy trong trường tiếng — áp dụng được cho mọi presentation 10 phút.
- **「〜というのは？」hỏi sensei**: Đại hỏi Yamada giữa giờ giảng — keigo an toàn nhất.
- **Xin gia hạn deadline**: `〜遅らせていただけませんか` + lý do cụ thể + cam kết deadline mới — pattern chuẩn xin sensei.
- **Tony-Yumi homestay**: Đứng vai trò khán giả thử + góp ý slide — phúc lợi homestay không ở ký túc nào có.
- **Bến Thành Market Namba**: Tham chiếu thật cho du học sinh VN tại Osaka.
- **ホアマイ (Ochna integerrima)**: Khác 梅 ume Nhật — chi tiết phân biệt cần nói rõ.
- **93/100 hạng 1**: Phần thưởng 10 ngày tập.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 文化交流 | ぶんかこうりゅう | VĂN HOÁ GIAO LƯU | Trao đổi văn hoá |
| プロジェクト | — | — | Dự án |
| 母国 | ぼこく | MẪU QUỐC | Mẫu quốc |
| 必須 | ひっす | TẤT TU | Bắt buộc |
| 構成 | こうせい | CẤU THÀNH | Cấu trúc |
| 段階 | だんかい | ĐOẠN GIAI | Giai đoạn, bước |
| 導入 | どうにゅう | ĐẠO NHẬP | Mở đầu |
| 背景 | はいけい | BỐI CẢNH | Bối cảnh |
| 歴史 | れきし | LỊCH SỬ | Lịch sử |
| 地理 | ちり | ĐỊA LÝ | Địa lý |
| 比較 | ひかく | TỶ GIÁC | So sánh |
| まとめ | — | — | Tổng kết |
| 採点基準 | さいてんきじゅん | THẢI ĐIỂM CƠ CHUẨN | Tiêu chí chấm điểm |
| 内容 | ないよう | NỘI DUNG | Nội dung |
| スライド | — | — | Slide |
| 候補 | こうほ | HẦU BỔ | Ứng viên, lựa chọn |
| 湾 | わん | LOAN | Vịnh |
| 南北 | なんぼく | NAM BẮC | Nam Bắc |
| 違い | ちがい | VI | Khác biệt |
| 賛成 | さんせい | TÁN THÀNH | Đồng ý |
| 興味 | きょうみ | HỨNG VỊ | Hứng thú |
| 提出期限 | ていしゅつきげん | ĐỀ XUẤT KỲ HẠN | Hạn nộp |
| 古い | ふるい | CỔ | Cũ |
| アルバム | — | — | Album |
| 探す | さがす | THÁM | Tìm kiếm |
| 遅らせる | おくらせる | TRÌ | Hoãn lại |
| 本番 | ほんばん | BẢN PHIÊN | Buổi chính thức |
| 間に合わせる | まにあわせる | GIAN HỢP | Kịp thời |
| 行事 | ぎょうじ | HÀNH SỰ | Sự kiện |
| 白菜 | はくさい | BẠCH THÁI | Cải thảo |
| 漬ける | つける | TÝ | Ngâm muối |
| 拍手 | はくしゅ | PHÁCH THỦ | Vỗ tay |
| ご清聴 | ごせいちょう | THANH THÍNH | Sự lắng nghe (kính ngữ) |
| 男性 | だんせい | NAM TÍNH | Nam giới |
| 旧暦 | きゅうれき | CỰU LỊCH | Âm lịch |
| 正月 | しょうがつ | CHÍNH NGUYỆT | Tết, năm mới |
| 共通点 | きょうつうてん | CỘNG THÔNG ĐIỂM | Điểm chung |
| 相違点 | そういてん | TƯƠNG VI ĐIỂM | Điểm khác |
| 表 | ひょう | BIỂU | Bảng |
| 大掃除 | おおそうじ | ĐẠI TẢO TRỪ | Tổng vệ sinh |
| 伝統料理 | でんとうりょうり | TRUYỀN THỐNG LIỆU LÝ | Món truyền thống |
| 北部 | ほくぶ | BẮC BỘ | Miền Bắc |
| 四角 | しかく | TỨ GIÁC | Hình vuông |
| 南部 | なんぶ | NAM BỘ | Miền Nam |
| 円柱形 | えんちゅうけい | VIÊN TRỤ HÌNH | Hình trụ tròn |
| もち米 | もちごめ | MỄ | Gạo nếp |
| 緑豆 | りょくとう | LỤC ĐẬU | Đậu xanh |
| 葉 | は | DIỆP | Lá |
| 元日 | がんじつ | NGUYÊN NHẬT | Mùng 1 |
| 封筒 | ふうとう | PHONG ĐỒNG | Phong bao |
| お年玉 | おとしだま | NIÊN NGỌC | Tiền lì xì |
| 食材店 | しょくざいてん | THỰC TÀI ĐIẾM | Cửa hàng thực phẩm |
| 予約 | よやく | DỰ ƯỚC | Đặt trước |
| 金額 | きんがく | KIM NGẠCH | Số tiền |
| 相当 | そうとう | TƯƠNG ĐƯƠNG | Tương đương |
| 気持ち | きもち | KHÍ TRÌ | Tấm lòng, cảm xúc |
| 幸運 | こううん | HẠNH VẬN | May mắn |
| 邪気払い | じゃきばらい | TÀ KHÍ BÁT | Xua tà |
| 影響 | えいきょう | ẢNH HƯỞNG | Ảnh hưởng |
| 桃の花 | もものはな | ĐÀO HOA | Hoa đào |
| 黄色い | きいろい | HOÀNG SẮC | Màu vàng |
| 気候 | きこう | KHÍ HẬU | Khí hậu |
| 採点 | さいてん | THẢI ĐIỂM | Chấm điểm |
| 改善点 | かいぜんてん | CẢI THIỆN ĐIỂM | Điểm cải thiện |
| 早口 | はやくち | TỐC KHẨU | Nói nhanh |
| 場面 | ばめん | TRƯỜNG DIỆN | Cảnh, đoạn |
| 文字 | もじ | VĂN TỰ | Chữ |
| 席 | せき | TỊCH | Chỗ ngồi |
| 活かす | いかす | HOẠT | Vận dụng, áp dụng |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000007, 800000019, NULL, 'markdown_book', 'T7. Lễ hội Tenjin Matsuri Osaka — yukata + hanabi (天神祭)', '# Sách du học sinh tiếng Nhật · T7. Lễ hội Tenjin Matsuri Osaka — yukata + hanabi (天神祭)

> **Mục tiêu nhân vật:** Đại (19 tuổi, du học Osaka 4 tháng). Học các mẫu hội thoại tiếng Nhật của du khách đi lễ hội Nhật: rủ rê đi cùng (〜に行きませんか), thuê yukata ở tiệm (〜をお願いします・着付けは何分かかりますか), gọi đồ ở quán yatai (これ〜つください), hỏi đường khi lạc (〜はどこですか), giải thích văn hoá quê mình cho bạn ngoại quốc, kể chuyện về cho gia đình homestay sau khi về.

---

## Bối cảnh

Ngày 25/7/2024. Tenjin Matsuri — top 3 lễ hội Nhật, top 1 Osaka, 1000 năm lịch sử. Đại đi cùng Linh (đồng hương Việt, ký túc Tennoji, lớp C), Tuấn (đồng hương, homestay Tennoji, lớp B), Yifan (Trung Quốc), Sumi (Hàn Quốc), Aung (Myanmar) — 6 người 5 quốc tịch. Thuê yukata 3000 yên/người tại tiệm "京都和服" Namba. Hành trình: Tenmangu 17:30 → diễu phố 18:00 → bờ sông Okawa 19:00 → hanabi 19:30-21:00. Chương này tập trung mẫu câu giao tiếp lễ hội + giải thích văn hoá liên văn hoá.

---

## Tình huống 1 — Phòng lớp B · 13:00, Yamada-sensei giới thiệu Tenjin Matsuri

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>天神祭<rt>てんじんまつり</rt></ruby>がありますよ。<br>*(Mọi người, tuần sau có Tenjin Matsuri đó.)* |
| Đại | <ruby>天神祭<rt>てんじんまつり</rt></ruby>とは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Tenjin Matsuri là gì ạ?)* |
| Yamada | <ruby>大阪<rt>おおさか</rt></ruby><ruby>三大<rt>さんだい</rt></ruby><ruby>夏祭<rt>なつまつ</rt></ruby>りの<ruby>一<rt>ひと</rt></ruby>つで、<ruby>1000<rt>せん</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>があります。<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>24<rt>にじゅうよっ</rt></ruby><ruby>日<rt>か</rt></ruby>・<ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>大阪<rt>おおさか</rt></ruby><ruby>天満宮<rt>てんまんぐう</rt></ruby>で<ruby>行<rt>おこな</rt></ruby>われます。<br>*(Là một trong 3 lễ hè lớn của Osaka, 1000 năm lịch sử. Tổ chức 24-25/7 tại đền Osaka Tenmangu.)* |
| Sumi | みどころは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Điểm nhấn là gì ạ?)* |
| Yamada | <ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>からの<ruby>陸渡御<rt>りくとぎょ</rt></ruby> (パレード) と<ruby>船渡御<rt>ふなとぎょ</rt></ruby> (<ruby>船<rt>ふね</rt></ruby>のパレード)、そして<ruby>奉納花火<rt>ほうのうはなび</rt></ruby><ruby>5000<rt>ごせん</rt></ruby><ruby>発<rt>はつ</rt></ruby>です。<br>*(Từ chiều 25 là rước phố + rước thuyền, rồi 5000 quả pháo bông dâng lễ.)* |
| Yamada | みなさん、ぜひ<ruby>行<rt>い</rt></ruby>ってください。ゆかたを<ruby>着<rt>き</rt></ruby>たほうがもっと<ruby>楽<rt>たの</rt></ruby>しいですよ。<br>*(Mọi người nên đi nhé. Mặc yukata thì còn vui hơn.)* |
| Đại | はい、ぜひ！<br>*(Vâng, nhất định!)* |

---

## Tình huống 2 — Cafe Doutor Namba · 14:30, Đại rủ cả nhóm

| Vai | Lời thoại |
|---|---|
| Đại | みなさん、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>天神祭<rt>てんじんまつり</rt></ruby>に<ruby>行<rt>い</rt></ruby>きませんか？<br>*(Mọi người, tuần sau đi Tenjin Matsuri không?)* |
| Yifan | <ruby>行<rt>い</rt></ruby>く！<ruby>初<rt>はじ</rt></ruby>めての<ruby>夏祭<rt>なつまつ</rt></ruby>りや。<br>*(Đi! Lễ hè đầu tiên đây.)* |
| Sumi | <ruby>私<rt>わたし</rt></ruby>も<ruby>行<rt>い</rt></ruby>きたい。ゆかたを<ruby>着<rt>き</rt></ruby>てみたい！<br>*(Tôi cũng muốn đi. Muốn mặc thử yukata!)* |
| Aung | アウンも！<br>*(Aung nữa!)* |
| Linh | (tiếng Việt) Em đi với anh nha. Em chưa biết mặc yukata. |
| Tuấn | (tiếng Việt) Em cũng! 5 quốc tịch đi chung — quốc tế thật. |
| Đại | <ruby>5<rt>ご</rt></ruby><ruby>カ国<rt>かこく</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>人<rt>にん</rt></ruby>！ゆかたは<ruby>難波<rt>なんば</rt></ruby>で<ruby>借<rt>か</rt></ruby>りられると<ruby>聞<rt>き</rt></ruby>きました。<br>*(5 quốc tịch 6 người! Yukata nghe nói thuê được ở Namba.)* |
| Tuấn | (tiếng Việt) Em tra rồi: tiệm "京都和服" Namba, 3000 yên/tối, có cài tóc + obi. |
| Đại | じゃ、<ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>16<rt>じゅうろく</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>難波<rt>なんば</rt></ruby><ruby>駅<rt>えき</rt></ruby><ruby>北口<rt>きたぐち</rt></ruby>で<ruby>集合<rt>しゅうごう</rt></ruby>しましょう。<br>*(Vậy 16h ngày 25 tập trung cửa Bắc ga Namba nhé.)* |
| Sumi | <ruby>了解<rt>りょうかい</rt></ruby>！<br>*(Rõ!)* |

---

## Tình huống 3 — Tiệm yukata Namba · 16:10, thuê + được mặc cho

| Vai | Lời thoại |
|---|---|
| Shop staff | いらっしゃいませ！ご<ruby>予約<rt>よやく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですか？<br>*(Kính chào! Quý vị đã đặt phải không ạ?)* |
| Đại | はい、グエンの<ruby>名前<rt>なまえ</rt></ruby>で<ruby>6<rt>ろく</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>予約<rt>よやく</rt></ruby>しました。<br>*(Vâng, em đặt 6 người tên Nguyen.)* |
| Staff | <ruby>確認<rt>かくにん</rt></ruby>いたします... はい、<ruby>男性<rt>だんせい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>、<ruby>女性<rt>じょせい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>ですね。<ruby>柄<rt>がら</rt></ruby>はあちらの<ruby>棚<rt>たな</rt></ruby>からお<ruby>選<rt>えら</rt></ruby>びください。<br>*(Để em xác nhận... vâng, 3 nam 3 nữ ạ. Hoạ tiết quý vị chọn ở kệ kia.)* |
| Đại | すみません、<ruby>着付<rt>きつ</rt></ruby>けは<ruby>何<rt>なん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>かかりますか？<br>*(Xin lỗi, mặc mất bao nhiêu phút ạ?)* |
| Staff | お<ruby>一人<rt>ひとり</rt></ruby>あたり<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>6<rt>ろく</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>なら<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Mỗi người 20 phút. 6 vị thì xin tính khoảng 1 tiếng.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Linh | （<ruby>赤<rt>あか</rt></ruby>い<ruby>花柄<rt>はながら</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ぶ）これにします！<br>*(Chọn hoa đỏ. Em chọn cái này!)* |
| Đại | （<ruby>紺<rt>こん</rt></ruby><ruby>色<rt>いろ</rt></ruby>の<ruby>無地<rt>むじ</rt></ruby>）これでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chọn xanh đậm trơn. Em xin cái này.)* |
| Staff | <ruby>男性<rt>だんせい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は<ruby>帯<rt>おび</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>しきつめに<ruby>結<rt>むす</rt></ruby>びますね。<ruby>痛<rt>いた</rt></ruby>かったらおっしゃってください。<br>*(Nam thì obi sẽ thắt hơi chặt. Đau thì quý khách nói nhé.)* |
| Đại | はい。あ、ちょっときついです。<br>*(Vâng. À, hơi chặt ạ.)* |
| Staff | <ruby>少<rt>すこ</rt></ruby>し<ruby>緩<rt>ゆる</rt></ruby>めますね。<br>*(Em nới một chút nhé.)* |

---

## Tình huống 4 — Vỉa hè trước tiệm · 17:15, đi guốc geta lần đầu

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>下駄<rt>げた</rt></ruby>を<ruby>履<rt>は</rt></ruby>く）<ruby>歩<rt>ある</rt></ruby>き<ruby>方<rt>かた</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい！<br>*(Mang guốc geta. Cách đi khó quá!)* |
| Staff | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>下駄<rt>げた</rt></ruby>は<ruby>小幅<rt>こはば</rt></ruby>で<ruby>歩<rt>ある</rt></ruby>くといいですよ。<ruby>急<rt>いそ</rt></ruby>ぐと<ruby>転<rt>ころ</rt></ruby>びやすいです。<br>*(Thưa quý khách, đi geta bước nhỏ là tốt nhất. Đi vội dễ ngã.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ ạ. Em cảm ơn.)* |
| Linh | (tiếng Việt) Anh ơi đẹp! Yukata hợp anh lắm. |
| Đại | (tiếng Việt) Em cũng đẹp! Chụp ảnh chung đi. |
| Yifan | （<ruby>携帯<rt>けいたい</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>）<ruby>6<rt>ろく</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>記念<rt>きねん</rt></ruby><ruby>写真<rt>しゃしん</rt></ruby><ruby>撮<rt>と</rt></ruby>りましょう！<br>*(Chuẩn bị điện thoại. Chụp ảnh kỷ niệm 6 người nào!)* |
| Đại | （ポーズ）<ruby>3<rt>さん</rt></ruby>、<ruby>2<rt>に</rt></ruby>、<ruby>1<rt>いち</rt></ruby>、はい、チーズ！<br>*(Tạo dáng. 3, 2, 1, cheese!)* |

---

## Tình huống 5 — Đường tới Tenmangu · 17:45, hỏi đường khi lạc

*Đoàn ra ga Namba bắt tàu Sakaisuji line lên Minamimorimachi, nhưng ra cửa sai phía.*

| Vai | Lời thoại |
|---|---|
| Đại | あれ、<ruby>天満宮<rt>てんまんぐう</rt></ruby>はこっちじゃないかも...<br>*(Ơ, Tenmangu hình như không phải hướng này...)* |
| Đại | （<ruby>近<rt>ちか</rt></ruby>くのおじいさんに）すみません、ちょっとお<ruby>尋<rt>たず</rt></ruby>ねしてもよろしいですか？<br>*(Hỏi ông cụ gần đó. Xin lỗi, cháu hỏi đường được không ạ?)* |
| Ông cụ | はい、どうぞ。<br>*(Vâng, hỏi đi.)* |
| Đại | <ruby>大阪<rt>おおさか</rt></ruby><ruby>天満宮<rt>てんまんぐう</rt></ruby>はどう<ruby>行<rt>い</rt></ruby>けばいいですか？<br>*(Đến đền Osaka Tenmangu đi thế nào ạ?)* |
| Ông cụ | この<ruby>通<rt>とお</rt></ruby>りをまっすぐ<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>歩<rt>ある</rt></ruby>いて、<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>信号<rt>しんごう</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>に<ruby>曲<rt>ま</rt></ruby>がってください。<ruby>人<rt>ひと</rt></ruby>がいっぱいおるからすぐ<ruby>分<rt>わ</rt></ruby>かりますわ。<br>*(Đi thẳng đường này 5 phút, đến đèn xanh đèn đỏ thứ hai rẽ phải. Đông người lắm, thấy ngay.)* |
| Đại | まっすぐ<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>、<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>信号<rt>しんごう</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>ですね。ありがとうございます！<br>*(Thẳng 5 phút, đèn thứ hai rẽ phải đúng không ạ. Cháu cảm ơn ông!)* |
| Ông cụ | <ruby>気<rt>き</rt></ruby>をつけてな。ゆかた、よう<ruby>似合<rt>にあ</rt></ruby>うで。<br>*(Cẩn thận nhé. Yukata hợp lắm đó.)* |
| Đại | ありがとうございます！<br>*(Cháu cảm ơn ạ!)* |

---

## Tình huống 6 — Cổng Tenmangu · 18:00, mua takoyaki ở yatai

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Wow! Giống chợ Hàng Mã đêm Trung thu nhưng đông gấp 10. |
| Đại | (tiếng Việt) Đúng! Mua takoyaki trước đi, đói rồi. |
| Yatai-san | いらっしゃい！たこ<ruby>焼<rt>や</rt></ruby>き、<ruby>祭<rt>まつ</rt></ruby>り<ruby>限定<rt>げんてい</rt></ruby>で<ruby>8<rt>はっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>やで！<br>*(Chào! Takoyaki, đặc biệt lễ hội 8 viên 500 yên đây!)* |
| Đại | すみません、たこ<ruby>焼<rt>や</rt></ruby>き<ruby>3<rt>みっ</rt></ruby>つください。<br>*(Cho tôi 3 phần takoyaki.)* |
| Yatai-san | <ruby>3<rt>みっ</rt></ruby>つやな、<ruby>1500<rt>せんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ち！<br>*(3 phần à, 1500 yên. Đợi chút nhé!)* |
| Đại | あの、<ruby>青<rt>あお</rt></ruby>のりとマヨネーズはかけてもらえますか？<br>*(Dạ, cho cháu xin rắc rong biển xanh và mayonnaise được không ạ?)* |
| Yatai-san | <ruby>全部<rt>ぜんぶ</rt></ruby>のせるで！それが<ruby>大阪流<rt>おおさかりゅう</rt></ruby>や！<br>*(Cho hết! Đó là kiểu Osaka đó!)* |
| Đại | （<ruby>食<rt>た</rt></ruby>べる）あつっ！でも<ruby>美味<rt>おい</rt></ruby>しい！<br>*(Ăn. Nóng quá! Nhưng ngon!)* |
| Sumi | <ruby>祭<rt>まつ</rt></ruby>りで<ruby>食<rt>た</rt></ruby>べると<ruby>特別<rt>とくべつ</rt></ruby><ruby>美味<rt>おい</rt></ruby>しいね！<br>*(Ăn ở lễ hội thấy đặc biệt ngon nhỉ!)* |

---

## Tình huống 7 — Trước Tenmangu · 18:30, Yifan hỏi về mikoshi — Đại giải thích

| Vai | Lời thoại |
|---|---|
| Yifan | ダイ<ruby>君<rt>くん</rt></ruby>、あの<ruby>担<rt>かつ</rt></ruby>いでるやつ<ruby>何<rt>なに</rt></ruby>？<br>*(Đại, cái người ta khiêng kia là gì thế?)* |
| Đại | あれは<ruby>御輿<rt>みこし</rt></ruby>です。<ruby>神様<rt>かみさま</rt></ruby>を<ruby>運<rt>はこ</rt></ruby>ぶ<ruby>移動式<rt>いどうしき</rt></ruby>の<ruby>神社<rt>じんじゃ</rt></ruby>と<ruby>聞<rt>き</rt></ruby>きました。<br>*(Đó là mikoshi. Nghe nói là đền di động dùng để rước thần.)* |
| Sumi | <ruby>担<rt>かつ</rt></ruby>ぐ<ruby>人<rt>ひと</rt></ruby>、<ruby>何<rt>なん</rt></ruby><ruby>人<rt>にん</rt></ruby>いますか？<br>*(Người khiêng bao nhiêu người?)* |
| Đại | <ruby>1<rt>ひと</rt></ruby>つの<ruby>御輿<rt>みこし</rt></ruby>に<ruby>30<rt>さんじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>ぐらい。<ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>1000<rt>せん</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>近<rt>ちか</rt></ruby>く<ruby>参加<rt>さんか</rt></ruby>するそうです。<br>*(Mỗi mikoshi khoảng 30 người. Toàn bộ gần 1000 người tham gia thì phải.)* |
| Aung | ベトナムにも<ruby>同<rt>おな</rt></ruby>じようなお<ruby>祭<rt>まつ</rt></ruby>りはありますか？<br>*(Việt Nam có lễ tương tự không?)* |
| Đại | <ruby>北部<rt>ほくぶ</rt></ruby>に「<ruby>寺<rt>てら</rt></ruby>のお<ruby>祭<rt>まつ</rt></ruby>り」というのがあって、<ruby>神様<rt>かみさま</rt></ruby>を<ruby>輿<rt>こし</rt></ruby>で<ruby>運<rt>はこ</rt></ruby>びます。でも<ruby>規模<rt>きぼ</rt></ruby>は<ruby>天神祭<rt>てんじんまつり</rt></ruby>のほうがずっと<ruby>大<rt>おお</rt></ruby>きいです。<br>*(Ở miền Bắc có lễ hội chùa, rước kiệu thần. Nhưng quy mô Tenjin Matsuri lớn hơn nhiều.)* |
| Yifan | <ruby>面白<rt>おもしろ</rt></ruby>い！<ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>媽祖<rt>まそ</rt></ruby><ruby>祭<rt>まつ</rt></ruby>りに<ruby>似<rt>に</rt></ruby>てる。<br>*(Hay! Giống lễ Mã Tổ của TQ.)* |

---

## Tình huống 8 — Bờ sông Okawa · 19:00, xem 船渡御 (rước thuyền)

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>大川<rt>おおかわ</rt></ruby>に<ruby>着<rt>つ</rt></ruby>きました！<ruby>船<rt>ふね</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い！<br>*(Đến sông Okawa rồi! Nhiều thuyền quá!)* |
| Linh | (tiếng Việt) 100 chiếc thuyền sáng đèn — đẹp như phim! |
| Tuấn | (tiếng Việt) Em quay video gửi mẹ! |
| Đại | （<ruby>近<rt>ちか</rt></ruby>くのおばさんに）すみません、あの<ruby>船<rt>ふね</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>の<ruby>火<rt>ひ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Hỏi bà gần đó. Xin lỗi, lửa trên thuyền kia là gì ạ?)* |
| Bà cô | あれは<ruby>篝火<rt>かがりび</rt></ruby>や。<ruby>神様<rt>かみさま</rt></ruby>を<ruby>照<rt>て</rt></ruby>らす<ruby>火<rt>ひ</rt></ruby>やで。<ruby>船渡御<rt>ふなとぎょ</rt></ruby>はこの<ruby>祭<rt>まつ</rt></ruby>りの<ruby>一番<rt>いちばん</rt></ruby>の<ruby>見<rt>み</rt></ruby>どころや。<br>*(Đó là kagaribi. Lửa soi thần đó. Funato-gyo là điểm nhấn lớn nhất lễ hội này.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Cháu học được điều mới. Cháu cảm ơn ạ.)* |
| Bà cô | あんた、ベトナム？<br>*(Cháu Việt Nam à?)* |
| Đại | はい、<ruby>4<rt>よん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Vâng, cháu sang được 4 tháng ạ.)* |
| Bà cô | <ruby>大阪<rt>おおさか</rt></ruby>へようこそ！<ruby>楽<rt>たの</rt></ruby>しんでな。<br>*(Hoan nghênh đến Osaka! Vui chơi nhé.)* |
| Đại | ありがとうございます！<br>*(Cháu cảm ơn ạ!)* |

---

## Tình huống 9 — Bờ sông · 19:30, bắt đầu hanabi

*Cả nhóm ngồi trên thảm dã ngoại bờ sông. Loa phóng thanh báo bắt đầu.*

| Vai | Lời thoại |
|---|---|
| Loa | これより<ruby>奉納<rt>ほうのう</rt></ruby><ruby>花火<rt>はなび</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>いたします！<br>*(Bắt đầu pháo bông dâng lễ ngay bây giờ!)* |
| Đại | （<ruby>携帯<rt>けいたい</rt></ruby>のカメラを<ruby>準備<rt>じゅんび</rt></ruby>）<br>*(Chuẩn bị máy ảnh điện thoại.)* |
| Hanabi | （ドーン！と<ruby>赤<rt>あか</rt></ruby>・<ruby>緑<rt>みどり</rt></ruby>・<ruby>金色<rt>きんいろ</rt></ruby>が<ruby>空<rt>そら</rt></ruby>いっぱいに<ruby>広<rt>ひろ</rt></ruby>がる）<br>*(Ầm! Đỏ-xanh lục-vàng kim tràn khắp bầu trời.)* |
| Đại | わー！すごい！<br>*(Wow! Tuyệt!)* |
| Linh | (tiếng Việt, khẽ khóc) Đẹp quá anh ơi. |
| Đại | (tiếng Việt) Lần đầu anh thấy hanabi gần thế này. |
| Sumi | <ruby>韓国<rt>かんこく</rt></ruby>のヨイドハナビ<ruby>祭<rt>まつ</rt></ruby>りより<ruby>近<rt>ちか</rt></ruby>くて<ruby>迫力<rt>はくりょく</rt></ruby>がある！<br>*(Gần hơn và mạnh hơn lễ pháo Yeouido Hàn Quốc!)* |
| Yifan | <ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>花火<rt>はなび</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>うね。<ruby>祭<rt>まつ</rt></ruby>りと<ruby>一体<rt>いったい</rt></ruby>になってる。<br>*(Khác pháo bông Trung Quốc nhỉ. Hoà với lễ hội thành một.)* |
| Đại | (tiếng Việt, thầm với Linh) 4 tháng ở Nhật. Khoảnh khắc này — định nghĩa luôn. |

---

## Tình huống 10 — Trên đường về ga · 21:30, chân đau + chia tay

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Em chân đau quá anh. Geta khó đi thật. |
| Đại | (tiếng Việt) Anh cũng. Mai chắc đi không nổi. |
| Đại | みなさん、<ruby>地下鉄<rt>ちかてつ</rt></ruby>は<ruby>混<rt>こ</rt></ruby>みそうなので、ゆかた<ruby>店<rt>てん</rt></ruby>まで<ruby>歩<rt>ある</rt></ruby>いて<ruby>帰<rt>かえ</rt></ruby>りませんか？<br>*(Mọi người, tàu điện ngầm chắc đông, đi bộ về tiệm yukata nhé?)* |
| Yifan | <ruby>賛成<rt>さんせい</rt></ruby>！ゆかたで<ruby>歩<rt>ある</rt></ruby>くのも<ruby>楽<rt>たの</rt></ruby>しい。<br>*(Đồng ý! Đi bộ với yukata cũng vui.)* |
| Sumi | <ruby>来年<rt>らいねん</rt></ruby>もまた<ruby>来<rt>き</rt></ruby>たいね！<br>*(Sang năm muốn đến nữa nhỉ!)* |
| Aung | <ruby>賛成<rt>さんせい</rt></ruby>！<ruby>幸<rt>しあわ</rt></ruby>せでした。<br>*(Đồng ý! Hạnh phúc quá.)* |
| Đại | <ruby>来年<rt>らいねん</rt></ruby>はみんなまだ<ruby>大阪<rt>おおさか</rt></ruby>にいるかな？<br>*(Sang năm mọi người còn ở Osaka không nhỉ?)* |
| Yifan | <ruby>俺<rt>おれ</rt></ruby>は<ruby>大学院<rt>だいがくいん</rt></ruby><ruby>受<rt>う</rt></ruby>けるから<ruby>東京<rt>とうきょう</rt></ruby>かも。<br>*(Tôi thi cao học chắc sang Tokyo.)* |
| Sumi | <ruby>私<rt>わたし</rt></ruby>は<ruby>大阪<rt>おおさか</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>るつもり。<br>*(Tôi tính ở lại Osaka.)* |
| Đại | じゃ、もし<ruby>離<rt>はな</rt></ruby>れても<ruby>来年<rt>らいねん</rt></ruby>の<ruby>天神祭<rt>てんじんまつり</rt></ruby>に<ruby>集合<rt>しゅうごう</rt></ruby>しましょう！<ruby>約束<rt>やくそく</rt></ruby>！<br>*(Vậy dù xa nhau thì Tenjin Matsuri sang năm lại gặp ở đây nhé! Hứa!)* |
| Cả nhóm | <ruby>約束<rt>やくそく</rt></ruby>！<br>*(Hứa!)* |

---

## Tình huống 11 — Trả yukata · 22:30, cảm ơn shop staff

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>店<rt>みせ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>る）お<ruby>世話<rt>せわ</rt></ruby>になりました。ゆかたを<ruby>返<rt>かえ</rt></ruby>します。<br>*(Quay lại tiệm. Cảm ơn đã giúp đỡ. Em trả yukata.)* |
| Staff | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<ruby>祭<rt>まつ</rt></ruby>りはどうでしたか？<br>*(Vất vả rồi! Lễ hội thế nào ạ?)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしかったです！<ruby>花火<rt>はなび</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>にきれいでした。<br>*(Tuyệt vời ạ! Pháo bông đẹp thật.)* |
| Staff | よかったですね。あ、ゆかたに<ruby>少<rt>すこ</rt></ruby>し<ruby>汚<rt>よご</rt></ruby>れがありますね。<br>*(May quá. À, yukata có vết bẩn nhẹ nhỉ.)* |
| Đại | あ、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。たこ<ruby>焼<rt>や</rt></ruby>きのソースが...<ruby>追加<rt>ついか</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>はいくらですか？<br>*(Ơ, em xin lỗi. Sốt takoyaki... phí thêm bao nhiêu ạ?)* |
| Staff | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ、<ruby>軽<rt>かる</rt></ruby>い<ruby>汚<rt>よご</rt></ruby>れですから<ruby>追加<rt>ついか</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>はかかりません。<br>*(Không sao đâu, bẩn nhẹ thôi nên không tính thêm phí.)* |
| Đại | ありがとうございます！<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn ạ! Em được nhờ quá.)* |

---

## Tình huống 12 — Nhà Tanaka Tennoji · 23:30, kể chuyện với Tony và Yumi

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>玄関<rt>げんかん</rt></ruby>）ただいま<ruby>戻<rt>もど</rt></ruby>りました！<br>*(Vào sảnh. Cháu về rồi ạ!)* |
| Yumi | おかえりなさい！どうだった<ruby>天神祭<rt>てんじんまつり</rt></ruby>？<br>*(Mừng cháu về! Tenjin Matsuri thế nào?)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしかったです！<ruby>花火<rt>はなび</rt></ruby><ruby>5000<rt>ごせん</rt></ruby><ruby>発<rt>はつ</rt></ruby>を<ruby>初<rt>はじ</rt></ruby>めて<ruby>近<rt>ちか</rt></ruby>くで<ruby>見<rt>み</rt></ruby>ました。<br>*(Tuyệt vời ạ! Lần đầu cháu xem 5000 phát pháo gần.)* |
| Tony | ゆかた、よう<ruby>似合<rt>にあ</rt></ruby>うやんか！<br>*(Yukata hợp lắm đấy chứ!)* |
| Đại | （<ruby>携帯<rt>けいたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる）<ruby>6<rt>ろく</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>記念<rt>きねん</rt></ruby><ruby>写真<rt>しゃしん</rt></ruby><ruby>撮<rt>と</rt></ruby>りました。<br>*(Đưa điện thoại cho xem. 6 đứa chụp kỷ niệm này.)* |
| Yumi | あら、<ruby>国際的<rt>こくさいてき</rt></ruby>ね！ベトナム、<ruby>韓国<rt>かんこく</rt></ruby>、<ruby>中国<rt>ちゅうごく</rt></ruby>、ミャンマー！<br>*(Ô, quốc tế nhỉ! Việt Nam, Hàn Quốc, Trung Quốc, Myanmar!)* |
| Đại | はい！<ruby>来年<rt>らいねん</rt></ruby>もみんなで<ruby>集合<rt>しゅうごう</rt></ruby>する<ruby>約束<rt>やくそく</rt></ruby>をしました。<br>*(Vâng! Cháu hứa sang năm tụ tập lại.)* |
| Tony | ええ<ruby>友達<rt>ともだち</rt></ruby>できたな。<ruby>日本<rt>にほん</rt></ruby><ruby>留学<rt>りゅうがく</rt></ruby>の<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>宝物<rt>たからもの</rt></ruby>や。<br>*(Bạn tốt nhỉ. Báu vật thực sự của du học Nhật đó.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にそう<ruby>思<rt>おも</rt></ruby>います。<br>*(Cháu cũng nghĩ vậy.)* |

---

## Tình huống 13 — Cảnh tiếng Việt · 24:00, Đại gọi Mai kể chuyện

> Cảnh tiếng Việt — Đại nằm giường gọi LINE cho Mai. Chân đau, người mệt nhưng vui.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai! Em ngủ chưa? |
| Mai | (tiếng Việt) Chưa, em đợi anh. Đi lễ vui không? |
| Đại | (tiếng Việt) Vui điên luôn. Mặc yukata, đi guốc geta — bước được 5 phút thì chân muốn rụng. |
| Mai | (tiếng Việt) Anh gửi ảnh đi! |
| Đại | (tiếng Việt) Gửi rồi đó, check LINE. 6 đứa chụp chung — anh, Linh, Tuấn, Yifan Trung Quốc, Sumi Hàn Quốc, Aung Myanmar. |
| Mai | (tiếng Việt) Wow đẹp quá! Anh trông như Nhật xịn! |
| Đại | (tiếng Việt) Anh có nói chuyện với một bà cô bên bờ sông. Bà ấy giải thích cho anh "kagaribi" — lửa soi thần trên thuyền. Tiếng Nhật anh nghe được hơn rồi đó. |
| Mai | (tiếng Việt) Anh sang Nhật 4 tháng mà tiến bộ nhanh thật. |
| Đại | (tiếng Việt) Còn pháo bông 5000 phát em. Lúc đó anh nghĩ — "đây mới là Nhật anh hình dung". |
| Mai | (tiếng Việt) Em đợi 2 năm rồi sang chơi với anh. |
| Đại | (tiếng Việt) Ừ. Tenjin Matsuri 2026 mình cùng đi. Hứa nhé. |
| Mai | (tiếng Việt) Hứa. Ngủ ngon anh. |

---

## Đọng lại chương 7

Đại trải nghiệm Tenjin Matsuri đầu tiên trong đời — 1000 năm lịch sử, top 3 lễ hội Nhật. Đi cùng 5 quốc tịch (VN-TQ-HQ-Myanmar) tạo thành kỷ niệm liên văn hoá. Học được **mẫu rủ rê** (〜に行きませんか), **mẫu hỏi đường** (〜はどう行けばいいですか・〜はどこですか), **mẫu thuê dịch vụ** (〜をお願いします・〜は何分かかりますか), **mẫu gọi yatai** (これ〜つください・〜はかけてもらえますか), **mẫu hỏi văn hoá lạ** (あれは何ですか・〜とは何ですか), **mẫu xin lỗi khi làm bẩn** (申し訳ありません・追加料金はいくらですか), **mẫu cảm ơn lúc nhận giúp đỡ** (助かります・勉強になりました). Bonus học từ vựng văn hoá lễ hội Nhật: 御輿・篝火・船渡御・陸渡御・奉納花火・屋台・下駄・帯・着付け. Khoảnh khắc bờ sông Okawa với hanabi định hình cảm xúc "đây là Nhật anh muốn học".

> Từ vựng & mẫu câu chương này: 天神祭・大阪三大夏祭り・大阪天満宮・陸渡御・船渡御・奉納花火・御輿・篝火・大川・河川敷・屋台・たこ焼き・青のり・ゆかた・着付け・下駄・小幅で歩く・帯・〜に行きませんか・〜はどう行けばいいですか・〜はどこですか・〜をお願いします・〜は何分かかりますか・これ〜つください・あれは何ですか・〜とは何ですか・申し訳ありません・追加料金・助かります・勉強になりました・約束

## Bí quyết chương

- **Top 3 lễ Nhật**: Yamada-sensei giới thiệu trong lớp — tự nhiên dẫn vào.
- **5 quốc tịch một nhóm**: Đặc trưng trường tiếng — kỷ niệm liên văn hoá.
- **Hỏi đường ông cụ Osaka**: Osaka-ben `〜やで`・`〜わ` — khác Tokyo, ấm áp.
- **「〜はかけてもらえますか」**: Mẫu khách nhờ yatai-san rắc topping (rong biển/mayonnaise) một cách lịch sự — đúng vai khách nhờ người bán.
- **Geta khó đi**: Chi tiết thực — bước nhỏ, đau chân, đó là một phần của lễ hội.
- **Vết sốt takoyaki**: Tình huống thật — Đại lo "tsuika ryoukin" (phí thêm), staff hiền.
- **Hứa lại sang năm**: Pattern lễ hội Nhật — Tenjin 25/7 cố định, cả nhóm hứa quay lại.
- **"4 tháng — khoảnh khắc định nghĩa"**: Cảm xúc chân thật của du học sinh năm 1.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 天神祭 | てんじんまつり | THIÊN THẦN TẾ | Lễ Tenjin Matsuri |
| 三大夏祭り | さんだいなつまつり | TAM ĐẠI HẠ TẾ | 3 lễ hội hè lớn |
| 天満宮 | てんまんぐう | THIÊN MÃN CUNG | Đền Tenmangu |
| 陸渡御 | りくとぎょ | LỤC ĐỘ NGỰ | Rước trên đường bộ |
| 船渡御 | ふなとぎょ | THUYỀN ĐỘ NGỰ | Rước trên thuyền |
| 奉納花火 | ほうのうはなび | PHỤNG NẠP HOA HOẢ | Pháo bông dâng lễ |
| 集合 | しゅうごう | TẬP HỢP | Tập trung |
| 着付け | きつけ | TRƯỚC PHÓ | Mặc trang phục (cho người khác) |
| 柄 | がら | BÍNH | Hoạ tiết |
| 棚 | たな | PHỐNG | Kệ, giá |
| 帯 | おび | ĐỚI | Đai (yukata, kimono) |
| 結ぶ | むすぶ | KẾT | Buộc, thắt |
| 緩める | ゆるめる | HOÃN | Nới lỏng |
| 下駄 | げた | HẠ THỎA | Guốc Nhật |
| 小幅 | こはば | TIỂU PHÚC | Bước nhỏ |
| 転ぶ | ころぶ | CHUYỂN | Ngã, vấp |
| 記念写真 | きねんしゃしん | KỶ NIỆM TẢ CHÂN | Ảnh kỷ niệm |
| 尋ねる | たずねる | TẦM | Hỏi thăm |
| 屋台 | やたい | ỐC ĐÀI | Quầy hàng rong |
| たこ焼き | たこやき | THIÊU | Bánh bạch tuộc |
| 限定 | げんてい | HẠN ĐỊNH | Giới hạn, đặc biệt |
| 青のり | あおのり | THANH | Rong biển xanh |
| 大阪流 | おおさかりゅう | ĐẠI BẢN LƯU | Kiểu Osaka |
| 担ぐ | かつぐ | ĐẢM | Khiêng, vác |
| 御輿 | みこし | NGỰ DƯ | Kiệu rước thần |
| 神様 | かみさま | THẦN | Thần |
| 神社 | じんじゃ | THẦN XÃ | Đền Shinto |
| 規模 | きぼ | QUY MÔ | Quy mô |
| 河川敷 | かせんしき | HÀ XUYÊN PHU | Bãi ven sông |
| 篝火 | かがりび | CẤU HOẢ | Lửa soi thần |
| 照らす | てらす | CHIẾU | Soi sáng |
| 見どころ | みどころ | KIẾN SỞ | Điểm nhấn |
| 開始 | かいし | KHAI THỦY | Bắt đầu |
| 迫力 | はくりょく | BÁCH LỰC | Mãnh lực, ấn tượng |
| 一体 | いったい | NHẤT THỂ | Hoà làm một |
| 約束 | やくそく | ƯỚC THÚC | Hẹn ước |
| 大学院 | だいがくいん | ĐẠI HỌC VIỆN | Cao học |
| 汚れ | よごれ | Ô | Vết bẩn |
| 追加料金 | ついかりょうきん | TRUY GIA LIỆU KIM | Phí phát sinh |
| 軽い | かるい | KHINH | Nhẹ |
| 国際的 | こくさいてき | QUỐC TẾ ĐÍCH | Mang tính quốc tế |
| 宝物 | たからもの | BẢO VẬT | Báu vật |
| 助かる | たすかる | TRỢ | Được giúp đỡ |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000008, 800000019, NULL, 'markdown_book', 'T8. Đăng ký + thi N3 kentei — đỗ 110/180 (N3合格)', '# Sách du học sinh tiếng Nhật · T8. Đăng ký + thi N3 kentei — đỗ 110/180 (N3合格)

> **Mục tiêu nhân vật:** Đại (19 tuổi, sang Osaka 4 tháng, đã có N4). Học các mẫu hội thoại tiếng Nhật trong giai đoạn ôn-thi-kết quả JLPT: hỏi sensei kế hoạch luyện thi, đăng ký kentei online + thanh toán konbini, rủ bạn lập nhóm học, nhận phản hồi sau mock (申し訳ありません・改善点はありますか), nhờ sempai gia sư, dùng keigo cảm ơn (お世話になりました), đối thoại ngày thi với giám thị, báo tin đỗ cho mọi người.

---

## Bối cảnh

Tháng 9/2024 — 12/2024. JLPT 1 năm 2 đợt: tháng 7 và 12. Đại sang Osaka 4/2024 với N4, mục tiêu N3 đợt 12 (1/12/2024 tại ĐH Osaka). Yamada-sensei mở lớp luyện tăng cường 10 tuần (9/2024-11/2024). Đại lập nhóm học với Tuấn (đồng hương). Mock 1: 88, Mock 2: 102, Mock 3: 115. Đăng ký kentei online ngày 1/9/2024, thanh toán Lawson 6500 yên. Kết quả công bố 1/2025: đỗ 110/180. Chương này tập trung mẫu câu giai đoạn căng thẳng nhất năm 1.

---

## Tình huống 1 — Phòng lớp B · 13:30, Yamada thông báo lớp luyện N3

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPT N3<ruby>受験<rt>じゅけん</rt></ruby><ruby>希望者<rt>きぼうしゃ</rt></ruby>はいますか？<br>*(Mọi người, ai có nguyện vọng thi JLPT N3 tháng 12?)* |
| Đại | （<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる）はい、<ruby>希望<rt>きぼう</rt></ruby>します。<br>*(Giơ tay. Vâng, em có nguyện vọng.)* |
| Tuấn | はい、<ruby>私<rt>わたし</rt></ruby>も！<br>*(Vâng, em cũng!)* |
| Yamada | <ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>10<rt>じゅっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>集中<rt>しゅうちゅう</rt></ruby>プログラムを<ruby>開講<rt>かいこう</rt></ruby>します。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>火<rt>か</rt></ruby>・<ruby>木<rt>もく</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>です。<br>*(Tháng 9 sẽ mở lớp tăng cường 10 tuần. Mỗi tuần thứ 3 và 5, từ 6-8 giờ chiều.)* |
| Đại | <ruby>追加<rt>ついか</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>はかかりますか？<br>*(Có tính thêm phí không ạ?)* |
| Yamada | はい、<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5000<rt>ごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>教材<rt>きょうざい</rt></ruby><ruby>込<rt>こ</rt></ruby>みです。<br>*(Vâng, 15.000 yên. Đã bao gồm giáo trình.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みます。<br>*(Em rõ ạ. Em đăng ký.)* |
| Yamada | プログラムの<ruby>内容<rt>ないよう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>1<rt>いっ</rt></ruby>-<ruby>3<rt>さん</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>、<ruby>4<rt>よん</rt></ruby>-<ruby>6<rt>ろく</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>文法<rt>ぶんぽう</rt></ruby>、<ruby>7<rt>なな</rt></ruby>-<ruby>8<rt>はち</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>読解<rt>どっかい</rt></ruby>、<ruby>9<rt>きゅう</rt></ruby>-<ruby>10<rt>じゅっ</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>聴解<rt>ちょうかい</rt></ruby>＋<ruby>模擬<rt>もぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>です。<br>*(Nội dung: tuần 1-3 chữ-từ vựng, 4-6 ngữ pháp, 7-8 đọc, 9-10 nghe + 3 mock.)* |

---

## Tình huống 2 — Phòng homestay · 21:00, Đại đăng ký kentei online

| Vai | Lời thoại |
|---|---|
| Đại | (VN, đọc to với Tuấn qua LINE call) Tuấn, anh đang điền form kentei. Em điền chưa? |
| Tuấn | (VN) Em điền rồi, đang chờ anh check giúp. |
| Đại | (VN) OK. Họ tên kanji em ghi sao? |
| Tuấn | (VN) Em ghi カタカナ vì kanji em không có. Anh cũng vậy đi. |
| Đại | (VN) Ừ. グエン・ヴァン・ダイ. Ngày sinh dương lịch. Trường tiếng Kansai Gogo Gakuin. Trình độ hiện tại N4. |
| Đại | (VN) Phí 6500 yên. Thanh toán konbini hay credit card? |
| Tuấn | (VN) Konbini đi anh, không cần thẻ. Mai em ra Lawson trả. |
| Đại | (VN) OK, anh cũng vậy. Click "送信" — gửi xong rồi. Mã thanh toán hiện ra: 9847-2231-5678. |
| Tuấn | (VN) Anh in mã ra rồi mang ra Lawson nhé. |

---

## Tình huống 3 — Lawson Namba · 12:00 hôm sau, Đại thanh toán phí thi

*Đại ra Lawson sau giờ học, đứng quầy. Tanaka-kun đang trực.*

| Vai | Lời thoại |
|---|---|
| Đại | タナカ<ruby>君<rt>くん</rt></ruby>、<ruby>払込票<rt>はらいこみひょう</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>での<ruby>支払<rt>しはら</rt></ruby>い、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Tanaka, em xin thanh toán bằng mã thanh toán ạ.)* |
| Tanaka-kun | おう、ダイ<ruby>君<rt>くん</rt></ruby>、お<ruby>客<rt>きゃく</rt></ruby><ruby>側<rt>がわ</rt></ruby>か<ruby>今日<rt>きょう</rt></ruby>は。<ruby>番号<rt>ばんごう</rt></ruby><ruby>教<rt>おし</rt></ruby>えて。<br>*(Ô Đại, hôm nay đứng phía khách à. Đọc số đi.)* |
| Đại | <ruby>9847<rt>きゅうはちよんなな</rt></ruby>-<ruby>2231<rt>ににさんいち</rt></ruby>-<ruby>5678<rt>ごろくななはち</rt></ruby>です。<br>*(9847-2231-5678 ạ.)* |
| Tanaka-kun | （POSに<ruby>入力<rt>にゅうりょく</rt></ruby>）JLPT N3<ruby>受験料<rt>じゅけんりょう</rt></ruby>、<ruby>6500<rt>ろくせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>やね。<br>*(Nhập vào POS. Phí thi JLPT N3, 6500 yên đây.)* |
| Đại | （<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>札<rt>さつ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<br>*(Đưa tờ 10.000 yên.)* |
| Tanaka-kun | <ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりします。<ruby>3500<rt>さんぜんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>のお<ruby>返<rt>かえ</rt></ruby>しです。<br>*(Em xin nhận 10.000 yên. Xin gửi lại 3500 yên.)* |
| Tanaka-kun | （<ruby>領収書<rt>りょうしゅうしょ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）これ<ruby>大事<rt>だいじ</rt></ruby>やで、<ruby>当日<rt>とうじつ</rt></ruby>まで<ruby>無<rt>な</rt></ruby>くさんといて。<br>*(Đưa biên lai. Cái này quan trọng đó, đừng làm mất tới ngày thi.)* |
| Đại | はい、ありがとうございます！<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn anh! Em sẽ cố.)* |
| Tanaka-kun | <ruby>合格<rt>ごうかく</rt></ruby><ruby>祈<rt>いの</rt></ruby>ってるで！<br>*(Cầu cho cậu đỗ nhé!)* |

---

## Tình huống 4 — Cafe Doutor · 14:00 cuối tuần, lập nhóm học với Tuấn

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Tuấn, mình lập nhóm học đi. Thứ 7 sáng từ vựng, chiều ngữ pháp. Chủ nhật đọc + nghe. OK không? |
| Tuấn | (tiếng Việt) OK anh. Em tải app Anki rồi, 100 từ một ngày. |
| Đại | (tiếng Việt) 100 × 70 ngày = 7000 từ. N3 chỉ cần 4500. Dư. |
| Tuấn | (tiếng Việt) Em chia chủ đề: công sở, đời thường, gia đình. Anh chia kiểu gì? |
| Đại | (tiếng Việt) Anh chia theo bộ thủ kanji. Cùng bộ học chung dễ nhớ. |
| Tuấn | (tiếng Việt) Em hỏi anh thử nha. Hakken — nghĩa gì? |
| Đại | (tiếng Việt) 発見, phát hiện. |
| Tuấn | (tiếng Việt) Kishakaiken? |
| Đại | (tiếng Việt) 記者会見, họp báo. |
| Tuấn | (tiếng Việt) Tốt. Sang ngữ pháp đi. ～にとって? |
| Đại | (tiếng Việt) Đối với ai. Vd: 私にとって日本語は難しい. |
| Tuấn | (tiếng Việt) Hay. Tốc độ này 1 tuần 50 mẫu, 6 tuần xong 100 ngữ pháp N3. |

---

## Tình huống 5 — Lớp luyện · 18:00, Mock 1 (kết quả trượt)

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>本日<rt>ほんじつ</rt></ruby>はMock <ruby>1<rt>いち</rt></ruby>です。<ruby>本番<rt>ほんばん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>形式<rt>けいしき</rt></ruby>でやります。<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>文法<rt>ぶんぽう</rt></ruby>・<ruby>読解<rt>どっかい</rt></ruby><ruby>70<rt>ななじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Hôm nay Mock 1. Theo định dạng đề thật. Chữ-Từ vựng 30 phút, Ngữ pháp-Đọc 70 phút, Nghe 40 phút. Bắt đầu nào.)* |
| Đại | （<ruby>解<rt>と</rt></ruby>く）<br>*(Làm bài.)* |
| Yamada | （<ruby>1<rt>いっ</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>）ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Sau 1 tuần. Đại, kết quả đây.)* |
| Đại | （<ruby>緊張<rt>きんちょう</rt></ruby>）はい...<br>*(Căng. Vâng...)* |
| Yamada | <ruby>88<rt>はちじゅうはち</rt></ruby>/<ruby>180<rt>ひゃくはちじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>残念<rt>ざんねん</rt></ruby>ながら<ruby>不合格<rt>ふごうかく</rt></ruby>です。<br>*(88/180. Đỗ 95 điểm. Tiếc là trượt rồi.)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>改善点<rt>かいぜんてん</rt></ruby>はありますか？<br>*(Em xin lỗi. Có điểm cần cải thiện không ạ?)* |
| Yamada | <ruby>謝<rt>あやま</rt></ruby>らなくていいですよ。Mock の<ruby>目的<rt>もくてき</rt></ruby>は<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>することです。<br>*(Không cần xin lỗi. Mục đích Mock là phát hiện điểm yếu.)* |
| Yamada | <ruby>君<rt>きみ</rt></ruby>は<ruby>読解<rt>どっかい</rt></ruby>が<ruby>18<rt>じゅうはち</rt></ruby>/<ruby>40<rt>よんじゅう</rt></ruby>で<ruby>低<rt>ひく</rt></ruby>すぎます。<ruby>長文<rt>ちょうぶん</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>ですね。<br>*(Em đọc hiểu 18/40, thấp quá. Yếu phần đọc dài.)* |
| Đại | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>対策<rt>たいさく</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか？<br>*(Cô có thể chỉ em cách khắc phục cụ thể được không ạ?)* |
| Yamada | <ruby>毎日<rt>まいにち</rt></ruby><ruby>長文<rt>ちょうぶん</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>解<rt>と</rt></ruby>きましょう。<ruby>朝日<rt>あさひ</rt></ruby><ruby>小学生<rt>しょうがくせい</rt></ruby><ruby>新聞<rt>しんぶん</rt></ruby>がおすすめです。<br>*(Mỗi ngày làm 1 bài đọc dài. Tôi khuyên đọc Asahi tiểu học sinh.)* |
| Đại | はい、<ruby>明日<rt>あした</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Vâng, từ mai em bắt đầu.)* |

---

## Tình huống 6 — Cafe Namba · 13:00 cuối tuần, nhờ chị Linh-Nagoya gia sư

*Đại nhắn LINE chị Linh — em họ con bác ở Nagoya, đã làm baito tại Nhật 3 năm, N2.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE, VN) Chị Linh, em chào chị! |
| Linh-chị | (LINE, VN) Đại đó hả? Có gì không em? |
| Đại | (LINE, VN) Em đang ôn N3, Mock 1 trượt vì phần đọc yếu. Bố em bảo nhờ chị giúp được không. |
| Linh-chị | (LINE, VN) Bao giờ thi? |
| Đại | (LINE, VN) 1/12. Còn 5 tuần. |
| Linh-chị | (LINE, VN) Cuối tuần này chị xuống Osaka kèm em 1 ngày. Em đặt cafe nhé. |
| Đại | (LINE, VN) Cảm ơn chị! Em mời chị cơm trưa. |

*Thứ 7, cafe Doutor Namba, 11h:*

| Vai | Lời thoại |
|---|---|
| Linh-chị | (tiếng Việt) Đọc dài N3 có 3 bài: 中文, 長文, 情報検索. Em yếu nhất bài nào? |
| Đại | (tiếng Việt) 長文. Đọc xong không nhớ gì. |
| Linh-chị | (tiếng Việt) Chiến thuật 3 bước nè: 1, đọc tiêu đề + đoạn đầu lướt nhanh. 2, đọc câu hỏi, gạch chân từ khoá. 3, tìm câu trả lời trong đoạn gần từ khoá nhất. |
| Đại | (tiếng Việt) Khác cách em đang làm. Em cứ đọc tuần tự từ đầu đến cuối. |
| Linh-chị | (tiếng Việt) Sai chiến thuật. JLPT là test tốc độ, không phải test đọc kỹ. |
| Đại | (tiếng Việt) Em thử ngay. (lấy đề ra làm 30 phút) |
| Linh-chị | (tiếng Việt) Xong rồi? Em làm bài đầu mất bao lâu? |
| Đại | (tiếng Việt) 8 phút, đáp 4/5 đúng. Lần trước em mất 15 phút mới làm xong. |
| Linh-chị | (tiếng Việt) Đó! Mock 2 sẽ lên 100+. |

---

## Tình huống 7 — Lớp luyện · 18:00, Mock 2 (vượt mốc)

| Vai | Lời thoại |
|---|---|
| Đại | （Mock <ruby>2<rt>に</rt></ruby><ruby>解<rt>と</rt></ruby>く）<br>*(Làm Mock 2.)* |
| Yamada | （<ruby>1<rt>いっ</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>）ダイ<ruby>君<rt>くん</rt></ruby>、Mock <ruby>2<rt>に</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>です。<ruby>102<rt>ひゃくに</rt></ruby>/<ruby>180<rt>ひゃくはちじゅう</rt></ruby>！<br>*(Sau 1 tuần. Đại, kết quả Mock 2: 102/180!)* |
| Đại | （<ruby>嬉<rt>うれ</rt></ruby>しい）<ruby>本当<rt>ほんとう</rt></ruby>ですか！<br>*(Vui. Thật ạ!)* |
| Yamada | <ruby>14<rt>じゅうよん</rt></ruby><ruby>点<rt>てん</rt></ruby>アップ。<ruby>合格<rt>ごうかく</rt></ruby>ラインを<ruby>超<rt>こ</rt></ruby>えました。<ruby>何<rt>なに</rt></ruby>を<ruby>変<rt>か</rt></ruby>えましたか？<br>*(Tăng 14 điểm. Vượt mốc đỗ. Em đã thay đổi gì?)* |
| Đại | リン<ruby>姉<rt>ねえ</rt></ruby>さん — <ruby>名古屋<rt>なごや</rt></ruby>の<ruby>従姉<rt>いとこ</rt></ruby> — に<ruby>読解<rt>どっかい</rt></ruby>のコツを<ruby>教<rt>おし</rt></ruby>えてもらいました。<ruby>題名<rt>だいめい</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>読<rt>よ</rt></ruby>んで、<ruby>質問<rt>しつもん</rt></ruby>のキーワードを<ruby>下線<rt>かせん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>く<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(Chị Linh — chị họ ở Nagoya — chỉ em mẹo đọc hiểu. Phương pháp đọc tiêu đề trước, gạch chân từ khoá câu hỏi.)* |
| Yamada | いい<ruby>戦略<rt>せんりゃく</rt></ruby>ですね。<ruby>本番<rt>ほんばん</rt></ruby>でもそれを<ruby>使<rt>つか</rt></ruby>ってください。<br>*(Chiến lược tốt đó. Hôm thi thật cũng áp dụng nhé.)* |
| Đại | はい！<br>*(Vâng!)* |

---

## Tình huống 8 — Lớp luyện · 18:00, Mock 3 (yên tâm) + dặn dò cuối

| Vai | Lời thoại |
|---|---|
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>、Mock <ruby>3<rt>さん</rt></ruby>は<ruby>115<rt>ひゃくじゅうご</rt></ruby>/<ruby>180<rt>ひゃくはちじゅう</rt></ruby>！<br>*(Đại, Mock 3 là 115/180!)* |
| Đại | やった！<br>*(Tuyệt!)* |
| Yamada | <ruby>合格<rt>ごうかく</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>です。でも<ruby>本番<rt>ほんばん</rt></ruby>では<ruby>緊張<rt>きんちょう</rt></ruby>するから、<ruby>5<rt>ご</rt></ruby>-<ruby>10<rt>じゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>下<rt>さ</rt></ruby>がる<ruby>可能性<rt>かのうせい</rt></ruby>もあります。<br>*(Chắc đỗ. Nhưng đi thi thật sẽ căng thẳng, có thể giảm 5-10 điểm.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本番<rt>ほんばん</rt></ruby><ruby>前<rt>まえ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をすればいいですか？<br>*(Em rõ ạ. Tuần cuối trước thi em nên làm gì ạ?)* |
| Yamada | <ruby>新<rt>あたら</rt></ruby>しい<ruby>勉強<rt>べんきょう</rt></ruby>はしないでください。<ruby>復習<rt>ふくしゅう</rt></ruby>のみ。<ruby>睡眠<rt>すいみん</rt></ruby>を<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>取<rt>と</rt></ruby>ってください。<br>*(Đừng học mới. Chỉ ôn. Ngủ đủ.)* |
| Đại | はい！<ruby>10<rt>じゅっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Vâng! 10 tuần qua, cảm ơn cô rất nhiều ạ.)* |
| Yamada | <ruby>本番<rt>ほんばん</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してくださいね。<ruby>合格<rt>ごうかく</rt></ruby><ruby>祈<rt>いの</rt></ruby>っています。<br>*(Sau khi thi báo cho cô nhé. Cô cầu cho em đỗ.)* |

---

## Tình huống 9 — Phòng homestay · 21:00 đêm 30/11, Tony tặng bùa Shitennoji

| Vai | Lời thoại |
|---|---|
| Tony | （ドアをノック）ダイ<ruby>君<rt>くん</rt></ruby>、ちょっとええか？<br>*(Gõ cửa. Đại, vào chút được không?)* |
| Đại | はい、どうぞ！<br>*(Vâng, mời ạ!)* |
| Tony | <ruby>明日<rt>あした</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>やな。これ、お<ruby>守<rt>まも</rt></ruby>り。<br>*(Mai thi rồi nhỉ. Này, bùa.)* |
| Đại | （<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）え！？これは...<br>*(Nhận. Hả!? Đây là...)* |
| Tony | <ruby>四天王寺<rt>してんのうじ</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>祈願<rt>きがん</rt></ruby>のお<ruby>守<rt>まも</rt></ruby>りや。<ruby>今朝<rt>けさ</rt></ruby><ruby>俺<rt>おれ</rt></ruby>が<ruby>行<rt>い</rt></ruby>ってきた。<br>*(Bùa cầu đỗ chùa Shitennoji. Sáng nay bác đi mua.)* |
| Đại | （<ruby>涙<rt>なみだ</rt></ruby>がにじむ）<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！<br>*(Rơm rớm. Cháu cảm ơn ông thật sự!)* |
| Yumi | （<ruby>横<rt>よこ</rt></ruby>から）<ruby>明日<rt>あした</rt></ruby>のお<ruby>弁当<rt>べんとう</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>用意<rt>ようい</rt></ruby>するからね。おにぎりとお<ruby>茶<rt>ちゃ</rt></ruby>。<br>*(Từ bên cạnh. Mai 5h30 cô làm cơm trưa nhé. Cơm nắm với trà.)* |
| Đại | お<ruby>気遣<rt>きづか</rt></ruby>いいただきありがとうございます。<br>*(Cháu cảm ơn cô đã quan tâm ạ.)* |
| Tony | <ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>な。<ruby>明日<rt>あした</rt></ruby>は<ruby>頭<rt>あたま</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんやで。<br>*(Ngủ sớm đi. Mai dùng đầu nhiều đó.)* |
| Đại | はい、おやすみなさい。<br>*(Vâng, cháu chào ạ.)* |

---

## Tình huống 10 — ĐH Osaka điểm thi · 9:00 ngày 1/12, đối thoại với giám thị

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>会場<rt>かいじょう</rt></ruby><ruby>入口<rt>いりぐち</rt></ruby>に<ruby>着<rt>つ</rt></ruby>く）<br>*(Đến cổng điểm thi.)* |
| Đại | (VN, nội tâm) ĐH Osaka — sang năm anh sẽ thi vào đây. Hôm nay đứng trước cổng thi N3. |
| Giám thị | おはようございます。<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Chào buổi sáng. Cho xem phiếu dự thi.)* |
| Đại | （<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đưa phiếu. Em xin gửi.)* |
| Giám thị | グエンさんですね。<ruby>教室<rt>きょうしつ</rt></ruby>は<ruby>東館<rt>ひがしかん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>302<rt>さんまるに</rt></ruby><ruby>号室<rt>ごうしつ</rt></ruby>です。<ruby>9<rt>く</rt></ruby><ruby>時半<rt>じはん</rt></ruby>までに<ruby>着席<rt>ちゃくせき</rt></ruby>してください。<br>*(Nguyen-san nhỉ. Phòng thi: toà Đông, tầng 3, phòng 302. Hãy ngồi vào chỗ trước 9h30.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em rõ ạ. Em xin phép.)* |
| Đại | （<ruby>教室<rt>きょうしつ</rt></ruby>に<ruby>着<rt>つ</rt></ruby>く）<br>*(Đến phòng thi.)* |
| Giám thị 2 | みなさん、<ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って<ruby>鞄<rt>かばん</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<ruby>時計<rt>とけい</rt></ruby>は<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<br>*(Mọi người tắt điện thoại cho vào cặp. Đồng hồ để trên bàn.)* |
| Đại | （お<ruby>守<rt>まも</rt></ruby>りをポケットに）<br>*(Bỏ bùa vào túi.)* |
| Giám thị 2 | <ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>、<ruby>言語知識<rt>げんごちしき</rt></ruby> (<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>) <ruby>開始<rt>かいし</rt></ruby>。<br>*(9h45, bắt đầu Kiến thức ngôn ngữ (chữ-từ vựng).)* |

---

## Tình huống 11 — Trên đường về · 15:30, gọi Tuấn so đáp án

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, gọi Tuấn) Tuấn! Em ra chưa? |
| Tuấn | (tiếng Việt) Vừa ra anh. Anh thấy sao? |
| Đại | (tiếng Việt) Đọc dài bài 2 khó dã man. Anh áp dụng mẹo chị Linh — gạch chân từ khoá, may là kịp. |
| Tuấn | (tiếng Việt) Em cũng. Nghe bài 5 phần 「即時応答」 em nhầm 2 câu. |
| Đại | (tiếng Việt) Anh đoán em đỗ 100+. Đợi 2 tháng nữa biết. |
| Tuấn | (tiếng Việt) 2 tháng dài quá! |
| Đại | (tiếng Việt) Mình về thôi. Mai anh đi baito tiếp. |

---

## Tình huống 12 — Phòng homestay · 10:00 ngày 1/2/2025, mở kết quả online

| Vai | Lời thoại |
|---|---|
| Đại | (VN, nội tâm, một mình trong phòng) 10h sáng, web JLPT mở kết quả. Tim đập mạnh. |
| Đại | （ログイン）<br>*(Đăng nhập.)* |
| Đại | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>合格<rt>ごうかく</rt></ruby>！<ruby>言語知識<rt>げんごちしき</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby><ruby>35<rt>さんじゅうご</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>35<rt>さんじゅうご</rt></ruby> = <ruby>110<rt>ひゃくじゅう</rt></ruby>/<ruby>180<rt>ひゃくはちじゅう</rt></ruby>！<br>*(Nhìn màn hình. Đỗ! 40+35+35 = 110/180!)* |
| Đại | （<ruby>叫<rt>さけ</rt></ruby>ぶ）やったー！<br>*(Hét lên. Tuyệt!)* |
| Yumi | （<ruby>下<rt>した</rt></ruby>から）どうした？<br>*(Dưới nhà. Sao thế?)* |
| Đại | （<ruby>階段<rt>かいだん</rt></ruby>を<ruby>下<rt>お</rt></ruby>りる）<ruby>合格<rt>ごうかく</rt></ruby>しました！N3<ruby>合格<rt>ごうかく</rt></ruby>！<br>*(Chạy xuống cầu thang. Cháu đỗ rồi! Đỗ N3!)* |
| Yumi | (cười rạng rỡ) おめでとう！トニーさん、ダイ<ruby>君<rt>くん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>よ！<br>*(Chúc mừng! Tony, Đại đỗ rồi!)* |
| Tony | （<ruby>居間<rt>いま</rt></ruby>から）よっしゃ！<ruby>四天王寺<rt>してんのうじ</rt></ruby>のお<ruby>守<rt>まも</rt></ruby>り、<ruby>効<rt>き</rt></ruby>いたな！<br>*(Phòng khách. Tuyệt! Bùa Shitennoji linh nhỉ!)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました！<br>*(Cháu thật sự được cô chú giúp đỡ rất nhiều ạ!)* |

---

## Tình huống 13 — Cảnh tiếng Việt · 11:00 cùng ngày, gọi mẹ + Mai báo tin

> Cảnh tiếng Việt — Đại vừa báo Tony Yumi xong, lập tức gọi video về VN.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi! Mai ơi! Con/anh đỗ N3 rồi! |
| Mẹ Đại | (tiếng Việt) Trời! Đỗ thật rồi! Bao nhiêu điểm con? |
| Đại | (tiếng Việt) 110/180. Đỗ vừa đủ 15 điểm trên mốc. |
| Mai | (tiếng Việt) Anh giỏi quá! Em biết là anh sẽ đỗ mà. |
| Đại | (tiếng Việt) Mai biết không, Tony bác hôm trước đi tận chùa Shitennoji mua bùa cầu đỗ cho anh. Yumi cô sáng hôm thi dậy 5h30 làm cơm nắm. |
| Mẹ Đại | (tiếng Việt) Trời ơi, cô chú tốt quá. Bao giờ mẹ qua mẹ phải cảm ơn. |
| Đại | (tiếng Việt) Còn chị Linh ở Nagoya — chị họ con đó — chị xuống Osaka kèm con một ngày, dạy mẹo đọc hiểu. Không có chị chắc con trượt. |
| Mẹ Đại | (tiếng Việt) Mẹ sẽ gọi cảm ơn dì Hạnh. |
| Mai | (tiếng Việt) Anh ơi, kế hoạch tiếp theo là gì? |
| Đại | (tiếng Việt) N2 tháng 7/2025. Sau đó tháng 1/2026 thi vào ĐH Osaka, khoa CS. |
| Mai | (tiếng Việt) Em vẫn đợi anh. Sang 2027 em sang. |
| Đại | (tiếng Việt) Ừ. Anh sẽ giữ lời. |
| Mẹ Đại | (tiếng Việt) Đại, con sang một mình, mẹ lo. Nhưng giờ thấy con có Tony, Yumi, Linh, Tuấn — mẹ yên tâm rồi. |
| Đại | (tiếng Việt) Cảm ơn mẹ. Cảm ơn em Mai. |

---

## Đọng lại chương 8

Đại kết thúc năm 1 du học bằng thành tích N3 110/180 — 8 tháng từ N4. Trải qua 10 tuần lớp luyện tăng cường của Yamada-sensei, lập nhóm học với Tuấn (Anki 100 từ/ngày), nhờ chị Linh-Nagoya kèm chiến thuật đọc hiểu 3 bước. Học được **mẫu đăng ký thi** (受験希望者・申し込みます), **mẫu thanh toán konbini** (払込票番号での支払い), **mẫu nhận điểm yếu** (申し訳ありません・改善点はありますか・具体的な対策を教えていただけませんか), **mẫu nhờ giúp đỡ** (〜を教えていただけませんか・お世話になりました), **mẫu cảm ơn trang trọng** (本当にお世話になりました・お気遣いいただきありがとうございます), **mẫu đối thoại giám thị** (受験票を見せてください・着席してください), **mẫu báo tin** (合格しました・〜点でした). Bonus học định dạng JLPT N3 chính thức (文字語彙30分・文法読解70分・聴解40分) + chiến thuật đọc nhanh + lộ trình tiếp theo N2 → ĐH Osaka.

> Từ vựng & mẫu câu chương này: 受験希望者・受験票・受験料・払込票番号・集中プログラム・文字語彙・文法・読解・聴解・模擬試験・合格基準・不合格・弱点発見・長文苦手・改善点・対策・朝日小学生新聞・キーワード下線・合格祈願お守り・四天王寺・着席・電源を切る・即時応答・〜していただけませんか・お世話になりました・お気遣いいただきありがとうございます・申し訳ありません・合格しました・110点・言語知識

## Bí quyết chương

- **Lịch học 10 tuần**: Chia 文字語彙 → 文法 → 読解 → 聴解 + 3 Mock — chuẩn lớp luyện trường tiếng.
- **Đăng ký kentei thực tế**: Form online → mã thanh toán → ra Lawson trả 6500 yên. Pattern thực tế năm 2024.
- **Mock 1 trượt → 3 đỗ**: Đường cong học khả thi nhờ phản hồi + thay đổi chiến lược.
- **Chị Linh-Nagoya cameo**: Cameo nối series 14 (Thái Aichi) — gia đình lớn người Việt ở Nhật hỗ trợ nhau.
- **Chiến thuật đọc 3 bước**: Mẹo thực dụng — tiêu đề trước → gạch chân từ khoá → tìm gần từ khoá.
- **Tony tặng bùa Shitennoji**: Homestay vào vai cha mẹ — cảm xúc thực.
- **Yumi onigiri 5h30**: Chi tiết homestay Nhật — sự quan tâm thầm lặng.
- **Thi tại ĐH Osaka**: Biểu tượng — Đại đứng trước cổng nơi sang năm sẽ thi vào.
- **110/180 đỗ vừa đủ 15 điểm**: Thực tế, không phải điểm cao chót vót.
- **Mạng lưới VN+JP**: Mẹ, Mai, chị Linh, Tuấn, Tony, Yumi, Yamada — cả đội cùng đưa Đại qua N3.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 受験 | じゅけん | THỤ NGHIỆM | Dự thi |
| 希望者 | きぼうしゃ | HY VỌNG GIẢ | Người có nguyện vọng |
| 集中プログラム | しゅうちゅうプログラム | TẬP TRUNG | Chương trình tăng cường |
| 開講 | かいこう | KHAI GIẢNG | Mở lớp |
| 教材 | きょうざい | GIÁO TÀI | Giáo trình |
| 申し込む | もうしこむ | THÂN ÁP | Đăng ký |
| 文字語彙 | もじごい | VĂN TỰ NGỮ VỰNG | Chữ-từ vựng |
| 聴解 | ちょうかい | THÍNH GIẢI | Nghe hiểu |
| 模擬試験 | もぎしけん | MÔ NGHĨ THÍ NGHIỆM | Thi mô phỏng |
| 払込票 | はらいこみひょう | BÁT ĐỒNG PHIẾU | Phiếu thanh toán |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | Lệ phí thi |
| 入力 | にゅうりょく | NHẬP LỰC | Nhập liệu |
| 領収書 | りょうしゅうしょ | LÃNH THU THƯ | Biên lai |
| 当日 | とうじつ | ĐƯƠNG NHẬT | Ngày đó (ngày thi) |
| 祈る | いのる | KỲ | Cầu nguyện |
| 戦略 | せんりゃく | CHIẾN LƯỢC | Chiến lược |
| 形式 | けいしき | HÌNH THỨC | Định dạng |
| 解く | とく | GIẢI | Giải |
| 合格基準 | ごうかくきじゅん | HỢP CÁCH CƠ CHUẨN | Mức đỗ |
| 残念 | ざんねん | TÀN NIỆM | Tiếc nuối |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | Trượt |
| 謝る | あやまる | TẠ | Xin lỗi |
| 弱点 | じゃくてん | NHƯỢC ĐIỂM | Điểm yếu |
| 発見 | はっけん | PHÁT KIẾN | Phát hiện |
| 長文 | ちょうぶん | TRƯỜNG VĂN | Bài đọc dài |
| 苦手 | にがて | KHỔ THỦ | Yếu, không hợp |
| 対策 | たいさく | ĐỐI SÁCH | Đối sách |
| 小学生新聞 | しょうがくせいしんぶん | TIỂU HỌC SINH TÂN VĂN | Báo tiểu học |
| 従姉 | いとこ | TÔNG | Chị họ |
| 題名 | だいめい | ĐỀ DANH | Tiêu đề |
| 下線 | かせん | HẠ TUYẾN | Gạch dưới |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 確実 | かくじつ | XÁC THỰC | Chắc chắn |
| 復習 | ふくしゅう | PHỤC TẬP | Ôn tập |
| 睡眠 | すいみん | THUỴ MIÊN | Giấc ngủ |
| 十分 | じゅうぶん | THẬP PHẦN | Đầy đủ |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 祈願 | きがん | KỲ NGUYỆN | Cầu nguyện |
| 涙 | なみだ | LỆ | Nước mắt |
| 気遣い | きづかい | KHÍ KHIỂN | Sự quan tâm |
| 会場 | かいじょう | HỘI TRƯỜNG | Hội trường, điểm thi |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | Phiếu dự thi |
| 教室 | きょうしつ | GIÁO THẤT | Phòng học |
| 着席 | ちゃくせき | TRƯỚC TỊCH | Vào chỗ ngồi |
| 電源 | でんげん | ĐIỆN NGUYÊN | Nguồn điện |
| 鞄 | かばん | BAO | Cặp, túi xách |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | Kiến thức ngôn ngữ |
| 即時応答 | そくじおうとう | TỨC THỜI ỨNG ĐÁP | Đáp ứng tức thời |
| 画面 | がめん | HOẠ DIỆN | Màn hình |
| 叫ぶ | さけぶ | KHIẾU | Hét lên |
| 階段 | かいだん | GIAI ĐOẠN | Cầu thang |
| 居間 | いま | CƯ GIAN | Phòng khách |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000009, 800000019, NULL, 'markdown_book', 'T9. 京都遠足 — Kinkaku-ji + Fushimi Inari (京都遠足)', '# Sách du học sinh tiếng Nhật · T9. 京都遠足 — Kinkaku-ji + Fushimi Inari (京都遠足)

> **Mục tiêu nhân vật:** Đại (19 tuổi, du học sinh năm 1 trường tiếng Kansai Gogo Gakuin, 11/2024). Học các mẫu hội thoại tiếng Nhật trong **遠足 (school trip)** một ngày Kyoto: nghe **しおり (schedule)** từ sensei và hỏi lại khi chưa rõ giờ giấc (もう一度お願いします), trả lời câu hỏi văn hoá theo công thức 〜と申します・〜だそうです, gọi món ở quán truyền thống (〜を〜つお願いします), hỏi đường khi lạc (〜はどちらですか), khen ngợi cảnh vật với 美しい・素晴らしい・感動しました, và chia sẻ cảm tưởng cuối ngày bằng 〜と思いました.

---

## Bối cảnh

Tháng 11/2024. Trường Kansai Gogo Gakuin tổ chức **遠足** Kyoto một ngày cho 40 học viên class B+C. Đại sang Osaka đã 7 tháng, đây là lần đầu rời Osaka. Yamada-sensei dẫn đoàn, bus 8h Tennoji → Kyoto. Lịch trình 5 điểm: Kinkaku-ji → Ryoan-ji → Nishiki Market → Fushimi Inari → Kiyomizu-dera. Đi cùng có Linh (VN), Tuấn (VN), Yifan (TQ), Sumi (Hàn Quốc), Aung (Myanmar). Chương này tập trung các mẫu câu **nghe lịch trình・hỏi đường・gọi món・khen cảnh・viết cảm tưởng**.

---

## Tình huống 1 — Quảng trường Tennoji · 7:30, nghe sensei phổ biến しおり

*Đại đến điểm tập trung trước cửa Tennoji station, được phát tờ しおり (sách hướng dẫn) in lịch trình.*

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、おはようございます！<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>京都<rt>きょうと</rt></ruby><ruby>遠足<rt>えんそく</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người chào buổi sáng! Hôm nay chuyến đi Kyoto, mong mọi người hợp tác.)* |
| Đại + nhóm | おはようございます！<br>*(Chào ạ!)* |
| Yamada | お<ruby>手元<rt>てもと</rt></ruby>のしおりを<ruby>見<rt>み</rt></ruby>てください。<ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>出発<rt>しゅっぱつ</rt></ruby>、<ruby>9<rt>く</rt></ruby><ruby>時半<rt>じはん</rt></ruby><ruby>金閣寺<rt>きんかくじ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>です。<br>*(Mời nhìn tờ hướng dẫn trên tay. 8h xuất phát, 9h30 đến Kinkaku-ji.)* |
| Đại | すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>金閣寺<rt>きんかくじ</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>からですか？<br>*(Xin lỗi cô, nhắc lại giúp em. Kinkaku-ji là từ mấy giờ ạ?)* |
| Yamada | <ruby>9<rt>く</rt></ruby><ruby>時半<rt>じはん</rt></ruby>から<ruby>10<rt>じゅう</rt></ruby><ruby>時半<rt>じはん</rt></ruby>までです。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>自由<rt>じゆう</rt></ruby><ruby>見学<rt>けんがく</rt></ruby>。<br>*(Từ 9h30 đến 10h30. Một tiếng tự do tham quan.)* |
| Đại | はい、<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Vâng, em hiểu rồi. Em cảm ơn cô.)* |
| Yamada | <ruby>集合<rt>しゅうごう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>に<ruby>遅<rt>おく</rt></ruby>れないでください。<ruby>18<rt>じゅうはち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>大阪<rt>おおさか</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Đừng trễ giờ tập trung. 18h về lại Osaka.)* |

---

## Tình huống 2 — Bus số 1 hàng ghế giữa · 8:30, Đại tâm sự với Linh và Tuấn

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Anh Đại, em đến Nhật 5 tháng mà chưa ra khỏi Osaka lần nào. |
| Đại | (tiếng Việt) Anh cũng vậy. 7 tháng rồi mà cứ Lawson với trường. |
| Tuấn | (tiếng Việt) Em đi Kyoto một lần với host family hồi tháng 8 rồi. |
| Đại | (tiếng Việt) Khác Osaka nhiều không em? |
| Tuấn | (tiếng Việt) Khác hẳn. Kyoto chùa nhiều, đường nhỏ, người đi chậm. Osaka thì ồn ào, ăn uống là chính. |
| Linh | (tiếng Việt) Em mong Kinkaku-ji nhất. Trên Instagram thấy vàng óng. |
| Đại | (tiếng Việt) Anh thì tò mò Fushimi Inari. Mai gửi LINE bảo nhớ chụp cổng torii cho cô ấy xem. |

---

## Tình huống 3 — Sân chính Kinkaku-ji · 9:35, Yamada giảng lịch sử

*Đoàn 40 người đứng trước hồ Kyōko-chi, gác vàng phản chiếu xuống mặt nước. Yamada gọi nhóm lại nghe giải thích.*

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、ここが<ruby>金閣寺<rt>きんかくじ</rt></ruby>です。<ruby>正式<rt>せいしき</rt></ruby><ruby>名前<rt>なまえ</rt></ruby>は<ruby>鹿苑寺<rt>ろくおんじ</rt></ruby>です。<br>*(Mọi người, đây là Kinkaku-ji. Tên chính thức là Rokuon-ji.)* |
| Đại | わあ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>金<rt>きん</rt></ruby><ruby>色<rt>いろ</rt></ruby>ですね！<br>*(Wao, đúng là vàng thật rồi!)* |
| Yamada | <ruby>1397<rt>せんさんびゃくきゅうじゅうしち</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>足利義満<rt>あしかがよしみつ</rt></ruby><ruby>将軍<rt>しょうぐん</rt></ruby>の<ruby>別荘<rt>べっそう</rt></ruby>として<ruby>建<rt>た</rt></ruby>てられました。<br>*(Được xây năm 1397 làm biệt thự cho tướng quân Ashikaga Yoshimitsu.)* |
| Yifan | <ruby>金箔<rt>きんぱく</rt></ruby>は<ruby>本物<rt>ほんもの</rt></ruby>ですか？<br>*(Vàng lá là vàng thật ạ?)* |
| Yamada | はい、<ruby>本物<rt>ほんもの</rt></ruby>です。<ruby>20<rt>にじゅっ</rt></ruby>キロの<ruby>金箔<rt>きんぱく</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っているそうです。<br>*(Vâng, thật đấy. Nghe nói dùng 20kg vàng lá.)* |
| Đại | すごいですね…<ruby>池<rt>いけ</rt></ruby>に<ruby>映<rt>うつ</rt></ruby>る<ruby>姿<rt>すがた</rt></ruby>も<ruby>美<rt>うつく</rt></ruby>しいです。<br>*(Tuyệt quá ạ… Hình phản chiếu xuống hồ cũng đẹp ạ.)* |
| Sumi | <ruby>写真<rt>しゃしん</rt></ruby>を<ruby>一枚<rt>いちまい</rt></ruby><ruby>撮<rt>と</rt></ruby>ってもいいですか？<br>*(Em chụp một tấm ảnh được không ạ?)* |
| Yamada | もちろんです。フラッシュは<ruby>使<rt>つか</rt></ruby>わないでください。<br>*(Tất nhiên. Đừng dùng đèn flash nhé.)* |

---

## Tình huống 4 — Ryoan-ji vườn đá · 11:05, hỏi về 枯山水

*Đoàn ngồi trên hành lang gỗ phía trước vườn đá. Yamada nói khẽ vì chùa thiền yên tĩnh.*

| Vai | Lời thoại |
|---|---|
| Yamada | これは<ruby>枯山水<rt>かれさんすい</rt></ruby>といいます。<ruby>水<rt>みず</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わない<ruby>日本<rt>にほん</rt></ruby><ruby>庭園<rt>ていえん</rt></ruby>です。<br>*(Cái này gọi là karesansui. Là vườn Nhật không dùng nước.)* |
| Đại | すみません、「<ruby>枯山水<rt>かれさんすい</rt></ruby>」というのは？<br>*(Xin lỗi cô, "karesansui" là gì ạ?)* |
| Yamada | <ruby>砂<rt>すな</rt></ruby>と<ruby>石<rt>いし</rt></ruby>だけで<ruby>海<rt>うみ</rt></ruby>と<ruby>山<rt>やま</rt></ruby>を<ruby>表現<rt>ひょうげん</rt></ruby>する<ruby>庭<rt>にわ</rt></ruby>のことです。<br>*(Là kiểu vườn chỉ dùng cát và đá để biểu hiện biển và núi.)* |
| Đại | なるほど、<ruby>砂<rt>すな</rt></ruby>が<ruby>海<rt>うみ</rt></ruby>で、<ruby>石<rt>いし</rt></ruby>が<ruby>山<rt>やま</rt></ruby>ですね。<br>*(Em hiểu rồi. Cát là biển, đá là núi đúng không ạ.)* |
| Aung | <ruby>石<rt>いし</rt></ruby>はいくつありますか？<br>*(Có bao nhiêu hòn đá ạ?)* |
| Yamada | <ruby>15<rt>じゅうご</rt></ruby><ruby>個<rt>こ</rt></ruby>あります。でも、どこから<ruby>見<rt>み</rt></ruby>ても<ruby>14<rt>じゅうよん</rt></ruby><ruby>個<rt>こ</rt></ruby>しか<ruby>見<rt>み</rt></ruby>えないんです。<br>*(Có 15 hòn. Nhưng nhìn từ góc nào cũng chỉ thấy 14 hòn thôi.)* |
| Đại | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか？<br>*(Ơ, thật vậy ạ?)* |
| Yamada | <ruby>不完全<rt>ふかんぜん</rt></ruby>が<ruby>仏教<rt>ぶっきょう</rt></ruby>の<ruby>哲学<rt>てつがく</rt></ruby>だそうです。<br>*(Nghe nói "bất toàn" chính là triết học Phật giáo.)* |
| Đại | (đứng dậy đi lại đếm) <ruby>確<rt>たし</rt></ruby>かに<ruby>14<rt>じゅうよん</rt></ruby><ruby>個<rt>こ</rt></ruby>しか<ruby>見<rt>み</rt></ruby>えません！<br>*(Đúng thật, chỉ thấy 14 hòn thôi ạ!)* |

---

## Tình huống 5 — Trên bus rời Ryoan-ji · 11:50, Đại nhắn LINE Mai

*Đại lấy điện thoại nhắn Mai về vườn đá vừa xem. Mai trả lời ngay từ Hà Nội.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE, tiếng Việt) Mai, anh vừa thấy vườn đá Ryoan-ji. 15 hòn đá mà nhìn góc nào cũng chỉ thấy 14. |
| Mai | (LINE, tiếng Việt) Hay quá! Em đọc trên Wikipedia rồi. Họ bảo đó là triết "bất toàn" của Phật giáo Thiền. |
| Đại | (LINE, tiếng Việt) Đúng rồi đó. Yamada-sensei vừa giảng "fukanzen" — không hoàn hảo. Em đoán trúng phóc. |
| Mai | (LINE, tiếng Việt) Sao mà em không trúng được. Em đang ôn cho kỳ thi giữa kỳ đây. Anh chụp một cái cổng torii ở Fushimi cho em với nhé. |
| Đại | (LINE, tiếng Việt) Ok. Chiều 14h30 đến đó. Anh sẽ chụp dọc cả đường 1000 cổng. |
| Mai | (LINE, tiếng Việt) Cảm ơn anh. Tối em đi học về sẽ xem ảnh. Ăn trưa ngon nhé! |

---

## Tình huống 6 — Nishiki Market lối vào · 12:30, hỏi sensei chỗ tập trung

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>錦市場<rt>にしきいちば</rt></ruby>です。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>台所<rt>だいどころ</rt></ruby>と<ruby>呼<rt>よ</rt></ruby>ばれています。<br>*(Đây là chợ Nishiki. Được gọi là "bếp của Kyoto".)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>集合<rt>しゅうごう</rt></ruby><ruby>場所<rt>ばしょ</rt></ruby>はどこですか？<br>*(Cô ơi, chỗ tập trung là đâu ạ?)* |
| Yamada | <ruby>13<rt>じゅうさん</rt></ruby><ruby>時半<rt>じはん</rt></ruby>に<ruby>東<rt>ひがし</rt></ruby><ruby>入口<rt>いりぐち</rt></ruby>です。<ruby>遅<rt>おく</rt></ruby>れないでください。<br>*(13h30 ở cổng phía Đông. Đừng trễ nhé.)* |
| Đại | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>昼食<rt>ちゅうしょく</rt></ruby>は<ruby>各自<rt>かくじ</rt></ruby>ですか？<br>*(Vâng em rõ. Bữa trưa tự do ạ?)* |
| Yamada | はい、<ruby>各自<rt>かくじ</rt></ruby>で<ruby>食<rt>た</rt></ruby>べてください。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>名物<rt>めいぶつ</rt></ruby>は<ruby>湯豆腐<rt>ゆどうふ</rt></ruby>ですよ。<br>*(Vâng, mỗi em tự ăn. Đặc sản Kyoto là yu-doufu đấy.)* |
| Yifan | ダイさん、<ruby>湯豆腐<rt>ゆどうふ</rt></ruby><ruby>食<rt>た</rt></ruby>べに<ruby>行<rt>い</rt></ruby>きませんか？<br>*(Đại ơi, mình đi ăn yu-doufu không?)* |
| Đại | いいですね、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。リンさんとトゥアン<ruby>君<rt>くん</rt></ruby>も。<br>*(Hay đấy, cùng đi nhé. Cả Linh và Tuấn nữa.)* |

---

## Tình huống 7 — Quán yu-doufu Nishiki · 12:50, gọi món set lunch

*Quán nhỏ trong ngõ Nishiki, có 6 chỗ. Bà chủ tầm 60 tuổi, mặc tạp dề.*

| Vai | Lời thoại |
|---|---|
| Bà chủ | いらっしゃいませ！<ruby>何<rt>なん</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>ですか？<br>*(Quý khách. Mấy vị ạ?)* |
| Đại | <ruby>4<rt>よん</rt></ruby><ruby>名<rt>めい</rt></ruby>です。<ruby>湯豆腐<rt>ゆどうふ</rt></ruby><ruby>定食<rt>ていしょく</rt></ruby>を<ruby>4<rt>よっ</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(4 người ạ. Cho 4 set yu-doufu ạ.)* |
| Bà chủ | はい、<ruby>湯豆腐<rt>ゆどうふ</rt></ruby><ruby>定食<rt>ていしょく</rt></ruby><ruby>4<rt>よっ</rt></ruby>つですね。<ruby>1<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>1100<rt>せんひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Vâng, 4 set yu-doufu. 1100 yên một suất.)* |
| Tuấn | (tiếng Việt) Đắt thật. Mua 5 bữa Lawson được. |
| Đại | (tiếng Việt) Kyoto giá du khách mà. Năm mới một lần. |
| Bà chủ | (sau 10 phút mang ra) お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>水<rt>みず</rt></ruby>で<ruby>作<rt>つく</rt></ruby>った<ruby>豆腐<rt>とうふ</rt></ruby>です。<br>*(Xin lỗi đã để chờ. Đậu hũ làm bằng nước Kyoto đấy.)* |
| Đại | （<ruby>食<rt>た</rt></ruby>べる）うわ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>柔<rt>やわ</rt></ruby>らかい！<ruby>美味<rt>おい</rt></ruby>しいです！<br>*(Ăn. Wao, mềm thật! Ngon ạ!)* |
| Yifan | <ruby>京都<rt>きょうと</rt></ruby>の<ruby>水<rt>みず</rt></ruby>は<ruby>軟水<rt>なんすい</rt></ruby>だから、<ruby>豆腐<rt>とうふ</rt></ruby>が<ruby>美味<rt>おい</rt></ruby>しくなるそうです。<br>*(Nước Kyoto là nước mềm nên đậu hũ ngon.)* |
| Bà chủ | お<ruby>口<rt>くち</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いましたか？<br>*(Có hợp khẩu vị không ạ?)* |
| Đại | はい、とても<ruby>美味<rt>おい</rt></ruby>しかったです。ごちそうさまでした！<br>*(Vâng, rất ngon ạ. Cảm ơn về bữa ăn!)* |

---

## Tình huống 8 — Cổng đầu Senbon-torii Fushimi · 14:35, đứng dưới rừng cổng đỏ

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>伏見稲荷大社<rt>ふしみいなりたいしゃ</rt></ruby>です。<ruby>千本鳥居<rt>せんぼんとりい</rt></ruby>で<ruby>有名<rt>ゆうめい</rt></ruby>です。<br>*(Đền Fushimi Inari Taisha. Nổi tiếng với "ngàn cổng torii".)* |
| Đại | わあ、<ruby>赤<rt>あか</rt></ruby>い<ruby>鳥居<rt>とりい</rt></ruby>がたくさんありますね。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>千本<rt>せんぼん</rt></ruby>ですか？<br>*(Wao, nhiều cổng torii đỏ quá. Có đúng một ngàn cổng không ạ?)* |
| Yamada | <ruby>実際<rt>じっさい</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>あるそうですよ。<br>*(Thực ra hơn 10 ngàn cổng đấy.)* |
| Aung | え、<ruby>1<rt>いち</rt></ruby><ruby>万本<rt>まんぼん</rt></ruby>！？<ruby>誰<rt>だれ</rt></ruby>が<ruby>建<rt>た</rt></ruby>てましたか？<br>*(Ơ, 10 ngàn cổng!? Ai dựng vậy ạ?)* |
| Yamada | <ruby>企業<rt>きぎょう</rt></ruby>や<ruby>個人<rt>こじん</rt></ruby>が<ruby>商売<rt>しょうばい</rt></ruby><ruby>繁盛<rt>はんじょう</rt></ruby>を<ruby>祈<rt>いの</rt></ruby>って<ruby>奉納<rt>ほうのう</rt></ruby>したものです。<br>*(Doanh nghiệp và cá nhân dâng cúng cầu cho làm ăn phát đạt.)* |
| Đại | <ruby>稲荷<rt>いなり</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>狐<rt>きつね</rt></ruby>の<ruby>神様<rt>かみさま</rt></ruby>ですよね？<br>*(Thần Inari là thần cáo đúng không ạ?)* |
| Yamada | そうです。<ruby>稲<rt>いね</rt></ruby>と<ruby>商売<rt>しょうばい</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>神様<rt>かみさま</rt></ruby>です。よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。<br>*(Đúng vậy. Là thần bảo hộ lúa và buôn bán. Em nhớ tốt đấy.)* |
| Đại | <ruby>頂上<rt>ちょうじょう</rt></ruby>まで<ruby>登<rt>のぼ</rt></ruby>れますか？<br>*(Có thể leo lên đỉnh không ạ?)* |
| Yamada | <ruby>頂上<rt>ちょうじょう</rt></ruby>まで<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>かかります。<ruby>今日<rt>きょう</rt></ruby>は<ruby>中腹<rt>ちゅうふく</rt></ruby>まで、<ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>だけです。<br>*(Lên đỉnh mất 2 tiếng. Hôm nay đến lưng chừng thôi, 40 phút.)* |

---

## Tình huống 9 — Giữa rừng torii · 15:00, Đại bị lạc và hỏi đường khách Nhật

*Đại mải chụp ảnh nên rời nhóm. Quay lại không thấy ai. Hỏi một bà cụ Nhật đi ngược chiều.*

| Vai | Lời thoại |
|---|---|
| Đại | すみません、ちょっとお<ruby>伺<rt>うかが</rt></ruby>いします。<ruby>本殿<rt>ほんでん</rt></ruby>はどちらですか？<br>*(Xin lỗi cho hỏi. Chánh điện ở phía nào ạ?)* |
| Bà cụ | <ruby>本殿<rt>ほんでん</rt></ruby>は<ruby>下<rt>した</rt></ruby>のほうですよ。この<ruby>鳥居<rt>とりい</rt></ruby>をまっすぐ<ruby>降<rt>お</rt></ruby>りてください。<br>*(Chánh điện ở phía dưới. Đi thẳng xuống dọc theo cổng torii này.)* |
| Đại | <ruby>右<rt>みぎ</rt></ruby>と<ruby>左<rt>ひだり</rt></ruby>、どちらの<ruby>道<rt>みち</rt></ruby>ですか？<br>*(Đường bên phải hay bên trái ạ?)* |
| Bà cụ | <ruby>降<rt>お</rt></ruby>りる<ruby>時<rt>とき</rt></ruby>は<ruby>左側<rt>ひだりがわ</rt></ruby>です。<ruby>右側<rt>みぎがわ</rt></ruby>は<ruby>登<rt>のぼ</rt></ruby>る<ruby>人<rt>ひと</rt></ruby><ruby>用<rt>よう</rt></ruby>です。<br>*(Khi xuống thì đi bên trái. Bên phải là cho người leo lên.)* |
| Đại | なるほど。<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ぐらいで<ruby>着<rt>つ</rt></ruby>きますか？<br>*(Em hiểu rồi. Khoảng 5 phút đến nơi ạ?)* |
| Bà cụ | はい、<ruby>5<rt>ご</rt></ruby>〜<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ですね。<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Vâng, 5~10 phút. Đi cẩn thận nhé.)* |
| Đại | ありがとうございました！(cúi chào)<br>*(Cháu cảm ơn ạ!)* |

---

## Tình huống 10 — Bến tập trung Fushimi · 15:30, Yamada điểm danh

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>集合<rt>しゅうごう</rt></ruby>してください。<ruby>点呼<rt>てんこ</rt></ruby>します。<br>*(Mọi người tập trung. Tôi điểm danh.)* |
| Đại | （<ruby>息<rt>いき</rt></ruby><ruby>切<rt>き</rt></ruby>らして）<ruby>遅<rt>おく</rt></ruby>れてすみません！<br>*(Thở dốc. Em xin lỗi đến muộn!)* |
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<ruby>迷<rt>まよ</rt></ruby>いましたか？<br>*(Đại, em ổn không? Bị lạc à?)* |
| Đại | はい、<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>っていて、グループから<ruby>離<rt>はな</rt></ruby>れてしまいました。<br>*(Vâng, em mải chụp ảnh nên rời nhóm.)* |
| Yamada | <ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけてください。<ruby>道<rt>みち</rt></ruby>を<ruby>聞<rt>き</rt></ruby>けましたか？<br>*(Lần sau cẩn thận nhé. Em hỏi đường được không?)* |
| Đại | はい、おばあさんに<ruby>聞<rt>き</rt></ruby>いて、<ruby>本殿<rt>ほんでん</rt></ruby>まで<ruby>戻<rt>もど</rt></ruby>れました。<br>*(Vâng, em hỏi một bà cụ rồi quay về chánh điện được ạ.)* |
| Yamada | よくできました。<ruby>道<rt>みち</rt></ruby>を<ruby>聞<rt>き</rt></ruby>くのも<ruby>勉強<rt>べんきょう</rt></ruby>ですね。<br>*(Em giỏi đấy. Hỏi đường cũng là học mà.)* |

---

## Tình huống 11 — Sân Kiyomizu-dera · 16:35, đứng trên 舞台 ngắm Kyoto

*Sân gỗ Kiyomizu nhô ra khỏi vách núi, nhìn xuống thành phố Kyoto. Lá phong đầu mùa đỏ rực.*

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>清水<rt>きよみず</rt></ruby>の<ruby>舞台<rt>ぶたい</rt></ruby>です。<ruby>高<rt>たか</rt></ruby>さ<ruby>13<rt>じゅうさん</rt></ruby>メートル、<ruby>釘<rt>くぎ</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>も<ruby>使<rt>つか</rt></ruby>っていません。<br>*(Sân Kiyomizu. Cao 13 mét, không dùng một cây đinh nào.)* |
| Đại | え、<ruby>釘<rt>くぎ</rt></ruby>なしですか？すごい<ruby>建築<rt>けんちく</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>ですね。<br>*(Ơ, không dùng đinh ạ? Kỹ thuật kiến trúc tuyệt vời quá.)* |
| Yamada | <ruby>木組<rt>きぐみ</rt></ruby>という<ruby>技法<rt>ぎほう</rt></ruby>です。<ruby>1633<rt>せんろっぴゃくさんじゅうさん</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>建<rt>た</rt></ruby>てられて、<ruby>400<rt>よんひゃく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>立<rt>た</rt></ruby>っています。<br>*(Kỹ thuật ghép gỗ "kigumi". Xây năm 1633, đứng vững 400 năm.)* |
| Linh | (tiếng Việt) Em sợ độ cao… nhưng cảnh đẹp quá. |
| Đại | (tiếng Việt) Cứ đứng giữa thôi, ngắm Kyoto từ đây. Đẹp như tranh thuỷ mặc. |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、あの<ruby>下<rt>した</rt></ruby>の<ruby>滝<rt>たき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Cô ơi, dòng thác phía dưới là gì ạ?)* |
| Yamada | <ruby>音羽<rt>おとわ</rt></ruby>の<ruby>滝<rt>たき</rt></ruby>です。<ruby>3<rt>みっ</rt></ruby><ruby>本<rt>ぼん</rt></ruby>の<ruby>水<rt>みず</rt></ruby>があって、<ruby>恋愛<rt>れんあい</rt></ruby>・<ruby>学業<rt>がくぎょう</rt></ruby>・<ruby>長寿<rt>ちょうじゅ</rt></ruby>を<ruby>意味<rt>いみ</rt></ruby>します。<br>*(Thác Otowa. Có 3 dòng nước, tượng trưng cho tình yêu, học hành, trường thọ.)* |
| Yamada | でも<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>しか<ruby>飲<rt>の</rt></ruby>んではいけません。<ruby>欲張<rt>よくば</rt></ruby>ると<ruby>願<rt>ねが</rt></ruby>いが<ruby>叶<rt>かな</rt></ruby>わないそうです。<br>*(Nhưng chỉ được uống một dòng. Tham là không thành đâu.)* |
| Đại | <ruby>学業<rt>がくぎょう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>びます！<ruby>来年<rt>らいねん</rt></ruby>EJUに<ruby>合格<rt>ごうかく</rt></ruby>したいですから。<br>*(Em chọn học hành! Vì sang năm em muốn đỗ EJU.)* |

---

## Tình huống 12 — Quầy lưu niệm Kiyomizu · 17:00, mua お守り cho Mai

| Vai | Lời thoại |
|---|---|
| Đại | すみません、お<ruby>守<rt>まも</rt></ruby>りはどこですか？<br>*(Xin lỗi, bùa hộ mệnh ở đâu ạ?)* |
| Nhân viên | こちらです。<ruby>恋愛<rt>れんあい</rt></ruby>、<ruby>学業<rt>がくぎょう</rt></ruby>、<ruby>健康<rt>けんこう</rt></ruby>、いろいろあります。<br>*(Ở đây ạ. Có nhiều loại: tình yêu, học hành, sức khoẻ.)* |
| Đại | <ruby>恋愛<rt>れんあい</rt></ruby>の<ruby>御守<rt>おまも</rt></ruby>りを<ruby>1<rt>ひと</rt></ruby>つ、<ruby>学業<rt>がくぎょう</rt></ruby>の<ruby>御守<rt>おまも</rt></ruby>りを<ruby>1<rt>ひと</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho em một bùa tình yêu, một bùa học hành ạ.)* |
| Nhân viên | はい、<ruby>合<rt>あ</rt></ruby>わせて<ruby>1600<rt>せんろっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Vâng, tổng cộng 1600 yên.)* |
| Đại | (đưa tiền) お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>恋愛<rt>れんあい</rt></ruby>のは<ruby>彼女<rt>かのじょ</rt></ruby>のため、<ruby>学業<rt>がくぎょう</rt></ruby>のは<ruby>自分<rt>じぶん</rt></ruby>のためです。<br>*(Em nhờ cô. Bùa tình yêu cho bạn gái, bùa học hành cho em.)* |
| Nhân viên | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>素敵<rt>すてき</rt></ruby>ですね。<ruby>遠距離<rt>えんきょり</rt></ruby><ruby>恋愛<rt>れんあい</rt></ruby>ですか？<br>*(Cười. Dễ thương quá. Yêu xa hả?)* |
| Đại | はい、<ruby>彼女<rt>かのじょ</rt></ruby>はベトナムにいます。<br>*(Vâng, bạn gái em ở Việt Nam.)* |
| Nhân viên | <ruby>頑張<rt>がんば</rt></ruby>ってくださいね。<br>*(Cố lên nhé.)* |

---

## Tình huống 13 — Bus về Osaka · 18:10, Đại chia sẻ cảm tưởng với Yifan

| Vai | Lời thoại |
|---|---|
| Yifan | ダイさん、<ruby>今日<rt>きょう</rt></ruby>はどうでしたか？<br>*(Đại ơi, hôm nay thế nào?)* |
| Đại | とても<ruby>感動<rt>かんどう</rt></ruby>しました。<ruby>京都<rt>きょうと</rt></ruby>は<ruby>大阪<rt>おおさか</rt></ruby>と<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Em xúc động lắm. Kyoto khác hẳn Osaka.)* |
| Yifan | <ruby>一番<rt>いちばん</rt></ruby><ruby>印象<rt>いんしょう</rt></ruby><ruby>的<rt>てき</rt></ruby>だったのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Ấn tượng nhất là gì?)* |
| Đại | <ruby>清水寺<rt>きよみずでら</rt></ruby>の<ruby>建築<rt>けんちく</rt></ruby>です。<ruby>釘<rt>くぎ</rt></ruby>なしで<ruby>400<rt>よんひゃく</rt></ruby><ruby>年<rt>ねん</rt></ruby>もつなんて、<ruby>素晴<rt>すば</rt></ruby>らしいと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Kiến trúc Kiyomizu. Không đinh mà đứng 400 năm, em thấy tuyệt vời.)* |
| Yifan | <ruby>私<rt>わたし</rt></ruby>は<ruby>湯豆腐<rt>ゆどうふ</rt></ruby>がよかったです。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>水<rt>みず</rt></ruby>と<ruby>大豆<rt>だいず</rt></ruby>のおかげですね。<br>*(Tôi thì thấy yu-doufu ngon. Nhờ nước và đậu Kyoto.)* |
| Yamada | (loa bus) みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby>までに<ruby>感想文<rt>かんそうぶん</rt></ruby>を<ruby>500<rt>ごひゃく</rt></ruby><ruby>字<rt>じ</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(Mọi người vất vả rồi. Thứ 2 tuần sau nộp bài cảm tưởng ≥500 chữ.)* |
| Đại + nhóm | はい、<ruby>分<rt>わ</rt></ruby>かりました！<br>*(Vâng, chúng em rõ!)* |

---

## Tình huống 14 — Phòng homestay Tanaka · 22:30, gọi video Mai (cảnh tiếng Việt)

> Cảnh tiếng Việt — Đại gọi video Mai khoe ảnh, ôn lại từ JP đã học trong ngày qua đối thoại Việt.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai, anh về tới homestay rồi. Em xem cái này nè — Kinkaku-ji vàng nguyên. |
| Mai | (tiếng Việt) Trời, đẹp như tranh anh ơi. Mà sao anh chụp được góc phản chiếu xuống hồ vậy? |
| Đại | (tiếng Việt) Yamada-sensei chỉ chỗ đứng. Cô nói cái hồ tên là Kyōko-chi, "kính trì" — hồ gương. |
| Mai | (tiếng Việt) Còn cái cổng torii em dặn anh chụp đâu? |
| Đại | (tiếng Việt) Đây nè, một loạt. Đoạn Senbon-torii ở Fushimi Inari. Mà em biết không, anh bị lạc trong đó tầm 20 phút. |
| Mai | (tiếng Việt) Trời, sao mà lạc? Có nói tiếng Nhật hỏi đường được không? |
| Đại | (tiếng Việt) Có chứ. Anh học được câu "sumimasen, hondan wa dochira desu ka" — xin lỗi chánh điện ở phía nào. Bà cụ chỉ tận tình lắm. |
| Mai | (tiếng Việt) Hay quá. Anh có mua quà gì cho em không đó? |
| Đại | (tiếng Việt) Có. Một cái omamori — bùa hộ mệnh ở Kiyomizu, loại tình yêu. Một bùa học hành cho anh. Anh sẽ gửi về dịp tới. |
| Mai | (tiếng Việt, cười) Cảm ơn anh. Mà cô nhân viên hỏi anh chuyện gì sao mặt anh đỏ thế? |
| Đại | (tiếng Việt) Hì… cô ấy hỏi "yêu xa hả". Anh trả lời "bạn gái em ở Việt Nam". |
| Mai | (tiếng Việt) Vợ tương lai chứ nhỉ. Thôi anh đi nghỉ đi. Mai còn 500 chữ kansoubun nữa. |
| Đại | (tiếng Việt) Ừ. Cảm ơn em. Ngủ ngon. |

---

## Đọng lại chương 9

Một ngày Kyoto, Đại học được trọn bộ mẫu câu **遠足** thực tế. Nghe しおり từ Yamada-sensei và xin **もう一度お願いします** khi chưa nghe rõ giờ. Hỏi định nghĩa văn hoá theo công thức **「〜というのは？」** trước **枯山水** ở Ryoan-ji. Gọi món set ăn ở quán yu-doufu bằng **「〜を〜つお願いします」**, đáp lễ bà chủ với **ごちそうさまでした**. Bị lạc trong rừng torii Fushimi nhưng đã tự hỏi đường được nhờ **「すみません、〜はどちらですか」** với một bà cụ Nhật. Khen kiến trúc Kiyomizu không đinh bằng **素晴らしいと思いました**, mua **お守り** tình yêu cho Mai và bùa **学業** cho mình. Cuối ngày video call Mai bằng tiếng Việt, ôn lại từ vựng JP đã học và hứa gửi quà về. Tuần sau phải nộp **感想文** 500 chữ cho Yamada-sensei.

> Từ vựng & mẫu câu chương này: 遠足・しおり・集合場所・点呼・金閣寺・金箔・足利義満・別荘・枯山水・砂・石・不完全・仏教哲学・錦市場・京都の台所・湯豆腐・定食・軟水・伏見稲荷大社・千本鳥居・商売繁盛・奉納・稲荷様・狐の神様・本殿・清水寺・舞台・木組・釘・音羽の滝・恋愛・学業・長寿・お守り・感想文・もう一度お願いします・〜というのは？・〜はどちらですか・〜を〜つお願いします・〜と思いました

## Bí quyết chương

- **しおり tiếng Nhật**: Tờ hướng dẫn excursion là tài liệu thật, có giờ + địa điểm + ghi chú — học mẫu hỏi giờ lại với "mou ichido onegaishimasu".
- **Hỏi định nghĩa từ mới**: "〜というのは？" — mẫu cực quan trọng cho người mới N4 lên N3, dùng khi sensei thả ra một từ chuyên môn.
- **Lạc đường + hỏi đường**: Pha thực tế ai cũng gặp ở Fushimi — torii dày như mê cung, dạy câu "本殿はどちらですか" + "右と左、どちらの道ですか".
- **お守り 2 cái**: 1 tình yêu (Mai), 1 học hành (EJU) — phép ẩn dụ cho 2 đường song song của Đại năm tới.
- **感想文 500 chữ**: Bài tập về nhà thật của trường tiếng Nhật — sách 18 sẽ thấy lại.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 遠足 | えんそく | VIỄN TÚC | Dã ngoại, school trip |
| しおり | — | — | Tờ hướng dẫn |
| 出発 | しゅっぱつ | XUẤT PHÁT | Xuất phát |
| 自由見学 | じゆうけんがく | TỰ DO KIẾN HỌC | Tự do tham quan |
| 金閣寺 | きんかくじ | KIM CÁC TỰ | Chùa Vàng |
| 鹿苑寺 | ろくおんじ | LỘC UYỂN TỰ | Rokuon-ji |
| 将軍 | しょうぐん | TƯỚNG QUÂN | Tướng quân |
| 別荘 | べっそう | BIỆT TRANG | Biệt thự |
| 金箔 | きんぱく | KIM BẠC | Vàng lá |
| 池 | いけ | TRÌ | Hồ |
| 映る | うつる | ÁNH | Phản chiếu |
| 姿 | すがた | TƯ | Hình dáng |
| 美しい | うつくしい | MỸ | Đẹp |
| 枯山水 | かれさんすい | KHÔ SƠN THUỶ | Vườn đá khô |
| 庭園 | ていえん | ĐÌNH VIÊN | Vườn Nhật |
| 砂 | すな | SA | Cát |
| 石 | いし | THẠCH | Đá |
| 表現 | ひょうげん | BIỂU HIỆN | Biểu hiện |
| 不完全 | ふかんぜん | BẤT HOÀN TOÀN | Bất toàn |
| 仏教 | ぶっきょう | PHẬT GIÁO | Phật giáo |
| 哲学 | てつがく | TRIẾT HỌC | Triết học |
| 錦市場 | にしきいちば | CẨM THỊ TRƯỜNG | Chợ Nishiki |
| 台所 | だいどころ | ĐÀI SỞ | Bếp |
| 集合場所 | しゅうごうばしょ | TẬP HỢP TRƯỜNG SỞ | Chỗ tập trung |
| 湯豆腐 | ゆどうふ | THANG ĐẬU HỦ | Đậu hũ luộc |
| 定食 | ていしょく | ĐỊNH THỰC | Set ăn |
| 軟水 | なんすい | NHUYỄN THUỶ | Nước mềm |
| 伏見稲荷大社 | ふしみいなりたいしゃ | PHỤC KIẾN ĐẠO HÀ ĐẠI XÃ | Đền Fushimi Inari |
| 千本鳥居 | せんぼんとりい | THIÊN BẢN ĐIỂU CƯ | Ngàn cổng torii |
| 企業 | きぎょう | KÝ NGHIỆP | Doanh nghiệp |
| 個人 | こじん | CÁ NHÂN | Cá nhân |
| 商売繁盛 | しょうばいはんじょう | THƯƠNG MẠI PHỒN THỊNH | Kinh doanh phát đạt |
| 奉納 | ほうのう | PHỤNG NẠP | Dâng cúng |
| 稲荷様 | いなりさま | ĐẠO HÀ | Thần Inari |
| 狐 | きつね | HỒ | Cáo |
| 稲 | いね | ĐẠO | Lúa |
| 頂上 | ちょうじょう | ĐỈNH THƯỢNG | Đỉnh |
| 中腹 | ちゅうふく | TRUNG PHÚC | Lưng chừng |
| 本殿 | ほんでん | BẢN ĐIỆN | Chánh điện |
| 点呼 | てんこ | ĐIỂM HÔ | Điểm danh |
| 息切れ | いきぎれ | TỨC THIẾT | Thở dốc |
| 迷う | まよう | MÊ | Lạc đường, phân vân |
| 離れる | はなれる | LY | Rời xa |
| 清水寺 | きよみずでら | THANH THUỶ TỰ | Chùa Kiyomizu |
| 舞台 | ぶたい | VŨ ĐÀI | Sân khấu, sân gỗ nhô |
| 釘 | くぎ | ĐINH | Đinh |
| 建築技術 | けんちくぎじゅつ | KIẾN TRÚC KỸ THUẬT | Kỹ thuật xây dựng |
| 木組 | きぐみ | MỘC TỔ | Kỹ thuật ghép gỗ |
| 技法 | ぎほう | KỸ PHÁP | Kỹ thuật |
| 滝 | たき | LONG | Thác |
| 恋愛 | れんあい | LUYẾN ÁI | Tình yêu |
| 学業 | がくぎょう | HỌC NGHIỆP | Học hành |
| 長寿 | ちょうじゅ | TRƯỜNG THỌ | Trường thọ |
| 欲張る | よくばる | DỤC TRƯƠNG | Tham lam |
| 叶う | かなう | DIỆP | Thành hiện thực |
| 健康 | けんこう | KIỆN KHANG | Sức khoẻ |
| 遠距離恋愛 | えんきょりれんあい | VIỄN CỰ LY LUYẾN ÁI | Yêu xa |
| 印象的 | いんしょうてき | ẤN TƯỢNG ĐÍCH | Mang tính ấn tượng |
| 感想文 | かんそうぶん | CẢM TƯỞNG VĂN | Bài cảm tưởng |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000010, 800000019, NULL, 'markdown_book', 'T10. お正月 + Tết VN — Tanaka homestay + hatsumode (お正月)', '# Sách du học sinh tiếng Nhật · T10. お正月 + Tết VN — Tanaka homestay + hatsumode (お正月)

> **Mục tiêu nhân vật:** Đại (19 tuổi, du học sinh tháng 9 ở Osaka, homestay nhà Tanaka, 12/2024-1/2025). Học các mẫu hội thoại tiếng Nhật cho **năm mới Nhật**: phân công 役割 trong 大掃除 (〜を担当します), chào lễ năm mới đầy đủ (あけましておめでとうございます・本年もよろしくお願いします), hỏi ý nghĩa từng món おせち (〜にはどんな意味がありますか), nghi thức 賽銭・2礼2拍手1礼 ở 初詣, mua おみくじ và お守り (〜を一つお願いします), nhận お年玉 lễ phép (恐縮ですが・ありがとうございます), giới thiệu món Việt cho host (これは〜という料理です).

---

## Bối cảnh

Cuối tháng 12/2024 sang đầu tháng 1/2025. Đại đã 9 tháng ở Osaka homestay nhà Tanaka — Tony (chủ nhà, người Kansai gốc), Yumi (vợ Tony, dạy ikebana). Đây là **お正月** đầu tiên xa nhà của Đại, lại trùng dịp **Tết VN** rơi vào 29/1/2025. Tony và Yumi quyết để Đại trải nghiệm trọn vẹn văn hoá năm mới Nhật, đồng thời mời nhóm bạn VN qua nhà ăn Tết. Chương này tập trung mẫu câu **大掃除・おせち・初詣・おみくじ・お年玉・giới thiệu món Việt**.

---

## Tình huống 1 — Phòng khách nhà Tanaka · 28/12 sáng 9:00, phân công 大掃除

| Vai | Lời thoại |
|---|---|
| Yumi | ダイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>今日<rt>きょう</rt></ruby>から<ruby>大掃除<rt>おおそうじ</rt></ruby>するで！<br>*(Đại, chào sáng. Hôm nay bắt đầu đại vệ sinh đó!)* |
| Đại | おはようございます！<ruby>大掃除<rt>おおそうじ</rt></ruby>って<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Chào ạ! "Ōsōji" là gì ạ?)* |
| Tony | <ruby>年末<rt>ねんまつ</rt></ruby>に<ruby>家中<rt>いえじゅう</rt></ruby>を<ruby>掃除<rt>そうじ</rt></ruby>することや。<ruby>新年<rt>しんねん</rt></ruby>を<ruby>清<rt>きよ</rt></ruby>らかに<ruby>迎<rt>むか</rt></ruby>えるためやな。<br>*(Là dọn dẹp cả nhà cuối năm. Để đón năm mới thanh tịnh ấy.)* |
| Đại | なるほど！<ruby>何<rt>なに</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>えばいいですか？<br>*(Em hiểu rồi! Em giúp gì được ạ?)* |
| Tony | <ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby>するで。<ruby>俺<rt>おれ</rt></ruby>は<ruby>窓<rt>まど</rt></ruby>と<ruby>玄関<rt>げんかん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。<br>*(Phân vai nhé. Tôi nhận cửa sổ với sảnh.)* |
| Yumi | <ruby>私<rt>わたし</rt></ruby>はキッチンと<ruby>仏壇<rt>ぶつだん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Tôi nhận bếp với bàn thờ.)* |
| Đại | じゃあ、<ruby>私<rt>わたし</rt></ruby>は<ruby>居間<rt>いま</rt></ruby>と<ruby>自分<rt>じぶん</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Vậy em nhận phòng khách với phòng riêng ạ.)* |
| Yumi | お<ruby>願<rt>ねが</rt></ruby>いね。<ruby>畳<rt>たたみ</rt></ruby>は<ruby>目<rt>め</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って<ruby>掃<rt>は</rt></ruby>くのがコツやで。<br>*(Nhờ em nhé. Chiếu thì quét theo thớ là bí quyết đấy.)* |
| Đại | <ruby>畳<rt>たたみ</rt></ruby>の<ruby>目<rt>め</rt></ruby>ですか？はい、<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Theo thớ chiếu ạ? Vâng, em nhớ rồi.)* |

---

## Tình huống 2 — Phòng khách · 28/12 chiều 14:00, Yumi dạy mẹo lau chiếu

*Đại đang lúi húi quét chiếu, Yumi đi qua dừng lại chỉ thêm.*

| Vai | Lời thoại |
|---|---|
| Yumi | ダイ<ruby>君<rt>くん</rt></ruby>、その<ruby>方向<rt>ほうこう</rt></ruby>は<ruby>逆<rt>ぎゃく</rt></ruby>やで。<ruby>畳<rt>たたみ</rt></ruby>の<ruby>目<rt>め</rt></ruby>を<ruby>見<rt>み</rt></ruby>て？<br>*(Đại, hướng đó ngược rồi. Em nhìn thớ chiếu xem?)* |
| Đại | あ、こっちが<ruby>目<rt>め</rt></ruby>ですね。<ruby>横<rt>よこ</rt></ruby>に<ruby>掃<rt>は</rt></ruby>くんですか？<br>*(À, đây là thớ. Mình quét ngang ạ?)* |
| Yumi | そう、<ruby>目<rt>め</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って<ruby>掃<rt>は</rt></ruby>けば<ruby>畳<rt>たたみ</rt></ruby>が<ruby>傷<rt>きず</rt></ruby>つかへん。<br>*(Đúng. Quét theo thớ thì chiếu không bị hỏng.)* |
| Đại | <ruby>畳<rt>たたみ</rt></ruby>って、どのくらい<ruby>使<rt>つか</rt></ruby>えますか？<br>*(Chiếu dùng được bao lâu ạ?)* |
| Yumi | <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>ぐらいで<ruby>裏返<rt>うらがえ</rt></ruby>して、<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>ぐらいで<ruby>取<rt>と</rt></ruby>り<ruby>替<rt>か</rt></ruby>えるんよ。<br>*(Khoảng 3 năm lật mặt một lần, 10 năm thay mới.)* |
| Tony | （<ruby>覗<rt>のぞ</rt></ruby>く）<ruby>窓<rt>まど</rt></ruby><ruby>拭<rt>ふ</rt></ruby>くなら<ruby>新聞紙<rt>しんぶんし</rt></ruby><ruby>使<rt>つか</rt></ruby>うんやで。ピカピカになる。<br>*(Ngó vào. Lau cửa sổ thì dùng giấy báo nhé. Bóng loáng luôn.)* |
| Đại | え、<ruby>新聞紙<rt>しんぶんし</rt></ruby>ですか？<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Ơ, giấy báo ạ? Lần đầu em nghe.)* |
| Tony | おばあちゃんの<ruby>知恵<rt>ちえ</rt></ruby>や。インクが<ruby>油<rt>あぶら</rt></ruby><ruby>分<rt>ぶん</rt></ruby>を<ruby>取<rt>と</rt></ruby>るんよ。<br>*(Trí tuệ của bà ngoại đó. Mực nó hút dầu mỡ.)* |

---

## Tình huống 3 — Bếp nhà Tanaka · 30/12 sáng 10:00, Yumi giải thích おせち料理

*Yumi đang xếp các món vào hộp 重箱 ba tầng. Đại tò mò đến hỏi.*

| Vai | Lời thoại |
|---|---|
| Đại | ユミさん、これ<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>正月<rt>しょうがつ</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>ですか？<br>*(Cô Yumi, đây toàn món Tết ạ?)* |
| Yumi | そうや。「おせち<ruby>料理<rt>りょうり</rt></ruby>」って<ruby>言<rt>い</rt></ruby>うんよ。<ruby>3<rt>さん</rt></ruby><ruby>段<rt>だん</rt></ruby>の<ruby>重箱<rt>じゅうばこ</rt></ruby>に<ruby>詰<rt>つ</rt></ruby>めるんや。<br>*(Đúng vậy. Gọi là "osechi-ryōri". Xếp vào hộp ba tầng đó.)* |
| Đại | <ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか？この<ruby>黒<rt>くろ</rt></ruby>い<ruby>豆<rt>まめ</rt></ruby>にはどんな<ruby>意味<rt>いみ</rt></ruby>がありますか？<br>*(Em hỏi một cái được không ạ? Đậu đen này có ý nghĩa gì ạ?)* |
| Yumi | <ruby>黒豆<rt>くろまめ</rt></ruby>は「まめに<ruby>働<rt>はたら</rt></ruby>く」で、<ruby>健康<rt>けんこう</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>や。<br>*(Đậu đen "mame" — chăm chỉ, ý nghĩa là sức khoẻ đó.)* |
| Đại | <ruby>言葉<rt>ことば</rt></ruby><ruby>遊<rt>あそ</rt></ruby>びですか？<ruby>面白<rt>おもしろ</rt></ruby>いです！この<ruby>黄色<rt>きいろ</rt></ruby>いのは？<br>*(Chơi chữ ạ? Thú vị quá! Cái màu vàng này là gì ạ?)* |
| Yumi | <ruby>数<rt>かず</rt></ruby>の<ruby>子<rt>こ</rt></ruby>。ニシンの<ruby>卵<rt>たまご</rt></ruby>や。<ruby>子孫<rt>しそん</rt></ruby><ruby>繁栄<rt>はんえい</rt></ruby>を<ruby>願<rt>ねが</rt></ruby>う。<br>*(Kazu-no-ko. Trứng cá trích. Cầu con cháu đông đúc.)* |
| Đại | <ruby>海老<rt>えび</rt></ruby>は？<br>*(Tôm thì sao ạ?)* |
| Yumi | <ruby>海老<rt>えび</rt></ruby>は<ruby>腰<rt>こし</rt></ruby>が<ruby>曲<rt>ま</rt></ruby>がるまで<ruby>長生<rt>ながい</rt></ruby>きしてほしい、つまり<ruby>長寿<rt>ちょうじゅ</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>や。<br>*(Tôm là mong sống đến cong lưng, tức là trường thọ.)* |
| Đại | （メモする）<ruby>料理<rt>りょうり</rt></ruby>に<ruby>意味<rt>いみ</rt></ruby>が<ruby>込<rt>こ</rt></ruby>められていて<ruby>素敵<rt>すてき</rt></ruby>ですね。<br>*(Ghi sổ. Mỗi món có ý nghĩa, đẹp ghê.)* |
| Yumi | ベトナムの<ruby>正月<rt>しょうがつ</rt></ruby>はどうなん？<br>*(Tết Việt Nam thì sao?)* |
| Đại | バインチュンという<ruby>四角<rt>しかく</rt></ruby>い<ruby>餅<rt>もち</rt></ruby>があります。<ruby>大地<rt>だいち</rt></ruby>を<ruby>意味<rt>いみ</rt></ruby>します。<br>*(Có bánh chưng — bánh nếp vuông. Tượng trưng đất ạ.)* |
| Yumi | へえ、<ruby>面白<rt>おもしろ</rt></ruby>い！<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>29<rt>にじゅうく</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>作<rt>つく</rt></ruby>って<ruby>見<rt>み</rt></ruby>せてくれる？<br>*(Hay quá! Hôm 29/1 em làm cho cô xem nhé?)* |
| Đại | はい、ぜひ！<br>*(Vâng, nhất định ạ!)* |

---

## Tình huống 4 — Phòng khách · 31/12 đêm 23:30, đón 除夜の鐘

*TV đang phát kỳ Kohaku gần xong. Tony mở cửa sổ để nghe chuông từ chùa Tennoji-ji vẳng tới.*

| Vai | Lời thoại |
|---|---|
| Tony | ダイ<ruby>君<rt>くん</rt></ruby>、もうすぐ<ruby>除夜<rt>じょや</rt></ruby>の<ruby>鐘<rt>かね</rt></ruby>が<ruby>鳴<rt>な</rt></ruby>るで。<ruby>窓<rt>まど</rt></ruby><ruby>開<rt>あ</rt></ruby>けようか。<br>*(Đại à, chuông giao thừa sắp đánh đó. Mở cửa sổ nhé.)* |
| Đại | <ruby>除夜<rt>じょや</rt></ruby>の<ruby>鐘<rt>かね</rt></ruby>って<ruby>何回<rt>なんかい</rt></ruby><ruby>鳴<rt>な</rt></ruby>るんですか？<br>*(Chuông giao thừa đánh bao nhiêu lần ạ?)* |
| Tony | <ruby>108<rt>ひゃくはち</rt></ruby><ruby>回<rt>かい</rt></ruby>や。<ruby>人間<rt>にんげん</rt></ruby>の<ruby>煩悩<rt>ぼんのう</rt></ruby>が<ruby>108<rt>ひゃくはち</rt></ruby>あるって<ruby>言<rt>い</rt></ruby>われてるからな。<br>*(108 hồi. Nghe nói phiền não của con người có 108 cái.)* |
| Đại | すみません、「<ruby>煩悩<rt>ぼんのう</rt></ruby>」というのは？<br>*(Xin lỗi, "bonnō" là gì ạ?)* |
| Yumi | <ruby>欲<rt>よく</rt></ruby>とか<ruby>怒<rt>いか</rt></ruby>りとか、<ruby>心<rt>こころ</rt></ruby>を<ruby>苦<rt>くる</rt></ruby>しめる<ruby>気持<rt>きも</rt></ruby>ちのことや。<ruby>仏教<rt>ぶっきょう</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>やな。<br>*(Tham, sân… những cảm xúc làm khổ tâm. Là từ Phật giáo.)* |
| Đại | なるほど、<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>鳴<rt>な</rt></ruby>るごとに<ruby>1<rt>ひと</rt></ruby>つ<ruby>消<rt>き</rt></ruby>えるんですね。<br>*(Em hiểu rồi. Mỗi tiếng chuông xoá một phiền não.)* |
| (Chuông) | ゴーン……ゴーン……<br>*(Boong… boong…)* |
| Tony | あけましておめでとうございます！<br>*(Chúc mừng năm mới!)* |
| Yumi | あけましておめでとうございます！<ruby>本年<rt>ほんねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chúc mừng năm mới! Năm nay cũng mong em.)* |
| Đại | あけましておめでとうございます！<ruby>本年<rt>ほんねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chúc mừng năm mới! Năm nay cháu cũng xin được chỉ bảo ạ.)* |

---

## Tình huống 5 — Bàn ăn · 1/1 sáng 8:00, đầu năm ăn おせち + お雑煮

| Vai | Lời thoại |
|---|---|
| Yumi | （<ruby>重箱<rt>じゅうばこ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>並<rt>なら</rt></ruby>べる）はい、<ruby>新年<rt>しんねん</rt></ruby>の<ruby>朝食<rt>ちょうしょく</rt></ruby>です！<br>*(Bày 3 tầng. Bữa sáng đầu năm đây!)* |
| Đại | わあ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>美<rt>うつく</rt></ruby>しいですね！いただきます。<br>*(Wao, đẹp thật! Em xin phép ạ.)* |
| Tony | <ruby>雑煮<rt>ぞうに</rt></ruby>も<ruby>食<rt>た</rt></ruby>べてや。<ruby>関西<rt>かんさい</rt></ruby><ruby>風<rt>ふう</rt></ruby>は<ruby>白味噌<rt>しろみそ</rt></ruby><ruby>仕立<rt>じた</rt></ruby>てや。<br>*(Ăn cả ozōni nhé. Kiểu Kansai là dùng miso trắng.)* |
| Đại | <ruby>雑煮<rt>ぞうに</rt></ruby>?<br>*(Ozōni là gì ạ?)* |
| Yumi | お<ruby>餅<rt>もち</rt></ruby>の<ruby>入<rt>はい</rt></ruby>ったお<ruby>雑煮<rt>ぞうに</rt></ruby>のスープよ。<ruby>地方<rt>ちほう</rt></ruby>によって<ruby>味<rt>あじ</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんよ。<br>*(Là canh có mochi. Mỗi vùng vị khác nhau.)* |
| Đại | （<ruby>食<rt>た</rt></ruby>べる）うん、<ruby>味噌<rt>みそ</rt></ruby>が<ruby>甘<rt>あま</rt></ruby>くて<ruby>美味<rt>おい</rt></ruby>しいです！<br>*(Ăn. Miso ngọt, ngon quá!)* |
| Tony | <ruby>東京<rt>とうきょう</rt></ruby>は<ruby>醤油<rt>しょうゆ</rt></ruby><ruby>味<rt>あじ</rt></ruby>やで。<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>う。<br>*(Tokyo thì vị xì dầu. Khác hẳn đấy.)* |
| Đại | <ruby>1<rt>ひと</rt></ruby>つの<ruby>国<rt>くに</rt></ruby>でも<ruby>地方<rt>ちほう</rt></ruby>で<ruby>違<rt>ちが</rt></ruby>うんですね。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Cùng một nước mà vùng khác nhau. Em học hỏi được nhiều.)* |

---

## Tình huống 6 — Trên đường đến Sumiyoshi Taisha · 10:30, đi 初詣

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>住吉大社<rt>すみよしたいしゃ</rt></ruby>まで<ruby>歩<rt>ある</rt></ruby>いて<ruby>行<rt>い</rt></ruby>けますか？<br>*(Đi bộ đến Sumiyoshi được không ạ?)* |
| Tony | <ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ぐらいやで。<ruby>初詣<rt>はつもうで</rt></ruby>は<ruby>歩<rt>ある</rt></ruby>くのが<ruby>気持<rt>きも</rt></ruby>ちええ。<br>*(Tầm 15 phút. Hatsumode đi bộ là sướng nhất.)* |
| Đại | <ruby>初詣<rt>はつもうで</rt></ruby>って、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>だけですか？<br>*(Hatsumode chỉ có mùng 1 thôi ạ?)* |
| Yumi | <ruby>3<rt>さん</rt></ruby><ruby>日<rt>にち</rt></ruby>までを「<ruby>三<rt>さん</rt></ruby>が<ruby>日<rt>にち</rt></ruby>」と<ruby>呼<rt>よ</rt></ruby>んで、その<ruby>間<rt>あいだ</rt></ruby>に<ruby>行<rt>い</rt></ruby>けば<ruby>初詣<rt>はつもうで</rt></ruby>や。<br>*(Đến ngày 3 gọi là "sanganichi", đi trong những ngày đó đều là hatsumode.)* |
| Đại | お<ruby>願<rt>ねが</rt></ruby>い<ruby>事<rt>ごと</rt></ruby>は<ruby>何<rt>なに</rt></ruby>でもいいですか？<br>*(Cầu nguyện điều gì cũng được ạ?)* |
| Tony | もちろんや。<ruby>学業<rt>がくぎょう</rt></ruby>、<ruby>健康<rt>けんこう</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby>、なんでも。<br>*(Tất nhiên. Học hành, sức khoẻ, gia đình, gì cũng được.)* |
| Đại | <ruby>私<rt>わたし</rt></ruby>はN2<ruby>合格<rt>ごうかく</rt></ruby>と<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>することを<ruby>祈<rt>いの</rt></ruby>ります。<br>*(Em cầu đỗ N2 và đỗ ĐH Osaka.)* |
| Yumi | <ruby>欲張<rt>よくば</rt></ruby>りやな！(<ruby>笑<rt>わら</rt></ruby>う)<br>*(Tham thật đấy! Cười.)* |

---

## Tình huống 7 — Trước hộp 賽銭箱 Sumiyoshi · 11:00, Yumi dạy 2礼2拍手1礼

*Đứng giữa hàng dài người. Yumi đứng cạnh hướng dẫn từng bước.*

| Vai | Lời thoại |
|---|---|
| Yumi | ダイ<ruby>君<rt>くん</rt></ruby>、まずお<ruby>賽銭<rt>さいせん</rt></ruby>を<ruby>静<rt>しず</rt></ruby>かに<ruby>入<rt>い</rt></ruby>れる。<br>*(Đại, trước tiên bỏ tiền cúng nhẹ nhàng.)* |
| Đại | <ruby>何円<rt>なんえん</rt></ruby>がいいですか？<br>*(Bao nhiêu yên thì hợp ạ?)* |
| Tony | <ruby>5<rt>ご</rt></ruby><ruby>円玉<rt>えんだま</rt></ruby>がええで。「ご<ruby>縁<rt>えん</rt></ruby>」って<ruby>言<rt>い</rt></ruby>って、<ruby>縁起<rt>えんぎ</rt></ruby>がええ。<br>*(Đồng 5 yên đó. Phát âm "go-en" nghe như "duyên", may mắn.)* |
| Đại | あ、これも<ruby>言葉<rt>ことば</rt></ruby><ruby>遊<rt>あそ</rt></ruby>びですね！（<ruby>5<rt>ご</rt></ruby><ruby>円玉<rt>えんだま</rt></ruby><ruby>投<rt>な</rt></ruby>げる）<br>*(À, lại chơi chữ! Bỏ đồng 5 yên.)* |
| Yumi | <ruby>次<rt>つぎ</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>お<ruby>辞儀<rt>じぎ</rt></ruby>。<ruby>深<rt>ふか</rt></ruby>く<ruby>下<rt>さ</rt></ruby>げてな。<br>*(Tiếp, cúi đầu 2 lần. Cúi sâu nhé.)* |
| Đại | （<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>礼<rt>れい</rt></ruby>）<br>*(Cúi 2 lần.)* |
| Yumi | <ruby>次<rt>つぎ</rt></ruby>、<ruby>柏手<rt>かしわで</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>。パンパン。<br>*(Tiếp, vỗ tay 2 lần. Pách pách.)* |
| Đại | （パンパン）<br>*(Vỗ.)* |
| Yumi | お<ruby>願<rt>ねが</rt></ruby>い<ruby>事<rt>ごと</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>言<rt>い</rt></ruby>って、<ruby>最後<rt>さいご</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>礼<rt>れい</rt></ruby>。<br>*(Cầu nguyện trong lòng rồi cuối cúi 1 lần.)* |
| Đại | (cầu trong lòng tiếng Việt) "N2 đỗ, ĐH Osaka đỗ, Mai và mẹ bình an…" （<ruby>1<rt>いち</rt></ruby><ruby>礼<rt>れい</rt></ruby>）<br>*(Cúi.)* |
| Tony | よくできた。<ruby>2<rt>に</rt></ruby><ruby>礼<rt>れい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>拍手<rt>はくしゅ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>礼<rt>れい</rt></ruby>や。<br>*(Tốt lắm. 2 cúi, 2 vỗ, 1 cúi đó.)* |

---

## Tình huống 8 — Quầy おみくじ Sumiyoshi · 11:30, rút quẻ + mua お守り

| Vai | Lời thoại |
|---|---|
| Yumi | おみくじ<ruby>引<rt>ひ</rt></ruby>こう！<br>*(Rút omikuji thôi!)* |
| Đại | （<ruby>巫女<rt>みこ</rt></ruby>に）すみません、おみくじを<ruby>一<rt>ひと</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Với miko. Xin lỗi, cho em một quẻ ạ.)* |
| Miko | <ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。こちらの<ruby>箱<rt>はこ</rt></ruby>から<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>引<rt>ひ</rt></ruby>いてください。<br>*(200 yên. Rút một thẻ trong hộp này ạ.)* |
| Đại | （<ruby>引<rt>ひ</rt></ruby>く、<ruby>読<rt>よ</rt></ruby>む）……<ruby>大吉<rt>だいきち</rt></ruby>！<br>*(Rút, đọc. Đại cát!)* |
| Yumi | わ、<ruby>大吉<rt>だいきち</rt></ruby>！おめでとう、<ruby>一番<rt>いちばん</rt></ruby>いい<ruby>運勢<rt>うんせい</rt></ruby>やで！<br>*(Wao, đại cát! Mừng em, vận tốt nhất đấy!)* |
| Đại | （<ruby>読<rt>よ</rt></ruby>む）<ruby>学業<rt>がくぎょう</rt></ruby>:<ruby>努力<rt>どりょく</rt></ruby><ruby>結実<rt>けつじつ</rt></ruby>。<ruby>恋愛<rt>れんあい</rt></ruby>:<ruby>遠<rt>とお</rt></ruby>くの<ruby>人<rt>ひと</rt></ruby>と<ruby>絆<rt>きずな</rt></ruby><ruby>深<rt>ふか</rt></ruby>まる。<br>*(Đọc. Học: nỗ lực ra trái. Tình: gắn kết với người ở xa.)* |
| Tony | おお、<ruby>遠距離<rt>えんきょり</rt></ruby><ruby>恋愛<rt>れんあい</rt></ruby>にぴったりやんか！<br>*(Ồ, hợp với yêu xa quá!)* |
| Đại | （<ruby>顔<rt>かお</rt></ruby><ruby>赤<rt>あか</rt></ruby>く）<ruby>偶然<rt>ぐうぜん</rt></ruby>ですね…<ruby>学業<rt>がくぎょう</rt></ruby>お<ruby>守<rt>まも</rt></ruby>りも<ruby>買<rt>か</rt></ruby>いたいです。<br>*(Đỏ mặt. Tình cờ thôi ạ… Em muốn mua bùa học hành nữa.)* |
| Miko | <ruby>学業<rt>がくぎょう</rt></ruby><ruby>守<rt>まも</rt></ruby>りですね。<ruby>800<rt>はっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Bùa học hành. 800 yên ạ.)* |
| Đại | <ruby>2<rt>ふた</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>1<rt>ひと</rt></ruby>つは<ruby>友達<rt>ともだち</rt></ruby>のためです。<br>*(Cho em 2 cái. Một cho bạn em.)* |
| Miko | <ruby>1600<rt>せんろっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。ありがとうございます。<br>*(1600 yên. Cảm ơn.)* |

---

## Tình huống 9 — Phòng khách · 1/1 trưa 12:30, Yumi đưa お年玉

*Đại vừa cởi áo khoác. Yumi đứng dậy cầm phong bao đỏ ra.*

| Vai | Lời thoại |
|---|---|
| Yumi | ダイ<ruby>君<rt>くん</rt></ruby>、これ、お<ruby>年玉<rt>としだま</rt></ruby>です。<br>*(Đại, đây là lì xì cho em.)* |
| Đại | え！？<ruby>私<rt>わたし</rt></ruby>に？<br>*(Ơ!? Cho em ạ?)* |
| Tony | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってきた<ruby>君<rt>きみ</rt></ruby>へのご<ruby>褒美<rt>ほうび</rt></ruby>や。<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って。<br>*(Phần thưởng cho em vì cố gắng cả năm. Đừng ngại, nhận đi.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>本当<rt>ほんとう</rt></ruby>にいただいてもいいですか？<br>*(Em ngại quá, em nhận thật được không ạ?)* |
| Yumi | もちろん。<ruby>日本<rt>にほん</rt></ruby>では<ruby>子<rt>こ</rt></ruby>どもや<ruby>若<rt>わか</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>す<ruby>習慣<rt>しゅうかん</rt></ruby>やよ。<br>*(Tất nhiên. Ở Nhật phong tục đưa cho trẻ em và người trẻ mà.)* |
| Đại | （<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>わせていただきます。<br>*(Nhận, cúi đầu. Cảm ơn cô chú. Em sẽ tiêu cẩn thận ạ.)* |
| Đại | （<ruby>後<rt>あと</rt></ruby>で<ruby>部屋<rt>へや</rt></ruby>で<ruby>開<rt>あ</rt></ruby>ける、<ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>札<rt>さつ</rt></ruby>）え、<ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>!?<br>*(Sau về phòng mở, tờ 10000 yên. Ơ, 10000 yên!?)* |

---

## Tình huống 10 — Bếp nhà Tanaka · 29/1 chiều 16:00, Đại nấu phở chuẩn bị Tết VN

*Đại dạy Yumi quy trình nấu phở. Linh đến mang nem, Tuấn mang xôi gấc.*

| Vai | Lời thoại |
|---|---|
| Đại | ユミさん、これは「フォー」というベトナムの<ruby>麺料理<rt>めんりょうり</rt></ruby>です。<br>*(Cô Yumi, đây là "phở", món mì Việt Nam ạ.)* |
| Yumi | スープが<ruby>透明<rt>とうめい</rt></ruby>でええ<ruby>香<rt>かお</rt></ruby>りやね。<ruby>何<rt>なん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>煮<rt>に</rt></ruby>るん？<br>*(Nước trong và thơm thật. Hầm bao lâu?)* |
| Đại | <ruby>牛骨<rt>ぎゅうこつ</rt></ruby>を<ruby>6<rt>ろく</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>煮<rt>に</rt></ruby>ます。シナモンと<ruby>八角<rt>はっかく</rt></ruby>と<ruby>生姜<rt>しょうが</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<br>*(Hầm xương bò 6 tiếng. Cho quế, hồi, gừng.)* |
| Yumi | おせちと<ruby>同<rt>おな</rt></ruby>じで<ruby>意味<rt>いみ</rt></ruby>があるん？<br>*(Có ý nghĩa như osechi không?)* |
| Đại | テト(<ruby>正月<rt>しょうがつ</rt></ruby>)に<ruby>家族<rt>かぞく</rt></ruby>で<ruby>食<rt>た</rt></ruby>べる<ruby>料理<rt>りょうり</rt></ruby>です。<ruby>長<rt>なが</rt></ruby>い<ruby>麺<rt>めん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ると、ユミさんの<ruby>年越<rt>としこ</rt></ruby>しそばを<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>しますね。<br>*(Là món gia đình ăn dịp Tết. Nhìn sợi phở dài, cháu lại nhớ đến món mì giao thừa của cô Yumi.)* |
| Yumi | <ruby>日本<rt>にほん</rt></ruby>の<ruby>年越<rt>としこ</rt></ruby>しそばと<ruby>似<rt>に</rt></ruby>てるな！<br>*(Giống mì giao thừa của Nhật nhỉ!)* |
| Linh | (vào nhà, tiếng Việt) Chào anh chị, em mang nem rán đến. |
| Tuấn | (theo sau, tiếng Việt) Em mang xôi gấc đỏ — Tết mà. |
| Yumi | (luyện phát âm) Chúc... mừng... năm... mới！<br>*(Học phát âm.)* |
| Đại | (tiếng Việt, ngạc nhiên) Trời ơi, cô học phát âm rồi! |
| Yumi | <ruby>3<rt>さん</rt></ruby><ruby>カ月<rt>かげつ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>したんよ。ダイ<ruby>君<rt>くん</rt></ruby>のために。<br>*(Tôi tập 3 tháng đó. Vì Đại.)* |
| Đại | （<ruby>涙<rt>なみだ</rt></ruby>ぐむ）ありがとうございます…<br>*(Rưng rưng. Cảm ơn cô…)* |

---

## Tình huống 11 — Bàn ăn Tết VN · 29/1 tối 19:30, cụng ly chúc mừng

| Vai | Lời thoại |
|---|---|
| Tony | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はベトナムのテト、おめでとうございます！<br>*(Mọi người, hôm nay Tết Việt Nam, chúc mừng nhé!)* |
| Đại + Linh + Tuấn | チュック・ムン・ナム・モイ！<br>*(Chúc mừng năm mới!)* |
| Yumi | チュック・ムン・ナム・モイ！<br>*(Chúc mừng năm mới!)* |
| Đại | <ruby>乾杯<rt>かんぱい</rt></ruby>！(nâng ly)<br>*(Cạn!)* |
| Linh | (tiếng Việt) Em mang được nem rán, mỡ chảy ra thơm phức. |
| Tuấn | (tiếng Việt) Còn xôi gấc của em, đỏ như Tết quê. |
| Tony | この<ruby>赤<rt>あか</rt></ruby>いごはん、<ruby>何<rt>なん</rt></ruby>?<br>*(Cơm đỏ này là gì?)* |
| Đại | ガックという<ruby>果物<rt>くだもの</rt></ruby>で<ruby>色<rt>いろ</rt></ruby>をつけたもち<ruby>米<rt>ごめ</rt></ruby>です。<ruby>赤色<rt>あかいろ</rt></ruby>は<ruby>幸運<rt>こううん</rt></ruby>を<ruby>意味<rt>いみ</rt></ruby>します。<br>*(Là xôi nếp nhuộm bằng quả gấc. Màu đỏ tượng trưng cho may mắn.)* |
| Yumi | (tiếng Việt) Ngon... lắm!<br>*(Học từ.)* |
| Linh | (tiếng Việt, mắt rưng rưng) Tết xa nhà mà có cô chú Tanaka, có gia đình thứ hai. |
| Tuấn | (tiếng Việt) Em cũng vậy. Cảm động lắm. |
| Đại | (tiếng Việt) Anh thấy may mắn. Hai bên Tết — đầy đủ. |

---

## Tình huống 12 — Phòng homestay · 29/1 đêm 23:00, video Mai và mẹ (cảnh tiếng Việt)

> Cảnh tiếng Việt — Đại gọi video bàn thờ tổ tiên ở Hà Nội. Mẹ và Mai cùng vẫy tay.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi, Mai ơi! Bên này 21h Nhật, bên nhà 23h Việt rồi. |
| Mẹ | (tiếng Việt) Con ơi! Mẹ thấy ảnh con với cô Yumi nấu phở rồi. Cô tốt với con quá. |
| Mai | (tiếng Việt) Anh ơi, em vừa nhận bưu kiện của anh đó. Cái omamori Kiyomizu hôm trước. |
| Đại | (tiếng Việt) Đeo vào người nha em. Bùa "renai" — tình yêu. Đến rồi à? |
| Mai | (tiếng Việt) Đến trưa nay. Hộp đỏ với chữ vàng đẹp lắm. |
| Mẹ | (tiếng Việt) Con kể mẹ nghe Tết Nhật ra sao đi. |
| Đại | (tiếng Việt) Tết Nhật mùng 1, gọi là Oshogatsu. Có món osechi xếp ba tầng, mỗi món một ý nghĩa — đậu đen là sức khoẻ, tôm là trường thọ, trứng cá là con cháu đông. |
| Mẹ | (tiếng Việt) Trời, văn hoá người ta cũng sâu sắc thật. |
| Đại | (tiếng Việt) Mùng 1 đi hatsumode, là đến đền cầu nguyện đầu năm. Con cầu N2 đỗ với đỗ ĐH Osaka. |
| Mai | (tiếng Việt) Có cầu cho em không đó? |
| Đại | (tiếng Việt) Tất nhiên rồi. Cầu "Mai và mẹ bình an". Còn rút được quẻ daikichi — đại cát, vận tốt nhất. |
| Mẹ | (tiếng Việt) Mẹ mừng. Cô Yumi cho lì xì hả con? |
| Đại | (tiếng Việt) Vâng, 10000 yên. Tương đương gần 2 triệu đồng Việt. Con giữ làm vốn ôn EJU. |
| Mẹ | (tiếng Việt) Khôn. Mẹ tự hào con. |
| Mai | (tiếng Việt) Em cũng. Khi nào anh học hết homestay rồi qua ký túc? |
| Đại | (tiếng Việt) Tháng 4 này. Còn 2 tháng nữa. Sau đó tự lập. |
| Mẹ | (tiếng Việt) Mẹ với Mai chờ ngày con đi học ĐH. Thôi đi ngủ đi con. |
| Đại | (tiếng Việt) Vâng. Chúc mẹ với Mai năm mới khoẻ mạnh. Yêu mọi người. |

---

## Đọng lại chương 10

Tết kép — **お正月** Nhật và **Tết VN** — Đại trải qua trọn vẹn 9 mẫu hội thoại văn hoá. Bắt đầu với **大掃除** phân vai (〜を担当します) và mẹo lau chiếu **目に沿って掃く**. Tìm hiểu **おせち料理** ba tầng với các món ý nghĩa, trong đó hội thoại bàn 3 món: **黒豆** (sức khoẻ), **数の子** (con cháu đông), **海老** (trường thọ). Đêm 大晦日 nghe **除夜の鐘 108回** với khái niệm **煩悩**. Mùng 1 chào **あけましておめでとうございます・本年もよろしくお願いします**, ăn **お雑煮** kiểu Kansai miso trắng. Đi **初詣** ở **住吉大社**, học nghi thức **5円玉・2礼2拍手1礼** với chơi chữ **ご縁**. Rút **おみくじ** trúng **大吉**, mua 2 **お守り** học hành (一つお願いします). Nhận **お年玉** 10000 yên với cách đáp lễ **恐縮ですが・大切に使わせていただきます**. Cuối cùng **Tết VN 29/1**: Đại nấu phở, dạy ý nghĩa món Việt cho Yumi, Linh mang nem, Tuấn mang xôi gấc, Yumi luyện phát âm "Chúc mừng năm mới" suốt 3 tháng. Đêm video gia đình ở Hà Nội — Mai đã nhận omamori, mẹ tự hào.

> Từ vựng & mẫu câu chương này: お正月・大掃除・役割分担・担当する・畳の目・新聞紙・おせち料理・重箱・黒豆・数の子・伊達巻・海老・お雑煮・白味噌・大晦日・紅白歌合戦・除夜の鐘・煩悩・あけましておめでとうございます・本年もよろしくお願いします・住吉大社・初詣・三が日・賽銭・5円玉・ご縁・2礼2拍手1礼・柏手・おみくじ・大吉・運勢・お守り・学業守り・お年玉・恐縮ですが・大切に使わせていただきます・テト・フォー・ガック・もち米・チュックムンナムモイ・〜にはどんな意味がありますか・〜を〜つお願いします

## Bí quyết chương

- **2 Tết kẹp**: Oshogatsu Nhật (1/1) + Tết VN (29/1) trong cùng 1 tháng — đặc thù du học sinh VN tại Nhật.
- **おせち 4 món có ý nghĩa**: Mẫu câu "〜にはどんな意味がありますか" dùng đi dùng lại cho mỗi món.
- **2礼2拍手1礼**: Nghi thức chuẩn ở 神社, học một lần dùng cả đời. Khác Phật giáo ở chùa (không vỗ tay).
- **Yumi học "Chúc mừng năm mới"**: 3 tháng luyện phát âm — biểu tượng tình thân host-du học.
- **お年玉 10000 yên**: Cách nhận lễ phép "恐縮ですが" rồi "大切に使わせていただきます" — sách 21 sẽ dùng lại với sempai.
- **Daikichi quẻ tình yêu — Mai ở xa**: Báo trước Mai sẽ sang Nhật thăm sách sau.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| お正月 | おしょうがつ | CHÍNH NGUYỆT | Tết Nhật |
| 役割分担 | やくわりぶんたん | DỊCH HOẠCH PHÂN ĐẢM | Phân chia vai trò |
| 新年 | しんねん | TÂN NIÊN | Năm mới |
| 清らか | きよらか | THANH | Thanh khiết, sạch |
| 迎える | むかえる | NGHÊNH | Đón |
| 役割 | やくわり | DỊCH HOẠCH | Vai trò |
| 目 | め | MỤC | Thớ, mắt |
| 沿う | そう | DUYÊN | Đi theo, dọc theo |
| 掃く | はく | TẢO | Quét |
| 傷つく | きずつく | THƯƠNG | Bị xước, tổn thương |
| 裏返す | うらがえす | LÝ PHẢN | Lật mặt |
| 取り替える | とりかえる | THỦ THẾ | Thay mới |
| 新聞紙 | しんぶんし | TÂN VĂN CHỈ | Giấy báo |
| 知恵 | ちえ | TRI HUỆ | Trí tuệ |
| 油分 | あぶらぶん | DU PHÂN | Dầu mỡ |
| 重箱 | じゅうばこ | TRỌNG HỘP | Hộp xếp tầng |
| おせち料理 | おせちりょうり | LIỆU LÝ | Cỗ Tết Nhật |
| 段 | だん | ĐOẠN | Tầng |
| 詰める | つめる | CẬT | Xếp chặt vào |
| 黒豆 | くろまめ | HẮC ĐẬU | Đậu đen |
| 数の子 | かずのこ | SỐ TỬ | Trứng cá trích |
| 子孫繁栄 | しそんはんえい | TỬ TÔN PHỒN VINH | Con cháu đông đúc |
| 海老 | えび | HẢI LÃO | Tôm |
| 腰 | こし | YÊU | Lưng |
| 曲がる | まがる | KHÚC | Cong |
| 長生き | ながいき | TRƯỜNG SINH | Sống lâu |
| 言葉遊び | ことばあそび | NGÔN DIỆP DU | Chơi chữ |
| 餅 | もち | BÍNH | Bánh mochi |
| 大地 | だいち | ĐẠI ĐỊA | Đất, mặt đất |
| 除夜の鐘 | じょやのかね | TRỪ DẠ CHUNG | Chuông giao thừa |
| 鳴る | なる | MINH | Vang lên, kêu |
| 煩悩 | ぼんのう | PHIỀN NÃO | Phiền não |
| 欲 | よく | DỤC | Tham, dục |
| 怒り | いかり | NỘ | Giận dữ |
| 苦しめる | くるしめる | KHỔ | Làm khổ |
| 雑煮 | ぞうに | TẠP CHỬ | Canh ozōni |
| 白味噌 | しろみそ | BẠCH VỊ TĂNG | Miso trắng |
| 地方 | ちほう | ĐỊA PHƯƠNG | Vùng, địa phương |
| 住吉大社 | すみよしたいしゃ | TRÚ CÁT ĐẠI XÃ | Đền Sumiyoshi |
| 初詣 | はつもうで | SƠ NGHỆ | Đi đền đầu năm |
| 三が日 | さんがにち | TAM NHẬT | 3 ngày Tết |
| 賽銭 | さいせん | TÁI TIỀN | Tiền dâng lễ |
| 円玉 | えんだま | VIÊN NGỌC | Đồng xu yên |
| 縁 | えん | DUYÊN | Duyên |
| 辞儀 | じぎ | TỪ NGHI | Cúi chào |
| 柏手 | かしわで | BÁ THỦ | Vỗ tay lễ |
| 礼 | れい | LỄ | Lễ, cúi chào |
| 巫女 | みこ | VU NỮ | Miko (nữ tu đền) |
| 運勢 | うんせい | VẬN THẾ | Vận mệnh |
| 大吉 | だいきち | ĐẠI CÁT | Đại cát (quẻ tốt nhất) |
| 努力 | どりょく | NỖ LỰC | Nỗ lực |
| 結実 | けつじつ | KẾT THỰC | Kết trái |
| 絆 | きずな | BÁN | Sợi dây gắn bó |
| 偶然 | ぐうぜん | NGẪU NHIÊN | Tình cờ |
| 褒美 | ほうび | BAO MỸ | Phần thưởng |
| 恐縮 | きょうしゅく | KHỦNG SÚC | Ngại quá |
| 習慣 | しゅうかん | TẬP QUÁN | Phong tục |
| 麺料理 | めんりょうり | MIẾN LIỆU LÝ | Món mì |
| 透明 | とうめい | THẤU MINH | Trong suốt |
| 香り | かおり | HƯƠNG | Hương thơm |
| 生姜 | しょうが | SINH KHƯƠNG | Gừng |
| 年越しそば | としこしそば | NIÊN VIỆT | Mì giao thừa |
| 乾杯 | かんぱい | CAN BÔI | Cạn ly |
| 果物 | くだもの | QUẢ VẬT | Trái cây |
| 色 | いろ | SẮC | Màu |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000011, 800000019, NULL, 'markdown_book', 'T11. 引っ越し — Tanaka homestay → ký túc trường (引越し)', '# Sách du học sinh tiếng Nhật · T11. 引っ越し — Tanaka homestay → ký túc trường (引越し)

> **Mục tiêu nhân vật:** Đại (19 tuổi, du học sinh sang Osaka từ tháng 4/2024, chuyển ký túc 3-4/2025). Học các mẫu hội thoại tiếng Nhật cho **chuyển nhà**: thông báo quyết định lễ phép với host (実は・〜たいと思っております), trình bày lý do theo 3 điểm (1つ目は・2つ目は・3つ目は), tiếp nhận đơn ký túc và hỏi chi phí (家賃はいくらですか), giới thiệu bản thân với bạn cùng tầng (出身は〜です・〜年生です), hỏi cấu trúc ký túc (〜はどこにありますか), lễ tạm biệt host với cúi chào sâu (1年間お世話になりました), và phối hợp nấu ăn với roommate 4 quốc gia (〜を作ります・〜を手伝いましょうか).

---

## Bối cảnh

Cuối tháng 3/2025. Đại đã 12 tháng homestay nhà Tanaka — Tony và Yumi đã coi như con. Ký hợp đồng ban đầu 3 tháng, nhưng gia hạn 9 tháng vì cả nhà quyến luyến. Bước sang năm 2 du học, Đại muốn trải nghiệm ký túc trường (cách Kansai Gogo Gakuin 5 phút đi bộ) để tự lập và gần bạn học. Ký túc 4 phòng riêng/1 tầng, dùng chung bếp và phòng tắm. Roommate mới: Bahra (Mông Cổ), Rim (VN, đến trước 2 năm), John (Mỹ). Chương này tập trung mẫu câu **thông báo dọn nhà・nộp đơn・tạm biệt host・giới thiệu bản thân roommate・nấu chung**.

---

## Tình huống 1 — Bàn ăn nhà Tanaka · 19:00 tối thứ 6, Đại nói quyết định

*Đã ăn xong cơm tối, Yumi đang dọn bát. Đại đứng thẳng, hít sâu.*

| Vai | Lời thoại |
|---|---|
| Đại | タナカさん、ユミさん、<ruby>大切<rt>たいせつ</rt></ruby>なお<ruby>話<rt>はなし</rt></ruby>があります。<br>*(Anh chị Tanaka, em có chuyện quan trọng muốn thưa.)* |
| Tony | （<ruby>箸<rt>はし</rt></ruby><ruby>置<rt>お</rt></ruby>く）はい、<ruby>何<rt>なん</rt></ruby>や？<br>*(Đặt đũa xuống. Ừ, chuyện gì?)* |
| Đại | <ruby>実<rt>じつ</rt></ruby>は、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>学校<rt>がっこう</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>っております。<br>*(Thực ra, từ tháng 4 em muốn chuyển sang ký túc xá của trường ạ.)* |
| Yumi | え！？<br>*(Ơ!?)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Em xin lỗi thật sự. Một năm qua cô chú đã chăm sóc cháu rất nhiều.)* |
| Tony | （<ruby>静<rt>しず</rt></ruby>かに）<ruby>理由<rt>りゆう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてくれる？<br>*(Bình tĩnh. Cho chú nghe lý do được không?)* |
| Đại | はい、<ruby>3<rt>みっ</rt></ruby>つあります。<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>自立<rt>じりつ</rt></ruby>したいからです。<ruby>料理<rt>りょうり</rt></ruby>と<ruby>掃除<rt>そうじ</rt></ruby>と<ruby>洗濯<rt>せんたく</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>でやってみたいです。<br>*(Vâng, có 3 lý do. Thứ nhất, em muốn tự lập. Nấu, dọn, giặt — em muốn tự làm.)* |
| Đại | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、クラスメイトと<ruby>近<rt>ちか</rt></ruby>くで<ruby>夜<rt>よる</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby><ruby>会<rt>かい</rt></ruby>をしたいからです。<br>*(Thứ hai, em muốn ở gần bạn lớp để học chung buổi tối.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>家賃<rt>やちん</rt></ruby>が<ruby>安<rt>やす</rt></ruby>くなるからです。<ruby>母<rt>はは</rt></ruby>に<ruby>送金<rt>そうきん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたいです。<br>*(Thứ ba, tiền nhà rẻ hơn. Em muốn tiếp tục gửi tiền cho mẹ.)* |
| Yumi | （<ruby>沈黙<rt>ちんもく</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>悲<rt>かな</rt></ruby>しい）<br>*(Im, hơi buồn.)* |

---

## Tình huống 2 — Bàn ăn · 19:30, Tony và Yumi đáp lời

| Vai | Lời thoại |
|---|---|
| Tony | （<ruby>頷<rt>うなず</rt></ruby>く）<ruby>分<rt>わ</rt></ruby>かった。<ruby>自立<rt>じりつ</rt></ruby>は<ruby>大事<rt>だいじ</rt></ruby>や。<ruby>応援<rt>おうえん</rt></ruby>するで。<br>*(Gật đầu. Hiểu rồi. Tự lập là quan trọng. Chú ủng hộ.)* |
| Yumi | <ruby>我<rt>わ</rt></ruby>が<ruby>子<rt>こ</rt></ruby>が<ruby>巣立<rt>すだ</rt></ruby>つみたいやな…<br>*(Như con chim ra tổ đó nhỉ…)* |
| Đại | （<ruby>頭<rt>あたま</rt></ruby><ruby>下<rt>さ</rt></ruby>げる）<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>、<ruby>夕食<rt>ゆうしょく</rt></ruby>に<ruby>来<rt>き</rt></ruby>てもいいですか？<br>*(Cúi đầu. Em đến ăn tối mỗi thứ 6 được không ạ?)* |
| Yumi | （<ruby>笑顔<rt>えがお</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>る）<ruby>本当<rt>ほんとう</rt></ruby>に？<ruby>嬉<rt>うれ</rt></ruby>しいわ！<br>*(Cười trở lại. Thật à? Vui quá!)* |
| Đại | はい！タナカ<ruby>家<rt>け</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby>です。<br>*(Vâng! Nhà Tanaka là gia đình thứ hai của em.)* |
| Tony | <ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>しはわしの<ruby>車<rt>くるま</rt></ruby>で<ruby>送<rt>おく</rt></ruby>ったるわ。<ruby>段ボール<rt>だんボール</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby>ぐらいやろ？<br>*(Chuyển nhà chú lấy xe chở cho. Khoảng 5 thùng carton đúng không?)* |
| Đại | え、いいんですか？<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！<br>*(Ơ, được không ạ? Em cảm ơn thật sự!)* |
| Yumi | <ruby>料理<rt>りょうり</rt></ruby>のレシピも<ruby>書<rt>か</rt></ruby>いてあげるわ。<ruby>味噌汁<rt>みそしる</rt></ruby>と<ruby>肉<rt>にく</rt></ruby>じゃがから<ruby>始<rt>はじ</rt></ruby>めよ。<br>*(Tôi viết công thức cho em luôn. Bắt đầu từ canh miso với nikujaga.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Vâng, nhờ cô!)* |

---

## Tình huống 3 — Phòng quản lý ký túc · sáng 25/3, nộp đơn

*Văn phòng quản lý ở tầng 1 ký túc. Bà Mori (50 tuổi) là quản lý.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>寮<rt>りょう</rt></ruby>の<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みに<ruby>来<rt>き</rt></ruby>ました。グエン・ヴァン・ダイです。<br>*(Chào cô. Em đến đăng ký ký túc xá. Em tên Nguyễn Văn Đại ạ.)* |
| Mori | はい、グエン<ruby>様<rt>さま</rt></ruby>ですね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。こちらの<ruby>申込書<rt>もうしこみしょ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>してください。<br>*(Vâng, em Nguyễn. Cô đã chờ. Mời điền vào đơn này.)* |
| Đại | はい。すみません、<ruby>家賃<rt>やちん</rt></ruby>はいくらですか？<br>*(Vâng. Xin lỗi, tiền nhà bao nhiêu ạ?)* |
| Mori | <ruby>月<rt>つき</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>です。<ruby>光熱費<rt>こうねつひ</rt></ruby>と<ruby>共益費<rt>きょうえきひ</rt></ruby>で<ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>です。<br>*(40 ngàn yên/tháng. Cộng tiện ích 10 ngàn, tổng 50 ngàn.)* |
| Đại | <ruby>敷金<rt>しききん</rt></ruby>や<ruby>礼金<rt>れいきん</rt></ruby>はありますか？<br>*(Có tiền đặt cọc và tiền cảm ơn không ạ?)* |
| Mori | <ruby>寮<rt>りょう</rt></ruby>なので<ruby>敷金<rt>しききん</rt></ruby>のみ<ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>です。<ruby>退去<rt>たいきょ</rt></ruby>の<ruby>時<rt>とき</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Là ký túc nên chỉ có cọc 50 ngàn. Khi trả phòng lấy lại.)* |
| Đại | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>同<rt>おな</rt></ruby>じフロアにはどんな<ruby>方<rt>かた</rt></ruby>がいらっしゃいますか？<br>*(Vâng, em hiểu rồi. Cùng tầng có những ai ạ?)* |
| Mori | <ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>すでに<ruby>住<rt>す</rt></ruby>んでいます。バーラさん（モンゴル）、リムさん（ベトナム、<ruby>女性<rt>じょせい</rt></ruby>）、ジョンさん（アメリカ）です。<br>*(Đã có 3 người. Bahra (Mông Cổ), Rim (Việt Nam, nữ), John (Mỹ).)* |
| Đại | え、リムさんはベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>女性<rt>じょせい</rt></ruby>ですか？<ruby>男女<rt>だんじょ</rt></ruby><ruby>混合<rt>こんごう</rt></ruby>フロアですか？<br>*(Ơ, Rim là người Việt nữ ạ? Tầng nam nữ chung ạ?)* |
| Mori | はい、フロアは<ruby>男女<rt>だんじょ</rt></ruby><ruby>混合<rt>こんごう</rt></ruby>ですが、<ruby>個室<rt>こしつ</rt></ruby>は<ruby>鍵<rt>かぎ</rt></ruby><ruby>付<rt>つ</rt></ruby>きで<ruby>安全<rt>あんぜん</rt></ruby>です。<br>*(Vâng, tầng thì nam nữ chung, nhưng phòng riêng có khoá an toàn.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em hiểu rồi. Em xin nhờ ạ.)* |

---

## Tình huống 4 — Phòng homestay · sáng 1/4, đóng gói đồ

*5 thùng carton xếp giữa phòng. Yumi đứng cửa nhìn.*

| Vai | Lời thoại |
|---|---|
| Yumi | (luyện tiếng Việt) Chúc... may... mắn... ở... ký... túc!<br>*(Học từ.)* |
| Đại | (tiếng Việt) Trời, cô học cả câu này nữa hả? |
| Yumi | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>したで。<br>*(Cười. Tôi tập 1 tuần đó.)* |
| Đại | （<ruby>段ボール<rt>だんボール</rt></ruby>を<ruby>閉<rt>と</rt></ruby>じる）これで<ruby>最後<rt>さいご</rt></ruby>です。<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Đóng carton. Cái cuối rồi. Cả 5 thùng xong.)* |
| Yumi | （<ruby>部屋<rt>へや</rt></ruby>を<ruby>見回<rt>みまわ</rt></ruby>す）<ruby>空<rt>から</rt></ruby>っぽになったなあ…<br>*(Nhìn quanh phòng. Trống không rồi…)* |
| Đại | （<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>住<rt>す</rt></ruby>んだ<ruby>部屋<rt>へや</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>胸<rt>むね</rt></ruby>がいっぱいです。<br>*(Nhìn căn phòng đã ở 1 năm. Em nghẹn ngào.)* |
| Yumi | いつでも<ruby>帰<rt>かえ</rt></ruby>って<ruby>来<rt>き</rt></ruby>てええんやで。この<ruby>部屋<rt>へや</rt></ruby>はそのままにしとくから。<br>*(Lúc nào quay lại cũng được. Phòng này tôi để nguyên đó.)* |
| Đại | （<ruby>涙<rt>なみだ</rt></ruby>ぐむ）はい…<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Rưng rưng. Vâng… cảm ơn cô thật sự.)* |
| Tony | （<ruby>下<rt>した</rt></ruby>から）ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>車<rt>くるま</rt></ruby><ruby>用意<rt>ようい</rt></ruby>できたで！<br>*(Từ tầng dưới. Đại, xe sẵn rồi!)* |
| Đại | はい、<ruby>今<rt>いま</rt></ruby><ruby>行<rt>い</rt></ruby>きます！<br>*(Vâng, em xuống ngay!)* |

---

## Tình huống 5 — Trước cổng nhà Tanaka · 10:30, cúi chào tạm biệt

*5 thùng đã chất lên xe. Đại đứng trước Tony và Yumi, cúi gập người.*

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Cúi sâu. Một năm qua, cháu thực sự được cô chú chăm sóc.)* |
| Tony | こちらこそ、ダイ<ruby>君<rt>くん</rt></ruby>。<ruby>息子<rt>むすこ</rt></ruby>がもう<ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby>できたみたいで<ruby>嬉<rt>うれ</rt></ruby>しかった。<br>*(Tôi mới phải nói. Có cảm giác như có thêm một đứa con trai, vui lắm.)* |
| Yumi | <ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてや。<ruby>無理<rt>むり</rt></ruby>せんように。<br>*(Giữ gìn sức khoẻ nhé. Đừng cố quá.)* |
| Đại | はい。<ruby>金曜日<rt>きんようび</rt></ruby>の<ruby>夕食<rt>ゆうしょく</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>来<rt>き</rt></ruby>ます。<br>*(Vâng. Bữa tối thứ 6 em nhất định sẽ đến.)* |
| Yumi | <ruby>金曜日<rt>きんようび</rt></ruby><ruby>19<rt>じゅうく</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>肉<rt>にく</rt></ruby>じゃが<ruby>用意<rt>ようい</rt></ruby>しとくな。<br>*(Thứ 6 lúc 19h, tôi sẽ làm sẵn nikujaga.)* |
| Đại | はい、<ruby>楽<rt>たの</rt></ruby>しみにしております！では、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em mong chờ ạ! Em xin phép đi đây.)* |
| Tony | <ruby>気<rt>き</rt></ruby>ぃつけてな。<br>*(Đi cẩn thận nhé.)* |

---

## Tình huống 6 — Sảnh ký túc tầng 2 · 11:00, gặp Bahra lần đầu

*Bahra đứng ở sảnh tay cầm cốc cà phê. Đại và Tony vừa khiêng carton lên.*

| Vai | Lời thoại |
|---|---|
| Bahra | あ、<ruby>新<rt>しん</rt></ruby><ruby>入居者<rt>にゅうきょしゃ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですか？<br>*(À, người mới chuyển đến ạ?)* |
| Đại | はい！<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>出身<rt>しゅっしん</rt></ruby>はベトナムのハノイです。<br>*(Vâng! Lần đầu gặp. Em tên Nguyễn Văn Đại. Quê em Hà Nội, Việt Nam.)* |
| Bahra | バーラです。モンゴルのウランバートルから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi là Bahra. Từ Ulaanbaatar, Mông Cổ. Mong làm quen.)* |
| Đại | こちらこそ。<ruby>失礼<rt>しつれい</rt></ruby>ですが、<ruby>何<rt>なん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>ですか？<br>*(Em mới phải nói. Cho hỏi anh học năm mấy ạ?)* |
| Bahra | <ruby>関西語言学院<rt>かんさいごげんがくいん</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>です。<ruby>来年<rt>らいねん</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>です。<br>*(Năm 2 Kansai Gogo Gakuin. Sang năm thi ĐH.)* |
| Đại | え、<ruby>同<rt>おな</rt></ruby>じ<ruby>学校<rt>がっこう</rt></ruby>です！<ruby>私<rt>わたし</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>です。<br>*(Ơ, cùng trường ạ! Em năm 1.)* |
| Bahra | え、<ruby>本当<rt>ほんとう</rt></ruby>に？<ruby>偶然<rt>ぐうぜん</rt></ruby>ですね！クラスは？<br>*(Thật à? Trùng hợp ghê! Lớp nào?)* |
| Đại | Bクラスです。バーラさんは？<br>*(Lớp B. Anh Bahra thì sao?)* |
| Bahra | Eクラスです。<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>はN2<ruby>準備<rt>じゅんび</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Lớp E. Năm 2 đang ôn N2.)* |
| Tony | （<ruby>挨拶<rt>あいさつ</rt></ruby>）はじめまして、<ruby>田中<rt>たなか</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。ダイ<ruby>君<rt>くん</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>うちで<ruby>預<rt>あず</rt></ruby>かっておりました。<br>*(Chào, tôi là Tanaka. Đã chăm Đại 1 năm tại nhà.)* |
| Bahra | あ、ホームステイのご<ruby>家族<rt>かぞく</rt></ruby>ですね。お<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(À, gia đình homestay. Cảm ơn anh đã chăm sóc.)* |

---

## Tình huống 7 — Lên phòng riêng tầng 2 · 11:30, Bahra giới thiệu khu chung

| Vai | Lời thoại |
|---|---|
| Bahra | こちらがダイさんの<ruby>部屋<rt>へや</rt></ruby>です。<ruby>角部屋<rt>かどべや</rt></ruby>で<ruby>窓<rt>まど</rt></ruby>が<ruby>2<rt>ふた</rt></ruby>つあります。<br>*(Đây là phòng anh Đại. Phòng góc, có 2 cửa sổ.)* |
| Đại | わあ、<ruby>明<rt>あか</rt></ruby>るいですね！<ruby>共有<rt>きょうゆう</rt></ruby>キッチンはどこにありますか？<br>*(Wao, sáng quá! Bếp chung ở đâu ạ?)* |
| Bahra | <ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>です。<ruby>洗面所<rt>せんめんじょ</rt></ruby>と<ruby>洗濯機<rt>せんたくき</rt></ruby>も<ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>です。シャワーは<ruby>共有<rt>きょうゆう</rt></ruby>で<ruby>2<rt>ふた</rt></ruby>つあります。<br>*(Tầng 1. Phòng rửa mặt và máy giặt cũng ở tầng 1. Phòng tắm chung có 2 cái.)* |
| Đại | シャワーの<ruby>時間<rt>じかん</rt></ruby>は<ruby>決<rt>き</rt></ruby>まっていますか？<br>*(Phòng tắm có giờ quy định không?)* |
| Bahra | <ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>夜<rt>よる</rt></ruby><ruby>24<rt>にじゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>まで<ruby>使<rt>つか</rt></ruby>えます。<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>以内<rt>いない</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>します。<br>*(Dùng từ 6h sáng đến 24h. Trong vòng 20 phút thôi nhé.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。ゴミ<ruby>出<rt>だ</rt></ruby>しは？<br>*(Em rõ. Đổ rác thì sao?)* |
| Bahra | <ruby>月<rt>げつ</rt></ruby>と<ruby>木<rt>もく</rt></ruby>が<ruby>燃<rt>も</rt></ruby>えるゴミ、<ruby>水<rt>すい</rt></ruby>がプラスチック、<ruby>金<rt>きん</rt></ruby>が<ruby>缶<rt>かん</rt></ruby>とビンです。<ruby>朝<rt>あさ</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>までに<ruby>出<rt>だ</rt></ruby>してください。<br>*(2-5 rác cháy, 4 nhựa, 6 lon thuỷ tinh. Đổ trước 8h sáng.)* |
| Đại | （メモを<ruby>取<rt>と</rt></ruby>る）ありがとうございます！<br>*(Ghi sổ. Cảm ơn anh!)* |
| Tony | （カバンを<ruby>降<rt>お</rt></ruby>ろす）ダイ<ruby>君<rt>くん</rt></ruby>、わしはもう<ruby>帰<rt>かえ</rt></ruby>るわ。<br>*(Đặt va li xuống. Đại, chú về đây nhé.)* |
| Đại | はい、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>金曜日<rt>きんようび</rt></ruby><ruby>19<rt>じゅうく</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>伺<rt>うかが</rt></ruby>います。<br>*(Vâng, em cảm ơn chú thật sự. Thứ 6 19h, em nhất định ghé.)* |
| Tony | （<ruby>抱<rt>だ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>う）<ruby>気<rt>き</rt></ruby>ぃつけてな。<br>*(Ôm. Cẩn thận nhé.)* |

---

## Tình huống 8 — Phòng riêng · 14:00, dỡ đồ + hỏi Bahra về trường

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>段ボール<rt>だんボール</rt></ruby>を<ruby>開<rt>あ</rt></ruby>ける）<br>*(Mở thùng.)* |
| Bahra | （<ruby>覗<rt>のぞ</rt></ruby>く）<ruby>手伝<rt>てつだ</rt></ruby>いましょうか？<br>*(Ngó. Tôi giúp một tay nhé?)* |
| Đại | え、<ruby>本当<rt>ほんとう</rt></ruby>にいいんですか？お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Ơ, được không ạ? Nhờ anh!)* |
| Bahra | （<ruby>本<rt>ほん</rt></ruby>を<ruby>並<rt>なら</rt></ruby>べる）ダイさん、N3 もう<ruby>合格<rt>ごうかく</rt></ruby>しましたか？<br>*(Xếp sách. Đại đã đỗ N3 chưa?)* |
| Đại | はい、<ruby>去年<rt>きょねん</rt></ruby>の<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>今年<rt>ことし</rt></ruby>の<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>にN2を<ruby>受<rt>う</rt></ruby>けます。<br>*(Vâng, em đỗ tháng 12 năm ngoái. Tháng 7 này sẽ thi N2.)* |
| Bahra | <ruby>同<rt>おな</rt></ruby>じです！<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<ruby>志望<rt>しぼう</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>は？<br>*(Tôi cũng vậy! Tháng 7 cùng cố nhé. ĐH nguyện vọng?)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>経済学部<rt>けいざいがくぶ</rt></ruby>が<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>です。バーラさんは？<br>*(NV1 là ĐH Osaka khoa Kinh tế. Anh thì sao?)* |
| Bahra | <ruby>京都大学<rt>きょうとだいがく</rt></ruby><ruby>工学部<rt>こうがくぶ</rt></ruby>です。<ruby>機械<rt>きかい</rt></ruby><ruby>工学<rt>こうがく</rt></ruby><ruby>専攻<rt>せんこう</rt></ruby>。<br>*(ĐH Kyoto Kỹ thuật. Chuyên ngành cơ khí.)* |
| Đại | すごい！<ruby>京大<rt>きょうだい</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですよね。EJU の<ruby>勉強<rt>べんきょう</rt></ruby>は？<br>*(Ghê quá! ĐH Kyoto khó nhỉ. Anh ôn EJU thế nào?)* |
| Bahra | <ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>です。よかったら<ruby>夜<rt>よる</rt></ruby>、<ruby>共有<rt>きょうゆう</rt></ruby>キッチンで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しませんか？<br>*(Mỗi ngày 3 tiếng. Nếu được thì tối ở bếp chung học cùng nhé?)* |
| Đại | はい、ぜひ！<br>*(Vâng, nhất định!)* |

---

## Tình huống 9 — Bếp chung tầng 1 · 19:00, gặp Rim và John cơm tối đầu

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>下<rt>お</rt></ruby>りる、お<ruby>米<rt>こめ</rt></ruby>と<ruby>味噌<rt>みそ</rt></ruby>を<ruby>持<rt>も</rt></ruby>って）こんばんは！<br>*(Xuống bếp, mang gạo và miso. Chào!)* |
| Rim | あ、<ruby>新<rt>あたら</rt></ruby>しいルームメイト？<br>*(À, roommate mới?)* |
| Đại | (tiếng Việt) Xin chào! Em Đại, Hà Nội. |
| Rim | (tiếng Việt) Trời, người Việt nữa hả! Em Rim, Sài Gòn. Sang Nhật được 2 năm rồi. |
| Đại | (tiếng Việt) Em sang 1 năm. Đang ở Kansai Gogo, lớp B năm nhất. |
| Rim | (tiếng Việt) Trùng trường luôn. Em cũng học ở đó nhưng năm 2 lớp G. |
| John | (English-Japanese mix) Hey, you''re new! I''m John, アメリカのボストンから<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào, cậu mới hả! Tôi John, từ Boston, Mỹ.)* |
| Đại | はじめまして！グエン・ヴァン・ダイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lần đầu gặp! Em Nguyễn Văn Đại. Mong làm quen.)* |
| John | ベトナム<ruby>料理<rt>りょうり</rt></ruby><ruby>大好<rt>だいす</rt></ruby>き！フォー、いつか<ruby>作<rt>つく</rt></ruby>ってくれる？<br>*(Tôi thích món Việt lắm! Phở, khi nào nấu cho mình nhé?)* |
| Đại | （<ruby>笑<rt>わら</rt></ruby>う）はい！<ruby>来週<rt>らいしゅう</rt></ruby><ruby>末<rt>まつ</rt></ruby>、<ruby>4<rt>よ</rt></ruby><ruby>カ国<rt>かこく</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>パーティーしませんか？<br>*(Cười. Vâng! Cuối tuần tới, mình tổ chức tiệc 4 quốc gia nhé?)* |
| Rim | (tiếng Việt) Hay đó! Em phở, anh John pizza, anh Bahra mì Mông Cổ, anh… thêm món gì? |
| Đại | (tiếng Việt) Anh thêm chả giò. Có nem rán cuốn tay. |
| Bahra | （<ruby>降<rt>お</rt></ruby>りてくる）<ruby>4<rt>よ</rt></ruby><ruby>カ国<rt>かこく</rt></ruby><ruby>家族<rt>かぞく</rt></ruby>ですね！<br>*(Đi xuống. Gia đình 4 quốc gia luôn!)* |

---

## Tình huống 10 — Phòng riêng · 23:00 đêm đầu, tự kê giường + tủ

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>く）<br>*(Trải futon.)* |
| Đại | (LINE Yumi) ユミさん、<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>し<ruby>終<rt>お</rt></ruby>わりました。<ruby>夜<rt>よる</rt></ruby>はバーラさん、リムさん、ジョンさんと<ruby>4<rt>よ</rt></ruby><ruby>カ国<rt>かこく</rt></ruby>で<ruby>夕食<rt>ゆうしょく</rt></ruby>でした。<br>*(Cô Yumi, em chuyển xong an toàn. Tối ăn với 3 bạn — 4 quốc gia.)* |
| Yumi | (LINE) よかった！<ruby>金曜日<rt>きんようび</rt></ruby><ruby>楽<rt>たの</rt></ruby>しみにしてるな。<ruby>肉<rt>にく</rt></ruby>じゃがの<ruby>材料<rt>ざいりょう</rt></ruby><ruby>用意<rt>ようい</rt></ruby>するで。<br>*(Mừng quá! Thứ 6 cô mong chờ nhé. Tôi chuẩn bị nguyên liệu nikujaga.)* |
| Đại | (LINE) はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします！おやすみなさい。<br>*(Vâng, mong cô! Chúc cô ngủ ngon.)* |

---

## Tình huống 11 — Phòng riêng · 23:30, video call Mai (cảnh tiếng Việt)

> Cảnh tiếng Việt — Đại tổng kết ngày đầu ký túc với Mai qua video.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi, anh xong rồi. Đang nằm trên futon ở phòng mới. |
| Mai | (tiếng Việt) Để em xem phòng đi. Anh quay lên đi. |
| Đại | (tiếng Việt, quay phòng) Đây nè. 8 jou, tầm 13 mét vuông. Phòng góc, 2 cửa sổ. Bàn, futon, tủ áo, tủ lạnh nhỏ — đủ hết. |
| Mai | (tiếng Việt) Đẹp đó. Sáng sủa. Mấy bạn cùng tầng sao? |
| Đại | (tiếng Việt) 4 quốc gia luôn. Bahra Mông Cổ, Rim Việt Nam — Sài Gòn, John Mỹ Boston. Tối nay ăn chung. Rim đã 2 năm Nhật, nói tiếng Việt giọng Nam ngọt lắm. |
| Mai | (tiếng Việt) Rim… nữ hả? |
| Đại | (tiếng Việt, cười) Ừ, nữ. Năm 2. Cô ấy nhắm ĐH Kyoto. |
| Mai | (tiếng Việt) Anh nhớ giữ khoảng cách đó. |
| Đại | (tiếng Việt) Em yên tâm. Phòng có khoá, không có chuyện gì đâu. Hơn nữa anh còn omamori Kiyomizu em đeo rồi đấy thôi. |
| Mai | (tiếng Việt) Hihi. À, chi phí thế nào? |
| Đại | (tiếng Việt) Nhà 40 nghìn yên, tiện ích 10 nghìn, tổng 50 nghìn — rẻ hơn homestay 30 nghìn. Còn cọc 50 nghìn lấy lại khi trả phòng. Lương Lawson tháng 70 nghìn — vừa đủ. |
| Mai | (tiếng Việt) Tốt rồi. Còn cô chú Tanaka? |
| Đại | (tiếng Việt) Cô Yumi khóc nhẹ lúc tiễn. Anh hứa thứ 6 nào cũng về ăn tối. Cô bảo sẽ làm nikujaga. |
| Mai | (tiếng Việt) Cô chú thương anh thật lòng. Anh đừng quên. |
| Đại | (tiếng Việt) Anh không quên đâu. Mà em ơi, tháng 8 anh được nghỉ hè, em có sang Osaka thăm anh không? |
| Mai | (tiếng Việt) Em đang để dành tiền đi. Nếu visa được, tháng 8 em qua. |
| Đại | (tiếng Việt) Anh đợi. Mai sẽ ở phòng anh hoặc thuê Airbnb gần đây. Khoe em chỗ này. |
| Mai | (tiếng Việt) Ừ. Đi ngủ đi anh. Mai còn dạy lớp 7. |
| Đại | (tiếng Việt) Vâng. Chúc em ngủ ngon. Yêu em. |

---

## Đọng lại chương 11

Một ngày dài, Đại chuyển từ homestay Tanaka sang ký túc xá Kansai Gogo. Bắt đầu là **thông báo quyết định** với host bằng **「実は、〜したいと思っております」**, trình bày 3 lý do theo cấu trúc **「1つ目は・2つ目は・3つ目は」** (tự lập, gần bạn học, tiết kiệm gửi mẹ). Nộp đơn ký túc với mẫu **「家賃はいくらですか・敷金や礼金はありますか」**. Tạm biệt host bằng cúi sâu **「1年間お世話になりました」** và cam kết **金曜日の夕食必ず来ます**. Giới thiệu bản thân với Bahra (Mông Cổ) bằng **「グエン・ヴァン・ダイと申します・出身はベトナムのハノイです」**, hỏi cấu trúc ký túc **「〜はどこにありますか」**. Gặp Rim (VN) và John (Mỹ) trong bếp chung — tổ chức **4ヶ国料理パーティー** cuối tuần. Đêm video Mai bằng tiếng Việt, hứa hè tháng 8 sẽ đón Mai sang Osaka thăm.

> Từ vựng & mẫu câu chương này: 引っ越し・大切な話・実は・申し訳ありません・お世話になりました・1つ目は・2つ目は・3つ目は・自立・家賃・光熱費・共益費・敷金・礼金・申込書・記入・寮・個室・鍵付き・男女混合・段ボール・空っぽ・第2の家族・巣立つ・気をつけて・出身・〜と申します・〜年生・志望大学・経済学部・工学部・専攻・共有キッチン・洗面所・洗濯機・シャワー・ゴミ出し・燃えるゴミ・プラスチック・角部屋・4カ国料理・モンゴル・ボストン・ハノイ・サイゴン・布団・〜はどこにありますか・〜を手伝いましょうか・〜たいと思っております

## Bí quyết chương

- **Cấu trúc 3 lý do "1つ目・2つ目・3つ目"**: Mẫu trình bày chính thức trong tiếng Nhật — dùng được khi xin thầy, xin sempai, xin sếp.
- **Hỏi chi phí thuê nhà**: 家賃・敷金・礼金・光熱費・共益費 — 5 từ phải biết khi thuê nhà ở Nhật. Sách 24 sẽ dùng lại khi Đại thuê apartment Toyonaka.
- **Cúi chào tạm biệt 1年間お世話になりました**: Mẫu chuẩn khi rời host, rời nơi làm việc, rời thầy cô.
- **Roommate 4 quốc gia**: Rim (VN) sẽ là người dẫn dắt EJU cho Đại — sách 18 sẽ làm rõ. John (Mỹ) sẽ về nước cuối năm 1 — chỉ xuất hiện sách 17.
- **Hứa thứ 6 ăn tối Tanaka**: Mạch duy trì host — sách 18-20 đều có cảnh thứ 6 nhà Tanaka.
- **Mai hứa sang tháng 8**: Mở mạch cho sách 18 — Mai sẽ thực sự sang Osaka 1 tuần.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 引っ越し | ひっこし | DẪN VIỆT | Chuyển nhà |
| 寮 | りょう | LIÊU | Ký túc xá |
| 実は | じつは | THỰC | Thực ra |
| 自立 | じりつ | TỰ LẬP | Tự lập |
| 勉強会 | べんきょうかい | MIỄN CƯỜNG HỘI | Nhóm học |
| 送金 | そうきん | TỐNG KIM | Gửi tiền |
| 沈黙 | ちんもく | TRẦM MẶC | Im lặng |
| 我が子 | わがこ | NGÃ TỬ | Con của mình |
| 巣立つ | すだつ | SÀO LẬP | Ra tổ, rời nhà |
| 応援 | おうえん | ỨNG VIỆN | Cổ vũ, ủng hộ |
| 段ボール | だんボール | ĐOẠN | Thùng carton |
| 肉じゃが | にくじゃが | NHỤC | Món thịt khoai hầm |
| 申込書 | もうしこみしょ | THÂN ÁP THƯ | Đơn đăng ký |
| 光熱費 | こうねつひ | QUANG NHIỆT PHÍ | Tiền điện nước ga |
| 共益費 | きょうえきひ | CỘNG ÍCH PHÍ | Phí tiện ích chung |
| 敷金 | しききん | PHU KIM | Tiền cọc |
| 礼金 | れいきん | LỄ KIM | Tiền cảm ơn (thuê nhà) |
| 退去 | たいきょ | THOÁI KHỨ | Trả phòng, rời đi |
| フロア | — | — | Tầng |
| 個室 | こしつ | CÁ THẤT | Phòng riêng |
| 鍵付き | かぎつき | KIỆN PHÓ | Có khoá |
| 男女混合 | だんじょこんごう | NAM NỮ HỖN HỢP | Nam nữ chung |
| 空っぽ | からっぽ | KHÔNG | Trống không |
| 胸 | むね | HUNG | Ngực, lòng |
| 新入居者 | しんにゅうきょしゃ | TÂN NHẬP CƯ GIẢ | Người mới chuyển đến |
| 角部屋 | かどべや | GIÁC PHÒNG | Phòng góc |
| 明るい | あかるい | MINH | Sáng |
| 洗面所 | せんめんじょ | TẨY DIỆN SỞ | Phòng rửa mặt |
| 洗濯機 | せんたくき | TẨY TRẠC CƠ | Máy giặt |
| 燃えるゴミ | もえるゴミ | NHIÊN | Rác cháy được |
| プラスチック | — | — | Nhựa |
| ビン | — | — | Chai thuỷ tinh |
| ゴミ出し | ゴミだし | XUẤT | Đổ rác |
| 工学部 | こうがくぶ | CÔNG HỌC BỘ | Khoa Kỹ thuật |
| 機械工学 | きかいこうがく | CƠ GIỚI CÔNG HỌC | Cơ khí |
| 専攻 | せんこう | CHUYÊN CÔNG | Chuyên ngành |
| ルームメイト | — | — | Bạn cùng phòng/tầng |
| 痩せる | やせる | SẤU | Gầy đi |
| 自炊 | じすい | TỰ XUÝ | Tự nấu |
| 下手 | へた | HẠ THỦ | Vụng |
| 無事 | ぶじ | VÔ SỰ | An toàn |
| 段落 | だんらく | ĐOẠN LẠC | Đoạn văn |
| 抱き合う | だきあう | BÃO HỢP | Ôm nhau |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (819000012, 800000019, NULL, 'markdown_book', 'T12. 1年経過 — Kế hoạch năm 2 + tìm hiểu ĐH (1年経過)', '# Sách du học sinh tiếng Nhật · T12. 1年経過 — Kế hoạch năm 2 + tìm hiểu ĐH (1年経過)

> **Mục tiêu nhân vật:** Đại (19 tuổi, du học sinh tròn 12 tháng ở Osaka, 4/2025). Học các mẫu hội thoại tiếng Nhật cho **面談 cuối năm 1 trường tiếng**: nhận đánh giá thành tích từ sensei (おかげさまで〜できました), trình bày kế hoạch ĐH theo thứ tự nguyện vọng (第1志望は〜です), hỏi quy trình EJU và 留学生入試 (〜の流れを教えてください), trao đổi với sempai để xin lời khuyên (アドバイスをいただけますか), bàn ngân sách năm 2 với host cũ (お金の相談), chia sẻ kế hoạch 5 năm với Mai qua video (5年後の目標), và viết tổng kết năm 1 dưới dạng nhật ký song ngữ.

---

## Bối cảnh

Cuối tháng 4/2025. Đại đã tròn 12 tháng ở Osaka, vừa qua N3 (110/180) và 1 tháng đầu ở ký túc xá. Yamada-sensei tổ chức **面談 cá nhân** 30 phút cho mỗi học viên, đánh giá năm 1 và lên kế hoạch năm 2 — trọng tâm là **EJU**, **N2**, và **入学願書** ĐH. Đại nhắm 3 nguyện vọng: Osaka U (kinh tế, NV1 quốc lập), Kobe U (kinh doanh, NV2), Kansai U (thương, NV3 tư an toàn). Sempai Rim 2 năm cùng ký túc là người dẫn dắt. Chương này tập trung mẫu câu **面談・志望大学・EJU・志望理由書・5 năm vision**.

---

## Tình huống 1 — Phòng họp trường · 14:00 thứ 3, vào cuộc 面談

*Phòng họp nhỏ tầng 2 trường Kansai Gogo. Yamada ngồi sẵn với 1 chồng hồ sơ. Đại gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Đại | （ノック）<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Gõ cửa. Em xin phép.)* |
| Yamada | はい、どうぞ。ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Vâng, mời. Đại, ngồi đi em.)* |
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin phép. Mong cô chỉ bảo.)* |
| Yamada | <ruby>今日<rt>きょう</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りと、<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>のプランを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えましょう。<br>*(Hôm nay cùng nhìn lại năm 1 và bàn kế hoạch năm 2 nhé.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em mong cô chỉ bảo ạ.)* |
| Yamada | まず、<ruby>君<rt>きみ</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。JLPT N3 <ruby>合格<rt>ごうかく</rt></ruby> 110<ruby>点<rt>てん</rt></ruby>、よく<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Trước tiên xác nhận thành tích năm 1. JLPT N3 đỗ 110 điểm, em cố gắng tốt.)* |
| Đại | おかげさまで、<ruby>合格<rt>ごうかく</rt></ruby>することができました。<br>*(Nhờ cô em đã đỗ ạ.)* |
| Yamada | <ruby>遅刻<rt>ちこく</rt></ruby>・<ruby>欠席<rt>けっせき</rt></ruby><ruby>0<rt>ゼロ</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>文化<rt>ぶんか</rt></ruby><ruby>交流<rt>こうりゅう</rt></ruby>プレゼン<ruby>93<rt>きゅうじゅうさん</rt></ruby><ruby>点<rt>てん</rt></ruby>でクラス<ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>、ローソンのバイト<ruby>10<rt>じゅっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>。<br>*(Đi muộn vắng 0 lần, thuyết trình giao lưu văn hoá 93 điểm hạng 1 lớp, baito Lawson 10 tháng.)* |
| Đại | （<ruby>頭<rt>あたま</rt></ruby><ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<br>*(Cúi đầu. Em cảm ơn cô.)* |

---

## Tình huống 2 — Phòng họp · 14:15, Yamada giải thích kết quả N2 mô phỏng

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>次<rt>つぎ</rt></ruby>に、<ruby>先週<rt>せんしゅう</rt></ruby>のN2<ruby>模試<rt>もし</rt></ruby><ruby>結果<rt>けっか</rt></ruby>を<ruby>見<rt>み</rt></ruby>ましょう。<br>*(Tiếp đến, xem kết quả mô phỏng N2 tuần trước.)* |
| Đại | はい、ドキドキしています。<br>*(Vâng, em hồi hộp lắm.)* |
| Yamada | <ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby> <ruby>30<rt>さんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby> <ruby>35<rt>さんじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby> <ruby>45<rt>よんじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby> <ruby>110<rt>ひゃくじゅう</rt></ruby>/<ruby>180<rt>ひゃくはちじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<br>*(Từ vựng 30, đọc 35, nghe 45, tổng 110/180.)* |
| Đại | え、<ruby>合格<rt>ごうかく</rt></ruby>ですか？N2の<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>はいくつですか？<br>*(Ơ, đỗ ạ? Mức đỗ N2 là bao nhiêu?)* |
| Yamada | <ruby>90<rt>きゅうじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby>ラインを<ruby>超<rt>こ</rt></ruby>えています。でも、<ruby>余裕<rt>よゆう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないですね。<br>*(90 điểm. Em vượt mức. Nhưng biên độ còn ít.)* |
| Đại | <ruby>本番<rt>ほんばん</rt></ruby>は<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>ですね。あと<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>あります。<br>*(Thi thật tháng 7. Còn 3 tháng.)* |
| Yamada | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>140<rt>ひゃくよんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>狙<rt>ねら</rt></ruby>いましょう。<ruby>特<rt>とく</rt></ruby>に<ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>と<ruby>読解<rt>どっかい</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>してください。<br>*(3 tháng nhắm 140 điểm. Đặc biệt tăng cường từ vựng và đọc.)* |
| Đại | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>漢字<rt>かんじ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>と<ruby>長文<rt>ちょうぶん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>読<rt>よ</rt></ruby>みます。<br>*(Vâng, mỗi ngày em sẽ học 30 chữ Hán và đọc 2 bài dài.)* |

---

## Tình huống 3 — Phòng họp · 14:35, trình bày nguyện vọng ĐH

| Vai | Lời thoại |
|---|---|
| Yamada | では、<ruby>大学<rt>だいがく</rt></ruby><ruby>進学<rt>しんがく</rt></ruby>プランを<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Vậy thì cho cô nghe kế hoạch lên ĐH.)* |
| Đại | はい、<ruby>3<rt>みっ</rt></ruby>つの<ruby>志望<rt>しぼう</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Vâng, em đang nhắm 3 trường nguyện vọng.)* |
| Đại | <ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>は<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>経済学部<rt>けいざいがくぶ</rt></ruby>です。<br>*(NV1 là ĐH Osaka khoa Kinh tế.)* |
| Đại | <ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>は<ruby>神戸大学<rt>こうべだいがく</rt></ruby><ruby>経営学部<rt>けいえいがくぶ</rt></ruby>です。<br>*(NV2 là ĐH Kobe khoa Kinh doanh.)* |
| Đại | <ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>は<ruby>関西大学<rt>かんさいだいがく</rt></ruby><ruby>商学部<rt>しょうがくぶ</rt></ruby>です。<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めの<ruby>私立<rt>しりつ</rt></ruby>です。<br>*(NV3 là ĐH Kansai khoa Thương. Là trường tư an toàn.)* |
| Yamada | <ruby>3<rt>さん</rt></ruby><ruby>校<rt>こう</rt></ruby>とも<ruby>合理的<rt>ごうりてき</rt></ruby>な<ruby>選択<rt>せんたく</rt></ruby>です。<ruby>大阪大<rt>おおさかだい</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んだ<ruby>理由<rt>りゆう</rt></ruby>は？<br>*(Cả 3 đều là lựa chọn hợp lý. Lý do chọn Osaka U?)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つあります。<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>関西<rt>かんさい</rt></ruby><ruby>地方<rt>ちほう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>の<ruby>国立<rt>こくりつ</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>だからです。<br>*(Có 3 lý do. Một, là ĐH quốc lập hàng đầu vùng Kansai.)* |
| Đại | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>学費<rt>がくひ</rt></ruby>が<ruby>535,800<rt>ごじゅうごまんさんぜんはっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>と<ruby>安<rt>やす</rt></ruby>く、<ruby>私立<rt>しりつ</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>の<ruby>1<rt>いち</rt></ruby>ぐらいだからです。<br>*(Hai, học phí 535.800 yên, rẻ bằng 1/3 trường tư.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>奨学金<rt>しょうがくきん</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>があるからです。<br>*(Ba, có học bổng du học sinh 50 ngàn yên/tháng.)* |
| Yamada | よく<ruby>調<rt>しら</rt></ruby>べていますね。<br>*(Em tìm hiểu kỹ đấy.)* |

---

## Tình huống 4 — Phòng họp · 15:00, Yamada giải thích quy trình EJU

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>入試<rt>にゅうし</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cô ơi, cho em biết quy trình thi tuyển du học sinh được không ạ?)* |
| Yamada | はい。<ruby>4<rt>よっ</rt></ruby>つのステップがあります。<ruby>1<rt>いち</rt></ruby>、EJU<ruby>受験<rt>じゅけん</rt></ruby>。<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>と<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>あります。<br>*(Vâng. Có 4 bước. 1: Thi EJU, tháng 6 và tháng 11, một năm 2 lần.)* |
| Đại | すみません、EJUというのは？<br>*(Xin lỗi, EJU là gì ạ?)* |
| Yamada | <ruby>日本<rt>にほん</rt></ruby><ruby>留学試験<rt>りゅうがくしけん</rt></ruby>です。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>のセンター<ruby>試験<rt>しけん</rt></ruby>です。<br>*(Là "Kỳ thi du học Nhật Bản". Kỳ thi trung tâm dành riêng du học sinh.)* |
| Đại | <ruby>科目<rt>かもく</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Có những môn nào ạ?)* |
| Yamada | <ruby>日本語<rt>にほんご</rt></ruby>、<ruby>総合科目<rt>そうごうかもく</rt></ruby>、<ruby>数学<rt>すうがく</rt></ruby>、<ruby>理科<rt>りか</rt></ruby>です。<ruby>経済学部<rt>けいざいがくぶ</rt></ruby>なら<ruby>日本語<rt>にほんご</rt></ruby>＋<ruby>総合科目<rt>そうごうかもく</rt></ruby>＋<ruby>数学<rt>すうがく</rt></ruby>コース<ruby>1<rt>いち</rt></ruby>です。<br>*(Tiếng Nhật, môn tổng hợp, toán, lý hoá. Khoa Kinh tế thì cần tiếng Nhật + tổng hợp + toán khoá 1.)* |
| Đại | （メモを<ruby>取<rt>と</rt></ruby>る）<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のステップは？<br>*(Ghi sổ. Bước 2 là gì ạ?)* |
| Yamada | <ruby>2<rt>に</rt></ruby>、<ruby>大学<rt>だいがく</rt></ruby><ruby>独自<rt>どくじ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と<ruby>面接<rt>めんせつ</rt></ruby>です。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>です。<ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>も<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(2: Thi riêng của ĐH và phỏng vấn, từ tháng 12 đến tháng 2. Nộp đơn lý do nguyện vọng.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>と<ruby>4<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は？<br>*(Bước 3 và 4 ạ?)* |
| Yamada | <ruby>3<rt>さん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>が<ruby>2<rt>に</rt></ruby>〜<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>。<ruby>4<rt>よん</rt></ruby>、<ruby>入学<rt>にゅうがく</rt></ruby>が<ruby>2026<rt>にせんにじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>です。<br>*(3: Công bố KQ tháng 2-3. 4: Nhập học tháng 4/2026.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。EJUは<ruby>両方<rt>りょうほう</rt></ruby><ruby>受<rt>う</rt></ruby>けたほうがいいですか？<br>*(Em hiểu rồi. EJU nên thi cả 2 đợt không ạ?)* |
| Yamada | はい、<ruby>両方<rt>りょうほう</rt></ruby><ruby>受<rt>う</rt></ruby>けて、<ruby>高<rt>たか</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>しましょう。N2<ruby>本番<rt>ほんばん</rt></ruby>と<ruby>並行<rt>へいこう</rt></ruby>で<ruby>大変<rt>たいへん</rt></ruby>ですが、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Vâng, thi cả 2 và nộp đợt cao. Trùng với N2 nên vất vả nhưng cố gắng nhé.)* |

---

## Tình huống 5 — Hành lang trường · 16:00, gặp sempai Rim xin lời khuyên

*Đại tan 面談 ra hành lang, gặp Rim đang chờ thư viện. Rim 2 năm trước, năm nay nhắm Kyoto.*

| Vai | Lời thoại |
|---|---|
| Đại | リム<ruby>先輩<rt>せんぱい</rt></ruby>！ちょっとお<ruby>時間<rt>じかん</rt></ruby>いいですか？<br>*(Chị Rim! Chị có chút thời gian không?)* |
| Rim | あ、ダイ<ruby>君<rt>くん</rt></ruby>。<ruby>面談<rt>めんだん</rt></ruby><ruby>終<rt>お</rt></ruby>わった？<br>*(À, Đại. Buổi gặp đánh giá (mendan) xong rồi à?)* |
| Đại | はい！<ruby>志望<rt>しぼう</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>を<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>経済<rt>けいざい</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby>にしました。<ruby>先輩<rt>せんぱい</rt></ruby>のアドバイスをいただけますか？<br>*(Vâng! Em đặt Osaka U Kinh tế là NV1. Cho em xin lời khuyên của chị được không?)* |
| Rim | もちろん。<ruby>5<rt>いつ</rt></ruby>つあるよ。<ruby>聞<rt>き</rt></ruby>く？<br>*(Tất nhiên. Có 5 cái. Em nghe nhé?)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Vâng, nhờ chị!)* |
| Rim | <ruby>1<rt>いち</rt></ruby>、EJUは<ruby>350<rt>さんびゃくごじゅう</rt></ruby>/<ruby>450<rt>よんひゃくごじゅう</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>に。<ruby>大阪大<rt>おおさかだい</rt></ruby>は<ruby>340<rt>さんびゃくよんじゅう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>。<br>*(1: EJU nhắm 350/450. Osaka U cần trên 340.)* |
| Rim | <ruby>2<rt>に</rt></ruby>、トレーニング<ruby>学校<rt>がっこう</rt></ruby>のGPAは<ruby>85<rt>はちじゅうご</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。これ、<ruby>絶対<rt>ぜったい</rt></ruby>。<br>*(2: GPA trường tiếng phải trên 85. Bắt buộc.)* |
| Rim | <ruby>3<rt>さん</rt></ruby>、N1を<ruby>取<rt>と</rt></ruby>って。N2でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だけど、N1あると<ruby>強<rt>つよ</rt></ruby>い。<br>*(3: Lấy N1. N2 đủ điều kiện nhưng N1 mạnh hơn.)* |
| Đại | え、N1ですか！？<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Ơ, N1 ạ!? Em sẽ thử tháng 12.)* |
| Rim | <ruby>4<rt>よん</rt></ruby>、<ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>は<ruby>1500<rt>せんごひゃく</rt></ruby><ruby>字<rt>じ</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<ruby>明日<rt>あした</rt></ruby><ruby>私<rt>わたし</rt></ruby>のサンプルを<ruby>送<rt>おく</rt></ruby>るね。<br>*(4: Đơn lý do 1500 chữ. Quan trọng nhất. Mai chị gửi mẫu cho.)* |
| Rim | <ruby>5<rt>ご</rt></ruby>、<ruby>面接<rt>めんせつ</rt></ruby>では<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>のキャリアビジョンが<ruby>聞<rt>き</rt></ruby>かれる。<ruby>準備<rt>じゅんび</rt></ruby>しといて。<br>*(5: Phỏng vấn sẽ hỏi tầm nhìn 5 năm. Chuẩn bị sẵn.)* |
| Đại | はい、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！<ruby>今夜<rt>こんや</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>キッチンで<ruby>続<rt>つづ</rt></ruby>き<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Vâng, em cảm ơn chị thật sự! Tối nay bếp chung em hỏi tiếp được không?)* |
| Rim | いいよ、<ruby>21<rt>にじゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>に。<br>*(Được. 21h nhé.)* |

---

## Tình huống 6 — Bếp chung ký túc · 21:00, Rim cho xem 志望理由書 mẫu

| Vai | Lời thoại |
|---|---|
| Rim | (mở laptop) これは<ruby>私<rt>わたし</rt></ruby>の<ruby>京大<rt>きょうだい</rt></ruby><ruby>用<rt>よう</rt></ruby><ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>のサンプル。<br>*(Đây là mẫu đơn lý do của chị cho ĐH Kyoto.)* |
| Đại | （<ruby>読<rt>よ</rt></ruby>む）すごい！<ruby>構成<rt>こうせい</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>ですね。<br>*(Đọc. Wao, cấu trúc rõ ràng quá.)* |
| Rim | <ruby>4<rt>よっ</rt></ruby>つの<ruby>段落<rt>だんらく</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けるんよ。<ruby>1<rt>いち</rt></ruby>、なぜこの<ruby>大学<rt>だいがく</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んだか。<br>*(Chia 4 đoạn. 1: Vì sao chọn trường này.)* |
| Rim | <ruby>2<rt>に</rt></ruby>、なぜこの<ruby>学部<rt>がくぶ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んだか。<ruby>3<rt>さん</rt></ruby>、<ruby>大学<rt>だいがく</rt></ruby>で<ruby>何<rt>なに</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>したいか。<ruby>4<rt>よん</rt></ruby>、<ruby>卒業<rt>そつぎょう</rt></ruby><ruby>後<rt>ご</rt></ruby>のキャリアプラン。<br>*(2: Vì sao chọn khoa. 3: Học gì ở ĐH. 4: Kế hoạch sau tốt nghiệp.)* |
| Đại | <ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>経済学部<rt>けいざいがくぶ</rt></ruby><ruby>用<rt>よう</rt></ruby>に<ruby>書<rt>か</rt></ruby>くなら、<ruby>3<rt>さん</rt></ruby><ruby>段落<rt>だんらく</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>何<rt>なに</rt></ruby>がいいでしょうか？<br>*(Viết cho ĐH Osaka Kinh tế thì đoạn 3 nên viết gì ạ?)* |
| Rim | ベトナムと<ruby>日本<rt>にほん</rt></ruby>の<ruby>経済<rt>けいざい</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>とか、<ruby>日越<rt>にちえつ</rt></ruby>ビジネスの<ruby>研究<rt>けんきゅう</rt></ruby>とか。ダイ<ruby>君<rt>くん</rt></ruby>のバックグラウンドを<ruby>活<rt>い</rt></ruby>かして。<br>*(Quan hệ kinh tế Việt-Nhật, hay nghiên cứu doanh nghiệp Nhật-Việt. Tận dụng nền tảng của em.)* |
| Đại | なるほど！「<ruby>日越<rt>にちえつ</rt></ruby><ruby>経済<rt>けいざい</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>を<ruby>研究<rt>けんきゅう</rt></ruby>して、<ruby>将来<rt>しょうらい</rt></ruby><ruby>日系<rt>にっけい</rt></ruby><ruby>企業<rt>きぎょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きたい」というストーリー。<br>*(Em hiểu rồi! "Nghiên cứu quan hệ Việt-Nhật, sau làm cho công ty Nhật" — câu chuyện đó.)* |
| Rim | そう、それを<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>くといい。たとえばトヨタとか、パナソニックとか。<br>*(Đúng. Viết cụ thể vào nhé. Ví dụ Toyota, Panasonic chẳng hạn.)* |
| Đại | はい、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>初稿<rt>しょこう</rt></ruby>を<ruby>書<rt>か</rt></ruby>いて<ruby>見<rt>み</rt></ruby>てもらえますか？<br>*(Vâng, tuần tới em viết bản nháp, chị xem được không?)* |
| Rim | いいよ。<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>送<rt>おく</rt></ruby>って。<br>*(Được. Cứ gửi không ngại.)* |

---

## Tình huống 7 — Phòng riêng · 22:00, lập kế hoạch năm 2 chi tiết

*Đại mở laptop, gõ kế hoạch 12 tháng vào Notion. Bahra ngó qua cửa.*

| Vai | Lời thoại |
|---|---|
| Bahra | （<ruby>覗<rt>のぞ</rt></ruby>く）プラン<ruby>立<rt>た</rt></ruby>てているの？<br>*(Ngó vào. Đang lập kế hoạch hả?)* |
| Đại | はい、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>です。<ruby>見<rt>み</rt></ruby>てもらえますか？<br>*(Vâng, kế hoạch năm 2. Anh xem giúp em được không?)* |
| Bahra | （<ruby>読<rt>よ</rt></ruby>む）<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby> EJU<ruby>集中<rt>しゅうちゅう</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>…<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby> EJU<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>…<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby> N2<ruby>本番<rt>ほんばん</rt></ruby>。<br>*(Đọc. 5/2025 ôn EJU. 6/2025 EJU đợt 1. 7/2025 thi N2 thật.)* |
| Đại | はい、<ruby>8<rt>はち</rt></ruby>～<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>は<ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>とオープンキャンパス。<br>*(Vâng, 8-9 là viết đơn lý do và tham quan open campus.)* |
| Bahra | <ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby> <ruby>大阪大<rt>おおさかだい</rt></ruby>の<ruby>願書<rt>がんしょ</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby> EJU<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby> N1<ruby>挑戦<rt>ちょうせん</rt></ruby>。<br>*(10/2025 ĐH Osaka mở đăng ký, 11/2025 EJU đợt 2, 12/2025 thử N1.)* |
| Đại | <ruby>1<rt>いち</rt></ruby>～<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>2026<rt>にせんにじゅうろく</rt></ruby> <ruby>独自<rt>どくじ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と<ruby>面接<rt>めんせつ</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby> <ruby>合格<rt>ごうかく</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby> <ruby>入学<rt>にゅうがく</rt></ruby>。<br>*(1-2/2026 thi riêng + phỏng vấn, 3 công bố, 4 nhập học.)* |
| Bahra | バランスの<ruby>取<rt>と</rt></ruby>れたいいプランだね。<ruby>頑張<rt>がんば</rt></ruby>ろう、<ruby>僕<rt>ぼく</rt></ruby>も<ruby>京大<rt>きょうだい</rt></ruby>を<ruby>狙<rt>ねら</rt></ruby>っているよ。<br>*(Kế hoạch cân đối hay đấy. Cùng cố, tớ cũng nhắm Kyoto.)* |
| Đại | はい、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>日曜日<rt>にちようび</rt></ruby><ruby>進捗<rt>しんちょく</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>しませんか？<br>*(Vâng, mỗi chủ nhật mình chia sẻ tiến độ nhé?)* |
| Bahra | いいよ！<br>*(Được chứ!)* |

---

## Tình huống 8 — Nhà Tanaka · thứ 6 19:00, bàn ngân sách năm 2

*Đại đến ăn tối thứ 6 đầu tiên sau khi ra ký túc. Yumi đã làm nikujaga và canh miso đậm vị.*

| Vai | Lời thoại |
|---|---|
| Yumi | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>ぶり！<ruby>痩<rt>や</rt></ruby>せた？<br>*(Đại, một tuần mới gặp! Gầy đi à?)* |
| Đại | <ruby>少<rt>すこ</rt></ruby>しだけ。<ruby>自炊<rt>じすい</rt></ruby>が<ruby>下手<rt>へた</rt></ruby>で...<br>*(Một chút thôi ạ. Tự nấu vụng quá…)* |
| Tony | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>来<rt>き</rt></ruby>てユミの<ruby>料理<rt>りょうり</rt></ruby><ruby>食<rt>た</rt></ruby>べたらええわ。<br>*(Cười. Tuần nào tới ăn cơm Yumi là được.)* |
| Đại | はい！<ruby>今日<rt>きょう</rt></ruby>は<ruby>相談<rt>そうだん</rt></ruby>したいことがあります。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のお<ruby>金<rt>かね</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>です。<br>*(Vâng! Hôm nay em muốn xin lời khuyên. Kế hoạch tiền nong năm 2.)* |
| Tony | おお、<ruby>聞<rt>き</rt></ruby>かせて。<br>*(Ờ, kể đi.)* |
| Đại | <ruby>収入<rt>しゅうにゅう</rt></ruby>:ローソンバイト<ruby>月<rt>つき</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>万<rt>まん</rt></ruby>。<ruby>支出<rt>ししゅつ</rt></ruby>:<ruby>家賃<rt>やちん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万<rt>まん</rt></ruby>＋<ruby>食費<rt>しょくひ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby>。<br>*(Thu: baito Lawson 70 ngàn. Chi: nhà 50 + ăn 20.)* |
| Tony | <ruby>母<rt>かあ</rt></ruby>さんへの<ruby>送金<rt>そうきん</rt></ruby>は？<br>*(Còn gửi mẹ?)* |
| Đại | <ruby>今<rt>いま</rt></ruby>まで<ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>送<rt>おく</rt></ruby>っていました。EJUと<ruby>願書代<rt>がんしょだい</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>費用<rt>ひよう</rt></ruby>がかかります。<br>*(Lâu nay em gửi 20 ngàn/tháng. Sắp tới EJU và phí đơn nhập học sẽ tốn thêm.)* |
| Yumi | EJUは<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>いくら？<br>*(EJU một đợt bao nhiêu?)* |
| Đại | <ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>7,700<rt>ななせんななひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>で<ruby>1.5<rt>いってんご</rt></ruby><ruby>万<rt>まん</rt></ruby>。<ruby>願書<rt>がんしょ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>校<rt>こう</rt></ruby>で<ruby>10<rt>じゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<br>*(7.700 yên một đợt. 2 đợt 15.000. Đơn 3 trường trên 100.000.)* |
| Tony | じゃあ、<ruby>送金<rt>そうきん</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby>に<ruby>減<rt>へ</rt></ruby>らして、<ruby>残<rt>のこ</rt></ruby>りは<ruby>受験<rt>じゅけん</rt></ruby><ruby>費用<rt>ひよう</rt></ruby>の<ruby>貯金<rt>ちょきん</rt></ruby>にしたらどう？<br>*(Vậy giảm gửi mẹ xuống 10 ngàn, còn lại để dành thi cử thì sao?)* |
| Đại | はい、<ruby>母<rt>はは</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>します。<ruby>大学<rt>だいがく</rt></ruby><ruby>入学<rt>にゅうがく</rt></ruby><ruby>後<rt>ご</rt></ruby>は<ruby>奨学金<rt>しょうがくきん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万<rt>まん</rt></ruby>で<ruby>送金<rt>そうきん</rt></ruby><ruby>再開<rt>さいかい</rt></ruby>します。<br>*(Vâng, em bàn với mẹ. Sau vào ĐH, có học bổng 50 ngàn em sẽ gửi lại.)* |
| Yumi | お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>分<rt>わ</rt></ruby>かってくれるよ。<br>*(Mẹ em sẽ hiểu thôi.)* |

---

## Tình huống 9 — Phòng riêng ký túc · 22:30, video Mai bàn 5 năm vision

*Đại về ký túc, mở video Mai. Mai vừa đi dạy thêm về, mặc áo khoác mỏng.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi, anh có chuyện muốn bàn nghiêm túc. |
| Mai | (tiếng Việt) Sao mặt anh nghiêm thế. Có chuyện gì? |
| Đại | (tiếng Việt) Hôm nay Yamada-sensei phỏng vấn cá nhân. Còn Rim-senpai bảo phỏng vấn ĐH sẽ hỏi tầm nhìn 5 năm. Anh muốn nói với em trước. |
| Mai | (tiếng Việt) Anh nói đi. |
| Đại | (tiếng Việt) Năm 2025-2026 anh học trường tiếng + thi EJU + thi N2 N1 + nộp đơn ĐH Osaka. Vào ĐH 4/2026. |
| Mai | (tiếng Việt) Ừ. |
| Đại | (tiếng Việt) Năm 2026-2030 — 4 năm ĐH Osaka khoa Kinh tế. Có thể có 1 năm trao đổi qua Đại học Thanh A ở Hà Nội nếu chương trình mở. |
| Mai | (tiếng Việt) Có nghĩa anh có thể về VN 1 năm? |
| Đại | (tiếng Việt) Có thể. 2027 hoặc 2028. Còn chưa chắc. |
| Đại | (tiếng Việt) Năm 2030 anh tốt nghiệp, dự định xin vào Cybozu hoặc công ty Nhật có chi nhánh VN — làm bridge engineer. Hoặc startup. Anh đang để ngỏ. |
| Mai | (tiếng Việt) Em đợi được. Mà sao anh kể bây giờ? |
| Đại | (tiếng Việt) Anh muốn em biết kế hoạch rõ. Năm 2030 anh 24 tuổi, em 24 tuổi. Anh muốn cưới em năm đó. |
| Mai | (tiếng Việt, im lặng vài giây) … Anh nghiêm túc đúng không? |
| Đại | (tiếng Việt) Vâng. Anh đã suy nghĩ kỹ. Anh sang Nhật để xây nền móng, không phải để xa em. 5 năm nữa. |
| Mai | (tiếng Việt, nước mắt) Em đợi. Mẹ anh biết chưa? |
| Đại | (tiếng Việt) Chưa. Anh muốn nói với em trước. Mai anh gọi mẹ. |
| Mai | (tiếng Việt) Anh nhớ thi N2 cho tốt. Em cũng đang học tiếng Nhật từ tháng trước — em không nói lúc nãy vì sợ anh phân tâm. |
| Đại | (tiếng Việt, sửng sốt) Em học tiếng Nhật? Từ tháng trước? |
| Mai | (tiếng Việt) Ừ. Lớp tối ở trung tâm Đông Du. Em đã thuộc bảng hiragana và katakana rồi. |
| Đại | (tiếng Việt) Trời ơi, em… (im lặng vì cảm động) Cảm ơn em. |
| Mai | (tiếng Việt) Đi ngủ đi anh. Mai cố gắng nhé. |
| Đại | (tiếng Việt) Vâng. Anh yêu em. |

---

## Tình huống 10 — Phòng riêng · 23:30, viết nhật ký tổng kết năm 1

*Đại ngồi vào bàn, mở sổ nhật ký. Đèn vàng. Bên ngoài trời tháng 4 mát.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, viết) 30/4/2025. Tròn 12 tháng từ ngày đặt chân xuống Kansai. |
| Đại | (tiếng Việt) Năm 1 làm được gì? Một, JLPT N3 110/180 — vượt sạch sẽ. Hai, mock N2 110/180 — đã qua ngưỡng, còn 3 tháng đẩy lên 140. |
| Đại | (tiếng Việt) Ba, Lawson Namba 10 tháng baito — học cách kính ngữ tiếng Nhật thật từ khách Nhật. Bốn, hạng 1 lớp bài thuyết trình về Tết VN — 93/100. |
| Đại | (tiếng Việt) Năm, đi gần như hết các điểm văn hoá Kansai — Universal Studio, Kyoto trip 4 điểm, Tenjin Matsuri, hatsumode Sumiyoshi. |
| Đại | (tiếng Việt) Sáu, gia đình thứ hai — Tony và Yumi Tanaka. Hứa thứ 6 nào cũng về ăn tối. |
| Đại | (tiếng Việt) Bảy, sang ký túc 4 quốc gia — Bahra Mông, Rim VN, John Mỹ. Có cô bạn Việt 2 năm trước hướng dẫn EJU. |
| Đại | (tiếng Việt) Năm 2 phải làm gì? Một, EJU 350/450 — đợt 6 và đợt 11. Hai, JLPT N2 140 điểm tháng 7. Ba, JLPT N1 thử tháng 12. |
| Đại | (tiếng Việt) Bốn, viết 志望理由書 1500 chữ JP với câu chuyện "Nghiên cứu quan hệ kinh tế Việt-Nhật, sau làm bridge cho công ty Nhật mở chi nhánh VN". |
| Đại | (tiếng Việt) Năm, nộp đơn 3 trường tháng 10-12/2025. Sáu, phỏng vấn 1-2/2026. Bảy, vào ĐH 4/2026. |
| Đại | (tiếng Việt) Mục tiêu cuối: ĐH Osaka khoa Kinh tế, học bổng 50 ngàn yên/tháng. |
| Đại | (tiếng Việt) Và Mai. Hôm nay Mai nói em đã học hiragana. Trời ơi. Em ấy đợi 5 năm. Mình không có quyền dừng lại. |
| Đại | (tiếng Việt) Đêm mai gọi mẹ. Báo kế hoạch cưới năm 2030. Mẹ sẽ khóc nhưng mẹ sẽ ủng hộ. |
| Đại | （<ruby>電気<rt>でんき</rt></ruby>を<ruby>消<rt>け</rt></ruby>す、<ruby>布団<rt>ふとん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る）<ruby>明日<rt>あした</rt></ruby>からまた<ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>起<rt>お</rt></ruby>き。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Tắt đèn, chui vào futon. Mai lại 6h sáng dậy. Cố lên.)* |

---

## Đọng lại chương 12

Tròn một năm Osaka. Trong cuộc **面談** với Yamada-sensei, Đại nhận được tổng kết thành tích năm 1: **JLPT N3 110/180**, hạng 1 lớp **文化交流プレゼン**, baito **ローソン** 10 tháng, **遅刻欠席ゼロ**. Mock N2 110 điểm — đã vượt ngưỡng 90 nhưng cần đẩy lên 140 trong 3 tháng. Trình bày 3 nguyện vọng ĐH theo công thức **「第1志望は〜・第2志望は〜・第3志望は〜」** (Osaka Kinh tế — Kobe Kinh doanh — Kansai Thương). Hỏi quy trình EJU lễ phép với **「〜の流れを教えていただけますか」**: 4 bước EJU → 独自試験 → 合格発表 → 入学. Sempai Rim chia sẻ 5 tip — EJU 350+, GPA 85+, **N1 mạnh hơn N2**, **志望理由書 1500 chữ** với 4 đoạn cấu trúc, **5年後キャリアビジョン** ở phỏng vấn. Đến nhà Tanaka thứ 6 đầu tiên bàn ngân sách: giảm gửi mẹ xuống 10 ngàn để dành chi phí thi 15 ngàn EJU + 100 ngàn 願書. Video Mai bằng tiếng Việt — Đại lần đầu nói rõ tầm nhìn 5 năm, kế hoạch cưới 2030. Mai đáp lại bằng tin sốc: em đã bắt đầu học tiếng Nhật ở Đông Du từ tháng trước. Đêm cuối tháng 4, Đại viết nhật ký tổng kết — mở mạch cho sách 20.

> Từ vựng & mẫu câu chương này: 1年経過・面談・振り返り・成果・遅刻欠席ゼロ・文化交流プレゼン・ローソンのバイト・JLPT N3・JLPT N2 模試・合格基準・余裕・大学進学・志望大学・第1志望・第2志望・第3志望・大阪大学経済学部・神戸大学経営学部・関西大学商学部・国立大学・滑り止め・私立・学費・留学生奨学金・EJU・日本留学試験・総合科目・数学・理科・志望理由書・大学独自試験・面接・合格発表・入学・GPA・キャリアビジョン・5年後・自炊・送金・受験費用・願書・日越経済関係・日系企業・ブリッジエンジニア・おかげさまで・〜の流れを教えていただけますか・アドバイスをいただけますか・〜について相談したいことがあります

## Bí quyết chương

- **面談 cấu trúc 3 phần**: 1: 成果確認 (xác nhận thành tích) — 2: 模試結果 (kết quả mô phỏng) — 3: 進路プラン (kế hoạch lên ĐH). Mẫu chuẩn cho mọi 面談 trường tiếng Nhật.
- **Trình bày 3 nguyện vọng 第1・第2・第3 với lý do 3 điểm**: Mẫu chuẩn cho hồ sơ ĐH Nhật, áp dụng được cho cả khi xin việc sau này.
- **Đàn anh Rim mentor**: Mẫu hỏi lời khuyên "アドバイスをいただけますか" — quan hệ sempai-kouhai. Sách 20-21 sẽ thấy Rim tiếp tục dẫn dắt.
- **Ngân sách thật**: Lawson 70k / nhà 50k / ăn 20k / gửi mẹ 10k / chừa thi cử — số liệu sát Osaka 2025.
- **Tin Mai học hiragana**: Twist cuối chương — Mai đang chuẩn bị sang Nhật theo Đại. Sách 18-22 sẽ thấy Mai tiến triển.
- **Vision 2030 cưới**: Mốc thời gian được khai trong sách này, đặt nền cho toàn series 19-26 — sách 25-26 Đại 24 tuổi đã cưới và sinh con.
- **国立 vs 私立 chi phí**: 535k vs 1.000k+ — bài học quyết định tài chính của du học sinh quốc lập.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 経過 | けいか | KINH QUÁ | Trôi qua |
| 面談 | めんだん | DIỆN ĐÀM | Buổi gặp/trao đổi riêng (đánh giá) — khác 面接 (めんせつ) = phỏng vấn tuyển |
| 振り返り | ふりかえり | CHẤN PHẢN | Nhìn lại, tổng kết |
| プラン | — | — | Kế hoạch |
| 成果 | せいか | THÀNH QUẢ | Thành quả |
| 遅刻 | ちこく | TRÌ KHẮC | Đi muộn |
| 欠席 | けっせき | KHUYẾT TỊCH | Vắng mặt |
| 模試 | もし | MÔ THÍ | Thi mô phỏng |
| ドキドキ | — | — | Hồi hộp |
| 余裕 | よゆう | DƯ DỤ | Biên độ dư |
| 強化 | きょうか | CƯỜNG HOÁ | Tăng cường |
| 狙う | ねらう | THƯ | Nhắm |
| 神戸大学 | こうべだいがく | THẦN HỘ ĐẠI HỌC | ĐH Kobe |
| 経営学部 | けいえいがくぶ | KINH DOANH HỌC BỘ | Khoa Kinh doanh |
| 関西大学 | かんさいだいがく | QUAN TÂY ĐẠI HỌC | ĐH Kansai |
| 商学部 | しょうがくぶ | THƯƠNG HỌC BỘ | Khoa Thương |
| 滑り止め | すべりどめ | HOẠT CHỈ | Trường an toàn |
| 私立 | しりつ | TƯ LẬP | Tư lập |
| 合理的 | ごうりてき | HỢP LÝ ĐÍCH | Hợp lý |
| 国立 | こくりつ | QUỐC LẬP | Quốc lập |
| 学費 | がくひ | HỌC PHÍ | Học phí |
| 流れ | ながれ | LƯU | Quy trình, dòng |
| ステップ | — | — | Bước |
| 専用 | せんよう | CHUYÊN DỤNG | Chuyên dụng |
| 科目 | かもく | KHOA MỤC | Môn |
| 総合科目 | そうごうかもく | TỔNG HỢP KHOA MỤC | Môn tổng hợp |
| 数学 | すうがく | SỐ HỌC | Toán |
| 理科 | りか | LÝ KHOA | Lý hoá |
| 独自試験 | どくじしけん | ĐỘC TỰ THÍ NGHIỆM | Thi riêng của trường |
| 志望理由書 | しぼうりゆうしょ | CHÍ VỌNG LÝ DO THƯ | Đơn lý do nguyện vọng |
| 合格発表 | ごうかくはっぴょう | HỢP CÁCH PHÁT BIỂU | Công bố kết quả |
| 並行 | へいこう | TỊNH HÀNH | Song song |
| 先輩 | せんぱい | TIÊN BỐI | Sempai, đàn anh |
| アドバイス | — | — | Lời khuyên |
| 絶対 | ぜったい | TUYỆT ĐỐI | Tuyệt đối |
| サンプル | — | — | Mẫu |
| キャリアビジョン | — | — | Tầm nhìn nghề nghiệp |
| 学部 | がくぶ | HỌC BỘ | Khoa |
| 卒業 | そつぎょう | TỐT NGHIỆP | Tốt nghiệp |
| キャリアプラン | — | — | Kế hoạch nghề nghiệp |
| 経済関係 | けいざいかんけい | KINH TẾ QUAN HỆ | Quan hệ kinh tế |
| 日越 | にちえつ | NHẬT VIỆT | Nhật-Việt |
| バックグラウンド | — | — | Nền tảng |
| 日系企業 | にっけいきぎょう | NHẬT HỆ KÝ NGHIỆP | Công ty Nhật |
| 初稿 | しょこう | SƠ CẢO | Bản nháp đầu |
| 計画 | けいかく | KẾ HOẠCH | Kế hoạch |
| 進捗 | しんちょく | TIẾN BỘC | Tiến độ |
| 食費 | しょくひ | THỰC PHÍ | Tiền ăn |
| 受験費用 | じゅけんひよう | THỤ NGHIỆM PHÍ DỤNG | Chi phí thi cử |
| 願書 | がんしょ | NGUYỆN THƯ | Đơn nhập học |
| 貯金 | ちょきん | TRỮ KIM | Tiết kiệm |
| 再開 | さいかい | TÁI KHAI | Bắt đầu lại |
| ブリッジエンジニア | — | — | Bridge engineer |
| 集中復習 | しゅうちゅうふくしゅう | TẬP TRUNG PHỤC TẬP | Ôn tập tăng cường |
| オープンキャンパス | — | — | Open campus |
| 願書受付 | がんしょうけつけ | NGUYỆN THƯ THỤ PHÓ | Tiếp nhận đơn |
| バランス | — | — | Cân đối |
| 電気 | でんき | ĐIỆN KHÍ | Điện, đèn |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
