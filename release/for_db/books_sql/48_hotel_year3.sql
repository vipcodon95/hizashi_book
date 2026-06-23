-- Hizashi LITE book SQL — Trang Y3 — Khách sạn năm 3 (SSW1 + 副仲居頭)
-- curriculum_id = 800000048  (book_seq=48)
-- nguồn: books/48_hotel_year3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000048, 'N4', 'markdown_book', 'Khách sạn', 'Trang Y3 — Khách sạn năm 3 (SSW1 + 副仲居頭)', 'Bộ sách Hizashi — Trang Y3 — Khách sạn năm 3 (SSW1 + 副仲居頭)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000001, 800000048, NULL, 'markdown_book', 'T1. Mở màn năm ba — sempai-of-sempai của hai kohai (3年目の春・先輩の先輩へ)', '# Sách thực tập sinh khách sạn · T1. Mở màn năm ba — sempai-of-sempai của hai kohai (3年目の春・先輩の先輩へ)

> **Mục tiêu nhân vật:** Trang (24-25 tuổi, Huế) bước vào năm ba — năm cuối TTS tại ryokan Tsukiyomi-an (月詠庵) ở Kyoto. Học các mẫu hội thoại tiếng Nhật của vai sempai-of-sempai: nhận phân công chỉ đạo từ 女将, chào hỏi 若女将 mới về, gặp kohai năm 2 (Lan) và kohai năm 1 mới (Mai), bàn giao quy trình お出迎え bằng keigo công sở, hỏi lại từ chuyên ngành (女将代理・指導係・新人研修・在留資格更新), và báo cáo cuối ngày bằng 報連相.

---

## Bối cảnh

Ngày 1 tháng 4 năm 2027, đầu năm tài khoá Nhật. Trang năm ba TTS tại ryokan Tsukiyomi-an (月詠庵) ở Kyoto-Higashiyama, trình độ N3 đang ôn. Sempai Yumiko vẫn ở bộ phận 仲居; kohai năm 2 Lan đã chuyển sang phụ trách 客室; Mai (Vĩnh Phúc, 21t) là kohai năm 1 vừa sang Nhật được 2 tuần, đang ở giai đoạn 新人研修. 若女将 Aiko (con gái 女将 Sato, 28t) vừa du học Thuỵ Sĩ ngành hospitality về và bắt đầu tham gia điều hành. Chương này tập trung các mẫu câu giao tiếp công sở đầu năm 3: nhận vai sempai-of-sempai, chào 若女将, bàn giao kỹ năng cho kohai.

---

## Tình huống 1 — Phòng họp lớn ryokan · 8:00, 女将 Sato thông báo năm tài khoá mới và giới thiệu 若女将

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年度<rt>ねんど</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mọi người, chào buổi sáng. Từ hôm nay năm tài khoá 2027 bắt đầu. Mong mọi người hợp tác.)* |
| Cả phòng | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng. Mong bà chỉ bảo ạ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>今年度<rt>こんねんど</rt></ruby>、<ruby>大<rt>おお</rt></ruby>きなお<ruby>知<rt>し</rt></ruby>らせが<ruby>三<rt>みっ</rt></ruby>つございます。まず<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>娘<rt>むすめ</rt></ruby>のアイコが<ruby>留学<rt>りゅうがく</rt></ruby>から<ruby>戻<rt>もど</rt></ruby>り、<ruby>若女将<rt>わかおかみ</rt></ruby>として<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>就任<rt>しゅうにん</rt></ruby>いたします。<br>*(Năm nay có 3 thông báo lớn. Thứ nhất, con gái tôi Aiko đã từ Thuỵ Sĩ về, hôm nay nhậm chức 若女将.)* |
| Aiko | <ruby>若女将<rt>わかおかみ</rt></ruby>のアイコと<ruby>申<rt>もう</rt></ruby>します。スイスのホテル<ruby>学校<rt>がっこう</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んでまいりました。<ruby>皆<rt>みな</rt></ruby>さんからおもてなしの<ruby>心<rt>こころ</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>わりたいと<ruby>思<rt>おも</rt></ruby>います。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tôi là Aiko, 若女将 mới. Tôi đã học ở trường hospitality Thuỵ Sĩ về. Mong được mọi người chỉ bảo về tinh thần omotenashi.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、トランさんが<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>後輩<rt>こうはい</rt></ruby><ruby>二<rt>ふた</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>指導係<rt>しどうがかり</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thứ hai, Trang vào năm 3. Tôi nhờ em làm 指導係 cho hai kohai.)* |
| Trang | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めさせていただきます。<br>*(Vâng, em xin được hết sức làm tốt ạ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ベトナムから<ruby>新人<rt>しんじん</rt></ruby>のマイさんが<ruby>先週<rt>せんしゅう</rt></ruby><ruby>着任<rt>ちゃくにん</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>新人研修<rt>しんじんけんしゅう</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>します。<br>*(Thứ ba, kohai mới Mai từ Việt Nam đã đến tuần trước. Hôm nay bắt đầu 新人研修.)* |
| Mai | マイと<ruby>申<rt>もう</rt></ruby>します。<ruby>何<rt>なに</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりませんが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là Mai. Em chưa biết gì, mong mọi người chỉ bảo ạ.)* |

---

## Tình huống 2 — Hành lang sau họp · 8:30, Trang chào 若女将 Aiko bằng keigo

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>若女将<rt>わかおかみ</rt></ruby>、<ruby>改<rt>あらた</rt></ruby>めてご<ruby>挨拶<rt>あいさつ</rt></ruby>させていただきます。<ruby>仲居<rt>なかい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のトランと<ruby>申<rt>もう</rt></ruby>します。<br>*(Thưa 若女将, em xin được chào lại chính thức. Em là Trang, nakai năm 3.)* |
| Aiko | トランさん、<ruby>母<rt>はは</rt></ruby>からよくお<ruby>話<rt>はなし</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>っています。<ruby>朝<rt>あさ</rt></ruby>の<ruby>布団<rt>ふとん</rt></ruby><ruby>上<rt>あ</rt></ruby>げが<ruby>一番<rt>いちばん</rt></ruby><ruby>早<rt>はや</rt></ruby>いとか。<br>*(Trang-san, mẹ tôi hay kể về em. Nghe nói gấp futon buổi sáng em nhanh nhất.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。まだまだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>です。<ruby>若女将<rt>わかおかみ</rt></ruby>はスイスで<ruby>何年<rt>なんねん</rt></ruby><ruby>学<rt>まな</rt></ruby>ばれたんですか?<br>*(Em không dám. Em vẫn đang học. Thưa 若女将, bà học ở Thuỵ Sĩ mấy năm ạ?)* |
| Aiko | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>です。ローザンヌのホテル<ruby>学校<rt>がっこう</rt></ruby>でした。<ruby>西洋<rt>せいよう</rt></ruby>のホテルと<ruby>旅館<rt>りょかん</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いを<ruby>痛感<rt>つうかん</rt></ruby>しました。<br>*(3 năm. Trường hospitality Lausanne. Tôi thấm thía khác biệt giữa khách sạn Tây và ryokan.)* |
| Trang | <ruby>違<rt>ちが</rt></ruby>い...というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんなことでしょうか?<br>*(Khác biệt... cụ thể là thế nào ạ?)* |
| Aiko | ホテルは「サービス」、<ruby>旅館<rt>りょかん</rt></ruby>は「おもてなし」。<ruby>言葉<rt>ことば</rt></ruby>にしないお<ruby>気持<rt>きも</rt></ruby>ちを<ruby>察<rt>さっ</rt></ruby>する<ruby>力<rt>ちから</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>います。トランさん、これから<ruby>色々<rt>いろいろ</rt></ruby><ruby>教<rt>おし</rt></ruby>えてくださいね。<br>*(Hotel là "service", ryokan là "omotenashi". Năng lực đoán ý chưa nói thành lời thì khác. Trang-san, sau này em chỉ tôi nhiều nhé.)* |
| Trang | <ruby>滅相<rt>めっそう</rt></ruby>もございません。<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<br>*(Em không dám. Ngược lại em mới là người được học ạ.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 9:00, Trang gặp Lan để bàn phân chia kèm Mai

*Lan là kohai năm 2 của Trang, vừa lên năm 2 từ tháng 4 này.*

| Vai | Lời thoại |
|---|---|
| Lan | トラン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>になりました! でも<ruby>急<rt>きゅう</rt></ruby>にマイちゃんの<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>るって、<ruby>務<rt>つと</rt></ruby>まるかなって<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Chị Trang, em lên năm 2 rồi! Nhưng tự dưng phải lo cho Mai, em không tự tin có làm nổi không.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じだから。ランちゃんは<ruby>客室<rt>きゃくしつ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えて、<ruby>私<rt>わたし</rt></ruby>は<ruby>接客<rt>せっきゃく</rt></ruby><ruby>全般<rt>ぜんぱん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>するね。<br>*(Yên tâm, giống chị 1 năm trước thôi. Lan dạy việc 客室, chị phụ trách 接客 chung.)* |
| Lan | じゃあ<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>きと<ruby>掃除<rt>そうじ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えていいですか?<br>*(Vậy việc trải futon và dọn dẹp em dạy được không?)* |
| Trang | うん、<ruby>順番<rt>じゅんばん</rt></ruby>はね、<ruby>挨拶<rt>あいさつ</rt></ruby>→<ruby>言葉遣<rt>ことばづか</rt></ruby>い→<ruby>身<rt>み</rt></ruby>だしなみ→<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>→<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>き、の<ruby>順番<rt>じゅんばん</rt></ruby>がいい。<ruby>急<rt>いそ</rt></ruby>がないで。<br>*(Ừ, thứ tự là chào hỏi → cách nói → tác phong → tên dụng cụ → trải futon. Đừng vội.)* |
| Lan | <ruby>言葉遣<rt>ことばづか</rt></ruby>いって、<ruby>敬語<rt>けいご</rt></ruby>からですか?<br>*(Cách nói, là bắt đầu từ kính ngữ ạ?)* |
| Trang | まずは「いらっしゃいませ」「かしこまりました」「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください」の<ruby>三<rt>みっ</rt></ruby>つだけでいい。<ruby>一気<rt>いっき</rt></ruby>に<ruby>詰<rt>つ</rt></ruby>め<ruby>込<rt>こ</rt></ruby>むと<ruby>潰<rt>つぶ</rt></ruby>れちゃう。<br>*(Đầu tiên chỉ ba câu "irasshaimase", "kashikomarimashita", "shoushou omachi kudasai" thôi. Nhồi một lúc thì gãy.)* |
| Lan | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>、<ruby>三人<rt>さんにん</rt></ruby>で<ruby>復習<rt>ふくしゅう</rt></ruby>しませんか?<br>*(Em hiểu. Tối thứ Tư hàng tuần ba người ôn cùng nhau được không?)* |
| Trang | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>寮<rt>りょう</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>にしよう。<br>*(Đồng ý. Địa điểm chọn nhà ăn ký túc.)* |

---

## Tình huống 4 — Sảnh chính · 10:00, Trang dẫn Mai đi giới thiệu các vị trí trong ryokan

| Vai | Lời thoại |
|---|---|
| Trang | マイちゃん、まずは<ruby>建物<rt>たてもの</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えよう。ここが<ruby>玄関<rt>げんかん</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>最初<rt>さいしょ</rt></ruby>にお<ruby>迎<rt>むか</rt></ruby>えする<ruby>場所<rt>ばしょ</rt></ruby>。<br>*(Mai, đầu tiên nhớ tên các khu nhà nhé. Đây là 玄関, nơi đầu tiên đón khách.)* |
| Mai | げんかん...<ruby>靴<rt>くつ</rt></ruby>を<ruby>脱<rt>ぬ</rt></ruby>ぐ<ruby>場所<rt>ばしょ</rt></ruby>ですね。<br>*(Genkan... là chỗ cởi giày phải không ạ.)* |
| Trang | そう。ここに<ruby>下駄箱<rt>げたばこ</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>靴<rt>くつ</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>右側<rt>みぎがわ</rt></ruby>に<ruby>揃<rt>そろ</rt></ruby>えて<ruby>入<rt>い</rt></ruby>れる。これが<ruby>第一<rt>だいいち</rt></ruby>のおもてなし。<br>*(Đúng. Đây là 下駄箱. Giày khách nhất định xếp ngay ngắn ở bên phải. Đây là omotenashi đầu tiên.)* |
| Mai | はい、<ruby>右側<rt>みぎがわ</rt></ruby>に<ruby>揃<rt>そろ</rt></ruby>えて。<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, xếp ngay ngắn bên phải. Em sẽ nhớ.)* |
| Trang | <ruby>奥<rt>おく</rt></ruby>が<ruby>帳場<rt>ちょうば</rt></ruby>。フロントのことね。チェックイン・チェックアウトの<ruby>受付<rt>うけつけ</rt></ruby>。<br>*(Bên trong là 帳場. Tức là quầy lễ tân. Tiếp nhận check-in và check-out.)* |
| Mai | <ruby>帳場<rt>ちょうば</rt></ruby>...<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>普通<rt>ふつう</rt></ruby>のホテルでは「フロント」ですよね?<br>*(Chouba... lần đầu nghe từ này. Khách sạn bình thường là "front" đúng không ạ?)* |
| Trang | そう、<ruby>旅館<rt>りょかん</rt></ruby><ruby>独特<rt>どくとく</rt></ruby>の<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>。<ruby>他<rt>ほか</rt></ruby>にも<ruby>客室<rt>きゃくしつ</rt></ruby>は「お<ruby>部屋<rt>へや</rt></ruby>」、お<ruby>風呂<rt>ふろ</rt></ruby>は「お<ruby>湯<rt>ゆ</rt></ruby>」「<ruby>大浴場<rt>だいよくじょう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>う。<br>*(Đúng, cách nói riêng của ryokan. Còn 客室 gọi là "ohey", お風呂 là "oyu", "daiyokujou".)* |
| Mai | お<ruby>湯<rt>ゆ</rt></ruby>...お<ruby>水<rt>みず</rt></ruby>じゃなくてお<ruby>湯<rt>ゆ</rt></ruby>。<br>*(Oyu... không phải omizu mà là oyu.)* |
| Trang | <ruby>温泉<rt>おんせん</rt></ruby>だからお<ruby>湯<rt>ゆ</rt></ruby>。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>三<rt>みっ</rt></ruby>つの<ruby>言葉<rt>ことば</rt></ruby>を<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えよう。<br>*(Vì là onsen nên là oyu. Đừng vội, mỗi ngày nhớ chắc 3 từ.)* |

---

## Tình huống 5 — Phòng cấp dưỡng · 11:30, Yumiko sempai dặn dò Trang về vai 指導係

| Vai | Lời thoại |
|---|---|
| Yumiko | トランちゃん、<ruby>指導係<rt>しどうがかり</rt></ruby>おめでとう。でも<ruby>気<rt>き</rt></ruby>をつけてね、<ruby>一<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>大変<rt>たいへん</rt></ruby><ruby>変<rt>か</rt></ruby>わる<ruby>立場<rt>たちば</rt></ruby>だよ。<br>*(Trang-chan, chúc mừng nhận chỉ đạo. Nhưng cẩn thận đấy, vị trí thay đổi rất nhiều trong một năm.)* |
| Trang | ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>具体的<rt>ぐたいてき</rt></ruby>には<ruby>何<rt>なに</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつければよろしいでしょうか?<br>*(Chị Yumiko, em nên cẩn thận cụ thể về việc gì ạ?)* |
| Yumiko | <ruby>一<rt>ひと</rt></ruby>つは「<ruby>叱<rt>しか</rt></ruby>り<ruby>方<rt>かた</rt></ruby>」。<ruby>後輩<rt>こうはい</rt></ruby>は<ruby>姉妹<rt>しまい</rt></ruby>じゃない、<ruby>同僚<rt>どうりょう</rt></ruby>として<ruby>接<rt>せっ</rt></ruby>すること。<br>*(Một là cách trách mắng. Kohai không phải chị em, tiếp xúc như đồng nghiệp.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Vâng, em rõ. Cái thứ hai ạ?)* |
| Yumiko | <ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>まない。<ruby>必<rt>かなら</rt></ruby>ず<ruby>女将<rt>おかみ</rt></ruby>か<ruby>私<rt>わたし</rt></ruby>に<ruby>報連相<rt>ほうれんそう</rt></ruby>。<br>*(Khi khó khăn, đừng ôm một mình. Nhất định phải 報連相 với 女将 hoặc chị.)* |
| Trang | はい。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はございますか?<br>*(Vâng. Có cái thứ ba không ạ?)* |
| Yumiko | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>のSSW1の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れないこと。<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>世話<rt>せわ</rt></ruby>に<ruby>夢中<rt>むちゅう</rt></ruby>で、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>後回<rt>あとまわ</rt></ruby>しにする<ruby>子<rt>こ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<br>*(Thứ ba là đừng quên chuẩn bị SSW1 của chính mình. Có nhiều em mải lo cho kohai mà để hồ sơ của mình lại sau.)* |
| Trang | <ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Em khắc cốt ghi tâm. Em chân thành cảm ơn chị.)* |

---

## Tình huống 6 — Văn phòng 女将 · 13:30, Trang trình bày kế hoạch năm bằng số thứ tự

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>させていただきたく、お<ruby>時間<rt>じかん</rt></ruby><ruby>頂戴<rt>ちょうだい</rt></ruby>してもよろしいでしょうか?<br>*(Thưa 女将, em xin báo cáo kế hoạch năm 3, bà cho em xin thời gian được không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい、どうぞ<ruby>座<rt>すわ</rt></ruby>って。<br>*(Vâng, mời em ngồi.)* |
| Trang | <ruby>大<rt>おお</rt></ruby>きく<ruby>四<rt>よっ</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>「ホテル・<ruby>旅館<rt>りょかん</rt></ruby>サービス」を<ruby>受検<rt>じゅけん</rt></ruby>いたします。<br>*(Có 4 việc lớn. Thứ nhất, em thi 技能検定 cấp 3 ngành "Hotel-Ryokan service" tháng 7.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Vâng. Cái thứ hai?)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPTでN3を<ruby>取得<rt>しゅとく</rt></ruby>いたします。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ランさんとマイさんの<ruby>指導<rt>しどう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>のSSW1<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>開始<rt>かいし</rt></ruby>いたします。<br>*(Thứ hai, lấy N3 ở JLPT tháng 12. Thứ ba, phụ trách chỉ đạo Lan và Mai. Thứ tư, từ tháng 10 bắt đầu chuẩn bị hồ sơ SSW1 cho tháng 4 năm sau.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>確認<rt>かくにん</rt></ruby>ですが、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば、<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>として<ruby>認定<rt>にんてい</rt></ruby>され、SSW1の<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>になるのは<ruby>把握<rt>はあく</rt></ruby>していますね?<br>*(Tuyệt vời. Xác nhận lại: đậu 技能検定 cấp 3 sẽ được công nhận 良好修了, được miễn thi kỹ năng SSW1, em nắm chưa?)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>がSSW1<ruby>申請<rt>しんせい</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つになるということですね。<br>*(Vâng, em rõ ạ. Tức là giấy chứng nhận đậu sẽ là một trong các giấy tờ cần cho hồ sơ SSW1 đúng không ạ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>り。<ruby>女将<rt>おかみ</rt></ruby><ruby>代理<rt>だいり</rt></ruby>のアイコにも<ruby>共有<rt>きょうゆう</rt></ruby>しておきます。<br>*(Đúng vậy. Tôi sẽ chia sẻ với Aiko, 女将代理 của ryokan.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby><ruby>代理<rt>だいり</rt></ruby>...というのは<ruby>若女将<rt>わかおかみ</rt></ruby>のお<ruby>立場<rt>たちば</rt></ruby>でしょうか?<br>*(女将代理... có phải vị trí của 若女将 không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい、<ruby>私<rt>わたし</rt></ruby>が<ruby>不在<rt>ふざい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>はアイコが<ruby>最終<rt>さいしゅう</rt></ruby><ruby>判断<rt>はんだん</rt></ruby>をします。<ruby>覚<rt>おぼ</rt></ruby>えておいてください。<br>*(Vâng, khi tôi vắng mặt Aiko sẽ ra quyết định cuối. Em nhớ nhé.)* |

---

## Tình huống 7 — Khu vực 玄関 · 15:00, Aiko quan sát Trang đón đoàn khách và góp ý

*Một đoàn khách Đài Loan 4 người vừa đến. Trang ra đón theo nghi thức ryokan; Aiko đứng quan sát.*

| Vai | Lời thoại |
|---|---|
| Trang | いらっしゃいませ、<ruby>月詠庵<rt>つきよみあん</rt></ruby>へようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。お<ruby>足元<rt>あしもと</rt></ruby>お<ruby>気<rt>き</rt></ruby>をつけくださいませ。<br>*(Mời quý khách, hoan nghênh đến Tsukiyomi-an. Xin chú ý chân ạ.)* |
| Khách | (tiếng Anh) Thank you. We have a booking under Chen. |
| Trang | チェン<ruby>様<rt>さま</rt></ruby>でいらっしゃいますね。<ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>泊<rt>ぱく</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>食<rt>しょく</rt></ruby><ruby>付<rt>つ</rt></ruby>きで<ruby>承<rt>うけたまわ</rt></ruby>っております。お<ruby>履物<rt>はきもの</rt></ruby>はこちらにお<ruby>預<rt>あず</rt></ruby>かりいたします。<br>*(Quý khách Chen ạ. 4 người, 1 đêm 2 bữa, chúng tôi đã nhận đặt. Giày dép xin cho phép em nhận.)* |
| Khách | OK. (xếp giày) |
| Trang | お<ruby>部屋<rt>へや</rt></ruby>までご<ruby>案内<rt>あんない</rt></ruby>いたします。どうぞこちらへ。<br>*(Em xin dẫn quý khách lên phòng. Mời lối này.)* |

*Sau khi đoàn khách lên phòng, Aiko gọi Trang lại.*

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>履物<rt>はきもの</rt></ruby>、<ruby>右側<rt>みぎがわ</rt></ruby>に<ruby>揃<rt>そろ</rt></ruby>えていましたが、<ruby>向<rt>む</rt></ruby>きは<ruby>外側<rt>そとがわ</rt></ruby>に<ruby>向<rt>む</rt></ruby>けると<ruby>次<rt>つぎ</rt></ruby>お<ruby>履<rt>は</rt></ruby>きになる<ruby>時<rt>とき</rt></ruby>に<ruby>便利<rt>べんり</rt></ruby>ですよ。<br>*(Trang-san, giày khách em xếp bên phải rồi, nhưng nếu hướng mũi ra ngoài thì lần sau khách đi giày sẽ tiện hơn đấy.)* |
| Trang | あ、<ruby>気<rt>き</rt></ruby>づきませんでした。ありがとうございます。<br>*(À, em không để ý. Em cảm ơn ạ.)* |
| Aiko | スイスのホテルでも<ruby>同<rt>おな</rt></ruby>じです。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>次<rt>つぎ</rt></ruby>の<ruby>動作<rt>どうさ</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>想像<rt>そうぞう</rt></ruby>するのがおもてなしです。<br>*(Khách sạn Thuỵ Sĩ cũng vậy. Tưởng tượng trước hành động kế tiếp của khách chính là omotenashi.)* |
| Trang | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>明日<rt>あした</rt></ruby>からマイさんにも<ruby>同<rt>おな</rt></ruby>じことを<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Em học được nhiều. Từ mai em sẽ chỉ Mai điều này.)* |

---

## Tình huống 8 — Phòng giặt là · 16:30, Trang hướng dẫn Mai cách gấp 浴衣

| Vai | Lời thoại |
|---|---|
| Trang | マイちゃん、<ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>畳<rt>たた</rt></ruby>み<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えるね。やさしい<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>言<rt>い</rt></ruby>うから、<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>があったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Mai, chị dạy em gấp yukata nhé. Chị nói bằng yasashii nihongo, có từ nào không hiểu nhất định phải hỏi.)* |
| Mai | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị chỉ ạ.)* |
| Trang | まず、<ruby>左襟<rt>ひだりえり</rt></ruby>。<ruby>左<rt>ひだり</rt></ruby>のえりを、<ruby>上<rt>うえ</rt></ruby>に。<ruby>右襟<rt>みぎえり</rt></ruby>を、<ruby>下<rt>した</rt></ruby>に。<ruby>反対<rt>はんたい</rt></ruby>はダメ。<br>*(Đầu tiên, cổ trái. Cổ trái, lên trên. Cổ phải, xuống dưới. Ngược lại là không được.)* |
| Mai | <ruby>反対<rt>はんたい</rt></ruby>はダメ...なぜですか?<br>*(Ngược lại là không được... vì sao ạ?)* |
| Trang | <ruby>反対<rt>はんたい</rt></ruby>は、お<ruby>葬式<rt>そうしき</rt></ruby>の<ruby>着<rt>き</rt></ruby>せ<ruby>方<rt>かた</rt></ruby>。<ruby>死<rt>し</rt></ruby>んだ<ruby>人<rt>ひと</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>間違<rt>まちが</rt></ruby>えない。<br>*(Ngược lại là cách mặc cho người chết trong tang lễ. Tuyệt đối không sai.)* |
| Mai | え! <ruby>怖<rt>こわ</rt></ruby>い! <ruby>絶対<rt>ぜったい</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>左<rt>ひだり</rt></ruby><ruby>上<rt>うえ</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby><ruby>下<rt>した</rt></ruby>。<br>*(Ơ! Sợ quá! Em nhất định nhớ. Trái trên, phải dưới.)* |
| Trang | <ruby>次<rt>つぎ</rt></ruby>、そでを、<ruby>内側<rt>うちがわ</rt></ruby>に。それから、<ruby>下<rt>した</rt></ruby>から、<ruby>半分<rt>はんぶん</rt></ruby>に。これで<ruby>完成<rt>かんせい</rt></ruby>。<br>*(Tiếp, ống tay, vào trong. Rồi, từ dưới, gập đôi. Là xong.)* |
| Mai | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>一<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>。「えり」というのは、<ruby>首<rt>くび</rt></ruby>の<ruby>部分<rt>ぶぶん</rt></ruby>ですか?<br>*(Em hiểu. Một câu hỏi. "Eri" là phần cổ ạ?)* |
| Trang | そう、<ruby>首<rt>くび</rt></ruby>のところ。よく<ruby>聞<rt>き</rt></ruby>いてくれたね、えらい。<br>*(Đúng, chỗ cổ. Em hỏi tốt lắm, giỏi.)* |

---

## Tình huống 9 — Phòng nghỉ nhân viên · 17:30, Trang trao đổi với Lan về 在留資格更新

| Vai | Lời thoại |
|---|---|
| Lan | トラン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>になると、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>があるんですよね。<br>*(Chị Trang, lên năm 2 thì có việc gia hạn 在留資格 đúng không ạ.)* |
| Trang | うん、<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>への<ruby>切替<rt>きりかえ</rt></ruby>。<ruby>会社<rt>かいしゃ</rt></ruby>と<ruby>監理団体<rt>かんりだんたい</rt></ruby>が<ruby>手続<rt>てつづ</rt></ruby>きしてくれるけど、<ruby>本人<rt>ほんにん</rt></ruby>も<ruby>書類<rt>しょるい</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>する。<br>*(Ừ, chuyển sang 技能実習 số 2. Công ty và đoàn quản lý làm thủ tục, nhưng bản thân cũng chuẩn bị giấy tờ.)* |
| Lan | <ruby>監理団体<rt>かんりだんたい</rt></ruby>...というのは、<ruby>協同組合<rt>きょうどうくみあい</rt></ruby>のことですか?<br>*(Đoàn quản lý... là kyoudou kumiai ạ?)* |
| Trang | そう、<ruby>京都<rt>きょうと</rt></ruby><ruby>観光<rt>かんこう</rt></ruby>サービス<ruby>協同組合<rt>きょうどうくみあい</rt></ruby>。トランたちを<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れた<ruby>団体<rt>だんたい</rt></ruby>。<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>する。<br>*(Đúng, Kyoto Kankou Service Kyoudou Kumiai. Đoàn nhận bọn chị. Có khó khăn thì liên hệ.)* |
| Lan | <ruby>本人<rt>ほんにん</rt></ruby>が<ruby>用意<rt>ようい</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>って?<br>*(Giấy tờ bản thân chuẩn bị là gì ạ?)* |
| Trang | <ruby>在留<rt>ざいりゅう</rt></ruby>カード、パスポート、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>(<ruby>基礎級<rt>きそきゅう</rt></ruby>)、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>。<ruby>更新<rt>こうしん</rt></ruby>は<ruby>満了日<rt>まんりょうび</rt></ruby>の<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月前<rt>げつまえ</rt></ruby>から。<br>*(Thẻ cư trú, hộ chiếu, giấy đậu 技能検定 cấp cơ sở, juuminhyou. Gia hạn từ 3 tháng trước ngày hết hạn.)* |
| Lan | <ruby>満了日<rt>まんりょうび</rt></ruby>...というのは、<ruby>在留<rt>ざいりゅう</rt></ruby>カードに<ruby>書<rt>か</rt></ruby>いてある<ruby>日付<rt>ひづけ</rt></ruby>ですよね?<br>*(Ngày hết hạn... là ngày ghi trên thẻ cư trú phải không ạ?)* |
| Trang | そう、「<ruby>有効<rt>ゆうこう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>」。<ruby>今<rt>いま</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Đúng, "yuukou kigen". Lấy ra cùng xem nhé.)* |

---

## Tình huống 10 — Khu vực bếp · 18:30, Trang được giới thiệu thực đơn 懐石 buổi tối

| Vai | Lời thoại |
|---|---|
| Bếp trưởng | トランさん、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>懐石<rt>かいせき</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>先付<rt>さきづけ</rt></ruby>、<ruby>椀物<rt>わんもの</rt></ruby>、<ruby>造<rt>つく</rt></ruby>り、<ruby>焼物<rt>やきもの</rt></ruby>、<ruby>炊<rt>た</rt></ruby>き<ruby>合<rt>あ</rt></ruby>わせ、<ruby>酢物<rt>すのもの</rt></ruby>、<ruby>食事<rt>しょくじ</rt></ruby>、<ruby>水菓子<rt>みずがし</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>です。<br>*(Trang, tôi giải thích kaiseki hôm nay. Thứ tự: sakizuke, wanmono, tsukuri, yakimono, takiawase, sunomono, shokuji, mizugashi.)* |
| Trang | <ruby>八<rt>はっ</rt></ruby><ruby>品<rt>しな</rt></ruby>ですね。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>焼物<rt>やきもの</rt></ruby>は<ruby>何<rt>なに</rt></ruby>でしょうか?<br>*(Có 8 món ạ. Yakimono hôm nay là gì ạ?)* |
| Bếp trưởng | <ruby>若狭<rt>わかさ</rt></ruby>ぐじの<ruby>塩焼<rt>しおや</rt></ruby>き。<ruby>春<rt>はる</rt></ruby>の<ruby>魚<rt>さかな</rt></ruby>です。お<ruby>客様<rt>きゃくさま</rt></ruby>に「<ruby>季節<rt>きせつ</rt></ruby>の<ruby>魚<rt>さかな</rt></ruby>」と<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Cá nhồng Wakasa nướng muối. Cá mùa xuân. Truyền cho khách là "cá theo mùa".)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>炊<rt>た</rt></ruby>き<ruby>合<rt>あ</rt></ruby>わせ...というのは<ruby>煮物<rt>にもの</rt></ruby>のことですよね?<br>*(Vâng, em rõ. Takiawase... là món hầm phải không ạ?)* |
| Bếp trưởng | そう、<ruby>数種類<rt>すうしゅるい</rt></ruby>の<ruby>食材<rt>しょくざい</rt></ruby>を<ruby>別々<rt>べつべつ</rt></ruby>に<ruby>炊<rt>た</rt></ruby>いて、<ruby>一<rt>ひと</rt></ruby>つの<ruby>器<rt>うつわ</rt></ruby>に<ruby>盛<rt>も</rt></ruby>り<ruby>合<rt>あ</rt></ruby>わせる。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>筍<rt>たけのこ</rt></ruby>、<ruby>蕗<rt>ふき</rt></ruby>、<ruby>菜<rt>な</rt></ruby>の<ruby>花<rt>はな</rt></ruby>。<br>*(Đúng, vài loại nguyên liệu hầm riêng rồi bày chung một bát. Hôm nay măng, fuki, hoa cải.)* |
| Trang | <ruby>春<rt>はる</rt></ruby>の<ruby>山菜<rt>さんさい</rt></ruby>ですね。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>季節感<rt>きせつかん</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えるおもてなしですね。<br>*(Sansai mùa xuân ạ. Là omotenashi truyền cảm xúc theo mùa cho khách.)* |
| Bếp trưởng | その<ruby>通<rt>とお</rt></ruby>り。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>する<ruby>時<rt>とき</rt></ruby>、<ruby>食材<rt>しょくざい</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>と<ruby>季節<rt>きせつ</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>添<rt>そ</rt></ruby>えてください。<br>*(Đúng. Khi giải thích cho khách, nhất định kèm tên nguyên liệu và mùa.)* |

---

## Tình huống 11 — Phòng họp nhỏ · 19:30, báo cáo cuối ngày với Aiko và 女将

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>、<ruby>若女将<rt>わかおかみ</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Thưa 女将, 若女将, em xin báo cáo hôm nay.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい、どうぞ。<br>*(Vâng, mời em.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>合計<rt>ごうけい</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>。チェンご<ruby>一行<rt>いっこう</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>(<ruby>台湾<rt>たいわん</rt></ruby>)、<ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>御夫婦<rt>ごふうふ</rt></ruby>(<ruby>東京<rt>とうきょう</rt></ruby>)、<ruby>団体<rt>だんたい</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>(<ruby>大阪<rt>おおさか</rt></ruby>)です。<br>*(Khách hôm nay tổng 12 vị. Đoàn Chen 4 vị (Đài Loan), vợ chồng Yamada (Tokyo), đoàn khách 6 vị (Osaka).)* |
| Aiko | <ruby>連絡<rt>れんらく</rt></ruby><ruby>事項<rt>じこう</rt></ruby>は<ruby>何<rt>なに</rt></ruby>かありますか?<br>*(Có việc gì cần liên lạc không?)* |
| Trang | <ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby>ございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>明日<rt>あした</rt></ruby><ruby>朝食<rt>ちょうしょく</rt></ruby>を<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>早<rt>はや</rt></ruby>めてほしいとのご<ruby>要望<rt>ようぼう</rt></ruby>。<br>*(Có 2 việc. Thứ nhất, ông Yamada yêu cầu bữa sáng mai sớm hơn 30 phút.)* |
| Aiko | <ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>厨房<rt>ちゅうぼう</rt></ruby>に<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Tôi nhận. Sẽ chia sẻ với bếp. Cái thứ hai?)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>マイさんに<ruby>玄関<rt>げんかん</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>と<ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>畳<rt>たた</rt></ruby>み<ruby>方<rt>かた</rt></ruby>を<ruby>指導<rt>しどう</rt></ruby>いたしました。<ruby>明日<rt>あした</rt></ruby>は<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>きの<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Thứ hai, hôm nay đã chỉ Mai vị trí 玄関 và cách gấp yukata. Mai dự kiến dạy trải futon.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | ありがとう。<ruby>初日<rt>しょにち</rt></ruby>からお<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>明日<rt>あした</rt></ruby>もよろしくね。<br>*(Cảm ơn. Ngày đầu mệt rồi. Mai tiếp tục nhé.)* |
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em xin phép ạ.)* |

---

## Tình huống 12 — Ký túc ryokan, phòng chung · 21:00, ăn cơm tối với Lan, Mai, Yumiko

| Vai | Lời thoại |
|---|---|
| Yumiko | みんな、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>初日<rt>しょにち</rt></ruby>どうだった?<br>*(Mọi người mệt rồi. Ngày đầu thế nào?)* |
| Mai | <ruby>頭<rt>あたま</rt></ruby>が<ruby>爆発<rt>ばくはつ</rt></ruby>しそうです! げんかん、ちょうば、ゆかた、おもてなし...<br>*(Đầu em sắp nổ tung! Genkan, chouba, yukata, omotenashi...)* |
| Lan | わかる、<ruby>私<rt>わたし</rt></ruby>も<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>そうだった。<ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>みっ</rt></ruby>つでいい、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で<ruby>21<rt>にじゅういち</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>える。<br>*(Hiểu, mình 1 năm trước cũng vậy. Mỗi ngày 3 từ thôi, 1 tuần được 21 từ.)* |
| Trang | ランちゃん、いい<ruby>指導<rt>しどう</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>だね。<ruby>私<rt>わたし</rt></ruby>も<ruby>真似<rt>まね</rt></ruby>させて。<br>*(Lan, phương pháp dạy hay đấy. Chị cũng học theo nhé.)* |
| Yumiko | トランちゃん、<ruby>若女将<rt>わかおかみ</rt></ruby>とお<ruby>話<rt>はなし</rt></ruby>したんでしょ。どんな<ruby>方<rt>かた</rt></ruby>だった?<br>*(Trang-chan, em nói chuyện với 若女将 rồi nhỉ. Người thế nào?)* |
| Trang | <ruby>意外<rt>いがい</rt></ruby>に<ruby>気<rt>き</rt></ruby>さくな<ruby>方<rt>かた</rt></ruby>です。スイスで<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>されて、おもてなしを「<ruby>次<rt>つぎ</rt></ruby>の<ruby>動作<rt>どうさ</rt></ruby>を<ruby>想像<rt>そうぞう</rt></ruby>すること」と<ruby>表現<rt>ひょうげん</rt></ruby>されました。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Bất ngờ là người thân thiện. Học Thuỵ Sĩ 3 năm, định nghĩa omotenashi là "tưởng tượng hành động tiếp theo". Em học được nhiều.)* |
| Mai | <ruby>次<rt>つぎ</rt></ruby>の<ruby>動作<rt>どうさ</rt></ruby>を<ruby>想像<rt>そうぞう</rt></ruby>する...<ruby>難<rt>むずか</rt></ruby>しい!<br>*(Tưởng tượng hành động tiếp theo... khó!)* |
| Yumiko | <ruby>難<rt>むずか</rt></ruby>しいから<ruby>面白<rt>おもしろ</rt></ruby>い。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>身<rt>み</rt></ruby>につくものだよ。<br>*(Khó nên mới thú vị. Phải mất 3 năm mới ngấm.)* |

---

## Tình huống 13 — Hành lang khách · 22:00, sự cố nhỏ: khách Đài Loan gọi nhờ giúp

| Vai | Lời thoại |
|---|---|
| Khách Chen | すみません! ええと、エアコンが...わかりません。<br>*(Xin lỗi! Ờ, điều hoà mà... không hiểu.)* |
| Trang | チェン<ruby>様<rt>さま</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>いたします。エアコンの<ruby>調子<rt>ちょうし</rt></ruby>がおかしいのでしょうか?<br>*(Thưa ngài Chen, em xin phép. Điều hoà có vấn đề ạ?)* |
| Khách Chen | <ruby>寒<rt>さむ</rt></ruby>い、でも...ボタン<ruby>多<rt>おお</rt></ruby>い。<br>*(Lạnh, nhưng... nhiều nút quá.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。お<ruby>部屋<rt>へや</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>してもよろしいでしょうか?<br>*(Em rõ. Em vào phòng được không ạ?)* |
| Khách Chen | はい、どうぞ。<br>*(Vâng, mời.)* |
| Trang | (vào phòng, kiểm tra remote) こちらの<ruby>赤<rt>あか</rt></ruby>いボタンが<ruby>暖房<rt>だんぼう</rt></ruby>、<ruby>青<rt>あお</rt></ruby>いボタンが<ruby>冷房<rt>れいぼう</rt></ruby>でございます。<ruby>温度<rt>おんど</rt></ruby>はこちらの<ruby>上下<rt>じょうげ</rt></ruby>ボタンで<ruby>調整<rt>ちょうせい</rt></ruby>いただけます。<br>*(Nút đỏ này là sưởi, nút xanh là làm mát. Nhiệt độ chỉnh bằng nút lên xuống này ạ.)* |
| Khách Chen | <ruby>暖房<rt>だんぼう</rt></ruby>、<ruby>赤<rt>あか</rt></ruby>...わかりました。ありがとう。<br>*(Sưởi, đỏ... hiểu rồi. Cảm ơn.)* |
| Trang | <ruby>他<rt>ほか</rt></ruby>に<ruby>何<rt>なに</rt></ruby>かご<ruby>不明<rt>ふめい</rt></ruby>な<ruby>点<rt>てん</rt></ruby>はございませんか?<br>*(Còn gì chưa rõ không ạ?)* |
| Khách Chen | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ありがとう。<br>*(Ổn rồi, cảm ơn.)* |
| Trang | おやすみなさいませ。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Chúc ngài ngủ ngon. Em xin phép.)* |

---

## Tình huống 14 — Phòng Trang, ký túc · 22:45, gọi điện về VN báo tin năm 3 và 指導係

> Cảnh tiếng Việt — gọi điện cho mẹ ở Huế.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Alo mẹ ơi, hôm nay con vừa khai trương năm 3. 女将 phân con làm 指導係 — người chỉ đạo cho hai đứa kohai mẹ ạ. |
| Mẹ | (tiếng Việt) Ơ con gái mẹ thành sempai-of-sempai rồi à? Mẹ tự hào quá. Mà con không bị áp lực nhiều chứ? |
| Trang | (tiếng Việt) Có chút mẹ ạ. Bà Yumiko sempai dặn con ba điều: cách nhắc kohai không như chị em ruột, có việc khó phải 報連相 với 女将 ngay, và đừng quên chuẩn bị SSW1 của chính mình. |
| Mẹ | (tiếng Việt) SSW1 là cái visa kỹ năng đặc định hôm trước con kể đúng không? |
| Trang | (tiếng Việt) Vâng. Tháng 4 năm sau con chuyển sang SSW1, để được tiếp tục làm ở Tsukiyomi-an thêm 5 năm nữa. Tháng 7 này con phải thi 技能検定 cấp 3 ngành Hotel-Ryokan, đậu thì được công nhận 良好修了, được miễn thi kỹ năng SSW1. |
| Mẹ | (tiếng Việt) Trời ơi nhiều từ quá mẹ chả nhớ. Con cứ thi cho đậu là được. À mà ryokan mình có người mới về làm chủ trẻ phải không? |
| Trang | (tiếng Việt) Vâng, 若女将 Aiko — con gái 女将, vừa du học Thuỵ Sĩ ngành khách sạn về. Hôm nay con đón đoàn khách Đài Loan, bà ấy chỉ con cách xếp giày: phải hướng mũi ra ngoài để lát khách đi giày tiện hơn. Đó cũng là おもてなし mẹ ạ. |
| Mẹ | (tiếng Việt) Nghe hay đấy. Người Nhật tỉ mỉ thật. Mẹ chỉ mong con cố nốt năm này, rồi đậu kỳ thi, năm sau có visa mới. |
| Trang | (tiếng Việt) Vâng. À tháng 1 sang năm con tính làm 招待状 — giấy mời, mời mẹ với em Lâm sang Kyoto chơi với con bằng visa 短期滞在 — thăm ngắn 90 ngày. Mẹ chuẩn bị tinh thần nhé. |
| Mẹ | (tiếng Việt) Thật hả con? Mẹ mà được sang Nhật á? Mẹ lo run từ giờ rồi. Thôi con ngủ sớm, mai còn dậy sớm trải futon. |
| Trang | (tiếng Việt) Vâng mẹ. Con yêu mẹ. |

---

## Tình huống 15 — Bàn học phòng Trang · 23:30, ghi sổ kế hoạch năm 3 bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>。<ruby>確認<rt>かくにん</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<br>*(Mùng 1 tháng 4, ngày đầu năm 3. Mình sắp xếp những điều cần xác nhận.)* |
| Trang | <ruby>一<rt>いち</rt></ruby>、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>(ホテル・<ruby>旅館<rt>りょかん</rt></ruby>)→<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>。<ruby>二<rt>に</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>JLPTN3。<br>*(Một, 技能検定 cấp 3 tháng 7 (Hotel-Ryokan) → 良好修了. Hai, JLPT N3 tháng 12.)* |
| Trang | <ruby>三<rt>さん</rt></ruby>、ランさんとマイさんの<ruby>指導<rt>しどう</rt></ruby>(<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>)。<ruby>四<rt>し</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>。<br>*(Ba, chỉ đạo Lan và Mai (tối thứ Tư ôn). Bốn, từ tháng 10 chuẩn bị hồ sơ SSW1.)* |
| Trang | <ruby>五<rt>ご</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>母<rt>はは</rt></ruby>と<ruby>弟<rt>おとうと</rt></ruby>を<ruby>短期<rt>たんき</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザで<ruby>招待<rt>しょうたい</rt></ruby>。<ruby>招待状<rt>しょうたいじょう</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カードのコピーを<ruby>準備<rt>じゅんび</rt></ruby>。<br>*(Năm, tháng 1 mời mẹ và em sang bằng visa thăm ngắn. Chuẩn bị thư mời và bản photo thẻ cư trú.)* |
| Trang | <ruby>六<rt>ろく</rt></ruby>、<ruby>若女将<rt>わかおかみ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>「<ruby>次<rt>つぎ</rt></ruby>の<ruby>動作<rt>どうさ</rt></ruby>を<ruby>想像<rt>そうぞう</rt></ruby>すること」を<ruby>毎日<rt>まいにち</rt></ruby><ruby>意識<rt>いしき</rt></ruby>する。<br>*(Sáu, mỗi ngày ý thức câu của 若女将: "tưởng tượng hành động tiếp theo".)* |
| Trang | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Từng cái một, chắc chắn. Cố lên.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá tại Tsukiyomi-an, Trang chính thức trở thành **指導係** cho hai kohai (Lan năm 2, Mai năm 1) và làm quen **若女将 Aiko** vừa du học Thuỵ Sĩ về. Học các mẫu câu công sở giai đoạn năm 3: chào hỏi 若女将 lễ phép bằng **改めてご挨拶させていただきます**, trình bày kế hoạch năm có **số thứ tự (一つ目・二つ目)** với 女将, xác nhận thông tin chuyên ngành bằng **〜ということですね**, hỏi lại lễ phép từ chuyên ngành (**女将代理・指導係・新人研修・在留資格更新・監理団体・満了日**) bằng **〜というのは?**, báo cáo cuối ngày với **2点ございます・連絡事項**, dạy kohai bằng **やさしい日本語** (câu ngắn, 1 câu 1 thông tin, kèm cử chỉ), và áp dụng định nghĩa omotenashi của Aiko: **次の動作を想像する**.

> Từ vựng & mẫu câu chương này: 年度・若女将・女将代理・指導係・新人研修・後輩・先輩・仲居・帳場・玄関・客室・大浴場・浴衣・布団・懐石・先付・椀物・造り・焼物・炊き合わせ・酢物・水菓子・季節感・おもてなし・在留資格更新・監理団体・満了日・技能検定3級・良好修了・免除・短期滞在ビザ・招待状・〜というのは・〜ということですね・改めてご挨拶させていただきます・ご報告させていただきたく・2点ございます・連絡事項

---

## Bí quyết chương

- **「次の動作を想像する」**: omotenashi không phải chỉ đáp ứng yêu cầu khách nói ra, mà là dự đoán hành động sau đó (xếp giày hướng mũi ra ngoài để lát khách đi giày tiện).
- **指導係 không phải chị em ruột**: tiếp xúc với kohai như đồng nghiệp, không như em gái. Yumiko sempai nhắc rất quan trọng.
- **やさしい日本語 dạy kohai**: câu ngắn, mỗi câu một thông tin, tránh từ Hán khó, kèm cử chỉ. "包丁、右手、持って、下に切る" thay vì câu dài.
- **左襟上, 右襟下**: gấp/mặc yukata. Ngược lại là cách của tang lễ — tuyệt đối không sai.
- **帳場・お湯・お部屋**: từ riêng của ryokan thay thế "front", "風呂", "客室" — kohai mới cần làm quen dần.
- **報告 với 2点ございます**: cấu trúc báo cáo cuối ngày chuẩn — tổng số khách → các điểm liên lạc đánh số rõ ràng.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 年度 | ねんど | NIÊN ĐỘ | năm tài khoá |
| 若女将 | わかおかみ | NHƯỢC NỮ TƯỚNG | con dâu/chủ trẻ ryokan |
| 女将代理 | おかみだいり | NỮ TƯỚNG ĐẠI LÝ | người thay mặt nữ chủ |
| 就任 | しゅうにん | TỰU NHIỆM | nhậm chức |
| 留学 | りゅうがく | LƯU HỌC | du học |
| おもてなし | — | — | tinh thần hiếu khách Nhật |
| 指導係 | しどうがかり | CHỈ ĐẠO HỆ | người phụ trách chỉ đạo |
| 新人研修 | しんじんけんしゅう | TÂN NHÂN NGHIÊN TU | đào tạo nhân viên mới |
| 着任 | ちゃくにん | TRƯỚC NHIỆM | đến nhậm chức |
| 仲居 | なかい | TRỌNG CƯ | nhân viên phục vụ ryokan |
| 改めて | あらためて | CẢI — | lại, lần nữa (lễ phép) |
| 痛感 | つうかん | THỐNG CẢM | thấm thía |
| 西洋 | せいよう | TÂY DƯƠNG | phương Tây |
| 旅館 | りょかん | LỮ QUÁN | ryokan, lữ quán |
| 察する | さっする | SÁT — | đoán ý, cảm nhận |
| 滅相 | めっそう | MIỆT TƯỚNG | không dám (lễ phép) |
| 客室 | きゃくしつ | KHÁCH THẤT | phòng khách |
| 接客 | せっきゃく | TIẾP KHÁCH | tiếp khách |
| 言葉遣い | ことばづかい | NGÔN DIỆP — | cách nói năng |
| 身だしなみ | みだしなみ | THÂN — | tác phong, vẻ ngoài |
| 道具 | どうぐ | ĐẠO CỤ | dụng cụ |
| 布団 | ふとん | BỐ ĐOÀN | đệm nệm Nhật |
| 玄関 | げんかん | HUYỀN QUAN | sảnh vào |
| 下駄箱 | げたばこ | HẠ ĐÀ TƯƠNG | tủ giày |
| 帳場 | ちょうば | TRƯỚNG TRƯỜNG | quầy lễ tân ryokan |
| 大浴場 | だいよくじょう | ĐẠI DỤC TRƯỜNG | phòng tắm chung lớn |
| 温泉 | おんせん | ÔN TUYỀN | suối nước nóng |
| 浴衣 | ゆかた | DỤC Y | yukata |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 抱え込む | かかえこむ | BÃO — | ôm việc một mình |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | báo cáo - liên lạc - bàn bạc |
| 申請 | しんせい | THÂN THỈNH | nộp đơn |
| 受検 | じゅけん | THỤ KIỂM | đăng ký thi |
| 技能検定 | ぎのうけんてい | KỸ NĂNG KIỂM ĐỊNH | thi đánh giá tay nghề |
| 良好修了 | りょうこうしゅうりょう | LƯƠNG HẢO TU LIỄU | hoàn thành tốt |
| 免除 | めんじょ | MIỄN TRỪ | miễn |
| 把握 | はあく | BẢ ÁC | nắm bắt |
| 承知 | しょうち | THỪA TRI | hiểu, rõ |
| 不在 | ふざい | BẤT TẠI | vắng mặt |
| 判断 | はんだん | PHÁN ĐOÁN | phán đoán |
| 履物 | はきもの | LÝ VẬT | giày dép |
| 外側 | そとがわ | NGOẠI TRẮC | phía ngoài |
| 動作 | どうさ | ĐỘNG TÁC | động tác |
| 想像 | そうぞう | TƯỞNG TƯỢNG | tưởng tượng |
| 葬式 | そうしき | TÁNG THỨC | tang lễ |
| 在留資格 | ざいりゅうしかく | TẠI LƯU TƯ CÁCH | tư cách lưu trú |
| 更新 | こうしん | CANH TÂN | gia hạn |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | đoàn quản lý TTS |
| 協同組合 | きょうどうくみあい | HIỆP ĐỒNG TỔ HỢP | hợp tác xã |
| 満了日 | まんりょうび | MÃN LIỄU NHẬT | ngày hết hạn |
| 有効期限 | ゆうこうきげん | HỮU HIỆU KỲ HẠN | hạn hiệu lực |
| 懐石 | かいせき | HOÀI THẠCH | kaiseki, ẩm thực truyền thống |
| 先付 | さきづけ | TIÊN PHÓ | món khai vị |
| 椀物 | わんもの | OẢN VẬT | món canh |
| 造り | つくり | TẠO — | sashimi |
| 焼物 | やきもの | THIÊU VẬT | món nướng |
| 炊き合わせ | たきあわせ | XUÝ — | món hầm bày chung |
| 酢物 | すのもの | TÔ VẬT | món dấm |
| 水菓子 | みずがし | THUỶ QUẢ TỬ | tráng miệng |
| 山菜 | さんさい | SƠN THÁI | rau núi |
| 季節感 | きせつかん | QUÝ TIẾT CẢM | cảm giác mùa |
| 連絡事項 | れんらくじこう | LIÊN LẠC SỰ HẠNG | mục cần liên lạc |
| 要望 | ようぼう | YÊU VỌNG | yêu cầu |
| 厨房 | ちゅうぼう | TRÙ PHÒNG | bếp |
| 暖房 | だんぼう | NOÃN PHÒNG | sưởi |
| 冷房 | れいぼう | LÃNH PHÒNG | làm mát |
| 招待状 | しょうたいじょう | CHIÊU ĐÃI TRẠNG | thư mời |
| 短期滞在 | たんきたいざい | ĐOẢN KỲ TRỆ TẠI | lưu trú ngắn hạn |
| 在留カード | ざいりゅうカード | TẠI LƯU — | thẻ cư trú |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000002, 800000048, NULL, 'markdown_book', 'T2. Đăng ký SSW1 khách sạn — mensetsu với 女将 (特定技能1号申請・女将面接)', '# Sách thực tập sinh khách sạn · T2. Đăng ký SSW1 khách sạn — mensetsu với 女将 (特定技能1号申請・女将面接)

> **Mục tiêu nhân vật:** Trang (24-25 tuổi, Huế), tháng 5/2027, vào giai đoạn chính thức bày tỏ nguyện vọng chuyển sang **特定技能1号 (SSW1)** ngành khách sạn để tiếp tục làm tại Tsukiyomi-an. Học các mẫu hội thoại tiếng Nhật của giai đoạn 申請: chính thức xin **面談** với 女将 và 若女将 cùng dự, tự giới thiệu lý do nguyện vọng (志望動機), trả lời câu hỏi mensetsu về điểm mạnh-yếu, hỏi lại từ chuyên ngành (技能評価試験・支援計画・登録支援機関・在留資格変更), trao đổi lương SSW1 sẽ tăng bao nhiêu, và tổng kết bằng văn bản 申請意思確認書.

---

## Bối cảnh

Ngày 12 tháng 5 năm 2027, ngày mưa nhẹ ở Kyoto, cuối tuần Golden Week vừa qua. Trang đã trao đổi sơ với 女将 trong tháng 4 (T1), nay chính thức xin một buổi 面談 để bày tỏ nguyện vọng SSW1 và bàn lộ trình. 若女将 Aiko cùng tham dự ở vai 女将代理. 監理団体 (Kyoto Kankou Service) đã gửi tài liệu hướng dẫn quy trình SSW1 cho ryokan. Mai đã làm việc được 6 tuần, Lan kèm tốt. Chương này tập trung mẫu câu giao tiếp công sở chính thức của giai đoạn申請・面接: keigo cao cấp hơn T1.

---

## Tình huống 1 — Hành lang trước văn phòng 女将 · 13:50, Trang gọi 女将 xin 面談

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>してもよろしいでしょうか?<br>*(Thưa 女将, em xin lỗi đang lúc bà bận. Em xin được dành ít thời gian được không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい、トランさん。<ruby>何<rt>なん</rt></ruby>でしょうか?<br>*(Vâng, Trang. Có việc gì?)* |
| Trang | <ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からの<ruby>進路<rt>しんろ</rt></ruby>について、<ruby>正式<rt>せいしき</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>させていただきたく、<ruby>面談<rt>めんだん</rt></ruby>のお<ruby>時間<rt>じかん</rt></ruby>をいただけないでしょうか?<br>*(Về con đường từ tháng 4 năm sau, em muốn xin chính thức bàn bạc, bà cho em xin một buổi 面談 được không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>明日<rt>あした</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時<rt>じ</rt></ruby>はいかがですか? <ruby>若女将<rt>わかおかみ</rt></ruby>にも<ruby>同席<rt>どうせき</rt></ruby>してもらいます。<br>*(Vâng, tôi rõ. Mai 2 giờ chiều được không? Tôi sẽ cho 若女将 dự cùng.)* |
| Trang | はい、<ruby>明日<rt>あした</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>志望<rt>しぼう</rt></ruby><ruby>動機書<rt>どうきしょ</rt></ruby>を<ruby>事前<rt>じぜん</rt></ruby>にご<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます。<br>*(Vâng, em rõ, 2 giờ chiều mai. Em sẽ nộp trước thư bày tỏ nguyện vọng.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | ありがとう。<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Cảm ơn em. Tôi mong đợi.)* |

---

## Tình huống 2 — Phòng nghỉ Yumiko · 17:00, Trang nhờ Yumiko đọc giùm 志望動機書

| Vai | Lời thoại |
|---|---|
| Trang | ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>明日<rt>あした</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>の<ruby>志望<rt>しぼう</rt></ruby><ruby>動機書<rt>どうきしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いたんですが、お<ruby>時間<rt>じかん</rt></ruby>のある<ruby>時<rt>とき</rt></ruby>に<ruby>目<rt>め</rt></ruby>を<ruby>通<rt>とお</rt></ruby>していただけませんか?<br>*(Chị Yumiko, em viết thư nguyện vọng cho 面談 mai, lúc nào rảnh chị xem giúp em được không?)* |
| Yumiko | もちろん。<ruby>読<rt>よ</rt></ruby>ませて。(đọc) ...うん、<ruby>内容<rt>ないよう</rt></ruby>はいいけど、ここの「お<ruby>世話<rt>せわ</rt></ruby>になっています」、<ruby>面談<rt>めんだん</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>なら「お<ruby>世話<rt>せわ</rt></ruby>になっております」のほうが<ruby>丁寧<rt>ていねい</rt></ruby>。<br>*(Tất nhiên. Cho chị đọc. ...ờ, nội dung được, nhưng chỗ "ohanashite imasu" này, văn bản 面談 thì "natte orimasu" lịch sự hơn.)* |
| Trang | あ、<ruby>本当<rt>ほんとう</rt></ruby>ですね。<ruby>謙譲語<rt>けんじょうご</rt></ruby>に<ruby>直<rt>なお</rt></ruby>します。<br>*(À, đúng nhỉ. Em sửa sang khiêm ngữ.)* |
| Yumiko | あとね、「<ruby>頑張<rt>がんば</rt></ruby>ります」より「<ruby>精進<rt>しょうじん</rt></ruby>してまいります」のほうが<ruby>旅館<rt>りょかん</rt></ruby>っぽい。<br>*(Còn nữa, thay vì "ganbarimasu" thì "shoujin shite mairimasu" hợp ryokan hơn.)* |
| Trang | <ruby>精進<rt>しょうじん</rt></ruby>...というのは「<ruby>努力<rt>どりょく</rt></ruby>を<ruby>重<rt>かさ</rt></ruby>ねる」という<ruby>意味<rt>いみ</rt></ruby>ですね?<br>*(Shoujin... có phải nghĩa "tích luỹ nỗ lực" không ạ?)* |
| Yumiko | そう。<ruby>仏教<rt>ぶっきょう</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>から<ruby>来<rt>き</rt></ruby>ていて、<ruby>京都<rt>きょうと</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>うよ。<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>の<ruby>最後<rt>さいご</rt></ruby>に<ruby>入<rt>い</rt></ruby>れると<ruby>印象<rt>いんしょう</rt></ruby>がいい。<br>*(Ừ. Từ Phật giáo, ryokan Kyoto hay dùng. Đặt cuối nguyện vọng sẽ gây ấn tượng tốt.)* |
| Trang | ありがとうございます。<ruby>直<rt>なお</rt></ruby>して<ruby>清書<rt>せいしょ</rt></ruby>します。<br>*(Em cảm ơn. Em sửa rồi chép sạch.)* |

---

## Tình huống 3 — Văn phòng 女将 · 14:00 hôm sau, mở đầu 面談 chính thức

*Trang vào phòng, cúi chào sâu. 女将 Sato ngồi giữa, 若女将 Aiko ngồi bên cạnh, trên bàn có sẵn 志望動機書 của Trang.*

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、<ruby>面談<rt>めんだん</rt></ruby>のお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Em xin phép vào. Hôm nay giữa lúc bận rộn vẫn dành thời gian cho em 面談, em xin chân thành cảm ơn.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | どうぞ、お<ruby>掛<rt>か</rt></ruby>けください。<br>*(Mời em, ngồi xuống.)* |
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。(ngồi xuống)<br>*(Em xin phép ạ.)* |
| Aiko | <ruby>志望<rt>しぼう</rt></ruby><ruby>動機書<rt>どうきしょ</rt></ruby>、<ruby>拝見<rt>はいけん</rt></ruby>しました。「<ruby>精進<rt>しょうじん</rt></ruby>してまいります」という<ruby>結<rt>むす</rt></ruby>びが<ruby>素敵<rt>すてき</rt></ruby>でした。<br>*(Tôi đã xem thư nguyện vọng. Câu kết "shoujin shite mairimasu" rất hay.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>にご<ruby>指導<rt>しどう</rt></ruby>いただきました。<br>*(Em không dám. Em được chị Yumiko chỉ ạ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | では、<ruby>始<rt>はじ</rt></ruby>めましょう。トランさん、まずご<ruby>自身<rt>じしん</rt></ruby>の<ruby>口<rt>くち</rt></ruby>から、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Vậy bắt đầu nhé. Trang, hãy từ chính miệng em nói nguyện vọng.)* |

---

## Tình huống 4 — Văn phòng 女将 · 14:05, Trang trình bày 志望動機

| Vai | Lời thoại |
|---|---|
| Trang | はい。<ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>月詠庵<rt>つきよみあん</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>学<rt>まな</rt></ruby>んだおもてなしを、もっと<ruby>深<rt>ふか</rt></ruby>く<ruby>身<rt>み</rt></ruby>につけたいと<ruby>思<rt>おも</rt></ruby>っております。<br>*(Vâng. Có 3 ý lớn. Thứ nhất, em muốn thấm sâu hơn omotenashi đã học 2 năm tại Tsukiyomi-an.)* |
| Aiko | <ruby>具体的<rt>ぐたいてき</rt></ruby>には、どんな<ruby>場面<rt>ばめん</rt></ruby>で<ruby>感<rt>かん</rt></ruby>じましたか?<br>*(Cụ thể là cảm nhận ở tình huống nào?)* |
| Trang | <ruby>先月<rt>せんげつ</rt></ruby>、<ruby>若女将<rt>わかおかみ</rt></ruby>に「<ruby>履物<rt>はきもの</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>外側<rt>そとがわ</rt></ruby>に」と<ruby>教<rt>おそ</rt></ruby>わった<ruby>時<rt>とき</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>気<rt>き</rt></ruby>づかなかった<ruby>細<rt>こま</rt></ruby>やかさに、まだまだ<ruby>学<rt>まな</rt></ruby>ぶことがあると<ruby>痛感<rt>つうかん</rt></ruby>しました。<br>*(Tháng trước, khi 若女将 chỉ "hướng mũi giày ra ngoài". Sự tinh tế mà 2 năm em không để ý — em thấm thía còn nhiều thứ phải học.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Cái thứ hai?)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>仲間<rt>なかま</rt></ruby>です。ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>、ランさん、マイさん、<ruby>厨房<rt>ちゅうぼう</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>と<ruby>築<rt>きず</rt></ruby>いた<ruby>関係<rt>かんけい</rt></ruby>を<ruby>断<rt>た</rt></ruby>ち<ruby>切<rt>き</rt></ruby>って<ruby>他社<rt>たしゃ</rt></ruby>へ<ruby>移<rt>うつ</rt></ruby>る<ruby>気<rt>き</rt></ruby>になれません。<br>*(Thứ hai, đồng đội. Quan hệ đã xây với chị Yumiko, Lan, Mai, mọi người trong bếp — em không thấy ý chuyển sang công ty khác.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Cái thứ ba?)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>京都<rt>きょうと</rt></ruby>という<ruby>町<rt>まち</rt></ruby>です。<ruby>四季<rt>しき</rt></ruby>の<ruby>移<rt>うつ</rt></ruby>ろい、<ruby>祇園<rt>ぎおん</rt></ruby><ruby>祭<rt>まつり</rt></ruby>、<ruby>紅葉<rt>こうよう</rt></ruby>、<ruby>雪景色<rt>ゆきげしき</rt></ruby>...この<ruby>町<rt>まち</rt></ruby>でお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>季節<rt>きせつ</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>える<ruby>仕事<rt>しごと</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたいです。<br>*(Thứ ba, Kyoto. Bốn mùa chuyển động, Gion Matsuri, lá đỏ, cảnh tuyết... em muốn tiếp tục công việc truyền mùa cho khách ở thành phố này.)* |

---

## Tình huống 5 — Văn phòng 女将 · 14:20, Aiko hỏi điểm mạnh và điểm yếu

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、ご<ruby>自身<rt>じしん</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みと<ruby>弱<rt>よわ</rt></ruby>みを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Trang, em cho biết điểm mạnh và điểm yếu của mình được không?)* |
| Trang | <ruby>強<rt>つよ</rt></ruby>みは<ruby>三<rt>みっ</rt></ruby>つあると<ruby>考<rt>かんが</rt></ruby>えております。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>手<rt>て</rt></ruby>が<ruby>早<rt>はや</rt></ruby>く<ruby>正確<rt>せいかく</rt></ruby>な<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>き。<ruby>二<rt>ふた</rt></ruby>つ、お<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>顔<rt>かお</rt></ruby>とお<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えること。<ruby>三<rt>みっ</rt></ruby>つ、ベトナム<ruby>語<rt>ご</rt></ruby>での<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>です。<br>*(Em nghĩ có 3 điểm mạnh. Một, trải futon nhanh và chính xác. Hai, nhớ mặt nhớ tên khách. Ba, chỉ đạo kohai bằng tiếng Việt.)* |
| Aiko | お<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>顔<rt>かお</rt></ruby>と<ruby>名前<rt>なまえ</rt></ruby>...<ruby>具体的<rt>ぐたいてき</rt></ruby>には<ruby>何人<rt>なんにん</rt></ruby>くらい<ruby>覚<rt>おぼ</rt></ruby>えていらっしゃいますか?<br>*(Mặt và tên khách... cụ thể em nhớ được khoảng bao nhiêu người?)* |
| Trang | リピーターのお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>ほど、ご<ruby>家族<rt>かぞく</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>とお<ruby>好<rt>この</rt></ruby>みのお<ruby>茶<rt>ちゃ</rt></ruby>まで<ruby>把握<rt>はあく</rt></ruby>しております。<br>*(Khoảng 30 vị khách quay lại, em nắm cả thành viên gia đình và loại trà yêu thích.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | それは<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>弱<rt>よわ</rt></ruby>みは?<br>*(Tuyệt vời. Còn điểm yếu?)* |
| Trang | <ruby>弱<rt>よわ</rt></ruby>みは<ruby>二<rt>ふた</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>敬語<rt>けいご</rt></ruby>、<ruby>特<rt>とく</rt></ruby>に<ruby>謙譲語<rt>けんじょうご</rt></ruby>と<ruby>尊敬語<rt>そんけいご</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けが<ruby>不安定<rt>ふあんてい</rt></ruby>です。<br>*(Có 2 điểm yếu. Thứ nhất, kính ngữ — đặc biệt phân biệt khiêm ngữ và tôn kính ngữ chưa vững.)* |
| Aiko | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Cái thứ hai?)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>団体<rt>だんたい</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い<ruby>日<rt>ひ</rt></ruby>に<ruby>慌<rt>あわ</rt></ruby>てて、<ruby>声<rt>こえ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きくなってしまうことがございます。<ruby>意識<rt>いしき</rt></ruby>して<ruby>改善<rt>かいぜん</rt></ruby>してまいります。<br>*(Thứ hai, ngày đông khách đoàn em hay luống cuống, giọng to lên. Em sẽ ý thức cải thiện.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>正直<rt>しょうじき</rt></ruby>でよろしい。<ruby>自<rt>みずか</rt></ruby>ら<ruby>気<rt>き</rt></ruby>づいているなら<ruby>必<rt>かなら</rt></ruby>ず<ruby>直<rt>なお</rt></ruby>せます。<br>*(Thành thật, tốt đấy. Tự nhận ra thì chắc sẽ sửa được.)* |

---

## Tình huống 6 — Văn phòng 女将 · 14:35, hỏi lại từ chuyên ngành SSW1

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | では<ruby>制度<rt>せいど</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。SSW1の<ruby>申請<rt>しんせい</rt></ruby>には<ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つの<ruby>道<rt>みち</rt></ruby>があります。<br>*(Vậy chuyển sang chuyện chế độ. Đăng ký SSW1 có 3 đường lớn.)* |
| Trang | はい、お<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Vâng, mong bà nói.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>一<rt>ひと</rt></ruby>つ、<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>(<ruby>宿泊<rt>しゅくはく</rt></ruby>)+JFT-Basic A2に<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>(ホテル・<ruby>旅館<rt>りょかん</rt></ruby>)+JLPTN4以上で<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>ルート。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>+<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>従事<rt>じゅうじ</rt></ruby>+<ruby>同<rt>おな</rt></ruby>じ<ruby>業務<rt>ぎょうむ</rt></ruby>。<br>*(Một, đậu 技能評価試験 (宿泊) + JFT-Basic A2. Hai, lộ trình 良好修了 — 技能検定 cấp 3 (Hotel-Ryokan) + JLPT N4 trở lên. Ba, hoàn thành 技能実習 2号 + 2 năm trở lên + cùng nghiệp vụ.)* |
| Trang | すみません、「<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>」と「<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>」は<ruby>違<rt>ちが</rt></ruby>うものですか?<br>*(Xin lỗi, "技能評価試験" và "技能検定 cấp 3" là khác nhau ạ?)* |
| Aiko | <ruby>違<rt>ちが</rt></ruby>います。<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>はSSW1<ruby>専用<rt>せんよう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>で、<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>向<rt>む</rt></ruby>けです。<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>日本人<rt>にほんじん</rt></ruby>も<ruby>受<rt>う</rt></ruby>ける<ruby>国家<rt>こっか</rt></ruby><ruby>資格<rt>しかく</rt></ruby>です。<br>*(Khác. 技能評価試験 là kỳ thi riêng cho SSW1, dành cho người nước ngoài. 技能検定 cấp 3 là tư cách quốc gia mà người Nhật cũng thi.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>私<rt>わたし</rt></ruby>はTTS<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby><ruby>見<rt>み</rt></ruby><ruby>込<rt>こ</rt></ruby>みですので、<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のルートに<ruby>該当<rt>がいとう</rt></ruby>するということですね。<br>*(Em rõ. Em dự kiến hoàn thành TTS 2号 nên thuộc lộ trình thứ ba phải không ạ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>り。さらに<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば、より<ruby>確実<rt>かくじつ</rt></ruby>です。<br>*(Đúng vậy. Thêm nữa nếu đậu 技能検定 cấp 3 tháng 7 thì chắc chắn hơn.)* |

---

## Tình huống 7 — Văn phòng 女将 · 14:50, hỏi 登録支援機関 và 支援計画

| Vai | Lời thoại |
|---|---|
| Aiko | SSW1になると、<ruby>会社<rt>かいしゃ</rt></ruby>は<ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>を<ruby>通<rt>つう</rt></ruby>じて<ruby>支援<rt>しえん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>実施<rt>じっし</rt></ruby>します。<br>*(Khi SSW1, công ty thực hiện 支援計画 qua 登録支援機関.)* |
| Trang | <ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>...というのは、<ruby>監理団体<rt>かんりだんたい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか?<br>*(登録支援機関... có giống 監理団体 không ạ?)* |
| Aiko | <ruby>役割<rt>やくわり</rt></ruby>は<ruby>似<rt>に</rt></ruby>ていますが、<ruby>制度<rt>せいど</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>います。<ruby>監理団体<rt>かんりだんたい</rt></ruby>はTTS<ruby>用<rt>よう</rt></ruby>、<ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>はSSW<ruby>用<rt>よう</rt></ruby>です。<ruby>当館<rt>とうかん</rt></ruby>は<ruby>京都<rt>きょうと</rt></ruby><ruby>外国人<rt>がいこくじん</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby><ruby>支援<rt>しえん</rt></ruby>センターと<ruby>提携<rt>ていけい</rt></ruby>しています。<br>*(Vai trò giống, nhưng chế độ khác. 監理団体 cho TTS, 登録支援機関 cho SSW. Ryokan ta hợp tác với Kyoto Gaikokujin Shuurou Shien Center.)* |
| Trang | <ruby>支援<rt>しえん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>には<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれるんでしょうか?<br>*(支援計画 cụ thể có gì ạ?)* |
| Aiko | <ruby>大<rt>おお</rt></ruby>きく<ruby>10<rt>じゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>。<ruby>事前<rt>じぜん</rt></ruby>ガイダンス、<ruby>住居<rt>じゅうきょ</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>、<ruby>生活<rt>せいかつ</rt></ruby>オリエンテーション、<ruby>公的<rt>こうてき</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>き<ruby>同行<rt>どうこう</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby><ruby>機会<rt>きかい</rt></ruby><ruby>提供<rt>ていきょう</rt></ruby>、<ruby>相談<rt>そうだん</rt></ruby><ruby>苦情<rt>くじょう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>などです。<br>*(10 hạng mục lớn. Hướng dẫn trước, đảm bảo nhà ở, định hướng đời sống, đi cùng làm thủ tục công, cung cấp cơ hội học tiếng Nhật, đối ứng tư vấn-khiếu nại v.v.)* |
| Trang | <ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>すでに<ruby>住<rt>す</rt></ruby>んでいる<ruby>場合<rt>ばあい</rt></ruby>、<ruby>住居<rt>じゅうきょ</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>は<ruby>不要<rt>ふよう</rt></ruby>ですか?<br>*(Trường hợp đã ở 2 năm rồi, có cần đảm bảo nhà ở không ạ?)* |
| Aiko | <ruby>不要<rt>ふよう</rt></ruby>です。<ruby>現状<rt>げんじょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>するだけで<ruby>済<rt>す</rt></ruby>みます。<br>*(Không cần. Chỉ xác nhận hiện trạng là xong.)* |

---

## Tình huống 8 — Văn phòng 女将 · 15:00, trao đổi 待遇 và 給与

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>待遇<rt>たいぐう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>もお<ruby>伝<rt>つた</rt></ruby>えします。SSW1に<ruby>変更<rt>へんこう</rt></ruby><ruby>後<rt>ご</rt></ruby>は、<ruby>日本人<rt>にほんじん</rt></ruby><ruby>正社員<rt>せいしゃいん</rt></ruby>と<ruby>同等<rt>どうとう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>待遇<rt>たいぐう</rt></ruby>が<ruby>義務<rt>ぎむ</rt></ruby>です。<br>*(Còn về đãi ngộ. Sau khi đổi SSW1, bắt buộc đãi ngộ ngang hoặc hơn nhân viên chính thức người Nhật.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しております。<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>金額<rt>きんがく</rt></ruby>は、<ruby>後日<rt>ごじつ</rt></ruby><ruby>雇用<rt>こよう</rt></ruby><ruby>契約書<rt>けいやくしょ</rt></ruby>で<ruby>提示<rt>ていじ</rt></ruby>いただけるという<ruby>理解<rt>りかい</rt></ruby>でよろしいでしょうか?<br>*(Em rõ. Số tiền cụ thể em hiểu là hôm khác sẽ trình trong hợp đồng lao động, đúng không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい。<ruby>口頭<rt>こうとう</rt></ruby>では、<ruby>基本給<rt>きほんきゅう</rt></ruby>は<ruby>現在<rt>げんざい</rt></ruby>より<ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>ほど<ruby>上<rt>あ</rt></ruby>がる<ruby>見込<rt>みこ</rt></ruby>みです。<ruby>賞与<rt>しょうよ</rt></ruby>は<ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>業績<rt>ぎょうせき</rt></ruby><ruby>連動<rt>れんどう</rt></ruby>。<br>*(Vâng. Bằng miệng: lương cơ bản dự kiến tăng khoảng 30 vạn yên so với hiện tại. Thưởng 2 lần/năm, theo kết quả kinh doanh.)* |
| Trang | ありがとうございます。<ruby>家賃<rt>やちん</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>と<ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>は<ruby>継続<rt>けいぞく</rt></ruby>でしょうか?<br>*(Em cảm ơn. Hỗ trợ tiền nhà và bảo hiểm xã hội có tiếp tục không ạ?)* |
| Aiko | <ruby>家賃<rt>やちん</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>は<ruby>継続<rt>けいぞく</rt></ruby>、<ruby>金額<rt>きんがく</rt></ruby>は<ruby>据<rt>す</rt></ruby>え<ruby>置<rt>お</rt></ruby>き。<ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>(<ruby>健康<rt>けんこう</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>・<ruby>厚生<rt>こうせい</rt></ruby><ruby>年金<rt>ねんきん</rt></ruby>・<ruby>雇用<rt>こよう</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>)は<ruby>当然<rt>とうぜん</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>です。<br>*(Hỗ trợ tiền nhà tiếp tục, mức giữ nguyên. Bảo hiểm xã hội (健康保険・厚生年金・雇用保険) đương nhiên tiếp tục.)* |
| Trang | <ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>の<ruby>日数<rt>にっすう</rt></ruby>はTTS<ruby>時<rt>じ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Số ngày phép có lương có giống thời TTS không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>労基法<rt>ろうきほう</rt></ruby>に<ruby>従<rt>したが</rt></ruby>って<ruby>勤続<rt>きんぞく</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>に<ruby>応<rt>おう</rt></ruby>じて<ruby>付与<rt>ふよ</rt></ruby>します。<ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>時点<rt>じてん</rt></ruby>で<ruby>勤続<rt>きんぞく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>なので、<ruby>14<rt>じゅうよん</rt></ruby><ruby>日<rt>にち</rt></ruby>です。<br>*(Theo luật lao động, tính theo số năm liên tục. Tháng 4 năm sau em là 3 năm liên tục, được 14 ngày.)* |

---

## Tình huống 9 — Văn phòng 女将 · 15:15, hỏi 在留資格変更 và lịch trình申請

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>は、いつ<ruby>頃<rt>ごろ</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めればよろしいでしょうか?<br>*(Đăng ký đổi tư cách lưu trú nên bắt đầu chuẩn bị từ khoảng nào ạ?)* |
| Aiko | <ruby>現在<rt>げんざい</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>の<ruby>満了日<rt>まんりょうび</rt></ruby>から<ruby>逆算<rt>ぎゃくさん</rt></ruby>します。トランさんの<ruby>場合<rt>ばあい</rt></ruby>、<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>末<ruby>満了<rt>まんりょう</rt></ruby>ですので、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>から<ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>入管<rt>にゅうかん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>が<ruby>目安<rt>めやす</rt></ruby>です。<br>*(Tính ngược từ ngày hết hạn TTS hiện tại. Trang hết hạn cuối tháng 3/2028, nên khoảng tháng 10 chuẩn bị giấy tờ, tháng 12 nộp 入管 là mức ước tính.)* |
| Trang | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>からSSW1として<ruby>勤務<rt>きんむ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>するためには、それまでに<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りる<ruby>必要<rt>ひつよう</rt></ruby>がありますね。<br>*(Để bắt đầu làm SSW1 từ mùng 1 tháng 4, đến lúc đó phải được cấp phép đúng không ạ.)* |
| Aiko | はい。<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>処理<rt>しょり</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>1<rt>いっ</rt></ruby>~<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>ですので、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>なら<ruby>余裕<rt>よゆう</rt></ruby>があります。<br>*(Vâng. Thời gian xử lý chuẩn 1-3 tháng, nộp tháng 12 thì có thời gian.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>書類<rt>しょるい</rt></ruby>のリストは<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>からトランさんに<ruby>直接<rt>ちょくせつ</rt></ruby>メールします。<br>*(Danh sách giấy tờ tuần sau 登録支援機関 sẽ email trực tiếp cho Trang.)* |
| Trang | ありがとうございます。<ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>申請<rt>しんせい</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>母<rt>はは</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶ<ruby>短期<rt>たんき</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザの<ruby>申請<rt>しんせい</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby>ないでしょうか?<br>*(Em cảm ơn. Em xin xác nhận một việc. Trong khi đang xét, em xin visa thăm ngắn cho mẹ có vấn đề gì không ạ?)* |
| Aiko | <ruby>問題<rt>もんだい</rt></ruby>ありません。<ruby>別<rt>べつ</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>きです。<ruby>招待状<rt>しょうたいじょう</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>なら<ruby>当館<rt>とうかん</rt></ruby>の<ruby>在職<rt>ざいしょく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>も<ruby>発行<rt>はっこう</rt></ruby>します。<br>*(Không vấn đề. Là thủ tục riêng. Nếu cần kèm thư mời, ryokan cấp giấy chứng nhận đang làm việc.)* |

---

## Tình huống 10 — Văn phòng 女将 · 15:30, kết thúc 面談 và viết 申請意思確認書

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | では、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>するため、<ruby>申請<rt>しんせい</rt></ruby><ruby>意思<rt>いし</rt></ruby><ruby>確認書<rt>かくにんしょ</rt></ruby>にご<ruby>署名<rt>しょめい</rt></ruby>いただけますか?<br>*(Vậy để sắp xếp nội dung 面談 hôm nay, em ký vào 申請意思確認書 được không?)* |
| Trang | はい。<ruby>内容<rt>ないよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。(đọc) ...「<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>より<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>として<ruby>月詠庵<rt>つきよみあん</rt></ruby>に<ruby>就労<rt>しゅうろう</rt></ruby>することを<ruby>希望<rt>きぼう</rt></ruby>します」...<ruby>相違<rt>そうい</rt></ruby>ございません。<br>*(Vâng. Cho em xác nhận nội dung. ...「Em mong từ mùng 1 tháng 4 năm 2028 làm việc tại Tsukiyomi-an với tư cách SSW1」 ...không có sai khác ạ.)* |
| Aiko | こちらにご<ruby>署名<rt>しょめい</rt></ruby>と<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>日付<rt>ひづけ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời em ký và ghi ngày hôm nay ở đây.)* |
| Trang | (ký) ...<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>、グェン・ティ・トラン。<ruby>失礼<rt>しつれい</rt></ruby>いたしました。<br>*(...13 tháng 5, Nguyễn Thị Trang. Em xin phép.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | ありがとう。トランさんを<ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>月詠庵<rt>つきよみあん</rt></ruby>でお<ruby>迎<rt>むか</rt></ruby>えできることを<ruby>心<rt>こころ</rt></ruby>から<ruby>嬉<rt>うれ</rt></ruby>しく<ruby>思<rt>おも</rt></ruby>います。<br>*(Cảm ơn em. Tôi thật lòng vui được đón Trang tiếp tục ở Tsukiyomi-an năm tới.)* |
| Aiko | これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Sau này mong em chỉ bảo.)* |
| Trang | <ruby>滅相<rt>めっそう</rt></ruby>もございません。<ruby>精進<rt>しょうじん</rt></ruby>してまいります。<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<br>*(Em không dám. Em sẽ shoujin. Hôm nay em xin cảm ơn ạ.)* |

---

## Tình huống 11 — Hành lang sau 面談 · 15:45, Trang gặp Yumiko báo kết quả

| Vai | Lời thoại |
|---|---|
| Yumiko | トランちゃん、どうだった?<br>*(Trang-chan, sao rồi?)* |
| Trang | ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby><ruby>申請<rt>しんせい</rt></ruby><ruby>意思<rt>いし</rt></ruby><ruby>確認書<rt>かくにんしょ</rt></ruby>に<ruby>署名<rt>しょめい</rt></ruby>させていただきました。<br>*(Chị Yumiko, em đã ký an toàn 申請意思確認書 rồi ạ.)* |
| Yumiko | おめでとう! お<ruby>給料<rt>きゅうりょう</rt></ruby>とか<ruby>話<rt>はなし</rt></ruby>に<ruby>出<rt>で</rt></ruby>た?<br>*(Chúc mừng! Có nói chuyện lương không?)* |
| Trang | <ruby>基本給<rt>きほんきゅう</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>ほど<ruby>上<rt>あ</rt></ruby>がる<ruby>見込<rt>みこ</rt></ruby>みで、<ruby>家賃<rt>やちん</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>は<ruby>据<rt>す</rt></ruby>え<ruby>置<rt>お</rt></ruby>き、<ruby>賞与<rt>しょうよ</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>です。<br>*(Lương cơ bản dự kiến tăng khoảng 30 vạn yên, hỗ trợ tiền nhà giữ nguyên, thưởng 2 lần/năm.)* |
| Yumiko | <ruby>悪<rt>わる</rt></ruby>くないね。<ruby>京都<rt>きょうと</rt></ruby><ruby>市内<rt>しない</rt></ruby>のSSW1<ruby>宿泊<rt>しゅくはく</rt></ruby>の<ruby>相場<rt>そうば</rt></ruby><ruby>並<rt>な</rt></ruby>み。<br>*(Không tệ. Bằng mặt bằng SSW1 宿泊 ở nội thành Kyoto.)* |
| Trang | <ruby>不安<rt>ふあん</rt></ruby>だったのは<ruby>弱<rt>よわ</rt></ruby>みを<ruby>聞<rt>き</rt></ruby>かれた<ruby>時<rt>とき</rt></ruby>。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>敬語<rt>けいご</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>と<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げたのですが...。<br>*(Em lo nhất khi hỏi điểm yếu. Em đã thật thà nói kính ngữ chưa vững...)* |
| Yumiko | それでよかったよ。<ruby>女将<rt>おかみ</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>弱<rt>よわ</rt></ruby>みを<ruby>分<rt>わ</rt></ruby>かっている<ruby>人<rt>ひと</rt></ruby>を<ruby>信用<rt>しんよう</rt></ruby>するから。<ruby>嘘<rt>うそ</rt></ruby>で<ruby>強<rt>つよ</rt></ruby>みだけ<ruby>言<rt>い</rt></ruby>う<ruby>子<rt>こ</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>困<rt>こま</rt></ruby>る。<br>*(Vậy là tốt rồi. 女将 tin người tự biết điểm yếu. Em nào dối, chỉ kể điểm mạnh thì sau khổ.)* |
| Trang | <ruby>胸<rt>むね</rt></ruby>をなで<ruby>下<rt>お</rt></ruby>ろしました。ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>添削<rt>てんさく</rt></ruby>のおかげです。<br>*(Em thở phào. Nhờ chị sửa giúp.)* |

---

## Tình huống 12 — Phòng nghỉ nhân viên · 16:30, gọi điện 監理団体 hỏi 修了見込証明

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>月詠庵<rt>つきよみあん</rt></ruby>のグェンと<ruby>申<rt>もう</rt></ruby>します。<ruby>担当<rt>たんとう</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>はいらっしゃいますでしょうか?<br>*(Cảm ơn anh chị đã giúp đỡ. Em là Nguyễn ở Tsukiyomi-an. Cho em hỏi anh Kimura phụ trách có đó không ạ?)* |
| <ruby>木村<rt>きむら</rt></ruby> | お<ruby>電話<rt>でんわ</rt></ruby><ruby>代<rt>か</rt></ruby>わりました、<ruby>木村<rt>きむら</rt></ruby>です。<br>*(Anh Kimura nghe đây.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>、SSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>意思<rt>いし</rt></ruby><ruby>確認書<rt>かくにんしょ</rt></ruby>に<ruby>署名<rt>しょめい</rt></ruby>いたしました。<ruby>来年<rt>らいねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby><ruby>見込<rt>みこみ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>はいつ<ruby>頃<rt>ごろ</rt></ruby><ruby>発行<rt>はっこう</rt></ruby>いただけますでしょうか?<br>*(Hôm nay em đã ký 申請意思確認書 SSW1. Giấy chứng nhận dự kiến hoàn thành TTS tháng 3 năm sau khoảng nào anh cấp được ạ?)* |
| <ruby>木村<rt>きむら</rt></ruby> | <ruby>修了<rt>しゅうりょう</rt></ruby><ruby>見込<rt>みこみ</rt></ruby>は<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>から<ruby>発行<rt>はっこう</rt></ruby>できます。<ruby>修了<rt>しゅうりょう</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>本<rt>ほん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>です。<br>*(Giấy dự kiến hoàn thành cấp được từ cuối tháng 11. Giấy chính sau khi hoàn thành là tháng 4 năm sau.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>申請<rt>しんせい</rt></ruby><ruby>時<rt>じ</rt></ruby>は<ruby>見込<rt>みこみ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>で<ruby>受理<rt>じゅり</rt></ruby>されるという<ruby>理解<rt>りかい</rt></ruby>でよろしいでしょうか?<br>*(Em rõ. Lúc nộp đơn em hiểu được nhận bằng giấy dự kiến, đúng không ạ?)* |
| <ruby>木村<rt>きむら</rt></ruby> | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>本<rt>ほん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>は<ruby>許可<rt>きょか</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>でも<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Vâng, đúng vậy. Giấy chính có thể nộp bổ sung sau khi được cấp phép cũng được.)* |
| Trang | お<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、ご<ruby>丁寧<rt>ていねい</rt></ruby>にありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Giữa lúc bận anh đã chỉ kỹ, em cảm ơn. Em xin phép.)* |

---

## Tình huống 13 — Khu vực 客室 · 17:30, hỗ trợ Mai trải futon và truyền kinh nghiệm 面接

| Vai | Lời thoại |
|---|---|
| Mai | トラン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>面談<rt>めんだん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>緊張<rt>きんちょう</rt></ruby>しましたか?<br>*(Chị Trang, vất vả với 面談 rồi. Có hồi hộp không ạ?)* |
| Trang | すごく<ruby>緊張<rt>きんちょう</rt></ruby>した。マイちゃんも<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じ<ruby>面談<rt>めんだん</rt></ruby>がある。<ruby>今<rt>いま</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>すること<ruby>三<rt>みっ</rt></ruby>つ<ruby>教<rt>おし</rt></ruby>えるね。<br>*(Hồi hộp lắm. Mai 3 năm nữa cũng có 面談 giống vậy. Chị chỉ 3 việc cần chuẩn bị từ giờ.)* |
| Mai | はい、<ruby>聞<rt>き</rt></ruby>かせてください!<br>*(Vâng, chị nói cho em ạ!)* |
| Trang | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>名前<rt>なまえ</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>える。リピーターのお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<br>*(Thứ nhất, nhất định nhớ tên khách. Khách quay lại là quan trọng nhất.)* |
| Mai | リピーターのお<ruby>客様<rt>きゃくさま</rt></ruby>...<ruby>何度<rt>なんど</rt></ruby>も<ruby>来<rt>く</rt></ruby>るお<ruby>客様<rt>きゃくさま</rt></ruby>ですね?<br>*(Khách quay lại... là khách đến nhiều lần phải không ạ?)* |
| Trang | そう。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>日記<rt>にっき</rt></ruby>を<ruby>書<rt>か</rt></ruby>く。<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>を<ruby>書<rt>か</rt></ruby>く<ruby>時<rt>とき</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>役立<rt>やくだ</rt></ruby>つ。<br>*(Hai, viết nhật ký mỗi ngày. 3 năm sau khi viết nguyện vọng nhất định có ích.)* |
| Mai | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Cái thứ ba?)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>弱<rt>よわ</rt></ruby>みを<ruby>隠<rt>かく</rt></ruby>さない。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うほうが<ruby>信頼<rt>しんらい</rt></ruby>される。これは<ruby>今日<rt>きょう</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>で<ruby>確<rt>たし</rt></ruby>かめたばかり。<br>*(Ba, đừng giấu điểm yếu. Thật thà thì được tin. Cái này chị vừa kiểm chứng ở 面談 hôm nay.)* |
| Mai | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ノートに<ruby>書<rt>か</rt></ruby>きます。<br>*(Em học được. Em ghi vào sổ.)* |

---

## Tình huống 14 — Ký túc, phòng Trang · 22:00, gọi mẹ báo tin

> Cảnh tiếng Việt — gọi điện về Huế.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Alo mẹ ơi, hôm nay con đã ký 申請意思確認書 SSW1 ở Tsukiyomi-an rồi mẹ ạ. Như là cam kết chính thức ý. |
| Mẹ | (tiếng Việt) Mẹ chúc mừng con! Vậy là tháng 4 sang năm con vẫn ở chỗ cũ chứ không phải chuyển đi đâu? |
| Trang | (tiếng Việt) Vâng, vẫn Tsukiyomi-an ở Kyoto. 女将 với 若女将 nói thẳng là muốn con ở lại. Lương cơ bản tăng khoảng 30 vạn yên, hỗ trợ tiền nhà giữ nguyên, thưởng 2 lần một năm. |
| Mẹ | (tiếng Việt) 30 vạn yên là bao nhiêu tiền Việt hả con? |
| Trang | (tiếng Việt) Khoảng 5 triệu rưỡi mẹ ạ. Cộng vào lương cũ là gần 25 triệu một tháng, chưa kể thưởng. Mẹ với em Lâm ở nhà cứ chi tiêu thoải mái. |
| Mẹ | (tiếng Việt) Trời ơi, mẹ mừng phát khóc. Mà con nói có thi gì đó tháng 7 phải không? |
| Trang | (tiếng Việt) Vâng, 技能検定 cấp 3 ngành Hotel-Ryokan tháng 7. Đậu thì được công nhận 良好修了, hồ sơ SSW1 chắc chắn hơn. Tháng 10 con bắt đầu chuẩn bị giấy tờ, tháng 12 nộp 入管. |
| Mẹ | (tiếng Việt) Nhập quản là gì hả con? |
| Trang | (tiếng Việt) 入管 — viết đầy đủ là 入国管理局, là Cục quản lý nhập cảnh Nhật Bản. Chỗ duyệt visa cho người nước ngoài mẹ ạ. |
| Mẹ | (tiếng Việt) Ờ, mẹ ghi nhớ. À hôm nay 面談 con có nói được không, không bị mất bình tĩnh chứ? |
| Trang | (tiếng Việt) Có ạ. Bà Yumiko sempai sửa thư nguyện vọng giúp con, dạy con câu "精進してまいります" — nỗ lực không ngừng. 若女将 khen câu kết ấy hay mẹ ạ. |
| Mẹ | (tiếng Việt) Có người tốt giúp con là phúc đấy. Thôi mẹ để con ngủ, mai 5 rưỡi dậy đúng không? |
| Trang | (tiếng Việt) Vâng mẹ. Mẹ ngủ ngon. |

---

## Tình huống 15 — Bàn học phòng Trang · 23:00, viết nhật ký bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>晴<rt>はれ</rt></ruby>。<ruby>面談<rt>めんだん</rt></ruby><ruby>当日<rt>とうじつ</rt></ruby>。<br>*(13 tháng 5, nắng. Ngày 面談.)* |
| Trang | <ruby>今日<rt>きょう</rt></ruby>、<ruby>申請<rt>しんせい</rt></ruby><ruby>意思<rt>いし</rt></ruby><ruby>確認書<rt>かくにんしょ</rt></ruby>に<ruby>署名<rt>しょめい</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>が<ruby>形<rt>かたち</rt></ruby>になった<ruby>瞬間<rt>しゅんかん</rt></ruby>。<br>*(Hôm nay ký 申請意思確認書. Khoảnh khắc nỗ lực 2 năm thành hình.)* |
| Trang | <ruby>学<rt>まな</rt></ruby>びの<ruby>記録<rt>きろく</rt></ruby>:<ruby>一<rt>いち</rt></ruby>、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>けて<ruby>伝<rt>つた</rt></ruby>えると<ruby>整理<rt>せいり</rt></ruby>される。<br>*(Ghi lại bài học: 1. Nguyện vọng chia 3 ý sẽ gọn.)* |
| Trang | <ruby>二<rt>に</rt></ruby>、<ruby>弱<rt>よわ</rt></ruby>みは<ruby>隠<rt>かく</rt></ruby>さず、<ruby>改善<rt>かいぜん</rt></ruby><ruby>策<rt>さく</rt></ruby>とセットで<ruby>言<rt>い</rt></ruby>う。<ruby>三<rt>さん</rt></ruby>、<ruby>制度<rt>せいど</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>(<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>・<ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>・<ruby>支援<rt>しえん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>)は<ruby>事前<rt>じぜん</rt></ruby>に<ruby>調<rt>しら</rt></ruby>べておく。<br>*(2. Không giấu điểm yếu, nói kèm biện pháp cải thiện. 3. Từ chế độ (技能評価試験・登録支援機関・支援計画) cần tra trước.)* |
| Trang | <ruby>四<rt>し</rt></ruby>、ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>の「<ruby>精進<rt>しょうじん</rt></ruby>してまいります」は<ruby>京都<rt>きょうと</rt></ruby><ruby>旅館<rt>りょかん</rt></ruby>の<ruby>結<rt>むす</rt></ruby>びとして<ruby>最強<rt>さいきょう</rt></ruby>。<ruby>五<rt>ご</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<br>*(4. Câu "shoujin shite mairimasu" của chị Yumiko là câu kết mạnh nhất cho ryokan Kyoto. 5. Từ tháng 10 bắt đầu chuẩn bị giấy tờ.)* |
| Trang | <ruby>明日<rt>あした</rt></ruby>から、<ruby>新<rt>あら</rt></ruby>たな<ruby>気持<rt>きも</rt></ruby>ちで。<br>*(Từ mai, với tâm trạng mới.)* |

---

## Đọng lại chương 2

Buổi 面談 chính thức với 女将 Sato và 若女将 Aiko để bày tỏ nguyện vọng chuyển sang **特定技能1号** ngành宿泊 tại Tsukiyomi-an. Học các mẫu câu công sở chính thức: xin 面談 lễ phép bằng **少々お時間を頂戴してもよろしいでしょうか / 面談のお時間をいただけないでしょうか**, mở đầu面接 với **本日はお忙しい中、面談のお時間を頂戴し、誠にありがとうございます**, trình bày志望動機 chia 3 ý có dẫn chứng cụ thể, trả lời điểm mạnh-yếu thành thật (**強み・弱み**), hỏi lại từ chuyên ngành (**技能評価試験・登録支援機関・支援計画・在留資格変更・修了見込証明書**) bằng **〜と〜は違うものですか / 〜というのは...と同じですか**, trao đổi 待遇 (**基本給・賞与・家賃補助・社会保険・有給休暇**), và ký **申請意思確認書**. Kết bằng câu Kyoto-ryokan: **精進してまいります**.

> Từ vựng & mẫu câu chương này: 面談・志望動機書・申請意思確認書・特定技能1号・技能評価試験・JFT-Basic・技能検定3級・良好修了・登録支援機関・監理団体・支援計画・在留資格変更・修了見込証明書・基本給・賞与・家賃補助・社会保険・有給休暇・入管・標準処理期間・精進してまいります・お時間を頂戴してもよろしいでしょうか・〜と〜は違うものですか・〜という理解でよろしいでしょうか・相違ございません

---

## Bí quyết chương

- **3 ý có dẫn chứng cụ thể**: trình bày志望動機 không lan man — mỗi ý 1 ví dụ thật (履物の向き của 若女将, 仲間, 京都四季). Tránh "vì em yêu Nhật Bản".
- **Thành thật về 弱み**: kèm 改善策 (cải thiện cách nào). 女将 tin người tự biết yếu hơn người chỉ kể mạnh.
- **Phân biệt 技能評価試験 vs 技能検定3級**: cái thứ nhất là kỳ thi riêng SSW1 cho người nước ngoài; cái thứ hai là tư cách quốc gia Nhật. Cùng đường vào SSW1 nhưng khác bản chất.
- **登録支援機関 ≠ 監理団体**: TTS dùng 監理団体 (kyoudou kumiai), SSW dùng 登録支援機関 (thường là công ty hoặc center khác). Ryokan có thể tự làm hoặc thuê ngoài.
- **精進してまいります**: câu kết Phật giáo — câu kết chuẩn cho ryokan Kyoto. Mạnh hơn "頑張ります" rất nhiều trong văn cảnh chính thức.
- **修了見込証明書 trước, 本証明書 sau**: nộp đơn từ tháng 12 — chưa hoàn thành TTS — dùng giấy "dự kiến hoàn thành" để 入管 thụ lý. Giấy chính bổ sung sau.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 進路 | しんろ | TIẾN LỘ | con đường, hướng đi |
| 面談 | めんだん | DIỆN ĐÀM | buổi nói chuyện chính thức |
| 同席 | どうせき | ĐỒNG TỊCH | cùng dự |
| 志望動機書 | しぼうどうきしょ | CHÍ VỌNG ĐỘNG CƠ THƯ | thư bày tỏ nguyện vọng |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 謙譲語 | けんじょうご | KHIÊM NHƯỢNG NGỮ | khiêm ngữ |
| 尊敬語 | そんけいご | TÔN KÍNH NGỮ | tôn kính ngữ |
| 精進 | しょうじん | TINH TIẾN | tinh tiến, nỗ lực không ngừng |
| 仏教 | ぶっきょう | PHẬT GIÁO | Phật giáo |
| 印象 | いんしょう | ẤN TƯỢNG | ấn tượng |
| 清書 | せいしょ | THANH THƯ | chép sạch |
| 拝見 | はいけん | BÁI KIẾN | xem (khiêm ngữ) |
| 結び | むすび | KẾT — | câu kết |
| 履物 | はきもの | LÝ VẬT | giày dép |
| 細やか | こまやか | TẾ — | tinh tế |
| 痛感 | つうかん | THỐNG CẢM | thấm thía |
| 仲間 | なかま | TRỌNG GIAN | đồng đội |
| 築く | きずく | TRÚC — | xây dựng |
| 断ち切る | たちきる | ĐOÁN THIẾT — | cắt đứt |
| 四季 | しき | TỨ QUÝ | bốn mùa |
| 祇園祭 | ぎおんまつり | KỲ VIÊN TẾ | lễ hội Gion |
| 紅葉 | こうよう | HỒNG DIỆP | lá đỏ |
| 雪景色 | ゆきげしき | TUYẾT CẢNH SẮC | cảnh tuyết |
| 強み | つよみ | CƯỜNG — | điểm mạnh |
| 弱み | よわみ | NHƯỢC — | điểm yếu |
| 正確 | せいかく | CHÍNH XÁC | chính xác |
| 構成 | こうせい | CẤU THÀNH | thành phần |
| 把握 | はあく | BẢ ÁC | nắm bắt |
| 慌てる | あわてる | HOÀNG — | luống cuống |
| 改善 | かいぜん | CẢI THIỆN | cải thiện |
| 正直 | しょうじき | CHÍNH TRỰC | thành thật |
| 信用 | しんよう | TÍN DỤNG | tin tưởng |
| 技能評価試験 | ぎのうひょうかしけん | KỸ NĂNG BÌNH GIÁ THÍ NGHIỆM | kỳ thi đánh giá kỹ năng SSW |
| 宿泊 | しゅくはく | TÚC BẠC | lưu trú (ngành) |
| 良好修了 | りょうこうしゅうりょう | LƯƠNG HẢO TU LIỄU | hoàn thành tốt |
| 従事 | じゅうじ | TÒNG SỰ | làm, tham gia công việc |
| 業務 | ぎょうむ | NGHIỆP VỤ | nghiệp vụ |
| 該当 | がいとう | CAI ĐƯƠNG | thuộc về |
| 登録支援機関 | とうろくしえんきかん | ĐĂNG LỤC CHI VIỆN CƠ QUAN | tổ chức hỗ trợ đã đăng ký |
| 支援計画 | しえんけいかく | CHI VIỆN KẾ HOẠCH | kế hoạch hỗ trợ |
| 提携 | ていけい | ĐỀ HUỀ | hợp tác |
| 苦情 | くじょう | KHỔ TÌNH | khiếu nại |
| 待遇 | たいぐう | ĐÃI NGỘ | đãi ngộ |
| 正社員 | せいしゃいん | CHÍNH XÃ VIÊN | nhân viên chính thức |
| 雇用契約書 | こようけいやくしょ | CỐ DỤNG KHẾ ƯỚC THƯ | hợp đồng lao động |
| 基本給 | きほんきゅう | CƠ BẢN CẤP | lương cơ bản |
| 賞与 | しょうよ | THƯỞNG DƯ | thưởng |
| 業績連動 | ぎょうせきれんどう | NGHIỆP TÍCH LIÊN ĐỘNG | gắn với kết quả kinh doanh |
| 家賃補助 | やちんほじょ | GIA THUÊ BỔ TRỢ | hỗ trợ tiền nhà |
| 社会保険 | しゃかいほけん | XÃ HỘI BẢO HIỂM | bảo hiểm xã hội |
| 健康保険 | けんこうほけん | KIỆN KHANG BẢO HIỂM | bảo hiểm y tế |
| 厚生年金 | こうせいねんきん | HẬU SINH NIÊN KIM | quỹ hưu nhân viên |
| 雇用保険 | こようほけん | CỐ DỤNG BẢO HIỂM | bảo hiểm việc làm |
| 据え置き | すえおき | CỨ TRỊ — | giữ nguyên |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | nghỉ phép có lương |
| 勤続年数 | きんぞくねんすう | CẦN TỤC NIÊN SỐ | số năm làm liên tục |
| 在留資格変更 | ざいりゅうしかくへんこう | TẠI LƯU TƯ CÁCH BIẾN CANH | đổi tư cách lưu trú |
| 逆算 | ぎゃくさん | NGHỊCH TOÁN | tính ngược |
| 入管 | にゅうかん | NHẬP QUẢN | Cục quản lý nhập cảnh |
| 標準処理期間 | ひょうじゅんしょりきかん | TIÊU CHUẨN XỬ LÝ KỲ GIAN | thời gian xử lý chuẩn |
| 在職証明書 | ざいしょくしょうめいしょ | TẠI CHỨC CHỨNG MINH THƯ | giấy chứng nhận đang làm việc |
| 申請意思確認書 | しんせいいしかくにんしょ | THÂN THỈNH Ý TƯ XÁC NHẬN THƯ | giấy xác nhận ý chí xin xét |
| 相違 | そうい | TƯƠNG VI | khác, sai khác |
| 署名 | しょめい | THỰ DANH | ký tên |
| 修了見込証明書 | しゅうりょうみこみしょうめいしょ | TU LIỄU KIẾN VỌNG CHỨNG MINH THƯ | giấy chứng nhận dự kiến hoàn thành |
| 受理 | じゅり | THỤ LÝ | thụ lý |
| 添削 | てんさく | THIÊM TRỪ | sửa câu chữ |
| 緊張 | きんちょう | KHẨN TRƯƠNG | hồi hộp |
| 信頼 | しんらい | TÍN LẠI | tin cậy |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000003, 800000048, NULL, 'markdown_book', 'T3. Báo tin đậu N3 — lộ trình SSW1 + N2 (N3合格・SSW1とN2へのロードマップ)', '# Sách thực tập sinh khách sạn · T3. Báo tin đậu N3 — lộ trình SSW1 + N2 (N3合格・SSW1とN2へのロードマップ)

> **Mục tiêu nhân vật:** Trang (25 tuổi, Huế), tháng 7/2027, vừa nhận kết quả JLPT N3 kỳ tháng 7 (đậu) và 技能検定3級 (đậu). Học các mẫu hội thoại tiếng Nhật của giai đoạn báo tin tốt: chính thức báo cáo kết quả lên 女将/若女将, chia vui với sempai-kohai, lập lộ trình **SSW1 + N2** cho 1-2 năm tới với 若女将 Aiko (đặt mục tiêu N2 trong 12/2028), bàn lương tăng theo qualification, gọi điện báo mẹ và quy đổi sang VND, viết bản kế hoạch học N2 (学習計画書) bằng tiếng Nhật chuẩn ryokan.

---

## Bối cảnh

Ngày 31 tháng 8 năm 2027, thứ Ba, cuối hè Kyoto, không khí lễ お盆 vừa qua. Sáng nay Trang vào trang J-Test kiểm tra kết quả JLPT N3 tháng 7 và xác nhận đã đậu (tổng 118/180, mục Đọc 35/60, Nghe 40/60, Ngữ pháp-từ vựng 43/60). Tuần trước đã có giấy báo đậu **技能検定3級「ホテル・旅館サービス」** từ trường nghề Kyoto. Hai tin tốt cùng lúc. Chương này tập trung các mẫu câu công sở giai đoạn báo tin tốt: trình tự báo (女将 → đồng nghiệp), cảm ơn chuẩn ryokan, lập 学習計画書 1-2 năm, bàn lộ trình **N2 + SSW1 → SSW2 + N1**.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 7:50, Trang xác nhận kết quả N3 trên điện thoại

*Trang vừa đến ryokan, bật điện thoại kiểm tra trang JEES (Japan Educational Exchanges and Services).*

| Vai | Lời thoại |
|---|---|
| Trang | (mở web JEES, nhập số báo danh) ...<ruby>結果<rt>けっか</rt></ruby>を<ruby>表示<rt>ひょうじ</rt></ruby>します...<br>*(...Hiển thị kết quả...)* |
| Trang | <ruby>合格<rt>ごうかく</rt></ruby>! <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>! <ruby>118<rt>ひゃくじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>!<br>*(Đậu! Đậu thật rồi! 118 điểm!)* |
| Lan | (vào phòng) トラン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>朝<rt>あさ</rt></ruby>から<ruby>何<rt>なに</rt></ruby>ですか? <ruby>顔<rt>かお</rt></ruby><ruby>真<rt>ま</rt></ruby>っ<ruby>赤<rt>あか</rt></ruby>!<br>*(Chị Trang, sao sớm thế? Mặt chị đỏ kìa!)* |
| Trang | ランちゃん、N3 <ruby>合格<rt>ごうかく</rt></ruby>した! さっき<ruby>確認<rt>かくにん</rt></ruby>したばかり!<br>*(Lan, chị đậu N3 rồi! Vừa mới check!)* |
| Lan | え、おめでとうございます! <ruby>抱<rt>だ</rt></ruby>きついてもいいですか?<br>*(Ơ, chúc mừng chị! Em ôm chị một cái được không?)* |
| Trang | (cười) <ruby>来<rt>き</rt></ruby>て<ruby>来<rt>き</rt></ruby>て! ...あ、<ruby>女将<rt>おかみ</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>にご<ruby>報告<rt>ほうこく</rt></ruby>するまで、まだ<ruby>大声<rt>おおごえ</rt></ruby>で<ruby>言<rt>い</rt></ruby>っちゃダメね。<ruby>順番<rt>じゅんばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<br>*(Lại đây lại đây! ...Mà chị chưa báo chính thức 女将, chưa được nói to. Thứ tự quan trọng.)* |
| Lan | はい、<ruby>静<rt>しず</rt></ruby>かにしますね。でも<ruby>本当<rt>ほんとう</rt></ruby>におめでとうございます!<br>*(Vâng, em im. Nhưng thực sự chúc mừng chị!)* |

---

## Tình huống 2 — Trước phòng 女将 · 8:30, Trang xin 5 phút báo cáo chính thức

| Vai | Lời thoại |
|---|---|
| Trang | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>女将<rt>おかみ</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby><ruby>頂戴<rt>ちょうだい</rt></ruby>してもよろしいでしょうか?<br>*(Em xin phép. Thưa 女将, em xin lỗi lúc bà bận. Em xin 5 phút được không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | はい、どうぞ。<ruby>朝<rt>あさ</rt></ruby>から<ruby>嬉<rt>うれ</rt></ruby>しそうですね。<br>*(Vâng, mời. Sớm mà em vui thế.)* |
| Trang | お<ruby>陰<rt>かげ</rt></ruby>さまで、<ruby>2<rt>ふた</rt></ruby>つご<ruby>報告<rt>ほうこく</rt></ruby>がございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>「ホテル・<ruby>旅館<rt>りょかん</rt></ruby>サービス」、<ruby>無事<rt>ぶじ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>いたしました。<br>*(Nhờ ơn bà, em có 2 điều báo cáo. Thứ nhất, 技能検定 cấp 3 "Hotel-Ryokan service" tháng 7 đã đậu an toàn.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | まあ! おめでとうございます! <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Ôi! Chúc mừng em! Cái thứ hai?)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>の<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>JLPT N3、<ruby>118<rt>ひゃくじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>いたしました。<br>*(Thứ hai, JLPT N3 tháng 7 công bố sáng nay, em đậu với 118 điểm.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>本当<rt>ほんとう</rt></ruby>によかった! <ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>お<ruby>勉強<rt>べんきょう</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>っていましたものね。<ruby>若女将<rt>わかおかみ</rt></ruby>にも<ruby>後<rt>あと</rt></ruby>でご<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Tốt quá! Em đã cố gắng học suốt thời gian dài. Lát em báo cả 若女将 nhé.)* |
| Trang | はい。お<ruby>客様<rt>きゃくさま</rt></ruby>のご<ruby>到着<rt>とうちゃく</rt></ruby><ruby>前<rt>まえ</rt></ruby>に、<ruby>朝<rt>あさ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ります。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng. Trước khi khách đến, em quay lại việc sáng. Em xin phép ạ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>夕方<rt>ゆうがた</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>若女将<rt>わかおかみ</rt></ruby>と<ruby>三<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>面談<rt>めんだん</rt></ruby>しましょう。<ruby>次<rt>つぎ</rt></ruby>のロードマップを<ruby>立<rt>た</rt></ruby>てます。<br>*(Chiều 4 giờ ba người mình 面談. Lập roadmap tiếp theo nhé.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em rõ. Em xin phép.)* |

---

## Tình huống 3 — Hành lang nhân viên · 9:00, gặp 若女将 Aiko báo cáo

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>若女将<rt>わかおかみ</rt></ruby>、おはようございます。<ruby>朝<rt>あさ</rt></ruby>のご<ruby>挨拶<rt>あいさつ</rt></ruby>、<ruby>遅<rt>おそ</rt></ruby>くなって<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Thưa 若女将, em chào buổi sáng. Em chào muộn, em xin lỗi.)* |
| Aiko | トランさん、おはようございます。<ruby>母<rt>はは</rt></ruby>から<ruby>聞<rt>き</rt></ruby>きました。N3<ruby>合格<rt>ごうかく</rt></ruby>と<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、おめでとうございます!<br>*(Trang, chào em. Mẹ đã kể. Chúc mừng em đậu N3 và 技能検定 cấp 3!)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>若女将<rt>わかおかみ</rt></ruby>に<ruby>添削<rt>てんさく</rt></ruby>していただいたお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>の<ruby>例文<rt>れいぶん</rt></ruby>が、<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>で<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>役立<rt>やくだ</rt></ruby>ちました。<br>*(Em không dám. Các câu mẫu tiếp khách 若女将 sửa cho em đã rất hữu ích trong phần thi thực hành.)* |
| Aiko | お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>夕方<rt>ゆうがた</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>では、<ruby>次<rt>つぎ</rt></ruby>のステップとして<ruby>3<rt>さん</rt></ruby>つの<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>させていただきます。<br>*(Vui vì giúp được. Buổi 面談 chiều tôi sẽ đề xuất 3 lựa chọn cho bước tiếp.)* |
| Trang | <ruby>3<rt>さん</rt></ruby>つの<ruby>選択肢<rt>せんたくし</rt></ruby>...<ruby>楽<rt>たの</rt></ruby>しみにしております。<br>*(3 lựa chọn... em mong chờ.)* |
| Aiko | あらかじめ<ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>。JLPT N2を<ruby>来年<rt>らいねん</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>することを<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れていただきたいです。<br>*(Báo trước 1 việc. Tôi muốn em đưa N2 tháng 12 năm sau vào tầm ngắm.)* |
| Trang | はい、<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れさせていただきます。<br>*(Vâng, em sẽ đưa vào tầm ngắm.)* |

---

## Tình huống 4 — Khu vực bếp · 10:30, chia vui với bếp trưởng và Yumiko

| Vai | Lời thoại |
|---|---|
| Yumiko | トランちゃん、N3<ruby>合格<rt>ごうかく</rt></ruby><ruby>聞<rt>き</rt></ruby>いたわ! あなたの<ruby>努力<rt>どりょく</rt></ruby>を<ruby>近<rt>ちか</rt></ruby>くで<ruby>見<rt>み</rt></ruby>てきたから、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Trang-chan, nghe em đậu N3 rồi! Chị đã thấy nỗ lực của em sát bên, thật vui.)* |
| Trang | ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby>の<ruby>夜<rt>よる</rt></ruby><ruby>読解<rt>どっかい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていただいたおかげです。<br>*(Chị Yumiko, nhờ chị xem giúp em phần đọc hiểu tối thứ Hai hàng tuần.)* |
| Bếp trưởng | おめでとう、トランさん! お<ruby>祝<rt>いわ</rt></ruby>いに<ruby>今夜<rt>こんや</rt></ruby>の<ruby>賄<rt>まかな</rt></ruby>いは<ruby>特別<rt>とくべつ</rt></ruby>に<ruby>鯛<rt>たい</rt></ruby>の<ruby>塩焼<rt>しおや</rt></ruby>きをご<ruby>用意<rt>ようい</rt></ruby>します。<br>*(Chúc mừng Trang! Mừng em, tối nay tôi nấu cơm nhân viên đặc biệt với tai (cá tráp) nướng muối.)* |
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>、もったいないお<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>有難<rt>ありがた</rt></ruby>くいただきます。<br>*(Bếp trưởng, lời quá quý. Em ngại lắm, nhưng em xin nhận ạ.)* |
| Yumiko | <ruby>鯛<rt>たい</rt></ruby>はめでたい<ruby>魚<rt>さかな</rt></ruby>。<ruby>日本人<rt>にほんじん</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>とか<ruby>結婚<rt>けっこん</rt></ruby>とか、めでたい<ruby>時<rt>とき</rt></ruby>に<ruby>食<rt>た</rt></ruby>べる。<br>*(Tai là cá may mắn. Người Nhật ăn vào dịp vui như đậu thi hay cưới hỏi.)* |
| Trang | 「<ruby>鯛<rt>たい</rt></ruby>」と「めでたい」の<ruby>語呂<rt>ごろ</rt></ruby><ruby>合<rt>あ</rt></ruby>わせですね? <ruby>初<rt>はじ</rt></ruby>めて<ruby>知<rt>し</rt></ruby>りました。<br>*(Chơi chữ "tai" và "medetai" ạ? Em mới biết.)* |
| Bếp trưởng | そう。<ruby>言葉<rt>ことば</rt></ruby>の<ruby>遊<rt>あそ</rt></ruby>びから<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>が<ruby>決<rt>き</rt></ruby>まるのが<ruby>日本<rt>にほん</rt></ruby><ruby>文化<rt>ぶんか</rt></ruby>のおもしろさ。<br>*(Đúng. Trò chơi chữ quyết định món ăn — cái thú vị của văn hoá Nhật.)* |

---

## Tình huống 5 — Phòng họp nhỏ · 16:00, 面談 ba người: 女将, 若女将, Trang — Aiko trình 3 lựa chọn

| Vai | Lời thoại |
|---|---|
| Aiko | では、<ruby>面談<rt>めんだん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>本日<rt>ほんじつ</rt></ruby>はトランさんの<ruby>合格<rt>ごうかく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けて、<ruby>3<rt>さん</rt></ruby>つの<ruby>選択肢<rt>せんたくし</rt></ruby>をご<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Vậy bắt đầu 面談. Hôm nay nhân việc Trang đậu, tôi đề xuất 3 lựa chọn.)* |
| Trang | よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mong bà chỉ ạ.)* |
| Aiko | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>守<rt>まも</rt></ruby>りプラン。<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1<ruby>移行<rt>いこう</rt></ruby>。<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>JLPTN2<ruby>受験<rt>じゅけん</rt></ruby>。<br>*(Thứ nhất, plan thủ. Từ tháng 4/2028 chuyển SSW1. Tháng 12/2028 thi JLPT N2.)* |
| Aiko | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>攻<rt>せ</rt></ruby>めプラン。SSW1<ruby>移行<rt>いこう</rt></ruby>+2028<ruby>年<rt>ねん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>N2<ruby>受験<rt>じゅけん</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>すれば<ruby>主任<rt>しゅにん</rt></ruby><ruby>仲居<rt>なかい</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>へ。<br>*(Thứ hai, plan công. SSW1 + thi N2 tháng 7/2028. Đậu thì lên ứng viên chủ nhiệm nakai.)* |
| Aiko | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>飛<rt>と</rt></ruby>びプラン。SSW1<ruby>移行<rt>いこう</rt></ruby>+<ruby>同時<rt>どうじ</rt></ruby>に<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>。<ruby>将来<rt>しょうらい</rt></ruby>SSW2へ<ruby>進<rt>すす</rt></ruby>む<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げる。<br>*(Thứ ba, plan bay. SSW1 + đồng thời chuẩn bị thi bằng đầu bếp. Mở rộng lựa chọn lên SSW2 sau này.)* |
| Trang | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の「<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>」というのは、<ruby>仲居<rt>なかい</rt></ruby>から<ruby>板場<rt>いたば</rt></ruby>へ<ruby>移<rt>うつ</rt></ruby>るという<ruby>意味<rt>いみ</rt></ruby>でしょうか?<br>*(Em cảm ơn. Em xin xác nhận. "Bằng đầu bếp" ở lựa chọn 3 nghĩa là chuyển từ nakai sang bếp ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | いいえ。<ruby>仲居<rt>なかい</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けながら<ruby>夜間<rt>やかん</rt></ruby><ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>専門<rt>せんもん</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>に<ruby>通<rt>かよ</rt></ruby>う<ruby>方法<rt>ほうほう</rt></ruby>があります。<ruby>免許<rt>めんきょ</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby><ruby>後<rt>ご</rt></ruby>は<ruby>仲居<rt>なかい</rt></ruby><ruby>兼<rt>けん</rt></ruby><ruby>料理<rt>りょうり</rt></ruby><ruby>説明<rt>せつめい</rt></ruby><ruby>係<rt>がかり</rt></ruby>になれます。<br>*(Không. Vẫn làm nakai, đi học trường đầu bếp buổi tối. Sau khi có bằng sẽ là nakai kiêm người giải thích món.)* |
| Trang | なるほど。<ruby>料理<rt>りょうり</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>がより<ruby>深<rt>ふか</rt></ruby>くできるようになるということですね。<br>*(Ra vậy. Tức là sẽ giải thích món sâu hơn.)* |
| Aiko | その<ruby>通<rt>とお</rt></ruby>り。インバウンドのお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>懐石<rt>かいせき</rt></ruby>を<ruby>英語<rt>えいご</rt></ruby>+<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>できる<ruby>人材<rt>じんざい</rt></ruby>は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>貴重<rt>きちょう</rt></ruby>です。<br>*(Đúng vậy. Nhân lực giải thích kaiseki cho khách inbound bằng Anh + Nhật rất quý.)* |

---

## Tình huống 6 — Phòng họp nhỏ · 16:20, Trang phân tích 3 lựa chọn và chọn

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>三<rt>みっ</rt></ruby>つの<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>比較<rt>ひかく</rt></ruby>させてください。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>守<rt>まも</rt></ruby>りプランは<ruby>無理<rt>むり</rt></ruby>がない<ruby>反面<rt>はんめん</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないかもしれません。<br>*(Em xin được so sánh 3 lựa chọn. Plan thủ thì không quá sức, ngược lại 2 năm tới có thể ít thay đổi.)* |
| Aiko | はい、その<ruby>理解<rt>りかい</rt></ruby>で<ruby>正<rt>ただ</rt></ruby>しいです。<br>*(Vâng, hiểu vậy là đúng.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>攻<rt>せ</rt></ruby>めプランは<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>N2が<ruby>厳<rt>きび</rt></ruby>しい<ruby>気<rt>き</rt></ruby>がします。N3から<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>飛<rt>と</rt></ruby>ばすのは<ruby>難<rt>むずか</rt></ruby>しいかと。<br>*(Plan công em thấy N2 tháng 7 căng. Từ N3 nhảy 1 năm thấy khó.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>正直<rt>しょうじき</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>でいいですね。<br>*(Đánh giá thật thà, tốt đấy.)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>飛<rt>と</rt></ruby>びプランは<ruby>魅力的<rt>みりょくてき</rt></ruby>ですが、<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>年制<rt>ねんせい</rt></ruby><ruby>夜間<rt>やかん</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>でしょうか? <ruby>学費<rt>がくひ</rt></ruby>と<ruby>勤務<rt>きんむ</rt></ruby>の<ruby>両立<rt>りょうりつ</rt></ruby>が<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Plan bay hấp dẫn, nhưng bằng đầu bếp là trường đêm 2 năm phải không ạ? Em lo học phí và làm việc song song.)* |
| Aiko | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>京都<rt>きょうと</rt></ruby><ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>専門<rt>せんもん</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>の<ruby>夜間<rt>やかん</rt></ruby><ruby>部<rt>ぶ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>学費<rt>がくひ</rt></ruby>は<ruby>年<rt>ねん</rt></ruby><ruby>80<rt>はちじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。<ruby>当館<rt>とうかん</rt></ruby>の<ruby>奨学<rt>しょうがく</rt></ruby><ruby>制度<rt>せいど</rt></ruby>で<ruby>半額<rt>はんがく</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>が<ruby>可能<rt>かのう</rt></ruby>です。<br>*(Câu hỏi hay. Trường nghề đầu bếp Kyoto khoá đêm 2 năm, học phí 80 vạn yên/năm. Ryokan có chế độ học bổng hỗ trợ 50%.)* |
| Trang | <ruby>奨学<rt>しょうがく</rt></ruby><ruby>制度<rt>せいど</rt></ruby>...<ruby>当館<rt>とうかん</rt></ruby>が<ruby>40<rt>よんじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>ご<ruby>補助<rt>ほじょ</rt></ruby>くださるということですね。<ruby>大変<rt>たいへん</rt></ruby><ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>いお<ruby>話<rt>はなし</rt></ruby>です。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby>までにお<ruby>返事<rt>へんじ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げてもよろしいでしょうか?<br>*(Chế độ học bổng... tức là ryokan hỗ trợ 40 vạn yên. Câu chuyện rất quý. Em xin bàn với gia đình, đến thứ Hai tuần sau em trả lời được không ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | もちろんです。<ruby>急<rt>いそ</rt></ruby>がず<ruby>判断<rt>はんだん</rt></ruby>してください。<br>*(Đương nhiên. Đừng vội, hãy quyết kỹ.)* |

---

## Tình huống 7 — Phòng họp nhỏ · 16:35, bàn lương tăng theo qualification

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>合格<rt>ごうかく</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>いに<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>もしておきましょう。<br>*(Mừng em đậu, ta nói cả về phụ cấp tư cách.)* |
| Trang | お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mong bà chỉ ạ.)* |
| Aiko | <ruby>当館<rt>とうかん</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby><ruby>表<rt>ひょう</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>です。JLPT N3<ruby>合格<rt>ごうかく</rt></ruby>:<ruby>月<rt>つき</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>:<ruby>月<rt>つき</rt></ruby><ruby>8<rt>はっ</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>千円<rt>ぜんえん</rt></ruby>が<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>給与<rt>きゅうよ</rt></ruby>より<ruby>加算<rt>かさん</rt></ruby>されます。<br>*(Bảng phụ cấp ryokan 4 mức. N3 đậu: 5 nghìn yên/tháng. 技能検定 cấp 3: 8 nghìn yên/tháng. Tổng 13 nghìn yên/tháng cộng vào lương tháng 9.)* |
| Trang | ありがとうございます。<ruby>来年<rt>らいねん</rt></ruby>のSSW1<ruby>移行<rt>いこう</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>基本給<rt>きほんきゅう</rt></ruby>は、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>でお<ruby>伝<rt>つた</rt></ruby>えいただいた<ruby>金額<rt>きんがく</rt></ruby>に、この<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれるという<ruby>理解<rt>りかい</rt></ruby>でよろしいでしょうか?<br>*(Em cảm ơn. Lương cơ bản sau khi chuyển SSW1 năm sau, em hiểu là vào số đã nói ở 面談 tháng 5 đã bao gồm phụ cấp tư cách này, đúng không ạ?)* |
| Aiko | いいえ、<ruby>別<rt>べつ</rt></ruby><ruby>建<rt>だ</rt></ruby>てです。<ruby>基本給<rt>きほんきゅう</rt></ruby>アップ+<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>千円<rt>ぜんえん</rt></ruby>です。N2<ruby>合格<rt>ごうかく</rt></ruby><ruby>時<rt>じ</rt></ruby>はさらに<ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>加算<rt>かさん</rt></ruby>。<br>*(Không, là khoản riêng. Tăng lương cơ bản + phụ cấp 13 nghìn yên. Đậu N2 cộng thêm 10 nghìn yên.)* |
| Trang | <ruby>大変<rt>たいへん</rt></ruby><ruby>明確<rt>めいかく</rt></ruby>です。<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Rất rõ ràng. Em được khích lệ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>努力<rt>どりょく</rt></ruby>に<ruby>応<rt>おう</rt></ruby>じて<ruby>報<rt>むく</rt></ruby>いるのが<ruby>当館<rt>とうかん</rt></ruby>の<ruby>方針<rt>ほうしん</rt></ruby>です。<br>*(Đáp ứng theo nỗ lực — phương châm ryokan ta.)* |

---

## Tình huống 8 — Phòng họp nhỏ · 16:50, kết thúc 面談 và xác nhận deadline

| Vai | Lời thoại |
|---|---|
| Aiko | では、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>7<rt>なの</rt></ruby><ruby>日<rt>か</rt></ruby>までに、<ruby>選択<rt>せんたく</rt></ruby>されたプランと<ruby>学習<rt>がくしゅう</rt></ruby><ruby>計画書<rt>けいかくしょ</rt></ruby>をご<ruby>提出<rt>ていしゅつ</rt></ruby>ください。<br>*(Vậy đến mùng 7 tháng 9, thứ Hai tuần sau, em nộp plan đã chọn và bản kế hoạch học.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>学習<rt>がくしゅう</rt></ruby><ruby>計画書<rt>けいかくしょ</rt></ruby>の<ruby>様式<rt>ようしき</rt></ruby>はございますか?<br>*(Vâng, em rõ. Có biểu mẫu cho 学習計画書 không ạ?)* |
| Aiko | <ruby>自由<rt>じゆう</rt></ruby><ruby>様式<rt>ようしき</rt></ruby>で<ruby>結構<rt>けっこう</rt></ruby>ですが、<ruby>項目<rt>こうもく</rt></ruby>として<ruby>4<rt>よっ</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>目標<rt>もくひょう</rt></ruby>・<ruby>期限<rt>きげん</rt></ruby>・<ruby>学習<rt>がくしゅう</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>・<ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>。<br>*(Mẫu tự do được. Nhưng có 4 mục: mục tiêu, deadline, phương pháp học, cách kiểm tra tiến độ.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>家族<rt>かぞく</rt></ruby>との<ruby>相談<rt>そうだん</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>清書<rt>せいしょ</rt></ruby>してご<ruby>提出<rt>ていしゅつ</rt></ruby>いたします。<br>*(Em rõ. Sau khi bàn với gia đình, em chép sạch rồi nộp.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>本日<rt>ほんじつ</rt></ruby>はおめでとう。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hôm nay chúc mừng em. Sau này mong em hợp tác.)* |
| Trang | <ruby>滅相<rt>めっそう</rt></ruby>もございません。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>精進<rt>しょうじん</rt></ruby>してまいります。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em không dám. Em sẽ tiếp tục shoujin. Em xin phép.)* |

---

## Tình huống 9 — Phòng nghỉ Yumiko · 17:30, Trang xin lời khuyên chọn plan

| Vai | Lời thoại |
|---|---|
| Trang | ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>知恵<rt>ちえ</rt></ruby>を<ruby>拝借<rt>はいしゃく</rt></ruby>してもよろしいでしょうか?<br>*(Chị Yumiko, em xin chị tí "trí khôn" được không ạ?)* |
| Yumiko | どうぞ。<ruby>3<rt>さん</rt></ruby>つのプランの<ruby>話<rt>はなし</rt></ruby>ね?<br>*(Mời. Chuyện 3 plan đúng không?)* |
| Trang | はい。<ruby>守<rt>まも</rt></ruby>りプランか、<ruby>飛<rt>と</rt></ruby>びプランか<ruby>迷<rt>まよ</rt></ruby>っています。<ruby>飛<rt>と</rt></ruby>びプランは<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>するもので、<ruby>奨学<rt>しょうがく</rt></ruby><ruby>制度<rt>せいど</rt></ruby>もあります。<br>*(Vâng. Em phân vân plan thủ hay plan bay. Plan bay là thử bằng đầu bếp, có học bổng.)* |
| Yumiko | あなたなりの<ruby>答<rt>こた</rt></ruby>えはもう<ruby>出<rt>で</rt></ruby>てるんじゃない?<br>*(Em có đáp án của mình rồi đúng không?)* |
| Trang | ...<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>に<ruby>興味<rt>きょうみ</rt></ruby>があります。<ruby>料理<rt>りょうり</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>ができる<ruby>仲居<rt>なかい</rt></ruby>になりたい。でも<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>夜間<rt>やかん</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>と<ruby>仲居<rt>なかい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>両立<rt>りょうりつ</rt></ruby>が<ruby>体力的<rt>たいりょくてき</rt></ruby>に<ruby>不安<rt>ふあん</rt></ruby>...。<br>*(Thật ra em có hứng với bằng đầu bếp. Em muốn thành nakai giải thích được món. Nhưng 2 năm trường đêm + công việc nakai em lo về thể lực...)* |
| Yumiko | <ruby>体力的<rt>たいりょくてき</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しい<ruby>感覚<rt>かんかく</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>がアドバイスするなら、<ruby>2<rt>に</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>に<ruby>分<rt>わ</rt></ruby>ける。<ruby>来年<rt>らいねん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>はSSW1<ruby>移行<rt>いこう</rt></ruby>+N2<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>再来年<rt>さらいねん</rt></ruby>から<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>。<br>*(Lo thể lực là cảm giác đúng. Nếu chị tư vấn, chia 2 giai đoạn. Năm tới SSW1 + N2 tháng 12, từ năm kia bắt đầu trường nghề.)* |
| Trang | あ、<ruby>守<rt>まも</rt></ruby>りプランから<ruby>飛<rt>と</rt></ruby>びプランへ<ruby>段階的<rt>だんかいてき</rt></ruby>に...という<ruby>道<rt>みち</rt></ruby>もあるんですね!<br>*(À, từ plan thủ chuyển sang plan bay theo giai đoạn... có đường đó nữa nhỉ!)* |
| Yumiko | <ruby>女将<rt>おかみ</rt></ruby>に「<ruby>段階<rt>だんかい</rt></ruby>プラン」として<ruby>提案<rt>ていあん</rt></ruby>してみたら? <ruby>第<rt>だい</rt></ruby><ruby>4<rt>よん</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>。<br>*(Đề xuất với 女将 là "plan giai đoạn" thử xem? Lựa chọn thứ 4.)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>視野<rt>しや</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>がりました。<br>*(Chị, thực sự cảm ơn chị. Em mở rộng tầm nhìn.)* |

---

## Tình huống 10 — Khu vực 客室 · 18:30, Trang dạy Mai về 鯛 và 語呂合わせ

| Vai | Lời thoại |
|---|---|
| Mai | トラン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>今夜<rt>こんや</rt></ruby>の<ruby>賄<rt>まかな</rt></ruby>い、<ruby>鯛<rt>たい</rt></ruby>って<ruby>聞<rt>き</rt></ruby>きました! トラン<ruby>姉<rt>ねえ</rt></ruby>さんの<ruby>合格<rt>ごうかく</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>いですね。<br>*(Chị Trang, em nghe cơm nhân viên tối nay có tai! Mừng chị đậu phải không.)* |
| Trang | そう。<ruby>板長<rt>いたちょう</rt></ruby>がご<ruby>用意<rt>ようい</rt></ruby>くださった。マイちゃん、なぜ<ruby>鯛<rt>たい</rt></ruby>か<ruby>分<rt>わ</rt></ruby>かる?<br>*(Đúng. Bếp trưởng chuẩn bị. Mai biết vì sao là tai không?)* |
| Mai | え?...<ruby>美味<rt>おい</rt></ruby>しいから?<br>*(Ơ?... Vì ngon?)* |
| Trang | (cười) それも<ruby>正解<rt>せいかい</rt></ruby>! でもね、「<ruby>鯛<rt>たい</rt></ruby>」と「めでたい」が<ruby>似<rt>に</rt></ruby>た<ruby>音<rt>おと</rt></ruby>だから。<ruby>語呂<rt>ごろ</rt></ruby><ruby>合<rt>あ</rt></ruby>わせ。<br>*(Đáp án cũng đúng! Nhưng nữa, "tai" và "medetai" âm giống. Chơi chữ.)* |
| Mai | <ruby>語呂<rt>ごろ</rt></ruby><ruby>合<rt>あ</rt></ruby>わせ...<ruby>意味<rt>いみ</rt></ruby>は?<br>*(Goro awase... nghĩa là?)* |
| Trang | <ruby>音<rt>おと</rt></ruby>が<ruby>似<rt>に</rt></ruby>ている<ruby>言葉<rt>ことば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って、<ruby>意味<rt>いみ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>ける。<ruby>他<rt>ほか</rt></ruby>にも、<ruby>受験生<rt>じゅけんせい</rt></ruby>がカツ<ruby>丼<rt>どん</rt></ruby>を<ruby>食<rt>た</rt></ruby>べるのは「<ruby>勝<rt>か</rt></ruby>つ」と<ruby>同<rt>おな</rt></ruby>じ<ruby>音<rt>おと</rt></ruby>。<br>*(Dùng từ âm giống nhau, ghép nghĩa. Còn có học sinh sắp thi ăn katsudon, vì "katsu" cùng âm với "thắng".)* |
| Mai | おお! <ruby>面白<rt>おもしろ</rt></ruby>い! ベトナム<ruby>語<rt>ご</rt></ruby>にも<ruby>似<rt>に</rt></ruby>た<ruby>遊<rt>あそ</rt></ruby>びがあります。「<ruby>炒<rt>いた</rt></ruby>めご<ruby>飯<rt>はん</rt></ruby>」をテト<ruby>正月<rt>しょうがつ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べない<ruby>家<rt>いえ</rt></ruby>もあって...<br>*(Ồ! Thú vị! Tiếng Việt cũng có. Có nhà không ăn cơm rang ngày Tết...)* |
| Trang | <ruby>世界共通<rt>せかいきょうつう</rt></ruby>の<ruby>面白<rt>おもしろ</rt></ruby>さだね。<ruby>今夜<rt>こんや</rt></ruby>、<ruby>感謝<rt>かんしゃ</rt></ruby>して<ruby>食<rt>た</rt></ruby>べよう。<br>*(Cái thú vị chung của thế giới. Tối nay ăn biết ơn nhé.)* |

---

## Tình huống 11 — Nhà ăn nhân viên · 19:30, ăn tiệc nhỏ với cả ryokan

| Vai | Lời thoại |
|---|---|
| Bếp trưởng | では、トランさんのN3<ruby>合格<rt>ごうかく</rt></ruby>と<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>って、<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Vậy chúc mừng Trang đậu N3 và 技能検定 cấp 3, kanpai!)* |
| Cả phòng | <ruby>乾杯<rt>かんぱい</rt></ruby>! おめでとう!<br>*(Kanpai! Chúc mừng!)* |
| Trang | <ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>5<rt>ご</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>京都<rt>きょうと</rt></ruby><ruby>駅<rt>えき</rt></ruby>で<ruby>女将<rt>おかみ</rt></ruby>に<ruby>初<rt>はじ</rt></ruby>めてお<ruby>会<rt>あ</rt></ruby>いした<ruby>時<rt>とき</rt></ruby>、ひらがなしか<ruby>分<rt>わ</rt></ruby>からなかった<ruby>私<rt>わたし</rt></ruby>を、ここまで<ruby>育<rt>そだ</rt></ruby>てていただきました。<br>*(Mọi người, em chân thành cảm ơn. 2 năm 5 tháng trước, lần đầu gặp 女将 ở ga Kyoto, em chỉ biết hiragana mà mọi người đã dạy dỗ em đến đây.)* |
| Lan | トラン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>泣<rt>な</rt></ruby>かないでください!<br>*(Chị Trang, đừng khóc!)* |
| Trang | (lau nước mắt) ありがとう、ランちゃん。<ruby>来年<rt>らいねん</rt></ruby>はランちゃんとマイちゃんの<ruby>順番<rt>じゅんばん</rt></ruby>。<ruby>必<rt>かなら</rt></ruby>ず<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Cảm ơn Lan. Năm sau là lượt Lan và Mai. Chị nhất định ủng hộ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | トランさん、<ruby>一<rt>ひと</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いがあります。<ruby>合格<rt>ごうかく</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>を<ruby>後輩<rt>こうはい</rt></ruby><ruby>二人<rt>ふたり</rt></ruby>に<ruby>共有<rt>きょうゆう</rt></ruby>していただけますか?<br>*(Trang, tôi có một việc nhờ. Em chia sẻ phương pháp học đậu cho hai kohai được không?)* |
| Trang | はい、もちろんです。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>水曜<rt>すいよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>に<ruby>学習<rt>がくしゅう</rt></ruby><ruby>会<rt>かい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>かせていただきます。<br>*(Vâng, đương nhiên. Tối thứ Tư tuần sau em xin mở buổi học.)* |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>循環<rt>じゅんかん</rt></ruby>ですね。<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>す、<ruby>当館<rt>とうかん</rt></ruby>の<ruby>伝統<rt>でんとう</rt></ruby>です。<br>*(Vòng tuần hoàn tuyệt vời. Sempai truyền lại cho kohai — truyền thống ryokan ta.)* |

---

## Tình huống 12 — Phòng Trang, ký túc · 22:00, gọi điện về Huế báo tin

> Cảnh tiếng Việt — gọi về cho mẹ.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Alo mẹ ơi! Hôm nay con có hai tin: con đậu JLPT N3 với 118 điểm, và đậu cả 技能検定 cấp 3 nữa! |
| Mẹ | (tiếng Việt) Trời ơi Trang ơi! Mẹ run cả tay. Đậu thật rồi hả con? |
| Trang | (tiếng Việt) Vâng, sáng nay con kiểm tra trang web. Bà 女将 cho ăn cá tai mừng — người Nhật ăn cá tai vào dịp vui vì "tai" đồng âm với "medetai" — nghĩa là "đáng mừng". |
| Mẹ | (tiếng Việt) Như Tết mình ăn cá chép vậy. Mà giờ con tính sao nữa? |
| Trang | (tiếng Việt) 若女将 đề xuất 3 plan: plan thủ là SSW1 + N2 tháng 12 năm sau, plan công là N2 tháng 7 sớm, plan bay là SSW1 + đi trường nghề đầu bếp 2 năm. Chị Yumiko gợi ý con cái plan thứ 4 — chia 2 giai đoạn: năm đầu lo SSW1 và N2, từ năm thứ 3 mới đi trường đầu bếp. |
| Mẹ | (tiếng Việt) Trường đầu bếp à? Con muốn làm đầu bếp hay sao? |
| Trang | (tiếng Việt) Không phải chuyển sang bếp đâu mẹ. Con vẫn làm nakai — nhân viên phục vụ phòng — nhưng có bằng đầu bếp thì biết giải thích món kaiseki cho khách Tây bằng cả tiếng Anh lẫn tiếng Nhật. Ryokan có học bổng hỗ trợ 50% học phí, mỗi năm 40 vạn yên. |
| Mẹ | (tiếng Việt) 40 vạn yên là bao nhiêu hả con? |
| Trang | (tiếng Việt) Khoảng 70 triệu mẹ ạ. Hỗ trợ ngon lành, con đỡ phải gửi tiền học. À và con được thêm phụ cấp tư cách từ tháng 9: 5 nghìn yên cho N3, 8 nghìn yên cho 技能検定, tổng 13 nghìn — khoảng 2 triệu rưỡi một tháng. Đậu N2 sang năm cộng thêm 10 nghìn yên. |
| Mẹ | (tiếng Việt) Lương con tăng đều quá. Em Lâm con đang ôn thi đại học mẹ cũng đỡ áp lực. |
| Trang | (tiếng Việt) Vâng. Mẹ ơi, con nghĩ con sẽ chọn plan giai đoạn của chị Yumiko. Mẹ thấy thế nào? |
| Mẹ | (tiếng Việt) Mẹ thấy hợp lý. Đừng cố quá kẻo gãy. Mẹ tự hào về con lắm. À mà tháng 1 sang năm có còn dự định đón mẹ sang không? |
| Trang | (tiếng Việt) Vẫn còn mẹ ạ. Tháng 10 con bắt đầu chuẩn bị hồ sơ SSW1, song song với 招待状 cho mẹ. Tháng 11 mẹ gửi hộ chiếu sang em chụp giúp con. |
| Mẹ | (tiếng Việt) Ừ. Thôi ngủ sớm con, ngày mai còn 5 rưỡi dậy. Mẹ tự hào về con. |
| Trang | (tiếng Việt) Vâng mẹ. Con yêu mẹ. |

---

## Tình huống 13 — Bàn học phòng Trang · 23:00, viết 学習計画書

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>学習<rt>がくしゅう</rt></ruby><ruby>計画書<rt>けいかくしょ</rt></ruby> ― グェン・ティ・トラン ― <ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>作成<rt>さくせい</rt></ruby>。<br>*(Bản kế hoạch học tập — Nguyễn Thị Trang — soạn 31/8/2027.)* |
| Trang | <ruby>選択<rt>せんたく</rt></ruby>プラン:<ruby>第<rt>だい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>案<rt>あん</rt></ruby>「<ruby>段階<rt>だんかい</rt></ruby>プラン」。<ruby>守<rt>まも</rt></ruby>りプラン+<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>から<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>学校<rt>がっこう</rt></ruby><ruby>夜間<rt>やかん</rt></ruby><ruby>部<rt>ぶ</rt></ruby>。<br>*(Plan chọn: phương án 4 "plan giai đoạn". Plan thủ + từ năm 2 đi trường nghề đầu bếp khoá đêm.)* |
| Trang | <ruby>項目<rt>こうもく</rt></ruby><ruby>一<rt>いち</rt></ruby>、<ruby>目標<rt>もくひょう</rt></ruby>:JLPTN2<ruby>合格<rt>ごうかく</rt></ruby>(<ruby>120<rt>ひゃくにじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>)、SSW1<ruby>移行<rt>いこう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>学校<rt>がっこう</rt></ruby><ruby>願書<rt>がんしょ</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>。<br>*(Mục 1, mục tiêu: đậu N2 (≥120 điểm), hoàn tất chuyển SSW1, nộp đơn trường nghề.)* |
| Trang | <ruby>項目<rt>こうもく</rt></ruby><ruby>二<rt>に</rt></ruby>、<ruby>期限<rt>きげん</rt></ruby>:<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>末SSW1<ruby>許可<rt>きょか</rt></ruby>、<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>N2<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>調理<rt>ちょうり</rt></ruby><ruby>師<rt>し</rt></ruby><ruby>願書<rt>がんしょ</rt></ruby>。<br>*(Mục 2, deadline: cuối tháng 3/2028 SSW1, tháng 12/2028 N2, tháng 2/2029 nộp đơn trường nghề.)* |
| Trang | <ruby>項目<rt>こうもく</rt></ruby><ruby>三<rt>さん</rt></ruby>、<ruby>学習<rt>がくしゅう</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>:<ruby>平日<rt>へいじつ</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>~<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>文法<rt>ぶんぽう</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>、<ruby>休日<rt>きゅうじつ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>読解<rt>どっかい</rt></ruby>・<ruby>聴解<rt>ちょうかい</rt></ruby>、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Mục 3, phương pháp: 5-6h sáng ngày thường ngữ pháp-từ vựng, 3h ngày nghỉ đọc-nghe, tối thứ Hai hàng tuần check với chị Yumiko.)* |
| Trang | <ruby>項目<rt>こうもく</rt></ruby><ruby>四<rt>し</rt></ruby>、<ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>:<ruby>月<rt>つき</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>模試<rt>もし</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>、<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>毎<rt>ごと</rt></ruby>に<ruby>若女将<rt>わかおかみ</rt></ruby>と<ruby>面談<rt>めんだん</rt></ruby>。<br>*(Mục 4, kiểm tra tiến độ: 1 lần/tháng thi thử, 3 tháng/lần 面談 với 若女将.)* |
| Trang | <ruby>結<rt>むす</rt></ruby>び:<ruby>今後<rt>こんご</rt></ruby>とも<ruby>月詠庵<rt>つきよみあん</rt></ruby>の<ruby>一員<rt>いちいん</rt></ruby>として<ruby>精進<rt>しょうじん</rt></ruby>してまいります。<br>*(Kết: từ nay với tư cách một thành viên Tsukiyomi-an, em sẽ shoujin.)* |

---

## Đọng lại chương 3

Trang nhận song song tin tốt: **JLPT N3 đậu (118 điểm)** và **技能検定3級 (ホテル・旅館サービス)** đậu. Học các mẫu câu giai đoạn báo tin tốt tại ryokan: trình tự báo cáo chuẩn (**女将 → 若女将 → đồng nghiệp**) với **2つご報告がございます・お陰さまで**, cảm ơn bếp trưởng khi nhận đãi ngộ đặc biệt (**もったいないお言葉です・恐縮ですが**), tiếp nhận đề xuất 3 plan với **〜という理解で正しいでしょうか・〜という意味でしょうか**, đề xuất ngược "plan giai đoạn" thứ 4 sau khi tham vấn sempai, ký nhận lộ trình **SSW1 + N2 12/2028 + 調理師学校 từ 2029**, hiểu cơ chế **資格手当** (N3: 5k yên, 技能検定3級: 8k yên, N2: +10k yên), và viết **学習計画書** đủ 4 mục (mục tiêu - deadline - phương pháp - kiểm tra tiến độ). Văn hoá: ăn **鯛** vì **語呂合わせ** với **めでたい**.

> Từ vựng & mẫu câu chương này: 合格・JLPT N3・技能検定3級・ホテル・旅館サービス・資格手当・基本給・賞与・段階プラン・調理師免許・夜間部・奨学制度・補助・学習計画書・目標・期限・進捗確認・模試・主任仲居・候補・SSW2・インバウンド・人材・語呂合わせ・めでたい・鯛・お陰さまで・恐縮ですが・もったいないお言葉です・〜という理解で正しいでしょうか・〜という意味でしょうか・引き続き精進してまいります

---

## Bí quyết chương

- **Trình tự báo cáo**: 女将 trước, 若女将 sau, đồng nghiệp cuối cùng. KHÔNG báo Lan/Mai trước 女将 dù vui. "順番大事".
- **お陰さまで** (nhờ ơn): mở đầu báo tin tốt trong ryokan. Khiêm nhường — không tự hào cá nhân.
- **資格手当 minh bạch hoá**: ryokan tốt sẽ có bảng phụ cấp tư cách theo qualification, công bố trước. Trang phải hỏi rõ "đã bao gồm hay riêng" (別建て).
- **語呂合わせ 鯛 ↔ めでたい**: văn hoá Nhật chơi chữ quyết định món ăn dịp vui. Tương tự: カツ丼 ↔ 勝つ (thắng) cho học sinh sắp thi.
- **Plan giai đoạn**: khi 3 plan đều có nhược điểm, đề xuất plan thứ 4 chia giai đoạn. 女将 đánh giá cao người tự suy nghĩ thay vì chỉ chọn 1-2-3.
- **学習計画書 4 mục**: mục tiêu · deadline · phương pháp · kiểm tra tiến độ. Mỗi mục phải có con số cụ thể (giờ học, ngày, điểm dự kiến).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 結果 | けっか | KẾT QUẢ | kết quả |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 合格 | ごうかく | HỢP CÁCH | đậu thi |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| お陰さまで | おかげさまで | — — | nhờ ơn (lễ phép) |
| 無事 | ぶじ | VÔ SỰ | bình an, suôn sẻ |
| 発表 | はっぴょう | PHÁT BIỂU | công bố |
| 添削 | てんさく | THIÊM TRỪ | sửa câu |
| 応対 | おうたい | ỨNG ĐỐI | ứng đáp khách |
| 実技試験 | じつぎしけん | THỰC KỸ THÍ NGHIỆM | thi thực hành |
| 視野 | しや | THỊ DÃ | tầm nhìn |
| 賄い | まかない | HỐI — | cơm nhân viên |
| 鯛 | たい | ĐIÊU | cá tráp |
| 塩焼き | しおやき | DIÊM THIÊU | nướng muối |
| 板長 | いたちょう | BẢN TRƯỞNG | bếp trưởng ryokan |
| もったいない | — | — | quá quý, phí |
| 恐縮 | きょうしゅく | KHỦNG SÚC | ngại, không dám |
| めでたい | — | — | đáng mừng |
| 語呂合わせ | ごろあわせ | NGỮ LỮ — | chơi chữ đồng âm |
| 受験生 | じゅけんせい | THỤ NGHIỆM SINH | thí sinh |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 守りプラン | まもりプラン | THỦ — | plan thủ |
| 攻めプラン | せめプラン | CÔNG — | plan công |
| 飛びプラン | とびプラン | PHI — | plan bay |
| 段階プラン | だんかいプラン | ĐOẠN GIAI — | plan giai đoạn |
| 主任 | しゅにん | CHỦ NHIỆM | chủ nhiệm |
| 候補 | こうほ | HẦU BỔ | ứng viên |
| 調理師免許 | ちょうりしめんきょ | ĐIỀU LÝ SƯ MIỄN HỨA | bằng đầu bếp |
| 夜間部 | やかんぶ | DẠ GIAN BỘ | khoá đêm |
| 専門学校 | せんもんがっこう | CHUYÊN MÔN HỌC HIỆU | trường nghề |
| 学費 | がくひ | HỌC PHÍ | học phí |
| 両立 | りょうりつ | LƯỠNG LẬP | cùng làm cả hai |
| 奨学制度 | しょうがくせいど | TƯỞNG HỌC CHẾ ĐỘ | chế độ học bổng |
| 補助 | ほじょ | BỔ TRỢ | hỗ trợ |
| 半額 | はんがく | BÁN NGẠCH | nửa giá |
| 板場 | いたば | BẢN TRƯỜNG | khu vực bếp ryokan |
| インバウンド | — | — | du khách nước ngoài |
| 人材 | じんざい | NHÂN TÀI | nhân lực |
| 貴重 | きちょう | QUÝ TRỌNG | quý giá |
| 反面 | はんめん | PHẢN DIỆN | ngược lại |
| 魅力的 | みりょくてき | MỴ LỰC ĐÍCH | hấp dẫn |
| 加算 | かさん | GIA TOÁN | cộng vào |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 資格手当 | しかくてあて | TƯ CÁCH THỦ ĐƯƠNG | phụ cấp tư cách |
| 別建て | べつだて | BIỆT KIẾN — | khoản riêng |
| 励み | はげみ | LỆ — | sự khích lệ |
| 方針 | ほうしん | PHƯƠNG CHÂM | phương châm |
| 学習計画書 | がくしゅうけいかくしょ | HỌC TẬP KẾ HOẠCH THƯ | bản kế hoạch học |
| 自由様式 | じゆうようしき | TỰ DO DẠNG THỨC | biểu mẫu tự do |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 期限 | きげん | KỲ HẠN | deadline |
| 進捗 | しんちょく | TIẾN TRÚC | tiến độ |
| 拝借 | はいしゃく | BÁI TÁ | mượn (khiêm ngữ) |
| 体力的 | たいりょくてき | THỂ LỰC ĐÍCH | về mặt thể lực |
| 段階的 | だんかいてき | ĐOẠN GIAI ĐÍCH | theo giai đoạn |
| 循環 | じゅんかん | TUẦN HOÀN | tuần hoàn |
| 伝統 | でんとう | TRUYỀN THỐNG | truyền thống |
| 模試 | もし | MÔ NGHIỆM | thi thử |
| 願書 | がんしょ | NGUYỆN THƯ | đơn xin |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 読解 | どっかい | ĐỌC GIẢI | đọc hiểu |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000004, 800000048, NULL, 'markdown_book', 'T4. Trợ tá 若女将 Aiko — họp quản lý ryokan (若女将補佐・経営会議出席)', '# Sách thực tập sinh khách sạn · T4. Trợ tá 若女将 Aiko — họp quản lý ryokan (若女将補佐・経営会議出席)

> **Mục tiêu nhân vật:** Trang (25 tuổi, Huế), tháng 10/2027, được giao kiêm vai **若女将補佐** (trợ tá 若女将 Aiko) ngoài việc仲居 chính. Học các mẫu hội thoại tiếng Nhật của vai trợ tá quản lý: nhận lệnh phân công kiêm nhiệm bằng keigo cao, tham dự họp quản lý hàng tháng cùng các 主任 (チェックイン主任・客室主任・厨房主任), ghi biên bản (議事録) tóm tắt, đề xuất ý kiến lễ phép bằng **僭越ながら**, trả lời câu hỏi của các主任, đối ứng khi 女将 Sato vắng và Aiko điều hành, và xử lý sự cố khiếu nại khách Đài Loan ở vai trợ tá.

---

## Bối cảnh

Ngày 5 tháng 10 năm 2027, thứ Ba, mùa lá đỏ Kyoto vừa bắt đầu. Trang đã có N3 + 技能検定3級, đã nộp lộ trình "段階プラン" tháng 9. 女将 Sato bắt đầu giảm dần việc trực tiếp, để 若女将 Aiko quen điều hành. Aiko đề nghị có một trợ tá người ngoại quốc làm cầu nối với khách inbound — vai mới gọi **若女将補佐**. Hôm nay là buổi họp quản lý tháng (月次経営会議), tham dự gồm 女将 (chủ trì), 若女将 Aiko, チェックイン主任 Hashimoto, 客室主任 Yumiko, 厨房主任 (bếp trưởng) Inoue, và Trang vai trợ tá. Mai/Lan không dự họp này.

---

## Tình huống 1 — Văn phòng 女将 · 8:00, 女将 chính thức trao vai 若女将補佐 cho Trang

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | トランさん、おはようございます。お<ruby>呼<rt>よ</rt></ruby>びだてしてすみません。<br>*(Trang, chào buổi sáng. Xin lỗi tôi gọi em đến.)* |
| Trang | おはようございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em chào buổi sáng. Em xin phép.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>本日<rt>ほんじつ</rt></ruby>より、トランさんに<ruby>新<rt>あたら</rt></ruby>しい<ruby>役割<rt>やくわり</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいと<ruby>思<rt>おも</rt></ruby>っています。<ruby>仲居<rt>なかい</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>と<ruby>並行<rt>へいこう</rt></ruby>して、<ruby>若女将<rt>わかおかみ</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>いていただけますか?<br>*(Từ hôm nay, tôi muốn giao em vai trò mới. Song song việc nakai, em làm 若女将補佐 được không?)* |
| Trang | <ruby>若女将<rt>わかおかみ</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>...と<ruby>申<rt>もう</rt></ruby>しますと、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどのような<ruby>業務<rt>ぎょうむ</rt></ruby>でしょうか?<br>*(Trợ tá 若女将... cụ thể là công việc thế nào ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つです。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>月次<rt>げつじ</rt></ruby><ruby>経営<rt>けいえい</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>の<ruby>同席<rt>どうせき</rt></ruby>と<ruby>議事録<rt>ぎじろく</rt></ruby><ruby>作成<rt>さくせい</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、インバウンドお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>の<ruby>若女将<rt>わかおかみ</rt></ruby>サポート。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>新人<rt>しんじん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>の<ruby>素案<rt>そあん</rt></ruby><ruby>作成<rt>さくせい</rt></ruby>。<br>*(3 việc lớn. Một, dự họp quản lý hàng tháng và ghi biên bản. Hai, hỗ trợ 若女将 đối ứng khách inbound. Ba, soạn dự thảo kế hoạch đào tạo nhân viên mới.)* |
| Trang | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>役目<rt>やくめ</rt></ruby>ですが、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めさせていただきます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>仲居<rt>なかい</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby>との<ruby>時間<rt>じかん</rt></ruby><ruby>配分<rt>はいぶん</rt></ruby>はいかが<ruby>調整<rt>ちょうせい</rt></ruby>すればよろしいでしょうか?<br>*(Trọng trách quá lớn nhưng em sẽ hết sức. Cho em xác nhận 1 việc. Phân bổ thời gian với nakai sẽ điều chỉnh thế nào ạ?)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>仲居<rt>なかい</rt></ruby>が<ruby>七割<rt>しちわり</rt></ruby>、<ruby>補佐<rt>ほさ</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby>が<ruby>三割<rt>さんわり</rt></ruby>のイメージです。<ruby>補佐<rt>ほさ</rt></ruby><ruby>手当<rt>てあて</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>を<ruby>加算<rt>かさん</rt></ruby>します。<br>*(70% nakai, 30% trợ tá. Phụ cấp trợ tá cộng thêm 15 nghìn yên/tháng.)* |
| Trang | ありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>からよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em cảm ơn. Từ hôm nay em mong được chỉ bảo.)* |

---

## Tình huống 2 — Hành lang · 8:30, 若女将 Aiko gặp Trang trước họp

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、おはようございます。<ruby>補佐<rt>ほさ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>承<rt>うけたまわ</rt></ruby>っていただきありがとうございます。<br>*(Trang, chào buổi sáng. Cảm ơn em đã nhận vai trợ tá.)* |
| Trang | <ruby>滅相<rt>めっそう</rt></ruby>もございません。お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てるよう<ruby>努<rt>つと</rt></ruby>めてまいります。<br>*(Em không dám. Em sẽ nỗ lực để có ích.)* |
| Aiko | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>月次<rt>げつじ</rt></ruby><ruby>経営<rt>けいえい</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>です。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>議事<rt>ぎじ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をしておきましょう。<br>*(10 giờ hôm nay họp quản lý hàng tháng. Trước đó ta xác nhận nội dung họp.)* |
| Trang | お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin chỉ ạ.)* |
| Aiko | <ruby>議題<rt>ぎだい</rt></ruby>は<ruby>5<rt>いつ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>稼働率<rt>かどうりつ</rt></ruby>・<ruby>客単価<rt>きゃくたんか</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>紅葉<rt>こうよう</rt></ruby><ruby>シーズン<rt></rt></ruby>の<ruby>予約<rt>よやく</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ、インバウンド<ruby>多言語<rt>たげんご</rt></ruby><ruby>対応<rt>たいおう</rt></ruby><ruby>強化<rt>きょうか</rt></ruby>。<ruby>四<rt>よっ</rt></ruby>つ、<ruby>新人<rt>しんじん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>2027<ruby>年度<rt>ねんど</rt></ruby><ruby>下期<rt>しもき</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>。<ruby>五<rt>いつ</rt></ruby>つ、その<ruby>他<rt>た</rt></ruby>。<br>*(5 đề mục. 1, báo cáo công suất phòng và đơn giá khách tháng 9. 2, tình hình đặt phòng mùa lá đỏ. 3, tăng cường đối ứng đa ngôn ngữ inbound. 4, kế hoạch đào tạo nhân viên mới 6 tháng cuối 2027. 5, mục khác.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>議事録<rt>ぎじろく</rt></ruby>は<ruby>項目<rt>こうもく</rt></ruby><ruby>毎<rt>ごと</rt></ruby>に「<ruby>議題<rt>ぎだい</rt></ruby>・<ruby>議論<rt>ぎろん</rt></ruby><ruby>要旨<rt>ようし</rt></ruby>・<ruby>決定<rt>けってい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>・<ruby>担当<rt>たんとう</rt></ruby>・<ruby>期限<rt>きげん</rt></ruby>」の<ruby>順<rt>じゅん</rt></ruby>でまとめる、で<ruby>正<rt>ただ</rt></ruby>しいでしょうか?<br>*(Em rõ. Biên bản tóm theo từng mục: "đề mục - tóm tắt thảo luận - mục quyết định - người phụ trách - deadline", đúng vậy không ạ?)* |
| Aiko | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のインバウンド<ruby>議題<rt>ぎだい</rt></ruby>では、トランさんからもご<ruby>意見<rt>いけん</rt></ruby>をいただきたいです。<br>*(Hoàn hảo. Mục 3 inbound, tôi muốn nghe ý kiến từ em.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>準備<rt>じゅんび</rt></ruby>してまいります。<br>*(Em rõ. Em sẽ chuẩn bị.)* |

---

## Tình huống 3 — Phòng họp chính · 9:55, Trang đến sớm chuẩn bị

*Trang đến phòng họp trước 5 phút, đặt biên bản giấy, bút, nước trà cho từng vị, kiểm tra projector.*

| Vai | Lời thoại |
|---|---|
| Trang | (tự nói) <ruby>議事録<rt>ぎじろく</rt></ruby>テンプレートよし、<ruby>議題<rt>ぎだい</rt></ruby><ruby>5<rt>いつ</rt></ruby>つよし、お<ruby>茶<rt>ちゃ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>杯<rt>はい</rt></ruby>よし。<br>*(Mẫu biên bản OK, 5 đề mục OK, 5 chén trà OK.)* |
| Hashimoto | (vào) おはようございます、トランさん。<ruby>補佐<rt>ほさ</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>ですね。<br>*(Chào sáng Trang. Hôm nay ngày đầu trợ tá nhỉ.)* |
| Trang | <ruby>橋本<rt>はしもと</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、おはようございます。<ruby>不慣<rt>ふな</rt></ruby>れですので、<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chủ nhiệm Hashimoto, em chào. Em chưa quen, hôm nay xin được chỉ bảo ạ.)* |
| Hashimoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>普段<rt>ふだん</rt></ruby><ruby>仲居<rt>なかい</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>っているところを<ruby>見<rt>み</rt></ruby>ています。<ruby>議事録<rt>ぎじろく</rt></ruby>で<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Ổn. Tôi đã thấy em cố gắng ở nakai thường ngày. Biên bản có từ nào không hiểu thì đừng ngại hỏi.)* |
| Yumiko | (vào) おはよう、トランちゃん。<br>*(Chào Trang-chan.)* |
| Inoue (bếp trưởng) | (vào) おはようございます。トランさん、<ruby>本日<rt>ほんじつ</rt></ruby>よろしく。<br>*(Chào. Trang, hôm nay nhờ em.)* |

---

## Tình huống 4 — Phòng họp · 10:00, mở họp + 議題 1: 稼働率報告

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>定刻<rt>ていこく</rt></ruby>になりましたので、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>月次<rt>げつじ</rt></ruby><ruby>経営<rt>けいえい</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>を<ruby>開催<rt>かいさい</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>若女将<rt>わかおかみ</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>として、グェン・トランさんが<ruby>同席<rt>どうせき</rt></ruby>します。<br>*(Đã đến giờ, tôi khai mạc họp quản lý tháng 10. Từ hôm nay với vai 若女将補佐, Nguyễn Trang cùng dự.)* |
| Trang | グェン・トランと<ruby>申<rt>もう</rt></ruby>します。<ruby>議事録<rt>ぎじろく</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めさせていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là Nguyễn Trang. Em đảm nhiệm ghi biên bản. Mong các vị chỉ bảo ạ.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | では<ruby>議題<rt>ぎだい</rt></ruby><ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>稼働率<rt>かどうりつ</rt></ruby>と<ruby>客単価<rt>きゃくたんか</rt></ruby>、<ruby>橋本<rt>はしもと</rt></ruby>さんお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy đề mục 1, công suất phòng và đơn giá khách tháng 9, anh Hashimoto ạ.)* |
| Hashimoto | <ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>稼働率<rt>かどうりつ</rt></ruby>は<ruby>78<rt>ななじゅうはち</rt></ruby><ruby>%<rt>パーセント</rt></ruby>、<ruby>前年<rt>ぜんねん</rt></ruby><ruby>同月<rt>どうげつ</rt></ruby><ruby>比<rt>ひ</rt></ruby>+<ruby>4<rt>よん</rt></ruby><ruby>%<rt>パーセント</rt></ruby>。<ruby>客単価<rt>きゃくたんか</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>前年<rt>ぜんねん</rt></ruby><ruby>同月<rt>どうげつ</rt></ruby><ruby>比<rt>ひ</rt></ruby>+<ruby>8<rt>はっ</rt></ruby><ruby>%<rt>パーセント</rt></ruby>です。<br>*(Công suất tháng 9 là 78%, so cùng kỳ năm trước +4%. Đơn giá khách 32 nghìn yên, so cùng kỳ +8%.)* |
| Trang | (ghi nhanh) <ruby>稼働率<rt>かどうりつ</rt></ruby><ruby>78<rt>ななじゅうはち</rt></ruby>%、<ruby>客単価<rt>きゃくたんか</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>...<br>*(Công suất 78%, đơn giá 32 nghìn yên...)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>順調<rt>じゅんちょう</rt></ruby>ですね。<ruby>橋本<rt>はしもと</rt></ruby>さん、<ruby>客単価<rt>きゃくたんか</rt></ruby><ruby>上昇<rt>じょうしょう</rt></ruby>の<ruby>要因<rt>よういん</rt></ruby>はどう<ruby>分析<rt>ぶんせき</rt></ruby>していますか?<br>*(Suôn sẻ. Anh Hashimoto, phân tích nguyên nhân đơn giá tăng?)* |
| Hashimoto | <ruby>三<rt>みっ</rt></ruby>つ<ruby>考<rt>かんが</rt></ruby>えられます。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>上級<rt>じょうきゅう</rt></ruby><ruby>客室<rt>きゃくしつ</rt></ruby>の<ruby>稼働<rt>かどう</rt></ruby><ruby>増<rt>ぞう</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、インバウンド<ruby>比率<rt>ひりつ</rt></ruby><ruby>上昇<rt>じょうしょう</rt></ruby>(<ruby>32<rt>さんじゅうに</rt></ruby><ruby>%<rt>パーセント</rt></ruby>)。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>夕食<rt>ゆうしょく</rt></ruby><ruby>会席<rt>かいせき</rt></ruby>のアップグレード<ruby>選択<rt>せんたく</rt></ruby><ruby>率<rt>りつ</rt></ruby><ruby>増<rt>ぞう</rt></ruby>です。<br>*(Có 3 yếu tố. 1, tăng công suất phòng cao cấp. 2, tỉ lệ khách inbound tăng (32%). 3, tỉ lệ chọn upgrade kaiseki tăng.)* |

---

## Tình huống 5 — Phòng họp · 10:15, 議題 2: 紅葉シーズン予約状況

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>議題<rt>ぎだい</rt></ruby><ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>紅葉<rt>こうよう</rt></ruby><ruby>シーズン<rt></rt></ruby>の<ruby>予約<rt>よやく</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>です。<br>*(Đề mục 2, tình hình đặt phòng mùa lá đỏ.)* |
| Hashimoto | <ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>30<rt>さんじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>まで、<ruby>満室<rt>まんしつ</rt></ruby>が<ruby>9<rt>きゅう</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>前半<rt>ぜんはん</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>り<ruby>15<rt>じゅうご</rt></ruby><ruby>%<rt>パーセント</rt></ruby>です。<br>*(Từ 15-30/11 đã chốt 9 ngày kín phòng. Nửa đầu tháng 11 còn 15%.)* |
| Inoue | <ruby>厨房<rt>ちゅうぼう</rt></ruby><ruby>側<rt>がわ</rt></ruby>、<ruby>満室<rt>まんしつ</rt></ruby><ruby>日<rt>び</rt></ruby>のスタッフ<ruby>体制<rt>たいせい</rt></ruby>が<ruby>不足<rt>ふそく</rt></ruby>です。<ruby>派遣<rt>はけん</rt></ruby><ruby>調理<rt>ちょうり</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いしたい。<br>*(Bên bếp, ngày kín phòng nhân sự thiếu. Tôi muốn 2 đầu bếp phụ phái cử.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>予算<rt>よさん</rt></ruby>はどれくらいですか?<br>*(Ngân sách bao nhiêu?)* |
| Inoue | <ruby>一<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>8<rt>はっ</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>9<rt>きゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>×<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>で<ruby>32<rt>さんじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(1 người 1 ngày 18 nghìn yên, 9 ngày × 2 người = 324 nghìn yên.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>承認<rt>しょうにん</rt></ruby>します。<ruby>井上<rt>いのうえ</rt></ruby>さん、<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>派遣<rt>はけん</rt></ruby>会社<ruby>名<rt>めい</rt></ruby>と<ruby>契約<rt>けいやく</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Duyệt. Anh Inoue, đến tuần sau xác nhận tên công ty phái cử và điều khoản hợp đồng.)* |
| Trang | (ghi) <ruby>決定<rt>けってい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>:<ruby>派遣<rt>はけん</rt></ruby><ruby>調理<rt>ちょうり</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>(<ruby>予算<rt>よさん</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>)。<ruby>担当<rt>たんとう</rt></ruby>:<ruby>井上<rt>いのうえ</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>。<ruby>期限<rt>きげん</rt></ruby>:<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>日<rt>か</rt></ruby>。<br>*(Mục quyết: duyệt 2 đầu bếp phụ phái cử (ngân sách 324 nghìn yên). Phụ trách: chủ nhiệm Inoue. Deadline: 12/10.)* |

---

## Tình huống 6 — Phòng họp · 10:30, 議題 3: インバウンド多言語対応 — Aiko mời Trang phát biểu

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>議題<rt>ぎだい</rt></ruby><ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、インバウンド<ruby>多言語<rt>たげんご</rt></ruby><ruby>対応<rt>たいおう</rt></ruby><ruby>強化<rt>きょうか</rt></ruby>。<ruby>現在<rt>げんざい</rt></ruby><ruby>英語<rt>えいご</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>のみですが、<ruby>中国語<rt>ちゅうごくご</rt></ruby>・<ruby>韓国語<rt>かんこくご</rt></ruby>・ベトナム<ruby>語<rt>ご</rt></ruby>への<ruby>拡張<rt>かくちょう</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>したい。<br>*(Mục 3, tăng cường đối ứng đa ngôn ngữ inbound. Hiện chỉ tiếng Anh, muốn xét mở rộng Trung-Hàn-Việt.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>具体的<rt>ぐたいてき</rt></ruby>には<ruby>何<rt>なに</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めますか?<br>*(Cụ thể bắt đầu từ đâu?)* |
| Aiko | <ruby>三<rt>みっ</rt></ruby>つ<ruby>考<rt>かんが</rt></ruby>えています。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>客室<rt>きゃくしつ</rt></ruby><ruby>内<rt>ない</rt></ruby><ruby>案内<rt>あんない</rt></ruby><ruby>板<rt>ばん</rt></ruby>の<ruby>多言語<rt>たげんご</rt></ruby><ruby>化<rt>か</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、お<ruby>品書<rt>しながき</rt></ruby>の<ruby>英中韓<rt>えいちゅうかん</rt></ruby>版。<ruby>三<rt>みっ</rt></ruby>つ、QRコードによる<ruby>音声<rt>おんせい</rt></ruby><ruby>案内<rt>あんない</rt></ruby>。トランさん、ベトナム<ruby>語<rt>ご</rt></ruby>ネイティブの<ruby>視点<rt>してん</rt></ruby>からご<ruby>意見<rt>いけん</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>えますか?<br>*(Có 3 ý. 1, đa ngôn ngữ hoá bảng hướng dẫn trong phòng. 2, thực đơn Anh-Trung-Hàn. 3, hướng dẫn audio qua QR. Trang, em cho ý kiến từ góc Việt được không?)* |
| Trang | <ruby>僭越<rt>せんえつ</rt></ruby>ながら、<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、お<ruby>品書<rt>しながき</rt></ruby>の<ruby>翻訳<rt>ほんやく</rt></ruby>は<ruby>機械<rt>きかい</rt></ruby><ruby>翻訳<rt>ほんやく</rt></ruby>では<ruby>不<rt>ふ</rt></ruby><ruby>十分<rt>じゅうぶん</rt></ruby>かと<ruby>存<rt>ぞん</rt></ruby>じます。<ruby>例<rt>たと</rt></ruby>えば<ruby>炊<rt>た</rt></ruby>き<ruby>合<rt>あ</rt></ruby>わせをそのまま「Boiled together」とすると<ruby>魅力<rt>みりょく</rt></ruby>が<ruby>伝<rt>つた</rt></ruby>わりません。<br>*(Em xin được lễ phép nói 2 điều. 1, dịch thực đơn bằng máy chưa đủ. Ví dụ takiawase dịch thẳng "Boiled together" không truyền hết sức hấp dẫn.)* |
| Inoue | おっしゃる<ruby>通<rt>とお</rt></ruby>り。<ruby>料理<rt>りょうり</rt></ruby>の<ruby>哲学<rt>てつがく</rt></ruby>が<ruby>失<rt>うしな</rt></ruby>われる。<br>*(Đúng vậy. Triết lý món bị mất.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、QRコード<ruby>案内<rt>あんない</rt></ruby>はベトナム<ruby>人<rt>じん</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>有効<rt>ゆうこう</rt></ruby>と<ruby>思<rt>おも</rt></ruby>われます。<ruby>特<rt>とく</rt></ruby>に<ruby>温泉<rt>おんせん</rt></ruby><ruby>入<rt>はい</rt></ruby>り<ruby>方<rt>かた</rt></ruby>、<ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>着方<rt>きかた</rt></ruby>、<ruby>夕食<rt>ゆうしょく</rt></ruby><ruby>時間<rt>じかん</rt></ruby>などの<ruby>基本<rt>きほん</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>音声<rt>おんせい</rt></ruby>+<ruby>動画<rt>どうが</rt></ruby>でご<ruby>案内<rt>あんない</rt></ruby>すると、お<ruby>問<rt>と</rt></ruby>い<ruby>合<rt>あ</rt></ruby>わせの<ruby>減<rt>げん</rt></ruby><ruby>少<rt>しょう</rt></ruby>にも<ruby>繋<rt>つな</rt></ruby>がります。<br>*(2, QR sẽ rất hữu hiệu với khách Việt. Đặc biệt cách tắm onsen, cách mặc yukata, giờ ăn tối — cơ bản dùng audio + video hướng dẫn sẽ giảm câu hỏi.)* |
| Aiko | お<ruby>問<rt>と</rt></ruby>い<ruby>合<rt>あ</rt></ruby>わせ<ruby>削減<rt>さくげん</rt></ruby>の<ruby>視点<rt>してん</rt></ruby>、いいですね。<ruby>橋本<rt>はしもと</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>のフロントお<ruby>問<rt>と</rt></ruby>い<ruby>合<rt>あ</rt></ruby>わせ<ruby>件数<rt>けんすう</rt></ruby>は?<br>*(Góc giảm câu hỏi hay đấy. Anh Hashimoto, số lượt khách hỏi ở quầy tháng 9?)* |
| Hashimoto | <ruby>1,243<rt>せんにひゃくよんじゅうさん</rt></ruby><ruby>件<rt>けん</rt></ruby>、うち<ruby>外国人<rt>がいこくじん</rt></ruby>お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>関連<rt>かんれん</rt></ruby>が<ruby>68<rt>ろくじゅうはち</rt></ruby><ruby>%<rt>パーセント</rt></ruby>。<ruby>基本<rt>きほん</rt></ruby><ruby>事項<rt>じこう</rt></ruby>の<ruby>質問<rt>しつもん</rt></ruby>が<ruby>過半数<rt>かはんすう</rt></ruby>です。<br>*(1.243 lượt, trong đó khách nước ngoài 68%. Câu hỏi cơ bản chiếm quá nửa.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>数字<rt>すうじ</rt></ruby>で<ruby>裏付<rt>うらづ</rt></ruby>けが<ruby>取<rt>と</rt></ruby>れました。QRコード<ruby>音声<rt>おんせい</rt></ruby><ruby>案内<rt>あんない</rt></ruby>を<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>試<rt>こころ</rt></ruby>みましょう。トランさんを<ruby>担当<rt>たんとう</rt></ruby>に<ruby>指名<rt>しめい</rt></ruby>します。<br>*(Có số liệu hỗ trợ. Trong tháng 11 thử nghiệm QR audio. Tôi chỉ định Trang phụ trách.)* |
| Trang | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>です。<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>素案<rt>そあん</rt></ruby>を<ruby>若女将<rt>わかおかみ</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>いたします。<br>*(Vinh dự quá sức ạ. Trong tháng 10 em nộp dự thảo cho 若女将.)* |

---

## Tình huống 7 — Phòng họp · 10:50, 議題 4: 新人研修下期 — Trang trình素案

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>議題<rt>ぎだい</rt></ruby><ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>新人<rt>しんじん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby><ruby>下期<rt>しもき</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>。トランさんから<ruby>素案<rt>そあん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>していただきます。<br>*(Mục 4, kế hoạch đào tạo nhân viên mới nửa cuối. Mời Trang chia sẻ dự thảo.)* |
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>素案<rt>そあん</rt></ruby>を<ruby>配布<rt>はいふ</rt></ruby>させていただきます。(phát giấy)<br>*(Em xin phép. Em xin phát dự thảo.)* |
| Trang | <ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つの<ruby>変更<rt>へんこう</rt></ruby><ruby>点<rt>てん</rt></ruby>がございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>導入<rt>どうにゅう</rt></ruby>3<ruby>日間<rt>かかん</rt></ruby>のオリエンテーションに「<ruby>京都<rt>きょうと</rt></ruby><ruby>文化<rt>ぶんか</rt></ruby><ruby>歴史<rt>れきし</rt></ruby>セッション」を<ruby>追加<rt>ついか</rt></ruby>。<br>*(Có 3 điểm thay đổi lớn. 1, thêm phiên "Văn hoá lịch sử Kyoto" vào 3 ngày định hướng đầu.)* |
| Yumiko | いいですね。マイさんが「<ruby>祇園祭<rt>ぎおんまつり</rt></ruby>って<ruby>何<rt>なに</rt></ruby>ですか」と<ruby>聞<rt>き</rt></ruby>いた<ruby>時<rt>とき</rt></ruby>、<ruby>説明<rt>せつめい</rt></ruby>に<ruby>時間<rt>じかん</rt></ruby>かかったので。<br>*(Hay đấy. Lúc Mai hỏi "Gion Matsuri là gì" tôi mất thời gian giải thích.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、やさしい<ruby>日本語<rt>にほんご</rt></ruby><ruby>教材<rt>きょうざい</rt></ruby>の<ruby>作成<rt>さくせい</rt></ruby>と、<ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>目<rt>め</rt></ruby><ruby>末<rt>まつ</rt></ruby>に<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り<ruby>面談<rt>めんだん</rt></ruby>を<ruby>導入<rt>どうにゅう</rt></ruby>。<br>*(2, tạo giáo trình yasashii nihongo và đưa vào 面談 hồi cố cuối tháng đầu.)* |
| Inoue | <ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り<ruby>面談<rt>めんだん</rt></ruby>...というのは<ruby>新人<rt>しんじん</rt></ruby>の<ruby>悩<rt>なや</rt></ruby>みを<ruby>早期<rt>そうき</rt></ruby>に<ruby>把握<rt>はあく</rt></ruby>するという<ruby>趣旨<rt>しゅし</rt></ruby>ですか?<br>*(面談 hồi cố... mục đích là nắm sớm trăn trở của tân nhân viên ạ?)* |
| Trang | はい、その<ruby>通<rt>とお</rt></ruby>りでございます。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby><ruby>自身<rt>じしん</rt></ruby>が<ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>目<rt>め</rt></ruby>に<ruby>悩<rt>なや</rt></ruby>みを<ruby>溜<rt>た</rt></ruby>め<ruby>込<rt>こ</rt></ruby>んでいたので、<ruby>早期<rt>そうき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>る<ruby>機会<rt>きかい</rt></ruby>を<ruby>設<rt>もう</rt></ruby>けたく<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Vâng, đúng vậy. Bản thân em 1 năm trước cuối tháng đầu đã tích tụ trăn trở, em muốn tạo cơ hội lắng nghe sớm.)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>研修<rt>けんしゅう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby><ruby>時<rt>じ</rt></ruby>に「<ruby>京都<rt>きょうと</rt></ruby><ruby>名所<rt>めいしょ</rt></ruby><ruby>巡<rt>めぐ</rt></ruby>り」<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>。<ruby>清水寺<rt>きよみずでら</rt></ruby>、<ruby>金閣寺<rt>きんかくじ</rt></ruby>などを<ruby>実際<rt>じっさい</rt></ruby>に<ruby>訪<rt>おとず</rt></ruby>れて、お<ruby>客様<rt>きゃくさま</rt></ruby>へのご<ruby>案内<rt>あんない</rt></ruby>に<ruby>役立<rt>やくだ</rt></ruby>てる。<br>*(3, kết thúc đào tạo có "Tour danh thắng Kyoto" 1 ngày có lương. Đến Kiyomizu, Kinkaku để hỗ trợ giới thiệu cho khách.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>案<rt>あん</rt></ruby>。<ruby>予算<rt>よさん</rt></ruby><ruby>感<rt>かん</rt></ruby>は?<br>*(Phương án tuyệt. Ngân sách dự kiến?)* |
| Trang | <ruby>新人<rt>しんじん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby>あたり<ruby>研修<rt>けんしゅう</rt></ruby><ruby>費<rt>ひ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>1<ruby>日<rt>にち</rt></ruby>です。<ruby>下期<rt>しもき</rt></ruby><ruby>採用<rt>さいよう</rt></ruby><ruby>予定<rt>よてい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>で<ruby>合計<rt>ごうけい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>+<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>分<rt>ぶん</rt></ruby>です。<br>*(Mỗi tân nhân viên 15 nghìn yên + 1 ngày có lương. Tuyển 2 người nửa cuối → tổng 30 nghìn yên + 2 ngày có lương.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>承認<rt>しょうにん</rt></ruby>します。トランさんが<ruby>担当<rt>たんとう</rt></ruby>、ユミコさんがサポート。<br>*(Duyệt. Trang phụ trách, Yumiko hỗ trợ.)* |

---

## Tình huống 8 — Phòng họp · 11:10, 議題 5: その他, sự cố khiếu nại khách Đài Loan tuần trước

| Vai | Lời thoại |
|---|---|
| Hashimoto | その<ruby>他<rt>た</rt></ruby>として<ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>ご<ruby>共有<rt>きょうゆう</rt></ruby>です。<ruby>先週<rt>せんしゅう</rt></ruby><ruby>木曜<rt>もくよう</rt></ruby>、<ruby>台湾<rt>たいわん</rt></ruby>から<ruby>団体<rt>だんたい</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>から<ruby>苦情<rt>くじょう</rt></ruby>がございました。<br>*(Mục khác có 1 việc chia sẻ. Thứ Năm tuần trước, đoàn 6 vị khách Đài Loan có khiếu nại.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>内容<rt>ないよう</rt></ruby>は?<br>*(Nội dung?)* |
| Hashimoto | <ruby>夕食<rt>ゆうしょく</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>予約<rt>よやく</rt></ruby>のところ、<ruby>厨房<rt>ちゅうぼう</rt></ruby><ruby>側<rt>がわ</rt></ruby>が<ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>と<ruby>誤認<rt>ごにん</rt></ruby>、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>遅<rt>おく</rt></ruby>れの<ruby>提供<rt>ていきょう</rt></ruby>になってしまいました。<ruby>その場<rt>そのば</rt></ruby>で<ruby>謝罪<rt>しゃざい</rt></ruby>、<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>サービスで<ruby>対応<rt>たいおう</rt></ruby>。<br>*(Đặt ăn tối 6 giờ, bên bếp nhầm thành 7 giờ, đưa lên chậm 30 phút. Tại chỗ xin lỗi, đối ứng bằng đồ uống miễn phí.)* |
| Inoue | <ruby>厨房<rt>ちゅうぼう</rt></ruby>として<ruby>深<rt>ふか</rt></ruby>くお<ruby>詫<rt>わ</rt></ruby>び<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>原因<rt>げんいん</rt></ruby>は<ruby>前日<rt>ぜんじつ</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>が<ruby>厨房<rt>ちゅうぼう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>に<ruby>到達<rt>とうたつ</rt></ruby>していなかったことです。<br>*(Bên bếp xin lỗi sâu sắc. Nguyên nhân là liên lạc thay đổi đặt hôm trước không đến người phụ trách bếp.)* |
| Aiko | <ruby>連絡<rt>れんらく</rt></ruby>フローを<ruby>見直<rt>みなお</rt></ruby>す<ruby>必要<rt>ひつよう</rt></ruby>がありますね。トランさん、<ruby>補佐<rt>ほさ</rt></ruby>として<ruby>何<rt>なに</rt></ruby>かご<ruby>提案<rt>ていあん</rt></ruby>はありますか?<br>*(Cần xem lại luồng liên lạc. Trang, với vai trợ tá em đề xuất gì không?)* |
| Trang | <ruby>僭越<rt>せんえつ</rt></ruby>ながら。<ruby>現在<rt>げんざい</rt></ruby><ruby>予約<rt>よやく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>はフロントが<ruby>口頭<rt>こうとう</rt></ruby>または<ruby>付箋<rt>ふせん</rt></ruby>で<ruby>厨房<rt>ちゅうぼう</rt></ruby>へ<ruby>伝達<rt>でんたつ</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>っております。<ruby>確認<rt>かくにん</rt></ruby><ruby>署名<rt>しょめい</rt></ruby>付きの<ruby>変更<rt>へんこう</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby><ruby>方式<rt>ほうしき</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>することで、<ruby>口頭<rt>こうとう</rt></ruby><ruby>伝<rt>つた</rt></ruby>え<ruby>漏<rt>も</rt></ruby>れを<ruby>防<rt>ふせ</rt></ruby>げるかと<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Em xin được lễ phép nói. Hiện thay đổi đặt phòng là lễ tân truyền miệng hoặc dán giấy nhớ cho bếp. Nếu đổi sang thông báo thay đổi có ký xác nhận, có thể tránh sót truyền miệng.)* |
| Inoue | <ruby>賛成<rt>さんせい</rt></ruby>します。<ruby>厨房<rt>ちゅうぼう</rt></ruby><ruby>側<rt>がわ</rt></ruby>もサインを<ruby>返<rt>かえ</rt></ruby>す<ruby>運用<rt>うんよう</rt></ruby>で。<br>*(Đồng ý. Bên bếp cũng ký phản hồi cho yên tâm.)* |
| Hashimoto | フロントとしても<ruby>賛成<rt>さんせい</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>試<rt>こころ</rt></ruby>みましょう。<br>*(Lễ tân cũng đồng ý. Tuần sau bắt đầu thử.)* |
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>決定<rt>けってい</rt></ruby>。トランさん、<ruby>通知書<rt>つうちしょ</rt></ruby>の<ruby>様式<rt>ようしき</rt></ruby><ruby>素案<rt>そあん</rt></ruby>を<ruby>今週<rt>こんしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>までにご<ruby>提出<rt>ていしゅつ</rt></ruby>ください。<br>*(Quyết. Trang, nộp dự thảo biểu mẫu thông báo đến thứ Sáu tuần này.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em rõ.)* |

---

## Tình huống 9 — Phòng họp · 11:25, đóng họp

| Vai | Lời thoại |
|---|---|
| <ruby>女将<rt>おかみ</rt></ruby> | <ruby>他<rt>ほか</rt></ruby>にご<ruby>発言<rt>はつげん</rt></ruby>がなければ、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>はこれにて<ruby>閉会<rt>へいかい</rt></ruby>いたします。<br>*(Nếu không còn phát biểu khác, tôi xin bế mạc họp.)* |
| Cả phòng | ありがとうございました。<br>*(Cảm ơn ạ.)* |
| Aiko | トランさん、<ruby>議事録<rt>ぎじろく</rt></ruby>の<ruby>清書<rt>せいしょ</rt></ruby>は<ruby>明日<rt>あす</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>までに、メールで<ruby>関係者<rt>かんけいしゃ</rt></ruby>に<ruby>配信<rt>はいしん</rt></ruby>してください。<br>*(Trang, biên bản chép sạch đến sáng mai, gửi email cho người liên quan.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>関係者<rt>かんけいしゃ</rt></ruby>は<ruby>女将<rt>おかみ</rt></ruby>、<ruby>若女将<rt>わかおかみ</rt></ruby>、<ruby>橋本<rt>はしもと</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、<ruby>木村<rt>きむら</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>...あ、<ruby>客室<rt>きゃくしつ</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>のユミコ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>の<ruby>4<rt>よん</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>でよろしいでしょうか?<br>*(Em rõ. Người liên quan là 女将, 若女将, chủ nhiệm Hashimoto, chủ nhiệm Yumiko (客室), chủ nhiệm Inoue — 4 vị đúng không ạ?)* |
| Aiko | はい。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>初回<rt>しょかい</rt></ruby>とは<ruby>思<rt>おも</rt></ruby>えないほど<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていらっしゃいました。<br>*(Vâng. Hôm nay vất vả em rồi. Không nghĩ là lần đầu, em rất điềm tĩnh.)* |
| Trang | <ruby>緊張<rt>きんちょう</rt></ruby>で<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えておりました。ご<ruby>指導<rt>しどう</rt></ruby>のおかげです。<br>*(Em hồi hộp run tay. Nhờ các vị chỉ bảo ạ.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 11:45, Yumiko khen Trang

| Vai | Lời thoại |
|---|---|
| Yumiko | トランちゃん、お<ruby>疲<rt>つか</rt></ruby>れさま。「<ruby>僭越<rt>せんえつ</rt></ruby>ながら」が<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>絶妙<rt>ぜつみょう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っていてかっこよかった。<br>*(Trang-chan, vất vả. Em chèn "senetsu nagara" 2 lần đúng lúc, đỉnh thật.)* |
| Trang | (cười) ユミコ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わった<ruby>言葉<rt>ことば</rt></ruby>です。「<ruby>立場<rt>たちば</rt></ruby>が<ruby>下<rt>した</rt></ruby>の<ruby>者<rt>もの</rt></ruby>が<ruby>意見<rt>いけん</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げる<ruby>時<rt>とき</rt></ruby>の<ruby>定型<rt>ていけい</rt></ruby>」って。<br>*(Chị Yumiko dạy em từ này. "Câu mẫu khi người dưới đưa ý kiến".)* |
| Yumiko | そう。「<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>で</rt></ruby>がましいですが」も<ruby>同<rt>おな</rt></ruby>じ<ruby>意味<rt>いみ</rt></ruby>。<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けると<ruby>表現<rt>ひょうげん</rt></ruby>が<ruby>豊<rt>ゆた</rt></ruby>かになる。<br>*(Đúng. "Sashidegamashii desu ga" cũng cùng nghĩa. Dùng đan xen sẽ giàu hơn.)* |
| Trang | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>議事録<rt>ぎじろく</rt></ruby><ruby>清書<rt>せいしょ</rt></ruby>、<ruby>今<rt>いま</rt></ruby>から<ruby>取<rt>と</rt></ruby>りかかります。<br>*(Em học được. Em bắt đầu chép sạch biên bản bây giờ.)* |
| Yumiko | <ruby>明日<rt>あす</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>でいいよ。<ruby>急<rt>いそ</rt></ruby>がず<ruby>正確<rt>せいかく</rt></ruby>に。<br>*(Sáng mai cũng được. Đừng vội, chính xác.)* |

---

## Tình huống 11 — Phòng nghỉ · 14:00, Trang ngồi viết 議事録 và 通知書素案

*Trang ngồi máy tính, soạn 議事録 và 変更通知書. Aiko ghé qua xem.*

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、<ruby>議事録<rt>ぎじろく</rt></ruby>の<ruby>進<rt>すす</rt></ruby>み<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか?<br>*(Trang, biên bản tiến triển sao rồi?)* |
| Trang | <ruby>議題<rt>ぎだい</rt></ruby><ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>まで<ruby>仕上<rt>しあ</rt></ruby>がりました。<ruby>少<rt>すこ</rt></ruby>しご<ruby>確認<rt>かくにん</rt></ruby>いただけますか?<br>*(Đã xong đến mục 3. Bà xem giúp em được không?)* |
| Aiko | (đọc) ...<ruby>議題<rt>ぎだい</rt></ruby><ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>決定<rt>けってい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>のところ、「<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>試行<rt>しこう</rt></ruby>」と<ruby>書<rt>か</rt></ruby>かれていますが、より<ruby>正確<rt>せいかく</rt></ruby>には「<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>から<ruby>30<rt>さんじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>までの<ruby>期間<rt>きかん</rt></ruby>で<ruby>試行<rt>しこう</rt></ruby>」とした<ruby>方<rt>ほう</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>です。<br>*(... mục 3 phần "mục quyết", em viết "thử nghiệm trong tháng 11", chính xác hơn là "thử nghiệm trong giai đoạn 1-30/11" sẽ rõ hơn.)* |
| Trang | おっしゃる<ruby>通<rt>とお</rt></ruby>りでございます。<ruby>修正<rt>しゅうせい</rt></ruby>いたします。<br>*(Đúng vậy ạ. Em sửa.)* |
| Aiko | あと、<ruby>変更<rt>へんこう</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby><ruby>素案<rt>そあん</rt></ruby>はどんな<ruby>項目<rt>こうもく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Còn dự thảo thông báo thay đổi em định gồm những mục nào?)* |
| Trang | <ruby>5<rt>いつ</rt></ruby>つ<ruby>考<rt>かんが</rt></ruby>えております。<ruby>予約<rt>よやく</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>・お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>名<rt>めい</rt></ruby>・<ruby>変更<rt>へんこう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>(<ruby>時間<rt>じかん</rt></ruby>・<ruby>人数<rt>にんずう</rt></ruby>・アレルギーなど)・フロント<ruby>担当<rt>たんとう</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>署名<rt>しょめい</rt></ruby>・<ruby>厨房<rt>ちゅうぼう</rt></ruby><ruby>受領<rt>じゅりょう</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>署名<rt>しょめい</rt></ruby>。<br>*(Em nghĩ 5 mục. Số đặt phòng - tên khách - mục thay đổi (giờ/số người/dị ứng v.v.) - chữ ký người phụ trách lễ tân - chữ ký người nhận bên bếp.)* |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>構成<rt>こうせい</rt></ruby>。「<ruby>変更<rt>へんこう</rt></ruby><ruby>日時<rt>にちじ</rt></ruby>」も<ruby>項目<rt>こうもく</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>してください。<ruby>後<rt>あと</rt></ruby>で<ruby>遡<rt>さかのぼ</rt></ruby>れるように。<br>*(Cấu trúc tuyệt. Thêm mục "ngày giờ thay đổi" nữa. Để sau truy ngược được.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>合計<rt>ごうけい</rt></ruby><ruby>6<rt>ろっ</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>で<ruby>清書<rt>せいしょ</rt></ruby>いたします。<br>*(Em rõ. Em sẽ chép sạch tổng 6 mục.)* |

---

## Tình huống 12 — Sảnh ryokan · 16:30, sự cố khách Đài Loan trở lại — Trang xử lý kiêm trợ tá

*Đoàn 6 khách Đài Loan tuần trước trở lại check-in lần hai (định kỳ kinh doanh) — họ vẫn nhớ vụ chậm 30 phút.*

| Vai | Lời thoại |
|---|---|
| Khách (đại diện) | ええと、こんにちは。<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>陳<rt>チェン</rt></ruby>でございます。<br>*(Chào. Tôi là Chen tuần trước.)* |
| Trang | <ruby>陳<rt>チェン</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>先週<rt>せんしゅう</rt></ruby>はご<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で<ruby>大変<rt>たいへん</rt></ruby>ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけし、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。(cúi 45 độ)<br>*(Thưa ngài Chen, tuần trước về vụ bữa tối em đã gây phiền phức lớn, em chân thành xin lỗi ạ.)* |
| Khách | あ、いえいえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>実<rt>じつ</rt></ruby>は、<ruby>家族<rt>かぞく</rt></ruby>がここの<ruby>料理<rt>りょうり</rt></ruby>を<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>って、また<ruby>来<rt>き</rt></ruby>たんです。<br>*(À không, ổn rồi. Thật ra, gia đình thích món ở đây, lại đến.)* |
| Trang | お<ruby>戻<rt>もど</rt></ruby>りいただき、<ruby>心<rt>こころ</rt></ruby>から<ruby>嬉<rt>うれ</rt></ruby>しく<ruby>存<rt>ぞん</rt></ruby>じます。<ruby>本日<rt>ほんじつ</rt></ruby>はささやかながらお<ruby>詫<rt>わ</rt></ruby>びのお<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちとして、<ruby>当館<rt>とうかん</rt></ruby>から<ruby>食前酒<rt>しょくぜんしゅ</rt></ruby>をプレゼントさせていただきます。<br>*(Em chân thành vui được ngài quay lại. Hôm nay với chút lòng xin lỗi, ryokan tặng quý khách rượu khai vị ạ.)* |
| Khách | え、そんな、いいですよ。<br>*(Ơ, không cần đâu.)* |
| Aiko | (vừa đến) <ruby>若女将<rt>わかおかみ</rt></ruby>のアイコでございます。<ruby>先週<rt>せんしゅう</rt></ruby>はご<ruby>不快<rt>ふかい</rt></ruby>な<ruby>思<rt>おも</rt></ruby>いをさせてしまい、<ruby>重<rt>かさ</rt></ruby>ねてお<ruby>詫<rt>わ</rt></ruby>び<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>陳<rt>チェン</rt></ruby><ruby>様<rt>さま</rt></ruby>のお<ruby>気持<rt>きも</rt></ruby>ちは<ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>く<ruby>頂戴<rt>ちょうだい</rt></ruby>いたしますが、<ruby>本日<rt>ほんじつ</rt></ruby>はぜひお<ruby>納<rt>おさ</rt></ruby>めくださいませ。<br>*(Tôi là Aiko, 若女将. Tuần trước đã làm quý khách khó chịu, tôi xin lỗi thêm. Lòng tốt ngài Chen tôi xin nhận, hôm nay xin ngài hãy nhận quà ạ.)* |
| Khách | <ruby>分<rt>わ</rt></ruby>かりました。じゃ、いただきます。ありがとう。<br>*(Vâng. Tôi nhận. Cảm ơn.)* |
| Trang | お<ruby>部屋<rt>へや</rt></ruby>までご<ruby>案内<rt>あんない</rt></ruby>いたします。どうぞこちらへ。<br>*(Em xin dẫn lên phòng. Mời lối này.)* |

---

## Tình huống 13 — Phòng riêng · 17:30, Aiko khen Trang xử lý nhanh

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、<ruby>先<rt>さっ</rt></ruby>きの<ruby>陳<rt>チェン</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>、<ruby>素晴<rt>すば</rt></ruby>らしかったです。<ruby>会議<rt>かいぎ</rt></ruby>で<ruby>謝罪<rt>しゃざい</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いたばかりで、<ruby>食前酒<rt>しょくぜんしゅ</rt></ruby>プレゼントの<ruby>判断<rt>はんだん</rt></ruby>を<ruby>即時<rt>そくじ</rt></ruby>にされましたね。<br>*(Trang, xử lý ngài Chen vừa nãy tuyệt vời. Em vừa nghe chuyện xin lỗi ở họp xong, quyết định tặng rượu khai vị tức thì.)* |
| Trang | <ruby>会議<rt>かいぎ</rt></ruby>での<ruby>議論<rt>ぎろん</rt></ruby>を<ruby>反映<rt>はんえい</rt></ruby>させていただきました。<ruby>独断<rt>どくだん</rt></ruby>で<ruby>失礼<rt>しつれい</rt></ruby>でしたら<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Em đã áp dụng thảo luận ở họp. Nếu tự quyết bất kính em xin lỗi ạ.)* |
| Aiko | <ruby>滅相<rt>めっそう</rt></ruby>もない。<ruby>補佐<rt>ほさ</rt></ruby>として<ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>でした。<ruby>食前酒<rt>しょくぜんしゅ</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>は<ruby>補佐<rt>ほさ</rt></ruby><ruby>権限<rt>けんげん</rt></ruby><ruby>内<rt>ない</rt></ruby>と<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>正式<rt>せいしき</rt></ruby>に<ruby>認<rt>みと</rt></ruby>めます。<ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>以下<rt>いか</rt></ruby>のサービス<ruby>判断<rt>はんだん</rt></ruby>は<ruby>事後<rt>じご</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>でも<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Không hề. Phán đoán đúng của trợ tá. Từ hôm nay quyết định 1 chai rượu khai vị thuộc quyền trợ tá. Phán đoán dịch vụ ≤5 nghìn yên báo cáo sau cũng được.)* |
| Trang | <ruby>大変<rt>たいへん</rt></ruby><ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>いお<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>権限<rt>けんげん</rt></ruby>に<ruby>見合<rt>みあ</rt></ruby>う<ruby>判断力<rt>はんだんりょく</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけるよう<ruby>努<rt>つと</rt></ruby>めてまいります。<br>*(Lời quá quý. Em sẽ nỗ lực rèn năng lực phán đoán xứng với quyền hạn.)* |

---

## Tình huống 14 — Phòng Trang, ký túc · 22:30, gọi mẹ báo tin trợ tá

> Cảnh tiếng Việt — gọi Huế.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Alo mẹ ơi! Mẹ chưa ngủ chứ? Có tin lớn báo mẹ. |
| Mẹ | (tiếng Việt) Mẹ đang xem TV. Lại tin tốt gì nữa hả con? |
| Trang | (tiếng Việt) Hôm nay con được giao vai mới: 若女将補佐 — trợ tá cho bà 若女将 Aiko. Vẫn làm nakai 70%, còn 30% là dự họp quản lý hàng tháng và phụ Aiko đối ứng khách Tây. Phụ cấp thêm 15 nghìn yên một tháng. |
| Mẹ | (tiếng Việt) Trợ tá là gì? Phải làm thêm gì nhiều không? |
| Trang | (tiếng Việt) Là vai phụ tá quản lý ấy mẹ. Họp quản lý hàng tháng có 6 người: bà 女将 chủ trì, bà 若女将 Aiko, chủ nhiệm lễ tân, chủ nhiệm phòng (chị Yumiko), bếp trưởng, và con. Con ghi biên bản. Hôm nay đi họp đầu tiên — bàn công suất phòng, mùa lá đỏ, đối ứng đa ngôn ngữ, đào tạo kohai mới. |
| Mẹ | (tiếng Việt) Trời, mới năm 3 mà con đã ngồi họp với mấy người lớn rồi. Có sợ không con? |
| Trang | (tiếng Việt) Run chứ mẹ. Tay con run khi viết. Nhưng nhờ chị Yumiko dạy câu "僭越ながら" — "em xin được lễ phép nói" — con dùng đúng lúc nên đề xuất QR audio cho khách Việt được bà 女将 duyệt. Con phụ trách dự án này từ tháng 11. |
| Mẹ | (tiếng Việt) Mẹ tự hào quá. Mà con ơi, vai mới này có ảnh hưởng đến SSW1 không? Có làm chậm hồ sơ không? |
| Trang | (tiếng Việt) Không mẹ ạ. Ngược lại, vai trợ tá là điểm cộng cho hồ sơ. Bà 若女将 hôm nay còn cho con quyền tự quyết dịch vụ dưới 5 nghìn yên — báo cáo sau cũng được. Như vụ tặng rượu khai vị cho khách Đài Loan tuần trước bị chậm 30 phút, hôm nay họ trở lại con tặng rượu xin lỗi. |
| Mẹ | (tiếng Việt) Con biết quá nhiều thứ rồi, mẹ nghe chóng mặt. À mà mẹ hỏi cái này: em Lâm đỗ đại học rồi! Tuần sau lên Đà Nẵng nhập học. |
| Trang | (tiếng Việt) Thật hả mẹ? Tuyệt vời quá! Mẹ cho con xin số tài khoản nó, con chuyển 5 triệu mừng nhập học. |
| Mẹ | (tiếng Việt) Khỏi cần con. Mẹ lo được. Con để dành mà chuẩn bị hồ sơ SSW1. |
| Trang | (tiếng Việt) Không, em nhập học là phải có quà chị Trang. Con quyết rồi. Mai con chuyển. |
| Mẹ | (tiếng Việt) Ừ thôi tuỳ con. Ngủ sớm nha con. Mai 5 rưỡi dậy đúng không? |
| Trang | (tiếng Việt) Vâng mẹ. Sáng mai phải nộp biên bản họp với mẫu thông báo thay đổi đặt phòng cho bà Aiko. Con yêu mẹ. |

---

## Tình huống 15 — Bàn học · 23:30, ghi sổ tổng kết ngày đầu trợ tá

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>若女将<rt>わかおかみ</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>。<ruby>学<rt>まな</rt></ruby>びの<ruby>記録<rt>きろく</rt></ruby>。<br>*(5/10, ngày đầu trợ tá. Ghi lại bài học.)* |
| Trang | <ruby>一<rt>いち</rt></ruby>、<ruby>議事録<rt>ぎじろく</rt></ruby>は「<ruby>議題<rt>ぎだい</rt></ruby>・<ruby>議論<rt>ぎろん</rt></ruby><ruby>要旨<rt>ようし</rt></ruby>・<ruby>決定<rt>けってい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>・<ruby>担当<rt>たんとう</rt></ruby>・<ruby>期限<rt>きげん</rt></ruby>」の<ruby>5<rt>ご</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>で<ruby>整理<rt>せいり</rt></ruby>。<br>*(1. Biên bản sắp 5 mục: đề mục - tóm tắt - quyết định - phụ trách - deadline.)* |
| Trang | <ruby>二<rt>に</rt></ruby>、<ruby>意見<rt>いけん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げる<ruby>時<rt>とき</rt></ruby>は「<ruby>僭越<rt>せんえつ</rt></ruby>ながら」「<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>で</rt></ruby>がましいですが」を<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>ける。<br>*(2. Khi đưa ý kiến dùng đan xen "senetsu nagara" và "sashidegamashii desu ga".)* |
| Trang | <ruby>三<rt>さん</rt></ruby>、<ruby>数字<rt>すうじ</rt></ruby>で<ruby>裏付<rt>うらづ</rt></ruby>けする<ruby>大切<rt>たいせつ</rt></ruby>さ(<ruby>橋本<rt>はしもと</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby><ruby>1,243<rt>せんにひゃくよんじゅうさん</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>68<rt>ろくじゅうはち</rt></ruby><ruby>%<rt>パーセント</rt></ruby>)。<ruby>感覚<rt>かんかく</rt></ruby>だけの<ruby>提案<rt>ていあん</rt></ruby>は<ruby>通<rt>とお</rt></ruby>らない。<br>*(3. Quan trọng có số liệu hậu thuẫn (chủ nhiệm Hashimoto 1.243 lượt, 68%). Đề xuất chỉ cảm tính không qua.)* |
| Trang | <ruby>四<rt>し</rt></ruby>、<ruby>補佐<rt>ほさ</rt></ruby><ruby>権限<rt>けんげん</rt></ruby><ruby>内<rt>ない</rt></ruby>:<ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>以下<rt>いか</rt></ruby><ruby>事後<rt>じご</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>可<rt>か</rt></ruby>。<ruby>陳<rt>チェン</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>食前酒<rt>しょくぜんしゅ</rt></ruby>で<ruby>適用<rt>てきよう</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(4. Quyền trợ tá: dưới 5 nghìn yên báo cáo sau được. Đã áp dụng với rượu khai vị ngài Chen.)* |
| Trang | <ruby>五<rt>ご</rt></ruby>、<ruby>明日<rt>あす</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby><ruby>議事録<rt>ぎじろく</rt></ruby><ruby>配信<rt>はいしん</rt></ruby>、<ruby>金曜<rt>きんよう</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby><ruby>素案<rt>そあん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>QR<ruby>音声<rt>おんせい</rt></ruby><ruby>素案<rt>そあん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>。<br>*(5. Sáng mai gửi biên bản, thứ Sáu nộp dự thảo thông báo thay đổi, cuối tháng 10 nộp dự thảo QR audio.)* |
| Trang | <ruby>六<rt>ろく</rt></ruby>、<ruby>弟<rt>おとうと</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>!<ruby>明日<rt>あす</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>送金<rt>そうきん</rt></ruby>。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>喜<rt>よろこ</rt></ruby>びが<ruby>私<rt>わたし</rt></ruby>の<ruby>原動力<rt>げんどうりょく</rt></ruby>。<br>*(6. Em trai đậu đại học! Mai chuyển 5 vạn. Niềm vui gia đình là động lực của mình.)* |
| Trang | <ruby>一<rt>ひと</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>一<rt>ひと</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>役目<rt>やくめ</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えてまいる。<ruby>精進<rt>しょうじん</rt></ruby>あるのみ。<br>*(Từng ngày, đáp lại trọng trách. Chỉ có shoujin.)* |

---

## Đọng lại chương 4

Trang chính thức kiêm vai **若女将補佐** ngoài nakai 仲居, dự buổi **月次経営会議** đầu tiên với 5 議題 và đảm nhiệm **議事録**. Học các mẫu câu công sở cấp quản lý: nhận vai bằng **身に余るお役目ですが、精一杯務めさせていただきます**, ghi biên bản theo 5 cấu trúc (**議題・議論要旨・決定事項・担当・期限**), đưa ý kiến lễ phép bằng **僭越ながら / 差し出がましいですが**, đề xuất kèm số liệu (1.243 lượt, 68% inbound), hiểu cơ chế **補佐権限内** (dưới 5 nghìn yên báo cáo sau được), xử lý sự cố khiếu nại tái phát bằng **重ねてお詫び申し上げます + 食前酒プレゼント**, và phân biệt **修正・確認・配信・配布** trong văn phòng. Học từ Aiko cách hợp số liệu + đề xuất, từ Yumiko cách dùng đan xen **僭越ながら / 差し出がましいですが**.

> Từ vựng & mẫu câu chương này: 若女将補佐・月次経営会議・議事録・議題・議論要旨・決定事項・担当・期限・稼働率・客単価・前年同月比・インバウンド・多言語対応・QRコード音声案内・派遣調理補助・新人研修下期・素案・配布・閉会・配信・関係者・変更通知書・補佐権限内・事後報告・僭越ながら・差し出がましいですが・身に余るお役目です・〜という趣旨ですか・〜という理解で正しいでしょうか・重ねてお詫び申し上げます

---

## Bí quyết chương

- **議事録 5 cấu trúc cố định**: 議題・議論要旨・決定事項・担当・期限. Mỗi mục trên 1 dòng, không gộp. Tên người + deadline cụ thể.
- **僭越ながら vs 差し出がましいですが**: cả hai đều "em xin được lễ phép nói". Dùng đan xen để giàu hơn. KHÔNG dùng quá 2 lần/buổi họp — sẽ ép thiếu tự tin.
- **Đề xuất + số liệu**: 若女将 thấy QR audio "hay đấy" → 女将 chỉ duyệt khi Hashimoto cung cấp 1.243 lượt + 68%. Không có số → không qua. Quy luật chung họp quản lý ryokan.
- **補佐権限内**: 若女将 cấp riêng quyền cho trợ tá quyết các dịch vụ nhỏ (≤5k yên) không cần xin trước. Báo cáo sau. Đây là "động tin" — bước đầu trao quyền.
- **謝罪 tái phát**: khách khiếu nại trở lại → 重ねてお詫び申し上げます (xin lỗi LẠI). Không nhắc lại lỗi cũ chi tiết. Tặng quà nhỏ (食前酒) cho thấy ryokan nhớ.
- **配布 vs 配信**: 配布 = phát giấy tại chỗ. 配信 = gửi email/digital. Đừng nhầm trong văn phòng.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 役割 | やくわり | DỊCH CÁT | vai trò |
| 並行 | へいこう | TỊNH HÀNH | song song |
| 若女将補佐 | わかおかみほさ | NHƯỢC NỮ TƯỚNG PHỤ TÁ | trợ tá 若女将 |
| 月次 | げつじ | NGUYỆT THỨ | hàng tháng |
| 経営会議 | けいえいかいぎ | KINH DOANH HỘI NGHỊ | họp quản lý |
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | biên bản họp |
| 作成 | さくせい | TÁC THÀNH | soạn, lập |
| 素案 | そあん | TỐ ÁN | dự thảo |
| 時間配分 | じかんはいぶん | THỜI GIAN PHỐI PHÂN | phân bổ thời gian |
| 補佐手当 | ほさてあて | PHỤ TÁ THỦ ĐƯƠNG | phụ cấp trợ tá |
| 議題 | ぎだい | NGHỊ ĐỀ | đề mục họp |
| 議論要旨 | ぎろんようし | NGHỊ LUẬN YẾU CHỈ | tóm tắt thảo luận |
| 決定事項 | けっていじこう | QUYẾT ĐỊNH SỰ HẠNG | mục quyết định |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 期限 | きげん | KỲ HẠN | deadline |
| 稼働率 | かどうりつ | GIÁ ĐỘNG SUẤT | công suất phòng |
| 客単価 | きゃくたんか | KHÁCH ĐƠN GIÁ | đơn giá khách |
| 前年同月比 | ぜんねんどうげつひ | TIỀN NIÊN ĐỒNG NGUYỆT TỶ | so cùng kỳ năm trước |
| 順調 | じゅんちょう | THUẬN ĐIỆU | suôn sẻ |
| 要因 | よういん | YẾU NHÂN | yếu tố nguyên nhân |
| 分析 | ぶんせき | PHÂN TÍCH | phân tích |
| 上級客室 | じょうきゅうきゃくしつ | THƯỢNG CẤP KHÁCH THẤT | phòng cao cấp |
| 比率 | ひりつ | TỶ SUẤT | tỉ lệ |
| 紅葉シーズン | こうようシーズン | HỒNG DIỆP — | mùa lá đỏ |
| 予約状況 | よやくじょうきょう | DỰ ƯỚC TÌNH HUỐNG | tình hình đặt phòng |
| 満室 | まんしつ | MÃN THẤT | kín phòng |
| 派遣 | はけん | PHÁI KHIỂN | phái cử |
| 調理補助 | ちょうりほじょ | ĐIỀU LÝ BỔ TRỢ | đầu bếp phụ |
| 予算 | よさん | DỰ TOÁN | ngân sách |
| 承認 | しょうにん | THỪA NHẬN | duyệt, chấp thuận |
| 契約条件 | けいやくじょうけん | KHẾ ƯỚC ĐIỀU KIỆN | điều khoản hợp đồng |
| 多言語対応 | たげんごたいおう | ĐA NGÔN NGỮ ĐỐI ỨNG | đối ứng đa ngôn ngữ |
| 強化 | きょうか | CƯỜNG HOÁ | tăng cường |
| 拡張 | かくちょう | KHUẾCH TRƯƠNG | mở rộng |
| 検討 | けんとう | KIỂM THẢO | xem xét |
| 案内板 | あんないばん | ÁN NỘI BẢN | bảng hướng dẫn |
| お品書 | おしながき | — | thực đơn ryokan |
| QRコード | — | — | mã QR |
| 音声案内 | おんせいあんない | ÂM THANH ÁN NỘI | hướng dẫn bằng audio |
| 動画 | どうが | ĐỘNG HOẠ | video |
| 問い合わせ | といあわせ | VẤN — | câu hỏi, liên hệ |
| 削減 | さくげん | TƯỚC GIẢM | giảm bớt |
| 件数 | けんすう | KIỆN SỐ | số lượt |
| 過半数 | かはんすう | QUÁ BÁN SỐ | quá nửa |
| 裏付け | うらづけ | LÝ PHÓ — | căn cứ, hậu thuẫn |
| 試み | こころみ | THỬ — | thử nghiệm |
| 指名 | しめい | CHỈ DANH | chỉ định |
| 身に余る | みにあまる | THÂN — DƯ — | quá sức, vinh dự |
| 配布 | はいふ | PHỐI BỐ | phát tại chỗ |
| 配信 | はいしん | PHỐI TÍN | gửi email/digital |
| 導入 | どうにゅう | ĐẠO NHẬP | đưa vào |
| 振り返り | ふりかえり | — | hồi cố, xem lại |
| 趣旨 | しゅし | THÚ CHỈ | mục đích |
| 早期 | そうき | TẢO KỲ | sớm |
| 設ける | もうける | THIẾT — | tạo, lập |
| 名所巡り | めいしょめぐり | DANH SỞ — | tour danh thắng |
| 有給研修 | ゆうきゅうけんしゅう | HỮU CẤP NGHIÊN TU | đào tạo có lương |
| 採用 | さいよう | THÁI DỤNG | tuyển dụng |
| 苦情 | くじょう | KHỔ TÌNH | khiếu nại |
| 誤認 | ごにん | NGỘ NHẬN | nhận nhầm |
| 提供 | ていきょう | ĐỀ CUNG | cung cấp |
| 謝罪 | しゃざい | TẠ TỘI | xin lỗi |
| 連絡フロー | れんらく — | LIÊN LẠC — | luồng liên lạc |
| 見直す | みなおす | KIẾN TRỰC — | xem lại |
| 付箋 | ふせん | PHÓ TIÊN | giấy nhớ |
| 伝達 | でんたつ | TRUYỀN ĐẠT | truyền đạt |
| 変更通知書 | へんこうつうちしょ | BIẾN CANH THÔNG TRI THƯ | thông báo thay đổi |
| 様式 | ようしき | DẠNG THỨC | biểu mẫu |
| 運用 | うんよう | VẬN DỤNG | vận hành |
| 閉会 | へいかい | BẾ HỘI | bế mạc |
| 関係者 | かんけいしゃ | QUAN HỆ GIẢ | người liên quan |
| 落ち着く | おちつく | LẠC TRƯỚC | điềm tĩnh |
| 僭越ながら | せんえつながら | TIẾM VIỆT — | em xin được lễ phép nói |
| 差し出がましい | さしでがましい | SAI XUẤT — | mạo muội, lễ phép xin nói |
| 定型 | ていけい | ĐỊNH HÌNH | câu mẫu cố định |
| 反映 | はんえい | PHẢN ÁNH | phản ánh |
| 独断 | どくだん | ĐỘC ĐOÁN | tự quyết |
| 補佐権限 | ほさけんげん | PHỤ TÁ QUYỀN HẠN | quyền hạn trợ tá |
| 事後報告 | じごほうこく | SỰ HẬU BÁO CÁO | báo cáo sau |
| 重ねて | かさねて | TRÙNG — | lặp lại, thêm lần nữa |
| 食前酒 | しょくぜんしゅ | THỰC TIỀN TỬU | rượu khai vị |
| お納め | おおさめ | — NẠP | xin nhận (lễ phép) |
| 原動力 | げんどうりょく | NGUYÊN ĐỘNG LỰC | động lực |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000005, 800000048, NULL, 'markdown_book', 'T5. Mentor cùng lúc 2 kohai (Lan và Mai)', '# Sách thực tập sinh khách sạn · T5. Mentor cùng lúc 2 kohai (Lan và Mai)

> **Mục tiêu nhân vật:** Trang (25t, năm 3 TTS, Huế, N3+) làm 指導員 (mentor) cùng lúc cho 2 kohai mới từ VN — Lan (22t, Đà Nẵng) và Mai (21t, Cần Thơ). Học mẫu hội thoại: phân vai dạy 2 người cùng lúc, phân biệt mức độ hướng dẫn, báo cáo 女将 về tiến độ hai kohai, xử lý so sánh - tị nạnh giữa hai kohai, dạy 言葉遣い khác nhau theo tính cách.

---

## Bối cảnh

Tháng 5 năm 2027. Đầu mùa khách. Ryokan «月の宿» Kyoto vừa nhận 2 kohai TTS từ VN: Lan (22t, tính chậm mà cẩn thận) và Mai (21t, nhanh nhẹn nhưng hay hấp tấp). 女将 giao Trang làm 指導員 chính cho cả hai. Trang giờ vừa làm 仲居 chính, vừa kèm 2 em — kèm song song nhưng phải có cách hướng dẫn khác nhau theo tính cách từng người. Chương này tập trung kỹ năng "mentor 2 kohai cùng lúc".

---

## Tình huống 1 — Phòng nghỉ nhân viên · 7:30, 女将 giao nhiệm vụ chính thức

| Vai | Lời thoại |
|---|---|
| 女将 | チャンさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby>のランさんとマイさんの<ruby>指導員<rt>しどういん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>二人<rt>ふたり</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>で<ruby>大変<rt>たいへん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>いますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trang, từ hôm nay nhờ em làm chỉ đạo viên cho hai bạn mới Lan và Mai. Hai người cùng lúc chắc vất vả, nhưng nhờ em nhé.)* |
| Trang | はい、<ruby>女将<rt>おかみ</rt></ruby>さん。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めさせていただきます。<ruby>二人<rt>ふたり</rt></ruby>の<ruby>性格<rt>せいかく</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うので、<ruby>指導<rt>しどう</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>も<ruby>変<rt>か</rt></ruby>えたほうがよろしいでしょうか?<br>*(Vâng, thưa bà chủ. Em sẽ cố hết sức. Tính cách hai bạn khác nhau, em có nên thay đổi cách hướng dẫn không ạ?)* |
| 女将 | そうですね。ランさんは<ruby>慎重<rt>しんちょう</rt></ruby>、マイさんは<ruby>元気<rt>げんき</rt></ruby>。それぞれに<ruby>合<rt>あ</rt></ruby>った<ruby>声<rt>こえ</rt></ruby>のかけ<ruby>方<rt>かた</rt></ruby>でね。<ruby>比<rt>くら</rt></ruby>べないことが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. Lan cẩn trọng, Mai năng động. Cách nói chuyện phù hợp với từng em nhé. Quan trọng là không so sánh.)* |
| Trang | <ruby>比<rt>くら</rt></ruby>べない…はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>でよろしいですか?<br>*(Không so sánh… vâng, em ghi lòng tạc dạ. Tiến độ thì báo cáo mỗi thứ Sáu được không ạ?)* |
| 女将 | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ em.)* |

---

## Tình huống 2 — Hành lang khu phòng khách · 8:00, gặp 2 kohai lần đầu chính thức

| Vai | Lời thoại |
|---|---|
| Trang | おはようございます、ランさん、マイさん。<ruby>今日<rt>きょう</rt></ruby>から<ruby>私<rt>わたし</rt></ruby>が<ruby>指導<rt>しどう</rt></ruby>させていただきます。<ruby>分<rt>わ</rt></ruby>からないことがあれば、<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Chào buổi sáng, Lan, Mai. Từ hôm nay chị sẽ hướng dẫn các em. Có gì không hiểu cứ hỏi thoải mái.)* |
| Lan | はい、チャン<ruby>先輩<rt>せんぱい</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>緊張<rt>きんちょう</rt></ruby>します…。<br>*(Vâng, chị Trang, mong chị chỉ bảo. Em hồi hộp quá…)* |
| Mai | チャン<ruby>先輩<rt>せんぱい</rt></ruby>!<ruby>早<rt>はや</rt></ruby>く<ruby>仕事<rt>しごと</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えたいです!<ruby>何<rt>なに</rt></ruby>でも<ruby>教<rt>おし</rt></ruby>えてください!<br>*(Chị Trang ơi! Em muốn học việc nhanh! Có gì chị dạy em hết nhé!)* |
| Trang | (mỉm cười) はい、<ruby>二人<rt>ふたり</rt></ruby>のペースで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。マイさんは<ruby>元気<rt>げんき</rt></ruby>がいいですね。でも、<ruby>旅館<rt>りょかん</rt></ruby>では<ruby>声<rt>こえ</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きさに<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Vâng, theo nhịp riêng từng em là được. Mai khỏe khoắn nhỉ. Nhưng ở ryokan thì chú ý âm lượng nhé.)* |
| Mai | あ…はい、すみません。<ruby>小<rt>ちい</rt></ruby>さい<ruby>声<rt>こえ</rt></ruby>で。<br>*(À… vâng, em xin lỗi. Em sẽ nói nhỏ.)* |
| Trang | じゃあ<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>朝食<rt>ちょうしょく</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。ついてきてください。<br>*(Vậy đầu tiên cùng làm chuẩn bị phòng ăn sáng nhé. Theo chị nào.)* |

---

## Tình huống 3 — Phòng ăn sáng · 8:15, dạy bê khay — chia vai khác nhau

*Khay điểm tâm Nhật khá nặng (cá nướng, cơm, súp miso, dưa muối, đậu phụ). Trang quyết định cho Lan bê khay nhẹ trước, Mai khay đầy đủ luôn — vì hợp tính cách.*

| Vai | Lời thoại |
|---|---|
| Trang | ランさん、まずこの<ruby>軽<rt>かる</rt></ruby>めの<ruby>お盆<rt>おぼん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>両手<rt>りょうて</rt></ruby>でしっかり<ruby>持<rt>も</rt></ruby>って、ゆっくり<ruby>歩<rt>ある</rt></ruby>く。<br>*(Lan, bắt đầu từ khay nhẹ này nhé. Cầm chắc hai tay, đi từ từ.)* |
| Lan | はい…(cầm cẩn thận)<ruby>両手<rt>りょうて</rt></ruby>でですね。…(bê chậm)…こうですか?<br>*(Vâng… hai tay nhỉ. … như vậy ạ?)* |
| Trang | はい、<ruby>上手<rt>じょうず</rt></ruby>ですよ。マイさんは<ruby>運動神経<rt>うんどうしんけい</rt></ruby>が<ruby>良<rt>よ</rt></ruby>さそうなので、いきなりフルセットでいきましょう。<br>*(Vâng, giỏi đấy. Mai thì có vẻ khéo léo, mình thử ngay khay đầy đủ nhé.)* |
| Mai | はい!(cầm khay) おっと…<br>*(Vâng! — cầm khay — ối…)* |
| Trang | あ、<ruby>急<rt>いそ</rt></ruby>がない。<ruby>味噌汁<rt>みそしる</rt></ruby>のお<ruby>椀<rt>わん</rt></ruby>は<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>に。<ruby>傾<rt>かたむ</rt></ruby>くとこぼれるからね。<br>*(À, đừng vội. Bát súp miso đặt giữa khay. Nghiêng là đổ đấy.)* |
| Mai | はい、すみません。<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>に。(điều chỉnh)<br>*(Vâng, em xin lỗi. Đặt giữa. — điều chỉnh —)* |
| Trang | ランさんは<ruby>慎重<rt>しんちょう</rt></ruby>で<ruby>安心<rt>あんしん</rt></ruby>。マイさんは<ruby>慎重<rt>しんちょう</rt></ruby>を<ruby>意識<rt>いしき</rt></ruby>すればもっと<ruby>良<rt>よ</rt></ruby>くなります。<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>違<rt>ちが</rt></ruby>うやり<ruby>方<rt>かた</rt></ruby>でいい。<br>*(Lan cẩn trọng nên yên tâm. Mai để ý cẩn trọng hơn nữa thì còn tốt hơn. Hai em có cách khác nhau cũng được mà.)* |

---

## Tình huống 4 — Phòng 桜の間 · 10:30, dạy 言葉遣い (cách dùng từ keigo) — khác mức

*Lan đã thuộc cuốn sổ tay keigo, Mai thì chưa quen. Trang phải đặt câu hỏi khác nhau.*

| Vai | Lời thoại |
|---|---|
| Trang | ランさん、お<ruby>客様<rt>きゃくさま</rt></ruby>に「<ruby>食<rt>た</rt></ruby>べる」を<ruby>使<rt>つか</rt></ruby>う<ruby>時<rt>とき</rt></ruby>、<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>いますか?<br>*(Lan, khi dùng "ăn" với khách thì nói thế nào?)* |
| Lan | 「<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がる」です。<ruby>謙譲語<rt>けんじょうご</rt></ruby>だと「いただく」になります。<br>*(Là "meshiagaru". Khiêm nhường ngữ thì thành "itadaku".)* |
| Trang | <ruby>素晴<rt>すば</rt></ruby>らしい。マイさん、お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>来<rt>く</rt></ruby>る<ruby>時<rt>とき</rt></ruby>、<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>いますか?<br>*(Tuyệt vời. Mai, khi khách đến thì nói gì?)* |
| Mai | えーと…「<ruby>来<rt>き</rt></ruby>ます」?<br>*(Ơ… "kimasu"?)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>動作<rt>どうさ</rt></ruby>だから<ruby>尊敬語<rt>そんけいご</rt></ruby>。「いらっしゃる」です。<br>*(Hành động của khách nên dùng tôn kính ngữ. Là "irassharu" nhé.)* |
| Mai | いらっしゃる…<ruby>難<rt>むずか</rt></ruby>しい!<br>*(Irassharu… khó quá!)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ゆっくりで<ruby>結構<rt>けっこう</rt></ruby>。まずは「いらっしゃいませ」だけ<ruby>完璧<rt>かんぺき</rt></ruby>にしましょう。<ruby>三日<rt>みっか</rt></ruby>で<ruby>慣<rt>な</rt></ruby>れますよ。<br>*(Không sao, từ từ thôi. Trước tiên hoàn hảo "irasshaimase" cái đã. Ba ngày là quen ngay.)* |
| Lan | マイちゃん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Mai ơi, cùng nhau luyện đi.)* |
| Mai | うん、ありがとう、ラン<ruby>姉<rt>ねえ</rt></ruby>。<br>*(Ừ, cảm ơn chị Lan.)* |

---

## Tình huống 5 — Khu cắm hoa · 13:00, Mai làm rơi bình hoa — không la trước Lan

*Mai vô tình va vào bình hoa, nước đổ. Trang phải xử lý mà không làm Mai mất mặt trước Lan.*

| Vai | Lời thoại |
|---|---|
| Mai | あっ!すみません、すみません!<ruby>花瓶<rt>かびん</rt></ruby>を…<br>*(A! Xin lỗi, xin lỗi! Em làm bình hoa…)* |
| Trang | (bình tĩnh) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?ケガはない?まず<ruby>水<rt>みず</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>こう。ランさん、<ruby>雑巾<rt>ぞうきん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきてくれる?<br>*(— bình tĩnh — Không sao chứ? Có bị thương không? Lau nước trước nào. Lan, lấy giúp chị giẻ lau nhé?)* |
| Lan | はい、すぐに。(chạy đi)<br>*(Vâng, ngay ạ. — chạy đi —)* |
| Trang | マイさん、<ruby>怪我<rt>けが</rt></ruby>がなくて<ruby>良<rt>よ</rt></ruby>かった。<ruby>花瓶<rt>かびん</rt></ruby>は<ruby>後<rt>あと</rt></ruby>でゆっくり<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>次<rt>つぎ</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことをしないこと。<br>*(Mai, may mà em không bị thương. Bình hoa lát chị từ từ báo cáo bà chủ. Quan trọng là lần sau không lặp lại.)* |
| Mai | はい…<ruby>本当<rt>ほんとう</rt></ruby>にすみません。<br>*(Vâng… em thật sự xin lỗi.)* |
| Trang | <ruby>歩<rt>ある</rt></ruby>く<ruby>時<rt>とき</rt></ruby>に<ruby>三歩<rt>さんぽ</rt></ruby><ruby>先<rt>さき</rt></ruby>を<ruby>見<rt>み</rt></ruby>るくせをつけて。それだけで<ruby>事故<rt>じこ</rt></ruby>がぐっと<ruby>減<rt>へ</rt></ruby>るから。<br>*(Tập thói quen lúc đi nhìn ba bước trước. Chỉ vậy là tai nạn giảm hẳn.)* |
| Mai | はい、<ruby>三歩<rt>さんぽ</rt></ruby><ruby>先<rt>さき</rt></ruby>を<ruby>見<rt>み</rt></ruby>る。<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, nhìn ba bước trước. Em nhớ rồi.)* |

---

## Tình huống 6 — Phòng nghỉ · 15:00, Lan tâm sự thua kém Mai

*Trong giờ nghỉ chiều, Lan kéo Trang ra một góc, mặt buồn.*

| Vai | Lời thoại |
|---|---|
| Lan | チャン<ruby>姉<rt>ねえ</rt></ruby>…(tiếng Việt) Mai nó nhớ nhanh hơn em, hôm nay đã chào khách được rồi. Em chậm quá…<br>*(— tiếng Việt —)* |
| Trang | (tiếng Việt) Em đừng so sánh. Mai nhớ nhanh mà cũng dễ quên. Em chậm nhưng nhớ kỹ. <ruby>女将<rt>おかみ</rt></ruby>さんも khen em「<ruby>慎重<rt>しんちょう</rt></ruby>」đấy. <br>*(— tiếng Việt —)* |
| Lan | <ruby>慎重<rt>しんちょう</rt></ruby>…<ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Cẩn trọng… thật ạ?)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>。<ruby>旅館<rt>りょかん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>慎重<rt>しんちょう</rt></ruby>な<ruby>人<rt>ひと</rt></ruby>が<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>けるんだよ。<ruby>速<rt>はや</rt></ruby>くなくていい。<br>*(Thật. Việc ryokan thì người cẩn trọng làm được lâu dài. Không cần nhanh.)* |
| Lan | はい、ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, cảm ơn chị. Em sẽ cố gắng.)* |
| Trang | あと、もし<ruby>不安<rt>ふあん</rt></ruby>なことあったらいつでも<ruby>私<rt>わたし</rt></ruby>に<ruby>言<rt>い</rt></ruby>って。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>まないで。<br>*(Còn nữa, có gì lo lắng thì nói chị bất cứ lúc nào. Đừng tự ôm một mình.)* |

---

## Tình huống 7 — Bàn lễ tân · 16:00, dạy đón khách check-in — phân vai

*Có 2 nhóm khách đến cùng lúc. Trang tận dụng để chia mỗi kohai 1 nhóm, mỗi người tự bê hành lý.*

| Vai | Lời thoại |
|---|---|
| Trang | チャンス!お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>二組<rt>ふたくみ</rt></ruby>。ランさんは<ruby>右<rt>みぎ</rt></ruby>の<ruby>御夫婦<rt>ごふうふ</rt></ruby>、マイさんは<ruby>左<rt>ひだり</rt></ruby>の<ruby>御家族<rt>ごかぞく</rt></ruby>。<ruby>挨拶<rt>あいさつ</rt></ruby>だけ、あとは<ruby>私<rt>わたし</rt></ruby>がサポートします。<br>*(Cơ hội! Hai nhóm khách. Lan đón cặp vợ chồng bên phải, Mai đón gia đình bên trái. Chỉ chào thôi, còn lại chị hỗ trợ.)* |
| Lan | (cúi 30 độ) いらっしゃいませ。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>当館<rt>とうかん</rt></ruby>へようこそ。<br>*(— cúi 30 độ — Xin chào quý khách. Chúng tôi đã đợi quý khách. Mời quý khách đến với khách sạn của chúng tôi.)* |
| Mai | (cúi vội) いらっしゃいませ!<ruby>当館<rt>とうかん</rt></ruby>へようこそ!お<ruby>荷物<rt>にもつ</rt></ruby>、お<ruby>持<rt>も</rt></ruby>ちします!<br>*(— cúi vội — Xin chào quý khách! Mời quý khách! Em xin được mang hành lý!)* |
| Trang | (nhỏ với Mai) もう<ruby>少<rt>すこ</rt></ruby>しゆっくり、お<ruby>辞儀<rt>じぎ</rt></ruby>は<ruby>三秒<rt>さんびょう</rt></ruby><ruby>静止<rt>せいし</rt></ruby>。<br>*(— nhỏ với Mai — Chậm thêm chút, cúi giữ ba giây.)* |
| Mai | (cúi lại) はい、<ruby>失礼<rt>しつれい</rt></ruby>いたしました。<ruby>当館<rt>とうかん</rt></ruby>へようこそ。<br>*(— cúi lại — Vâng, em xin lỗi. Mời quý khách đến với khách sạn.)* |
| Khách (đoàn 1) | ありがとう。<ruby>新人<rt>しんじん</rt></ruby>さん?<ruby>頑張<rt>がんば</rt></ruby>ってね。<br>*(Cảm ơn. Nhân viên mới hả? Cố lên nhé.)* |
| Lan | はい、まだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em vẫn đang học. Mong quý khách thông cảm.)* |

---

## Tình huống 8 — Phòng giặt · 18:00, dạy gấp 浴衣 cùng lúc 2 người

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>畳<rt>たた</rt></ruby>み<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えます。まず<ruby>襟<rt>えり</rt></ruby>を<ruby>左<rt>ひだり</rt></ruby><ruby>側<rt>がわ</rt></ruby>に。<ruby>右前<rt>みぎまえ</rt></ruby>は<ruby>死<rt>し</rt></ruby>に<ruby>装束<rt>しょうぞく</rt></ruby>なので<ruby>絶対<rt>ぜったい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>。<br>*(Chị dạy cách gấp yukata. Đầu tiên cổ áo về phía trái. Vạt phải trên là trang phục người chết, tuyệt đối cấm.)* |
| Lan | (cẩn thận sắp) <ruby>左<rt>ひだり</rt></ruby><ruby>前<rt>まえ</rt></ruby>…はい。<br>*(— cẩn thận sắp — Vạt trái trên… vâng.)* |
| Mai | <ruby>右前<rt>みぎまえ</rt></ruby>?<ruby>左前<rt>ひだりまえ</rt></ruby>?どっちが<ruby>上<rt>うえ</rt></ruby>?<br>*(Vạt phải? Vạt trái? Cái nào trên?)* |
| Trang | <ruby>生<rt>い</rt></ruby>きてる<ruby>人<rt>ひと</rt></ruby>は<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>。「<ruby>左前<rt>ひだりまえ</rt></ruby>」ね。<ruby>覚<rt>おぼ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>は「<ruby>左<rt>ひだり</rt></ruby>でラッキー」。<br>*(Người sống thì trái trên. "Hidari-mae" nhé. Cách nhớ: "trái thì lucky".)* |
| Mai | <ruby>左<rt>ひだり</rt></ruby>でラッキー!(cười) これなら<ruby>覚<rt>おぼ</rt></ruby>えられます!<br>*(Trái thì lucky! — cười — Vậy thì nhớ được!)* |
| Lan | (đã gấp xong) チャン<ruby>姉<rt>ねえ</rt></ruby>、こうですか?<br>*(— đã gấp xong — Chị Trang, vậy ạ?)* |
| Trang | <ruby>完璧<rt>かんぺき</rt></ruby>!ランさん、お<ruby>手本<rt>てほん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>。マイさん、ランさんの<ruby>動<rt>うご</rt></ruby>きを<ruby>見<rt>み</rt></ruby>てみて。<ruby>真似<rt>まね</rt></ruby>するのが<ruby>一番<rt>いちばん</rt></ruby><ruby>早<rt>はや</rt></ruby>い。<br>*(Hoàn hảo! Lan đẳng cấp mẫu mực. Mai, xem cử động của Lan thử nào. Bắt chước là nhanh nhất.)* |

---

## Tình huống 9 — Hành lang · 20:00, xử lý lúc Mai trả lời thay Lan

*Khách hỏi đường đến 温泉, Lan đang ấp úng, Mai trả lời thay. Trang phải nhẹ nhàng nhắc.*

| Vai | Lời thoại |
|---|---|
| Khách | すみません、<ruby>大浴場<rt>だいよくじょう</rt></ruby>はどこですか?<br>*(Xin lỗi, nhà tắm chung ở đâu?)* |
| Lan | あ、あの…<ruby>大浴場<rt>だいよくじょう</rt></ruby>は…<br>*(À, dạ… nhà tắm chung là…)* |
| Mai | あ、<ruby>一階<rt>いっかい</rt></ruby>の<ruby>奥<rt>おく</rt></ruby>です!<ruby>階段<rt>かいだん</rt></ruby>を<ruby>下<rt>お</rt></ruby>りて<ruby>右<rt>みぎ</rt></ruby>!<br>*(À, ở cuối tầng 1 ạ! Xuống cầu thang rẽ phải!)* |
| Trang | (lịch sự với khách) <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。マイ、ご<ruby>案内<rt>あんない</rt></ruby>してくれる?<br>*(— lịch sự với khách — Xin lỗi quý khách. Mai, dẫn đường giúp chị nhé?)* |
| Mai | はい!(cùng khách đi)<br>*(Vâng! — cùng khách đi —)* |
| Trang | (sau khi khách đi, nói nhỏ với cả 2) マイさん、<ruby>正解<rt>せいかい</rt></ruby>でも、<ruby>聞<rt>き</rt></ruby>かれた<ruby>人<rt>ひと</rt></ruby>が<ruby>答<rt>こた</rt></ruby>えるのを<ruby>待<rt>ま</rt></ruby>とう。ランさんも<ruby>考<rt>かんが</rt></ruby>えてた。<br>*(— sau khi khách đi, nói nhỏ với cả 2 — Mai, dù đúng, hãy đợi người được hỏi trả lời nhé. Lan cũng đang nghĩ.)* |
| Mai | あ…そうですね、ごめんね、ランちゃん。<br>*(À… đúng nhỉ, xin lỗi Lan.)* |
| Lan | ううん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。マイがいなかったらお<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>待<rt>ま</rt></ruby>たせてた。<br>*(Không sao đâu. Không có Mai thì chị đã để khách chờ.)* |
| Trang | <ruby>二人<rt>ふたり</rt></ruby>で<ruby>補<rt>おぎな</rt></ruby>い<ruby>合<rt>あ</rt></ruby>えればいいチームになります。<ruby>競<rt>きそ</rt></ruby>うより<ruby>協力<rt>きょうりょく</rt></ruby>ね。<br>*(Hai em bổ trợ nhau được là sẽ thành team tốt. Hợp tác hơn là tranh đua nhé.)* |

---

## Tình huống 10 — Phòng nghỉ · 21:30, Trang viết 進捗ノート — báo cáo cho 女将

*Trang ngồi viết note tiến độ. Cô lẩm bẩm để sắp xếp suy nghĩ.*

| Vai | Lời thoại |
|---|---|
| Trang | (viết ra giấy) ランさん:<ruby>畳<rt>たた</rt></ruby>み・<ruby>挨拶<rt>あいさつ</rt></ruby>OK、お<ruby>盆<rt>ぼん</rt></ruby><ruby>慎重<rt>しんちょう</rt></ruby>。<ruby>課題<rt>かだい</rt></ruby>:<ruby>反応速度<rt>はんのうそくど</rt></ruby>、<ruby>自信<rt>じしん</rt></ruby>。<br>*(— viết ra giấy — Lan: gấp, chào OK, bê khay cẩn trọng. Vấn đề: tốc độ phản ứng, tự tin.)* |
| Trang | マイさん:<ruby>挨拶<rt>あいさつ</rt></ruby><ruby>元気<rt>げんき</rt></ruby>、お<ruby>盆<rt>ぼん</rt></ruby>フル<ruby>挑戦<rt>ちょうせん</rt></ruby>OK。<ruby>課題<rt>かだい</rt></ruby>:お<ruby>辞儀<rt>じぎ</rt></ruby>の<ruby>長<rt>なが</rt></ruby>さ、<ruby>声<rt>こえ</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きさ、<ruby>歩<rt>ある</rt></ruby>く<ruby>慎重<rt>しんちょう</rt></ruby>さ。<br>*(Mai: chào năng động, thử khay đầy OK. Vấn đề: độ lâu cúi, âm lượng, cẩn trọng khi đi.)* |
| Hà (đồng nghiệp VN năm 4) | <ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>?<br>*(Kèm kohai, vất vả không?)* |
| Trang | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>より<ruby>頭<rt>あたま</rt></ruby><ruby>使<rt>つか</rt></ruby>う。でも、<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>言<rt>い</rt></ruby>われた「<ruby>比<rt>くら</rt></ruby>べない」が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Thật ra dùng đầu nhiều hơn việc riêng. Nhưng bà chủ dặn "không so sánh" là thật sự quan trọng.)* |
| Hà | わかる。<ruby>私<rt>わたし</rt></ruby>もチャンさんを<ruby>指導<rt>しどう</rt></ruby>した<ruby>時<rt>とき</rt></ruby>、それで<ruby>苦労<rt>くろう</rt></ruby>した。<br>*(Hiểu. Hồi chị kèm Trang cũng vất vì cái đó.)* |
| Trang | (cười) はい、Hà<ruby>先輩<rt>せんぱい</rt></ruby>のおかげで<ruby>私<rt>わたし</rt></ruby>も<ruby>今<rt>いま</rt></ruby>できてます。<br>*(— cười — Vâng, nhờ chị Hà mà giờ em làm được.)* |

---

## Tình huống 11 — Phòng 女将 · Sáng thứ Sáu 9:00, báo cáo tiến độ tuần đầu

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>新人<rt>しんじん</rt></ruby><ruby>二人<rt>ふたり</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をさせていただきます。<br>*(Bà chủ, em xin phép. Em xin báo cáo tiến độ hai bạn mới.)* |
| 女将 | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời em.)* |
| Trang | ランさんは<ruby>慎重<rt>しんちょう</rt></ruby>で<ruby>動作<rt>どうさ</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>です。<ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>畳<rt>たた</rt></ruby>みはすでに<ruby>合格<rt>ごうかく</rt></ruby><ruby>水準<rt>すいじゅん</rt></ruby>。<ruby>課題<rt>かだい</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さく、<ruby>反応<rt>はんのう</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>めです。<br>*(Lan cẩn trọng, động tác kỹ lưỡng. Gấp yukata đã đạt chuẩn. Vấn đề là giọng nhỏ và phản ứng chậm.)* |
| 女将 | マイさんは?<br>*(Mai thì sao?)* |
| Trang | マイさんは<ruby>元気<rt>げんき</rt></ruby>でお<ruby>客様<rt>きゃくさま</rt></ruby>から<ruby>好<rt>す</rt></ruby>かれるタイプですが、<ruby>動作<rt>どうさ</rt></ruby>が<ruby>速<rt>はや</rt></ruby>すぎてミスがあります。<ruby>花瓶<rt>かびん</rt></ruby>を<ruby>倒<rt>たお</rt></ruby>す<ruby>件<rt>けん</rt></ruby>もありました。<br>*(Mai năng động, kiểu khách thích, nhưng cử động nhanh quá nên có lỗi. Có vụ đổ bình hoa.)* |
| 女将 | <ruby>花瓶<rt>かびん</rt></ruby>は<ruby>聞<rt>き</rt></ruby>きました。チャンさんの<ruby>対応<rt>たいおう</rt></ruby>が<ruby>良<rt>よ</rt></ruby>かったと<ruby>聞<rt>き</rt></ruby>いています。<br>*(Vụ bình hoa nghe rồi. Em xử lý tốt nghe đâu.)* |
| Trang | ありがとうございます。<ruby>来週<rt>らいしゅう</rt></ruby>は、ランさんに「<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す<ruby>練習<rt>れんしゅう</rt></ruby>」、マイさんに「<ruby>三歩<rt>さんぽ</rt></ruby><ruby>先<rt>さき</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>癖<rt>くせ</rt></ruby>」を<ruby>重点的<rt>じゅうてんてき</rt></ruby>にやります。<br>*(Cảm ơn bà. Tuần sau với Lan tập trung "luyện ra tiếng", Mai "thói quen nhìn ba bước trước".)* |
| 女将 | いい<ruby>計画<rt>けいかく</rt></ruby>です。チャンさん、よく<ruby>見<rt>み</rt></ruby>ていますね。<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Kế hoạch tốt. Trang quan sát kỹ nhỉ. Tiếp tục nhé.)* |

---

## Tình huống 12 — Nhà ăn nhân viên · Trưa thứ Bảy 12:30, ăn cơm cùng 2 kohai

| Vai | Lời thoại |
|---|---|
| Mai | チャン<ruby>姉<rt>ねえ</rt></ruby>、ベトナム<ruby>料理<rt>りょうり</rt></ruby><ruby>食<rt>た</rt></ruby>べたい!<br>*(Chị Trang ơi, muốn ăn món Việt!)* |
| Lan | わたしも…<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>が<ruby>恋<rt>こい</rt></ruby>しい。<br>*(Em cũng… nhớ vị quê.)* |
| Trang | <ruby>今度<rt>こんど</rt></ruby>の<ruby>休<rt>やす</rt></ruby>みに<ruby>京都<rt>きょうと</rt></ruby><ruby>駅前<rt>えきまえ</rt></ruby>のベトナム<ruby>料理屋<rt>りょうりや</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。フォーもバインミーもあるよ。<br>*(Kỳ nghỉ tới đi tiệm Việt trước ga Kyoto. Có cả phở lẫn bánh mì đó.)* |
| Mai | やった!<br>*(Sướng!)* |
| Lan | チャン<ruby>姉<rt>ねえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>たちと<ruby>食事<rt>しょくじ</rt></ruby>してくれて、ありがとうございます。<br>*(Chị Trang, cảm ơn chị đã ăn cùng tụi em.)* |
| Trang | <ruby>当然<rt>とうぜん</rt></ruby>!<ruby>私<rt>わたし</rt></ruby>も<ruby>一年目<rt>いちねんめ</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>支<rt>ささ</rt></ruby>えてもらった。<ruby>今度<rt>こんど</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>番<rt>ばん</rt></ruby>。<br>*(Đương nhiên! Hồi năm 1 chị cũng được sempai đỡ. Giờ đến lượt chị.)* |
| Mai | ラン<ruby>姉<rt>ねえ</rt></ruby>、<ruby>明日<rt>あした</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>挨拶<rt>あいさつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Chị Lan, mai cùng luyện chào nhé.)* |
| Lan | うん、ありがとう。<ruby>私<rt>わたし</rt></ruby>も<ruby>畳<rt>たた</rt></ruby>み<ruby>方<rt>かた</rt></ruby>マイちゃんに<ruby>教<rt>おし</rt></ruby>えてあげる。<br>*(Ừ, cảm ơn. Chị cũng dạy Mai cách gấp.)* |
| Trang | (mỉm cười, ăn cơm) <ruby>良<rt>よ</rt></ruby>いチームだなあ。<br>*(— mỉm cười, ăn cơm — Team đẹp ghê.)* |

---

## Tình huống 13 — Phòng tiệc · Tối thứ Bảy 19:30, cùng phục vụ tiệc 10 khách — kiểm tra teamwork

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>宴会<rt>えんかい</rt></ruby>は<ruby>十名様<rt>じゅうめいさま</rt></ruby>。ランさんは<ruby>左半分<rt>ひだりはんぶん</rt></ruby>の5<ruby>名<rt>めい</rt></ruby>、マイさんは<ruby>右半分<rt>みぎはんぶん</rt></ruby>の5<ruby>名<rt>めい</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>は<ruby>全体<rt>ぜんたい</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Tiệc tối nay 10 khách. Lan phụ nửa trái 5 người, Mai phụ nửa phải 5 người. Chị bao quát và điều phối.)* |
| Lan・Mai | はい!<br>*(Vâng!)* |
| Trang | <ruby>料理<rt>りょうり</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>先付<rt>さきづけ</rt></ruby>→お<ruby>造<rt>つく</rt></ruby>り→<ruby>椀物<rt>わんもの</rt></ruby>→<ruby>焼<rt>や</rt></ruby>き<ruby>物<rt>もの</rt></ruby>→<ruby>煮物<rt>にもの</rt></ruby>→<ruby>揚<rt>あ</rt></ruby>げ<ruby>物<rt>もの</rt></ruby>→ご<ruby>飯<rt>はん</rt></ruby>→<ruby>水菓子<rt>みずがし</rt></ruby>。<ruby>合図<rt>あいず</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>目線<rt>めせん</rt></ruby>でね。<br>*(Thứ tự món: sakizuke → otsukuri → wanmono → yakimono → nimono → agemono → cơm → tráng miệng. Tín hiệu nhìn mắt chị nhé.)* |
| Mai | (sau khi đặt món) チャン<ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>がビールを<ruby>追加<rt>ついか</rt></ruby>ご<ruby>注文<rt>ちゅうもん</rt></ruby>です。<br>*(— sau khi đặt món — Chị Trang, khách đặt thêm bia.)* |
| Trang | はい、<ruby>注文<rt>ちゅうもん</rt></ruby>OK。ランさんは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Vâng, order OK. Lan ổn chứ?)* |
| Lan | はい、<ruby>順調<rt>じゅんちょう</rt></ruby>です。お<ruby>水<rt>みず</rt></ruby>の<ruby>追加<rt>ついか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してきます。<br>*(Vâng, suôn sẻ. Em đi kiểm tra thêm nước.)* |
| Trang | <ruby>素晴<rt>すば</rt></ruby>らしい、<ruby>自分<rt>じぶん</rt></ruby>から<ruby>動<rt>うご</rt></ruby>けてる。<br>*(Tuyệt vời, tự chủ động được rồi.)* |

---

## Tình huống 14 — Phòng nghỉ · 22:00, kết thúc tuần — Trang gọi điện về VN

> Cảnh tiếng Việt — gọi điện video với em gái ở Huế.

| Vai | Lời thoại |
|---|---|
| Em gái | Chị Trang ơi, hôm nay mệt không? Em thấy chị bơ phờ ghê.<br>*(— tiếng Việt —)* |
| Trang | Mệt mà vui em. Tuần đầu kèm hai đứa kohai cùng lúc, đầu chị quay như chong chóng. Lan thì cẩn thận như rùa, Mai thì nhanh như sóc.<br>*(— tiếng Việt —)* |
| Em gái | Hai đứa khác tính vậy chị dạy sao?<br>*(— tiếng Việt —)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん dặn "<ruby>比<rt>くら</rt></ruby>べない" — không so sánh hai đứa với nhau. Mỗi đứa có thế mạnh riêng. Mà giống mẹ dạy chị em mình hồi nhỏ vậy đó.<br>*(— tiếng Việt, chêm JP —)* |
| Em gái | Mẹ đúng là cũng vậy. Bao giờ chị về?<br>*(— tiếng Việt —)* |
| Trang | Tết âm sang năm. Trước đó chị có kỳ thi SSW kentei. Học mệt lắm, nhưng nếu đỗ thì ở Nhật được thêm 5 năm nữa, lương cao hơn, gửi tiền về cho mẹ nhiều hơn.<br>*(— tiếng Việt, chêm JP —)* |
| Em gái | Cố lên chị! Mẹ tự hào về chị lắm. Khoe khắp xóm chị làm <ruby>仲居<rt>なかい</rt></ruby> ở Kyoto.<br>*(— tiếng Việt, chêm JP —)* |
| Trang | (cười) Mẹ kỳ ghê. Thôi chị đi ngủ. <ruby>明日<rt>あした</rt></ruby> dậy sớm 5 giờ.<br>*(— tiếng Việt, chêm JP —)* |
| Em gái | Ngủ ngon chị!<br>*(— tiếng Việt —)* |

---

## Đọng lại chương

Mentor 2 kohai cùng lúc đòi hỏi Trang phải **biết phân biệt tính cách** và **tránh tuyệt đối so sánh** giữa hai người. Mẫu câu chính: **「<ruby>比<rt>くら</rt></ruby>べないでください」**, **「それぞれのペースで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です」**, **「<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>させていただきます」**, **「<ruby>課題<rt>かだい</rt></ruby>は〜です」**, **「<ruby>三歩<rt>さんぽ</rt></ruby><ruby>先<rt>さき</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>癖<rt>くせ</rt></ruby>をつけて」**, **「<ruby>競<rt>きそ</rt></ruby>うより<ruby>協力<rt>きょうりょく</rt></ruby>」**.

> Từ vựng & mẫu câu chương này: 指導員・新人・慎重・元気・進捗・課題・お盆・浴衣・左前・畳む・反応速度・自信・お辞儀・三歩先を見る・声かけ・補い合う・宴会・先付・お造り・椀物・焼き物・煮物・揚げ物・水菓子・目線・調整.

---

## Bí quyết chương

- **「<ruby>比<rt>くら</rt></ruby>べない」** là quy tắc vàng khi mentor cùng lúc nhiều kohai — mỗi người có thế mạnh khác nhau, đừng nói "Lan giỏi hơn" hay "Mai nhanh hơn".
- **Phân vai theo tính cách**: kohai cẩn trọng giao việc tỉ mỉ trước (gấp yukata), kohai năng động giao việc cần phản xạ (đón khách, chạy hành lý).
- **「<ruby>三秒<rt>さんびょう</rt></ruby><ruby>静止<rt>せいし</rt></ruby>」のお<ruby>辞儀<rt>じぎ</rt></ruby>** — khi cúi chào khách quan trọng phải giữ ba giây, không cúi vội.
- **<ruby>浴衣<rt>ゆかた</rt></ruby>**「<ruby>左前<rt>ひだりまえ</rt></ruby>」là người sống, **「<ruby>右前<rt>みぎまえ</rt></ruby>」là người chết** — quy tắc tuyệt đối không nhầm.
- Khi kohai mắc lỗi, **xử lý trước mặt khách lịch sự**, nhắc nhở sau lưng — không bao giờ trách trước khách.
- Báo cáo tiến độ <ruby>進捗<rt>しんちょく</rt></ruby>定期 với 女将: structure 「<ruby>長所<rt>ちょうしょ</rt></ruby>→<ruby>課題<rt>かだい</rt></ruby>→<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>」.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | mentor, người hướng dẫn |
| 新人 | しんじん | TÂN NHÂN | nhân viên mới |
| 同時 | どうじ | ĐỒNG THỜI | cùng lúc |
| 慎重 | しんちょう | THẬN TRỌNG | cẩn trọng |
| 元気 | げんき | NGUYÊN KHÍ | khỏe, năng động |
| 性格 | せいかく | TÍNH CÁCH | tính cách |
| 比べる | くらべる | TỶ | so sánh |
| 肝に銘じる | きもにめいじる | CAN MINH | ghi lòng tạc dạ |
| 進捗 | しんちょく | TIẾN TRIỂN | tiến độ |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 遠慮 | えんりょ | VIỄN LỰ | ngại, e dè |
| 緊張 | きんちょう | KHẨN TRƯƠNG | hồi hộp |
| 朝食 | ちょうしょく | TRIỀU THỰC | bữa sáng |
| 会場 | かいじょう | HỘI TRƯỜNG | hội trường |
| お盆 | おぼん | BỒN | khay |
| 両手 | りょうて | LƯỠNG THỦ | hai tay |
| 味噌汁 | みそしる | VỊ TĂNG TRẤP | súp miso |
| 傾く | かたむく | KHUYNH | nghiêng |
| 召し上がる | めしあがる | TRIỆU THƯỢNG | ăn (tôn kính) |
| 謙譲語 | けんじょうご | KHIÊM NHƯỢNG NGỮ | khiêm nhường ngữ |
| 尊敬語 | そんけいご | TÔN KÍNH NGỮ | tôn kính ngữ |
| 動作 | どうさ | ĐỘNG TÁC | động tác |
| 花瓶 | かびん | HOA BÌNH | bình hoa |
| 雑巾 | ぞうきん | TẠP CÂN | giẻ lau |
| 怪我 | けが | QUÁI NGÃ | bị thương |
| 三歩先 | さんぽさき | TAM BỘ TIÊN | ba bước trước |
| 反応速度 | はんのうそくど | PHẢN ỨNG TỐC ĐỘ | tốc độ phản ứng |
| 自信 | じしん | TỰ TÍN | tự tin |
| 浴衣 | ゆかた | DỤC Y | yukata |
| 畳む | たたむ | ĐIỆP | gấp |
| 襟 | えり | KHÂM | cổ áo |
| 左前 | ひだりまえ | TẢ TIỀN | vạt trái trên |
| 右前 | みぎまえ | HỮU TIỀN | vạt phải trên (cấm) |
| 死に装束 | しにしょうぞく | TỬ TRANG THÚC | trang phục người chết |
| お手本 | おてほん | THỦ BẢN | mẫu mực |
| 真似 | まね | CHƠN TỰ | bắt chước |
| 大浴場 | だいよくじょう | ĐẠI DỤC TRƯỜNG | nhà tắm chung |
| 階段 | かいだん | GIAI ĐOẠN | cầu thang |
| 案内 | あんない | ÁN NỘI | dẫn đường |
| 待たせる | またせる | ĐÃI | để chờ |
| 補い合う | おぎないあう | BỔ HỢP | bổ trợ nhau |
| 競う | きそう | CẠNH | tranh đua |
| 協力 | きょうりょく | HIỆP LỰC | hợp tác |
| 課題 | かだい | KHÓA ĐỀ | vấn đề cần khắc phục |
| 重点的 | じゅうてんてき | TRỌNG ĐIỂM ĐÍCH | trọng điểm |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 故郷 | こきょう | CỐ HƯƠNG | quê hương |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | đương nhiên |
| 支える | ささえる | CHI | đỡ, hỗ trợ |
| 番 | ばん | PHIÊN | lượt |
| 宴会 | えんかい | YẾN HỘI | tiệc |
| 先付 | さきづけ | TIÊN PHỤ | món khai vị |
| お造り | おつくり | TẠO | sashimi |
| 椀物 | わんもの | OẢN VẬT | món súp |
| 焼き物 | やきもの | THIÊU VẬT | món nướng |
| 煮物 | にもの | CHỬ VẬT | món hầm |
| 揚げ物 | あげもの | DƯƠNG VẬT | món chiên |
| 水菓子 | みずがし | THỦY QUẢ TỬ | tráng miệng |
| 目線 | めせん | MỤC TUYẾN | ánh mắt |
| 調整 | ちょうせい | ĐIỀU CHỈNH | điều phối |
| 順調 | じゅんちょう | THUẬN ĐIỀU | suôn sẻ |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000006, 800000048, NULL, 'markdown_book', 'T6. Ryokan vào brand «高級宿» — chuẩn mới tiếp VIP', '# Sách thực tập sinh khách sạn · T6. Ryokan vào brand «高級宿» — chuẩn mới tiếp VIP

> **Mục tiêu nhân vật:** Trang (25t, năm 3 TTS, Huế, N3+). Ryokan «月の宿» được nhận vào hiệp hội «<ruby>高級宿<rt>こうきゅうやど</rt></ruby>の<ruby>会<rt>かい</rt></ruby>» — tiêu chuẩn dịch vụ tăng cấp. Trang học mẫu hội thoại: lễ tân VIP keigo cao cấp, giới thiệu 懐石 chi tiết, xử lý yêu cầu tỉ mỉ của khách giàu, phối hợp với 仲居頭 mới được cử về, học chuẩn 三つ指 và 茶道 cơ bản.

---

## Bối cảnh

Tháng 6 năm 2027. Ryokan «月の宿» Kyoto vừa được xét nhận vào hiệp hội «高級宿の会» — liên minh ryokan cao cấp Nhật Bản. Theo chuẩn mới, đơn giá phòng tăng từ 35,000 lên 60,000 yên/đêm, khách VIP nhiều hơn (nghệ sĩ, doanh nhân, người nước ngoài siêu giàu). Hiệp hội cử về một 仲居頭 (chef de rang) mới — bà Fujimoto, kinh nghiệm 30 năm tại 京都老舗 — để training toàn bộ nhân viên trong 2 tuần. Chương này tập trung kỹ năng "lên cấp dịch vụ".

---

## Tình huống 1 — Phòng họp nhân viên · 9:00, 女将 thông báo nhận vào hiệp hội

| Vai | Lời thoại |
|---|---|
| 女将 | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせがあります。<ruby>当館<rt>とうかん</rt></ruby>は「<ruby>高級宿<rt>こうきゅうやど</rt></ruby>の<ruby>会<rt>かい</rt></ruby>」への<ruby>加盟<rt>かめい</rt></ruby>が<ruby>認<rt>みと</rt></ruby>められました。<br>*(Mọi người, chào buổi sáng. Hôm nay có thông báo quan trọng. Ryokan chúng ta đã được chấp thuận gia nhập "Hiệp hội ryokan cao cấp".)* |
| Toàn thể | おお〜!<ruby>素晴<rt>すば</rt></ruby>らしい!<br>*(Wow! Tuyệt vời!)* |
| 女将 | <ruby>但<rt>ただ</rt></ruby>し、サービスの<ruby>基準<rt>きじゅん</rt></ruby>も<ruby>厳<rt>きび</rt></ruby>しくなります。<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>倍近<rt>ばいちか</rt></ruby>く、お<ruby>客様<rt>きゃくさま</rt></ruby>も<ruby>富裕層<rt>ふゆうそう</rt></ruby>が<ruby>中心<rt>ちゅうしん</rt></ruby>になります。<br>*(Tuy nhiên, tiêu chuẩn dịch vụ cũng khắt khe hơn. Tháng sau giá phòng gấp đôi, khách chủ yếu tầng lớp giàu.)* |
| Trang | (giơ tay) <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>研修<rt>けんしゅう</rt></ruby>はありますか?<br>*(— giơ tay — Bà chủ, có khóa training không ạ?)* |
| 女将 | はい、<ruby>会<rt>かい</rt></ruby>から<ruby>藤本<rt>ふじもと</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>という<ruby>仲居頭<rt>なかいがしら</rt></ruby>が<ruby>派遣<rt>はけん</rt></ruby>されます。<ruby>二週間<rt>にしゅうかん</rt></ruby>、<ruby>厳<rt>きび</rt></ruby>しく<ruby>指導<rt>しどう</rt></ruby>されるので<ruby>覚悟<rt>かくご</rt></ruby>してください。<br>*(Vâng, từ hiệp hội sẽ phái cô Fujimoto — bậc nakai-gashira đến. Hai tuần huấn luyện nghiêm khắc, các em chuẩn bị tinh thần nhé.)* |
| Trang | はい、<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng, em sẽ cố gắng!)* |

---

## Tình huống 2 — Đại sảnh · 14:00, 藤本先生 đến — chào ra mắt

*Bà Fujimoto, 60 tuổi, kimono xám xanh, đi giày tabi, mang theo cuốn sổ bìa da.*

| Vai | Lời thoại |
|---|---|
| 藤本 | <ruby>初<rt>はじ</rt></ruby>めまして。<ruby>高級宿<rt>こうきゅうやど</rt></ruby>の<ruby>会<rt>かい</rt></ruby>から<ruby>参<rt>まい</rt></ruby>りました<ruby>藤本<rt>ふじもと</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>二週間<rt>にしゅうかん</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp các bạn. Tôi là Fujimoto, đến từ Hiệp hội ryokan cao cấp. Mong hai tuần được nhờ.)* |
| Toàn thể | (cúi 45 độ) よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(— cúi 45 độ — Mong cô chỉ bảo.)* |
| 藤本 | <ruby>本日<rt>ほんじつ</rt></ruby>はまず<ruby>基本<rt>きほん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>から。<ruby>三<rt>みっ</rt></ruby>つ<ruby>指<rt>ゆび</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>、できる<ruby>方<rt>かた</rt></ruby>は?<br>*(Hôm nay từ kiểm tra cơ bản trước. Ai làm được cúi chào "ba ngón"?)* |
| Trang | <ruby>名前<rt>なまえ</rt></ruby>は<ruby>聞<rt>き</rt></ruby>いたことがありますが…<ruby>正<rt>ただ</rt></ruby>しくはできません。<br>*(Em đã nghe tên… nhưng làm đúng thì chưa được.)* |
| 藤本 | <ruby>正直<rt>しょうじき</rt></ruby>でよろしい。<ruby>三<rt>みっ</rt></ruby>つ<ruby>指<rt>ゆび</rt></ruby>は<ruby>畳<rt>たたみ</rt></ruby>に<ruby>正座<rt>せいざ</rt></ruby>し、<ruby>左右<rt>さゆう</rt></ruby>の<ruby>親指<rt>おやゆび</rt></ruby>と<ruby>人差<rt>ひとさ</rt></ruby>し<ruby>指<rt>ゆび</rt></ruby>・<ruby>中指<rt>なかゆび</rt></ruby>の3<ruby>本<rt>ぼん</rt></ruby>を<ruby>畳<rt>たたみ</rt></ruby>につけてお<ruby>辞儀<rt>じぎ</rt></ruby>します。<ruby>最高位<rt>さいこうい</rt></ruby>の<ruby>礼<rt>れい</rt></ruby>です。<br>*(Thành thật là tốt. "Ba ngón" là quỳ trên chiếu, đặt ngón cái + trỏ + giữa của hai tay xuống chiếu rồi cúi. Là lễ cao nhất.)* |
| Trang | <ruby>最高位<rt>さいこうい</rt></ruby>の<ruby>礼<rt>れい</rt></ruby>…<br>*(Lễ cao nhất…)* |
| 藤本 | はい。VIPお<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>客室<rt>きゃくしつ</rt></ruby>でお<ruby>迎<rt>むか</rt></ruby>えする<ruby>時<rt>とき</rt></ruby>、これができないと「<ruby>高級宿<rt>こうきゅうやど</rt></ruby>」とは<ruby>言<rt>い</rt></ruby>えません。<br>*(Vâng. Khi đón khách VIP trong phòng mà không làm được điều này thì không gọi là ryokan cao cấp được.)* |

---

## Tình huống 3 — Phòng tatami · 14:30, Trang tập 三つ指 — bị sửa nghiêm

| Vai | Lời thoại |
|---|---|
| 藤本 | チャンさん、まず<ruby>正座<rt>せいざ</rt></ruby>。<ruby>背筋<rt>せすじ</rt></ruby>はまっすぐ。<ruby>膝<rt>ひざ</rt></ruby>と<ruby>膝<rt>ひざ</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>はこぶし<ruby>一<rt>ひと</rt></ruby>つ。<br>*(Trang, ngồi seiza trước. Lưng thẳng. Hai đầu gối cách nhau một nắm tay.)* |
| Trang | はい。(ngồi xuống)<br>*(Vâng. — ngồi xuống —)* |
| 藤本 | <ruby>両手<rt>りょうて</rt></ruby>を<ruby>畳<rt>たたみ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>へ。<ruby>親指<rt>おやゆび</rt></ruby>と<ruby>人差<rt>ひとさ</rt></ruby>し<ruby>指<rt>ゆび</rt></ruby>で<ruby>三角形<rt>さんかくけい</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る。…<ruby>違<rt>ちが</rt></ruby>います。<ruby>指<rt>ゆび</rt></ruby>はそろえて。<br>*(Hai tay ra trước trên chiếu. Ngón cái và trỏ tạo tam giác… Sai rồi. Khép các ngón lại.)* |
| Trang | はい、<ruby>失礼<rt>しつれい</rt></ruby>しました。(làm lại)<br>*(Vâng, em xin lỗi. — làm lại —)* |
| 藤本 | お<ruby>辞儀<rt>じぎ</rt></ruby>は<ruby>頭<rt>あたま</rt></ruby>と<ruby>背中<rt>せなか</rt></ruby>が<ruby>一直線<rt>いっちょくせん</rt></ruby>。「ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました」と<ruby>言<rt>い</rt></ruby>いながら<ruby>三秒<rt>さんびょう</rt></ruby><ruby>静止<rt>せいし</rt></ruby>。<br>*(Cúi thì đầu và lưng thành một đường. Nói "Hân hạnh được đón quý vị" rồi giữ ba giây.)* |
| Trang | ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。(cúi)<br>*(Hân hạnh được đón quý vị. — cúi —)* |
| 藤本 | <ruby>声<rt>こえ</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>すぎ。<ruby>畳<rt>たたみ</rt></ruby>に<ruby>吸<rt>す</rt></ruby>われます。<ruby>明<rt>あか</rt></ruby>るく、ゆっくり、<ruby>柔<rt>やわ</rt></ruby>らかく。もう<ruby>一度<rt>いちど</rt></ruby>。<br>*(Giọng thấp quá. Bị chiếu hút hết. Sáng, chậm, mềm. Một lần nữa.)* |
| Trang | (sâu hơn) ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<br>*(— sâu hơn — Hân hạnh được đón quý vị.)* |
| 藤本 | はい、よろしい。<ruby>三日<rt>みっか</rt></ruby><ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Vâng, được rồi. Tập liên tục ba ngày.)* |

---

## Tình huống 4 — Lễ tân · 10:00, học 言葉遣い VIP với 藤本

| Vai | Lời thoại |
|---|---|
| 藤本 | <ruby>高級宿<rt>こうきゅうやど</rt></ruby>では「<ruby>了解<rt>りょうかい</rt></ruby>しました」「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です」は<ruby>使<rt>つか</rt></ruby>いません。<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>いますか?<br>*(Tại ryokan cao cấp không dùng "ryōkai shimashita" hay "daijōbu desu". Thay bằng gì?)* |
| Trang | 「<ruby>承知<rt>しょうち</rt></ruby>いたしました」「<ruby>かしこまりました<rt>かしこまりました</rt></ruby>」でしょうか?<br>*(Là "shōchi itashimashita", "kashikomarimashita" ạ?)* |
| 藤本 | <ruby>正解<rt>せいかい</rt></ruby>。「<ruby>了解<rt>りょうかい</rt></ruby>」は<ruby>同等<rt>どうとう</rt></ruby>か<ruby>目下<rt>めした</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>には<ruby>失礼<rt>しつれい</rt></ruby>です。<br>*(Đúng. "Ryōkai" dùng với ngang hàng hoặc dưới. Với khách là vô lễ.)* |
| Trang | はい、<ruby>気<rt>き</rt></ruby>をつけます。<ruby>他<rt>ほか</rt></ruby>には?<br>*(Vâng, em sẽ chú ý. Còn từ nào nữa ạ?)* |
| 藤本 | 「<ruby>本当<rt>ほんとう</rt></ruby>に」→「<ruby>誠<rt>まこと</rt></ruby>に」。「<ruby>今<rt>いま</rt></ruby>」→「ただ<ruby>今<rt>いま</rt></ruby>」。「ちょっと」→「<ruby>少々<rt>しょうしょう</rt></ruby>」。「すぐ」→「<ruby>早速<rt>さっそく</rt></ruby>」。<br>*("Hontō ni" → "makoto ni". "Ima" → "tadaima". "Chotto" → "shōshō". "Sugu" → "sassoku".)* |
| Trang | (ghi) <ruby>誠<rt>まこと</rt></ruby>に・ただ<ruby>今<rt>いま</rt></ruby>・<ruby>少々<rt>しょうしょう</rt></ruby>・<ruby>早速<rt>さっそく</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(— ghi — Makoto ni, tadaima, shōshō, sassoku. Em sẽ học thuộc.)* |
| 藤本 | <ruby>練習<rt>れんしゅう</rt></ruby>です。お<ruby>客様<rt>きゃくさま</rt></ruby>が「お<ruby>風呂<rt>ふろ</rt></ruby>はどこ?」と<ruby>聞<rt>き</rt></ruby>かれたら?<br>*(Luyện thử. Khách hỏi "Phòng tắm ở đâu?" thì sao?)* |
| Trang | お<ruby>風呂<rt>ふろ</rt></ruby>は<ruby>一階<rt>いっかい</rt></ruby>でございます。…<ruby>失礼<rt>しつれい</rt></ruby>します、「<ruby>大浴場<rt>だいよくじょう</rt></ruby>」とお<ruby>呼<rt>よ</rt></ruby>びすべきですか?<br>*(Nhà tắm ở tầng một ạ. … Em xin lỗi, gọi là "daiyokujō" có nên không ạ?)* |
| 藤本 | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせるのが<ruby>基本<rt>きほん</rt></ruby>。お<ruby>風呂<rt>ふろ</rt></ruby>と<ruby>言<rt>い</rt></ruby>われたらお<ruby>風呂<rt>ふろ</rt></ruby>でいい。ただし「ございます」<ruby>付<rt>づ</rt></ruby>けは<ruby>絶対<rt>ぜったい</rt></ruby>。<br>*(Theo từ khách dùng là cơ bản. Khách bảo "ofuro" thì cứ "ofuro". Nhưng phải có "gozaimasu".)* |

---

## Tình huống 5 — Phòng bếp · 11:00, học giới thiệu 懐石料理 chi tiết

*Đầu bếp 板長 Suzuki bày từng món lên bàn để Trang học cách giới thiệu.*

| Vai | Lời thoại |
|---|---|
| 板長 | チャンさん、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会席<rt>かいせき</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。これは?<br>*(Trang, luyện giới thiệu kaiseki hôm nay. Cái này là?)* |
| Trang | <ruby>先付<rt>さきづけ</rt></ruby>です。…えっと、<ruby>枝豆<rt>えだまめ</rt></ruby>の<ruby>豆腐<rt>とうふ</rt></ruby>と<ruby>雲丹<rt>うに</rt></ruby>?<br>*(Là sakizuke ạ. … ờm, đậu phụ edamame và uni?)* |
| 板長 | <ruby>正解<rt>せいかい</rt></ruby>だけど、お<ruby>客様<rt>きゃくさま</rt></ruby>には「<ruby>枝豆<rt>えだまめ</rt></ruby>を<ruby>裏漉<rt>うらご</rt></ruby>しした<ruby>豆腐<rt>とうふ</rt></ruby>に、<ruby>北海道産<rt>ほっかいどうさん</rt></ruby>の<ruby>雲丹<rt>うに</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えました」と<ruby>言<rt>い</rt></ruby>います。<ruby>産地<rt>さんち</rt></ruby>と<ruby>調理法<rt>ちょうりほう</rt></ruby>がポイント。<br>*(Đúng rồi nhưng với khách thì nói "Đậu phụ làm từ edamame rây mịn, kèm uni Hokkaido". Xuất xứ và cách chế biến là điểm quan trọng.)* |
| Trang | <ruby>北海道産<rt>ほっかいどうさん</rt></ruby>の<ruby>雲丹<rt>うに</rt></ruby>…<ruby>裏漉<rt>うらご</rt></ruby>し…(ghi chú)<br>*(Uni Hokkaido… rây mịn… — ghi chú —)* |
| 板長 | <ruby>次<rt>つぎ</rt></ruby>、これは?<br>*(Tiếp, đây?)* |
| Trang | お<ruby>造<rt>つく</rt></ruby>りですね。<ruby>鯛<rt>たい</rt></ruby>と<ruby>鮪<rt>まぐろ</rt></ruby>とイカ。<br>*(Otsukuri đúng không. Tai, maguro và mực.)* |
| 板長 | 「<ruby>明石<rt>あかし</rt></ruby>の<ruby>真鯛<rt>まだい</rt></ruby>、<ruby>大間<rt>おおま</rt></ruby>の<ruby>本鮪<rt>ほんまぐろ</rt></ruby>、<ruby>瀬戸内<rt>せとうち</rt></ruby>の<ruby>烏賊<rt>いか</rt></ruby>でございます」。<ruby>地名<rt>ちめい</rt></ruby>を<ruby>入<rt>い</rt></ruby>れるだけで<ruby>格<rt>かく</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がる。<br>*("Tai chính Akashi, maguro chính hiệu Ōma, mực Setouchi". Chỉ thêm địa danh là đẳng cấp lên ngay.)* |
| Trang | <ruby>明石<rt>あかし</rt></ruby>・<ruby>大間<rt>おおま</rt></ruby>・<ruby>瀬戸内<rt>せとうち</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Akashi, Ōma, Setouchi. Em nhớ rồi.)* |
| 板長 | <ruby>毎日<rt>まいにち</rt></ruby><ruby>仕入<rt>しい</rt></ruby>れが<ruby>違<rt>ちが</rt></ruby>うから、<ruby>朝<rt>あさ</rt></ruby>の<ruby>納品<rt>のうひん</rt></ruby><ruby>表<rt>ひょう</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Mỗi ngày nhập khác nhau, sáng phải kiểm tra phiếu giao hàng.)* |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em sẽ luôn kiểm tra.)* |

---

## Tình huống 6 — Phòng trà · 15:00, học cách rót trà 抹茶 sơ khởi

*Bà Fujimoto dạy Trang cách dâng trà cho khách VIP — không phải trà đạo đầy đủ, chỉ phần cơ bản nakai cần biết.*

| Vai | Lời thoại |
|---|---|
| 藤本 | <ruby>抹茶<rt>まっちゃ</rt></ruby>をお<ruby>出<rt>だ</rt></ruby>しする<ruby>時<rt>とき</rt></ruby>、<ruby>茶碗<rt>ちゃわん</rt></ruby>の<ruby>正面<rt>しょうめん</rt></ruby>はお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>向<rt>む</rt></ruby>けます。<ruby>正面<rt>しょうめん</rt></ruby>はどこか<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Khi dâng matcha, mặt chính của bát hướng về khách. Em biết mặt chính ở đâu không?)* |
| Trang | <ruby>絵<rt>え</rt></ruby>のある<ruby>方<rt>ほう</rt></ruby>でしょうか?<br>*(Phía có hình vẽ ạ?)* |
| 藤本 | はい。<ruby>絵柄<rt>えがら</rt></ruby>や<ruby>模様<rt>もよう</rt></ruby>がある<ruby>方<rt>ほう</rt></ruby>が<ruby>正面<rt>しょうめん</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>はそれを<ruby>見<rt>み</rt></ruby>てから、<ruby>正面<rt>しょうめん</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けて<ruby>飲<rt>の</rt></ruby>みます。<br>*(Đúng. Phía có họa tiết là mặt chính. Khách xem rồi xoay tránh mặt chính mới uống.)* |
| Trang | <ruby>避<rt>さ</rt></ruby>けるんですか?なぜですか?<br>*(Tránh ạ? Tại sao?)* |
| 藤本 | <ruby>正面<rt>しょうめん</rt></ruby>に<ruby>口<rt>くち</rt></ruby>をつけるのは<ruby>失礼<rt>しつれい</rt></ruby>とされています。<ruby>茶道<rt>さどう</rt></ruby>の<ruby>美意識<rt>びいしき</rt></ruby>です。<br>*(Đặt miệng vào mặt chính bị coi là vô lễ. Là thẩm mỹ trà đạo.)* |
| Trang | <ruby>面白<rt>おもしろ</rt></ruby>いですね。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>知<rt>し</rt></ruby>らない<ruby>場合<rt>ばあい</rt></ruby>は?<br>*(Hay nhỉ. Trường hợp khách không biết thì sao?)* |
| 藤本 | <ruby>説明<rt>せつめい</rt></ruby>はしません。さりげなくお<ruby>出<rt>だ</rt></ruby>しするだけ。<ruby>知<rt>し</rt></ruby>らないお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>恥<rt>はじ</rt></ruby>をかかせない。<br>*(Không giải thích. Chỉ đặt nhẹ nhàng thôi. Không làm khách không biết bị mất mặt.)* |
| Trang | <ruby>恥<rt>はじ</rt></ruby>をかかせない…<ruby>深<rt>ふか</rt></ruby>いですね。<br>*(Không làm mất mặt… sâu sắc nhỉ.)* |
| 藤本 | おもてなしは「<ruby>気<rt>き</rt></ruby>づかれないこと」が<ruby>究極<rt>きゅうきょく</rt></ruby>です。<br>*(Omotenashi là "không bị nhận ra" — đỉnh cao là vậy.)* |

---

## Tình huống 7 — Sảnh đón · 15:30, đón thử khách VIP (đóng vai) - 藤本 đóng khách

| Vai | Lời thoại |
|---|---|
| 藤本 (đóng vai khách) | (bước vào, im lặng)<br>*(— bước vào, im lặng —)* |
| Trang | (cúi 45 độ ba giây) ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<ruby>当館<rt>とうかん</rt></ruby>へのご<ruby>来訪<rt>らいほう</rt></ruby>、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(— cúi 45 độ ba giây — Hân hạnh được đón quý vị. Chân thành cảm ơn quý vị đã đến với khách sạn chúng tôi.)* |
| 藤本 (khách) | 田中です。<ruby>予約<rt>よやく</rt></ruby>しています。<br>*(Tôi là Tanaka. Có đặt phòng.)* |
| Trang | <ruby>田中様<rt>たなかさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れのことと<ruby>存<rt>ぞん</rt></ruby>じます。お<ruby>部屋<rt>へや</rt></ruby>のご<ruby>用意<rt>ようい</rt></ruby>は<ruby>整<rt>ととの</rt></ruby>っております。<br>*(Quý ông Tanaka, chúng tôi đã chờ. Hôm nay quý ông chắc đã mệt. Phòng của quý ông đã được chuẩn bị xong.)* |
| 藤本 (khách) | (chỉ vào hành lý) これ、<ruby>運<rt>はこ</rt></ruby>んでくれる?<br>*(— chỉ vào hành lý — Cái này, mang giúp được không?)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>早速<rt>さっそく</rt></ruby>お<ruby>部屋<rt>へや</rt></ruby>までお<ruby>運<rt>はこ</rt></ruby>びいたします。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Vâng ạ. Chúng tôi sẽ mang ngay đến phòng quý ông. Xin chờ một chút ạ.)* |
| 藤本 (rời vai) ストップ。「<ruby>運<rt>はこ</rt></ruby>びます」より「お<ruby>持<rt>も</rt></ruby>ちいたします」のほうがやわらかい。それと「お<ruby>疲<rt>つか</rt></ruby>れのことと<ruby>存<rt>ぞん</rt></ruby>じます」は<ruby>素晴<rt>すば</rt></ruby>らしい。<br>*(— rời vai — Stop. "Hakobimasu" thì thay bằng "omochi itashimasu" mềm hơn. Còn "otsukare no koto to zonjimasu" thì tuyệt vời.)* |
| Trang | ありがとうございます!<ruby>運<rt>はこ</rt></ruby>ぶ→お<ruby>持<rt>も</rt></ruby>ちする。<br>*(Cảm ơn cô! "Hakobu" → "omochi suru".)* |

---

## Tình huống 8 — Phòng 桐の間 · Ngày khách VIP thật đến · 16:00

*Khách Tanaka thật — chủ tịch công ty IT 60 tuổi, đi cùng vợ. Trang dẫn vào phòng VIP.*

| Vai | Lời thoại |
|---|---|
| Trang | (cửa trượt mở, quỳ 三つ指) ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<ruby>本日<rt>ほんじつ</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>をさせていただきますチャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(— mở cửa trượt, quỳ "ba ngón" — Hân hạnh được đón quý vị. Hôm nay con là Trang, phụ trách phục vụ quý vị. Mong quý vị thông cảm.)* |
| Tanaka | (vẻ hài lòng) ご<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(— vẻ hài lòng — Lễ phép quá.)* |
| Trang | <ruby>失礼<rt>しつれい</rt></ruby>いたします。(bước vào phòng) お<ruby>荷物<rt>にもつ</rt></ruby>はこちらへお<ruby>置<rt>お</rt></ruby>きいたします。<ruby>浴衣<rt>ゆかた</rt></ruby>は<ruby>奥様<rt>おくさま</rt></ruby>には<ruby>桃色<rt>ももいろ</rt></ruby>、<ruby>旦那様<rt>だんなさま</rt></ruby>には<ruby>紺<rt>こん</rt></ruby>をご<ruby>用意<rt>ようい</rt></ruby>しております。<br>*(Em xin phép. — bước vào phòng — Hành lý quý vị, em xin đặt tại đây ạ. Yukata, em đã chuẩn bị màu hồng cho bà, màu chàm cho ông.)* |
| 奥様 | あら、<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くわね。<br>*(Ô, chu đáo nhỉ.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>夕食<rt>ゆうしょく</rt></ruby>は<ruby>会席料理<rt>かいせきりょうり</rt></ruby>を18<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>より<ruby>当<rt>とう</rt></ruby>お<ruby>部屋<rt>へや</rt></ruby>にてご<ruby>用意<rt>ようい</rt></ruby>いたします。<br>*(Dạ con cảm ơn quý bà. Bữa tối hôm nay con sẽ phục vụ kaiseki tại phòng vào lúc 6h30 tối.)* |
| Tanaka | お<ruby>風呂<rt>ふろ</rt></ruby>はいつでも?<br>*(Phòng tắm vào lúc nào cũng được?)* |
| Trang | <ruby>大浴場<rt>だいよくじょう</rt></ruby>は24<ruby>時間<rt>じかん</rt></ruby>ご<ruby>利用<rt>りよう</rt></ruby>いただけます。お<ruby>部屋<rt>へや</rt></ruby>の<ruby>露天風呂<rt>ろてんぶろ</rt></ruby>もご<ruby>自由<rt>じゆう</rt></ruby>にお<ruby>使<rt>つか</rt></ruby>いくださいませ。<br>*(Nhà tắm chung mở 24 tiếng. Phòng tắm lộ thiên trong phòng quý vị cũng xin được sử dụng tự do ạ.)* |
| Tanaka | ありがとう。<br>*(Cảm ơn.)* |
| Trang | (quỳ lại cúi) お<ruby>呼<rt>よ</rt></ruby>びの<ruby>際<rt>さい</rt></ruby>は<ruby>枕元<rt>まくらもと</rt></ruby>のベルでお<ruby>知<rt>し</rt></ruby>らせくださいませ。それでは<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(— quỳ lại cúi — Khi cần xin nhấn chuông cạnh gối ạ. Vậy con xin phép.)* |

---

## Tình huống 9 — Hành lang · 17:00, 藤本 nhận xét sau khi quan sát từ xa

| Vai | Lời thoại |
|---|---|
| 藤本 | チャンさん、<ruby>桐<rt>きり</rt></ruby>の<ruby>間<rt>ま</rt></ruby>の<ruby>応対<rt>おうたい</rt></ruby><ruby>見<rt>み</rt></ruby>ていました。<ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>色<rt>いろ</rt></ruby><ruby>分<rt>わ</rt></ruby>けは<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>誰<rt>だれ</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わりましたか?<br>*(Trang, tôi đã quan sát phục vụ phòng Kiri. Phân màu yukata tuyệt vời. Ai dạy em?)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>奥様<rt>おくさま</rt></ruby>には<ruby>明<rt>あか</rt></ruby>るい<ruby>色<rt>いろ</rt></ruby>、と<ruby>聞<rt>き</rt></ruby>いていました。<br>*(Bà chủ dạy với phu nhân thì màu sáng.)* |
| 藤本 | <ruby>細<rt>こま</rt></ruby>かい<ruby>気配<rt>きくば</rt></ruby>りが<ruby>高級宿<rt>こうきゅうやど</rt></ruby>の<ruby>真髄<rt>しんずい</rt></ruby>です。ただ<ruby>一<rt>ひと</rt></ruby>つ。「お<ruby>持<rt>も</rt></ruby>ちいたします」の<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れていましたね?<br>*(Chăm chút tỉ mỉ là cốt lõi ryokan cao cấp. Nhưng một điểm. "Omochi itashimasu" em quên luyện?)* |
| Trang | あ、…「お<ruby>置<rt>お</rt></ruby>きいたします」と<ruby>言<rt>い</rt></ruby>ってしまいました。<br>*(À… em lỡ nói "ooki itashimasu".)* |
| 藤本 | <ruby>意味<rt>いみ</rt></ruby>は<ruby>通<rt>つう</rt></ruby>じますが、<ruby>荷物<rt>にもつ</rt></ruby>を「<ruby>置<rt>お</rt></ruby>く」より「<ruby>運<rt>はこ</rt></ruby>ぶ→お<ruby>持<rt>も</rt></ruby>ちする」が<ruby>動作<rt>どうさ</rt></ruby>の<ruby>主体<rt>しゅたい</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>。<br>*(Nghĩa thì hiểu được, nhưng "vận chuyển → omochi suru" rõ chủ thể hơn "đặt xuống".)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>次<rt>つぎ</rt></ruby>は<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em hiểu rồi. Lần sau em sẽ chú ý.)* |
| 藤本 | チャンさん、<ruby>外国人<rt>がいこくじん</rt></ruby>でここまで<ruby>気配<rt>きくば</rt></ruby>りができるのは<ruby>稀<rt>まれ</rt></ruby>。<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って。<br>*(Trang, người nước ngoài mà chu đáo tới mức này thì hiếm. Hãy tự tin.)* |
| Trang | (xúc động) ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(— xúc động — Em cảm ơn cô. Em sẽ cố gắng.)* |

---

## Tình huống 10 — Phòng 桐の間 · 18:30, phục vụ 会席 — giới thiệu từng món

| Vai | Lời thoại |
|---|---|
| Trang | (bưng khay vào, quỳ) お<ruby>夕食<rt>ゆうしょく</rt></ruby>のご<ruby>用意<rt>ようい</rt></ruby>が<ruby>整<rt>ととの</rt></ruby>いました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(— bưng khay vào, quỳ — Bữa tối đã chuẩn bị xong. Con xin phép.)* |
| Tanaka・奥様 | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phiền em nhé.)* |
| Trang | (đặt món đầu) <ruby>先付<rt>さきづけ</rt></ruby>でございます。<ruby>枝豆<rt>えだまめ</rt></ruby>を<ruby>裏漉<rt>うらご</rt></ruby>しした<ruby>豆腐<rt>とうふ</rt></ruby>に、<ruby>北海道産<rt>ほっかいどうさん</rt></ruby>の<ruby>雲丹<rt>うに</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えました。<ruby>夏<rt>なつ</rt></ruby>のさわやかな<ruby>一品<rt>いっぴん</rt></ruby>でございます。<br>*(— đặt món đầu — Đây là sakizuke. Đậu phụ làm từ edamame rây mịn, kèm uni Hokkaido. Một món mùa hè thanh mát ạ.)* |
| 奥様 | <ruby>綺麗<rt>きれい</rt></ruby>!<ruby>夏<rt>なつ</rt></ruby>らしい<ruby>緑<rt>みどり</rt></ruby>ね。<br>*(Đẹp quá! Màu xanh mùa hè.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>続<rt>つづ</rt></ruby>きまして、お<ruby>造<rt>つく</rt></ruby>りでございます。<ruby>明石<rt>あかし</rt></ruby>の<ruby>真鯛<rt>まだい</rt></ruby>、<ruby>大間<rt>おおま</rt></ruby>の<ruby>本鮪<rt>ほんまぐろ</rt></ruby>、<ruby>瀬戸内<rt>せとうち</rt></ruby>の<ruby>烏賊<rt>いか</rt></ruby>の<ruby>三種<rt>さんしゅ</rt></ruby>でございます。<br>*(Con cảm ơn bà. Tiếp theo là otsukuri. Tai chính Akashi, maguro chính hiệu Ōma, mực Setouchi — ba loại ạ.)* |
| Tanaka | おお、<ruby>明石<rt>あかし</rt></ruby>の<ruby>鯛<rt>たい</rt></ruby>か。<ruby>季節<rt>きせつ</rt></ruby>はちょうどいいね。<br>*(Ồ, tai Akashi. Đúng mùa rồi.)* |
| Trang | <ruby>左様<rt>さよう</rt></ruby>でございます。<ruby>初夏<rt>しょか</rt></ruby>が<ruby>旬<rt>しゅん</rt></ruby>でございます。<br>*(Dạ đúng vậy ạ. Đầu hè là mùa ngon nhất.)* |
| 奥様 | (với chồng) よく<ruby>勉強<rt>べんきょう</rt></ruby>してるわね、この<ruby>方<rt>かた</rt></ruby>。<br>*(— với chồng — Cô này học kỹ thật.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · 22:00, Trang chia sẻ với đồng nghiệp

| Vai | Lời thoại |
|---|---|
| Hà | チャンさん、<ruby>今日<rt>きょう</rt></ruby>のVIPどうだった?<br>*(Trang, hôm nay khách VIP thế nào?)* |
| Trang | <ruby>緊張<rt>きんちょう</rt></ruby>したけど、<ruby>勉強<rt>べんきょう</rt></ruby>したことが<ruby>全部<rt>ぜんぶ</rt></ruby>役に<ruby>立<rt>た</rt></ruby>った。<ruby>奥様<rt>おくさま</rt></ruby>に「<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>く」と<ruby>言<rt>い</rt></ruby>われたよ!<br>*(Hồi hộp nhưng những gì học được đều dùng tới hết. Phu nhân khen "chu đáo" đấy!)* |
| Hà | やった!<ruby>藤本<rt>ふじもと</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>厳<rt>きび</rt></ruby>しいけど<ruby>本物<rt>ほんもの</rt></ruby>だよね。<br>*(Tuyệt! Cô Fujimoto nghiêm nhưng đẳng cấp thật nhỉ.)* |
| Trang | うん。<ruby>三<rt>みっ</rt></ruby>つ<ruby>指<rt>ゆび</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>はぎこちなかったけど、<ruby>今<rt>いま</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えた。<br>*(Ừ. Cúi "ba ngón", đầu vụng về mà giờ cơ thể nhớ rồi.)* |
| Hà | <ruby>言葉遣<rt>ことばづか</rt></ruby>いも<ruby>変<rt>か</rt></ruby>わったね。「<ruby>承知<rt>しょうち</rt></ruby>いたしました」が<ruby>自然<rt>しぜん</rt></ruby>に<ruby>出<rt>で</rt></ruby>てる。<br>*(Cách nói cũng thay đổi nhỉ. "Shōchi itashimashita" ra tự nhiên rồi.)* |
| Trang | <ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がるって<ruby>女将<rt>おかみ</rt></ruby>さんが。<ruby>家<rt>いえ</rt></ruby>にもっと<ruby>送<rt>おく</rt></ruby>れる。<br>*(Bà chủ bảo lương cũng tăng. Gửi về nhà được nhiều hơn.)* |
| Hà | しっかり<ruby>貯金<rt>ちょきん</rt></ruby>して、SSWの<ruby>道<rt>みち</rt></ruby>に<ruby>進<rt>すす</rt></ruby>もう。<br>*(Tiết kiệm cho chắc, tiến tới SSW đi.)* |
| Trang | はい、<ruby>絶対<rt>ぜったい</rt></ruby>。<br>*(Vâng, chắc chắn.)* |

---

## Tình huống 12 — Sảnh tiễn khách · Sáng hôm sau 10:00, tiễn Tanaka

| Vai | Lời thoại |
|---|---|
| Trang | (cúi 45 độ) <ruby>田中様<rt>たなかさま</rt></ruby>、<ruby>奥様<rt>おくさま</rt></ruby>、<ruby>昨夜<rt>さくや</rt></ruby>はお<ruby>休<rt>やす</rt></ruby>みになれましたでしょうか。<br>*(— cúi 45 độ — Quý ông Tanaka, quý bà, đêm qua quý vị có ngủ ngon không ạ?)* |
| 奥様 | ええ、とても。お<ruby>布団<rt>ふとん</rt></ruby>がふかふかで<ruby>気持<rt>きも</rt></ruby>ちよかったわ。<br>*(Vâng, rất ngon. Đệm bông xốp dễ chịu lắm.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>帰<rt>かえ</rt></ruby>りのお<ruby>時間<rt>じかん</rt></ruby>、<ruby>京都駅<rt>きょうとえき</rt></ruby>までタクシーをお<ruby>呼<rt>よ</rt></ruby>びしてございます。<br>*(Con cảm ơn ạ. Giờ về của quý vị, con đã gọi taxi đến ga Kyoto.)* |
| Tanaka | ありがとう。チャンさん、よかったよ。また<ruby>来<rt>き</rt></ruby>たい。<br>*(Cảm ơn. Trang, em tốt lắm. Sẽ đến nữa.)* |
| Trang | <ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>心<rt>こころ</rt></ruby>よりお<ruby>待<rt>ま</rt></ruby>ち<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げております。<br>*(Chân thành cảm ơn quý ông. Chúng con từ tận đáy lòng mong được đón quý ông trở lại.)* |
| Tanaka | (đưa phong bì) これ、ほんの<ruby>気持<rt>きも</rt></ruby>ち。<br>*(— đưa phong bì — Đây, chút lòng thành.)* |
| Trang | (lúng túng) いえいえ、<ruby>仕事<rt>しごと</rt></ruby>ですので、<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>確認<rt>かくにん</rt></ruby>させていただいてもよろしいでしょうか?<br>*(— lúng túng — Dạ không ạ, đây là công việc, con xin phép hỏi ý bà chủ ạ?)* |
| Tanaka | (cười) <ruby>真面目<rt>まじめ</rt></ruby>だね。それも<ruby>含<rt>ふく</rt></ruby>めて。お<ruby>納<rt>おさ</rt></ruby>めください。<br>*(— cười — Nghiêm túc quá nhỉ. Cứ nhận đi.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りくださいませ。(cúi sâu, đứng yên cho đến khi xe đi khuất)<br>*(Con cảm ơn ạ. Con xin nhận. Quý vị đi đường cẩn thận. — cúi sâu, đứng yên đến khi xe đi khuất —)* |

---

## Tình huống 13 — Văn phòng 女将 · 11:00, báo cáo và xử lý phong bì

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>田中様<rt>たなかさま</rt></ruby>からこちらをいただきました。<br>*(Bà chủ, em xin phép. Quý ông Tanaka đã đưa em cái này.)* |
| 女将 | あら。<ruby>心付<rt>こころづ</rt></ruby>けね。チャンさんが<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>られた<ruby>証拠<rt>しょうこ</rt></ruby>。<br>*(Ô. "Kokorozuke" đấy. Bằng chứng Trang được khách quý mến.)* |
| Trang | <ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>っていいんですか?<br>*(Em nhận có được không ạ?)* |
| 女将 | <ruby>当館<rt>とうかん</rt></ruby>の<ruby>規則<rt>きそく</rt></ruby>では、お<ruby>客様<rt>きゃくさま</rt></ruby>が「あなたに」と<ruby>明確<rt>めいかく</rt></ruby>に<ruby>仰<rt>おっしゃ</rt></ruby>った<ruby>場合<rt>ばあい</rt></ruby>は<ruby>頂戴<rt>ちょうだい</rt></ruby>してよろしい。<ruby>但<rt>ただ</rt></ruby>し<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>します。<br>*(Quy định ryokan là khi khách nói rõ "cho em" thì được nhận. Nhưng phải ghi sổ.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。ありがとうございます。<br>*(Em hiểu rồi. Em cảm ơn bà.)* |
| 女将 | チャンさん、<ruby>藤本<rt>ふじもと</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>からも<ruby>褒<rt>ほ</rt></ruby>められていました。<ruby>高級宿<rt>こうきゅうやど</rt></ruby>になっても、あなたなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。<br>*(Trang, cô Fujimoto cũng khen em. Lên hạng cao cấp em vẫn ổn nhỉ.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>三年前<rt>さんねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>には<ruby>想像<rt>そうぞう</rt></ruby>もできませんでした。<br>*(Bà chủ, em thật sự cảm ơn bà. Ba năm trước em không thể tưởng tượng được.)* |

---

## Tình huống 14 — Phòng nhân viên · Tối · Gọi điện về VN

> Cảnh tiếng Việt — gọi mẹ ở Huế.

| Vai | Lời thoại |
|---|---|
| Mẹ | Trang à? Mẹ đây. Tối nay con không phải làm sao?<br>*(— tiếng Việt —)* |
| Trang | Khách check-out rồi mẹ. Hôm nay con phục vụ một ông chủ tịch công ty IT, ông ấy còn cho con <ruby>心付<rt>こころづ</rt></ruby>け luôn.<br>*(— tiếng Việt, chêm JP —)* |
| Mẹ | Cái gì đó con?<br>*(— tiếng Việt —)* |
| Trang | Tiền boa á mẹ. Mà con phải đưa <ruby>女将<rt>おかみ</rt></ruby>さん ghi sổ rồi <ruby>女将<rt>おかみ</rt></ruby> mới cho con nhận. Mọi thứ rõ ràng.<br>*(— tiếng Việt, chêm JP —)* |
| Mẹ | Người Nhật kỷ luật ghê. Sao tự dưng <ruby>旅館<rt>りょかん</rt></ruby> của con sang vậy con?<br>*(— tiếng Việt, chêm JP —)* |
| Trang | Tụi con mới vào hiệp hội «<ruby>高級宿<rt>こうきゅうやど</rt></ruby>» — như kiểu 5 sao của Nhật á mẹ. Lương con sắp tăng nữa.<br>*(— tiếng Việt, chêm JP —)* |
| Mẹ | Cố lên con. Mà cẩn thận sức khỏe.<br>*(— tiếng Việt —)* |
| Trang | Dạ. Con học được nhiều thứ lắm mẹ. <ruby>三<rt>みっ</rt></ruby>つ<ruby>指<rt>ゆび</rt></ruby> chào kiểu cổ, rồi cách giới thiệu cá nào ở đâu cho khách. Như đi học đại học vậy.<br>*(— tiếng Việt, chêm JP —)* |
| Mẹ | Mẹ tự hào con. Thôi ngủ sớm.<br>*(— tiếng Việt —)* |
| Trang | Dạ, mẹ ngủ ngon nhé.<br>*(— tiếng Việt —)* |

---

## Đọng lại chương

Ryokan «月の宿» nâng cấp lên «<ruby>高級宿<rt>こうきゅうやど</rt></ruby>の<ruby>会<rt>かい</rt></ruby>» mang đến tiêu chuẩn dịch vụ hoàn toàn khác. Trang học được: **「<ruby>三<rt>みっ</rt></ruby>つ<ruby>指<rt>ゆび</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>」** (cúi ba ngón cho khách VIP), **「<ruby>承知<rt>しょうち</rt></ruby>いたしました/<ruby>かしこまりました<rt>かしこまりました</rt></ruby>」** thay cho 了解, **「<ruby>誠<rt>まこと</rt></ruby>に・ただ<ruby>今<rt>いま</rt></ruby>・<ruby>少々<rt>しょうしょう</rt></ruby>・<ruby>早速<rt>さっそく</rt></ruby>」** thay lời nói thông thường, **「<ruby>産地<rt>さんち</rt></ruby>+<ruby>調理法<rt>ちょうりほう</rt></ruby>」** trong giới thiệu món, **「お<ruby>持<rt>も</rt></ruby>ちいたします」** thay 運びます, **「<ruby>心<rt>こころ</rt></ruby>よりお<ruby>待<rt>ま</rt></ruby>ち<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げております」** khi tiễn khách, và **「お<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>られる」** — được khách quý mến.

> Từ vựng & mẫu câu chương này: 高級宿・加盟・基準・富裕層・仲居頭・派遣・三つ指・正座・最高位の礼・承知いたしました・誠に・ただ今・少々・早速・恐縮・気が利く・産地・裏漉し・抹茶・正面・茶碗・気配り・心付け・頂戴する・お持ちいたします.

---

## Bí quyết chương

- **<ruby>三<rt>みっ</rt></ruby>つ<ruby>指<rt>ゆび</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>**: lễ cao nhất, dùng khi đón VIP vào phòng tatami — quỳ seiza, đặt 3 ngón (cái + trỏ + giữa) của 2 tay xuống chiếu rồi cúi.
- **NG**: 「了解しました」「大丈夫です」「本当に」「今」「ちょっと」「すぐ」 → **OK**: 「承知いたしました」「かしこまりました」「誠に」「ただ今」「少々」「早速」.
- **Giới thiệu món**: luôn kèm **xuất xứ** (明石の真鯛・大間の本鮪) và **cách chế biến** (裏漉し・炭火焼き) — chỉ một câu là đẳng cấp khác hẳn.
- **「<ruby>気<rt>き</rt></ruby>づかれないこと」** là đỉnh cao của <ruby>おもてなし<rt>おもてなし</rt></ruby>: phục vụ kín đáo, không để khách thấy nỗ lực, không làm khách "không biết" bị mất mặt.
- **<ruby>心付<rt>こころづ</rt></ruby>け** (tiền boa): không nhận tự ý, luôn báo cáo 女将 ghi sổ rồi mới nhận. Phong cách Nhật khác phong cách phương Tây.
- **Tiễn khách**: cúi sâu, **giữ yên cho đến khi xe đi khuất** — không quay lưng vội.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 高級宿 | こうきゅうやど | CAO CẤP TÚC | ryokan cao cấp |
| 加盟 | かめい | GIA MINH | gia nhập (hiệp hội) |
| 認める | みとめる | NHẬN | công nhận |
| 基準 | きじゅん | CƠ CHUẨN | tiêu chuẩn |
| 富裕層 | ふゆうそう | PHÚ DỤ TẦNG | tầng lớp giàu |
| 仲居頭 | なかいがしら | TRỌNG CƯ ĐẦU | bậc nakai cao nhất |
| 派遣 | はけん | PHÁI KHIỂN | phái cử |
| 研修 | けんしゅう | NGHIÊN TU | training |
| 覚悟 | かくご | GIÁC NGỘ | sẵn sàng tinh thần |
| 三つ指 | みっつゆび | TAM CHỈ | cúi chào ba ngón |
| 正座 | せいざ | CHÍNH TỌA | ngồi seiza |
| 背筋 | せすじ | BỐI CÂN | xương sống, lưng |
| 親指 | おやゆび | THÂN CHỈ | ngón cái |
| 人差し指 | ひとさしゆび | NHÂN SAI CHỈ | ngón trỏ |
| 中指 | なかゆび | TRUNG CHỈ | ngón giữa |
| 最高位 | さいこうい | TỐI CAO VỊ | địa vị cao nhất |
| 礼 | れい | LỄ | lễ, cúi chào |
| 静止 | せいし | TĨNH CHỈ | đứng yên |
| 承知 | しょうち | THỪA TRI | hiểu, đồng ý (lịch sự) |
| かしこまる | かしこまる | — | thưa vâng (kính ngữ) |
| 誠に | まことに | THÀNH | thật sự (lịch sự) |
| ただ今 | ただいま | KIM | ngay bây giờ (lịch sự) |
| 少々 | しょうしょう | THIỂU | một chút (lịch sự) |
| 早速 | さっそく | TẢO TỐC | ngay lập tức (lịch sự) |
| 恐縮 | きょうしゅく | KHỦNG SÚC | hổ thẹn, đáng cảm kích |
| 気配り | きくばり | KHÍ PHỐI | sự chu đáo, để ý |
| 真髄 | しんずい | CHÂN TỦY | tinh túy, cốt lõi |
| 主体 | しゅたい | CHỦ THỂ | chủ thể |
| 明確 | めいかく | MINH XÁC | rõ ràng |
| 会席料理 | かいせきりょうり | HỘI TỊCH LIỆU LÝ | kaiseki, ẩm thực Nhật cao cấp |
| 先付 | さきづけ | TIÊN PHỤ | món khai vị |
| 裏漉し | うらごし | LÝ LƯ | rây mịn |
| 雲丹 | うに | VÂN ĐAN | nhím biển |
| 産地 | さんち | SẢN ĐỊA | xuất xứ |
| 調理法 | ちょうりほう | ĐIỀU LÝ PHÁP | cách chế biến |
| お造り | おつくり | TẠO | sashimi |
| 真鯛 | まだい | CHÂN ĐIỀU | cá tráp đỏ |
| 本鮪 | ほんまぐろ | BẢN VÂN | cá ngừ vây xanh |
| 烏賊 | いか | Ô TẶC | mực |
| 仕入れ | しいれ | SĨ NHẬP | nhập hàng |
| 納品 | のうひん | NẠP PHẨM | giao hàng |
| 旬 | しゅん | TUẦN | mùa ngon nhất |
| 抹茶 | まっちゃ | MẠT TRÀ | trà bột |
| 茶碗 | ちゃわん | TRÀ UYỂN | bát trà |
| 正面 | しょうめん | CHÍNH DIỆN | mặt chính |
| 絵柄 | えがら | HỌA BÍNH | họa tiết |
| 模様 | もよう | MÔ DẠNG | hoa văn |
| 茶道 | さどう | TRÀ ĐẠO | trà đạo |
| 美意識 | びいしき | MỸ Ý THỨC | thẩm mỹ |
| 究極 | きゅうきょく | CỨU CỰC | tột cùng |
| 桐の間 | きりのま | NGÔ ĐỒNG GIAN | phòng Kiri |
| 露天風呂 | ろてんぶろ | LỘ THIÊN PHONG LỮ | tắm lộ thiên |
| 心付け | こころづけ | TÂM PHỤ | tiền boa kiểu Nhật |
| 頂戴する | ちょうだいする | ĐỈNH ĐÁI | nhận (khiêm nhường) |
| 規則 | きそく | QUY TẮC | quy định |
| 記録 | きろく | KÝ LỤC | ghi chép, sổ sách |
| 想像 | そうぞう | TƯỞNG TƯỢNG | tưởng tượng |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000007, 800000048, NULL, 'markdown_book', 'T7. ヨカタ Festival mùa hè — Trang đại diện ryokan', '# Sách thực tập sinh khách sạn · T7. ヨカタ Festival mùa hè — Trang đại diện ryokan

> **Mục tiêu nhân vật:** Trang (25t, năm 3 TTS, Huế, N3+). 京都祇園祭 trùng tuần lễ «<ruby>浴衣<rt>ゆかた</rt></ruby>フェスティバル» do hiệp hội du lịch tổ chức. 女将 chọn Trang làm đại diện ryokan «月の宿» tham gia sự kiện 2 ngày tại 八坂神社 — vừa giới thiệu ryokan, vừa mặc yukata trình diễn cách trải khăn, vừa nói chuyện với khách quốc tế. Học mẫu hội thoại: giới thiệu ryokan công cộng (PR), tiếng Nhật + tiếng Anh đơn giản với khách inbound, mặc yukata đúng cách, trình diễn おもてなし trước đám đông, phát tờ rơi và book khách hàng mới.

---

## Bối cảnh

Tháng 7 năm 2027, mùa <ruby>祇園祭<rt>ぎおんまつり</rt></ruby> tại Kyoto. Hiệp hội du lịch thành phố tổ chức «<ruby>浴衣<rt>ゆかた</rt></ruby>フェスティバル» tại 八坂神社 — mỗi ryokan thành viên cử 1 nhân viên trình diễn cách mặc yukata, giới thiệu phong cách của ryokan mình. 女将 chọn Trang vì khả năng tiếng Nhật + tiếng Việt + tiếng Anh cơ bản. Chương này tập trung kỹ năng "đại diện ryokan tại sự kiện công cộng quy mô lớn".

---

## Tình huống 1 — Văn phòng 女将 · 9:00, được giao nhiệm vụ đại diện

| Vai | Lời thoại |
|---|---|
| 女将 | チャンさん、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>浴衣<rt>ゆかた</rt></ruby>フェスティバルに<ruby>当館<rt>とうかん</rt></ruby>の<ruby>代表<rt>だいひょう</rt></ruby>として<ruby>参加<rt>さんか</rt></ruby>してもらえますか?<br>*(Trang, em có thể tham gia Yukata Festival tuần sau làm đại diện ryokan không?)* |
| Trang | <ruby>代表<rt>だいひょう</rt></ruby>…ですか?<ruby>私<rt>わたし</rt></ruby>でよろしいんですか?<ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>のほうが…<br>*(Đại diện… ạ? Em được không? Người Nhật thì hơn…)* |
| 女将 | チャンさんが<ruby>適任<rt>てきにん</rt></ruby>です。<ruby>日本語<rt>にほんご</rt></ruby>もベトナム<ruby>語<rt>ご</rt></ruby>も<ruby>英語<rt>えいご</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>しできる。インバウンドのお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから。<br>*(Trang là người thích hợp. Em biết tiếng Nhật, tiếng Việt và chút tiếng Anh. Khách inbound nhiều mà.)* |
| Trang | <ruby>光栄<rt>こうえい</rt></ruby>です。でも<ruby>不安<rt>ふあん</rt></ruby>です…。<br>*(Em rất vinh dự. Nhưng em lo…)* |
| 女将 | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>原稿<rt>げんこう</rt></ruby>は<ruby>用意<rt>ようい</rt></ruby>します。<ruby>当館<rt>とうかん</rt></ruby>の<ruby>魅力<rt>みりょく</rt></ruby>を<ruby>三<rt>みっ</rt></ruby>つ<ruby>選<rt>えら</rt></ruby>んで、<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Không sao. Bài nói sẽ chuẩn bị. Chọn ba điểm hấp dẫn của ryokan, học thuộc nhé.)* |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ずやり<ruby>遂<rt>と</rt></ruby>げます!<br>*(Vâng, em nhất định sẽ hoàn thành!)* |
| 女将 | パンフレットも100<ruby>枚<rt>まい</rt></ruby><ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>って。<ruby>予約<rt>よやく</rt></ruby>が<ruby>取<rt>と</rt></ruby>れたら<ruby>最高<rt>さいこう</rt></ruby>。<br>*(Mang theo 100 tờ rơi. Mà kéo được đặt phòng thì hết ý.)* |

---

## Tình huống 2 — Phòng nghỉ · 21:00, Trang luyện bài giới thiệu 3 điểm

*Trang ngồi trước gương, đọc đi đọc lại bài giới thiệu mà 女将 đưa.*

| Vai | Lời thoại |
|---|---|
| Trang | (đọc to) <ruby>当館<rt>とうかん</rt></ruby>「<ruby>月<rt>つき</rt></ruby>の<ruby>宿<rt>やど</rt></ruby>」は<ruby>創業<rt>そうぎょう</rt></ruby>120<ruby>年<rt>ねん</rt></ruby>の<ruby>京都<rt>きょうと</rt></ruby><ruby>祇園<rt>ぎおん</rt></ruby>にございます<ruby>老舗<rt>しにせ</rt></ruby><ruby>旅館<rt>りょかん</rt></ruby>でございます。<br>*(— đọc to — Ryokan "Tsuki no Yado" của chúng tôi là quán lâu đời 120 năm tại Gion, Kyoto.)* |
| Hà | (nghe thấy) チャンさん、いいね。でも「ございます」が<ruby>多<rt>おお</rt></ruby>すぎ。<br>*(— nghe thấy — Trang hay đấy. Nhưng "gozaimasu" nhiều quá.)* |
| Trang | あ、そうかな?<br>*(À, vậy à?)* |
| Hà | <ruby>聴衆<rt>ちょうしゅう</rt></ruby>が<ruby>外国人<rt>がいこくじん</rt></ruby>も<ruby>多<rt>おお</rt></ruby>いから、「です」「ます」<ruby>中心<rt>ちゅうしん</rt></ruby>で<ruby>柔<rt>やわ</rt></ruby>らかく。<br>*(Khán giả nhiều người nước ngoài nên dùng "desu/masu" mềm hơn.)* |
| Trang | なるほど。じゃあ、「<ruby>当館<rt>とうかん</rt></ruby><ruby>月<rt>つき</rt></ruby>の<ruby>宿<rt>やど</rt></ruby>は、120<ruby>年<rt>ねん</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>がある<ruby>祇園<rt>ぎおん</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby>です」。<br>*(Vậy thì: "Ryokan Tsuki no Yado là quán có lịch sử 120 năm tại Gion.")* |
| Hà | それ、いい!<ruby>魅力<rt>みりょく</rt></ruby>の<ruby>三<rt>みっ</rt></ruby>つは<ruby>何<rt>なに</rt></ruby>?<br>*(Đó, hay! Ba điểm hấp dẫn là gì?)* |
| Trang | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:<ruby>露天風呂付<rt>ろてんぶろつ</rt></ruby>き<ruby>客室<rt>きゃくしつ</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:<ruby>板長<rt>いたちょう</rt></ruby>こだわりの<ruby>会席料理<rt>かいせきりょうり</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:<ruby>祇園祭<rt>ぎおんまつり</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>まで<ruby>徒歩<rt>とほ</rt></ruby>5<ruby>分<rt>ぷん</rt></ruby>。<br>*(1: phòng có bồn lộ thiên. 2: kaiseki tâm huyết của bếp trưởng. 3: đi bộ 5 phút đến lễ hội Gion.)* |
| Hà | <ruby>完璧<rt>かんぺき</rt></ruby>!あと<ruby>英語<rt>えいご</rt></ruby>でも<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>用意<rt>ようい</rt></ruby>しといて。<br>*(Hoàn hảo! Mà chuẩn bị mỗi điểm một câu tiếng Anh nữa nhé.)* |
| Trang | Open-air bath in each room. Kaiseki cuisine. 5 minutes to the festival.<br>*(— tiếng Anh —)* |
| Hà | <ruby>十分<rt>じゅうぶん</rt></ruby>!<br>*(Đủ rồi!)* |

---

## Tình huống 3 — Phòng thay đồ · Ngày sự kiện 8:30, chuẩn bị mặc 浴衣

*Chị Yuki (仲居 năm 10) hỗ trợ Trang mặc yukata màu xanh đậm với obi vàng.*

| Vai | Lời thoại |
|---|---|
| Yuki | チャンさん、まず<ruby>下<rt>した</rt></ruby>に<ruby>肌着<rt>はだぎ</rt></ruby>を<ruby>着<rt>き</rt></ruby>る。<ruby>浴衣<rt>ゆかた</rt></ruby>は<ruby>素肌<rt>すはだ</rt></ruby>に<ruby>着<rt>き</rt></ruby>るのは<ruby>銭湯<rt>せんとう</rt></ruby>だけ。<ruby>外<rt>そと</rt></ruby>で<ruby>着<rt>き</rt></ruby>る<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>肌着<rt>はだぎ</rt></ruby>。<br>*(Trang, mặc đồ lót trong trước. Yukata mặc trên da trần chỉ ở sento thôi. Đi ra ngoài luôn mặc đồ lót dưới.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng em hiểu.)* |
| Yuki | <ruby>襟<rt>えり</rt></ruby>は<ruby>左<rt>ひだり</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>に。「<ruby>左前<rt>ひだりまえ</rt></ruby>」ね。<ruby>右前<rt>みぎまえ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>ダメ。<br>*(Cổ áo vạt trái trên. "Hidari-mae" nhé. Vạt phải trên tuyệt đối không được.)* |
| Trang | <ruby>死<rt>し</rt></ruby>に<ruby>装束<rt>しょうぞく</rt></ruby>ですよね。<ruby>覚<rt>おぼ</rt></ruby>えてます。<br>*(Là trang phục người chết đúng không. Em nhớ rồi.)* |
| Yuki | (chỉnh obi) <ruby>帯<rt>おび</rt></ruby>は<ruby>腰<rt>こし</rt></ruby>の<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>うえ</rt></ruby>に。きつすぎず、ゆるすぎず。<ruby>結<rt>むす</rt></ruby>び<ruby>方<rt>かた</rt></ruby>は「<ruby>文庫結<rt>ぶんこむす</rt></ruby>び」で<ruby>後<rt>うし</rt></ruby>ろにリボン。<br>*(— chỉnh obi — Obi đặt trên eo một chút. Không chặt quá, không lỏng quá. Cách buộc "bunko-musubi", nơ phía sau.)* |
| Trang | <ruby>文庫結<rt>ぶんこむす</rt></ruby>び…<ruby>蝶<rt>ちょう</rt></ruby><ruby>結<rt>むす</rt></ruby>びみたいですか?<br>*(Bunko-musubi… giống thắt nơ ạ?)* |
| Yuki | <ruby>似<rt>に</rt></ruby>てるけど<ruby>羽根<rt>はね</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きい。<ruby>未婚<rt>みこん</rt></ruby>の<ruby>女性<rt>じょせい</rt></ruby>がよく<ruby>結<rt>むす</rt></ruby>ぶ。<br>*(Tương tự nhưng cánh to. Phụ nữ chưa lập gia đình hay buộc kiểu này.)* |
| Trang | (cười) <ruby>適切<rt>てきせつ</rt></ruby>ですね、<ruby>私<rt>わたし</rt></ruby>には。<br>*(— cười — Hợp em rồi nhỉ.)* |
| Yuki | <ruby>下駄<rt>げた</rt></ruby>は<ruby>鼻緒<rt>はなお</rt></ruby>がきつかったら<ruby>言<rt>い</rt></ruby>って。<ruby>絆創膏<rt>ばんそうこう</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていって。<br>*(Geta nếu quai chật thì nói. Mang theo băng cá nhân.)* |
| Trang | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị.)* |

---

## Tình huống 4 — 八坂神社境内 · 10:00, đến sự kiện, gặp BTC

| Vai | Lời thoại |
|---|---|
| BTC | おはようございます。<ruby>各<rt>かく</rt></ruby><ruby>旅館<rt>りょかん</rt></ruby>の<ruby>代表者<rt>だいひょうしゃ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>、こちらでご<ruby>署名<rt>しょめい</rt></ruby>ください。<br>*(Chào buổi sáng. Đại diện các ryokan, xin ký tên tại đây.)* |
| Trang | おはようございます。「<ruby>月<rt>つき</rt></ruby>の<ruby>宿<rt>やど</rt></ruby>」のチャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng. Em là Trang từ "Tsuki no Yado". Mong được giúp đỡ.)* |
| BTC | チャンさん…(nhìn danh sách) あ、ベトナムの<ruby>方<rt>かた</rt></ruby>ですね。<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>浴衣<rt>ゆかた</rt></ruby>!<br>*(Trang… — nhìn danh sách — À, người Việt Nam nhỉ. Yukata đẹp quá!)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Dạ em cảm ơn. Cô có thể chỉ em quy trình hôm nay không ạ?)* |
| BTC | 11<ruby>時<rt>じ</rt></ruby>から<ruby>開会式<rt>かいかいしき</rt></ruby>、<ruby>11時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>から<ruby>各<rt>かく</rt></ruby><ruby>旅館<rt>りょかん</rt></ruby>3<ruby>分<rt>ぷん</rt></ruby>ずつ<ruby>紹介<rt>しょうかい</rt></ruby>。<ruby>午後<rt>ごご</rt></ruby>は<ruby>各<rt>かく</rt></ruby>ブースで<ruby>自由<rt>じゆう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>。<br>*(11h khai mạc, 11h30 mỗi ryokan giới thiệu 3 phút. Buổi chiều mỗi gian hàng tự do tiếp khách.)* |
| Trang | 3<ruby>分<rt>ぷん</rt></ruby>…(hồi hộp) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(3 phút… — hồi hộp — Em hiểu rồi.)* |
| BTC | <ruby>緊張<rt>きんちょう</rt></ruby>しないで。<ruby>笑顔<rt>えがお</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>。<br>*(Đừng hồi hộp. Nụ cười là quan trọng nhất.)* |

---

## Tình huống 5 — Sân khấu chính · 11:35, bài giới thiệu 3 phút trước đám đông

*Đám đông khoảng 300 người, có cả khách Tây.*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>次<rt>つぎ</rt></ruby>は「<ruby>月<rt>つき</rt></ruby>の<ruby>宿<rt>やど</rt></ruby>」のチャンさんです。どうぞ!<br>*(Tiếp theo là Trang từ "Tsuki no Yado". Mời!)* |
| Trang | (lên sân khấu, cúi sâu) みなさま、こんにちは。「<ruby>月<rt>つき</rt></ruby>の<ruby>宿<rt>やど</rt></ruby>」<ruby>仲居<rt>なかい</rt></ruby>のチャンと<ruby>申<rt>もう</rt></ruby>します。ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(— lên sân khấu, cúi sâu — Xin chào quý vị. Em là Trang, nakai của "Tsuki no Yado". Em đến từ Việt Nam. Mong quý vị quan tâm.)* |
| Đám đông | (vỗ tay)<br>*(— vỗ tay —)* |
| Trang | <ruby>当館<rt>とうかん</rt></ruby><ruby>月<rt>つき</rt></ruby>の<ruby>宿<rt>やど</rt></ruby>は、120<ruby>年<rt>ねん</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>がある<ruby>祇園<rt>ぎおん</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby>です。<ruby>三<rt>みっ</rt></ruby>つの<ruby>魅力<rt>みりょく</rt></ruby>をご<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Ryokan Tsuki no Yado của chúng tôi là quán có lịch sử 120 năm tại Gion. Em xin giới thiệu ba điểm hấp dẫn.)* |
| Trang | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>全室<rt>ぜんしつ</rt></ruby>に<ruby>露天風呂<rt>ろてんぶろ</rt></ruby>がついていることです。<ruby>夜空<rt>よぞら</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながらお<ruby>湯<rt>ゆ</rt></ruby>に<ruby>浸<rt>つ</rt></ruby>かれます。<br>*(Thứ nhất, mọi phòng đều có bồn tắm lộ thiên. Quý vị có thể ngâm mình ngắm trời đêm.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>京都<rt>きょうと</rt></ruby><ruby>食材<rt>しょくざい</rt></ruby>にこだわった<ruby>会席料理<rt>かいせきりょうり</rt></ruby>です。<ruby>板長<rt>いたちょう</rt></ruby>が<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>市場<rt>いちば</rt></ruby>で<ruby>仕入<rt>しい</rt></ruby>れます。<br>*(Thứ hai, kaiseki tâm huyết với nguyên liệu Kyoto. Bếp trưởng đi chợ nhập hàng mỗi sáng.)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、ここ<ruby>八坂神社<rt>やさかじんじゃ</rt></ruby>から<ruby>徒歩<rt>とほ</rt></ruby>5<ruby>分<rt>ぷん</rt></ruby>です。<ruby>祇園祭<rt>ぎおんまつり</rt></ruby>の<ruby>季節<rt>きせつ</rt></ruby>は<ruby>特<rt>とく</rt></ruby>におすすめです。<br>*(Thứ ba, từ Yasaka jinja đây đi bộ 5 phút là tới. Mùa lễ hội Gion thì đặc biệt khuyến nghị.)* |
| Trang | (cười rạng rỡ) ぜひ「<ruby>月<rt>つき</rt></ruby>の<ruby>宿<rt>やど</rt></ruby>」へお<ruby>越<rt>こ</rt></ruby>しください!ありがとうございました。<br>*(— cười rạng rỡ — Mong quý vị đến "Tsuki no Yado"! Em cảm ơn quý vị.)* |
| Đám đông | (vỗ tay lớn)<br>*(— vỗ tay lớn —)* |

---

## Tình huống 6 — Gian hàng ryokan · 12:30, gặp khách Nhật quan tâm

| Vai | Lời thoại |
|---|---|
| Bà Nhật (60t) | チャンさん、<ruby>挨拶<rt>あいさつ</rt></ruby>とても<ruby>上手<rt>じょうず</rt></ruby>でしたね。<br>*(Trang, em giới thiệu giỏi quá đấy.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。お<ruby>客様<rt>きゃくさま</rt></ruby>、よろしければパンフレットをお<ruby>持<rt>も</rt></ruby>ちください。<br>*(Em cảm ơn ạ. Quý bà, xin mời nhận tờ rơi.)* |
| Bà Nhật | あら、ありがとう。<ruby>露天風呂付<rt>ろてんぶろつ</rt></ruby>き<ruby>客室<rt>きゃくしつ</rt></ruby>、<ruby>気<rt>き</rt></ruby>になるわ。<ruby>一泊<rt>いっぱく</rt></ruby>いくら?<br>*(Ô, cảm ơn. Phòng có bồn lộ thiên hay đấy. Một đêm bao nhiêu?)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>季節<rt>きせつ</rt></ruby>とお<ruby>部屋<rt>へや</rt></ruby>のタイプによりますが、<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>は<ruby>一名様<rt>いちめいさま</rt></ruby>60,000<ruby>円<rt>えん</rt></ruby>からでございます。<br>*(Thưa bà, tùy mùa và loại phòng, nhưng giá tiêu chuẩn từ 60,000 yên một người.)* |
| Bà Nhật | <ruby>祇園祭<rt>ぎおんまつり</rt></ruby>の<ruby>時期<rt>じき</rt></ruby>は<ruby>満室<rt>まんしつ</rt></ruby>?<br>*(Mùa lễ Gion hết phòng chưa?)* |
| Trang | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>祭<rt>まつ</rt></ruby>りの<ruby>本番<rt>ほんばん</rt></ruby>はほぼ<ruby>満室<rt>まんしつ</rt></ruby>です。9<ruby>月<rt>がつ</rt></ruby>の<ruby>静<rt>しず</rt></ruby>かな<ruby>京都<rt>きょうと</rt></ruby>もとても<ruby>良<rt>よ</rt></ruby>うございますよ。<br>*(Xin lỗi bà, lễ hội chính thì gần kín. Kyoto tháng 9 yên tĩnh cũng rất đẹp ạ.)* |
| Bà Nhật | 9<ruby>月<rt>がつ</rt></ruby>ね…<ruby>主人<rt>しゅじん</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して<ruby>予約<rt>よやく</rt></ruby>するわ。<br>*(Tháng 9 hả… để bàn với ông xã rồi đặt.)* |
| Trang | お<ruby>待<rt>ま</rt></ruby>ち<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げております。パンフレットの<ruby>裏<rt>うら</rt></ruby>に<ruby>予約<rt>よやく</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>がございます。<br>*(Chúng con xin mong đón bà. Sau tờ rơi có số đặt phòng ạ.)* |

---

## Tình huống 7 — Gian hàng · 13:30, khách Mỹ trẻ — tiếng Anh + tiếng Nhật

*Đôi vợ chồng Mỹ tầm 30, tay cầm máy ảnh.*

| Khách Mỹ | Wow, beautiful yukata! Do you speak English?<br>*(— tiếng Anh —)* |
| Trang | A little, please slow speak. <ruby>少<rt>すこ</rt></ruby>しだけ<ruby>英語<rt>えいご</rt></ruby>ができます。<br>*(Một chút, xin nói chậm. Tôi nói được một chút tiếng Anh.)* |
| Khách Mỹ | Where is your ryokan?<br>*(— tiếng Anh —)* |
| Trang | Five minutes from Yasaka shrine. (chỉ trên bản đồ) <ruby>八坂神社<rt>やさかじんじゃ</rt></ruby>から<ruby>徒歩<rt>とほ</rt></ruby>5<ruby>分<rt>ぷん</rt></ruby>です。Here. パンフレットあります。<br>*(5 phút từ Yasaka. — chỉ trên bản đồ — 5 phút đi bộ từ Yasaka jinja. Đây. Có tờ rơi.)* |
| Khách Mỹ | Open-air bath in the room?<br>*(— tiếng Anh —)* |
| Trang | Yes! Every room. <ruby>全室<rt>ぜんしつ</rt></ruby><ruby>露天風呂<rt>ろてんぶろ</rt></ruby><ruby>付<rt>つ</rt></ruby>き。<br>*(Vâng! Mọi phòng. Mọi phòng có bồn lộ thiên.)* |
| Khách Mỹ | (vợ với chồng) Honey, let''s book this one. … Can we book now?<br>*(— tiếng Anh —)* |
| Trang | <ruby>大変<rt>たいへん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいです!QRコードで<ruby>予約<rt>よやく</rt></ruby>サイトに<ruby>行<rt>い</rt></ruby>けます。<br>*(Em rất vui ạ! Quét QR là vào trang đặt phòng.)* |
| Khách Mỹ | (quét QR) Got it. Thank you! See you next month!<br>*(— tiếng Anh, quét QR —)* |
| Trang | We are waiting for you! <ruby>心<rt>こころ</rt></ruby>よりお<ruby>待<rt>ま</rt></ruby>ちしております!<br>*(Chúng tôi đợi quý vị! Chúng con từ đáy lòng mong đợi!)* |

---

## Tình huống 8 — Gian hàng · 14:30, đồng hương Việt Nam đến chơi

| Vai | Lời thoại |
|---|---|
| Cô VN (du khách) | (tiếng Việt) Ủa, em là người Việt Nam à?<br>*(— tiếng Việt —)* |
| Trang | (mừng) Dạ, em ở Huế. Chị du lịch tới Kyoto ạ?<br>*(— tiếng Việt —)* |
| Cô VN | Ừ, chị từ Sài Gòn qua, đi 5 ngày. Em làm ở ryokan này lâu chưa?<br>*(— tiếng Việt —)* |
| Trang | Năm thứ 3 rồi chị. Em sắp thi <ruby>特定技能<rt>とくていぎのう</rt></ruby> để ở lại Nhật làm tiếp.<br>*(— tiếng Việt, chêm JP —)* |
| Cô VN | Giỏi quá! Mà ryokan này có nhận khách Việt không em?<br>*(— tiếng Việt —)* |
| Trang | Có chứ chị! Em có thể giúp chị book luôn — em hiểu cả tiếng Việt với tiếng Nhật. Mà giá thì hơi cao nha, từ 60,000 yên/đêm.<br>*(— tiếng Việt, chêm JP —)* |
| Cô VN | Khoảng 10 triệu VNĐ một đêm. Hơi chát mà có người Việt mình hỗ trợ thì yên tâm. Chị check lịch rồi liên hệ em.<br>*(— tiếng Việt —)* |
| Trang | (đưa danh thiếp) Đây danh thiếp em. Có số <ruby>LINE<rt>らいん</rt></ruby> với <ruby>メール<rt>めーる</rt></ruby>. Khi nào chị book em sắp xếp gấp.<br>*(— tiếng Việt, chêm JP —)* |
| Cô VN | Cảm ơn em. Tự hào ghê, người Việt mình làm việc tới <ruby>代表<rt>だいひょう</rt></ruby> ryokan luôn.<br>*(— tiếng Việt, chêm JP —)* |
| Trang | Dạ, em cũng tự hào. Cảm ơn chị.<br>*(— tiếng Việt —)* |

---

## Tình huống 9 — Gian hàng · 15:30, đoàn học sinh tiểu học đến tham quan

| Học sinh A | お<ruby>姉<rt>ねえ</rt></ruby>さん!ベトナム<ruby>人<rt>じん</rt></ruby>?なんで<ruby>日本<rt>にほん</rt></ruby>で<ruby>仕事<rt>しごと</rt></ruby>してるの?<br>*(Chị ơi! Người Việt Nam à? Sao chị làm việc ở Nhật?)* |
| Trang | (cúi xuống ngang tầm trẻ) はい、ベトナムから<ruby>来<rt>き</rt></ruby>ました。<ruby>日本<rt>にほん</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>が<ruby>好<rt>す</rt></ruby>きで<ruby>勉強<rt>べんきょう</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(— cúi xuống ngang tầm trẻ — Vâng, chị đến từ Việt Nam. Chị thích văn hóa Nhật nên qua học.)* |
| Học sinh B | <ruby>浴衣<rt>ゆかた</rt></ruby><ruby>似合<rt>にあ</rt></ruby>ってる!<br>*(Yukata hợp ghê!)* |
| Trang | ありがとう。みんなも<ruby>夏祭<rt>なつまつ</rt></ruby>りに<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>着<rt>き</rt></ruby>る?<br>*(Cảm ơn em. Các em cũng mặc yukata đi lễ hội mùa hè chứ?)* |
| Học sinh A | <ruby>今夜<rt>こんや</rt></ruby><ruby>着<rt>き</rt></ruby>る!お<ruby>母<rt>かあ</rt></ruby>さんに<ruby>結<rt>むす</rt></ruby>んでもらう。<br>*(Tối nay sẽ mặc! Mẹ buộc cho.)* |
| Trang | <ruby>素敵<rt>すてき</rt></ruby>!<ruby>金魚<rt>きんぎょ</rt></ruby>すくいや<ruby>射的<rt>しゃてき</rt></ruby>も<ruby>楽<rt>たの</rt></ruby>しんでね。<br>*(Hay! Vớt cá vàng và bắn súng cũng vui nhé.)* |
| Cô giáo | チャンさん、<ruby>子供<rt>こども</rt></ruby>たちに<ruby>優<rt>やさ</rt></ruby>しくしていただきありがとうございます。<br>*(Trang, cảm ơn em đã tử tế với các cháu.)* |
| Trang | いえ、こちらこそ<ruby>元気<rt>げんき</rt></ruby>をいただきました。<br>*(Dạ không, ngược lại em nhận được năng lượng từ các bé.)* |

---

## Tình huống 10 — Sân khấu nhỏ · 16:00, trình diễn cách trải khăn おしぼり

*Mỗi ryokan có 5 phút trình diễn một kỹ thuật. Trang trình diễn cách gấp & trao 温かいおしぼり.*

| Vai | Lời thoại |
|---|---|
| Trang | (đứng trên sân khấu nhỏ, có chậu nước nóng) みなさま、これから「おしぼり」の<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>とお<ruby>渡<rt>わた</rt></ruby>し<ruby>方<rt>かた</rt></ruby>をご<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(— đứng trên sân khấu nhỏ, có chậu nước nóng — Quý vị, em xin giới thiệu cách làm và trao khăn ấm.)* |
| Trang | まず、<ruby>清潔<rt>せいけつ</rt></ruby>なタオルを<ruby>用意<rt>ようい</rt></ruby>します。<ruby>温度<rt>おんど</rt></ruby>は40<ruby>度<rt>ど</rt></ruby>から45<ruby>度<rt>ど</rt></ruby>。<ruby>熱<rt>あつ</rt></ruby>すぎるとお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>火傷<rt>やけど</rt></ruby>します。<br>*(Đầu tiên chuẩn bị khăn sạch. Nhiệt độ 40 đến 45 độ. Nóng quá thì khách bị bỏng.)* |
| Trang | (nhúng khăn vào chậu, vắt) お<ruby>湯<rt>ゆ</rt></ruby>に<ruby>浸<rt>ひた</rt></ruby>して、しっかり<ruby>絞<rt>しぼ</rt></ruby>る。<ruby>水<rt>みず</rt></ruby>が<ruby>滴<rt>したた</rt></ruby>るのはNG。<br>*(— nhúng khăn vào chậu, vắt — Nhúng vào nước rồi vắt chặt. Để nhỏ giọt là không được.)* |
| Trang | (gấp thành cuộn) <ruby>三<rt>みっ</rt></ruby>つ<ruby>折<rt>お</rt></ruby>りにして、くるくる<ruby>巻<rt>ま</rt></ruby>く。<ruby>両端<rt>りょうたん</rt></ruby>がそろうように。<br>*(— gấp thành cuộn — Gấp ba lần, cuộn tròn. Hai đầu phải đều.)* |
| Trang | (đặt lên khay) お<ruby>盆<rt>ぼん</rt></ruby>に<ruby>乗<rt>の</rt></ruby>せて、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>右側<rt>みぎがわ</rt></ruby>から「お<ruby>絞<rt>しぼ</rt></ruby>りでございます」と<ruby>静<rt>しず</rt></ruby>かにお<ruby>出<rt>だ</rt></ruby>しします。<br>*(— đặt lên khay — Đặt lên khay, từ bên phải khách trao nhẹ "Xin mời khăn ạ".)* |
| Trang | (cúi nhẹ) <ruby>以上<rt>いじょう</rt></ruby>です。ありがとうございました。<br>*(— cúi nhẹ — Đó là tất cả ạ. Xin cảm ơn.)* |
| Đám đông | (vỗ tay)<br>*(— vỗ tay —)* |

---

## Tình huống 11 — Gian hàng · 17:30, đếm tờ rơi & sổ đăng ký quan tâm

| Vai | Lời thoại |
|---|---|
| Trang | (đếm) パンフレット…<ruby>残<rt>のこ</rt></ruby>り3<ruby>枚<rt>まい</rt></ruby>。97<ruby>枚<rt>まい</rt></ruby><ruby>配<rt>くば</rt></ruby>った。<br>*(— đếm — Tờ rơi… còn 3 tờ. Đã phát 97 tờ.)* |
| Trang | <ruby>予約<rt>よやく</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>シート…12<ruby>名<rt>めい</rt></ruby>。<ruby>連絡先<rt>れんらくさき</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>…25<ruby>件<rt>けん</rt></ruby>。<br>*(Phiếu mong đặt phòng… 12 người. Đăng ký liên hệ… 25 mục.)* |
| BTC | チャンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>各<rt>かく</rt></ruby><ruby>旅館<rt>りょかん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Trang, em vất vả rồi. Báo cáo kết quả các ryokan.)* |
| Trang | はい。<ruby>予約<rt>よやく</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>12<ruby>名<rt>めい</rt></ruby>、<ruby>連絡先<rt>れんらくさき</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>25<ruby>件<rt>けん</rt></ruby>、パンフレット97<ruby>枚<rt>まい</rt></ruby><ruby>配布<rt>はいふ</rt></ruby>。<br>*(Vâng. Đặt phòng 12 người, đăng ký 25 mục, phát 97 tờ rơi.)* |
| BTC | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>今日<rt>きょう</rt></ruby>のトップクラスです。<br>*(Tuyệt vời! Top hôm nay.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さんが<ruby>喜<rt>よろこ</rt></ruby>びます。<br>*(Bà chủ sẽ vui.)* |

---

## Tình huống 12 — Ryokan · 20:00, báo cáo 女将 + nhận lời khen

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、ただ<ruby>今<rt>いま</rt></ruby><ruby>戻<rt>もど</rt></ruby>りました。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Bà chủ, em vừa về. Em xin báo cáo kết quả hôm nay.)* |
| 女将 | お<ruby>疲<rt>つか</rt></ruby>れさま。どうでしたか?<br>*(Vất vả rồi. Sao em?)* |
| Trang | <ruby>予約<rt>よやく</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>12<ruby>名<rt>めい</rt></ruby>、<ruby>連絡先<rt>れんらくさき</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>25<ruby>件<rt>けん</rt></ruby>。アメリカからの<ruby>御夫婦<rt>ごふうふ</rt></ruby>がその<ruby>場<rt>ば</rt></ruby>で<ruby>予約<rt>よやく</rt></ruby>サイトから<ruby>予約<rt>よやく</rt></ruby>されました。<br>*(Đặt phòng 12 người, đăng ký 25 mục. Một cặp vợ chồng Mỹ đã đặt ngay tại chỗ qua trang web.)* |
| 女将 | アメリカからも!チャンさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしいです。<br>*(Cả từ Mỹ luôn! Trang thật sự xuất sắc.)* |
| Trang | ベトナムからの<ruby>御婦人<rt>ごふじん</rt></ruby>も<ruby>興味<rt>きょうみ</rt></ruby>を<ruby>持<rt>も</rt></ruby>たれました。<ruby>言葉<rt>ことば</rt></ruby>が<ruby>通<rt>つう</rt></ruby>じることが<ruby>大<rt>おお</rt></ruby>きかったと<ruby>感<rt>かん</rt></ruby>じます。<br>*(Có cả phu nhân Việt Nam quan tâm. Em cảm thấy tiếng nói tương thông là yếu tố lớn.)* |
| 女将 | チャンさんのおかげで<ruby>当館<rt>とうかん</rt></ruby>のグローバル<ruby>展開<rt>てんかい</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>見<rt>み</rt></ruby>えました。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>給料<rt>きゅうりょう</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>させます。<br>*(Nhờ Trang mà thấy được khả năng mở rộng global của ryokan. Lương tháng sau sẽ phản ánh.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。ありがとうございます。<br>*(Em không dám ạ. Cảm ơn bà chủ.)* |

---

## Tình huống 13 — Gọi điện về VN · 22:00 — đoạn hội thoại tiếng Việt

> Cảnh tiếng Việt — gọi video với chị họ ở Sài Gòn.

| Vai | Lời thoại |
|---|---|
| Chị họ | Trang ơi, dì chuyển hình lên Facebook, cả họ xem rồi! Em mặc <ruby>浴衣<rt>ゆかた</rt></ruby> đẹp ghê!<br>*(— tiếng Việt, chêm JP —)* |
| Trang | (cười) Chị ơi, hôm nay em đứng nói trước 300 người luôn. Run muốn chết.<br>*(— tiếng Việt —)* |
| Chị họ | 300 người á?! Nói tiếng gì?<br>*(— tiếng Việt —)* |
| Trang | Tiếng Nhật chị. Sau đó em còn nói tiếng Anh với khách Mỹ. Còn khách Việt thì em chuyển sang tiếng Việt luôn. Một ngày dùng 3 thứ tiếng.<br>*(— tiếng Việt —)* |
| Chị họ | Trời, đa năng quá. Khách Mỹ book luôn không?<br>*(— tiếng Việt —)* |
| Trang | Book chị! Quét QR đặt phòng ngay tại quầy. <ruby>女将<rt>おかみ</rt></ruby>さん còn hứa tăng lương luôn.<br>*(— tiếng Việt, chêm JP —)* |
| Chị họ | Mừng cho em. Mà sao tự nhiên người Việt mình lại có cái duyên với <ruby>旅館<rt>りょかん</rt></ruby> Nhật ha?<br>*(— tiếng Việt, chêm JP —)* |
| Trang | Em nghĩ vì người Việt mình cũng <ruby>おもてなし<rt>おもてなし</rt></ruby> kiểu Á, hiếu khách giống Nhật. Hợp.<br>*(— tiếng Việt, chêm JP —)* |
| Chị họ | Em ráng. Mà giờ ngủ đi, mai 5 giờ dậy đúng không?<br>*(— tiếng Việt —)* |
| Trang | Dạ, chị ngủ ngon nha.<br>*(— tiếng Việt —)* |

---

## Đọng lại chương

Đại diện ryokan tại sự kiện công cộng yêu cầu Trang **vừa nói trước đám đông, vừa thuyết phục khách 1-1**. Mẫu câu chính: **「<ruby>当館<rt>とうかん</rt></ruby>〜は、〜<ruby>年<rt>ねん</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>がある〜です」**, **「<ruby>三<rt>みっ</rt></ruby>つの<ruby>魅力<rt>みりょく</rt></ruby>をご<ruby>紹介<rt>しょうかい</rt></ruby>します」**, **「<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は〜こと/<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は〜/<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は〜」**, **「ぜひお<ruby>越<rt>こ</rt></ruby>しください」**, **「<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>は〜<ruby>円<rt>えん</rt></ruby>からでございます」**, **「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが<ruby>満室<rt>まんしつ</rt></ruby>です」**, và xử lý tiếng Anh đơn giản với phương châm **"Please slow speak"**.

> Từ vựng & mẫu câu chương này: 浴衣・代表・適任・原稿・魅力・創業・老舗・露天風呂・会席料理・徒歩・肌着・左前・帯・文庫結び・下駄・鼻緒・開会式・パンフレット・予約希望・連絡先登録・配布・おしぼり・絞る・三つ折り・お盆・グローバル展開.

---

## Bí quyết chương

- **Cấu trúc giới thiệu 3 điểm hấp dẫn**: 「<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は〜こと」 — luôn ba điểm, mỗi điểm 1 câu ngắn, dễ nhớ cho người nghe (đặc biệt khách nước ngoài).
- **<ruby>浴衣<rt>ゆかた</rt></ruby>** đi ngoài luôn phải có <ruby>肌着<rt>はだぎ</rt></ruby> (đồ lót) — không bao giờ mặc trực tiếp trên da như khi vào <ruby>銭湯<rt>せんとう</rt></ruby>.
- **「Please slow speak」** + nụ cười + bản đồ + tờ rơi — combo cứu nguy khi giới hạn tiếng Anh.
- Khi khách nước ngoài quan tâm, **đẩy QR code lên ngay** — đặt phòng tại chỗ là conversion tốt nhất.
- Nói chuyện với **đồng hương VN**: chuyển ngay sang tiếng Việt, nhưng vẫn dùng từ JP cho thuật ngữ (旅館・特定技能・女将) — vừa thân thiết vừa chuyên nghiệp.
- **「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが」** trước thông tin xấu (満室・<ruby>高<rt>たか</rt></ruby>い<ruby>料金<rt>りょうきん</rt></ruby>) → ngay sau đó đề xuất phương án thay thế (「9<ruby>月<rt>がつ</rt></ruby>の<ruby>静<rt>しず</rt></ruby>かな<ruby>京都<rt>きょうと</rt></ruby>もいい」).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 適任 | てきにん | THÍCH NHIỆM | thích hợp |
| 原稿 | げんこう | NGUYÊN CẢO | bản thảo, kịch bản |
| 魅力 | みりょく | MỴ LỰC | sức hấp dẫn |
| 創業 | そうぎょう | SÁNG NGHIỆP | thành lập |
| 老舗 | しにせ | LÃO PHÔ | quán lâu đời |
| 聴衆 | ちょうしゅう | THÍNH CHÚNG | khán giả |
| 開会式 | かいかいしき | KHAI HỘI THỨC | lễ khai mạc |
| 紹介 | しょうかい | THIỆU GIỚI | giới thiệu |
| 全室 | ぜんしつ | TOÀN THẤT | mọi phòng |
| 露天風呂 | ろてんぶろ | LỘ THIÊN PHONG LỮ | bồn tắm lộ thiên |
| 夜空 | よぞら | DẠ KHÔNG | trời đêm |
| 浸かる | つかる | TẨM | ngâm mình |
| 食材 | しょくざい | THỰC TÀI | nguyên liệu |
| 会席料理 | かいせきりょうり | HỘI TỊCH LIỆU LÝ | kaiseki |
| 仕入れる | しいれる | SĨ NHẬP | nhập hàng |
| 徒歩 | とほ | ĐỒ BỘ | đi bộ |
| 季節 | きせつ | QUÝ TIẾT | mùa |
| 肌着 | はだぎ | CƠ Y | đồ lót |
| 素肌 | すはだ | TỐ CƠ | da trần |
| 銭湯 | せんとう | TIỀN THANG | nhà tắm công cộng |
| 襟 | えり | KHÂM | cổ áo |
| 左前 | ひだりまえ | TẢ TIỀN | vạt trái trên |
| 死に装束 | しにしょうぞく | TỬ TRANG THÚC | trang phục người chết |
| 帯 | おび | ĐỚI | đai obi |
| 腰 | こし | YÊU | eo |
| 文庫結び | ぶんこむすび | VĂN KHỐ KẾT | kiểu buộc bunko |
| 羽根 | はね | VŨ | cánh, nơ |
| 未婚 | みこん | VỊ HÔN | chưa lập gia đình |
| 下駄 | げた | HẠ ĐÀ | guốc geta |
| 鼻緒 | はなお | TỴ CHỬ | quai geta |
| 絆創膏 | ばんそうこう | BAN SÁNG CAO | băng cá nhân |
| 署名 | しょめい | THỰ MINH | ký tên |
| 流れ | ながれ | LƯU | quy trình, luồng |
| 標準料金 | ひょうじゅんりょうきん | TIÊU CHUẨN LIỆU KIM | giá tiêu chuẩn |
| 満室 | まんしつ | MÃN THẤT | hết phòng |
| 本番 | ほんばん | BẢN PHIÊN | buổi chính, mùa cao điểm |
| 静か | しずか | TĨNH | yên tĩnh |
| 予約番号 | よやくばんごう | DỰ ƯỚC PHIÊN HIỆU | số đặt phòng |
| 似合う | にあう | TỰ HỢP | hợp, ăn ý |
| 金魚すくい | きんぎょすくい | KIM NGƯ | vớt cá vàng |
| 射的 | しゃてき | XẠ ĐÍCH | trò bắn súng |
| 清潔 | せいけつ | THANH KHIẾT | sạch sẽ |
| 温度 | おんど | ÔN ĐỘ | nhiệt độ |
| 火傷 | やけど | HỎA THƯƠNG | bỏng |
| 絞る | しぼる | GIẢO | vắt |
| 滴る | したたる | TRÍCH | nhỏ giọt |
| 三つ折り | みつおり | TAM CHIẾT | gấp ba |
| 巻く | まく | QUYỂN | cuộn |
| 両端 | りょうたん | LƯỠNG ĐOAN | hai đầu |
| 配布 | はいふ | PHÂN BỐ | phân phát |
| 連絡先 | れんらくさき | LIÊN LẠC TIÊN | thông tin liên hệ |
| 登録 | とうろく | ĐĂNG LỤC | đăng ký |
| グローバル展開 | ぐろーばるてんかい | TRIỂN KHAI | mở rộng toàn cầu |
| 反映 | はんえい | PHẢN ÁNH | phản ánh |
| 興味 | きょうみ | HỨNG VỊ | sự quan tâm |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 配る | くばる | PHỐI | phát |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000008, 800000048, NULL, 'markdown_book', 'T8. Thi SSW Kentei khách sạn (宿泊業特定技能)', '# Sách thực tập sinh khách sạn · T8. Thi SSW Kentei khách sạn (宿泊業特定技能)

> **Mục tiêu nhân vật:** Trang (25t, năm 3 TTS, Huế, N3+) chuẩn bị và tham dự kỳ thi 特定技能1号「<ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby>」: <ruby>宿泊業技能測定試験<rt>しゅくはくぎょうぎのうそくていしけん</rt></ruby> (kỹ năng nghiệp vụ ngành lưu trú) + <ruby>日本語能力試験<rt>にほんごのうりょくしけん</rt></ruby> N4以上 (đã có N3 nên miễn JFT-Basic). Học mẫu hội thoại: ôn lý thuyết フロント・客室・料飲・接客マナー, luyện CBT (Computer-Based Testing), hỏi đáp với 講師, đăng ký thi qua hiệp hội, ngôn ngữ phòng thi.

---

## Bối cảnh

Tháng 8 năm 2027. Trang còn 6 tháng nữa hết hợp đồng TTS. Để ở lại Nhật theo diện 特定技能1号「<ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby>」, Trang phải đỗ <ruby>宿泊業技能測定試験<rt>しゅくはくぎょうぎのうそくていしけん</rt></ruby> — bài thi CBT 60 câu 30 phút do «<ruby>一般社団法人<rt>いっぱんしゃだんほうじん</rt></ruby> <ruby>宿泊業技能試験<rt>しゅくはくぎょうぎのうしけん</rt></ruby>センター» tổ chức tại các <ruby>テストセンター<rt>てすとせんたー</rt></ruby> Prometric trên toàn quốc, mỗi tháng đều có. Trang đã có N3 nên miễn JFT-Basic. Cùng ôn với Hà (đồng nghiệp năm 4 cũng đang nhắm SSW), online cùng Hùng (TTS oto năm 3 ở Aichi, ôn SSW oto). Chương này tập trung kỹ năng "ôn thi SSW khách sạn".

> ⚠️ Chú thích: Thông tin về kỳ thi 特定技能1号「宿泊」 và điều kiện visa được mô tả theo quy định có hiệu lực tại thời điểm 2026–2028. Người học nên kiểm tra lại quy định hiện hành tại trang chính thức của 観光庁 / 宿泊業技能試験センター khi cần.

---

## Tình huống 1 — Phòng nhân viên · 21:30, Trang xem website thi SSW

| Vai | Lời thoại |
|---|---|
| Trang | (lẩm bẩm) <ruby>宿泊業技能測定試験<rt>しゅくはくぎょうぎのうそくていしけん</rt></ruby>…CBT、60<ruby>問<rt>もん</rt></ruby>、30<ruby>分<rt>ぷん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>65%<ruby>以上<rt>いじょう</rt></ruby>。<br>*(— lẩm bẩm — Bài thi kỹ năng ngành lưu trú… CBT, 60 câu, 30 phút, đỗ từ 65% trở lên.)* |
| Hà | (vào phòng) チャンさん、<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みフォーム<ruby>埋<rt>う</rt></ruby>めた?<br>*(— vào phòng — Trang ơi, điền form đăng ký chưa?)* |
| Trang | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>埋<rt>う</rt></ruby>める。テストセンターは<ruby>京都駅<rt>きょうとえき</rt></ruby><ruby>前<rt>まえ</rt></ruby>のプロメトリックでいいかな?<br>*(Tuần sau sẽ điền. Trung tâm thi là Prometric trước ga Kyoto được không nhỉ?)* |
| Hà | うん、そこが<ruby>一番<rt>いちばん</rt></ruby><ruby>近<rt>ちか</rt></ruby>い。<ruby>受験料<rt>じゅけんりょう</rt></ruby>は8,000<ruby>円<rt>えん</rt></ruby>くらい。<br>*(Ừ, gần nhất. Lệ phí thi khoảng 8000 yên.)* |
| Trang | <ruby>試験範囲<rt>しけんはんい</rt></ruby>は?<br>*(Phạm vi thi?)* |
| Hà | <ruby>四<rt>よっ</rt></ruby>つ:フロント<ruby>業務<rt>ぎょうむ</rt></ruby>、<ruby>客室<rt>きゃくしつ</rt></ruby><ruby>整備<rt>せいび</rt></ruby>、<ruby>料飲<rt>りょういん</rt></ruby><ruby>サービス<rt>さーびす</rt></ruby>、<ruby>安全衛生<rt>あんぜんえいせい</rt></ruby>。<ruby>接客<rt>せっきゃく</rt></ruby>マナーも<ruby>必<rt>かなら</rt></ruby>ず<ruby>出<rt>で</rt></ruby>る。<br>*(Bốn mảng: front desk, dọn phòng, F&B, an toàn vệ sinh. Phong cách phục vụ chắc chắn ra.)* |
| Trang | <ruby>毎日<rt>まいにち</rt></ruby><ruby>現場<rt>げんば</rt></ruby>でやってる<ruby>仕事<rt>しごと</rt></ruby>そのもの。<br>*(Là chính việc tao làm hàng ngày tại hiện trường.)* |
| Hà | そう。<ruby>現場経験<rt>げんばけいけん</rt></ruby>3<ruby>年<rt>ねん</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>たちは<ruby>有利<rt>ゆうり</rt></ruby>。<ruby>用語<rt>ようご</rt></ruby>だけしっかり<ruby>覚<rt>おぼ</rt></ruby>えれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Đúng. 3 năm kinh nghiệm hiện trường nên có lợi. Học thuộc thuật ngữ là ổn.)* |

---

## Tình huống 2 — Văn phòng 女将 · 9:00, xin xác nhận hỗ trợ đăng ký thi

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。SSWの<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みについてご<ruby>相談<rt>そうだん</rt></ruby>です。<br>*(Bà chủ, em xin phép. Em muốn trao đổi về đăng ký thi SSW.)* |
| 女将 | はい、どうぞ。<br>*(Vâng, mời em.)* |
| Trang | <ruby>来月<rt>らいげつ</rt></ruby>15<ruby>日<rt>にち</rt></ruby>、<ruby>京都<rt>きょうと</rt></ruby>プロメトリックで<ruby>受験<rt>じゅけん</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えています。<ruby>当日<rt>とうじつ</rt></ruby>は<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただけますか?<br>*(Em định thi ngày 15 tháng sau ở Prometric Kyoto. Hôm đó em xin phép nghỉ có lương được không ạ?)* |
| 女将 | もちろんです。<ruby>受験料<rt>じゅけんりょう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>半額補助<rt>はんがくほじょ</rt></ruby>します。<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>全額返金<rt>ぜんがくへんきん</rt></ruby>です。<br>*(Tất nhiên. Lệ phí công ty hỗ trợ 1/2. Đỗ thì hoàn toàn 100%.)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>ですか!ありがとうございます。<br>*(Thật ạ! Em cảm ơn bà chủ.)* |
| 女将 | チャンさんに<ruby>残<rt>のこ</rt></ruby>ってほしいですから。<ruby>合格後<rt>ごうかくご</rt></ruby>は<ruby>当館<rt>とうかん</rt></ruby>で<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>として<ruby>雇用契約<rt>こようけいやく</rt></ruby>を<ruby>結<rt>むす</rt></ruby>ばせていただきます。<br>*(Vì chúng tôi muốn Trang ở lại. Đỗ rồi sẽ ký hợp đồng SSW1 với ryokan chúng tôi.)* |
| Trang | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Lời quá lớn so với em. Em nhất định sẽ đỗ.)* |
| 女将 | <ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>の<ruby>紹介<rt>しょうかい</rt></ruby>もしますね。<br>*(Chỉ luôn giúp em tổ chức hỗ trợ đăng ký nhé.)* |

---

## Tình huống 3 — Phòng nhân viên · 22:00, Hà mở giáo trình SSW ôn フロント業務

| Vai | Lời thoại |
|---|---|
| Hà | チャンさん、フロント<ruby>業務<rt>ぎょうむ</rt></ruby>の<ruby>章<rt>しょう</rt></ruby>からいこう。<ruby>第一問<rt>だいいちもん</rt></ruby>:チェックインの<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>?<br>*(Trang, bắt đầu từ chương front desk đi. Câu 1: Giờ check-in tiêu chuẩn là mấy giờ?)* |
| Trang | <ruby>業界<rt>ぎょうかい</rt></ruby><ruby>標準<rt>ひょうじゅん</rt></ruby>は15<ruby>時<rt>じ</rt></ruby>。チェックアウトは10<ruby>時<rt>じ</rt></ruby>または11<ruby>時<rt>じ</rt></ruby>。<br>*(Tiêu chuẩn ngành là 15h. Check-out 10h hoặc 11h.)* |
| Hà | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>:お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>予約<rt>よやく</rt></ruby>なしで<ruby>来<rt>らい</rt></ruby><ruby>館<rt>かん</rt></ruby>。<ruby>満室<rt>まんしつ</rt></ruby>。<ruby>適切<rt>てきせつ</rt></ruby>な<ruby>対応<rt>たいおう</rt></ruby>は?<br>*(Đúng. Tiếp: khách không đặt phòng vào ryokan. Hết phòng. Cách xử lý phù hợp?)* |
| Trang | お<ruby>断<rt>ことわ</rt></ruby>りした<ruby>後<rt>あと</rt></ruby>、<ruby>近隣<rt>きんりん</rt></ruby>の<ruby>系列館<rt>けいれつかん</rt></ruby>または<ruby>協力館<rt>きょうりょくかん</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>する。<br>*(Sau khi từ chối, giới thiệu ryokan cùng hệ thống hoặc đối tác lân cận.)* |
| Hà | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>個人情報<rt>こじんじょうほう</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>扱<rt>あつか</rt></ruby>いは?<br>*(Hoàn hảo. Xử lý thông tin cá nhân?)* |
| Trang | <ruby>個人情報保護法<rt>こじんじょうほうほごほう</rt></ruby>に<ruby>従<rt>したが</rt></ruby>い、<ruby>目的外<rt>もくてきがい</rt></ruby><ruby>利用<rt>りよう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>。<ruby>第三者<rt>だいさんしゃ</rt></ruby>への<ruby>提供<rt>ていきょう</rt></ruby>は<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>同意<rt>どうい</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Tuân thủ Luật bảo vệ thông tin cá nhân, cấm sử dụng ngoài mục đích. Cung cấp cho bên thứ ba cần sự đồng ý của đương sự.)* |
| Hà | チャンさん、<ruby>用語<rt>ようご</rt></ruby><ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>講師<rt>こうし</rt></ruby>みたい。<br>*(Trang, thuộc thuật ngữ hoàn hảo. Như giảng viên.)* |
| Trang | (cười) <ruby>3年間<rt>さんねんかん</rt></ruby>フロントのお<ruby>姉<rt>ねえ</rt></ruby>さんに<ruby>怒<rt>おこ</rt></ruby>られながら<ruby>覚<rt>おぼ</rt></ruby>えた。<br>*(— cười — 3 năm bị chị front desk mắng để học thuộc.)* |

---

## Tình huống 4 — Phòng nhân viên · 22:30, ôn 客室整備 — nghi vấn về 消毒 sau COVID

| Vai | Lời thoại |
|---|---|
| Hà | <ruby>客室<rt>きゃくしつ</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>は?<br>*(Thứ tự dọn phòng?)* |
| Trang | <ruby>換気<rt>かんき</rt></ruby>→<ruby>ゴミ<rt>ごみ</rt></ruby><ruby>回収<rt>かいしゅう</rt></ruby>→<ruby>リネン<rt>りねん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>→<ruby>浴室<rt>よくしつ</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>→<ruby>客室<rt>きゃくしつ</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>→<ruby>消毒<rt>しょうどく</rt></ruby>→<ruby>備品<rt>びひん</rt></ruby><ruby>補充<rt>ほじゅう</rt></ruby>→<ruby>最終<rt>さいしゅう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>。<br>*(Thông gió → thu rác → thay khăn drap → rửa nhà tắm → dọn phòng → khử trùng → bổ sung đồ dùng → kiểm tra cuối.)* |
| Hà | <ruby>消毒<rt>しょうどく</rt></ruby><ruby>液<rt>えき</rt></ruby>の<ruby>選択<rt>せんたく</rt></ruby>。アルコールが<ruby>効<rt>き</rt></ruby>かない<ruby>菌<rt>きん</rt></ruby>は?<br>*(Chọn dung dịch khử trùng. Vi khuẩn cồn không diệt được?)* |
| Trang | ノロウイルスはアルコール<ruby>効<rt>き</rt></ruby>かない。<ruby>次亜塩素酸<rt>じあえんそさん</rt></ruby><ruby>ナトリウム<rt>なとりうむ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。<br>*(Norovirus thì cồn không có tác dụng. Dùng natri hypoclorit.)* |
| Hà | <ruby>濃度<rt>のうど</rt></ruby>は?<br>*(Nồng độ?)* |
| Trang | <ruby>嘔吐物<rt>おうとぶつ</rt></ruby>の<ruby>処理<rt>しょり</rt></ruby>は0.1%、<ruby>通常<rt>つうじょう</rt></ruby><ruby>消毒<rt>しょうどく</rt></ruby>は0.02%。<br>*(Xử lý chất nôn 0.1%, khử trùng thường 0.02%.)* |
| Hà | パーフェクト。じゃ、シーツ<ruby>交換<rt>こうかん</rt></ruby>の<ruby>頻度<rt>ひんど</rt></ruby>は?<br>*(Perfect. Vậy, tần suất thay drap?)* |
| Trang | <ruby>連泊<rt>れんぱく</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>原則<rt>げんそく</rt></ruby>3<ruby>日<rt>にち</rt></ruby>に1<ruby>回<rt>かい</rt></ruby>、ご<ruby>希望<rt>きぼう</rt></ruby>があれば<ruby>毎日<rt>まいにち</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>。<ruby>新規<rt>しんき</rt></ruby><ruby>宿泊<rt>しゅくはく</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>新品<rt>しんぴん</rt></ruby>。<br>*(Khách lưu trú liên tục thì 3 ngày/lần theo nguyên tắc, nếu yêu cầu thì hàng ngày. Khách mới thì bắt buộc thay mới.)* |
| Hà | <ruby>環境<rt>かんきょう</rt></ruby>に<ruby>配慮<rt>はいりょ</rt></ruby>した<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みもよく<ruby>出<rt>で</rt></ruby>る。SDGsね。<br>*(Sáng kiến vì môi trường cũng hay ra. SDGs đấy.)* |

---

## Tình huống 5 — Phòng nhân viên · 23:00, ôn 料飲サービス — alergen + 酒類

| Vai | Lời thoại |
|---|---|
| Hà | <ruby>料飲<rt>りょういん</rt></ruby><ruby>編<rt>へん</rt></ruby>。<ruby>食物<rt>しょくもつ</rt></ruby>アレルギーで<ruby>表示義務<rt>ひょうじぎむ</rt></ruby>がある<ruby>特定原材料<rt>とくていげんざいりょう</rt></ruby>8<ruby>品目<rt>ひんもく</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げて。<br>*(Phần F&B. Liệt kê 8 nguyên liệu bắt buộc thông báo dị ứng thực phẩm.)* |
| Trang | <ruby>えび<rt>えび</rt></ruby>、<ruby>かに<rt>かに</rt></ruby>、<ruby>くるみ<rt>くるみ</rt></ruby>、<ruby>小麦<rt>こむぎ</rt></ruby>、そば、<ruby>卵<rt>たまご</rt></ruby>、<ruby>乳<rt>にゅう</rt></ruby>、<ruby>落花生<rt>らっかせい</rt></ruby>。<br>*(Tôm, cua, óc chó, lúa mì, mì soba, trứng, sữa, lạc.)* |
| Hà | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>新<rt>しん</rt></ruby>くるみが2025<ruby>年<rt>ねん</rt></ruby>から<ruby>追加<rt>ついか</rt></ruby>になったね。お<ruby>客様<rt>きゃくさま</rt></ruby>からアレルギー<ruby>申<rt>もう</rt></ruby>し<ruby>出<rt>で</rt></ruby>あった<ruby>時<rt>とき</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>は?<br>*(Đúng. Óc chó vừa thêm vào từ 2025. Khi khách báo dị ứng thì xử lý sao?)* |
| Trang | まず<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>食材<rt>しょくざい</rt></ruby>を<ruby>聞<rt>き</rt></ruby>き、<ruby>板長<rt>いたちょう</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>。<ruby>含<rt>ふく</rt></ruby>まれている<ruby>場合<rt>ばあい</rt></ruby>は<ruby>代替<rt>だいたい</rt></ruby><ruby>食材<rt>しょくざい</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>、<ruby>不可能<rt>ふかのう</rt></ruby>な<ruby>場合<rt>ばあい</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>。<br>*(Trước hỏi nguyên liệu cụ thể, kiểm tra với bếp trưởng. Có thì đề xuất thay thế, không thay được thì giải thích thẳng thắn.)* |
| Hà | お<ruby>酒<rt>さけ</rt></ruby>の<ruby>提供<rt>ていきょう</rt></ruby>で<ruby>注意<rt>ちゅうい</rt></ruby>すべき<ruby>法律<rt>ほうりつ</rt></ruby>は?<br>*(Luật cần chú ý khi phục vụ rượu?)* |
| Trang | <ruby>未成年者飲酒禁止法<rt>みせいねんしゃいんしゅきんしほう</rt></ruby>。20<ruby>歳<rt>さい</rt></ruby><ruby>未満<rt>みまん</rt></ruby>には<ruby>提供<rt>ていきょう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>。<ruby>年齢確認<rt>ねんれいかくにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Luật cấm vị thành niên uống rượu. Cấm phục vụ dưới 20 tuổi. Cần xác nhận tuổi.)* |
| Hà | お<ruby>客様<rt>きゃくさま</rt></ruby>が「<ruby>運転<rt>うんてん</rt></ruby>するから<ruby>少<rt>すこ</rt></ruby>しだけ」と<ruby>言<rt>い</rt></ruby>われたら?<br>*(Khách nói "tôi lái xe nên chút thôi" thì sao?)* |
| Trang | <ruby>飲酒運転<rt>いんしゅうんてん</rt></ruby>は<ruby>違法<rt>いほう</rt></ruby>。「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、ご<ruby>運転<rt>うんてん</rt></ruby>される<ruby>方<rt>かた</rt></ruby>には<ruby>提供<rt>ていきょう</rt></ruby>いたしかねます」と<ruby>丁重<rt>ていちょう</rt></ruby>に<ruby>断<rt>ことわ</rt></ruby>る。<br>*(Lái xe say là phạm pháp. Lịch sự từ chối: "Xin lỗi quý vị, người lái xe thì không thể phục vụ ạ".)* |
| Hà | <ruby>素晴<rt>すば</rt></ruby>らしい。「<ruby>提供<rt>ていきょう</rt></ruby>いたしかねます」、<ruby>柔<rt>やわ</rt></ruby>らかい<ruby>拒絶<rt>きょぜつ</rt></ruby>の<ruby>定型<rt>ていけい</rt></ruby><ruby>句<rt>く</rt></ruby>。<br>*(Tuyệt vời. "Teikyō itashikanemasu", câu cố định để từ chối mềm.)* |

---

## Tình huống 6 — Phòng nhân viên · 23:30, online với Hùng (TTS oto Aichi)

> Trang call online với Hùng — bạn TTS oto năm 3 ở Aichi, cũng đang ôn SSW.

| Vai | Lời thoại |
|---|---|
| Hùng | Trang, ôn tới đâu rồi? Anh đang vật lộn với <ruby>整備<rt>せいび</rt></ruby><ruby>用語<rt>ようご</rt></ruby>.<br>*(— tiếng Việt, chêm JP —)* |
| Trang | Em đỡ hơn vì khách sạn dùng từ <ruby>日常<rt>にちじょう</rt></ruby> mỗi ngày. Anh có học CBT mock chưa?<br>*(— tiếng Việt, chêm JP —)* |
| Hùng | Có. CBT cái khó là thời gian, 60 câu 30 phút, mỗi câu 30 giây. Đừng đọc kỹ quá.<br>*(— tiếng Việt —)* |
| Trang | Trời, 30 giây/câu á? Em chưa biết. Có mẹo gì không anh?<br>*(— tiếng Việt —)* |
| Hùng | Câu nào không chắc tích đáp án gần đúng nhất rồi đánh dấu, làm xong xuôi rồi quay lại. CBT cho phép "後で見直す" — "review later".<br>*(— tiếng Việt, chêm JP —)* |
| Trang | OK, em sẽ luyện đúng giờ. Mà <ruby>受験票<rt>じゅけんひょう</rt></ruby> có cần in ra không anh?<br>*(— tiếng Việt, chêm JP —)* |
| Hùng | Không cần in. Mang <ruby>在留<rt>ざいりゅう</rt></ruby>カード với mã <ruby>受付番号<rt>うけつけばんごう</rt></ruby> là đủ. Đến trước 30 phút, để đồ vào locker, không mang điện thoại vào phòng thi.<br>*(— tiếng Việt, chêm JP —)* |
| Trang | Cảm ơn anh. Anh thi khi nào?<br>*(— tiếng Việt —)* |
| Hùng | Anh thi 20/9. Trang thi 15/9. Ai đỗ trước khao bún bò Huế.<br>*(— tiếng Việt —)* |
| Trang | (cười) Deal!<br>*(— tiếng Việt —)* |

---

## Tình huống 7 — Phòng nhân viên · 21:00, làm thử bài CBT mock 60 câu

| Vai | Lời thoại |
|---|---|
| Trang | (mở laptop) Mock <ruby>試験<rt>しけん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>!タイマー30<ruby>分<rt>ぷん</rt></ruby>。<br>*(— mở laptop — Bắt đầu thi mock! Bấm giờ 30 phút.)* |
| Trang | <ruby>第<rt>だい</rt></ruby>1<ruby>問<rt>もん</rt></ruby>:お<ruby>客様<rt>きゃくさま</rt></ruby>に「お<ruby>湯<rt>ゆ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ない」と<ruby>言<rt>い</rt></ruby>われた。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>は?<br>*(Câu 1: Khách báo "không có nước nóng". Phản ứng đầu tiên?)* |
| Trang | (chọn) お<ruby>詫<rt>わ</rt></ruby>びし、<ruby>速<rt>すみ</rt></ruby>やかに<ruby>現場<rt>げんば</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。…<ruby>次<rt>つぎ</rt></ruby>。<br>*(— chọn — Xin lỗi và lập tức kiểm tra hiện trường. … Tiếp.)* |
| Trang | <ruby>第<rt>だい</rt></ruby>2<ruby>問<rt>もん</rt></ruby>:HACCPの<ruby>原則<rt>げんそく</rt></ruby><ruby>数<rt>すう</rt></ruby>は?…7<ruby>原則<rt>げんそく</rt></ruby>。<ruby>第<rt>だい</rt></ruby>3<ruby>問<rt>もん</rt></ruby>:<ruby>消火器<rt>しょうかき</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>は?ピンを<ruby>抜<rt>ぬ</rt></ruby>く→<ruby>ホース<rt>ほーす</rt></ruby>を<ruby>火元<rt>ひもと</rt></ruby>に→レバーを<ruby>握<rt>にぎ</rt></ruby>る。<br>*(Câu 2: số nguyên tắc HACCP? … 7 nguyên tắc. Câu 3: cách dùng bình chữa cháy? Rút chốt → vòi vào nguồn lửa → bóp cò.)* |
| Trang | (15 phút sau) もう30<ruby>問<rt>もん</rt></ruby>!<ruby>順調<rt>じゅんちょう</rt></ruby>。<br>*(— 15 phút sau — Đã 30 câu! Suôn sẻ.)* |
| Trang | (28 phút sau) <ruby>残<rt>のこ</rt></ruby>り2<ruby>分<rt>ふん</rt></ruby>で5<ruby>問<rt>もん</rt></ruby>!<ruby>勘<rt>かん</rt></ruby>で<ruby>埋<rt>う</rt></ruby>める!<br>*(— 28 phút sau — Còn 2 phút, 5 câu! Đoán bừa lấp đầy!)* |
| Trang | (30 phút) <ruby>終了<rt>しゅうりょう</rt></ruby>!…<ruby>結果<rt>けっか</rt></ruby>…78%。<ruby>合格<rt>ごうかく</rt></ruby>ライン<ruby>突破<rt>とっぱ</rt></ruby>!<br>*(— 30 phút — Kết thúc! … Kết quả… 78%. Vượt qua mức đỗ!)* |
| Hà | やった!でも<ruby>当日<rt>とうじつ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>で<ruby>下<rt>さ</rt></ruby>がるから、85%<ruby>目標<rt>もくひょう</rt></ruby>で。<br>*(Tuyệt! Nhưng ngày thi căng thẳng nên giảm xuống, đặt mục tiêu 85%.)* |

---

## Tình huống 8 — Phòng họp · 14:00, lớp ôn tập do 登録支援機関 tổ chức

*Lớp 1 buổi do 登録支援機関 (org hỗ trợ đăng ký) mà 女将 giới thiệu — giảng viên là người từng làm GM ryokan 30 năm.*

| Vai | Lời thoại |
|---|---|
| 講師 | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>接客<rt>せっきゃく</rt></ruby>マナーの<ruby>難問<rt>なんもん</rt></ruby><ruby>事例<rt>じれい</rt></ruby>をいくつか<ruby>取<rt>と</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げます。<ruby>事例<rt>じれい</rt></ruby>1:お<ruby>客様<rt>きゃくさま</rt></ruby>から「<ruby>君<rt>きみ</rt></ruby>、<ruby>連絡先<rt>れんらくさき</rt></ruby><ruby>教<rt>おし</rt></ruby>えて」。どう<ruby>断<rt>ことわ</rt></ruby>る?<br>*(Mọi người, hôm nay tôi sẽ lấy vài tình huống khó về phong cách phục vụ. Tình huống 1: Khách nói "Em ơi, cho anh số liên lạc". Cách từ chối?)* |
| Trang | (giơ tay) 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>規則<rt>きそく</rt></ruby>で<ruby>個人<rt>こじん</rt></ruby>の<ruby>連絡先<rt>れんらくさき</rt></ruby>はお<ruby>伝<rt>つた</rt></ruby>えできないことになっております」。<br>*(— giơ tay — "Xin lỗi quý ông, theo quy định chúng tôi không thể chuyển số cá nhân.")* |
| 講師 | <ruby>正解<rt>せいかい</rt></ruby>。「<ruby>規則<rt>きそく</rt></ruby>で」がポイント。<ruby>個人<rt>こじん</rt></ruby>の<ruby>意思<rt>いし</rt></ruby>ではなく<ruby>組織<rt>そしき</rt></ruby>の<ruby>規則<rt>きそく</rt></ruby>として<ruby>断<rt>ことわ</rt></ruby>る。お<ruby>客様<rt>きゃくさま</rt></ruby>も<ruby>引<rt>ひ</rt></ruby>き<ruby>下<rt>さ</rt></ruby>がりやすい。<br>*(Đúng. "Theo quy định" là điểm chính. Không phải ý cá nhân mà từ chối theo quy định tổ chức. Khách cũng dễ rút lui.)* |
| 講師 | <ruby>事例<rt>じれい</rt></ruby>2:<ruby>客室<rt>きゃくしつ</rt></ruby>から<ruby>怒鳴<rt>どな</rt></ruby>り<ruby>声<rt>ごえ</rt></ruby>。<ruby>家庭内<rt>かていない</rt></ruby><ruby>暴力<rt>ぼうりょく</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>。どう?<br>*(Tình huống 2: tiếng la từ phòng. Khả năng bạo lực gia đình. Sao?)* |
| Trang | まず<ruby>一<rt>ひと</rt></ruby>つ:<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>静<rt>しず</rt></ruby>かに<ruby>確認<rt>かくにん</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ:<ruby>必要<rt>ひつよう</rt></ruby>あれば<ruby>110番<rt>ひゃくとうばん</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ:<ruby>被害者<rt>ひがいしゃ</rt></ruby>を<ruby>別室<rt>べっしつ</rt></ruby>に<ruby>避難<rt>ひなん</rt></ruby>。<ruby>自分<rt>じぶん</rt></ruby>では<ruby>介入<rt>かいにゅう</rt></ruby>しない。<br>*(Một: xác nhận tình hình âm thầm. Hai: nếu cần gọi 110. Ba: đưa nạn nhân sang phòng khác. Không tự can thiệp.)* |
| 講師 | <ruby>素晴<rt>すば</rt></ruby>らしい。「<ruby>自分<rt>じぶん</rt></ruby>では<ruby>介入<rt>かいにゅう</rt></ruby>しない」、これ<ruby>大事<rt>だいじ</rt></ruby>。スタッフの<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>最優先<rt>さいゆうせん</rt></ruby>。<br>*(Tuyệt vời. "Không tự can thiệp", quan trọng. An toàn nhân viên ưu tiên nhất.)* |

---

## Tình huống 9 — Trên đường về · 17:00, Trang lo bài thi N5/N4 từ vựng phòng thi

| Vai | Lời thoại |
|---|---|
| Trang | (đi cùng Hà) <ruby>講師<rt>こうし</rt></ruby>の<ruby>講座<rt>こうざ</rt></ruby>、すごく<ruby>勉強<rt>べんきょう</rt></ruby>になった。<br>*(— đi cùng Hà — Lớp của thầy giúp em học được nhiều.)* |
| Hà | <ruby>事例問題<rt>じれいもんだい</rt></ruby>は<ruby>暗記<rt>あんき</rt></ruby>じゃ<ruby>解<rt>と</rt></ruby>けないからね。<br>*(Câu tình huống thì học vẹt không giải được mà.)* |
| Trang | <ruby>不安<rt>ふあん</rt></ruby>なのは<ruby>試験<rt>しけん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>。「<ruby>選<rt>えら</rt></ruby>びなさい」「<ruby>あてはまる<rt>あてはまる</rt></ruby>」「<ruby>正<rt>ただ</rt></ruby>しいものを」、<ruby>普段<rt>ふだん</rt></ruby><ruby>使<rt>つか</rt></ruby>わないから。<br>*(Em lo về thuật ngữ trong đề thi. "Erabinasai", "atehamaru", "tadashii mono o", ngày thường không dùng.)* |
| Hà | じゃあ<ruby>過去<rt>かこ</rt></ruby>の<ruby>問題集<rt>もんだいしゅう</rt></ruby>を5<ruby>回<rt>かい</rt></ruby><ruby>読<rt>よ</rt></ruby>む。<ruby>用語<rt>ようご</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れるのが<ruby>一番<rt>いちばん</rt></ruby>。<br>*(Vậy đọc sách đề cũ 5 lần. Quen thuật ngữ là tốt nhất.)* |
| Trang | (gật) はい、<ruby>毎晩<rt>まいばん</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby><ruby>過去問<rt>かこもん</rt></ruby>やります。<br>*(— gật — Vâng, mỗi tối 1 tiếng đề cũ.)* |
| Hà | <ruby>三年前<rt>さんねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>はN5の<ruby>仮名<rt>かな</rt></ruby>もあやしかった。<ruby>今<rt>いま</rt></ruby>はN3でSSW <ruby>挑戦<rt>ちょうせん</rt></ruby>。<ruby>人間<rt>にんげん</rt></ruby><ruby>変<rt>か</rt></ruby>われるね。<br>*(3 năm trước chị còn lơ mơ cả kana N5. Giờ N3, thi SSW. Con người thay đổi nhỉ.)* |
| Trang | <ruby>仲間<rt>なかま</rt></ruby>がいるからです。<br>*(Vì có đồng đội.)* |

---

## Tình huống 10 — テストセンター入口 · Ngày thi 9:15, đến sớm 45 phút

| Nhân viên Prometric | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>受験者<rt>じゅけんしゃ</rt></ruby><ruby>様<rt>さま</rt></ruby>でしょうか?<br>*(Chào buổi sáng. Bạn là thí sinh hôm nay phải không?)* |
| Trang | はい、9<ruby>時<rt>じ</rt></ruby>45<ruby>分<rt>ふん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>の<ruby>宿泊業技能測定試験<rt>しゅくはくぎょうぎのうそくていしけん</rt></ruby>です。グエンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Vâng, em thi bài đo lường kỹ năng ngành lưu trú 9h45. Em là Nguyễn.)* |
| Nhân viên | グエン<ruby>様<rt>さま</rt></ruby>ですね。<ruby>在留<rt>ざいりゅう</rt></ruby>カードと<ruby>確認票<rt>かくにんひょう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cô Nguyễn nhỉ. Xin thẻ cư trú và phiếu xác nhận.)* |
| Trang | (đưa thẻ) どうぞ。<br>*(— đưa thẻ — Đây ạ.)* |
| Nhân viên | <ruby>確認<rt>かくにん</rt></ruby>できました。お<ruby>荷物<rt>にもつ</rt></ruby>はすべてロッカーへ。<ruby>携帯電話<rt>けいたいでんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って<ruby>収<rt>おさ</rt></ruby>めてください。<ruby>受験<rt>じゅけん</rt></ruby>ブースは7<ruby>番<rt>ばん</rt></ruby>です。<br>*(Đã xác nhận. Đồ vào hết locker. Tắt điện thoại và cất. Bàn thi số 7.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。お<ruby>水<rt>みず</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>めますか?<br>*(Em hiểu rồi. Có thể mang nước vào không?)* |
| Nhân viên | <ruby>透明<rt>とうめい</rt></ruby>な<ruby>容器<rt>ようき</rt></ruby>でしたら<ruby>可<rt>か</rt></ruby>。ラベルは<ruby>剥<rt>は</rt></ruby>がしてください。<br>*(Bình trong suốt thì được. Bóc nhãn nhé.)* |
| Trang | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |

---

## Tình huống 11 — Bàn thi số 7 · 9:45, bắt đầu thi CBT

| Vai | Lời thoại |
|---|---|
| Trang | (tự nhủ) <ruby>3年間<rt>さんねんかん</rt></ruby><ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねてきた。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(— tự nhủ — 3 năm tích lũy rồi. Không sao.)* |
| (màn hình) | <ruby>第<rt>だい</rt></ruby>1<ruby>問<rt>もん</rt></ruby>:チェックインの<ruby>際<rt>さい</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>からパスポートをお<ruby>預<rt>あず</rt></ruby>かりする<ruby>主<rt>おも</rt></ruby>な<ruby>目的<rt>もくてき</rt></ruby>は?<br>*(Câu 1: khi check-in, mục đích chính của việc nhận hộ chiếu khách?)* |
| Trang | (chọn) <ruby>本人確認<rt>ほんにんかくにん</rt></ruby>と<ruby>記録<rt>きろく</rt></ruby><ruby>保管<rt>ほかん</rt></ruby>のため。<br>*(— chọn — Để xác nhận danh tính và lưu hồ sơ.)* |
| (màn hình) | <ruby>第<rt>だい</rt></ruby>15<ruby>問<rt>もん</rt></ruby>:<ruby>客室<rt>きゃくしつ</rt></ruby>で<ruby>火災<rt>かさい</rt></ruby><ruby>発生<rt>はっせい</rt></ruby>。<ruby>最優先<rt>さいゆうせん</rt></ruby>の<ruby>行動<rt>こうどう</rt></ruby>は?<br>*(Câu 15: cháy trong phòng. Hành động ưu tiên hàng đầu?)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>避難<rt>ひなん</rt></ruby>。<br>*(Di tản khách.)* |
| (màn hình) | <ruby>第<rt>だい</rt></ruby>32<ruby>問<rt>もん</rt></ruby>:ハラルのお<ruby>客様<rt>きゃくさま</rt></ruby>へのお<ruby>食事<rt>しょくじ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>で<ruby>避<rt>さ</rt></ruby>けるべき<ruby>食材<rt>しょくざい</rt></ruby>は?<br>*(Câu 32: Bữa ăn cho khách Halal, nguyên liệu nên tránh?)* |
| Trang | <ruby>豚肉<rt>ぶたにく</rt></ruby>、アルコール、<ruby>非<rt>ひ</rt></ruby>ハラルの<ruby>肉<rt>にく</rt></ruby>。<br>*(Thịt heo, cồn, thịt không halal.)* |
| Trang | (28 phút trôi qua) <ruby>残<rt>のこ</rt></ruby>り3<ruby>問<rt>もん</rt></ruby>、<ruby>見直<rt>みなお</rt></ruby>し3<ruby>問<rt>もん</rt></ruby>。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて。<br>*(— 28 phút trôi qua — Còn 3 câu, xem lại 3 câu. Bình tĩnh.)* |
| (màn hình) | <ruby>試験<rt>しけん</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>。<ruby>結果<rt>けっか</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby>マイページにてご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Thi kết thúc. Kết quả xem tại mypage sau.)* |
| Trang | (thở phào, lẩm bẩm) お<ruby>疲<rt>つか</rt></ruby>れ、<ruby>自分<rt>じぶん</rt></ruby>。<br>*(— thở phào, lẩm bẩm — Vất vả rồi, em ơi.)* |

---

## Tình huống 12 — Quán cà phê trước ga · 11:30, Hà chờ — chia sẻ ngay sau thi

| Vai | Lời thoại |
|---|---|
| Hà | チャンさん、お<ruby>疲<rt>つか</rt></ruby>れ!どうだった?<br>*(Trang, vất vả rồi! Sao em?)* |
| Trang | (thở dài, cười) <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>難<rt>むずか</rt></ruby>しかった。でも7<ruby>割<rt>わり</rt></ruby>は<ruby>確実<rt>かくじつ</rt></ruby>。<ruby>合<rt>ご</rt></ruby><ruby>否<rt>うひ</rt></ruby>はギリギリかも。<br>*(— thở dài, cười — Thật ra khó. Nhưng 7 phần chắc chắn. Đậu hay rớt thì giáp ranh.)* |
| Hà | 65%が<ruby>合格<rt>ごうかく</rt></ruby>ライン、70%あれば<ruby>絶対<rt>ぜったい</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(65% là mức đỗ, 70% thì chắc chắn ổn.)* |
| Trang | <ruby>意外<rt>いがい</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しかったのが、<ruby>個人情報保護法<rt>こじんじょうほうほごほう</rt></ruby>の<ruby>細<rt>こま</rt></ruby>かい<ruby>条文<rt>じょうぶん</rt></ruby>。<br>*(Bất ngờ là điều khoản chi tiết của Luật bảo vệ thông tin cá nhân.)* |
| Hà | あ、それはみんな<ruby>苦手<rt>にがて</rt></ruby>。<ruby>逆<rt>ぎゃく</rt></ruby>に、<ruby>接客<rt>せっきゃく</rt></ruby><ruby>事例<rt>じれい</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(À, ai cũng yếu phần đó. Ngược lại câu tình huống phục vụ ổn không?)* |
| Trang | <ruby>講師<rt>こうし</rt></ruby>の<ruby>講座<rt>こうざ</rt></ruby>のおかげで<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>できた。「<ruby>規則<rt>きそく</rt></ruby>で〜」が<ruby>三回<rt>さんかい</rt></ruby>くらい<ruby>出<rt>で</rt></ruby>た!<br>*(Nhờ lớp thầy mà giải được hết. "Kisoku de ~" ra khoảng 3 lần!)* |
| Hà | やっぱり<ruby>講座<rt>こうざ</rt></ruby>に<ruby>行<rt>い</rt></ruby>って<ruby>正解<rt>せいかい</rt></ruby>だった。<br>*(Đi lớp đó là đúng đấy.)* |
| Trang | <ruby>結果発表<rt>けっかはっぴょう</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>め。それまで<ruby>気<rt>き</rt></ruby>になる…。<br>*(Kết quả công bố đầu tháng sau. Đến lúc đó cứ bồn chồn…)* |
| Hà | <ruby>気<rt>き</rt></ruby>になっても<ruby>変<rt>か</rt></ruby>わらないよ。<ruby>普段<rt>ふだん</rt></ruby><ruby>通<rt>とお</rt></ruby>り<ruby>仕事<rt>しごと</rt></ruby>しよう。お<ruby>祝<rt>いわ</rt></ruby>いに<ruby>抹茶<rt>まっちゃ</rt></ruby>ラテどう?<br>*(Có lo cũng không thay đổi gì. Cứ làm việc bình thường. Ăn mừng matcha latte chứ?)* |
| Trang | (cười) お<ruby>願<rt>ねが</rt></ruby>いします!<br>*(— cười — Phiền chị!)* |

---

## Tình huống 13 — Phòng nhân viên · 21:00, ăn cơm + chia kinh nghiệm với Lan/Mai (kohai)

| Vai | Lời thoại |
|---|---|
| Mai | チャン<ruby>姉<rt>ねえ</rt></ruby>、<ruby>試験<rt>しけん</rt></ruby>どうでしたか?<br>*(Chị Trang, thi thế nào ạ?)* |
| Trang | <ruby>無事<rt>ぶじ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>。<ruby>結果<rt>けっか</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby><ruby>頭<rt>あたま</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かる。<br>*(Đã xong an toàn. Kết quả đầu tháng sau biết.)* |
| Lan | チャン<ruby>姉<rt>ねえ</rt></ruby>、<ruby>試験<rt>しけん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>、<ruby>教<rt>おし</rt></ruby>えてください。<ruby>私<rt>わたし</rt></ruby>たちも<ruby>三年後<rt>さんねんご</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Chị Trang, dạy tụi em cách chuẩn bị thi nhé. 3 năm sau tụi em cũng thi.)* |
| Trang | (cười) もちろん。コツは<ruby>三<rt>みっ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby><ruby>仕事<rt>しごと</rt></ruby>が<ruby>最高<rt>さいこう</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>。<br>*(— cười — Tất nhiên. Bí quyết ba. Một: việc hàng ngày là học tốt nhất.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:<ruby>用語<rt>ようご</rt></ruby>ノートを<ruby>作<rt>つく</rt></ruby>る。<ruby>毎日<rt>まいにち</rt></ruby>「<ruby>新<rt>あたら</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>」を3<ruby>個<rt>こ</rt></ruby><ruby>書<rt>か</rt></ruby>く。<ruby>三年<rt>さんねん</rt></ruby>で3,000<ruby>個<rt>こ</rt></ruby>!<br>*(Hai: làm sổ thuật ngữ. Mỗi ngày viết 3 "từ mới". 3 năm 3000 từ!)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:N3を<ruby>早<rt>はや</rt></ruby>めに<ruby>取<rt>と</rt></ruby>る。SSWは<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>がベース。JFT-Basicも<ruby>有<rt>ゆう</rt></ruby>だけど、N3なら<ruby>絶対<rt>ぜったい</rt></ruby><ruby>有利<rt>ゆうり</rt></ruby>。<br>*(Ba: lấy N3 sớm. SSW gốc là năng lực tiếng Nhật. JFT-Basic cũng được nhưng N3 chắc chắn có lợi.)* |
| Mai | <ruby>用語<rt>ようご</rt></ruby>ノート、<ruby>明日<rt>あした</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます!<br>*(Sổ thuật ngữ, từ mai em bắt đầu!)* |
| Lan | <ruby>私<rt>わたし</rt></ruby>もN3、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cũng sẽ cố lấy N3.)* |
| Trang | <ruby>後輩<rt>こうはい</rt></ruby>が<ruby>頼<rt>たの</rt></ruby>もしくて<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Kohai đáng tin cậy, chị mừng.)* |

---

## Tình huống 14 — Phòng nhân viên · 22:30, gọi điện về Huế

> Cảnh tiếng Việt — gọi mẹ và em gái.

| Vai | Lời thoại |
|---|---|
| Mẹ | Trang à! Thi xong rồi hả con? Sao rồi?<br>*(— tiếng Việt —)* |
| Trang | Dạ thi xong rồi mẹ. Con thấy ổn ổn. Khoảng 70% chắc chắn. Kết quả đầu tháng sau.<br>*(— tiếng Việt —)* |
| Em gái | Mức đỗ bao nhiêu chị?<br>*(— tiếng Việt —)* |
| Trang | 65% đỗ. Mà chị nhắm 70 cho yên tâm.<br>*(— tiếng Việt —)* |
| Mẹ | Cứ đỗ là mẹ an tâm. Mà <ruby>女将<rt>おかみ</rt></ruby>さん hỗ trợ hết hả con?<br>*(— tiếng Việt, chêm JP —)* |
| Trang | Dạ. <ruby>女将<rt>おかみ</rt></ruby>さん còn hứa nếu con đỗ thì kí <ruby>特定技能<rt>とくていぎのう</rt></ruby> hợp đồng 5 năm. Lương tăng từ 18 lên 25 vạn yên/tháng.<br>*(— tiếng Việt, chêm JP —)* |
| Em gái | 25 vạn là khoảng bao nhiêu chị?<br>*(— tiếng Việt —)* |
| Trang | Đổi ra tiền Việt khoảng 45 triệu/tháng. Gửi về cho mẹ 25-30 triệu được.<br>*(— tiếng Việt —)* |
| Mẹ | Mẹ không cần nhiều vậy đâu con. Tự lo cho mình trước. Mà con có nhớ nhà không?<br>*(— tiếng Việt —)* |
| Trang | (nghẹn) Nhớ chứ mẹ. Nhưng con ráng thêm 5 năm nữa, dành dụm rồi về Huế mở khách sạn nhỏ. Học ở Nhật rồi, về Việt Nam mình áp dụng <ruby>おもてなし<rt>おもてなし</rt></ruby>.<br>*(— tiếng Việt, chêm JP —)* |
| Mẹ | Con có chí lắm. Mẹ và em đợi con ở nhà.<br>*(— tiếng Việt —)* |
| Trang | Dạ. Mẹ với em ngủ ngon nhé. Thương mẹ.<br>*(— tiếng Việt —)* |

---

## Đọng lại chương

Kỳ thi <ruby>宿泊業技能測定試験<rt>しゅくはくぎょうぎのうそくていしけん</rt></ruby> đánh dấu bước chuyển từ **TTS3 → SSW1** — Trang được ở Nhật thêm 5 năm. Mẫu câu chính: **「<ruby>受験料<rt>じゅけんりょう</rt></ruby>の<ruby>半額補助<rt>はんがくほじょ</rt></ruby>/<ruby>全額返金<rt>ぜんがくへんきん</rt></ruby>」**, **「<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>65%<ruby>以上<rt>いじょう</rt></ruby>」**, **「<ruby>規則<rt>きそく</rt></ruby>で〜できないことになっております」** (định dạng từ chối lịch sự), **「<ruby>提供<rt>ていきょう</rt></ruby>いたしかねます」** (không thể phục vụ), **「<ruby>自分<rt>じぶん</rt></ruby>では<ruby>介入<rt>かいにゅう</rt></ruby>しない」** (không tự can thiệp sự cố nguy hiểm), **「<ruby>本人確認<rt>ほんにんかくにん</rt></ruby>と<ruby>記録<rt>きろく</rt></ruby><ruby>保管<rt>ほかん</rt></ruby>のため」**, **「<ruby>後<rt>あと</rt></ruby>で<ruby>見直<rt>みなお</rt></ruby>す」** (CBT review later).

> Từ vựng & mẫu câu chương này: 宿泊業技能測定試験・CBT・合格基準・テストセンター・受験料・有給・半額補助・登録支援機関・客室整備・料飲サービス・安全衛生・接客マナー・個人情報保護法・特定原材料・次亜塩素酸ナトリウム・HACCP・未成年者飲酒禁止法・在留カード・受付番号・ハラル・本人確認.

---

## Bí quyết chương

- **Cấu trúc CBT**: 60 câu × 30 phút = 30 giây/câu. Câu không chắc → đánh dấu **「<ruby>後<rt>あと</rt></ruby>で<ruby>見直<rt>みなお</rt></ruby>す」** rồi tiếp, đừng dừng lại.
- **Phép từ chối lịch sự**: **「<ruby>規則<rt>きそく</rt></ruby>で〜できないことになっております」** — không phải ý cá nhân mà là quy định, khách dễ chấp nhận hơn.
- **Phục vụ rượu**: tuyệt đối không phục vụ người **lái xe** (<ruby>飲酒運転<rt>いんしゅうんてん</rt></ruby>) và **vị thành niên** (20歳未満). Câu cố định: **「<ruby>提供<rt>ていきょう</rt></ruby>いたしかねます」**.
- **Bảo vệ nhân viên trước**: sự cố bạo lực / sự cố nguy hiểm → **「<ruby>自分<rt>じぶん</rt></ruby>では<ruby>介入<rt>かいにゅう</rt></ruby>しない」** — gọi 110, đưa nạn nhân tránh, không tự xử lý.
- **8 nguyên liệu dị ứng bắt buộc khai báo** (2025〜): <ruby>えび<rt>えび</rt></ruby>・<ruby>かに<rt>かに</rt></ruby>・<ruby>くるみ<rt>くるみ</rt></ruby>・<ruby>小麦<rt>こむぎ</rt></ruby>・そば・<ruby>卵<rt>たまご</rt></ruby>・<ruby>乳<rt>にゅう</rt></ruby>・<ruby>落花生<rt>らっかせい</rt></ruby> — học thuộc, hỏi khách rõ rồi xác nhận với <ruby>板長<rt>いたちょう</rt></ruby>.
- **Khách halal**: tránh <ruby>豚肉<rt>ぶたにく</rt></ruby>, アルコール, thịt không halal — phải kiểm tra cả gia vị (<ruby>みりん<rt>みりん</rt></ruby>, <ruby>料理酒<rt>りょうりしゅ</rt></ruby> cũng có cồn).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 宿泊業 | しゅくはくぎょう | TÚC BẠC NGHIỆP | ngành lưu trú |
| 技能測定試験 | ぎのうそくていしけん | KỸ NĂNG TRẮC ĐỊNH THÍ NGHIỆM | bài thi đo lường kỹ năng |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | SSW |
| 合格基準 | ごうかくきじゅん | HỢP CÁCH CƠ CHUẨN | mức đỗ |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | lệ phí thi |
| 有給 | ゆうきゅう | HỮU CẤP | nghỉ có lương |
| 半額補助 | はんがくほじょ | BÁN NGẠCH BỔ TRỢ | hỗ trợ 1/2 |
| 全額返金 | ぜんがくへんきん | TOÀN NGẠCH PHẢN KIM | hoàn toàn 100% |
| 登録支援機関 | とうろくしえんきかん | ĐĂNG LỤC CHI VIỆN CƠ QUAN | tổ chức hỗ trợ đăng ký |
| 雇用契約 | こようけいやく | CỐ DỤNG KHẾ ƯỚC | hợp đồng lao động |
| 試験範囲 | しけんはんい | THÍ NGHIỆM PHẠM VI | phạm vi thi |
| 客室整備 | きゃくしつせいび | KHÁCH THẤT CHỈNH BỊ | dọn phòng |
| 料飲サービス | りょういんさーびす | LIỆU ẨM | dịch vụ ăn uống |
| 安全衛生 | あんぜんえいせい | AN TOÀN VỆ SINH | an toàn vệ sinh |
| 接客マナー | せっきゃくまなー | TIẾP KHÁCH | phong cách phục vụ |
| 個人情報保護法 | こじんじょうほうほごほう | CÁ NHÂN TÌNH BÁO BẢO HỘ PHÁP | Luật bảo vệ thông tin cá nhân |
| 第三者 | だいさんしゃ | ĐỆ TAM GIẢ | bên thứ ba |
| 同意 | どうい | ĐỒNG Ý | sự đồng ý |
| 換気 | かんき | HOÁN KHÍ | thông gió |
| 回収 | かいしゅう | HỒI THU | thu hồi |
| リネン交換 | りねんこうかん | GIAO HOÁN | thay drap khăn |
| 消毒 | しょうどく | TIÊU ĐỘC | khử trùng |
| 次亜塩素酸ナトリウム | じあえんそさんなとりうむ | THỨ Á DIÊM TỐ TOAN | natri hypoclorit |
| 嘔吐物 | おうとぶつ | ẨU THỔ VẬT | chất nôn |
| 濃度 | のうど | NỒNG ĐỘ | nồng độ |
| 連泊 | れんぱく | LIÊN BẠC | lưu trú liên tục |
| 食物アレルギー | しょくもつあれるぎー | THỰC VẬT | dị ứng thực phẩm |
| 特定原材料 | とくていげんざいりょう | ĐẶC ĐỊNH NGUYÊN TÀI LIỆU | nguyên liệu đặc định |
| くるみ | くるみ | — | óc chó |
| 落花生 | らっかせい | LẠC HOA SINH | đậu phộng |
| 代替 | だいたい | ĐẠI THẾ | thay thế |
| 未成年者飲酒禁止法 | みせいねんしゃいんしゅきんしほう | VỊ THÀNH NIÊN GIẢ ẨM TỬU CẤM CHỈ PHÁP | Luật cấm vị thành niên uống rượu |
| 飲酒運転 | いんしゅうんてん | ẨM TỬU VẬN CHUYỂN | lái xe khi say |
| 違法 | いほう | VI PHÁP | phạm pháp |
| 提供いたしかねる | ていきょういたしかねる | ĐỀ CUNG | không thể phục vụ (lịch sự) |
| 拒絶 | きょぜつ | CỰ TUYỆT | từ chối |
| 在留カード | ざいりゅうかーど | TẠI LƯU | thẻ cư trú |
| 受付番号 | うけつけばんごう | THỤ PHÓ PHIÊN HIỆU | số tiếp nhận |
| ロッカー | ろっかー | — | tủ khóa |
| 透明 | とうめい | THẤU MINH | trong suốt |
| 容器 | ようき | DUNG KHÍ | vật chứa, chai |
| 本人確認 | ほんにんかくにん | BẢN NHÂN XÁC NHẬN | xác nhận danh tính |
| 記録保管 | きろくほかん | KÝ LỤC BẢO QUẢN | lưu hồ sơ |
| 火災 | かさい | HỎA TAI | hỏa hoạn |
| 避難 | ひなん | TỊ NẠN | di tản |
| ハラル | はらる | — | halal |
| 豚肉 | ぶたにく | ĐỒN NHỤC | thịt heo |
| 介入 | かいにゅう | GIỚI NHẬP | can thiệp |
| 最優先 | さいゆうせん | TỐI ƯU TIÊN | ưu tiên cao nhất |
| 講師 | こうし | GIẢNG SƯ | giảng viên |
| 講座 | こうざ | GIẢNG TỌA | lớp học, khóa giảng |
| 事例問題 | じれいもんだい | SỰ LỆ VẤN ĐỀ | câu tình huống |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề cũ |
| 仲間 | なかま | TRỌNG GIAN | đồng đội |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | công bố kết quả |
| 消火器 | しょうかき | TIÊU HỎA KHÍ | bình chữa cháy |
| 個別 | こべつ | CÁ BIỆT | cá nhân hoá |
| HACCP | はさっぷ | — | HACCP |
| 系列館 | けいれつかん | HỆ LIỆT QUÁN | quán cùng hệ |
| 協力館 | きょうりょくかん | HIỆP LỰC QUÁN | quán đối tác |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000009, 800000048, NULL, 'markdown_book', 'T9. Dẫn đoàn inbound Singapore VIP', '# Sách thực tập sinh khách sạn năm 3 · T9. Dẫn đoàn inbound Singapore VIP

> **Mục tiêu nhân vật:** Trang (25 tuổi, Huế) làm 仲居 tại ryokan Kyoto năm cuối TTS. Học các mẫu hội thoại tiếng Nhật của 仲居 dẫn đoàn inbound đa ngôn ngữ: tiếp đón khách VIP đa quốc tịch tại 玄関 (お足元にお気をつけて), chuyển ngữ JP→EN trên đường vào phòng (お部屋へご案内いたします), giới thiệu 懐石 cho khách halal/vegetarian (お食事制限の確認), xử lý yêu cầu đặc biệt qua người phiên dịch (通訳を通じて), điều phối nhân viên Nepal/Hàn cho đoàn (お客様対応の役割分担), và báo cáo Okami sau khi tiễn khách (お見送り後のご報告).

---

## Bối cảnh

Tháng 11 năm 2027, ryokan「<ruby>月詠庵<rt>つきよみあん</rt></ruby>」Higashiyama Kyoto. Trang 25 tuổi, đã thi đỗ N3 mùa hè vừa qua, đang là 仲居 năm 3 chuẩn bị chuyển SSW1 mùa xuân tới. Hôm nay đoàn 12 khách VIP từ Singapore — gia đình tỷ phú gốc Hoa, có 2 người Hồi giáo cần bữa halal — đặt nguyên 4 phòng hạng đặc biệt. Okami giao Trang làm <ruby>主担当<rt>しゅたんとう</rt></ruby> (chính phụ trách) vì Trang tiếng Anh khá nhất nhà. Chương tập trung kỹ năng dẫn đoàn inbound đa ngôn ngữ, chuyển ngữ JP↔EN, điều phối kohai Nepal/Hàn cùng phục vụ, và xử lý yêu cầu ăn kiêng tôn giáo.

---

## Tình huống 1 — Phòng nhân viên · 7:00, Okami giao nhiệm vụ chính phụ trách

*Sáng sớm, trước briefing toàn ryokan, Okami gọi riêng Trang vào phòng làm việc.*

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>のシンガポール<ruby>団体様<rt>だんたいさま</rt></ruby>、あなたを<ruby>主担当<rt>しゅたんとう</rt></ruby>に<ruby>指名<rt>しめい</rt></ruby>します。<br>*(Trang-san, chào buổi sáng. Đoàn Singapore hôm nay, tôi chỉ định em làm chính phụ trách.)* |
| Trang | (cúi đầu) はい、<ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>確認<rt>かくにん</rt></ruby>させていただきたいことがございます。<br>*(Vâng, em xin nhận. Okami, em có vài điều xin phép xác nhận.)* |
| Okami | どうぞ。<br>*(Cứ hỏi đi.)* |
| Trang | <ruby>12<rt>じゅうに</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>のうち、ハラル<ruby>対応<rt>たいおう</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>いましたが、<ruby>豚<rt>ぶた</rt></ruby>・<ruby>酒類<rt>しゅるい</rt></ruby>・みりんは<ruby>全<rt>すべ</rt></ruby>て<ruby>除外<rt>じょがい</rt></ruby>でよろしいでしょうか。<br>*(Trong 12 vị, em được báo có 2 vị cần halal — thịt heo, rượu, mirin đều loại trừ hết phải không ạ?)* |
| Okami | その<ruby>通<rt>とお</rt></ruby>りです。<ruby>料理長<rt>りょうりちょう</rt></ruby>がすでに<ruby>別<rt>べつ</rt></ruby>メニューを<ruby>用意<rt>ようい</rt></ruby>しています。<ruby>器<rt>うつわ</rt></ruby>も<ruby>分<rt>わ</rt></ruby>けますから、<ruby>運<rt>はこ</rt></ruby>ぶ<ruby>時<rt>とき</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えないように。<br>*(Đúng vậy. Bếp trưởng đã chuẩn bị menu riêng. Bát đĩa cũng tách riêng, lúc bưng tuyệt đối không được nhầm.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>英語<rt>えいご</rt></ruby>の<ruby>通訳<rt>つうやく</rt></ruby>はわたくしが<ruby>担当<rt>たんとう</rt></ruby>させていただきますが、ネパール<ruby>人<rt>じん</rt></ruby>のラジさんとも<ruby>連携<rt>れんけい</rt></ruby>してよろしいでしょうか。<br>*(Em hiểu rồi. Phiên dịch tiếng Anh em sẽ phụ trách, nhưng em có thể phối hợp cùng Raj người Nepal được không ạ?)* |
| Okami | もちろん。ラジ<rt>さん</rt>はハラルの<ruby>知識<rt>ちしき</rt></ruby>もあるから、<ruby>配膳<rt>はいぜん</rt></ruby>はラジ<rt>さん</rt>に<ruby>任<rt>まか</rt></ruby>せてください。あなたは<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>役<rt>やく</rt></ruby>です。<br>*(Đương nhiên. Raj có kiến thức halal, để Raj phụ trách bưng đồ. Em là người quan sát toàn cảnh.)* |
| Trang | はい、<ruby>全力<rt>ぜんりょく</rt></ruby>を<ruby>尽<rt>つ</rt></ruby>くします。<br>*(Vâng, em sẽ dốc hết sức.)* |

---

## Tình huống 2 — Phòng staff · 7:30, briefing đội phục vụ đa quốc tịch

| Vai | Lời thoại |
|---|---|
| Trang | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>のシンガポール<ruby>団体様<rt>だんたいさま</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で<ruby>役割<rt>やくわり</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をさせていただきます。<br>*(Mọi người, chào buổi sáng. Em xin xác nhận phân vai cho đoàn Singapore hôm nay.)* |
| Raj (Nepal) | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします、チャン<ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Vâng, xin được nhờ ạ, Trang sempai.)* |
| Min-ji (Hàn) | わたしは<ruby>何<rt>なに</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>すればよろしいでしょうか。<br>*(Em phụ trách gì ạ?)* |
| Trang | ラジさんはハラル<ruby>対応<rt>たいおう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>の<ruby>専属<rt>せんぞく</rt></ruby><ruby>配膳<rt>はいぜん</rt></ruby>。<ruby>緑<rt>みどり</rt></ruby>のリボン<ruby>付<rt>つ</rt></ruby>き<ruby>器<rt>うつわ</rt></ruby>だけです。<br>*(Raj phụ trách bưng đồ chuyên biệt cho 2 vị halal. Chỉ bát đĩa có dải xanh lá.)* |
| Trang | ミンジさんは<ruby>残<rt>のこ</rt></ruby>り<ruby>10<rt>じゅう</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>の<ruby>通常<rt>つうじょう</rt></ruby><ruby>懐石<rt>かいせき</rt></ruby>。<ruby>韓国語<rt>かんこくご</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>はいらっしゃいませんが、<ruby>英語<rt>えいご</rt></ruby>のヘルプをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Min-ji phụ trách 懐石 thường cho 10 vị còn lại. Không có khách tiếng Hàn, nhưng nhờ em hỗ trợ tiếng Anh.)* |
| Trang | わたくしは<ruby>玄関<rt>げんかん</rt></ruby>でのお<ruby>出迎<rt>でむか</rt></ruby>えから、<ruby>通訳<rt>つうやく</rt></ruby>、<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>進行<rt>しんこう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Em phụ trách từ đón ở 玄関, phiên dịch, đến tiến trình toàn cục.)* |
| Raj | <ruby>緑<rt>みどり</rt></ruby>のリボンの<ruby>器<rt>うつわ</rt></ruby>と<ruby>普通<rt>ふつう</rt></ruby>の<ruby>器<rt>うつわ</rt></ruby>、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>混<rt>ま</rt></ruby>ぜないようにします。<br>*(Bát đĩa dải xanh lá và bát thường, em tuyệt đối không để lẫn.)* |
| Trang | ありがとうございます。<ruby>何<rt>なに</rt></ruby>かあったらすぐ<ruby>無線<rt>むせん</rt></ruby>で<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Cảm ơn các em. Có gì gọi em ngay qua bộ đàm.)* |

---

## Tình huống 3 — 玄関 · 14:30, đón đoàn VIP Singapore tại cổng ryokan

*Đoàn 12 người vừa xuống xe limousine. Lim-san — chủ đoàn, đàn ông 60 tuổi — bước xuống đầu.*

| Vai | Lời thoại |
|---|---|
| Trang | (cúi đầu sâu, hai tay đặt trước) いらっしゃいませ、<ruby>遠<rt>とお</rt></ruby>いところ<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しくださいまして、まことにありがとうございます。<br>*(Kính chào quý khách, hôm nay quý khách đã đến từ xa, chúng tôi vô cùng cảm ơn.)* |
| Trang | (sang EN) Welcome to Tsukiyomi-an, Mr. Lim. We have been expecting you. Please mind your step. |
| Mr. Lim | (EN) Thank you. The journey from Kansai airport was smooth. |
| Trang | (cúi đầu) お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください。お<ruby>履物<rt>はきもの</rt></ruby>はこちらの<ruby>下駄箱<rt>げたばこ</rt></ruby>にお<ruby>預<rt>あず</rt></ruby>けください。<br>*(Xin chú ý bước chân ạ. Giày dép xin gửi vào tủ ở đây.)* |
| Trang | (EN) Please take off your shoes here. We have prepared slippers for everyone. |
| Mrs. Lim | (EN) The garden is so beautiful! |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>今<rt>いま</rt></ruby>は<ruby>紅葉<rt>こうよう</rt></ruby>の<ruby>季節<rt>きせつ</rt></ruby>でございます。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>、ぜひお<ruby>庭<rt>にわ</rt></ruby>を<ruby>散策<rt>さんさく</rt></ruby>くださいませ。<br>*(Cảm ơn quý khách quá lời. Hiện đang mùa lá đỏ. Sáng mai xin mời quý khách dạo vườn.)* |
| Trang | (EN) Thank you. November is momiji — autumn leaves — season. Tomorrow morning please enjoy a walk in our garden. |
| Mr. Lim | (EN) Wonderful. My wife has been looking forward to this for months. |

---

## Tình huống 4 — Hành lang dẫn vào ryokan · 14:45, mẫu câu dẫn đường có chuyển ngữ

| Vai | Lời thoại |
|---|---|
| Trang | みなさま、お<ruby>部屋<rt>へや</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします。こちらへどうぞ。<br>*(Thưa quý khách, xin được dẫn quý vị về phòng. Mời đi lối này.)* |
| Trang | (EN) Please follow me to your rooms. The corridor turns left at the next pillar. |
| Mr. Lim | (EN) These wooden floors are amazing. How old is this ryokan? |
| Trang | この<ruby>建物<rt>たてもの</rt></ruby>は<ruby>明治<rt>めいじ</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>建<rt>た</rt></ruby>てられました。<ruby>120<rt>ひゃくにじゅう</rt></ruby><ruby>年以上<rt>ねんいじょう</rt></ruby>の<ruby>歴史<rt>れきし</rt></ruby>がございます。<br>*(Toà nhà này được xây năm Meiji thứ 32. Lịch sử hơn 120 năm rồi.)* |
| Trang | (EN) This building was built in 1899, in the Meiji era. It has over 120 years of history. |
| Mrs. Lim | (EN) Oh my! Older than Singapore itself! |
| Trang | (cười nhẹ) <ruby>柱<rt>はしら</rt></ruby>と<ruby>梁<rt>はり</rt></ruby>は<ruby>建築当時<rt>けんちくとうじ</rt></ruby>のままでございます。お<ruby>手<rt>て</rt></ruby>を<ruby>触<rt>ふ</rt></ruby>れていただいて<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Cột và xà nguyên bản từ thuở mới xây. Quý khách có thể chạm tay vào ạ.)* |
| Trang | (EN) The pillars and beams are original. You may touch them. |
| Mr. Lim | (chạm cột, gật đầu, EN) Incredible workmanship. |

---

## Tình huống 5 — Phòng「<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」· 15:00, giới thiệu phòng và 抹茶 chào đón

| Vai | Lời thoại |
|---|---|
| Trang | (mở 障子) こちらが<ruby>本日<rt>ほんじつ</rt></ruby>お<ruby>泊<rt>と</rt></ruby>まりいただくお<ruby>部屋<rt>へや</rt></ruby>「<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」でございます。<br>*(Đây là phòng quý khách nghỉ hôm nay, "Phòng Tùng" ạ.)* |
| Trang | (EN) This is your room, "Matsu-no-ma" — the Pine Room. |
| Mr. Lim | (EN, ngồi lên 座布団) The tatami smells wonderful. |
| Trang | <ruby>畳<rt>たたみ</rt></ruby>は<ruby>先月<rt>せんげつ</rt></ruby><ruby>新<rt>あたら</rt></ruby>しく<ruby>張<rt>は</rt></ruby>り<ruby>替<rt>か</rt></ruby>えたばかりでございます。<br>*(Chiếu tatami vừa thay mới tháng trước ạ.)* |
| Trang | (EN) The tatami was replaced last month. The scent is fresh straw. |
| Trang | (đặt khay trà, quỳ xuống) <ruby>到着<rt>とうちゃく</rt></ruby>のお<ruby>抹茶<rt>まっちゃ</rt></ruby>とお<ruby>菓子<rt>かし</rt></ruby>でございます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>主菓子<rt>おもがし</rt></ruby>は<ruby>紅葉<rt>もみじ</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>をした「<ruby>錦秋<rt>きんしゅう</rt></ruby>」でございます。<br>*(Trà 抹茶 và bánh chào đón ạ. Bánh chính hôm nay là "Cẩm Thu" hình lá phong.)* |
| Trang | (EN) Welcome matcha and seasonal sweet. Today''s sweet is shaped like a maple leaf — "Kinshu", meaning Brocade Autumn. |
| Mrs. Lim | (EN, chụp ảnh bánh) Almost too beautiful to eat! |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>抹茶<rt>まっちゃ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>苦<rt>にが</rt></ruby>めでございますので、お<ruby>菓子<rt>かし</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってからお<ruby>飲<rt>の</rt></ruby>みください。<br>*(Cảm ơn quá lời. 抹茶 hơi đắng, xin mời ăn bánh trước rồi uống trà ạ.)* |
| Trang | (EN) The matcha is slightly bitter. Please eat the sweet first, then drink the tea. |

---

## Tình huống 6 — Phòng「<ruby>竹<rt>たけ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」phòng halal · 15:30, xác nhận ăn kiêng với cặp vợ chồng Hồi giáo

*Khách Hồi giáo: ông Hassan và bà Aisha — họ hàng của Mr. Lim. Đeo khăn hijab.*

| Vai | Lời thoại |
|---|---|
| Trang | (cúi đầu) ハッサン<ruby>様<rt>さま</rt></ruby>、アイシャ<ruby>様<rt>さま</rt></ruby>、ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<br>*(Ngài Hassan, bà Aisha, kính chào quý khách đã đến.)* |
| Trang | (EN) Mr. Hassan, Mrs. Aisha, welcome. Before dinner, may I confirm your dietary needs? |
| Hassan | (EN) Yes please. We are strict halal. No pork, no alcohol — including mirin and cooking sake. |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>豚肉<rt>ぶたにく</rt></ruby>、<ruby>酒類<rt>しゅるい</rt></ruby>、みりん、<ruby>料理酒<rt>りょうりしゅ</rt></ruby>、すべて<ruby>除外<rt>じょがい</rt></ruby>のメニューをご<ruby>用意<rt>ようい</rt></ruby>しております。<br>*(Em đã rõ. Thịt heo, rượu các loại, mirin, rượu nấu — tất cả loại trừ, đã chuẩn bị menu riêng.)* |
| Trang | (EN) Pork, alcohol, mirin, cooking sake — all excluded. We have a separate menu for you. |
| Aisha | (EN) What about the fish broth? |
| Trang | お<ruby>出汁<rt>だし</rt></ruby>は<ruby>昆布<rt>こんぶ</rt></ruby>と<ruby>鰹節<rt>かつおぶし</rt></ruby>のみ、<ruby>酒<rt>さけ</rt></ruby>は<ruby>一切<rt>いっさい</rt></ruby><ruby>使用<rt>しよう</rt></ruby>しておりません。<br>*(Nước dùng chỉ dùng tảo bẹ và cá ngừ khô, hoàn toàn không dùng rượu.)* |
| Trang | (EN) The dashi is only kombu seaweed and bonito flakes. Absolutely no alcohol. |
| Hassan | (EN) Perfect. What about the dishware? |
| Trang | お<ruby>二人<rt>ふたり</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>の<ruby>器<rt>うつわ</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しております。<ruby>緑<rt>みどり</rt></ruby>のリボンが<ruby>目印<rt>めじるし</rt></ruby>でございます。<br>*(Bát đĩa riêng cho hai vị. Dải ruy băng xanh lá là dấu hiệu nhận biết.)* |
| Trang | (EN) Dedicated tableware for the two of you, marked with green ribbons, washed separately. |
| Aisha | (chắp tay) Alhamdulillah. Thank you for your care. |
| Trang | <ruby>当<rt>とう</rt></ruby><ruby>館<rt>かん</rt></ruby>のおもてなしは「お<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>気持<rt>きも</rt></ruby>ちを<ruby>第一<rt>だいいち</rt></ruby>に」でございます。ご<ruby>安心<rt>あんしん</rt></ruby>くださいませ。<br>*(Phương châm tiếp đãi của ryokan chúng tôi là "Đặt cảm xúc của khách lên hàng đầu". Xin quý vị an tâm ạ.)* |

---

## Tình huống 7 — Phòng nhân viên · 16:30, brief lại với Raj về dải ruy băng xanh

| Vai | Lời thoại |
|---|---|
| Trang | ラジさん、ハッサン<ruby>様<rt>さま</rt></ruby>と<ruby>奥<rt>おく</rt></ruby><ruby>様<rt>さま</rt></ruby>のお<ruby>食事<rt>しょくじ</rt></ruby>、<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Raj, bữa ăn của ngài Hassan và phu nhân, em xin xác nhận lần cuối.)* |
| Raj | はい、<ruby>緑<rt>みどり</rt></ruby>リボンの<ruby>器<rt>うつわ</rt></ruby>を<ruby>厨房<rt>ちゅうぼう</rt></ruby>の<ruby>奥<rt>おく</rt></ruby>の<ruby>棚<rt>たな</rt></ruby>に<ruby>別<rt>べつ</rt></ruby>に<ruby>並<rt>なら</rt></ruby>べてあります。<br>*(Vâng, bát đĩa dải xanh đã xếp riêng trên kệ trong cùng của bếp.)* |
| Trang | <ruby>洗<rt>あら</rt></ruby>うスポンジも<ruby>分<rt>わ</rt></ruby>けていますか。<br>*(Miếng rửa cũng tách riêng chứ?)* |
| Raj | はい、<ruby>緑<rt>みどり</rt></ruby>のスポンジでしか<ruby>洗<rt>あら</rt></ruby>いません。<ruby>料理長<rt>りょうりちょう</rt></ruby>がチェックしてくださいました。<br>*(Vâng, chỉ rửa bằng miếng xanh. Bếp trưởng đã check rồi.)* |
| Trang | ありがとうございます。お<ruby>運<rt>はこ</rt></ruby>びする<ruby>時<rt>とき</rt></ruby>はわたくしが<ruby>先<rt>さき</rt></ruby>にお<ruby>部屋<rt>へや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>って、<ruby>英語<rt>えいご</rt></ruby>でご<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Cảm ơn. Lúc bưng vào em sẽ vào phòng trước, giải thích bằng tiếng Anh.)* |
| Raj | チャン<ruby>先輩<rt>せんぱい</rt></ruby>、わたしネパールの<ruby>家族<rt>かぞく</rt></ruby>にもイスラム<ruby>教<rt>きょう</rt></ruby>の<ruby>友達<rt>ともだち</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて、ハラルの<ruby>気持<rt>きも</rt></ruby>ちはわかります。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>失敗<rt>しっぱい</rt></ruby>しません。<br>*(Trang sempai, gia đình em ở Nepal có nhiều bạn Hồi giáo, em hiểu cảm xúc halal. Em tuyệt đối không sai sót.)* |
| Trang | (vỗ vai Raj) ラジさんがいてくれて<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>心強<rt>こころづよ</rt></ruby>い。<br>*(Có Raj thật sự rất yên tâm.)* |

---

## Tình huống 8 — Phòng「<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」· 18:00, dẫn 浴衣 và giải thích cách mặc

*Mr. Lim hỏi về 浴衣. Trang vừa làm mẫu vừa dịch.*

| Vai | Lời thoại |
|---|---|
| Mr. Lim | (EN, cầm yukata) How do I wear this properly? |
| Trang | お<ruby>手伝<rt>てつだ</rt></ruby>いさせていただきます。まず<ruby>左<rt>ひだり</rt></ruby>の<ruby>身頃<rt>みごろ</rt></ruby>を<ruby>体<rt>からだ</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせて、その<ruby>上<rt>うえ</rt></ruby>に<ruby>右<rt>みぎ</rt></ruby>を<ruby>重<rt>かさ</rt></ruby>ねます。<br>*(Em xin phép hỗ trợ. Trước hết quấn vạt trái vào người, rồi đè vạt phải lên trên.)* |
| Trang | (EN) Important — left side first, then right side over it. The opposite is only for funerals. |
| Mr. Lim | (EN, cười) Good to know! Left over right is dead, right over left is alive. |
| Trang | (cười nhẹ) はい、<ruby>右前<rt>みぎまえ</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しい<ruby>着方<rt>きかた</rt></ruby>でございます。<ruby>帯<rt>おび</rt></ruby>は<ruby>男性<rt>だんせい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>はおへその<ruby>下<rt>した</rt></ruby>、<ruby>女性<rt>じょせい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>はおへその<ruby>上<rt>うえ</rt></ruby>に<ruby>結<rt>むす</rt></ruby>びます。<br>*(Vâng, "phải trước" mới đúng. Đai obi nam thắt dưới rốn, nữ thắt trên rốn.)* |
| Trang | (EN) Men tie the obi below the navel, women above. |
| Mrs. Lim | (EN, ngắm chồng) He looks like a samurai! |
| Trang | お<ruby>似合<rt>にあ</rt></ruby>いでございます。<ruby>夕食<rt>ゆうしょく</rt></ruby>もこの<ruby>浴衣<rt>ゆかた</rt></ruby>のままでお<ruby>越<rt>こ</rt></ruby>しくださいませ。<br>*(Quý ông mặc rất hợp ạ. Bữa tối mời quý vị mặc nguyên yukata tới ạ.)* |
| Trang | (EN) Please come to dinner in yukata. It''s the traditional way. |

---

## Tình huống 9 — 食事処「<ruby>萩<rt>はぎ</rt></ruby>」· 19:00, giới thiệu 懐石 từng món bằng JP+EN

*Trang ngồi đầu gối ở mép phòng, giới thiệu từng món. Raj phục vụ bàn halal song song.*

| Vai | Lời thoại |
|---|---|
| Trang | みなさま、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>懐石料理<rt>かいせきりょうり</rt></ruby>をご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。<br>*(Thưa quý khách, em xin giới thiệu kaiseki hôm nay.)* |
| Trang | (EN) Allow me to introduce tonight''s kaiseki, course by course. |
| Trang | <ruby>先付<rt>さきづけ</rt></ruby>は「<ruby>柿<rt>かき</rt></ruby><ruby>白和<rt>しらあ</rt></ruby>え」、<ruby>京都産<rt>きょうとさん</rt></ruby>の<ruby>富有柿<rt>ふゆうがき</rt></ruby>とお<ruby>豆腐<rt>とうふ</rt></ruby>を<ruby>胡麻<rt>ごま</rt></ruby>で<ruby>和<rt>あ</rt></ruby>えたものでございます。<br>*(Sakizuke là "Hồng trộn đậu hũ" — hồng Fuyu Kyoto trộn đậu hũ và mè trắng.)* |
| Trang | (EN) The starter is "kaki shira-ae" — Fuyu persimmon from Kyoto tossed with tofu and sesame. |
| Mr. Lim | (EN, nếm thử) Sweet and creamy at the same time. Wonderful. |
| Trang | <ruby>続<rt>つづ</rt></ruby>きまして<ruby>椀物<rt>わんもの</rt></ruby>は「<ruby>松茸<rt>まつたけ</rt></ruby>の<ruby>土瓶蒸<rt>どびんむ</rt></ruby>し」でございます。<ruby>土瓶<rt>どびん</rt></ruby>のお<ruby>出汁<rt>だし</rt></ruby>をお<ruby>猪口<rt>ちょこ</rt></ruby>に<ruby>注<rt>そそ</rt></ruby>いで、すだちを<ruby>絞<rt>しぼ</rt></ruby>ってお<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がりください。<br>*(Tiếp theo là 椀物 "Nấm tùng dobinmushi". Rót nước từ ấm vào chén nhỏ, vắt sudachi rồi thưởng thức ạ.)* |
| Trang | (EN) Next, "matsutake dobin-mushi" — pine mushroom in a teapot. Pour the broth into the small cup, squeeze the sudachi citrus, then sip. |
| Mrs. Lim | (EN, hít hà) The aroma is unbelievable! |
| Trang | <ruby>松茸<rt>まつたけ</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>年<rt>ねん</rt></ruby>でこの<ruby>時期<rt>じき</rt></ruby>しか<ruby>味<rt>あじ</rt></ruby>わえません。<ruby>香<rt>かお</rt></ruby>りをお<ruby>楽<rt>たの</rt></ruby>しみくださいませ。<br>*(Nấm tùng cả năm chỉ ăn được mùa này. Xin mời quý vị thưởng thức hương ạ.)* |
| Trang | (EN) Matsutake is only available this season. Please enjoy the aroma. |
| Raj | (sang bàn halal, đặt bát có dải xanh) ハッサン<ruby>様<rt>さま</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>松茸<rt>まつたけ</rt></ruby>のお<ruby>出汁<rt>だし</rt></ruby>でございますが、<ruby>酒<rt>さけ</rt></ruby>は<ruby>一切<rt>いっさい</rt></ruby><ruby>使用<rt>しよう</rt></ruby>しておりません。<br>*(Ngài Hassan, cũng là nước nấm tùng, hoàn toàn không dùng rượu ạ.)* |
| Hassan | (EN với Raj) Thank you. The presentation is identical — beautiful. |

---

## Tình huống 10 — 食事処「<ruby>萩<rt>はぎ</rt></ruby>」· 19:45, xử lý yêu cầu đặc biệt giữa bữa

*Bà Aisha gọi Trang lại. Yêu cầu phát sinh.*

| Vai | Lời thoại |
|---|---|
| Aisha | (EN) Trang-san, sorry to bother you. My daughter has a peanut allergy — could you check if the next courses contain any peanuts? |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました、すぐに<ruby>料理長<rt>りょうりちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>いたします。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Em xin rõ, em sẽ xác nhận với bếp trưởng ngay. Xin chờ một lát ạ.)* |
| Trang | (EN) Of course. I will check with the chef immediately. Please wait one moment. |
| Trang | (đến bếp, hỏi bếp trưởng) <ruby>料理長<rt>りょうりちょう</rt></ruby>、ハッサン<ruby>様<rt>さま</rt></ruby>のお<ruby>嬢<rt>じょう</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>落花生<rt>らっかせい</rt></ruby>アレルギーだそうです。<ruby>残<rt>のこ</rt></ruby>りのお<ruby>料理<rt>りょうり</rt></ruby>にピーナッツは<ruby>入<rt>はい</rt></ruby>っておりますか。<br>*(Bếp trưởng, con gái nhà Hassan dị ứng đậu phộng. Các món còn lại có đậu phộng không ạ?)* |
| Bếp trưởng | <ruby>八寸<rt>はっすん</rt></ruby>の<ruby>飾<rt>かざ</rt></ruby>りに<ruby>砕<rt>くだ</rt></ruby>いた<ruby>落花生<rt>らっかせい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていました。<ruby>急<rt>いそ</rt></ruby>ぎ<ruby>松<rt>まつ</rt></ruby>の<ruby>実<rt>み</rt></ruby>に<ruby>差<rt>さ</rt></ruby>し<ruby>替<rt>か</rt></ruby>えます。<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ください。<br>*(Trong 八寸 có rắc đậu phộng giã. Tôi đổi gấp sang hạt thông. Cho 5 phút.)* |
| Trang | ありがとうございます。お<ruby>客様<rt>きゃくさま</rt></ruby>には<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>をいただく<ruby>旨<rt>むね</rt></ruby>、お<ruby>伝<rt>つた</rt></ruby>えします。<br>*(Cảm ơn ạ. Em sẽ báo khách xin thêm chút thời gian.)* |
| Trang | (quay lại bàn) アイシャ<ruby>様<rt>さま</rt></ruby>、お<ruby>知<rt>し</rt></ruby>らせいただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>八寸<rt>はっすん</rt></ruby>のお<ruby>料理<rt>りょうり</rt></ruby>に<ruby>落花生<rt>らっかせい</rt></ruby>が<ruby>使<rt>つか</rt></ruby>われておりましたので、<ruby>急<rt>いそ</rt></ruby>ぎお<ruby>取<rt>と</rt></ruby>り<ruby>替<rt>か</rt></ruby>えさせていただきます。<br>*(Bà Aisha, cảm ơn bà đã báo. 八寸 có đậu phộng, chúng tôi xin đổi gấp.)* |
| Trang | (EN) Thank you for telling us. The 八寸 course did contain peanuts. The chef is replacing it now — please allow 5 minutes. |
| Aisha | (EN) Thank you so much for taking it seriously. |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>のご<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>最優先<rt>さいゆうせん</rt></ruby>でございます。<br>*(An toàn của quý khách là ưu tiên hàng đầu.)* |
| Trang | (EN) Your safety is our highest priority. |

---

## Tình huống 11 — Hành lang · 21:00, Min-ji báo cáo sự cố nhỏ

| Vai | Lời thoại |
|---|---|
| Min-ji | (chạy đến, nhỏ giọng) チャン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>追加<rt>ついか</rt></ruby>のビールをご<ruby>希望<rt>きぼう</rt></ruby>ですが、<ruby>英語<rt>えいご</rt></ruby>で<ruby>銘柄<rt>めいがら</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かれてわかりませんでした。<br>*(Trang sempai, khách Phòng Tùng muốn thêm bia, nhưng họ hỏi nhãn tiếng Anh em không hiểu.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<ruby>知<rt>し</rt></ruby>らない<ruby>時<rt>とき</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby>に「<ruby>確認<rt>かくにん</rt></ruby>します」と<ruby>言<rt>い</rt></ruby>えばいいですよ。<br>*(Không sao, đi cùng chị. Lúc không biết cứ thật thà nói "em xin kiểm tra" là được.)* |
| Min-ji | <ruby>恥<rt>は</rt></ruby>ずかしいですが、わからないままお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>笑<rt>わら</rt></ruby>って「Yes」と<ruby>言<rt>い</rt></ruby>うのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないと<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Ngại quá, nhưng chị từng dạy em — không biết mà cười nói "Yes" là nguy hiểm nhất.)* |
| Trang | そうそう、わからないことを<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>すのは<ruby>恥<rt>はじ</rt></ruby>じゃない、<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐプロの<ruby>技<rt>わざ</rt></ruby>です。<br>*(Đúng rồi, hỏi lại không phải là xấu hổ, mà là kỹ năng chuyên nghiệp để tránh sai.)* |
| Trang | (vào phòng, EN) Mr. Lim, my colleague said you would like an additional beer. May I ask which brand? We have Asahi Super Dry, Kirin Ichiban, and Sapporo Black Label. |
| Mr. Lim | (EN) Asahi Super Dry, two please. |
| Trang | アサヒ<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>、<ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Asahi 2 chai, em xin nhận. Xin chờ một lát ạ.)* |
| Min-ji | (ra khỏi phòng) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>銘柄<rt>めいがら</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つ<ruby>並<rt>なら</rt></ruby>べて<ruby>選<rt>えら</rt></ruby>んでもらうやり<ruby>方<rt>かた</rt></ruby>、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Sempai, cách liệt kê 3 lựa chọn cho khách chọn, em học được rồi.)* |

---

## Tình huống 12 — Phòng halal · 21:30, kết bữa và 抹茶 lần 2

| Vai | Lời thoại |
|---|---|
| Hassan | (EN) Trang-san, that was the most thoughtful meal I have eaten outside Singapore. |
| Trang | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。<ruby>料理長<rt>りょうりちょう</rt></ruby>とラジさんにも<ruby>必<rt>かなら</rt></ruby>ず<ruby>伝<rt>つた</rt></ruby>えさせていただきます。<br>*(Lời khen quá lớn ạ. Em sẽ nhất định truyền lại cho bếp trưởng và Raj.)* |
| Trang | (EN) That means everything. I will tell the chef and Raj. |
| Aisha | (EN) May we visit the kitchen tomorrow to thank them in person? |
| Trang | もちろんでございます。<ruby>明朝<rt>みょうあさ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>厨房<rt>ちゅうぼう</rt></ruby>のご<ruby>見学<rt>けんがく</rt></ruby>をお<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けいたします。<br>*(Tất nhiên ạ. Sáng mai 10 giờ, em sẽ xếp lịch tham quan bếp.)* |
| Trang | (EN) Of course. Tomorrow 10 AM, I will arrange a kitchen visit. |
| Hassan | (chắp tay) Shukran. Thank you very much. |
| Trang | (cúi đầu) こちらこそ、ご<ruby>滞在<rt>たいざい</rt></ruby>くださりありがとうございます。<ruby>食後<rt>しょくご</rt></ruby>のお<ruby>抹茶<rt>まっちゃ</rt></ruby>はこちらでよろしいでしょうか、それともお<ruby>部屋<rt>へや</rt></ruby>でお<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がりになりますか。<br>*(Cảm ơn quý vị đã lưu trú. Trà 抹茶 sau bữa dùng ở đây hay tại phòng ạ?)* |
| Aisha | (EN) In our room, please. We would like to rest. |

---

## Tình huống 13 — 玄関 · sáng hôm sau 11:00, tiễn đoàn và mẫu お見送り trang trọng

*Đoàn check out. Trang, Raj, Min-ji, Okami xếp hàng cúi tiễn.*

| Vai | Lời thoại |
|---|---|
| Okami | (cúi đầu sâu) ご<ruby>滞在<rt>たいざい</rt></ruby>、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Cảm ơn quý vị đã lưu trú.)* |
| Trang | (EN) Thank you for choosing Tsukiyomi-an. We hope to see you again. |
| Mr. Lim | (EN, đưa bao thư cho Trang) A small token for your wonderful team. Please share. |
| Trang | (cúi đầu, lùi nửa bước) <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、お<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちだけで<ruby>十分<rt>じゅうぶん</rt></ruby>でございます。<br>*(Quá khách khí ạ. Tấm lòng của quý vị là đủ rồi.)* |
| Mr. Lim | (EN) Please, I insist. |
| Trang | (nhìn Okami xin chỉ thị) |
| Okami | (gật nhẹ) ありがたくお<ruby>受<rt>う</rt></ruby>けさせていただきます。<br>*(Xin phép nhận với lòng biết ơn ạ.)* |
| Trang | (cầm hai tay, cúi sâu) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>のおもてなしの<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Em xin nhận. Đây là động lực cho phục vụ ngày mai.)* |
| Hassan | (EN với Raj) Raj-san, your care was deeply appreciated. |
| Raj | (cúi đầu) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。<ruby>道中<rt>どうちゅう</rt></ruby>お<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Lời khen quá lớn ạ. Quý khách đi đường cẩn thận ạ.)* |
| Trang | (sang EN) Safe travels, everyone. Please come back next autumn for the maple leaves. |
| Mrs. Lim | (EN, vẫy tay) We will! |
| Cả đội | (cúi đầu, giữ tư thế đến khi xe khuất khỏi cổng) ありがとうございました！ |

---

## Tình huống 14 — Phòng Okami · 12:00, báo cáo sau khi tiễn khách

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、シンガポール<ruby>団体様<rt>だんたいさま</rt></ruby>のお<ruby>見送<rt>みおく</rt></ruby>りが<ruby>完了<rt>かんりょう</rt></ruby>いたしました。ご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Okami, em đã tiễn xong đoàn Singapore. Em xin báo cáo.)* |
| Okami | はい、お<ruby>疲<rt>つか</rt></ruby>れさま。どうぞ。<br>*(Vâng, vất vả rồi. Em nói đi.)* |
| Trang | <ruby>主<rt>おも</rt></ruby>なお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>反応<rt>はんのう</rt></ruby>は<ruby>全体的<rt>ぜんたいてき</rt></ruby>に<ruby>好評<rt>こうひょう</rt></ruby>でございました。リム<ruby>様<rt>さま</rt></ruby>から<ruby>心付<rt>こころづ</rt></ruby>けを<ruby>頂戴<rt>ちょうだい</rt></ruby>しております。<br>*(Phản hồi tổng thể rất tốt. Đã nhận tiền thưởng từ ngài Lim.)* |
| Okami | あら、それは<ruby>嬉<rt>うれ</rt></ruby>しいですね。<br>*(Ồ, vui quá.)* |
| Trang | <ruby>反省点<rt>はんせいてん</rt></ruby>が<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby>ございます。<ruby>八寸<rt>はっすん</rt></ruby>に<ruby>落花生<rt>らっかせい</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれていたことを<ruby>事前<rt>じぜん</rt></ruby>に<ruby>把握<rt>はあく</rt></ruby>できておらず、お<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>嬢<rt>じょう</rt></ruby><ruby>様<rt>さま</rt></ruby>のアレルギー<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>当日<rt>とうじつ</rt></ruby>に<ruby>頂戴<rt>ちょうだい</rt></ruby>いたしました。<br>*(Có 1 điểm rút kinh nghiệm. Em không nắm được trước rằng 八寸 có đậu phộng, và thông tin dị ứng của con gái khách lấy được ngay hôm đó.)* |
| Trang | <ruby>今後<rt>こんご</rt></ruby>は<ruby>予約<rt>よやく</rt></ruby><ruby>時<rt>じ</rt></ruby>のアレルギー<ruby>確認項目<rt>かくにんこうもく</rt></ruby>に「<ruby>同行<rt>どうこう</rt></ruby>のお<ruby>子様<rt>こさま</rt></ruby><ruby>含<rt>ふく</rt></ruby>む」と<ruby>追加<rt>ついか</rt></ruby>することを<ruby>提案<rt>ていあん</rt></ruby>させていただきます。<br>*(Sau này em đề xuất thêm vào form đặt phòng mục dị ứng "bao gồm cả trẻ em đi cùng".)* |
| Okami | (gật đầu) いい<ruby>気<rt>き</rt></ruby>づきです。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>で<ruby>提案<rt>ていあん</rt></ruby>してください。<ruby>料理長<rt>りょうりちょう</rt></ruby>とフロントにも<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Quan sát tốt. Tuần sau họp em đề xuất đi. Sẽ chia sẻ cho bếp trưởng và lễ tân.)* |
| Trang | はい、<ruby>議題<rt>ぎだい</rt></ruby><ruby>資料<rt>しりょう</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>しておきます。<br>*(Vâng, em chuẩn bị tài liệu nghị sự.)* |
| Okami | チャンさん、<ruby>本日<rt>ほんじつ</rt></ruby>のあなたの<ruby>立<rt>た</rt></ruby>ち<ruby>回<rt>まわ</rt></ruby>りは、もう<ruby>仲居<rt>なかい</rt></ruby><ruby>頭<rt>がしら</rt></ruby>の<ruby>素質<rt>そしつ</rt></ruby>そのものでした。<br>*(Trang-san, cách em xử lý hôm nay đã là tố chất của trưởng nakai rồi đấy.)* |
| Trang | (cúi đầu) もったいないお<ruby>言葉<rt>ことば</rt></ruby>でございます。<br>*(Lời quá khen ạ.)* |

---

## Tình huống 15 — Phòng nhân viên · 13:00, chia tiền thưởng và lời cảm ơn kohai

| Vai | Lời thoại |
|---|---|
| Trang | ラジさん、ミンジさん、リム<ruby>様<rt>さま</rt></ruby>から<ruby>頂<rt>いただ</rt></ruby>いた<ruby>心付<rt>こころづ</rt></ruby>けです。<ruby>3<rt>さん</rt></ruby><ruby>等分<rt>とうぶん</rt></ruby>します。<br>*(Raj, Min-ji, tiền thưởng từ ngài Lim. Mình chia 3 phần đều.)* |
| Raj | え、<ruby>先輩<rt>せんぱい</rt></ruby>がほとんど<ruby>働<rt>はたら</rt></ruby>いていたのに、<ruby>同<rt>おな</rt></ruby>じ<ruby>金額<rt>きんがく</rt></ruby>でいいんですか。<br>*(Ơ, sempai làm phần lớn mà, chia đều có được không?)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>は「チーム<ruby>全員<rt>ぜんいん</rt></ruby>に」とおっしゃいました。チームに<ruby>差<rt>さ</rt></ruby>はつけません。<br>*(Khách bảo "cho cả nhóm". Đã là nhóm thì không phân biệt.)* |
| Min-ji | (rưng rưng) <ruby>先輩<rt>せんぱい</rt></ruby>、わたしまだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>なのに、こんなに<ruby>頂<rt>いただ</rt></ruby>いていいんですか。<br>*(Sempai, em còn đang học mà, nhận nhiều thế này có được không?)* |
| Trang | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>のおかげで<ruby>事故<rt>じこ</rt></ruby>もなく<ruby>終<rt>お</rt></ruby>わりました。ラジさんのハラル<ruby>知識<rt>ちしき</rt></ruby>、ミンジさんが<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>してくれたこと、<ruby>両方<rt>りょうほう</rt></ruby>がなければ<ruby>今日<rt>きょう</rt></ruby>は<ruby>成功<rt>せいこう</rt></ruby>しませんでした。<br>*(Nhờ hai em mà không xảy ra sự cố. Kiến thức halal của Raj, và việc Min-ji hỏi lại thật lòng — thiếu một trong hai hôm nay không thành công.)* |
| Raj | <ruby>先輩<rt>せんぱい</rt></ruby>がリーダーだから、<ruby>安心<rt>あんしん</rt></ruby>して<ruby>働<rt>はたら</rt></ruby>けます。<br>*(Vì sempai làm trưởng nên bọn em làm việc yên tâm.)* |
| Trang | わたしも<ruby>2<rt>ふた</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はミンジさんと<ruby>同<rt>おな</rt></ruby>じ<ruby>立場<rt>たちば</rt></ruby>でした。<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>守<rt>まも</rt></ruby>っていただいた<ruby>恩<rt>おん</rt></ruby>を、<ruby>今<rt>いま</rt></ruby><ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>にお<ruby>返<rt>かえ</rt></ruby>ししているだけです。<br>*(2 năm trước chị cũng ở vị trí như Min-ji. Ân Okami đã che chở, giờ chị đang trả lại cho hai em.)* |

---

## Tình huống 16 — Ký túc · 22:00, gọi điện về Huế kể cho mẹ và em gái (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — Trang gọi video về Huế.

| Vai | Lời thoại |
|---|---|
| Trang | (VN) Mẹ, em Hà ơi, hôm nay chị có chuyện hay kể. |
| Em Hà | (VN) Gì thế chị? Mặt chị tươi lắm! |
| Trang | (VN) Hôm nay Okami giao chị làm 主担当 — chính phụ trách — đoàn 12 khách VIP Singapore. Có 2 cô bác Hồi giáo cần ăn halal nữa. |
| Mẹ | (VN) Tiếng Anh con dùng được không? |
| Trang | (VN) Mẹ yên tâm. Chị chuyển ngữ Nhật–Anh suốt cả ngày. Cái hồi mẹ bắt chị đi học tiếng Anh ở Huế ngày xưa giờ ăn tiền đấy mẹ ạ. |
| Em Hà | (VN) Chị có gặp sự cố không? |
| Trang | (VN) Có một quả. Giữa bữa kaiseki, bà khách bảo "con gái tôi dị ứng đậu phộng". Mà cái món 八寸 sắp ra có đậu phộng rắc trên. Chị chạy xuống bếp xin bếp trưởng đổi gấp sang hạt thông. Bếp trưởng bảo "5 phút". Mọi việc êm ru. |
| Mẹ | (VN) Trời, may quá. Lỡ ăn vào thì sao? |
| Trang | (VN) Mẹ ơi, ở ryokan Nhật nguyên tắc đầu tiên là "An toàn của khách là trên hết". Em Raj người Nepal cũng cẩn thận lắm — em ấy có bạn Hồi giáo nên hiểu, em ấy tách bát đĩa riêng cả miếng rửa cũng riêng. |
| Em Hà | (VN) Chị nói tiếng Nhật giỏi đến đâu rồi? |
| Trang | (VN) Hôm nay Okami bảo "cách Trang xử lý hôm nay đã là tố chất của 仲居頭 — trưởng nakai — rồi". Chị nghe xong run cả người. |
| Mẹ | (VN, khóc) Con gái mẹ ngày xưa đi phục vụ quán bún bò Huế, giờ đứng trưởng nhóm ở ryokan Kyoto. |
| Trang | (VN) Mẹ ơi, ông khách Lim còn cho tiền thưởng nguyên cả phong bì. Chị chia đều ba người, em Raj với em Min-ji mỗi đứa một phần. Hai đứa nó còn bảo "sempai làm nhiều hơn mà". Chị bảo "khách cho cả nhóm thì không phân biệt". |
| Em Hà | (VN) Chị có sang năm về Tết không? |
| Trang | (VN) Tháng 3 chị xong hợp đồng TTS, có khi chị về 2 tuần. Sau đó chị bay lại Nhật làm SSW1. Okami đã hỏi chị có ở lại không rồi. |
| Mẹ | (VN, ngập ngừng) Con tính sao thì tính, mẹ chỉ mong con khoẻ. Nhưng mẹ thấy con ở bên ấy có người che chở, có em út tin tưởng — thì cứ ở. |
| Trang | (VN) Vâng mẹ. Chị nghĩ kỹ rồi báo mẹ. |

---

## Đọng lại chương 9

Chương này dạy nguyên bộ kỹ năng dẫn đoàn inbound đa ngôn ngữ tại ryokan truyền thống. Người học thuộc được **mẫu câu đón khách tại 玄関** (お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください), **mẫu chuyển ngữ JP↔EN** vừa giữ keigo vừa rõ ý cho khách nước ngoài, **mẫu xác nhận ăn kiêng tôn giáo** (お<ruby>食事制限<rt>しょくじせいげん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>・<ruby>豚<rt>ぶた</rt></ruby>・<ruby>酒類<rt>しゅるい</rt></ruby>・みりんを<ruby>除外<rt>じょがい</rt></ruby>), **mẫu xử lý yêu cầu phát sinh giữa bữa** (<ruby>承知<rt>しょうち</rt></ruby>いたしました、すぐに<ruby>料理長<rt>りょうりちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>いたします), **mẫu nhận tiền thưởng** (<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>), **mẫu báo cáo sau tiễn khách** (お<ruby>見送<rt>みおく</rt></ruby>り<ruby>後<rt>ご</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby> kèm phần <ruby>反省点<rt>はんせいてん</rt></ruby>) và quan trọng nhất — **mẫu điều phối kohai đa quốc tịch** (Nepal Raj phụ trách halal vì hiểu văn hoá, Hàn Min-ji hỗ trợ tiếng Anh). Trang đã chứng minh được tố chất 仲居頭 thông qua việc giữ vững khung "An toàn của khách là tối ưu tiên" + "khách cho cả nhóm thì không phân biệt".

> Từ vựng & mẫu câu chương này: <ruby>主担当<rt>しゅたんとう</rt></ruby>・<ruby>団体様<rt>だんたいさま</rt></ruby>・ハラル<ruby>対応<rt>たいおう</rt></ruby>・<ruby>食事制限<rt>しょくじせいげん</rt></ruby>・<ruby>除外<rt>じょがい</rt></ruby>・<ruby>配膳<rt>はいぜん</rt></ruby>・<ruby>専属<rt>せんぞく</rt></ruby>・<ruby>目印<rt>めじるし</rt></ruby>・<ruby>通訳<rt>つうやく</rt></ruby>を<ruby>通<rt>つう</rt></ruby>じて・お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけください・お<ruby>履物<rt>はきもの</rt></ruby>・<ruby>下駄箱<rt>げたばこ</rt></ruby>・<ruby>松茸<rt>まつたけ</rt></ruby>の<ruby>土瓶蒸<rt>どびんむ</rt></ruby>し・<ruby>柿白和<rt>かきしらあ</rt></ruby>え・<ruby>八寸<rt>はっすん</rt></ruby>・<ruby>落花生<rt>らっかせい</rt></ruby>アレルギー・<ruby>松<rt>まつ</rt></ruby>の<ruby>実<rt>み</rt></ruby>・<ruby>心付<rt>こころづ</rt></ruby>け・<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>・<ruby>反省点<rt>はんせいてん</rt></ruby>・<ruby>気<rt>き</rt></ruby>づき・<ruby>仲居頭<rt>なかいがしら</rt></ruby>・<ruby>素質<rt>そしつ</rt></ruby>・お<ruby>客様<rt>きゃくさま</rt></ruby>のご<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>最優先<rt>さいゆうせん</rt></ruby>・<ruby>役割分担<rt>やくわりぶんたん</rt></ruby>

## Bí quyết chương

- **3 lớp xác nhận ăn kiêng**: trước (form đặt phòng) → trong (xác nhận trực tiếp khi gặp) → giữa (theo dõi từng món). Thiếu một lớp là sự cố.
- **Dải ruy băng xanh lá = signal ngành**: ryokan truyền thống dùng màu/ruy băng để phân biệt khay halal/kosher/vegan — học viên SSW khách sạn cần thuộc khái niệm này.
- **JP→EN không dịch máy**: keigo "<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります" không dịch thành "I''m afraid" — dịch thành "Thank you for your kind words". Mỗi câu keigo có "spirit equivalent" trong EN chứ không phải word-for-word.
- **Quy tắc 仲居頭**: chính phụ trách không tự bưng — chính phụ trách "<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>る" (quan sát toàn cảnh) để bắt sự cố trước khi xảy ra.
- **Chia tiền 心付け**: nguyên tắc Nhật — khách cho cả nhóm thì chia đều bất kể vai trò, vì đây là tiền cho "<ruby>励<rt>はげ</rt></ruby>み" (động lực) chứ không phải lương theo công.
- **Mẫu nhận quà từ khách**: trước tiên lùi nửa bước "お<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちだけで<ruby>十分<rt>じゅうぶん</rt></ruby>" → nếu khách insist → xin chỉ thị cấp trên → mới <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 主担当 | しゅたんとう | CHỦ ĐẢM ĐƯƠNG | chính phụ trách |
| 指名 | しめい | CHỈ DANH | chỉ định |
| 承 | うけたまわ | THỪA | xin nhận |
| 団体様 | だんたいさま | ĐOÀN THỂ DẠNG | đoàn khách |
| 対応 | たいおう | ĐỐI ỨNG | xử lý, đáp ứng |
| 除外 | じょがい | TRỪ NGOẠI | loại trừ |
| 配膳 | はいぜん | PHỐI THIỆN | bưng bê đồ ăn |
| 専属 | せんぞく | CHUYÊN THUỘC | chuyên biệt |
| 目印 | めじるし | MỤC ẤN | dấu hiệu nhận biết |
| 通訳 | つうやく | THÔNG DỊCH | phiên dịch |
| 連携 | れんけい | LIÊN HUỀ | phối hợp |
| 全力 | ぜんりょく | TOÀN LỰC | dốc hết sức |
| 役割 | やくわり | DỊCH CÁT | phân vai |
| 玄関 | げんかん | HUYỀN QUAN | sảnh ngoài, lối vào |
| 履物 | はきもの | LÝ VẬT | giày dép |
| 下駄箱 | げたばこ | HẠ ĐÀ TƯƠNG | tủ giày |
| 紅葉 | こうよう | HỒNG DIỆP | lá đỏ mùa thu |
| 散策 | さんさく | TÁN SÁCH | dạo bộ |
| 案内 | あんない | ÁN NỘI | dẫn đường |
| 建物 | たてもの | KIẾN VẬT | toà nhà |
| 歴史 | れきし | LỊCH SỬ | lịch sử |
| 柱 | はしら | TRỤ | cột |
| 梁 | はり | LƯƠNG | xà |
| 障子 | しょうじ | CHƯỚNG TỬ | cửa giấy |
| 抹茶 | まっちゃ | MẠT TRÀ | trà mạt |
| 主菓子 | おもがし | CHỦ QUẢ TỬ | bánh chính |
| 錦秋 | きんしゅう | CẨM THU | cẩm thu (lá thu rực rỡ) |
| 身頃 | みごろ | THÂN ĐỈNH | thân áo |
| 右前 | みぎまえ | HỮU TIỀN | vạt phải trước |
| 帯 | おび | ĐAI | đai obi |
| 懐石料理 | かいせきりょうり | HOÀI THẠCH LIỆU LÝ | cơm kaiseki |
| 先付 | さきづけ | TIÊN PHÓ | món khai vị |
| 椀物 | わんもの | UYỂN VẬT | món súp |
| 松茸 | まつたけ | TÙNG NHƯỢC | nấm tùng |
| 土瓶蒸 | どびんむし | THỔ BÌNH CHƯNG | hấp ấm đất |
| 出汁 | だし | XUẤT TRẤP | nước dùng dashi |
| 昆布 | こんぶ | CÔN BỐ | tảo bẹ |
| 鰹節 | かつおぶし | KIÊN TIẾT | cá ngừ bào khô |
| 八寸 | はっすん | BÁT THỐN | mâm bát thốn |
| 落花生 | らっかせい | LẠC HOA SINH | đậu phộng |
| 厨房 | ちゅうぼう | TRÙ PHÒNG | bếp |
| 差替 | さしか | SAI THẾ | đổi sang |
| 銘柄 | めいがら | MINH BÍNH | nhãn hiệu |
| 聞返 | きかえ | VĂN PHẢN | hỏi lại |
| 見送 | みおく | KIẾN TỐNG | tiễn |
| 心付 | こころづけ | TÂM PHÓ | tiền thưởng (cho người phục vụ) |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | xin nhận |
| 励 | はげ | LỆ | động lực |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 反省点 | はんせいてん | PHẢN TỈNH ĐIỂM | điểm rút kinh nghiệm |
| 把握 | はあく | BÁ ÁC | nắm rõ |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 議題 | ぎだい | NGHỊ ĐỀ | nghị sự |
| 仲居頭 | なかいがしら | TRỌNG CƯ ĐẦU | trưởng nakai |
| 素質 | そしつ | TỐ CHẤT | tố chất |
| 食事制限 | しょくじせいげん | THỰC SỰ CHẾ HẠN | hạn chế ăn uống |
| 役割分担 | やくわりぶんたん | DỊCH CÁT PHÂN ĐẢM | phân chia vai trò |
| 最優先 | さいゆうせん | TỐI ƯU TIÊN | ưu tiên cao nhất |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000010, 800000048, NULL, 'markdown_book', 'T10. Okami truyền bí quyết おもてなし 30 năm', '# Sách thực tập sinh khách sạn năm 3 · T10. Okami truyền bí quyết おもてなし 30 năm

> **Mục tiêu nhân vật:** Trang (25 tuổi, Huế) học trực tiếp triết lý おもてなし từ Okami trong 1 tuần đặc huấn. Học các mẫu hội thoại tiếng Nhật của 仲居 hấp thụ truyền nghề: nghe Okami giảng lịch sử ryokan (代々続く家業), thực hành お辞儀 ba cấp với góc nghiêng chính xác (会釈・敬礼・最敬礼), học cách 先読み tâm ý khách (お客様の一歩先), nội quy 表に出ない (không lộ ra mặt) khi gặp sự cố, nguyên tắc 始末 (cẩn thận đến tận khi kết thúc), và mẫu câu nhận lời truyền nghề (謹んで承ります).

---

## Bối cảnh

Tháng 12 năm 2027, ryokan「<ruby>月詠庵<rt>つきよみあん</rt></ruby>」Higashiyama Kyoto. Sau thành công đoàn Singapore tháng trước, Okami Sato (62 tuổi, đời thứ 4 của ryokan 130 năm) chính thức mời Trang vào chương trình「<ruby>後継<rt>こうけい</rt></ruby><ruby>育成<rt>いくせい</rt></ruby>」(đào tạo người kế thừa nội bộ) — 1 tuần đặc huấn 1-kèm-1 mỗi sáng từ 5h đến 7h, trước khi ryokan mở cửa. Trang chưa quyết SSW1 chính thức nhưng Okami muốn truyền nguyên 30 năm kinh nghiệm おもてなし của mình. Chương tập trung những bài học ít người nước ngoài được nghe trực tiếp: lịch sử dòng họ, lễ nghi, "đọc trước" khách, kỷ luật im lặng trong sự cố, và 始末 — cẩn thận tới tận khi kết thúc.

---

## Tình huống 1 — Phòng trà riêng của Okami · 5:00, lời mời vào chương trình truyền nghề

*Phòng trà nhỏ 4 chiếu rưỡi sau bếp chính, chỉ Okami và Trang. Ngoài còn tối, gió đông lạnh.*

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>くから<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>してしまって、ごめんなさい。<br>*(Trang-san, gọi em ra sớm thế này, cho cô xin lỗi.)* |
| Trang | (cúi đầu, ngồi seiza) いいえ、<ruby>女将<rt>おかみ</rt></ruby>さんからのお<ruby>呼<rt>よ</rt></ruby>びでしたら、いつでも<ruby>参<rt>まい</rt></ruby>ります。<br>*(Không, Okami gọi thì em sẵn sàng đến bất cứ lúc nào.)* |
| Okami | (rót trà) これから<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>まで、わたしのおもてなしの<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>をあなたに<ruby>託<rt>たく</rt></ruby>させてください。<br>*(Từ giờ 1 tuần, mỗi sáng 5h đến 7h, cho cô gửi gắm 30 năm おもてなし của cô cho em.)* |
| Trang | (sửng sốt, cúi sâu) <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。わたくしのような<ruby>外国人<rt>がいこくじん</rt></ruby>が...<br>*(Okami, lời quá lớn ạ. Một người nước ngoài như em...)* |
| Okami | チャンさん、おもてなしに<ruby>国籍<rt>こくせき</rt></ruby>はありません。<ruby>心<rt>こころ</rt></ruby>があるかどうかだけです。<br>*(Trang-san, おもてなし không có quốc tịch. Chỉ có "có tâm hay không có tâm" thôi.)* |
| Okami | あなたは<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby>、<ruby>畳<rt>たたみ</rt></ruby>の<ruby>目<rt>め</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って<ruby>歩<rt>ある</rt></ruby>く<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けてきました。それは<ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>仲居<rt>なかい</rt></ruby>でもなかなかできません。<br>*(3 năm em luyện đi theo thớ tatami mỗi ngày. Nakai người Nhật cũng khó làm được.)* |
| Trang | (mắt đỏ) ありがたく<ruby>承<rt>うけたまわ</rt></ruby>ります。<ruby>謹<rt>つつし</rt></ruby>んで<ruby>学<rt>まな</rt></ruby>ばせていただきます。<br>*(Em xin lãnh hội với lòng biết ơn. Em xin trân trọng học hỏi.)* |
| Okami | (gật, rót thêm trà) では<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>第一日目<rt>だいいちにちめ</rt></ruby>のテーマは「<ruby>家業<rt>かぎょう</rt></ruby>とは<ruby>何<rt>なに</rt></ruby>か」です。<br>*(Vậy bắt đầu nhé. Chủ đề ngày 1 là "Gia nghiệp là gì".)* |

---

## Tình huống 2 — Phòng trà · 5:15, Okami kể lịch sử ryokan 4 đời

| Vai | Lời thoại |
|---|---|
| Okami | この<ruby>月詠庵<rt>つきよみあん</rt></ruby>は<ruby>明治<rt>めいじ</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>、わたしの<ruby>曽祖父<rt>そうそふ</rt></ruby>が<ruby>建<rt>た</rt></ruby>てました。<br>*(Tsukiyomi-an này, năm Meiji 32, cụ tổ của cô đã dựng nên.)* |
| Okami | <ruby>曽祖父<rt>そうそふ</rt></ruby>は<ruby>京都<rt>きょうと</rt></ruby>の<ruby>呉服商<rt>ごふくしょう</rt></ruby>の<ruby>三男<rt>さんなん</rt></ruby>でした。<ruby>家業<rt>かぎょう</rt></ruby>を<ruby>継<rt>つ</rt></ruby>げず、<ruby>東山<rt>ひがしやま</rt></ruby>のこの<ruby>地<rt>ち</rt></ruby>で<ruby>旅館<rt>りょかん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めました。<br>*(Cụ là con thứ ba của nhà buôn vải kimono Kyoto. Không kế nghiệp, ông sang đất Higashiyama này mở ryokan.)* |
| Okami | <ruby>祖父<rt>そふ</rt></ruby>の<ruby>代<rt>だい</rt></ruby>に<ruby>戦争<rt>せんそう</rt></ruby>がありました。<ruby>京都<rt>きょうと</rt></ruby>は<ruby>空襲<rt>くうしゅう</rt></ruby>を<ruby>免<rt>まぬが</rt></ruby>れましたが、お<ruby>客様<rt>きゃくさま</rt></ruby>はゼロでした。<ruby>祖父<rt>そふ</rt></ruby>は<ruby>畳<rt>たたみ</rt></ruby>を<ruby>剥<rt>は</rt></ruby>がして<ruby>地下<rt>ちか</rt></ruby>に<ruby>食糧<rt>しょくりょう</rt></ruby>を<ruby>隠<rt>かく</rt></ruby>し、<ruby>近所<rt>きんじょ</rt></ruby>に<ruby>配<rt>くば</rt></ruby>って<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>耐<rt>た</rt></ruby>えました。<br>*(Đời ông nội có chiến tranh. Kyoto thoát không kích, nhưng khách bằng 0. Ông nội bóc chiếu tatami giấu lương thực dưới hầm, chia cho hàng xóm, chịu đựng suốt 10 năm.)* |
| Okami | <ruby>父<rt>ちち</rt></ruby>の<ruby>代<rt>だい</rt></ruby>に<ruby>東京<rt>とうきょう</rt></ruby>オリンピックがあって、ようやくお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>戻<rt>もど</rt></ruby>ってきました。<ruby>父<rt>ちち</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>玄関<rt>げんかん</rt></ruby>で<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げ<ruby>続<rt>つづ</rt></ruby>けて<ruby>40<rt>よんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>。<ruby>87<rt>はちじゅうなな</rt></ruby><ruby>歳<rt>さい</rt></ruby>で<ruby>亡<rt>な</rt></ruby>くなる<ruby>前日<rt>ぜんじつ</rt></ruby>まで<ruby>玄関<rt>げんかん</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<br>*(Đời bố có Tokyo Olympics, khách mới trở lại. Bố cô cúi đầu ở 玄関 mỗi ngày suốt 40 năm. Đến ngày trước khi mất ở tuổi 87, ông vẫn đứng ở 玄関.)* |
| Trang | (cúi đầu, lặng) ...<ruby>感動<rt>かんどう</rt></ruby>いたしました。<br>*(Em xúc động ạ.)* |
| Okami | <ruby>家業<rt>かぎょう</rt></ruby>とは「<ruby>4<rt>よん</rt></ruby><ruby>代<rt>だい</rt></ruby>かけて<ruby>築<rt>きず</rt></ruby>いた<ruby>信用<rt>しんよう</rt></ruby>を、<ruby>5<rt>ご</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>が<ruby>絶<rt>た</rt></ruby>やさないこと」。これだけです。<br>*(Gia nghiệp tức là — "Niềm tin được xây qua 4 đời, đời thứ 5 không được để tắt". Chỉ vậy thôi.)* |
| Okami | わたしには<ruby>娘<rt>むすめ</rt></ruby>がおりません。<ruby>息子<rt>むすこ</rt></ruby>は<ruby>東京<rt>とうきょう</rt></ruby>でIT<ruby>会社<rt>かいしゃ</rt></ruby>。だからわたしは<ruby>仲居頭<rt>なかいがしら</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てます。<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で<ruby>継<rt>つ</rt></ruby>ぐ<ruby>時代<rt>じだい</rt></ruby>です。<br>*(Cô không có con gái. Con trai ở Tokyo làm IT. Nên cô đào tạo trưởng nakai. Thời này kế nghiệp bằng chí hướng chứ không phải bằng huyết thống.)* |

---

## Tình huống 3 — Đại sảnh trống · ngày 2, 5:00, học お辞儀 ba cấp với thước đo

*Okami cầm thước góc 90 độ bằng giấy, đo từng độ cúi của Trang.*

| Vai | Lời thoại |
|---|---|
| Okami | お<ruby>辞儀<rt>じぎ</rt></ruby>には<ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>あります。<ruby>会釈<rt>えしゃく</rt></ruby>、<ruby>敬礼<rt>けいれい</rt></ruby>、<ruby>最敬礼<rt>さいけいれい</rt></ruby>。<br>*(お辞儀 có 3 cấp. Eshaku, Keirei, Saikeirei.)* |
| Okami | <ruby>会釈<rt>えしゃく</rt></ruby>は<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>。すれ<ruby>違<rt>ちが</rt></ruby>うとき、<ruby>視線<rt>しせん</rt></ruby>を<ruby>外<rt>はず</rt></ruby>すだけ。<ruby>頭<rt>あたま</rt></ruby>は<ruby>軽<rt>かる</rt></ruby>く。<br>*(Eshaku 15 độ. Khi đi ngang qua, chỉ lệch ánh mắt. Đầu nhẹ nhàng.)* |
| Trang | (thực hiện) このくらいでしょうか。<br>*(Mức này được không ạ?)* |
| Okami | (đo) <ruby>18<rt>じゅうはち</rt></ruby><ruby>度<rt>ど</rt></ruby>。<ruby>少<rt>すこ</rt></ruby>し<ruby>深<rt>ふか</rt></ruby>すぎます。<ruby>会釈<rt>えしゃく</rt></ruby>は<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まらず<ruby>歩<rt>ある</rt></ruby>きながら。<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まると<ruby>敬礼<rt>けいれい</rt></ruby>になってしまいます。<br>*(18 độ. Hơi sâu. Eshaku không dừng lại — vừa đi vừa cúi. Dừng lại thành Keirei.)* |
| Trang | (làm lại, vừa đi vừa cúi 15 độ) こうですか。<br>*(Vậy ạ?)* |
| Okami | はい、<ruby>正解<rt>せいかい</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>は<ruby>敬礼<rt>けいれい</rt></ruby>、<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>をお<ruby>迎<rt>むか</rt></ruby>えする<ruby>時<rt>とき</rt></ruby>、お<ruby>見送<rt>みおく</rt></ruby>りする<ruby>時<rt>とき</rt></ruby>。<ruby>必<rt>かなら</rt></ruby>ず<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まる。<br>*(Đúng. Tiếp Keirei, 30 độ. Khi đón khách, tiễn khách. Bắt buộc dừng lại.)* |
| Trang | (thực hiện) ...<br>*(...)* |
| Okami | (đo) <ruby>32<rt>さんじゅうに</rt></ruby><ruby>度<rt>ど</rt></ruby>。ぎりぎり<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>戻<rt>もど</rt></ruby>る<ruby>速度<rt>そくど</rt></ruby>。<ruby>下<rt>さ</rt></ruby>げるとき<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>止<rt>と</rt></ruby>めて<ruby>1<rt>いち</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>戻<rt>もど</rt></ruby>す<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>秒<rt>びょう</rt></ruby>。<br>*(32 độ, đạt vừa đủ. Quan trọng là tốc độ ngẩng lên. Cúi xuống 3 giây, dừng 1 giây, ngẩng lên 3 giây. Tổng 7 giây.)* |
| Trang | <ruby>速<rt>はや</rt></ruby>く<ruby>戻<rt>もど</rt></ruby>すと、<ruby>軽<rt>かる</rt></ruby>く<ruby>見<rt>み</rt></ruby>えてしまいますね。<br>*(Ngẩng lên nhanh quá thì trông hời hợt ạ.)* |
| Okami | その<ruby>通<rt>とお</rt></ruby>り。<ruby>最敬礼<rt>さいけいれい</rt></ruby>は<ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>。お<ruby>詫<rt>わ</rt></ruby>びする<ruby>時<rt>とき</rt></ruby>、<ruby>心付<rt>こころづ</rt></ruby>けを<ruby>頂<rt>いただ</rt></ruby>く<ruby>時<rt>とき</rt></ruby>、<ruby>結婚式<rt>けっこんしき</rt></ruby>などのお<ruby>客様<rt>きゃくさま</rt></ruby>。<ruby>5<rt>ご</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>静止<rt>せいし</rt></ruby>。<br>*(Đúng vậy. Saikeirei 45 độ. Khi xin lỗi, khi nhận tiền thưởng, với khách dự lễ cưới. Đứng yên 5 giây.)* |
| Trang | (thực hiện, đếm trong đầu) <ruby>1<rt>いち</rt></ruby>、<ruby>2<rt>に</rt></ruby>、<ruby>3<rt>さん</rt></ruby>、<ruby>4<rt>よん</rt></ruby>、<ruby>5<rt>ご</rt></ruby>... |
| Okami | <ruby>背中<rt>せなか</rt></ruby>が<ruby>丸<rt>まる</rt></ruby>くなっています。<ruby>腰<rt>こし</rt></ruby>から<ruby>折<rt>お</rt></ruby>る、<ruby>頭<rt>あたま</rt></ruby>と<ruby>背中<rt>せなか</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>の<ruby>線<rt>せん</rt></ruby>。<br>*(Lưng em đang cong. Gập từ hông, đầu và lưng phải thành một đường thẳng.)* |
| Trang | (làm lại) はい。 |
| Okami | <ruby>明日<rt>あした</rt></ruby>までに<ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>回<rt>かい</rt></ruby>ずつ。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えるまで。<br>*(Đến mai mỗi cấp 500 lần. Đến khi cơ thể nhớ.)* |

---

## Tình huống 4 — Hành lang · ngày 3, 5:30, học cách 先読み tâm ý khách

*Okami và Trang đi dọc hành lang trống. Okami chỉ vào từng vị trí, kể tình huống.*

| Vai | Lời thoại |
|---|---|
| Okami | おもてなしの<ruby>本質<rt>ほんしつ</rt></ruby>は「<ruby>先読<rt>さきよ</rt></ruby>み」。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>一歩<rt>いっぽ</rt></ruby><ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むことです。<br>*(Bản chất của おもてなし là "đọc trước". Đọc trước khách một bước.)* |
| Okami | <ruby>例<rt>たと</rt></ruby>えばこの<ruby>角<rt>かど</rt></ruby>。<ruby>夜<rt>よる</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>すぎ、お<ruby>酒<rt>さけ</rt></ruby>を<ruby>飲<rt>の</rt></ruby>まれたお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>通<rt>とお</rt></ruby>られます。チャンさんなら<ruby>何<rt>なに</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>しますか。<br>*(Ví dụ góc này. Sau 11h đêm, khách uống say đi qua. Trang sẽ chuẩn bị gì?)* |
| Trang | (suy nghĩ) ...お<ruby>水<rt>みず</rt></ruby>と、すべりにくいスリッパ、でしょうか。<br>*(Nước, và dép chống trơn ạ?)* |
| Okami | <ruby>正解<rt>せいかい</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>い。でももう<ruby>一<rt>ひと</rt></ruby>つ。<ruby>角<rt>かど</rt></ruby>の<ruby>照明<rt>しょうめい</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>明<rt>あか</rt></ruby>るくしておきます。<ruby>酔<rt>よ</rt></ruby>った<ruby>方<rt>かた</rt></ruby>は<ruby>段差<rt>だんさ</rt></ruby>を<ruby>見落<rt>みお</rt></ruby>とします。<br>*(Gần đúng. Còn một điều — chỉnh đèn ở góc sáng hơn chút. Người say nhìn không ra bậc thềm.)* |
| Trang | (gật, ghi sổ) <ruby>照明<rt>しょうめい</rt></ruby>の<ruby>明<rt>あか</rt></ruby>るさまで...<br>*(Đến cả độ sáng đèn...)* |
| Okami | (đi tiếp) この<ruby>窓<rt>まど</rt></ruby>の<ruby>外<rt>そと</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きな<ruby>柿<rt>かき</rt></ruby>の<ruby>木<rt>き</rt></ruby>。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>葉<rt>は</rt></ruby>っぱが<ruby>赤<rt>あか</rt></ruby>くなったとき、お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>ど</rt></ruby>まります。<br>*(Ngoài cửa sổ này có cây hồng to. Tháng 11 lá đỏ, khách chắc chắn dừng lại.)* |
| Trang | はい、<ruby>気<rt>き</rt></ruby>がついていました。<br>*(Vâng, em có để ý.)* |
| Okami | だからそのとき<ruby>仲居<rt>なかい</rt></ruby>は<ruby>後<rt>うし</rt></ruby>ろで<ruby>3<rt>さん</rt></ruby><ruby>歩<rt>ぽ</rt></ruby><ruby>下<rt>さ</rt></ruby>がる。お<ruby>客様<rt>きゃくさま</rt></ruby>のシャッターチャンスを<ruby>邪魔<rt>じゃま</rt></ruby>しないように。<br>*(Vậy lúc đó nakai lùi 3 bước phía sau. Để không cản khoảnh khắc chụp ảnh của khách.)* |
| Okami | <ruby>先読<rt>さきよ</rt></ruby>みとは「<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す<ruby>力<rt>ちから</rt></ruby>」だけではなく「<ruby>引<rt>ひ</rt></ruby>く<ruby>力<rt>ちから</rt></ruby>」もあります。<br>*(Đọc trước không chỉ là "đưa thêm", còn là "rút lui".)* |
| Trang | (cúi đầu) <ruby>勉強<rt>べんきょう</rt></ruby>になります。「<ruby>引<rt>ひ</rt></ruby>く<ruby>力<rt>ちから</rt></ruby>」、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em học được rồi. "Sức rút lui", lần đầu em nghe.)* |
| Okami | おもてなしは<ruby>1<rt>いち</rt></ruby><ruby>割<rt>わり</rt></ruby>が<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>し、<ruby>9<rt>きゅう</rt></ruby><ruby>割<rt>わり</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き。<ruby>表<rt>おもて</rt></ruby>に<ruby>出<rt>で</rt></ruby>ない<ruby>9<rt>きゅう</rt></ruby><ruby>割<rt>わり</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>のおもてなしです。<br>*(おもてなし 1 phần đưa, 9 phần rút lui. 9 phần không lộ ra mới là おもてなし thật.)* |

---

## Tình huống 5 — Phòng trà · ngày 4, 5:00, bài học 表に出ない khi gặp sự cố

| Vai | Lời thoại |
|---|---|
| Okami | <ruby>今日<rt>きょう</rt></ruby>のテーマは「<ruby>表<rt>おもて</rt></ruby>に<ruby>出<rt>で</rt></ruby>ない」。<ruby>事故<rt>じこ</rt></ruby>やトラブルが<ruby>起<rt>お</rt></ruby>きた<ruby>時<rt>とき</rt></ruby>、<ruby>仲居<rt>なかい</rt></ruby>はどう<ruby>振<rt>ふ</rt></ruby>る<ruby>舞<rt>ま</rt></ruby>うべきか。<br>*(Chủ đề hôm nay là "Không lộ ra mặt". Khi xảy ra sự cố, nakai cư xử thế nào?)* |
| Okami | <ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、わたしが<ruby>新人<rt>しんじん</rt></ruby>のとき、お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>熱<rt>あつ</rt></ruby>いお<ruby>椀<rt>わん</rt></ruby>をひっくり<ruby>返<rt>かえ</rt></ruby>したことがあります。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>が<ruby>濡<rt>ぬ</rt></ruby>れました。<br>*(30 năm trước, lúc cô còn mới, từng làm đổ bát canh nóng vào khách. Áo kimono khách ướt.)* |
| Trang | (rùng mình) ...<ruby>女将<rt>おかみ</rt></ruby>さんが？<br>*(Okami từng làm vậy?)* |
| Okami | (cười nhẹ) はい。わたしは<ruby>大声<rt>おおごえ</rt></ruby>で「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません！」と<ruby>叫<rt>さけ</rt></ruby>びました。<ruby>近<rt>ちか</rt></ruby>くの<ruby>他<rt>ほか</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>がみんな<ruby>振<rt>ふ</rt></ruby>り<ruby>向<rt>む</rt></ruby>きました。<br>*(Vâng. Cô hét to "Xin lỗi quý khách!". Tất cả khách bàn khác đều quay đầu lại.)* |
| Okami | お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>恥<rt>はず</rt></ruby>ずかしい<ruby>思<rt>おも</rt></ruby>いをしました。<ruby>濡<rt>ぬ</rt></ruby>れたこと<ruby>自体<rt>じたい</rt></ruby>よりも、みんなに<ruby>見<rt>み</rt></ruby>られたことの<ruby>方<rt>ほう</rt></ruby>が<ruby>嫌<rt>いや</rt></ruby>だったそうです。<br>*(Khách phải xấu hổ. Hoá ra việc ướt áo không khó chịu bằng việc bị nhìn.)* |
| Trang | (gật) ...<ruby>私<rt>わたし</rt></ruby>もそうします、たぶん。<br>*(...em cũng sẽ làm vậy có lẽ.)* |
| Okami | だから<ruby>覚<rt>おぼ</rt></ruby>えてください。<ruby>事故<rt>じこ</rt></ruby>の<ruby>瞬間<rt>しゅんかん</rt></ruby>、<ruby>声<rt>こえ</rt></ruby>は<ruby>小<rt>ちい</rt></ruby>さく。<ruby>動作<rt>どうさ</rt></ruby>は<ruby>早<rt>はや</rt></ruby>く。<ruby>視線<rt>しせん</rt></ruby>は<ruby>下<rt>した</rt></ruby>に。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>恥<rt>はず</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げない。<br>*(Nên nhớ — khoảnh khắc sự cố: giọng nhỏ, động tác nhanh, ánh mắt nhìn xuống. Không phát tán cái xấu hổ của khách.)* |
| Okami | <ruby>謝<rt>あやま</rt></ruby>るのはあと。まず<ruby>処理<rt>しょり</rt></ruby>、それから<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えて<ruby>謝罪<rt>しゃざい</rt></ruby>。<br>*(Xin lỗi sau. Trước hết xử lý, rồi đổi nơi mới xin lỗi.)* |
| Trang | <ruby>場所<rt>ばしょ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えて...<ruby>例<rt>たと</rt></ruby>えば?<br>*(Đổi nơi... ví dụ?)* |
| Okami | お<ruby>部屋<rt>へや</rt></ruby>にお<ruby>戻<rt>もど</rt></ruby>りになったあと、<ruby>新<rt>あたら</rt></ruby>しい<ruby>浴衣<rt>ゆかた</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちして、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>きりで<ruby>最敬礼<rt>さいけいれい</rt></ruby>。<ruby>大勢<rt>おおぜい</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>謝<rt>あやま</rt></ruby>るのは、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>軽<rt>かる</rt></ruby>くするためのもの。<br>*(Sau khi khách về phòng, mang yukata mới đến, hai người Saikeirei. Xin lỗi trước đám đông chỉ là để bản thân nhẹ lòng thôi.)* |
| Trang | (sửng sốt) <ruby>自分<rt>じぶん</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>軽<rt>かる</rt></ruby>くするため...<br>*(Để mình nhẹ lòng...)* |
| Okami | おもてなしは<ruby>自分<rt>じぶん</rt></ruby>のためじゃない。お<ruby>客様<rt>きゃくさま</rt></ruby>のため。<ruby>謝罪<rt>しゃざい</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じです。<br>*(おもてなし không phải vì mình. Vì khách. Xin lỗi cũng vậy.)* |

---

## Tình huống 6 — Phòng kho · ngày 5, 5:00, bài học 始末 — cẩn thận đến tận khi kết thúc

*Okami dẫn Trang vào kho, mở tủ chứa đồ đạc 30 năm cũ.*

| Vai | Lời thoại |
|---|---|
| Okami | <ruby>始末<rt>しまつ</rt></ruby>という<ruby>言葉<rt>ことば</rt></ruby>、<ruby>知<rt>し</rt></ruby>っていますか。<br>*(Em biết từ "shimatsu" không?)* |
| Trang | はい、「<ruby>処理<rt>しょり</rt></ruby>する」「<ruby>始<rt>はじ</rt></ruby>めから<ruby>終<rt>お</rt></ruby>わりまで」という<ruby>意味<rt>いみ</rt></ruby>でしょうか。<br>*(Vâng, em hiểu là "xử lý" hay "từ đầu đến cuối" ạ?)* |
| Okami | <ruby>近<rt>ちか</rt></ruby>いです。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>商人<rt>しょうにん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で「<ruby>始<rt>はじ</rt></ruby>めたものは<ruby>必<rt>かなら</rt></ruby>ず<ruby>最後<rt>さいご</rt></ruby>まで<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>る」という<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Gần đúng. Trong tiếng thương nhân Kyoto là "đã bắt đầu thì nhất định lo đến phút cuối".)* |
| Okami | (mở hộp gỗ cũ) これは<ruby>祖父<rt>そふ</rt></ruby>の<ruby>代<rt>だい</rt></ruby>からの<ruby>器<rt>うつわ</rt></ruby>です。<ruby>90<rt>きゅうじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>使<rt>つか</rt></ruby>っています。<br>*(Đây là bát đĩa từ đời ông nội. Dùng 90 năm rồi.)* |
| Trang | (cầm lên ngắm) <ruby>欠<rt>か</rt></ruby>けていません。<br>*(Không sứt mẻ ạ.)* |
| Okami | <ruby>欠<rt>か</rt></ruby>けたら<ruby>金継<rt>きんつぎ</rt></ruby>ぎで<ruby>直<rt>なお</rt></ruby>します。<ruby>金<rt>きん</rt></ruby>の<ruby>線<rt>せん</rt></ruby>が<ruby>入<rt>はい</rt></ruby>った<ruby>器<rt>うつわ</rt></ruby>はかえって<ruby>美<rt>うつく</rt></ruby>しい。<ruby>傷<rt>きず</rt></ruby>を<ruby>隠<rt>かく</rt></ruby>すのではなく、<ruby>歴史<rt>れきし</rt></ruby>として<ruby>魅<rt>み</rt></ruby>せる。<br>*(Sứt thì chữa bằng kintsugi. Bát có đường vàng còn đẹp hơn. Không che vết, mà bày ra như lịch sử.)* |
| Trang | <ruby>傷<rt>きず</rt></ruby>を<ruby>歴史<rt>れきし</rt></ruby>に...<br>*(Vết thương thành lịch sử...)* |
| Okami | <ruby>始末<rt>しまつ</rt></ruby>とはそういうこと。<ruby>使<rt>つか</rt></ruby>い<ruby>始<rt>はじ</rt></ruby>めたものは、<ruby>欠<rt>か</rt></ruby>けても、<ruby>古<rt>ふる</rt></ruby>くなっても、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>る。<ruby>仲居<rt>なかい</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じです。<br>*(Shimatsu là vậy. Đã dùng thì sứt, cũ, vẫn lo đến cùng. Nakai cũng vậy.)* |
| Okami | <ruby>担当<rt>たんとう</rt></ruby>したお<ruby>客様<rt>きゃくさま</rt></ruby>は、お<ruby>見送<rt>みおく</rt></ruby>りの<ruby>後<rt>あと</rt></ruby>も<ruby>始末<rt>しまつ</rt></ruby>します。お<ruby>礼<rt>れい</rt></ruby>のお<ruby>手紙<rt>てがみ</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>同<rt>おな</rt></ruby>じ<ruby>時期<rt>じき</rt></ruby>のご<ruby>案内<rt>あんない</rt></ruby>、<ruby>季節<rt>きせつ</rt></ruby>の<ruby>葉書<rt>はがき</rt></ruby>。<br>*(Khách đã phụ trách, tiễn xong vẫn shimatsu. Thư cảm ơn, lời mời cùng kỳ sang năm, bưu thiếp theo mùa.)* |
| Trang | <ruby>担当<rt>たんとう</rt></ruby>の<ruby>仲居<rt>なかい</rt></ruby>が<ruby>個別<rt>こべつ</rt></ruby>に<ruby>送<rt>おく</rt></ruby>るのですか？<br>*(Nakai phụ trách tự gửi cá nhân ạ?)* |
| Okami | はい。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>では<ruby>送<rt>おく</rt></ruby>りません。「あなたを<ruby>担当<rt>たんとう</rt></ruby>したわたし」が<ruby>送<rt>おく</rt></ruby>る。<br>*(Vâng. Không gửi danh nghĩa công ty. "Tôi đã phụ trách bạn" gửi.)* |
| Okami | <ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>続<rt>つづ</rt></ruby>くと、お<ruby>客様<rt>きゃくさま</rt></ruby>はあなたに<ruby>会<rt>あ</rt></ruby>いに<ruby>来<rt>き</rt></ruby>ます。<ruby>旅館<rt>りょかん</rt></ruby>ではなく、あなたに。それが<ruby>始末<rt>しまつ</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>。<br>*(10 năm liên tục thì khách đến gặp em. Không phải gặp ryokan — gặp em. Đó là sức mạnh của shimatsu.)* |

---

## Tình huống 7 — Phòng nhỏ trên gác · ngày 6, 5:00, học cắm hoa 茶花 mùa đông

*Phòng nhỏ trên gác có 床の間 (tokonoma). Okami đem hoa thuỷ tiên và cành mai đầu mùa.*

| Vai | Lời thoại |
|---|---|
| Okami | <ruby>茶花<rt>ちゃばな</rt></ruby>は「<ruby>野<rt>の</rt></ruby>にあるように<ruby>活<rt>い</rt></ruby>けよ」と<ruby>千利休<rt>せんのりきゅう</rt></ruby>が<ruby>言<rt>い</rt></ruby>いました。<br>*(Sen no Rikyuu đã dạy "Cắm hoa như đang ở ngoài đồng".)* |
| Okami | <ruby>無造作<rt>むぞうさ</rt></ruby>に<ruby>見<rt>み</rt></ruby>えるけれど、<ruby>角度<rt>かくど</rt></ruby>、<ruby>高<rt>たか</rt></ruby>さ、<ruby>枝<rt>えだ</rt></ruby>の<ruby>向<rt>む</rt></ruby>き、すべて<ruby>計算<rt>けいさん</rt></ruby>します。<br>*(Trông tự nhiên nhưng góc, cao, hướng cành — tất cả đều tính.)* |
| Okami | (cắm cành mai) <ruby>主役<rt>しゅやく</rt></ruby>は<ruby>梅<rt>うめ</rt></ruby>です。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>座<rt>すわ</rt></ruby>る<ruby>場所<rt>ばしょ</rt></ruby>から<ruby>見<rt>み</rt></ruby>て、<ruby>枝<rt>えだ</rt></ruby>の<ruby>先<rt>さき</rt></ruby>が<ruby>右<rt>みぎ</rt></ruby>を<ruby>向<rt>む</rt></ruby>くようにします。<br>*(Vai chính là cành mai. Từ chỗ khách ngồi nhìn ra, ngọn cành phải hướng phải.)* |
| Trang | <ruby>右<rt>みぎ</rt></ruby>を<ruby>向<rt>む</rt></ruby>くのはなぜですか。<br>*(Tại sao hướng phải ạ?)* |
| Okami | <ruby>日本<rt>にほん</rt></ruby>の<ruby>視線<rt>しせん</rt></ruby>は<ruby>右<rt>みぎ</rt></ruby>から<ruby>左<rt>ひだり</rt></ruby>へ<ruby>流<rt>なが</rt></ruby>れます。<ruby>掛軸<rt>かけじく</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むのと<ruby>同<rt>おな</rt></ruby>じ。<ruby>右<rt>みぎ</rt></ruby>から<ruby>入<rt>はい</rt></ruby>って<ruby>左<rt>ひだり</rt></ruby>で<ruby>止<rt>と</rt></ruby>まる。<br>*(Ánh mắt người Nhật chảy từ phải sang trái. Như đọc cuộn thư pháp. Vào từ phải, dừng ở trái.)* |
| Okami | (cắm thuỷ tiên) <ruby>脇役<rt>わきやく</rt></ruby>は<ruby>水仙<rt>すいせん</rt></ruby>。<ruby>主役<rt>しゅやく</rt></ruby>より<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぶ</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>低<rt>ひく</rt></ruby>く。<ruby>主役<rt>しゅやく</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>立<rt>た</rt></ruby>てる。<br>*(Vai phụ là thuỷ tiên. Thấp hơn vai chính 1/3. Để tôn vai chính.)* |
| Trang | <ruby>人間<rt>にんげん</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですね。<br>*(Giống quan hệ con người ạ.)* |
| Okami | (gật, mỉm cười) その<ruby>通<rt>とお</rt></ruby>り。<ruby>仲居頭<rt>なかいがしら</rt></ruby>は<ruby>主役<rt>しゅやく</rt></ruby>ではない、<ruby>脇役<rt>わきやく</rt></ruby>です。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>主役<rt>しゅやく</rt></ruby>。あなたは<ruby>引<rt>ひ</rt></ruby>き<ruby>立<rt>た</rt></ruby>てる<ruby>側<rt>がわ</rt></ruby>。<br>*(Đúng. Trưởng nakai không phải vai chính, mà vai phụ. Khách là vai chính. Em là người tôn vai chính.)* |
| Okami | チャンさん、やってみてください。<br>*(Trang-san, em thử đi.)* |
| Trang | (run, cầm cành) ...こうですか。<br>*(...thế này ạ?)* |
| Okami | <ruby>枝<rt>えだ</rt></ruby>を<ruby>持<rt>も</rt></ruby>つ<ruby>手<rt>て</rt></ruby>がきれい。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>器<rt>うつわ</rt></ruby>を<ruby>持<rt>も</rt></ruby>つときと<ruby>同<rt>おな</rt></ruby>じ<ruby>指<rt>ゆび</rt></ruby>です。<br>*(Tay cầm cành đẹp. Là ngón tay giống lúc cầm bát của khách.)* |

---

## Tình huống 8 — Phòng trà · ngày 6, 6:30, Trang hỏi câu khó về tương lai

*Trà uống được nửa. Trang đặt chén xuống, nhìn Okami.*

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>一<rt>ひと</rt></ruby>つお<ruby>伺<rt>うかが</rt></ruby>いしてもよろしいでしょうか。<br>*(Okami, em xin phép hỏi một điều được không ạ?)* |
| Okami | どうぞ。<br>*(Cứ hỏi.)* |
| Trang | わたくしは<ruby>外国人<rt>がいこくじん</rt></ruby>です。N3まで<ruby>取<rt>と</rt></ruby>りましたが、<ruby>京都<rt>きょうと</rt></ruby><ruby>弁<rt>べん</rt></ruby>の<ruby>細<rt>こま</rt></ruby>かいニュアンスはまだわかりません。<br>*(Em là người nước ngoài. Đã lấy N3 nhưng sắc thái phương ngữ Kyoto em vẫn chưa hiểu hết.)* |
| Trang | わたくしのような<ruby>者<rt>もの</rt></ruby>が<ruby>仲居頭<rt>なかいがしら</rt></ruby>になって、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>なのでしょうか。<br>*(Một người như em làm trưởng nakai, thật sự ổn không ạ?)* |
| Okami | (nhìn Trang một lúc) チャンさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれてありがとう。<br>*(Trang-san, cảm ơn em đã nói thật.)* |
| Okami | <ruby>京都<rt>きょうと</rt></ruby><ruby>弁<rt>べん</rt></ruby>のニュアンスがわからないのは<ruby>弱<rt>よわ</rt></ruby>みです。それは<ruby>事実<rt>じじつ</rt></ruby>。<br>*(Không hiểu phương ngữ là điểm yếu. Đó là sự thật.)* |
| Okami | でも、あなたには<ruby>3<rt>さん</rt></ruby>つの<ruby>強<rt>つよ</rt></ruby>みがあります。<ruby>1<rt>ひと</rt></ruby>つ、<ruby>英語<rt>えいご</rt></ruby>。インバウンドが<ruby>7<rt>なな</rt></ruby><ruby>割<rt>わり</rt></ruby>の<ruby>時代<rt>じだい</rt></ruby>。<ruby>2<rt>ふた</rt></ruby>つ、<ruby>気<rt>き</rt></ruby>づき。<ruby>八寸<rt>はっすん</rt></ruby>のアレルギーをすぐ<ruby>料理長<rt>りょうりちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>した<ruby>判断力<rt>はんだんりょく</rt></ruby>。<br>*(Nhưng em có 3 điểm mạnh. Một, tiếng Anh — thời inbound chiếm 70%. Hai, độ nhạy — em quyết đoán hỏi bếp trưởng dị ứng 八寸 ngay.)* |
| Okami | <ruby>3<rt>みっ</rt></ruby>つ、<ruby>外<rt>そと</rt></ruby>から<ruby>来<rt>き</rt></ruby>た<ruby>目<rt>め</rt></ruby>。<ruby>日本人<rt>にほんじん</rt></ruby>には<ruby>見<rt>み</rt></ruby>えない<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>の<ruby>違和感<rt>いわかん</rt></ruby>が、あなたには<ruby>見<rt>み</rt></ruby>えます。<br>*(Ba, con mắt từ bên ngoài — những cái "lẽ thường" mà người Nhật không thấy, em thấy được.)* |
| Trang | (cúi đầu) ...<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(...Em không dám ạ.)* |
| Okami | <ruby>京都<rt>きょうと</rt></ruby><ruby>弁<rt>べん</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>住<rt>す</rt></ruby>めば<ruby>身<rt>み</rt></ruby>につきます。<ruby>英語<rt>えいご</rt></ruby>と<ruby>気<rt>き</rt></ruby>づきは<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>住<rt>す</rt></ruby>んでも<ruby>身<rt>み</rt></ruby>につかない<ruby>日本人<rt>にほんじん</rt></ruby>がいます。<br>*(Phương ngữ Kyoto ở 10 năm là quen. Tiếng Anh và độ nhạy thì có người Nhật ở 10 năm vẫn không có.)* |
| Trang | (nước mắt rơi) <ruby>女将<rt>おかみ</rt></ruby>さん... |
| Okami | (đưa khăn) <ruby>泣<rt>な</rt></ruby>かないで。<ruby>明日<rt>あした</rt></ruby>が<ruby>最終日<rt>さいしゅうび</rt></ruby>。<ruby>最後<rt>さいご</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Đừng khóc. Mai là ngày cuối. Bài cuối quan trọng nhất.)* |

---

## Tình huống 9 — Phòng trà · ngày 7, 5:00, bài học cuối — おもてなし = 心 + 形

| Vai | Lời thoại |
|---|---|
| Okami | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>最後<rt>さいご</rt></ruby>のテーマは「<ruby>心<rt>こころ</rt></ruby>と<ruby>形<rt>かたち</rt></ruby>」。<br>*(1 tuần vất vả rồi. Chủ đề cuối — "Tâm và Hình".)* |
| Okami | おもてなしは<ruby>心<rt>こころ</rt></ruby>だけでは<ruby>足<rt>た</rt></ruby>りない。<ruby>形<rt>かたち</rt></ruby>だけでも<ruby>足<rt>た</rt></ruby>りない。<ruby>両方<rt>りょうほう</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(おもてなし — chỉ tâm không đủ. Chỉ hình cũng không đủ. Cần cả hai.)* |
| Trang | <ruby>心<rt>こころ</rt></ruby>だけだと、どうなりますか。<br>*(Chỉ có tâm thì sao ạ?)* |
| Okami | <ruby>心<rt>こころ</rt></ruby>だけだと「<ruby>気持<rt>きも</rt></ruby>ちはわかりますが、ちゃんとできていない<ruby>素人<rt>しろうと</rt></ruby>」になります。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>気<rt>き</rt></ruby>を<ruby>遣<rt>つか</rt></ruby>わせます。<br>*(Chỉ tâm thì thành "tay mơ có tấm lòng nhưng không làm được". Khiến khách phải để ý cho mình.)* |
| Trang | <ruby>形<rt>かたち</rt></ruby>だけだと？<br>*(Chỉ hình thì sao?)* |
| Okami | <ruby>形<rt>かたち</rt></ruby>だけだと「<ruby>機械<rt>きかい</rt></ruby>」。マニュアル<ruby>通<rt>とお</rt></ruby>りでも、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>記憶<rt>きおく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>らない。<br>*(Chỉ hình thì thành "máy". Đúng manual nhưng không đọng lại trong ký ức khách.)* |
| Okami | <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>形<rt>かたち</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけてください。お<ruby>辞儀<rt>じぎ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>、<ruby>畳<rt>たたみ</rt></ruby>の<ruby>歩<rt>ある</rt></ruby>き<ruby>方<rt>かた</rt></ruby>、<ruby>器<rt>うつわ</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>、<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>心<rt>こころ</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>いてください。<br>*(3 năm để rèn hình. お辞儀 3 cấp, cách đi trên chiếu, cách cầm bát. 30 năm để mài tâm.)* |
| Okami | わたしは<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>磨<rt>みが</rt></ruby>いてきました。あなたも<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて、<ruby>次<rt>つぎ</rt></ruby>の<ruby>誰<rt>だれ</rt></ruby>かに<ruby>渡<rt>わた</rt></ruby>してください。<br>*(Cô đã mài 30 năm. Em cũng mài 30 năm, rồi trao cho người tiếp theo.)* |
| Trang | (đặt tay lên chiếu, cúi đầu) <ruby>謹<rt>つつし</rt></ruby>んで<ruby>承<rt>うけたまわ</rt></ruby>ります。<br>*(Em xin trân trọng lãnh hội.)* |
| Okami | (đứng dậy, đem ra cuốn sổ tay nhỏ) これは<ruby>母<rt>はは</rt></ruby>が<ruby>使<rt>つか</rt></ruby>っていた<ruby>仲居<rt>なかい</rt></ruby><ruby>手帳<rt>てちょう</rt></ruby>です。<ruby>50<rt>ごじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>のもの。<br>*(Đây là sổ tay nakai mẹ cô dùng. Của 50 năm trước.)* |
| Okami | <ruby>表紙<rt>ひょうし</rt></ruby>に<ruby>母<rt>はは</rt></ruby>の<ruby>字<rt>じ</rt></ruby>で「<ruby>心<rt>こころ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めて」と<ruby>書<rt>か</rt></ruby>いてあります。これをチャンさんに<ruby>託<rt>たく</rt></ruby>します。<br>*(Bìa có chữ mẹ viết "Đặt cả tâm vào". Cô gửi gắm em.)* |
| Trang | (đỡ bằng hai tay, run) <ruby>女将<rt>おかみ</rt></ruby>さんのお<ruby>母様<rt>かあさま</rt></ruby>の...<br>*(Của mẹ Okami...)* |
| Okami | (cúi đầu) どうかお<ruby>受<rt>う</rt></ruby>けください。<br>*(Xin em hãy nhận.)* |
| Trang | (cúi sâu hơn) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Em xin nhận. Em sẽ giữ gìn cả đời.)* |

---

## Tình huống 10 — Hành lang · ngày 7, 7:00, kohai gặp Trang sau buổi học cuối

| Vai | Lời thoại |
|---|---|
| Raj | チャン<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>特別<rt>とくべつ</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>、どうでしたか。<br>*(Trang sempai, chào buổi sáng. Một tuần đặc huấn thế nào ạ?)* |
| Trang | (mỉm cười, vẫn còn xúc động) <ruby>言葉<rt>ことば</rt></ruby>になりません。<br>*(Em không nói được thành lời.)* |
| Min-ji | <ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>何<rt>なに</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>わったんですか？<br>*(Okami dạy chị những gì ạ?)* |
| Trang | お<ruby>辞儀<rt>じぎ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>の<ruby>角度<rt>かくど</rt></ruby>、<ruby>先読<rt>さきよ</rt></ruby>みの<ruby>仕方<rt>しかた</rt></ruby>、<ruby>表<rt>おもて</rt></ruby>に<ruby>出<rt>で</rt></ruby>ないこと、<ruby>始末<rt>しまつ</rt></ruby>の<ruby>心<rt>こころ</rt></ruby>、<ruby>茶花<rt>ちゃばな</rt></ruby>の<ruby>立<rt>た</rt></ruby>て<ruby>方<rt>かた</rt></ruby>...<br>*(Góc お辞儀 3 cấp, cách 先読み, không lộ ra mặt, tâm 始末, cách cắm 茶花...)* |
| Raj | <ruby>表<rt>おもて</rt></ruby>に<ruby>出<rt>で</rt></ruby>ない？<br>*(Không lộ ra mặt?)* |
| Trang | <ruby>事故<rt>じこ</rt></ruby>のとき<ruby>声<rt>こえ</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きくしない。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>恥<rt>はず</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げない、ということです。<br>*(Sự cố không hét to. Không phát tán cái xấu hổ của khách.)* |
| Raj | (gật) <ruby>深<rt>ふか</rt></ruby>いですね。<ruby>俺<rt>おれ</rt></ruby>たちにも<ruby>教<rt>おそ</rt></ruby>えてください。<br>*(Sâu sắc quá. Sempai dạy lại cho bọn em đi.)* |
| Trang | はい、もちろん。<ruby>始末<rt>しまつ</rt></ruby>するから。<br>*(Vâng, đương nhiên. Vì em phải shimatsu mà.)* |
| Min-ji | <ruby>始末<rt>しまつ</rt></ruby>って、お<ruby>掃除<rt>そうじ</rt></ruby>のことですか？<br>*(Shimatsu là dọn dẹp ạ?)* |
| Trang | (cười) ううん、もっと<ruby>大<rt>おお</rt></ruby>きな<ruby>意味<rt>いみ</rt></ruby>。<ruby>始<rt>はじ</rt></ruby>めたことは<ruby>最後<rt>さいご</rt></ruby>まで<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>る、ということ。<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるのも<ruby>始末<rt>しまつ</rt></ruby>。<br>*(Không, nghĩa lớn hơn. Đã bắt đầu thì lo đến cùng. Nuôi kohai cũng là shimatsu.)* |

---

## Tình huống 11 — Phòng nhân viên · 16:00, Okami công bố quyết định trước cả nhà ryokan

| Vai | Lời thoại |
|---|---|
| Okami | みなさん、お<ruby>集<rt>あつ</rt></ruby>まりありがとうございます。<br>*(Mọi người, cảm ơn các bạn đã tụ tập.)* |
| Okami | <ruby>本日<rt>ほんじつ</rt></ruby>をもって、チャンさんの<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>特別<rt>とくべつ</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>が<ruby>修了<rt>しゅうりょう</rt></ruby>いたしました。<br>*(Hôm nay, 1 tuần đặc huấn của Trang đã hoàn thành.)* |
| Okami | チャンさんを<ruby>来年度<rt>らいねんど</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>より<ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>(<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>)に<ruby>正式<rt>せいしき</rt></ruby><ruby>任命<rt>にんめい</rt></ruby>することを、ここに<ruby>発表<rt>はっぴょう</rt></ruby>いたします。<br>*(Từ tháng 4 năm tới, tôi chính thức bổ nhiệm Trang làm Trợ lý trưởng nakai — phó nakai. Tôi xin công bố tại đây.)* |
| Cả phòng | (vỗ tay) |
| Bếp trưởng | おお、それは<ruby>嬉<rt>うれ</rt></ruby>しい！<ruby>料理場<rt>りょうりば</rt></ruby>からも<ruby>歓迎<rt>かんげい</rt></ruby>します。<br>*(Ô, vui quá! Bên bếp cũng hoan nghênh.)* |
| Raj | チャン<ruby>先輩<rt>せんぱい</rt></ruby>、おめでとうございます！<br>*(Trang sempai, chúc mừng chị!)* |
| Min-ji | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです！<br>*(Em mừng thật sự ạ!)* |
| Trang | (bước lên một bước, cúi sâu) みなさま、<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>と<ruby>機会<rt>きかい</rt></ruby>でございます。<br>*(Mọi người, lời và cơ hội quá lớn với em.)* |
| Trang | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1<ruby>移行<rt>いこう</rt></ruby>と<ruby>同時<rt>どうじ</rt></ruby>に<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>として、<ruby>謹<rt>つつし</rt></ruby>んで<ruby>承<rt>うけたまわ</rt></ruby>ります。<br>*(Từ tháng 4 chuyển SSW1 đồng thời với phó nakai, em xin trân trọng lãnh nhận.)* |
| Trang | <ruby>京都<rt>きょうと</rt></ruby><ruby>弁<rt>べん</rt></ruby>はまだ<ruby>不十分<rt>ふじゅうぶん</rt></ruby>でございますが、<ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>頂<rt>いただ</rt></ruby>いた「<ruby>心<rt>こころ</rt></ruby>と<ruby>形<rt>かたち</rt></ruby>」を<ruby>毎日<rt>まいにち</rt></ruby><ruby>磨<rt>みが</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けてまいります。<br>*(Phương ngữ Kyoto em còn yếu, nhưng "Tâm và Hình" Okami trao em sẽ mài giũa mỗi ngày.)* |
| Okami | (gật) チャンさん、<ruby>頭<rt>あたま</rt></ruby>をお<ruby>上<rt>あ</rt></ruby>げください。これからもよろしく。<br>*(Trang-san, ngẩng đầu lên. Từ giờ mong em.)* |

---

## Tình huống 12 — 玄関 · 18:00, Okami yêu cầu Trang đứng ở 玄関 lần đầu với vai phó nakai

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>今夜<rt>こんや</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>出迎<rt>でむか</rt></ruby>え、わたしと<ruby>並<rt>なら</rt></ruby>んで<ruby>玄関<rt>げんかん</rt></ruby>に<ruby>立<rt>た</rt></ruby>ってください。<br>*(Trang-san, đón khách tối nay, em xin đứng ở 玄関 cùng cô.)* |
| Trang | (sửng sốt) <ruby>女将<rt>おかみ</rt></ruby>さんの<ruby>横<rt>よこ</rt></ruby>に...わたくしが...？<br>*(Cạnh Okami... em...?)* |
| Okami | はい。あなたは<ruby>来年<rt>らいねん</rt></ruby>から<ruby>玄関<rt>げんかん</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ<ruby>人<rt>ひと</rt></ruby>です。<ruby>今夜<rt>こんや</rt></ruby>から<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Vâng. Em là người đứng ở 玄関 từ năm sau. Tối nay bắt đầu luyện.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em xin rõ.)* |
| Okami | (chỉnh lại cổ áo cho Trang) <ruby>背中<rt>せなか</rt></ruby>をまっすぐ。<ruby>顎<rt>あご</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>く。<ruby>目<rt>め</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>メートル<rt>めーとる</rt></ruby><ruby>先<rt>さき</rt></ruby>。<br>*(Lưng thẳng. Cằm thu vào. Mắt nhìn 2m trước mặt.)* |
| Trang | (chỉnh lại tư thế) はい。 |
| Okami | <ruby>父<rt>ちち</rt></ruby>は<ruby>40<rt>よんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>ここに<ruby>立<rt>た</rt></ruby>ちました。わたしは<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>。あなたは<ruby>何<rt>なん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>立<rt>た</rt></ruby>ちますか。<br>*(Bố cô đứng đây 40 năm. Cô 30 năm. Em sẽ đứng bao lâu?)* |
| Trang | (lặng một lúc) ...<ruby>女将<rt>おかみ</rt></ruby>さん、わたくしも<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目指<rt>めざ</rt></ruby>します。<br>*(...Okami, em cũng nhắm tới 30 năm.)* |
| Okami | (cười, mắt lấp lánh) いい<ruby>答<rt>こた</rt></ruby>えです。<ruby>車<rt>くるま</rt></ruby>が<ruby>来<rt>き</rt></ruby>ます。<ruby>会釈<rt>えしゃく</rt></ruby>、<ruby>準備<rt>じゅんび</rt></ruby>。<br>*(Trả lời hay. Xe đến rồi. Eshaku, chuẩn bị.)* |
| Hai người | (cùng cúi đầu khi xe dừng) いらっしゃいませ。<br>*(Kính chào quý khách.)* |

---

## Tình huống 13 — Phòng ký túc · 22:00, gọi điện về Huế (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — Trang gọi mẹ, kể về 1 tuần đặc huấn.

| Vai | Lời thoại |
|---|---|
| Trang | (VN, video call) Mẹ ơi, em Hà ơi, hôm nay con kể chuyện lớn nha. |
| Mẹ | (VN) Sao mặt con sưng thế? Khóc à? |
| Trang | (VN, cười) Mẹ ơi không khóc khổ đâu, khóc vui. 1 tuần qua Okami dạy con riêng mỗi sáng 5h sáng. |
| Em Hà | (VN) Chị dậy 5h sáng cơ á? |
| Trang | (VN) Ngày đầu Okami kể chuyện ryokan 4 đời nhà bà — từ ông cố 1899 dựng nên, qua chiến tranh, qua Olympic Tokyo, bố Okami đứng cúi đầu ở cửa 40 năm liền. |
| Mẹ | (VN, ngạc nhiên) 40 năm đứng một chỗ cúi đầu? |
| Trang | (VN) Mẹ ơi, ở đây người ta gọi là "gia nghiệp" — kế nghiệp. 4 đời xây niềm tin, đời thứ 5 không được để tắt. Mà Okami không có con gái, con trai làm IT Tokyo. Bà bảo "thời này kế nghiệp bằng chí hướng chứ không phải bằng huyết thống". |
| Em Hà | (VN) Thế Okami chọn ai? |
| Trang | (VN, chậm) ...Bà chọn con. |
| Mẹ | (VN, hét) Cái gì?! |
| Trang | (VN) Mẹ, chiều nay bà công bố trước cả nhà ryokan — từ tháng 4 con làm 副仲居頭 — phó trưởng nakai. Vừa chuyển SSW1, vừa nhận chức. |
| Mẹ | (VN, khóc) Trời ơi! Con gái mẹ! |
| Trang | (VN) Bà còn tặng con cuốn sổ tay của mẹ bà, của 50 năm trước. Trên bìa viết chữ "Đặt cả tâm vào". Con cầm sổ run cả người. |
| Em Hà | (VN) Chị, chị nói tiếng Nhật giỏi đến đâu rồi? |
| Trang | (VN) Có một đoạn bà hỏi rất khó. Bà bảo "Người nước ngoài làm trưởng nakai có ổn không?". Con thật thà bảo "phương ngữ Kyoto em còn chưa hiểu, em sợ không xứng". |
| Mẹ | (VN) Rồi bà nói sao? |
| Trang | (VN) Bà bảo "Phương ngữ Kyoto ở 10 năm là quen. Còn 3 thứ em có — tiếng Anh, độ nhạy, và con mắt từ bên ngoài — có người Nhật ở 10 năm cũng không có được". Mẹ ơi, con khóc luôn. |
| Mẹ | (VN, lau nước mắt) Mẹ cũng khóc đây. |
| Trang | (VN) Bà còn dạy con một bài "おもてなし — 1 phần đưa thêm, 9 phần rút lui". Cái phần "không lộ ra mặt" mới là 9 phần thật. Khi khách gặp sự cố, đừng hét to, đừng làm khách xấu hổ trước đám đông. Mẹ thấy có giống cách phục vụ quán bún bò ngày xưa của mẹ không? |
| Mẹ | (VN) Có chứ. Mẹ vẫn dạy con từ bé "khách buồn thì đừng để khách bàn bên thấy con biết khách buồn". |
| Trang | (VN, khóc cười) Đấy. Hoá ra 25 năm trước mẹ đã dạy con おもてなし Việt Nam rồi. Giờ Okami chỉ dạy con "hình" của Nhật thôi. |
| Em Hà | (VN) Chị có về Tết Âm không? |
| Trang | (VN) Tháng 2 con xin nghỉ về 10 ngày. Sau đó về Nhật làm SSW1 + phó nakai. Con quyết rồi mẹ ạ. |
| Mẹ | (VN, gật) Con đi đường con. Mẹ ủng hộ. Nhưng nhớ giữ sức khoẻ. |
| Trang | (VN, ôm cuốn sổ tay 50 năm trên ngực) Mẹ ơi, con sẽ giữ đến 30 năm. Đến lúc đó con sẽ trao cho người tiếp theo, như mẹ Okami đã trao cho con qua tay bà. |

---

## Đọng lại chương 10

Chương này là chương "truyền nghề" cốt lõi của bộ năm 3 — Okami 30 năm kinh nghiệm mở nguyên giáo trình cho Trang trong 7 ngày. Người học thuộc được **mẫu câu nhận lời truyền nghề** (<ruby>謹<rt>つつし</rt></ruby>んで<ruby>承<rt>うけたまわ</rt></ruby>ります), **lý thuyết お辞儀 3 cấp với góc + thời gian chính xác** (会釈 15°/Keirei 30°/最敬礼 45°, cúi 3 dừng 1 ngẩng 3), **khái niệm 先読み** (<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す<ruby>力<rt>ちから</rt></ruby> + <ruby>引<rt>ひ</rt></ruby>く<ruby>力<rt>ちから</rt></ruby>, 1 phần đưa + 9 phần rút), **kỷ luật 表に出ない khi gặp sự cố** (giọng nhỏ, động tác nhanh, ánh mắt xuống, không phát tán cái xấu hổ của khách), **triết lý 始末** (đã bắt đầu thì lo đến cùng — kể cả thư cảm ơn, bưu thiếp theo mùa), **mẫu mượn tả 茶花** (vai chính-vai phụ áp dụng vào quan hệ trưởng nhóm – khách – kohai), và **công thức cuối cùng おもてなし = 心 + 形** (3 năm rèn hình, 30 năm mài tâm). Trang chính thức được bổ nhiệm 副仲居頭 — phó trưởng nakai — bằng cuốn sổ tay 50 năm của mẹ Okami: nhận từ đàn anh, trao lại cho đàn em, đó là <ruby>家業<rt>かぎょう</rt></ruby>.

> Từ vựng & mẫu câu chương này: <ruby>後継育成<rt>こうけいいくせい</rt></ruby>・<ruby>家業<rt>かぎょう</rt></ruby>・<ruby>代々<rt>だいだい</rt></ruby><ruby>続<rt>つづ</rt></ruby>く・<ruby>会釈<rt>えしゃく</rt></ruby>・<ruby>敬礼<rt>けいれい</rt></ruby>・<ruby>最敬礼<rt>さいけいれい</rt></ruby>・<ruby>先読<rt>さきよ</rt></ruby>み・お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>一歩<rt>いっぽ</rt></ruby><ruby>先<rt>さき</rt></ruby>・<ruby>引<rt>ひ</rt></ruby>く<ruby>力<rt>ちから</rt></ruby>・<ruby>表<rt>おもて</rt></ruby>に<ruby>出<rt>で</rt></ruby>ない・<ruby>始末<rt>しまつ</rt></ruby>・<ruby>金継<rt>きんつぎ</rt></ruby>ぎ・<ruby>茶花<rt>ちゃばな</rt></ruby>・<ruby>主役<rt>しゅやく</rt></ruby>・<ruby>脇役<rt>わきやく</rt></ruby>・<ruby>引<rt>ひ</rt></ruby>き<ruby>立<rt>た</rt></ruby>てる・<ruby>謹<rt>つつし</rt></ruby>んで<ruby>承<rt>うけたまわ</rt></ruby>ります・<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>・<ruby>心<rt>こころ</rt></ruby>と<ruby>形<rt>かたち</rt></ruby>・<ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>・<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>・<ruby>正式<rt>せいしき</rt></ruby><ruby>任命<rt>にんめい</rt></ruby>・<ruby>託<rt>たく</rt></ruby>す・<ruby>心<rt>こころ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めて・<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします

## Bí quyết chương

- **Đặc huấn 5h sáng 1-kèm-1**: hình thức đào tạo người kế thừa của ryokan truyền thống không có trong tài liệu chính thức. Mời được vào lớp này là dấu hiệu được chọn làm 後継.
- **お辞儀 cúi 3 - dừng 1 - ngẩng 3**: nhịp Saikeirei đạt chuẩn 7 giây. Ngẩng nhanh = hời hợt. Chậm = trang trọng.
- **"Đọc trước" có 2 chiều**: 差し出す力 (đưa thêm — nước, dép, đèn sáng) + 引く力 (rút lui — lùi 3 bước khi khách chụp ảnh). Học viên Việt thường chỉ học vế đầu, vế sau mới khó.
- **Quy tắc gặp sự cố**: giọng nhỏ → động tác nhanh → mắt xuống → xử lý → đổi chỗ → Saikeirei riêng. Tuyệt đối không Saikeirei trước đám đông.
- **始末 = "nuôi đến cùng"**: không chỉ đồ vật (kintsugi) mà cả khách (thư cảm ơn, bưu thiếp mùa) và kohai (dạy lại). Trưởng nakai không bao giờ "thả tay".
- **Công thức 30 năm**: 3 năm rèn 形 + 30 năm mài 心. Học viên Việt sang Nhật phải hiểu rằng SSW1 chỉ là khởi đầu của hành trình 30 năm.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 後継 | こうけい | HẬU KẾ | người kế thừa |
| 育成 | いくせい | DỤC THÀNH | đào tạo, nuôi dưỡng |
| 託 | たく | THÁC | gửi gắm |
| 家業 | かぎょう | GIA NGHIỆP | nghề của gia đình |
| 代々 | だいだい | ĐẠI ĐẠI | đời đời |
| 曽祖父 | そうそふ | TĂNG TỔ PHỤ | cụ tổ |
| 呉服商 | ごふくしょう | NGÔ PHỤC THƯƠNG | nhà buôn vải kimono |
| 戦争 | せんそう | CHIẾN TRANH | chiến tranh |
| 空襲 | くうしゅう | KHÔNG TẬP | không kích |
| 食糧 | しょくりょう | THỰC LƯƠNG | lương thực |
| 信用 | しんよう | TÍN DỤNG | niềm tin |
| 絶 | た | TUYỆT | tắt, ngừng |
| 志 | こころざし | CHÍ | chí hướng |
| 辞儀 | じぎ | TỪ NGHI | cúi chào |
| 段階 | だんかい | ĐOẠN GIAI | cấp độ |
| 会釈 | えしゃく | HỘI THÍCH | cúi nhẹ |
| 敬礼 | けいれい | KÍNH LỄ | cúi vừa |
| 最敬礼 | さいけいれい | TỐI KÍNH LỄ | cúi sâu nhất |
| 視線 | しせん | THỊ TUYẾN | ánh mắt |
| 静止 | せいし | TĨNH CHỈ | đứng yên |
| 先読 | さきよみ | TIÊN ĐỘC | đọc trước |
| 一歩先 | いっぽさき | NHẤT BỘ TIÊN | trước một bước |
| 段差 | だんさ | ĐOẠN SAI | chênh bậc |
| 邪魔 | じゃま | TÀ MA | cản trở |
| 引力 | ひくちから | DẪN LỰC | sức rút lui |
| 表 | おもて | BIỂU | bề ngoài, mặt trước |
| 大声 | おおごえ | ĐẠI THANH | giọng to |
| 振舞 | ふるま | CHẤN VŨ | cư xử |
| 場所 | ばしょ | TRƯỜNG SỞ | nơi |
| 謝罪 | しゃざい | TẠ TỘI | xin lỗi |
| 始末 | しまつ | THUỶ MẠT | lo từ đầu đến cuối |
| 商人 | しょうにん | THƯƠNG NHÂN | thương nhân |
| 金継 | きんつぎ | KIM KẾ | nối vàng (sửa gốm) |
| 傷 | きず | THƯƠNG | vết thương |
| 葉書 | はがき | DIỆP THƯ | bưu thiếp |
| 個別 | こべつ | CÁ BIỆT | cá nhân |
| 茶花 | ちゃばな | TRÀ HOA | hoa trà thất |
| 千利休 | せんのりきゅう | THIÊN LỢI HƯU | Sen no Rikyuu |
| 無造作 | むぞうさ | VÔ TẠO TÁC | tự nhiên |
| 主役 | しゅやく | CHỦ DỊCH | vai chính |
| 脇役 | わきやく | HIẾP DỊCH | vai phụ |
| 引立 | ひきた | DẪN LẬP | tôn lên |
| 弱 | よわ | NHƯỢC | yếu |
| 違和感 | いわかん | VI HOÀ CẢM | cảm giác lạc lõng |
| 修了 | しゅうりょう | TU LIỄU | hoàn thành |
| 補佐 | ほさ | BỔ TÁ | trợ lý |
| 任命 | にんめい | NHIỆM MỆNH | bổ nhiệm |
| 機会 | きかい | CƠ HỘI | cơ hội |
| 込 | こ | NHẬP | đặt vào, đổ vào |
| 表紙 | ひょうし | BIỂU CHỈ | bìa |
| 形 | かたち | HÌNH | hình thức |
| 心 | こころ | TÂM | tâm |
| 機械 | きかい | CƠ GIỚI | máy móc |
| 磨 | みが | MA | mài, đánh bóng |
| 顎 | あご | NGẠC | cằm |
| 目指 | めざ | MỤC CHỈ | nhắm tới |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000011, 800000048, NULL, 'markdown_book', 'T11. Quyết định ở lại SSW1 và nhận chức phó nakai', '# Sách thực tập sinh khách sạn năm 3 · T11. Quyết định ở lại SSW1 và nhận chức phó nakai

> **Mục tiêu nhân vật:** Trang (26 tuổi, Huế) hoàn tất thủ tục chuyển tư cách lưu trú TTS → SSW1 đồng thời nhận chức 副<ruby>仲居頭<rt>なかいがしら</rt></ruby>. Học các mẫu hội thoại tiếng Nhật của 仲居 năm cuối: xin tư vấn với 監理団体 về SSW1 (在留資格変更の相談), trao đổi với gia đình bằng video call (家族との進路相談), ký hợp đồng SSW1 trang trọng (雇用契約書の取り交わし), gọi điện 入国管理局 hỏi giấy tờ (書類確認のお問い合わせ), thông báo quyết định với kohai (重大な決定の共有), và xác nhận lộ trình 5 năm với Okami (5年計画の擦り合わせ).

---

## Bối cảnh

Tháng 1 - đầu tháng 2 năm 2028, ryokan「<ruby>月詠庵<rt>つきよみあん</rt></ruby>」Higashiyama Kyoto. Tháng 3/2028 hợp đồng TTS của Trang sẽ hết hạn. Sau 1 tuần đặc huấn với Okami tháng 12 vừa rồi, Trang đã được bổ nhiệm 副仲居頭 từ 4/2028. Trước Tết Âm, Trang phải hoàn tất: thông báo với 監理団体, ký hợp đồng SSW1, nộp 在留資格変更申請 lên Cục quản lý nhập cư, thông báo gia đình ở Huế, và bàn lộ trình 5 năm với Okami. Chương tập trung các mẫu hội thoại "quyết định lớn" — trang trọng, có giấy tờ, có chứng kiến.

---

## Tình huống 1 — Phòng riêng ký túc · ngày 7/1, 6:00, độc thoại trước cuộc gọi 監理団体

*Trang ngồi trước bàn, có 2 cuốn sổ: cuốn 50 năm của mẹ Okami + cuốn "ghi chú quyết định" mới mua.*

| Vai | Lời thoại |
|---|---|
| Trang | (mở cuốn sổ trắng, ghi tựa "<ruby>進路<rt>しんろ</rt></ruby><ruby>決定<rt>けってい</rt></ruby><ruby>2028<rt>にせんにじゅうはち</rt></ruby>") <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>7<rt>なの</rt></ruby><ruby>日<rt>か</rt></ruby>。<br>*(Ngày 7/1/2028.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>監理団体<rt>かんりだんたい</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby><ruby>者<rt>しゃ</rt></ruby>と<ruby>面談<rt>めんだん</rt></ruby>。SSW1<ruby>移行<rt>いこう</rt></ruby>の<ruby>正式<rt>せいしき</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>。<br>*(10h hôm nay, gặp ông Sato của 監理団体. Tư vấn chính thức việc chuyển SSW1.)* |
| Trang | <ruby>準備<rt>じゅんび</rt></ruby>するもの:<br>1. <ruby>女将<rt>おかみ</rt></ruby>さんからの<ruby>雇用申<rt>こようもう</rt></ruby>し<ruby>出<rt>で</rt></ruby>し<ruby>書<rt>しょ</rt></ruby><br>2. <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>勤務<rt>きんむ</rt></ruby><ruby>記録<rt>きろく</rt></ruby><br>3. JLPT N3<ruby>合格証書<rt>ごうかくしょうしょ</rt></ruby><br>4. <ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>測定試験<rt>そくていしけん</rt></ruby><ruby>合格証<rt>ごうかくしょう</rt></ruby><br>*(Đồ chuẩn bị: 1. Đơn đề nghị tuyển dụng của Okami, 2. Hồ sơ làm việc 3 năm, 3. Bằng N3, 4. Chứng chỉ thi 特定技能 ngành lưu trú.)* |
| Trang | (lẩm bẩm) <ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>怖<rt>こわ</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>じゃない。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎月<rt>まいつき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>してくれた<ruby>方<rt>かた</rt></ruby>。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>せばいい。<br>*(Sato không phải người dữ. 3 năm qua tháng nào cũng phỏng vấn mình. Cứ thật thà nói là được.)* |
| Trang | (VN, tự nhủ) Mình quyết rồi. Ở lại. Không phải vì lương cao hơn — mà vì Okami trao cuốn sổ 50 năm. |

---

## Tình huống 2 — Văn phòng 監理団体 Kyoto · 10:00, gặp ông Sato 担当者

*Văn phòng 監理団体 ở Karasuma. Ông Sato Toshio, 55 tuổi, đã đón Trang ở sân bay năm 2025.*

| Vai | Lời thoại |
|---|---|
| Sato | チャンさん、おはようございます。お<ruby>久<rt>ひさ</rt></ruby>しぶりですね。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>もう<ruby>経<rt>た</rt></ruby>つのですね。<br>*(Trang-san, chào buổi sáng. Lâu rồi nhỉ. 3 năm đã qua rồi.)* |
| Trang | (cúi đầu) <ruby>佐藤<rt>さとう</rt></ruby>さん、ご<ruby>無沙汰<rt>ぶさた</rt></ruby>しております。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Ông Sato, lâu rồi không thưa chuyện ạ. Hôm nay cảm ơn ông đã dành thời gian.)* |
| Sato | (mở hồ sơ Trang) <ruby>記録<rt>きろく</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>しました。N3<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、<ruby>勤務評価<rt>きんむひょうか</rt></ruby>はAA、<ruby>無欠勤<rt>むけっきん</rt></ruby>。<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>成績<rt>せいせき</rt></ruby>です。<br>*(Tôi đã xem hồ sơ. Đỗ N3, đỗ 特定技能 ngành lưu trú, đánh giá làm việc AA, không nghỉ ngày nào. Thành tích tuyệt vời.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>女将<rt>おかみ</rt></ruby>さんと<ruby>先輩<rt>せんぱい</rt></ruby><ruby>方<rt>がた</rt></ruby>のおかげでございます。<br>*(Cảm ơn ông quá lời. Tất cả nhờ Okami và các tiền bối ạ.)* |
| Sato | チャンさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います。SSW1への<ruby>移行<rt>いこう</rt></ruby>はご<ruby>本人<rt>ほんにん</rt></ruby>のご<ruby>希望<rt>きぼう</rt></ruby>ですか、それとも<ruby>会社<rt>かいしゃ</rt></ruby>からのお<ruby>誘<rt>さそ</rt></ruby>いですか。<br>*(Trang-san, tôi xin hỏi thật. Chuyển SSW1 là nguyện vọng cá nhân em, hay lời mời từ công ty?)* |
| Trang | (suy nghĩ một lúc) <ruby>順序<rt>じゅんじょ</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>女将<rt>おかみ</rt></ruby>さんからのお<ruby>誘<rt>さそ</rt></ruby>いが<ruby>先<rt>さき</rt></ruby>でございました。<br>*(Theo trình tự, lời mời của Okami đến trước ạ.)* |
| Trang | しかし<ruby>最終<rt>さいしゅう</rt></ruby><ruby>決定<rt>けってい</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して、わたくし<ruby>自身<rt>じしん</rt></ruby>の<ruby>意思<rt>いし</rt></ruby>でございます。<br>*(Nhưng quyết định cuối cùng — sau 1 tuần bàn với gia đình — là ý chí của bản thân em.)* |
| Sato | (gật, ghi chép) わかりました。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>質問<rt>しつもん</rt></ruby>でした。<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>無理<rt>むり</rt></ruby><ruby>強<rt>じ</rt></ruby>いされた<ruby>事例<rt>じれい</rt></ruby>もあるので、<ruby>毎回<rt>まいかい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しています。<br>*(Tôi hiểu rồi. Câu hỏi quan trọng. Có những trường hợp công ty ép buộc, nên lần nào tôi cũng kiểm tra.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さんは「ベトナムに<ruby>帰<rt>かえ</rt></ruby>る<ruby>選択肢<rt>せんたくし</rt></ruby>もある」と<ruby>必<rt>かなら</rt></ruby>ず<ruby>伝<rt>つた</rt></ruby>えてくださいました。<br>*(Okami luôn nhắc "có lựa chọn về Việt Nam".)* |
| Sato | いい<ruby>女将<rt>おかみ</rt></ruby>さんですね。では、<ruby>手続<rt>てつづ</rt></ruby>きの<ruby>説明<rt>せつめい</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<br>*(Okami tốt thật. Vậy chuyển sang giải thích thủ tục.)* |

---

## Tình huống 3 — Văn phòng 監理団体 · 10:30, Sato giải thích thủ tục chuyển tư cách

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>は、<ruby>京都<rt>きょうと</rt></ruby><ruby>出入国在留管理局<rt>しゅつにゅうこくざいりゅうかんりきょく</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Đơn xin phép thay đổi tư cách lưu trú nộp ở Cục quản lý xuất nhập cảnh Kyoto.)* |
| Trang | (ghi chép) はい、<ruby>京都<rt>きょうと</rt></ruby>ですね。<br>*(Vâng, Kyoto ạ.)* |
| Sato | <ruby>必要書類<rt>ひつようしょるい</rt></ruby>は<ruby>10<rt>じゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>。リストを<ruby>渡<rt>わた</rt></ruby>します。<ruby>特<rt>とく</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>すべきは<ruby>3<rt>みっ</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(Giấy tờ cần 10 loại. Tôi đưa em danh sách. Đặc biệt chú ý 3 thứ.)* |
| Sato | <ruby>1<rt>ひと</rt></ruby>つ、<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>と<ruby>雇用条件書<rt>こようじょうけんしょ</rt></ruby>。<ruby>給与<rt>きゅうよ</rt></ruby>が<ruby>日本人<rt>にほんじん</rt></ruby><ruby>同等<rt>どうとう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>であることが<ruby>絶対<rt>ぜったい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>です。<br>*(Một, hợp đồng tuyển dụng và bảng điều kiện. Lương bằng hoặc hơn người Nhật là điều kiện tuyệt đối.)* |
| Sato | <ruby>2<rt>ふた</rt></ruby>つ、<ruby>技能試験<rt>ぎのうしけん</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>合格証<rt>ごうかくしょう</rt></ruby>。チャンさんはどちらも<ruby>合格<rt>ごうかく</rt></ruby><ruby>済<rt>ず</rt></ruby>みですから、<ruby>原本<rt>げんぽん</rt></ruby>とコピーを<ruby>準備<rt>じゅんび</rt></ruby>してください。<br>*(Hai, chứng chỉ kỹ năng và Nhật ngữ. Em đã đỗ cả hai, chuẩn bị bản gốc và bản photo.)* |
| Sato | <ruby>3<rt>みっ</rt></ruby>つ、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>と<ruby>住居届出<rt>じゅうきょとどけで</rt></ruby><ruby>書<rt>しょ</rt></ruby>。<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>す<ruby>予定<rt>よてい</rt></ruby>はありますか。<br>*(Ba, giấy đăng ký cư trú. Em có dự định chuyển nhà không?)* |
| Trang | いいえ、<ruby>同<rt>おな</rt></ruby>じ<ruby>寮<rt>りょう</rt></ruby>に<ruby>住<rt>す</rt></ruby>み<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Không ạ, em vẫn ở ký túc cũ.)* |
| Sato | では<ruby>住所変更<rt>じゅうしょへんこう</rt></ruby>は<ruby>不要<rt>ふよう</rt></ruby>。<ruby>申請<rt>しんせい</rt></ruby>から<ruby>結果<rt>けっか</rt></ruby><ruby>通知<rt>つうち</rt></ruby>まで<ruby>2<rt>に</rt></ruby>～<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>かかります。<br>*(Vậy không cần đổi địa chỉ. Từ nộp đến nhận kết quả mất 2-3 tháng.)* |
| Trang | <ruby>2<rt>に</rt></ruby>～<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>...<ruby>3<rt>さん</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>のTTS<ruby>満了<rt>まんりょう</rt></ruby>に<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いますか。<br>*(2-3 tháng... có kịp hết hạn TTS cuối tháng 3 không ạ?)* |
| Sato | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>すれば<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>います。<ruby>万<rt>まん</rt></ruby>が<ruby>一<rt>いち</rt></ruby><ruby>遅<rt>おく</rt></ruby>れた<ruby>場合<rt>ばあい</rt></ruby>は<ruby>特定活動<rt>とくていかつどう</rt></ruby>ビザで<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>できますからご<ruby>安心<rt>あんしん</rt></ruby>を。<br>*(Tuần sau nộp là kịp. Lỡ chậm thì có thể gia hạn 3 tháng bằng visa 特定活動 — yên tâm.)* |
| Trang | (cúi đầu) ありがとうございます。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby>までに<ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Cảm ơn ông. Em sẽ chuẩn bị xong trước thứ tư tuần sau.)* |

---

## Tình huống 4 — Văn phòng 監理団体 · 11:00, Sato dặn về quyền lợi SSW1

| Vai | Lời thoại |
|---|---|
| Sato | チャンさん、SSW1で<ruby>変<rt>か</rt></ruby>わる<ruby>点<rt>てん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Trang-san, để tôi xác nhận những điều thay đổi khi sang SSW1.)* |
| Sato | <ruby>1<rt>ひと</rt></ruby>つ、<ruby>転職<rt>てんしょく</rt></ruby>の<ruby>自由<rt>じゆう</rt></ruby>があります。TTSと<ruby>違<rt>ちが</rt></ruby>って、<ruby>同<rt>おな</rt></ruby>じ<ruby>分野<rt>ぶんや</rt></ruby><ruby>内<rt>ない</rt></ruby>なら<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えてもいい。<br>*(Một, em có quyền tự do chuyển việc. Khác TTS, cùng ngành thì đổi công ty cũng được.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。でも<ruby>転職<rt>てんしょく</rt></ruby>するつもりはございません。<br>*(Vâng em rõ. Nhưng em không định chuyển việc.)* |
| Sato | <ruby>2<rt>ふた</rt></ruby>つ、<ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>は<ruby>原則<rt>げんそく</rt></ruby><ruby>不可<rt>ふか</rt></ruby>。ご<ruby>結婚<rt>けっこん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>がある<ruby>場合<rt>ばあい</rt></ruby>は<ruby>事前<rt>じぜん</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>を。<br>*(Hai, mang gia đình theo về nguyên tắc không được. Có dự định kết hôn thì tư vấn trước.)* |
| Trang | (cười ngại) <ruby>今<rt>いま</rt></ruby>のところございません。<br>*(Hiện chưa có ạ.)* |
| Sato | <ruby>3<rt>みっ</rt></ruby>つ、SSW1は<ruby>最長<rt>さいちょう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>。<ruby>2033<rt>にせんさんじゅうさん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>までです。その<ruby>先<rt>さき</rt></ruby>は<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>できます。<br>*(Ba, SSW1 tối đa 5 năm — đến tháng 3/2033. Sau đó có thể thi 特定技能 cấp 2.)* |
| Trang | SSW2は<ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>と<ruby>永住<rt>えいじゅう</rt></ruby>の<ruby>道<rt>みち</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>けると<ruby>伺<rt>うかが</rt></ruby>っております。<br>*(Em nghe SSW2 mở đường mang gia đình theo và định cư.)* |
| Sato | <ruby>正<rt>ただ</rt></ruby>しいです。<ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby>もSSW2の<ruby>対象<rt>たいしょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>になりました。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>のチャンさんに<ruby>期待<rt>きたい</rt></ruby>しています。<br>*(Đúng vậy. Ngành lưu trú đã thành đối tượng SSW2. Tôi kỳ vọng vào em 5 năm sau.)* |
| Trang | (đặt hai tay lên bàn, cúi đầu) <ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>わせていただきます。<br>*(5 năm, em sẽ trân trọng từng ngày.)* |
| Sato | <ruby>4<rt>よっ</rt></ruby>つ、<ruby>大事<rt>だいじ</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせ。<ruby>監理団体<rt>かんりだんたい</rt></ruby>とのご<ruby>縁<rt>えん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>で<ruby>終<rt>お</rt></ruby>わります。SSW1は<ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>に<ruby>変<rt>か</rt></ruby>わります。<br>*(Bốn, thông báo quan trọng. Duyên với 監理団体 kết thúc cuối tháng 3. Sang SSW1 sẽ chuyển sang 登録支援機関.)* |
| Trang | (sửng sốt) ...<ruby>佐藤<rt>さとう</rt></ruby>さんとは、もう。<br>*(...Ông Sato thì... không còn.)* |
| Sato | <ruby>制度<rt>せいど</rt></ruby><ruby>上<rt>じょう</rt></ruby>はそうです。でも<ruby>個人的<rt>こじんてき</rt></ruby>には、<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>はいつでもメールしてください。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>担当した者として、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じています。<br>*(Theo chế độ là vậy. Nhưng cá nhân, có gì khó email tôi bất cứ lúc nào. Tôi đã phụ trách 3 năm, tôi thấy có trách nhiệm.)* |
| Trang | (mắt đỏ, cúi sâu) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。<br>*(Lời quá lớn ạ.)* |

---

## Tình huống 5 — Phòng Okami · ngày 8/1, 17:00, báo cáo nội dung họp với 監理団体

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>昨日<rt>きのう</rt></ruby>の<ruby>監理団体<rt>かんりだんたい</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>をさせていただきます。<br>*(Okami, em xin báo cáo cuộc gặp 監理団体 hôm qua.)* |
| Okami | はい、どうぞ。<br>*(Vâng em nói đi.)* |
| Trang | <ruby>佐藤<rt>さとう</rt></ruby><ruby>担当者<rt>たんとうしゃ</rt></ruby>から、<ruby>必要書類<rt>ひつようしょるい</rt></ruby>の<ruby>10<rt>じゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>リストを<ruby>頂<rt>いただ</rt></ruby>きました。<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>依頼<rt>いらい</rt></ruby>したい<ruby>書類<rt>しょるい</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>点<rt>てん</rt></ruby>でございます。<br>*(Ông Sato đưa em danh sách 10 giấy tờ. Có 4 giấy tờ em xin nhờ Okami chuẩn bị.)* |
| Trang | (mở sổ) <ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>、<ruby>雇用条件書<rt>こようじょうけんしょ</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>登記簿謄本<rt>とうきぼとうほん</rt></ruby>、<ruby>役員<rt>やくいん</rt></ruby><ruby>住民票<rt>じゅうみんひょう</rt></ruby>。<br>*(Hợp đồng tuyển dụng, bảng điều kiện, sao y đăng ký doanh nghiệp, bản đăng ký cư trú giám đốc.)* |
| Okami | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>顧問<rt>こもん</rt></ruby><ruby>社労士<rt>しゃろうし</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>で<ruby>揃<rt>そろ</rt></ruby>うはずです。<br>*(Tôi rõ. Sẽ liên lạc luật sư xã hội Tanaka. 3 ngày là đủ.)* |
| Trang | <ruby>給与<rt>きゅうよ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>について、<ruby>佐藤<rt>さとう</rt></ruby>さんから「<ruby>日本人<rt>にほんじん</rt></ruby><ruby>同等<rt>どうとう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>」と<ruby>強調<rt>きょうちょう</rt></ruby>されました。<br>*(Về điều kiện lương, ông Sato nhấn mạnh "bằng hoặc hơn người Nhật".)* |
| Okami | <ruby>当然<rt>とうぜん</rt></ruby>です。<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>手当<rt>てあて</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>めて、<ruby>同<rt>おな</rt></ruby>じ<ruby>役職<rt>やくしょく</rt></ruby>の<ruby>日本人<rt>にほんじん</rt></ruby>より<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>うえ</rt></ruby>に<ruby>設定<rt>せってい</rt></ruby>しています。<br>*(Đương nhiên. Bao gồm phụ cấp phó nakai, lương cao hơn người Nhật cùng chức một chút.)* |
| Trang | (sửng sốt) <ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>うえ</rt></ruby>に...<br>*(Cao hơn một chút...)* |
| Okami | <ruby>英語対応<rt>えいごたいおう</rt></ruby><ruby>手当<rt>てあて</rt></ruby>と、<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby><ruby>講師<rt>こうし</rt></ruby><ruby>手当<rt>てあて</rt></ruby>です。あなたにしかできない<ruby>業務<rt>ぎょうむ</rt></ruby>には、<ruby>正<rt>ただ</rt></ruby>しく<ruby>対価<rt>たいか</rt></ruby>を。<br>*(Phụ cấp xử lý tiếng Anh, phụ cấp giảng viên đào tạo nhân viên ngoại quốc. Việc chỉ em làm được — trả công đúng đắn.)* |
| Trang | (cúi đầu) ありがとうございます。 |

---

## Tình huống 6 — Phòng riêng ký túc · ngày 9/1, 20:00, video call gia đình Huế

> Đoạn này có song ngữ Việt-Nhật vì là call gia đình.

| Vai | Lời thoại |
|---|---|
| Trang | (VN, gọi video) Mẹ, em Hà, có ở đó không? Có cả bố không? |
| Bố | (VN, ghé màn hình) Có bố đây. Sao tự nhiên gọi cả nhà thế con? |
| Trang | (VN) Bố mẹ em, con có chuyện quan trọng cần báo. Mời cả nhà ngồi xuống. |
| Mẹ | (VN, ngồi xuống) Con nói đi. |
| Trang | (VN, lấy hơi) Hôm qua con gặp ông Sato 監理団体. Con đã nộp đơn chuyển 在留資格 từ TTS sang SSW1. Tháng 4 con chính thức ở lại Nhật làm SSW1 thêm 5 năm nữa. |
| Mẹ | (VN, im lặng một lúc) ...5 năm? |
| Trang | (VN) 5 năm tối đa. Sau đó nếu thi đỗ SSW2 thì có thể thêm nữa. SSW2 cho phép mang gia đình theo, và có đường định cư. |
| Bố | (VN, gật) Bố đã ngờ rồi. Từ tháng trước con gọi về toàn nói chuyện ryokan. |
| Em Hà | (VN) Chị, thế chị không về luôn à? |
| Trang | (VN) Có chứ. Tháng 2 con xin nghỉ về Tết Âm 10 ngày. Tháng 3 chính thức xong TTS, làm thủ tục SSW1 xong con bay sang lại. Đầu tháng 4 con nhận chức phó nakai. |
| Mẹ | (VN, mếu) Mẹ tưởng con về luôn. Mẹ chuẩn bị phòng cho con rồi. |
| Trang | (VN, ngậm ngùi) Mẹ ơi, con xin lỗi. Nhưng cho con giải thích nha. |
| Trang | (VN) Okami đời thứ 4. Bà 62 tuổi, không có con gái. Bà chọn con làm 副仲居頭. Bà tặng con cuốn sổ tay của mẹ bà — của 50 năm trước. Mẹ ơi, ở Việt Nam mình có ai chọn người ngoài làm "kế nghiệp" không? Đây là vinh dự lớn lắm. |
| Bố | (VN, gật) Con nói đúng. Bố hiểu. Người Nhật chọn ai làm 後継 là việc lớn. |
| Trang | (VN) Lương SSW1 con cao hơn người Nhật cùng chức một chút. Okami bảo "việc chỉ em làm được thì trả công đúng đắn". Mỗi tháng con gửi về 25 triệu, mẹ xây lại bếp như mẹ mong. |
| Mẹ | (VN, lau nước mắt) Mẹ không cần bếp. Mẹ cần con. |
| Trang | (VN, khóc) Mẹ ơi, con biết. Nhưng con cũng cần làm gì đó cho cuộc đời mình. 4 năm trước con bưng bún bò ở Huế, lương 5 triệu. Giờ con đứng cạnh Okami ở 玄関 đón khách Singapore. Mẹ có hiểu không? |
| Em Hà | (VN) Mẹ ơi, để chị Trang đi. Chị làm được rồi. Em sẽ ở Huế chăm bố mẹ. |
| Bố | (VN, đặt tay lên vai mẹ) Em, con nó lớn rồi. Con nó có chí hướng riêng. Mình ủng hộ. |
| Mẹ | (VN, gật từ từ) ...Mẹ ủng hộ. Nhưng mỗi 6 tháng phải về một lần. |
| Trang | (VN, khóc cười) Vâng mẹ. 6 tháng một lần. Tháng 2 này, tháng 8, rồi tháng 2 năm sau. Con hứa. |
| Bố | (VN) Tháng 2 con về, bố đi chợ Đông Ba mua tôm sông cho con. Con đi 3 năm rồi không được ăn tôm Huế. |
| Trang | (VN, gật) Vâng bố. |

---

## Tình huống 7 — Phòng Okami · ngày 11/1, 14:00, ký 雇用契約書 trang trọng

*Phòng Okami. Trên bàn có 2 bản 雇用契約書 + 雇用条件書. Có Tanaka社労士 (luật sư) chứng kiến.*

| Vai | Lời thoại |
|---|---|
| Tanaka社労士 | チャンさん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>交<rt>か</rt></ruby>わしです。<ruby>3<rt>さん</rt></ruby><ruby>部<rt>ぶ</rt></ruby><ruby>用意<rt>ようい</rt></ruby>しております。<ruby>会社<rt>かいしゃ</rt></ruby><ruby>保管<rt>ほかん</rt></ruby><ruby>用<rt>よう</rt></ruby>、ご<ruby>本人<rt>ほんにん</rt></ruby><ruby>保管<rt>ほかん</rt></ruby><ruby>用<rt>よう</rt></ruby>、<ruby>入管<rt>にゅうかん</rt></ruby><ruby>申請<rt>しんせい</rt></ruby><ruby>用<rt>よう</rt></ruby>。<br>*(Trang-san, hôm nay là ký hợp đồng tuyển dụng. Tôi chuẩn bị 3 bản — công ty giữ, em giữ, nộp Cục nhập cảnh.)* |
| Trang | はい、<ruby>承<rt>うけたまわ</rt></ruby>ります。<br>*(Vâng em nhận.)* |
| Tanaka社労士 | <ruby>条件書<rt>じょうけんしょ</rt></ruby>の<ruby>主要<rt>しゅよう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>を<ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げます。チャンさん、<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>があればその<ruby>都度<rt>つど</rt></ruby><ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>仰<rt>おっしゃ</rt></ruby>ってください。<br>*(Tôi đọc các điều khoản chính. Trang-san, có chỗ nào không rõ thì đừng ngại nói.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em rõ ạ.)* |
| Tanaka社労士 | <ruby>職務<rt>しょくむ</rt></ruby>: <ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby> (<ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>)。<ruby>仲居業務<rt>なかいぎょうむ</rt></ruby>と<ruby>外国人<rt>がいこくじん</rt></ruby>お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>。<br>*(Chức vụ: Phó trưởng nakai. Việc nakai + đáp ứng khách ngoại + đào tạo nhân viên ngoại.)* |
| Tanaka社労士 | <ruby>契約期間<rt>けいやくきかん</rt></ruby>: <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby>まで<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>。<ruby>双方<rt>そうほう</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>により<ruby>更新<rt>こうしん</rt></ruby><ruby>可<rt>か</rt></ruby>。<br>*(Thời hạn: 1/4/2028 đến 31/3/2029, 1 năm. Hai bên đồng ý có thể gia hạn.)* |
| Tanaka社労士 | <ruby>給与<rt>きゅうよ</rt></ruby>: <ruby>月給<rt>げっきゅう</rt></ruby><ruby>26<rt>にじゅうろく</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>諸手当<rt>しょてあて</rt></ruby><ruby>込<rt>こ</rt></ruby>みで<ruby>32<rt>さんじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>。<ruby>賞与<rt>しょうよ</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>。<br>*(Lương: cơ bản 260,000 yên. Cả phụ cấp khoảng 320,000 yên. Thưởng 2 lần/năm.)* |
| Trang | (sửng sốt, cúi đầu) ...<br>*(...)* |
| Tanaka社労士 | <ruby>労働時間<rt>ろうどうじかん</rt></ruby>: <ruby>1<rt>いっ</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>週<rt>しゅう</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<ruby>休憩<rt>きゅうけい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<ruby>休日<rt>きゅうじつ</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby>シフト<ruby>制<rt>せい</rt></ruby>。<ruby>年次有給<rt>ねんじゆうきゅう</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>日<rt>にち</rt></ruby>。<br>*(Giờ làm: 8h/ngày, 40h/tuần. Nghỉ giải lao 1h. Tuần nghỉ 2 ngày theo ca. Phép năm 12 ngày.)* |
| Trang | <ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>年末年始<rt>ねんまつねんし</rt></ruby>の<ruby>繁忙期<rt>はんぼうき</rt></ruby>は<ruby>残業<rt>ざんぎょう</rt></ruby>になりますが、<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>のベトナム<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>の<ruby>帰省<rt>きせい</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>くことは<ruby>可能<rt>かのう</rt></ruby>でしょうか。<br>*(Xin xác nhận 1 điểm. Cuối năm cao điểm sẽ tăng ca, nhưng em xin nghỉ phép về quê dịp Tết âm tháng 2, có được không ạ?)* |
| Okami | <ruby>毎年<rt>まいとし</rt></ruby><ruby>10<rt>とお</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>連休<rt>れんきゅう</rt></ruby>、<ruby>確約<rt>かくやく</rt></ruby>します。<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>消化<rt>しょうか</rt></ruby>+<ruby>無給<rt>むきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby><ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせで。<ruby>条件書<rt>じょうけんしょ</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>条<rt>じょう</rt></ruby>に<ruby>明記<rt>めいき</rt></ruby>しています。<br>*(Cô cam kết mỗi năm 10 ngày liên tục. Kết hợp phép có lương + nghỉ không lương. Điều 8 đã ghi rõ.)* |
| Trang | (lật đến điều 8, đọc) ...はい、<ruby>確認<rt>かくにん</rt></ruby>いたしました。ありがとうございます。<br>*(Vâng, em đã xác nhận. Cảm ơn ạ.)* |
| Tanaka社労士 | では<ruby>署名<rt>しょめい</rt></ruby><ruby>捺印<rt>なついん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy xin ký tên và đóng dấu.)* |
| Trang | (cầm bút, hít sâu, viết tên バリ・グエン・ティ・チャン bằng kanji + romaji, đóng印) <ruby>署名<rt>しょめい</rt></ruby>させていただきました。<br>*(Em đã ký xong.)* |
| Okami | (ký bên đối ứng) <ruby>確<rt>たし</rt></ruby>かに。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>からよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đã xác nhận. Từ 1/4 mong em.)* |
| Trang | (cúi sâu) こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。 |

---

## Tình huống 8 — Phòng Okami · ngày 11/1, 14:45, bàn lộ trình 5 năm với Okami

*Tanaka社労士 đã ra về. Okami và Trang còn lại.*

| Vai | Lời thoại |
|---|---|
| Okami | <ruby>契約<rt>けいやく</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>交<rt>か</rt></ruby>わしましたので、<ruby>5<rt>ご</rt></ruby><ruby>年計画<rt>ねんけいかく</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>をさせてください。<br>*(Đã ký hợp đồng, cho cô bàn về lộ trình 5 năm.)* |
| Trang | はい、<ruby>謹<rt>つつし</rt></ruby>んで<ruby>承<rt>うけたまわ</rt></ruby>ります。<br>*(Vâng em xin trân trọng lãnh nghe.)* |
| Okami | <ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby> (<ruby>2028<rt>にせんにじゅうはち</rt></ruby>): <ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>として<ruby>現場<rt>げんば</rt></ruby>を<ruby>固<rt>かた</rt></ruby>める。N2に<ruby>挑戦<rt>ちょうせん</rt></ruby>。<ruby>京都<rt>きょうと</rt></ruby><ruby>弁<rt>べん</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>。<br>*(Năm 1 — 2028: Phó nakai củng cố hiện trường. Thi N2. Học phương ngữ Kyoto.)* |
| Okami | <ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby> (<ruby>2029<rt>にせんにじゅうきゅう</rt></ruby>): <ruby>新人<rt>しんじん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby><ruby>講師<rt>こうし</rt></ruby>を<ruby>正式<rt>せいしき</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。<ruby>新<rt>あら</rt></ruby>たな<ruby>後輩<rt>こうはい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>採用<rt>さいよう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Năm 2 — 2029: Chính thức làm giảng viên đào tạo người mới. Dự kiến tuyển thêm 1 kohai.)* |
| Okami | <ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby> (<ruby>2030<rt>にせんさんじゅう</rt></ruby>): <ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>を<ruby>視野<rt>しや</rt></ruby>に。<ruby>経理<rt>けいり</rt></ruby>と<ruby>仕入<rt>しい</rt></ruby>れの<ruby>研修<rt>けんしゅう</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>。<br>*(Năm 3 — 2030: Nhắm tới chức trưởng nakai. Bắt đầu học kế toán và mua hàng.)* |
| Okami | <ruby>4<rt>よ</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby> (<ruby>2031<rt>にせんさんじゅういち</rt></ruby>): <ruby>正式<rt>せいしき</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>昇格<rt>しょうかく</rt></ruby>。N1に<ruby>挑戦<rt>ちょうせん</rt></ruby>。<br>*(Năm 4 — 2031: Lên chính thức trưởng nakai. Thi N1.)* |
| Okami | <ruby>5<rt>ご</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby> (<ruby>2032<rt>にせんさんじゅうに</rt></ruby>): SSW2<ruby>技能試験<rt>ぎのうしけん</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>すれば<ruby>2033<rt>にせんさんじゅうさん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW2に<ruby>移行<rt>いこう</rt></ruby>。ご<ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に。<br>*(Năm 5 — 2032: Thi kỹ năng SSW2. Đỗ thì 4/2033 chuyển SSW2. Đưa gia đình theo cũng được xem xét.)* |
| Trang | (cúi sâu, mắt rưng) <ruby>女将<rt>おかみ</rt></ruby>さん、ここまで<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えてくださって、<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。<br>*(Okami, cô đã nghĩ cụ thể đến vậy, lời quá lớn ạ.)* |
| Okami | これは<ruby>約束<rt>やくそく</rt></ruby>ではなく「<ruby>目標<rt>もくひょう</rt></ruby>」です。<ruby>毎年<rt>まいとし</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>で<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>って、ずれていたら<ruby>修正<rt>しゅうせい</rt></ruby>。<br>*(Đây không phải hứa mà là "mục tiêu". Mỗi 1/4 hai cô cháu cùng nhìn lại, lệch thì điều chỉnh.)* |
| Okami | <ruby>大事<rt>だいじ</rt></ruby>なのは、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に「<ruby>仲居頭<rt>なかいがしら</rt></ruby>になりたくない」と<ruby>言<rt>い</rt></ruby>っても<ruby>構<rt>かま</rt></ruby>いません。<ruby>道<rt>みち</rt></ruby>は<ruby>常<rt>つね</rt></ruby>に<ruby>選<rt>えら</rt></ruby>べます。<br>*(Quan trọng — năm 3 em bảo "không muốn lên trưởng nakai" cũng được. Đường lúc nào cũng có thể chọn.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、わたくしは<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すと<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げました。<ruby>志<rt>こころざし</rt></ruby>は<ruby>変<rt>か</rt></ruby>わりません。<br>*(Okami, em đã nói nhắm 30 năm. Chí hướng không đổi.)* |
| Okami | (cười) いい。では、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からまた<ruby>長<rt>なが</rt></ruby>いお<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いです。<br>*(Tốt. Vậy từ 4 lại tiếp tục đồng hành lâu.)* |

---

## Tình huống 9 — Phòng riêng · ngày 14/1, 16:00, gọi Cục quản lý xuất nhập cảnh hỏi giấy tờ

*Trước khi nộp hồ sơ chính thức, Trang gọi xác nhận một chi tiết.*

| Vai | Lời thoại |
|---|---|
| Trang | (gọi điện) もしもし、<ruby>京都<rt>きょうと</rt></ruby><ruby>出入国在留管理局<rt>しゅつにゅうこくざいりゅうかんりきょく</rt></ruby>でしょうか。<br>*(Alô, Cục quản lý xuất nhập cảnh Kyoto phải không ạ?)* |
| Nhân viên | はい、<ruby>京都<rt>きょうと</rt></ruby><ruby>出入国在留管理局<rt>しゅつにゅうこくざいりゅうかんりきょく</rt></ruby>でございます。<br>*(Vâng, Cục quản lý xuất nhập cảnh Kyoto.)* |
| Trang | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>について<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただきたく、お<ruby>電話<rt>でんわ</rt></ruby>いたしました。<br>*(Em xin phép. Em muốn xác nhận 1 điểm về đơn xin đổi tư cách lưu trú.)* |
| Nhân viên | はい、どうぞ。<ruby>現在<rt>げんざい</rt></ruby>のご<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>とお<ruby>名前<rt>なまえ</rt></ruby>をお<ruby>伺<rt>うかが</rt></ruby>いします。<br>*(Vâng. Xin cho biết tư cách hiện tại và tên.)* |
| Trang | <ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>号<rt>ごう</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby> (<ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby>)への<ruby>変更<rt>へんこう</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。<ruby>名前<rt>なまえ</rt></ruby>はグエン・ティ・チャンです。<br>*(Em định đổi từ Thực tập kỹ năng 3 sang Đặc định kỹ năng 1 ngành lưu trú. Tên Nguyễn Thị Trang.)* |
| Nhân viên | <ruby>承知<rt>しょうち</rt></ruby>いたしました。ご<ruby>質問<rt>しつもん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Tôi rõ. Câu hỏi là gì?)* |
| Trang | <ruby>母国<rt>ぼこく</rt></ruby>(ベトナム)<ruby>発行<rt>はっこう</rt></ruby>の<ruby>無犯罪証明書<rt>むはんざいしょうめいしょ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>する<ruby>必要<rt>ひつよう</rt></ruby>はございますでしょうか。<ruby>佐藤<rt>さとう</rt></ruby><ruby>担当者<rt>たんとうしゃ</rt></ruby>からのリストには<ruby>記載<rt>きさい</rt></ruby>がございませんでしたが、ネットで<ruby>必要<rt>ひつよう</rt></ruby>と<ruby>書<rt>か</rt></ruby>かれていたので<ruby>気<rt>き</rt></ruby>になりまして。<br>*(Em có cần nộp giấy không tiền án Việt Nam không ạ? Danh sách ông Sato không ghi, nhưng trên mạng có viết nên em băn khoăn.)* |
| Nhân viên | TTSからSSW1への<ruby>移行<rt>いこう</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>、<ruby>無犯罪証明書<rt>むはんざいしょうめいしょ</rt></ruby>は<ruby>不要<rt>ふよう</rt></ruby>です。<ruby>新規<rt>しんき</rt></ruby><ruby>来日<rt>らいにち</rt></ruby>の<ruby>方<rt>かた</rt></ruby>のみ<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Trường hợp chuyển TTS sang SSW1 thì không cần. Chỉ người mới sang Nhật mới cần.)* |
| Trang | (ghi chép) <ruby>承知<rt>しょうち</rt></ruby>いたしました。もう<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>でお<ruby>伺<rt>うかが</rt></ruby>いします。<ruby>申請<rt>しんせい</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>本人<rt>ほんにん</rt></ruby><ruby>出頭<rt>しゅっとう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>でしょうか。<br>*(Em xin hỏi thêm 1 ý. Nộp đơn có cần bản thân đến trực tiếp không ạ?)* |
| Nhân viên | <ruby>初回<rt>しょかい</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>はご<ruby>本人<rt>ほんにん</rt></ruby><ruby>出頭<rt>しゅっとう</rt></ruby>が<ruby>原則<rt>げんそく</rt></ruby>です。<ruby>受付<rt>うけつけ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>平日<rt>へいじつ</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>16<rt>じゅうろく</rt></ruby><ruby>時<rt>じ</rt></ruby>まで。<br>*(Lần đầu nộp về nguyên tắc bản thân đến. Giờ tiếp nhận 9h-16h ngày thường.)* |
| Trang | <ruby>整理券<rt>せいりけん</rt></ruby>は<ruby>必要<rt>ひつよう</rt></ruby>でしょうか。<br>*(Có cần thẻ xếp số không?)* |
| Nhân viên | <ruby>朝<rt>あさ</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>から<ruby>玄関<rt>げんかん</rt></ruby>で<ruby>整理券<rt>せいりけん</rt></ruby>を<ruby>配<rt>くば</rt></ruby>っております。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>を<ruby>過<rt>す</rt></ruby>ぎますと<ruby>午後<rt>ごご</rt></ruby>まで<ruby>待<rt>ま</rt></ruby>つことになります。<br>*(8h30 phát số ở 玄関. Sau 9h thì có thể phải chờ đến chiều.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em rõ ạ. Cảm ơn anh đã bận mà tư vấn. Em xin phép.)* |

---

## Tình huống 10 — Cục quản lý xuất nhập cảnh Kyoto · ngày 17/1, 8:30, nộp hồ sơ trực tiếp

*Trang đến cục từ 8h, lấy số thứ tự 03. Đến quầy 5 lúc 9h15.*

| Vai | Lời thoại |
|---|---|
| Nhân viên cục | <ruby>03<rt>ぜろさん</rt></ruby><ruby>番<rt>ばん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>、どうぞ。<br>*(Số 03, mời.)* |
| Trang | (đến quầy, đặt hồ sơ bằng hai tay) おはようございます。<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>でございます。<br>*(Chào buổi sáng. Em xin nộp đơn xin phép đổi tư cách lưu trú.)* |
| Nhân viên | はい、<ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Vâng, tôi xem đơn.)* |
| Nhân viên | (kiểm tra từng tờ) <ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>...<ruby>雇用条件書<rt>こようじょうけんしょ</rt></ruby>...<ruby>会社<rt>かいしゃ</rt></ruby><ruby>登記簿<rt>とうきぼ</rt></ruby>...N3<ruby>合格証<rt>ごうかくしょう</rt></ruby>...<ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>合格証<rt>ごうかくしょう</rt></ruby>...<ruby>住民票<rt>じゅうみんひょう</rt></ruby>...<ruby>給与明細<rt>きゅうよめいさい</rt></ruby><ruby>過去<rt>かこ</rt></ruby><ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>...<br>*(Hợp đồng tuyển dụng... bảng điều kiện... đăng ký doanh nghiệp... bằng N3... bằng kỹ năng lưu trú... đăng ký cư trú... bảng lương 3 tháng gần nhất...)* |
| Nhân viên | <ruby>書類<rt>しょるい</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>すべて<ruby>揃<rt>そろ</rt></ruby>っております。<ruby>不備<rt>ふび</rt></ruby>はございません。<br>*(10 giấy tờ đủ. Không thiếu sót.)* |
| Trang | (cúi đầu) ありがとうございます。<br>*(Cảm ơn ạ.)* |
| Nhân viên | <ruby>申請手数料<rt>しんせいてすうりょう</rt></ruby><ruby>4,000<rt>よんせん</rt></ruby><ruby>円<rt>えん</rt></ruby>の<ruby>収入印紙<rt>しゅうにゅういんし</rt></ruby>を<ruby>後<rt>あと</rt></ruby>で<ruby>申請書<rt>しんせいしょ</rt></ruby>に<ruby>貼<rt>は</rt></ruby>っていただきます。<ruby>結果<rt>けっか</rt></ruby><ruby>通知<rt>つうち</rt></ruby><ruby>用<rt>よう</rt></ruby>のハガキを<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>用意<rt>ようい</rt></ruby>してください。<br>*(Phí thủ tục 4000 yên — em dán tem thu nhập vào đơn sau. Chuẩn bị 1 bưu thiếp để gửi kết quả.)* |
| Trang | <ruby>収入印紙<rt>しゅうにゅういんし</rt></ruby>はどちらでお<ruby>求<rt>もと</rt></ruby>めできますでしょうか。<br>*(Tem thu nhập mua ở đâu ạ?)* |
| Nhân viên | <ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>のロビーに<ruby>販売所<rt>はんばいじょ</rt></ruby>がございます。ハガキも<ruby>同<rt>おな</rt></ruby>じ<ruby>場所<rt>ばしょ</rt></ruby>で。<br>*(Tầng 1 sảnh có quầy bán. Bưu thiếp cùng chỗ.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>結果<rt>けっか</rt></ruby><ruby>通知<rt>つうち</rt></ruby>はいつ<ruby>頃<rt>ごろ</rt></ruby><ruby>届<rt>とど</rt></ruby>きますでしょうか。<br>*(Em rõ ạ. Kết quả khoảng khi nào đến ạ?)* |
| Nhân viên | <ruby>2<rt>に</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>から<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>ほど。<ruby>順調<rt>じゅんちょう</rt></ruby>でしたら<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>には。<br>*(Khoảng 2-3 tháng. Suôn sẻ thì giữa tháng 3.)* |
| Trang | ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Cảm ơn ạ. Em xin phép.)* |

---

## Tình huống 11 — Phòng nhân viên · ngày 18/1, 8:00, công bố quyết định cho Raj và Min-ji

| Vai | Lời thoại |
|---|---|
| Trang | ラジさん、ミンジさん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>2<rt>に</rt></ruby>～<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>をください。<br>*(Raj, Min-ji, trước chuẩn bị sáng cho chị 2-3 phút.)* |
| Raj | はい、<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Vâng, gì ạ?)* |
| Trang | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えしたいことがあります。<br>*(Có chuyện chị muốn báo chính thức với hai em.)* |
| Trang | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からわたしはSSW1に<ruby>移行<rt>いこう</rt></ruby>します。そして<ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>に<ruby>任命<rt>にんめい</rt></ruby>されました。<br>*(Từ tháng 4 chị chuyển SSW1. Và Okami bổ nhiệm chị làm phó nakai.)* |
| Min-ji | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>先輩<rt>せんぱい</rt></ruby>、おめでとうございます！<br>*(Ơ, thật ạ?! Chúc mừng sempai!)* |
| Raj | <ruby>知<rt>し</rt></ruby>ってましたよ、<ruby>女将<rt>おかみ</rt></ruby>さんの<ruby>発表<rt>はっぴょう</rt></ruby>で。でも<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>口<rt>くち</rt></ruby>から<ruby>聞<rt>き</rt></ruby>くと、また<ruby>違<rt>ちが</rt></ruby>います。<br>*(Em biết rồi, từ lời Okami. Nhưng nghe từ miệng sempai thì khác.)* |
| Trang | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>に<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>言<rt>い</rt></ruby>っておきたいことがあります。<ruby>役職<rt>やくしょく</rt></ruby>は<ruby>変<rt>か</rt></ruby>わりますが、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>との<ruby>関係<rt>かんけい</rt></ruby>は<ruby>変<rt>か</rt></ruby>えません。<br>*(Có điều chị muốn nói đầu tiên — chức vụ đổi nhưng quan hệ với hai em không đổi.)* |
| Trang | <ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>も「<ruby>先輩<rt>せんぱい</rt></ruby>」のままで。<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>が<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>のわたしを<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>して、<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Gọi vẫn "sempai" thôi. Hai em khó khăn, nhớ lại chị 3 năm trước, đừng ngại gọi.)* |
| Raj | (cúi đầu sâu) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>ずっとここで<ruby>働<rt>はたら</rt></ruby>いてくださって、ありがとうございます。<br>*(Sempai, cảm ơn chị đã làm việc ở đây 5 năm.)* |
| Min-ji | <ruby>私<rt>わたし</rt></ruby>のロールモデルです。<ruby>私<rt>わたし</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Là hình mẫu của em. Em cũng cố gắng.)* |
| Trang | <ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>に<ruby>10<rt>とお</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>休<rt>やす</rt></ruby>みを<ruby>頂<rt>いただ</rt></ruby>きます。その<ruby>間<rt>あいだ</rt></ruby>、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>に<ruby>現場<rt>げんば</rt></ruby>をお<ruby>任<rt>まか</rt></ruby>せします。<br>*(Tết âm tháng 2 chị nghỉ 10 ngày. Giai đoạn đó chị gửi gắm hai em phụ trách hiện trường.)* |
| Raj | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em nhất định giữ vững.)* |
| Min-ji | わからない<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>します。「<ruby>確認<rt>かくにん</rt></ruby>します」って<ruby>言<rt>い</rt></ruby>えるようになりました。<br>*(Lúc không biết em sẽ hỏi lại. Giờ em đã nói được "em xin kiểm tra".)* |
| Trang | (cười) <ruby>立派<rt>りっぱ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>ってくれて、<ruby>姉<rt>あね</rt></ruby>として<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Lớn lên đường hoàng vậy, làm chị, vui lắm.)* |

---

## Tình huống 12 — 玄関 · ngày 25/1, 16:00, đứng cùng Okami đón đoàn khách như tập

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>のリピーターのお<ruby>客様<rt>きゃくさま</rt></ruby>です。お<ruby>父様<rt>とうさま</rt></ruby>の<ruby>代<rt>だい</rt></ruby>からのお<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>い。<br>*(Trang-san, khách hôm nay là khách trung thành 30 năm. Quen biết từ đời bố cô.)* |
| Trang | (chỉnh lại lưng, cằm) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em rõ ạ.)* |
| Okami | <ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。<ruby>山田<rt>やまだ</rt></ruby><ruby>誠一郎<rt>せいいちろう</rt></ruby><ruby>様<rt>さま</rt></ruby>と<ruby>奥様<rt>おくさま</rt></ruby>の<ruby>佳子<rt>よしこ</rt></ruby><ruby>様<rt>さま</rt></ruby>。<br>*(Em nhớ tên — ông Yamada Seiichiro và phu nhân Yoshiko.)* |
| Trang | <ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>奥様<rt>おくさま</rt></ruby>の<ruby>佳子<rt>よしこ</rt></ruby><ruby>様<rt>さま</rt></ruby>。<ruby>記憶<rt>きおく</rt></ruby>いたしました。<br>*(Yamada-san, phu nhân Yoshiko. Em đã ghi nhớ.)* |
| Okami | (xe đến, hai người cúi cùng nhịp Keirei) いらっしゃいませ、<ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>。<ruby>今年<rt>ことし</rt></ruby>も<ruby>変<rt>か</rt></ruby>わらずお<ruby>越<rt>こ</rt></ruby>しいただき、まことにありがとうございます。<br>*(Kính chào quý khách, ngài Yamada. Năm nay vẫn quý khách đến, cảm ơn vô cùng.)* |
| Yamada | (cười, xuống xe) <ruby>女将<rt>おかみ</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>ぶり。<ruby>横<rt>よこ</rt></ruby>のお<ruby>嬢<rt>じょう</rt></ruby>さんはどなた？<br>*(Okami, cách năm rồi nhỉ. Cô bên cạnh là ai?)* |
| Okami | ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>より<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>に<ruby>就任<rt>しゅうにん</rt></ruby>するチャンさんでございます。ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Em xin giới thiệu. Đây là Trang, sẽ nhậm chức phó nakai từ tháng 4. Người Việt Nam.)* |
| Trang | (cúi 30 độ) はじめまして、グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からは<ruby>長<rt>なが</rt></ruby>くお<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>謹<rt>つつし</rt></ruby>んで<ruby>承<rt>うけたまわ</rt></ruby>ります。<br>*(Lần đầu hân hạnh, em là Nguyễn Thị Trang. Từ tháng 4 em xin được hầu hạ lâu dài. Em trân trọng lãnh nhận.)* |
| Yamada | (nhìn Okami, cười) <ruby>女将<rt>おかみ</rt></ruby>、<ruby>跡継<rt>あとつ</rt></ruby>ぎを<ruby>見<rt>み</rt></ruby>つけたね。<br>*(Okami, cô tìm được người kế nghiệp rồi nhỉ.)* |
| Okami | (cười sâu) はい、<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で。<br>*(Vâng, kế bằng chí hướng chứ không phải huyết thống.)* |
| Yoshiko | (chạm tay Trang nhẹ) チャンさん、これから<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>よろしくね。<br>*(Trang-san, từ giờ 30 năm nhờ em.)* |
| Trang | (cúi sâu, mắt đỏ) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。 |

---

## Tình huống 13 — Sân bay Kansai · ngày 2/2, 10:00, chuẩn bị bay về Huế Tết Âm (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — Trang call lần cuối với em Hà trước khi lên máy bay.

| Vai | Lời thoại |
|---|---|
| Trang | (VN, gọi em) Hà ơi, chị check-in xong rồi. 13h30 cất cánh, 19h tối tới Tân Sơn Nhất, đổi máy bay 21h, 22h30 hạ cánh Phú Bài. |
| Em Hà | (VN) Bố mẹ với em ra sân bay đón chị. Bố thuê xe rồi. |
| Trang | (VN, hồi hộp) Hà ơi, lạ thiệt. 3 năm trước chị đi từ Huế ra với cái vali 23kg, không biết một câu tiếng Nhật nào ngoài "konnichiwa". Giờ về với cái vali 23kg, đeo cuốn sổ tay 50 năm của mẹ Okami trên lưng, đầu mang chức 副仲居頭. |
| Em Hà | (VN) Chị mang quà gì về nhiều thế? |
| Trang | (VN) Yatsuhashi cho cả xóm, matcha cao cấp cho cô giáo cấp 3, sake nhỏ cho bố, một bộ kimono trẻ con cho con thằng Tý hàng xóm, và một cái khăn lụa Nishijin cho mẹ — Okami chọn cho mẹ đó. |
| Em Hà | (VN) Okami chọn cho mẹ á? |
| Trang | (VN) Bà bảo "mẹ em đã sinh ra một người con biết おもてなし, tôi muốn cảm ơn bà". Chị nghe xong khóc cả đêm. |
| Em Hà | (VN) Chị, em hỏi thật. Chị có hối hận không khi quyết ở lại 5 năm nữa? |
| Trang | (VN, suy nghĩ một lúc) ...Không. Nhưng chị có nhớ. Nhớ Huế, nhớ mẹ, nhớ em, nhớ tiếng mưa Huế, nhớ tô bún bò 6h sáng ở quán mẹ. |
| Trang | (VN) Nhưng có hối hận không thì không. Bố nói đúng — chị có chí hướng riêng. Cuộc đời chỉ một lần. Chị 26 tuổi rồi, sang Nhật từ 22. 4 năm bay vèo. 5 năm tới cũng sẽ bay vèo. Khi chị 31 tuổi, nếu đỗ SSW2, chị mới quyết về hẳn hay ở luôn. |
| Em Hà | (VN) Em ủng hộ chị. Nhưng em cũng nói thật — 5 năm tới em muốn cưới chồng. Chị có về không? |
| Trang | (VN, cười) Có chứ! Em mà cưới chị bay về dù mới làm SSW1 được 6 tháng. Okami sẽ cho chị nghỉ. Bà hiểu mà. |
| Em Hà | (VN) Chị nhớ ăn nhiều bún bò mẹ nấu trong 10 ngày này nha. Mẹ nấu cả nồi to. |
| Trang | (VN, mắt rưng) ...Có Hà. Chị ăn 30 tô. Đi rồi nhé. Loa gọi boarding. |
| Em Hà | (VN) Đi đường an toàn nha chị. Yêu chị. |
| Trang | (VN) Yêu cả nhà. (cúp máy, ngắm cuốn sổ 50 năm trong túi, mỉm cười) ...Tôi đi đây, Okami. 10 ngày sau quay lại. |

---

## Đọng lại chương 11

Chương này dạy nguyên bộ kỹ năng "quyết định lớn" của người chuyển TTS → SSW1. Người học thuộc được **mẫu xin tư vấn 監理団体** (<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます), **mẫu trả lời "ý chí cá nhân"** (<ruby>順序<rt>じゅんじょ</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと → để tách lời mời công ty khỏi quyết định cá nhân — mẫu quan trọng phòng tránh ép buộc), **mẫu đọc 雇用条件書** (<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください + <ruby>条件書<rt>じょうけんしょ</rt></ruby><ruby>第<rt>だい</rt></ruby>○<ruby>条<rt>じょう</rt></ruby>に<ruby>明記<rt>めいき</rt></ruby>), **mẫu ký hợp đồng** (<ruby>署名<rt>しょめい</rt></ruby><ruby>捺印<rt>なついん</rt></ruby>), **mẫu gọi điện Cục quản lý xuất nhập cảnh** (お<ruby>世話<rt>せわ</rt></ruby>になっております → <ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただきたく → cuối cùng <ruby>お忙<rt>いそが</rt></ruby>しいところ<ruby>誠<rt>まこと</rt></ruby>にありがとうございました), **mẫu nộp hồ sơ trực tiếp tại quầy** (đặt hồ sơ bằng hai tay → đợi kiểm tra → hỏi 結果通知 → mua 収入印紙 + ハガキ), và **mẫu bàn lộ trình 5 năm** với cấp trên (1 năm/mục tiêu, mỗi năm 4/1 review chung). Trang đã đi nguyên trọn vẹn từ "lời mời Okami" → "tư vấn 監理団体" → "bàn gia đình" → "ký hợp đồng" → "nộp hồ sơ" → "công bố kohai" → "đón khách 30 năm cùng Okami" → "về Huế Tết Âm" — bước được quyết định lớn nhất đời ở tuổi 26.

> Từ vựng & mẫu câu chương này: <ruby>進路決定<rt>しんろけってい</rt></ruby>・<ruby>監理団体<rt>かんりだんたい</rt></ruby>・<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>・<ruby>出入国在留管理局<rt>しゅつにゅうこくざいりゅうかんりきょく</rt></ruby>・<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>・<ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby>・<ruby>技能測定試験<rt>ぎのうそくていしけん</rt></ruby>・<ruby>合格証<rt>ごうかくしょう</rt></ruby>・<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>・<ruby>雇用条件書<rt>こようじょうけんしょ</rt></ruby>・<ruby>日本人<rt>にほんじん</rt></ruby><ruby>同等<rt>どうとう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>・<ruby>転職<rt>てんしょく</rt></ruby>の<ruby>自由<rt>じゆう</rt></ruby>・<ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>・<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>・<ruby>署名捺印<rt>しょめいなついん</rt></ruby>・<ruby>収入印紙<rt>しゅうにゅういんし</rt></ruby>・<ruby>整理券<rt>せいりけん</rt></ruby>・<ruby>結果通知<rt>けっかつうち</rt></ruby>・<ruby>5<rt>ご</rt></ruby><ruby>年計画<rt>ねんけいかく</rt></ruby>・<ruby>跡継<rt>あとつ</rt></ruby>ぎ・<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で・<ruby>順序<rt>じゅんじょ</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと・<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>意思<rt>いし</rt></ruby>

## Bí quyết chương

- **Trình tự an toàn**: Lời mời → 1 tuần suy nghĩ → tư vấn 監理団体 → bàn gia đình → ký hợp đồng → nộp hồ sơ. Tuyệt đối không đảo thứ tự "ký trước rồi mới báo gia đình".
- **Mẫu trả lời 監理団体 phòng ép buộc**: "<ruby>順序<rt>じゅんじょ</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>会社<rt>かいしゃ</rt></ruby>からのお<ruby>誘<rt>さそ</rt></ruby>いが<ruby>先<rt>さき</rt></ruby>でございましたが、<ruby>最終<rt>さいしゅう</rt></ruby><ruby>決定<rt>けってい</rt></ruby>はわたくし<ruby>自身<rt>じしん</rt></ruby>の<ruby>意思<rt>いし</rt></ruby>でございます" — tách rõ lời mời và ý chí cá nhân.
- **Đọc kỹ 雇用条件書**: tối thiểu kiểm tra 5 điểm — 給与, 労働時間, 休日, 残業手当, 帰省休暇. Hỏi rõ "<ruby>条件書<rt>じょうけんしょ</rt></ruby><ruby>第<rt>だい</rt></ruby>○<ruby>条<rt>じょう</rt></ruby>に<ruby>明記<rt>めいき</rt></ruby>されていますか" để có cơ sở pháp lý.
- **Gọi điện Cục nhập cảnh trước khi nộp**: tiết kiệm 1 lần chạy lại. Mẫu chuẩn — お<ruby>世話<rt>せわ</rt></ruby>になっております → giới thiệu tình trạng → hỏi 1 ý cụ thể → cảm ơn cuối.
- **Đứng cùng Okami ở 玄関**: đây là cách Okami "show off" người kế nghiệp với khách lâu năm. Học viên cần đáp đúng nhịp "<ruby>謹<rt>つつし</rt></ruby>んで<ruby>承<rt>うけたまわ</rt></ruby>ります".
- **Chi tiết "khăn lụa Nishijin Okami chọn cho mẹ"**: trao quà gia đình của Okami cho gia đình Trang = công nhận quan hệ "<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で<ruby>継<rt>つ</rt></ruby>ぐ" mở rộng đến cả hai gia đình.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 進路 | しんろ | TIẾN LỘ | hướng đi |
| 決定 | けってい | QUYẾT ĐỊNH | quyết định |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | tổ chức quản lý (TTS) |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | người phụ trách |
| 面談 | めんだん | DIỆN ĐÀM | gặp mặt phỏng vấn |
| 在留資格 | ざいりゅうしかく | TẠI LƯU TƯ CÁCH | tư cách lưu trú |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 許可 | きょか | HỨA KHẢ | cho phép |
| 申請 | しんせい | THÂN THỈNH | đơn xin |
| 出入国在留管理局 | しゅつにゅうこくざいりゅうかんりきょく | XUẤT NHẬP QUỐC TẠI LƯU GIÁM LÝ CỤC | Cục quản lý xuất nhập cảnh |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | đặc định kỹ năng |
| 宿泊業 | しゅくはくぎょう | TÚC BẠC NGHIỆP | ngành lưu trú |
| 技能測定試験 | ぎのうそくていしけん | KỸ NĂNG TRẮC ĐỊNH THÍ NGHIỆM | thi đo lường kỹ năng |
| 合格証 | ごうかくしょう | HỢP CÁCH CHỨNG | giấy chứng nhận đỗ |
| 雇用契約書 | こようけいやくしょ | CỐ DỤNG KHẾ ƯỚC THƯ | hợp đồng tuyển dụng |
| 雇用条件書 | こようじょうけんしょ | CỐ DỤNG ĐIỀU KIỆN THƯ | bảng điều kiện tuyển dụng |
| 同等 | どうとう | ĐỒNG ĐẲNG | ngang hàng |
| 以上 | いじょう | DĨ THƯỢNG | trở lên |
| 順序 | じゅんじょ | THUẬN TỰ | thứ tự |
| 意思 | いし | Ý TƯ | ý chí |
| 無理強 | むりじ | VÔ LÝ CƯỜNG | ép buộc |
| 事例 | じれい | SỰ LỆ | trường hợp ví dụ |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 登記簿謄本 | とうきぼとうほん | ĐĂNG KÝ BẠ ĐẰNG BẢN | sao y đăng ký doanh nghiệp |
| 住民票 | じゅうみんひょう | TRỤ DÂN PHIẾU | đăng ký cư trú |
| 役員 | やくいん | DỊCH VIÊN | giám đốc, ban điều hành |
| 顧問 | こもん | CỐ VẤN | cố vấn |
| 社労士 | しゃろうし | XÃ LAO SĨ | luật sư xã hội |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 諸手当 | しょてあて | CHƯ THỦ ĐƯƠNG | các phụ cấp |
| 賞与 | しょうよ | THƯỞNG DỮ | thưởng |
| 労働時間 | ろうどうじかん | LAO ĐỘNG THỜI GIAN | giờ làm việc |
| 休憩 | きゅうけい | HƯU KHẾ | nghỉ giải lao |
| 年次有給 | ねんじゆうきゅう | NIÊN THỨ HỮU CẤP | phép năm có lương |
| 繁忙期 | はんぼうき | PHỒN MANG KỲ | thời cao điểm |
| 残業 | ざんぎょう | TÀN NGHIỆP | tăng ca |
| 旧正月 | きゅうしょうがつ | CỰU CHÍNH NGUYỆT | Tết âm |
| 帰省 | きせい | QUY TỈNH | về quê |
| 休暇 | きゅうか | HƯU HẠ | nghỉ phép |
| 連休 | れんきゅう | LIÊN HƯU | nghỉ liên tục |
| 確約 | かくやく | XÁC ƯỚC | cam kết |
| 明記 | めいき | MINH KÝ | ghi rõ |
| 署名 | しょめい | THỰ DANH | ký tên |
| 捺印 | なついん | NẠI ẤN | đóng dấu |
| 取交 | とりか | THỦ GIAO | trao đổi |
| 転職 | てんしょく | CHUYỂN CHỨC | chuyển việc |
| 帯同 | たいどう | ĐỚI ĐỒNG | đưa theo |
| 永住 | えいじゅう | VĨNH TRỤ | định cư |
| 登録支援機関 | とうろくしえんきかん | ĐĂNG LỤC CHI VIỆN CƠ QUAN | tổ chức hỗ trợ đăng ký (SSW) |
| 無犯罪証明書 | むはんざいしょうめいしょ | VÔ PHẠM TỘI CHỨNG MINH THƯ | giấy không tiền án |
| 整理券 | せいりけん | CHỈNH LÝ KHOÁN | thẻ xếp số |
| 出頭 | しゅっとう | XUẤT ĐẦU | đến trực tiếp |
| 結果通知 | けっかつうち | KẾT QUẢ THÔNG TRI | thông báo kết quả |
| 不備 | ふび | BẤT BỊ | thiếu sót |
| 申請手数料 | しんせいてすうりょう | THÂN THỈNH THỦ SỐ LIỆU | phí thủ tục đơn |
| 収入印紙 | しゅうにゅういんし | THU NHẬP ẤN CHỈ | tem thu nhập |
| 給与明細 | きゅうよめいさい | CẤP DỮ MINH TẾ | bảng lương chi tiết |
| 跡継 | あとつぎ | TÍCH KẾ | người kế nghiệp |
| 振返 | ふりかえ | CHẤN PHẢN | nhìn lại |
| 修正 | しゅうせい | TU CHÍNH | điều chỉnh |
| 視野 | しや | THỊ DÃ | tầm nhìn |
| 経理 | けいり | KINH LÝ | kế toán |
| 仕入 | しいれ | SĨ NHẬP | mua hàng |
| 昇格 | しょうかく | THĂNG CÁCH | thăng cấp |
| 受験 | じゅけん | THỤ NGHIỆM | dự thi |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (848000012, 800000048, NULL, 'markdown_book', 'T12. Tổng kết 3 năm và bonenkai chia tay TTS chuyển SSW', '# Sách thực tập sinh khách sạn năm 3 · T12. Tổng kết 3 năm và bonenkai chia tay TTS chuyển SSW

> **Mục tiêu nhân vật:** Trang (26 tuổi, Huế) khép lại 3 năm TTS tại ryokan「<ruby>月詠庵<rt>つきよみあん</rt></ruby>」Kyoto và bước sang SSW1 + phó nakai. Học các mẫu hội thoại tiếng Nhật của 仲居 trong tiệc tổng kết bằng phong cách truyền thống ryokan: phát biểu cảm ơn theo phong cách 仲居 (お礼の口上), 乾杯の音頭 trang trọng có thơ haiku, mẫu giới thiệu gia đình với Okami trước cả ryokan (家族の紹介), nhận và đáp lễ áo kimono mới (お着物の頂戴), phiên dịch 2 chiều cho bố mẹ gặp Okami (通訳), và mẫu câu nhậm chức phó nakai trước朝礼 đầu tiên (副仲居頭就任の挨拶).

---

## Bối cảnh

Ngày 31 tháng 3 năm 2028 và sáng 1 tháng 4 năm 2028, ryokan「<ruby>月詠庵<rt>つきよみあん</rt></ruby>」Higashiyama Kyoto. Hợp đồng TTS của Trang chính thức hết hạn lúc 17h ngày 31/3. 19h tối tổ chức tiệc <ruby>送別<rt>そうべつ</rt></ruby><ruby>兼<rt>けん</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby><ruby>祝<rt>いわ</rt></ruby>い (tiễn TTS + mừng nhậm phó nakai + đón SSW1) tại 広間 chính của ryokan. Bố mẹ Trang và em Hà từ Huế đã sang từ 29/3, ở phòng VIP của ryokan do Okami mời. Sáng 1/4 — 朝礼 đầu tiên với chức danh mới. Chương cuối của bộ Trang khép lại 3 năm bằng nguyên bộ kỹ năng hội thoại trang trọng nhất của 仲居.

---

## Tình huống 1 — Phòng ký túc · ngày 31/3, 6:00, độc thoại trước hai bộ đồng phục

| Vai | Lời thoại |
|---|---|
| Trang | (đứng trước gương, hai bộ trang phục treo song song) <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby>。TTS<ruby>最後<rt>さいご</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>。<br>*(Ngày 31/3/2028. Sáng cuối cùng của TTS.)* |
| Trang | (chạm vào áo kimono cũ) この<ruby>水色<rt>みずいろ</rt></ruby>の<ruby>仲居<rt>なかい</rt></ruby><ruby>着物<rt>きもの</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>着<rt>き</rt></ruby>てきた。<ruby>裾<rt>すそ</rt></ruby>に<ruby>畳<rt>たたみ</rt></ruby>の<ruby>跡<rt>あと</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っている。<br>*(Áo kimono xanh nhạt nakai này đã mặc mỗi ngày 3 năm. Lai áo vẫn còn vết chiếu tatami.)* |
| Trang | (chạm vào áo kimono mới) <ruby>明日<rt>あした</rt></ruby>から<ruby>着<rt>き</rt></ruby>る<ruby>紫<rt>むらさき</rt></ruby>の<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>着物<rt>きもの</rt></ruby>。<ruby>女将<rt>おかみ</rt></ruby>さんが<ruby>西陣織<rt>にしじんおり</rt></ruby>で<ruby>作<rt>つく</rt></ruby>らせてくださった。<br>*(Áo tím phó nakai mặc từ mai. Okami đặt may riêng tại 西陣織.)* |
| Trang | <ruby>色<rt>いろ</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>うけれど、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>本質<rt>ほんしつ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ。お<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>主役<rt>しゅやく</rt></ruby>にする<ruby>脇役<rt>わきやく</rt></ruby>。<br>*(Màu khác nhưng bản chất công việc giống nhau. Là vai phụ làm khách thành vai chính.)* |
| Trang | (VN, tự nhủ) Hôm nay không khóc. Cười cả buổi. Ngày mai 5h sáng đứng cùng Okami ở 朝礼. Bố mẹ ngồi hàng đầu. Phải đứng vững. |
| Trang | (cầm cuốn sổ tay 50 năm của mẹ Okami, đặt lên ngực) いってきます、<ruby>女将<rt>おかみ</rt></ruby>さんのお<ruby>母様<rt>かあさま</rt></ruby>。<br>*(Em đi đây, mẹ Okami.)* |

---

## Tình huống 2 — Phòng VIP của ryokan · 7:00, gia đình Trang ăn sáng theo kiểu kaiseki

*Bố Trang (Bác Quang, 58 tuổi), mẹ Trang (cô Loan, 55 tuổi), em Hà (24 tuổi). Đã sang Nhật 2 ngày. Bữa sáng kaiseki được Okami đặt riêng.*

| Vai | Lời thoại |
|---|---|
| Trang | (vào phòng, cúi đầu kiểu Nhật) おはようございます、お<ruby>父<rt>とう</rt></ruby>さん、お<ruby>母<rt>かあ</rt></ruby>さん。<br>*(Chào buổi sáng bố mẹ.)* |
| Bố | (VN, cười) Vào đi con. Con cúi đầu kiểu Nhật giống quá! |
| Mẹ | (VN, ngắm con gái) Mẹ thấy con khác lắm. Khác hơn cả hồi tháng 2 về quê. |
| Trang | (VN, ngồi seiza bên) Thì hôm nay đặc biệt mà mẹ. (chuyển JP, đùa) <ruby>女将<rt>おかみ</rt></ruby>モードに<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えました。<br>*(Em chuyển sang chế độ Okami rồi.)* |
| Em Hà | (VN) Chị ơi, em ăn cái này mãi không nuốt được. (chỉ món natto) |
| Trang | (VN, cười) Đó là natto — đậu nành lên men. Em không thích thì để dì ăn giùm. Đợi chút chị bảo Min-ji mang miso súp khác. |
| Trang | (gọi nhỏ) ミンジさん、すみません、<ruby>納豆<rt>なっとう</rt></ruby>の<ruby>代<rt>か</rt></ruby>わりに<ruby>梅干<rt>うめぼ</rt></ruby>しを<ruby>1<rt>ひと</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Min-ji, xin lỗi, thay natto bằng 1 mơ muối được không?)* |
| Min-ji | はい、すぐお<ruby>持<rt>も</rt></ruby>ちします。<br>*(Vâng em mang đến ngay.)* |
| Bố | (VN, cảm động) Con gọi em ấy bằng tiếng Nhật trơn quá. Bố nghe nửa hiểu nửa không. |
| Trang | (VN) Bố ơi, hồi con sang đây cũng có biết câu nào đâu. Cứ ngày qua ngày thì quen thôi. |
| Mẹ | (VN, ngắm phòng) Cô Okami sang quá. Bố mẹ ở phòng VIP 4 tatami này 2 ngày, cứ như đang ở cung điện. |
| Trang | (VN) Mẹ ơi, đây không phải phòng đắt nhất. Phòng đắt nhất là "Matsu-no-ma" — phòng Tùng — bố mẹ đi xem thử lát con dẫn. Okami nói "đây là gia đình của Trang, phải tiếp như khách quý nhất". |
| Mẹ | (VN, khóc nhẹ) ...Mẹ chưa từng nghĩ một ngày được người Nhật gọi mình là "khách quý nhất". |
| Em Hà | (VN) Tối nay có 100 người dự tiệc không chị? |
| Trang | (VN) Khoảng 30. Cả ryokan, Okami, bếp trưởng, các nakai, các nhân viên buồng, và 監理団体 ông Sato. Tối em cố ăn ít, vì chị phải đứng phát biểu. |

---

## Tình huống 3 — Hành lang · 10:00, dẫn bố mẹ đi tham quan ryokan

| Vai | Lời thoại |
|---|---|
| Trang | (chỉ vào cột) <ruby>父<rt>ちち</rt></ruby>、<ruby>母<rt>はは</rt></ruby>、この<ruby>柱<rt>はしら</rt></ruby>は<ruby>建築当時<rt>けんちくとうじ</rt></ruby>のままです。<ruby>120<rt>ひゃくにじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<br>*(Bố mẹ, cột này nguyên bản từ thuở mới xây. Hơn 120 năm.)* |
| Trang | (VN) Bố thấy cái xước nhẹ chỗ này không? Đó là vết của ông cố Okami thời chiến tranh, lúc bóc tatami giấu lương thực giúp hàng xóm. |
| Bố | (VN, chạm vào) 120 năm... bằng ngôi nhà thờ tổ ngoài Huế của họ Nguyễn nhà mình. |
| Trang | (mở 障子) こちらが<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会場<rt>かいじょう</rt></ruby>、<ruby>広間<rt>ひろま</rt></ruby>「<ruby>月見<rt>つきみ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」でございます。<br>*(Đây là hội trường tối nay, phòng lớn "Tsukimi" — Ngắm trăng.)* |
| Mẹ | (VN, há hốc) Trời ơi! Có cả sân khấu nhỏ kìa! |
| Trang | (VN) Đó là 床の間 — góc trưng bày. Tối nay sẽ treo cuộn thư pháp viết "<ruby>感謝<rt>かんしゃ</rt></ruby>" và cắm cành đào tự tay Okami chọn ở vườn sau. |
| Bố | (VN, dạo quanh) Mẹ nó, vào đây bố không dám thở mạnh. |
| Trang | (VN, cười) Bố cứ thoải mái. Tối nay bố ngồi ngay cạnh Okami, em Hà ngồi cạnh con. |
| Mẹ | (VN, lo) Bố con nói tiếng Nhật được câu nào không? |
| Trang | (VN) Bố tập "ありがとうございます" với "よろしくお願いします" là đủ. Con dịch tất cả những đoạn còn lại. |
| Em Hà | (VN) Còn em? |
| Trang | (VN) Em ngồi nhìn, học hỏi. Cô Hà sang năm nếu cưới chồng, biết đâu Okami mời cô lên Nhật làm... (cười, đùa) |
| Em Hà | (VN, đánh chị) Chị đừng đùa! Em ở Huế với bố mẹ. |

---

## Tình huống 4 — 床の間 phòng 広間 · 14:00, Trang giúp Okami cắm hoa cho buổi tối

*Trong khi Trang cắm, em Hà đứng xem ngoài hành lang.*

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>今夜<rt>こんや</rt></ruby>の<ruby>茶花<rt>ちゃばな</rt></ruby>、<ruby>主役<rt>しゅやく</rt></ruby>を<ruby>何<rt>なに</rt></ruby>にするか<ruby>覚<rt>おぼ</rt></ruby>えていますか。<br>*(Trang-san, hoa chính tối nay là gì em nhớ không?)* |
| Trang | <ruby>桜<rt>さくら</rt></ruby>の<ruby>枝<rt>えだ</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>の<ruby>京都<rt>きょうと</rt></ruby>です。<ruby>春<rt>はる</rt></ruby>の<ruby>象徴<rt>しょうちょう</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>出発<rt>しゅっぱつ</rt></ruby>。<br>*(Cành đào, Kyoto cuối tháng 3. Tượng trưng mùa xuân, khởi đầu mới.)* |
| Okami | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>脇役<rt>わきやく</rt></ruby>は？<br>*(Đúng. Vai phụ là gì?)* |
| Trang | (cầm cành mơ) <ruby>梅<rt>うめ</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>り<ruby>枝<rt>えだ</rt></ruby>。<ruby>桜<rt>さくら</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぶ</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>低<rt>ひく</rt></ruby>く。<ruby>桜<rt>さくら</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>立<rt>た</rt></ruby>てる。<br>*(Cành mơ còn sót. Thấp 1/3 cành đào. Tôn cành đào.)* |
| Okami | やってみてください。<br>*(Em thử đi.)* |
| Trang | (cắm cẩn thận, ngắm nghiêng) ...こうでしょうか。<br>*(Vậy được không ạ?)* |
| Okami | (đứng cách 3 bước, ngắm) <ruby>桜<rt>さくら</rt></ruby>の<ruby>枝<rt>えだ</rt></ruby>が<ruby>右<rt>みぎ</rt></ruby>を<ruby>向<rt>む</rt></ruby>いていますね。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>視線<rt>しせん</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>から<ruby>左<rt>ひだり</rt></ruby>へ<ruby>流<rt>なが</rt></ruby>します。<br>*(Cành đào hướng phải. Dẫn ánh mắt khách từ phải sang trái.)* |
| Okami | <ruby>4<rt>し</rt></ruby><ruby>ヶ月前<rt>かげつまえ</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えていてくれたんですね。<br>*(Em vẫn nhớ bài học 4 tháng trước.)* |
| Trang | (cúi đầu) <ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>教<rt>おそ</rt></ruby>わったことは、<ruby>一<rt>ひと</rt></ruby>つも<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Những gì Okami dạy, em không quên một điều nào.)* |
| Em Hà | (VN, thì thầm từ hành lang) Chị, cô Okami nói gì mà chị xúc động thế? |
| Trang | (VN, quay lại) Cô bảo "em vẫn nhớ bài học 4 tháng trước". |
| Em Hà | (VN, lẩm bẩm) Chị Trang giỏi thật. |
| Okami | (sang em Hà, mỉm cười, dùng tiếng Nhật chậm) ハーさん、お<ruby>姉<rt>ねえ</rt></ruby>さんは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強家<rt>べんきょうか</rt></ruby>です。ご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りです。<br>*(Em Hà, chị em thật sự là người chăm học. Là niềm tự hào của gia đình.)* |
| Trang | (dịch sang VN cho em) Cô bảo chị em rất chăm học, là niềm tự hào của gia đình. |
| Em Hà | (VN, cúi đầu) Cảm ơn cô! (sang JP, vụng về) ありがとうございます。 |

---

## Tình huống 5 — Sảnh tiếp tân ryokan · 17:00, lễ kết thúc hợp đồng TTS chính thức với 監理団体 ông Sato

*Tanaka社労士 và Sato担当者 đến chứng kiến giây phút kết thúc TTS chính thức.*

| Vai | Lời thoại |
|---|---|
| Sato | チャンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>ちょうど、<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby>。チャンさんの<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby>をもって<ruby>満了<rt>まんりょう</rt></ruby>いたしました。<br>*(Trang-san, vất vả rồi. 17h đúng, 31/3/2028. Hợp đồng 技能実習2号 của em hôm nay chính thức mãn hạn.)* |
| Trang | (cúi sâu 45 độ, giữ 5 giây) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby><ruby>担当者<rt>たんとうしゃ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(3 năm, ông Sato, em thật sự được hầu hạ chu đáo.)* |
| Sato | こちらこそ。<ruby>無事故<rt>むじこ</rt></ruby>・<ruby>無欠勤<rt>むけっきん</rt></ruby>・<ruby>無<rt>む</rt></ruby><ruby>遅刻<rt>ちこく</rt></ruby>でTTSを<ruby>満了<rt>まんりょう</rt></ruby>される<ruby>方<rt>かた</rt></ruby>は<ruby>20<rt>にじゅう</rt></ruby>パーセント<ruby>未満<rt>みまん</rt></ruby>です。チャンさんは<ruby>模範生<rt>もはんせい</rt></ruby>でした。<br>*(Tôi cũng vậy. Hoàn thành TTS không tai nạn - không nghỉ - không trễ chỉ dưới 20%. Em là tấm gương.)* |
| Sato | (đưa giấy chứng nhận) こちらは<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>修了証<rt>しゅうりょうしょう</rt></ruby>でございます。<br>*(Đây là chứng nhận hoàn thành TTS.)* |
| Trang | (đỡ hai tay, cúi đầu) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にいたします。<br>*(Em xin nhận. Em sẽ giữ cả đời.)* |
| Sato | また、<ruby>朗報<rt>ろうほう</rt></ruby>がございます。<ruby>京都<rt>きょうと</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>から<ruby>正午<rt>しょうご</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>がありまして、チャンさんの<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りました。<ruby>明日<rt>あした</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>有効<rt>ゆうこう</rt></ruby>です。<br>*(Còn có tin vui. Trưa nay Cục nhập cảnh Kyoto báo, đặc định kỹ năng 1 của em đã được duyệt. Có hiệu lực từ mai 1/4.)* |
| Trang | (sửng sốt, mắt rưng) <ruby>本当<rt>ほんとう</rt></ruby>でございますか！<br>*(Thật ạ?!)* |
| Okami | (đứng cạnh, vỗ tay nhẹ) おめでとうございます、チャンさん。<br>*(Chúc mừng em, Trang-san.)* |
| Sato | <ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードは<ruby>来週<rt>らいしゅう</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。<br>*(Thẻ lưu trú mới tuần sau ra Cục nhập cảnh nhận.)* |
| Trang | (cúi 45 độ) <ruby>佐藤<rt>さとう</rt></ruby><ruby>担当者<rt>たんとうしゃ</rt></ruby>、<ruby>制度上<rt>せいどじょう</rt></ruby>のお<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いは<ruby>本日<rt>ほんじつ</rt></ruby>で<ruby>終<rt>お</rt></ruby>わりですが、<ruby>個人的<rt>こじんてき</rt></ruby>にこれからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Ông Sato, theo chế độ quan hệ kết thúc hôm nay, nhưng cá nhân em mong ông tiếp tục chỉ bảo.)* |
| Sato | (cúi đáp) こちらこそ。<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ずメールしてください。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>させていただいた<ruby>責任<rt>せきにん</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じています。<br>*(Tôi mới cảm ơn. Khó gì email tôi. Tôi vẫn thấy có trách nhiệm.)* |

---

## Tình huống 6 — Phòng 広間「<ruby>月見<rt>つきみ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」· 19:00, Okami mở đầu tiệc

*30 người ngồi quanh ロの字 hình chữ ロ. Okami ngồi đầu, Trang bên trái Okami, bố mẹ Trang bên phải Okami. Em Hà cạnh Trang.*

| Vai | Lời thoại |
|---|---|
| Okami | (đứng dậy, hai tay đặt trước) みなさま、お<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>お<ruby>集<rt>あつ</rt></ruby>まりいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Mọi người, cảm ơn đã tụ tập trong lúc bận rộn.)* |
| Okami | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会<rt>かい</rt></ruby>には<ruby>3<rt>みっ</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>がございます。<br>*(Buổi hôm nay có 3 ý nghĩa.)* |
| Okami | <ruby>1<rt>ひと</rt></ruby>つ、チャンさんの<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>修了<rt>しゅうりょう</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>う<ruby>送別<rt>そうべつ</rt></ruby><ruby>会<rt>かい</rt></ruby>。<br>*(Một, tiệc tiễn mừng Trang hoàn thành 3 năm TTS.)* |
| Okami | <ruby>2<rt>ふた</rt></ruby>つ、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>移行<rt>いこう</rt></ruby>と<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>の<ruby>祝賀会<rt>しゅくがかい</rt></ruby>。<br>*(Hai, tiệc mừng chuyển SSW1 và nhậm chức phó nakai.)* |
| Okami | <ruby>3<rt>みっ</rt></ruby>つ、はるばるベトナム<ruby>古都<rt>こと</rt></ruby>フエから<ruby>来日<rt>らいにち</rt></ruby>されたチャンさんのご<ruby>家族<rt>かぞく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>の<ruby>歓迎会<rt>かんげいかい</rt></ruby>でございます。<br>*(Ba, tiệc đón gia đình Trang 3 người từ cố đô Huế Việt Nam sang Nhật.)* |
| Cả phòng | (vỗ tay) |
| Okami | (sang phía bố mẹ Trang) ご<ruby>両親<rt>りょうしん</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>娘<rt>むすめ</rt></ruby><ruby>様<rt>さま</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>お預<rt>あず</rt></ruby>かりさせていただき、まことにありがとうございました。<br>*(Hai bác, cảm ơn đã gửi gắm con gái 3 năm.)* |
| Okami | (cúi 30 độ về phía bố mẹ Trang, giữ 5 giây) |
| Bố | (VN, lay Trang) Con dịch giùm bố, bố nói được không? |
| Trang | (VN) Bố đứng dậy nói "ありがとうございます" rồi con dịch phần sau. |
| Bố | (đứng dậy, vụng về cúi đầu) ありがとうございます。 (VN) Cô Okami, gia đình chúng tôi vô cùng biết ơn cô và ryokan đã chăm sóc con gái chúng tôi 3 năm qua. Con tôi sang Nhật từ 22 tuổi, giờ 26 tuổi, đã trưởng thành hơn rất nhiều. Tôi xin gửi gắm con tôi tiếp tục 5 năm tới. |
| Trang | (dịch sang JP, đứng cạnh bố) <ruby>父<rt>ちち</rt></ruby>が<ruby>申<rt>もう</rt></ruby>しております。<ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>並<rt>なら</rt></ruby>びにご<ruby>関係<rt>かんけい</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てていただき、<ruby>家族<rt>かぞく</rt></ruby><ruby>一同<rt>いちどう</rt></ruby><ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>娘<rt>むすめ</rt></ruby>は<ruby>22<rt>にじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>で<ruby>来日<rt>らいにち</rt></ruby>し、<ruby>26<rt>にじゅうろく</rt></ruby><ruby>歳<rt>さい</rt></ruby>になった<ruby>今<rt>いま</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>立派<rt>りっぱ</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>したと<ruby>感<rt>かん</rt></ruby>じております。これからの<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、どうぞ<ruby>娘<rt>むすめ</rt></ruby>をよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Bố em nói: Okami và toàn thể quý vị liên quan, gia đình em xin chân thành cảm ơn đã chăm sóc nuôi dưỡng con gái em 3 năm qua. Con sang Nhật năm 22 tuổi, giờ 26 tuổi, em cảm thấy con đã trưởng thành thật sự. 5 năm tới, xin nhờ quý vị tiếp tục.)* |
| Okami | (cúi đáp) こちらこそ、<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。 |

---

## Tình huống 7 — Phòng 広間 · 19:15, Okami đề xướng 乾杯 có thơ haiku

| Vai | Lời thoại |
|---|---|
| Okami | では、<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vậy xin phép tôi đề xướng nâng cốc.)* |
| Okami | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>桜<rt>さくら</rt></ruby>が<ruby>満開<rt>まんかい</rt></ruby>の<ruby>京都<rt>きょうと</rt></ruby><ruby>東山<rt>ひがしやま</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>句<rt>く</rt></ruby><ruby>詠<rt>よ</rt></ruby>ませてください。<br>*(Hôm nay đào nở khắp Higashiyama Kyoto. Cho cô ngâm một câu haiku.)* |
| Okami | 「<ruby>桜<rt>さくら</rt></ruby><ruby>咲<rt>さ</rt></ruby>く<ruby>異国<rt>いこく</rt></ruby>の<ruby>娘<rt>むすめ</rt></ruby>に<ruby>盃<rt>さかずき</rt></ruby>を」<br>*(Đào nở rộ - chén rượu trao cô gái đất khách - cùng nâng.)* |
| Cả phòng | (im lặng vài giây, rồi vỗ tay) |
| Okami | <ruby>桜<rt>さくら</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby><ruby>咲<rt>さ</rt></ruby>きます。チャンさんの<ruby>道<rt>みち</rt></ruby>も<ruby>毎年<rt>まいとし</rt></ruby><ruby>新<rt>あたら</rt></ruby>しい<ruby>花<rt>はな</rt></ruby>を<ruby>咲<rt>さ</rt></ruby>かせてください。<br>*(Đào năm nào cũng nở. Mong đường em mỗi năm cũng nở hoa mới.)* |
| Okami | グラスをお<ruby>持<rt>も</rt></ruby>ちください。チャンさんの<ruby>修了<rt>しゅうりょう</rt></ruby>、<ruby>就任<rt>しゅうにん</rt></ruby>、そして<ruby>家族<rt>かぞく</rt></ruby><ruby>皆様<rt>みなさま</rt></ruby>のご<ruby>健康<rt>けんこう</rt></ruby>を<ruby>祈<rt>いの</rt></ruby>って...<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Xin nâng cốc. Vì hoàn thành, nhậm chức của Trang, và sức khoẻ cả nhà em... Cạn ly!)* |
| Cả phòng | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Bố | (VN với mẹ) Em ơi, cô Okami làm thơ luôn! |
| Mẹ | (VN, lau nước mắt) Mẹ chẳng hiểu thơ Nhật, nhưng nghe cô đọc mà cứ run cả người. |

---

## Tình huống 8 — Phòng 広間 · 19:45, Trang phát biểu cảm ơn 3 năm (mẫu お礼の口上 trang trọng nhất)

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trang-san, xin một lời.)* |
| Trang | (đứng dậy, đặt chén xuống, cúi 30 độ, dừng vài giây, ngẩng lên) <ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>料理長<rt>りょうりちょう</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>様<rt>さま</rt></ruby>、ご<ruby>同僚<rt>どうりょう</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>、ならびに<ruby>監理団体<rt>かんりだんたい</rt></ruby><ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>父<rt>とう</rt></ruby>さん、お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>妹<rt>いもうと</rt></ruby>のハー。<br>*(Okami, bếp trưởng, trưởng nakai, các đồng nghiệp, ông Sato 監理団体, bố mẹ, em Hà.)* |
| Trang | (lấy hơi) お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Em xin phép một chút thời gian.)* |
| Trang | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>22<rt>にじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>は<ruby>関西<rt>かんさい</rt></ruby><ruby>空港<rt>くうこう</rt></ruby>に<ruby>降<rt>お</rt></ruby>り<ruby>立<rt>た</rt></ruby>ち、<ruby>新幹線<rt>しんかんせん</rt></ruby>で<ruby>京都<rt>きょうと</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>駅<rt>えき</rt></ruby>のホームで<ruby>名前<rt>なまえ</rt></ruby>のプレートを<ruby>持<rt>も</rt></ruby>って<ruby>待<rt>ま</rt></ruby>っていてくださいました。<br>*(3 năm trước tháng 3, em 22 tuổi, hạ cánh sân bay Kansai, đến Kyoto bằng shinkansen. Okami cầm bảng tên em đợi ở sân ga.)* |
| Trang | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>は「<ruby>お疲<rt>つか</rt></ruby>れさまでした、お<ruby>腹<rt>なか</rt></ruby><ruby>空<rt>す</rt></ruby>いたでしょう」でした。N5<ruby>合格<rt>ごうかく</rt></ruby><ruby>直後<rt>ちょくご</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>は「お<ruby>腹<rt>なか</rt></ruby><ruby>空<rt>す</rt></ruby>いた」だけ<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れて、<ruby>泣<rt>な</rt></ruby>きそうになりました。<br>*(Câu đầu tiên là "Vất vả rồi, chắc đói rồi nhỉ". Em vừa đỗ N5, chỉ nghe được "đói", suýt khóc.)* |
| Trang | <ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ご</rt></ruby>の<ruby>今<rt>いま</rt></ruby>、<ruby>26<rt>にじゅうろく</rt></ruby><ruby>歳<rt>さい</rt></ruby>。N3<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>宿泊業<rt>しゅくはくぎょう</rt></ruby><ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>より<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>。すべては<ruby>皆様<rt>みなさま</rt></ruby>のおかげでございます。<br>*(3 năm sau, 26 tuổi. Đỗ N3, đỗ đặc định kỹ năng ngành lưu trú, mai làm phó nakai. Tất cả nhờ mọi người.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>には<ruby>母<rt>はは</rt></ruby>のように<ruby>支<rt>ささ</rt></ruby>えていただきました。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>特別<rt>とくべつ</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>で<ruby>頂<rt>いただ</rt></ruby>いたお<ruby>母様<rt>かあさま</rt></ruby>の<ruby>50<rt>ごじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>の<ruby>仲居<rt>なかい</rt></ruby><ruby>手帳<rt>てちょう</rt></ruby>、<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にいたします。<br>*(Okami đỡ đầu em như mẹ. Cuốn sổ tay 50 năm của mẹ Okami trao em trong tuần đặc huấn tháng 12, em sẽ giữ cả đời.)* |
| Trang | <ruby>料理長<rt>りょうりちょう</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>のシンガポール<ruby>団体様<rt>だんたいさま</rt></ruby>の<ruby>八寸<rt>はっすん</rt></ruby><ruby>差<rt>さ</rt></ruby>し<ruby>替<rt>か</rt></ruby>えの<ruby>5<rt>ご</rt></ruby><ruby>分間<rt>ふんかん</rt></ruby>を<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>のため、<ruby>怒鳴<rt>どな</rt></ruby>らずに「<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ください」と<ruby>言<rt>い</rt></ruby>ってくださった<ruby>静<rt>しず</rt></ruby>かなプロ<ruby>意識<rt>いしき</rt></ruby>を、<ruby>私<rt>わたし</rt></ruby>も<ruby>身<rt>み</rt></ruby>につけたいです。<br>*(Bếp trưởng, 5 phút đổi 八寸 cho đoàn Singapore tháng 11, em không quên cả đời. Vì an toàn của khách, ông không quát mà chỉ nói "cho 5 phút" — ý thức chuyên nghiệp tĩnh lặng đó, em muốn học bằng được.)* |
| Trang | <ruby>仲居頭<rt>なかいがしら</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>畳<rt>たたみ</rt></ruby>の<ruby>歩<rt>ある</rt></ruby>き<ruby>方<rt>かた</rt></ruby>から<ruby>器<rt>うつわ</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>まで、<ruby>一<rt>ひと</rt></ruby>つ<ruby>一<rt>ひと</rt></ruby>つ<ruby>正<rt>ただ</rt></ruby>してくださり<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Trưởng nakai, 3 năm chị sửa cho em từng bước đi trên chiếu đến cách cầm bát, em cảm ơn.)* |
| Trang | ラジさん、ミンジさん、<ruby>後輩<rt>こうはい</rt></ruby>のお<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>は<ruby>姉<rt>あね</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>でした...いえ、<ruby>妹<rt>いもうと</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>でした。これからは<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>として<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>に<ruby>守<rt>まも</rt></ruby>ります。<br>*(Raj, Min-ji, hai kohai như chị... à không, như em gái. Từ giờ với vai trò phó nakai, chị sẽ trân trọng bảo vệ hai em.)* |
| Trang | <ruby>佐藤<rt>さとう</rt></ruby><ruby>担当者<rt>たんとうしゃ</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎月<rt>まいつき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>してくださり、<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>の<ruby>盾<rt>たて</rt></ruby>になってくださいました。<ruby>制度<rt>せいど</rt></ruby><ruby>上<rt>じょう</rt></ruby>のご<ruby>縁<rt>えん</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby>までですが、<ruby>個人<rt>こじん</rt></ruby>として<ruby>恩<rt>おん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Ông Sato, 3 năm tháng nào ông cũng phỏng vấn, làm tấm khiên khi em khó khăn. Duyên chế độ kết thúc hôm nay, nhưng cá nhân em không quên ân tình.)* |
| Trang | お<ruby>父<rt>とう</rt></ruby>さん、お<ruby>母<rt>かあ</rt></ruby>さん。 (chuyển giọng tiếng Việt) Bố, mẹ. 3 năm trước con đi, mẹ khóc cả tuần. Hôm nay mẹ đến tận đây, con không bao giờ nghĩ tới. Cảm ơn bố mẹ đã tin con. Con xin phép tiếp tục 5 năm. (chuyển JP) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby>のお<ruby>電話<rt>でんわ</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えました。<br>*(3 năm cuộc gọi mỗi ngày đã đỡ em đứng vững.)* |
| Trang | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>より、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>かつ<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>かせていただきます。<ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>から<ruby>頂<rt>いただ</rt></ruby>いた<ruby>5<rt>ご</rt></ruby><ruby>年計画<rt>ねんけいかく</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って、<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>を<ruby>一歩<rt>いっぽ</rt></ruby>ずつ<ruby>歩<rt>ある</rt></ruby>みます。<br>*(Từ 1/4 em làm việc với tư cách đặc định kỹ năng 1 và phó nakai. Theo lộ trình 5 năm Okami trao, em đi từng bước trên con đường 30 năm.)* |
| Trang | (cúi 45 độ, giữ 5 giây) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(3 năm, thật sự cảm ơn. Từ giờ xin tiếp tục mong nhờ.)* |
| Cả phòng | (vỗ tay dài) |
| Em Hà | (VN, mắt đỏ) Chị Trang... |
| Mẹ | (VN, lau mắt) Con gái mẹ ngày xưa bưng bún bò ở Huế... |

---

## Tình huống 9 — Phòng 広間 · 20:30, Okami trao kimono 副仲居頭 cho Trang (lễ trao y trang trọng)

| Vai | Lời thoại |
|---|---|
| Okami | チャンさん、<ruby>会社<rt>かいしゃ</rt></ruby>からお<ruby>渡<rt>わた</rt></ruby>ししたいものがございます。<br>*(Trang-san, công ty có thứ muốn trao em.)* |
| Trang | (đứng dậy, di chuyển ra giữa phòng, quỳ seiza) はい、<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Vâng em xin nhận.)* |
| Okami | (mở hộp gỗ kiri, lấy ra bộ kimono tím + obi vàng) <ruby>西陣織<rt>にしじんおり</rt></ruby>の<ruby>紫<rt>むらさき</rt></ruby>の<ruby>仲居着物<rt>なかいきもの</rt></ruby>、<ruby>金<rt>きん</rt></ruby>の<ruby>帯<rt>おび</rt></ruby>でございます。<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>の<ruby>正装<rt>せいそう</rt></ruby>です。<br>*(Áo nakai tím 西陣織, đai vàng. Là lễ phục phó nakai.)* |
| Okami | <ruby>紫<rt>むらさき</rt></ruby>は<ruby>古来<rt>こらい</rt></ruby>、<ruby>京都<rt>きょうと</rt></ruby>の<ruby>高位<rt>こうい</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>。<ruby>女将<rt>おかみ</rt></ruby>に<ruby>次<rt>つ</rt></ruby>ぐ<ruby>位<rt>くらい</rt></ruby>の<ruby>者<rt>もの</rt></ruby>だけが<ruby>着<rt>き</rt></ruby>ます。<br>*(Tím từ xưa là màu cao quý của Kyoto. Chỉ người vai vế chỉ sau okami mới mặc.)* |
| Trang | (đỡ bằng hai tay, cúi 45 độ giữ 5 giây) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>装<rt>よそお</rt></ruby>いでございます。<ruby>謹<rt>つつし</rt></ruby>んで<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Lễ phục quá lớn ạ. Em xin trân trọng nhận.)* |
| Okami | <ruby>明日<rt>あした</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>、お<ruby>母様<rt>かあさま</rt></ruby>に<ruby>着付<rt>きつ</rt></ruby>けをお<ruby>手伝<rt>てつだ</rt></ruby>いいただいて、<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>でお<ruby>披露目<rt>ひろめ</rt></ruby>します。<br>*(Mai 5h30 sáng, mẹ em hỗ trợ mặc, 6h em ra mắt ở 朝礼.)* |
| Trang | (sửng sốt) ...<ruby>母<rt>はは</rt></ruby>に？<br>*(...mẹ em?)* |
| Okami | はい、お<ruby>母様<rt>かあさま</rt></ruby>は<ruby>娘<rt>むすめ</rt></ruby>の<ruby>晴<rt>は</rt></ruby>れ<ruby>姿<rt>すがた</rt></ruby>を<ruby>着付<rt>きつ</rt></ruby>けるべきです。<ruby>仲居頭<rt>なかいがしら</rt></ruby>と<ruby>私<rt>わたし</rt></ruby>がやり<ruby>方<rt>かた</rt></ruby>をお<ruby>教<rt>おそ</rt></ruby>えします。<br>*(Vâng, mẹ em phải tự mặc cho con gái trong khoảnh khắc trọng đại. Trưởng nakai và cô sẽ hướng dẫn.)* |
| Trang | (dịch sang VN cho mẹ) Mẹ ơi, mai 5h30 mẹ giúp con mặc kimono. Okami với trưởng nakai sẽ chỉ mẹ cách. |
| Mẹ | (VN, run) Mẹ... mẹ có làm được không? |
| Okami | (đoán được ý mẹ, sang giọng nhẹ) お<ruby>母様<rt>かあさま</rt></ruby>、ご<ruby>安心<rt>あんしん</rt></ruby>を。<ruby>私<rt>わたし</rt></ruby>がついております。<br>*(Bác à, yên tâm. Có cô đây.)* |
| Mẹ | (VN, gật mạnh) Vâng cô. Em làm. |

---

## Tình huống 10 — Phòng 広間 · 21:15, Raj và Min-ji tặng quà cùng các nhân viên Việt-Nepal-Hàn

| Vai | Lời thoại |
|---|---|
| Raj | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>代表<rt>だいひょう</rt></ruby>して<ruby>一言<rt>ひとこと</rt></ruby>。<br>*(Sempai, đại diện kohai em xin một lời.)* |
| Raj | チャン<ruby>先輩<rt>せんぱい</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>たちの「<ruby>背中<rt>せなか</rt></ruby>」でした。<ruby>後<rt>うし</rt></ruby>ろから<ruby>追<rt>お</rt></ruby>いかける<ruby>背中<rt>せなか</rt></ruby>。<br>*(Trang sempai là "tấm lưng" của bọn em. Tấm lưng bọn em đuổi theo.)* |
| Raj | <ruby>明日<rt>あした</rt></ruby>から<ruby>背中<rt>せなか</rt></ruby>に<ruby>紫<rt>むらさき</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。これからも<ruby>追<rt>お</rt></ruby>いかけさせてください。<br>*(Mai sẽ thấy tấm lưng có kimono tím. Cho phép bọn em tiếp tục đuổi.)* |
| Min-ji | <ruby>私<rt>わたし</rt></ruby>たちから<ruby>小<rt>ちい</rt></ruby>さなプレゼントです。<br>*(Bọn em có món quà nhỏ.)* |
| Min-ji | (đưa hộp) どうぞお<ruby>開<rt>あ</rt></ruby>けください。<br>*(Mời chị mở.)* |
| Trang | (mở, thấy 1 bộ <ruby>名刺入<rt>めいしい</rt></ruby>れ bằng <ruby>西陣織<rt>にしじんおり</rt></ruby> tím phối kim tuyến vàng) <ruby>名刺入<rt>めいしい</rt></ruby>れ！<ruby>紫<rt>むらさき</rt></ruby>と<ruby>金<rt>きん</rt></ruby>...<br>*(Hộp danh thiếp! Tím và vàng...)* |
| Raj | <ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>着物<rt>きもの</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて、<ruby>同<rt>おな</rt></ruby>じ<ruby>柄<rt>がら</rt></ruby>の<ruby>西陣織<rt>にしじんおり</rt></ruby>を<ruby>探<rt>さが</rt></ruby>しました。<ruby>3<rt>さん</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>回<rt>まわ</rt></ruby>りました。<br>*(Em hỏi Okami màu kimono, rồi tìm 西陣織 cùng hoa văn. Đi 3 nhà.)* |
| Min-ji | SSW1になっても<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>になっても、<ruby>名刺<rt>めいし</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す<ruby>場面<rt>ばめん</rt></ruby>がたくさん<ruby>増<rt>ふ</rt></ruby>えるので。<br>*(Lên SSW1 và phó nakai, sẽ có nhiều dịp trao danh thiếp.)* |
| Trang | (ôm hộp, khóc) <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも...<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Hai đứa... thật sự cảm ơn.)* |
| Raj | <ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>シンガポール<ruby>団体様<rt>だんたいさま</rt></ruby>の<ruby>後<rt>あと</rt></ruby>、<ruby>頂<rt>いただ</rt></ruby>いた<ruby>心付<rt>こころづ</rt></ruby>けを<ruby>3<rt>さん</rt></ruby><ruby>等分<rt>とうぶん</rt></ruby>してくださったこと、<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Sau đoàn Singapore 2 năm trước, sempai chia 3 phần tiền thưởng — em không quên cả đời.)* |
| Min-ji | <ruby>先輩<rt>せんぱい</rt></ruby>から<ruby>教<rt>おそ</rt></ruby>わった「わからない<ruby>時<rt>とき</rt></ruby>は『<ruby>確認<rt>かくにん</rt></ruby>します』と<ruby>言<rt>い</rt></ruby>えばいい」、<ruby>今<rt>いま</rt></ruby>でも<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>っています。<br>*(Lời sempai dạy "lúc không biết nói ''em xin kiểm tra'' là được", giờ em vẫn dùng mỗi ngày.)* |
| Trang | (cầm hộp lên ngực) <ruby>名刺<rt>めいし</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>すたびに、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>します。<br>*(Mỗi lần trao danh thiếp, chị nhớ hai đứa.)* |

---

## Tình huống 11 — Phòng 広間 · 22:00, em Hà hát bài tiếng Việt với karaoke

| Vai | Lời thoại |
|---|---|
| Yamada Yoshiko (khách 30 năm, cũng được mời) | カラオケ、<ruby>誰<rt>だれ</rt></ruby>か<ruby>歌<rt>うた</rt></ruby>ってくれませんか？<br>*(Karaoke, ai hát đi nào?)* |
| Em Hà | (VN, ghé Trang) Chị, em hát bài "Huế Thương" cho cô bác nghe được không? Em chuẩn bị karaoke MR rồi. |
| Trang | (VN, ngạc nhiên) Em chuẩn bị à? |
| Em Hà | (VN) Trên máy bay em đã nghĩ. Hát cho Okami nghe về Huế quê mình. |
| Trang | (đứng dậy, JP với cả phòng) <ruby>失礼<rt>しつれい</rt></ruby>いたします、<ruby>妹<rt>いもうと</rt></ruby>のハーがベトナム<ruby>古都<rt>こと</rt></ruby>フエの<ruby>歌<rt>うた</rt></ruby>「フエ<ruby>恋<rt>こい</rt></ruby>」を<ruby>歌<rt>うた</rt></ruby>わせていただきます。<ruby>姉<rt>あね</rt></ruby>の<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>歌<rt>うた</rt></ruby>でございます。<br>*(Xin phép, em gái Hà sẽ hát bài "Huế Thương" — bài hát về cố đô Huế Việt Nam, quê hương của chị em.)* |
| Em Hà | (đứng dậy, hát đoạn đầu "Huế Thương"... giọng run vì ngại) ♪ Đã mấy đêm rồi tôi không ngủ, tôi mơ về một dải sông Hương... |
| Cả phòng | (lặng nghe, dù không hiểu) |
| Hết bài, em Hà cúi đầu | ありがとうございました。 |
| Okami | (đứng dậy, sang giọng trầm) ハーさん、<ruby>歌詞<rt>かし</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>を<ruby>姉<rt>あね</rt></ruby><ruby>様<rt>さま</rt></ruby>にご<ruby>説明<rt>せつめい</rt></ruby>いただけますか？<br>*(Em Hà, chị có thể giải thích nghĩa lời cho mọi người không?)* |
| Trang | (đứng dậy) はい。「<ruby>何<rt>なん</rt></ruby><ruby>晩<rt>ばん</rt></ruby>も<ruby>眠<rt>ねむ</rt></ruby>れない、フォーン<ruby>川<rt>がわ</rt></ruby>を<ruby>夢<rt>ゆめ</rt></ruby>に<ruby>見<rt>み</rt></ruby>る」――<ruby>故郷<rt>こきょう</rt></ruby>を<ruby>離<rt>はな</rt></ruby>れた<ruby>者<rt>もの</rt></ruby>の<ruby>歌<rt>うた</rt></ruby>です。フォーンは「<ruby>香<rt>かおり</rt></ruby>」という<ruby>意味<rt>いみ</rt></ruby>で、フエの<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>を<ruby>流<rt>なが</rt></ruby>れる<ruby>川<rt>かわ</rt></ruby>です。<br>*("Bao đêm không ngủ, mơ thấy sông Hương" — bài hát của người xa quê. Phương có nghĩa "hương thơm", là dòng sông chảy giữa Huế.)* |
| Okami | (gật, mắt sáng) <ruby>桂川<rt>かつらがわ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですね。<ruby>京都<rt>きょうと</rt></ruby>の<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>を<ruby>流<rt>なが</rt></ruby>れる<ruby>川<rt>かわ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ。<ruby>古都<rt>こと</rt></ruby>はみんな、<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>に<ruby>川<rt>かわ</rt></ruby>を<ruby>持<rt>も</rt></ruby>っているんですね。<br>*(Giống sông Katsura — sông chảy giữa Kyoto. Cố đô nào cũng có sông chảy giữa nhỉ.)* |
| Em Hà | (VN, hiểu được nhờ Trang dịch lại) Đúng vậy ạ! |
| Cả phòng | (vỗ tay dài) |

---

## Tình huống 12 — Phòng 広間 · 22:45, Okami phát biểu khoá tiệc

| Vai | Lời thoại |
|---|---|
| Okami | (đứng dậy) <ruby>最後<rt>さいご</rt></ruby>に<ruby>一言<rt>ひとこと</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Cuối cùng tôi xin nói một lời.)* |
| Okami | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>外国人<rt>がいこくじん</rt></ruby>TTSの<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れを<ruby>始<rt>はじ</rt></ruby>めた<ruby>時<rt>とき</rt></ruby>、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと<ruby>不安<rt>ふあん</rt></ruby>でした。<ruby>130<rt>ひゃくさんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>家業<rt>かぎょう</rt></ruby>を、<ruby>外<rt>そと</rt></ruby>からの<ruby>方<rt>かた</rt></ruby>に<ruby>託<rt>たく</rt></ruby>せるのかと。<br>*(3 năm trước khi bắt đầu nhận TTS nước ngoài, thật lòng tôi rất lo. Gia nghiệp 130 năm gửi gắm người ngoài được không.)* |
| Okami | しかし、チャンさんが<ruby>来<rt>き</rt></ruby>てくれて、<ruby>私<rt>わたし</rt></ruby>の<ruby>考<rt>かんが</rt></ruby>えは<ruby>変<rt>か</rt></ruby>わりました。<ruby>家業<rt>かぎょう</rt></ruby>とは<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で<ruby>継<rt>つ</rt></ruby>ぐもの。チャンさんが<ruby>教<rt>おそ</rt></ruby>えてくださいました。<br>*(Nhưng Trang đến, suy nghĩ tôi thay đổi. Gia nghiệp kế nghiệp bằng chí hướng không phải huyết thống. Trang đã dạy tôi điều đó.)* |
| Okami | <ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れた<ruby>側<rt>がわ</rt></ruby>のはずが、<ruby>私<rt>わたし</rt></ruby>たちもチャンさんから<ruby>多<rt>おお</rt></ruby>くを<ruby>学<rt>まな</rt></ruby>びました。<ruby>英語<rt>えいご</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さ、<ruby>外国人<rt>がいこくじん</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>気持<rt>きも</rt></ruby>ち、ハラルの<ruby>知識<rt>ちしき</rt></ruby>...<br>*(Phía nhận lẽ ra dạy, nhưng chúng tôi cũng học rất nhiều từ Trang. Tầm quan trọng của tiếng Anh, tâm trạng khách ngoại quốc, kiến thức halal...)* |
| Okami | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>からは<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>として、<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>はSSW2、その<ruby>先<rt>さき</rt></ruby>は<ruby>仲居頭<rt>なかいがしら</rt></ruby>、そして<ruby>30<rt>さんじゅう</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>には...と<ruby>勝手<rt>かって</rt></ruby>に<ruby>想像<rt>そうぞう</rt></ruby>しております。<br>*(Từ 1/4 phó nakai, 5 năm sau SSW2, sau đó trưởng nakai, rồi 30 năm sau... tôi tự tưởng tượng.)* |
| Okami | (cúi sâu về phía bố mẹ Trang) ご<ruby>両親<rt>りょうしん</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>素晴<rt>すば</rt></ruby>らしいお<ruby>嬢<rt>じょう</rt></ruby><ruby>様<rt>さま</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>ててくださいまして、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Hai bác, cảm ơn đã nuôi dạy người con gái tuyệt vời.)* |
| Bố | (VN, đứng dậy đáp lễ) Cô Okami! (cúi đầu vụng về) ありがとうございます！ |
| Mẹ | (VN, không nói được, chỉ cúi đầu khóc) |
| Okami | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>朝礼<rt>ちょうれい</rt></ruby>でまたお<ruby>会<rt>あ</rt></ruby>いしましょう。<br>*(Hôm nay thật sự cảm ơn. Mai 6h sáng, gặp lại ở 朝礼.)* |
| Cả phòng | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Mọi người vất vả rồi!)* |

---

## Tình huống 13 — Phòng VIP · sáng 1/4, 5:30, mẹ Trang giúp con gái mặc kimono phó nakai

*Trưởng nakai đến hướng dẫn mẹ Trang.*

| Vai | Lời thoại |
|---|---|
| Trưởng nakai | お<ruby>母<rt>かあ</rt></ruby><ruby>様<rt>さま</rt></ruby>、まず<ruby>左<rt>ひだり</rt></ruby>の<ruby>身頃<rt>みごろ</rt></ruby>を<ruby>娘<rt>むすめ</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>体<rt>からだ</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせて、その<ruby>上<rt>うえ</rt></ruby>に<ruby>右<rt>みぎ</rt></ruby>を<ruby>重<rt>かさ</rt></ruby>ねます。<ruby>右前<rt>みぎまえ</rt></ruby>でございます。<br>*(Bác, trước tiên quấn vạt trái vào người chị, rồi đè vạt phải lên. "Phải trước" ạ.)* |
| Mẹ | (VN với Trang) Con dịch cho mẹ nha. |
| Trang | (VN) Mẹ quấn bên trái lên người con trước, rồi đè bên phải lên trên. "Phải trước" mới đúng. Trái trước là tang lễ. |
| Mẹ | (run tay, quấn từ từ) ...thế này được không? |
| Trưởng nakai | はい、お<ruby>上手<rt>じょうず</rt></ruby>でございます。<ruby>次<rt>つぎ</rt></ruby>は<ruby>帯<rt>おび</rt></ruby>を<ruby>結<rt>むす</rt></ruby>びます。<ruby>後<rt>うし</rt></ruby>ろで<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>回<rt>まわ</rt></ruby>して、お<ruby>太鼓<rt>たいこ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ります。<br>*(Vâng, bác giỏi quá. Tiếp là thắt đai. Quấn 2 vòng sau lưng, tạo nút "thái cổ".)* |
| Trang | (VN) Mẹ quấn đai 2 vòng sau lưng, rồi thắt nút hình trống — gọi là "お太鼓". |
| Mẹ | (run, làm) ...mẹ làm không quen được... |
| Trưởng nakai | (đỡ tay mẹ) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でございます。<ruby>娘<rt>むすめ</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>晴<rt>は</rt></ruby>れ<ruby>姿<rt>すがた</rt></ruby>、<ruby>世界<rt>せかい</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby>お<ruby>母様<rt>かあさま</rt></ruby>に<ruby>結<rt>むす</rt></ruby>んでいただきたいのです。<br>*(Không sao đâu bác. Khoảnh khắc trọng đại của con gái, trên thế giới này — chỉ mẹ mới là người buộc.)* |
| Mẹ | (VN, khóc, vẫn buộc) ...con gái mẹ... |
| Trang | (VN, nhìn vào gương) Mẹ ơi, đẹp quá. |
| Mẹ | (VN, ngắm con qua gương) Con gái mẹ. (chuyển JP, vụng về) <ruby>娘<rt>むすめ</rt></ruby>... <ruby>綺麗<rt>きれい</rt></ruby>。 (vụng về) |
| Trưởng nakai | (gật, mỉm cười) お<ruby>母様<rt>かあさま</rt></ruby>、お<ruby>嬢様<rt>じょうさま</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じく<ruby>美<rt>うつく</rt></ruby>しゅうございます。 |
| Trang | (VN dịch) Cô bảo mẹ đẹp như con. |
| Mẹ | (VN, khóc cười) Mẹ già rồi đấy. |

---

## Tình huống 14 — Sảnh chính ryokan · 6:00, 朝礼 đầu tiên với chức 副仲居頭

*Cả nhân viên ryokan, Okami, bếp trưởng, trưởng nakai, Raj, Min-ji + bố mẹ Trang + em Hà ngồi ghế khách.*

| Vai | Lời thoại |
|---|---|
| Okami | みなさん、<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>整列<rt>せいれつ</rt></ruby>してください。<br>*(Mọi người, briefing sáng bắt đầu. Xin xếp hàng.)* |
| Okami | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>より、<ruby>新<rt>あら</rt></ruby>たに<ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えます。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>、グエン・ティ・チャンさんでございます。<br>*(Từ hôm nay 1/4/2028, chúng ta đón phó nakai mới. Đặc định kỹ năng 1, Nguyễn Thị Trang.)* |
| Cả phòng | (vỗ tay) |
| Okami | チャンさん、<ruby>就任<rt>しゅうにん</rt></ruby>のご<ruby>挨拶<rt>あいさつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Trang-san, xin phát biểu nhậm chức.)* |
| Trang | (bước lên một bước, cúi 30 độ, ngẩng lên) みなさん、おはようございます。<br>*(Mọi người, chào buổi sáng.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>月詠庵<rt>つきよみあん</rt></ruby><ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>かせていただきます、グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Em là Nguyễn Thị Trang, từ hôm nay làm việc với tư cách phó trưởng nakai của Tsukiyomian.)* |
| Trang | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>みなさんから<ruby>教<rt>おそ</rt></ruby>わったこと――<ruby>お辞儀<rt>じぎ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>、<ruby>畳<rt>たたみ</rt></ruby>の<ruby>歩<rt>ある</rt></ruby>き<ruby>方<rt>かた</rt></ruby>、<ruby>器<rt>うつわ</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>、<ruby>先読<rt>さきよ</rt></ruby>みの<ruby>仕方<rt>しかた</rt></ruby>、<ruby>表<rt>おもて</rt></ruby>に<ruby>出<rt>で</rt></ruby>ないこと、<ruby>始末<rt>しまつ</rt></ruby>の<ruby>心<rt>こころ</rt></ruby>――これらを<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>正<rt>ただ</rt></ruby>しく<ruby>伝<rt>つた</rt></ruby>えていきたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Những điều mọi người dạy em 3 năm — お辞儀 3 cấp, cách đi trên chiếu, cách cầm bát, cách 先読み, không lộ ra mặt, tâm 始末 — em muốn truyền đúng cho kohai.)* |
| Trang | <ruby>京都<rt>きょうと</rt></ruby><ruby>弁<rt>べん</rt></ruby>はまだ<ruby>不十分<rt>ふじゅうぶん</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず「<ruby>確認<rt>かくにん</rt></ruby>します」と<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますので、これからもご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Phương ngữ Kyoto em còn yếu. Lúc không biết em nhất định sẽ nói "em xin kiểm tra", mong mọi người tiếp tục chỉ bảo.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>から<ruby>頂戴<rt>ちょうだい</rt></ruby>したこの<ruby>紫<rt>むらさき</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>と<ruby>金<rt>きん</rt></ruby>の<ruby>帯<rt>おび</rt></ruby>、<ruby>母<rt>はは</rt></ruby>が<ruby>本日<rt>ほんじつ</rt></ruby><ruby>早朝<rt>そうちょう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>着付<rt>きつ</rt></ruby>けてくれました。<br>*(Bộ kimono tím và đai vàng Okami trao, mẹ em mặc cho em sáng nay 5h30.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>から<ruby>頂<rt>いただ</rt></ruby>いた「<ruby>家業<rt>かぎょう</rt></ruby>は<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で<ruby>継<rt>つ</rt></ruby>ぐ」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>胸<rt>むね</rt></ruby>に、<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>磨<rt>みが</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けてまいります。<br>*(Mang trong lòng câu "Gia nghiệp kế bằng chí hướng chứ không phải huyết thống" Okami trao, em sẽ mài giũa 30 năm.)* |
| Trang | (cúi 45 độ, giữ 5 giây) どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin được mong nhờ ạ.)* |
| Cả phòng | (vỗ tay dài) |
| Okami | では、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。お<ruby>客様<rt>きゃくさま</rt></ruby>のおもてなしを<ruby>第一<rt>だいいち</rt></ruby>に、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy bắt đầu công việc hôm nay. Đặt おもてなし của khách lên hàng đầu, an toàn lên hàng đầu.)* |
| Cả phòng | お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Xin được mong nhờ!)* |
| Mẹ | (VN, từ ghế khách, lau nước mắt) ...con gái mẹ. |
| Bố | (VN, vỗ vai mẹ) Con nó làm được rồi. |
| Em Hà | (VN, ghi hình bằng điện thoại) Em gửi mẹ video cho cả họ. |

---

## Tình huống 15 — Sân bay Kansai · 18:00, tiễn bố mẹ và em Hà về Huế (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — gia đình bay về, Trang đứng tiễn tại cửa boarding.

| Vai | Lời thoại |
|---|---|
| Trang | (VN, đứng cạnh xe đẩy hành lý) Bố, mẹ, em Hà, mai 9h tới Tân Sơn Nhất, 11h đổi máy bay, 13h hạ cánh Phú Bài. Em nhớ gọi điện báo từng chặng. |
| Mẹ | (VN, cầm tay Trang) Ừ, con cũng vậy. Báo lên chỗ làm an toàn. |
| Bố | (VN) Trang, bố nói lần cuối — con cứ làm như con muốn. Bố mẹ ủng hộ. Nhưng đừng quên Huế. |
| Trang | (VN) Bố ơi, quên sao được. Hôm qua cô Okami ngâm một bài haiku về hoa đào. Con nghe xong nghĩ ngay tới hoa phượng đỏ ở trường Quốc Học. Cả hai cố đô đều có hoa riêng để mọi người không quên. |
| Em Hà | (VN) Chị, có một chuyện em chưa kể. Tối qua trên đường về ký túc Okami, em đi cạnh cô Okami. Cô bảo "Em Hà, chị em không phải nhân viên với tôi đâu. Là kế thừa của ryokan này. Tôi gửi gắm chị em cho em — sang năm em cưới chồng, gọi điện báo tôi trước, tôi sang Việt Nam tham dự". |
| Trang | (VN, sửng sốt) Cô bảo thế? |
| Em Hà | (VN) Vâng. Em đứng sững luôn. Tự dưng em thấy chị có gia đình thứ hai ở Nhật rồi. Em không lo nữa. |
| Mẹ | (VN, khóc) Mẹ nghe thế cũng nhẹ lòng. |
| Bố | (VN) Trang, con giữ cuốn sổ của mẹ Okami cẩn thận. 30 năm nữa con trao lại cho người tiếp theo. Đó là cách trả ân. |
| Trang | (VN, gật mạnh) Vâng bố. |
| Loa | (thông báo) Hành khách chuyến VN313 đi Hà Nội xin mời ra cửa số 23. |
| Em Hà | (VN, ôm chị) Chị ơi, 6 tháng sau gặp lại. Em yêu chị. |
| Trang | (VN, ôm chặt) Yêu em. Học giỏi nha. Gặp anh nào tử tế thì cưới luôn cho mẹ vui. |
| Mẹ | (VN, ôm con) Con gái mẹ. Mẹ tự hào về con. |
| Bố | (VN, vỗ vai) Trang, giữ sức khoẻ. (cúi đầu kiểu Nhật) よろしくお願いします. (đi vào cửa kiểm tra) |
| Trang | (đứng vẫy tay đến khi gia đình khuất, cúi đầu sâu 45 độ giữ 5 giây với hành lang vắng) |
| Trang | (lấy cuốn sổ 50 năm trong túi xách, áp lên ngực, mỉm cười) ...おかえりなさい、お<ruby>母様<rt>かあさま</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>、<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mừng mẹ trở về, mẹ Okami. Em bắt đầu đây.)* |

---

## Tình huống 16 — Phòng riêng ký túc · 23:00, viết entry đầu tiên trong cuốn sổ 50 năm

*Trang ngồi trước bàn, mở cuốn sổ tay 50 năm của mẹ Okami. 50 năm sổ chỉ có chữ viết tay của một người — mẹ Okami. Trang mở trang trắng đầu tiên sau dấu chấm cuối của mẹ Okami.*

| Vai | Lời thoại |
|---|---|
| Trang | (cầm bút, viết bằng kanji + romaji rõ ràng) <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><br>*(1/4/2028.)* |
| Trang | (viết tiếp) <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>月詠庵<rt>つきよみあん</rt></ruby><ruby>副<rt>ふく</rt></ruby><ruby>仲居頭<rt>なかいがしら</rt></ruby>。<br>*(Từ hôm nay phó trưởng nakai Tsukiyomian.)* |
| Trang | (viết tiếp) お<ruby>母様<rt>かあさま</rt></ruby>から<ruby>託<rt>たく</rt></ruby>された<ruby>50<rt>ごじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>く<ruby>1<rt>いち</rt></ruby><ruby>頁目<rt>ぺーじめ</rt></ruby>を、<ruby>記<rt>しる</rt></ruby>します。<br>*(Em ghi trang đầu tiên nối tiếp 50 năm mẹ trao.)* |
| Trang | <ruby>1<rt>いち</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>: <ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>御夫妻<rt>ごふさい</rt></ruby> (リピーター<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>)、ご<ruby>友人<rt>ゆうじん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>名<rt>めい</rt></ruby>。お<ruby>嬢<rt>じょう</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>来月<rt>らいげつ</rt></ruby>ご<ruby>結婚<rt>けっこん</rt></ruby>とのこと。<ruby>桜<rt>さくら</rt></ruby>のお<ruby>引<rt>ひ</rt></ruby>き<ruby>菓子<rt>がし</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>。<br>*(1. Khách hôm nay: vợ chồng ngài Yamada (khách 30 năm), 4 bạn. Con gái tháng sau cưới. Chuẩn bị bánh hoa đào tiễn khách.)* |
| Trang | <ruby>2<rt>に</rt></ruby>、<ruby>気<rt>き</rt></ruby>づき: <ruby>奥様<rt>おくさま</rt></ruby>がお<ruby>背中<rt>せなか</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>痛<rt>いた</rt></ruby>そうに。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>食<rt>しょく</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>低<rt>ひく</rt></ruby>めの<ruby>座椅子<rt>ざいす</rt></ruby>をご<ruby>用意<rt>ようい</rt></ruby>する。<br>*(2. Quan sát: phu nhân có vẻ đau lưng. Sáng mai bữa sáng chuẩn bị ghế ngồi thấp.)* |
| Trang | <ruby>3<rt>さん</rt></ruby>、<ruby>反省<rt>はんせい</rt></ruby>: <ruby>京都<rt>きょうと</rt></ruby><ruby>弁<rt>べん</rt></ruby>「ほな、おおきに」――<ruby>意味<rt>いみ</rt></ruby>はわかるが<ruby>自然<rt>しぜん</rt></ruby>に<ruby>口<rt>くち</rt></ruby>から<ruby>出<rt>で</rt></ruby>ない。<ruby>毎日<rt>まいにち</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>。<br>*(3. Rút kinh nghiệm: phương ngữ "Hona, ookini" — hiểu nghĩa nhưng không thoát ra miệng tự nhiên. Mỗi ngày luyện 5 lần.)* |
| Trang | <ruby>4<rt>よ</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>: <ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>起床<rt>きしょう</rt></ruby>。<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>朝礼<rt>ちょうれい</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>見送<rt>みおく</rt></ruby>り<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>。<br>*(4. Mai: dậy 5h30. 6h briefing sáng. Tiễn khách 10h.)* |
| Trang | (đặt bút, đóng sổ, ôm vào ngực, nhìn lên trần) ...<ruby>始<rt>はじ</rt></ruby>まりました。<br>*(...Bắt đầu rồi.)* |
| Trang | (VN, tự nhủ) 30 năm. Mỗi ngày 1 entry. Đến năm 2058. Lúc đó mình 56 tuổi. Bằng tuổi mẹ bây giờ. Có một bạn trẻ Việt Nam khác — hoặc Nepal, Hàn, Indonesia — sẽ đứng đây, nhận cuốn sổ này từ tay mình. Mình sẽ nói "Gia nghiệp kế bằng chí hướng chứ không phải huyết thống". Đó là 始末. |
| Trang | (mỉm cười, tắt đèn) おやすみなさい、<ruby>女将<rt>おかみ</rt></ruby><ruby>様<rt>さま</rt></ruby>のお<ruby>母様<rt>かあさま</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Ngủ ngon, mẹ Okami. Ngày mai cũng xin nhờ.)* |

---

## Đọng lại chương 12

Chương khép lại 3 năm TTS của Trang bằng một <ruby>送別兼就任祝<rt>そうべつけんしゅうにんいわ</rt></ruby>い<ruby>会<rt>かい</rt></ruby> mang nguyên triết lý おもてなし của ryokan truyền thống Kyoto. Người học thuộc được **mẫu Okami mở tiệc 3 ý nghĩa** (<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会<rt>かい</rt></ruby>には<ruby>3<rt>みっ</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>がございます), **mẫu 乾杯 đề xướng có haiku** (1 câu thơ mùa + lời chúc 3 lớp + nâng cốc), **mẫu お礼の口上 phát biểu cảm ơn của 仲居** (お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします → kể từng người theo thứ tự cấp bậc → cụ thể từng kỷ niệm → cúi 45 độ 5 giây), **mẫu nhận lễ phục trang trọng** (<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>装<rt>よそお</rt></ruby>いでございます・<ruby>謹<rt>つつし</rt></ruby>んで<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします), **mẫu phiên dịch 2 chiều cho gia đình** với cấp trên Nhật (cấu trúc tách giọng — bố nói tiếng Việt → con đứng cạnh dịch sang JP keigo), và **mẫu câu nhậm chức 副仲居頭 trong 朝礼** (<ruby>本日<rt>ほんじつ</rt></ruby>より〜として<ruby>働<rt>はたら</rt></ruby>かせていただきます + nhắc lại 6 kỹ năng đã học). Trang đã khép lại 3 năm bằng đúng những gì bộ sách đã dạy từ T1 năm 1: từ N5 ngày đầu xuống Kansai (T1 year1), qua おもてなし năm 2, đến triết lý "心 + 形" được Okami truyền nguyên 30 năm (T10 year3). Triết lý ryokan — <ruby>家業<rt>かぎょう</rt></ruby>は<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で<ruby>継<rt>つ</rt></ruby>ぐ — được Trang nhận lấy như cuốn sổ tay 50 năm: nhận từ mẹ Okami, sẽ trao cho người Việt Nam (hoặc Nepal/Hàn) tiếp theo trong 30 năm tới. Đó là <ruby>始末<rt>しまつ</rt></ruby>.

> Từ vựng & mẫu câu chương này: <ruby>送別兼就任祝<rt>そうべつけんしゅうにんいわ</rt></ruby>い<ruby>会<rt>かい</rt></ruby>・<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>修了証<rt>しゅうりょうしょう</rt></ruby>・<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>許可<rt>きょか</rt></ruby>・<ruby>無事故<rt>むじこ</rt></ruby>・<ruby>無欠勤<rt>むけっきん</rt></ruby>・<ruby>模範生<rt>もはんせい</rt></ruby>・<ruby>朗報<rt>ろうほう</rt></ruby>・<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>・<ruby>1<rt>いっ</rt></ruby><ruby>句<rt>く</rt></ruby><ruby>詠<rt>よ</rt></ruby>む・<ruby>盃<rt>さかずき</rt></ruby>・お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>装<rt>よそお</rt></ruby>い・<ruby>謹<rt>つつし</rt></ruby>んで<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>西陣織<rt>にしじんおり</rt></ruby>・<ruby>紫<rt>むらさき</rt></ruby>の<ruby>仲居着物<rt>なかいきもの</rt></ruby>・<ruby>金<rt>きん</rt></ruby>の<ruby>帯<rt>おび</rt></ruby>・お<ruby>太鼓<rt>たいこ</rt></ruby>・<ruby>右前<rt>みぎまえ</rt></ruby>・<ruby>本日<rt>ほんじつ</rt></ruby>より〜として<ruby>働<rt>はたら</rt></ruby>かせていただきます・<ruby>家業<rt>かぎょう</rt></ruby>は<ruby>血<rt>ち</rt></ruby>ではなく<ruby>志<rt>こころざし</rt></ruby>で<ruby>継<rt>つ</rt></ruby>ぐ・<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>磨<rt>みが</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>ける・<ruby>始末<rt>しまつ</rt></ruby>

## Bí quyết chương

- **送別兼就任祝い**: cấu trúc Okami "tiệc 3 ý nghĩa" — tiễn TTS + mừng nhậm chức + đón gia đình — học viên Việt nhớ format này để ứng dụng cho tiệc lớn của mình về sau.
- **Haiku 乾杯**: cấp Okami chứ không phải kohai — học viên không bắt buộc tự ngâm thơ, nhưng phải hiểu cấu trúc "1 câu thơ mùa + lời chúc 3 lớp + nâng cốc" để đáp trang trọng.
- **お礼の口上 theo trật tự cấp bậc**: Okami → bếp trưởng → trưởng nakai → kohai → 監理団体 → gia đình. Tuyệt đối không bỏ thứ tự, không gộp.
- **Mẹ tự mặc kimono cho con**: nghi thức "<ruby>娘<rt>むすめ</rt></ruby>の<ruby>晴<rt>は</rt></ruby>れ<ruby>姿<rt>すがた</rt></ruby>はお<ruby>母様<rt>かあさま</rt></ruby>に<ruby>結<rt>むす</rt></ruby>んでいただく" — Okami chủ ý mời mẹ Trang sang để thực hiện. Đây là cách công nhận quan hệ gia đình-gia đình.
- **Sổ tay 50 năm + entry đầu tiên**: trao xong trong T10, T12 Trang viết trang đầu tiên — cấu trúc 4 ô (khách hôm nay / 気づき / 反省 / 明日). Học viên Việt áp dụng được vào ngành mình.
- **"おかえりなさい、お母様"**: kết chương — Trang nói với cuốn sổ 50 năm "Mừng mẹ trở về" thay vì "Tôi đi đây". Cuốn sổ "trở về" với người tiếp theo (Trang) sau khi mẹ Okami đi 25 năm. Đó là vòng tuần hoàn 始末.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 水色 | みずいろ | THUỶ SẮC | xanh nhạt |
| 裾 | すそ | CƯ | lai áo |
| 跡 | あと | TÍCH | vết tích |
| 紫 | むらさき | TỬ | tím |
| 西陣織 | にしじんおり | TÂY TRẬN CHỨC | dệt Nishijin |
| 副仲居頭 | ふくなかいがしら | PHÓ TRỌNG CƯ ĐẦU | phó trưởng nakai |
| 本質 | ほんしつ | BẢN CHẤT | bản chất |
| 切替 | きりか | THIẾT THẾ | chuyển đổi |
| 納豆 | なっとう | NẠP ĐẬU | đậu nành lên men |
| 梅干 | うめぼし | MAI CAN | mơ muối |
| 桜 | さくら | ANH | hoa anh đào |
| 梅 | うめ | MAI | hoa mơ |
| 桂川 | かつらがわ | QUẾ XUYÊN | sông Katsura |
| 古都 | こと | CỔ ĐÔ | cố đô |
| 修了証 | しゅうりょうしょう | TU LIỄU CHỨNG | giấy chứng nhận hoàn thành |
| 無事故 | むじこ | VÔ SỰ CỐ | không tai nạn |
| 無欠勤 | むけっきん | VÔ KHIẾM CẦN | không nghỉ |
| 無遅刻 | むちこく | VÔ TRÌ KHẮC | không trễ giờ |
| 満了 | まんりょう | MÃN LIỄU | mãn hạn |
| 模範生 | もはんせい | MÔ PHẠM SINH | học viên gương mẫu |
| 朗報 | ろうほう | LÃNG BÁO | tin vui |
| 在留 | ざいりゅう | TẠI LƯU | lưu trú |
| 送別 | そうべつ | TỐNG BIỆT | chia tay |
| 就任 | しゅうにん | TỰU NHIỆM | nhậm chức |
| 祝賀会 | しゅくがかい | CHÚC HẠ HỘI | tiệc chúc mừng |
| 歓迎会 | かんげいかい | HOAN NGHÊNH HỘI | tiệc chào đón |
| 預 | あず | DỰ | gửi gắm |
| 一同 | いちどう | NHẤT ĐỒNG | tất cả mọi người |
| 心 | こころ | TÂM | tâm |
| 成長 | せいちょう | THÀNH TRƯỞNG | trưởng thành |
| 音頭 | おんど | ÂM ĐẦU | đề xướng |
| 句 | く | CÚ | câu (thơ) |
| 詠 | よ | VỊNH | ngâm |
| 異国 | いこく | DỊ QUỐC | nước ngoài |
| 盃 | さかずき | BÔI | chén rượu |
| 健康 | けんこう | KIỆN KHANG | sức khoẻ |
| 祈 | いの | CẦU | cầu nguyện |
| 口上 | こうじょう | KHẨU THƯỢNG | lời phát biểu |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | người phụ trách |
| 関西空港 | かんさいくうこう | QUAN TÂY KHÔNG CẢNG | sân bay Kansai |
| 直後 | ちょくご | TRỰC HẬU | ngay sau |
| 怒鳴 | どな | NỘ MINH | quát |
| 静 | しず | TĨNH | tĩnh lặng |
| プロ意識 | プロいしき | — Ý THỨC | ý thức chuyên nghiệp |
| 盾 | たて | THUẪN | tấm khiên |
| 装 | よそおい | TRANG | lễ phục, trang phục |
| 古来 | こらい | CỔ LAI | từ xưa |
| 高位 | こうい | CAO VỊ | địa vị cao |
| 着付 | きつけ | TRỨ PHÓ | mặc kimono |
| 披露目 | ひろめ | PHI LỘ MỤC | ra mắt |
| 太鼓 | たいこ | THÁI CỔ | nút thái cổ (kimono) |
| 晴姿 | はれすがた | TÌNH TƯ | dáng vẻ trang trọng |
| 整列 | せいれつ | CHỈNH LIỆT | xếp hàng |
| 朝礼 | ちょうれい | TRIỀU LỄ | họp sáng |
| 月詠庵 | つきよみあん | NGUYỆT VỊNH AM | tên ryokan Tsukiyomian |
| 早朝 | そうちょう | TẢO TRIỀU | sáng sớm |
| 不十分 | ふじゅうぶん | BẤT THẬP PHẦN | chưa đủ |
| 御夫妻 | ごふさい | NGỰ PHU THÊ | vợ chồng |
| 引菓子 | ひきがし | DẪN QUẢ TỬ | bánh tiễn khách |
| 座椅子 | ざいす | TOẠ Ỷ TỬ | ghế ngồi thấp |
| 起床 | きしょう | KHỞI SÀNG | thức dậy |
| 始 | はじ | THUỶ | bắt đầu |
| 頁 | ぺーじ | HIỆT | trang (sách) |
| 記 | しる | KÝ | ghi |
| 想像 | そうぞう | TƯỞNG TƯỢNG | tưởng tượng |
| 友人 | ゆうじん | HỮU NHÂN | bạn |
| 結婚 | けっこん | KẾT HÔN | cưới |
| 痛 | いた | THỐNG | đau |
| 反省 | はんせい | PHẢN TỈNH | rút kinh nghiệm |
| 練習 | れんしゅう | LUYỆN TẬP | luyện tập |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
