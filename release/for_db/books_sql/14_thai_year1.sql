-- Hizashi LITE book SQL — Thái Y1
-- curriculum_id = 800000014  (book_seq=14)
-- nguồn: books/14_thai_year1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000014, 'N3', 'markdown_book', 'Cơ khí', 'Thái Y1', 'Bộ sách Hizashi — Thái Y1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000001, 800000014, NULL, 'markdown_book', 'T1. Ngày đầu đặt chân tới Nhật (来日・寮入り)', '# Sách kỹ sư khuôn đúc · T1. Ngày đầu đặt chân tới Nhật (来日・寮入り)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) sang Nhật làm kỹ sư khuôn đúc tại Aichi. Học các mẫu hội thoại tiếng Nhật ngày đầu nhập cảnh: trả lời 入管 (cục xuất nhập cảnh), chào hỏi 工場長 đón sân bay, xác nhận thông tin chuyên ngành trên xe (二次サプライヤー・金型), hỏi lại lễ phép khi chưa hiểu (〜というのは?), tự giới thiệu với người cùng phòng nước ngoài, quan sát cách 先輩 hướng dẫn sinh hoạt ký túc.

---

## Bối cảnh

Ngày 5 tháng 5 năm 2022. Thái vào làm tại **株式会社みなみ精密金型** ở Anjo, Aichi — nhà cung cấp linh kiện khuôn nhựa cho Toyota. Trình độ tiếng Nhật N4. Chương này tập trung các mẫu câu giao tiếp đầu tiên ngày đặt chân tới Nhật: trả lời cục xuất nhập cảnh, chào hỏi 工場長 đón sân bay, hỏi đáp + xác nhận từ chuyên ngành trên đường về ký túc, làm quen người cùng phòng nước ngoài, và chốt mạch nhân vật qua cảnh tiếng Việt cuối ngày.

---

## Tình huống 1 — Quầy 入管 sân bay Centrair · 14:30, trả lời cục xuất nhập cảnh

| Vai | Lời thoại |
|---|---|
| 入管 | パスポートとビザをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho xem hộ chiếu và visa.)* |
| Thái | （パスポートを<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<br>*(Đưa hộ chiếu. Vâng, đây ạ.)* |
| 入管 | <ruby>滞在<rt>たいざい</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Mục đích lưu trú là gì?)* |
| Thái | <ruby>就労<rt>しゅうろう</rt></ruby>です。<ruby>愛知<rt>あいち</rt></ruby><ruby>県<rt>けん</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Đi làm ạ. Em làm việc tại công ty khuôn đúc ở tỉnh Aichi.)* |
| 入管 | <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>のビザですね。<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>渡<rt>わた</rt></ruby>します。<br>*(Visa 3 năm nhỉ. Tôi đưa thẻ cư trú đây.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| 入管 | <ruby>結構<rt>けっこう</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Được rồi. Anh vất vả rồi.)* |
| Thái | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |

---

## Tình huống 2 — Sảnh đến Centrair · 15:30, chào hỏi cấp trên đón sân bay

| Vai | Lời thoại |
|---|---|
| Tanaka | （プレートを<ruby>持<rt>も</rt></ruby>って「タイさん」と<ruby>書<rt>か</rt></ruby>いてある）タイさん、こちらです！<br>*(Cầm bảng có ghi "Thái-san". Anh Thái, đây ạ!)* |
| Thái | あ、<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>でいらっしゃいますか？<br>*(À, có phải ông là Tanaka trưởng nhà máy không ạ?)* |
| Tanaka | はい、<ruby>田中<rt>たなか</rt></ruby>です。タイさん、ようこそ<ruby>日本<rt>にほん</rt></ruby>へ。<br>*(Vâng, Tanaka đây. Anh Thái, hoan nghênh đến Nhật.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・タイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Rất hân hạnh. Em tên là Nguyễn Văn Thái. Mong được chỉ bảo ạ.)* |
| Tanaka | <ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Đường dài vất vả rồi. Em có khoẻ không?)* |
| Thái | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ありがとうございます。<br>*(Vâng, em vẫn khoẻ ạ. Em cảm ơn ông.)* |
| Tanaka | これから<ruby>車<rt>くるま</rt></ruby>で<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>まで<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>半<rt>はん</rt></ruby>ぐらいかかります。<br>*(Bây giờ đi xe đến ký túc công ty mất khoảng 1 tiếng rưỡi.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rõ ạ. Mong ông giúp đỡ.)* |

---

## Tình huống 3 — Trên xe ra Anjo · 16:00, hỏi đáp + xác nhận từ chuyên ngành

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>名古屋<rt>なごや</rt></ruby>を<ruby>通<rt>とお</rt></ruby>って<ruby>安城市<rt>あんじょうし</rt></ruby>まで<ruby>行<rt>い</rt></ruby>きます。<br>*(Đi qua Nagoya rồi đến thành phố Anjo.)* |
| Thái | はい。<ruby>愛知県<rt>あいちけん</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Vâng. Em lần đầu đến Aichi ạ.)* |
| Tanaka | <ruby>愛知<rt>あいち</rt></ruby>はトヨタの<ruby>地元<rt>じもと</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby>もトヨタ<ruby>関連<rt>かんれん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をしています。<br>*(Aichi là quê của Toyota. Công ty mình cũng làm việc liên quan đến Toyota.)* |
| Thái | え、トヨタの<ruby>仕事<rt>しごと</rt></ruby>ですか！<br>*(Ơ, làm việc của Toyota ạ!)* |
| Tanaka | <ruby>直接<rt>ちょくせつ</rt></ruby>ではありません。<ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>二次<rt>にじ</rt></ruby>サプライヤーです。<br>*(Không phải trực tiếp. Công ty mình là nhà cung cấp cấp hai.)* |
| Thái | すみません、「<ruby>二次<rt>にじ</rt></ruby>サプライヤー」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "nhà cung cấp cấp hai" nghĩa là gì ạ?)* |
| Tanaka | トヨタ<ruby>本体<rt>ほんたい</rt></ruby>に<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>納<rt>おさ</rt></ruby>める<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>一次<rt>いちじ</rt></ruby>、その<ruby>一次<rt>いちじ</rt></ruby>に<ruby>納<rt>おさ</rt></ruby>めるのが<ruby>二次<rt>にじ</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby>はトヨタ<ruby>車体<rt>しゃたい</rt></ruby>さん<ruby>経由<rt>けいゆ</rt></ruby>です。<br>*(Công ty giao hàng thẳng cho Toyota là cấp một, công ty giao cho cấp một là cấp hai. Mình giao qua Toyota Shatai.)* |
| Thái | なるほど、トヨタ<ruby>車体<rt>しゃたい</rt></ruby>を<ruby>通<rt>とお</rt></ruby>すということですね。<br>*(Em hiểu rồi, tức là đi qua Toyota Shatai ạ.)* |
| Tanaka | そうです。<ruby>当社<rt>とうしゃ</rt></ruby>はプラスチック<ruby>金型<rt>かながた</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>で、<ruby>内装部品<rt>ないそうぶひん</rt></ruby>の「キャビコア」を<ruby>作<rt>つく</rt></ruby>っています。<br>*(Đúng. Công ty chuyên về khuôn nhựa, làm "cavity-core" cho linh kiện nội thất xe.)* |
| Thái | キャビコア...すみません、それも<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cavity-core... Xin lỗi, em cũng lần đầu nghe. Ông giải thích giúp em được không ạ?)* |
| Tanaka | <ruby>金型<rt>かながた</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>製品<rt>せいひん</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>部分<rt>ぶぶん</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ればすぐ<ruby>分<rt>わ</rt></ruby>かりますよ。<br>*(Là phần tạo hình sản phẩm bên trong khuôn. Mai vào xưởng nhìn là hiểu ngay.)* |
| Thái | はい、ありがとうございます。メモしておきます。<br>*(Vâng, em cảm ơn ạ. Em ghi lại.)* |

---

## Tình huống 4 — Trên xe gần Anjo · 17:00, quan sát cấp trên dặn dò trước khi vào nhà máy

| Vai | Lời thoại |
|---|---|
| Tanaka | タイさん、<ruby>明日<rt>あした</rt></ruby>からの<ruby>仕事<rt>しごと</rt></ruby>のことを<ruby>少<rt>すこ</rt></ruby>し<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Anh Thái, tôi giải thích sơ về công việc từ ngày mai.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời ông ạ.)* |
| Tanaka | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>半年<rt>はんとし</rt></ruby>は<ruby>現場研修<rt>げんばけんしゅう</rt></ruby>です。<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てください。<br>*(Nửa năm đầu là thực tập tại hiện trường. Hãy quan sát kỹ công việc của các đàn anh.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Tanaka | <ruby>分<rt>わ</rt></ruby>からないことは、<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>遠慮<rt>えんりょ</rt></ruby>しないでね。<br>*(Có gì không hiểu thì nhất định phải hỏi. Đừng ngại nhé.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Tanaka | それから、<ruby>日本<rt>にほん</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>では「<ruby>報連相<rt>ほうれんそう</rt></ruby>」が<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Còn nữa, ở công ty Nhật "報連相" rất quan trọng.)* |
| Thái | ほうれんそう...というのは？<br>*(Hourensou... nghĩa là gì ạ?)* |
| Tanaka | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>使<rt>つか</rt></ruby>います。<br>*(Viết tắt của báo cáo - liên lạc - bàn bạc. Mỗi ngày đều dùng.)* |
| Thái | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>ですね。<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Báo cáo, liên lạc, bàn bạc ạ. Em nhất định sẽ nhớ.)* |

---

## Tình huống 5 — Đến ký túc · 17:30 Anjo Shinmei-cho, nghe hướng dẫn về ký túc

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>着<rt>つ</rt></ruby>きました。ここが<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>です。<br>*(Đến rồi. Đây là ký túc công ty.)* |
| Thái | （<ruby>建物<rt>たてもの</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>2<rt>に</rt></ruby><ruby>階建<rt>かいだ</rt></ruby>ての<ruby>建物<rt>たてもの</rt></ruby>ですね。<br>*(Nhìn toà nhà. Toà nhà hai tầng nhỉ.)* |
| Tanaka | はい、<ruby>古<rt>ふる</rt></ruby>いですが<ruby>掃除<rt>そうじ</rt></ruby>はちゃんとしてあります。タイさんの<ruby>部屋<rt>へや</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>201<rt>に　まる　いち</rt></ruby><ruby>号室<rt>ごうしつ</rt></ruby>です。<br>*(Vâng, cũ nhưng được dọn dẹp đàng hoàng. Phòng anh Thái ở tầng 2, phòng 201.)* |
| Thái | はい。<ruby>一人部屋<rt>ひとりべや</rt></ruby>ですか？<br>*(Vâng. Phòng một người ạ?)* |
| Tanaka | いいえ、<ruby>2人部屋<rt>ふたりべや</rt></ruby>です。インドネシアのプトラさんと<ruby>同室<rt>どうしつ</rt></ruby>になります。<br>*(Không, phòng hai người. Anh sẽ ở cùng phòng với Putra người Indonesia.)* |
| Thái | え、<ruby>同室<rt>どうしつ</rt></ruby>ですか。プトラさんは<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですか？<br>*(Ơ, cùng phòng ạ. Anh Putra cũng là người công ty mình ạ?)* |
| Tanaka | はい。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>から<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>ですよ。<br>*(Vâng. Cậu ấy làm việc theo diện kỹ năng đặc định 1 từ một năm trước. Tiếng Nhật giỏi lắm.)* |
| Thái | <ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Em yên tâm rồi ạ.)* |
| Tanaka | キッチンとシャワーは<ruby>共有<rt>きょうゆう</rt></ruby>です。<ruby>家賃<rt>やちん</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>で、<ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>天引<rt>てんび</rt></ruby>きします。<br>*(Bếp và phòng tắm dùng chung. Tiền nhà 20.000 yên một tháng, trừ vào lương.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 6 — Phòng 201 · 18:00, tự giới thiệu với người cùng phòng

| Vai | Lời thoại |
|---|---|
| Tanaka | （ドアをノックする）プトラさん、<ruby>新<rt>あたら</rt></ruby>しい<ruby>同室<rt>どうしつ</rt></ruby>のタイさんを<ruby>連<rt>つ</rt></ruby>れてきましたよ。<br>*(Gõ cửa. Putra, tôi đưa anh Thái, bạn cùng phòng mới đến đây này.)* |
| Putra | あ、<ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです！<br>*(À, trưởng nhà máy, ông vất vả rồi ạ!)* |
| Tanaka | タイさん、こちらがプトラさんです。<ruby>仲良<rt>なかよ</rt></ruby>くしてくださいね。<br>*(Anh Thái, đây là anh Putra. Hai người thân nhau nhé.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・タイと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cúi đầu. Rất hân hạnh. Em tên là Nguyễn Văn Thái. Em từ Việt Nam đến. Mong anh giúp đỡ.)* |
| Putra | はじめまして！プトラです。インドネシアから<ruby>来<rt>き</rt></ruby>ました。よろしくね、タイさん！<br>*(Rất hân hạnh! Tôi là Putra. Tôi đến từ Indonesia. Mong anh giúp đỡ nhé, anh Thái!)* |
| Thái | プトラさんは<ruby>日本語<rt>にほんご</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Anh Putra tiếng Nhật giỏi quá.)* |
| Putra | いえいえ、まだまだです。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Không không, vẫn còn kém lắm. Cùng cố gắng nhé.)* |
| Tanaka | <ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>玄関<rt>げんかん</rt></ruby>で<ruby>待<rt>ま</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせです。プトラさんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>へ<ruby>来<rt>き</rt></ruby>てください。<br>*(Sáng mai 7h30 hẹn ở sảnh. Anh Thái đi cùng anh Putra đến công ty nhé.)* |
| Thái | はい、ありがとうございます。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, em cảm ơn ông. Ông vất vả rồi ạ.)* |
| Tanaka | では、お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vậy, tôi xin phép về trước.)* |

---

## Tình huống 7 — Phòng 201 · 18:30, Putra hướng dẫn sinh hoạt ký túc (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、ベッドはこちらです。<ruby>窓側<rt>まどがわ</rt></ruby>がタイさんの<ruby>場所<rt>ばしょ</rt></ruby>です。<br>*(Anh Thái, giường ở bên này. Phía cửa sổ là chỗ của anh.)* |
| Thái | ありがとう、プトラさん。<br>*(Cảm ơn anh Putra.)* |
| Putra | <ruby>洗濯機<rt>せんたくき</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>にあります。コインランドリーです。<br>*(Máy giặt ở tầng 1. Là máy giặt xu.)* |
| Thái | コインランドリー、<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>いくらですか？<br>*(Máy giặt xu, một lần bao nhiêu ạ?)* |
| Putra | <ruby>洗濯<rt>せんたく</rt></ruby>が<ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>乾燥<rt>かんそう</rt></ruby>がもう<ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Giặt 200 yên, sấy thêm 200 yên nữa.)* |
| Thái | そうですか。すみません、「<ruby>乾燥<rt>かんそう</rt></ruby>」というのは？<br>*(Vậy ạ. Xin lỗi, "kansou" nghĩa là gì ạ?)* |
| Putra | <ruby>洗<rt>あら</rt></ruby>った<ruby>後<rt>あと</rt></ruby>で<ruby>服<rt>ふく</rt></ruby>を<ruby>乾<rt>かわ</rt></ruby>かすことです。<ruby>機械<rt>きかい</rt></ruby>で<ruby>乾<rt>かわ</rt></ruby>かします。<br>*(Là làm khô quần áo sau khi giặt. Sấy bằng máy.)* |
| Thái | なるほど、<ruby>乾<rt>かわ</rt></ruby>かす<ruby>機械<rt>きかい</rt></ruby>ですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra vậy, máy làm khô ạ. Em hiểu rồi.)* |
| Putra | コンビニは<ruby>歩<rt>ある</rt></ruby>いて<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>。ファミマがあります。<br>*(Cửa hàng tiện lợi đi bộ 5 phút. Có Famima.)* |
| Thái | <ruby>夕食<rt>ゆうしょく</rt></ruby>はどうしていますか？<br>*(Bữa tối anh ăn thế nào?)* |
| Putra | <ruby>今夜<rt>こんや</rt></ruby>はファミマの<ruby>弁当<rt>べんとう</rt></ruby>でいいですか？タイさん<ruby>疲<rt>つか</rt></ruby>れているでしょう。<ruby>明日<rt>あした</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>りましょう。<br>*(Tối nay cơm hộp Famima được không? Anh mệt rồi nhỉ. Từ mai hai đứa mình cùng nấu.)* |
| Thái | はい、<ruby>助<rt>たす</rt></ruby>かります。ありがとうございます。<br>*(Vâng, anh giúp em quá. Cảm ơn anh.)* |

---

## Tình huống 8 — Đường tới Famima · 19:00, hỏi đường + xác nhận thông tin sinh hoạt

| Vai | Lời thoại |
|---|---|
| Putra | <ruby>寮<rt>りょう</rt></ruby>を<ruby>出<rt>で</rt></ruby>たら<ruby>右<rt>みぎ</rt></ruby>に<ruby>曲<rt>ま</rt></ruby>がって、まっすぐ<ruby>行<rt>い</rt></ruby>きます。<br>*(Ra khỏi ký túc thì rẽ phải, đi thẳng.)* |
| Thái | <ruby>右<rt>みぎ</rt></ruby>に<ruby>曲<rt>ま</rt></ruby>がってまっすぐ、ということですね。<br>*(Rẽ phải rồi đi thẳng, đúng không ạ?)* |
| Putra | はい。<ruby>信号<rt>しんごう</rt></ruby>を<ruby>2<rt>ふた</rt></ruby>つ<ruby>越<rt>こ</rt></ruby>えるとファミマが<ruby>見<rt>み</rt></ruby>えます。<br>*(Vâng. Qua hai cái đèn xanh đèn đỏ là thấy Famima.)* |
| Thái | <ruby>信号<rt>しんごう</rt></ruby><ruby>2<rt>ふた</rt></ruby>つですね。メモします。<br>*(Hai cái đèn nhỉ. Em ghi lại.)* |
| Putra | タイさん、<ruby>銀行<rt>ぎんこう</rt></ruby>のカードはもう<ruby>持<rt>も</rt></ruby>っていますか？<br>*(Anh Thái, anh đã có thẻ ngân hàng chưa?)* |
| Thái | いいえ、まだです。<br>*(Chưa, em chưa có.)* |
| Putra | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>連<rt>つ</rt></ruby>れて<ruby>行<rt>い</rt></ruby>ってくれますよ。<ruby>給料<rt>きゅうりょう</rt></ruby>はその<ruby>口座<rt>こうざ</rt></ruby>に<ruby>振<rt>ふ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>まれます。<br>*(Tuần sau công ty sẽ dẫn đi. Lương sẽ chuyển vào tài khoản đó.)* |
| Thái | <ruby>口座<rt>こうざ</rt></ruby>...というのは<ruby>銀行<rt>ぎんこう</rt></ruby>のアカウントということですか？<br>*(Kouza... nghĩa là tài khoản ngân hàng phải không ạ?)* |
| Putra | そうです、そうです。よく<ruby>分<rt>わ</rt></ruby>かりましたね！<br>*(Đúng, đúng vậy. Anh hiểu nhanh nhỉ!)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 9 — Phòng 201 · 20:00, ăn tối cùng đồng phòng và hỏi chuyện công ty

| Vai | Lời thoại |
|---|---|
| Putra | いただきます。<br>*(Mời ăn.)* |
| Thái | いただきます。プトラさん、<ruby>会社<rt>かいしゃ</rt></ruby>はどうですか？<br>*(Mời ăn. Anh Putra, công ty mình thế nào ạ?)* |
| Putra | みなさん<ruby>優<rt>やさ</rt></ruby>しいですよ。でも<ruby>仕事<rt>しごと</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいです。<ruby>精度<rt>せいど</rt></ruby>がとても<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Mọi người tốt bụng lắm. Nhưng công việc nghiêm khắc. Độ chính xác rất quan trọng.)* |
| Thái | <ruby>精度<rt>せいど</rt></ruby>というのは？<br>*(Seido nghĩa là gì ạ?)* |
| Putra | <ruby>金型<rt>かながた</rt></ruby>の<ruby>寸法<rt>すんぽう</rt></ruby>の<ruby>正確<rt>せいかく</rt></ruby>さです。<ruby>0.01<rt>れいてんれいいち</rt></ruby>ミリも<ruby>違<rt>ちが</rt></ruby>ったらダメです。<br>*(Là độ chính xác kích thước của khuôn. Sai 0,01mm cũng không được.)* |
| Thái | え、そんなに<ruby>厳<rt>きび</rt></ruby>しいですか。<br>*(Ơ, nghiêm khắc đến vậy ạ.)* |
| Putra | はい。<ruby>最初<rt>さいしょ</rt></ruby>はびっくりしますが、<ruby>慣<rt>な</rt></ruby>れます。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng. Lúc đầu sẽ bất ngờ, nhưng rồi quen. Không sao đâu.)* |
| Thái | プトラさんは<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いて、<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なことは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Anh Putra làm một năm rồi, điều quan trọng nhất là gì ạ?)* |
| Putra | <ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>くこと。それから<ruby>報連相<rt>ほうれんそう</rt></ruby>。これだけです。<br>*(Có gì không hiểu phải hỏi. Sau đó là 報連相. Chỉ có vậy thôi.)* |
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>っていました。よく<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Trưởng nhà máy cũng nói y như vậy. Em sẽ nhớ kỹ.)* |

---

## Tình huống 10 — Phòng 201 · 22:00, gọi điện về cho mẹ (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi, con đến nơi rồi. |
| Mẹ Thái | (tiếng Việt) Thái! Mẹ lo cả ngày. Đi đường có mệt không con? |
| Thái | (tiếng Việt) Con không sao mẹ. Ông Tanaka trưởng nhà máy ra tận sân bay đón. Tử tế lắm mẹ ạ. |
| Mẹ Thái | (tiếng Việt) Thế ăn uống thế nào? |
| Thái | (tiếng Việt) Tối nay con ăn cơm hộp cửa hàng tiện lợi. Từ mai bạn cùng phòng dạy con nấu. Bạn người Indonesia, tên Putra, đã ở đây một năm rồi. |
| Mai | (tiếng Việt, ghé vào màn hình) Anh! Em đến chơi với mẹ. Anh khoẻ chứ? |
| Thái | (tiếng Việt) Khoẻ em. Hôm nay anh học được mấy chữ mới: 二次サプライヤー với 報連相. Tiếng Nhật chuyên ngành nhiều lắm. |
| Mai | (tiếng Việt) Anh ghi vào sổ đi. Ba năm visa qua nhanh thôi, em đợi anh. |
| Thái | (tiếng Việt) Ừ, anh sẽ cố. Mẹ với em đi nghỉ đi, bên này con cũng phải đi ngủ. Mai 7 giờ rưỡi xuống sảnh rồi. |
| Mẹ Thái | (tiếng Việt) Ừ, ngủ sớm con. Giữ sức khoẻ. |

---

## Tình huống 11 — Phòng 201 · 23:30, chúc ngủ ngon bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Putra, hôm nay cảm ơn anh rất nhiều.)* |
| Putra | いえいえ、こちらこそ。<ruby>明日<rt>あした</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Không có gì, tôi mới phải cảm ơn. Từ mai cùng cố gắng nhé.)* |
| Thái | <ruby>明日<rt>あした</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>玄関<rt>げんかん</rt></ruby>ですね。<ruby>遅<rt>おく</rt></ruby>れないようにします。<br>*(Mai 7h30 ở sảnh đúng không ạ. Em sẽ không đến muộn đâu.)* |
| Putra | はい。<ruby>朝<rt>あさ</rt></ruby>ごはんはパンとコーヒーでいい？<br>*(Vâng. Bữa sáng bánh mì với cà phê được chứ?)* |
| Thái | はい、<ruby>十分<rt>じゅうぶん</rt></ruby>です。では、お<ruby>先<rt>さき</rt></ruby>に<ruby>休<rt>やす</rt></ruby>みます。おやすみなさい。<br>*(Vâng, đủ rồi ạ. Vậy em đi nghỉ trước. Chúc anh ngủ ngon.)* |
| Putra | おやすみなさい、タイさん。<br>*(Ngủ ngon nhé, anh Thái.)* |

---

## Đọng lại chương 1

Ngày đầu, Thái học được các mẫu câu nền tảng người sang Nhật làm việc dùng ngay: **trả lời 入管** (滞在目的は何ですか → 就労です), **chào hỏi 工場長 đón sân bay** (お疲れさまでした・〜と申します・よろしくお願いいたします), **xác nhận thông tin chuyên ngành trên xe** (〜ということですね), **hỏi lại lễ phép khi chưa hiểu** (〜というのは？・意味を教えていただけますか), **tự giới thiệu với người cùng phòng nước ngoài** (はじめまして・〜から来ました), và **chốt mẫu câu sinh hoạt ký túc** (家賃・天引き・口座). Đồng thời nhận ra văn hoá công sở Nhật trọng **報連相** (報告・連絡・相談) và độ chính xác **精度** đến từng 0,01mm — đó là phẩm chất nghề kỹ sư khuôn đúc Thái phải mang theo suốt 5 năm.

> Từ vựng & mẫu câu chương này: 来日・入管・滞在目的・就労・在留カード・工場長・金型・二次サプライヤー・キャビコア・現場研修・報連相・報告・連絡・相談・寮・同室・特定技能・天引き・家賃・口座・精度・乾燥・玄関・〜と申します・〜というのは・〜ということですね・お疲れさまでした・よろしくお願いいたします

## Bí quyết chương

- **Chuỗi chuẩn bị 5 năm**: Mục tiêu cuối "設計者 + N2 + 永住" — sẽ kết quả thấy ở sách 18.
- **Bạn cùng đợt nước ngoài**: Putra (Indo SSW1, 1 năm trước) — sempai nước ngoài cho Thái, dạy 報連相 + 精度.
- **VN nhà**: Mẹ + Mai (bạn gái thanh mai trúc mã) — lặp xuyên 5 sách.
- **Centrair vs Narita**: Aichi sân bay riêng, không dùng Narita — đặc trưng vùng.

> *"5/5/2022. Ngày 1. Mai gặp xưởng. 5 năm."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入管 | にゅうかん | NHẬP QUẢN | Cục xuất nhập cảnh |
| 滞在目的 | たいざいもくてき | TRỆ TẠI MỤC ĐÍCH | Mục đích lưu trú |
| 就労 | しゅうろう | TỰU LAO | Đi làm, lao động |
| 金型 | かながた | KIM HÌNH | Khuôn đúc |
| 在留カード | ざいりゅうカード | TẠI LƯU | Thẻ cư trú |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | Trưởng nhà máy |
| 長旅 | ながたび | TRƯỜNG LỮ | Chuyến đi dài |
| 体調 | たいちょう | THỂ ĐIỀU | Tình trạng sức khoẻ |
| 寮 | りょう | LIÊU | Ký túc xá |
| 承知 | しょうち | THỪA TRI | Hiểu rõ, biết |
| 当社 | とうしゃ | ĐƯƠNG XÃ | Công ty chúng tôi |
| 関連 | かんれん | QUAN LIÊN | Liên quan |
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| 二次サプライヤー | にじサプライヤー | NHỊ THỨ | Nhà cung cấp cấp 2 |
| 本体 | ほんたい | BẢN THỂ | Bản thân, chính hãng |
| 一次 | いちじ | NHẤT THỨ | Cấp 1 |
| 納める | おさめる | NẠP | Giao, nộp hàng |
| 車体 | しゃたい | XA THỂ | Thân xe |
| 経由 | けいゆ | KINH DO | Đi qua, trung chuyển |
| 専門 | せんもん | CHUYÊN MÔN | Chuyên môn |
| 内装部品 | ないそうぶひん | NỘI TRANG BỘ PHẨM | Linh kiện nội thất |
| 製品 | せいひん | CHẾ PHẨM | Sản phẩm |
| 部分 | ぶぶん | BỘ PHẬN | Phần, bộ phận |
| 現場研修 | げんばけんしゅう | HIỆN TRƯỜNG NGHIÊN TU | Thực tập tại hiện trường |
| 先輩 | せんぱい | TIÊN BỐI | Đàn anh |
| 遠慮 | えんりょ | VIỄN LỰ | Ngại, e dè |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | Báo cáo - liên lạc - bàn bạc |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | Bàn bạc, tham vấn |
| 略 | りゃく | LƯỢC | Viết tắt |
| 建物 | たてもの | KIẾN VẬT | Toà nhà |
| 階建て | かいだて | GIAI KIẾN | Tầng (toà nhà) |
| 掃除 | そうじ | TẢO TRỪ | Quét dọn |
| 号室 | ごうしつ | HIỆU THẤT | Số phòng |
| 同室 | どうしつ | ĐỒNG THẤT | Cùng phòng |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | Kỹ năng đặc định |
| 共有 | きょうゆう | CỘNG HỮU | Dùng chung |
| 家賃 | やちん | GIA TRẦM | Tiền nhà |
| 給料 | きゅうりょう | CẤP LIỆU | Lương |
| 天引き | てんびき | THIÊN DẪN | Trừ thẳng vào lương |
| 玄関 | げんかん | HUYỀN QUAN | Sảnh, cửa chính |
| 窓側 | まどがわ | SONG TRẮC | Phía cửa sổ |
| 洗濯機 | せんたくき | TẨY TRẠC CƠ | Máy giặt |
| 洗濯 | せんたく | TẨY TRẠC | Giặt giũ |
| 乾燥 | かんそう | CAN TÁO | Sấy khô |
| 機械 | きかい | CƠ GIỚI | Máy móc |
| 信号 | しんごう | TÍN HIỆU | Đèn tín hiệu giao thông |
| 銀行 | ぎんこう | NGÂN HÀNH | Ngân hàng |
| 口座 | こうざ | KHẨU TOẠ | Tài khoản ngân hàng |
| 振り込む | ふりこむ | CHẤN VIÊM | Chuyển khoản |
| 精度 | せいど | TINH ĐỘ | Độ chính xác |
| 寸法 | すんぽう | THỐN PHÁP | Kích thước |
| 正確 | せいかく | CHÍNH XÁC | Chính xác |
| 大事 | だいじ | ĐẠI SỰ | Quan trọng |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000002, 800000014, NULL, 'markdown_book', 'T2. Ngày đầu vào xưởng (工場初日)', '# Sách kỹ sư khuôn đúc · T2. Ngày đầu vào xưởng (工場初日)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) bước vào ngày làm việc đầu tiên tại nhà máy khuôn đúc ở Anjo. Học các mẫu hội thoại tiếng Nhật trong môi trường công xưởng Nhật: chào hỏi buổi sáng với đồng phòng, làm thủ tục thẻ chấm công với lễ tân, tự giới thiệu trước toàn xưởng tại 朝礼 (họp sáng), hô khẩu hiệu KY宣言, hỏi lại lễ phép khi gặp từ chuyên ngành xa lạ (マシニングセンタ・放電加工機・玉掛け), quan sát đàn anh 先輩 hướng dẫn theo lối "見て覚えろ".

---

## Bối cảnh

Ngày 6 tháng 5 năm 2022 — sáng thứ hai sau khi đặt chân tới Nhật. Thái dậy 6:00 tại phòng 201 ký túc, mặc 作業着 mới rồi đi xe đạp 10 phút cùng Putra tới **株式会社みなみ精密金型**. Xưởng có 4 phòng: 設計室 (CAD), 機械加工室 (MC/EDM), 仕上げ室 (mài + lắp ráp), 検査室 (kiểm tra). Trình độ tiếng Nhật N4. Chương này tập trung các mẫu câu giao tiếp trong môi trường công xưởng Nhật: chào hỏi đồng nghiệp, tự giới thiệu tại 朝礼, hô khẩu hiệu an toàn KY宣言, hỏi lại lễ phép từ chuyên ngành, và quan sát 先輩 dạy nghề.

---

## Tình huống 1 — Phòng 201 ký túc · 6:00, chào hỏi đồng phòng buổi sáng

| Vai | Lời thoại |
|---|---|
| Putra | （すでに<ruby>起<rt>お</rt></ruby>きている）タイさん、おはようございます！よく<ruby>眠<rt>ねむ</rt></ruby>れましたか？<br>*(Đã dậy trước. Anh Thái, chào buổi sáng! Anh ngủ ngon chứ?)* |
| Thái | （<ruby>目<rt>め</rt></ruby>をこすりながら<ruby>起<rt>お</rt></ruby>き<ruby>上<rt>あ</rt></ruby>がる）おはようございます、プトラさん。よく<ruby>眠<rt>ねむ</rt></ruby>れました。<br>*(Dụi mắt ngồi dậy. Em chào anh Putra. Em ngủ ngon ạ.)* |
| Putra | <ruby>朝食<rt>ちょうしょく</rt></ruby>はパンとコーヒーを<ruby>用意<rt>ようい</rt></ruby>しました。どうぞ。<br>*(Tôi đã chuẩn bị bánh mì với cà phê. Mời anh.)* |
| Thái | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn anh. Anh giúp em quá ạ.)* |
| Putra | <ruby>作業着<rt>さぎょうぎ</rt></ruby>はもう<ruby>着<rt>き</rt></ruby>ましたか？<ruby>初日<rt>しょにち</rt></ruby>ですから、<ruby>遅<rt>おく</rt></ruby>れないようにしましょう。<br>*(Anh mặc đồng phục bảo hộ chưa? Hôm nay ngày đầu, mình đừng để muộn nhé.)* |
| Thái | （<ruby>新<rt>あたら</rt></ruby>しい<ruby>作業着<rt>さぎょうぎ</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げる）まだです。<ruby>初<rt>はじ</rt></ruby>めて<ruby>着<rt>き</rt></ruby>ます。<ruby>名前<rt>なまえ</rt></ruby>が<ruby>刺繍<rt>ししゅう</rt></ruby>されていますね。<br>*(Mở bộ đồ bảo hộ mới ra. Em chưa. Lần đầu mặc. Có thêu tên này.)* |
| Putra | はい、「グエン」と<ruby>書<rt>か</rt></ruby>いてあります。<ruby>会社<rt>かいしゃ</rt></ruby>がもう<ruby>準備<rt>じゅんび</rt></ruby>してくれました。<br>*(Vâng, có chữ "Nguyễn". Công ty đã chuẩn bị sẵn rồi.)* |
| Thái | <ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>早<rt>はや</rt></ruby>く<ruby>着替<rt>きが</rt></ruby>えます。<br>*(Em vui quá. Em thay đồ luôn ạ.)* |

---

## Tình huống 2 — Đường đi xe đạp tới nhà máy · 7:30, hỏi đường + xác nhận giờ giấc

| Vai | Lời thoại |
|---|---|
| Putra | <ruby>自転車<rt>じてんしゃ</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>くらいです。<ruby>私<rt>わたし</rt></ruby>の<ruby>後<rt>あと</rt></ruby>についてきてください。<br>*(Xe đạp khoảng 10 phút. Anh đi theo sau tôi nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>朝礼<rt>ちょうれい</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>からですか？<br>*(Vâng, mong anh giúp đỡ. Họp sáng bắt đầu mấy giờ ạ?)* |
| Putra | <ruby>朝礼<rt>ちょうれい</rt></ruby>は<ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>からです。<ruby>遅刻<rt>ちこく</rt></ruby>は<ruby>厳禁<rt>げんきん</rt></ruby>ですよ。<br>*(Họp sáng bắt đầu 8h30. Đi muộn là tuyệt đối cấm đấy.)* |
| Thái | <ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ですね。メモします。<br>*(8h30 ạ. Em ghi lại.)* |
| Putra | <ruby>普通<rt>ふつう</rt></ruby>はみんな<ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>までに<ruby>着<rt>つ</rt></ruby>きます。<ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>行動<rt>こうどう</rt></ruby>です。<br>*(Bình thường mọi người đến trước 8h15. Là nguyên tắc "15 phút trước giờ".)* |
| Thái | <ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>行動<rt>こうどう</rt></ruby>...というのは、いつも<ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>早<rt>はや</rt></ruby>く<ruby>動<rt>うご</rt></ruby>くということですか？<br>*(15 phút trước giờ... nghĩa là luôn hành động sớm hơn 15 phút phải không ạ?)* |
| Putra | そうです、そうです。<ruby>日本<rt>にほん</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>のルールです。<br>*(Đúng đúng. Là quy tắc của công ty Nhật.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Em hiểu rồi. Em sẽ nhớ.)* |
| Putra | （<ruby>遠<rt>とお</rt></ruby>くを<ruby>指<rt>さ</rt></ruby>す）あの<ruby>大<rt>おお</rt></ruby>きい<ruby>建物<rt>たてもの</rt></ruby>が<ruby>会社<rt>かいしゃ</rt></ruby>です。<br>*(Chỉ về phía xa. Toà nhà to kia là công ty.)* |
| Thái | （<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>見<rt>み</rt></ruby>つめる）<ruby>緊張<rt>きんちょう</rt></ruby>します...<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Nhìn chăm chú toà công ty. Em hồi hộp quá... Em sẽ cố gắng.)* |

---

## Tình huống 3 — Cổng nhà máy · 7:50, nhận thẻ chấm công từ lễ tân

| Vai | Lời thoại |
|---|---|
| Putra | <ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>にタイムカードを<ruby>押<rt>お</rt></ruby>します。<br>*(Trước khi vào phải bấm thẻ chấm công.)* |
| Thái | すみません、<ruby>私<rt>わたし</rt></ruby>のカードはどこにありますか？<br>*(Xin lỗi, thẻ của em ở đâu ạ?)* |
| Putra | <ruby>事務所<rt>じむしょ</rt></ruby>で<ruby>新人<rt>しんじん</rt></ruby>カードをもらってください。<ruby>受付<rt>うけつけ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>に<ruby>聞<rt>き</rt></ruby>けば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Anh đến văn phòng nhận thẻ tân binh. Hỏi cô lễ tân là được.)* |
| Thái | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi.)* |
| Lễ tân | おはようございます！グエン・タイさんですね？お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Em chào anh chị! Anh là Nguyễn Thái phải không ạ? Em đã đợi anh.)* |
| Thái | はい、おはようございます。グエン・ヴァン・タイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>からお<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Vâng, em chào chị. Em tên là Nguyễn Văn Thái. Từ hôm nay xin được chiếu cố ạ.)* |
| Lễ tân | こちらがタイムカードです。<ruby>毎朝<rt>まいあさ</rt></ruby>と<ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>押<rt>お</rt></ruby>してくださいね。<br>*(Đây là thẻ chấm công ạ. Mỗi sáng và buổi chiều nhất định phải bấm nhé.)* |
| Thái | <ruby>毎朝<rt>まいあさ</rt></ruby>と<ruby>夕方<rt>ゆうがた</rt></ruby>ですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Mỗi sáng và mỗi chiều phải không ạ. Em rõ rồi.)* |
| Lễ tân | あと、こちらの<ruby>書類<rt>しょるい</rt></ruby>に<ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>後<rt>あと</rt></ruby>で<ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(Ngoài ra, mong anh ký vào giấy này. Lát nữa nộp lại văn phòng nhé.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị ạ.)* |

---

## Tình huống 4 — Sân xưởng · 8:30, tự giới thiệu trước 朝礼 toàn nhà máy

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、おはようございます！<br>*(Mọi người, chào buổi sáng!)* |
| Toàn xưởng | おはようございます！<br>*(Chào buổi sáng!)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby>が<ruby>一名<rt>いちめい</rt></ruby><ruby>入<rt>はい</rt></ruby>ります。ベトナムから<ruby>来<rt>き</rt></ruby>たグエン・タイさんです。タイさん、<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ hôm nay có một tân binh nhập xưởng. Là Nguyễn Thái đến từ Việt Nam. Anh Thái, mời anh nói đôi lời.)* |
| Thái | （<ruby>一歩<rt>いっぽ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>て<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・タイと<ruby>申<rt>もう</rt></ruby>します。ベトナムの<ruby>大学<rt>だいがく</rt></ruby>で<ruby>機械<rt>きかい</rt></ruby><ruby>工学<rt>こうがく</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>しました。これから<ruby>金型<rt>かながた</rt></ruby>について<ruby>一生懸命<rt>いっしょうけんめい</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします！<br>*(Bước ra trước, cúi đầu. Rất hân hạnh. Em tên là Nguyễn Văn Thái. Em đã học kỹ thuật cơ khí ở đại học tại Việt Nam. Từ nay em sẽ học về khuôn đúc thật chăm chỉ. Rất mong các anh chị chỉ bảo ạ!)* |
| Toàn xưởng | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |
| Tanaka | では、<ruby>体操<rt>たいそう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。タイさんも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>いてください。<br>*(Bây giờ bắt đầu tập thể dục. Anh Thái cùng tập nhé.)* |
| Thái | はい！（ラジオ<ruby>体操<rt>たいそう</rt></ruby>の<ruby>音楽<rt>おんがく</rt></ruby>が<ruby>流<rt>なが</rt></ruby>れる<ruby>中<rt>なか</rt></ruby>、<ruby>周<rt>まわ</rt></ruby>りの<ruby>動<rt>うご</rt></ruby>きを<ruby>真似<rt>まね</rt></ruby>して<ruby>体操<rt>たいそう</rt></ruby>する）<br>*(Vâng! Trong tiếng nhạc radio-taisou vang lên, Thái bắt chước động tác mọi người xung quanh để tập theo.)* |

---

## Tình huống 5 — Sân xưởng · 8:40, hô khẩu hiệu KY宣言 (an toàn)

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>体操<rt>たいそう</rt></ruby><ruby>終<rt>お</rt></ruby>わり。<ruby>続<rt>つづ</rt></ruby>いてKY<ruby>宣言<rt>せんげん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います！<br>*(Hết tập thể dục. Tiếp theo tiến hành tuyên ngôn KY!)* |
| Toàn xưởng | <ruby>本日<rt>ほんじつ</rt></ruby>もご<ruby>安全<rt>あんぜん</rt></ruby>に！ゼロ<ruby>災害<rt>さいがい</rt></ruby>でいきましょう！<br>*(Hôm nay cũng phải an toàn! Hãy đi tới zero tai nạn!)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>のKYポイントは、<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>確認<rt>かくにん</rt></ruby>です。<ruby>必<rt>かなら</rt></ruby>ず<ruby>二人<rt>ふたり</rt></ruby>で<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Điểm KY hôm nay là kiểm tra đai treo khi vận chuyển khuôn. Nhất định hai người phải hô đáp lẫn nhau để kiểm tra.)* |
| Toàn xưởng | はい！<br>*(Vâng!)* |
| Tanaka | <ruby>解散<rt>かいさん</rt></ruby>！<ruby>本日<rt>ほんじつ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Giải tán! Hôm nay cũng mong mọi người giúp đỡ!)* |
| Thái | （Putra に<ruby>小声<rt>こごえ</rt></ruby>で）プトラさん、すみません、「KY<ruby>宣言<rt>せんげん</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Nói nhỏ với Putra. Anh Putra, xin lỗi, "KY tuyên ngôn" nghĩa là gì ạ?)* |
| Putra | KYは「<ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>」の<ruby>略<rt>りゃく</rt></ruby>です。<ruby>毎朝<rt>まいあさ</rt></ruby>、<ruby>危<rt>あぶ</rt></ruby>ないポイントを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(KY là viết tắt của "dự đoán nguy hiểm". Mỗi sáng kiểm tra các điểm nguy hiểm.)* |
| Thái | <ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>...<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>必<rt>かなら</rt></ruby>ずやるということですね。<br>*(Dự đoán nguy hiểm... Nghĩa là sáng nào cũng nhất định phải làm ạ.)* |
| Putra | そうです。<ruby>安全<rt>あんぜん</rt></ruby>は<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. An toàn là quan trọng nhất.)* |
| Thái | <ruby>玉掛<rt>たまか</rt></ruby>けというのも<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらえますか？<br>*(Tamakake em cũng mới nghe lần đầu. Anh giải thích giúp em được không ạ?)* |
| Putra | <ruby>重<rt>おも</rt></ruby>い<ruby>金型<rt>かながた</rt></ruby>をクレーンで<ruby>運<rt>はこ</rt></ruby>ぶ<ruby>時<rt>とき</rt></ruby>、ワイヤーで<ruby>掛<rt>か</rt></ruby>ける<ruby>作業<rt>さぎょう</rt></ruby>です。<ruby>後<rt>あと</rt></ruby>で<ruby>見<rt>み</rt></ruby>せてあげますね。<br>*(Là việc móc cáp khi cẩu khuôn nặng bằng cần cẩu. Lát nữa tôi cho anh xem.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |

---

## Tình huống 6 — Tour xưởng cùng Tanaka · 9:00, hỏi lại khi gặp tên máy chuyên ngành

| Vai | Lời thoại |
|---|---|
| Tanaka | タイさん、<ruby>工場<rt>こうじょう</rt></ruby>を<ruby>案内<rt>あんない</rt></ruby>します。ついてきてください。<br>*(Anh Thái, tôi dẫn đi tham quan xưởng. Đi theo tôi nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong ông giúp em ạ.)* |
| Tanaka | こちらが<ruby>機械加工室<rt>きかいかこうしつ</rt></ruby>です。マシニングセンタが<ruby>5<rt>ご</rt></ruby><ruby>台<rt>だい</rt></ruby>、<ruby>放電加工機<rt>ほうでんかこうき</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>台<rt>だい</rt></ruby>あります。<br>*(Đây là phòng gia công cơ khí. Có 5 máy MC và 3 máy EDM.)* |
| Thái | わあ、<ruby>大<rt>おお</rt></ruby>きい<ruby>機械<rt>きかい</rt></ruby>ですね！すみません、「マシニングセンタ」というのは？<br>*(Wow, máy lớn quá! Xin lỗi, "machining center" nghĩa là gì ạ?)* |
| Tanaka | <ruby>金属<rt>きんぞく</rt></ruby>を<ruby>削<rt>けず</rt></ruby>って<ruby>形<rt>かたち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>機械<rt>きかい</rt></ruby>です。コンピュータで<ruby>制御<rt>せいぎょ</rt></ruby>します。マザックとオークマというメーカーのものです。<br>*(Là máy cắt gọt kim loại để tạo hình. Điều khiển bằng máy tính. Là máy của hãng Mazak và Okuma.)* |
| Thái | マザックとオークマ...<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>会社<rt>かいしゃ</rt></ruby>ですか？<br>*(Mazak với Okuma... Là hãng nổi tiếng ạ?)* |
| Tanaka | はい、<ruby>世界<rt>せかい</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>日本<rt>にほん</rt></ruby>のメーカーです。<br>*(Vâng, là hãng Nhật nổi tiếng thế giới.)* |
| Thái | では、「<ruby>放電加工機<rt>ほうでんかこうき</rt></ruby>」というのはどんな<ruby>機械<rt>きかい</rt></ruby>ですか？<br>*(Vậy "máy gia công phóng điện" là loại máy như thế nào ạ?)* |
| Tanaka | <ruby>電気<rt>でんき</rt></ruby>の<ruby>火花<rt>ひばな</rt></ruby>で<ruby>金属<rt>きんぞく</rt></ruby>を<ruby>削<rt>けず</rt></ruby>る<ruby>機械<rt>きかい</rt></ruby>です。<ruby>英語<rt>えいご</rt></ruby>でEDMと<ruby>言<rt>い</rt></ruby>います。<br>*(Là máy dùng tia lửa điện để cắt kim loại. Tiếng Anh gọi là EDM.)* |
| Thái | なるほど、<ruby>火花<rt>ひばな</rt></ruby>で<ruby>削<rt>けず</rt></ruby>るということですね。メモします。<br>*(Ra vậy, dùng tia lửa để cắt ạ. Em ghi lại.)* |
| Tanaka | こちらは<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>室<rt>しつ</rt></ruby>です。<ruby>磨<rt>みが</rt></ruby>き<ruby>作業<rt>さぎょう</rt></ruby>と<ruby>組立<rt>くみたて</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。タイさんは<ruby>当面<rt>とうめん</rt></ruby>こちらで<ruby>研修<rt>けんしゅう</rt></ruby>です。<br>*(Đây là phòng hoàn thiện. Làm việc mài và lắp ráp. Anh Thái trước mắt thực tập ở đây.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Tanaka | そして、こちらが<ruby>設計室<rt>せっけいしつ</rt></ruby>です。CADが<ruby>10<rt>じゅう</rt></ruby><ruby>台<rt>だい</rt></ruby>あります。<ruby>6<rt>ろっ</rt></ruby>ヶ<ruby>月後<rt>げつご</rt></ruby>、タイさんもここで<ruby>働<rt>はたら</rt></ruby>く<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Còn đây là phòng thiết kế. Có 10 máy CAD. Sau 6 tháng nữa, anh Thái cũng sẽ làm việc ở đây.)* |
| Thái | （<ruby>嬉<rt>うれ</rt></ruby>しそうに）<ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vẻ vui mừng. Thật ạ! Em sẽ cố gắng!)* |

---

## Tình huống 7 — Phòng 仕上げ · 10:00, quan sát đàn anh Suzuki dạy nghề "見て覚えろ"

| Vai | Lời thoại |
|---|---|
| Tanaka | スズキさん、<ruby>新人<rt>しんじん</rt></ruby>のタイさんを<ruby>連<rt>つ</rt></ruby>れてきました。<br>*(Anh Suzuki, tôi đưa tân binh Thái đến.)* |
| Suzuki | （<ruby>振<rt>ふ</rt></ruby>り<ruby>向<rt>む</rt></ruby>いて<ruby>軽<rt>かる</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）スズキです。よろしく。<br>*(Quay lại, hơi cúi đầu. Suzuki đây. Mong hợp tác.)* |
| Thái | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして、グエン・ヴァン・タイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします！<br>*(Cúi đầu sâu. Rất hân hạnh, em là Nguyễn Văn Thái. Mong anh chỉ bảo ạ!)* |
| Tanaka | スズキさんがタイさんのOJT<ruby>担当<rt>たんとう</rt></ruby>です。<ruby>金型<rt>かながた</rt></ruby>の<ruby>磨<rt>みが</rt></ruby>き<ruby>専門<rt>せんもん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>のベテランですよ。<br>*(Anh Suzuki phụ trách OJT cho anh Thái. Là chuyên gia mài khuôn 10 năm kinh nghiệm đấy.)* |
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>は<ruby>大学<rt>だいがく</rt></ruby>で<ruby>機械<rt>きかい</rt></ruby><ruby>工学<rt>こうがく</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>したと<ruby>聞<rt>き</rt></ruby>きました。<br>*(Nghe nói Thái đã học cơ khí ở đại học.)* |
| Thái | はい、ベトナムの<ruby>大学<rt>だいがく</rt></ruby>で<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Vâng, em đã học ở đại học Việt Nam 4 năm ạ.)* |
| Suzuki | <ruby>頭<rt>あたま</rt></ruby>はちゃんとあるね。でも、<ruby>金型<rt>かながた</rt></ruby>は<ruby>頭<rt>あたま</rt></ruby>じゃなくて<ruby>手<rt>て</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えるものだ。<ruby>俺<rt>おれ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>て、<ruby>見<rt>み</rt></ruby>て<ruby>覚<rt>おぼ</rt></ruby>えろ。<br>*(Cậu có cái đầu đấy. Nhưng khuôn không phải nhớ bằng đầu mà nhớ bằng tay. Hãy nhìn kỹ công việc của tôi — nhìn mà nhớ.)* |
| Thái | （<ruby>戸惑<rt>とまど</rt></ruby>うが<ruby>頷<rt>うなず</rt></ruby>く）はい、しっかり<ruby>見<rt>み</rt></ruby>させていただきます。<br>*(Hơi lúng túng nhưng gật đầu. Vâng, em xin được quan sát thật kỹ ạ.)* |
| Suzuki | （<ruby>砥石<rt>といし</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>磨<rt>みが</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>める）この<ruby>力<rt>ちから</rt></ruby>の<ruby>入<rt>い</rt></ruby>れ<ruby>方<rt>かた</rt></ruby>、<ruby>角度<rt>かくど</rt></ruby>、リズム、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えるんだ。<br>*(Lấy đá mài ra rồi bắt đầu mài. Cách dồn lực, góc độ, nhịp điệu — tất cả đều phải nhớ bằng cơ thể.)* |
| Thái | （<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>観察<rt>かんさつ</rt></ruby>する）はい。<br>*(Quan sát chăm chú. Vâng.)* |
| Tanaka | （<ruby>笑<rt>わら</rt></ruby>って）スズキさんの<ruby>口癖<rt>くちぐせ</rt></ruby>です。でも<ruby>本当<rt>ほんとう</rt></ruby>のことですよ。<br>*(Cười. Là câu cửa miệng của anh Suzuki. Nhưng đúng đấy.)* |

---

## Tình huống 8 — Phòng 仕上げ · 11:00, hỏi lại khi chưa hiểu công đoạn migaki

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、ちょっと<ruby>近<rt>ちか</rt></ruby>くで<ruby>見<rt>み</rt></ruby>てごらん。<br>*(Thái này, lại gần đây mà xem.)* |
| Thái | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。（<ruby>近<rt>ちか</rt></ruby>づく）<br>*(Vâng, em xin phép. Tiến lại gần.)* |
| Suzuki | これは<ruby>粗<rt>あら</rt></ruby><ruby>磨<rt>みが</rt></ruby>き、その<ruby>次<rt>つぎ</rt></ruby>が<ruby>中<rt>なか</rt></ruby><ruby>磨<rt>みが</rt></ruby>き、<ruby>最後<rt>さいご</rt></ruby>が<ruby>鏡面<rt>きょうめん</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げだ。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>飛<rt>と</rt></ruby>ばすな。<br>*(Đây là mài thô, tiếp theo là mài trung, cuối cùng là mài gương. Tuyệt đối không được bỏ qua thứ tự.)* |
| Thái | すみません、「<ruby>鏡面<rt>きょうめん</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げ」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi anh, "kyoumen shiage" nghĩa là gì ạ?)* |
| Suzuki | <ruby>鏡<rt>かがみ</rt></ruby>みたいにピカピカに<ruby>磨<rt>みが</rt></ruby>くことだ。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>が<ruby>映<rt>うつ</rt></ruby>るくらいに。<br>*(Là mài bóng như gương. Bóng đến mức mặt mình soi vào thấy được.)* |
| Thái | <ruby>鏡<rt>かがみ</rt></ruby>のように...なるほど、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Như gương... Ra vậy, em hiểu rồi ạ.)* |
| Suzuki | <ruby>粗<rt>あら</rt></ruby><ruby>磨<rt>みが</rt></ruby>きを<ruby>適当<rt>てきとう</rt></ruby>にやると、<ruby>後<rt>あと</rt></ruby>でいくら<ruby>磨<rt>みが</rt></ruby>いても<ruby>鏡面<rt>きょうめん</rt></ruby>にならない。<ruby>最初<rt>さいしょ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Mài thô làm qua loa thì sau có mài thế nào cũng không thành gương được. Bước đầu là quan trọng nhất.)* |
| Thái | <ruby>最初<rt>さいしょ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>...メモします。<ruby>砥石<rt>といし</rt></ruby>の<ruby>番<rt>ばん</rt></ruby><ruby>手<rt>て</rt></ruby>はどう<ruby>選<rt>えら</rt></ruby>びますか？<br>*(Bước đầu quan trọng nhất... Em ghi lại. Còn cấp độ hạt đá mài thì chọn thế nào ạ?)* |
| Suzuki | おっ、いい<ruby>質問<rt>しつもん</rt></ruby>だ。<ruby>粗<rt>あら</rt></ruby><ruby>磨<rt>みが</rt></ruby>きは<ruby>400<rt>よんひゃく</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>中<rt>なか</rt></ruby><ruby>磨<rt>みが</rt></ruby>きは<ruby>800<rt>はっぴゃく</rt></ruby>から<ruby>1500<rt>せんごひゃく</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>鏡面<rt>きょうめん</rt></ruby>は<ruby>3000<rt>さんぜん</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>だ。<br>*(Ồ, hỏi tốt đấy. Mài thô số 400, mài trung 800 đến 1500, mài gương từ 3000 trở lên.)* |
| Thái | <ruby>番号<rt>ばんごう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいほど<ruby>細<rt>こま</rt></ruby>かいということですね？<br>*(Số càng to thì càng mịn đúng không ạ?)* |
| Suzuki | そうだ。<ruby>覚<rt>おぼ</rt></ruby>えが<ruby>早<rt>はや</rt></ruby>いな。<br>*(Đúng vậy. Nhớ nhanh đấy.)* |
| Thái | （<ruby>嬉<rt>うれ</rt></ruby>しそうに<ruby>頷<rt>うなず</rt></ruby>く）ありがとうございます！<br>*(Gật đầu vui vẻ. Em cảm ơn anh!)* |

---

## Tình huống 9 — 食堂 · 12:30, trưa cùng Putra, hỏi mẹo sống sót với 先輩

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、<ruby>食堂<rt>しょくどう</rt></ruby>の<ruby>定食<rt>ていしょく</rt></ruby>は<ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>してくれます。<br>*(Anh Thái, cơm xuất ở căng tin 500 yên. Công ty hỗ trợ một nửa.)* |
| Thái | <ruby>安<rt>やす</rt></ruby>いですね。<ruby>助<rt>たす</rt></ruby>かります。（<ruby>食<rt>た</rt></ruby>べる）...おいしいです。<br>*(Rẻ quá. Đỡ tiền thật. Ăn. Ngon ạ.)* |
| Putra | スズキ<ruby>先輩<rt>せんぱい</rt></ruby>はどうでしたか？<ruby>厳<rt>きび</rt></ruby>しかったですか？<br>*(Anh Suzuki sempai thế nào? Có nghiêm khắc không?)* |
| Thái | <ruby>少<rt>すこ</rt></ruby>し<ruby>厳<rt>きび</rt></ruby>しかったです。「<ruby>見<rt>み</rt></ruby>て<ruby>覚<rt>おぼ</rt></ruby>えろ」と<ruby>言<rt>い</rt></ruby>われました。ベトナムでは<ruby>先生<rt>せんせい</rt></ruby>がたくさん<ruby>説明<rt>せつめい</rt></ruby>してくれたので、ちょっと<ruby>戸惑<rt>とまど</rt></ruby>いました。<br>*(Hơi nghiêm ạ. Em bị nói "見て覚えろ". Ở Việt Nam thầy cô giải thích nhiều, nên em hơi lúng túng.)* |
| Putra | あ、それは<ruby>金型<rt>かながた</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>共通<rt>きょうつう</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>言葉<rt>ことば</rt></ruby>より<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>える<ruby>文化<rt>ぶんか</rt></ruby>です。<br>*(À, đó là câu nói chung trong ngành khuôn. Văn hoá nhớ bằng cơ thể hơn là bằng lời.)* |
| Thái | プトラさんも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>困<rt>こま</rt></ruby>りましたか？<br>*(Anh Putra lúc đầu cũng khó khăn ạ?)* |
| Putra | はい、<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はとても<ruby>困<rt>こま</rt></ruby>りました。でも、<ruby>分<rt>わ</rt></ruby>からないことを<ruby>後<rt>あと</rt></ruby>で<ruby>聞<rt>き</rt></ruby>けば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。「すみません、<ruby>先<rt>さき</rt></ruby>ほどの<ruby>作業<rt>さぎょう</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>見<rt>み</rt></ruby>せていただけますか」と<ruby>頼<rt>たの</rt></ruby>めばいいです。<br>*(Vâng, 1 năm trước rất khó. Nhưng có gì không hiểu thì hỏi sau là được. Cứ nói "Xin lỗi, công đoạn lúc nãy anh cho em xem lại một lần được không" là ổn.)* |
| Thái | なるほど！「もう<ruby>一度<rt>いちど</rt></ruby><ruby>見<rt>み</rt></ruby>せていただけますか」ですね。<br>*(Ra vậy! "Cho em xem lại một lần được không" ạ.)* |
| Putra | そうです。<ruby>遠慮<rt>えんりょ</rt></ruby>しないでください。<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Đúng vậy. Đừng ngại. Cùng cố gắng nhé.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |

---

## Tình huống 10 — Phòng 仕上げ · 14:00, Thái thử cầm 砥石 lần đầu

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby>はちょっとやってみるか。この<ruby>練習<rt>れんしゅう</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>金属<rt>きんぞく</rt></ruby><ruby>片<rt>へん</rt></ruby>で<ruby>粗<rt>あら</rt></ruby><ruby>磨<rt>みが</rt></ruby>きを<ruby>試<rt>ため</rt></ruby>してみろ。<br>*(Thái, chiều thử làm xem nào. Thử mài thô trên miếng kim loại luyện tập này.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。（<ruby>砥石<rt>といし</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）<br>*(Vâng, mong anh chỉ bảo. Nhận đá mài.)* |
| Suzuki | <ruby>手<rt>て</rt></ruby>の<ruby>動<rt>うご</rt></ruby>かし<ruby>方<rt>かた</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>のさっきの<ruby>動<rt>うご</rt></ruby>きを<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>せ。<br>*(Cách di chuyển tay — nhớ lại động tác lúc nãy của tôi.)* |
| Thái | （<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>磨<rt>みが</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めるが、<ruby>力<rt>ちから</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>すぎる）<br>*(Cẩn thận bắt đầu mài nhưng dồn lực quá mạnh.)* |
| Suzuki | <ruby>力<rt>ちから</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>すぎる。<ruby>砥石<rt>といし</rt></ruby>の<ruby>重<rt>おも</rt></ruby>さだけで<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Mạnh quá. Chỉ cần trọng lượng của đá mài là đủ.)* |
| Thái | あ、すみません。（<ruby>力<rt>ちから</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>く）こんな<ruby>感<rt>かん</rt></ruby>じですか？<br>*(À, xin lỗi anh. Bỏ lực ra. Kiểu như này ạ?)* |
| Suzuki | そう、それぐらいだ。<ruby>角度<rt>かくど</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>だぞ。<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>くらい<ruby>傾<rt>かたむ</rt></ruby>けて。<br>*(Vậy, khoảng đó. Góc độ cũng quan trọng đấy. Nghiêng khoảng 15 độ.)* |
| Thái | <ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>...（<ruby>調整<rt>ちょうせい</rt></ruby>する）こうですか？<br>*(15 độ... Điều chỉnh. Như này ạ?)* |
| Suzuki | うん、いい<ruby>感<rt>かん</rt></ruby>じだ。<ruby>最初<rt>さいしょ</rt></ruby>にしては<ruby>悪<rt>わる</rt></ruby>くない。<br>*(Ừm, cảm giác tốt đấy. Lần đầu thế là không tệ.)* |
| Thái | （<ruby>少<rt>すこ</rt></ruby>し<ruby>笑<rt>わら</rt></ruby>う）ありがとうございます！<br>*(Hơi mỉm cười. Em cảm ơn anh!)* |
| Suzuki | これを<ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>続<rt>つづ</rt></ruby>けろ。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>える。<br>*(Cứ tập 1 tiếng mỗi ngày, kéo dài 3 tháng. Cơ thể sẽ tự nhớ.)* |
| Thái | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em sẽ tập mỗi ngày.)* |

---

## Tình huống 11 — Cổng nhà máy · 17:30, chào tan ca và bấm thẻ về

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Thái, hôm nay vất vả rồi.)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<br>*(Em cũng cảm ơn anh ạ! Hôm nay em được anh chỉ bảo nhiều quá.)* |
| Suzuki | <ruby>明日<rt>あした</rt></ruby>もよろしくな。<ruby>遅刻<rt>ちこく</rt></ruby>するなよ。<br>*(Mai cũng nhờ nhé. Đừng đến muộn đấy.)* |
| Thái | はい、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>遅刻<rt>ちこく</rt></ruby>しません。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em tuyệt đối không đến muộn ạ. Em xin phép.)* |
| Putra | （<ruby>合流<rt>ごうりゅう</rt></ruby>）タイさん、タイムカードを<ruby>押<rt>お</rt></ruby>して<ruby>帰<rt>かえ</rt></ruby>りましょう。<br>*(Gặp lại Thái. Anh Thái, bấm thẻ chấm công rồi về thôi.)* |
| Thái | はい。（カードを<ruby>押<rt>お</rt></ruby>す）<br>*(Vâng. Bấm thẻ.)* |
| Tanaka | （<ruby>通<rt>とお</rt></ruby>りかかる）タイさん、<ruby>初日<rt>しょにち</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。どうでしたか？<br>*(Đi ngang qua. Anh Thái, ngày đầu vất vả rồi. Thế nào?)* |
| Thái | <ruby>新<rt>あたら</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>がたくさんで<ruby>頭<rt>あたま</rt></ruby>がいっぱいです。でも、とても<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Nhiều từ mới quá đầu em đầy ự luôn. Nhưng em học được rất nhiều ạ.)* |
| Tanaka | それでいいです。<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ<ruby>覚<rt>おぼ</rt></ruby>えればいいですよ。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vậy là tốt rồi. Mỗi ngày nhớ một ít là được. Vất vả rồi.)* |
| Thái | ありがとうございます。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em cảm ơn ông. Em xin phép về trước ạ.)* |

---

## Tình huống 12 — Phòng 201 ký túc · 21:00, gọi video về VN cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật. Putra đã ra ngoài tắm, Thái gọi LINE về Việt Nam.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, ngày đầu sao rồi? Em đợi cả buổi tối. |
| Thái | (tiếng Việt) Mệt em ạ. Nhưng ổn. Sáng đi 朝礼 — họp sáng đứng cả xưởng, anh đứng lên tự giới thiệu trước 80 người luôn. |
| Mai | (tiếng Việt) Trời ơi, run không anh? |
| Thái | (tiếng Việt) Run chứ. Mà nói được câu はじめまして, グエン・ヴァン・タイと申します thôi, ổng trưởng nhà máy là Tanaka còn vỗ tay khen. |
| Mai | (tiếng Việt) Còn việc thì sao? |
| Thái | (tiếng Việt) Anh được phân vào phòng 仕上げ — phòng mài khuôn. Đàn anh tên Suzuki, 10 năm kinh nghiệm. Ông ấy chỉ nói một câu: "見て覚えろ" — nhìn mà nhớ. |
| Mai | (tiếng Việt) Là sao? Không giảng à? |
| Thái | (tiếng Việt) Không. Văn hoá ngành khuôn ở Nhật là vậy. Phải tự quan sát, tự bắt chước. Putra nói khi nào không hiểu thì xin "もう一度見せていただけますか" — "cho em xem lại được không". |
| Mai | (tiếng Việt) Anh ghi vô sổ chưa? |
| Thái | (tiếng Việt) Ghi rồi. Hôm nay anh học được mấy chữ: マシニングセンタ (máy CNC), 放電加工機 (máy EDM), 玉掛け (móc cáp cẩu khuôn), KY宣言 (tuyên ngôn an toàn buổi sáng), 鏡面仕上げ (mài bóng như gương). Số đá mài 400, 800, 1500, 3000 — số càng to càng mịn. |
| Mai | (tiếng Việt) Trời, một ngày học bằng em học tuần. |
| Thái | (tiếng Việt) Mà chiều anh được cầm 砥石 — đá mài — thử mài thật. Lần đầu dồn lực quá mạnh, bị nhắc ngay. Sau chỉnh được rồi, ông Suzuki khen "lần đầu thế là không tệ". |
| Mai | (tiếng Việt) Em mừng cho anh. Cố lên anh nhé. Em với mẹ vẫn đợi. |
| Thái | (tiếng Việt) Ừ. Anh đi ngủ đây, mai 7h30 lại ra xưởng. Em cũng ngủ ngon nhé. |

---

## Đọng lại chương 2

Ngày đầu vào xưởng, Thái học được toàn bộ một ngày làm việc kiểu Nhật. Buổi sáng: **chào hỏi đồng phòng** (おはようございます・よく眠れましたか), **xác nhận giờ giấc theo nguyên tắc 15分前行動**, **làm thủ tục tại lễ tân** (タイムカード・署名), **tự giới thiệu tại 朝礼** (グエン・ヴァン・タイと申します・一生懸命勉強します), **hô khẩu hiệu KY宣言** (本日もご安全に・ゼロ災害), và **hỏi lại lễ phép từ chuyên ngành** bằng mẫu **〜というのは何ですか・意味を教えてもらえますか**. Buổi trưa Putra dạy mẹo sống sót: **「もう一度見せていただけますか」** để xin xem lại khi không hiểu. Buổi chiều quan sát 先輩 Suzuki theo lối **見て覚えろ** — văn hoá truyền nghề bằng tay không bằng lời, từ **粗磨き → 中磨き → 鏡面仕上げ**, và lần đầu cầm **砥石** thử mài thật. Đó là ngày Thái hiểu rằng nghề khuôn đúc Nhật trọng **độ chính xác** + **truyền nghề qua quan sát**, hai phẩm chất sẽ theo Thái suốt năm năm visa.

> Từ vựng & mẫu câu chương này: 朝礼・体操・KY宣言・危険予知・ゼロ災害・玉掛け・作業着・安全靴・タイムカード・15分前行動・マシニングセンタ・放電加工機・仕上げ室・設計室・機械加工室・砥石・粗磨き・中磨き・鏡面仕上げ・見て覚えろ・OJT・〜と申します・〜というのは何ですか・意味を教えてもらえますか・もう一度見せていただけますか・お疲れさまでした・本日もご安全に

## Bí quyết chương

- **Nghi thức 朝礼 + 体操 + KY宣言**: ba bước cố định mỗi sáng xưởng khuôn — khác ngành dịch vụ chỉ họp ngắn.
- **"見て覚えろ"**: triết lý truyền nghề ngành khuôn. Bực bội cho kỹ sư ĐH quen được giảng — nhưng phải vượt qua.
- **Putra dẫn dắt cùng đợt**: cấp trên nước ngoài đi trước 1 năm, chuyên gỡ rối từ vựng + văn hoá khi Thái không tiện hỏi cấp trên Nhật.
- **Suzuki sempai 10 năm migaki**: kiểu sempai cũ — ít nói, dạy bằng tay. Sẽ là người gắn bó nhất với Thái 6 tháng đầu.
- **Tanaka úp mở 6 tháng sau lên CAD**: chuỗi chuẩn bị 設計者 — sẽ trả trong sách 18.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 朝食 | ちょうしょく | TRIỀU THỰC | Bữa sáng |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 作業着 | さぎょうぎ | TÁC NGHIỆP TRƯỚC | Đồ bảo hộ lao động |
| 初日 | しょにち | SƠ NHẬT | Ngày đầu |
| 刺繍 | ししゅう | THỨ TÚ | Thêu |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 着替える | きがえる | TRƯỚC THẾ | Thay đồ |
| 自転車 | じてんしゃ | TỰ CHUYỂN XA | Xe đạp |
| 朝礼 | ちょうれい | TRIỀU LỄ | Họp sáng |
| 遅刻 | ちこく | TRÌ KHẮC | Đến muộn |
| 厳禁 | げんきん | NGHIÊM CẤM | Tuyệt đối cấm |
| 行動 | こうどう | HÀNH ĐỘNG | Hành động |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Hồi hộp, căng thẳng |
| タイムカード | — | — | Thẻ chấm công |
| 事務所 | じむしょ | SỰ VỤ SỞ | Văn phòng |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 受付 | うけつけ | THỤ PHÓ | Lễ tân |
| 本日 | ほんじつ | BẢN NHẬT | Hôm nay |
| 世話 | せわ | THẾ THOẠI | Chăm sóc, chiếu cố |
| 毎朝 | まいあさ | MỖI TRIỀU | Mỗi sáng |
| 夕方 | ゆうがた | TỊCH PHƯƠNG | Chiều tối |
| 書類 | しょるい | THƯ LOẠI | Giấy tờ |
| 署名 | しょめい | THỰ DANH | Ký tên |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp |
| 一名 | いちめい | NHẤT DANH | Một người |
| 一言 | ひとこと | NHẤT NGÔN | Đôi lời |
| 機械工学 | きかいこうがく | CƠ GIỚI CÔNG HỌC | Kỹ thuật cơ khí |
| 一生懸命 | いっしょうけんめい | NHẤT SINH HUYỀN MỆNH | Hết mình |
| 拍手 | はくしゅ | PHÁCH THỦ | Vỗ tay |
| 体操 | たいそう | THỂ THAO | Tập thể dục |
| 宣言 | せんげん | TUYÊN NGÔN | Tuyên ngôn |
| 安全 | あんぜん | AN TOÀN | An toàn |
| 災害 | さいがい | TAI HẠI | Tai nạn |
| 運搬 | うんぱん | VẬN BAN | Vận chuyển |
| 玉掛け | たまかけ | NGỌC QUẢI | Móc cáp cẩu |
| 確認 | かくにん | XÁC NHẬN | Kiểm tra, xác nhận |
| 危険予知 | きけんよち | NGUY HIỂM DỰ TRI | Dự đoán nguy hiểm |
| 解散 | かいさん | GIẢI TÁN | Giải tán |
| 案内 | あんない | ÁN NỘI | Hướng dẫn, dẫn đường |
| 機械加工室 | きかいかこうしつ | CƠ GIỚI GIA CÔNG THẤT | Phòng gia công cơ khí |
| 放電加工機 | ほうでんかこうき | PHÓNG ĐIỆN GIA CÔNG CƠ | Máy gia công phóng điện (EDM) |
| 金属 | きんぞく | KIM THUỘC | Kim loại |
| 削る | けずる | TƯỚC | Cắt gọt, mài |
| 制御 | せいぎょ | CHẾ NGỰ | Điều khiển |
| 火花 | ひばな | HOẢ HOA | Tia lửa |
| 仕上げ室 | しあげしつ | SĨ THƯỢNG THẤT | Phòng hoàn thiện |
| 磨き | みがき | MA | Mài bóng |
| 組立 | くみたて | TỔ LẬP | Lắp ráp |
| 当面 | とうめん | ĐƯƠNG DIỆN | Trước mắt |
| 研修 | けんしゅう | NGHIÊN TU | Thực tập, đào tạo |
| 設計室 | せっけいしつ | THIẾT KẾ THẤT | Phòng thiết kế |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 砥石 | といし | CHỈ THẠCH | Đá mài |
| 粗磨き | あらみがき | THÔ MA | Mài thô |
| 中磨き | なかみがき | TRUNG MA | Mài trung |
| 鏡面仕上げ | きょうめんしあげ | KÍNH DIỆN SĨ THƯỢNG | Mài bóng như gương |
| 順番 | じゅんばん | THUẬN PHIÊN | Thứ tự |
| 角度 | かくど | GIÁC ĐỘ | Góc độ |
| 質問 | しつもん | CHẤT VẤN | Câu hỏi |
| 食堂 | しょくどう | THỰC ĐƯỜNG | Căng tin |
| 定食 | ていしょく | ĐỊNH THỰC | Cơm xuất |
| 負担 | ふたん | PHỤ ĐẢM | Chịu chi phí |
| 業界 | ぎょうかい | NGHIỆP GIỚI | Ngành nghề |
| 共通 | きょうつう | CỘNG THÔNG | Chung |
| 文化 | ぶんか | VĂN HOÁ | Văn hoá |
| 練習 | れんしゅう | LUYỆN TẬP | Luyện tập |
| 慎重 | しんちょう | THẬN TRỌNG | Cẩn thận |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 合流 | ごうりゅう | HỢP LƯU | Hội ngộ |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000003, 800000014, NULL, 'markdown_book', 'T3. Mài giũa và đánh bóng năm cấp (ヤスリと磨き)', '# Sách kỹ sư khuôn đúc · T3. Mài giũa và đánh bóng năm cấp (ヤスリと磨き)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) bước vào tuần thứ hai tại 仕上げ bàn (bàn hoàn thiện). Học các mẫu hội thoại tiếng Nhật khi được 先輩 dạy nghề: nhận phôi practice và xác nhận yêu cầu kỹ thuật, hỏi lại lễ phép khi không hiểu từ chuyên ngành (〜というのは・どれくらいですか), quan sát đàn anh làm mẫu và đáp lễ, báo cáo khi gặp sự cố (深い谷が出てしまいました), nhận lời mắng và xin làm lại (やり直しさせてください), an ủi đồng phòng nước ngoài, và gọi LINE về cho người yêu để ôn từ vựng monozukuri.

---

## Bối cảnh

Tuần thứ hai của tháng 5 năm 2022. Thái ngồi bàn 仕上げ tại **株式会社みなみ精密金型** ở Anjo, được 先輩 Suzuki giao một phôi practice thép NAK80 (100×100×30mm) — loại thép tiêu chuẩn cho khuôn nhựa. Trình độ tiếng Nhật N4, tiếng chuyên ngành mới ở mức nghe-đoán. Chương này tập trung các mẫu câu giao tiếp với cấp trên khi học nghề bằng tay: nhận chỉ thị, hỏi lại từ chuyên ngành (磨き・砥石・湿式), báo cáo sự cố, xin lỗi và xin làm lại — kèm cảnh tiếng Việt cuối ngày để ôn từ vựng.

---

## Tình huống 1 — Bàn 仕上げ · 8:45, nhận phôi practice và xác nhận yêu cầu của 先輩

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、おはようございます。これが<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>練習用<rt>れんしゅうよう</rt></ruby>ピースです。<br>*(Thái, chào buổi sáng. Đây là phôi practice của tuần này.)* |
| Thái | （<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）はい、ありがとうございます。<br>*(Đưa hai tay nhận. Vâng, em cảm ơn anh ạ.)* |
| Suzuki | <ruby>材質<rt>ざいしつ</rt></ruby>はNAK80<ruby>鋼<rt>こう</rt></ruby>です。プラスチック<ruby>金型<rt>かながた</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>う<ruby>定番<rt>ていばん</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby>ですよ。<br>*(Vật liệu là thép NAK80. Là loại tiêu chuẩn hay dùng cho khuôn nhựa.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Vâng, em rõ ạ. Mục tiêu tuần này là gì ạ?)* |
| Suzuki | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で<ruby>磨<rt>みが</rt></ruby>き#<ruby>2000<rt>にせん</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げまで<ruby>持<rt>も</rt></ruby>っていきましょう。<br>*(Trong một tuần, đưa lên đến mức đánh bóng #2000.)* |
| Thái | すみません、「#<ruby>2000<rt>にせん</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げ」というのはどれくらいの<ruby>光沢<rt>こうたく</rt></ruby>ですか？<br>*(Xin lỗi anh, "hoàn thiện #2000" là độ bóng cỡ nào ạ?)* |
| Suzuki | <ruby>半光沢<rt>はんこうたく</rt></ruby>といいます。<ruby>顔<rt>かお</rt></ruby>が<ruby>映<rt>うつ</rt></ruby>るくらいだけど、<ruby>鏡<rt>かがみ</rt></ruby>ほどではない<ruby>状態<rt>じょうたい</rt></ruby>です。<br>*(Gọi là bán bóng. Mặt soi vào có thấy nhưng chưa đến mức gương.)* |
| Thái | <ruby>半光沢<rt>はんこうたく</rt></ruby>ですね。メモします。<br>*(Là bán bóng ạ. Em ghi lại.)* |
| Suzuki | <ruby>道具<rt>どうぐ</rt></ruby>はここに<ruby>揃<rt>そろ</rt></ruby>えてあります。<ruby>必<rt>かなら</rt></ruby>ず<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってください。<br>*(Đồ nghề đã chuẩn bị đây. Nhất định phải giữ đúng thứ tự.)* |
| Thái | はい、<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>りますね。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em sẽ giữ đúng thứ tự. Mong anh chỉ bảo ạ.)* |

---

## Tình huống 2 — Bàn 仕上げ · 9:00, quan sát đàn anh làm mẫu năm cấp đánh bóng

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>は<ruby>砥石<rt>といし</rt></ruby>#<ruby>320<rt>さんびゃくにじゅう</rt></ruby>から#<ruby>600<rt>ろっぴゃく</rt></ruby>です。<ruby>機械加工<rt>きかいかこう</rt></ruby>の<ruby>跡<rt>あと</rt></ruby>をしっかり<ruby>消<rt>け</rt></ruby>します。<br>*(Bước 1 là đá mài #320 đến #600. Phải xoá sạch vết phay máy.)* |
| Thái | はい、<ruby>機械加工<rt>きかいかこう</rt></ruby>の<ruby>跡<rt>あと</rt></ruby>を<ruby>消<rt>け</rt></ruby>す、ですね。<br>*(Vâng, xoá vết phay máy ạ.)* |
| Suzuki | （<ruby>砥石<rt>といし</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かしてみせる）<ruby>力<rt>ちから</rt></ruby>は<ruby>均等<rt>きんとう</rt></ruby>に、<ruby>一方向<rt>いちほうこう</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かしてください。<br>*(Vừa di chuyển đá mài làm mẫu. Lực phải đều, di chuyển theo một hướng.)* |
| Thái | （<ruby>手<rt>て</rt></ruby>の<ruby>動<rt>うご</rt></ruby>きをよく<ruby>観察<rt>かんさつ</rt></ruby>する）はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Quan sát kỹ chuyển động tay. Vâng, em hiểu rồi.)* |
| Suzuki | <ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>はペーパー#<ruby>800<rt>はっぴゃく</rt></ruby>から#<ruby>1500<rt>せんごひゃく</rt></ruby>です。<ruby>当<rt>あ</rt></ruby>て<ruby>木<rt>き</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってください。<br>*(Bước 2 là giấy nhám #800 đến #1500. Phải dùng tấm gỗ đệm.)* |
| Thái | すみません、「<ruby>当<rt>あ</rt></ruby>て<ruby>木<rt>き</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Xin lỗi anh, "ategi" là gì ạ?)* |
| Suzuki | <ruby>紙<rt>かみ</rt></ruby>ヤスリの<ruby>下<rt>した</rt></ruby>に<ruby>当<rt>あ</rt></ruby>てる<ruby>木<rt>き</rt></ruby>の<ruby>板<rt>いた</rt></ruby>です。これがないと<ruby>面<rt>めん</rt></ruby>が<ruby>波打<rt>なみう</rt></ruby>ってしまいます。<br>*(Là tấm gỗ kê dưới giấy nhám. Không có thì bề mặt sẽ gợn sóng.)* |
| Thái | なるほど、<ruby>面<rt>めん</rt></ruby>を<ruby>平<rt>たい</rt></ruby>らに<ruby>保<rt>たも</rt></ruby>つためですね。<br>*(Ra vậy, để giữ bề mặt phẳng ạ.)* |
| Suzuki | そうです。それから<ruby>段階<rt>だんかい</rt></ruby>ごとに<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>90<rt>きゅうじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>変<rt>か</rt></ruby>えてください。<ruby>前<rt>まえ</rt></ruby>の<ruby>跡<rt>あと</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っていないかすぐ<ruby>分<rt>わ</rt></ruby>かります。<br>*(Đúng vậy. Mỗi bước phải đổi hướng 90 độ. Sẽ thấy ngay vết của bước trước còn sót hay không.)* |
| Thái | <ruby>方向<rt>ほうこう</rt></ruby>を<ruby>90<rt>きゅうじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>変<rt>か</rt></ruby>える、ということですね。<br>*(Đổi hướng 90 độ, đúng không ạ?)* |
| Suzuki | <ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>はペーパー#<ruby>2000<rt>にせん</rt></ruby>から#<ruby>3000<rt>さんぜん</rt></ruby>の<ruby>湿式<rt>しっしき</rt></ruby>です。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>段階<rt>だんかい</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばさないでください。<br>*(Bước 3 là giấy ướt #2000 đến #3000. Tuyệt đối không được bỏ qua bước nào.)* |
| Thái | はい！<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>飛<rt>と</rt></ruby>ばしません。<br>*(Vâng! Em tuyệt đối không bỏ bước.)* |

---

## Tình huống 3 — Bàn 仕上げ · 10:00, Thái thử bước 1 và được 先輩 chỉnh tư thế

| Vai | Lời thoại |
|---|---|
| Thái | （#<ruby>320<rt>さんびゃくにじゅう</rt></ruby>の<ruby>砥石<rt>といし</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>動<rt>うご</rt></ruby>かしてみる）こんな<ruby>感<rt>かん</rt></ruby>じでしょうか？<br>*(Cầm đá mài #320 thử di chuyển. Như thế này được không ạ?)* |
| Suzuki | （<ruby>横<rt>よこ</rt></ruby>から<ruby>見<rt>み</rt></ruby>る）<ruby>力<rt>ちから</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>強<rt>つよ</rt></ruby>すぎますね。<br>*(Đứng cạnh xem. Lực hơi mạnh quá đấy.)* |
| Thái | あ、すみません。どれくらい<ruby>抜<rt>ぬ</rt></ruby>けばいいですか？<br>*(À, em xin lỗi. Cần thả lỏng bao nhiêu ạ?)* |
| Suzuki | <ruby>金型<rt>かながた</rt></ruby><ruby>磨<rt>みが</rt></ruby>きは<ruby>力<rt>ちから</rt></ruby>じゃなくて、<ruby>感覚<rt>かんかく</rt></ruby>です。<ruby>砥石<rt>といし</rt></ruby>の<ruby>重<rt>おも</rt></ruby>さだけで<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(Mài khuôn không phải dùng lực, mà là cảm giác. Chỉ cần sức nặng của hòn đá là đủ.)* |
| Thái | （<ruby>力<rt>ちから</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>く）こうですか？<br>*(Thả lỏng tay. Như này ạ?)* |
| Suzuki | そう、それです。<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Đó, đúng vậy. Hãy để cơ thể nhớ.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |
| Suzuki | <ruby>分<rt>わ</rt></ruby>からないことがあったら、すぐ<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Có gì không hiểu thì gọi tôi ngay nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh giúp đỡ ạ.)* |

---

## Tình huống 4 — Bàn 仕上げ · 14:00, Thái sốt ruột, tự ý bỏ bước

| Vai | Lời thoại |
|---|---|
| Thái | (VN, độc thoại) Mất 4 tiếng mới xong #320. Cứ tốc độ này tuần sau không kịp.<br>*(Tự nhủ phải nhanh.)* |
| Putra | （<ruby>通<rt>とお</rt></ruby>りかかる）タイ、どう？<br>*(Đi ngang. Thái, sao rồi?)* |
| Thái | プトラさん、まだ<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>です。<br>*(Anh Putra, em vẫn còn bước 1 thôi.)* |
| Putra | ゆっくりでいいよ。<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Cứ chậm cũng được. Quan trọng là thứ tự.)* |
| Thái | はい...<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng... em hiểu.)* |
| Thái | (VN, độc thoại) Nhưng anh Suzuki đi họp chiều rồi. Mình thử bỏ #800 xem sao, lên thẳng #1500. Cứ #1500 mà nhẵn là ổn.<br>*(Tự nhủ thử bỏ bước.)* |
| Thái | （#<ruby>1500<rt>せんごひゃく</rt></ruby>のペーパーを<ruby>取<rt>と</rt></ruby>って<ruby>使<rt>つか</rt></ruby>う）<br>*(Lấy giấy nhám #1500 dùng luôn.)* |
| Thái | (VN, độc thoại) Bóng hơn thật. Lên luôn #3000 nốt cho xong hôm nay.<br>*(Tự nhủ ổn rồi.)* |
| Thái | （#<ruby>3000<rt>さんぜん</rt></ruby><ruby>湿式<rt>しっしき</rt></ruby>で<ruby>磨<rt>みが</rt></ruby>く）<br>*(Mài tiếp bằng #3000 ướt.)* |

---

## Tình huống 5 — Bàn 仕上げ · 16:30, defect lộ ra, báo cáo 先輩

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>蛍光灯<rt>けいこうとう</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>けて<ruby>見<rt>み</rt></ruby>る）え、<ruby>何<rt>なに</rt></ruby>これ...？<br>*(Nghiêng bề mặt dưới đèn huỳnh quang để soi. Ơ, cái gì đây...?)* |
| Thái | (VN, độc thoại) Có vết sọc sâu chạy ngang mặt. Sao lại có?<br>*(Tự nhủ sao có vết.)* |
| Suzuki | （<ruby>後<rt>うし</rt></ruby>ろから）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>進<rt>すす</rt></ruby><ruby>具合<rt>ぐあい</rt></ruby>はどうですか？<br>*(Đến từ phía sau. Thái, tiến độ thế nào?)* |
| Thái | （<ruby>慌<rt>あわ</rt></ruby>てる）あ、スズキさん...すみません、ちょっと<ruby>見<rt>み</rt></ruby>ていただけますか？<br>*(Lúng túng. À, anh Suzuki... xin lỗi, anh xem giúp em được không ạ?)* |
| Suzuki | （ピースを<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って<ruby>蛍光灯<rt>けいこうとう</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>ける）...あー、<ruby>深<rt>ふか</rt></ruby>い<ruby>谷<rt>たに</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>ってますね。<br>*(Cầm phôi nghiêng dưới đèn. ...À, còn vết khe sâu rồi đây.)* |
| Thái | <ruby>深<rt>ふか</rt></ruby>い<ruby>谷<rt>たに</rt></ruby>...というのは<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Vết khe sâu... là gì ạ?)* |
| Suzuki | <ruby>前<rt>まえ</rt></ruby>の<ruby>段階<rt>だんかい</rt></ruby>の<ruby>傷<rt>きず</rt></ruby>が<ruby>消<rt>き</rt></ruby>えずに<ruby>残<rt>のこ</rt></ruby>っている<ruby>細<rt>ほそ</rt></ruby>い<ruby>溝<rt>みぞ</rt></ruby>のことです。タイ<ruby>君<rt>くん</rt></ruby>、#<ruby>800<rt>はっぴゃく</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばしましたね？<br>*(Là những rãnh nhỏ — vết của bước trước chưa kịp xoá. Thái, em đã bỏ #800 đúng không?)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい...<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Cúi đầu. Vâng... em thành thật xin lỗi.)* |

---

## Tình huống 6 — Bàn 仕上げ · 16:45, bị mắng và xin làm lại

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>「<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>飛<rt>と</rt></ruby>ばさないでください」って<ruby>言<rt>い</rt></ruby>いましたよね？<br>*(Thái, sáng nay tôi đã bảo "tuyệt đối không bỏ bước" đúng không?)* |
| Thái | はい、おっしゃる<ruby>通<rt>とお</rt></ruby>りです。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Vâng, đúng như anh nói. Em xin lỗi ạ.)* |
| Suzuki | <ruby>金型<rt>かながた</rt></ruby><ruby>磨<rt>みが</rt></ruby>きは<ruby>順番<rt>じゅんばん</rt></ruby>です。<ruby>1<rt>ひと</rt></ruby>つ<ruby>飛<rt>と</rt></ruby>ばすと、<ruby>後<rt>あと</rt></ruby>でいくら<ruby>磨<rt>みが</rt></ruby>いてもその<ruby>谷<rt>たに</rt></ruby>は<ruby>消<rt>き</rt></ruby>えません。<br>*(Mài khuôn là thứ tự. Bỏ một bước thì sau có mài bao nhiêu cũng không xoá được vết khe đó.)* |
| Thái | はい...<br>*(Vâng...)* |
| Suzuki | これが<ruby>客先<rt>きゃくさき</rt></ruby>に<ruby>納<rt>おさ</rt></ruby>める<ruby>金型<rt>かながた</rt></ruby>だったら、<ruby>不良率<rt>ふりょうりつ</rt></ruby>が<ruby>10<rt>じゅう</rt></ruby>%は<ruby>出<rt>で</rt></ruby>ますよ。トヨタさんに<ruby>謝<rt>あやま</rt></ruby>りに<ruby>行<rt>い</rt></ruby>かなきゃいけません。<br>*(Nếu đây là khuôn giao cho khách, tỷ lệ lỗi sẽ tới 10%. Phải đi xin lỗi bên Toyota.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<ruby>明日<rt>あした</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>からやり<ruby>直<rt>なお</rt></ruby>させてください。<br>*(Em thực sự xin lỗi. Xin anh cho em làm lại từ đầu vào ngày mai ạ.)* |
| Suzuki | はい、お<ruby>願<rt>ねが</rt></ruby>いします。それから、この<ruby>失敗<rt>しっぱい</rt></ruby>はちゃんと<ruby>覚<rt>おぼ</rt></ruby>えておいてください。これも<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>勉強<rt>べんきょう</rt></ruby>ですから。<br>*(Vâng, nhờ em. Và lần thất bại này hãy nhớ kỹ. Đây cũng là bài học quan trọng.)* |
| Thái | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Cúi đầu sâu. Vâng, em nhất định sẽ nhớ.)* |
| Suzuki | <ruby>失敗<rt>しっぱい</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えとけ — <ruby>職人<rt>しょくにん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>です。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*("Nhớ thất bại đi" — câu của người thợ. Thái, cố lên nhé.)* |

---

## Tình huống 7 — Bàn 仕上げ · 17:00, hỏi lại 先輩 cho rõ trước khi về

| Vai | Lời thoại |
|---|---|
| Thái | スズキさん、もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>明日<rt>あした</rt></ruby>は#<ruby>320<rt>さんびゃくにじゅう</rt></ruby>からやり<ruby>直<rt>なお</rt></ruby>す、ということでよろしいでしょうか？<br>*(Anh Suzuki, cho em xác nhận lại một lần nữa. Mai làm lại từ #320, đúng không ạ?)* |
| Suzuki | はい、そうです。#<ruby>320<rt>さんびゃくにじゅう</rt></ruby>で<ruby>機械加工<rt>きかいかこう</rt></ruby>の<ruby>跡<rt>あと</rt></ruby>と、<ruby>今日<rt>きょう</rt></ruby>できた<ruby>谷<rt>たに</rt></ruby>を<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>消<rt>け</rt></ruby>してから<ruby>進<rt>すす</rt></ruby>んでください。<br>*(Vâng, đúng vậy. Bắt đầu từ #320, xoá hết vết phay máy và vết khe hôm nay rồi mới tiếp.)* |
| Thái | <ruby>段階<rt>だんかい</rt></ruby>ごとに<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>90<rt>きゅうじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>変<rt>か</rt></ruby>えるんですよね？<br>*(Mỗi bước đổi hướng 90 độ đúng không ạ?)* |
| Suzuki | そうです。それでチェックできます。<ruby>前<rt>まえ</rt></ruby>の<ruby>方向<rt>ほうこう</rt></ruby>の<ruby>傷<rt>きず</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っていれば<ruby>進<rt>すす</rt></ruby>んじゃダメです。<br>*(Đúng. Để check được. Còn vết theo hướng cũ thì chưa được tiến bước.)* |
| Thái | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em hiểu rõ rồi. Em cảm ơn anh ạ. Em xin phép về trước.)* |
| Suzuki | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Em vất vả rồi.)* |

---

## Tình huống 8 — Phòng 201 · 19:00, Putra an ủi (quan sát đàn anh nước ngoài)

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、<ruby>顔<rt>かお</rt></ruby>が<ruby>暗<rt>くら</rt></ruby>いね。<ruby>何<rt>なに</rt></ruby>かあった？<br>*(Anh Thái, mặt buồn nhỉ. Có chuyện gì à?)* |
| Thái | プトラさん...<ruby>今日<rt>きょう</rt></ruby>スズキさんに<ruby>叱<rt>しか</rt></ruby>られました。<br>*(Anh Putra... hôm nay em bị anh Suzuki mắng.)* |
| Putra | <ruby>磨<rt>みが</rt></ruby>き？<br>*(Việc đánh bóng à?)* |
| Thái | はい。#<ruby>800<rt>はっぴゃく</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばしてしまいました。<br>*(Vâng. Em đã bỏ qua bước #800.)* |
| Putra | あー、それね。<ruby>俺<rt>おれ</rt></ruby>も<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じことをやりましたよ。<br>*(À, vụ đó. Mình một năm trước cũng làm y vậy.)* |
| Thái | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか？<br>*(Ơ, thật ạ?)* |
| Putra | <ruby>本当<rt>ほんとう</rt></ruby>。<ruby>新人<rt>しんじん</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>でも<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>は<ruby>飛<rt>と</rt></ruby>ばすんだって。<ruby>叱<rt>しか</rt></ruby>られて<ruby>初<rt>はじ</rt></ruby>めて<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Thật. Người mới ai cũng bỏ bước một lần. Bị mắng mới thấm vào cơ thể.)* |
| Thái | <ruby>少<rt>すこ</rt></ruby>し<ruby>救<rt>すく</rt></ruby>われました。ありがとうございます。<br>*(Em thấy nhẹ lòng hơn. Em cảm ơn anh.)* |
| Putra | スズキさんは<ruby>厳<rt>きび</rt></ruby>しいけど、ちゃんと<ruby>教<rt>おし</rt></ruby>えてくれる<ruby>人<rt>ひと</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby>はゆっくり<ruby>順番<rt>じゅんばん</rt></ruby><ruby>通<rt>どお</rt></ruby>りやろう。<br>*(Anh Suzuki nghiêm khắc nhưng dạy nhiệt tình. Mai cứ chậm theo đúng thứ tự nhé.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố.)* |

---

## Tình huống 9 — Phòng 201 · 22:00, gọi LINE về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — gọi điện về VN để ôn lại từ vựng chuyên ngành.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, qua LINE video) Anh ơi! Sao mặt cau có vậy? |
| Thái | (tiếng Việt) Anh bị mắng hôm nay. Tự ý bỏ một bước trong quy trình mài khuôn, kết quả là phôi bị lỗi. |
| Mai | (tiếng Việt) Nặng không anh? Có bị phạt gì không? |
| Thái | (tiếng Việt) Không phạt, chỉ phải làm lại từ đầu. Nhưng anh xấu hổ vì bài học sơ đẳng. Anh Suzuki nói "失敗覚えとけ" — nhớ thất bại đi. |
| Mai | (tiếng Việt) Cái câu đó hay đấy anh. Có vẻ Nhật người ta coi thất bại như nguyên liệu để học. |
| Thái | (tiếng Việt) Ừ. Anh học được mấy từ mới: **磨き** là mài bóng, **砥石** là đá mài, **湿式** là mài ướt, **当て木** là tấm gỗ đệm lót dưới giấy nhám. Còn **深い谷** — "vết khe sâu" — là defect khi bỏ bước. |
| Mai | (tiếng Việt) Anh ghi vào sổ tay chưa? |
| Thái | (tiếng Việt) Ghi rồi. Còn cụm **不良率** — tỷ lệ lỗi. Anh Suzuki bảo nếu đây là khuôn giao Toyota mà lỗi 10% thì phải đi xin lỗi khách. |
| Mai | (tiếng Việt) Sợ thật. Nhật làm chậm mà chuẩn từng milimét. |
| Thái | (tiếng Việt) Ừ. Anh Putra cùng phòng bảo "誰でも1回は飛ばす" — ai mới cũng bỏ bước một lần. Anh thấy đỡ hơn nhiều. |
| Mai | (tiếng Việt) Ngủ sớm đi anh, mai làm lại từ #320. Yêu anh. |
| Thái | (tiếng Việt) Yêu em. Ngủ ngon. |

---

## Tình huống 10 — Bàn 仕上げ · 8:30 sáng hôm sau, báo cáo và bắt đầu lại

| Vai | Lời thoại |
|---|---|
| Thái | スズキさん、おはようございます。<ruby>昨日<rt>きのう</rt></ruby>は<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<ruby>今日<rt>きょう</rt></ruby>は#<ruby>320<rt>さんびゃくにじゅう</rt></ruby>から<ruby>順番<rt>じゅんばん</rt></ruby><ruby>通<rt>どお</rt></ruby>りやり<ruby>直<rt>なお</rt></ruby>します。<br>*(Anh Suzuki, chào buổi sáng. Hôm qua em xin lỗi anh. Hôm nay em sẽ làm lại từ #320 theo đúng thứ tự ạ.)* |
| Suzuki | おはようございます。はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>各<rt>かく</rt></ruby><ruby>段階<rt>だんかい</rt></ruby><ruby>終<rt>お</rt></ruby>わったら<ruby>声<rt>こえ</rt></ruby>をかけてください。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Chào em. Vâng, nhờ em. Mỗi bước xong thì gọi tôi nhé. Cùng kiểm tra.)* |
| Thái | はい、<ruby>段階<rt>だんかい</rt></ruby>ごとに<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em sẽ báo cáo theo từng bước.)* |
| Suzuki | それです。それが<ruby>報連相<rt>ほうれんそう</rt></ruby>です。<br>*(Đúng vậy. Đó chính là 報連相.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |

---

## Đọng lại chương 3

Tuần thứ hai ở xưởng, Thái học được bộ mẫu câu giao tiếp với 先輩 trong nghề thủ công: **nhận phôi practice và xác nhận yêu cầu** (#2000仕上げまで持っていきましょう), **hỏi lại lễ phép từ chuyên ngành** (〜というのは何でしょうか・どれくらいですか), **đáp lễ khi 先輩 chỉnh tư thế** (どれくらい抜けばいいですか), **báo cáo khi gặp defect** (見ていただけますか・深い谷が残っています), **nhận lỗi và xin làm lại** (申し訳ありません・やり直させてください), **xác nhận lại quy trình trước khi về** (〜ということでよろしいでしょうか). Đồng thời học được nguyên lý **五段階の磨き** (đá mài #320-#600 → giấy nhám #800-#1500 → giấy ướt #2000-#3000) và bài học monozukuri: **失敗覚えとけ** — thất bại là nguyên liệu để cơ thể nhớ. Bỏ một bước thì **深い谷** mãi không xoá được — cũng như báo cáo thiếu một mắt xích trong **報連相** thì cả dây chuyền không tin nhau được.

> Từ vựng & mẫu câu chương này: 磨き・砥石・当て木・湿式・半光沢・鏡面仕上げ・深い谷・不良率・失敗・やり直し・機械加工の跡・段階・順番・感覚・職人・報連相・〜というのは何でしょうか・〜ということでよろしいでしょうか・申し訳ありません・やり直させてください・お先に失礼します・失敗覚えとけ

## Bí quyết chương

- **5 cấp mài bóng**: dấu ấn ngành khuôn — bỏ bước = "深い谷" lộ ra. Bài học không thể quên.
- **"失敗覚えとけ"**: triết lý monozukuri Nhật — thất bại là học, khác cách VN coi thất bại tiêu cực.
- **Putra an ủi**: "誰でも1回は飛ばす" — trải nghiệm chung của bạn cùng đợt nước ngoài.
- **Mai LINE**: cảnh tiếng Việt ôn từ vựng JP — anh dạy em qua câu chuyện thất bại của chính mình.
- **"力じゃない、感覚"**: câu chốt của Suzuki — kỹ năng tay cảm > sức mạnh.

> *"#800 bỏ → 深い谷. Lần đầu hiểu sao Nhật làm chậm mà chính xác."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 練習用 | れんしゅうよう | LUYỆN TẬP DỤNG | Dùng để luyện tập |
| 材質 | ざいしつ | TÀI CHẤT | Vật liệu |
| 鋼 | こう | CƯƠNG | Thép |
| 定番 | ていばん | ĐỊNH PHIÊN | Tiêu chuẩn, phổ biến |
| 材料 | ざいりょう | TÀI LIỆU | Vật liệu |
| 目標 | もくひょう | MỤC TIÊU | Mục tiêu |
| 仕上げ | しあげ | SĨ THƯỢNG | Hoàn thiện |
| 光沢 | こうたく | QUANG TRẠCH | Độ bóng |
| 半光沢 | はんこうたく | BÁN QUANG TRẠCH | Bán bóng |
| 状態 | じょうたい | TRẠNG THÁI | Trạng thái |
| 道具 | どうぐ | ĐẠO CỤ | Đồ nghề |
| 段階 | だんかい | ĐOẠN GIAI | Bước, giai đoạn |
| 機械加工 | きかいかこう | CƠ GIỚI GIA CÔNG | Gia công cơ khí |
| 跡 | あと | TÍCH | Vết, dấu |
| 均等 | きんとう | QUÂN ĐẲNG | Đều |
| 一方向 | いちほうこう | NHẤT PHƯƠNG HƯỚNG | Một hướng |
| 観察 | かんさつ | QUAN SÁT | Quan sát |
| 当て木 | あてぎ | ĐƯƠNG MỘC | Tấm gỗ kê |
| 板 | いた | BẢN | Tấm ván |
| 面 | めん | DIỆN | Mặt, bề mặt |
| 波打つ | なみうつ | BA ĐẢ | Gợn sóng |
| 方向 | ほうこう | PHƯƠNG HƯỚNG | Phương hướng |
| 湿式 | しっしき | THẤP THỨC | Mài ướt |
| 感覚 | かんかく | CẢM GIÁC | Cảm giác |
| 通る | とおる | THÔNG | Đi qua |
| 表面 | ひょうめん | BIỂU DIỆN | Bề mặt |
| 蛍光灯 | けいこうとう | HUỲNH QUANG ĐĂNG | Đèn huỳnh quang |
| 谷 | たに | CỐC | Khe, rãnh |
| 残る | のこる | TÀN | Còn lại |
| 進具合 | すすみぐあい | TIẾN CỤ HỢP | Tiến độ |
| 慌てる | あわてる | HOẢNG | Hốt hoảng |
| 傷 | きず | THƯƠNG | Vết thương, vết xước |
| 溝 | みぞ | CẤU | Rãnh |
| 飛ばす | とばす | PHI | Bỏ qua, nhảy bước |
| 申し訳 | もうしわけ | THÂN DỊCH | Lời xin lỗi |
| 客先 | きゃくさき | KHÁCH TIÊN | Khách hàng |
| 不良率 | ふりょうりつ | BẤT LƯƠNG SUẤT | Tỷ lệ lỗi |
| 謝る | あやまる | TẠ | Xin lỗi |
| やり直し | やりなおし | TRỰC | Làm lại |
| 失敗 | しっぱい | THẤT BẠI | Thất bại |
| 職人 | しょくにん | CHỨC NHÂN | Người thợ |
| 進む | すすむ | TIẾN | Tiến lên |
| 顔 | かお | NHAN | Mặt |
| 救う | すくう | CỨU | Cứu, giải thoát |
| 各 | かく | CÁC | Mỗi, từng |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000004, 800000014, NULL, 'markdown_book', 'T4. Khoá xe nâng và móc tải cẩu (フォークリフト・玉掛け講習)', '# Sách kỹ sư khuôn đúc · T4. Khoá xe nâng và móc tải cẩu (フォークリフト・玉掛け講習)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) cùng Putra (Indonesia) và Sakurai (đàn anh người Nhật, 25 tuổi) đi học khoá 技能講習 フォークリフト + 玉掛け tại 愛知労働基準協会, Nagoya. Học các mẫu hội thoại tiếng Nhật trong môi trường lớp học nghề: nghe cấp trên thông báo điều động đi học chứng chỉ, tự giới thiệu lại với đồng nghiệp người Nhật, hỏi đường + nói chuyện tàu Meitetsu, nghe giảng viên trình bày lý thuyết an toàn (低速運転・視界確保・荷重制限), hỏi lại lễ phép khi chưa hiểu thuật ngữ kỹ thuật (パレット・荷重・修了試験), quan sát đàn anh người Nhật làm mẫu, báo cáo kết quả thi với 工場長.

---

## Bối cảnh

Tháng 6 năm 2022, một tháng sau khi Thái đến Nhật. 工場長 Tanaka muốn ba người — Thái, Putra và đàn anh Sakurai (年目 thứ 2, tốt nghiệp 高専 cơ khí) — đi học khoá kỹ năng フォークリフト (4 ngày) và 玉掛け (3 ngày) tại trung tâm 愛知労働基準協会 ở Minato-ku, Nagoya. Trình độ tiếng Nhật N4. Chương này tập trung mẫu câu giao tiếp trong lớp học nghề tại Nhật: nghe điều động ở 朝礼, làm quen đàn anh người Nhật, nghe thầy giảng quy tắc an toàn, hỏi lại thuật ngữ chuyên ngành, báo cáo kết quả 修了試験 cho cấp trên.

---

## Tình huống 1 — Xưởng みなみ精密金型 · 8:30 sáng thứ 2, 朝礼 nghe cấp trên điều động đi học

| Vai | Lời thoại |
|---|---|
| Tanaka | （<ruby>朝礼<rt>ちょうれい</rt></ruby>で）タイ<ruby>君<rt>くん</rt></ruby>、プトラ<ruby>君<rt>くん</rt></ruby>、サクライ<ruby>君<rt>くん</rt></ruby>、<ruby>前<rt>まえ</rt></ruby>に<ruby>来<rt>き</rt></ruby>てください。<br>*(Tại buổi 朝礼. Thái, Putra, Sakurai, ba em ra phía trước nhé.)* |
| 3 người | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, xin phép.)* |
| Tanaka | <ruby>来週<rt>らいしゅう</rt></ruby>からフォークリフトと<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>技能講習<rt>ぎのうこうしゅう</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってもらいます。<br>*(Tuần sau ba em đi học khoá kỹ năng xe nâng và móc tải.)* |
| Thái | え、<ruby>講習<rt>こうしゅう</rt></ruby>ですか？<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、「<ruby>技能講習<rt>ぎのうこうしゅう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Ơ, có khoá học ạ? Em xin lỗi, "ginou koushuu" nghĩa là gì ạ?)* |
| Tanaka | <ruby>法律<rt>ほうりつ</rt></ruby>で<ruby>決<rt>き</rt></ruby>められた<ruby>資格<rt>しかく</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>です。<ruby>1<rt>いち</rt></ruby>トン<ruby>以上<rt>いじょう</rt></ruby>のフォークリフトを<ruby>運転<rt>うんてん</rt></ruby>したり、<ruby>金型<rt>かながた</rt></ruby>を<ruby>吊<rt>つ</rt></ruby>ったりするには、これがないとダメです。<br>*(Là khoá học chứng chỉ do pháp luật quy định. Để lái xe nâng từ 1 tấn trở lên hay cẩu khuôn thì không có chứng chỉ này là không được.)* |
| Thái | なるほど、<ruby>法律<rt>ほうりつ</rt></ruby>で<ruby>決<rt>き</rt></ruby>められているということですね。<br>*(Em hiểu rồi, là quy định của pháp luật ạ.)* |
| Tanaka | そうです。フォークリフトが<ruby>4<rt>よっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>、<ruby>玉掛<rt>たまか</rt></ruby>けが<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>。<ruby>費用<rt>ひよう</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>です。<br>*(Xe nâng 4 ngày, móc tải 3 ngày. Chi phí công ty đài thọ hết.)* |
| Thái | ありがとうございます！<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Em cảm ơn ông ạ! Em nhất định sẽ đỗ.)* |
| Sakurai | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>もまだ<ruby>持<rt>も</rt></ruby>っていません。<ruby>恥<rt>は</rt></ruby>ずかしいですが、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Trưởng nhà máy, em cũng chưa có ạ. Hơi ngại, nhưng em sẽ cùng cố gắng.)* |
| Tanaka | サクライ<ruby>君<rt>くん</rt></ruby>はリーダーですよ。<ruby>2人<rt>ふたり</rt></ruby>の<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てあげてください。<br>*(Sakurai là trưởng nhóm đấy. Cậu chăm hai đứa giúp tôi.)* |
| Sakurai | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Nhà ăn công ty · 12:30 cùng ngày, làm quen Sakurai và hỏi lại khi chưa hiểu

| Vai | Lời thoại |
|---|---|
| Sakurai | (đặt khay cơm xuống) タイさん、プトラさん、<ruby>隣<rt>となり</rt></ruby><ruby>座<rt>すわ</rt></ruby>っていい？<br>*(Anh Thái, anh Putra, tôi ngồi cạnh được chứ?)* |
| Thái | はい、どうぞ。<br>*(Vâng, mời anh.)* |
| Sakurai | <ruby>改<rt>あらた</rt></ruby>めて<ruby>自己紹介<rt>じこしょうかい</rt></ruby>します。<ruby>桜井<rt>さくらい</rt></ruby><ruby>健太<rt>けんた</rt></ruby>、<ruby>25<rt>にじゅうご</rt></ruby><ruby>歳<rt>さい</rt></ruby>。<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。<br>*(Tôi tự giới thiệu lại. Sakurai Kenta, 25 tuổi. Năm 2 gia công cơ khí.)* |
| Thái | はじめまして、グエン・ヴァン・タイです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<ruby>大学<rt>だいがく</rt></ruby>で<ruby>機械工学<rt>きかいこうがく</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Rất hân hạnh, em là Nguyễn Văn Thái. Em từ Việt Nam đến. Em học cơ khí ở đại học.)* |
| Putra | プトラです、インドネシアから<ruby>来<rt>き</rt></ruby>ました。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。<br>*(Tôi là Putra, đến từ Indonesia. Visa kỹ năng đặc định 1, năm 2.)* |
| Sakurai | <ruby>俺<rt>おれ</rt></ruby>は<ruby>高専<rt>こうせん</rt></ruby><ruby>出<rt>で</rt></ruby>だから、<ruby>大学<rt>だいがく</rt></ruby><ruby>出<rt>で</rt></ruby>のタイさんが<ruby>上<rt>うえ</rt></ruby>ですよ。<br>*(Tôi học cao đẳng kỹ thuật ra, anh Thái đại học ra là trên tôi đấy.)* |
| Thái | すみません、「<ruby>高専<rt>こうせん</rt></ruby>」というのはどんな<ruby>学校<rt>がっこう</rt></ruby>ですか？<br>*(Xin lỗi, "kousen" là trường thế nào ạ?)* |
| Sakurai | <ruby>高等<rt>こうとう</rt></ruby><ruby>専門<rt>せんもん</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>です。<ruby>15<rt>じゅうご</rt></ruby><ruby>歳<rt>さい</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>する<ruby>学校<rt>がっこう</rt></ruby>です。<br>*(Là viết tắt của "cao đẳng chuyên môn bậc cao". Học kỹ thuật 5 năm từ năm 15 tuổi.)* |
| Thái | <ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>する<ruby>学校<rt>がっこう</rt></ruby>ということですね。ベトナムにはありません。<br>*(Tức là trường học kỹ thuật 5 năm ạ. Việt Nam không có.)* |
| Sakurai | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>講習<rt>こうしゅう</rt></ruby>。<ruby>分<rt>わ</rt></ruby>からないことがあったら<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Tuần sau ba đứa đi học cùng nhau. Có gì không hiểu cứ hỏi tôi đừng ngại.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |

---

## Tình huống 3 — Tàu Meitetsu · 7:00 sáng thứ 2 tuần sau, hỏi đường và nói chuyện trên tàu

| Vai | Lời thoại |
|---|---|
| Sakurai | (cầm vé) <ruby>安城<rt>あんじょう</rt></ruby><ruby>駅<rt>えき</rt></ruby>から<ruby>名古屋<rt>なごや</rt></ruby><ruby>港<rt>みなと</rt></ruby><ruby>区<rt>く</rt></ruby>まで<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>かかります。<ruby>名鉄<rt>めいてつ</rt></ruby>で<ruby>金山<rt>かなやま</rt></ruby><ruby>駅<rt>えき</rt></ruby><ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えです。<br>*(Từ ga Anjo đến Minato-ku Nagoya mất 1 tiếng. Đi tàu Meitetsu rồi đổi tàu ở ga Kanayama.)* |
| Thái | <ruby>金山<rt>かなやま</rt></ruby><ruby>駅<rt>えき</rt></ruby><ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>え、ということですね。メモしておきます。<br>*(Đổi tàu ở Kanayama, đúng không ạ. Em ghi lại.)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby><ruby>一回<rt>いっかい</rt></ruby><ruby>名古屋<rt>なごや</rt></ruby>に<ruby>行<rt>い</rt></ruby>ったことがある。<ruby>大須<rt>おおす</rt></ruby><ruby>商店街<rt>しょうてんがい</rt></ruby>はおもしろかったよ。<br>*(Tôi đi Nagoya một lần rồi. Phố mua sắm Osu vui lắm.)* |
| Sakurai | <ruby>大須<rt>おおす</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>も<ruby>好<rt>す</rt></ruby>き。<ruby>講習<rt>こうしゅう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら<ruby>週末<rt>しゅうまつ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>行<rt>い</rt></ruby>きませんか？<br>*(Osu tôi cũng thích. Học xong cuối tuần ba đứa đi không?)* |
| Thái | はい、ぜひ！<br>*(Vâng, đi chứ ạ!)* |
| Putra | (nhìn ra cửa sổ) あ、<ruby>大<rt>おお</rt></ruby>きな<ruby>工場<rt>こうじょう</rt></ruby>！<br>*(A, xưởng to quá!)* |
| Thái | サクライさん、あの<ruby>工場<rt>こうじょう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Anh Sakurai, xưởng kia là gì ạ?)* |
| Sakurai | トヨタ<ruby>自動車<rt>じどうしゃ</rt></ruby>の<ruby>本社工場<rt>ほんしゃこうじょう</rt></ruby>です。ここが<ruby>豊田市<rt>とよたし</rt></ruby>。トヨタの<ruby>本社<rt>ほんしゃ</rt></ruby>もここにあります。<br>*(Là xưởng chính của Toyota Motor. Đây là thành phố Toyota. Trụ sở Toyota cũng ở đây.)* |
| Thái | おお、<ruby>本物<rt>ほんもの</rt></ruby>のトヨタですね！<ruby>当社<rt>とうしゃ</rt></ruby>もトヨタに<ruby>納<rt>おさ</rt></ruby>めているということですね。<br>*(Ồ, Toyota thật ạ! Tức là công ty mình cũng giao hàng đến đây phải không ạ?)* |
| Sakurai | <ruby>直接<rt>ちょくせつ</rt></ruby>ではないけど、<ruby>二次<rt>にじ</rt></ruby>サプライヤーとしてね。よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。<br>*(Không phải trực tiếp, nhưng với tư cách nhà cung cấp cấp hai thôi. Anh nhớ tốt nhỉ.)* |
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Em được trưởng nhà máy dạy ạ.)* |

---

## Tình huống 4 — Trung tâm 愛知労働基準協会 · 9:00, giảng viên giới thiệu khoá học

| Vai | Lời thoại |
|---|---|
| Giảng viên | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>からフォークリフト<ruby>運転<rt>うんてん</rt></ruby><ruby>技能講習<rt>ぎのうこうしゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mọi người, chào buổi sáng. Hôm nay chúng ta bắt đầu khoá kỹ năng vận hành xe nâng.)* |
| Học viên | おはようございます！<br>*(Chào buổi sáng ạ!)* |
| Giảng viên | <ruby>4<rt>よっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>です。<ruby>学科<rt>がっか</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<ruby>4<rt>よっ</rt></ruby><ruby>日目<rt>かめ</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>に<ruby>修了試験<rt>しゅうりょうしけん</rt></ruby>があります。<br>*(4 ngày, tổng cộng 31 giờ. Lý thuyết 11 giờ, thực hành 20 giờ. Chiều ngày thứ 4 có kỳ thi cuối khoá.)* |
| Thái | すみません、「<ruby>学科<rt>がっか</rt></ruby>」と「<ruby>実技<rt>じつぎ</rt></ruby>」の<ruby>違<rt>ちが</rt></ruby>いを<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Xin lỗi, thầy giải thích giúp em khác nhau giữa "gakka" và "jitsugi" được không ạ?)* |
| Giảng viên | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>学科<rt>がっか</rt></ruby>は<ruby>教室<rt>きょうしつ</rt></ruby>での<ruby>勉強<rt>べんきょう</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>実際<rt>じっさい</rt></ruby>にフォークリフトに<ruby>乗<rt>の</rt></ruby>って<ruby>運転<rt>うんてん</rt></ruby>する<ruby>練習<rt>れんしゅう</rt></ruby>です。<br>*(Câu hỏi hay đấy. "Gakka" là học trong lớp, "jitsugi" là thực sự lên xe nâng để lái thử.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました、ありがとうございます。<br>*(Em hiểu rồi, em cảm ơn thầy ạ.)* |
| Giảng viên | <ruby>合格率<rt>ごうかくりつ</rt></ruby>は<ruby>95<rt>きゅうじゅうご</rt></ruby>パーセントですから、<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Tỷ lệ đỗ 95% nên học nghiêm túc là yên tâm.)* |
| Thái | (nhỏ thở phào, ghi vào sổ)<br>*(Thái thở phào, ghi vào sổ tay.)* |

---

## Tình huống 5 — Phòng học · 10:30, học lý thuyết 3 nguyên tắc an toàn

| Vai | Lời thoại |
|---|---|
| Giảng viên | フォークリフトを<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>運転<rt>うんてん</rt></ruby>するための<ruby>3<rt>さん</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Hãy nhớ 3 nguyên tắc để lái xe nâng an toàn.)* |
| Giảng viên | <ruby>第一<rt>だいいち</rt></ruby>、<ruby>低速<rt>ていそく</rt></ruby><ruby>運転<rt>うんてん</rt></ruby>。<ruby>工場内<rt>こうじょうない</rt></ruby>は<ruby>時速<rt>じそく</rt></ruby><ruby>10<rt>じゅっ</rt></ruby>キロ<ruby>以下<rt>いか</rt></ruby>です。<br>*(Thứ nhất, lái tốc độ thấp. Trong xưởng dưới 10km/giờ.)* |
| Giảng viên | <ruby>第二<rt>だいに</rt></ruby>、<ruby>視界<rt>しかい</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>。<ruby>荷物<rt>にもつ</rt></ruby>で<ruby>前<rt>まえ</rt></ruby>が<ruby>見<rt>み</rt></ruby>えない<ruby>時<rt>とき</rt></ruby>は、<ruby>必<rt>かなら</rt></ruby>ず<ruby>後<rt>うし</rt></ruby>ろ<ruby>向<rt>む</rt></ruby>きで<ruby>運転<rt>うんてん</rt></ruby>します。<br>*(Thứ hai, đảm bảo tầm nhìn. Khi hàng che mất phía trước, nhất định phải lái lùi.)* |
| Thái | すみません、「<ruby>視界<rt>しかい</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>」というのは、<ruby>前<rt>まえ</rt></ruby>がよく<ruby>見<rt>み</rt></ruby>えるようにするということですね？<br>*(Xin lỗi, "shikai kakuho" tức là làm sao thấy rõ phía trước, đúng không ạ?)* |
| Giảng viên | そうです。よく<ruby>理解<rt>りかい</rt></ruby>していますね。<br>*(Đúng vậy. Em hiểu nhanh đấy.)* |
| Giảng viên | <ruby>第三<rt>だいさん</rt></ruby>、<ruby>荷重<rt>かじゅう</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<ruby>機械<rt>きかい</rt></ruby>ごとに<ruby>運<rt>はこ</rt></ruby>べる<ruby>重<rt>おも</rt></ruby>さが<ruby>決<rt>き</rt></ruby>まっています。<br>*(Thứ ba, tuân thủ giới hạn tải. Mỗi máy có trọng lượng cho phép vận chuyển riêng.)* |
| Thái | 「<ruby>荷重<rt>かじゅう</rt></ruby>」は<ruby>荷物<rt>にもつ</rt></ruby>の<ruby>重<rt>おも</rt></ruby>さということですか？<br>*(Em hỏi lại, "kajuu" tức là trọng lượng hàng phải không ạ?)* |
| Giảng viên | そうです。<ruby>当社<rt>とうしゃ</rt></ruby>のフォークリフトは<ruby>2.5<rt>にてんご</rt></ruby>トンまで。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>超<rt>こ</rt></ruby>えないでください。<br>*(Đúng. Xe nâng của trung tâm này lên tới 2,5 tấn. Tuyệt đối không vượt.)* |
| Putra | (nói nhỏ với Thái) フォークの<ruby>長<rt>なが</rt></ruby>さも<ruby>覚<rt>おぼ</rt></ruby>えるんだよ。<br>*(Nói nhỏ với Thái. Phải nhớ cả độ dài càng nâng nhé.)* |
| Thái | はい、ありがとう。<br>*(Vâng, cảm ơn anh.)* |

---

## Tình huống 6 — Sân thực hành · 14:00 ngày thứ 3, quan sát đàn anh Sakurai làm mẫu

| Vai | Lời thoại |
|---|---|
| Giảng viên | <ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>、<ruby>先<rt>さき</rt></ruby>に<ruby>乗<rt>の</rt></ruby>ってお<ruby>手本<rt>てほん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Em Sakurai, lên trước làm mẫu nhé.)* |
| Sakurai | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。(lên xe nâng)<br>*(Vâng, em xin phép.)* |
| Sakurai | （<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>して）<ruby>前<rt>まえ</rt></ruby>よし、<ruby>後<rt>うし</rt></ruby>ろよし、<ruby>左右<rt>さゆう</rt></ruby>よし、<ruby>発進<rt>はっしん</rt></ruby>します！<br>*(Hô to. Trước an toàn, sau an toàn, hai bên an toàn, khởi hành!)* |
| Thái | (nhỏ với Putra) <ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すんですね。<br>*(Nói nhỏ với Putra. Phải hô to thành tiếng nhỉ.)* |
| Putra | (nhỏ) はい、<ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>といいます。<ruby>日本<rt>にほん</rt></ruby>の<ruby>工場<rt>こうじょう</rt></ruby>で<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Nhỏ. Gọi là "shisashi kakunin" — chỉ tay xác nhận. Là cơ bản ở xưởng Nhật.)* |
| Giảng viên | (sau khi Sakurai đỗ xe) <ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>、<ruby>上手<rt>じょうず</rt></ruby>ですね。<ruby>声出<rt>こえだ</rt></ruby>しも<ruby>完璧<rt>かんぺき</rt></ruby>。<br>*(Em Sakurai, giỏi đấy. Hô tiếng cũng hoàn hảo.)* |
| Sakurai | (xuống xe) タイさん、プトラさん、<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すと<ruby>自分<rt>じぶん</rt></ruby>も<ruby>安心<rt>あんしん</rt></ruby>します。<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Xuống xe. Anh Thái, anh Putra, hô tiếng thì bản thân cũng yên tâm. Hai anh xác nhận to tiếng nhé.)* |
| Thái | はい、<ruby>分<rt>わ</rt></ruby>かりました。サクライさん、ありがとうございます。<br>*(Vâng, em hiểu rồi. Cảm ơn anh Sakurai.)* |
| Giảng viên | グエン<ruby>君<rt>くん</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>はあなたです。<ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>を<ruby>真似<rt>まね</rt></ruby>してみてください。<br>*(Em Nguyễn, tiếp theo là em. Em thử bắt chước cách của Sakurai xem.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |

---

## Tình huống 7 — Sân thực hành · 14:30, Thái thực hành lần đầu

| Vai | Lời thoại |
|---|---|
| Thái | (lên xe nâng, hô to giống Sakurai) <ruby>前<rt>まえ</rt></ruby>よし、<ruby>後<rt>うし</rt></ruby>ろよし、<ruby>左右<rt>さゆう</rt></ruby>よし、<ruby>発進<rt>はっしん</rt></ruby>します！<br>*(Trước an toàn, sau an toàn, hai bên an toàn, khởi hành!)* |
| Giảng viên | いいですね。では、パレットを<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げて<ruby>向<rt>む</rt></ruby>こうまで<ruby>運<rt>はこ</rt></ruby>んでください。<br>*(Tốt đấy. Vậy nâng pallet lên rồi vận chuyển sang phía bên kia.)* |
| Thái | すみません、「パレット」というのは、<ruby>下<rt>した</rt></ruby>の<ruby>木<rt>き</rt></ruby>の<ruby>台<rt>だい</rt></ruby>のことですか？<br>*(Xin lỗi, "paretto" có phải là cái bệ gỗ phía dưới không ạ?)* |
| Giảng viên | そうです、その<ruby>木製<rt>もくせい</rt></ruby>の<ruby>台<rt>だい</rt></ruby>です。<ruby>2<rt>に</rt></ruby>つの<ruby>穴<rt>あな</rt></ruby>にフォークを<ruby>差<rt>さ</rt></ruby>し<ruby>込<rt>こ</rt></ruby>んでください。<br>*(Đúng, cái bệ bằng gỗ đó. Em cắm hai càng nâng vào hai cái lỗ.)* |
| Thái | (đưa càng nâng vào lỗ pallet, từ từ nâng lên) はい、<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げました。<br>*(Vâng, em đã nâng lên.)* |
| Giảng viên | フォークは<ruby>低<rt>ひく</rt></ruby>く<ruby>運<rt>はこ</rt></ruby>びます。<ruby>地面<rt>じめん</rt></ruby>から<ruby>15<rt>じゅうご</rt></ruby>センチぐらい。<ruby>高<rt>たか</rt></ruby>くしないでください。<br>*(Càng nâng vận chuyển ở thế thấp. Cách mặt đất khoảng 15cm. Không nâng cao.)* |
| Thái | はい、<ruby>低<rt>ひく</rt></ruby>くですね。<br>*(Vâng, ở thế thấp ạ.)* |
| Giảng viên | （<ruby>頷<rt>うなず</rt></ruby>く）<ruby>上手<rt>じょうず</rt></ruby>です。<ruby>機械工学<rt>きかいこうがく</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>ですか？<br>*(Gật đầu. Khéo đấy. Học cơ khí ra à?)* |
| Thái | はい、ベトナムの<ruby>大学<rt>だいがく</rt></ruby>で<ruby>機械工学<rt>きかいこうがく</rt></ruby>を<ruby>専攻<rt>せんこう</rt></ruby>しました。<br>*(Vâng, em chuyên ngành cơ khí ở đại học Việt Nam ạ.)* |
| Giảng viên | <ruby>道理<rt>どうり</rt></ruby>で<ruby>感覚<rt>かんかく</rt></ruby>がいい。<ruby>明日<rt>あした</rt></ruby>から<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>応用<rt>おうよう</rt></ruby>も<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>そうですね。<br>*(Hèn chi cảm giác tốt. Mai chuyển sang phần móc tải chắc cũng ổn nhỉ.)* |

---

## Tình huống 8 — Phòng học · ngày 4 chiều, công bố kết quả 修了試験

| Vai | Lời thoại |
|---|---|
| Giảng viên | <ruby>修了試験<rt>しゅうりょうしけん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>します。<br>*(Tôi công bố kết quả kỳ thi cuối khoá.)* |
| Thái | (hồi hộp, ngồi thẳng lưng)<br>*(Thái hồi hộp, ngồi thẳng lưng.)* |
| Giảng viên | グエン・ヴァン・タイ<ruby>君<rt>くん</rt></ruby>...<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Nguyễn Văn Thái... đỗ.)* |
| Thái | （<ruby>笑顔<rt>えがお</rt></ruby>で）はい、ありがとうございます！<br>*(Cười tươi. Vâng, em cảm ơn thầy ạ!)* |
| Giảng viên | プトラ<ruby>君<rt>くん</rt></ruby>...<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>...<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>合格<rt>ごうかく</rt></ruby>です、おめでとう。<br>*(Putra... đỗ. Sakurai... đỗ. Cả ba em đều đỗ, chúc mừng.)* |
| Sakurai | やった！<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも！<br>*(Yes! Cả ba đứa!)* |
| Putra | よかった〜。<br>*(May quá.)* |
| Giảng viên | <ruby>修了証<rt>しゅうりょうしょう</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>へ<ruby>郵送<rt>ゆうそう</rt></ruby>します。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>講習<rt>こうしゅう</rt></ruby>です、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Chứng chỉ một tuần sau sẽ gửi qua bưu điện về công ty. Tuần sau chuyển sang khoá móc tải, các em cố gắng.)* |
| 3 người | ありがとうございました！<br>*(Em cảm ơn thầy ạ!)* |

---

## Tình huống 9 — Văn phòng 工場長 · sáng thứ 2, báo cáo kết quả với Tanaka

| Vai | Lời thoại |
|---|---|
| Thái | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<br>*(Gõ cửa. Em xin phép. Trưởng nhà máy, em đến báo cáo ạ.)* |
| Tanaka | はい、どうぞ。<br>*(Vâng, mời vào.)* |
| Thái | <ruby>先週<rt>せんしゅう</rt></ruby>のフォークリフト<ruby>講習<rt>こうしゅう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Khoá xe nâng tuần trước, cả ba đứa em đều đỗ ạ.)* |
| Tanaka | おお、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも！よくやりましたね。<br>*(Ồ, cả ba đứa! Làm tốt lắm.)* |
| Thái | ありがとうございます。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>講習<rt>こうしゅう</rt></ruby>が<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>あります。<br>*(Em cảm ơn ông. Tuần sau có khoá móc tải 3 ngày ạ.)* |
| Tanaka | <ruby>玉掛<rt>たまか</rt></ruby>けも<ruby>頑張<rt>がんば</rt></ruby>ってください。<ruby>両方<rt>りょうほう</rt></ruby><ruby>取<rt>と</rt></ruby>れたら、<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>ができます。<br>*(Móc tải cũng cố gắng nhé. Có cả hai chứng chỉ thì làm được công việc vận chuyển khuôn.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Vâng, em nhất định sẽ đỗ.)* |
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、フォークリフト<ruby>免許<rt>めんきょ</rt></ruby>＋<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>免許<rt>めんきょ</rt></ruby>＋<ruby>研削<rt>けんさく</rt></ruby><ruby>砥石<rt>といし</rt></ruby><ruby>特別教育<rt>とくべつきょういく</rt></ruby>、これで<ruby>3<rt>みっ</rt></ruby>つ<ruby>資格<rt>しかく</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>できますね。<br>*(Thái, chứng chỉ xe nâng + móc tải + khoá đặc biệt đá mài, vậy là em sẽ có 3 chứng chỉ nhỉ.)* |
| Thái | <ruby>履歴書<rt>りれきしょ</rt></ruby>に<ruby>書<rt>か</rt></ruby>けますか？<br>*(Em viết được vào CV ạ?)* |
| Tanaka | もちろんです。<ruby>一生<rt>いっしょう</rt></ruby><ruby>有効<rt>ゆうこう</rt></ruby>な<ruby>国家<rt>こっか</rt></ruby><ruby>資格<rt>しかく</rt></ruby>ですから。<br>*(Tất nhiên rồi. Là chứng chỉ quốc gia có giá trị suốt đời mà.)* |
| Thái | (vui ra mặt) はい、ありがとうございます！<br>*(Vui ra mặt. Vâng, em cảm ơn ông!)* |

---

## Tình huống 10 — Phòng 201 · 22:00 cùng tối, gọi điện về cho mẹ (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) A lô mẹ, con đây. |
| Mẹ Thái | (tiếng Việt) Thái à! Hôm nay đi học về có mệt không con? |
| Thái | (tiếng Việt) Con đỗ rồi mẹ ơi! Bằng フォークリフト — lái xe nâng. Học 4 ngày, thi đỗ ngay. |
| Mẹ Thái | (tiếng Việt) Ôi giỏi quá. Mà bằng đấy có giá trị gì không con? |
| Thái | (tiếng Việt) Có chứ. Ông Tanaka trưởng nhà máy nói đây là 国家資格 — chứng chỉ quốc gia, viết được vào CV, có giá trị suốt đời mẹ ạ. |
| Mẹ Thái | (tiếng Việt) Thế con đi học với ai? |
| Thái | (tiếng Việt) Con với Putra bạn cùng phòng, với một anh người Nhật tên Sakurai. Anh ấy 25 tuổi, học 高専 — cao đẳng kỹ thuật ra. Tử tế lắm mẹ, dạy con "声出し" — hô to thành tiếng để xác nhận an toàn trước khi lái xe. |
| Mai | (tiếng Việt, ghé vào) Anh ơi! Sao em không thấy chứng chỉ gì hết? Chụp ảnh đi! |
| Thái | (tiếng Việt) 修了証 — giấy chứng nhận — một tuần nữa mới gửi về công ty. Sau đó anh chụp gửi em. |
| Mai | (tiếng Việt) Em tự hào về anh. Mới sang một tháng đã có chứng chỉ đầu tiên. |
| Thái | (tiếng Việt) Tuần sau anh học tiếp 玉掛け — móc tải để cẩu hàng. Học xong là anh đủ điều kiện vận chuyển khuôn 2 tấn ở xưởng. |
| Mẹ Thái | (tiếng Việt) Cẩn thận con nhé, máy móc nguy hiểm. |
| Thái | (tiếng Việt) Vâng mẹ. Ông Tanaka cũng dạy bọn con 3 nguyên tắc: 低速 lái chậm, 視界確保 nhìn rõ, 荷重制限 không quá tải. An toàn lắm mẹ. |

---

## Tình huống 11 — Nhà ăn công ty · trưa thứ 7, Sakurai rủ đi 大須 mừng đỗ

| Vai | Lời thoại |
|---|---|
| Sakurai | タイさん、プトラさん、<ruby>約束<rt>やくそく</rt></ruby>の<ruby>大須<rt>おおす</rt></ruby><ruby>商店街<rt>しょうてんがい</rt></ruby>、<ruby>明日<rt>あした</rt></ruby><ruby>行<rt>い</rt></ruby>きませんか？<ruby>合格祝<rt>ごうかくいわ</rt></ruby>いに。<br>*(Anh Thái, anh Putra, đi phố Osu đã hẹn đi không? Ngày mai. Mừng đỗ chứng chỉ.)* |
| Thái | はい、<ruby>行<rt>い</rt></ruby>きたいです！<ruby>名古屋<rt>なごや</rt></ruby>を<ruby>観光<rt>かんこう</rt></ruby>するのは<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Vâng, em muốn đi! Em lần đầu tham quan Nagoya.)* |
| Putra | おお、<ruby>俺<rt>おれ</rt></ruby>も<ruby>賛成<rt>さんせい</rt></ruby>！<ruby>大須<rt>おおす</rt></ruby>でハラル<ruby>料理<rt>りょうり</rt></ruby>もあります。<br>*(Ồ, tôi tán thành! Osu có cả đồ ăn halal nữa.)* |
| Sakurai | プトラさんはイスラム<ruby>教徒<rt>きょうと</rt></ruby>でしたね。じゃあハラル<ruby>料理<rt>りょうり</rt></ruby>のお<ruby>店<rt>みせ</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べておきます。<br>*(Anh Putra là tín đồ Hồi giáo nhỉ. Vậy tôi tra trước quán halal.)* |
| Putra | ありがとうサクライさん。タイさんは<ruby>何<rt>なに</rt></ruby>が<ruby>食<rt>た</rt></ruby>べたい？<br>*(Cảm ơn Sakurai. Anh Thái muốn ăn gì?)* |
| Thái | <ruby>名古屋<rt>なごや</rt></ruby><ruby>名物<rt>めいぶつ</rt></ruby>の<ruby>味噌<rt>みそ</rt></ruby>カツを<ruby>食<rt>た</rt></ruby>べてみたいです。<ruby>本<rt>ほん</rt></ruby>で<ruby>読<rt>よ</rt></ruby>みました。<br>*(Em muốn thử miso-katsu đặc sản Nagoya. Em đọc trong sách.)* |
| Sakurai | おお、よく<ruby>知<rt>し</rt></ruby>ってますね！<ruby>大須<rt>おおす</rt></ruby>に<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>店<rt>みせ</rt></ruby>があります。<ruby>連<rt>つ</rt></ruby>れて<ruby>行<rt>い</rt></ruby>きますよ。<br>*(Ồ, anh biết kỹ nhỉ! Osu có quán nổi tiếng. Tôi dẫn đi.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em nhờ anh.)* |
| Sakurai | <ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>安城駅<rt>あんじょうえき</rt></ruby><ruby>集合<rt>しゅうごう</rt></ruby>です。<ruby>遅<rt>おく</rt></ruby>れないでくださいね。<br>*(Sáng mai 10h tập trung ở ga Anjo. Đừng đến muộn nhé.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>時間<rt>じかん</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>行<rt>い</rt></ruby>きます。<br>*(Vâng, em nhất định đến đúng giờ.)* |

---

## Đọng lại chương 4

Một tháng sau khi sang Nhật, Thái đã có **chứng chỉ quốc gia đầu tiên**: フォークリフト技能講習 (4 ngày, 31 giờ, gồm 学科 và 実技). Trong lớp học nghề, Thái học được nhiều mẫu câu quan trọng: **nghe điều động ở 朝礼** (〜してもらいます), **hỏi lại lễ phép từ chuyên ngành** (〜というのは何ですか・〜ということですか), **tự giới thiệu lại với đồng nghiệp Nhật** (改めて自己紹介します), **nguyên tắc an toàn 3 nguyên tắc** (低速運転・視界確保・荷重制限), và **quan sát đàn anh làm mẫu** (お手本を見せてください・声出し・指差し確認 — văn hoá hô to thành tiếng để xác nhận). Cuối cùng là **mẫu câu báo cáo cấp trên** (報告に参りました・〜合格しました) — luyện thẳng kỹ năng 報連相 đã học chương trước. Phần thưởng: được anh Sakurai (高専 cơ khí, đàn anh năm 2) rủ đi 大須 mừng đỗ — bước đầu hoà nhập đồng nghiệp Nhật.

> Từ vựng & mẫu câu chương này: 技能講習・フォークリフト・玉掛け・修了試験・修了証・学科・実技・低速運転・視界確保・荷重制限・パレット・指差し確認・声出し・発進・お手本・高専・国家資格・履歴書・運搬・荷重・前よし後ろよし・〜というのは何ですか・〜ということですね・報告に参りました・合格しました・〜してもらいます・お疲れさまでした

## Bí quyết chương

- **3 chứng chỉ khởi điểm**: フォークリフト + 玉掛け + 研削砥石 — bắt buộc xưởng khuôn. Tanaka khen "履歴書に書ける" — động lực cho Thái.
- **Sakurai ra mắt**: 高専 cơ khí, 25 tuổi — bạn vừa thân vừa cạnh tranh xuyên năm 1-2. Vai trò đàn anh người Nhật dạy 声出し / 指差し確認.
- **Tiếp xúc Toyota City qua cửa sổ tàu**: mở nhận thức về quy mô hệ sinh thái Toyota.
- **Văn hoá lớp học nghề Nhật**: hô to xác nhận, làm mẫu, học viên bắt chước — mẫu "quan sát → bắt chước → thử → giảng viên phản hồi".

> *"6/2022. 1 tháng tại Nhật. 1 chứng chỉ quốc gia. Khởi đầu tốt."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 技能講習 | ぎのうこうしゅう | KỸ NĂNG GIẢNG TẬP | Khoá học chứng chỉ kỹ năng |
| 法律 | ほうりつ | PHÁP LUẬT | Pháp luật |
| 資格 | しかく | TƯ CÁCH | Chứng chỉ, tư cách |
| 講習 | こうしゅう | GIẢNG TẬP | Khoá học |
| 運転 | うんてん | VẬN CHUYỂN | Lái, vận hành |
| 吊る | つる | ĐIẾU | Treo, cẩu |
| 費用 | ひよう | PHÍ DỤNG | Chi phí |
| 合格 | ごうかく | HỢP CÁCH | Đỗ, đạt |
| 面倒 | めんどう | DIỆN ĐẢO | Phiền phức, chăm sóc |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | Tự giới thiệu |
| 高専 | こうせん | CAO CHUYÊN | Cao đẳng kỹ thuật chuyên môn |
| 技術 | ぎじゅつ | KỸ THUẬT | Kỹ thuật |
| 駅 | えき | DỊCH | Ga, nhà ga |
| 港 | みなと | CẢNG | Cảng |
| 乗り換え | のりかえ | THỪA HOÁN | Đổi tàu |
| 商店街 | しょうてんがい | THƯƠNG ĐIẾM NHAI | Phố mua sắm |
| 賛成 | さんせい | TÁN THÀNH | Tán thành |
| 教徒 | きょうと | GIÁO ĐỒ | Tín đồ |
| 料理 | りょうり | LIỆU LÝ | Món ăn |
| 調べる | しらべる | ĐIỀU | Tra, kiểm tra |
| 本社工場 | ほんしゃこうじょう | BẢN XÃ CÔNG TRƯỜNG | Nhà máy chính của trụ sở |
| 本物 | ほんもの | BẢN VẬT | Thật, đồ thật |
| 合計 | ごうけい | HỢP KẾ | Tổng cộng |
| 学科 | がっか | HỌC KHOA | Lý thuyết, môn học |
| 実技 | じつぎ | THỰC KỸ | Thực hành |
| 修了試験 | しゅうりょうしけん | TU LIỄU THÍ NGHIỆM | Thi cuối khoá |
| 教室 | きょうしつ | GIÁO THẤT | Lớp học |
| 実際 | じっさい | THỰC TẾ | Thực tế |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | Tỷ lệ đỗ |
| 真面目 | まじめ | CHÂN DIỆN MỤC | Nghiêm túc |
| 原則 | げんそく | NGUYÊN TẮC | Nguyên tắc |
| 低速 | ていそく | ĐÊ TỐC | Tốc độ thấp |
| 工場内 | こうじょうない | CÔNG TRƯỜNG NỘI | Trong nhà máy |
| 時速 | じそく | THỜI TỐC | Tốc độ giờ |
| 視界 | しかい | THỊ GIỚI | Tầm nhìn |
| 確保 | かくほ | XÁC BẢO | Đảm bảo |
| 荷物 | にもつ | HÀ VẬT | Hành lý, hàng |
| 荷重 | かじゅう | HÀ TRỌNG | Tải trọng |
| 制限 | せいげん | CHẾ HẠN | Giới hạn |
| 理解 | りかい | LÝ GIẢI | Hiểu |
| 超える | こえる | SIÊU | Vượt quá |
| 手本 | てほん | THỦ BẢN | Bài mẫu |
| 発進 | はっしん | PHÁT TIẾN | Khởi hành |
| 指差し確認 | ゆびさしかくにん | CHỈ SAI XÁC NHẬN | Chỉ tay xác nhận |
| 声出し | こえだし | THANH XUẤT | Hô to thành tiếng |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| パレット | — | — | Pallet (bệ gỗ) |
| 木製 | もくせい | MỘC CHẾ | Bằng gỗ |
| 穴 | あな | HUYỆT | Lỗ |
| 差し込む | さしこむ | SAI VIÊM | Cắm vào |
| 地面 | じめん | ĐỊA DIỆN | Mặt đất |
| 出身 | しゅっしん | XUẤT THÂN | Xuất thân |
| 専攻 | せんこう | CHUYÊN CÔNG | Chuyên ngành |
| 道理 | どうり | ĐẠO LÝ | Hèn chi |
| 応用 | おうよう | ỨNG DỤNG | Ứng dụng |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 発表 | はっぴょう | PHÁT BIỂU | Công bố |
| 修了証 | しゅうりょうしょう | TU LIỄU CHỨNG | Chứng chỉ hoàn thành |
| 郵送 | ゆうそう | BƯU TỐNG | Gửi qua bưu điện |
| 参る | まいる | THAM | Đến (khiêm nhường) |
| 免許 | めんきょ | MIỄN HỨA | Bằng, giấy phép |
| 研削 | けんさく | NGHIÊN TƯỚC | Mài cắt |
| 特別教育 | とくべつきょういく | ĐẶC BIỆT GIÁO DỤC | Đào tạo đặc biệt |
| 取得 | しゅとく | THỦ ĐẮC | Có được, đạt được |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | Sơ yếu lý lịch, CV |
| 一生 | いっしょう | NHẤT SINH | Cả đời |
| 有効 | ゆうこう | HỮU HIỆU | Có hiệu lực |
| 国家資格 | こっかしかく | QUỐC GIA TƯ CÁCH | Chứng chỉ quốc gia |
| 約束 | やくそく | ƯỚC THÚC | Lời hứa, hẹn |
| 観光 | かんこう | QUAN QUANG | Tham quan |
| 名物 | めいぶつ | DANH VẬT | Đặc sản |
| 味噌 | みそ | VỊ TĂNG | Tương miso |
| 集合 | しゅうごう | TẬP HỢP | Tập trung |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000005, 800000014, NULL, 'markdown_book', 'T5. Báo cáo suýt tai nạn đầu tiên (初めてのヒヤリハット)', '# Sách kỹ sư khuôn đúc · T5. Báo cáo suýt tai nạn đầu tiên (初めてのヒヤリハット)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) sau 2 tháng quen xưởng, suýt va vào phôi máy MC đang quay. Học các mẫu hội thoại tiếng Nhật chuyên ngành an toàn lao động: nói xin lỗi và báo cáo sự cố với 班長 (はい、すみませんでした・怪我はありません), hỏi lại khi chưa hiểu thuật ngữ ヒヤリハット (〜とはどういう意味ですか), nghe đàn anh giải thích ハインリッヒの法則 và văn hoá KYT, viết báo cáo theo mẫu (発生日時・場所・状況・原因・対策), trình bày trước 朝礼 toàn xưởng (申し訳ありませんでした・共有させていただきます), và nhận lời chia sẻ của 先輩 về kinh nghiệm cũ.

---

## Bối cảnh

Tháng 7 năm 2022. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo được hai tháng, bắt đầu quen máy MC (machining center) và làm phụ cho 先輩 Sakurai. Trình độ tiếng Nhật N4. Chiều nay Thái đi vội qua hành lang giữa hai máy MC đang chạy, suýt va vào phôi đang quay; được Sakurai kéo lại. Chương này tập trung các mẫu câu giao tiếp xử lý sự cố an toàn tại xưởng Nhật: xin lỗi cấp trên, hỏi lại thuật ngữ chuyên ngành, viết và trình bày báo cáo **ヒヤリハット**.

---

## Tình huống 1 — Hành lang máy MC · 14:30, sự cố suýt va — phản ứng tức thì

| Vai | Lời thoại |
|---|---|
| Thái | (đi vội qua hành lang giữa hai máy MC đang chạy) |
| Sakurai | (hét lớn, lao tới kéo tay Thái) タイ<ruby>君<rt>くん</rt></ruby>！<ruby>危<rt>あぶ</rt></ruby>ない！<ruby>下<rt>さ</rt></ruby>がって！<br>*(Thái! Nguy hiểm! Lùi lại!)* |
| Thái | (giật mình quay lại) え！？<br>*(Ơ!?)* |
| Sakurai | (chỉ vào MC bên trái, phôi đang full speed) ワークが<ruby>回<rt>まわ</rt></ruby>っている！ぶつかるところだった！<br>*(Phôi đang quay! Suýt đập vào em!)* |
| Thái | (mặt tái mét, cúi đầu) す、すみません！<ruby>気<rt>き</rt></ruby>が<ruby>付<rt>つ</rt></ruby>きませんでした...<br>*(X, xin lỗi! Em không để ý...)* |
| Sakurai | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>？<ruby>怪我<rt>けが</rt></ruby>はない？<br>*(Có sao không? Bị thương không?)* |
| Thái | はい、<ruby>怪我<rt>けが</rt></ruby>はありません。サクライさん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng, em không bị thương. Anh Sakurai, em thực sự cảm ơn anh.)* |
| Sakurai | <ruby>後<rt>あと</rt></ruby>で<ruby>鈴木<rt>すずき</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>するよ。ここで<ruby>少<rt>すこ</rt></ruby>し<ruby>待<rt>ま</rt></ruby>って。<br>*(Tí nữa tôi báo cáo trưởng nhóm Suzuki. Em đợi ở đây một chút.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Hành lang máy MC · 14:35, báo cáo sự cố với 班長

| Vai | Lời thoại |
|---|---|
| Suzuki | (bước nhanh tới, mặt nghiêm) <ruby>何<rt>なに</rt></ruby>がありましたか？<br>*(Có chuyện gì vậy?)* |
| Sakurai | <ruby>班長<rt>はんちょう</rt></ruby>、タイ<ruby>君<rt>くん</rt></ruby>がMCの<ruby>近<rt>ちか</rt></ruby>くを<ruby>急<rt>いそ</rt></ruby>いで<ruby>通<rt>とお</rt></ruby>って、<ruby>回転中<rt>かいてんちゅう</rt></ruby>のワークに<ruby>当<rt>あ</rt></ruby>たりかけました。<br>*(Trưởng nhóm, Thái đi vội qua gần máy MC, suýt va vào phôi đang quay.)* |
| Suzuki | (nhìn Thái) タイ<ruby>君<rt>くん</rt></ruby>、<ruby>怪我<rt>けが</rt></ruby>はありませんか？<br>*(Thái, có bị thương không?)* |
| Thái | (cúi đầu sâu) はい、<ruby>怪我<rt>けが</rt></ruby>はありません。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<br>*(Vâng, em không bị thương. Em thực sự xin lỗi.)* |
| Suzuki | <ruby>怪我<rt>けが</rt></ruby>がなくて<ruby>幸<rt>さいわ</rt></ruby>いです。でも、これは<ruby>重大<rt>じゅうだい</rt></ruby>なことです。<br>*(May là không bị thương. Nhưng đây là chuyện nghiêm trọng.)* |
| Thái | はい...<br>*(Vâng...)* |
| Suzuki | <ruby>本日中<rt>ほんじつちゅう</rt></ruby>にヒヤリハット<ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(Trong hôm nay phải nộp báo cáo Hiyari Hatto.)* |
| Thái | (bối rối) すみません、「ヒヤリハット」とはどういう<ruby>意味<rt>いみ</rt></ruby>ですか？<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Xin lỗi, "Hiyari Hatto" nghĩa là gì ạ? Em lần đầu nghe.)* |
| Suzuki | サクライさん、<ruby>説明<rt>せつめい</rt></ruby>してあげてください。<ruby>用紙<rt>ようし</rt></ruby>も<ruby>渡<rt>わた</rt></ruby>してください。<br>*(Sakurai, giải thích cho cậu ấy. Đưa luôn mẫu giấy.)* |
| Sakurai | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, tôi rõ ạ.)* |

---

## Tình huống 3 — Phòng nghỉ · 15:00, Sakurai dạy khái niệm ヒヤリハット (hỏi lại khi chưa hiểu)

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、まず「ヒヤリハット」の<ruby>意味<rt>いみ</rt></ruby>から<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Thái, trước hết tôi giải thích nghĩa của "Hiyari Hatto".)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Sakurai | 「ヒヤリ」は<ruby>怖<rt>こわ</rt></ruby>くて<ruby>冷<rt>ひ</rt></ruby>やっとする<ruby>感<rt>かん</rt></ruby>じ、「ハット」はびっくりする<ruby>感<rt>かん</rt></ruby>じです。<ruby>合<rt>あ</rt></ruby>わせて「<ruby>事故<rt>じこ</rt></ruby>になりそうで<ruby>怖<rt>こわ</rt></ruby>かった<ruby>瞬間<rt>しゅんかん</rt></ruby>」という<ruby>意味<rt>いみ</rt></ruby>です。<br>*("Hiyari" là cảm giác lạnh sống lưng vì sợ, "Hatto" là cảm giác giật mình. Ghép lại nghĩa là "khoảnh khắc sợ vì suýt thành tai nạn".)* |
| Thái | なるほど。<ruby>事故<rt>じこ</rt></ruby>じゃないけれど、<ruby>事故<rt>じこ</rt></ruby>になりそうだった<ruby>場合<rt>ばあい</rt></ruby>ということですね。<br>*(Ra vậy. Tức là trường hợp chưa thành tai nạn nhưng suýt thành tai nạn, đúng không ạ?)* |
| Sakurai | そうです。<ruby>日本<rt>にほん</rt></ruby>の<ruby>工場<rt>こうじょう</rt></ruby>では、<ruby>事故<rt>じこ</rt></ruby>になる<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Đúng. Ở nhà máy Nhật, nhất định phải ghi chép trước khi thành tai nạn.)* |
| Thái | なぜ<ruby>記録<rt>きろく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なんですか？<br>*(Vì sao phải ghi chép vậy ạ?)* |
| Sakurai | 「ハインリッヒの<ruby>法則<rt>ほうそく</rt></ruby>」というのがあります。<ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>の<ruby>重大事故<rt>じゅうだいじこ</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>には、<ruby>29<rt>にじゅうきゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>の<ruby>軽<rt>かる</rt></ruby>い<ruby>事故<rt>じこ</rt></ruby>と<ruby>300<rt>さんびゃく</rt></ruby><ruby>件<rt>けん</rt></ruby>のヒヤリハットがあると<ruby>言<rt>い</rt></ruby>われています。<br>*(Có cái gọi là "định luật Heinrich". Người ta nói sau lưng 1 ca tai nạn nghiêm trọng có 29 ca nhẹ và 300 ca Hiyari Hatto.)* |
| Thái | え、そんなに<ruby>多<rt>おお</rt></ruby>いんですか。<br>*(Ơ, nhiều vậy sao ạ?)* |
| Sakurai | はい。だから<ruby>小<rt>ちい</rt></ruby>さなヒヤリハットを<ruby>集<rt>あつ</rt></ruby>めて<ruby>対策<rt>たいさく</rt></ruby>すれば、<ruby>大<rt>おお</rt></ruby>きな<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げます。<br>*(Vâng. Nên thu thập các Hiyari Hatto nhỏ và đối phó thì sẽ ngăn được tai nạn lớn.)* |
| Thái | <ruby>科学的<rt>かがくてき</rt></ruby>な<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Cách suy nghĩ khoa học thật ạ. Em hiểu rồi.)* |

---

## Tình huống 4 — Phòng nghỉ · 15:20, quan sát đàn anh dạy cách điền mẫu báo cáo

| Vai | Lời thoại |
|---|---|
| Sakurai | (đặt tờ giấy A4 lên bàn) これがヒヤリハット<ruby>報告書<rt>ほうこくしょ</rt></ruby>のフォーマットです。<ruby>項目<rt>こうもく</rt></ruby>は<ruby>5<rt>いつ</rt></ruby>つあります。<br>*(Đây là mẫu báo cáo Hiyari Hatto. Có 5 mục.)* |
| Thái | <ruby>5<rt>いつ</rt></ruby>つですね。<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Năm mục nhỉ. Anh chỉ em từng mục được không?)* |
| Sakurai | <ruby>1<rt>いち</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>は「<ruby>発生日時<rt>はっせいにちじ</rt></ruby>」。いつ<ruby>起<rt>お</rt></ruby>こったか。<ruby>2<rt>に</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>は「<ruby>場所<rt>ばしょ</rt></ruby>」。どこで<ruby>起<rt>お</rt></ruby>こったか。<br>*(Số một là "thời điểm xảy ra". Khi nào. Số hai là "địa điểm". Ở đâu.)* |
| Thái | はい、メモします。<br>*(Vâng, em ghi lại.)* |
| Sakurai | <ruby>3<rt>さん</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>は「<ruby>状況<rt>じょうきょう</rt></ruby>」。<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>起<rt>お</rt></ruby>こったかを<ruby>書<rt>か</rt></ruby>きます。<br>*(Số ba là "tình huống". Viết cụ thể đã xảy ra chuyện gì.)* |
| Thái | すみません、「<ruby>状況<rt>じょうきょう</rt></ruby>」というのは<ruby>原因<rt>げんいん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Xin lỗi, "tình huống" khác với "nguyên nhân" phải không ạ?)* |
| Sakurai | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>状況<rt>じょうきょう</rt></ruby>は<ruby>事実<rt>じじつ</rt></ruby>だけ、<ruby>原因<rt>げんいん</rt></ruby>は「なぜ<ruby>起<rt>お</rt></ruby>こったか」を<ruby>分析<rt>ぶんせき</rt></ruby>します。<ruby>4<rt>よん</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>です。<br>*(Câu hỏi hay. Tình huống chỉ là sự thật, còn nguyên nhân là phân tích "vì sao xảy ra". Mục số bốn chính là nguyên nhân.)* |
| Thái | <ruby>状況<rt>じょうきょう</rt></ruby>＝<ruby>事実<rt>じじつ</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>＝<ruby>分析<rt>ぶんせき</rt></ruby>ということですね。<br>*(Tình huống = sự thật, nguyên nhân = phân tích, đúng không ạ?)* |
| Sakurai | そうです。そして<ruby>5<rt>ご</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>が「<ruby>対策<rt>たいさく</rt></ruby>」。<ruby>同<rt>おな</rt></ruby>じことが<ruby>起<rt>お</rt></ruby>こらないように<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。<br>*(Đúng. Và số năm là "đối sách". Viết cụ thể để chuyện đó không lặp lại.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>自分<rt>じぶん</rt></ruby>で<ruby>書<rt>か</rt></ruby>いてみます。<br>*(Em hiểu rồi. Em thử tự viết.)* |

---

## Tình huống 5 — Phòng nghỉ · 16:00, Thái tự điền báo cáo (vừa viết vừa đọc to)

| Vai | Lời thoại |
|---|---|
| Thái | (vừa viết vừa lẩm bẩm) <ruby>発生日時<rt>はっせいにちじ</rt></ruby>は<ruby>2022<rt>にせんにじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>午後<rt>ごご</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>です。<br>*(Thời điểm xảy ra là 2 giờ rưỡi chiều ngày 15 tháng 7 năm 2022.)* |
| Thái | <ruby>場所<rt>ばしょ</rt></ruby>は<ruby>機械加工室<rt>きかいかこうしつ</rt></ruby>のMC<ruby>2<rt>に</rt></ruby><ruby>号機<rt>ごうき</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>通路<rt>つうろ</rt></ruby>。<br>*(Địa điểm là hành lang cạnh máy MC số 2 trong phòng gia công cơ khí.)* |
| Thái | <ruby>状況<rt>じょうきょう</rt></ruby>：<ruby>急<rt>いそ</rt></ruby>いで<ruby>歩<rt>ある</rt></ruby>いていたところ、<ruby>回転中<rt>かいてんちゅう</rt></ruby>のワークに<ruby>当<rt>あ</rt></ruby>たりそうになった。サクライ<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>ってくれて<ruby>無事<rt>ぶじ</rt></ruby>だった。<br>*(Tình huống: Trong lúc đi vội, suýt va vào phôi đang quay. Anh Sakurai kéo lại nên không sao.)* |
| Sakurai | (nhìn qua vai Thái) いいですね。<ruby>事実<rt>じじつ</rt></ruby>だけを<ruby>書<rt>か</rt></ruby>いています。<br>*(Tốt đấy. Em chỉ viết sự thật thôi.)* |
| Thái | <ruby>原因<rt>げんいん</rt></ruby>の<ruby>欄<rt>らん</rt></ruby>はどう<ruby>書<rt>か</rt></ruby>けばいいですか？<br>*(Cột nguyên nhân nên viết thế nào ạ?)* |
| Sakurai | <ruby>3<rt>みっ</rt></ruby>つぐらいに<ruby>分<rt>わ</rt></ruby>けて<ruby>書<rt>か</rt></ruby>くといいです。<br>*(Chia làm khoảng ba ý thì tốt.)* |
| Thái | <ruby>原因<rt>げんいん</rt></ruby>：<ruby>1<rt>いち</rt></ruby>) <ruby>急<rt>いそ</rt></ruby>いでいた、<ruby>2<rt>に</rt></ruby>) <ruby>視界<rt>しかい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>が<ruby>不十分<rt>ふじゅうぶん</rt></ruby>だった、<ruby>3<rt>さん</rt></ruby>) <ruby>機械<rt>きかい</rt></ruby>の<ruby>作業範囲<rt>さぎょうはんい</rt></ruby>への<ruby>意識<rt>いしき</rt></ruby>が<ruby>不足<rt>ふそく</rt></ruby>していた。<br>*(Nguyên nhân: 1) đang vội, 2) chưa kiểm tra kỹ tầm nhìn, 3) thiếu ý thức về vùng làm việc của máy.)* |
| Sakurai | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>対策<rt>たいさく</rt></ruby>も<ruby>3<rt>みっ</rt></ruby>つ<ruby>書<rt>か</rt></ruby>いてみてください。<br>*(Tuyệt vời. Em thử viết ba đối sách luôn đi.)* |
| Thái | <ruby>対策<rt>たいさく</rt></ruby>：<ruby>1<rt>いち</rt></ruby>) <ruby>工場内<rt>こうじょうない</rt></ruby>では<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>急<rt>いそ</rt></ruby>がない、<ruby>2<rt>に</rt></ruby>) MCが<ruby>動作中<rt>どうさちゅう</rt></ruby>のときは<ruby>1<rt>いち</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby><ruby>離<rt>はな</rt></ruby>れる、<ruby>3<rt>さん</rt></ruby>) <ruby>通路<rt>つうろ</rt></ruby>の<ruby>黄色<rt>きいろ</rt></ruby>いラインを<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>る。<br>*(Đối sách: 1) tuyệt đối không đi vội trong xưởng, 2) khi MC đang chạy phải cách trên 1 mét, 3) nhất định đi đúng vạch vàng hành lang.)* |
| Sakurai | <ruby>具体的<rt>ぐたいてき</rt></ruby>でいいですね。<ruby>鈴木<rt>すずき</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>しに<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Cụ thể, tốt rồi đấy. Đi nộp cho trưởng nhóm Suzuki thôi.)* |

---

## Tình huống 6 — Bàn 班長 · 17:00, nộp báo cáo và nhận phản hồi

| Vai | Lời thoại |
|---|---|
| Thái | (cúi đầu, đưa giấy bằng hai tay) <ruby>鈴木<rt>すずき</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>、ヒヤリハット<ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trưởng nhóm Suzuki, em xin nộp báo cáo Hiyari Hatto. Mong anh xem giúp em ạ.)* |
| Suzuki | (nhận giấy, đọc kỹ) <ruby>状況<rt>じょうきょう</rt></ruby>の<ruby>記述<rt>きじゅつ</rt></ruby>がはっきりしていますね。<ruby>原因<rt>げんいん</rt></ruby>も<ruby>3<rt>みっ</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>けてあって、よく<ruby>書<rt>か</rt></ruby>けました。<br>*(Mô tả tình huống rõ ràng nhỉ. Nguyên nhân cũng chia làm ba, viết tốt đấy.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Suzuki | <ruby>対策<rt>たいさく</rt></ruby>も<ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>実行<rt>じっこう</rt></ruby>できる<ruby>内容<rt>ないよう</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Đối sách cũng cụ thể, có thể thực hiện được. Đạt rồi.)* |
| Thái | (thở phào) よかったです。<br>*(Em mừng quá ạ.)* |
| Suzuki | では、<ruby>明日<rt>あした</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>でみんなに<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Vậy, sáng mai họp đầu giờ em chia sẻ cho mọi người nhé.)* |
| Thái | え、みんなの<ruby>前<rt>まえ</rt></ruby>で<ruby>話<rt>はな</rt></ruby>すんですか？<ruby>恥<rt>は</rt></ruby>ずかしいです...<br>*(Ơ, em phải nói trước mọi người ạ? Ngại quá...)* |
| Suzuki | これが<ruby>当社<rt>とうしゃ</rt></ruby>のKYT<ruby>文化<rt>ぶんか</rt></ruby>です。<br>*(Đây là văn hoá KYT của công ty mình.)* |
| Thái | すみません、KYTというのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, KYT là gì ạ?)* |
| Suzuki | <ruby>危険<rt>きけん</rt></ruby>・<ruby>予知<rt>よち</rt></ruby>・トレーニングの<ruby>略<rt>りゃく</rt></ruby>です。<ruby>恥<rt>は</rt></ruby>ずかしいですが、<ruby>共有<rt>きょうゆう</rt></ruby>することがみんなの<ruby>安全<rt>あんぜん</rt></ruby>につながります。<br>*(Viết tắt của Nguy hiểm - Dự đoán - Huấn luyện. Ngại thật, nhưng việc chia sẻ sẽ dẫn đến an toàn cho mọi người.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>頑張<rt>がんば</rt></ruby>って<ruby>話<rt>はな</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ cố gắng nói ạ.)* |

---

## Tình huống 7 — Hội trường xưởng · 8:30 hôm sau, trình bày trước 朝礼

| Vai | Lời thoại |
|---|---|
| Tanaka | (đứng trước 30 người) <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>、まずヒヤリハットの<ruby>共有<rt>きょうゆう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。タイさん、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Họp đầu giờ hôm nay, bắt đầu từ chia sẻ Hiyari Hatto. Mời anh Thái.)* |
| Thái | (đứng lên, cúi chào, giọng hơi run) おはようございます。グエン・ヴァン・タイです。<ruby>昨日<rt>きのう</rt></ruby>のヒヤリハットを<ruby>共有<rt>きょうゆう</rt></ruby>させていただきます。<br>*(Chào buổi sáng. Em là Nguyễn Văn Thái. Em xin được chia sẻ Hiyari Hatto của hôm qua.)* |
| Thái | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時半<rt>じはん</rt></ruby>、MC<ruby>2<rt>に</rt></ruby><ruby>号機<rt>ごうき</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>通路<rt>つうろ</rt></ruby>で<ruby>急<rt>いそ</rt></ruby>いで<ruby>歩<rt>ある</rt></ruby>き、<ruby>回転中<rt>かいてんちゅう</rt></ruby>のワークに<ruby>当<rt>あ</rt></ruby>たりそうになりました。<br>*(Chiều qua 2 giờ rưỡi, ở hành lang cạnh MC số 2, em đi vội và suýt va vào phôi đang quay.)* |
| Thái | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>急<rt>いそ</rt></ruby>いでいたこと、<ruby>視界<rt>しかい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>、そして<ruby>機械<rt>きかい</rt></ruby>の<ruby>作業範囲<rt>さぎょうはんい</rt></ruby>への<ruby>意識<rt>いしき</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>です。<br>*(Nguyên nhân là do em đang vội, không kiểm tra tầm nhìn, và thiếu ý thức về vùng làm việc của máy.)* |
| Thái | <ruby>対策<rt>たいさく</rt></ruby>として、<ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>急<rt>いそ</rt></ruby>がないこと、<ruby>2<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>にMC<ruby>動作中<rt>どうさちゅう</rt></ruby>は<ruby>1<rt>いち</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby><ruby>離<rt>はな</rt></ruby>れること、<ruby>3<rt>さん</rt></ruby>つ<ruby>目<rt>め</rt></ruby>に<ruby>通路<rt>つうろ</rt></ruby>の<ruby>黄色<rt>きいろ</rt></ruby>いラインを<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ることを<ruby>守<rt>まも</rt></ruby>ります。<br>*(Đối sách: một là tuyệt đối không đi vội, hai là khi MC chạy phải cách trên 1 mét, ba là phải đi đúng vạch vàng hành lang.)* |
| Thái | (cúi đầu sâu) <ruby>皆<rt>みな</rt></ruby>さん、ご<ruby>心配<rt>しんぱい</rt></ruby>をおかけしました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<br>*(Mọi người, em đã khiến mọi người lo lắng. Em thực sự xin lỗi.)* |
| Mọi người | (vỗ tay nhẹ) |
| Tanaka | タイさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>共有<rt>きょうゆう</rt></ruby>してくれてありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんも<ruby>通路<rt>つうろ</rt></ruby>のラインを<ruby>守<rt>まも</rt></ruby>ってください。<br>*(Anh Thái, cảm ơn em đã chia sẻ thẳng thắn. Mọi người cũng nhớ tuân thủ vạch hành lang nhé.)* |

---

## Tình huống 8 — Cạnh máy MC · 8:50, đồng nghiệp khen và 先輩 chia sẻ kỷ niệm

| Vai | Lời thoại |
|---|---|
| Operator MC | (vỗ vai Thái) タイさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えて<ruby>偉<rt>えら</rt></ruby>いね。<ruby>緊張<rt>きんちょう</rt></ruby>したでしょう？<br>*(Anh Thái, dám nói thẳng giỏi đấy. Hồi hộp lắm phải không?)* |
| Thái | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>緊張<rt>きんちょう</rt></ruby>しました。ありがとうございます。<br>*(Vâng, em hồi hộp thật. Em cảm ơn anh.)* |
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>実<rt>じつ</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>も<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>にヒヤリハットをやらかしたことがあるよ。<br>*(Thái, thực ra một năm trước anh cũng từng có Hiyari Hatto.)* |
| Thái | え、サクライさんも！？<br>*(Ơ, cả anh Sakurai sao!?)* |
| Sakurai | うん。<ruby>天井<rt>てんじょう</rt></ruby>クレーンの<ruby>下<rt>した</rt></ruby>を<ruby>通<rt>とお</rt></ruby>るとき、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げ<ruby>忘<rt>わす</rt></ruby>れた。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>危<rt>あぶ</rt></ruby>なかった。<br>*(Ừ. Lúc đi dưới cẩu trần, anh quên cúi đầu. Nguy hiểm thật sự.)* |
| Thái | <ruby>私<rt>わたし</rt></ruby>だけじゃないんですね。<ruby>少<rt>すこ</rt></ruby>し<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Không chỉ mình em nhỉ. Em thấy yên tâm hơn một chút rồi.)* |
| Sakurai | <ruby>誰<rt>だれ</rt></ruby>でも<ruby>一度<rt>いちど</rt></ruby>は<ruby>経験<rt>けいけん</rt></ruby>します。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>隠<rt>かく</rt></ruby>さずに<ruby>共有<rt>きょうゆう</rt></ruby>することです。<br>*(Ai cũng có lần. Quan trọng là không giấu mà phải chia sẻ.)* |
| Thái | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。<ruby>明日<rt>あした</rt></ruby>からもっと<ruby>注意<rt>ちゅうい</rt></ruby>します。<br>*(Vâng, em hiểu rõ rồi. Từ mai em sẽ cẩn thận hơn.)* |
| Sakurai | <ruby>注意<rt>ちゅうい</rt></ruby>するだけじゃなくて、<ruby>他<rt>ほか</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>危<rt>あぶ</rt></ruby>ないときも<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Không chỉ cẩn thận một mình, khi thấy người khác nguy hiểm cũng phải lên tiếng nhé.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ずそうします。<br>*(Vâng, em nhất định sẽ làm vậy.)* |

---

## Tình huống 9 — Phòng 201 · 22:00, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng chuyên ngành an toàn.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay xưởng thế nào? Sao mặt anh đăm chiêu thế? |
| Thái | (tiếng Việt) Anh suýt va vào máy MC đang chạy phôi. Anh Sakurai kéo lại, không sao. |
| Mai | (tiếng Việt) Trời ơi, anh có bị thương không? Sao lại để xảy ra thế? |
| Thái | (tiếng Việt) Không sao em. Nhưng phải viết báo cáo gọi là ヒヤリハット — kiểu báo cáo "suýt tai nạn". Bên Nhật người ta có cả định luật Heinrich: 1 ca nặng đứng sau 29 ca nhẹ và 300 ca suýt. |
| Mai | (tiếng Việt) Khoa học thật. Bên mình hồi đi thực tập có ai bắt viết gì đâu, ngã thì ngã chứ. |
| Thái | (tiếng Việt) Ừ. Mà còn phải đứng nói trước 30 người ở 朝礼 sáng nay. Anh ngại muốn xỉu, nhưng nói xong mọi người vỗ tay, không ai mắng. Anh Sakurai còn kể anh ấy năm ngoái cũng từng quên cúi đầu dưới cẩu. |
| Mai | (tiếng Việt) Vậy là họ không coi đó là xấu hổ, mà coi là bài học chung à? |
| Thái | (tiếng Việt) Đúng rồi. Họ gọi văn hoá đó là KYT — 危険・予知・トレーニング — Nguy hiểm, Dự đoán, Huấn luyện. Cá nhân sai thì cả nhóm cùng học. |
| Mai | (tiếng Việt) Anh nhớ ghi sổ. Mấy từ 状況・原因・対策 cũng hữu ích, sau này anh về có khi mở xưởng dạy lại bọn em. |
| Thái | (tiếng Việt) Còn lâu em ơi. Năm đầu mới chân ướt chân ráo thôi. Mà hôm nay anh học thêm "申し訳ありませんでした" — câu xin lỗi nặng nhất, dùng khi mình thực sự sai. |
| Mai | (tiếng Việt) Anh ngủ đi, mai còn dậy 7 giờ. Cẩn thận hơn nhé. |
| Thái | (tiếng Việt) Ừ. Anh sẽ đi đúng vạch vàng, không vội nữa. Ngủ ngon em. |

---

## Đọng lại chương 5

Sự cố suýt va máy MC dạy Thái cả một bộ mẫu câu giao tiếp an toàn lao động: **xin lỗi cấp trên ngay khi xảy ra** (申し訳ありませんでした・気が付きませんでした), **hỏi lại lễ phép khi gặp thuật ngữ mới** (〜とはどういう意味ですか・〜というのは何ですか), nghe đàn anh giải thích **ハインリッヒの法則** (1 ca nặng đứng sau 29 ca nhẹ + 300 ca **ヒヤリハット**), và viết báo cáo theo đúng 5 mục mẫu **発生日時・場所・状況・原因・対策** — trong đó phân biệt rõ **状況** là sự thật còn **原因** là phân tích. Đỉnh điểm là phải đứng trước **朝礼** trình bày bằng câu mở **共有させていただきます** rồi cúi đầu kết bằng **ご心配をおかけしました**. Văn hoá **KYT** (危険・予知・トレーニング) của xưởng Nhật biến nỗi xấu hổ cá nhân thành bài học tập thể — Sakurai chia sẻ kỷ niệm cũ để Thái yên tâm rằng ai cũng có lần đầu mắc lỗi, điều quan trọng là **không giấu mà phải chia sẻ**.

> Từ vựng & mẫu câu chương này: ヒヤリハット・ハインリッヒの法則・報告書・発生日時・場所・状況・原因・対策・回転中・ワーク・作業範囲・視界不確認・通路・KYT文化・危険予知・朝礼・共有・班長・先輩・申し訳ありませんでした・気が付きませんでした・〜とはどういう意味ですか・共有させていただきます・ご心配をおかけしました・怪我はありません

## Bí quyết chương

- **Hiyari Hatto là nghi thức hằng ngày của xưởng khuôn**: Định luật Heinrich 1:29:300 — nền tảng giáo dục an toàn.
- **Bị bắt đứng chia sẻ trước 朝礼**: Văn hoá Nhật tập thể — cá nhân sai = cả nhóm cùng học.
- **Sakurai cũng từng quên cúi đầu dưới cẩu**: trải nghiệm chung an ủi cho Thái, dạy "không giấu mà chia sẻ".
- **Mẫu báo cáo 5 mục đầy đủ**: 発生日時 → 場所 → 状況 → 原因 → 対策, người học có thể copy đúng format đời thực.
- **Mạch: hốt hoảng → ngại → chia sẻ → mọi người vỗ tay → tinh thần lên** — đặc trưng văn hoá monozukuri Nhật.

> *"1 ca Hiyari Hatto → cả xưởng cùng học. Văn hoá monozukuri chia sẻ thay vì giấu."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 危ない | あぶない | — | nguy hiểm |
| 下がる | さがる | HẠ | lùi lại, lùi xuống |
| 回る | まわる | HỒI | quay, xoay |
| 気が付く | きがつく | KHÍ PHÓ | để ý, nhận ra |
| 怪我 | けが | QUÁI NGÃ | vết thương |
| 班長 | はんちょう | BAN TRƯỞNG | trưởng nhóm |
| 回転中 | かいてんちゅう | HỒI CHUYỂN TRUNG | đang quay |
| 重大 | じゅうだい | TRỌNG ĐẠI | nghiêm trọng |
| 本日中 | ほんじつちゅう | BẢN NHẬT TRUNG | trong hôm nay |
| 報告書 | ほうこくしょ | BÁO CÁO THƯ | bản báo cáo |
| 用紙 | ようし | DỤNG CHỈ | mẫu giấy |
| 事故 | じこ | SỰ CỐ | tai nạn |
| 瞬間 | しゅんかん | THUẤN GIAN | khoảnh khắc |
| 工場 | こうじょう | CÔNG TRƯỜNG | nhà máy, xưởng |
| 記録 | きろく | KÝ LỤC | ghi chép |
| 法則 | ほうそく | PHÁP TẮC | định luật |
| 重大事故 | じゅうだいじこ | TRỌNG ĐẠI SỰ CỐ | tai nạn nghiêm trọng |
| 対策 | たいさく | ĐỐI SÁCH | biện pháp đối phó |
| 防ぐ | ふせぐ | PHÒNG | ngăn ngừa |
| 科学的 | かがくてき | KHOA HỌC ĐÍCH | có tính khoa học |
| 発生日時 | はっせいにちじ | PHÁT SINH NHẬT THỜI | thời điểm xảy ra |
| 場所 | ばしょ | TRƯỜNG SỞ | địa điểm |
| 状況 | じょうきょう | TRẠNG HUỐNG | tình huống |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 事実 | じじつ | SỰ THỰC | sự thật |
| 分析 | ぶんせき | PHÂN TÍCH | phân tích |
| 通路 | つうろ | THÔNG LỘ | hành lang |
| 不十分 | ふじゅうぶん | BẤT THẬP PHÂN | chưa đầy đủ |
| 作業範囲 | さぎょうはんい | TÁC NGHIỆP PHẠM VI | phạm vi làm việc |
| 意識 | いしき | Ý THỨC | ý thức |
| 不足 | ふそく | BẤT TÚC | thiếu |
| 動作中 | どうさちゅう | ĐỘNG TÁC TRUNG | đang vận hành |
| 以上 | いじょう | DĨ THƯỢNG | trên, hơn |
| 守る | まもる | THỦ | tuân thủ, bảo vệ |
| 記述 | きじゅつ | KÝ THUẬT | mô tả |
| 実行 | じっこう | THỰC HÀNH | thực hiện |
| 危険 | きけん | NGUY HIỂM | nguy hiểm |
| 予知 | よち | DỰ TRI | dự đoán |
| 正直 | しょうじき | CHÍNH TRỰC | thẳng thắn |
| 天井 | てんじょう | THIÊN TỈNH | trần nhà |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 隠す | かくす | ẨN | giấu giếm |
| 注意 | ちゅうい | CHÚ Ý | chú ý |
| 心配 | しんぱい | TÂM PHỐI | lo lắng |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000006, 800000014, NULL, 'markdown_book', 'T6. Lần đầu chủ trì họp sáng (朝礼デビュー)', '# Sách kỹ sư khuôn đúc · T6. Lần đầu chủ trì họp sáng (朝礼デビュー)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) lần đầu được giao chủ trì 朝礼 (họp sáng) tuyên bố KY (an toàn) trước 30 người Nhật. Học các mẫu hội thoại tiếng Nhật trang trọng trước đám đông: nhận chỉ thị từ 工場長, học bộ keigo 3 phần mở-giữa-kết (本日のKY当番のグエンです・本日の注意点は〜です・本日もご安全に), quan sát 先輩 làm mẫu cách phát âm to rõ, hỏi lại khi chưa hiểu thuật ngữ an toàn (玉掛け・運搬), tự diễn đạt KYポイント bằng câu đầy đủ, và nhận lời khen-phản hồi của cấp trên sau buổi họp.

---

## Bối cảnh

Tháng 8 năm 2022. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo (Aichi) được hơn 3 tháng. Trình độ tiếng Nhật N4 cải thiện, nhưng chưa nói trang trọng trước đám đông bao giờ. Sau khi Thái làm tốt báo cáo HH (ヒヤリハット — báo cáo suýt tai nạn), 工場長 Tanaka chỉ định Thái chủ trì 朝礼 thứ Sáu tuần này — đọc tuyên bố an toàn KY 1 phút trước 30 nhân viên. Chương này tập trung các mẫu câu phát biểu trang trọng tại công ty Nhật: bộ 3 câu chuẩn KY宣言, cách hỏi-luyện cùng 先輩, ngôn ngữ cơ thể (tiếng to, hít sâu, cúi đầu) khi đứng trước đám đông.

---

## Tình huống 1 — Xưởng đúc · 8:30 thứ Hai, Tanaka chỉ định chủ trì 朝礼

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>今週<rt>こんしゅう</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>します。<ruby>金曜日<rt>きんようび</rt></ruby>はグエン・タイ<ruby>君<rt>くん</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Các anh chị vất vả rồi. Tôi công bố người trực KY tuần này. Thứ Sáu nhờ anh Nguyễn Thái.)* |
| Thái | （<ruby>驚<rt>おどろ</rt></ruby>く）え！？<ruby>私<rt>わたし</rt></ruby>ですか？<br>*(Ngỡ ngàng. Dạ!? Em ạ?)* |
| Tanaka | はい、タイ<ruby>君<rt>くん</rt></ruby>です。<ruby>1<rt>いっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>自己紹介<rt>じこしょうかい</rt></ruby>と<ruby>本日<rt>ほんじつ</rt></ruby>のKYポイントを<ruby>話<rt>はな</rt></ruby>してください。<br>*(Vâng, anh Thái. Trong 1 phút. Hãy nói tự giới thiệu và điểm KY của ngày hôm đó.)* |
| Thái | すみません、「KYポイント」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "điểm KY" cụ thể là gì ạ?)* |
| Tanaka | その<ruby>日<rt>ひ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけるべき<ruby>危険<rt>きけん</rt></ruby>のことです。<ruby>例<rt>たと</rt></ruby>えば「<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>確認<rt>かくにん</rt></ruby>」など。<br>*(Là nguy hiểm cần chú ý của ngày hôm đó. Ví dụ "kiểm dây treo khi vận chuyển khuôn".)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em sẽ cố gắng.)* |
| Tanaka | <ruby>新人<rt>しんじん</rt></ruby>はみんな<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>やります。<ruby>緊張<rt>きんちょう</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Tân binh ai cũng làm 1 lần. Hồi hộp cũng không sao đâu.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ông ạ.)* |

---

## Tình huống 2 — Hành lang xưởng · 8:45, hỏi 先輩 Sakurai về cấu trúc 朝礼

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、ちょっとお<ruby>聞<rt>き</rt></ruby>きしてもよろしいですか？<br>*(Anh Sakurai, em hỏi một chút được không ạ?)* |
| Sakurai | はい、どうしました？<br>*(Vâng, có chuyện gì?)* |
| Thái | <ruby>金曜<rt>きんよう</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>でKY<ruby>当番<rt>とうばん</rt></ruby>になりました。<ruby>初<rt>はじ</rt></ruby>めてなので<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Em được giao trực KY họp sáng thứ Sáu. Vì lần đầu nên em lo.)* |
| Sakurai | あ、そうですか！おめでとう。<ruby>朝礼<rt>ちょうれい</rt></ruby>のスピーチは<ruby>形<rt>かたち</rt></ruby>が<ruby>決<rt>き</rt></ruby>まっていますから、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(À, vậy à! Chúc mừng. Bài phát biểu họp sáng có khuôn sẵn rồi, không sao đâu.)* |
| Thái | <ruby>形<rt>かたち</rt></ruby>が<ruby>決<rt>き</rt></ruby>まっている、というのは？<br>*(Có khuôn sẵn, nghĩa là sao ạ?)* |
| Sakurai | <ruby>三<rt>みっ</rt></ruby>つの<ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かれています。<ruby>始<rt>はじ</rt></ruby>めの<ruby>挨拶<rt>あいさつ</rt></ruby>、<ruby>本題<rt>ほんだい</rt></ruby>のKYポイント、それから<ruby>結<rt>むす</rt></ruby>びの<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Chia làm ba phần. Câu chào mở đầu, nội dung chính là điểm KY, rồi câu kết.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つの<ruby>部分<rt>ぶぶん</rt></ruby>ですね。お<ruby>昼休<rt>ひるやす</rt></ruby>みに<ruby>教<rt>おし</rt></ruby>えていただけませんか？<br>*(Ba phần ạ. Giờ nghỉ trưa anh chỉ giúp em được không?)* |
| Sakurai | いいですよ。<ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>会<rt>あ</rt></ruby>いましょう。<br>*(Được. Gặp ở căng tin nhé.)* |
| Thái | ありがとうございます！<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn anh! Đỡ quá ạ.)* |

---

## Tình huống 3 — Căng tin · 12:30, Sakurai dạy bộ 3 câu keigo chuẩn

| Vai | Lời thoại |
|---|---|
| Sakurai | では、<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えていきましょう。まず<ruby>始<rt>はじ</rt></ruby>めの<ruby>言葉<rt>ことば</rt></ruby>。「<ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>のグエンです」<br>*(Vậy nhớ theo thứ tự nhé. Đầu tiên câu mở đầu: "Tôi Nguyễn, trực KY hôm nay".)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>のグエンです。<br>*(Tôi Nguyễn, trực KY hôm nay.)* |
| Sakurai | いいですね。「<ruby>本日<rt>ほんじつ</rt></ruby>」は「<ruby>今日<rt>きょう</rt></ruby>」の<ruby>丁寧語<rt>ていねいご</rt></ruby>です。<ruby>朝礼<rt>ちょうれい</rt></ruby>では<ruby>必<rt>かなら</rt></ruby>ず「<ruby>本日<rt>ほんじつ</rt></ruby>」を<ruby>使<rt>つか</rt></ruby>います。<br>*(Tốt. "Honjitsu" là cách nói lịch sự của "kyou" (hôm nay). Họp sáng nhất thiết dùng "honjitsu".)* |
| Thái | なるほど、「<ruby>今日<rt>きょう</rt></ruby>」じゃなくて「<ruby>本日<rt>ほんじつ</rt></ruby>」ですね。メモします。<br>*(Ra vậy, không phải "kyou" mà là "honjitsu" ạ. Em ghi lại.)* |
| Sakurai | <ruby>次<rt>つぎ</rt></ruby>に<ruby>本題<rt>ほんだい</rt></ruby>。「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>注意点<rt>ちゅういてん</rt></ruby>は〜です」と<ruby>続<rt>つづ</rt></ruby>けて、<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>内容<rt>ないよう</rt></ruby>を<ruby>言<rt>い</rt></ruby>います。<br>*(Tiếp đến phần chính. Tiếp "Điểm lưu ý hôm nay là...", rồi nói nội dung cụ thể.)* |
| Thái | <ruby>金曜日<rt>きんようび</rt></ruby>は<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>なので、<ruby>玉掛<rt>たまか</rt></ruby>けでよろしいですか？<br>*(Thứ Sáu là ngày vận chuyển khuôn, em nói về kiểm dây treo có được không?)* |
| Sakurai | ぴったりです。では<ruby>言<rt>い</rt></ruby>ってみてください。<br>*(Hợp đấy. Vậy thử nói đi.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>注意点<rt>ちゅういてん</rt></ruby>は、<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Điểm lưu ý hôm nay là kiểm tra dây treo khi vận chuyển khuôn.)* |
| Sakurai | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>最後<rt>さいご</rt></ruby>の<ruby>結<rt>むす</rt></ruby>びは「<ruby>本日<rt>ほんじつ</rt></ruby>もご<ruby>安全<rt>あんぜん</rt></ruby>に。よろしくお<ruby>願<rt>ねが</rt></ruby>いします」<br>*(Hoàn hảo. Câu kết là "Hôm nay cũng làm việc an toàn. Mong mọi người hợp tác".)* |
| Thái | 「ご<ruby>安全<rt>あんぜん</rt></ruby>に」というのは<ruby>工場<rt>こうじょう</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>ですか？<br>*(Câu "go-anzen-ni" là câu chào của xưởng ạ?)* |
| Sakurai | はい、<ruby>製造業<rt>せいぞうぎょう</rt></ruby>の<ruby>定番<rt>ていばん</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby>すれ<ruby>違<rt>ちが</rt></ruby>った<ruby>時<rt>とき</rt></ruby>にも<ruby>使<rt>つか</rt></ruby>えますよ。<br>*(Vâng, là câu chuẩn của ngành sản xuất. Buổi sáng gặp nhau cũng dùng được.)* |

---

## Tình huống 4 — Xưởng đúc · 8:30 thứ Tư, quan sát Suzuki làm mẫu KY宣言

> Pattern "quan sát đàn anh làm mẫu" — Thái đứng nghe Suzuki, người làm trước Thái 2 ngày, để học cách trình bày thực tế.

| Vai | Lời thoại |
|---|---|
| Tanaka | では、<ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>、<ruby>鈴木<rt>すずき</rt></ruby><ruby>君<rt>くん</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy, người trực KY hôm nay, anh Suzuki, mời.)* |
| Suzuki | （<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>る、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>です！<br>*(Bước ra, cúi đầu. Tôi Suzuki, trực KY hôm nay!)* |
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>注意点<rt>ちゅういてん</rt></ruby>は、<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>成形機<rt>せいけいき</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby><ruby>交換<rt>こうかん</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>手<rt>て</rt></ruby><ruby>挟<rt>はさ</rt></ruby>みです。<br>*(Điểm lưu ý hôm nay là kẹt tay khi đổi khuôn ở máy ép nhựa.)* |
| Suzuki | <ruby>必<rt>かなら</rt></ruby>ず<ruby>機械<rt>きかい</rt></ruby>を<ruby>止<rt>と</rt></ruby>めて、<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>ってから<ruby>作業<rt>さぎょう</rt></ruby>してください。<br>*(Nhất thiết dừng máy, ngắt điện rồi mới thao tác.)* |
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby>もご<ruby>安全<rt>あんぜん</rt></ruby>に。よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Hôm nay làm việc an toàn. Mong mọi người hợp tác!)* |
| Mọi người | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |
| Thái | （Putraに<ruby>小声<rt>こごえ</rt></ruby>で）<ruby>鈴木<rt>すずき</rt></ruby>さんは<ruby>声<rt>こえ</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きいですね。<br>*(Nói nhỏ với Putra. Anh Suzuki tiếng to thật.)* |
| Putra | （<ruby>小声<rt>こごえ</rt></ruby>で）うん、<ruby>後<rt>うし</rt></ruby>ろまで<ruby>聞<rt>き</rt></ruby>こえる。タイも<ruby>明後日<rt>あさって</rt></ruby>あれぐらいで。<br>*(Nói nhỏ. Ừ, sau cùng vẫn nghe. Thái ngày kia cũng to như thế nhé.)* |
| Thái | （<ruby>頷<rt>うなず</rt></ruby>く）はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Gật. Vâng, em sẽ cố.)* |

---

## Tình huống 5 — Phòng 201 · 21:00 thứ Tư, Putra giúp tập đêm

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<ruby>本番<rt>ほんばん</rt></ruby>はあさってです。<br>*(Anh Thái, mình tập đi. Ngày kia là buổi chính rồi.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。プトラさんが<ruby>聞<rt>き</rt></ruby>き<ruby>役<rt>やく</rt></ruby>になってください。<br>*(Vâng, nhờ anh ạ. Anh Putra làm người nghe giúp em.)* |
| Thái | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）<ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>のグエンです。<br>*(Đứng dậy. Tôi Nguyễn, trực KY hôm nay.)* |
| Putra | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さい！<ruby>30人<rt>さんじゅうにん</rt></ruby>の<ruby>後<rt>うし</rt></ruby>ろまで<ruby>聞<rt>き</rt></ruby>こえないよ。<br>*(Cười. Tiếng nhỏ quá! 30 người, ngồi sau không nghe được đâu.)* |
| Thái | （<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で）<ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>のグエンです！<br>*(Tiếng to. Tôi Nguyễn, trực KY hôm nay!)* |
| Putra | いいですね！それぐらいで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<ruby>続<rt>つづ</rt></ruby>けて。<br>*(Tốt lắm! Cỡ đó là đủ. Tiếp đi.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>注意点<rt>ちゅういてん</rt></ruby>は、<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>確認<rt>かくにん</rt></ruby>です。<ruby>金型<rt>かながた</rt></ruby>は<ruby>重<rt>おも</rt></ruby>く、<ruby>玉掛<rt>たまか</rt></ruby>けに<ruby>失敗<rt>しっぱい</rt></ruby>すると<ruby>大事故<rt>だいじこ</rt></ruby>になります。<br>*(Điểm lưu ý hôm nay là kiểm dây treo khi vận chuyển khuôn. Khuôn nặng, lỡ dây treo sai là tai nạn lớn.)* |
| Putra | スピードがちょっと<ruby>速<rt>はや</rt></ruby>いです。ゆっくり、<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>区切<rt>くぎ</rt></ruby>って<ruby>話<rt>はな</rt></ruby>してください。<br>*(Tốc độ hơi nhanh. Chậm thôi, ngắt từng đoạn ra mà nói.)* |
| Thái | はい、もう<ruby>一度<rt>いちど</rt></ruby>やってみます。<ruby>本日<rt>ほんじつ</rt></ruby>の・<ruby>注意点<rt>ちゅういてん</rt></ruby>は・<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby><ruby>時<rt>じ</rt></ruby>の・<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Vâng, làm lại lần nữa ạ. Hôm nay - điểm lưu ý - là - kiểm dây treo - khi vận chuyển khuôn.)* |
| Putra | パーフェクト！<ruby>俺<rt>おれ</rt></ruby>も<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>毎晩<rt>まいばん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>したよ。<br>*(Hoàn hảo! Một năm trước tôi cũng tập 3 đêm liền đấy.)* |
| Thái | プトラさんも<ruby>緊張<rt>きんちょう</rt></ruby>しましたか？<br>*(Anh Putra cũng hồi hộp chứ ạ?)* |
| Putra | もちろん。<ruby>外国人<rt>がいこくじん</rt></ruby>はみんな<ruby>同<rt>おな</rt></ruby>じです。でも<ruby>練習<rt>れんしゅう</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Đương nhiên rồi. Người nước ngoài ai cũng vậy. Nhưng tập thì được.)* |

---

## Tình huống 6 — Phòng 201 · 7:00 sáng thứ Sáu, lo lắng trước giờ G

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>手<rt>て</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）プトラさん、<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えています。<br>*(Nhìn tay. Anh Putra, tay em run.)* |
| Putra | <ruby>深呼吸<rt>しんこきゅう</rt></ruby>して。<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>したじゃないですか。<br>*(Hít sâu đi. Anh đã tập 3 ngày rồi mà.)* |
| Thái | はい...でも<ruby>普通<rt>ふつう</rt></ruby>の<ruby>会話<rt>かいわ</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>って、<ruby>30人<rt>さんじゅうにん</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>正<rt>ただ</rt></ruby>しい<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>話<rt>はな</rt></ruby>すのは<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Vâng... Nhưng khác với hội thoại bình thường, nói tiếng Nhật chuẩn trước 30 người khó lắm.)* |
| Putra | <ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。みんな<ruby>応援<rt>おうえん</rt></ruby>してくれますよ。<ruby>新人<rt>しんじん</rt></ruby>のときはみんな<ruby>同<rt>おな</rt></ruby>じだから。<br>*(Sai cũng không sao. Mọi người sẽ cổ vũ. Tân binh ai cũng vậy mà.)* |
| Thái | はい、ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn anh. Em sẽ cố.)* |
| Putra | あ、<ruby>一<rt>ひと</rt></ruby>つコツがあります。<ruby>始<rt>はじ</rt></ruby>める<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>深呼吸<rt>しんこきゅう</rt></ruby>を<ruby>一回<rt>いっかい</rt></ruby>。<ruby>声<rt>こえ</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>しますよ。<br>*(À, có một mẹo. Trước khi bắt đầu nhất định hít sâu một lần. Giọng sẽ ổn định.)* |
| Thái | <ruby>深呼吸<rt>しんこきゅう</rt></ruby>ですね。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Hít sâu ạ. Em sẽ nhớ.)* |

---

## Tình huống 7 — Xưởng đúc · 8:30 thứ Sáu, Thái chủ trì 朝礼 chính thức

| Vai | Lời thoại |
|---|---|
| Tanaka | では、<ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>はグエン・タイ<ruby>君<rt>くん</rt></ruby>です。タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy, người trực KY hôm nay là anh Nguyễn Thái. Anh Thái, mời.)* |
| Thái | （<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>る、<ruby>深呼吸<rt>しんこきゅう</rt></ruby>、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）おはようございます。<br>*(Bước ra, hít sâu, cúi đầu. Chào buổi sáng ạ.)* |
| Mọi người | おはようございます。<br>*(Chào buổi sáng.)* |
| Thái | （<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で）<ruby>本日<rt>ほんじつ</rt></ruby>のKY<ruby>当番<rt>とうばん</rt></ruby>のグエン・タイです！<br>*(Tiếng to. Tôi Nguyễn Thái, trực KY hôm nay!)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>注意点<rt>ちゅういてん</rt></ruby>は、<ruby>金型<rt>かながた</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Điểm lưu ý hôm nay là kiểm tra dây treo khi vận chuyển khuôn.)* |
| Thái | <ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>は<ruby>重<rt>おも</rt></ruby>くて、<ruby>500<rt>ごひゃく</rt></ruby>キロ<ruby>以上<rt>いじょう</rt></ruby>あります。<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>確認<rt>かくにん</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>ると、<ruby>大事故<rt>だいじこ</rt></ruby>になります。<br>*(Khuôn công ty mình nặng trên 500 ký. Lơ là kiểm dây treo là tai nạn lớn.)* |
| Thái | <ruby>運搬<rt>うんぱん</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に、<ruby>必<rt>かなら</rt></ruby>ずダブルチェックをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trước khi vận chuyển, xin mọi người kiểm tra kép.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本日<rt>ほんじつ</rt></ruby>もご<ruby>安全<rt>あんぜん</rt></ruby>に。よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Cúi đầu. Hôm nay làm việc an toàn. Mong mọi người hợp tác!)* |
| Mọi người | （<ruby>大<rt>おお</rt></ruby>きな<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay lớn.)* |

---

## Tình huống 8 — Trước máy ép · 8:45, Tanaka và các đàn anh phản hồi

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>素晴<rt>すば</rt></ruby>らしかったです！<ruby>初<rt>はじ</rt></ruby>めてとは<ruby>思<rt>おも</rt></ruby>えませんでしたよ。<br>*(Anh Thái, tuyệt vời! Không nghĩ là lần đầu đâu.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます！<br>*(Cúi đầu. Em cảm ơn ông!)* |
| Suzuki | <ruby>声<rt>こえ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きくて、<ruby>内容<rt>ないよう</rt></ruby>も<ruby>具体的<rt>ぐたいてき</rt></ruby>でよかったです。とくに「500キロ<ruby>以上<rt>いじょう</rt></ruby>」という<ruby>数字<rt>すうじ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れたのが<ruby>分<rt>わ</rt></ruby>かりやすかったです。<br>*(Tiếng to, nội dung cụ thể, hay. Đặc biệt đưa con số "trên 500 ký" vào dễ hiểu lắm.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さんとプトラさんに<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>っていただきました。<br>*(Em được anh Sakurai và anh Putra giúp luyện ạ.)* |
| Sakurai | （<ruby>通<rt>とお</rt></ruby>りかかる）タイ<ruby>君<rt>くん</rt></ruby>！よく<ruby>頑張<rt>がんば</rt></ruby>ったね。<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ていました。<br>*(Đi ngang. Anh Thái! Cố gắng tốt lắm. Thấy rõ là đã tập 3 ngày.)* |
| Thái | ありがとうございます。まだまだですが、<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn ạ. Vẫn còn kém, nhưng em vui ạ.)* |
| Tanaka | <ruby>来月<rt>らいげつ</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いしますね。<ruby>次<rt>つぎ</rt></ruby>はもう<ruby>少<rt>すこ</rt></ruby>し<ruby>長<rt>なが</rt></ruby>めに<ruby>2<rt>に</rt></ruby><ruby>分<rt>ふん</rt></ruby>で。<br>*(Tháng sau lại nhờ một lần nữa nhé. Lần sau dài hơn chút, 2 phút.)* |
| Thái | （<ruby>驚<rt>おどろ</rt></ruby>く、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Bất ngờ, cúi đầu. Vâng, em sẽ cố ạ!)* |

---

## Tình huống 9 — Phòng 201 · 19:30, gọi LINE về Việt Nam cho mẹ và Mai

> Cảnh tiếng Việt — giữ mạch nhân vật, gọi điện về quê.

| Vai | Lời thoại |
|---|---|
| Mẹ Thái | (tiếng Việt) Thái! Hôm nay thế nào con? Mẹ thấy ảnh mặt căng. |
| Thái | (tiếng Việt) Mẹ, hôm nay con phát biểu trước 30 người Nhật. |
| Mẹ Thái | (tiếng Việt) Trời ơi! Phát biểu cái gì? |
| Thái | (tiếng Việt) Là bài tuyên bố an toàn, gọi là KY宣言. Mỗi tuần một người luân phiên. Hôm nay ông trưởng nhà máy chỉ định con. |
| Mai | (tiếng Việt, ghé vào màn hình) Anh! Có bị run không? |
| Thái | (tiếng Việt) Sáng dậy tay run. Anh Putra cùng phòng dạy mẹo hít sâu một cái trước khi nói. Hiệu nghiệm thật. |
| Mai | (tiếng Việt) Anh nói được tiếng Nhật trang trọng à? Em thấy hay. |
| Thái | (tiếng Việt) Có khuôn câu chuẩn em. "本日のKY当番のグエンです" — "Tôi Nguyễn, trực KY hôm nay". "本日もご安全に" — câu chào kết của ngành sản xuất. |
| Mẹ Thái | (tiếng Việt) "Honjitsu" là gì hả con? |
| Thái | (tiếng Việt) Là "hôm nay" nhưng lịch sự. Trong văn phòng phải dùng từ này, không được nói "kyou" như đời thường. |
| Mai | (tiếng Việt) Anh chuyên nghiệp ghê. Tháng sau ông Tanaka còn bảo anh làm lại 2 phút nữa. |
| Thái | (tiếng Việt) Ừ. Lần sau anh đỡ run rồi. Anh Sakurai dạy chia bài thành 3 phần — mở, giữa, kết. Cứ theo khuôn là xong. |
| Mẹ Thái | (tiếng Việt) Giỏi con. Nhớ giữ sức khoẻ. |
| Thái | (tiếng Việt) Vâng mẹ. Cuối tuần con đi Nagoya gặp chị Linh người Việt, ăn phở. Mẹ với Mai đi ngủ đi, bên này con cũng phải nghỉ. |

---

## Tình huống 10 — Phòng 201 · 22:30, ghi nhật ký tiếng Việt + một câu tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, viết nhật ký) Thứ Sáu, tháng 8. Lần đầu chủ trì 朝礼 trước 30 người. |
| Thái | (tiếng Việt) Sáng tay run như đánh răng. Đã tập 3 đêm với anh Putra. Anh Sakurai dạy keigo 3 phần. |
| Thái | (tiếng Việt) Lúc đứng trước mọi người, hít sâu một cái rồi mở miệng. Tiếng to hơn mình tưởng. |
| Thái | (tiếng Việt) Ông Tanaka khen "không nghĩ là lần đầu". Anh Suzuki khen đưa số "500 ký" vào. |
| Thái | (tiếng Việt) Học được: tiếng Nhật trang trọng có khuôn. Đừng sợ — cứ theo khuôn, thêm số liệu cụ thể, là người Nhật chấp nhận. |
| Thái | (tiếng Việt) Tháng sau làm lại 2 phút. Cột mốc nhỏ tiếp theo. |
| Thái | <ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em sẽ cố.)* |

---

## Đọng lại chương 6

Lần đầu đứng trước 30 người Nhật phát biểu trang trọng, Thái học được rằng tiếng Nhật công sở có **khuôn câu cố định** mà người mới chỉ cần thuộc và làm theo. Bộ 3 câu chuẩn KY宣言: **mở đầu** `本日のKY当番の〜です`, **nội dung** `本日の注意点は〜です`, **kết** `本日もご安全に。よろしくお願いします` — anh Sakurai dạy ở căng tin. Học được mẹo phát âm: **「今日」không dùng được trong họp sáng, phải dùng「本日」** (dạng trang trọng); thêm số liệu cụ thể (`500キロ以上`) làm bài phát biểu thuyết phục. Quan sát đàn anh **鈴木** làm mẫu thứ Tư để học cách lên tiếng to, cúi đầu, ngắt câu. Putra dạy mẹo cá nhân: **深呼吸** một lần trước khi mở miệng, **ngắt từng đoạn** thay vì nói liền tù tì. Vượt qua nỗi sợ phát biểu trước đám đông — không phải bằng tài năng, mà bằng **練習 + khuôn + ủng hộ của bạn cùng đợt**. Đó là cách công ty Nhật đào tạo người mới: ai cũng lên một lần, rồi cả công ty cùng vỗ tay.

> Từ vựng & mẫu câu chương này: 朝礼・KY当番・KY宣言・本日・注意点・自己紹介・金型運搬・玉掛け・確認・大事故・ダブルチェック・射出成形機・金型交換・手挟み・電源・新人・緊張・深呼吸・拍手・応援・ご安全に・〜をお願いします・〜というのは・〜ということですね・よろしくお願いします・本日もご安全に

---

## Bí quyết chương

- **Khuôn câu cố định cho người mới**: Người Việt sợ nhất là phát biểu công khai tiếng Nhật. Giải pháp: học theo khuôn 3 phần chuẩn, không cần sáng tạo.
- **Quan sát đàn anh trước khi tự làm**: Pattern Nhật — Thái xem Suzuki thứ Tư để biết cách đứng, cách nhấn câu.
- **Bạn cùng đợt tập đêm**: Putra+Sakurai hỗ trợ — tình thân hơn, kết quả lâu dài.
- **Tanaka khen + giao việc tiếp**: tín hiệu nhận diện tiềm năng làm trưởng nhóm.
- **Cột mốc nhỏ mỗi tuần**: 1 năm = nhiều cột mốc nhỏ, không phải 1 cú nhảy lớn.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 当番 | とうばん | ĐƯƠNG PHIÊN | người trực, phiên trực |
| 金曜日 | きんようび | KIM DIỆU NHẬT | thứ Sáu |
| 不安 | ふあん | BẤT AN | lo lắng |
| 挨拶 | あいさつ | ÁI TÁP | chào hỏi |
| 本題 | ほんだい | BẢN ĐỀ | chủ đề chính |
| 結び | むすび | KẾT | câu kết |
| 言葉 | ことば | NGÔN DIỆP | từ ngữ |
| 丁寧語 | ていねいご | ĐINH NINH NGỮ | kính ngữ lịch sự |
| 注意点 | ちゅういてん | CHÚ Ý ĐIỂM | điểm lưu ý |
| 製造業 | せいぞうぎょう | CHẾ TẠO NGHIỆP | ngành sản xuất |
| 射出成形機 | しゃしゅつせいけいき | XẠ XUẤT THÀNH HÌNH CƠ | máy ép phun (nhựa) |
| 交換 | こうかん | GIAO HOÁN | đổi, thay thế |
| 手挟み | てはさみ | THỦ GIÁP | kẹt tay |
| 電源 | でんげん | ĐIỆN NGUYÊN | nguồn điện |
| 本番 | ほんばん | BẢN PHIÊN | buổi chính thức |
| 深呼吸 | しんこきゅう | THÂM HÔ HẤP | hít thở sâu |
| 区切る | くぎる | KHU THIẾT | ngắt đoạn |
| 応援 | おうえん | ỨNG VIỆN | cổ vũ |
| 大事故 | だいじこ | ĐẠI SỰ CỐ | tai nạn lớn |
| 内容 | ないよう | NỘI DUNG | nội dung |
| 怠る | おこたる | ĐÃI | lơ là, sao nhãng |
| 数字 | すうじ | SỐ TỰ | con số |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000007, 800000014, NULL, 'markdown_book', 'T7. Cuối tuần Nagoya ngắm lá đỏ (名古屋・紅葉)', '# Sách kỹ sư khuôn đúc · T7. Cuối tuần Nagoya ngắm lá đỏ (名古屋・紅葉)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) cùng Putra và Sakurai đi Nagoya cuối tuần, gặp Linh-chị (đàn chị Việt 5 năm tại Nhật). Học các mẫu hội thoại tiếng Nhật khi đi chơi xa và giao lưu nhóm đa văn hoá: rủ bạn đi tàu Meitetsu, hẹn gặp ở địa điểm mốc (待ち合わせ), giới thiệu hai bên (こちら〜さんです), gọi món tại quán đặc sản (名物・注文), nhờ người lạ chụp ảnh hộ (シャッターを押していただけますか), hỏi lại từ chuyên ngành/đặc sản (〜というのは?), quan sát đàn chị 先輩 chia sẻ kinh nghiệm sống tại Nhật.

---

## Bối cảnh

Tháng 11 năm 2022, Aichi vào mùa lá đỏ. Thái sang Nhật được 6 tháng, đã quen sinh hoạt ký túc với Putra (Indonesia) và đồng nghiệp Sakurai. Cuối tuần ba người lên tàu Meitetsu ra Nagoya gặp **リン<ruby>姉<rt>ねえ</rt></ruby>さん** (Linh, 30 tuổi, kỹ sư IT visa 高度専門職, đã ở Nhật 5 năm, vĩnh trú 2 năm) — quen qua bố Thái. Trình độ tiếng Nhật của Thái N4 đang luyện N3. Chương này tập trung các mẫu câu giao tiếp khi đi chơi xa: rủ bạn lên kế hoạch tàu xe, hẹn gặp người quen ở mốc địa danh, giới thiệu bạn đồng nghiệp với đàn chị đồng hương, gọi món đặc sản Nagoya, nhờ người lạ chụp ảnh nhóm, và nghe 先輩 chia sẻ kinh nghiệm sống lâu năm.

---

## Tình huống 1 — Ga Anjo · 9:00, lên kế hoạch tàu Meitetsu đi Nagoya

| Vai | Lời thoại |
|---|---|
| Sakurai | タイさん、プトラさん、おはようございます。<ruby>名古屋<rt>なごや</rt></ruby>まで<ruby>名鉄<rt>めいてつ</rt></ruby>で<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらいですよ。<br>*(Anh Thái, anh Putra, chào buổi sáng. Đi Meitetsu đến Nagoya khoảng 30 phút thôi.)* |
| Thái | おはようございます。<ruby>切符<rt>きっぷ</rt></ruby>はもう<ruby>買<rt>か</rt></ruby>いましたか?<br>*(Chào buổi sáng. Anh đã mua vé chưa ạ?)* |
| Sakurai | いえ、これからです。<ruby>特急<rt>とっきゅう</rt></ruby>に<ruby>乗<rt>の</rt></ruby>りましょう。<ruby>普通<rt>ふつう</rt></ruby>より<ruby>速<rt>はや</rt></ruby>いです。<br>*(Chưa, lát nữa mua. Mình đi tàu tốc hành nhé. Nhanh hơn tàu thường.)* |
| Putra | サクライさん、すみません、「<ruby>特急<rt>とっきゅう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Sakurai, xin lỗi, "tokkyuu" nghĩa là gì ạ?)* |
| Sakurai | <ruby>特別<rt>とくべつ</rt></ruby><ruby>急行<rt>きゅうこう</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>です。<ruby>駅<rt>えき</rt></ruby>を<ruby>少<rt>すく</rt></ruby>ししか<ruby>止<rt>と</rt></ruby>まらない<ruby>速<rt>はや</rt></ruby>い<ruby>電車<rt>でんしゃ</rt></ruby>のことです。<br>*(Là viết tắt của "tokubetsu kyuukou" — tàu nhanh, chỉ dừng vài ga thôi.)* |
| Thái | なるほど、<ruby>駅<rt>えき</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばす<ruby>電車<rt>でんしゃ</rt></ruby>ということですね。<br>*(Ra vậy, là tàu bỏ qua một số ga ạ.)* |
| Sakurai | そうです。<ruby>名鉄<rt>めいてつ</rt></ruby><ruby>名古屋駅<rt>なごやえき</rt></ruby>まで<ruby>660<rt>ろっぴゃくろくじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Đúng. Đến ga Meitetsu Nagoya là 660 yên.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。リン<ruby>姉<rt>ねえ</rt></ruby>さんと<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>大須観音前<rt>おおすかんのんまえ</rt></ruby>で<ruby>待<rt>ま</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせです。<br>*(Em rõ rồi ạ. Hẹn chị Linh 10h ở trước chùa Osu Kannon.)* |
| Putra | <ruby>大須観音<rt>おおすかんのん</rt></ruby>はどう<ruby>行<rt>い</rt></ruby>きますか?<br>*(Đến Osu Kannon đi như thế nào ạ?)* |
| Sakurai | <ruby>名古屋駅<rt>なごやえき</rt></ruby>から<ruby>地下鉄<rt>ちかてつ</rt></ruby><ruby>鶴舞線<rt>つるまいせん</rt></ruby>に<ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えて、<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>駅<rt>えき</rt></ruby>です。<br>*(Từ ga Nagoya đổi sang tàu điện ngầm tuyến Tsurumai, ga thứ hai là tới.)* |

---

## Tình huống 2 — Trước chùa Osu Kannon · 10:00, hẹn gặp Linh-chị và giới thiệu hai bên

| Vai | Lời thoại |
|---|---|
| Linh | (vẫy tay, tiếng Việt) Thái ơi, chị đây! Bên này! |
| Thái | (tiếng Việt) Chị Linh! (rồi quay sang hai bạn) リン<ruby>姉<rt>ねえ</rt></ruby>さん、こちらが<ruby>同<rt>おな</rt></ruby>じ<ruby>寮<rt>りょう</rt></ruby>のプトラさんと、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>同僚<rt>どうりょう</rt></ruby>のサクライさんです。<br>*(Chị Linh, đây là anh Putra cùng ký túc, và anh Sakurai đồng nghiệp công ty.)* |
| Linh | <ruby>初<rt>はじ</rt></ruby>めまして。リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>名古屋<rt>なごや</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いているITエンジニアです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh. Tôi tên là Linh. Tôi là kỹ sư IT đang làm việc tại Nagoya. Mong các em giúp đỡ.)* |
| Putra | はじめまして！プトラと<ruby>申<rt>もう</rt></ruby>します。インドネシアから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh! Tôi là Putra. Tôi đến từ Indonesia. Mong chị giúp đỡ.)* |
| Sakurai | サクライです。タイさんと<ruby>同<rt>おな</rt></ruby>じ<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi là Sakurai. Tôi làm cùng công ty với anh Thái. Mong chị giúp đỡ.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>永住<rt>えいじゅう</rt></ruby>ビザをもらいました。<br>*(Tôi sang Nhật 5 năm trước. Hai năm trước được visa vĩnh trú.)* |
| Sakurai | え、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>もですか！すごいですね。<br>*(Ơ, đã 5 năm cơ ạ! Giỏi quá.)* |
| Linh | すみません、「<ruby>永住<rt>えいじゅう</rt></ruby>」は<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Xin lỗi, các em hiểu "vĩnh trú" không?)* |
| Thái | <ruby>永住<rt>えいじゅう</rt></ruby>は、ずっと<ruby>日本<rt>にほん</rt></ruby>に<ruby>住<rt>す</rt></ruby>めるビザということですね。<br>*(Vĩnh trú là visa được sống lâu dài ở Nhật đúng không ạ.)* |
| Linh | そうそう、よく<ruby>知<rt>し</rt></ruby>っていますね。さあ、<ruby>大須<rt>おおす</rt></ruby><ruby>商店街<rt>しょうてんがい</rt></ruby>を<ruby>案内<rt>あんない</rt></ruby>しますよ。<br>*(Đúng đúng, em biết khá đấy. Nào, chị dẫn các em đi phố Osu nhé.)* |

---

## Tình huống 3 — Phố Osu · 10:30, học cách hỏi địa danh và xác nhận thông tin

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>大須<rt>おおす</rt></ruby><ruby>商店街<rt>しょうてんがい</rt></ruby>は<ruby>古<rt>ふる</rt></ruby>いお<ruby>店<rt>みせ</rt></ruby>と<ruby>新<rt>あたら</rt></ruby>しいオタクショップが<ruby>混<rt>ま</rt></ruby>ざっている<ruby>面白<rt>おもしろ</rt></ruby>い<ruby>町<rt>まち</rt></ruby>です。<br>*(Phố Osu là khu phố thú vị, cửa hàng cũ và cửa hàng otaku mới trộn lẫn nhau.)* |
| Thái | （<ruby>看板<rt>かんばん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら）スマホの<ruby>修理屋<rt>しゅうりや</rt></ruby>がたくさんありますね。<br>*(Vừa nhìn biển hiệu vừa nói. Có rất nhiều tiệm sửa điện thoại nhỉ.)* |
| Putra | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>多<rt>おお</rt></ruby>いです！<br>*(Vâng, nhiều thật đấy!)* |
| Sakurai | <ruby>世界一<rt>せかいいち</rt></ruby>の<ruby>電気街<rt>でんきがい</rt></ruby>と<ruby>言<rt>い</rt></ruby>われています。<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>秋葉原<rt>あきはばら</rt></ruby>みたいな<ruby>感<rt>かん</rt></ruby>じです。<br>*(Nghe nói là phố điện máy số một thế giới. Cảm giác giống Akihabara ở Tokyo.)* |
| Putra | すみません、「<ruby>電気街<rt>でんきがい</rt></ruby>」というのは?<br>*(Xin lỗi, "denkigai" nghĩa là gì ạ?)* |
| Linh | <ruby>電気<rt>でんき</rt></ruby><ruby>製品<rt>せいひん</rt></ruby>や<ruby>電子<rt>でんし</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby>を<ruby>売<rt>う</rt></ruby>るお<ruby>店<rt>みせ</rt></ruby>が<ruby>集<rt>あつ</rt></ruby>まっている<ruby>町<rt>まち</rt></ruby>のことです。<br>*(Là khu phố tập trung các cửa hàng bán đồ điện tử và linh kiện điện tử.)* |
| Putra | なるほど、<ruby>電子<rt>でんし</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby>のお<ruby>店<rt>みせ</rt></ruby>が<ruby>集<rt>あつ</rt></ruby>まる<ruby>町<rt>まち</rt></ruby>ということですね。<br>*(Ra vậy, là khu phố tập trung cửa hàng linh kiện ạ.)* |
| Linh | お<ruby>昼<rt>ひる</rt></ruby>はみそカツを<ruby>食<rt>た</rt></ruby>べに<ruby>行<rt>い</rt></ruby>きませんか?<ruby>名古屋<rt>なごや</rt></ruby>の<ruby>名物<rt>めいぶつ</rt></ruby>ですよ。<br>*(Trưa mình đi ăn miso katsu nhé? Đặc sản Nagoya đấy.)* |
| Thái | みそカツ、<ruby>初<rt>はじ</rt></ruby>めてです。すみません、「<ruby>名物<rt>めいぶつ</rt></ruby>」は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Miso katsu, em lần đầu được nghe. Xin lỗi, "meibutsu" là gì ạ?)* |
| Linh | その<ruby>土地<rt>とち</rt></ruby>で<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>や<ruby>商品<rt>しょうひん</rt></ruby>のことです。<ruby>愛知<rt>あいち</rt></ruby>の<ruby>名物<rt>めいぶつ</rt></ruby>はみそカツ、ひつまぶし、<ruby>手羽先<rt>てばさき</rt></ruby>などです。<br>*(Là món ăn hay sản phẩm nổi tiếng của vùng đất đó. Đặc sản Aichi có miso katsu, hitsumabushi, cánh gà...)* |
| Thái | <ruby>地元<rt>じもと</rt></ruby>の<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>ということですね。<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Là món ăn nổi tiếng địa phương ạ. Em sẽ nhớ.)* |

---

## Tình huống 4 — Quán Yabaton · 12:00, học cách gọi món đặc sản và bình luận hương vị

| Vai | Lời thoại |
|---|---|
| Linh | ここは「<ruby>矢場<rt>やば</rt></ruby>とん」というお<ruby>店<rt>みせ</rt></ruby>です。<ruby>名古屋<rt>なごや</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>有名<rt>ゆうめい</rt></ruby>なみそカツの<ruby>店<rt>みせ</rt></ruby>ですよ。<br>*(Quán này tên là "Yabaton". Quán miso katsu nổi tiếng nhất Nagoya đấy.)* |
| Nhân viên quán | いらっしゃいませ。<ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>ですか?<br>*(Xin mời. Bốn vị ạ?)* |
| Linh | はい、<ruby>4<rt>よ</rt></ruby><ruby>名<rt>めい</rt></ruby>です。<ruby>禁煙席<rt>きんえんせき</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, bốn người. Cho bàn không hút thuốc.)* |
| Nhân viên quán | こちらへどうぞ。ご<ruby>注文<rt>ちゅうもん</rt></ruby>がお<ruby>決<rt>き</rt></ruby>まりになりましたら、お<ruby>呼<rt>よ</rt></ruby>びください。<br>*(Mời đi lối này. Quý khách quyết định xong gọi giúp nhé.)* |
| Sakurai | （メニューを<ruby>見<rt>み</rt></ruby>ながら）<ruby>定番<rt>ていばん</rt></ruby>の「わらじとんかつ<ruby>定食<rt>ていしょく</rt></ruby>」を<ruby>頼<rt>たの</rt></ruby>みましょうか?<br>*(Vừa xem menu vừa nói. Mình gọi món set "tonkatsu Waraji" tủ của quán nhé?)* |
| Thái | すみません、「<ruby>定食<rt>ていしょく</rt></ruby>」というのは?<br>*(Xin lỗi, "teishoku" nghĩa là gì ạ?)* |
| Linh | ご<ruby>飯<rt>はん</rt></ruby>、おみそ<ruby>汁<rt>しる</rt></ruby>、<ruby>漬物<rt>つけもの</rt></ruby>、メインのおかずがセットになっている<ruby>定<rt>き</rt></ruby>まった<ruby>食事<rt>しょくじ</rt></ruby>のことです。<br>*(Là bữa ăn cố định gồm cơm, canh miso, đồ muối, và món chính đi cùng nhau.)* |
| Thái | なるほど、セットメニューということですね。じゃあ、<ruby>私<rt>わたし</rt></ruby>もそれにします。<br>*(Ra vậy, là set menu ạ. Vậy em cũng gọi món đó.)* |
| Linh | （<ruby>店員<rt>てんいん</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶ）すみません、わらじとんかつ<ruby>定食<rt>ていしょく</rt></ruby>を<ruby>4<rt>よっ</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Gọi nhân viên. Xin lỗi, cho 4 set tonkatsu Waraji ạ.)* |
| Nhân viên quán | わらじとんかつ<ruby>定食<rt>ていしょく</rt></ruby>を<ruby>4<rt>よっ</rt></ruby>つですね。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Bốn set tonkatsu Waraji ạ. Quý khách đợi một lát.)* |
| Thái | （<ruby>一<rt>ひと</rt></ruby><ruby>口<rt>くち</rt></ruby><ruby>食<rt>た</rt></ruby>べる）...おいしいです！<ruby>赤<rt>あか</rt></ruby>みそのソースは<ruby>濃<rt>こ</rt></ruby>くて、ベトナムにはない<ruby>味<rt>あじ</rt></ruby>です。<br>*(Ăn một miếng. Ngon quá! Nước sốt miso đỏ đậm đà, vị này ở Việt Nam không có.)* |
| Sakurai | <ruby>愛知<rt>あいち</rt></ruby>の<ruby>赤<rt>あか</rt></ruby>みそは<ruby>独特<rt>どくとく</rt></ruby>ですよね。<ruby>他<rt>ほか</rt></ruby>の<ruby>県<rt>けん</rt></ruby>の<ruby>白<rt>しろ</rt></ruby>みそとは<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>います。<br>*(Miso đỏ của Aichi đặc trưng nhỉ. Khác hẳn miso trắng các tỉnh khác.)* |
| Putra | インドネシアの<ruby>料理<rt>りょうり</rt></ruby>にも<ruby>濃<rt>こ</rt></ruby>い<ruby>味<rt>あじ</rt></ruby>がありますが、これは<ruby>初<rt>はじ</rt></ruby>めての<ruby>味<rt>あじ</rt></ruby>です。とても<ruby>美味<rt>おい</rt></ruby>しい！<br>*(Món Indonesia cũng có vị đậm, nhưng vị này lần đầu tôi ăn. Rất ngon!)* |
| Linh | みなさん<ruby>愛知<rt>あいち</rt></ruby>に<ruby>来<rt>き</rt></ruby>たんだから、<ruby>名物<rt>めいぶつ</rt></ruby>を<ruby>食<rt>た</rt></ruby>べる<ruby>権利<rt>けんり</rt></ruby>がありますよ！<br>*(Mọi người đã đến Aichi rồi thì có quyền được ăn đặc sản đấy!)* |

---

## Tình huống 5 — Quán cafe · 13:00, Linh-chị chia sẻ kinh nghiệm 5 năm (quan sát đàn chị)

> Hội thoại chia làm hai mạch: tiếng Việt riêng giữa Linh và Thái, tiếng Nhật chung với Putra và Sakurai.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Chị Linh ơi, 5 năm bên Nhật chị thấy thế nào? Có cô đơn nhiều không? |
| Linh | (tiếng Việt) Năm 1-2 khó nhất. Tiếng Nhật còn yếu, văn hoá khác, ai cũng cô đơn. Chị cũng khóc mấy lần. |
| Linh | (tiếng Việt) Năm 3 quen rồi, công ty cho lên senior. Năm 4 đủ điều kiện xin vĩnh trú. Bây giờ ổn rồi em ạ. |
| Thái | (tiếng Việt) Em mới được 6 tháng. Tiếng Nhật chuyên ngành khó, đôi khi muốn về quê. |
| Linh | (tiếng Việt) Bình thường mà em. Người Việt nào năm đầu cũng vậy. Em chịu khó hỏi lại, ghi sổ là sẽ vượt qua thôi. |
| Sakurai | リンさん、タイさん、<ruby>2人<rt>ふたり</rt></ruby>で<ruby>何<rt>なに</rt></ruby>を<ruby>話<rt>はな</rt></ruby>しているんですか?<br>*(Chị Linh, anh Thái, hai người đang nói gì vậy?)* |
| Thái | すみません、ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>話<rt>はな</rt></ruby>してしまいました。リン<ruby>姉<rt>ねえ</rt></ruby>さんが<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>日本<rt>にほん</rt></ruby>での<ruby>経験<rt>けいけん</rt></ruby>を<ruby>話<rt>はな</rt></ruby>してくれました。<br>*(Xin lỗi, em lỡ nói tiếng Việt. Chị Linh kể cho em nghe trải nghiệm 5 năm ở Nhật.)* |
| Sakurai | わ、リンさん<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>ですね！<ruby>私<rt>わたし</rt></ruby>たちにも<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Wow, chị Linh đúng là tiền bối thật rồi! Chỉ cho bọn em với.)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>なんてまだまだですよ。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>3<rt>みっ</rt></ruby>つです。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>く。<br>*(5 năm thì còn ít lắm. Quan trọng có ba điều. Một là không hiểu phải hỏi.)* |
| Putra | <ruby>工場長<rt>こうじょうちょう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>っていました。<br>*(Trưởng nhà máy cũng nói y vậy.)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>友達<rt>ともだち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>体<rt>からだ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にする。<br>*(Hai là kết bạn với người Nhật. Ba là giữ gìn sức khoẻ.)* |
| Sakurai | なるほど。<ruby>体<rt>からだ</rt></ruby>のことを<ruby>忘<rt>わす</rt></ruby>れがちですね。<br>*(Ra vậy. Sức khoẻ hay bị quên thật.)* |

---

## Tình huống 6 — Cafe · 13:30, Linh khuyên Thái về CAD và JLPT (tiếng Việt)

> Cảnh tiếng Việt — Linh kèm Thái riêng về kế hoạch nghề. Putra và Sakurai ra ngoài chụp ảnh.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Chị cho em một lời khuyên cụ thể. Ngoài giờ làm, em phải tự học thêm phần mềm CAD. |
| Thái | (tiếng Việt) Em sắp được công ty cho học SolidWorks. |
| Linh | (tiếng Việt) Tốt. Nhưng SolidWorks là phần mềm công ty trả tiền, em rời công ty là mất quyền dùng. Ở nhà tải thêm Fusion 360 — bản cho cá nhân miễn phí. Hồ sơ năng lực cá nhân quan trọng nhất sau 5 năm. |
| Thái | (tiếng Việt) Em ghi nhớ rồi. Cảm ơn chị. |
| Linh | (tiếng Việt) Còn JLPT, em đang ở mức nào? |
| Thái | (tiếng Việt) Em đang luyện N3, tháng 12/2023 sẽ thi. |
| Linh | (tiếng Việt) Tốt. Mục tiêu rõ: N3 trong 1 năm rưỡi đầu, N2 trong 3 năm. Kỹ sư Việt ai cũng làm được nếu chịu khó. Lương khác hẳn khi có N2. |
| Thái | (tiếng Việt) Vâng. Em sẽ cố. |
| Linh | (tiếng Việt) Sách N3 chị còn, em cần thì cuối tuần sau chị gửi cho. Có 新完全マスター với そうまとめ. |
| Thái | (tiếng Việt) Dạ em cảm ơn chị nhiều. Có chị mentor thế này em yên tâm hẳn. |

---

## Tình huống 7 — Công viên Tsuruma · 15:00, ngắm lá đỏ và nhờ người lạ chụp ảnh

| Vai | Lời thoại |
|---|---|
| Linh | ここが<ruby>鶴舞公園<rt>つるまこうえん</rt></ruby>です。<ruby>名古屋<rt>なごや</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>紅葉<rt>こうよう</rt></ruby>スポットの<ruby>一<rt>ひと</rt></ruby>つですよ。<br>*(Đây là công viên Tsuruma. Là một trong những điểm ngắm lá đỏ nổi tiếng nhất Nagoya.)* |
| Thái | （<ruby>木<rt>き</rt></ruby>を<ruby>見上<rt>みあ</rt></ruby>げる）わあ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>赤<rt>あか</rt></ruby>いです！<ruby>黄色<rt>きいろ</rt></ruby>の<ruby>葉<rt>は</rt></ruby>もきれいですね。<br>*(Ngước nhìn cây. Ô, đỏ thật đấy! Lá vàng cũng đẹp quá.)* |
| Putra | （<ruby>携帯<rt>けいたい</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>りましょう！<ruby>家族<rt>かぞく</rt></ruby>に<ruby>送<rt>おく</rt></ruby>ります。<br>*(Lấy điện thoại ra. Mình chụp ảnh đi! Tôi gửi cho gia đình.)* |
| Sakurai | <ruby>4<rt>よ</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>撮<rt>と</rt></ruby>りませんか?<ruby>誰<rt>だれ</rt></ruby>かに<ruby>頼<rt>たの</rt></ruby>みましょう。<br>*(Bốn người chụp chung không? Mình nhờ ai đó nhé.)* |
| Linh | （<ruby>通行人<rt>つうこうにん</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかける）すみません、ちょっとよろしいですか?<br>*(Lên tiếng với một người qua đường. Xin lỗi, làm phiền một chút được không ạ?)* |
| Người qua đường | はい、<ruby>何<rt>なん</rt></ruby>でしょう?<br>*(Vâng, có chuyện gì ạ?)* |
| Linh | すみません、シャッターを<ruby>押<rt>お</rt></ruby>していただけますか?<br>*(Xin lỗi, anh bấm máy chụp giúp được không ạ?)* |
| Người qua đường | いいですよ。ここを<ruby>押<rt>お</rt></ruby>せばいいですか?<br>*(Được chứ. Bấm chỗ này phải không?)* |
| Putra | はい、そこです。ありがとうございます。<br>*(Vâng, chỗ đó ạ. Cảm ơn anh.)* |
| Người qua đường | では、いきますよ。<ruby>3<rt>さん</rt></ruby>、<ruby>2<rt>に</rt></ruby>、<ruby>1<rt>いち</rt></ruby>...はい、チーズ！<br>*(Nào, tôi chụp nhé. 3, 2, 1... nào, cười lên!)* |
| 4 người | （ポーズを<ruby>取<rt>と</rt></ruby>る）チーズ！<br>*(Tạo dáng. Cười!)* |
| Người qua đường | はい、<ruby>撮<rt>と</rt></ruby>れました。<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Vâng, chụp xong rồi. Quý khách kiểm tra giúp.)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）きれいに<ruby>撮<rt>と</rt></ruby>れています！どうもありがとうございました。<br>*(Nhìn màn hình. Ảnh đẹp lắm ạ! Em cảm ơn anh rất nhiều.)* |
| Người qua đường | いえいえ、よい<ruby>一日<rt>いちにち</rt></ruby>を。<br>*(Không có gì, chúc một ngày vui vẻ.)* |

---

## Tình huống 8 — Tàu Meitetsu về Anjo · 19:00, tổng kết ngày và đặt mục tiêu

| Vai | Lời thoại |
|---|---|
| Sakurai | <ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>楽<rt>たの</rt></ruby>しかったですね。リンさんはとても<ruby>素敵<rt>すてき</rt></ruby>な<ruby>方<rt>かた</rt></ruby>でした。<br>*(Hôm nay vui thật nhỉ. Chị Linh là người rất tuyệt.)* |
| Thái | はい。<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>姉<rt>ねえ</rt></ruby>さんみたいでした。<ruby>同<rt>おな</rt></ruby>じベトナム<ruby>人<rt>じん</rt></ruby>で、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>っていて、すごいです。<br>*(Vâng. Như chị ruột vậy. Cùng là người Việt, đã cố gắng 5 năm, giỏi quá.)* |
| Putra | <ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>住<rt>す</rt></ruby>むと、ベトナム<ruby>人<rt>じん</rt></ruby>でも<ruby>日本人<rt>にほんじん</rt></ruby>みたいになりますね。<ruby>日本語<rt>にほんご</rt></ruby>もとても<ruby>上手<rt>じょうず</rt></ruby>でした。<br>*(Sống 5 năm rồi thì người Việt cũng giống người Nhật nhỉ. Tiếng Nhật cũng rất giỏi.)* |
| Thái | <ruby>私<rt>わたし</rt></ruby>も<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、リン<ruby>姉<rt>ねえ</rt></ruby>さんみたいになれるかな?<br>*(Em 5 năm nữa có giống được chị Linh không nhỉ?)* |
| Sakurai | きっとなれますよ。タイさんは<ruby>真面目<rt>まじめ</rt></ruby>だし、<ruby>分<rt>わ</rt></ruby>からないことをちゃんと<ruby>聞<rt>き</rt></ruby>きますから。<br>*(Chắc chắn được thôi. Anh Thái nghiêm túc, không hiểu là hỏi luôn mà.)* |
| Putra | <ruby>私<rt>わたし</rt></ruby>たちも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Mình cùng cố gắng nhé.)* |
| Thái | はい。<ruby>来年<rt>らいねん</rt></ruby>の<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>にJLPT N3を<ruby>受<rt>う</rt></ruby>けます。<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Vâng. Tháng 12 năm sau tôi sẽ thi JLPT N3. Nhất định đỗ.)* |
| Sakurai | わ、<ruby>目標<rt>もくひょう</rt></ruby>がはっきりしていていいですね。<ruby>応援<rt>おうえん</rt></ruby>します！<br>*(Wow, mục tiêu rõ ràng quá. Tôi ủng hộ!)* |
| Thái | （<ruby>窓<rt>まど</rt></ruby>から<ruby>夕日<rt>ゆうひ</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）ありがとうございます。<br>*(Nhìn hoàng hôn qua cửa sổ. Cảm ơn anh.)* |

---

## Tình huống 9 — Phòng 201 · 22:00, gọi video về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — gọi điện về Việt Nam ôn lại từ vựng JP trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, video call) Anh! Hôm nay anh đi Nagoya à? Em thấy mẹ kể. |
| Thái | (tiếng Việt) Ừ, anh đi với Putra với anh Sakurai. Có chị Linh đón — chị bạn bố anh ấy, đã ở Nhật 5 năm, được vĩnh trú rồi. |
| Mai | (tiếng Việt) Vĩnh trú nghĩa là sao anh? |
| Thái | (tiếng Việt) 永住 — eijuu. Visa được sống lâu dài ở Nhật không cần gia hạn. Chị Linh nói 5 năm làm việc đàng hoàng là đủ điều kiện xin. |
| Mai | (tiếng Việt) Ơ thế anh cũng làm được? |
| Thái | (tiếng Việt) Theo lộ trình thì được. Nhưng phải có N2, có hồ sơ năng lực CAD ngon. Chị Linh dặn anh tự học Fusion 360 ở nhà, không chỉ dùng SolidWorks công ty. |
| Mai | (tiếng Việt) Hôm nay ăn gì? |
| Thái | (tiếng Việt) みそカツ — miso katsu, đặc sản Nagoya. Thịt lợn chiên xù phủ sốt miso đỏ đậm đặc. Lạ miệng nhưng ngon. Aichi gọi là 名物 — meibutsu, đặc sản địa phương. |
| Mai | (tiếng Việt) Còn lá đỏ? |
| Thái | (tiếng Việt) 紅葉 — kouyou. Đẹp lắm em ạ. Bọn anh nhờ chú đi đường chụp hộ. Câu nhờ chụp ảnh là "シャッターを押していただけますか", anh nhớ rồi. |
| Mai | (tiếng Việt) Anh giỏi quá. Cố lên anh. Mai làm gì? |
| Thái | (tiếng Việt) Mai chủ nhật anh nghỉ. Anh ôn N3 với cuốn 新完全マスター chị Linh hứa gửi. Em đi ngủ đi, bên này anh cũng đi ngủ. |
| Mai | (tiếng Việt) Ngủ ngon anh. |

---

## Đọng lại chương 7

Cuối tuần đầu tiên Thái rời Anjo ra Nagoya, học được trọn bộ mẫu câu giao tiếp khi đi chơi xa và giao lưu nhóm đa văn hoá. Sáng học cách **rủ bạn lên kế hoạch tàu xe** (**特急・乗り換え・〜まで〇円**), đến nơi học **hẹn gặp ở mốc địa danh** (**待ち合わせ・〜の前で**) và **giới thiệu hai bên** (**こちらが〜さんです・〜と申します**). Trưa vào quán Yabaton học **gọi món đặc sản** (**〜名様・禁煙席・〜定食を〇つお願いします**) và **bình luận hương vị** (**ベトナムにない味・濃い・独特**). Chiều ở công viên Tsuruma học **nhờ người lạ chụp ảnh** (**シャッターを押していただけますか・ここを押せばいいですか**). Xuyên suốt ngày, Thái lặp lại mẫu **hỏi lại lễ phép khi chưa hiểu** (**〜というのは?・〜ということですね**) với các từ mới **電気街・名物・定食・永住**. Quan trọng nhất, quan sát **リン姉さん** — đàn chị Việt 5 năm tại Nhật, vĩnh trú 2 năm — Thái nhận ra ba nguyên tắc sống dài hạn: hỏi đến nơi đến chốn, kết bạn người Nhật, giữ sức khoẻ. Cộng thêm hai mục tiêu cụ thể: **học Fusion 360 ngoài giờ** để có hồ sơ năng lực cá nhân, và **đỗ JLPT N3 tháng 12/2023**.

> Từ vựng & mẫu câu chương này: 名鉄・特急・乗り換え・待ち合わせ・大須商店街・大須観音・電気街・名物・みそカツ・定食・禁煙席・赤みそ・独特・紅葉・鶴舞公園・シャッター・通行人・永住・高度専門職・先輩・〜と申します・〜というのは・〜ということですね・シャッターを押していただけますか・少々お待ちください・ご注文がお決まりになりましたら

## Bí quyết chương

- **Linh-chị dìu dắt đời sống**: Bắc cầu cộng đồng Việt Nagoya. Lặp xuyên 3-4 sách.
- **Vĩnh trú 5 năm**: Linh = ví dụ thật cho Thái — khả thi.
- **Khuyên Thái 2 điều**: CAD ngoài giờ (Fusion 360) + N3 trong 1,5 năm.
- **Nhóm 4 người**: Đa văn hoá (Việt+Indo+Nhật) — đặc trưng cụm công nghiệp Aichi.
- **紅葉 + miso katsu**: Văn hoá đặc trưng Aichi mùa thu — phân biệt với các vùng khác.

> *"5 năm Nhật. Linh-chị làm được. Mình cũng phải."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 切符 | きっぷ | THIẾT PHÙ | vé tàu |
| 特急 | とっきゅう | ĐẶC CẤP | tàu tốc hành |
| 普通 | ふつう | PHỔ THÔNG | thường, phổ thông |
| 特別急行 | とくべつきゅうこう | ĐẶC BIỆT CẤP HÀNH | tàu nhanh đặc biệt |
| 電車 | でんしゃ | ĐIỆN XA | tàu điện |
| 地下鉄 | ちかてつ | ĐỊA HẠ THIẾT | tàu điện ngầm |
| 待ち合わせ | まちあわせ | ĐÃI HỢP | hẹn gặp |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 永住 | えいじゅう | VĨNH TRỤ | vĩnh trú |
| 看板 | かんばん | KHÁN BẢN | biển hiệu |
| 修理屋 | しゅうりや | TU LÝ ỐC | tiệm sửa chữa |
| 電気街 | でんきがい | ĐIỆN KHÍ NHAI | phố điện máy |
| 電気製品 | でんきせいひん | ĐIỆN KHÍ CHẾ PHẨM | đồ điện |
| 電子部品 | でんしぶひん | ĐIỆN TỬ BỘ PHẨM | linh kiện điện tử |
| 土地 | とち | THỔ ĐỊA | vùng đất |
| 手羽先 | てばさき | THỦ VŨ TIÊN | cánh gà |
| 地元 | じもと | ĐỊA NGUYÊN | địa phương |
| 禁煙席 | きんえんせき | CẤM YÊN TỊCH | bàn không hút thuốc |
| 注文 | ちゅうもん | CHÚ VĂN | gọi món |
| 漬物 | つけもの | TÝ VẬT | đồ muối |
| 赤みそ | あかみそ | XÍCH | miso đỏ |
| 独特 | どくとく | ĐỘC ĐẶC | đặc trưng, độc đáo |
| 紅葉 | こうよう | HỒNG DIỆP | lá đỏ mùa thu |
| 公園 | こうえん | CÔNG VIÊN | công viên |
| 携帯 | けいたい | HUỀ ĐỚI | điện thoại di động |
| 写真 | しゃしん | TẢ CHÂN | ảnh, hình |
| 通行人 | つうこうにん | THÔNG HÀNH NHÂN | người qua đường |
| 画面 | がめん | HOẠ DIỆN | màn hình |
| 高度専門職 | こうどせんもんしょく | CAO ĐỘ CHUYÊN MÔN CHỨC | visa lao động chuyên môn cao |
| 設計 | せっけい | THIẾT KẾ | thiết kế |
| 工学 | こうがく | CÔNG HỌC | kỹ thuật, kỹ nghệ |
| 部品 | ぶひん | BỘ PHẨM | linh kiện |
| 夕日 | ゆうひ | TỊCH NHẬT | hoàng hôn |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000008, 800000014, NULL, 'markdown_book', 'T8. Đại vệ sinh và tiệc tất niên cuối năm (大掃除・忘年会)', '# Sách kỹ sư khuôn đúc · T8. Đại vệ sinh và tiệc tất niên cuối năm (大掃除・忘年会)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) trải qua ngày cuối năm tại xưởng Anjo. Học các mẫu hội thoại tiếng Nhật trong môi trường công sở dịp cuối năm: nhận phân công 大掃除 theo tinh thần 5S, báo cáo tiến độ vệ sinh với cấp trên, chào hỏi và bắt chuyện lần đầu với 課長 cấp cao tại izakaya, lễ nghi 乾杯 và 注ぎ返す (rót bia hai tay cho 先輩), từ chối rượu lễ phép (お酒は少しだけ・宗教の関係で), lắng nghe và đáp lại bài tổng kết cuối năm của 工場長, và hỏi lại lễ phép khi chưa hiểu từ chuyên ngành (〜というのは?).

---

## Bối cảnh

Ngày 28 tháng 12 năm 2022. Cuối năm đầu của Thái tại **株式会社みなみ精密金型**, Anjo. Sáng cả xưởng làm 大掃除 (đại vệ sinh) 8 tiếng theo nguyên tắc 5S, tối tổ chức 忘年会 tại izakaya 「鳥貴族」 với 25 nhân viên gồm 工場長 Tanaka, 先輩 Suzuki, 課長 thiết kế Kawakami và đồng nghiệp Sakurai. Trình độ tiếng Nhật của Thái đã lên N4 cứng sau 8 tháng. Chương này tập trung các mẫu câu giao tiếp công sở cuối năm: nhận lệnh phân công vệ sinh, báo cáo tiến độ, ứng xử tại tiệc Nhật (乾杯・注ぎ返す・từ chối rượu), bắt chuyện với cấp trên lần đầu, và đáp lễ khi được tổng kết công khai.

---

## Tình huống 1 — Sảnh xưởng · 8:30, 工場長 phân công 大掃除 theo 5S

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>大掃除<rt>おおそうじ</rt></ruby>です。<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>感謝<rt>かんしゃ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めて、<ruby>工場<rt>こうじょう</rt></ruby>をきれいにしましょう。<br>*(Mọi người chào buổi sáng. Hôm nay là ngày đại vệ sinh. Hãy mang theo lòng biết ơn một năm, lau dọn nhà xưởng sạch sẽ nhé.)* |
| Cả xưởng | はい！<br>*(Vâng!)* |
| Tanaka | <ruby>各班<rt>かくはん</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby><ruby>場所<rt>ばしょ</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>します。<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>班<rt>はん</rt></ruby>はタイ<ruby>君<rt>くん</rt></ruby>、プトラ<ruby>君<rt>くん</rt></ruby>、それからスズキさんです。<br>*(Tôi công bố khu phụ trách của từng tổ. Tổ hoàn thiện gồm Thái, Putra và anh Suzuki.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Suzuki | <ruby>磨<rt>みが</rt></ruby>き<ruby>機械<rt>きかい</rt></ruby>と<ruby>道具棚<rt>どうぐだな</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>をやりましょう。<br>*(Mình lo máy mài và sắp xếp tủ đồ nghề nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |
| Tanaka | <ruby>夕方<rt>ゆうがた</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>には<ruby>終<rt>お</rt></ruby>わらせて、<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>居酒屋<rt>いざかや</rt></ruby>で<ruby>忘年会<rt>ぼうねんかい</rt></ruby>です。<br>*(Cố gắng xong trước 5 giờ chiều, 6 giờ bắt đầu tất niên ở izakaya.)* |

---

## Tình huống 2 — Phòng 仕上げ · 11:00, Suzuki dạy nguyên tắc 5S khi vệ sinh

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>砥石<rt>といし</rt></ruby>の<ruby>箱<rt>はこ</rt></ruby>を<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して、<ruby>番手<rt>ばんて</rt></ruby><ruby>順<rt>じゅん</rt></ruby>に<ruby>並<rt>なら</rt></ruby>べ<ruby>直<rt>なお</rt></ruby>してください。<br>*(Thái, lấy hết các hộp đá mài ra, sắp lại theo thứ tự độ hạt giúp anh.)* |
| Thái | はい！#<ruby>320<rt>さんびゃくにじゅう</rt></ruby>から#<ruby>3000<rt>さんぜん</rt></ruby>までですね。<br>*(Vâng! Từ #320 đến #3000 đúng không ạ.)* |
| Suzuki | そう、<ruby>細<rt>こま</rt></ruby>かい<ruby>順<rt>じゅん</rt></ruby>に<ruby>左<rt>ひだり</rt></ruby>から<ruby>右<rt>みぎ</rt></ruby>へ。<br>*(Đúng, từ thô đến mịn, từ trái qua phải.)* |
| Putra | <ruby>私<rt>わたし</rt></ruby>は<ruby>磨<rt>みが</rt></ruby>き<ruby>機械<rt>きかい</rt></ruby>を<ruby>分解<rt>ぶんかい</rt></ruby>して<ruby>清掃<rt>せいそう</rt></ruby>します。<br>*(Em tháo máy mài ra vệ sinh ạ.)* |
| Thái | （<ruby>箱<rt>はこ</rt></ruby>を<ruby>並<rt>なら</rt></ruby>べる）スズキさん、これで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Sắp các hộp. Anh Suzuki, em sắp như này được không ạ?)* |
| Suzuki | （<ruby>来<rt>く</rt></ruby>る）いいね、<ruby>整理<rt>せいり</rt></ruby><ruby>整頓<rt>せいとん</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>になったね。<br>*(Đến xem. Tốt đấy, em sắp xếp ngăn nắp khéo hơn rồi.)* |
| Thái | ありがとうございます。これは<ruby>5S<rt>ゴエス</rt></ruby><ruby>運動<rt>うんどう</rt></ruby>ですよね。<br>*(Em cảm ơn anh. Đây là phong trào 5S đúng không ạ.)* |
| Suzuki | そうそう。<ruby>整理<rt>せいり</rt></ruby>・<ruby>整頓<rt>せいとん</rt></ruby>・<ruby>清掃<rt>せいそう</rt></ruby>・<ruby>清潔<rt>せいけつ</rt></ruby>・<ruby>躾<rt>しつけ</rt></ruby>。<ruby>5<rt>いつ</rt></ruby>つの「セ」「シ」。<br>*(Đúng đúng. Sắp xếp - ngăn nắp - lau chùi - sạch sẽ - kỷ luật. Năm chữ Se/Shi.)* |
| Thái | すみません、「<ruby>躾<rt>しつけ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "shitsuke" nghĩa là gì ạ?)* |
| Suzuki | <ruby>毎日<rt>まいにち</rt></ruby><ruby>習慣<rt>しゅうかん</rt></ruby>として<ruby>続<rt>つづ</rt></ruby>けることです。ルールを<ruby>守<rt>まも</rt></ruby>る<ruby>気持<rt>きも</rt></ruby>ち、というかな。<br>*(Là duy trì hàng ngày thành thói quen. Có thể nói là ý thức giữ quy tắc đó.)* |
| Thái | なるほど、<ruby>習慣<rt>しゅうかん</rt></ruby>ということですね。メモしておきます。<br>*(Ra vậy, là thói quen đúng không ạ. Em ghi lại.)* |

---

## Tình huống 3 — 食堂 · 12:30, báo cáo tiến độ vệ sinh giữa trưa

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、<ruby>進捗<rt>しんちょく</rt></ruby>はどうですか？<br>*(Mọi người, tiến độ thế nào?)* |
| Suzuki | <ruby>仕上<rt>しあ</rt></ruby>げ<ruby>班<rt>はん</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>夕方<rt>ゆうがた</rt></ruby>には<ruby>終<rt>お</rt></ruby>われます。<br>*(Tổ hoàn thiện thuận lợi. Chiều xong được.)* |
| Operator MC | <ruby>機械<rt>きかい</rt></ruby><ruby>加工室<rt>かこうしつ</rt></ruby>はもう<ruby>少<rt>すこ</rt></ruby>しかかります。<br>*(Phòng gia công máy còn chút nữa.)* |
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>班<rt>はん</rt></ruby>は<ruby>砥石<rt>といし</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>が<ruby>終<rt>お</rt></ruby>わって、<ruby>今<rt>いま</rt></ruby>から<ruby>機械<rt>きかい</rt></ruby>の<ruby>分解<rt>ぶんかい</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Trưởng nhà máy, tổ hoàn thiện đã xong phần sắp đá mài, bây giờ chuyển sang tháo máy vệ sinh ạ.)* |
| Tanaka | <ruby>報告<rt>ほうこく</rt></ruby>ありがとう、タイ<ruby>君<rt>くん</rt></ruby>。<ruby>報連相<rt>ほうれんそう</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>になったね。<br>*(Cảm ơn báo cáo, Thái. Em hourensou khá hơn rồi đấy.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Tanaka | では、<ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>終<rt>お</rt></ruby>わらせて、<ruby>居酒屋<rt>いざかや</rt></ruby>は<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>鳥貴族<rt>とりきぞく</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy 5 giờ kết thúc, izakaya 6 giờ ở Torikizoku nhé.)* |
| Cả xưởng | はい！<br>*(Vâng!)* |

---

## Tình huống 4 — Izakaya 鳥貴族 · 18:00, chào hỏi đầu tiệc + từ chối rượu lễ phép

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Mọi người, một năm vất vả rồi!)* |
| Cả nhóm | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Vất vả ạ!)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>参加者<rt>さんかしゃ</rt></ruby>は<ruby>25<rt>にじゅうご</rt></ruby><ruby>名<rt>めい</rt></ruby>です。タイ<ruby>君<rt>くん</rt></ruby>とプトラ<ruby>君<rt>くん</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めての<ruby>忘年会<rt>ぼうねんかい</rt></ruby>ですね。<br>*(Hôm nay có 25 người. Thái và Putra là tiệc tất niên đầu tiên đúng không.)* |
| Thái và Putra | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Vâng, mong mọi người giúp đỡ ạ!)* |
| Tanaka | お<ruby>酒<rt>さけ</rt></ruby>は<ruby>飲<rt>の</rt></ruby>めますか？<br>*(Uống rượu được không?)* |
| Thái | はい、<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>飲<rt>の</rt></ruby>めます。ビールをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em uống được chút thôi. Cho em xin bia ạ.)* |
| Putra | <ruby>申<rt>もう</rt></ruby><ruby>訳<rt>わけ</rt></ruby>ありません、<ruby>私<rt>わたし</rt></ruby>はムスリムなので、<ruby>宗教<rt>しゅうきょう</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>でお<ruby>酒<rt>さけ</rt></ruby>は<ruby>飲<rt>の</rt></ruby>めません。ジュースでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin lỗi, em theo đạo Hồi nên vì lý do tôn giáo không uống được rượu. Cho em xin nước trái cây ạ.)* |
| Tanaka | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>無理<rt>むり</rt></ruby>しないでくださいね。<br>*(Rõ rồi. Đừng cố gắng nhé.)* |
| Putra | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 5 — Bàn tiệc · 18:30, lần đầu bắt chuyện với 課長 Kawakami

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めて<ruby>話<rt>はな</rt></ruby>すね。<ruby>設計<rt>せっけい</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>の<ruby>川上<rt>かわかみ</rt></ruby>です。<br>*(Thái, lần đầu nói chuyện nhỉ. Tôi là Kawakami, trưởng phòng thiết kế.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして、<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>。グエン・ヴァン・タイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Rất hân hạnh, anh Kawakami trưởng phòng. Em tên là Nguyễn Văn Thái. Mong anh chỉ bảo ạ.)* |
| Kawakami | <ruby>大学<rt>だいがく</rt></ruby>で<ruby>機械<rt>きかい</rt></ruby><ruby>工学<rt>こうがく</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>したと<ruby>聞<rt>き</rt></ruby>いていますよ。<br>*(Tôi nghe nói em học cơ khí ở đại học.)* |
| Thái | はい、ベトナム<ruby>国家<rt>こっか</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>ハノイ校<rt>ハノイこう</rt></ruby>で<ruby>機械<rt>きかい</rt></ruby><ruby>工学<rt>こうがく</rt></ruby>を<ruby>専攻<rt>せんこう</rt></ruby>していました。<br>*(Vâng, em học chuyên ngành cơ khí ở Đại học Quốc gia Hà Nội ạ.)* |
| Kawakami | おお、<ruby>優秀<rt>ゆうしゅう</rt></ruby>な<ruby>学校<rt>がっこう</rt></ruby>ですね。ところで、<ruby>来年<rt>らいねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>からCAD<ruby>研修<rt>けんしゅう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ると<ruby>聞<rt>き</rt></ruby>きました。<br>*(Ồ, trường giỏi đấy. Mà nghe nói tháng 2 sang năm em vào đào tạo CAD nhỉ.)* |
| Thái | はい、<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Vâng, em rất mong ạ.)* |
| Kawakami | SolidWorksは<ruby>使<rt>つか</rt></ruby>ったことありますか？<br>*(Em đã dùng SolidWorks chưa?)* |
| Thái | <ruby>大学<rt>だいがく</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>使<rt>つか</rt></ruby>いました。AutoCADのほうが<ruby>多<rt>おお</rt></ruby>かったです。<br>*(Ở đại học em dùng một chút. AutoCAD thì nhiều hơn ạ.)* |
| Kawakami | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>当社<rt>とうしゃ</rt></ruby>はSolidWorksが<ruby>標準<rt>ひょうじゅん</rt></ruby>です。<ruby>来年<rt>らいねん</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Tôi rõ rồi. Công ty mình dùng SolidWorks là chuẩn. Sang năm cùng cố gắng nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em mong anh chỉ bảo ạ.)* |

---

## Tình huống 6 — Bàn tiệc · 19:00, học lễ nghi 乾杯 và 注ぎ返す (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Tanaka | では、みなさん、グラスをお<ruby>持<rt>も</rt></ruby>ちください。<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Vậy mọi người cầm cốc lên. Cạn ly!)* |
| Cả nhóm | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Suzuki | （<ruby>瓶<rt>びん</rt></ruby>を<ruby>持<rt>も</rt></ruby>つ）タイ<ruby>君<rt>くん</rt></ruby>、ビールを<ruby>注<rt>つ</rt></ruby>ぎますよ。<br>*(Cầm chai. Thái, để anh rót bia cho nhé.)* |
| Thái | （グラスを<ruby>両手<rt>りょうて</rt></ruby>で<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す）ありがとうございます、スズキさん。<br>*(Đưa cốc bằng hai tay. Em cảm ơn anh Suzuki.)* |
| Suzuki | <ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>けるの、<ruby>上手<rt>じょうず</rt></ruby>だね！<ruby>日本<rt>にほん</rt></ruby>の<ruby>礼儀<rt>れいぎ</rt></ruby>です。<br>*(Đưa cốc hai tay khéo đấy! Đó là lễ nghi Nhật.)* |
| Sakurai | （<ruby>横<rt>よこ</rt></ruby>から、<ruby>小声<rt>こごえ</rt></ruby>で）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>はスズキさんに<ruby>注<rt>つ</rt></ruby>ぎ<ruby>返<rt>かえ</rt></ruby>すんですよ。<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>注<rt>つ</rt></ruby>いでもらったら、<ruby>必<rt>かなら</rt></ruby>ず<ruby>返<rt>かえ</rt></ruby>す。<br>*(Từ bên cạnh, nói nhỏ. Thái, tiếp theo phải rót lại cho anh Suzuki. Khi tiền bối rót cho mình thì nhất định phải rót lại.)* |
| Thái | あ、<ruby>分<rt>わ</rt></ruby>かりました。（<ruby>瓶<rt>びん</rt></ruby>を<ruby>両手<rt>りょうて</rt></ruby>で<ruby>持<rt>も</rt></ruby>つ）スズキさん、どうぞ。<br>*(À, em hiểu rồi. Cầm chai bằng hai tay. Mời anh Suzuki ạ.)* |
| Suzuki | （グラスを<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す）ありがとう。<ruby>覚<rt>おぼ</rt></ruby>えるの<ruby>早<rt>はや</rt></ruby>いね。<br>*(Đưa cốc ra. Cảm ơn. Học nhanh thật.)* |
| Thái | サクライさん、<ruby>教<rt>おし</rt></ruby>えていただき、ありがとうございました。<br>*(Anh Sakurai, em cảm ơn anh đã chỉ ạ.)* |
| Sakurai | いえいえ、<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>知<rt>し</rt></ruby>らないですからね。<br>*(Không có gì, ai lúc đầu cũng không biết mà.)* |

---

## Tình huống 7 — Bàn tiệc · 19:30, hỏi lại khi chưa hiểu từ chuyên ngành tiệc

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>二<rt>に</rt></ruby><ruby>次会<rt>じかい</rt></ruby>はどうする？<br>*(Thái, tiệc tăng hai thế nào?)* |
| Thái | すみません、「<ruby>二<rt>に</rt></ruby><ruby>次会<rt>じかい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "nijikai" nghĩa là gì ạ?)* |
| Sakurai | あ、ごめんね。<ruby>忘年会<rt>ぼうねんかい</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に、もう<ruby>一<rt>いち</rt></ruby><ruby>軒<rt>けん</rt></ruby>カラオケや<ruby>別<rt>べつ</rt></ruby>の<ruby>店<rt>みせ</rt></ruby>に<ruby>行<rt>い</rt></ruby>くことです。<br>*(À xin lỗi nhé. Là sau tiệc tất niên, đi tiếp một quán nữa, karaoke hoặc quán khác.)* |
| Thái | なるほど、<ruby>続<rt>つづ</rt></ruby>きのパーティーということですね。<br>*(Ra vậy, là tiệc tiếp theo đúng không ạ.)* |
| Sakurai | そうそう。<ruby>強制<rt>きょうせい</rt></ruby>じゃないから、<ruby>疲<rt>つか</rt></ruby>れたら<ruby>帰<rt>かえ</rt></ruby>っていいよ。<br>*(Đúng đúng. Không bắt buộc đâu, mệt thì về cũng được.)* |
| Thái | <ruby>明日<rt>あした</rt></ruby>から<ruby>休<rt>やす</rt></ruby>みなので、<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>参加<rt>さんか</rt></ruby>します。<br>*(Mai bắt đầu nghỉ nên em tham gia một chút ạ.)* |
| Sakurai | プトラ<ruby>君<rt>くん</rt></ruby>は？<br>*(Còn Putra?)* |
| Putra | <ruby>私<rt>わたし</rt></ruby>は<ruby>寮<rt>りょう</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>ります。<ruby>祈<rt>いの</rt></ruby>る<ruby>時間<rt>じかん</rt></ruby>があるので、<ruby>申<rt>もう</rt></ruby><ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Em về ký túc ạ. Em có giờ cầu nguyện, xin lỗi ạ.)* |
| Sakurai | もちろん<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>ってね。<br>*(Tất nhiên ổn rồi. Về cẩn thận nhé.)* |

---

## Tình huống 8 — Bàn tiệc · 20:00, 工場長 phát biểu tổng kết — Thái đáp lễ

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>をください。<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りをさせていただきます。<br>*(Mọi người cho tôi xin chút thời gian. Tôi xin được nhìn lại một năm qua.)* |
| Cả nhóm | （<ruby>静<rt>しず</rt></ruby>かになる）<br>*(Im lặng.)* |
| Tanaka | <ruby>2022<rt>にせんにじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>入<rt>はい</rt></ruby>りました。タイ<ruby>君<rt>くん</rt></ruby>とプトラ<ruby>君<rt>くん</rt></ruby>です。<br>*(Năm 2022, công ty có thêm 2 nhân viên nước ngoài mới. Là Thái và Putra.)* |
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>8<rt>はち</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>で、フォークリフト、<ruby>玉掛<rt>たまか</rt></ruby>け、<ruby>研削<rt>けんさく</rt></ruby><ruby>砥石<rt>といし</rt></ruby>の<ruby>3<rt>みっ</rt></ruby>つの<ruby>資格<rt>しかく</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>しました。<br>*(Thái sau 8 tháng từ tháng 5 đã lấy được 3 chứng chỉ: xe nâng, móc cẩu, và đá mài.)* |
| Cả nhóm | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |
| Tanaka | <ruby>磨<rt>みが</rt></ruby>き<ruby>技術<rt>ぎじゅつ</rt></ruby>も<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>んでいます。<ruby>来年<rt>らいねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>からはCAD<ruby>研修<rt>けんしゅう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>には<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Kỹ thuật mài cũng tiến triển thuận. Từ tháng 2 năm sau vào đào tạo CAD, tháng 3 thử thi chứng chỉ gia công máy bậc 3.)* |
| Thái | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>来年<rt>らいねん</rt></ruby>もどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Đứng dậy, cúi đầu. Trưởng nhà máy, em xin cảm ơn anh một năm qua. Năm sau cũng mong anh chỉ bảo ạ.)* |
| Tanaka | こちらこそ。みなさん、<ruby>来年<rt>らいねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Tôi mới phải cảm ơn. Mọi người, năm sau cũng mong giúp đỡ!)* |
| Cả nhóm | よろしくお<ruby>願<rt>ねが</rt></ruby>いします！（<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Mong giúp đỡ! Vỗ tay.)* |

---

## Tình huống 9 — Trước izakaya · 21:30, chia tay đồng nghiệp về trước

| Vai | Lời thoại |
|---|---|
| Putra | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>申<rt>もう</rt></ruby><ruby>訳<rt>わけ</rt></ruby>ありません、<ruby>私<rt>わたし</rt></ruby>はお<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Trưởng nhà máy, em xin lỗi, em xin phép về trước ạ.)* |
| Tanaka | はい、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>気<rt>き</rt></ruby>をつけてね。<br>*(Vâng, vất vả rồi. Cẩn thận nhé.)* |
| Thái | <ruby>私<rt>わたし</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>二<rt>に</rt></ruby><ruby>次会<rt>じかい</rt></ruby>に<ruby>参加<rt>さんか</rt></ruby>して、<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>には<ruby>帰<rt>かえ</rt></ruby>ります。<br>*(Em đi tăng hai một chút, 10 giờ sẽ về ạ.)* |
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>無理<rt>むり</rt></ruby>しないでね。<ruby>明日<rt>あした</rt></ruby>から<ruby>休<rt>やす</rt></ruby>みだから、ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Thái, đừng cố quá nhé. Mai bắt đầu nghỉ rồi, em nghỉ ngơi thoải mái nhé.)* |
| Thái | はい、ありがとうございます。スズキさんもお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, em cảm ơn anh. Anh Suzuki cũng vất vả rồi ạ.)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby><ruby>室<rt>しつ</rt></ruby>で<ruby>会<rt>あ</rt></ruby>いましょう。<br>*(Thái, sang năm tháng 2 mình gặp ở phòng thiết kế nhé.)* |
| Thái | はい、<ruby>楽<rt>たの</rt></ruby>しみにしています。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em rất mong ạ. Mong anh giúp đỡ.)* |

---

## Tình huống 10 — Phòng 201 · 23:30, gọi điện về Việt Nam (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng JP của chương.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi, mẹ thức không? Con vừa đi tiệc tất niên về. |
| Mẹ Thái | (tiếng Việt) Thái à, mẹ chờ con đây. Có say không con? |
| Thái | (tiếng Việt) Không mẹ, con uống có một cốc bia. Putra cùng phòng theo đạo Hồi không uống rượu, nó về sớm rồi. |
| Mẹ Thái | (tiếng Việt) Tiệc tất niên bên đấy có đông không? |
| Thái | (tiếng Việt) Đông mẹ ạ, 25 người. Trưởng nhà máy Tanaka phát biểu tổng kết, tuyên dương con 8 tháng lấy được 3 chứng chỉ. Tiếng Nhật gọi là 振り返り — nhìn lại một năm. |
| Mai | (tiếng Việt, ghé vào) Anh ơi, em đây. Anh học được gì hôm nay? |
| Thái | (tiếng Việt) Học cách rót bia bằng hai tay. Bên Nhật khi tiền bối rót cho mình thì phải đưa cốc bằng hai tay, rồi mình phải rót lại — gọi là 注ぎ返す. Mà còn học chữ 二次会, là tiệc tăng hai sau tiệc chính. |
| Mai | (tiếng Việt) Anh ghi vào sổ chưa? Em thấy anh tiến nhanh đấy. |
| Thái | (tiếng Việt) Ghi rồi. Còn một tin vui: tháng 2 sang năm anh được lên phòng thiết kế học CAD, anh Kawakami trưởng phòng tự đến nói chuyện với anh ở tiệc. Đúng kế hoạch luôn. |
| Mẹ Thái | (tiếng Việt) Mẹ mừng cho con. Mai nghỉ rồi đúng không? Ngủ một giấc đẫy đi. |
| Thái | (tiếng Việt) Vâng. Mai mùng 5 Tết Tây cả công ty nghỉ, con ngủ bù. Mẹ với em cũng đi ngủ đi. |
| Mai | (tiếng Việt) Ngủ ngon anh. Hết năm 1 rồi đấy. |
| Thái | (tiếng Việt) Ừ, hết năm 1. Còn 4 năm nữa. |

---

## Đọng lại chương 8

Ngày cuối năm gói gọn năm đầu của Thái tại xưởng. Sáng làm **大掃除** theo nguyên tắc **5S** (**整理・整頓・清掃・清潔・躾**) cùng anh Suzuki, học sắp dụng cụ theo **番手順** và hiểu **躾** là duy trì thói quen kỷ luật. Giữa trưa Thái chủ động **報告 tiến độ** với 工場長 — được khen 報連相 đã khá hơn. Tối tại **忘年会** ở 鳥貴族 Anjo, Thái lần đầu học các lễ nghi tiệc Nhật: **乾杯**, đón cốc bằng **両手**, và đặc biệt là **注ぎ返す** (rót lại cho 先輩 khi được rót) — Sakurai chỉ dẫn nhỏ bên cạnh. Cũng học cách **từ chối rượu lễ phép** (お酒は少しだけ・宗教の関係で飲めません) qua cách Putra trả lời, và mẫu **hỏi lại từ tiệc** (「二次会」というのは？). Lần đầu bắt chuyện với **設計課長 川上** — tín hiệu rõ ràng tháng 2 sang năm Thái sẽ chuyển lên phòng thiết kế học CAD. Cuối tiệc, 工場長 phát biểu **振り返り**, tuyên dương công khai 3 chứng chỉ và lộ trình **機械加工3級** tháng 3. Thái đứng dậy đáp lễ bằng cụm chuẩn **来年もどうぞよろしくお願いいたします** — khép một năm trọn vẹn.

> Từ vựng & mẫu câu chương này: 大掃除・忘年会・居酒屋・鳥貴族・5S運動・整理・整頓・清掃・清潔・躾・番手順・進捗・報連相・乾杯・両手で受ける・注ぐ・注ぎ返す・二次会・振り返り・設計課長・機械加工3級・宗教の関係で・お酒は少しだけ・お疲れさまでした・〜というのは・来年もどうぞよろしくお願いいたします

---

## Bí quyết chương

- **Bia rót hai tay + 注ぎ返す**: Lễ nghi izakaya quan trọng nhất với người mới — Sakurai chỉ dạy nhỏ bên cạnh thay vì để Thái sai trước cấp trên.
- **Putra theo đạo Hồi không uống**: Đa dạng tôn giáo thực tế, công ty Nhật tôn trọng — đồng thời dạy Thái mẫu câu từ chối rượu lễ phép.
- **Kawakami chủ động tiếp cận**: Tín hiệu rõ — Thái sẽ chuyển sang CAD tháng 2.
- **5S đại vệ sinh**: Đại vệ sinh = nghi thức cuối năm gắn với 感謝, không chỉ vệ sinh.
- **Tanaka tổng kết công khai**: 3 chứng chỉ + mài bóng + kế hoạch CAD — ghi nhận trước toàn xưởng để Thái có động lực bước sang năm 2.

> *"28/12/2022. Đại vệ sinh + tiệc tất niên đầu. Rót bia hai tay. Tháng 2 lên CAD. Hết năm 1."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 大掃除 | おおそうじ | ĐẠI TẢO TRỪ | đại vệ sinh |
| 感謝 | かんしゃ | CẢM TẠ | biết ơn |
| 各班 | かくはん | CÁC BAN | từng tổ |
| 磨き機械 | みがききかい | MA CƠ KHÍ | máy mài |
| 道具棚 | どうぐだな | ĐẠO CỤ PHÀNG | tủ đồ nghề |
| 整理 | せいり | CHỈNH LÝ | sắp xếp |
| 居酒屋 | いざかや | CƯ TỬU ỐC | quán nhậu |
| 忘年会 | ぼうねんかい | VONG NIÊN HỘI | tiệc tất niên |
| 番手順 | ばんてじゅん | PHIÊN THỦ THUẬN | thứ tự độ hạt |
| 分解 | ぶんかい | PHÂN GIẢI | tháo rời |
| 清掃 | せいそう | THANH TẢO | lau dọn |
| 整頓 | せいとん | CHỈNH ĐỐN | ngăn nắp |
| 運動 | うんどう | VẬN ĐỘNG | phong trào |
| 清潔 | せいけつ | THANH KHIẾT | sạch sẽ |
| 躾 | しつけ | — | kỷ luật, dạy dỗ |
| 習慣 | しゅうかん | TẬP QUÁN | thói quen |
| 進捗 | しんちょく | TIẾN CHỈ | tiến độ |
| 順調 | じゅんちょう | THUẬN ĐIỀU | thuận lợi |
| 参加者 | さんかしゃ | THAM GIA GIẢ | người tham dự |
| 宗教 | しゅうきょう | TÔN GIÁO | tôn giáo |
| 関係 | かんけい | QUAN HỆ | mối liên hệ, lý do |
| 了解 | りょうかい | LIỄU GIẢI | rõ, hiểu |
| 無理 | むり | VÔ LÝ | gượng ép |
| 課長 | かちょう | KHOÁ TRƯỞNG | trưởng phòng |
| 優秀 | ゆうしゅう | ƯU TÚ | xuất sắc |
| 標準 | ひょうじゅん | TIÊU CHUẨN | tiêu chuẩn |
| 乾杯 | かんぱい | CAN BÔI | cạn ly |
| 両手 | りょうて | LƯỠNG THỦ | hai tay |
| 注ぐ | つぐ | CHÚ | rót |
| 礼儀 | れいぎ | LỄ NGHI | lễ nghi |
| 注ぎ返す | つぎかえす | CHÚ PHẢN | rót lại |
| 二次会 | にじかい | NHỊ THỨ HỘI | tiệc tăng hai |
| 強制 | きょうせい | CƯỠNG CHẾ | bắt buộc |
| 参加 | さんか | THAM GIA | tham dự |
| 振り返り | ふりかえり | CHẤN PHẢN | nhìn lại, tổng kết |
| 社員 | しゃいん | XÃ VIÊN | nhân viên công ty |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thách thức |
| 失礼 | しつれい | THẤT LỄ | xin phép |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000009, 800000014, NULL, 'markdown_book', 'T9. Năm mới Nhật và Tết Việt (お正月とテト)', '# Sách kỹ sư khuôn đúc · T9. Năm mới Nhật và Tết Việt (お正月とテト)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) đón cái Tết đầu tiên xa nhà — Năm mới Nhật 1/1 và Tết Âm 22/1. Học các mẫu hội thoại tiếng Nhật quanh dịp lễ: chúc mừng năm mới kiểu Nhật (明けましておめでとうございます・本年もよろしくお願いします), xin nghỉ phép có lương (有給休暇を取りたいのですが), trình bày lý do cá nhân với cấp trên một cách lịch sự, hỏi lại khi chưa hiểu phong tục (〜というのは何ですか), tiếp nhận lời mời từ đồng hương, cảm ơn lúc xúc động (感謝いたします).

---

## Bối cảnh

Tháng 1 năm 2023. Thái đã ở Nhật được 8 tháng, làm tại **株式会社みなみ精密金型** ở Anjo, Aichi. Trình độ tiếng Nhật N4 đang lên N3. Công ty nghỉ 元日 (Mùng 1 Tết Nhật) 3 ngày 1-3/1, Putra về Indonesia 2 tuần, ký túc còn mình Thái. Tết Âm Việt Nam rơi vào 22/1 (Chủ nhật) — một ngày làm việc bình thường tại Nhật. Chương này tập trung các mẫu câu hội thoại dịp lễ: chúc mừng năm mới ở công ty, xin nghỉ phép có lương khéo léo, mời và nhận lời từ đồng hương, và cảnh tiếng Việt giữ mạch gia đình.

---

## Tình huống 1 — Phòng 201 · 8:00 元日, mở đầu năm mới một mình

| Vai | Lời thoại |
|---|---|
| Thái | (mở mắt nhìn quanh phòng vắng, lấy điện thoại) <ruby>明<rt>あ</rt></ruby>けましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chúc mừng năm mới. Năm nay cũng mong được giúp đỡ.)* |
| Thái | (tự nhủ) <ruby>元日<rt>がんじつ</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>か。<ruby>初<rt>はじ</rt></ruby>めての<ruby>日本<rt>にほん</rt></ruby>のお<ruby>正月<rt>しょうがつ</rt></ruby>。<br>*(Sáng Mùng 1 Tết. Cái Tết Nhật đầu tiên của mình.)* |
| Thái | (nhìn giường Putra trống) プトラさんはジャカルタ。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>は<ruby>岐阜<rt>ぎふ</rt></ruby>の<ruby>実家<rt>じっか</rt></ruby>。<ruby>寮<rt>りょう</rt></ruby>には<ruby>誰<rt>だれ</rt></ruby>もいない。<br>*(Anh Putra ở Jakarta. Đàn anh Sakurai về quê Gifu. Ký túc không còn ai.)* |
| Thái | (mở LINE, gõ tin nhắn cho Linh-chị) リンさん、<ruby>明<rt>あ</rt></ruby>けましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Linh, chúc mừng năm mới. Năm nay cũng mong chị giúp đỡ.)* |
| Linh | (trả lời ngay) タイ<ruby>君<rt>くん</rt></ruby>、おめでとう！<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>に<ruby>名古屋<rt>なごや</rt></ruby>に<ruby>来<rt>こ</rt></ruby>ない？フォーを<ruby>作<rt>つく</rt></ruby>るよ。<br>*(Thái ơi, chúc mừng năm mới! Mùng 3 lên Nagoya chơi không? Chị nấu phở cho.)* |
| Thái | はい、ぜひ<ruby>伺<rt>うかが</rt></ruby>います。ありがとうございます。<br>*(Vâng, em nhất định sẽ đến. Em cảm ơn chị.)* |

---

## Tình huống 2 — Phòng 201 · 9:00, gọi video về Việt Nam mừng năm mới (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, video call) Mẹ ơi! Bố! Mai! Chúc mừng năm mới ạ! |
| Mẹ Thái | (tiếng Việt) Thái! Mẹ chờ con gọi từ sáng. Bên đó năm mới Nhật rồi nhỉ? |
| Thái | (tiếng Việt) Vâng, hôm nay là Mùng 1 Nhật. Bên này gọi là 元日 (Ganjitsu). Công ty con nghỉ 3 ngày, từ 1 đến 3 tháng 1. |
| Mai | (tiếng Việt, ghé màn hình, mắt buồn ngủ) Anh ơi, em mới đến chúc Tết bố mẹ. Tết Nhật khác Tết mình thế nào hả anh? |
| Thái | (tiếng Việt) Tết Nhật rơi đúng ngày 1/1 dương lịch, nghỉ 3 ngày thôi. Không có hoa đào, không có bánh chưng. Họ ăn おせち料理 (osechi ryouri) — hộp đồ ăn nguội nhiều ngăn. Sáng nay anh chưa ăn gì cả. |
| Mẹ Thái | (tiếng Việt) Một mình hả con? Bạn cùng phòng đâu? |
| Thái | (tiếng Việt) Putra về Indonesia hai tuần rồi mẹ. Nhưng mẹ đừng lo, chị Linh ở Nagoya mời con lên chơi Mùng 3. Chị ấy bảo nấu phở cho ăn. |
| Mai | (tiếng Việt, ngập ngừng) Anh ơi... Tết âm mình 22 tháng 1, rơi vào chủ nhật. Mà thứ hai 23 anh có phải đi làm không? |
| Thái | (tiếng Việt) Có em. Nhật không nghỉ Tết âm. Chủ nhật anh gọi video cả ngày được, nhưng thứ hai vẫn phải đi xưởng. |
| Mai | (tiếng Việt, im một lúc) ...Vâng. Em hiểu mà. |
| Thái | (tiếng Việt) Để anh thử xin sếp Tanaka cho nghỉ phép một ngày xem sao. Anh chưa hứa đâu nhé, nhưng anh sẽ thử. |
| Bố Thái | (tiếng Việt) Ừ con thử đi. Lễ phép vào. Người Nhật trọng cách mình nói chuyện. |

---

## Tình huống 3 — Nhà chị Linh, Nagoya · 12:30 ngày 3/1, đồng hương + ôn lại 報連相

> Cảnh mix tiếng Việt và tiếng Nhật — chị Linh là 永住者 người Việt, nói cả hai thứ tiếng.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt, mở cửa) Thái! Vào đi em, lạnh chết. Cởi áo khoác ra đây. |
| Thái | (tiếng Việt, cúi đầu) Chị Linh, em cảm ơn chị đã mời. Đây là quà Tết em mang từ Anjo. |
| Linh | (tiếng Việt) Khách sáo ghê. Ngồi đi, chị múc phở nóng đây. Mùi hành ngò bay từ bếp ra rồi đấy. |
| Thái | (tiếng Việt, hít hà) Trời ơi chị... 8 tháng rồi em chưa được ngửi mùi này. |
| Linh | (tiếng Việt) Bánh phở mua qua mạng từ siêu thị Việt ở Tokyo. Thịt bò Aichi. Hành ngò trồng ở vườn nhỏ ban công. |
| Thái | (ăn xong, vừa tiếng Việt vừa Nhật) Y hệt phở nhà em ăn ở Hà Nội. <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>美味<rt>おい</rt></ruby>しいです。<br>*(Thật sự ngon lắm.)* |
| Linh | (tiếng Việt) Em này, công ty Anjo dạo này thế nào? Sếp Tanaka có tốt không? |
| Thái | (tiếng Việt) Tốt lắm chị. Em được dạy 報連相 (Hourensou) ngay từ ngày đầu — báo cáo, liên lạc, bàn bạc. Bây giờ đi xưởng em quen rồi. |
| Linh | (tiếng Việt) Ừ, ở Nhật cái 報連相 là sinh tử. Mà chị nghe nói Tết âm năm nay rơi Chủ nhật phải không? Em định xin nghỉ Mùng 1 không? |
| Thái | (tiếng Việt) Em định mai sẽ xin sếp Tanaka cho nghỉ phép thứ hai 23/1. Mà em chưa biết nói thế nào cho lịch sự. |
| Linh | (tiếng Việt) Chị mách em mẫu câu chuẩn của người Nhật khi xin nghỉ phép: "<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>取<rt>と</rt></ruby>らせていただきたいのですが、よろしいでしょうか" — em xin một ngày phép có lương, được không ạ. Nói rõ lý do là Tết Việt. Đừng kể dài, sếp Nhật thích ngắn gọn. |
| Thái | (tiếng Việt) Vâng em ghi lại. Cảm ơn chị nhiều. |

---

## Tình huống 4 — Workshop · 8:30 ngày 4/1, lễ khai xuân với cấp trên và đồng nghiệp

| Vai | Lời thoại |
|---|---|
| Tanaka | (đứng trước cả nhóm) みなさん、おはようございます。<ruby>明<rt>あ</rt></ruby>けましておめでとうございます。<br>*(Mọi người chào buổi sáng. Chúc mừng năm mới.)* |
| Cả nhóm | <ruby>明<rt>あ</rt></ruby>けましておめでとうございます！<br>*(Chúc mừng năm mới ạ!)* |
| Tanaka | <ruby>本年<rt>ほんねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Năm nay cũng xin được hợp tác.)* |
| Cả nhóm | <ruby>本年<rt>ほんねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします！<br>*(Năm nay cũng xin được hợp tác ạ!)* |
| Tanaka | <ruby>今年<rt>ことし</rt></ruby>はトヨタの<ruby>新<rt>あた</rt></ruby>らしい<ruby>金型<rt>かながた</rt></ruby>プロジェクトが<ruby>始<rt>はじ</rt></ruby>まります。<ruby>精度<rt>せいど</rt></ruby>と<ruby>納期<rt>のうき</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Năm nay dự án khuôn mới của Toyota sẽ khởi động. Độ chính xác và thời hạn giao hàng, mong các bạn lưu ý.)* |
| Sakurai | (quay sang Thái) タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>正月<rt>しょうがつ</rt></ruby>はどうだった？<br>*(Cậu Thái, năm mới thế nào?)* |
| Thái | <ruby>1人<rt>ひとり</rt></ruby>で<ruby>寮<rt>りょう</rt></ruby>にいました。でも<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>に<ruby>名古屋<rt>なごや</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>姉<rt>あね</rt></ruby>さんに<ruby>会<rt>あ</rt></ruby>って、フォーをご<ruby>馳走<rt>ちそう</rt></ruby>になりました。<br>*(Em ở ký túc một mình. Nhưng Mùng 3 em đến chỗ chị người Việt ở Nagoya, được chị đãi phở.)* |
| Sakurai | フォー、いいね！<ruby>淋<rt>さび</rt></ruby>しくなかった？<br>*(Phở, hay nhỉ! Có cô đơn không?)* |
| Thái | <ruby>少<rt>すこ</rt></ruby>し<ruby>淋<rt>さび</rt></ruby>しかったです。でも<ruby>家族<rt>かぞく</rt></ruby>とビデオ<ruby>通話<rt>つうわ</rt></ruby>しました。<br>*(Hơi cô đơn ạ. Nhưng em đã gọi video với gia đình.)* |
| Sakurai | そうか。タイ<ruby>君<rt>くん</rt></ruby>のテト、いつだっけ？<br>*(Vậy à. Tết của cậu Thái khi nào nhỉ?)* |
| Thái | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>日曜日<rt>にちようび</rt></ruby>です。<br>*(Ngày 22 tháng 1, chủ nhật ạ.)* |

---

## Tình huống 5 — Hành lang văn phòng · 17:00 ngày 4/1, hỏi lại đàn anh về phong tục osechi

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、すみません、<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Anh Sakurai, xin lỗi em hỏi một chút được không?)* |
| Sakurai | どうぞ、<ruby>何<rt>なに</rt></ruby>？<br>*(Cứ hỏi, gì vậy?)* |
| Thái | <ruby>正月<rt>しょうがつ</rt></ruby>に「おせち<ruby>料理<rt>りょうり</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きました。「おせち」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Trong dịp năm mới em có nghe từ "osechi ryouri". "Osechi" nghĩa là gì ạ?)* |
| Sakurai | ああ、おせちね。<ruby>正月<rt>しょうがつ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べる<ruby>伝統的<rt>でんとうてき</rt></ruby>な<ruby>料理<rt>りょうり</rt></ruby>だよ。<ruby>重箱<rt>じゅうばこ</rt></ruby>という<ruby>四角<rt>しかく</rt></ruby>い<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っている。<br>*(À, osechi à. Là món ăn truyền thống ăn trong Tết. Đựng trong hộp vuông gọi là juubako.)* |
| Thái | <ruby>重箱<rt>じゅうばこ</rt></ruby>...<ruby>四角<rt>しかく</rt></ruby>い<ruby>箱<rt>はこ</rt></ruby>ですね。なぜ<ruby>正月<rt>しょうがつ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べますか？<br>*(Juubako... hộp vuông ạ. Vì sao lại ăn vào năm mới ạ?)* |
| Sakurai | <ruby>昔<rt>むかし</rt></ruby>は、<ruby>正月<rt>しょうがつ</rt></ruby>の<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>間<rt>かん</rt></ruby>は<ruby>家事<rt>かじ</rt></ruby>を<ruby>休<rt>やす</rt></ruby>むために<ruby>事前<rt>じぜん</rt></ruby>に<ruby>作<rt>つく</rt></ruby>り<ruby>置<rt>お</rt></ruby>きしたんだ。だから<ruby>冷<rt>ひ</rt></ruby>えても<ruby>美味<rt>おい</rt></ruby>しいものばかり。<br>*(Ngày xưa là để nghỉ việc nhà trong 3 ngày Tết nên làm sẵn từ trước. Vì vậy đều là món để nguội vẫn ngon.)* |
| Thái | なるほど、ベトナムの<ruby>銀杏<rt>ぎんなん</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>や<ruby>春巻<rt>はるま</rt></ruby>きと<ruby>似<rt>に</rt></ruby>ていますね。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>作<rt>つく</rt></ruby>るということですね。<br>*(Ra vậy, giống xôi với nem rán Tết của Việt Nam, làm sẵn từ trước ạ.)* |
| Sakurai | そう、<ruby>同<rt>おな</rt></ruby>じだね。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>の<ruby>家<rt>いえ</rt></ruby>でおせち<ruby>食<rt>た</rt></ruby>べる？<ruby>母<rt>はは</rt></ruby>が<ruby>毎年<rt>まいとし</rt></ruby><ruby>作<rt>つく</rt></ruby>る。<br>*(Ừ, giống nhau đấy. Sang năm Thái đến nhà tôi ăn osechi không? Mẹ tôi năm nào cũng nấu.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>ですか？ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thật ạ? Em xin được nhận lời.)* |

---

## Tình huống 6 — Trước phòng 工場長 · 9:00 ngày 5/1, Thái xin nghỉ phép Tết Việt

| Vai | Lời thoại |
|---|---|
| Thái | (gõ cửa nhẹ ba tiếng) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>今<rt>いま</rt></ruby>、よろしいでしょうか。<br>*(Em xin phép. Trưởng nhà máy Tanaka, bây giờ ông có rảnh không ạ?)* |
| Tanaka | はい、どうぞ。<br>*(Vâng, mời vào.)* |
| Thái | (cúi đầu) お<ruby>忙<rt>いそが</rt></ruby>しいところ、すみません。<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>のことでご<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Đang lúc bận xin lỗi đã làm phiền. Em có việc cần trao đổi về phép có lương.)* |
| Tanaka | はい、どうぞ。<br>*(Vâng, em nói đi.)* |
| Thái | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>月曜日<rt>げつようび</rt></ruby>に、<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>取<rt>と</rt></ruby>らせていただきたいのですが、よろしいでしょうか。<br>*(Vào thứ hai ngày 23 tháng 1, em xin được nghỉ một ngày phép có lương, có được không ạ?)* |
| Tanaka | <ruby>23<rt>にじゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>ですね。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>ってもいいですか？<br>*(Ngày 23 nhỉ. Tôi hỏi lý do được không?)* |
| Thái | はい。<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>日<rt>にち</rt></ruby>がベトナムのテト、<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>です。<ruby>日曜日<rt>にちようび</rt></ruby>ですので、<ruby>翌日<rt>よくじつ</rt></ruby>に<ruby>家族<rt>かぞく</rt></ruby>とゆっくり<ruby>電話<rt>でんわ</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng. Ngày 22 tháng 1 là Tết Việt Nam, Tết âm lịch. Vì là chủ nhật nên hôm sau em muốn được gọi điện thong thả với gia đình.)* |
| Tanaka | (gật đầu) なるほど。<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>はベトナムでは<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>な<ruby>祝日<rt>しゅくじつ</rt></ruby>ですね。<br>*(Ra vậy. Tết âm là ngày lễ quan trọng nhất ở Việt Nam nhỉ.)* |
| Thái | はい。<ruby>家族<rt>かぞく</rt></ruby>みんなが<ruby>集<rt>あつ</rt></ruby>まる<ruby>日<rt>ひ</rt></ruby>です。<br>*(Vâng. Là ngày cả gia đình tụ họp ạ.)* |
| Tanaka | もちろん<ruby>承認<rt>しょうにん</rt></ruby>します。<ruby>当社<rt>とうしゃ</rt></ruby>はベトナム<ruby>人<rt>じん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>を<ruby>尊重<rt>そんちょう</rt></ruby>しますから。<ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>総務<rt>そうむ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>してください。<br>*(Tất nhiên tôi duyệt. Công ty mình tôn trọng văn hoá của nhân viên Việt Nam mà. Em nộp đơn xin nghỉ lên phòng hành chính nhé.)* |
| Thái | (cúi đầu sâu, mắt cay) ありがとうございます。<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Em cảm ơn ông. Em vô cùng biết ơn ạ.)* |
| Tanaka | いえいえ。<ruby>家族<rt>かぞく</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしてくださいね。<br>*(Không có gì. Em hãy trân trọng gia đình nhé.)* |
| Thái | はい、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em xin phép ạ.)* |

---

## Tình huống 7 — Phòng tổng vụ · 9:15 ngày 5/1, nộp đơn xin nghỉ phép — hỏi lại thủ tục

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>総務<rt>そうむ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>の<ruby>用紙<rt>ようし</rt></ruby>をいただけますか？<br>*(Em xin phép. Anh/chị phòng hành chính, cho em xin tờ đơn xin nghỉ phép được không ạ?)* |
| Nhân viên tổng vụ | はい、こちらです。<ruby>記入例<rt>きにゅうれい</rt></ruby>もありますよ。<br>*(Vâng, đây ạ. Có cả ví dụ điền mẫu nữa.)* |
| Thái | ありがとうございます。すみません、「<ruby>記入例<rt>きにゅうれい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Em cảm ơn. Xin lỗi, "kinyuurei" nghĩa là gì ạ?)* |
| Nhân viên tổng vụ | <ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>のサンプルのことです。これを<ruby>見<rt>み</rt></ruby>ながら<ruby>書<rt>か</rt></ruby>けば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Là mẫu cách điền. Em vừa nhìn cái này vừa điền là được.)* |
| Thái | (đọc mẫu) <ruby>取得日<rt>しゅとくび</rt></ruby>...<ruby>取得日<rt>しゅとくび</rt></ruby>というのは<ruby>休<rt>やす</rt></ruby>む<ruby>日<rt>ひ</rt></ruby>のことですか？<br>*(Shutokubi... ngày shutokubi nghĩa là ngày nghỉ ạ?)* |
| Nhân viên tổng vụ | はい、そうです。<ruby>休<rt>やす</rt></ruby>む<ruby>日付<rt>ひづけ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Vâng, đúng vậy. Em điền ngày tháng nghỉ vào đó.)* |
| Thái | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>理由<rt>りゆう</rt></ruby>は「<ruby>家族<rt>かぞく</rt></ruby>の<ruby>祝日<rt>しゅくじつ</rt></ruby>(ベトナムの<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>)」と<ruby>書<rt>か</rt></ruby>いてもいいですか？<br>*(Ngày 23/1, lý do em ghi là "ngày lễ gia đình (Tết âm Việt Nam)" được không ạ?)* |
| Nhân viên tổng vụ | はい、それで<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>工場長<rt>こうじょうちょう</rt></ruby>のハンコをもらってから<ruby>戻<rt>もど</rt></ruby>してくださいね。<br>*(Vâng, vậy được rồi. Em xin con dấu của trưởng nhà máy rồi nộp lại nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Vâng, em rõ. Em cảm ơn ạ.)* |

---

## Tình huống 8 — Phòng 201 · 21:00 ngày 5/1, gọi báo Mai (cảnh tiếng Việt)

> Cảnh tiếng Việt — Thái báo tin vui cho người yêu.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi sao tối nay anh gọi sớm thế? |
| Thái | (tiếng Việt) Anh báo em tin vui. Sếp Tanaka đồng ý cho anh nghỉ phép thứ hai 23/1 rồi. |
| Mai | (tiếng Việt) Thật hả anh?! Cả ngày luôn? |
| Thái | (tiếng Việt) Ừ, cả ngày. Sếp còn bảo công ty tôn trọng văn hoá nhân viên Việt Nam. Anh xúc động lắm. |
| Mai | (tiếng Việt) Trời, sếp tốt quá. Anh có nói cảm ơn không? |
| Thái | (tiếng Việt) Có. Anh dùng câu 感謝いたします (kansha itashimasu) — câu khiêm nhường nhất khi cảm ơn cấp trên. Chị Linh dạy anh từ Mùng 3. |
| Mai | (tiếng Việt) Anh giờ nói tiếng Nhật giỏi lên hẳn. |
| Thái | (tiếng Việt) Cố em ạ. Mà thứ hai 23 anh ở nhà cả ngày, em với mẹ tha hồ gọi anh nhé. Em mặc áo dài chụp ảnh anh xem nha. |
| Mai | (tiếng Việt, cười) Vâng. Em đang may áo dài đỏ. Đến Tết là vừa. |
| Thái | (tiếng Việt) Anh mong lắm. |

---

## Tình huống 9 — Phòng 201 · 9:00 ngày 22/1, Tết Việt — gọi video cả nhà (cảnh tiếng Việt)

> Cảnh tiếng Việt — Mùng 1 Tết âm, Thái gọi video về quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, mở video, mặc áo sơ mi tử tế) Mẹ! Bố! Mai! Chúc mừng năm mới ạ! Chúc cả nhà bình an, sức khoẻ, vạn sự như ý! |
| Mẹ Thái | (tiếng Việt, xúc động) Thái! Con ăn mặc gọn gàng quá. Mẹ tưởng con bên đó đi làm cơ. |
| Thái | (tiếng Việt) Sếp Tanaka cho con nghỉ cả thứ hai mai luôn mẹ ạ. Hôm nay con rảnh cả ngày. |
| Bố Thái | (tiếng Việt) Tốt quá! Sếp Nhật mà tâm lý thế là quý lắm. Con phải làm việc đáp lại cho xứng. |
| Mai | (tiếng Việt, vào khung hình, mặc áo dài đỏ thêu hoa) Anh! Em đến chúc Tết nhà mình đây. |
| Thái | (tiếng Việt, ngẩn ra một giây) ...Mai. Áo dài đẹp quá. |
| Mai | (tiếng Việt, đỏ mặt) Anh chỉ khéo nịnh. |
| Mẹ Thái | (tiếng Việt) Hai đứa cứ đùn cho nhau. Mẹ bày mâm cơm tất niên rồi đây, con xem này. Bánh chưng, giò, nem, canh măng đủ cả. |
| Thái | (tiếng Việt, gạt nước mắt) Con thèm bánh chưng quá mẹ ơi. Bên này không có. Sang năm con về Tết một tuần được không mẹ? |
| Mẹ Thái | (tiếng Việt) Được chứ. Mẹ đợi cả năm rồi. |
| Mai | (tiếng Việt) Em cũng đợi. |

---

## Tình huống 10 — Phòng 201 · 23:30 ngày 22/1, tổng kết một mình (cảnh tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, viết nhật ký) 22/1/2023, Mùng 1 Tết Việt — cái Tết xa nhà đầu tiên. |
| Thái | (tiếng Việt) Bài học hôm nay: ở Nhật xin nghỉ phải đúng cách. 「<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきたいのですが」 — câu này phải nhớ. |
| Thái | (tiếng Việt) Sếp Tanaka không hỏi nhiều, chỉ hỏi lý do — nói thật, ngắn gọn, lịch sự. Người Nhật đánh giá cao thái độ. |
| Thái | (tiếng Việt) Chị Linh dạy anh 感謝いたします thay vì ありがとうございます khi cảm ơn cấp trên ở chuyện quan trọng. Khác nhau ở mức trang trọng. |
| Thái | (tiếng Việt) Anh Sakurai dạy anh từ おせち, 重箱, 記入例. Mỗi câu hỏi lại "〜というのは何ですか" là một từ vựng mới. |
| Thái | (tiếng Việt) Tết Việt xa nhà — cô đơn thật, nhưng có chị Linh nấu phở, có sếp Tanaka cho nghỉ, có Mai mặc áo dài qua màn hình. Năm thứ hai sẽ dễ hơn. |
| Thái | <ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em sẽ cố lên.)* |

---

## Đọng lại chương 9

Cái Tết đầu tiên xa nhà cho Thái một bộ mẫu câu hội thoại quan trọng quanh dịp lễ ở công ty Nhật. Trước hết là **lời chúc năm mới chuẩn mực** (**明けましておめでとうございます**・**本年もよろしくお願いいたします**) — dùng cả khi nhắn tin sáng Mùng 1 cho người Việt quen lẫn khi đứng nghiêm ở 朝礼 đầu năm. Tiếp đến là **mẫu câu xin nghỉ phép có lương lịch sự với cấp trên** (**有給休暇を1日取らせていただきたいのですが、よろしいでしょうか**) — phải trình bày lý do ngắn gọn, thành thật (旧正月・家族の祝日), và **cảm ơn ở mức trang trọng nhất khi xúc động** (**感謝いたします** thay cho ありがとうございます). Thái cũng học được kỹ năng **hỏi lại từ vựng phong tục** (**〜というのは何ですか** với おせち・重箱・記入例・取得日) — mỗi câu hỏi là một từ mới ghi vào sổ. Cuối cùng, cảnh tiếng Việt với chị Linh và gia đình cho Thái niềm an ủi: ở Nhật vẫn có **cộng đồng đồng hương** (フォー・ベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>姉<rt>あね</rt></ruby>さん) và những người Nhật **tôn trọng văn hoá nước khác** (<ruby>尊重<rt>そんちょう</rt></ruby>) như sếp Tanaka và đàn anh Sakurai.

> Từ vựng & mẫu câu chương này: 元日・お正月・明けましておめでとうございます・本年もよろしくお願いいたします・おせち料理・重箱・有給休暇・取らせていただきたいのですが・取得日・記入例・申請書・総務・承認・旧正月・テト・祝日・尊重・感謝いたします・〜というのは何ですか・ご相談があります・失礼いたします・淋しい・家族を大切に・フォー

## Bí quyết chương

- **Tanaka cho phép nghỉ Tết Việt**: Tình tiết đặc trưng — công ty Nhật tử tế, tạo niềm tin lâu dài cho Thái.
- **Linh nấu phở + dạy mẫu câu**: Cộng đồng Việt vừa bắc cầu cô đơn, vừa truyền lại kinh nghiệm xin phép kiểu Nhật.
- **Sakurai mời ăn osechi sang năm**: Mở rộng quan hệ đàn anh — kết quả ở các sách sau.
- **Mai mặc áo dài đỏ qua video**: Cảnh đặc trưng bạn gái — lặp xuyên 5 sách.
- **Mạch năm 2**: Sang năm sẽ về Tết 1 tuần — neo mạch cho sách 15.

> *"Tết Việt xa nhà lần đầu. Sếp Tanaka cho nghỉ. Học được câu 感謝いたします. Năm mới bắt đầu."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 今年 | ことし | KIM NIÊN | năm nay |
| 願い | ねがい | NGUYỆN | nguyện vọng, nhờ vả |
| 元日 | がんじつ | NGUYÊN NHẬT | ngày Mùng 1 Tết Nhật |
| 正月 | しょうがつ | CHÍNH NGUYỆT | năm mới, Tết Nhật |
| 実家 | じっか | THỰC GIA | nhà bố mẹ đẻ, quê |
| 伺う | うかがう | TỨ | thăm, hỏi (khiêm nhường) |
| 本当 | ほんとう | BẢN ĐƯƠNG | thật, thật sự |
| 美味しい | おいしい | MỸ VỊ | ngon |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | phép có lương |
| 本年 | ほんねん | BẢN NIÊN | năm nay (trang trọng) |
| 納期 | のうき | NẠP KỲ | thời hạn giao hàng |
| 馳走 | ちそう | TRÌ TẨU | đãi đằng, mời ăn |
| 淋しい | さびしい | LÂM | cô đơn, buồn |
| 家族 | かぞく | GIA TỘC | gia đình |
| 通話 | つうわ | THÔNG THOẠI | gọi điện |
| 日曜日 | にちようび | NHẬT DIỆU NHẬT | chủ nhật |
| 伝統的 | でんとうてき | TRUYỀN THỐNG ĐÍCH | mang tính truyền thống |
| 重箱 | じゅうばこ | TRÙNG TƯƠNG | hộp xếp nhiều tầng |
| 四角い | しかくい | TỨ GIÁC | hình vuông |
| 事前 | じぜん | SỰ TIỀN | trước khi, trước đó |
| 理由 | りゆう | LÝ DO | lý do |
| 旧正月 | きゅうしょうがつ | CỰU CHÍNH NGUYỆT | Tết âm lịch |
| 翌日 | よくじつ | DỰC NHẬT | ngày hôm sau |
| 一番 | いちばん | NHẤT PHIÊN | nhất, số một |
| 大切 | たいせつ | ĐẠI THIẾT | quan trọng, trân trọng |
| 祝日 | しゅくじつ | CHÚC NHẬT | ngày lễ |
| 承認 | しょうにん | THỪA NHẬN | duyệt, phê chuẩn |
| 尊重 | そんちょう | TÔN TRỌNG | tôn trọng |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | đơn xin |
| 総務 | そうむ | TỔNG VỤ | hành chính tổng vụ |
| 申請 | しんせい | THÂN THỈNH | đăng ký, xin |
| 記入例 | きにゅうれい | KÝ NHẬP LỆ | mẫu điền |
| 取得日 | しゅとくび | THỦ ĐẮC NHẬT | ngày lấy phép |
| 日付 | ひづけ | NHẬT PHÓ | ngày tháng |
| 結構 | けっこう | KẾT CẤU | được, đủ |
| 頑張る | がんばる | NGOAN TRƯƠNG | cố gắng |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000010, 800000014, NULL, 'markdown_book', 'T10. Nhập môn CAD — học SolidWorks ngoài giờ (CAD入門)', '# Sách kỹ sư khuôn đúc · T10. Nhập môn CAD — học SolidWorks ngoài giờ (CAD入門)

> **Mục tiêu nhân vật:** Thái (23 tuổi, Hà Nội) được Kawakami 課長 kèm CAD 1 tiếng/ngày sau giờ làm tại 設計室. Học các mẫu hội thoại tiếng Nhật ngữ cảnh học chuyên ngành thiết kế khuôn: chào hỏi cấp trên khi vào phòng thiết kế, nhận chỉ dẫn thao tác phần mềm theo từng bước (新規パーツ・スケッチ・押し出し), hỏi lại lễ phép khi gặp thuật ngữ chuyên ngành (フィレット・入れ子), xác nhận chỉ dẫn của cấp trên bằng `〜ということですね`, hỏi lý do nguyên tắc thiết kế (なぜ〜ですか), và báo cáo tiến độ cuối tuần (〜が完成しました).

---

## Bối cảnh

Tháng 2 năm 2023. Thái vào làm tại **株式会社みなみ精密金型** ở Anjo, Aichi được 9 tháng — vừa kết thúc giai đoạn 現場研修. Trưởng nhà máy Tanaka quyết định cho Thái dùng 1 tiếng (17:30–18:30) sau giờ làm để học CAD tại 設計室, dưới sự kèm cặp của 川上 (Kawakami) 課長. Trình độ tiếng Nhật N4 (đang ôn N3). Chương này tập trung các mẫu câu giao tiếp khi học thiết kế CAD: nghe chỉ dẫn thao tác SolidWorks, hỏi lại thuật ngữ chuyên ngành, hỏi lý do nguyên tắc, báo cáo tiến độ với cấp trên.

---

## Tình huống 1 — 設計室 · 17:30, chào hỏi cấp trên khi vào phòng thiết kế

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来<rt>き</rt></ruby>たね。<ruby>磨<rt>みが</rt></ruby>き<ruby>場<rt>ば</rt></ruby>から<ruby>直接<rt>ちょくせつ</rt></ruby>？<br>*(Thái, đến rồi. Từ chỗ mài bóng đi thẳng đến đây à?)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, Kawakami trưởng phòng. Anh vất vả rồi. Em xin phép vào ạ.)* |
| Kawakami | <ruby>今日<rt>きょう</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、ここでCADを<ruby>勉強<rt>べんきょう</rt></ruby>するんだ。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いてるよね？<br>*(Từ hôm nay mỗi ngày 1 tiếng, học CAD ở đây. Trưởng nhà máy Tanaka đã nói với em rồi nhỉ?)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em đã rõ ạ. Mong anh chỉ bảo ạ.)* |
| Kawakami | （PCを<ruby>指<rt>ゆび</rt></ruby>す）これがSolidWorks。<ruby>金型<rt>かながた</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>使<rt>つか</rt></ruby>われている3D CADだよ。<br>*(Chỉ máy tính. Đây là SolidWorks. CAD 3D được dùng nhiều nhất trong ngành khuôn.)* |
| Thái | はい、<ruby>大学<rt>だいがく</rt></ruby>でも<ruby>名前<rt>なまえ</rt></ruby>だけは<ruby>聞<rt>き</rt></ruby>いたことがあります。<br>*(Vâng, ở đại học em cũng đã nghe tên rồi ạ.)* |
| Kawakami | では<ruby>座<rt>すわ</rt></ruby>って。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>はチュートリアルだ。エジェクタピンを<ruby>作<rt>つく</rt></ruby>ってみよう。<br>*(Vậy ngồi xuống. Tuần đầu là hướng dẫn cơ bản. Mình thử vẽ chốt đẩy.)* |
| Thái | エジェクタピン...すみません、それは「Eピン」のことですか？<br>*(Chốt đẩy... Xin lỗi, đó có phải "E-pin" không ạ?)* |
| Kawakami | そう、よく<ruby>知<rt>し</rt></ruby>ってるね。<ruby>金型<rt>かながた</rt></ruby>の<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby>で、<ruby>成形品<rt>せいけいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>すピンのことだ。<br>*(Đúng, em biết rõ nhỉ. Là linh kiện chuẩn của khuôn, dùng để đẩy sản phẩm đã đúc ra khỏi khuôn.)* |
| Thái | <ruby>現場<rt>げんば</rt></ruby>で<ruby>磨<rt>みが</rt></ruby>いていたあのピンですね。<br>*(Là loại chốt em đã mài ở hiện trường ạ.)* |

---

## Tình huống 2 — 設計室 · 17:45, nhận chỉ dẫn thao tác SolidWorks từng bước

| Vai | Lời thoại |
|---|---|
| Kawakami | では<ruby>始<rt>はじ</rt></ruby>めよう。まず「<ruby>新規<rt>しんき</rt></ruby>パーツ」を<ruby>開<rt>ひら</rt></ruby>いて。<br>*(Vậy bắt đầu nhé. Trước tiên mở "Chi tiết mới".)* |
| Thái | （クリックする）はい、<ruby>開<rt>ひら</rt></ruby>きました。<br>*(Bấm chuột. Vâng, đã mở rồi ạ.)* |
| Kawakami | <ruby>次<rt>つぎ</rt></ruby>に「<ruby>正面図<rt>しょうめんず</rt></ruby>」を<ruby>選<rt>えら</rt></ruby>んで、スケッチを<ruby>始<rt>はじ</rt></ruby>める。<br>*(Tiếp theo chọn "Mặt phẳng trước", bắt đầu phác thảo.)* |
| Thái | <ruby>正面図<rt>しょうめんず</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでスケッチ、ということですね。<br>*(Chọn mặt phẳng trước rồi phác thảo, đúng không ạ?)* |
| Kawakami | そうそう。<ruby>円<rt>えん</rt></ruby>ツールを<ruby>選<rt>えら</rt></ruby>んで、<ruby>原点<rt>げんてん</rt></ruby>に<ruby>円<rt>えん</rt></ruby>を<ruby>描<rt>か</rt></ruby>いて。<br>*(Đúng đúng. Chọn công cụ vẽ tròn, vẽ hình tròn ở gốc toạ độ.)* |
| Thái | （<ruby>描<rt>か</rt></ruby>く）<ruby>描<rt>か</rt></ruby>けました。<br>*(Vẽ. Em vẽ được rồi ạ.)* |
| Kawakami | スマートディメンションで<ruby>直径<rt>ちょっけい</rt></ruby><ruby>5<rt>ご</rt></ruby>mmを<ruby>入<rt>い</rt></ruby>れて。<br>*(Dùng Smart Dimension, nhập đường kính 5mm.)* |
| Thái | すみません、「スマートディメンション」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi anh, "Smart Dimension" là gì ạ?)* |
| Kawakami | <ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>入<rt>い</rt></ruby>れるツールだよ。この<ruby>定規<rt>じょうぎ</rt></ruby>のアイコン。<br>*(Là công cụ nhập kích thước. Cái biểu tượng cây thước này.)* |
| Thái | あ、<ruby>分<rt>わ</rt></ruby>かりました。（<ruby>入<rt>い</rt></ruby>れる）<ruby>5<rt>ご</rt></ruby>mm<ruby>入<rt>い</rt></ruby>れました。<br>*(À, em hiểu rồi. Nhập. Em đã nhập 5mm.)* |
| Kawakami | スケッチを<ruby>終了<rt>しゅうりょう</rt></ruby>して、「<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>し」で<ruby>50<rt>ごじゅう</rt></ruby>mm。<br>*(Hoàn tất phác thảo, dùng "Extrude" đùn 50mm.)* |
| Thái | （<ruby>操作<rt>そうさ</rt></ruby>する、<ruby>3D<rt>サンディー</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>される）わあ、<ruby>3D<rt>サンディー</rt></ruby>になりました！<br>*(Thao tác, hình 3D hiện ra. Ồ, thành 3D rồi ạ!)* |
| Kawakami | これがタイ<ruby>君<rt>くん</rt></ruby>の<ruby>初<rt>はじ</rt></ruby>めての<ruby>3D<rt>サンディー</rt></ruby>パーツだね。<br>*(Đây là chi tiết 3D đầu tiên của em đấy.)* |
| Thái | はい！<ruby>感動<rt>かんどう</rt></ruby>しました。ありがとうございます。<br>*(Vâng! Em cảm động quá. Em cảm ơn anh ạ.)* |

---

## Tình huống 3 — 設計室 · 18:00, hỏi lý do nguyên tắc thiết kế (フィレット & 応力集中)

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>次<rt>つぎ</rt></ruby>は<ruby>頭<rt>あたま</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>する。<ruby>直径<rt>ちょっけい</rt></ruby><ruby>10<rt>じゅう</rt></ruby>mm、<ruby>高<rt>たか</rt></ruby>さ<ruby>5<rt>ご</rt></ruby>mmだ。<br>*(Tiếp theo thêm phần đầu. Đường kính 10mm, cao 5mm.)* |
| Thái | はい、<ruby>同<rt>おな</rt></ruby>じやり<ruby>方<rt>かた</rt></ruby>でいいですか？<br>*(Vâng, làm cùng cách được ạ?)* |
| Kawakami | そう、<ruby>同<rt>おな</rt></ruby>じ。スケッチ→<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>し。<br>*(Đúng, cùng cách. Phác thảo → đùn.)* |
| Thái | （<ruby>操作<rt>そうさ</rt></ruby>する）できました。<br>*(Thao tác. Xong rồi ạ.)* |
| Kawakami | いいね。<ruby>最後<rt>さいご</rt></ruby>に<ruby>頭<rt>あたま</rt></ruby>と<ruby>軸<rt>じく</rt></ruby>の<ruby>角<rt>かど</rt></ruby>にフィレットを<ruby>1<rt>いち</rt></ruby>mm<ruby>付<rt>つ</rt></ruby>けて。<br>*(Tốt. Cuối cùng bo góc 1mm ở chỗ tiếp giáp giữa đầu và thân.)* |
| Thái | すみません、「フィレット」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi anh, "fillet" nghĩa là gì ạ?)* |
| Kawakami | <ruby>角<rt>かど</rt></ruby>を<ruby>丸<rt>まる</rt></ruby>くすることだよ。<br>*(Là bo tròn cạnh đó.)* |
| Thái | なぜ<ruby>角<rt>かど</rt></ruby>を<ruby>丸<rt>まる</rt></ruby>くするんですか？<br>*(Vì sao phải bo tròn cạnh ạ?)* |
| Kawakami | いい<ruby>質問<rt>しつもん</rt></ruby>だ。<ruby>角<rt>かど</rt></ruby>がそのままだと、そこに<ruby>応力<rt>おうりょく</rt></ruby>が<ruby>集中<rt>しゅうちゅう</rt></ruby>して<ruby>割<rt>わ</rt></ruby>れやすくなる。<br>*(Câu hỏi hay đấy. Nếu để cạnh sắc, ứng suất sẽ tập trung vào đó nên dễ nứt vỡ.)* |
| Thái | あ、<ruby>応力集中<rt>おうりょくしゅうちゅう</rt></ruby>ですね！<ruby>大学<rt>だいがく</rt></ruby>の<ruby>材料力学<rt>ざいりょうりきがく</rt></ruby>で<ruby>習<rt>なら</rt></ruby>いました。<br>*(À, là tập trung ứng suất ạ! Em đã học ở môn sức bền vật liệu ở đại học.)* |
| Kawakami | おお、<ruby>知<rt>し</rt></ruby>っているね。<ruby>機械<rt>きかい</rt></ruby><ruby>工学<rt>こうがく</rt></ruby>の<ruby>基礎<rt>きそ</rt></ruby>だ。CADで<ruby>図面<rt>ずめん</rt></ruby>を<ruby>描<rt>か</rt></ruby>くときに、その<ruby>知識<rt>ちしき</rt></ruby>が<ruby>必<rt>かなら</rt></ruby>ず<ruby>役立<rt>やくだ</rt></ruby>つよ。<br>*(Ồ, em biết nhỉ. Là nền tảng cơ khí đấy. Khi vẽ bằng CAD, kiến thức đó nhất định có ích.)* |
| Thái | はい、<ruby>教科書<rt>きょうかしょ</rt></ruby>の<ruby>理論<rt>りろん</rt></ruby>が<ruby>実際<rt>じっさい</rt></ruby>に<ruby>使<rt>つか</rt></ruby>えるのは<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng, được dùng lý thuyết sách giáo khoa vào thực tế thì vui ạ.)* |

---

## Tình huống 4 — 設計室 · 18:15, nghe giải thích về linh kiện chuẩn ミスミ (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Kawakami | （<ruby>分厚<rt>ぶあつ</rt></ruby>いカタログを<ruby>出<rt>だ</rt></ruby>す）これがミスミの<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby>カタログだ。<br>*(Lấy quyển danh mục dày. Đây là danh mục linh kiện chuẩn của Misumi.)* |
| Thái | わあ、<ruby>分厚<rt>ぶあつ</rt></ruby>いですね！<br>*(Ồ, dày quá!)* |
| Kawakami | この<ruby>1<rt>いっ</rt></ruby><ruby>冊<rt>さつ</rt></ruby>に<ruby>金型<rt>かながた</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>常識<rt>じょうしき</rt></ruby>が<ruby>全<rt>すべ</rt></ruby>て<ruby>入<rt>はい</rt></ruby>っている。エジェクタピンも<ruby>各<rt>かく</rt></ruby>サイズ<ruby>揃<rt>そろ</rt></ruby>っているよ。<br>*(Trong quyển này có toàn bộ kiến thức cơ bản của ngành khuôn. Chốt đẩy có đủ mọi kích thước.)* |
| Thái | <ruby>質問<rt>しつもん</rt></ruby>してもいいですか？なぜ<ruby>標準品<rt>ひょうじゅんひん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですか？<ruby>自分<rt>じぶん</rt></ruby>で<ruby>設計<rt>せっけい</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいような<ruby>気<rt>き</rt></ruby>がします。<br>*(Em hỏi được không ạ? Vì sao lại dùng linh kiện chuẩn ạ? Em cảm thấy tự thiết kế thì có vẻ hay hơn.)* |
| Kawakami | いい<ruby>疑問<rt>ぎもん</rt></ruby>だ。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つある。<ruby>一<rt>いち</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby>が<ruby>早<rt>はや</rt></ruby>い。<ruby>二<rt>に</rt></ruby>、コストが<ruby>安<rt>やす</rt></ruby>い。<ruby>三<rt>さん</rt></ruby>、<ruby>互換性<rt>ごかんせい</rt></ruby>がある。<br>*(Thắc mắc hay đấy. Có ba lý do. Một, giao hàng nhanh. Hai, giá rẻ. Ba, có tính tương thích.)* |
| Thái | <ruby>納期<rt>のうき</rt></ruby>・コスト・<ruby>互換性<rt>ごかんせい</rt></ruby>ですね。メモします。<br>*(Thời gian giao - chi phí - tính tương thích ạ. Em ghi lại.)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>の<ruby>80<rt>はちじゅう</rt></ruby>パーセントは<ruby>標準品<rt>ひょうじゅんひん</rt></ruby>の<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせなんだよ。<br>*(80% thiết kế khuôn là tổ hợp các linh kiện chuẩn đấy.)* |
| Thái | <ruby>残<rt>のこ</rt></ruby>りの<ruby>20<rt>にじゅう</rt></ruby>パーセントは<ruby>独自<rt>どくじ</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>、ということですね。<br>*(20% còn lại là phần riêng, đúng không ạ?)* |
| Kawakami | そう。そして、その<ruby>独自<rt>どくじ</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>こそが<ruby>設計者<rt>せっけいしゃ</rt></ruby>の<ruby>腕<rt>うで</rt></ruby>の<ruby>見<rt>み</rt></ruby>せどころだ。<br>*(Đúng. Và chính phần riêng đó là chỗ thể hiện tay nghề của người thiết kế.)* |
| Thái | （メモする）<ruby>独自<rt>どくじ</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>こそ<ruby>設計者<rt>せっけいしゃ</rt></ruby>の<ruby>腕<rt>うで</rt></ruby>の<ruby>見<rt>み</rt></ruby>せどころ...いい<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Ghi chép. Phần riêng chính là chỗ thể hiện tay nghề... câu nói hay quá ạ.)* |

---

## Tình huống 5 — 設計室 · 18:30 một tuần sau, báo cáo tiến độ với cấp trên

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>経<rt>た</rt></ruby>ったね。エジェクタピンの<ruby>進捗<rt>しんちょく</rt></ruby>はどう？<br>*(Thái, đã một tuần rồi nhỉ. Tiến độ chốt đẩy thế nào?)* |
| Thái | はい、<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>違<rt>ちが</rt></ruby>うサイズで<ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>完成<rt>かんせい</rt></ruby>しました。<br>*(Vâng, em xin báo cáo. Em đã hoàn thành 10 cái với các kích thước khác nhau.)* |
| Kawakami | <ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぼん</rt></ruby>も！<ruby>見<rt>み</rt></ruby>せて。<br>*(Tận 10 cái! Cho xem nào.)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる）こちらです。<ruby>直径<rt>ちょっけい</rt></ruby><ruby>3<rt>さん</rt></ruby>mmから<ruby>8<rt>はち</rt></ruby>mmまで<ruby>作<rt>つく</rt></ruby>りました。<br>*(Cho xem màn hình. Đây ạ. Em làm từ đường kính 3mm đến 8mm.)* |
| Kawakami | （<ruby>確認<rt>かくにん</rt></ruby>する）<ruby>寸法<rt>すんぽう</rt></ruby>もいいね。フィレットも<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>付<rt>つ</rt></ruby>いている。<ruby>合格<rt>ごうかく</rt></ruby>だ。<br>*(Kiểm tra. Kích thước đẹp đấy. Fillet cũng đều có. Đạt yêu cầu.)* |
| Thái | ありがとうございます！<br>*(Em cảm ơn anh ạ!)* |
| Kawakami | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>次<rt>つぎ</rt></ruby>のレベルだ。「<ruby>入<rt>い</rt></ruby>れ<ruby>子<rt>こ</rt></ruby>」をやってみよう。<br>*(Tuần sau lên cấp tiếp theo. Mình thử làm "irekko".)* |
| Thái | すみません、「<ruby>入<rt>い</rt></ruby>れ<ruby>子<rt>こ</rt></ruby>」というのはどんな<ruby>部品<rt>ぶひん</rt></ruby>ですか？<br>*(Xin lỗi anh, "irekko" là linh kiện như thế nào ạ?)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>差<rt>さ</rt></ruby>し<ruby>替<rt>か</rt></ruby>えできるパーツのことだ。<ruby>形状<rt>けいじょう</rt></ruby>が<ruby>複雑<rt>ふくざつ</rt></ruby>だから、ピンより<ruby>難<rt>むずか</rt></ruby>しいよ。<br>*(Là chi tiết có thể tháo lắp thay thế bên trong khuôn. Hình dạng phức tạp nên khó hơn pin.)* |
| Thái | <ruby>差<rt>さ</rt></ruby>し<ruby>替<rt>か</rt></ruby>えできるパーツ、ということですね。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Là chi tiết tháo lắp thay được, đúng không ạ. Em sẽ cố gắng.)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>の<ruby>機械<rt>きかい</rt></ruby><ruby>工学<rt>こうがく</rt></ruby>の<ruby>基礎<rt>きそ</rt></ruby>が<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つはずだ。<br>*(Nền tảng cơ khí của em chắc chắn sẽ hữu ích.)* |

---

## Tình huống 6 — 設計室 · 18:45, Suzuki ghé qua hỏi thăm

| Vai | Lời thoại |
|---|---|
| Suzuki | （<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>室<rt>しつ</rt></ruby>から<ruby>顔<rt>かお</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>もCAD？<br>*(Ló mặt từ phòng hoàn thiện. Thái, hôm nay cũng CAD à?)* |
| Thái | はい、<ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Vâng, anh Suzuki, anh vất vả rồi ạ.)* |
| Suzuki | <ruby>朝<rt>あさ</rt></ruby>は<ruby>磨<rt>みが</rt></ruby>き<ruby>場<rt>ば</rt></ruby>、<ruby>夕方<rt>ゆうがた</rt></ruby>はCAD。<ruby>大変<rt>たいへん</rt></ruby>じゃないか？<br>*(Sáng ở phòng mài bóng, chiều CAD. Có vất không?)* |
| Thái | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>磨<rt>みが</rt></ruby>きの<ruby>経験<rt>けいけん</rt></ruby>がCADにも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>っています。<br>*(Em ổn ạ. Kinh nghiệm mài bóng cũng có ích cho CAD nữa.)* |
| Suzuki | へえ、どういうこと？<br>*(Ồ, thế nào?)* |
| Thái | <ruby>実際<rt>じっさい</rt></ruby>に<ruby>部品<rt>ぶひん</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>っているので、<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>たときに<ruby>形<rt>かたち</rt></ruby>が<ruby>頭<rt>あたま</rt></ruby>に<ruby>浮<rt>う</rt></ruby>かびます。<br>*(Vì em đã trực tiếp chạm vào linh kiện rồi, nên khi nhìn bản vẽ là hình dạng hiện lên trong đầu ạ.)* |
| Kawakami | （<ruby>横<rt>よこ</rt></ruby>から）いいね、それ。<ruby>現場<rt>げんば</rt></ruby>を<ruby>知<rt>し</rt></ruby>っている<ruby>設計者<rt>せっけいしゃ</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>いんだよ。<br>*(Xen vào. Hay đấy. Người thiết kế có biết hiện trường thì mạnh đấy.)* |
| Suzuki | <ruby>鈴木<rt>すずき</rt></ruby>も<ruby>若<rt>わか</rt></ruby>い<ruby>頃<rt>ころ</rt></ruby>はそうだった。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>れよ。<br>*(Hồi trẻ tôi cũng vậy. Thái, cố lên nhé.)* |
| Thái | はい、ありがとうございます！<br>*(Vâng, em cảm ơn anh ạ!)* |

---

## Tình huống 7 — 寮 phòng 201 · 21:00, Putra hỏi chuyện học CAD (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Putra | タイ、<ruby>今日<rt>きょう</rt></ruby>もCADの<ruby>勉強<rt>べんきょう</rt></ruby>？どうだった？<br>*(Thái, hôm nay cũng học CAD à? Thế nào?)* |
| Thái | <ruby>面白<rt>おもしろ</rt></ruby>かった！<ruby>今日<rt>きょう</rt></ruby>はフィレットを<ruby>習<rt>なら</rt></ruby>った。<br>*(Thú vị lắm! Hôm nay học fillet.)* |
| Putra | フィレットって<ruby>何<rt>なに</rt></ruby>？<br>*(Fillet là gì?)* |
| Thái | <ruby>角<rt>かど</rt></ruby>を<ruby>丸<rt>まる</rt></ruby>くすることだよ。<ruby>応力集中<rt>おうりょくしゅうちゅう</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けるため。<br>*(Là bo tròn cạnh. Để tránh tập trung ứng suất.)* |
| Putra | おう、<ruby>俺<rt>おれ</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>できるなんて、<ruby>成長<rt>せいちょう</rt></ruby>したね！<br>*(Ồ, giải thích được cho mình rồi, lớn lên rồi đấy!)* |
| Thái | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれるから。<br>*(Cười. Vì anh Kawakami chỉ rất tận tình.)* |
| Putra | いいなあ。<ruby>俺<rt>おれ</rt></ruby>はSSW<ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>だからCADの<ruby>機会<rt>きかい</rt></ruby>はないんだ。<br>*(Tốt quá. Mình SSW1 nên không có cơ hội học CAD.)* |
| Thái | （<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>なさそうに）すみません...<br>*(Vẻ áy náy. Xin lỗi...)* |
| Putra | <ruby>謝<rt>あやま</rt></ruby>らないで。<ruby>俺<rt>おれ</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>インドネシアに<ruby>帰<rt>かえ</rt></ruby>って<ruby>金型<rt>かながた</rt></ruby><ruby>修理<rt>しゅうり</rt></ruby>サービスの<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るんだ。<ruby>道<rt>みち</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うだけ。<br>*(Đừng xin lỗi. 5 năm nữa mình về Indo lập công ty dịch vụ sửa khuôn. Chỉ là khác đường thôi.)* |
| Thái | プトラさんは<ruby>夢<rt>ゆめ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいね。<br>*(Anh Putra ước mơ lớn nhỉ.)* |
| Putra | お<ruby>互<rt>たが</rt></ruby>い、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>を<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Cả hai cùng cố gắng trên con đường của mình.)* |
| Thái | はい！<br>*(Vâng!)* |

---

## Tình huống 8 — 寮 phòng 201 · 22:30, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP học trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay học CAD thế nào? |
| Thái | (tiếng Việt) Vui lắm em. Tuần đầu anh vẽ được 10 cái エジェクタピン — chốt đẩy ấy. Anh Kawakami bảo đạt yêu cầu rồi. |
| Mai | (tiếng Việt) Hay quá! Tiếng Nhật chuyên ngành có khó không anh? |
| Thái | (tiếng Việt) Khó chứ. Hôm nay anh học mấy từ mới: フィレット là bo góc, 応力集中 là tập trung ứng suất, 入れ子 là chi tiết tháo lắp thay được trong khuôn. Anh hỏi lại bằng "〜というのは？" miết. |
| Mai | (tiếng Việt) Em không hiểu hết nhưng nghe anh nói say sưa em mừng. |
| Thái | (tiếng Việt) Anh Kawakami có câu hay lắm: "独自部分こそ設計者の腕の見せどころ" — phần riêng mới là chỗ thể hiện tay nghề người thiết kế. Anh ghi vào sổ rồi. |
| Mai | (tiếng Việt) Anh chép câu đó ra giấy dán bàn đi. |
| Thái | (tiếng Việt) Ừ, anh làm rồi. Tuần sau học 入れ子 — khó hơn. Còn em, ôn thi N3 đến đâu? |
| Mai | (tiếng Việt) Em đang ôn 文法. Cuối năm em với anh cùng thi 12/2023 nhé. |
| Thái | (tiếng Việt) Ừ, cùng thi. Mục tiêu 2024 của anh là 機械加工 2級 với N3. Phải đỗ cả hai. |
| Mai | (tiếng Việt) Em tin anh. Ngủ ngon nhé anh. |
| Thái | (tiếng Việt) Em cũng vậy. おやすみ. |

---

## Đọng lại chương 10

Tuần đầu vào 設計室, Thái học được nhịp giao tiếp khi được cấp trên kèm chuyên ngành: **chào hỏi khi vào phòng thiết kế** (失礼します・お疲れさまです), **nghe chỉ dẫn thao tác phần mềm từng bước** (新規パーツ → スケッチ → 押し出し), **hỏi lại lễ phép khi gặp thuật ngữ chuyên ngành** (〜というのは？・どんな部品ですか), **hỏi lý do nguyên tắc thiết kế** (なぜ〜ですか — học được rằng フィレット tránh **応力集中**), **xác nhận chỉ dẫn của cấp trên** (〜ということですね), và **báo cáo tiến độ cuối tuần** (〜が完成しました). Đồng thời Thái nhận ra nguyên tắc lớn của ngành khuôn: 80% là tổ hợp **標準品** (Misumi: 納期・コスト・互換性), 20% còn lại — **独自部分こそ設計者の腕の見せどころ** — chính là chỗ thể hiện tay nghề người thiết kế. Bài học lý thuyết 材料力学 ở đại học bắt đầu sống dậy trong từng nét vẽ SolidWorks.

> Từ vựng & mẫu câu chương này: 設計室・SolidWorks・新規パーツ・スケッチ・正面図・押し出し・スマートディメンション・寸法・直径・エジェクタピン・Eピン・フィレット・応力集中・材料力学・入れ子・標準部品・ミスミ・納期・コスト・互換性・独自部分・設計者・進捗・完成しました・〜というのは・〜ということですね・失礼します・よろしくお願いいたします

## Bí quyết chương

- **Tình tiết visa được hồi đáp**: "現場研修期間6〜9ヶ月（入管届出済み）" hết → CAD bắt đầu (T10 = tháng thứ 10 từ khi Thái sang).
- **Kawakami để ý chọn**: Chính thức vào lộ trình thiết kế. Mở mạch sách 16-18.
- **Thư viện chuẩn Misumi**: Quy tắc 80/20 — đặc trưng ngành khuôn.
- **Thái song song hai mảng**: Sáng mài bóng, tối CAD — biểu tượng giai đoạn chuyển tiếp.
- **Putra mơ kinh doanh**: Bạn cùng đợt khác hướng → tôn trọng lẫn nhau.

> *"SolidWorks tuần đầu. Vẽ 10 cái chốt đẩy. Sướng khi hình 3D hiện ra."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 磨き場 | みがきば | MA TRƯỜNG | xưởng mài bóng |
| 新規 | しんき | TÂN QUY | mới |
| 正面図 | しょうめんず | CHÍNH DIỆN ĐỒ | mặt phẳng trước |
| 原点 | げんてん | NGUYÊN ĐIỂM | gốc toạ độ |
| 円 | えん | VIÊN | hình tròn |
| 直径 | ちょっけい | TRỰC KÍNH | đường kính |
| 押し出し | おしだし | ÁP XUẤT | đùn, extrude |
| 操作 | そうさ | THAO TÁC | thao tác |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 感動 | かんどう | CẢM ĐỘNG | cảm động |
| 追加 | ついか | TRUI GIA | thêm vào |
| 軸 | じく | TRỤC | trục |
| 角 | かど | GIÁC | góc, cạnh |
| 応力集中 | おうりょくしゅうちゅう | ỨNG LỰC TẬP TRUNG | tập trung ứng suất |
| 材料力学 | ざいりょうりきがく | TÀI LIỆU LỰC HỌC | sức bền vật liệu |
| 基礎 | きそ | CƠ SỞ | nền tảng |
| 図面 | ずめん | ĐỒ DIỆN | bản vẽ |
| 知識 | ちしき | TRI THỨC | kiến thức |
| 役立つ | やくだつ | DỊCH LẬP | hữu ích |
| 教科書 | きょうかしょ | GIÁO KHOA THƯ | sách giáo khoa |
| 理論 | りろん | LÝ LUẬN | lý thuyết |
| 標準部品 | ひょうじゅんぶひん | TIÊU CHUẨN BỘ PHẨM | linh kiện chuẩn |
| 標準品 | ひょうじゅんひん | TIÊU CHUẨN PHẨM | hàng chuẩn |
| 成形品 | せいけいひん | THÀNH HÌNH PHẨM | sản phẩm đúc |
| 互換性 | ごかんせい | HỖ HOÁN TÍNH | tính tương thích |
| 独自 | どくじ | ĐỘC TỰ | riêng, độc lập |
| 設計者 | せっけいしゃ | THIẾT KẾ GIẢ | người thiết kế |
| 腕 | うで | UYỂN | tay nghề |
| 入れ子 | いれこ | NHẬP TỬ | chi tiết tháo lắp |
| 形状 | けいじょう | HÌNH TRẠNG | hình dạng |
| 複雑 | ふくざつ | PHỨC TẠP | phức tạp |
| 差し替え | さしかえ | SAI TÉ | thay đổi, tháo lắp |
| 完成 | かんせい | HOÀN THÀNH | hoàn thành |
| 現場 | げんば | HIỆN TRƯỜNG | hiện trường |
| 疑問 | ぎもん | NGHI VẤN | thắc mắc |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000011, 800000014, NULL, 'markdown_book', 'T11. Thi 機械加工 3 cấp — học mẫu câu kỳ thi tay nghề quốc gia (技能検定3級)', '# Sách kỹ sư khuôn đúc · T11. Thi 機械加工 3 cấp — học mẫu câu kỳ thi tay nghề quốc gia (技能検定3級)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) đi thi 機械加工技能士 3級 chuyên ngành フライス盤作業 tại 愛知県職業能力開発協会. Học các mẫu hội thoại tiếng Nhật quanh kỳ thi tay nghề quốc gia: nhận thông báo đăng ký từ 工場長 trong 朝礼, nhờ 先輩 dạy 過去問 và chia lịch ôn, hỏi lại công thức và thuật ngữ chuyên ngành (切削速度・送り・段取り) khi chưa hiểu, đối thoại với 試験官 trong phòng thi học科 và 実技, báo kết quả 合格 cho cấp trên và đồng nghiệp, và cảnh tiếng Việt báo gia đình + bạn gái + chị Linh đồng hương.

---

## Bối cảnh

Tháng 3 năm 2023. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo được 10 tháng, vừa qua kỳ đánh giá 6 tháng, đã làm 段取り phay được. Trình độ tiếng Nhật N4 chắc, đang ôn N3. 工場長 Tanaka đăng ký Thái thi 機械加工技能士 3級 — chứng chỉ tay nghề quốc gia đầu tiên — vào ngày 25/3 tại 愛知県職業能力開発協会 ở Anjo. 先輩 Sakurai thi 2級 cùng ngày. Chương này tập trung mẫu câu giao tiếp quanh kỳ thi nghề: nhận chỉ thị thi, nhờ đàn anh dạy, hỏi lại công thức chuyên ngành, đối thoại với 試験官, báo kết quả.

---

## Tình huống 1 — Phòng họp xưởng · 8:30 朝礼, 工場長 thông báo đăng ký thi tay nghề

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、おはようございます。<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chào mọi người buổi sáng. Bắt đầu họp đầu giờ.)* |
| Tanaka | <ruby>連絡事項<rt>れんらくじこう</rt></ruby>が<ruby>一<rt>ひと</rt></ruby>つあります。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてもらいます。<br>*(Có một thông báo. Anh Thái, ngày 25/3 sẽ đi thi 機械加工技能士 3級.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Vâng, em cảm ơn ạ. Mong ông chỉ bảo.)* |
| Tanaka | <ruby>会場<rt>かいじょう</rt></ruby>は<ruby>愛知県<rt>あいちけん</rt></ruby><ruby>職業能力開発<rt>しょくぎょうのうりょくかいはつ</rt></ruby><ruby>協会<rt>きょうかい</rt></ruby>です。<ruby>安城<rt>あんじょう</rt></ruby>から<ruby>車<rt>くるま</rt></ruby>で<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらいかかります。<br>*(Địa điểm là Hiệp hội phát triển năng lực nghề tỉnh Aichi. Từ Anjo đi xe khoảng 30 phút.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Tanaka | サクライ<ruby>君<rt>くん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<ruby>同<rt>おな</rt></ruby>じ<ruby>会場<rt>かいじょう</rt></ruby>なので<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってください。<br>*(Anh Sakurai cùng ngày thi 2級. Cùng địa điểm nên hai người đi cùng nhé.)* |
| Sakurai | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>俺<rt>おれ</rt></ruby>が<ruby>連<rt>つ</rt></ruby>れていきます。<br>*(Vâng, rõ rồi. Em sẽ đưa anh ấy đi.)* |
| Thái | サクライさん、ありがとうございます。とても<ruby>助<rt>たす</rt></ruby>かります。<br>*(Anh Sakurai, em cảm ơn anh. Em được giúp nhiều quá ạ.)* |
| Tanaka | <ruby>残<rt>のこ</rt></ruby>り<ruby>2<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>です。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>する<ruby>時間<rt>じかん</rt></ruby>をあげますから、しっかり<ruby>準備<rt>じゅんび</rt></ruby>してください。<br>*(Còn 2 tháng. Tôi cho thời gian luyện sau giờ làm, hãy chuẩn bị kỹ.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>するように<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng để chắc chắn đỗ ạ.)* |

---

## Tình huống 2 — Xưởng phay · 17:30, nhờ 先輩 Sakurai dạy 実技 và hỏi lại đề bài

| Vai | Lời thoại |
|---|---|
| Thái | サクライさん、すみません、ちょっとお<ruby>時間<rt>じかん</rt></ruby>いいですか?<br>*(Anh Sakurai, em xin lỗi, anh có chút thời gian không ạ?)* |
| Sakurai | おう、タイ<ruby>君<rt>くん</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>のことだろ?<br>*(Ừ, Thái. Chuyện chuẩn bị 3級 phải không?)* |
| Thái | はい。<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>はどんな<ruby>内容<rt>ないよう</rt></ruby>ですか?<br>*(Vâng. Thi thực hành có nội dung như thế nào ạ?)* |
| Sakurai | <ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>NCフライス<rt>エヌシーフライス</rt></ruby><ruby>盤<rt>ばん</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>で、<ruby>制限時間<rt>せいげんじかん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>だ。<ruby>50<rt>ごじゅう</rt></ruby>×<ruby>50<rt>ごじゅう</rt></ruby>×<ruby>20<rt>にじゅう</rt></ruby>ミリの<ruby>素材<rt>そざい</rt></ruby>から<ruby>指定<rt>してい</rt></ruby><ruby>形状<rt>けいじょう</rt></ruby>を<ruby>加工<rt>かこう</rt></ruby>する。<br>*(Thực hành 3級 là phay NC, giới hạn 2 tiếng. Từ phôi 50×50×20mm gia công ra hình chỉ định.)* |
| Thái | すみません、「<ruby>指定<rt>してい</rt></ruby><ruby>形状<rt>けいじょう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "hình chỉ định" nghĩa là gì ạ?)* |
| Sakurai | <ruby>当日<rt>とうじつ</rt></ruby><ruby>図面<rt>ずめん</rt></ruby>が<ruby>渡<rt>わた</rt></ruby>される。それを<ruby>見<rt>み</rt></ruby>てその<ruby>通<rt>とお</rt></ruby>りに<ruby>加工<rt>かこう</rt></ruby>するんだ。<br>*(Ngày thi sẽ được phát bản vẽ. Nhìn vẽ rồi gia công đúng như vậy.)* |
| Thái | なるほど、<ruby>図面<rt>ずめん</rt></ruby><ruby>通<rt>とお</rt></ruby>りに<ruby>加工<rt>かこう</rt></ruby>するということですね。<br>*(Ra vậy, gia công theo bản vẽ đúng không ạ.)* |
| Sakurai | そう。<ruby>過去問<rt>かこもん</rt></ruby>が<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>あるから、<ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>ずつ<ruby>練習<rt>れんしゅう</rt></ruby>しよう。（<ruby>過去問<rt>かこもん</rt></ruby>の<ruby>束<rt>たば</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<br>*(Đúng. Có đề 5 năm cũ, mỗi ngày luyện một bài đi. Đưa tập đề.)* |
| Thái | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>段差<rt>だんさ</rt></ruby>と<ruby>溝<rt>みぞ</rt></ruby>と<ruby>面取<rt>めんと</rt></ruby>りですね。すみません、「<ruby>面取<rt>めんと</rt></ruby>り」というのはどんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Nhìn bản vẽ. Có bậc, rãnh và mentori ạ. Xin lỗi, "mentori" nghĩa là gì ạ?)* |
| Sakurai | <ruby>角<rt>かど</rt></ruby>を<ruby>斜<rt>なな</rt></ruby>めに<ruby>削<rt>けず</rt></ruby>って、<ruby>怪我<rt>けが</rt></ruby>しないようにすることだ。<ruby>普段<rt>ふだん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>でもよくやってるだろ?<br>*(Vát cạnh nghiêng để không bị thương. Việc hàng ngày em vẫn làm đó.)* |
| Thái | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎日<rt>まいにち</rt></ruby><ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>から<ruby>練習<rt>れんしゅう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(À, em hiểu rồi. Mỗi ngày từ 17:30 em sẽ luyện. Mong anh giúp đỡ.)* |

---

## Tình huống 3 — Xưởng phay · 18:00, Sakurai làm mẫu 段取り và Thái quan sát đàn anh

| Vai | Lời thoại |
|---|---|
| Sakurai | じゃあ<ruby>俺<rt>おれ</rt></ruby>がまず<ruby>段取<rt>だんど</rt></ruby>りをやって<ruby>見<rt>み</rt></ruby>せる。よく<ruby>見<rt>み</rt></ruby>ていてくれ。<br>*(Vậy mình làm mẫu chuẩn bị trước. Em nhìn kỹ nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em mời anh ạ.)* |
| Sakurai | （<ruby>素材<rt>そざい</rt></ruby>をバイスに<ruby>固定<rt>こてい</rt></ruby>する）まず<ruby>素材<rt>そざい</rt></ruby>を<ruby>水平<rt>すいへい</rt></ruby>に<ruby>固定<rt>こてい</rt></ruby>する。ここがズレると<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>失敗<rt>しっぱい</rt></ruby>だ。<br>*(Cố định phôi vào ê-tô. Trước hết cố định phôi thật ngang. Chỗ này lệch là hỏng hết.)* |
| Thái | <ruby>水平<rt>すいへい</rt></ruby>かどうかはどう<ruby>確認<rt>かくにん</rt></ruby>しますか?<br>*(Kiểm tra ngang thế nào ạ?)* |
| Sakurai | ダイヤルゲージで<ruby>0.01<rt>れいてんれいいち</rt></ruby>ミリ<ruby>以内<rt>いない</rt></ruby>に<ruby>追<rt>お</rt></ruby>い<ruby>込<rt>こ</rt></ruby>む。<ruby>試験<rt>しけん</rt></ruby>では<ruby>必<rt>かなら</rt></ruby>ず<ruby>見<rt>み</rt></ruby>られる。<br>*(Dùng đồng hồ so, ép vào trong 0,01mm. Trong kỳ thi nhất định bị chấm.)* |
| Sakurai | <ruby>次<rt>つぎ</rt></ruby>に<ruby>原点<rt>げんてん</rt></ruby><ruby>合<rt>あ</rt></ruby>わせ。XとYは<ruby>素材<rt>そざい</rt></ruby>の<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>、Zは<ruby>素材<rt>そざい</rt></ruby>の<ruby>上面<rt>うわづら</rt></ruby>を<ruby>基準<rt>きじゅん</rt></ruby>にする。<br>*(Tiếp theo chỉnh điểm gốc. X và Y lấy ở góc dưới trái phôi, Z lấy mặt trên phôi làm chuẩn.)* |
| Thái | （メモする）<ruby>原点<rt>げんてん</rt></ruby><ruby>合<rt>あ</rt></ruby>わせ、X・Y<ruby>左下<rt>ひだりした</rt></ruby>、Z<ruby>上面<rt>うわづら</rt></ruby>ですね。<br>*(Ghi chú. Chỉnh điểm gốc, X-Y góc dưới trái, Z mặt trên đúng không ạ.)* |
| Sakurai | そう。<ruby>段取<rt>だんど</rt></ruby>りに<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>かかったら<ruby>遅<rt>おそ</rt></ruby>い。<ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>以内<rt>いない</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にしよう。<br>*(Đúng. Chuẩn bị mất 20 phút là chậm. Mục tiêu trong 15 phút.)* |
| Thái | はい。<ruby>明日<rt>あした</rt></ruby>から<ruby>自分<rt>じぶん</rt></ruby>でやってみます。<br>*(Vâng. Từ mai em sẽ tự làm thử ạ.)* |
| Sakurai | <ruby>分<rt>わ</rt></ruby>からないことがあったら<ruby>遠慮<rt>えんりょ</rt></ruby>せずに<ruby>聞<rt>き</rt></ruby>いてくれ。<br>*(Có gì không hiểu cứ hỏi đừng ngại.)* |

---

## Tình huống 4 — Phòng ký túc 201 · 21:00, hỏi Putra công thức 切削速度 (hỏi lại khi chưa hiểu)

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>すみません。<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>切削速度<rt>せっさくそくど</rt></ruby>の<ruby>計算<rt>けいさん</rt></ruby>が<ruby>出<rt>で</rt></ruby>るんですが、<ruby>公式<rt>こうしき</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れてしまいました。<br>*(Anh Putra, em xin lỗi giữa lúc anh học. Thi lý thuyết có tính tốc độ cắt nhưng em quên công thức rồi.)* |
| Putra | ああ、<ruby>切削速度<rt>せっさくそくど</rt></ruby>ね。V = π × D × n ÷ <ruby>1000<rt>せん</rt></ruby>。<ruby>単位<rt>たんい</rt></ruby>はメートル<ruby>毎<rt>まい</rt></ruby><ruby>分<rt>ぷん</rt></ruby>だよ。<br>*(À, tốc độ cắt à. V = π × D × n ÷ 1000. Đơn vị là mét trên phút đó.)* |
| Thái | すみません、Dとnはそれぞれ<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Xin lỗi, D và n là gì ạ?)* |
| Putra | Dは<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>直径<rt>ちょっけい</rt></ruby>、ミリで<ruby>入<rt>い</rt></ruby>れる。nは<ruby>回転<rt>かいてん</rt></ruby><ruby>数<rt>すう</rt></ruby>、<ruby>毎<rt>まい</rt></ruby><ruby>分<rt>ぷん</rt></ruby>の<ruby>回転<rt>かいてん</rt></ruby><ruby>数<rt>すう</rt></ruby>だ。<br>*(D là đường kính dao tính bằng mm. n là số vòng quay, vòng trên phút.)* |
| Thái | なるほど、<ruby>直径<rt>ちょっけい</rt></ruby>と<ruby>回転数<rt>かいてんすう</rt></ruby>ということですね。<ruby>送<rt>おく</rt></ruby>りの<ruby>計算<rt>けいさん</rt></ruby>はどうしますか?<br>*(Ra vậy, là đường kính và số vòng quay. Còn tính lượng tiến thì sao ạ?)* |
| Putra | <ruby>送<rt>おく</rt></ruby>り<ruby>速度<rt>そくど</rt></ruby>は F = fz × Z × n。fzは<ruby>一<rt>いち</rt></ruby><ruby>刃<rt>は</rt></ruby>あたりの<ruby>送<rt>おく</rt></ruby>り、Zは<ruby>刃<rt>は</rt></ruby>の<ruby>数<rt>かず</rt></ruby>だ。<br>*(Tốc độ tiến F = fz × Z × n. fz là lượng tiến mỗi lưỡi, Z là số lưỡi.)* |
| Thái | プトラさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>詳<rt>くわ</rt></ruby>しいですね。どうやって<ruby>覚<rt>おぼ</rt></ruby>えましたか?<br>*(Anh Putra giỏi thật. Anh học thuộc cách nào ạ?)* |
| Putra | <ruby>去年<rt>きょねん</rt></ruby>のSSW1<ruby>試験<rt>しけん</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じ<ruby>問題<rt>もんだい</rt></ruby>が<ruby>出<rt>で</rt></ruby>たんだ。<ruby>機械加工<rt>きかいかこう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>はどれも<ruby>基本<rt>きほん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだよ。<br>*(Năm ngoái thi SSW1 ra y câu này. Thi 機械加工 cái nào cơ bản cũng giống nhau.)* |
| Thái | ありがとうございます。<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>解<rt>と</rt></ruby>いてみます。<ruby>分<rt>わ</rt></ruby>からないところがあったらまた<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Em cảm ơn anh. Em sẽ thử giải đề cũ. Có chỗ nào không hiểu hỏi anh lại được không?)* |
| Putra | もちろん。お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Tất nhiên rồi. Cùng cố gắng nhé.)* |

---

## Tình huống 5 — Sảnh ký túc · 7:30 sáng ngày thi, Sakurai đón Thái đi hội trường

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>準備<rt>じゅんび</rt></ruby>できた?<ruby>会場<rt>かいじょう</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<br>*(Thái, chuẩn bị xong chưa? Đi hội trường thôi.)* |
| Thái | はい、できました。<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証<rt>みぶんしょう</rt></ruby>、<ruby>筆記具<rt>ひっきぐ</rt></ruby>、<ruby>作業着<rt>さぎょうぎ</rt></ruby>、<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, xong rồi. Phiếu dự thi, chứng minh, đồ viết, đồ bảo hộ, giày bảo hộ, em đã kiểm tra hết.)* |
| Putra | （<ruby>玄関<rt>げんかん</rt></ruby>まで<ruby>見送<rt>みおく</rt></ruby>る）タイ、<ruby>頑張<rt>がんば</rt></ruby>って！<ruby>切削速度<rt>せっさくそくど</rt></ruby>の<ruby>公式<rt>こうしき</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Tiễn ra sảnh. Thái, cố lên! Công thức tốc độ cắt, ổn không?)* |
| Thái | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。プトラさんのおかげです。ありがとうございます。<br>*(Vâng, ổn rồi. Nhờ có anh Putra. Em cảm ơn anh.)* |
| Sakurai | （<ruby>車<rt>くるま</rt></ruby>に<ruby>乗<rt>の</rt></ruby>りながら）<ruby>緊張<rt>きんちょう</rt></ruby>してる?<br>*(Lên xe. Em hồi hộp không?)* |
| Thái | <ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。<ruby>初<rt>はじ</rt></ruby>めての<ruby>国家試験<rt>こっかしけん</rt></ruby>ですから。<br>*(Em hơi hồi hộp ạ. Vì là thi quốc gia lần đầu mà.)* |
| Sakurai | <ruby>俺<rt>おれ</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてだ。<ruby>同<rt>おな</rt></ruby>じだよ。<br>*(Anh cũng lần đầu thi 2級 mà. Giống nhau cả thôi.)* |
| Thái | サクライさん、<ruby>試験官<rt>しけんかん</rt></ruby>に<ruby>何<rt>なに</rt></ruby>か<ruby>聞<rt>き</rt></ruby>かれたら、どう<ruby>答<rt>こた</rt></ruby>えればいいですか?<br>*(Anh Sakurai, nếu giám thị hỏi gì thì em trả lời ra sao ạ?)* |
| Sakurai | <ruby>普通<rt>ふつう</rt></ruby>に「はい」「いいえ」で<ruby>答<rt>こた</rt></ruby>えればいい。<ruby>名前<rt>なまえ</rt></ruby>と<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かれたら、はっきり<ruby>言<rt>い</rt></ruby>うんだ。<br>*(Cứ "vâng" "không" bình thường thôi. Nếu hỏi tên và số báo danh thì nói rõ ràng.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。お<ruby>互<rt>たが</rt></ruby>い<ruby>合格<rt>ごうかく</rt></ruby>しましょう！<br>*(Em hiểu rồi. Cùng đỗ nhé anh!)* |

---

## Tình huống 6 — Phòng thi học科 · 9:00, đối thoại với 試験官 và làm 30 câu lý thuyết

| Vai | Lời thoại |
|---|---|
| 試験官 | <ruby>受験番号<rt>じゅけんばんごう</rt></ruby>と<ruby>名前<rt>なまえ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。グエン・ヴァン・タイさん、<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby>‐<ruby>045<rt>ぜろよんご</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Tôi xác nhận số báo danh và tên. Anh Nguyễn Văn Thái, số 23-045, đúng chưa?)* |
| Thái | はい、<ruby>合<rt>あ</rt></ruby>っています。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đúng ạ. Mong thầy/cô chỉ bảo.)* |
| 試験官 | これから<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>問題<rt>もんだい</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>、<ruby>時間<rt>じかん</rt></ruby><ruby>60<rt>ろくじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Bây giờ bắt đầu thi lý thuyết 機械加工技能士 3級. 30 câu, 60 phút.)* |
| 試験官 | <ruby>注意事項<rt>ちゅういじこう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>携帯電話<rt>けいたいでんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>ってカバンに<ruby>入<rt>い</rt></ruby>れてください。<ruby>解答<rt>かいとう</rt></ruby>は<ruby>鉛筆<rt>えんぴつ</rt></ruby>で<ruby>記入<rt>きにゅう</rt></ruby>してください。<br>*(Tôi giải thích lưu ý. Điện thoại tắt nguồn cho vào cặp. Trả lời bằng bút chì.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| 試験官 | <ruby>質問<rt>しつもん</rt></ruby>はありますか?<br>*(Có câu hỏi gì không?)* |
| Thái | すみません、<ruby>計算問題<rt>けいさんもんだい</rt></ruby>で<ruby>電卓<rt>でんたく</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってもいいですか?<br>*(Xin lỗi, câu tính toán có được dùng máy tính cầm tay không ạ?)* |
| 試験官 | はい、<ruby>関数電卓<rt>かんすうでんたく</rt></ruby>でないものは<ruby>使用可<rt>しようか</rt></ruby>です。<br>*(Có, loại không phải máy tính khoa học thì được dùng.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Vâng, em rõ. Em cảm ơn ạ.)* |
| 試験官 | では、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vậy thì bắt đầu.)* |
| Thái | （<ruby>用紙<rt>ようし</rt></ruby>をめくる、<ruby>切削速度<rt>せっさくそくど</rt></ruby>の<ruby>計算問題<rt>けいさんもんだい</rt></ruby>を<ruby>見<rt>み</rt></ruby>つけて<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>く）<br>*(Lật đề, gặp đúng bài tính tốc độ cắt, yên tâm.)* |
| 試験官 | （<ruby>55<rt>ごじゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>後<rt>ご</rt></ruby>）あと<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>です。<ruby>見直<rt>みなお</rt></ruby>しをしてください。<br>*(55 phút sau. Còn 5 phút. Hãy kiểm tra lại.)* |
| 試験官 | （<ruby>60<rt>ろくじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>後<rt>ご</rt></ruby>）<ruby>終了<rt>しゅうりょう</rt></ruby>です。<ruby>解答用紙<rt>かいとうようし</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(60 phút sau. Hết giờ. Hãy nộp bài.)* |
| Thái | （<ruby>提出<rt>ていしゅつ</rt></ruby>する）ありがとうございました。<br>*(Nộp. Em cảm ơn ạ.)* |

---

## Tình huống 7 — Phòng thi 実技 · 13:00, đối thoại 試験官 trước khi vào phay NC

| Vai | Lời thoại |
|---|---|
| 試験官 | <ruby>午後<rt>ごご</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>です。<ruby>制限時間<rt>せいげんじかん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>します。<br>*(Buổi chiều là thực hành. Giới hạn 2 tiếng. Phát bản vẽ.)* |
| Thái | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>する）ありがとうございます。<br>*(Nhận bản vẽ và kiểm tra. Em cảm ơn ạ.)* |
| 試験官 | <ruby>素材<rt>そざい</rt></ruby>は<ruby>50<rt>ごじゅう</rt></ruby>×<ruby>50<rt>ごじゅう</rt></ruby>×<ruby>20<rt>にじゅう</rt></ruby>ミリのS<ruby>50<rt>ごじゅう</rt></ruby>C<ruby>材<rt>ざい</rt></ruby>です。<ruby>段差<rt>だんさ</rt></ruby>と<ruby>溝<rt>みぞ</rt></ruby>、<ruby>面取<rt>めんと</rt></ruby>りを<ruby>図面<rt>ずめん</rt></ruby><ruby>通<rt>とお</rt></ruby>りに<ruby>加工<rt>かこう</rt></ruby>してください。<br>*(Phôi là 50×50×20mm thép S50C. Hãy gia công bậc, rãnh, vát cạnh đúng bản vẽ.)* |
| Thái | すみません、<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>公差<rt>こうさ</rt></ruby>はプラスマイナス<ruby>0.05<rt>れいてんれいご</rt></ruby>ミリということですね?<br>*(Xin lỗi, cho em xác nhận. Dung sai là ±0,05mm phải không ạ?)* |
| 試験官 | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>面<rt>めん</rt></ruby><ruby>粗<rt>あら</rt></ruby>さは<ruby>図面<rt>ずめん</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>されています。<br>*(Đúng. Độ nhám bề mặt ghi trên bản vẽ.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>使用<rt>しよう</rt></ruby>できる<ruby>工具<rt>こうぐ</rt></ruby>はどれですか?<br>*(Em rõ ạ. Dao nào được sử dụng ạ?)* |
| 試験官 | <ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>のエンドミル<ruby>3<rt>さん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>と、ノギス、マイクロメーター、ダイヤルゲージです。<br>*(3 loại dao end mill trên bàn, thước kẹp, panme và đồng hồ so.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>始<rt>はじ</rt></ruby>めてもいいですか?<br>*(Vâng, em rõ. Em được phép bắt đầu chưa ạ?)* |
| 試験官 | はい、<ruby>始<rt>はじ</rt></ruby>めてください。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, hãy bắt đầu. An toàn là số một.)* |
| Thái | （<ruby>段取<rt>だんど</rt></ruby>りを<ruby>始<rt>はじ</rt></ruby>める、<ruby>素材<rt>そざい</rt></ruby>をバイスに<ruby>固定<rt>こてい</rt></ruby>し、<ruby>原点<rt>げんてん</rt></ruby><ruby>合<rt>あ</rt></ruby>わせを<ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>終<rt>お</rt></ruby>える）<br>*(Bắt đầu chuẩn bị, cố định phôi vào ê-tô, chỉnh điểm gốc xong trong 15 phút.)* |
| Thái | （<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>加工<rt>かこう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>）<ruby>試験官<rt>しけんかん</rt></ruby>、<ruby>提出<rt>ていしゅつ</rt></ruby>してもよろしいでしょうか?<br>*(1 tiếng 45 phút sau, xong, kiểm tra kích thước. Thưa giám thị, em được phép nộp không ạ?)* |
| 試験官 | はい、<ruby>提出<rt>ていしゅつ</rt></ruby>してください。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, hãy nộp. Em vất vả rồi.)* |
| Thái | ありがとうございました。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 8 — Bãi đỗ xe hội trường · 16:00, gặp lại Sakurai sau khi thi xong

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま！どうだった?<br>*(Thái, vất vả rồi! Sao rồi?)* |
| Thái | サクライさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>学科<rt>がっか</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>終<rt>お</rt></ruby>わりました。<br>*(Anh Sakurai vất vả rồi. Lý thuyết em nghĩ ổn. Thực hành em xong trong 1 tiếng 45.)* |
| Sakurai | <ruby>早<rt>はや</rt></ruby>いな！<ruby>段取<rt>だんど</rt></ruby>りはどれぐらいかかった?<br>*(Nhanh đấy! Chuẩn bị mất bao lâu?)* |
| Thái | <ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらいです。サクライさんが<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>通<rt>とお</rt></ruby>りにやりました。<br>*(Khoảng 15 phút. Em làm đúng như anh dạy.)* |
| Sakurai | よし！<ruby>俺<rt>おれ</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>結構<rt>けっこう</rt></ruby><ruby>難<rt>むずか</rt></ruby>しかった。<ruby>図面<rt>ずめん</rt></ruby>の<ruby>解釈<rt>かいしゃく</rt></ruby>で<ruby>迷<rt>まよ</rt></ruby>った。<br>*(Tốt! 2級 của anh khá khó. Anh phân vân cách đọc bản vẽ.)* |
| Thái | <ruby>結果<rt>けっか</rt></ruby>はいつ<ruby>来<rt>き</rt></ruby>ますか?<br>*(Khi nào có kết quả ạ?)* |
| Sakurai | <ruby>大体<rt>だいたい</rt></ruby><ruby>1<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>合否<rt>ごうひ</rt></ruby><ruby>通知<rt>つうち</rt></ruby>が<ruby>郵送<rt>ゆうそう</rt></ruby>で<ruby>届<rt>とど</rt></ruby>く。<br>*(Khoảng 1 tháng sau thông báo đỗ-trượt gửi đường bưu điện đến.)* |
| Thái | <ruby>1<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>も<ruby>待<rt>ま</rt></ruby>つんですね。<ruby>長<rt>なが</rt></ruby>いです。<br>*(Phải chờ tận một tháng. Lâu thật.)* |
| Sakurai | その<ruby>間<rt>あいだ</rt></ruby>に<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えればいい。<ruby>帰<rt>かえ</rt></ruby>ろう、プトラさんが<ruby>待<rt>ま</rt></ruby>ってるよ。<br>*(Trong lúc đó cứ nghĩ mục tiêu tiếp theo. Về thôi, Putra đang đợi đấy.)* |

---

## Tình huống 9 — Văn phòng 工場長 · 4/2023, nhận thông báo 合格 và báo cáo cấp trên

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>結果<rt>けっか</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いたよ。（<ruby>封筒<rt>ふうとう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<br>*(Thái, kết quả đến rồi. Đưa phong bì.)* |
| Thái | ありがとうございます。<ruby>開<rt>あ</rt></ruby>けてもいいですか?<br>*(Em cảm ơn ạ. Em mở luôn được không?)* |
| Tanaka | もちろん。<br>*(Tất nhiên.)* |
| Thái | （<ruby>開封<rt>かいふう</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>する）...<ruby>合格<rt>ごうかく</rt></ruby>です！<ruby>学科<rt>がっか</rt></ruby><ruby>78<rt>ななじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>72<rt>ななじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>でした！<br>*(Mở, kiểm tra. Đỗ ạ! Lý thuyết 78 điểm, thực hành 72 điểm!)* |
| Tanaka | おめでとう、タイ<ruby>君<rt>くん</rt></ruby>！<ruby>合格基準<rt>ごうかくきじゅん</rt></ruby>は<ruby>学科<rt>がっか</rt></ruby><ruby>65<rt>ろくじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>60<rt>ろくじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>余裕<rt>よゆう</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby>だ。<br>*(Chúc mừng Thái! Chuẩn đỗ là 65 lý thuyết, 60 thực hành. Đỗ thoải mái.)* |
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>受験<rt>じゅけん</rt></ruby>の<ruby>機会<rt>きかい</rt></ruby>をいただき、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Trưởng nhà máy, em xin chân thành cảm ơn ông đã cho em cơ hội thi.)* |
| Tanaka | サクライ<ruby>君<rt>くん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>もよかったね。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>そう。<br>*(Sự chỉ bảo của Sakurai cũng tốt nhỉ. Sang năm nhắm tới 2級 nhé.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Vâng, em nhất định sẽ thử.)* |
| Sakurai | （<ruby>入<rt>はい</rt></ruby>ってくる）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>したぞ！<br>*(Bước vào. Thái, anh cũng đỗ 2級 rồi!)* |
| Thái | サクライさん、おめでとうございます！<br>*(Anh Sakurai, chúc mừng anh ạ!)* |
| Sakurai | <ruby>今晩<rt>こんばん</rt></ruby>、<ruby>2人<rt>ふたり</rt></ruby>で<ruby>祝<rt>いわ</rt></ruby>いに<ruby>行<rt>い</rt></ruby>こう！プトラさんも<ruby>誘<rt>さそ</rt></ruby>って。<br>*(Tối nay hai đứa đi ăn mừng! Rủ cả Putra nữa.)* |
| Thái | はい、<ruby>喜<rt>よろこ</rt></ruby>んで！<br>*(Vâng, em vui lòng đi ạ!)* |

---

## Tình huống 10 — Phòng 201 · 22:00, video call báo gia đình + chị Linh đồng hương (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng chuyên ngành JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi! Mai ơi! Con đỗ rồi! |
| Mẹ Thái | (tiếng Việt) Đỗ gì hả con? Đỗ tiếng Nhật à? |
| Thái | (tiếng Việt) Không, đỗ chứng chỉ tay nghề quốc gia Nhật. Tên gọi là 機械加工技能士 3級 — cấp 3 nghề gia công cơ khí mẹ ạ. |
| Bố Thái | (tiếng Việt, ghé vào) Chứng chỉ quốc gia của Nhật á? Ghê thật! Mấy điểm con? |
| Thái | (tiếng Việt) Lý thuyết 78, thực hành 72 bố ạ. Chuẩn đỗ là 65 với 60 thôi, con đỗ thoải mái. |
| Mai | (tiếng Việt) Anh giỏi quá! Anh ôn thi vất vả lắm không? |
| Thái | (tiếng Việt) Anh ôn 2 tháng. Anh Sakurai — đàn anh đại học công nghiệp Nhật — dạy anh 段取り với 原点合わせ — kiểu chuẩn bị máy với chỉnh điểm gốc đó. Anh Putra người Indonesia cùng phòng thì dạy công thức 切削速度 — tốc độ cắt: V = π × D × n chia cho 1000. Hai anh đó cứu anh đấy. |
| Mai | (tiếng Việt) Em ghi mấy chữ này vào sổ luôn. Để sau anh nói chuyên ngành em nghe còn hiểu. |
| Thái | (tiếng Việt) Ừ. Anh báo chị Linh đồng hương Nagoya một tiếng nhé. Lát anh gọi lại mẹ. |
| Mẹ Thái | (tiếng Việt) Ừ, gọi đi con. Mẹ với bố mừng quá. |

(Thái mở LINE với chị Linh — chị người Việt đang làm kỹ sư IT tại Nagoya, vĩnh trú đã 2 năm.)

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, LINE) Chị Linh ơi! Em đỗ 機械加工 3級 rồi chị. |
| Linh | (tiếng Việt) Ôi chú giỏi! Mới sang chưa được năm đã đỗ cấp 3 cơ à? Bình thường tu nghiệp sinh năm đầu chỉ đỗ N4 với học việc thôi. |
| Thái | (tiếng Việt) Em được anh trưởng nhà máy đăng ký giúp với anh đàn anh kèm. May lắm chị. |
| Linh | (tiếng Việt) Không phải may đâu, chú chịu khó là chính. Cuối tuần sau lên Nagoya, chị dẫn đi ăn mừng. Cộng đồng kỹ sư Việt mình ở đây cũng thích nghe câu chuyện đỗ tay nghề như này. |
| Thái | (tiếng Việt) Vâng chị, em lên ngay! Cảm ơn chị. |
| Linh | (tiếng Việt) Mục tiêu năm sau 2級 nhé. Lên cấp 2 là lương được công ty cộng phụ cấp 資格手当 đấy. |
| Thái | (tiếng Việt) Em ghi vào sổ rồi. Mục tiêu tiếp: 2級 với N3. |

---

## Đọng lại chương 11

Thái trải qua kỳ thi tay nghề quốc gia đầu tiên trong đời và đỗ với điểm thoải mái. Trong hành trình đó, em học được nguyên một bộ mẫu câu giao tiếp quanh **試験**: **nhận chỉ thị thi từ 工場長 trong 朝礼** (〜を受けてもらいます・承知しました), **nhờ 先輩 dạy 実技** (〜について教えていただけますか?), **hỏi lại lễ phép khi chưa hiểu từ chuyên ngành** (〜というのは何ですか?・〜はどんな意味ですか?), **xác nhận thông số kỹ thuật khi nhận 図面** (〜ということですね?・公差は〜ですね?), **đối thoại với 試験官 trong phòng thi** (受験番号と名前を確認します・始めてもいいですか?・提出してもよろしいでしょうか?), và **báo cáo kết quả cho cấp trên** (合格しました・受験の機会をいただき、ありがとうございました). Đồng thời ôn được các thuật ngữ chuyên ngành **機械加工** (切削速度・送り・段取り・原点合わせ・面取り・公差・面粗さ), nắm công thức **V = π × D × n ÷ 1000**, và quan sát thấy người Nhật đề cao kỷ luật **安全第一** trong môi trường thi. Bài học lớn nhất: ở Nhật, mọi câu chuyện chuyên ngành đều có **公式** và **基準** cụ thể — học mẫu câu hỏi lại đúng cách thì không sợ thuật ngữ khó.

> Từ vựng & mẫu câu chương này: 機械加工技能士・3級・技能検定・受験・朝礼・愛知県職業能力開発協会・学科・実技・NCフライス盤・段取り・原点合わせ・切削速度・送り・公差・面取り・面粗さ・素材・図面・試験官・受験番号・解答用紙・合格基準・合格通知・資格手当・〜を受けてもらいます・〜というのは何ですか・〜ということですね・始めてもよろしいでしょうか・提出してもよろしいでしょうか・受験の機会をいただきありがとうございました

## Bí quyết chương

- **Thi tay nghề quốc gia đầu tiên**: 機械加工 3級 — mở chuỗi chứng chỉ JAVADA, năm sau lên 2級 trong sách 15.
- **Trục Sakurai-Putra**: Sakurai dạy 実技, Putra dạy 学科 — hai trục đàn anh khác nguồn (Nhật trẻ vs SSW1 Indo) đều hỗ trợ Thái.
- **Lịch trình thực tế**: thi 25/3, kết quả ~1 tháng sau — đúng quy trình JAVADA Aichi.
- **資格手当**: lần đầu nhắc — sẽ thấy kết quả khi Thái lên 2級 ở sách sau.

> *"3/2023. 機械加工 3級 合格. Năm 1 ở Nhật khép lại bằng tờ chứng chỉ đầu tiên."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 連絡事項 | れんらくじこう | LIÊN LẠC SỰ HẠNG | nội dung cần thông báo |
| 技能士 | ぎのうし | KỸ NĂNG SĨ | kỹ năng sĩ |
| 級 | きゅう | CẤP | cấp, hạng |
| 試験 | しけん | THÍ NGHIỆM | kỳ thi |
| 会場 | かいじょう | HỘI TRƯỜNG | địa điểm |
| 職業 | しょくぎょう | CHỨC NGHIỆP | nghề nghiệp |
| 能力 | のうりょく | NĂNG LỰC | năng lực |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 協会 | きょうかい | HIỆP HỘI | hiệp hội |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | giới hạn thời gian |
| 素材 | そざい | TỐ TÀI | phôi |
| 指定 | してい | CHỈ ĐỊNH | chỉ định |
| 加工 | かこう | GIA CÔNG | gia công |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi cũ |
| 段差 | だんさ | ĐOẠN SAI | bậc |
| 面取り | めんとり | DIỆN THỦ | vát cạnh |
| 段取り | だんどり | ĐOẠN THỦ | chuẩn bị, set-up |
| 固定 | こてい | CỐ ĐỊNH | cố định |
| 水平 | すいへい | THUỶ BÌNH | ngang, mặt phẳng ngang |
| 原点合わせ | げんてんあわせ | NGUYÊN ĐIỂM HỢP | chỉnh điểm gốc |
| 基準 | きじゅん | CƠ CHUẨN | chuẩn |
| 上面 | うわづら | THƯỢNG DIỆN | mặt trên |
| 切削速度 | せっさくそくど | THIẾT TIÊU TỐC ĐỘ | tốc độ cắt |
| 公式 | こうしき | CÔNG THỨC | công thức |
| 工具 | こうぐ | CÔNG CỤ | dao cụ |
| 回転数 | かいてんすう | HỒI CHUYỂN SỐ | số vòng quay |
| 送り | おくり | TỐNG | lượng tiến |
| 刃 | は | NHẬN | lưỡi dao |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu dự thi |
| 身分証 | みぶんしょう | THÂN PHẬN CHỨNG | chứng minh thư |
| 筆記具 | ひっきぐ | BÚT KÝ CỤ | đồ viết |
| 安全靴 | あんぜんぐつ | AN TOÀN HÀI | giày bảo hộ |
| 国家試験 | こっかしけん | QUỐC GIA THÍ NGHIỆM | thi quốc gia |
| 試験官 | しけんかん | THÍ NGHIỆM QUAN | giám thị |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |
| 注意事項 | ちゅういじこう | CHÚ Ý SỰ HẠNG | lưu ý |
| 解答用紙 | かいとうようし | GIẢI ĐÁP DỤNG CHỈ | bài làm |
| 公差 | こうさ | CÔNG SAI | dung sai |
| 面粗さ | めんあらさ | DIỆN THÔ | độ nhám bề mặt |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | an toàn là số một |
| 合否 | ごうひ | HỢP PHỦ | đỗ-trượt |
| 通知 | つうち | THÔNG TRI | thông báo |
| 開封 | かいふう | KHAI PHONG | mở phong bì |
| 合格基準 | ごうかくきじゅん | HỢP CÁCH CƠ CHUẨN | chuẩn đỗ |
| 余裕 | よゆう | DƯ DỤ | thừa, thoải mái |
| 資格手当 | しかくてあて | TƯ CÁCH THỦ ĐƯƠNG | phụ cấp chứng chỉ |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (814000012, 800000014, NULL, 'markdown_book', 'T12. Tổng kết một năm và kế hoạch năm hai (1年経過)', '# Sách kỹ sư khuôn đúc · T12. Tổng kết một năm và kế hoạch năm hai (1年経過)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) khép lại 12 tháng đầu tại **株式会社みなみ精密金型** ở Anjo, Aichi. Học các mẫu hội thoại tiếng Nhật trong cuộc **面談 (mensetsu) đánh giá năm**: trả lời cấp trên khi được điểm danh thành tích (遅刻ゼロ・無事故・資格), trình bày nguyện vọng năm tiếp theo (〜たいと思っております), tiếp nhận chỉ thị thăng cấp và kế hoạch học (昇格・受験・継続), cảm ơn khi được tăng lương (給与アップ), chúc mừng và đáp lễ trong tiệc nhậu izakaya (乾杯・おめでとう), hỏi lại lễ phép khi chưa rõ từ chuyên ngành (〜というのは?), và quan sát đàn anh chia sẻ kế hoạch dài hạn.

---

## Bối cảnh

Cuối tháng 4 năm 2023. Năm tài khoá Nhật mới bắt đầu từ 1/4 — đúng dịp Thái tròn một năm sang Nhật. Trình độ tiếng Nhật đã chắc N4, đang chuẩn bị thi N3. Trưởng nhà máy Tanaka gọi Thái lên phòng họp để **面談** một tiếng — vừa nhìn lại thành tích năm 1, vừa giao kế hoạch năm 2. Cuối tuần cả nhóm Thái–Putra–Sakurai tụ tập ở izakaya 鳥貴族 ăn mừng. Chương này tổng kết toàn bộ mẫu câu công sở 12 tháng qua và mở đường sang năm 2.

---

## Tình huống 1 — Phòng họp nhà máy · 14:00, vào cuộc 面談 đánh giá năm

| Vai | Lời thoại |
|---|---|
| Tanaka | （ドアが<ruby>開<rt>あ</rt></ruby>く）タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。どうぞ、<ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Cửa mở. Anh Thái, em vất vả rồi. Mời ngồi.)* |
| Thái | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>工場長<rt>こうじょうちょう</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。（<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<br>*(Em xin phép. Trưởng nhà máy, em mong được chỉ bảo ạ. Cúi đầu.)* |
| Tanaka | <ruby>今日<rt>きょう</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りと、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のプランを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えましょう。<br>*(Hôm nay chúng ta cùng nhìn lại năm 1 và bàn kế hoạch năm 2.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em mong ông chỉ bảo ạ.)* |
| Tanaka | まず、<ruby>勤怠<rt>きんたい</rt></ruby>のデータを<ruby>見<rt>み</rt></ruby>ましょう。<ruby>遅刻<rt>ちこく</rt></ruby><ruby>0<rt>ゼロ</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>欠勤<rt>けっきん</rt></ruby><ruby>0<rt>ゼロ</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>事故<rt>じこ</rt></ruby><ruby>0<rt>ゼロ</rt></ruby><ruby>件<rt>けん</rt></ruby>。<ruby>完璧<rt>かんぺき</rt></ruby>ですね。<br>*(Trước tiên xem dữ liệu chuyên cần. Đi muộn 0 lần, nghỉ 0 lần, tai nạn 0 vụ. Hoàn hảo nhỉ.)* |
| Thái | ありがとうございます。プトラさんと<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>出<rt>で</rt></ruby>たおかげです。<br>*(Em cảm ơn ạ. Nhờ sáng nào cũng đi cùng anh Putra ạ.)* |
| Tanaka | すみません、「<ruby>勤怠<rt>きんたい</rt></ruby>」は<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Xin lỗi, em hiểu "kintai" chứ?)* |
| Thái | はい、<ruby>出勤<rt>しゅっきん</rt></ruby>と<ruby>欠勤<rt>けっきん</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>のことですね。<br>*(Vâng, là ghi chép đi làm và nghỉ ạ.)* |
| Tanaka | そのとおりです。よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。<br>*(Đúng vậy. Em nhớ tốt đấy.)* |

---

## Tình huống 2 — Phòng họp nhà máy · 14:10, điểm danh chứng chỉ và kỹ năng đã đạt

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>次<rt>つぎ</rt></ruby>に、<ruby>資格<rt>しかく</rt></ruby>の<ruby>実績<rt>じっせき</rt></ruby>です。<ruby>三<rt>みっ</rt></ruby>つの<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>りましたね。フォークリフト、<ruby>玉掛<rt>たまか</rt></ruby>け、<ruby>研削<rt>けんさく</rt></ruby><ruby>砥石<rt>といし</rt></ruby>。<br>*(Tiếp theo là thành tích chứng chỉ. Em đã lấy ba bằng. Xe nâng, móc tải cẩu, đá mài.)* |
| Thái | はい、<ruby>先輩<rt>せんぱい</rt></ruby>がたのおかげです。<br>*(Vâng, nhờ các đàn anh ạ.)* |
| Tanaka | そして<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>には<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>も<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Tháng 2 còn đỗ kỹ năng sĩ gia công cơ khí cấp 3.)* |
| Thái | はい、<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>はとても<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Vâng, phần thi thực hành căng thẳng lắm ạ.)* |
| Tanaka | <ruby>磨<rt>みが</rt></ruby>き<ruby>技術<rt>ぎじゅつ</rt></ruby>もよくなりました。CAD<ruby>入門<rt>にゅうもん</rt></ruby>も<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>んでいます。<br>*(Kỹ năng mài bóng cũng khá hơn. Nhập môn CAD cũng tiến triển thuận lợi.)* |
| Thái | はい、<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>続<rt>つづ</rt></ruby>けています。<br>*(Vâng, mỗi tối em đều duy trì một tiếng ạ.)* |
| Tanaka | <ruby>正直<rt>しょうじき</rt></ruby><ruby>言<rt>い</rt></ruby>うと、<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>でこのレベルは<ruby>稀<rt>まれ</rt></ruby>です。<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていいですよ。<br>*(Thật lòng mà nói, tân binh người nước ngoài đạt mức này là hiếm. Em cứ tự tin đi.)* |
| Thái | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Cúi đầu sâu. Em cảm ơn ông. Lời khen quá lớn so với em.)* |

---

## Tình huống 3 — Phòng họp nhà máy · 14:30, nhận kế hoạch thăng cấp và mục tiêu năm 2

| Vai | Lời thoại |
|---|---|
| Tanaka | では、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のプランを<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>四<rt>よっ</rt></ruby>つあります。<br>*(Vậy thì tôi trình bày kế hoạch năm 2. Có bốn mục.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。（メモを<ruby>取<rt>と</rt></ruby>る）<br>*(Vâng, mời ông ạ. Lấy sổ ghi chép.)* |
| Tanaka | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>。<ruby>来月<rt>らいげつ</rt></ruby>からMCオペレータに<ruby>昇格<rt>しょうかく</rt></ruby>です。スズキさんの<ruby>後継<rt>こうけい</rt></ruby>として<ruby>育<rt>そだ</rt></ruby>てたいと<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Mục một. Từ tháng sau em được thăng lên thợ vận hành máy MC. Tôi muốn đào tạo em làm người kế nhiệm anh Suzuki.)* |
| Thái | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか？スズキさんの<ruby>後継<rt>こうけい</rt></ruby>…すみません、「<ruby>後継<rt>こうけい</rt></ruby>」というのは？<br>*(Ơ, thật ạ? Người kế nhiệm anh Suzuki… Xin lỗi, "kōkei" nghĩa là gì ạ?)* |
| Tanaka | <ruby>後<rt>あと</rt></ruby>を<ruby>継<rt>つ</rt></ruby>ぐ<ruby>人<rt>ひと</rt></ruby>、つまり<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぐ<ruby>人<rt>ひと</rt></ruby>のことです。<br>*(Là người tiếp nối, tức là người nhận bàn giao.)* |
| Thái | なるほど、スズキさんの<ruby>仕事<rt>しごと</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぐということですね。<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Em hiểu rồi, tức là tiếp nhận công việc của anh Suzuki ạ. Em sẽ cố!)* |
| Tanaka | <ruby>二<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、CADの<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けてください。SolidWorksを<ruby>独学<rt>どくがく</rt></ruby>で。<br>*(Mục hai, tiếp tục học CAD. Tự học SolidWorks.)* |
| Thái | はい、<ruby>夕方<rt>ゆうがた</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em sẽ duy trì một tiếng buổi tối ạ.)* |
| Tanaka | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>今年<rt>ことし</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPT N3を<ruby>受験<rt>じゅけん</rt></ruby>してください。<br>*(Mục ba, hãy thi JLPT N3 vào tháng 12 năm nay.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>っております。<br>*(Vâng, em quyết tâm đỗ ạ.)* |
| Tanaka | <ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受験<rt>じゅけん</rt></ruby>です。<ruby>難<rt>むずか</rt></ruby>しいですが、できると<ruby>思<rt>おも</rt></ruby>います。<br>*(Mục bốn, tháng 3 sang năm thi gia công cơ khí cấp 2. Khó nhưng tôi tin em làm được.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>計画的<rt>けいかくてき</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Vâng, em đã rõ. Em sẽ chuẩn bị có kế hoạch ạ.)* |

---

## Tình huống 4 — Phòng họp nhà máy · 15:00, nhận thông báo tăng lương và đáp lễ

| Vai | Lời thoại |
|---|---|
| Tanaka | それから、<ruby>嬉<rt>うれ</rt></ruby>しいお<ruby>知<rt>し</rt></ruby>らせがあります。<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってくれたので、<ruby>給与<rt>きゅうよ</rt></ruby>を<ruby>5<rt>ご</rt></ruby>%アップします。<br>*(Còn nữa, tôi có tin vui. Vì em đã cố gắng cả năm nên tăng lương 5%.)* |
| Thái | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか！ありがとうございます！<br>*(Ơ, thật ạ! Em cảm ơn ông!)* |
| Tanaka | <ruby>月<rt>つき</rt></ruby><ruby>21<rt>にじゅういち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>から<ruby>22<rt>にじゅうに</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>になります。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>給与<rt>きゅうよ</rt></ruby>から<ruby>反映<rt>はんえい</rt></ruby>されます。<br>*(Từ 210 nghìn yên/tháng lên 220 nghìn yên. Sẽ phản ánh vào lương tháng sau.)* |
| Thái | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>評価<rt>ひょうか</rt></ruby>です。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Đánh giá quá lớn so với em. Em thực sự cảm ơn ông.)* |
| Tanaka | <ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったらまた<ruby>見直<rt>みなお</rt></ruby>しましょう。お<ruby>母<rt>かあ</rt></ruby>さまへの<ruby>送金<rt>そうきん</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>けていますか？<br>*(Hết năm 2 tôi sẽ xem xét lại. Em vẫn gửi tiền cho mẹ chứ?)* |
| Thái | はい、<ruby>毎月<rt>まいつき</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>欠<rt>か</rt></ruby>かさず<ruby>送金<rt>そうきん</rt></ruby>しております。<br>*(Vâng, hàng tháng 50 nghìn yên, em không bỏ lần nào ạ.)* |
| Tanaka | <ruby>親孝行<rt>おやこうこう</rt></ruby>ですね。これからも<ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Hiếu thảo đấy. Từ nay về sau cũng giữ gìn sức khoẻ nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>失礼<rt>しつれい</rt></ruby>します。（<ruby>深<rt>ふか</rt></ruby>く<ruby>礼<rt>れい</rt></ruby>）<br>*(Vâng, em đã rõ. Em xin phép. Cúi chào sâu.)* |

---

## Tình huống 5 — Hành lang xưởng · 17:30, kể tin cho Putra (quan sát đàn anh phản ứng)

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、ちょっといいですか？<br>*(Anh Putra, em nói chuyện một chút được không?)* |
| Putra | おお、どうした？<ruby>面談<rt>めんだん</rt></ruby>どうだった？<br>*(Ồ, sao thế? Cuộc 面談 thế nào?)* |
| Thái | <ruby>来月<rt>らいげつ</rt></ruby>からMCオペレータに<ruby>昇格<rt>しょうかく</rt></ruby>です。<ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>5<rt>ご</rt></ruby>%アップです。<br>*(Tháng sau em lên thợ vận hành MC. Lương cũng tăng 5%.)* |
| Putra | え、<ruby>本当<rt>ほんとう</rt></ruby>に！おめでとう、タイ！<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>でMCは<ruby>早<rt>はや</rt></ruby>いよ。<br>*(Ơ thật à! Chúc mừng Thái! Một năm lên MC là nhanh đấy.)* |
| Thái | プトラさんのおかげです。<ruby>毎日<rt>まいにち</rt></ruby><ruby>支<rt>ささ</rt></ruby>えてもらいました。<br>*(Nhờ anh Putra ạ. Ngày nào anh cũng hỗ trợ em.)* |
| Putra | <ruby>違<rt>ちが</rt></ruby>うよ。タイの<ruby>努力<rt>どりょく</rt></ruby>だ。<ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くまでN3<ruby>勉強<rt>べんきょう</rt></ruby>してるの、<ruby>俺<rt>おれ</rt></ruby>は<ruby>知<rt>し</rt></ruby>ってる。<br>*(Không đâu. Là Thái cố gắng đấy. Tôi biết em học N3 đến đêm khuya.)* |
| Thái | プトラさんは<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、どう<ruby>考<rt>かんが</rt></ruby>えていますか？<br>*(Anh Putra, năm 2 anh tính sao?)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>はSSW1の<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る。<ruby>残<rt>のこ</rt></ruby>り<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>2026<rt>にせんにじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>帰国<rt>きこく</rt></ruby>。<br>*(Tôi vào năm 3 SSW1. Còn 3 năm nữa thì về nước tháng 4 năm 2026.)* |
| Thái | え、<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby><ruby>帰<rt>かえ</rt></ruby>るんですか…<ruby>淋<rt>さび</rt></ruby>しくなりますね。<br>*(Ơ, 3 năm nữa anh về ạ… Buồn nhỉ.)* |
| Putra | でもまだ<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>だよ。タイがN2を<ruby>取<rt>と</rt></ruby>るまで<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てやる。<br>*(Nhưng còn 3 năm bên nhau mà. Tôi chăm em đến khi em lấy được N2.)* |
| Thái | ありがとうございます…！<br>*(Em cảm ơn anh!)* |

---

## Tình huống 6 — Izakaya 鳥貴族 · 19:00 cuối tuần, cụng ly mừng tròn 1 năm

| Vai | Lời thoại |
|---|---|
| Sakurai | （ジョッキを<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>経過<rt>けいか</rt></ruby><ruby>祝<rt>いわ</rt></ruby>い、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Nâng cốc bia. Thái nhé, mừng tròn 1 năm, cạn!)* |
| Putra | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn!)* |
| Thái | <ruby>乾杯<rt>かんぱい</rt></ruby>！<ruby>皆<rt>みな</rt></ruby>さん、お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Cạn! Mọi người, em được mọi người chăm sóc rất nhiều ạ.)* |
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>に<ruby>給与<rt>きゅうよ</rt></ruby>アップに、おまけにMCオペレータ<ruby>昇格<rt>しょうかく</rt></ruby>。すごいな。<br>*(Thái nhé, đỗ cấp 3, tăng lương, lại còn lên thợ vận hành MC. Ghê thật.)* |
| Thái | いえいえ、<ruby>運<rt>うん</rt></ruby>がよかっただけです。<br>*(Không không, em chỉ may mắn thôi ạ.)* |
| Sakurai | <ruby>運<rt>うん</rt></ruby>じゃないよ。<ruby>努力<rt>どりょく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>だ。<ruby>謙遜<rt>けんそん</rt></ruby>しすぎ。<br>*(Không phải may. Là kết quả của cố gắng. Đừng khiêm tốn quá.)* |
| Thái | すみません、「<ruby>謙遜<rt>けんそん</rt></ruby>」というのは？<br>*(Xin lỗi, "kenson" nghĩa là gì ạ?)* |
| Putra | <ruby>自分<rt>じぶん</rt></ruby>を<ruby>低<rt>ひく</rt></ruby>く<ruby>言<rt>い</rt></ruby>うこと。「いえいえ」とか「まだまだです」とか。<br>*(Là nói thấp về bản thân. Kiểu "không không" hay "còn kém lắm" đó.)* |
| Thái | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。じゃあ、<ruby>素直<rt>すなお</rt></ruby>に「ありがとうございます」と<ruby>言<rt>い</rt></ruby>います。<br>*(Em hiểu rồi. Vậy em nói thẳng "cảm ơn ạ" thôi.)* |
| Sakurai | そう、それでいい。<ruby>俺<rt>おれ</rt></ruby>も<ruby>来年<rt>らいねん</rt></ruby>は<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>を<ruby>計画中<rt>けいかくちゅう</rt></ruby>だ。<br>*(Ừ, vậy là đúng. Mình sang năm cũng đang lên kế hoạch thi gia công cơ khí cấp 1.)* |
| Thái | サクライさん、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>はすごいです！<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Anh Sakurai, cấp 1 ghê quá! Anh cố lên ạ.)* |

---

## Tình huống 7 — Izakaya 鳥貴族 · 20:00, Putra báo tin (quan sát đàn anh chia sẻ kế hoạch)

| Vai | Lời thoại |
|---|---|
| Putra | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>俺<rt>おれ</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>し<ruby>知<rt>し</rt></ruby>らせがあります。<br>*(Mọi người, mình cũng có một tin nhỏ.)* |
| Thái | プトラさん、<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Anh Putra, gì vậy ạ?)* |
| Putra | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1の<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>残<rt>のこ</rt></ruby>り<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>帰国<rt>きこく</rt></ruby>です。<br>*(Từ tháng 4 mình vào năm 3 SSW1. Còn 3 năm nữa là về nước.)* |
| Sakurai | <ruby>淋<rt>さび</rt></ruby>しくなるな、プトラ。<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby><ruby>結婚<rt>けっこん</rt></ruby>するのか？<br>*(Sẽ buồn lắm đấy Putra. 3 năm nữa cưới à?)* |
| Putra | はい、<ruby>故郷<rt>こきょう</rt></ruby>のジャカルタで<ruby>結婚<rt>けっこん</rt></ruby>します。<ruby>彼女<rt>かのじょ</rt></ruby>がずっと<ruby>待<rt>ま</rt></ruby>っています。<br>*(Vâng, sẽ cưới ở quê Jakarta. Bạn gái đợi mãi rồi.)* |
| Thái | プトラさん、<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>までに<ruby>何<rt>なに</rt></ruby>を<ruby>達成<rt>たっせい</rt></ruby>したいですか？<br>*(Anh Putra, đến lúc đó anh muốn đạt được điều gì ạ?)* |
| Putra | お<ruby>金<rt>かね</rt></ruby>を<ruby>貯<rt>た</rt></ruby>めて、<ruby>家<rt>いえ</rt></ruby>を<ruby>建<rt>た</rt></ruby>てる。それから、できれば<ruby>金型<rt>かながた</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>って、インドネシアで<ruby>小<rt>ちい</rt></ruby>さい<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めたいです。<br>*(Để dành tiền, xây nhà. Rồi nếu được thì mang theo kỹ thuật khuôn về, lập một công ty nhỏ ở Indonesia.)* |
| Thái | （メモする）<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>夢<rt>ゆめ</rt></ruby>ですね。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Ghi sổ. Ước mơ tuyệt vời quá. Em học được nhiều ạ.)* |
| Putra | タイも<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てたほうがいい。<ruby>毎年<rt>まいとし</rt></ruby><ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>って<ruby>修正<rt>しゅうせい</rt></ruby>するんだ。<br>*(Thái cũng nên lập kế hoạch 5 năm. Mỗi năm nhìn lại rồi điều chỉnh.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ずやります。<br>*(Vâng, em sẽ làm.)* |

---

## Tình huống 8 — Phòng 201 · 22:00, video call Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê. Ôn lại từ vựng JP chương này qua hội thoại Việt.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, anh có nhiều tin báo lắm. |
| Mai | (tiếng Việt) Hôm nay anh có cuộc 面談 với trưởng nhà máy đúng không? Thế nào rồi? |
| Thái | (tiếng Việt) Em còn nhớ từ 面談 cơ à! Em giỏi quá. Ờ, kết quả tốt em ạ. Một, đi muộn 0 nghỉ 0 tai nạn 0 — họ gọi là 勤怠 hoàn hảo. Hai, ba chứng chỉ với 機械加工 3級. Ba, từ tháng sau anh lên thợ vận hành máy MC — họ gọi là 昇格 lên MCオペレータ, kế nhiệm anh Suzuki. |
| Mai | (tiếng Việt) Trời ơi anh giỏi quá! Còn gì nữa không? |
| Thái | (tiếng Việt) Còn nữa. Lương tăng 5%, từ 210 lên 220 nghìn yên một tháng. Anh vẫn gửi mẹ 50 nghìn yên mỗi tháng, từ giờ có thể dư hơn để dành. |
| Mai | (tiếng Việt) Hay quá. Năm 2 anh đặt mục tiêu gì? |
| Thái | (tiếng Việt) Bốn cái: lên thợ vận hành MC đầy đủ, học tiếp SolidWorks tự học, thi JLPT N3 tháng 12 này, và thi 機械加工 2級 tháng 3 năm 2024. |
| Mai | (tiếng Việt) Em ghi lại đây. Mỗi tháng em sẽ hỏi anh tiến độ một lần. |
| Thái | (tiếng Việt) Còn một chuyện anh muốn nói nghiêm túc. Em đợi anh 5 năm được không? Anh ổn định rồi cưới em. |
| Mai | (tiếng Việt, im một lúc) … Anh nghiêm túc đấy chứ? |
| Thái | (tiếng Việt) Vâng. Anh đã có kế hoạch rõ ràng. |
| Mai | (tiếng Việt, khóc nhẹ) Em đợi. Tuần sau em gửi anh một thứ. |
| Thái | (tiếng Việt) Cảm ơn em. Anh đi ngủ đây, mai vẫn 7 giờ rưỡi xuống sảnh. |

---

## Tình huống 9 — Phòng 201 · 1 tuần sau 19:00, nhận bưu kiện từ Việt Nam

| Vai | Lời thoại |
|---|---|
| Putra | （<ruby>玄関<rt>げんかん</rt></ruby>から<ruby>戻<rt>もど</rt></ruby>る）タイ、<ruby>小包<rt>こづつみ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いたよ。<br>*(Từ sảnh quay lại. Thái, có kiện hàng nè.)* |
| Thái | え、<ruby>誰<rt>だれ</rt></ruby>からですか？<br>*(Ơ, của ai vậy?)* |
| Putra | ベトナムから。<ruby>送<rt>おく</rt></ruby>り<ruby>主<rt>ぬし</rt></ruby>は「Mai」と<ruby>書<rt>か</rt></ruby>いてある。<br>*(Từ Việt Nam. Người gửi ghi "Mai".)* |
| Thái | （<ruby>箱<rt>はこ</rt></ruby>を<ruby>開<rt>あ</rt></ruby>ける）…これは…<ruby>白<rt>しろ</rt></ruby>いアオザイです。<ruby>名前<rt>なまえ</rt></ruby>が<ruby>刺繍<rt>ししゅう</rt></ruby>してあります。「Thái」と「Mai」と。<br>*(Mở hộp. Đây là… áo dài trắng. Có thêu tên. "Thái" và "Mai".)* |
| Putra | え、<ruby>恋人<rt>こいびと</rt></ruby>から？<br>*(Ơ, của bạn gái à?)* |
| Thái | はい、<ruby>先週<rt>せんしゅう</rt></ruby>ビデオ<ruby>通話<rt>つうわ</rt></ruby>で「<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby><ruby>結婚<rt>けっこん</rt></ruby>してください」と<ruby>言<rt>い</rt></ruby>いました。<br>*(Vâng, tuần trước qua video call em nói "5 năm nữa lấy anh nhé".)* |
| Putra | え、プロポーズ！おめでとう、タイ！<ruby>本当<rt>ほんとう</rt></ruby>におめでとう！<br>*(Ôi, cầu hôn! Chúc mừng Thái! Chúc mừng thật lòng!)* |
| Thái | （<ruby>涙<rt>なみだ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>く）ありがとうございます。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Lau nước mắt. Cảm ơn anh. Em sẽ cố 5 năm.)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>の<ruby>結婚式<rt>けっこんしき</rt></ruby>も<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>。タイの<ruby>結婚式<rt>けっこんしき</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>ハノイに<ruby>行<rt>い</rt></ruby>くからな。<br>*(Đám cưới mình 3 năm nữa. Đám cưới Thái 5 năm nữa. Mình nhất định bay sang Hà Nội đấy.)* |
| Thái | はい、<ruby>約束<rt>やくそく</rt></ruby>です。<br>*(Vâng, hứa rồi đấy.)* |

---

## Tình huống 10 — Phòng 201 · 23:00 đêm cuối tháng 4, viết nhật ký (cảnh tiếng Việt cá nhân)

> Cảnh tiếng Việt — Thái viết nhật ký một mình, chốt mạch năm 1 và mở mạch năm 2.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nhật ký) Ngày 30 tháng 4 năm 2023. Đúng 12 tháng từ ngày đặt chân xuống Centrair. |
| Thái | (tiếng Việt) Năm 1 đã làm được những gì? Một, học tiếng Nhật từ N4 yếu lên gần N3 — biết 報連相, 二次サプライヤー, キャビコア, 金型, 安全第一, 5S, KY, 危険予知, 朝礼, ヒヤリハット, 機械加工, 磨き, CAD, MCオペレータ. |
| Thái | (tiếng Việt) Hai, ba chứng chỉ Nhật cấp — フォークリフト, 玉掛け, 研削砥石. Cộng thêm 機械加工 3級. |
| Thái | (tiếng Việt) Ba, chủ trì 朝礼 hai lần. Báo cáo ヒヤリハット ba lần. Không có tai nạn nào, không nghỉ ngày nào. |
| Thái | (tiếng Việt) Bốn, lương 210 → 220 nghìn yên. Gửi mẹ đều 50 nghìn mỗi tháng, có để dành. |
| Thái | (tiếng Việt) Năm, có bạn cùng phòng Putra. Có anh đàn anh Sakurai. Có ông Tanaka trưởng nhà máy luôn nhìn ra mình cố gắng. |
| Thái | (tiếng Việt) Năm 2 phải làm gì? Một, lên thợ vận hành MC đầy đủ — sáng MC, chiều hoàn thiện. Hai, SolidWorks trung cấp, học tự túc một tiếng mỗi tối. Ba, JLPT N3 tháng 12/2023. Bốn, 機械加工 2級 tháng 3/2024. |
| Thái | (tiếng Việt) Năm 3, 4, 5 — về sau tính tiếp. Nhưng đích đến đã rõ: 5 năm lấy được N2, lên 設計者, đủ điều kiện xin 永住, về cưới Mai. |
| Thái | (tiếng Việt) Mẹ ơi, Mai ơi, ráng đợi con thêm 4 năm nữa. |
| Thái | （<ruby>携帯<rt>けいたい</rt></ruby>を<ruby>消<rt>け</rt></ruby>す、<ruby>静<rt>しず</rt></ruby>かに<ruby>布団<rt>ふとん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る）<ruby>明日<rt>あした</rt></ruby>もまた<ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>玄関<rt>げんかん</rt></ruby>です。<br>*(Tắt điện thoại, lặng lẽ chui vào chăn. Mai lại 7 giờ rưỡi ở sảnh.)* |

---

## Đọng lại chương 12

Tròn một năm. Trong cuộc **面談** với 工場長 Tanaka, Thái học được trọn bộ mẫu câu công sở Nhật cho buổi đánh giá thường niên: tiếp nhận thành tích **勤怠 (遅刻ゼロ・欠勤ゼロ・無事故)**, trả lời khiêm nhường về **資格** (フォークリフト・玉掛け・研削砥石) và **機械加工 3級**, nghe kế hoạch **昇格** lên **MCオペレータ** với từ **後継** (người kế nhiệm), nhận thông báo **給与アップ** 5% và đáp lễ bằng **身に余る評価です**. Thái cũng học thêm khái niệm **謙遜** (khiêm tốn) qua Sakurai ở izakaya, và quan sát đàn anh Putra trình bày kế hoạch 3 năm về Jakarta — bài học về việc **lập kế hoạch dài hạn và mỗi năm 振り返り để 修正**. Chương khép lại bằng video call cầu hôn Mai và bưu kiện áo dài thêu tên — cam kết 5 năm. Mọi mẫu câu, từ vựng, chứng chỉ, mối quan hệ của 12 chương trước đều đọng thành nền móng năm 2 sắp tới.

> Từ vựng & mẫu câu chương này: 1年経過・振り返り・面談・勤怠・遅刻ゼロ・欠勤ゼロ・無事故・資格・機械加工3級・磨き技術・CAD入門・SolidWorks・昇格・MCオペレータ・後継・引き継ぐ・受験・JLPT N3・給与アップ・送金・親孝行・乾杯・謙遜・素直に・帰国・小包・刺繍・プロポーズ・約束・身に余る評価です・〜たいと思っております・〜というのは?・承知いたしました

## Bí quyết chương

- **Khép năm 1, mở năm 2**: Cấu trúc 面談 + izakaya + nhật ký — 3 lớp tổng kết (chính thức công ty, bạn bè đồng đợt, cá nhân).
- **Kế hoạch năm 2 rõ ràng**: 4 mục tiêu (MC + SolidWorks + N3 + 2級). Mở mạch sách 15.
- **Cầu hôn Mai**: Tình tiết đặc trưng — lặp đến sách 18.
- **Tin Putra còn 3 năm**: Đặt mốc đếm ngược — sách 17 Putra sẽ về.
- **Áo dài thêu tên**: Biểu tượng cam kết — gửi 6 tháng trước, Mai đã chuẩn bị từ trước.

> *"30/4/2023. 12 tháng khép. 3 chứng chỉ + 機械加工 3級 + 昇格 MCオペレータ + 給与アップ + Mai đợi 5 năm. Năm 2 dồn dập."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 経過 | けいか | KINH QUÁ | trôi qua |
| 面談 | めんだん | DIỆN ĐÀM | buổi gặp mặt đánh giá |
| 勤怠 | きんたい | CẦN ĐÃI | chuyên cần |
| 欠勤 | けっきん | KHUYẾT CẦN | nghỉ làm |
| 出勤 | しゅっきん | XUẤT CẦN | đi làm |
| 実績 | じっせき | THỰC TÍCH | thành tích |
| 研削砥石 | けんさくといし | NGHIÊN TIÊU CHỈ THẠCH | đá mài |
| 入門 | にゅうもん | NHẬP MÔN | nhập môn |
| 自信 | じしん | TỰ TÍN | tự tin |
| 昇格 | しょうかく | THĂNG CÁCH | thăng cấp |
| 後継 | こうけい | HẬU KẾ | người kế nhiệm |
| 引き継ぐ | ひきつぐ | DẪN KẾ | tiếp nhận, bàn giao |
| 独学 | どくがく | ĐỘC HỌC | tự học |
| 受験 | じゅけん | THỤ NGHIỆM | dự thi |
| 計画的 | けいかくてき | KẾ HOẠCH ĐÍCH | có kế hoạch |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 反映 | はんえい | PHẢN ÁNH | phản ánh |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 見直し | みなおし | KIẾN TRỰC | xem xét lại |
| 送金 | そうきん | TỐNG KIM | gửi tiền |
| 親孝行 | おやこうこう | THÂN HIẾU HẠNH | hiếu thảo |
| 努力 | どりょく | NỖ LỰC | nỗ lực |
| 支える | ささえる | CHI | hỗ trợ |
| 帰国 | きこく | QUY QUỐC | về nước |
| 謙遜 | けんそん | KHIÊM TỐN | khiêm tốn |
| 素直 | すなお | TỐ TRỰC | thẳng thắn, thật thà |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 達成 | たっせい | ĐẠT THÀNH | đạt được |
| 故郷 | こきょう | CỐ HƯƠNG | quê hương |
| 結婚 | けっこん | KẾT HÔN | kết hôn |
| 修正 | しゅうせい | TU CHÍNH | điều chỉnh |
| 小包 | こづつみ | TIỂU BAO | bưu kiện |
| 送り主 | おくりぬし | TỐNG CHỦ | người gửi |
| 恋人 | こいびと | LUYẾN NHÂN | người yêu |
| 結婚式 | けっこんしき | KẾT HÔN THỨC | đám cưới |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
