-- Hizashi LITE book SQL — Phong Y1 — TTS Ô tô năm 1 (Toyota Anjo Aichi)
-- curriculum_id = 800000043  (book_seq=43)
-- nguồn: books/43_oto_year1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000043, 'N4', 'markdown_book', 'Ô tô', 'Phong Y1 — TTS Ô tô năm 1 (Toyota Anjo Aichi)', 'Bộ sách Hizashi — Phong Y1 — TTS Ô tô năm 1 (Toyota Anjo Aichi)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000001, 800000043, NULL, 'markdown_book', 'T1. Ngày đầu đặt chân tới Nhật (来日・ガレージへ)', '# Sách thực tập sinh ô tô · T1. Ngày đầu đặt chân tới Nhật (来日・ガレージへ)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) sang Nhật làm thực tập sinh ngành ô tô tại Aichi. Học các mẫu hội thoại tiếng Nhật ngày đầu nhập cảnh: trả lời 入管 (cục xuất nhập cảnh), chào hỏi 工場長 đón sân bay, hỏi đáp + xác nhận từ chuyên ngành trên xe (整備工場・トヨタ系), hỏi lại lễ phép khi chưa hiểu (〜というのは?), tự giới thiệu với người cùng phòng nước ngoài (Brazil), quan sát cách 先輩 hướng dẫn sinh hoạt ký túc.

---

## Bối cảnh

Ngày 10 tháng 4 năm 2025. Phong vào làm tại **佐藤自動車整備工場** (Sato Jidousha Seibi Koujou) ở Anjo, Aichi — garage thuộc hệ thống Toyota (トヨタ系) chuyên sửa chữa và bảo dưỡng xe. Trình độ tiếng Nhật N5. Chương này tập trung các mẫu câu giao tiếp đầu tiên ngày đặt chân tới Nhật: trả lời cục xuất nhập cảnh, chào hỏi 工場長 Sato đón trực tiếp bằng xe Hiace, hỏi đáp + xác nhận từ chuyên ngành ô tô trên đường về garage Anjo, làm quen người cùng phòng Carlos (Brazil), và chốt mạch nhân vật qua cảnh tiếng Việt gọi về Hải Phòng cuối ngày.

---

## Tình huống 1 — Quầy 入管 sân bay Chubu Centrair · 14:00, trả lời cục xuất nhập cảnh

| Vai | Lời thoại |
|---|---|
| 入管 | パスポートとビザを<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho tôi xem hộ chiếu và visa.)* |
| Phong | （パスポートを<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<br>*(Đưa hộ chiếu. Vâng, đây ạ.)* |
| 入管 | <ruby>滞在<rt>たいざい</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Mục đích lưu trú là gì?)* |
| Phong | <ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>です。<ruby>愛知県<rt>あいちけん</rt></ruby>の<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備<rt>せいび</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Em đi thực tập kỹ năng ạ. Em làm việc tại garage sửa chữa ô tô ở tỉnh Aichi.)* |
| 入管 | <ruby>何年<rt>なんねん</rt></ruby>のビザですか？<br>*(Visa mấy năm?)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<br>*(Ba năm ạ.)* |
| 入管 | <ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>渡<rt>わた</rt></ruby>します。なくさないでください。<br>*(Tôi đưa thẻ cư trú. Đừng làm mất nhé.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| 入管 | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Anh vất vả rồi.)* |
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |

---

## Tình huống 2 — Sảnh đến Centrair · 15:00, gặp 工場長 Sato đón sân bay

*Phong kéo vali ra sảnh đến. Một người đàn ông tầm 50 tuổi, áo khoác xanh có logo Toyota, đứng cầm bảng "フォン さん".*

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、こちらです！<br>*(Anh Phong, đây ạ!)* |
| Phong | あ、<ruby>佐藤<rt>さとう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>でいらっしゃいますか？<br>*(À, có phải ông là Sato trưởng garage không ạ?)* |
| Sato | はい、<ruby>佐藤<rt>さとう</rt></ruby>です。フォンさん、ようこそ<ruby>日本<rt>にほん</rt></ruby>へ。<br>*(Vâng, Sato đây. Anh Phong, hoan nghênh đến Nhật.)* |
| Phong | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・フォンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Rất hân hạnh. Em tên là Nguyễn Văn Phong. Mong được chỉ bảo ạ.)* |
| Sato | <ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Đường dài vất vả rồi. Em có khoẻ không?)* |
| Phong | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, em vẫn khoẻ ạ.)* |
| Sato | <ruby>外<rt>そと</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>を<ruby>止<rt>と</rt></ruby>めています。ハイエースです。<ruby>荷物<rt>にもつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>持<rt>も</rt></ruby>ちます。<br>*(Tôi đỗ xe công ty ở ngoài. Là chiếc Hiace. Hành lý để tôi xách.)* |
| Phong | いえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>自分<rt>じぶん</rt></ruby>で<ruby>持<rt>も</rt></ruby>てます。ありがとうございます。<br>*(Không không, em ổn ạ. Em xách được. Em cảm ơn ông.)* |
| Sato | じゃあ、<ruby>行<rt>い</rt></ruby>きましょう。<ruby>安城<rt>あんじょう</rt></ruby>まで<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ぐらいです。<br>*(Vậy đi nào. Đến Anjo khoảng 1 tiếng.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Bãi đỗ xe Centrair · 15:15, lên xe Hiace, ngắm xe Nhật lần đầu

| Vai | Lời thoại |
|---|---|
| Sato | これが<ruby>当社<rt>とうしゃ</rt></ruby>のハイエースです。お<ruby>客<rt>きゃく</rt></ruby>さんの<ruby>車<rt>くるま</rt></ruby>を<ruby>運<rt>はこ</rt></ruby>ぶときも<ruby>使<rt>つか</rt></ruby>います。<br>*(Đây là chiếc Hiace của công ty mình. Khi vận chuyển xe của khách cũng dùng.)* |
| Phong | <ruby>大<rt>おお</rt></ruby>きいですね。<ruby>初<rt>はじ</rt></ruby>めて<ruby>見<rt>み</rt></ruby>ました。<br>*(To quá. Em mới thấy lần đầu.)* |
| Sato | ベトナムにもトヨタはありますか？<br>*(Ở Việt Nam có Toyota không?)* |
| Phong | はい、たくさんあります。ヴィオスとイノーバが<ruby>多<rt>おお</rt></ruby>いです。<br>*(Vâng, có nhiều ạ. Vios và Innova nhiều lắm.)* |
| Sato | そうですか。<ruby>日本<rt>にほん</rt></ruby>ではハイエースとプリウスが<ruby>多<rt>おお</rt></ruby>いですよ。シートベルトを<ruby>締<rt>し</rt></ruby>めてください。<br>*(Vậy à. Ở Nhật thì Hiace và Prius nhiều. Anh thắt dây an toàn nhé.)* |
| Phong | はい。<br>*(Vâng.)* |
| Sato | では、<ruby>出発<rt>しゅっぱつ</rt></ruby>します。<br>*(Vậy mình xuất phát.)* |

---

## Tình huống 4 — Cao tốc về Nagoya · 15:45, hỏi đáp + xác nhận từ chuyên ngành garage

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>名古屋<rt>なごや</rt></ruby>を<ruby>通<rt>とお</rt></ruby>って<ruby>安城市<rt>あんじょうし</rt></ruby>まで<ruby>行<rt>い</rt></ruby>きます。<br>*(Đi qua Nagoya rồi đến thành phố Anjo.)* |
| Phong | はい。<ruby>愛知県<rt>あいちけん</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Vâng. Em lần đầu đến Aichi ạ.)* |
| Sato | <ruby>愛知<rt>あいち</rt></ruby>はトヨタの<ruby>地元<rt>じもと</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby>はトヨタ<ruby>系<rt>けい</rt></ruby>の<ruby>整備<rt>せいび</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>です。<br>*(Aichi là quê của Toyota. Công ty mình là garage thuộc hệ thống Toyota.)* |
| Phong | すみません、「<ruby>整備<rt>せいび</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "seibi koujou" nghĩa là gì ạ?)* |
| Sato | <ruby>車<rt>くるま</rt></ruby>を<ruby>修理<rt>しゅうり</rt></ruby>したり、オイルを<ruby>替<rt>か</rt></ruby>えたりする<ruby>工場<rt>こうじょう</rt></ruby>です。「ガレージ」と<ruby>言<rt>い</rt></ruby>ってもいいです。<br>*(Là xưởng sửa chữa xe, thay dầu. Cũng có thể gọi là "garage".)* |
| Phong | なるほど。<ruby>車<rt>くるま</rt></ruby>を<ruby>直<rt>なお</rt></ruby>す<ruby>会社<rt>かいしゃ</rt></ruby>ということですね。<br>*(Em hiểu rồi. Là công ty sửa xe phải không ạ.)* |
| Sato | そうです。それから「<ruby>車検<rt>しゃけん</rt></ruby>」もやります。<br>*(Đúng. Còn làm cả "shaken" nữa.)* |
| Phong | <ruby>車検<rt>しゃけん</rt></ruby>...というのは？<br>*(Shaken... nghĩa là gì ạ?)* |
| Sato | <ruby>日本<rt>にほん</rt></ruby>では<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>車<rt>くるま</rt></ruby>を<ruby>検査<rt>けんさ</rt></ruby>します。それが<ruby>車検<rt>しゃけん</rt></ruby>です。<ruby>法律<rt>ほうりつ</rt></ruby>です。<br>*(Ở Nhật cứ 2 năm 1 lần phải kiểm tra xe. Đó là shaken. Là luật.)* |
| Phong | あ、<ruby>法律<rt>ほうりつ</rt></ruby>ですか。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>ですね。メモします。<br>*(À, là luật ạ. Là công việc quan trọng nhỉ. Em ghi lại.)* |

---

## Tình huống 5 — Trên xe gần Nagoya · 16:15, Sato dặn dò trước khi vào garage

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、<ruby>明日<rt>あした</rt></ruby>からの<ruby>仕事<rt>しごと</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Anh Phong, tôi giải thích sơ về công việc từ ngày mai.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời ông ạ.)* |
| Sato | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>か月<rt>げつ</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>です。<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てください。<br>*(Ba tháng đầu là quan sát. Hãy nhìn kỹ công việc của các đàn anh.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Sato | <ruby>整備士長<rt>せいびしちょう</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>さんがフォンさんの<ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>です。<br>*(Anh Yamada — trưởng tổ kỹ thuật viên — sẽ là đàn anh trực tiếp của em.)* |
| Phong | はい。<ruby>整備士長<rt>せいびしちょう</rt></ruby>...というのは<ruby>整備士<rt>せいびし</rt></ruby>のリーダーということですか？<br>*(Vâng. Seibishichou... nghĩa là người đứng đầu các kỹ thuật viên ạ?)* |
| Sato | そうです。よく<ruby>分<rt>わ</rt></ruby>かりましたね。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>遠慮<rt>えんりょ</rt></ruby>しないでね。<br>*(Đúng vậy. Em hiểu nhanh nhỉ. Có gì không hiểu nhất định phải hỏi. Đừng ngại.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Sato | それから、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>です。<ruby>怪我<rt>けが</rt></ruby>をしないでください。<br>*(Còn nữa, an toàn là số một. Đừng để bị thương nhé.)* |
| Phong | はい、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>ですね。<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, an toàn số một ạ. Em sẽ nhất định tuân thủ.)* |

---

## Tình huống 6 — Đến garage Anjo · 16:45, lần đầu nhìn thấy garage

*Xe Hiace rẽ vào một con đường nhỏ ở Anjo. Phong nhìn qua cửa sổ — một toà nhà thấp, mái tôn, có biển hiệu "佐藤自動車整備工場" màu xanh. Bên cạnh là 2 cửa cuốn lớn đang mở, thấy 3 chiếc xe đang được nâng lên cao.*

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>着<rt>つ</rt></ruby>きました。ここが<ruby>当社<rt>とうしゃ</rt></ruby>のガレージです。<br>*(Đến rồi. Đây là garage của công ty mình.)* |
| Phong | <ruby>大<rt>おお</rt></ruby>きいですね！<ruby>車<rt>くるま</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がっています。<br>*(To quá! Xe được nâng lên cao.)* |
| Sato | あれは「リフト」です。<ruby>車<rt>くるま</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げて、<ruby>下<rt>した</rt></ruby>から<ruby>整備<rt>せいび</rt></ruby>します。<br>*(Đó là "lift". Nâng xe lên để sửa từ phía dưới.)* |
| Phong | リフト、<ruby>初<rt>はじ</rt></ruby>めて<ruby>見<rt>み</rt></ruby>ました。すごいです。<br>*(Lift, em mới thấy lần đầu. Tuyệt quá.)* |
| Sato | <ruby>今日<rt>きょう</rt></ruby>は<ruby>寮<rt>りょう</rt></ruby>で<ruby>休<rt>やす</rt></ruby>んでください。<ruby>寮<rt>りょう</rt></ruby>はガレージのすぐ<ruby>横<rt>よこ</rt></ruby>です。<ruby>歩<rt>ある</rt></ruby>いて<ruby>1<rt>いっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Hôm nay em nghỉ ở ký túc nhé. Ký túc ngay cạnh garage. Đi bộ 1 phút.)* |
| Phong | はい、<ruby>近<rt>ちか</rt></ruby>くて<ruby>助<rt>たす</rt></ruby>かります。<br>*(Vâng, gần thật tiện cho em quá.)* |

---

## Tình huống 7 — Ký túc cạnh garage · 17:00, Sato giới thiệu phòng

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>2<rt>に</rt></ruby><ruby>階建<rt>かいだ</rt></ruby>ての<ruby>古<rt>ふる</rt></ruby>い<ruby>建物<rt>たてもの</rt></ruby>ですが、きれいに<ruby>掃除<rt>そうじ</rt></ruby>してあります。<br>*(Toà nhà 2 tầng cũ thôi, nhưng được dọn sạch sẽ.)* |
| Phong | はい。<br>*(Vâng.)* |
| Sato | フォンさんの<ruby>部屋<rt>へや</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>203<rt>に　まる　さん</rt></ruby><ruby>号室<rt>ごうしつ</rt></ruby>です。<ruby>2人部屋<rt>ふたりべや</rt></ruby>です。<br>*(Phòng anh Phong ở tầng 2, phòng 203. Phòng hai người.)* |
| Phong | <ruby>同室<rt>どうしつ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>はどなたですか？<br>*(Người cùng phòng là ai ạ?)* |
| Sato | カルロスさんです。ブラジル<ruby>人<rt>じん</rt></ruby>です。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>ぐらい<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<ruby>日本語<rt>にほんご</rt></ruby>もポルトガル<ruby>語<rt>ご</rt></ruby>も<ruby>上手<rt>じょうず</rt></ruby>ですよ。<br>*(Anh Carlos. Người Brazil. Đã làm ở công ty 5 năm. Tiếng Nhật và tiếng Bồ Đào Nha đều giỏi.)* |
| Phong | え、ブラジル<ruby>人<rt>じん</rt></ruby>ですか。<br>*(Ơ, người Brazil ạ.)* |
| Sato | <ruby>愛知<rt>あいち</rt></ruby>にはブラジル<ruby>人<rt>じん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いんですよ。トヨタの<ruby>工場<rt>こうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いている<ruby>人<rt>ひと</rt></ruby>がたくさんいます。<br>*(Ở Aichi có nhiều người Brazil. Có nhiều người làm việc trong các xưởng Toyota.)* |
| Phong | そうですか。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Vậy ạ. Em học được điều mới.)* |
| Sato | <ruby>家賃<rt>やちん</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>で、<ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>天引<rt>てんび</rt></ruby>きします。<br>*(Tiền nhà 15.000 yên một tháng, trừ vào lương.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 8 — Phòng 203 · 17:30, tự giới thiệu với Carlos

*Sato gõ cửa phòng 203. Cửa mở, một người đàn ông trẻ tóc đen, da ngăm, mặc áo phông xanh, mỉm cười tươi.*

| Vai | Lời thoại |
|---|---|
| Sato | カルロスさん、<ruby>新<rt>あたら</rt></ruby>しい<ruby>同室<rt>どうしつ</rt></ruby>のフォンさんを<ruby>連<rt>つ</rt></ruby>れてきましたよ。<br>*(Carlos, tôi đưa anh Phong, bạn cùng phòng mới đến đây này.)* |
| Carlos | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです！フォンさん、はじめまして！<br>*(Trưởng garage, ông vất vả rồi ạ! Anh Phong, rất hân hạnh!)* |
| Phong | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・フォンと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cúi đầu. Rất hân hạnh. Em tên là Nguyễn Văn Phong. Em từ Việt Nam đến. Mong anh giúp đỡ.)* |
| Carlos | カルロスです。ブラジルから<ruby>来<rt>き</rt></ruby>ました。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。よろしくね、フォンさん！<br>*(Tôi là Carlos. Tôi đến từ Brazil. Tôi đến Nhật 5 năm trước. Mong anh giúp đỡ nhé, anh Phong!)* |
| Phong | カルロスさんは<ruby>日本語<rt>にほんご</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Anh Carlos tiếng Nhật giỏi quá.)* |
| Carlos | いえいえ、まだまだ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。ベトナムの<ruby>友達<rt>ともだち</rt></ruby>もガレージにいますよ。<ruby>明日<rt>あした</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Không không, vẫn còn kém. Cùng cố gắng nhé. Trong garage cũng có bạn người Việt đấy. Mai tôi giới thiệu.)* |
| Phong | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Ơ, thật ạ! Em vui quá.)* |
| Sato | <ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>事務所<rt>じむしょ</rt></ruby>で<ruby>待<rt>ま</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせです。カルロスさんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来<rt>き</rt></ruby>てください。<br>*(Sáng mai 8h hẹn ở văn phòng. Anh Phong đi cùng anh Carlos đến nhé.)* |
| Phong | はい、ありがとうございます。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, em cảm ơn ạ. Ông vất vả rồi.)* |
| Sato | では、お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vậy, tôi xin phép về trước.)* |

---

## Tình huống 9 — Phòng 203 · 18:00, Carlos hướng dẫn sinh hoạt ký túc

| Vai | Lời thoại |
|---|---|
| Carlos | フォンさん、ベッドはこちらです。<ruby>窓側<rt>まどがわ</rt></ruby>がフォンさんの<ruby>場所<rt>ばしょ</rt></ruby>です。<br>*(Anh Phong, giường ở bên này. Phía cửa sổ là chỗ của anh.)* |
| Phong | ありがとう、カルロスさん。<br>*(Cảm ơn anh Carlos.)* |
| Carlos | <ruby>洗濯機<rt>せんたくき</rt></ruby>とシャワーは<ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>です。みんなで<ruby>使<rt>つか</rt></ruby>います。<br>*(Máy giặt và phòng tắm ở tầng 1. Mọi người dùng chung.)* |
| Phong | はい。<ruby>洗濯<rt>せんたく</rt></ruby>はいつしますか？<br>*(Vâng. Giặt khi nào ạ?)* |
| Carlos | <ruby>夜<rt>よる</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>までです。<ruby>朝<rt>あさ</rt></ruby>も<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Đến 9 giờ tối. Sáng cũng được, từ 6 giờ.)* |
| Phong | コンビニは<ruby>近<rt>ちか</rt></ruby>くにありますか？<br>*(Cửa hàng tiện lợi có gần đây không ạ?)* |
| Carlos | <ruby>歩<rt>ある</rt></ruby>いて<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。セブンイレブンがあります。<br>*(Đi bộ 3 phút. Có Seven Eleven.)* |
| Phong | <ruby>夕食<rt>ゆうしょく</rt></ruby>はどうしていますか？<br>*(Bữa tối anh ăn thế nào?)* |
| Carlos | <ruby>今夜<rt>こんや</rt></ruby>はコンビニで<ruby>弁当<rt>べんとう</rt></ruby>を<ruby>買<rt>か</rt></ruby>いましょう。フォンさん、<ruby>疲<rt>つか</rt></ruby>れているでしょう。<ruby>明日<rt>あした</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>りましょう。<br>*(Tối nay mua cơm hộp ở konbini đi. Anh mệt rồi nhỉ. Từ mai cùng nấu.)* |
| Phong | はい、<ruby>助<rt>たす</rt></ruby>かります。ありがとうございます。<br>*(Vâng, anh giúp em quá. Cảm ơn anh.)* |

---

## Tình huống 10 — Đường tới Seven Eleven · 18:30, hỏi đường + xác nhận

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>寮<rt>りょう</rt></ruby>を<ruby>出<rt>で</rt></ruby>たら<ruby>左<rt>ひだり</rt></ruby>に<ruby>曲<rt>ま</rt></ruby>がります。<br>*(Ra khỏi ký túc thì rẽ trái.)* |
| Phong | <ruby>左<rt>ひだり</rt></ruby>ですね。<br>*(Trái đúng không ạ.)* |
| Carlos | はい。<ruby>信号<rt>しんごう</rt></ruby>を<ruby>1<rt>ひと</rt></ruby>つ<ruby>越<rt>こ</rt></ruby>えるとセブンイレブンが<ruby>右側<rt>みぎがわ</rt></ruby>に<ruby>見<rt>み</rt></ruby>えます。<br>*(Vâng. Qua một đèn xanh đèn đỏ thì sẽ thấy Seven Eleven ở bên phải.)* |
| Phong | <ruby>信号<rt>しんごう</rt></ruby><ruby>1<rt>ひと</rt></ruby>つ、<ruby>右側<rt>みぎがわ</rt></ruby>ですね。メモします。<br>*(Một đèn, bên phải nhỉ. Em ghi lại.)* |
| Carlos | フォンさん、<ruby>銀行<rt>ぎんこう</rt></ruby>の<ruby>口座<rt>こうざ</rt></ruby>はもう<ruby>持<rt>も</rt></ruby>っていますか？<br>*(Anh Phong, anh đã có tài khoản ngân hàng chưa?)* |
| Phong | いいえ、まだです。<ruby>口座<rt>こうざ</rt></ruby>...というのは<ruby>銀行<rt>ぎんこう</rt></ruby>のアカウントということですか？<br>*(Chưa ạ. Kouza... nghĩa là tài khoản ngân hàng phải không ạ?)* |
| Carlos | そうそう。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>が<ruby>連<rt>つ</rt></ruby>れて<ruby>行<rt>い</rt></ruby>ってくれますよ。<ruby>給料<rt>きゅうりょう</rt></ruby>はその<ruby>口座<rt>こうざ</rt></ruby>に<ruby>振<rt>ふ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>まれます。<br>*(Đúng. Tuần sau trưởng garage sẽ dẫn đi. Lương sẽ chuyển vào tài khoản đó.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 11 — Phòng 203 · 20:00, ăn tối + hỏi chuyện garage

| Vai | Lời thoại |
|---|---|
| Carlos | いただきます。<br>*(Mời ăn.)* |
| Phong | いただきます。カルロスさん、ガレージはどうですか？<br>*(Mời ăn. Anh Carlos, garage thế nào ạ?)* |
| Carlos | みなさん<ruby>優<rt>やさ</rt></ruby>しいですよ。でも<ruby>仕事<rt>しごと</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいです。<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Mọi người tốt bụng lắm. Nhưng công việc nghiêm khắc. An toàn là quan trọng nhất.)* |
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>っていました。<br>*(Trưởng garage cũng nói y như vậy.)* |
| Carlos | <ruby>車<rt>くるま</rt></ruby>は<ruby>重<rt>おも</rt></ruby>いです。リフトの<ruby>下<rt>した</rt></ruby>で<ruby>怪我<rt>けが</rt></ruby>をする<ruby>人<rt>ひと</rt></ruby>もいます。<ruby>気<rt>き</rt></ruby>をつけてね。<br>*(Xe nặng. Có người bị thương dưới lift. Phải cẩn thận nhé.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>気<rt>き</rt></ruby>をつけます。カルロスさん、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いて、<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なことは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Vâng, em nhất định sẽ cẩn thận. Anh Carlos làm 5 năm rồi, điều quan trọng nhất là gì ạ?)* |
| Carlos | <ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>くこと。それから「<ruby>報連相<rt>ほうれんそう</rt></ruby>」。これだけです。<br>*(Có gì không hiểu phải hỏi. Sau đó là "hourensou". Chỉ vậy thôi.)* |
| Phong | <ruby>報連相<rt>ほうれんそう</rt></ruby>...というのは？<br>*(Hourensou... nghĩa là gì ạ?)* |
| Carlos | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>います。<br>*(Viết tắt của báo cáo - liên lạc - bàn bạc. Mỗi ngày đều dùng.)* |
| Phong | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>ですね。<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Báo cáo, liên lạc, bàn bạc ạ. Em nhất định sẽ nhớ.)* |

---

## Tình huống 12 — Phòng 203 · 22:00, gọi điện về Hải Phòng (cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong gọi video về cho bố mẹ ở Hải Phòng.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, mẹ ơi, con đến nơi rồi. |
| Bố Phong | (tiếng Việt) Phong! Bố mẹ chờ cả ngày. Đi đường có mệt không con? |
| Phong | (tiếng Việt) Con không sao bố ạ. Ông Sato — chủ garage — ra tận sân bay đón con. Ông tử tế lắm. Đi xe Hiace to lắm, ngồi 1 tiếng mới về tới Anjo. |
| Mẹ Phong | (tiếng Việt) Thế nơi ở thế nào con? |
| Phong | (tiếng Việt) Ký túc ngay cạnh garage, đi bộ 1 phút. Con ở cùng phòng với một anh Brazil tên Carlos, anh ấy làm 5 năm rồi, nói tiếng Nhật giỏi. Carlos hứa mai sẽ giới thiệu mấy anh người Việt đang làm ở garage. |
| Bố Phong | (tiếng Việt) Có người Việt thì tốt rồi. Garage ấy làm gì hả con? |
| Phong | (tiếng Việt) Là 整備工場, tức là xưởng sửa chữa và bảo dưỡng xe. Hôm nay con học được mấy chữ mới: 整備工場 với 車検 — kiểu Nhật cứ 2 năm phải kiểm định xe một lần. Còn 報連相 — báo cáo, liên lạc, bàn bạc — bố mẹ nhớ chữ này nhé, ai làm ở Nhật cũng nhắc. |
| Mẹ Phong | (tiếng Việt) Quê mình làm cơ khí biển nhiều, con học ô tô bên đó cũng hợp. Cố gắng nhé con. |
| Phong | (tiếng Việt) Vâng. Mai 8 giờ con xuống văn phòng rồi, giờ con đi ngủ. Bố mẹ giữ sức khoẻ. |
| Bố Phong | (tiếng Việt) Ừ, ngủ sớm con. Ba năm trôi nhanh thôi. |

---

## Đọng lại chương 1

Ngày đầu, Phong học được các mẫu câu nền tảng người sang Nhật làm việc dùng ngay: **trả lời 入管** (滞在目的は何ですか → 技能実習です), **chào hỏi 工場長 đón sân bay** (お疲れさまでした・〜と申します・よろしくお願いいたします), **xác nhận thông tin chuyên ngành trên xe** (〜ということですね), **hỏi lại lễ phép khi chưa hiểu** (〜というのは？), **tự giới thiệu với người cùng phòng nước ngoài** (はじめまして・〜から来ました), và **chốt mẫu câu sinh hoạt ký túc** (家賃・天引き・口座・洗濯機). Đồng thời nhận ra văn hoá công sở Nhật trọng **報連相** (報告・連絡・相談) và **安全第一** — phẩm chất nghề kỹ thuật viên ô tô Phong phải mang theo suốt 3 năm.

> Từ vựng & mẫu câu chương này: 来日・入管・滞在目的・技能実習・在留カード・工場長・整備工場・整備士長・トヨタ系・車検・リフト・ハイエース・寮・同室・家賃・天引き・口座・報連相・報告・連絡・相談・安全第一・〜と申します・〜というのは・〜ということですね・お疲れさまでした・よろしくお願いいたします

## Bí quyết chương

- **Đón sân bay đặc thù ô tô**: 工場長 Sato đi trực tiếp xe Hiace, không qua bus đoàn 監理団体 — vì garage nhỏ và Sato muốn xem mặt từ đầu.
- **Dàn nhân vật Brazil**: Aichi nhiều người Brazil do làm Toyota — Carlos là sempai 5 năm, dạy Phong 報連相 + an toàn.
- **VN nhà**: Bố mẹ Hải Phòng (quê làm cơ khí biển) — gốc gia đình cơ khí giúp Phong thích nghi nhanh với ngành ô tô.
- **Centrair (Chubu) chứ không Narita**: Sân bay Aichi riêng, ô tô đặc thù không bay vào Tokyo.
- **Trình độ N5**: Phong nói câu đơn giản, không dùng keigo phức tạp. Hỏi lại nhiều bằng 〜というのは?.

> *"10/4/2025. Ngày 1. Mai gặp garage. 3 năm."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入管 | にゅうかん | NHẬP QUẢN | Cục xuất nhập cảnh |
| 滞在目的 | たいざいもくてき | TRỆ TẠI MỤC ĐÍCH | Mục đích lưu trú |
| 技能実習 | ぎのうじっしゅう | KỸ NĂNG THỰC TẬP | Thực tập kỹ năng |
| 自動車 | じどうしゃ | TỰ ĐỘNG XA | Ô tô |
| 整備 | せいび | CHỈNH BỊ | Bảo dưỡng, sửa chữa |
| 整備工場 | せいびこうじょう | CHỈNH BỊ CÔNG TRƯỜNG | Garage, xưởng sửa xe |
| 在留カード | ざいりゅうカード | TẠI LƯU | Thẻ cư trú |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | Trưởng garage |
| 長旅 | ながたび | TRƯỜNG LỮ | Chuyến đi dài |
| 体調 | たいちょう | THỂ ĐIỀU | Tình trạng sức khoẻ |
| 荷物 | にもつ | HÀ VẬT | Hành lý |
| ハイエース | ハイエース | — | Xe Hiace (Toyota) |
| 出発 | しゅっぱつ | XUẤT PHÁT | Xuất phát |
| 地元 | じもと | ĐỊA NGUYÊN | Quê hương, địa phương gốc |
| トヨタ系 | トヨタけい | HỆ | Hệ thống Toyota |
| 修理 | しゅうり | TU LÝ | Sửa chữa |
| ガレージ | ガレージ | — | Garage |
| 車検 | しゃけん | XA KIỂM | Kiểm định xe (2 năm 1 lần) |
| 検査 | けんさ | KIỂM TRA | Kiểm tra |
| 法律 | ほうりつ | PHÁP LUẬT | Pháp luật |
| 見学 | けんがく | KIẾN HỌC | Quan sát học việc |
| 整備士長 | せいびしちょう | CHỈNH BỊ SĨ TRƯỞNG | Trưởng tổ kỹ thuật viên |
| 整備士 | せいびし | CHỈNH BỊ SĨ | Kỹ thuật viên ô tô |
| 先輩 | せんぱい | TIÊN BỐI | Đàn anh |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | An toàn là số một |
| 怪我 | けが | QUÁI NGÃ | Bị thương |
| リフト | リフト | — | Cầu nâng xe (lift) |
| 寮 | りょう | LIÊU | Ký túc xá |
| 建物 | たてもの | KIẾN VẬT | Toà nhà |
| 掃除 | そうじ | TẢO TRỪ | Quét dọn |
| 号室 | ごうしつ | HIỆU THẤT | Số phòng |
| 同室 | どうしつ | ĐỒNG THẤT | Cùng phòng |
| 家賃 | やちん | GIA TRẦM | Tiền nhà |
| 給料 | きゅうりょう | CẤP LIỆU | Lương |
| 天引き | てんびき | THIÊN DẪN | Trừ thẳng vào lương |
| 洗濯機 | せんたくき | TẨY TRẠC CƠ | Máy giặt |
| 洗濯 | せんたく | TẨY TRẠC | Giặt giũ |
| 信号 | しんごう | TÍN HIỆU | Đèn tín hiệu giao thông |
| 銀行 | ぎんこう | NGÂN HÀNH | Ngân hàng |
| 口座 | こうざ | KHẨU TOẠ | Tài khoản ngân hàng |
| 振り込む | ふりこむ | CHẤN VIÊM | Chuyển khoản |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | Báo cáo - liên lạc - bàn bạc |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | Bàn bạc, tham vấn |
| 弁当 | べんとう | BIỆN ĐƯƠNG | Cơm hộp |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000002, 800000043, NULL, 'markdown_book', 'T2. Ngày đầu vào garage (ガレージ初日)', '# Sách thực tập sinh ô tô · T2. Ngày đầu vào garage (ガレージ初日)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) bước vào garage 佐藤自動車整備工場 ngày đầu. Học các mẫu hội thoại tiếng Nhật của thực tập sinh ô tô: chào buổi sáng tại 事務所, chào sempai trực tiếp 整備士長 Yamada, làm quen 同僚 Hiroshi (Nhật) + sempai Carlos (Brazil), tham gia 朝礼 + ラジオ体操, mặc 作業着 và đội ヘルメット, lần đầu vào khu vực リフト, ôn 報連相 + 安全第一.

---

## Bối cảnh

Ngày 11 tháng 4 năm 2025. 7h45 sáng. Phong rời ký túc cùng Carlos, đi bộ 1 phút sang garage. Trình độ N5. Chương này tập trung các tình huống ngày đầu vào garage: chào ở văn phòng 事務所, gặp 整備士長 Yamada (35 tuổi, sempai trực tiếp), gặp 同僚 Hiroshi (22 tuổi, người Nhật, vào trước Phong 6 tháng), tham gia 朝礼 và ラジオ体操, được phát 作業着 + ヘルメット + 安全靴, lần đầu được Yamada dẫn vào khu リフト xem các sempai thao tác.

---

## Tình huống 1 — Đường từ ký túc sang garage · 7:50, Carlos dẫn đường

| Vai | Lời thoại |
|---|---|
| Carlos | フォンさん、おはようございます。<ruby>準備<rt>じゅんび</rt></ruby>できましたか？<br>*(Anh Phong, chào buổi sáng. Đã chuẩn bị xong chưa?)* |
| Phong | はい、おはようございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Vâng, chào buổi sáng. Em hơi căng thẳng ạ.)* |
| Carlos | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。みんな<ruby>優<rt>やさ</rt></ruby>しいですよ。まず<ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます。<br>*(Không sao. Mọi người tốt bụng cả. Đầu tiên đến văn phòng đã.)* |
| Phong | はい。<ruby>事務所<rt>じむしょ</rt></ruby>...というのは<ruby>会社<rt>かいしゃ</rt></ruby>のオフィスのことですか？<br>*(Vâng. Jimusho... nghĩa là văn phòng công ty ạ?)* |
| Carlos | そうそう、オフィスです。<ruby>朝<rt>あさ</rt></ruby>はみんなで<ruby>朝礼<rt>ちょうれい</rt></ruby>をします。<br>*(Đúng, là văn phòng. Sáng nào mọi người cũng làm "chourei".)* |
| Phong | <ruby>朝礼<rt>ちょうれい</rt></ruby>って<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Chourei là gì ạ?)* |
| Carlos | <ruby>朝<rt>あさ</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>ミーティングです。<ruby>工場長<rt>こうじょうちょう</rt></ruby>がその<ruby>日<rt>ひ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Là cuộc họp chào sáng. Trưởng garage giải thích công việc ngày hôm đó.)* |
| Phong | なるほど。ベトナムにもあります。<br>*(Ra vậy. Ở Việt Nam cũng có.)* |

---

## Tình huống 2 — Văn phòng 事務所 · 8:00, chào buổi sáng tập thể

| Vai | Lời thoại |
|---|---|
| Carlos | （ドアを<ruby>開<rt>あ</rt></ruby>けて）おはようございます！<br>*(Mở cửa. Chào buổi sáng!)* |
| Phong | おはようございます！<br>*(Chào buổi sáng!)* |
| Sato | おはようございます。フォンさん、よく<ruby>休<rt>やす</rt></ruby>めましたか？<br>*(Chào buổi sáng. Anh Phong, ngủ ngon chứ?)* |
| Phong | はい、ありがとうございます。よく<ruby>眠<rt>ねむ</rt></ruby>れました。<br>*(Vâng, em cảm ơn ông. Em ngủ ngon ạ.)* |
| Sato | では、みなさんに<ruby>紹介<rt>しょうかい</rt></ruby>します。こちらは<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>のフォンさんです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Vậy, tôi giới thiệu với mọi người. Đây là thực tập sinh mới — anh Phong. Đến từ Việt Nam.)* |
| Phong | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・フォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Rất hân hạnh. Em tên Nguyễn Văn Phong. Em 21 tuổi. Mong mọi người chỉ bảo ạ.)* |
| Yamada | おはよう、フォンさん。<ruby>整備士長<rt>せいびしちょう</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>です。これからフォンさんの<ruby>先輩<rt>せんぱい</rt></ruby>になります。よろしくね。<br>*(Chào buổi sáng, anh Phong. Tôi là Yamada — trưởng tổ kỹ thuật. Từ giờ tôi là đàn anh trực tiếp của em. Mong em.)* |
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Yamada, mong anh chỉ bảo ạ.)* |
| Hiroshi | おはようございます！<ruby>木村<rt>きむら</rt></ruby><ruby>大志<rt>ひろし</rt></ruby>です。<ruby>22<rt>にじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>。フォンさんと<ruby>歳<rt>とし</rt></ruby>が<ruby>近<rt>ちか</rt></ruby>いですね。よろしく！<br>*(Chào buổi sáng! Tôi là Kimura Hiroshi. 22 tuổi. Tuổi gần với anh Phong nhỉ. Mong nhé!)* |
| Phong | ヒロシさん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Hiroshi, mong anh ạ.)* |

---

## Tình huống 3 — Văn phòng · 8:05, 朝礼 + ラジオ体操

*Cả nhóm 6 người xếp hàng trước văn phòng, ra sân nhỏ trước garage. Trên loa bắt đầu phát nhạc ラジオ体操.*

| Vai | Lời thoại |
|---|---|
| Sato | みなさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Mọi người, bắt đầu họp chào sáng nay. Cùng xác nhận lịch ngày hôm nay.)* |
| Yamada | <ruby>午前<rt>ごぜん</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>台<rt>だい</rt></ruby>、<ruby>車検<rt>しゃけん</rt></ruby>が<ruby>1<rt>いち</rt></ruby><ruby>台<rt>だい</rt></ruby>です。<br>*(Buổi sáng có 3 xe thay dầu, 1 xe shaken.)* |
| Sato | フォンさんは<ruby>今日<rt>きょう</rt></ruby>から<ruby>見学<rt>けんがく</rt></ruby>です。<ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>付<rt>つ</rt></ruby>いて<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Phong từ hôm nay quan sát học việc. Đi theo anh Yamada để xem nhé.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Sato | では、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で。<ruby>怪我<rt>けが</rt></ruby>のないように！<br>*(Vậy, an toàn trên hết. Đừng để bị thương!)* |
| Cả tổ | はい！<br>*(Vâng!)* |
| Sato | では、ラジオ<ruby>体操<rt>たいそう</rt></ruby>です。<br>*(Vậy, bài thể dục đài phát thanh nào.)* |
| Phong | （<ruby>小声<rt>こごえ</rt></ruby>で Carlos へ）ラジオ<ruby>体操<rt>たいそう</rt></ruby>って？<br>*(Nói nhỏ với Carlos. Rajio taisou là gì?)* |
| Carlos | （<ruby>小声<rt>こごえ</rt></ruby>）<ruby>朝<rt>あさ</rt></ruby>の<ruby>体操<rt>たいそう</rt></ruby>です。みんなで<ruby>動<rt>うご</rt></ruby>きます。<ruby>真似<rt>まね</rt></ruby>してください。<br>*(Nói nhỏ. Là bài thể dục buổi sáng. Mọi người cùng làm. Anh bắt chước thôi.)* |
| Phong | はい！<br>*(Vâng!)* |

---

## Tình huống 4 — Phòng thay đồ · 8:20, được phát 作業着 + ヘルメット

| Vai | Lời thoại |
|---|---|
| Yamada | フォンさん、こちらが<ruby>作業着<rt>さぎょうぎ</rt></ruby>です。サイズはMで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Anh Phong, đây là đồng phục làm việc. Cỡ M có ổn không?)* |
| Phong | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ありがとうございます。<br>*(Vâng, ổn ạ. Em cảm ơn.)* |
| Yamada | これは<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>です。つま<ruby>先<rt>さき</rt></ruby>に<ruby>鉄<rt>てつ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っています。<ruby>重<rt>おも</rt></ruby>いですが、<ruby>足<rt>あし</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Đây là giày an toàn. Mũi giày có thép. Hơi nặng nhưng bảo vệ chân.)* |
| Phong | <ruby>安全靴<rt>あんぜんぐつ</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めて<ruby>履<rt>は</rt></ruby>きます。<br>*(Giày an toàn, em đi lần đầu.)* |
| Yamada | これがヘルメットです。リフトの<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るときは<ruby>必<rt>かなら</rt></ruby>ずかぶってください。<br>*(Đây là mũ bảo hộ. Khi vào dưới lift thì nhất định phải đội.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ずかぶります。<br>*(Vâng, em sẽ luôn đội.)* |
| Yamada | それから、<ruby>軍手<rt>ぐんて</rt></ruby>です。<ruby>手<rt>て</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<ruby>毎日<rt>まいにち</rt></ruby><ruby>洗<rt>あら</rt></ruby>ってください。<br>*(Còn nữa, găng tay vải. Bảo vệ tay. Hằng ngày phải giặt nhé.)* |
| Phong | はい。<ruby>軍手<rt>ぐんて</rt></ruby>...というのは<ruby>手袋<rt>てぶくろ</rt></ruby>のことですね？<br>*(Vâng. Gunte... là găng tay phải không ạ?)* |
| Yamada | そうです。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>手袋<rt>てぶくろ</rt></ruby>を<ruby>軍手<rt>ぐんて</rt></ruby>と<ruby>言<rt>い</rt></ruby>います。よく<ruby>覚<rt>おぼ</rt></ruby>えましたね。<br>*(Đúng. Găng tay đi làm gọi là "gunte". Em nhớ tốt đấy.)* |

---

## Tình huống 5 — Cửa garage · 8:35, lần đầu bước vào khu リフト

*Phong khoác 作業着 xanh, đội ヘルメット, đi giày 安全靴 hơi nặng. Theo sau Yamada, bước vào khu garage chính. Trần cao, 4 cầu リフト xếp song song, mùi dầu nhớt đậm, tiếng máy nén khí kêu xì xì.*

| Vai | Lời thoại |
|---|---|
| Yamada | ここがガレージの<ruby>中<rt>なか</rt></ruby>です。リフトが<ruby>4<rt>よん</rt></ruby><ruby>台<rt>だい</rt></ruby>あります。<br>*(Đây là bên trong garage. Có 4 cầu lift.)* |
| Phong | わあ、<ruby>大<rt>おお</rt></ruby>きいですね。<ruby>車<rt>くるま</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>にあります。<br>*(Wa, to quá. Có xe ở trên cao.)* |
| Yamada | リフトで<ruby>車<rt>くるま</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げて、<ruby>下<rt>した</rt></ruby>から<ruby>整備<rt>せいび</rt></ruby>します。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>下<rt>した</rt></ruby>に<ruby>勝手<rt>かって</rt></ruby>に<ruby>入<rt>はい</rt></ruby>らないでください。<br>*(Dùng lift nâng xe lên, sửa từ dưới. Tuyệt đối không được tự ý chui vào phía dưới.)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi.)* |
| Yamada | <ruby>勝手<rt>かって</rt></ruby>に...というのは<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Katte ni... có hiểu không?)* |
| Phong | すみません、ちょっと<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Xin lỗi, em không hiểu lắm ạ.)* |
| Yamada | <ruby>一人<rt>ひとり</rt></ruby>で、<ruby>誰<rt>だれ</rt></ruby>にも<ruby>言<rt>い</rt></ruby>わないで、ということです。<ruby>必<rt>かなら</rt></ruby>ず<ruby>私<rt>わたし</rt></ruby>か<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけてからにしてください。<br>*(Là một mình, không nói với ai. Phải hỏi tôi hoặc đàn anh trước đã nhé.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>をかけます。<br>*(Vâng, em nhất định sẽ hỏi.)* |

---

## Tình huống 6 — Khu リフト 1 · 9:00, gặp Hiroshi đang chuẩn bị nâng xe

| Vai | Lời thoại |
|---|---|
| Hiroshi | フォンさん、ここに<ruby>来<rt>き</rt></ruby>てください。リフトの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>見<rt>み</rt></ruby>せます。<br>*(Anh Phong, đến đây xem. Tôi cho xem cách dùng lift.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Hiroshi | まず、<ruby>車<rt>くるま</rt></ruby>の<ruby>下<rt>した</rt></ruby>の<ruby>4<rt>よん</rt></ruby>か<ruby>所<rt>しょ</rt></ruby>のポイントにリフトの<ruby>腕<rt>うで</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Đầu tiên, đặt 4 cánh tay lift vào 4 điểm dưới gầm xe.)* |
| Phong | <ruby>4<rt>よん</rt></ruby>か<ruby>所<rt>しょ</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>位置<rt>いち</rt></ruby>ですか？<br>*(Bốn điểm, cùng vị trí không ạ?)* |
| Hiroshi | <ruby>車<rt>くるま</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>います。<ruby>取扱<rt>とりあつかい</rt></ruby><ruby>説明書<rt>せつめいしょ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます。<br>*(Khác nhau theo từng xe. Phải xem sách hướng dẫn.)* |
| Phong | <ruby>取扱説明書<rt>とりあつかいせつめいしょ</rt></ruby>...<ruby>長<rt>なが</rt></ruby>い<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Toriatsukai setsumeisho... từ dài thật.)* |
| Hiroshi | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>短<rt>みじか</rt></ruby>く「<ruby>取説<rt>とりせつ</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Cười. Gọi tắt là "torisetsu".)* |
| Phong | <ruby>取説<rt>とりせつ</rt></ruby>ですね。<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Torisetsu nhỉ. Em nhớ rồi.)* |
| Hiroshi | では、リフトを<ruby>上<rt>あ</rt></ruby>げます。ボタンを<ruby>押<rt>お</rt></ruby>すと<ruby>動<rt>うご</rt></ruby>きます。<ruby>下<rt>した</rt></ruby>がっていてください。<br>*(Vậy, tôi nâng lift. Bấm nút là chạy. Anh lùi ra nhé.)* |
| Phong | はい！（<ruby>後<rt>うし</rt></ruby>ろに<ruby>下<rt>さ</rt></ruby>がる）<br>*(Vâng! Lùi ra sau.)* |

---

## Tình huống 7 — Khu リフト 1 · 9:15, xe nâng lên, lần đầu nhìn dưới gầm

| Vai | Lời thoại |
|---|---|
| Hiroshi | <ruby>上<rt>あ</rt></ruby>がりました。これで<ruby>下<rt>した</rt></ruby>から<ruby>整備<rt>せいび</rt></ruby>できます。<br>*(Nâng lên rồi. Giờ có thể sửa từ dưới.)* |
| Phong | わあ、<ruby>車<rt>くるま</rt></ruby>の<ruby>下<rt>した</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めて<ruby>見<rt>み</rt></ruby>えます。<ruby>面白<rt>おもしろ</rt></ruby>いですね。<br>*(Wa, lần đầu em thấy dưới gầm xe. Thú vị thật.)* |
| Hiroshi | これがエンジン、これがオイルパン、それからマフラーです。<br>*(Đây là động cơ, đây là cạc-te dầu, kia là bô.)* |
| Phong | エンジン、オイルパン、マフラー...メモしてもいいですか？<br>*(Động cơ, cạc-te dầu, bô... Em ghi lại được không ạ?)* |
| Hiroshi | もちろん。<ruby>今日<rt>きょう</rt></ruby>はメモ、<ruby>明日<rt>あした</rt></ruby>は<ruby>覚<rt>おぼ</rt></ruby>えてくださいね。（<ruby>冗談<rt>じょうだん</rt></ruby>っぽく）<br>*(Tất nhiên. Hôm nay ghi, mai phải nhớ nhé. Nói đùa.)* |
| Phong | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Cười. Em sẽ cố!)* |
| Yamada | （<ruby>近<rt>ちか</rt></ruby>づいて）ヒロシ、フォンさんに<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>を<ruby>一度<rt>いちど</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えすぎないで。<ruby>少<rt>すこ</rt></ruby>しずつね。<br>*(Đến gần. Hiroshi, đừng dạy thuật ngữ cho anh Phong nhiều một lúc thế. Từ từ thôi.)* |
| Hiroshi | はい、<ruby>山田<rt>やまだ</rt></ruby>さん、すみません。<br>*(Vâng, anh Yamada, em xin lỗi.)* |

---

## Tình huống 8 — Khu リフト 2 · 10:30, Carlos đang làm 車検 check

| Vai | Lời thoại |
|---|---|
| Yamada | フォンさん、こっちはカルロスがやっている<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>です。<ruby>見学<rt>けんがく</rt></ruby>しましょう。<br>*(Anh Phong, bên này là Carlos đang làm shaken kiểm tra. Cùng xem.)* |
| Carlos | フォンさん、<ruby>見<rt>み</rt></ruby>てください。タイヤをチェックしています。<br>*(Anh Phong, xem này. Tôi đang kiểm tra lốp.)* |
| Phong | タイヤの<ruby>何<rt>なに</rt></ruby>をチェックしますか？<br>*(Kiểm tra cái gì của lốp ạ?)* |
| Carlos | <ruby>溝<rt>みぞ</rt></ruby>の<ruby>深<rt>ふか</rt></ruby>さです。<ruby>1.6<rt>いってんろく</rt></ruby>ミリより<ruby>浅<rt>あさ</rt></ruby>いと<ruby>車検<rt>しゃけん</rt></ruby>に<ruby>通<rt>とお</rt></ruby>りません。<br>*(Độ sâu rãnh. Nông hơn 1.6mm là không qua được shaken.)* |
| Phong | <ruby>溝<rt>みぞ</rt></ruby>...というのは？<br>*(Mizo... nghĩa là gì ạ?)* |
| Carlos | （タイヤの<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>指<rt>ゆび</rt></ruby>さす）この<ruby>線<rt>せん</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>の<ruby>深<rt>ふか</rt></ruby>いところです。<br>*(Chỉ vào mặt lốp. Phần sâu giữa các đường này.)* |
| Phong | あ、<ruby>分<rt>わ</rt></ruby>かりました。タイヤの<ruby>線<rt>せん</rt></ruby>の<ruby>深<rt>ふか</rt></ruby>さですね。<br>*(À, em hiểu rồi. Là độ sâu các đường trên lốp ạ.)* |
| Carlos | はい。それから、ブレーキも<ruby>点検<rt>てんけん</rt></ruby>します。<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わりますから。<br>*(Vâng. Sau đó kiểm tra cả phanh. Vì liên quan đến tính mạng.)* |
| Phong | <ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる...<ruby>怖<rt>こわ</rt></ruby>いですね。<br>*(Liên quan tính mạng... đáng sợ thật.)* |
| Yamada | だから<ruby>整備士<rt>せいびし</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>です。お<ruby>客<rt>きゃく</rt></ruby>さんの<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Vì thế công việc của kỹ thuật viên rất quan trọng. Là việc bảo vệ tính mạng khách hàng.)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>真剣<rt>しんけん</rt></ruby>にやります。<br>*(Vâng, em hiểu rồi. Em sẽ làm nghiêm túc.)* |

---

## Tình huống 9 — Phòng nghỉ · 12:00, ăn trưa cùng tổ

| Vai | Lời thoại |
|---|---|
| Hiroshi | フォンさん、お<ruby>弁当<rt>べんとう</rt></ruby><ruby>持<rt>も</rt></ruby>ってきましたか？<br>*(Anh Phong, có mang cơm hộp không?)* |
| Phong | いいえ、<ruby>今日<rt>きょう</rt></ruby>はコンビニのおにぎりを<ruby>買<rt>か</rt></ruby>いました。<br>*(Không, hôm nay em mua cơm nắm konbini.)* |
| Carlos | <ruby>明日<rt>あした</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>りましょう。<ruby>節約<rt>せつやく</rt></ruby>できます。<br>*(Từ mai cùng nấu. Tiết kiệm được.)* |
| Phong | <ruby>節約<rt>せつやく</rt></ruby>...？<br>*(Setsuyaku...?)* |
| Hiroshi | お<ruby>金<rt>かね</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わないで<ruby>貯<rt>た</rt></ruby>めることです。<br>*(Là không tiêu tiền, để dành.)* |
| Phong | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>節約<rt>せつやく</rt></ruby>、<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(À, em hiểu rồi. Tiết kiệm quan trọng nhỉ.)* |
| Yamada | フォンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby>はどうでしたか？<br>*(Anh Phong, sáng nay thế nào?)* |
| Phong | はい、たくさん<ruby>新<rt>あたら</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。リフト、エンジン、オイルパン、タイヤの<ruby>溝<rt>みぞ</rt></ruby>...<ruby>頭<rt>あたま</rt></ruby>がいっぱいです。<br>*(Vâng, em học được nhiều từ mới. Lift, động cơ, cạc-te dầu, rãnh lốp... đầu đầy quá.)* |
| Yamada | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しずつでいいです。<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>だけです。<br>*(Không sao, từ từ cũng được. Ba tháng đầu chỉ quan sát thôi.)* |

---

## Tình huống 10 — Khu リフト 1 · 14:00, Yamada giải thích quy tắc 報連相

| Vai | Lời thoại |
|---|---|
| Yamada | フォンさん、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>があります。「<ruby>報連相<rt>ほうれんそう</rt></ruby>」って<ruby>知<rt>し</rt></ruby>っていますか？<br>*(Anh Phong, có chuyện quan trọng. Em biết "hourensou" không?)* |
| Phong | はい、<ruby>昨日<rt>きのう</rt></ruby>カルロスさんに<ruby>聞<rt>き</rt></ruby>きました。<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>ですね。<br>*(Vâng, hôm qua em nghe anh Carlos kể. Là báo cáo, liên lạc, bàn bạc ạ.)* |
| Yamada | そうです。ガレージでは<ruby>特<rt>とく</rt></ruby>に<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>仕事<rt>しごと</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら、<ruby>必<rt>かなら</rt></ruby>ず<ruby>私<rt>わたし</rt></ruby>に「<ruby>終<rt>お</rt></ruby>わりました」と<ruby>言<rt>い</rt></ruby>ってください。<br>*(Đúng. Ở garage đặc biệt quan trọng. Làm xong việc phải nói "owarimashita" với tôi.)* |
| Phong | はい、「<ruby>終<rt>お</rt></ruby>わりました」ですね。<br>*(Vâng, "owarimashita" ạ.)* |
| Yamada | それから、<ruby>分<rt>わ</rt></ruby>からないときは「<ruby>分<rt>わ</rt></ruby>かりません」とすぐ<ruby>言<rt>い</rt></ruby>ってください。<ruby>勝手<rt>かって</rt></ruby>にやらないでください。<br>*(Còn nữa, khi không hiểu phải nói "wakarimasen" ngay. Đừng tự ý làm.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, em nhất định sẽ hỏi.)* |
| Yamada | <ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>怒<rt>おこ</rt></ruby>りません。でも<ruby>嘘<rt>うそ</rt></ruby>と<ruby>隠<rt>かく</rt></ruby>すことは<ruby>絶対<rt>ぜったい</rt></ruby>にダメです。<br>*(Sai cũng không bị mắng. Nhưng tuyệt đối không được nói dối hay giấu.)* |
| Phong | はい、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, em sẽ nói thật.)* |

---

## Tình huống 11 — Văn phòng · 17:30, kết thúc ngày đầu

| Vai | Lời thoại |
|---|---|
| Sato | みなさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người, vất vả rồi.)* |
| Cả tổ | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Vất vả rồi!)* |
| Sato | フォンさん、<ruby>初日<rt>しょにち</rt></ruby>はどうでしたか？<br>*(Anh Phong, ngày đầu thế nào?)* |
| Phong | はい、たくさん<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<ruby>言葉<rt>ことば</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですが、みなさん<ruby>優<rt>やさ</rt></ruby>しくて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng, em học được rất nhiều. Từ khó nhưng mọi người tốt nên em vui.)* |
| Yamada | <ruby>明日<rt>あした</rt></ruby>もよろしくね、フォンさん。<br>*(Mai cũng mong em nhé, anh Phong.)* |
| Phong | はい、<ruby>明日<rt>あした</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, mai cũng mong anh ạ. Em xin phép về trước.)* |
| Hiroshi | じゃあ、また<ruby>明日<rt>あした</rt></ruby>！<br>*(Vậy mai gặp nhé!)* |
| Carlos | フォン、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>ろう。<br>*(Phong, mình cùng về.)* |
| Phong | はい、カルロスさん。<br>*(Vâng, anh Carlos.)* |

---

## Tình huống 12 — Phòng 203 · 20:30, gọi điện cho mẹ (cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong gọi video về cho mẹ sau ngày đầu vào xưởng.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Mẹ ơi, con vừa kết thúc ngày đầu ở garage rồi. |
| Mẹ Phong | (tiếng Việt) Sao? Có vất vả không con? |
| Phong | (tiếng Việt) Không vất vả lắm vì hôm nay con chỉ quan sát, không động tay. Ba tháng đầu chỉ 見学 — tức là quan sát học việc thôi mẹ ạ. |
| Mẹ Phong | (tiếng Việt) Các anh sempai thế nào con? |
| Phong | (tiếng Việt) Anh Yamada — sempai trực tiếp của con — 35 tuổi, hiền lắm. Còn anh Hiroshi 22 tuổi người Nhật, vào trước con 6 tháng, vui tính, dạy con nhiều từ. Carlos cùng phòng thì kể chuyện trên xe sửa. |
| Mẹ Phong | (tiếng Việt) Con có sợ máy móc không? |
| Phong | (tiếng Việt) Lúc đầu thấy lift nâng xe lên 2 mét cao thì hơi sợ, nhưng quen rồi. Hôm nay con học được tên các bộ phận: エンジン (động cơ), オイルパン (cạc-te dầu), マフラー (bô), タイヤの溝 (rãnh lốp). Còn được phát 作業着 đồng phục, 安全靴 giày mũi thép, ヘルメット mũ bảo hộ. |
| Mẹ Phong | (tiếng Việt) Giày mũi thép thì nặng lắm con, đi đau chân thì bảo mẹ gửi miếng lót nhé. |
| Phong | (tiếng Việt) Vâng. À mẹ ơi, anh Yamada dặn 安全第一 — an toàn số một. Và 報連相 — báo cáo, liên lạc, bàn bạc — nếu không hiểu phải hỏi ngay, không được giấu. |
| Mẹ Phong | (tiếng Việt) Đúng rồi. Hồi xưa cậu Ba cũng dặn bố con như thế khi làm cơ khí. Cẩn thận con nhé. |
| Phong | (tiếng Việt) Vâng. Con đi ngủ sớm, mai 8 giờ lại 朝礼. Mẹ ngủ ngon. |

---

## Đọng lại chương 2

Ngày đầu vào garage, Phong làm quen các nghi thức công sở Nhật: **朝礼** (họp chào sáng) + **ラジオ体操** (thể dục tập thể), được phát **作業着・安全靴・ヘルメット・軍手** và học quy tắc tuyệt đối **絶対に勝手に入らない** (không tự ý chui vào dưới lift). Gặp đủ cast: 整備士長 Yamada — sempai trực tiếp, đồng nghiệp Hiroshi (Nhật) tuổi gần, Carlos (Brazil) cùng phòng. Học từ chuyên ngành: **リフト・エンジン・オイルパン・マフラー・タイヤの溝・取説**. Ôn lại nguyên tắc **報連相** + **安全第一** + nguyên tắc vàng: **失敗してもいい、嘘と隠すことは絶対ダメ**.

> Từ vựng & mẫu câu chương này: 事務所・朝礼・ラジオ体操・作業着・安全靴・ヘルメット・軍手・実習生・リフト・エンジン・オイルパン・マフラー・取扱説明書・取説・溝・点検・節約・正直・勝手に・失敗・〜って何ですか・〜というのは・終わりました・分かりません

## Bí quyết chương

- **Dàn nhân vật garage hoàn chỉnh**: 工場長 Sato (50t, ông chủ) + 整備士長 Yamada (35t, sempai trực tiếp Phong) + 同僚 Hiroshi (22t Nhật, vào trước 6 tháng) + 同室 Carlos (28t Brazil, 5 năm).
- **Ngày đầu chỉ 見学**: 3 tháng đầu không động tay, chỉ quan sát — phù hợp N5 vì chưa biết thuật ngữ.
- **An toàn = nghi thức**: 作業着 + ヘルメット + 安全靴 + 軍手 là 4 món bắt buộc, không có không vào garage.
- **絶対に勝手に入らない**: Quy tắc số 1 dưới リフト — xe rơi = chết người.
- **報連相 ứng dụng**: Nói "終わりました" sau mỗi việc, "分かりません" khi không hiểu, không giấu sai.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 緊張 | きんちょう | KHẨN TRƯƠNG | Căng thẳng, hồi hộp |
| 事務所 | じむしょ | SỰ VỤ SỞ | Văn phòng |
| 朝礼 | ちょうれい | TRIỀU LỄ | Họp chào sáng |
| 挨拶 | あいさつ | ÁI TÁP | Chào hỏi |
| ラジオ体操 | ラジオたいそう | THỂ THAO | Thể dục đài phát thanh |
| 実習生 | じっしゅうせい | THỰC TẬP SINH | Thực tập sinh |
| 整備士長 | せいびしちょう | CHỈNH BỊ SĨ TRƯỞNG | Trưởng tổ kỹ thuật viên |
| 予定 | よてい | DỰ ĐỊNH | Lịch, dự định |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 交換 | こうかん | GIAO HOÁN | Thay, đổi |
| 見学 | けんがく | KIẾN HỌC | Quan sát học việc |
| 体操 | たいそう | THỂ THAO | Thể dục |
| 作業着 | さぎょうぎ | TÁC NGHIỆP TRƯỚC | Đồng phục làm việc |
| 安全靴 | あんぜんぐつ | AN TOÀN ĐÌNH | Giày mũi thép an toàn |
| 鉄 | てつ | THIẾT | Thép, sắt |
| ヘルメット | ヘルメット | — | Mũ bảo hộ |
| 軍手 | ぐんて | QUÂN THỦ | Găng tay vải |
| 手袋 | てぶくろ | THỦ ĐÁI | Găng tay |
| リフト | リフト | — | Cầu nâng xe |
| エンジン | エンジン | — | Động cơ |
| オイルパン | オイルパン | — | Cạc-te dầu |
| マフラー | マフラー | — | Ống xả, bô |
| 取扱説明書 | とりあつかいせつめいしょ | THỦ XẢ THUYẾT MINH THƯ | Sách hướng dẫn sử dụng |
| 取説 | とりせつ | THỦ THUYẾT | Sách hướng dẫn (gọi tắt) |
| 専門用語 | せんもんようご | CHUYÊN MÔN DỤNG NGỮ | Thuật ngữ chuyên ngành |
| 点検 | てんけん | ĐIỂM KIỂM | Kiểm tra, soát |
| 溝 | みぞ | CÂU | Rãnh, khe |
| 命 | いのち | MỆNH | Tính mạng |
| 真剣 | しんけん | CHÂN KIẾM | Nghiêm túc, thật sự |
| 弁当 | べんとう | BIỆN ĐƯƠNG | Cơm hộp |
| 節約 | せつやく | TIẾT ƯỚC | Tiết kiệm |
| 勝手に | かってに | THẮNG THỦ | Tự tiện, tự ý |
| 失敗 | しっぱい | THẤT BẠI | Thất bại |
| 嘘 | うそ | — | Nói dối |
| 隠す | かくす | ẨN | Giấu, che |
| 正直 | しょうじき | CHÍNH TRỰC | Thành thật |
| 初日 | しょにち | SƠ NHẬT | Ngày đầu tiên |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000003, 800000043, NULL, 'markdown_book', 'T3. Học tên dụng cụ cơ bản (基本工具の名前)', '# Sách thực tập sinh ô tô · T3. Học tên dụng cụ cơ bản (基本工具の名前)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) học tên các dụng cụ cơ bản trong garage. Học các mẫu hội thoại tiếng Nhật để: hỏi tên dụng cụ (これは<ruby>何<rt>なん</rt></ruby>ですか?), nhờ sempai đưa giúp dụng cụ (<ruby>渡<rt>わた</rt></ruby>してください), xác nhận kích cỡ (サイズは?), phân biệt スパナ/メガネ/ソケット, hiểu các loại ドライバー (+/-), nhận diện ボルト・ナット, và quy tắc bảo quản dụng cụ.

---

## Bối cảnh

Ngày 18 tháng 4 năm 2025. Tuần thứ 2 của Phong. Sau ラジオ体操, Yamada gọi Phong vào phòng dụng cụ (<ruby>工具<rt>こうぐ</rt></ruby><ruby>室<rt>しつ</rt></ruby>) để dạy tên các dụng cụ cơ bản. Trình độ N5. Chương này tập trung tên dụng cụ thiết yếu: スパナ (cờ lê), メガネレンチ (cờ lê tròng), ソケットレンチ (khẩu), ドライバー (tua vít), ボルト・ナット (bu lông - đai ốc), リフト, ジャッキ, トルクレンチ. Mẫu câu thực tế: hỏi tên - đưa dụng cụ - cất dụng cụ.

---

## Tình huống 1 — Phòng dụng cụ · 8:30, Yamada giới thiệu kệ dụng cụ

*Phong theo Yamada vào phòng nhỏ kế bên khu リフト. Bốn bức tường treo đầy dụng cụ, mỗi cái có chỗ riêng, viền vẽ bằng bút trắng. Bàn giữa phòng có 2 hộp đồ nghề lớn.*

| Vai | Lời thoại |
|---|---|
| Yamada | フォンさん、ここが<ruby>工具<rt>こうぐ</rt></ruby><ruby>室<rt>しつ</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>う<ruby>場所<rt>ばしょ</rt></ruby>です。<br>*(Anh Phong, đây là phòng dụng cụ. Là chỗ ngày nào cũng dùng.)* |
| Phong | わあ、たくさんありますね。<br>*(Wa, nhiều quá.)* |
| Yamada | <ruby>大事<rt>だいじ</rt></ruby>なルールがあります。<ruby>使<rt>つか</rt></ruby>った<ruby>後<rt>あと</rt></ruby>、<ruby>元<rt>もと</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>してください。<br>*(Có quy tắc quan trọng. Sau khi dùng phải trả về chỗ cũ.)* |
| Phong | はい。<ruby>白<rt>しろ</rt></ruby>い<ruby>線<rt>せん</rt></ruby>がありますね。<br>*(Vâng. Có vẽ đường trắng nhỉ.)* |
| Yamada | そうです。<ruby>白<rt>しろ</rt></ruby>い<ruby>線<rt>せん</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>します。「<ruby>見<rt>み</rt></ruby>える<ruby>化<rt>か</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<ruby>無<rt>な</rt></ruby>くなったらすぐ<ruby>分<rt>わ</rt></ruby>かります。<br>*(Đúng. Trả về trong đường trắng. Gọi là "mieru ka". Mất một cái là thấy ngay.)* |
| Phong | <ruby>見<rt>み</rt></ruby>える<ruby>化<rt>か</rt></ruby>...というのは「<ruby>見<rt>み</rt></ruby>えるようにする」ですか？<br>*(Mieru ka... nghĩa là "làm cho thấy được" ạ?)* |
| Yamada | そうです。<ruby>日本<rt>にほん</rt></ruby>の<ruby>工場<rt>こうじょう</rt></ruby>では<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<br>*(Đúng. Là tư duy quan trọng trong xưởng Nhật.)* |

---

## Tình huống 2 — Phòng dụng cụ · 8:40, スパナ — cờ lê

| Vai | Lời thoại |
|---|---|
| Yamada | では、<ruby>最初<rt>さいしょ</rt></ruby>はこれです。<ruby>何<rt>なん</rt></ruby>だか<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Vậy, đầu tiên là cái này. Có biết là gì không?)* |
| Phong | はい、ベトナムでも<ruby>見<rt>み</rt></ruby>ました。<ruby>父<rt>ちち</rt></ruby>の<ruby>道具<rt>どうぐ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby>にありました。<ruby>名前<rt>なまえ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Vâng, ở Việt Nam em cũng thấy. Trong hộp đồ nghề của bố. Em không biết tên.)* |
| Yamada | これは「スパナ」です。ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>いますか？<br>*(Đây là "supana". Tiếng Việt gọi là gì?)* |
| Phong | 「cờ lê」と<ruby>言<rt>い</rt></ruby>います。<br>*(Gọi là "cờ lê".)* |
| Yamada | コレ？<ruby>面白<rt>おもしろ</rt></ruby>い。スパナはボルトを<ruby>回<rt>まわ</rt></ruby>すための<ruby>工具<rt>こうぐ</rt></ruby>です。<br>*(Cờ-lê? Thú vị. Supana là dụng cụ để vặn bu lông.)* |
| Phong | サイズはいろいろありますね。<br>*(Có nhiều cỡ nhỉ.)* |
| Yamada | はい。<ruby>8<rt>はち</rt></ruby>ミリ、<ruby>10<rt>じゅう</rt></ruby>ミリ、<ruby>12<rt>じゅうに</rt></ruby>ミリ...ボルトの<ruby>大<rt>おお</rt></ruby>きさに<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Vâng. 8mm, 10mm, 12mm... Phải khớp với cỡ bu lông.)* |
| Phong | <ruby>間違<rt>まちが</rt></ruby>えたらどうなりますか？<br>*(Nhầm cỡ thì sao ạ?)* |
| Yamada | スパナが<ruby>滑<rt>すべ</rt></ruby>って、ボルトが<ruby>潰<rt>つぶ</rt></ruby>れます。だから、サイズ<ruby>確認<rt>かくにん</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Supana sẽ trượt, bu lông bị toét. Vì vậy xác nhận cỡ rất quan trọng.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em nhất định sẽ kiểm tra.)* |

---

## Tình huống 3 — Phòng dụng cụ · 8:55, メガネレンチ + ソケット

| Vai | Lời thoại |
|---|---|
| Yamada | これは「メガネレンチ」です。スパナと<ruby>似<rt>に</rt></ruby>ていますが、<ruby>違<rt>ちが</rt></ruby>います。<br>*(Đây là "megane-renchi". Giống supana nhưng khác.)* |
| Phong | <ruby>先<rt>さき</rt></ruby>が<ruby>丸<rt>まる</rt></ruby>くて、<ruby>穴<rt>あな</rt></ruby>が<ruby>開<rt>あ</rt></ruby>いていますね。<br>*(Đầu tròn, có lỗ thủng nhỉ.)* |
| Yamada | そう。ボルトを<ruby>全<rt>ぜん</rt></ruby><ruby>周<rt>しゅう</rt></ruby><ruby>囲<rt>かこ</rt></ruby>むので、<ruby>滑<rt>すべ</rt></ruby>りにくいです。<ruby>固<rt>かた</rt></ruby>いボルトに<ruby>使<rt>つか</rt></ruby>います。<br>*(Đúng. Ôm hết bu lông nên khó trượt. Dùng với bu lông chặt.)* |
| Phong | スパナとメガネレンチ、<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けるんですね。<br>*(Phân biệt cách dùng giữa supana và megane-renchi nhỉ.)* |
| Yamada | そうです。それからこれが「ソケット」です。<br>*(Đúng. Còn đây là "soketto".)* |
| Phong | <ruby>短<rt>みじか</rt></ruby>くて、<ruby>穴<rt>あな</rt></ruby>が<ruby>1<rt>ひと</rt></ruby>つだけですね。<br>*(Ngắn, chỉ có 1 lỗ.)* |
| Yamada | はい。「ラチェット」というハンドルに<ruby>付<rt>つ</rt></ruby>けて<ruby>使<rt>つか</rt></ruby>います。<ruby>狭<rt>せま</rt></ruby>い<ruby>場所<rt>ばしょ</rt></ruby>で<ruby>便利<rt>べんり</rt></ruby>です。<br>*(Vâng. Lắp vào tay vặn gọi là "rachetto". Tiện ở chỗ chật.)* |
| Phong | <ruby>3<rt>みっ</rt></ruby>つの<ruby>違<rt>ちが</rt></ruby>い、<ruby>少<rt>すこ</rt></ruby>し<ruby>分<rt>わ</rt></ruby>かってきました。<br>*(Em hiểu sơ sơ khác biệt giữa 3 cái rồi.)* |
| Yamada | <ruby>明日<rt>あした</rt></ruby>、テストしますよ。（<ruby>笑<rt>わら</rt></ruby>う）<br>*(Mai tôi sẽ kiểm tra đấy. Cười.)* |
| Phong | え、テスト！？（<ruby>慌<rt>あわ</rt></ruby>てる）<br>*(Hả, kiểm tra á!? Hốt hoảng.)* |
| Yamada | <ruby>冗談<rt>じょうだん</rt></ruby>です。でも<ruby>覚<rt>おぼ</rt></ruby>えてくださいね。<br>*(Nói đùa thôi. Nhưng nhớ nhé.)* |

---

## Tình huống 4 — Phòng dụng cụ · 9:15, ドライバー — tua vít

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>次<rt>つぎ</rt></ruby>は「ドライバー」です。<ruby>2<rt>に</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>あります。<br>*(Tiếp là "doraibaa". Có 2 loại.)* |
| Phong | あ、<ruby>知<rt>し</rt></ruby>っています。これは「プラス」、これは「マイナス」ですね。<br>*(À, em biết. Cái này là "purasu" (+), cái này "mainasu" (-).)* |
| Yamada | おお、よく<ruby>知<rt>し</rt></ruby>っていますね！プラスドライバーは<ruby>十字<rt>じゅうじ</rt></ruby>のネジ、マイナスドライバーは<ruby>一本<rt>いっぽん</rt></ruby><ruby>線<rt>せん</rt></ruby>のネジに<ruby>使<rt>つか</rt></ruby>います。<br>*(Ồ, em biết tốt nhỉ! Purasu dùng cho vít đầu chữ thập, mainasu dùng cho vít một rãnh.)* |
| Phong | ネジ...というのは？<br>*(Neji... là gì ạ?)* |
| Yamada | <ruby>小<rt>ちい</rt></ruby>さなボルトです。<ruby>頭<rt>あたま</rt></ruby>にプラスかマイナスの<ruby>溝<rt>みぞ</rt></ruby>があります。<br>*(Là bu lông nhỏ. Trên đầu có rãnh + hoặc -.)* |
| Phong | ベトナム<ruby>語<rt>ご</rt></ruby>で「ốc vít」と<ruby>言<rt>い</rt></ruby>います。<br>*(Tiếng Việt gọi là "ốc vít".)* |
| Yamada | オクヴィット？<ruby>面白<rt>おもしろ</rt></ruby>い。ところで、ドライバーにもサイズがあります。<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>多<rt>おお</rt></ruby>く<ruby>使<rt>つか</rt></ruby>います。<br>*(Ốc vít? Thú vị. À, doraibaa cũng có cỡ. Cỡ số 2 dùng nhiều nhất.)* |
| Phong | <ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>、メモします。<br>*(Cỡ 2, em ghi lại.)* |

---

## Tình huống 5 — Phòng dụng cụ · 9:30, ボルト・ナット

| Vai | Lời thoại |
|---|---|
| Yamada | これは「ボルト」、これは「ナット」です。<br>*(Đây là "boruto" (bu lông), đây là "natto" (đai ốc).)* |
| Phong | ボルトは<ruby>長<rt>なが</rt></ruby>くて、ナットは<ruby>小<rt>ちい</rt></ruby>さくて<ruby>穴<rt>あな</rt></ruby>がありますね。<br>*(Boruto dài, natto nhỏ có lỗ nhỉ.)* |
| Yamada | そうです。<ruby>2<rt>ふた</rt></ruby>つで<ruby>1<rt>ひと</rt></ruby>セットです。ナットの<ruby>中<rt>なか</rt></ruby>にボルトが<ruby>入<rt>はい</rt></ruby>って、<ruby>物<rt>もの</rt></ruby>と<ruby>物<rt>もの</rt></ruby>を<ruby>固定<rt>こてい</rt></ruby>します。<br>*(Đúng. Hai cái thành 1 bộ. Boruto luồn qua natto, cố định 2 vật vào nhau.)* |
| Phong | サイズはどう<ruby>読<rt>よ</rt></ruby>みますか？<br>*(Cỡ đọc thế nào ạ?)* |
| Yamada | M<ruby>8<rt>はち</rt></ruby>、M<ruby>10<rt>じゅう</rt></ruby>、M<ruby>12<rt>じゅうに</rt></ruby>...Mはメートル<ruby>規格<rt>きかく</rt></ruby>のMです。<ruby>数字<rt>すうじ</rt></ruby>はボルトの<ruby>太<rt>ふと</rt></ruby>さです。<br>*(M8, M10, M12... M là M của tiêu chuẩn mét. Số là độ dày của boruto.)* |
| Phong | M<ruby>8<rt>はち</rt></ruby>のボルトには<ruby>8<rt>はち</rt></ruby>ミリのスパナですか？<br>*(Boruto M8 dùng supana 8mm ạ?)* |
| Yamada | いいえ、それは<ruby>違<rt>ちが</rt></ruby>います。M<ruby>8<rt>はち</rt></ruby>のボルトは、<ruby>頭<rt>あたま</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きさが<ruby>13<rt>じゅうさん</rt></ruby>ミリです。<ruby>13<rt>じゅうさん</rt></ruby>ミリのスパナを<ruby>使<rt>つか</rt></ruby>います。<br>*(Không, khác đấy. Boruto M8 có đầu cỡ 13mm. Phải dùng supana 13mm.)* |
| Phong | え、<ruby>違<rt>ちが</rt></ruby>うんですか！<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Ơ, khác à! Khó thật.)* |
| Yamada | <ruby>表<rt>ひょう</rt></ruby>があります。<ruby>覚<rt>おぼ</rt></ruby>えるまで<ruby>見<rt>み</rt></ruby>てください。<br>*(Có bảng tra. Cứ xem cho đến khi nhớ.)* |
| Phong | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố.)* |

---

## Tình huống 6 — Khu リフト 1 · 10:30, Hiroshi nhờ Phong đưa スパナ

| Vai | Lời thoại |
|---|---|
| Hiroshi | フォンさん、ちょっと<ruby>手伝<rt>てつだ</rt></ruby>ってもらえますか？<br>*(Anh Phong, giúp một chút được không?)* |
| Phong | はい！<ruby>何<rt>なに</rt></ruby>をしますか？<br>*(Vâng! Làm gì ạ?)* |
| Hiroshi | <ruby>14<rt>じゅうよん</rt></ruby>ミリのスパナを<ruby>取<rt>と</rt></ruby>ってください。<br>*(Lấy giúp tôi supana 14mm.)* |
| Phong | <ruby>14<rt>じゅうよん</rt></ruby>ミリのスパナですね。（<ruby>工具<rt>こうぐ</rt></ruby><ruby>室<rt>しつ</rt></ruby>へ<ruby>走<rt>はし</rt></ruby>る）<br>*(Supana 14mm ạ. Chạy đến phòng dụng cụ.)* |
| Phong | （<ruby>戻<rt>もど</rt></ruby>って）ヒロシさん、これですか？<br>*(Quay lại. Anh Hiroshi, là cái này phải không?)* |
| Hiroshi | あ、<ruby>違<rt>ちが</rt></ruby>います。それは<ruby>12<rt>じゅうに</rt></ruby>ミリです。<ruby>柄<rt>え</rt></ruby>に<ruby>数字<rt>すうじ</rt></ruby>が<ruby>書<rt>か</rt></ruby>いてあります。<ruby>見<rt>み</rt></ruby>てください。<br>*(À, sai rồi. Cái đó 12mm. Số được khắc trên tay cầm. Nhìn xem.)* |
| Phong | （<ruby>確認<rt>かくにん</rt></ruby>する）あ、<ruby>本当<rt>ほんとう</rt></ruby>だ、<ruby>12<rt>じゅうに</rt></ruby>と<ruby>書<rt>か</rt></ruby>いてあります。すみません、もう<ruby>一度<rt>いちど</rt></ruby><ruby>取<rt>と</rt></ruby>ってきます。<br>*(Kiểm tra. À, đúng thật, ghi 12. Xin lỗi, em đi lấy lại.)* |
| Hiroshi | ゆっくりでいいです。<ruby>確認<rt>かくにん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Cứ từ từ. Xác nhận mới quan trọng.)* |
| Phong | （<ruby>戻<rt>もど</rt></ruby>って）<ruby>14<rt>じゅうよん</rt></ruby>ミリです。どうぞ。<br>*(Quay lại. 14mm ạ. Đây.)* |
| Hiroshi | ありがとう、フォンさん。<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>持<rt>も</rt></ruby>ってくる、いい<ruby>習慣<rt>しゅうかん</rt></ruby>です。<br>*(Cảm ơn, anh Phong. Kiểm tra rồi mới mang đến, thói quen tốt.)* |

---

## Tình huống 7 — Khu リフト 2 · 11:00, ジャッキ — kích nâng

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、こっち<ruby>来<rt>き</rt></ruby>て。ジャッキを<ruby>見<rt>み</rt></ruby>せます。<br>*(Phong, qua đây. Cho xem jakki.)* |
| Phong | ジャッキ？<br>*(Jakki?)* |
| Carlos | リフトがないときに<ruby>車<rt>くるま</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げる<ruby>道具<rt>どうぐ</rt></ruby>です。<br>*(Là dụng cụ nâng xe khi không có lift.)* |
| Phong | あ、<ruby>知<rt>し</rt></ruby>っています。タイヤを<ruby>替<rt>か</rt></ruby>えるときに<ruby>使<rt>つか</rt></ruby>うものですね。<br>*(À, em biết. Là cái dùng khi thay lốp đúng không.)* |
| Carlos | そう。ガレージには「フロアジャッキ」という<ruby>大<rt>おお</rt></ruby>きいジャッキがあります。<br>*(Đúng. Trong garage có cái lớn gọi là "furoa jakki".)* |
| Phong | <ruby>赤<rt>あか</rt></ruby>くて、<ruby>車輪<rt>しゃりん</rt></ruby>がついていますね。<br>*(Đỏ đỏ, có bánh xe nhỉ.)* |
| Carlos | はい。<ruby>使<rt>つか</rt></ruby>った<ruby>後<rt>あと</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず「ジャッキスタンド」も<ruby>入<rt>い</rt></ruby>れます。<ruby>安全<rt>あんぜん</rt></ruby>のためです。<br>*(Vâng. Sau khi dùng phải đặt thêm "jakki sutando" (chân chống). Để an toàn.)* |
| Phong | ジャッキスタンド...<ruby>下<rt>した</rt></ruby>の<ruby>三角<rt>さんかく</rt></ruby>のあれですね。<br>*(Jakki sutando... cái hình tam giác bên dưới ấy ạ.)* |
| Carlos | そうそう。ジャッキだけで<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ると<ruby>危<rt>あぶ</rt></ruby>ないです。<ruby>絶対<rt>ぜったい</rt></ruby>ダメ。<br>*(Đúng đúng. Chỉ dùng jakki mà chui xuống dưới là nguy hiểm. Tuyệt đối không.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ずスタンドも<ruby>使<rt>つか</rt></ruby>います。<br>*(Vâng, em nhất định sẽ dùng kèm sutando.)* |

---

## Tình huống 8 — Phòng dụng cụ · 13:30, トルクレンチ — cờ lê lực

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>午後<rt>ごご</rt></ruby>はこれを<ruby>説明<rt>せつめい</rt></ruby>します。「トルクレンチ」です。<br>*(Chiều giải thích cái này. "Toruku-renchi".)* |
| Phong | <ruby>長<rt>なが</rt></ruby>いですね。<ruby>普通<rt>ふつう</rt></ruby>のレンチと<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Dài nhỉ. Khác cờ lê thường ạ?)* |
| Yamada | はい、<ruby>大<rt>おお</rt></ruby>きく<ruby>違<rt>ちが</rt></ruby>います。これは「<ruby>力<rt>ちから</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>さ」を<ruby>測<rt>はか</rt></ruby>るレンチです。<br>*(Vâng, khác rất nhiều. Cái này đo "độ mạnh của lực".)* |
| Phong | <ruby>力<rt>ちから</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る？どうしてですか？<br>*(Đo lực? Sao phải đo ạ?)* |
| Yamada | ボルトを<ruby>強<rt>つよ</rt></ruby>く<ruby>締<rt>し</rt></ruby>めすぎると、ボルトが<ruby>切<rt>き</rt></ruby>れます。<ruby>弱<rt>よわ</rt></ruby>すぎると、<ruby>緩<rt>ゆる</rt></ruby>みます。<br>*(Vặn quá chặt boruto sẽ gãy. Vặn quá lỏng sẽ tuột.)* |
| Phong | あ、<ruby>難<rt>むずか</rt></ruby>しいですね。<br>*(À, khó thật.)* |
| Yamada | <ruby>車<rt>くるま</rt></ruby>の<ruby>大事<rt>だいじ</rt></ruby>な<ruby>場所<rt>ばしょ</rt></ruby>、たとえばタイヤやエンジンには<ruby>必<rt>かなら</rt></ruby>ずトルクレンチを<ruby>使<rt>つか</rt></ruby>います。<ruby>説明書<rt>せつめいしょ</rt></ruby>に<ruby>数値<rt>すうち</rt></ruby>が<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Chỗ quan trọng của xe, như lốp hay động cơ, phải dùng toruku-renchi. Trong sách hướng dẫn có ghi số.)* |
| Phong | <ruby>数値<rt>すうち</rt></ruby>...というのは<ruby>数字<rt>すうじ</rt></ruby>のことですか？<br>*(Suuchi... nghĩa là số ạ?)* |
| Yamada | はい、<ruby>正確<rt>せいかく</rt></ruby>な<ruby>数字<rt>すうじ</rt></ruby>です。たとえば「<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンメートル」。<br>*(Vâng, là con số chính xác. Ví dụ "103 Newton mét".)* |
| Phong | カチッと<ruby>音<rt>おと</rt></ruby>がしますね。<br>*(Có tiếng kêu "tách" nhỉ.)* |
| Yamada | そう、その<ruby>音<rt>おと</rt></ruby>で「<ruby>適切<rt>てきせつ</rt></ruby>な<ruby>力<rt>ちから</rt></ruby>になりました」と<ruby>分<rt>わ</rt></ruby>かります。<br>*(Đúng, nghe tiếng đó là biết "đã đạt lực phù hợp".)* |

---

## Tình huống 9 — Phòng nghỉ · 12:00, ăn trưa hỏi Hiroshi mẹo nhớ

| Vai | Lời thoại |
|---|---|
| Phong | ヒロシさん、<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて、<ruby>覚<rt>おぼ</rt></ruby>えられません。<br>*(Anh Hiroshi, tên dụng cụ nhiều quá, em không nhớ nổi.)* |
| Hiroshi | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>僕<rt>ぼく</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じでした。<ruby>方法<rt>ほうほう</rt></ruby>があります。<br>*(Không sao, tôi lúc đầu cũng vậy. Có cách.)* |
| Phong | どんな<ruby>方法<rt>ほうほう</rt></ruby>ですか？<br>*(Cách như thế nào ạ?)* |
| Hiroshi | <ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いっ</rt></ruby>つの<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んで、スマホで<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>ります。<ruby>名前<rt>なまえ</rt></ruby>と<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>をメモします。<br>*(Mỗi ngày chọn 1 dụng cụ, chụp ảnh bằng điện thoại. Ghi chú tên và cách dùng.)* |
| Phong | <ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いっ</rt></ruby>つだけですか？<br>*(Chỉ 1 cái mỗi ngày ạ?)* |
| Hiroshi | はい。<ruby>1<rt>いっ</rt></ruby>つを<ruby>完璧<rt>かんぺき</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えたほうがいいです。<ruby>1<rt>いっ</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>365<rt>さんびゃくろくじゅうご</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えられます。<br>*(Vâng. Nhớ chắc 1 cái còn hơn. Một năm sẽ nhớ được 365 cái.)* |
| Phong | わあ、すごい！やってみます。<br>*(Wa, hay quá! Em sẽ thử.)* |
| Hiroshi | あと、ベトナム<ruby>語<rt>ご</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>も<ruby>横<rt>よこ</rt></ruby>に<ruby>書<rt>か</rt></ruby>くといいです。<br>*(Còn nữa, ghi cả tên tiếng Việt bên cạnh thì tốt.)* |
| Phong | ありがとうございます、ヒロシさん。<br>*(Cảm ơn anh Hiroshi.)* |

---

## Tình huống 10 — Phòng dụng cụ · 15:00, Yamada test miệng

| Vai | Lời thoại |
|---|---|
| Yamada | フォンさん、<ruby>少<rt>すこ</rt></ruby>しテストしましょうか。これは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Anh Phong, mình kiểm tra một chút nhé. Đây là gì?)* |
| Phong | （<ruby>緊張<rt>きんちょう</rt></ruby>）えーと、メガネレンチです！<br>*(Hồi hộp. Ơ... megane-renchi ạ!)* |
| Yamada | <ruby>正解<rt>せいかい</rt></ruby>！では、これは？<br>*(Đúng rồi! Vậy cái này?)* |
| Phong | スパナです。<br>*(Supana ạ.)* |
| Yamada | <ruby>正解<rt>せいかい</rt></ruby>。これは？<br>*(Đúng. Cái này?)* |
| Phong | プラスドライバーです。<br>*(Purasu-doraibaa ạ.)* |
| Yamada | サイズは？<br>*(Cỡ?)* |
| Phong | （<ruby>柄<rt>え</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>です。<br>*(Nhìn cán. Số 2 ạ.)* |
| Yamada | すばらしい！<ruby>柄<rt>え</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する、いい<ruby>習慣<rt>しゅうかん</rt></ruby>です。これは？<br>*(Tuyệt vời! Kiểm tra cán, thói quen tốt. Cái này?)* |
| Phong | （<ruby>少<rt>すこ</rt></ruby>し<ruby>考<rt>かんが</rt></ruby>えて）...ソケットですか？<br>*(Suy nghĩ một chút. Soketto ạ?)* |
| Yamada | はい、ソケットです。<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>でこれだけ<ruby>覚<rt>おぼ</rt></ruby>えました。すごいですよ。<br>*(Vâng, là soketto. Một ngày nhớ được từng này rồi. Giỏi đấy.)* |
| Phong | ありがとうございます。ヒロシさんに<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>えてもらいました。<ruby>写真<rt>しゃしん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em cảm ơn. Anh Hiroshi dạy em cách. Em ghi nhớ qua ảnh.)* |

---

## Tình huống 11 — Phòng dụng cụ · 17:00, trả dụng cụ về kệ

| Vai | Lời thoại |
|---|---|
| Yamada | フォンさん、<ruby>今日<rt>きょう</rt></ruby><ruby>使<rt>つか</rt></ruby>った<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>戻<rt>もど</rt></ruby>しましょう。<br>*(Anh Phong, trả dụng cụ đã dùng hôm nay về chỗ nhé.)* |
| Phong | はい！スパナと、ソケットと、ドライバーですね。<br>*(Vâng! Supana, soketto và doraibaa ạ.)* |
| Yamada | <ruby>戻<rt>もど</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に、<ruby>布<rt>ぬの</rt></ruby>で<ruby>拭<rt>ふ</rt></ruby>いてください。<ruby>油<rt>あぶら</rt></ruby>がついていますから。<br>*(Trước khi trả, lau bằng vải. Vì có dính dầu.)* |
| Phong | はい。<ruby>布<rt>ぬの</rt></ruby>はどこですか？<br>*(Vâng. Vải ở đâu ạ?)* |
| Yamada | あの<ruby>赤<rt>あか</rt></ruby>い<ruby>箱<rt>はこ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>です。「ウエス」と<ruby>言<rt>い</rt></ruby>います。<br>*(Trong hộp đỏ kia. Gọi là "uesu".)* |
| Phong | ウエス、はじめて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Uesu, em mới nghe lần đầu.)* |
| Yamada | <ruby>掃除<rt>そうじ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う<ruby>布<rt>ぬの</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>新<rt>あたら</rt></ruby>しいのを<ruby>使<rt>つか</rt></ruby>います。<br>*(Là vải dùng để lau dọn. Hằng ngày dùng cái mới.)* |
| Phong | （<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>く）<ruby>終<rt>お</rt></ruby>わりました。<ruby>白<rt>しろ</rt></ruby>い<ruby>線<rt>せん</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>します。<br>*(Lau dụng cụ. Xong rồi ạ. Em trả vào trong đường trắng.)* |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hoàn hảo. Vất vả rồi.)* |
| Phong | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vất vả rồi.)* |

---

## Tình huống 12 — Phòng 203 · 20:30, gọi điện cho bố (cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong gọi cho bố ở Hải Phòng — bố từng làm cơ khí biển nên hiểu chuyện dụng cụ.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, hôm nay con học tên dụng cụ. |
| Bố Phong | (tiếng Việt) Tốt. Cờ lê với tua vít chứ gì? |
| Phong | (tiếng Việt) Vâng, nhưng bên Nhật chia rất chi tiết. Cờ lê thường gọi là スパナ (supana), cờ lê tròng kín gọi là メガネレンチ (megane-renchi), còn cái khẩu lắp tay vặn lách-tách gọi là ソケット (soketto). |
| Bố Phong | (tiếng Việt) Hồi bố làm xưởng đóng tàu cũng phân biệt thế. Bên đó gọi tiếng Anh hay tiếng Nhật? |
| Phong | (tiếng Việt) Đa số là katakana — phiên âm tiếng Anh. Như ドライバー là driver, ボルト là bolt. Có một số dùng kanji: トルクレンチ — cờ lê lực, dùng để đo độ chặt của bu lông. Bố biết không, vặn quá chặt bu lông sẽ gãy! |
| Bố Phong | (tiếng Việt) Biết chứ. Xưởng bố cũng có cờ lê lực, nhưng chỉ dùng cho mấy chỗ quan trọng. |
| Phong | (tiếng Việt) Bên này dùng cho lốp xe với động cơ. Còn có quy tắc "見える化" — tức là dụng cụ phải có chỗ riêng vẽ đường trắng, mất một cái là thấy ngay. |
| Bố Phong | (tiếng Việt) Hay đấy. Bố mai nói anh Hai làm thử ở xưởng bên Hải Phòng. |
| Phong | (tiếng Việt) Anh Hiroshi dạy con mỗi ngày học 1 dụng cụ, chụp ảnh, viết tên Nhật + Việt. 365 ngày là 365 dụng cụ. |
| Bố Phong | (tiếng Việt) Cách hay. Con cố gắng nhé. Mẹ con đi chợ về sẽ gọi sau. |
| Phong | (tiếng Việt) Vâng bố. Con đi tắm rồi ngủ. |

---

## Đọng lại chương 3

Tuần 2, Phong học các dụng cụ cơ bản nhất ở garage: **スパナ** (cờ lê) — **メガネレンチ** (cờ lê tròng) — **ソケットレンチ** (khẩu); **プラス/マイナスドライバー** (tua vít chữ thập/dẹt); **ボルト・ナット** (bu lông - đai ốc) với hệ ký hiệu **M8・M10・M12**; **ジャッキ + ジャッキスタンド** (kích nâng + chân chống an toàn); **トルクレンチ** (cờ lê lực) đo theo **ニュートンメートル**. Học mẫu câu: **〜を取ってください** (lấy giúp cái...), **サイズは?** (cỡ bao nhiêu?), **これは何ですか?** (đây là gì?). Triết lý **見える化** + nguyên tắc **使ったら元の場所に戻す** + **絶対にジャッキだけで下に入らない**. Mẹo Hiroshi: **mỗi ngày 1 dụng cụ + chụp ảnh + ghi 2 ngôn ngữ**.

> Từ vựng & mẫu câu chương này: 工具室・見える化・スパナ・メガネレンチ・ソケット・ラチェット・ドライバー・プラス・マイナス・ネジ・ボルト・ナット・規格・ジャッキ・ジャッキスタンド・トルクレンチ・ニュートンメートル・ウエス・〜を取ってください・サイズは？・確認してから

## Bí quyết chương

- **Phong hiểu nhanh dụng cụ**: Bố Hải Phòng làm cơ khí biển → Phong không sợ máy móc, biết "cờ lê" tiếng Việt.
- **見える化 (mieru-ka)**: Văn hoá quản lý dụng cụ Nhật, vẽ đường trắng quanh mỗi dụng cụ.
- **Sai cỡ = hỏng bu lông**: Bài học đầu về độ chính xác — sai 1 size là toét đầu bu lông.
- **Mẹo Hiroshi**: Mỗi ngày 1 dụng cụ + ảnh + tên 2 thứ tiếng → 1 năm = 365 dụng cụ, không stress.
- **ジャッキ một mình = chết**: Phải kèm ジャッキスタンド, lặp lại quy tắc an toàn từ T2.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 工具 | こうぐ | CÔNG CỤ | Dụng cụ, đồ nghề |
| 工具室 | こうぐしつ | CÔNG CỤ THẤT | Phòng dụng cụ |
| 場所 | ばしょ | TRƯỜNG SỞ | Vị trí, chỗ |
| 元 | もと | NGUYÊN | Gốc, ban đầu |
| 戻す | もどす | LỆ | Trả về |
| 見える化 | みえるか | KIẾN HOÁ | Trực quan hoá (mieru-ka) |
| 道具 | どうぐ | ĐẠO CỤ | Dụng cụ |
| スパナ | スパナ | — | Cờ lê (spanner) |
| 回す | まわす | HỒI | Vặn, xoay |
| 滑る | すべる | HOẠT | Trơn, trượt |
| 潰れる | つぶれる | HOẠI | Bị bẹp, toét |
| メガネレンチ | メガネレンチ | — | Cờ lê tròng |
| 周囲 | しゅうい | CHU VI | Xung quanh |
| 囲む | かこむ | VÂY | Bao quanh |
| 固い | かたい | CỐ | Chặt, cứng |
| ソケット | ソケット | — | Khẩu, đầu khẩu |
| ラチェット | ラチェット | — | Tay vặn lách-tách |
| 狭い | せまい | HIỆP | Chật, hẹp |
| ドライバー | ドライバー | — | Tua vít |
| プラス | プラス | — | Dấu cộng, chữ thập |
| マイナス | マイナス | — | Dấu trừ, dẹt |
| 十字 | じゅうじ | THẬP TỰ | Chữ thập |
| ネジ | ネジ | — | Ốc vít |
| ボルト | ボルト | — | Bu lông |
| ナット | ナット | — | Đai ốc |
| 固定 | こてい | CỐ ĐỊNH | Cố định |
| 規格 | きかく | QUY CÁCH | Tiêu chuẩn, quy cách |
| 太さ | ふとさ | THÁI | Độ dày, độ to |
| ジャッキ | ジャッキ | — | Kích nâng |
| 車輪 | しゃりん | XA LUÂN | Bánh xe |
| ジャッキスタンド | ジャッキスタンド | — | Chân chống an toàn |
| トルクレンチ | トルクレンチ | — | Cờ lê lực |
| 力 | ちから | LỰC | Sức, lực |
| 測る | はかる | TRẮC | Đo |
| 締める | しめる | THIẾT | Vặn chặt |
| 緩む | ゆるむ | HOÃN | Lỏng ra |
| 数値 | すうち | SỐ TRỊ | Giá trị số |
| 適切 | てきせつ | THÍCH THIẾT | Thích hợp, phù hợp |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 習慣 | しゅうかん | TẬP QUÁN | Thói quen |
| 写真 | しゃしん | TẢ CHÂN | Ảnh chụp |
| 布 | ぬの | BỐ | Vải |
| 拭く | ふく | THỨC | Lau |
| 油 | あぶら | DU | Dầu |
| ウエス | ウエス | — | Vải lau dầu (waste cloth) |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000004, 800000043, NULL, 'markdown_book', 'T4. Lần đầu thay dầu (オイル交換初体験)', '# Sách thực tập sinh ô tô · T4. Lần đầu thay dầu (オイル交換初体験)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) quan sát sempai Carlos thay dầu lần đầu. Học các mẫu hội thoại tiếng Nhật của thực tập sinh ô tô khi: tiếp xe khách bằng chào お客様, hỏi quy trình thay dầu, hiểu tên các bộ phận liên quan (オイルパン・ドレンボルト・オイルフィルター), xác nhận loại dầu (粘度・5W-30), báo cáo kết thúc sempai, ghi sổ tác nghiệp 作業日報.

---

## Bối cảnh

Ngày 25 tháng 4 năm 2025. Sáng thứ Sáu. Có lịch オイル交換 (thay dầu) 3 xe, trong đó 1 xe Toyota Vitz của khách quen ông Tanaka đến 9:00. Yamada cử Carlos làm chính, Phong đứng quan sát toàn bộ quy trình. Trình độ N5. Chương này tập trung: tiếp khách + giải thích chờ, nâng xe bằng リフト, mở ドレンボルト xả dầu cũ, thay オイルフィルター, đổ dầu mới đúng loại 5W-30 đúng lượng 3.6L, kiểm tra rò rỉ, ghi 作業日報, giao xe và thu tiền.

---

## Tình huống 1 — Văn phòng · 8:00, 朝礼 phân công

| Vai | Lời thoại |
|---|---|
| Sato | みなさん、<ruby>今日<rt>きょう</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>台<rt>だい</rt></ruby>あります。<br>*(Mọi người, hôm nay có 3 xe thay dầu.)* |
| Yamada | <ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>田中<rt>たなか</rt></ruby>さんのヴィッツ、<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>佐<rt>さ</rt></ruby><ruby>々<rt>さ</rt></ruby><ruby>木<rt>き</rt></ruby>さんのプリウス、<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>鈴木<rt>すずき</rt></ruby>さんのアクアです。<br>*(9 giờ xe Vitz của ông Tanaka, 11 giờ Prius của ông Sasaki, 14 giờ Aqua của ông Suzuki.)* |
| Carlos | はい。<br>*(Vâng.)* |
| Yamada | <ruby>田中<rt>たなか</rt></ruby>さんのヴィッツはカルロスが<ruby>担当<rt>たんとう</rt></ruby>。フォンさんは<ruby>見学<rt>けんがく</rt></ruby>です。<br>*(Vitz ông Tanaka Carlos phụ trách. Anh Phong quan sát.)* |
| Phong | はい！<ruby>初<rt>はじ</rt></ruby>めてのオイル<ruby>交換<rt>こうかん</rt></ruby>です。<br>*(Vâng! Lần đầu em xem thay dầu ạ.)* |
| Sato | よく<ruby>見<rt>み</rt></ruby>てください。オイル<ruby>交換<rt>こうかん</rt></ruby>は<ruby>整備<rt>せいび</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Quan sát kỹ nhé. Thay dầu là cơ bản của bảo dưỡng.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Cửa garage · 8:55, đón khách ông Tanaka

*Xe Vitz màu trắng dừng trước cửa garage. Một ông cụ tóc bạc bước xuống.*

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、おはようございます。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Thưa ông Tanaka, chào buổi sáng. Chúng tôi đã chờ ông.)* |
| Tanaka | おはよう。<ruby>今日<rt>きょう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào. Hôm nay cũng nhờ các cậu.)* |
| Carlos | こちらは<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>のフォンです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Đây là thực tập sinh mới, anh Phong. Đến từ Việt Nam.)* |
| Phong | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして、グエン・ヴァン・フォンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Rất hân hạnh, em là Nguyễn Văn Phong. Mong ông chỉ bảo ạ.)* |
| Tanaka | おお、ベトナムからね。<ruby>頑張<rt>がんば</rt></ruby>って。<ruby>日本<rt>にほん</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>はいいですよ。<br>*(Ồ, từ Việt Nam à. Cố lên. Xe Nhật tốt lắm đấy.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Carlos | では、<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>をいただきます。<ruby>休憩室<rt>きゅうけいしつ</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちください。コーヒーとお<ruby>茶<rt>ちゃ</rt></ruby>があります。<br>*(Vậy, thưa ông Tanaka, xin ông cho khoảng 30 phút. Mời ông chờ tại phòng nghỉ. Có cà phê và trà.)* |
| Tanaka | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ các cậu.)* |

---

## Tình huống 3 — Khu リフト 2 · 9:05, Carlos giải thích quy trình

*Carlos lái xe Vitz vào khu lift số 2, dừng đúng vị trí kẻ vạch vàng. Phong đứng cách 2 mét, đội ヘルメット.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、オイル<ruby>交換<rt>こうかん</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Phong, tôi giải thích quy trình thay dầu.)* |
| Phong | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời anh.)* |
| Carlos | <ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>車<rt>くるま</rt></ruby>をリフトに<ruby>乗<rt>の</rt></ruby>せます。<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>下<rt>した</rt></ruby>からドレンボルトを<ruby>外<rt>はず</rt></ruby>して、<ruby>古<rt>ふる</rt></ruby>いオイルを<ruby>抜<rt>ぬ</rt></ruby>きます。<br>*(Một, nâng xe lên lift. Hai, từ dưới tháo "doren-boruto", xả dầu cũ.)* |
| Phong | ドレンボルト...というのは？<br>*(Doren-boruto... là gì ạ?)* |
| Carlos | オイルパンの<ruby>下<rt>した</rt></ruby>にあるボルトです。これを<ruby>開<rt>あ</rt></ruby>けるとオイルが<ruby>出<rt>で</rt></ruby>ます。<br>*(Bu lông dưới đáy cạc-te dầu. Mở ra là dầu chảy.)* |
| Phong | ドレン...は「<ruby>抜<rt>ぬ</rt></ruby>く」という<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Doren... nghĩa là "xả" ạ?)* |
| Carlos | そうそう、<ruby>英語<rt>えいご</rt></ruby>の「drain」です。よく<ruby>分<rt>わ</rt></ruby>かりましたね。<br>*(Đúng đúng, là "drain" tiếng Anh. Hiểu nhanh nhỉ.)* |
| Carlos | <ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>、オイルフィルターも<ruby>交換<rt>こうかん</rt></ruby>します。<ruby>4<rt>よん</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しいオイルを<ruby>入<rt>い</rt></ruby>れます。<ruby>5<rt>ご</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>して<ruby>終<rt>お</rt></ruby>わりです。<br>*(Ba, thay cả lọc dầu. Bốn, đổ dầu mới. Năm, kiểm tra rồi xong.)* |
| Phong | <ruby>5<rt>いつ</rt></ruby>つのステップですね。メモします。<br>*(Năm bước nhỉ. Em ghi lại.)* |

---

## Tình huống 4 — Khu リフト 2 · 9:10, nâng xe lên

| Vai | Lời thoại |
|---|---|
| Carlos | リフトを<ruby>上<rt>あ</rt></ruby>げます。<ruby>下<rt>さ</rt></ruby>がっていてください。<br>*(Tôi nâng lift. Anh lùi ra nhé.)* |
| Phong | はい！（<ruby>後<rt>うし</rt></ruby>ろに<ruby>3<rt>さん</rt></ruby>メートル<ruby>下<rt>さ</rt></ruby>がる）<br>*(Vâng! Lùi ra 3 mét.)* |
| Carlos | （ボタンを<ruby>押<rt>お</rt></ruby>す、<ruby>車<rt>くるま</rt></ruby>がゆっくり<ruby>上<rt>あ</rt></ruby>がる）<br>*(Bấm nút, xe chậm chậm nâng lên.)* |
| Phong | <ruby>静<rt>しず</rt></ruby>かに<ruby>動<rt>うご</rt></ruby>くんですね。<br>*(Chuyển động êm nhỉ.)* |
| Carlos | <ruby>油圧式<rt>ゆあつしき</rt></ruby>です。<ruby>音<rt>おと</rt></ruby>も<ruby>少<rt>すく</rt></ruby>ないです。<ruby>胸<rt>むね</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さで<ruby>止<rt>と</rt></ruby>めます。<br>*(Là kiểu thủy lực. Ít tiếng. Dừng ở độ cao ngang ngực.)* |
| Phong | <ruby>胸<rt>むね</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さ、<ruby>作業<rt>さぎょう</rt></ruby>しやすいですね。<br>*(Cao ngang ngực, dễ làm nhỉ.)* |
| Carlos | はい。<ruby>上<rt>あ</rt></ruby>がりすぎると<ruby>体<rt>からだ</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>くなります。<ruby>下<rt>した</rt></ruby>がりすぎると<ruby>頭<rt>あたま</rt></ruby>をぶつけます。<br>*(Vâng. Cao quá đau lưng. Thấp quá đụng đầu.)* |
| Phong | <ruby>経験<rt>けいけん</rt></ruby>から<ruby>分<rt>わ</rt></ruby>かることですね。<br>*(Là kinh nghiệm rút ra phải không ạ.)* |

---

## Tình huống 5 — Dưới gầm xe · 9:15, xả dầu cũ

| Vai | Lời thoại |
|---|---|
| Carlos | （<ruby>下<rt>した</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きいバットを<ruby>置<rt>お</rt></ruby>く）これは「オイル<ruby>受<rt>う</rt></ruby>けバット」です。<ruby>古<rt>ふる</rt></ruby>いオイルを<ruby>受<rt>う</rt></ruby>けます。<br>*(Đặt khay lớn ở dưới. Đây là "oiru-uke batto". Hứng dầu cũ.)* |
| Phong | <ruby>結構<rt>けっこう</rt></ruby><ruby>大<rt>おお</rt></ruby>きいですね。<br>*(Khá to nhỉ.)* |
| Carlos | <ruby>5<rt>ご</rt></ruby>リットルぐらい<ruby>入<rt>はい</rt></ruby>ります。<br>*(Chứa được khoảng 5 lít.)* |
| Carlos | では、<ruby>17<rt>じゅうなな</rt></ruby>ミリのメガネレンチでドレンボルトを<ruby>緩<rt>ゆる</rt></ruby>めます。<br>*(Vậy, dùng megane-renchi 17mm để nới lỏng doren-boruto.)* |
| Phong | <ruby>17<rt>じゅうなな</rt></ruby>ミリ...<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(17mm... em ghi nhớ.)* |
| Carlos | （<ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れて<ruby>回<rt>まわ</rt></ruby>す）うーん、<ruby>固<rt>かた</rt></ruby>い。<ruby>動<rt>うご</rt></ruby>いた！<br>*(Dùng sức vặn. Ư, chặt thật. Chạy rồi!)* |
| Carlos | （<ruby>手<rt>て</rt></ruby>で<ruby>外<rt>はず</rt></ruby>す）<ruby>注意<rt>ちゅうい</rt></ruby>、オイルが<ruby>出<rt>で</rt></ruby>ます。<ruby>熱<rt>あつ</rt></ruby>いです！<br>*(Tháo bằng tay. Cẩn thận, dầu chảy ra. Nóng đấy!)* |
| Phong | わあ、<ruby>黒<rt>くろ</rt></ruby>いです。<ruby>新<rt>あたら</rt></ruby>しいオイルとぜんぜん<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Wa, đen quá. Khác hẳn dầu mới nhỉ.)* |
| Carlos | これは<ruby>10000<rt>いちまん</rt></ruby>キロぐらい<ruby>走<rt>はし</rt></ruby>ったオイルです。<ruby>汚<rt>よご</rt></ruby>れています。だから<ruby>定期的<rt>ていきてき</rt></ruby>に<ruby>交換<rt>こうかん</rt></ruby>します。<br>*(Là dầu chạy khoảng 10.000 km. Bẩn lắm. Vì thế phải thay định kỳ.)* |
| Phong | <ruby>10000<rt>いちまん</rt></ruby>キロごとですか？<br>*(Cứ 10.000 km một lần ạ?)* |
| Carlos | <ruby>普通<rt>ふつう</rt></ruby>は<ruby>5000<rt>ごせん</rt></ruby>から<ruby>10000<rt>いちまん</rt></ruby>キロです。<ruby>車<rt>くるま</rt></ruby>とオイルによって<ruby>違<rt>ちが</rt></ruby>います。<br>*(Bình thường 5.000 - 10.000 km. Tuỳ xe và dầu.)* |

---

## Tình huống 6 — Dưới gầm xe · 9:30, thay lọc dầu オイルフィルター

| Vai | Lời thoại |
|---|---|
| Carlos | オイルが<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>出<rt>で</rt></ruby>ました。<ruby>次<rt>つぎ</rt></ruby>はオイルフィルターを<ruby>替<rt>か</rt></ruby>えます。<br>*(Dầu chảy hết rồi. Tiếp theo thay lọc dầu.)* |
| Phong | オイルフィルター...あの<ruby>丸<rt>まる</rt></ruby>いものですね。<br>*(Lọc dầu... là cái tròn tròn kia phải không.)* |
| Carlos | はい。オイルの<ruby>汚<rt>よご</rt></ruby>れを<ruby>取<rt>と</rt></ruby>るための<ruby>部品<rt>ぶひん</rt></ruby>です。<br>*(Vâng. Là phụ tùng lọc bẩn cho dầu.)* |
| Carlos | （<ruby>専用<rt>せんよう</rt></ruby>のレンチで<ruby>回<rt>まわ</rt></ruby>す）<ruby>反対<rt>はんたい</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>すと<ruby>外<rt>はず</rt></ruby>れます。<br>*(Dùng cờ lê chuyên dụng vặn. Xoay ngược chiều thì tháo ra.)* |
| Phong | <ruby>反対<rt>はんたい</rt></ruby>...というのは<ruby>左<rt>ひだり</rt></ruby><ruby>回<rt>まわ</rt></ruby>しですか？<br>*(Hantai... là xoay trái ạ?)* |
| Carlos | そうそう、<ruby>左<rt>ひだり</rt></ruby><ruby>回<rt>まわ</rt></ruby>しです。「<ruby>右<rt>みぎ</rt></ruby>に<ruby>締<rt>し</rt></ruby>めて、<ruby>左<rt>ひだり</rt></ruby>に<ruby>緩<rt>ゆる</rt></ruby>める」と<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Đúng, xoay trái. Nhớ là "phải vặn chặt, trái nới lỏng".)* |
| Phong | <ruby>右<rt>みぎ</rt></ruby><ruby>締<rt>し</rt></ruby>め<ruby>左<rt>ひだり</rt></ruby><ruby>緩<rt>ゆる</rt></ruby>め、ですね。<br>*(Phải chặt, trái lỏng ạ.)* |
| Carlos | （<ruby>新<rt>あたら</rt></ruby>しいフィルターを<ruby>取<rt>と</rt></ruby>る）<ruby>新<rt>あたら</rt></ruby>しいフィルターの<ruby>取<rt>つ</rt></ruby>り<ruby>付<rt>つ</rt></ruby>け<ruby>前<rt>まえ</rt></ruby>に、ゴムパッキンに<ruby>少<rt>すこ</rt></ruby>しオイルをつけます。<br>*(Lấy lọc mới. Trước khi lắp lọc mới, bôi chút dầu vào gioăng cao su.)* |
| Phong | どうしてですか？<br>*(Vì sao ạ?)* |
| Carlos | <ruby>次<rt>つぎ</rt></ruby>に<ruby>外<rt>はず</rt></ruby>すときに<ruby>固<rt>かた</rt></ruby>くなりません。<ruby>大事<rt>だいじ</rt></ruby>なポイントです。<br>*(Lần sau tháo ra sẽ không bị chặt. Là điểm quan trọng.)* |
| Phong | なるほど、<ruby>細<rt>こま</rt></ruby>かい<ruby>工夫<rt>くふう</rt></ruby>ですね。<br>*(Ra vậy, là mẹo nhỏ tinh tế nhỉ.)* |

---

## Tình huống 7 — Bên cạnh xe · 9:45, đổ dầu mới, xác nhận loại dầu

*Carlos hạ lift xuống một chút, sau đó mở capo (ボンネット) phía trước xe.*

| Vai | Lời thoại |
|---|---|
| Carlos | では、<ruby>新<rt>あたら</rt></ruby>しいオイルを<ruby>入<rt>い</rt></ruby>れます。フォン、オイルの<ruby>缶<rt>かん</rt></ruby>を<ruby>取<rt>と</rt></ruby>ってください。「<ruby>5<rt>ご</rt></ruby>W-<ruby>30<rt>さんじゅう</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあるものです。<br>*(Vậy, đổ dầu mới. Phong, lấy can dầu. Cái có ghi "5W-30".)* |
| Phong | <ruby>5<rt>ご</rt></ruby>W-<ruby>30<rt>さんじゅう</rt></ruby>...（<ruby>棚<rt>たな</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）これですか？<br>*(5W-30... Nhìn kệ. Cái này phải không?)* |
| Carlos | （<ruby>確認<rt>かくにん</rt></ruby>する）はい、<ruby>正解<rt>せいかい</rt></ruby>。<ruby>5<rt>ご</rt></ruby>W-<ruby>30<rt>さんじゅう</rt></ruby>、ガソリン<ruby>車<rt>しゃ</rt></ruby><ruby>用<rt>よう</rt></ruby>です。<br>*(Kiểm tra. Vâng, đúng. 5W-30, cho xe xăng.)* |
| Phong | <ruby>5<rt>ご</rt></ruby>Wと<ruby>30<rt>さんじゅう</rt></ruby>、<ruby>意味<rt>いみ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(5W và 30, nghĩa là gì ạ?)* |
| Carlos | これは「<ruby>粘度<rt>ねんど</rt></ruby>」を<ruby>表<rt>あらわ</rt></ruby>します。<br>*(Đó là biểu thị "độ nhớt".)* |
| Phong | <ruby>粘度<rt>ねんど</rt></ruby>...というのは？<br>*(Nendo... là gì ạ?)* |
| Carlos | オイルの「<ruby>固<rt>かた</rt></ruby>さ」「サラサラ・ドロドロ」のことです。<ruby>5<rt>ご</rt></ruby>Wは<ruby>冬<rt>ふゆ</rt></ruby>の<ruby>固<rt>かた</rt></ruby>さ、<ruby>30<rt>さんじゅう</rt></ruby>は<ruby>夏<rt>なつ</rt></ruby>の<ruby>固<rt>かた</rt></ruby>さです。<br>*(Là độ "đặc loãng" của dầu. 5W là độ đặc mùa đông, 30 là độ đặc mùa hè.)* |
| Phong | <ruby>難<rt>むずか</rt></ruby>しいですね。<ruby>車<rt>くるま</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(Khó nhỉ. Khác nhau theo xe ạ?)* |
| Carlos | はい、<ruby>取説<rt>とりせつ</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてあります。<ruby>間違<rt>まちが</rt></ruby>えるとエンジンが<ruby>壊<rt>こわ</rt></ruby>れます。<br>*(Vâng, có ghi trong torisetsu. Nhầm là hỏng động cơ.)* |
| Phong | <ruby>壊<rt>こわ</rt></ruby>れる！<ruby>怖<rt>こわ</rt></ruby>いですね。<br>*(Hỏng! Đáng sợ nhỉ.)* |
| Carlos | だから<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。ヴィッツは<ruby>3.6<rt>さんてんろく</rt></ruby>リットルです。<br>*(Vì thế phải xác nhận. Vitz dùng 3.6 lít.)* |

---

## Tình huống 8 — Bên cạnh xe · 10:00, đo lượng dầu, lau sạch

| Vai | Lời thoại |
|---|---|
| Carlos | （<ruby>漏斗<rt>じょうご</rt></ruby>でオイルを<ruby>入<rt>い</rt></ruby>れる）<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>入<rt>い</rt></ruby>れます。<br>*(Đổ dầu qua phễu. Đổ từng chút.)* |
| Phong | <ruby>一気<rt>いっき</rt></ruby>に<ruby>入<rt>い</rt></ruby>れないんですか？<br>*(Không đổ một mạch ạ?)* |
| Carlos | はい。あふれたら<ruby>掃除<rt>そうじ</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>です。それから<ruby>火事<rt>かじ</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>もあります。<br>*(Không. Trào ra là dọn vất vả. Còn nguy cơ cháy.)* |
| Phong | <ruby>火事<rt>かじ</rt></ruby>！？<br>*(Cháy!?)* |
| Carlos | <ruby>熱<rt>あつ</rt></ruby>いエンジンにオイルがかかると<ruby>燃<rt>も</rt></ruby>えることがあります。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(Dầu rơi vào động cơ nóng có thể bốc cháy. Tuyệt đối phải cẩn thận.)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi.)* |
| Carlos | （<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>後<rt>ご</rt></ruby>）<ruby>3.6<rt>さんてんろく</rt></ruby>リットル<ruby>入<rt>はい</rt></ruby>りました。オイルゲージで<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(3 phút sau. Đổ 3.6 lít rồi. Kiểm tra bằng que thăm dầu.)* |
| Phong | オイルゲージ？<br>*(Oiru geeji?)* |
| Carlos | （<ruby>黄色<rt>きいろ</rt></ruby>の<ruby>棒<rt>ぼう</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>く）この<ruby>棒<rt>ぼう</rt></ruby>です。<ruby>線<rt>せん</rt></ruby>が<ruby>2<rt>ふた</rt></ruby>つあります。<ruby>上<rt>うえ</rt></ruby>の<ruby>線<rt>せん</rt></ruby>と<ruby>下<rt>した</rt></ruby>の<ruby>線<rt>せん</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>ならOKです。<br>*(Rút que vàng. Que này. Có 2 vạch. Trong khoảng giữa vạch trên và vạch dưới là OK.)* |
| Phong | （<ruby>覗<rt>のぞ</rt></ruby>く）<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>ぐらいですね。OKですね！<br>*(Cúi nhìn. Khoảng giữa nhỉ. OK rồi!)* |
| Carlos | はい、<ruby>完璧<rt>かんぺき</rt></ruby>です。<br>*(Vâng, hoàn hảo.)* |

---

## Tình huống 9 — Dưới gầm xe · 10:10, kiểm tra rò rỉ

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>最後<rt>さいご</rt></ruby>に、<ruby>下<rt>した</rt></ruby>から<ruby>漏<rt>も</rt></ruby>れていないか<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Cuối cùng, kiểm tra từ dưới xem có rò không.)* |
| Phong | <ruby>漏<rt>も</rt></ruby>れる...というのは<ruby>滴<rt>したた</rt></ruby>るということですか？<br>*(Moreru... nghĩa là rỉ ra phải không ạ?)* |
| Carlos | そうそう。ドレンボルトとオイルフィルターから<ruby>漏<rt>も</rt></ruby>れないかチェックします。<br>*(Đúng đúng. Kiểm tra xem có rỉ từ doren-boruto và lọc dầu không.)* |
| Carlos | （ライトで<ruby>照<rt>て</rt></ruby>らす）...OK、<ruby>漏<rt>も</rt></ruby>れていません。<br>*(Soi đèn pin. OK, không rỉ.)* |
| Phong | よかった！<br>*(May quá!)* |
| Carlos | <ruby>5<rt>ご</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>にもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<ruby>後<rt>あと</rt></ruby>から<ruby>漏<rt>も</rt></ruby>れることもあります。<br>*(5 phút sau kiểm tra lại lần nữa. Đôi khi rỉ chậm.)* |
| Phong | <ruby>5<rt>ご</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>にもう<ruby>一度<rt>いちど</rt></ruby>、メモします。<br>*(Sau 5 phút kiểm lại, em ghi.)* |
| Carlos | このチェックを<ruby>怠<rt>おこた</rt></ruby>るとお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>家<rt>いえ</rt></ruby>の<ruby>駐車場<rt>ちゅうしゃじょう</rt></ruby>でオイル<ruby>染<rt>じ</rt></ruby>みができます。クレームになります。<br>*(Nếu lơ là, sân nhà khách sẽ bị loang dầu. Sẽ thành khiếu nại.)* |
| Phong | <ruby>怠<rt>おこた</rt></ruby>る...？<br>*(Okotaru...?)* |
| Carlos | やらないで<ruby>放<rt>ほう</rt></ruby>っておく、ということです。<br>*(Tức là bỏ qua, không làm.)* |
| Phong | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>怠<rt>おこた</rt></ruby>りません。<br>*(À, em hiểu rồi. Em tuyệt đối không bỏ qua.)* |

---

## Tình huống 10 — Văn phòng · 10:30, ghi 作業日報

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>最後<rt>さいご</rt></ruby>のステップは「<ruby>作業<rt>さぎょう</rt></ruby><ruby>日報<rt>にっぽう</rt></ruby>」です。<br>*(Phong, bước cuối là "sagyou nippou" (nhật báo tác nghiệp).)* |
| Phong | <ruby>作業<rt>さぎょう</rt></ruby><ruby>日報<rt>にっぽう</rt></ruby>...というのは？<br>*(Sagyou nippou... là gì ạ?)* |
| Carlos | <ruby>今日<rt>きょう</rt></ruby><ruby>何<rt>なに</rt></ruby>をしたか<ruby>書<rt>か</rt></ruby>く<ruby>紙<rt>かみ</rt></ruby>です。お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>にも<ruby>残<rt>のこ</rt></ruby>ります。<br>*(Là tờ giấy ghi đã làm gì hôm nay. Cũng lưu trong hồ sơ khách.)* |
| Carlos | （<ruby>用紙<rt>ようし</rt></ruby>に<ruby>書<rt>か</rt></ruby>く）<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、ヴィッツ、<ruby>5<rt>ご</rt></ruby>W-<ruby>30<rt>さんじゅう</rt></ruby>、<ruby>3.6<rt>さんてんろく</rt></ruby>リットル、フィルター<ruby>交換<rt>こうかん</rt></ruby><ruby>済<rt>ず</rt></ruby>み、<ruby>漏<rt>も</rt></ruby>れなし。<br>*(Viết vào tờ. 25/4/2025, ông Tanaka, Vitz, 5W-30, 3.6L, đã thay lọc, không rò.)* |
| Phong | <ruby>細<rt>こま</rt></ruby>かく<ruby>書<rt>か</rt></ruby>くんですね。<br>*(Ghi tỉ mỉ nhỉ.)* |
| Carlos | はい。<ruby>次回<rt>じかい</rt></ruby><ruby>来<rt>こ</rt></ruby>るときに<ruby>参考<rt>さんこう</rt></ruby>になります。それから、<ruby>問題<rt>もんだい</rt></ruby>があったときの<ruby>証拠<rt>しょうこ</rt></ruby>にもなります。<br>*(Vâng. Lần sau khách đến sẽ tham khảo. Và khi có vấn đề thì làm bằng chứng.)* |
| Phong | なるほど。<ruby>記録<rt>きろく</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Ra vậy. Hồ sơ rất quan trọng nhỉ.)* |
| Carlos | では、<ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。フォン、<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Vậy, đi báo cáo anh Yamada. Phong, đi cùng.)* |

---

## Tình huống 11 — Khu リフト 3 · 10:35, báo cáo Yamada

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>のヴィッツ、オイル<ruby>交換<rt>こうかん</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<br>*(Anh Yamada, Vitz ông Tanaka đã thay dầu xong.)* |
| Yamada | お<ruby>疲<rt>つか</rt></ruby>れさま。オイルは？<br>*(Vất vả. Dầu loại nào?)* |
| Carlos | <ruby>5<rt>ご</rt></ruby>W-<ruby>30<rt>さんじゅう</rt></ruby>、<ruby>3.6<rt>さんてんろく</rt></ruby>リットル<ruby>入<rt>い</rt></ruby>れました。フィルターも<ruby>交換<rt>こうかん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(5W-30, đổ 3.6 lít. Đã thay cả lọc.)* |
| Yamada | <ruby>漏<rt>も</rt></ruby>れは？<br>*(Có rò không?)* |
| Carlos | ありません。<ruby>5<rt>ご</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>にもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Không. 5 phút sau sẽ kiểm tra lại.)* |
| Yamada | OK。フォンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>見学<rt>けんがく</rt></ruby>はどうでした？<br>*(OK. Anh Phong, hôm nay quan sát thế nào?)* |
| Phong | はい！とても<ruby>勉強<rt>べんきょう</rt></ruby>になりました。ドレンボルト、オイルフィルター、<ruby>5<rt>ご</rt></ruby>W-<ruby>30<rt>さんじゅう</rt></ruby>、<ruby>粘度<rt>ねんど</rt></ruby>、<ruby>3.6<rt>さんてんろく</rt></ruby>リットル...たくさん<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng! Em học được nhiều lắm. Doren-boruto, lọc dầu, 5W-30, độ nhớt, 3.6 lít... em nhớ được nhiều.)* |
| Yamada | すばらしい。<ruby>来週<rt>らいしゅう</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>見学<rt>けんがく</rt></ruby>します。その<ruby>次<rt>つぎ</rt></ruby>の<ruby>週<rt>しゅう</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にやってみましょう。<br>*(Tuyệt. Tuần sau xem thêm 1 lần. Tuần sau nữa cùng làm thử.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Thật ạ! Em sẽ cố!)* |

---

## Tình huống 12 — Phòng nghỉ · 11:00, ông Tanaka cảm ơn

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。お<ruby>車<rt>くるま</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<br>*(Thưa ông Tanaka, để ông chờ rồi. Xe của ông xong rồi.)* |
| Tanaka | おお、<ruby>早<rt>はや</rt></ruby>いね。ありがとう。<br>*(Ồ, nhanh thật. Cảm ơn.)* |
| Carlos | <ruby>次<rt>つぎ</rt></ruby>のオイル<ruby>交換<rt>こうかん</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby>キロ<ruby>後<rt>ご</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>ごろです。<br>*(Lần thay dầu sau cách 5.000 km, khoảng tháng 10.)* |
| Tanaka | はい、よろしく。フォンさん、<ruby>頑張<rt>がんば</rt></ruby>って<ruby>勉強<rt>べんきょう</rt></ruby>してね。<br>*(Vâng, nhờ nhé. Anh Phong, cố gắng học nhé.)* |
| Phong | はい、ありがとうございます！<br>*(Vâng, em cảm ơn ông!)* |
| Tanaka | お<ruby>支払<rt>しはら</rt></ruby>いはいくらですか？<br>*(Thanh toán bao nhiêu?)* |
| Carlos | <ruby>5,500<rt>ごせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(5.500 yên ạ.)* |
| Tanaka | （<ruby>現金<rt>げんきん</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<br>*(Đưa tiền mặt. Vâng, đây.)* |
| Carlos | ちょうどお<ruby>預<rt>あず</rt></ruby>かりいたします。<ruby>領収書<rt>りょうしゅうしょ</rt></ruby>です。<br>*(Em nhận đủ ạ. Đây là hóa đơn.)* |
| Tanaka | ありがとう。また<ruby>来<rt>き</rt></ruby>ます。<br>*(Cảm ơn. Lại đến nhé.)* |
| Carlos & Phong | ありがとうございました！またお<ruby>越<rt>こ</rt></ruby>しください。<br>*(Cảm ơn ông! Mong ông quay lại ạ.)* |

---

## Tình huống 13 — Phòng 203 · 21:00, gọi điện cho bố (cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong gọi cho bố, kể về lần đầu xem thay dầu.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, hôm nay con xem lần đầu thay dầu xe. |
| Bố Phong | (tiếng Việt) Xem chứ chưa làm phải không? |
| Phong | (tiếng Việt) Vâng. Anh Carlos làm, con đứng xem. 5 bước: nâng xe lên lift → mở ドレンボルト (drain bolt) xả dầu cũ → thay オイルフィルター (lọc dầu) → đổ dầu mới → kiểm tra rò rỉ. |
| Bố Phong | (tiếng Việt) Y như sửa máy tàu thủy bố làm. Loại dầu thế nào? |
| Phong | (tiếng Việt) Hôm nay xe Toyota Vitz dùng 5W-30, đổ 3.6 lít. 5W là độ nhớt mùa đông, 30 là mùa hè. Khác loại là hỏng động cơ. |
| Bố Phong | (tiếng Việt) Đúng rồi, hồi xưa bố cũng phải tra bảng. Nhầm là cháy bạc. |
| Phong | (tiếng Việt) Còn cái 作業日報 — nhật báo tác nghiệp — ghi tỉ mỉ: ngày, khách, loại xe, loại dầu, lượng dầu, có thay lọc không, có rò rỉ không. Lưu lại làm bằng chứng. |
| Bố Phong | (tiếng Việt) Người Nhật làm chặt thật. Con học được nhiều rồi. |
| Phong | (tiếng Việt) Anh Yamada nói tuần sau con xem thêm 1 lần, tuần sau nữa cho con tự làm. Hồi hộp quá bố ạ. |
| Bố Phong | (tiếng Việt) Cứ chậm rãi. Mới sang chưa cần nhanh. Quan trọng là làm đúng. |
| Phong | (tiếng Việt) Vâng. À hôm nay con cũng gặp ông Tanaka khách quen, ông ấy động viên con học tốt. |
| Bố Phong | (tiếng Việt) Tốt rồi. Đi nghỉ đi con. |

---

## Đọng lại chương 4

Lần đầu Phong xem オイル交換 thực tế: quy trình **5 bước** — リフトで上げる → ドレンボルトを外して古いオイルを抜く → オイルフィルター交換 → 新しいオイルを入れる → 漏れチェック. Học các bộ phận: **オイルパン・ドレンボルト・オイルフィルター・オイルゲージ・漏斗**. Phân biệt **粘度 5W-30** (số đầu = mùa đông, số sau = mùa hè), nhớ lượng dầu **ヴィッツ 3.6L**. Mẫu câu khách hàng: **お待ちしておりました・お待たせいたしました・またお越しください**. Quy tắc **右締め左緩め**, **5分後にもう一度確認**, ghi đầy đủ **作業日報** — sổ làm bằng chứng và tham khảo lần sau.

> Từ vựng & mẫu câu chương này: オイル交換・ドレンボルト・オイルフィルター・オイルパン・オイルゲージ・粘度・5W-30・漏斗・漏れ・作業日報・領収書・お客様・お待ちしておりました・お待たせいたしました・〜済み・〜というのは・右締め左緩め

## Bí quyết chương

- **5 bước quy trình**: Trật tự cố định, nhớ thứ tự = hiểu được mọi loại 整備.
- **粘度 5W-30**: Sai số = hỏng エンジン. Phải tra 取説 mỗi xe.
- **5分後の漏れチェック**: Bước nhỏ nhưng quyết định khiếu nại. Ông Tanaka khách quen nên Carlos cẩn thận.
- **作業日報**: Tài liệu ghi tỉ mỉ — vừa tham khảo lần sau, vừa làm bằng chứng nếu có vấn đề.
- **Dàn khách quen ông Tanaka**: Sẽ tái xuất các chương sau khi Phong tự làm.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| オイル交換 | オイルこうかん | GIAO HOÁN | Thay dầu |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 基本 | きほん | CƠ BẢN | Cơ bản |
| 様 | さま | DẠNG | Hậu tố quý ngài (lịch sự hơn さん) |
| 休憩室 | きゅうけいしつ | HƯU HẪM THẤT | Phòng nghỉ |
| 流れ | ながれ | LƯU | Quy trình, dòng chảy |
| ドレンボルト | ドレンボルト | — | Bu lông xả dầu |
| 抜く | ぬく | BẠT | Rút ra, xả |
| オイルフィルター | オイルフィルター | — | Lọc dầu |
| 油圧式 | ゆあつしき | DU ÁP THỨC | Kiểu thủy lực |
| 胸 | むね | HUNG | Ngực |
| 経験 | けいけん | KINH NGHIỆM | Kinh nghiệm |
| バット | バット | — | Khay đựng (vat) |
| リットル | リットル | — | Lít |
| 緩める | ゆるめる | HOÃN | Nới lỏng |
| 注意 | ちゅうい | CHÚ Ý | Cẩn thận, chú ý |
| 熱い | あつい | NHIỆT | Nóng |
| 汚れる | よごれる | Ô | Bị bẩn |
| 定期的 | ていきてき | ĐỊNH KỲ ĐÍCH | Định kỳ |
| 部品 | ぶひん | BỘ PHẨM | Phụ tùng, linh kiện |
| 専用 | せんよう | CHUYÊN DỤNG | Chuyên dụng |
| 反対 | はんたい | PHẢN ĐỐI | Ngược lại |
| 右回し | みぎまわし | HỮU HỒI | Xoay phải |
| 左回し | ひだりまわし | TẢ HỒI | Xoay trái |
| ゴムパッキン | ゴムパッキン | — | Gioăng cao su |
| 工夫 | くふう | CÔNG PHU | Sáng kiến, mẹo |
| 缶 | かん | QUÁN | Can, hộp thiếc |
| 粘度 | ねんど | DIÊM ĐỘ | Độ nhớt |
| 表す | あらわす | BIỂU | Biểu thị |
| 壊れる | こわれる | HOẠI | Bị hỏng |
| 漏斗 | じょうご | LẬU ĐẨU | Phễu |
| あふれる | あふれる | — | Tràn ra |
| 火事 | かじ | HOẢ SỰ | Hỏa hoạn |
| 危険 | きけん | NGUY HIỂM | Nguy hiểm |
| 燃える | もえる | NHIÊN | Cháy, bốc cháy |
| オイルゲージ | オイルゲージ | — | Que thăm dầu |
| 棒 | ぼう | BỔNG | Que, thanh |
| 漏れる | もれる | LẬU | Rò rỉ |
| 滴る | したたる | ĐÍCH | Nhỏ giọt |
| 怠る | おこたる | ĐÃI | Lơ là, bỏ qua |
| 駐車場 | ちゅうしゃじょう | TRÚ XA TRƯỜNG | Bãi đỗ xe |
| 染み | しみ | NHIỄM | Vết loang, vết bẩn |
| クレーム | クレーム | — | Khiếu nại |
| 作業日報 | さぎょうにっぽう | TÁC NGHIỆP NHẬT BÁO | Nhật báo công việc |
| 記録 | きろく | KÝ LỤC | Ghi chép, hồ sơ |
| 証拠 | しょうこ | CHỨNG CỚ | Bằng chứng |
| 参考 | さんこう | THAM KHẢO | Tham khảo |
| 支払い | しはらい | CHI PHẤT | Thanh toán |
| 現金 | げんきん | HIỆN KIM | Tiền mặt |
| 領収書 | りょうしゅうしょ | LĨNH THU THƯ | Hóa đơn, biên lai |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000005, 800000043, NULL, 'markdown_book', 'T5. Thay lốp & cân chỉnh — Học loadtest (タイヤ交換)', '# Sách thực tập sinh ô tô · T5. Thay lốp & cân chỉnh — Học loadtest (タイヤ交換)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) làm thực tập sinh ngành sửa chữa ô tô (自動車整備) tại garage Toyota ở Anjo, Aichi. Học các mẫu hội thoại tiếng Nhật cần thiết khi thao tác lốp: gọi tên dụng cụ, hỏi thứ tự công đoạn, báo cáo lực siết bu-lông (トルク), hỏi khi thấy lốp bất thường, đọc số liệu loadtest, xác nhận lại với sempai.

---

## Bối cảnh

Tháng 10 năm 2025. Phong đã vào garage Anjo được hơn 2 tháng, vừa quen với việc thay dầu (T4). Vào mùa đổi lốp đông (スタッドレス), garage bận tăng ca. Trình độ tiếng Nhật của Phong cuối N5, đang tự học lên N4. Chương này tập trung các mẫu câu khi thao tác tháo-lắp lốp: gọi tên cờ-lê, xin phép dùng máy nâng, báo trị số トルク, hỏi lại khi không nghe rõ, và lần đầu được sempai Carlos hướng dẫn đo loadtest.

---

## Tình huống 1 — Sảnh ピット · 8:10, chào sáng & nhận lịch thay lốp

| Vai | Lời thoại |
|---|---|
| Sato | フォンくん、おはよう。<ruby>今日<rt>きょう</rt></ruby>はタイヤ<ruby>交換<rt>こうかん</rt></ruby>がたくさん<ruby>入<rt>はい</rt></ruby>っているよ。<br>*(Phong, chào buổi sáng. Hôm nay có nhiều lịch thay lốp lắm.)* |
| Phong | おはようございます<ruby>工場長<rt>こうじょうちょう</rt></ruby>。<ruby>何台<rt>なんだい</rt></ruby>ですか?<br>*(Chào buổi sáng quản đốc. Bao nhiêu xe ạ?)* |
| Sato | <ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>6<rt>ろく</rt></ruby><ruby>台<rt>だい</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>台<rt>だい</rt></ruby>。カルロスさんと<ruby>一緒<rt>いっしょ</rt></ruby>にやってね。<br>*(Sáng 6 xe, chiều 5 xe. Cứ làm cùng Carlos nhé.)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em sẽ cố gắng.)* |
| Carlos | フォン、おはよう!<ruby>準備<rt>じゅんび</rt></ruby>できた?<br>*(Phong, chào! Chuẩn bị xong chưa?)* |
| Phong | カルロスさん、おはようございます。はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Anh Carlos, chào buổi sáng. Vâng, ổn rồi ạ.)* |

---

## Tình huống 2 — Pit 2 · 8:25, gọi tên dụng cụ trước khi tháo lốp

*Carlos chỉ vào bàn dụng cụ, kiểm tra trình độ Phong.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、これは<ruby>何<rt>なん</rt></ruby>?<br>*(Phong, cái này là gì?)* |
| Phong | インパクトレンチです。ボルトを<ruby>外<rt>はず</rt></ruby>すときに<ruby>使<rt>つか</rt></ruby>います。<br>*(Là cờ-lê hơi ạ. Dùng khi tháo bu-lông.)* |
| Carlos | OK!じゃあ、これは?<br>*(OK! Thế còn cái này?)* |
| Phong | えーと…トルクレンチですか?<br>*(À… cờ-lê lực ạ?)* |
| Carlos | <ruby>正解<rt>せいかい</rt></ruby>!<ruby>締<rt>し</rt></ruby>めるときに、<ruby>必<rt>かなら</rt></ruby>ずトルクレンチを<ruby>使<rt>つか</rt></ruby>ってね。<br>*(Đúng rồi! Khi siết phải dùng cờ-lê lực nhé.)* |
| Phong | はい。<ruby>軽自動車<rt>けいじどうしゃ</rt></ruby>のトルクは<ruby>何<rt>なん</rt></ruby>ニュートンですか?<br>*(Vâng. Xe kei thì trị số trục bao nhiêu Newton ạ?)* |
| Carlos | <ruby>普通<rt>ふつう</rt></ruby>は<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンメートル。<ruby>車<rt>くるま</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うから、<ruby>必<rt>かなら</rt></ruby>ずマニュアルで<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Bình thường 103 Nm. Mỗi xe khác nhau, phải tra sổ tay trước.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em sẽ luôn tra ạ.)* |

---

## Tình huống 3 — Pit 2 · 8:40, xin phép vận hành máy nâng (リフト)

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、リフトを<ruby>上<rt>あ</rt></ruby>げてもいいですか?<br>*(Anh Carlos, em nâng cầu được không ạ?)* |
| Carlos | ちょっと<ruby>待<rt>ま</rt></ruby>って。<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>がいないか<ruby>確認<rt>かくにん</rt></ruby>した?<br>*(Khoan đã. Đã kiểm tra dưới gầm có người không?)* |
| Phong | あっ、すみません、<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(À, xin lỗi, để em kiểm tra ạ.)* |
| Phong | <ruby>下<rt>した</rt></ruby>、<ruby>誰<rt>だれ</rt></ruby>もいません。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Dưới không có ai. Ổn rồi ạ.)* |
| Carlos | OK、<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>して。<br>*(OK, hô lên đi.)* |
| Phong | リフト<ruby>上<rt>あ</rt></ruby>げます!<br>*(Nâng cầu!)* |
| Carlos | はい、ゆっくりね。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>。<br>*(OK, từ từ nhé. An toàn là trên hết.)* |
| Phong | はい、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>。<br>*(Vâng, an toàn là trên hết.)* |

---

## Tình huống 4 — Dưới gầm xe · 9:00, hỏi thứ tự tháo bu-lông

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、ボルトはどの<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>外<rt>はず</rt></ruby>しますか?<br>*(Anh Carlos, tháo bu-lông theo thứ tự nào ạ?)* |
| Carlos | <ruby>対角線<rt>たいかくせん</rt></ruby>に<ruby>外<rt>はず</rt></ruby>すんだ。<ruby>星<rt>ほし</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かる?<br>*(Tháo theo đường chéo. Hình ngôi sao, hiểu không?)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かります。<ruby>上<rt>うえ</rt></ruby>、<ruby>下<rt>した</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>、<ruby>左<rt>ひだり</rt></ruby>…ですか?<br>*(Vâng, em hiểu. Trên, dưới, phải, trái… đúng không ạ?)* |
| Carlos | そう!<ruby>真<rt>ま</rt></ruby>っすぐの<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>外<rt>はず</rt></ruby>すと、ハブが<ruby>歪<rt>ゆが</rt></ruby>むよ。<br>*(Đúng! Tháo theo thứ tự thẳng thì sẽ làm cong ổ trục đấy.)* |
| Phong | <ruby>歪<rt>ゆが</rt></ruby>む…すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cong... Xin lỗi, anh nói lại giúp em ạ.)* |
| Carlos | <ruby>歪<rt>ゆが</rt></ruby>む、ね。「<ruby>曲<rt>ま</rt></ruby>がる」とほぼ<ruby>同<rt>おな</rt></ruby>じ。ベトナム<ruby>語<rt>ご</rt></ruby>で「cong」かな?<br>*(Cong nhé. Gần như "magaru". Tiếng Việt là "cong" hả?)* |
| Phong | あ、はい、「cong」です!<br>*(À vâng, "cong" ạ!)* |
| Carlos | <ruby>覚<rt>おぼ</rt></ruby>えて。<ruby>歪<rt>ゆが</rt></ruby>むとブレーキがガタガタするんだ。<br>*(Nhớ nhé. Cong thì phanh sẽ rung lắc đấy.)* |

---

## Tình huống 5 — Pit 2 · 9:20, báo cáo phát hiện lốp mòn lệch

*Phong tháo xong, lăn lốp ra ngoài, soi đèn.*

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、ちょっと<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Carlos, anh xem giúp em một chút.)* |
| Carlos | どうした?<br>*(Sao thế?)* |
| Phong | このタイヤ、<ruby>内側<rt>うちがわ</rt></ruby>だけ<ruby>減<rt>へ</rt></ruby>っています。<br>*(Lốp này chỉ mòn ở mặt trong.)* |
| Carlos | お、よく<ruby>気<rt>き</rt></ruby>がついたね!これは「<ruby>偏摩耗<rt>へんまもう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>う。<br>*(Ồ, mắt tinh đấy! Cái này gọi là "mòn lệch".)* |
| Phong | へんまもう…<ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Henmamou… nguyên nhân là gì ạ?)* |
| Carlos | アライメントがずれているかも。<ruby>後<rt>あと</rt></ruby>でヤマダさんに<ruby>相談<rt>そうだん</rt></ruby>しよう。<br>*(Có thể độ chụm bị lệch. Lát nữa hỏi anh Yamada nhé.)* |
| Phong | はい、お<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>説明<rt>せつめい</rt></ruby>しなくてもいいですか?<br>*(Vâng. Có cần giải thích cho khách không ạ?)* |
| Carlos | カルロスから<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>言<rt>い</rt></ruby>うよ。フォンは<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けて。<br>*(Anh sẽ báo trưởng kỹ thuật. Phong cứ tiếp tục.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |

---

## Tình huống 6 — Bàn 整備士長 · 9:35, Yamada chỉ điểm về cân chỉnh

| Vai | Lời thoại |
|---|---|
| Yamada | フォンくん、<ruby>偏摩耗<rt>へんまもう</rt></ruby>のタイヤ、<ruby>見<rt>み</rt></ruby>たんだって?<br>*(Phong, em đã xem lốp mòn lệch à?)* |
| Phong | はい、<ruby>整備士長<rt>せいびしちょう</rt></ruby>。<ruby>内側<rt>うちがわ</rt></ruby>だけ<ruby>溝<rt>みぞ</rt></ruby>が<ruby>浅<rt>あさ</rt></ruby>かったです。<br>*(Vâng anh. Chỉ rãnh phía trong là nông ạ.)* |
| Yamada | じゃあ、<ruby>後<rt>あと</rt></ruby>でアライメントテスターで<ruby>測<rt>はか</rt></ruby>るから、<ruby>見<rt>み</rt></ruby>に<ruby>来<rt>き</rt></ruby>てね。<br>*(Vậy lát anh đo bằng máy cân chỉnh, em sang xem nhé.)* |
| Phong | はい、<ruby>勉強<rt>べんきょう</rt></ruby>させてください。<ruby>何時<rt>なんじ</rt></ruby>ごろですか?<br>*(Vâng, cho em học với ạ. Khoảng mấy giờ ạ?)* |
| Yamada | <ruby>10時半<rt>じゅうじはん</rt></ruby>ぐらいかな。<br>*(Tầm 10 giờ rưỡi.)* |
| Phong | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>10時半<rt>じゅうじはん</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います。<br>*(Em rõ ạ. 10 giờ rưỡi em sang.)* |

---

## Tình huống 7 — Pit 1 · 10:30, lần đầu xem loadtest / cân chỉnh

*Phong đứng cạnh máy アライメントテスター, Yamada thao tác.*

| Vai | Lời thoại |
|---|---|
| Yamada | これがアライメントテスター。<ruby>4輪<rt>よんりん</rt></ruby>の<ruby>角度<rt>かくど</rt></ruby>を<ruby>測<rt>はか</rt></ruby>るんだ。<br>*(Đây là máy đo cân chỉnh. Đo góc của cả 4 bánh.)* |
| Phong | <ruby>4輪<rt>よんりん</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby>ですか?<br>*(Cả 4 bánh ạ?)* |
| Yamada | そう。トー、キャンバー、キャスター、この<ruby>3<rt>みっ</rt></ruby>つの<ruby>角度<rt>かくど</rt></ruby>を<ruby>見<rt>み</rt></ruby>る。<br>*(Đúng. Toe, camber, caster — xem 3 góc này.)* |
| Phong | トー、キャンバー、キャスター…メモします。<br>*(Toe, camber, caster… em ghi lại ạ.)* |
| Yamada | <ruby>数値<rt>すうち</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むよ。<ruby>右前<rt>みぎまえ</rt></ruby>のトーが<ruby>0.3<rt>れいてんさん</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>外向<rt>そとむ</rt></ruby>き。これは<ruby>異常<rt>いじょう</rt></ruby>。<br>*(Đọc số nhé. Toe bánh trước phải 0.3 độ, hướng ngoài. Cái này bất thường.)* |
| Phong | <ruby>正常<rt>せいじょう</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>度<rt>ど</rt></ruby>ですか?<br>*(Mức bình thường là bao nhiêu độ ạ?)* |
| Yamada | プラスマイナス<ruby>0.1<rt>れいてんいち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>だね。<br>*(Trong khoảng cộng trừ 0.1 độ.)* |
| Phong | だから<ruby>偏摩耗<rt>へんまもう</rt></ruby>になったんですね。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vậy nên mới mòn lệch nhỉ. Em học được nhiều ạ.)* |

---

## Tình huống 8 — Pit 1 · 10:50, học loadtest cho lốp đông

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>次<rt>つぎ</rt></ruby>はロードテスト。スタッドレスタイヤの<ruby>耐荷重<rt>たいかじゅう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Tiếp theo là loadtest. Kiểm tra tải trọng của lốp đông.)* |
| Phong | ロードテスト、はじめて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Loadtest em mới nghe lần đầu.)* |
| Yamada | タイヤの<ruby>側面<rt>そくめん</rt></ruby>に「<ruby>91<rt>きゅうじゅういち</rt></ruby>Q」とか<ruby>書<rt>か</rt></ruby>いてあるでしょう?<br>*(Bên hông lốp có ghi "91Q" gì đấy đúng không?)* |
| Phong | はい、<ruby>見<rt>み</rt></ruby>たことがあります。<ruby>意味<rt>いみ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Vâng, em có thấy. Nghĩa là gì ạ?)* |
| Yamada | <ruby>91<rt>きゅうじゅういち</rt></ruby>はロードインデックス、<ruby>1本<rt>いっぽん</rt></ruby>あたり<ruby>615<rt>ろっぴゃくじゅうご</rt></ruby>キロまで<ruby>支<rt>ささ</rt></ruby>えられるという<ruby>意味<rt>いみ</rt></ruby>。<br>*(91 là chỉ số tải, một lốp chịu được tới 615 kg.)* |
| Phong | <ruby>4本<rt>よんほん</rt></ruby>で<ruby>2460<rt>にせんよんひゃくろくじゅう</rt></ruby>キロですね。<br>*(Bốn lốp là 2460 kg nhỉ.)* |
| Yamada | <ruby>計算<rt>けいさん</rt></ruby><ruby>早<rt>はや</rt></ruby>いね。Qは<ruby>速度<rt>そくど</rt></ruby><ruby>記号<rt>きごう</rt></ruby>、<ruby>時速<rt>じそく</rt></ruby><ruby>160<rt>ひゃくろくじゅう</rt></ruby>キロまでOKという<ruby>意味<rt>いみ</rt></ruby>だよ。<br>*(Tính nhanh ghê. Q là ký hiệu tốc độ, OK đến 160 km/h.)* |
| Phong | スタッドレスだから<ruby>速度<rt>そくど</rt></ruby>は<ruby>低<rt>ひく</rt></ruby>めなんですね。<br>*(Vì là lốp đông nên tốc độ thấp hơn ạ.)* |

---

## Tình huống 9 — Pit 2 · 11:30, siết bu-lông & xác nhận トルク với sempai

*Phong đã lắp xong lốp mới, đang dùng cờ-lê lực.*

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。トルクは<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンで<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Anh Carlos, kiểm tra giúp em. Lực 103 Nm đúng không ạ?)* |
| Carlos | この<ruby>車<rt>くるま</rt></ruby>は…ちょっと<ruby>待<rt>ま</rt></ruby>って、<ruby>確認<rt>かくにん</rt></ruby>するね。<br>*(Xe này thì… chờ chút, để anh tra.)* |
| Carlos | はい、プリウスは<ruby>103<rt>ひゃくさん</rt></ruby>でOK。<ruby>対角線<rt>たいかくせん</rt></ruby>に<ruby>2回<rt>にかい</rt></ruby><ruby>締<rt>し</rt></ruby>めて。<br>*(OK, Prius là 103 được. Siết đường chéo 2 lượt nhé.)* |
| Phong | はい、<ruby>1回目<rt>いっかいめ</rt></ruby><ruby>仮<rt>かり</rt></ruby><ruby>締<rt>じ</rt></ruby>め、<ruby>2回目<rt>にかいめ</rt></ruby><ruby>本締<rt>ほんじ</rt></ruby>めですね。<br>*(Vâng, lượt 1 siết tạm, lượt 2 siết chính nhỉ.)* |
| Carlos | そう。「カチッ」と<ruby>音<rt>おと</rt></ruby>がしたら<ruby>止<rt>と</rt></ruby>めて。<ruby>過剰<rt>かじょう</rt></ruby>に<ruby>締<rt>し</rt></ruby>めるとボルトが<ruby>折<rt>お</rt></ruby>れるよ。<br>*(Đúng. Nghe "tách" thì dừng. Siết quá thì gãy bu-lông đấy.)* |
| Phong | カチッ…はい、<ruby>音<rt>おと</rt></ruby>がしました!<br>*(Tách… vâng, có tiếng rồi!)* |
| Carlos | OK!<ruby>残<rt>のこ</rt></ruby>り<ruby>3本<rt>さんぼん</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じように。<br>*(OK! Ba con còn lại làm tương tự.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng ạ.)* |

---

## Tình huống 10 — Sảnh đón khách · 12:50, nghe nhầm "ホイール" và "リール"

*Khách hàng tên Tanaka đến lấy xe. Hiroshi tiếp khách, Phong đứng cạnh học.*

| Vai | Lời thoại |
|---|---|
| Khách | すみません、<ruby>夏<rt>なつ</rt></ruby>タイヤのホイールも<ruby>預<rt>あず</rt></ruby>かってもらえますか?<br>*(Xin lỗi, gửi luôn mâm của lốp hè được không?)* |
| Hiroshi | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。フォンくん、ホイール<ruby>預<rt>あず</rt></ruby>かりの<ruby>伝票<rt>でんぴょう</rt></ruby>を。<br>*(Vâng, được ạ. Phong, lấy phiếu gửi mâm nhé.)* |
| Phong | リール…ですか?<br>*(Cuộn quay… ạ?)* |
| Hiroshi | (cười) リールじゃなくて、ホイール。<ruby>車<rt>くるま</rt></ruby>のタイヤの<ruby>中<rt>なか</rt></ruby>の<ruby>金属<rt>きんぞく</rt></ruby>のやつ。<br>*(Không phải "rīru", là "hoīru" — mâm kim loại bên trong lốp.)* |
| Phong | あ、すみません!ホイール、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ồ xin lỗi! Mâm, em rõ rồi.)* |
| Khách | (cười) <ruby>頑張<rt>がんば</rt></ruby>ってね、<ruby>留学生<rt>りゅうがくせい</rt></ruby>さん。<br>*(Cố lên nhé, em du học sinh.)* |
| Phong | <ruby>実習生<rt>じっしゅうせい</rt></ruby>です。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Em là thực tập sinh ạ. Em đến từ Việt Nam.)* |
| Khách | あ、ベトナム!フォーが<ruby>大好<rt>だいす</rt></ruby>き。<br>*(Ồ, Việt Nam! Tôi mê phở lắm.)* |

---

## Tình huống 11 — Bàn nghỉ · 12:30, nhờ Hiroshi dạy thêm về số lốp

| Vai | Lời thoại |
|---|---|
| Phong | ヒロシさん、ちょっと<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Anh Hiroshi, em hỏi chút được không?)* |
| Hiroshi | どうぞ、<ruby>何<rt>なん</rt></ruby>でも。<br>*(Cứ hỏi đi, gì cũng được.)* |
| Phong | タイヤの<ruby>側面<rt>そくめん</rt></ruby>に「<ruby>195<rt>ひゃくきゅうじゅうご</rt></ruby>/<ruby>65<rt>ろくじゅうご</rt></ruby>R<ruby>15<rt>じゅうご</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。これは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Bên hông lốp ghi "195/65R15". Cái này là gì ạ?)* |
| Hiroshi | <ruby>195<rt>ひゃくきゅうじゅうご</rt></ruby>は<ruby>幅<rt>はば</rt></ruby>、ミリだよ。<br>*(195 là bề rộng, đơn vị mm.)* |
| Phong | <ruby>幅<rt>はば</rt></ruby><ruby>195<rt>ひゃくきゅうじゅうご</rt></ruby>ミリ。<br>*(Bề rộng 195 mm.)* |
| Hiroshi | <ruby>65<rt>ろくじゅうご</rt></ruby>は<ruby>扁平率<rt>へんぺいりつ</rt></ruby>、パーセント。Rはラジアル<ruby>構造<rt>こうぞう</rt></ruby>。<ruby>15<rt>じゅうご</rt></ruby>はホイールの<ruby>大<rt>おお</rt></ruby>きさ、インチ。<br>*(65 là tỷ lệ bề dày, %. R là cấu trúc radial. 15 là size mâm, inch.)* |
| Phong | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>意味<rt>いみ</rt></ruby>があるんですね!<br>*(Tất cả đều có ý nghĩa nhỉ!)* |
| Hiroshi | そうそう。<ruby>覚<rt>おぼ</rt></ruby>えるとお<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>説明<rt>せつめい</rt></ruby>できるよ。<br>*(Đúng vậy. Nhớ thì có thể giải thích cho khách đấy.)* |

---

## Tình huống 12 — Pit 2 · 15:40, làm rớt bu-lông, xin lỗi & báo cáo

*Phong vô ý làm rớt bu-lông xuống rãnh thoát dầu.*

| Vai | Lời thoại |
|---|---|
| Phong | あっ!<br>*(Ấy!)* |
| Carlos | どうした?<br>*(Sao thế?)* |
| Phong | すみません、ボルトを<ruby>1本<rt>いっぽん</rt></ruby><ruby>落<rt>お</rt></ruby>としてしまいました。<br>*(Xin lỗi, em lỡ làm rớt một bu-lông.)* |
| Carlos | どこに?<br>*(Rớt đâu?)* |
| Phong | <ruby>排水溝<rt>はいすいこう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に…<ruby>取<rt>と</rt></ruby>れません。<br>*(Vào rãnh thoát nước… không lấy ra được.)* |
| Carlos | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>慌<rt>あわ</rt></ruby>てないで。<ruby>新<rt>あたら</rt></ruby>しいボルトを<ruby>使<rt>つか</rt></ruby>おう。<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してね。<br>*(Không sao, đừng cuống. Dùng bu-lông mới. Báo cáo trưởng kỹ thuật nhé.)* |
| Phong | はい、すぐ<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em báo ngay ạ.)* |
| Phong (với Yamada) | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、すみません、ボルトを<ruby>1本<rt>いっぽん</rt></ruby><ruby>排水溝<rt>はいすいこう</rt></ruby>に<ruby>落<rt>お</rt></ruby>としました。<ruby>新<rt>あたら</rt></ruby>しいのを<ruby>使<rt>つか</rt></ruby>ってもいいですか?<br>*(Trưởng kỹ thuật, em xin lỗi, em làm rớt một bu-lông vào rãnh. Em dùng bu-lông mới được không ạ?)* |
| Yamada | いいよ。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してくれてありがとう。<ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけてね。<br>*(Được. Cảm ơn em báo cáo trung thực. Lần sau cẩn thận nhé.)* |
| Phong | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Vâng, em thực sự xin lỗi.)* |

---

## Tình huống 13 — Phòng nghỉ · 17:50, kết thúc ca, Carlos rủ học thêm

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>今日<rt>きょう</rt></ruby>はよく<ruby>頑張<rt>がんば</rt></ruby>ったね。<br>*(Phong, hôm nay làm tốt lắm.)* |
| Phong | ありがとうございます。でも、まだ<ruby>失敗<rt>しっぱい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いです。<br>*(Em cảm ơn ạ. Nhưng em vẫn còn nhiều lỗi.)* |
| Carlos | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はそうだった。<ruby>来週<rt>らいしゅう</rt></ruby>、ロードテストの<ruby>続<rt>つづ</rt></ruby>きを<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Không sao. Anh hồi đầu cũng vậy. Tuần sau anh dạy tiếp loadtest.)* |
| Phong | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。ノートに<ruby>書<rt>か</rt></ruby>いておきます。<br>*(Em xin nhờ anh ạ. Em sẽ ghi vào sổ.)* |
| Carlos | フォンはノートをよく<ruby>書<rt>か</rt></ruby>くね。<ruby>真面目<rt>まじめ</rt></ruby>。<br>*(Phong viết sổ chăm thật. Nghiêm túc.)* |
| Phong | ベトナムの<ruby>父<rt>ちち</rt></ruby>に「<ruby>書<rt>か</rt></ruby>けば<ruby>忘<rt>わす</rt></ruby>れない」と<ruby>言<rt>い</rt></ruby>われました。<br>*(Bố em ở Việt Nam dặn "viết ra thì không quên".)* |
| Carlos | いいお<ruby>父<rt>とう</rt></ruby>さんだね。<br>*(Bố em hay đấy.)* |

---

## Tình huống 14 — Phòng trọ · 21:30, gọi video về Hải Phòng

> Cảnh tiếng Việt — Phong gọi về cho bố ở Hải Phòng (bố làm cơ khí xưởng nhỏ).

| Vai | Lời thoại |
|---|---|
| Phong | Bố ơi, hôm nay con thay lốp đến mười một xe. |
| Bố | Mười một xe? Mệt không con? |
| Phong | Cũng mệt, nhưng vui. Hôm nay con học được "torque renchi" — cờ-lê lực ấy bố. Bên xưởng mình mình toàn siết tay thôi nhỉ. |
| Bố | Ừ, bên mình bố cũng chỉ siết tay với cây cờ-lê dài. Bên Nhật chuẩn hơn nhỉ. |
| Phong | Vâng. Con học cả cách đọc số lốp: 195/65R15. 195 là bề rộng mm, 65 là tỷ lệ bề dày, R là radial, 15 là inch mâm. |
| Bố | Giỏi lắm. Mà có gì khó thì cứ hỏi sempai, đừng giấu. |
| Phong | Vâng, hôm nay con làm rớt một bu-lông xuống rãnh, con báo cáo ngay với "seibishichou" — trưởng kỹ thuật ấy. Anh ấy không mắng, còn khen con thật thà. |
| Bố | Tốt. Người Nhật quý trung thực. Cố lên con. |
| Phong | Vâng. Tháng sau con sẽ học về phanh, sempai Carlos hứa dạy con. Con chào bố, ngủ ngon ạ. |

---

## Đọng lại chương

Chương này em đã học các mẫu câu cốt lõi của ngày thay lốp:

- **「リフトを<ruby>上<rt>あ</rt></ruby>げてもいいですか?」** — Em nâng cầu được không ạ? (xin phép thao tác)
- **「トルクは<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンで<ruby>合<rt>あ</rt></ruby>っていますか?」** — Lực 103 Nm đúng không ạ? (xác nhận trị số)
- **「すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」** — Xin lỗi, anh nói lại giúp em (hỏi lại khi chưa nghe rõ)
- **「ボルトを<ruby>1本<rt>いっぽん</rt></ruby><ruby>落<rt>お</rt></ruby>としてしまいました」** — Em lỡ làm rớt một bu-lông (báo lỗi)
- **「<ruby>勉強<rt>べんきょう</rt></ruby>させてください」** — Cho em học với ạ (xin phép quan sát học hỏi)
- **「<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>」** — An toàn là trên hết (khẩu hiệu xưởng)

> Từ vựng & mẫu câu chương này: タイヤ・ホイール・ボルト・トルクレンチ・インパクトレンチ・リフト・<ruby>対角線<rt>たいかくせん</rt></ruby>・<ruby>偏摩耗<rt>へんまもう</rt></ruby>・アライメント・ロードテスト・<ruby>耐荷重<rt>たいかじゅう</rt></ruby>・<ruby>溝<rt>みぞ</rt></ruby>・<ruby>仮締<rt>かりじ</rt></ruby>め・<ruby>本締<rt>ほんじ</rt></ruby>め・<ruby>報告<rt>ほうこく</rt></ruby>...

---

## Bí quyết chương

- Tháo bu-lông luôn theo **đường chéo (対角線)**, siết cũng vậy — siết thẳng làm cong ổ trục.
- Trước khi nâng cầu: **luôn nhìn dưới gầm, hô to** — văn hoá 指差呼称 (chỉ tay & hô).
- Cờ-lê lực kêu "**カチッ**" là dừng — siết quá làm gãy bu-lông, đền tiền to.
- Báo lỗi **càng sớm càng tốt** — sempai quý trung thực hơn việc che giấu.
- Số bên hông lốp (195/65R15, 91Q) là **thẻ căn cước của lốp** — học thuộc để giải thích cho khách.
- Mùa thu Aichi (10/11) là **đỉnh điểm đổi lốp đông** — cả garage tăng ca, không được làm ẩu vì vội.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 交換 | こうかん | GIAO HOÁN | thay, đổi |
| 工場長 | こうじょうちょう | CÔNG XƯỞNG TRƯỞNG | quản đốc xưởng |
| 整備士長 | せいびしちょう | CHỈNH BỊ SĨ TRƯỞNG | trưởng kỹ thuật |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| インパクトレンチ | — | — | cờ-lê hơi |
| トルクレンチ | — | — | cờ-lê lực |
| ボルト | — | — | bu-lông |
| 締める | しめる | THỂ | siết |
| 外す | はずす | NGOẠI | tháo |
| マニュアル | — | — | sổ tay hướng dẫn |
| 確認 | かくにん | XÁC NHẬN | kiểm tra, xác nhận |
| リフト | — | — | cầu nâng |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | an toàn là trên hết |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 対角線 | たいかくせん | ĐỐI GIÁC TUYẾN | đường chéo |
| 歪む | ゆがむ | OAI | cong, vênh |
| 内側 | うちがわ | NỘI TRẮC | mặt trong |
| 減る | へる | GIẢM | mòn, giảm |
| 偏摩耗 | へんまもう | THIÊN MA HAO | mòn lệch |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| アライメント | — | — | độ chụm (cân chỉnh) |
| 角度 | かくど | GIÁC ĐỘ | góc độ |
| 数値 | すうち | SỐ TRỊ | trị số |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 範囲 | はんい | PHẠM VI | khoảng, phạm vi |
| ロードテスト | — | — | loadtest, kiểm tra tải |
| 耐荷重 | たいかじゅう | NẠI HÀ TRỌNG | tải trọng chịu được |
| 速度 | そくど | TỐC ĐỘ | tốc độ |
| 仮締め | かりじめ | GIẢ | siết tạm |
| 本締め | ほんじめ | BỔN | siết chính |
| 排水溝 | はいすいこう | BÀI THUỶ CÂU | rãnh thoát nước |
| 落とす | おとす | LẠC | làm rớt |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 正直 | しょうじき | CHÍNH TRỰC | trung thực |
| 真面目 | まじめ | CHÂN DIỆN MỤC | nghiêm túc, chăm chỉ |
| ホイール | — | — | mâm bánh xe |
| 扁平率 | へんぺいりつ | BIỂN BÌNH SUẤT | tỷ lệ bề dày |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000006, 800000043, NULL, 'markdown_book', 'T6. Sửa phanh — Pát, đĩa, dầu phanh (ブレーキ整備)', '# Sách thực tập sinh ô tô · T6. Sửa phanh — Pát, đĩa, dầu phanh (ブレーキ整備)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) làm thực tập sinh ngành sửa chữa ô tô tại garage Toyota Anjo, Aichi. Học các mẫu hội thoại tiếng Nhật khi xử lý hệ thống phanh: hỏi nguyên nhân kêu rít, đo độ dày pát phanh, kiểm tra đĩa phanh, đo nước phanh (ブレーキフルード), báo cáo độ mòn, xác nhận trước khi giao xe.

---

## Bối cảnh

Giữa tháng 11 năm 2025. Phong đã quen tháo lắp lốp (T5). Một khách hàng mang xe Vitz vào kêu phanh rít. Quản đốc Sato giao cho Phong làm cùng Yamada để học chuyên đề phanh. Trình độ JP: cuối N5 đầu N4. Chương này tập trung mẫu câu chẩn đoán phanh, đo bằng thước cặp ノギス, đọc số mm, và lần đầu thay pát phanh thật.

---

## Tình huống 1 — Quầy 受付 · 9:00, khách than phanh kêu

| Vai | Lời thoại |
|---|---|
| Khách | すみません、ブレーキを<ruby>踏<rt>ふ</rt></ruby>むと「キーキー」と<ruby>音<rt>おと</rt></ruby>がするんです。<br>*(Xin lỗi, đạp phanh là kêu "ke ke" ấy.)* |
| Hiroshi | いつからですか?<br>*(Từ khi nào ạ?)* |
| Khách | <ruby>先週<rt>せんしゅう</rt></ruby>ぐらいからです。<ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>に<ruby>特<rt>とく</rt></ruby>にひどいです。<br>*(Tầm tuần trước. Ngày mưa thì đặc biệt nặng.)* |
| Hiroshi | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>点検<rt>てんけん</rt></ruby>します。<ruby>1時間<rt>いちじかん</rt></ruby>ぐらいお<ruby>時間<rt>じかん</rt></ruby>いただけますか?<br>*(Em rõ. Em sẽ kiểm tra. Mất khoảng 1 tiếng, anh chờ được không?)* |
| Khách | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh.)* |
| Hiroshi (gọi Phong) | フォンくん、ブレーキ<ruby>点検<rt>てんけん</rt></ruby>、ヤマダさんと<ruby>一緒<rt>いっしょ</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>い。<br>*(Phong, kiểm tra phanh nhờ em cùng anh Yamada nhé.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Pit 1 · 9:15, Yamada hỏi giả thuyết nguyên nhân

*Yamada cho Phong nghĩ trước khi tháo.*

| Vai | Lời thoại |
|---|---|
| Yamada | フォンくん、ブレーキの<ruby>音<rt>おと</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う?<br>*(Phong, em nghĩ tiếng phanh do đâu?)* |
| Phong | えーと…パッドが<ruby>薄<rt>うす</rt></ruby>くなっていますか?<br>*(Ơ… do pát mòn mỏng ạ?)* |
| Yamada | いいね。<ruby>他<rt>ほか</rt></ruby>には?<br>*(Tốt. Còn gì nữa?)* |
| Phong | ディスクに<ruby>傷<rt>きず</rt></ruby>がある…?<br>*(Đĩa có vết xước…?)* |
| Yamada | そう。<ruby>他<rt>ほか</rt></ruby>には<ruby>水<rt>みず</rt></ruby>や<ruby>錆<rt>さび</rt></ruby>。<ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>にひどい、と<ruby>言<rt>い</rt></ruby>っていたよね。<br>*(Đúng. Còn có nước hoặc gỉ. Khách bảo ngày mưa nặng đúng không.)* |
| Phong | はい、<ruby>水<rt>みず</rt></ruby>でディスクが<ruby>錆<rt>さび</rt></ruby>るかもしれません。<br>*(Vâng, có thể đĩa bị gỉ vì nước.)* |
| Yamada | <ruby>正解<rt>せいかい</rt></ruby>!まず<ruby>外<rt>はず</rt></ruby>して<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Đúng! Trước hết tháo ra xem.)* |
| Phong | はい、リフトを<ruby>上<rt>あ</rt></ruby>げます。<br>*(Vâng, em nâng cầu ạ.)* |

---

## Tình huống 3 — Pit 1 · 9:30, tháo キャリパー & gọi tên các bộ phận

| Vai | Lời thoại |
|---|---|
| Yamada | このオレンジ<ruby>色<rt>いろ</rt></ruby>の<ruby>部品<rt>ぶひん</rt></ruby>、<ruby>名前<rt>なまえ</rt></ruby>は?<br>*(Cụm màu cam này tên gì?)* |
| Phong | キャリパーですか?<br>*(Caliper ạ?)* |
| Yamada | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>中<rt>なか</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っている?<br>*(Đúng. Bên trong chứa gì?)* |
| Phong | ブレーキパッドと…ピストン、です。<br>*(Pát phanh và… piston ạ.)* |
| Yamada | よく<ruby>勉強<rt>べんきょう</rt></ruby>しているね。じゃ、キャリパーのボルトを<ruby>外<rt>はず</rt></ruby>して。<br>*(Học chăm đấy. Tháo bu-lông caliper đi.)* |
| Phong | はい。サイズは<ruby>17<rt>じゅうなな</rt></ruby>ミリのスパナでいいですか?<br>*(Vâng. Dùng cờ-lê 17 mm được không ạ?)* |
| Yamada | このトヨタは<ruby>14<rt>じゅうよん</rt></ruby>ミリ。<br>*(Toyota này là 14 mm.)* |
| Phong | あ、<ruby>14<rt>じゅうよん</rt></ruby>ミリですね。<ruby>用意<rt>ようい</rt></ruby>します。<br>*(À 14 mm ạ. Em chuẩn bị.)* |

---

## Tình huống 4 — Pit 1 · 9:50, đo độ dày pát bằng ノギス

*Yamada đưa Phong thước cặp.*

| Vai | Lời thoại |
|---|---|
| Yamada | ノギスでパッドの<ruby>厚<rt>あつ</rt></ruby>さを<ruby>測<rt>はか</rt></ruby>って。<br>*(Đo độ dày pát bằng thước cặp.)* |
| Phong | はい…<ruby>3.2<rt>さんてんに</rt></ruby>ミリです。<br>*(Vâng… 3.2 mm ạ.)* |
| Yamada | <ruby>反対側<rt>はんたいがわ</rt></ruby>は?<br>*(Bên đối diện?)* |
| Phong | <ruby>2.8<rt>にてんはち</rt></ruby>ミリです。<br>*(2.8 mm ạ.)* |
| Yamada | <ruby>新品<rt>しんぴん</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby>ミリ。<ruby>限界<rt>げんかい</rt></ruby>は<ruby>2<rt>に</rt></ruby>ミリ。これは<ruby>交換<rt>こうかん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>だね。<br>*(Mới là 10 mm. Giới hạn là 2 mm. Cái này cần thay rồi.)* |
| Phong | はい、メモします。<ruby>右<rt>みぎ</rt></ruby><ruby>外<rt>そと</rt></ruby><ruby>3.2<rt>さんてんに</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby><ruby>内<rt>うち</rt></ruby><ruby>2.8<rt>にてんはち</rt></ruby>。<br>*(Vâng, em ghi. Phải ngoài 3.2, phải trong 2.8.)* |
| Yamada | <ruby>左<rt>ひだり</rt></ruby>も<ruby>測<rt>はか</rt></ruby>って、<ruby>4枚<rt>よんまい</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>記録<rt>きろく</rt></ruby>。<br>*(Đo cả bên trái nữa, ghi cả 4 miếng.)* |
| Phong | はい、<ruby>4枚<rt>よんまい</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby>ですね。<br>*(Vâng, cả 4 miếng nhỉ.)* |

---

## Tình huống 5 — Pit 1 · 10:10, kiểm tra đĩa phanh

| Vai | Lời thoại |
|---|---|
| Yamada | ディスクを<ruby>見<rt>み</rt></ruby>て。<ruby>表面<rt>ひょうめん</rt></ruby>はどう?<br>*(Nhìn đĩa đi. Bề mặt thế nào?)* |
| Phong | <ruby>線<rt>せん</rt></ruby>がたくさんあります。<ruby>少<rt>すこ</rt></ruby>し<ruby>錆<rt>さび</rt></ruby>もあります。<br>*(Có nhiều vết xước. Hơi gỉ nữa.)* |
| Yamada | これが「キーキー」<ruby>音<rt>おと</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>。マイクロメーターで<ruby>厚<rt>あつ</rt></ruby>みを<ruby>測<rt>はか</rt></ruby>って。<br>*(Đây là nguyên nhân kêu. Đo độ dày bằng panme.)* |
| Phong | はい…<ruby>21.5<rt>にじゅういってんご</rt></ruby>ミリです。<br>*(Vâng… 21.5 mm ạ.)* |
| Yamada | <ruby>規定値<rt>きていち</rt></ruby>は<ruby>22<rt>にじゅうに</rt></ruby>ミリ、<ruby>限界<rt>げんかい</rt></ruby>は<ruby>20<rt>にじゅう</rt></ruby>ミリ。まだ<ruby>使<rt>つか</rt></ruby>えるけど、<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>研磨<rt>けんま</rt></ruby>しよう。<br>*(Quy chuẩn 22 mm, giới hạn 20 mm. Còn dùng được, nhưng mài bề mặt nhé.)* |
| Phong | <ruby>研磨<rt>けんま</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。どんな<ruby>作業<rt>さぎょう</rt></ruby>ですか?<br>*(Mài em mới nghe lần đầu. Là thao tác gì ạ?)* |
| Yamada | ディスクの<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>削<rt>けず</rt></ruby>って、<ruby>平<rt>たい</rt></ruby>らにする。<ruby>後<rt>あと</rt></ruby>で<ruby>見<rt>み</rt></ruby>せるよ。<br>*(Mài bề mặt đĩa cho phẳng. Lát anh chỉ.)* |
| Phong | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ anh ạ.)* |

---

## Tình huống 6 — Bàn dầu · 10:30, kiểm tra dầu phanh (ブレーキフルード)

*Yamada chỉ Phong cách kiểm tra nước phanh.*

| Vai | Lời thoại |
|---|---|
| Yamada | ボンネットを<ruby>開<rt>あ</rt></ruby>けて。ブレーキフルードのリザーバータンクを<ruby>見<rt>み</rt></ruby>つけて。<br>*(Mở capo. Tìm bình chứa dầu phanh.)* |
| Phong | これですか?「DOT<ruby>3<rt>さん</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Cái này ạ? Có ghi "DOT 3".)* |
| Yamada | そう。<ruby>液<rt>えき</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>はどう?<br>*(Đúng. Màu dầu thế nào?)* |
| Phong | <ruby>濃<rt>こ</rt></ruby>い<ruby>茶色<rt>ちゃいろ</rt></ruby>です。<br>*(Nâu đậm ạ.)* |
| Yamada | <ruby>新<rt>あたら</rt></ruby>しいフルードは<ruby>透明<rt>とうめい</rt></ruby>か<ruby>薄<rt>うす</rt></ruby>い<ruby>黄色<rt>きいろ</rt></ruby>。<ruby>濃<rt>こ</rt></ruby>い<ruby>茶色<rt>ちゃいろ</rt></ruby>は<ruby>劣化<rt>れっか</rt></ruby>している。<br>*(Mới thì trong hoặc vàng nhạt. Nâu đậm là xuống cấp.)* |
| Phong | <ruby>劣化<rt>れっか</rt></ruby>するとどうなりますか?<br>*(Xuống cấp thì sao ạ?)* |
| Yamada | <ruby>水分<rt>すいぶん</rt></ruby>を<ruby>吸<rt>す</rt></ruby>って、<ruby>沸点<rt>ふってん</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がる。ブレーキが<ruby>効<rt>き</rt></ruby>かなくなることもある。<br>*(Hút nước, điểm sôi giảm. Có khi phanh mất tác dụng.)* |
| Phong | <ruby>危険<rt>きけん</rt></ruby>ですね…<ruby>交換<rt>こうかん</rt></ruby>しましょうか?<br>*(Nguy hiểm nhỉ… Mình thay đi ạ?)* |
| Yamada | お<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>確認<rt>かくにん</rt></ruby>してから。フルードは<ruby>2年<rt>にねん</rt></ruby>に<ruby>1回<rt>いっかい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>が<ruby>目安<rt>めやす</rt></ruby>。<br>*(Hỏi khách trước. Dầu thường 2 năm thay 1 lần là chuẩn.)* |

---

## Tình huống 7 — Quầy tiếp khách · 10:50, báo cáo & xin xác nhận khách

| Vai | Lời thoại |
|---|---|
| Hiroshi | <ruby>田中<rt>たなか</rt></ruby>さま、<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Anh Tanaka, em xin giải thích kết quả kiểm tra.)* |
| Hiroshi | フォンくん、<ruby>数字<rt>すうじ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでくれる?<br>*(Phong, em đọc số liệu giúp anh.)* |
| Phong | はい。ブレーキパッドは<ruby>右<rt>みぎ</rt></ruby><ruby>3.2<rt>さんてんに</rt></ruby>ミリ、<ruby>左<rt>ひだり</rt></ruby><ruby>3.0<rt>さんてんれい</rt></ruby>ミリ。<ruby>限界<rt>げんかい</rt></ruby>は<ruby>2<rt>に</rt></ruby>ミリです。<br>*(Vâng. Pát phải 3.2 mm, trái 3.0 mm. Giới hạn là 2 mm.)* |
| Khách | あ、もうすぐ<ruby>限界<rt>げんかい</rt></ruby>ですね。<br>*(Ồ, sắp tới giới hạn rồi nhỉ.)* |
| Phong | はい、<ruby>交換<rt>こうかん</rt></ruby>をおすすめします。ディスクも<ruby>研磨<rt>けんま</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Vâng, em đề nghị thay. Đĩa cũng cần mài.)* |
| Khách | フルードは?<br>*(Còn dầu thì sao?)* |
| Phong | フルードは<ruby>濃<rt>こ</rt></ruby>い<ruby>茶色<rt>ちゃいろ</rt></ruby>でした。<ruby>劣化<rt>れっか</rt></ruby>しているので、<ruby>交換<rt>こうかん</rt></ruby>がおすすめです。<br>*(Dầu nâu đậm rồi. Đã xuống cấp, đề nghị thay.)* |
| Khách | <ruby>全部<rt>ぜんぶ</rt></ruby>でいくらですか?<br>*(Tổng cộng bao nhiêu ạ?)* |
| Hiroshi | <ruby>見積書<rt>みつもりしょ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<ruby>3万<rt>さんまん</rt></ruby><ruby>2千円<rt>にせんえん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です。<br>*(Em xuất bảng báo giá. Khoảng 32.000 yên.)* |
| Khách | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ anh.)* |

---

## Tình huống 8 — Pit 1 · 11:20, lần đầu thay pát phanh

*Phong tự tay tháo pát cũ, lắp pát mới dưới sự giám sát của Yamada.*

| Vai | Lời thoại |
|---|---|
| Yamada | パッドを<ruby>外<rt>はず</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に、ピストンを<ruby>戻<rt>もど</rt></ruby>すよ。<br>*(Trước khi tháo pát, đẩy piston về.)* |
| Phong | はい、ピストン<ruby>戻<rt>もど</rt></ruby>し<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Vâng, dùng dụng cụ đẩy piston ạ?)* |
| Yamada | そう。ゆっくり<ruby>回<rt>まわ</rt></ruby>して<ruby>押<rt>お</rt></ruby>し<ruby>込<rt>こ</rt></ruby>む。<br>*(Đúng. Xoay từ từ và ấn vào.)* |
| Phong | (làm) <ruby>戻<rt>もど</rt></ruby>りました。<br>*(Xong rồi ạ.)* |
| Yamada | OK。<ruby>古<rt>ふる</rt></ruby>いパッドを<ruby>外<rt>はず</rt></ruby>して、<ruby>新<rt>あたら</rt></ruby>しいパッドを<ruby>入<rt>い</rt></ruby>れて。<ruby>裏側<rt>うらがわ</rt></ruby>にグリスを<ruby>少<rt>すこ</rt></ruby>し。<br>*(OK. Tháo pát cũ, lắp pát mới. Bôi chút mỡ vào mặt sau.)* |
| Phong | グリスをどれぐらい?<br>*(Mỡ bao nhiêu ạ?)* |
| Yamada | <ruby>米粒<rt>こめつぶ</rt></ruby><ruby>大<rt>だい</rt></ruby><ruby>3<rt>みっ</rt></ruby>つぐらい。<ruby>多<rt>おお</rt></ruby>すぎるとブレーキに<ruby>付<rt>つ</rt></ruby>くから<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Khoảng 3 hạt gạo. Nhiều quá dính vào phanh thì nguy hiểm.)* |
| Phong | こめつぶ<ruby>3<rt>みっ</rt></ruby>つ、<ruby>分<rt>わ</rt></ruby>かりました!<br>*(Ba hạt gạo, em rõ ạ!)* |

---

## Tình huống 9 — Pit 1 · 12:00, ăn nhầm khái niệm: パッド vs シュー

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>後<rt>うし</rt></ruby>ろのブレーキは<ruby>違<rt>ちが</rt></ruby>う<ruby>形<rt>かたち</rt></ruby>ですか?<br>*(Trưởng kỹ thuật, phanh sau hình dạng khác ạ?)* |
| Yamada | この<ruby>車<rt>くるま</rt></ruby>の<ruby>後<rt>うし</rt></ruby>ろはドラムブレーキ。パッドじゃなくて「ブレーキシュー」と<ruby>言<rt>い</rt></ruby>う。<br>*(Phanh sau xe này là phanh đùm. Không gọi pát mà là "brake shoe".)* |
| Phong | パッドとシュー…<ruby>違<rt>ちが</rt></ruby>うんですね。<br>*(Pát với shoe… khác nhau ạ.)* |
| Yamada | ディスクブレーキはパッド、ドラムブレーキはシュー。<ruby>覚<rt>おぼ</rt></ruby>えて。<br>*(Phanh đĩa là pát, phanh đùm là shoe. Nhớ nhé.)* |
| Phong | ディスク=パッド、ドラム=シュー。メモします。<br>*(Đĩa = pát, đùm = shoe. Em ghi ạ.)* |
| Yamada | ベトナム<ruby>語<rt>ご</rt></ruby>では?<br>*(Tiếng Việt gọi là gì?)* |
| Phong | パッドは「pát phanh」、シューは…えーと、「guốc phanh」と<ruby>言<rt>い</rt></ruby>います。<br>*(Pát là "pát phanh", shoe là… "guốc phanh".)* |
| Yamada | へえ、おもしろい!<br>*(Ồ, hay đấy!)* |

---

## Tình huống 10 — Pit 1 · 13:30, エア抜き sau khi thay dầu

*Carlos giúp Yamada xả gió dầu phanh, Phong đứng học.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、エア<ruby>抜<rt>ぬ</rt></ruby>きを<ruby>見<rt>み</rt></ruby>たことある?<br>*(Phong, đã xem xả gió chưa?)* |
| Phong | いいえ、<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Chưa ạ, em mới lần đầu.)* |
| Carlos | フルードを<ruby>交換<rt>こうかん</rt></ruby>したら、<ruby>必<rt>かなら</rt></ruby>ずエア<ruby>抜<rt>ぬ</rt></ruby>き。<ruby>空気<rt>くうき</rt></ruby>が<ruby>入<rt>はい</rt></ruby>るとブレーキが<ruby>柔<rt>やわ</rt></ruby>らかくなる。<br>*(Thay dầu xong là phải xả gió. Có khí vào thì phanh mềm.)* |
| Phong | やわらかい?<br>*(Mềm ạ?)* |
| Carlos | ペダルが<ruby>深<rt>ふか</rt></ruby>くまで<ruby>沈<rt>しず</rt></ruby>む、<ruby>効<rt>き</rt></ruby>きが<ruby>悪<rt>わる</rt></ruby>くなる<ruby>意味<rt>いみ</rt></ruby>。<br>*(Pedal lún sâu, ăn kém ấy.)* |
| Phong | <ruby>危<rt>あぶ</rt></ruby>ないですね。<br>*(Nguy hiểm nhỉ.)* |
| Carlos | <ruby>2人<rt>ふたり</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>。<ruby>1人<rt>ひとり</rt></ruby>がペダルを<ruby>踏<rt>ふ</rt></ruby>む、もう<ruby>1人<rt>ひとり</rt></ruby>がバルブを<ruby>緩<rt>ゆる</rt></ruby>める。フォンはペダル<ruby>担当<rt>たんとう</rt></ruby>。<br>*(Cần 2 người. Một đạp pedal, một nới van. Phong phụ trách pedal.)* |
| Phong | はい!<ruby>合図<rt>あいず</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng! Anh chỉ em hiệu lệnh.)* |
| Carlos | 「<ruby>踏<rt>ふ</rt></ruby>んで!」と<ruby>言<rt>い</rt></ruby>ったら<ruby>踏<rt>ふ</rt></ruby>む、「<ruby>離<rt>はな</rt></ruby>して!」と<ruby>言<rt>い</rt></ruby>ったら<ruby>離<rt>はな</rt></ruby>す。<br>*(Anh hô "đạp!" thì đạp, "nhả!" thì nhả.)* |
| Phong | はい、「<ruby>踏<rt>ふ</rt></ruby>んで」「<ruby>離<rt>はな</rt></ruby>して」、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, "đạp" và "nhả", em rõ.)* |

---

## Tình huống 11 — Pit 1 · 14:30, test drive ngắn trong sân

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>作業<rt>さぎょう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったから、テスト<ruby>走行<rt>そうこう</rt></ruby>するよ。フォンも<ruby>助手席<rt>じょしゅせき</rt></ruby>で<ruby>聞<rt>き</rt></ruby>いて。<br>*(Xong rồi, anh chạy thử. Phong ngồi ghế phụ nghe nhé.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。シートベルトしました。<br>*(Vâng. Em đã thắt dây an toàn.)* |
| Yamada | (chạy chậm) <ruby>音<rt>おと</rt></ruby>はどう?<br>*(Tiếng thế nào?)* |
| Phong | <ruby>音<rt>おと</rt></ruby>はありません。<br>*(Không có tiếng.)* |
| Yamada | (đạp phanh) ペダルの<ruby>感触<rt>かんしょく</rt></ruby>はしっかりしている。OK。<br>*(Cảm giác pedal chắc rồi. OK.)* |
| Phong | せんぱい、ブレーキの<ruby>感触<rt>かんしょく</rt></ruby>はどう<ruby>判断<rt>はんだん</rt></ruby>しますか?<br>*(Sempai, cảm giác phanh đánh giá thế nào ạ?)* |
| Yamada | <ruby>踏<rt>ふ</rt></ruby>むときに<ruby>深<rt>ふか</rt></ruby>すぎず、すぐ<ruby>効<rt>き</rt></ruby>く<ruby>感<rt>かん</rt></ruby>じ。<ruby>慣<rt>な</rt></ruby>れたら<ruby>分<rt>わ</rt></ruby>かるよ。<br>*(Đạp không quá sâu, ăn ngay. Quen rồi sẽ hiểu.)* |
| Phong | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Vâng, em sẽ luyện hàng ngày.)* |

---

## Tình huống 12 — Quầy tiếp khách · 15:10, giao xe & dặn khách

| Vai | Lời thoại |
|---|---|
| Hiroshi | <ruby>田中<rt>たなか</rt></ruby>さま、<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<br>*(Anh Tanaka, đã xong việc.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>4輪<rt>よんりん</rt></ruby>のパッド<ruby>交換<rt>こうかん</rt></ruby>、ディスク<ruby>研磨<rt>けんま</rt></ruby>、フルード<ruby>交換<rt>こうかん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>いました。<br>*(Hôm nay đã thay pát 4 bánh, mài đĩa, thay dầu.)* |
| Khách | お、ベトナムの<ruby>子<rt>こ</rt></ruby>がしっかり<ruby>説明<rt>せつめい</rt></ruby>してくれるね。<br>*(Ồ, em Việt Nam giải thích chắc chắn nhỉ.)* |
| Phong | ありがとうございます。<ruby>初<rt>はじ</rt></ruby>めの<ruby>200<rt>にひゃく</rt></ruby>キロは<ruby>強<rt>つよ</rt></ruby>く<ruby>踏<rt>ふ</rt></ruby>まないでください。「<ruby>慣<rt>な</rt></ruby>らし」が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Em cảm ơn. 200 km đầu xin anh đừng đạp mạnh. Cần "rà phanh".)* |
| Khách | ならし、ね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Rà phanh nhỉ. Tôi hiểu.)* |
| Phong | <ruby>音<rt>おと</rt></ruby>がしたら、すぐお<ruby>電話<rt>でんわ</rt></ruby>ください。<br>*(Nếu có tiếng kêu, xin gọi điện ngay.)* |
| Khách | はい、ありがとう。<br>*(Vâng, cảm ơn em.)* |
| Hiroshi | フォンくん、よく<ruby>説明<rt>せつめい</rt></ruby>できたね。<br>*(Phong, giải thích tốt lắm.)* |
| Phong | <ruby>練習<rt>れんしゅう</rt></ruby>したフレーズを<ruby>使<rt>つか</rt></ruby>いました。<br>*(Em dùng câu đã luyện ạ.)* |

---

## Tình huống 13 — Cuối ca · 17:50, Yamada khen & dặn ôn N4

| Vai | Lời thoại |
|---|---|
| Yamada | フォンくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>によくやった。<br>*(Phong, hôm nay làm thực sự tốt.)* |
| Phong | ありがとうございます。<ruby>整備士長<rt>せいびしちょう</rt></ruby>のおかげです。<br>*(Em cảm ơn. Nhờ trưởng kỹ thuật ạ.)* |
| Yamada | <ruby>来月<rt>らいげつ</rt></ruby>はN<ruby>4<rt>よん</rt></ruby><ruby>試験<rt>しけん</rt></ruby>だろう?<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Tháng sau thi N4 đúng không? Chuẩn bị ổn chưa?)* |
| Phong | <ruby>文法<rt>ぶんぽう</rt></ruby>がまだ<ruby>不安<rt>ふあん</rt></ruby>です。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しています。<br>*(Ngữ pháp em vẫn lo. Nghe thì em luyện hàng ngày.)* |
| Yamada | <ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>いから、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Từ trong công việc thì em mạnh, không sao đâu. Cố lên.)* |
| Phong | はい、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Vâng, em nhất định đỗ.)* |

---

## Tình huống 14 — Ký túc · 22:00, gọi cho em gái ở Hải Phòng

> Cảnh tiếng Việt — Phong gọi cho em gái (học lớp 11, mơ học cơ khí).

| Vai | Lời thoại |
|---|---|
| Em gái | Anh ơi, hôm nay làm gì ở garage thế? |
| Phong | Hôm nay anh thay pát phanh — "burēki paddo" ấy. Đo bằng thước cặp ra 3.2 mm, giới hạn là 2 mm nên phải thay. |
| Em gái | Sao biết phải thay? |
| Phong | Sempai dạy: pát mới dày 10 mm, giảm dần. Dưới 2 mm là phải thay, không thì cọ vào đĩa làm hỏng cả đĩa. |
| Em gái | Còn dầu phanh? |
| Phong | Dầu mà nâu đậm là hỏng. Anh quan sát màu, rồi báo khách. Khách chịu thay luôn. Hôm nay anh được khen đấy. |
| Em gái | Tuyệt vời! Anh nói tiếng Nhật với khách trực tiếp à? |
| Phong | Ừ, anh giải thích "pát phanh phải 3.2 mm, trái 3.0 mm…" toàn bằng tiếng Nhật. Câu nào không biết thì anh ghi sổ, tối về tra. |
| Em gái | Em cũng muốn học cơ khí giống anh. |
| Phong | Cố học cấp 3 đã. Anh đỗ N4 xong sẽ về thăm. Tháng 12 thi rồi. |
| Em gái | Em chúc anh đỗ! |

---

## Đọng lại chương

Các mẫu câu cốt lõi của ngày sửa phanh:

- **「ブレーキを<ruby>踏<rt>ふ</rt></ruby>むと<ruby>音<rt>おと</rt></ruby>がします」** — Đạp phanh là có tiếng (mô tả triệu chứng)
- **「パッドの<ruby>厚<rt>あつ</rt></ruby>さは<ruby>3.2<rt>さんてんに</rt></ruby>ミリです」** — Độ dày pát là 3.2 mm (báo số đo)
- **「<ruby>限界<rt>げんかい</rt></ruby>は<ruby>2<rt>に</rt></ruby>ミリです」** — Giới hạn 2 mm (đối chiếu chuẩn)
- **「<ruby>交換<rt>こうかん</rt></ruby>をおすすめします」** — Em đề nghị thay (tư vấn khách)
- **「<ruby>初<rt>はじ</rt></ruby>めの<ruby>200<rt>にひゃく</rt></ruby>キロは<ruby>強<rt>つよ</rt></ruby>く<ruby>踏<rt>ふ</rt></ruby>まないでください」** — 200 km đầu xin đừng đạp mạnh (dặn khách rà phanh)
- **「<ruby>合図<rt>あいず</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください」** — Anh chỉ em hiệu lệnh (xin hiệu lệnh)

> Từ vựng & mẫu câu chương này: ブレーキ・パッド・シュー・ディスク・キャリパー・ピストン・ノギス・マイクロメーター・<ruby>厚<rt>あつ</rt></ruby>さ・<ruby>限界<rt>げんかい</rt></ruby>・<ruby>研磨<rt>けんま</rt></ruby>・フルード・<ruby>劣化<rt>れっか</rt></ruby>・エア<ruby>抜<rt>ぬ</rt></ruby>き・<ruby>合図<rt>あいず</rt></ruby>・<ruby>慣<rt>な</rt></ruby>らし...

---

## Bí quyết chương

- Tiếng phanh **"kī kī"** trong ngày mưa thường = đĩa gỉ + pát mòn — kiểm tra cả hai.
- **Đo trước, kết luận sau** — luôn dùng ノギス/マイクロメーター đọc số mm, không đoán bằng mắt.
- ディスク=パッド, ドラム=シュー — **2 từ KHÔNG được nhầm** khi báo cáo.
- Sau khi thay フルード **phải エア抜き** — bỏ qua làm phanh "mềm", cực nguy hiểm.
- Dặn khách **"ならし 200 km"** — pát mới chưa "ăn" với đĩa, đạp mạnh dễ chai mặt pát.
- Báo giá luôn kèm **3 hạng mục: パッド+ディスク+フルード** — khách hiểu rõ, ít khiếu nại.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| ブレーキ | — | — | phanh |
| 踏む | ふむ | ĐẠP | đạp, dẫm |
| 音 | おと | ÂM | âm thanh, tiếng |
| 点検 | てんけん | ĐIỂM KIỂM | kiểm tra |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 薄い | うすい | BẠC | mỏng |
| ディスク | — | — | đĩa phanh |
| 傷 | きず | THƯƠNG | vết xước |
| 錆 | さび | TÚ | gỉ sét |
| キャリパー | — | — | caliper, cụm phanh |
| パッド | — | — | pát phanh |
| ピストン | — | — | piston |
| スパナ | — | — | cờ-lê |
| ノギス | — | — | thước cặp |
| 厚さ | あつさ | HẬU | độ dày |
| 測る | はかる | TRẮC | đo |
| 新品 | しんぴん | TÂN PHẨM | hàng mới |
| 限界 | げんかい | HẠN GIỚI | giới hạn |
| 交換 | こうかん | GIAO HOÁN | thay đổi |
| 記録 | きろく | KÝ LỤC | ghi chép |
| マイクロメーター | — | — | panme |
| 規定値 | きていち | QUY ĐỊNH TRỊ | trị số quy chuẩn |
| 研磨 | けんま | NGHIÊN MA | mài, đánh bóng |
| 削る | けずる | TƯỚC | bào, gọt |
| ボンネット | — | — | capo |
| リザーバータンク | — | — | bình chứa |
| フルード | — | — | dầu (phanh) |
| 透明 | とうめい | THẤU MINH | trong suốt |
| 劣化 | れっか | LIỆT HOÁ | xuống cấp |
| 水分 | すいぶん | THUỶ PHẦN | nước, độ ẩm |
| 沸点 | ふってん | PHÍ ĐIỂM | điểm sôi |
| 効く | きく | HIỆU | có tác dụng, ăn |
| 目安 | めやす | MỤC ÁN | mức chuẩn, định mức |
| 見積書 | みつもりしょ | KIẾN TÍCH THƯ | bảng báo giá |
| グリス | — | — | mỡ bôi trơn |
| 米粒 | こめつぶ | MỄ LẠP | hạt gạo |
| シュー | — | — | guốc phanh |
| ドラム | — | — | tang phanh (đùm) |
| エア抜き | エアぬき | BẠT | xả gió, xả khí |
| 柔らかい | やわらかい | NHU | mềm |
| 合図 | あいず | HỢP ĐỒ | hiệu lệnh, ám hiệu |
| 感触 | かんしょく | CẢM XÚC | cảm giác (chạm) |
| 慣らし | ならし | QUÁN | rà, chạy rốt-đa |
| 合格 | ごうかく | HỢP CÁCH | đỗ, thi đậu |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000007, 800000043, NULL, 'markdown_book', 'T7. Kiểm tra động cơ lần đầu với sempai Carlos (エンジン点検)', '# Sách thực tập sinh ô tô · T7. Kiểm tra động cơ lần đầu với sempai Carlos (エンジン点検)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) làm thực tập sinh ngành sửa chữa ô tô tại garage Toyota Anjo. Học các mẫu hội thoại tiếng Nhật quanh kiểm tra động cơ: gọi tên các cụm trong khoang máy, hỏi/nghe quy trình từ sempai, đọc đồng hồ áp suất, kiểm tra dây curoa, bugi, nước làm mát, ắc-quy, báo cáo kết quả 12 mục.

---

## Bối cảnh

Cuối tháng 11 năm 2025. Mùa lá đỏ đã hết, sáng Aichi xuống 5°C. Phong đã làm tốt phần lốp & phanh, nay được sempai Carlos (Brazil, 28 tuổi, làm garage 5 năm) dẫn vào điểm kiểm tra động cơ — một xe Corolla 8 năm tuổi của khách quen Watanabe-san. Trình độ JP: cuối N5, chuẩn bị thi N4 tháng 12. Chương này tập trung từ vựng khoang máy + quy trình 点検 chuẩn 12 hạng mục Toyota.

---

## Tình huống 1 — Pit 3 · 8:30, briefing kế hoạch ngày

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、おはよう!<ruby>今日<rt>きょう</rt></ruby>はエンジン<ruby>点検<rt>てんけん</rt></ruby>。<ruby>準備<rt>じゅんび</rt></ruby>はいい?<br>*(Phong, chào! Hôm nay kiểm tra động cơ. Sẵn sàng chưa?)* |
| Phong | カルロスさん、おはようございます!ノートとボールペン、<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Anh Carlos, chào buổi sáng! Em đã mang sổ và bút bi.)* |
| Carlos | いいね。<ruby>今日<rt>きょう</rt></ruby>はトヨタの<ruby>点検<rt>てんけん</rt></ruby>シート<ruby>12<rt>じゅうに</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>を<ruby>1<rt>いち</rt></ruby>つずつ<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Tốt. Hôm nay anh dạy 12 hạng mục trên phiếu kiểm tra Toyota.)* |
| Phong | <ruby>12<rt>じゅうに</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>、たくさんですね…<ruby>覚<rt>おぼ</rt></ruby>えられるかな。<br>*(12 hạng mục, nhiều quá… không biết em có nhớ nổi không.)* |
| Carlos | ゆっくりやろう。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いて。<br>*(Cứ từ từ. Gì không hiểu cứ hỏi.)* |
| Phong | はい!お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng! Nhờ anh ạ.)* |

---

## Tình huống 2 — Pit 3 · 8:50, mở capo & overview khoang máy

*Watanabe-san đã giao xe Corolla. Carlos mở capo, Phong nhìn vào.*

| Vai | Lời thoại |
|---|---|
| Carlos | ボンネットを<ruby>開<rt>あ</rt></ruby>けたよ。<ruby>中<rt>なか</rt></ruby>、<ruby>何<rt>なに</rt></ruby>が<ruby>見<rt>み</rt></ruby>える?<br>*(Anh mở capo rồi. Trong này em thấy gì?)* |
| Phong | エンジン、バッテリー、ホース、ベルト…たくさんあります。<br>*(Máy, ắc-quy, ống, dây cu-roa… nhiều lắm.)* |
| Carlos | じゃ、<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>を<ruby>言<rt>い</rt></ruby>うよ。これは<ruby>何<rt>なに</rt></ruby>?<br>*(Anh đọc tên theo thứ tự. Cái này là gì?)* |
| Phong | バッテリーです。<br>*(Ắc-quy ạ.)* |
| Carlos | これは?<br>*(Cái này?)* |
| Phong | えーと…エアクリーナー?<br>*(Ơ… lọc gió?)* |
| Carlos | <ruby>正解<rt>せいかい</rt></ruby>!エアクリーナーボックスね。<ruby>中<rt>なか</rt></ruby>にエアフィルターが<ruby>入<rt>はい</rt></ruby>っている。<br>*(Đúng! Hộp lọc gió. Bên trong là tấm lọc gió.)* |
| Phong | フィルターとクリーナー、<ruby>違<rt>ちが</rt></ruby>うんですか?<br>*(Filter với cleaner khác nhau ạ?)* |
| Carlos | クリーナー=ボックス<ruby>全体<rt>ぜんたい</rt></ruby>、フィルター=<ruby>中身<rt>なかみ</rt></ruby>のろ<ruby>過紙<rt>かし</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えて。<br>*(Cleaner là cả hộp, filter là tấm giấy lọc bên trong. Nhớ nhé.)* |

---

## Tình huống 3 — Pit 3 · 9:10, hạng mục 1 — đo dầu máy bằng que thăm

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>第一<rt>だいいち</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>:エンジンオイルの<ruby>量<rt>りょう</rt></ruby>と<ruby>色<rt>いろ</rt></ruby>。レベルゲージはどこ?<br>*(Mục 1: lượng và màu dầu máy. Que thăm ở đâu?)* |
| Phong | この<ruby>黄色<rt>きいろ</rt></ruby>いハンドルですね。<br>*(Cái cần màu vàng này ạ.)* |
| Carlos | そう。<ruby>抜<rt>ぬ</rt></ruby>いて、<ruby>1回<rt>いっかい</rt></ruby>ペーパーで<ruby>拭<rt>ふ</rt></ruby>いて、もう<ruby>一度<rt>いちど</rt></ruby><ruby>入<rt>い</rt></ruby>れて。<br>*(Đúng. Rút ra, lau bằng giấy, cắm lại lần nữa.)* |
| Phong | (làm) <ruby>抜<rt>ぬ</rt></ruby>きました。レベルは…MAXとMINの<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>です。<br>*(Rút rồi. Mức… ở giữa MAX và MIN.)* |
| Carlos | OK、<ruby>適正<rt>てきせい</rt></ruby>。<ruby>色<rt>いろ</rt></ruby>は?<br>*(OK, đúng chuẩn. Màu thì sao?)* |
| Phong | <ruby>黒<rt>くろ</rt></ruby>っぽいです。<br>*(Hơi đen.)* |
| Carlos | <ruby>新<rt>あたら</rt></ruby>しいオイルは<ruby>琥珀<rt>こはく</rt></ruby><ruby>色<rt>いろ</rt></ruby>。<ruby>黒<rt>くろ</rt></ruby>くなったら<ruby>交換<rt>こうかん</rt></ruby><ruby>時期<rt>じき</rt></ruby>。<ruby>記録<rt>きろく</rt></ruby>シートに「<ruby>色<rt>いろ</rt></ruby>:<ruby>黒<rt>くろ</rt></ruby>っぽい、<ruby>要<rt>よう</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いて。<br>*(Mới thì màu hổ phách. Đen rồi là đến lúc thay. Ghi vào phiếu: "Màu: hơi đen, cần thay".)* |
| Phong | はい、<ruby>書<rt>か</rt></ruby>きました。<br>*(Vâng, em ghi rồi.)* |

---

## Tình huống 4 — Pit 3 · 9:30, hạng mục 2 — nước làm mát LLC

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>次<rt>つぎ</rt></ruby>はクーラント、<ruby>冷却水<rt>れいきゃくすい</rt></ruby>。リザーバータンクを<ruby>見<rt>み</rt></ruby>て。<br>*(Tiếp theo là nước làm mát. Nhìn bình chứa.)* |
| Phong | <ruby>緑色<rt>みどりいろ</rt></ruby>の<ruby>液体<rt>えきたい</rt></ruby>です。<ruby>量<rt>りょう</rt></ruby>はMAXとMINの<ruby>間<rt>あいだ</rt></ruby>。<br>*(Chất lỏng màu xanh lá. Lượng giữa MAX và MIN.)* |
| Carlos | <ruby>色<rt>いろ</rt></ruby>はキレイ?<br>*(Màu có sạch không?)* |
| Phong | <ruby>透明<rt>とうめい</rt></ruby>な<ruby>緑<rt>みどり</rt></ruby>です。<ruby>濁<rt>にご</rt></ruby>っていません。<br>*(Xanh trong. Không vẩn đục.)* |
| Carlos | グッド!<ruby>濁<rt>にご</rt></ruby>ったり、<ruby>茶色<rt>ちゃいろ</rt></ruby>になったら<ruby>交換<rt>こうかん</rt></ruby>。<br>*(Tốt! Đục hoặc nâu thì phải thay.)* |
| Phong | カルロスさん、エンジンが<ruby>熱<rt>あつ</rt></ruby>いときに<ruby>蓋<rt>ふた</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けてもいいですか?<br>*(Anh Carlos, máy nóng có mở nắp được không ạ?)* |
| Carlos | ダメ!<ruby>絶対<rt>ぜったい</rt></ruby><ruby>開<rt>あ</rt></ruby>けないで。<ruby>高温<rt>こうおん</rt></ruby>の<ruby>蒸気<rt>じょうき</rt></ruby>が<ruby>噴<rt>ふ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>す。やけどするよ。<br>*(Không! Tuyệt đối đừng mở. Hơi nóng phọt ra. Sẽ bị bỏng.)* |
| Phong | はい、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>開<rt>あ</rt></ruby>けません。<ruby>冷<rt>さ</rt></ruby>めるまで<ruby>待<rt>ま</rt></ruby>ちます。<br>*(Vâng, em sẽ tuyệt đối không mở. Đợi nguội ạ.)* |

---

## Tình huống 5 — Pit 3 · 9:50, hạng mục 3 — dây curoa (Vベルト)

| Vai | Lời thoại |
|---|---|
| Carlos | これがVベルト、フォンベルトとも<ruby>言<rt>い</rt></ruby>う。<br>*(Đây là dây cu-roa V, còn gọi là dây quạt.)* |
| Phong | <ruby>触<rt>さわ</rt></ruby>ってもいいですか?<br>*(Em sờ được không ạ?)* |
| Carlos | エンジン<ruby>止<rt>と</rt></ruby>まっているからOK。<ruby>指<rt>ゆび</rt></ruby>で<ruby>押<rt>お</rt></ruby>してみて。<br>*(Máy đang tắt nên OK. Lấy ngón tay ấn thử.)* |
| Phong | (ấn) <ruby>少<rt>すこ</rt></ruby>し<ruby>沈<rt>しず</rt></ruby>みます。<br>*(Hơi lõm xuống.)* |
| Carlos | どれぐらい?<br>*(Bao nhiêu?)* |
| Phong | えーと、<ruby>1<rt>いち</rt></ruby>センチぐらいですか…?<br>*(Khoảng 1 cm…?)* |
| Carlos | <ruby>適正<rt>てきせい</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby>ミリから<ruby>15<rt>じゅうご</rt></ruby>ミリ。<ruby>1<rt>いっ</rt></ruby>センチならOK。ヒビは?<br>*(Chuẩn là 10-15 mm. 1 cm là OK. Có vết nứt không?)* |
| Phong | <ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます…<ruby>細<rt>こま</rt></ruby>かい<ruby>線<rt>せん</rt></ruby>があります。<br>*(Em xem bề mặt… có những đường mảnh.)* |
| Carlos | それはヒビ、クラックね。<ruby>軽<rt>かる</rt></ruby>いから、<ruby>次回<rt>じかい</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>で<ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(Đó là nứt, "crack". Nhẹ thôi, lần kiểm tra sau khuyến cáo thay.)* |
| Phong | <ruby>記録<rt>きろく</rt></ruby>に「ヒビ<ruby>軽<rt>かる</rt></ruby>、<ruby>次回<rt>じかい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>」、<ruby>書<rt>か</rt></ruby>きました。<br>*(Em đã ghi "nứt nhẹ, lần sau khuyến cáo thay".)* |

---

## Tình huống 6 — Pit 3 · 10:20, hạng mục 4 — kiểm tra bugi (スパークプラグ)

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>次<rt>つぎ</rt></ruby>はスパークプラグ。<ruby>4気筒<rt>よんきとう</rt></ruby>エンジンだから<ruby>4本<rt>よんほん</rt></ruby>ある。<br>*(Tiếp là bugi. Máy 4 xy-lanh nên có 4 cây.)* |
| Phong | <ruby>4気筒<rt>よんきとう</rt></ruby>=<ruby>4<rt>よん</rt></ruby>シリンダー、ですよね?<br>*(4 khí đồng = 4 xy-lanh, đúng không ạ?)* |
| Carlos | そう、シリンダーの<ruby>日本語<rt>にほんご</rt></ruby>が「<ruby>気筒<rt>きとう</rt></ruby>」。<br>*(Đúng, "xy-lanh" tiếng Nhật là "kitou".)* |
| Phong | きとう、<ruby>気<rt>き</rt></ruby>に「<ruby>筒<rt>つつ</rt></ruby>」、<ruby>覚<rt>おぼ</rt></ruby>えやすいです。<br>*(Kitou, "khí" với "ống", dễ nhớ.)* |
| Carlos | プラグレンチで<ruby>1本<rt>いっぽん</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>いてみよう。<br>*(Lấy cờ-lê bugi rút thử một cây.)* |
| Phong | (rút) <ruby>取<rt>と</rt></ruby>れました。<ruby>先<rt>さき</rt></ruby>が<ruby>黒<rt>くろ</rt></ruby>くなっています。<br>*(Rút rồi. Đầu bị đen.)* |
| Carlos | カーボンが<ruby>付<rt>つ</rt></ruby>いている。<ruby>軽<rt>かる</rt></ruby>い<ruby>不完全<rt>ふかんぜん</rt></ruby><ruby>燃焼<rt>ねんしょう</rt></ruby>のサイン。<ruby>交換<rt>こうかん</rt></ruby><ruby>時期<rt>じき</rt></ruby>かも。<br>*(Bám muội than. Dấu hiệu đốt không hết. Có lẽ đến lúc thay.)* |
| Phong | <ruby>不完全<rt>ふかんぜん</rt></ruby><ruby>燃焼<rt>ねんしょう</rt></ruby>…ノートに<ruby>書<rt>か</rt></ruby>きます。<br>*(Cháy không hoàn toàn… em ghi sổ.)* |
| Carlos | プラグは<ruby>2万<rt>にまん</rt></ruby>キロぐらいで<ruby>交換<rt>こうかん</rt></ruby>。<br>*(Bugi tầm 20.000 km thì thay.)* |

---

## Tình huống 7 — Pit 3 · 10:50, hạng mục 5 — ắc-quy (バッテリー)

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>次<rt>つぎ</rt></ruby>はバッテリー。テスターで<ruby>電圧<rt>でんあつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る。<br>*(Tiếp là ắc-quy. Đo điện áp bằng máy đo.)* |
| Phong | <ruby>赤<rt>あか</rt></ruby>がプラス、<ruby>黒<rt>くろ</rt></ruby>がマイナスですよね。<br>*(Đỏ là dương, đen là âm, đúng không ạ?)* |
| Carlos | <ruby>正解<rt>せいかい</rt></ruby>!<ruby>逆<rt>ぎゃく</rt></ruby>につなぐとショートするから<ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(Đúng! Đấu ngược sẽ chập, chú ý nhé.)* |
| Phong | (đo) <ruby>12.4<rt>じゅうにてんよん</rt></ruby>ボルトです。<br>*(12.4 V ạ.)* |
| Carlos | エンジン<ruby>停止<rt>ていし</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>正常<rt>せいじょう</rt></ruby><ruby>値<rt>ち</rt></ruby>は<ruby>12.5<rt>じゅうにてんご</rt></ruby>から<ruby>12.8<rt>じゅうにてんはち</rt></ruby>ボルト。<ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>めだね。<br>*(Khi tắt máy, chuẩn là 12.5-12.8 V. Hơi thấp đấy.)* |
| Phong | <ruby>冬<rt>ふゆ</rt></ruby>はバッテリーが<ruby>弱<rt>よわ</rt></ruby>くなりますか?<br>*(Mùa đông ắc-quy yếu hơn ạ?)* |
| Carlos | グッドクエスチョン!<ruby>寒<rt>さむ</rt></ruby>いと<ruby>電圧<rt>でんあつ</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がる。<ruby>来月<rt>らいげつ</rt></ruby>もっと<ruby>下<rt>さ</rt></ruby>がるかも。<br>*(Câu hỏi hay! Lạnh thì điện áp giảm. Tháng sau có thể giảm nữa.)* |
| Phong | <ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>と<ruby>書<rt>か</rt></ruby>きますか?<br>*(Có nên ghi khuyến cáo thay không?)* |
| Carlos | 「<ruby>要<rt>よう</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>、<ruby>冬<rt>ふゆ</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby><ruby>検討<rt>けんとう</rt></ruby>」がいい。<br>*(Ghi "cần chú ý, cân nhắc thay trước đông" là vừa.)* |

---

## Tình huống 8 — Pit 3 · 11:20, hạng mục 6 — đo áp suất bằng đồng hồ

| Vai | Lời thoại |
|---|---|
| Carlos | エンジン<ruby>圧縮<rt>あっしゅく</rt></ruby><ruby>圧力<rt>あつりょく</rt></ruby>テスト、コンプレッションテスト。<br>*(Test áp suất nén máy — compression test.)* |
| Phong | コンプレッション…<ruby>聞<rt>き</rt></ruby>いたことがあります。<br>*(Compression… em có nghe rồi.)* |
| Carlos | プラグを<ruby>抜<rt>ぬ</rt></ruby>いて、ゲージを<ruby>差<rt>さ</rt></ruby>し<ruby>込<rt>こ</rt></ruby>む。エンジンをクランキング。<ruby>数値<rt>すうち</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む。<br>*(Rút bugi, lắp đồng hồ vào. Đề máy. Đọc số.)* |
| Phong | キーを<ruby>回<rt>まわ</rt></ruby>してもいいですか?<br>*(Em vặn chìa được không ạ?)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>がやる。フォンはゲージを<ruby>見<rt>み</rt></ruby>て、<ruby>数字<rt>すうじ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んで。<br>*(Anh làm. Phong nhìn đồng hồ, đọc số.)* |
| Carlos | (đề máy) <ruby>何<rt>なん</rt></ruby>キロパスカル?<br>*(Bao nhiêu kPa?)* |
| Phong | えーと、<ruby>1200<rt>せんにひゃく</rt></ruby>キロパスカルです。<br>*(Ơ, 1200 kPa.)* |
| Carlos | <ruby>正常<rt>せいじょう</rt></ruby>!<ruby>規定<rt>きてい</rt></ruby>は<ruby>1100<rt>せんひゃく</rt></ruby>から<ruby>1400<rt>せんよんひゃく</rt></ruby>キロパスカル。<br>*(Bình thường! Chuẩn 1100-1400 kPa.)* |
| Phong | <ruby>低<rt>ひく</rt></ruby>すぎるとどうなりますか?<br>*(Thấp quá thì sao ạ?)* |
| Carlos | <ruby>圧縮<rt>あっしゅく</rt></ruby><ruby>漏<rt>も</rt></ruby>れ、エンジンが<ruby>弱<rt>よわ</rt></ruby>っている<ruby>意味<rt>いみ</rt></ruby>。オーバーホールが<ruby>必要<rt>ひつよう</rt></ruby>かも。<br>*(Rò áp, nghĩa là máy yếu. Có khi cần đại tu.)* |

---

## Tình huống 9 — Pit 3 · 12:00, nghỉ trưa, Carlos kể chuyện Brazil

*Trong giờ ăn cơm hộp, Carlos kể chuyện riêng.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>疲<rt>つか</rt></ruby>れた?<br>*(Phong, mệt không?)* |
| Phong | <ruby>頭<rt>あたま</rt></ruby>はいっぱいですが、<ruby>楽<rt>たの</rt></ruby>しいです。カルロスさんは<ruby>日本<rt>にほん</rt></ruby><ruby>何年<rt>なんねん</rt></ruby><ruby>目<rt>め</rt></ruby>ですか?<br>*(Đầu căng nhưng vui ạ. Anh Carlos sang Nhật bao năm rồi?)* |
| Carlos | <ruby>9年<rt>きゅうねん</rt></ruby><ruby>目<rt>め</rt></ruby>。<ruby>19歳<rt>じゅうきゅうさい</rt></ruby>で<ruby>来<rt>き</rt></ruby>た。<br>*(Năm thứ 9 rồi. Anh sang từ 19 tuổi.)* |
| Phong | すごい!<ruby>日本語<rt>にほんご</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しかったですか?<br>*(Tuyệt! Tiếng Nhật khó không ạ?)* |
| Carlos | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しかった。<ruby>1年<rt>いちねん</rt></ruby>はずっと<ruby>分<rt>わ</rt></ruby>からなかった。<br>*(Hồi đầu thực sự khó. Cả năm đầu chẳng hiểu gì.)* |
| Phong | どうやって<ruby>覚<rt>おぼ</rt></ruby>えましたか?<br>*(Anh nhớ được bằng cách nào?)* |
| Carlos | <ruby>仕事<rt>しごと</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>から。<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>うから<ruby>覚<rt>おぼ</rt></ruby>える。フォンも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Từ từ trong công việc. Hằng ngày dùng thì nhớ. Phong cũng được mà.)* |
| Phong | カルロスさん、<ruby>家族<rt>かぞく</rt></ruby>はブラジル?<br>*(Gia đình anh ở Brazil ạ?)* |
| Carlos | <ruby>奥<rt>おく</rt></ruby>さんと<ruby>子供<rt>こども</rt></ruby><ruby>2人<rt>ふたり</rt></ruby>、<ruby>今<rt>いま</rt></ruby>は<ruby>名古屋<rt>なごや</rt></ruby>に<ruby>住<rt>す</rt></ruby>んでいる。<ruby>子供<rt>こども</rt></ruby>は<ruby>日本<rt>にほん</rt></ruby><ruby>生<rt>う</rt></ruby>まれだよ。<br>*(Vợ và 2 con đang sống ở Nagoya. Con anh sinh ở Nhật đấy.)* |
| Phong | わあ、いいですね。いつか<ruby>遊<rt>あそ</rt></ruby>びに<ruby>行<rt>い</rt></ruby>っていいですか?<br>*(Wow, tuyệt nhỉ. Khi nào em được sang chơi không ạ?)* |
| Carlos | もちろん!<ruby>奥<rt>おく</rt></ruby>さんがベトナム<ruby>料理<rt>りょうり</rt></ruby><ruby>食<rt>た</rt></ruby>べたいと<ruby>言<rt>い</rt></ruby>っていた。<br>*(Tất nhiên! Vợ anh bảo muốn ăn món Việt đấy.)* |

---

## Tình huống 10 — Pit 3 · 13:15, hạng mục 7 — kiểm tra hose & rò rỉ

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>午後<rt>ごご</rt></ruby>はホース<ruby>類<rt>るい</rt></ruby>と<ruby>漏<rt>も</rt></ruby>れ<ruby>点検<rt>てんけん</rt></ruby>。<br>*(Chiều kiểm tra các ống và rò rỉ.)* |
| Phong | <ruby>漏<rt>も</rt></ruby>れ、どうやって<ruby>見<rt>み</rt></ruby>つけますか?<br>*(Rò rỉ làm sao tìm được ạ?)* |
| Carlos | <ruby>目<rt>め</rt></ruby>で<ruby>見<rt>み</rt></ruby>る、<ruby>指<rt>ゆび</rt></ruby>で<ruby>触<rt>さわ</rt></ruby>る、<ruby>鼻<rt>はな</rt></ruby>で<ruby>嗅<rt>か</rt></ruby>ぐ。<br>*(Nhìn, sờ, ngửi.)* |
| Phong | <ruby>鼻<rt>はな</rt></ruby>でも?<br>*(Ngửi nữa ạ?)* |
| Carlos | オイル<ruby>漏<rt>も</rt></ruby>れは<ruby>匂<rt>にお</rt></ruby>いが<ruby>強<rt>つよ</rt></ruby>い。クーラントは<ruby>甘<rt>あま</rt></ruby>い<ruby>匂<rt>にお</rt></ruby>い。<br>*(Rò dầu mùi nồng. Rò nước làm mát mùi ngọt.)* |
| Phong | <ruby>甘<rt>あま</rt></ruby>い<ruby>匂<rt>にお</rt></ruby>い…<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Mùi ngọt… em ghi nhớ.)* |
| Carlos | この<ruby>下<rt>した</rt></ruby>、リフトアップして<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Nâng cầu lên xem dưới gầm.)* |
| Phong | リフト<ruby>上<rt>あ</rt></ruby>げます!<ruby>下<rt>した</rt></ruby><ruby>誰<rt>だれ</rt></ruby>もいません。<br>*(Em nâng cầu! Dưới không có ai.)* |
| Carlos | (chỉ) これを<ruby>見<rt>み</rt></ruby>て。エンジンの<ruby>下<rt>した</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>しオイル<ruby>汚<rt>よご</rt></ruby>れ。<br>*(Xem cái này. Dưới máy có dính chút dầu.)* |
| Phong | <ruby>漏<rt>も</rt></ruby>れていますか?<br>*(Đang rò ạ?)* |
| Carlos | <ruby>少量<rt>しょうりょう</rt></ruby>のにじみ。<ruby>急<rt>きゅう</rt></ruby>ぐ<ruby>必要<rt>ひつよう</rt></ruby>はないけど<ruby>記録<rt>きろく</rt></ruby>する。<br>*(Rỉ ít. Chưa cần gấp nhưng phải ghi lại.)* |

---

## Tình huống 11 — Pit 3 · 14:30, hạng mục 8-12 báo cáo nhanh

*Carlos cùng Phong tốc độ điểm qua các hạng mục còn lại.*

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>残<rt>のこ</rt></ruby>り<ruby>5<rt>ご</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>は<ruby>一緒<rt>いっしょ</rt></ruby>に。エアフィルター。<br>*(5 mục còn lại làm cùng. Lọc gió.)* |
| Phong | <ruby>埃<rt>ほこり</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いです。<ruby>叩<rt>たた</rt></ruby>いてもキレイになりません。<ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(Nhiều bụi. Gõ cũng không sạch. Khuyến cáo thay.)* |
| Carlos | エアコンフィルター。<br>*(Lọc điều hoà.)* |
| Phong | これは<ruby>運転席<rt>うんてんせき</rt></ruby>の<ruby>下<rt>した</rt></ruby>ですよね?<br>*(Cái này dưới ghế lái nhỉ?)* |
| Carlos | <ruby>正解<rt>せいかい</rt></ruby>。グローブボックスの<ruby>奥<rt>おく</rt></ruby>。<br>*(Đúng. Phía trong hộc găng tay.)* |
| Phong | (kiểm tra) <ruby>軽<rt>かる</rt></ruby>く<ruby>汚<rt>よご</rt></ruby>れ。OKです。<br>*(Hơi bẩn. OK ạ.)* |
| Carlos | ワイパーゴム。<br>*(Cao su gạt mưa.)* |
| Phong | <ruby>右<rt>みぎ</rt></ruby>はOK、<ruby>左<rt>ひだり</rt></ruby>は<ruby>切<rt>き</rt></ruby>れています。<ruby>交換<rt>こうかん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Phải OK, trái rách. Cần thay.)* |
| Carlos | タイヤ<ruby>空気<rt>くうき</rt></ruby><ruby>圧<rt>あつ</rt></ruby>。<br>*(Áp lốp.)* |
| Phong | <ruby>4本<rt>よんほん</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>規定<rt>きてい</rt></ruby>の<ruby>240<rt>にひゃくよんじゅう</rt></ruby>kPa。OKです。<br>*(Cả 4 bánh đều 240 kPa chuẩn. OK ạ.)* |
| Carlos | ライト<ruby>類<rt>るい</rt></ruby>。<br>*(Các loại đèn.)* |
| Phong | (bấm thử) ヘッドライト、ウィンカー、ブレーキランプ、<ruby>全部<rt>ぜんぶ</rt></ruby>OKです。<br>*(Đèn pha, xi-nhan, đèn phanh, tất cả OK.)* |
| Carlos | パーフェクト!<ruby>点検<rt>てんけん</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>。<br>*(Tuyệt! Xong kiểm tra.)* |

---

## Tình huống 12 — Quầy 受付 · 15:30, báo cáo khách bằng tiếng Nhật

*Watanabe-san đến lấy xe. Carlos để Phong tự báo cáo.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>説明<rt>せつめい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>い。<ruby>俺<rt>おれ</rt></ruby>は<ruby>横<rt>よこ</rt></ruby>にいるから。<br>*(Phong, em giải thích đi. Anh đứng cạnh.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |
| Phong | <ruby>渡辺<rt>わたなべ</rt></ruby>さま、<ruby>点検<rt>てんけん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Anh Watanabe, em xin báo cáo kết quả kiểm tra.)* |
| Khách | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ em.)* |
| Phong | <ruby>12<rt>じゅうに</rt></ruby><ruby>項目<rt>こうもく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>、<ruby>異常<rt>いじょう</rt></ruby>なしが<ruby>7<rt>なな</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>。<ruby>交換<rt>こうかん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>:エンジンオイルと<ruby>左<rt>ひだり</rt></ruby>ワイパー。<br>*(Trong 12 mục, 7 mục bình thường. 2 mục cần thay: dầu máy và gạt mưa trái.)* |
| Khách | <ruby>他<rt>ほか</rt></ruby>は?<br>*(Còn lại?)* |
| Phong | <ruby>注意<rt>ちゅうい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>:バッテリー<ruby>電圧<rt>でんあつ</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>め、Vベルトに<ruby>軽<rt>かる</rt></ruby>いヒビ、エアフィルター<ruby>汚<rt>よご</rt></ruby>れ。<ruby>冬<rt>ふゆ</rt></ruby><ruby>前<rt>まえ</rt></ruby>にバッテリーの<ruby>交換<rt>こうかん</rt></ruby>をおすすめします。<br>*(3 mục chú ý: ắc-quy hơi yếu, dây cu-roa V hơi nứt, lọc gió bẩn. Khuyến cáo thay ắc-quy trước đông.)* |
| Khách | しっかり<ruby>説明<rt>せつめい</rt></ruby>してくれてありがとう。ベトナム<ruby>人<rt>じん</rt></ruby>?<br>*(Em giải thích rõ ràng quá. Em Việt Nam à?)* |
| Phong | はい、ハイフォン<ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Vâng, em đến từ Hải Phòng.)* |
| Khách | <ruby>頑張<rt>がんば</rt></ruby>って。<ruby>今日<rt>きょう</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>とワイパーお<ruby>願<rt>ねが</rt></ruby>い、バッテリーは<ruby>来週<rt>らいしゅう</rt></ruby>。<br>*(Cố lên. Hôm nay nhờ thay dầu với gạt mưa, ắc-quy tuần sau.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ ạ. Em cảm ơn.)* |

---

## Tình huống 13 — Cuối ca · 18:00, Carlos đánh giá Phong

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby>さん<ruby>説明<rt>せつめい</rt></ruby>、よかった。<br>*(Phong, lúc nãy giải thích cho khách tốt lắm.)* |
| Phong | <ruby>緊張<rt>きんちょう</rt></ruby>しました…<br>*(Em hồi hộp quá…)* |
| Carlos | でも、<ruby>数字<rt>すうじ</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>読<rt>よ</rt></ruby>めた。プロだよ。<br>*(Nhưng em đọc số đúng. Chuyên nghiệp đấy.)* |
| Phong | カルロスさんが<ruby>横<rt>よこ</rt></ruby>にいてくれたから。<br>*(Nhờ có anh đứng cạnh ạ.)* |
| Carlos | <ruby>来月<rt>らいげつ</rt></ruby>N<ruby>4<rt>よん</rt></ruby><ruby>試験<rt>しけん</rt></ruby>、<ruby>応援<rt>おうえん</rt></ruby>している。<br>*(Tháng sau thi N4, anh ủng hộ.)* |
| Phong | ありがとうございます。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かりたいです。<br>*(Em cảm ơn. Em nhất định muốn đỗ.)* |
| Carlos | <ruby>合格<rt>ごうかく</rt></ruby>したらブラジル<ruby>料理<rt>りょうり</rt></ruby>を<ruby>奥<rt>おく</rt></ruby>さんに<ruby>作<rt>つく</rt></ruby>ってもらおう!<br>*(Đỗ thì để vợ anh nấu món Brazil!)* |
| Phong | やった!<br>*(Yay!)* |

---

## Tình huống 14 — Ký túc · 22:30, gọi cho mẹ ở Hải Phòng

> Cảnh tiếng Việt — Phong gọi cho mẹ.

| Vai | Lời thoại |
|---|---|
| Phong | Mẹ ơi, hôm nay con học kiểm tra động cơ. |
| Mẹ | Có khó không con? |
| Phong | Khó mà vui mẹ. Sempai Carlos người Brazil dạy con suốt cả ngày. 12 hạng mục — dầu máy, nước làm mát, dây cu-roa, bugi, ắc-quy, áp suất nén, ống dẫn, lọc gió, lọc điều hoà, gạt mưa, áp lốp, các loại đèn. |
| Mẹ | Bố mày nghe nói chắc tự hào. |
| Phong | Quan trọng nhất là cuối ngày con tự báo cáo cho khách bằng tiếng Nhật. Khách Watanabe-san khen con giải thích rõ ràng. |
| Mẹ | Mẹ vui lắm. Mẹ nghe nói tháng 12 con thi N4 đúng không? |
| Phong | Vâng, ngày 7 tháng 12. Con đăng ký rồi. Anh Carlos hứa nếu con đỗ sẽ rủ con sang nhà ở Nagoya ăn món Brazil. Vợ anh ấy bảo muốn ăn món Việt Nam. |
| Mẹ | Vậy mẹ làm ruốc gửi sang cho con đem biếu vợ Carlos. |
| Phong | Hay quá mẹ! Mẹ giữ sức khoẻ. Con tắt máy đây, mai dậy sớm. |
| Mẹ | Ngủ ngon con. Cố lên N4 nhé. |

---

## Đọng lại chương

Các mẫu câu cốt lõi của ngày kiểm tra động cơ:

- **「ボンネットを<ruby>開<rt>あ</rt></ruby>けます」** — Em mở capo (mở đầu kiểm tra)
- **「<ruby>絶対<rt>ぜったい</rt></ruby><ruby>開<rt>あ</rt></ruby>けないでください」** — Tuyệt đối đừng mở (cảnh báo an toàn)
- **「<ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>めです」/「<ruby>適正<rt>てきせい</rt></ruby>です」** — Hơi thấp / Đúng chuẩn (đánh giá số đo)
- **「<ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>」/「<ruby>要<rt>よう</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>」** — Khuyến cáo thay / Cần chú ý (kết luận hạng mục)
- **「<ruby>異常<rt>いじょう</rt></ruby>なしが<ruby>7<rt>なな</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>です」** — 7 mục bình thường (tổng hợp báo cáo)
- **「<ruby>冬<rt>ふゆ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>交換<rt>こうかん</rt></ruby>をおすすめします」** — Khuyến cáo thay trước đông (tư vấn khách)

> Từ vựng & mẫu câu chương này: <ruby>点検<rt>てんけん</rt></ruby>・ボンネット・レベルゲージ・エンジンオイル・<ruby>琥珀<rt>こはく</rt></ruby><ruby>色<rt>いろ</rt></ruby>・クーラント・<ruby>冷却水<rt>れいきゃくすい</rt></ruby>・Vベルト・ヒビ・スパークプラグ・<ruby>気筒<rt>きとう</rt></ruby>・カーボン・バッテリー・<ruby>電圧<rt>でんあつ</rt></ruby>・<ruby>圧縮<rt>あっしゅく</rt></ruby><ruby>圧力<rt>あつりょく</rt></ruby>・<ruby>漏<rt>も</rt></ruby>れ・エアフィルター・ワイパー...

---

## Bí quyết chương

- **Trình tự 12 mục Toyota luôn cố định** — học thuộc thứ tự, không nhảy mục → tránh sót.
- **Engine nóng KHÔNG mở nắp nước làm mát** — hơi áp suất bắn lên gây bỏng độ 2-3.
- Phân biệt **クリーナー (cả hộp) vs フィルター (giấy lọc bên trong)** — báo cáo sai → khách nghi.
- **Mùa đông Aichi tháng 11-12**: ắc-quy yếu là dấu hiệu thường gặp, chủ động khuyến cáo thay trước.
- 5 giác quan: **mắt + ngón tay + mũi** — rò クーラント có mùi ngọt nhẹ, rò オイル mùi nồng.
- Khi báo cáo khách: **chia nhóm OK / 要注意 / 要交換** — khách dễ quyết định.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 点検 | てんけん | ĐIỂM KIỂM | kiểm tra định kỳ |
| 項目 | こうもく | HẠNG MỤC | mục, hạng mục |
| ボンネット | — | — | capo |
| バッテリー | — | — | ắc-quy |
| ホース | — | — | ống mềm |
| ベルト | — | — | dây cu-roa |
| エアクリーナー | — | — | hộp lọc gió |
| エアフィルター | — | — | tấm lọc gió |
| 全体 | ぜんたい | TOÀN THỂ | toàn bộ |
| 中身 | なかみ | TRUNG THÂN | bên trong, nội dung |
| レベルゲージ | — | — | que thăm dầu |
| 抜く | ぬく | BẠT | rút ra |
| 拭く | ふく | THỨC | lau |
| 適正 | てきせい | THÍCH CHÍNH | đúng chuẩn, phù hợp |
| 琥珀色 | こはくいろ | HỔ PHÁCH SẮC | màu hổ phách |
| 時期 | じき | THỜI KỲ | thời điểm, mốc |
| クーラント | — | — | nước làm mát |
| 冷却水 | れいきゃくすい | LÃNH KHƯỚC THUỶ | nước làm mát |
| 液体 | えきたい | DỊCH THỂ | chất lỏng |
| 濁る | にごる | TRỌC | vẩn đục |
| 蓋 | ふた | CÁI | nắp |
| 蒸気 | じょうき | CHƯNG KHÍ | hơi nước |
| 噴き出す | ふきだす | PHẦN XUẤT | phun ra, bắn ra |
| ヒビ | — | — | vết nứt |
| クラック | — | — | nứt (crack) |
| 推奨 | すいしょう | THÔI THƯỞNG | khuyến cáo, đề nghị |
| スパークプラグ | — | — | bugi |
| 気筒 | きとう | KHÍ ĐỒNG | xy-lanh |
| シリンダー | — | — | xy-lanh |
| カーボン | — | — | muội than |
| 不完全燃焼 | ふかんぜんねんしょう | BẤT HOÀN TOÀN NHIÊN THIÊU | cháy không hoàn toàn |
| 電圧 | でんあつ | ĐIỆN ÁP | điện áp |
| プラス | — | — | dương, cộng |
| マイナス | — | — | âm, trừ |
| ショート | — | — | chập điện |
| 圧縮 | あっしゅく | ÁP SÚC | nén |
| 圧力 | あつりょく | ÁP LỰC | áp suất |
| クランキング | — | — | đề máy quay |
| 漏れ | もれ | LẬU | rò rỉ |
| にじみ | — | — | rỉ, thấm |
| 嗅ぐ | かぐ | KHỨU | ngửi |
| 匂い | におい | — | mùi |
| 甘い | あまい | CAM | ngọt |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 結果 | けっか | KẾT QUẢ | kết quả |
| ワイパー | — | — | gạt mưa |
| 出身 | しゅっしん | XUẤT THÂN | quê quán, nơi sinh |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000008, 800000043, NULL, 'markdown_book', 'T8. Đăng ký & thi N4 tháng 12 (N4検定)', '# Sách thực tập sinh ô tô · T8. Đăng ký & thi N4 tháng 12 (N4検定)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) sang Nhật được hơn 5 tháng, đang làm garage Toyota Anjo. Học các mẫu hội thoại tiếng Nhật cần thiết cho việc thi 検定: xin nghỉ thi, hỏi đường đến hội trường thi, đăng ký online, mua sách ôn ở Maruzen, hỏi cách điền 申込書, nhận kết quả, báo cáo với 工場長.

---

## Bối cảnh

Tháng 12 năm 2025. Phong đã đăng ký kỳ thi JLPT N4 ngày Chủ nhật đầu tháng 12, hội trường tại 名古屋大学 (Đại học Nagoya). Trình độ N5+, đang đẩy lên N4. Chương này dõi theo Phong trong tuần trước thi: xin nghỉ shift, ra Maruzen Sakae mua đề mock, hỏi đường, ngày thi đi tàu Meitetsu, gặp bạn người Việt khác cũng thi, và ngày nhận kết quả 2 tháng sau.

---

## Tình huống 1 — Phòng văn thư · 8:15, xin nghỉ ngày thi với 工場長

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、おはようございます。お<ruby>願<rt>ねが</rt></ruby>いがあります。<br>*(Quản đốc, chào buổi sáng. Em có việc muốn nhờ.)* |
| Sato | おはよう、フォンくん。<ruby>何<rt>なに</rt></ruby>?<br>*(Chào Phong. Gì thế?)* |
| Phong | <ruby>12月<rt>じゅうにがつ</rt></ruby><ruby>7日<rt>なのか</rt></ruby>、<ruby>日曜日<rt>にちようび</rt></ruby>に<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby><ruby>試験<rt>しけん</rt></ruby>N<ruby>4<rt>よん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<ruby>朝<rt>あさ</rt></ruby>から<ruby>名古屋<rt>なごや</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます。<br>*(Ngày 7/12 chủ nhật em đi thi JLPT N4. Từ sáng phải đến đại học Nagoya.)* |
| Sato | おお、いいね!<ruby>頑張<rt>がんば</rt></ruby>って。シフトは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Ồ, tốt nhỉ! Cố lên. Lịch ca thì sao?)* |
| Phong | <ruby>日曜<rt>にちよう</rt></ruby>は<ruby>元々<rt>もともと</rt></ruby><ruby>休<rt>やす</rt></ruby>みですが、<ruby>土曜日<rt>どようび</rt></ruby>の<ruby>残業<rt>ざんぎょう</rt></ruby>もしないで<ruby>勉強<rt>べんきょう</rt></ruby>したいです。<br>*(Chủ nhật vốn nghỉ rồi, nhưng em muốn không tăng ca thứ Bảy để ôn ạ.)* |
| Sato | もちろん。<ruby>試験<rt>しけん</rt></ruby>の<ruby>前日<rt>ぜんじつ</rt></ruby>は<ruby>定時<rt>ていじ</rt></ruby><ruby>上<rt>あ</rt></ruby>がりにしよう。<ruby>整備士長<rt>せいびしちょう</rt></ruby>にも<ruby>伝<rt>つた</rt></ruby>えておく。<br>*(Tất nhiên. Hôm trước thi em tan đúng giờ. Anh sẽ báo trưởng kỹ thuật.)* |
| Phong | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn ạ. Thực sự may quá.)* |
| Sato | <ruby>受<rt>う</rt></ruby>かったら<ruby>給料<rt>きゅうりょう</rt></ruby>アップだよ。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>規定<rt>きてい</rt></ruby>。<br>*(Đỗ thì lương tăng đấy. Quy định công ty.)* |
| Phong | えっ、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Ơ, thật ạ? Em sẽ cố!)* |

---

## Tình huống 2 — Tổ ăn cơm · 12:30, Hiroshi giúp kiểm tra phiếu thi

*Giờ ăn trưa, Phong mang phiếu thi 受験票 ra.*

| Vai | Lời thoại |
|---|---|
| Phong | ヒロシさん、ちょっと<ruby>見<rt>み</rt></ruby>てもらえますか?<br>*(Anh Hiroshi, xem giúp em chút được không?)* |
| Hiroshi | これ、<ruby>受験票<rt>じゅけんひょう</rt></ruby>?<br>*(Cái này, phiếu thi à?)* |
| Phong | はい、ネットで<ruby>印刷<rt>いんさつ</rt></ruby>しました。<ruby>名前<rt>なまえ</rt></ruby>と<ruby>住所<rt>じゅうしょ</rt></ruby>、<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Vâng, em in trên mạng. Tên với địa chỉ đúng không?)* |
| Hiroshi | NGUYEN BINH PHONG…OK。<ruby>住所<rt>じゅうしょ</rt></ruby>は<ruby>愛知県<rt>あいちけん</rt></ruby><ruby>安城市<rt>あんじょうし</rt></ruby>…OK。<br>*(NGUYEN BINH PHONG… OK. Địa chỉ Aichi-ken Anjo-shi… OK.)* |
| Hiroshi | <ruby>会場<rt>かいじょう</rt></ruby>は<ruby>名古屋大学<rt>なごやだいがく</rt></ruby><ruby>東山<rt>ひがしやま</rt></ruby>キャンパス、<ruby>9時<rt>くじ</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<ruby>遅刻<rt>ちこく</rt></ruby><ruby>厳禁<rt>げんきん</rt></ruby>。<br>*(Hội trường ở campus Higashiyama của Nagoya Univ, 9 giờ bắt đầu nhận. Cấm đi trễ.)* |
| Phong | <ruby>何時<rt>なんじ</rt></ruby>に<ruby>家<rt>いえ</rt></ruby>を<ruby>出<rt>で</rt></ruby>たらいいですか?<br>*(Mấy giờ ra khỏi nhà thì ổn ạ?)* |
| Hiroshi | <ruby>安城<rt>あんじょう</rt></ruby>から<ruby>名古屋<rt>なごや</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>半<rt>はん</rt></ruby>ぐらい。<ruby>7時<rt>しちじ</rt></ruby><ruby>出発<rt>しゅっぱつ</rt></ruby>が<ruby>安心<rt>あんしん</rt></ruby>。<br>*(Từ Anjo đến đại học Nagoya tầm 1 tiếng rưỡi. 7 giờ đi cho yên tâm.)* |
| Phong | わかりました。<ruby>持<rt>も</rt></ruby>ち<ruby>物<rt>もの</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Em rõ. Cần mang gì ạ?)* |
| Hiroshi | <ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>身分証<rt>みぶんしょう</rt></ruby>、<ruby>鉛筆<rt>えんぴつ</rt></ruby>HB、<ruby>消<rt>け</rt></ruby>しゴム、<ruby>時計<rt>とけい</rt></ruby>。<br>*(Phiếu thi, giấy tờ tuỳ thân, bút chì HB, gôm, đồng hồ.)* |
| Phong | <ruby>時計<rt>とけい</rt></ruby>はスマホでいいですか?<br>*(Đồng hồ dùng điện thoại được không ạ?)* |
| Hiroshi | スマホはダメ。<ruby>普通<rt>ふつう</rt></ruby>の<ruby>腕時計<rt>うでどけい</rt></ruby>を<ruby>持<rt>も</rt></ruby>って。<br>*(Điện thoại thì không. Mang đồng hồ đeo tay thường.)* |

---

## Tình huống 3 — Đường về ký túc · 19:00, đi mua đồ ôn ở Maruzen Sakae

| Vai | Lời thoại |
|---|---|
| Phong | (vào hiệu sách Maruzen) すみません、<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby><ruby>試験<rt>しけん</rt></ruby>N<ruby>4<rt>よん</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>はどこですか?<br>*(Xin lỗi, sách JLPT N4 ở đâu ạ?)* |
| Nhân viên | <ruby>2階<rt>にかい</rt></ruby>の<ruby>語学<rt>ごがく</rt></ruby>コーナーです。エスカレーターを<ruby>上<rt>あ</rt></ruby>がって、<ruby>右側<rt>みぎがわ</rt></ruby>です。<br>*(Tầng 2 khu ngoại ngữ. Lên thang cuốn, bên phải.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn.)* |
| Phong | (lên tầng 2) ...あ、ありました。「<ruby>新<rt>しん</rt></ruby><ruby>完全<rt>かんぜん</rt></ruby>マスター」、「<ruby>耳<rt>みみ</rt></ruby>から<ruby>覚<rt>おぼ</rt></ruby>えるN<ruby>4<rt>よん</rt></ruby>」、「<ruby>模擬<rt>もぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>」…どれがいいかな。<br>*(Có rồi đây. "Shin Kanzen Master", "Mimi kara Oboeru N4", "Đề mock"… cái nào tốt nhỉ.)* |
| Nhân viên | お<ruby>困<rt>こま</rt></ruby>りですか?<br>*(Anh đang phân vân ạ?)* |
| Phong | はい、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>です。<ruby>模擬<rt>もぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>したいです。<br>*(Vâng, tuần sau em thi rồi. Em muốn luyện đề mock.)* |
| Nhân viên | じゃあ、この<ruby>2回分<rt>にかいぶん</rt></ruby><ruby>収録<rt>しゅうろく</rt></ruby>の<ruby>模試<rt>もし</rt></ruby><ruby>本<rt>ぼん</rt></ruby>がおすすめ。CD<ruby>付<rt>つ</rt></ruby>き。<br>*(Vậy thì cuốn 2 đề có kèm CD này được khuyến cáo.)* |
| Phong | これにします。おいくらですか?<br>*(Em lấy cuốn này. Bao nhiêu ạ?)* |
| Nhân viên | <ruby>1,980<rt>せんきゅうひゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>税込<rt>ぜいこみ</rt></ruby>。<br>*(1.980 yên đã gồm thuế.)* |
| Phong | カードでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em thanh toán thẻ ạ.)* |

---

## Tình huống 4 — Ký túc · 21:30, gọi facetime với cô giáo trung tâm cũ

*Phong gọi cô Mai (giáo viên trung tâm tiếng Nhật ở Hà Nội).*

| Vai | Lời thoại |
|---|---|
| Phong | Cô ơi, em chào cô. |
| Cô Mai | Phong à, dạo này thế nào? |
| Phong | Em sắp thi N4 tuần sau, em hơi lo. Em muốn cô kiểm tra giúp em mấy mẫu ngữ pháp. |
| Cô Mai | Ừ, em đọc thử mấy câu mà em hay nhầm. |
| Phong | "…そうです" (truyền tin) với "…そうです" (trực giác)… em hay nhầm. |
| Cô Mai | Truyền tin: thể từ điển + そうです. Trực giác: thể stem (masu bỏ masu) + そうです. Em viết một câu mỗi loại đi. |
| Phong | Truyền tin: 「<ruby>雨<rt>あめ</rt></ruby>が<ruby>降<rt>ふ</rt></ruby>るそうです」 — nghe nói trời mưa. Trực giác: 「<ruby>雨<rt>あめ</rt></ruby>が<ruby>降<rt>ふ</rt></ruby>りそうです」 — trông sắp mưa. |
| Cô Mai | Đúng rồi! Em nhớ tốt đấy. |
| Phong | Còn "…ようです" với "…らしいです" thì sao cô? |
| Cô Mai | ようです là phán đoán có cơ sở mình thấy. らしいです là nghe người khác kể, hơi mơ hồ hơn そうです truyền tin. Em chỉ cần phân biệt được khi đọc là OK. |
| Phong | Vâng. Em cảm ơn cô. Chủ nhật em thi xong em báo cô. |
| Cô Mai | Cố lên! Đêm ngủ sớm, đừng học khuya quá. |

---

## Tình huống 5 — Bữa cơm chung phòng · 22:30, gặp Hùng (TTS Việt cùng khu)

*Hùng cũng là TTS làm xưởng thực phẩm gần đó, sang nhà Phong ăn cơm.*

| Vai | Lời thoại |
|---|---|
| Hùng | Phong, mày cũng thi N4 hả? Tao thi cùng ngày. |
| Phong | Thật à? Hội trường nào? |
| Hùng | Nagoya Daigaku, Higashiyama. |
| Phong | Giống tao! Cùng đi nhé. Sáng 7 giờ ra ga Anjo, đi Meitetsu. |
| Hùng | OK. Mày tự tin chương nào nhất? |
| Phong | Choukai (nghe). Nhờ làm garage nói chuyện sempai, tao nghe quen rồi. Văn nói khá ổn. |
| Hùng | Tao thì ngược lại. Tao học Hán tự thuộc lòng nên dokkai (đọc) ổn, nhưng nghe vẫn còn yếu. |
| Phong | Tối mai sang phòng tao, mình luyện cùng. Tao mới mua mock test ở Maruzen. |
| Hùng | OK đỉnh! Mang sang thêm mì tôm. |

---

## Tình huống 6 — Pit 3 · Sáng thứ 7 · 9:00, Yamada hỏi thăm trước thi

| Vai | Lời thoại |
|---|---|
| Yamada | フォンくん、<ruby>明日<rt>あした</rt></ruby><ruby>試験<rt>しけん</rt></ruby>?<br>*(Phong, mai thi à?)* |
| Phong | はい、<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>9時<rt>くじ</rt></ruby>からです。<br>*(Vâng, sáng mai 9 giờ ạ.)* |
| Yamada | <ruby>調子<rt>ちょうし</rt></ruby>はどう?<br>*(Phong độ ra sao?)* |
| Phong | <ruby>聴解<rt>ちょうかい</rt></ruby>はだいぶ<ruby>慣<rt>な</rt></ruby>れました。<ruby>読解<rt>どっかい</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Phần nghe quen rồi. Phần đọc hiểu hơi lo.)* |
| Yamada | <ruby>読解<rt>どっかい</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby><ruby>配分<rt>はいぶん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。<ruby>1問<rt>いちもん</rt></ruby>に<ruby>時間<rt>じかん</rt></ruby>をかけすぎないで。<br>*(Đọc hiểu quan trọng chia thời gian. Đừng tốn quá nhiều cho 1 câu.)* |
| Phong | <ruby>1問<rt>いちもん</rt></ruby><ruby>何分<rt>なんぷん</rt></ruby>ぐらいですか?<br>*(Một câu khoảng mấy phút ạ?)* |
| Yamada | <ruby>2分<rt>にふん</rt></ruby>かな。<ruby>分<rt>わ</rt></ruby>からなかったらマークして<ruby>次<rt>つぎ</rt></ruby>へ。<br>*(Khoảng 2 phút. Không hiểu thì đánh dấu, sang câu tiếp.)* |
| Phong | はい、メモします。<br>*(Vâng, em ghi nhớ.)* |
| Yamada | <ruby>頑張<rt>がんば</rt></ruby>って。<ruby>受<rt>う</rt></ruby>かったら<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>こう。<br>*(Cố lên. Đỗ thì đi nhậu nhé.)* |
| Phong | はい、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>します!<br>*(Vâng, em nhất định đỗ!)* |

---

## Tình huống 7 — Ga Anjo · Chủ nhật · 7:00, Phong gặp Hùng đi tàu

| Vai | Lời thoại |
|---|---|
| Hùng | Phong, đây! |
| Phong | Mày đến rồi. Tao mua được vé chưa? Mình đi tới ga nào? |
| Hùng | Meitetsu đi Nagoya, đổi tàu Higashiyama-sen tới ga Nagoya Daigaku. |
| Phong | (đến quầy bán vé) すみません、<ruby>名古屋<rt>なごや</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>駅<rt>えき</rt></ruby>まで<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>ください。<br>*(Xin lỗi, cho em 1 vé đến ga Đại học Nagoya.)* |
| Nhân viên | <ruby>名鉄<rt>めいてつ</rt></ruby>で<ruby>名古屋<rt>なごや</rt></ruby>まで<ruby>行<rt>い</rt></ruby>って、<ruby>地下鉄<rt>ちかてつ</rt></ruby><ruby>東山線<rt>ひがしやません</rt></ruby>に<ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えてください。<br>*(Đi Meitetsu đến Nagoya, rồi đổi sang tàu điện ngầm Higashiyama.)* |
| Phong | <ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えチケットありますか?<br>*(Có vé liên tuyến không ạ?)* |
| Nhân viên | はい、<ruby>名古屋<rt>なごや</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>駅<rt>えき</rt></ruby>まで<ruby>通<rt>とお</rt></ruby>しで<ruby>880<rt>はっぴゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Có, liên tuyến đến ga Đại học Nagoya là 880 yên.)* |
| Phong | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho em xin.)* |
| Hùng | Lát đến ga lại mất 15 phút đi bộ tới cổng đông campus. |
| Phong | OK, mình đi sớm là đúng. |

---

## Tình huống 8 — Cổng campus 名大 · 8:30, hỏi đường tới phòng thi

| Vai | Lời thoại |
|---|---|
| Phong | すみません、N<ruby>4<rt>よん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>の<ruby>会場<rt>かいじょう</rt></ruby>はどこですか?<br>*(Xin lỗi, hội trường thi N4 ở đâu ạ?)* |
| Tình nguyện viên | <ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho mình xem phiếu thi nhé.)* |
| Phong | (đưa phiếu) これです。<br>*(Đây ạ.)* |
| Tình nguyện viên | <ruby>受験番号<rt>じゅけんばんごう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します…はい、<ruby>工学部<rt>こうがくぶ</rt></ruby><ruby>2号館<rt>にごうかん</rt></ruby>、<ruby>302<rt>さんまるに</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>です。<br>*(Em kiểm tra số báo danh nhé… vâng, toà 2 khoa Kỹ thuật, phòng 302.)* |
| Phong | <ruby>工学部<rt>こうがくぶ</rt></ruby><ruby>2号館<rt>にごうかん</rt></ruby>、どう<ruby>行<rt>い</rt></ruby>けばいいですか?<br>*(Toà 2 khoa Kỹ thuật, đi thế nào ạ?)* |
| Tình nguyện viên | この<ruby>道<rt>みち</rt></ruby>を<ruby>真<rt>ま</rt></ruby>っすぐ、<ruby>2番目<rt>にばんめ</rt></ruby>の<ruby>信号<rt>しんごう</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>。<ruby>赤<rt>あか</rt></ruby>レンガの<ruby>建物<rt>たてもの</rt></ruby>です。<br>*(Đi thẳng đường này, đèn tín hiệu thứ 2 rẽ phải. Toà gạch đỏ.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn.)* |
| Hùng | (tiếng Việt) Tao phòng 301, ngay cạnh mày! |
| Phong | (tiếng Việt) Hên ghê! Cùng cố nhé. |

---

## Tình huống 9 — Trước phòng 302 · 8:50, giám thị hướng dẫn

| Vai | Lời thoại |
|---|---|
| Giám thị | みなさん、<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証<rt>みぶんしょう</rt></ruby>を<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<br>*(Mọi người, đặt phiếu thi và giấy tờ tuỳ thân lên bàn.)* |
| Phong | (đặt lên) ...<br>*(...)*  |
| Giám thị | <ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って、カバンの<ruby>中<rt>なか</rt></ruby>に。<br>*(Tắt nguồn điện thoại, cất vào cặp.)* |
| Phong | (tắt máy) <ruby>切<rt>き</rt></ruby>りました。<br>*(Em tắt rồi.)* |
| Giám thị | <ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>はペットボトルのみ。<ruby>机<rt>つくえ</rt></ruby>の<ruby>下<rt>した</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<br>*(Đồ uống chỉ chai nhựa. Để dưới bàn.)* |
| Phong | はい、<ruby>下<rt>した</rt></ruby>に<ruby>置<rt>お</rt></ruby>きました。<br>*(Vâng, em để dưới rồi.)* |
| Giám thị | <ruby>9時<rt>くじ</rt></ruby><ruby>30分<rt>さんじゅっぷん</rt></ruby>から<ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>(<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>)が<ruby>始<rt>はじ</rt></ruby>まります。<br>*(9 giờ 30 bắt đầu phần Kiến thức ngôn ngữ (chữ - từ vựng).)* |
| Phong | (thầm) <ruby>頑張<rt>がんば</rt></ruby>るぞ。<br>*(Cố lên nào.)* |

---

## Tình huống 10 — Hành lang giờ giải lao · 12:00, gặp Hùng

| Vai | Lời thoại |
|---|---|
| Hùng | Phong! Thế nào? |
| Phong | Văn tự - từ vựng dễ hơn tao tưởng. Ngữ pháp - đọc hiểu thì hơi vội. |
| Hùng | Tao cũng. Mà tao kẹt mất 5 phút ở bài đọc dài. |
| Phong | Tao bỏ qua 1 câu, đánh dấu rồi sang câu sau. Cuối quay lại không kịp, tao đoán bừa. |
| Hùng | Yamada-san dạy mày đấy à? |
| Phong | Ừ, anh ấy bảo 2 phút/câu, không kịp thì mark rồi sang. |
| Hùng | (cười) Khôn ghê. Chiều thi nghe nhé. |
| Phong | Tao tự tin nghe. Cùng vào nhỉ. Ăn cơm onigiri rồi vào. |

---

## Tình huống 11 — Cuối ca thi · 16:30, ra cổng, gọi cho Sato

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>休<rt>やす</rt></ruby>みのところすみません。フォンです。<br>*(Quản đốc, xin lỗi làm phiền ngày nghỉ. Em Phong.)* |
| Sato | おう、<ruby>試験<rt>しけん</rt></ruby>どうだった?<br>*(Ồ, thi sao rồi?)* |
| Phong | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>自信<rt>じしん</rt></ruby>あります。<br>*(Hết rồi ạ. Phần nghe em tự tin.)* |
| Sato | よかったね!<ruby>結果<rt>けっか</rt></ruby>はいつ?<br>*(Tốt nhỉ! Khi nào có kết quả?)* |
| Phong | <ruby>2月<rt>にがつ</rt></ruby><ruby>上旬<rt>じょうじゅん</rt></ruby>です。<br>*(Đầu tháng 2 ạ.)* |
| Sato | <ruby>2ヶ月<rt>にかげつ</rt></ruby><ruby>後<rt>ご</rt></ruby>か。じゃ、<ruby>明日<rt>あした</rt></ruby><ruby>普通<rt>ふつう</rt></ruby>に<ruby>仕事<rt>しごと</rt></ruby><ruby>頼<rt>たの</rt></ruby>むね。<br>*(2 tháng nữa nhỉ. Vậy mai cứ làm việc bình thường nhé.)* |
| Phong | はい、<ruby>明日<rt>あした</rt></ruby><ruby>8時<rt>はちじ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>出社<rt>しゅっしゃ</rt></ruby>します。<br>*(Vâng, 8 giờ rưỡi mai em đến công ty.)* |
| Sato | <ruby>今夜<rt>こんや</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>んで。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Tối nay nghỉ ngơi đi. Thực sự em đã cố gắng.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 12 — 2 tháng sau · Đầu tháng 2 · 10:00, mở web kết quả

*Phong giữa giờ nghỉ, vào trang JLPT web check kết quả.*

| Vai | Lời thoại |
|---|---|
| Phong | (mở điện thoại) <ruby>受験番号<rt>じゅけんばんごう</rt></ruby>を<ruby>入力<rt>にゅうりょく</rt></ruby>…パスワード…<br>*(Nhập số báo danh… mật khẩu…)* |
| Phong | (nhìn màn hình) <ruby>合格<rt>ごうかく</rt></ruby>!やった!<br>*(Đỗ! Yes!)* |
| Carlos | フォン、どうした?<br>*(Phong, sao thế?)* |
| Phong | カルロスさん、<ruby>合格<rt>ごうかく</rt></ruby>しました!N<ruby>4<rt>よん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Anh Carlos, em đỗ rồi! N4 đỗ!)* |
| Carlos | やった!<ruby>本当<rt>ほんとう</rt></ruby>に?<ruby>点数<rt>てんすう</rt></ruby>は?<br>*(Tuyệt! Thật à? Điểm bao nhiêu?)* |
| Phong | <ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby><ruby>42<rt>よんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby><ruby>38<rt>さんじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>52<rt>ごじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>132<rt>ひゃくさんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>!<br>*(Ngôn ngữ 42, đọc hiểu 38, nghe 52. Tổng 132!)* |
| Carlos | おめでとう!<ruby>聴解<rt>ちょうかい</rt></ruby>すごいね。<br>*(Chúc mừng! Phần nghe tuyệt đấy.)* |
| Phong | <ruby>毎日<rt>まいにち</rt></ruby>カルロスさんと<ruby>話<rt>はな</rt></ruby>したおかげです。<br>*(Nhờ hàng ngày nói chuyện với anh.)* |
| Carlos | <ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しよう!<br>*(Đi báo quản đốc đi!)* |

---

## Tình huống 13 — Phòng văn thư · 10:30, báo cáo Sato

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Quản đốc, em có việc báo cáo.)* |
| Sato | おう、<ruby>結果<rt>けっか</rt></ruby><ruby>出<rt>で</rt></ruby>た?<br>*(Ồ, có kết quả rồi à?)* |
| Phong | はい、N<ruby>4<rt>よん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Vâng, em đã đỗ N4.)* |
| Sato | おめでとう!よかったな。<br>*(Chúc mừng! Tốt quá.)* |
| Phong | ありがとうございます。<ruby>工場長<rt>こうじょうちょう</rt></ruby>や<ruby>整備士長<rt>せいびしちょう</rt></ruby>、カルロスさんのおかげです。<br>*(Em cảm ơn. Nhờ quản đốc, trưởng kỹ thuật và anh Carlos.)* |
| Sato | <ruby>規定<rt>きてい</rt></ruby><ruby>通<rt>どお</rt></ruby>り、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>時給<rt>じきゅう</rt></ruby><ruby>50<rt>ごじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>アップだ。<br>*(Theo quy định, từ tháng sau lương giờ tăng 50 yên.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>ですか?ありがとうございます!<br>*(Thật ạ? Em cảm ơn!)* |
| Sato | <ruby>次<rt>つぎ</rt></ruby>はN<ruby>3<rt>さん</rt></ruby><ruby>目指<rt>めざ</rt></ruby>そう。<ruby>整備<rt>せいび</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>も<ruby>増<rt>ふ</rt></ruby>やそう。<br>*(Tiếp theo nhắm N3. Học thêm từ chuyên ngành nữa.)* |
| Phong | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>来年<rt>らいねん</rt></ruby>の<ruby>12月<rt>じゅうにがつ</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Vâng, em sẽ cố. Tháng 12 năm sau em thử.)* |

---

## Tình huống 14 — Phòng trọ · 21:00, gọi báo gia đình Hải Phòng

> Cảnh tiếng Việt — Phong gọi facetime cho cả gia đình.

| Vai | Lời thoại |
|---|---|
| Phong | Cả nhà ơi, con đỗ N4 rồi! |
| Mẹ | Thật hả con? Mẹ biết mà! |
| Bố | Giỏi lắm con trai. Điểm bao nhiêu? |
| Phong | 132 trên 180. Đỗ với điểm khá ạ. Phần nghe — "choukai" — con được 52/60, cao nhất. |
| Em gái | Em tự hào về anh ghê! |
| Phong | Quản đốc — "koujou-chou" Sato-san vừa thông báo từ tháng sau lương con tăng 50 yên một giờ. |
| Bố | Vậy là quy định công ty Nhật rõ ràng nhỉ. Đỗ N4 lương tăng — tốt. |
| Phong | Vâng. Sempai Yamada còn rủ con đi nhậu mừng tối thứ Bảy. Anh Carlos thì rủ về nhà ở Nagoya ăn món Brazil. |
| Mẹ | Con nhớ giữ sức khoẻ, đừng nhậu quá nhé. Mẹ mới gửi ruốc với khô bò sang. |
| Phong | Vâng. Năm sau con thi N3, cố thêm chút nữa rồi về thăm cả nhà. Con yêu cả nhà. |
| Em gái | Em yêu anh! |

---

## Đọng lại chương

Các mẫu câu cốt lõi xoay quanh kỳ thi N4 và đời sống:

- **「<ruby>12月<rt>じゅうにがつ</rt></ruby><ruby>7日<rt>なのか</rt></ruby>に<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます」** — Ngày 7/12 em đi thi (thông báo lịch)
- **「<ruby>残業<rt>ざんぎょう</rt></ruby>しないで<ruby>勉強<rt>べんきょう</rt></ruby>したいです」** — Em muốn không tăng ca để ôn (xin shift)
- **「<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください」** — Vui lòng cho xem phiếu thi (giám thị)
- **「<ruby>名古屋<rt>なごや</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>駅<rt>えき</rt></ruby>まで<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>ください」** — Cho em 1 vé đến ga ĐH Nagoya (mua vé)
- **「<ruby>合格<rt>ごうかく</rt></ruby>しました」** — Em đã đỗ (báo kết quả)
- **「<ruby>次<rt>つぎ</rt></ruby>はN<ruby>3<rt>さん</rt></ruby><ruby>目指<rt>めざ</rt></ruby>します」** — Tiếp theo nhắm N3 (đặt mục tiêu)

> Từ vựng & mẫu câu chương này: <ruby>試験<rt>しけん</rt></ruby>・<ruby>受験票<rt>じゅけんひょう</rt></ruby>・<ruby>会場<rt>かいじょう</rt></ruby>・<ruby>身分証<rt>みぶんしょう</rt></ruby>・<ruby>鉛筆<rt>えんぴつ</rt></ruby>・<ruby>消<rt>け</rt></ruby>しゴム・<ruby>聴解<rt>ちょうかい</rt></ruby>・<ruby>読解<rt>どっかい</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>・<ruby>合格<rt>ごうかく</rt></ruby>・<ruby>不合格<rt>ふごうかく</rt></ruby>・<ruby>点数<rt>てんすう</rt></ruby>・<ruby>挑戦<rt>ちょうせん</rt></ruby>・<ruby>目指<rt>めざ</rt></ruby>す...

---

## Bí quyết chương

- **JLPT mỗi năm 2 kỳ (7/12)**, đăng ký online sớm vì hết slot ngày thi nhanh.
- **9 giờ điểm danh - không trễ 1 phút** — đến muộn coi như mất kỳ, không có thi bù.
- **Đồng hồ đeo tay riêng** — điện thoại bị cấm ngay cả khi tắt nguồn.
- **2 phút/câu đọc hiểu**, gặp khó đánh dấu sang câu sau — chiến lược chuẩn của senpai Yamada.
- Garage Toyota có **chế độ tăng lương khi đỗ JLPT** — hỏi 工場長 từ trước để có động lực.
- Cảm ơn theo trật tự **工場長 → 整備士長 → sempai trực tiếp** — văn hoá báo cáo Nhật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 試験 | しけん | THÍ NGHIỆM | kỳ thi |
| 能力 | のうりょく | NĂNG LỰC | năng lực |
| 受ける | うける | THỤ | thi, tiếp nhận |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu dự thi |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |
| 会場 | かいじょう | HỘI TRƯỜNG | hội trường |
| 受付 | うけつけ | THỤ PHÓ | quầy tiếp nhận |
| 遅刻 | ちこく | TRÌ KHẮC | đi trễ |
| 厳禁 | げんきん | NGHIÊM CẤM | nghiêm cấm |
| 出発 | しゅっぱつ | XUẤT PHÁT | xuất phát |
| 安心 | あんしん | AN TÂM | yên tâm |
| 身分証 | みぶんしょう | THÂN PHẦN CHỨNG | giấy tờ tuỳ thân |
| 鉛筆 | えんぴつ | DUYÊN BÚT | bút chì |
| 消しゴム | けしゴム | TIÊU | gôm tẩy |
| 腕時計 | うでどけい | UYỂN THỜI KẾ | đồng hồ đeo tay |
| 残業 | ざんぎょう | TÀN NGHIỆP | làm thêm giờ |
| 定時 | ていじ | ĐỊNH THỜI | đúng giờ tan |
| 給料 | きゅうりょう | CẤP LIỆU | lương |
| 規定 | きてい | QUY ĐỊNH | quy định |
| 語学 | ごがく | NGỮ HỌC | ngoại ngữ |
| 模擬試験 | もぎしけん | MÔ NGHĨ THÍ NGHIỆM | đề thi mô phỏng |
| 模試 | もし | MÔ NGHĨ | thi mock |
| 税込 | ぜいこみ | THUẾ | đã gồm thuế |
| 印刷 | いんさつ | ẤN LOÁT | in ấn |
| 住所 | じゅうしょ | TRỤ SỞ | địa chỉ |
| 乗り換える | のりかえる | THỪA HOÁN | đổi tàu/xe |
| 地下鉄 | ちかてつ | ĐỊA HẠ THIẾT | tàu điện ngầm |
| 信号 | しんごう | TÍN HIỆU | đèn tín hiệu |
| 真っすぐ | まっすぐ | CHÂN | thẳng |
| 建物 | たてもの | KIẾN VẬT | toà nhà |
| 教室 | きょうしつ | GIÁO THẤT | phòng học |
| 携帯電話 | けいたいでんわ | HUỀ ĐỚI ĐIỆN THOẠI | điện thoại di động |
| 電源 | でんげん | ĐIỆN NGUYÊN | nguồn điện |
| 切る | きる | THIẾT | tắt, cắt |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | kiến thức ngôn ngữ |
| 文字 | もじ | VĂN TỰ | chữ |
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 時間配分 | じかんはいぶん | THỜI GIAN PHÂN BỐ | phân bổ thời gian |
| 自信 | じしん | TỰ TÍN | tự tin |
| 不安 | ふあん | BẤT AN | lo lắng |
| 合格 | ごうかく | HỢP CÁCH | đỗ, đậu |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | trượt |
| 点数 | てんすう | ĐIỂM SỐ | điểm số |
| 合計 | ごうけい | HỢP KẾ | tổng cộng |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 時給 | じきゅう | THỜI CẤP | lương giờ |
| 目指す | めざす | MỤC CHỈ | nhắm tới |
| 挑戦 | ちょうせん | THIÊU CHIẾN | thách thức, thử sức |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000009, 800000043, NULL, 'markdown_book', 'T9. Obon — Đến nhà Carlos ăn cơm Brazil (お盆・カルロスさんの家)', '# Sách thực tập sinh ô tô · T9. Obon — Đến nhà Carlos ăn cơm Brazil (お盆・カルロスさんの家)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng), TTS ngành 自動車整備 (sửa chữa ô tô) tại garage Toyota Aichi. Học các mẫu hội thoại tiếng Nhật khi: nghe giải thích lễ Obon ở xưởng, nhận lời mời và xin phép thời gian, hỏi đường + nhắn LINE, chào lần đầu vào nhà người Nhật/Brazil, khen món ăn, hỏi văn hoá so sánh Việt - Brazil - Nhật, cảm ơn và xin phép về.

---

## Bối cảnh

Tháng 8 năm 2025. Garage Toyota系 ở Anjo, Aichi vào kỳ nghỉ お盆 (13-15/8). Phong sang Nhật được khoảng 4 tháng, trình độ tiếng Nhật N5 đang tiến lên N4. Đồng nghiệp Carlos (người Nhật gốc Brazil, sinh ra ở Brazil sang Nhật từ nhỏ — gọi là 日系ブラジル人) mời Phong đến nhà ăn cơm Brazil trưa Chủ nhật. Chương này tập trung các mẫu câu khi nhận lời mời ngoài giờ, xác nhận thời gian/địa chỉ, chào hỏi tại nhà người khác, khen món ăn và so sánh văn hoá.

---

## Tình huống 1 — Phòng nghỉ garage · 12:10 thứ Tư, 整備士長 thông báo lịch Obon

| Vai | Lời thoại |
|---|---|
| 整備士長 Yamada | みなさん、<ruby>来週<rt>らいしゅう</rt></ruby>はお<ruby>盆<rt>ぼん</rt></ruby><ruby>休<rt>やす</rt></ruby>みです。<ruby>8月<rt>はちがつ</rt></ruby><ruby>13日<rt>じゅうさんにち</rt></ruby>から<ruby>15日<rt>じゅうごにち</rt></ruby>まで<ruby>3日間<rt>みっかかん</rt></ruby>、<ruby>休<rt>やす</rt></ruby>みです。<br>*(Mọi người, tuần sau là nghỉ Obon. Từ 13 đến 15 tháng 8, nghỉ 3 ngày.)* |
| Phong | あのう、すみません。「おぼん」は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Dạ xin lỗi. "Obon" là gì ạ?)* |
| Yamada | お<ruby>盆<rt>ぼん</rt></ruby>は、<ruby>日本<rt>にほん</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>行事<rt>ぎょうじ</rt></ruby>です。ご<ruby>先祖<rt>せんぞ</rt></ruby>さまを<ruby>迎<rt>むか</rt></ruby>えます。<br>*(Obon là lễ quan trọng của Nhật. Là dịp đón tổ tiên về.)* |
| Phong | ベトナムの「お<ruby>盆<rt>ぼん</rt></ruby>」と<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Có giống lễ "Vu Lan" của Việt Nam không ạ?)* |
| Yamada | おお、<ruby>似<rt>に</rt></ruby>ていますね。<ruby>家族<rt>かぞく</rt></ruby>が<ruby>集<rt>あつ</rt></ruby>まって、お<ruby>墓参<rt>はかまい</rt></ruby>りをします。<br>*(Ồ, giống đấy. Gia đình tụ họp lại, đi tảo mộ.)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Vâng, em hiểu rồi. Em cảm ơn ạ.)* |

---

## Tình huống 2 — Trước xe nâng · 12:30, Carlos mời Phong

*Carlos vừa rửa tay, bước lại chỗ Phong đang ngồi ăn cơm hộp.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォンくん、お<ruby>盆<rt>ぼん</rt></ruby>、<ruby>予定<rt>よてい</rt></ruby>ある?<br>*(Phong này, Obon có kế hoạch gì chưa?)* |
| Phong | いいえ、<ruby>特<rt>とく</rt></ruby>に<ruby>予定<rt>よてい</rt></ruby>はありません。<ruby>寮<rt>りょう</rt></ruby>でゆっくりします。<br>*(Không ạ, không có kế hoạch gì đặc biệt. Em định nghỉ ở ký túc.)* |
| Carlos | じゃあさ、<ruby>日曜日<rt>にちようび</rt></ruby>のお<ruby>昼<rt>ひる</rt></ruby>、うちに<ruby>来<rt>こ</rt></ruby>ない?<ruby>奥<rt>おく</rt></ruby>さんがブラジルの<ruby>料理<rt>りょうり</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るよ。<br>*(Vậy trưa Chủ nhật, đến nhà mình chơi không? Bà xã mình nấu món Brazil đấy.)* |
| Phong | え、いいんですか?<br>*(Ơ, có được không ạ?)* |
| Carlos | もちろん。<ruby>一人<rt>ひとり</rt></ruby>でお<ruby>盆<rt>ぼん</rt></ruby>はさびしいでしょ?シュラスコ、<ruby>食<rt>た</rt></ruby>べたことある?<br>*(Tất nhiên. Một mình ở Obon buồn lắm đúng không? Đã từng ăn churrasco chưa?)* |
| Phong | シュラスコ?いいえ、<ruby>食<rt>た</rt></ruby>べたことないです。<br>*(Churrasco ạ? Chưa, em chưa từng ăn.)* |
| Carlos | じゃあ、ぜひ<ruby>来<rt>き</rt></ruby>てよ。<ruby>肉<rt>にく</rt></ruby>、いっぱい<ruby>焼<rt>や</rt></ruby>くから。<br>*(Vậy nhất định phải đến đấy. Mình sẽ nướng thật nhiều thịt.)* |
| Phong | はい、ありがとうございます。<ruby>喜<rt>よろこ</rt></ruby>んで。<br>*(Vâng, em cảm ơn anh. Em rất vui ạ.)* |

---

## Tình huống 3 — Garage, cuối giờ chiều · 17:30, xin số điện thoại và xác nhận

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>日曜日<rt>にちようび</rt></ruby>、<ruby>何時<rt>なんじ</rt></ruby>に<ruby>行<rt>い</rt></ruby>けばいいですか?<br>*(Anh Carlos, Chủ nhật em đến lúc mấy giờ thì được ạ?)* |
| Carlos | <ruby>11時<rt>じゅういちじ</rt></ruby>ぐらいかな。<ruby>準備<rt>じゅんび</rt></ruby>があるから。<br>*(Khoảng 11 giờ nhé. Vì mình còn chuẩn bị.)* |
| Phong | はい。<ruby>住所<rt>じゅうしょ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらえますか?<br>*(Vâng. Cho em xin địa chỉ được không ạ?)* |
| Carlos | LINEで<ruby>送<rt>おく</rt></ruby>るよ。フォンくんのLINE、<ruby>交換<rt>こうかん</rt></ruby>しよう。<br>*(Mình gửi qua LINE cho. Đổi LINE đi.)* |
| Phong | はい。これ、<ruby>私<rt>わたし</rt></ruby>のQRコードです。<br>*(Vâng. Đây là QR code của em ạ.)* |
| Carlos | OK、<ruby>追加<rt>ついか</rt></ruby>した。<ruby>地図<rt>ちず</rt></ruby>と<ruby>電車<rt>でんしゃ</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>、あとで<ruby>送<rt>おく</rt></ruby>るね。<br>*(OK, đã add. Bản đồ và giờ tàu mình gửi sau nhé.)* |
| Phong | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>何<rt>なに</rt></ruby>か<ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>きましょうか?<br>*(Em nhờ anh. Em có cần mang gì đến không?)* |
| Carlos | <ruby>気持<rt>きも</rt></ruby>ちだけでいいよ。<ruby>手<rt>て</rt></ruby>ぶらで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Có tấm lòng là đủ rồi. Tay không cũng được mà.)* |
| Phong | いいえ、<ruby>少<rt>すこ</rt></ruby>し<ruby>何<rt>なに</rt></ruby>か<ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>きます。<br>*(Không ạ, em sẽ mang chút gì đó.)* |

---

## Tình huống 4 — Ký túc, tối thứ Bảy · 20:00, gọi điện hỏi sempai Việt

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Anh Tuấn, mai em được mời đến nhà sempai người Brazil. Em mang quà gì hợp lý? |
| Tuấn | (tiếng Việt) Tránh quà nặng. Bánh kẹo siêu thị hoặc trái cây là ổn. Nhật người ta gọi là 手土産 (てみやげ). |
| Phong | (tiếng Việt) Dạ, em ra siêu thị mua bánh đóng hộp. Khoảng 1000-2000 yen có được không anh? |
| Tuấn | (tiếng Việt) Vừa đủ. Nhớ đưa quà ngay khi vào nhà, hai tay, nói「つまらないものですが」. |
| Phong | (tiếng Việt) Dạ. Em ghi rồi. À, vợ Carlos là người Brazil hay người Nhật ạ? |
| Tuấn | (tiếng Việt) Carlos nói gì? |
| Phong | (tiếng Việt) Dạ「奥さん」mà thôi. Em đoán cũng người Brazil. |
| Tuấn | (tiếng Việt) Thì cứ tiếng Nhật mà nói. Họ ở Nhật lâu rồi, tiếng Nhật ổn. |

---

## Tình huống 5 — Siêu thị Aeon sáng Chủ nhật · 10:00, mua 手土産

| Vai | Lời thoại |
|---|---|
| Phong | すみません、<ruby>手土産<rt>てみやげ</rt></ruby>に<ruby>合<rt>あ</rt></ruby>うお<ruby>菓子<rt>かし</rt></ruby>はどれですか?<br>*(Xin lỗi, bánh nào hợp làm quà cầm tay ạ?)* |
| Nhân viên | このバウムクーヘンや、<ruby>名古屋<rt>なごや</rt></ruby>のういろうが<ruby>人気<rt>にんき</rt></ruby>です。<br>*(Bánh Baumkuchen hoặc Uirou đặc sản Nagoya này được ưa chuộng ạ.)* |
| Phong | じゃあ、<ruby>名古屋<rt>なごや</rt></ruby>のういろうをください。<ruby>子<rt>こ</rt></ruby>どもも<ruby>食<rt>た</rt></ruby>べられますか?<br>*(Vậy cho em hộp Uirou Nagoya. Trẻ con ăn được không ạ?)* |
| Nhân viên | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。あっさりした<ruby>和菓子<rt>わがし</rt></ruby>ですよ。<br>*(Vâng, được ạ. Là bánh wagashi thanh đạm.)* |
| Phong | <ruby>包<rt>つつ</rt></ruby>んでもらえますか?<ruby>友達<rt>ともだち</rt></ruby>の<ruby>家<rt>いえ</rt></ruby>に<ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>きます。<br>*(Gói lại cho em được không ạ? Em mang đến nhà bạn.)* |
| Nhân viên | かしこまりました。のしは、お<ruby>付<rt>つ</rt></ruby>けしますか?<br>*(Vâng ạ. Có cần dán giấy noshi không ạ?)* |
| Phong | いいえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。あ、すみません、「のし」って<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Không ạ, không cần đâu. À xin lỗi, "noshi" là gì ạ?)* |
| Nhân viên | <ruby>贈<rt>おく</rt></ruby>り<ruby>物<rt>もの</rt></ruby>の<ruby>紙<rt>かみ</rt></ruby>です。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>場合<rt>ばあい</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Là giấy gói quà. Dùng cho trường hợp trang trọng.)* |
| Phong | じゃあ、<ruby>今日<rt>きょう</rt></ruby>は<ruby>普通<rt>ふつう</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy hôm nay gói bình thường cho em ạ.)* |

---

## Tình huống 6 — Ga tàu Toyota · 10:40, hỏi đường

| Vai | Lời thoại |
|---|---|
| Phong | すみません、この<ruby>住所<rt>じゅうしょ</rt></ruby>はどう<ruby>行<rt>い</rt></ruby>けばいいですか?<br>*(Xin lỗi, địa chỉ này đi thế nào ạ?)* |
| Cụ bà | あら、ホムロ<ruby>町<rt>ちょう</rt></ruby>ね。<ruby>3番<rt>さんばん</rt></ruby><ruby>出口<rt>でぐち</rt></ruby>から<ruby>歩<rt>ある</rt></ruby>いて<ruby>10分<rt>じゅっぷん</rt></ruby>ぐらいよ。<br>*(Ơ, Homuro-chou nhỉ. Từ cửa ra số 3 đi bộ khoảng 10 phút đó.)* |
| Phong | <ruby>3番<rt>さんばん</rt></ruby><ruby>出口<rt>でぐち</rt></ruby>ですね。ありがとうございます。<br>*(Cửa ra số 3 ạ. Cháu cảm ơn bà ạ.)* |
| Cụ bà | コンビニの<ruby>角<rt>かど</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>に<ruby>曲<rt>ま</rt></ruby>がってね。<br>*(Rẽ phải ở góc cửa hàng tiện lợi nhé.)* |
| Phong | はい、コンビニの<ruby>角<rt>かど</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>ですね。<br>*(Vâng, góc combini, rẽ phải ạ.)* |
| Cụ bà | <ruby>気<rt>き</rt></ruby>をつけてね、<ruby>暑<rt>あつ</rt></ruby>いから。<br>*(Cẩn thận nhé, trời nóng lắm.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, cháu cảm ơn bà ạ.)* |

---

## Tình huống 7 — Trước cửa nhà Carlos · 11:00, chào lần đầu

*Phong bấm chuông. Carlos mở cửa, vợ Carlos là chị Marina (cũng người Brazil gốc Nhật) đứng phía sau bế con gái 5 tuổi.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォンくん、いらっしゃい!<ruby>暑<rt>あつ</rt></ruby>かったでしょ?<br>*(Phong, mời vào! Nóng lắm phải không?)* |
| Phong | おじゃまします。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>招<rt>まね</rt></ruby>きいただいて、ありがとうございます。<br>*(Em xin phép. Cảm ơn anh hôm nay đã mời em ạ.)* |
| Marina | はじめまして、マリナです。カルロスからいつも<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いていますよ。<br>*(Rất hân hạnh, mình là Marina. Carlos luôn kể về Phong đấy.)* |
| Phong | はじめまして、フォンと<ruby>申<rt>もう</rt></ruby>します。これ、つまらないものですが、どうぞ。<br>*(Rất hân hạnh, em tên là Phong. Đây chút quà nhỏ ạ, mời chị.)* |
| Marina | わあ、ういろう!<ruby>嬉<rt>うれ</rt></ruby>しい、ありがとう。<ruby>気<rt>き</rt></ruby>を<ruby>遣<rt>つか</rt></ruby>わせちゃってごめんね。<br>*(Oa, Uirou! Vui quá, cảm ơn nhé. Để em phải bận tâm rồi xin lỗi nhé.)* |
| Carlos | さあ、<ruby>上<rt>あ</rt></ruby>がって、<ruby>上<rt>あ</rt></ruby>がって。スリッパどうぞ。<br>*(Nào, vào đi, vào đi. Dép đây.)* |
| Phong | しつれいします。<br>*(Em xin phép.)* |

---

## Tình huống 8 — Phòng khách · 11:10, gặp con gái Carlos

| Vai | Lời thoại |
|---|---|
| Carlos | <ruby>娘<rt>むすめ</rt></ruby>のソフィアです。<ruby>5歳<rt>ごさい</rt></ruby>。<br>*(Đây là Sofia, con gái mình. 5 tuổi.)* |
| Phong | ソフィアちゃん、こんにちは。<br>*(Chào Sofia.)* |
| Sofia | こんにちは!お<ruby>名前<rt>なまえ</rt></ruby>は?<br>*(Chào! Tên là gì ạ?)* |
| Phong | フォンです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Phong. Anh đến từ Việt Nam.)* |
| Sofia | ベトナム!<ruby>遠<rt>とお</rt></ruby>い?<br>*(Việt Nam! Xa không?)* |
| Phong | うん、<ruby>飛行機<rt>ひこうき</rt></ruby>で<ruby>6時間<rt>ろくじかん</rt></ruby>ぐらい。<br>*(Ừ, đi máy bay khoảng 6 tiếng.)* |
| Sofia | わたしのママは、ブラジル!もっと<ruby>遠<rt>とお</rt></ruby>い!<br>*(Mẹ em là Brazil! Xa hơn nữa cơ!)* |
| Marina | (cười) はいはい、ブラジルは<ruby>地球<rt>ちきゅう</rt></ruby>の<ruby>反対側<rt>はんたいがわ</rt></ruby>ね。フォンさん、<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>は<ruby>何<rt>なに</rt></ruby>がいい?<br>*(Vâng vâng, Brazil ở bên kia địa cầu nhỉ. Phong, uống gì nhé?)* |
| Phong | お<ruby>茶<rt>ちゃ</rt></ruby>を、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho em xin trà ạ.)* |

---

## Tình huống 9 — Sân nhà · 12:00, シュラスコ (Churrasco)

*Carlos nướng thịt bò xiên trên lò than. Khói thơm phức.*

| Vai | Lời thoại |
|---|---|
| Carlos | これがシュラスコ。ブラジルの<ruby>焼<rt>や</rt></ruby>き<ruby>肉<rt>にく</rt></ruby>。<ruby>塩<rt>しお</rt></ruby>だけ。<br>*(Đây là churrasco. Thịt nướng Brazil. Chỉ có muối.)* |
| Phong | <ruby>塩<rt>しお</rt></ruby>だけですか?タレは?<br>*(Chỉ có muối thôi ạ? Còn nước chấm?)* |
| Carlos | タレなし。<ruby>肉<rt>にく</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。さあ、<ruby>食<rt>た</rt></ruby>べてみて。<br>*(Không nước chấm. Vị thịt là quan trọng. Nào, ăn thử đi.)* |
| Phong | いただきます。…うわ、<ruby>美味<rt>おい</rt></ruby>しい!お<ruby>肉<rt>にく</rt></ruby>がやわらかいです。<br>*(Em xin phép ạ. …Oa, ngon quá! Thịt mềm lắm.)* |
| Marina | よかった。これはピカーニャ、<ruby>牛<rt>ぎゅう</rt></ruby>のおしりのところ。<br>*(May quá. Đây là Picanha, phần mông của bò.)* |
| Phong | ベトナムでも<ruby>牛肉<rt>ぎゅうにく</rt></ruby>はよく<ruby>食<rt>た</rt></ruby>べます。でも、こんな<ruby>焼<rt>や</rt></ruby>き<ruby>方<rt>かた</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Ở Việt Nam cũng hay ăn thịt bò. Nhưng cách nướng thế này thì lần đầu ạ.)* |
| Carlos | ベトナムの<ruby>牛肉<rt>ぎゅうにく</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>は?<br>*(Món thịt bò Việt Nam là gì?)* |
| Phong | フォーとか、<ruby>牛肉<rt>ぎゅうにく</rt></ruby>の<ruby>炒<rt>いた</rt></ruby>め<ruby>物<rt>もの</rt></ruby>とか…<ruby>香草<rt>こうそう</rt></ruby>をたくさん<ruby>使<rt>つか</rt></ruby>います。<br>*(Phở, hoặc bò xào… dùng nhiều rau thơm ạ.)* |

---

## Tình huống 10 — Bàn ăn · 12:30, hỏi văn hoá Obon và bàn thờ

*Trên kệ tủ trong góc phòng có ảnh ông bà, bên cạnh có hoa tươi và một quả dưa hấu nhỏ.*

| Vai | Lời thoại |
|---|---|
| Phong | あのう、あの<ruby>写真<rt>しゃしん</rt></ruby>は、ご<ruby>家族<rt>かぞく</rt></ruby>ですか?<br>*(Dạ, ảnh đó là gia đình ạ?)* |
| Carlos | うん、カルロスのおじいちゃんと、マリナのおばあちゃん。ブラジルで<ruby>亡<rt>な</rt></ruby>くなった。<br>*(Ừ, ông nội của Carlos và bà ngoại của Marina. Đã mất ở Brazil.)* |
| Phong | お<ruby>盆<rt>ぼん</rt></ruby>だから、<ruby>飾<rt>かざ</rt></ruby>っているんですか?<br>*(Vì là Obon nên bày như vậy ạ?)* |
| Marina | そうそう。<ruby>日本<rt>にほん</rt></ruby>とブラジル、<ruby>両方<rt>りょうほう</rt></ruby>の<ruby>習慣<rt>しゅうかん</rt></ruby>。<ruby>祖父母<rt>そふぼ</rt></ruby>は<ruby>日系<rt>にっけい</rt></ruby>だったから。<br>*(Đúng vậy. Pha trộn cả tập quán Nhật và Brazil. Vì ông bà là người Nhật kiều mà.)* |
| Phong | ベトナムでも、お<ruby>盆<rt>ぼん</rt></ruby>のような<ruby>行事<rt>ぎょうじ</rt></ruby>があります。「Vu Lan」と<ruby>言<rt>い</rt></ruby>います。<br>*(Việt Nam cũng có lễ giống Obon ạ. Gọi là "Vu Lan".)* |
| Carlos | へえ、ブラン?<br>*(Ờ, Bu-lan?)* |
| Phong | Vu Lan です。お<ruby>母<rt>かあ</rt></ruby>さんを<ruby>大切<rt>たいせつ</rt></ruby>にする<ruby>日<rt>ひ</rt></ruby>でもあります。<br>*(Vu Lan ạ. Cũng là ngày trân trọng mẹ.)* |
| Marina | いいね、それ。<ruby>世界<rt>せかい</rt></ruby>のどこでも、ご<ruby>先祖<rt>せんぞ</rt></ruby>さまは<ruby>大切<rt>たいせつ</rt></ruby>ね。<br>*(Hay nhỉ. Ở đâu trên thế giới, tổ tiên cũng đều quan trọng cả.)* |

---

## Tình huống 11 — Bàn ăn · 13:10, hỏi về món Brazil khác

| Vai | Lời thoại |
|---|---|
| Phong | これは<ruby>何<rt>なん</rt></ruby>ですか?<ruby>豆<rt>まめ</rt></ruby>の<ruby>料理<rt>りょうり</rt></ruby>?<br>*(Đây là gì ạ? Món đậu phải không?)* |
| Marina | これはフェイジョアーダ。<ruby>黒豆<rt>くろまめ</rt></ruby>と<ruby>豚肉<rt>ぶたにく</rt></ruby>を<ruby>煮<rt>に</rt></ruby>たもの。ブラジルの<ruby>国民食<rt>こくみんしょく</rt></ruby>。<br>*(Đây là Feijoada. Đậu đen ninh với thịt heo. Món quốc dân của Brazil.)* |
| Phong | こくみんしょく…ベトナムのフォーみたいですね。<br>*(Quốc dân thực… Giống phở của Việt Nam nhỉ.)* |
| Carlos | ご<ruby>飯<rt>はん</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べて。<br>*(Ăn cùng cơm này.)* |
| Phong | いただきます。…これも<ruby>美味<rt>おい</rt></ruby>しいです。<ruby>味<rt>あじ</rt></ruby>がしっかりしています。<br>*(Em xin phép ạ. …Cái này cũng ngon. Vị đậm đà ạ.)* |
| Marina | おかわり、する?<br>*(Thêm chứ?)* |
| Phong | はい、もう<ruby>少<rt>すこ</rt></ruby>しいただきます。<br>*(Vâng, cho em xin thêm chút ạ.)* |
| Marina | たくさん<ruby>食<rt>た</rt></ruby>べてね。<br>*(Ăn nhiều vào nhé.)* |

---

## Tình huống 12 — Phòng khách · 14:30, Carlos kể chuyện sang Nhật

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさんは、<ruby>何歳<rt>なんさい</rt></ruby>のとき、<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ましたか?<br>*(Anh Carlos đến Nhật lúc bao nhiêu tuổi ạ?)* |
| Carlos | <ruby>12歳<rt>じゅうにさい</rt></ruby>。<ruby>両親<rt>りょうしん</rt></ruby>がトヨタの<ruby>工場<rt>こうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>くために<ruby>来<rt>き</rt></ruby>た。<br>*(12 tuổi. Bố mẹ sang đây làm trong nhà máy Toyota.)* |
| Phong | <ruby>日本語<rt>にほんご</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>でしたか?<br>*(Tiếng Nhật vất vả không ạ?)* |
| Carlos | めちゃくちゃ<ruby>大変<rt>たいへん</rt></ruby>。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>分<rt>わ</rt></ruby>からなかった。だから、フォンくんの<ruby>気持<rt>きも</rt></ruby>ち、よく<ruby>分<rt>わ</rt></ruby>かるよ。<br>*(Cực kỳ vất vả. Lúc đầu chẳng hiểu gì cả. Vì vậy mình rất hiểu cảm giác của Phong.)* |
| Phong | ありがとうございます。…<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>時々<rt>ときどき</rt></ruby>さびしいです。<br>*(Em cảm ơn anh. …Nói thật, đôi khi em thấy buồn ạ.)* |
| Carlos | <ruby>分<rt>わ</rt></ruby>かる。でも、ガレージのみんなはフォンくんのこと、<ruby>応援<rt>おうえん</rt></ruby>してる。<br>*(Mình hiểu. Nhưng mọi người ở garage đều đang ủng hộ Phong đấy.)* |
| Marina | <ruby>困<rt>こま</rt></ruby>ったことがあったら、いつでも<ruby>連絡<rt>れんらく</rt></ruby>してね。うちは<ruby>近<rt>ちか</rt></ruby>いから。<br>*(Có khó khăn gì thì liên lạc bất cứ lúc nào nhé. Nhà mình gần đây.)* |
| Phong | はい、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng, em thật sự cảm ơn anh chị ạ.)* |

---

## Tình huống 13 — Cửa nhà · 16:00, xin phép về

| Vai | Lời thoại |
|---|---|
| Phong | そろそろ<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にごちそうさまでした。<br>*(Em xin phép về ạ. Hôm nay em thật sự cảm ơn bữa cơm ạ.)* |
| Marina | もう<ruby>帰<rt>かえ</rt></ruby>るの?ゆっくりしていって。<br>*(Về rồi à? Cứ nán lại đi.)* |
| Phong | ありがとうございます。でも、<ruby>明日<rt>あした</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby>から<ruby>勉強<rt>べんきょう</rt></ruby>します。N4の<ruby>試験<rt>しけん</rt></ruby>が<ruby>近<rt>ちか</rt></ruby>いので。<br>*(Em cảm ơn ạ. Nhưng mai em định sáng học bài. Sắp thi N4 rồi ạ.)* |
| Carlos | お、N4!がんばって。<ruby>分<rt>わ</rt></ruby>からないとこ、いつでも<ruby>聞<rt>き</rt></ruby>いて。<br>*(Ồ, N4! Cố lên. Chỗ nào không hiểu cứ hỏi mình.)* |
| Marina | これ、フェイジョアーダの<ruby>残<rt>のこ</rt></ruby>り。<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>って。<br>*(Đây, Feijoada còn dư. Mang về đi.)* |
| Phong | え、いいんですか?ありがとうございます。<br>*(Ơ, có được không ạ? Em cảm ơn chị ạ.)* |
| Sofia | フォンお<ruby>兄<rt>にい</rt></ruby>ちゃん、また<ruby>来<rt>き</rt></ruby>てね!<br>*(Anh Phong, lần sau lại đến chơi nhé!)* |
| Phong | うん、また<ruby>来<rt>き</rt></ruby>るね。バイバイ、ソフィアちゃん。<br>*(Ừ, lần sau anh lại đến. Bye bye Sofia.)* |
| Carlos | <ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>ってね。<ruby>駅<rt>えき</rt></ruby>まで<ruby>送<rt>おく</rt></ruby>る?<br>*(Về cẩn thận nhé. Tiễn ra ga không?)* |
| Phong | いいえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>道<rt>みち</rt></ruby>、<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Không ạ, em ổn. Em nhớ đường rồi.)* |

---

## Tình huống 14 — Ký túc, tối · 22:00, gọi điện về Việt Nam

> Cảnh tiếng Việt — gọi điện cho mẹ ở Hải Phòng.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Alô, Phong à? Hôm nay làm gì? |
| Phong | (tiếng Việt) Mẹ ơi, hôm nay con được anh đồng nghiệp Brazil mời đến nhà ăn cơm. Vui lắm mẹ. |
| Mẹ | (tiếng Việt) Brazil cơ á? Con ăn được không? |
| Phong | (tiếng Việt) Ăn được mẹ. Có món thịt bò nướng không nước chấm, gọi là churrasco. Với món đậu đen ninh thịt heo nữa, ngon mẹ ạ. |
| Mẹ | (tiếng Việt) Ừ, thấy con vui là mẹ mừng. Họ tử tế không? |
| Phong | (tiếng Việt) Tử tế lắm mẹ. Anh Carlos cũng sang Nhật từ nhỏ, anh ấy hiểu cảm giác của con. Anh ấy bảo có gì khó khăn thì cứ gọi. |
| Mẹ | (tiếng Việt) Tốt rồi. Ăn cơm xong còn được cho mang về à? Ở Nhật người ta tử tế thật. |
| Phong | (tiếng Việt) Vâng mẹ. À, người Nhật có lễ お盆 (Obon) giống Vu Lan mình ý. Mẹ ạ, mẹ có khoẻ không? Nhớ thắp hương cho ông nội giúp con. |
| Mẹ | (tiếng Việt) Mẹ khoẻ. Mẹ thắp rồi. Con cố gắng học N4 cho tốt nhé. |
| Phong | (tiếng Việt) Vâng mẹ. Con tắt máy đi ngủ đây. |

---

## Đọng lại chương 9

Trong kỳ Obon đầu tiên ở Nhật, Phong học được các mẫu câu xã giao thực: **hỏi nghĩa từ chuyên về văn hoá** (「おぼん」は何ですか・「のし」って何ですか), **nhận lời mời lịch sự** (喜んで), **xác nhận giờ-địa chỉ** (何時に行けばいいですか・住所を教えてもらえますか), **mua 手土産 và đưa quà** (つまらないものですが), **chào cửa khi vào nhà** (おじゃまします・しつれいします), **khen món ăn cụ thể** (お肉がやわらかい・味がしっかりしています), **so sánh văn hoá Việt - Brazil - Nhật** (ベトナムでも〜があります), **chia sẻ cảm xúc thật** (正直に言うと、さびしいです), **xin phép về và nhận quà mang về** (そろそろ失礼します・ごちそうさまでした). Cũng học được rằng đồng nghiệp Brazil-Nhật (日系ブラジル人) chính là cầu nối hiểu cảm giác xa nhà của TTS.

> Từ vựng & mẫu câu chương này: お盆・ご先祖さま・行事・お墓参り・予定・喜んで・住所・LINE・手土産・つまらないものですが・おじゃまします・しつれいします・シュラスコ・フェイジョアーダ・国民食・日系ブラジル人・正直に言うと・応援する・ごちそうさまでした・気をつけて

---

## Bí quyết chương

- **手土産 (てみやげ)**: khi đến nhà người Nhật/Nhật kiều, mang quà tay là phép lịch sự cơ bản. 1000-2000 yen vừa đủ, bánh đóng hộp siêu thị OK.
- Câu thần chú khi đưa quà: **つまらないものですが、どうぞ** (Đây chút quà nhỏ, mời anh chị) — đưa bằng hai tay.
- Vào nhà Nhật: nói **おじゃまします** (em xin phép quấy rầy), về thì **おじゃましました** hoặc **しつれいします**.
- **日系ブラジル人** (Nhật kiều Brazil) tập trung đông ở Aichi/Shizuoka/Gunma vì các nhà máy Toyota/Honda. Họ thường nói tiếng Nhật + Bồ Đào Nha hỗn hợp, văn hoá hai dòng.
- Khi được mời ăn món lạ: ăn thử trước rồi mới hỏi nguyên liệu. Khen cụ thể (mềm/đậm vị/thơm) thay vì chỉ nói「おいしい」.
- お盆 (13-15/8) là 1 trong 2 kỳ nghỉ dài của xưởng Nhật (kỳ kia là 年末年始). Garage Toyota thường đóng cửa hoàn toàn 3-5 ngày.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 来週 | らいしゅう | LAI TUẦN | tuần sau |
| お盆 | おぼん | BỒN | lễ Obon (đón tổ tiên) |
| 行事 | ぎょうじ | HÀNH SỰ | sự kiện, lễ hội |
| ご先祖さま | ごせんぞさま | TIÊN TỔ | tổ tiên |
| 迎える | むかえる | NGHINH | đón |
| お墓参り | おはかまいり | MỘ THAM | đi tảo mộ |
| 似ている | にている | TỰ | giống |
| 予定 | よてい | DỰ ĐỊNH | dự định, kế hoạch |
| 寮 | りょう | LIÊU | ký túc xá |
| 奥さん | おくさん | ÁO | vợ (của người khác) |
| 料理 | りょうり | LIỆU LÝ | món ăn |
| シュラスコ | しゅらすこ | — | churrasco (thịt nướng Brazil) |
| 喜んで | よろこんで | HỈ | rất vui (nhận lời) |
| 住所 | じゅうしょ | TRỤ SỞ | địa chỉ |
| 交換 | こうかん | GIAO HOÁN | trao đổi |
| 地図 | ちず | ĐỊA ĐỒ | bản đồ |
| 手土産 | てみやげ | THỦ THỔ SẢN | quà cầm tay |
| つまらない | つまらない | — | không đáng (khiêm) |
| 包む | つつむ | BAO | gói |
| 贈り物 | おくりもの | TẶNG VẬT | quà tặng |
| 正式 | せいしき | CHÍNH THỨC | chính thức |
| 出口 | でぐち | XUẤT KHẨU | cửa ra |
| 角 | かど | GIÁC | góc đường |
| 曲がる | まがる | KHÚC | rẽ, quẹo |
| 招く | まねく | CHIÊU | mời |
| 上がる | あがる | THƯỢNG | bước lên (nhà) |
| 娘 | むすめ | NƯƠNG | con gái |
| 遠い | とおい | VIỄN | xa |
| 飛行機 | ひこうき | PHI HÀNH CƠ | máy bay |
| 反対側 | はんたいがわ | PHẢN ĐỐI TRẮC | phía đối diện |
| 焼き肉 | やきにく | THIÊU NHỤC | thịt nướng |
| 塩 | しお | DIÊM | muối |
| 牛肉 | ぎゅうにく | NGƯU NHỤC | thịt bò |
| 香草 | こうそう | HƯƠNG THẢO | rau thơm |
| 写真 | しゃしん | TẢ CHÂN | ảnh chụp |
| 亡くなる | なくなる | VONG | qua đời |
| 飾る | かざる | SỨC | trang trí, bày |
| 習慣 | しゅうかん | TẬP QUÁN | tập quán |
| 祖父母 | そふぼ | TỔ PHỤ MẪU | ông bà |
| 日系 | にっけい | NHẬT HỆ | gốc Nhật |
| 世界 | せかい | THẾ GIỚI | thế giới |
| 黒豆 | くろまめ | HẮC ĐẬU | đậu đen |
| 豚肉 | ぶたにく | ĐỒN NHỤC | thịt heo |
| 煮る | にる | CHỬ | ninh, hầm |
| 国民食 | こくみんしょく | QUỐC DÂN THỰC | món quốc dân |
| 両親 | りょうしん | LƯỠNG THÂN | bố mẹ |
| 工場 | こうじょう | CÔNG TRƯỜNG | nhà máy |
| 正直 | しょうじき | CHÍNH TRỰC | thành thật |
| 寂しい | さびしい | TỊCH | buồn, cô đơn |
| 応援する | おうえんする | ỨNG VIỆN | ủng hộ, cổ vũ |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 残り | のこり | TÀN | phần còn lại |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000010, 800000043, NULL, 'markdown_book', 'T10. Mùa đông — Khách thay battery (バッテリー交換)', '# Sách thực tập sinh ô tô · T10. Mùa đông — Khách thay battery (バッテリー交換)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng), TTS 自動車整備 tại garage Toyota Aichi. Học các mẫu hội thoại tiếng Nhật khi: chào khách ở quầy tiếp tân (受付), nghe khách kể triệu chứng xe không nổ (エンジンがかからない), giải thích quy trình kiểm tra battery, báo giá và xin xác nhận, mượn dụng cụ từ sempai, báo cáo 報連相 khi xong việc, chào tiễn khách.

---

## Bối cảnh

Tháng 12 năm 2025. Mùa đông Aichi xuống 2-3 độ C buổi sáng. Phong đã 6 tháng ở garage, trình độ N4 cận đậu. Sáng nay khách Watanabe (60 tuổi) đến vì xe Toyota Vitz để qua đêm không nổ máy — triệu chứng điển hình battery yếu khi lạnh. Chương này tập trung mẫu câu接客 (tiếp khách) cơ bản + mẫu câu báo cáo sempai khi sửa chữa.

---

## Tình huống 1 — Quầy tiếp tân garage · 8:30, khách bước vào

| Vai | Lời thoại |
|---|---|
| Phong | おはようございます。いらっしゃいませ。<br>*(Chào buổi sáng. Xin mời ạ.)* |
| Watanabe | おはよう。ちょっと<ruby>困<rt>こま</rt></ruby>っちゃってね。<ruby>朝<rt>あさ</rt></ruby>、エンジンがかからないんだ。<br>*(Chào. Tôi đang gặp khó. Sáng nay xe không nổ máy.)* |
| Phong | エンジンがかからない、ですか。<ruby>大変<rt>たいへん</rt></ruby>ですね。<br>*(Xe không nổ máy ạ. Vất vả quá ạ.)* |
| Watanabe | <ruby>近所<rt>きんじょ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>んでジャンプして<ruby>来<rt>き</rt></ruby>た。<br>*(Tôi nhờ hàng xóm jump-start mới đến được.)* |
| Phong | そうですか。お<ruby>車<rt>くるま</rt></ruby>のキーをお<ruby>預<rt>あず</rt></ruby>かりします。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Vâng ạ. Em xin nhận chìa khoá xe. Bác chờ một lát ạ.)* |
| Watanabe | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ cậu nhé.)* |

---

## Tình huống 2 — Quầy tiếp tân · 8:35, gọi sempai và hỏi triệu chứng

| Vai | Lời thoại |
|---|---|
| Phong | (gọi điện nội bộ) <ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>受付<rt>うけつけ</rt></ruby>のフォンです。お<ruby>客<rt>きゃく</rt></ruby>さま、ヴィッツのエンジン<ruby>不調<rt>ふちょう</rt></ruby>で<ruby>来店<rt>らいてん</rt></ruby>です。<br>*(Anh trưởng kỹ thuật, em Phong ở tiếp tân. Khách đến vì xe Vitz không nổ máy ạ.)* |
| Yamada | <ruby>分<rt>わ</rt></ruby>かった。すぐ<ruby>行<rt>い</rt></ruby>く。お<ruby>客<rt>きゃく</rt></ruby>さまに<ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>聞<rt>き</rt></ruby>いておいて。<br>*(Tôi hiểu. Tôi xuống ngay. Cậu hỏi khách chi tiết triệu chứng trước đi.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Phong | (quay lại Watanabe) <ruby>渡辺<rt>わたなべ</rt></ruby>さま、<ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Bác Watanabe, bác có thể cho em biết triệu chứng chi tiết được không ạ?)* |
| Watanabe | キーを<ruby>回<rt>まわ</rt></ruby>すと、カチカチ<ruby>音<rt>おと</rt></ruby>はするけど、エンジンがかからない。<ruby>昨日<rt>きのう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だった。<br>*(Vặn chìa thì nghe "lách cách lách cách" nhưng máy không nổ. Hôm qua vẫn ổn.)* |
| Phong | カチカチ<ruby>音<rt>おと</rt></ruby>、ですね。ライトはつきますか?<br>*(Tiếng "lách cách" ạ. Đèn pha có sáng không ạ?)* |
| Watanabe | ライトは<ruby>少<rt>すこ</rt></ruby>し<ruby>暗<rt>くら</rt></ruby>かったかな。<br>*(Đèn hình như hơi tối.)* |
| Phong | はい、メモしました。ありがとうございます。<br>*(Vâng, em ghi rồi. Em cảm ơn bác ạ.)* |

---

## Tình huống 3 — Khoang xe · 8:50, Yamada giải thích cho Phong

*Yamada mở capô, dùng đồng hồ kiểm tra battery (バッテリーテスター).*

| Vai | Lời thoại |
|---|---|
| Yamada | フォン<ruby>君<rt>くん</rt></ruby>、<ruby>見<rt>み</rt></ruby>て。<ruby>電圧<rt>でんあつ</rt></ruby>が<ruby>11.2<rt>じゅういってんに</rt></ruby>ボルト。<br>*(Phong, nhìn này. Điện áp 11.2 vôn.)* |
| Phong | <ruby>低<rt>ひく</rt></ruby>いですか?<br>*(Thấp ạ?)* |
| Yamada | <ruby>低<rt>ひく</rt></ruby>い。<ruby>普通<rt>ふつう</rt></ruby>は<ruby>12.5<rt>じゅうにてんご</rt></ruby>ボルト<ruby>以上<rt>いじょう</rt></ruby>。これはバッテリーが<ruby>弱<rt>よわ</rt></ruby>っている。<br>*(Thấp. Bình thường phải trên 12.5 vôn. Cái này battery yếu rồi.)* |
| Phong | <ruby>冬<rt>ふゆ</rt></ruby>は<ruby>多<rt>おお</rt></ruby>いですか、こういうこと。<br>*(Mùa đông có nhiều ca như này không ạ?)* |
| Yamada | <ruby>多<rt>おお</rt></ruby>い。<ruby>寒<rt>さむ</rt></ruby>いとバッテリーの<ruby>力<rt>ちから</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちるから。<ruby>製造<rt>せいぞう</rt></ruby><ruby>年月日<rt>ねんがっぴ</rt></ruby>を<ruby>見<rt>み</rt></ruby>て。<br>*(Nhiều. Trời lạnh thì công suất battery giảm. Xem ngày sản xuất đi.)* |
| Phong | (xem nhãn) ええと、<ruby>2021<rt>にせんにじゅういち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3月<rt>さんがつ</rt></ruby>です。<br>*(Ờ, tháng 3 năm 2021 ạ.)* |
| Yamada | <ruby>4年<rt>よねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>使<rt>つか</rt></ruby>ってるね。<ruby>交換<rt>こうかん</rt></ruby>の<ruby>時期<rt>じき</rt></ruby>だ。<br>*(Dùng hơn 4 năm rồi. Đến lúc thay rồi.)* |
| Phong | はい、<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng, em ghi nhớ ạ.)* |

---

## Tình huống 4 — Quầy tiếp tân · 9:10, báo giá khách

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>渡辺<rt>わたなべ</rt></ruby>さま、お<ruby>待<rt>ま</rt></ruby>たせしました。バッテリーが<ruby>弱<rt>よわ</rt></ruby>っています。<ruby>電圧<rt>でんあつ</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いです。<br>*(Bác Watanabe, em xin lỗi đã để bác chờ. Battery yếu rồi ạ. Điện áp thấp.)* |
| Watanabe | やっぱりね。<ruby>交換<rt>こうかん</rt></ruby>かな?<br>*(Tôi đoán rồi. Thay luôn nhỉ?)* |
| Phong | はい、<ruby>交換<rt>こうかん</rt></ruby>をおすすめします。<ruby>4年<rt>よねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>使<rt>つか</rt></ruby>っていますので。<br>*(Vâng, em đề xuất thay ạ. Vì bác đã dùng hơn 4 năm rồi.)* |
| Watanabe | おいくら?<br>*(Bao nhiêu?)* |
| Phong | バッテリー<ruby>本体<rt>ほんたい</rt></ruby>が<ruby>15000<rt>いちまんごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>工賃<rt>こうちん</rt></ruby>が<ruby>3000<rt>さんぜん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>18000<rt>いちまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>税込<rt>ぜいこ</rt></ruby>みです。<br>*(Bình battery 15.000 yên, công 3.000 yên, tổng 18.000 yên, đã gồm thuế ạ.)* |
| Watanabe | うん、お<ruby>願<rt>ねが</rt></ruby>いするよ。どのくらいかかる?<br>*(Ừ, làm cho tôi đi. Mất bao lâu?)* |
| Phong | <ruby>30分<rt>さんじゅっぷん</rt></ruby>ぐらいです。あちらの<ruby>待合室<rt>まちあいしつ</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちください。コーヒーもございます。<br>*(Khoảng 30 phút ạ. Mời bác chờ ở phòng chờ đằng kia. Có cà phê nữa ạ.)* |
| Watanabe | ありがとう、<ruby>助<rt>たす</rt></ruby>かるよ。<br>*(Cảm ơn, đỡ quá.)* |

---

## Tình huống 5 — Khoang xe · 9:25, mượn dụng cụ từ sempai

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、すみません、<ruby>10<rt>じゅう</rt></ruby>ミリのスパナ、ありますか?<br>*(Anh Carlos, xin lỗi, có cờ-lê 10 mi-li không ạ?)* |
| Carlos | あるよ。これ。<br>*(Có đây.)* |
| Phong | ありがとうございます。あと、バッテリー<ruby>端子<rt>たんし</rt></ruby>の<ruby>掃除<rt>そうじ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うブラシは?<br>*(Em cảm ơn. Còn bàn chải để vệ sinh cọc battery ạ?)* |
| Carlos | あ、ワイヤーブラシね。あそこの<ruby>引<rt>ひ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しの<ruby>2段目<rt>にだんめ</rt></ruby>。<br>*(À, bàn chải sắt nhỉ. Ngăn kéo đằng kia, tầng 2.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Carlos | <ruby>端子<rt>たんし</rt></ruby>、マイナスから<ruby>外<rt>はず</rt></ruby>すんだよ。<ruby>順番<rt>じゅんばん</rt></ruby>、<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Cọc, tháo cực âm trước nhé. Thứ tự quan trọng đấy.)* |
| Phong | マイナスから、ですね。プラスを<ruby>先<rt>さき</rt></ruby>に<ruby>外<rt>はず</rt></ruby>すとどうなりますか?<br>*(Cực âm trước ạ. Tháo cực dương trước thì sao ạ?)* |
| Carlos | ショートする<ruby>危<rt>き</rt></ruby><ruby>険<rt>けん</rt></ruby>がある。<ruby>火花<rt>ひばな</rt></ruby>が<ruby>出<rt>で</rt></ruby>ることもある。<br>*(Có nguy cơ chập điện. Có khi bắn tia lửa nữa.)* |
| Phong | <ruby>怖<rt>こわ</rt></ruby>い…<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Sợ quá… Em sẽ cẩn thận ạ.)* |

---

## Tình huống 6 — Khoang xe · 9:30, vừa làm vừa xác nhận với sempai

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、マイナス、<ruby>外<rt>はず</rt></ruby>しました。<br>*(Anh Carlos, em tháo cực âm rồi.)* |
| Carlos | OK。<ruby>次<rt>つぎ</rt></ruby>、プラス。<br>*(OK. Tiếp, cực dương.)* |
| Phong | (làm xong) はずれました。バッテリーを<ruby>下<rt>お</rt></ruby>ろします。<br>*(Tháo xong rồi. Em lấy battery xuống ạ.)* |
| Carlos | <ruby>重<rt>おも</rt></ruby>いから<ruby>気<rt>き</rt></ruby>をつけて。<ruby>腰<rt>こし</rt></ruby>、<ruby>痛<rt>いた</rt></ruby>めるよ。<br>*(Nặng đấy, cẩn thận. Sái lưng đó.)* |
| Phong | はい。<ruby>膝<rt>ひざ</rt></ruby>を<ruby>曲<rt>ま</rt></ruby>げて<ruby>持<rt>も</rt></ruby>ちます。<br>*(Vâng. Em gập gối lên ạ.)* |
| Carlos | そう。<ruby>古<rt>ふる</rt></ruby>いバッテリーは<ruby>専用<rt>せんよう</rt></ruby>の<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れて。リサイクル<ruby>品<rt>ひん</rt></ruby>。<br>*(Đúng. Battery cũ cho vào thùng chuyên dụng. Hàng tái chế.)* |
| Phong | <ruby>普通<rt>ふつう</rt></ruby>の<ruby>ゴミ<rt>ごみ</rt></ruby>じゃないんですね。<br>*(Không phải rác thường ạ.)* |
| Carlos | <ruby>絶対<rt>ぜったい</rt></ruby>ダメ。<ruby>鉛<rt>なまり</rt></ruby>が<ruby>入<rt>はい</rt></ruby>ってるから。<br>*(Tuyệt đối không. Vì có chì trong đó.)* |

---

## Tình huống 7 — Khoang xe · 9:45, lắp battery mới, hỏi tại sao đảo ngược thứ tự

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けは<ruby>逆<rt>ぎゃく</rt></ruby>ですか?<br>*(Anh Carlos, lắp vào thì làm ngược ạ?)* |
| Carlos | そう。プラスから<ruby>先<rt>さき</rt></ruby>。<br>*(Đúng. Cực dương trước.)* |
| Phong | どうしてですか?<br>*(Vì sao ạ?)* |
| Carlos | プラスを<ruby>先<rt>さき</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けると、マイナスを<ruby>付<rt>つ</rt></ruby>けるまでは<ruby>金属<rt>きんぞく</rt></ruby>と<ruby>接触<rt>せっしょく</rt></ruby>してもショートしない。<br>*(Lắp cực dương trước thì khi chưa lắp cực âm, nếu chạm kim loại cũng không bị chập.)* |
| Phong | なるほど。<ruby>安全<rt>あんぜん</rt></ruby>のためですね。<br>*(Ra vậy. Là vì an toàn nhỉ.)* |
| Carlos | そう。<ruby>整備<rt>せいび</rt></ruby>は<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えとけ。<br>*(Đúng. Sửa chữa thì thứ tự là mạng sống. Nhớ đi.)* |
| Phong | はい、しっかり<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ ghi nhớ kỹ ạ.)* |

---

## Tình huống 8 — Khoang xe · 9:55, kiểm tra sau khi lắp

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>付<rt>つ</rt></ruby>けました。エンジン、かけてみます。<br>*(Anh Carlos, lắp xong rồi. Em thử nổ máy.)* |
| Carlos | OK。かけてみて。<br>*(OK. Thử đi.)* |
| Phong | (xoay chìa) …かかりました!<br>*(…Nổ rồi!)* |
| Carlos | いいね。<ruby>電圧<rt>でんあつ</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>測<rt>はか</rt></ruby>って。<br>*(Tốt. Đo điện áp lại lần nữa.)* |
| Phong | (đo) <ruby>14.1<rt>じゅうよんてんいち</rt></ruby>ボルトです。<br>*(14.1 vôn ạ.)* |
| Carlos | <ruby>充電<rt>じゅうでん</rt></ruby>もOK。<ruby>時計<rt>とけい</rt></ruby>と<ruby>窓<rt>まど</rt></ruby>のリセットも<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Sạc cũng OK. Đừng quên reset đồng hồ và cửa kính.)* |
| Phong | <ruby>窓<rt>まど</rt></ruby>のリセット、というのは?<br>*(Reset cửa kính, là sao ạ?)* |
| Carlos | パワーウィンドウは、バッテリー<ruby>外<rt>はず</rt></ruby>すと<ruby>記憶<rt>きおく</rt></ruby>が<ruby>消<rt>き</rt></ruby>える。<ruby>上下<rt>じょうげ</rt></ruby>を<ruby>1回<rt>いっかい</rt></ruby>ずつやり<ruby>直<rt>なお</rt></ruby>す。<br>*(Cửa kính điện, tháo battery thì mất bộ nhớ. Lên xuống lại 1 lần là được.)* |
| Phong | はい、やります。<br>*(Vâng, em làm ạ.)* |

---

## Tình huống 9 — Phòng nghỉ · 10:15, 報連相 báo cáo整備士長

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、ご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>渡辺<rt>わたなべ</rt></ruby>さまのヴィッツ、バッテリー<ruby>交換<rt>こうかん</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh trưởng kỹ thuật, em xin báo cáo. Xe Vitz của bác Watanabe đã thay battery xong ạ.)* |
| Yamada | お<ruby>疲<rt>つか</rt></ruby>れ。<ruby>電圧<rt>でんあつ</rt></ruby>は?<br>*(Vất vả rồi. Điện áp?)* |
| Phong | <ruby>14.1<rt>じゅうよんてんいち</rt></ruby>ボルトです。<ruby>充電<rt>じゅうでん</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby><ruby>良好<rt>りょうこう</rt></ruby>です。<br>*(14.1 vôn ạ. Tình trạng sạc tốt ạ.)* |
| Yamada | <ruby>古<rt>ふる</rt></ruby>いバッテリーは?<br>*(Battery cũ?)* |
| Phong | リサイクルの<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れました。<br>*(Em đã cho vào thùng tái chế ạ.)* |
| Yamada | よし。<ruby>他<rt>ほか</rt></ruby>に<ruby>気<rt>き</rt></ruby>になったところは?<br>*(Tốt. Có điểm nào để ý nữa không?)* |
| Phong | はい。タイヤの<ruby>溝<rt>みぞ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>浅<rt>あさ</rt></ruby>いです。<ruby>3<rt>さん</rt></ruby>ミリぐらいでした。<br>*(Vâng. Rãnh lốp hơi nông. Khoảng 3 mi-li ạ.)* |
| Yamada | おお、<ruby>気<rt>き</rt></ruby>がついたね。それ、お<ruby>客<rt>きゃく</rt></ruby>さまにお<ruby>伝<rt>つた</rt></ruby>えして。<ruby>無理<rt>むり</rt></ruby>に<ruby>売<rt>う</rt></ruby>るんじゃなくて、「<ruby>春<rt>はる</rt></ruby>までには<ruby>検討<rt>けんとう</rt></ruby>を」って<ruby>感<rt>かん</rt></ruby>じで。<br>*(Ồ, để ý kỹ đấy. Cái đó báo lại khách. Không phải ép bán mà nói kiểu "đến mùa xuân nên xem xét" đó.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 10 — Phòng chờ · 10:25, báo khách xong việc + thông báo tình trạng lốp

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>渡辺<rt>わたなべ</rt></ruby>さま、お<ruby>待<rt>ま</rt></ruby>たせしました。<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Bác Watanabe, đã để bác chờ. Em xong việc rồi ạ.)* |
| Watanabe | おお、ありがとう。<ruby>調子<rt>ちょうし</rt></ruby>はどう?<br>*(Ồ, cảm ơn cậu. Tình trạng sao?)* |
| Phong | はい、<ruby>電圧<rt>でんあつ</rt></ruby>も<ruby>正常<rt>せいじょう</rt></ruby>です。エンジンも<ruby>一発<rt>いっぱつ</rt></ruby>でかかりました。<br>*(Vâng, điện áp bình thường ạ. Máy nổ ngay phát đầu.)* |
| Watanabe | よかった。<br>*(May quá.)* |
| Phong | あのう、<ruby>渡辺<rt>わたなべ</rt></ruby>さま、もう<ruby>一<rt>ひと</rt></ruby>つお<ruby>伝<rt>つた</rt></ruby>えしたいことが…<br>*(Dạ, bác Watanabe, em có một việc muốn báo thêm…)* |
| Watanabe | なに?<br>*(Gì vậy?)* |
| Phong | タイヤの<ruby>溝<rt>みぞ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>浅<rt>あさ</rt></ruby>くなっています。<ruby>3<rt>さん</rt></ruby>ミリぐらいです。<ruby>今<rt>いま</rt></ruby>すぐではありませんが、<ruby>春<rt>はる</rt></ruby>までにご<ruby>検討<rt>けんとう</rt></ruby>ください。<br>*(Rãnh lốp đang khá mòn. Khoảng 3 mi-li. Không phải ngay bây giờ nhưng đến mùa xuân xin bác cân nhắc ạ.)* |
| Watanabe | おお、ちゃんと<ruby>見<rt>み</rt></ruby>てくれてるんだね。ありがとう。<ruby>春<rt>はる</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>するよ。<br>*(Ồ, cậu xem kỹ đấy nhỉ. Cảm ơn. Mùa xuân tôi sẽ bàn lại.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em nhờ bác ạ.)* |

---

## Tình huống 11 — Quầy thanh toán · 10:35, thanh toán và xin số điện thoại xác nhận

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>合計<rt>ごうけい</rt></ruby><ruby>18000<rt>いちまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。お<ruby>支払<rt>しはら</rt></ruby>いはカードと<ruby>現金<rt>げんきん</rt></ruby>、どちらにされますか?<br>*(Tổng 18.000 yên ạ. Bác thanh toán thẻ hay tiền mặt ạ?)* |
| Watanabe | カードで。<br>*(Thẻ.)* |
| Phong | はい、こちらでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời bác làm ở đây ạ.)* |
| Watanabe | (cà thẻ) これでいい?<br>*(Vậy được chưa?)* |
| Phong | はい、<ruby>確認<rt>かくにん</rt></ruby>できました。レシートでございます。<br>*(Vâng, em xác nhận xong rồi ạ. Hoá đơn của bác đây ạ.)* |
| Phong | あと、<ruby>次回<rt>じかい</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>のご<ruby>案内<rt>あんない</rt></ruby>を<ruby>送<rt>おく</rt></ruby>りたいので、お<ruby>電話<rt>でんわ</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>のご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ngoài ra, em muốn gửi thông báo bảo dưỡng lần sau, xin bác xác nhận số điện thoại ạ.)* |
| Watanabe | <ruby>0565<rt>ぜろごろくご</rt></ruby>のままだよ。<br>*(Vẫn 0565 nhé.)* |
| Phong | はい、<ruby>変更<rt>へんこう</rt></ruby>なしですね。<ruby>確認<rt>かくにん</rt></ruby>いたしました。<br>*(Vâng, không thay đổi ạ. Em xác nhận xong rồi.)* |

---

## Tình huống 12 — Cửa garage · 10:45, tiễn khách

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>渡辺<rt>わたなべ</rt></ruby>さま、<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<br>*(Bác Watanabe, hôm nay em cảm ơn bác ạ.)* |
| Watanabe | こちらこそ、ありがとう。<ruby>君<rt>きみ</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>、<ruby>上手<rt>じょうず</rt></ruby>になったね。<br>*(Tôi cũng cảm ơn cậu. Cậu này, tiếng Nhật giỏi lên rồi đấy.)* |
| Phong | いいえ、まだまだです。<br>*(Không ạ, em còn kém lắm.)* |
| Watanabe | <ruby>春<rt>はる</rt></ruby>にまた<ruby>来<rt>く</rt></ruby>るよ。タイヤのことね。<br>*(Mùa xuân tôi lại đến nhé. Chuyện cái lốp ấy.)* |
| Phong | はい、お<ruby>待<rt>ま</rt></ruby>ちしております。<ruby>道中<rt>どうちゅう</rt></ruby>、お<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Vâng, em đón bác ạ. Bác đi đường cẩn thận ạ.)* |
| Watanabe | はい、じゃあね。<br>*(Ừ, vậy nhé.)* |
| Phong | (cúi đầu chào, đứng đến khi xe khuất) <br>*(cúi 30° tiễn khách)* |

---

## Tình huống 13 — Phòng nghỉ · 12:00, 整備士長 nhận xét

| Vai | Lời thoại |
|---|---|
| Yamada | フォン<ruby>君<rt>くん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>接客<rt>せっきゃく</rt></ruby>、よかった。<br>*(Phong, tiếp khách hôm nay tốt đấy.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Yamada | <ruby>特<rt>とく</rt></ruby>にタイヤのこと、<ruby>無理<rt>むり</rt></ruby>に<ruby>売<rt>う</rt></ruby>ろうとしなかった。それが<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る。<br>*(Đặc biệt chuyện cái lốp, cậu không ép bán. Đó là cách tạo niềm tin.)* |
| Phong | はい。<ruby>渡辺<rt>わたなべ</rt></ruby>さまは<ruby>常連<rt>じょうれん</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby>さまですね?<br>*(Vâng. Bác Watanabe là khách quen phải không ạ?)* |
| Yamada | そう、<ruby>10年<rt>じゅうねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。ご<ruby>家族<rt>かぞく</rt></ruby>みんなウチの<ruby>客<rt>きゃく</rt></ruby>。<br>*(Đúng, hơn 10 năm rồi. Cả nhà đều là khách của mình.)* |
| Phong | すごい。だから<ruby>大切<rt>たいせつ</rt></ruby>にしないといけないですね。<br>*(Tuyệt thật. Vì vậy phải trân trọng nhỉ.)* |
| Yamada | そう。<ruby>整備<rt>せいび</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>もだけど、お<ruby>客<rt>きゃく</rt></ruby>さまとの<ruby>関係<rt>かんけい</rt></ruby>も<ruby>技術<rt>ぎじゅつ</rt></ruby>だ。<br>*(Đúng. Kỹ thuật sửa quan trọng, nhưng quan hệ khách hàng cũng là kỹ thuật.)* |
| Phong | はい、<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Vâng, em học được nhiều ạ.)* |

---

## Tình huống 14 — Ký túc · 19:30, gọi điện về Việt Nam

> Cảnh tiếng Việt — gọi anh trai làm sửa xe máy ở Hải Phòng.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Anh Hùng, hôm nay em tự đứng tiếp khách thay battery xe Vitz. |
| Anh Hùng | (tiếng Việt) Ồ giỏi vậy. Một mình à? |
| Phong | (tiếng Việt) Sempai Carlos chỉ đứng cạnh thôi. Anh ơi, em mới biết một thứ: tháo battery thì tháo cực âm マイナス trước, lắp lại thì lắp cực dương プラス trước. Bên mình anh có làm vậy không? |
| Anh Hùng | (tiếng Việt) Có chứ. Xe máy cũng vậy. Nhưng nhiều thợ ẩu, không theo thứ tự, có ngày chập nổ tia lửa. Em làm đúng là quá tốt rồi. |
| Phong | (tiếng Việt) Vâng. Anh ạ, ở đây mùa đông battery chết nhiều lắm. Trời 2-3 độ thôi. |
| Anh Hùng | (tiếng Việt) Ừ. Quê mình cũng có 整備士長 chỉ em báo khách chuyện lốp xe mà không được ép bán. Anh thấy hay đấy. |
| Phong | (tiếng Việt) Vâng. Em nhớ anh dạy em hồi nhỏ, "ăn bát cơm khách, sửa cho tử tế". Bên này 整備士長 nói y chang. |
| Anh Hùng | (tiếng Việt) Ờ, nghề nào cũng vậy thôi. Cố lên nhé. |
| Phong | (tiếng Việt) Vâng. Em đi học bài N4 đây, còn 1 tháng nữa thi. |

---

## Đọng lại chương 10

Lần đầu Phong gần như tự đứng tiếp một khách quen mùa đông: học mẫu câu接客 chuẩn — **chào khách** (いらっしゃいませ), **nhận chìa khoá** (キーをお預かりします), **hỏi triệu chứng chi tiết** (症状を詳しく教えていただけますか), **báo giá có thuế** (合計18000円、税込みです), **mượn dụng cụ sempai** (10ミリのスパナ、ありますか), **xác nhận thứ tự an toàn** (マイナスから外す・プラスから付ける), **報連相 báo cáo整備士長** (ご報告です・電圧は14.1ボルトです), **gợi ý mà không ép bán** (春までにご検討ください), **thanh toán + xác nhận thông tin khách** (お支払いはカード?・おđiện thoạisốのごxác nhận), **tiễn khách chuẩn** (本日はありがとうございました・道中、お気をつけて). Hiểu một điều quan trọng: tạo niềm tin > bán hàng.

> Từ vựng & mẫu câu chương này: いらっしゃいませ・エンジンがかからない・ジャンプする・お預かりします・症状・電圧・バッテリー・端子・マイナス・プラス・ショート・火花・工賃・合計・税込み・待合室・リサイクル・パワーウィンドウ・ご報告です・承知しました・検討・本日はありがとうございました・道中

---

## Bí quyết chương

- Mùa đông Aichi (12-2): battery hơn 3 năm là dễ chết khi đêm xuống dưới 5°C. Garage thường có chiến dịch「冬のバッテリー点検」miễn phí.
- **Thứ tự cọc battery — TỐI QUAN TRỌNG**: tháo マイナス(-)→プラス(+), lắp プラス(+)→マイナス(-). Sai thứ tự → chập, bắn tia lửa, hỏng ECU.
- **Battery cũ là rác chuyên dụng** (産業廃棄物 — chứa chì), tuyệt đối không vứt rác thường. Garage phải có hợp đồng với đơn vị thu hồi.
- **報連相** (ほうれんそう = 報告・連絡・相談): sau khi xong việc luôn báo cáo sempai 3 ý — kết quả số liệu, xử lý rác, điểm để ý ngoài việc chính.
- **Gợi ý không ép bán**: phát hiện thêm lỗi → báo khách kiểu「今すぐではないが、春までに検討を」 → khách quay lại tự nguyện.
- Câu tiễn khách chuẩn: cúi 30°, nói「本日はありがとうございました。道中、お気をつけて」 và đứng đến khi xe khuất tầm mắt.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 困る | こまる | KHỐN | gặp khó |
| エンジン | えんじん | — | động cơ |
| かかる | かかる | — | (máy) nổ, khởi động |
| 近所 | きんじょ | CẬN SỞ | hàng xóm |
| 頼む | たのむ | LẠI | nhờ |
| ジャンプ | じゃんぷ | — | jump-start (kích bình) |
| 預かる | あずかる | DỰ | nhận giữ |
| 整備士長 | せいびしちょう | CHỈNH BỊ SĨ TRƯỞNG | trưởng kỹ thuật |
| 受付 | うけつけ | THỌ PHÓ | tiếp tân |
| 不調 | ふちょう | BẤT ĐIỀU | trục trặc |
| 来店 | らいてん | LAI ĐIẾM | đến cửa hàng |
| 症状 | しょうじょう | CHỨNG TRẠNG | triệu chứng |
| 詳しい | くわしい | TƯỜNG | chi tiết |
| 回す | まわす | HỒI | xoay |
| 音 | おと | ÂM | tiếng |
| 暗い | くらい | ÁM | tối |
| 電圧 | でんあつ | ĐIỆN ÁP | điện áp |
| 普通 | ふつう | PHỔ THÔNG | bình thường |
| 弱る | よわる | NHƯỢC | yếu đi |
| 冬 | ふゆ | ĐÔNG | mùa đông |
| 寒い | さむい | HÀN | lạnh |
| 力 | ちから | LỰC | lực, công suất |
| 落ちる | おちる | LẠC | rơi, giảm |
| 製造年月日 | せいぞうねんがっぴ | CHẾ TẠO NIÊN NGUYỆT NHẬT | ngày sản xuất |
| 交換 | こうかん | GIAO HOÁN | thay, đổi |
| 時期 | じき | THỜI KỲ | thời điểm |
| お待たせしました | おまたせしました | ĐÃI | xin lỗi đã để chờ |
| すすめる | すすめる | TIẾN | đề xuất |
| 本体 | ほんたい | BẢN THỂ | bản thân (sản phẩm) |
| 工賃 | こうちん | CÔNG TRỊ | tiền công |
| 合計 | ごうけい | HỢP KẾ | tổng cộng |
| 税込み | ぜいこみ | THUẾ | đã gồm thuế |
| 待合室 | まちあいしつ | ĐÃI HỢP THẤT | phòng chờ |
| スパナ | すぱな | — | cờ-lê |
| 端子 | たんし | ĐOAN TỬ | cọc (cực) battery |
| 掃除 | そうじ | TẢO TRỪ | dọn dẹp, vệ sinh |
| 引き出し | ひきだし | DẪN XUẤT | ngăn kéo |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 危険 | きけん | NGUY HIỂM | nguy hiểm |
| 火花 | ひばな | HOẢ HOA | tia lửa |
| 怖い | こわい | BỐ | sợ |
| 重い | おもい | TRỌNG | nặng |
| 腰 | こし | YÊU | lưng |
| 痛める | いためる | THỐNG | làm đau |
| 膝 | ひざ | TẤT | đầu gối |
| 専用 | せんよう | CHUYÊN DỤNG | chuyên dụng |
| 鉛 | なまり | DUYÊN | chì |
| 逆 | ぎゃく | NGHỊCH | ngược |
| 金属 | きんぞく | KIM THUỘC | kim loại |
| 接触 | せっしょく | TIẾP XÚC | tiếp xúc |
| 安全 | あんぜん | AN TOÀN | an toàn |
| 命 | いのち | MỆNH | mạng sống |
| 充電 | じゅうでん | SUNG ĐIỆN | sạc điện |
| 時計 | とけい | THỜI KẾ | đồng hồ |
| 記憶 | きおく | KÝ ỨC | bộ nhớ |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 完了 | かんりょう | HOÀN LIỄU | hoàn thành |
| 状態 | じょうたい | TRẠNG THÁI | trạng thái |
| 良好 | りょうこう | LƯƠNG HẢO | tốt |
| 溝 | みぞ | CỪ | rãnh, mương |
| 浅い | あさい | THIỂN | nông |
| 検討 | けんとう | KIỂM THẢO | xem xét |
| 支払い | しはらい | CHI PHẤT | thanh toán |
| 現金 | げんきん | HIỆN KIM | tiền mặt |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 道中 | どうちゅう | ĐẠO TRUNG | dọc đường |
| 接客 | せっきゃく | TIẾP KHÁCH | tiếp khách |
| 信頼 | しんらい | TÍN LẠI | tin tưởng |
| 常連 | じょうれん | THƯỜNG LIÊN | khách quen |
| 関係 | かんけい | QUAN HỆ | quan hệ |
| 技術 | ぎじゅつ | KỸ THUẬT | kỹ thuật |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000011, 800000043, NULL, 'markdown_book', 'T11. Lần đầu tự sửa một mình — Thay dầu Honda Fit (初めての一人作業・オイル交換)', '# Sách thực tập sinh ô tô · T11. Lần đầu tự sửa một mình — Thay dầu Honda Fit (初めての一人作業・オイル交換)

> **Mục tiêu nhân vật:** Phong (22 tuổi, Hải Phòng), TTS 自動車整備 tại garage Toyota Aichi. Học các mẫu hội thoại tiếng Nhật khi: nhận chỉ thị đơn (作業指示), chào khách quen đến đặt lịch, tự lên kế hoạch và bảng kiểm, hỏi xác nhận khi không chắc, xử lý sự cố nhỏ giữa chừng, báo kết quả, xin nhận xét từ 整備士長.

---

## Bối cảnh

Tháng 2 năm 2026. Phong đã 10 tháng ở garage, mới đậu N4 tháng 12 trước. Hôm nay 整備士長 Yamada giao cho Phong tự xử lý một mình ca **thay dầu動機 + lọc dầu** cho xe Honda Fit của khách quen Suzuki — công việc đơn giản nhưng là lần đầu Phong được làm solo. 整備士長 đứng xa quan sát, không can thiệp trừ khi Phong hỏi.

---

## Tình huống 1 — Phòng nghỉ · 8:15, 整備士長 giao việc

| Vai | Lời thoại |
|---|---|
| Yamada | フォン<ruby>君<rt>くん</rt></ruby>、ちょっといい?<br>*(Phong, có chút thời gian không?)* |
| Phong | はい。<br>*(Vâng ạ.)* |
| Yamada | <ruby>今日<rt>きょう</rt></ruby>、<ruby>10時<rt>じゅうじ</rt></ruby>に<ruby>鈴木<rt>すずき</rt></ruby>さまのフィットが<ruby>来<rt>く</rt></ruby>る。オイル<ruby>交換<rt>こうかん</rt></ruby>と<ruby>点検<rt>てんけん</rt></ruby>。<ruby>一人<rt>ひとり</rt></ruby>でやってみるか?<br>*(Hôm nay 10 giờ xe Fit của bác Suzuki đến. Thay dầu và kiểm tra. Thử làm một mình xem?)* |
| Phong | …<ruby>一人<rt>ひとり</rt></ruby>で、ですか?<br>*(…Một mình ạ?)* |
| Yamada | そう。<ruby>俺<rt>おれ</rt></ruby>は<ruby>遠<rt>とお</rt></ruby>くから<ruby>見<rt>み</rt></ruby>てる。<ruby>分<rt>わ</rt></ruby>からないことがあったら、すぐ<ruby>聞<rt>き</rt></ruby>いて。<br>*(Đúng. Tôi đứng xa quan sát. Không hiểu gì thì hỏi ngay.)* |
| Phong | はい、やってみます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ thử ạ. Em sẽ cố gắng.)* |
| Yamada | フィットのオイル、<ruby>何<rt>なに</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うか、<ruby>分<rt>わ</rt></ruby>かる?<br>*(Dầu xe Fit dùng loại gì, biết không?)* |
| Phong | はい、<ruby>0W-20<rt>ぜろだぶりゅーにじゅう</rt></ruby>です。フィットは<ruby>燃費<rt>ねんぴ</rt></ruby>がいい<ruby>車<rt>くるま</rt></ruby>なので、<ruby>柔<rt>やわ</rt></ruby>らかいオイル。<br>*(Vâng, 0W-20 ạ. Xe Fit tiết kiệm xăng nên dùng dầu mềm.)* |
| Yamada | よし。フィルターも<ruby>交換<rt>こうかん</rt></ruby>な。<ruby>10000<rt>いちまん</rt></ruby>キロごとだから。<br>*(Tốt. Lọc cũng thay nhé. Cứ 10.000 km một lần.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Bàn làm việc · 8:45, tự chuẩn bị bảng kiểm

*Phong viết note nhỏ lên giấy A5 để khỏi quên.*

| Vai | Lời thoại |
|---|---|
| Phong | (lẩm bẩm tự nói) ええと、まず<ruby>準備<rt>じゅんび</rt></ruby>。オイル<ruby>0W-20<rt>ぜろだぶりゅーにじゅう</rt></ruby>を<ruby>3.4<rt>さんてんよん</rt></ruby>リットル、<ruby>新<rt>あたら</rt></ruby>しいフィルター、ドレンパッキン、ジャッキ、ウマ、オイル<ruby>受<rt>う</rt></ruby>けの<ruby>皿<rt>さら</rt></ruby>、ウエス…<br>*(Ờm, đầu tiên chuẩn bị. Dầu 0W-20 3.4 lít, lọc mới, đệm ốc xả, kích, đôn, mâm hứng dầu, giẻ…)* |
| Carlos | (đi ngang) フォン、メモしてる?いいね。<br>*(Phong, ghi note à? Hay đấy.)* |
| Phong | カルロスさん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めて<ruby>一人<rt>ひとり</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>です。<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Anh Carlos, chào buổi sáng. Hôm nay em làm một mình lần đầu. Em hồi hộp ạ.)* |
| Carlos | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。オイル<ruby>交換<rt>こうかん</rt></ruby>は<ruby>基本<rt>きほん</rt></ruby>。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>って、ゆっくりやれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Không sao. Thay dầu là cơ bản. Giữ thứ tự, làm từ từ là OK.)* |
| Phong | ドレンパッキンは<ruby>毎回<rt>まいかい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>ですか?<br>*(Đệm ốc xả mỗi lần đều thay ạ?)* |
| Carlos | <ruby>毎回<rt>まいかい</rt></ruby>。<ruby>1回<rt>いっかい</rt></ruby><ruby>使<rt>つか</rt></ruby>うとつぶれて<ruby>密閉<rt>みっぺい</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>くなる。<br>*(Mỗi lần. Dùng 1 lần là bẹp, đệm kín yếu đi.)* |
| Phong | はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em ghi nhớ ạ.)* |

---

## Tình huống 3 — Quầy tiếp tân · 9:55, khách Suzuki đến

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>鈴木<rt>すずき</rt></ruby>さま、おはようございます。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Bác Suzuki, chào buổi sáng. Em đã chờ bác ạ.)* |
| Suzuki | おはよう。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>願<rt>ねが</rt></ruby>いね。<br>*(Chào. Hôm nay nhờ cậu nhé.)* |
| Phong | はい、<ruby>本日<rt>ほんじつ</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>とフィルター<ruby>交換<rt>こうかん</rt></ruby>、<ruby>合<rt>あ</rt></ruby>わせて<ruby>点検<rt>てんけん</rt></ruby>もさせていただきます。<br>*(Vâng, hôm nay em xin được thay dầu, thay lọc và kiểm tra xe ạ.)* |
| Suzuki | <ruby>時間<rt>じかん</rt></ruby>、どのくらい?<br>*(Mất bao lâu?)* |
| Phong | <ruby>1時間<rt>いちじかん</rt></ruby>ぐらいです。<ruby>待合室<rt>まちあいしつ</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちいただけますか?<br>*(Khoảng 1 tiếng ạ. Bác chờ ở phòng chờ giúp em được không ạ?)* |
| Suzuki | はい。あ、そういえば、<ruby>最近<rt>さいきん</rt></ruby>エンジンの<ruby>音<rt>おと</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>大<rt>おお</rt></ruby>きい<ruby>気<rt>き</rt></ruby>がするのよ。<br>*(Vâng. À nhắc mới nhớ, dạo này tiếng máy hình như hơi to.)* |
| Phong | エンジンの<ruby>音<rt>おと</rt></ruby>、ですね。<ruby>点検<rt>てんけん</rt></ruby>のときに<ruby>確認<rt>かくにん</rt></ruby>させていただきます。メモしておきます。<br>*(Tiếng máy ạ. Lúc kiểm tra em sẽ xem giúp bác. Em ghi lại đây.)* |
| Suzuki | <ruby>助<rt>たす</rt></ruby>かるわ。<br>*(Cảm ơn cậu nhé.)* |

---

## Tình huống 4 — Khoang sửa · 10:10, đưa xe lên lift, bắt đầu

*Phong tự lái xe vào vị trí lift, kéo phanh tay, xuống xe, đặt khoá ghi nhớ vị trí ghế.*

| Vai | Lời thoại |
|---|---|
| Phong | (tự nói) サイドブレーキ、よし。シートの<ruby>位置<rt>いち</rt></ruby>、メモ。<br>*(Phanh tay, ổn. Vị trí ghế, ghi.)* |
| Phong | (gọi Yamada) <ruby>整備士長<rt>せいびしちょう</rt></ruby>、リフトを<ruby>上<rt>あ</rt></ruby>げる<ruby>前<rt>まえ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Anh trưởng kỹ thuật, em xin xác nhận trước khi đưa lên lift được không ạ?)* |
| Yamada | (đến gần) リフトポイントは?<br>*(Điểm kê lift?)* |
| Phong | フィットは<ruby>4<rt>よん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>、<ruby>下<rt>した</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>欠<rt>か</rt></ruby>きマークがあります。ここと、ここと…<br>*(Fit có 4 điểm, dưới gầm có dấu khắc. Chỗ này, chỗ này…)* |
| Yamada | OK、<ruby>正<rt>ただ</rt></ruby>しい。<ruby>上<rt>あ</rt></ruby>げて。<br>*(OK, đúng. Đưa lên đi.)* |
| Phong | はい、リフト<ruby>上<rt>あ</rt></ruby>げます。<ruby>周<rt>まわ</rt></ruby>り<ruby>注意<rt>ちゅうい</rt></ruby>します。<br>*(Vâng, em đưa lên ạ. Em chú ý xung quanh.)* |
| Yamada | <ruby>50センチ<rt>ごじゅっせんち</rt></ruby>でいったん<ruby>止<rt>と</rt></ruby>めて、<ruby>四隅<rt>よすみ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Lên 50 cm thì dừng lại, kiểm tra 4 góc.)* |
| Phong | はい。(dừng) <ruby>四隅<rt>よすみ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<ruby>安定<rt>あんてい</rt></ruby>しています。<br>*(Vâng. Em kiểm tra 4 góc. Ổn định.)* |
| Yamada | じゃ、<ruby>続<rt>つづ</rt></ruby>けて。<br>*(Vậy tiếp đi.)* |

---

## Tình huống 5 — Dưới gầm xe · 10:20, xả dầu cũ

| Vai | Lời thoại |
|---|---|
| Phong | (tự nói) ドレンボルト、<ruby>14<rt>じゅうよん</rt></ruby>ミリ。オイル<ruby>受<rt>う</rt></ruby>けセット、<ruby>準備<rt>じゅんび</rt></ruby>OK。<br>*(Ốc xả, 14 mi-li. Mâm hứng dầu, sẵn sàng OK.)* |
| Phong | (xoay ốc) かたい…<br>*(Cứng nhỉ…)* |
| Phong | (cứng quá, dừng lại) <ruby>整備士長<rt>せいびしちょう</rt></ruby>、ちょっとお<ruby>聞<rt>き</rt></ruby>きしてもよろしいですか?<br>*(Anh trưởng kỹ thuật, em hỏi một câu được không ạ?)* |
| Yamada | どうした?<br>*(Sao thế?)* |
| Phong | ドレンボルトが<ruby>固<rt>かた</rt></ruby>いです。<ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れすぎると、ねじ<ruby>山<rt>やま</rt></ruby>をなめる<ruby>心配<rt>しんぱい</rt></ruby>があります。<br>*(Ốc xả cứng quá ạ. Em sợ vặn mạnh quá sẽ trờn ren.)* |
| Yamada | いい<ruby>判断<rt>はんだん</rt></ruby>。メガネレンチに<ruby>変<rt>か</rt></ruby>えて、<ruby>体重<rt>たいじゅう</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>しずつかけて。<ruby>一気<rt>いっき</rt></ruby>に<ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れないこと。<br>*(Phán đoán hay. Đổi sang cờ-lê đầu vòng, đặt trọng lượng cơ thể vào từ từ. Đừng dùng lực giật.)* |
| Phong | はい、メガネレンチで、ゆっくり…(làm) ゆるみました!<br>*(Vâng, cờ-lê đầu vòng, từ từ… Lỏng ra rồi!)* |
| Yamada | <ruby>後<rt>あと</rt></ruby>は<ruby>手<rt>て</rt></ruby>で<ruby>回<rt>まわ</rt></ruby>せ。<ruby>最後<rt>さいご</rt></ruby>の<ruby>瞬間<rt>しゅんかん</rt></ruby>、オイルが<ruby>勢<rt>いきお</rt></ruby>いよく<ruby>出<rt>で</rt></ruby>るから<ruby>避<rt>よ</rt></ruby>けろ。<br>*(Còn lại xoay bằng tay. Khoảnh khắc cuối, dầu phun ra mạnh đó, tránh nhé.)* |
| Phong | はい!<br>*(Vâng!)* |

---

## Tình huống 6 — Dưới gầm · 10:30, dầu cũ ra hết, thay filter

| Vai | Lời thoại |
|---|---|
| Phong | (xem dầu chảy) <ruby>真<rt>ま</rt></ruby>っ<ruby>黒<rt>くろ</rt></ruby>です。だいぶ<ruby>古<rt>ふる</rt></ruby>いですね。<br>*(Đen kịt. Cũ lắm rồi nhỉ.)* |
| Phong | (đợi 5 phút) ほぼ<ruby>出<rt>で</rt></ruby><ruby>切<rt>き</rt></ruby>りました。<ruby>次<rt>つぎ</rt></ruby>、フィルターを<ruby>外<rt>はず</rt></ruby>します。<br>*(Gần xong rồi. Tiếp, tháo lọc.)* |
| Phong | (dùng cảo lọc) フィルターレンチ…(xoay) よし、ゆるんだ。<br>*(Cảo lọc dầu… ổn, lỏng ra rồi.)* |
| Phong | (tháo ra, dầu chảy vào tay) あ、<ruby>少<rt>すこ</rt></ruby>しこぼした…ウエスで<ruby>拭<rt>ふ</rt></ruby>きます。<br>*(Á, dây ra chút… Lau bằng giẻ.)* |
| Yamada | (từ xa) <ruby>新<rt>あたら</rt></ruby>しいフィルター<ruby>付<rt>つ</rt></ruby>ける<ruby>前<rt>まえ</rt></ruby>、Oリングに<ruby>新<rt>あたら</rt></ruby>しいオイルを<ruby>少<rt>すこ</rt></ruby>し<ruby>塗<rt>ぬ</rt></ruby>るのを<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Trước khi gắn lọc mới, đừng quên bôi chút dầu mới lên gioăng O.)* |
| Phong | はい!<ruby>密閉<rt>みっぺい</rt></ruby>のためですね。<br>*(Vâng! Để đệm kín đúng không ạ.)* |
| Yamada | <ruby>正解<rt>せいかい</rt></ruby>。<br>*(Chính xác.)* |
| Phong | (làm xong) フィルター<ruby>付<rt>つ</rt></ruby>けました。<ruby>手<rt>て</rt></ruby>で<ruby>締<rt>し</rt></ruby>めて、<ruby>1/4回転<rt>よんぶんのいちかいてん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>。<br>*(Lắp lọc xong. Vặn tay rồi quay thêm 1/4 vòng.)* |
| Yamada | <ruby>規定<rt>きてい</rt></ruby><ruby>通<rt>どお</rt></ruby>り。よし。<br>*(Đúng quy định. Tốt.)* |

---

## Tình huống 7 — Dưới gầm · 10:45, lắp lại ốc xả mới

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>新<rt>あたら</rt></ruby>しいドレンパッキン、<ruby>確認<rt>かくにん</rt></ruby>。サイズは…<ruby>14<rt>じゅうよん</rt></ruby>ミリ、OK。<br>*(Đệm ốc xả mới, kiểm tra. Cỡ… 14 mi-li, OK.)* |
| Phong | (lắp lại) <ruby>手<rt>て</rt></ruby>で<ruby>回<rt>まわ</rt></ruby>して、<ruby>最後<rt>さいご</rt></ruby>はトルクレンチで…<ruby>整備士長<rt>せいびしちょう</rt></ruby>、フィットのドレンボルトのトルクは<ruby>何<rt>なん</rt></ruby><ruby>ニュートン<rt>にゅーとん</rt></ruby>ですか?<br>*(Vặn bằng tay, cuối cùng dùng cờ-lê lực… Anh trưởng kỹ thuật, lực siết ốc xả Fit là bao nhiêu Niu-tơn ạ?)* |
| Yamada | <ruby>40<rt>よんじゅう</rt></ruby>ニュートン・メートル。マニュアル<ruby>確認<rt>かくにん</rt></ruby>した?<br>*(40 Nm. Đã xem manual chưa?)* |
| Phong | あ、すみません、<ruby>確認<rt>かくにん</rt></ruby>します。…(xem tablet) <ruby>40<rt>よんじゅう</rt></ruby>N・mです。<br>*(À xin lỗi, em xem ạ. … 40 N·m ạ.)* |
| Yamada | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>確<rt>たし</rt></ruby>かめる<ruby>癖<rt>くせ</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けろ。<ruby>俺<rt>おれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くより<ruby>先<rt>さき</rt></ruby>に。<br>*(Tạo thói quen tự kiểm tra. Trước khi hỏi tôi.)* |
| Phong | はい、すみません。これから<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em xin lỗi. Từ sau em cẩn thận ạ.)* |
| Phong | (siết) カチッ、<ruby>40<rt>よんじゅう</rt></ruby>N・m、<ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Tách, 40 N·m, xong.)* |

---

## Tình huống 8 — Trên xe · 11:00, đổ dầu mới và kiểm tra tiếng máy

| Vai | Lời thoại |
|---|---|
| Phong | (đổ dầu) <ruby>3.4<rt>さんてんよん</rt></ruby>リットル、ゆっくり…まず<ruby>3<rt>さん</rt></ruby>リットル<ruby>入<rt>い</rt></ruby>れて、ゲージで<ruby>確認<rt>かくにん</rt></ruby>。<br>*(3.4 lít, từ từ… đổ trước 3 lít, dùng que kiểm tra.)* |
| Phong | (rút que dầu, lau, cắm lại, rút) FとLの<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>より<ruby>下<rt>した</rt></ruby>。あと<ruby>少<rt>すこ</rt></ruby>し。<br>*(Giữa F và L, dưới một chút. Còn thiếu.)* |
| Phong | (thêm 0.4 lít) もう<ruby>一度<rt>いちど</rt></ruby>ゲージで…ちょうどFの<ruby>少<rt>すこ</rt></ruby>し<ruby>下<rt>した</rt></ruby>。<ruby>適正<rt>てきせい</rt></ruby>。<br>*(Lại đo que… đúng dưới F một chút. Hợp lý.)* |
| Phong | (đóng nắp, đến chỗ Yamada) <ruby>整備士長<rt>せいびしちょう</rt></ruby>、エンジンを<ruby>始動<rt>しどう</rt></ruby>します。お<ruby>客<rt>きゃく</rt></ruby>さまがエンジンの<ruby>音<rt>おと</rt></ruby>が<ruby>気<rt>き</rt></ruby>になるとおっしゃっていたので、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いていただけますか?<br>*(Anh trưởng kỹ thuật, em sẽ khởi động máy. Khách có nói lo tiếng máy nên anh nghe cùng em được không ạ?)* |
| Yamada | お、それは<ruby>大事<rt>だいじ</rt></ruby>な<ruby>確認<rt>かくにん</rt></ruby>。<ruby>聞<rt>き</rt></ruby>こう。<br>*(Ồ, kiểm tra quan trọng đấy. Tôi nghe cùng.)* |
| Phong | (nổ máy) ヴーン…<br>*(Vrrr…)* |
| Yamada | …うん、<ruby>普通<rt>ふつう</rt></ruby>のアイドリング<ruby>音<rt>おと</rt></ruby>だな。<ruby>異音<rt>いおん</rt></ruby>はない。<br>*(…Ừ, tiếng cầm chừng bình thường. Không có tiếng lạ.)* |
| Phong | はい、<ruby>私<rt>わたし</rt></ruby>もそう<ruby>感<rt>かん</rt></ruby>じます。お<ruby>客<rt>きゃく</rt></ruby>さまの<ruby>気<rt>き</rt></ruby>のせいかもしれません。<br>*(Vâng, em cũng cảm thấy vậy. Có thể do bác ấy nghĩ vậy thôi.)* |
| Yamada | <ruby>古<rt>ふる</rt></ruby>いオイルがエンジンを<ruby>少<rt>すこ</rt></ruby>し<ruby>重<rt>おも</rt></ruby>くしてた<ruby>可能性<rt>かのうせい</rt></ruby>もある。<ruby>新<rt>あたら</rt></ruby>しいオイルで、<ruby>音<rt>おと</rt></ruby>も<ruby>軽<rt>かる</rt></ruby>くなるかも。<br>*(Cũng có thể do dầu cũ làm máy hơi nặng. Dầu mới có khi tiếng máy nhẹ đi.)* |
| Phong | お<ruby>客<rt>きゃく</rt></ruby>さまにそうお<ruby>伝<rt>つた</rt></ruby>えします。<br>*(Em sẽ báo bác ấy như vậy ạ.)* |

---

## Tình huống 9 — Khoang xe · 11:15, kiểm tra điểm xung quanh (xen kẽ)

| Vai | Lời thoại |
|---|---|
| Phong | (tự nói) ついでに、ワイパー、ウォッシャー<ruby>液<rt>えき</rt></ruby>、ライト、タイヤ<ruby>空気圧<rt>くうきあつ</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Tiện thể, gạt nước, nước rửa kính, đèn, áp suất lốp, kiểm tra.)* |
| Phong | ワイパー、ゴム<ruby>少<rt>すこ</rt></ruby>し<ruby>切<rt>き</rt></ruby>れています。ウォッシャー<ruby>液<rt>えき</rt></ruby>、<ruby>半分<rt>はんぶん</rt></ruby>くらい。タイヤ<ruby>空気圧<rt>くうきあつ</rt></ruby>…<ruby>左前<rt>ひだりまえ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>い。<br>*(Gạt nước, gioăng cao su hơi nứt. Nước rửa kính, còn nửa bình. Áp suất lốp… bánh trước trái hơi thấp.)* |
| Phong | (nhìn nhãn cửa) <ruby>規定<rt>きてい</rt></ruby>は<ruby>230<rt>にひゃくさんじゅう</rt></ruby>kPa。<ruby>左前<rt>ひだりまえ</rt></ruby>は<ruby>210<rt>にひゃくじゅう</rt></ruby>。<ruby>20<rt>にじゅう</rt></ruby>kPa<ruby>低<rt>ひく</rt></ruby>い。<br>*(Tiêu chuẩn 230 kPa. Trước trái 210. Thấp 20 kPa.)* |
| Phong | (bơm thêm) <ruby>230<rt>にひゃくさんじゅう</rt></ruby>、OK。<br>*(230, OK.)* |
| Phong | (ghi note) ワイパー<ruby>交換<rt>こうかん</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>、ウォッシャー<ruby>液<rt>えき</rt></ruby><ruby>補充<rt>ほじゅう</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>、タイヤ<ruby>空気圧<rt>くうきあつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(Đề xuất thay gạt nước, đề xuất bổ sung nước rửa kính, đã chỉnh áp suất lốp.)* |

---

## Tình huống 10 — Lift hạ xuống · 11:30, kiểm tra cuối + lau dấu chân

| Vai | Lời thoại |
|---|---|
| Phong | リフト<ruby>下<rt>お</rt></ruby>ろします。<ruby>周<rt>まわ</rt></ruby>り<ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(Em hạ lift xuống. Chú ý xung quanh.)* |
| Phong | (xe xuống đất, kiểm tra dưới gầm bằng đèn) <ruby>漏<rt>も</rt></ruby>れなし。OK。<br>*(Không rò rỉ. OK.)* |
| Phong | (mở capô, dùng giẻ lau dấu dầu trên thanh chống capô) きれいに<ruby>拭<rt>ふ</rt></ruby>く…<br>*(Lau sạch…)* |
| Phong | (vào trong xe, lót giấy che ghế) シートの<ruby>位置<rt>いち</rt></ruby>、もとに<ruby>戻<rt>もど</rt></ruby>す。ハンドル、ミラー、<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Đưa ghế về vị trí cũ. Vô-lăng, gương, kiểm tra.)* |
| Phong | (kiểm tra dấu chân giày dưới sàn) <ruby>足跡<rt>あしあと</rt></ruby>なし。OK。<br>*(Không dấu chân. OK.)* |
| Yamada | (đến gần) フォン<ruby>君<rt>くん</rt></ruby>、よく<ruby>気<rt>き</rt></ruby>がついた。<ruby>足跡<rt>あしあと</rt></ruby>はクレームになりやすい。<br>*(Phong, để ý kỹ đấy. Dấu chân hay bị phàn nàn lắm.)* |
| Phong | はい、お<ruby>客<rt>きゃく</rt></ruby>さまの<ruby>大事<rt>だいじ</rt></ruby>な<ruby>車<rt>くるま</rt></ruby>ですから。<br>*(Vâng, vì là xe quý của khách mà ạ.)* |

---

## Tình huống 11 — Quầy tiếp tân · 11:40, báo khách

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>鈴木<rt>すずき</rt></ruby>さま、お<ruby>待<rt>ま</rt></ruby>たせしました。<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Bác Suzuki, em xin lỗi đã để bác chờ. Xong việc rồi ạ.)* |
| Suzuki | お<ruby>疲<rt>つか</rt></ruby>れさま。エンジンの<ruby>音<rt>おと</rt></ruby>はどうだった?<br>*(Vất vả cậu rồi. Tiếng máy thế nào?)* |
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>異音<rt>いおん</rt></ruby>はありませんでした。ただ、<ruby>古<rt>ふる</rt></ruby>いオイルでエンジンが<ruby>少<rt>すこ</rt></ruby>し<ruby>重<rt>おも</rt></ruby>くなっていた<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Em đã kiểm tra cùng anh trưởng kỹ thuật. Không có tiếng lạ. Chỉ là có thể dầu cũ làm máy hơi nặng thôi ạ.)* |
| Suzuki | あ、なるほど。だから<ruby>音<rt>おと</rt></ruby>が<ruby>気<rt>き</rt></ruby>になったのね。<br>*(À, ra vậy. Vì thế tôi mới thấy tiếng máy lạ.)* |
| Phong | はい。それから、<ruby>3<rt>みっ</rt></ruby>つご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Vâng. Còn nữa, em có 3 việc xin báo cáo.)* |
| Suzuki | はい、どうぞ。<br>*(Vâng, mời cậu.)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>左前<rt>ひだりまえ</rt></ruby>のタイヤの<ruby>空気<rt>くうき</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>抜<rt>ぬ</rt></ruby>けていました。<ruby>調整<rt>ちょうせい</rt></ruby>しました。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ワイパーのゴムが<ruby>劣化<rt>れっか</rt></ruby>しています。<ruby>次回<rt>じかい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>をおすすめします。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ウォッシャー<ruby>液<rt>えき</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby>です。<br>*(Một, bánh trước trái xì hơi ít. Em đã chỉnh. Hai, gioăng gạt nước xuống cấp. Em đề xuất thay lần sau. Ba, nước rửa kính còn nửa bình.)* |
| Suzuki | わあ、ありがとう。<ruby>細<rt>こま</rt></ruby>かいところまで<ruby>見<rt>み</rt></ruby>てくれて。ワイパー、<ruby>今日<rt>きょう</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いできる?<br>*(Oa, cảm ơn cậu. Xem cả mấy điểm nhỏ. Gạt nước nhờ làm luôn hôm nay được không?)* |
| Phong | はい、すぐご<ruby>用意<rt>ようい</rt></ruby>します。<ruby>10分<rt>じゅっぷん</rt></ruby>ほどお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Vâng, em chuẩn bị ngay. Bác chờ 10 phút ạ.)* |

---

## Tình huống 12 — Phòng nghỉ · 13:00, 整備士長 nhận xét sau bữa trưa

| Vai | Lời thoại |
|---|---|
| Yamada | フォン<ruby>君<rt>くん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>初<rt>はじ</rt></ruby>めての<ruby>一人<rt>ひとり</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>、どうだった?<br>*(Phong, công việc một mình lần đầu hôm nay thế nào?)* |
| Phong | <ruby>緊張<rt>きんちょう</rt></ruby>しました。でも、<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>って、ゆっくりやりました。<br>*(Em hồi hộp ạ. Nhưng em giữ thứ tự, làm từ từ ạ.)* |
| Yamada | よかった<ruby>点<rt>てん</rt></ruby>を<ruby>言<rt>い</rt></ruby>うね。<ruby>一<rt>ひと</rt></ruby>つ、ドレンボルトが<ruby>固<rt>かた</rt></ruby>かったとき、<ruby>無理<rt>むり</rt></ruby>せず<ruby>聞<rt>き</rt></ruby>いた。<ruby>二<rt>ふた</rt></ruby>つ、エンジン<ruby>音<rt>おと</rt></ruby>を<ruby>俺<rt>おれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>かせた。<ruby>三<rt>みっ</rt></ruby>つ、お<ruby>客<rt>きゃく</rt></ruby>さまに<ruby>追加<rt>ついか</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つ、<ruby>整理<rt>せいり</rt></ruby>して<ruby>伝<rt>つた</rt></ruby>えた。<br>*(Nói điểm tốt nhé. Một, lúc ốc cứng, không cố sức mà hỏi. Hai, cho tôi nghe tiếng máy cùng. Ba, đề xuất bổ sung khách 3 việc, gọn gàng.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Yamada | <ruby>反省点<rt>はんせいてん</rt></ruby>は、トルク<ruby>値<rt>ち</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>先<rt>さき</rt></ruby>にマニュアルを<ruby>見<rt>み</rt></ruby>る<ruby>癖<rt>くせ</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けろ。<br>*(Điểm cần rút kinh nghiệm: giá trị lực siết, tạo thói quen tự xem manual trước.)* |
| Phong | はい、<ruby>明日<rt>あした</rt></ruby>からタブレットを<ruby>先<rt>さき</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, từ mai em xem tablet trước ạ.)* |
| Yamada | あと、<ruby>来月<rt>らいげつ</rt></ruby>から、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>大<rt>おお</rt></ruby>きい<ruby>仕事<rt>しごと</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むぞ。<ruby>準備<rt>じゅんび</rt></ruby>しとけ。<br>*(Ngoài ra, từ tháng sau tôi sẽ giao việc lớn hơn. Chuẩn bị đi.)* |
| Phong | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em sẽ cố gắng. Mong anh chỉ bảo ạ.)* |

---

## Tình huống 13 — Ký túc · 20:00, gọi điện về Việt Nam

> Cảnh tiếng Việt — gọi bố ở Hải Phòng (bố làm cơ khí ô tô).

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, hôm nay con lần đầu được tự sửa xe một mình. Honda Fit, thay dầu với lọc dầu. |
| Bố | (tiếng Việt) Ờ, mày tự làm cả à? Xong xuôi không? |
| Phong | (tiếng Việt) Dạ xong bố. Nhưng có một chỗ ốc xả cứng quá, con sợ trờn ren, con hỏi 整備士長. Anh ấy bảo phán đoán đúng. |
| Bố | (tiếng Việt) Chuẩn rồi. Nhiều thằng láo, cứ nghĩ khoẻ là vặn, là hỏng ren ngay. Mày biết dừng lại hỏi là khôn. |
| Phong | (tiếng Việt) Vâng. À, bố ơi, hôm nay con cũng để ý chỗ áp suất lốp, dầu cao su gạt nước, nước rửa kính. Báo khách 3 cái. Khách quyết cho con thay luôn gạt nước. |
| Bố | (tiếng Việt) Tốt. Ở Nhật người ta gọi là báo chuyện nhỏ với khách kiểu đó là gì nhỉ? |
| Phong | (tiếng Việt) Dạ là 提案 (teian, đề xuất) bố ạ. Không phải ép mua, chỉ là báo cho khách biết. |
| Bố | (tiếng Việt) Ờ, học được nghề là tốt. Lần sau bố sang chơi, mày sửa xe cho bố nhé. |
| Phong | (tiếng Việt) Bố sang sớm đi. Tháng sau 整備士長 bảo sẽ giao việc to hơn cho con. Con phải cố. |
| Bố | (tiếng Việt) Cố lên con. À, hôm nay con ăn gì chưa? |
| Phong | (tiếng Việt) Dạ con ăn cơm với canh miso rồi bố. Bố mẹ đi ngủ sớm nhé. |

---

## Đọng lại chương 11

Lần đầu Phong tự sửa một mình. Học mẫu câu **nhận chỉ thị** (一人でやってみるか・はい、やってみます), **chào và nhận lịch khách quen** (お待ちしておりました), **xin xác nhận trước khi đưa xe lên lift** (確認をお願いできますか), **hỏi sempai khi không chắc** (ちょっとお聞きしてもよろしいですか・ねじ山をなめる心配があります), **rút kinh nghiệm tự tra manual** (自分で確かめる癖を付けろ), **báo cáo gọn 3 điểm thêm cho khách** (一つ目・二つ目・三つ目), **mời sempai nghe tiếng máy** (一緒に聞いていただけますか), **tổng kết và nhận phản hồi** (反省点は…). Quan trọng: biết DỪNG để HỎI là dấu hiệu của thợ giỏi.

> Từ vựng & mẫu câu chương này: 一人で作業・オイル交換・フィルター・ドレンボルト・ドレンパッキン・ねじ山をなめる・メガネレンチ・トルクレンチ・Oリング・密閉・規定通り・空気圧・劣化・足跡・異音・提案・反省点・癖を付ける・準備しとけ・お待ちしておりました

---

## Bí quyết chương

- **Solo lần đầu = bảng kiểm viết tay**: dù việc quen, lần đầu một mình phải viết note A5 các bước + dụng cụ. Tránh thiếu sót.
- **Khi ốc cứng — DỪNG, HỎI, đổi dụng cụ**: chuyển từ cờ-lê thường sang メガネレンチ (cờ-lê đầu vòng, ôm trọn 6 cạnh), đặt trọng lượng từ từ. KHÔNG dùng lực giật → mất ren, hỏng cả ốc xả → khủng hoảng.
- **Đệm ốc xả (ドレンパッキン) là 1-lần**: mỗi lần thay dầu thay luôn đệm mới. Không tái sử dụng.
- **Bôi dầu mới lên Oリング** trước khi gắn lọc: tăng độ kín, dễ tháo lần sau.
- **Tự tra manual trước khi hỏi**: thợ Nhật ghét nhất câu hỏi mà manual có sẵn. Có tablet 整備マニュアル ngay tại workshop.
- **Báo bổ sung kiểu 提案 (teian)**: 3 điểm tối đa, đánh số「一つ目・二つ目・三つ目」 — khách dễ hiểu, không thấy bị ép.
- **Lau dấu chân, đưa ghế về vị trí cũ, lót giấy che ghế** trước khi vào xe khách — quy chuẩn接客 garage Nhật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 一人 | ひとり | NHẤT NHÂN | một mình |
| 作業 | さぎょう | TÁC NGHIỆP | công việc, thao tác |
| 指示 | しじ | CHỈ THỊ | chỉ thị |
| 燃費 | ねんぴ | NHIÊN PHÍ | mức tiêu hao xăng |
| 柔らかい | やわらかい | NHU | mềm |
| フィルター | ふぃるたー | — | lọc |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| ドレンボルト | どれんぼると | — | ốc xả dầu |
| ドレンパッキン | どれんぱっきん | — | đệm ốc xả |
| ジャッキ | じゃっき | — | kích |
| ウマ | うま | — | đôn chống |
| ウエス | うえす | — | giẻ lau |
| 緊張 | きんちょう | KHẨN TRƯƠNG | hồi hộp |
| 基本 | きほん | CƠ BẢN | cơ bản |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 守る | まもる | THỦ | tuân thủ |
| 毎回 | まいかい | MỖI HỒI | mỗi lần |
| つぶれる | つぶれる | — | bị bẹp |
| 密閉 | みっぺい | MẬT BẾ | đệm kín |
| 本日 | ほんじつ | BẢN NHẬT | hôm nay (lịch sự) |
| 待合室 | まちあいしつ | ĐÃI HỢP THẤT | phòng chờ |
| 異音 | いおん | DỊ ÂM | tiếng lạ |
| 位置 | いち | VỊ TRÍ | vị trí |
| リフトポイント | りふとぽいんと | — | điểm kê lift |
| 切り欠き | きりかき | — | dấu khắc, khắc lõm |
| 四隅 | よすみ | TỨ NGUNG | bốn góc |
| 安定 | あんてい | AN ĐỊNH | ổn định |
| 固い | かたい | CỐ | cứng |
| 力 | ちから | LỰC | sức |
| 判断 | はんだん | PHÁN ĐOÁN | phán đoán |
| メガネレンチ | めがねれんち | — | cờ-lê đầu vòng |
| 体重 | たいじゅう | THỂ TRỌNG | trọng lượng cơ thể |
| 一気に | いっきに | NHẤT KHÍ | một mạch |
| 緩む | ゆるむ | HOÃN | lỏng ra |
| 瞬間 | しゅんかん | THUẤN GIAN | khoảnh khắc |
| 勢い | いきおい | THẾ | đà, mạnh |
| 避ける | よける | TỴ | tránh |
| 真っ黒 | まっくろ | CHÂN HẮC | đen kịt |
| こぼす | こぼす | — | làm rơi vãi |
| 拭く | ふく | THỨC | lau |
| Oリング | おーりんぐ | — | gioăng O |
| 塗る | ぬる | ĐỒ | bôi |
| 正解 | せいかい | CHÍNH GIẢI | đúng |
| 締める | しめる | TIẾT | siết |
| 規定 | きてい | QUY ĐỊNH | quy định |
| 追加 | ついか | TRUY GIA | thêm |
| トルクレンチ | とるくれんち | — | cờ-lê lực |
| マニュアル | まにゅある | — | sổ tay (manual) |
| 確かめる | たしかめる | XÁC | kiểm tra |
| 癖 | くせ | TÍCH | thói quen |
| 始動 | しどう | THỦY ĐỘNG | khởi động |
| アイドリング | あいどりんぐ | — | nổ cầm chừng |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 軽い | かるい | KHINH | nhẹ |
| ワイパー | わいぱー | — | gạt nước |
| ウォッシャー液 | うぉっしゃーえき | DỊCH | nước rửa kính |
| 空気圧 | くうきあつ | KHÔNG KHÍ ÁP | áp suất không khí |
| 補充 | ほじゅう | BỔ SUNG | bổ sung |
| 調整 | ちょうせい | ĐIỀU CHỈNH | điều chỉnh |
| 漏れ | もれ | LẬU | rò rỉ |
| 戻す | もどす | LỆ | đưa về |
| 足跡 | あしあと | TÚC TÍCH | dấu chân |
| 完了 | かんりょう | HOÀN LIỄU | hoàn thành |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 劣化 | れっか | LIỆT HOÁ | xuống cấp |
| 反省 | はんせい | PHẢN TỈNH | suy ngẫm, rút kinh nghiệm |
| 整理する | せいりする | CHỈNH LÝ | sắp xếp, gọn gàng |
| 用意 | ようい | DỤNG Ý | chuẩn bị |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (843000012, 800000043, NULL, 'markdown_book', 'T12. Tổng kết năm 1 — Đậu N4 và bước tiếp theo (1年目総括・N4合格)', '# Sách thực tập sinh ô tô · T12. Tổng kết năm 1 — Đậu N4 và bước tiếp theo (1年目総括・N4合格)

> **Mục tiêu nhân vật:** Phong (22 tuổi, Hải Phòng), TTS 自動車整備 năm 1 tại garage Toyota Aichi. Học các mẫu hội thoại tiếng Nhật khi: nhận tin đậu N4 và báo cấp trên, dự buổi tổng kết năm với 整備士長 và 工場長, được giao việc lớn hơn, lên kế hoạch năm 2 (mục tiêu自動車整備士3級), về thăm nhà cuối năm (一時帰国) và chia sẻ với gia đình.

---

## Bối cảnh

Tháng 3 năm 2026. Phong đã tròn 1 năm tại garage Toyota系 Aichi. Tháng 1 thi JLPT N4 — kết quả về cuối tháng 3. Sáng nay Phong xem kết quả online: đậu. 整備士長 Yamada và 工場長 Sato đã lên kế hoạch buổi tổng kết năm cho TTS để chính thức giao việc cấp 2 (sửa nhỏ một mình, bắt đầu hỗ trợ車検 — kiểm định) và đặt mục tiêu thi自動車整備士3級. Chương này tập trung mẫu câu khi: báo tin vui, nhận đánh giá năm, nhận trách nhiệm mới, lên kế hoạch cụ thể, và về thăm nhà 10 ngày đầu tháng 4.

---

## Tình huống 1 — Ký túc · 7:30, xem kết quả N4 trên web

| Vai | Lời thoại |
|---|---|
| Phong | (tự nói) <ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>だった…(mở web JEES) <ruby>受験<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>を<ruby>入<rt>い</rt></ruby>れて、パスワード…<br>*(Công bố kết quả là hôm nay… Nhập số báo danh, mật khẩu…)* |
| Phong | (nhìn màn hình) <ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Đậu!)* |
| Phong | (vung tay) よっしゃー!<ruby>合格<rt>ごうかく</rt></ruby>です!<br>*(Yes! Đậu rồi!)* |
| Phong | (gọi điện cho mẹ — tiếng Việt) Mẹ ơi! Con đậu N4 rồi! |
| Mẹ | (tiếng Việt) Hả? Đậu thật á con? Chúc mừng con! Mẹ mừng quá! |
| Phong | (tiếng Việt) Vâng mẹ. Điểm 124/180. Vừa đủ. Hôm nay con báo整備士長 luôn. |
| Mẹ | (tiếng Việt) Cố lên con. Mẹ tự hào lắm. |

---

## Tình huống 2 — Garage, sáng đầu ca · 8:20, báo整備士長

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、おはようございます。<br>*(Anh trưởng kỹ thuật, chào buổi sáng ạ.)* |
| Yamada | おはよう、フォン<ruby>君<rt>くん</rt></ruby>。<br>*(Chào, Phong.)* |
| Phong | あのう、ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>今日<rt>きょう</rt></ruby>、N4の<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<br>*(Dạ, em có việc xin báo cáo. Hôm nay kết quả N4 đã ra ạ.)* |
| Yamada | おお、どうだった?<br>*(Ồ, thế nào?)* |
| Phong | おかげさまで、<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Nhờ ơn mọi người, em đã đậu ạ.)* |
| Yamada | おめでとう!よかったな。<ruby>頑張<rt>がんば</rt></ruby>った<ruby>甲斐<rt>かい</rt></ruby>があったな。<br>*(Chúc mừng! May quá. Cố gắng có thành quả rồi.)* |
| Phong | ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Em cảm ơn ạ. Nhờ mọi người ạ.)* |
| Yamada | あとで<ruby>工場長<rt>こうじょうちょう</rt></ruby>にも<ruby>伝<rt>つた</rt></ruby>えて。<ruby>14時<rt>じゅうよじ</rt></ruby>から<ruby>1年目<rt>いちねんめ</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>もあるから、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>話<rt>はな</rt></ruby>そう。<br>*(Lát nữa báo cả ông giám đốc xưởng. 14 giờ có buổi phỏng vấn 1 năm, nói luôn lúc đó.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Phòng nghỉ · 10:30, đồng nghiệp chúc mừng

| Vai | Lời thoại |
|---|---|
| Carlos | フォン!N4<ruby>合格<rt>ごうかく</rt></ruby>だってね、おめでとう!<br>*(Phong! Đậu N4 hả, chúc mừng!)* |
| Phong | カルロスさん、ありがとうございます。カルロスさんが<ruby>助<rt>たす</rt></ruby>けてくれたおかげです。<br>*(Anh Carlos, em cảm ơn. Là nhờ anh giúp em ạ.)* |
| Carlos | いやいや、フォンが<ruby>頑張<rt>がんば</rt></ruby>ったからだよ。<ruby>次<rt>つぎ</rt></ruby>はN3?<br>*(Đâu có, là do Phong cố gắng. Tiếp là N3?)* |
| Phong | はい、<ruby>来年<rt>らいねん</rt></ruby><ruby>12月<rt>じゅうにがつ</rt></ruby>にN3を<ruby>受<rt>う</rt></ruby>けます。あと、<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby>も<ruby>挑戦<rt>ちょうせん</rt></ruby>したいです。<br>*(Vâng, tháng 12 năm sau em thi N3. Và em cũng muốn thử thi整備士 cấp 3.)* |
| Carlos | おっ、いいね。<ruby>3級<rt>さんきゅう</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby>もあるから、<ruby>準備<rt>じゅんび</rt></ruby><ruby>大変<rt>たいへん</rt></ruby>だぞ。<br>*(Ô, hay đó. Cấp 3 có thi thực hành nữa, chuẩn bị vất vả đấy.)* |
| Phong | はい、<ruby>覚悟<rt>かくご</rt></ruby>しています。<br>*(Vâng, em đã sẵn sàng ạ.)* |
| 同僚 Tanigawa | フォン<ruby>君<rt>くん</rt></ruby>、おめでとう。<ruby>1年<rt>いちねん</rt></ruby>でN5からN4はすごいよ。<br>*(Phong, chúc mừng. 1 năm từ N5 lên N4 là giỏi đấy.)* |
| Phong | ありがとうございます。まだまだです。<br>*(Em cảm ơn ạ. Em còn kém lắm ạ.)* |

---

## Tình huống 4 — Phòng giám đốc · 14:00, 工場長 và整備士長 buổi tổng kết

| Vai | Lời thoại |
|---|---|
| Tanaka (工場長) | フォン<ruby>君<rt>くん</rt></ruby>、どうぞ<ruby>座<rt>すわ</rt></ruby>って。<br>*(Phong, mời ngồi.)* |
| Phong | しつれいします。<br>*(Em xin phép.)* |
| Tanaka | まず、N4<ruby>合格<rt>ごうかく</rt></ruby>、おめでとう。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Trước hết, chúc mừng đậu N4. Đã cố gắng tốt.)* |
| Phong | ありがとうございます。<ruby>工場<rt>こうじょう</rt></ruby>のみなさんのおかげです。<br>*(Em cảm ơn ạ. Nhờ mọi người ở xưởng ạ.)* |
| Yamada | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、フォン<ruby>君<rt>くん</rt></ruby>の<ruby>1年目<rt>いちねんめ</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby>をお<ruby>伝<rt>つた</rt></ruby>えします。<br>*(Anh giám đốc, em xin báo cáo đánh giá năm 1 của Phong.)* |
| Tanaka | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, anh nói đi.)* |
| Yamada | <ruby>技術面<rt>ぎじゅつめん</rt></ruby>では、オイル<ruby>交換<rt>こうかん</rt></ruby>・タイヤ<ruby>交換<rt>こうかん</rt></ruby>・バッテリー<ruby>交換<rt>こうかん</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>でできるようになりました。<ruby>姿勢<rt>しせい</rt></ruby><ruby>面<rt>めん</rt></ruby>では、<ruby>分<rt>わ</rt></ruby>からないときに<ruby>無理<rt>むり</rt></ruby>せず<ruby>聞<rt>き</rt></ruby>く<ruby>姿勢<rt>しせい</rt></ruby>がいいです。<ruby>接客<rt>せっきゃく</rt></ruby>もできるようになりました。<br>*(Về kỹ thuật, đã làm được thay dầu, thay lốp, thay battery một mình. Về thái độ, lúc không hiểu không cố mà chịu hỏi, tốt. Cũng đã biết tiếp khách.)* |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしいね。<br>*(Tuyệt vời nhỉ.)* |
| Yamada | <ruby>改善点<rt>かいぜんてん</rt></ruby>は、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>先<rt>さき</rt></ruby>にマニュアルを<ruby>確認<rt>かくにん</rt></ruby>する<ruby>癖<rt>くせ</rt></ruby>。あと、<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>の<ruby>語彙<rt>ごい</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やすこと。<br>*(Điểm cần cải thiện: thói quen tự xem manual trước. Và mở rộng từ vựng thuật ngữ chuyên ngành.)* |
| Phong | はい、<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>めます。<br>*(Vâng, em xin tiếp nhận ạ.)* |

---

## Tình huống 5 — Phòng giám đốc · 14:15, 工場長 giao việc mới

| Vai | Lời thoại |
|---|---|
| Tanaka | フォン<ruby>君<rt>くん</rt></ruby>、<ruby>2年目<rt>にねんめ</rt></ruby>から、<ruby>新<rt>あたら</rt></ruby>しい<ruby>仕事<rt>しごと</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>みたい。<br>*(Phong, từ năm 2 tôi muốn giao công việc mới.)* |
| Phong | はい、<ruby>何<rt>なん</rt></ruby>でしょうか?<br>*(Vâng, là việc gì ạ?)* |
| Tanaka | <ruby>3<rt>みっ</rt></ruby>つある。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>補助<rt>ほじょ</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>定期<rt>ていき</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>の<ruby>一人<rt>ひとり</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>実習生<rt>じっしゅうせい</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>。<br>*(Có 3 việc. Một, hỗ trợ車検 kiểm định. Hai, tự đứng一人 lo bảo dưỡng định kỳ. Ba, hướng dẫn em đàn em TTS Việt Nam.)* |
| Phong | <ruby>後輩<rt>こうはい</rt></ruby>?<br>*(Đàn em ạ?)* |
| Tanaka | うん、<ruby>5月<rt>ごがつ</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しいベトナム<ruby>人<rt>じん</rt></ruby>が<ruby>1人<rt>ひとり</rt></ruby><ruby>来<rt>く</rt></ruby>る。<ruby>名前<rt>なまえ</rt></ruby>は<ruby>君<rt>きみ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じハイフォン<ruby>出身<rt>しゅっしん</rt></ruby>。<br>*(Ừ, tháng 5 sẽ có 1 người Việt mới đến. Cũng người Hải Phòng như cậu.)* |
| Phong | え、ハイフォン!<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Ơ, Hải Phòng! Em mừng quá.)* |
| Yamada | <ruby>君<rt>きみ</rt></ruby>が<ruby>1年前<rt>いちねんまえ</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>だったろう?<ruby>後輩<rt>こうはい</rt></ruby>にも<ruby>同<rt>おな</rt></ruby>じ<ruby>気持<rt>きも</rt></ruby>ちがある。<ruby>君<rt>きみ</rt></ruby>が<ruby>支<rt>ささ</rt></ruby>えてあげて。<br>*(Cậu 1 năm trước, vất vả lắm phải không? Đàn em cũng cảm giác như vậy. Cậu giúp em ấy nhé.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Vâng, nhất định em sẽ giúp ạ.)* |
| Tanaka | <ruby>給料<rt>きゅうりょう</rt></ruby>も、<ruby>4月<rt>しがつ</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がるよ。<ruby>1万<rt>いちまん</rt></ruby><ruby>5千円<rt>ごせんえん</rt></ruby>アップ。<br>*(Lương cũng từ tháng 4 sẽ lên chút. Tăng 15.000 yên.)* |
| Phong | ありがとうございます。<ruby>家族<rt>かぞく</rt></ruby>に<ruby>送金<rt>そうきん</rt></ruby>できる<ruby>金額<rt>きんがく</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えます。<br>*(Em cảm ơn ạ. Số tiền gửi về gia đình sẽ tăng lên.)* |

---

## Tình huống 6 — Phòng giám đốc · 14:30, hỏi về車検

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>補助<rt>ほじょ</rt></ruby>、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Anh trưởng kỹ thuật, hỗ trợ车检 cụ thể là làm gì ạ?)* |
| Yamada | まず、<ruby>下回<rt>したまわ</rt></ruby>りの<ruby>洗浄<rt>せんじょう</rt></ruby>。それから、ライト、ワイパー、タイヤ、ブレーキの<ruby>点検<rt>てんけん</rt></ruby>。<ruby>記録<rt>きろく</rt></ruby>シートの<ruby>記入<rt>きにゅう</rt></ruby>も。<br>*(Trước hết, rửa gầm. Sau đó, kiểm tra đèn, gạt nước, lốp, phanh. Điền cả phiếu ghi nhận.)* |
| Phong | <ruby>記録<rt>きろく</rt></ruby>シートは、<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>書<rt>か</rt></ruby>くんですよね。<ruby>漢字<rt>かんじ</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かな…<br>*(Phiếu ghi nhận viết bằng tiếng Nhật phải không ạ. Kanji không biết có ổn không…)* |
| Yamada | <ruby>専用<rt>せんよう</rt></ruby>の<ruby>用紙<rt>ようし</rt></ruby>があって、ほぼチェック<ruby>欄<rt>らん</rt></ruby>。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。あと、<ruby>2年目<rt>にねんめ</rt></ruby>から<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>の<ruby>勉強会<rt>べんきょうかい</rt></ruby>もする。<br>*(Có giấy chuyên dụng, gần như ô tick thôi. Yên tâm. Năm 2 cũng có lớp học thuật ngữ.)* |
| Phong | <ruby>勉強会<rt>べんきょうかい</rt></ruby>!<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(Lớp học! Em mong đợi quá.)* |
| Tanaka | <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>30分<rt>さんじゅっぷん</rt></ruby>。<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>扱<rt>あつか</rt></ruby>いだから<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>出<rt>で</rt></ruby>る。<br>*(Mỗi thứ Sáu chiều, 30 phút. Tính là tăng ca nên có lương.)* |

---

## Tình huống 7 — Phòng giám đốc · 14:45, kế hoạch nghỉ về VN

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、もう<ruby>一<rt>ひと</rt></ruby>つ、お<ruby>願<rt>ねが</rt></ruby>いがあります。<br>*(Anh giám đốc, em còn một việc xin nhờ ạ.)* |
| Tanaka | はい、<ruby>何<rt>なん</rt></ruby>?<br>*(Vâng, gì cơ?)* |
| Phong | <ruby>4月<rt>しがつ</rt></ruby>の<ruby>初<rt>はじ</rt></ruby>めに、<ruby>10日間<rt>とおかかん</rt></ruby>ほど<ruby>一時<rt>いちじ</rt></ruby><ruby>帰国<rt>きこく</rt></ruby>させていただきたいです。<br>*(Đầu tháng 4, em xin được về Việt Nam khoảng 10 ngày ạ.)* |
| Tanaka | おお、<ruby>1年<rt>いちねん</rt></ruby>ぶりだね。ご<ruby>家族<rt>かぞく</rt></ruby>も<ruby>会<rt>あ</rt></ruby>いたいだろう。<br>*(Ồ, 1 năm rồi nhỉ. Gia đình cũng muốn gặp.)* |
| Phong | はい。<ruby>母<rt>はは</rt></ruby>が<ruby>誕生日<rt>たんじょうび</rt></ruby>です。<ruby>父<rt>ちち</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>し<ruby>体調<rt>たいちょう</rt></ruby>を<ruby>崩<rt>くず</rt></ruby>していて、<ruby>顔<rt>かお</rt></ruby>を<ruby>見<rt>み</rt></ruby>せたいです。<br>*(Vâng. Mẹ em sinh nhật. Bố em cũng hơi yếu, em muốn về thăm.)* |
| Tanaka | <ruby>大事<rt>だいじ</rt></ruby>なことだ。<ruby>監理団体<rt>かんりだんたい</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>して、<ruby>有給<rt>ゆうきゅう</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせて<ruby>取<rt>と</rt></ruby>ろう。<br>*(Là việc quan trọng. Phối hợp với 監理団体, kết hợp với phép có lương mà nghỉ.)* |
| Yamada | <ruby>有給<rt>ゆうきゅう</rt></ruby>は<ruby>1年<rt>いちねん</rt></ruby>で<ruby>10日<rt>とおか</rt></ruby><ruby>付与<rt>ふよ</rt></ruby>される。ちょうど<ruby>使<rt>つか</rt></ruby>えるな。<br>*(Phép có lương cấp 10 ngày/năm. Vừa đủ dùng nhỉ.)* |
| Phong | ありがとうございます。<ruby>新<rt>あたら</rt></ruby>しい<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来<rt>く</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Em cảm ơn ạ. Em sẽ về trước khi đàn em mới đến ạ.)* |
| Tanaka | うん、それがいい。<br>*(Ừ, vậy hay đấy.)* |

---

## Tình huống 8 — Cuối buổi · 15:30, viết kế hoạch năm 2

*Phong ngồi bàn, viết bằng tiếng Nhật trên A4 — vừa luyện viết vừa lên kế hoạch.*

| Vai | Lời thoại |
|---|---|
| Yamada | (đi ngang) <ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてる?<br>*(Đang viết gì đó?)* |
| Phong | <ruby>2年目<rt>にねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>書<rt>か</rt></ruby>いています。<ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Em đang viết mục tiêu năm 2 ạ. Anh trưởng kỹ thuật xem giúp em được không?)* |
| Yamada | (xem) ええと…<ruby>1<rt>いち</rt></ruby>、<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>。<ruby>2<rt>に</rt></ruby>、N3<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>補助<rt>ほじょ</rt></ruby>を<ruby>50台<rt>ごじゅうだい</rt></ruby>。<ruby>4<rt>よん</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>指導<rt>しどう</rt></ruby>。<ruby>5<rt>ご</rt></ruby>、<ruby>毎月<rt>まいつき</rt></ruby><ruby>10万円<rt>じゅうまんえん</rt></ruby><ruby>送金<rt>そうきん</rt></ruby>。<br>*(Nào… 1. Đậu chỉnh bị sĩ cấp 3. 2. Đậu N3. 3. Hỗ trợ車検 50 xe. 4. Hướng dẫn đàn em. 5. Mỗi tháng gửi về 100.000 yên.)* |
| Yamada | いいね。でも<ruby>1<rt>いち</rt></ruby>と<ruby>2<rt>に</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>年<rt>とし</rt></ruby>はきついぞ。<br>*(Tốt đấy. Nhưng 1 và 2 cùng năm thì căng đấy.)* |
| Phong | <ruby>整備士<rt>せいびし</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby>は<ruby>10月<rt>じゅうがつ</rt></ruby>、N3は<ruby>12月<rt>じゅうにがつ</rt></ruby>。<ruby>2ヶ月<rt>にかげつ</rt></ruby><ruby>空<rt>あ</rt></ruby>くから、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(整備士 cấp 3 tháng 10, N3 tháng 12. Cách 2 tháng nên em nghĩ ổn.)* |
| Yamada | おお、ちゃんと<ruby>調<rt>しら</rt></ruby>べているな。じゃ、<ruby>3<rt>さん</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>減<rt>へ</rt></ruby>らせ。<ruby>50台<rt>ごじゅうだい</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>。<ruby>30台<rt>さんじゅうだい</rt></ruby>でいい。<br>*(Ồ, có tìm hiểu đấy. Vậy mục 3 giảm chút đi. 50 xe là không khả thi. 30 xe được rồi.)* |
| Phong | <ruby>30台<rt>さんじゅうだい</rt></ruby>に<ruby>直<rt>なお</rt></ruby>します。ありがとうございます。<br>*(Em sửa thành 30 xe. Em cảm ơn ạ.)* |

---

## Tình huống 9 — Nhà Carlos · Chủ nhật, 12:00, ăn mừng

*Marina lại mời Phong và thêm Tanigawa đến nhà ăn cơm ăn mừng đậu N4.*

| Vai | Lời thoại |
|---|---|
| Marina | フォン、<ruby>合格<rt>ごうかく</rt></ruby>おめでとう!<ruby>今日<rt>きょう</rt></ruby>はお<ruby>祝<rt>いわ</rt></ruby>い。<br>*(Phong, chúc mừng đậu! Hôm nay ăn mừng nhé.)* |
| Phong | マリナさん、いつもありがとうございます。<br>*(Chị Marina, lúc nào cũng làm phiền chị ạ.)* |
| Carlos | カンパーイ!<br>*(Cạn ly!)* |
| Phong | カンパーイ!N3も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cạn! N3 em cũng cố gắng ạ.)* |
| Tanigawa | フォン<ruby>君<rt>くん</rt></ruby>、<ruby>来月<rt>らいげつ</rt></ruby>ベトナムに<ruby>帰<rt>かえ</rt></ruby>るんだって?<br>*(Phong, tháng sau về Việt Nam hả?)* |
| Phong | はい、<ruby>10日間<rt>とおかかん</rt></ruby>。<ruby>母<rt>はは</rt></ruby>の<ruby>誕生日<rt>たんじょうび</rt></ruby>です。<br>*(Vâng, 10 ngày. Sinh nhật mẹ em ạ.)* |
| Marina | お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>喜<rt>よろこ</rt></ruby>ぶね。お<ruby>土産<rt>みやげ</rt></ruby>、<ruby>何<rt>なに</rt></ruby><ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>る?<br>*(Mẹ sẽ vui lắm. Mang quà gì về?)* |
| Phong | <ruby>名古屋<rt>なごや</rt></ruby>のお<ruby>菓子<rt>かし</rt></ruby>、お<ruby>茶<rt>ちゃ</rt></ruby>、それから<ruby>母<rt>はは</rt></ruby>に<ruby>化粧水<rt>けしょうすい</rt></ruby>を<ruby>買<rt>か</rt></ruby>いました。<br>*(Bánh kẹo Nagoya, trà, em mua thêm nước hoa hồng cho mẹ ạ.)* |
| Marina | <ruby>素敵<rt>すてき</rt></ruby>ね。お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>幸<rt>しあわ</rt></ruby>せ。<br>*(Tuyệt vời. Mẹ sẽ hạnh phúc.)* |

---

## Tình huống 10 — Sân bay Chubu · 4/4, 9:00, trước khi lên máy bay

| Vai | Lời thoại |
|---|---|
| Phong | (gọi điện報告 Yamada) <ruby>整備士長<rt>せいびしちょう</rt></ruby>、これからチェックインします。<br>*(Anh trưởng kỹ thuật, em sắp check-in ạ.)* |
| Yamada | お、<ruby>気<rt>き</rt></ruby>をつけて。ご<ruby>家族<rt>かぞく</rt></ruby>によろしく。<br>*(Ồ, cẩn thận nhé. Gửi lời chào gia đình.)* |
| Phong | はい、ありがとうございます。<ruby>4月<rt>しがつ</rt></ruby><ruby>14日<rt>じゅうよっか</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Vâng, em cảm ơn ạ. Em sẽ quay lại ngày 14/4.)* |
| Yamada | <ruby>新<rt>あたら</rt></ruby>しい<ruby>後輩<rt>こうはい</rt></ruby>、<ruby>5月<rt>ごがつ</rt></ruby><ruby>10日<rt>とおか</rt></ruby><ruby>来日<rt>らいにち</rt></ruby>だ。それまでに<ruby>体<rt>からだ</rt></ruby>と<ruby>気持<rt>きも</rt></ruby>ちを<ruby>整<rt>ととの</rt></ruby>えとけ。<br>*(Đàn em mới đến Nhật ngày 10/5. Trước đó chỉnh lại sức khoẻ và tinh thần.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず。<br>*(Vâng, chắc chắn ạ.)* |
| Yamada | じゃ、いってらっしゃい。<br>*(Vậy lên đường đi nhé.)* |
| Phong | いってまいります。<br>*(Em đi ạ.)* |

---

## Tình huống 11 — Sân bay Nội Bài · 4/4, 18:00, gặp lại gia đình

> Cảnh tiếng Việt — đón ở sảnh.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Phong! Mẹ đây con! |
| Phong | (tiếng Việt) Mẹ! Bố! Em! Con về rồi. |
| Bố | (tiếng Việt) Mày béo lên hay sao mà mặt khác đi nhỉ. |
| Phong | (tiếng Việt) Béo gì bố, cao thêm chút thôi. Cơm Nhật ngon mà. |
| Em gái | (tiếng Việt) Anh, anh nói tiếng Nhật cho em nghe đi! |
| Phong | (tiếng Việt) Ờ. (chuyển tiếng Nhật) ただいま、<ruby>家族<rt>かぞく</rt></ruby>のみんな。お<ruby>父<rt>とう</rt></ruby>さん、お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>会<rt>あ</rt></ruby>えて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Con về rồi, cả nhà ơi. Bố, mẹ, gặp lại thật vui.)* |
| Em gái | (tiếng Việt) Oa, nghe như anime á! |
| Mẹ | (tiếng Việt) Thôi về thôi, mẹ nấu canh chua cá lóc đợi mày từ sáng. |
| Phong | (tiếng Việt) Trời, đúng món con nhớ. Mẹ ơi, con N4 này. (cười khoe chứng chỉ in tạm) |

---

## Tình huống 12 — Bếp nhà · 4/4, 21:00, cơm tối, kể chuyện garage

| Vai | Lời thoại |
|---|---|
| Bố | (tiếng Việt) Kể bố nghe, sempai bên đó dạy mày thế nào? |
| Phong | (tiếng Việt) Bố ạ, 整備士長 Yamada nghiêm lắm. Ổng không bao giờ làm hộ. Lúc con không biết, ổng bảo "tự xem manual đi". Lúc đầu con ức lắm. |
| Bố | (tiếng Việt) Ờ, bố làm cơ khí 30 năm, sempai giỏi là sempai không làm hộ. Mày phải biết ơn ổng. |
| Phong | (tiếng Việt) Vâng. Bây giờ con hiểu rồi. Có cái này bố nghe nha — bên Nhật làm gì cũng phải đúng thứ tự. Tháo battery thì âm trước, lắp thì dương trước. Ốc xả phải đúng lực 40 Niu-tơn. |
| Bố | (tiếng Việt) Hay đấy. Bên mình ít người chú trọng. Mày học được cái đó là quý. |
| Mẹ | (tiếng Việt) Thôi, ăn cơm đi. Bao giờ phải sang lại con? |
| Phong | (tiếng Việt) Dạ 14/4. Tháng 5 có em mới sang, người Hải Phòng. Con phải làm sempai dạy lại. |
| Bố | (tiếng Việt) Hay. Mày làm sempai rồi nhỉ. Nhớ đối xử như Yamada đối xử với mày — nghiêm nhưng tử tế. |
| Phong | (tiếng Việt) Vâng bố. À, con để dành tiền gửi mẹ tháng này 12 triệu. Tháng sau lương tăng, gửi được nhiều hơn. |
| Mẹ | (tiếng Việt) Ăn uống đầy đủ vào, đừng tiết kiệm quá. |
| Phong | (tiếng Việt) Dạ. Mẹ ơi, con thèm canh này mất. |

---

## Tình huống 13 — Sân bay Nội Bài · 14/4, 8:00, lên máy bay quay Nhật

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Phong, cẩn thận nhé. Đừng ốm. |
| Bố | (tiếng Việt) Cố gắng. Năm sau bố mẹ cố đi sang chơi. |
| Phong | (tiếng Việt) Vâng. Con sẽ cố thi cấp 3 ngành整備士. Bố biết không, có chứng chỉ đấy là gần như thợ chính. |
| Bố | (tiếng Việt) Bố tự hào. Đi đi, sắp đến giờ. |
| Phong | (tiếng Việt) Bố mẹ về cẩn thận. Em (ôm em gái), năm sau anh về anh mua điện thoại mới cho. |
| Em gái | (tiếng Việt) Yêu anh! |
| Phong | (chuyển tiếng Nhật, tự nói khi đi vào cổng) いってきます。<ruby>2年目<rt>にねんめ</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Mình đi đây. Năm 2, cố gắng nào.)* |

---

## Tình huống 14 — Phòng garage Aichi · 14/4, 20:00, quay lại Nhật, báo整備士長

| Vai | Lời thoại |
|---|---|
| Phong | (gọi điện) <ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby><ruby>戻<rt>もど</rt></ruby>りました。<br>*(Anh trưởng kỹ thuật, em đã về an toàn ạ.)* |
| Yamada | おかえり、<ruby>疲<rt>つか</rt></ruby>れただろう。<br>*(Mừng cậu về, mệt nhỉ.)* |
| Phong | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby>から<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em ổn ạ. Từ mai em cố gắng ạ.)* |
| Yamada | <ruby>明日<rt>あした</rt></ruby>、ゆっくり<ruby>来<rt>き</rt></ruby>ていいよ。<ruby>10時<rt>じゅうじ</rt></ruby>からでいい。<br>*(Mai cứ đến từ từ. 10 giờ là được.)* |
| Phong | え、いいんですか?<br>*(Ơ, có được không ạ?)* |
| Yamada | <ruby>長旅<rt>ながたび</rt></ruby>だったろ。<ruby>体<rt>からだ</rt></ruby>、<ruby>大事<rt>だいじ</rt></ruby>に。<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>もあるからな。<br>*(Hành trình dài. Giữ sức. Còn phải chuẩn bị đón đàn em nữa.)* |
| Phong | はい、ありがとうございます。<ruby>明日<rt>あした</rt></ruby><ruby>10時<rt>じゅうじ</rt></ruby>に<ruby>出勤<rt>しゅっきん</rt></ruby>します。お<ruby>休<rt>やす</rt></ruby>みなさい。<br>*(Vâng, em cảm ơn ạ. Mai 10 giờ em đến. Chúc anh ngủ ngon ạ.)* |
| Yamada | お<ruby>休<rt>やす</rt></ruby>み。<br>*(Ngủ ngon.)* |

---

## Đọng lại chương 12

Cuối năm 1, Phong tổng kết được nhiều điều — học mẫu câu **báo tin vui & khiêm tốn** (おかげさまで、合格しました・皆さんのおかげです), **nhận đánh giá năm** (改善点は…・受け止めます), **nhận trách nhiệm mới** (必ず支えます), **xin nghỉ một thời gian dài lịch sự** (一時帰国させていただきたいです), **viết kế hoạch số hoá** (目標を5つ・台数と時期), **chào sempai khi đi và về** (いってまいります・無事戻りました), **giao tiếp đàn em sắp sang** (必ず支えてあげて), và **cảnh tiếng Việt cuối cùng**: kể chuyện sempai với bố — hai thế hệ thợ cơ khí gặp nhau qua câu chuyện về "sempai không làm hộ". Kết thúc năm 1 với 3 nền tảng: tay nghề (1人 sửa nhỏ) + chứng chỉ (N4) + vai trò (sắp làm sempai).

> Từ vựng & mẫu câu chương này: 結果発表・合格・おかげさまで・頑張った甲斐・1年目面談・評価・改善点・受け止めます・車検・補助・定期点検・後輩の指導・給料アップ・送金・一時帰国・有給・付与・目標・自動車整備士3級・勉強会・無事戻りました・いってまいります・お休みなさい

---

## Bí quyết chương

- **JLPT kết quả về tháng 3 (thi tháng 12) — báo việc làm ngay**: báo cấp trên là报連相 cơ bản, đồng nghiệp sẽ chúc mừng và đặt câu hỏi về plan tiếp theo. Đừng giấu.
- **Tổng kết năm 1 ở garage Nhật**: thường 整備士長 và 工場長 đánh giá thành 2 mảng — **技術面** (kỹ thuật) + **姿勢面** (thái độ). Thái độ quan trọng hơn kỹ thuật.
- **Tăng lương năm 2**: TTS thường tăng 1-2万円/tháng từ năm 2. Khoản này gần như toàn bộ gửi về VN.
- **一時帰国 (về thăm nhà tạm thời)**: TTS được về 10-14 ngày/năm sau năm 1, dùng kết hợp 有給 (10 ngày phép có lương đầu năm 2) + cuối tuần. Đăng ký qua監理団体 ít nhất 1 tháng trước.
- **車検 (kiểm định bắt buộc)**: xe Nhật 2 năm 1 lần. Năm 2 TTS bắt đầu hỗ trợ — học rửa gầm, kiểm tra ánh sáng đèn, độ rãnh lốp, ghi vào 記録シート chuẩn.
- **自動車整備士3級**: chứng chỉ quốc gia ngành ô tô, gồm学科 (lý thuyết) + 実技 (thực hành). TTS năm 2-3 đậu được = gần thợ chính, lương sẽ nhảy bậc rõ rệt khi về VN.
- **Làm sempai cho後輩 mới**: nhớ cảm giác lúc mình mới sang. Nghiêm với tay nghề, ấm với cảm xúc — đúng cách Yamada đã đối với Phong.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 結果 | けっか | KẾT QUẢ | kết quả |
| 発表 | はっぴょう | PHÁT BIỂU | công bố |
| 受験番号 | じゅけんばんごう | THỌ NGHIỆM BẢN HIỆU | số báo danh |
| 合格 | ごうかく | HỢP CÁCH | đậu, đạt |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| おかげさまで | おかげさまで | — | nhờ ơn |
| 甲斐 | かい | GIÁP PHI | giá trị, đáng |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | giám đốc xưởng |
| 面談 | めんだん | DIỆN ĐÀM | phỏng vấn, đối thoại |
| 挑戦 | ちょうせん | THÁCH CHIẾN | thử thách, thử sức |
| 実技 | じつぎ | THỰC KỸ | thi thực hành |
| 覚悟 | かくご | GIÁC NGỘ | sẵn sàng tâm thế |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 技術面 | ぎじゅつめん | KỸ THUẬT DIỆN | mặt kỹ thuật |
| 姿勢 | しせい | TƯ THẾ | thái độ |
| 接客 | せっきゃく | TIẾP KHÁCH | tiếp khách |
| 素晴らしい | すばらしい | TỐ TÌNH | tuyệt vời |
| 改善点 | かいぜんてん | CẢI THIỆN ĐIỂM | điểm cần cải thiện |
| マニュアル | まにゅある | — | sổ tay |
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 増やす | ふやす | TĂNG | tăng |
| 受け止める | うけとめる | THỌ CHỈ | tiếp nhận |
| 車検 | しゃけん | XA KIỂM | kiểm định ô tô |
| 補助 | ほじょ | BỔ TRỢ | hỗ trợ |
| 定期点検 | ていきてんけん | ĐỊNH KỲ ĐIỂM KIỂM | bảo dưỡng định kỳ |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 後輩 | こうはい | HẬU BỐI | đàn em |
| 指導 | しどう | CHỈ ĐẠO | hướng dẫn |
| 出身 | しゅっしん | XUẤT THÂN | quê quán |
| 支える | ささえる | CHI | nâng đỡ, giúp đỡ |
| 給料 | きゅうりょう | CẤP LIỆU | lương |
| 送金 | そうきん | TỐNG KIM | gửi tiền |
| 金額 | きんがく | KIM NGẠCH | số tiền |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 下回り | したまわり | HẠ HỒI | gầm xe |
| 洗浄 | せんじょう | TẨY TỊNH | rửa sạch |
| 記録 | きろく | KÝ LỤC | ghi nhận |
| 記入 | きにゅう | KÝ NHẬP | điền vào |
| 用紙 | ようし | DỤNG CHỈ | giấy chuyên dụng |
| 専門用語 | せんもんようご | CHUYÊN MÔN DỤNG NGỮ | thuật ngữ chuyên ngành |
| 勉強会 | べんきょうかい | MIỄN CƯỜNG HỘI | nhóm/lớp học |
| 残業 | ざんぎょう | TÀN NGHIỆP | tăng ca |
| 一時帰国 | いちじきこく | NHẤT THỜI QUY QUỐC | tạm về nước |
| 体調 | たいちょう | THỂ ĐIỀU | sức khoẻ |
| 崩す | くずす | BĂNG | đổ, suy yếu |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | tổ chức quản lý TTS |
| 有給 | ゆうきゅう | HỮU CẤP | phép có lương |
| 付与 | ふよ | PHÓ DỮ | cấp cho |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 自動車整備士 | じどうしゃせいびし | TỰ ĐỘNG XA CHỈNH BỊ SĨ | thợ sửa ô tô (có CC) |
| 3級 | さんきゅう | TAM CẤP | cấp 3 (chứng chỉ) |
| 減らす | へらす | GIẢM | giảm |
| 直す | なおす | TRỰC | sửa, chỉnh lại |
| お祝い | おいわい | CHÚC | ăn mừng, chúc mừng |
| カンパイ | かんぱい | CÀN BÔI | cạn ly |
| お土産 | おみやげ | THỔ SẢN | quà |
| 化粧水 | けしょうすい | HOÁ TRANG THUỶ | nước hoa hồng |
| 素敵 | すてき | — | tuyệt vời |
| 幸せ | しあわせ | HẠNH | hạnh phúc |
| 出発 | しゅっぱつ | XUẤT PHÁT | khởi hành |
| 整える | ととのえる | CHỈNH | chỉnh đốn, sắp xếp |
| 無事 | ぶじ | VÔ SỰ | bình an |
| 出勤 | しゅっきん | XUẤT CẦN | đi làm |
| 長旅 | ながたび | TRƯỜNG LỮ | hành trình dài |
| いってまいります | いってまいります | — | con/em đi đây (lịch sự) |
| お休みなさい | おやすみなさい | HƯU | chúc ngủ ngon |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
