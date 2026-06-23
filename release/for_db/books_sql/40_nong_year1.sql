-- Hizashi LITE book SQL — Linh Y1 — TTS Nông nghiệp năm 1 (Ibaraki)
-- curriculum_id = 800000040  (book_seq=40)
-- nguồn: books/40_nong_year1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000040, 'N4', 'markdown_book', 'Nông nghiệp', 'Linh Y1 — TTS Nông nghiệp năm 1 (Ibaraki)', 'Bộ sách Hizashi — Linh Y1 — TTS Nông nghiệp năm 1 (Ibaraki)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000001, 800000040, NULL, 'markdown_book', 'T1. Ngày đầu đặt chân tới Nhật (来日・寮入り)', '# Sách thực tập sinh nông nghiệp · T1. Ngày đầu đặt chân tới Nhật (来日・寮入り)

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp) sang Nhật làm thực tập sinh nông nghiệp tại Ibaraki. Học các mẫu hội thoại tiếng Nhật ngày đặt chân tới Nhật: trả lời 入管 (cục xuất nhập cảnh), gặp staff 監理団体 Suzuki ở sảnh đến Narita, chào hỏi anh chị trên xe bus về Ibaraki, hỏi lại lễ phép khi chưa hiểu (〜というのは?), giới thiệu bản thân với nhóm cùng đoàn, và mẫu câu sinh hoạt cơ bản.

---

## Bối cảnh

Ngày 8 tháng 4 năm 2025. Linh (22 tuổi, quê Đồng Tháp miền Tây) sang Nhật theo diện 技能実習 (thực tập sinh) ngành nông nghiệp. Nông trại đích: **山本農園** (Yamamoto-noen) ở Ibaraki, chuyên rau salad và dưa leo trong nhà kính. Trình độ tiếng Nhật N5. Chương này tập trung các mẫu câu nhập cảnh Narita, gặp staff đoàn thể giám lý Suzuki, lên xe bus về Ibaraki cùng 3 bạn thực tập sinh khác.

---

## Tình huống 1 — Quầy 入管 sân bay Narita · 13:45, trả lời cục xuất nhập cảnh

| Vai | Lời thoại |
|---|---|
| 入管 | パスポートをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho xem hộ chiếu.)* |
| Linh | はい、どうぞ。<br>*(Vâng, đây ạ.)* |
| 入管 | <ruby>滞在<rt>たいざい</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Mục đích lưu trú là gì?)* |
| Linh | <ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>です。<ruby>茨城<rt>いばらき</rt></ruby><ruby>県<rt>けん</rt></ruby>の<ruby>農場<rt>のうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Thực tập kỹ năng ạ. Em làm việc tại nông trại ở tỉnh Ibaraki.)* |
| 入管 | <ruby>農業<rt>のうぎょう</rt></ruby>ですね。<ruby>期間<rt>きかん</rt></ruby>は?<br>*(Nông nghiệp nhỉ. Thời gian bao lâu?)* |
| Linh | <ruby>三<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<br>*(Ba năm ạ.)* |
| 入管 | <ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>渡<rt>わた</rt></ruby>します。<ruby>大切<rt>たいせつ</rt></ruby>にしてください。<br>*(Tôi đưa thẻ cư trú. Hãy giữ gìn cẩn thận.)* |
| Linh | はい、ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em cảm ơn ạ. Em xin phép.)* |

---

## Tình huống 2 — Sảnh đến Narita Terminal 2 · 14:30, gặp staff 監理団体 Suzuki

*Linh đẩy xe hành lý ra sảnh, nhìn quanh tìm bảng tên.*

| Vai | Lời thoại |
|---|---|
| Suzuki | (cầm bảng「リンさん グエン・ティ・リン」) リンさん!こちらです!<br>*(Em Linh! Bên này này!)* |
| Linh | あ、はい!<ruby>鈴木<rt>すずき</rt></ruby>さんでいらっしゃいますか?<br>*(À, vâng! Có phải anh là Suzuki không ạ?)* |
| Suzuki | はい、<ruby>監理<rt>かんり</rt></ruby><ruby>団体<rt>だんたい</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>です。ようこそ<ruby>日本<rt>にほん</rt></ruby>へ。<br>*(Vâng, tôi là Suzuki của đoàn thể giám lý. Hoan nghênh em đến Nhật.)* |
| Linh | (cúi đầu) <ruby>初<rt>はじ</rt></ruby>めまして。グエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em chào anh ạ. Em tên là Nguyễn Thị Linh. Mong anh giúp đỡ ạ.)* |
| Suzuki | <ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Đi đường xa vất vả rồi. Sức khoẻ em ổn không?)* |
| Linh | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, em ổn ạ.)* |
| Suzuki | あと<ruby>三人<rt>さんにん</rt></ruby>を<ruby>待<rt>ま</rt></ruby>っています。<ruby>少<rt>すこ</rt></ruby>し<ruby>休<rt>やす</rt></ruby>んでください。お<ruby>手洗<rt>てあら</rt></ruby>いはあそこです。<br>*(Còn ba người nữa đang đợi. Em nghỉ một chút đi. Nhà vệ sinh ở đằng kia.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 3 — Sảnh đến Narita · 15:10, gặp bạn cùng đoàn

*Sau 30 phút, hai bạn nữ và một bạn nam thực tập sinh Việt Nam ra sảnh.*

| Vai | Lời thoại |
|---|---|
| Suzuki | みなさん、こちらリンさんです。これから<ruby>四人<rt>よにん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>茨城<rt>いばらき</rt></ruby>まで<ruby>行<rt>い</rt></ruby>きます。<br>*(Mọi người, đây là em Linh. Từ đây bốn người cùng đi đến Ibaraki.)* |
| Linh | <ruby>初<rt>はじ</rt></ruby>めまして。リンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em chào mọi người. Em là Linh. Mong mọi người giúp đỡ.)* |
| Hùng | はじめまして、フンです。ハイフォンから<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào em. Anh là Hùng. Anh từ Hải Phòng đến.)* |
| Mai | マイです。フエから<ruby>来<rt>き</rt></ruby>ました。よろしくね。<br>*(Mai đây. Tớ từ Huế đến. Mong cậu giúp đỡ nhé.)* |
| An | アンです。<ruby>同<rt>おな</rt></ruby>じ<ruby>農場<rt>のうじょう</rt></ruby>かな?<br>*(An đây. Cùng nông trại không nhỉ?)* |
| Suzuki | リンさんとアンさんは<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>です。フンさんとマイさんは<ruby>別<rt>べつ</rt></ruby>の<ruby>農場<rt>のうじょう</rt></ruby>です。<br>*(Em Linh và An vào nông trại Yamamoto. Hùng và Mai vào nông trại khác.)* |
| Linh | アンさん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh An, mong anh giúp đỡ.)* |
| An | こちらこそ、よろしく。<br>*(Anh cũng vậy, mong em giúp đỡ.)* |

---

## Tình huống 4 — Bãi đỗ xe bus Narita · 15:30, lên bus 監理団体

| Vai | Lời thoại |
|---|---|
| Suzuki | こちらのバスです。<ruby>荷物<rt>にもつ</rt></ruby>は<ruby>下<rt>した</rt></ruby>の<ruby>収納<rt>しゅうのう</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<br>*(Bus đây. Hành lý các em để vào ngăn dưới.)* |
| Linh | はい。すみません、「<ruby>収納<rt>しゅうのう</rt></ruby>」というのは?<br>*(Vâng. Xin lỗi, "shuunou" nghĩa là gì ạ?)* |
| Suzuki | <ruby>荷物<rt>にもつ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる<ruby>場所<rt>ばしょ</rt></ruby>です。バスの<ruby>下<rt>した</rt></ruby>のここですよ。<br>*(Chỗ để cho hành lý. Bên dưới bus, chỗ này này.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(À, em hiểu rồi. Em cảm ơn ạ.)* |
| Bác tài | みなさん、こんにちは。<ruby>運転手<rt>うんてんしゅ</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>です。<ruby>茨城<rt>いばらき</rt></ruby>まで<ruby>二<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ぐらいかかります。<br>*(Chào các bạn. Bác là tài xế Tanaka. Đến Ibaraki mất khoảng 2 tiếng.)* |
| Linh | (cúi đầu) よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em chào bác. Mong bác giúp ạ.)* |
| Suzuki | シートベルトを<ruby>必<rt>かなら</rt></ruby>ず<ruby>締<rt>し</rt></ruby>めてください。<br>*(Các em phải thắt dây an toàn nhé.)* |
| Linh | はい。<br>*(Vâng.)* |

---

## Tình huống 5 — Trên bus chạy về Ibaraki · 16:00, Suzuki giải thích đường đi

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>今<rt>いま</rt></ruby>、<ruby>千葉<rt>ちば</rt></ruby><ruby>県<rt>けん</rt></ruby>を<ruby>走<rt>はし</rt></ruby>っています。<ruby>茨城<rt>いばらき</rt></ruby>は<ruby>北<rt>きた</rt></ruby>です。<br>*(Bây giờ đang chạy qua tỉnh Chiba. Ibaraki ở phía bắc.)* |
| Linh | <ruby>茨城<rt>いばらき</rt></ruby><ruby>県<rt>けん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>が<ruby>有名<rt>ゆうめい</rt></ruby>ですか?<br>*(Tỉnh Ibaraki nổi tiếng cái gì ạ?)* |
| Suzuki | <ruby>農業<rt>のうぎょう</rt></ruby>が<ruby>盛<rt>さか</rt></ruby>んです。レタス、メロン、<ruby>納豆<rt>なっとう</rt></ruby>が<ruby>有名<rt>ゆうめい</rt></ruby>ですよ。<br>*(Nông nghiệp phát triển. Rau salad, dưa, đậu natto nổi tiếng đó.)* |
| Linh | <ruby>納豆<rt>なっとう</rt></ruby>?<ruby>食<rt>た</rt></ruby>べたことがありません。<br>*(Natto? Em chưa ăn bao giờ.)* |
| An | <ruby>臭<rt>くさ</rt></ruby>いらしいですよ。<br>*(Nghe nói hôi lắm đấy.)* |
| Suzuki | (cười) <ruby>最初<rt>さいしょ</rt></ruby>はびっくりします。でも<ruby>体<rt>からだ</rt></ruby>にいいです。<br>*(Lần đầu sẽ bất ngờ. Nhưng tốt cho cơ thể lắm.)* |
| Linh | <ruby>挑戦<rt>ちょうせん</rt></ruby>してみます。<br>*(Em sẽ thử ạ.)* |
| Suzuki | <ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>はレタスときゅうりです。ハウス<ruby>栽培<rt>さいばい</rt></ruby>が<ruby>中心<rt>ちゅうしん</rt></ruby>です。<br>*(Nông trại Yamamoto trồng rau salad và dưa leo. Chủ yếu trồng trong nhà kính.)* |
| Linh | ハウス、というのは<ruby>家<rt>いえ</rt></ruby>ですか?<br>*(Hausu, là cái nhà ạ?)* |
| Suzuki | いいえ。<ruby>野菜<rt>やさい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるビニールの<ruby>建物<rt>たてもの</rt></ruby>です。<ruby>冬<rt>ふゆ</rt></ruby>も<ruby>暖<rt>あたた</rt></ruby>かいです。<br>*(Không. Là toà nhà bằng nilon để trồng rau. Mùa đông cũng ấm.)* |
| Linh | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。メモします。<br>*(Ra vậy, em hiểu. Em ghi lại.)* |

---

## Tình huống 6 — Trên bus · 16:30, nghe Suzuki dặn về 親方 Yamamoto

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>の<ruby>親方<rt>おやかた</rt></ruby>は<ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>60<rt>ろくじゅっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<br>*(Ông chủ nông trại Yamamoto là ông Yamamoto, 60 tuổi.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、というのは?<br>*(Oyakata, nghĩa là gì ạ?)* |
| Suzuki | <ruby>農場<rt>のうじょう</rt></ruby>の<ruby>主人<rt>しゅじん</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>社長<rt>しゃちょう</rt></ruby>みたいな<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>ですね。<br>*(Là chủ nông trại. Cách gọi giống như giám đốc của công ty vậy.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi.)* |
| Suzuki | <ruby>親方<rt>おやかた</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいですが、<ruby>優<rt>やさ</rt></ruby>しい<ruby>方<rt>かた</rt></ruby>です。<ruby>挨拶<rt>あいさつ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしてください。<br>*(Oyakata nghiêm khắc, nhưng là người tốt bụng. Em hãy coi trọng việc chào hỏi.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| An | <ruby>先輩<rt>せんぱい</rt></ruby>もいますか?<br>*(Có sempai không ạ?)* |
| Suzuki | はい。<ruby>佐織<rt>さおり</rt></ruby>さん、<ruby>日本人<rt>にほんじん</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>。それから、インドネシアのデウィさんとフィリピンのリコさんもいます。<br>*(Có. Chị Saori, người Nhật 30 tuổi. Còn Dewi người Indonesia và Riko người Philippines nữa.)* |
| Linh | <ruby>国際的<rt>こくさいてき</rt></ruby>ですね!<br>*(Quốc tế quá nhỉ!)* |
| Suzuki | そうです。みんな<ruby>仲<rt>なか</rt></ruby>がいいですよ。<br>*(Đúng vậy. Mọi người hoà thuận lắm.)* |

---

## Tình huống 7 — Trên bus · 17:00, Suzuki giải thích 報連相 và quy tắc đoàn thể

| Vai | Lời thoại |
|---|---|
| Suzuki | みなさん、<ruby>大事<rt>だいじ</rt></ruby>なことを<ruby>話<rt>はな</rt></ruby>します。<br>*(Các em, anh nói chuyện quan trọng nhé.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Suzuki | <ruby>日本<rt>にほん</rt></ruby>の<ruby>職場<rt>しょくば</rt></ruby>では「<ruby>報連相<rt>ほうれんそう</rt></ruby>」が<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Ở nơi làm việc Nhật, "hourensou" rất quan trọng.)* |
| Linh | ほうれんそう...<ruby>野菜<rt>やさい</rt></ruby>のほうれん<ruby>草<rt>そう</rt></ruby>ですか?<br>*(Hourensou... rau cải bó xôi ạ?)* |
| Suzuki | (cười) ちがいます。<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>です。<br>*(Khác. Là viết tắt của báo cáo - liên lạc - bàn bạc.)* |
| Linh | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>ですね。<br>*(Báo cáo, liên lạc, bàn bạc nhỉ.)* |
| Suzuki | そうです。<ruby>分<rt>わ</rt></ruby>からないことは、<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>悩<rt>なや</rt></ruby>まないでね。<br>*(Đúng. Có gì không hiểu nhất định phải hỏi. Đừng tự ôm một mình nhé.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Suzuki | <ruby>私<rt>わたし</rt></ruby>は<ruby>月<rt>つき</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>を<ruby>訪問<rt>ほうもん</rt></ruby>します。<ruby>困<rt>こま</rt></ruby>ったことがあったら<ruby>電話<rt>でんわ</rt></ruby>してくださいね。<br>*(Anh tháng một lần ghé thăm nông trại. Có gì khó khăn thì điện thoại nhé.)* |
| An | はい、<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Vâng, em yên tâm rồi.)* |

---

## Tình huống 8 — Trên bus · 17:30, ngắm cánh đồng Ibaraki

| Vai | Lời thoại |
|---|---|
| Linh | (nhìn ra cửa sổ) わあ、<ruby>田<rt>た</rt></ruby>んぼがたくさんありますね。<br>*(Ôi, nhiều ruộng quá nhỉ.)* |
| Suzuki | はい、<ruby>茨城<rt>いばらき</rt></ruby>は<ruby>米<rt>こめ</rt></ruby>も<ruby>有名<rt>ゆうめい</rt></ruby>です。<ruby>四月<rt>しがつ</rt></ruby>は<ruby>田植<rt>たう</rt></ruby>えの<ruby>季節<rt>きせつ</rt></ruby>です。<br>*(Vâng, Ibaraki gạo cũng nổi tiếng. Tháng 4 là mùa cấy lúa.)* |
| Linh | ベトナムと<ruby>同<rt>おな</rt></ruby>じですね。<ruby>私<rt>わたし</rt></ruby>の<ruby>故郷<rt>こきょう</rt></ruby>も<ruby>田<rt>た</rt></ruby>んぼがたくさんあります。<br>*(Giống Việt Nam ạ. Quê em cũng nhiều ruộng lắm.)* |
| Suzuki | リンさんの<ruby>故郷<rt>こきょう</rt></ruby>はどこですか?<br>*(Quê em Linh ở đâu?)* |
| Linh | <ruby>南<rt>みなみ</rt></ruby>のドンタップ<ruby>県<rt>けん</rt></ruby>です。メコン<ruby>川<rt>がわ</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>くです。<br>*(Ở tỉnh Đồng Tháp miền Nam. Gần sông Mekong ạ.)* |
| Suzuki | じゃあ、<ruby>農業<rt>のうぎょう</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>がありますか?<br>*(Vậy có kinh nghiệm nông nghiệp không?)* |
| Linh | はい、<ruby>少<rt>すこ</rt></ruby>しあります。<ruby>母<rt>はは</rt></ruby>と<ruby>田<rt>た</rt></ruby>んぼをやりました。<br>*(Vâng, có một chút ạ. Em làm ruộng với mẹ.)* |
| Suzuki | それはいいですね。<ruby>親方<rt>おやかた</rt></ruby>が<ruby>喜<rt>よろこ</rt></ruby>びますよ。<br>*(Tốt quá nhỉ. Oyakata sẽ vui đấy.)* |
| Linh | (mỉm cười) ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 9 — Trên bus · 18:00, dừng nghỉ trạm dịch vụ, mua nước

*Bus dừng ở 道の駅 (trạm dịch vụ đường bộ).*

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>十<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>休憩<rt>きゅうけい</rt></ruby>です。お<ruby>手洗<rt>てあら</rt></ruby>いとお<ruby>水<rt>みず</rt></ruby>をどうぞ。<br>*(Nghỉ 10 phút. Vào vệ sinh và mua nước nhé.)* |
| Linh | (đến quầy tự động) すみません、お<ruby>水<rt>みず</rt></ruby>はどれですか?<br>*(Xin lỗi, nước lọc cái nào ạ?)* |
| Nhân viên | あ、こちらの<ruby>青<rt>あお</rt></ruby>いボタンです。<ruby>百<rt>ひゃく</rt></ruby><ruby>三十<rt>さんじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(À, nút màu xanh bên này. 130 yên.)* |
| Linh | <ruby>百<rt>ひゃく</rt></ruby><ruby>三十<rt>さんじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>...(bỏ tiền vào, ấn nút) はい、<ruby>出<rt>で</rt></ruby>ました。ありがとうございます。<br>*(130 yên... Vâng, ra rồi. Em cảm ơn ạ.)* |
| Nhân viên | おつりはこちらです。<br>*(Tiền thừa đây.)* |
| Linh | (cúi đầu) ありがとうございました。<br>*(Em cảm ơn ạ.)* |
| An | (đến gần) リンさん、<ruby>使<rt>つか</rt></ruby>えましたか?<br>*(Em Linh, mua được không?)* |
| Linh | はい!<ruby>初<rt>はじ</rt></ruby>めての<ruby>日本<rt>にほん</rt></ruby>のお<ruby>水<rt>みず</rt></ruby>です。<br>*(Vâng! Chai nước Nhật đầu tiên ạ.)* |

---

## Tình huống 10 — Trên bus · 18:30, hỏi An kinh nghiệm tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Linh | アンさんは<ruby>日本語<rt>にほんご</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Anh An tiếng Nhật giỏi quá.)* |
| An | いえいえ、まだまだです。<ruby>送<rt>そう</rt></ruby><ruby>出<rt>だ</rt></ruby>し<ruby>機関<rt>きかん</rt></ruby>で<ruby>六<rt>ろっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Không không, vẫn còn kém lắm. Anh học 6 tháng ở trung tâm đưa đi.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>も<ruby>六<rt>ろっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>ですが、まだ<ruby>下手<rt>へた</rt></ruby>です。<br>*(Em cũng 6 tháng nhưng vẫn dở ạ.)* |
| An | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>うと<ruby>上手<rt>じょうず</rt></ruby>になりますよ。<br>*(Không sao. Dùng mỗi ngày sẽ giỏi thôi.)* |
| Linh | アンさんの<ruby>故郷<rt>こきょう</rt></ruby>はどこですか?<br>*(Quê anh An ở đâu ạ?)* |
| An | ゲアン<ruby>省<rt>しょう</rt></ruby>です。<ruby>北部<rt>ほくぶ</rt></ruby>です。<br>*(Tỉnh Nghệ An. Miền Bắc ạ.)* |
| Linh | <ruby>遠<rt>とお</rt></ruby>いですね。<ruby>南<rt>みなみ</rt></ruby>と<ruby>北<rt>きた</rt></ruby>、<ruby>言葉<rt>ことば</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Xa nhỉ. Nam và Bắc tiếng nói hơi khác ạ.)* |
| An | はい。でも<ruby>日本<rt>にほん</rt></ruby>では<ruby>同<rt>おな</rt></ruby>じベトナム<ruby>人<rt>じん</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Vâng. Nhưng ở Nhật cùng là người Việt cả. Cố gắng nhé.)* |
| Linh | はい!<br>*(Vâng!)* |

---

## Tình huống 11 — Đến cổng nông trại Yamamoto · 19:00, gặp 親方

*Bus dừng trước cổng gỗ nông trại. Trời đã chập choạng tối.*

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>着<rt>つ</rt></ruby>きました。リンさん、アンさん、<ruby>降<rt>お</rt></ruby>りましょう。<br>*(Đến rồi. Em Linh, An, xuống nào.)* |
| Yamamoto | (đợi sẵn ở cổng) おう、<ruby>鈴木<rt>すずき</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさま!<br>*(Ờ, anh Suzuki, vất vả nhé!)* |
| Suzuki | <ruby>親方<rt>おやかた</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になります。リンさんとアンさんです。<br>*(Oyakata, nhờ ông giúp đỡ. Đây là Linh và An.)* |
| Linh | (cúi đầu thật sâu) <ruby>初<rt>はじ</rt></ruby>めまして。グエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>三<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em chào ông ạ. Em tên là Nguyễn Thị Linh. Ba năm tới mong ông chỉ bảo ạ.)* |
| An | アンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là An. Mong ông chỉ bảo ạ.)* |
| Yamamoto | おう、<ruby>山本<rt>やまもと</rt></ruby>だ。<ruby>遠<rt>とお</rt></ruby>くから、お<ruby>疲<rt>つか</rt></ruby>れさん。<ruby>飯<rt>めし</rt></ruby>はまだだろう?<br>*(Ờ, tôi là Yamamoto. Đường xa vất vả. Chưa ăn cơm đúng không?)* |
| Linh | はい、まだです。<br>*(Vâng, chưa ạ.)* |
| Yamamoto | <ruby>嫁<rt>よめ</rt></ruby>さんが<ruby>用意<rt>ようい</rt></ruby>してくれた。<ruby>寮<rt>りょう</rt></ruby>で<ruby>食<rt>た</rt></ruby>べよう。<br>*(Vợ tôi chuẩn bị rồi. Mình về ký túc ăn nào.)* |
| Linh | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 12 — Phòng ký túc · 21:30, gọi điện về cho mẹ

> Cảnh tiếng Việt — gọi điện về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) A lô, mẹ ơi, con đến nơi rồi. |
| Mẹ Linh | (tiếng Việt) Linh! Mẹ chờ cả ngày. Có mệt lắm không con? |
| Linh | (tiếng Việt) Mệt mẹ ạ. Bay 6 tiếng, rồi đi bus 2 tiếng nữa. Nhưng tới rồi, an toàn rồi mẹ. |
| Mẹ Linh | (tiếng Việt) Người ta đón có tử tế không? |
| Linh | (tiếng Việt) Có ạ. Anh Suzuki của đoàn thể giám lý ra sân bay đón con với 3 bạn Việt Nam khác. Tới nông trại thì ông chủ Yamamoto đợi sẵn ở cổng. Ông 60 tuổi, hiền mà nghiêm nghị. |
| Mẹ Linh | (tiếng Việt) Mẹ yên tâm rồi. Ăn uống ra sao? |
| Linh | (tiếng Việt) Vợ ông chủ nấu cơm cho ăn, có cá nướng với canh đậu. Lạ miệng nhưng được mẹ ạ. |
| Em Trang | (tiếng Việt, ghé màn hình) Chị ơi! Bên đó lạnh không? |
| Linh | (tiếng Việt) Lạnh em à, tháng 4 mà còn lạnh hơn Tết ở Sài Gòn. Mai chị bắt đầu vào nhà kính trồng rau salad. Học nhiều thứ lắm. |
| Em Trang | (tiếng Việt) Chị nhớ giữ ấm. Em với mẹ ngày nào cũng nhớ chị. |
| Linh | (tiếng Việt) Chị cũng nhớ mẹ với em. Mẹ với em đi ngủ đi, bên này con cũng buồn ngủ rồi. 3 năm thôi, chớp mắt là về. |
| Mẹ Linh | (tiếng Việt) Ừ con. Cẩn thận giữ sức khoẻ. |

---

## Tình huống 13 — Phòng ký túc · 22:30, chúc ngủ ngon bằng tiếng Nhật

*Dewi (bạn cùng phòng người Indonesia) gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、もう<ruby>寝<rt>ね</rt></ruby>る?<br>*(Em Linh ơi, ngủ chưa?)* |
| Linh | あ、デウィさん!まだです。<ruby>初<rt>はじ</rt></ruby>めまして、リンです。<br>*(À, chị Dewi! Chưa ạ. Em chào chị, em là Linh.)* |
| Dewi | はじめまして!<ruby>明日<rt>あした</rt></ruby>ゆっくり<ruby>話<rt>はな</rt></ruby>そう。<ruby>今日<rt>きょう</rt></ruby>は<ruby>疲<rt>つか</rt></ruby>れたでしょ?<br>*(Chào em! Mai mình nói chuyện thong thả. Hôm nay mệt nhỉ?)* |
| Linh | はい、とても<ruby>疲<rt>つか</rt></ruby>れました。<br>*(Vâng, em mệt lắm.)* |
| Dewi | <ruby>朝<rt>あさ</rt></ruby><ruby>六<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>起<rt>お</rt></ruby>きだから、<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>てね。おやすみ。<br>*(Sáng 6 giờ dậy đó, ngủ sớm nhé. Ngủ ngon.)* |
| Linh | はい、おやすみなさい。<br>*(Vâng, chúc chị ngủ ngon.)* |

---

## Đọng lại chương 1

Ngày đầu, Linh học được các mẫu câu nền tảng người sang Nhật làm nông nghiệp dùng ngay: **trả lời 入管** (滞在目的は何ですか → 技能実習です), **gặp staff 監理団体 ở sảnh sân bay** (お疲れさまでした・〜と申します・よろしくお願いいたします), **chào lễ phép trên xe bus** với bác tài, **hỏi lại lễ phép khi chưa hiểu** (〜というのは?), **giới thiệu bản thân với bạn cùng đoàn** (はじめまして・〜から来ました), **mua nước ở 道の駅**, và **chào 親方 ở cổng nông trại**. Đồng thời nhận ra văn hoá Nhật trọng **挨拶** (chào hỏi) và **報連相** (báo cáo - liên lạc - bàn bạc) — đó là nền tảng 3 năm tới.

> Từ vựng & mẫu câu chương này: 来日・入管・滞在目的・技能実習・在留カード・監理団体・農場・農園・親方・先輩・ハウス・栽培・報連相・報告・連絡・相談・挨拶・道の駅・休憩・〜と申します・〜というのは・お疲れさまでした・よろしくお願いいたします

## Bí quyết chương

- **監理団体 staff Suzuki**: cầu nối giữa TTS và nông trại, ghé thăm tháng/lần — luôn xưng họ + さん.
- **Narita vs Centrair**: TTS Ibaraki/Tochigi/Chiba → Narita; TTS Aichi → Centrair. Phân biệt vùng từ ngày 1.
- **親方 (おやかた)** đặc trưng ngành nông nghiệp và xây dựng — không gọi 社長 hay 部長 mà gọi 親方/農場主.
- **VN gia đình**: Mẹ + em Trang (em gái) — lặp xuyên 3 sách Y1-Y3.
- **道の駅**: trạm dịch vụ đường bộ Nhật, bán nông sản địa phương — sau này Linh đi giao hàng cũng quay lại đây.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入管 | にゅうかん | NHẬP QUẢN | Cục xuất nhập cảnh |
| 滞在目的 | たいざいもくてき | TRỆ TẠI MỤC ĐÍCH | Mục đích lưu trú |
| 技能実習 | ぎのうじっしゅう | KỸ NĂNG THỰC TẬP | Thực tập kỹ năng |
| 農場 | のうじょう | NÔNG TRƯỜNG | Nông trại |
| 農業 | のうぎょう | NÔNG NGHIỆP | Nông nghiệp |
| 期間 | きかん | KỲ GIAN | Thời gian, kỳ hạn |
| 在留カード | ざいりゅうカード | TẠI LƯU | Thẻ cư trú |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | Đoàn thể giám lý |
| 長旅 | ながたび | TRƯỜNG LỮ | Chuyến đi dài |
| 体調 | たいちょう | THỂ ĐIỀU | Tình trạng sức khoẻ |
| 荷物 | にもつ | HÀ VẬT | Hành lý |
| 収納 | しゅうのう | THU NẠP | Ngăn chứa |
| 運転手 | うんてんしゅ | VẬN CHUYỂN THỦ | Tài xế |
| 盛ん | さかん | THỊNH | Phát triển, hưng thịnh |
| 納豆 | なっとう | NẠP ĐẬU | Đậu natto |
| 挑戦 | ちょうせん | THÁCH CHIẾN | Thử sức |
| 農園 | のうえん | NÔNG VIÊN | Nông trại, vườn nông |
| ハウス | ハウス | — | Nhà kính trồng rau |
| 栽培 | さいばい | TÀI BỒI | Trồng trọt |
| 中心 | ちゅうしん | TRUNG TÂM | Trung tâm, chủ yếu |
| 建物 | たてもの | KIẾN VẬT | Toà nhà |
| 育てる | そだてる | DỤC | Nuôi, trồng cho lớn |
| 親方 | おやかた | THÂN PHƯƠNG | Ông chủ nông trại |
| 主人 | しゅじん | CHỦ NHÂN | Chủ, ông chủ |
| 厳しい | きびしい | NGHIÊM | Nghiêm khắc |
| 挨拶 | あいさつ | AI TÁT | Chào hỏi |
| 承知 | しょうち | THỪA TRI | Hiểu rõ, biết |
| 先輩 | せんぱい | TIÊN BỐI | Đàn anh, đàn chị |
| 国際的 | こくさいてき | QUỐC TẾ ĐÍCH | Mang tính quốc tế |
| 職場 | しょくば | CHỨC TRƯỜNG | Nơi làm việc |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | Báo cáo - liên lạc - bàn bạc |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | Bàn bạc, tham vấn |
| 訪問 | ほうもん | PHỎNG VẤN | Thăm hỏi, ghé thăm |
| 田んぼ | たんぼ | ĐIỀN | Ruộng lúa |
| 田植え | たうえ | ĐIỀN THỰC | Cấy lúa |
| 季節 | きせつ | QUÝ TIẾT | Mùa, mùa vụ |
| 故郷 | こきょう | CỐ HƯƠNG | Quê hương |
| 経験 | けいけん | KINH NGHIỆM | Kinh nghiệm |
| 道の駅 | みちのえき | ĐẠO DỊCH | Trạm dịch vụ đường bộ |
| 休憩 | きゅうけい | HƯU KHẾ | Nghỉ giải lao |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 寮 | りょう | LIÊU | Ký túc xá |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000002, 800000040, NULL, 'markdown_book', 'T2. Ngày đầu ở ký túc nông trại (寮生活ルール)', '# Sách thực tập sinh nông nghiệp · T2. Ngày đầu ở ký túc nông trại (寮生活ルール)

> **Mục tiêu nhân vật:** Linh học các mẫu hội thoại tiếng Nhật sinh hoạt ký túc: làm quen bạn cùng phòng Indonesia (Dewi) và Philippines (Riko), hỏi quy tắc nhà tắm お風呂, máy giặt 洗濯機, bếp 台所, phân rác 分別, hỏi giờ giấc và xin phép, từ chối / xin phép lịch sự.

---

## Bối cảnh

Sáng ngày 9 tháng 4 năm 2025. Đêm đầu ở ký túc nông trại Yamamoto đã qua. Hôm nay là ngày làm quen ký túc, học các quy tắc sinh hoạt trước khi ngày mai xuống ruộng. Ký túc là một căn nhà 2 tầng cũ cách nông trại 5 phút đi bộ. Tầng 1: bếp chung, phòng tắm, nhà giặt, phòng sinh hoạt. Tầng 2: 4 phòng đôi. Linh ở chung phòng với Dewi (Indonesia, sang trước 1 năm). Riko (Philippines) ở phòng kế. An ở phòng khác cùng anh Tuấn-sempai Việt Nam khoá trước.

---

## Tình huống 1 — Phòng đôi tầng 2 · 6:00, Dewi đánh thức Linh

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、<ruby>朝<rt>あさ</rt></ruby>ですよ。<ruby>起<rt>お</rt></ruby>きてください。<br>*(Em Linh ơi, sáng rồi. Dậy nào.)* |
| Linh | (dụi mắt) はい、おはようございます...<ruby>今<rt>いま</rt></ruby><ruby>何時<rt>なんじ</rt></ruby>ですか?<br>*(Vâng, chào chị buổi sáng... Mấy giờ rồi ạ?)* |
| Dewi | <ruby>六時<rt>ろくじ</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby>ごはんは<ruby>六時半<rt>ろくじはん</rt></ruby>です。<br>*(6 giờ rồi. Bữa sáng 6 rưỡi.)* |
| Linh | わかりました。<ruby>顔<rt>かお</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>ってきます。<br>*(Em hiểu. Em đi rửa mặt ạ.)* |
| Dewi | <ruby>洗面所<rt>せんめんじょ</rt></ruby>は<ruby>下<rt>した</rt></ruby>の<ruby>階<rt>かい</rt></ruby>です。タオルは<ruby>持<rt>も</rt></ruby>っていますか?<br>*(Chỗ rửa mặt ở tầng dưới. Có khăn chưa?)* |
| Linh | はい、あります。<br>*(Có rồi ạ.)* |
| Dewi | スリッパを<ruby>履<rt>は</rt></ruby>いてね。<ruby>床<rt>ゆか</rt></ruby>が<ruby>冷<rt>つめ</rt></ruby>たいから。<br>*(Đi dép vào nhé. Sàn lạnh đấy.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 2 — Bếp tầng 1 · 6:30, ăn sáng cùng bạn cùng nhà

| Vai | Lời thoại |
|---|---|
| Riko | おはよう!リンさんですね?わたしはリコです。フィリピンから<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào! Em Linh phải không? Tôi là Riko. Tôi đến từ Philippines.)* |
| Linh | はじめまして、リンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em chào chị, em là Linh. Mong chị giúp đỡ.)* |
| Riko | <ruby>朝<rt>あさ</rt></ruby>ごはん、ご<ruby>飯<rt>はん</rt></ruby>とみそ<ruby>汁<rt>しる</rt></ruby>でいい?<br>*(Bữa sáng, cơm với súp miso được không?)* |
| Linh | はい、いただきます。<br>*(Vâng, mời mọi người ạ.)* |
| Dewi | みそ<ruby>汁<rt>しる</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて?<br>*(Súp miso lần đầu hả?)* |
| Linh | はい、<ruby>初<rt>はじ</rt></ruby>めてです。(uống một ngụm) ...おいしい!<br>*(Vâng, lần đầu ạ. ...Ngon quá!)* |
| Riko | よかった!<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>飲<rt>の</rt></ruby>みますよ。<ruby>体<rt>からだ</rt></ruby>が<ruby>温<rt>あたた</rt></ruby>かくなります。<br>*(May quá! Mỗi sáng đều uống đó. Người sẽ ấm lên.)* |
| Linh | あの、お<ruby>箸<rt>はし</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>は?<br>*(Dạ, cách dùng đũa thế nào ạ?)* |
| Dewi | ベトナムと<ruby>同<rt>おな</rt></ruby>じですよ。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Giống Việt Nam đấy. Không sao.)* |
| Linh | あ、よかった!<br>*(A, may quá!)* |

---

## Tình huống 3 — Bếp tầng 1 · 7:00, Dewi giải thích quy tắc bếp

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、<ruby>台所<rt>だいどころ</rt></ruby>のルールを<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Em Linh, chị giải thích quy tắc bếp nhé.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời chị ạ.)* |
| Dewi | <ruby>食<rt>た</rt></ruby>べたあとは<ruby>自分<rt>じぶん</rt></ruby>で<ruby>洗<rt>あら</rt></ruby>います。お<ruby>皿<rt>さら</rt></ruby>はここに<ruby>戻<rt>もど</rt></ruby>します。<br>*(Ăn xong tự rửa. Bát đĩa cất vào đây.)* |
| Linh | はい、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>洗<rt>あら</rt></ruby>って、ここに<ruby>戻<rt>もど</rt></ruby>します。<br>*(Vâng, tự rửa rồi cất vào đây.)* |
| Dewi | <ruby>冷蔵庫<rt>れいぞうこ</rt></ruby>は<ruby>共有<rt>きょうゆう</rt></ruby>です。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてくださいね。<br>*(Tủ lạnh dùng chung. Đồ ăn của mình thì viết tên lên nhé.)* |
| Linh | <ruby>名前<rt>なまえ</rt></ruby>を<ruby>書<rt>か</rt></ruby>く、ですか?<br>*(Viết tên lên ạ?)* |
| Dewi | はい、テープに<ruby>書<rt>か</rt></ruby>いて<ruby>貼<rt>は</rt></ruby>ります。<ruby>間違<rt>まちが</rt></ruby>えて<ruby>食<rt>た</rt></ruby>べないように。<br>*(Ừ, viết lên băng dính rồi dán. Để không nhầm.)* |
| Linh | わかりました。<br>*(Em hiểu rồi.)* |
| Dewi | お<ruby>米<rt>こめ</rt></ruby>は<ruby>農場<rt>のうじょう</rt></ruby>から<ruby>無料<rt>むりょう</rt></ruby>です。たくさん<ruby>食<rt>た</rt></ruby>べていいですよ。<br>*(Gạo nông trại cho miễn phí. Ăn nhiều thoải mái nhé.)* |
| Linh | え、<ruby>無料<rt>むりょう</rt></ruby>ですか!ありがとうございます。<br>*(Ơ, miễn phí ạ! Em cảm ơn.)* |

---

## Tình huống 4 — Bãi rác sau nhà · 7:30, học phân rác 分別

*Sân sau có 4 thùng rác có nhãn.*

| Vai | Lời thoại |
|---|---|
| Dewi | これが<ruby>大事<rt>だいじ</rt></ruby>です。ごみの<ruby>分別<rt>ぶんべつ</rt></ruby>。<br>*(Cái này quan trọng. Phân loại rác.)* |
| Linh | <ruby>分別<rt>ぶんべつ</rt></ruby>、というのは?<br>*(Bunbetsu nghĩa là gì ạ?)* |
| Dewi | ごみを<ruby>種類<rt>しゅるい</rt></ruby>ごとに<ruby>分<rt>わ</rt></ruby>けることです。<ruby>四<rt>よっ</rt></ruby>つあります。<ruby>燃<rt>も</rt></ruby>えるごみ、<ruby>燃<rt>も</rt></ruby>えないごみ、ペットボトル、<ruby>缶<rt>かん</rt></ruby>。<br>*(Là chia rác theo loại. Có 4 loại. Rác đốt được, rác không đốt được, chai nhựa, lon.)* |
| Linh | <ruby>燃<rt>も</rt></ruby>えるごみ、というのは?<br>*(Rác đốt được nghĩa là gì ạ?)* |
| Dewi | <ruby>紙<rt>かみ</rt></ruby>、<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>り、<ruby>木<rt>き</rt></ruby>などです。<br>*(Giấy, đồ ăn thừa, gỗ vân vân.)* |
| Linh | じゃあプラスチックは?<br>*(Vậy nhựa thì sao ạ?)* |
| Dewi | プラスチックは<ruby>燃<rt>も</rt></ruby>えないごみです。<ruby>水曜日<rt>すいようび</rt></ruby>に<ruby>出<rt>だ</rt></ruby>します。<br>*(Nhựa là rác không đốt. Đổ vào thứ tư.)* |
| Linh | <ruby>曜日<rt>ようび</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんですね。<br>*(Khác ngày trong tuần ạ.)* |
| Dewi | はい。<ruby>月<rt>げつ</rt></ruby>と<ruby>木<rt>もく</rt></ruby>は<ruby>燃<rt>も</rt></ruby>えるごみ、<ruby>水<rt>すい</rt></ruby>は<ruby>燃<rt>も</rt></ruby>えないごみ、<ruby>金<rt>きん</rt></ruby>はペットボトルと<ruby>缶<rt>かん</rt></ruby>。<ruby>間違<rt>まちが</rt></ruby>えると<ruby>近所<rt>きんじょ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>怒<rt>おこ</rt></ruby>ります。<br>*(Vâng. Thứ 2 thứ 5 đốt được, thứ 4 không đốt, thứ 6 chai và lon. Sai là hàng xóm giận đó.)* |
| Linh | こわい...<ruby>表<rt>ひょう</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Sợ quá... Chị viết bảng cho em đi.)* |
| Dewi | (cười) はい、<ruby>後<rt>あと</rt></ruby>でね。<br>*(Ừ, lát nữa nhé.)* |

---

## Tình huống 5 — Phòng tắm tầng 1 · 8:00, học quy tắc お風呂

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、お<ruby>風呂<rt>ふろ</rt></ruby>のルールも<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Em Linh, quy tắc nhà tắm cũng quan trọng.)* |
| Linh | はい。<br>*(Vâng.)* |
| Dewi | <ruby>日本<rt>にほん</rt></ruby>のお<ruby>風呂<rt>ふろ</rt></ruby>は、<ruby>湯船<rt>ゆぶね</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>体<rt>からだ</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>います。<br>*(Tắm Nhật, trước khi vào bồn phải rửa người trước.)* |
| Linh | <ruby>湯船<rt>ゆぶね</rt></ruby>、というのは?<br>*(Bồn tắm Yubune là gì ạ?)* |
| Dewi | お<ruby>湯<rt>ゆ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っている<ruby>大<rt>おお</rt></ruby>きい<ruby>箱<rt>はこ</rt></ruby>です。みんなで<ruby>使<rt>つか</rt></ruby>うから、<ruby>体<rt>からだ</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>ってから<ruby>入<rt>はい</rt></ruby>ります。<br>*(Là cái hộp lớn có nước nóng. Mọi người dùng chung, nên phải rửa người sạch rồi mới vào.)* |
| Linh | あ、わかりました。<ruby>順番<rt>じゅんばん</rt></ruby>はどうですか?<br>*(À, em hiểu. Thứ tự thế nào ạ?)* |
| Dewi | <ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>から<ruby>先<rt>さき</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。リンさんは<ruby>九時<rt>くじ</rt></ruby>から<ruby>十時<rt>じゅうじ</rt></ruby>でいい?<br>*(Phụ nữ vào trước. Em Linh từ 9 giờ đến 10 giờ được không?)* |
| Linh | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, được ạ.)* |
| Dewi | お<ruby>湯<rt>ゆ</rt></ruby>は<ruby>抜<rt>ぬ</rt></ruby>かないでね。<ruby>次<rt>つぎ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>も<ruby>使<rt>つか</rt></ruby>います。<br>*(Đừng xả nước nhé. Người sau còn dùng.)* |
| Linh | え?<ruby>同<rt>おな</rt></ruby>じお<ruby>湯<rt>ゆ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですか?<br>*(Ơ? Dùng chung nước nóng ạ?)* |
| Dewi | はい、<ruby>体<rt>からだ</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>ってから<ruby>入<rt>はい</rt></ruby>るから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>日本<rt>にほん</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>ですよ。<br>*(Ừ, rửa người sạch rồi mới vào nên không sao. Là văn hoá Nhật đó.)* |
| Linh | (gật đầu chậm) わかりました。<br>*(Em hiểu rồi.)* |

---

## Tình huống 6 — Nhà giặt tầng 1 · 8:30, học máy giặt

| Vai | Lời thoại |
|---|---|
| Riko | リンさん、<ruby>洗濯機<rt>せんたくき</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>、<ruby>教<rt>おし</rt></ruby>えるね。<br>*(Em Linh, chị chỉ cách dùng máy giặt.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời chị ạ.)* |
| Riko | <ruby>洗剤<rt>せんざい</rt></ruby>はここ。スプーン<ruby>一杯<rt>いっぱい</rt></ruby>。<br>*(Bột giặt ở đây. Một thìa.)* |
| Linh | <ruby>洗剤<rt>せんざい</rt></ruby>、というのは?<br>*(Senzai là gì ạ?)* |
| Riko | <ruby>服<rt>ふく</rt></ruby>をきれいにする<ruby>粉<rt>こな</rt></ruby>です。これですよ。<br>*(Là bột làm sạch quần áo. Cái này này.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(À, em hiểu rồi.)* |
| Riko | <ruby>服<rt>ふく</rt></ruby>を<ruby>入<rt>い</rt></ruby>れて、<ruby>洗剤<rt>せんざい</rt></ruby>を<ruby>入<rt>い</rt></ruby>れて、このボタンを<ruby>押<rt>お</rt></ruby>します。「<ruby>標準<rt>ひょうじゅん</rt></ruby>」でいい。<br>*(Cho quần áo vào, cho bột giặt vào, ấn nút này. Chọn "tiêu chuẩn" là được.)* |
| Linh | <ruby>時間<rt>じかん</rt></ruby>はどのぐらいですか?<br>*(Mất bao lâu ạ?)* |
| Riko | <ruby>四十<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらい。<ruby>終<rt>お</rt></ruby>わったら<ruby>音<rt>おと</rt></ruby>が<ruby>鳴<rt>な</rt></ruby>るよ。<br>*(Khoảng 40 phút. Xong sẽ kêu.)* |
| Linh | <ruby>干<rt>ほ</rt></ruby>す<ruby>場所<rt>ばしょ</rt></ruby>はどこですか?<br>*(Phơi ở đâu ạ?)* |
| Riko | <ruby>外<rt>そと</rt></ruby>のベランダか、<ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>は<ruby>部屋<rt>へや</rt></ruby>の<ruby>中<rt>なか</rt></ruby>。<br>*(Ngoài ban công, ngày mưa thì trong phòng.)* |
| Linh | はい、<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Vâng, em hiểu. Em cảm ơn chị.)* |

---

## Tình huống 7 — Phòng đôi · 9:30, Dewi nói về 親方 và Saori-sempai

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>休<rt>やす</rt></ruby>もう。<ruby>明日<rt>あした</rt></ruby>から<ruby>大変<rt>たいへん</rt></ruby>だよ。<br>*(Em Linh, nghỉ chút đi. Từ mai cực đấy.)* |
| Linh | はい。デウィさんは<ruby>何<rt>なに</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>ですか?<br>*(Vâng. Chị Dewi năm thứ mấy rồi ạ?)* |
| Dewi | <ruby>二<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。あと<ruby>一年<rt>いちねん</rt></ruby><ruby>残<rt>のこ</rt></ruby>っています。<br>*(Năm thứ 2. Còn 1 năm nữa.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>はどんな<ruby>人<rt>ひと</rt></ruby>ですか?<br>*(Oyakata là người thế nào ạ?)* |
| Dewi | <ruby>厳<rt>きび</rt></ruby>しいけど、<ruby>本当<rt>ほんとう</rt></ruby>は<ruby>優<rt>やさ</rt></ruby>しい。<ruby>仕事<rt>しごと</rt></ruby>はちゃんとやらないと<ruby>怒<rt>おこ</rt></ruby>る。でも<ruby>悪<rt>わる</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>じゃない。<br>*(Nghiêm khắc nhưng thật ra hiền. Không làm cẩn thận là sẽ giận. Nhưng không phải người xấu.)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さんは?<br>*(Còn chị Saori thì sao?)* |
| Dewi | <ruby>佐織<rt>さおり</rt></ruby>さんは<ruby>親方<rt>おやかた</rt></ruby>の<ruby>娘<rt>むすめ</rt></ruby>さんです。<ruby>三十<rt>さんじゅう</rt></ruby><ruby>歳<rt>さい</rt></ruby>、<ruby>農業<rt>のうぎょう</rt></ruby>を<ruby>継<rt>つ</rt></ruby>いでいます。とても<ruby>優<rt>やさ</rt></ruby>しいです。<br>*(Chị Saori là con gái oyakata. 30 tuổi, đang kế nghiệp nông trại. Rất hiền.)* |
| Linh | あ、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>農場<rt>のうじょう</rt></ruby>なんですね。<br>*(À, là nông trại gia đình ạ.)* |
| Dewi | はい。だから「<ruby>親方<rt>おやかた</rt></ruby>」「<ruby>嫁<rt>よめ</rt></ruby>さん(<ruby>奥<rt>おく</rt></ruby>さん)」と<ruby>呼<rt>よ</rt></ruby>びます。<ruby>会社<rt>かいしゃ</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>います。<br>*(Vâng. Nên gọi là "oyakata", "vợ ông chủ". Khác công ty.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi.)* |

---

## Tình huống 8 — Hành lang · 10:30, gặp Saori-sempai

| Vai | Lời thoại |
|---|---|
| Saori | (gõ cửa) ごめんください、リンさん、いる?<br>*(Xin lỗi, em Linh có đó không?)* |
| Linh | (mở cửa, cúi đầu) はい、<ruby>初<rt>はじ</rt></ruby>めまして。<ruby>佐織<rt>さおり</rt></ruby>さんでいらっしゃいますか?<br>*(Vâng, em chào chị. Chị là Saori ạ?)* |
| Saori | はい、<ruby>山本<rt>やまもと</rt></ruby><ruby>佐織<rt>さおり</rt></ruby>です。よろしくね。<br>*(Vâng, Yamamoto Saori. Mong em giúp đỡ nhé.)* |
| Linh | グエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là Nguyễn Thị Linh. Mong chị giúp đỡ ạ.)* |
| Saori | <ruby>明日<rt>あした</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>にハウスで<ruby>仕事<rt>しごと</rt></ruby>します。<ruby>朝<rt>あさ</rt></ruby><ruby>七時<rt>しちじ</rt></ruby>に<ruby>農場<rt>のうじょう</rt></ruby>に<ruby>来<rt>き</rt></ruby>てください。<br>*(Từ mai cùng làm việc ở nhà kính. Sáng 7 giờ đến nông trại nhé.)* |
| Linh | はい、<ruby>七時<rt>しちじ</rt></ruby>ですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, 7 giờ ạ. Em rõ rồi.)* |
| Saori | <ruby>長靴<rt>ながぐつ</rt></ruby>と<ruby>軍手<rt>ぐんて</rt></ruby>と<ruby>帽子<rt>ぼうし</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきてね。<br>*(Mang ủng, găng tay vải, mũ nhé.)* |
| Linh | すみません、「<ruby>軍手<rt>ぐんて</rt></ruby>」というのは?<br>*(Xin lỗi, "gunte" nghĩa là gì ạ?)* |
| Saori | (lấy đôi găng vải trắng trong túi cho xem) これです。<ruby>白<rt>しろ</rt></ruby>い<ruby>手袋<rt>てぶくろ</rt></ruby>。<br>*(Cái này này. Găng tay vải màu trắng.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました!ありがとうございます。<br>*(À, em hiểu rồi! Em cảm ơn chị.)* |

---

## Tình huống 9 — Cửa hàng tiện lợi gần ký túc · 14:00, An rủ đi mua đồ

*Linh và An đi bộ ra Lawson cách 10 phút.*

| Vai | Lời thoại |
|---|---|
| An | リンさん、<ruby>何<rt>なに</rt></ruby>を<ruby>買<rt>か</rt></ruby>いますか?<br>*(Em Linh, mua gì?)* |
| Linh | シャンプーと<ruby>歯磨<rt>はみが</rt></ruby>き<ruby>粉<rt>こ</rt></ruby>です。<br>*(Dầu gội và kem đánh răng ạ.)* |
| An | (đến quầy) すみません、シャンプーはどこですか?<br>*(Xin lỗi, dầu gội ở đâu ạ?)* |
| Nhân viên | あちらの<ruby>三<rt>さん</rt></ruby><ruby>列目<rt>れつめ</rt></ruby>です。<br>*(Hàng thứ 3 đằng kia ạ.)* |
| Linh | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| An | (tại quầy thanh toán) これとこれ、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cái này và cái này.)* |
| Nhân viên | <ruby>八百<rt>はっぴゃく</rt></ruby><ruby>五十<rt>ごじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>袋<rt>ふくろ</rt></ruby>はいりますか?<br>*(850 yên. Có cần túi không ạ?)* |
| Linh | あ、<ruby>袋<rt>ふくろ</rt></ruby>はいくらですか?<br>*(Túi bao nhiêu ạ?)* |
| Nhân viên | <ruby>三円<rt>さんえん</rt></ruby>です。<br>*(3 yên ạ.)* |
| Linh | じゃあ、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy cho em xin.)* |
| An | (ra ngoài) リンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だね、コンビニ。<br>*(Em Linh, được rồi, cửa hàng tiện lợi.)* |
| Linh | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>自信<rt>じしん</rt></ruby>がつきました。<br>*(Vâng, em tự tin hơn chút ạ.)* |

---

## Tình huống 10 — Phòng đôi · 16:00, Dewi nói chuyện về cuộc sống Indonesia

*Hai cô gái nằm trên giường nghỉ trưa.*

| Vai | Lời thoại |
|---|---|
| Linh | デウィさん、インドネシアの<ruby>家族<rt>かぞく</rt></ruby>は?<br>*(Chị Dewi, gia đình ở Indonesia thế nào?)* |
| Dewi | <ruby>父<rt>ちち</rt></ruby>と<ruby>母<rt>はは</rt></ruby>と<ruby>弟<rt>おとうと</rt></ruby>が<ruby>二人<rt>ふたり</rt></ruby>。ジャワ<ruby>島<rt>とう</rt></ruby>です。<br>*(Bố, mẹ và hai em trai. Ở đảo Java.)* |
| Linh | <ruby>毎日<rt>まいにち</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>しますか?<br>*(Hàng ngày có gọi điện không?)* |
| Dewi | <ruby>週<rt>しゅう</rt></ruby>に<ruby>一回<rt>いっかい</rt></ruby>。<ruby>日曜日<rt>にちようび</rt></ruby>です。<br>*(Tuần một lần. Chủ nhật.)* |
| Linh | <ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Đồ ăn ổn không ạ?)* |
| Dewi | <ruby>私<rt>わたし</rt></ruby>はムスリムだから<ruby>豚肉<rt>ぶたにく</rt></ruby>を<ruby>食<rt>た</rt></ruby>べません。でも<ruby>親方<rt>おやかた</rt></ruby>が<ruby>理解<rt>りかい</rt></ruby>してくれます。<br>*(Tôi theo đạo Hồi nên không ăn thịt heo. Nhưng oyakata hiểu cho.)* |
| Linh | あ、そうなんですね。<br>*(À, vậy ạ.)* |
| Dewi | リンさんは<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Em Linh đồ ăn ổn không?)* |
| Linh | はい、<ruby>何<rt>なん</rt></ruby>でも<ruby>食<rt>た</rt></ruby>べられます。でも<ruby>辛<rt>から</rt></ruby>いものが<ruby>好<rt>す</rt></ruby>きです。<br>*(Vâng, ăn được hết. Nhưng thích món cay ạ.)* |
| Dewi | (cười) インドネシアの<ruby>料理<rt>りょうり</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってあげる。<ruby>辛<rt>から</rt></ruby>いよ!<br>*(Để chị nấu món Indonesia cho. Cay đó!)* |
| Linh | わあ、<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(Ôi, em mong lắm ạ.)* |

---

## Tình huống 11 — Phòng sinh hoạt tầng 1 · 18:30, ăn tối cùng cả nhóm

| Vai | Lời thoại |
|---|---|
| Riko | みんな、ご<ruby>飯<rt>はん</rt></ruby>できたよ!<br>*(Cả nhà ơi, cơm xong rồi!)* |
| Tuấn | (Tuấn-sempai, người Việt Nam khoá trước) おお、いただきます!<br>*(Ồ, mời ăn!)* |
| Linh | トゥアンさん、お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Anh Tuấn, nhờ anh giúp đỡ ạ.)* |
| Tuấn | リンちゃん、ようこそ!ベトナム<ruby>人<rt>じん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えてうれしいよ。<br>*(Linh, chào mừng! Có thêm người Việt anh vui lắm.)* |
| Riko | <ruby>今夜<rt>こんや</rt></ruby>はカレーです。みんな<ruby>食<rt>た</rt></ruby>べられる?<br>*(Tối nay món cà ri. Ai ăn được không?)* |
| Linh | はい、<ruby>大好<rt>だいす</rt></ruby>きです。<br>*(Vâng, em rất thích.)* |
| An | おいしそう!ありがとうございます。<br>*(Trông ngon quá! Cảm ơn chị.)* |
| Tuấn | リンちゃん、<ruby>明日<rt>あした</rt></ruby>から<ruby>仕事<rt>しごと</rt></ruby>だね。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Linh, từ mai bắt đầu việc. Ổn không?)* |
| Linh | <ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Em hơi căng thẳng ạ.)* |
| Tuấn | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。みんな<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだよ。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Không sao. Ai đầu cũng vậy. Có gì không hiểu thì hỏi.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh.)* |

---

## Tình huống 12 — Phòng đôi · 21:00, gọi điện cho em gái Trang

> Cảnh tiếng Việt — gọi về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Chị Linh ơi! |
| Linh | (tiếng Việt) Trang à, chị nè. Mẹ ngủ chưa em? |
| Trang | (tiếng Việt) Mẹ đang xem cải lương. Chị ổn không? Bên đó lạ lắm hả? |
| Linh | (tiếng Việt) Lạ lắm em ơi. Hôm nay học một đống quy tắc: phân rác 4 loại, ngày nào đổ rác nào; nhà tắm thì phải tắm rửa bên ngoài rồi mới vào bồn ngâm, mà cái bồn cả nhà dùng chung nước nóng đó. |
| Trang | (tiếng Việt) Chung nước? Ghê vậy. |
| Linh | (tiếng Việt) Tại rửa sạch người rồi mới vào, nước nóng giữ cho người sau ngâm tiếp. Văn hoá Nhật vậy. Chị cũng còn lạ. |
| Trang | (tiếng Việt) Còn ăn uống? |
| Linh | (tiếng Việt) Sáng cơm với súp miso, ngon lắm. Tối nay cô chị Philippines tên Riko nấu cà ri Nhật. Bạn cùng phòng tên Dewi người Indonesia, theo đạo Hồi không ăn thịt heo, nhưng tốt bụng dạy chị đủ thứ. |
| Trang | (tiếng Việt) Phong phú ghê. Mai bắt đầu xuống ruộng à? |
| Linh | (tiếng Việt) Ừ, mai 7 giờ ra nông trại, chị Saori dạy. Phải mang ủng dài, găng tay vải gọi là 軍手, với cái mũ. Hồi hộp lắm. |
| Trang | (tiếng Việt) Chị nhớ làm hết sức. Em với mẹ tin chị. |
| Linh | (tiếng Việt) Ừ. Mẹ với em ngủ ngon nha. Chị cũng đi ngủ đây. |

---

## Tình huống 13 — Phòng đôi · 22:00, chuẩn bị đi ngủ với Dewi

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、<ruby>準備<rt>じゅんび</rt></ruby>はOK?<ruby>長靴<rt>ながぐつ</rt></ruby>と<ruby>軍手<rt>ぐんて</rt></ruby>と<ruby>帽子<rt>ぼうし</rt></ruby>。<br>*(Em Linh, chuẩn bị xong chưa? Ủng, găng vải, mũ.)* |
| Linh | はい、<ruby>全部<rt>ぜんぶ</rt></ruby>あります。<br>*(Vâng, đủ cả ạ.)* |
| Dewi | <ruby>朝<rt>あさ</rt></ruby>ごはんは<ruby>六時半<rt>ろくじはん</rt></ruby>。<ruby>七時<rt>しちじ</rt></ruby>に<ruby>農場<rt>のうじょう</rt></ruby>に<ruby>着<rt>つ</rt></ruby>くように。<br>*(Sáng 6 rưỡi ăn. 7 giờ phải đến nông trại.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。デウィさん、<ruby>今日<rt>きょう</rt></ruby>はたくさん<ruby>教<rt>おし</rt></ruby>えてくれてありがとうございました。<br>*(Vâng, em rõ. Chị Dewi, hôm nay chị dạy em nhiều quá, cảm ơn chị.)* |
| Dewi | いえいえ、<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Không có gì, có khó khăn thì hỏi bất cứ lúc nào.)* |
| Linh | はい。おやすみなさい。<br>*(Vâng. Chúc chị ngủ ngon.)* |
| Dewi | おやすみ、リンさん。<br>*(Ngủ ngon, em Linh.)* |

---

## Đọng lại chương 2

Ngày thứ hai, Linh học bộ quy tắc sinh hoạt ký túc nông trại — bản đồ văn hoá Nhật thu nhỏ: **bếp 台所** (tự rửa bát, viết tên lên đồ ăn trong tủ lạnh), **phân rác 分別** (4 loại theo ngày), **お風呂** (rửa người trước khi vào bồn, không xả nước), **máy giặt 洗濯機** (洗剤 + chế độ 標準), **コンビニ** (mua đồ + mua túi 3 yên). Đồng thời nhận diện 3 nhân vật quan trọng: **親方 Yamamoto** (nghiêm khắc nhưng tốt bụng), **嫁さん** (vợ ông chủ), **佐織-sempai** (con gái oyakata, kế nghiệp). Bạn cùng phòng **Dewi** (Indonesia, Hồi giáo, năm 2) trở thành senpai gần gũi nhất. Mẫu câu hỏi lại **〜というのは?** dùng liên tục để học từ mới (軍手, 洗剤, 湯船, 分別).

> Từ vựng & mẫu câu chương này: 寮・洗面所・スリッパ・台所・冷蔵庫・共有・無料・分別・燃えるごみ・燃えないごみ・お風呂・湯船・順番・洗濯機・洗剤・干す・長靴・軍手・帽子・コンビニ・袋・〜というのは?・〜てもいいですか・お世話になります・おやすみなさい

## Bí quyết chương

- **Phân rác 分別**: phải có bảng theo ngày trong tuần — Linh ghi vào sổ tay luôn từ ngày đầu.
- **お風呂 quy tắc**: rửa người trước → vào bồn → không xả nước. Khác văn hoá VN, dễ sai nếu không được dạy.
- **嫁さん vs 奥さん**: 嫁さん là cách gọi vợ trong gia đình nông dân, không gọi 奥さん như công sở.
- **Đạo Hồi của Dewi**: ý thức luôn không nấu thịt heo, hỏi trước khi mời bánh.
- **軍手**: găng tay vải Nhật phổ thông, mua được ở 100 yên shop.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 起きる | おきる | KHỞI | Thức dậy |
| 洗面所 | せんめんじょ | TẨY DIỆN SỞ | Chỗ rửa mặt |
| 階 | かい | GIAI | Tầng |
| スリッパ | スリッパ | — | Dép trong nhà |
| 床 | ゆか | SÀNG | Sàn nhà |
| 味噌汁 | みそしる | VỊ TƯƠNG TRẤP | Súp miso |
| 箸 | はし | TRỬ | Đũa |
| 台所 | だいどころ | ĐÀI SỞ | Bếp |
| 自分 | じぶん | TỰ PHÂN | Bản thân, tự mình |
| 皿 | さら | MÃNH | Đĩa |
| 戻す | もどす | PHỤC | Trả về chỗ cũ |
| 冷蔵庫 | れいぞうこ | LÃNH TẠNG KHỐ | Tủ lạnh |
| 共有 | きょうゆう | CỘNG HỮU | Dùng chung |
| 無料 | むりょう | VÔ LIỆU | Miễn phí |
| 分別 | ぶんべつ | PHÂN BIỆT | Phân loại (rác) |
| 種類 | しゅるい | CHỦNG LOẠI | Loại, chủng loại |
| 燃える | もえる | NHIÊN | Cháy được |
| 缶 | かん | QUAN | Lon, hộp kim loại |
| 曜日 | ようび | DIỆU NHẬT | Ngày trong tuần |
| 近所 | きんじょ | CẬN SỞ | Hàng xóm |
| 怒る | おこる | NỘ | Tức giận |
| お風呂 | おふろ | PHONG LỮ | Nhà tắm, bồn tắm |
| 湯船 | ゆぶね | THANG THUYỀN | Bồn tắm chứa nước nóng |
| 順番 | じゅんばん | THUẬN PHIÊN | Thứ tự |
| 抜く | ぬく | BẠT | Rút, xả |
| 文化 | ぶんか | VĂN HOÁ | Văn hoá |
| 洗濯機 | せんたくき | TẨY TRẠC CƠ | Máy giặt |
| 洗剤 | せんざい | TẨY TỄ | Bột giặt, nước rửa |
| 標準 | ひょうじゅん | TIÊU CHUẨN | Tiêu chuẩn |
| 干す | ほす | CAN | Phơi (quần áo) |
| 娘 | むすめ | NƯƠNG | Con gái |
| 継ぐ | つぐ | KẾ | Kế thừa, nối nghiệp |
| 嫁さん | よめさん | GIÁ | Vợ (cách gọi gia đình) |
| 長靴 | ながぐつ | TRƯỜNG HÀI | Ủng dài |
| 軍手 | ぐんて | QUÂN THỦ | Găng tay vải lao động |
| 帽子 | ぼうし | MẠO TỬ | Mũ, nón |
| 列 | れつ | LIỆT | Hàng, dãy |
| 袋 | ふくろ | ĐẠI | Túi |
| 自信 | じしん | TỰ TÍN | Tự tin |
| 豚肉 | ぶたにく | ĐỒN NHỤC | Thịt heo |
| 理解 | りかい | LÝ GIẢI | Hiểu, thấu hiểu |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Căng thẳng, hồi hộp |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000003, 800000040, NULL, 'markdown_book', 'T3. Ngày đầu xuống nhà kính (初日のハウス)', '# Sách thực tập sinh nông nghiệp · T3. Ngày đầu xuống nhà kính (初日のハウス)

> **Mục tiêu nhân vật:** Linh học các mẫu hội thoại tiếng Nhật ngày đầu xuống nhà kính (ハウス): chào 親方 + sempai buổi sáng, trang bị bảo hộ, đi quanh xem cấu trúc nhà kính, hỏi tên cây trồng + dụng cụ, mẫu câu báo cáo 報告 đơn giản, xin phép đi vệ sinh / nghỉ giải lao.

---

## Bối cảnh

Sáng ngày 10 tháng 4 năm 2025. Lần đầu Linh xuống nhà kính (ビニールハウス) của nông trại Yamamoto. Nhà kính rộng 80 mét, cao 3 mét, trồng rau salad (レタス) và dưa leo (きゅうり). Trời sáng còn lạnh khoảng 8 độ. Linh mang theo ủng dài, găng tay vải, mũ và chai nước theo lời dặn của Dewi.

---

## Tình huống 1 — Cổng nông trại · 6:55, chào buổi sáng 親方

| Vai | Lời thoại |
|---|---|
| Linh | (cúi đầu) <ruby>親方<rt>おやかた</rt></ruby>、おはようございます!<br>*(Chào ông buổi sáng ạ!)* |
| Yamamoto | おう、リンちゃん、おはよう。<ruby>早<rt>はや</rt></ruby>いな。<br>*(Ờ, Linh, chào em. Sớm nhỉ.)* |
| Linh | はい。<ruby>遅<rt>おく</rt></ruby>れたくないので。<br>*(Vâng. Em không muốn đến muộn ạ.)* |
| Yamamoto | いいことだ。<ruby>佐織<rt>さおり</rt></ruby>はもうハウスにいるよ。あっちだ。<br>*(Tốt đấy. Saori đã ở nhà kính rồi. Bên kia.)* |
| Linh | はい、ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em cảm ơn ạ. Em xin phép.)* |
| Yamamoto | あ、リンちゃん。<ruby>今日<rt>きょう</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>だけでいい。<ruby>無理<rt>むり</rt></ruby>するなよ。<br>*(À, Linh. Hôm nay chỉ quan sát thôi cũng được. Đừng cố quá.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Trước nhà kính · 7:00, gặp Saori-sempai

| Vai | Lời thoại |
|---|---|
| Saori | リンさん、おはようございます!<br>*(Em Linh, chào em!)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chị Saori, em chào chị. Mong chị chỉ bảo ạ.)* |
| Saori | はい、よろしくね。<ruby>長靴<rt>ながぐつ</rt></ruby>と<ruby>軍手<rt>ぐんて</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Ừ, mong em giúp đỡ. Ủng và găng có rồi chứ?)* |
| Linh | はい、あります。<br>*(Vâng, có ạ.)* |
| Saori | <ruby>今日<rt>きょう</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby>だから、ハウスの<ruby>中<rt>なか</rt></ruby>を<ruby>案内<rt>あんない</rt></ruby>します。それから<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてもらいます。<br>*(Hôm nay là ngày đầu, chị dẫn em đi xem trong nhà kính. Rồi để em nhớ tên các dụng cụ.)* |
| Linh | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cố gắng ạ.)* |
| Saori | あ、<ruby>挨拶<rt>あいさつ</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby>「おはようございます」、<ruby>帰<rt>かえ</rt></ruby>る<ruby>時<rt>とき</rt></ruby>「お<ruby>疲<rt>つか</rt></ruby>れさまでした」、<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>ってね。<br>*(À, chào hỏi quan trọng lắm. Sáng "ohayou gozaimasu", về thì "otsukaresama deshita" — phải nói nhé.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, em sẽ luôn nói ạ.)* |

---

## Tình huống 3 — Cửa nhà kính · 7:10, đi giày + đeo găng

| Vai | Lời thoại |
|---|---|
| Saori | ハウスに<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>靴<rt>くつ</rt></ruby>を<ruby>長靴<rt>ながぐつ</rt></ruby>に<ruby>履<rt>は</rt></ruby>き<ruby>替<rt>か</rt></ruby>えてください。<br>*(Trước khi vào nhà kính, đổi giày sang ủng dài.)* |
| Linh | はい。(thay ủng) これでいいですか?<br>*(Vâng. Như này được không ạ?)* |
| Saori | いいですね。それから、<ruby>消毒<rt>しょうどく</rt></ruby>マットを<ruby>踏<rt>ふ</rt></ruby>みます。<br>*(Tốt. Rồi dẫm lên thảm khử trùng.)* |
| Linh | <ruby>消毒<rt>しょうどく</rt></ruby>マット、というのは?<br>*(Thảm khử trùng là gì ạ?)* |
| Saori | これです。<ruby>薬<rt>くすり</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っているマットを<ruby>踏<rt>ふ</rt></ruby>むと、<ruby>長靴<rt>ながぐつ</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>がきれいになります。<ruby>病気<rt>びょうき</rt></ruby>を<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>まないためです。<br>*(Đây. Dẫm lên thảm có thuốc, đáy ủng sẽ sạch. Để không mang bệnh vào.)* |
| Linh | あ、<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(À, quan trọng nhỉ.)* |
| Saori | はい、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>忘<rt>わす</rt></ruby>れないでね。<br>*(Ừ, tuyệt đối không được quên nhé.)* |
| Linh | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi.)* |

---

## Tình huống 4 — Trong nhà kính · 7:20, tham quan cấu trúc

*Bên trong nhà kính ấm hơn ngoài trời nhiều, có mùi đất và lá xanh.*

| Vai | Lời thoại |
|---|---|
| Linh | (ngạc nhiên) わあ、<ruby>暖<rt>あたた</rt></ruby>かいですね!<br>*(Ôi, ấm quá!)* |
| Saori | はい、<ruby>外<rt>そと</rt></ruby>は<ruby>八度<rt>はちど</rt></ruby>ですが、<ruby>中<rt>なか</rt></ruby>は<ruby>二十度<rt>にじゅうど</rt></ruby>あります。<br>*(Ừ, bên ngoài 8 độ nhưng trong này 20 độ.)* |
| Linh | どうやって<ruby>暖<rt>あたた</rt></ruby>かくしますか?<br>*(Làm thế nào để ấm vậy ạ?)* |
| Saori | <ruby>太陽<rt>たいよう</rt></ruby>の<ruby>光<rt>ひかり</rt></ruby>がビニールを<ruby>通<rt>とお</rt></ruby>して<ruby>入<rt>はい</rt></ruby>ります。それから<ruby>夜<rt>よる</rt></ruby>はヒーターを<ruby>使<rt>つか</rt></ruby>います。<br>*(Ánh sáng mặt trời đi qua nilon vào trong. Ban đêm dùng máy sưởi.)* |
| Linh | こちらの<ruby>緑<rt>みどり</rt></ruby>の<ruby>野菜<rt>やさい</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Rau xanh bên này là gì ạ?)* |
| Saori | これはレタスです。サラダで<ruby>食<rt>た</rt></ruby>べる<ruby>野菜<rt>やさい</rt></ruby>です。<br>*(Đây là rau salad. Ăn sống trong salad.)* |
| Linh | あ、サラダの<ruby>野菜<rt>やさい</rt></ruby>ですね。<ruby>大<rt>おお</rt></ruby>きいですね。<br>*(À, rau salad nhỉ. To quá.)* |
| Saori | はい、もう<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>時期<rt>じき</rt></ruby>です。<br>*(Ừ, đến lúc thu hoạch rồi.)* |
| Linh | <ruby>収穫<rt>しゅうかく</rt></ruby>、というのは?<br>*(Shuukaku là gì ạ?)* |
| Saori | <ruby>野菜<rt>やさい</rt></ruby>を<ruby>畑<rt>はたけ</rt></ruby>から<ruby>取<rt>と</rt></ruby>ることです。<br>*(Là lấy rau từ ruộng.)* |
| Linh | <ruby>収穫<rt>しゅうかく</rt></ruby>...メモします。<br>*(Shuukaku... em ghi lại.)* |

---

## Tình huống 5 — Nhà kính số 1 · 7:40, học tên dụng cụ

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えます。これは<ruby>鎌<rt>かま</rt></ruby>です。<ruby>野菜<rt>やさい</rt></ruby>を<ruby>切<rt>き</rt></ruby>ります。<br>*(Chị dạy tên dụng cụ. Đây là cái liềm. Cắt rau.)* |
| Linh | <ruby>鎌<rt>かま</rt></ruby>ですね。ベトナムにもあります。<br>*(Cái liềm ạ. Việt Nam cũng có ạ.)* |
| Saori | これは<ruby>箱<rt>はこ</rt></ruby>です。<ruby>収穫<rt>しゅうかく</rt></ruby>した<ruby>野菜<rt>やさい</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。コンテナとも<ruby>言<rt>い</rt></ruby>います。<br>*(Cái này là hộp. Đựng rau đã thu hoạch. Cũng gọi là container.)* |
| Linh | コンテナ。はい。<br>*(Container. Vâng.)* |
| Saori | これはじょうろ。<ruby>水<rt>みず</rt></ruby>をあげる<ruby>道具<rt>どうぐ</rt></ruby>です。<br>*(Đây là bình tưới. Dụng cụ tưới nước.)* |
| Linh | じょうろ...あ、<ruby>水<rt>みず</rt></ruby>を<ruby>入<rt>い</rt></ruby>れて、<ruby>植物<rt>しょくぶつ</rt></ruby>にかけるものですね。<br>*(Bình tưới... à, là cái cho nước vào rồi tưới cho cây.)* |
| Saori | そうそう。それからホース。<br>*(Đúng đúng. Rồi vòi.)* |
| Linh | ホースは<ruby>長<rt>なが</rt></ruby>い<ruby>水<rt>みず</rt></ruby>のパイプですね。<br>*(Vòi là ống nước dài đúng không ạ?)* |
| Saori | <ruby>正解<rt>せいかい</rt></ruby>!<ruby>最後<rt>さいご</rt></ruby>に、<ruby>剪定<rt>せんてい</rt></ruby>バサミ。<ruby>枝<rt>えだ</rt></ruby>を<ruby>切<rt>き</rt></ruby>ります。<br>*(Đúng rồi! Cuối cùng, kéo tỉa. Cắt cành.)* |
| Linh | <ruby>剪定<rt>せんてい</rt></ruby>バサミ。<ruby>難<rt>むずか</rt></ruby>しい<ruby>名前<rt>なまえ</rt></ruby>ですね。<br>*(Kéo tỉa. Tên khó nhỉ.)* |
| Saori | (cười) ゆっくり<ruby>覚<rt>おぼ</rt></ruby>えてください。<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>うから、すぐ<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Cứ từ từ nhớ. Ngày nào cũng dùng, nhớ ngay thôi.)* |

---

## Tình huống 6 — Nhà kính số 2 · 8:30, gặp dưa leo きゅうり

| Vai | Lời thoại |
|---|---|
| Saori | こちらは<ruby>第<rt>だい</rt></ruby><ruby>二<rt>に</rt></ruby>ハウスです。きゅうりを<ruby>育<rt>そだ</rt></ruby>てています。<br>*(Đây là nhà kính số 2. Đang trồng dưa leo.)* |
| Linh | きゅうり、<ruby>大<rt>おお</rt></ruby>きいですね!<ruby>背<rt>せ</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。<br>*(Dưa leo to quá! Cao nữa.)* |
| Saori | はい、<ruby>二<rt>に</rt></ruby>メートルぐらいです。<ruby>上<rt>うえ</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びるように<ruby>紐<rt>ひも</rt></ruby>で<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Vâng, khoảng 2 mét. Buộc dây cho nó leo lên cao.)* |
| Linh | <ruby>紐<rt>ひも</rt></ruby>、というのは?<br>*(Himo là gì ạ?)* |
| Saori | これです。<ruby>細<rt>ほそ</rt></ruby>い<ruby>糸<rt>いと</rt></ruby>のようなもの。<br>*(Cái này. Cái như sợi chỉ mỏng.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました。ベトナム<ruby>語<rt>ご</rt></ruby>で「dây」と<ruby>言<rt>い</rt></ruby>います。<br>*(À, em hiểu. Tiếng Việt gọi là "dây".)* |
| Saori | dây。へえ、おもしろい。<br>*(Dây. Ồ, thú vị.)* |
| Linh | きゅうりは<ruby>四月<rt>しがつ</rt></ruby>からありますか?<br>*(Dưa leo có từ tháng 4 ạ?)* |
| Saori | はい、ハウス<ruby>栽培<rt>さいばい</rt></ruby>なので<ruby>一年中<rt>いちねんじゅう</rt></ruby>あります。でも<ruby>五月<rt>ごがつ</rt></ruby>から<ruby>七月<rt>しちがつ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>忙<rt>いそが</rt></ruby>しいです。<br>*(Có. Vì trồng nhà kính nên cả năm đều có. Nhưng từ tháng 5 đến tháng 7 bận nhất.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Em sẽ ghi nhớ.)* |

---

## Tình huống 7 — Cạnh nhà kính · 10:00, nghỉ giải lao 休憩

*Tiếng chuông báo nghỉ ngắn 15 phút.*

| Vai | Lời thoại |
|---|---|
| Saori | リンさん、<ruby>十時<rt>じゅうじ</rt></ruby>は<ruby>休憩<rt>きゅうけい</rt></ruby><ruby>時間<rt>じかん</rt></ruby>です。<ruby>十五分<rt>じゅうごふん</rt></ruby><ruby>休<rt>やす</rt></ruby>みましょう。<br>*(Em Linh, 10 giờ là giờ nghỉ. Nghỉ 15 phút.)* |
| Linh | はい!<br>*(Vâng!)* |
| Saori | お<ruby>茶<rt>ちゃ</rt></ruby>とお<ruby>菓子<rt>かし</rt></ruby>があります。どうぞ。<br>*(Có trà và bánh kẹo. Mời em.)* |
| Linh | ありがとうございます。いただきます。<br>*(Em cảm ơn. Em xin phép.)* |
| Saori | これは<ruby>母<rt>はは</rt></ruby>が<ruby>作<rt>つく</rt></ruby>った<ruby>団子<rt>だんご</rt></ruby>です。<ruby>食<rt>た</rt></ruby>べたことある?<br>*(Đây là bánh dango mẹ chị làm. Em ăn bao giờ chưa?)* |
| Linh | <ruby>団子<rt>だんご</rt></ruby>、というのは?<br>*(Dango là gì ạ?)* |
| Saori | お<ruby>米<rt>こめ</rt></ruby>から<ruby>作<rt>つく</rt></ruby>った<ruby>丸<rt>まる</rt></ruby>いお<ruby>菓子<rt>かし</rt></ruby>です。<br>*(Bánh ngọt tròn làm từ gạo.)* |
| Linh | (ăn một miếng) おいしい!ベトナムにも<ruby>似<rt>に</rt></ruby>たものがあります。<br>*(Ngon quá! Việt Nam cũng có cái tương tự.)* |
| Saori | へえ、そうなんだ。リンさん、<ruby>疲<rt>つか</rt></ruby>れていない?<br>*(Ồ, vậy ạ. Em Linh có mệt không?)* |
| Linh | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>楽<rt>たの</rt></ruby>しいです。<br>*(Vâng, em ổn ạ. Vui lắm.)* |

---

## Tình huống 8 — Nhà kính số 1 · 10:30, Linh thử cầm liềm cắt rau salad

| Vai | Lời thoại |
|---|---|
| Saori | リンさん、<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>収穫<rt>しゅうかく</rt></ruby>をやってみる?<br>*(Em Linh, thử thu hoạch một chút nhé?)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời chị ạ.)* |
| Saori | レタスは<ruby>根本<rt>ねもと</rt></ruby>を<ruby>鎌<rt>かま</rt></ruby>で<ruby>切<rt>き</rt></ruby>ります。こうやって。(làm mẫu)<br>*(Salad cắt phần gốc bằng liềm. Như này.)* |
| Linh | (thử) こうですか?<br>*(Như này ạ?)* |
| Saori | <ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>います。<ruby>鎌<rt>かま</rt></ruby>を<ruby>手前<rt>てまえ</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>くんです。<ruby>押<rt>お</rt></ruby>すんじゃなくて、<ruby>引<rt>ひ</rt></ruby>く。<br>*(Hơi khác. Kéo liềm về phía mình. Không đẩy, mà kéo.)* |
| Linh | あ、<ruby>引<rt>ひ</rt></ruby>く...こう?<br>*(À, kéo... như này?)* |
| Saori | はい、いいですね。<ruby>怪我<rt>けが</rt></ruby>しないように<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Vâng, tốt rồi. Cẩn thận đừng bị thương.)* |
| Linh | はい。(cắt được một cây) できました!<br>*(Vâng. Được rồi!)* |
| Saori | <ruby>上手<rt>じょうず</rt></ruby>!<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<ruby>葉<rt>は</rt></ruby>っぱを<ruby>下<rt>した</rt></ruby>に。<br>*(Giỏi! Cho vào hộp đi. Lá xuống dưới.)* |
| Linh | はい!<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng! Em vui quá.)* |

---

## Tình huống 9 — Lối đi giữa nhà kính · 11:30, xin đi vệ sinh

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、すみません。<br>*(Chị Saori, em xin lỗi.)* |
| Saori | はい、どうした?<br>*(Ừ, sao thế?)* |
| Linh | お<ruby>手洗<rt>てあら</rt></ruby>いに<ruby>行<rt>い</rt></ruby>ってもいいですか?<br>*(Em đi vệ sinh được không ạ?)* |
| Saori | もちろん、いいですよ。<ruby>事務所<rt>じむしょ</rt></ruby>の<ruby>横<rt>よこ</rt></ruby>にあります。<br>*(Tất nhiên, được. Cạnh văn phòng.)* |
| Linh | ありがとうございます。すぐ<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Em cảm ơn. Em quay lại ngay.)* |
| Saori | ゆっくりでいいですよ。<ruby>水<rt>みず</rt></ruby>も<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Cứ thong thả. Uống nước nữa.)* |
| Linh | はい。<br>*(Vâng.)* |
| Saori | あ、<ruby>長靴<rt>ながぐつ</rt></ruby>はハウスの<ruby>外<rt>そと</rt></ruby>で<ruby>脱<rt>ぬ</rt></ruby>いでね。<ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>泥<rt>どろ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れないように。<br>*(À, cởi ủng ngoài nhà kính nhé. Đừng mang bùn vào văn phòng.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 10 — Văn phòng nông trại · 12:00, bữa trưa cùng cả nhóm

*Cả nhóm tập trung tại phòng ăn nhỏ trong văn phòng.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | みんな、お<ruby>疲<rt>つか</rt></ruby>れさん。お<ruby>昼<rt>ひる</rt></ruby>だ。<br>*(Mọi người, vất vả rồi. Ăn trưa nào.)* |
| Linh | お<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Vất vả ạ.)* |
| 嫁さん | リンちゃん、<ruby>初日<rt>しょにち</rt></ruby>はどうだった?<br>*(Linh ơi, ngày đầu thế nào?)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>佐織<rt>さおり</rt></ruby>さんが<ruby>優<rt>やさ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Em ổn ạ. Chị Saori dạy em rất tận tình.)* |
| 嫁さん | よかったね。<ruby>今日<rt>きょう</rt></ruby>のお<ruby>弁当<rt>べんとう</rt></ruby>はおにぎりと<ruby>卵焼<rt>たまごや</rt></ruby>き。<br>*(May quá. Bữa trưa hôm nay cơm nắm và trứng cuộn.)* |
| Linh | わあ、おいしそうです。いただきます。<br>*(Ôi, trông ngon quá. Em xin phép.)* |
| Yamamoto | リンちゃん、<ruby>箸<rt>はし</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>が<ruby>上手<rt>うま</rt></ruby>いな。<br>*(Linh, dùng đũa khéo nhỉ.)* |
| Linh | ベトナムも<ruby>箸<rt>はし</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Việt Nam cũng dùng đũa ạ.)* |
| Yamamoto | そうか、そうか。よく<ruby>食<rt>た</rt></ruby>べな。<br>*(Vậy à, vậy à. Ăn nhiều vào.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ông.)* |

---

## Tình huống 11 — Nhà kính số 1 · 14:30, báo cáo Saori về số rau đã cắt

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、ご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Chị Saori, em xin báo cáo.)* |
| Saori | はい、どうぞ。<br>*(Ừ, em nói đi.)* |
| Linh | レタスを<ruby>十<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>収穫<rt>しゅうかく</rt></ruby>しました。<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてあります。<br>*(Em đã thu hoạch 10 cây salad. Đã cho vào hộp ạ.)* |
| Saori | <ruby>十<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby>!すごい。<ruby>初日<rt>しょにち</rt></ruby>でそれは<ruby>立派<rt>りっぱ</rt></ruby>です。<br>*(10 cây! Giỏi đấy. Ngày đầu mà được vậy là tuyệt.)* |
| Linh | ありがとうございます。<ruby>一<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>葉<rt>は</rt></ruby>っぱが<ruby>少<rt>すこ</rt></ruby>し<ruby>破<rt>やぶ</rt></ruby>れてしまいました。すみません。<br>*(Em cảm ơn ạ. Có 1 cây em làm rách lá. Em xin lỗi.)* |
| Saori | リンさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれてありがとう。それが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Em Linh, cảm ơn em đã thành thật báo. Điều đó quan trọng lắm.)* |
| Linh | <ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Lần sau em sẽ cẩn thận.)* |
| Saori | はい。<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>と、<ruby>失敗<rt>しっぱい</rt></ruby>した<ruby>時<rt>とき</rt></ruby>は、すぐ<ruby>言<rt>い</rt></ruby>ってね。これが<ruby>報連相<rt>ほうれんそう</rt></ruby>です。<br>*(Ừ. Lúc không hiểu hay làm hỏng, hãy báo ngay. Đó là 報連相.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em sẽ luôn báo cáo.)* |

---

## Tình huống 12 — Cổng nông trại · 17:00, chào về

| Vai | Lời thoại |
|---|---|
| Saori | リンさん、<ruby>今日<rt>きょう</rt></ruby>はここまで。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Em Linh, hôm nay đến đây thôi. Vất vả nhé.)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。ありがとうございました。<br>*(Chị Saori, chị vất vả ạ. Em cảm ơn chị.)* |
| Yamamoto | (từ văn phòng đi ra) リンちゃん、<ruby>初日<rt>しょにち</rt></ruby>どうだった?<br>*(Linh, ngày đầu thế nào?)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございました。<br>*(Oyakata, em học được nhiều điều ạ. Em cảm ơn ông.)* |
| Yamamoto | おう、よかった。<ruby>明日<rt>あした</rt></ruby>もよろしくな。<br>*(Ờ, tốt rồi. Mai cũng nhờ em nhé.)* |
| Linh | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng! Em xin phép về trước.)* |
| Saori | お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>明日<rt>あした</rt></ruby>は<ruby>水<rt>みず</rt></ruby>やりだよ。<br>*(Vất vả nhé. Mai là tưới nước nhé.)* |
| Linh | はい、<ruby>楽<rt>たの</rt></ruby>しみです!<br>*(Vâng, em mong lắm!)* |

---

## Tình huống 13 — Ký túc, phòng đôi · 20:00, kể chuyện với Dewi và gọi mẹ

> Cảnh tiếng Việt — gọi điện về cho mẹ ở Đồng Tháp (xen với câu hỏi của Dewi).

| Vai | Lời thoại |
|---|---|
| Dewi | (tiếng Nhật) リンさん、<ruby>初日<rt>しょにち</rt></ruby>はどうだった? |
| Linh | (tiếng Nhật) すごく<ruby>勉強<rt>べんきょう</rt></ruby>になりました!レタスを<ruby>十<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>収穫<rt>しゅうかく</rt></ruby>しました。 |
| Dewi | (tiếng Nhật) すごい!<ruby>明日<rt>あした</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ってね。 |
| Linh | (tiếng Nhật) はい。あ、<ruby>母<rt>はは</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>します。 |
| Linh | (tiếng Việt — bật điện thoại) Mẹ ơi, ngày đầu xong rồi! |
| Mẹ Linh | (tiếng Việt) Linh à, có mệt không con? |
| Linh | (tiếng Việt) Mệt mà vui mẹ ạ. Hôm nay con cắt được 10 cây rau salad! Chị Saori khen con khéo. |
| Mẹ Linh | (tiếng Việt) Vậy là làm như ở nhà mình ấy hả? |
| Linh | (tiếng Việt) Khác lắm mẹ ơi. Họ trồng trong nhà kính, gọi là ハウス. To như cái nhà luôn, trong đó ấm 20 độ, ngoài 8 độ. Có thảm khử trùng phải dẫm trước khi vào, để khỏi mang bệnh cho cây. |
| Mẹ Linh | (tiếng Việt) Khoa học ghê. Ông chủ với chị Saori tốt không? |
| Linh | (tiếng Việt) Tốt lắm mẹ. Ông Yamamoto trông nghiêm mà thực ra hiền. Còn chị Saori, con gái ông, kế nghiệp nông trại, dạy con tận tình. Hôm nay con làm rách 1 cái lá, con tự khai báo, chị khen con thật thà. |
| Mẹ Linh | (tiếng Việt) Tốt con. Cứ thật thà như mẹ dạy. |
| Linh | (tiếng Việt) Con học được câu 報連相 — báo cáo, liên lạc, bàn bạc. Quan trọng lắm. Thôi mẹ ngủ đi, mai con dậy 6 giờ. |
| Mẹ Linh | (tiếng Việt) Ừ, con ngủ ngon. Mẹ tự hào về con. |

---

## Đọng lại chương 3

Ngày đầu xuống nhà kính, Linh học các mẫu câu nông trại nền tảng: **chào 親方 buổi sáng** (おはようございます), **chào kết thúc** (お疲れさまでした), **mặc trang bị bảo hộ** (長靴・軍手・帽子・消毒マット), **gọi tên dụng cụ** (鎌・コンテナ・じょうろ・ホース・剪定バサミ), **gọi tên cây trồng** (レタス・きゅうり), **xin phép đi vệ sinh** (お手洗いに行ってもいいですか), **báo cáo công việc** (レタスを十個収穫しました), **khai báo lỗi** (一個葉っぱを破ってしまいました). Lần đầu hiểu **報連相** không phải lý thuyết — mà là khi làm hỏng phải báo ngay, chị Saori sẽ không mắng mà còn khen vì thật thà.

> Từ vựng & mẫu câu chương này: ハウス・ビニール・消毒マット・長靴・軍手・鎌・コンテナ・じょうろ・ホース・剪定バサミ・レタス・きゅうり・紐・収穫・畑・栽培・休憩・お弁当・おにぎり・卵焼き・報告・正直・失敗・お手洗いに行ってもいいですか・〜してしまいました

## Bí quyết chương

- **消毒マット**: bắt buộc dẫm trước khi vào nhà kính — phòng bệnh cho cây, đặc trưng ngành nông sạch.
- **Kéo liềm về phía mình**, không đẩy ra — kỹ thuật cơ bản, sai dễ bị thương.
- **Báo cáo khi làm hỏng**: thành thật khai báo > giấu giếm. Saori khen vì điều này nhiều hơn vì làm đúng.
- **嫁さん = okusan của oyakata**: phải nhớ gọi đúng vì bà thường nấu cơm trưa cho cả nhóm.
- **休憩 10 giờ + 15 giờ**: nhịp nông trại Nhật, không bỏ — đi vệ sinh và bù nước.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 遅れる | おくれる | TRÌ | Đến muộn |
| 見学 | けんがく | KIẾN HỌC | Quan sát học hỏi |
| 案内 | あんない | ÁN NỘI | Hướng dẫn, dẫn đi |
| 道具 | どうぐ | ĐẠO CỤ | Dụng cụ |
| 名前 | なまえ | DANH TIỀN | Tên |
| 履き替える | はきかえる | LÝ THẾ | Đổi giày |
| 消毒 | しょうどく | TIÊU ĐỘC | Khử trùng |
| 踏む | ふむ | ĐẠP | Dẫm, đạp |
| 薬 | くすり | DƯỢC | Thuốc |
| 裏 | うら | LÝ | Mặt sau, đáy |
| 病気 | びょうき | BỆNH KHÍ | Bệnh tật |
| 太陽 | たいよう | THÁI DƯƠNG | Mặt trời |
| 光 | ひかり | QUANG | Ánh sáng |
| ビニール | ビニール | — | Ni lông |
| 野菜 | やさい | DÃ THÁI | Rau |
| レタス | レタス | — | Rau salad |
| 収穫 | しゅうかく | THU HOẠCH | Thu hoạch |
| 時期 | じき | THỜI KỲ | Thời điểm, mùa |
| 畑 | はたけ | ĐIỀN | Ruộng, vườn |
| 鎌 | かま | KIÊM | Liềm |
| 切る | きる | THIẾT | Cắt |
| 箱 | はこ | TƯƠNG | Hộp |
| コンテナ | コンテナ | — | Container, thùng |
| じょうろ | じょうろ | — | Bình tưới nước |
| ホース | ホース | — | Vòi nước |
| 剪定バサミ | せんていバサミ | TIỄN ĐỊNH | Kéo tỉa cành |
| 枝 | えだ | CHI | Cành |
| 育てる | そだてる | DỤC | Trồng, nuôi |
| 伸びる | のびる | THÂN | Vươn dài, lớn lên |
| 紐 | ひも | NỮU | Dây buộc |
| 支える | ささえる | CHI | Đỡ, chống đỡ |
| 細い | ほそい | TẾ | Mảnh, nhỏ |
| 一年中 | いちねんじゅう | NHẤT NIÊN TRUNG | Cả năm |
| 忙しい | いそがしい | MÁNG | Bận rộn |
| 休憩 | きゅうけい | HƯU KHẾ | Nghỉ giải lao |
| お菓子 | おかし | QUẢ TỬ | Bánh kẹo |
| 団子 | だんご | ĐOÀN TỬ | Bánh dango |
| 根本 | ねもと | CĂN BẢN | Phần gốc |
| 引く | ひく | DẪN | Kéo (về phía mình) |
| 怪我 | けが | QUÁI NGÃ | Bị thương |
| 葉っぱ | はっぱ | DIỆP | Lá cây |
| 事務所 | じむしょ | SỰ VỤ SỞ | Văn phòng |
| 泥 | どろ | NÊ | Bùn |
| 弁当 | べんとう | BIỆN ĐƯƠNG | Cơm hộp |
| おにぎり | おにぎり | — | Cơm nắm |
| 卵焼き | たまごやき | NOÃN THIÊU | Trứng cuộn |
| 正直 | しょうじき | CHÍNH TRỰC | Thành thật |
| 失敗 | しっぱい | THẤT BẠI | Thất bại, làm hỏng |
| 立派 | りっぱ | LẬP PHÁI | Tốt, đáng khen |
| 破れる | やぶれる | PHÁ | Bị rách |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000004, 800000040, NULL, 'markdown_book', 'T4. Chăm sóc rau salad và dưa leo (水やり・肥料)', '# Sách thực tập sinh nông nghiệp · T4. Chăm sóc rau salad và dưa leo (水やり・肥料)

> **Mục tiêu nhân vật:** Linh học các mẫu hội thoại tiếng Nhật trong công việc chăm sóc rau: tưới nước (水やり) đúng lượng, bón phân (肥料) đúng loại, kiểm tra lá xem có sâu bệnh không, xác nhận lại chỉ thị (〜でいいですか), hỏi khi quên (もう一度教えてください), báo lá vàng cho sempai.

---

## Bối cảnh

Ngày 11 tháng 4 năm 2025. Sang ngày thứ hai làm nhà kính. Hôm nay tập trung 2 kỹ năng chăm sóc cơ bản: **水やり** (mizuyari — tưới nước) cho rau salad đã trồng, và **肥料** (hiryou — bón phân) cho dưa leo. Saori-sempai dạy. Buổi chiều có sự cố nhỏ: Linh phát hiện vài lá dưa leo vàng — phải báo cho Saori.

---

## Tình huống 1 — Nhà kính số 1 · 7:10, Saori giải thích kế hoạch ngày

| Vai | Lời thoại |
|---|---|
| Saori | リンさん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Em Linh, chào em. Chị giải thích công việc hôm nay.)* |
| Linh | おはようございます。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em chào chị. Mời chị ạ.)* |
| Saori | <ruby>午前<rt>ごぜん</rt></ruby>は<ruby>第一<rt>だいいち</rt></ruby>ハウスでレタスに<ruby>水<rt>みず</rt></ruby>をやります。<ruby>午後<rt>ごご</rt></ruby>は<ruby>第二<rt>だいに</rt></ruby>ハウスできゅうりに<ruby>肥料<rt>ひりょう</rt></ruby>をやります。<br>*(Sáng tưới nước cho rau salad ở nhà kính 1. Chiều bón phân cho dưa leo ở nhà kính 2.)* |
| Linh | <ruby>水<rt>みず</rt></ruby>やりと<ruby>肥料<rt>ひりょう</rt></ruby>ですね。<br>*(Tưới nước và bón phân ạ.)* |
| Saori | はい。<ruby>水<rt>みず</rt></ruby>やりは<ruby>朝<rt>あさ</rt></ruby>です。<ruby>昼間<rt>ひるま</rt></ruby>は<ruby>暑<rt>あつ</rt></ruby>くて<ruby>蒸<rt>む</rt></ruby>れるから。<br>*(Vâng. Tưới nước vào buổi sáng. Giữa trưa nóng và hấp nên không tưới.)* |
| Linh | あ、<ruby>蒸<rt>む</rt></ruby>れる、というのは?<br>*(Mure-ru là gì ạ?)* |
| Saori | <ruby>暑<rt>あつ</rt></ruby>くて<ruby>湿気<rt>しっけ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くなることです。<ruby>葉<rt>は</rt></ruby>っぱが<ruby>病気<rt>びょうき</rt></ruby>になります。<br>*(Là nóng và độ ẩm cao. Lá sẽ bị bệnh.)* |
| Linh | なるほど。だから<ruby>朝<rt>あさ</rt></ruby>に<ruby>水<rt>みず</rt></ruby>をやるんですね。<br>*(Ra vậy. Nên tưới vào buổi sáng.)* |
| Saori | そうそう、よく<ruby>分<rt>わ</rt></ruby>かったね。<br>*(Đúng đúng, em hiểu nhanh đấy.)* |

---

## Tình huống 2 — Nhà kính số 1 · 7:30, Saori dạy cách tưới nước

| Vai | Lời thoại |
|---|---|
| Saori | ホースを<ruby>持<rt>も</rt></ruby>ってください。<ruby>水<rt>みず</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す<ruby>強<rt>つよ</rt></ruby>さはこのぐらい。<br>*(Cầm vòi đi. Mức xả nước khoảng như này.)* |
| Linh | (cầm vòi) はい。<br>*(Vâng.)* |
| Saori | <ruby>葉<rt>は</rt></ruby>っぱに<ruby>水<rt>みず</rt></ruby>を<ruby>直接<rt>ちょくせつ</rt></ruby>かけないでください。<ruby>根本<rt>ねもと</rt></ruby>にやさしくかけます。<br>*(Đừng tưới trực tiếp lên lá. Tưới nhẹ vào gốc.)* |
| Linh | <ruby>葉<rt>は</rt></ruby>っぱは<ruby>濡<rt>ぬ</rt></ruby>らさないですね。<br>*(Không làm ướt lá ạ?)* |
| Saori | はい。<ruby>葉<rt>は</rt></ruby>っぱが<ruby>濡<rt>ぬ</rt></ruby>れると<ruby>病気<rt>びょうき</rt></ruby>になりやすいです。<br>*(Vâng. Lá ướt thì dễ bị bệnh.)* |
| Linh | <ruby>一<rt>いっ</rt></ruby><ruby>株<rt>かぶ</rt></ruby>にどのぐらいですか?<br>*(Mỗi gốc bao nhiêu ạ?)* |
| Saori | <ruby>三<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>ぐらい。<ruby>土<rt>つち</rt></ruby>が<ruby>黒<rt>くろ</rt></ruby>くなったらOK。<br>*(Khoảng 3 giây. Đất chuyển màu đen là OK.)* |
| Linh | <ruby>土<rt>つち</rt></ruby>が<ruby>黒<rt>くろ</rt></ruby>くなったら、ですね。<br>*(Đến khi đất chuyển đen ạ.)* |
| Saori | はい、<ruby>正解<rt>せいかい</rt></ruby>です。<ruby>多<rt>おお</rt></ruby>すぎても<ruby>少<rt>すく</rt></ruby>なすぎてもダメ。<br>*(Vâng, đúng. Nhiều quá hay ít quá đều không được.)* |
| Linh | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý.)* |

---

## Tình huống 3 — Nhà kính số 1 · 8:00, Linh tự tưới và xác nhận

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、<ruby>確認<rt>かくにん</rt></ruby>してもいいですか?<br>*(Chị Saori, em xác nhận lại được không?)* |
| Saori | はい、どうぞ。<br>*(Ừ, em nói.)* |
| Linh | <ruby>葉<rt>は</rt></ruby>っぱにかけないで、<ruby>根本<rt>ねもと</rt></ruby>に<ruby>三<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>土<rt>つち</rt></ruby>が<ruby>黒<rt>くろ</rt></ruby>くなるまで。これでいいですか?<br>*(Không tưới lên lá, tưới vào gốc 3 giây, đến khi đất chuyển đen. Như này được không?)* |
| Saori | はい、その<ruby>通<rt>とお</rt></ruby>りです。やってみてください。<br>*(Vâng, đúng vậy. Em thử đi.)* |
| Linh | (cẩn thận tưới từng cây) <ruby>一<rt>いち</rt></ruby>、<ruby>二<rt>に</rt></ruby>、<ruby>三<rt>さん</rt></ruby>...<br>*(1, 2, 3...)* |
| Saori | (quan sát) いい<ruby>感<rt>かん</rt></ruby>じです。<ruby>水<rt>みず</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>さも<ruby>丁度<rt>ちょうど</rt></ruby>いい。<br>*(Tốt lắm. Lực nước vừa phải.)* |
| Linh | ありがとうございます。<br>*(Em cảm ơn chị.)* |
| Saori | <ruby>一<rt>いち</rt></ruby><ruby>列<rt>れつ</rt></ruby>やったら、<ruby>休<rt>やす</rt></ruby>んでください。<ruby>急<rt>いそ</rt></ruby>がなくていいから。<br>*(Tưới xong 1 hàng thì nghỉ. Đừng vội.)* |
| Linh | はい。<br>*(Vâng.)* |

---

## Tình huống 4 — Nhà kính số 1 · 9:15, Linh quên kỹ thuật, hỏi lại

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、すみません。<br>*(Chị Saori, em xin lỗi.)* |
| Saori | はい、どうしましたか?<br>*(Ừ, sao thế?)* |
| Linh | <ruby>端<rt>はし</rt></ruby>の<ruby>列<rt>れつ</rt></ruby>の<ruby>株<rt>かぶ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>小<rt>ちい</rt></ruby>さいです。<ruby>水<rt>みず</rt></ruby>を<ruby>同<rt>おな</rt></ruby>じだけやっていいですか?<br>*(Cây ở hàng cuối hơi nhỏ. Tưới cùng lượng nước có được không ạ?)* |
| Saori | あ、いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>小<rt>ちい</rt></ruby>さい<ruby>株<rt>かぶ</rt></ruby>は<ruby>少<rt>すく</rt></ruby>なくします。<ruby>二<rt>に</rt></ruby><ruby>秒<rt>びょう</rt></ruby>でいいです。<br>*(À, câu hỏi hay. Cây nhỏ thì tưới ít. 2 giây là được.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。すみません、<ruby>朝<rt>あさ</rt></ruby><ruby>教<rt>おし</rt></ruby>えてもらった「<ruby>蒸<rt>む</rt></ruby>れる」、もう<ruby>一度<rt>いちど</rt></ruby><ruby>教<rt>おし</rt></ruby>えてください。<br>*(Em hiểu rồi. Em xin lỗi, từ "mureru" sáng chị dạy, chị nói lại lần nữa được không ạ?)* |
| Saori | はい、もちろん。<ruby>蒸<rt>む</rt></ruby>れるは、<ruby>暑<rt>あつ</rt></ruby>くて<ruby>湿気<rt>しっけ</rt></ruby>が<ruby>高<rt>たか</rt></ruby>くなることです。<ruby>葉<rt>は</rt></ruby>っぱの<ruby>間<rt>あいだ</rt></ruby>に<ruby>水<rt>みず</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>るとそうなります。<br>*(Ừ, tất nhiên. "Mureru" là nóng và độ ẩm cao. Nước đọng giữa lá sẽ bị vậy.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました。メモします。<br>*(À, em hiểu rồi. Em ghi lại.)* |
| Saori | リンさん、<ruby>聞<rt>き</rt></ruby>くのはいいことです。<ruby>遠慮<rt>えんりょ</rt></ruby>しないでね。<br>*(Em Linh, hỏi là tốt đấy. Đừng ngại.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị.)* |

---

## Tình huống 5 — Cạnh nhà kính · 10:00, nghỉ giải lao cùng Dewi

*Dewi đi qua, đến chỗ Linh nghỉ.*

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、お<ruby>疲<rt>つか</rt></ruby>れ!<ruby>水<rt>みず</rt></ruby>やり、できた?<br>*(Em Linh, vất vả nhé! Tưới nước được rồi chứ?)* |
| Linh | はい、<ruby>半分<rt>はんぶん</rt></ruby>できました。<br>*(Vâng, được nửa rồi ạ.)* |
| Dewi | <ruby>水<rt>みず</rt></ruby>やりは<ruby>簡単<rt>かんたん</rt></ruby>そうで<ruby>難<rt>むずか</rt></ruby>しいよね。<br>*(Tưới nước nhìn dễ mà khó nhỉ.)* |
| Linh | はい、<ruby>多<rt>おお</rt></ruby>くも<ruby>少<rt>すく</rt></ruby>なくもダメで...<br>*(Vâng, nhiều cũng không được, ít cũng không được...)* |
| Dewi | <ruby>慣<rt>な</rt></ruby>れるよ。<ruby>一<rt>いっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かるようになる。<br>*(Sẽ quen thôi. Một tháng là biết được.)* |
| Linh | デウィさんは<ruby>今<rt>いま</rt></ruby><ruby>何<rt>なに</rt></ruby>をやっていますか?<br>*(Chị Dewi giờ đang làm gì ạ?)* |
| Dewi | <ruby>私<rt>わたし</rt></ruby>は<ruby>第三<rt>だいさん</rt></ruby>ハウスで<ruby>苗<rt>なえ</rt></ruby>を<ruby>植<rt>う</rt></ruby>えています。<br>*(Mình đang trồng cây con ở nhà kính 3.)* |
| Linh | <ruby>苗<rt>なえ</rt></ruby>、というのは?<br>*(Nae là gì ạ?)* |
| Dewi | <ruby>小<rt>ちい</rt></ruby>さい<ruby>赤<rt>あか</rt></ruby>ちゃんの<ruby>植物<rt>しょくぶつ</rt></ruby>です。これから<ruby>大<rt>おお</rt></ruby>きく<ruby>育<rt>そだ</rt></ruby>てます。<br>*(Là cây con nhỏ. Sẽ nuôi cho lớn dần.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました。リンも<ruby>後<rt>あと</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えたいです。<br>*(À, em hiểu rồi. Em cũng muốn học sau ạ.)* |
| Dewi | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>教<rt>おし</rt></ruby>えてあげる。<br>*(Tuần sau chị dạy cho.)* |

---

## Tình huống 6 — Văn phòng · 12:00, ăn trưa, Linh hỏi 親方 về tên dưa leo

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、お<ruby>聞<rt>き</rt></ruby>きしてもいいですか?<br>*(Oyakata, em hỏi được không ạ?)* |
| Yamamoto | おう、どうした?<br>*(Ờ, gì nào?)* |
| Linh | きゅうりは<ruby>何<rt>なん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>ありますか?<br>*(Dưa leo có mấy loại ạ?)* |
| Yamamoto | うちは<ruby>二<rt>に</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>だ。「<ruby>夏<rt>なつ</rt></ruby>すずみ」と「ときわ<ruby>光<rt>ひかり</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>号<rt>ごう</rt></ruby>」。<br>*(Nhà chú có hai loại. "Natsusuzumi" và "Tokiwa hikari số 3".)* |
| Linh | <ruby>夏<rt>なつ</rt></ruby>すずみ...<ruby>夏<rt>なつ</rt></ruby>に<ruby>涼<rt>すず</rt></ruby>しい、という<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Natsusuzumi... nghĩa là "mát mẻ vào mùa hè" ạ?)* |
| Yamamoto | おう、よく<ruby>分<rt>わ</rt></ruby>かったな。<ruby>暑<rt>あつ</rt></ruby>くても<ruby>育<rt>そだ</rt></ruby>つきゅうりだ。<br>*(Ờ, hiểu nhanh đấy. Là dưa leo trồng được kể cả khi nóng.)* |
| Linh | おもしろい<ruby>名前<rt>なまえ</rt></ruby>ですね。<br>*(Tên hay quá ạ.)* |
| 嫁さん | リンちゃん、お<ruby>味噌汁<rt>みそしる</rt></ruby>のおかわりは?<br>*(Linh, có ăn thêm súp miso không?)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。おいしいです。<br>*(Có ạ, cho em xin. Ngon quá.)* |
| 嫁さん | (cười) たくさん<ruby>食<rt>た</rt></ruby>べて。<br>*(Ăn nhiều vào.)* |

---

## Tình huống 7 — Nhà kính số 2 · 13:30, Saori dạy bón phân 肥料

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>午後<rt>ごご</rt></ruby>は<ruby>肥料<rt>ひりょう</rt></ruby>をやります。これが<ruby>肥料<rt>ひりょう</rt></ruby>です。<br>*(Chiều bón phân. Đây là phân.)* |
| Linh | (nhìn vào bao) <ruby>茶色<rt>ちゃいろ</rt></ruby>の<ruby>粒<rt>つぶ</rt></ruby>ですね。<br>*(Hạt màu nâu ạ.)* |
| Saori | はい。<ruby>有機<rt>ゆうき</rt></ruby><ruby>肥料<rt>ひりょう</rt></ruby>です。<ruby>動物<rt>どうぶつ</rt></ruby>の<ruby>糞<rt>ふん</rt></ruby>から<ruby>作<rt>つく</rt></ruby>りました。<br>*(Vâng. Phân hữu cơ. Làm từ phân động vật.)* |
| Linh | あ、<ruby>糞<rt>ふん</rt></ruby>...ちょっと<ruby>臭<rt>くさ</rt></ruby>いですね。<br>*(À, phân... hơi hôi nhỉ.)* |
| Saori | (cười) はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>慣<rt>な</rt></ruby>れますよ。<ruby>有機<rt>ゆうき</rt></ruby>のほうが<ruby>野菜<rt>やさい</rt></ruby>が<ruby>美味<rt>おい</rt></ruby>しくなります。<br>*(Vâng, sẽ quen thôi. Phân hữu cơ làm rau ngon hơn.)* |
| Linh | <ruby>有機<rt>ゆうき</rt></ruby>、というのは?<br>*(Yuuki là gì ạ?)* |
| Saori | <ruby>化学<rt>かがく</rt></ruby>の<ruby>薬<rt>くすり</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わないことです。<ruby>自然<rt>しぜん</rt></ruby>のものだけです。<br>*(Là không dùng hoá chất. Chỉ dùng đồ tự nhiên thôi.)* |
| Linh | あ、JASのマークですか?<br>*(À, dấu JAS ạ?)* |
| Saori | おお、よく<ruby>知<rt>し</rt></ruby>ってるね!そうです、うちはJAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>です。<br>*(Ồ, em biết rõ nhỉ! Đúng, nhà chị có chứng nhận JAS hữu cơ.)* |
| Linh | センターで<ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Em học ở trung tâm ạ.)* |

---

## Tình huống 8 — Nhà kính số 2 · 14:00, cách bón phân đúng vị trí

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>肥料<rt>ひりょう</rt></ruby>は<ruby>株<rt>かぶ</rt></ruby>の<ruby>根本<rt>ねもと</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>し<ruby>離<rt>はな</rt></ruby>れた<ruby>所<rt>ところ</rt></ruby>にやります。<br>*(Phân bón ở chỗ cách gốc cây một chút.)* |
| Linh | <ruby>根本<rt>ねもと</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>ではなくて?<br>*(Không phải trên gốc ạ?)* |
| Saori | はい。<ruby>根本<rt>ねもと</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>にやると<ruby>根<rt>ね</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>みます。<ruby>十<rt>じゅっ</rt></ruby>センチぐらい<ruby>離<rt>はな</rt></ruby>します。<br>*(Vâng. Bón trên gốc thì rễ bị thương. Cách khoảng 10cm.)* |
| Linh | <ruby>量<rt>りょう</rt></ruby>はどのぐらいですか?<br>*(Lượng bao nhiêu ạ?)* |
| Saori | このスプーンで<ruby>一杯<rt>いっぱい</rt></ruby>です。<ruby>株<rt>かぶ</rt></ruby><ruby>一<rt>いっ</rt></ruby>つに<ruby>一杯<rt>いっぱい</rt></ruby>。<br>*(Một thìa này. Một gốc một thìa.)* |
| Linh | <ruby>一<rt>いっ</rt></ruby>つに<ruby>一杯<rt>いっぱい</rt></ruby>、ですね。やってみます。<br>*(Một gốc một thìa ạ. Em thử ạ.)* |
| Saori | (xem Linh làm) いいですね。<ruby>離<rt>はな</rt></ruby>す<ruby>距離<rt>きょり</rt></ruby>、ちょうどいい。<br>*(Tốt rồi. Khoảng cách vừa phải.)* |
| Linh | ありがとうございます。<br>*(Em cảm ơn chị.)* |
| Saori | <ruby>肥料<rt>ひりょう</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>土<rt>つち</rt></ruby>をかけてください。<ruby>風<rt>かぜ</rt></ruby>で<ruby>飛<rt>と</rt></ruby>ばないように。<br>*(Phủ một chút đất lên phân. Để gió không thổi bay.)* |
| Linh | はい、<ruby>土<rt>つち</rt></ruby>をかけます。<br>*(Vâng, em phủ đất lên ạ.)* |

---

## Tình huống 9 — Nhà kính số 2 · 15:30, Linh phát hiện lá vàng

*Linh đang bón phân thì để ý vài lá dưa leo gần đó có màu vàng.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、ちょっと<ruby>来<rt>き</rt></ruby>てください!<br>*(Chị Saori, đến đây một chút ạ!)* |
| Saori | はい、どうしたの?<br>*(Ừ, sao thế?)* |
| Linh | この<ruby>葉<rt>は</rt></ruby>っぱ、<ruby>黄色<rt>きいろ</rt></ruby>くなっています。<ruby>病気<rt>びょうき</rt></ruby>でしょうか?<br>*(Lá này bị vàng. Có phải bị bệnh không ạ?)* |
| Saori | (đến gần xem) あ、<ruby>本当<rt>ほんとう</rt></ruby>だ。よく<ruby>見<rt>み</rt></ruby>つけたね。<br>*(À, đúng rồi. Em phát hiện giỏi đấy.)* |
| Linh | <ruby>病気<rt>びょうき</rt></ruby>ですか?<br>*(Bệnh hả chị?)* |
| Saori | うん、ちょっとだけ。たぶん<ruby>水<rt>みず</rt></ruby>が<ruby>多<rt>おお</rt></ruby>すぎたみたい。「うどんこ<ruby>病<rt>びょう</rt></ruby>」ではないけど、<ruby>注意<rt>ちゅうい</rt></ruby>がいる。<br>*(Ừ, một chút thôi. Chắc tưới nhiều quá. Không phải bệnh phấn trắng nhưng cần để ý.)* |
| Linh | リンが<ruby>水<rt>みず</rt></ruby>を<ruby>多<rt>おお</rt></ruby>くやったからですか?<br>*(Có phải tại em tưới nhiều không ạ?)* |
| Saori | いいえ、リンさんはレタスをやったでしょ?きゅうりは<ruby>昨日<rt>きのう</rt></ruby><ruby>佐織<rt>さおり</rt></ruby>がやりました。<ruby>気<rt>き</rt></ruby>にしないで。<br>*(Không, em tưới rau salad mà? Dưa leo hôm qua chị Saori tưới. Đừng để bụng.)* |
| Linh | あ、<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(À, em yên tâm rồi.)* |
| Saori | <ruby>気<rt>き</rt></ruby>づいてくれてありがとう。<ruby>葉<rt>は</rt></ruby>っぱを<ruby>取<rt>と</rt></ruby>って<ruby>捨<rt>す</rt></ruby>てます。<ruby>親方<rt>おやかた</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しましょう。<br>*(Cảm ơn em đã để ý. Ngắt lá đó vứt đi. Mình báo cáo oyakata.)* |
| Linh | はい、<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Vâng, cùng đi ạ.)* |

---

## Tình huống 10 — Văn phòng · 16:00, báo cáo 親方

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>親方<rt>おやかた</rt></ruby>、ご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Oyakata, có báo cáo ạ.)* |
| Yamamoto | おう、どうした?<br>*(Ờ, sao thế?)* |
| Saori | <ruby>第二<rt>だいに</rt></ruby>ハウスのきゅうり、<ruby>三<rt>さん</rt></ruby><ruby>株<rt>かぶ</rt></ruby>の<ruby>葉<rt>は</rt></ruby>っぱが<ruby>少<rt>すこ</rt></ruby>し<ruby>黄色<rt>きいろ</rt></ruby>くなっています。リンさんが<ruby>見<rt>み</rt></ruby>つけました。<br>*(Ba cây dưa leo ở nhà kính 2 có lá hơi vàng. Em Linh phát hiện ra.)* |
| Yamamoto | おお、リンちゃん、<ruby>早<rt>はや</rt></ruby>く<ruby>気<rt>き</rt></ruby>づいたな。<br>*(Ờ, Linh phát hiện sớm nhỉ.)* |
| Linh | はい、<ruby>水<rt>みず</rt></ruby>が<ruby>多<rt>おお</rt></ruby>すぎたかもしれないと<ruby>佐織<rt>さおり</rt></ruby>さんに<ruby>言<rt>い</rt></ruby>われました。<br>*(Vâng, chị Saori nói có thể do tưới nhiều quá ạ.)* |
| Yamamoto | <ruby>明日<rt>あした</rt></ruby>から<ruby>水<rt>みず</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>を<ruby>調節<rt>ちょうせつ</rt></ruby>しよう。<ruby>葉<rt>は</rt></ruby>っぱは<ruby>取<rt>と</rt></ruby>ったか?<br>*(Từ mai điều chỉnh lượng nước. Lá ngắt chưa?)* |
| Saori | はい、<ruby>取<rt>と</rt></ruby>って<ruby>捨<rt>す</rt></ruby>てました。<br>*(Rồi, đã ngắt vứt đi rồi.)* |
| Yamamoto | よし。リンちゃん、これからもよく<ruby>見<rt>み</rt></ruby>てくれ。<ruby>早<rt>はや</rt></ruby>く<ruby>気<rt>き</rt></ruby>づくと<ruby>被害<rt>ひがい</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ない。<br>*(Tốt. Linh, sau này cũng quan sát kỹ. Phát hiện sớm thì thiệt hại ít.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ luôn để ý ạ.)* |

---

## Tình huống 11 — Cổng nông trại · 17:00, chào về

| Vai | Lời thoại |
|---|---|
| Saori | リンさん、<ruby>今日<rt>きょう</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Em Linh, hôm nay vất vả nhé.)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。たくさん<ruby>教<rt>おし</rt></ruby>えてもらって、ありがとうございました。<br>*(Chị Saori vất vả ạ. Chị dạy em nhiều quá, em cảm ơn chị.)* |
| Saori | リンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>黄色<rt>きいろ</rt></ruby>い<ruby>葉<rt>は</rt></ruby>っぱを<ruby>見<rt>み</rt></ruby>つけたこと、すごく<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<br>*(Em Linh, việc phát hiện lá vàng hôm nay rất hữu ích.)* |
| Linh | (mỉm cười) ありがとうございます。<br>*(Em cảm ơn chị.)* |
| Yamamoto | (đi qua) リンちゃん、<ruby>明日<rt>あした</rt></ruby>もよろしくな。<br>*(Linh, mai cũng nhờ em nhé.)* |
| Linh | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng! Em xin phép về trước.)* |
| Saori | <ruby>気<rt>き</rt></ruby>をつけて。<br>*(Cẩn thận nhé.)* |

---

## Tình huống 12 — Ký túc, bếp · 19:30, nấu cơm cùng Dewi

*Linh và Dewi cùng chuẩn bị bữa tối.*

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、<ruby>今日<rt>きょう</rt></ruby>はどうだった?<br>*(Em Linh, hôm nay thế nào?)* |
| Linh | <ruby>水<rt>みず</rt></ruby>やりと<ruby>肥料<rt>ひりょう</rt></ruby>をやりました。それから、きゅうりの<ruby>葉<rt>は</rt></ruby>っぱが<ruby>黄色<rt>きいろ</rt></ruby>くなっているのを<ruby>見<rt>み</rt></ruby>つけました。<br>*(Em tưới nước và bón phân. Còn phát hiện ra lá dưa leo bị vàng.)* |
| Dewi | え、すごい!<ruby>初<rt>はじ</rt></ruby>めての<ruby>週<rt>しゅう</rt></ruby>で<ruby>見<rt>み</rt></ruby>つけたの?<br>*(Ồ, giỏi! Tuần đầu mà phát hiện được?)* |
| Linh | <ruby>偶然<rt>ぐうぜん</rt></ruby>です。<br>*(Tình cờ thôi ạ.)* |
| Dewi | <ruby>偶然<rt>ぐうぜん</rt></ruby>でも<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>農場<rt>のうじょう</rt></ruby>では<ruby>毎日<rt>まいにち</rt></ruby><ruby>観察<rt>かんさつ</rt></ruby>することが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Tình cờ cũng quan trọng. Ở nông trại quan sát mỗi ngày là quan trọng nhất.)* |
| Linh | <ruby>観察<rt>かんさつ</rt></ruby>...いい<ruby>言葉<rt>ことば</rt></ruby>ですね。メモします。<br>*(Kansatsu... từ hay nhỉ. Em ghi lại.)* |
| Dewi | リンさん、<ruby>今晩<rt>こんばん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がナシゴレンを<ruby>作<rt>つく</rt></ruby>る。<ruby>食<rt>た</rt></ruby>べたい?<br>*(Em Linh, tối nay chị làm nasi goreng. Em ăn không?)* |
| Linh | わあ、インドネシアの<ruby>料理<rt>りょうり</rt></ruby>ですね!<ruby>食<rt>た</rt></ruby>べたいです。<br>*(Ôi, món Indonesia! Em muốn ăn.)* |
| Dewi | リンさんもベトナム<ruby>料理<rt>りょうり</rt></ruby>、<ruby>今度<rt>こんど</rt></ruby><ruby>作<rt>つく</rt></ruby>ってね。<br>*(Em Linh cũng nấu món Việt cho chị nhé.)* |
| Linh | はい!<ruby>今度<rt>こんど</rt></ruby>フォーを<ruby>作<rt>つく</rt></ruby>ります。<br>*(Vâng! Lần sau em nấu phở.)* |

---

## Tình huống 13 — Phòng đôi · 21:30, gọi điện về cho mẹ

> Cảnh tiếng Việt — gọi về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Mẹ ơi, con đây. |
| Mẹ Linh | (tiếng Việt) Linh à, hôm nay thế nào? |
| Linh | (tiếng Việt) Hôm nay con tưới nước, rồi bón phân. Bón phân ở chỗ cách gốc 10 phân, mỗi cây một thìa, phủ đất lên trên. |
| Mẹ Linh | (tiếng Việt) Ủa, không bón ngay gốc à? |
| Linh | (tiếng Việt) Không mẹ. Bón ngay gốc thì rễ bị thương. Khác hồi mình làm ở quê đó mẹ. Phân ở đây gọi là 有機肥料 — phân hữu cơ, làm từ phân động vật, không có hoá chất. Có cái dấu JAS nữa. |
| Mẹ Linh | (tiếng Việt) Khoa học ghê. |
| Linh | (tiếng Việt) Chiều con phát hiện ra mấy lá dưa leo bị vàng. Con kêu chị Saori. Hai chị em đi báo cáo ông chủ. Ông khen con phát hiện sớm. |
| Mẹ Linh | (tiếng Việt) Tốt lắm con. Mắt tinh mới làm nông được. |
| Linh | (tiếng Việt) Chị Dewi nói: "trong nông nghiệp, quan sát mỗi ngày là quan trọng nhất". Con nhớ kỹ. Tối nay chị Dewi nấu món Indonesia, ngon lắm mẹ. |
| Em Trang | (tiếng Việt, ghé vào) Chị! Chị có quên em không đó? |
| Linh | (tiếng Việt) Đâu có quên. Hôm nào về chị dạy em cách bón phân kiểu Nhật. Vườn rau nhà mình sẽ ngon hơn nha. |
| Em Trang | (tiếng Việt) Hihi. Chị giỏi quá. |
| Linh | (tiếng Việt) Thôi mẹ với em ngủ đi. Mai con 6 giờ dậy. Con chào mẹ. |

---

## Đọng lại chương 4

Sau chương này Linh thành thạo 2 kỹ năng cơ bản và quan trọng nhất của nghề trồng rau nhà kính: **水やり** (tưới gốc, không tưới lá, 3 giây/cây cho cây đủ lớn, 2 giây cho cây nhỏ, đến khi đất chuyển đen) và **肥料** (bón cách gốc 10cm, một thìa/cây, phủ đất lên trên). Linh học cách **xác nhận lại chỉ thị** (〜でいいですか), **hỏi lại khi quên** (もう一度教えてください), và quan trọng nhất — **observation 観察**: phát hiện sớm bất thường ở lá vàng và **báo cáo ngay** lên Saori + 親方. Lần đầu được khen vì sự cẩn thận, không phải vì làm nhanh. Hiểu thêm khái niệm **有機肥料** + **JAS有機認証** — đặc trưng nông trại Yamamoto. Tình bạn quốc tế với Dewi ngày càng gần qua bữa cơm chung.

> Từ vựng & mẫu câu chương này: 水やり・肥料・有機肥料・有機・蒸れる・湿気・根本・株・列・葉っぱ・濡れる・苗・植える・観察・うどんこ病・黄色い・JAS・認証・調節・被害・〜でいいですか・もう一度教えてください・気づいてくれてありがとう

## Bí quyết chương

- **Tưới vào buổi sáng, không tưới trưa**: tránh hấp 蒸れる. Quy tắc bất biến của nhà kính Nhật.
- **Bón cách gốc 10cm + phủ đất**: tránh cháy rễ + tránh gió thổi bay. Khác cách bón VN.
- **観察 (kansatsu)** = quan sát mỗi ngày — Dewi chốt câu để Linh nhớ suốt 3 năm.
- **Báo cáo lỗi không phải lỗi của mình**: lá vàng do người khác tưới, nhưng Linh phát hiện thì vẫn báo — đây là 報連相 ở level cao hơn.
- **JAS有機認証**: dấu chứng nhận quốc gia Nhật cho nông sản hữu cơ — sách N5 đã đề cập để Linh dần quen thuật ngữ ngành.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 説明 | せつめい | THUYẾT MINH | Giải thích |
| 午前 | ごぜん | NGỌ TIỀN | Buổi sáng |
| 午後 | ごご | NGỌ HẬU | Buổi chiều |
| 水やり | みずやり | THUỶ | Tưới nước |
| 肥料 | ひりょう | PHÌ LIỆU | Phân bón |
| 昼間 | ひるま | TRÚ GIAN | Giữa trưa, ban ngày |
| 蒸れる | むれる | CHƯNG | Bị hấp, ẩm và nóng |
| 湿気 | しっけ | THẤP KHÍ | Độ ẩm |
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| 根本 | ねもと | CĂN BẢN | Phần gốc |
| 濡れる | ぬれる | NHU | Bị ướt |
| 株 | かぶ | CHU | Gốc cây |
| 秒 | びょう | DIỆU | Giây |
| 土 | つち | THỔ | Đất |
| 黒い | くろい | HẮC | Màu đen |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 強さ | つよさ | CƯỜNG | Lực, độ mạnh |
| 丁度 | ちょうど | ĐINH ĐỘ | Vừa đúng, vừa phải |
| 急ぐ | いそぐ | CẤP | Vội vàng |
| 端 | はし | ĐOAN | Đầu, cuối, rìa |
| 質問 | しつもん | CHẤT VẤN | Câu hỏi |
| 遠慮 | えんりょ | VIỄN LỰ | Ngại, e dè |
| 苗 | なえ | MIÊU | Cây con |
| 植える | うえる | THỰC | Trồng |
| 種類 | しゅるい | CHỦNG LOẠI | Loại |
| 涼しい | すずしい | LƯƠNG | Mát mẻ |
| 味噌汁 | みそしる | VỊ TƯƠNG TRẤP | Súp miso |
| 茶色 | ちゃいろ | TRÀ SẮC | Màu nâu |
| 粒 | つぶ | LẠP | Hạt |
| 有機 | ゆうき | HỮU CƠ | Hữu cơ |
| 動物 | どうぶつ | ĐỘNG VẬT | Động vật |
| 糞 | ふん | PHẨN | Phân |
| 臭い | くさい | XÚ | Hôi, có mùi |
| 化学 | かがく | HOÁ HỌC | Hoá học |
| 自然 | しぜん | TỰ NHIÊN | Tự nhiên |
| 認証 | にんしょう | NHẬN CHỨNG | Chứng nhận |
| 離す | はなす | LY | Tách ra, để cách |
| 量 | りょう | LƯỢNG | Lượng |
| 距離 | きょり | CỰ LY | Khoảng cách |
| 風 | かぜ | PHONG | Gió |
| 飛ぶ | とぶ | PHI | Bay |
| 黄色い | きいろい | HOÀNG SẮC | Màu vàng |
| うどんこ病 | うどんこびょう | BỆNH | Bệnh phấn trắng |
| 注意 | ちゅうい | CHÚ Ý | Chú ý |
| 気づく | きづく | KHÍ | Để ý ra, nhận ra |
| 捨てる | すてる | XẢ | Vứt đi |
| 調節 | ちょうせつ | ĐIỀU TIẾT | Điều chỉnh |
| 被害 | ひがい | BỊ HẠI | Thiệt hại |
| 観察 | かんさつ | QUAN SÁT | Quan sát |
| 偶然 | ぐうぜん | NGẪU NHIÊN | Tình cờ |
| 役に立つ | やくにたつ | DỊCH LẬP | Hữu ích, có tác dụng |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000005, 800000040, NULL, 'markdown_book', 'T5. Gieo hạt và ươm cây con (種まき・育苗)', '# Sách thực tập sinh nông nghiệp · T5. Gieo hạt và ươm cây con (種まき・育苗)

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp, Ibaraki, N5→N4). Học các mẫu hội thoại tiếng Nhật khi gieo hạt — ươm cây con: hỏi loại hạt, đếm số khay, báo cáo độ ẩm đất, xác nhận nhiệt độ nhà kính, xin phép tưới nước, hỏi lại khi chưa rõ thuật ngữ chuyên ngành.

---

## Bối cảnh

Tháng 5 năm 2025. Linh đã quen việc nhặt cỏ và thu dưa leo. Hôm nay 親方 Yamamoto bắt đầu dạy cô khâu quan trọng nhất đầu vụ — 種まき (gieo hạt) và 育苗 (ươm cây con) trong nhà kính (ハウス). Sai 1 khay là cả vụ mất giống. Saori-san sempai (người Nhật, 30 tuổi, con gái 親方) sẽ kèm sát. Dewi (Indonesia) và Riko (Philippines) cũng tham gia.

---

## Tình huống 1 — Sân nông trại · 6:30, 親方 Yamamoto họp phân công đầu ngày

| Vai | Lời thoại |
|---|---|
| Yamamoto | おはようございます。<ruby>今日<rt>きょう</rt></ruby>から<ruby>夏<rt>なつ</rt></ruby>の<ruby>種<rt>たね</rt></ruby>まきが<ruby>始<rt>はじ</rt></ruby>まります。リンさん、よく<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Chào buổi sáng. Từ hôm nay bắt đầu gieo hạt vụ hè. Linh, em nghe kỹ nhé.)* |
| Linh | はい、おはようございます。<ruby>何<rt>なに</rt></ruby>の<ruby>種<rt>たね</rt></ruby>をまきますか?<br>*(Vâng, chào buổi sáng ạ. Mình gieo hạt gì ạ?)* |
| Yamamoto | トマトとキュウリです。リンさんは<ruby>佐織<rt>さおり</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に、トマトの<ruby>苗床<rt>なえどこ</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>してください。<br>*(Cà chua và dưa leo. Linh đi với Saori chuẩn bị luống ươm cà chua.)* |
| Saori | リンちゃん、よろしくね。まずハウスに<ruby>行<rt>い</rt></ruby>こう。<br>*(Linh, nhờ em nhé. Mình ra nhà kính trước.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ chị ạ.)* |
| Dewi | <ruby>親方<rt>おやかた</rt></ruby>、わたしたちはキュウリですね?<br>*(Sếp ơi, bọn em làm dưa leo đúng không ạ?)* |
| Yamamoto | そうです。リコさんと<ruby>二人<rt>ふたり</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Đúng. Hai em Dewi với Riko cố gắng nhé.)* |

---

## Tình huống 2 — Nhà kính số 2 · 7:00, Saori giải thích 育苗 và セルトレイ

*Trong ハウス nóng ẩm, hàng dãy セルトレイ (khay ươm 128 ô) xếp trên bàn.*

| Vai | Lời thoại |
|---|---|
| Saori | これは「セルトレイ」。<ruby>一<rt>ひと</rt></ruby>つのトレイに128の<ruby>穴<rt>あな</rt></ruby>があるよ。<br>*(Đây là "khay tế bào". Mỗi khay có 128 lỗ.)* |
| Linh | 128…ですか。たくさんありますね。<br>*(128 ạ... Nhiều ô quá.)* |
| Saori | <ruby>各<rt>かく</rt></ruby><ruby>穴<rt>あな</rt></ruby>に<ruby>種<rt>たね</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つずつまきます。<ruby>深<rt>ふか</rt></ruby>さは5ミリ、<ruby>覚<rt>おぼ</rt></ruby>えてね。<br>*(Mỗi lỗ gieo một hạt. Sâu 5 ly, em nhớ nhé.)* |
| Linh | 5ミリ、はい。<ruby>指<rt>ゆび</rt></ruby>で<ruby>押<rt>お</rt></ruby>しますか?<br>*(5 ly, vâng. Lấy ngón tay ấn ạ?)* |
| Saori | この<ruby>棒<rt>ぼう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うの。「<ruby>播種<rt>はしゅ</rt></ruby><ruby>棒<rt>ぼう</rt></ruby>」って<ruby>言<rt>い</rt></ruby>うよ。<br>*(Dùng cái que này. Gọi là "que gieo hạt".)* |
| Linh | はしゅぼう…ちょっと、もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>言<rt>い</rt></ruby>ってもらえますか?<br>*(Hashu-bou... Em xin lỗi, chị nói lại một lần được không ạ?)* |
| Saori | は・しゅ・ぼう。「<ruby>播<rt>は</rt></ruby><ruby>種<rt>しゅ</rt></ruby>」は「<ruby>種<rt>たね</rt></ruby>をまく」<ruby>意味<rt>いみ</rt></ruby>。<br>*(Ha-shu-bou. "Bá chủng" nghĩa là "gieo hạt".)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>播種<rt>はしゅ</rt></ruby><ruby>棒<rt>ぼう</rt></ruby>ですね。<br>*(À, em hiểu rồi. Que gieo hạt ạ.)* |

---

## Tình huống 3 — Nhà kính số 2 · 7:20, Linh hỏi về 培養土

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>土<rt>つち</rt></ruby>を<ruby>入<rt>い</rt></ruby>れるよ。これは<ruby>普通<rt>ふつう</rt></ruby>の<ruby>土<rt>つち</rt></ruby>じゃなくて、「<ruby>培養土<rt>ばいようど</rt></ruby>」。<br>*(Mình đổ đất nhé. Đây không phải đất thường, mà là "đất ươm".)* |
| Linh | <ruby>培養土<rt>ばいようど</rt></ruby>と<ruby>普通<rt>ふつう</rt></ruby>の<ruby>土<rt>つち</rt></ruby>はどう<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Đất ươm khác đất thường ở chỗ nào ạ?)* |
| Saori | <ruby>培養土<rt>ばいようど</rt></ruby>は<ruby>軽<rt>かる</rt></ruby>くて、<ruby>水<rt>みず</rt></ruby>はけがいい。<ruby>肥料<rt>ひりょう</rt></ruby>も<ruby>入<rt>はい</rt></ruby>ってる。<br>*(Đất ươm nhẹ, thoát nước tốt. Có sẵn phân nữa.)* |
| Linh | <ruby>水<rt>みず</rt></ruby>はけ…?<br>*(Thoát nước...?)* |
| Saori | <ruby>水<rt>みず</rt></ruby>がよく<ruby>抜<rt>ぬ</rt></ruby>けることだよ。<ruby>根<rt>ね</rt></ruby>が<ruby>腐<rt>くさ</rt></ruby>らない。<br>*(Là nước thoát ra tốt ấy. Rễ không bị thối.)* |
| Linh | なるほど。ベトナムの<ruby>田<rt>た</rt></ruby>んぼと<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Ra vậy. Khác ruộng lúa Việt Nam ạ.)* |
| Saori | そうだね。トマトは<ruby>水<rt>みず</rt></ruby>が<ruby>多<rt>おお</rt></ruby>すぎると<ruby>病気<rt>びょうき</rt></ruby>になるから。<br>*(Đúng đó. Cà chua mà nhiều nước quá là bệnh.)* |
| Linh | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ chú ý ạ.)* |

---

## Tình huống 4 — Nhà kính số 2 · 7:45, Linh gieo hạt lần đầu — lỗi sót

| Vai | Lời thoại |
|---|---|
| Saori | じゃあ、リンちゃん、やってみて。1<ruby>穴<rt>あな</rt></ruby>に1<ruby>粒<rt>つぶ</rt></ruby>だよ。<br>*(Vậy Linh thử đi. Mỗi lỗ một hạt nhé.)* |
| Linh | はい。(gieo từng hạt)…<ruby>終<rt>お</rt></ruby>わりました。<br>*(Vâng. ... Em xong rồi.)* |
| Saori | (kiểm tra) リンちゃん、ここ、<ruby>2粒<rt>ふたつぶ</rt></ruby><ruby>入<rt>はい</rt></ruby>ってるよ。それから、ここは<ruby>空<rt>から</rt></ruby>。<br>*(Linh, chỗ này 2 hạt nè. Còn chỗ này trống.)* |
| Linh | あっ、すみません!<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>します。<br>*(Ôi, em xin lỗi! Em lấy ra ạ.)* |
| Saori | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ピンセットを<ruby>使<rt>つか</rt></ruby>って。<ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>間違<rt>まちが</rt></ruby>えるよ。<br>*(Không sao, dùng nhíp đi. Mới đầu ai cũng sai.)* |
| Linh | はい、ありがとうございます。ゆっくり<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em cảm ơn chị. Em kiểm tra từ từ.)* |
| Saori | そうそう。<ruby>急<rt>いそ</rt></ruby>がなくていいから、<ruby>丁寧<rt>ていねい</rt></ruby>にね。<br>*(Đúng vậy. Không cần vội, cứ cẩn thận thôi.)* |

---

## Tình huống 5 — Nhà kính số 2 · 8:30, Saori dạy đếm khay — báo cáo số lượng

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、トレイは<ruby>何枚<rt>なんまい</rt></ruby>できた?<br>*(Linh, được mấy khay rồi?)* |
| Linh | えっと…<ruby>五枚<rt>ごまい</rt></ruby>です。<br>*(Để xem ạ... Năm khay ạ.)* |
| Saori | <ruby>今日<rt>きょう</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>三十枚<rt>さんじゅうまい</rt></ruby>。<ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>十五枚<rt>じゅうごまい</rt></ruby>できる?<br>*(Mục tiêu hôm nay 30 khay. Buổi sáng làm được 15 khay không?)* |
| Linh | <ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>親方<rt>おやかた</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しますか?<br>*(Em cố ạ. Có báo cáo với sếp không ạ?)* |
| Saori | お<ruby>昼<rt>ひる</rt></ruby>に「<ruby>午前中<rt>ごぜんちゅう</rt></ruby>、トマトのセルトレイ<ruby>十五枚<rt>じゅうごまい</rt></ruby>、<ruby>終<rt>お</rt></ruby>わりました」って<ruby>言<rt>い</rt></ruby>えばOK。<br>*(Đến trưa nói "Buổi sáng xong 15 khay khay tế bào cà chua" là được.)* |
| Linh | はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>枚<rt>まい</rt></ruby>はトレイの<ruby>数<rt>かず</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですね。<br>*(Vâng, em nhớ. "Mai" là cách đếm khay ạ.)* |
| Saori | そう。<ruby>平<rt>たい</rt></ruby>らな<ruby>物<rt>もの</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby>「<ruby>枚<rt>まい</rt></ruby>」だよ。<br>*(Đúng. Đồ phẳng cái gì cũng "mai" hết.)* |

---

## Tình huống 6 — Nhà kính số 2 · 9:15, Linh hỏi về nhiệt độ — ẩm độ

*Linh nhìn lên đồng hồ đo treo trên cột — chỉ 32度.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、ハウスの<ruby>中<rt>なか</rt></ruby>、32<ruby>度<rt>ど</rt></ruby>です。<ruby>暑<rt>あつ</rt></ruby>すぎませんか?<br>*(Chị Saori, trong nhà kính 32 độ ạ. Có nóng quá không ạ?)* |
| Saori | あ、<ruby>確認<rt>かくにん</rt></ruby>ありがとう。30<ruby>度<rt>ど</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えたら<ruby>窓<rt>まど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けるよ。<br>*(Á, cảm ơn em báo. Quá 30 độ là mở cửa sổ.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>が<ruby>開<rt>あ</rt></ruby>けてもいいですか?<br>*(Em mở được không ạ?)* |
| Saori | うん、お<ruby>願<rt>ねが</rt></ruby>い。<ruby>右側<rt>みぎがわ</rt></ruby>の<ruby>窓<rt>まど</rt></ruby>を<ruby>三<rt>みっ</rt></ruby>つ、<ruby>半分<rt>はんぶん</rt></ruby>だけね。<br>*(Ừ, nhờ em. Ba cửa bên phải, mở nửa thôi nhé.)* |
| Linh | はい。<ruby>湿度<rt>しつど</rt></ruby>は?<br>*(Vâng. Còn độ ẩm ạ?)* |
| Saori | <ruby>湿度<rt>しつど</rt></ruby>は70パーセント。ちょうどいいよ。<ruby>発芽<rt>はつが</rt></ruby>には70から80が<ruby>理想<rt>りそう</rt></ruby>。<br>*(Độ ẩm 70%. Vừa đúng. Để nảy mầm thì 70-80 là lý tưởng.)* |
| Linh | <ruby>発芽<rt>はつが</rt></ruby>…?<br>*(Phát nha...?)* |
| Saori | <ruby>種<rt>たね</rt></ruby>が<ruby>芽<rt>め</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すこと。<br>*(Là hạt nảy mầm ấy.)* |
| Linh | あ、はい!<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(À vâng! Em nhớ ạ.)* |

---

## Tình huống 7 — Nhà kính số 2 · 10:00, xin phép tưới nước

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、<ruby>土<rt>つち</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>乾<rt>かわ</rt></ruby>いています。<ruby>水<rt>みず</rt></ruby>をやってもいいですか?<br>*(Chị Saori, đất hơi khô ạ. Em tưới nước được không?)* |
| Saori | <ruby>指<rt>ゆび</rt></ruby>で<ruby>触<rt>さわ</rt></ruby>ってみて。<ruby>表面<rt>ひょうめん</rt></ruby>だけ<ruby>乾<rt>かわ</rt></ruby>いてる?<ruby>中<rt>なか</rt></ruby>もかな?<br>*(Em chạm ngón tay xem. Khô bề mặt hay khô cả trong?)* |
| Linh | <ruby>表面<rt>ひょうめん</rt></ruby>だけです。<ruby>中<rt>なか</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>湿<rt>しめ</rt></ruby>っています。<br>*(Chỉ bề mặt. Trong vẫn hơi ẩm ạ.)* |
| Saori | じゃあ、まだいい。やりすぎると<ruby>種<rt>たね</rt></ruby>が<ruby>腐<rt>くさ</rt></ruby>る。<br>*(Vậy thì chưa cần. Tưới quá là hạt thối đó.)* |
| Linh | はい、わかりました。いつやりますか?<br>*(Vâng, em hiểu. Khi nào tưới ạ?)* |
| Saori | <ruby>朝<rt>あさ</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby>と<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby>。<ruby>霧吹<rt>きりふ</rt></ruby>きで、やさしくね。<br>*(Sáng một lần và chiều một lần. Bằng bình xịt sương, nhẹ tay nhé.)* |
| Linh | <ruby>霧吹<rt>きりふ</rt></ruby>き…、これですね?<br>*(Bình xịt sương... cái này phải không ạ?)* |
| Saori | そう、それ。<br>*(Đúng cái đó.)* |

---

## Tình huống 8 — Nhà kính số 3 · 10:40, gặp Dewi và Riko khu dưa leo

| Vai | Lời thoại |
|---|---|
| Dewi | リンちゃん、こっちはどう?<br>*(Linh ơi, bên em thế nào?)* |
| Linh | トマトの<ruby>種<rt>たね</rt></ruby>まきです。<ruby>十枚<rt>じゅうまい</rt></ruby>できました。<br>*(Em gieo hạt cà chua. Được 10 khay rồi.)* |
| Riko | わたしたちはキュウリ。リコは<ruby>八枚<rt>はちまい</rt></ruby>。<br>*(Bọn em là dưa leo. Riko được 8 khay.)* |
| Linh | キュウリの<ruby>種<rt>たね</rt></ruby>は<ruby>大<rt>おお</rt></ruby>きいですか?<br>*(Hạt dưa leo to không ạ?)* |
| Dewi | トマトより<ruby>大<rt>おお</rt></ruby>きいよ。<ruby>見<rt>み</rt></ruby>る?<br>*(To hơn cà chua. Xem không?)* |
| Linh | はい!(nhìn) <ruby>本当<rt>ほんとう</rt></ruby>だ、<ruby>平<rt>たい</rt></ruby>らで<ruby>白<rt>しろ</rt></ruby>いですね。<br>*(Vâng! Đúng thật, dẹt và trắng ạ.)* |
| Riko | リン、お<ruby>昼<rt>ひる</rt></ruby>はどうする?<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>行<rt>い</rt></ruby>く?<br>*(Linh, trưa làm gì? Đi nhà ăn không?)* |
| Linh | うん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<br>*(Ừ, đi cùng nhé.)* |

---

## Tình huống 9 — Nhà ăn ký túc · 12:15, báo cáo 親方 buổi trưa

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>午前中<rt>ごぜんちゅう</rt></ruby>、トマトのセルトレイ<ruby>十五枚<rt>じゅうごまい</rt></ruby>、<ruby>終<rt>お</rt></ruby>わりました。<br>*(Sếp, em báo cáo ạ. Buổi sáng xong 15 khay tế bào cà chua ạ.)* |
| Yamamoto | おお、<ruby>順調<rt>じゅんちょう</rt></ruby>だね。<ruby>失敗<rt>しっぱい</rt></ruby>はなかった?<br>*(Ồ, suôn sẻ đấy. Có lỗi gì không?)* |
| Linh | <ruby>最初<rt>さいしょ</rt></ruby>、<ruby>二粒<rt>ふたつぶ</rt></ruby><ruby>入<rt>い</rt></ruby>れてしまいました。<ruby>佐織<rt>さおり</rt></ruby>さんに<ruby>教<rt>おそ</rt></ruby>わって、<ruby>直<rt>なお</rt></ruby>しました。<br>*(Lúc đầu em lỡ bỏ 2 hạt. Chị Saori chỉ rồi em sửa lại ạ.)* |
| Yamamoto | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うのが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。よくできた。<br>*(Trung thực báo cáo là quan trọng nhất. Tốt lắm.)* |
| Linh | ありがとうございます。<ruby>午後<rt>ごご</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cảm ơn ạ. Chiều cũng nhờ sếp ạ.)* |
| Yamamoto | <ruby>午後<rt>ごご</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>り<ruby>十五枚<rt>じゅうごまい</rt></ruby>。それから、<ruby>先週<rt>せんしゅう</rt></ruby>まいた<ruby>苗<rt>なえ</rt></ruby>の<ruby>水<rt>みず</rt></ruby>やりも<ruby>頼<rt>たの</rt></ruby>む。<br>*(Chiều làm nốt 15 khay. Rồi tưới luôn đám mầm tuần trước nhé.)* |
| Linh | はい、わかりました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 10 — Nhà kính số 1 · 14:30, tưới cây con — phát hiện mầm vừa nhú

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、<ruby>見<rt>み</rt></ruby>てください!<ruby>芽<rt>め</rt></ruby>が<ruby>出<rt>で</rt></ruby>ています!<br>*(Chị Saori, xem nè! Mầm nhú lên rồi!)* |
| Saori | わ、ほんとだ。<ruby>先週<rt>せんしゅう</rt></ruby>まいたトマトだね。<ruby>順調<rt>じゅんちょう</rt></ruby>。<br>*(Ồ, thật rồi. Cà chua tuần trước nè. Suôn sẻ.)* |
| Linh | かわいい…<ruby>小<rt>ちい</rt></ruby>さい<ruby>葉<rt>は</rt></ruby>っぱが<ruby>二<rt>ふた</rt></ruby>つあります。<br>*(Dễ thương quá... Có hai lá nhỏ.)* |
| Saori | これは「<ruby>子葉<rt>しよう</rt></ruby>」って<ruby>言<rt>い</rt></ruby>うの。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>葉<rt>は</rt></ruby>っぱ。<br>*(Đây gọi là "lá mầm". Lá đầu tiên đó.)* |
| Linh | しよう…<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>葉<rt>は</rt></ruby>っぱはいつですか?<br>*(Lá mầm... Lá thật khi nào ra ạ?)* |
| Saori | あと<ruby>一週間<rt>いっしゅうかん</rt></ruby>ぐらい。「<ruby>本葉<rt>ほんば</rt></ruby>」が<ruby>出<rt>で</rt></ruby>たら、<ruby>定植<rt>ていしょく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>。<br>*(Khoảng tuần nữa. Khi "lá thật" ra là chuẩn bị trồng vào ruộng.)* |
| Linh | ていしょく?<br>*(Định thực?)* |
| Saori | <ruby>畑<rt>はたけ</rt></ruby>に<ruby>植<rt>う</rt></ruby>えること。<ruby>苗<rt>なえ</rt></ruby>から<ruby>畑<rt>はたけ</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>すんだよ。<br>*(Là trồng xuống ruộng. Chuyển cây con từ khay xuống ruộng ấy.)* |
| Linh | わぁ、<ruby>楽<rt>たの</rt></ruby>しみです!<br>*(Wow, em mong chờ quá!)* |

---

## Tình huống 11 — Nhà kính số 1 · 15:30, Saori chỉ cách phân biệt mầm khỏe

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>苗<rt>なえ</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てね。<ruby>元気<rt>げんき</rt></ruby>な<ruby>苗<rt>なえ</rt></ruby>と<ruby>弱<rt>よわ</rt></ruby>い<ruby>苗<rt>なえ</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かる?<br>*(Linh, em nhìn cây con kỹ nhé. Phân biệt cây khỏe với cây yếu được không?)* |
| Linh | うーん、<ruby>色<rt>いろ</rt></ruby>ですか?<br>*(Hmm, do màu ạ?)* |
| Saori | <ruby>色<rt>いろ</rt></ruby>もそう。<ruby>濃<rt>こ</rt></ruby>い<ruby>緑<rt>みどり</rt></ruby>が<ruby>元気<rt>げんき</rt></ruby>。<ruby>薄<rt>うす</rt></ruby>い<ruby>黄色<rt>きいろ</rt></ruby>っぽいのは<ruby>弱<rt>よわ</rt></ruby>い。<br>*(Màu cũng vậy. Xanh đậm là khỏe. Hơi vàng nhạt là yếu.)* |
| Linh | これは…<ruby>濃<rt>こ</rt></ruby>い<ruby>緑<rt>みどり</rt></ruby>ですね。<br>*(Cái này... xanh đậm ạ.)* |
| Saori | そう、<ruby>元気<rt>げんき</rt></ruby>。それから<ruby>茎<rt>くき</rt></ruby>を<ruby>見<rt>み</rt></ruby>て。<ruby>太<rt>ふと</rt></ruby>いほうがいい。<br>*(Đúng, khỏe. Rồi nhìn thân nữa. Mập là tốt.)* |
| Linh | <ruby>細<rt>ほそ</rt></ruby>くて<ruby>長<rt>なが</rt></ruby>いのは<ruby>弱<rt>よわ</rt></ruby>いですか?<br>*(Mảnh và dài là yếu ạ?)* |
| Saori | <ruby>正解<rt>せいかい</rt></ruby>!「<ruby>徒長<rt>とちょう</rt></ruby>」って<ruby>言<rt>い</rt></ruby>うよ。<ruby>光<rt>ひかり</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないとそうなる。<br>*(Chuẩn! Gọi là "vống cao". Thiếu sáng là thành vậy.)* |
| Linh | とちょう…<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Tochou... em nhớ ạ.)* |

---

## Tình huống 12 — Sân nông trại · 17:30, 親方 Yamamoto tổng kết ngày

| Vai | Lời thoại |
|---|---|
| Yamamoto | みんな、<ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさま。リンさん、<ruby>三十枚<rt>さんじゅうまい</rt></ruby><ruby>終<rt>お</rt></ruby>わった?<br>*(Mọi người vất vả rồi. Linh, xong 30 khay chưa?)* |
| Linh | はい、<ruby>三十枚<rt>さんじゅうまい</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<ruby>苗<rt>なえ</rt></ruby>の<ruby>水<rt>みず</rt></ruby>やりも<ruby>終<rt>お</rt></ruby>わりました。<br>*(Vâng, xong 30 khay ạ. Em cũng tưới mầm xong rồi.)* |
| Yamamoto | よくやった。<ruby>明日<rt>あした</rt></ruby>はキュウリの<ruby>苗床<rt>なえどこ</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>ってください。<br>*(Giỏi lắm. Mai phụ luống ươm dưa leo nhé.)* |
| Linh | はい、わかりました。<ruby>明日<rt>あした</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rõ. Mai cũng nhờ sếp ạ.)* |
| Saori | <ruby>親方<rt>おやかた</rt></ruby>、リンちゃん、<ruby>覚<rt>おぼ</rt></ruby>えが<ruby>早<rt>はや</rt></ruby>いです。<ruby>播種<rt>はしゅ</rt></ruby><ruby>棒<rt>ぼう</rt></ruby>も<ruby>霧吹<rt>きりふ</rt></ruby>きも、もう<ruby>一人<rt>ひとり</rt></ruby>でできます。<br>*(Sếp ơi, Linh học nhanh lắm. Que gieo, bình xịt em tự làm được rồi.)* |
| Yamamoto | そうか。リンさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ってるね。<br>*(Vậy à. Linh chăm chỉ thật đấy.)* |
| Linh | (cúi đầu) ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 13 — Phòng ký túc · 21:00, gọi điện về Đồng Tháp

> Cảnh tiếng Việt — Linh gọi mẹ qua Zalo.

| Vai | Lời thoại |
|---|---|
| Mẹ | A lô con! Hôm nay sao rồi? Mày kêu hôm nay học làm gì lạ lắm? |
| Linh | Mẹ ơi, hôm nay con gieo hạt cà chua trong nhà kính. Mỗi cái khay 128 lỗ, mỗi lỗ một hạt. Tỉ mỉ lắm mẹ. |
| Mẹ | Trời, sao mà giống mẹ gieo cải ở vườn vậy con? |
| Linh | Khác chứ mẹ. Bên này gọi là 培養土 — đất ươm pha sẵn, nhẹ hơn đất mình. Còn cây con gọi là 苗 (nae). Mầm đầu tiên gọi là 子葉 (shiyou). |
| Mẹ | Trời ơi tiếng Nhật khó quá. Mẹ chỉ biết nông gia thôi. |
| Linh | Con cũng đang học từ từ mẹ. Sếp Yamamoto khen con học nhanh đó! Hôm nay con báo cáo "Buổi sáng xong 15 khay" bằng tiếng Nhật. |
| Mẹ | Giỏi quá con gái. Ăn uống đầy đủ nha. Mai mẹ gửi khô cá lóc qua. |
| Linh | Dạ! Con thèm khô cá lóc lắm rồi. Con yêu mẹ! |
| Mẹ | Mẹ cũng yêu con. Ngủ ngon nha. |

---

## Đọng lại chương 5

Linh trải qua ngày đầu thực sự "làm nông" tại Nhật: học **種まき** (gieo hạt) trên **セルトレイ** 128 ô — mỗi lỗ 1 hạt, sâu 5 mm với **播種棒**, trong **培養土** chuyên dụng. Cô làm quen cách đếm **〜枚** cho khay phẳng, hiểu khái niệm **発芽**, **子葉**, **本葉**, **定植**, **徒長**, và phân biệt mầm khỏe/yếu qua màu và độ mập của thân. Kỹ năng giao tiếp: **〜てもいいですか** (xin phép tưới/mở cửa), **もう一度言ってもらえますか** (hỏi lại thuật ngữ), **報告** trung thực cả lỗi sai (2 hạt 1 lỗ). 親方 Yamamoto khen "正直に言うのが一番大事".

> Từ vựng & mẫu câu chương này: 種まき・育苗・苗床・セルトレイ・播種棒・培養土・水はけ・肥料・発芽・子葉・本葉・定植・徒長・霧吹き・湿度・温度・〜枚・〜粒・〜てもいいですか・もう一度言ってもらえますか・報告します・順調

---

## Bí quyết chương

- **〜枚** đếm vật phẳng (khay, lá, giấy). **〜粒** đếm hạt nhỏ (種, 米, 薬).
- Trong nông nghiệp Nhật, thuật ngữ Hán đôi khi dài (播種・定植・徒長) — khi không hiểu, hỏi lại bằng "もう一度言ってもらえますか" rồi nhờ giải thích "〜はどういう意味ですか".
- Báo cáo 親方 luôn theo cấu trúc: [thời gian] + [việc] + [số lượng] + 終わりました.
- Lỗi sai PHẢI báo ngay — Yamamoto coi trọng 正直 hơn kết quả hoàn hảo.
- "〜てもいいですか" là mẫu xin phép cơ bản — luôn dùng trước khi tự ý làm gì với cây/dụng cụ chưa được giao.
- 湿度 70-80% và 温度 25-30度 là điều kiện 発芽 lý tưởng cho cà chua mùa hè.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 種まき | たねまき | CHỦNG | gieo hạt |
| 育苗 | いくびょう | DỤC MIÊU | ươm cây con |
| 苗床 | なえどこ | MIÊU SÀNG | luống ươm |
| 苗 | なえ | MIÊU | cây con, mầm cây |
| 種 | たね | CHỦNG | hạt giống |
| セルトレイ | — | — | khay tế bào (khay ươm 128 ô) |
| 穴 | あな | HUYỆT | lỗ |
| 粒 | つぶ | LẠP | hạt (đơn vị đếm) |
| 播種棒 | はしゅぼう | BÁ CHỦNG BỔNG | que gieo hạt |
| 培養土 | ばいようど | BỒI DƯỠNG THỔ | đất ươm chuyên dụng |
| 水はけ | みずはけ | THỦY | sự thoát nước |
| 肥料 | ひりょう | PHÌ LIỆU | phân bón |
| 根 | ね | CĂN | rễ |
| 発芽 | はつが | PHÁT NHA | nảy mầm |
| 子葉 | しよう | TỬ DIỆP | lá mầm |
| 本葉 | ほんば | BẢN DIỆP | lá thật |
| 茎 | くき | HÀNH | thân cây |
| 定植 | ていしょく | ĐỊNH THỰC | trồng xuống ruộng |
| 徒長 | とちょう | ĐỒ TRƯỜNG | vống cao (cây yếu mảnh dài) |
| 霧吹き | きりふき | VỤ XUY | bình xịt sương |
| 湿度 | しつど | THẤP ĐỘ | độ ẩm |
| 温度 | おんど | ÔN ĐỘ | nhiệt độ |
| 枚 | まい | MAI | (đếm vật phẳng) |
| ハウス | — | — | nhà kính |
| 親方 | おやかた | THÂN PHƯƠNG | sếp (nông trại) |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 正直 | しょうじき | CHÍNH TRỰC | trung thực |
| 順調 | じゅんちょう | THUẬN ĐIỆU | suôn sẻ |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 丁寧 | ていねい | ĐINH NINH | cẩn thận, chu đáo |
| 表面 | ひょうめん | BIỂU DIỆN | bề mặt |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000006, 800000040, NULL, 'markdown_book', 'T6. Sâu bệnh đầu tiên và phun thuốc (害虫と農薬)', '# Sách thực tập sinh nông nghiệp · T6. Sâu bệnh đầu tiên và phun thuốc (害虫と農薬)

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp, Ibaraki, N5→N4). Học các mẫu hội thoại tiếng Nhật khi phát hiện sâu bệnh: gọi sempai khẩn, mô tả triệu chứng (lá vàng/sâu/đốm), nhận chỉ dẫn cách ly luống, học pha 農薬 đúng tỉ lệ, mặc đồ bảo hộ, ghi sổ phun thuốc.

---

## Bối cảnh

Đầu tháng 6 năm 2025. Cây cà chua đã 定植 ra ruộng và vào nhà kính chính được 3 tuần. Sáng nay khi đi kiểm tra hàng đầu, Linh phát hiện một số lá có đốm vàng và lỗ thủng nhỏ. Đây là lần đầu cô đối mặt với sâu bệnh — phải báo cáo 親方 ngay, và học cách phun **農薬** (thuốc trừ sâu) đúng quy trình an toàn của Nhật.

---

## Tình huống 1 — Nhà kính số 1 · 6:45, Linh phát hiện lá lạ — gọi Saori

*Linh đang đi giữa hàng cà chua, ngừng lại ở cây thứ 5 hàng B.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん!ちょっと<ruby>来<rt>き</rt></ruby>てください!<br>*(Chị Saori! Chị qua đây một chút ạ!)* |
| Saori | (chạy đến) どうしたの?<br>*(Sao vậy em?)* |
| Linh | この<ruby>葉<rt>は</rt></ruby>っぱを<ruby>見<rt>み</rt></ruby>てください。<ruby>黄色<rt>きいろ</rt></ruby>い<ruby>点<rt>てん</rt></ruby>があります。それから、<ruby>穴<rt>あな</rt></ruby>も<ruby>開<rt>あ</rt></ruby>いています。<br>*(Chị xem lá này ạ. Có đốm vàng. Còn bị thủng lỗ nữa ạ.)* |
| Saori | (cúi xuống xem) あ、これは…<ruby>害虫<rt>がいちゅう</rt></ruby>だね。<ruby>裏<rt>うら</rt></ruby>を<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Á, cái này... là sâu hại rồi. Lật xuống xem.)* |
| Linh | (lật lá) わ!<ruby>小<rt>ちい</rt></ruby>さい<ruby>虫<rt>むし</rt></ruby>がたくさんいます!<br>*(Ôi! Có nhiều con bọ nhỏ quá!)* |
| Saori | アブラムシだ。<ruby>緑色<rt>みどりいろ</rt></ruby>の<ruby>小<rt>ちい</rt></ruby>さい<ruby>虫<rt>むし</rt></ruby>。すぐ<ruby>親方<rt>おやかた</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しよう。<br>*(Rệp đó. Bọ xanh nhỏ. Báo sếp ngay.)* |
| Linh | はい!<br>*(Vâng!)* |

---

## Tình huống 2 — Nhà kính số 1 · 6:55, báo cáo 親方 Yamamoto

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>親方<rt>おやかた</rt></ruby>!ハウス1の<ruby>B列<rt>ビーれつ</rt></ruby>5<ruby>番目<rt>ばんめ</rt></ruby>のトマトにアブラムシが<ruby>付<rt>つ</rt></ruby>いています。<br>*(Sếp! Cây cà chua thứ 5 hàng B nhà kính 1 bị rệp ạ.)* |
| Yamamoto | (đến nhanh) どのぐらい?<br>*(Nhiều không?)* |
| Linh | <ruby>葉<rt>は</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>に、たぶん…30<ruby>匹<rt>ぴき</rt></ruby>ぐらいです。<br>*(Mặt sau lá, chắc... khoảng 30 con ạ.)* |
| Yamamoto | <ruby>他<rt>ほか</rt></ruby>の<ruby>株<rt>かぶ</rt></ruby>は?<br>*(Cây khác thì sao?)* |
| Saori | <ruby>隣<rt>となり</rt></ruby>の2<ruby>株<rt>かぶ</rt></ruby>にも<ruby>少<rt>すこ</rt></ruby>しいます。それ<ruby>以外<rt>いがい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>そうです。<br>*(Hai cây bên cạnh cũng có ít. Còn lại có vẻ ổn.)* |
| Yamamoto | よし、<ruby>早期発見<rt>そうきはっけん</rt></ruby>でよかった。<ruby>今日<rt>きょう</rt></ruby>、<ruby>農薬<rt>のうやく</rt></ruby>をまく。リンさん、いい<ruby>機会<rt>きかい</rt></ruby>だ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しよう。<br>*(Tốt, phát hiện sớm là may. Hôm nay phun thuốc. Linh, dịp tốt đấy. Cùng học nào.)* |
| Linh | はい!よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng! Nhờ sếp ạ.)* |

---

## Tình huống 3 — Kho · 7:30, Yamamoto giải thích phân loại 農薬

*Trong kho có tủ riêng khóa chìa, dán nhãn 「農薬保管庫」.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>農薬<rt>のうやく</rt></ruby>は<ruby>危<rt>あぶ</rt></ruby>ないから、<ruby>必<rt>かなら</rt></ruby>ず<ruby>鍵<rt>かぎ</rt></ruby>のかかる<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>します。<br>*(Linh, thuốc nông nguy hiểm nên phải cất trong nơi có khóa.)* |
| Linh | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng em rõ ạ.)* |
| Yamamoto | <ruby>農薬<rt>のうやく</rt></ruby>には<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>殺虫剤<rt>さっちゅうざい</rt></ruby>、<ruby>殺菌剤<rt>さっきんざい</rt></ruby>、<ruby>除草剤<rt>じょそうざい</rt></ruby>。<br>*(Thuốc nông có 3 loại: thuốc trừ sâu, thuốc trừ nấm, thuốc diệt cỏ.)* |
| Linh | アブラムシだから…<ruby>殺虫剤<rt>さっちゅうざい</rt></ruby>ですか?<br>*(Rệp thì... dùng thuốc trừ sâu ạ?)* |
| Yamamoto | そうです。<ruby>今日<rt>きょう</rt></ruby>はこれ。「<ruby>有機<rt>ゆうき</rt></ruby>JAS<ruby>対応<rt>たいおう</rt></ruby>」のものです。<br>*(Đúng. Hôm nay dùng cái này. Loại "đáp ứng JAS hữu cơ".)* |
| Linh | <ruby>有機<rt>ゆうき</rt></ruby>JAS?<br>*(Hữu cơ JAS?)* |
| Yamamoto | <ruby>日本<rt>にほん</rt></ruby>の<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>の<ruby>基準<rt>きじゅん</rt></ruby>。うちは<ruby>有機<rt>ゆうき</rt></ruby><ruby>栽培<rt>さいばい</rt></ruby>だから、<ruby>強<rt>つよ</rt></ruby>い<ruby>化学<rt>かがく</rt></ruby><ruby>農薬<rt>のうやく</rt></ruby>は<ruby>使<rt>つか</rt></ruby>えない。<br>*(Là tiêu chuẩn chứng nhận hữu cơ Nhật. Nhà mình trồng hữu cơ nên không dùng hóa chất mạnh.)* |
| Linh | なるほど。<br>*(Ra vậy ạ.)* |

---

## Tình huống 4 — Kho · 7:50, đọc nhãn — học tỉ lệ pha

| Vai | Lời thoại |
|---|---|
| Yamamoto | ラベルを<ruby>読<rt>よ</rt></ruby>みます。「<ruby>希釈<rt>きしゃく</rt></ruby><ruby>倍率<rt>ばいりつ</rt></ruby>:1000<ruby>倍<rt>ばい</rt></ruby>」<br>*(Đọc nhãn nhé. "Tỉ lệ pha loãng: 1000 lần".)* |
| Linh | 1000<ruby>倍<rt>ばい</rt></ruby>…<ruby>水<rt>みず</rt></ruby>を1000<ruby>倍<rt>ばい</rt></ruby><ruby>入<rt>い</rt></ruby>れますか?<br>*(1000 lần... pha với 1000 lần nước ạ?)* |
| Yamamoto | そうです。<ruby>水<rt>みず</rt></ruby>10リットルなら、<ruby>農薬<rt>のうやく</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ミリ<ruby>入<rt>い</rt></ruby>れますか?<br>*(Đúng. 10 lít nước thì bỏ bao nhiêu ml thuốc?)* |
| Linh | えっと…10リットルは10000ミリリットル。10000<ruby>割<rt>わ</rt></ruby>る1000は…10ミリリットルです!<br>*(Để xem... 10 lít là 10000ml. 10000 chia 1000 là... 10ml ạ!)* |
| Yamamoto | <ruby>正解<rt>せいかい</rt></ruby>!<ruby>計算<rt>けいさん</rt></ruby>が<ruby>速<rt>はや</rt></ruby>いね。<br>*(Đúng! Tính nhanh đấy.)* |
| Linh | <ruby>農薬<rt>のうやく</rt></ruby>は<ruby>多<rt>おお</rt></ruby>すぎたらどうなりますか?<br>*(Thuốc nhiều quá thì sao ạ?)* |
| Yamamoto | <ruby>葉<rt>は</rt></ruby>が<ruby>焼<rt>や</rt></ruby>ける。それから<ruby>残留<rt>ざんりゅう</rt></ruby><ruby>農薬<rt>のうやく</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>規定<rt>きてい</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ること。<br>*(Cháy lá. Rồi vấn đề tồn dư thuốc. Tuyệt đối phải tuân thủ quy định.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em nhất định tuân thủ ạ.)* |

---

## Tình huống 5 — Kho · 8:10, mặc đồ bảo hộ — 防護服

| Vai | Lời thoại |
|---|---|
| Yamamoto | これを<ruby>着<rt>き</rt></ruby>ます。<ruby>防護服<rt>ぼうごふく</rt></ruby>、マスク、ゴーグル、<ruby>手袋<rt>てぶくろ</rt></ruby>、<ruby>長靴<rt>ながぐつ</rt></ruby>。<br>*(Mặc cái này. Đồ bảo hộ, khẩu trang, kính, găng tay, ủng.)* |
| Linh | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>着<rt>き</rt></ruby>ますか?<ruby>暑<rt>あつ</rt></ruby>いですね…<br>*(Mặc hết ạ? Nóng quá...)* |
| Yamamoto | <ruby>暑<rt>あつ</rt></ruby>くても<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>着<rt>き</rt></ruby>ます。<ruby>農薬<rt>のうやく</rt></ruby>が<ruby>肌<rt>はだ</rt></ruby>につくと<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Nóng cũng phải mặc. Thuốc dính da là nguy hiểm.)* |
| Linh | はい、わかりました。マスクはこれでいいですか?<br>*(Vâng em rõ. Khẩu trang này được không ạ?)* |
| Yamamoto | それは<ruby>普通<rt>ふつう</rt></ruby>のマスク。<ruby>農薬<rt>のうやく</rt></ruby><ruby>用<rt>よう</rt></ruby>は<ruby>専用<rt>せんよう</rt></ruby>のがある。これ。<br>*(Đó là khẩu trang thường. Phun thuốc có cái chuyên dụng. Cái này.)* |
| Linh | <ruby>大<rt>おお</rt></ruby>きい!<br>*(To quá!)* |
| Yamamoto | <ruby>呼吸<rt>こきゅう</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためです。<ruby>息<rt>いき</rt></ruby>を<ruby>吸<rt>す</rt></ruby>うとき<ruby>化学物質<rt>かがくぶっしつ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れないように。<br>*(Để bảo vệ hô hấp. Hít vào không cho hóa chất lọt.)* |
| Linh | <ruby>息<rt>いき</rt></ruby>がしにくいです…<br>*(Khó thở quá ạ...)* |
| Yamamoto | <ruby>慣<rt>な</rt></ruby>れるよ。<ruby>命<rt>いのち</rt></ruby>のためだから。<br>*(Quen thôi. Vì mạng sống mà.)* |

---

## Tình huống 6 — Nhà kính số 1 · 8:40, pha thuốc — Linh giúp đong

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、バケツに<ruby>水<rt>みず</rt></ruby>を10リットル<ruby>入<rt>い</rt></ruby>れてください。<br>*(Linh, đổ 10 lít nước vào xô.)* |
| Linh | はい。(đong) 10リットル、<ruby>入<rt>い</rt></ruby>りました。<br>*(Vâng. Xong 10 lít ạ.)* |
| Yamamoto | <ruby>農薬<rt>のうやく</rt></ruby>を10ミリリットル<ruby>計<rt>はか</rt></ruby>ります。この<ruby>計量<rt>けいりょう</rt></ruby>カップで。<br>*(Đong 10ml thuốc. Bằng cốc đong này.)* |
| Linh | (đong cẩn thận) ちょうど10ミリリットルですか?<br>*(Đúng 10ml ạ?)* |
| Yamamoto | <ruby>目線<rt>めせん</rt></ruby>を<ruby>液面<rt>えきめん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>高<rt>たか</rt></ruby>さに。<br>*(Mắt ngang tầm mặt nước thuốc.)* |
| Linh | (cúi xuống) はい…ぴったりです!<br>*(Vâng... đúng khít ạ!)* |
| Yamamoto | では、<ruby>水<rt>みず</rt></ruby>にゆっくり<ruby>入<rt>い</rt></ruby>れて。<ruby>棒<rt>ぼう</rt></ruby>で<ruby>混<rt>ま</rt></ruby>ぜます。<br>*(Đổ từ từ vào nước. Khuấy đều bằng que.)* |
| Linh | (đổ và khuấy) <ruby>色<rt>いろ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>変<rt>か</rt></ruby>わりました。<br>*(Màu hơi đổi ạ.)* |
| Yamamoto | それで<ruby>準備<rt>じゅんび</rt></ruby>OK。<br>*(Vậy là chuẩn bị xong.)* |

---

## Tình huống 7 — Nhà kính số 1 · 9:00, Yamamoto phun — Linh quan sát

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>見<rt>み</rt></ruby>てるだけにしてください。<ruby>動<rt>うご</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えて。<br>*(Linh, đầu tiên em quan sát thôi. Nhớ động tác.)* |
| Linh | はい。<br>*(Vâng.)* |
| Yamamoto | (mang bình phun) <ruby>葉<rt>は</rt></ruby>の<ruby>表<rt>おもて</rt></ruby>と<ruby>裏<rt>うら</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>にかけます。アブラムシは<ruby>裏<rt>うら</rt></ruby>にいるから、<ruby>裏<rt>うら</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Xịt cả mặt trên và dưới lá. Rệp ở mặt dưới nên xịt kỹ mặt dưới.)* |
| Linh | <ruby>距離<rt>きょり</rt></ruby>はどのぐらいですか?<br>*(Khoảng cách bao xa ạ?)* |
| Yamamoto | だいたい30センチ。<ruby>近<rt>ちか</rt></ruby>すぎると<ruby>葉<rt>は</rt></ruby>が<ruby>傷<rt>きず</rt></ruby>つく。<ruby>遠<rt>とお</rt></ruby>すぎるとかからない。<br>*(Khoảng 30cm. Gần quá thì hại lá. Xa quá thì không bám.)* |
| Linh | <ruby>風<rt>かぜ</rt></ruby>はどうですか?<br>*(Có gió thì sao ạ?)* |
| Yamamoto | いい<ruby>質問<rt>しつもん</rt></ruby>!<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>い<ruby>日<rt>ひ</rt></ruby>はやらない。<ruby>自分<rt>じぶん</rt></ruby>のほうに<ruby>飛<rt>と</rt></ruby>んでくるから<ruby>危険<rt>きけん</rt></ruby>。<br>*(Câu hỏi hay! Ngày gió mạnh không phun. Thuốc bay về phía mình thì nguy.)* |
| Linh | <ruby>今日<rt>きょう</rt></ruby>はハウスの<ruby>中<rt>なか</rt></ruby>だから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。<br>*(Hôm nay trong nhà kính nên không sao ạ.)* |
| Yamamoto | そう。<ruby>外<rt>そと</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>くやる。<ruby>風<rt>かぜ</rt></ruby>がない<ruby>時間<rt>じかん</rt></ruby>に。<br>*(Đúng. Ruộng ngoài thì làm sáng sớm, lúc đứng gió.)* |

---

## Tình huống 8 — Nhà kính số 1 · 9:30, Linh phun thử dưới giám sát

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、リンさん、<ruby>一<rt>ひと</rt></ruby>つだけやってみましょう。<br>*(Vậy Linh, thử một cây thôi.)* |
| Linh | はい!(cầm bình) <ruby>重<rt>おも</rt></ruby>いです。<br>*(Vâng! Nặng quá ạ.)* |
| Yamamoto | <ruby>両手<rt>りょうて</rt></ruby>で<ruby>持<rt>も</rt></ruby>って、<ruby>腰<rt>こし</rt></ruby>を<ruby>落<rt>お</rt></ruby>として。ゆっくり。<br>*(Hai tay cầm, hạ lưng. Từ từ.)* |
| Linh | (phun) こうですか?<br>*(Như này ạ?)* |
| Yamamoto | もう<ruby>少<rt>すこ</rt></ruby>し<ruby>近<rt>ちか</rt></ruby>く。<ruby>葉<rt>は</rt></ruby>っぱを<ruby>下<rt>した</rt></ruby>から<ruby>覗<rt>のぞ</rt></ruby>くように。<br>*(Gần hơn chút. Nhìn từ dưới lên mặt sau lá.)* |
| Linh | はい。(phun cẩn thận)…<ruby>終<rt>お</rt></ruby>わりました。<br>*(Vâng. ... Xong ạ.)* |
| Yamamoto | よくできた。<ruby>残<rt>のこ</rt></ruby>りの2<ruby>株<rt>かぶ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がやります。リンさんは<ruby>記録<rt>きろく</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Giỏi. Hai cây còn lại tôi làm. Linh viết nhật ký nhé.)* |
| Linh | <ruby>記録<rt>きろく</rt></ruby>?<br>*(Nhật ký ạ?)* |
| Yamamoto | <ruby>農薬<rt>のうやく</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>日付<rt>ひづけ</rt></ruby>、<ruby>場所<rt>ばしょ</rt></ruby>、<ruby>農薬<rt>のうやく</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>、<ruby>量<rt>りょう</rt></ruby>を<ruby>書<rt>か</rt></ruby>きます。<ruby>法律<rt>ほうりつ</rt></ruby>です。<br>*(Dùng thuốc nông là phải ghi ngày, nơi, tên thuốc, lượng. Luật bắt buộc.)* |
| Linh | <ruby>法律<rt>ほうりつ</rt></ruby>ですか…<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Luật ạ... Quan trọng thật.)* |

---

## Tình huống 9 — Văn phòng nông trại · 10:15, ghi 農薬使用記録

*Trên bàn có cuốn sổ to dán nhãn 「<ruby>農薬使用記録簿<rt>のうやくしようきろくぼ</rt></ruby>」.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | これが<ruby>記録簿<rt>きろくぼ</rt></ruby>です。<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Đây là sổ nhật ký. Tôi chỉ cách viết.)* |
| Linh | はい。<br>*(Vâng.)* |
| Yamamoto | <ruby>日付<rt>ひづけ</rt></ruby>:2025<ruby>年<rt>ねん</rt></ruby>6<ruby>月<rt>がつ</rt></ruby>3<ruby>日<rt>にち</rt></ruby>。<ruby>場所<rt>ばしょ</rt></ruby>:ハウス1のB<ruby>列<rt>れつ</rt></ruby>。<ruby>作物<rt>さくもつ</rt></ruby>:トマト。<br>*(Ngày: 03/06/2025. Vị trí: nhà kính 1 hàng B. Cây: cà chua.)* |
| Linh | (viết theo) はい、<ruby>書<rt>か</rt></ruby>きました。<br>*(Vâng, em viết rồi.)* |
| Yamamoto | <ruby>農薬<rt>のうやく</rt></ruby><ruby>名<rt>めい</rt></ruby>と<ruby>希釈<rt>きしゃく</rt></ruby><ruby>倍率<rt>ばいりつ</rt></ruby>、<ruby>使用<rt>しよう</rt></ruby><ruby>量<rt>りょう</rt></ruby>も。それから<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>予定日<rt>よていび</rt></ruby>。<br>*(Tên thuốc, tỉ lệ pha, lượng đã dùng. Rồi ngày dự kiến thu hoạch.)* |
| Linh | <ruby>収穫日<rt>しゅうかくび</rt></ruby>も?<br>*(Cả ngày thu hoạch ạ?)* |
| Yamamoto | そう。<ruby>収穫前<rt>しゅうかくまえ</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。この<ruby>農薬<rt>のうやく</rt></ruby>は7<ruby>日<rt>にち</rt></ruby><ruby>前<rt>まえ</rt></ruby>までOK。<br>*(Đúng. Tuân thủ số ngày trước thu hoạch. Thuốc này được dùng đến 7 ngày trước.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>収穫<rt>しゅうかく</rt></ruby>はいつですか?<br>*(Em rõ. Khi nào thu hoạch ạ?)* |
| Yamamoto | 6<ruby>月<rt>がつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>からです。<ruby>余裕<rt>よゆう</rt></ruby>がある。<br>*(Cuối tháng 6 mới thu. Còn dư thời gian.)* |

---

## Tình huống 10 — Sau nhà kính · 10:50, rửa dụng cụ và đồ bảo hộ

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>使<rt>つか</rt></ruby>った<ruby>道具<rt>どうぐ</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>洗<rt>あら</rt></ruby>います。<ruby>水<rt>みず</rt></ruby>で<ruby>三回<rt>さんかい</rt></ruby>。<br>*(Dụng cụ đã dùng phải rửa. Ba lần bằng nước.)* |
| Linh | <ruby>洗<rt>あら</rt></ruby>った<ruby>水<rt>みず</rt></ruby>はどこに<ruby>捨<rt>す</rt></ruby>てますか?<br>*(Nước rửa đổ đi đâu ạ?)* |
| Yamamoto | <ruby>下水<rt>げすい</rt></ruby>に<ruby>流<rt>なが</rt></ruby>してはいけません。あの<ruby>排水<rt>はいすい</rt></ruby><ruby>溝<rt>こう</rt></ruby>に。<ruby>専用<rt>せんよう</rt></ruby>です。<br>*(Không được đổ xuống cống. Đổ vào rãnh thoát kia. Chuyên dụng.)* |
| Linh | <ruby>環境<rt>かんきょう</rt></ruby>のためですか?<br>*(Để bảo vệ môi trường ạ?)* |
| Yamamoto | そうです。<ruby>川<rt>かわ</rt></ruby>に<ruby>流<rt>なが</rt></ruby>れたら<ruby>魚<rt>さかな</rt></ruby>が<ruby>死<rt>し</rt></ruby>にます。<ruby>近所<rt>きんじょ</rt></ruby>の<ruby>田<rt>た</rt></ruby>んぼにも<ruby>迷惑<rt>めいわく</rt></ruby>。<br>*(Đúng. Chảy ra sông là cá chết. Phiền cả ruộng hàng xóm nữa.)* |
| Linh | はい、<ruby>気<rt>き</rt></ruby>をつけます。<ruby>防護服<rt>ぼうごふく</rt></ruby>は?<br>*(Vâng em chú ý ạ. Đồ bảo hộ thì sao ạ?)* |
| Yamamoto | <ruby>別<rt>べつ</rt></ruby>の<ruby>洗濯機<rt>せんたくき</rt></ruby>で<ruby>洗<rt>あら</rt></ruby>います。<ruby>普段<rt>ふだん</rt></ruby>の<ruby>服<rt>ふく</rt></ruby>と<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>一緒<rt>いっしょ</rt></ruby>にしない。<br>*(Giặt máy giặt riêng. Tuyệt đối không chung quần áo thường.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em nhớ ạ.)* |

---

## Tình huống 11 — Nhà kính số 1 · 14:00, kiểm tra hiệu quả buổi chiều

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、さっきの<ruby>株<rt>かぶ</rt></ruby>、<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<br>*(Linh, mình ra xem cây hồi nãy.)* |
| Linh | はい!(đến nơi) あ、<ruby>虫<rt>むし</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なくなりました!<br>*(Vâng! Á, bọ ít hơn rồi!)* |
| Saori | そうだね。でも<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>死<rt>し</rt></ruby>んだわけじゃないよ。<ruby>明日<rt>あした</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Đúng. Nhưng chưa chết hết đâu. Mai kiểm lại nữa.)* |
| Linh | <ruby>毎日<rt>まいにち</rt></ruby><ruby>見<rt>み</rt></ruby>るのが<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Mỗi ngày kiểm tra là quan trọng nhỉ.)* |
| Saori | そう。<ruby>早期発見<rt>そうきはっけん</rt></ruby>、<ruby>早期対応<rt>そうきたいおう</rt></ruby>。<ruby>農業<rt>のうぎょう</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>。<br>*(Đúng. Phát hiện sớm, xử lý sớm. Cơ bản của nghề nông.)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、<ruby>私<rt>わたし</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>つけてよかったですか?<br>*(Chị Saori, em phát hiện đầu tiên có tốt không ạ?)* |
| Saori | もちろん!<ruby>大手柄<rt>おおてがら</rt></ruby>だよ!<ruby>親方<rt>おやかた</rt></ruby>もすごく<ruby>喜<rt>よろこ</rt></ruby>んでた。<br>*(Tất nhiên! Công to đấy! Sếp vui lắm.)* |
| Linh | <ruby>嬉<rt>うれ</rt></ruby>しいです!<br>*(Em vui quá!)* |

---

## Tình huống 12 — Sân nông trại · 17:00, Yamamoto khen — giao việc kiểm tra hàng ngày

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>によくやった。<ruby>早期発見<rt>そうきはっけん</rt></ruby>のおかげで<ruby>被害<rt>ひがい</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なかった。<br>*(Linh, hôm nay làm tốt thật. Phát hiện sớm nên thiệt hại ít.)* |
| Linh | ありがとうございます。<ruby>偶然<rt>ぐうぜん</rt></ruby><ruby>見<rt>み</rt></ruby>つけました。<br>*(Em cảm ơn. Tình cờ thấy thôi ạ.)* |
| Yamamoto | <ruby>偶然<rt>ぐうぜん</rt></ruby>でも、<ruby>気<rt>き</rt></ruby>づくのは<ruby>才能<rt>さいのう</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>から<ruby>毎朝<rt>まいあさ</rt></ruby>、ハウス1の<ruby>巡回<rt>じゅんかい</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せていいかな?<br>*(Tình cờ cũng là tài năng. Từ mai mỗi sáng giao em đi tuần nhà kính 1 nhé?)* |
| Linh | <ruby>巡回<rt>じゅんかい</rt></ruby>?<br>*(Đi tuần ạ?)* |
| Yamamoto | <ruby>歩<rt>ある</rt></ruby>いて、<ruby>葉<rt>は</rt></ruby>、<ruby>茎<rt>くき</rt></ruby>、<ruby>果実<rt>かじつ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>すること。<ruby>異常<rt>いじょう</rt></ruby>があれば<ruby>報告<rt>ほうこく</rt></ruby>。<br>*(Đi bộ kiểm tra lá, thân, quả. Có bất thường là báo cáo.)* |
| Linh | はい!<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng! Em cố gắng ạ!)* |
| Saori | <ruby>親方<rt>おやかた</rt></ruby>、リンちゃん<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>りになります。<br>*(Sếp, có thể tin tưởng Linh thật đấy.)* |
| Yamamoto | (cười) これからも<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Vẫn nhờ em nhé.)* |

---

## Tình huống 13 — Ký túc, phòng chung · 20:30, Dewi và Riko nghe chuyện

> Cảnh tiếng Việt-Anh-Indo lẫn lộn trong bếp ký túc.

| Vai | Lời thoại |
|---|---|
| Dewi | Linh, nghe sếp khen mày trên 大手柄 đó! Bọn tao ghen tị luôn! |
| Linh | Tình cờ thôi mà Dewi. Hôm nay mệt quá, mặc bộ 防護服 nóng kinh khủng. |
| Riko | Bên dưa leo bọn tao mai cũng phải phun. Mày dạy tao đong với! |
| Linh | OK. Nhớ là 1000 lần pha loãng — 10 lít nước thì 10ml thuốc. Mà phải đeo マスク chuyên dụng nha, không phải khẩu trang thường. |
| Dewi | Sếp dạy kỹ ghê. Bên Indo bọn tao trồng cũng phun thuốc nhưng không có ghi sổ luật như Nhật. |
| Linh | Ừ, 農薬使用記録 đó. Luật bắt buộc. Quên ghi là bị phạt luôn. |
| Riko | Nhật ghê thật. Mà Linh ơi mày càng nói tiếng Nhật càng giỏi nha! |
| Linh | Cảm ơn! Tao đang cố thi 検定3級 cuối năm. Mày ăn xong chưa, tao nấu canh chua, ăn không? |
| Dewi | Có chứ! Canh chua Việt Nam là số 1! |

---

## Đọng lại chương 6

Linh phát hiện ổ **アブラムシ** (rệp) đầu tiên trên cà chua hàng B nhà kính 1 — báo Saori, báo 親方 nhanh chóng. Cô học toàn bộ quy trình **農薬** an toàn của Nhật: phân loại 3 nhóm (**殺虫剤・殺菌剤・除草剤**), tiêu chuẩn **有機JAS**, đọc nhãn **希釈倍率 1000倍**, tính toán pha (10L nước + 10ml thuốc), mặc đồ **防護服** đầy đủ kể cả mask chuyên dụng, phun ở **30cm** cả mặt trên-dưới lá, ghi **農薬使用記録簿** theo luật (ngày, vị trí, tên thuốc, lượng, ngày thu hoạch), rửa dụng cụ 3 lần đổ vào rãnh chuyên dụng. Quan trọng nhất: **早期発見・早期対応**. 親方 giao Linh nhiệm vụ **巡回** mỗi sáng — bước trưởng thành thật sự.

> Từ vựng & mẫu câu chương này: 害虫・農薬・アブラムシ・殺虫剤・殺菌剤・除草剤・有機JAS・希釈倍率・防護服・マスク・農薬使用記録簿・収穫前日数・早期発見・巡回・株・葉の裏・〜倍・〜匹・気をつけます・絶対に守ります

---

## Bí quyết chương

- Quy tắc vàng phun **農薬**: 完全防護 (đồ bảo hộ đầy đủ) → 規定量厳守 (đúng liều) → 記録必須 (ghi sổ) → 道具洗浄 (rửa dụng cụ) → 廃液処理 (xử lý nước thải).
- **収穫前日数** (Pre-Harvest Interval): mỗi 農薬 có quy định số ngày tối thiểu trước khi thu hoạch — quên là vi phạm luật + bị siêu thị trả hàng.
- **有機JAS** = 日本農林規格 hữu cơ — nông trại theo hệ này chỉ dùng được 農薬 trong danh mục cho phép.
- Đếm rệp: 〜匹 (ぴき). Đếm cây trồng (株 = かぶ).
- Báo cáo bất thường theo cấu trúc: [vị trí cụ thể] + [đối tượng] + [hiện tượng] + [số lượng/mức độ].
- Khi 親方 hỏi "どのぐらい?" (mức độ?) — luôn trả lời bằng số ước lượng cụ thể, không nói "たくさん".

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 害虫 | がいちゅう | HẠI TRÙNG | sâu/côn trùng có hại |
| アブラムシ | — | — | rệp |
| 農薬 | のうやく | NÔNG DƯỢC | thuốc nông (trừ sâu/nấm/cỏ) |
| 殺虫剤 | さっちゅうざい | SÁT TRÙNG TỄ | thuốc trừ sâu |
| 殺菌剤 | さっきんざい | SÁT KHUẨN TỄ | thuốc trừ nấm |
| 除草剤 | じょそうざい | TRỪ THẢO TỄ | thuốc diệt cỏ |
| 有機JAS | ゆうきジャス | HỮU CƠ | chứng nhận hữu cơ Nhật |
| 認証 | にんしょう | NHẬN CHỨNG | chứng nhận |
| 希釈 | きしゃく | HY THÍCH | pha loãng |
| 倍率 | ばいりつ | BỘI SUẤT | tỉ lệ (nhân lên) |
| 計量カップ | けいりょうカップ | KẾ LƯỢNG | cốc đong |
| 液面 | えきめん | DỊCH DIỆN | mặt nước thuốc |
| 防護服 | ぼうごふく | PHÒNG HỘ PHỤC | đồ bảo hộ |
| 手袋 | てぶくろ | THỦ ĐẠI | găng tay |
| 長靴 | ながぐつ | TRƯỜNG | ủng |
| ゴーグル | — | — | kính bảo hộ |
| 葉の裏 | はのうら | DIỆP LÝ | mặt sau lá |
| 株 | かぶ | CHU | gốc, cây (đếm cây trồng) |
| 匹 | ひき | THẤT | con (đếm con vật nhỏ) |
| 残留農薬 | ざんりゅうのうやく | TÀN LƯU NÔNG DƯỢC | tồn dư thuốc |
| 収穫前日数 | しゅうかくまえにっすう | THU HOẠCH TIỀN NHẬT SỐ | số ngày trước thu hoạch |
| 農薬使用記録簿 | のうやくしようきろくぼ | NÔNG DƯỢC SỬ DỤNG KÝ LỤC BẠ | sổ ghi sử dụng thuốc |
| 巡回 | じゅんかい | TUẦN HỒI | đi tuần kiểm tra |
| 早期発見 | そうきはっけん | TẢO KỲ PHÁT HIỆN | phát hiện sớm |
| 早期対応 | そうきたいおう | TẢO KỲ ĐỐI ỨNG | xử lý sớm |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 被害 | ひがい | BỊ HẠI | thiệt hại |
| 排水溝 | はいすいこう | BÀI THỦY CÂU | rãnh thoát nước |
| 環境 | かんきょう | HOÀN CẢNH | môi trường |
| 法律 | ほうりつ | PHÁP LUẬT | luật pháp |
| 大手柄 | おおてがら | ĐẠI THỦ BÍNH | công lao to |
| 規定 | きてい | QUY ĐỊNH | quy định |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000007, 800000040, NULL, 'markdown_book', 'T7. Thu hoạch lần đầu và đóng gói xuất hàng (収穫と出荷)', '# Sách thực tập sinh nông nghiệp · T7. Thu hoạch lần đầu và đóng gói xuất hàng (収穫と出荷)

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp, Ibaraki, N5→N4). Học các mẫu hội thoại tiếng Nhật khi thu hoạch: hỏi tiêu chuẩn chín, dùng kéo cắt 収穫ばさみ, phân loại 等級 (秀・優・良), cân-đóng gói, dán tem JA, chất xe tải xuất hàng đến chợ đầu mối, đáp lời 出荷先 qua điện thoại.

---

## Bối cảnh

Cuối tháng 6 năm 2025. Vụ cà chua đầu tiên Linh tham gia toàn bộ chu trình — gieo, ươm, định thực, phun thuốc — nay đã chín. 親方 Yamamoto báo sáng nay 4 giờ dậy sớm vì hôm nay là **初収穫** (thu hoạch đầu mùa). 5:30 cà chua phải đóng gói xong để 6:00 xe tải lên đường giao đến **JA直売所** Mito và chợ đầu mối Tsukiji.

---

## Tình huống 1 — Sân nông trại · 4:30, họp sáng sớm trước thu hoạch

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、おはようございます。<ruby>早朝<rt>そうちょう</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ない。<ruby>今日<rt>きょう</rt></ruby>は<ruby>初収穫<rt>はつしゅうかく</rt></ruby>です。<br>*(Mọi người chào buổi sáng. Xin lỗi vì sớm. Hôm nay là thu hoạch đầu mùa.)* |
| Linh | おはようございます!<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Chào buổi sáng ạ! Em sẽ cố gắng ạ!)* |
| Yamamoto | リンさんは<ruby>初<rt>はじ</rt></ruby>めてだから、<ruby>佐織<rt>さおり</rt></ruby>さんの<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>ながらやってください。<br>*(Linh lần đầu, đứng cạnh Saori vừa nhìn vừa làm nhé.)* |
| Saori | リンちゃん、よろしくね。<ruby>収穫<rt>しゅうかく</rt></ruby>のスピードが<ruby>大事<rt>だいじ</rt></ruby>だから、<ruby>急<rt>いそ</rt></ruby>がしいよ。<br>*(Linh, nhờ em. Tốc độ thu hoạch quan trọng nên sẽ bận đấy.)* |
| Yamamoto | <ruby>目標<rt>もくひょう</rt></ruby>は5<ruby>時半<rt>じはん</rt></ruby>までに<ruby>選別<rt>せんべつ</rt></ruby>と<ruby>箱詰<rt>はこづ</rt></ruby>めを<ruby>終<rt>お</rt></ruby>わらせる。6<ruby>時<rt>じ</rt></ruby>にトラックが<ruby>来<rt>き</rt></ruby>ます。<br>*(Mục tiêu 5h30 xong phân loại và đóng hộp. 6h xe tải đến.)* |
| Dewi | <ruby>了解<rt>りょうかい</rt></ruby>です!<br>*(Rõ ạ!)* |
| Yamamoto | では、ハウス1に<ruby>移動<rt>いどう</rt></ruby>!<br>*(Vậy di chuyển sang nhà kính 1!)* |

---

## Tình huống 2 — Nhà kính số 1 · 4:45, Saori dạy tiêu chuẩn chín

*Đèn pha trong nhà kính sáng rực. Hàng cà chua đỏ ối.*

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、まず<ruby>熟<rt>じゅく</rt></ruby>したトマトの<ruby>見分<rt>みわ</rt></ruby>け<ruby>方<rt>かた</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えて。<br>*(Linh, nhớ cách phân biệt cà chín trước.)* |
| Linh | はい。<ruby>赤<rt>あか</rt></ruby>ければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Vâng. Đỏ là được không ạ?)* |
| Saori | <ruby>赤<rt>あか</rt></ruby>でも<ruby>段階<rt>だんかい</rt></ruby>がある。これ<ruby>見<rt>み</rt></ruby>て、<ruby>下<rt>した</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>緑<rt>みどり</rt></ruby>っぽいでしょう?<br>*(Đỏ cũng có nhiều mức. Xem này, dưới hơi xanh đúng không?)* |
| Linh | はい、<ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>少<rt>すこ</rt></ruby>し<ruby>緑<rt>みどり</rt></ruby>です。<br>*(Vâng, đúng vậy. Hơi xanh ạ.)* |
| Saori | これは<ruby>遠<rt>とお</rt></ruby>くに<ruby>送<rt>おく</rt></ruby>る<ruby>用<rt>よう</rt></ruby>。<ruby>輸送中<rt>ゆそうちゅう</rt></ruby>に<ruby>完熟<rt>かんじゅく</rt></ruby>する。<ruby>築地<rt>つきじ</rt></ruby><ruby>行<rt>い</rt></ruby>き。<br>*(Cái này để gửi xa. Đang vận chuyển sẽ chín hoàn toàn. Đi Tsukiji.)* |
| Linh | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>真<rt>ま</rt></ruby>っ<ruby>赤<rt>か</rt></ruby>のは?<br>*(Còn quả đỏ hết thì sao ạ?)* |
| Saori | <ruby>地元<rt>じもと</rt></ruby>のJA<ruby>直売所<rt>ちょくばいしょ</rt></ruby>。<ruby>今日中<rt>きょうじゅう</rt></ruby>に<ruby>売<rt>う</rt></ruby>れる。<br>*(Cho JA bán trực tiếp địa phương. Bán trong ngày.)* |
| Linh | なるほど。<ruby>送<rt>おく</rt></ruby>る<ruby>場所<rt>ばしょ</rt></ruby>で<ruby>熟<rt>じゅく</rt></ruby>し<ruby>具合<rt>ぐあい</rt></ruby>を<ruby>変<rt>か</rt></ruby>えるんですね。<br>*(Ra vậy. Đổi độ chín theo nơi giao ạ.)* |

---

## Tình huống 3 — Nhà kính số 1 · 5:00, cách dùng 収穫ばさみ

| Vai | Lời thoại |
|---|---|
| Saori | これが<ruby>収穫<rt>しゅうかく</rt></ruby>ばさみ。<ruby>普通<rt>ふつう</rt></ruby>のはさみと<ruby>違<rt>ちが</rt></ruby>うよ。<br>*(Đây là kéo thu hoạch. Khác kéo thường nhé.)* |
| Linh | <ruby>先<rt>さき</rt></ruby>が<ruby>丸<rt>まる</rt></ruby>いですね。<br>*(Đầu tròn ạ.)* |
| Saori | <ruby>果実<rt>かじつ</rt></ruby>を<ruby>傷<rt>きず</rt></ruby>つけないため。<ruby>切<rt>き</rt></ruby>る<ruby>場所<rt>ばしょ</rt></ruby>は「ヘタ」の<ruby>上<rt>うえ</rt></ruby>1センチ。<br>*(Để không làm trầy quả. Cắt phía trên cuống 1cm.)* |
| Linh | ヘタ?<br>*(Heta ạ?)* |
| Saori | この<ruby>緑<rt>みどり</rt></ruby>の<ruby>部分<rt>ぶぶん</rt></ruby>。トマトのヘタ。<br>*(Phần xanh này. Cuống cà chua.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました。やってみます。(cắt) こうですか?<br>*(À em rõ. Em thử ạ. Như này ạ?)* |
| Saori | OK!<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れるときは、ヘタを<ruby>下<rt>した</rt></ruby>に。<ruby>果実<rt>かじつ</rt></ruby><ruby>同士<rt>どうし</rt></ruby>が<ruby>傷<rt>きず</rt></ruby>つかないように<ruby>並<rt>なら</rt></ruby>べる。<br>*(OK! Khi xếp vào hộp thì cuống xuống. Xếp sao cho quả không cọ vào nhau.)* |
| Linh | はい!<br>*(Vâng!)* |

---

## Tình huống 4 — Nhà kính số 1 · 5:10, Linh cắt — phát hiện quả nứt

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、これ、<ruby>割<rt>わ</rt></ruby>れています。どうしますか?<br>*(Chị Saori, quả này nứt rồi ạ. Làm sao ạ?)* |
| Saori | (xem) ああ、「<ruby>裂果<rt>れっか</rt></ruby>」。<ruby>水<rt>みず</rt></ruby>のやりすぎでなる。<br>*(Á, "nứt quả". Tưới nhiều quá là vậy.)* |
| Linh | <ruby>捨<rt>す</rt></ruby>てますか?<br>*(Bỏ đi ạ?)* |
| Saori | <ruby>捨<rt>す</rt></ruby>てない!「<ruby>規格外<rt>きかくがい</rt></ruby>」の<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる。<ruby>加工用<rt>かこうよう</rt></ruby>に<ruby>売<rt>う</rt></ruby>れるよ。<ruby>安<rt>やす</rt></ruby>いけど。<br>*(Không bỏ! Bỏ vào hộp "ngoài tiêu chuẩn". Bán cho chế biến được. Rẻ nhưng vẫn bán.)* |
| Linh | <ruby>加工<rt>かこう</rt></ruby>?<br>*(Chế biến ạ?)* |
| Saori | トマトジュースとかケチャップとか。<ruby>形<rt>かたち</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くても<ruby>味<rt>あじ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ。<br>*(Nước cà chua, sốt ketchup các kiểu. Hình xấu nhưng vị y vậy.)* |
| Linh | もったいないですもんね。<br>*(Phí quá nhỉ.)* |
| Saori | そう。<ruby>農家<rt>のうか</rt></ruby>はみんな「もったいない」<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大切<rt>たいせつ</rt></ruby>。<br>*(Đúng. Nông dân ai cũng phải có tinh thần "tiếc của".)* |

---

## Tình huống 5 — Phòng phân loại · 5:25, học 等級 秀・優・良

*Bàn dài 5m có 3 hộp dán nhãn: 秀 (đỏ), 優 (vàng), 良 (xanh).*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>選別<rt>せんべつ</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>等級<rt>とうきゅう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つ。<br>*(Linh, tôi giải thích phân loại. Có ba hạng.)* |
| Linh | はい。<br>*(Vâng.)* |
| Yamamoto | 「<ruby>秀<rt>しゅう</rt></ruby>」は<ruby>最高<rt>さいこう</rt></ruby><ruby>品質<rt>ひんしつ</rt></ruby>。<ruby>形<rt>かたち</rt></ruby>がよくて、<ruby>色<rt>いろ</rt></ruby>が<ruby>均一<rt>きんいつ</rt></ruby>、<ruby>傷<rt>きず</rt></ruby>なし。<br>*(Hạng "Tú" cao nhất. Đẹp dáng, màu đều, không xước.)* |
| Linh | これは「<ruby>秀<rt>しゅう</rt></ruby>」ですか?<br>*(Cái này hạng "Tú" ạ?)* |
| Yamamoto | そうだね、<ruby>形<rt>かたち</rt></ruby>もきれい、<ruby>色<rt>いろ</rt></ruby>もOK。「<ruby>秀<rt>しゅう</rt></ruby>」の<ruby>箱<rt>はこ</rt></ruby>に。<br>*(Đúng, dáng đẹp, màu OK. Bỏ hộp "Tú".)* |
| Linh | これは…<ruby>少<rt>すこ</rt></ruby>し<ruby>小<rt>ちい</rt></ruby>さいです。<br>*(Cái này... hơi nhỏ ạ.)* |
| Yamamoto | サイズが<ruby>違<rt>ちが</rt></ruby>うのは「<ruby>優<rt>ゆう</rt></ruby>」。<ruby>小<rt>ちい</rt></ruby>さいけど<ruby>味<rt>あじ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ。<br>*(Khác kích cỡ là "Ưu". Nhỏ nhưng vị y nhau.)* |
| Linh | <ruby>少<rt>すこ</rt></ruby>し<ruby>色<rt>いろ</rt></ruby>がムラの<ruby>果実<rt>かじつ</rt></ruby>は?<br>*(Quả màu hơi loang lổ thì sao ạ?)* |
| Yamamoto | 「<ruby>良<rt>りょう</rt></ruby>」。<ruby>味<rt>あじ</rt></ruby>はOKだけど<ruby>見<rt>み</rt></ruby>た<ruby>目<rt>め</rt></ruby>がいまいち。<br>*(Hạng "Lương". Vị OK nhưng nhìn không bắt mắt.)* |
| Linh | <ruby>値段<rt>ねだん</rt></ruby>も<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Giá khác nhau không ạ?)* |
| Yamamoto | もちろん。<ruby>秀<rt>しゅう</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>高<rt>たか</rt></ruby>い。<ruby>倍以上<rt>ばいいじょう</rt></ruby><ruby>違<rt>ちが</rt></ruby>うこともある。<br>*(Tất nhiên. "Tú" đắt nhất. Có khi gấp đôi.)* |

---

## Tình huống 6 — Phòng phân loại · 5:35, cân và đóng hộp

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、これは4キロ<ruby>用<rt>よう</rt></ruby>の<ruby>箱<rt>はこ</rt></ruby>。<ruby>正確<rt>せいかく</rt></ruby>に4キロ<ruby>入<rt>い</rt></ruby>れる。<br>*(Linh, hộp này loại 4kg. Bỏ chính xác 4kg.)* |
| Linh | <ruby>少<rt>すこ</rt></ruby>し<ruby>多<rt>おお</rt></ruby>くてもダメですか?<br>*(Hơi nhiều cũng không được ạ?)* |
| Saori | <ruby>多<rt>おお</rt></ruby>すぎたら<ruby>店<rt>みせ</rt></ruby>が<ruby>損<rt>そん</rt></ruby>する。<ruby>少<rt>すく</rt></ruby>なすぎたら<ruby>偽装<rt>ぎそう</rt></ruby>になる。<ruby>絶対<rt>ぜったい</rt></ruby>に4キロ。<br>*(Nhiều thì cửa hàng lỗ. Ít thì là gian dối. Bắt buộc 4kg.)* |
| Linh | (cân) 3.95キロです。あと<ruby>一<rt>ひと</rt></ruby>つ<ruby>足<rt>た</rt></ruby>します。<br>*(3.95kg ạ. Em bỏ thêm 1 quả.)* |
| Saori | OK。4.05キロぐらいまで<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>。<br>*(OK. Đến tầm 4.05kg là biên độ cho phép.)* |
| Linh | <ruby>並<rt>なら</rt></ruby>べ<ruby>方<rt>かた</rt></ruby>は?<br>*(Cách xếp thì sao ạ?)* |
| Saori | <ruby>大<rt>おお</rt></ruby>きいのを<ruby>下<rt>した</rt></ruby>、<ruby>小<rt>ちい</rt></ruby>さいのを<ruby>上<rt>うえ</rt></ruby>。<ruby>形<rt>かたち</rt></ruby>がきれいに<ruby>見<rt>み</rt></ruby>えるように。<br>*(To dưới, nhỏ trên. Sao cho nhìn vào thấy đều đẹp.)* |
| Linh | <ruby>見<rt>み</rt></ruby>た<ruby>目<rt>め</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Hình thức cũng quan trọng nhỉ.)* |
| Saori | <ruby>日本<rt>にほん</rt></ruby>の<ruby>消費者<rt>しょうひしゃ</rt></ruby>は<ruby>見<rt>み</rt></ruby>た<ruby>目<rt>め</rt></ruby>に<ruby>厳<rt>きび</rt></ruby>しいから。<br>*(Người tiêu dùng Nhật khó tính hình thức lắm.)* |

---

## Tình huống 7 — Phòng phân loại · 5:45, dán nhãn JA và thông tin xuất xứ

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>箱<rt>はこ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずラベルを<ruby>貼<rt>は</rt></ruby>ります。<ruby>生産者<rt>せいさんしゃ</rt></ruby>、<ruby>産地<rt>さんち</rt></ruby>、<ruby>等級<rt>とうきゅう</rt></ruby>、<ruby>収穫日<rt>しゅうかくび</rt></ruby>。<br>*(Hộp phải dán nhãn. Người sản xuất, xuất xứ, hạng, ngày thu hoạch.)* |
| Linh | <ruby>生産者<rt>せいさんしゃ</rt></ruby>は…ヤマモト<ruby>農場<rt>のうじょう</rt></ruby>ですか?<br>*(Người sản xuất là... Trang trại Yamamoto ạ?)* |
| Yamamoto | そう。<ruby>住所<rt>じゅうしょ</rt></ruby>は<ruby>茨城県<rt>いばらきけん</rt></ruby><ruby>水戸市<rt>みとし</rt></ruby>。それから「JA<ruby>水戸<rt>みと</rt></ruby>」のロゴ。<br>*(Đúng. Địa chỉ Mito, Ibaraki. Rồi logo "JA Mito".)* |
| Linh | JAは…?<br>*(JA là...?)* |
| Yamamoto | <ruby>農業<rt>のうぎょう</rt></ruby><ruby>協同組合<rt>きょうどうくみあい</rt></ruby>。<ruby>農家<rt>のうか</rt></ruby>の<ruby>組織<rt>そしき</rt></ruby>です。<br>*(Hợp tác xã nông nghiệp. Tổ chức của nhà nông.)* |
| Linh | (dán) これでOKですか?<br>*(Vậy được không ạ?)* |
| Yamamoto | バーコードは<ruby>右上<rt>みぎうえ</rt></ruby>に。スキャナーで<ruby>読<rt>よ</rt></ruby>めるように。<br>*(Mã vạch ở góc trên phải. Để máy quét đọc được.)* |
| Linh | はい、<ruby>直<rt>なお</rt></ruby>します。<br>*(Vâng, em sửa lại.)* |

---

## Tình huống 8 — Phòng phân loại · 5:55, điện thoại từ Tsukiji

*Điện thoại bàn reo. Yamamoto bắt máy, đưa ống nghe sang Linh.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>築地<rt>つきじ</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>の<ruby>電話<rt>でんわ</rt></ruby>。<ruby>出<rt>で</rt></ruby>てみて。<br>*(Linh, Tsukiji gọi xác nhận đó. Em thử nghe.)* |
| Linh | え、<ruby>私<rt>わたし</rt></ruby>がですか?<br>*(Hả, em ạ?)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>練習<rt>れんしゅう</rt></ruby>。<br>*(Không sao. Tập đi.)* |
| Linh | (cầm điện thoại) はい、ヤマモト<ruby>農場<rt>のうじょう</rt></ruby>です。<br>*(A lô, Trang trại Yamamoto xin nghe ạ.)* |
| Tsukiji | お<ruby>世話<rt>せわ</rt></ruby>になっております、<ruby>築地<rt>つきじ</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>です。<ruby>今日<rt>きょう</rt></ruby>の<ruby>出荷<rt>しゅっか</rt></ruby><ruby>量<rt>りょう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cảm ơn hợp tác. Tanaka từ Tsukiji đây. Cho biết lượng xuất hôm nay.)* |
| Linh | (nhìn 親方, lúng túng) えっと、<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。(quay sang) <ruby>親方<rt>おやかた</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>築地<rt>つきじ</rt></ruby><ruby>行<rt>ゆ</rt></ruby>きの<ruby>量<rt>りょう</rt></ruby>は?<br>*(Ờ... xin chờ một lát. Sếp, lượng đi Tsukiji hôm nay ạ?)* |
| Yamamoto | 4キロ<ruby>箱<rt>はこ</rt></ruby>が<ruby>二十<rt>にじゅう</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby>80キロ。<br>*(Hộp 4kg là 20 hộp. Tổng 80kg.)* |
| Linh | (vào điện thoại) お<ruby>待<rt>ま</rt></ruby>たせしました。4キロ<ruby>箱<rt>はこ</rt></ruby>が<ruby>二十箱<rt>にじゅっぱこ</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby>80キロです。<br>*(Cảm ơn đã chờ. Hộp 4kg là 20 hộp, tổng 80kg ạ.)* |
| Tsukiji | <ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>ですか?<br>*(Rõ rồi. Dự kiến đến giờ nào?)* |
| Linh | えっと…<ruby>朝<rt>あさ</rt></ruby>10<ruby>時<rt>じ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Ờ... dự kiến tầm 10 giờ sáng ạ.)* |
| Tsukiji | はい、お<ruby>待<rt>ま</rt></ruby>ちしています。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, chúng tôi đợi. Nhờ anh chị nhé.)* |
| Linh | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Nhờ phía bên ấy. Chào ạ.)* |

---

## Tình huống 9 — Phòng phân loại · 6:00, Yamamoto khen điện thoại

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>電話<rt>でんわ</rt></ruby>うまかった!「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください」と「お<ruby>待<rt>ま</rt></ruby>たせしました」を<ruby>使<rt>つか</rt></ruby>えた。<br>*(Linh, gọi điện hay đấy! Dùng được "xin chờ" với "cảm ơn đã chờ".)* |
| Linh | ありがとうございます。<ruby>心臓<rt>しんぞう</rt></ruby>がドキドキしました。<br>*(Em cảm ơn. Tim em đập thình thịch ạ.)* |
| Yamamoto | <ruby>慣<rt>な</rt></ruby>れるよ。「<ruby>了解<rt>りょうかい</rt></ruby>しました」「<ruby>承知<rt>しょうち</rt></ruby>しました」も<ruby>覚<rt>おぼ</rt></ruby>えてね。<br>*(Quen thôi. Học thêm "rõ rồi" "đã rõ" nữa nhé.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>?<ruby>了解<rt>りょうかい</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Shouchi? Khác ryoukai ạ?)* |
| Yamamoto | <ruby>承知<rt>しょうち</rt></ruby>は<ruby>目上<rt>めうえ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う、もっと<ruby>丁寧<rt>ていねい</rt></ruby>。<ruby>了解<rt>りょうかい</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じレベルや<ruby>後輩<rt>こうはい</rt></ruby>に。<br>*(Shouchi dùng với người trên, lịch sự hơn. Ryoukai cho ngang hàng/đàn em.)* |
| Linh | お<ruby>客<rt>きゃく</rt></ruby>さんには<ruby>承知<rt>しょうち</rt></ruby>ですね。<br>*(Với khách thì shouchi ạ.)* |
| Yamamoto | そう。よく<ruby>覚<rt>おぼ</rt></ruby>えたね。<br>*(Đúng. Nhớ tốt đấy.)* |

---

## Tình huống 10 — Sân xuất hàng · 6:05, xe tải đến — chất hàng

*Xe 2 tấn của 運送会社 đỗ trước cửa.*

| Vai | Lời thoại |
|---|---|
| Tài xế | おはようございます!<ruby>築地<rt>つきじ</rt></ruby><ruby>行<rt>ゆ</rt></ruby>きの<ruby>荷物<rt>にもつ</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng! Hàng đi Tsukiji nhờ giao ạ.)* |
| Yamamoto | おはようございます。20<ruby>箱<rt>はこ</rt></ruby><ruby>用意<rt>ようい</rt></ruby>できています。リンさん、<ruby>手伝<rt>てつだ</rt></ruby>って!<br>*(Chào. 20 hộp sẵn sàng. Linh, phụ đi!)* |
| Linh | はい!(bê hộp) <ruby>重<rt>おも</rt></ruby>くないですか?<br>*(Vâng! Có nặng không ạ?)* |
| Tài xế | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>下<rt>した</rt></ruby>から<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>積<rt>つ</rt></ruby>みます。<ruby>潰<rt>つぶ</rt></ruby>れないように<ruby>軽<rt>かる</rt></ruby>く<ruby>置<rt>お</rt></ruby>いて。<br>*(Không sao. Chất từ dưới lên. Để nhẹ kẻo bẹp.)* |
| Linh | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý ạ.)* |
| Tài xế | リンさん、ベトナム<ruby>人<rt>じん</rt></ruby>?<br>*(Linh là người Việt à?)* |
| Linh | はい!<ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Vâng! Em sang 3 tháng trước ạ.)* |
| Tài xế | <ruby>日本語<rt>にほんご</rt></ruby>うまいね。<ruby>頑張<rt>がんば</rt></ruby>って!<br>*(Tiếng Nhật khá đấy. Cố lên!)* |
| Linh | ありがとうございます!<br>*(Em cảm ơn ạ!)* |

---

## Tình huống 11 — Sân xuất hàng · 6:15, Yamamoto ký 納品書

| Vai | Lời thoại |
|---|---|
| Tài xế | <ruby>納品書<rt>のうひんしょ</rt></ruby>のサインをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin ký vào phiếu giao hàng.)* |
| Yamamoto | はい。(ký) リンさんも<ruby>見<rt>み</rt></ruby>てて。これが<ruby>納品書<rt>のうひんしょ</rt></ruby>。<br>*(Vâng. Linh xem nhé. Đây là phiếu giao hàng.)* |
| Linh | <ruby>納品書<rt>のうひんしょ</rt></ruby>?<br>*(Nouhinsho?)* |
| Yamamoto | <ruby>何<rt>なに</rt></ruby>を<ruby>何個<rt>なんこ</rt></ruby><ruby>送<rt>おく</rt></ruby>ったかの<ruby>証明<rt>しょうめい</rt></ruby>。トラブルがあったときの<ruby>証拠<rt>しょうこ</rt></ruby>。<br>*(Chứng từ gửi gì bao nhiêu cái. Bằng chứng khi có sự cố.)* |
| Linh | <ruby>大事<rt>だいじ</rt></ruby>ですね。<ruby>保管<rt>ほかん</rt></ruby>しますか?<br>*(Quan trọng nhỉ. Lưu lại không ạ?)* |
| Yamamoto | <ruby>三<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>保管<rt>ほかん</rt></ruby>。<ruby>税務<rt>ぜいむ</rt></ruby>のためにも<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Lưu 3 năm. Cũng cần cho thuế.)* |
| Tài xế | では、いってきます!<br>*(Vậy tôi đi nhé!)* |
| Yamamoto | お<ruby>気<rt>き</rt></ruby>をつけて!<br>*(Đi cẩn thận!)* |
| Linh | いってらっしゃい!<br>*(Đi may mắn ạ!)* |

---

## Tình huống 12 — Sân nông trại · 6:30, JA直売所 軽トラ Suzuki đến lấy hàng

*Một bác lái 軽トラ già tóc bạc tới — Suzuki, người của 監理団体 kiêm liên lạc JA địa phương.*

| Vai | Lời thoại |
|---|---|
| Suzuki | おはよう!<ruby>直売所<rt>ちょくばいしょ</rt></ruby>の<ruby>分<rt>ぶん</rt></ruby>、<ruby>取<rt>と</rt></ruby>りに<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào sáng! Tôi đến lấy phần cho cửa hàng trực bán.)* |
| Yamamoto | スズキさん、おはようございます。10<ruby>箱<rt>はこ</rt></ruby>です。<br>*(Anh Suzuki chào ạ. 10 hộp ạ.)* |
| Suzuki | (nhìn Linh) リンちゃん、<ruby>元気<rt>げんき</rt></ruby>?<br>*(Linh ơi, khỏe không?)* |
| Linh | スズキさん、おはようございます!<ruby>元気<rt>げんき</rt></ruby>です。<br>*(Chú Suzuki, chào buổi sáng ạ! Em khỏe ạ.)* |
| Suzuki | <ruby>初収穫<rt>はつしゅうかく</rt></ruby>、おめでとう!リンちゃんも<ruby>農家<rt>のうか</rt></ruby>の<ruby>仲間入<rt>なかまい</rt></ruby>りだね。<br>*(Mừng thu hoạch đầu mùa! Linh cũng vào hội nhà nông rồi.)* |
| Linh | ありがとうございます!<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn ạ! Em mừng quá.)* |
| Suzuki | <ruby>直売所<rt>ちょくばいしょ</rt></ruby>でリンちゃんが<ruby>作<rt>つく</rt></ruby>ったトマト、お<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>紹介<rt>しょうかい</rt></ruby>するよ。「ベトナムの<ruby>実習生<rt>じっしゅうせい</rt></ruby>さんが<ruby>大事<rt>だいじ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てた」って。<br>*(Tôi giới thiệu cà Linh trồng ở cửa hàng nhé. "Em thực tập sinh Việt Nam chăm chỉ trồng".)* |
| Linh | (xúc động) ほ、<ruby>本当<rt>ほんとう</rt></ruby>ですか?ありがとうございます…<br>*(Th-thật ạ? Em cảm ơn lắm...)* |

---

## Tình huống 13 — Nhà ăn ký túc · 7:30, ăn sáng muộn — Dewi Riko vui

| Vai | Lời thoại |
|---|---|
| Saori | みんな、お<ruby>疲<rt>つか</rt></ruby>れさま!<ruby>朝<rt>あさ</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>、<ruby>用意<rt>ようい</rt></ruby>できてるよ。<br>*(Vất vả rồi! Bữa sáng chuẩn bị xong rồi nè.)* |
| Dewi | お<ruby>腹<rt>なか</rt></ruby>ペコペコ!<br>*(Đói lả luôn!)* |
| Riko | リン、<ruby>築地<rt>つきじ</rt></ruby>から<ruby>電話<rt>でんわ</rt></ruby><ruby>出<rt>で</rt></ruby>たんだって?すごい!<br>*(Linh, nghe điện Tsukiji hả? Siêu ghê!)* |
| Linh | ドキドキだったよ。<ruby>親方<rt>おやかた</rt></ruby>が「<ruby>練習<rt>れんしゅう</rt></ruby>」って<ruby>言<rt>い</rt></ruby>って<ruby>渡<rt>わた</rt></ruby>した。<br>*(Hồi hộp lắm. Sếp đưa máy bảo "tập đi" đó.)* |
| Dewi | <ruby>等級<rt>とうきゅう</rt></ruby>の<ruby>選別<rt>せんべつ</rt></ruby>、<ruby>難<rt>むずか</rt></ruby>しかった?<br>*(Phân loại hạng khó không?)* |
| Linh | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>からなかった。<ruby>佐織<rt>さおり</rt></ruby>さんが「<ruby>色<rt>いろ</rt></ruby>のムラ」「<ruby>形<rt>かたち</rt></ruby>のゆがみ」って<ruby>教<rt>おそ</rt></ruby>えてくれた。<br>*(Đầu chưa rõ. Chị Saori chỉ "loang lổ màu" "biến dạng".)* |
| Yamamoto | (vào ăn cùng) みんな、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>初収穫<rt>はつしゅうかく</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby><ruby>出荷<rt>しゅっか</rt></ruby>できた。みんなのおかげ。<br>*(Mọi người vất vả thật. Thu hoạch đầu mùa xuất hàng êm xuôi. Nhờ các em.)* |
| Cả nhóm | ありがとうございます!<br>*(Chúng em cảm ơn ạ!)* |

---

## Tình huống 14 — Phòng ký túc · 21:30, Zalo video bố

> Cảnh tiếng Việt — Linh gọi video bố ở Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Bố | A lô con! Mắt thâm sì kìa, mày làm gì mệt vậy? |
| Linh | Hôm nay 4 giờ sáng dậy đó bố. Thu hoạch lứa cà chua đầu! |
| Bố | Trời, sớm vậy con? Mà thu hoạch cà chua thì giống bên mình chứ gì? |
| Linh | Khác lắm bố ơi. Bên này phân ra 3 hạng: 秀, 優, 良 — gọi là 等級. Quả nứt cũng không bỏ, gọi là 規格外, bán cho nhà máy làm ketchup. |
| Bố | Hay ghê, không lãng phí. Còn đóng gói thế nào? |
| Linh | Hộp 4 ký y khít, sai 50g là không được. Phải dán tem 生産者, 産地, ngày 収穫. Rồi xe tải chở lên 築地 — chợ đầu mối Tokyo. Con còn nghe điện thoại của khách hàng Tsukiji nữa bố ơi! |
| Bố | Trời ơi giỏi quá! Tiếng Nhật điện thoại khó nhất đó nha. |
| Linh | Sếp đưa máy bắt con tập. Con run muốn xỉu mà nói được "少々お待ちください" rồi "お待たせしました" đó! |
| Bố | Con gái bố xịn ghê. Bố tự hào lắm. Mà chú Suzuki bảo bán cà của con ở cửa hàng kèm chữ "thực tập sinh Việt trồng"? |
| Linh | Dạ! Con xúc động muốn khóc luôn bố. Cảm giác như cà chua mình thật sự đến tay người ăn vậy. |
| Bố | Cố lên con. Ngủ sớm. Mai 5 giờ dậy nữa hả? |
| Linh | Dạ, 5 giờ. Con tắt máy nha bố. Yêu bố! |
| Bố | Yêu con! |

---

## Đọng lại chương 7

Linh trải qua **初収穫** — chu trình xuất hàng nông sản hoàn chỉnh của Nhật từ 4h30 sáng: dùng **収穫ばさみ** đầu tròn cắt trên cuống 1cm, phân biệt độ chín theo điểm đến (Tsukiji nhận quả 8 phần để chín dọc đường, JA địa phương lấy quả chín hẳn), phân **等級 秀・優・良** (giá chênh gấp đôi), xử lý **規格外** (quả nứt **裂果**) cho chế biến, đóng hộp 4kg ±50g, dán nhãn (生産者, 産地, 等級, 収穫日, JA logo, barcode). Linh lần đầu nghe điện thoại 業者 từ **築地** — biết dùng **少々お待ちください**, **お待たせしました**, **承知しました** vs **了解しました**. Bác Suzuki hứa giới thiệu cà chua Linh trồng cho khách tại 直売所.

> Từ vựng & mẫu câu chương này: 初収穫・収穫・出荷・収穫ばさみ・ヘタ・熟す・完熟・裂果・規格外・等級・秀・優・良・選別・箱詰め・JA・直売所・築地・生産者・産地・納品書・少々お待ちください・お待たせしました・承知しました・了解しました・いってらっしゃい

---

## Bí quyết chương

- 4 cụm điện thoại keigo cần thuộc lòng: **「はい、〜です」** (giới thiệu) / **「少々お待ちください」** (xin chờ) / **「お待たせしました」** (cảm ơn đã chờ) / **「承知しました」** (đã rõ, lịch sự).
- **承知しました** > **了解しました** về mức độ kính ngữ — với khách hàng/cấp trên dùng 承知, với đồng nghiệp dùng 了解.
- Hạng **秀/優/良**: hình thức là chính (vị y nhau). Người tiêu dùng Nhật cực kỳ khắt khe hình thức.
- **規格外** không phải đồ bỏ — bán cho 加工 (chế biến) làm juice/ketchup. Tinh thần "もったいない" là cốt lõi nghề nông Nhật.
- **納品書** lưu 3 năm cho mục đích thuế và chứng cứ khiếu nại.
- Khi đáp khách hàng qua điện thoại mà không biết câu trả lời: KHÔNG bao giờ tự đoán — luôn dùng "少々お待ちください" rồi hỏi 親方.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 初収穫 | はつしゅうかく | SƠ THU HOẠCH | thu hoạch đầu mùa |
| 収穫 | しゅうかく | THU HOẠCH | thu hoạch |
| 出荷 | しゅっか | XUẤT HÀ | xuất hàng |
| 収穫ばさみ | しゅうかくばさみ | THU HOẠCH | kéo thu hoạch |
| ヘタ | — | — | cuống quả |
| 熟す | じゅくす | THỤC | chín |
| 完熟 | かんじゅく | HOÀN THỤC | chín hoàn toàn |
| 裂果 | れっか | LIỆT QUẢ | quả nứt |
| 規格外 | きかくがい | QUY CÁCH NGOẠI | ngoài tiêu chuẩn |
| 加工 | かこう | GIA CÔNG | chế biến |
| 等級 | とうきゅう | ĐẲNG CẤP | hạng (cấp) |
| 秀 | しゅう | TÚ | hạng nhất |
| 優 | ゆう | ƯU | hạng nhì |
| 良 | りょう | LƯƠNG | hạng ba |
| 選別 | せんべつ | TUYỂN BIỆT | phân loại |
| 箱詰め | はこづめ | TƯƠNG | đóng hộp |
| 許容範囲 | きょよう はんい | HỨA DUNG PHẠM VI | biên độ cho phép |
| 生産者 | せいさんしゃ | SINH SẢN GIẢ | người sản xuất |
| 産地 | さんち | SẢN ĐỊA | xuất xứ |
| JA | ジェイエー | — | hợp tác xã nông nghiệp |
| 直売所 | ちょくばいしょ | TRỰC BÁN SỞ | cửa hàng trực bán |
| 築地 | つきじ | TRÚC ĐỊA | (chợ Tsukiji) |
| 納品書 | のうひんしょ | NẠP PHẨM THƯ | phiếu giao hàng |
| 出荷量 | しゅっかりょう | XUẤT HÀ LƯỢNG | lượng xuất |
| 軽トラ | けいトラ | KHINH | xe tải nhẹ |
| 運送会社 | うんそうがいしゃ | VẬN TỐNG HỘI XÃ | công ty vận chuyển |
| 消費者 | しょうひしゃ | TIÊU PHÍ GIẢ | người tiêu dùng |
| 承知しました | しょうちしました | THỪA TRI | đã rõ (lịch sự) |
| 了解 | りょうかい | LIỄU GIẢI | rõ rồi |
| 偽装 | ぎそう | NGỤY TRANG | gian dối (nhãn) |
| 仲間入り | なかまいり | TRỌNG GIAN | gia nhập hội |
| 均一 | きんいつ | QUÂN NHẤT | đồng đều |
| ムラ | — | — | loang lổ, không đều |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000008, 800000040, NULL, 'markdown_book', 'T8. Cái nóng mùa hè và sức khoẻ trong nhà kính (猛暑と健康管理)', '# Sách thực tập sinh nông nghiệp · T8. Cái nóng mùa hè và sức khoẻ trong nhà kính (猛暑と健康管理)

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp, Ibaraki, N5→N4). Học các mẫu hội thoại tiếng Nhật về sức khỏe mùa hè Nhật: báo cáo triệu chứng (chóng mặt, đau đầu, buồn nôn), xin nghỉ giữa giờ, học nhận diện 熱中症, mua 経口補水液, gọi 監理団体 khi đồng hương ngất xỉu, chăm sóc 仲間.

---

## Bối cảnh

Đầu tháng 8 năm 2025. Ibaraki đang trong đợt **猛暑** (nắng gay gắt) — báo khí tượng cảnh báo 35度 cả tuần. Trong nhà kính 40度 lúc trưa, độ ẩm 85%. 親方 Yamamoto đổi lịch — chỉ làm 5h-10h sáng và 16h-19h chiều. Hôm qua Riko bị 軽い熱中症 phải đi viện. Hôm nay 監理団体 cử Suzuki-san đến tập huấn phòng chống 熱中症 cho cả 3 TTS.

---

## Tình huống 1 — Sân nông trại · 4:50, họp sáng và cảnh báo nắng nóng

| Vai | Lời thoại |
|---|---|
| Yamamoto | みんな、おはよう。<ruby>今日<rt>きょう</rt></ruby>も<ruby>暑<rt>あつ</rt></ruby>くなります。<ruby>予報<rt>よほう</rt></ruby>は37<ruby>度<rt>ど</rt></ruby>。<br>*(Mọi người chào sáng. Hôm nay cũng nóng. Dự báo 37 độ.)* |
| Linh | 37<ruby>度<rt>ど</rt></ruby>!?<br>*(37 độ ạ!?)* |
| Yamamoto | ハウスの<ruby>中<rt>なか</rt></ruby>はもっと<ruby>暑<rt>あつ</rt></ruby>い。40<ruby>度<rt>ど</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えるかも。<br>*(Trong nhà kính nóng hơn. Có thể vượt 40 độ.)* |
| Dewi | リコは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Riko ổn không ạ?)* |
| Yamamoto | <ruby>昨日<rt>きのう</rt></ruby><ruby>病院<rt>びょういん</rt></ruby>から<ruby>帰<rt>かえ</rt></ruby>った。<ruby>今日<rt>きょう</rt></ruby>は<ruby>休<rt>やす</rt></ruby>む。<br>*(Hôm qua từ viện về. Hôm nay nghỉ.)* |
| Linh | よかった…<br>*(Mừng quá ạ...)* |
| Yamamoto | <ruby>午前<rt>ごぜん</rt></ruby>10<ruby>時<rt>じ</rt></ruby>までに<ruby>終<rt>お</rt></ruby>わらせる。<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>監理団体<rt>かんりだんたい</rt></ruby>のスズキさんが<ruby>来<rt>き</rt></ruby>ます。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>の<ruby>講習<rt>こうしゅう</rt></ruby>。<br>*(Đến 10h sáng xong. 10h chú Suzuki từ đoàn thể đến. Tập huấn say nắng.)* |
| Linh | <ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>…はい、<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Say nắng... vâng em học ạ.)* |

---

## Tình huống 2 — Nhà kính số 1 · 5:30, Saori dạy quy tắc uống nước

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby>のルールを<ruby>覚<rt>おぼ</rt></ruby>えて。<br>*(Linh, nhớ quy tắc bổ sung nước.)* |
| Linh | はい。<br>*(Vâng.)* |
| Saori | 15<ruby>分<rt>ふん</rt></ruby>に1<ruby>回<rt>かい</rt></ruby>、コップ1<ruby>杯<rt>ぱい</rt></ruby><ruby>飲<rt>の</rt></ruby>む。「のどが<ruby>渇<rt>かわ</rt></ruby>いた」と<ruby>思<rt>おも</rt></ruby>う<ruby>前<rt>まえ</rt></ruby>に。<br>*(15 phút uống 1 cốc. Trước khi nghĩ "khát".)* |
| Linh | のどが<ruby>渇<rt>かわ</rt></ruby>かなくても?<br>*(Không khát cũng uống ạ?)* |
| Saori | そう。<ruby>渇<rt>かわ</rt></ruby>いたら、もう<ruby>遅<rt>おそ</rt></ruby>い。<br>*(Đúng. Khát rồi là muộn.)* |
| Linh | <ruby>水<rt>みず</rt></ruby>だけでいいですか?<br>*(Chỉ nước thôi được không ạ?)* |
| Saori | <ruby>水<rt>みず</rt></ruby>だけはだめ。<ruby>塩<rt>しお</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>。これ、<ruby>塩飴<rt>しおあめ</rt></ruby>。1<ruby>時間<rt>じかん</rt></ruby>に1<ruby>個<rt>こ</rt></ruby>。<br>*(Mỗi nước thì không. Cần cả muối. Đây, kẹo muối. 1 giờ 1 viên.)* |
| Linh | しおあめ?<ruby>甘<rt>あま</rt></ruby>くて<ruby>塩っぱい<rt>しょっぱい</rt></ruby>?<br>*(Kẹo muối ạ? Vừa ngọt vừa mặn ạ?)* |
| Saori | そう。<ruby>食<rt>た</rt></ruby>べてみて。<br>*(Đúng. Thử đi.)* |
| Linh | (ăn) わ、おいしい!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>塩<rt>しお</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>がします。<br>*(Wow ngon! Vị muối thật ạ.)* |

---

## Tình huống 3 — Nhà kính số 1 · 7:00, Linh chóng mặt — báo Saori

*Linh đang hái cà chua, đột nhiên dừng tay, đứng đờ.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん…ちょっと…<br>*(Chị Saori... chờ chút ạ...)* |
| Saori | (chạy đến) どうしたの?<br>*(Sao vậy?)* |
| Linh | <ruby>頭<rt>あたま</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し…ふらふらします。<br>*(Đầu hơi... choáng váng ạ.)* |
| Saori | すぐ<ruby>外<rt>そと</rt></ruby>に<ruby>出<rt>で</rt></ruby>よう!<ruby>立<rt>た</rt></ruby>てる?<br>*(Ra ngoài ngay! Đứng được không?)* |
| Linh | はい、<ruby>立<rt>た</rt></ruby>てます。<br>*(Vâng, đứng được ạ.)* |
| Saori | (dìu ra cửa nhà kính, đến chỗ mát có quạt) ここに<ruby>座<rt>すわ</rt></ruby>って。<ruby>足<rt>あし</rt></ruby>を<ruby>高<rt>たか</rt></ruby>く。<br>*(Ngồi đây. Kê chân cao.)* |
| Linh | はい。<br>*(Vâng.)* |
| Saori | (đưa nước) ゆっくり<ruby>飲<rt>の</rt></ruby>んで。これは<ruby>経口補水液<rt>けいこうほすいえき</rt></ruby>。<br>*(Uống chậm. Đây là dung dịch bù điện giải.)* |
| Linh | けいこう…?<br>*(Keikou...?)* |
| Saori | <ruby>水<rt>みず</rt></ruby>と<ruby>塩<rt>しお</rt></ruby>と<ruby>糖分<rt>とうぶん</rt></ruby>のバランスがいい<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>のときに<ruby>飲<rt>の</rt></ruby>む。<br>*(Đồ uống cân bằng nước-muối-đường. Uống khi say nắng.)* |
| Linh | はい、<ruby>飲<rt>の</rt></ruby>みます。(uống)<br>*(Vâng, em uống ạ.)* |

---

## Tình huống 4 — Sân nông trại · 7:15, Yamamoto đến — hỏi triệu chứng

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Linh ổn không?)* |
| Linh | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Vâng, đỡ rồi ạ.)* |
| Yamamoto | <ruby>頭痛<rt>ずつう</rt></ruby>は?<br>*(Đau đầu không?)* |
| Linh | <ruby>少<rt>すこ</rt></ruby>しあります。<br>*(Hơi đau ạ.)* |
| Yamamoto | <ruby>吐<rt>は</rt></ruby>き<ruby>気<rt>け</rt></ruby>は?<br>*(Buồn nôn không?)* |
| Linh | はきけ…?<br>*(Hakike...?)* |
| Yamamoto | <ruby>気持<rt>きも</rt></ruby>ち<ruby>悪<rt>わる</rt></ruby>い<ruby>感<rt>かん</rt></ruby>じ。お<ruby>腹<rt>なか</rt></ruby>から<ruby>胸<rt>むね</rt></ruby>のあたり。<br>*(Cảm giác khó chịu. Từ bụng lên ngực.)* |
| Linh | ああ、いいえ、それはありません。<br>*(À, không, không có ạ.)* |
| Yamamoto | <ruby>意識<rt>いしき</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<ruby>私<rt>わたし</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>、<ruby>言<rt>い</rt></ruby>える?<br>*(Tỉnh táo không? Nói tên tôi được không?)* |
| Linh | ヤマモト<ruby>親方<rt>おやかた</rt></ruby>です。<br>*(Sếp Yamamoto ạ.)* |
| Yamamoto | (cười) よし、<ruby>軽<rt>かる</rt></ruby>い<ruby>段階<rt>だんかい</rt></ruby>だね。<ruby>今日<rt>きょう</rt></ruby>はもう<ruby>仕事<rt>しごと</rt></ruby>しないで、<ruby>寮<rt>りょう</rt></ruby>で<ruby>休<rt>やす</rt></ruby>む。<br>*(Tốt, mức nhẹ. Hôm nay không làm nữa, về ký túc nghỉ.)* |
| Linh | でも、まだ7<ruby>時<rt>じ</rt></ruby>です…<br>*(Nhưng mới 7 giờ ạ...)* |
| Yamamoto | <ruby>無理<rt>むり</rt></ruby>しない。<ruby>体<rt>からだ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>。<br>*(Không gắng. Sức khỏe trên hết.)* |
| Linh | はい…ありがとうございます。<br>*(Vâng... em cảm ơn ạ.)* |

---

## Tình huống 5 — Ký túc xá · 8:00, Linh nằm nghỉ — Riko qua thăm

| Vai | Lời thoại |
|---|---|
| Riko | リン、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?わたしと<ruby>同<rt>おな</rt></ruby>じだね…<br>*(Linh ổn không? Giống tao luôn...)* |
| Linh | リコ、<ruby>昨日<rt>きのう</rt></ruby>はもっとつらかったでしょう?<br>*(Riko hôm qua khổ hơn nhỉ?)* |
| Riko | <ruby>病院<rt>びょういん</rt></ruby>で<ruby>点滴<rt>てんてき</rt></ruby><ruby>打<rt>う</rt></ruby>った。3<ruby>時間<rt>じかん</rt></ruby>もかかった。<br>*(Truyền dịch ở bệnh viện. Mất 3 tiếng.)* |
| Linh | てんてき?<br>*(Tenteki?)* |
| Riko | <ruby>腕<rt>うで</rt></ruby>から<ruby>液<rt>えき</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる…(làm động tác)<br>*(Truyền dịch qua tay ấy...)* |
| Linh | ああ、わかった。<ruby>怖<rt>こわ</rt></ruby>かった?<br>*(À hiểu rồi. Sợ không?)* |
| Riko | うん…ちょっと。でも<ruby>看護師<rt>かんごし</rt></ruby>さんがやさしかった。<br>*(Ừ... hơi. Nhưng cô y tá hiền.)* |
| Linh | <ruby>保険証<rt>ほけんしょう</rt></ruby>は?お<ruby>金<rt>かね</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Thẻ bảo hiểm? Tiền không sao chứ?)* |
| Riko | <ruby>監理団体<rt>かんりだんたい</rt></ruby>が<ruby>立<rt>た</rt></ruby>て<ruby>替<rt>か</rt></ruby>えてくれた。3<ruby>割<rt>わり</rt></ruby>だけ<ruby>自分<rt>じぶん</rt></ruby>で<ruby>払<rt>はら</rt></ruby>う。<br>*(Đoàn thể tạm ứng. Mình chỉ trả 30%.)* |
| Linh | よかった。<br>*(Mừng quá.)* |

---

## Tình huống 6 — Phòng họp ký túc · 10:00, Suzuki từ 監理団体 dạy về 熱中症

| Vai | Lời thoại |
|---|---|
| Suzuki | みなさん、<ruby>体調<rt>たいちょう</rt></ruby>は?リンちゃんも<ruby>朝<rt>あさ</rt></ruby>ふらふらしたって?<br>*(Mọi người sao? Linh sáng nay cũng choáng à?)* |
| Linh | はい、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Vâng, em xin lỗi ạ.)* |
| Suzuki | <ruby>謝<rt>あやま</rt></ruby>らないで!<ruby>言<rt>い</rt></ruby>ってくれたのが<ruby>偉<rt>えら</rt></ruby>い。<br>*(Đừng xin lỗi! Báo được là giỏi.)* |
| Suzuki | <ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>には<ruby>三<rt>みっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>があります。<br>*(Say nắng có 3 mức.)* |
| Dewi | <ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh chỉ ạ.)* |
| Suzuki | I<ruby>度<rt>ど</rt></ruby>:めまい、<ruby>立<rt>た</rt></ruby>ちくらみ、こむら<ruby>返<rt>がえ</rt></ruby>り。<ruby>涼<rt>すず</rt></ruby>しい<ruby>場所<rt>ばしょ</rt></ruby>で<ruby>休<rt>やす</rt></ruby>めば<ruby>回復<rt>かいふく</rt></ruby>。<br>*(Độ 1: chóng mặt, choáng đứng, chuột rút. Nghỉ chỗ mát là hồi phục.)* |
| Linh | こむらがえり?<br>*(Komuragaeri?)* |
| Suzuki | <ruby>足<rt>あし</rt></ruby>の<ruby>筋肉<rt>きんにく</rt></ruby>がギュッとなる。<ruby>痛<rt>いた</rt></ruby>い。<br>*(Cơ chân co cứng. Đau.)* |
| Linh | ああ、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(À em hiểu ạ.)* |
| Suzuki | II<ruby>度<rt>ど</rt></ruby>:<ruby>頭痛<rt>ずつう</rt></ruby>、<ruby>吐<rt>は</rt></ruby>き<ruby>気<rt>け</rt></ruby>、ぐったり。<ruby>病院<rt>びょういん</rt></ruby>に<ruby>行<rt>い</rt></ruby>く。リコちゃんはこれ。<br>*(Độ 2: đau đầu, buồn nôn, mệt rũ. Đi viện. Riko mức này.)* |
| Suzuki | III<ruby>度<rt>ど</rt></ruby>:<ruby>意識<rt>いしき</rt></ruby>がない、けいれん、<ruby>体温<rt>たいおん</rt></ruby>40<ruby>度<rt>ど</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。すぐ119<ruby>番<rt>ばん</rt></ruby>。<br>*(Độ 3: hôn mê, co giật, sốt trên 40 độ. Nguy tính mạng. Gọi 119 ngay.)* |
| Linh | 119<ruby>番<rt>ばん</rt></ruby>は<ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby>ですか?<br>*(119 là xe cứu thương ạ?)* |
| Suzuki | そう。<ruby>覚<rt>おぼ</rt></ruby>えておいてね。<br>*(Đúng. Nhớ nhé.)* |

---

## Tình huống 7 — Phòng họp ký túc · 10:30, Suzuki dạy gọi 119 bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Suzuki | みんな、119<ruby>番<rt>ばん</rt></ruby>の<ruby>電話<rt>でんわ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をします。<br>*(Mọi người tập gọi 119.)* |
| Linh | <ruby>怖<rt>こわ</rt></ruby>いです…<br>*(Em sợ ạ...)* |
| Suzuki | <ruby>怖<rt>こわ</rt></ruby>いから<ruby>練習<rt>れんしゅう</rt></ruby>するの。<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>言<rt>い</rt></ruby>えるように。<br>*(Vì sợ nên mới tập. Để lúc thật nói được.)* |
| Suzuki | (đóng vai tổng đài) はい、119<ruby>番<rt>ばん</rt></ruby>です。<ruby>火事<rt>かじ</rt></ruby>ですか、<ruby>救急<rt>きゅうきゅう</rt></ruby>ですか?<br>*(A lô 119. Cháy hay cấp cứu?)* |
| Linh | <ruby>救急<rt>きゅうきゅう</rt></ruby>です!<br>*(Cấp cứu ạ!)* |
| Suzuki | <ruby>住所<rt>じゅうしょ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho biết địa chỉ.)* |
| Linh | (lấy thẻ trong ví) えっと、<ruby>茨城県<rt>いばらきけん</rt></ruby><ruby>水戸市<rt>みとし</rt></ruby><ruby>緑町<rt>みどりちょう</rt></ruby>3-15、ヤマモト<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>です。<br>*(Ờ, 3-15 Midori-chou, Mito-shi, Ibaraki, ký túc trang trại Yamamoto ạ.)* |
| Suzuki | どんな<ruby>症状<rt>しょうじょう</rt></ruby>ですか?<br>*(Triệu chứng thế nào?)* |
| Linh | <ruby>友<rt>とも</rt></ruby>だちが<ruby>倒<rt>たお</rt></ruby>れました。<ruby>意識<rt>いしき</rt></ruby>がありません。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Bạn em ngã rồi. Bất tỉnh. Em nghĩ là say nắng ạ.)* |
| Suzuki | <ruby>素晴<rt>すば</rt></ruby>らしい!みんな、リンちゃんみたいに<ruby>住所<rt>じゅうしょ</rt></ruby>カードを<ruby>必<rt>かなら</rt></ruby>ず<ruby>財布<rt>さいふ</rt></ruby>に。<br>*(Xuất sắc! Mọi người nhớ giữ thẻ địa chỉ trong ví như Linh.)* |

---

## Tình huống 8 — Phòng họp ký túc · 11:00, Suzuki phát kit và dạy cách dùng

| Vai | Lời thoại |
|---|---|
| Suzuki | これは「<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>キット」。<ruby>一人<rt>ひとり</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つ。<br>*(Đây là "kit phòng say nắng". Mỗi người một bộ.)* |
| Linh | (mở ra) <ruby>経口補水液<rt>けいこうほすいえき</rt></ruby>、<ruby>塩飴<rt>しおあめ</rt></ruby>、<ruby>冷却<rt>れいきゃく</rt></ruby>シート、<ruby>体温計<rt>たいおんけい</rt></ruby>…たくさんです。<br>*(Dung dịch điện giải, kẹo muối, miếng dán lạnh, nhiệt kế... nhiều quá.)* |
| Suzuki | <ruby>冷却<rt>れいきゃく</rt></ruby>シートは<ruby>首<rt>くび</rt></ruby>、<ruby>脇<rt>わき</rt></ruby>の<ruby>下<rt>した</rt></ruby>、<ruby>足<rt>あし</rt></ruby>の<ruby>付<rt>つ</rt></ruby>け<ruby>根<rt>ね</rt></ruby>に<ruby>貼<rt>は</rt></ruby>る。<ruby>太<rt>ふと</rt></ruby>い<ruby>血管<rt>けっかん</rt></ruby>がある<ruby>場所<rt>ばしょ</rt></ruby>。<br>*(Miếng lạnh dán vào cổ, nách, bẹn. Chỗ có mạch máu lớn.)* |
| Dewi | <ruby>血管<rt>けっかん</rt></ruby>?<br>*(Mạch máu?)* |
| Suzuki | <ruby>血<rt>ち</rt></ruby>の<ruby>管<rt>くだ</rt></ruby>。そこを<ruby>冷<rt>ひ</rt></ruby>やすと、<ruby>体<rt>からだ</rt></ruby>が<ruby>早<rt>はや</rt></ruby>く<ruby>冷<rt>ひ</rt></ruby>える。<br>*(Ống chứa máu. Làm lạnh đó là cơ thể hạ nhiệt nhanh.)* |
| Linh | <ruby>体温計<rt>たいおんけい</rt></ruby>は<ruby>耳<rt>みみ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れますか?<br>*(Nhiệt kế bỏ vào tai ạ?)* |
| Suzuki | これは<ruby>脇<rt>わき</rt></ruby>の<ruby>下<rt>した</rt></ruby>。3<ruby>分<rt>ぷん</rt></ruby><ruby>挟<rt>はさ</rt></ruby>む。37.5<ruby>度<rt>ど</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>なら<ruby>警戒<rt>けいかい</rt></ruby>。<br>*(Cái này kẹp nách. 3 phút. Trên 37.5 độ là cảnh báo.)* |
| Linh | はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng em nhớ ạ.)* |

---

## Tình huống 9 — Drug store ドラッグストア · 14:00, Linh đi mua thêm 経口補水液

*Sau khi ngủ trưa, đỡ hẳn, Linh đi cùng Saori ra ドラッグストア mua thêm dụng cụ.*

| Vai | Lời thoại |
|---|---|
| Linh | すみません、<ruby>経口補水液<rt>けいこうほすいえき</rt></ruby>はどこですか?<br>*(Xin hỏi, dung dịch bù điện giải ở đâu ạ?)* |
| Nhân viên | あ、こちらです。OS-1がよく<ruby>売<rt>う</rt></ruby>れています。<br>*(À, bên này. OS-1 bán chạy.)* |
| Linh | スポーツドリンクと<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Khác sport drink ạ?)* |
| Nhân viên | はい、<ruby>違<rt>ちが</rt></ruby>います。スポーツドリンクは<ruby>糖分<rt>とうぶん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<ruby>経口補水液<rt>けいこうほすいえき</rt></ruby>は<ruby>塩分<rt>えんぶん</rt></ruby>と<ruby>水分<rt>すいぶん</rt></ruby>のバランスがいい。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>のときに<ruby>飲<rt>の</rt></ruby>みます。<br>*(Vâng khác. Sport drink nhiều đường. Dung dịch bù điện giải cân muối-nước. Uống khi say nắng.)* |
| Linh | 6<ruby>本<rt>ぽん</rt></ruby><ruby>下<rt>くだ</rt></ruby>さい。それから<ruby>冷却<rt>れいきゃく</rt></ruby>スプレーもありますか?<br>*(Cho em 6 chai. Có xịt làm mát không ạ?)* |
| Nhân viên | はい、ここに。<ruby>服<rt>ふく</rt></ruby>に<ruby>吹<rt>ふ</rt></ruby>きかけると<ruby>涼<rt>すず</rt></ruby>しいです。<br>*(Có đây ạ. Xịt vào áo là mát.)* |
| Linh | これも<ruby>下<rt>くだ</rt></ruby>さい。<ruby>合計<rt>ごうけい</rt></ruby>いくらですか?<br>*(Cái này cũng cho em. Tổng bao nhiêu ạ?)* |
| Nhân viên | 2,580<ruby>円<rt>えん</rt></ruby>です。<br>*(2,580 yên ạ.)* |
| Linh | (đưa thẻ) カードでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho em quẹt thẻ ạ.)* |

---

## Tình huống 10 — Nhà kính số 1 · 16:30, ca chiều — kiểm tra nhiệt độ trước vào

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>体調<rt>たいちょう</rt></ruby>は?<ruby>無理<rt>むり</rt></ruby>なら<ruby>休<rt>やす</rt></ruby>んでていいよ。<br>*(Linh, sức khỏe? Nếu gắng thì nghỉ tiếp đi.)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>働<rt>はたら</rt></ruby>きたいです。<br>*(Em ổn ạ. Em muốn làm ạ.)* |
| Yamamoto | じゃあ、ハウスの<ruby>温度<rt>おんど</rt></ruby>を<ruby>測<rt>はか</rt></ruby>って。<br>*(Vậy em đo nhiệt độ nhà kính.)* |
| Linh | (vào nhà kính, xem nhiệt kế) 35<ruby>度<rt>ど</rt></ruby>です。<ruby>湿度<rt>しつど</rt></ruby>は80パーセント。<br>*(35 độ ạ. Độ ẩm 80%.)* |
| Yamamoto | OK。30<ruby>度<rt>ど</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えてるから、ファンを<ruby>強<rt>つよ</rt></ruby>に。<br>*(OK. Quá 30 độ rồi, bật quạt mạnh.)* |
| Linh | <ruby>窓<rt>まど</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>開<rt>あ</rt></ruby>けますか?<br>*(Cửa sổ mở hết không ạ?)* |
| Yamamoto | そう。それから「<ruby>遮光<rt>しゃこう</rt></ruby>カーテン」を<ruby>引<rt>ひ</rt></ruby>く。<br>*(Đúng. Rồi kéo "rèm chắn nắng".)* |
| Linh | しゃこう?<br>*(Shakou?)* |
| Yamamoto | <ruby>太陽<rt>たいよう</rt></ruby>の<ruby>光<rt>ひかり</rt></ruby>を<ruby>遮<rt>さえぎ</rt></ruby>る。これがあると<ruby>中<rt>なか</rt></ruby>が5<ruby>度<rt>ど</rt></ruby><ruby>下<rt>さ</rt></ruby>がる。<br>*(Chắn ánh sáng mặt trời. Có cái này là giảm 5 độ.)* |
| Linh | わぁ、すごい!<br>*(Wow đỉnh ạ!)* |

---

## Tình huống 11 — Nhà kính số 1 · 17:30, Saori và Linh tâm sự về sự cố sáng

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>朝<rt>あさ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>かった。<ruby>急<rt>きゅう</rt></ruby>に<ruby>顔<rt>かお</rt></ruby>が<ruby>白<rt>しろ</rt></ruby>くなったから。<br>*(Linh, sáng nay tớ sợ thật. Mặt em tự nhiên trắng bệch.)* |
| Linh | すみません、<ruby>心配<rt>しんぱい</rt></ruby>させて。<br>*(Em xin lỗi vì làm chị lo.)* |
| Saori | <ruby>謝<rt>あやま</rt></ruby>らないで。<ruby>言<rt>い</rt></ruby>ってくれたのが<ruby>嬉<rt>うれ</rt></ruby>しい。ベトナム<ruby>人<rt>じん</rt></ruby>って<ruby>我慢<rt>がまん</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いと<ruby>聞<rt>き</rt></ruby>いた。<br>*(Đừng xin lỗi. Em nói được tớ mừng. Nghe nói người Việt hay chịu đựng.)* |
| Linh | あ、そうかも…<ruby>家<rt>いえ</rt></ruby>では<ruby>母<rt>はは</rt></ruby>に<ruby>言<rt>い</rt></ruby>わなかった。<br>*(À đúng vậy... Ở nhà em không nói với mẹ.)* |
| Saori | <ruby>日本<rt>にほん</rt></ruby>では<ruby>違<rt>ちが</rt></ruby>うよ。<ruby>体<rt>からだ</rt></ruby>が<ruby>変<rt>へん</rt></ruby>だったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>我慢<rt>がまん</rt></ruby>するほうが<ruby>迷惑<rt>めいわく</rt></ruby>。<br>*(Ở Nhật khác. Người khó chịu là phải báo. Cố chịu là phiền hơn.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>怒<rt>おこ</rt></ruby>られないですか?<br>*(Thật ạ? Không bị mắng ạ?)* |
| Saori | <ruby>逆<rt>ぎゃく</rt></ruby>!<ruby>倒<rt>たお</rt></ruby>れたら<ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby>、<ruby>労災<rt>ろうさい</rt></ruby>、<ruby>仕事<rt>しごと</rt></ruby><ruby>止<rt>と</rt></ruby>まる、もっと<ruby>大変<rt>たいへん</rt></ruby>。<br>*(Ngược! Ngã ra là xe cấp cứu, tai nạn lao động, dừng việc, lớn chuyện hơn.)* |
| Linh | はい、これから<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, sau này em luôn nói ạ.)* |

---

## Tình huống 12 — Sân nông trại · 19:00, Yamamoto tổng kết — đổi lịch tuần tới

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>来週<rt>らいしゅう</rt></ruby>も<ruby>暑<rt>あつ</rt></ruby>いから、シフトを<ruby>変<rt>か</rt></ruby>えます。<br>*(Vất vả rồi. Tuần sau cũng nóng nên đổi ca.)* |
| Linh | はい。<br>*(Vâng.)* |
| Yamamoto | <ruby>朝<rt>あさ</rt></ruby>4<ruby>時半<rt>じはん</rt></ruby>から9<ruby>時<rt>じ</rt></ruby>まで。<ruby>昼<rt>ひる</rt></ruby><ruby>休<rt>やす</rt></ruby>み。<ruby>夕方<rt>ゆうがた</rt></ruby>17<ruby>時<rt>じ</rt></ruby>から19<ruby>時<rt>じ</rt></ruby>。<br>*(Sáng 4h30 đến 9h. Trưa nghỉ. Chiều 17h đến 19h.)* |
| Dewi | 4<ruby>時半<rt>じはん</rt></ruby>!<ruby>起<rt>お</rt></ruby>きれるかな…<br>*(4h30 ạ! Dậy được không nhỉ...)* |
| Yamamoto | <ruby>慣<rt>な</rt></ruby>れる。<ruby>夜<rt>よる</rt></ruby>21<ruby>時<rt>じ</rt></ruby>には<ruby>寝<rt>ね</rt></ruby>ること。<br>*(Quen thôi. 21h tối là phải ngủ.)* |
| Linh | <ruby>給料<rt>きゅうりょう</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Lương vẫn vậy ạ?)* |
| Yamamoto | もちろん。<ruby>合計<rt>ごうけい</rt></ruby>7<ruby>時間<rt>じかん</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらない。<br>*(Tất nhiên. Tổng 7 tiếng không đổi.)* |
| Linh | わかりました。<ruby>体<rt>からだ</rt></ruby>のために、ありがとうございます。<br>*(Vâng em hiểu. Cảm ơn sếp vì sức khỏe bọn em ạ.)* |
| Yamamoto | お<ruby>互<rt>たが</rt></ruby>いさま。みんな<ruby>家族<rt>かぞく</rt></ruby>みたいなものだから。<br>*(Bù qua bù lại thôi. Mọi người như gia đình mà.)* |
| Linh | (xúc động) ありがとうございます…<br>*(Em cảm ơn ạ...)* |

---

## Tình huống 13 — Phòng Riko · 20:30, ba TTS ăn cháo Phil — kể chuyện

> Cảnh tiếng Việt-Anh-Tagalog xen lẫn — Dewi nấu cháo cho Riko.

| Vai | Lời thoại |
|---|---|
| Dewi | Riko, cháo gừng Indonesia. Ăn nóng cho khỏe. |
| Riko | Cảm ơn Dewi. Thơm quá! |
| Linh | Riko, mai mày đi làm lại được chưa? |
| Riko | Bác sĩ bảo nghỉ 3 ngày. Mai vẫn nghỉ. |
| Dewi | Vậy nghỉ đi. Sức khỏe quan trọng nhất. |
| Linh | Bữa nay tao mới hiểu sao bên Nhật quy định khắt khe vụ 熱中症 vậy. Mỗi năm chết mấy trăm người luôn đó! |
| Riko | Thật hả? Bên Phil tao 35 độ là nóng kinh khủng rồi. Bên Nhật 35-37 mà nhà kính 40 độ. |
| Dewi | Indo cũng nóng nhưng độ ẩm khác. Nhật ẩm 80% mới ác. Mồ hôi không bay được. |
| Linh | Ừ. Mà chị Saori nói câu hay lắm: "Người Việt hay chịu đựng" — đúng thật mày ơi. Tao ở nhà sốt 39 cũng không kêu mẹ. |
| Riko | Người Phil cũng vậy đó! "Kaya pa, kaya pa" — "còn chịu được, còn chịu được". |
| Dewi | Bên Indo tao cũng vậy. Mà ở Nhật phải đổi tư duy. Báo cáo là tốt, không báo mới là tệ. |
| Linh | Đúng. Học bài học to lắm hôm nay. |
| Riko | Mai tụi mày đi làm cẩn thận. Đừng để tao một mình lo trong phòng nha. |
| Linh | Yên tâm. 4 giờ rưỡi tao dậy. 8 giờ tao quay về xem mày. |
| Dewi | Tao cũng vậy. |

---

## Đọng lại chương 8

Mùa hè **猛暑** Ibaraki dạy Linh bài học to: đối phó **熱中症** là kỷ luật sống còn ở Nhật. Cô học 3 mức (I度 / II度 / III度), nhớ số khẩn **119**, cách gọi cấp cứu bằng tiếng Nhật (火事 vs 救急, đọc 住所, mô tả 症状), dùng kit **冷却シート** dán cổ/nách/bẹn nơi mạch máu lớn, đo nhiệt 脇 ≥37.5度 là cảnh báo, dùng **経口補水液 (OS-1)** khác sport drink (cân muối-đường-nước). Quan trọng nhất: **我慢 = 迷惑** — văn hóa Nhật bắt buộc phải báo cáo cảm thấy không khỏe (đảo ngược tư duy Việt Nam "chịu đựng được thì chịu"). 親方 đổi shift sáng sớm + chiều muộn, **遮光カーテン** giảm 5度 trong **ハウス**, nước **水分補給** 15 phút/cốc + **塩飴** 1giờ/viên.

> Từ vựng & mẫu câu chương này: 猛暑・熱中症・水分補給・塩飴・経口補水液・OS-1・冷却シート・体温計・遮光カーテン・I度・II度・III度・めまい・吐き気・頭痛・こむら返り・救急車・119・症状・体調が悪い・無理しないで・我慢しないで・〜と思います・大丈夫です

---

## Bí quyết chương

- 3 chữ vàng: **報告・連絡・相談** (報連相 hourensou) áp dụng cả với sức khỏe. Khó chịu là báo ngay.
- Số khẩn Nhật: **119** = cấp cứu/cứu hỏa. **110** = cảnh sát. Khác Việt Nam.
- **経口補水液 (OS-1)** không thay được bằng sport drink — pha sẵn theo công thức WHO Na+ 50mEq/L.
- Trong ハウス mùa hè: 35-40度 + 湿度 80% — chỉ số WBGT vượt 31 là "nguy hiểm", bắt buộc tạm dừng.
- Khi gặp người ngã: lập tức (1) gọi 119, (2) chuyển chỗ mát, (3) cởi quần áo, (4) dán 冷却シート vào 3 chỗ huyết quản lớn, (5) nếu tỉnh thì uống 経口補水液.
- Văn hóa Nhật: **我慢 (gắng chịu) = 迷惑 (làm phiền)** trong môi trường lao động. Tư duy ngược Việt Nam — phải đổi.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 猛暑 | もうしょ | MÃNH THỬ | nắng nóng gay gắt |
| 熱中症 | ねっちゅうしょう | NHIỆT TRUNG CHỨNG | say nắng |
| 水分補給 | すいぶんほきゅう | THỦY PHẦN BỔ CẤP | bổ sung nước |
| 塩分 | えんぶん | DIÊM PHẦN | muối, phần muối |
| 塩飴 | しおあめ | DIÊM | kẹo muối |
| 経口補水液 | けいこうほすいえき | KINH KHẨU BỔ THỦY DỊCH | dung dịch bù điện giải |
| 糖分 | とうぶん | ĐƯỜNG PHẦN | đường, phần đường |
| 冷却シート | れいきゃくシート | LÃNH KHƯỚC | miếng dán lạnh |
| 冷却スプレー | れいきゃくスプレー | LÃNH KHƯỚC | xịt làm mát |
| 体温計 | たいおんけい | THỂ ÔN KẾ | nhiệt kế |
| 遮光カーテン | しゃこうカーテン | GIÁ QUANG | rèm chắn nắng |
| めまい | — | — | chóng mặt |
| 立ちくらみ | たちくらみ | LẬP | choáng đứng |
| こむら返り | こむらがえり | PHẢN | chuột rút |
| 吐き気 | はきけ | THỔ KHÍ | buồn nôn |
| 頭痛 | ずつう | ĐẦU THỐNG | đau đầu |
| ぐったり | — | — | mệt rũ |
| 意識 | いしき | Ý THỨC | ý thức (tỉnh táo) |
| けいれん | — | — | co giật |
| 体温 | たいおん | THỂ ÔN | thân nhiệt |
| 症状 | しょうじょう | CHỨNG TRẠNG | triệu chứng |
| 体調 | たいちょう | THỂ ĐIỆU | tình trạng cơ thể |
| 血管 | けっかん | HUYẾT QUẢN | mạch máu |
| 脇の下 | わきのした | HIẾP HẠ | nách |
| 救急 | きゅうきゅう | CỨU CẤP | cấp cứu |
| 救急車 | きゅうきゅうしゃ | CỨU CẤP XA | xe cấp cứu |
| 119番 | ひゃくじゅうきゅうばん | — | số 119 |
| 火事 | かじ | HỎA SỰ | cháy |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | đoàn thể quản lý TTS |
| 点滴 | てんてき | ĐIỂM TÍCH | truyền dịch |
| 保険証 | ほけんしょう | BẢO HIỂM CHỨNG | thẻ bảo hiểm |
| 看護師 | かんごし | KHÁN HỘ SƯ | y tá |
| 労災 | ろうさい | LAO TAI | tai nạn lao động |
| 我慢 | がまん | NGÃ MẠN | nhịn, chịu đựng |
| 迷惑 | めいわく | MÊ HOẶC | phiền phức, làm phiền |
| 無理 | むり | VÔ LÝ | gắng quá sức |
| 回復 | かいふく | HỒI PHỤC | hồi phục |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000009, 800000040, NULL, 'markdown_book', 'T09. Đăng ký và thi JLPT N4', '# Sách Nông nghiệp Năm 1 · T09. Đăng ký và thi JLPT N4

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp, TTS nông nghiệp Ibaraki, đã sang Nhật 7 tháng). Học các mẫu hội thoại tiếng Nhật của thí sinh JLPT: xin nghỉ học thi, hỏi giám lý đoàn thể về thủ tục, đăng ký online, đi mua đồ dùng thi, tới hội trường thi, báo kết quả về Việt Nam.

## Bối cảnh

Tháng 11–12/2025. Linh đã làm nông trại nhà 親方 Yamamoto được hơn 7 tháng. Trình độ tiếng Nhật đã lên gần N4. 監理団体 (đoàn thể giám lý) Suzuki khuyến khích Linh thi JLPT N4 kỳ tháng 12 ở Mito để xin trợ cấp 5 man yên. Chương này tập trung các mẫu câu xin nghỉ làm, đăng ký thi, đi tới hội trường và báo kết quả.

## Tình huống 1 — Nhà ăn nông trại, 7:30 sáng — Xin phép 親方 cho thi N4

*Bữa sáng đầu tháng 11. Linh cầm tờ thông báo của đoàn thể bước vào nhà ăn.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、おはようございます。ちょっと<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Sếp, chào buổi sáng. Em có chút chuyện muốn xin ý kiến ạ.)* |
| Yamamoto | おう、<ruby>何<rt>なん</rt></ruby>だ？<ruby>座<rt>すわ</rt></ruby>って<ruby>話<rt>はな</rt></ruby>せ。<br>*(Ờ, chuyện gì? Ngồi xuống nói đi.)* |
| Linh | <ruby>12月<rt>じゅうにがつ</rt></ruby>の<ruby>日曜日<rt>にちようび</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>のN4の<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Chủ nhật tháng 12, em muốn dự thi N4 tiếng Nhật ạ.)* |
| Yamamoto | <ruby>試験<rt>しけん</rt></ruby>か。<ruby>場所<rt>ばしょ</rt></ruby>は？<br>*(Thi à. Địa điểm ở đâu?)* |
| Linh | <ruby>水戸<rt>みと</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby><ruby>9時<rt>くじ</rt></ruby>から<ruby>午後<rt>ごご</rt></ruby><ruby>4時<rt>よじ</rt></ruby>までです。<br>*(Trường đại học Mito ạ. Từ 9 giờ sáng đến 4 giờ chiều.)* |
| Yamamoto | じゃ、その<ruby>日<rt>ひ</rt></ruby>は<ruby>休<rt>やす</rt></ruby>んでいいぞ。がんばれよ。<br>*(Vậy ngày đó nghỉ được. Cố lên nhé.)* |
| Linh | ありがとうございます！<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Cảm ơn sếp ạ! Em nhất định sẽ đỗ.)* |

## Tình huống 2 — Văn phòng đoàn thể Suzuki, sau giờ làm — Hỏi thủ tục đăng ký

| Vai | Lời thoại |
|---|---|
| Linh | スズキさん、N4の<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みは、どうすればいいですか。<br>*(Anh Suzuki, đăng ký N4 phải làm thế nào ạ?)* |
| Suzuki | あ、リンさんも<ruby>受<rt>う</rt></ruby>けるんですか。いいですね。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みはネットでできますよ。<br>*(A, Linh cũng thi à. Tốt đấy. Đăng ký được qua mạng nhé.)* |
| Linh | ネットですか。<ruby>私<rt>わたし</rt></ruby>、ちょっと<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Qua mạng ạ? Em hơi khó.)* |
| Suzuki | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<ruby>受験料<rt>じゅけんりょう</rt></ruby>は<ruby>6500円<rt>ろくせんごひゃくえん</rt></ruby>です。<br>*(Không sao, mình làm cùng. Lệ phí 6500 yên.)* |
| Linh | はい、お<ruby>金<rt>かね</rt></ruby>は<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Vâng, em mang tiền theo rồi ạ.)* |
| Suzuki | じゃ、パソコンを<ruby>開<rt>ひら</rt></ruby>きます。<ruby>顔写真<rt>かおじゃしん</rt></ruby>のデータはありますか。<br>*(Vậy anh mở máy tính. Có dữ liệu ảnh chân dung không?)* |
| Linh | スマホで<ruby>撮<rt>と</rt></ruby>った<ruby>写真<rt>しゃしん</rt></ruby>でいいですか。<br>*(Ảnh em chụp bằng điện thoại được không ạ?)* |
| Suzuki | はい、<ruby>背景<rt>はいけい</rt></ruby>が<ruby>白<rt>しろ</rt></ruby>ければOKです。<br>*(Được, nền trắng là OK.)* |

## Tình huống 3 — Văn phòng đoàn thể — Điền thông tin online

*Suzuki ngồi cạnh, vừa thao tác vừa hướng dẫn.*

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>名前<rt>なまえ</rt></ruby>はローマ<ruby>字<rt>じ</rt></ruby>で<ruby>入<rt>い</rt></ruby>れてください。パスポートと<ruby>同<rt>おな</rt></ruby>じです。<br>*(Tên nhập bằng romaji, giống hộ chiếu nhé.)* |
| Linh | NGUYEN THI LINHですね。<br>*(NGUYEN THI LINH nhỉ.)* |
| Suzuki | はい、<ruby>生年月日<rt>せいねんがっぴ</rt></ruby>は？<br>*(Đúng. Ngày sinh?)* |
| Linh | <ruby>2003年<rt>にせんさんねん</rt></ruby><ruby>5月<rt>ごがつ</rt></ruby><ruby>10日<rt>とおか</rt></ruby>です。<br>*(Ngày 10 tháng 5 năm 2003 ạ.)* |
| Suzuki | <ruby>会場<rt>かいじょう</rt></ruby>は<ruby>茨城<rt>いばらき</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>でいいですね。<br>*(Hội trường chọn Đại học Ibaraki được chứ?)* |
| Linh | はい、<ruby>水戸<rt>みと</rt></ruby>のキャンパスでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cơ sở Mito ạ.)* |
| Suzuki | はい、<ruby>支払<rt>しはら</rt></ruby>いはコンビニで<ruby>明日<rt>あした</rt></ruby>までにしてください。<br>*(Phí thì trả ở cửa hàng tiện lợi chậm nhất ngày mai nhé.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>受験票<rt>じゅけんひょう</rt></ruby>はいつ<ruby>届<rt>とど</rt></ruby>きますか。<br>*(Em rõ rồi. Phiếu dự thi bao giờ tới ạ?)* |
| Suzuki | <ruby>11月末<rt>じゅういちがつまつ</rt></ruby>ですよ。<br>*(Cuối tháng 11 đó.)* |

## Tình huống 4 — FamilyMart cuối phố nông trại, 8 giờ tối — Đóng lệ phí thi

| Vai | Lời thoại |
|---|---|
| Linh | すみません、<ruby>払込票<rt>はらいこみひょう</rt></ruby>でお<ruby>支払<rt>しはら</rt></ruby>いお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin lỗi, em đóng tiền bằng phiếu thanh toán ạ.)* |
| Nhân viên | はい、お<ruby>預<rt>あず</rt></ruby>かりします。<ruby>6500円<rt>ろくせんごひゃくえん</rt></ruby>ですね。<br>*(Vâng, để em nhận. 6500 yên nhỉ.)* |
| Linh | <ruby>1万円<rt>いちまんえん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em đưa 1 man yên ạ.)* |
| Nhân viên | <ruby>3500円<rt>さんぜんごひゃくえん</rt></ruby>のおつりです。レシートと<ruby>控<rt>ひか</rt></ruby>えです。<br>*(Trả lại 3500 yên. Hoá đơn và phiếu lưu đây ạ.)* |
| Linh | この<ruby>控<rt>ひか</rt></ruby>えは<ruby>大事<rt>だいじ</rt></ruby>ですか。<br>*(Phiếu lưu này có quan trọng không ạ?)* |
| Nhân viên | はい、<ruby>試験<rt>しけん</rt></ruby>まで<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>してください。<br>*(Có ạ, giữ kỹ đến khi thi xong.)* |

## Tình huống 5 — Ký túc xá, tối thứ Bảy — Học chung với Dewi và Riko

*Phòng chung. Dewi (Indonesia) đang ôn N4, Riko (Philippines) chỉ thi N5.*

| Vai | Lời thoại |
|---|---|
| Dewi | リンちゃん、この<ruby>文法<rt>ぶんぽう</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かる？「〜ようにする」と「〜ようになる」。<br>*(Linh ơi, ngữ pháp này hiểu không? "~ようにする" với "~ようになる".)* |
| Linh | うーん、「する」は<ruby>自分<rt>じぶん</rt></ruby>でがんばること、「なる」は<ruby>自然<rt>しぜん</rt></ruby>に<ruby>変<rt>か</rt></ruby>わることでしょう？<br>*(Ừm, "する" là tự mình cố gắng, "なる" là tự nhiên biến đổi đúng không?)* |
| Dewi | たぶんそう。<ruby>例文<rt>れいぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>もう。<br>*(Chắc vậy. Đọc câu ví dụ đi.)* |
| Linh | <ruby>毎日<rt>まいにち</rt></ruby><ruby>野菜<rt>やさい</rt></ruby>を<ruby>食<rt>た</rt></ruby>べるようにします。<br>*(Tôi cố gắng mỗi ngày ăn rau.)* |
| Riko | <ruby>日本語<rt>にほんご</rt></ruby>が<ruby>話<rt>はな</rt></ruby>せるようになりました。<br>*(Tôi đã có thể nói tiếng Nhật rồi.)* |
| Dewi | あー、よく<ruby>分<rt>わ</rt></ruby>かった！リンちゃんは<ruby>先生<rt>せんせい</rt></ruby>みたい。<br>*(À, hiểu rồi! Linh như cô giáo vậy.)* |
| Linh | ふふ、まだまだだよ。<ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>。<br>*(Hehe, còn xa lắm. Mình yếu nghe.)* |

## Tình huống 6 — Cửa hàng 100 yên Daiso Mito — Mua đồ dùng thi

| Vai | Lời thoại |
|---|---|
| Linh | すみません、HBの<ruby>鉛筆<rt>えんぴつ</rt></ruby>はどこですか。<br>*(Xin lỗi, bút chì HB ở đâu ạ?)* |
| Nhân viên | <ruby>文房具<rt>ぶんぼうぐ</rt></ruby>コーナーです。<ruby>3列目<rt>さんれつめ</rt></ruby>の<ruby>右側<rt>みぎがわ</rt></ruby>です。<br>*(Khu văn phòng phẩm, dãy thứ 3 phía bên phải.)* |
| Linh | <ruby>消<rt>け</rt></ruby>しゴムと<ruby>鉛筆削<rt>えんぴつけず</rt></ruby>りも<ruby>一緒<rt>いっしょ</rt></ruby>ですか。<br>*(Gôm và gọt chì cũng cùng chỗ ạ?)* |
| Nhân viên | はい、すぐ<ruby>隣<rt>となり</rt></ruby>です。<br>*(Vâng, ngay cạnh đó.)* |
| Linh | ありがとうございます。あと、<ruby>腕時計<rt>うでどけい</rt></ruby>はありますか。<br>*(Cảm ơn ạ. Còn đồng hồ đeo tay có không?)* |
| Nhân viên | <ruby>500円<rt>ごひゃくえん</rt></ruby>のなら、レジの<ruby>横<rt>よこ</rt></ruby>です。<br>*(Loại 500 yên thì có, ở cạnh quầy thanh toán.)* |
| Linh | <ruby>試験<rt>しけん</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うので、<ruby>音<rt>おと</rt></ruby>が<ruby>鳴<rt>な</rt></ruby>らないものがいいです。<br>*(Để thi nên em cần loại không phát ra tiếng.)* |
| Nhân viên | アナログのなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Loại kim thì ổn ạ.)* |

## Tình huống 7 — Nông trại, giữa luống cà chua — Sempai Saori-san dạy ôn nhanh

*Saori-san (con gái 親方, 30 tuổi, đang kế nghiệp nông trại) biết Linh sắp thi.*

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>試験<rt>しけん</rt></ruby>はいつ？<br>*(Linh ơi, thi hôm nào?)* |
| Linh | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>日曜日<rt>にちようび</rt></ruby>です。ドキドキです。<br>*(Chủ nhật tuần sau ạ. Em hồi hộp lắm.)* |
| Saori | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってるじゃない。<ruby>1問<rt>いちもん</rt></ruby>クイズしようか。<br>*(Không sao, ngày nào chả chăm. Đố nhanh 1 câu nhé?)* |
| Linh | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin chị.)* |
| Saori | 「<ruby>収穫<rt>しゅうかく</rt></ruby>」の<ruby>反対<rt>はんたい</rt></ruby>は？<br>*(Trái nghĩa của "収穫" là gì?)* |
| Linh | …「<ruby>種<rt>たね</rt></ruby>まき」ですか？<br>*(...là "種まき" (gieo hạt) ạ?)* |
| Saori | <ruby>正解<rt>せいかい</rt></ruby>！<ruby>仕事<rt>しごと</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>いね。<br>*(Đúng! Từ vựng công việc của em vững đó.)* |

## Tình huống 8 — Phòng riêng ký túc, đêm trước thi — Gọi điện cho mẹ

> Cảnh tiếng Việt — gọi điện về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Linh | A lô mẹ, con đây. Mai con thi N4 rồi. |
| Mẹ Linh | Trời, mau quá vậy con. Có hồi hộp không? |
| Linh | Hồi hộp lắm mẹ. Hồi nãy con ôn từ 「<ruby>収穫<rt>しゅうかく</rt></ruby>」「<ruby>出荷<rt>しゅっか</rt></ruby>」, mấy từ công việc thì nhớ kỹ. |
| Mẹ Linh | Con ngủ sớm nha, đừng thức khuya. Mẹ đi chùa cầu cho con rồi đó. |
| Linh | Hihi, cảm ơn mẹ. Con ăn cơm xong rồi, ăn 「<ruby>梅干<rt>うめぼ</rt></ruby>し」 cho tỉnh táo. |
| Mẹ Linh | Cái gì lạ vậy con? |
| Linh | Mơ muối mặn mặn, dân Nhật hay ăn khi mệt. Mai con dậy lúc 6 giờ, đi xe buýt ra Mito. |
| Mẹ Linh | Ờ, nhớ mang đủ giấy tờ. Mẹ gác máy nha, mai gọi lại. |

## Tình huống 9 — Bến xe buýt nông trại, 6 giờ sáng chủ nhật — Lên đường đi thi

| Vai | Lời thoại |
|---|---|
| Linh | おはようございます。<ruby>水戸駅<rt>みとえき</rt></ruby>までお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Cho em tới ga Mito ạ.)* |
| Tài xế | <ruby>820円<rt>はっぴゃくにじゅうえん</rt></ruby>です。ICカードは<ruby>使<rt>つか</rt></ruby>えますか。<br>*(820 yên. Dùng thẻ IC chứ?)* |
| Linh | はい、Suicaです。<br>*(Vâng, thẻ Suica.)* |
| Tài xế | はい、ピッとお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>朝<rt>あさ</rt></ruby>から<ruby>頑張<rt>がんば</rt></ruby>るね。<ruby>試験<rt>しけん</rt></ruby>？<br>*(Quẹt thẻ nhé. Sáng sớm đã đi đâu rồi. Đi thi à?)* |
| Linh | はい、<ruby>日本語<rt>にほんご</rt></ruby>のN4です。<br>*(Vâng, thi N4 tiếng Nhật ạ.)* |
| Tài xế | おっ、すごい！<ruby>頑張<rt>がんば</rt></ruby>って！<br>*(Ồ, giỏi quá! Cố lên!)* |
| Linh | ありがとうございます。<br>*(Cảm ơn bác ạ.)* |

## Tình huống 10 — Cổng Đại học Ibaraki, 8:15 sáng — Hỏi đường tới phòng thi

*Sinh viên tình nguyện đứng phát hướng dẫn.*

| Vai | Lời thoại |
|---|---|
| Linh | すみません、N4の<ruby>会場<rt>かいじょう</rt></ruby>はどこですか。<br>*(Xin lỗi, hội trường N4 ở đâu ạ?)* |
| Tình nguyện | <ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho em xem phiếu dự thi.)* |
| Linh | はい、これです。<br>*(Vâng, đây ạ.)* |
| Tình nguyện | <ruby>共通棟<rt>きょうつうとう</rt></ruby>の<ruby>2階<rt>にかい</rt></ruby>、<ruby>205号室<rt>にひゃくごごうしつ</rt></ruby>です。あの<ruby>建物<rt>たてもの</rt></ruby>の<ruby>左側<rt>ひだりがわ</rt></ruby>から<ruby>入<rt>はい</rt></ruby>ってください。<br>*(Tầng 2 toà chung, phòng 205. Vào từ phía bên trái toà nhà kia ạ.)* |
| Linh | <ruby>受付<rt>うけつけ</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>からですか。<br>*(Tiếp đón từ mấy giờ ạ?)* |
| Tình nguyện | <ruby>8時半<rt>はちじはん</rt></ruby>からです。お<ruby>手洗<rt>てあら</rt></ruby>いは<ruby>今<rt>いま</rt></ruby>のうちに。<br>*(Từ 8 giờ rưỡi. Toilet thì đi luôn bây giờ nhé.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Em rõ rồi. Cảm ơn.)* |

## Tình huống 11 — Phòng thi 205, 8:50 sáng — Giám thị dặn dò

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証明書<rt>みぶんしょうめいしょ</rt></ruby>を<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<br>*(Mọi người để phiếu dự thi và giấy tờ tuỳ thân lên bàn.)* |
| Linh | はい。（<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>出<rt>だ</rt></ruby>す）<br>*(Vâng. (đưa thẻ tại lưu))* |
| Giám thị | スマホは<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って、カバンに<ruby>入<rt>い</rt></ruby>れてください。<br>*(Điện thoại tắt nguồn, cho vào cặp.)* |
| Linh | すみません、<ruby>時計<rt>とけい</rt></ruby>は<ruby>机<rt>つくえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いていいですか。<br>*(Xin lỗi, đồng hồ để trên bàn được không ạ?)* |
| Giám thị | アナログなら<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Loại kim thì được.)* |
| Giám thị | では、<ruby>9時<rt>くじ</rt></ruby>から<ruby>言語知識<rt>げんごちしき</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Bắt đầu phần Kiến thức ngôn ngữ từ 9 giờ.)* |
| Linh | はい。<br>*(Vâng.)* |

## Tình huống 12 — Hành lang trước phòng thi, giờ giải lao trưa — Gặp thí sinh khác

| Vai | Lời thoại |
|---|---|
| Thí sinh | こんにちは。ベトナムの<ruby>方<rt>かた</rt></ruby>ですか。<br>*(Chào bạn. Bạn người Việt à?)* |
| Linh | はい！あなたも？<br>*(Vâng! Bạn cũng vậy?)* |
| Thí sinh | はい、ハノイから<ruby>来<rt>き</rt></ruby>ました。<ruby>留学生<rt>りゅうがくせい</rt></ruby>です。<br>*(Vâng, mình từ Hà Nội. Du học sinh.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>は<ruby>実習生<rt>じっしゅうせい</rt></ruby>。<ruby>農業<rt>のうぎょう</rt></ruby>です。<br>*(Mình là TTS, ngành nông nghiệp.)* |
| Thí sinh | すごいですね。<ruby>仕事<rt>しごと</rt></ruby>しながらN4！<br>*(Hay quá. Vừa làm vừa thi N4!)* |
| Linh | お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>りましょう。<ruby>午後<rt>ごご</rt></ruby>は<ruby>聴解<rt>ちょうかい</rt></ruby>ですね。<br>*(Cùng cố lên nhé. Chiều có nghe nhỉ.)* |
| Thí sinh | <ruby>聴解<rt>ちょうかい</rt></ruby>、<ruby>苦手<rt>にがて</rt></ruby>です…。<br>*(Phần nghe... mình yếu.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>も。でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>！<br>*(Mình cũng. Nhưng yên tâm!)* |

## Tình huống 13 — Trạm xe buýt Mito, 4:30 chiều — Gọi cho Suzuki sau khi thi xong

| Vai | Lời thoại |
|---|---|
| Linh | スズキさん、リンです。<ruby>試験<rt>しけん</rt></ruby><ruby>終<rt>お</rt></ruby>わりました！<br>*(Anh Suzuki, em Linh. Thi xong rồi ạ!)* |
| Suzuki | お<ruby>疲<rt>つか</rt></ruby>れさま！どうでしたか。<br>*(Vất vả rồi! Sao rồi?)* |
| Linh | <ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でした。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>半分<rt>はんぶん</rt></ruby>くらいかな。<br>*(Phần chữ và từ vựng ổn. Phần nghe khoảng nửa.)* |
| Suzuki | <ruby>半分<rt>はんぶん</rt></ruby>できればOK！<ruby>結果<rt>けっか</rt></ruby>は<ruby>1月末<rt>いちがつまつ</rt></ruby>に<ruby>出<rt>で</rt></ruby>ますよ。<br>*(Nửa là OK rồi! Kết quả có vào cuối tháng 1.)* |
| Linh | <ruby>長<rt>なが</rt></ruby>いですね。<br>*(Lâu quá ạ.)* |
| Suzuki | そうだね。でも<ruby>今日<rt>きょう</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>んでね。<br>*(Phải. Nhưng hôm nay nghỉ ngơi cho khoẻ nhé.)* |

## Tình huống 14 — Cuối tháng 1/2026, trước máy tính ký túc — Tra kết quả

*Linh, Dewi quây quanh máy tính.*

| Vai | Lời thoại |
|---|---|
| Dewi | リンちゃん、<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>入<rt>い</rt></ruby>れた？<br>*(Linh, nhập số báo danh chưa?)* |
| Linh | <ruby>今<rt>いま</rt></ruby><ruby>入<rt>い</rt></ruby>れる…。パスワードも…。<br>*(Đang nhập... mật khẩu nữa...)* |
| Dewi | クリック！<br>*(Bấm đi!)* |
| Linh | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）…<ruby>合格<rt>ごうかく</rt></ruby>！<ruby>合格<rt>ごうかく</rt></ruby>って<ruby>書<rt>か</rt></ruby>いてある！<br>*(Nhìn màn hình... ĐỖ! Có chữ "合格"!)* |
| Dewi | やったあ！おめでとう！<br>*(Aaaa! Chúc mừng!)* |
| Linh | <ruby>点数<rt>てんすう</rt></ruby>は…<ruby>合計<rt>ごうけい</rt></ruby><ruby>112点<rt>ひゃくじゅうにてん</rt></ruby>。<br>*(Điểm... tổng 112 điểm.)* |
| Dewi | わたしは…ダメだった…。<br>*(Tớ thì... rớt rồi...)* |
| Linh | また<ruby>7月<rt>しちがつ</rt></ruby>あるよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しよう。<br>*(Còn tháng 7 mà. Cùng học tiếp nhé.)* |

## Đọng lại chương

Các mẫu câu cốt lõi: **〜を受けたいです** (muốn dự thi), **〜までにしてください** (làm trước thời điểm), **〜ようにする / 〜ようになる**, **〜てもいいですか** (được phép không), **お疲れさま**, **〜合格しました** (đã đỗ).

> Từ vựng & mẫu câu chương này: 試験・受ける・申し込み・受験料・受験票・会場・合格・不合格・点数・聴解・文法・語彙・読解・身分証明書・電源を切る・控え・支払い・コンビニ払い

## Bí quyết chương

- 親方 thuộc thế hệ cũ, nhớ vào nhà ăn xin nghỉ thi trực tiếp, đừng nhắn LINE.
- Phiếu thanh toán コンビニ払い trả ở Family/Lawson/7-Eleven đều được, giữ 控え đến khi thi xong.
- Hội trường thi cấm đồng hồ kêu, đồng hồ thông minh — chỉ アナログ.
- Phần 聴解 (nghe) là thử thách lớn nhất với TTS — luyện qua video YouTube N4 mỗi tối.
- Kết quả N4 sau ~6 tuần — đoàn thể chi trợ cấp khi có giấy 合格 chính thức.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 試験 | しけん | THÍ NGHIỆM | kỳ thi |
| 受ける | うける | THỤ | dự (thi), nhận |
| 申し込み | もうしこみ | THÂN VÀO | đăng ký |
| 相談 | そうだん | TƯƠNG ĐÀM | trao đổi, hỏi ý |
| 場所 | ばしょ | TRƯỜNG SỞ | địa điểm |
| 大学 | だいがく | ĐẠI HỌC | đại học |
| 合格 | ごうかく | HỢP CÁCH | đỗ, đạt |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | lệ phí thi |
| 顔写真 | かおじゃしん | NHAN TẢ CHÂN | ảnh chân dung |
| 背景 | はいけい | BỐI CẢNH | nền (ảnh) |
| 生年月日 | せいねんがっぴ | SINH NIÊN NGUYỆT NHẬT | ngày tháng năm sinh |
| 会場 | かいじょう | HỘI TRƯỜNG | nơi tổ chức |
| 支払い | しはらい | CHI PHẤT | thanh toán |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu dự thi |
| 払込票 | はらいこみひょう | PHẤT VÀO PHIẾU | phiếu nộp tiền |
| 控え | ひかえ | KHỐNG | bản lưu, bản dự |
| 保管 | ほかん | BẢO QUẢN | giữ, bảo quản |
| 文房具 | ぶんぼうぐ | VĂN PHÒNG CỤ | văn phòng phẩm |
| 鉛筆 | えんぴつ | DIÊN BÚT | bút chì |
| 消しゴム | けしゴム | TIÊU — | cục gôm |
| 腕時計 | うでどけい | UYỂN THỜI KẾ | đồng hồ đeo tay |
| 反対 | はんたい | PHẢN ĐỐI | trái nghĩa, ngược |
| 種まき | たねまき | CHỦNG — | gieo hạt |
| 収穫 | しゅうかく | THU HOẠCH | thu hoạch |
| 出荷 | しゅっか | XUẤT HÀ | xuất hàng |
| 受付 | うけつけ | THỤ PHÓ | tiếp tân, nhận |
| 共通棟 | きょうつうとう | CỘNG THÔNG ĐỐNG | toà nhà chung |
| 身分証明書 | みぶんしょうめいしょ | THÂN PHẬN CHỨNG MINH THƯ | giấy tờ tuỳ thân |
| 電源 | でんげん | ĐIỆN NGUYÊN | nguồn điện |
| 聴解 | ちょうかい | THÍNH GIẢI | phần nghe hiểu |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 読解 | どっかい | ĐỘC GIẢI | phần đọc hiểu |
| 点数 | てんすう | ĐIỂM SỐ | số điểm |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000010, 800000040, NULL, 'markdown_book', 'T10. Bão tới — gia cố ハウス khẩn cấp', '# Sách Nông nghiệp Năm 1 · T10. Bão tới — gia cố ハウス khẩn cấp

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp, TTS nông nghiệp Ibaraki). Học các mẫu hội thoại tiếng Nhật của TTS trong tình huống khẩn: nghe thông báo thời tiết, nhận chỉ thị gấp từ 親方, gia cố ハウス, đi mua đồ trước bão ở 7-Eleven, báo cáo thiệt hại sau bão, hỏi an toàn đồng hương.

## Bối cảnh

Cuối tháng 10/2025, mùa typhoon đến muộn của vùng Kanto. Đài NHK báo bão số 21 sẽ đổ bộ Ibaraki tối thứ Bảy với gió 40 m/s. Nhà ハウス cà chua của 親方 Yamamoto cao 4 m, dễ bị tốc bạt. Linh và Saori-san phải gia cố trong ngày. Chương này tập trung mẫu câu phản ứng nhanh, nhận chỉ thị an toàn, mua thực phẩm dự trữ và báo cáo sau bão.

## Tình huống 1 — Nhà ăn nông trại, 6:30 sáng thứ Sáu — Xem dự báo bão trên TV

*TV NHK đang phát bản tin sáng. 親方 Yamamoto cầm điều khiển tăng âm lượng.*

| Vai | Lời thoại |
|---|---|
| TV | <ruby>明日<rt>あした</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>、<ruby>台風<rt>たいふう</rt></ruby><ruby>21号<rt>にじゅういちごう</rt></ruby>が<ruby>関東<rt>かんとう</rt></ruby>に<ruby>上陸<rt>じょうりく</rt></ruby>します。<ruby>最大風速<rt>さいだいふうそく</rt></ruby><ruby>40メートル<rt>よんじゅうメートル</rt></ruby>です。<br>*(Tối mai bão số 21 đổ bộ Kanto. Gió mạnh nhất 40 m/s.)* |
| Yamamoto | リン、これは<ruby>大<rt>おお</rt></ruby>きいぞ。<br>*(Linh, cơn này lớn đấy.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、ハウスは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Sếp, nhà kính có ổn không ạ?)* |
| Yamamoto | <ruby>今日中<rt>きょうじゅう</rt></ruby>に<ruby>補強<rt>ほきょう</rt></ruby>しないと<ruby>飛<rt>と</rt></ruby>ぶ。<ruby>佐織<rt>さおり</rt></ruby>も<ruby>来<rt>く</rt></ruby>る。<br>*(Không gia cố trong hôm nay là bay. Saori cũng tới.)* |
| Linh | はい、すぐ<ruby>着替<rt>きが</rt></ruby>えます。<br>*(Vâng, em thay đồ ngay.)* |
| Yamamoto | カッパも<ruby>持<rt>も</rt></ruby>ってこい。<ruby>午後<rt>ごご</rt></ruby>から<ruby>雨<rt>あめ</rt></ruby>だ。<br>*(Mang áo mưa nữa. Chiều có mưa.)* |

## Tình huống 2 — Trước ハウス số 1, 7:00 sáng — Phân công gia cố

*Saori-san vừa lái xe tới, đeo găng tay làm việc.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>する。よく<ruby>聞<rt>き</rt></ruby>け。<br>*(Hôm nay nói rõ việc. Nghe kỹ.)* |
| Saori | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, xin sếp.)* |
| Yamamoto | <ruby>佐織<rt>さおり</rt></ruby>は<ruby>1号<rt>いちごう</rt></ruby>ハウスの<ruby>側面<rt>そくめん</rt></ruby>のビニールを<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げろ。<br>*(Saori cuộn bạt mặt bên của nhà kính số 1.)* |
| Saori | <ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Rõ ạ.)* |
| Yamamoto | リンは<ruby>俺<rt>おれ</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>外<rt>そと</rt></ruby>の<ruby>物<rt>もの</rt></ruby>を<ruby>片<rt>かた</rt></ruby>づける。<ruby>飛<rt>と</rt></ruby>ぶものは<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>中<rt>なか</rt></ruby>へ。<br>*(Linh cùng tôi dọn đồ bên ngoài. Cái gì bay được thì cho vào trong.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>長靴<rt>ながぐつ</rt></ruby>もいりますか。<br>*(Em rõ rồi. Có cần ủng không ạ?)* |
| Yamamoto | <ruby>絶対<rt>ぜったい</rt></ruby>いる。<ruby>午後<rt>ごご</rt></ruby>はぬかるむ。<br>*(Chắc chắn cần. Chiều lầy lội.)* |

## Tình huống 3 — Sân ngoài nông trại, 8 giờ sáng — Cất thùng, ghế, dụng cụ

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、この<ruby>空<rt>から</rt></ruby>のコンテナはどこに<ruby>置<rt>お</rt></ruby>きますか。<br>*(Sếp, thùng rỗng này để đâu ạ?)* |
| Yamamoto | <ruby>倉庫<rt>そうこ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>。<ruby>重<rt>かさ</rt></ruby>ねて<ruby>奥<rt>おく</rt></ruby>へ。<br>*(Trong kho. Xếp chồng vào trong cùng.)* |
| Linh | はい。あの<ruby>古<rt>ふる</rt></ruby>いタイヤは？<br>*(Vâng. Còn lốp xe cũ kia?)* |
| Yamamoto | あれはハウスの<ruby>上<rt>うえ</rt></ruby>に<ruby>乗<rt>の</rt></ruby>せる。<ruby>重<rt>おも</rt></ruby>しになる。<br>*(Cái đó để lên trên nhà kính. Làm vật nặng đè.)* |
| Linh | へえ、タイヤを？<ruby>初<rt>はじ</rt></ruby>めて<ruby>見<rt>み</rt></ruby>ました。<br>*(Ơ, dùng lốp ạ? Lần đầu em thấy.)* |
| Yamamoto | <ruby>昔<rt>むかし</rt></ruby>からの<ruby>知恵<rt>ちえ</rt></ruby>だ。ロープも<ruby>持<rt>も</rt></ruby>ってこい。<br>*(Mẹo từ xưa rồi. Lấy cả dây thừng.)* |
| Linh | <ruby>何本<rt>なんぼん</rt></ruby>ですか。<br>*(Mấy sợi ạ?)* |
| Yamamoto | <ruby>10本<rt>じゅっぽん</rt></ruby>。<ruby>太<rt>ふと</rt></ruby>いやつ。<br>*(10 sợi. Loại to.)* |

## Tình huống 4 — Bên hông ハウス, 10 giờ — Linh hỏi lại khi chưa hiểu

*Yamamoto chỉ vào khung sắt, dùng từ chuyên môn nhanh.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | このパイプの<ruby>結束<rt>けっそく</rt></ruby>バンドを<ruby>増<rt>ふ</rt></ruby>やせ。<br>*(Tăng dây buộc kết của ống này lên.)* |
| Linh | すみません、「<ruby>結束<rt>けっそく</rt></ruby>バンド」って<ruby>何<rt>なん</rt></ruby>ですか。<br>*(Xin lỗi, "kessoku band" là gì ạ?)* |
| Yamamoto | これだよ、<ruby>黒<rt>くろ</rt></ruby>いやつ。プラスチックの。<br>*(Cái này này, sợi đen ấy. Bằng nhựa.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かりました！ベトナム<ruby>語<rt>ご</rt></ruby>でも「dây rút」です。<br>*(À, em hiểu rồi! Tiếng Việt cũng có "dây rút".)* |
| Yamamoto | そうそう。<ruby>1本<rt>いっぽん</rt></ruby>のところに<ruby>3本<rt>さんぼん</rt></ruby><ruby>使<rt>つか</rt></ruby>え。<br>*(Đúng rồi. Chỗ nào đang 1 sợi thì dùng 3 sợi.)* |
| Linh | <ruby>3倍<rt>さんばい</rt></ruby>ですね。やってみます。<br>*(Tăng gấp 3 nhỉ. Em làm thử.)* |

## Tình huống 5 — Trên thang cao 3 m, 11 giờ — Saori dặn an toàn

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>上<rt>うえ</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>？<br>*(Linh, ở trên có ổn không?)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。でも<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなってきました。<br>*(Em ổn ạ. Nhưng gió đã mạnh hơn.)* |
| Saori | <ruby>無理<rt>むり</rt></ruby>しないで。<ruby>足元<rt>あしもと</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Đừng cố. Cẩn thận chỗ đặt chân.)* |
| Linh | はい。<ruby>佐織<rt>さおり</rt></ruby>さん、ハンマー<ruby>取<rt>と</rt></ruby>ってくれますか。<br>*(Vâng. Chị Saori, lấy giúp em cái búa được không?)* |
| Saori | はい、<ruby>下<rt>した</rt></ruby>から<ruby>投<rt>な</rt></ruby>げない。<ruby>持<rt>も</rt></ruby>って<ruby>上<rt>あ</rt></ruby>がるね。<br>*(Được, không ném từ dưới đâu. Chị cầm lên.)* |
| Linh | ありがとうございます。すみません、<ruby>手間<rt>てま</rt></ruby>かけて。<br>*(Cảm ơn chị. Em xin lỗi đã phiền chị.)* |
| Saori | お<ruby>互<rt>たが</rt></ruby>いさま！<br>*(Cùng giúp nhau mà!)* |

## Tình huống 6 — Trưa nghỉ, nhà ăn — Yamamoto giải thích lịch sử bão vùng Ibaraki

*Bữa trưa cơm cà ri Saori-san nấu. Mưa bắt đầu rơi.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>茨城<rt>いばらき</rt></ruby>は<ruby>台風<rt>たいふう</rt></ruby>、<ruby>意外<rt>いがい</rt></ruby>と<ruby>少<rt>すく</rt></ruby>ない。でも<ruby>来<rt>く</rt></ruby>るときは<ruby>大変<rt>たいへん</rt></ruby>。<br>*(Ibaraki bão thực ra ít. Nhưng đã tới là vất.)* |
| Linh | ベトナムは<ruby>毎年<rt>まいとし</rt></ruby><ruby>10個<rt>じゅっこ</rt></ruby>くらい<ruby>来<rt>き</rt></ruby>ます。<br>*(Việt Nam mỗi năm khoảng 10 cơn ạ.)* |
| Yamamoto | <ruby>多<rt>おお</rt></ruby>いな。<ruby>君<rt>きみ</rt></ruby>の<ruby>家<rt>いえ</rt></ruby>はメコンだろう？<br>*(Nhiều nhỉ. Nhà em ở Mekong đúng không?)* |
| Linh | はい、<ruby>洪水<rt>こうずい</rt></ruby>のほうが<ruby>多<rt>おお</rt></ruby>いです。<ruby>台風<rt>たいふう</rt></ruby>は<ruby>北<rt>きた</rt></ruby>のほうです。<br>*(Vâng, lũ nhiều hơn ạ. Bão thì miền Bắc.)* |
| Saori | リンちゃん、<ruby>夜<rt>よる</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby><ruby>外<rt>そと</rt></ruby>に<ruby>出<rt>で</rt></ruby>ないでね。<br>*(Tối nay tuyệt đối đừng ra ngoài nhé.)* |
| Linh | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em cẩn thận.)* |

## Tình huống 7 — 7-Eleven gần ký túc, 3 giờ chiều — Mua đồ dự trữ trước bão

*Kệ nước khoáng gần hết. Linh đẩy giỏ cùng Dewi.*

| Vai | Lời thoại |
|---|---|
| Linh | あれ、<ruby>水<rt>みず</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>り<ruby>少<rt>すく</rt></ruby>ない…。<br>*(Ơ, nước còn ít quá...)* |
| Nhân viên | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、<ruby>2リットル<rt>にリットル</rt></ruby>は<ruby>売<rt>う</rt></ruby>り<ruby>切<rt>き</rt></ruby>れです。<ruby>500ミリ<rt>ごひゃくミリ</rt></ruby>ならまだあります。<br>*(Xin lỗi, loại 2 lít hết rồi. 500 ml thì còn.)* |
| Linh | じゃ、<ruby>500ミリ<rt>ごひゃくミリ</rt></ruby>を<ruby>10本<rt>じっぽん</rt></ruby>ください。<br>*(Vậy cho em 10 chai 500 ml.)* |
| Dewi | リンちゃん、カップ<ruby>麺<rt>めん</rt></ruby>もいる？<br>*(Linh, mì ly cũng cần không?)* |
| Linh | うん、<ruby>停電<rt>ていでん</rt></ruby>かもしれないから、<ruby>火<rt>ひ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わないものがいい。<br>*(Có, có thể mất điện nên cần loại không phải dùng lửa.)* |
| Dewi | おにぎりとパンも<ruby>買<rt>か</rt></ruby>おう。<br>*(Mua cả cơm nắm với bánh mì đi.)* |
| Linh | <ruby>懐中電灯<rt>かいちゅうでんとう</rt></ruby>の<ruby>電池<rt>でんち</rt></ruby>もチェックしないと。<br>*(Phải kiểm tra cả pin đèn pin nữa.)* |
| Nhân viên | <ruby>電池<rt>でんち</rt></ruby>は<ruby>奥<rt>おく</rt></ruby>の<ruby>棚<rt>たな</rt></ruby>です。<ruby>単3<rt>たんさん</rt></ruby>ならまだあります。<br>*(Pin ở kệ trong cùng. Loại AA thì còn.)* |

## Tình huống 8 — Ký túc xá, 6 giờ tối — Đoàn thể Suzuki gọi điện kiểm tra

| Vai | Lời thoại |
|---|---|
| Suzuki | リンさん、スズキです。<ruby>準備<rt>じゅんび</rt></ruby>はできましたか。<br>*(Linh, Suzuki đây. Đã chuẩn bị xong chưa?)* |
| Linh | はい、<ruby>水<rt>みず</rt></ruby>と<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>、<ruby>懐中電灯<rt>かいちゅうでんとう</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Vâng, đã chuẩn bị nước, đồ ăn, đèn pin.)* |
| Suzuki | <ruby>窓<rt>まど</rt></ruby>は<ruby>閉<rt>し</rt></ruby>めましたか。カーテンも<ruby>閉<rt>し</rt></ruby>めて。<br>*(Đóng cửa sổ chưa? Cả rèm nữa.)* |
| Linh | はい、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>閉<rt>し</rt></ruby>めました。<br>*(Vâng, đóng hết rồi.)* |
| Suzuki | <ruby>避難情報<rt>ひなんじょうほう</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら、すぐ<ruby>連絡<rt>れんらく</rt></ruby>します。スマホは<ruby>充電<rt>じゅうでん</rt></ruby>を<ruby>満<rt>まん</rt></ruby>タンに。<br>*(Có thông tin sơ tán anh báo ngay. Sạc điện thoại đầy nhé.)* |
| Linh | はい、もうしました。<br>*(Vâng, em sạc rồi.)* |
| Suzuki | あと、<ruby>洗面所<rt>せんめんじょ</rt></ruby>に<ruby>水<rt>みず</rt></ruby>を<ruby>溜<rt>た</rt></ruby>めておいてください。<ruby>断水<rt>だんすい</rt></ruby>のとき<ruby>使<rt>つか</rt></ruby>えます。<br>*(Còn nữa, trữ nước trong nhà tắm. Mất nước thì dùng.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Em rõ rồi. Cảm ơn anh.)* |

## Tình huống 9 — Phòng ký túc, 10 giờ tối — Gió thổi mạnh nhất, nhắn LINE Saori

*Tiếng tôn bay roang roang ngoài đường. Mất điện 5 phút trước.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、<ruby>停電<rt>ていでん</rt></ruby>しました！ <br>*(Chị Saori, mất điện rồi!)* |
| Saori | こっちも！<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>？<ruby>怖<rt>こわ</rt></ruby>くない？<br>*(Bên này cũng! Có ổn không? Có sợ không?)* |
| Linh | ちょっと<ruby>怖<rt>こわ</rt></ruby>いです。<ruby>音<rt>おと</rt></ruby>がすごい。<br>*(Em hơi sợ. Tiếng động to lắm.)* |
| Saori | <ruby>窓<rt>まど</rt></ruby>から<ruby>離<rt>はな</rt></ruby>れて、<ruby>部屋<rt>へや</rt></ruby>の<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>にいて。<br>*(Tránh xa cửa sổ, ngồi giữa phòng nhé.)* |
| Linh | はい。デウィちゃんと<ruby>一緒<rt>いっしょ</rt></ruby>です。<br>*(Vâng. Em ở cùng Dewi.)* |
| Saori | よかった。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>9時<rt>くじ</rt></ruby>にハウスを<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>くよ。<ruby>無理<rt>むり</rt></ruby>しないで<ruby>寝<rt>ね</rt></ruby>てね。<br>*(May quá. Sáng mai 9 giờ chị đi xem nhà kính. Đừng cố thức, ngủ đi.)* |

## Tình huống 10 — Sáng chủ nhật, 9 giờ — Đi xem thiệt hại với Yamamoto và Saori

*Bầu trời quang trở lại. Lá đổ đầy lối đi.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | うん、<ruby>1号<rt>いちごう</rt></ruby>は<ruby>無事<rt>ぶじ</rt></ruby>だな。<br>*(Ờ, số 1 yên ổn.)* |
| Saori | <ruby>2号<rt>にごう</rt></ruby>はどうですか？<br>*(Số 2 thì sao ạ?)* |
| Yamamoto | あ、<ruby>右<rt>みぎ</rt></ruby>の<ruby>角<rt>かど</rt></ruby>のビニールが<ruby>破<rt>やぶ</rt></ruby>れている。<br>*(A, bạt góc phải rách rồi.)* |
| Linh | あそこも！<ruby>2メートル<rt>にメートル</rt></ruby>くらい<ruby>裂<rt>さ</rt></ruby>けています。<br>*(Cả chỗ kia nữa! Rách khoảng 2 mét.)* |
| Yamamoto | <ruby>骨<rt>ほね</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か？<br>*(Khung thì sao?)* |
| Saori | <ruby>骨<rt>ほね</rt></ruby>はOKです。ビニールだけ。<br>*(Khung OK ạ. Chỉ bạt thôi.)* |
| Yamamoto | よし、<ruby>軽傷<rt>けいしょう</rt></ruby>だな。リン、<ruby>農協<rt>のうきょう</rt></ruby>に<ruby>修理<rt>しゅうり</rt></ruby>のビニールを<ruby>注文<rt>ちゅうもん</rt></ruby>する。<ruby>明日<rt>あした</rt></ruby><ruby>朝一<rt>あさいち</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>しろ。<br>*(Tốt, thương nhẹ. Linh, đặt bạt sửa ở Nông hiệp. Mai gọi điện sớm nhất.)* |
| Linh | はい！<br>*(Vâng!)* |

## Tình huống 11 — Sáng thứ Hai, gọi điện 農協 (JA) — Đặt vật liệu sửa

| Vai | Lời thoại |
|---|---|
| Linh | もしもし、ヤマモト<ruby>農園<rt>のうえん</rt></ruby>のリンと<ruby>申<rt>もう</rt></ruby>します。<br>*(A lô, em là Linh ở trang trại Yamamoto.)* |
| JA | はい、いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Vâng, luôn cảm ơn quý nông trại.)* |
| Linh | <ruby>台風<rt>たいふう</rt></ruby>でハウスのビニールが<ruby>破<rt>やぶ</rt></ruby>れました。<ruby>修理<rt>しゅうり</rt></ruby><ruby>用<rt>よう</rt></ruby>のビニールを<ruby>注文<rt>ちゅうもん</rt></ruby>したいです。<br>*(Bão làm rách bạt nhà kính ạ. Em muốn đặt bạt để sửa.)* |
| JA | サイズはどれくらいですか。<br>*(Kích thước cỡ nào ạ?)* |
| Linh | <ruby>幅<rt>はば</rt></ruby><ruby>2メートル<rt>にメートル</rt></ruby>、<ruby>長<rt>なが</rt></ruby>さ<ruby>5メートル<rt>ごメートル</rt></ruby>くらいでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Khổ 2 mét, dài 5 mét ạ.)* |
| JA | <ruby>厚<rt>あつ</rt></ruby>さは？<br>*(Độ dày?)* |
| Linh | すみません、<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>します。<br>*(Em xin lỗi, kiểm tra rồi sẽ gọi lại.)* |
| JA | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong em.)* |

## Tình huống 12 — Tối thứ Hai, nhà ăn — Yamamoto cảm ơn cả nhóm

| Vai | Lời thoại |
|---|---|
| Yamamoto | みんな、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさん。<ruby>軽傷<rt>けいしょう</rt></ruby>で<ruby>済<rt>す</rt></ruby>んだのは、みんなのおかげだ。<br>*(Mọi người vất vả quá. Chỉ thương nhẹ là nhờ mọi người.)* |
| Saori | リンちゃんが<ruby>頑張<rt>がんば</rt></ruby>ってくれましたから。<br>*(Linh đã rất cố gắng đó ạ.)* |
| Linh | いえ、<ruby>親方<rt>おやかた</rt></ruby>と<ruby>佐織<rt>さおり</rt></ruby>さんに<ruby>教<rt>おそ</rt></ruby>えてもらったからです。<br>*(Dạ không, là nhờ sếp và chị Saori chỉ ạ.)* |
| Yamamoto | <ruby>今夜<rt>こんや</rt></ruby>は<ruby>焼肉<rt>やきにく</rt></ruby>だ！<br>*(Tối nay ăn yakiniku!)* |
| Linh | やった！ありがとうございます！<br>*(Iaaa! Cảm ơn sếp ạ!)* |
| Saori | リンちゃん、ベトナムでは<ruby>台風<rt>たいふう</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>何<rt>なに</rt></ruby>を<ruby>食<rt>た</rt></ruby>べる？<br>*(Linh, ở Việt Nam sau bão hay ăn gì?)* |
| Linh | みんなで<ruby>近所<rt>きんじょ</rt></ruby>のおうちに<ruby>集<rt>あつ</rt></ruby>まって、お<ruby>粥<rt>かゆ</rt></ruby>を<ruby>食<rt>た</rt></ruby>べます。<br>*(Cả nhà hàng xóm tụ tập ăn cháo ạ.)* |
| Yamamoto | いいな、<ruby>家族<rt>かぞく</rt></ruby>みたいで。<br>*(Hay đấy, như gia đình.)* |

## Tình huống 13 — Ký túc xá khuya thứ Hai — Gọi điện về Đồng Tháp

> Cảnh tiếng Việt — gọi điện về VN sau bão.

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | A lô con! Mẹ coi tivi thấy bão Nhật to lắm. Con an toàn không? |
| Linh | Dạ con an toàn nha mẹ. Có 「<ruby>停電<rt>ていでん</rt></ruby>」 mất điện một tí thôi, nay điện đã có lại. |
| Mẹ Linh | Trời, lo muốn chết. Có ai bị thương không? |
| Linh | Không ai bị thương. Nhà 「ハウス」 bị rách bạt một chỗ thôi, hôm nay con đã gọi 「<ruby>農協<rt>のうきょう</rt></ruby>」 đặt bạt mới. |
| Mẹ Linh | Cố nói nhỏ chứ má nghe tiếng Nhật chen vô hổng hiểu! |
| Linh | Hihi xin lỗi mẹ. Đoàn thể chú Suzuki gọi điện hỏi suốt, dân Nhật chu đáo lắm. |
| Mẹ Linh | Ờ, mẹ yên tâm. Mai mẹ đi chợ mua gì gửi qua không? |
| Linh | Mẹ gửi cho con ít khô cá lóc thôi, con thèm. |

## Tình huống 14 — Sáng thứ Ba, gặp Saori sửa bạt — Học từ chuyên môn

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、ビニールの<ruby>修理<rt>しゅうり</rt></ruby>は「<ruby>補修<rt>ほしゅう</rt></ruby>」って<ruby>言<rt>い</rt></ruby>うんだよ。<br>*(Linh, sửa bạt nói là "hoshuu" nhé.)* |
| Linh | <ruby>補修<rt>ほしゅう</rt></ruby>？ <ruby>修理<rt>しゅうり</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか。<br>*(Hoshuu? Khác với "shuuri" ạ?)* |
| Saori | <ruby>機械<rt>きかい</rt></ruby>は<ruby>修理<rt>しゅうり</rt></ruby>、ビニールや<ruby>建物<rt>たてもの</rt></ruby>の<ruby>傷<rt>きず</rt></ruby>は<ruby>補修<rt>ほしゅう</rt></ruby>。<br>*(Máy móc là shuuri, bạt hay vết hỏng nhà cửa là hoshuu.)* |
| Linh | <ruby>難<rt>むずか</rt></ruby>しい！<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Khó quá! Em sẽ nhớ.)* |
| Saori | <ruby>今度<rt>こんど</rt></ruby>の<ruby>台風<rt>たいふう</rt></ruby>でリンちゃんの<ruby>日本語<rt>にほんご</rt></ruby>、ぐっと<ruby>上手<rt>じょうず</rt></ruby>になったね。<br>*(Qua đợt bão này tiếng Nhật của Linh khá lên hẳn.)* |
| Linh | ハハ、<ruby>非常事態<rt>ひじょうじたい</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>はたくさん<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Haha, từ vựng tình huống khẩn cấp em nhớ nhiều ạ.)* |

## Đọng lại chương

Các mẫu câu cốt lõi: **〜が上陸します**, **〜を補強する**, **〜を片付ける**, **〜が破れる**, **〜を注文したいです**, **〜のおかげで**, **〜から離れて〜にいて** (cảnh báo an toàn), **無理しないで**.

> Từ vựng & mẫu câu chương này: 台風・上陸・最大風速・補強・補修・修理・ビニール・破れる・飛ぶ・倒れる・停電・断水・避難・懐中電灯・電池・売り切れ・注文・農協・無事・軽傷

## Bí quyết chương

- 台風 ở Ibaraki ít hơn miền Tây Nhật nhưng đã tới là gió 40 m/s — TTS phải biết cụm "上陸する", "最大風速", "避難情報".
- Buộc ハウス: tăng số 結束バンド gấp 3, đè lốp xe lên mái — bí kíp từ những năm 1990.
- 修理 ≠ 補修: máy móc dùng 修理, bạt và bộ phận mềm dùng 補修.
- Mua đồ dự bão: nước 500ml dễ còn hơn 2L, mì ăn liền + bánh mì cho trường hợp mất điện không nấu được.
- 停電 khi bão là chuyện thường — luôn sạc đầy điện thoại, để đèn pin gần đầu giường.
- Sau bão, gọi 農協 đặt vật liệu trước khi tới mua trực tiếp — vùng nông thôn hết hàng nhanh.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 台風 | たいふう | THAI PHONG | bão |
| 上陸 | じょうりく | THƯỢNG LỤC | đổ bộ |
| 最大風速 | さいだいふうそく | TỐI ĐẠI PHONG TỐC | tốc độ gió mạnh nhất |
| 補強 | ほきょう | BỔ CƯỜNG | gia cố |
| 補修 | ほしゅう | BỔ TU | sửa chữa (bạt, công trình mềm) |
| 修理 | しゅうり | TU LÝ | sửa (máy móc) |
| ビニール | ビニール | — | bạt nilon, nylon |
| 破れる | やぶれる | PHÁ | rách |
| 飛ぶ | とぶ | PHI | bay |
| 倒れる | たおれる | ĐẢO | đổ |
| 着替える | きがえる | TRƯỚC THẾ | thay đồ |
| カッパ | カッパ | — | áo mưa |
| 長靴 | ながぐつ | TRƯỜNG NGOA | ủng dài |
| 倉庫 | そうこ | THƯƠNG KHỐ | nhà kho |
| 結束バンド | けっそくバンド | KẾT THÚC — | dây rút nhựa |
| 知恵 | ちえ | TRI HUỆ | kinh nghiệm, mẹo |
| ロープ | ロープ | — | dây thừng |
| 説明 | せつめい | THUYẾT MINH | giải thích |
| 側面 | そくめん | TRẮC DIỆN | mặt bên |
| 片付ける | かたづける | PHIẾN PHÓ | dọn dẹp |
| 重し | おもし | TRỌNG | vật đè nặng |
| 売り切れ | うりきれ | MẠI THIẾT | hết hàng |
| 停電 | ていでん | ĐÌNH ĐIỆN | mất điện |
| 断水 | だんすい | ĐOẠN THUỶ | mất nước |
| 避難 | ひなん | TỴ NẠN | sơ tán |
| 懐中電灯 | かいちゅうでんとう | HOÀI TRUNG ĐIỆN ĐĂNG | đèn pin |
| 電池 | でんち | ĐIỆN TRÌ | pin |
| 充電 | じゅうでん | SUNG ĐIỆN | sạc điện |
| 注文 | ちゅうもん | CHÚ VĂN | đặt hàng |
| 農協 | のうきょう | NÔNG HIỆP | hợp tác xã nông nghiệp |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 折り返す | おりかえす | TRIẾT PHẢN | gọi lại |
| 無事 | ぶじ | VÔ SỰ | an toàn, không sao |
| 軽傷 | けいしょう | KHINH THƯƠNG | thương nhẹ, thiệt hại nhẹ |
| 非常事態 | ひじょうじたい | PHI THƯỜNG SỰ THÁI | tình trạng khẩn cấp |
| 風 | かぜ | PHONG | gió |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000011, 800000040, NULL, 'markdown_book', 'T11. Mùa đông — Cà chua trong ハウス sưởi ấm', '# Sách Nông nghiệp Năm 1 · T11. Mùa đông — Cà chua trong ハウス sưởi ấm

> **Mục tiêu nhân vật:** Linh (22 tuổi, Đồng Tháp, TTS nông nghiệp Ibaraki). Học các mẫu hội thoại tiếng Nhật của TTS trong mùa đông: vận hành lò sưởi nhà kính (暖房機), điều chỉnh nhiệt độ, ghi nhật ký nhiệt độ, đối phó tuyết rơi, chăm sóc cà chua mùa đông, mua đồ ấm ở UNIQLO, trò chuyện chuẩn bị Tết.

## Bối cảnh

Tháng 1–2/2026. Ibaraki -3 độ vào ban đêm, đôi khi có tuyết nhẹ. Nông trại Yamamoto trồng cà chua "Momotaro" trong nhà kính có sưởi (加温ハウス) để xuất bán dịp Tết Nhật giá cao. Linh đã đỗ N4 đầu năm, tiếng Nhật tự tin hơn. Chương này tập trung mẫu câu vận hành thiết bị sưởi, ghi nhật ký, hỏi đáp về cà chua mùa đông và chuẩn bị Tết Việt từ xa.

## Tình huống 1 — Trước nhà kính số 3, 7 giờ sáng — Bật lò sưởi đầu ngày

*Sương trắng phủ đầy mái nhà kính. Yamamoto chỉ vào hộp điều khiển.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リン、<ruby>今日<rt>きょう</rt></ruby>から<ruby>暖房機<rt>だんぼうき</rt></ruby>の<ruby>操作<rt>そうさ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてもらうぞ。<br>*(Linh, từ hôm nay phải nhớ cách vận hành lò sưởi.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, xin sếp.)* |
| Yamamoto | このスイッチを<ruby>入<rt>い</rt></ruby>れる。<ruby>設定温度<rt>せっていおんど</rt></ruby>は<ruby>夜<rt>よる</rt></ruby><ruby>10度<rt>じゅうど</rt></ruby>、<ruby>昼<rt>ひる</rt></ruby><ruby>20度<rt>にじゅうど</rt></ruby>。<br>*(Bật công tắc này. Nhiệt độ cài ban đêm 10 độ, ban ngày 20 độ.)* |
| Linh | <ruby>夜<rt>よる</rt></ruby><ruby>10度<rt>じゅうど</rt></ruby>、<ruby>昼<rt>ひる</rt></ruby><ruby>20度<rt>にじゅうど</rt></ruby>ですね。<br>*(Đêm 10 độ, ngày 20 độ nhỉ.)* |
| Yamamoto | そう。<ruby>燃料<rt>ねんりょう</rt></ruby>は<ruby>灯油<rt>とうゆ</rt></ruby>だ。<ruby>残量<rt>ざんりょう</rt></ruby>を<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しろ。<br>*(Đúng. Nhiên liệu là dầu hoả. Sáng nào cũng kiểm tra lượng còn lại.)* |
| Linh | はい。<ruby>半分<rt>はんぶん</rt></ruby>を<ruby>切<rt>き</rt></ruby>ったら<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng. Nếu dưới một nửa em sẽ báo.)* |
| Yamamoto | <ruby>偉<rt>えら</rt></ruby>いな。<ruby>3分<rt>さんぶん</rt></ruby>の<ruby>1<rt>いち</rt></ruby>になったら<ruby>注文<rt>ちゅうもん</rt></ruby>するんだ。<br>*(Khá. Cứ còn 1/3 là đặt hàng.)* |

## Tình huống 2 — Bên trong ハウス, 7:30 — Đo nhiệt độ và ghi nhật ký

*Có nhiệt kế treo ở 3 vị trí: cửa vào, giữa, cuối hàng. Linh cầm sổ ghi chép.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>温度計<rt>おんどけい</rt></ruby>を<ruby>3<rt>さん</rt></ruby>か<ruby>所<rt>しょ</rt></ruby><ruby>見<rt>み</rt></ruby>る。<ruby>入口<rt>いりぐち</rt></ruby>、<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>、<ruby>奥<rt>おく</rt></ruby>。<br>*(Xem nhiệt kế ở 3 chỗ. Cửa vào, giữa, trong cùng.)* |
| Linh | <ruby>入口<rt>いりぐち</rt></ruby>は<ruby>12度<rt>じゅうにど</rt></ruby>、<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>は<ruby>18度<rt>じゅうはちど</rt></ruby>、<ruby>奥<rt>おく</rt></ruby>は<ruby>20度<rt>にじゅうど</rt></ruby>です。<br>*(Cửa vào 12 độ, giữa 18 độ, trong cùng 20 độ.)* |
| Yamamoto | <ruby>入口<rt>いりぐち</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いな。すきま<ruby>風<rt>かぜ</rt></ruby>かもしれん。<br>*(Cửa vào hơi thấp. Có thể gió lùa.)* |
| Linh | ビニールの<ruby>隙間<rt>すきま</rt></ruby>をチェックしましょうか。<br>*(Em kiểm tra khe hở bạt nhé?)* |
| Yamamoto | うん、<ruby>頼<rt>たの</rt></ruby>む。<ruby>湿度<rt>しつど</rt></ruby>も<ruby>書<rt>か</rt></ruby>き<ruby>留<rt>と</rt></ruby>めてくれ。<br>*(Ờ, nhờ em. Ghi cả độ ẩm vào.)* |
| Linh | <ruby>湿度<rt>しつど</rt></ruby>は<ruby>65%<rt>ろくじゅうごパーセント</rt></ruby>です。<br>*(Độ ẩm 65%.)* |
| Yamamoto | ちょうどいい。<ruby>毎日<rt>まいにち</rt></ruby>この<ruby>表<rt>ひょう</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>しろ。<br>*(Vừa đẹp. Mỗi ngày điền vào bảng này.)* |

## Tình huống 3 — Giữa hàng cà chua, 9 giờ — Sempai Saori dạy chọn quả

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>冬<rt>ふゆ</rt></ruby>のトマトは<ruby>夏<rt>なつ</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>うよ。<br>*(Linh, cà chua mùa đông khác mùa hè đấy.)* |
| Linh | どこが<ruby>違<rt>ちが</rt></ruby>いますか。<br>*(Khác chỗ nào ạ?)* |
| Saori | <ruby>糖度<rt>とうど</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。<ruby>味<rt>あじ</rt></ruby>が<ruby>濃<rt>こ</rt></ruby>い。<br>*(Độ ngọt cao. Vị đậm hơn.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>食<rt>た</rt></ruby>べてみたいです！<br>*(Thật ạ? Em muốn ăn thử!)* |
| Saori | あとで<ruby>1<rt>いっ</rt></ruby>つ<ruby>味見<rt>あじみ</rt></ruby>させてあげる。<ruby>収穫<rt>しゅうかく</rt></ruby>は<ruby>赤<rt>あか</rt></ruby>くなった<ruby>8割<rt>はちわり</rt></ruby>のものね。<br>*(Lát chị cho ăn thử 1 quả. Thu hoạch quả đỏ khoảng 80%.)* |
| Linh | <ruby>8割<rt>はちわり</rt></ruby>って、まだ<ruby>少<rt>すこ</rt></ruby>し<ruby>緑<rt>みどり</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>ってる<ruby>状態<rt>じょうたい</rt></ruby>ですか。<br>*(80% nghĩa là còn chút xanh ở dưới đáy ạ?)* |
| Saori | そう、ヘタの<ruby>近<rt>ちか</rt></ruby>く。お<ruby>店<rt>みせ</rt></ruby>に<ruby>届<rt>とど</rt></ruby>くころにちょうど<ruby>真<rt>ま</rt></ruby>っ<ruby>赤<rt>か</rt></ruby>になる。<br>*(Đúng, gần cuống. Đến cửa hàng vừa đỏ đều.)* |

## Tình huống 4 — Cuối hàng cà chua, 10 giờ — Phát hiện quả nứt do thay đổi nhiệt

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、これ<ruby>見<rt>み</rt></ruby>てください。<ruby>割<rt>わ</rt></ruby>れています。<br>*(Chị Saori, nhìn cái này. Bị nứt rồi.)* |
| Saori | あー、<ruby>裂果<rt>れっか</rt></ruby>だ。<ruby>夜<rt>よる</rt></ruby>と<ruby>昼<rt>ひる</rt></ruby>の<ruby>気温差<rt>きおんさ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きすぎたのかも。<br>*(À, "rekka" (nứt quả). Chênh lệch nhiệt độ ngày-đêm có thể quá lớn.)* |
| Linh | <ruby>食<rt>た</rt></ruby>べられないんですか。<br>*(Không ăn được ạ?)* |
| Saori | <ruby>味<rt>あじ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だけど、<ruby>出荷<rt>しゅっか</rt></ruby>できない。B<ruby>級品<rt>きゅうひん</rt></ruby>のかごへ。<br>*(Vị thì ổn nhưng không xuất được. Cho vào giỏ hàng loại B.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>夜間<rt>やかん</rt></ruby><ruby>温度<rt>おんど</rt></ruby>を<ruby>1度<rt>いちど</rt></ruby><ruby>上<rt>あ</rt></ruby>げるか<ruby>聞<rt>き</rt></ruby>いてみますか。<br>*(Em hỏi sếp xem có nên tăng nhiệt ban đêm 1 độ không?)* |
| Saori | いい<ruby>提案<rt>ていあん</rt></ruby>！<ruby>君<rt>きみ</rt></ruby>、<ruby>成長<rt>せいちょう</rt></ruby>したね。<br>*(Đề xuất hay! Em tiến bộ rồi đấy.)* |

## Tình huống 5 — Văn phòng nông trại, 11 giờ — Báo cáo và đề xuất với Yamamoto

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Sếp, em có báo cáo.)* |
| Yamamoto | <ruby>何<rt>なん</rt></ruby>だ？<br>*(Gì đó?)* |
| Linh | <ruby>3号<rt>さんごう</rt></ruby>ハウスで<ruby>裂果<rt>れっか</rt></ruby>が<ruby>10個<rt>じゅっこ</rt></ruby>くらいありました。<br>*(Nhà kính số 3 có khoảng 10 quả bị nứt.)* |
| Yamamoto | そうか。<ruby>原因<rt>げんいん</rt></ruby>は？<br>*(Vậy à. Nguyên nhân?)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さんと<ruby>話<rt>はな</rt></ruby>して、<ruby>夜<rt>よる</rt></ruby>と<ruby>昼<rt>ひる</rt></ruby>の<ruby>気温差<rt>きおんさ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいかもしれないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em đã trao đổi với chị Saori, có thể do chênh lệch nhiệt độ ngày đêm quá lớn.)* |
| Yamamoto | なるほど。<ruby>夜間<rt>やかん</rt></ruby>を<ruby>11度<rt>じゅういちど</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げてみよう。<br>*(Có lý. Thử nâng ban đêm lên 11 độ xem.)* |
| Linh | はい、<ruby>設定<rt>せってい</rt></ruby>を<ruby>変<rt>か</rt></ruby>えてきます。<br>*(Vâng, em đi đổi cài đặt.)* |
| Yamamoto | お<ruby>前<rt>まえ</rt></ruby>、もう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>実習生<rt>じっしゅうせい</rt></ruby>だ。<br>*(Em đã là một TTS đàng hoàng rồi.)* |

## Tình huống 6 — UNIQLO Mito, chiều chủ nhật — Mua áo Heattech

*Linh đi cùng Dewi. Trời ngoài trời 2 độ.*

| Vai | Lời thoại |
|---|---|
| Linh | すみません、ヒートテックはどこですか。<br>*(Xin lỗi, áo Heattech ở đâu ạ?)* |
| Nhân viên | <ruby>2階<rt>にかい</rt></ruby>です。<ruby>女性<rt>じょせい</rt></ruby>コーナーの<ruby>左<rt>ひだり</rt></ruby>です。<br>*(Tầng 2. Bên trái khu nữ.)* |
| Linh | ありがとうございます。<br>*(Cảm ơn chị.)* |
| Dewi | リン、<ruby>極暖<rt>ごくだん</rt></ruby>と<ruby>超極暖<rt>ちょうごくだん</rt></ruby>、どっちにする？<br>*(Linh, "Gokudan" hay "Chougokudan", chọn cái nào?)* |
| Linh | ハウスの<ruby>中<rt>なか</rt></ruby>は<ruby>暖<rt>あたた</rt></ruby>かいから、<ruby>普通<rt>ふつう</rt></ruby>のヒートテックでいい。<br>*(Trong nhà kính ấm nên Heattech thường được.)* |
| Dewi | <ruby>外<rt>そと</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>のときは？<br>*(Lúc việc bên ngoài?)* |
| Linh | <ruby>外<rt>そと</rt></ruby>は<ruby>極暖<rt>ごくだん</rt></ruby>。<ruby>朝<rt>あさ</rt></ruby><ruby>5時<rt>ごじ</rt></ruby>の<ruby>水<rt>みず</rt></ruby>やりは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>寒<rt>さむ</rt></ruby>い。<br>*(Bên ngoài thì "Gokudan". Tưới nước 5 giờ sáng lạnh thật sự.)* |
| Nhân viên | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>セールで<ruby>2枚<rt>にまい</rt></ruby>で<ruby>2980円<rt>にせんきゅうひゃくはちじゅうえん</rt></ruby>です。<br>*(Quý khách, hôm nay sale 2 cái 2980 yên.)* |
| Linh | <ruby>2枚<rt>にまい</rt></ruby><ruby>買<rt>か</rt></ruby>います！<br>*(Em lấy 2 cái!)* |

## Tình huống 7 — Sáng thứ Hai, 6 giờ — Tuyết rơi nhẹ, dọn lối đi

*Tuyết phủ trắng đường vào ハウス, dày khoảng 5cm.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リン、<ruby>雪<rt>ゆき</rt></ruby>かきを<ruby>手伝<rt>てつだ</rt></ruby>ってくれ。<br>*(Linh, phụ tôi xúc tuyết.)* |
| Linh | はい！スコップはどこですか。<br>*(Vâng! Xẻng ở đâu ạ?)* |
| Yamamoto | <ruby>倉庫<rt>そうこ</rt></ruby>の<ruby>入口<rt>いりぐち</rt></ruby>。<ruby>2本<rt>にほん</rt></ruby><ruby>持<rt>も</rt></ruby>ってきて。<br>*(Cửa kho. Mang 2 cái.)* |
| Linh | はい。ハウスの<ruby>屋根<rt>やね</rt></ruby>の<ruby>雪<rt>ゆき</rt></ruby>もとりますか。<br>*(Vâng. Tuyết trên mái nhà kính cũng dọn không ạ?)* |
| Yamamoto | <ruby>今<rt>いま</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>10センチ<rt>じゅっセンチ</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>積<rt>つ</rt></ruby>もったら<ruby>落<rt>お</rt></ruby>とす。<br>*(Bây giờ chưa cần. Dày trên 10 cm thì cào.)* |
| Linh | わかりました。<ruby>初<rt>はじ</rt></ruby>めての<ruby>雪<rt>ゆき</rt></ruby>かきです！<br>*(Em rõ rồi. Lần đầu xúc tuyết!)* |
| Yamamoto | <ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めないように、<ruby>少<rt>すこ</rt></ruby>しずつな。<br>*(Cẩn thận đau lưng, làm từ từ.)* |

## Tình huống 8 — Trên đường vào ハウス, 7 giờ sáng — Linh trượt chân

| Vai | Lời thoại |
|---|---|
| Linh | あっ！（<ruby>滑<rt>すべ</rt></ruby>る）<br>*(Á! (trượt))* |
| Yamamoto | おい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か？<br>*(Ê, có sao không?)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。お<ruby>尻<rt>しり</rt></ruby>だけ。<br>*(Em ổn. Chỉ ngã mông.)* |
| Yamamoto | はは、<ruby>氷<rt>こおり</rt></ruby>になってる<ruby>所<rt>ところ</rt></ruby>があるからな。<br>*(Haha, có chỗ đóng đá đấy.)* |
| Linh | <ruby>歩<rt>ある</rt></ruby>き<ruby>方<rt>かた</rt></ruby>のコツはありますか。<br>*(Có mẹo nào để đi không ạ?)* |
| Yamamoto | <ruby>歩幅<rt>ほはば</rt></ruby>を<ruby>小<rt>ちい</rt></ruby>さくして、ペンギンみたいに<ruby>歩<rt>ある</rt></ruby>く。<br>*(Bước nhỏ lại, đi như chim cánh cụt.)* |
| Linh | ペンギン！（<ruby>真似<rt>まね</rt></ruby>する）こうですか？<br>*(Cánh cụt ạ! (bắt chước) Vầy đúng không?)* |
| Yamamoto | そうそう！ベトナム<ruby>人<rt>じん</rt></ruby>ペンギン、かわいいぞ。<br>*(Đúng vậy! Chim cánh cụt Việt Nam, dễ thương đấy.)* |

## Tình huống 9 — Trong ハウス, 10 giờ — Đoàn thể Suzuki tới thăm, hỏi sức khoẻ

| Vai | Lời thoại |
|---|---|
| Suzuki | リンさん、<ruby>寒<rt>さむ</rt></ruby>くなりましたね。<ruby>体調<rt>たいちょう</rt></ruby>はどうですか。<br>*(Linh, lạnh rồi nhỉ. Sức khoẻ thế nào?)* |
| Linh | おかげさまで<ruby>元気<rt>げんき</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby>は<ruby>寒<rt>さむ</rt></ruby>いですが、ハウスは<ruby>暖<rt>あたた</rt></ruby>かいです。<br>*(Nhờ trời em khoẻ. Sáng lạnh nhưng nhà kính ấm.)* |
| Suzuki | <ruby>風邪<rt>かぜ</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>かないように、マスクと<ruby>手洗<rt>てあら</rt></ruby>いをしてください。<br>*(Đeo khẩu trang, rửa tay cẩn thận để khỏi cảm.)* |
| Linh | はい。<ruby>先週<rt>せんしゅう</rt></ruby>はちょっと<ruby>喉<rt>のど</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>かったですが、<ruby>葛根湯<rt>かっこんとう</rt></ruby>を<ruby>飲<rt>の</rt></ruby>みました。<br>*(Vâng. Tuần trước em hơi đau họng, đã uống Kakkonto.)* |
| Suzuki | おっ、<ruby>日本<rt>にほん</rt></ruby>の<ruby>漢方<rt>かんぽう</rt></ruby>を<ruby>知<rt>し</rt></ruby>ってるんだ。<br>*(Ồ, biết cả thuốc bắc Nhật.)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さんが<ruby>教<rt>おそ</rt></ruby>えてくれました。<br>*(Chị Saori chỉ ạ.)* |
| Suzuki | <ruby>悪化<rt>あっか</rt></ruby>したら<ruby>必<rt>かなら</rt></ruby>ず<ruby>病院<rt>びょういん</rt></ruby>へ。<ruby>保険証<rt>ほけんしょう</rt></ruby>もパスポートも<ruby>持<rt>も</rt></ruby>って。<br>*(Nặng hơn nhất định đi viện. Mang theo thẻ bảo hiểm và hộ chiếu.)* |
| Linh | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em rõ rồi.)* |

## Tình huống 10 — Cửa hàng đặc sản Mito, thứ Bảy — Chuẩn bị Tết Việt

*Cuối tháng 1, Tết Việt Nam sắp tới. Linh tìm nguyên liệu Á trong cửa hàng quốc tế.*

| Vai | Lời thoại |
|---|---|
| Linh | すみません、もち<ruby>米<rt>ごめ</rt></ruby>はありますか。<br>*(Xin lỗi, có gạo nếp không ạ?)* |
| Nhân viên | はい、こちらの<ruby>棚<rt>たな</rt></ruby>です。タイ<ruby>産<rt>さん</rt></ruby>とベトナム<ruby>産<rt>さん</rt></ruby>があります。<br>*(Có, kệ này. Có gạo Thái và gạo Việt.)* |
| Linh | ベトナム<ruby>産<rt>さん</rt></ruby>を<ruby>2キロ<rt>にキロ</rt></ruby>ください。<br>*(Cho em 2 kí gạo Việt.)* |
| Nhân viên | バナナの<ruby>葉<rt>は</rt></ruby>は<ruby>冷凍<rt>れいとう</rt></ruby>です。<ruby>必要<rt>ひつよう</rt></ruby>ですか。<br>*(Lá chuối có loại đông lạnh. Cần không?)* |
| Linh | はい！バインチュンを<ruby>作<rt>つく</rt></ruby>りたいんです。<br>*(Vâng! Em muốn gói bánh chưng.)* |
| Nhân viên | バインチュン？<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Bánh chưng? Lần đầu nghe.)* |
| Linh | ベトナムのお<ruby>正月<rt>しょうがつ</rt></ruby>の<ruby>料理<rt>りょうり</rt></ruby>です。<ruby>四角<rt>しかく</rt></ruby>いお<ruby>餅<rt>もち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>豚肉<rt>ぶたにく</rt></ruby>と<ruby>豆<rt>まめ</rt></ruby>。<br>*(Món Tết Việt Nam ạ. Bánh vuông trong có thịt heo và đậu.)* |
| Nhân viên | わー、おいしそう！<br>*(Ô, ngon quá!)* |

## Tình huống 11 — Nhà ăn nông trại, đêm giao thừa Tết Việt — Mời Saori ăn bánh chưng

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん、これ、<ruby>食<rt>た</rt></ruby>べてみてください。<ruby>私<rt>わたし</rt></ruby>が<ruby>作<rt>つく</rt></ruby>りました。<br>*(Chị Saori, ăn thử cái này nha. Em làm đó.)* |
| Saori | わあ、これがバインチュン？<ruby>緑色<rt>みどりいろ</rt></ruby>で<ruby>四角<rt>しかく</rt></ruby>い。<br>*(Wow, bánh chưng đây à? Xanh và vuông.)* |
| Linh | バナナの<ruby>葉<rt>は</rt></ruby>で<ruby>包<rt>つつ</rt></ruby>むから<ruby>緑<rt>みどり</rt></ruby>になります。<br>*(Bọc bằng lá chuối nên có màu xanh.)* |
| Saori | （<ruby>食<rt>た</rt></ruby>べる）あ、おいしい！もちもちで、<ruby>豚肉<rt>ぶたにく</rt></ruby>がうまい！<br>*(Ăn) A, ngon! Dẻo, thịt heo ngon!)* |
| Linh | よかった！ベトナムのお<ruby>正月<rt>しょうがつ</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>いです。<br>*(May quá! Là món mừng Tết Việt Nam.)* |
| Saori | リンちゃん、お<ruby>正月<rt>しょうがつ</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby>と<ruby>会<rt>あ</rt></ruby>えなくて<ruby>寂<rt>さび</rt></ruby>しいね。<br>*(Linh, Tết không gặp gia đình buồn nhỉ.)* |
| Linh | はい、ちょっと。でも、<ruby>佐織<rt>さおり</rt></ruby>さんたちが<ruby>家族<rt>かぞく</rt></ruby>みたいです。<br>*(Vâng, có chút. Nhưng chị và mọi người như gia đình.)* |
| Saori | ありがとう。<ruby>泣<rt>な</rt></ruby>きそう…。<br>*(Cảm ơn. Suýt khóc...)* |

## Tình huống 12 — Phòng riêng ký túc, mồng 1 Tết, 8 giờ tối — Gọi video về Đồng Tháp

> Cảnh tiếng Việt — gọi video Tết về VN.

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | A lô Linh ơi, mẹ thấy mặt con rồi nè! |
| Linh | Mẹ ơi, chúc mẹ năm mới sức khoẻ! Con thấy mẹ và mâm cơm rồi. |
| Mẹ Linh | Bên đó tuyết nhiều hông con? |
| Linh | Hôm qua tuyết 5cm thôi mẹ. Con học cách 「<ruby>雪<rt>ゆき</rt></ruby>かき」 xúc tuyết rồi. |
| Bố Linh | Khoẻ là tốt rồi con. Có ăn Tết được hông? |
| Linh | Con gói bánh chưng với lá chuối đông lạnh nha bố! Con mời cả 「<ruby>佐織<rt>さおり</rt></ruby>さん」 ăn nữa. Chị ấy khen ngon lắm! |
| Mẹ Linh | Trời, con gái mẹ giỏi quá. Mẹ gói cho con mấy đòn rồi gửi qua nha. |
| Linh | Mẹ đừng gửi đồ ướt, hải quan Nhật khó lắm. Mẹ gửi khô cá lóc với me chua thôi mẹ. |
| Bố Linh | Năm sau con về ăn Tết với nhà nha. |
| Linh | Dạ, hợp đồng 3 năm xong là con tính. Con cố gắng. |

## Tình huống 13 — Sáng thứ Hai sau Tết, 7 giờ — Sự cố lò sưởi hết dầu

*Đèn báo lỗi đỏ. Nhà kính chỉ còn 8 độ.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>！<ruby>大変<rt>たいへん</rt></ruby>です！<ruby>暖房機<rt>だんぼうき</rt></ruby>が<ruby>止<rt>と</rt></ruby>まりました！<br>*(Sếp! Có chuyện! Lò sưởi tắt rồi!)* |
| Yamamoto | <ruby>何<rt>なん</rt></ruby>のランプが<ruby>点<rt>つ</rt></ruby>いてる？<br>*(Đèn báo nào sáng?)* |
| Linh | <ruby>赤<rt>あか</rt></ruby>いランプ。「<ruby>燃料切<rt>ねんりょうぎ</rt></ruby>れ」って<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Đèn đỏ. Có chữ "hết nhiên liệu".)* |
| Yamamoto | しまった！<ruby>注文<rt>ちゅうもん</rt></ruby>するのを<ruby>忘<rt>わす</rt></ruby>れていた。<br>*(Hỏng rồi! Tôi quên đặt hàng.)* |
| Linh | <ruby>業者<rt>ぎょうしゃ</rt></ruby>に<ruby>緊急<rt>きんきゅう</rt></ruby>で<ruby>電話<rt>でんわ</rt></ruby>しますか。<br>*(Em gọi khẩn cho đại lý không ạ?)* |
| Yamamoto | <ruby>頼<rt>たの</rt></ruby>む。<ruby>1時間<rt>いちじかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>来<rt>こ</rt></ruby>られるか<ruby>聞<rt>き</rt></ruby>いてくれ。<br>*(Nhờ em. Hỏi xem trong 1 tiếng có tới được không.)* |
| Linh | はい、すぐ<ruby>電話<rt>でんわ</rt></ruby>します。<br>*(Vâng, em gọi ngay.)* |

## Tình huống 14 — Cùng lúc, gọi điện đại lý dầu khẩn — Phản xạ nhanh

| Vai | Lời thoại |
|---|---|
| Linh | もしもし、ヤマモト<ruby>農園<rt>のうえん</rt></ruby>です。<ruby>灯油<rt>とうゆ</rt></ruby>の<ruby>緊急配達<rt>きんきゅうはいたつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(A lô, trang trại Yamamoto. Xin giao dầu hoả khẩn ạ.)* |
| Đại lý | はい、<ruby>量<rt>りょう</rt></ruby>はどれくらいですか。<br>*(Vâng, lượng bao nhiêu ạ?)* |
| Linh | タンクが<ruby>空<rt>から</rt></ruby>です。<ruby>500リットル<rt>ごひゃくリットル</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bồn cạn rồi. Xin 500 lít.)* |
| Đại lý | <ruby>1時間<rt>いちじかん</rt></ruby>以内に<ruby>伺<rt>うかが</rt></ruby>えます。<br>*(Trong 1 tiếng tôi tới được.)* |
| Linh | ありがとうございます！ハウスのトマトが<ruby>心配<rt>しんぱい</rt></ruby>で…。<br>*(Cảm ơn anh! Em lo cho cà chua trong nhà kính...)* |
| Đại lý | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。すぐ<ruby>出発<rt>しゅっぱつ</rt></ruby>します。<br>*(Yên tâm. Tôi xuất phát ngay.)* |
| Linh | お<ruby>願<rt>ねが</rt></ruby>いします、よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Nhờ anh, mong anh!)* |

## Đọng lại chương

Các mẫu câu cốt lõi: **〜の操作を覚える**, **〜度に設定する**, **〜を確認しろ**, **〜かもしれません** (suy đoán), **〜と思います** (đưa ý kiến), **〜てみてください** (mời thử), **〜以内に〜できますか** (yêu cầu thời gian).

> Từ vựng & mẫu câu chương này: 暖房機・操作・設定温度・燃料・灯油・残量・温度計・湿度・記入・裂果・気温差・出荷・夜間・雪かき・スコップ・滑る・歩幅・体調・風邪・葛根湯・保険証・もち米・お正月・緊急・配達・燃料切れ

## Bí quyết chương

- 加温ハウス cần kiểm tra lượng 灯油 mỗi sáng, đặt hàng khi còn 1/3 — tránh hết dầu đột ngột giữa đêm.
- 裂果 (nứt quả) là vấn đề mùa đông — chênh lệch nhiệt độ ngày đêm phải dưới 8 độ.
- Đi trên tuyết: bước nhỏ, "歩幅を小さくして penguinみたいに" — TTS Việt thường ngã ngày đầu.
- UNIQLO ヒートテック 3 cấp: thường / 極暖 / 超極暖 — chỉ cần 極暖 cho việc ngoài trời nông trại.
- Tết Việt: gửi nông trại bánh chưng tự gói thường được chủ Nhật rất thích — gắn kết văn hoá.
- Sự cố 燃料切れ là tình huống khẩn cấp — TTS phải biết gọi đại lý ngay, dùng "緊急配達をお願いします".

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 暖房機 | だんぼうき | NOÃN PHÒNG CƠ | máy sưởi |
| 操作 | そうさ | THAO TÁC | thao tác, vận hành |
| 設定温度 | せっていおんど | THIẾT ĐỊNH ÔN ĐỘ | nhiệt độ cài đặt |
| 燃料 | ねんりょう | NHIÊN LIỆU | nhiên liệu |
| 灯油 | とうゆ | ĐĂNG DU | dầu hoả |
| 残量 | ざんりょう | TÀN LƯỢNG | lượng còn lại |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 温度計 | おんどけい | ÔN ĐỘ KẾ | nhiệt kế |
| 湿度 | しつど | THẤP ĐỘ | độ ẩm |
| 記入 | きにゅう | KÝ NHẬP | điền (vào sổ) |
| 隙間 | すきま | KHÍCH GIAN | khe hở |
| 糖度 | とうど | ĐƯỜNG ĐỘ | độ ngọt |
| 味見 | あじみ | VỊ KIẾN | nếm thử |
| ヘタ | ヘタ | — | cuống (quả) |
| 裂果 | れっか | LIỆT QUẢ | nứt quả |
| 気温差 | きおんさ | KHÍ ÔN SAI | chênh lệch nhiệt độ |
| 出荷 | しゅっか | XUẤT HÀ | xuất hàng |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 夜間 | やかん | DẠ GIAN | ban đêm |
| 雪かき | ゆきかき | TUYẾT — | xúc tuyết |
| スコップ | スコップ | — | xẻng |
| 屋根 | やね | ỐC CĂN | mái nhà |
| 積もる | つもる | TÍCH | (tuyết) chất đống |
| 滑る | すべる | HOẠT | trượt |
| 歩幅 | ほはば | BỘ HẠ | sải bước |
| 氷 | こおり | BĂNG | đá, băng |
| 体調 | たいちょう | THỂ ĐIỀU | tình trạng sức khoẻ |
| 風邪 | かぜ | PHONG TÀ | cảm |
| 葛根湯 | かっこんとう | CÁT CĂN THANG | thuốc bắc trị cảm |
| 漢方 | かんぽう | HÁN PHƯƠNG | thuốc bắc |
| 保険証 | ほけんしょう | BẢO HIỂM CHỨNG | thẻ bảo hiểm |
| もち米 | もちごめ | — MỄ | gạo nếp |
| お正月 | おしょうがつ | CHÍNH NGUYỆT | Tết |
| 包む | つつむ | BAO | gói, bao bọc |
| 燃料切れ | ねんりょうぎれ | NHIÊN LIỆU THIẾT | hết nhiên liệu |
| 緊急配達 | きんきゅうはいたつ | KHẨN CẤP PHỐI ĐẠT | giao hàng khẩn |
| 業者 | ぎょうしゃ | NGHIỆP GIẢ | đại lý, nhà cung cấp |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (804000012, 800000040, NULL, 'markdown_book', 'T12. Tổng kết năm 1 — Đậu N4, 親方 khen, hướng tới 検定 3級', '# Sách Nông nghiệp Năm 1 · T12. Tổng kết năm 1 — Đậu N4, 親方 khen, hướng tới 検定 3級

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, TTS nông nghiệp Ibaraki). Học các mẫu hội thoại tiếng Nhật của TTS cuối năm 1: nhận giấy chứng chỉ N4, nói lời cảm ơn 親方, lên kế hoạch thi 農業技能検定3級 năm 2, mua quà tặng đồng hương mới sang, viết báo cáo cuối năm cho đoàn thể, gọi điện báo gia đình.

## Bối cảnh

Đầu tháng 3/2026. Linh sắp tròn 23 tuổi, đã ở Nhật 11 tháng, tiếng Nhật đạt N4, kinh nghiệm nông trại đầy đủ một chu kỳ năm. Đoàn thể Suzuki tổ chức buổi tổng kết năm 1 ở văn phòng, sau đó 親方 Yamamoto thưởng tiệc. Năm 2 (4/2026 – 3/2027) sẽ thi 農業技能検定3級 — chứng chỉ kỹ năng nông nghiệp 3 sao. TTS Indonesia mới sẽ sang nông trại tháng 4. Chương này tập trung kết chương năm 1: cảm ơn, kế hoạch, dặn dò.

## Tình huống 1 — Phòng riêng ký túc, 7 giờ sáng — Mở thư chứng chỉ N4 từ JLPT

*Phong bì xám trắng vừa tới hôm qua. Linh chưa kịp mở vì làm khuya.*

| Vai | Lời thoại |
|---|---|
| Dewi | リンちゃん、<ruby>合格証書<rt>ごうかくしょうしょ</rt></ruby>もう<ruby>開<rt>あ</rt></ruby>けた？<br>*(Linh, mở giấy chứng nhận đỗ chưa?)* |
| Linh | まだ。<ruby>今<rt>いま</rt></ruby><ruby>開<rt>あ</rt></ruby>ける。ドキドキする。<br>*(Chưa. Giờ mở đây. Hồi hộp.)* |
| Dewi | はやくはやく！<br>*(Nhanh nhanh!)* |
| Linh | （<ruby>開<rt>あ</rt></ruby>ける）「<ruby>日本語能力試験<rt>にほんごのうりょくしけん</rt></ruby>・N4・<ruby>合格<rt>ごうかく</rt></ruby>」って<ruby>書<rt>か</rt></ruby>いてある！<br>*(Mở) Có ghi "Kỳ thi năng lực Nhật ngữ N4 — Đỗ"!)* |
| Dewi | わー、<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>紙<rt>かみ</rt></ruby>だ！<ruby>立派<rt>りっぱ</rt></ruby>！<br>*(Wow, giấy thật! Trang trọng!)* |
| Linh | <ruby>大事<rt>だいじ</rt></ruby>な<ruby>宝物<rt>たからもの</rt></ruby>。<ruby>額縁<rt>がくぶち</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる！<br>*(Bảo vật quý! Em sẽ lồng khung!)* |
| Dewi | わたしも<ruby>今度<rt>こんど</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>したい。<br>*(Tớ kỳ sau cũng muốn đỗ.)* |
| Linh | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しよう。<br>*(Cùng học nhé.)* |

## Tình huống 2 — Văn phòng đoàn thể Suzuki, 9 giờ sáng — Họp tổng kết năm 1

*Suzuki mở laptop trình chiếu. Linh ngồi đối diện cùng 2 TTS cùng đợt khác.*

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>1年目<rt>いちねんめ</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người, vất vả năm thứ nhất rồi.)* |
| Linh | ありがとうございます。<br>*(Cảm ơn anh.)* |
| Suzuki | リンさんは<ruby>無遅刻<rt>むちこく</rt></ruby><ruby>無欠勤<rt>むけっきん</rt></ruby>、N4<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>成績<rt>せいせき</rt></ruby>です。<br>*(Linh không trễ không nghỉ, đỗ N4, thành tích xuất sắc.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>と<ruby>佐織<rt>さおり</rt></ruby>さんに<ruby>支<rt>ささ</rt></ruby>えていただいたからです。<br>*(Là nhờ sếp và chị Saori hỗ trợ ạ.)* |
| Suzuki | <ruby>2年目<rt>にねんめ</rt></ruby>は<ruby>農業技能検定<rt>のうぎょうぎのうけんてい</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてほしいです。<br>*(Năm 2 mong em thi nông nghiệp kỹ năng cấp 3.)* |
| Linh | <ruby>3級<rt>さんきゅう</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby>もありますか。<br>*(Cấp 3 có cả thực hành ạ?)* |
| Suzuki | はい、<ruby>学科<rt>がっか</rt></ruby>と<ruby>実技<rt>じつぎ</rt></ruby>です。<ruby>受<rt>う</rt></ruby>かったら、<ruby>特定技能<rt>とくていぎのう</rt></ruby>への<ruby>道<rt>みち</rt></ruby>も<ruby>開<rt>ひら</rt></ruby>けます。<br>*(Vâng, lý thuyết và thực hành. Đỗ thì mở đường lên Tokutei Ginou.)* |
| Linh | やってみます！<br>*(Em sẽ thử!)* |

## Tình huống 3 — Văn phòng đoàn thể, 10 giờ — Nhận trợ cấp 5 man từ kết quả N4

| Vai | Lời thoại |
|---|---|
| Suzuki | これがN4<ruby>合格<rt>ごうかく</rt></ruby><ruby>奨励金<rt>しょうれいきん</rt></ruby><ruby>5万円<rt>ごまんえん</rt></ruby>です。<ruby>振<rt>ふ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>みでお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Đây là tiền thưởng đỗ N4 5 man. Chuyển khoản nhé.)* |
| Linh | ありがとうございます！<br>*(Cảm ơn anh!)* |
| Suzuki | <ruby>口座番号<rt>こうざばんごう</rt></ruby>はゆうちょの<ruby>同<rt>おな</rt></ruby>じものでいいですか。<br>*(Số tài khoản vẫn Yucho như cũ chứ?)* |
| Linh | はい、<ruby>変<rt>か</rt></ruby>わっていません。<br>*(Vâng, không đổi ạ.)* |
| Suzuki | <ruby>来週中<rt>らいしゅうじゅう</rt></ruby>に<ruby>入金<rt>にゅうきん</rt></ruby>されます。<br>*(Trong tuần sau sẽ vào tài khoản.)* |
| Linh | お<ruby>金<rt>かね</rt></ruby>は<ruby>家<rt>いえ</rt></ruby>に<ruby>送<rt>おく</rt></ruby>ります。<ruby>妹<rt>いもうと</rt></ruby>の<ruby>学費<rt>がくひ</rt></ruby>に。<br>*(Tiền em gửi về nhà. Cho em gái đóng học.)* |
| Suzuki | リンさんは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>偉<rt>えら</rt></ruby>いね。<br>*(Linh giỏi thật.)* |

## Tình huống 4 — Nông trại, trưa thứ Bảy — Yamamoto khen, mời tiệc tổng kết

*親方 đứng giữa sân, gọi tất cả nhân viên lại.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | みんな、リンが<ruby>1年<rt>いちねん</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>った。<ruby>拍手<rt>はくしゅ</rt></ruby>！<br>*(Mọi người, Linh đã cố gắng yên ổn 1 năm. Vỗ tay!)* |
| Saori | パチパチパチ！<br>*(Bộp bộp bộp!)* |
| Yamamoto | リン、お<ruby>前<rt>まえ</rt></ruby>はうちで<ruby>1番<rt>いちばん</rt></ruby>の<ruby>実習生<rt>じっしゅうせい</rt></ruby>だぞ。<br>*(Linh, em là TTS số một của trang trại tôi đó.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>ですか…<ruby>泣<rt>な</rt></ruby>きそうです。<br>*(Thật ạ... Em sắp khóc.)* |
| Yamamoto | <ruby>今夜<rt>こんや</rt></ruby>はうちで<ruby>焼肉<rt>やきにく</rt></ruby><ruby>大会<rt>たいかい</rt></ruby>だ！おばあちゃんも<ruby>来<rt>く</rt></ruby>るぞ。<br>*(Tối nay đại hội yakiniku ở nhà tôi! Bà cũng tới.)* |
| Linh | おばあちゃんに<ruby>会<rt>あ</rt></ruby>えるの、うれしいです！<br>*(Được gặp bà, em vui quá!)* |
| Yamamoto | <ruby>6時<rt>ろくじ</rt></ruby>な。<ruby>遅<rt>おく</rt></ruby>れるなよ。<br>*(6 giờ nhé. Đừng tới muộn.)* |

## Tình huống 5 — Donki Mito, chiều thứ Bảy — Mua quà cho 親方 và Saori

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>独<rt>ひと</rt></ruby>り）<ruby>親方<rt>おやかた</rt></ruby>はお<ruby>酒<rt>さけ</rt></ruby>が<ruby>好<rt>す</rt></ruby>き。<ruby>佐織<rt>さおり</rt></ruby>さんは<ruby>甘<rt>あま</rt></ruby>いものが<ruby>好<rt>す</rt></ruby>き。<br>*(Một mình) Sếp thích rượu. Chị Saori thích đồ ngọt.)* |
| Nhân viên | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>何<rt>なに</rt></ruby>かお<ruby>探<rt>さが</rt></ruby>しですか。<br>*(Quý khách, tìm gì ạ?)* |
| Linh | プレゼントです。<ruby>50代<rt>ごじゅうだい</rt></ruby>の<ruby>男性<rt>だんせい</rt></ruby>に。<br>*(Quà tặng. Cho nam giới hơn 50 tuổi.)* |
| Nhân viên | <ruby>地元<rt>じもと</rt></ruby>の<ruby>日本酒<rt>にほんしゅ</rt></ruby>はいかがですか。<ruby>茨城<rt>いばらき</rt></ruby>の<ruby>銘酒<rt>めいしゅ</rt></ruby>です。<br>*(Rượu Nhật địa phương được không? Rượu danh tiếng Ibaraki.)* |
| Linh | いいですね。<ruby>4合瓶<rt>よんごうびん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hay đấy. Cho chai 4 hợp ạ.)* |
| Nhân viên | <ruby>女性<rt>じょせい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>には？<br>*(Cho nữ thì sao?)* |
| Linh | <ruby>30代<rt>さんじゅうだい</rt></ruby>の<ruby>女性<rt>じょせい</rt></ruby>です。<br>*(Nữ độ 30 tuổi ạ.)* |
| Nhân viên | では、こちらの<ruby>抹茶<rt>まっちゃ</rt></ruby>クッキーのセットはいかがですか。<ruby>1500円<rt>せんごひゃくえん</rt></ruby>です。<br>*(Vậy set bánh quy matcha này thì sao? 1500 yên.)* |
| Linh | これにします。ラッピングお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em lấy cái này. Xin gói quà.)* |

## Tình huống 6 — Nhà 親方, 6 giờ tối — Gặp bà nội Yamamoto

*Bà 80 tuổi, ngồi cạnh bếp than, nói tiếng Ibaraki nặng.*

| Vai | Lời thoại |
|---|---|
| Bà | あんたがリンちゃんかい。よう<ruby>来<rt>き</rt></ruby>てくれたねえ。<br>*(Cháu là Linh à. Cảm ơn cháu đã tới.)* |
| Linh | こんばんは、おばあちゃん。<ruby>初<rt>はじ</rt></ruby>めまして、リンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào tối ạ, bà. Cháu là Linh ạ.)* |
| Bà | ベトナムから<ruby>遠<rt>とお</rt></ruby>くに<ruby>来<rt>き</rt></ruby>たねえ。お<ruby>母<rt>かあ</rt></ruby>さん<ruby>寂<rt>さび</rt></ruby>しがってるべ。<br>*(Từ Việt Nam tới xa quá. Mẹ cháu chắc nhớ con lắm.)* |
| Linh | はい、でも<ruby>毎週<rt>まいしゅう</rt></ruby>テレビ<ruby>電話<rt>でんわ</rt></ruby>します。<br>*(Vâng, nhưng tuần nào cháu cũng gọi video.)* |
| Bà | この<ruby>梅干<rt>うめぼ</rt></ruby>し、わしが<ruby>漬<rt>つ</rt></ruby>けたんだ。<ruby>食<rt>た</rt></ruby>べな。<br>*(Mơ muối này bà tự muối đó. Ăn đi.)* |
| Linh | ありがとうございます。（<ruby>食<rt>た</rt></ruby>べる）すっぱい！おいしいです！<br>*(Cảm ơn bà. (ăn) Chua quá! Ngon ạ!)* |
| Bà | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>るんだぞ。わしは<ruby>応援<rt>おうえん</rt></ruby>してるよ。<br>*(Năm sau cũng cố lên. Bà ủng hộ cháu.)* |

## Tình huống 7 — Bàn ăn 親方, 7 giờ tối — Linh nói lời cảm ơn

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>佐織<rt>さおり</rt></ruby>さん、ちょっといいですか。<br>*(Sếp, chị Saori, cho em nói chút?)* |
| Yamamoto | おう、<ruby>何<rt>なん</rt></ruby>だ。<br>*(Ờ, gì?)* |
| Linh | この<ruby>1年<rt>いちねん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Một năm qua, em thật sự cảm ơn.)* |
| Linh | <ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>たばかりのとき、<ruby>何<rt>なに</rt></ruby>もできませんでした。でも<ruby>今<rt>いま</rt></ruby>、トマトの<ruby>収穫<rt>しゅうかく</rt></ruby>も、<ruby>暖房機<rt>だんぼうき</rt></ruby>の<ruby>操作<rt>そうさ</rt></ruby>もできます。<br>*(Lúc mới sang Nhật, em không làm được gì. Nhưng giờ em biết thu hoạch cà chua, vận hành lò sưởi.)* |
| Linh | これは<ruby>親方<rt>おやかた</rt></ruby>と<ruby>佐織<rt>さおり</rt></ruby>さんが<ruby>優<rt>やさ</rt></ruby>しく<ruby>教<rt>おそ</rt></ruby>えてくださったからです。<br>*(Là nhờ sếp và chị Saori tận tình chỉ bảo.)* |
| Linh | これ、<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Đây, chút tấm lòng ạ.)* |
| Yamamoto | おっ、お<ruby>酒<rt>さけ</rt></ruby>か！ありがとうな。<br>*(Ồ, rượu à! Cảm ơn em.)* |
| Saori | わたしまで…うれしい！<br>*(Cả tôi nữa... vui quá!)* |
| Yamamoto | リン、お<ruby>前<rt>まえ</rt></ruby>はうちの<ruby>家族<rt>かぞく</rt></ruby>だ。<ruby>遠慮<rt>えんりょ</rt></ruby>するな。<br>*(Linh, em là người nhà của tôi rồi. Đừng khách sáo.)* |

## Tình huống 8 — Nhà 親方, 8 giờ — Yamamoto kể về TTS Indonesia mới sang

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>4月<rt>しがつ</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>が<ruby>来<rt>く</rt></ruby>る。インドネシアから。<br>*(Tháng 4 có TTS mới tới. Từ Indonesia.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>名前<rt>なまえ</rt></ruby>は？<br>*(Thật ạ! Tên gì ạ?)* |
| Yamamoto | アグスくん。<ruby>22歳<rt>にじゅうにさい</rt></ruby>、<ruby>男性<rt>だんせい</rt></ruby>。<ruby>日本語<rt>にほんご</rt></ruby>はまだ<ruby>下手<rt>へた</rt></ruby>だ。<br>*(Agus. 22 tuổi, nam. Tiếng Nhật còn yếu.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>が<ruby>先輩<rt>せんぱい</rt></ruby>になりますね！<br>*(Em sẽ là sempai nhỉ!)* |
| Yamamoto | そう。<ruby>仕事<rt>しごと</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>教<rt>おそ</rt></ruby>えてやってくれ。<br>*(Đúng. Cả việc và tiếng Nhật, dạy em ấy nhé.)* |
| Linh | はい！<ruby>私<rt>わたし</rt></ruby>も<ruby>佐織<rt>さおり</rt></ruby>さんに<ruby>教<rt>おそ</rt></ruby>えてもらったから、<ruby>今度<rt>こんど</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>番<rt>ばん</rt></ruby>です。<br>*(Vâng! Em được chị Saori dạy, giờ tới lượt em.)* |
| Saori | リンちゃん、いい<ruby>先輩<rt>せんぱい</rt></ruby>になるよ。<br>*(Linh sẽ là sempai tốt đấy.)* |

## Tình huống 9 — Đường về ký túc, 11 giờ đêm — Tâm sự với Riko-sempai

*Riko (Philippines, sempai từ trước Linh sang) đang đợi ở phòng chung.*

| Vai | Lời thoại |
|---|---|
| Riko | リンさん、<ruby>遅<rt>おそ</rt></ruby>くまでお<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Linh, vất vả tới khuya rồi nhỉ.)* |
| Linh | リコさん、まだ<ruby>起<rt>お</rt></ruby>きてたんですか？<br>*(Chị Riko, chị vẫn còn thức ạ?)* |
| Riko | うん、<ruby>来月<rt>らいげつ</rt></ruby>のN4の<ruby>勉強<rt>べんきょう</rt></ruby>。リンさんが<ruby>合格<rt>ごうかく</rt></ruby>したから、わたしも<ruby>頑張<rt>がんば</rt></ruby>りたい。<br>*(Ừ, học N4 cho tháng sau. Linh đỗ rồi, chị cũng muốn cố.)* |
| Linh | わたしでよければ<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しましょう。<ruby>過去問<rt>かこもん</rt></ruby>もあります。<br>*(Em sẵn lòng cùng học. Em có cả sách đề nữa.)* |
| Riko | <ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>で…。<br>*(Chị yếu phần nghe...)* |
| Linh | わたしも<ruby>最初<rt>さいしょ</rt></ruby>はそうでした。<ruby>毎日<rt>まいにち</rt></ruby>YouTubeで<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>聞<rt>き</rt></ruby>くといいですよ。<br>*(Em ban đầu cũng vậy. Mỗi ngày nghe YouTube một ít là tốt.)* |
| Riko | ありがとうリンさん。<ruby>頼<rt>たよ</rt></ruby>りになります。<br>*(Cảm ơn Linh. Có thể tin tưởng em rồi.)* |
| Linh | こちらこそ、リコさんに<ruby>去年<rt>きょねん</rt></ruby>はたくさん<ruby>助<rt>たす</rt></ruby>けてもらいました。<br>*(Em mới phải cảm ơn chị, năm ngoái chị giúp em nhiều lắm.)* |

## Tình huống 10 — Văn phòng đoàn thể, sáng thứ Hai — Nộp báo cáo cuối năm 1

| Vai | Lời thoại |
|---|---|
| Linh | スズキさん、<ruby>1年目<rt>いちねんめ</rt></ruby>の<ruby>報告書<rt>ほうこくしょ</rt></ruby>です。<br>*(Anh Suzuki, đây là báo cáo năm 1 ạ.)* |
| Suzuki | はい、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ります。よく<ruby>書<rt>か</rt></ruby>けてますね。<br>*(Vâng, anh nhận. Viết tốt đấy.)* |
| Linh | <ruby>仕事<rt>しごと</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えたこと、<ruby>失敗<rt>しっぱい</rt></ruby>したこと、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>書<rt>か</rt></ruby>きました。<br>*(Học được, thất bại, em viết hết.)* |
| Suzuki | <ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>書<rt>か</rt></ruby>くのは<ruby>立派<rt>りっぱ</rt></ruby>です。<ruby>普通<rt>ふつう</rt></ruby>みんな<ruby>隠<rt>かく</rt></ruby>します。<br>*(Viết thất bại là đáng nể. Thường ai cũng giấu.)* |
| Linh | <ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>ぶことが<ruby>多<rt>おお</rt></ruby>いです。<br>*(Học được nhiều từ thất bại ạ.)* |
| Suzuki | リンさん、<ruby>2年目<rt>にねんめ</rt></ruby>もこの<ruby>調子<rt>ちょうし</rt></ruby>で。<br>*(Linh, năm 2 cứ tiếp đà này.)* |
| Linh | はい、<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng, em cố gắng!)* |

## Tình huống 11 — Tiệm sách Mito, chiều thứ Ba — Mua giáo trình 検定 3級

| Vai | Lời thoại |
|---|---|
| Linh | すみません、<ruby>農業技能検定<rt>のうぎょうぎのうけんてい</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby>のテキストはありますか。<br>*(Xin lỗi, có giáo trình nông nghiệp kỹ năng cấp 3 không ạ?)* |
| Nhân viên | はい、<ruby>資格試験<rt>しかくしけん</rt></ruby>コーナーにあります。ご<ruby>案内<rt>あんない</rt></ruby>します。<br>*(Có, ở khu kỳ thi chứng chỉ. Em dẫn đi.)* |
| Linh | <ruby>過去問<rt>かこもん</rt></ruby>もありますか。<br>*(Có cả đề các năm trước không ạ?)* |
| Nhân viên | <ruby>過去<rt>かこ</rt></ruby>3<ruby>年分<rt>ねんぶん</rt></ruby>の<ruby>問題集<rt>もんだいしゅう</rt></ruby>があります。<br>*(Có sách đề 3 năm gần nhất.)* |
| Linh | テキストと<ruby>問題集<rt>もんだいしゅう</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>ください。<br>*(Cho em cả giáo trình và sách đề ạ.)* |
| Nhân viên | <ruby>合計<rt>ごうけい</rt></ruby><ruby>4980円<rt>よんせんきゅうひゃくはちじゅうえん</rt></ruby>です。<br>*(Tổng 4980 yên.)* |
| Linh | カードでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em trả thẻ ạ.)* |

## Tình huống 12 — Phòng riêng ký túc, tối thứ Tư — Gọi video báo gia đình

> Cảnh tiếng Việt — gọi video về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | A lô, có gì vui kể mẹ nghe đi! |
| Linh | Mẹ ơi, con đỗ N4 chính thức rồi, có giấy chứng nhận luôn nè! Con cho mẹ coi (giơ giấy lên màn hình). |
| Mẹ Linh | Trời ơi, đẹp quá! In đẹp quá. Mẹ chụp lại nha. |
| Linh | Đoàn thể thưởng con 「<ruby>5万円<rt>ごまんえん</rt></ruby>」 con sẽ chuyển khoản về cho em đóng học. |
| Bố Linh | Trời con gái mẹ giỏi quá rồi. Cố thêm năm 2 nhe. |
| Linh | Dạ năm 2 con thi 「<ruby>農業技能検定<rt>のうぎょうぎのうけんてい</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby>」, có cả phần thực hành nha. Hôm nay con mua sách rồi. |
| Mẹ Linh | Có vất hông con? |
| Linh | Vất nhưng có 「<ruby>佐織<rt>さおり</rt></ruby>さん」 và 「<ruby>親方<rt>おやかた</rt></ruby>」 giúp. Hôm trước sếp khen con là 「<ruby>一番<rt>いちばん</rt></ruby>の<ruby>実習生<rt>じっしゅうせい</rt></ruby>」 — TTS số một của trang trại. |
| Bố Linh | Vậy là bù đắp được công khó rồi. |
| Linh | Tháng 4 này có em mới từ Indonesia qua, con làm chị sempai cho em ấy. |
| Mẹ Linh | Nhớ chỉ em ấy đàng hoàng nha, như chị Saori chỉ con vậy. |
| Linh | Dạ. Hết hợp đồng 3 năm con về ăn Tết với nhà. Mẹ chờ con nha. |

## Tình huống 13 — Ngoài đồng cà chua, sáng thứ Bảy — Suy nghĩ riêng và bắt đầu năm 2

*Cảnh cuối: Linh ra đồng sớm. Nắng đầu xuân.*

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>早<rt>はや</rt></ruby>いね。<br>*(Linh, sớm ghê.)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さん！<ruby>春<rt>はる</rt></ruby>の<ruby>苗<rt>なえ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>、<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Chị Saori! Em phụ chuẩn bị cây giống mùa xuân.)* |
| Saori | あれ、<ruby>2年目<rt>にねんめ</rt></ruby><ruby>4月<rt>しがつ</rt></ruby>から<ruby>本格的<rt>ほんかくてき</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>季節<rt>きせつ</rt></ruby>だね。<br>*(À, từ tháng 4 năm 2 chính thức mùa mới.)* |
| Linh | はい、アグスくんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cùng Agus cố gắng.)* |
| Saori | <ruby>1年前<rt>いちねんまえ</rt></ruby>のリンちゃん、<ruby>覚<rt>おぼ</rt></ruby>えてる？<br>*(Nhớ Linh của 1 năm trước không?)* |
| Linh | はい、<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>下手<rt>へた</rt></ruby>で、<ruby>毎日<rt>まいにち</rt></ruby><ruby>泣<rt>な</rt></ruby>いてました。<br>*(Vâng, tiếng Nhật yếu, ngày nào cũng khóc.)* |
| Saori | <ruby>今<rt>いま</rt></ruby>はもう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>農業従事者<rt>のうぎょうじゅうじしゃ</rt></ruby>。<br>*(Giờ đã là người nông nghiệp đàng hoàng.)* |
| Linh | <ruby>佐織<rt>さおり</rt></ruby>さんのおかげです。<br>*(Nhờ chị Saori đó ạ.)* |
| Saori | さあ、<ruby>苗<rt>なえ</rt></ruby>を<ruby>植<rt>う</rt></ruby>えよう。<ruby>2年目<rt>にねんめ</rt></ruby>のスタート！<br>*(Nào, trồng cây giống thôi. Khởi đầu năm 2!)* |
| Linh | はい！<br>*(Vâng!)* |

## Đọng lại chương

Các mẫu câu cốt lõi: **〜のおかげで**, **〜ていただいた** (kính ngữ cảm ơn), **〜になるよう頑張ります**, **これ、気持ちです** (trao quà khiêm tốn), **〜の番です** (tới lượt), **〜を受けてほしい** (mong em thi), **無遅刻無欠勤**.

> Từ vựng & mẫu câu chương này: 合格証書・奨励金・口座番号・入金・農業技能検定・3級・学科・実技・特定技能・無遅刻・無欠勤・成績・拍手・気持ち・遠慮・先輩・後輩・報告書・テキスト・過去問・問題集・苗・植える・農業従事者

## Bí quyết chương

- 合格証書 N4 nên lồng khung treo phòng — 親方 thấy sẽ tự hào về TTS của mình.
- 奨励金 5万 cho đỗ N4 là khoản thưởng phổ biến của 監理団体 — không phải đoàn nào cũng có, hỏi kỹ khi sang.
- 親方 thế hệ cũ thường thích お酒 4 hợp địa phương; おばあちゃん thích đồ ngọt vừa phải.
- Đỗ N4 mở đường tới 農業技能検定 3級 (lý thuyết + thực hành) → 特定技能1号 (visa 5 năm) — đó là lộ trình chuẩn.
- Khi đón đàn em mới: dạy bằng câu đơn giản, khuyến khích hỏi "もう一度お願いします", chia sẻ tài liệu N5 cũ.
- 報告書 cuối năm nên viết cả thất bại — đoàn thể đánh giá cao TTS biết phản tỉnh.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 合格証書 | ごうかくしょうしょ | HỢP CÁCH CHỨNG THƯ | giấy chứng nhận đỗ |
| 額縁 | がくぶち | NGẠCH DUYÊN | khung tranh, khung |
| 宝物 | たからもの | BẢO VẬT | bảo vật |
| 無遅刻 | むちこく | VÔ TRÌ KHẮC | không đi muộn |
| 無欠勤 | むけっきん | VÔ KHIẾM CẦN | không nghỉ làm |
| 成績 | せいせき | THÀNH TÍCH | thành tích |
| 支える | ささえる | CHI | hỗ trợ |
| 農業技能検定 | のうぎょうぎのうけんてい | NÔNG NGHIỆP KỸ NĂNG KIỂM ĐỊNH | kỳ thi kỹ năng nông nghiệp |
| 3級 | さんきゅう | TAM CẤP | cấp 3 |
| 学科 | がっか | HỌC KHOA | phần lý thuyết |
| 実技 | じつぎ | THỰC KỸ | phần thực hành |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | Tokutei Ginou (visa kỹ năng) |
| 奨励金 | しょうれいきん | KHUYẾN LỆ KIM | tiền thưởng khuyến khích |
| 振り込み | ふりこみ | CHẤN VÀO | chuyển khoản |
| 口座番号 | こうざばんごう | KHẨU TOẠ PHIÊN HIỆU | số tài khoản |
| 入金 | にゅうきん | NHẬP KIM | vào tài khoản |
| 学費 | がくひ | HỌC PHÍ | học phí |
| 拍手 | はくしゅ | PHÁCH THỦ | vỗ tay |
| 焼肉 | やきにく | THIÊU NHỤC | thịt nướng |
| 銘酒 | めいしゅ | DANH TỬU | rượu danh tiếng |
| 4合瓶 | よんごうびん | TỨ HỢP BÌNH | chai 4 hợp (~720ml) |
| 抹茶 | まっちゃ | MẠT TRÀ | matcha |
| ラッピング | ラッピング | — | gói quà |
| 梅干し | うめぼし | MAI CAN | mơ muối |
| 漬ける | つける | TÝ | muối, ngâm |
| 応援 | おうえん | ỨNG VIỆN | ủng hộ |
| 気持ち | きもち | KHÍ TRÌ | tấm lòng, cảm xúc |
| 遠慮 | えんりょ | VIỄN LỰ | khách sáo, ngại |
| 先輩 | せんぱい | TIÊN BỐI | tiền bối, sempai |
| 後輩 | こうはい | HẬU BỐI | hậu bối, đàn em |
| 報告書 | ほうこくしょ | BÁO CÁO THƯ | báo cáo |
| 失敗 | しっぱい | THẤT BẠI | thất bại |
| 隠す | かくす | ẨN | giấu |
| 学ぶ | まなぶ | HỌC | học hỏi |
| テキスト | テキスト | — | giáo trình |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi các năm trước |
| 問題集 | もんだいしゅう | VẤN ĐỀ TẬP | sách bài tập |
| 苗 | なえ | MIÊU | cây giống |
| 植える | うえる | THỰC | trồng |
| 農業従事者 | のうぎょうじゅうじしゃ | NÔNG NGHIỆP TÒNG SỰ GIẢ | người làm nông nghiệp |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
