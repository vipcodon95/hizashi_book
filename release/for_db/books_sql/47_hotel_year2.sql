-- Hizashi LITE book SQL — Trang Y2 — Khách sạn năm 2 (高級宿 + inbound)
-- curriculum_id = 800000047  (book_seq=47)
-- nguồn: books/47_hotel_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000047, 'N4', 'markdown_book', 'Khách sạn', 'Trang Y2 — Khách sạn năm 2 (高級宿 + inbound)', 'Bộ sách Hizashi — Trang Y2 — Khách sạn năm 2 (高級宿 + inbound)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000001, 800000047, NULL, 'markdown_book', 'T1. Khởi đầu năm hai — bước thành sempai (二年目開始・先輩への一歩)', '# Sách thực tập sinh khách sạn · T1. Khởi đầu năm hai — bước thành sempai (二年目開始・先輩への一歩)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế) bước vào năm 2 tại ryokan Kyoto, trình độ N4→N3, sắp thành sempai cho kohai mới sắp sang. Học các mẫu hội thoại tiếng Nhật của 仲居 năm 2: chào năm tài khoá mới với 女将 và đồng nghiệp (新年度のご挨拶), nhận lệnh phân công mới từ 女将 (〜をお任せします), xác nhận lại nội dung bằng cách lặp (〜ということでよろしいでしょうか), báo cáo tiến độ trong buổi 朝礼 (現在の状況をご報告いたします), nhờ sempai hướng dẫn lễ phép (ご指導いただけますでしょうか), và cảm ơn lời chỉ bảo (ご指導誠にありがとうございます).

---

## Bối cảnh

Ngày 1 tháng 4 năm 2026. Năm tài khoá mới bắt đầu tại 旅館「<ruby>桜風荘<rt>おうふうそう</rt></ruby>」ở Kyoto. Trang đã tròn 1 năm 仲居, được 女将 Sato thăng làm 仲居二年目 — chính thức coi như sempai cho kohai sắp sang trong tháng. Trình độ tiếng Nhật N4+, đang ôn N3. Chương này tập trung mẫu câu giao tiếp năm 2: chào năm tài khoá mới, nhận phân công mới từ 女将, báo cáo trong 朝礼, và nhờ Yumiko-sempai hướng dẫn kỹ năng mới (đón đoàn khách quen, hướng dẫn kohai).

---

## Tình huống 1 — Sân 旅館 · 6:00, chào năm tài khoá mới với 女将 Sato

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、おはようございます。<ruby>新年度<rt>しんねんど</rt></ruby>もどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Thưa Okami, chào buổi sáng. Năm tài khoá mới mong bà chỉ giáo ạ.)* |
| Sato | おはようございます、トランさん。こちらこそ<ruby>本年度<rt>ほんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào Trang-san. Năm tài khoá này tôi cũng mong cô chỉ giáo.)* |
| Trang | おかげさまで、<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>勤<rt>つと</rt></ruby>めることができました。<br>*(Nhờ bà, con đã hoàn thành được 1 năm.)* |
| Sato | <ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>りましたね。<ruby>今日<rt>きょう</rt></ruby>から<ruby>仲居<rt>なかい</rt></ruby><ruby>二年目<rt>にねんめ</rt></ruby>、<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>先輩<rt>せんぱい</rt></ruby>ですよ。<br>*(Cô đã cố gắng rất tốt. Từ hôm nay là nakai năm 2, sempai chính hiệu nhé.)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>呼<rt>よ</rt></ruby>ばれるのは、まだ<ruby>少<rt>すこ</rt></ruby>し<ruby>恥<rt>は</rt></ruby>ずかしいです。<br>*(Được gọi là sempai, con vẫn hơi ngại ạ.)* |
| Sato | これからは<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>見<rt>み</rt></ruby>る<ruby>先輩<rt>せんぱい</rt></ruby>です。<ruby>背筋<rt>せすじ</rt></ruby>を<ruby>伸<rt>の</rt></ruby>ばしてくださいね。<br>*(Từ nay là sempai mà kohai sẽ nhìn vào. Hãy thẳng lưng lên nhé.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>努<rt>つと</rt></ruby>めます。<br>*(Vâng, con rõ ạ. Con sẽ cố gắng hết sức.)* |

---

## Tình huống 2 — 玄関 · 6:20, chào sempai Yumiko đầu năm

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます。<ruby>新年度<rt>しんねんど</rt></ruby>もご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chị Yumiko, chào buổi sáng. Năm tài khoá mới mong chị chỉ bảo ạ.)* |
| Yumiko | おはよう、トランちゃん。<ruby>挨拶<rt>あいさつ</rt></ruby>がきれいになったね。<br>*(Chào Trang-chan. Cách chào đẹp hẳn lên nhỉ.)* |
| Trang | <ruby>本年度<rt>ほんねんど</rt></ruby>もどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Năm nay cũng mong chị chỉ giáo.)* |
| Yumiko | <ruby>今年<rt>ことし</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>も<ruby>来<rt>く</rt></ruby>るし、<ruby>桜<rt>さくら</rt></ruby>シーズンも<ruby>本番<rt>ほんばん</rt></ruby>。<ruby>忙<rt>いそが</rt></ruby>しくなりますよ。<br>*(Năm nay vừa có kohai sang, vừa vào mùa hoa anh đào cao điểm. Sẽ bận lắm đấy.)* |
| Trang | <ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>分<rt>わ</rt></ruby>からないことがあれば、ご<ruby>指導<rt>しどう</rt></ruby>いただけますでしょうか。<br>*(Con sẽ cố. Có gì không hiểu, chị chỉ bảo giúp con được không ạ?)* |
| Yumiko | もちろん。<ruby>一年間<rt>いちねんかん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>にやってきたから、もう<ruby>遠慮<rt>えんりょ</rt></ruby>しないでね。<br>*(Tất nhiên. Một năm qua làm chung rồi, đừng ngại nữa nhé.)* |
| Trang | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị.)* |

---

## Tình huống 3 — 食堂仲居用 · 7:00, 朝礼 đầu năm tài khoá

*Phòng ăn nhân viên. Cả ekíp 仲居 đứng dọc tường, 女将 Sato cầm sổ ghi chú.*

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>新年度<rt>しんねんど</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>です。<ruby>桜風荘<rt>おうふうそう</rt></ruby>は<ruby>本年度<rt>ほんねんど</rt></ruby>、<ruby>創業<rt>そうぎょう</rt></ruby><ruby>百二十年<rt>ひゃくにじゅうねん</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えます。<br>*(Mọi người, chào buổi sáng. Hôm nay ngày đầu năm tài khoá mới. Ouhuusou năm nay tròn 120 năm thành lập.)* |
| Cả ekíp | おめでとうございます。<br>*(Xin chúc mừng.)* |
| Sato | <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>仲居<rt>なかい</rt></ruby>の<ruby>体制<rt>たいせい</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>変<rt>か</rt></ruby>えます。<ruby>由美子<rt>ゆみこ</rt></ruby>さんは<ruby>主任<rt>しゅにん</rt></ruby><ruby>仲居<rt>なかい</rt></ruby>に、トランさんは<ruby>仲居<rt>なかい</rt></ruby><ruby>二年目<rt>にねんめ</rt></ruby>として<ruby>正式<rt>せいしき</rt></ruby>に<ruby>登録<rt>とうろく</rt></ruby>します。<br>*(Từ hôm nay tổ nakai sẽ điều chỉnh chút. Yumiko-san lên nakai chủ nhiệm, Trang-san chính thức được ghi nhận là nakai năm 2.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Con xin nhận ạ.)* |
| Sato | <ruby>来月<rt>らいげつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>、ベトナムから<ruby>新人<rt>しんじん</rt></ruby><ruby>仲居<rt>なかい</rt></ruby>が<ruby>一名<rt>いちめい</rt></ruby><ruby>入<rt>はい</rt></ruby>ります。<ruby>名前<rt>なまえ</rt></ruby>はランさん、<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<ruby>指導<rt>しどう</rt></ruby>はトランさんに<ruby>主<rt>おも</rt></ruby>にお<ruby>任<rt>まか</rt></ruby>せします。<br>*(Giữa tháng 5 sẽ có 1 nakai mới từ Việt Nam. Tên Lan-san, 21 tuổi. Việc hướng dẫn chủ yếu giao Trang-san.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のご<ruby>指導<rt>しどう</rt></ruby>のもと、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>努<rt>つと</rt></ruby>めます。<br>*(Con rõ ạ. Dưới sự chỉ bảo của chị Yumiko, con sẽ cố hết sức.)* |
| Sato | <ruby>桜<rt>さくら</rt></ruby>の<ruby>季節<rt>きせつ</rt></ruby>、<ruby>京都<rt>きょうと</rt></ruby>はお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby><ruby>多<rt>おお</rt></ruby>くなります。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めて<ruby>参<rt>まい</rt></ruby>りましょう。<br>*(Mùa hoa anh đào, Kyoto rất đông khách. Hãy nghiêm túc lên nhé.)* |
| Cả ekíp | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, kính mong được chỉ giáo ạ.)* |

---

## Tình huống 4 — Hành lang sau 朝礼 · 7:30, Trang xin Yumiko cách báo cáo mới

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ご<ruby>主任<rt>しゅにん</rt></ruby><ruby>昇進<rt>しょうしん</rt></ruby>、おめでとうございます。<br>*(Chị Yumiko, chúc mừng chị lên chủ nhiệm ạ.)* |
| Yumiko | ありがとう。トランちゃんも<ruby>二年目<rt>にねんめ</rt></ruby>、おめでとう。<br>*(Cảm ơn em. Trang-chan cũng năm 2 rồi, chúc mừng.)* |
| Trang | あの、<ruby>少<rt>すこ</rt></ruby>しお<ruby>伺<rt>うかが</rt></ruby>いしてもよろしいでしょうか。<br>*(Em xin phép hỏi chị một chút được không ạ?)* |
| Yumiko | どうぞ。<br>*(Cứ hỏi.)* |
| Trang | <ruby>二年目<rt>にねんめ</rt></ruby>から、<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>担当<rt>たんとう</rt></ruby><ruby>客室<rt>きゃくしつ</rt></ruby>の<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>するんですよね?<br>*(Từ năm 2, trong 朝礼 sẽ báo cáo tình hình phòng phụ trách phải không ạ?)* |
| Yumiko | そう。<ruby>形<rt>かた</rt></ruby>は<ruby>簡単<rt>かんたん</rt></ruby>。「<ruby>○号室<rt>ごうしつ</rt></ruby>の<ruby>○○様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>○時にチェックアウト、<ruby>特記事項<rt>とっきじこう</rt></ruby>は○○です」だけ。<br>*(Đúng. Mẫu đơn giản: "Phòng số X, khách XX, hôm nay X giờ check-out, lưu ý XX". Vậy thôi.)* |
| Trang | <ruby>特記事項<rt>とっきじこう</rt></ruby>がない<ruby>場合<rt>ばあい</rt></ruby>はどう<ruby>言<rt>い</rt></ruby>えばよろしいでしょうか?<br>*(Trường hợp không có gì đặc biệt thì nói thế nào ạ?)* |
| Yumiko | 「<ruby>特<rt>とく</rt></ruby>にございません」で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*("Không có gì đặc biệt ạ" là được.)* |
| Trang | 「<ruby>特<rt>とく</rt></ruby>にございません」ですね。メモします。<br>*("Không có gì đặc biệt ạ" — em ghi nhớ.)* |
| Yumiko | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>するけど、<ruby>三日<rt>みっか</rt></ruby>で<ruby>慣<rt>な</rt></ruby>れるよ。<br>*(Lúc đầu căng thẳng, ba ngày là quen thôi.)* |

---

## Tình huống 5 — 客室 桜の<ruby>間<rt>ま</rt></ruby> · 9:00, kiểm tra phòng cùng Yumiko theo tiêu chuẩn mới

| Vai | Lời thoại |
|---|---|
| Yumiko | トランちゃん、<ruby>今年<rt>ことし</rt></ruby>からチェックリストが<ruby>変<rt>か</rt></ruby>わったから、<ruby>一<rt>いち</rt></ruby>から<ruby>説明<rt>せつめい</rt></ruby>するね。<br>*(Trang-chan, năm nay danh mục kiểm tra đổi, chị giải thích lại từ đầu nhé.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ chị ạ.)* |
| Yumiko | <ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つ。「<ruby>清掃<rt>せいそう</rt></ruby>」「<ruby>備品<rt>びひん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>」「<ruby>季節<rt>きせつ</rt></ruby><ruby>飾<rt>かざ</rt></ruby>り」。<ruby>春<rt>はる</rt></ruby>は<ruby>桜<rt>さくら</rt></ruby>の<ruby>枝<rt>えだ</rt></ruby>を<ruby>床<rt>とこ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>に<ruby>飾<rt>かざ</rt></ruby>るのが<ruby>新<rt>あたら</rt></ruby>しい<ruby>項目<rt>こうもく</rt></ruby>です。<br>*(Có 3 mục lớn: "dọn dẹp", "kiểm vật dụng", "trang trí theo mùa". Mùa xuân, cắm cành anh đào ở tokonoma là mục mới.)* |
| Trang | <ruby>桜<rt>さくら</rt></ruby>の<ruby>枝<rt>えだ</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>替<rt>か</rt></ruby>えるのですか?<br>*(Cành anh đào có phải thay mỗi ngày không ạ?)* |
| Yumiko | <ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>一回<rt>いっかい</rt></ruby>でいい。<ruby>水<rt>みず</rt></ruby>は<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>替<rt>か</rt></ruby>えます。<br>*(2 ngày một lần là được. Nước thì thay mỗi sáng.)* |
| Trang | <ruby>水<rt>みず</rt></ruby>は<ruby>毎朝<rt>まいあさ</rt></ruby>、<ruby>枝<rt>えだ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>、ということでよろしいでしょうか?<br>*(Nước mỗi sáng, cành 2 ngày 1 lần, đúng vậy chứ ạ?)* |
| Yumiko | そのとおり。<ruby>復唱<rt>ふくしょう</rt></ruby>、いい<ruby>癖<rt>くせ</rt></ruby>ですね。<br>*(Đúng vậy. Nhắc lại là thói quen tốt đấy.)* |
| Trang | ありがとうございます。<ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Cảm ơn chị. Em được Okami dạy.)* |
| Yumiko | <ruby>備品<rt>びひん</rt></ruby>はね、<ruby>浴衣<rt>ゆかた</rt></ruby>と<ruby>足袋<rt>たび</rt></ruby>のサイズを<ruby>事前<rt>じぜん</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>するのも<ruby>追加<rt>ついか</rt></ruby>になったよ。<br>*(Vật dụng, kiểm cỡ yukata và tabi trước khi khách đến cũng là mục thêm mới.)* |
| Trang | <ruby>事前<rt>じぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>ですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Kiểm trước ạ. Em rõ.)* |

---

## Tình huống 6 — 女将室 · 10:30, 女将 giao Trang phụ trách phòng cao cấp 桜の間

| Vai | Lời thoại |
|---|---|
| Sato | トランさん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いいですか。<br>*(Trang-san, có chút thời gian không?)* |
| Trang | はい、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, con xin phép.)* |
| Sato | <ruby>本年度<rt>ほんねんど</rt></ruby>から、<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>と<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>をトランさんにお<ruby>任<rt>まか</rt></ruby>せします。<br>*(Năm nay tôi giao phòng Sakura và phòng Matsu cho Trang-san.)* |
| Trang | え、<ruby>上等<rt>じょうとう</rt></ruby>のお<ruby>部屋<rt>へや</rt></ruby>ですよね...<ruby>私<rt>わたし</rt></ruby>に<ruby>務<rt>つと</rt></ruby>まるでしょうか。<br>*(Ơ, đó là những phòng hạng cao ạ... Con có làm nổi không?)* |
| Sato | <ruby>一年間<rt>いちねんかん</rt></ruby><ruby>見<rt>み</rt></ruby>てきました。<ruby>丁寧<rt>ていねい</rt></ruby>さもあるし、<ruby>気配<rt>きくば</rt></ruby>りもできます。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Tôi đã quan sát suốt 1 năm. Cô vừa chu đáo, vừa biết quan tâm. Sẽ ổn.)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>多<rt>おお</rt></ruby>くは<ruby>常連様<rt>じょうれんさま</rt></ruby>でいらっしゃいますか。<br>*(Đa số khách là khách quen ạ?)* |
| Sato | そうです。<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby><ruby>春<rt>はる</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>来<rt>こ</rt></ruby>られる<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>方<rt>かた</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いです。<ruby>名前<rt>なまえ</rt></ruby>とお<ruby>好<rt>この</rt></ruby>みを<ruby>覚<rt>おぼ</rt></ruby>えておいてください。<br>*(Đúng. Phòng Sakura mỗi mùa xuân đều có nhiều khách Tokyo đến. Hãy nhớ tên và sở thích của họ.)* |
| Trang | <ruby>名前<rt>なまえ</rt></ruby>とお<ruby>好<rt>この</rt></ruby>み、ということでよろしいでしょうか。<br>*(Tên và sở thích, đúng vậy ạ?)* |
| Sato | そう。<ruby>由美子<rt>ゆみこ</rt></ruby>さんが<ruby>持<rt>も</rt></ruby>っている「お<ruby>客様<rt>きゃくさま</rt></ruby>ノート」を<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>いでください。<br>*(Đúng. Hãy nhận bàn giao "sổ khách" mà Yumiko-san đang giữ.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>誠心誠意<rt>せいしんせいい</rt></ruby><ruby>努<rt>つと</rt></ruby>めさせていただきます。<br>*(Con rõ ạ. Con xin được hết lòng phục vụ.)* |

---

## Tình huống 7 — 仲居控室 · 11:00, nhận bàn giao "sổ khách quen" từ Yumiko

*Phòng nghỉ nakai. Yumiko mở cuốn sổ bìa vải bọc lụa tím, trang đầy nét chữ tay.*

| Vai | Lời thoại |
|---|---|
| Yumiko | これがお<ruby>客様<rt>きゃくさま</rt></ruby>ノート。<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>のページは<ruby>赤<rt>あか</rt></ruby>い<ruby>付箋<rt>ふせん</rt></ruby>。<br>*(Đây là sổ khách. Trang khách của phòng Sakura đánh dấu giấy đỏ.)* |
| Trang | わ、<ruby>細<rt>こま</rt></ruby>かく<ruby>書<rt>か</rt></ruby>いてありますね...<br>*(Wow, viết tỉ mỉ ghê...)* |
| Yumiko | <ruby>例<rt>たと</rt></ruby>えばこの<ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>ご<ruby>夫妻<rt>ふさい</rt></ruby>。<ruby>毎年<rt>まいとし</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>第二<rt>だいに</rt></ruby><ruby>週<rt>しゅう</rt></ruby>。お<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>はご<ruby>主人<rt>しゅじん</rt></ruby>がぬる<ruby>燗<rt>かん</rt></ruby>、<ruby>奥<rt>おく</rt></ruby>さまが<ruby>梅酒<rt>うめしゅ</rt></ruby>のロック。<br>*(Ví dụ ông bà Kinoshita này. Mỗi năm tuần 2 tháng 4. Đồ uống: ông sake ấm vừa, bà rượu mơ đá viên.)* |
| Trang | お<ruby>食事<rt>しょくじ</rt></ruby>のお<ruby>好<rt>この</rt></ruby>みは...?<br>*(Sở thích về món ăn ạ...?)* |
| Yumiko | <ruby>奥<rt>おく</rt></ruby>さまは<ruby>生<rt>なま</rt></ruby><ruby>魚<rt>ざかな</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>。<ruby>刺身<rt>さしみ</rt></ruby>の<ruby>代<rt>か</rt></ruby>わりに<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>するように、と<ruby>板長<rt>いたちょう</rt></ruby>さんにお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bà không ăn được cá sống. Nhờ bếp trưởng đổi sashimi sang yuba.)* |
| Trang | <ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>、というのは、お<ruby>豆腐<rt>とうふ</rt></ruby>の<ruby>皮<rt>かわ</rt></ruby>のことですか?<br>*(Đổi sang yuba, là phần váng đậu phụ phải không ạ?)* |
| Yumiko | そう、<ruby>京都<rt>きょうと</rt></ruby>の<ruby>名物<rt>めいぶつ</rt></ruby>ね。<ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>は「<ruby>毎年<rt>まいとし</rt></ruby>これを<ruby>楽<rt>たの</rt></ruby>しみにしている」とおっしゃるよ。<br>*(Đúng, đặc sản Kyoto. Ông bà Kinoshita bảo "năm nào cũng mong cái này".)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>ノートに<ruby>書<rt>か</rt></ruby>いて、<ruby>覚<rt>おぼ</rt></ruby>えていくこと、ということですね。<br>*(Là vừa viết vào sổ, vừa ghi nhớ phải không ạ?)* |
| Yumiko | そう。<ruby>覚<rt>おぼ</rt></ruby>えるんじゃなくて、<ruby>心<rt>こころ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>す。<br>*(Đúng. Không phải nhớ, mà là để lưu trong tim.)* |

---

## Tình huống 8 — 板場入口 · 14:00, lần đầu chính thức báo cáo yêu cầu đặc biệt với 板長

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>さん、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Thưa bếp trưởng, em xin lỗi đã làm phiền lúc bận.)* |
| Itachou | おう、トランちゃん。なんだい?<br>*(À, Trang-chan. Có chuyện gì?)* |
| Trang | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>、<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>に<ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>ご<ruby>夫妻<rt>ふさい</rt></ruby>がご<ruby>宿泊<rt>しゅくはく</rt></ruby>です。<ruby>奥<rt>おく</rt></ruby>さまの<ruby>刺身<rt>さしみ</rt></ruby>を<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>していただけますでしょうか。<br>*(Tuần sau thứ Tư, phòng Sakura có ông bà Kinoshita nghỉ. Xin nhờ thầy đổi sashimi cho bà sang yuba được không ạ?)* |
| Itachou | <ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>ね、<ruby>毎年<rt>まいとし</rt></ruby>の<ruby>方<rt>かた</rt></ruby>だ。<ruby>了解<rt>りょうかい</rt></ruby>。<ruby>由美子<rt>ゆみこ</rt></ruby>さんから<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>いだのかい?<br>*(Ông Kinoshita à, khách thường niên. Hiểu rồi. Yumiko bàn giao cho à?)* |
| Trang | はい。お<ruby>客様<rt>きゃくさま</rt></ruby>ノートで<ruby>確認<rt>かくにん</rt></ruby>いたしました。<br>*(Vâng, con đã kiểm sổ khách ạ.)* |
| Itachou | <ruby>二年目<rt>にねんめ</rt></ruby>からはお<ruby>前<rt>まえ</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>か。よし、<ruby>板場<rt>いたば</rt></ruby>からも<ruby>協力<rt>きょうりょく</rt></ruby>するよ。<br>*(Từ năm 2 cô phụ trách à. Được, bếp cũng phối hợp.)* |
| Trang | <ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>当日<rt>とうじつ</rt></ruby>のメニューが<ruby>決<rt>き</rt></ruby>まりましたら、また<ruby>確認<rt>かくにん</rt></ruby>に<ruby>参<rt>まい</rt></ruby>ります。<br>*(Con xin cảm ơn thầy. Khi nào quyết menu hôm đó, con sẽ qua xác nhận lại.)* |
| Itachou | おう、しっかりな。<br>*(Ừ, vững vàng vào.)* |

---

## Tình huống 9 — お<ruby>茶<rt>ちゃ</rt></ruby><ruby>処<rt>どころ</rt></ruby> · 15:00, gặp đồng nghiệp Mei (TQ) và Soyeon (HQ) chia sẻ năm mới

| Vai | Lời thoại |
|---|---|
| Mei | トランさん、<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>になったって?おめでとう!<br>*(Trang-san, nghe nói cô phụ trách phòng Sakura? Chúc mừng!)* |
| Trang | ありがとう、メイさん。プレッシャーが<ruby>大<rt>おお</rt></ruby>きいです。<br>*(Cảm ơn Mei. Áp lực lớn ghê.)* |
| Soyeon | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。トランさんは<ruby>丁寧<rt>ていねい</rt></ruby>だから、できますよ。<br>*(Không sao. Trang-san tỉ mỉ mà, làm được mà.)* |
| Trang | ソヨンさんは<ruby>今年<rt>ことし</rt></ruby>から<ruby>何<rt>なに</rt></ruby>か<ruby>変<rt>か</rt></ruby>わりますか?<br>*(Soyeon, năm nay cô có gì đổi không?)* |
| Soyeon | <ruby>私<rt>わたし</rt></ruby>は<ruby>受付<rt>うけつけ</rt></ruby><ruby>主担当<rt>しゅたんとう</rt></ruby>になります。<ruby>英語<rt>えいご</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>はほぼ<ruby>私<rt>わたし</rt></ruby>です。<br>*(Tôi thành chủ trách lễ tân. Khách tiếng Anh hầu hết tôi đảm.)* |
| Mei | <ruby>私<rt>わたし</rt></ruby>は<ruby>中国<rt>ちゅうごく</rt></ruby><ruby>団体<rt>だんたい</rt></ruby><ruby>客<rt>きゃく</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>。<ruby>桜<rt>さくら</rt></ruby>のシーズン、すごく<ruby>多<rt>おお</rt></ruby>いです。<br>*(Tôi chuyên đoàn khách Trung Quốc. Mùa hoa anh đào đông kinh khủng.)* |
| Trang | みんなそれぞれ<ruby>担当<rt>たんとう</rt></ruby>ですね。<ruby>分<rt>わ</rt></ruby>からないことが<ruby>出<rt>で</rt></ruby>たら、<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Mọi người mỗi người một mảng nhỉ. Có gì không hiểu cho mình hỏi với nhé.)* |
| Soyeon | こちらこそ。<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Mình cũng vậy. Cùng cố lên.)* |

---

## Tình huống 10 — お<ruby>客様<rt>きゃくさま</rt></ruby>玄関 · 17:00, đón khách đầu tiên của năm tài khoá mới

| Vai | Lời thoại |
|---|---|
| Trang | (cúi 30 độ) いらっしゃいませ。<ruby>桜風荘<rt>おうふうそう</rt></ruby>へようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<br>*(Kính chào quý khách. Hoan nghênh quý khách đến với Ouhuusou.)* |
| Khách | お<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>木下<rt>きのした</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Xin được phiền. Tôi là Kinoshita.)* |
| Trang | <ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>本年度<rt>ほんねんど</rt></ruby>もご<ruby>愛顧<rt>あいこ</rt></ruby>くださいまして、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Thưa ông Kinoshita, chúng tôi đã chờ ông. Năm nay quý ông vẫn ưu ái, chúng tôi xin chân thành cảm ơn.)* |
| Khách | <ruby>桜<rt>さくら</rt></ruby>がきれいだね。<ruby>今年<rt>ことし</rt></ruby>もよろしくね。<br>*(Hoa anh đào đẹp nhỉ. Năm nay cũng nhờ cô.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>のご<ruby>担当<rt>たんとう</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めさせていただきます、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>のトランと<ruby>申<rt>もう</rt></ruby>します。<br>*(Từ hôm nay con xin được phụ trách phòng Sakura, con là Trang, người Việt Nam.)* |
| Khách | ベトナムから?<ruby>日本語<rt>にほんご</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Từ Việt Nam à? Tiếng Nhật giỏi nhỉ.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。まだまだ<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>でございます。お<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>奥<rt>おく</rt></ruby>さまには<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>をご<ruby>用意<rt>ようい</rt></ruby>させていただいております。<br>*(Con không dám. Con vẫn đang học ạ. Về món ăn, con đã chuẩn bị yuba cho bà ạ.)* |
| Khách | あら、よく<ruby>覚<rt>おぼ</rt></ruby>えていてくれて、ありがとう。<br>*(Ơ, cô nhớ chu đáo, cảm ơn nhé.)* |

---

## Tình huống 11 — 廊下 · 17:30, Sato khen Trang sau khi đón khách

| Vai | Lời thoại |
|---|---|
| Sato | トランさん、<ruby>先<rt>さき</rt></ruby>ほどのお<ruby>迎<rt>むか</rt></ruby>え、<ruby>聞<rt>き</rt></ruby>いていました。<br>*(Trang-san, lúc nãy cô đón khách, tôi có nghe.)* |
| Trang | え、<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Ơ, con run quá ạ.)* |
| Sato | <ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>のことを<ruby>先<rt>さき</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えしたのが<ruby>素敵<rt>すてき</rt></ruby>でした。お<ruby>客様<rt>きゃくさま</rt></ruby>はそういう<ruby>一言<rt>ひとこと</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えていらっしゃいます。<br>*(Việc cô báo trước chuyện yuba rất hay. Khách sẽ nhớ một câu như vậy.)* |
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のノートのおかげです。<br>*(Nhờ sổ của chị Yumiko ạ.)* |
| Sato | ノートを<ruby>読<rt>よ</rt></ruby>むだけでは<ruby>足<rt>た</rt></ruby>りません。<ruby>使<rt>つか</rt></ruby>うのが<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>使<rt>つか</rt></ruby>えた、ということですね。<br>*(Chỉ đọc sổ không đủ. Quan trọng là biết dùng. Cô đã biết dùng đấy.)* |
| Trang | ありがとうございます。<ruby>明日<rt>あした</rt></ruby>もしっかり<ruby>務<rt>つと</rt></ruby>めます。<br>*(Con xin cảm ơn. Mai con cũng sẽ làm tốt.)* |
| Sato | <ruby>桜<rt>さくら</rt></ruby>の<ruby>季節<rt>きせつ</rt></ruby>は<ruby>三<rt>さん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>です。<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にね。<br>*(Mùa hoa anh đào kéo dài 3 tuần. Giữ sức khoẻ nhé.)* |
| Trang | はい、ご<ruby>指導<rt>しどう</rt></ruby><ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Vâng, con xin chân thành cảm ơn lời chỉ bảo của bà.)* |

---

## Tình huống 12 — 仲居寮 食堂 · 19:30, ăn tối với Mei và Soyeon, bàn về kohai sắp sang

| Vai | Lời thoại |
|---|---|
| Mei | トランさん、<ruby>来月<rt>らいげつ</rt></ruby>のベトナムの<ruby>新人<rt>しんじん</rt></ruby>さん、もう<ruby>名前<rt>なまえ</rt></ruby><ruby>聞<rt>き</rt></ruby>いた?<br>*(Trang, người mới Việt Nam tháng sau, biết tên chưa?)* |
| Trang | うん、ランさん。<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>、ベトナム<ruby>南<rt>みなみ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>です。<br>*(Ừ, Lan-san. 21 tuổi, người miền Nam Việt Nam.)* |
| Soyeon | <ruby>同<rt>おな</rt></ruby>じ<ruby>国<rt>くに</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来<rt>く</rt></ruby>るの、いいね。<br>*(Có kohai cùng nước đến, hay nhỉ.)* |
| Trang | <ruby>嬉<rt>うれ</rt></ruby>しいけど、ちょっと<ruby>不安<rt>ふあん</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>、ちゃんと<ruby>教<rt>おし</rt></ruby>えられるかな。<br>*(Vui nhưng cũng hơi lo. Mình có dạy được không nhỉ.)* |
| Mei | トランさんは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>のことを<ruby>覚<rt>おぼ</rt></ruby>えているでしょう?あの<ruby>気持<rt>きも</rt></ruby>ちを<ruby>忘<rt>わす</rt></ruby>れなければいいよ。<br>*(Trang ổn mà. Vẫn nhớ chuyện 1 năm trước chứ? Đừng quên cảm giác đó là được.)* |
| Soyeon | <ruby>韓国<rt>かんこく</rt></ruby>では「<ruby>初心<rt>しょしん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れない」という<ruby>言葉<rt>ことば</rt></ruby>があります。<br>*(Hàn Quốc có câu "đừng quên tâm ban đầu".)* |
| Trang | <ruby>日本<rt>にほん</rt></ruby>でも「<ruby>初心忘<rt>しょしんわす</rt></ruby>るべからず」と<ruby>言<rt>い</rt></ruby>いますね。<br>*(Nhật cũng có câu "không được quên tâm ban đầu" nhỉ.)* |
| Mei | そう、<ruby>三<rt>さん</rt></ruby>か<ruby>国<rt>こく</rt></ruby><ruby>同<rt>おな</rt></ruby>じ。<br>*(Đúng, ba nước giống nhau.)* |
| Trang | ランさんのこと、みんなで<ruby>守<rt>まも</rt></ruby>ろうね。<br>*(Lan-san, mọi người cùng bảo vệ em ấy nhé.)* |
| Soyeon | もちろん。<br>*(Tất nhiên.)* |

---

## Tình huống 13 — Phòng Trang · 21:30, gọi Zalo về Huế cho ba mẹ (Cảnh tiếng Việt)

> Cảnh tiếng Việt — gọi video về Huế, ôn lại từ vựng JP qua hội thoại.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Mẹ ơi, ba ơi, con đây. |
| Mẹ Trang | (tiếng Việt) Trang đó hả con. Khoẻ không, bên đó còn lạnh không? |
| Trang | (tiếng Việt) Dạ Kyoto bắt đầu ấm rồi mẹ. Hôm nay là 1/4, ngày đầu năm tài khoá mới — bên này gọi là *shinnendo* — 新年度. Con chính thức lên *nakai* năm 2 rồi mẹ. |
| Ba Trang | (tiếng Việt) Hay quá con. Lên năm hai có thay đổi gì không? |
| Trang | (tiếng Việt) Dạ có ba. Bà Okami giao con phụ trách hai phòng cao cấp luôn — phòng Sakura với phòng Matsu. Khách đa số là *jouren-sama* — 常連様, khách quen đi mỗi năm. |
| Mẹ Trang | (tiếng Việt) Trời ơi vậy phải lo lắm. Khách quen tinh tế lắm con. |
| Trang | (tiếng Việt) Dạ. Mà may chị Yumiko sempai bàn giao cho con một cuốn sổ ghi rõ luôn — tên khách, sở thích, kiểu uống rượu, kiểu món ăn. Có ông bà Kinoshita đi 12 năm rồi, bà không ăn được cá sống nên phải đổi sashimi thành *yuba* — 湯葉, váng đậu phụ đặc sản Kyoto. |
| Ba Trang | (tiếng Việt) Vậy là khách sang đó hay nhớ con luôn. |
| Trang | (tiếng Việt) Dạ chiều nay con đón ông bà Kinoshita, con báo trước "đã chuẩn bị yuba cho bà rồi ạ" — bà cười, khen con nhớ. Bà Okami nghe được, gọi con ra hành lang khen. Con vui muốn khóc. |
| Mẹ Trang | (tiếng Việt) Mẹ tự hào con ghê. Mà còn gì nữa không? |
| Trang | (tiếng Việt) Dạ tháng sau có em kohai mới từ Việt Nam sang, tên Lan, 21 tuổi. Con sẽ làm *shidouin* — 指導員, người hướng dẫn. Con lo lắm mẹ. |
| Mẹ Trang | (tiếng Việt) Hồi xưa con đi xa nhà mẹ cũng lo y vậy. Em Lan cũng vậy thôi, con đi trước rồi, con hiểu mà. |
| Ba Trang | (tiếng Việt) Nhớ "không quên tâm ban đầu" nha con. |
| Trang | (tiếng Việt) Dạ, bên đây cũng có câu y vậy: *shoshin wasuru bekarazu* — 初心忘るべからず. Ba mẹ giữ sức khoẻ, con ngủ đây. |

---

## Tình huống 14 — Bàn học phòng Trang · 22:30, ghi nhật ký lưu mẫu câu chương

| Vai | Lời thoại |
|---|---|
| Trang | (ghi sổ, đọc nhẩm) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>。<ruby>仲居<rt>なかい</rt></ruby><ruby>二年目<rt>にねんめ</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>。<br>*(1/4. Ngày đầu nakai năm 2.)* |
| Trang | <ruby>今日<rt>きょう</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>:<ruby>新年度<rt>しんねんど</rt></ruby>・<ruby>主任<rt>しゅにん</rt></ruby><ruby>仲居<rt>なかい</rt></ruby>・<ruby>常連様<rt>じょうれんさま</rt></ruby>・<ruby>湯葉<rt>ゆば</rt></ruby>・<ruby>床<rt>とこ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>・<ruby>桜<rt>さくら</rt></ruby>の<ruby>枝<rt>えだ</rt></ruby>・<ruby>復唱<rt>ふくしょう</rt></ruby>・<ruby>事前<rt>じぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Từ học hôm nay: năm tài khoá, chủ nhiệm nakai, khách quen, yuba, tokonoma, cành anh đào, nhắc lại, kiểm trước.)* |
| Trang | <ruby>今日<rt>きょう</rt></ruby><ruby>使<rt>つか</rt></ruby>った<ruby>表現<rt>ひょうげん</rt></ruby>:〜をお<ruby>任<rt>まか</rt></ruby>せします・〜ということでよろしいでしょうか・ご<ruby>指導<rt>しどう</rt></ruby>いただけますでしょうか・<ruby>承知<rt>しょうち</rt></ruby>いたしました・<ruby>誠心誠意<rt>せいしんせいい</rt></ruby><ruby>努<rt>つと</rt></ruby>めます・ご<ruby>愛顧<rt>あいこ</rt></ruby>くださいまして。<br>*(Mẫu câu: nhờ ~, đúng vậy chứ ạ, xin chỉ bảo, con rõ ạ, xin hết lòng, được quý ông ưu ái.)* |
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>ノート、<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>いだ。<ruby>覚<rt>おぼ</rt></ruby>えるんじゃなくて<ruby>心<rt>こころ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>す。<br>*(Đã nhận sổ khách từ chị Yumiko. Không phải nhớ mà là lưu vào tim.)* |
| Trang | <ruby>初心忘<rt>しょしんわす</rt></ruby>るべからず。ランさんが<ruby>来<rt>く</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、もっと<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Không quên tâm ban đầu. Trước khi Lan-san đến, phải luyện tập thêm.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá, Trang chính thức bước thành 仲居二年目 và nhận hai phòng cao cấp 桜の間・松の間 với loạt khách quen lâu năm. Học được bộ mẫu câu sempai năm 2 trong ryokan truyền thống Kyoto: **chào năm mới tài khoá kính ngữ** (新年度もどうぞよろしくお願いいたします), **nhận phân công từ 女将** (お任せします → 承知いたしました), **xác nhận lại bằng câu lặp** (〜ということでよろしいでしょうか), **nhờ sempai chỉ bảo** (ご指導いただけますでしょうか), **báo cáo lễ phép với 板長** (お忙しいところ失礼いたします → 〜していただけますでしょうか), **chào khách quen kính ngữ cao** (本年度もご愛顧くださいまして、誠にありがとうございます), và **cảm ơn lời chỉ bảo** (ご指導誠にありがとうございます). Phát hiện ra rằng "お客様ノート" của Yumiko-sempai không chỉ để đọc mà để **dùng được**, để khách cảm nhận "ryokan này nhớ tôi". Triết lý おもてなし đầu tiên cảm nhận được: 覚えるんじゃなくて、心に残す.

> Từ vựng & mẫu câu chương này: 新年度・本年度・主任仲居・仲居二年目・常連様・お客様ノート・桜の間・松の間・床の間・湯葉・浴衣・足袋・刺身・ぬる燗・梅酒・板長・板場・お任せします・〜ということでよろしいでしょうか・ご指導いただけますでしょうか・承知いたしました・誠心誠意努めます・ご愛顧くださいまして誠にありがとうございます・初心忘るべからず

## Bí quyết chương

- Chào năm tài khoá ở ryokan dùng lễ độ cao hơn doanh nghiệp thường: 「本年度もどうぞよろしくお願いいたします」.
- Khi 女将 giao việc với 「〜をお任せします」, đáp bằng 「承知いたしました・誠心誠意努めます」(không dùng 「分かりました」).
- 復唱 (lặp lại để xác nhận) là kỹ năng cơ bản của 仲居 — dùng mẫu「〜ということでよろしいでしょうか」.
- Khách quen 常連様 không phải nhớ mà phải **lưu lại trong tim** — お客様ノート truyền tay là nét văn hoá ryokan truyền thống.
- Trang trí 床の間 theo mùa (cành anh đào tháng 4) — đặc trưng ryokan; nước thay mỗi sáng, cành 2 ngày 1 lần.
- "初心忘るべからず" — câu Zeami về sân khấu Nou, được dùng phổ biến trong ngành 接客 Nhật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新年度 | しんねんど | TÂN NIÊN ĐỘ | Năm tài khoá mới (bắt đầu 1/4) |
| 本年度 | ほんねんど | BẢN NIÊN ĐỘ | Năm tài khoá này |
| 女将 | おかみ | NỮ TƯỚNG | Okami — chủ nữ ryokan |
| 仲居 | なかい | TRỌNG CƯ | Nakai — nữ nhân viên phục vụ ryokan |
| 主任 | しゅにん | CHỦ NHIỆM | Chủ nhiệm, tổ trưởng |
| 創業 | そうぎょう | SÁNG NGHIỆP | Thành lập (cơ sở) |
| 体制 | たいせい | THỂ CHẾ | Cơ cấu, hệ thống |
| 登録 | とうろく | ĐĂNG LỤC | Đăng ký, ghi danh |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 指導 | しどう | CHỈ ĐẠO | Chỉ bảo, hướng dẫn |
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | Người hướng dẫn |
| 後輩 | こうはい | HẬU BỐI | Kohai, đàn em |
| 先輩 | せんぱい | TIÊN BỐI | Sempai, đàn anh |
| 桜 | さくら | ANH | Hoa anh đào |
| 季節 | きせつ | QUÝ TIẾT | Mùa |
| 客室 | きゃくしつ | KHÁCH THẤT | Phòng khách (lưu trú) |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 朝礼 | ちょうれい | TRIỀU LỄ | Họp đầu ngày |
| 状況 | じょうきょう | TÌNH HUỐNG | Tình hình |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 特記事項 | とっきじこう | ĐẶC KÝ SỰ HẠNG | Mục lưu ý đặc biệt |
| 清掃 | せいそう | THANH TẢO | Dọn dẹp |
| 備品 | びひん | BỊ PHẨM | Vật dụng (phòng) |
| 床の間 | とこのま | SÀNG GIAN | Tokonoma — góc trang trí phòng kiểu Nhật |
| 飾り | かざり | SỨC | Trang trí |
| 復唱 | ふくしょう | PHỤC XƯỚNG | Nhắc lại, đọc lại để xác nhận |
| 事前 | じぜん | SỰ TIỀN | Trước, trước sự việc |
| 浴衣 | ゆかた | DỤC Y | Yukata |
| 足袋 | たび | TÚC ĐẠI | Tabi — vớ ngón cái Nhật |
| 常連様 | じょうれんさま | THƯỜNG LIÊN DẠNG | Khách quen, khách thường xuyên |
| 上等 | じょうとう | THƯỢNG ĐẲNG | Cao cấp |
| 気配り | きくばり | KHÍ PHỐI | Sự quan tâm chu đáo |
| 引き継ぐ | ひきつぐ | DẪN KẾ | Bàn giao, kế thừa |
| 付箋 | ふせん | PHÓ TIÊN | Giấy ghi chú dán (post-it) |
| 夫妻 | ふさい | PHU THÊ | Vợ chồng |
| ぬる燗 | ぬるかん | — HÃM | Sake ấm vừa (~40°C) |
| 梅酒 | うめしゅ | MAI TỬU | Rượu mơ |
| 刺身 | さしみ | THÍCH THÂN | Sashimi — cá sống thái lát |
| 湯葉 | ゆば | THANG DIỆP | Yuba — váng đậu phụ (đặc sản Kyoto) |
| 苦手 | にがて | KHỔ THỦ | Không hợp, kém về (ăn/làm gì đó) |
| 変更 | へんこう | BIẾN CANH | Thay đổi |
| 板長 | いたちょう | BẢN TRƯỞNG | Bếp trưởng (kiểu Nhật) |
| 板場 | いたば | BẢN TRƯỜNG | Bếp Nhật |
| 名物 | めいぶつ | DANH VẬT | Đặc sản |
| 宿泊 | しゅくはく | TÚC BẠC | Lưu trú |
| 受付 | うけつけ | THỤ PHÓ | Lễ tân, tiếp nhận |
| 団体 | だんたい | ĐOÀN THỂ | Đoàn (khách) |
| 愛顧 | あいこ | ÁI CỐ | Ưu ái, ủng hộ (kính ngữ) |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 初心 | しょしん | SƠ TÂM | Tâm ban đầu |
| 誠心誠意 | せいしんせいい | THÀNH TÂM THÀNH Ý | Hết lòng hết dạ |
| 恐れ入ります | おそれいります | KHỦNG NHẬP — | Xin được nhận, thật ngại quá (kính ngữ) |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000002, 800000047, NULL, 'markdown_book', 'T2. Kohai Lan đến — Trang dạy lại từ đầu (後輩ラン来日・先輩トランの指導開始)', '# Sách thực tập sinh khách sạn · T2. Kohai Lan đến — Trang dạy lại từ đầu (後輩ラン来日・先輩トランの指導開始)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế) đón kohai Lan (21 tuổi, Cần Thơ) mới sang. Học các mẫu hội thoại tiếng Nhật của 指導員 仲居: giới thiệu kohai với ekíp (ご紹介させていただきます), hướng dẫn từng bước theo "見せる→一緒に→一人で", chỉnh sửa lỗi bằng cách lễ phép (もう一度ご一緒に〜), giải thích thuật ngữ ryokan cho người mới (〜とは〜のことです), khen kohai khi làm tốt (とてもよくできましたね), phiên dịch JP-VN cho 女将 và kohai khi cần (〜とおっしゃっています).

---

## Bối cảnh

Ngày 15 tháng 5 năm 2026. Sau hơn một tháng vào năm thứ hai, Trang đón kohai Lan từ Cần Thơ tại ga Kyoto, đưa về 旅館「桜風荘」. Lan vừa hoàn thành 1 tháng đào tạo tại trung tâm 監理支援機関 ở Osaka, tiếng Nhật N5+ giống Trang một năm trước. Chương này tập trung mẫu câu giao tiếp của 指導員 tại ryokan: đón kohai ở ga, giới thiệu với 女将 và ekíp, dạy lại các kỹ năng cơ bản (chào cúi 30 độ, gấp khăn おしぼり, trải futon, mặc 浴衣), chỉnh sai lễ phép và khen kịp thời.

---

## Tình huống 1 — Sân ga 京都駅 八条口 · 14:00, Trang đón Lan từ shinkansen

*Trang cầm tấm bảng A4 viết tay "ランさん 桜風荘 仲居 トラン". Lan kéo vali to, gương mặt mệt nhưng phấn khích.*

| Vai | Lời thoại |
|---|---|
| Lan | (chạy lại) Chị Trang ơi! Em đây! |
| Trang | Lan đó hả, mệt không em? Chuyến shinkansen từ Osaka qua bao lâu? |
| Lan | Dạ chỉ 15 phút thôi chị, nhanh dã man. |
| Trang | OK, mình nói tiếng Nhật từ giờ nha. <ruby>女将<rt>おかみ</rt></ruby>さんが「ランさんは<ruby>初日<rt>しょにち</rt></ruby>から<ruby>日本語<rt>にほんご</rt></ruby><ruby>慣<rt>な</rt></ruby>れた<ruby>方<rt>ほう</rt></ruby>がいい」とおっしゃっています。<br>*(Okami bảo Lan nên quen tiếng Nhật ngay từ ngày đầu.)* |
| Lan | は、はい。よろしくお<ruby>願<rt>ねが</rt></ruby>いします、トラン<ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Vâng. Mong chị Trang chỉ bảo.)* |
| Trang | 「<ruby>先輩<rt>せんぱい</rt></ruby>」じゃなくて「トランさん」でいいよ。<ruby>恥<rt>は</rt></ruby>ずかしいから。<br>*("Sempai" thì ngại, gọi "Trang-san" được rồi.)* |
| Lan | はい、トランさん。<ruby>桜風荘<rt>おうふうそう</rt></ruby>まで<ruby>遠<rt>とお</rt></ruby>いですか?<br>*(Vâng, Trang-san. Đến Ouhuusou xa không ạ?)* |
| Trang | バスで<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<ruby>着<rt>つ</rt></ruby>いたら<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>挨拶<rt>あいさつ</rt></ruby>するから、<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(20 phút xe buýt. Đến nơi sẽ chào Okami, mình luyện trước nhé.)* |

---

## Tình huống 2 — Trên xe buýt số 206 · 14:30, Trang dạy Lan câu chào với 女将

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>辞儀<rt>じぎ</rt></ruby>は<ruby>三<rt>さん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>あるよ。<ruby>会釈<rt>えしゃく</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>普通<rt>ふつう</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>最敬礼<rt>さいけいれい</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>。<br>*(Cúi có 3 loại. Cúi nhẹ 15°, cúi thường 30°, cúi kính cẩn 45°.)* |
| Lan | <ruby>女将<rt>おかみ</rt></ruby>さんへの<ruby>挨拶<rt>あいさつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>度<rt>ど</rt></ruby>ですか?<br>*(Chào Okami bao nhiêu độ ạ?)* |
| Trang | <ruby>初<rt>はじ</rt></ruby>めましては<ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>。<br>*(Lần đầu thì 45°.)* |
| Lan | <ruby>言葉<rt>ことば</rt></ruby>は?<br>*(Lời nói thế nào ạ?)* |
| Trang | 「<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>桜風荘<rt>おうふうそう</rt></ruby>でお<ruby>世話<rt>せわ</rt></ruby>になります、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>のランと<ruby>申<rt>もう</rt></ruby>します。<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。」<br>*("Từ hôm nay con xin được phụng sự tại Ouhuusou, con là Lan, người Việt Nam. Kính xin được chỉ giáo.")* |
| Lan | (lặp) <ruby>本日<rt>ほんじつ</rt></ruby>より...お<ruby>世話<rt>せわ</rt></ruby>になります...ランと<ruby>申<rt>もう</rt></ruby>します。<br>*(Từ hôm nay... xin được phụng sự... con là Lan.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby>ご<ruby>一緒<rt>いっしょ</rt></ruby>に。<ruby>本日<rt>ほんじつ</rt></ruby>より...<br>*(Không sao, một lần nữa cùng nhau. Bản nhật yori...)* |
| Lan | <ruby>本日<rt>ほんじつ</rt></ruby>より、<ruby>桜風荘<rt>おうふうそう</rt></ruby>で、お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Từ hôm nay, tại Ouhuusou, xin phụng sự.)* |
| Trang | とてもよくできましたね。<br>*(Tốt lắm.)* |

---

## Tình huống 3 — 玄関 旅館「桜風荘」 · 15:00, Trang dẫn Lan vào, gặp Yumiko

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ただいま<ruby>戻<rt>もど</rt></ruby>りました。ランさんをお<ruby>連<rt>つ</rt></ruby>れしました。<br>*(Chị Yumiko, em về rồi. Em đưa Lan-san về.)* |
| Yumiko | お<ruby>疲<rt>つか</rt></ruby>れさま。ランさん、ようこそ。<br>*(Vất vả rồi. Lan-san, hoan nghênh.)* |
| Trang | ランさん、こちらは<ruby>主任<rt>しゅにん</rt></ruby><ruby>仲居<rt>なかい</rt></ruby>の<ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>です。<br>*(Lan-san, đây là chị Yumiko, chủ nhiệm nakai.)* |
| Lan | (cúi 45°) <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>桜風荘<rt>おうふうそう</rt></ruby>でお<ruby>世話<rt>せわ</rt></ruby>になります、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>のランと<ruby>申<rt>もう</rt></ruby>します。<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ hôm nay con xin được phụng sự tại Ouhuusou, con là Lan, người Việt Nam. Kính xin được chỉ giáo.)* |
| Yumiko | きれいなお<ruby>辞儀<rt>じぎ</rt></ruby>ですね。トランさん、もう<ruby>練習<rt>れんしゅう</rt></ruby>したの?<br>*(Cúi đẹp nhỉ. Trang-san, đã luyện rồi à?)* |
| Trang | はい、バスの<ruby>中<rt>なか</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>しだけ。<br>*(Vâng, trên xe buýt một chút.)* |
| Yumiko | <ruby>偉<rt>えら</rt></ruby>いね。ランさん、<ruby>緊張<rt>きんちょう</rt></ruby>しないで。<ruby>分<rt>わ</rt></ruby>からないことはトランさんに<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Giỏi quá. Lan-san, đừng căng thẳng. Có gì không hiểu cứ hỏi Trang-san.)* |
| Lan | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị.)* |

---

## Tình huống 4 — 女将室 · 15:30, Lan ra mắt 女将 Sato

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>いたします。ランさんをお<ruby>連<rt>つ</rt></ruby>れしました。<br>*(Thưa Okami, con xin phép. Con đưa Lan-san vào ạ.)* |
| Sato | お<ruby>入<rt>はい</rt></ruby>りください。<br>*(Mời vào.)* |
| Lan | (cúi 45°) <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>桜風荘<rt>おうふうそう</rt></ruby>でお<ruby>世話<rt>せわ</rt></ruby>になります、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>のランと<ruby>申<rt>もう</rt></ruby>します。<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ hôm nay con xin được phụng sự tại Ouhuusou, con là Lan, người Việt Nam. Kính xin được chỉ giáo.)* |
| Sato | <ruby>遠<rt>とお</rt></ruby>いところよくいらっしゃいました。<ruby>女将<rt>おかみ</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>桜風荘<rt>おうふうそう</rt></ruby>は<ruby>百二十年<rt>ひゃくにじゅうねん</rt></ruby>の<ruby>旅館<rt>りょかん</rt></ruby>です。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、ゆっくり<ruby>学<rt>まな</rt></ruby>びましょう。<br>*(Từ xa đến đây vất vả rồi. Tôi là Okami Satou. Ouhuusou là ryokan 120 năm. 3 năm tới, hãy học từ từ.)* |
| Lan | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, con xin cố hết sức.)* |
| Sato | トランさん、ランさんの<ruby>指導<rt>しどう</rt></ruby>を<ruby>正式<rt>せいしき</rt></ruby>にお<ruby>任<rt>まか</rt></ruby>せします。<ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>間<rt>かん</rt></ruby>、<ruby>基本<rt>きほん</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてあげてください。<br>*(Trang-san, chính thức giao hướng dẫn Lan-san cho cô. Trong 3 tháng, hãy dạy cẩn thận căn bản.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>誠心誠意<rt>せいしんせいい</rt></ruby><ruby>努<rt>つと</rt></ruby>めます。<br>*(Con rõ ạ. Con xin hết lòng.)* |
| Sato | <ruby>困<rt>こま</rt></ruby>ったら、いつでも<ruby>相談<rt>そうだん</rt></ruby>してくださいね。<br>*(Có gì khó cứ trao đổi với tôi bất cứ lúc nào.)* |

---

## Tình huống 5 — 仲居控室 · 16:00, Trang giới thiệu Lan với ekíp Mei và Soyeon

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>皆<rt>みな</rt></ruby>さん、ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>仲間<rt>なかま</rt></ruby>になるランさんです。ベトナム・カントー<ruby>出身<rt>しゅっしん</rt></ruby>、<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<br>*(Mọi người, em xin được giới thiệu. Đây là Lan-san, từ hôm nay là thành viên mới. Người Cần Thơ Việt Nam, 21 tuổi.)* |
| Mei | <ruby>中国<rt>ちゅうごく</rt></ruby><ruby>団体<rt>だんたい</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>のメイです。よろしくね。<br>*(Tôi là Mei, phụ trách đoàn Trung Quốc. Mong em.)* |
| Soyeon | <ruby>受付<rt>うけつけ</rt></ruby>のソヨンです。<ruby>韓国<rt>かんこく</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Tôi là Soyeon ở lễ tân, người Hàn Quốc.)* |
| Lan | はじめまして、ランです。<ruby>何<rt>なに</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりませんが、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hân hạnh, em là Lan. Em chưa biết gì, mong các chị chỉ bảo.)* |
| Mei | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。トランさんも<ruby>一年前<rt>いちねんまえ</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じだったよ。<br>*(Không sao. Trang-san một năm trước cũng vậy mà.)* |
| Trang | (cười) <ruby>本当<rt>ほんとう</rt></ruby>。<ruby>泣<rt>な</rt></ruby>きそうだったよ。<br>*(Thật đấy. Suýt khóc luôn.)* |
| Soyeon | ランさん、<ruby>部屋<rt>へや</rt></ruby>はトランさんの<ruby>隣<rt>となり</rt></ruby>ですよね?<br>*(Lan-san, phòng cô cạnh phòng Trang-san phải không?)* |
| Trang | はい、リン<ruby>姉<rt>ねえ</rt></ruby>さんが<ruby>帰国<rt>きこく</rt></ruby>したから、<ruby>空<rt>あ</rt></ruby>いていた<ruby>部屋<rt>へや</rt></ruby>です。<br>*(Vâng, phòng chị Linh về nước nên trống.)* |

---

## Tình huống 6 — 仲居寮 ランの<ruby>部屋<rt>へや</rt></ruby> · 16:30, Trang giúp Lan sắp xếp

*Phòng nhỏ 6 tatami, có tủ, bàn thấp, futon gấp sẵn. Lan mở vali, lấy ảnh gia đình.*

| Vai | Lời thoại |
|---|---|
| Lan | トランさん、<ruby>洗面所<rt>せんめんじょ</rt></ruby>はどこですか?<br>*(Trang-san, nhà rửa mặt ở đâu ạ?)* |
| Trang | <ruby>廊下<rt>ろうか</rt></ruby>の<ruby>突<rt>つ</rt></ruby>き<ruby>当<rt>あ</rt></ruby>たり。お<ruby>風呂<rt>ふろ</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>、<ruby>21<rt>にじゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>まで。<br>*(Cuối hành lang. Nhà tắm ở tầng 1, mở đến 21h.)* |
| Lan | <ruby>食事<rt>しょくじ</rt></ruby>は?<br>*(Bữa ăn ạ?)* |
| Trang | <ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時半<rt>じはん</rt></ruby>、<ruby>昼<rt>ひる</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>夜<rt>よる</rt></ruby>は<ruby>19<rt>じゅうく</rt></ruby><ruby>時<rt>じ</rt></ruby>。<ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>賄<rt>まかな</rt></ruby>いを<ruby>食<rt>た</rt></ruby>べます。<br>*(Sáng 6:30, trưa 12h, tối 19h. Ăn cơm nhân viên tại nhà ăn.)* |
| Lan | 「<ruby>賄<rt>まかな</rt></ruby>い」とは<ruby>何<rt>なに</rt></ruby>ですか?<br>*("Makanai" là gì ạ?)* |
| Trang | 「<ruby>賄<rt>まかな</rt></ruby>い」とは、<ruby>店<rt>みせ</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>く<ruby>人<rt>ひと</rt></ruby>のための<ruby>食事<rt>しょくじ</rt></ruby>のことです。<ruby>板長<rt>いたちょう</rt></ruby>さんが<ruby>作<rt>つく</rt></ruby>ってくれるよ。<br>*("Makanai" là cơm cho nhân viên làm trong cửa hàng. Bếp trưởng nấu cho.)* |
| Lan | おいしいですか?<br>*(Ngon không ạ?)* |
| Trang | おいしいよ。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>った<ruby>食材<rt>しょくざい</rt></ruby>で<ruby>作<rt>つく</rt></ruby>るから、<ruby>毎日<rt>まいにち</rt></ruby><ruby>違<rt>ちが</rt></ruby>うメニュー。<br>*(Ngon. Nấu từ nguyên liệu còn sót của khách nên mỗi ngày một món khác.)* |
| Lan | お<ruby>金<rt>かね</rt></ruby>はかかりますか?<br>*(Có tốn tiền không ạ?)* |
| Trang | かからない。<ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>かれない。<ruby>福利厚生<rt>ふくりこうせい</rt></ruby>です。<br>*(Không. Không trừ vào lương. Là phúc lợi.)* |
| Lan | わ、いい<ruby>会社<rt>かいしゃ</rt></ruby>ですね。<br>*(Wow, công ty tốt thật.)* |

---

## Tình huống 7 — 仲居控室 · Sáng hôm sau 7:00, dạy おしぼり (gấp khăn)

| Vai | Lời thoại |
|---|---|
| Trang | ランさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>基本<rt>きほん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をします。まずおしぼり。<br>*(Lan-san, hôm nay luyện cái cơ bản. Đầu tiên là oshibori.)* |
| Lan | おしぼり、<ruby>知<rt>し</rt></ruby>っています。お<ruby>店<rt>みせ</rt></ruby>で<ruby>出<rt>だ</rt></ruby>す<ruby>濡<rt>ぬ</rt></ruby>れたタオルですよね?<br>*(Oshibori em biết. Là khăn ướt cửa hàng đưa khách phải không ạ?)* |
| Trang | そう。でも<ruby>旅館<rt>りょかん</rt></ruby>のおしぼりは、<ruby>巻<rt>ま</rt></ruby>き<ruby>方<rt>かた</rt></ruby>が<ruby>決<rt>き</rt></ruby>まっています。まず<ruby>見<rt>み</rt></ruby>せます。<br>*(Đúng. Nhưng oshibori của ryokan có cách cuốn quy định. Đầu tiên chị làm cho em xem.)* |
| Trang | (vừa làm vừa nói) タオルを<ruby>長方形<rt>ちょうほうけい</rt></ruby>に<ruby>広<rt>ひろ</rt></ruby>げて、<ruby>三<rt>さん</rt></ruby><ruby>等分<rt>とうぶん</rt></ruby>に<ruby>折<rt>お</rt></ruby>って、<ruby>端<rt>はし</rt></ruby>から<ruby>巻<rt>ま</rt></ruby>く。<ruby>最後<rt>さいご</rt></ruby>は<ruby>渦巻<rt>うずま</rt></ruby>きみたいに<ruby>見<rt>み</rt></ruby>えるように。<br>*(Trải khăn hình chữ nhật, gấp 3 phần đều, cuốn từ đầu. Cuối thấy như vòng xoáy.)* |
| Lan | (chăm chú quan sát) わー、きれいですね。<br>*(Wow, đẹp quá.)* |
| Trang | <ruby>次<rt>つぎ</rt></ruby>はご<ruby>一緒<rt>いっしょ</rt></ruby>に。<ruby>広<rt>ひろ</rt></ruby>げて...<br>*(Tiếp cùng nhau. Trải ra...)* |
| Lan | (làm chậm) <ruby>三<rt>さん</rt></ruby><ruby>等分<rt>とうぶん</rt></ruby>...あ、ずれた。<br>*(3 phần đều... ơ, lệch rồi.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。もう<ruby>一度<rt>いちど</rt></ruby>ご<ruby>一緒<rt>いっしょ</rt></ruby>に、ゆっくり。<br>*(Không sao. Một lần nữa cùng nhau, chậm thôi.)* |
| Lan | (làm lại) ...できました!<br>*(...xong rồi!)* |
| Trang | とてもよくできましたね。じゃあ<ruby>次<rt>つぎ</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>でやってみてください。<ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>。<br>*(Tốt lắm. Bây giờ em tự làm thử. 10 khăn.)* |
| Lan | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng em cố.)* |

---

## Tình huống 8 — 桜<ruby>の間<rt>のま</rt></ruby> · 10:00, dạy trải futon — sửa lỗi lễ phép

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>布団<rt>ふとん</rt></ruby>の<ruby>敷<rt>し</rt></ruby>き<ruby>方<rt>かた</rt></ruby>。<ruby>順番<rt>じゅんばん</rt></ruby>は「<ruby>敷布団<rt>しきぶとん</rt></ruby>→シーツ→<ruby>掛布団<rt>かけぶとん</rt></ruby>→<ruby>枕<rt>まくら</rt></ruby>」。<br>*(Cách trải futon. Thứ tự: "đệm dưới → ga → chăn → gối".)* |
| Lan | (làm theo) <ruby>敷布団<rt>しきぶとん</rt></ruby>...シーツ...<br>*(Đệm dưới... ga...)* |
| Trang | あ、ちょっと<ruby>待<rt>ま</rt></ruby>って。シーツの<ruby>角<rt>かど</rt></ruby>、<ruby>布団<rt>ふとん</rt></ruby>の<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<br>*(À, chờ chút. Góc ga, nhét xuống dưới đệm.)* |
| Lan | あ、そうですね。すみません。<br>*(À đúng rồi. Xin lỗi chị.)* |
| Trang | <ruby>謝<rt>あやま</rt></ruby>らなくていいよ。<ruby>初<rt>はじ</rt></ruby>めてだから<ruby>当然<rt>とうぜん</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>、<ruby>枕<rt>まくら</rt></ruby>の<ruby>向<rt>む</rt></ruby>き。<ruby>北<rt>きた</rt></ruby><ruby>枕<rt>まくら</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>ダメです。<br>*(Đừng xin lỗi. Lần đầu là đương nhiên. Tiếp, hướng gối. Hướng Bắc là tuyệt đối không được.)* |
| Lan | え、なぜですか?<br>*(Ơ, tại sao ạ?)* |
| Trang | <ruby>北<rt>きた</rt></ruby><ruby>枕<rt>まくら</rt></ruby>は<ruby>仏様<rt>ほとけさま</rt></ruby>、つまり<ruby>亡<rt>な</rt></ruby>くなった<ruby>方<rt>かた</rt></ruby>の<ruby>向<rt>む</rt></ruby>きだから。お<ruby>客様<rt>きゃくさま</rt></ruby>には<ruby>失礼<rt>しつれい</rt></ruby>になります。<br>*(Hướng Bắc là hướng của Phật, tức là người đã mất. Đối với khách là thất lễ.)* |
| Lan | わ、<ruby>知<rt>し</rt></ruby>らなかった。<ruby>文化<rt>ぶんか</rt></ruby>ですね。メモします。<br>*(Wow em không biết. Là văn hoá nhỉ. Em ghi lại.)* |
| Trang | <ruby>東<rt>ひがし</rt></ruby>か<ruby>南<rt>みなみ</rt></ruby>が<ruby>良<rt>よ</rt></ruby>いです。この<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>は<ruby>南向<rt>みなみむ</rt></ruby>きに<ruby>敷<rt>し</rt></ruby>きます。<br>*(Hướng Đông hoặc Nam thì tốt. Phòng Sakura này trải hướng Nam.)* |
| Lan | <ruby>東<rt>ひがし</rt></ruby>か<ruby>南<rt>みなみ</rt></ruby>、ということですね。この<ruby>部屋<rt>へや</rt></ruby>は<ruby>南<rt>みなみ</rt></ruby>。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Đông hoặc Nam ạ. Phòng này là Nam. Em rõ.)* |
| Trang | できたら<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>:<ruby>四<rt>よっ</rt></ruby>つの<ruby>角<rt>かど</rt></ruby>、<ruby>枕<rt>まくら</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>、シーツの<ruby>皺<rt>しわ</rt></ruby>。<br>*(Xong nhớ kiểm: 4 góc, vị trí gối, vết nhăn ga.)* |

---

## Tình huống 9 — 廊下 桜の間前 · 11:00, Lan mặc yukata sai, Trang sửa

| Vai | Lời thoại |
|---|---|
| Lan | (mặc yukata thử, vạt áo bên phải đè bên trái) トランさん、これで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Trang-san, vầy được không ạ?)* |
| Trang | (giật mình) あ、ランさん、<ruby>逆<rt>ぎゃく</rt></ruby>!<ruby>右前<rt>みぎまえ</rt></ruby>になっています。<br>*(À, Lan-san, ngược rồi! Bên phải đang ở trước.)* |
| Lan | え、<ruby>右<rt>みぎ</rt></ruby>を<ruby>前<rt>まえ</rt></ruby>に<ruby>持<rt>も</rt></ruby>ってきたんですけど...<br>*(Ơ, em đưa bên phải ra trước mà...)* |
| Trang | それが<ruby>逆<rt>ぎゃく</rt></ruby>。<ruby>左前<rt>ひだりまえ</rt></ruby>、つまり<ruby>左側<rt>ひだりがわ</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>に<ruby>来<rt>く</rt></ruby>るのが<ruby>正<rt>ただ</rt></ruby>しいです。<ruby>右前<rt>みぎまえ</rt></ruby>は<ruby>亡<rt>な</rt></ruby>くなった<ruby>方<rt>かた</rt></ruby>に<ruby>着<rt>き</rt></ruby>せる<ruby>着<rt>き</rt></ruby><ruby>方<rt>かた</rt></ruby>です。<br>*(Đó là ngược. "Hidari-mae", tức là bên trái lên trên, mới đúng. "Migi-mae" là cách mặc cho người đã mất.)* |
| Lan | え、また<ruby>北<rt>きた</rt></ruby><ruby>枕<rt>まくら</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じパターン...<br>*(Ơ, lại giống chuyện gối Bắc...)* |
| Trang | そう。<ruby>覚<rt>おぼ</rt></ruby>えやすい<ruby>言葉<rt>ことば</rt></ruby>:「<ruby>左前<rt>ひだりまえ</rt></ruby>は<ruby>生<rt>い</rt></ruby>きている<ruby>人<rt>ひと</rt></ruby>、<ruby>右前<rt>みぎまえ</rt></ruby>は<ruby>仏様<rt>ほとけさま</rt></ruby>」。<br>*(Đúng. Câu dễ nhớ: "Hidari-mae là người sống, migi-mae là Phật".)* |
| Lan | <ruby>左前<rt>ひだりまえ</rt></ruby>は<ruby>生<rt>い</rt></ruby>きている<ruby>人<rt>ひと</rt></ruby>...メモ、メモ。<br>*(Hidari-mae là người sống... ghi, ghi.)* |
| Trang | もう<ruby>一度<rt>いちど</rt></ruby>ご<ruby>一緒<rt>いっしょ</rt></ruby>に。<ruby>脱<rt>ぬ</rt></ruby>いで、<ruby>左<rt>ひだり</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>に。<br>*(Một lần nữa cùng nhau. Cởi ra, bên trái lên trên.)* |
| Lan | (mặc lại) これで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Vầy được không ạ?)* |
| Trang | はい、とてもよくできましたね。<ruby>帯<rt>おび</rt></ruby>の<ruby>結<rt>むす</rt></ruby>び<ruby>方<rt>かた</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Vâng, tốt lắm. Cách thắt obi mai luyện tiếp.)* |

---

## Tình huống 10 — 食堂 · 12:00, ăn 賄い, Mei hỏi tình hình Lan

| Vai | Lời thoại |
|---|---|
| Mei | トランさん、ランさん、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>午前中<rt>ごぜんちゅう</rt></ruby>はどうだった?<br>*(Trang-san, Lan-san, vất vả rồi. Buổi sáng thế nào?)* |
| Trang | おしぼり、<ruby>布団<rt>ふとん</rt></ruby>、<ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Luyện oshibori, futon, yukata cơ bản.)* |
| Lan | <ruby>北<rt>きた</rt></ruby><ruby>枕<rt>まくら</rt></ruby>と<ruby>右前<rt>みぎまえ</rt></ruby>、<ruby>怖<rt>こわ</rt></ruby>かった...<br>*(Gối Bắc và migi-mae, sợ quá...)* |
| Mei | あー、<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>間違<rt>まちが</rt></ruby>えた。<ruby>中国<rt>ちゅうごく</rt></ruby>も<ruby>似<rt>に</rt></ruby>ているけどちょっと<ruby>違<rt>ちが</rt></ruby>うから。<br>*(À, tôi lúc đầu cũng nhầm. Trung Quốc có chỗ giống nhưng khác chút.)* |
| Soyeon | <ruby>韓国<rt>かんこく</rt></ruby>も<ruby>右前<rt>みぎまえ</rt></ruby>はダメ。<ruby>東<rt>ひがし</rt></ruby>アジア<ruby>共通<rt>きょうつう</rt></ruby>かもしれません。<br>*(Hàn cũng kiêng migi-mae. Có lẽ Đông Á chung.)* |
| Lan | ベトナムの<ruby>葬式<rt>そうしき</rt></ruby>もそう...あ、<ruby>賄<rt>まかな</rt></ruby>い、<ruby>美味<rt>おい</rt></ruby>しいですね。<br>*(Đám tang Việt Nam cũng vậy... à, makanai ngon ghê.)* |
| Trang | これは<ruby>昨日<rt>きのう</rt></ruby>の<ruby>懐石<rt>かいせき</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>り。<ruby>板長<rt>いたちょう</rt></ruby>さんが<ruby>煮直<rt>になお</rt></ruby>してくれた。<br>*(Này là phần dư kaiseki hôm qua. Bếp trưởng nấu lại cho.)* |
| Mei | <ruby>板長<rt>いたちょう</rt></ruby>さんに「ごちそうさまでした」って<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>ってね、ランさん。<br>*(Phải nói "gochisousama" với bếp trưởng nhé, Lan-san.)* |
| Lan | はい、<ruby>食<rt>た</rt></ruby>べ<ruby>終<rt>お</rt></ruby>わったら<ruby>必<rt>かなら</rt></ruby>ず。<br>*(Vâng, ăn xong nhất định.)* |

---

## Tình huống 11 — 仲居控室 · 14:00, Lan hỏi Trang một mạch nhiều thuật ngữ

| Vai | Lời thoại |
|---|---|
| Lan | トランさん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で、いっぱい<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきました。<br>*(Trang-san, sáng trong 朝礼, có nhiều từ em không hiểu.)* |
| Trang | どんな<ruby>言葉<rt>ことば</rt></ruby>?<br>*(Từ gì?)* |
| Lan | 「<ruby>仲居<rt>なかい</rt></ruby>」「<ruby>女将<rt>おかみ</rt></ruby>」は<ruby>分<rt>わ</rt></ruby>かります。「<ruby>板長<rt>いたちょう</rt></ruby>」「<ruby>客室係<rt>きゃくしつがかり</rt></ruby>」「<ruby>支配人<rt>しはいにん</rt></ruby>」は?<br>*("Nakai", "okami" em hiểu. "Itachou", "kyakushitsu-gakari", "shihainin" thì sao ạ?)* |
| Trang | 「<ruby>板長<rt>いたちょう</rt></ruby>」とは<ruby>料理長<rt>りょうりちょう</rt></ruby>、<ruby>板場<rt>いたば</rt></ruby>の<ruby>長<rt>おさ</rt></ruby>のことです。「<ruby>客室係<rt>きゃくしつがかり</rt></ruby>」は<ruby>仲居<rt>なかい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>意味<rt>いみ</rt></ruby>。「<ruby>支配人<rt>しはいにん</rt></ruby>」は<ruby>旅館<rt>りょかん</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>運営<rt>うんえい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>。<br>*("Itachou" là bếp trưởng, trưởng bếp. "Kyakushitsu-gakari" giống "nakai". "Shihainin" là quản lý tổng vận hành ryokan.)* |
| Lan | 「<ruby>仲居頭<rt>なかいがしら</rt></ruby>」も<ruby>聞<rt>き</rt></ruby>きました。<br>*("Nakai-gashira" em cũng nghe.)* |
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>役職<rt>やくしょく</rt></ruby>です。<ruby>仲居<rt>なかい</rt></ruby>の<ruby>主任<rt>しゅにん</rt></ruby>、つまりリーダー。<br>*(Là chức của chị Yumiko. Chủ nhiệm nakai, tức leader.)* |
| Lan | 「<ruby>懐石<rt>かいせき</rt></ruby>」と「<ruby>会席<rt>かいせき</rt></ruby>」、<ruby>同<rt>おな</rt></ruby>じ<ruby>音<rt>おと</rt></ruby>ですが?<br>*("Kaiseki" và "kaiseki", âm giống nhau mà?)* |
| Trang | (cười) ね、ややこしいよね。「<ruby>懐石<rt>かいせき</rt></ruby>」は<ruby>茶道<rt>さどう</rt></ruby>の<ruby>料理<rt>りょうり</rt></ruby>から<ruby>来<rt>き</rt></ruby>た<ruby>正式<rt>せいしき</rt></ruby>な<ruby>料理<rt>りょうり</rt></ruby>。「<ruby>会席<rt>かいせき</rt></ruby>」は<ruby>宴会<rt>えんかい</rt></ruby>の<ruby>料理<rt>りょうり</rt></ruby>。<ruby>桜風荘<rt>おうふうそう</rt></ruby>は「<ruby>懐石<rt>かいせき</rt></ruby>」のほうです。<br>*(Ừ rắc rối ha. "Kaiseki (懐石)" là món chính thức từ trà đạo. "Kaiseki (会席)" là món tiệc. Ouhuusou theo "懐石".)* |
| Lan | わ、メモ<ruby>多<rt>おお</rt></ruby>すぎて<ruby>頭<rt>あたま</rt></ruby>パンクします。<br>*(Wow ghi nhiều quá, đầu nổ ạ.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>かけてゆっくり<ruby>覚<rt>おぼ</rt></ruby>えよう。<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>はいつでも<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Không sao, 3 tháng nhớ từ từ. Khi nào không hiểu cứ hỏi.)* |

---

## Tình huống 12 — 由美子<ruby>先輩<rt>せんぱい</rt></ruby><ruby>控室<rt>ひかえしつ</rt></ruby> · 17:00, Trang xin Yumiko đánh giá cách dạy

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>いただけますでしょうか?<br>*(Chị Yumiko, xin chị chút thời gian được không ạ?)* |
| Yumiko | どうぞ。ランさんの<ruby>件<rt>けん</rt></ruby>ね?<br>*(Cứ vào. Chuyện Lan-san hả?)* |
| Trang | はい。<ruby>今日<rt>きょう</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>で、おしぼり・<ruby>布団<rt>ふとん</rt></ruby>・<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しました。<ruby>北<rt>きた</rt></ruby><ruby>枕<rt>まくら</rt></ruby>と<ruby>右前<rt>みぎまえ</rt></ruby>で<ruby>間違<rt>まちが</rt></ruby>えがありました。<br>*(Vâng. Hôm nay ngày đầu, luyện oshibori, futon, yukata. Có nhầm gối Bắc và migi-mae.)* |
| Yumiko | みんな<ruby>最初<rt>さいしょ</rt></ruby>はそこを<ruby>間違<rt>まちが</rt></ruby>えますよ。トランさんも<ruby>覚<rt>おぼ</rt></ruby>えてる?<br>*(Ai cũng nhầm chỗ đó lúc đầu. Trang-san nhớ chứ?)* |
| Trang | <ruby>覚<rt>おぼ</rt></ruby>えています(笑)。<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>叱<rt>しか</rt></ruby>るところと、そのまま<ruby>進<rt>すす</rt></ruby>むところの<ruby>分<rt>わ</rt></ruby>け<ruby>方<rt>かた</rt></ruby>はどうすればよろしいでしょうか?<br>*(Nhớ chứ ạ (cười). Chị, cách phân biệt chỗ nào nên la chỗ nào nên cho qua, làm thế nào ạ?)* |
| Yumiko | お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>になることは<ruby>必<rt>かなら</rt></ruby>ず<ruby>指摘<rt>してき</rt></ruby>。<ruby>北<rt>きた</rt></ruby><ruby>枕<rt>まくら</rt></ruby>・<ruby>右前<rt>みぎまえ</rt></ruby>はそれです。<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>癖<rt>くせ</rt></ruby>や<ruby>速度<rt>そくど</rt></ruby>は<ruby>大目<rt>おおめ</rt></ruby>に<ruby>見<rt>み</rt></ruby>る。<br>*(Cái gì thất lễ với khách thì bắt buộc chỉ ra. Gối Bắc, migi-mae là vậy. Ngược lại thói quen cá nhân hay tốc độ thì rộng tay.)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる<ruby>失礼<rt>しつれい</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しく、<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>癖<rt>くせ</rt></ruby>は<ruby>大目<rt>おおめ</rt></ruby>に、ということでよろしいでしょうか?<br>*(Thất lễ liên quan đến khách thì nghiêm, thói quen cá nhân thì rộng, đúng vậy ạ?)* |
| Yumiko | そう。あと、できたら<ruby>必<rt>かなら</rt></ruby>ず<ruby>褒<rt>ほ</rt></ruby>める。「とてもよくできましたね」って<ruby>今日<rt>きょう</rt></ruby><ruby>何回<rt>なんかい</rt></ruby><ruby>言<rt>い</rt></ruby>った?<br>*(Đúng. Và làm được phải khen ngay. "Totemo yoku dekimashita ne", hôm nay nói mấy lần?)* |
| Trang | おしぼり、<ruby>布団<rt>ふとん</rt></ruby>、<ruby>浴衣<rt>ゆかた</rt></ruby>... <ruby>三回<rt>さんかい</rt></ruby>くらい。<br>*(Oshibori, futon, yukata... khoảng 3 lần.)* |
| Yumiko | <ruby>明日<rt>あした</rt></ruby>は<ruby>五回<rt>ごかい</rt></ruby><ruby>目指<rt>めざ</rt></ruby>しましょう。<br>*(Ngày mai nhắm 5 lần.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。ご<ruby>指導<rt>しどう</rt></ruby><ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Em rõ ạ. Em cảm ơn chị đã chỉ bảo.)* |

---

## Tình huống 13 — 仲居寮 共同<ruby>台所<rt>だいどころ</rt></ruby> · 20:30, Trang nấu món Huế cho Lan đỡ nhớ nhà

*Bếp chung. Trang nấu canh chua đầu cá hồi (thay cá lóc), Lan ngồi bóc tỏi giúp.*

| Vai | Lời thoại |
|---|---|
| Lan | Chị Trang ơi, mùi canh chua thơm quá, em rơi nước mắt. |
| Trang | Cá lóc không có nên chị thay đầu cá hồi, nấu kiểu Huế. Me chị mua ở chợ Tàu trong phố. |
| Lan | Cảm ơn chị nhiều. Bữa nay em mệt nhưng đỡ nhớ nhà rồi. |
| Trang | Hồi chị mới sang chị nhớ nhà khóc luôn. Yumiko-sempai nấu udon cho chị, nhưng đâu có vị nhà mình. Lúc đó nghe chị Linh — kohai cũ — chị Linh đã về VN rồi — nấu cơm Việt cho chị, chị mới đỡ. |
| Lan | Vậy giờ tới phiên chị nấu cho em. |
| Trang | Đúng rồi. Mỗi năm có một kohai mới qua, ai cũng nhớ nhà. Chị muốn em biết rằng có chị ở đây. |
| Lan | Chị Trang... Mẹ em dặn em "Lan ơi, qua bên đó tìm chị nào người Việt mà nương theo". Em may quá. |
| Trang | (cười) Mẹ em chu đáo. Mà nhớ nha, ngoài giờ làm thì mình nói tiếng Việt thoải mái, trong giờ làm cố nói Nhật. |
| Lan | Dạ. À chị, "懐石" với "会席" em vẫn rối. |
| Trang | (cười) Mai chị viết bảng cho. Ăn xong đi học. |

---

## Tình huống 14 — Phòng Trang · 22:00, gọi Zalo về Huế báo tin có kohai

> Cảnh tiếng Việt — báo tin kohai đến VN, ôn từ JP.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Mẹ ơi, em kohai con qua rồi mẹ. Tên Lan, người Cần Thơ. |
| Mẹ Trang | (tiếng Việt) Ôi mừng quá. Tính tình thế nào con? |
| Trang | (tiếng Việt) Hiền lắm mẹ, nhưng hơi rụt rè. Hôm nay con dạy gấp khăn — *oshibori* — おしぼり, trải futon — 布団, mặc *yukata* — 浴衣. Lan có nhầm chỗ hướng gối Bắc với mặc yukata bên phải đè bên trái — bên này kiêng tuyệt đối vì là kiểu mặc cho người mất. |
| Mẹ Trang | (tiếng Việt) Trời, Việt Nam cũng kiêng vậy con. |
| Trang | (tiếng Việt) Dạ giống mình mẹ. Mà mấy thuật ngữ ryokan thì Lan rối lắm: *itachou* — 板長 là bếp trưởng, *shihainin* — 支配人 là quản lý tổng, *nakai-gashira* — 仲居頭 là chủ nhiệm nakai. Rồi *kaiseki* (懐石) đồ trà đạo với *kaiseki* (会席) đồ tiệc, viết khác mà đọc giống nhau. |
| Mẹ Trang | (tiếng Việt) Phức tạp ha. Con nhớ dạy nó từ từ. |
| Trang | (tiếng Việt) Dạ. Chị Yumiko sempai con dặn: cái gì thất lễ với khách thì nghiêm chỉ, còn lại nhẹ tay. Mỗi ngày khen 5 lần "totemo yoku dekimashita ne" — *làm rất giỏi*. |
| Mẹ Trang | (tiếng Việt) Hay đó con. Mai nhớ nấu thêm món gì cho Lan đỡ nhớ nhà. |
| Trang | (tiếng Việt) Tối nay con nấu canh chua đầu cá hồi cho Lan rồi. Em ấy rơi nước mắt mẹ. |
| Mẹ Trang | (tiếng Việt) Tội nghiệp. Con ráng làm chị tốt nha. |
| Trang | (tiếng Việt) Dạ. Bà Okami nói 3 tháng đầu giao Lan cho con. Con thấy mình lớn hẳn. Thôi con đi ngủ. |

---

## Đọng lại chương 2

Ngày Lan đến, Trang chính thức bước vào vai 指導員 仲居. Học bộ mẫu câu hướng dẫn kohai trong ryokan: **giới thiệu kohai lễ phép với ekíp** (ご紹介させていただきます・本日から仲間になる〜), **đáp lời khi 女将 giao việc** (お任せします → 誠心誠意努めます), **hướng dẫn từng bước theo "見せる→ご一緒に→お一人で"** truyền lại từ Satou-sempai năm 12_hoa_year2, **chỉnh lỗi lễ phép không la** (もう一度ご一緒に〜), **khen kịp thời** (とてもよくできましたね — mục tiêu 5 lần/ngày của Yumiko-sempai), **giải thích thuật ngữ chuyên ngành** (〜とは〜のことです), và **phiên dịch ý 女将 cho kohai** (〜とおっしゃっています). Nhận thức được hai văn hoá kiêng kỵ quan trọng: **北枕** (hướng gối Bắc = người mất) và **右前** (vạt yukata bên phải đè trái = người mất) — hai lỗi mà bất kỳ kohai nào cũng mắc lần đầu. Phân biệt được loạt chức danh ryokan: 仲居・仲居頭・女将・板長・支配人・客室係, và hai "kaiseki" 懐石 vs 会席.

> Từ vựng & mẫu câu chương này: 指導員・後輩・見せる→ご一緒に→お一人で・おしぼり・布団・敷布団・掛布団・浴衣・帯・北枕・右前・左前・仏様・賄い・板長・板場・仲居頭・支配人・客室係・懐石・会席・福利厚生・ご紹介させていただきます・もう一度ご一緒に・とてもよくできましたね・〜とは〜のことです・〜とおっしゃっています

## Bí quyết chương

- Cách dạy kohai 3 bước "**見せる → ご一緒に → お一人で**" (kế thừa từ Satou-sempai 12_hoa_year2) là chuẩn coaching cho 仲居 lẫn ngành tiếp khách Nhật.
- Hai kiêng kỵ chí mạng phải dạy ngay ngày đầu: **北枕** (gối hướng Bắc), **右前** (vạt phải đè trái khi mặc yukata) — đều liên quan đến nghi lễ người đã mất.
- Khi sửa lỗi cho kohai mới, không nói 「<ruby>違<rt>ちが</rt></ruby>います!」 mà dùng 「もう<ruby>一度<rt>いちど</rt></ruby>ご<ruby>一緒<rt>いっしょ</rt></ruby>に」 — kohai không mất mặt, vẫn học được.
- Yumiko-sempai dạy: phân biệt **mức nghiêm khắc**: lỗi thất lễ với khách → bắt buộc chỉ, thói quen cá nhân → rộng tay.
- Khen ngay khi làm được, mục tiêu ≥5 lần/ngày với câu「とてもよくできましたね」.
- 賄い là cơm nhân viên do 板長 nấu, dùng nguyên liệu dư sau khi phục vụ khách — không trừ lương, là **福利厚生**.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | Người hướng dẫn (kohai) |
| 後輩 | こうはい | HẬU BỐI | Kohai, đàn em |
| 先輩 | せんぱい | TIÊN BỐI | Sempai, đàn anh |
| 紹介 | しょうかい | THIỆU GIỚI | Giới thiệu |
| 仲間 | なかま | TRỌNG GIAN | Đồng đội, thành viên cùng nhóm |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán |
| お辞儀 | おじぎ | — NGHI | Cúi chào |
| 会釈 | えしゃく | HỘI THÍCH | Cúi nhẹ (~15°) |
| 最敬礼 | さいけいれい | TỐI KÍNH LỄ | Cúi kính cẩn (~45°) |
| 何卒 | なにとぞ | HÀ TỐT | Kính xin (kính ngữ đầu câu) |
| 申します | もうします | THÂN — | Tôi tên là (kính ngữ) |
| お世話になります | おせわになります | — THẾ THOẠI — | Xin được nhờ cậy, phụng sự |
| 寮 | りょう | LIÊU | Ký túc, nhà tập thể |
| 洗面所 | せんめんじょ | TẨY DIỆN SỞ | Nhà rửa mặt |
| 風呂 | ふろ | PHONG LƯ | Phòng tắm, bồn tắm |
| 賄い | まかない | HỐI — | Cơm nhân viên (do bếp ryokan nấu) |
| 福利厚生 | ふくりこうせい | PHÚC LỢI HẬU SINH | Phúc lợi |
| 食材 | しょくざい | THỰC TÀI | Nguyên liệu thực phẩm |
| おしぼり | — | — | Khăn ướt phục vụ khách |
| 巻き方 | まきかた | QUYỂN PHƯƠNG | Cách cuốn |
| 三等分 | さんとうぶん | TAM ĐẲNG PHÂN | Chia làm 3 phần đều |
| 渦巻き | うずまき | OA QUYỂN | Vòng xoáy, ốc xoắn |
| 布団 | ふとん | BỐ ĐOÀN | Futon, đệm Nhật |
| 敷布団 | しきぶとん | PHU BỐ ĐOÀN | Đệm dưới |
| 掛布団 | かけぶとん | QUẢI BỐ ĐOÀN | Chăn đắp |
| 枕 | まくら | CHẨM | Gối |
| 北枕 | きたまくら | BẮC CHẨM | Gối hướng Bắc (kiêng) |
| 仏様 | ほとけさま | PHẬT DẠNG | Đức Phật, người đã mất |
| 浴衣 | ゆかた | DỤC Y | Yukata |
| 帯 | おび | ĐỚI | Obi, đai thắt kimono/yukata |
| 右前 | みぎまえ | HỮU TIỀN | Vạt phải đè trái (kiêng — kiểu người mất) |
| 左前 | ひだりまえ | TẢ TIỀN | Vạt trái đè phải (đúng cho người sống) |
| 文化 | ぶんか | VĂN HOÁ | Văn hoá |
| 板長 | いたちょう | BẢN TRƯỞNG | Bếp trưởng Nhật |
| 板場 | いたば | BẢN TRƯỜNG | Bếp Nhật |
| 客室係 | きゃくしつがかり | KHÁCH THẤT HỆ | Người phụ trách phòng (= nakai) |
| 支配人 | しはいにん | CHI PHỐI NHÂN | Quản lý tổng vận hành ryokan |
| 仲居頭 | なかいがしら | TRỌNG CƯ ĐẦU | Chủ nhiệm/trưởng tổ nakai |
| 役職 | やくしょく | DỊCH CHỨC | Chức vụ |
| 懐石 | かいせき | HOÀI THẠCH | Kaiseki (kiểu trà đạo) |
| 会席 | かいせき | HỘI TỊCH | Kaiseki (kiểu tiệc) |
| 茶道 | さどう | TRÀ ĐẠO | Trà đạo |
| 宴会 | えんかい | YẾN HỘI | Tiệc |
| 葬式 | そうしき | TÁNG THỨC | Đám tang |
| 指摘 | してき | CHỈ TRÍCH | Chỉ ra (sai sót) |
| 大目に見る | おおめにみる | ĐẠI MỤC — KIẾN | Rộng tay, bỏ qua |
| 癖 | くせ | TÍCH | Thói quen, tật |
| 速度 | そくど | TỐC ĐỘ | Tốc độ |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | Đương nhiên |
| 失礼 | しつれい | THẤT LỄ | Thất lễ, mất phép |
| 廊下 | ろうか | LANG HẠ | Hành lang |
| 突き当たり | つきあたり | ĐỘT ĐƯƠNG — | Cuối đường (hành lang) |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000003, 800000047, NULL, 'markdown_book', 'T3. Đi sâu おもてなし — lễ nghi đón tiễn cấp cao (おもてなしの心・送迎の作法)', '# Sách thực tập sinh khách sạn · T3. Đi sâu おもてなし — lễ nghi đón tiễn cấp cao (おもてなしの心・送迎の作法)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế) cùng kohai Lan học sâu hơn về おもてなし — triết lý phục vụ Nhật. Học các mẫu hội thoại tiếng Nhật cấp cao của 仲居 năm 2: đón khách bằng kính ngữ tột bậc (お待ちしておりました/ご足労いただき誠にありがとうございます), dẫn khách lên phòng (お足元にお気をつけくださいませ), giải thích quy tắc trà nghi 茶懐石 trước khi vào phòng (お運びの順序), tiễn khách kèm cúi 45° đến khi khuất bóng (お見送り), xin lỗi/cảm tạ kính ngữ tột bậc (大変申し訳ございません/誠に恐縮でございます), và phân biệt 内弁慶/外面 trong phục vụ.

---

## Bối cảnh

Đầu tháng 6 năm 2026. Sau hai tuần Lan vào việc, 女将 Sato quyết định nâng tầm Trang lên một bước: dạy bài bản triết lý おもてなし cùng các nghi thức đón tiễn cấp cao, vì sắp tới ryokan đón đoàn khách quen 木下家族 ăn mừng 還暦 (60 tuổi) — sự kiện trọng đại với nhà Kinoshita lẫn ryokan. Trang vừa học vừa kèm Lan quan sát. Chương này tập trung mẫu câu kính ngữ cao của 仲居 cho dịp đặc biệt: lễ đón ở 玄関, dẫn khách, giải thích món, tiễn ra cổng và nghi thức 立礼 (cúi đứng) cho đến khi xe khuất bóng.

---

## Tình huống 1 — 女将室 · 8:00, 女将 dạy Trang triết lý おもてなし

| Vai | Lời thoại |
|---|---|
| Sato | トランさん、おもてなしという<ruby>言葉<rt>ことば</rt></ruby>、よく<ruby>聞<rt>き</rt></ruby>くでしょう。<ruby>意味<rt>いみ</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>できますか?<br>*(Trang-san, từ "omotenashi" cô hay nghe đúng không. Có giải thích được nghĩa không?)* |
| Trang | <ruby>心<rt>こころ</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めたおもてなし、<ruby>心<rt>こころ</rt></ruby>からのサービスだと<ruby>思<rt>おも</rt></ruby>います。<br>*(Con nghĩ là sự tiếp đón đặt trọn tâm, dịch vụ từ trái tim.)* |
| Sato | はい、<ruby>近<rt>ちか</rt></ruby>いです。でも、もう<ruby>一歩<rt>いっぽ</rt></ruby><ruby>深<rt>ふか</rt></ruby>くね。「もてなす」の<ruby>語源<rt>ごげん</rt></ruby>は「<ruby>持<rt>も</rt></ruby>って<ruby>成<rt>な</rt></ruby>す」。「<ruby>表裏<rt>おもてうら</rt></ruby>がない」の「お・もてなし」とも<ruby>言<rt>い</rt></ruby>われます。<br>*(Đúng, gần đúng. Nhưng sâu một bước nữa. Gốc "motenasu" là "持って成す" — đem cái mình có để làm thành. Cũng có thuyết là "omote-nashi" — không có mặt trái.)* |
| Trang | <ruby>表裏<rt>おもてうら</rt></ruby>がない...お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>と<ruby>裏<rt>うら</rt></ruby>で<ruby>同<rt>おな</rt></ruby>じ、ということですか?<br>*(Không có mặt trái... tức là trước mặt khách và sau lưng khách giống nhau ạ?)* |
| Sato | そうです。<ruby>仲居<rt>なかい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は、お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>見<rt>み</rt></ruby>ていない<ruby>時<rt>とき</rt></ruby>こそ<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>布団<rt>ふとん</rt></ruby>の<ruby>下<rt>した</rt></ruby>のシーツの<ruby>皺<rt>しわ</rt></ruby>、<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>の</rt></ruby>みの<ruby>底<rt>そこ</rt></ruby>の<ruby>汚<rt>よご</rt></ruby>れ、お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>気付<rt>きづ</rt></ruby>かないかもしれません。<br>*(Đúng. Việc của nakai, càng khi khách không nhìn càng quan trọng. Vết nhăn ga dưới futon, vết bẩn đáy chén trà, khách có thể không nhận ra.)* |
| Trang | でも<ruby>仲居<rt>なかい</rt></ruby>は<ruby>知<rt>し</rt></ruby>っている。<br>*(Nhưng nakai biết.)* |
| Sato | そう。<ruby>知<rt>し</rt></ruby>っているのに<ruby>放<rt>ほう</rt></ruby>っておくのは、おもてなしではありません。<br>*(Đúng. Biết mà bỏ qua thì không phải omotenashi.)* |
| Trang | <ruby>誠<rt>まこと</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Con học được nhiều thật ạ.)* |
| Sato | <ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>のご<ruby>還暦<rt>かんれき</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>いがあります。ご<ruby>家族<rt>かぞく</rt></ruby><ruby>八名様<rt>はちめいさま</rt></ruby>、<ruby>三<rt>さん</rt></ruby><ruby>泊<rt>ぱく</rt></ruby><ruby>四日<rt>よっか</rt></ruby>。トランさんに<ruby>主担当<rt>しゅたんとう</rt></ruby>をお<ruby>任<rt>まか</rt></ruby>せします。<br>*(Tuần sau, nhà Kinoshita có lễ mừng 60 tuổi. Gia đình 8 người, 3 đêm 4 ngày. Tôi giao cô làm chủ trách.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>身<rt>み</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>いです。<br>*(Con rõ ạ. Con cảm thấy lưng phải thẳng lên.)* |

---

## Tình huống 2 — 仲居控室 · 9:00, Trang giải thích おもてなし cho Lan

| Vai | Lời thoại |
|---|---|
| Lan | トランさん、<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>呼<rt>よ</rt></ruby>ばれてどうでしたか?<br>*(Trang-san, được Okami gọi lên thế nào ạ?)* |
| Trang | おもてなしの<ruby>話<rt>はなし</rt></ruby>。「<ruby>表裏<rt>おもてうら</rt></ruby>がない」のおもてなし、って<ruby>知<rt>し</rt></ruby>っていた?<br>*(Chuyện omotenashi. "Không có mặt trái" — em biết không?)* |
| Lan | <ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Lần đầu em nghe ạ.)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>見<rt>み</rt></ruby>ている<ruby>時<rt>とき</rt></ruby>と、<ruby>見<rt>み</rt></ruby>ていない<ruby>時<rt>とき</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>気持<rt>きも</rt></ruby>ちで<ruby>働<rt>はたら</rt></ruby>くということ。<ruby>例<rt>たと</rt></ruby>えば、お<ruby>客様<rt>きゃくさま</rt></ruby>がチェックアウトした<ruby>後<rt>あと</rt></ruby>、<ruby>誰<rt>だれ</rt></ruby>も<ruby>見<rt>み</rt></ruby>ていない<ruby>部屋<rt>へや</rt></ruby>でも、<ruby>同<rt>おな</rt></ruby>じ<ruby>丁寧<rt>ていねい</rt></ruby>さで<ruby>掃除<rt>そうじ</rt></ruby>する。<br>*(Lúc khách nhìn và lúc khách không nhìn, làm với cùng một tâm thế. Ví dụ sau khi khách check-out, không ai nhìn căn phòng đó, vẫn dọn tỉ mỉ như cũ.)* |
| Lan | あ、<ruby>分<rt>わ</rt></ruby>かりやすい。<ruby>日本語<rt>にほんご</rt></ruby>で「<ruby>内弁慶<rt>うちべんけい</rt></ruby>」と「<ruby>外面<rt>そとづら</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>いたんですが...<br>*(À, dễ hiểu. Tiếng Nhật em nghe "uchi-benkei" và "soto-zura" mà...)* |
| Trang | あ、メイさんから?<br>*(À, từ Mei-san hả?)* |
| Lan | はい。<ruby>意味<rt>いみ</rt></ruby>は?<br>*(Vâng. Nghĩa là gì ạ?)* |
| Trang | 「<ruby>内弁慶<rt>うちべんけい</rt></ruby>」とは<ruby>家<rt>うち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>では<ruby>強<rt>つよ</rt></ruby>くて<ruby>外<rt>そと</rt></ruby>では<ruby>弱<rt>よわ</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>。「<ruby>外面<rt>そとづら</rt></ruby>がいい」とは<ruby>外<rt>そと</rt></ruby>では<ruby>愛想<rt>あいそ</rt></ruby>がいいけど<ruby>家<rt>うち</rt></ruby>ではそうじゃない<ruby>人<rt>ひと</rt></ruby>。どちらもおもてなしの<ruby>反対<rt>はんたい</rt></ruby>です。<br>*("Uchi-benkei" là người trong nhà thì mạnh, ra ngoài thì yếu. "Soto-zura ga ii" là người ngoài thì niềm nở mà ở nhà thì không. Cả hai đều ngược với omotenashi.)* |
| Lan | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>では<ruby>笑<rt>わら</rt></ruby>って、<ruby>裏<rt>うら</rt></ruby>では<ruby>悪口<rt>わるぐち</rt></ruby>、ということですね。<br>*(Trước mặt khách thì cười, sau lưng thì nói xấu, đúng không ạ?)* |
| Trang | そう。それは<ruby>絶対<rt>ぜったい</rt></ruby>ダメ。<br>*(Đúng. Tuyệt đối không được.)* |

---

## Tình huống 3 — 由美子<ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>練習部屋<rt>れんしゅうべや</rt></ruby> · 10:00, luyện 立礼 (cúi đứng) cấp cao

*Phòng trải tatami trống dùng để luyện nghi thức. Yumiko cầm sách lễ nghi cũ bìa lụa.*

| Vai | Lời thoại |
|---|---|
| Yumiko | トランさん、<ruby>還暦<rt>かんれき</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>のお<ruby>迎<rt>むか</rt></ruby>えとお<ruby>見送<rt>みおく</rt></ruby>りは、<ruby>普段<rt>ふだん</rt></ruby>より<ruby>一段<rt>いちだん</rt></ruby><ruby>上<rt>うえ</rt></ruby>です。<br>*(Trang-san, đón và tiễn khách lễ 60 tuổi, cấp cao hơn thường lệ một bậc.)* |
| Trang | はい、ご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, kính mong chị chỉ bảo.)* |
| Yumiko | <ruby>立礼<rt>りつれい</rt></ruby>、<ruby>三<rt>さん</rt></ruby>つのポイント。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>背筋<rt>せすじ</rt></ruby>はまっすぐ。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>手<rt>て</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>軽<rt>かる</rt></ruby>く<ruby>重<rt>かさ</rt></ruby>ねる、<ruby>女性<rt>じょせい</rt></ruby>は<ruby>右手<rt>みぎて</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる<ruby>時<rt>とき</rt></ruby>は<ruby>三<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>止<rt>と</rt></ruby>める、<ruby>上<rt>あ</rt></ruby>げる<ruby>時<rt>とき</rt></ruby>はゆっくり。<br>*(Cúi đứng, 3 điểm. Một, thẳng lưng. Hai, tay đặt trước người, nhẹ chồng lên — nữ tay phải trên. Ba, lúc cúi giữ 3 giây, lúc nâng lên thì chậm.)* |
| Trang | <ruby>女性<rt>じょせい</rt></ruby>は<ruby>右手<rt>みぎて</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>、<ruby>三<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>止<rt>と</rt></ruby>める、ということでよろしいでしょうか?<br>*(Nữ tay phải trên, giữ 3 giây, đúng vậy ạ?)* |
| Yumiko | そう。<ruby>男性<rt>だんせい</rt></ruby>は<ruby>逆<rt>ぎゃく</rt></ruby>、<ruby>左手<rt>ひだりて</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>。<br>*(Đúng. Nam ngược lại, tay trái trên.)* |
| Trang | (cúi thử) お<ruby>越<rt>こ</rt></ruby>しくださいまして、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Quý vị đến với chúng tôi, chúng tôi xin chân thành cảm ơn.)* |
| Yumiko | <ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる<ruby>瞬間<rt>しゅんかん</rt></ruby>と「ございます」が<ruby>同時<rt>どうじ</rt></ruby>です。<ruby>言葉<rt>ことば</rt></ruby>を<ruby>言<rt>い</rt></ruby>い<ruby>終<rt>お</rt></ruby>えてから<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる、と<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Khoảnh khắc cúi đầu trùng với "gozaimasu". Nhớ là nói xong câu rồi mới cúi.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。もう<ruby>一度<rt>いちど</rt></ruby>...<br>*(Em rõ ạ. Một lần nữa...)* |

---

## Tình huống 4 — 玄関 · 14:00, đón đoàn Kinoshita 8 người ngày 還暦

*Ngày Chủ Nhật trời nắng. Xe minivan trắng dừng trước cổng đá. Cả tổ nakai gồm Trang, Lan, Yumiko, Soyeon đứng hàng dọc cánh tay phải, Sato đứng trước. Lan đứng quan sát.*

| Vai | Lời thoại |
|---|---|
| Sato | (cúi 45°) <ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>越<rt>こ</rt></ruby>しくださいまして、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>桜風荘<rt>おうふうそう</rt></ruby><ruby>女将<rt>おかみ</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>でございます。<br>*(Thưa quý ông Kinoshita, đa tạ quý ông đã đến. Tôi là Satou, Okami của Ouhuusou.)* |
| Trang | (đồng thanh cúi 45° với cả ekíp) <ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>還暦<rt>かんれき</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>い、<ruby>誠<rt>まこと</rt></ruby>におめでとうございます。<br>*(Lễ mừng 60 tuổi hôm nay, chúng tôi xin chân thành chúc mừng quý ông.)* |
| Khách (ông Kinoshita) | みんなで<ruby>来<rt>き</rt></ruby>られて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいよ。トランさん、<ruby>今年<rt>ことし</rt></ruby>もよろしく。<br>*(Cả nhà đến được, vui thật. Trang-san, năm nay cũng nhờ cô.)* |
| Trang | こちらこそ、ご<ruby>足労<rt>そくろう</rt></ruby>いただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。お<ruby>荷物<rt>にもつ</rt></ruby>はこちらでお<ruby>預<rt>あず</rt></ruby>かりいたします。<br>*(Chúng con xin được, quý ông đã đi xa đến thật cảm tạ. Hành lý xin được mang giúp ạ.)* |
| Khách (bà Kinoshita) | <ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>のお<ruby>料理<rt>りょうり</rt></ruby>、<ruby>今年<rt>ことし</rt></ruby>も<ruby>楽<rt>たの</rt></ruby>しみにしておりますよ。<br>*(Món yuba, năm nay cũng mong chờ đấy.)* |
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>が<ruby>腕<rt>うで</rt></ruby>によりをかけてご<ruby>用意<rt>ようい</rt></ruby>させていただいております。お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけくださいませ、こちらへどうぞ。<br>*(Bếp trưởng đã đặc biệt chuẩn bị cho ạ. Xin quý vị cẩn thận chân, mời quý vị bên này ạ.)* |

---

## Tình huống 5 — 廊下 → 桜<ruby>の間<rt>のま</rt></ruby> · 14:20, dẫn khách lên phòng — Lan quan sát

*Trang đi trước nửa bước bên trái, dáng nghiêng người 30° về phía khách. Lan đi cuối đoàn, tay xách túi.*

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>少々<rt>しょうしょう</rt></ruby><ruby>階段<rt>かいだん</rt></ruby>がございます。お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけくださいませ。<br>*(Có chút bậc thang ạ. Xin quý vị cẩn thận chân ạ.)* |
| Khách (con dâu) | お<ruby>義父<rt>とう</rt></ruby>さん、<ruby>手<rt>て</rt></ruby>すりを<ruby>持<rt>も</rt></ruby>って。<br>*(Bố ơi, vịn tay vịn đi.)* |
| Trang | <ruby>右側<rt>みぎがわ</rt></ruby>に<ruby>手<rt>て</rt></ruby>すりがございます。お<ruby>使<rt>つか</rt></ruby>いくださいませ。<br>*(Bên phải có tay vịn ạ. Xin quý vị dùng ạ.)* |
| Khách (ông) | あ、ありがとう。<br>*(À, cảm ơn.)* |
| Trang | (đến trước cửa phòng, quỳ xuống mở cửa shoji) <ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>でございます。お<ruby>入<rt>はい</rt></ruby>りくださいませ。<br>*(Đây là phòng Sakura ạ. Xin quý vị vào ạ.)* |
| Khách (cháu nhỏ 5 tuổi) | わー、たたみの<ruby>匂<rt>にお</rt></ruby>い! |
| Trang | (cười nhẹ) いらっしゃいませ、<ruby>桜風荘<rt>おうふうそう</rt></ruby>へようこそ。<br>*(Kính chào em, hoan nghênh đến Ouhuusou.)* |
| Khách (bà) | こちら、<ruby>同<rt>おな</rt></ruby>じお<ruby>部屋<rt>へや</rt></ruby>?<br>*(Vẫn phòng cũ à?)* |
| Trang | はい、<ruby>毎年<rt>まいとし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>でございます。お<ruby>隣<rt>となり</rt></ruby>の<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>もご<ruby>用意<rt>ようい</rt></ruby>いたしました。お<ruby>子様<rt>こさま</rt></ruby><ruby>連<rt>づ</rt></ruby>れのお<ruby>二人<rt>ふたり</rt></ruby><ruby>様<rt>さま</rt></ruby>はあちらでございます。<br>*(Vâng, vẫn là phòng Sakura như mọi năm ạ. Phòng Matsu kế bên chúng con cũng đã chuẩn bị. Hai vị có con nhỏ sẽ ở phòng đó ạ.)* |

---

## Tình huống 6 — 桜の<ruby>間<rt>ま</rt></ruby>内 · 14:40, dâng trà chào đón — Lan trợ giúp

*Trong phòng, Trang quỳ sát thấp, đặt khay trà gồm 8 chén trên chiếu. Lan đứng sau cửa shoji giúp nhận chén dơ.*

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>疲<rt>つか</rt></ruby>れでございましょう。お<ruby>抹茶<rt>まっちゃ</rt></ruby>と<ruby>季節<rt>きせつ</rt></ruby>の<ruby>和菓子<rt>わがし</rt></ruby>をご<ruby>用意<rt>ようい</rt></ruby>いたしました。<br>*(Hẳn quý vị đã mệt. Con đã chuẩn bị matcha và bánh wagashi theo mùa ạ.)* |
| Khách (ông) | お<ruby>菓子<rt>かし</rt></ruby>、きれいだね。<br>*(Bánh đẹp nhỉ.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>菓子<rt>かし</rt></ruby>は「<ruby>水無月<rt>みなづき</rt></ruby>」でございます。<ruby>京都<rt>きょうと</rt></ruby>では<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>無病息災<rt>むびょうそくさい</rt></ruby>を<ruby>願<rt>ねが</rt></ruby>って<ruby>食<rt>た</rt></ruby>べる<ruby>季節<rt>きせつ</rt></ruby>の<ruby>和菓子<rt>わがし</rt></ruby>でございます。<br>*(Bánh hôm nay là "Minazuki" ạ. Ở Kyoto, tháng 6 ăn bánh này để cầu khoẻ mạnh, là wagashi theo mùa ạ.)* |
| Khách (bà) | あら、<ruby>勉強<rt>べんきょう</rt></ruby>になるわ。<ruby>三角形<rt>さんかくけい</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>に<ruby>意味<rt>いみ</rt></ruby>はあるの?<br>*(Ơ, học hỏi được nhiều. Hình tam giác có ý nghĩa gì không?)* |
| Trang | はい。<ruby>三角形<rt>さんかくけい</rt></ruby>は<ruby>氷<rt>こおり</rt></ruby>を<ruby>表<rt>あらわ</rt></ruby>しており、<ruby>暑<rt>あつ</rt></ruby>い<ruby>夏<rt>なつ</rt></ruby>を<ruby>涼<rt>すず</rt></ruby>しく<ruby>過<rt>す</rt></ruby>ごす<ruby>願<rt>ねが</rt></ruby>いが<ruby>込<rt>こ</rt></ruby>められております。<ruby>上<rt>うえ</rt></ruby>の<ruby>小豆<rt>あずき</rt></ruby>は<ruby>厄除<rt>やくよ</rt></ruby>けでございます。<br>*(Vâng. Tam giác tượng trưng tảng băng, hàm ý ước nguyện vượt qua mùa hè mát mẻ. Đậu đỏ ở trên là để trừ tà ạ.)* |
| Khách (con trai) | ホテルじゃ<ruby>聞<rt>き</rt></ruby>けない<ruby>話<rt>はなし</rt></ruby>だね。<br>*(Khách sạn thường không nghe được chuyện này nhỉ.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>女将<rt>おかみ</rt></ruby>と<ruby>板長<rt>いたちょう</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Con không dám. Con được Okami và bếp trưởng dạy ạ.)* |
| Trang | お<ruby>夕食<rt>ゆうしょく</rt></ruby>は<ruby>18<rt>じゅうはち</rt></ruby><ruby>時<rt>じ</rt></ruby>より<ruby>別室<rt>べっしつ</rt></ruby>「<ruby>松籟<rt>しょうらい</rt></ruby>」にてご<ruby>用意<rt>ようい</rt></ruby>させていただきます。お<ruby>呼<rt>よ</rt></ruby>びに<ruby>参<rt>まい</rt></ruby>りますので、ごゆっくりお<ruby>過<rt>す</rt></ruby>ごしくださいませ。<br>*(Bữa tối từ 18h tại phòng riêng "Shourai" ạ. Con sẽ đến mời, mong quý vị nghỉ ngơi thoải mái ạ.)* |

---

## Tình huống 7 — 廊下 · 15:00, Trang giảng cho Lan vừa rồi đã làm gì

*Hai chị em đi ra hành lang, Lan tay vẫn cầm cuốn sổ ghi vội.*

| Vai | Lời thoại |
|---|---|
| Lan | トランさん、すごい...あんなに<ruby>話<rt>はな</rt></ruby>せるなんて。「<ruby>水無月<rt>みなづき</rt></ruby>」<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Trang-san, kinh quá... nói được như vậy. "Minazuki" em mới nghe lần đầu.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さんと<ruby>板長<rt>いたちょう</rt></ruby>さんに<ruby>毎月<rt>まいげつ</rt></ruby>の<ruby>和菓子<rt>わがし</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>をしてもらっています。<br>*(Em nhờ Okami và bếp trưởng dạy wagashi mỗi tháng.)* |
| Lan | <ruby>私<rt>わたし</rt></ruby>も<ruby>勉強<rt>べんきょう</rt></ruby>します。<ruby>気<rt>き</rt></ruby>づいたことがあります。トランさん、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>立<rt>た</rt></ruby>って<ruby>話<rt>はな</rt></ruby>さなかったですね。<br>*(Em cũng học. Em phát hiện: Trang-san trước mặt khách tuyệt đối không đứng nói.)* |
| Trang | あ、よく<ruby>気付<rt>きづ</rt></ruby>いたね。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>座<rt>すわ</rt></ruby>っている<ruby>時<rt>とき</rt></ruby>、<ruby>仲居<rt>なかい</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>正座<rt>せいざ</rt></ruby>か<ruby>膝<rt>ひざ</rt></ruby>を<ruby>付<rt>つ</rt></ruby>く。<ruby>目線<rt>めせん</rt></ruby>がお<ruby>客様<rt>きゃくさま</rt></ruby>より<ruby>下<rt>した</rt></ruby>になるように。<br>*(À, em ý nhỉ. Khi khách ngồi, nakai bắt buộc seiza hoặc quỳ một gối. Để tầm mắt thấp hơn khách.)* |
| Lan | <ruby>目線<rt>めせん</rt></ruby>を<ruby>下<rt>した</rt></ruby>に、ということですね。<ruby>大事<rt>だいじ</rt></ruby>なポイント。<br>*(Tầm mắt thấp xuống. Điểm quan trọng.)* |
| Trang | あと、ドアを<ruby>開<rt>あ</rt></ruby>ける<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>両手<rt>りょうて</rt></ruby>。<ruby>片手<rt>かたて</rt></ruby>はダメ。<br>*(Và mở cửa shoji bắt buộc hai tay. Một tay không được.)* |
| Lan | お<ruby>盆<rt>ぼん</rt></ruby>を<ruby>運<rt>はこ</rt></ruby>ぶ<ruby>時<rt>とき</rt></ruby>は?<br>*(Lúc bưng khay thì sao ạ?)* |
| Trang | お<ruby>盆<rt>ぼん</rt></ruby>を<ruby>左<rt>ひだり</rt></ruby><ruby>手<rt>て</rt></ruby>で<ruby>持<rt>も</rt></ruby>って、<ruby>右<rt>みぎ</rt></ruby><ruby>手<rt>て</rt></ruby>でドアを<ruby>開<rt>あ</rt></ruby>ける。お<ruby>盆<rt>ぼん</rt></ruby>を<ruby>下<rt>お</rt></ruby>ろしてから<ruby>両手<rt>りょうて</rt></ruby>で<ruby>閉<rt>し</rt></ruby>める。<br>*(Cầm khay tay trái, tay phải mở cửa. Đặt khay xuống rồi hai tay đóng cửa.)* |
| Lan | <ruby>順番<rt>じゅんばん</rt></ruby>、メモします。<br>*(Thứ tự, em ghi.)* |

---

## Tình huống 8 — 別室「松籟」 · 17:30, chuẩn bị bàn tiệc trước bữa tối

*Phòng tiệc riêng, bàn dài kiểu Nhật thấp. Trang cùng Lan và Yumiko đang trải khăn, đặt bộ đũa, bàn tiệc cho 8 người.*

| Vai | Lời thoại |
|---|---|
| Yumiko | お<ruby>箸<rt>はし</rt></ruby>の<ruby>向<rt>む</rt></ruby>き、お<ruby>箸先<rt>はしさき</rt></ruby>はお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>左<rt>ひだり</rt></ruby>。<br>*(Hướng đũa, đầu đũa về bên trái của khách.)* |
| Lan | <ruby>左<rt>ひだり</rt></ruby>ですね。なぜですか?<br>*(Bên trái ạ. Tại sao ạ?)* |
| Yumiko | <ruby>日本<rt>にほん</rt></ruby>では<ruby>左<rt>ひだり</rt></ruby>が<ruby>上座<rt>かみざ</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>が<ruby>下座<rt>しもざ</rt></ruby>。お<ruby>箸<rt>はし</rt></ruby>の<ruby>先<rt>さき</rt></ruby>は<ruby>清<rt>きよ</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>、つまり<ruby>上座<rt>かみざ</rt></ruby>に<ruby>向<rt>む</rt></ruby>けます。<br>*(Ở Nhật, trái là kamiza (vị trí cao), phải là shimoza (vị trí thấp). Đầu đũa là phần sạch, hướng về kamiza.)* |
| Trang | <ruby>還暦<rt>かんれき</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>いで<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けることは?<br>*(Lễ 60 tuổi cần lưu ý gì ạ?)* |
| Yumiko | <ruby>還暦<rt>かんれき</rt></ruby>は<ruby>赤<rt>あか</rt></ruby>。<ruby>赤<rt>あか</rt></ruby>いちゃんちゃんこ、<ruby>赤<rt>あか</rt></ruby>い<ruby>座布団<rt>ざぶとん</rt></ruby>を<ruby>主賓<rt>しゅひん</rt></ruby>のお<ruby>席<rt>せき</rt></ruby>に<ruby>用意<rt>ようい</rt></ruby>。<ruby>会場<rt>かいじょう</rt></ruby>には<ruby>赤<rt>あか</rt></ruby>い<ruby>花<rt>はな</rt></ruby>を<ruby>飾<rt>かざ</rt></ruby>ります。<br>*(Kanreki tượng trưng màu đỏ. Áo gấm đỏ, đệm đỏ chuẩn bị cho ghế chủ. Phòng tiệc cắm hoa đỏ.)* |
| Trang | なぜ<ruby>赤<rt>あか</rt></ruby>ですか?<br>*(Tại sao là đỏ ạ?)* |
| Yumiko | <ruby>60<rt>ろくじゅっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>で<ruby>暦<rt>こよみ</rt></ruby>が<ruby>一周<rt>いっしゅう</rt></ruby>して、<ruby>赤<rt>あか</rt></ruby>ちゃんに<ruby>戻<rt>もど</rt></ruby>るという<ruby>意味<rt>いみ</rt></ruby>。<ruby>赤<rt>あか</rt></ruby>ちゃんの「<ruby>赤<rt>あか</rt></ruby>」と<ruby>同<rt>おな</rt></ruby>じ。<br>*(60 tuổi là lịch quay đủ một vòng, ý nghĩa "trở về sơ sinh". "Đỏ" như "akachan" — em bé.)* |
| Trang | <ruby>暦<rt>こよみ</rt></ruby>が<ruby>一周<rt>いっしゅう</rt></ruby>して<ruby>赤<rt>あか</rt></ruby>ちゃんに<ruby>戻<rt>もど</rt></ruby>る...<ruby>素敵<rt>すてき</rt></ruby>ですね。<br>*(Lịch quay đủ vòng trở về em bé... thật đẹp.)* |
| Lan | <ruby>言葉<rt>ことば</rt></ruby>がきれい。<br>*(Lời nói đẹp ghê.)* |
| Yumiko | お<ruby>祝<rt>いわ</rt></ruby>いの<ruby>言葉<rt>ことば</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>がお<ruby>席<rt>せき</rt></ruby>についたら、トランさんが<ruby>代表<rt>だいひょう</rt></ruby>でご<ruby>挨拶<rt>あいさつ</rt></ruby>。<ruby>練習<rt>れんしゅう</rt></ruby>しましたね?<br>*(Lời chúc mừng, khách yên vị Trang-san đại diện chào. Đã luyện rồi chứ?)* |
| Trang | はい、<ruby>三十回<rt>さんじゅっかい</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Vâng, luyện 30 lần rồi ạ.)* |

---

## Tình huống 9 — 別室「松籟」 · 18:00, Trang phát biểu chúc 還暦

*8 khách yên vị quanh bàn. Ông Kinoshita ngồi ghế danh dự, khoác áo gấm đỏ. Đèn andon vàng nhẹ. Trang quỳ vào giữa cửa, hai tay chống tatami, cúi 30°.*

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>還暦<rt>かんれき</rt></ruby><ruby>誠<rt>まこと</rt></ruby>におめでとうございます。<br>*(Thưa ông Kinoshita, hôm nay xin chân thành chúc mừng quý ông tròn 60 tuổi.)* |
| Trang | <ruby>毎年<rt>まいとし</rt></ruby><ruby>桜風荘<rt>おうふうそう</rt></ruby>をご<ruby>愛顧<rt>あいこ</rt></ruby>くださり、<ruby>今年<rt>ことし</rt></ruby>はご<ruby>家族<rt>かぞく</rt></ruby><ruby>皆様<rt>みなさま</rt></ruby>でお<ruby>祝<rt>いわ</rt></ruby>いの<ruby>機会<rt>きかい</rt></ruby>を<ruby>賜<rt>たまわ</rt></ruby>り、<ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>一同<rt>いちどう</rt></ruby>、<ruby>誠<rt>まこと</rt></ruby>に<ruby>光栄<rt>こうえい</rt></ruby>に<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Mỗi năm quý ông đều ưu ái Ouhuusou, năm nay quý ông lại ban cho dịp mừng cùng cả gia đình, toàn thể nhân viên chúng con xin được vinh dự ạ.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>料理<rt>りょうり</rt></ruby>は、<ruby>板長<rt>いたちょう</rt></ruby>が<ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>のためだけにご<ruby>用意<rt>ようい</rt></ruby>させていただいた<ruby>特別<rt>とくべつ</rt></ruby>な<ruby>還暦<rt>かんれき</rt></ruby><ruby>懐石<rt>かいせき</rt></ruby>でございます。<br>*(Cơm hôm nay là kaiseki kanreki đặc biệt mà bếp trưởng chuẩn bị riêng cho quý ông ạ.)* |
| Trang | どうぞ、<ruby>末永<rt>すえなが</rt></ruby>くお<ruby>元気<rt>げんき</rt></ruby>で、<ruby>桜風荘<rt>おうふうそう</rt></ruby>をご<ruby>愛顧<rt>あいこ</rt></ruby>くださいませ。<br>*(Kính chúc quý ông mãi khoẻ mạnh, và mãi ưu ái Ouhuusou ạ.)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>におめでとうございます。(cúi 45° giữ 3 giây) |
| Khách (ông, mắt rưng rưng) | トランさん、ありがとう。ベトナムから<ruby>来<rt>き</rt></ruby>てくれた<ruby>仲居<rt>なかい</rt></ruby>さんがこんなふうに<ruby>言<rt>い</rt></ruby>ってくれるなんて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Trang-san, cảm ơn. Nakai từ Việt Nam đến mà nói như vậy, tôi vui thật sự.)* |
| Khách (con trai) | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |

---

## Tình huống 10 — 廊下 · 21:30, Trang xin lỗi nghiêm túc khi cháu nhỏ làm đổ trà

*Lan vô ý đặt chén trà quá gần mép bàn, cháu nhỏ 5 tuổi va trúng, trà nóng đổ lên áo bà.*

| Vai | Lời thoại |
|---|---|
| Lan | (mặt tái, gần khóc) すみません、すみません、<ruby>本当<rt>ほんとう</rt></ruby>にすみません...<br>*(Em xin lỗi, em xin lỗi, thật xin lỗi...)* |
| Trang | (vẫn bình tĩnh, quỳ trước bà) <ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。お<ruby>怪我<rt>けが</rt></ruby>はございませんでしょうか。<br>*(Vô cùng xin lỗi ạ. Bà có bị thương không ạ?)* |
| Khách (bà) | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。ぬるかったし。<br>*(Không sao, không sao. Trà nguội mà.)* |
| Trang | <ruby>誠<rt>まこと</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。すぐに<ruby>新<rt>あたら</rt></ruby>しい<ruby>浴衣<rt>ゆかた</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたします。<ruby>濡<rt>ぬ</rt></ruby>れたお<ruby>召<rt>め</rt></ruby>し<ruby>物<rt>もの</rt></ruby>は<ruby>明朝<rt>みょうちょう</rt></ruby>までにクリーニングをご<ruby>用意<rt>ようい</rt></ruby>させていただきます。<br>*(Con thật ngại quá. Con xin đi lấy yukata mới ngay. Đồ ướt sáng mai con sẽ chuẩn bị giặt sạch ạ.)* |
| Khách (bà) | <ruby>悪<rt>わる</rt></ruby>かったわね、<ruby>孫<rt>まご</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いたから。<br>*(Tại cháu tôi chạy lung tung mà.)* |
| Trang | いえ、<ruby>私<rt>わたし</rt></ruby>どもの<ruby>不手際<rt>ふてぎわ</rt></ruby>でございます。お<ruby>湯飲<rt>ゆの</rt></ruby>みを<ruby>端<rt>はし</rt></ruby>に<ruby>置<rt>お</rt></ruby>いた<ruby>私<rt>わたし</rt></ruby>どもの<ruby>責任<rt>せきにん</rt></ruby>でございます。<br>*(Không ạ, đây là sơ suất của chúng con. Để chén trà ở mép là trách nhiệm của chúng con ạ.)* |
| Khách (con dâu) | <ruby>仲居<rt>なかい</rt></ruby>さん、そこまで<ruby>気<rt>き</rt></ruby>になさらないで。<br>*(Cô nakai, đừng để tâm quá vậy.)* |
| Trang | <ruby>誠<rt>まこと</rt></ruby>にありがとうございます。ご<ruby>夕食<rt>ゆうしょく</rt></ruby>を<ruby>楽<rt>たの</rt></ruby>しんでいただけるよう、<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて<ruby>務<rt>つと</rt></ruby>めさせていただきます。<br>*(Con xin chân thành cảm ơn. Con sẽ chú ý để quý vị thưởng thức bữa tối ạ.)* |

---

## Tình huống 11 — 仲居控室 · 22:30, Trang dạy Lan về 不手際 và cách xin lỗi

*Sau khi khách lên phòng nghỉ. Lan ngồi cúi đầu, mắt đỏ.*

| Vai | Lời thoại |
|---|---|
| Lan | トランさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>私<rt>わたし</rt></ruby>のせいで...<br>*(Trang-san, em thật xin lỗi. Tại em...)* |
| Trang | <ruby>顔<rt>かお</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げて、ランさん。<ruby>今日<rt>きょう</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えることがあるよ。<br>*(Ngẩng đầu lên, Lan-san. Hôm nay có thứ phải nhớ.)* |
| Lan | はい...<br>*(Vâng...)* |
| Trang | <ruby>一<rt>ひと</rt></ruby>つ、<ruby>仲居<rt>なかい</rt></ruby>は「すみません」とは<ruby>言<rt>い</rt></ruby>わない。「<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」と<ruby>言<rt>い</rt></ruby>う。<br>*(Một, nakai không nói "sumimasen". Phải nói "taihen moushiwake gozaimasen".)* |
| Lan | 「すみません」じゃないんですか?<br>*(Không phải "sumimasen" ạ?)* |
| Trang | 「すみません」は<ruby>軽<rt>かる</rt></ruby>すぎる。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>になる<ruby>時<rt>とき</rt></ruby>は「<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」「<ruby>誠<rt>まこと</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます」。<br>*("Sumimasen" quá nhẹ. Khi thất lễ với khách phải "taihen moushiwake gozaimasen" hoặc "makoto ni kyoushuku de gozaimasu".)* |
| Lan | <ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません...メモします。<br>*(Taihen moushiwake gozaimasen... em ghi.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>謝<rt>あやま</rt></ruby>る<ruby>時<rt>とき</rt></ruby>に<ruby>泣<rt>な</rt></ruby>かない。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>気<rt>き</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うから。<ruby>裏<rt>うら</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って、ここで<ruby>泣<rt>な</rt></ruby>くのはOK。<br>*(Hai, lúc xin lỗi không khóc. Khách sẽ ngại. Quay lại sau, khóc ở đây thì OK.)* |
| Lan | <ruby>恥<rt>は</rt></ruby>ずかしい。<br>*(Xấu hổ quá.)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>原因<rt>げんいん</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>自分<rt>じぶん</rt></ruby><ruby>側<rt>がわ</rt></ruby>に<ruby>持<rt>も</rt></ruby>つ。「<ruby>湯飲<rt>ゆの</rt></ruby>みを<ruby>端<rt>はし</rt></ruby>に<ruby>置<rt>お</rt></ruby>いた<ruby>私<rt>わたし</rt></ruby>どもの<ruby>責任<rt>せきにん</rt></ruby>です」と<ruby>私<rt>わたし</rt></ruby>が<ruby>言<rt>い</rt></ruby>ったでしょう?お<ruby>子様<rt>こさま</rt></ruby>のせいにしない。<br>*(Ba, luôn nhận nguyên nhân về phía mình. Em thấy chị nói "trách nhiệm chúng con đặt chén ở mép" chứ? Không đổ tại đứa bé.)* |
| Lan | お<ruby>子様<rt>こさま</rt></ruby>のせいに<ruby>絶対<rt>ぜったい</rt></ruby>しない。<br>*(Tuyệt đối không đổ tại đứa bé.)* |
| Trang | これがおもてなし。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>立場<rt>たちば</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ、ということです。<br>*(Đây là omotenashi. Đứng ở lập trường của khách.)* |
| Lan | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em học được rồi. Cảm ơn chị.)* |

---

## Tình huống 12 — 玄関前 · 3 ngày sau, 10:00, tiễn đoàn Kinoshita 立礼

*Sáng hôm thứ 4. Xe minivan đậu trước cổng. Tổ nakai gồm Sato, Yumiko, Trang, Lan, Soyeon đứng hàng dọc.*

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>泊<rt>ぱく</rt></ruby><ruby>4<rt>よっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Thưa ông Kinoshita, 3 đêm 4 ngày, xin chân thành cảm ơn ạ.)* |
| Khách (ông) | こちらこそ、<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>還暦<rt>かんれき</rt></ruby>になりました。<br>*(Chúng tôi cảm ơn mới đúng, một kanreki thật tuyệt vời.)* |
| Khách (bà) | トランさん、<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>、<ruby>美味<rt>おい</rt></ruby>しかった。お<ruby>菓子<rt>かし</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>も<ruby>面白<rt>おもしろ</rt></ruby>かった。<br>*(Trang-san, yuba ngon. Chuyện bánh wagashi thú vị.)* |
| Trang | (cúi 45°) <ruby>誠<rt>まこと</rt></ruby>に<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。お<ruby>褒<rt>ほ</rt></ruby>めいただきありがとうございます。<br>*(Con thật không dám. Cảm ơn quý ông bà đã khen ạ.)* |
| Khách (ông) | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>桜<rt>さくら</rt></ruby>の<ruby>季節<rt>きせつ</rt></ruby>に。<br>*(Năm sau cũng mùa hoa anh đào nhé.)* |
| Trang | <ruby>来年<rt>らいねん</rt></ruby>もお<ruby>待<rt>ま</rt></ruby>ち<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げております。お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りくださいませ。<br>*(Năm sau chúng con cũng kính đợi ạ. Quý ông bà về cẩn thận ạ.)* |
| Khách (cháu) | バイバイ、トランお<ruby>姉<rt>ねえ</rt></ruby>ちゃん!<br>*(Bye bye, chị Trang!)* |
| Trang | (cúi nhẹ về phía cháu) また<ruby>来年<rt>らいねん</rt></ruby>ね。<br>*(Hẹn năm sau nhé.)* |

*Xe nổ máy, từ từ chạy. Cả ekíp giữ thế đứng cúi 45°, không động đậy. Xe khuất sau khúc rẽ. Sato nhẹ nâng đầu, cả ekíp mới nâng theo.*

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>皆<rt>みな</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。トランさん、<ruby>素晴<rt>すば</rt></ruby>らしいおもてなしでした。<br>*(Mọi người vất vả rồi. Trang-san, omotenashi tuyệt vời.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ご<ruby>指導<rt>しどう</rt></ruby><ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Thưa Okami, chị Yumiko, con xin cảm ơn sự chỉ bảo ạ.)* |
| Lan | <ruby>私<rt>わたし</rt></ruby>も<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em cũng học được nhiều.)* |
| Sato | ランさん、<ruby>泣<rt>な</rt></ruby>かなかったね。<ruby>立派<rt>りっぱ</rt></ruby>でした。<br>*(Lan-san, không khóc. Giỏi lắm.)* |

---

## Tình huống 13 — 仲居寮 共同台所 · 21:00, Trang gọi mẹ kể đoàn Kinoshita

> Cảnh tiếng Việt — Trang gọi cho mẹ qua Zalo, kể về 3 đêm 4 ngày đoàn Kinoshita, ôn lại từ vựng JP.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Mẹ ơi, tối nay con vừa tiễn đoàn ông bà Kinoshita đi. 3 đêm 4 ngày, gia đình 8 người sang ăn mừng *kanreki* — 還暦, tức là ông Kinoshita tròn 60. |
| Mẹ Trang | (tiếng Việt) Lễ mừng 60 tuổi bên đó hoành tráng không con? |
| Trang | (tiếng Việt) Dạ. Bên này coi 60 là *kanreki*, mặc áo gấm đỏ — *chanchanko* — ちゃんちゃんこ. Ý nghĩa là lịch quay đủ 60 năm thì coi như "trở về em bé", lại bắt đầu vòng đời mới. |
| Mẹ Trang | (tiếng Việt) Ý nghĩa hay quá con. |
| Trang | (tiếng Việt) Dạ. Mà mẹ ơi, bà Okami dạy con triết lý *omotenashi* — おもてなし. Nghĩa là phục vụ "không có mặt trái" — trước mặt khách hay sau lưng khách đều như nhau. Thấy vết bẩn đáy chén dù khách không thấy cũng phải lau. |
| Mẹ Trang | (tiếng Việt) Triết lý đó hay. |
| Trang | (tiếng Việt) Dạ. Mà có một việc con suýt khóc mẹ. Em Lan đặt chén trà sát mép bàn, cháu nhỏ va trúng, đổ trà lên áo bà Kinoshita. Em Lan tái mặt, nói "*sumimasen, sumimasen*" liên tục. Con phải quỳ xin lỗi giùm: "*taihen moushiwake gozaimasen*" — vô cùng xin lỗi, rồi "*makoto ni kyoushuku de gozaimasu*" — con thật ngại quá. |
| Mẹ Trang | (tiếng Việt) Trời ơi, may là bà ấy không sao. |
| Trang | (tiếng Việt) Dạ may bà không bỏng. Mà điều con dạy lại em Lan tối đó là 3 cái: nakai không nói "sumimasen" vì quá nhẹ, lúc xin lỗi không được khóc trước mặt khách, và phải nhận nguyên nhân về phía mình — không được đổ tại đứa bé chạy. |
| Mẹ Trang | (tiếng Việt) Hồi nãy con nghe cũng đáng học cho cả đời. |
| Trang | (tiếng Việt) Dạ. Mà mẹ biết không, sau khi tiễn ra cổng, xe nổ máy rồi đi, cả 5 chị em vẫn đứng cúi 45° giữ nguyên đến khi xe khuất sau khúc rẽ. Đó là *otsugemukae* — お見送り, nghi thức tiễn đặc biệt. |
| Mẹ Trang | (tiếng Việt) Trang ơi mẹ tự hào con quá. |
| Trang | (tiếng Việt) Dạ bà Okami khen "omotenashi tuyệt vời". Con muốn khóc luôn mẹ ạ. |

---

## Tình huống 14 — Bàn học phòng Trang · 23:00, viết nhật ký

| Vai | Lời thoại |
|---|---|
| Trang | (đọc nhẩm) <ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby>。<ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>還暦<rt>かんれき</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>い<ruby>最終日<rt>さいしゅうび</rt></ruby>。<br>*(10/6. Ngày cuối lễ kanreki của ông Kinoshita.)* |
| Trang | <ruby>今日<rt>きょう</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>:おもてなし・<ruby>表裏<rt>おもてうら</rt></ruby>がない・<ruby>還暦<rt>かんれき</rt></ruby>・<ruby>水無月<rt>みなづき</rt></ruby>・<ruby>立礼<rt>りつれい</rt></ruby>・<ruby>正座<rt>せいざ</rt></ruby>・<ruby>上座<rt>かみざ</rt></ruby>・<ruby>下座<rt>しもざ</rt></ruby>・<ruby>不手際<rt>ふてぎわ</rt></ruby>・<ruby>恐縮<rt>きょうしゅく</rt></ruby>・<ruby>賜<rt>たまわ</rt></ruby>る・<ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>一同<rt>いちどう</rt></ruby>。<br>*(Từ hôm nay: omotenashi, không mặt trái, kanreki, minazuki, ritsurei, seiza, kamiza, shimoza, sơ suất, ngại, được ban cho, toàn thể nhân viên.)* |
| Trang | <ruby>表現<rt>ひょうげん</rt></ruby>:お<ruby>越<rt>こ</rt></ruby>しくださいまして<ruby>誠<rt>まこと</rt></ruby>にありがとうございます・ご<ruby>足労<rt>そくろう</rt></ruby>いただき・お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけくださいませ・<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません・<ruby>誠<rt>まこと</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます・<ruby>末永<rt>すえなが</rt></ruby>くお<ruby>元気<rt>げんき</rt></ruby>で。<br>*(Mẫu câu: cảm ơn quý ông đã đến, đa tạ quý ông đã đi xa, xin cẩn thận chân, vô cùng xin lỗi, thật ngại quá, kính chúc mãi khoẻ.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>のお<ruby>言葉<rt>ことば</rt></ruby>:おもてなし=<ruby>表裏<rt>おもてうら</rt></ruby>がない=お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>見<rt>み</rt></ruby>ていない<ruby>時<rt>とき</rt></ruby>こそ。<br>*(Lời Okami: omotenashi = không mặt trái = càng lúc khách không nhìn càng quan trọng.)* |
| Trang | ランさんに<ruby>教<rt>おし</rt></ruby>えたこと:<ruby>謝<rt>あやま</rt></ruby>る<ruby>三<rt>みっ</rt></ruby>つのルール<ol><li><ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません(すみませんではなく)</li><li>お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>泣<rt>な</rt></ruby>かない</li><li><ruby>原因<rt>げんいん</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby><ruby>側<rt>がわ</rt></ruby>に<ruby>持<rt>も</rt></ruby>つ</li></ol><br>*(Điều dạy Lan-san: 3 quy tắc xin lỗi: (1) Taihen moushiwake gozaimasen (không sumimasen), (2) Không khóc trước mặt khách, (3) Đặt nguyên nhân về phía mình.)* |

---

## Đọng lại chương 3

Đoàn 還暦 nhà Kinoshita 3 đêm 4 ngày là dịp Trang được 女将 nâng tầm bài bản về おもてなし. Học được bộ mẫu câu kính ngữ cấp cao cho dịp đặc biệt: **chào đón** (お越しくださいまして誠にありがとうございます・ご足労いただき), **dẫn khách** (お足元にお気をつけくださいませ), **giải thích văn hoá** (〜には〜の意味が込められております), **tiễn khách 立礼** (またのお越しを心よりお待ち申し上げております), **xin lỗi tột bậc** (大変申し訳ございません・誠に恐縮でございます). Triết lý おもてなし = 「表裏がない」 — phục vụ trước mặt và sau lưng khách giống nhau. Phân biệt được **内弁慶 vs 外面** — hai phản đề của おもてなし. Quy tắc 3 điểm khi xin lỗi: (1) Không nói 「すみません」 quá nhẹ, dùng 「大変申し訳ございません」, (2) Không khóc trước mặt khách, (3) Đặt nguyên nhân về phía mình, không đổ cho khách (kể cả cháu bé). Học văn hoá 還暦 (60 tuổi = lịch quay đủ vòng, trở về 赤ちゃん, mặc áo gấm đỏ ちゃんちゃんこ) và 和菓子 mùa Minazuki tháng 6.

> Từ vựng & mẫu câu chương này: おもてなし・表裏がない・内弁慶・外面・還暦・ちゃんちゃんこ・水無月・無病息災・厄除け・立礼・正座・上座・下座・主賓・お足元にお気をつけくださいませ・ご足労いただき誠にありがとうございます・お越しくださいまして・末永くお元気で・大変申し訳ございません・誠に恐縮でございます・お見送り・賜る・従業員一同・お運びの順序

## Bí quyết chương

- おもてなし语源: "持って成す" (đem cái mình có để làm thành) hoặc "表裏なし" (không mặt trái) — cốt lõi là **làm như nhau dù khách có nhìn hay không**.
- 還暦 (60 tuổi) = lịch âm 干支 quay đủ vòng → "trở về em bé" → màu đỏ (chanchanko, đệm đỏ, hoa đỏ).
- 水無月 (Minazuki) — bánh wagashi đặc trưng tháng 6 Kyoto: hình tam giác (tảng băng → mát mẻ mùa hè), đậu đỏ trên đỉnh (trừ tà).
- Khi khách ngồi, 仲居 phải seiza hoặc quỳ một gối — **tầm mắt thấp hơn khách**.
- Mở/đóng cửa shoji bắt buộc **hai tay**. Bưng khay tay trái, mở cửa tay phải; đặt khay xuống mới dùng hai tay đóng.
- Quy tắc xin lỗi 3 điểm: (1) không 「すみません」 → dùng 「大変申し訳ございません・誠に恐縮でございます」, (2) không khóc trước khách, (3) nhận nguyên nhân về phía mình.
- お見送り cấp cao: cúi 45° giữ đến khi xe khuất khúc rẽ; chỉ 女将 nâng đầu trước, ekíp nâng theo.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| おもてなし | — | — | Sự tiếp đón từ tâm (triết lý Nhật) |
| 表裏 | おもてうら | BIỂU LÝ | Mặt phải - mặt trái |
| 内弁慶 | うちべんけい | NỘI BIỆN KHÁNH | Người ở nhà mạnh ra ngoài yếu |
| 外面 | そとづら | NGOẠI DIỆN | Mặt đối ngoài (đặc biệt giả tạo) |
| 還暦 | かんれき | HOÀN LỊCH | Lễ mừng 60 tuổi (lịch quay đủ vòng) |
| ちゃんちゃんこ | — | — | Áo gấm đỏ không tay (mặc khi 還暦) |
| 暦 | こよみ | LỊCH | Lịch (âm) |
| 一周 | いっしゅう | NHẤT CHU | Một vòng |
| 主賓 | しゅひん | CHỦ TÂN | Khách chính của tiệc |
| 立礼 | りつれい | LẬP LỄ | Cúi đứng (nghi thức) |
| 正座 | せいざ | CHÍNH TOẠ | Ngồi quỳ gập chân (kiểu Nhật) |
| 背筋 | せすじ | BỐI CÂN | Cột sống lưng |
| 上座 | かみざ | THƯỢNG TOẠ | Vị trí cao (bên trái, gần tokonoma) |
| 下座 | しもざ | HẠ TOẠ | Vị trí thấp (bên phải, gần cửa) |
| 水無月 | みなづき | THUỶ VÔ NGUYỆT | Wagashi mùa tháng 6 (hình tam giác) |
| 無病息災 | むびょうそくさい | VÔ BỆNH TỨC TAI | Khoẻ mạnh, tránh hoạn nạn |
| 厄除け | やくよけ | ÁCH TRỪ | Trừ tà, trừ vận xấu |
| 抹茶 | まっちゃ | MẠT TRÀ | Matcha — bột trà xanh |
| 和菓子 | わがし | HOÀ QUẢ TỬ | Bánh truyền thống Nhật |
| 小豆 | あずき | TIỂU ĐẬU | Đậu đỏ |
| 氷 | こおり | BĂNG | Băng, đá |
| 涼しい | すずしい | LƯƠNG — | Mát mẻ |
| お足元 | おあしもと | — TÚC NGUYÊN | Bước chân (kính ngữ) |
| 手すり | てすり | THỦ — | Tay vịn |
| 階段 | かいだん | GIAI ĐOẠN | Cầu thang |
| 障子 | しょうじ | CHƯỚNG TỬ | Cửa giấy Nhật (shoji) |
| 目線 | めせん | MỤC TUYẾN | Tầm mắt |
| 両手 | りょうて | LƯỠNG THỦ | Hai tay |
| 片手 | かたて | PHIẾN THỦ | Một tay |
| 不手際 | ふてぎわ | BẤT THỦ TẾ | Sơ suất, không khéo léo |
| 恐縮 | きょうしゅく | KHỦNG SÚC | Ngại, biết ơn (kính ngữ) |
| 申し訳 | もうしわけ | THÂN DỊCH | Lời xin lỗi (申し訳ない/ございません) |
| 責任 | せきにん | TRÁCH NHIỆM | Trách nhiệm |
| 原因 | げんいん | NGUYÊN NHÂN | Nguyên nhân |
| 立場 | たちば | LẬP TRƯỜNG | Lập trường, vị thế |
| 賜る | たまわる | TỨ — | Được ban cho (kính ngữ cao) |
| 従業員一同 | じゅうぎょういんいちどう | TÒNG NGHIỆP VIÊN NHẤT ĐỒNG | Toàn thể nhân viên |
| 光栄 | こうえい | QUANG VINH | Vinh dự |
| 末永く | すえながく | MẠT VĨNH — | Mãi mãi (chúc) |
| ご足労 | ごそくろう | — TÚC LAO | Sự đi xa (kính ngữ, cảm tạ) |
| お運び | おはこび | — VẬN | Sự đến (kính ngữ) |
| お見送り | おみおくり | — KIẾN TỐNG | Sự tiễn (kính ngữ) |
| お運びの順序 | おはこびのじゅんじょ | — VẬN — THUẬN TỰ | Thứ tự dâng món |
| 別室 | べっしつ | BIỆT THẤT | Phòng riêng |
| 松籟 | しょうらい | TÙNG LẠI | Tiếng gió qua tùng (tên phòng tiệc) |
| 機会 | きかい | CƠ HỘI | Dịp, cơ hội |
| 桐 | きり | — | Cây hông (gỗ làm hộp gia bảo) |
| 怪我 | けが | QUÁI NGÃ | Vết thương, bị thương |
| 召し物 | めしもの | TRIỆU VẬT | Trang phục (kính ngữ) |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000004, 800000047, NULL, 'markdown_book', 'T4. Lên kế hoạch lễ Sakura — Trang đón đoàn khách quen (桜まつり企画・常連団体の主担当)', '# Sách thực tập sinh khách sạn · T4. Lên kế hoạch lễ Sakura — Trang đón đoàn khách quen (桜まつり企画・常連団体の主担当)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế) tham gia 企画会議 lập kế hoạch lễ Sakura giữa tháng 7 đón đoàn khách quen 10 người Tokyo. Học các mẫu hội thoại tiếng Nhật cấp 企画担当 仲居 năm 2: phát biểu trong họp công ty (発言してもよろしいでしょうか / 提案がございます), trình bày bảng kế hoạch (お手元の資料をご覧ください), phản hồi ý kiến cấp trên lễ phép (ご指摘の通りでございます / 検討させていただきます), phân công nhiệm vụ cho kohai (〜をお願いできますか), báo cáo tiến độ (現在の進捗をご報告いたします), và viết メール 招待状 cho khách.

---

## Bối cảnh

Đầu tháng 7 năm 2026. Mùa Obon sắp đến, cũng là dịp ryokan Ouhuusou tổ chức 「<ruby>夏<rt>なつ</rt></ruby>の<ruby>夕<rt>ゆう</rt></ruby>べ<ruby>桜風祭<rt>おうふうさい</rt></ruby>」 — lễ mùa hạ truyền thống đón đoàn khách quen đặc biệt từ Tokyo, gồm 10 người là khách hàng VIP đi cùng nhau hơn 15 năm. 女将 Sato quyết định giao Trang làm 主担当 — sự kiện đầu đời được giao toàn quyền lập kế hoạch và điều phối. Sự kiện tổ chức 12-14/7. Chương này tập trung mẫu câu cấp 企画担当 仲居: tham gia 企画会議, viết メール 招待状, phân công cho ekíp, đối thoại với 板長 về thực đơn, báo cáo tiến độ với 女将, và đón đoàn khách buổi đầu.

---

## Tình huống 1 — 女将室 · 9:00, Sato giao Trang chủ trách lễ 桜風祭

| Vai | Lời thoại |
|---|---|
| Sato | トランさん、<ruby>本年度<rt>ほんねんど</rt></ruby>の<ruby>桜風祭<rt>おうふうさい</rt></ruby>の<ruby>主担当<rt>しゅたんとう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Trang-san, tôi muốn giao cô làm chủ trách lễ Ouhuusai năm nay.)* |
| Trang | え、<ruby>桜風祭<rt>おうふうさい</rt></ruby>の<ruby>主担当<rt>しゅたんとう</rt></ruby>を、ですか?<br>*(Ơ, chủ trách lễ Ouhuusai ạ?)* |
| Sato | はい。<ruby>木下<rt>きのした</rt></ruby><ruby>様<rt>さま</rt></ruby>のおもてなしを<ruby>見<rt>み</rt></ruby>て、トランさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Vâng. Xem việc cô đón ông bà Kinoshita, tôi tin cô làm được.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>何名<rt>なんめい</rt></ruby><ruby>様<rt>さま</rt></ruby>でしょうか。<br>*(Con thật ngại ạ. Khách bao nhiêu vị ạ?)* |
| Sato | <ruby>東京<rt>とうきょう</rt></ruby>の<ruby>常連様<rt>じょうれんさま</rt></ruby><ruby>団体<rt>だんたい</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>。<ruby>15<rt>じゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>、<ruby>毎年<rt>まいとし</rt></ruby><ruby>夏<rt>なつ</rt></ruby>に<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来<rt>こ</rt></ruby>られているグループ<ruby>会社<rt>がいしゃ</rt></ruby>の<ruby>方々<rt>かたがた</rt></ruby>です。<br>*(Đoàn khách quen Tokyo, 10 vị. Một nhóm cùng công ty hơn 15 năm rồi, mỗi mùa hè đều đến cùng nhau.)* |
| Trang | <ruby>日程<rt>にってい</rt></ruby>は?<br>*(Lịch trình ạ?)* |
| Sato | <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>14<rt>じゅうよっ</rt></ruby><ruby>日<rt>か</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>泊<rt>はく</rt></ruby><ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>企画会議<rt>きかくかいぎ</rt></ruby>。トランさんから<ruby>案<rt>あん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してください。<br>*(12-14/7. 2 đêm 3 ngày. Thứ Ba tuần sau 9h họp lập kế hoạch. Cô hãy đưa ra phương án.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。お<ruby>客様<rt>きゃくさま</rt></ruby>ノートを<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>にも<ruby>相談<rt>そうだん</rt></ruby>させていただきます。<br>*(Con rõ ạ. Con sẽ kiểm sổ khách và bàn với chị Yumiko ạ.)* |
| Sato | <ruby>板長<rt>いたちょう</rt></ruby>にも、<ruby>受付<rt>うけつけ</rt></ruby>のソヨンさんにも<ruby>声<rt>こえ</rt></ruby>をかけてくださいね。<br>*(Hãy hỏi cả bếp trưởng lẫn Soyeon-san ở lễ tân nhé.)* |

---

## Tình huống 2 — 仲居控室 · 10:00, Trang bàn với Yumiko về phương án

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ご<ruby>相談<rt>そうだん</rt></ruby>させていただきたいことがございます。<br>*(Chị Yumiko, em xin được trao đổi một việc ạ.)* |
| Yumiko | <ruby>桜風祭<rt>おうふうさい</rt></ruby>ね?<ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>きました。<br>*(Ouhuusai à? Tôi nghe Okami rồi.)* |
| Trang | はい。<ruby>東京<rt>とうきょう</rt></ruby>のグループ、<ruby>毎年<rt>まいとし</rt></ruby>どんな<ruby>感<rt>かん</rt></ruby>じでお<ruby>迎<rt>むか</rt></ruby>えしてきましたか?<br>*(Vâng. Đoàn Tokyo, hằng năm đón thế nào ạ?)* |
| Yumiko | <ruby>15<rt>じゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>続<rt>つづ</rt></ruby>いているので、もう<ruby>家族<rt>かぞく</rt></ruby>のような<ruby>関係<rt>かんけい</rt></ruby>です。<ruby>毎年<rt>まいとし</rt></ruby><ruby>変<rt>か</rt></ruby>えない<ruby>三<rt>みっ</rt></ruby>つ:<ruby>夕食<rt>ゆうしょく</rt></ruby>後<ruby>の屋上<rt>のおくじょう</rt></ruby><ruby>納涼<rt>のうりょう</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>の<ruby>清水寺<rt>きよみずでら</rt></ruby>お<ruby>参<rt>まい</rt></ruby>り、<ruby>最終日<rt>さいしゅうび</rt></ruby>の<ruby>記念<rt>きねん</rt></ruby><ruby>写真<rt>しゃしん</rt></ruby>。<br>*(15 năm rồi nên gần như gia đình. Ba thứ không đổi: thưởng mát trên sân thượng sau ăn tối, sáng đi viếng đền Kiyomizu, ngày cuối chụp ảnh kỷ niệm.)* |
| Trang | <ruby>変<rt>か</rt></ruby>えない<ruby>三<rt>みっ</rt></ruby>つ、ということでよろしいでしょうか?<br>*(Ba thứ không đổi, đúng vậy ạ?)* |
| Yumiko | そう。それが<ruby>常連様<rt>じょうれんさま</rt></ruby>の<ruby>安心<rt>あんしん</rt></ruby>です。<ruby>変<rt>か</rt></ruby>える<ruby>余地<rt>よち</rt></ruby>は、<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>献立<rt>こんだて</rt></ruby>と<ruby>夜<rt>よる</rt></ruby>の<ruby>余興<rt>よきょう</rt></ruby>です。<br>*(Đúng. Đó là sự an tâm của khách quen. Chỗ đổi được: thực đơn tối và giải trí đêm.)* |
| Trang | <ruby>今年<rt>ことし</rt></ruby>はベトナム<ruby>料理<rt>りょうり</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>取<rt>と</rt></ruby>り<ruby>入<rt>い</rt></ruby>れるのはいかがでしょうか?<br>*(Năm nay đưa chút món Việt vào, thấy thế nào ạ?)* |
| Yumiko | <ruby>面白<rt>おもしろ</rt></ruby>いアイデア。でも<ruby>懐石<rt>かいせき</rt></ruby>の<ruby>枠<rt>わく</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>があるから、<ruby>板長<rt>いたちょう</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>しましょう。<br>*(Ý hay. Nhưng phải giữ khung kaiseki, nên trao đổi với bếp trưởng.)* |
| Trang | はい、ご<ruby>意見<rt>いけん</rt></ruby>ありがとうございます。<br>*(Vâng, em cảm ơn ý kiến của chị.)* |

---

## Tình huống 3 — 板場入口 · 11:00, Trang trao đổi với 板長 về ý tưởng món Việt

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>さん、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Thưa bếp trưởng, em xin lỗi đã làm phiền lúc bận.)* |
| Itachou | おう、トラン<ruby>嬢<rt>じょう</rt></ruby>。<ruby>桜風祭<rt>おうふうさい</rt></ruby>か。<br>*(À, cô Trang. Ouhuusai à.)* |
| Trang | はい。<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>献立<rt>こんだて</rt></ruby>でご<ruby>相談<rt>そうだん</rt></ruby>がございます。<ruby>提案<rt>ていあん</rt></ruby>がございます。<br>*(Vâng. Em có việc bàn về thực đơn tối ạ. Có một đề xuất ạ.)* |
| Itachou | <ruby>言<rt>い</rt></ruby>ってみな。<br>*(Cứ nói.)* |
| Trang | お<ruby>椀<rt>わん</rt></ruby>の<ruby>一品<rt>ひとしな</rt></ruby>に、<ruby>京野菜<rt>きょうやさい</rt></ruby>とベトナム<ruby>南部<rt>なんぶ</rt></ruby>の<ruby>香草<rt>こうそう</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせた<ruby>椀物<rt>わんもの</rt></ruby>を<ruby>加<rt>くわ</rt></ruby>えるのはいかがでしょうか?<ruby>東京<rt>とうきょう</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>に「<ruby>今年<rt>ことし</rt></ruby>だけの<ruby>一品<rt>ひとしな</rt></ruby>」をご<ruby>用意<rt>ようい</rt></ruby>できれば、と。<br>*(Trong canh, thêm một món canh hợp giữa rau Kyoto và rau thơm Nam Bộ Việt Nam, thấy thế nào ạ? Để có thể chuẩn bị "món chỉ năm nay" cho khách Tokyo.)* |
| Itachou | ほう、<ruby>香草<rt>こうそう</rt></ruby>はなんだい?<br>*(Hơ, rau thơm là gì?)* |
| Trang | <ruby>大葉<rt>おおば</rt></ruby>に<ruby>似<rt>に</rt></ruby>たベトナムシソと、<ruby>三<rt>み</rt></ruby>つ<ruby>葉<rt>ば</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>いラウラム、<ruby>香<rt>かお</rt></ruby>りはミントよりやさしいです。<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>のお<ruby>椀<rt>わん</rt></ruby>に<ruby>添<rt>そ</rt></ruby>えれば、<ruby>京都<rt>きょうと</rt></ruby>とベトナムの<ruby>融合<rt>ゆうごう</rt></ruby>のような<ruby>仕上<rt>しあ</rt></ruby>がりになると<ruby>思<rt>おも</rt></ruby>います。<br>*(Có "tía tô Việt" giống shiso Nhật, và "rau răm" gần với mitsuba, mùi nhẹ hơn bạc hà. Thêm vào canh yuba sẽ tạo cảm giác hoà quyện Kyoto - Việt Nam ạ.)* |
| Itachou | <ruby>面白<rt>おもしろ</rt></ruby>そうだな。<ruby>仕入<rt>しい</rt></ruby>れはどうする?<br>*(Nghe thú vị nhỉ. Nhập hàng thế nào?)* |
| Trang | <ruby>京都<rt>きょうと</rt></ruby><ruby>市内<rt>しない</rt></ruby>のベトナム<ruby>食材<rt>しょくざい</rt></ruby><ruby>店<rt>てん</rt></ruby>「<ruby>南風<rt>みなみかぜ</rt></ruby>」に<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>当日<rt>とうじつ</rt></ruby><ruby>朝<rt>あさ</rt></ruby>に<ruby>新鮮<rt>しんせん</rt></ruby>な<ruby>葉物<rt>はもの</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>できます。<br>*(Em đã xác nhận với tiệm thực phẩm Việt "Minamikaze" trong Kyoto. Họ chuẩn bị rau lá tươi sáng cùng ngày.)* |
| Itachou | <ruby>準備<rt>じゅんび</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>かりないな。<ruby>試作<rt>しさく</rt></ruby><ruby>一回<rt>いっかい</rt></ruby>やってみよう。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>板場<rt>いたば</rt></ruby>に<ruby>来<rt>き</rt></ruby>な。<br>*(Chuẩn bị kỹ rồi. Thử nấu một lần. Thứ Hai 15h tới bếp.)* |
| Trang | <ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>香草<rt>こうそう</rt></ruby>を<ruby>持参<rt>じさん</rt></ruby>いたします。<br>*(Em xin chân thành cảm ơn. Em sẽ mang rau thơm theo ạ.)* |

---

## Tình huống 4 — 仲居控室 · 14:00, Trang giao nhiệm vụ cho Lan

| Vai | Lời thoại |
|---|---|
| Trang | ランさん、ちょっといいですか?<br>*(Lan-san, có chút thời gian không?)* |
| Lan | はい、トランさん。<br>*(Vâng, chị Trang.)* |
| Trang | <ruby>桜風祭<rt>おうふうさい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>で、ランさんに<ruby>三<rt>みっ</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いできますか。<br>*(Chuẩn bị Ouhuusai, chị nhờ em 3 việc được không?)* |
| Lan | はい、<ruby>何<rt>なに</rt></ruby>でもやらせていただきます。<br>*(Vâng, gì em cũng làm ạ.)* |
| Trang | <ruby>一<rt>ひと</rt></ruby>つ、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>と<ruby>顔<rt>かお</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。<ruby>過去<rt>かこ</rt></ruby>の<ruby>記念<rt>きねん</rt></ruby><ruby>写真<rt>しゃしん</rt></ruby>をお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Một, hãy nhớ tên và mặt 10 vị khách. Chị sẽ đưa ảnh kỷ niệm cũ.)* |
| Lan | はい、<ruby>暗記<rt>あんき</rt></ruby>します。<br>*(Vâng, em học thuộc.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>屋上<rt>おくじょう</rt></ruby>の<ruby>納涼<rt>のうりょう</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>。<ruby>提灯<rt>ちょうちん</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>蚊取<rt>かと</rt></ruby>り<ruby>線香<rt>せんこう</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>団扇<rt>うちわ</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>本<rt>ぽん</rt></ruby>を<ruby>倉庫<rt>そうこ</rt></ruby>から<ruby>出<rt>だ</rt></ruby>して、<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Hai, chuẩn bị sân thượng để thưởng mát. Lấy 20 đèn lồng, 10 nhang muỗi, 20 quạt giấy từ kho, kiểm tình trạng.)* |
| Lan | <ruby>提灯<rt>ちょうちん</rt></ruby>に<ruby>破<rt>やぶ</rt></ruby>れがあったら<ruby>新<rt>あたら</rt></ruby>しいのに<ruby>替<rt>か</rt></ruby>えるんですか?<br>*(Đèn lồng rách thì thay mới ạ?)* |
| Trang | はい。<ruby>少<rt>すこ</rt></ruby>しでも<ruby>破<rt>やぶ</rt></ruby>れていたら<ruby>取<rt>と</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<ruby>新<rt>あたら</rt></ruby>しいのは<ruby>倉庫<rt>そうこ</rt></ruby><ruby>三段目<rt>さんだんめ</rt></ruby>にあります。<br>*(Vâng. Rách dù chút cũng thay. Cái mới ở tầng 3 trong kho.)* |
| Lan | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Cái thứ ba ạ?)* |
| Trang | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>清水寺<rt>きよみずでら</rt></ruby>へのバス<ruby>会社<rt>がいしゃ</rt></ruby>に<ruby>予約<rt>よやく</rt></ruby>の<ruby>電話<rt>でんわ</rt></ruby>。<ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>名様<rt>めいさま</rt></ruby><ruby>分<rt>ぶん</rt></ruby>。<ruby>電話<rt>でんわ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にしましょうか?<br>*(Ba, gọi công ty xe buýt đến Kiyomizu để đặt. 13/7 sáng 7:30, cho 10 vị. Luyện gọi cùng nhau nhé?)* |
| Lan | はい、お<ruby>願<rt>ねが</rt></ruby>いします!<ruby>電話<rt>でんわ</rt></ruby>、<ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Vâng, nhờ chị! Em sợ gọi điện ạ.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>練習<rt>れんしゅう</rt></ruby>すれば<ruby>怖<rt>こわ</rt></ruby>くなくなります。<br>*(Không sao, luyện sẽ hết sợ.)* |

---

## Tình huống 5 — 仲居控室 · 14:30, Trang luyện gọi điện cho Lan

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>電話<rt>でんわ</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>めは「お<ruby>世話<rt>せわ</rt></ruby>になっております、<ruby>桜風荘<rt>おうふうそう</rt></ruby>のランと<ruby>申<rt>もう</rt></ruby>します」。<br>*(Mở đầu gọi: "Cảm ơn quý anh chị, tôi là Lan ở Ouhuusou".)* |
| Lan | お<ruby>世話<rt>せわ</rt></ruby>になっております、<ruby>桜風荘<rt>おうふうそう</rt></ruby>のランと<ruby>申<rt>もう</rt></ruby>します。<br>*(Lặp lại.)* |
| Trang | <ruby>用件<rt>ようけん</rt></ruby>:「<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時半<rt>じはん</rt></ruby>、<ruby>清水寺<rt>きよみずでら</rt></ruby>までのご<ruby>送迎<rt>そうげい</rt></ruby>のご<ruby>予約<rt>よやく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいのですが」。<br>*(Yêu cầu: "13/7 sáng 7:30, tôi xin đặt xe đưa đón đến chùa Kiyomizu".)* |
| Lan | <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>...<ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>...<ruby>送迎<rt>そうげい</rt></ruby>のご<ruby>予約<rt>よやく</rt></ruby>...<br>*(13/7... sáng 7:30... đặt xe đưa đón...)* |
| Trang | <ruby>相手<rt>あいて</rt></ruby>が「<ruby>人数<rt>にんずう</rt></ruby>は?」と<ruby>聞<rt>き</rt></ruby>いてきたら?<br>*(Nếu họ hỏi "bao nhiêu người?".)* |
| Lan | <ruby>10<rt>じゅう</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(10 vị, xin nhờ.)* |
| Trang | <ruby>料金<rt>りょうきん</rt></ruby>は<ruby>聞<rt>き</rt></ruby>くこと:<ruby>料金<rt>りょうきん</rt></ruby>はおいくらでしょうか。<br>*(Phải hỏi giá: giá là bao nhiêu?)* |
| Lan | <ruby>料金<rt>りょうきん</rt></ruby>はおいくらでしょうか。<br>*(Lặp.)* |
| Trang | <ruby>最後<rt>さいご</rt></ruby>:<ruby>確認<rt>かくにん</rt></ruby><ruby>用<rt>よう</rt></ruby>のメールをお<ruby>送<rt>おく</rt></ruby>りいただけますでしょうか。それでは、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cuối: xin gửi mail xác nhận giúp. Vâng, nhờ quý anh chị.)* |
| Lan | <ruby>確認<rt>かくにん</rt></ruby><ruby>用<rt>よう</rt></ruby>のメールをお<ruby>送<rt>おく</rt></ruby>りいただけますでしょうか。<br>*(Lặp.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、メモを<ruby>見<rt>み</rt></ruby>ながらでいいです。<ruby>今<rt>いま</rt></ruby>かけてみよう。<ruby>私<rt>わたし</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>で<ruby>聞<rt>き</rt></ruby>いてるから。<br>*(Không sao, vừa nhìn ghi chú vừa nói được. Giờ gọi thử. Chị nghe bên cạnh.)* |

---

## Tình huống 6 — Trên bàn làm việc · 15:30, Trang viết メール 招待状 cho đoàn khách

*Lan ngồi cạnh quan sát Trang đánh máy bằng laptop của ryokan.*

| Vai | Lời thoại |
|---|---|
| Trang | (đọc nhẩm vừa gõ) <ruby>件名<rt>けんめい</rt></ruby>:「<ruby>桜風祭<rt>おうふうさい</rt></ruby>」のご<ruby>案内<rt>あんない</rt></ruby>。<br>*(Tiêu đề: Lời mời lễ Ouhuusai.)* |
| Trang | <ruby>本文<rt>ほんぶん</rt></ruby>:<ruby>山田<rt>やまだ</rt></ruby><ruby>商事<rt>しょうじ</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby><ruby>御中<rt>おんちゅう</rt></ruby>...<br>*(Nội dung: Kính gửi quý công ty Yamada Shouji...)* |
| Lan | 「<ruby>御中<rt>おんちゅう</rt></ruby>」とは?<br>*("Onchuu" là gì ạ?)* |
| Trang | <ruby>会社<rt>かいしゃ</rt></ruby>や<ruby>団体<rt>だんたい</rt></ruby>に<ruby>送<rt>おく</rt></ruby>る<ruby>時<rt>とき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う<ruby>敬称<rt>けいしょう</rt></ruby>。<ruby>個人<rt>こじん</rt></ruby>なら「<ruby>様<rt>さま</rt></ruby>」、<ruby>会社<rt>かいしゃ</rt></ruby>なら「<ruby>御中<rt>おんちゅう</rt></ruby>」。<br>*(Kính ngữ khi gửi cho công ty/đoàn thể. Cá nhân là "sama", công ty là "onchuu".)* |
| Lan | <ruby>個人<rt>こじん</rt></ruby>は<ruby>様<rt>さま</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>は<ruby>御中<rt>おんちゅう</rt></ruby>。メモ。<br>*(Cá nhân sama, công ty onchuu. Ghi.)* |
| Trang | (tiếp) <ruby>拝啓<rt>はいけい</rt></ruby> <ruby>盛夏<rt>せいか</rt></ruby>の<ruby>候<rt>こう</rt></ruby>、<ruby>益々<rt>ますます</rt></ruby>ご<ruby>清栄<rt>せいえい</rt></ruby>のこととお<ruby>慶<rt>よろこ</rt></ruby>び<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Kính khải. Mùa hè rực rỡ, kính chúc quý công ty thêm thịnh đạt.)* |
| Lan | <ruby>拝啓<rt>はいけい</rt></ruby>...<ruby>盛夏<rt>せいか</rt></ruby>の<ruby>候<rt>こう</rt></ruby>...?<br>*(Haikei... seika no kou...?)* |
| Trang | 「<ruby>拝啓<rt>はいけい</rt></ruby>」は<ruby>頭語<rt>とうご</rt></ruby>、<ruby>手紙<rt>てがみ</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>めの<ruby>挨拶<rt>あいさつ</rt></ruby>。「<ruby>盛夏<rt>せいか</rt></ruby>の<ruby>候<rt>こう</rt></ruby>」は<ruby>季節<rt>きせつ</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>用<rt>よう</rt></ruby>。<ruby>季語<rt>きご</rt></ruby>みたいなもの。<br>*("Haikei" là tougo, lời chào mở đầu thư. "Seika no kou" là chào theo mùa, dùng tháng 7. Như kigo.)* |
| Lan | <ruby>月<rt>つき</rt></ruby>ごとに<ruby>違<rt>ちが</rt></ruby>うんですか?<br>*(Mỗi tháng khác nhau ạ?)* |
| Trang | <ruby>毎月<rt>まいげつ</rt></ruby><ruby>違<rt>ちが</rt></ruby>うよ。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>は「<ruby>陽春<rt>ようしゅん</rt></ruby>の<ruby>候<rt>こう</rt></ruby>」、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>は「<ruby>新緑<rt>しんりょく</rt></ruby>の<ruby>候<rt>こう</rt></ruby>」。<ruby>表<rt>ひょう</rt></ruby>をあげるから<ruby>覚<rt>おぼ</rt></ruby>えて。<br>*(Mỗi tháng khác. Tháng 4 "yoshun no kou", tháng 5 "shinryoku no kou". Chị đưa bảng cho em học.)* |
| Trang | <ruby>結<rt>むす</rt></ruby>びは「<ruby>敬具<rt>けいぐ</rt></ruby>」。<br>*(Kết thúc là "keigu".)* |
| Lan | <ruby>拝啓<rt>はいけい</rt></ruby>と<ruby>敬具<rt>けいぐ</rt></ruby>はセットですね。<br>*(Haikei và keigu là cặp nhỉ.)* |
| Trang | そう。<ruby>必<rt>かなら</rt></ruby>ずセット。<br>*(Đúng. Bắt buộc cặp.)* |

---

## Tình huống 7 — Trên bàn · 16:30, Trang nhận xét lại bản kế hoạch

*Bảng kế hoạch A4 in ra giấy, Trang vừa đọc vừa khoanh đỏ.*

| Vai | Lời thoại |
|---|---|
| Trang | (đọc nhẩm) <ruby>初日<rt>しょにち</rt></ruby>:<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>、お<ruby>抹茶<rt>まっちゃ</rt></ruby>と<ruby>水無月<rt>みなづき</rt></ruby>、<ruby>18<rt>じゅうはち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>夕食<rt>ゆうしょく</rt></ruby>(ベトナム<ruby>香草<rt>こうそう</rt></ruby><ruby>椀<rt>わん</rt></ruby>あり)、<ruby>20<rt>にじゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>屋上<rt>おくじょう</rt></ruby><ruby>納涼<rt>のうりょう</rt></ruby>。<br>*(Ngày đầu: 14h khách đến, matcha + minazuki, 18h ăn tối (có canh rau thơm Việt), 20h thưởng mát sân thượng.)* |
| Trang | <ruby>二日目<rt>ふつかめ</rt></ruby>:<ruby>7<rt>しち</rt></ruby><ruby>時半<rt>じはん</rt></ruby><ruby>出発<rt>しゅっぱつ</rt></ruby><ruby>清水寺<rt>きよみずでら</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>戻<rt>もど</rt></ruby>り、<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>自由<rt>じゆう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>18<rt>じゅうはち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>夕食<rt>ゆうしょく</rt></ruby>。<br>*(Ngày 2: 7:30 đi Kiyomizu, 11h về, 14h tự do, 18h ăn tối.)* |
| Trang | <ruby>最終日<rt>さいしゅうび</rt></ruby>:<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>記念<rt>きねん</rt></ruby><ruby>写真<rt>しゃしん</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>チェックアウト、<ruby>11<rt>じゅういち</rt></ruby><ruby>時半<rt>じはん</rt></ruby>お<ruby>見送<rt>みおく</rt></ruby>り。<br>*(Ngày cuối: 10h chụp ảnh, 11h check-out, 11:30 tiễn.)* |
| Trang | (tự nhủ) <ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>18<rt>じゅうはち</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>、<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>空<rt>あ</rt></ruby>いている。お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>疲<rt>つか</rt></ruby>れていて<ruby>休<rt>やす</rt></ruby>みたいかもしれない、でも<ruby>何<rt>なに</rt></ruby>か<ruby>提案<rt>ていあん</rt></ruby>もあったほうがいいかも。<br>*(Từ 14h đến 18h trống 4 tiếng. Khách có thể mệt muốn nghỉ, nhưng cũng nên đề xuất gì đó.)* |
| Trang | (ghi) <ruby>提案<rt>ていあん</rt></ruby>:<ruby>希望者<rt>きぼうしゃ</rt></ruby>のみ<ruby>抹茶<rt>まっちゃ</rt></ruby>と<ruby>和菓子<rt>わがし</rt></ruby><ruby>作<rt>つく</rt></ruby>り<ruby>体験<rt>たいけん</rt></ruby>、<ruby>板長<rt>いたちょう</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>。<br>*(Đề xuất: ai muốn thì trải nghiệm làm matcha + wagashi, bàn với bếp trưởng.)* |

---

## Tình huống 8 — 会議室 · Tuesday 9:00, 企画会議 — Trang trình bày

*Phòng họp tatami với bàn dài kiểu Nhật thấp. Sato ngồi đầu bàn, Yumiko, Trang, Itachou, Soyeon ngồi hai bên. Mỗi người có 1 bộ tài liệu A4.*

| Vai | Lời thoại |
|---|---|
| Sato | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>桜風祭<rt>おうふうさい</rt></ruby><ruby>企画会議<rt>きかくかいぎ</rt></ruby>です。<ruby>主担当<rt>しゅたんとう</rt></ruby>のトランさんから<ruby>説明<rt>せつめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, hôm nay là họp lập kế hoạch Ouhuusai. Trang-san chủ trách trình bày nhé.)* |
| Trang | はい。お<ruby>手元<rt>てもと</rt></ruby>の<ruby>資料<rt>しりょう</rt></ruby>をご<ruby>覧<rt>らん</rt></ruby>ください。<br>*(Vâng. Xin quý vị xem tài liệu trong tay ạ.)* |
| Trang | <ruby>本年度<rt>ほんねんど</rt></ruby>の<ruby>桜風祭<rt>おうふうさい</rt></ruby>、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>12<rt>じゅうに</rt></ruby>-<ruby>14<rt>じゅうよっ</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>東京<rt>とうきょう</rt></ruby><ruby>山田<rt>やまだ</rt></ruby><ruby>商事<rt>しょうじ</rt></ruby><ruby>御一行<rt>ごいっこう</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>のご<ruby>予約<rt>よやく</rt></ruby>でございます。<br>*(Ouhuusai năm nay, 12-14/7, đoàn 10 vị Yamada Shouji Tokyo đặt phòng.)* |
| Trang | <ruby>例年<rt>れいねん</rt></ruby><ruby>通<rt>どお</rt></ruby>り<ruby>三<rt>みっ</rt></ruby>つ<ruby>守<rt>まも</rt></ruby>るもの:<ruby>屋上<rt>おくじょう</rt></ruby><ruby>納涼<rt>のうりょう</rt></ruby>、<ruby>清水寺<rt>きよみずでら</rt></ruby>お<ruby>参<rt>まい</rt></ruby>り、<ruby>最終日<rt>さいしゅうび</rt></ruby><ruby>記念<rt>きねん</rt></ruby><ruby>写真<rt>しゃしん</rt></ruby>。<br>*(Theo lệ giữ ba thứ: thưởng mát sân thượng, viếng Kiyomizu, chụp ảnh ngày cuối.)* |
| Trang | <ruby>本年度<rt>ほんねんど</rt></ruby>の<ruby>新<rt>しん</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>は<ruby>二<rt>ふた</rt></ruby>つでございます。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>椀物<rt>わんもの</rt></ruby>にベトナムの<ruby>香草<rt>こうそう</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>入<rt>い</rt></ruby>れた「<ruby>本年度<rt>ほんねんど</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>の<ruby>一品<rt>ひとしな</rt></ruby>」。<ruby>板長<rt>いたちょう</rt></ruby>とご<ruby>相談<rt>そうだん</rt></ruby>済<ruby>み<rt></rt></ruby>でございます。<br>*(Đề xuất mới năm nay có 2. Một, "món giới hạn năm nay" — thêm rau thơm Việt vào canh tối. Đã bàn với bếp trưởng ạ.)* |
| Itachou | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby><ruby>試作<rt>しさく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Thử nghiệm thứ Hai tới.)* |
| Trang | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>14<ruby>時<rt>じ</rt></ruby>から18<ruby>時<rt>じ</rt></ruby>の<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>希望者<rt>きぼうしゃ</rt></ruby>のみで<ruby>抹茶<rt>まっちゃ</rt></ruby>と<ruby>和菓子<rt>わがし</rt></ruby><ruby>作<rt>づく</rt></ruby>り<ruby>体験<rt>たいけん</rt></ruby>。<ruby>板長<rt>いたちょう</rt></ruby>から<ruby>講師<rt>こうし</rt></ruby>をしていただければと<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Hai, 4 tiếng 14h-18h ngày đầu, người muốn tham gia thì trải nghiệm matcha + wagashi. Mong bếp trưởng làm giảng viên ạ.)* |
| Itachou | おう、いいよ。<ruby>水無月<rt>みなづき</rt></ruby><ruby>作<rt>つく</rt></ruby>ろう。<br>*(Ừ, được. Làm minazuki nhỉ.)* |
| Sato | <ruby>希望者<rt>きぼうしゃ</rt></ruby>のみ、というのが<ruby>良<rt>よ</rt></ruby>いですね。<ruby>休<rt>やす</rt></ruby>みたい<ruby>方<rt>かた</rt></ruby>にも<ruby>配慮<rt>はいりょ</rt></ruby>がある。<br>*(Chỉ ai muốn, hay đấy. Có lưu ý cho ai muốn nghỉ.)* |
| Yumiko | <ruby>一<rt>ひと</rt></ruby>つ<ruby>気<rt>き</rt></ruby>になる<ruby>点<rt>てん</rt></ruby>がございます。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>香草<rt>こうそう</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>な<ruby>方<rt>かた</rt></ruby>がいらっしゃるかもしれません。<br>*(Có một điểm lo. Trong khách có thể có người không hợp rau thơm.)* |
| Trang | ご<ruby>指摘<rt>してき</rt></ruby>の<ruby>通<rt>とお</rt></ruby>りでございます。<ruby>事前<rt>じぜん</rt></ruby>のお<ruby>食事<rt>しょくじ</rt></ruby>アレルギー<ruby>確認<rt>かくにん</rt></ruby>メールで、<ruby>香草<rt>こうそう</rt></ruby>の<ruby>可否<rt>かひ</rt></ruby>もお<ruby>伺<rt>うかが</rt></ruby>いいたします。<ruby>代替<rt>だいたい</rt></ruby><ruby>案<rt>あん</rt></ruby>として<ruby>通常<rt>つうじょう</rt></ruby>の<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby><ruby>椀<rt>わん</rt></ruby>もご<ruby>用意<rt>ようい</rt></ruby>いたします。<br>*(Đúng như chị chỉ ra ạ. Trong mail xác nhận dị ứng thức ăn, con sẽ hỏi cả về rau thơm. Phương án thay thế chuẩn bị canh yuba thường ạ.)* |
| Sato | よく<ruby>考<rt>かんが</rt></ruby>えてあります。<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Suy nghĩ kỹ đấy. Triển khai đi.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。ご<ruby>意見<rt>いけん</rt></ruby>ありがとうございました。<br>*(Con rõ ạ. Cảm ơn ý kiến của quý vị.)* |

---

## Tình huống 9 — 板場 試作場 · Monday 15:00, thử nấu món canh Việt-Nhật

*Trang mang theo túi rau thơm Việt mua sáng nay. Itachou đặt nồi dashi sôi nhẹ trên bếp.*

| Vai | Lời thoại |
|---|---|
| Itachou | (ngửi rau) ほう、<ruby>大葉<rt>おおば</rt></ruby>に<ruby>似<rt>に</rt></ruby>た<ruby>香<rt>かお</rt></ruby>りだな。<br>*(Hơ, mùi giống shiso nhỉ.)* |
| Trang | これがベトナムシソ、これがラウラム、こちらがミントです。<br>*(Đây là tía tô Việt, đây rau răm, đây bạc hà.)* |
| Itachou | <ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>のお<ruby>椀<rt>わん</rt></ruby>にどれを<ruby>合<rt>あ</rt></ruby>わせる?<br>*(Cho cái nào vào canh yuba?)* |
| Trang | ベトナムシソが<ruby>一番<rt>いちばん</rt></ruby><ruby>合<rt>あ</rt></ruby>うと<ruby>思<rt>おも</rt></ruby>います。<ruby>香<rt>かお</rt></ruby>りが<ruby>強<rt>つよ</rt></ruby>すぎず、<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>を<ruby>消<rt>け</rt></ruby>さないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ tía tô Việt hợp nhất. Mùi không quá nồng, không lấn vị yuba.)* |
| Itachou | (nấu thử, nếm) ...うん、いい。だがな、<ruby>葉<rt>は</rt></ruby>っぱをそのまま<ruby>入<rt>い</rt></ruby>れるんじゃなくて、<ruby>細<rt>こま</rt></ruby>かく<ruby>刻<rt>きざ</rt></ruby>んで<ruby>最後<rt>さいご</rt></ruby>に<ruby>散<rt>ち</rt></ruby>らすほうが<ruby>京懐石<rt>きょうかいせき</rt></ruby><ruby>風<rt>ふう</rt></ruby>だ。<br>*(Ừ, hay. Mà này, không cho cả lá, mà thái nhỏ rắc lên cuối thì kiểu kaiseki Kyoto hơn.)* |
| Trang | <ruby>細<rt>こま</rt></ruby>かく<ruby>刻<rt>きざ</rt></ruby>んで<ruby>最後<rt>さいご</rt></ruby>に、ということでよろしいでしょうか?<br>*(Thái nhỏ và cuối, đúng vậy ạ?)* |
| Itachou | そう。<ruby>飾<rt>かざ</rt></ruby>りとして<ruby>美<rt>うつく</rt></ruby>しさも<ruby>出<rt>で</rt></ruby>る。<ruby>湯葉<rt>ゆば</rt></ruby>の<ruby>白<rt>しろ</rt></ruby>、<ruby>椎茸<rt>しいたけ</rt></ruby>の<ruby>茶<rt>ちゃ</rt></ruby>、シソの<ruby>緑<rt>みどり</rt></ruby>。<ruby>三<rt>さん</rt></ruby><ruby>色<rt>しょく</rt></ruby><ruby>揃<rt>そろ</rt></ruby>うな。<br>*(Đúng. Cũng đẹp như trang trí. Yuba trắng, nấm shiitake nâu, shiso xanh. Đủ 3 màu.)* |
| Trang | (nếm thử) ...<ruby>美味<rt>おい</rt></ruby>しいです。<ruby>京都<rt>きょうと</rt></ruby>とベトナム、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>融合<rt>ゆうごう</rt></ruby>しています。<br>*(Ngon ạ. Kyoto và Việt Nam hoà quyện thật.)* |
| Itachou | <ruby>名前<rt>なまえ</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けような。<br>*(Đặt tên cho món nhỉ.)* |
| Trang | え、<ruby>名前<rt>なまえ</rt></ruby>...?<br>*(Ơ, tên...?)* |
| Itachou | 「<ruby>京越<rt>けいえつ</rt></ruby><ruby>椀<rt>わん</rt></ruby>」はどうだ?<ruby>京<rt>きょう</rt></ruby>と<ruby>越<rt>えつ</rt></ruby>(ベトナム)で<ruby>京越<rt>けいえつ</rt></ruby>。<br>*("Keietsu-wan" thế nào? Kyou (Kyoto) + Etsu (Việt Nam) = Keietsu.)* |
| Trang | <ruby>京越<rt>けいえつ</rt></ruby><ruby>椀<rt>わん</rt></ruby>...<ruby>素敵<rt>すてき</rt></ruby>な<ruby>名前<rt>なまえ</rt></ruby>です。<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Keietsu-wan... tên đẹp ạ. Em xin chân thành cảm ơn ạ.)* |

---

## Tình huống 10 — 女将室 · Wednesday 11:00, Trang báo cáo tiến độ

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>桜風祭<rt>おうふうさい</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Thưa Okami, con xin báo cáo tiến độ Ouhuusai ạ.)* |
| Sato | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời cô.)* |
| Trang | <ruby>第一<rt>だいいち</rt></ruby>、<ruby>板長<rt>いたちょう</rt></ruby>との<ruby>試作<rt>しさく</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>新<rt>あたら</rt></ruby>しい<ruby>椀物<rt>わんもの</rt></ruby>「<ruby>京越<rt>けいえつ</rt></ruby><ruby>椀<rt>わん</rt></ruby>」と<ruby>命名<rt>めいめい</rt></ruby>。<br>*(Một, thử nghiệm với bếp trưởng hoàn tất. Canh mới đặt tên "Keietsu-wan".)* |
| Sato | あら、いいお<ruby>名前<rt>なまえ</rt></ruby>。<br>*(Ơ, tên hay nhỉ.)* |
| Trang | <ruby>第二<rt>だいに</rt></ruby>、<ruby>招待状<rt>しょうたいじょう</rt></ruby>メール<ruby>送信済<rt>そうしんず</rt></ruby>み、お<ruby>食事<rt>しょくじ</rt></ruby>アレルギーと<ruby>香草<rt>こうそう</rt></ruby><ruby>可否<rt>かひ</rt></ruby>もお<ruby>伺<rt>うかが</rt></ruby>い<ruby>済<rt>ず</rt></ruby>みです。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>朝<rt>あさ</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>名様<rt>めいさま</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby><ruby>香草<rt>こうそう</rt></ruby>OKとのお<ruby>返事<rt>へんじ</rt></ruby>いただきました。<br>*(Hai, mail mời đã gửi, đã hỏi dị ứng và rau thơm. Sáng nay đã nhận trả lời 10 vị đều OK rau thơm.)* |
| Sato | <ruby>素晴<rt>すば</rt></ruby>らしい。<br>*(Tuyệt.)* |
| Trang | <ruby>第三<rt>だいさん</rt></ruby>、<ruby>清水寺<rt>きよみずでら</rt></ruby>バスは<ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時半<rt>じはん</rt></ruby><ruby>予約<rt>よやく</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>。ランさんが<ruby>電話<rt>でんわ</rt></ruby>をかけました。<br>*(Ba, xe đến Kiyomizu sáng 13/7 7:30 đã xác nhận. Lan-san là người gọi.)* |
| Sato | あら、ランさんも<ruby>頑張<rt>がんば</rt></ruby>っていますね。<br>*(Ơ, Lan-san cũng cố gắng nhỉ.)* |
| Trang | はい。<ruby>第四<rt>だいよん</rt></ruby>、<ruby>屋上<rt>おくじょう</rt></ruby><ruby>備品<rt>びひん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>。<ruby>提灯<rt>ちょうちん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>替<rt>か</rt></ruby>えました。<br>*(Vâng. Bốn, vật dụng sân thượng đã kiểm. Đèn lồng thay 2 cái.)* |
| Trang | <ruby>残<rt>のこ</rt></ruby>る<ruby>課題<rt>かだい</rt></ruby>は<ruby>抹茶<rt>まっちゃ</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>の<ruby>会場<rt>かいじょう</rt></ruby>セッティングと、<ruby>余興<rt>よきょう</rt></ruby>の<ruby>三味線<rt>しゃみせん</rt></ruby><ruby>演奏者<rt>えんそうしゃ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>でございます。<br>*(Còn lại: thiết lập phòng trải nghiệm matcha và xác nhận nhạc công shamisen.)* |
| Sato | <ruby>三味線<rt>しゃみせん</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>私<rt>わたし</rt></ruby>から<ruby>電話<rt>でんわ</rt></ruby>します。<br>*(Shamisen tôi gọi cô Kimura hằng năm.)* |
| Trang | お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Nhờ bà ạ.)* |
| Sato | トランさん、よくここまで<ruby>進<rt>すす</rt></ruby>めましたね。<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>主担当<rt>しゅたんとう</rt></ruby>です。<br>*(Trang-san, làm được đến mức này. Chủ trách xuất sắc.)* |
| Trang | <ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>板長<rt>いたちょう</rt></ruby>、ランさん、みんなのおかげでございます。<br>*(Nhờ chị Yumiko, bếp trưởng, Lan-san và mọi người ạ.)* |

---

## Tình huống 11 — 玄関 · 7/12 14:00, đón đoàn 山田商事 đến

*Ngày Chủ Nhật. Xe coach 10 chỗ trắng đậu trước. Tổ nakai gồm Sato, Yumiko, Trang, Lan, Soyeon đứng cúi 45°. Trang đứng đầu phía Yumiko.*

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>山田<rt>やまだ</rt></ruby><ruby>商事<rt>しょうじ</rt></ruby><ruby>御一行<rt>ごいっこう</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本年<rt>ほんねん</rt></ruby>もお<ruby>越<rt>こ</rt></ruby>しくださいまして、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Thưa đoàn Yamada Shouji, năm nay quý vị cũng đến, chúng tôi xin chân thành cảm ơn ạ.)* |
| Khách (chủ tịch) | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>毎年<rt>まいとし</rt></ruby>ありがとう。<br>*(Bà Okami, hằng năm cảm ơn.)* |
| Sato | <ruby>本年度<rt>ほんねんど</rt></ruby>の<ruby>桜風祭<rt>おうふうさい</rt></ruby>、<ruby>主担当<rt>しゅたんとう</rt></ruby>は<ruby>仲居<rt>なかい</rt></ruby><ruby>二年目<rt>にねんめ</rt></ruby>のトランがお<ruby>世話<rt>せわ</rt></ruby>させていただきます。<br>*(Ouhuusai năm nay, Trang — nakai năm 2 — sẽ là chủ trách phục vụ quý vị ạ.)* |
| Trang | (cúi 45°) <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>間<rt>かん</rt></ruby>、<ruby>主担当<rt>しゅたんとう</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めさせていただきます、トランと<ruby>申<rt>もう</rt></ruby>します。<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ hôm nay 3 ngày, con xin được làm chủ trách, con là Trang. Kính xin được chỉ giáo ạ.)* |
| Khách (chủ tịch) | あ、ベトナムの<ruby>方<rt>かた</rt></ruby>ですね?<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>お<ruby>上手<rt>じょうず</rt></ruby>です。<br>*(À, người Việt à? Tiếng Nhật giỏi quá.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>夕食<rt>ゆうしょく</rt></ruby>に、<ruby>板長<rt>いたちょう</rt></ruby>とベトナムの<ruby>香草<rt>こうそう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>った<ruby>本年度<rt>ほんねんど</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>の「<ruby>京越<rt>けいえつ</rt></ruby><ruby>椀<rt>わん</rt></ruby>」をご<ruby>用意<rt>ようい</rt></ruby>いたしました。<br>*(Con không dám. Bữa tối hôm nay, bếp trưởng và con đã chuẩn bị "Keietsu-wan" — món giới hạn năm nay dùng rau thơm Việt Nam ạ.)* |
| Khách (chủ tịch) | おお、それは<ruby>楽<rt>たの</rt></ruby>しみだ!<ruby>京<rt>きょう</rt></ruby>とベト、<ruby>京越<rt>けいえつ</rt></ruby>、いい<ruby>名前<rt>なまえ</rt></ruby>だ。<br>*(Ô, vậy thì mong chờ! Kyou và Việt, Keietsu, tên hay.)* |
| Khách (phu nhân chủ tịch) | <ruby>毎年<rt>まいとし</rt></ruby>の<ruby>同<rt>おな</rt></ruby>じ<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>?<br>*(Vẫn phòng Sakura mọi năm chứ?)* |
| Trang | はい、<ruby>毎年<rt>まいとし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じお<ruby>部屋<rt>へや</rt></ruby>でございます。お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけくださいませ。<br>*(Vâng, vẫn cùng phòng như hằng năm ạ. Xin quý vị cẩn thận chân ạ.)* |

---

## Tình huống 12 — 屋上 納涼会場 · 20:30, đêm thưởng mát sân thượng

*Sân thượng ryokan. 20 đèn lồng đỏ treo dọc lan can. Sàn trải tatami, bàn thấp, ấm trà lạnh. Tiếng shamisen từ cô Kimura. Khách ngồi rải rác. Trang đi quanh rót bia mát.*

| Vai | Lời thoại |
|---|---|
| Khách (chủ tịch) | トランさん、<ruby>京越<rt>けいえつ</rt></ruby><ruby>椀<rt>わん</rt></ruby>、<ruby>素晴<rt>すば</rt></ruby>らしかったよ。<ruby>湯<rt>ゆ</rt></ruby><ruby>葉<rt>ば</rt></ruby>とシソの<ruby>緑<rt>みどり</rt></ruby>、<ruby>絶妙<rt>ぜつみょう</rt></ruby>な<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせだった。<br>*(Trang-san, Keietsu-wan tuyệt vời. Yuba và xanh shiso, kết hợp tinh tế.)* |
| Trang | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>板長<rt>いたちょう</rt></ruby>の<ruby>手腕<rt>しゅわん</rt></ruby>でございます。<br>*(Con không dám. Là tay nghề của bếp trưởng ạ.)* |
| Khách (phu nhân) | あなたが<ruby>提案<rt>ていあん</rt></ruby>したと<ruby>聞<rt>き</rt></ruby>いたわ。<ruby>嬉<rt>うれ</rt></ruby>しい<ruby>気持<rt>きも</rt></ruby>ち。ベトナムから<ruby>遠<rt>とお</rt></ruby>く<ruby>離<rt>はな</rt></ruby>れて<ruby>暮<rt>く</rt></ruby>らしているのに、<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>香<rt>かお</rt></ruby>りを<ruby>京都<rt>きょうと</rt></ruby>のお<ruby>椀<rt>わん</rt></ruby>に<ruby>入<rt>い</rt></ruby>れるなんて、<ruby>素敵<rt>すてき</rt></ruby>。<br>*(Tôi nghe nói cô đề xuất. Cảm động ghê. Xa Việt Nam vậy mà đưa hương vị quê hương vào canh Kyoto, đẹp.)* |
| Trang | <ruby>過分<rt>かぶん</rt></ruby>のお<ruby>言葉<rt>ことば</rt></ruby>、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Lời khen quá mức của quý bà, con xin chân thành cảm ơn ạ.)* |
| Khách (anh trẻ trong đoàn) | <ruby>三味線<rt>しゃみせん</rt></ruby>の<ruby>音<rt>おと</rt></ruby>と<ruby>提灯<rt>ちょうちん</rt></ruby>、<ruby>映画<rt>えいが</rt></ruby>みたいですね。<br>*(Tiếng shamisen với đèn lồng, như phim nhỉ.)* |
| Trang | <ruby>木村<rt>きむら</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby>桜風祭で<ruby>演奏<rt>えんそう</rt></ruby>くださっております。<br>*(Cô Kimura mỗi năm đều biểu diễn ở Ouhuusai ạ.)* |
| Khách (chủ tịch) | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>必<rt>かなら</rt></ruby>ず<ruby>来<rt>く</rt></ruby>るからね。<br>*(Năm sau nhất định đến nhé.)* |
| Trang | お<ruby>待<rt>ま</rt></ruby>ち<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げております。ごゆっくりお<ruby>過<rt>す</rt></ruby>ごしくださいませ。<br>*(Chúng con kính chờ. Xin quý vị thưởng thức ạ.)* |

---

## Tình huống 13 — 仲居控室 · 7/14 12:30, sau khi đoàn về, Sato khen Trang

*Đoàn vừa lên xe đi. Sato, Yumiko, Itachou, Soyeon, Trang, Lan ngồi quanh bàn uống trà.*

| Vai | Lời thoại |
|---|---|
| Sato | みなさん、<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>桜風祭<rt>おうふうさい</rt></ruby>、<ruby>大成功<rt>だいせいこう</rt></ruby>でしたね。<br>*(Mọi người, 3 ngày vất vả rồi. Ouhuusai thành công lớn.)* |
| Itachou | <ruby>京越<rt>けいえつ</rt></ruby><ruby>椀<rt>わん</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>「もう<ruby>一杯<rt>いっぱい</rt></ruby>」だってよ。<br>*(Keietsu-wan, khách 10 người đều bảo "thêm một bát".)* |
| Yumiko | トランさん、<ruby>主担当<rt>しゅたんとう</rt></ruby><ruby>初<rt>はじ</rt></ruby>めてとは<ruby>思<rt>おも</rt></ruby>えない<ruby>仕事<rt>しごと</rt></ruby>ぶりでした。<br>*(Trang-san, không nghĩ là lần đầu làm chủ trách.)* |
| Soyeon | お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えていたランさんもすごい!<br>*(Lan-san nhớ tên cả 10 người cũng giỏi!)* |
| Lan | トランさんの<ruby>過去<rt>かこ</rt></ruby>の<ruby>写真<rt>しゃしん</rt></ruby>のおかげです。<br>*(Nhờ ảnh cũ của chị Trang.)* |
| Trang | <ruby>皆様<rt>みなさま</rt></ruby>のおかげでございます。<ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>由美子<rt>ゆみこ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>板長<rt>いたちょう</rt></ruby>、ソヨンさん、ランさん、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Nhờ tất cả mọi người ạ. Thưa Okami, chị Yumiko, bếp trưởng, Soyeon-san, Lan-san, con xin chân thành cảm ơn ạ.)* |
| Sato | トランさん、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>桜風祭<rt>おうふうさい</rt></ruby>も<ruby>主担当<rt>しゅたんとう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>京越<rt>けいえつ</rt></ruby><ruby>椀<rt>わん</rt></ruby>は<ruby>本年度<rt>ほんねんど</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>でしたが、<ruby>来年<rt>らいねん</rt></ruby>もまた<ruby>違<rt>ちが</rt></ruby>うベトナムとの<ruby>融合<rt>ゆうごう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えてみてください。<br>*(Trang-san, Ouhuusai sang năm cũng nhờ cô làm chủ trách. Keietsu-wan giới hạn năm nay, sang năm hãy nghĩ hoà quyện Việt - Nhật kiểu khác.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>でございます。<br>*(Con rõ ạ. Là vinh dự ngoài sức của con ạ.)* |

---

## Tình huống 14 — Phòng Trang · 22:00, gọi Zalo về Huế kể chuyện 桜風祭

> Cảnh tiếng Việt — Trang gọi cho ba mẹ về chuyện 3 ngày 桜風祭, đưa ôn từ JP.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Ba mẹ ơi, con vừa xong lễ Sakura — *Ouhuusai* — 桜風祭 — 3 ngày 2 đêm. Con là *shutantou* — 主担当, chủ trách. |
| Ba Trang | (tiếng Việt) Con phụ trách lễ luôn hả? Thành công không? |
| Trang | (tiếng Việt) Dạ thành công lắm ba. Đoàn 10 người ở Tokyo, ông chủ tịch công ty Yamada Shouji đến 16 năm rồi. Mỗi mùa hè cả đoàn đi cùng nhau. Bà Okami giao con lập kế hoạch, làm việc với bếp trưởng (*itachou* — 板長), chị Yumiko sempai, chị Soyeon lễ tân, và em Lan kohai. |
| Mẹ Trang | (tiếng Việt) Sao con dám gánh được vậy? |
| Trang | (tiếng Việt) Con cũng run mẹ. Mà bí quyết là con phải ngồi xuống đọc *otoyakusama nooto* — sổ khách quen — kế thừa từ chị Yumiko. Biết được ai ăn gì, uống gì, kỵ gì. Rồi họp *kikaku kaigi* — 企画会議 — họp lập kế hoạch, con đưa ra 2 đề xuất mới: một là món "Keietsu-wan" — 京越椀 trộn rau thơm Việt với canh yuba kiểu kaiseki Kyoto. Hai là trải nghiệm làm matcha + wagashi cho khách nào muốn. |
| Ba Trang | (tiếng Việt) Hay quá con. Bếp trưởng đồng ý? |
| Trang | (tiếng Việt) Dạ, ông Itachou đồng ý còn đặt luôn tên "Keietsu" — chữ "Kyou" của Kyoto ghép với "Etsu" của Việt. Khách ăn xong khen quá trời, ai cũng xin thêm một bát. Bà Okami nói "sang năm cũng giao con". |
| Mẹ Trang | (tiếng Việt) Con à, mẹ tự hào quá. |
| Trang | (tiếng Việt) Dạ. Mà mẹ ơi, lần đầu con viết mail mời chính thức cho công ty. Bên này có khái niệm "*onchuu*" — 御中, kính ngữ cho công ty (cá nhân thì "sama"). Mở thư phải "*haikei*" — 拝啓, kèm chào theo mùa, tháng 7 là "*seika no kou*" — 盛夏の候. Kết thúc "*keigu*" — 敬具. Cặp đôi luôn. |
| Ba Trang | (tiếng Việt) Văn hoá thư từ Nhật chuẩn nhỉ. |
| Trang | (tiếng Việt) Dạ. Mà con còn dạy em Lan gọi điện đặt xe đi chùa Kiyomizu. Em ấy sợ gọi điện, con phải luyện cùng mấy lần. Cuối cùng em gọi được. Bà Okami cũng khen em Lan tiến bộ. |
| Mẹ Trang | (tiếng Việt) Con à, một năm thôi mà con lớn ghê. |
| Trang | (tiếng Việt) Dạ. Bà Okami nói câu này con khắc cốt: "Omotenashi là không có mặt trái". Con thấy mình hiểu thật rồi mẹ. Thôi con tắm rồi đi ngủ. |

---

## Đọng lại chương 4

3 ngày 桜風祭 đoàn 山田商事, Trang lần đầu được 女将 giao toàn quyền chủ trách một sự kiện. Học bộ mẫu câu kính ngữ cấp 企画担当 仲居: **trong họp** (発言してもよろしいでしょうか・提案がございます・お手元の資料をご覧ください), **phản hồi cấp trên** (ご指摘の通りでございます・検討させていただきます), **báo cáo tiến độ** (現在の進捗をご報告いたします・第一に〜・第二に〜), **mail công ty** (御中・拝啓・盛夏の候・敬具), **đón đoàn** (本年もお越しくださいまして誠にありがとうございます), **tiếp khách buổi tối** (過分のお言葉・恐れ入ります), **cảm ơn cả ekíp** (皆様のおかげでございます・身に余る光栄でございます). Kỹ năng dự án: phân biệt "**không đổi vs đổi được**" với khách quen (3 thứ giữ + 2 đề xuất mới), **lập budget thời gian** (4 giờ trống → đề xuất trải nghiệm voluntary), **lập phương án thay thế** (rau thơm Việt → ai dị ứng vẫn có yuba thường). Phân công kohai 3 việc cụ thể, **luyện điện thoại** trước khi giao. Sáng tạo món "**京越椀 (Keietsu-wan)**" cùng 板長 — kết tinh nhỏ của hoà quyện văn hoá Nhật-Việt.

> Từ vựng & mẫu câu chương này: 桜風祭・主担当・企画会議・常連様団体・御一行様・三つ守る・新提案・献立・椀物・京越椀・京懐石・希望者のみ・体験・抹茶・水無月・納涼・清水寺・記念写真・招待状・御中・拝啓・盛夏の候・敬具・提灯・蚊取り線香・団扇・送迎・予約・進捗・第一に〜第二に〜・お手元の資料をご覧ください・発言してもよろしいでしょうか・ご指摘の通りでございます・検討させていただきます・現在の進捗をご報告いたします・身に余る光栄でございます

## Bí quyết chương

- Với khách quen lâu năm: chia rõ "**3 thứ KHÔNG đổi**" (truyền thống, an tâm) và "**1-2 đề xuất MỚI**" (làm khách thấy được trân trọng). Tuyệt đối không đổi quá nhiều, cũng không lặp y nguyên.
- Họp 企画 chuẩn Nhật: phát biểu sau khi xin phép 「<ruby>発言<rt>はつげん</rt></ruby>してもよろしいでしょうか」, trình bày theo cấu trúc 「<ruby>第一<rt>だいいち</rt></ruby>に〜・<ruby>第二<rt>だいに</rt></ruby>に〜・<ruby>第三<rt>だいさん</rt></ruby>に〜」, dùng 「お<ruby>手元<rt>てもと</rt></ruby>の<ruby>資料<rt>しりょう</rt></ruby>をご<ruby>覧<rt>らん</rt></ruby>ください」.
- Mail công ty Nhật chuẩn: cặp **拝啓 + 敬具** (đầu - cuối), chào mùa **盛夏の候** (7月), **御中** cho công ty / **様** cho cá nhân, mỗi đoạn xuống dòng.
- Khi cấp trên (Yumiko) chỉ ra rủi ro, đáp 「ご<ruby>指摘<rt>してき</rt></ruby>の<ruby>通<rt>とお</rt></ruby>りでございます」 + đưa **代替案** (phương án dự phòng).
- Phân công kohai: chia 3 việc cụ thể (không 1 mạch lớn), bao gồm 1 việc kohai sợ → **luyện trước** với sempai.
- Sáng tạo có "khung": món mới phải nằm trong khung **kaiseki** (cấu trúc cố định 椀物・刺身・煮物...), thêm chứ không phá khung.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 桜風祭 | おうふうさい | ANH PHONG TẾ | Lễ Ouhuusai (lễ mùa hè ryokan) |
| 主担当 | しゅたんとう | CHỦ ĐẢM ĐƯƠNG | Chủ trách (sự kiện) |
| 企画 | きかく | XÍ HOẠCH | Lập kế hoạch, dự án |
| 企画会議 | きかくかいぎ | XÍ HOẠCH HỘI NGHỊ | Họp lập kế hoạch |
| 御一行 | ごいっこう | NGỰ NHẤT HÀNH | Đoàn (kính ngữ) |
| 常連様 | じょうれんさま | THƯỜNG LIÊN DẠNG | Khách quen |
| 団体 | だんたい | ĐOÀN THỂ | Đoàn thể, nhóm |
| 日程 | にってい | NHẬT TRÌNH | Lịch trình |
| 例年通り | れいねんどおり | LỆ NIÊN THÔNG — | Theo lệ hằng năm |
| 余地 | よち | DƯ ĐỊA | Khoảng trống, dư địa |
| 献立 | こんだて | HIẾN LẬP | Thực đơn |
| 余興 | よきょう | DƯ HƯNG | Tiết mục giải trí |
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 限定 | げんてい | HẠN ĐỊNH | Giới hạn |
| 一品 | ひとしな | NHẤT PHẨM | Một món |
| 椀物 | わんもの | UYỂN VẬT | Món canh trong bộ kaiseki |
| 椀 | わん | UYỂN | Bát canh |
| 京野菜 | きょうやさい | KINH DÃ THÁI | Rau Kyoto truyền thống |
| 香草 | こうそう | HƯƠNG THẢO | Rau thơm |
| 仕入れ | しいれ | SĨ NHẬP | Nhập hàng (nguyên liệu) |
| 試作 | しさく | THỬ TÁC | Nấu/làm thử (món mới) |
| 命名 | めいめい | MỆNH DANH | Đặt tên |
| 京越椀 | けいえつわん | KINH VIỆT UYỂN | Tên món canh Kyoto - Việt |
| 大葉 | おおば | ĐẠI DIỆP | Lá shiso Nhật |
| 三つ葉 | みつば | TAM DIỆP | Rau mitsuba |
| 椎茸 | しいたけ | TỬU NHĨ | Nấm shiitake |
| 提灯 | ちょうちん | ĐỀ ĐĂNG | Đèn lồng |
| 蚊取り線香 | かとりせんこう | VĂN THỦ TUYẾN HƯƠNG | Nhang muỗi |
| 団扇 | うちわ | ĐOÀN PHIẾN | Quạt giấy hình tròn |
| 倉庫 | そうこ | THƯƠNG KHỐ | Kho |
| 納涼 | のうりょう | NẠP LƯƠNG | Hóng mát (mùa hè) |
| 屋上 | おくじょう | ỐC THƯỢNG | Sân thượng |
| 三味線 | しゃみせん | TAM VỊ TUYẾN | Đàn shamisen |
| 演奏 | えんそう | DIỄN TẤU | Biểu diễn (nhạc) |
| 清水寺 | きよみずでら | THANH THUỶ TỰ | Chùa Kiyomizu |
| 送迎 | そうげい | TỐNG NGHINH | Đưa đón |
| 招待状 | しょうたいじょう | CHIÊU ĐÃI TRẠNG | Thiếp mời, mail mời |
| 件名 | けんめい | KIỆN DANH | Tiêu đề (mail) |
| 御中 | おんちゅう | NGỰ TRUNG | Kính gửi (cho công ty/đoàn) |
| 拝啓 | はいけい | BÁI KHẢI | Mở đầu thư trang trọng |
| 敬具 | けいぐ | KÍNH CỤ | Kết thúc thư trang trọng |
| 盛夏の候 | せいかのこう | THỊNH HẠ — HẬU | Mùa hè rực rỡ (chào mùa tháng 7) |
| 季語 | きご | QUÝ NGỮ | Từ chỉ mùa (haiku/thư từ) |
| 進捗 | しんちょく | TIẾN TRÍCH | Tiến độ |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 課題 | かだい | KHOÁ ĐỀ | Vấn đề tồn đọng |
| 代替案 | だいたいあん | ĐẠI THẾ ÁN | Phương án thay thế |
| 配慮 | はいりょ | PHỐI LỰ | Sự lưu ý, quan tâm |
| 検討 | けんとう | KIỂM THẢO | Xem xét, đánh giá |
| 指摘 | してき | CHỈ TRÍCH | Chỉ ra, vạch ra |
| 融合 | ゆうごう | DUNG HỢP | Hoà quyện, hợp nhất |
| 手元 | てもと | THỦ NGUYÊN | Trong tay |
| 資料 | しりょう | TƯ LIỆU | Tài liệu |
| 発言 | はつげん | PHÁT NGÔN | Phát biểu |
| 過分 | かぶん | QUÁ PHÂN | Quá mức (lời khen) |
| 手腕 | しゅわん | THỦ UYỂN | Tay nghề |
| 身に余る | みにあまる | THÂN — DƯ — | Ngoài sức mình (vinh dự) |
| 体験 | たいけん | THỂ NGHIỆM | Trải nghiệm |
| 講師 | こうし | GIẢNG SƯ | Giảng viên |
| 希望者 | きぼうしゃ | HY VỌNG GIẢ | Người mong muốn |
| 自由時間 | じゆうじかん | TỰ DO THỜI GIAN | Thời gian tự do |
| 大成功 | だいせいこう | ĐẠI THÀNH CÔNG | Thành công lớn |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000005, 800000047, NULL, 'markdown_book', 'T5. Lần đầu làm mentor — dẫn kohai check-in (後輩メンター・初日)', '# Sách khách sạn năm 2 · T5. Lần đầu làm mentor — dẫn kohai check-in (後輩メンター・初日)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế, năm thứ 2 tại Ryokan Ouhuusou Kyoto). Học các mẫu hội thoại tiếng Nhật của **sempai-mentor** lần đầu kèm kohai mới Lan (Trung Quốc): hướng dẫn shadowing **チェックイン** trước mặt khách, dùng **〜ように** để dặn dò, sửa lỗi nhẹ nhàng bằng **〜方がいい**, khen ngợi đúng lúc bằng **〜できました**, báo cáo 女将 bằng **報連相** kính ngữ, và an ủi kohai khi nản bằng tiếng Nhật/tiếng Trung pha lẫn.

---

## Bối cảnh

Tháng 5 năm 2026. Trang đã ở Ryokan Ouhuusou (桜風荘) Kyoto được 14 tháng, trình độ tiếng Nhật N4 vững, đang ôn N3. Tuần trước, kohai mới Lan (21 tuổi, Cần Thơ, Việt Nam) vừa nhập sở sau khi xong khoá trung tâm. 女将 Sato-san giao Trang làm **教育係** (mentor) cho Mei trong 3 tháng. Hôm nay là lần đầu Trang dẫn Mei ra quầy lễ tân, để Mei đứng quan sát Trang làm **チェックイン** cho đoàn khách 4 người từ Tokyo, sau đó ca tối Mei sẽ thử làm dưới sự giám sát của Trang. Chương này tập trung mẫu câu sempai-mentor: vừa keigo với khách, vừa thân mật chỉ dẫn kohai, vừa kính ngữ báo cáo cấp trên.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 8:30, Trang nhận chỉ thị từ 女将

| Vai | Lời thoại |
|---|---|
| 女将 | トランさん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>から<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、ランさんの<ruby>教育係<rt>きょういくがかり</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしますね。<br>*(Trang, chào buổi sáng. Từ hôm nay 3 tháng, em làm mentor cho Mei nhé.)* |
| Trang | はい、<ruby>女将<rt>おかみ</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>私<rt>わたし</rt></ruby>もまだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>ですが、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, thưa bà chủ, em xin nhận ạ. Em cũng còn đang học, nhưng em sẽ cố gắng.)* |
| 女将 | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。トランさんは<ruby>去年<rt>きょねん</rt></ruby>のランさんですよ。あの<ruby>頃<rt>ころ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>覚<rt>おぼ</rt></ruby>えているでしょう？<br>*(Không sao. Trang chính là Mei của năm ngoái đó. Em vẫn nhớ cảm giác hồi đó chứ?)* |
| Trang | はい、<ruby>覚<rt>おぼ</rt></ruby>えています。<ruby>怖<rt>こわ</rt></ruby>くて、<ruby>毎日<rt>まいにち</rt></ruby><ruby>泣<rt>な</rt></ruby>きそうでした。<br>*(Vâng, em nhớ ạ. Sợ lắm, ngày nào cũng suýt khóc.)* |
| 女将 | だから、<ruby>優<rt>やさ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてあげてください。<ruby>今日<rt>きょう</rt></ruby>はまずチェックインのシャドーイングから。<ruby>夕方<rt>ゆうがた</rt></ruby>、ランさんに<ruby>1<rt>いっ</rt></ruby><ruby>組<rt>くみ</rt></ruby>やらせてみましょう。<br>*(Vậy nên em hãy chỉ dạy thật nhẹ nhàng. Hôm nay trước hết là shadowing check-in. Chiều cho Mei thử làm 1 đoàn nhé.)* |
| Trang | かしこまりました。<ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>な<ruby>組<rt>くみ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>びます。<br>*(Vâng ạ. Em sẽ chọn đoàn nào lỡ có sai cũng không vấn đề ạ.)* |

---

## Tình huống 2 — Hành lang nhân viên · 9:00, Trang đón Mei và dặn dò ban đầu

| Vai | Lời thoại |
|---|---|
| Trang | メイちゃん、おはよう。<ruby>緊張<rt>きんちょう</rt></ruby>している？<br>*(Mei ơi, chào em. Em có hồi hộp không?)* |
| Mei | チャン<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます。…はい、ちょっと。<ruby>日本語<rt>にほんご</rt></ruby>がまだ…<br>*(Chị Trang, em chào chị ạ. …Vâng, hơi ạ. Tiếng Nhật em vẫn còn…)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<ruby>私<rt>わたし</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだった。<ruby>今日<rt>きょう</rt></ruby>はね、まず<ruby>私<rt>わたし</rt></ruby>の<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>るだけでいいよ。<br>*(Không sao đâu. Năm ngoái chị cũng vậy. Hôm nay á, em chỉ cần đứng cạnh chị xem thôi cũng được.)* |
| Mei | はい。メモを<ruby>取<rt>と</rt></ruby>ってもいいですか？<br>*(Vâng ạ. Em ghi chép được không ạ?)* |
| Trang | もちろん。でも、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>では<ruby>書<rt>か</rt></ruby>かないようにね。<ruby>後<rt>あと</rt></ruby>で<ruby>裏<rt>うら</rt></ruby>でまとめて<ruby>書<rt>か</rt></ruby>こう。<br>*(Tất nhiên rồi. Nhưng đừng viết trước mặt khách nhé. Sau đó ra phía sau ghi tập trung luôn.)* |
| Mei | わかりました。あの…<ruby>笑顔<rt>えがお</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>で…<br>*(Em hiểu rồi. Cái…em không giỏi cười…)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>練習<rt>れんしゅう</rt></ruby>すれば<ruby>自然<rt>しぜん</rt></ruby>になる。<ruby>口角<rt>こうかく</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げるだけでいいの。<br>*(Không sao, luyện rồi sẽ tự nhiên. Chỉ cần nâng khoé miệng lên chút xíu là được.)* |
| Mei | こうですか？<br>*(Thế này được không ạ?)* |
| Trang | うん、いい<ruby>感<rt>かん</rt></ruby>じ。それで<ruby>十分<rt>じゅうぶん</rt></ruby>だよ。<br>*(Ừ, được rồi đó. Như vậy là đủ.)* |

---

## Tình huống 3 — Quầy lễ tân · 14:30, đoàn khách đầu tiên đến, Trang chỉ Mei vị trí đứng

| Vai | Lời thoại |
|---|---|
| Trang | メイちゃん、<ruby>私<rt>わたし</rt></ruby>の<ruby>左後<rt>ひだりうし</rt></ruby>ろ<ruby>半歩<rt>はんぽ</rt></ruby>、ここに<ruby>立<rt>た</rt></ruby>って。<br>*(Mei ơi, đứng sau chị nửa bước về bên trái, ngay đây.)* |
| Mei | はい。<ruby>手<rt>て</rt></ruby>はどうしますか？<br>*(Vâng. Tay thì để thế nào ạ?)* |
| Trang | <ruby>前<rt>まえ</rt></ruby>で<ruby>軽<rt>かる</rt></ruby>く<ruby>組<rt>く</rt></ruby>んで。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>来<rt>き</rt></ruby>たら、<ruby>私<rt>わたし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じタイミングでお<ruby>辞儀<rt>じぎ</rt></ruby>するの。<br>*(Khoanh tay nhẹ phía trước. Khách đến thì cúi chào cùng nhịp với chị nhé.)* |
| Mei | <ruby>何度<rt>なんど</rt></ruby>ぐらいですか？<br>*(Cúi bao nhiêu độ ạ?)* |
| Trang | チェックインは<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>。お<ruby>見送<rt>みおく</rt></ruby>りの<ruby>時<rt>とき</rt></ruby>は<ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えておいて。<br>*(Check-in là 30 độ. Lúc tiễn khách là 45 độ. Nhớ nhé.)* |
| Mei | はい、<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>と<ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>。<br>*(Vâng, 30 độ và 45 độ ạ.)* |
| Trang | あ、<ruby>来<rt>き</rt></ruby>た。<ruby>笑顔<rt>えがお</rt></ruby>、<ruby>笑顔<rt>えがお</rt></ruby>。<br>*(A, đến rồi. Cười nào, cười nào.)* |

---

## Tình huống 4 — Quầy lễ tân · 14:32, Trang shadowing check-in cho đoàn Tanaka 4 người

| Vai | Lời thoại |
|---|---|
| Trang | （メイと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>のお<ruby>辞儀<rt>じぎ</rt></ruby>）いらっしゃいませ。<ruby>桜風荘<rt>つきみてい</rt></ruby>へようこそ。<br>*(Cùng Mei cúi chào 30 độ. Kính chào quý khách. Hân hạnh đón quý khách đến Ouhuusou.)* |
| Khách (ông Tanaka) | こんにちは、<ruby>田中<rt>たなか</rt></ruby>です。<ruby>4<rt>よ</rt></ruby><ruby>名<rt>めい</rt></ruby>で<ruby>予約<rt>よやく</rt></ruby>しています。<br>*(Chào cô, tôi là Tanaka. Tôi đặt phòng cho 4 người.)* |
| Trang | <ruby>田中様<rt>たなかさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>2泊<rt>にはく</rt></ruby>、<ruby>夕食<rt>ゆうしょく</rt></ruby><ruby>付<rt>つ</rt></ruby>きでございますね。<br>*(Thưa quý khách Tanaka, chúng tôi đã đợi quý khách. Quý khách nghỉ 2 đêm từ hôm nay, có bao gồm bữa tối, đúng không ạ.)* |
| Tanaka | はい、そうです。<ruby>露天風呂付<rt>ろてんぶろつ</rt></ruby>きの<ruby>部屋<rt>へや</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いしました。<br>*(Vâng, đúng vậy. Tôi đã đặt phòng có bồn tắm lộ thiên riêng.)* |
| Trang | はい、<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>をご<ruby>用意<rt>ようい</rt></ruby>しております。こちらのカードにお<ruby>名前<rt>なまえ</rt></ruby>とご<ruby>住所<rt>じゅうしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, chúng tôi đã chuẩn bị phòng Matsu-no-ma. Mong quý khách điền tên và địa chỉ vào thẻ này ạ.)* |
| Tanaka | わかりました。<br>*(Tôi hiểu rồi.)* |
| Trang | お<ruby>食事<rt>しょくじ</rt></ruby>は<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>と<ruby>6<rt>ろく</rt></ruby><ruby>時半<rt>じはん</rt></ruby>、どちらがよろしいでしょうか。<br>*(Bữa ăn 6 giờ và 6 giờ rưỡi, quý khách chọn giờ nào ạ?)* |
| Tanaka | <ruby>6<rt>ろく</rt></ruby><ruby>時半<rt>じはん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(6 giờ rưỡi nhé.)* |
| Trang | かしこまりました。それでは、お<ruby>部屋<rt>へや</rt></ruby>までご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Vâng ạ. Vậy chúng tôi xin được dẫn quý khách lên phòng.)* |

---

## Tình huống 5 — Hành lang lên phòng · 14:40, Trang giới thiệu kohai với khách

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>田中様<rt>たなかさま</rt></ruby>、こちらは<ruby>今月<rt>こんげつ</rt></ruby>から<ruby>入<rt>はい</rt></ruby>った<ruby>新人<rt>しんじん</rt></ruby>のメイでございます。<br>*(Thưa quý khách Tanaka, đây là Mei, nhân viên mới vào từ tháng này ạ.)* |
| Mei | （<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>お<ruby>辞儀<rt>じぎ</rt></ruby>）メイと<ruby>申<rt>もう</rt></ruby>します。<ruby>中国<rt>ちゅうごく</rt></ruby>から<ruby>参<rt>まい</rt></ruby>りました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu 15 độ. Tôi tên là Mei. Tôi đến từ Trung Quốc ạ. Mong quý khách giúp đỡ.)* |
| Tanaka | あら、<ruby>日本語<rt>にほんご</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>ですね。どこから？<br>*(Ồ, tiếng Nhật giỏi quá nhỉ. Cô từ đâu vậy?)* |
| Mei | <ruby>青島<rt>チンタオ</rt></ruby>です。<ruby>海<rt>うみ</rt></ruby>のきれいな<ruby>町<rt>まち</rt></ruby>です。<br>*(Thanh Đảo ạ. Là thành phố biển đẹp.)* |
| Tanaka | <ruby>知<rt>し</rt></ruby>っていますよ。ビールが<ruby>有名<rt>ゆうめい</rt></ruby>でしょう。<br>*(Tôi biết chứ. Nổi tiếng bia phải không.)* |
| Mei | はい、その<ruby>通<rt>とお</rt></ruby>りです！<br>*(Vâng, đúng vậy ạ!)* |
| Trang | <ruby>田中様<rt>たなかさま</rt></ruby>、こちらが<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>でございます。お<ruby>荷物<rt>にもつ</rt></ruby>はメイがお<ruby>運<rt>はこ</rt></ruby>びいたします。<br>*(Thưa quý khách Tanaka, đây là phòng Matsu-no-ma ạ. Hành lý Mei sẽ đem vào ạ.)* |

---

## Tình huống 6 — Phòng nghỉ nhân viên · 15:30, Trang sửa lỗi nhẹ cho Mei sau khi quan sát

| Vai | Lời thoại |
|---|---|
| Trang | メイちゃん、よくできました。<ruby>初<rt>はじ</rt></ruby>めてなのに<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていたね。<br>*(Mei ơi, làm tốt lắm. Lần đầu mà bình tĩnh thật đó.)* |
| Mei | ありがとうございます。でも、<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていました。<br>*(Em cảm ơn chị. Nhưng tay em run lắm.)* |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>気<rt>き</rt></ruby>づかなかったよ。<ruby>1<rt>ひと</rt></ruby>つだけアドバイスしてもいい？<br>*(Không sao đâu, khách không nhận ra. Chị góp ý một điều được không?)* |
| Mei | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, chị nói đi ạ.)* |
| Trang | お<ruby>辞儀<rt>じぎ</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>頭<rt>あたま</rt></ruby>だけじゃなくて<ruby>腰<rt>こし</rt></ruby>から<ruby>曲<rt>ま</rt></ruby>げた<ruby>方<rt>ほう</rt></ruby>がいいよ。<ruby>背中<rt>せなか</rt></ruby>をまっすぐにしてね。<br>*(Lúc cúi chào, đừng chỉ cúi đầu mà cúi từ thắt lưng sẽ tốt hơn. Lưng giữ thẳng nhé.)* |
| Mei | こうですか？<br>*(Thế này hả chị?)* |
| Trang | そう、その<ruby>感<rt>かん</rt></ruby>じ！それから、「<ruby>申<rt>もう</rt></ruby>します」の「もう」が<ruby>少<rt>すこ</rt></ruby>し<ruby>強<rt>つよ</rt></ruby>かった。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>柔<rt>やわ</rt></ruby>らかく。<br>*(Đúng rồi, cảm giác đó! Với lại "mou" trong "moushimasu" hơi mạnh. Nhẹ thêm một chút.)* |
| Mei | メイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Mei to moushimasu.)* |
| Trang | うん、いい！<ruby>夕方<rt>ゆうがた</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>1<rt>いっ</rt></ruby><ruby>組<rt>くみ</rt></ruby>やってみよう。<ruby>私<rt>わたし</rt></ruby>はすぐ<ruby>横<rt>よこ</rt></ruby>にいるから。<br>*(Ừ, được! Chiều em tự làm 1 đoàn thử nhé. Chị đứng ngay bên cạnh.)* |

---

## Tình huống 7 — Quầy lễ tân · 16:50, Mei lần đầu tự check-in cho đôi vợ chồng Kobayashi

| Vai | Lời thoại |
|---|---|
| Mei | （<ruby>緊張<rt>きんちょう</rt></ruby>しながら<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>）いらっしゃいませ。<ruby>桜風荘<rt>つきみてい</rt></ruby>へようこそ。<br>*(Hồi hộp cúi 30 độ. Kính chào quý khách. Hân hạnh đón quý khách đến Ouhuusou.)* |
| Khách (bà Kobayashi) | こんにちは、<ruby>小林<rt>こばやし</rt></ruby>です。<ruby>2<rt>ふた</rt></ruby>りで<ruby>予約<rt>よやく</rt></ruby>しています。<br>*(Chào cô, tôi là Kobayashi. Đặt phòng cho 2 người.)* |
| Mei | <ruby>小林様<rt>こばやしさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。…えーと…<br>*(Thưa quý khách Kobayashi, chúng tôi đã đợi… À… ờ…)* |
| Trang | （<ruby>小声<rt>こごえ</rt></ruby>で）<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>1泊<rt>いっぱく</rt></ruby>…<br>*(Khẽ nhắc. Hôm nay quý khách nghỉ 1 đêm…)* |
| Mei | あ、はい。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>1泊<rt>いっぱく</rt></ruby>、<ruby>夕食<rt>ゆうしょく</rt></ruby><ruby>朝食付<rt>ちょうしょくつ</rt></ruby>きでございますね。<br>*(À vâng. Hôm nay quý khách nghỉ 1 đêm, có cả bữa tối và bữa sáng, đúng không ạ.)* |
| Kobayashi | はい、そうです。<br>*(Vâng, đúng vậy.)* |
| Mei | こちらのカードにお<ruby>名前<rt>なまえ</rt></ruby>とご<ruby>住所<rt>じゅうしょ</rt></ruby>を…お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mong quý khách viết tên và địa chỉ vào thẻ này… ạ.)* |
| Kobayashi | はい。<ruby>新人<rt>しんじん</rt></ruby>さん？<ruby>頑張<rt>がんば</rt></ruby>ってね。<br>*(Vâng. Nhân viên mới hả? Cố lên nhé.)* |
| Mei | ありがとうございます！<br>*(Em cảm ơn ạ!)* |

---

## Tình huống 8 — Phía sau quầy · 17:10, Trang khen Mei sau lần đầu

| Vai | Lời thoại |
|---|---|
| Trang | メイちゃん、できたね！<ruby>初<rt>はじ</rt></ruby>めて<ruby>一人<rt>ひとり</rt></ruby>でできたよ！<br>*(Mei ơi, em làm được rồi! Lần đầu tự làm được rồi đó!)* |
| Mei | （<ruby>涙<rt>なみだ</rt></ruby><ruby>目<rt>め</rt></ruby>で）チャン<ruby>先輩<rt>せんぱい</rt></ruby>、ありがとうございます。とても<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Mắt rưng rưng. Chị Trang, em cảm ơn. Em sợ lắm.)* |
| Trang | <ruby>泣<rt>な</rt></ruby>かないで、<ruby>泣<rt>な</rt></ruby>かないで。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>見<rt>み</rt></ruby>られるよ。<ruby>裏<rt>うら</rt></ruby>へ<ruby>行<rt>い</rt></ruby>こう。<br>*(Đừng khóc, đừng khóc. Khách nhìn thấy đấy. Vào trong đi.)* |
| Mei | はい…すみません。<br>*(Vâng…em xin lỗi.)* |
| Trang | <ruby>謝<rt>あやま</rt></ruby>らなくていいよ。<ruby>私<rt>わたし</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby><ruby>初<rt>はじ</rt></ruby>めての<ruby>時<rt>とき</rt></ruby>、トイレで<ruby>泣<rt>な</rt></ruby>いたから。<br>*(Không cần xin lỗi đâu. Năm ngoái chị cũng vậy, lần đầu tiên chị khóc trong toilet đó.)* |
| Mei | チャン<ruby>先輩<rt>せんぱい</rt></ruby>もですか？<br>*(Chị Trang cũng vậy ạ?)* |
| Trang | みんな<ruby>同<rt>おな</rt></ruby>じ。<ruby>大切<rt>たいせつ</rt></ruby>なのは、<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>1<rt>ひと</rt></ruby>つずつ<ruby>覚<rt>おぼ</rt></ruby>えること。<ruby>明日<rt>あした</rt></ruby>はもっと<ruby>上手<rt>じょうず</rt></ruby>になるよ。<br>*(Ai cũng như nhau hết. Quan trọng là nhớ từng lỗi sai một. Mai sẽ giỏi hơn nữa.)* |

---

## Tình huống 9 — Quầy lễ tân · 18:00, khách phàn nàn nhẹ, Trang xử lý còn Mei quan sát

| Vai | Lời thoại |
|---|---|
| Khách (ông Saito) | すみません、<ruby>部屋<rt>へや</rt></ruby>の<ruby>冷蔵庫<rt>れいぞうこ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>しうるさいんですが。<br>*(Xin lỗi, tủ lạnh phòng tôi hơi ồn.)* |
| Trang | <ruby>斎藤様<rt>さいとうさま</rt></ruby>、ご<ruby>不便<rt>ふべん</rt></ruby>をおかけして、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。すぐに<ruby>確認<rt>かくにん</rt></ruby>にうかがいます。<br>*(Thưa quý khách Saito, chúng tôi vô cùng xin lỗi đã làm quý khách bất tiện. Chúng tôi xin đi kiểm tra ngay ạ.)* |
| Saito | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ cô vậy.)* |
| Trang | （メイに<ruby>小声<rt>こごえ</rt></ruby>で）メイちゃん、<ruby>営繕<rt>えいぜん</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>電話<rt>でんわ</rt></ruby>して。<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>の<ruby>冷蔵庫<rt>れいぞうこ</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いって。<br>*(Khẽ với Mei. Mei ơi, gọi anh Yamada bên kỹ thuật. Bảo nhờ kiểm tra tủ lạnh phòng Matsu-no-ma.)* |
| Mei | はい！すぐ<ruby>電話<rt>でんわ</rt></ruby>します。<br>*(Vâng! Em gọi ngay.)* |
| Trang | <ruby>斎藤様<rt>さいとうさま</rt></ruby>、<ruby>担当<rt>たんとう</rt></ruby>がただ<ruby>今<rt>いま</rt></ruby>うかがいます。お<ruby>部屋<rt>へや</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>られて<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Thưa quý khách Saito, người phụ trách sẽ đến ngay ạ. Mong quý khách trở về phòng và đợi một chút.)* |

---

## Tình huống 10 — Phòng nghỉ · 19:30, Trang giải thích bí quyết xử lý phàn nàn cho Mei

| Vai | Lời thoại |
|---|---|
| Mei | チャン<ruby>先輩<rt>せんぱい</rt></ruby>、さっきのお<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>怒<rt>おこ</rt></ruby>っていましたか？<br>*(Chị Trang, khách lúc nãy có giận không ạ?)* |
| Trang | <ruby>怒<rt>おこ</rt></ruby>っていなかったよ。ただ「<ruby>困<rt>こま</rt></ruby>っている」だけ。<ruby>大事<rt>だいじ</rt></ruby>なのは、まず<ruby>謝<rt>あやま</rt></ruby>って、すぐ<ruby>動<rt>うご</rt></ruby>くこと。<br>*(Khách không giận đâu. Chỉ là "đang khó chịu" thôi. Quan trọng là xin lỗi trước rồi hành động ngay.)* |
| Mei | <ruby>言<rt>い</rt></ruby>い<ruby>訳<rt>わけ</rt></ruby>はしないんですか？<br>*(Không biện minh ạ?)* |
| Trang | しない。「<ruby>古<rt>ふる</rt></ruby>い<ruby>冷蔵庫<rt>れいぞうこ</rt></ruby>だから」とか、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>言<rt>い</rt></ruby>わない。お<ruby>客様<rt>きゃくさま</rt></ruby>には<ruby>関係<rt>かんけい</rt></ruby>ないから。<br>*(Không. Kiểu "vì tủ lạnh cũ" — tuyệt đối không nói. Vì không liên quan đến khách.)* |
| Mei | なるほど。メモします。<br>*(Em hiểu rồi. Em ghi vào.)* |
| Trang | あとね、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>でスタッフを<ruby>呼<rt>よ</rt></ruby>ぶ<ruby>時<rt>とき</rt></ruby>は、<ruby>小声<rt>こごえ</rt></ruby>で。バタバタしているように<ruby>見<rt>み</rt></ruby>せないようにね。<br>*(Thêm nữa, lúc gọi nhân viên trước mặt khách thì nói khẽ. Đừng tỏ ra lúng túng.)* |
| Mei | <ruby>静<rt>しず</rt></ruby>かに、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて…ですね。<br>*(Yên lặng, bình tĩnh… đúng không ạ.)* |
| Trang | そう。お<ruby>客様<rt>きゃくさま</rt></ruby>からは<ruby>白鳥<rt>はくちょう</rt></ruby>に<ruby>見<rt>み</rt></ruby>えて、<ruby>水<rt>みず</rt></ruby>の<ruby>下<rt>した</rt></ruby>では<ruby>必死<rt>ひっし</rt></ruby>に<ruby>足<rt>あし</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かしている。それが<ruby>仲居<rt>なかい</rt></ruby>。<br>*(Đúng. Với khách thì như con thiên nga, dưới mặt nước thì chân đạp loạn. Đó mới là nakai.)* |

---

## Tình huống 11 — Văn phòng 女将 · 20:30, Trang báo cáo ngày đầu mentor cho 女将

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<ruby>本日<rt>ほんじつ</rt></ruby>のランさんのご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Thưa bà chủ, bà có chút thời gian không ạ. Em xin báo cáo về Mei hôm nay.)* |
| 女将 | はい、どうぞ。<br>*(Ừ, em nói đi.)* |
| Trang | <ruby>午後<rt>ごご</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>組<rt>くみ</rt></ruby>シャドーイング、<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>組<rt>くみ</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でチェックインを<ruby>行<rt>おこな</rt></ruby>いました。<ruby>大<rt>おお</rt></ruby>きなミスはありませんでした。<br>*(Chiều shadowing 2 đoàn, sau đó tự mình check-in 1 đoàn. Không có lỗi lớn ạ.)* |
| 女将 | よかったわ。<ruby>気<rt>き</rt></ruby>になる<ruby>点<rt>てん</rt></ruby>は？<br>*(Tốt rồi. Có điểm nào em băn khoăn không?)* |
| Trang | お<ruby>辞儀<rt>じぎ</rt></ruby>の<ruby>姿勢<rt>しせい</rt></ruby>と、<ruby>笑顔<rt>えがお</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。あと、<ruby>緊張<rt>きんちょう</rt></ruby>すると<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>てこないので、<ruby>定型<rt>ていけい</rt></ruby><ruby>文<rt>ぶん</rt></ruby>を<ruby>暗記<rt>あんき</rt></ruby>させたいです。<br>*(Tư thế cúi chào và luyện nụ cười cần thêm ạ. Với lại lúc hồi hộp không bật được câu, em muốn cho Mei học thuộc câu mẫu.)* |
| 女将 | いい<ruby>判断<rt>はんだん</rt></ruby>ね。<ruby>朝<rt>あさ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>2<rt>ふた</rt></ruby>りで<ruby>練習<rt>れんしゅう</rt></ruby>してもいいわよ。<br>*(Quyết định hay đấy. Trước giờ họp sáng dành 10 phút, hai em luyện cũng được.)* |
| Trang | ありがとうございます。<ruby>明日<rt>あした</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Em cảm ơn ạ. Mai em bắt đầu.)* |

---

## Tình huống 12 — Phòng nghỉ nhân viên · 21:00, Mei chia sẻ, Trang động viên

| Vai | Lời thoại |
|---|---|
| Mei | チャン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Chị Trang, em thật sự cảm ơn chị.)* |
| Trang | こちらこそ。メイちゃんがいると<ruby>私<rt>わたし</rt></ruby>も<ruby>成長<rt>せいちょう</rt></ruby>するよ。<br>*(Chị mới phải cảm ơn. Có Mei chị cũng trưởng thành hơn.)* |
| Mei | …<ruby>実<rt>じつ</rt></ruby>は、お<ruby>母<rt>かあ</rt></ruby>さんに<ruby>電話<rt>でんわ</rt></ruby>して「<ruby>帰<rt>かえ</rt></ruby>りたい」って<ruby>言<rt>い</rt></ruby>おうとしていました。<br>*(…Thật ra, em định gọi mẹ bảo "muốn về nhà".)* |
| Trang | わかる、その<ruby>気持<rt>きも</rt></ruby>ち。<ruby>私<rt>わたし</rt></ruby>も<ruby>3<rt>さん</rt></ruby>か<ruby>月目<rt>げつめ</rt></ruby>まで、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>泣<rt>な</rt></ruby>いていた。<br>*(Chị hiểu cảm giác đó. Chị đến tháng thứ 3 vẫn tuần nào cũng khóc.)* |
| Mei | <ruby>嘘<rt>うそ</rt></ruby>？<br>*(Thật á?)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>。でも、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>たったらこうなれる。メイちゃんも<ruby>必<rt>かなら</rt></ruby>ずなれるよ。<br>*(Thật. Nhưng qua 1 năm là sẽ thành như bây giờ. Mei nhất định cũng làm được.)* |
| Mei | <ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>明日<rt>あした</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em sẽ cố gắng. Mai cũng nhờ chị nhé.)* |
| Trang | こちらこそ。<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>てね。お<ruby>休<rt>やす</rt></ruby>み。<br>*(Chị mới nhờ. Đi ngủ sớm nhé. Ngủ ngon.)* |

---

## Tình huống 13 — Cảnh tiếng Việt — Phòng ký túc · 22:00, Trang gọi mẹ ở Huế

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Trang | Mẹ ơi, con đây. Hôm nay mẹ khoẻ không ạ? |
| Mẹ | Khoẻ con, mẹ vừa ăn cơm xong. Bên đó sao rồi? |
| Trang | Hôm nay con bắt đầu làm **教育係**, dạy một em mới người Trung Quốc. Bà chủ giao con đó mẹ. |
| Mẹ | Trời, vinh dự thế. Con qua chưa được hai năm mà người ta tin tưởng. |
| Trang | Em nó tên Mei, mới 21, sợ lắm mẹ ạ. Tự nhiên con thấy mình giống y mẹ lúc dạy mấy đứa em ở nhà. |
| Mẹ | Ừ, dạy người là khó hơn tự làm đó con. Phải nhẫn nại. |
| Trang | Hôm nay em nó khóc, con phải dỗ. Mà con nhớ hồi mới qua, con cũng khóc cả tháng. **女将さん** lúc đó cũng dỗ con y vậy. |
| Mẹ | Vậy con truyền lại tình thương đó cho em. Phước báo đó con. |
| Trang | Vâng. À mẹ, lương tháng này con gửi về thêm 5 man, mẹ sửa lại mái nhà phụ ông nhé. |
| Mẹ | Ừ, mẹ biết rồi. Mà con cũng ráng giữ lại đủ ăn. Bên đó **真夏** sắp tới rồi đúng không? |
| Trang | Vâng, **8月** cao điểm, đoàn nhiều lắm. Con phải khoẻ để kéo cả em mới nữa. |
| Mẹ | Ngủ sớm nha con. Mẹ thương. |
| Trang | Dạ, con thương mẹ. **お休み** mẹ. |

---

## Đọng lại chương

**Mẫu câu sempai-mentor:**
- **「〜ように(ね)」**: 書かないようにね / バタバタしているように見せないように — dặn dò nhẹ
- **「〜方がいい(よ)」**: 腰から曲げた方がいいよ — góp ý không ép buộc
- **「〜できました/できたね」**: 初めて一人でできたよ — khen kohai cụ thể
- **「(小声で)」+ 指示**: トランさんに電話して — gọi đồng nghiệp trước mặt khách
- **報連相 với 女将**: 「お時間よろしいでしょうか」「気になる点は…」
- **Câu đỡ lời nhanh**: 「本日より1泊…」 — nhắc khẽ kohai khi mắc kẹt

**Mẫu câu xử lý phàn nàn:**
- 「ご不便をおかけして、誠に申し訳ございません」
- 「すぐに確認にうかがいます」
- 「担当がただ今うかがいます」「少々お待ちくださいませ」

**Văn hoá nakai:** 白鳥のように — bên ngoài tao nhã, bên trong nỗ lực

**Từ vựng:** 教育係・新人・シャドーイング・お辞儀・笑顔・口角・腰・背中・冷蔵庫・営繕・担当・落ち着く・震える・言い訳・定型文・朝礼・成長

---

## Bí quyết chương

- **教育係 là vinh dự, không phải gánh nặng**: 女将 chọn người mới làm mentor sớm vì đó là cách rèn cả mentor lẫn mentee, không phải chỉ giao việc.
- **Nửa bước sau bên trái**: vị trí kohai đứng tại quầy là quy ước cứng — khách thấy được hai người nhưng senpai vẫn là người chủ đạo.
- **30 độ/45 độ**: cúi check-in 30 độ, tiễn 45 độ; chỉ cúi đầu là thô — phải gập từ thắt lưng giữ thẳng lưng.
- **Trước mặt khách dùng kính ngữ, sau lưng khách dùng thân mật**: "メイちゃん〜して" khi ngoài tầm nghe của khách, "メイがお運びいたします" khi nói với khách.
- **Khi xử lý complaint, không bao giờ biện minh nguyên nhân kỹ thuật**: お客様には関係ない — chỉ xin lỗi, hành động, báo cáo lại sau.
- **白鳥 nakai**: bí mật ngành — bên ngoài luôn tĩnh lặng, sau lưng quầy mới được phép vội vã.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 教育係 | きょういくがかり | GIÁO DỤC HỆ | người phụ trách đào tạo, mentor |
| 新人 | しんじん | TÂN NHÂN | người mới |
| 緊張 | きんちょう | KHẨN TRƯƠNG | hồi hộp, căng thẳng |
| 笑顔 | えがお | TIẾU NHAN | nụ cười |
| 苦手 | にがて | KHỔ THỦ | không giỏi, kém |
| 口角 | こうかく | KHẨU GIÁC | khoé miệng |
| 自然 | しぜん | TỰ NHIÊN | tự nhiên |
| 後輩 | こうはい | HẬU BỐI | đàn em |
| 先輩 | せんぱい | TIÊN BỐI | đàn anh, chị |
| シャドーイング | しゃどーいんぐ | — | shadowing, làm theo bóng |
| お辞儀 | おじぎ | TỪ NGHI | cúi chào |
| 半歩 | はんぽ | BÁN BỘ | nửa bước |
| 組む | くむ | TỔ | khoanh, đan (tay) |
| お見送り | おみおくり | KIẾN TỐNG | tiễn khách |
| 露天風呂 | ろてんぶろ | LỘ THIÊN PHONG LỮ | bồn tắm lộ thiên |
| 松の間 | まつのま | TÙNG GIAN | phòng Matsu (tên phòng) |
| 用意 | ようい | DỤNG Ý | chuẩn bị |
| 住所 | じゅうしょ | TRỤ SỞ | địa chỉ |
| 案内 | あんない | ÁN NỘI | dẫn đường, hướng dẫn |
| 申す | もうす | THÂN | (khiêm nhường) nói, tên là |
| 参る | まいる | THAM | (khiêm) đến, đi |
| 青島 | チンタオ | THANH ĐẢO | Thanh Đảo (Trung Quốc) |
| 運ぶ | はこぶ | VẬN | chuyển, đem |
| 落ち着く | おちつく | LẠC TRỨ | bình tĩnh |
| 震える | ふるえる | CHẤN | run |
| アドバイス | あどばいす | — | lời khuyên |
| 腰 | こし | YÊU | thắt lưng |
| 背中 | せなか | BỐI TRUNG | lưng |
| 曲げる | まげる | KHÚC | gập, cong |
| 柔らかい | やわらかい | NHU | mềm, nhẹ nhàng |
| 冷蔵庫 | れいぞうこ | LÃNH TÀNG KHỐ | tủ lạnh |
| 不便 | ふべん | BẤT TIỆN | bất tiện |
| 誠に | まことに | THÀNH | thành thật, vô cùng |
| 営繕 | えいぜん | DOANH THIỆN | bộ phận sửa chữa, kỹ thuật |
| 担当 | たんとう | ĐẢM ĐƯƠNG | người phụ trách |
| 言い訳 | いいわけ | NGÔN DỊCH | biện minh, lý do |
| 関係 | かんけい | QUAN HỆ | liên quan |
| 静か | しずか | TĨNH | yên lặng |
| 白鳥 | はくちょう | BẠCH ĐIỂU | thiên nga |
| 必死 | ひっし | TẤT TỬ | dốc sức, hết mình |
| 仲居 | なかい | TRỌNG CƯ | nakai, nữ phục vụ ryokan |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 判断 | はんだん | PHÁN ĐOÁN | quyết định, phán đoán |
| 朝礼 | ちょうれい | TRIỀU LỄ | họp sáng |
| 定型文 | ていけいぶん | ĐỊNH HÌNH VĂN | câu mẫu cố định |
| 暗記 | あんき | ÁM KÝ | học thuộc lòng |
| 成長 | せいちょう | THÀNH TRƯỞNG | trưởng thành |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000006, 800000047, NULL, 'markdown_book', 'T6. Thi 技能検定 宿泊サービス 3級 (Kỹ năng kiểm định cấp 3 dịch vụ lưu trú)', '# Sách khách sạn năm 2 · T6. Thi 技能検定 宿泊サービス 3級 (Kỹ năng kiểm định cấp 3 dịch vụ lưu trú)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế, năm thứ 2 tại Ryokan Ouhuusou Kyoto). Học các mẫu hội thoại tiếng Nhật để thi 技能検定 宿泊サービス 3級: ôn tập **学科** (lý thuyết) với sempai Yuna, luyện **実技** (thực hành) trải futon・gấp 浴衣・rót お茶 trước giám khảo, hỏi đáp với khách giả định **接客ロールプレイ**, trả lời câu hỏi sức khoẻ・an toàn・vệ sinh **衛生管理**, đối thoại với **試験官** trong phòng thi bằng kính ngữ chuẩn, và gọi báo kết quả về cho 女将.

---

## Bối cảnh

Tháng 6 năm 2026. Trang đăng ký kỳ thi 技能検定 宿泊サービス 3級 (Kỹ năng kiểm định ngành dịch vụ lưu trú cấp 3) tổ chức tại 京都府職業能力開発協会 vào thứ Bảy 13/6. Kỳ thi gồm **学科試験** (40 câu trắc nghiệm 60 phút) và **実技試験** (3 hạng mục: trải futon, gấp yukata, phục vụ trà — 45 phút). Trang trình độ tiếng Nhật N3 yếu, sempai Yuna (người Hàn Quốc, năm 3) đã đậu năm ngoái, kèm Trang 2 tuần. Chương này tập trung mẫu câu Trang dùng trong giai đoạn ôn — thi — báo kết quả.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 7:00 hai tuần trước thi, Trang nhờ sempai Yuna kèm

| Vai | Lời thoại |
|---|---|
| Trang | ユナ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いいですか？<br>*(Chị Yuna, em xin lỗi sáng sớm đã làm phiền. Chị có chút thời gian không ạ?)* |
| Yuna | おはよう、チャン。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、どうしたの？<br>*(Chào em, Trang. Không sao, có gì vậy?)* |
| Trang | <ruby>来月<rt>らいげつ</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>のことなんですが、<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>っていただけませんか？<br>*(Là về kỳ thi cấp 3 tháng tới ạ, chị giúp em ôn được không ạ?)* |
| Yuna | もちろん。<ruby>去年<rt>きょねん</rt></ruby><ruby>私<rt>わたし</rt></ruby>も<ruby>大変<rt>たいへん</rt></ruby>だったから。<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>あるね。<br>*(Tất nhiên rồi. Năm ngoái chị cũng vất vả lắm. Còn 2 tuần nhỉ.)* |
| Trang | はい。<ruby>学科<rt>がっか</rt></ruby>と<ruby>実技<rt>じつぎ</rt></ruby>、どちらが<ruby>難<rt>むずか</rt></ruby>しかったですか？<br>*(Vâng. Lý thuyết với thực hành, cái nào khó hơn ạ?)* |
| Yuna | <ruby>私<rt>わたし</rt></ruby>は<ruby>学科<rt>がっか</rt></ruby>。<ruby>専門用語<rt>せんもんようご</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>がね…「<ruby>衛生<rt>えいせい</rt></ruby><ruby>管理<rt>かんり</rt></ruby>」とか「<ruby>労働<rt>ろうどう</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby>」とか。<br>*(Chị là lý thuyết. Kanji thuật ngữ chuyên ngành ấy… như "vệ sinh quản lý", "an toàn lao động".)* |
| Trang | <ruby>私<rt>わたし</rt></ruby>も<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>です…<br>*(Em cũng kém kanji ạ…)* |
| Yuna | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>過去<rt>かこ</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>せば<ruby>合格<rt>ごうかく</rt></ruby>できる。<ruby>毎晩<rt>まいばん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にやろう。<br>*(Không sao. Làm đề cũ 3 vòng là đậu được. Tối nào cũng 1 tiếng, mình cùng học nhé.)* |

---

## Tình huống 2 — Phòng nghỉ · 21:00 ngày 1, Yuna giảng thuật ngữ 衛生管理 cho Trang

| Vai | Lời thoại |
|---|---|
| Yuna | じゃあ、まず「<ruby>衛生<rt>えいせい</rt></ruby><ruby>管理<rt>かんり</rt></ruby>」から。チャン、これは<ruby>何<rt>なん</rt></ruby>と<ruby>読<rt>よ</rt></ruby>む？<br>*(Vậy bắt đầu từ "eisei kanri". Trang đọc thế nào?)* |
| Trang | え…えいせい…かんり…<ruby>意味<rt>いみ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Ờ… eisei… kanri… Nghĩa em không biết.)* |
| Yuna | 「<ruby>衛生<rt>えいせい</rt></ruby>」は<ruby>清潔<rt>せいけつ</rt></ruby>、ベトナム<ruby>語<rt>ご</rt></ruby>で「vệ sinh」。「<ruby>管理<rt>かんり</rt></ruby>」は「quản lý」。<br>*("Eisei" là sạch sẽ, tiếng Việt là "vệ sinh". "Kanri" là "quản lý".)* |
| Trang | あ、<ruby>同<rt>おな</rt></ruby>じ<ruby>漢字<rt>かんじ</rt></ruby>ですね！「<ruby>衛生<rt>えいせい</rt></ruby>」=「<ruby>衞生<rt>えいせい</rt></ruby>」。<br>*(A, cùng kanji với tiếng Việt ạ! "Vệ sinh" = "衛生".)* |
| Yuna | そう、ベトナム<ruby>語<rt>ご</rt></ruby>はラッキー。<ruby>例<rt>たと</rt></ruby>えば「<ruby>食中毒<rt>しょくちゅうどく</rt></ruby><ruby>予防<rt>よぼう</rt></ruby>」も「thực trúng độc dự phòng」だよ。<br>*(Đúng, tiếng Việt may mắn. Ví dụ "shokuchuudoku yobou" cũng là "thực trúng độc dự phòng" đó.)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>だ！<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かります。<ruby>食<rt>しょく</rt></ruby><ruby>中毒<rt>ちゅうどく</rt></ruby><ruby>予防<rt>よぼう</rt></ruby>＝<ruby>食事<rt>しょくじ</rt></ruby>から<ruby>病気<rt>びょうき</rt></ruby>にならないようにする。<br>*(Thật đó! Em hiểu nghĩa. Phòng chống ngộ độc thức ăn = không để bị bệnh từ thức ăn.)* |
| Yuna | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>は「<ruby>労働<rt>ろうどう</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby><ruby>衛生法<rt>えいせいほう</rt></ruby>」の<ruby>条文<rt>じょうぶん</rt></ruby>をやろう。<br>*(Chính xác. Mai làm điều khoản "luật an toàn vệ sinh lao động" nhé.)* |
| Trang | はい、ありがとうございます。<ruby>明日<rt>あした</rt></ruby>までに<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>問<rt>もん</rt></ruby>やっておきます。<br>*(Vâng, em cảm ơn ạ. Mai em sẽ làm xong 10 câu đề cũ.)* |

---

## Tình huống 3 — Phòng tatami trống · 14:00 cuối tuần, Trang luyện trải futon trước Yuna

| Vai | Lời thoại |
|---|---|
| Yuna | <ruby>実技<rt>じつぎ</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>、<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>き。<ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>人分<rt>にんぶん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>。やってみて。<br>*(Thực hành thứ 1, trải futon. Giới hạn 5 phút cho 1 người. Em làm thử đi.)* |
| Trang | はい。…<ruby>敷布団<rt>しきぶとん</rt></ruby>、シーツ、<ruby>掛<rt>か</rt></ruby>け<ruby>布団<rt>ぶとん</rt></ruby>、<ruby>枕<rt>まくら</rt></ruby>…<br>*(Vâng. …Đệm trải, ga, chăn, gối…)* |
| Yuna | ストップ。シーツの<ruby>角<rt>かど</rt></ruby>はどうする？<br>*(Dừng. Góc ga em làm thế nào?)* |
| Trang | <ruby>三角<rt>さんかく</rt></ruby><ruby>折<rt>お</rt></ruby>りでマットレスの<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>い</rt></ruby>れます。<br>*(Gấp tam giác rồi nhét xuống dưới đệm ạ.)* |
| Yuna | <ruby>正解<rt>せいかい</rt></ruby>。でも<ruby>角度<rt>かくど</rt></ruby>が<ruby>45<rt>よんじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>じゃない。もう<ruby>少<rt>すこ</rt></ruby>しきれいに。<ruby>試験<rt>しけん</rt></ruby>では<ruby>角<rt>かど</rt></ruby>を<ruby>見<rt>み</rt></ruby>られるよ。<br>*(Đúng. Nhưng góc không phải 45 độ. Đẹp hơn chút nữa. Lúc thi giám khảo xem góc đó.)* |
| Trang | やり<ruby>直<rt>なお</rt></ruby>します。…こうですか？<br>*(Em làm lại. …Thế này được không ạ?)* |
| Yuna | OK。<ruby>掛<rt>か</rt></ruby>け<ruby>布団<rt>ぶとん</rt></ruby>の<ruby>方向<rt>ほうこう</rt></ruby>、<ruby>注意<rt>ちゅうい</rt></ruby>。<ruby>足<rt>あし</rt></ruby><ruby>側<rt>がわ</rt></ruby>のラベルが<ruby>下<rt>した</rt></ruby>に<ruby>来<rt>く</rt></ruby>る？<ruby>上<rt>うえ</rt></ruby>に<ruby>来<rt>く</rt></ruby>る？<br>*(OK. Hướng chăn chú ý. Nhãn phía chân lên trên hay xuống dưới?)* |
| Trang | <ruby>下<rt>した</rt></ruby>です。<ruby>足<rt>あし</rt></ruby><ruby>側<rt>がわ</rt></ruby>のラベルは<ruby>見<rt>み</rt></ruby>えないようにします。<br>*(Xuống dưới ạ. Nhãn phía chân thì để khuất.)* |
| Yuna | いいね。<ruby>枕<rt>まくら</rt></ruby>カバーの<ruby>開<rt>あ</rt></ruby>き<ruby>口<rt>ぐち</rt></ruby>はどっち？<br>*(Tốt. Miệng vỏ gối quay hướng nào?)* |
| Trang | <ruby>壁側<rt>かべがわ</rt></ruby>です。お<ruby>客様<rt>きゃくさま</rt></ruby>から<ruby>見<rt>み</rt></ruby>えない<ruby>方向<rt>ほうこう</rt></ruby>に。<br>*(Phía tường ạ. Hướng khách không nhìn thấy.)* |
| Yuna | <ruby>完璧<rt>かんぺき</rt></ruby>！<ruby>今<rt>いま</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>うよ。<br>*(Hoàn hảo! Bây giờ 4 phút 20. Ổn, kịp thời gian.)* |

---

## Tình huống 4 — Phòng tatami · 15:30 cuối tuần, luyện gấp yukata

| Vai | Lời thoại |
|---|---|
| Yuna | <ruby>次<rt>つぎ</rt></ruby>は<ruby>浴衣<rt>ゆかた</rt></ruby><ruby>畳<rt>たた</rt></ruby>み。<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<br>*(Tiếp theo gấp yukata. 3 phút.)* |
| Trang | はい。…まず<ruby>背中<rt>せなか</rt></ruby>の<ruby>線<rt>せん</rt></ruby>を<ruby>真<rt>ま</rt></ruby>っすぐに…<ruby>左前<rt>ひだりまえ</rt></ruby>、<ruby>右前<rt>みぎまえ</rt></ruby>…どっちでしたっけ？<br>*(Vâng. …Đầu tiên đường lưng làm thẳng… vạt trái trước hay vạt phải trước… cái nào nhỉ?)* |
| Yuna | <ruby>生<rt>い</rt></ruby>きている<ruby>人<rt>ひと</rt></ruby>は？<br>*(Người sống thì?)* |
| Trang | <ruby>左前<rt>ひだりまえ</rt></ruby>！…じゃなくて、<ruby>右前<rt>みぎまえ</rt></ruby>です！<ruby>右<rt>みぎ</rt></ruby>の<ruby>身頃<rt>みごろ</rt></ruby>が<ruby>下<rt>した</rt></ruby>、<ruby>左<rt>ひだり</rt></ruby>の<ruby>身頃<rt>みごろ</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>。<br>*(Vạt trái trước! …Không, vạt phải trước! Vạt phải xuống dưới, vạt trái lên trên ạ.)* |
| Yuna | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>逆<rt>ぎゃく</rt></ruby>にすると「<ruby>死<rt>し</rt></ruby><ruby>装束<rt>しょうぞく</rt></ruby>」になる。これ<ruby>絶対<rt>ぜったい</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えちゃダメ。<br>*(Đúng. Ngược lại là "y phục người chết". Cái này tuyệt đối không được sai.)* |
| Trang | はい、<ruby>覚<rt>おぼ</rt></ruby>えました。<ruby>袖<rt>そで</rt></ruby>はどう<ruby>畳<rt>たた</rt></ruby>みますか？<br>*(Vâng, em nhớ rồi. Tay áo gấp thế nào ạ?)* |
| Yuna | <ruby>袖<rt>そで</rt></ruby>を<ruby>身頃<rt>みごろ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す。<ruby>袖口<rt>そでぐち</rt></ruby>が<ruby>下<rt>した</rt></ruby>に<ruby>来<rt>く</rt></ruby>るように。<br>*(Gấp tay áo lên trên thân áo. Để miệng tay áo úp xuống.)* |
| Trang | こうですね。<ruby>確認<rt>かくにん</rt></ruby>ありがとうございます。<br>*(Thế này phải không ạ. Em cảm ơn chị xác nhận.)* |
| Yuna | <ruby>最後<rt>さいご</rt></ruby>に<ruby>半分<rt>はんぶん</rt></ruby>に<ruby>折<rt>お</rt></ruby>って、<ruby>帯<rt>おび</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>に<ruby>乗<rt>の</rt></ruby>せて<ruby>完成<rt>かんせい</rt></ruby>。<br>*(Cuối cùng gấp đôi, đặt obi lên trên là xong.)* |

---

## Tình huống 5 — Phòng nghỉ · 22:00 đêm trước thi, Trang lo lắng, Yuna động viên

| Vai | Lời thoại |
|---|---|
| Trang | ユナ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>です。<ruby>不安<rt>ふあん</rt></ruby>で<ruby>眠<rt>ねむ</rt></ruby>れません。<br>*(Chị Yuna, mai rồi. Em lo quá ngủ không được.)* |
| Yuna | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>ちゃんとやった。<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>取<rt>と</rt></ruby>れたでしょう？<br>*(Yên tâm, 2 tuần em đã ôn đàng hoàng. Đề cũ 3 vòng đều qua điểm đậu mà?)* |
| Trang | はい、でも<ruby>本番<rt>ほんばん</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>うかなって…<br>*(Vâng, nhưng hôm thi thật có thể khác…)* |
| Yuna | <ruby>大事<rt>だいじ</rt></ruby>なポイント、もう<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>。<ruby>分<rt>わ</rt></ruby>からない<ruby>問題<rt>もんだい</rt></ruby>は？<br>*(Điểm quan trọng, một lần nữa. Câu không biết thì làm sao?)* |
| Trang | <ruby>飛<rt>と</rt></ruby>ばして<ruby>後<rt>あと</rt></ruby>で<ruby>戻<rt>もど</rt></ruby>る。<ruby>時間<rt>じかん</rt></ruby>を<ruby>無駄<rt>むだ</rt></ruby>にしない。<br>*(Bỏ qua rồi quay lại sau. Không phí thời gian.)* |
| Yuna | <ruby>実技<rt>じつぎ</rt></ruby>でミスしたら？<br>*(Lỡ thực hành sai thì?)* |
| Trang | <ruby>慌<rt>あわ</rt></ruby>てない、すぐ<ruby>直<rt>なお</rt></ruby>す、<ruby>謝<rt>あやま</rt></ruby>らない。<br>*(Không cuống, sửa ngay, không xin lỗi.)* |
| Yuna | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>起<rt>お</rt></ruby>きて、<ruby>朝食<rt>ちょうしょく</rt></ruby><ruby>食<rt>た</rt></ruby>べて、<ruby>会場<rt>かいじょう</rt></ruby>に<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>って。お<ruby>守<rt>まも</rt></ruby>り、これあげる。<br>*(Hoàn hảo. 6 giờ rưỡi sáng dậy, ăn sáng, đến địa điểm sớm. Lá bùa này chị tặng em.)* |
| Trang | （<ruby>涙<rt>なみだ</rt></ruby><ruby>目<rt>め</rt></ruby>で）<ruby>先輩<rt>せんぱい</rt></ruby>、ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Mắt rưng rưng. Chị, em cảm ơn. Em sẽ cố gắng.)* |

---

## Tình huống 6 — Cổng hội trường thi · 8:30 ngày thi, Trang nhận số báo danh

| Vai | Lời thoại |
|---|---|
| Nhân viên | おはようございます。<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証<rt>みぶんしょう</rt></ruby>をお<ruby>見<rt>み</rt></ruby>せください。<br>*(Chào buổi sáng. Cho tôi xem phiếu báo thi và giấy tờ tuỳ thân.)* |
| Trang | はい、こちらです。<ruby>在留<rt>ざいりゅう</rt></ruby>カードでよろしいでしょうか。<br>*(Vâng, đây ạ. Thẻ lưu trú được không ạ?)* |
| Nhân viên | はい、<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>27<rt>にじゅうなな</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>学科<rt>がっか</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>A<ruby>室<rt>しつ</rt></ruby>です。<br>*(Vâng, được. Số báo danh 27, phòng lý thuyết tầng 2 phòng A.)* |
| Trang | <ruby>実技<rt>じつぎ</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>はどこになりますか？<br>*(Phòng thực hành ở đâu ạ?)* |
| Nhân viên | <ruby>午後<rt>ごご</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>B<ruby>室<rt>しつ</rt></ruby>です。<ruby>昼食<rt>ちゅうしょく</rt></ruby><ruby>後<rt>ご</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby>にお<ruby>越<rt>こ</rt></ruby>しください。<br>*(Từ 1 giờ chiều ở tầng 3 phòng B. Sau bữa trưa quý vị quay lại quầy tiếp tân nhé.)* |
| Trang | かしこまりました。ありがとうございます。<br>*(Em rõ rồi ạ. Cảm ơn chị.)* |

---

## Tình huống 7 — Phòng thi lý thuyết · 9:00, Trang chào giám thị bên cạnh

| Vai | Lời thoại |
|---|---|
| Trang | おはようございます。となり、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Em xin phép ngồi bên cạnh anh/chị.)* |
| Thí sinh bên cạnh | おはようございます。<ruby>緊張<rt>きんちょう</rt></ruby>しますね。<br>*(Chào buổi sáng. Hồi hộp nhỉ.)* |
| Trang | はい、<ruby>初<rt>はじ</rt></ruby>めての<ruby>検定<rt>けんてい</rt></ruby>なので。<br>*(Vâng, vì lần đầu thi kiểm định ạ.)* |
| Giám thị | これより<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>をお<ruby>切<rt>き</rt></ruby>りください。<ruby>試験<rt>しけん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>60<rt>ろくじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Bây giờ bắt đầu thi lý thuyết. Mong các bạn tắt điện thoại. Thời gian thi 60 phút.)* |
| Trang | （<ruby>心<rt>こころ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で：<ruby>深呼吸<rt>しんこきゅう</rt></ruby>…<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ユナ<ruby>先輩<rt>せんぱい</rt></ruby>のお<ruby>守<rt>まも</rt></ruby>りがある）<br>*(Trong lòng: hít sâu… ổn thôi, có bùa của chị Yuna.)* |
| Giám thị | では、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vậy, mời các bạn bắt đầu.)* |

---

## Tình huống 8 — Phòng thi thực hành · 13:30, Trang chào 試験官 và bốc thăm hạng mục

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>27<rt>にじゅうなな</rt></ruby><ruby>番<rt>ばん</rt></ruby>、チャン・ティ・トラン<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Số báo danh 27, em là Trần Thị Trang. Mong các thầy xem xét ạ.)* |
| 試験官 | はい、こんにちは。リラックスしてください。まず、<ruby>抽選<rt>ちゅうせん</rt></ruby>で<ruby>実技<rt>じつぎ</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めます。こちらから<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>引<rt>ひ</rt></ruby>いてください。<br>*(Vâng, chào em. Em thư giãn nhé. Trước hết, bốc thăm thứ tự hạng mục. Em rút 1 phiếu từ đây.)* |
| Trang | はい。…「<ruby>1<rt>いち</rt></ruby>．<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>き → <ruby>2<rt>に</rt></ruby>．<ruby>浴衣<rt>ゆかた</rt></ruby><ruby>畳<rt>たた</rt></ruby>み → <ruby>3<rt>さん</rt></ruby>．<ruby>お茶<rt>おちゃ</rt></ruby><ruby>接客<rt>せっきゃく</rt></ruby>」です。<br>*(Vâng. …"1. Trải futon → 2. Gấp yukata → 3. Phục vụ trà".)* |
| 試験官 | はい、ではその<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>行<rt>おこな</rt></ruby>っていただきます。<ruby>各<rt>かく</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>の<ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>はご<ruby>存知<rt>ぞんじ</rt></ruby>ですね？<br>*(Vâng, em sẽ thi theo thứ tự đó. Thời gian giới hạn mỗi hạng mục em biết rồi nhỉ?)* |
| Trang | はい、<ruby>布団<rt>ふとん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>浴衣<rt>ゆかた</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、お<ruby>茶<rt>ちゃ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でございます。<br>*(Vâng, futon 5 phút, yukata 3 phút, trà 10 phút ạ.)* |
| 試験官 | <ruby>正<rt>ただ</rt></ruby>しいです。では<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>き、<ruby>始<rt>はじ</rt></ruby>めてください。「<ruby>始<rt>はじ</rt></ruby>めます」と<ruby>言<rt>い</rt></ruby>ってからストップウォッチを<ruby>押<rt>お</rt></ruby>します。<br>*(Đúng rồi. Vậy trải futon, bắt đầu. Em nói "bắt đầu" thì tôi bấm đồng hồ.)* |
| Trang | はい。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Vâng. Em xin phép. Bắt đầu.)* |

---

## Tình huống 9 — Phòng thi · 13:50, Trang đang phục vụ trà, hỏi đáp với khách giả định

| Vai | Lời thoại |
|---|---|
| Trang | （<ruby>襖<rt>ふすま</rt></ruby>の<ruby>外<rt>そと</rt></ruby>でひざまずく）<ruby>失礼<rt>しつれい</rt></ruby>いたします。お<ruby>茶<rt>ちゃ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたしました。<br>*(Quỳ ngoài cửa trượt. Em xin phép. Em đem trà đến.)* |
| 試験官 (khách giả) | はい、どうぞ。<br>*(Vâng, mời cô.)* |
| Trang | （<ruby>襖<rt>ふすま</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>で<ruby>開<rt>あ</rt></ruby>ける）<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Mở cửa trượt 3 nhịp. Em xin phép vào.)* |
| 試験官 | お<ruby>名前<rt>なまえ</rt></ruby>は？<br>*(Cô tên gì?)* |
| Trang | <ruby>仲居<rt>なかい</rt></ruby>のチャンと<ruby>申<rt>もう</rt></ruby>します。ご<ruby>用<rt>よう</rt></ruby>がございましたら、いつでもお<ruby>声<rt>こえ</rt></ruby>がけくださいませ。<br>*(Em là nakai tên Trang ạ. Quý khách có việc gì xin gọi em bất cứ lúc nào.)* |
| 試験官 | このお<ruby>茶<rt>ちゃ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>のお<ruby>茶<rt>ちゃ</rt></ruby>ですか？<br>*(Trà này là loại gì vậy?)* |
| Trang | <ruby>京都<rt>きょうと</rt></ruby><ruby>宇治<rt>うじ</rt></ruby>の<ruby>煎茶<rt>せんちゃ</rt></ruby>でございます。お<ruby>茶請<rt>ちゃう</rt></ruby>けは<ruby>当館<rt>とうかん</rt></ruby><ruby>名物<rt>めいぶつ</rt></ruby>の<ruby>八つ橋<rt>やつはし</rt></ruby>でございます。<br>*(Là sencha vùng Uji Kyoto ạ. Đồ ăn kèm là yatsuhashi đặc sản của ryokan ạ.)* |
| 試験官 | <ruby>夕食<rt>ゆうしょく</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>から？<br>*(Bữa tối mấy giờ?)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>食事<rt>しょくじ</rt></ruby>は<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>からでございます。お<ruby>部屋<rt>へや</rt></ruby>へお<ruby>運<rt>はこ</rt></ruby>びいたします。<br>*(Bữa tối hôm nay từ 6 rưỡi ạ. Em sẽ đem đến phòng cho quý khách.)* |
| 試験官 | ありがとう。<br>*(Cảm ơn.)* |
| Trang | では、<ruby>失礼<rt>しつれい</rt></ruby>いたします。（<ruby>後<rt>うし</rt></ruby>ろ<ruby>向<rt>む</rt></ruby>きで<ruby>襖<rt>ふすま</rt></ruby>を<ruby>閉<rt>し</rt></ruby>める）<br>*(Vậy em xin phép. Lùi mặt đóng cửa.)* |

---

## Tình huống 10 — Phòng thi · 14:05, 試験官 hỏi câu phụ vệ sinh-an toàn

| Vai | Lời thoại |
|---|---|
| 試験官 | トランさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>最後<rt>さいご</rt></ruby>に<ruby>口頭<rt>こうとう</rt></ruby>で<ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>します。<br>*(Cô Trang, cảm ơn cô. Cuối cùng tôi sẽ hỏi miệng 3 câu.)* |
| Trang | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong thầy ạ.)* |
| 試験官 | <ruby>食中毒<rt>しょくちゅうどく</rt></ruby><ruby>予防<rt>よぼう</rt></ruby>の<ruby>三原則<rt>さんげんそく</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Ba nguyên tắc phòng ngộ độc thực phẩm là gì?)* |
| Trang | はい。「<ruby>付<rt>つ</rt></ruby>けない、<ruby>増<rt>ふ</rt></ruby>やさない、やっつける」でございます。<br>*(Vâng. "Không để dính, không để tăng, tiêu diệt" ạ.)* |
| 試験官 | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>火災<rt>かさい</rt></ruby><ruby>発生<rt>はっせい</rt></ruby><ruby>時<rt>じ</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>誘導<rt>ゆうどう</rt></ruby>する<ruby>時<rt>とき</rt></ruby>の<ruby>注意点<rt>ちゅういてん</rt></ruby>は？<br>*(Đúng. Khi có hoả hoạn, dẫn khách thoát chú ý điều gì?)* |
| Trang | <ruby>低<rt>ひく</rt></ruby>い<ruby>姿勢<rt>しせい</rt></ruby>で、<ruby>濡<rt>ぬ</rt></ruby>れたタオルで<ruby>口<rt>くち</rt></ruby>と<ruby>鼻<rt>はな</rt></ruby>を<ruby>覆<rt>おお</rt></ruby>い、エレベーターは<ruby>使用<rt>しよう</rt></ruby>せず、<ruby>階段<rt>かいだん</rt></ruby>で<ruby>避難<rt>ひなん</rt></ruby>するようにご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Tư thế thấp, lấy khăn ướt che miệng mũi, không dùng thang máy, dùng cầu thang bộ thoát ạ.)* |
| 試験官 | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>最後<rt>さいご</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>布団<rt>ふとん</rt></ruby>の<ruby>寝<rt>ね</rt></ruby><ruby>方<rt>かた</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>、どうしますか？<br>*(Tuyệt. Cuối cùng, khách nước ngoài không biết cách nằm futon thì làm sao?)* |
| Trang | <ruby>実際<rt>じっさい</rt></ruby>に<ruby>身振<rt>みぶ</rt></ruby>り<ruby>手振<rt>てぶ</rt></ruby>りでお<ruby>見<rt>み</rt></ruby>せして、ラベルや<ruby>絵<rt>え</rt></ruby>でも<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>英語<rt>えいご</rt></ruby>の<ruby>翻訳<rt>ほんやく</rt></ruby>カードもご<ruby>用意<rt>ようい</rt></ruby>しております。<br>*(Em sẽ làm điệu bộ chỉ tận tay, kèm dùng nhãn và tranh để giải thích. Em có sẵn thẻ tiếng Anh ạ.)* |
| 試験官 | <ruby>結構<rt>けっこう</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Tốt rồi. Cảm ơn cô.)* |
| Trang | ありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em cảm ơn ạ. Em xin phép.)* |

---

## Tình huống 11 — Ngoài cổng hội trường · 15:30, Trang gặp Yuna đang đợi

| Vai | Lời thoại |
|---|---|
| Yuna | チャン！どうだった？<br>*(Trang! Sao rồi?)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>！<ruby>待<rt>ま</rt></ruby>っていてくれたんですか？<br>*(Chị! Chị đợi em ạ?)* |
| Yuna | もちろん。<ruby>学科<rt>がっか</rt></ruby>は？<br>*(Tất nhiên. Lý thuyết sao?)* |
| Trang | <ruby>40<rt>よんじゅっ</rt></ruby><ruby>問中<rt>もんちゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>分<rt>わ</rt></ruby>からなかったです。<ruby>労働<rt>ろうどう</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby>の<ruby>条文<rt>じょうぶん</rt></ruby>がややこしくて…<br>*(40 câu thì 3 câu không biết ạ. Mấy điều luật an toàn lao động rối quá…)* |
| Yuna | <ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>ぐらいなら<ruby>合格<rt>ごうかく</rt></ruby><ruby>圏内<rt>けんない</rt></ruby>。<ruby>実技<rt>じつぎ</rt></ruby>は？<br>*(3 câu là vẫn trong vùng đậu. Thực hành thì?)* |
| Trang | <ruby>布団<rt>ふとん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>浴衣<rt>ゆかた</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>50<rt>ごじゅっ</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、お<ruby>茶<rt>ちゃ</rt></ruby>はOK。<ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>答<rt>こた</rt></ruby>えられました！<br>*(Futon 4 phút 40, yukata 2 phút 50, trà OK. Vấn đáp 3 câu trả lời được hết ạ!)* |
| Yuna | やった！<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>だよ。お<ruby>祝<rt>いわ</rt></ruby>いに<ruby>抹茶<rt>まっちゃ</rt></ruby>パフェ<ruby>食<rt>た</rt></ruby>べに<ruby>行<rt>い</rt></ruby>こう。<br>*(Tuyệt! Chắc chắn đậu. Ăn mừng đi ăn parfait matcha thôi.)* |
| Trang | はい、ご<ruby>馳走<rt>ちそう</rt></ruby>します！<br>*(Vâng, em mời chị!)* |
| Yuna | <ruby>逆<rt>ぎゃく</rt></ruby>、<ruby>逆<rt>ぎゃく</rt></ruby>。<ruby>先輩<rt>せんぱい</rt></ruby>がご<ruby>馳走<rt>ちそう</rt></ruby>するの。<br>*(Ngược, ngược. Đàn chị mời mới đúng.)* |

---

## Tình huống 12 — 4 tuần sau, văn phòng 女将 · 10:00, Trang nhận giấy đậu

| Vai | Lời thoại |
|---|---|
| 女将 | トランさん、<ruby>合格<rt>ごうかく</rt></ruby><ruby>通知<rt>つうち</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きましたよ。<br>*(Trang, giấy báo đậu đến rồi này.)* |
| Trang | （<ruby>封筒<rt>ふうとう</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）…ありがとうございます。<br>*(Nhận phong bì. …Em cảm ơn ạ.)* |
| 女将 | <ruby>開<rt>あ</rt></ruby>けてみて。<br>*(Mở ra xem đi.)* |
| Trang | （<ruby>封<rt>ふう</rt></ruby>を<ruby>切<rt>き</rt></ruby>る）「<ruby>宿泊<rt>しゅくはく</rt></ruby>サービス<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>　<ruby>合格<rt>ごうかく</rt></ruby>」…<ruby>合格<rt>ごうかく</rt></ruby>です！<br>*(Cắt phong bì. "Kỹ năng kiểm định dịch vụ lưu trú cấp 3 — Đậu"… Em đậu rồi!)* |
| 女将 | おめでとうございます。<ruby>学科<rt>がっか</rt></ruby><ruby>85<rt>はちじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>92<rt>きゅうじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>成績<rt>せいせき</rt></ruby>です。<br>*(Chúc mừng em. Lý thuyết 85, thực hành 92. Thành tích tuyệt vời.)* |
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、ユナ<ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<br>*(Thưa bà chủ, là nhờ chị Yuna ạ.)* |
| 女将 | トランさんの<ruby>努力<rt>どりょく</rt></ruby>もです。<ruby>次<rt>つぎ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>。<ruby>来年<rt>らいねん</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>にしましょうね。<br>*(Cả nỗ lực của Trang nữa. Tiếp theo là cấp 2. Đặt làm mục tiêu năm sau nhé.)* |
| Trang | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |
| 女将 | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>発表<rt>はっぴょう</rt></ruby>します。みんなの<ruby>励<rt>はげ</rt></ruby>みになりますから。<br>*(Họp sáng nay sẽ thông báo. Để cổ vũ mọi người.)* |
| Trang | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。ありがとうございます。<br>*(Em không dám ạ. Em cảm ơn.)* |

---

## Tình huống 13 — Cảnh tiếng Việt — Phòng ký túc · 21:00, Trang gọi video về cho bố

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Trang | Bố ơi, con thi đậu rồi! Cấp 3 **宿泊サービス** đó bố. |
| Bố | Trời ơi con gái bố giỏi quá. Cấp 3 là cao không con? |
| Trang | Là cấp đầu vào thôi bố, nhưng kanji nhiều lắm, con tưởng rớt rồi. Bà chủ vừa đưa con giấy đậu, học 85, thực hành 92. |
| Bố | Khá thật. Đi học ở Huế hồi xưa con đâu có giỏi vậy. |
| Trang | Tại bên này có chị Yuna kèm. Chị người Hàn, năm 3 rồi, đậu cấp 3 hồi năm ngoái. Chị kèm con suốt 2 tuần, đêm nào cũng 1 tiếng. |
| Bố | Vậy con đãi chị nó bữa ngon nha. Đừng quên ơn người ta. |
| Trang | Dạ con đãi rồi, **抹茶パフェ**. Mà chị cấm con trả tiền, chị bảo "đàn chị mời đàn em mới đúng". |
| Bố | Người Hàn dễ thương ha. À cấp 2 bao giờ thi? |
| Trang | Phải sau **2 năm** kinh nghiệm thực tế. Con thi năm sau, lúc đó con đi được hơn 2 năm rồi. |
| Bố | Cứ vậy mà cố nha. Bố mẹ với em ở nhà yên tâm. |
| Trang | Dạ. Mai con gửi giấy đậu chụp gửi qua zalo cho mẹ xem nha. Con xin phép ngủ trước, mai có đoàn lớn. |
| Bố | Ngủ ngon con. Bố thương. |

---

## Đọng lại chương

**Mẫu câu thi 検定:**
- **「受験番号◯番、〜と申します。よろしくお願いいたします」** — chào đầu thi
- **「失礼いたします。始めます」** — bắt đầu hạng mục thực hành
- **「〜でございます」** — keigo trả lời 試験官 và khách giả định
- **「ご用がございましたら、いつでもお声がけくださいませ」** — câu chốt giới thiệu bản thân

**Thuật ngữ kiểm định bắt buộc nhớ:**
- 食中毒予防三原則: **「付けない、増やさない、やっつける」**
- 火災避難: **低い姿勢・濡れタオル・階段使用**
- 右前 (vạt phải trước) — sống / 左前 — chết

**Mẫu câu ôn thi với sempai:**
- 「過去問を3回繰り返せば合格できる」
- 「分からない問題は飛ばして後で戻る」
- 「慌てない、すぐ直す、謝らない」

**Từ vựng:** 検定・学科・実技・受験票・受験番号・抽選・布団敷き・浴衣畳み・煎茶・宇治・八つ橋・食中毒・避難・誘導・条文・成績・合格通知

---

## Bí quyết chương

- **検定 là bậc thang sự nghiệp ryokan**: 3級 (1 năm) → 2級 (3 năm) → 1級 (7 năm) — mỗi cấp tăng lương cơ bản theo nội quy nhiều ryokan lớn.
- **右前/左前**: vạt phải đè trước (nhìn từ phía mình) là cách mặc của người sống; ngược lại là cho người chết — sai trong thi là loại trực tiếp.
- **3 bước mở 襖** (cửa trượt): quỳ → đẩy 10cm → đẩy hết → đứng lên — lùi mặt đóng ngược lại; đây là điểm chấm cứng.
- **Cách trả lời 試験官**: vẫn dùng kính ngữ keigo như với khách, KHÔNG xưng "私" mà có thể nói "仲居の◯◯と申します" để định danh nghề.
- **食中毒三原則 6 chữ**: 「付けない・増やさない・やっつける」 — câu hỏi vấn đáp xuất hiện hơn 70% các năm.
- **お守り của sempai**: văn hoá Nhật trao お守り trước thi là biểu hiện kèm cặp; nhận và mang vào phòng thi để khỏi xui xẻo.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 検定 | けんてい | KIỂM ĐỊNH | kiểm định, kỳ thi đánh giá |
| 技能 | ぎのう | KỸ NĂNG | kỹ năng |
| 宿泊 | しゅくはく | TÚC BẠC | lưu trú |
| 学科 | がっか | HỌC KHOA | lý thuyết, môn học |
| 実技 | じつぎ | THỰC KỸ | thực hành |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi cũ |
| 合格 | ごうかく | HỢP CÁCH | đậu, đạt |
| 衛生 | えいせい | VỆ SINH | vệ sinh |
| 管理 | かんり | QUẢN LÝ | quản lý |
| 清潔 | せいけつ | THANH KHIẾT | sạch sẽ |
| 食中毒 | しょくちゅうどく | THỰC TRÚNG ĐỘC | ngộ độc thực phẩm |
| 予防 | よぼう | DỰ PHÒNG | phòng ngừa |
| 三原則 | さんげんそく | TAM NGUYÊN TẮC | ba nguyên tắc |
| 労働 | ろうどう | LAO ĐỘNG | lao động |
| 安全 | あんぜん | AN TOÀN | an toàn |
| 条文 | じょうぶん | ĐIỀU VĂN | điều khoản (luật) |
| 布団 | ふとん | BỐ ĐOÀN | nệm futon |
| 敷布団 | しきぶとん | PHU BỐ ĐOÀN | nệm trải dưới |
| 掛け布団 | かけぶとん | QUẢI BỐ ĐOÀN | chăn đắp |
| 枕 | まくら | CHẨM | gối |
| 角 | かど | GIÁC | góc |
| 三角折り | さんかくおり | TAM GIÁC CHIẾT | gấp tam giác |
| 浴衣 | ゆかた | DỤC Y | yukata |
| 身頃 | みごろ | THÂN | thân áo |
| 袖 | そで | TỤ | tay áo |
| 帯 | おび | ĐỚI | obi, dây thắt lưng |
| 右前 | みぎまえ | HỮU TIỀN | vạt phải trước (người sống) |
| 左前 | ひだりまえ | TẢ TIỀN | vạt trái trước (người chết) |
| 死装束 | しにしょうぞく | TỬ TRANG THÚC | y phục tang |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu báo thi |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |
| 在留カード | ざいりゅうかーど | TẠI LƯU | thẻ lưu trú |
| 試験官 | しけんかん | THÍ NGHIỆM QUAN | giám khảo |
| 抽選 | ちゅうせん | TRỪU TUYỂN | rút thăm |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | thời gian giới hạn |
| 襖 | ふすま | — | cửa trượt giấy |
| 煎茶 | せんちゃ | TIỄN TRÀ | trà sencha |
| 宇治 | うじ | VŨ TRỊ | Uji (vùng nổi tiếng trà) |
| 八つ橋 | やつはし | BÁT KIỀU | bánh yatsuhashi (đặc sản Kyoto) |
| 当館 | とうかん | ĐƯƠNG QUÁN | ryokan của chúng tôi |
| 名物 | めいぶつ | DANH VẬT | đặc sản |
| 火災 | かさい | HOẢ TAI | hoả hoạn |
| 避難 | ひなん | TỴ NẠN | sơ tán, lánh nạn |
| 誘導 | ゆうどう | DỤ ĐẠO | dẫn dắt, hướng dẫn thoát |
| 姿勢 | しせい | TƯ THẾ | tư thế |
| 階段 | かいだん | GIAI ĐOẠN | cầu thang bộ |
| 身振り手振り | みぶりてぶり | THÂN CHẤN THỦ CHẤN | điệu bộ tay chân |
| 翻訳 | ほんやく | PHIÊN DỊCH | dịch thuật |
| お守り | おまもり | THỦ | lá bùa hộ mệnh |
| 通知 | つうち | THÔNG TRI | thông báo, giấy báo |
| 成績 | せいせき | THÀNH TÍCH | thành tích, điểm số |
| 努力 | どりょく | NỖ LỰC | nỗ lực |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 励み | はげみ | LỆ | sự cổ vũ, động viên |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000007, 800000047, NULL, 'markdown_book', 'T7. Mùa hè cao điểm — điều phối check-in nhiều đoàn (真夏繁忙期)', '# Sách khách sạn năm 2 · T7. Mùa hè cao điểm — điều phối check-in nhiều đoàn (真夏繁忙期)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế, năm thứ 2 tại Ryokan Ouhuusou Kyoto). Học các mẫu hội thoại tiếng Nhật của **フロント・コーディネーター** mùa cao điểm: dùng **〜お願いできますか** điều phối kohai/đồng nghiệp, **〜ております** cập nhật trạng thái phòng, **誠に申し訳ございません** đối ứng khi khách phải đợi, dùng **手分け** chia ca, **インカム** liên lạc nội bộ, và xử lý **オーバーブッキング** (quá đặt phòng) với khách bằng kính ngữ.

---

## Bối cảnh

Tháng 8 năm 2026. **お盆** (lễ Obon 13-16/8) và mùa nghỉ hè trùng nhau, Ryokan Ouhuusou kín phòng cả tuần, **稼働率 100%**. Mỗi ngày 18 phòng × trung bình 3 khách = 54 khách check-in cùng cửa sổ 14:00-17:00, check-out 9:00-11:00. Trang đang là **フロント主任補佐** (lễ tân chính phụ tá), cầm tablet điều phối kohai Mei và 3 nhân viên thời vụ アルバイト sinh viên. Hôm nay là 14/8, đỉnh của đỉnh: 22 phòng đặt, 1 cancel sát giờ, 1 đoàn bus đến sớm 30 phút, 1 nhầm phòng đôi/phòng đơn. Chương này tập trung mẫu câu điều phối hiện trường + xin lỗi + làm trơn cảm xúc khách.

---

## Tình huống 1 — Phòng họp sáng · 7:30, 女将 giao nhiệm vụ điều phối cho Trang

| Vai | Lời thoại |
|---|---|
| 女将 | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>盆<rt>ぼん</rt></ruby><ruby>期間<rt>きかん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby><ruby>最<rt>もっと</rt></ruby>も<ruby>忙<rt>いそが</rt></ruby>しい<ruby>1日<rt>いちにち</rt></ruby>です。<br>*(Cả nhà, chào buổi sáng. Hôm nay là ngày bận nhất trong dịp Obon.)* |
| Cả phòng | おはようございます！<br>*(Chào buổi sáng!)* |
| 女将 | トランさん、<ruby>本日<rt>ほんじつ</rt></ruby>のフロント<ruby>主任<rt>しゅにん</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。タブレットで<ruby>客室<rt>きゃくしつ</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>管理<rt>かんり</rt></ruby>してください。<br>*(Trang, nhờ em làm phụ tá lễ tân chính hôm nay. Em quản lý tình trạng phòng trên tablet nhé.)* |
| Trang | はい、かしこまりました。<ruby>本日<rt>ほんじつ</rt></ruby>のチェックインは<ruby>何<rt>なん</rt></ruby><ruby>組<rt>くみ</rt></ruby>でしょうか。<br>*(Vâng, em rõ ạ. Hôm nay có bao nhiêu đoàn check-in ạ?)* |
| 女将 | <ruby>22<rt>にじゅうに</rt></ruby><ruby>組<rt>くみ</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>58<rt>ごじゅうはち</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>。バス<ruby>団体<rt>だんたい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>組<rt>くみ</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>が<ruby>15時<rt>じゅうごじ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(22 đoàn, tổng 58 khách. Đoàn xe bus 12 người dự kiến đến lúc 15 giờ.)* |
| Trang | <ruby>客室<rt>きゃくしつ</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>は？<br>*(Tình hình dọn phòng đang ra sao ạ?)* |
| 女将 | <ruby>清掃<rt>せいそう</rt></ruby><ruby>係<rt>がかり</rt></ruby>に<ruby>後<rt>あと</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>してください。ランさんと<ruby>学生<rt>がくせい</rt></ruby>アルバイト<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>はトランさんの<ruby>指示<rt>しじ</rt></ruby>で<ruby>動<rt>うご</rt></ruby>きます。<br>*(Em xác nhận với bộ phận dọn phòng sau. Mei và 3 bạn sinh viên thời vụ sẽ làm theo chỉ thị của em.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。インカムは<ruby>4<rt>よん</rt></ruby><ruby>台<rt>だい</rt></ruby><ruby>使<rt>つか</rt></ruby>いますか？<br>*(Em đã rõ ạ. Bộ đàm dùng 4 cái phải không ạ?)* |
| 女将 | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ em.)* |

---

## Tình huống 2 — Khu dọn phòng · 8:00, Trang phối hợp với 清掃主任 về tiến độ

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>松田<rt>まつだ</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>清掃<rt>せいそう</rt></ruby><ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Chị Matsuda, chào chị. Chị cho em biết tiến độ dọn phòng hôm nay được không ạ?)* |
| Matsuda | <ruby>現在<rt>げんざい</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>室中<rt>しつちゅう</rt></ruby><ruby>9<rt>きゅう</rt></ruby><ruby>室<rt>しつ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>13<rt>じゅうさん</rt></ruby><ruby>室<rt>しつ</rt></ruby><ruby>残<rt>のこ</rt></ruby>っています。<ruby>14時<rt>じゅうよじ</rt></ruby>には<ruby>全室<rt>ぜんしつ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>します。<br>*(Hiện 22 phòng đã xong 9. Còn 13 phòng. 14 giờ là xong hết.)* |
| Trang | バス<ruby>団体<rt>だんたい</rt></ruby>が<ruby>15時<rt>じゅうごじ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>です。<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>と<ruby>竹<rt>たけ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>していただけますか？<br>*(Đoàn bus 15 giờ đến. Chị ưu tiên phòng Matsu-no-ma và Take-no-ma giúp em được không?)* |
| Matsuda | <ruby>了解<rt>りょうかい</rt></ruby>。バス<ruby>団体<rt>だんたい</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>6<rt>ろく</rt></ruby><ruby>室<rt>しつ</rt></ruby>を<ruby>14時<rt>じゅうよじ</rt></ruby><ruby>半<rt>はん</rt></ruby>までに<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Rõ. 6 phòng cho đoàn bus tôi xong trước 14 rưỡi.)* |
| Trang | ありがとうございます。<ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>きの<ruby>応援<rt>おうえん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>でしたら、<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>5時<rt>ごじ</rt></ruby>からアルバイト<ruby>1<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>せます。<br>*(Em cảm ơn. Nếu cần thêm người trải futon, từ 5 giờ chiều em điều 1 bạn thời vụ qua được ạ.)* |
| Matsuda | <ruby>助<rt>たす</rt></ruby>かります。<ruby>21<rt>にじゅういち</rt></ruby><ruby>室分<rt>しつぶん</rt></ruby><ruby>布団<rt>ふとん</rt></ruby><ruby>敷<rt>し</rt></ruby>き、<ruby>1<rt>いち</rt></ruby><ruby>名増<rt>めいぞう</rt></ruby><ruby>員<rt>いん</rt></ruby>でちょうどいい。<br>*(Đỡ quá. 21 phòng trải futon, thêm 1 người là vừa.)* |
| Trang | では、<ruby>17時<rt>じゅうしちじ</rt></ruby>に<ruby>大山<rt>おおやま</rt></ruby>さんをこちらへ<ruby>向<rt>む</rt></ruby>かわせます。<br>*(Vậy 5 giờ em cho bạn Oyama qua chỗ chị.)* |

---

## Tình huống 3 — Quầy lễ tân · 11:00, Trang dặn Mei và 2 アルバイト

| Vai | Lời thoại |
|---|---|
| Trang | みんな、<ruby>集<rt>あつ</rt></ruby>まって。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Mọi người tập trung. Chị giải thích phân chia công việc hôm nay.)* |
| Mei + アルバイト | はい！<br>*(Vâng!)* |
| Trang | ランさんはフロントで<ruby>私<rt>わたし</rt></ruby>とチェックイン<ruby>対応<rt>たいおう</rt></ruby>。<ruby>大山<rt>おおやま</rt></ruby>さんは<ruby>玄関<rt>げんかん</rt></ruby>で<ruby>荷物<rt>にもつ</rt></ruby>の<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>りと<ruby>靴<rt>くつ</rt></ruby><ruby>整理<rt>せいり</rt></ruby>。<br>*(Mei làm check-in cùng chị ở quầy lễ tân. Bạn Oyama đứng cửa nhận hành lý và xếp giày.)* |
| Oyama | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>靴<rt>くつ</rt></ruby><ruby>札<rt>ふだ</rt></ruby>は<ruby>用意<rt>ようい</rt></ruby>してあります。<br>*(Rõ ạ. Thẻ giày đã chuẩn bị rồi.)* |
| Trang | <ruby>佐藤<rt>さとう</rt></ruby>さんはお<ruby>茶<rt>ちゃ</rt></ruby>とお<ruby>菓子<rt>かし</rt></ruby>のお<ruby>運<rt>はこ</rt></ruby>び、<ruby>鈴木<rt>すずき</rt></ruby>さんは<ruby>客室<rt>きゃくしつ</rt></ruby><ruby>案内<rt>あんない</rt></ruby>です。<br>*(Bạn Sato đem trà bánh, bạn Suzuki dẫn lên phòng.)* |
| Sato | <ruby>抹茶<rt>まっちゃ</rt></ruby>と<ruby>和菓子<rt>わがし</rt></ruby>のセット、<ruby>22<rt>にじゅうに</rt></ruby><ruby>組分<rt>くみぶん</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Set matcha với bánh, 22 đoàn đã chuẩn bị xong.)* |
| Trang | <ruby>素晴<rt>すば</rt></ruby>らしい。インカムのチャンネル<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>私<rt>わたし</rt></ruby>が「<ruby>1<rt>いち</rt></ruby>」、ランさん「<ruby>2<rt>に</rt></ruby>」、<ruby>大山<rt>おおやま</rt></ruby>さん「<ruby>3<rt>さん</rt></ruby>」、<ruby>佐藤<rt>さとう</rt></ruby>「<ruby>4<rt>よん</rt></ruby>」、<ruby>鈴木<rt>すずき</rt></ruby>「<ruby>5<rt>ご</rt></ruby>」。<br>*(Tuyệt. Em xác nhận kênh bộ đàm. Chị "1", Mei "2", Oyama "3", Sato "4", Suzuki "5".)* |
| Cả nhóm | はい！<br>*(Vâng!)* |
| Trang | <ruby>困<rt>こま</rt></ruby>ったらすぐ「<ruby>1<rt>いち</rt></ruby>」<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>しないこと。<br>*(Có gì lúng túng gọi ngay "1" cho chị. Tuyệt đối không tự quyết một mình.)* |

---

## Tình huống 4 — Quầy lễ tân · 13:30, đoàn bus đến sớm 30 phút, Trang xử lý

| Vai | Lời thoại |
|---|---|
| Trang qua intercom | （インカム）<ruby>大山<rt>おおやま</rt></ruby>さん、こちらフロント。バス<ruby>団体<rt>だんたい</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>しました？<br>*(Bộ đàm. Oyama nghe không em. Đoàn bus đến rồi à?)* |
| Oyama | はい、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>早<rt>はや</rt></ruby>く<ruby>到着<rt>とうちゃく</rt></ruby>です。<ruby>添乗員<rt>てんじょういん</rt></ruby>さんが<ruby>確認<rt>かくにん</rt></ruby>を<ruby>求<rt>もと</rt></ruby>めています。<br>*(Vâng, đến sớm 30 phút. Trưởng đoàn đang muốn xác nhận.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>添乗員<rt>てんじょういん</rt></ruby>さんをラウンジへご<ruby>案内<rt>あんない</rt></ruby>してください。お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>にもまずラウンジでお<ruby>待<rt>ま</rt></ruby>ちいただきます。<br>*(Em rõ. Em dẫn trưởng đoàn vào sảnh chờ. Cả đoàn cũng để vào sảnh ngồi đợi.)* |
| Trang ra trưởng đoàn | <ruby>添乗員様<rt>てんじょういんさま</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでございます。<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>客室<rt>きゃくしつ</rt></ruby>の<ruby>清掃<rt>せいそう</rt></ruby>が<ruby>14時半<rt>じゅうよじはん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>でございます。<br>*(Thưa anh trưởng đoàn, anh vất vả rồi. Vô cùng xin lỗi, dọn phòng của chúng tôi dự kiến 14 rưỡi mới xong.)* |
| Trưởng đoàn | あ、そうですか。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>待<rt>ま</rt></ruby>つことになりますね。<br>*(À vậy à. Vậy đợi 1 tiếng nhỉ.)* |
| Trang | はい、<ruby>誠<rt>まこと</rt></ruby>に<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。お<ruby>待<rt>ま</rt></ruby>ちいただく<ruby>間<rt>あいだ</rt></ruby>、<ruby>当館<rt>とうかん</rt></ruby>の<ruby>抹茶<rt>まっちゃ</rt></ruby>と<ruby>和菓子<rt>わがし</rt></ruby>を<ruby>無料<rt>むりょう</rt></ruby>でお<ruby>出<rt>だ</rt></ruby>しいたします。<ruby>大浴場<rt>だいよくじょう</rt></ruby>もご<ruby>利用<rt>りよう</rt></ruby>いただけます。<br>*(Vâng, em vô cùng kính cẩn xin lỗi. Trong lúc đợi, ryokan sẽ mời matcha và bánh miễn phí. Bể tắm lớn cũng đã sẵn sàng cho quý khách dùng ạ.)* |
| Trưởng đoàn | それは<ruby>助<rt>たす</rt></ruby>かります。<ruby>皆<rt>みな</rt></ruby>さんに<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Vậy thì hay quá. Tôi báo cho mọi người.)* |
| Trang | お<ruby>荷物<rt>にもつ</rt></ruby>はこちらで<ruby>一時<rt>いちじ</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりいたします。<ruby>札<rt>ふだ</rt></ruby>をお<ruby>渡<rt>わた</rt></ruby>しいたします。<br>*(Hành lý chúng tôi giữ tạm. Em sẽ đưa thẻ gửi.)* |

---

## Tình huống 5 — Quầy lễ tân · 14:00, Trang phát hiện 1 đặt phòng nhầm phòng đôi/đơn

| Vai | Lời thoại |
|---|---|
| Trang | （タブレットを<ruby>見<rt>み</rt></ruby>ながら<ruby>気付<rt>きづ</rt></ruby>く）あ、<ruby>3<rt>さん</rt></ruby><ruby>時<rt>じ</rt></ruby>チェックインの<ruby>山本様<rt>やまもとさま</rt></ruby>、<ruby>予約<rt>よやく</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>室<rt>しつ</rt></ruby>シングルになっている…<br>*(Nhìn tablet nhận ra. À, khách Yamamoto check-in 3 giờ, đặt 2 người 1 phòng đơn…)* |
| Mei | え？シングルに<ruby>2<rt>に</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>は<ruby>泊<rt>と</rt></ruby>まれませんよね？<br>*(Hả? Phòng đơn 2 người không ở được phải không ạ?)* |
| Trang | <ruby>布団<rt>ふとん</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>組<rt>くみ</rt></ruby>しかない。<ruby>予約<rt>よやく</rt></ruby>サイトの<ruby>入力<rt>にゅうりょく</rt></ruby><ruby>間違<rt>まちが</rt></ruby>いかも。<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Chỉ có 1 bộ futon. Có thể đặt nhầm trên trang web. Để chị hỏi bà chủ.)* |
| Trang qua intercom | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>3<rt>さん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>の<ruby>山本様<rt>やまもとさま</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>室<rt>しつ</rt></ruby>シングルで<ruby>予約<rt>よやく</rt></ruby>されています。<br>*(Thưa bà chủ, em xin lỗi. Khách Yamamoto 3 giờ đến, đặt 2 người 1 phòng đơn.)* |
| 女将 | あら、それはサイトのエラーね。<ruby>空<rt>あ</rt></ruby>き<ruby>部屋<rt>へや</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>は？<br>*(Ôi, là lỗi trang web rồi. Tình hình phòng trống thì sao?)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>満室<rt>まんしつ</rt></ruby>です。ツインへのアップグレードは<ruby>不可<rt>ふか</rt></ruby>。<br>*(Hôm nay full phòng. Không nâng cấp lên twin được ạ.)* |
| 女将 | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>追加<rt>ついか</rt></ruby><ruby>布団<rt>ふとん</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>組<rt>くみ</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>がご<ruby>到着<rt>とうちゃく</rt></ruby>されたら、<ruby>事情<rt>じじょう</rt></ruby>をご<ruby>説明<rt>せつめい</rt></ruby>してください。<br>*(Rõ. Thêm 1 bộ futon miễn phí. Khi khách đến em giải thích hoàn cảnh cho khách.)* |
| Trang | かしこまりました。<ruby>松田<rt>まつだ</rt></ruby>さんに<ruby>追加<rt>ついか</rt></ruby><ruby>布団<rt>ふとん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em rõ ạ. Em nhờ chị Matsuda chuẩn bị thêm 1 bộ futon.)* |

---

## Tình huống 6 — Quầy lễ tân · 14:45, cao điểm 5 đoàn check-in cùng lúc

| Vai | Lời thoại |
|---|---|
| Trang qua intercom | <ruby>全員<rt>ぜんいん</rt></ruby>、こちらフロント。<ruby>5<rt>ご</rt></ruby><ruby>組<rt>くみ</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>チェックイン<ruby>発生<rt>はっせい</rt></ruby>。<ruby>手分<rt>てわ</rt></ruby>けします。<br>*(Toàn đội, lễ tân đây. 5 đoàn check-in đồng thời. Chia tay nhé.)* |
| Trang | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>田中様<rt>たなかさま</rt></ruby>のお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>へ<ruby>先<rt>さき</rt></ruby>にお<ruby>運<rt>はこ</rt></ruby>びお<ruby>願<rt>ねが</rt></ruby>いできますか？<br>*(Bạn Sato đem trà của khách Tanaka lên phòng Matsu trước được không?)* |
| Sato | はい、すぐに！<br>*(Vâng, đi ngay!)* |
| Trang ra khách | <ruby>佐々木様<rt>ささきさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。お<ruby>名前<rt>なまえ</rt></ruby>のご<ruby>確認<rt>かくにん</rt></ruby>、よろしいでしょうか。<br>*(Quý khách Sasaki, em xin lỗi đã để quý khách đợi. Cho em xác nhận tên ạ?)* |
| Sasaki | <ruby>佐々木<rt>ささき</rt></ruby><ruby>太郎<rt>たろう</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>です。<br>*(Sasaki Taro. 2 người.)* |
| Trang | <ruby>佐々木様<rt>ささきさま</rt></ruby>、<ruby>梅<rt>うめ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>でございます。メイ、ご<ruby>記入<rt>きにゅう</rt></ruby>カードのご<ruby>案内<rt>あんない</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Quý khách Sasaki, phòng Ume-no-ma ạ. Mei, hướng dẫn khách điền thẻ giúp chị.)* |
| Mei | はい！<ruby>佐々木様<rt>ささきさま</rt></ruby>、こちらのカードにお<ruby>名前<rt>なまえ</rt></ruby>とご<ruby>住所<rt>じゅうしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng! Quý khách Sasaki, mong quý khách điền tên và địa chỉ vào thẻ này ạ.)* |
| Trang qua intercom | <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>と<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>のご<ruby>案内<rt>あんない</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>松<rt>まつ</rt></ruby>が<ruby>先<rt>さき</rt></ruby>。<br>*(Bạn Suzuki, dẫn phòng Matsu rồi phòng Sakura giúp chị. Matsu trước.)* |
| Suzuki | <ruby>了解<rt>りょうかい</rt></ruby>！<br>*(Rõ!)* |

---

## Tình huống 7 — Quầy lễ tân · 15:00, khách Yamamoto đến, Trang giải thích sự cố đặt nhầm

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>山本様<rt>やまもとさま</rt></ruby>、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<ruby>1<rt>ひと</rt></ruby>つご<ruby>確認<rt>かくにん</rt></ruby>させていただきたいことがございます。<br>*(Thưa quý khách Yamamoto, em cảm ơn quý khách đã đến. Có một việc em xin được xác nhận với quý khách ạ.)* |
| Yamamoto | はい、<ruby>何<rt>なん</rt></ruby>でしょう？<br>*(Vâng, có việc gì vậy?)* |
| Trang | ご<ruby>予約<rt>よやく</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>がシングルルームの<ruby>2<rt>に</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>でいただいております。<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、シングルは<ruby>1<rt>ひと</rt></ruby>つの<ruby>布団<rt>ふとん</rt></ruby>のみのお<ruby>部屋<rt>へや</rt></ruby>になります。<br>*(Đặt phòng của quý khách là phòng đơn cho 2 người. Vô cùng xin lỗi, phòng đơn chỉ có 1 bộ futon ạ.)* |
| Yamamoto | え、そうなんですか？サイトでは「<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>OK」と<ruby>書<rt>か</rt></ruby>いてあったような…<br>*(Ơ, vậy à? Trên web có viết "2 người OK" mà…)* |
| Trang | <ruby>確認<rt>かくにん</rt></ruby>いたしましたところ、サイトの<ruby>表示<rt>ひょうじ</rt></ruby>に<ruby>不<rt>ふ</rt></ruby><ruby>明確<rt>めいかく</rt></ruby>な<ruby>点<rt>てん</rt></ruby>がございました。<ruby>当方<rt>とうほう</rt></ruby>の<ruby>不手際<rt>ふてぎわ</rt></ruby>でございます。<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Em đã kiểm tra, hiển thị trên web có điểm chưa rõ. Là sơ suất của chúng tôi. Em vô cùng xin lỗi.)* |
| Yamamoto | <ruby>別<rt>べつ</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>にできますか？<br>*(Đổi phòng khác được không?)* |
| Trang | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>満室<rt>まんしつ</rt></ruby>のため、お<ruby>部屋<rt>へや</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>はできかねます。しかし、<ruby>追加<rt>ついか</rt></ruby>の<ruby>布団<rt>ふとん</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>組<rt>くみ</rt></ruby>と<ruby>枕<rt>まくら</rt></ruby>を<ruby>無料<rt>むりょう</rt></ruby>でご<ruby>用意<rt>ようい</rt></ruby>いたしますので、<ruby>2<rt>に</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>でお<ruby>休<rt>やす</rt></ruby>みいただけます。<br>*(Hôm nay hết phòng nên không đổi phòng được ạ. Nhưng chúng tôi sẽ chuẩn bị thêm 1 bộ futon và gối miễn phí, để 2 khách nghỉ được ạ.)* |
| Yamamoto | <ruby>狭<rt>せま</rt></ruby>くないですか？<br>*(Có chật không?)* |
| Trang | <ruby>少<rt>すこ</rt></ruby>し<ruby>窮屈<rt>きゅうくつ</rt></ruby>に<ruby>感<rt>かん</rt></ruby>じられるかもしれません。お<ruby>詫<rt>わ</rt></ruby>びとして<ruby>夕食<rt>ゆうしょく</rt></ruby>に<ruby>当館<rt>とうかん</rt></ruby>の<ruby>地酒<rt>じざけ</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>サービスさせていただきます。<br>*(Có thể quý khách cảm thấy hơi chật. Xin lỗi, bữa tối chúng tôi mời quý khách 1 chai rượu sake địa phương của ryokan ạ.)* |
| Yamamoto | <ruby>分<rt>わ</rt></ruby>かりました。それで<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Tôi hiểu rồi. Vậy cũng được.)* |
| Trang | ご<ruby>理解<rt>りかい</rt></ruby>いただき、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Em chân thành cảm ơn quý khách đã thông cảm ạ.)* |

---

## Tình huống 8 — Sảnh chờ · 15:30, đoàn bus được dẫn lên phòng, Trang điều phối

| Vai | Lời thoại |
|---|---|
| Trang ra trưởng đoàn | <ruby>添乗員様<rt>てんじょういんさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。お<ruby>部屋<rt>へや</rt></ruby>のご<ruby>準備<rt>じゅんび</rt></ruby>が<ruby>整<rt>ととの</rt></ruby>いました。<br>*(Anh trưởng đoàn, em xin lỗi đã để anh đợi. Phòng đã chuẩn bị xong.)* |
| Trưởng đoàn | ありがとうございます。<ruby>12<rt>じゅうに</rt></ruby><ruby>名<rt>めい</rt></ruby>、<ruby>6<rt>ろく</rt></ruby><ruby>室<rt>しつ</rt></ruby>でしたね？<br>*(Cảm ơn cô. 12 người 6 phòng phải không?)* |
| Trang | はい、<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>から<ruby>桐<rt>きり</rt></ruby>の<ruby>間<rt>ま</rt></ruby>まで、<ruby>同<rt>おな</rt></ruby>じ<ruby>階<rt>かい</rt></ruby>にご<ruby>用意<rt>ようい</rt></ruby>いたしました。<br>*(Vâng, từ phòng Matsu đến phòng Kiri, em đã sắp xếp ở cùng một tầng ạ.)* |
| Trưởng đoàn | おお、それは<ruby>助<rt>たす</rt></ruby>かる。グループだから<ruby>近<rt>ちか</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>がいいんです。<br>*(Ồ, tốt quá. Đoàn nên gần nhau thì hơn.)* |
| Trang | <ruby>大浴場<rt>だいよくじょう</rt></ruby>は<ruby>16<rt>じゅうろく</rt></ruby><ruby>時<rt>じ</rt></ruby>からご<ruby>利用<rt>りよう</rt></ruby>いただけます。お<ruby>夕食<rt>ゆうしょく</rt></ruby>はバス<ruby>団体専用<rt>だんたいせんよう</rt></ruby>のお<ruby>食事<rt>しょくじ</rt></ruby><ruby>処<rt>どころ</rt></ruby>「<ruby>桜<rt>さくら</rt></ruby>の<ruby>間<rt>ま</rt></ruby>」で<ruby>18時半<rt>じゅうはちじはん</rt></ruby>からとなります。<br>*(Bể tắm lớn từ 4 giờ chiều có thể dùng. Bữa tối tại phòng ăn riêng của đoàn "Sakura-no-ma" bắt đầu lúc 6 rưỡi tối ạ.)* |
| Trưởng đoàn | <ruby>承知<rt>しょうち</rt></ruby>しました。みんなに<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Tôi hiểu rồi. Tôi báo cả đoàn.)* |
| Trang qua intercom | <ruby>鈴木<rt>すずき</rt></ruby>さん<ruby>佐藤<rt>さとう</rt></ruby>さん、バス<ruby>団体<rt>だんたい</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>、<ruby>松<rt>まつ</rt></ruby>から<ruby>桐<rt>きり</rt></ruby>までへご<ruby>案内<rt>あんない</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Suzuki, Sato, đoàn bus 12 khách, dẫn lên từ phòng Matsu đến Kiri giúp chị.)* |

---

## Tình huống 9 — Quầy lễ tân · 16:30, Mei hoảng vì khách lớn tuổi không có thẻ tín dụng

| Vai | Lời thoại |
|---|---|
| Mei qua intercom | （<ruby>小声<rt>こごえ</rt></ruby>でインカム）<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>応援<rt>おうえん</rt></ruby><ruby>お願<rt>おねが</rt></ruby>いします。<br>*(Khẽ bộ đàm. Số 1, số 1, hỗ trợ giúp em.)* |
| Trang | （インカム）はい、メイ、どうした？<br>*(Bộ đàm. Vâng Mei, có chuyện gì?)* |
| Mei | お<ruby>客様<rt>きゃくさま</rt></ruby>がクレジットカードをお<ruby>持<rt>も</rt></ruby>ちでなくて…<ruby>現金<rt>げんきん</rt></ruby>もお<ruby>持<rt>も</rt></ruby>ちでないとおっしゃっていて…<br>*(Khách không có thẻ tín dụng… cũng nói không mang tiền mặt…)* |
| Trang | <ruby>了解<rt>りょうかい</rt></ruby>、すぐ<ruby>行<rt>い</rt></ruby>く。<ruby>笑顔<rt>えがお</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>たせして。<br>*(Rõ, chị đến ngay. Cười và mời khách chờ.)* |
| Trang ra khách | お<ruby>客様<rt>きゃくさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。フロントの<ruby>主任<rt>しゅにん</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>のチャンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Quý khách, em xin lỗi đã để quý khách đợi. Em là Trang, phụ tá lễ tân ạ.)* |
| Khách (cụ bà) | あのね、<ruby>息子<rt>むすこ</rt></ruby>が<ruby>支払<rt>しはら</rt></ruby>うと<ruby>言<rt>い</rt></ruby>っていたんだけど、まだ<ruby>来<rt>こ</rt></ruby>なくて…<br>*(Là vầy, con trai tôi bảo nó trả tiền mà chưa đến…)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>息子様<rt>むすこさま</rt></ruby>のお<ruby>名前<rt>なまえ</rt></ruby>と<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますでしょうか。<br>*(Em rõ rồi ạ. Quý khách có thể cho biết tên con trai và giờ dự kiến đến không ạ?)* |
| Cụ bà | <ruby>夜<rt>よる</rt></ruby><ruby>8時<rt>はちじ</rt></ruby>には<ruby>来<rt>く</rt></ruby>るって…<br>*(Tối 8 giờ sẽ đến…)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>息子様<rt>むすこさま</rt></ruby>がご<ruby>到着<rt>とうちゃく</rt></ruby>された<ruby>際<rt>さい</rt></ruby>にお<ruby>支払<rt>しはら</rt></ruby>いをお<ruby>願<rt>ねが</rt></ruby>いいたします。お<ruby>部屋<rt>へや</rt></ruby>へまずご<ruby>案内<rt>あんない</rt></ruby>いたしますので、ごゆっくりお<ruby>過<rt>す</rt></ruby>ごしくださいませ。<br>*(Em rõ ạ. Hôm nay khi con trai quý khách đến chúng tôi sẽ nhờ thanh toán sau. Em dẫn quý khách lên phòng trước, mong quý khách nghỉ ngơi thoải mái ạ.)* |
| Cụ bà | あら、いいの？ありがとうね。<br>*(Ôi, được thật à? Cảm ơn cháu.)* |
| Trang ra Mei | （<ruby>小声<rt>こごえ</rt></ruby>）メモに<ruby>息子様<rt>むすこさま</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>、<ruby>後払<rt>あとばら</rt></ruby>いと<ruby>記録<rt>きろく</rt></ruby>して。<ruby>夜勤<rt>やきん</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぐから。<br>*(Khẽ. Ghi vào sổ con trai khách đến 8 giờ, trả sau. Bàn giao cho ca đêm.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 17:00, Trang khen Mei xử lý đúng

| Vai | Lời thoại |
|---|---|
| Trang | メイちゃん、さっきの<ruby>対応<rt>たいおう</rt></ruby>、よかったよ。<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>に<ruby>一人<rt>ひとり</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>せず<ruby>呼<rt>よ</rt></ruby>んでくれた。<ruby>正解<rt>せいかい</rt></ruby>。<br>*(Mei ơi, lúc nãy xử lý ổn lắm. Lúc lúng túng không tự quyết mà gọi chị — chuẩn rồi.)* |
| Mei | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>困<rt>こま</rt></ruby>った<ruby>顔<rt>かお</rt></ruby>を<ruby>見<rt>み</rt></ruby>せないように<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Em cố không để mặt lo lắng cho khách thấy.)* |
| Trang | それが<ruby>大事<rt>だいじ</rt></ruby>。お<ruby>客様<rt>きゃくさま</rt></ruby>には「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ」と<ruby>言<rt>い</rt></ruby>ってから<ruby>裏<rt>うら</rt></ruby>でインカム。これ<ruby>覚<rt>おぼ</rt></ruby>えておいて。<br>*(Đúng cái đó. Nói với khách "mong quý khách chờ một chút" rồi quay lưng vào trong dùng bộ đàm. Nhớ nha.)* |
| Mei | はい！それから、<ruby>後払<rt>あとばら</rt></ruby>いは<ruby>普通<rt>ふつう</rt></ruby>はダメですよね？<br>*(Vâng! Mà thường trả sau là không được phải không ạ?)* |
| Trang | そう、<ruby>原則<rt>げんそく</rt></ruby><ruby>前払<rt>まえばら</rt></ruby>い。でも、ご<ruby>高齢<rt>こうれい</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>で<ruby>息子様<rt>むすこさま</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じ<ruby>名前<rt>なまえ</rt></ruby>で<ruby>予約<rt>よやく</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>があったから<ruby>例外<rt>れいがい</rt></ruby><ruby>処理<rt>しょり</rt></ruby>。<br>*(Đúng, nguyên tắc là trả trước. Nhưng khách lớn tuổi mà con trai cùng họ đã có lịch sử đặt phòng nên xử lý ngoại lệ.)* |
| Mei | <ruby>履歴<rt>りれき</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>したんですか？<br>*(Chị đã kiểm tra lịch sử ạ?)* |
| Trang | タブレットで<ruby>瞬時<rt>しゅんじ</rt></ruby>に。だから<ruby>判断<rt>はんだん</rt></ruby>できた。<ruby>例外<rt>れいがい</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>根拠<rt>こんきょ</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってね。<br>*(Trên tablet xem ngay. Vì vậy quyết được. Ngoại lệ nhất định phải có căn cứ.)* |
| Mei | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em học được nhiều ạ.)* |

---

## Tình huống 11 — Quầy lễ tân · 20:00, con trai cụ bà đến, Trang xử lý thanh toán

| Vai | Lời thoại |
|---|---|
| Người con | すみません、<ruby>遅<rt>おそ</rt></ruby>くなりました。<ruby>母<rt>はは</rt></ruby>の<ruby>支払<rt>しはら</rt></ruby>いに<ruby>参<rt>まい</rt></ruby>りました。<ruby>渡辺<rt>わたなべ</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Xin lỗi, tôi đến muộn. Tôi đến thanh toán giúp mẹ. Tôi là Watanabe.)* |
| Trang | <ruby>渡辺様<rt>わたなべさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。お<ruby>母様<rt>かあさま</rt></ruby>は<ruby>無事<rt>ぶじ</rt></ruby>お<ruby>部屋<rt>へや</rt></ruby>にお<ruby>入<rt>はい</rt></ruby>りになっておられます。<br>*(Quý khách Watanabe, chúng tôi đã đợi. Mẹ quý khách đã yên ổn vào phòng rồi ạ.)* |
| Watanabe | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>にすみません、<ruby>新幹線<rt>しんかんせん</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れて…<br>*(Cảm ơn cô. Tôi thật sự xin lỗi, shinkansen bị trễ…)* |
| Trang | お<ruby>気<rt>き</rt></ruby>になさらないでください。お<ruby>母様<rt>かあさま</rt></ruby>もご<ruby>無事<rt>ぶじ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>でしたから。<ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>支払<rt>しはら</rt></ruby>いは<ruby>合計<rt>ごうけい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>でございます。<br>*(Xin quý khách đừng bận tâm. Mẹ quý khách đã đến nơi an toàn. Tổng thanh toán hôm nay là 32 nghìn yên ạ.)* |
| Watanabe | カードで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Trả bằng thẻ được không?)* |
| Trang | はい、もちろんでございます。こちらの<ruby>端末<rt>たんまつ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, được ạ. Quý khách quẹt thẻ vào máy này ạ.)* |
| Watanabe | <ruby>母<rt>はは</rt></ruby>に<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>親切<rt>しんせつ</rt></ruby>にしていただいて、ありがとうございました。<br>*(Cảm ơn cô đã thật sự tử tế với mẹ tôi.)* |
| Trang | <ruby>当然<rt>とうぜん</rt></ruby>のことでございます。お<ruby>部屋<rt>へや</rt></ruby>までご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Đó là điều đương nhiên ạ. Em dẫn quý khách lên phòng.)* |

---

## Tình huống 12 — Văn phòng 女将 · 22:30, Trang báo cáo tổng kết ngày cao điểm

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Thưa bà chủ, em báo cáo công việc hôm nay đã kết thúc.)* |
| 女将 | ご<ruby>苦労<rt>くろう</rt></ruby>さま。<ruby>無事<rt>ぶじ</rt></ruby><ruby>全<rt>ぜん</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>組<rt>くみ</rt></ruby>チェックインできた？<br>*(Vất vả rồi. 22 đoàn check-in xong cả không?)* |
| Trang | はい、<ruby>全組<rt>ぜんくみ</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>大<rt>おお</rt></ruby>きなクレームはございませんでした。<br>*(Vâng, tất cả đoàn đều xong êm xuôi. Không có khiếu nại lớn nào.)* |
| 女将 | <ruby>山本様<rt>やまもとさま</rt></ruby>の<ruby>件<rt>けん</rt></ruby>は？<br>*(Vụ khách Yamamoto thì sao?)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>はご<ruby>理解<rt>りかい</rt></ruby>くださいました。<ruby>地酒<rt>じざけ</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>サービスで<ruby>対応<rt>たいおう</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>サイトの<ruby>表記<rt>ひょうき</rt></ruby><ruby>修正<rt>しゅうせい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Khách đã thông cảm ạ. Đối ứng bằng 1 chai sake địa phương. Mai em liên lạc bộ phận quản lý web sửa lại hiển thị.)* |
| 女将 | <ruby>渡辺様<rt>わたなべさま</rt></ruby>のお<ruby>母様<rt>かあさま</rt></ruby>は？<br>*(Mẹ của khách Watanabe thì sao?)* |
| Trang | <ruby>後払<rt>あとばら</rt></ruby>いで<ruby>対応<rt>たいおう</rt></ruby>し、<ruby>夜<rt>よる</rt></ruby><ruby>8時<rt>はちじ</rt></ruby>に<ruby>息子様<rt>むすこさま</rt></ruby>が<ruby>来館<rt>らいかん</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby>お<ruby>支払<rt>しはら</rt></ruby>いいただきました。<br>*(Đối ứng trả sau, 8 giờ tối con trai khách đến, đã thanh toán đầy đủ ạ.)* |
| 女将 | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>判断<rt>はんだん</rt></ruby>でした。トランさん、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>はあなたが<ruby>主任<rt>しゅにん</rt></ruby>でいいかしら。<br>*(Quyết định tuyệt vời. Trang, mùa hè sang năm em làm lễ tân chính được không?)* |
| Trang | え…<ruby>本当<rt>ほんとう</rt></ruby>ですか？<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Ơ… thật ạ? Em sẽ cố gắng!)* |
| 女将 | <ruby>今夜<rt>こんや</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>んでね。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Đêm nay nghỉ ngơi thoải mái nhé. Vất vả rồi.)* |

---

## Tình huống 13 — Cảnh tiếng Việt — Phòng ký túc · 23:30, Trang nhắn nhóm chat đồng hương Huế

> Cảnh tiếng Việt — gặp đồng hương VN tại Kyoto (Lan, Hằng làm ở Kyoto khác ryokan/khách sạn).

| Vai | Lời thoại |
|---|---|
| Trang | Lan, Hằng ơi, hai đứa còn thức không? |
| Lan | Còn. Tao vừa **ロングシフト** xong, mệt rã. |
| Hằng | Vừa lau toilet đoàn vừa về xong. Mày sao đó Trang? |
| Trang | Hôm nay 22 đoàn check-in, **お盆** đỉnh điểm. Bà chủ giao tao làm phụ tá chính. |
| Lan | Trời, lên chức không nói gì hết. |
| Trang | Chưa lên chức đâu, mới phụ tá thôi. Mà bà chủ vừa hứa năm sau cho tao làm chính. |
| Hằng | Đỉnh quá. Mày giỏi thật. Năm 2 mà được giao là khó lắm. |
| Trang | Tao stress lắm. Có một vụ khách đặt nhầm phòng đôi/đơn, tao phải lo dàn xếp, mất 30 phút mới yên. |
| Lan | Khách Nhật khó tính lắm hả? |
| Trang | Không khó, nhưng phải khéo. Tao tặng họ chai **地酒** miễn phí, họ vui ngay. |
| Hằng | Ngày mai mày được nghỉ không? Đi ăn **抹茶パフェ** ở Gion với bọn tao. |
| Trang | Mai tao **明け番**, ngủ tới trưa rồi đi. **3 giờ Gion** nhé. |
| Lan | OK. Mày nhớ mang đồ ăn Huế mẹ gửi qua không, chia tao với. |
| Trang | Rồi, mai mang **mè xửng** với **tôm chua**. Ngủ ngon hai đứa. |

---

## Đọng lại chương

**Mẫu câu điều phối đội:**
- **「〜お願いできますか」** — nhờ đồng nghiệp một việc
- **「集まって。本日の役割分担を説明します」** — họp phân chia
- **「困ったらすぐ呼んでください」** — chỉ thị nhờ trợ giúp
- **「全員、こちらフロント」** — phát thanh bộ đàm cho toàn đội

**Mẫu câu xin lỗi khi khách đợi:**
- **「大変申し訳ございませんが、〜」**
- **「お待ちいただく間、〜を無料でお出しいたします」** — kèm bù đắp
- **「お詫びとして〜をサービスさせていただきます」**
- **「ご理解いただき、本当にありがとうございます」**

**Mẫu câu xử lý ngoại lệ:**
- **「ご確認いたしましたところ、当方の不手際でございます」**
- **「原則前払いですが、例外処理として」**

**Báo cáo 業務終了:** 「本日の業務終了のご報告です」「無事〜完了です」「大きなクレームはございませんでした」

**Từ vựng:** お盆・繁忙期・稼働率・主任補佐・手分け・インカム・チャンネル・清掃進捗・添乗員・満室・オーバーブッキング・後払い・前払い・例外処理・地酒・サービス・履歴・引き継ぎ・夜勤

---

## Bí quyết chương

- **お盆 14/8**: ngày 14/8 là đỉnh của tuần Obon (13-16/8) — toàn ryokan Kyoto kín 100%, đặt phòng đóng từ 2 tháng trước.
- **手分け文化**: việc đông không chia rõ vai sẽ vỡ trận; người phụ trách nói rõ ai làm gì, dùng bộ đàm số kênh thay tên cho ngắn.
- **Khách đến sớm là CƠ HỘI, không phải vấn đề**: dẫn vào sảnh chờ + matcha free + cho dùng 大浴場 sớm → khách nhớ ơn, đánh giá tốt.
- **Đối ứng overbooking/đặt nhầm**: thừa nhận lỗi 当方の不手際 (không đổ cho web/khách) + bù đắp cụ thể (futon free, sake free) + ghi lại để sửa hệ thống.
- **Sempai dạy kohai trên hiện trường thực chiến**: lời khen 「正解」「よかったよ」 phải nói NGAY sau ca, không để qua hôm sau.
- **Báo cáo cuối ca cho 女将**: không kể chi tiết vụn — chỉ 3 điểm: tổng thể OK không / vụ ngoại lệ xử lý sao / việc cần làm ngày mai.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| お盆 | おぼん | — | lễ Obon |
| 期間 | きかん | KỲ GIAN | thời gian, kỳ |
| 繁忙期 | はんぼうき | PHỒN MANG KỲ | mùa cao điểm |
| 稼働率 | かどうりつ | GIÁ ĐỘNG SUẤT | tỷ lệ lấp phòng |
| 主任 | しゅにん | CHỦ NHIỆM | trưởng bộ phận |
| 補佐 | ほさ | BỔ TÁ | phụ tá |
| 役割分担 | やくわりぶんたん | DỊCH CÁT PHÂN ĐẢM | phân chia vai trò |
| インカム | いんかむ | — | bộ đàm, intercom |
| チャンネル | ちゃんねる | — | kênh |
| 客室 | きゃくしつ | KHÁCH THẤT | phòng khách |
| 清掃 | せいそう | THANH TẢO | dọn dẹp, vệ sinh |
| 進捗 | しんちょく | TIẾN TRỨC | tiến độ |
| 完了 | かんりょう | HOÀN LIỄU | hoàn thành |
| 優先 | ゆうせん | ƯU TIÊN | ưu tiên |
| 応援 | おうえん | ỨNG VIỆN | hỗ trợ |
| 増員 | ぞういん | TĂNG VIÊN | thêm người |
| 団体 | だんたい | ĐOÀN THỂ | đoàn thể |
| 添乗員 | てんじょういん | THIẾP THỪA VIÊN | trưởng đoàn, hướng dẫn viên |
| 到着 | とうちゃく | ĐÁO TRỨ | đến nơi |
| 一時 | いちじ | NHẤT THỜI | tạm thời |
| 預かる | あずかる | DỰ | giữ giùm |
| 札 | ふだ | — | thẻ, phiếu |
| 手分け | てわけ | THỦ PHÂN | chia tay làm việc |
| 同時 | どうじ | ĐỒNG THỜI | cùng lúc |
| 発生 | はっせい | PHÁT SINH | xảy ra |
| 記入 | きにゅう | KÝ NHẬP | điền vào |
| 案内 | あんない | ÁN NỘI | dẫn đường |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| シングル | しんぐる | — | phòng đơn |
| ツイン | ついん | — | phòng twin |
| 満室 | まんしつ | MÃN THẤT | hết phòng |
| 不手際 | ふてぎわ | BẤT THỦ TẾ | sơ suất |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 追加 | ついか | TRUY GIA | thêm vào |
| 窮屈 | きゅうくつ | CÙNG KHUẤT | chật chội |
| 地酒 | じざけ | ĐỊA TỬU | rượu sake địa phương |
| 専用 | せんよう | CHUYÊN DỤNG | dành riêng |
| 食事処 | しょくじどころ | THỰC SỰ XỨ | phòng ăn |
| クレジットカード | くれじっとかーど | — | thẻ tín dụng |
| 現金 | げんきん | HIỆN KIM | tiền mặt |
| 高齢 | こうれい | CAO LINH | lớn tuổi |
| 例外 | れいがい | LỆ NGOẠI | ngoại lệ |
| 処理 | しょり | XỬ LÝ | xử lý |
| 履歴 | りれき | LÝ LỊCH | lịch sử |
| 根拠 | こんきょ | CĂN CỨ | căn cứ |
| 引き継ぐ | ひきつぐ | DẪN KẾ | bàn giao |
| 夜勤 | やきん | DẠ CẦN | ca đêm |
| 後払い | あとばらい | HẬU BẤT | trả sau |
| 前払い | まえばらい | TIỀN BẤT | trả trước |
| 端末 | たんまつ | ĐOAN MẠT | máy đầu cuối, terminal |
| 親切 | しんせつ | THÂN THIẾT | tử tế |
| 業務 | ぎょうむ | NGHIỆP VỤ | nghiệp vụ |
| 修正 | しゅうせい | TU CHÍNH | sửa, hiệu chỉnh |
| 表記 | ひょうき | BIỂU KÝ | cách viết, hiển thị |
| 明け番 | あけばん | MINH PHIÊN | ngày nghỉ sau ca dài |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000008, 800000047, NULL, 'markdown_book', 'T8. Ôn N3 nước rút (N3対策・直前期)', '# Sách khách sạn năm 2 · T8. Ôn N3 nước rút (N3対策・直前期)

> **Mục tiêu nhân vật:** Trang (23 tuổi, Huế, năm thứ 2 tại Ryokan Ouhuusou Kyoto). Học các mẫu hội thoại tiếng Nhật trong giai đoạn ôn N3 nước rút 10-12/2026: đăng ký thi tại 京都試験会場, hỏi 試験官 ở trung tâm tiếng Nhật, luyện **聴解** với app, hỏi giáo viên về **文法** N3 (〜ばかり・〜ところ・〜わけ), luyện **読解** từ tin tức, đối thoại với khách-người-Nhật để luyện thực tế, và đi thi.

---

## Bối cảnh

Tháng 10-12 năm 2026. Trang đăng ký kỳ thi JLPT N3 ngày **6/12/2026 (Chủ Nhật)** tại 龍谷大学 Kyoto. Đã pass N4 trước khi sang Nhật, nay ôn 2 tháng nước rút. Học buổi tối thứ 3-5 tại 京都国際学院 (1 buổi 90 phút, 6000 yên/tháng), giáo viên 先生 Kobayashi. Lớp có 8 học viên: 3 Việt Nam, 2 Trung Quốc, 2 Nepal, 1 Myanmar. Sempai Yuna đậu N2 năm ngoái cũng kèm thêm cuối tuần. Chương này tập trung mẫu câu Trang dùng trong giai đoạn ôn thi — không phải dạy ngữ pháp N3, mà dạy mẫu câu Trang dùng để HỎI và LUYỆN.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 19:00, Trang xin 女将 cho đi học buổi tối

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。ご<ruby>相談<rt>そうだん</rt></ruby>がございます。<br>*(Thưa bà chủ, bà có chút thời gian không ạ. Em có việc xin tư vấn.)* |
| 女将 | はい、どうぞ。<br>*(Ừ, em nói đi.)* |
| Trang | <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のN<ruby>3<rt>さん</rt></ruby><ruby>試験<rt>しけん</rt></ruby>のために、<ruby>火<rt>か</rt></ruby>・<ruby>水<rt>すい</rt></ruby>・<ruby>木<rt>もく</rt></ruby><ruby>曜<rt>よう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>8<rt>はち</rt></ruby><ruby>時半<rt>じはん</rt></ruby>まで、<ruby>日本語<rt>にほんご</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>に<ruby>通<rt>かよ</rt></ruby>わせていただけませんか？<br>*(Cho kỳ thi N3 tháng 12, em xin phép đi học tiếng Nhật tối thứ 3-4-5 từ 7 giờ đến 8 rưỡi được không ạ?)* |
| 女将 | あら、<ruby>偉<rt>えら</rt></ruby>いわね。<ruby>火<rt>か</rt></ruby>・<ruby>水<rt>すい</rt></ruby>・<ruby>木<rt>もく</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>は<ruby>夕食<rt>ゆうしょく</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから、<ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>抜<rt>ぬ</rt></ruby>けるのは<ruby>難<rt>むずか</rt></ruby>しいわ。<br>*(Ôi, đáng khen quá. Tối thứ 3-4-5 sau bữa tối nhiều việc, rời lúc 7 giờ khó đấy.)* |
| Trang | <ruby>承知<rt>しょうち</rt></ruby>しております。その<ruby>分<rt>ぶん</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby><ruby>5時半<rt>ごじはん</rt></ruby>から<ruby>朝食<rt>ちょうしょく</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>のお<ruby>手伝<rt>てつだ</rt></ruby>いをさせていただきます。それと<ruby>金<rt>きん</rt></ruby><ruby>曜<rt>よう</rt></ruby><ruby>夜<rt>よる</rt></ruby>のシフトを<ruby>増<rt>ふ</rt></ruby>やします。<br>*(Em biết ạ. Đổi lại, em xin phụ chuẩn bị bữa sáng từ 5 rưỡi sáng. Và tăng ca tối thứ 6.)* |
| 女将 | <ruby>2<rt>に</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>なら、いいわよ。<ruby>仕事<rt>しごと</rt></ruby>に<ruby>支障<rt>ししょう</rt></ruby>がないように<ruby>気<rt>き</rt></ruby>をつけてね。<br>*(Nếu chỉ 2 tháng thì được. Đừng để ảnh hưởng đến công việc nhé.)* |
| Trang | ありがとうございます！<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ! Em sẽ cố gắng.)* |
| 女将 | <ruby>合格<rt>ごうかく</rt></ruby>したら、お<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げましょう。<br>*(Đậu thì chị cũng tăng lương em một chút.)* |
| Trang | （<ruby>嬉<rt>うれ</rt></ruby>しくて）<ruby>本当<rt>ほんとう</rt></ruby>ですか？！<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>します！<br>*(Mừng quá. Thật ạ?! Em nhất định đậu!)* |

---

## Tình huống 2 — Văn phòng 京都国際学院 · 18:30 thứ 3, Trang đăng ký lớp

| Vai | Lời thoại |
|---|---|
| Trang | こんばんは。<ruby>N3対策<rt>えぬさんたいさく</rt></ruby>クラスに<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みたいのですが。<br>*(Chào buổi tối ạ. Em muốn đăng ký lớp ôn N3.)* |
| Nhân viên | こんばんは。お<ruby>名前<rt>なまえ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Chào em. Em cho tên được không?)* |
| Trang | チャン・ティ・トランです。ベトナム<ruby>人<rt>じん</rt></ruby>です。<br>*(Trần Thị Trang ạ. Em là người Việt Nam.)* |
| Nhân viên | トランさんですね。<ruby>現在<rt>げんざい</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby>レベルは？<br>*(Em Trang nhỉ. Trình độ tiếng Nhật hiện tại?)* |
| Trang | N4は<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>来<rt>きた</rt></ruby>る<ruby>12月<rt>じゅうにがつ</rt></ruby>のN3を<ruby>受<rt>う</rt></ruby>けます。<br>*(Em đã đậu N4. Em sẽ thi N3 tháng 12 sắp tới.)* |
| Nhân viên | では、<ruby>火<rt>か</rt></ruby>・<ruby>水<rt>すい</rt></ruby>・<ruby>木<rt>もく</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>クラスがちょうどよろしいかと。<ruby>授業料<rt>じゅぎょうりょう</rt></ruby>は<ruby>2<rt>に</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby><ruby>12000<rt>いちまんにせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Vậy lớp tối thứ 3-4-5 vừa hợp. Học phí 2 tháng là 12 nghìn yên.)* |
| Trang | <ruby>教材<rt>きょうざい</rt></ruby><ruby>費<rt>ひ</rt></ruby>は<ruby>別途<rt>べっと</rt></ruby>かかりますか？<br>*(Phí tài liệu tính riêng phải không ạ?)* |
| Nhân viên | <ruby>教材<rt>きょうざい</rt></ruby>「<ruby>新<rt>しん</rt></ruby><ruby>完全<rt>かんぜん</rt></ruby>マスターN3」を<ruby>使用<rt>しよう</rt></ruby>します。<ruby>5冊<rt>ごさつ</rt></ruby>セットで<ruby>5400<rt>ごせんよんひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>既<rt>すで</rt></ruby>にお<ruby>持<rt>も</rt></ruby>ちでしたら<ruby>不要<rt>ふよう</rt></ruby>です。<br>*(Dùng giáo trình "Shin Kanzen Master N3". Bộ 5 cuốn 5400 yên. Nếu đã có rồi thì không cần.)* |
| Trang | <ruby>文法<rt>ぶんぽう</rt></ruby>と<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>持<rt>も</rt></ruby>っています。<ruby>読解<rt>どっかい</rt></ruby>と<ruby>語彙<rt>ごい</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>でいただけますか？<br>*(Em có sẵn ngữ pháp và nghe. Em xin thêm đọc và từ vựng được không ạ?)* |
| Nhân viên | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>2冊<rt>にさつ</rt></ruby>で<ruby>2160<rt>にせんひゃくろくじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Em rõ. 2 cuốn là 2160 yên ạ.)* |

---

## Tình huống 3 — Lớp học · 19:30 tối đầu tiên, Trang hỏi 先生 về 〜ばかり

| Vai | Lời thoại |
|---|---|
| 先生 | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>文法<rt>ぶんぽう</rt></ruby>は「〜ばかり」と「〜たばかり」の<ruby>違<rt>ちが</rt></ruby>いです。<ruby>質問<rt>しつもん</rt></ruby>がある<ruby>方<rt>かた</rt></ruby>？<br>*(Ngữ pháp hôm nay là khác biệt giữa "〜bakari" và "〜ta bakari". Ai có câu hỏi?)* |
| Trang | はい、<ruby>小林<rt>こばやし</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>。<ruby>例<rt>れい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Vâng cô Kobayashi. Cô cho ví dụ được không ạ?)* |
| 先生 | はい。「<ruby>食<rt>た</rt></ruby>べてばかりいる」と「<ruby>食<rt>た</rt></ruby>べたばかり」。<br>*(Vâng. "Tabete bakari iru" và "Tabeta bakari".)* |
| Trang | 「<ruby>食<rt>た</rt></ruby>べてばかりいる」＝<ruby>食<rt>た</rt></ruby>べる<ruby>動作<rt>どうさ</rt></ruby>を<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>している…ですか？<br>*("Tabete bakari iru" = lặp đi lặp lại hành động ăn… đúng không ạ?)* |
| 先生 | <ruby>正解<rt>せいかい</rt></ruby>です。「ばかり」が<ruby>動作<rt>どうさ</rt></ruby>のみを<ruby>強調<rt>きょうちょう</rt></ruby>。<ruby>他<rt>ほか</rt></ruby>のことをしない<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Chính xác. "Bakari" nhấn mạnh chỉ làm hành động đó. Nghĩa không làm gì khác.)* |
| Trang | では「<ruby>食<rt>た</rt></ruby>べたばかり」は<ruby>過去<rt>かこ</rt></ruby>のすぐ<ruby>後<rt>あと</rt></ruby>…<ruby>例<rt>たと</rt></ruby>えば「<ruby>今<rt>いま</rt></ruby><ruby>食<rt>た</rt></ruby>べたばかりです」？<br>*(Vậy "tabeta bakari" là vừa mới xong… ví dụ "ima tabeta bakari desu"?)* |
| 先生 | <ruby>完璧<rt>かんぺき</rt></ruby>です！「〜たばかり」＝<ruby>動作<rt>どうさ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby><ruby>直後<rt>ちょくご</rt></ruby>。<ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>えますね、「お<ruby>料理<rt>りょうり</rt></ruby>はただ<ruby>今<rt>いま</rt></ruby>お<ruby>持<rt>も</rt></ruby>ちしたばかりでございます」。<br>*(Hoàn hảo! "〜ta bakari" = ngay sau khi hành động xong. Dùng được trong công việc, "Món ăn em vừa mới đem lên ạ".)* |
| Trang | あ、それ<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>っています！<ruby>意識<rt>いしき</rt></ruby>していなかったです。<br>*(Ơ, câu đó ngày nào em cũng dùng! Em không để ý.)* |
| 先生 | <ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>っている<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>意識<rt>いしき</rt></ruby>すると<ruby>覚<rt>おぼ</rt></ruby>えやすいですよ。<br>*(Để ý ngữ pháp đang dùng trong công việc thì dễ nhớ lắm.)* |

---

## Tình huống 4 — Cafe gần lớp · 21:00 thứ 3, Trang luyện văn với bạn cùng lớp Linh (VN khác)

| Vai | Lời thoại |
|---|---|
| Linh | Trang ơi, "〜わけだ" với "〜わけがない" mày phân biệt được không? |
| Trang | <ruby>日本語<rt>にほんご</rt></ruby>で<ruby>話<rt>はな</rt></ruby>そう、<ruby>練習<rt>れんしゅう</rt></ruby>のために。<br>*(Mình nói tiếng Nhật đi, để luyện.)* |
| Linh | OK。「〜わけだ」と「〜わけがない」、<ruby>違<rt>ちが</rt></ruby>いが<ruby>分<rt>わ</rt></ruby>からない。<br>*(OK. "〜wake da" và "〜wake ga nai", chưa hiểu khác biệt.)* |
| Trang | 「〜わけだ」は<ruby>結論<rt>けつろん</rt></ruby>。<ruby>例<rt>たと</rt></ruby>えば「<ruby>毎日<rt>まいにち</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>している。だから<ruby>合格<rt>ごうかく</rt></ruby>するわけだ」。<br>*("〜wake da" là kết luận. Ví dụ "Ngày nào cũng học. Vậy nên đậu thôi".)* |
| Linh | あ、「<ruby>当然<rt>とうぜん</rt></ruby>そうなる」という<ruby>感<rt>かん</rt></ruby>じね。<br>*(À, kiểu "đương nhiên là như vậy" nhỉ.)* |
| Trang | そう。「〜わけがない」は<ruby>逆<rt>ぎゃく</rt></ruby>、<ruby>強<rt>つよ</rt></ruby>い<ruby>否定<rt>ひてい</rt></ruby>。「<ruby>勉強<rt>べんきょう</rt></ruby>していない。<ruby>合格<rt>ごうかく</rt></ruby>するわけがない」。<br>*(Đúng. "〜wake ga nai" thì ngược, phủ định mạnh. "Không học. Đậu là không thể".)* |
| Linh | 「<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>違<rt>ちが</rt></ruby>う」みたいな？<br>*(Kiểu "tuyệt đối không"?)* |
| Trang | そう。<ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>うと<ruby>失礼<rt>しつれい</rt></ruby>になりがちだから<ruby>気<rt>き</rt></ruby>をつけて。<ruby>普通<rt>ふつう</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>会話<rt>かいわ</rt></ruby>では<ruby>使<rt>つか</rt></ruby>わない。<br>*(Đúng. Trong công việc dùng dễ thất lễ nên cẩn thận. Hội thoại với khách thường không dùng.)* |
| Linh | <ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>わない<ruby>文法<rt>ぶんぽう</rt></ruby>もテストには<ruby>出<rt>で</rt></ruby>るんだよね。<br>*(Ngữ pháp không dùng trong việc cũng ra trong đề nhỉ.)* |
| Trang | だからしんどい。でも、<ruby>頑張<rt>がんば</rt></ruby>るしかないわけだ。<br>*(Vậy mới mệt. Nhưng phải cố thôi (wake da).)* |
| Linh | あ、<ruby>今<rt>いま</rt></ruby>「〜わけだ」<ruby>使<rt>つか</rt></ruby>ったね！<br>*(Ơ, mày vừa dùng "〜wake da" đó!)* |

---

## Tình huống 5 — Phòng ký túc · 22:30 thứ 3, Trang luyện 聴解 với app

| Vai | Lời thoại |
|---|---|
| Trang | （イヤホンで<ruby>聴<rt>き</rt></ruby>く）…えーと、<ruby>男<rt>おとこ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>と<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>話<rt>はな</rt></ruby>しています。<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>はこの<ruby>後<rt>あと</rt></ruby><ruby>何<rt>なに</rt></ruby>をしますか…<br>*(Đeo tai nghe. Để xem, một người nam và một người nữ đang nói chuyện. Sau đây người nữ sẽ làm gì…)* |
| App audio | …じゃあ、<ruby>会議<rt>かいぎ</rt></ruby><ruby>室<rt>しつ</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>は<ruby>明日<rt>あした</rt></ruby>でいいから、<ruby>今日<rt>きょう</rt></ruby>のうちに<ruby>資料<rt>しりょう</rt></ruby>のコピーを<ruby>30<rt>さんじゅう</rt></ruby><ruby>部<rt>ぶ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いね。<br>*(…Vậy đặt phòng họp để mai cũng được, hôm nay em copy 30 bản tài liệu nhé.)* |
| Trang | （ノートに<ruby>書<rt>か</rt></ruby>く）<ruby>会議<rt>かいぎ</rt></ruby><ruby>室<rt>しつ</rt></ruby>＝<ruby>明日<rt>あした</rt></ruby>、コピー<ruby>30<rt>さんじゅう</rt></ruby><ruby>部<rt>ぶ</rt></ruby>＝<ruby>今日<rt>きょう</rt></ruby>。<ruby>答<rt>こた</rt></ruby>えは<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>「コピーをする」。<br>*(Ghi vào sổ. Phòng họp = mai, copy 30 bản = hôm nay. Đáp án là số 3 "đi photocopy".)* |
| Trang | （<ruby>解答<rt>かいとう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>）<ruby>正解<rt>せいかい</rt></ruby>！…<ruby>次<rt>つぎ</rt></ruby><ruby>問題<rt>もんだい</rt></ruby><ruby>2<rt>に</rt></ruby>。<br>*(Kiểm tra đáp án. Đúng rồi! …Câu tiếp.)* |
| Trang | （<ruby>独<rt>ひと</rt></ruby>り<ruby>言<rt>ごと</rt></ruby>）<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>のおかげで<ruby>得意<rt>とくい</rt></ruby>になった。<ruby>毎日<rt>まいにち</rt></ruby><ruby>女将<rt>おかみ</rt></ruby>さんの<ruby>指示<rt>しじ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いているから。<br>*(Lẩm bẩm. Nghe nhờ công việc nên khá lên. Ngày nào cũng nghe chỉ thị của bà chủ mà.)* |
| Trang | <ruby>読解<rt>どっかい</rt></ruby>がまだダメ。<ruby>明日<rt>あした</rt></ruby>ユナ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>聞<rt>き</rt></ruby>こう。<br>*(Đọc thì vẫn yếu. Mai hỏi chị Yuna.)* |

---

## Tình huống 6 — Phòng nghỉ ryokan · 14:00 thứ 7, Yuna kèm Trang 読解

| Vai | Lời thoại |
|---|---|
| Yuna | <ruby>読解<rt>どっかい</rt></ruby>の<ruby>苦手<rt>にがて</rt></ruby><ruby>な<rt></rt></ruby>ところ、<ruby>聞<rt>き</rt></ruby>かせて？<br>*(Phần đọc em yếu chỗ nào, kể chị nghe?)* |
| Trang | <ruby>長文<rt>ちょうぶん</rt></ruby>です。<ruby>時間<rt>じかん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないんです。<ruby>1<rt>いっ</rt></ruby><ruby>問<rt>もん</rt></ruby>に<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>もかかってしまう。<br>*(Bài dài ạ. Em không đủ thời gian. Mỗi câu mất tận 5 phút.)* |
| Yuna | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>もうとしているでしょう？<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>逆<rt>ぎゃく</rt></ruby>。まず<ruby>質問<rt>しつもん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む、<ruby>次<rt>つぎ</rt></ruby>に<ruby>本文<rt>ほんぶん</rt></ruby>で<ruby>答<rt>こた</rt></ruby>えを<ruby>探<rt>さが</rt></ruby>す。<br>*(Em đang cố đọc hết phải không? Thứ tự ngược rồi. Đọc câu hỏi trước, sau đó tìm đáp án trong bài.)* |
| Trang | え、<ruby>本文<rt>ほんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>まなくていいんですか？<br>*(Ơ, không cần đọc cả bài ạ?)* |
| Yuna | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>まなくていい。<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>部分<rt>ぶぶん</rt></ruby>だけ<ruby>探<rt>さが</rt></ruby>す。これを「スキャニング」と<ruby>言<rt>い</rt></ruby>う。<br>*(Không cần đọc hết. Chỉ tìm phần cần. Gọi là "scanning".)* |
| Trang | スキャニング…<ruby>探<rt>さが</rt></ruby>す<ruby>方法<rt>ほうほう</rt></ruby>ですね。<br>*(Scanning… cách tìm nhỉ.)* |
| Yuna | <ruby>例<rt>たと</rt></ruby>えば、<ruby>質問<rt>しつもん</rt></ruby>が「<ruby>筆者<rt>ひっしゃ</rt></ruby>は<ruby>何<rt>なぜ</rt></ruby><ruby>賛成<rt>さんせい</rt></ruby>しないか」なら、<ruby>本文<rt>ほんぶん</rt></ruby>で「<ruby>反対<rt>はんたい</rt></ruby>」「しかし」「ところが」を<ruby>探<rt>さが</rt></ruby>す。<br>*(Ví dụ câu hỏi "Vì sao tác giả không đồng ý", thì tìm "phản đối", "tuy nhiên", "ngược lại" trong bài.)* |
| Trang | <ruby>逆接<rt>ぎゃくせつ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>ですね！<br>*(Là các từ chỉ sự đối lập!)* |
| Yuna | <ruby>正解<rt>せいかい</rt></ruby>。「しかし」「だが」「ところが」「とはいえ」の<ruby>後<rt>うし</rt></ruby>ろに<ruby>筆者<rt>ひっしゃ</rt></ruby>の<ruby>本音<rt>ほんね</rt></ruby>が<ruby>来<rt>く</rt></ruby>る。<br>*(Đúng. Sau "shikashi", "daga", "tokoroga", "to wa ie" là tâm sự thật của tác giả.)* |
| Trang | <ruby>覚<rt>おぼ</rt></ruby>えます！<ruby>1問<rt>いちもん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にします。<br>*(Em nhớ! Mục tiêu 1 câu 3 phút.)* |

---

## Tình huống 7 — Lobby ryokan · 16:00 thứ 4, Trang luyện đối thoại với khách-Nhật-hiền

| Vai | Lời thoại |
|---|---|
| Khách (cụ ông tốt bụng) | トランさん、いつも<ruby>笑顔<rt>えがお</rt></ruby>で<ruby>元気<rt>げんき</rt></ruby>だね。<br>*(Trang, lúc nào cũng tươi cười khoẻ khoắn nhỉ.)* |
| Trang | <ruby>清水様<rt>しみずさま</rt></ruby>、ありがとうございます。<ruby>1<rt>いち</rt></ruby><ruby>つ<rt></rt></ruby><ruby>質問<rt>しつもん</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Quý khách Shimizu, cảm ơn quý khách. Em xin phép hỏi một câu được không ạ.)* |
| Shimizu | はい、どうぞ。<br>*(Vâng, em hỏi đi.)* |
| Trang | <ruby>日本語<rt>にほんご</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>しているんですが、N3のテキストで<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>がありまして。「<ruby>気<rt>き</rt></ruby>が<ruby>置<rt>お</rt></ruby>けない」とはどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか。<br>*(Em đang ôn tiếng Nhật, trong sách N3 có từ em chưa hiểu ạ. "Ki ga okenai" nghĩa là gì ạ?)* |
| Shimizu | あ、<ruby>難<rt>むずか</rt></ruby>しいよね。これは「<ruby>気<rt>き</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わなくていい」「<ruby>遠慮<rt>えんりょ</rt></ruby>しなくていい」<ruby>仲<rt>なか</rt></ruby>のいい<ruby>関係<rt>かんけい</rt></ruby>のこと。<br>*(À, khó nhỉ. Cái này là "không cần để ý", "không cần khách sáo" — quan hệ thân thiết.)* |
| Trang | え？「<ruby>置<rt>お</rt></ruby>けない」だから<ruby>否定的<rt>ひていてき</rt></ruby>な<ruby>意味<rt>いみ</rt></ruby>かと<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Ơ? Vì "okenai" nên em tưởng nghĩa tiêu cực.)* |
| Shimizu | みんな<ruby>間違<rt>まちが</rt></ruby>えるよ。「<ruby>気<rt>き</rt></ruby>を<ruby>置<rt>お</rt></ruby>く」＝<ruby>気<rt>き</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。だから「<ruby>気<rt>き</rt></ruby>を<ruby>置<rt>お</rt></ruby>かない」＝リラックス。<br>*(Ai cũng nhầm. "Ki wo oku" = phải để ý. Vậy "ki wo okanai" = thư giãn.)* |
| Trang | <ruby>勉強<rt>べんきょう</rt></ruby>になりました！<ruby>感<rt>かん</rt></ruby>じが<ruby>逆<rt>ぎゃく</rt></ruby>になるんですね。<br>*(Em học được nhiều ạ! Cảm giác bị đảo ngược nhỉ.)* |
| Shimizu | <ruby>慣用句<rt>かんようく</rt></ruby>はそういうのが<ruby>多<rt>おお</rt></ruby>い。<ruby>頑張<rt>がんば</rt></ruby>って。<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>教<rt>おし</rt></ruby>えてね。<br>*(Mấy thành ngữ hay vậy. Cố lên. Đậu rồi báo cho tôi nhé.)* |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ずご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Vâng, em chắc chắn sẽ báo ạ.)* |

---

## Tình huống 8 — Phòng nghỉ · 22:00 chủ nhật, Trang lo trước 1 tuần

| Vai | Lời thoại |
|---|---|
| Trang | （<ruby>独<rt>ひと</rt></ruby>り<ruby>言<rt>ごと</rt></ruby>）あと<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>…<ruby>模試<rt>もし</rt></ruby>で<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>、ぎりぎり<ruby>合格<rt>ごうかく</rt></ruby>ライン。<br>*(Lẩm bẩm. Còn 1 tuần nữa… đề thử 95 điểm, sát mức đậu.)* |
| Yuna (vào phòng) | チャン、まだ<ruby>起<rt>お</rt></ruby>きてる？<br>*(Trang, còn thức à?)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>不安<rt>ふあん</rt></ruby>で<ruby>眠<rt>ねむ</rt></ruby>れません。<ruby>模試<rt>もし</rt></ruby>でぎりぎりなんです。<br>*(Chị, em lo quá ngủ không được. Đề thử em chỉ sát điểm.)* |
| Yuna | <ruby>模試<rt>もし</rt></ruby>は<ruby>本番<rt>ほんばん</rt></ruby>より<ruby>難<rt>むずか</rt></ruby>しいよ。<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>上<rt>あ</rt></ruby>がるのが<ruby>普通<rt>ふつう</rt></ruby>。<br>*(Đề thử khó hơn đề thật. Đề thật thường tăng được 10 điểm.)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>ですか？<br>*(Thật ạ?)* |
| Yuna | <ruby>私<rt>わたし</rt></ruby>もそうだった。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>得意<rt>とくい</rt></ruby>でしょう？<br>*(Chị cũng vậy. Nghe em giỏi rồi đúng không?)* |
| Trang | はい、<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>95<rt>きゅうじゅうご</rt></ruby>％<ruby>取<rt>と</rt></ruby>れています。<br>*(Vâng, nghe em được 95%.)* |
| Yuna | <ruby>文法<rt>ぶんぽう</rt></ruby>と<ruby>語彙<rt>ごい</rt></ruby>は？<br>*(Ngữ pháp và từ vựng?)* |
| Trang | <ruby>文法<rt>ぶんぽう</rt></ruby>は<ruby>80<rt>はちじゅっ</rt></ruby>％、<ruby>語彙<rt>ごい</rt></ruby>は<ruby>75<rt>ななじゅうご</rt></ruby>％。<br>*(Ngữ pháp 80%, từ vựng 75%.)* |
| Yuna | <ruby>合格<rt>ごうかく</rt></ruby>ライン<ruby>突破<rt>とっぱ</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>。あと<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しいことやらない。<ruby>復習<rt>ふくしゅう</rt></ruby>だけ。<br>*(Vượt mức đậu chắc chắn. 1 tuần còn lại đừng học mới. Chỉ ôn lại.)* |
| Trang | <ruby>新<rt>あたら</rt></ruby>しい<ruby>単語<rt>たんご</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えない<ruby>方<rt>ほう</rt></ruby>がいいんですか？<br>*(Không học từ mới có hơn không ạ?)* |
| Yuna | <ruby>覚<rt>おぼ</rt></ruby>えても<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>使<rt>つか</rt></ruby>えない。<ruby>知<rt>し</rt></ruby>っている<ruby>単語<rt>たんご</rt></ruby>を<ruby>確実<rt>かくじつ</rt></ruby>にね。<br>*(Học cũng không kịp dùng đề thật. Cứ chắc từ đã biết.)* |
| Trang | はい、ありがとうございます。<ruby>今夜<rt>こんや</rt></ruby>は<ruby>寝<rt>ね</rt></ruby>られそうです。<br>*(Vâng, em cảm ơn chị. Tối nay chắc em ngủ được.)* |

---

## Tình huống 9 — Phòng ăn ryokan · 7:00 ngày thi 6/12, Trang ăn sáng cùng Yuna

| Vai | Lời thoại |
|---|---|
| Yuna | チャン、<ruby>朝食<rt>ちょうしょく</rt></ruby><ruby>食<rt>た</rt></ruby>べた？<br>*(Trang, ăn sáng chưa?)* |
| Trang | はい、お<ruby>味噌汁<rt>みそしる</rt></ruby>とご<ruby>飯<rt>はん</rt></ruby>、<ruby>卵<rt>たまご</rt></ruby><ruby>食<rt>た</rt></ruby>べました。<br>*(Vâng, em ăn xong miso, cơm và trứng.)* |
| Yuna | <ruby>糖分<rt>とうぶん</rt></ruby>もね。チョコレート<ruby>持<rt>も</rt></ruby>っていって。<ruby>休憩<rt>きゅうけい</rt></ruby><ruby>時間<rt>じかん</rt></ruby>に<ruby>食<rt>た</rt></ruby>べると<ruby>頭<rt>あたま</rt></ruby><ruby>働<rt>はたら</rt></ruby>く。<br>*(Cả đường nữa. Đem chocolate đi. Lúc nghỉ giải lao ăn cho đầu óc tỉnh.)* |
| Trang | はい、ありがとうございます。<ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>鉛筆<rt>えんぴつ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>、<ruby>消<rt>け</rt></ruby>しゴム<ruby>2<rt>ふた</rt></ruby>つ、<ruby>時計<rt>とけい</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カード…<br>*(Vâng, em cảm ơn. Phiếu báo thi, 3 bút chì, 2 cục tẩy, đồng hồ, thẻ lưu trú…)* |
| Yuna | <ruby>携帯<rt>けいたい</rt></ruby>は<ruby>会場<rt>かいじょう</rt></ruby>でロッカーに<ruby>入<rt>い</rt></ruby>れるから、<ruby>事前<rt>じぜん</rt></ruby>に<ruby>電源<rt>でんげん</rt></ruby><ruby>切<rt>き</rt></ruby>っておくこと。<br>*(Điện thoại đến nơi cất tủ, tắt nguồn trước nhé.)* |
| Trang | はい。<ruby>女将<rt>おかみ</rt></ruby>さんから<ruby>頑張<rt>がんば</rt></ruby>ってって<ruby>言<rt>い</rt></ruby>われました。<br>*(Vâng. Bà chủ chúc em cố lên.)* |
| Yuna | みんな<ruby>応援<rt>おうえん</rt></ruby>している。リラックスして。<ruby>龍谷大学<rt>りゅうこくだいがく</rt></ruby>まで<ruby>地下鉄<rt>ちかてつ</rt></ruby>で<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>出<rt>で</rt></ruby>よう。<br>*(Mọi người đều cổ vũ. Thư giãn. Đến đại học Ryukoku 20 phút metro, đi sớm 8 giờ thôi.)* |

---

## Tình huống 10 — Trước cổng 龍谷大学 · 8:30, Trang gặp Linh (bạn cùng lớp)

| Vai | Lời thoại |
|---|---|
| Linh | チャン！<ruby>来<rt>き</rt></ruby>た！<ruby>緊張<rt>きんちょう</rt></ruby>している？<br>*(Trang! Đến rồi! Hồi hộp không?)* |
| Trang | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>朝<rt>あさ</rt></ruby>からトイレ<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>行<rt>い</rt></ruby>った。<br>*(Chị Linh, sáng giờ em đi toilet 3 lần.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>もそう。<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>した？<br>*(Chị cũng vậy. Em xem số báo danh chưa?)* |
| Trang | <ruby>147<rt>ひゃくよんじゅうなな</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>号館<rt>ごうかん</rt></ruby><ruby>302<rt>さんまるに</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>。<ruby>姉<rt>ねえ</rt></ruby>さんは？<br>*(Số 147, phòng 302 toà số 3. Chị thì?)* |
| Linh | <ruby>149<rt>ひゃくよんじゅうきゅう</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>教室<rt>きょうしつ</rt></ruby>！<br>*(Số 149, cùng phòng!)* |
| Trang | よかった！<ruby>姉<rt>ねえ</rt></ruby>さん<ruby>近<rt>ちか</rt></ruby>くにいると<ruby>安心<rt>あんしん</rt></ruby>する。<br>*(Tốt quá! Có chị gần em yên tâm.)* |
| Linh | <ruby>聴解<rt>ちょうかい</rt></ruby>がんばろう。あの<ruby>音<rt>おと</rt></ruby><ruby>悪<rt>わる</rt></ruby>い<ruby>会場<rt>かいじょう</rt></ruby>のスピーカーが<ruby>怖<rt>こわ</rt></ruby>い。<br>*(Cố nghe nhé. Loa của hội trường âm thanh tệ chị sợ lắm.)* |
| Trang | <ruby>耳<rt>みみ</rt></ruby>を<ruby>音源<rt>おんげん</rt></ruby>に<ruby>向<rt>む</rt></ruby>ける、<ruby>呼吸<rt>こきゅう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>える。ユナ<ruby>先輩<rt>せんぱい</rt></ruby>からのアドバイス。<br>*(Hướng tai về phía loa, điều hoà hơi thở. Lời khuyên của chị Yuna.)* |
| Linh | <ruby>頼<rt>たよ</rt></ruby>れる<ruby>先輩<rt>せんぱい</rt></ruby>でいいね。<ruby>行<rt>い</rt></ruby>こう。<br>*(Có sempai tốt nhỉ. Đi thôi.)* |

---

## Tình huống 11 — Sau khi thi · 16:00 cùng ngày, Trang gọi Yuna báo cảm nhận

| Vai | Lời thoại |
|---|---|
| Trang qua điện thoại | <ruby>先輩<rt>せんぱい</rt></ruby>！<ruby>終<rt>お</rt></ruby>わりました！<br>*(Điện thoại. Chị! Em thi xong rồi!)* |
| Yuna | お<ruby>疲<rt>つか</rt></ruby>れさま！どうだった？<br>*(Vất vả rồi! Sao rồi?)* |
| Trang | <ruby>文法<rt>ぶんぽう</rt></ruby><ruby>語彙<rt>ごい</rt></ruby><ruby>読解<rt>どっかい</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby><ruby>足<rt>た</rt></ruby>りないかと<ruby>思<rt>おも</rt></ruby>ったけど、<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>余<rt>あま</rt></ruby>って<ruby>見直<rt>みなお</rt></ruby>しできました。<br>*(Ngữ pháp - từ vựng - đọc em sợ không đủ thời gian, nhưng dư 5 phút và rà soát lại được.)* |
| Yuna | スキャニングが<ruby>効<rt>き</rt></ruby>いたね？<br>*(Scanning hiệu quả nhỉ?)* |
| Trang | はい、<ruby>本当<rt>ほんとう</rt></ruby>に。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>会場<rt>かいじょう</rt></ruby>の<ruby>音<rt>おと</rt></ruby><ruby>普通<rt>ふつう</rt></ruby>でした。ほぼ<ruby>全<rt>ぜん</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>答<rt>こた</rt></ruby>えられた<ruby>気<rt>き</rt></ruby>がします。<br>*(Vâng, thật sự. Nghe thì âm thanh hội trường bình thường. Em có cảm giác trả lời được gần hết.)* |
| Yuna | <ruby>合格<rt>ごうかく</rt></ruby>だね、<ruby>絶対<rt>ぜったい</rt></ruby>。<br>*(Đậu chắc rồi.)* |
| Trang | まだ<ruby>分<rt>わ</rt></ruby>かりません。<ruby>結果<rt>けっか</rt></ruby>は<ruby>1月<rt>いちがつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>です。<br>*(Vẫn chưa biết ạ. Kết quả cuối tháng 1.)* |
| Yuna | <ruby>今夜<rt>こんや</rt></ruby><ruby>祇園<rt>ぎおん</rt></ruby>でお<ruby>祝<rt>いわ</rt></ruby>いしよう。<ruby>結果<rt>けっか</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>なく、<ruby>2<rt>に</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ったから。<br>*(Tối nay ăn mừng ở Gion đi. Không liên quan kết quả, vì đã cố 2 tháng.)* |
| Trang | はい！リン<ruby>姉<rt>ねえ</rt></ruby>さんも<ruby>呼<rt>よ</rt></ruby>んでいいですか？<br>*(Vâng! Em rủ chị Linh được không?)* |
| Yuna | もちろん。<ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>四条<rt>しじょう</rt></ruby><ruby>駅<rt>えき</rt></ruby>で。<br>*(Tất nhiên. 7 giờ ở ga Shijo nhé.)* |

---

## Tình huống 12 — 6 tuần sau, ngày báo kết quả · 10:00, Trang xem điểm online

| Vai | Lời thoại |
|---|---|
| Trang | （パソコンの<ruby>前<rt>まえ</rt></ruby>で<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>入力<rt>にゅうりょく</rt></ruby>）<ruby>147<rt>ひゃくよんじゅうなな</rt></ruby><ruby>番<rt>ばん</rt></ruby>…エンター…<br>*(Trước máy tính nhập số báo danh. 147… enter…)* |
| Trang | （<ruby>画面<rt>がめん</rt></ruby><ruby>見<rt>み</rt></ruby>る）「<ruby>合格<rt>ごうかく</rt></ruby>」！<ruby>本当<rt>ほんとう</rt></ruby>に！<br>*(Nhìn màn hình. "Đậu"! Thật à!)* |
| Trang | <ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby><ruby>43<rt>よんじゅうさん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>52<rt>ごじゅうに</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>140<rt>ひゃくよんじゅう</rt></ruby>。<br>*(Kiến thức ngôn ngữ 43, đọc 45, nghe 52. Tổng 140.)* |
| Trang qua intercom | <ruby>女将<rt>おかみ</rt></ruby>さん！すみません、ちょっとお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか！<br>*(Bộ đàm. Thưa bà chủ! Xin lỗi, bà có một chút thời gian không ạ!)* |
| 女将 | はい、どうしたの？<br>*(Vâng, có gì đó?)* |
| Trang | N3、<ruby>合格<rt>ごうかく</rt></ruby>しました！<ruby>合計<rt>ごうけい</rt></ruby><ruby>140<rt>ひゃくよんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>です！<br>*(N3 em đậu rồi ạ! Tổng 140 điểm!)* |
| 女将 | あら、おめでとう！<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>ったわね。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>発表<rt>はっぴょう</rt></ruby>します。お<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>2万円<rt>にまんえん</rt></ruby>アップで。<br>*(Ôi, chúc mừng! Em đã thật sự cố gắng. Họp sáng hôm nay chị thông báo. Tháng sau lương cũng tăng 2 vạn yên.)* |
| Trang | （<ruby>涙<rt>なみだ</rt></ruby>）<ruby>女将<rt>おかみ</rt></ruby>さん、ありがとうございます。<ruby>来年<rt>らいねん</rt></ruby>はN2を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Khóc. Thưa bà chủ, em cảm ơn ạ. Năm sau em hướng N2.)* |
| 女将 | <ruby>気<rt>き</rt></ruby>が<ruby>早<rt>はや</rt></ruby>いわね。まず<ruby>今夜<rt>こんや</rt></ruby>はお<ruby>祝<rt>いわ</rt></ruby>い。<br>*(Em nhanh quá. Tối nay ăn mừng đã.)* |

---

## Tình huống 13 — Cảnh tiếng Việt — Phòng ký túc · 22:00, Trang video call cả nhà ở Huế

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Trang | Cả nhà ơi, con đậu N3 rồi! |
| Mẹ | Trời ơi con gái! Mẹ vừa thắp hương xin ông bà mà. |
| Bố | Đậu thì điểm sao? |
| Trang | 140/180, các phần đều qua, không phần nào dưới điểm liệt. |
| Em trai | Chị giỏi thế. Em N5 mới học chưa đâu vào đâu. |
| Trang | Em ơi, cố lên. Năm sau anh chị Trang mới giúp em xin **TTS** sang được. |
| Mẹ | Bên đó bà chủ có nói gì không con? |
| Trang | **女将さん** tăng lương cho con 2 vạn yên/tháng. Là hơn 3 triệu VND, mẹ ơi. |
| Bố | Vậy con để dành phần đó. Đừng gửi hết về. Bố mẹ ở nhà đủ ăn. |
| Trang | Con biết. Con dự định năm 3 thi luôn N2 với cấp 2 của **技能検定**. Sau đó chuyển **特定技能** để ở lại lâu hơn. |
| Mẹ | Con tính xa quá rồi. Mỗi lúc một bước con. Hôm nay con ăn mừng đi đã. |
| Trang | Vâng, tối nay con đi **祇園** với chị Yuna với chị Linh rồi. |
| Em trai | Chị nhớ chụp ảnh kimono gửi em! |
| Trang | Rồi, mai chị diện **着物** chụp. Cả nhà ngủ ngon nha. **おやすみ**! |
| Mẹ | Ngủ ngon con. Mẹ thương. |

---

## Đọng lại chương

**Mẫu câu xin phép & tư vấn:**
- **「お時間よろしいでしょうか。ご相談がございます」**
- **「〜させていただけませんか」** — xin phép trang trọng
- **「その分、〜させていただきます」** — đề xuất bù đắp

**Mẫu câu trong môi trường học:**
- **「例を教えていただけますか」**
- **「〜とはどういう意味でしょうか」**
- **「分からない言葉がありまして」**

**Bí quyết thi N3 (do sempai dạy):**
- **読解**: スキャニング — đọc câu hỏi trước rồi tìm từ khoá trong bài
- **聴解**: 耳を音源に向ける、呼吸を整える
- **直前1週間**: không học mới, chỉ ôn lại
- **本番**: 模試より10点上がるのが普通

**Ngữ pháp N3 mẫu trong chương:**
- 〜たばかり (vừa mới xong) — dùng nhiều ở ryokan
- 〜わけだ (vậy nên), 〜わけがない (không thể nào)
- 慣用句: 気が置けない (thân thiết, không cần khách sáo)
- 逆接: しかし・だが・ところが・とはいえ

**Từ vựng:** 試験・対策・申し込み・授業料・教材・文法・聴解・読解・語彙・模試・受験票・合否・採点・解答・出題・本番・直前期・慣用句

---

## Bí quyết chương

- **N3 = ngưỡng "việc làm trọn vẹn"**: nhiều ryokan/kachi xếp lương theo JLPT — N4 và N3 chênh 15-25 nghìn yên/tháng; đầu tư 2 tháng học là siêu hợp lý.
- **Học buổi tối khi đang làm full-time**: phải đàm phán với chủ — không xin "bỏ ca" mà đề xuất "bù bằng ca khác / ca sáng sớm" → 99% chủ đồng ý vì thấy em nghiêm túc.
- **聴解 90%+ là lợi thế của TTS**: hằng ngày nghe khách + sempai → JLPT 聴解 dễ hơn so với học sinh chỉ học sách.
- **読解 là yếu điểm cố hữu**: thay vì đọc hết, dùng **スキャニング** (đọc câu hỏi → tìm từ khoá → tìm 逆接 「しかし・だが」 vì sau đó thường là điểm chốt của tác giả).
- **慣用句 đảo nghĩa**: 「気が置けない」 = thân thiết (không phải lạnh nhạt), 「気が抜けない」 = phải tập trung; học theo cặp đối lập.
- **1 tuần cuối**: KHÔNG học mới — chỉ ôn cũ + ngủ đủ + ăn chocolate khi nghỉ giải lao. Sempai đã trải qua nên lời khuyên là vàng.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 試験 | しけん | THÍ NGHIỆM | kỳ thi |
| 対策 | たいさく | ĐỐI SÁCH | đối phó, ôn luyện |
| 相談 | そうだん | TƯƠNG ĐÀM | tư vấn, bàn bạc |
| 通う | かよう | THÔNG | đi học/làm thường xuyên |
| 業務 | ぎょうむ | NGHIỆP VỤ | công việc |
| 抜ける | ぬける | BẠT | rời, thoát ra |
| 限定 | げんてい | HẠN ĐỊNH | giới hạn |
| 支障 | ししょう | CHI CHƯỚNG | trở ngại |
| 給料 | きゅうりょう | CẤP LIỆU | lương |
| 申し込み | もうしこみ | THÂN VẬN | đăng ký |
| 授業料 | じゅぎょうりょう | THỤ NGHIỆP LIỆU | học phí |
| 教材 | きょうざい | GIÁO TÀI | giáo trình |
| 別途 | べっと | BIỆT ĐỒ | tính riêng |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 読解 | どっかい | ĐỌC GIẢI | đọc hiểu |
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 直後 | ちょくご | TRỰC HẬU | ngay sau |
| 強調 | きょうちょう | CƯỜNG ĐIỆU | nhấn mạnh |
| 結論 | けつろん | KẾT LUẬN | kết luận |
| 否定 | ひてい | PHỦ ĐỊNH | phủ định |
| 模試 | もし | MÔ THỬ | đề thi thử |
| 復習 | ふくしゅう | PHỤC TẬP | ôn lại |
| 単語 | たんご | ĐƠN NGỮ | từ |
| 長文 | ちょうぶん | TRƯỜNG VĂN | bài đọc dài |
| 本文 | ほんぶん | BẢN VĂN | bài đọc chính |
| 質問 | しつもん | CHẤT VẤN | câu hỏi |
| スキャニング | すきゃにんぐ | — | scanning |
| 筆者 | ひっしゃ | BÚT GIẢ | tác giả |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 反対 | はんたい | PHẢN ĐỐI | phản đối |
| 逆接 | ぎゃくせつ | NGHỊCH TIẾP | đối lập |
| 本音 | ほんね | BẢN ÂM | tâm sự thật |
| 慣用句 | かんようく | QUÁN DỤNG CÚ | thành ngữ |
| 遠慮 | えんりょ | VIỄN LỰ | khách sáo, ngại ngần |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu báo thi |
| 鉛筆 | えんぴつ | DUYÊN BÚT | bút chì |
| 消しゴム | けしごむ | TIÊU | cục tẩy |
| 在留カード | ざいりゅうかーど | TẠI LƯU | thẻ lưu trú |
| 携帯 | けいたい | KHIÊN ĐỚI | điện thoại di động |
| 電源 | でんげん | ĐIỆN NGUYÊN | nguồn điện |
| 余裕 | よゆう | DƯ DỤ | dư dả, thừa |
| 糖分 | とうぶん | ĐƯỜNG PHÂN | đường |
| 休憩 | きゅうけい | NGHỈ KHẾ | nghỉ giải lao |
| 教室 | きょうしつ | GIÁO THẤT | phòng học |
| 音源 | おんげん | ÂM NGUYÊN | nguồn âm thanh |
| 呼吸 | こきゅう | HÔ HẤP | hơi thở |
| 整える | ととのえる | CHỈNH | điều hoà |
| 見直し | みなおし | KIẾN TRỰC | rà soát lại |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 下旬 | げじゅん | HẠ TUẦN | hạ tuần (cuối tháng) |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | kiến thức ngôn ngữ |
| 採点 | さいてん | THÁI ĐIỂM | chấm điểm |
| 合否 | ごうひ | HỢP PHỦ | đậu/rớt |
| 目指す | めざす | MỤC CHỈ | nhắm đến |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | tokutei ginou, SSW |
| 着物 | きもの | TRỨ VẬT | kimono |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000009, 800000047, NULL, 'markdown_book', 'T09. Khách inbound Mỹ — Tiếng Anh trộn tiếng Nhật', '# Sách 47 Hotel Year 2 · T09. Khách inbound Mỹ — Tiếng Anh trộn tiếng Nhật

> **Mục tiêu nhân vật:** Trang (24t, Huế, TTS năm 2 ryokan Kyoto, N3). Học các mẫu hội thoại tiếng Nhật của 仲居 tiếp khách inbound: (1) báo cáo 女将 khi khách không nói Nhật, (2) giải thích văn hoá ryokan bằng JP đơn giản, (3) chuyển ngữ giữa khách-bếp, (4) xử lý dị ứng/halal/vegan bằng JP, (5) hướng dẫn 浴衣・温泉 cho người mới, (6) ghi nhận phản hồi song ngữ.

## Bối cảnh

Tháng 1/2027. Sau đợt Tết Tây, ryokan Kyoto đón đoàn 4 khách Mỹ (gia đình Smith, San Francisco) lưu trú 3 đêm. Họ đặt qua Booking.com, không nói tiếng Nhật. 女将 phân Trang tiếp đoàn vì Trang biết tiếng Anh từ thời làm nhà hàng Huế. Trang vừa làm thông dịch viên, vừa học cách giải thích văn hoá Nhật cho người nước ngoài. Chương này tập trung mẫu báo cáo song ngữ và cụm JP "khách nước ngoài hay hỏi".

## Tình huống 1 — Phòng nghỉ 仲居, 8:00, briefing với 女将

*女将 đưa Trang bản đặt phòng tiếng Anh.*

| Vai | Lời thoại |
|---|---|
| 女将 | <ruby>今日<rt>きょう</rt></ruby>からスミス<ruby>様<rt>さま</rt></ruby>ご<ruby>家族<rt>かぞく</rt></ruby>4<ruby>名<rt>めい</rt></ruby>、3<ruby>泊<rt>ぱく</rt></ruby>です。<ruby>英語<rt>えいご</rt></ruby>のみ。トランさん、<ruby>担当<rt>たんとう</rt></ruby>してくれる？<br>*(Từ hôm nay gia đình Smith 4 người, 3 đêm. Chỉ tiếng Anh. Trang phụ trách nhé?)* |
| Trang | はい、<ruby>女将<rt>おかみ</rt></ruby>さん。<ruby>英語<rt>えいご</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>しできます。<ruby>分<rt>わ</rt></ruby>からない<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>聞<rt>き</rt></ruby>きに<ruby>来<rt>き</rt></ruby>ます。<br>*(Vâng, Okami. Em biết chút tiếng Anh. Từ tiếng Nhật nào không biết em sẽ hỏi sau.)* |
| 女将 | <ruby>食事<rt>しょくじ</rt></ruby>のアレルギーはピーナッツ。<ruby>長男<rt>ちょうなん</rt></ruby>さんが<ruby>重度<rt>じゅうど</rt></ruby>です。<ruby>板長<rt>いたちょう</rt></ruby>さんに<ruby>必<rt>かなら</rt></ruby>ず<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Dị ứng đậu phộng. Con trai cả nặng. Nhớ báo bếp trưởng.)* |
| Trang | かしこまりました。アレルギーカードを<ruby>英語<rt>えいご</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>作<rt>つく</rt></ruby>っておきます。<br>*(Em hiểu. Em sẽ làm thẻ dị ứng song ngữ.)* |

## Tình huống 2 — Sảnh, 14:30, đón check-in

| Vai | Lời thoại |
|---|---|
| Trang | Welcome to our ryokan. いらっしゃいませ。スミス<ruby>様<rt>さま</rt></ruby>ですね？<br>*(Welcome to our ryokan. Kính chào quý khách. Là quý khách Smith ạ?)* |
| Mr. Smith | Yes! Hi, nice to meet you. Wow this is beautiful. |
| Trang | Thank you. Please take off your shoes here. <ruby>靴<rt>くつ</rt></ruby>はこちらで<ruby>脱<rt>ぬ</rt></ruby>いでください。Slippers, please. |
| Mrs. Smith | Oh, okay. Do we leave them here? |
| Trang | Yes. <ruby>後<rt>あと</rt></ruby>で<ruby>片付<rt>かたづ</rt></ruby>けます。No worry. This way to the front desk, please. どうぞこちらへ。 |

## Tình huống 3 — Quầy lễ tân, 14:45, giải thích 浴衣

| Vai | Lời thoại |
|---|---|
| Trang | This is *yukata*, Japanese summer kimono. <ruby>夕食<rt>ゆうしょく</rt></ruby>と<ruby>温泉<rt>おんせん</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>着<rt>き</rt></ruby>てください。You can wear it for dinner and onsen. |
| Mrs. Smith | How do we wear it? Left or right side first? |
| Trang | Good question! Left over right. <ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>です。Right over left is only for funerals. <ruby>反対<rt>はんたい</rt></ruby>はお<ruby>葬式<rt>そうしき</rt></ruby>の<ruby>時<rt>とき</rt></ruby>だけ。 |
| Mr. Smith | Oh wow, important! Got it, left over right. |
| Trang | はい、<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>後<rt>あと</rt></ruby>で<ruby>部屋<rt>へや</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>してみてくださいね。Try in your room later. |

## Tình huống 4 — Phòng khách, 15:30, hướng dẫn 温泉 quy tắc

| Vai | Lời thoại |
|---|---|
| Trang | About *onsen*, hot spring. <ruby>温泉<rt>おんせん</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。 |
| Mr. Smith | Yes please, we never tried before. |
| Trang | First, wash your body before entering the bath. <ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>体<rt>からだ</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>います。No swimsuit, no towel in water. |
| Mrs. Smith | Naked? Really naked? |
| Trang | Yes, naked. すみません、<ruby>裸<rt>はだか</rt></ruby>です。But men and women are separated. <ruby>男女<rt>だんじょ</rt></ruby><ruby>別<rt>べつ</rt></ruby>です。Don''t worry. |
| Mr. Smith | Haha okay, when in Japan! Tattoo is okay? My son has small one. |
| Trang | <ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。I check with Okami. <ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>聞<rt>き</rt></ruby>いてきます。 |

## Tình huống 5 — Phòng 女将, 15:40, xác nhận tattoo

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、スミスさんの<ruby>息子<rt>むすこ</rt></ruby>さんに<ruby>小<rt>ちい</rt></ruby>さい<ruby>刺青<rt>いれずみ</rt></ruby>があるそうです。<ruby>温泉<rt>おんせん</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Okami, con trai khách Smith có hình xăm nhỏ. Vào onsen được không?)* |
| 女将 | <ruby>小<rt>ちい</rt></ruby>さければ、<ruby>絆創膏<rt>ばんそうこう</rt></ruby>で<ruby>隠<rt>かく</rt></ruby>してもらえれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ステッカーをお<ruby>渡<rt>わた</rt></ruby>しして。<br>*(Nhỏ thì che bằng băng dán là được. Đưa khách sticker.)* |
| Trang | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>英語<rt>えいご</rt></ruby>で「Please cover with sticker」と<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Vâng. Em sẽ nói "Please cover with sticker" bằng tiếng Anh.)* |

## Tình huống 6 — Bếp, 16:30, báo dị ứng với 板長

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>さん、スミス<ruby>様<rt>さま</rt></ruby>の<ruby>長男<rt>ちょうなん</rt></ruby>、ピーナッツアレルギーが<ruby>重度<rt>じゅうど</rt></ruby>です。<ruby>調理器具<rt>ちょうりきぐ</rt></ruby>も<ruby>分<rt>わ</rt></ruby>けてください。<br>*(Bếp trưởng, con cả khách Smith dị ứng đậu phộng nặng. Xin tách dụng cụ nấu.)* |
| 板長 | <ruby>了解<rt>りょうかい</rt></ruby>。ピーナッツオイルも<ruby>使<rt>つか</rt></ruby>わない。ごま<ruby>油<rt>あぶら</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>？<br>*(Hiểu. Dầu đậu phộng cũng không dùng. Dầu mè được không?)* |
| Trang | <ruby>確認<rt>かくにん</rt></ruby>します。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。 *(Quay máy bộ đàm)* Mr. Smith, sesame oil okay for your son? |
| Mr. Smith | Sesame oil is fine, only peanut allergy. |
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>さん、ごま<ruby>油<rt>あぶら</rt></ruby>はOKです。ピーナッツのみNGです。<br>*(Bếp trưởng, dầu mè OK. Chỉ đậu phộng là NG.)* |

## Tình huống 7 — Phòng ăn, 18:00, giới thiệu 懐石

| Vai | Lời thoại |
|---|---|
| Trang | Tonight, *kaiseki* dinner. <ruby>懐石<rt>かいせき</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>、9 dishes. From small to big, season-based. |
| Mrs. Smith | What is this orange thing? |
| Trang | うに, sea urchin. <ruby>北海道<rt>ほっかいどう</rt></ruby>から。From Hokkaido. Very fresh. |
| Mr. Smith | And this? *(chỉ お椀)* |
| Trang | お<ruby>椀<rt>わん</rt></ruby>, soup bowl. <ruby>湯葉<rt>ゆば</rt></ruby> tofu skin, and *yuzu* peel. Lift with two hands, please. <ruby>両手<rt>りょうて</rt></ruby>で<ruby>持<rt>も</rt></ruby>ってください。 |

## Tình huống 8 — Phòng ăn, 18:40, đứa con phun ra món lạ

| Vai | Lời thoại |
|---|---|
| Smith con | Eww, what is this? It''s weird! |
| Mrs. Smith | Honey, don''t be rude. I''m so sorry, Trang. |
| Trang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。No problem. This is *natto*, fermented soybean. Strong smell. <ruby>納豆<rt>なっとう</rt></ruby>、<ruby>苦手<rt>にがて</rt></ruby>な<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>、<ruby>多<rt>おお</rt></ruby>いです。 |
| Mrs. Smith | Can we have something else for him? |
| Trang | はい、<ruby>卵焼<rt>たまごや</rt></ruby>きに<ruby>変<rt>か</rt></ruby>えます。Tamagoyaki, sweet omelet. <ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。 |

## Tình huống 9 — Phòng nghỉ 仲居, 19:30, báo cáo 女将

*Trang chạy về báo nhanh.*

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、お<ruby>子様<rt>こさま</rt></ruby>が<ruby>納豆<rt>なっとう</rt></ruby>を<ruby>苦手<rt>にがて</rt></ruby>でしたので、<ruby>卵焼<rt>たまごや</rt></ruby>きに<ruby>変<rt>か</rt></ruby>えました。よろしかったでしょうか。<br>*(Okami, em bé không ăn được natto, em đổi sang trứng cuộn. Có ổn không ạ?)* |
| 女将 | <ruby>判断<rt>はんだん</rt></ruby>がいいです。お<ruby>子様<rt>こさま</rt></ruby>には<ruby>無理<rt>むり</rt></ruby>させないでね。<ruby>次回<rt>じかい</rt></ruby>からは<ruby>事前<rt>じぜん</rt></ruby>に<ruby>苦手<rt>にがて</rt></ruby>な<ruby>物<rt>もの</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いておきましょう。<br>*(Phán đoán tốt. Đừng ép trẻ con. Lần sau hỏi trước món kỵ.)* |
| Trang | はい、チェックインの<ruby>時<rt>とき</rt></ruby>に「Dislike list」を<ruby>聞<rt>き</rt></ruby>くようにします。<br>*(Vâng, lúc check-in em sẽ hỏi "Dislike list".)* |

## Tình huống 10 — Hành lang, 21:00, hướng dẫn 布団

| Vai | Lời thoại |
|---|---|
| Mr. Smith | Excuse me, where is the bed? |
| Trang | Now I make *futon*, Japanese bed on tatami. <ruby>布団<rt>ふとん</rt></ruby>を<ruby>敷<rt>し</rt></ruby>きます。 |
| Mrs. Smith | Oh on the floor? |
| Trang | Yes. <ruby>畳<rt>たたみ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に。It''s traditional. Very comfortable, soft. Please wait 5 minutes. |
| Mr. Smith | Can we help? |
| Trang | No no, my job. <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です、お<ruby>仕事<rt>しごと</rt></ruby>ですから。You please relax in lobby. お<ruby>茶<rt>ちゃ</rt></ruby>もどうぞ。 |

## Tình huống 11 — Sảnh, ngày 2 sáng, hỏi 観光

| Vai | Lời thoại |
|---|---|
| Mrs. Smith | Trang, can you recommend us a place today? Not too touristy. |
| Trang | <ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。 <ruby>嵐山<rt>あらしやま</rt></ruby>はどうですか？Arashiyama. Bamboo forest, monkey park. Less crowd in morning. |
| Mr. Smith | How to get there? |
| Trang | Bus number 28 from Kyoto station. <ruby>地図<rt>ちず</rt></ruby>を<ruby>書<rt>か</rt></ruby>きます。Let me draw map. <ruby>英語<rt>えいご</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>で。 |
| Mrs. Smith | You are amazing, thank you so much. |
| Trang | いえいえ、<ruby>仕事<rt>しごと</rt></ruby>です。Please enjoy. <ruby>気<rt>き</rt></ruby>をつけて。 |

## Tình huống 12 — Phòng khách, ngày 3 sáng, phản hồi

| Vai | Lời thoại |
|---|---|
| Mrs. Smith | Trang, this was the best part of our Japan trip. Really. |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>嬉<rt>うれ</rt></ruby>しいです！Thank you very much. |
| Mr. Smith | Where did you learn English? It''s really good. |
| Trang | <ruby>高校<rt>こうこう</rt></ruby>でと、レストランで。Vietnam, Hue city. I worked in restaurant before. |
| Mrs. Smith | Please write your name. We will mention you in TripAdvisor review. |
| Trang | わあ、ありがとうございます！Trang, T-R-A-N-G. <ruby>女将<rt>おかみ</rt></ruby>さんにも<ruby>伝<rt>つた</rt></ruby>えます。 |

## Tình huống 13 — Phòng 女将, sau khi tiễn khách, báo cáo

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>女将<rt>おかみ</rt></ruby>さん、スミス<ruby>様<rt>さま</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby>チェックアウトされました。<ruby>口<rt>くち</rt></ruby>コミを<ruby>書<rt>か</rt></ruby>いてくださるそうです。<br>*(Okami, gia đình Smith đã check-out an toàn. Họ nói sẽ viết review.)* |
| 女将 | お<ruby>疲<rt>つか</rt></ruby>れさま。トランさん、<ruby>英語<rt>えいご</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。これからもインバウンドの<ruby>担当<rt>たんとう</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vất vả rồi. Trang đối ứng tiếng Anh thật cứu cánh. Sau này phụ trách inbound luôn nhé.)* |
| Trang | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>英語<rt>えいご</rt></ruby>の<ruby>接客<rt>せっきゃく</rt></ruby><ruby>用語<rt>ようご</rt></ruby>も<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Vâng, em cố gắng. Em sẽ học thêm thuật ngữ tiếp khách tiếng Anh.)* |
| 女将 | <ruby>来月<rt>らいげつ</rt></ruby>、<ruby>英語<rt>えいご</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>に<ruby>行<rt>い</rt></ruby>かせます。<ruby>京都市<rt>きょうとし</rt></ruby>の<ruby>観光協会<rt>かんこうきょうかい</rt></ruby>のセミナー。<br>*(Tháng sau Okami cho đi tập huấn tiếng Anh. Seminar của hội du lịch Kyoto.)* |

## Tình huống 14 — Phòng ký túc, 22:00, gọi điện về Huế

> Cảnh tiếng Việt — gọi điện về cho em gái Hà.

| Vai | Lời thoại |
|---|---|
| Trang | Hà ơi, chị mới làm thông dịch cho đoàn Mỹ 3 ngày luôn nè. Vừa Nhật vừa Anh. |
| Hà | Trời chị xịn quá! Em tưởng chị quên hết tiếng Anh hồi làm nhà hàng rồi. |
| Trang | Cũng quên kha khá, nhưng nói chậm chậm thì được. Khách khen quá trời, còn nói sẽ viết kuchi-komi — à, review trên TripAdvisor. |
| Hà | Okami có khen chị không? |
| Trang | Có chứ. Bà bảo từ giờ chị làm tantou — phụ trách — khách inbound luôn. Tháng sau còn cho đi kenshuu — tập huấn — tiếng Anh ở Kyoto. |
| Hà | Em tự hào chị quá. Mẹ mà nghe chắc khóc. |
| Trang | Để chị gọi mẹ sau. Tối nay chị mệt lắm, chạy 3 ngày liền. Nhưng vui. |

## Đọng lại chương

**Mẫu câu JP trộn Anh quan trọng:**
- 「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください」+ "Let me check" — câu chuyển ngữ vạn năng
- 「<ruby>確認<rt>かくにん</rt></ruby>します」— xác nhận lại
- 「<ruby>苦手<rt>にがて</rt></ruby>な<ruby>物<rt>もの</rt></ruby>はございますか」— hỏi món kỵ
- 「<ruby>変<rt>か</rt></ruby>えます」— xin đổi món
- 「<ruby>了解<rt>りょうかい</rt></ruby>です」— báo cáo sempai/板長
- 「インバウンド<ruby>対応<rt>たいおう</rt></ruby>」— đối ứng khách inbound
- 「お<ruby>子様<rt>こさま</rt></ruby>には<ruby>無理<rt>むり</rt></ruby>させない」— đừng ép trẻ con
- 「<ruby>事前<rt>じぜん</rt></ruby>に<ruby>聞<rt>き</rt></ruby>く」— hỏi trước

> Từ vựng & mẫu câu chương này: 担当・確認・対応・刺青・絆創膏・アレルギー・重度・板長・調理器具・懐石・湯葉・うに・納豆・卵焼き・布団・畳・口コミ・研修・観光協会・嵐山・嬉しい・無事・事前・苦手・判断・変える・敷く・脱ぐ・浴衣・温泉・葬式・左・反対・裸・男女別・無理させない

## Bí quyết chương

- Khi khách không nói Nhật, "Let me check" + 「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください」là cặp đôi vàng — không bao giờ trả lời ẩu.
- Tattoo ở Nhật: ryokan truyền thống nhỏ thì che băng dán OK, lớn thì hỏi 女将 trước.
- Giải thích 浴衣: "Left over right" — phải nhấn vì right-over-left là kimono người chết.
- Báo dị ứng cho 板長 phải nói "<ruby>重度<rt>じゅうど</rt></ruby>" (nặng) hay "<ruby>軽度<rt>けいど</rt></ruby>" (nhẹ) rõ ràng, và hỏi cả dầu chiên.
- Khách Mỹ thường thoải mái nhưng trẻ con kén ăn — luôn hỏi "Dislike list" lúc check-in.
- Khi khách khen, đáp 「いえいえ、<ruby>仕事<rt>しごと</rt></ruby>です」khiêm tốn kiểu Nhật, đừng "Thank you" suông.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 重度 | じゅうど | TRỌNG ĐỘ | mức độ nặng |
| 軽度 | けいど | KHINH ĐỘ | mức độ nhẹ |
| アレルギー | あれるぎー | — | dị ứng |
| 板長 | いたちょう | BẢN TRƯỞNG | bếp trưởng |
| 調理器具 | ちょうりきぐ | ĐIỀU LÝ KHÍ CỤ | dụng cụ nấu |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 対応 | たいおう | ĐỐI ỨNG | đối ứng, xử lý |
| 浴衣 | ゆかた | DỤC Y | yukata |
| 温泉 | おんせん | ÔN TUYỀN | suối nước nóng |
| 葬式 | そうしき | TÁNG THỨC | đám tang |
| 反対 | はんたい | PHẢN ĐỐI | ngược lại |
| 裸 | はだか | LOÃ | trần truồng |
| 男女別 | だんじょべつ | NAM NỮ BIỆT | nam nữ riêng |
| 刺青 | いれずみ | THÍCH THANH | hình xăm |
| 絆創膏 | ばんそうこう | BẠN SÁNG CAO | băng dán cá nhân |
| 隠す | かくす | ẨN | che giấu |
| 懐石 | かいせき | HOÀI THẠCH | ẩm thực kaiseki |
| 湯葉 | ゆば | THANG DIỆP | váng đậu phụ |
| うに | うに | — | nhím biển |
| 納豆 | なっとう | NẠP ĐẬU | natto |
| 卵焼き | たまごやき | NOÃN THIÊU | trứng cuộn |
| 苦手 | にがて | KHỔ THỦ | kỵ, không thích |
| 変える | かえる | BIẾN | thay đổi |
| 布団 | ふとん | BỐ ĐOÀN | nệm trải sàn |
| 畳 | たたみ | ĐIỆP | chiếu tatami |
| 敷く | しく | PHU | trải |
| 脱ぐ | ぬぐ | THOÁT | cởi |
| お子様 | おこさま | TỬ DẠNG | em bé (kính ngữ) |
| 無理 | むり | VÔ LÝ | quá sức |
| 判断 | はんだん | PHÁN ĐOÁN | phán đoán |
| 事前 | じぜん | SỰ TIỀN | từ trước |
| 嵐山 | あらしやま | LAM SƠN | Arashiyama (địa danh Kyoto) |
| 観光協会 | かんこうきょうかい | QUAN QUANG HIỆP HỘI | hội du lịch |
| 研修 | けんしゅう | NGHIÊN TU | tập huấn |
| 口コミ | くちこみ | KHẨU — | review truyền miệng |
| 無事 | ぶじ | VÔ SỰ | bình an, suôn sẻ |
| 嬉しい | うれしい | HỶ | vui |
| 接客用語 | せっきゃくようご | TIẾP KHÁCH DỤNG NGỮ | thuật ngữ tiếp khách |
| 練習 | れんしゅう | LUYỆN TẬP | luyện tập |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000010, 800000047, NULL, 'markdown_book', 'T10. 若女将 Aiko thừa kế — Thế hệ mới ryokan', '# Sách 47 Hotel Year 2 · T10. 若女将 Aiko thừa kế — Thế hệ mới ryokan

> **Mục tiêu nhân vật:** Trang (24t, Huế, TTS năm 2 ryokan Kyoto, N3). Học các mẫu hội thoại tiếng Nhật của 仲居 trong giai đoạn chuyển giao: (1) chào và đối thoại với 若女将 mới, (2) phân biệt chỉ đạo cũ-mới khi xung đột, (3) báo cáo song song hai cấp, (4) hỗ trợ 若女将 hiểu góc nhìn nhân viên TTS, (5) đề xuất cải tiến với người trẻ, (6) duy trì 礼儀 với 大女将.

## Bối cảnh

Đầu tháng 2/2027. 女将 (60t, gọi là 大女将 từ nay) thông báo chuyển dần quyền cho con gái duy nhất Aiko (32t, du học Mỹ về). Aiko trở thành 若女将 — phụ trách chính sảnh, marketing, inbound. 大女将 vẫn giữ quyền quyết định cuối về bếp và truyền thống. Trang nay nằm giữa hai cấp chỉ đạo. Aiko có phong cách Tây hoá, hiện đại, muốn đổi mới; 大女将 muốn giữ truyền thống. Chương này tập trung mẫu câu giao tiếp đa cấp và xử lý va chạm thế hệ.

## Tình huống 1 — Phòng họp, 9:00, lễ giới thiệu 若女将

*Toàn bộ nhân viên 12 người tập trung. 大女将 đứng giữa, Aiko bên cạnh mặc kimono.*

| Vai | Lời thoại |
|---|---|
| 大女将 | <ruby>皆<rt>みな</rt></ruby>さん、お<ruby>集<rt>あつ</rt></ruby>まりいただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>娘<rt>むすめ</rt></ruby>のアイコを<ruby>若女将<rt>わかおかみ</rt></ruby>として<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Mời mọi người tập hợp, cảm ơn. Hôm nay tôi giới thiệu con gái Aiko làm Waka-okami.)* |
| Aiko | アイコと<ruby>申<rt>もう</rt></ruby>します。<ruby>母<rt>はは</rt></ruby>のもとで<ruby>修業<rt>しゅぎょう</rt></ruby>を<ruby>積<rt>つ</rt></ruby>み、<ruby>皆<rt>みな</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>にこの<ruby>旅館<rt>りょかん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>っていきたいです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi tên Aiko. Tu nghiệp dưới mẹ, tôi muốn cùng mọi người giữ gìn ryokan này. Mong được giúp đỡ.)* |
| Trang | *(cúi sâu)* トランです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là Trang. Rất mong được giúp đỡ.)* |
| Aiko | トランさん、ベトナムから？<ruby>母<rt>はは</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いています。インバウンド<ruby>対応<rt>たいおう</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>とか。<br>*(Trang từ Việt Nam? Tôi nghe mẹ nói. Đối ứng inbound giỏi nhỉ.)* |
| Trang | いえ、まだまだです。<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>です。<br>*(Dạ không, em còn kém. Đang học ạ.)* |

## Tình huống 2 — Sảnh, 10:30, 若女将 hỏi quy trình check-in

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、<ruby>今<rt>いま</rt></ruby>のチェックインのフロー、<ruby>説明<rt>せつめい</rt></ruby>してもらえますか。<br>*(Trang, giải thích quy trình check-in hiện tại được không?)* |
| Trang | はい。まずお<ruby>名前<rt>なまえ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>し、お<ruby>履物<rt>はきもの</rt></ruby>を<ruby>預<rt>あず</rt></ruby>かり、ウェルカムドリンクの<ruby>抹茶<rt>まっちゃ</rt></ruby>をお<ruby>出<rt>だ</rt></ruby>しします。<ruby>記入<rt>きにゅう</rt></ruby>カードは<ruby>紙<rt>かみ</rt></ruby>です。<br>*(Vâng. Đầu tiên xác nhận tên, nhận giày, đưa trà抹 chào mừng. Phiếu đăng ký là giấy.)* |
| Aiko | <ruby>紙<rt>かみ</rt></ruby>のカード、<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>には<ruby>大変<rt>たいへん</rt></ruby>じゃないですか。タブレットに<ruby>変<rt>か</rt></ruby>えるのはどうでしょう？<br>*(Phiếu giấy với khách nước ngoài chẳng phải vất vả sao? Đổi sang tablet thế nào?)* |
| Trang | <ruby>確<rt>たし</rt></ruby>かに<ruby>外国<rt>がいこく</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>書<rt>か</rt></ruby>きにくいです。タブレット、<ruby>便利<rt>べんり</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Đúng là khách nước ngoài khó viết kanji. Tablet em nghĩ tiện.)* |
| Aiko | <ruby>母<rt>はは</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>してみますね。<ruby>意見<rt>いけん</rt></ruby>ありがとう。<br>*(Tôi sẽ bàn với mẹ. Cảm ơn ý kiến.)* |

## Tình huống 3 — Phòng 大女将, 11:00, va chạm thế hệ

*Trang đi giao tài liệu, vô tình nghe.*

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>母<rt>かあ</rt></ruby>さん、タブレット<ruby>導入<rt>どうにゅう</rt></ruby>、<ruby>本気<rt>ほんき</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えてください。コスト<ruby>削減<rt>さくげん</rt></ruby>にもなります。<br>*(Mẹ, xem xét nghiêm túc việc đưa tablet vào. Cũng giảm chi phí.)* |
| 大女将 | アイコ、<ruby>旅館<rt>りょかん</rt></ruby>は<ruby>効率<rt>こうりつ</rt></ruby>だけじゃないの。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>手<rt>て</rt></ruby>で<ruby>書<rt>か</rt></ruby>かれた<ruby>字<rt>じ</rt></ruby>に「ようこそ」を<ruby>感<rt>かん</rt></ruby>じる。<br>*(Aiko, ryokan đâu chỉ là hiệu suất. Chữ khách viết tay gửi cảm giác "chào đón".)* |
| Aiko | でも<ruby>若<rt>わか</rt></ruby>い<ruby>世代<rt>せだい</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>うわ。<ruby>時代<rt>じだい</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせないと。<br>*(Nhưng khách thế hệ trẻ khác mà. Phải theo thời đại chứ.)* |
| 大女将 | <ruby>分<rt>わ</rt></ruby>かった。<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>だけタブレット、<ruby>日本<rt>にほん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は<ruby>紙<rt>かみ</rt></ruby>。<ruby>折衷<rt>せっちゅう</rt></ruby>でいきましょう。<br>*(Hiểu rồi. Khách ngoại tablet, khách Nhật giấy. Dung hoà nhé.)* |

## Tình huống 4 — Hành lang, 11:15, Trang giả vờ không nghe

| Vai | Lời thoại |
|---|---|
| Aiko | *(thấy Trang)* あ、トランさん。<ruby>今<rt>いま</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>、<ruby>聞<rt>き</rt></ruby>こえた？<br>*(Trang à, vừa rồi có nghe không?)* |
| Trang | すみません、<ruby>少<rt>すこ</rt></ruby>しだけ…。<br>*(Xin lỗi, em chỉ nghe chút...)* |
| Aiko | いいのよ。<ruby>母<rt>はは</rt></ruby>と<ruby>意見<rt>いけん</rt></ruby>が<ruby>合<rt>あ</rt></ruby>わない<ruby>時<rt>とき</rt></ruby>もあるの。トランさんはどっちが<ruby>良<rt>よ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>う？<br>*(Không sao. Cũng có lúc tôi bất đồng với mẹ. Trang nghĩ bên nào tốt hơn?)* |
| Trang | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>って、<ruby>折衷<rt>せっちゅう</rt></ruby>がいいと<ruby>思<rt>おも</rt></ruby>います。<ruby>大女将<rt>おおおかみ</rt></ruby>さんの「<ruby>手書<rt>てが</rt></ruby>き」の<ruby>気持<rt>きも</rt></ruby>ちも<ruby>素敵<rt>すてき</rt></ruby>です。<br>*(Thật lòng, em nghĩ dung hoà tốt. "Viết tay" của Đại-Okami cũng đẹp.)* |
| Aiko | ありがとう。トランさんは<ruby>外<rt>そと</rt></ruby>の<ruby>目<rt>め</rt></ruby>で<ruby>見<rt>み</rt></ruby>てくれるから<ruby>助<rt>たす</rt></ruby>かる。<br>*(Cảm ơn. Trang nhìn bằng con mắt bên ngoài nên quý lắm.)* |

## Tình huống 5 — Phòng nhân viên, 13:00, các đồng nghiệp bàn luận

| Vai | Lời thoại |
|---|---|
| 田中 (sempai) | <ruby>若女将<rt>わかおかみ</rt></ruby>、すごくモダンな<ruby>方<rt>かた</rt></ruby>ね。アメリカ<ruby>帰<rt>がえ</rt></ruby>りだから。<br>*(Waka-okami rất hiện đại. Vì về từ Mỹ mà.)* |
| Chen (Trung Quốc) | <ruby>変<rt>か</rt></ruby>わるのは<ruby>怖<rt>こわ</rt></ruby>いけど、<ruby>必要<rt>ひつよう</rt></ruby>かもしれません。<br>*(Đổi mới thì sợ nhưng có lẽ cần.)* |
| Trang | <ruby>両方<rt>りょうほう</rt></ruby>のいい<ruby>所<rt>ところ</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>せたらいいですね。<br>*(Giữ được điểm tốt của cả hai bên thì hay.)* |
| 田中 | トランさん、<ruby>若女将<rt>わかおかみ</rt></ruby>に<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>られたみたい。インバウンド<ruby>担当<rt>たんとう</rt></ruby>、ますます<ruby>頼<rt>たよ</rt></ruby>られるよ。<br>*(Trang được Waka-okami quý đấy. Đảm đương inbound càng ngày càng được nhờ.)* |
| Trang | プレッシャーですけど、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Áp lực nhưng em cố gắng.)* |

## Tình huống 6 — Sảnh, 14:00, 若女将 đề xuất chụp hình SNS

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、インスタ<ruby>用<rt>よう</rt></ruby>に<ruby>客室<rt>きゃくしつ</rt></ruby>と<ruby>料理<rt>りょうり</rt></ruby>を<ruby>撮影<rt>さつえい</rt></ruby>したいんだけど、<ruby>手伝<rt>てつだ</rt></ruby>ってくれる？<br>*(Trang, tôi muốn chụp phòng và món ăn cho Instagram, giúp được không?)* |
| Trang | はい、<ruby>喜<rt>よろこ</rt></ruby>んで。いつでしょうか。<br>*(Vâng, em sẵn lòng. Khi nào ạ?)* |
| Aiko | <ruby>明日<rt>あした</rt></ruby>の<ruby>午前中<rt>ごぜんちゅう</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>がいない<ruby>時間<rt>じかん</rt></ruby>に。トランさんのSNSのセンス、<ruby>母<rt>はは</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いてるから。<br>*(Sáng mai, lúc không có khách. Sense SNS của Trang tôi nghe mẹ kể.)* |
| Trang | あ、<ruby>個人<rt>こじん</rt></ruby>のインスタですが…。 |
| Aiko | <ruby>十分<rt>じゅうぶん</rt></ruby>。<ruby>若<rt>わか</rt></ruby>い<ruby>世代<rt>せだい</rt></ruby>の<ruby>視点<rt>してん</rt></ruby>がほしいの。<br>*(Đủ rồi. Tôi muốn góc nhìn thế hệ trẻ.)* |

## Tình huống 7 — Phòng 大女将, 15:00, báo cáo song song

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>大女将<rt>おおおかみ</rt></ruby>さん、<ruby>若女将<rt>わかおかみ</rt></ruby>さんから<ruby>明日<rt>あした</rt></ruby>の<ruby>撮影<rt>さつえい</rt></ruby>のお<ruby>手伝<rt>てつだ</rt></ruby>いを<ruby>頼<rt>たの</rt></ruby>まれました。よろしいでしょうか。<br>*(Đại-Okami, Waka-okami nhờ em giúp chụp ngày mai. Em xin phép.)* |
| 大女将 | アイコから<ruby>聞<rt>き</rt></ruby>いてます。やってちょうだい。でも、お<ruby>仏間<rt>ぶつま</rt></ruby>と<ruby>奥<rt>おく</rt></ruby>の<ruby>茶室<rt>ちゃしつ</rt></ruby>は<ruby>撮<rt>と</rt></ruby>らないでね。<br>*(Aiko báo rồi. Cứ làm. Nhưng phòng thờ và trà thất trong cùng đừng chụp.)* |
| Trang | かしこまりました。<ruby>若女将<rt>わかおかみ</rt></ruby>さんにも<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Em hiểu. Sẽ báo lại Waka-okami.)* |
| 大女将 | トランさん、<ruby>両方<rt>りょうほう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してくれてありがとう。それが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Trang báo cả hai bên, cảm ơn. Điều đó quan trọng.)* |

## Tình huống 8 — Khu vườn, ngày hôm sau 10:00, chụp hình

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、ここの<ruby>角度<rt>かくど</rt></ruby>、どう<ruby>思<rt>おも</rt></ruby>う？ |
| Trang | もう<ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>く<ruby>撮<rt>と</rt></ruby>ると<ruby>畳<rt>たたみ</rt></ruby>と<ruby>庭<rt>にわ</rt></ruby>が<ruby>両方<rt>りょうほう</rt></ruby><ruby>入<rt>はい</rt></ruby>ります。<br>*(Chụp thấp xuống chút thì cả chiếu và vườn vào hết.)* |
| Aiko | おお、<ruby>本当<rt>ほんとう</rt></ruby>だ！センスいいね。 |
| Trang | <ruby>朝<rt>あさ</rt></ruby>の<ruby>光<rt>ひかり</rt></ruby>が<ruby>柔<rt>やわ</rt></ruby>らかいので、フィルターなしでも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Ánh sáng sáng dịu, không cần filter cũng được.)* |
| Aiko | キャプションのアイデアもある？ |
| Trang | 「<ruby>四季<rt>しき</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じる<ruby>朝<rt>あさ</rt></ruby>」とか…<ruby>英語<rt>えいご</rt></ruby>なら "Morning where you feel the seasons" とか。 |
| Aiko | <ruby>採用<rt>さいよう</rt></ruby>！<ruby>給料<rt>きゅうりょう</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>させるね、<ruby>母<rt>はは</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>んで。<br>*(Lấy! Tôi sẽ nhờ mẹ cộng vào lương.)* |

## Tình huống 9 — Bếp, 12:00, mâu thuẫn về menu inbound

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>板長<rt>いたちょう</rt></ruby>さん、ヴィーガン<ruby>専用<rt>せんよう</rt></ruby>コースを<ruby>作<rt>つく</rt></ruby>りませんか。<ruby>需要<rt>じゅよう</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<br>*(Bếp trưởng, làm course vegan riêng được không? Nhu cầu cao.)* |
| 板長 | ヴィーガン…<ruby>出汁<rt>だし</rt></ruby>を<ruby>変<rt>か</rt></ruby>えなきゃならん。<ruby>難<rt>むずか</rt></ruby>しいよ。<br>*(Vegan... phải đổi nước dashi. Khó đấy.)* |
| Aiko | <ruby>昆布<rt>こんぶ</rt></ruby>と<ruby>椎茸<rt>しいたけ</rt></ruby>で<ruby>出汁<rt>だし</rt></ruby>を<ruby>取<rt>と</rt></ruby>れば、<ruby>動物性<rt>どうぶつせい</rt></ruby>なしで<ruby>美味<rt>おい</rt></ruby>しくできます。トランさんも<ruby>外国<rt>がいこく</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いてるよね？ |
| Trang | はい、<ruby>先月<rt>せんげつ</rt></ruby>のオーストラリアのお<ruby>客様<rt>きゃくさま</rt></ruby>もヴィーガンでした。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>されました。<br>*(Vâng, khách Úc tháng trước cũng vegan. Họ đã hỏi trước.)* |
| 板長 | <ruby>分<rt>わ</rt></ruby>かった。<ruby>試作<rt>しさく</rt></ruby>してみよう。トランさんも<ruby>味見<rt>あじみ</rt></ruby>してくれな。<br>*(Hiểu rồi. Thử nấu nháp. Trang nếm hộ.)* |
| Trang | <ruby>喜<rt>よろこ</rt></ruby>んで！<br>*(Em vui lòng!)* |

## Tình huống 10 — Phòng nhân viên, 16:00, 田中 sempai cảnh báo

| Vai | Lời thoại |
|---|---|
| 田中 | トランさん、<ruby>若女将<rt>わかおかみ</rt></ruby>と<ruby>仲<rt>なか</rt></ruby>がいいのはいいけど、<ruby>大女将<rt>おおおかみ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てるの、<ruby>忘<rt>わす</rt></ruby>れないでね。<br>*(Trang thân với Waka-okami thì tốt nhưng đừng quên tôn Đại-Okami.)* |
| Trang | はい、<ruby>気<rt>き</rt></ruby>をつけます。<ruby>必<rt>かなら</rt></ruby>ず<ruby>両方<rt>りょうほう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しています。<br>*(Vâng, em chú ý. Em luôn báo cả hai.)* |
| 田中 | それでいいの。<ruby>大女将<rt>おおおかみ</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる、これ<ruby>日本<rt>にほん</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>。<br>*(Vậy là tốt. "Giữ thể diện" Đại-Okami, đây là căn bản công ty Nhật.)* |
| Trang | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Em học được nhiều. Cảm ơn chị.)* |

## Tình huống 11 — Sảnh, 19:00, khách hỏi về 若女将

| Vai | Lời thoại |
|---|---|
| 客 | あの<ruby>方<rt>かた</rt></ruby>、<ruby>若<rt>わか</rt></ruby>くて<ruby>綺麗<rt>きれい</rt></ruby>な<ruby>女将<rt>おかみ</rt></ruby>さん？<ruby>娘<rt>むすめ</rt></ruby>さん？<br>*(Cô gái trẻ đẹp kia là Okami à? Con gái?)* |
| Trang | はい、<ruby>大女将<rt>おおおかみ</rt></ruby>のお<ruby>嬢<rt>じょう</rt></ruby>さん、<ruby>若女将<rt>わかおかみ</rt></ruby>のアイコさんです。<br>*(Vâng, con gái Đại-Okami, Waka-okami Aiko ạ.)* |
| 客 | <ruby>伝統<rt>でんとう</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぐ<ruby>方<rt>かた</rt></ruby>がいると<ruby>安心<rt>あんしん</rt></ruby>しますね。<br>*(Có người kế thừa truyền thống thì yên tâm nhỉ.)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>にそうですね。<ruby>私<rt>わたし</rt></ruby>たちも<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Đúng vậy ạ. Chúng em cũng vui.)* |

## Tình huống 12 — Phòng 若女将, 21:00, Aiko gọi riêng Trang

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>せる？お<ruby>茶<rt>ちゃ</rt></ruby>でも。<br>*(Trang nói chuyện được không? Uống trà.)* |
| Trang | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, xin phép.)* |
| Aiko | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>、<ruby>不安<rt>ふあん</rt></ruby>なの。アメリカで<ruby>経営<rt>けいえい</rt></ruby>を<ruby>学<rt>まな</rt></ruby>んだけど、<ruby>旅館<rt>りょかん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>全<rt>まった</rt></ruby>く<ruby>違<rt>ちが</rt></ruby>う。<br>*(Thật ra tôi bất an. Học kinh doanh ở Mỹ nhưng công việc ryokan hoàn toàn khác.)* |
| Trang | <ruby>大女将<rt>おおおかみ</rt></ruby>さんから<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>学<rt>まな</rt></ruby>べばいいと<ruby>思<rt>おも</rt></ruby>います。<ruby>私<rt>わたし</rt></ruby>たちもサポートします。<br>*(Em nghĩ học dần từ Đại-Okami là được. Chúng em cũng hỗ trợ.)* |
| Aiko | ありがとう。トランさんは<ruby>外<rt>そと</rt></ruby>から<ruby>来<rt>き</rt></ruby>た<ruby>身<rt>み</rt></ruby>として、<ruby>気付<rt>きづ</rt></ruby>くことがあったら<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>言<rt>い</rt></ruby>って。<br>*(Cảm ơn. Trang là người đến từ ngoài, nhận ra gì cứ nói thẳng đừng ngại.)* |
| Trang | はい。<ruby>若女将<rt>わかおかみ</rt></ruby>さんの<ruby>新<rt>あたら</rt></ruby>しい<ruby>視点<rt>してん</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby>スタッフには<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Vâng. Góc nhìn mới của Waka-okami là động lực với nhân viên nước ngoài.)* |

## Tình huống 13 — Phòng ký túc, 22:30, gọi điện về Huế

> Cảnh tiếng Việt — gọi điện cho mẹ.

| Vai | Lời thoại |
|---|---|
| Trang | Mẹ ơi, ryokan con có Waka-okami mới rồi. Con gái Okami cũ luôn. |
| Mẹ | Vậy là chuyển giao thế hệ hả con? Có khó cho con không? |
| Trang | Cũng phức tạp mẹ. Hai bà mẹ con quan điểm khác nhau. Mẹ thì giữ truyền thống, con gái thì muốn hiện đại hoá. |
| Mẹ | Vậy con đứng ở giữa khó lắm. |
| Trang | Sempai Tanaka dạy con phải tate-ru — "tôn" — Đại-Okami trước, dù thân với Waka-okami. Báo cáo gì cũng phải báo cả hai. |
| Mẹ | Đúng đấy. Bên Nhật trọng thể diện người trên. Con cẩn thận. |
| Trang | Vâng. Mà Waka-okami còn nhờ con phụ chụp Instagram, sáng tạo caption tiếng Anh, lương tăng nữa mẹ. |
| Mẹ | Mẹ tự hào con quá. Con gái mẹ giờ vừa Nhật vừa Anh. |

## Đọng lại chương

**Mẫu câu giao tiếp đa cấp quan trọng:**
- 「<ruby>両方<rt>りょうほう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する」— báo cả hai cấp
- 「<ruby>大女将<rt>おおおかみ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる」— tôn người trên cấp
- 「<ruby>顔<rt>かお</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる」— giữ thể diện
- 「<ruby>折衷<rt>せっちゅう</rt></ruby>でいきましょう」— dung hoà
- 「<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>って」— nói thật
- 「<ruby>遠慮<rt>えんりょ</rt></ruby>なく」— đừng ngại
- 「お<ruby>嬢<rt>じょう</rt></ruby>さん」— con gái (kính ngữ)
- 「<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぐ」— kế thừa
- 「<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>られる」— được quý

> Từ vựng & mẫu câu chương này: 若女将・大女将・修業・紹介・申す・折衷・効率・世代・時代・導入・コスト削減・タブレット・抹茶・記入・撮影・キャプション・採用・反映・ヴィーガン・出汁・昆布・椎茸・動物性・試作・味見・受け継ぐ・遠慮・励み・視点・顔を立てる・両方・正直・気に入る・お嬢さん・伝統

## Bí quyết chương

- Khi ryokan có 2 thế hệ chỉ đạo: LUÔN báo cáo cả hai, không nghe một bên rồi giấu bên kia.
- 「<ruby>大女将<rt>おおおかみ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる」là văn hoá cốt lõi — dù thân với Waka-okami đến đâu, mặt cấp dưới phải tôn Đại-Okami trước.
- "Người ngoài" (nhân viên TTS) có lợi thế đặc biệt: ý kiến khách quan, được cấp trên trẻ tin tưởng để cải tiến.
- Khi sempai cảnh báo, đáp 「<ruby>気<rt>き</rt></ruby>をつけます」+「<ruby>勉強<rt>べんきょう</rt></ruby>になります」— khiêm nhường, ghi nhận.
- Đề xuất ý tưởng mới: trình bày qua Waka-okami trước, để cô ấy đưa lên Đại-Okami — đừng bỏ qua cấp.
- 「<ruby>折衷<rt>せっちゅう</rt></ruby>でいきましょう」= dung hoà — câu cứu cánh trong xung đột thế hệ.



## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 若女将 | わかおかみ | NHƯỢC NỮ TƯỚNG | Waka-okami, okami trẻ kế thừa |
| 大女将 | おおおかみ | ĐẠI NỮ TƯỚNG | Đại-okami, okami già |
| 修業 | しゅぎょう | TU NGHIỆP | tu nghiệp, học nghề |
| 紹介 | しょうかい | THIỆU GIỚI | giới thiệu |
| 申す | もうす | THÂN | (khiêm ngữ) nói, gọi là |
| 守る | まもる | THỦ | giữ gìn, bảo vệ |
| 折衷 | せっちゅう | TRIẾT TRUNG | dung hoà |
| 効率 | こうりつ | HIỆU SUẤT | hiệu suất |
| 世代 | せだい | THẾ ĐẠI | thế hệ |
| 時代 | じだい | THỜI ĐẠI | thời đại |
| 導入 | どうにゅう | ĐẠO NHẬP | đưa vào, áp dụng |
| コスト削減 | こすとさくげん | — SẢN GIẢM | giảm chi phí |
| タブレット | たぶれっと | — | tablet |
| 抹茶 | まっちゃ | MẠT TRÀ | trà抹 |
| 記入 | きにゅう | KÝ NHẬP | điền vào |
| 撮影 | さつえい | NHIẾP ẢNH | chụp ảnh, quay |
| キャプション | きゃぷしょん | — | caption |
| 採用 | さいよう | THÁI DỤNG | dùng, nhận |
| 反映 | はんえい | PHẢN ÁNH | phản ánh |
| ヴィーガン | ゔぃーがん | — | vegan |
| 出汁 | だし | XUẤT TRẤP | nước dashi |
| 昆布 | こんぶ | CÔN BỐ | tảo bẹ |
| 椎茸 | しいたけ | — | nấm shiitake |
| 動物性 | どうぶつせい | ĐỘNG VẬT TÍNH | nguồn động vật |
| 試作 | しさく | THÍ TÁC | làm thử |
| 味見 | あじみ | VỊ KIẾN | nếm thử |
| 受け継ぐ | うけつぐ | THỌ KẾ | kế thừa |
| 遠慮 | えんりょ | VIỄN LỰ | ngại, kiêng dè |
| 励み | はげみ | LỆ | động lực |
| 視点 | してん | THỊ ĐIỂM | góc nhìn |
| 顔を立てる | かおをたてる | NHAN — LẬP | giữ thể diện |
| 両方 | りょうほう | LƯỠNG PHƯƠNG | cả hai |
| 正直 | しょうじき | CHÍNH TRỰC | thật thà |
| 気に入る | きにいる | KHÍ — NHẬP | thích, quý |
| お嬢さん | おじょうさん | NƯƠNG | con gái (kính ngữ) |
| 伝統 | でんとう | TRUYỀN THỐNG | truyền thống |
| 不安 | ふあん | BẤT AN | bất an |
| 経営 | けいえい | KINH DOANH | kinh doanh |
| 履物 | はきもの | LÝ VẬT | giày dép |
| 仏間 | ぶつま | PHẬT GIAN | phòng thờ Phật |
| 茶室 | ちゃしつ | TRÀ THẤT | trà thất |
| 角度 | かくど | GIÁC ĐỘ | góc độ |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000011, 800000047, NULL, 'markdown_book', 'T11. Tết Nhật お正月 — おせち và mùa đông trắng', '# Sách 47 Hotel Year 2 · T11. Tết Nhật お正月 — おせち và mùa đông trắng

> **Mục tiêu nhân vật:** Trang (24t, Huế, TTS năm 2 ryokan Kyoto, N3). Học các mẫu hội thoại tiếng Nhật của 仲居 mùa cao điểm お正月: (1) chuẩn bị 大掃除 cuối năm, (2) phục vụ おせち料理 và giải thích ý nghĩa, (3) chúc Tết khách bằng cụm chuẩn, (4) phục vụ お雑煮 sáng mùng 1, (5) phối hợp 初詣 cho khách, (6) đối ứng đoàn đông cùng lúc check-in.

## Bối cảnh

Cuối tháng 12/2026 đến đầu tháng 1/2027 (chương này dạng vắt sang đầu năm, hồi ức + nối tiếp). Ryokan Kyoto kín phòng cả tuần lễ お正月 (年末年始). Trang trải qua お正月 thứ hai ở Nhật, lần này đã quen quy trình và phụ trách phần インバウンド + おせち. Tuyết rơi dày, Kyoto trắng xoá. Chương này tập trung mẫu câu mùa Tết và phục vụ おせち.

## Tình huống 1 — Sảnh, 12/30 9:00, 大掃除

| Vai | Lời thoại |
|---|---|
| 大女将 | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>大掃除<rt>おおそうじ</rt></ruby>です。<ruby>神様<rt>かみさま</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>える<ruby>準備<rt>じゅんび</rt></ruby>。<ruby>隅々<rt>すみずみ</rt></ruby>まで<ruby>綺麗<rt>きれい</rt></ruby>に。<br>*(Mọi người, hôm nay dọn lớn cuối năm. Chuẩn bị đón thần. Sạch từng góc.)* |
| Trang | はい、<ruby>仏間<rt>ぶつま</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>ですね。<ruby>畳<rt>たたみ</rt></ruby>も<ruby>拭<rt>ふ</rt></ruby>きます。<br>*(Vâng, em phụ trách phòng thờ. Lau cả chiếu.)* |
| 田中 | トランさん、<ruby>仏壇<rt>ぶつだん</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>丁寧<rt>ていねい</rt></ruby>にね。<ruby>埃<rt>ほこり</rt></ruby>は<ruby>失礼<rt>しつれい</rt></ruby>。<br>*(Trang, trước bàn thờ phải kỹ. Bụi là thất lễ.)* |
| Trang | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>水<rt>みず</rt></ruby>も<ruby>替<rt>か</rt></ruby>えていいですか。<br>*(Em hiểu. Em thay nước cúng được không?)* |
| 田中 | はい、<ruby>毎日<rt>まいにち</rt></ruby>のことだから。<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちで。<br>*(Được, hằng ngày luôn. Bằng lòng biết ơn.)* |

## Tình huống 2 — Bếp, 12/30 14:00, đóng gói おせち

| Vai | Lời thoại |
|---|---|
| 板長 | トランさん、おせちの<ruby>重箱<rt>じゅうばこ</rt></ruby>、<ruby>三段<rt>さんだん</rt></ruby>を<ruby>組<rt>く</rt></ruby>むの<ruby>手伝<rt>てつだ</rt></ruby>って。<br>*(Trang, hộp osechi 3 tầng, giúp xếp nhé.)* |
| Trang | はい！<ruby>一段目<rt>いちだんめ</rt></ruby>は<ruby>祝<rt>いわ</rt></ruby>い<ruby>肴<rt>ざかな</rt></ruby>でしたよね。<br>*(Vâng! Tầng 1 là món chúc mừng đúng không ạ?)* |
| 板長 | そう。<ruby>黒豆<rt>くろまめ</rt></ruby>、<ruby>田作<rt>たづく</rt></ruby>り、<ruby>数<rt>かず</rt></ruby>の<ruby>子<rt>こ</rt></ruby>。<ruby>意味<rt>いみ</rt></ruby>、<ruby>覚<rt>おぼ</rt></ruby>えてる？ |
| Trang | <ruby>黒豆<rt>くろまめ</rt></ruby>は「<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>く」、<ruby>数<rt>かず</rt></ruby>の<ruby>子<rt>こ</rt></ruby>は「<ruby>子孫繁栄<rt>しそんはんえい</rt></ruby>」、<ruby>田作<rt>たづく</rt></ruby>りは「<ruby>豊作<rt>ほうさく</rt></ruby>」ですね。<br>*(Đậu đen là "siêng năng", trứng cá là "đông con cháu",田作り là "vụ mùa bội thu".)* |
| 板長 | お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>できれば<ruby>一人前<rt>いちにんまえ</rt></ruby>。<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>にも<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Giải thích được cho khách là thành thợ chính rồi. Khách ngoại nhờ luôn nhé.)* |

## Tình huống 3 — Sảnh, 12/31 16:00, check-in đoàn 5 phòng

*Tuyết rơi dày, khách lần lượt đến bằng taxi từ ga Kyoto.*

| Vai | Lời thoại |
|---|---|
| Trang | いらっしゃいませ。お<ruby>足元<rt>あしもと</rt></ruby>、お<ruby>気<rt>き</rt></ruby>をつけて。<ruby>雪<rt>ゆき</rt></ruby>で<ruby>滑<rt>すべ</rt></ruby>りやすいです。<br>*(Kính chào. Để ý chân, tuyết trơn ạ.)* |
| 客A | こんにちは。<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>大変<rt>たいへん</rt></ruby>でしたよ、<ruby>新幹線<rt>しんかんせん</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れて。<br>*(Chào. Tôi là Satō. Vất vả lắm, shinkansen trễ.)* |
| Trang | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>温<rt>あたた</rt></ruby>かいお<ruby>茶<rt>ちゃ</rt></ruby>をすぐお<ruby>出<rt>だ</rt></ruby>しします。<br>*(Vất vả rồi ạ. Em mang trà nóng ra ngay.)* |
| 客B (theo sau) | こちらも<ruby>佐藤<rt>さとう</rt></ruby><ruby>家<rt>け</rt></ruby>の<ruby>者<rt>もの</rt></ruby>です。<ruby>離<rt>はな</rt></ruby>れの<ruby>部屋<rt>へや</rt></ruby>でしたよね。 |
| Trang | はい、<ruby>梅<rt>うめ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>と<ruby>松<rt>まつ</rt></ruby>の<ruby>間<rt>ま</rt></ruby>、<ruby>続<rt>つづ</rt></ruby>き<ruby>部屋<rt>べや</rt></ruby>です。お<ruby>荷物<rt>にもつ</rt></ruby>、お<ruby>運<rt>はこ</rt></ruby>びします。<br>*(Vâng, phòng Mai và Tùng, liền nhau. Em mang hành lý.)* |

## Tình huống 4 — Phòng khách 梅の間, 12/31 18:00, giải thích おせち

| Vai | Lời thoại |
|---|---|
| Trang | こちらが<ruby>当館<rt>とうかん</rt></ruby>のおせちです。<ruby>三段重<rt>さんだんじゅう</rt></ruby>、それぞれ<ruby>意味<rt>いみ</rt></ruby>がございます。<br>*(Đây là osechi của ryokan. Hộp 3 tầng, mỗi tầng có ý nghĩa.)* |
| 客A | わあ、<ruby>豪華<rt>ごうか</rt></ruby>ですね。 |
| Trang | こちらの<ruby>黒豆<rt>くろまめ</rt></ruby>は、「マメに<ruby>働<rt>はたら</rt></ruby>く」、<ruby>健康<rt>けんこう</rt></ruby>と<ruby>勤勉<rt>きんべん</rt></ruby>の<ruby>願<rt>ねが</rt></ruby>いです。<br>*(Đậu đen này là "mame ni hataraku" — siêng năng — ý nguyện sức khoẻ và cần cù.)* |
| 客B | <ruby>仲居<rt>なかい</rt></ruby>さん、<ruby>説明<rt>せつめい</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>。<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>？ |
| Trang | はい、ベトナムです。<ruby>板長<rt>いたちょう</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Vâng, Việt Nam. Bếp trưởng dạy ạ.)* |
| 客A | <ruby>勉強熱心<rt>べんきょうねっしん</rt></ruby>ですね。よくぞ<ruby>覚<rt>おぼ</rt></ruby>えました。 |
| Trang | ありがとうございます。<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<br>*(Cảm ơn ạ. Em ngại quá.)* |

## Tình huống 5 — Hành lang, 12/31 22:00, chuẩn bị 年越しそば

| Vai | Lời thoại |
|---|---|
| 田中 | トランさん、<ruby>年越<rt>としこ</rt></ruby>しそば、<ruby>各<rt>かく</rt></ruby><ruby>部屋<rt>へや</rt></ruby>に23<ruby>時<rt>じ</rt></ruby>から<ruby>運<rt>はこ</rt></ruby>びます。<br>*(Trang, soba giao thừa, từ 11 giờ đêm đưa từng phòng.)* |
| Trang | なぜ<ruby>蕎麦<rt>そば</rt></ruby>を<ruby>食<rt>た</rt></ruby>べるんですか？ |
| 田中 | <ruby>細<rt>ほそ</rt></ruby>く<ruby>長<rt>なが</rt></ruby>く<ruby>生<rt>い</rt></ruby>きるように、と。<ruby>厄<rt>やく</rt></ruby>を<ruby>切<rt>き</rt></ruby>る<ruby>意味<rt>いみ</rt></ruby>もある。<br>*(Để sống dài và mảnh. Cũng có ý nghĩa cắt đứt vận xui.)* |
| Trang | なるほど。お<ruby>客様<rt>きゃくさま</rt></ruby>にも<ruby>説明<rt>せつめい</rt></ruby>できますね。<br>*(Ra vậy. Có thể giải thích cho khách.)* |
| 田中 | <ruby>除夜<rt>じょや</rt></ruby>の<ruby>鐘<rt>かね</rt></ruby>が<ruby>聞<rt>き</rt></ruby>こえたら、お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>知<rt>し</rt></ruby>らせてね。<ruby>窓<rt>まど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けて<ruby>聴<rt>き</rt></ruby>くお<ruby>客様<rt>きゃくさま</rt></ruby>もいる。<br>*(Nghe tiếng chuông giao thừa thì báo khách. Có khách mở cửa nghe.)* |

## Tình huống 6 — Phòng khách, 0:00 1/1, chúc Tết

*Tiếng chuông 除夜の鐘 vang từ chùa gần đó. Trang gõ cửa nhẹ.*

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>除夜<rt>じょや</rt></ruby>の<ruby>鐘<rt>かね</rt></ruby>でございます。 |
| 客A | お、<ruby>聞<rt>き</rt></ruby>こえる<ruby>聞<rt>き</rt></ruby>こえる。 |
| Trang | <ruby>明<rt>あ</rt></ruby>けましておめでとうございます。<ruby>本年<rt>ほんねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Chúc mừng năm mới. Năm nay cũng mong được giúp đỡ.)* |
| 客A | こちらこそ。<ruby>今年<rt>ことし</rt></ruby>もいい<ruby>年<rt>とし</rt></ruby>になりますように。 |
| 客B | トランさんも、いい<ruby>年<rt>とし</rt></ruby>を。 |
| Trang | ありがとうございます。お<ruby>休<rt>やす</rt></ruby>みなさいませ。 |

## Tình huống 7 — Phòng ăn, 1/1 8:00, phục vụ お雑煮

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>正月<rt>しょうがつ</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>、お<ruby>雑煮<rt>ぞうに</rt></ruby>でございます。<ruby>関西風<rt>かんさいふう</rt></ruby>、<ruby>白<rt>しろ</rt></ruby>みそ<ruby>仕立<rt>した</rt></ruby>てです。<br>*(Sáng năm mới, ozōni ạ. Kiểu Kansai, nước miso trắng.)* |
| 客A | お<ruby>餅<rt>もち</rt></ruby>は<ruby>丸<rt>まる</rt></ruby>いんですね。 |
| Trang | はい、<ruby>関西<rt>かんさい</rt></ruby>は<ruby>丸餅<rt>まるもち</rt></ruby>、<ruby>関東<rt>かんとう</rt></ruby>は<ruby>角餅<rt>かくもち</rt></ruby>です。<br>*(Vâng, Kansai mochi tròn, Kantō mochi vuông.)* |
| 客B | よく<ruby>知<rt>し</rt></ruby>ってるね。 |
| Trang | <ruby>板長<rt>いたちょう</rt></ruby>さんに<ruby>教<rt>おそ</rt></ruby>わりました。お<ruby>餅<rt>もち</rt></ruby>はゆっくり<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってください。お<ruby>年寄<rt>としよ</rt></ruby>りは<ruby>注意<rt>ちゅうい</rt></ruby>です。<br>*(Bếp trưởng dạy ạ. Mochi ăn từ từ. Người già lưu ý.)* |
| 客A | ありがとう、<ruby>気<rt>き</rt></ruby>をつけるよ。 |

## Tình huống 8 — Sảnh, 1/1 10:00, khách hỏi 初詣

| Vai | Lời thoại |
|---|---|
| 客 | <ruby>仲居<rt>なかい</rt></ruby>さん、<ruby>近<rt>ちか</rt></ruby>くで<ruby>初詣<rt>はつもうで</rt></ruby>、おすすめは？ |
| Trang | <ruby>歩<rt>ある</rt></ruby>いて15<ruby>分<rt>ふん</rt></ruby>の<ruby>八坂神社<rt>やさかじんじゃ</rt></ruby>がおすすめです。<ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>めなら<ruby>混雑<rt>こんざつ</rt></ruby>も<ruby>少<rt>すく</rt></ruby>ないです。<br>*(Đền Yasaka đi bộ 15 phút. Sáng sớm thì ít đông.)* |
| 客 | お<ruby>賽銭<rt>さいせん</rt></ruby>はいくらが<ruby>普通<rt>ふつう</rt></ruby>？ |
| Trang | 5<ruby>円玉<rt>えんだま</rt></ruby>が「ご<ruby>縁<rt>えん</rt></ruby>」と<ruby>掛<rt>か</rt></ruby>けて<ruby>縁起<rt>えんぎ</rt></ruby>がいいです。<ruby>金額<rt>きんがく</rt></ruby>より<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Đồng 5 yên trùng âm "go-en" — duyên — nên hên. Quan trọng là tấm lòng.)* |
| 客 | <ruby>勉強<rt>べんきょう</rt></ruby>になるね。<ruby>地図<rt>ちず</rt></ruby>、<ruby>頂<rt>いただ</rt></ruby>けますか。 |
| Trang | <ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<ruby>英語版<rt>えいごばん</rt></ruby>もございます。<br>*(Em xin một chút. Có cả bản tiếng Anh.)* |

## Tình huống 9 — Phòng nhân viên, 1/1 11:00, お年玉 từ 大女将

| Vai | Lời thoại |
|---|---|
| 大女将 | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>明<rt>あ</rt></ruby>けましておめでとう。<ruby>少<rt>すこ</rt></ruby>しですが、お<ruby>年玉<rt>としだま</rt></ruby>です。<br>*(Mọi người, chúc mừng năm mới. Chút quà lì xì.)* |
| Trang | え、いいんですか。<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。ありがとうございます！<br>*(Ơ, được ạ? Em ngại quá. Cảm ơn ạ!)* |
| 大女将 | トランさん、<ruby>去年<rt>きょねん</rt></ruby>から<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>されました。<ruby>今年<rt>ことし</rt></ruby>も<ruby>頼<rt>たよ</rt></ruby>りにしています。<br>*(Trang năm ngoái đến giờ trưởng thành nhiều. Năm nay vẫn nhờ cậy.)* |
| Trang | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Lời quá khen. Em sẽ cố hết sức.)* |

## Tình huống 10 — Hành lang, 1/2 14:00, sự cố mochi nghẹn

*Tiếng la từ phòng 牡丹.*

| Vai | Lời thoại |
|---|---|
| 客女 | <ruby>誰<rt>だれ</rt></ruby>か！<ruby>主人<rt>しゅじん</rt></ruby>がお<ruby>餅<rt>もち</rt></ruby>を<ruby>喉<rt>のど</rt></ruby>に<ruby>詰<rt>つ</rt></ruby>まらせて！ |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します！ *(Trang chạy vào, gọi bộ đàm)* <ruby>女将<rt>おかみ</rt></ruby>さん、110<ruby>番<rt>ばん</rt></ruby>と119<ruby>番<rt>ばん</rt></ruby>を！<ruby>牡丹<rt>ぼたん</rt></ruby>の<ruby>間<rt>ま</rt></ruby>、お<ruby>餅<rt>もち</rt></ruby>を<ruby>詰<rt>つ</rt></ruby>まらせた<ruby>男性<rt>だんせい</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>。 |
| 田中 | *(chạy vào)* <ruby>背中<rt>せなか</rt></ruby>を<ruby>叩<rt>たた</rt></ruby>く！トランさん、<ruby>掃除機<rt>そうじき</rt></ruby><ruby>持<rt>も</rt></ruby>ってきて！ |
| Trang | はい！ *(chạy đi, quay lại 30 giây sau cùng máy hút bụi)* |
| 田中 | *(xử lý xong, mochi ra)* よかった…。 |
| Trang | <ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby>はキャンセルしますか？ |
| 田中 | いえ、<ruby>念<rt>ねん</rt></ruby>のため<ruby>診<rt>み</rt></ruby>てもらいましょう。トランさん、<ruby>冷静<rt>れいせい</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>でよかった。 |
| Trang | <ruby>無事<rt>ぶじ</rt></ruby>でよかったです。<br>*(May là không sao.)* |

## Tình huống 11 — Phòng 大女将, 1/2 16:00, báo cáo sự cố

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>大女将<rt>おおおかみ</rt></ruby>さん、<ruby>牡丹<rt>ぼたん</rt></ruby>の<ruby>間<rt>ま</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>病院<rt>びょういん</rt></ruby>から<ruby>戻<rt>もど</rt></ruby>られました。<ruby>異常<rt>いじょう</rt></ruby>なしです。<br>*(Đại-Okami, khách phòng Bồ Đào từ bệnh viện về rồi. Không vấn đề gì.)* |
| 大女将 | お<ruby>疲<rt>つか</rt></ruby>れさま。トランさん、<ruby>掃除機<rt>そうじき</rt></ruby>を<ruby>思<rt>おも</rt></ruby>いつくのは<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>研修<rt>けんしゅう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>ったの？ |
| Trang | はい、<ruby>去年<rt>きょねん</rt></ruby>の<ruby>救急研修<rt>きゅうきゅうけんしゅう</rt></ruby>で。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>奥様<rt>おくさま</rt></ruby>に<ruby>謝罪<rt>しゃざい</rt></ruby>とお<ruby>見舞<rt>みま</rt></ruby>いの<ruby>品<rt>しな</rt></ruby>、いかがしましょうか。<br>*(Năm ngoái lớp cứu hộ ạ. Tặng vợ khách quà thăm hỏi không ạ?)* |
| 大女将 | <ruby>果物<rt>くだもの</rt></ruby>かごを<ruby>明朝<rt>みょうちょう</rt></ruby><ruby>用意<rt>ようい</rt></ruby>。トランさん、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Giỏ trái cây sáng mai. Trang lo nhé.)* |

## Tình huống 12 — Sảnh, 1/3 11:00, tiễn khách

| Vai | Lời thoại |
|---|---|
| 客A | トランさん、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>主人<rt>しゅじん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>も…。 |
| Trang | とんでもないです。<ruby>無事<rt>ぶじ</rt></ruby>で<ruby>何<rt>なに</rt></ruby>よりでした。 |
| 客B | また<ruby>来年<rt>らいねん</rt></ruby>も<ruby>来<rt>き</rt></ruby>ます。トランさん、いますよね？ |
| Trang | <ruby>来年<rt>らいねん</rt></ruby>3<ruby>月<rt>がつ</rt></ruby>までは<ruby>確実<rt>かくじつ</rt></ruby>です。その<ruby>後<rt>あと</rt></ruby>は<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えれば<ruby>続<rt>つづ</rt></ruby>けられます。<br>*(Đến 3 năm sau chắc chắn. Sau đó chuyển SSW thì tiếp được.)* |
| 客A | ぜひ<ruby>続<rt>つづ</rt></ruby>けてください。お<ruby>身体<rt>からだ</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>に。<ruby>良<rt>よ</rt></ruby>いお<ruby>年<rt>とし</rt></ruby>を。 |
| Trang | お<ruby>気<rt>き</rt></ruby>をつけて、お<ruby>帰<rt>かえ</rt></ruby>りなさいませ。<br>*(Đi đường cẩn thận, kính chào quý khách.)* |

## Tình huống 13 — Tuyết ngoài vườn, 1/3 17:00, ngắm Kyoto trắng

*Trang đứng cùng đồng nghiệp Chen ngắm tuyết.*

| Vai | Lời thoại |
|---|---|
| Chen | トランさん、<ruby>京都<rt>きょうと</rt></ruby>の<ruby>雪<rt>ゆき</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>綺麗<rt>きれい</rt></ruby>ですね。 |
| Trang | フエは<ruby>雪<rt>ゆき</rt></ruby>が<ruby>降<rt>ふ</rt></ruby>りません。<ruby>初<rt>はじ</rt></ruby>めて<ruby>見<rt>み</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、<ruby>感動<rt>かんどう</rt></ruby>しました。<br>*(Huế không có tuyết. Lần đầu thấy em xúc động.)* |
| Chen | <ruby>来年<rt>らいねん</rt></ruby>のお<ruby>正月<rt>しょうがつ</rt></ruby>もここで<ruby>過<rt>す</rt></ruby>ごせるかな。 |
| Trang | <ruby>頑張<rt>がんば</rt></ruby>って<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば。 |
| Chen | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しましょう。 |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ず！ |

## Tình huống 14 — Phòng ký túc, 1/3 21:00, gọi điện về Huế

> Cảnh tiếng Việt — gọi điện cho mẹ và em Hà ngày mùng 4 Tết Tây.

| Vai | Lời thoại |
|---|---|
| Trang | Mẹ ơi, con chúc mẹ năm mới sức khoẻ. Bên Nhật Tết Tây mới là Tết chính. |
| Mẹ | Con khoẻ không? Tết bên đó vui không? |
| Trang | Vui mà mệt mẹ. Mấy ngày qua chạy không ngơi. Còn có khách bị mochi nghẹn cổ nữa. Đại-Okami khen con bình tĩnh xử lý. |
| Hà | Trời ơi nguy hiểm vậy! Mochi cứng lắm hả chị? |
| Trang | Cứng và dính. Hằng năm cả Nhật chục người chết vì nó. May khách của ryokan mình kịp. |
| Mẹ | Con cũng được lì xì không? |
| Trang | Có chứ! Otoshidama đó mẹ. Đại-Okami phát cho nhân viên. Con gửi mẹ vé Tết âm lịch tháng sau nhé. |
| Hà | Chị xịn quá. Em đợi Tết âm chị về. |
| Trang | Chưa về được đâu, mẹ. Hợp đồng đến tháng 3/2028. Nhưng con tính chuyển kakutei-gino — SSW — ở luôn 5 năm. |

## Đọng lại chương

**Mẫu câu Tết Nhật quan trọng:**
- 「<ruby>明<rt>あ</rt></ruby>けましておめでとうございます」— Chúc mừng năm mới (sau giao thừa)
- 「<ruby>本年<rt>ほんねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます」— Năm nay cũng mong giúp đỡ
- 「<ruby>良<rt>よ</rt></ruby>いお<ruby>年<rt>とし</rt></ruby>を」— Chúc năm tốt (trước giao thừa)
- 「<ruby>恐縮<rt>きょうしゅく</rt></ruby>です」— Em ngại quá (khi nhận lì xì/khen)
- 「<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>」— Lời khen quá tầm
- 「<ruby>念<rt>ねん</rt></ruby>のため」— Phòng hờ
- 「<ruby>冷静<rt>れいせい</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>」— Phán đoán bình tĩnh
- 「<ruby>気<rt>き</rt></ruby>をつけて、お<ruby>帰<rt>かえ</rt></ruby>りなさいませ」— Đi đường cẩn thận

> Từ vựng & mẫu câu chương này: お正月・年末年始・大掃除・神様・仏間・仏壇・埃・感謝・おせち・重箱・三段・祝い肴・黒豆・田作り・数の子・真面目・勤勉・子孫繁栄・豊作・年越しそば・厄・除夜の鐘・明けましておめでとう・お雑煮・関西風・白みそ・丸餅・角餅・初詣・八坂神社・お賽銭・ご縁・縁起・お年玉・身に余る・精一杯・喉に詰まる・救急車・冷静・念のため・特定技能

## Bí quyết chương

- お<ruby>正月<rt>しょうがつ</rt></ruby>chuẩn: ngày 12/31 nói 「<ruby>良<rt>よ</rt></ruby>いお<ruby>年<rt>とし</rt></ruby>を」, sau 0:00 mới nói 「<ruby>明<rt>あ</rt></ruby>けましておめでとう」 — KHÔNG lẫn.
- おせち 3 tầng đều có ý nghĩa: học thuộc để giải thích cho khách Nhật và inbound — sempai và 板長 sẽ rất quý.
- Mochi ngày Tết là sát thủ thầm lặng — hằng năm cả Nhật ~10 người chết vì nghẹn. Luôn nhắc お<ruby>年寄<rt>としよ</rt></ruby>り và trẻ con ăn từ từ. Máy hút bụi là cứu cánh nếu vỗ lưng + Heimlich không ra.
- Khi nhận お<ruby>年玉<rt>としだま</rt></ruby>từ cấp trên: nhận hai tay + 「<ruby>恐縮<rt>きょうしゅく</rt></ruby>です、ありがとうございます」, KHÔNG mở phong bao trước mặt.
- お<ruby>賽銭<rt>さいせん</rt></ruby>5円玉trùng âm 「ご<ruby>縁<rt>えん</rt></ruby>」 → cách giải thích "duyên" cho khách rất Nhật.
- Báo cáo sự cố cấp cứu: gọi 110 (cảnh sát) HAY 119 (cứu hoả + cứu thương) — sự cố sức khoẻ là 119.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| お正月 | おしょうがつ | CHÍNH NGUYỆT | Tết Nhật (Tết Tây) |
| 年末年始 | ねんまつねんし | NIÊN MẠT NIÊN THỦY | cuối năm đầu năm |
| 大掃除 | おおそうじ | ĐẠI TẢO TRỪ | dọn lớn cuối năm |
| 神様 | かみさま | THẦN | thần |
| 仏間 | ぶつま | PHẬT GIAN | phòng thờ Phật |
| 仏壇 | ぶつだん | PHẬT ĐÀN | bàn thờ Phật |
| 埃 | ほこり | ÁI | bụi |
| 感謝 | かんしゃ | CẢM TẠ | biết ơn |
| おせち | おせち | — | osechi, món Tết |
| 重箱 | じゅうばこ | TRỌNG TƯƠNG | hộp xếp tầng |
| 三段 | さんだん | TAM ĐOẠN | 3 tầng |
| 祝い肴 | いわいざかな | CHÚC HÀO | món chúc mừng |
| 黒豆 | くろまめ | HẮC ĐẬU | đậu đen |
| 田作り | たづくり | ĐIỀN TÁC | cá khô tẩm |
| 数の子 | かずのこ | SỐ TỬ | trứng cá trích |
| 真面目 | まじめ | CHÂN DIỆN MỤC | nghiêm túc, siêng |
| 勤勉 | きんべん | CẦN MIỄN | cần cù |
| 子孫繁栄 | しそんはんえい | TỬ TÔN PHỒN VINH | con cháu thịnh vượng |
| 豊作 | ほうさく | PHONG TÁC | vụ mùa bội thu |
| 一人前 | いちにんまえ | NHẤT NHÂN TIỀN | thợ chính, độc lập |
| 年越しそば | としこしそば | NIÊN VIỆT — | soba giao thừa |
| 厄 | やく | ÁCH | vận xui |
| 除夜の鐘 | じょやのかね | TRỪ DẠ CHUNG | chuông giao thừa |
| 明ける | あける | MINH | sang năm mới |
| お雑煮 | おぞうに | TẠP CHỬ | ozōni, canh mochi |
| 関西風 | かんさいふう | QUAN TÂY PHONG | kiểu Kansai |
| 白みそ | しろみそ | BẠCH — | miso trắng |
| 丸餅 | まるもち | VIÊN BÍNH | mochi tròn |
| 角餅 | かくもち | GIÁC BÍNH | mochi vuông |
| 召し上がる | めしあがる | TRIỆU THƯỢNG | (kính ngữ) dùng, ăn |
| 初詣 | はつもうで | SƠ NGHỆ | viếng đền đầu năm |
| 八坂神社 | やさかじんじゃ | BÁT PHẢN THẦN XÃ | đền Yasaka |
| お賽銭 | おさいせん | TÁI TIỀN | tiền cúng đền |
| ご縁 | ごえん | DUYÊN | duyên |
| 縁起 | えんぎ | DUYÊN KHỞI | điềm lành |
| お年玉 | おとしだま | NIÊN NGỌC | lì xì |
| 身に余る | みにあまる | THÂN — DƯ | quá lời (tự khiêm) |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | hết sức |
| 喉 | のど | HẦU | cổ họng |
| 詰まる | つまる | CẬT | bị nghẹn, tắc |
| 救急車 | きゅうきゅうしゃ | CỨU CẤP XA | xe cứu thương |
| 冷静 | れいせい | LÃNH TĨNH | bình tĩnh |
| 念のため | ねんのため | NIỆM | phòng hờ |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 謝罪 | しゃざい | TẠ TỘI | xin lỗi (chính thức) |
| お見舞い | おみまい | KIẾN VŨ | thăm bệnh |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | SSW (visa kỹ năng đặc định) |
| 切り替え | きりかえ | THIẾT THẾ | chuyển đổi |
| 恐縮 | きょうしゅく | KHỦNG SÚC | ngại, e dè |
| 成長 | せいちょう | THÀNH TRƯỞNG | trưởng thành |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (847000012, 800000047, NULL, 'markdown_book', 'T12. Tổng kết năm 2 — Đậu N3, 検定 3級, hướng SSW', '# Sách 47 Hotel Year 2 · T12. Tổng kết năm 2 — Đậu N3, 検定 3級, hướng SSW

> **Mục tiêu nhân vật:** Trang (24t, Huế, TTS năm 2 ryokan Kyoto, N3). Học các mẫu hội thoại tiếng Nhật của 仲居 cuối năm 2: (1) nhận thông báo đậu JLPT N3, (2) nhận chứng chỉ 接客<ruby>検定<rt>けんてい</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>, (3) bàn với 大女将/若女将 về chuyển 特定技能, (4) chia tay 同期 về VN, (5) đón nhận trách nhiệm sempai năm 3, (6) lập kế hoạch SSW + thi 2級.

## Bối cảnh

Tháng 3/2027. Trang kết thúc năm 2 TTS. Tháng 2 thi JLPT N3 lần 2 và 接客<ruby>検定<rt>けんてい</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>, đang đợi kết quả. Bạn 同期 (cùng đợt) Mai (Hà Nội, làm ryokan khác Kyoto) chuẩn bị về VN vì gia đình. Trang quyết định ở lại, chuyển 特定技能 sau khi xong năm 3. Chương này tập trung mẫu câu báo cáo kết quả, bàn kế hoạch tương lai, chia tay.

## Tình huống 1 — Phòng nhân viên, 3/1 10:00, mở email kết quả N3

| Vai | Lời thoại |
|---|---|
| Trang | *(mở laptop, hồi hộp)* JLPT のサイト、<ruby>開<rt>ひら</rt></ruby>きました…。 |
| 田中 | <ruby>緊張<rt>きんちょう</rt></ruby>するわね。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、トランさんなら<ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かってる。 |
| Trang | *(nhìn màn hình)* 「<ruby>合格<rt>ごうかく</rt></ruby>」！！<ruby>合格<rt>ごうかく</rt></ruby>です、<ruby>田中<rt>たなか</rt></ruby>さん！<br>*(Đậu! Đậu rồi chị Tanaka!)* |
| 田中 | やった！おめでとう！<ruby>点数<rt>てんすう</rt></ruby>は？ |
| Trang | <ruby>総合<rt>そうごう</rt></ruby>120<ruby>点<rt>てん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby>は40<ruby>点<rt>てん</rt></ruby><ruby>満点<rt>まんてん</rt></ruby>でした。 |
| 田中 | すごい！<ruby>女将<rt>おかみ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>しに<ruby>行<rt>い</rt></ruby>こう！ |

## Tình huống 2 — Phòng 大女将 và 若女将, 3/1 10:30, báo cáo

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>大女将<rt>おおおかみ</rt></ruby>さん、<ruby>若女将<rt>わかおかみ</rt></ruby>さん、JLPTのN3、<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>応援<rt>おうえん</rt></ruby>ありがとうございました。<br>*(Đại-Okami, Waka-okami, em đậu N3 rồi. Cảm ơn đã ủng hộ.)* |
| 大女将 | おめでとう！<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>った。 |
| Aiko | おめでとう、トランさん！<ruby>来年<rt>らいねん</rt></ruby>はN2を<ruby>目指<rt>めざ</rt></ruby>す？ |
| Trang | はい、<ruby>来年<rt>らいねん</rt></ruby>12<ruby>月<rt>がつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>でN2に<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Vâng, tháng 12 năm sau em thử N2.)* |
| 大女将 | <ruby>記念<rt>きねん</rt></ruby>に、お<ruby>祝<rt>いわ</rt></ruby>い<ruby>金<rt>きん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<ruby>規定<rt>きてい</rt></ruby>の<ruby>賞与<rt>しょうよ</rt></ruby>です。<br>*(Có thưởng kỷ niệm theo quy định.)* |
| Trang | あ、<ruby>頂<rt>いただ</rt></ruby>けるんですか。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！<br>*(Ơ, được nhận ạ? Em thật sự cảm ơn!)* |

## Tình huống 3 — Sảnh, 3/3 14:00, phong bì 検定 3級

*Bưu tá giao envelope từ Hội nghiệp đoàn ryokan.*

| Vai | Lời thoại |
|---|---|
| Trang | *(mở phong bì)* <ruby>接客検定<rt>せっきゃくけんてい</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>、<ruby>合格証<rt>ごうかくしょう</rt></ruby>です！<br>*(Chứng chỉ 接客 kentei cấp 3, đậu!)* |
| 田中 | ダブル<ruby>合格<rt>ごうかく</rt></ruby>ね！<ruby>本当<rt>ほんとう</rt></ruby>にすごい。 |
| Aiko | *(đi qua)* なに？<ruby>合格<rt>ごうかく</rt></ruby>？ |
| Trang | はい、<ruby>接客検定<rt>せっきゃくけんてい</rt></ruby>もです。 |
| Aiko | じゃあ<ruby>履歴書<rt>りれきしょ</rt></ruby>に<ruby>書<rt>か</rt></ruby>けるね。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>移行<rt>いこう</rt></ruby>の<ruby>時<rt>とき</rt></ruby>に<ruby>有利<rt>ゆうり</rt></ruby>。<br>*(Vậy có thể ghi vào lý lịch. Chuyển SSW thì có lợi.)* |
| Trang | はい、その<ruby>予定<rt>よてい</rt></ruby>です。 |

## Tình huống 4 — Phòng riêng, 3/3 17:00, bàn 特定技能 với Aiko

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くんだけど、3<ruby>年後<rt>ねんご</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>で<ruby>残<rt>のこ</rt></ruby>る<ruby>気<rt>き</rt></ruby>はある？<br>*(Trang, hỏi nghiêm túc: 3 năm sau ở lại SSW có không?)* |
| Trang | はい、<ruby>本気<rt>ほんき</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えています。N3も<ruby>取<rt>と</rt></ruby>ったので、<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>満<rt>み</rt></ruby>たします。<br>*(Vâng, em đang tính nghiêm túc. Đã có N3, đủ điều kiện.)* |
| Aiko | <ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がるし、<ruby>家族<rt>かぞく</rt></ruby><ruby>呼<rt>よ</rt></ruby>び<ruby>寄<rt>よ</rt></ruby>せもできるよ。<ruby>結婚<rt>けっこん</rt></ruby><ruby>相手<rt>あいて</rt></ruby>とか。<br>*(Lương tăng, gọi gia đình sang được. Cả người yêu.)* |
| Trang | <ruby>結婚<rt>けっこん</rt></ruby>はまだですが、<ruby>母<rt>はは</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びたいかもしれません。<br>*(Cưới thì chưa nhưng có thể gọi mẹ.)* |
| Aiko | <ruby>当館<rt>とうかん</rt></ruby>はサポートする。<ruby>書類<rt>しょるい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>も<ruby>手伝<rt>てつだ</rt></ruby>うから。<br>*(Ryokan sẽ hỗ trợ. Giúp chuẩn bị giấy tờ.)* |
| Trang | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>心強<rt>こころづよ</rt></ruby>いです。<br>*(Cảm ơn ạ. Thật sự yên tâm.)* |

## Tình huống 5 — Quán café, 3/5 15:00, gặp Mai (同期 về nước)

*Trang ngày nghỉ, gặp Mai ở Kyoto.*

| Vai | Lời thoại |
|---|---|
| Mai | Trang, em quyết định về Hà Nội rồi. Mẹ em ốm. |
| Trang | Mai... Tiếc quá. Nhưng gia đình quan trọng hơn. |
| Mai | Em xin lỗi không ở cùng chị thêm năm 3. |
| Trang | Em đừng xin lỗi. Bên Nhật mình quen nhau là duyên rồi. |
| Mai | Chị làm SSW thật à? |
| Trang | Ừ, chị quyết rồi. Okami và Waka-okami đều hỗ trợ. Lương SSW gấp rưỡi TTS. |
| Mai | Chị giỏi quá. N3 với kentei cùng lúc. |
| Trang | May mắn thôi. Mỗi tối học 2 tiếng cũng tích luỹ được. |
| Mai | Em về sẽ vào công ty Nhật ở Hà Nội. Tiếng Nhật bên đó thiếu trầm trọng. |
| Trang | Vậy là tốt rồi. Hai chị em mình giữ liên lạc Zalo nhé. |

## Tình huống 6 — Sân ga Kyoto, 3/10 9:00, tiễn Mai

| Vai | Lời thoại |
|---|---|
| Mai | Chị ơi, em đi đây. |
| Trang | Đi mạnh giỏi. Về VN nhớ qua khám sức khoẻ mẹ Mai. |
| Mai | *(khóc)* Em cảm ơn chị 2 năm qua. |
| Trang | Chị cũng cảm ơn em. Đi nhé. |
| Mai | *(quay lại, nói tiếng Nhật)* トランさん、<ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<ruby>必<rt>かなら</rt></ruby>ず<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Trang à, giữ sức khoẻ. Em sẽ luôn liên lạc.)* |
| Trang | はい、いってらっしゃい。<br>*(Vâng, lên đường.)* |

## Tình huống 7 — Phòng nhân viên, 3/12 11:00, nhận trách nhiệm sempai

| Vai | Lời thoại |
|---|---|
| 大女将 | トランさん、4<ruby>月<rt>がつ</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby>が2<ruby>名<rt>めい</rt></ruby><ruby>来<rt>き</rt></ruby>ます。インドネシアとフィリピンから。<br>*(Trang, từ tháng 4 có 2 nhân viên mới. Indonesia và Philippines.)* |
| Trang | はい、<ruby>女子寮<rt>じょしりょう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>はできています。 |
| 大女将 | トランさんに<ruby>教育担当<rt>きょういくたんとう</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せたい。リッキさん（Indonesia）とジョイさん（Philippines）。<br>*(Tôi muốn giao Trang phụ trách đào tạo họ. Ricky và Joy.)* |
| Trang | <ruby>責任重大<rt>せきにんじゅうだい</rt></ruby>ですが、<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>去年<rt>きょねん</rt></ruby>のチェンさんへの<ruby>経験<rt>けいけん</rt></ruby>を<ruby>活<rt>い</rt></ruby>かします。<br>*(Trách nhiệm lớn nhưng em sẽ cố. Vận dụng kinh nghiệm với Chen năm ngoái.)* |
| 大女将 | チェンさんを<ruby>育<rt>そだ</rt></ruby>てた<ruby>実績<rt>じっせき</rt></ruby>があるからね。<ruby>頼<rt>たよ</rt></ruby>りにしています。<br>*(Có thành tích đào tạo Chen rồi mà. Trông cậy Trang.)* |

## Tình huống 8 — Phòng 板長, 3/13 16:00, bàn thực đơn VN

| Vai | Lời thoại |
|---|---|
| 板長 | トランさん、ベトナム<ruby>料理<rt>りょうり</rt></ruby>のフェアを<ruby>来月<rt>らいげつ</rt></ruby>やりたい。<ruby>協力<rt>きょうりょく</rt></ruby>してくれる？<br>*(Trang, tháng sau muốn làm fair món Việt. Hợp tác nhé?)* |
| Trang | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>母<rt>はは</rt></ruby>のレシピがあります。<br>*(Ơ, thật ạ! Em vui. Có công thức của mẹ em.)* |
| 板長 | フォーは<ruby>朝食<rt>ちょうしょく</rt></ruby>に<ruby>出<rt>だ</rt></ruby>せるかな？ |
| Trang | はい、<ruby>鶏<rt>とり</rt></ruby>のフォーなら<ruby>日本<rt>にほん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>も<ruby>食<rt>た</rt></ruby>べやすいです。 |
| 板長 | レシピを<ruby>母上<rt>ははうえ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いて、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>試作<rt>しさく</rt></ruby>しよう。 |
| Trang | はい！<ruby>母<rt>はは</rt></ruby>もきっと<ruby>喜<rt>よろこ</rt></ruby>びます。<br>*(Vâng! Mẹ chắc cũng vui.)* |

## Tình huống 9 — Sảnh, 3/15 14:00, khách quen quay lại

| Vai | Lời thoại |
|---|---|
| 客 | おお、トランさん！<ruby>正月<rt>しょうがつ</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になった<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>主人<rt>しゅじん</rt></ruby>、<ruby>元気<rt>げんき</rt></ruby>になりました。<br>*(Ô, Trang! Satō hồi Tết đây. Chồng tôi khoẻ lại rồi.)* |
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>！ご<ruby>無事<rt>ぶじ</rt></ruby>で<ruby>本当<rt>ほんとう</rt></ruby>によかったです。<ruby>奥様<rt>おくさま</rt></ruby>、ご<ruby>主人<rt>しゅじん</rt></ruby>様の<ruby>体調<rt>たいちょう</rt></ruby>はいかがですか。 |
| 客 | おかげさまで。あの<ruby>時<rt>とき</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。お<ruby>礼<rt>れい</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Cảm ơn. Đối ứng hôm đó cảm kích lắm. Đến cảm ơn.)* |
| Trang | とんでもないです。お<ruby>客様<rt>きゃくさま</rt></ruby>がお<ruby>元気<rt>げんき</rt></ruby>で<ruby>何<rt>なに</rt></ruby>よりです。 |
| 客 | これ、<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>銘菓<rt>めいか</rt></ruby>です。トランさんに。<br>*(Đây là bánh đặc sản quê. Tặng Trang.)* |
| Trang | お<ruby>気遣<rt>きづか</rt></ruby>い、ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>頂<rt>いただ</rt></ruby>きます。<br>*(Cảm ơn sự quan tâm. Em xin nhận quý trọng.)* |

## Tình huống 10 — Vườn, 3/18 16:00, hoa anh đào nở

| Vai | Lời thoại |
|---|---|
| Aiko | トランさん、<ruby>桜<rt>さくら</rt></ruby>が<ruby>咲<rt>さ</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めたよ。<ruby>京都<rt>きょうと</rt></ruby>の2<ruby>回目<rt>かいめ</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>ね。<br>*(Trang, hoa anh đào nở rồi. Sakura Kyoto lần thứ 2 nhỉ.)* |
| Trang | はい、<ruby>去年<rt>きょねん</rt></ruby>より<ruby>感慨<rt>かんがい</rt></ruby>が<ruby>深<rt>ふか</rt></ruby>いです。<br>*(Vâng, sâu sắc hơn năm ngoái.)* |
| Aiko | <ruby>来年<rt>らいねん</rt></ruby>はN2、<ruby>再来年<rt>さらいねん</rt></ruby>は<ruby>特定技能<rt>とくていぎのう</rt></ruby>。<ruby>道<rt>みち</rt></ruby>が<ruby>見<rt>み</rt></ruby>えてきたね。<br>*(Năm sau N2, năm sau nữa SSW. Đã thấy đường rồi nhỉ.)* |
| Trang | はい、<ruby>夢<rt>ゆめ</rt></ruby>は<ruby>女将<rt>おかみ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づくことです。<br>*(Vâng, ước mơ là tiến gần Okami.)* |
| Aiko | <ruby>女将<rt>おかみ</rt></ruby>になるには<ruby>結婚<rt>けっこん</rt></ruby>か<ruby>長<rt>なが</rt></ruby>い<ruby>修業<rt>しゅぎょう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だけど、トランさんなら<ruby>仲居頭<rt>なかいがしら</rt></ruby>は<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>狙<rt>ねら</rt></ruby>える。<br>*(Làm okami phải cưới hoặc tu nghiệp dài, nhưng làm trưởng nhóm 仲居 Trang đủ sức.)* |
| Trang | <ruby>仲居頭<rt>なかいがしら</rt></ruby>、それを<ruby>目標<rt>もくひょう</rt></ruby>にします。 |

## Tình huống 11 — Phòng ký túc, 3/20 22:00, lập kế hoạch

*Trang viết lên giấy.*

| Vai | Lời thoại |
|---|---|
| Chen | トランさん、<ruby>何<rt>なに</rt></ruby><ruby>書<rt>か</rt></ruby>いてるの？ |
| Trang | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>。N2、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>、<ruby>仲居頭<rt>なかいがしら</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>す。<br>*(Kế hoạch năm sau. N2, thi SSW, hướng tới trưởng nhóm.)* |
| Chen | すごい！<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てるの、いつも<ruby>感心<rt>かんしん</rt></ruby>。<br>*(Đỉnh! Trang lập kế hoạch luôn khâm phục.)* |
| Trang | チェンさんも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>立<rt>た</rt></ruby>てよう。N3まずクリア。 |
| Chen | はい、<ruby>姉姐<rt>あねえ</rt></ruby>！<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng, chị/jiějie! Dạy em.)* |
| Trang | <ruby>姉姐<rt>あねえ</rt></ruby>って、<ruby>中国語<rt>ちゅうごくご</rt></ruby>？ |
| Chen | <ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>。トランさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>姉<rt>あね</rt></ruby>みたい。 |

## Tình huống 12 — Sảnh, 3/25 11:00, chia tay khách năm 2 cuối

| Vai | Lời thoại |
|---|---|
| Trang | お<ruby>客様<rt>きゃくさま</rt></ruby>、お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りなさいませ。<ruby>桜<rt>さくら</rt></ruby>、お<ruby>楽<rt>たの</rt></ruby>しみいただけましたでしょうか。 |
| 客 | はい、トランさんの<ruby>案内<rt>あんない</rt></ruby>で<ruby>哲学<rt>てつがく</rt></ruby>の<ruby>道<rt>みち</rt></ruby>に<ruby>行<rt>い</rt></ruby>って、<ruby>最高<rt>さいこう</rt></ruby>でした。 |
| Trang | <ruby>嬉<rt>うれ</rt></ruby>しゅうございます。また<ruby>京都<rt>きょうと</rt></ruby>にお<ruby>越<rt>こ</rt></ruby>しの<ruby>際<rt>さい</rt></ruby>は、ぜひお<ruby>立<rt>た</rt></ruby>ち<ruby>寄<rt>よ</rt></ruby>りください。<br>*(Em vui ạ. Lần sau ghé Kyoto xin lại ghé chúng em.)* |
| 客 | 「<ruby>嬉<rt>うれ</rt></ruby>しゅう」って<ruby>古<rt>ふる</rt></ruby>い<ruby>京都弁<rt>きょうとべん</rt></ruby>ね。<ruby>女将<rt>おかみ</rt></ruby>さんの<ruby>口癖<rt>くちぐせ</rt></ruby>？ |
| Trang | はい、<ruby>真似<rt>まね</rt></ruby>てしまいました。<ruby>失礼<rt>しつれい</rt></ruby>でしたか。 |
| 客 | いやいや、<ruby>京都<rt>きょうと</rt></ruby>らしくて<ruby>素敵<rt>すてき</rt></ruby>。 |

## Tình huống 13 — Phòng 大女将, 3/30 17:00, bữa tổng kết năm 2

*大女将, 若女将, Trang, Chen, 田中 ngồi quanh bàn trà.*

| Vai | Lời thoại |
|---|---|
| 大女将 | トランさん、チェンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。2<ruby>年目<rt>ねんめ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>成長<rt>せいちょう</rt></ruby>しました。 |
| Aiko | <ruby>来年<rt>らいねん</rt></ruby>は3<ruby>年目<rt>ねんめ</rt></ruby>、<ruby>最終年<rt>さいしゅうねん</rt></ruby>。<ruby>頑張<rt>がんば</rt></ruby>って。 |
| Trang | はい。3<ruby>年目<rt>ねんめ</rt></ruby>はN2<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>え、<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>育成<rt>いくせい</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>必<rt>かなら</rt></ruby>ず<ruby>達成<rt>たっせい</rt></ruby>します。<br>*(Vâng. Năm 3: đậu N2, chuyển SSW, đào tạo đàn em. Ba điều, em sẽ làm bằng được.)* |
| 大女将 | <ruby>頼<rt>たの</rt></ruby>もしい。<ruby>当館<rt>とうかん</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>家族<rt>かぞく</rt></ruby>です。 |
| Trang | *(rơm rớm)* <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>女将<rt>おかみ</rt></ruby>さんたちのお<ruby>陰<rt>かげ</rt></ruby>です。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Lời quá khen. Nhờ Okami và Waka-okami. Em thật cảm ơn.)* |

## Tình huống 14 — Phòng ký túc, 3/31 23:00, gọi điện về Huế

> Cảnh tiếng Việt — gọi mẹ và em Hà, tổng kết năm 2.

| Vai | Lời thoại |
|---|---|
| Trang | Mẹ ơi, năm 2 con kết thúc rồi. Con đậu N3, đậu kentei cấp 3 nữa. |
| Mẹ | Trời ơi, mẹ tự hào con quá. Con khoẻ chứ? |
| Trang | Khoẻ mẹ. Mà có nhiều tin lớn. Okami giao con kyouiku-tantou — phụ trách đào tạo — 2 nhân viên mới Indonesia với Philippines từ tháng 4. |
| Hà | Chị làm sempai rồi! |
| Trang | Ừ, sempai chính thức của họ. Và bếp trưởng còn nhờ chị làm fair món Việt. Chị xin công thức phở của mẹ nhé. |
| Mẹ | Mẹ làm cả tô gửi qua bưu điện được không con? |
| Trang | Mẹ ơi cười chết, phở mẹ ơi không gửi được. Chỉ cần công thức thôi. |
| Hà | Chị tính bao giờ về? |
| Trang | Hết năm 3, tháng 3/2028. Về 2 tháng rồi quay lại Nhật làm tokutei-ginou — SSW. Có thể gọi mẹ qua chơi 90 ngày sau khi chị đậu N2. |
| Mẹ | Mẹ qua Nhật? Mẹ không biết tiếng. |
| Trang | Có con mà mẹ. Con dẫn mẹ đi sakura, đi onsen. |
| Mẹ | *(khóc)* Mẹ chờ ngày đó. |
| Trang | Mẹ giữ sức khoẻ. Năm 3 con sẽ trả nợ vay xong, gửi mẹ đều đều. |
| Hà | Chị đỉnh nhất Việt Nam! |

## Đọng lại chương

**Mẫu câu tổng kết quan trọng:**
- 「<ruby>合格<rt>ごうかく</rt></ruby>しました」— Em đậu rồi
- 「<ruby>挑戦<rt>ちょうせん</rt></ruby>します」— Em thử thách (đăng ký thi)
- 「<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>まん</rt></ruby>たす」— Đáp ứng điều kiện
- 「<ruby>呼<rt>よ</rt></ruby>び<ruby>寄<rt>よ</rt></ruby>せ」— Bảo lãnh gia đình sang
- 「<ruby>教育担当<rt>きょういくたんとう</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せたい」— Muốn giao phụ trách đào tạo
- 「<ruby>責任重大<rt>せきにんじゅうだい</rt></ruby>」— Trách nhiệm lớn
- 「<ruby>嬉<rt>うれ</rt></ruby>しゅうございます」— Em vui ạ (京都弁 cổ)
- 「<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>」— Lời quá khen
- 「<ruby>必<rt>かなら</rt></ruby>ず<ruby>達成<rt>たっせい</rt></ruby>します」— Em nhất định đạt được

> Từ vựng & mẫu câu chương này: 合格・点数・総合・読解・満点・応援・挑戦・記念・賞与・接客検定・履歴書・特定技能・移行・有利・本気・条件・満たす・呼び寄せ・心強い・同期・連絡・新人・教育担当・任せる・責任重大・育成・経験・活かす・実績・頼り・フェア・協力・レシピ・銘菓・気遣い・故郷・桜・感慨・夢・仲居頭・修業・計画・目標・哲学の道・京都弁・口癖・真似る・最終年・達成・頼もしい・お陰

## Bí quyết chương

- Báo kết quả N3 với cấp trên: NÓI lời cảm ơn 「<ruby>応援<rt>おうえん</rt></ruby>ありがとうございました」 — thái độ biết ơn, không khoe.
- Nhận thưởng: 「<ruby>頂<rt>いただ</rt></ruby>けるんですか」+ cúi 30° — không bao giờ "đương nhiên" nhận.
- Bàn SSW với cấp trên: nói thẳng kế hoạch 5 năm, hỏi việc bảo lãnh gia đình rõ ràng — Nhật trọng kế hoạch dài hạn.
- Khi 同期 về nước: tiễn ở ga, ôm OK với người Việt, nhưng nếu có người Nhật thấy thì cúi chào kiểu Nhật.
- Lời 「<ruby>嬉<rt>うれ</rt></ruby>しゅうございます」(京都弁 cổ) — học từ 女将, dùng đúng chỗ thì khách quý lắm; dùng sai chỗ thì kỳ.
- Lập kế hoạch năm 3: 3 mục tiêu CỤ THỂ (N2 + SSW + đào tạo đàn em), không mơ hồ.
- Khi 板長 mời hợp tác fair món quê: nắm bắt — đây là cơ hội "định danh" trong ryokan.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 合格 | ごうかく | HỢP CÁCH | đậu, đỗ |
| 点数 | てんすう | ĐIỂM SỐ | điểm số |
| 総合 | そうごう | TỔNG HỢP | tổng hợp |
| 読解 | どっかい | ĐỌC GIẢI | đọc hiểu |
| 満点 | まんてん | MÃN ĐIỂM | điểm tối đa |
| 応援 | おうえん | ỨNG VIỆN | ủng hộ, cổ vũ |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thử thách, đăng ký thi |
| 記念 | きねん | KỶ NIỆM | kỷ niệm |
| 賞与 | しょうよ | THƯỞNG DỮ | tiền thưởng |
| 接客検定 | せっきゃくけんてい | TIẾP KHÁCH KIỂM ĐỊNH | kentei phục vụ |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | sơ yếu lý lịch |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | SSW |
| 移行 | いこう | DI HÀNH | chuyển đổi |
| 有利 | ゆうり | HỮU LỢI | có lợi |
| 本気 | ほんき | BẢN KHÍ | nghiêm túc, thật lòng |
| 条件 | じょうけん | ĐIỀU KIỆN | điều kiện |
| 満たす | みたす | MÃN | đáp ứng |
| 呼び寄せ | よびよせ | HÔ KÝ | bảo lãnh sang |
| 心強い | こころづよい | TÂM CƯỜNG | yên tâm, an lòng |
| 同期 | どうき | ĐỒNG KỲ | cùng đợt |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 新人 | しんじん | TÂN NHÂN | nhân viên mới |
| 教育担当 | きょういくたんとう | GIÁO DỤC ĐẢM ĐƯƠNG | phụ trách đào tạo |
| 任せる | まかせる | NHẬM | giao phó |
| 責任重大 | せきにんじゅうだい | TRÁCH NHIỆM TRỌNG ĐẠI | trách nhiệm lớn |
| 育成 | いくせい | DỤC THÀNH | đào tạo |
| 活かす | いかす | HOẠT | vận dụng |
| 実績 | じっせき | THỰC TÍCH | thành tích |
| 頼る | たよる | LẠI | trông cậy |
| フェア | ふぇあ | — | fair, sự kiện |
| 協力 | きょうりょく | HIỆP LỰC | hợp tác |
| レシピ | れしぴ | — | công thức |
| 銘菓 | めいか | MINH QUẢ | bánh đặc sản nổi tiếng |
| 気遣い | きづかい | KHÍ TRỤC | sự quan tâm |
| 故郷 | こきょう | CỐ HƯƠNG | quê hương |
| 桜 | さくら | ANH | hoa anh đào |
| 感慨 | かんがい | CẢM KHÁI | cảm xúc sâu sắc |
| 夢 | ゆめ | MỘNG | ước mơ |
| 仲居頭 | なかいがしら | TRỌNG CƯ ĐẦU | trưởng nhóm 仲居 |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 哲学の道 | てつがくのみち | TRIẾT HỌC ĐẠO | đường Triết Học (Kyoto) |
| 京都弁 | きょうとべん | KINH ĐÔ BIỆN | tiếng Kyoto |
| 口癖 | くちぐせ | KHẨU TẬP | thói nói cửa miệng |
| 真似る | まねる | CHÂN TỰ | bắt chước |
| 最終年 | さいしゅうねん | TỐI CHUNG NIÊN | năm cuối |
| 達成 | たっせい | ĐẠT THÀNH | đạt được |
| 頼もしい | たのもしい | LẠI | đáng tin cậy |
| お陰 | おかげ | ÂM | nhờ ơn |
| 嬉しゅう | うれしゅう | HỶ | (Kyoto弁) vui mừng |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
