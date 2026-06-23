-- Hizashi LITE book SQL — Kaigo Y2
-- curriculum_id = 800000028  (book_seq=28)
-- nguồn: books/28_kaigo_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000028, 'N3', 'markdown_book', 'Điều dưỡng', 'Kaigo Y2', 'Bộ sách Hizashi — Kaigo Y2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000001, 800000028, NULL, 'markdown_book', 'T1. Quyết tâm năm 2 (二年目の決意)', '# Sách thực tập sinh điều dưỡng · T1. Quyết tâm năm 2 (二年目の決意)

> **Mục tiêu nhân vật:** Ngọc (25 tuổi, năm 2 thực tập sinh điều dưỡng tại Hidamari-en). Tháng 4/2027 — đầu năm tài khóa mới. Ngọc đón nhận trách nhiệm lớn hơn khi có kohai mới vào, nghe Yamamoto giao thêm vai trò hướng dẫn, và tự đặt mục tiêu năm 2: đạt N3 + thi 介護技能評価試験. Các tình huống xen kẽ cho thấy Ngọc đã thạo việc sau một năm.

---

## Bối cảnh

Ngày 1 tháng 4 năm 2027. Năm tài khóa mới bắt đầu. Ngọc bước sang năm 2 thực tập tại 「ひだまり苑」. Cùng lúc, kohai mới — Linh (thực tập sinh năm 1 từ Huế) — vào nhận việc. Yamamoto giao thêm trách nhiệm hướng dẫn kohai cho Ngọc. Ngọc quen dần vai trò senpai trong khi vẫn làm tốt các công việc chăm sóc hằng ngày.

---

## Tình huống 1 — Sảnh Hidamari-en · 8:00, buổi họp đầu năm tài khóa

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>新<rt>あたら</rt></ruby>しい<ruby>年度<rt>ねんど</rt></ruby>のスタートです。<ruby>今年度<rt>こんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, năm tài khóa mới bắt đầu rồi. Năm nay cũng mong được hợp tác.)* |
| Toàn thể | よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Mong được hợp tác ạ!)* |
| Yamamoto | <ruby>今年度<rt>こんねんど</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>が<ruby>一名<rt>いちめい</rt></ruby><ruby>入<rt>はい</rt></ruby>ります。グエンさんには<ruby>先輩<rt>せんぱい</rt></ruby>として<ruby>指導<rt>しどう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Năm nay sẽ có thêm một thực tập sinh mới. Tôi muốn nhờ em Nguyễn với vai trò đàn chị hướng dẫn.)* |
| Ngọc | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em sẽ cố gắng hết sức. Mong mọi người hỗ trợ ạ.)* |
| Yamamoto | グエンさんは<ruby>一年間<rt>いちねんかん</rt></ruby>、よく<ruby>頑張<rt>がんば</rt></ruby>ってくれました。<ruby>今年度<rt>こんねんど</rt></ruby>は<ruby>業務<rt>ぎょうむ</rt></ruby>の<ruby>幅<rt>はば</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げてほしいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em Nguyễn đã cố gắng rất tốt suốt một năm. Năm nay tôi muốn em mở rộng thêm phạm vi công việc.)* |
| Ngọc | ありがとうございます。<ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えられるよう、<ruby>努力<rt>どりょく</rt></ruby>します。<br>*(Cảm ơn chị. Em sẽ cố gắng để đáp lại sự kỳ vọng ạ.)* |

---

## Tình huống 2 — Phòng thay đồ · 8:20, gặp kohai mới Linh

| Vai | Lời thoại |
|---|---|
| Linh | あの...グエンさんですか?<ruby>新<rt>あたら</rt></ruby>しく<ruby>入<rt>はい</rt></ruby>ったグエン・ティ・リンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin lỗi... Chị là chị Nguyễn ạ? Em mới vào, tên Nguyễn Thị Linh. Mong chị chỉ bảo ạ.)* |
| Ngọc | リンさん、はじめまして。グエン・ゴックです。<ruby>同<rt>おな</rt></ruby>じベトナム<ruby>人<rt>じん</rt></ruby>ですね。<ruby>緊張<rt>きんちょう</rt></ruby>している?<br>*(Linh à, hân hạnh gặp em. Mình là Nguyễn Ngọc. Cùng người Việt nhỉ. Em có hồi hộp không?)* |
| Linh | はい、<ruby>少<rt>すこ</rt></ruby>し。<ruby>介護<rt>かいご</rt></ruby>の<ruby>用語<rt>ようご</rt></ruby>がまだよくわからなくて...<br>*(Vâng, hơi hồi hộp. Em chưa quen các thuật ngữ điều dưỡng lắm...)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はそうだったよ。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Không sao đâu, mình hồi đầu cũng vậy. Có gì không hiểu cứ hỏi mình nhé.)* |
| Linh | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Cảm ơn chị. Em sẽ cố gắng ạ!)* |
| Ngọc | まず<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をするから、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<br>*(Trước tiên mình sẽ có buổi tự giới thiệu trong họp sáng, đi cùng mình nhé.)* |

---

## Tình huống 3 — Phòng ông Tanaka · 9:00, Ngọc hỗ trợ vệ sinh buổi sáng thành thục

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。グエンです。<ruby>朝<rt>あさ</rt></ruby>の<ruby>支度<rt>したく</rt></ruby>をしましょうか。<br>*(Ông Tanaka, chào buổi sáng. Cháu là Ngọc. Mình chuẩn bị cho ông buổi sáng nhé ạ.)* |
| Ông Tanaka | おお、グエンちゃんか。もう<ruby>二年目<rt>にねんめ</rt></ruby>か。<ruby>早<rt>はや</rt></ruby>いな。<br>*(Ồ, Ngọc đó à. Đã sang năm 2 rồi nhỉ. Nhanh thật.)* |
| Ngọc | はい、<ruby>田中<rt>たなか</rt></ruby>さんにたくさん<ruby>教<rt>おし</rt></ruby>えていただいたおかげです。では、<ruby>洗顔<rt>せんがん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めますね。<ruby>顔<rt>かお</rt></ruby>をふきますよ。<br>*(Vâng, nhờ ông chỉ bảo nhiều ạ. Bắt đầu rửa mặt nhé. Cháu lau mặt cho ông ạ.)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>む。<ruby>右手<rt>みぎて</rt></ruby>が<ruby>動<rt>うご</rt></ruby>きにくいからな。<br>*(Ờ, nhờ cháu. Tay phải tôi khó cử động lắm.)* |
| Ngọc | わかりました。<ruby>左側<rt>ひだりがわ</rt></ruby>は<ruby>ご自分<rt>ごじぶん</rt></ruby>でできますか?<br>*(Cháu hiểu rồi. Bên trái ông tự làm được không ạ?)* |
| Ông Tanaka | 左は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<br>*(Bên trái không sao.)* |
| Ngọc | では、<ruby>左<rt>ひだり</rt></ruby>はお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>右<rt>みぎ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がサポートしますね。<ruby>残存機能<rt>ざんそんきのう</rt></ruby>を<ruby>活<rt>い</rt></ruby>かすのが<ruby>大切<rt>たいせつ</rt></ruby>ですから。<br>*(Vậy bên trái ông làm nhé. Bên phải cháu hỗ trợ. Phát huy chức năng còn lại là điều quan trọng ạ.)* |
| Ông Tanaka | そうだな。ゴックは<ruby>成長<rt>せいちょう</rt></ruby>したな。<br>*(Đúng vậy. Ngọc lớn lên rồi nhỉ.)* |

---

## Tình huống 4 — Hành lang · 9:40, Ngọc hướng dẫn kohai cách声かけ

| Vai | Lời thoại |
|---|---|
| Ngọc | リンさん、<ruby>利用者<rt>りようしゃ</rt></ruby>さんにケアをするとき、<ruby>必<rt>かなら</rt></ruby>ず「<ruby>声<rt>こえ</rt></ruby>かけ」をしてね。<br>*(Linh à, khi chăm sóc cho các cụ, nhất thiết phải "lên tiếng trước" nhé.)* |
| Linh | 「<ruby>声<rt>こえ</rt></ruby>かけ」というのは、どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(「Lên tiếng trước」nghĩa là gì ạ chị?)* |
| Ngọc | ケアを<ruby>始<rt>はじ</rt></ruby>める<ruby>前<rt>まえ</rt></ruby>に、「〜しますよ」と<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すことだよ。<ruby>急<rt>きゅう</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>ったらびっくりさせてしまうから。<br>*(Trước khi bắt đầu chăm sóc, nói "tôi sẽ làm... nhé". Nếu chạm đột ngột thì làm các cụ giật mình.)* |
| Linh | なるほど。じゃあ、どんな<ruby>言葉<rt>ことば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>えばいいですか?<br>*(À ra vậy. Vậy dùng từ nào ạ chị?)* |
| Ngọc | たとえば、「<ruby>体<rt>からだ</rt></ruby>を<ruby>起<rt>お</rt></ruby>こしますね」「<ruby>着替<rt>きが</rt></ruby>えをしますよ」「お<ruby>風呂<rt>ふろ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りましょうか」など。それから、<ruby>終<rt>お</rt></ruby>わったら「<ruby>楽<rt>らく</rt></ruby>になりましたか?」と<ruby>確認<rt>かくにん</rt></ruby>するのも<ruby>大切<rt>たいせつ</rt></ruby>ね。<br>*(Ví dụ "mình ngồi dậy nhé", "mình thay đồ nhé", "mình tắm nhé". Và sau khi xong thì hỏi "Ông/bà thấy dễ chịu hơn chưa?" cũng quan trọng nhé.)* |
| Linh | わかりました。<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Cháu hiểu rồi. Cháu sẽ luyện tập ạ.)* |

---

## Tình huống 5 — Phòng bà Sato · 10:15, xử lý tình huống 認知症

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、おはようございます。グエンです。<ruby>今日<rt>きょう</rt></ruby>もいいお<ruby>天気<rt>てんき</rt></ruby>ですよ。<br>*(Bà Sato, chào buổi sáng. Cháu là Ngọc. Hôm nay trời đẹp lắm ạ.)* |
| Bà Sato | あなた、だれですか?<ruby>娘<rt>むすめ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたい。<br>*(Cháu là ai vậy? Gọi con gái tôi đến đây. Tôi muốn về nhà.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。<ruby>毎日<rt>まいにち</rt></ruby>お<ruby>会<rt>あ</rt></ruby>いしていますよ。<ruby>娘<rt>むすめ</rt></ruby>さんも<ruby>心配<rt>しんぱい</rt></ruby>してくれていますよ。<br>*(Bà Sato, cháu là Ngọc. Ngày nào cháu cũng gặp bà mà. Con gái bà cũng lo cho bà lắm ạ.)* |
| Bà Sato | そう...そうね。でも<ruby>不安<rt>ふあん</rt></ruby>なの。<br>*(Vậy... đúng nhỉ. Nhưng tôi lo lắng quá.)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>私<rt>わたし</rt></ruby>がそばにいますから。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>みませんか?<br>*(Không sao đâu ạ. Cháu ở đây mà. Hôm nay mình cùng uống trà nhé bà?)* |
| Bà Sato | ...そうね。お<ruby>茶<rt>ちゃ</rt></ruby>なら<ruby>飲<rt>の</rt></ruby>んでもいいわ。<br>*(... Ừ nhỉ. Uống trà thì được.)* |
| Ngọc | (tâm trong lòng: 否定せず、感情に寄り添う。<ruby>一年前<rt>いちねんまえ</rt></ruby>に<ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>教<rt>おし</rt></ruby>えてもらったことを<ruby>今<rt>いま</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>でできる。)<br>*(trong lòng: Không phủ nhận, đồng cảm với cảm xúc. Điều chị Yamamoto dạy từ năm ngoái giờ mình tự làm được rồi.)* |

---

## Tình huống 6 — Văn phòng · 10:50, Yamamoto giao thêm nhiệm vụ kiểm tra hồ sơ

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、ちょっといいですか。<ruby>今年度<rt>こんねんど</rt></ruby>から、<ruby>介護記録<rt>かいごきろく</rt></ruby>の<ruby>入力<rt>にゅうりょく</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してもらいます。<br>*(Em Nguyễn, có chút thời gian không. Từ năm nay, mình giao em phụ trách nhập hồ sơ chăm sóc.)* |
| Ngọc | <ruby>介護記録<rt>かいごきろく</rt></ruby>、ですね。<ruby>昨年<rt>さくねん</rt></ruby>は<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>書<rt>か</rt></ruby>いているのを<ruby>見<rt>み</rt></ruby>ていましたが、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>書<rt>か</rt></ruby>くのははじめてです。<br>*(Hồ sơ chăm sóc ạ. Năm ngoái em chỉ xem các đàn anh chị viết, nhưng tự mình viết thì đây là lần đầu ạ.)* |
| Yamamoto | <ruby>基本<rt>きほん</rt></ruby>は「<ruby>客観的事実<rt>きゃっかんてきじじつ</rt></ruby>」を<ruby>書<rt>か</rt></ruby>くことです。<ruby>感想<rt>かんそう</rt></ruby>ではなく、「<ruby>何時<rt>なんじ</rt></ruby>に、どんな<ruby>状態<rt>じょうたい</rt></ruby>だったか」を<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。<br>*(Cơ bản là viết "sự thật khách quan". Không phải cảm nhận, mà viết cụ thể "lúc mấy giờ, tình trạng như thế nào".)* |
| Ngọc | 「<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>元気<rt>げんき</rt></ruby>そうだった」ではなく、「<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>食事<rt>しょくじ</rt></ruby>を<ruby>全量<rt>ぜんりょう</rt></ruby><ruby>摂取<rt>せっしゅ</rt></ruby>した」と<ruby>書<rt>か</rt></ruby>く、ということですね?<br>*(Không phải "ông Tanaka trông có vẻ khỏe" mà viết "ông Tanaka ăn hết phần ăn", đúng không ạ chị?)* |
| Yamamoto | そうです!よく<ruby>理解<rt>りかい</rt></ruby>していますね。では、<ruby>今日<rt>きょう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>記録<rt>きろく</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めてみてください。<br>*(Đúng vậy! Em hiểu tốt nhỉ. Vậy hôm nay bắt đầu với hồ sơ của ông Tanaka nhé.)* |
| Ngọc | はい、やってみます。わからなければ<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Vâng, em thử làm. Có gì không chắc em xin phép hỏi chị nhé.)* |

---

## Tình huống 7 — Phòng ăn · 12:00, Ngọc hỗ trợ ông Kimura ăn trưa

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>昼<rt>ひる</rt></ruby>はさばの<ruby>味噌煮<rt>みそに</rt></ruby>ですよ。<ruby>好<rt>す</rt></ruby>きですよね?<br>*(Ông Kimura, hôm nay bữa trưa có cá thu kho miso đấy ạ. Ông thích món đó đúng không?)* |
| Ông Kimura | おお!さばか。それは<ruby>嬉<rt>うれ</rt></ruby>しいな。<br>*(Ồ! Cá thu à. Tốt quá nhỉ.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>嚥下<rt>えんげ</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しながらサポートしますね。ゆっくりよく<ruby>噛<rt>か</rt></ruby>んでくださいね。<br>*(Hôm nay cháu vừa hỗ trợ vừa theo dõi tình trạng nuốt của ông nhé. Ông nhai kỹ chậm chậm nhé ạ.)* |
| Ông Kimura | わかった。グエンちゃんは<ruby>去年<rt>きょねん</rt></ruby>より<ruby>上手<rt>うま</rt></ruby>くなったな。<br>*(Biết rồi. Ngọc giỏi hơn năm ngoái nhiều đấy nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>木村<rt>きむら</rt></ruby>さんに<ruby>毎日<rt>まいにち</rt></ruby>いろいろ<ruby>教<rt>おし</rt></ruby>えてもらっているおかげです。<br>*(Cảm ơn ông. Nhờ ông ngày nào cũng dạy cho cháu nhiều thứ đấy ạ.)* |
| Ông Kimura | はっはっは。<ruby>私<rt>わたし</rt></ruby>が<ruby>先生<rt>せんせい</rt></ruby>か。<br>*(Haha. Tôi là thầy giáo à.)* |

---

## Tình huống 8 — Bên ngoài hành lang · 14:00, Yamamoto nói về 介護技能評価試験

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今年<rt>ことし</rt></ruby>は<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けることを<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Em Nguyễn, năm nay em có nghĩ đến việc thi 介護技能評価試験 không?)* |
| Ngọc | はい、<ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っています。<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんな<ruby>試験<rt>しけん</rt></ruby>か、<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Vâng, em muốn thi ạ. Chị có thể cho em biết chi tiết hơn về kỳ thi đó không ạ?)* |
| Yamamoto | 実技と<ruby>筆記<rt>ひっき</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>があります。<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>移乗介助<rt>いじょうかいじょ</rt></ruby>や<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>など、<ruby>実際<rt>じっさい</rt></ruby>のケアを<ruby>見<rt>み</rt></ruby>て<ruby>評価<rt>ひょうか</rt></ruby>されます。<br>*(Có cả phần thực hành và phần thi viết. Thực hành sẽ được đánh giá qua các công việc chăm sóc thực tế như hỗ trợ di chuyển, hỗ trợ ăn uống.)* |
| Ngọc | <ruby>移乗介助<rt>いじょうかいじょ</rt></ruby>...ベッドから<ruby>車椅子<rt>くるまいす</rt></ruby>へ<ruby>移<rt>うつ</rt></ruby>る<ruby>介助<rt>かいじょ</rt></ruby>ですね?<br>*(Hỗ trợ di chuyển... là hỗ trợ chuyển từ giường lên xe lăn đúng không ạ?)* |
| Yamamoto | そうです。<ruby>今<rt>いま</rt></ruby>の<ruby>実力<rt>じつりょく</rt></ruby>なら<ruby>十分<rt>じゅうぶん</rt></ruby>チャレンジできます。N3も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>目指<rt>めざ</rt></ruby>してみてください。<br>*(Đúng vậy. Với thực lực hiện tại, em hoàn toàn có thể thử sức. Hãy cùng lúc hướng đến N3 nữa nhé.)* |
| Ngọc | はい。N3と<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng. N3 và 介護技能評価試験, em sẽ cố gắng cả hai ạ!)* |

---

## Tình huống 9 — Phòng vật lý trị liệu · 14:30, quan sát buổi tập 機能訓練

| Vai | Lời thoại |
|---|---|
| Ngọc | すみません、グエンです。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>機能訓練<rt>きのうくんれん</rt></ruby>を<ruby>見学<rt>けんがく</rt></ruby>させていただいてもいいですか?<br>*(Xin lỗi, em là Ngọc. Em có thể xem buổi tập phục hồi chức năng của ông Tanaka không ạ?)* |
| PT Nakamura | どうぞ。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>片麻痺<rt>かたまひ</rt></ruby>があるので、<ruby>残存機能<rt>ざんそんきのう</rt></ruby>を<ruby>活<rt>い</rt></ruby>かしたリハビリをしています。<br>*(Được chứ. Ông Tanaka bị liệt nửa người, nên chúng tôi làm phục hồi chức năng tận dụng các chức năng còn lại.)* |
| Ngọc | <ruby>片麻痺<rt>かたまひ</rt></ruby>というのは、<ruby>体<rt>からだ</rt></ruby>の<ruby>片側<rt>かたがわ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>きにくい<ruby>状態<rt>じょうたい</rt></ruby>ですね。<br>*(片麻痺 là tình trạng một bên cơ thể khó cử động đúng không ạ chị?)* |
| PT Nakamura | そうです。よく<ruby>知<rt>し</rt></ruby>っていますね。<ruby>介護<rt>かいご</rt></ruby>のときは、<ruby>麻痺側<rt>まひがわ</rt></ruby>に<ruby>負担<rt>ふたん</rt></ruby>をかけないように<ruby>注意<rt>ちゅうい</rt></ruby>してください。<br>*(Đúng vậy. Em biết tốt nhỉ. Khi chăm sóc, chú ý không để tạo áp lực lên bên liệt nhé.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>今日<rt>きょう</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>の<ruby>洗顔<rt>せんがん</rt></ruby>でも、<ruby>左側<rt>ひだりがわ</rt></ruby>はご<ruby>自分<rt>じぶん</rt></ruby>でやっていただきました。<br>*(Vâng, cháu hiểu ạ. Buổi sáng hôm nay khi rửa mặt, cháu cũng để ông tự làm bên trái rồi ạ.)* |
| PT Nakamura | いいですね。その<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねが<ruby>大切<rt>たいせつ</rt></ruby>なんです。<br>*(Tốt đấy. Sự tích lũy đó rất quan trọng đấy.)* |

---

## Tình huống 10 — Văn phòng · 15:30, Ngọc nộp hồ sơ chăm sóc đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>今日<rt>きょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>書<rt>か</rt></ruby>きました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしてもいいですか?<br>*(Chị Yamamoto, em đã viết hồ sơ hôm nay của ông Tanaka. Chị có thể xem qua cho em không ạ?)* |
| Yamamoto | (đọc) 「9:00 洗顔介助。<ruby>左上肢<rt>さじょうし</rt></ruby>は<ruby>自力<rt>じりき</rt></ruby>にて<ruby>実施<rt>じっし</rt></ruby>。<ruby>右上肢<rt>みぎじょうし</rt></ruby>は<ruby>全介助<rt>ぜんかいじょ</rt></ruby>。<ruby>表情<rt>ひょうじょう</rt></ruby><ruby>穏<rt>おだ</rt></ruby>やか。」うん、よく<ruby>書<rt>か</rt></ruby>けています。<br>*("9:00 Hỗ trợ rửa mặt. Tay trên trái tự thực hiện. Tay trên phải hỗ trợ hoàn toàn. Nét mặt bình thản." Ừ, viết tốt đấy.)* |
| Ngọc | ありがとうございます。「<ruby>全介助<rt>ぜんかいじょ</rt></ruby>」「<ruby>一部介助<rt>いちぶかいじょ</rt></ruby>」「<ruby>自立<rt>じりつ</rt></ruby>」という<ruby>用語<rt>ようご</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Cảm ơn chị. Em cũng học được cách dùng các thuật ngữ "hỗ trợ hoàn toàn", "hỗ trợ một phần", "tự lập" rồi ạ.)* |
| Yamamoto | <ruby>介護記録<rt>かいごきろく</rt></ruby>は<ruby>チーム<rt>チーム</rt></ruby>で<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>するための<ruby>大切<rt>たいせつ</rt></ruby>なツールです。<ruby>正確<rt>せいかく</rt></ruby>に<ruby>書<rt>か</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Hồ sơ chăm sóc là công cụ quan trọng để cả nhóm chia sẻ thông tin. Em hãy tiếp tục viết chính xác nhé.)* |
| Ngọc | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng ạ.)* |

---

## Tình huống 11 — Sảnh ra về · 16:30, Ngọc đặt mục tiêu năm 2 với mai-san

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>二年目<rt>にねんめ</rt></ruby>おめでとう。<ruby>今年<rt>ことし</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>決<rt>き</rt></ruby>まりましたか?<br>*(Chị chúc mừng Ngọc bước sang năm 2. Năm nay đã định mục tiêu gì chưa?)* |
| Ngọc | はい。N3の<ruby>合格<rt>ごうかく</rt></ruby>と、<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けることです。それから、リンさんをしっかりサポートしたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng. Đạt N3, và thi 介護技能評価試験. Ngoài ra em muốn hỗ trợ Linh thật tốt nữa ạ.)* |
| Mai-san | <ruby>三つ<rt>みっつ</rt></ruby>も!<ruby>欲張<rt>よくば</rt></ruby>りね。でも<ruby>素晴<rt>すば</rt></ruby>らしいですよ。<ruby>私<rt>わたし</rt></ruby>も<ruby>応援<rt>おうえん</rt></ruby>しますね。<br>*(Ba cái luôn à! Tham vọng nhỉ. Nhưng tuyệt lắm đấy. Chị cũng sẽ cổ vũ em nhé.)* |
| Ngọc | ありがとうございます。<ruby>去年<rt>きょねん</rt></ruby>は<ruby>覚<rt>おぼ</rt></ruby>えるだけで<ruby>精一杯<rt>せいいっぱい</rt></ruby>でした。<ruby>今年<rt>ことし</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>から<ruby>動<rt>うご</rt></ruby>ける<ruby>一年<rt>いちねん</rt></ruby>にしたいです。<br>*(Cảm ơn chị. Năm ngoái chỉ học ghi nhớ là đã hết sức rồi. Năm nay em muốn có một năm chủ động hơn ạ.)* |
| Mai-san | いい<ruby>言葉<rt>ことば</rt></ruby>ね。「<ruby>自分<rt>じぶん</rt></ruby>から<ruby>動<rt>うご</rt></ruby>ける」。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Câu hay đấy. "Chủ động hành động". Em cố lên nhé.)* |

---

## Tình huống 12 — Ký túc · 21:30, đồng hương

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế của lao động Việt.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Năm 2 rồi hả Ngọc. Thấy khác gì không? |
| Ngọc | (tiếng Việt) Khác nhiều lắm anh. Hồi năm 1 em chỉ lo không hiểu người ta nói gì. Giờ em còn phải lo hướng dẫn đàn em nữa. |
| Đức | (tiếng Việt) Ừ, trách nhiệm nhiều hơn. Mà lương có tăng không? |
| Ngọc | (tiếng Việt) Có chút. Nhưng quan trọng hơn là năm nay em muốn thi N3 với cái kỳ thi kỹ năng 介護. Mà học thêm ban đêm mệt lắm anh. |
| Đức | (tiếng Việt) Phải chịu khó thôi. Hồi mình năm 2 cũng vậy. Cứ giữ sức khỏe là được, đừng thức quá khuya. |
| Ngọc | (tiếng Việt) Dạ. Em ngủ đây. Chúc anh ngủ ngon. |

---

## Đọng lại chương 1

Năm 2 mở ra với trách nhiệm lớn hơn: Ngọc từ người học thành người hướng dẫn, từ thực hiện theo lệnh thành chủ động đặt mục tiêu. Các mẫu nghiệp vụ nâng cao được luyện tập: **viết hồ sơ chăm sóc khách quan** (客観的事実・全介助・一部介助・自立), **支援 残存機能** (tận dụng chức năng còn lại), **ứng xử 認知症** (không phủ nhận, đồng cảm). Ngọc đặt 3 mục tiêu năm 2: đạt N3, thi 介護技能評価試験, và trở thành senpai tốt cho kohai.

> Từ vựng & mẫu câu chương này: 年度・先輩・指導・残存機能・声かけ・体位変換・片麻痺・機能訓練・介護記録・客観的事実・全介助・一部介助・自立・嚥下・移乗介助・介護技能評価試験・精一杯・期待に応える・目標', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000002, 800000028, NULL, 'markdown_book', 'T2. Bàn giao ca và hồ sơ điều dưỡng (申し送りと介護記録)', '# Sách thực tập sinh điều dưỡng · T2. Bàn giao ca và hồ sơ điều dưỡng (申し送りと介護記録)

> **Mục tiêu nhân vật:** Ngọc vật lộn với tốc độ 申し送り thực tế — nghe không kịp, suýt gây ra nhầm lẫn nghiêm trọng. Yamamoto dạy cách viết 介護記録 đúng chuẩn (khách quan, 5W1H). Đồng thời, Đức — đàn anh đang chịu áp lực nợ phí — bùng nổ khủng hoảng muốn bỏ trốn về Việt Nam. Ngọc và Mai-san thức suốt đêm khuyên Đức.

---

## Bối cảnh

Tháng 6 năm 2027. Ngọc đã trải qua hơn một năm làm việc. Ca trực đêm không còn xa lạ, nhưng buổi 申し送り sáng — nơi nhân viên bàn giao thông tin với tốc độ nói rất nhanh — vẫn là thách thức lớn. Hôm nay xảy ra sự cố hiểu lầm nhỏ nhưng có thể nguy hiểm. Và tối hôm đó, Đức gọi điện cho Ngọc trong trạng thái hoảng loạn.

---

## Tình huống 1 — Phòng họp giao ca · 8:50, 申し送り sáng tốc độ thật

| Vai | Lời thoại |
|---|---|
| Nhân viên ca đêm (Iwata) | はい、<ruby>申し送り<rt>もうしおくり</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>昨夜<rt>さくや</rt></ruby>22<ruby>時<rt>じ</rt></ruby>ごろからやや<ruby>不穏<rt>ふおん</rt></ruby>で、1<ruby>時間<rt>じかん</rt></ruby>ごとに<ruby>目覚<rt>めざ</rt></ruby>めあり。<ruby>体位交換<rt>たいいこうかん</rt></ruby>は0<ruby>時<rt>じ</rt></ruby>、2<ruby>時<rt>じ</rt></ruby>、4<ruby>時<rt>じ</rt></ruby>に<ruby>実施<rt>じっし</rt></ruby>。<ruby>排便<rt>はいべん</rt></ruby>なし。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>夜中<rt>よなか</rt></ruby>2<ruby>回<rt>かい</rt></ruby><ruby>コール<rt>コール</rt></ruby>、<ruby>尿意<rt>にょうい</rt></ruby>の<ruby>訴<rt>うった</rt></ruby>えあり、トイレ<ruby>誘導<rt>ゆうどう</rt></ruby>にて<ruby>対応済<rt>たいおうず</rt></ruby>み。<ruby>木村<rt>きむら</rt></ruby>さんは<ruby>昨日<rt>きのう</rt></ruby>のレントゲンで<ruby>骨折<rt>こっせつ</rt></ruby>なし、<ruby>今日<rt>きょう</rt></ruby>は<ruby>腰部<rt>ようぶ</rt></ruby><ruby>痛<rt>いた</rt></ruby>みあり<ruby>安静<rt>あんせい</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>。<ruby>入浴<rt>にゅうよく</rt></ruby>は<ruby>中止<rt>ちゅうし</rt></ruby>。<br>*(Vâng, bắt đầu bàn giao ca. Ông Tanaka, từ khoảng 22 giờ tối qua hơi bất an, cứ mỗi tiếng lại thức dậy. Đổi tư thế nằm đã thực hiện lúc 0 giờ, 2 giờ, 4 giờ. Không có đại tiện. Bà Sato reo chuông 2 lần trong đêm, than buồn tiểu, đã dẫn vào nhà vệ sinh và xử lý xong. Ông Kimura hôm qua chụp X-quang không gãy xương, hôm nay đau vùng thắt lưng, muốn nghỉ ngơi. Tạm ngưng tắm.)* |
| Ngọc | (cố gắng ghi chép, bút chạy không kịp, mắt nhìn Nakamura) ...えっ、<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>体位交換<rt>たいいこうかん</rt></ruby>が...0<ruby>時<rt>じ</rt></ruby>と...2<ruby>時<rt>じ</rt></ruby>...?<br>*(... ơ, ông Tanaka đổi tư thế nằm lúc... 0 giờ và... 2 giờ...?)* |
| Iwata | (tiếp tục) <ruby>食事<rt>しょくじ</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>があります。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>塩分<rt>えんぶん</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>1<ruby>日<rt>にち</rt></ruby>6グラム<ruby>以下<rt>いか</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>。<ruby>昨日<rt>きのう</rt></ruby><ruby>医師<rt>いし</rt></ruby>から<ruby>指示<rt>しじ</rt></ruby>あり。<br>*(Có thay đổi chế độ ăn uống. Ông Tanaka, từ hôm nay thay đổi sang hạn chế muối dưới 6 gram mỗi ngày. Hôm qua bác sĩ đã ra chỉ thị.)* |
| Ngọc | (mắt nhìn xuống sổ, không kịp ghi đầy đủ) ...は、はい...<br>*(... v-vâng...)* |

---

## Tình huống 2 — Phòng bếp phát đồ ăn · 9:30, suýt gây nhầm lẫn nguy hiểm

| Vai | Lời thoại |
|---|---|
| Ngọc | (cầm khay ăn của ông Tanaka, đọc ghi chú của mình) <ruby>田中<rt>たなか</rt></ruby>さん...「<ruby>塩分制限<rt>えんぶんせいげん</rt></ruby>」...これはいつもの<ruby>食事<rt>しょくじ</rt></ruby>でいいですよね?<br>*(Ông Tanaka... "hạn chế muối"... ông này cứ dùng suất ăn bình thường là được nhỉ?)* |
| Nhân viên bếp (Ito) | え? <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>から「<ruby>減塩食<rt>げんえんしょく</rt></ruby>」に<ruby>変<rt>か</rt></ruby>わったと<ruby>聞<rt>き</rt></ruby>きましたよ。<ruby>申し送り<rt>もうしおくり</rt></ruby>で<ruby>言<rt>い</rt></ruby>っていませんでしたか?<br>*(Hả? Tôi nghe nói ông Tanaka từ hôm nay chuyển sang "suất ăn giảm muối" rồi mà. Bàn giao ca không nói sao?)* |
| Ngọc | えっ...!<ruby>聞<rt>き</rt></ruby>きましたが、よく<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れなくて...(hoảng loạn nhẹ)<br>*(Ơ...! Cháu có nghe nhưng nghe không kịp...)* |
| Nhân viên bếp (Ito) | <ruby>大変<rt>たいへん</rt></ruby>ですよ。<ruby>塩分<rt>えんぶん</rt></ruby>の<ruby>多<rt>おお</rt></ruby>い<ruby>食事<rt>しょくじ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>したら、<ruby>血圧<rt>けつあつ</rt></ruby>に<ruby>影響<rt>えいきょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ることがあります。<ruby>先<rt>まず</rt></ruby>に<ruby>山本<rt>やまもと</rt></ruby>リーダーに<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Nghiêm trọng đấy. Nếu cho ăn thức ăn nhiều muối thì có thể ảnh hưởng đến huyết áp. Trước tiên đến xác nhận với trưởng nhóm Yamamoto nhé.)* |
| Ngọc | は、はい！すみません！(chạy đi tìm Yamamoto)<br>*(V-vâng! Xin lỗi!)* |
| Yamamoto | (sau khi xác nhận) グエンさん、<ruby>申し送り<rt>もうしおくり</rt></ruby>が<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れなかったのですね。<ruby>今日<rt>きょう</rt></ruby>は<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>気<rt>き</rt></ruby>づけたからよかったです。でも、これが<ruby>事故<rt>じこ</rt></ruby>になっていた<ruby>可能性<rt>かのうせい</rt></ruby>もあります。<br>*(Em Nguyễn, em nghe không kịp bàn giao ca đúng không. Hôm nay may phát hiện kịp thì tốt. Nhưng cái này có thể đã thành sự cố rồi.)* |
| Ngọc | はい...申し訳ありませんでした。<ruby>速<rt>はや</rt></ruby>すぎて、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れませんでした。<br>*(Vâng... Cháu thực sự xin lỗi. Nhanh quá, cháu nghe không hết được.)* |
| Yamamoto | <ruby>分<rt>わ</rt></ruby>からなかったときは、その<ruby>場<rt>ば</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>する。これが<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>なルールです。<ruby>恥<rt>は</rt></ruby>ずかしいことじゃないですよ。<br>*(Khi không hiểu thì xác nhận ngay tại chỗ. Đây là quy tắc quan trọng nhất. Không có gì xấu hổ đâu nhé.)* |
| Ngọc | はい。<ruby>次<rt>つぎ</rt></ruby>から、<ruby>分<rt>わ</rt></ruby>からなかったらすぐに「<ruby>確認<rt>かくにん</rt></ruby>させてください」と<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng. Từ lần sau, khi không hiểu cháu sẽ nói ngay "cho cháu xác nhận lại".)* |

---

## Tình huống 3 — Phòng trực · 14:00, Yamamoto dạy viết 介護記録 chuẩn

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>件<rt>けん</rt></ruby>もあるし、<ruby>介護記録<rt>かいごきろく</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>をしっかり<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<br>*(Em Nguyễn, vì chuyện bàn giao ca hôm nay nữa, mình luyện cách viết hồ sơ điều dưỡng kỹ hơn nhé.)* |
| Ngọc | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị chỉ bảo ạ.)* |
| Yamamoto | まず<ruby>大切<rt>たいせつ</rt></ruby>なのは、「<ruby>客観的<rt>きゃっかんてき</rt></ruby>」に<ruby>書<rt>か</rt></ruby>くことです。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>感想<rt>かんそう</rt></ruby>を<ruby>入<rt>い</rt></ruby>れないでください。<br>*(Trước tiên điều quan trọng là viết "khách quan". Đừng đưa cảm nhận của mình vào.)* |
| Ngọc | <ruby>客観的<rt>きゃっかんてき</rt></ruby>...たとえば?<br>*(Khách quan... ví dụ như thế nào ạ?)* |
| Yamamoto | たとえば「<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>は<ruby>気分<rt>きぶん</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>そうだった」は❌です。<ruby>主観的<rt>しゅかんてき</rt></ruby>すぎます。<br>*(Ví dụ "Hôm nay ông Tanaka trông có vẻ khó chịu" là SAI. Quá chủ quan.)* |
| Ngọc | では、どう<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Vậy viết thế nào mới đúng ạ?)* |
| Yamamoto | 「<ruby>田中<rt>たなか</rt></ruby>さんより『<ruby>頭<rt>あたま</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>い』との<ruby>訴<rt>うった</rt></ruby>えあり。<ruby>顔色<rt>かおいろ</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>にて<ruby>様子<rt>ようす</rt></ruby><ruby>観察<rt>かんさつ</rt></ruby>中」こう<ruby>書<rt>か</rt></ruby>きます。<ruby>事実<rt>じじつ</rt></ruby>だけ。<br>*(Viết: "Ông Tanaka nói ''tôi đau đầu''. Sắc mặt không tốt, đang theo dõi tình hình". Như vậy. Chỉ sự thật thôi.)* |
| Ngọc | 「<ruby>訴<rt>うった</rt></ruby>えあり」「<ruby>顔色<rt>かおいろ</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>」...これは<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>ですね。<br>*(Những cụm "nói/than", "sắc mặt không tốt"... Đây là thuật ngữ chuyên môn nhỉ.)* |
| Yamamoto | そうです。<ruby>記録<rt>きろく</rt></ruby>で<ruby>使<rt>つか</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>があります。<ruby>訴<rt>うった</rt></ruby>えあり・<ruby>確認<rt>かくにん</rt></ruby>できず・<ruby>自立<rt>じりつ</rt></ruby>にて・<ruby>一部介助<rt>いちぶかいじょ</rt></ruby>・<ruby>全介助<rt>ぜんかいじょ</rt></ruby>・<ruby>様子観察中<rt>ようすかんさつちゅう</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Đúng. Có những từ dùng trong hồ sơ. "Than/nói", "không xác nhận được", "tự lập", "hỗ trợ một phần", "hỗ trợ hoàn toàn", "đang theo dõi tình hình". Hãy nhớ nhé.)* |
| Ngọc | (ghi chép cẩn thận) <ruby>自立<rt>じりつ</rt></ruby>...一<ruby>部<rt>ぶ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>...全<ruby>介助<rt>かいじょ</rt></ruby>...<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>漢字<rt>かんじ</rt></ruby>ですね。むずかしいです。<br>*(Tự lập... hỗ trợ một phần... hỗ trợ hoàn toàn... Toàn chữ kanji nhỉ. Khó quá.)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、だんだん<ruby>慣<rt>な</rt></ruby>れますよ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>書<rt>か</rt></ruby>いているうちに<ruby>自然<rt>しぜん</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Không sao, dần dần sẽ quen thôi. Cứ viết mỗi ngày sẽ tự nhiên nhớ được.)* |

---

## Tình huống 4 — Phòng trực · 10:00, đọc 介護記録 ca trước và nắm bắt diễn biến

| Vai | Lời thoại |
|---|---|
| Ngọc | (mở hệ thống, lướt qua 介護記録 của ca đêm, lầm bầm) <ruby>田中<rt>たなか</rt></ruby>さん...「<ruby>夜間<rt>やかん</rt></ruby><ruby>不穏<rt>ふおん</rt></ruby>、<ruby>体位交換<rt>たいいこうかん</rt></ruby>3<ruby>回実施<rt>かいじっし</rt></ruby>」...「<ruby>排便なし<rt>はいべんなし</rt></ruby>」...「<ruby>食欲<rt>しょくよく</rt></ruby>やや<ruby>低下<rt>ていか</rt></ruby>、<ruby>朝食<rt>ちょうしょく</rt></ruby>7<ruby>割摂取<rt>わりせっしゅ</rt></ruby>」。(立ち止まって) <ruby>食欲低下<rt>しょくよくていか</rt></ruby>...これは<ruby>要注意<rt>ようちゅうい</rt></ruby>かも。<br>*(Ông Tanaka... "ban đêm bất an, thực hiện đổi tư thế 3 lần"... "không đại tiện"... "Ngon miệng hơi giảm, ăn 70% bữa sáng". (dừng lại) Giảm ngon miệng... cái này cần chú ý.)* |
| Yamamoto | (đi qua, nhìn vào màn hình) グエンさん、気になるところがありますか?<br>*(Em Nguyễn, có chỗ nào đáng chú ý không?)* |
| Ngọc | はい。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>朝食<rt>ちょうしょく</rt></ruby>が7<ruby>割<rt>わり</rt></ruby>でした。<ruby>昨日<rt>きのう</rt></ruby>は<ruby>全量摂取<rt>ぜんりょうせっしゅ</rt></ruby>だったので、<ruby>食欲<rt>しょくよく</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>があったと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Bữa sáng của ông Tanaka chỉ được 70%. Hôm qua ông ăn hết hoàn toàn, nên em nghĩ có sự thay đổi về ngon miệng ạ.)* |
| Yamamoto | <ruby>正確<rt>せいかく</rt></ruby>に<ruby>読<rt>よ</rt></ruby>めていますね。<ruby>前日<rt>ぜんじつ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>と<ruby>比較<rt>ひかく</rt></ruby>するのはとても<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>今日<rt>きょう</rt></ruby>の<ruby>昼食<rt>ちゅうしょく</rt></ruby>も<ruby>注意<rt>ちゅうい</rt></ruby>して<ruby>見<rt>み</rt></ruby>てください。<br>*(Em đọc chính xác đấy. Việc so sánh với hồ sơ ngày trước rất quan trọng. Bữa trưa hôm nay cũng theo dõi cẩn thận nhé.)* |
| Ngọc | <ruby>食欲低下<rt>しょくよくていか</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>く<ruby>場合<rt>ばあい</rt></ruby>は、<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Nếu tình trạng giảm ngon miệng tiếp tục, có cần báo y tá không ạ?)* |
| Yamamoto | そうです。<ruby>食欲低下<rt>しょくよくていか</rt></ruby>が2<ruby>日<rt>にち</rt></ruby>以上<ruby>続<rt>つづ</rt></ruby>く<ruby>場合<rt>ばあい</rt></ruby>、または<ruby>体温<rt>たいおん</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>も<ruby>重<rt>かさ</rt></ruby>なる<ruby>場合<rt>ばあい</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>してください。<ruby>小さな<rt>ちいさな</rt></ruby><ruby>変化<rt>へんか</rt></ruby>の<ruby>積み重ね<rt>つみかさね</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Đúng. Nếu giảm ngon miệng kéo dài 2 ngày trở lên, hoặc kết hợp cả thay đổi nhiệt độ cơ thể, nhất định phải báo. Sự tích lũy của những thay đổi nhỏ rất quan trọng.)* |

---

## Tình huống 5 — Phòng ông Tanaka · 11:30, ghi chú 微熱・食欲低下 vào 記録

| Vai | Lời thoại |
|---|---|
| Ngọc | (đo nhiệt độ cho ông Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>体温<rt>たいおん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>らせていただきます。(đọc kết quả) 37.4<ruby>度<rt>ど</rt></ruby>ですね。<ruby>昨日<rt>きのう</rt></ruby>は36.8<ruby>度<rt>ど</rt></ruby>でした。<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>めです。<br>*(Ông Tanaka, cho con đo nhiệt độ ạ. 37.4 độ. Hôm qua là 36.8 độ. Hơi cao một chút.)* |
| Ông Tanaka | そうか...なんか<ruby>体<rt>からだ</rt></ruby>がだるいな。<br>*(Vậy à... Sao thấy người mệt nhỉ.)* |
| Ngọc | (ghi chép ngay) <ruby>田中<rt>たなか</rt></ruby>さん、「<ruby>体<rt>からだ</rt></ruby>がだるい」とおっしゃっていました。<ruby>今日<rt>きょう</rt></ruby>の<ruby>昼食<rt>ちゅうしょく</rt></ruby>も6<ruby>割<rt>わり</rt></ruby>でした。<ruby>記録<rt>きろく</rt></ruby>に...「<ruby>微熱<rt>びねつ</rt></ruby>37.4<ruby>度<rt>ど</rt></ruby>、<ruby>倦怠感<rt>けんたいかん</rt></ruby>の<ruby>訴<rt>うった</rt></ruby>えあり、<ruby>食欲<rt>しょくよく</rt></ruby>2<ruby>食<rt>しょく</rt></ruby><ruby>連続<rt>れんぞく</rt></ruby><ruby>低下<rt>ていか</rt></ruby>、<ruby>様子観察中<rt>ようすかんさつちゅう</rt></ruby>」と...。<br>*(Ông Tanaka nói "người mỏi mỏi". Bữa trưa hôm nay cũng chỉ 60%. Vào hồ sơ... "Sốt nhẹ 37.4 độ, có than mệt mỏi, ngon miệng giảm 2 bữa liên tiếp, đang theo dõi"...)* |
| Yamamoto | (nhìn qua vai Ngọc) いいですね。「<ruby>訴<rt>うった</rt></ruby>えあり」「<ruby>様子観察中<rt>ようすかんさつちゅう</rt></ruby>」— <ruby>専門用語<rt>せんもんようご</rt></ruby>がちゃんと<ruby>使<rt>つか</rt></ruby>えています。でも「<ruby>倦怠感<rt>けんたいかん</rt></ruby>」はどうして<ruby>分<rt>わ</rt></ruby>かりましたか?<br>*(Tốt đấy. "Có than", "đang theo dõi" — thuật ngữ chuyên môn dùng đúng rồi. Nhưng "mệt mỏi" em biết từ đâu?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんが「<ruby>体<rt>からだ</rt></ruby>がだるい」とおっしゃいました。それが<ruby>倦怠感<rt>けんたいかん</rt></ruby>ですよね?<br>*(Ông Tanaka nói "người mỏi mỏi". Đó là mệt mỏi đúng không ạ?)* |
| Yamamoto | <ruby>正解<rt>せいかい</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>言葉<rt>ことば</rt></ruby>を<ruby>引用<rt>いんよう</rt></ruby>して「〜との<ruby>訴<rt>うった</rt></ruby>えあり」と<ruby>書<rt>か</rt></ruby>くのがベストですよ。<ruby>客観性<rt>きゃっかんせい</rt></ruby>が<ruby>保<rt>たも</rt></ruby>たれます。<br>*(Chính xác. Trích dẫn lời của người được chăm sóc và viết "có than rằng ~" là tốt nhất. Giữ được tính khách quan.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>看護師<rt>かんごし</rt></ruby>さんにも<ruby>報告<rt>ほうこく</rt></ruby>したほうがいいですか?<br>*(Em hiểu rồi. Có nên báo y tá luôn không ạ?)* |
| Yamamoto | はい、<ruby>今<rt>いま</rt></ruby>すぐ<ruby>行<rt>い</rt></ruby>ってください。<ruby>微熱<rt>びねつ</rt></ruby>と<ruby>食欲低下<rt>しょくよくていか</rt></ruby>が<ruby>重なった<rt>かさなった</rt></ruby><ruby>場合<rt>ばあい</rt></ruby>は、すぐ<ruby>連絡<rt>れんらく</rt></ruby>です。<br>*(Vâng, đi ngay bây giờ đi. Khi sốt nhẹ và giảm ngon miệng cùng lúc thì phải liên lạc ngay.)* |

---

## Tình huống 6 — Phòng trực · 13:00, hỏi lại 看護師 về mục trong 申し送り

| Vai | Lời thoại |
|---|---|
| Ngọc | (đến gặp y tá) すみません、<ruby>看護師<rt>かんごし</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>今朝<rt>けさ</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>で「<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>血圧<rt>けつあつ</rt></ruby>は<ruby>要観察<rt>ようかんさつ</rt></ruby>」とありましたが、これは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどのくらいの<ruby>数値<rt>すうち</rt></ruby>から<ruby>報告<rt>ほうこく</rt></ruby>すればいいですか?<br>*(Xin lỗi, y tá Suzuki ơi, buổi bàn giao ca sáng nay có ghi "huyết áp ông Tanaka cần theo dõi", nhưng cụ thể từ chỉ số bao nhiêu thì phải báo ạ?)* |
| Y tá (Suzuki) | あ、グエンさん、ちゃんと<ruby>確認<rt>かくにん</rt></ruby>してくれてありがとう。<ruby>上<rt>うえ</rt></ruby>が140以上、または<ruby>下<rt>した</rt></ruby>が90以上になったらすぐ<ruby>報告<rt>ほうこく</rt></ruby>してください。<ruby>収縮期<rt>しゅうしゅくき</rt></ruby>と<ruby>拡張期<rt>かくちょうき</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(À, em Nguyễn, cảm ơn em đã hỏi xác nhận nhé. Số trên từ 140 trở lên, hoặc số dưới từ 90 trở lên thì báo ngay. Áp tâm thu và áp tâm trương, em biết không?)* |
| Ngọc | はい、<ruby>収縮期血圧<rt>しゅうしゅくきけつあつ</rt></ruby>が「<ruby>上<rt>うえ</rt></ruby>」で、<ruby>拡張期<rt>かくちょうき</rt></ruby>が「<ruby>下<rt>した</rt></ruby>」ですね。<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, áp tâm thu là "số trên", tâm trương là "số dưới" ạ. Em nhớ rồi.)* |
| Y tá (Suzuki) | <ruby>今日<rt>きょう</rt></ruby>の<ruby>昼<rt>ひる</rt></ruby>の<ruby>測定<rt>そくてい</rt></ruby>は?<br>*(Lần đo buổi trưa hôm nay ra sao?)* |
| Ngọc | 128の76でした。<ruby>問題<rt>もんだい</rt></ruby>ない<ruby>範囲<rt>はんい</rt></ruby>ですね。でも<ruby>微熱<rt>びねつ</rt></ruby>と<ruby>食欲低下<rt>しょくよくていか</rt></ruby>があったので、ご<ruby>報告<rt>ほうこく</rt></ruby>しに<ruby>来<rt>き</rt></ruby>ました。<br>*(128/76 ạ. Trong phạm vi bình thường. Nhưng vì có sốt nhẹ và giảm ngon miệng nên con đến báo ạ.)* |
| Y tá (Suzuki) | よく<ruby>気<rt>き</rt></ruby>がついてくれました。<ruby>午後<rt>ごご</rt></ruby>も<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>発熱<rt>はつねつ</rt></ruby>が38<ruby>度<rt>ど</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えたらすぐ<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Em để ý tốt lắm. Buổi chiều tiếp tục theo dõi nhé. Nếu sốt vượt 38 độ thì gọi tôi ngay.)* |
| Ngọc | はい、<ruby>了解<rt>りょうかい</rt></ruby>しました。ありがとうございます。(ghi thêm vào sổ) 「Ns確認済み・午後様子観察」...<br>*(Vâng, em hiểu rồi ạ. Cảm ơn chị. "Đã xác nhận với điều dưỡng, theo dõi buổi chiều"...)* |

---

## Tình huống 7 — Phòng trực · 16:30, dùng viết tắt chuẩn trong 記録

| Vai | Lời thoại |
|---|---|
| Ngọc | (ngồi viết 記録, lầm bầm) 「<ruby>排泄<rt>はいせつ</rt></ruby>は...Ptが<ruby>自立<rt>じりつ</rt></ruby>にてトイレへ<ruby>誘導<rt>ゆうどう</rt></ruby>、<ruby>排尿<rt>はいにょう</rt></ruby>あり、<ruby>排便<rt>はいべん</rt></ruby>なし」...「<ruby>昼食<rt>ちゅうしょく</rt></ruby>はNs<ruby>確認済<rt>かくにんす</rt></ruby>み」...あれ、「Ns」って<ruby>何<rt>なん</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>ですか?<br>*(Bài tiết là... bệnh nhân tự đến toilet, có tiểu, không đại tiện"... "bữa trưa y tá đã xác nhận"... Ủa, "Ns" là viết tắt của gì vậy?)* |
| Nakamura | (đi qua) グエンさん、「Ns」は「<ruby>ナース<rt>ナース</rt></ruby>」、つまり<ruby>看護師<rt>かんごし</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>ですよ。よく<ruby>記録<rt>きろく</rt></ruby>で<ruby>使<rt>つか</rt></ruby>います。<br>*(Em Nguyễn, "Ns" là viết tắt của "Nurse", tức là y tá đó. Thường dùng trong hồ sơ lắm.)* |
| Ngọc | あ、そうなんですね！「Pt」は「Patient」で<ruby>利用者<rt>りようしゃ</rt></ruby>さん、「Ns」は<ruby>看護師<rt>かんごし</rt></ruby>さんですね。他にもよく<ruby>使<rt>つか</rt></ruby>う<ruby>略語<rt>りゃくご</rt></ruby>はありますか?<br>*(À, vậy ạ! "Pt" là "Patient" tức là người dùng dịch vụ, "Ns" là y tá. Còn viết tắt thường dùng nào khác không ạ?)* |
| Nakamura | そうですね。「Dr」は<ruby>医師<rt>いし</rt></ruby>、「St」は<ruby>サービス提供責任者<rt>サービスていきょうせきにんしゃ</rt></ruby>、「Ot」は<ruby>作業療法士<rt>さぎょうりょうほうし</rt></ruby>です。あとは「<ruby>全介助<rt>ぜんかいじょ</rt></ruby>→全介」「<ruby>一部介助<rt>いちぶかいじょ</rt></ruby>→一部介」のように<ruby>短縮<rt>たんしゅく</rt></ruby>することもあります。<br>*(Để xem. "Dr" là bác sĩ, "St" là người chịu trách nhiệm cung cấp dịch vụ, "Ot" là chuyên viên trị liệu nghề nghiệp. Ngoài ra còn rút gọn như "hỗ trợ hoàn toàn→全介", "hỗ trợ một phần→一部介".)* |
| Ngọc | 施設によって<ruby>略語<rt>りゃくご</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うこともありますか?<br>*(Có khi viết tắt khác nhau tùy cơ sở không ạ?)* |
| Nakamura | あります。だから<ruby>転職<rt>てんしょく</rt></ruby>したときは<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>するのがいいですよ。<ruby>施設<rt>しせつ</rt></ruby>ごとの「<ruby>記録マニュアル<rt>きろくマニュアル</rt></ruby>」を<ruby>読<rt>よ</rt></ruby>んでください。<br>*(Có đó. Nên khi chuyển việc, đầu tiên phải xác nhận nhé. Hãy đọc "hướng dẫn viết hồ sơ" của từng cơ sở.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。(hồ sơ dần hoàn chỉnh hơn) 「<ruby>体温<rt>たいおん</rt></ruby>37.4<ruby>度<rt>ど</rt></ruby>、<ruby>倦怠感<rt>けんたいかん</rt></ruby>の<ruby>訴<rt>うった</rt></ruby>えあり、Ns<ruby>報告<rt>ほうこく</rt></ruby>済み、<ruby>午後<rt>ごご</rt></ruby>も<ruby>継続<rt>けいぞく</rt></ruby><ruby>様子観察中<rt>ようすかんさつちゅう</rt></ruby>」...<ruby>完成<rt>かんせい</rt></ruby>。<br>*(Vâng, em hiểu rồi. "Nhiệt độ 37.4 độ, có than mệt mỏi, đã báo y tá, buổi chiều tiếp tục theo dõi"... Xong rồi.)* |

---

## Tình huống 9 — Phòng trực · 15:30, Ngọc luyện viết kanji điều dưỡng

| Vai | Lời thoại |
|---|---|
| Ngọc | (ngồi tập viết, lầm bầm) 「<ruby>褥瘡<rt>じょくそう</rt></ruby>」...「<ruby>蠕動運動<rt>ぜんどううんどう</rt></ruby>」...「<ruby>嚥下<rt>えんげ</rt></ruby>」...なんでこんなに<ruby>難<rt>むずか</rt></ruby>しい<ruby>漢字<rt>かんじ</rt></ruby>ばかりなんですか...<br>*(Loét tì đè... co bóp ruột... nuốt... Sao toàn chữ Hán khó thế này...)* |
| Nakamura | (đi qua, nhìn vào) グエンさん、<ruby>真面目<rt>まじめ</rt></ruby>ですね。<ruby>何<rt>なに</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>していますか?<br>*(Em Nguyễn, chăm chỉ nhỉ. Em đang luyện gì vậy?)* |
| Ngọc | 介護の<ruby>記録<rt>きろく</rt></ruby>で<ruby>使<rt>つか</rt></ruby>う<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しています。「<ruby>嚥下<rt>えんげ</rt></ruby>」が<ruby>特<rt>とく</rt></ruby>に<ruby>書<rt>か</rt></ruby>けなくて...<br>*(Cháu đang luyện chữ Hán dùng trong hồ sơ điều dưỡng. Đặc biệt chữ "nuốt" cháu cứ viết sai...)* |
| Nakamura | 「<ruby>嚥下<rt>えんげ</rt></ruby>」はこう<ruby>書<rt>か</rt></ruby>きます。(viết ra) <ruby>口<rt>くち</rt></ruby>の<ruby>部首<rt>ぶしゅ</rt></ruby>がポイントですよ。<br>*(Chữ "nuốt" viết thế này. — Bộ khẩu là điểm mấu chốt đó.)* |
| Ngọc | あっ、ありがとうございます。「<ruby>口<rt>くち</rt></ruby>」が<ruby>入<rt>はい</rt></ruby>っているのは<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>む<ruby>動作<rt>どうさ</rt></ruby>だから...なるほど。<br>*(À, cảm ơn chị ạ. Có bộ "khẩu" là vì đây là động tác nuốt vào... Ra vậy.)* |
| Nakamura | そうやって<ruby>意味<rt>いみ</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつけると<ruby>覚<rt>おぼ</rt></ruby>えやすいですよ。<ruby>介護<rt>かいご</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>のことが<ruby>多<rt>おお</rt></ruby>いから、<ruby>人体<rt>じんたい</rt></ruby>の<ruby>部首<rt>ぶしゅ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>楽<rt>らく</rt></ruby>ですよ。<br>*(Liên kết với ý nghĩa như vậy thì dễ nhớ hơn. Chữ Hán điều dưỡng nhiều chữ liên quan đến cơ thể, nên nhớ các bộ thủ bộ phận cơ thể thì dễ hơn.)* |
| Ngọc | そうですね！「<ruby>排泄<rt>はいせつ</rt></ruby>」も「<ruby>水<rt>みず</rt></ruby>」の<ruby>部首<rt>ぶしゅ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っています。<ruby>体液<rt>たいえき</rt></ruby>だから...<br>*(Đúng nhỉ! Chữ "bài tiết" cũng có bộ "thủy". Vì là dịch cơ thể...)* |
| Nakamura | <ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>み<ruby>早<rt>はや</rt></ruby>い！グエンさんは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>が<ruby>好<rt>す</rt></ruby>きですね。<br>*(Em hiểu nhanh thật! Em Nguyễn thực sự thích học nhỉ.)* |
| Ngọc | N3の<ruby>試験<rt>しけん</rt></ruby>もありますし、<ruby>記録<rt>きろく</rt></ruby>も<ruby>正確<rt>せいかく</rt></ruby>に<ruby>書<rt>か</rt></ruby>きたいですし。<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>書<rt>か</rt></ruby>けないと、<ruby>記録<rt>きろく</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>くなります。<br>*(Vì còn có thi N3 nữa, và cháu muốn viết hồ sơ chính xác nữa. Nếu không viết được chữ Hán thì viết hồ sơ sẽ chậm.)* |

---

## Tình huống 10 — Phòng bàn giao ca · 17:00, luyện nghe 申し送り lại với Yamamoto

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>件<rt>けん</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りましょう。どこが<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れませんでしたか?<br>*(Em Nguyễn, mình ôn lại chuyện bàn giao ca hôm nay nhé. Em nghe không kịp phần nào?)* |
| Ngọc | <ruby>食事<rt>しょくじ</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>のところです。<ruby>田中<rt>たなか</rt></ruby>さんの「<ruby>減塩食<rt>げんえんしょく</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>が<ruby>聞<rt>き</rt></ruby>こえましたが、それが「<ruby>今日<rt>きょう</rt></ruby>から」なのかどうかが<ruby>分<rt>わ</rt></ruby>からなかったです。<br>*(Phần thay đổi chế độ ăn. Cháu nghe được từ "giảm muối" của ông Tanaka, nhưng không hiểu được "từ hôm nay" hay chưa.)* |
| Yamamoto | そうですね。<ruby>申し送り<rt>もうしおくり</rt></ruby>は<ruby>速<rt>はや</rt></ruby>いですから、<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れないことはあります。でも「<ruby>変更<rt>へんこう</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いたら、すぐにチェックが<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đúng. Bàn giao ca nói nhanh nên có lúc nghe không kịp. Nhưng khi nghe thấy từ "thay đổi", phải kiểm tra ngay.)* |
| Ngọc | 「<ruby>変更<rt>へんこう</rt></ruby>」というキーワードを<ruby>聞<rt>き</rt></ruby>いたら、すぐ「すみません、<ruby>確認<rt>かくにん</rt></ruby>させてください」と<ruby>言<rt>い</rt></ruby>えばよかったですね。<br>*(Khi nghe từ khóa "thay đổi", cháu nên nói ngay "Xin lỗi, cho cháu xác nhận lại".)* |
| Yamamoto | そうです！<ruby>大事<rt>だいじ</rt></ruby>な<ruby>変更<rt>へんこう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>き<ruby>逃<rt>のが</rt></ruby>したら、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>影響<rt>えいきょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<ruby>分<rt>わ</rt></ruby>からないとき、すぐ<ruby>聞<rt>き</rt></ruby>く<ruby>勇気<rt>ゆうき</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đúng vậy! Nếu bỏ lỡ thay đổi quan trọng thì sẽ ảnh hưởng đến người sử dụng dịch vụ. Cần có dũng cảm hỏi ngay khi không hiểu.)* |
| Ngọc | 「<ruby>分<rt>わ</rt></ruby>からないときに<ruby>聞<rt>き</rt></ruby>く<ruby>勇気<rt>ゆうき</rt></ruby>」...はい、<ruby>心<rt>こころ</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(Dũng cảm hỏi khi không hiểu... Vâng, cháu khắc ghi vào lòng.)* |
| Yamamoto | それと、<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>後<rt>あと</rt></ruby>は、<ruby>必<rt>かなら</rt></ruby>ず<ruby>申し送りノート<rt>もうしおくりノート</rt></ruby>と<ruby>介護記録<rt>かいごきろく</rt></ruby>システムを<ruby>照<rt>て</rt></ruby>らし<ruby>合<rt>あ</rt></ruby>わせてください。<ruby>両方<rt>りょうほう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>することが<ruby>ミス<rt>ミス</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぎます。<br>*(Ngoài ra, sau khi bàn giao ca, nhất định phải đối chiếu sổ bàn giao và hệ thống hồ sơ điều dưỡng. Xác nhận cả hai sẽ ngăn được sai lầm.)* |
| Ngọc | <ruby>二重確認<rt>にじゅうかくにん</rt></ruby>ですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Xác nhận hai lần nhỉ. Cháu hiểu rồi ạ.)* |

---

## Tình huống 11 — Ký túc xá · 22:00, Đức điện thoại trong trạng thái hoảng loạn

> Scene tiếng Việt — cao trào mặt tối tuyến nhân vật Đức.

| Vai | Lời thoại |
|---|---|
| Đức | (gọi điện, giọng run) Ngọc... tao cần gặp mày ngay. Tao đang ở ngoài cổng ký túc. |
| Ngọc | Anh Đức? Sao giọng anh vậy? Anh ổn không? |
| Đức | Không ổn. Tao cần nói chuyện. |
| Ngọc | (chạy xuống, thấy Đức ngồi trên bậc thềm, đầu cúi xuống) Anh Đức, chuyện gì vậy? |
| Đức | Tao muốn về Việt Nam. Tao không làm được nữa rồi. |
| Ngọc | (ngồi cạnh) Anh... từ từ nói đi. Chuyện gì xảy ra? |
| Đức | Tháng này tao nhận lương, trừ thuế, trừ tiền nhà, trừ phí môi giới tao còn chưa trả hết, còn lại không đủ gửi về cho mẹ. Mà mẹ tao đang chờ tiền đóng học phí cho em. Tao đã hứa. |
| Ngọc | Anh nợ phí vẫn còn nhiều không? |
| Đức | (cười đắng) Tao vay 150 triệu trước khi sang. Đã trả được 90 rồi nhưng còn 60 triệu. Lãi cộng hàng tháng. Mà mày biết không, ở đây ngày nào cũng phải mỉm cười, phải nói ありがとうございます, phải chăm mấy ông cụ bà cụ... tao không còn sức nữa. |
| Ngọc | Em hiểu anh. Nhưng nếu anh bỏ trốn về thì sao? |
| Đức | (im lặng) |
| Ngọc | Anh bỏ hợp đồng là vi phạm. Về đến Việt Nam thì nợ vẫn còn nguyên mà không có việc làm để trả. Gia đình anh còn khó hơn. Mà anh còn bị đưa vào danh sách cấm trở lại Nhật. |
| Đức | Tao biết. Tao biết hết. Nhưng tao mệt quá Ngọc ơi. |

---

## Tình huống 12 — Trước cổng ký túc · 22:30, Mai-san đến và khuyên Đức

> Scene tiếng Việt — tiếp nối cao trào, Đức quyết định ở lại.

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhắn tin cho Mai-san, sau đó Mai-san đến) Chị Mai, anh Đức đang rất khó khăn. |
| Mai-san | (ngồi xuống cạnh Đức, giọng nhẹ nhàng bằng tiếng Việt) Anh Đức. Chị là Mai-san, cố vấn ở đây. Ngọc gọi chị đến vì chị từng ở trong hoàn cảnh giống anh. |
| Đức | Chị cũng từng muốn bỏ về hả? |
| Mai-san | Chị là người lai, nhưng hồi mới đi làm chị cũng từng thấy mình không thuộc về đâu. Không phải người Việt đủ "Việt", không phải người Nhật đủ "Nhật". Chị hiểu cảm giác cô đơn đó. |
| Đức | Thế chị làm gì? |
| Mai-san | Chị nhờ người. Giống Ngọc đang làm với anh tối nay. Anh Đức, anh còn bao lâu nữa thì hết hợp đồng TTS? |
| Đức | Còn 8 tháng. |
| Mai-san | 8 tháng. Nếu anh cầm được 8 tháng, anh thi 特定技能, lương tăng, điều kiện sống tốt hơn. Chị có thể giúp anh làm đơn xin hỗ trợ tâm lý từ phía cơ sở — đây là quyền của anh, không phải xin xỏ. |
| Đức | Có hỗ trợ như vậy thật không? |
| Mai-san | Có. Và chị cũng sẽ nói với bộ phận kế toán xem có thể điều chỉnh lịch trả phí không. Không phải xóa nợ, nhưng có thể giãn ra. |
| Ngọc | Anh Đức, em không thể nói anh cứ ở lại nếu anh thực sự không kham được. Nhưng em biết anh là người chịu được nhiều hơn anh nghĩ. Anh đã trả được 90 triệu rồi đó. Còn 60 triệu nữa thôi. |
| Đức | (thở dài, nhìn lên bầu trời) ...Tao sợ. |
| Ngọc | Em biết. Em cũng sợ. Nhưng mình sợ rồi vẫn đi tiếp mà anh. |
| Đức | (sau một lúc im lặng) Chị Mai... chị giúp tao làm đơn hỗ trợ đó được không? |
| Mai-san | Được. Ngày mai mình ngồi làm cùng nhau. Tối nay anh ngủ đi. Không quyết định gì khi đang mệt. |
| Đức | (gật đầu, giọng yếu nhưng ổn định hơn) ...Ừ. Cảm ơn hai đứa. |
| Ngọc | (sau khi Đức vào trong) Chị Mai... cảm ơn chị. |
| Mai-san | (nhẹ nhàng) Em đã làm đúng rồi. Gọi cho chị, không để anh ấy một mình. Đó là điều quan trọng nhất. Nghề điều dưỡng dạy mình điều đó mà — không để ai một mình trong lúc khó nhất. |

---

## Đọng lại chương 7

Chương này có hai bài học song hành: bài học nghiệp vụ và bài học con người. Về nghiệp vụ, Ngọc học được quy trình đọc 介護記録 ca trước — so sánh với hôm qua để phát hiện thay đổi nhỏ (食欲低下・微熱). Khi ghi chú tình trạng mới, trích dẫn trực tiếp lời 利用者 rồi thêm "訴えあり" để giữ tính khách quan. Khi có mục trong 申し送り chưa rõ, chủ động hỏi lại 看護師 ngay thay vì đoán mò. Học thêm hệ thống viết tắt chuẩn (Ns・Pt・Dr・全介・一部介). **申し送り** tốc độ thật đòi hỏi dũng cảm hỏi lại ngay khi nghe từ khóa "変更". **介護記録** phải viết khách quan theo 5W1H, dùng thuật ngữ chuẩn. Kanji điều dưỡng học theo bộ thủ dễ nhớ hơn. Về con người — Đức bùng vỡ khủng hoảng áp lực nợ phí và kiệt sức, quyết định ở lại nhờ sự đồng hành của Ngọc và Mai-san. Đây là cao trào của tuyến mặt tối, sau đây Đức dần ổn định hơn.

> Từ vựng & mẫu câu chương này: 申し送り・介護記録・客観的・主観的・5W1H・訴えあり・顔色不良・様子観察中・自立・一部介助・全介助・減塩食・塩分制限・嚥下・確認させてください・変更・二重確認・微熱・食欲低下・倦怠感・体位交換・食欲低下・Ns・Pt・Dr・略語・収縮期血圧・拡張期・様子観察', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000003, 800000028, NULL, 'markdown_book', 'T3. Phối hợp đa ngành (多職種連携)', '# Sách thực tập sinh điều dưỡng · T3. Phối hợp đa ngành (多職種連携)

> **Mục tiêu nhân vật:** Ngọc (25 tuổi, năm 2 thực tập sinh điều dưỡng tại Hidamari-en). Tháng 6/2027 — Ngọc học cách làm việc cùng y tá (看護師), quản lý kế hoạch chăm sóc (ケアマネジャー), và nhà vật lý trị liệu (機能訓練指導員/PT). Dự họp ca (カンファレンス), học cách báo cáo đúng, hiểu ケアプラン, và vai trò của từng chuyên môn trong việc chăm sóc toàn diện.

---

## Bối cảnh

Tháng 6 năm 2027. Hidamari-en tổ chức カンファレンス định kỳ về tình trạng một số 利用者. Yamamoto mời Ngọc tham dự lần đầu với tư cách quan sát viên. Xuyên suốt ngày hôm đó, Ngọc gặp gỡ và trao đổi trực tiếp với y tá Ishikawa, ケアマネジャー Shibata, và PT Nakamura — học cách mỗi chuyên môn nhìn nhận 利用者 từ góc độ khác nhau và cách phối hợp với nhau.

---

## Tình huống 1 — Phòng y tế · 9:00, Ngọc báo cáo tình trạng 利用者 cho y tá

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>石川<rt>いしかわ</rt></ruby>さん、おはようございます。グエンです。<ruby>田中<rt>たなか</rt></ruby>さんのことをご<ruby>報告<rt>ほうこく</rt></ruby>したいのですが、よろしいですか?<br>*(Chị Ishikawa, chào buổi sáng. Cháu là Ngọc. Cháu muốn báo cáo về ông Tanaka, chị có rảnh không ạ?)* |
| Y tá Ishikawa | はい、どうぞ。<br>*(Vâng, em nói đi.)* |
| Ngọc | <ruby>今朝<rt>けさ</rt></ruby>8<ruby>時<rt>じ</rt></ruby>の<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>のとき、<ruby>田中<rt>たなか</rt></ruby>さんがいつもより<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なかったです。<ruby>朝食<rt>ちょうしょく</rt></ruby>を<ruby>半分<rt>はんぶん</rt></ruby>しか<ruby>食<rt>た</rt></ruby>べませんでした。<br>*(Hồi 8 giờ sáng khi hỗ trợ bữa ăn, ông Tanaka ăn ít hơn thường ngày. Ông chỉ ăn được nửa phần bữa sáng ạ.)* |
| Y tá Ishikawa | むせはありましたか?<br>*(Có bị sặc không?)* |
| Ngọc | むせはありませんでした。<ruby>表情<rt>ひょうじょう</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていましたが、「<ruby>体<rt>からだ</rt></ruby>が<ruby>重<rt>おも</rt></ruby>い」とおっしゃっていました。<br>*(Không sặc ạ. Nét mặt bình thản, nhưng ông nói "người nặng" ạ.)* |
| Y tá Ishikawa | わかりました。<ruby>熱<rt>ねつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ってみますね。グエンさん、よく<ruby>気<rt>き</rt></ruby>づいてくれましたね。<ruby>些細<rt>ささい</rt></ruby>な<ruby>変化<rt>へんか</rt></ruby>も<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Được rồi. Chị đo nhiệt độ cho ông xem. Em Nguyễn nhận ra tốt đấy. Bất kỳ thay đổi nhỏ nào cũng nhất định báo cáo nhé.)* |
| Ngọc | はい。<ruby>報告<rt>ほうこく</rt></ruby>するときは「いつ・どこで・どんな<ruby>状態<rt>じょうたい</rt></ruby>だったか」を<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えるようにしています。<br>*(Vâng. Khi báo cáo em cố nói cụ thể "lúc nào, ở đâu, tình trạng như thế nào" ạ.)* |
| Y tá Ishikawa | すばらしい。その<ruby>習慣<rt>しゅうかん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Tốt lắm. Em giữ thói quen đó nhé.)* |

---

## Tình huống 2 — Phòng họp · 10:00, trước カンファレンス, Yamamoto giải thích

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>はカンファレンスに<ruby>参加<rt>さんか</rt></ruby>してもらいます。<ruby>初<rt>はじ</rt></ruby>めてですよね?<br>*(Em Nguyễn, hôm nay em tham dự カンファレンス nhé. Đây là lần đầu đúng không?)* |
| Ngọc | はい。カンファレンスというのは、どんな<ruby>場<rt>ば</rt></ruby>ですか?<br>*(Vâng. カンファレンス là buổi họp như thế nào ạ?)* |
| Yamamoto | <ruby>介護士<rt>かいごし</rt></ruby>・<ruby>看護師<rt>かんごし</rt></ruby>・ケアマネジャー・PTなど、いろんな<ruby>専門職<rt>せんもんしょく</rt></ruby>が<ruby>集<rt>あつ</rt></ruby>まって、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>状態<rt>じょうたい</rt></ruby>や<ruby>ケアプラン<rt>ケアプラン</rt></ruby>を<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>う<ruby>場<rt>ば</rt></ruby>です。<br>*(Là nơi các chuyên ngành như điều dưỡng viên, y tá, quản lý kế hoạch chăm sóc, PT... tập hợp lại bàn về tình trạng và kế hoạch chăm sóc của từng người.)* |
| Ngọc | ケアプランというのは?<br>*(ケアプラン là gì ạ?)* |
| Yamamoto | <ruby>利用者<rt>りようしゃ</rt></ruby>さんそれぞれの「<ruby>介護<rt>かいご</rt></ruby>の<ruby>計画書<rt>けいかくしょ</rt></ruby>」です。ケアマネジャーが<ruby>作<rt>つく</rt></ruby>ります。「<ruby>何<rt>なに</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にして、どんなサービスを<ruby>提供<rt>ていきょう</rt></ruby>するか」を<ruby>書<rt>か</rt></ruby>いたものです。<br>*(Là "bản kế hoạch chăm sóc" riêng cho từng người. ケアマネジャー lập ra. Ghi rõ "mục tiêu là gì, cung cấp dịch vụ như thế nào".)* |
| Ngọc | なるほど。<ruby>今日<rt>きょう</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>だけですか?<br>*(À ra vậy. Hôm nay em chỉ quan sát thôi ạ?)* |
| Yamamoto | 基本は<ruby>見学<rt>けんがく</rt></ruby>ですが、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>日常<rt>にちじょう</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>について<ruby>聞<rt>き</rt></ruby>かれることがあるので、<ruby>答<rt>こた</rt></ruby>えられるように<ruby>準備<rt>じゅんび</rt></ruby>しておいてください。<br>*(Cơ bản là quan sát, nhưng có thể sẽ được hỏi về tình trạng hàng ngày của ông Tanaka, nên em chuẩn bị sẵn để trả lời nhé.)* |

---

## Tình huống 3 — Phòng họp · 10:15, カンファレンス bắt đầu

| Vai | Lời thoại |
|---|---|
| Shibata | では<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>田中<rt>たなか</rt></ruby>さんのケアプランを<ruby>見直<rt>みなお</rt></ruby>します。<ruby>看護師<rt>かんごし</rt></ruby>から<ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bắt đầu nhé. Hôm nay chúng ta xem lại kế hoạch chăm sóc của ông Tanaka. Mời y tá báo cáo.)* |
| Y tá Ishikawa | <ruby>今朝<rt>けさ</rt></ruby>、<ruby>食欲<rt>しょくよく</rt></ruby>の<ruby>低下<rt>ていか</rt></ruby>と「<ruby>体<rt>からだ</rt></ruby>が<ruby>重<rt>おも</rt></ruby>い」という<ruby>訴<rt>うった</rt></ruby>えがありました。<ruby>体温<rt>たいおん</rt></ruby>は<ruby>37度<rt>さんじゅうなな</rt></ruby>。<ruby>経過<rt>けいか</rt></ruby><ruby>観察<rt>かんさつ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Sáng nay có biểu hiện giảm cảm giác ngon miệng và kêu "người nặng nề". Nhiệt độ 37 độ. Cần theo dõi tiếp.)* |
| Shibata | グエンさん、<ruby>介護<rt>かいご</rt></ruby>の<ruby>面<rt>めん</rt></ruby>から、<ruby>最近<rt>さいきん</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんはいかがですか?<br>*(Em Nguyễn, nhìn từ phía điều dưỡng, tình trạng gần đây của ông Tanaka thế nào?)* |
| Ngọc | はい。<ruby>今週<rt>こんしゅう</rt></ruby>は<ruby>トイレ介助<rt>かいじょ</rt></ruby>の<ruby>回数<rt>かいすう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なかったです。<ruby>水分<rt>すいぶん</rt></ruby><ruby>摂取量<rt>せっしゅりょう</rt></ruby>も<ruby>昨週<rt>せんしゅう</rt></ruby>より<ruby>減<rt>へ</rt></ruby>っています。<ruby>表情<rt>ひょうじょう</rt></ruby>は<ruby>穏<rt>おだ</rt></ruby>やかですが、<ruby>活気<rt>かっき</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>い<ruby>印象<rt>いんしょう</rt></ruby>です。<br>*(Vâng. Tuần này số lần hỗ trợ đi vệ sinh ít hơn. Lượng nước uống cũng giảm so với tuần trước. Nét mặt bình thản nhưng trông ít sức sống hơn một chút ạ.)* |
| Shibata | よく<ruby>観察<rt>かんさつ</rt></ruby>していますね。<ruby>脱水<rt>だっすい</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>がありますね。<ruby>看護師<rt>かんごし</rt></ruby>と<ruby>連携<rt>れんけい</rt></ruby>して<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>しましょう。<br>*(Em quan sát tốt đấy. Có thể có nguy cơ mất nước. Hãy phối hợp với y tá tăng cường bổ sung nước nhé.)* |

---

## Tình huống 4 — Phòng họp · 10:40, PT Nakamura trình bày và Ngọc hỏi

| Vai | Lời thoại |
|---|---|
| PT Nakamura | <ruby>機能訓練<rt>きのうくんれん</rt></ruby>の<ruby>面<rt>めん</rt></ruby>からですが、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>上肢<rt>じょうし</rt></ruby>の<ruby>可動域<rt>かどういき</rt></ruby>が<ruby>先月<rt>せんげつ</rt></ruby>より<ruby>改善<rt>かいぜん</rt></ruby>しています。<ruby>立位保持<rt>りつい​ほじ</rt></ruby>は<ruby>10秒<rt>じゅうびょう</rt></ruby>から<ruby>15秒<rt>じゅうごびょう</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びました。<br>*(Từ góc nhìn phục hồi chức năng, tầm vận động chi trên của ông Tanaka đã cải thiện so với tháng trước. Thời gian duy trì tư thế đứng tăng từ 10 giây lên 15 giây.)* |
| Ngọc | すみません、「<ruby>可動域<rt>かどういき</rt></ruby>」とはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Xin lỗi, "tầm vận động" nghĩa là gì ạ?)* |
| PT Nakamura | <ruby>関節<rt>かんせつ</rt></ruby>がどれだけ<ruby>動<rt>うご</rt></ruby>かせるかの<ruby>範囲<rt>はんい</rt></ruby>のことです。たとえば<ruby>腕<rt>うで</rt></ruby>がどこまで<ruby>上<rt>あ</rt></ruby>がるか、ですね。<br>*(Là phạm vi một khớp có thể vận động được đến đâu. Ví dụ như tay có thể giơ lên được bao cao.)* |
| Ngọc | ありがとうございます。介護の<ruby>現場<rt>げんば</rt></ruby>でこの<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>活<rt>い</rt></ruby>かすには、どう<ruby>考<rt>かんが</rt></ruby>えればいいですか?<br>*(Cảm ơn chị. Để áp dụng thông tin này vào thực tế điều dưỡng, em nên suy nghĩ như thế nào ạ?)* |
| PT Nakamura | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>右上肢<rt>みぎじょうし</rt></ruby>が<ruby>改善<rt>かいぜん</rt></ruby>しているので、<ruby>洗顔<rt>せんがん</rt></ruby>や<ruby>歯磨<rt>はみが</rt></ruby>きのとき、<ruby>少<rt>すこ</rt></ruby>し<ruby>自分<rt>じぶん</rt></ruby>で<ruby>やってもらえる<rt>やってもらえる</rt></ruby>かもしれません。まず<ruby>試<rt>こころ</rt></ruby>みてみてください。<br>*(Vì tay trên phải của ông đã cải thiện, khi rửa mặt hay đánh răng, có thể để ông tự làm thêm một chút. Em thử xem nhé.)* |
| Ngọc | はい、<ruby>明日<rt>あした</rt></ruby>から<ruby>試<rt>こころ</rt></ruby>みます。<br>*(Vâng, từ ngày mai em sẽ thử ạ.)* |

---

## Tình huống 5 — Phòng họp · 11:00, ケアマネジャー Shibata giải thích ケアプラン

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>柴田<rt>しばた</rt></ruby>さん、ケアプランについて<ruby>教<rt>おし</rt></ruby>えていただけますか?<ruby>介護士<rt>かいごし</rt></ruby>はケアプランをどう<ruby>使<rt>つか</rt></ruby>えばいいですか?<br>*(Chị Shibata, chị có thể giải thích về ケアプラン không ạ? Điều dưỡng viên nên dùng ケアプラン như thế nào ạ?)* |
| Shibata | いい<ruby>質問<rt>しつもん</rt></ruby>です。ケアプランは<ruby>利用者<rt>りようしゃ</rt></ruby>さんの「<ruby>目標<rt>もくひょう</rt></ruby>」と「それに<ruby>向<rt>む</rt></ruby>けたサービス」を<ruby>書<rt>か</rt></ruby>いたものです。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>自分<rt>じぶん</rt></ruby>でできることを<ruby>増<rt>ふ</rt></ruby>やす」です。<br>*(Câu hỏi tốt đấy. ケアプラン ghi rõ "mục tiêu" của người dùng dịch vụ và "dịch vụ hướng đến mục tiêu đó". Mục tiêu của ông Tanaka là "tăng thêm những việc có thể tự làm".)* |
| Ngọc | つまり、<ruby>介護士<rt>かいごし</rt></ruby>としては「<ruby>全部<rt>ぜんぶ</rt></ruby>やってあげる」のではなく、「できることはやっていただく」ことが<ruby>大切<rt>たいせつ</rt></ruby>、ということですね?<br>*(Tức là với vai trò điều dưỡng viên, không phải "làm hết mọi thứ thay" mà "để người ta tự làm những gì có thể", đúng không ạ?)* |
| Shibata | まさにそうです!<ruby>自立支援<rt>じりつしえん</rt></ruby>の<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。グエンさんはよく<ruby>理解<rt>りかい</rt></ruby>していますね。<br>*(Chính xác! Đó là tư tưởng hỗ trợ tự lập. Em Nguyễn hiểu rất tốt đấy.)* |
| Ngọc | ありがとうございます。ケアプランを<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>に<ruby>結<rt>むす</rt></ruby>びつけて<ruby>考<rt>かんが</rt></ruby>えるようにします。<br>*(Cảm ơn chị. Em sẽ cố kết nối ケアプラン với công việc hàng ngày ạ.)* |

---

## Tình huống 6 — Hành lang · 11:30, y tá giải thích cách phân biệt vai trò

| Vai | Lời thoại |
|---|---|
| Y tá Ishikawa | グエンさん、カンファレンスはどうでしたか?<br>*(Em Nguyễn, カンファレンス thấy thế nào?)* |
| Ngọc | とても<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<ruby>看護師<rt>かんごし</rt></ruby>と<ruby>介護士<rt>かいごし</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いが、<ruby>少<rt>すこ</rt></ruby>しわかってきました。<br>*(Em học được rất nhiều. Em bắt đầu hiểu được phần nào sự khác biệt giữa y tá và điều dưỡng viên ạ.)* |
| Y tá Ishikawa | どんな<ruby>違<rt>ちが</rt></ruby>いだと<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Em nghĩ sự khác biệt là gì?)* |
| Ngọc | <ruby>看護師<rt>かんごし</rt></ruby>は<ruby>医療<rt>いりょう</rt></ruby>の<ruby>視点<rt>してん</rt></ruby>から<ruby>体<rt>からだ</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>判断<rt>はんだん</rt></ruby>して、<ruby>介護士<rt>かいごし</rt></ruby>は<ruby>日常生活<rt>にちじょうせいかつ</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>える...そんなイメージでしょうか。<br>*(Y tá đánh giá tình trạng cơ thể từ góc độ y tế, điều dưỡng viên hỗ trợ cuộc sống hàng ngày... là cảm giác như vậy ạ?)* |
| Y tá Ishikawa | その<ruby>通<rt>とお</rt></ruby>りです。でも<ruby>連携<rt>れんけい</rt></ruby>がなければ、よいケアはできません。グエンさんが<ruby>今朝<rt>けさ</rt></ruby>くれた<ruby>報告<rt>ほうこく</rt></ruby>がなければ、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>変化<rt>へんか</rt></ruby>に<ruby>気<rt>き</rt></ruby>づくのが<ruby>遅<rt>おそ</rt></ruby>れていたかもしれません。<br>*(Đúng vậy. Nhưng nếu không phối hợp, sẽ không thể chăm sóc tốt. Nếu không có báo cáo của em sáng nay, có thể chúng tôi đã phát hiện sự thay đổi của ông Tanaka muộn hơn.)* |
| Ngọc | そう<ruby>言<rt>い</rt></ruby>っていただけると、<ruby>介護士<rt>かいごし</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>だとあらためて<ruby>感<rt>かん</rt></ruby>じます。<br>*(Được nghe như vậy, em lại càng cảm nhận được sự quan trọng của công việc điều dưỡng viên ạ.)* |

---

## Tình huống 7 — Phòng ông Tanaka · 14:00, thực hành cách báo cáo đến y tá

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>昼<rt>ひる</rt></ruby>はどうでしたか?<ruby>食欲<rt>しょくよく</rt></ruby>はありますか?<br>*(Ông Tanaka, bữa trưa hôm nay thế nào ạ? Ông có ngon miệng không?)* |
| Ông Tanaka | まあまあだな。<ruby>味噌汁<rt>みそしる</rt></ruby>は<ruby>飲<rt>の</rt></ruby>んだが、ご<ruby>飯<rt>はん</rt></ruby>は<ruby>半分<rt>はんぶん</rt></ruby>でいいや。<br>*(Tạm thôi. Uống miso rồi, nhưng cơm nửa bát thôi.)* |
| Ngọc | そうですか。お<ruby>茶<rt>ちゃ</rt></ruby>をもう<ruby>一杯<rt>いっぱい</rt></ruby>いかがですか?<ruby>今日<rt>きょう</rt></ruby>は<ruby>水分<rt>すいぶん</rt></ruby>をしっかり<ruby>摂<rt>と</rt></ruby>ってほしいので。<br>*(Vậy ạ. Ông dùng thêm một ly trà nhé? Hôm nay mình muốn ông uống đủ nước ạ.)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>む。<br>*(Ờ, nhờ cháu.)* |
| Ngọc | (sau đó đến phòng y tế, gặp y tá Ishikawa) <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>昼食<rt>ちゅうしょく</rt></ruby>について<ruby>報告<rt>ほうこく</rt></ruby>します。12<ruby>時<rt>じ</rt></ruby>の<ruby>昼食<rt>ちゅうしょく</rt></ruby>、<ruby>味噌汁<rt>みそしる</rt></ruby>は<ruby>全量<rt>ぜんりょう</rt></ruby>、ご<ruby>飯<rt>はん</rt></ruby>は<ruby>半量<rt>はんりょう</rt></ruby>の<ruby>摂取<rt>せっしゅ</rt></ruby>でした。その<ruby>後<rt>ご</rt></ruby>、お<ruby>茶<rt>ちゃ</rt></ruby>一杯を<ruby>追加<rt>ついか</rt></ruby>しました。<br>*(Chị Ishikawa, em báo cáo về bữa trưa của ông Tanaka. Bữa trưa 12 giờ, miso uống hết, cơm ăn nửa phần. Sau đó thêm một ly trà ạ.)* |
| Y tá Ishikawa | ありがとう。<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>を<ruby>促<rt>うなが</rt></ruby>してくれてよかったです。<ruby>今後<rt>こんご</rt></ruby>も<ruby>毎食後<rt>まいしょくご</rt></ruby>お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>めてもらえますか?<br>*(Cảm ơn. Tốt là em đã khuyến khích ông uống thêm. Sau này sau mỗi bữa ăn em nhắc ông uống trà nhé?)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>記録<rt>きろく</rt></ruby>にも<ruby>残<rt>のこ</rt></ruby>しておきます。<br>*(Vâng, em hiểu rồi. Em cũng ghi vào hồ sơ luôn ạ.)* |

---

## Tình huống 8 — Phòng vật lý trị liệu · 14:30, PT chỉ cách hỗ trợ di chuyển sau cải thiện

| Vai | Lời thoại |
|---|---|
| PT Nakamura | グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>移乗<rt>いじょう</rt></ruby>について、<ruby>新<rt>あたら</rt></ruby>しい<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>試<rt>こころ</rt></ruby>みてもいいか、<ruby>確認<rt>かくにん</rt></ruby>したいのですが。<br>*(Em Nguyễn, về việc hỗ trợ di chuyển của ông Tanaka, chị muốn xác nhận có thể thử phương pháp mới không.)* |
| Ngọc | はい、どんな<ruby>方法<rt>ほうほう</rt></ruby>ですか?<br>*(Vâng, phương pháp như thế nào ạ?)* |
| PT Nakamura | <ruby>右上肢<rt>みぎじょうし</rt></ruby>が<ruby>改善<rt>かいぜん</rt></ruby>しているので、ベッドから<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>るとき、<ruby>右腕<rt>みぎうで</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>し<ruby>支<rt>ささ</rt></ruby>えてもらいます。<ruby>健側<rt>けんそく</rt></ruby>を<ruby>活<rt>い</rt></ruby>かすやり<ruby>方<rt>かた</rt></ruby>です。<br>*(Vì tay phải đã cải thiện, khi chuyển từ giường lên xe lăn, nhờ ông đỡ nhẹ bằng tay phải. Là cách tận dụng bên lành.)* |
| Ngọc | 「<ruby>健側<rt>けんそく</rt></ruby>」というのは?<br>*(「bên lành」là gì ạ?)* |
| PT Nakamura | <ruby>麻痺<rt>まひ</rt></ruby>していない<ruby>側<rt>がわ</rt></ruby>のことです。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>場合<rt>ばあい</rt></ruby>は<ruby>左側<rt>ひだりがわ</rt></ruby>。でも<ruby>右側<rt>みぎがわ</rt></ruby>も<ruby>回復<rt>かいふく</rt></ruby>してきているので、<ruby>少<rt>すこ</rt></ruby>し<ruby>使<rt>つか</rt></ruby>ってもらうんです。<br>*(Là bên không bị liệt. Với ông Tanaka là bên trái. Nhưng bên phải cũng đang hồi phục nên để ông dùng thêm một chút.)* |
| Ngọc | わかりました。<ruby>今後<rt>こんご</rt></ruby>の移乗は、まず<ruby>田中<rt>たなか</rt></ruby>さんに「<ruby>右手<rt>みぎて</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってみますか?」と<ruby>声<rt>こえ</rt></ruby>かけします。<br>*(Em hiểu rồi. Từ nay khi hỗ trợ di chuyển, đầu tiên em hỏi ông "ông thử dùng tay phải nhé?" ạ.)* |
| PT Nakamura | その<ruby>声<rt>こえ</rt></ruby>かけ、ばっちりです。<br>*(Câu lên tiếng đó chuẩn đấy.)* |

---

## Tình huống 9 — Phòng nghỉ · 15:00, Ngọc và Yamamoto tổng kết カンファレンス

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>のカンファレンス、どうでしたか?<br>*(Em Nguyễn, カンファレンス hôm nay thế nào?)* |
| Ngọc | とても<ruby>刺激<rt>しげき</rt></ruby>になりました。<ruby>看護師<rt>かんごし</rt></ruby>・PT・ケアマネさんが、それぞれ<ruby>違<rt>ちが</rt></ruby>う<ruby>視点<rt>してん</rt></ruby>で<ruby>利用者<rt>りようしゃ</rt></ruby>さんを<ruby>見<rt>み</rt></ruby>ているのがよくわかりました。<br>*(Em thấy rất được khích lệ. Em hiểu rõ y tá, PT, ケアマネ mỗi người nhìn người dùng dịch vụ từ góc độ khác nhau ạ.)* |
| Yamamoto | 介護士の<ruby>強<rt>つよ</rt></ruby>みはなんだと<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Em nghĩ thế mạnh của điều dưỡng viên là gì?)* |
| Ngọc | <ruby>毎日<rt>まいにち</rt></ruby>いちばん<ruby>長<rt>なが</rt></ruby>い<ruby>時間<rt>じかん</rt></ruby>、<ruby>利用者<rt>りようしゃ</rt></ruby>さんのそばにいることです。だから<ruby>些細<rt>ささい</rt></ruby>な<ruby>変化<rt>へんか</rt></ruby>に<ruby>一番<rt>いちばん</rt></ruby><ruby>気<rt>き</rt></ruby>づきやすい。その<ruby>情報<rt>じょうほう</rt></ruby>をしっかり<ruby>伝<rt>つた</rt></ruby>えることが<ruby>介護士<rt>かいごし</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>役割<rt>やくわり</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Là người ở bên người dùng dịch vụ lâu nhất mỗi ngày. Nên dễ nhận ra những thay đổi nhỏ nhất. Em nghĩ truyền đạt thông tin đó chắc chắn là vai trò quan trọng của điều dưỡng viên ạ.)* |
| Yamamoto | 素晴らしい。その<ruby>通<rt>とお</rt></ruby>りです。グエンさん、<ruby>成長<rt>せいちょう</rt></ruby>しましたね。<br>*(Tuyệt vời. Đúng vậy đấy. Em Nguyễn lớn lên nhiều rồi nhỉ.)* |

---

## Tình huống 10 — Bên giường bà Sato · 15:30, phối hợp với y tá về tình trạng 認知症

| Vai | Lời thoại |
|---|---|
| Y tá Ishikawa | グエンさん、<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>今日<rt>きょう</rt></ruby>の<ruby>昼<rt>ひる</rt></ruby>から<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>きがないそうですね。<ruby>様子<rt>ようす</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Em Nguyễn, nghe nói bà Sato từ trưa hôm nay không yên được. Mình đến xem tình trạng cùng nhé.)* |
| Ngọc | はい。<ruby>今日<rt>きょう</rt></ruby>の<ruby>午前中<rt>ごぜんちゅう</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていました。<ruby>昼食後<rt>ちゅうしょくご</rt></ruby>から、「<ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたい」とおっしゃっていました。<br>*(Vâng. Buổi sáng bà vẫn bình thản. Sau bữa trưa bà nói muốn về nhà ạ.)* |
| Y tá Ishikawa | (bên giường bà Sato) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>石川<rt>いしかわ</rt></ruby>です。<ruby>体<rt>からだ</rt></ruby>はどうですか?<br>*(Bà Sato, tôi là Ishikawa. Bà thấy trong người thế nào?)* |
| Bà Sato | なんだか<ruby>胸<rt>むね</rt></ruby>がもやもやして...<ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>らなきゃ。<br>*(Tôi thấy bực bực trong ngực... Tôi phải về nhà thôi.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>外<rt>そと</rt></ruby>のお<ruby>天気<rt>てんき</rt></ruby>がよくて<ruby>気持<rt>きもち</rt></ruby>ちいいですよ。お<ruby>部屋<rt>へや</rt></ruby>の<ruby>窓<rt>まど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けましょうか?<br>*(Bà Sato, hôm nay ngoài trời đẹp và dễ chịu lắm. Mình mở cửa sổ phòng nhé bà?)* |
| Bà Sato | (...しばらくして) そうね...いい<ruby>風<rt>かぜ</rt></ruby>ね。<br>*(... sau một lúc) Ừ nhỉ... Gió dễ chịu nhỉ.)* |
| Y tá Ishikawa | (nói nhỏ với Ngọc) グエンさん、うまい対応でしたね。<ruby>否定<rt>ひてい</rt></ruby>しないで<ruby>気分転換<rt>きぶんてんかん</rt></ruby>を<ruby>促<rt>うなが</rt></ruby>す、これが<ruby>認知症<rt>にんちしょう</rt></ruby>ケアの<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Em Nguyễn, em xử lý khéo đấy. Không phủ nhận mà tạo điều kiện thay đổi tâm trạng — đó là cơ bản của chăm sóc 認知症.)* |

---

## Tình huống 11 — Văn phòng · 16:00, ghi nhận vào hồ sơ sau カンファレンス

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、カンファレンスで<ruby>決<rt>き</rt></ruby>まったことを<ruby>介護記録<rt>かいごきろく</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>させたいのですが、どこに<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Chị Yamamoto, em muốn phản ánh những điều đã quyết định trong カンファレンス vào hồ sơ chăm sóc, em ghi vào đâu ạ?)* |
| Yamamoto | 「<ruby>申し送<rt>もうしおく</rt></ruby>り」の<ruby>欄<rt>らん</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてください。「カンファレンスにて<ruby>確認<rt>かくにん</rt></ruby>:〜」と<ruby>書<rt>か</rt></ruby>くといいです。<br>*(Ghi vào ô "bàn giao thông tin" nhé. Viết "Đã xác nhận trong カンファレンス: ..." là được.)* |
| Ngọc | わかりました。「<ruby>田中<rt>たなか</rt></ruby>さん:<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>する。<ruby>毎食後<rt>まいしょくご</rt></ruby>お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>める。<ruby>移乗時<rt>いじょうじ</rt></ruby>は<ruby>右手<rt>みぎて</rt></ruby>の<ruby>使用<rt>しよう</rt></ruby>を<ruby>試<rt>こころ</rt></ruby>みる」と<ruby>書<rt>か</rt></ruby>きます。<br>*(Em hiểu rồi. Em sẽ viết "ông Tanaka: tăng cường bổ sung nước. Sau mỗi bữa nhắc uống trà. Khi di chuyển thử dùng tay phải" ạ.)* |
| Yamamoto | 完璧です。この「<ruby>申し送<rt>もうしおく</rt></ruby>り」があれば、<ruby>夜勤<rt>やきん</rt></ruby>のスタッフも<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>げます。<br>*(Hoàn hảo. Với "bàn giao thông tin" này, nhân viên ca đêm cũng tiếp nhận được thông tin rồi.)* |
| Ngọc | なるほど。<ruby>申し送<rt>もうしおく</rt></ruby>りはチームをつなぐ<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>ですね。<br>*(À ra vậy. Bàn giao thông tin là công việc quan trọng kết nối cả nhóm nhỉ.)* |

---

## Tình huống 12 — Ký túc · 22:00, đồng hương

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế của lao động Việt.

| Vai | Lời thoại |
|---|---|
| Hương | Ngọc ơi, hôm nay họp gì mà về muộn vậy? |
| Ngọc | Hôm nay mình dự カンファレンス lần đầu. Họp với y tá, PT, ケアマネ bàn về tình trạng các cụ. |
| Hương | Sao? Hiểu hết không? |
| Ngọc | Hiểu được khoảng 80% thôi. Còn mấy từ chuyên môn phải hỏi lại sau. Nhưng thấy rõ hơn vai trò của mình. Điều dưỡng mình gần các cụ nhất, nên báo cáo tốt là đóng góp quan trọng nhất mình làm được. |
| Hương | Nghĩ sâu vậy. Mình làm bên nhà hàng chỉ lo bưng bê, không có họp hành gì. |
| Ngọc | Mỗi nghề một kiểu mà. Thôi ngủ đi, mai mình sớm ca. |

---

## Đọng lại chương 3

Ngọc bước vào thế giới **多職種連携** — học cách mỗi chuyên môn đóng góp khác nhau vào chăm sóc toàn diện. Mẫu báo cáo chuẩn **いつ・どこで・どんな状態** được thực hành thực tế với y tá. Ngọc hiểu rõ **ケアプラン** và **自立支援** — không làm thay mà hỗ trợ người làm được. Ghi **申し送り** chuẩn xác để kết nối thông tin liên ca. Ứng xử **認知症** bằng cách chuyển hướng tâm trạng thay vì phủ nhận được y tá ghi nhận. **カンファレンス** trở thành nơi tiếng nói của điều dưỡng viên có giá trị thực sự.

> Từ vựng & mẫu câu chương này: 多職種連携・看護師・ケアマネジャー・機能訓練指導員・カンファレンス・ケアプラン・自立支援・残存機能・健側・麻痺側・可動域・脱水・水分摂取量・移乗介助・全量・半量・申し送り・介護記録・客観的事実・いつ・どこで・どんな状態', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000004, 800000028, NULL, 'markdown_book', 'T4. Gia đình người được chăm (利用者の家族)', '# Sách thực tập sinh điều dưỡng · T4. Gia đình người được chăm (利用者の家族)

> **Mục tiêu nhân vật:** Ngọc (25 tuổi) đối mặt lần đầu với phàn nàn của gia đình 利用者 (クレーム対応). Học cách xin lỗi đúng cách (謝罪), giải thích tình trạng minh bạch (状態報告), và giao tiếp chuyên nghiệp với gia đình người được chăm sóc (家族対応).

---

## Bối cảnh

Tháng 9 năm 2027. Ngọc đã làm việc tại「ひだまり苑」được hơn một năm rưỡi, tiếng Nhật giao tiếp đã tốt hơn nhiều (trình độ N3 đang ôn). Hôm nay, con trai ông Tanaka — Tanaka Kenji (田中賢二), khoảng 55 tuổi, tính cách hay lo lắng và khó tính — đến thăm bố định kỳ. Anh phát hiện vết bầm nhỏ ở cánh tay ông Tanaka và lập tức phàn nàn. Đây là lần đầu Ngọc phải đối mặt với tình huống クレーム thực sự.

---

## Tình huống 1 — Phòng sinh hoạt chung · 14:00, con trai đến thăm

| Vai | Lời thoại |
|---|---|
| Tanaka Kenji | (bước vào, nhìn quanh) すみません。<ruby>田中<rt>たなか</rt></ruby><ruby>賢一<rt>けんいち</rt></ruby>の<ruby>息子<rt>むすこ</rt></ruby>の<ruby>賢二<rt>けんじ</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>面会<rt>めんかい</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<br>*(Xin lỗi. Tôi là Kenji, con trai của Tanaka Kenichi. Tôi đến thăm ông ấy.)* |
| Ngọc | お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>今<rt>いま</rt></ruby>、<ruby>居室<rt>きょしつ</rt></ruby>でお<ruby>休<rt>やす</rt></ruby>みです。ご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Cảm ơn ông đã đến. Ông Tanaka đang nghỉ trong phòng. Tôi dẫn ông vào ạ.)* |
| Tanaka Kenji | ああ、そうですか。あなたは?<br>*(À, vậy à. Cô là?)* |
| Ngọc | <ruby>実習生<rt>じっしゅうせい</rt></ruby>のグエン・ゴックと<ruby>申<rt>もう</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby>さんのケアを<ruby>担当<rt>たんとう</rt></ruby>しております。<br>*(Em là thực tập sinh Nguyễn Ngọc. Em đang phụ trách chăm sóc ông Tanaka ạ.)* |
| Tanaka Kenji | (nhìn Ngọc lướt qua) ふーん。ベトナムの<ruby>方<rt>かた</rt></ruby>ですか。<br>*(Hừm. Cô là người Việt Nam à.)* |
| Ngọc | はい。どうぞ、こちらへ。<br>*(Vâng ạ. Mời ông đi lối này.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 14:05, phát hiện vết bầm

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | (mắt sáng lên) おお、賢二か。わざわざ<ruby>来<rt>き</rt></ruby>たのか。<br>*(Ồ, Kenji à. Mày chịu đến à.)* |
| Tanaka Kenji | 親父、<ruby>元気<rt>げんき</rt></ruby>そうだな。(nhìn cánh tay) ...ちょっと待って。この<ruby>腕<rt>うで</rt></ruby>のあざは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Bố, trông khỏe đấy. ...Khoan đã. Vết bầm ở tay này là gì vậy?)* |
| Ông Tanaka | え? ああ、これか。<ruby>大<rt>たい</rt></ruby>したことないよ。<br>*(Hả? À, cái này à. Không có gì đâu.)* |
| Tanaka Kenji | (giọng căng ra, quay sang Ngọc) すみません、これはいつできたんですか? どういうことですか?<br>*(Xin lỗi, cái này xuất hiện từ khi nào? Chuyện gì xảy ra vậy?)* |
| Ngọc | (giật mình) あ...えっと、ちょっとお<ruby>待<rt>ま</rt></ruby>ちください。<ruby>担当<rt>たんとう</rt></ruby>リーダーを<ruby>呼<rt>よ</rt></ruby>んでまいります。<br>*(À... ờ, xin ông chờ một chút. Em sẽ gọi trưởng nhóm phụ trách ạ.)* |
| Tanaka Kenji | (không hài lòng) ...はい。<br>*(... Vâng.)* |

---

## Tình huống 3 — Hành lang · 14:07, Ngọc gọi Yamamoto

| Vai | Lời thoại |
|---|---|
| Ngọc | (chạy ra, nói thầm) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>息子<rt>むすこ</rt></ruby>さんが<ruby>腕<rt>うで</rt></ruby>のあざのことを<ruby>聞<rt>き</rt></ruby>いています。クレームみたいで、わたし、どう<ruby>答<rt>こた</rt></ruby>えればいいか...。<br>*(Chị Yamamoto ơi, con trai ông Tanaka đang hỏi về vết bầm ở tay. Có vẻ là phàn nàn, em không biết phải trả lời thế nào...)* |
| Yamamoto | (bình tĩnh) わかった。まず<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて。<ruby>介護記録<rt>かいごきろく</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきて。あとで一<ruby>緒<rt>いっしょ</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Hiểu rồi. Trước tiên bình tĩnh lại. Em lấy hồ sơ chăm sóc mang theo. Lát chị giải thích cùng em.)* |
| Ngọc | あざの<ruby>原因<rt>げんいん</rt></ruby>は...<ruby>記録<rt>きろく</rt></ruby>に<ruby>昨日<rt>きのう</rt></ruby>の<ruby>移乗<rt>いじょう</rt></ruby>のとき、<ruby>軽<rt>かる</rt></ruby>くぶつかったと<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Nguyên nhân vết bầm... trong hồ sơ có ghi là khi chuyển vị trí hôm qua, ông ấy bị va nhẹ ạ.)* |
| Yamamoto | <ruby>報告<rt>ほうこく</rt></ruby>は<ruby>上<rt>あ</rt></ruby>がっていましたか?<br>*(Đã báo cáo lên chưa?)* |
| Ngọc | はい、<ruby>当日<rt>とうじつ</rt></ruby>すぐに<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>して、「<ruby>問題<rt>もんだい</rt></ruby>なし」と<ruby>確認<rt>かくにん</rt></ruby>していただきました。<br>*(Vâng, ngay hôm đó em đã báo ngay với y tá, được xác nhận là "không vấn đề" ạ.)* |
| Yamamoto | よし。じゃあ、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>しましょう。グエンさんも<ruby>一緒<rt>いっしょ</rt></ruby>に来てください。<ruby>勉強<rt>べんきょう</rt></ruby>になりますよ。<br>*(Tốt. Vậy chúng ta sẽ giải thích thành thật. Em Nguyễn cũng đi cùng. Đây là bài học tốt đấy.)* |

---

## Tình huống 4 — Phòng ông Tanaka · 14:10, xin lỗi và giải thích (謝罪・状態説明)

| Vai | Lời thoại |
|---|---|
| Yamamoto | (cúi đầu) <ruby>田中<rt>たなか</rt></ruby><ruby>賢二<rt>けんじ</rt></ruby>様、<ruby>介護<rt>かいご</rt></ruby>リーダーの<ruby>山本<rt>やまもと</rt></ruby>です。ご<ruby>心配<rt>しんぱい</rt></ruby>をおかけして、<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Anh Tanaka Kenji, tôi là Yamamoto, trưởng nhóm điều dưỡng. Rất xin lỗi vì đã khiến anh lo lắng.)* |
| Tanaka Kenji | (giọng không mềm) これ、どういうことですか。<ruby>父<rt>ちち</rt></ruby>の<ruby>体<rt>からだ</rt></ruby>にあざができているなんて。<br>*(Cái này là thế nào? Để bố tôi bị bầm thế này.)* |
| Yamamoto | はい。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんをベッドから<ruby>車椅子<rt>くるまいす</rt></ruby>へ<ruby>移乗<rt>いじょう</rt></ruby>する<ruby>際<rt>さい</rt></ruby>に、<ruby>腕<rt>うで</rt></ruby>が<ruby>車椅子<rt>くるまいす</rt></ruby>のアームレストに<ruby>軽<rt>かる</rt></ruby>く<ruby>触<rt>ふ</rt></ruby>れてしまいました。<br>*(Vâng. Chiều qua, khi chuyển ông Tanaka từ giường sang xe lăn, tay ông có chạm nhẹ vào thành xe lăn ạ.)* |
| Tanaka Kenji | それで、なぜ<ruby>連絡<rt>れんらく</rt></ruby>しなかったんですか?<br>*(Vậy tại sao không liên lạc cho tôi?)* |
| Yamamoto | おっしゃる<ruby>通<rt>とお</rt></ruby>りです。<ruby>当日<rt>とうじつ</rt></ruby>すぐに<ruby>看護師<rt>かんごし</rt></ruby>が<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>状態<rt>じょうたい</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>がないことを<ruby>確認<rt>かくにん</rt></ruby>いたしましたが、ご<ruby>家族<rt>かぞく</rt></ruby>へのご<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>不十分<rt>ふじゅうぶん</rt></ruby>でございました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Anh nói đúng. Ngay hôm đó y tá đã kiểm tra và xác nhận tình trạng không có vấn đề, nhưng việc thông báo đến gia đình của chúng tôi còn chưa đầy đủ. Thực sự rất xin lỗi ạ.)* |
| Ngọc | (cúi đầu theo) <ruby>私<rt>わたし</rt></ruby>も、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<br>*(Em cũng thực sự rất xin lỗi ạ.)* |
| Tanaka Kenji | ...その<ruby>看護師<rt>かんごし</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんな<ruby>確認<rt>かくにん</rt></ruby>ですか?<br>*(... Việc y tá xác nhận đó, cụ thể là xác nhận những gì?)* |
| Yamamoto | はい。<ruby>腕<rt>うで</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>や<ruby>腫<rt>は</rt></ruby>れの<ruby>有無<rt>うむ</rt></ruby>、<ruby>痛<rt>いた</rt></ruby>みの<ruby>訴<rt>うった</rt></ruby>えがないかを<ruby>確認<rt>かくにん</rt></ruby>いたしました。<ruby>皮下出血<rt>ひかしゅっけつ</rt></ruby>ですが、<ruby>腫<rt>は</rt></ruby>れはなく、<ruby>痛<rt>いた</rt></ruby>みのご<ruby>訴<rt>うった</rt></ruby>えもありませんでした。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>観察<rt>かんさつ</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けております。<br>*(Vâng. Chúng tôi đã xác nhận màu sắc vết bầm, có hay không có sưng, và ông có kêu đau hay không. Đây là xuất huyết dưới da, không sưng, và ông không kêu đau. Chúng tôi vẫn đang tiếp tục theo dõi ạ.)* |

---

## Tình huống 5 — Sảnh tiếp tân · 10:00, tiếp nhận đồ thăm của gia đình

| Vai | Lời thoại |
|---|---|
| Tanaka Kenji | (hôm khác, mang theo túi) あの、<ruby>田中<rt>たなか</rt></ruby>の<ruby>息子<rt>むすこ</rt></ruby>ですが、<ruby>父<rt>ちち</rt></ruby>に<ruby>差<rt>さ</rt></ruby>し<ruby>入<rt>い</rt></ruby>れがあります。これ、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>っていただけますか?<br>*(Xin lỗi, tôi là con trai ông Tanaka, tôi có mang đồ vào cho bố. Anh chị nhận được không ạ?)* |
| Ngọc | はい。<ruby>ありがとうございます<rt>ありがとうございます</rt></ruby>。<ruby>中身<rt>なかみ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させていただいてもよろしいですか? <ruby>施設<rt>しせつ</rt></ruby>のルールで、<ruby>食品<rt>しょくひん</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>は<ruby>制限<rt>せいげん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なんです。<br>*(Vâng. Cảm ơn ông ạ. Tôi có thể kiểm tra bên trong được không ạ? Theo quy định của cơ sở, với thực phẩm cần xác nhận về hạn chế ăn uống ạ.)* |
| Tanaka Kenji | ああ、そうですか。どうぞ。<ruby>羊羹<rt>ようかん</rt></ruby>と<ruby>果物<rt>くだもの</rt></ruby>です。<br>*(À, vậy à. Vâng mời xem. Bánh yokan và hoa quả ạ.)* |
| Ngọc | (kiểm tra, hơi lo lắng) <ruby>羊羹<rt>ようかん</rt></ruby>ですね。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>塩分制限<rt>えんぶんせいげん</rt></ruby>と<ruby>糖分制限<rt>とうぶんせいげん</rt></ruby>がございまして...少々お<ruby>待<rt>ま</rt></ruby>ちください。リーダーに<ruby>確認<rt>かくにん</rt></ruby>してまいります。<br>*(Bánh yokan ạ. Ông Tanaka có hạn chế muối và đường... Xin ông đợi một chút. Em đi xác nhận với trưởng nhóm ạ.)* |
| Yamamoto | (sau khi xem) <ruby>羊羹<rt>ようかん</rt></ruby>は<ruby>糖分<rt>とうぶん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いので<ruby>今回<rt>こんかい</rt></ruby>はご<ruby>遠慮<rt>えんりょ</rt></ruby>いただきましょう。<ruby>果物<rt>くだもの</rt></ruby>のほうは<ruby>量<rt>りょう</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ちゃんとお<ruby>断<rt>ことわ</rt></ruby>りしてください。<br>*(Bánh yokan nhiều đường nên lần này nhờ ông ấy không mang vào. Hoa quả thì điều chỉnh lượng là được. Em giải thích rõ nhé.)* |
| Ngọc | (quay lại, cúi đầu nhẹ) <ruby>田中<rt>たなか</rt></ruby><ruby>賢二<rt>けんじ</rt></ruby>様、<ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>羊羹<rt>ようかん</rt></ruby>は<ruby>糖分制限<rt>とうぶんせいげん</rt></ruby>のため、お<ruby>預<rt>あず</rt></ruby>かりが<ruby>難<rt>むずか</rt></ruby>しい<ruby>状況<rt>じょうきょう</rt></ruby>です。<ruby>果物<rt>くだもの</rt></ruby>はお<ruby>父様<rt>とうさま</rt></ruby>にお<ruby>渡<rt>わた</rt></ruby>しいたします。<br>*(Anh Tanaka Kenji, thực sự xin lỗi ạ. Bánh yokan do hạn chế đường nên chúng tôi không thể nhận ạ. Hoa quả chúng tôi sẽ chuyển đến cho ông ạ.)* |
| Tanaka Kenji | そうですか、わかりました。<ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけます。何か<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>んでいいものはありますか?<br>*(Vậy à, tôi hiểu rồi. Lần sau tôi sẽ chú ý. Có đồ gì được mang vào không ạ?)* |
| Ngọc | <ruby>制限<rt>せいげん</rt></ruby>リストをご<ruby>用意<rt>ようい</rt></ruby>いたします。次回は<ruby>事前<rt>じぜん</rt></ruby>にお<ruby>電話<rt>でんわ</rt></ruby>いただければ<ruby>確認<rt>かくにん</rt></ruby>もできます。<br>*(Em sẽ chuẩn bị danh sách hạn chế cho ông. Lần sau nếu gọi điện trước thì em cũng có thể xác nhận ạ.)* |

---

## Tình huống 6 — Điện thoại trực · 13:30, gia đình gọi hỏi tình trạng

| Vai | Lời thoại |
|---|---|
| Ngọc | (nghe điện thoại) はい、ひだまり苑でございます。<br>*(Vâng, đây là Hidamari-en.)* |
| Giọng điện thoại (vợ ông Kimura) | あの、<ruby>木村<rt>きむら</rt></ruby>の<ruby>家内<rt>かない</rt></ruby>でございます。<ruby>主人<rt>しゅじん</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>はどうでしょうか。先日<ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めたと<ruby>聞<rt>き</rt></ruby>いて<ruby>心配<rt>しんぱい</rt></ruby>しておりまして。<br>*(Xin lỗi, tôi là vợ ông Kimura. Tình trạng của ông nhà thế nào rồi ạ? Nghe nói ông ấy bị đau lưng, tôi rất lo.)* |
| Ngọc | お<ruby>電話<rt>でんわ</rt></ruby>ありがとうございます。<ruby>木村<rt>きむら</rt></ruby>さんは<ruby>現在<rt>げんざい</rt></ruby>、<ruby>腰部<rt>ようぶ</rt></ruby>の<ruby>痛<rt>いた</rt></ruby>みは<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてきております。<ruby>今日<rt>きょう</rt></ruby>は<ruby>昼食<rt>ちゅうしょく</rt></ruby>も<ruby>全量摂取<rt>ぜんりょうせっしゅ</rt></ruby>でした。<br>*(Cảm ơn bà đã gọi điện. Ông Kimura hiện tại đau lưng đã bớt dần ạ. Hôm nay bữa trưa ông ăn hết hoàn toàn ạ.)* |
| Giọng điện thoại | そうですか。<ruby>入浴<rt>にゅうよく</rt></ruby>はできていますか?<br>*(Vậy à. Có tắm được không ạ?)* |
| Ngọc | <ruby>腰<rt>こし</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら、<ruby>今日<rt>きょう</rt></ruby>は<ruby>清拭<rt>せいしき</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>しております。<ruby>状態<rt>じょうたい</rt></ruby>がよくなれば<ruby>入浴<rt>にゅうよく</rt></ruby>を<ruby>再開<rt>さいかい</rt></ruby>いたします。<ruby>詳<rt>くわ</rt></ruby>しいことは<ruby>担当<rt>たんとう</rt></ruby>リーダーからご<ruby>説明<rt>せつめい</rt></ruby>できますが、よろしいですか?<br>*(Chúng tôi đang theo dõi tình trạng lưng, hôm nay dùng khăn lau người thay thế ạ. Khi tình trạng tốt hơn sẽ tắm trở lại. Để trưởng nhóm phụ trách giải thích chi tiết hơn có được không ạ?)* |
| Giọng điện thoại | ああ、そうしていただければ。お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Ờ, nhờ anh chị như vậy nhé. Cảm ơn anh chị nhiều.)* |
| Ngọc | (sau khi cúp máy, ghi ngay) (viết vào sổ) 「<ruby>木村<rt>きむら</rt></ruby>さん<ruby>奥様<rt>おくさま</rt></ruby>より<ruby>電話<rt>でんわ</rt></ruby>あり。<ruby>状態<rt>じょうたい</rt></ruby>お<ruby>伝<rt>つた</rt></ruby>えする。Ns・リーダーへ<ruby>引継<rt>ひきつ</rt></ruby>ぎ<ruby>済<rt>す</rt></ruby>み」...<br>*(Vợ ông Kimura có gọi điện. Đã thông báo tình trạng. Đã bàn giao cho y tá và trưởng nhóm...)* |
| Yamamoto | (nhìn qua) <ruby>電話対応<rt>でんわたいおう</rt></ruby>どうでしたか?<br>*(Tiếp điện thoại thế nào?)* |
| Ngọc | <ruby>緊張<rt>きんちょう</rt></ruby>しましたが、<ruby>分<rt>わ</rt></ruby>かることだけお<ruby>伝<rt>つた</rt></ruby>えして、<ruby>詳しい<rt>くわしい</rt></ruby>ことはリーダーに<ruby>引継<rt>ひきつ</rt></ruby>ぎましたが<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたか?<br>*(Em hơi hồi hộp, nhưng chỉ nói những gì em biết, còn chi tiết em chuyển cho trưởng nhóm — như vậy có ổn không ạ?)* |
| Yamamoto | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>無理<rt>むり</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えない。それが<ruby>正解<rt>せいかい</rt></ruby>ですよ。<br>*(Hoàn hảo. Không cố trả lời những gì không biết. Đó là câu trả lời đúng.)* |

---

## Tình huống 7 — Phòng sinh hoạt chung · 15:00, giải thích lịch sinh hoạt cho gia đình

| Vai | Lời thoại |
|---|---|
| Tanaka Kenji | (lần thăm tiếp theo) グエンさん、<ruby>父<rt>ちち</rt></ruby>の1<ruby>日<rt>にち</rt></ruby>のスケジュールを<ruby>教<rt>おし</rt></ruby>えてもらえますか? どんな<ruby>生活<rt>せいかつ</rt></ruby>をしているのか<ruby>知<rt>し</rt></ruby>りたくて。<br>*(Cô Nguyễn, cô có thể giải thích lịch một ngày của bố tôi không? Tôi muốn biết bố sống thế nào.)* |
| Ngọc | はい、もちろんです。(lấy tờ lịch sinh hoạt) <ruby>田中<rt>たなか</rt></ruby>さんの<ruby>一日<rt>いちにち</rt></ruby>のスケジュールです。<ruby>朝<rt>あさ</rt></ruby>は7<ruby>時<rt>じ</rt></ruby>ごろ<ruby>起床<rt>きしょう</rt></ruby>して、<ruby>洗顔<rt>せんがん</rt></ruby>・<ruby>口腔<rt>こうくう</rt></ruby>ケアを<ruby>一部介助<rt>いちぶかいじょ</rt></ruby>でされます。8<ruby>時<rt>じ</rt></ruby>に<ruby>朝食<rt>ちょうしょく</rt></ruby>です。<br>*(Vâng, tất nhiên. Đây là lịch một ngày của ông Tanaka. Buổi sáng ông dậy khoảng 7 giờ, rửa mặt và vệ sinh răng miệng có hỗ trợ một phần. 8 giờ ăn sáng ạ.)* |
| Tanaka Kenji | リハビリはいつですか?<br>*(Phục hồi chức năng lúc nào ạ?)* |
| Ngọc | <ruby>月曜日<rt>げつようび</rt></ruby>・<ruby>水曜日<rt>すいようび</rt></ruby>・<ruby>金曜日<rt>きんようび</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby>10<ruby>時<rt>じ</rt></ruby>から<ruby>理学療法士<rt>りがくりょうほうし</rt></ruby>さんとリハビリをしています。<ruby>主<rt>おも</rt></ruby>に<ruby>歩行訓練<rt>ほこうくんれん</rt></ruby>と<ruby>上半身<rt>じょうはんしん</rt></ruby>の<ruby>筋力<rt>きんりょく</rt></ruby>トレーニングです。<br>*(Thứ Hai, Thứ Tư, Thứ Sáu lúc 10 giờ sáng ông tập phục hồi chức năng với chuyên viên vật lý trị liệu ạ. Chủ yếu là tập đi và rèn luyện cơ phần trên cơ thể.)* |
| Tanaka Kenji | <ruby>父<rt>ちち</rt></ruby>は<ruby>頑張<rt>がんば</rt></ruby>っているんですね。<ruby>入浴<rt>にゅうよく</rt></ruby>はどうですか?<br>*(Bố tôi đang cố gắng nhỉ. Còn tắm thì sao ạ?)* |
| Ngọc | <ruby>火曜日<rt>かようび</rt></ruby>と<ruby>木曜日<rt>もくようび</rt></ruby>に<ruby>機械浴<rt>きかいよく</rt></ruby>をご<ruby>利用<rt>りよう</rt></ruby>いただいています。<ruby>皮膚<rt>ひふ</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>もその<ruby>際<rt>さい</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しています。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>毎回<rt>まいかい</rt></ruby>「<ruby>気持<rt>きも</rt></ruby>ちいい」とおっしゃいますよ。<br>*(Thứ Ba và Thứ Năm ông dùng hệ thống tắm cơ học ạ. Tình trạng da cũng được kiểm tra lúc đó. Ông Tanaka mỗi lần đều nói "dễ chịu quá" đó ạ.)* |
| Tanaka Kenji | (mỉm cười nhẹ) そうですか。<ruby>父<rt>ちち</rt></ruby>が「<ruby>気持<rt>きも</rt></ruby>ちいい」と<ruby>言<rt>い</rt></ruby>っているとは<ruby>知<rt>し</rt></ruby>りませんでした。ありがとうございます、<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてくれて。<br>*(Vậy à. Tôi không biết bố nói "dễ chịu quá" như vậy. Cảm ơn cô đã giải thích chi tiết.)* |
| Ngọc | <ruby>ご家族<rt>ごかぞく</rt></ruby>に<ruby>知<rt>し</rt></ruby>っていただくことも<ruby>大切<rt>たいせつ</rt></ruby>なことだと<ruby>思<rt>おも</rt></ruby>います。<ruby>何<rt>なに</rt></ruby>か<ruby>気<rt>き</rt></ruby>になることがあれば、<ruby>いつでも<rt>いつでも</rt></ruby>お<ruby>聞<rt>き</rt></ruby>きください。<br>*(Tôi nghĩ gia đình nắm được thông tin cũng rất quan trọng ạ. Nếu có điều gì băn khoăn, lúc nào cũng có thể hỏi ạ.)* |

---

## Tình huống 8 — Phòng trực · 16:00, ghi nội dung trao đổi gia đình vào 記録

| Vai | Lời thoại |
|---|---|
| Ngọc | (ngồi viết 記録, lầm bầm) 「<ruby>田中<rt>たなか</rt></ruby><ruby>賢二<rt>けんじ</rt></ruby>様より<ruby>面会<rt>めんかい</rt></ruby>あり。<ruby>一日<rt>いちにち</rt></ruby>のスケジュールについてご<ruby>説明<rt>せつめい</rt></ruby>。<ruby>差<rt>さ</rt></ruby>し<ruby>入<rt>い</rt></ruby>れの<ruby>果物<rt>くだもの</rt></ruby>はPt<ruby>本人<rt>ほんにん</rt></ruby>にお<ruby>渡<rt>わた</rt></ruby>し済み。<ruby>羊羹<rt>ようかん</rt></ruby>は<ruby>糖分制限<rt>とうぶんせいげん</rt></ruby>のためお<ruby>断<rt>ことわ</rt></ruby>りし了解<ruby>済<rt>す</rt></ruby>み」...これでいいかな?<br>*(Anh Tanaka Kenji đến thăm. Đã giải thích lịch sinh hoạt một ngày. Hoa quả mang thăm đã chuyển cho bệnh nhân. Bánh yokan do hạn chế đường đã từ chối và được đồng ý... Như này được không nhỉ?)* |
| Yamamoto | (xem qua) いいですね。でも<ruby>家族<rt>かぞく</rt></ruby>との<ruby>やりとり<rt>やりとり</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>するときは、<ruby>要望<rt>ようぼう</rt></ruby>があればそれも<ruby>書<rt>か</rt></ruby>きます。今回は<ruby>何<rt>なに</rt></ruby>かありましたか?<br>*(Tốt rồi. Nhưng khi ghi nội dung trao đổi với gia đình, nếu có yêu cầu thì ghi thêm. Lần này có gì không?)* |
| Ngọc | <ruby>賢二<rt>けんじ</rt></ruby>さんから「<ruby>次回<rt>じかい</rt></ruby>から<ruby>差<rt>さ</rt></ruby>し<ruby>入<rt>い</rt></ruby>れ<ruby>可能<rt>かのう</rt></ruby>リストをほしい」という<ruby>要望<rt>ようぼう</rt></ruby>がありました。<br>*(Anh Kenji có yêu cầu "lần sau muốn có danh sách đồ được mang vào".)* |
| Yamamoto | じゃあ、それも<ruby>追記<rt>ついき</rt></ruby>してください。「ご<ruby>家族<rt>かぞく</rt></ruby>より<ruby>差<rt>さ</rt></ruby>し<ruby>入<rt>い</rt></ruby>れ<ruby>可能<rt>かのう</rt></ruby>リストのご<ruby>要望<rt>ようぼう</rt></ruby>あり。<ruby>次回面会前<rt>じかいめんかいまえ</rt></ruby>にご<ruby>用意<rt>ようい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてください。<br>*(Vậy ghi bổ sung thêm nhé. Viết: "Gia đình có yêu cầu danh sách đồ được mang vào. Dự định chuẩn bị trước lần thăm tiếp theo".)* |
| Ngọc | (ghi thêm) <ruby>家族<rt>かぞく</rt></ruby>との<ruby>会話<rt>かいわ</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>も<ruby>記録<rt>きろく</rt></ruby>するんですね。<ruby>利用者<rt>りようしゃ</rt></ruby>さんのことだけでなく...<br>*(Nội dung cuộc trò chuyện với gia đình cũng ghi vào hồ sơ nhỉ. Không chỉ về bản thân người dùng dịch vụ...)* |
| Yamamoto | そうです。<ruby>介護<rt>かいご</rt></ruby>は<ruby>利用者<rt>りようしゃ</rt></ruby>さん<ruby>本人<rt>ほんにん</rt></ruby>だけでなく、<ruby>家族<rt>かぞく</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>めてのケアです。<ruby>家族<rt>かぞく</rt></ruby>との<ruby>やりとり<rt>やりとり</rt></ruby>も<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>しておくと、<ruby>次<rt>つぎ</rt></ruby>のスタッフも<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>把握<rt>はあく</rt></ruby>できます。<br>*(Đúng. Điều dưỡng không chỉ là chăm sóc bản thân người dùng dịch vụ mà còn cả gia đình họ. Ghi lại trao đổi với gia đình thì nhân viên tiếp theo cũng nắm được tình hình.)* |

---

## Tình huống 9 — Phòng ông Tanaka · 14:20, giải thích 片麻痺 và nguy cơ

| Vai | Lời thoại |
|---|---|
| Tanaka Kenji | (giọng bắt đầu dịu) ...わかりました。でも、なんであざができやすいんですか? ちゃんとケアしているんですか?<br>*(... Hiểu rồi. Nhưng tại sao lại dễ bầm vậy? Có chăm sóc đúng cách không?)* |
| Yamamoto | はい。ご<ruby>説明<rt>せつめい</rt></ruby>いたします。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>片麻痺<rt>かたまひ</rt></ruby>がございますので、<ruby>血流<rt>けつりゅう</rt></ruby>が<ruby>部分的<rt>ぶぶんてき</rt></ruby>に<ruby>滞<rt>とどこお</rt></ruby>りやすく、<ruby>皮膚<rt>ひふ</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>くなっております。<ruby>少<rt>すこ</rt></ruby>しの<ruby>刺激<rt>しげき</rt></ruby>でもあざになりやすい<ruby>状態<rt>じょうたい</rt></ruby>です。<br>*(Vâng. Để tôi giải thích. Ông Tanaka bị liệt nửa người, nên tuần hoàn máu ở một phần dễ bị ứ đọng, da dễ yếu hơn. Đây là tình trạng dễ bị bầm dù chỉ chịu kích thích nhỏ.)* |
| Ngọc | (thêm vào nhẹ nhàng) <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>毎日<rt>まいにち</rt></ruby>リハビリを<ruby>頑張<rt>がんば</rt></ruby>っていらっしゃいます。<ruby>移乗<rt>いじょう</rt></ruby>のときも、ご<ruby>自分<rt>じぶん</rt></ruby>でできるところは<ruby>自分<rt>じぶん</rt></ruby>でやっていただいています。<ruby>残存機能<rt>ざんそんきのう</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にするためです。<br>*(Ông Tanaka vẫn đang cố gắng tập phục hồi chức năng mỗi ngày. Khi chuyển vị trí, những gì ông tự làm được thì để ông tự làm. Để bảo tồn chức năng còn lại của ông ạ.)* |
| Tanaka Kenji | (nhìn Ngọc, giọng tò mò hơn) ...<ruby>残存機能<rt>ざんそんきのう</rt></ruby>?<br>*(... Chức năng còn lại?)* |
| Ngọc | はい。<ruby>介護<rt>かいご</rt></ruby>では、<ruby>全部<rt>ぜんぶ</rt></ruby>やってあげるのではなく、ご<ruby>自分<rt>じぶん</rt></ruby>でできることはご<ruby>自分<rt>じぶん</rt></ruby>でやっていただきます。そのほうが、<ruby>心身<rt>しんしん</rt></ruby>の<ruby>残存機能<rt>ざんそんきのう</rt></ruby>が<ruby>保<rt>たも</rt></ruby>たれるんです。<br>*(Vâng. Trong điều dưỡng, chúng tôi không làm hộ tất cả, mà để ông tự làm những gì ông có thể. Như vậy, chức năng thể chất và tinh thần của ông sẽ được duy trì hơn ạ.)* |
| Tanaka Kenji | (gật đầu chậm) ...なるほど。<br>*(... Tôi hiểu rồi.)* |
| Yamamoto | <ruby>今後<rt>こんご</rt></ruby>は、<ruby>移乗<rt>いじょう</rt></ruby>の<ruby>際<rt>さい</rt></ruby>により<ruby>注意<rt>ちゅうい</rt></ruby>を<ruby>払<rt>はら</rt></ruby>い、またこのような<ruby>状況<rt>じょうきょう</rt></ruby>があれば<ruby>速<rt>すみ</rt></ruby>やかにご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Về sau, khi chuyển vị trí chúng tôi sẽ cẩn thận hơn, và nếu xảy ra tình huống như thế này sẽ thông báo ngay cho gia đình.)* |

---

## Tình huống 10 — Phòng ông Tanaka · 14:35, con trai dịu lại và ông Tanaka lên tiếng

| Vai | Lời thoại |
|---|---|
| Tanaka Kenji | (thở dài) ...わかりました。<ruby>連絡<rt>れんらく</rt></ruby>の<ruby>件<rt>けん</rt></ruby>は<ruby>今後<rt>こんご</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いします。(quay sang Ngọc) グエンさん、<ruby>父<rt>ちち</rt></ruby>の<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てくれてありがとうございます。さっきは<ruby>失礼<rt>しつれい</rt></ruby>なことを<ruby>言<rt>い</rt></ruby>ったかもしれません。<br>*(... Tôi hiểu rồi. Chuyện liên lạc về sau nhờ anh chị nhé. (quay sang Ngọc) Cô Nguyễn, cảm ơn cô đã chăm sóc bố tôi. Lúc nãy có thể tôi đã nói không phải.)* |
| Ngọc | いいえ、とんでもないです。ご<ruby>心配<rt>しんぱい</rt></ruby>は<ruby>当然<rt>とうぜん</rt></ruby>のことです。これからも<ruby>田中<rt>たなか</rt></ruby>さんのことをしっかりお<ruby>見<rt>み</rt></ruby>しております。<br>*(Không có gì ạ. Lo lắng như vậy là chuyện đương nhiên. Em sẽ tiếp tục chăm sóc ông Tanaka chu đáo ạ.)* |
| Ông Tanaka | (đột nhiên, giọng cộc lốc với con) 賢二、うるさかったぞ。この<ruby>娘<rt>こ</rt></ruby>はちゃんとやってるよ。<br>*(Kenji, mày làm ầm quá đấy. Con bé này làm tốt lắm.)* |
| Tanaka Kenji | (ngượng) 親父...。<br>*(Bố ơi...)* |
| Ông Tanaka | (liếc nhìn Ngọc, giọng khẽ) <ruby>毎日<rt>まいにち</rt></ruby>よくやってくれてる。あまり<ruby>苦労<rt>くろう</rt></ruby>かけるな。<br>*(Cô ấy ngày nào cũng làm tốt lắm. Đừng làm khó người ta.)* |
| Ngọc | (xúc động, giọng nhẹ) <ruby>田中<rt>たなか</rt></ruby>さん...<br>*(Ông Tanaka...)* |
| Ông Tanaka | (quay mặt đi, giả vờ nhìn ra cửa sổ) ふん、<ruby>気<rt>き</rt></ruby>にするな。<br>*(Hừ, đừng bận tâm.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · 15:30, Yamamoto tổng kết bài học

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>はよくやりました。<ruby>緊張<rt>きんちょう</rt></ruby>したでしょう?<br>*(Em Nguyễn, hôm nay làm tốt lắm. Hồi hộp lắm phải không?)* |
| Ngọc | はい、すごく<ruby>緊張<rt>きんちょう</rt></ruby>しました。でも...クレームって、<ruby>怖<rt>こわ</rt></ruby>いだけじゃないんですね。<br>*(Vâng, em hồi hộp lắm. Nhưng... phàn nàn không chỉ đáng sợ thôi nhỉ ạ.)* |
| Yamamoto | そうですね。ご<ruby>家族<rt>かぞく</rt></ruby>は<ruby>心配<rt>しんぱい</rt></ruby>しているんです。だから<ruby>怒<rt>おこ</rt></ruby>る。<ruby>大切<rt>たいせつ</rt></ruby>なのは、<ruby>逃<rt>に</rt></ruby>げないで<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>うことです。<br>*(Đúng vậy. Gia đình họ lo lắng. Vì vậy mới nổi giận. Điều quan trọng là không trốn tránh mà phải đối mặt.)* |
| Ngọc | クレームのとき、まず<ruby>謝罪<rt>しゃざい</rt></ruby>、それから<ruby>説明<rt>せつめい</rt></ruby>、ですよね?<br>*(Khi có phàn nàn, trước tiên xin lỗi, rồi mới giải thích, phải không ạ?)* |
| Yamamoto | よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>先<rt>さき</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>から<ruby>入<rt>はい</rt></ruby>ると、<ruby>言<rt>い</rt></ruby>い<ruby>訳<rt>わけ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>こえてしまいます。<br>*(Em nhớ tốt lắm. Thứ tự rất quan trọng. Nếu bắt đầu bằng giải thích ngay, sẽ nghe giống như đang biện hộ cho mình.)* |
| Ngọc | あと、<ruby>事実<rt>じじつ</rt></ruby>だけ<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>す、それも<ruby>大切<rt>たいせつ</rt></ruby>ですよね。<ruby>隠<rt>かく</rt></ruby>さない。<br>*(Còn nữa, chỉ nói thật những gì thực tế, cái đó cũng quan trọng phải không ạ. Không che giấu.)* |
| Yamamoto | その<ruby>通<rt>とお</rt></ruby>りです。<ruby>介護<rt>かいご</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は、<ruby>利用者<rt>りようしゃ</rt></ruby>さんだけでなく、ご<ruby>家族<rt>かぞく</rt></ruby>とも<ruby>信頼<rt>しんらい</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>を<ruby>築<rt>きず</rt></ruby>くことが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. Công việc điều dưỡng không chỉ là xây dựng mối tin tưởng với người được chăm sóc, mà còn với gia đình họ nữa.)* |
| Ngọc | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。<ruby>田中<rt>たなか</rt></ruby>さんが...<ruby>息子<rt>むすこ</rt></ruby>さんに「よくやってる」と<ruby>言<rt>い</rt></ruby>ってくれたの、<ruby>本当<rt>ほんとう</rt></ruby>にうれしかったです。<br>*(Vâng, em hiểu rõ rồi ạ. Ông Tanaka... nói với con trai là em "làm tốt", em thực sự vui lắm.)* |
| Yamamoto | (mỉm cười) <ruby>田中<rt>たなか</rt></ruby>さん、あれはグエンさんへの<ruby>最高<rt>さいこう</rt></ruby>の<ruby>褒<rt>ほ</rt></ruby>め<ruby>言葉<rt>ことば</rt></ruby>ですよ。あの<ruby>方<rt>かた</rt></ruby>は<ruby>口<rt>くち</rt></ruby>が<ruby>厳<rt>きび</rt></ruby>しいから。<br>*(Ông Tanaka đó là lời khen cao nhất với em đấy. Ông ấy vốn ít khen lắm.)* |

---

## Tình huống 12 — Ký túc xá · 21:30, mạch truyện (tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật & cảm xúc Ngọc sau ngày dài.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Nghe nói hôm nay có khách khó tính hả? Yamamoto-san nói anh ấy cảm ơn mày đó. |
| Ngọc | (tiếng Việt) Ừ anh. Em sợ lắm, nhưng chị Yamamoto giúp em. Cái khó nhất là... phải xin lỗi trước, dù mình không sai hẳn. Ở Việt Nam mình hay giải thích trước. |
| Đức | (tiếng Việt) Ừ, văn hóa Nhật vậy. Nhận trách nhiệm trước, giải thích sau. Mình học mãi mới quen. |
| Ngọc | (tiếng Việt) Và ông Tanaka... ông lén nói với con trai "con bé làm tốt lắm". Ông không bao giờ nói thẳng với em, nhưng lại nói với con trai... |
| Đức | (tiếng Việt, cười khẽ) Người Nhật vậy đó. Tình cảm mà không nói thẳng. Nhưng mày hiểu rồi là quý lắm. |
| Ngọc | (tiếng Việt) Dạ. Em thấy cái nghề này... càng làm càng thấy sâu hơn. |

---

## Đọng lại chương 8

Ngọc trải qua lần đầu đối mặt クレーム thực sự và học được quy trình vàng **家族対応**: xin lỗi chân thành trước → giải thích sự thật khách quan → cam kết cải thiện. Ngoài ra, chương bổ sung 4 nghiệp vụ gia đình thực tế: tiếp nhận đồ thăm cần kiểm tra chế độ ăn trước khi nhận; điện thoại với gia đình chỉ nói điều đã biết, không rõ thì chuyển trưởng nhóm; giải thích lịch sinh hoạt 利用者 bằng ngôn ngữ thân mật nhưng chuyên nghiệp; ghi đầy đủ nội dung trao đổi gia đình vào 記録 bao gồm cả yêu cầu của gia đình. Nhận ra gia đình 利用者 là một phần không thể thiếu của công việc điều dưỡng. Khoảnh khắc ông Tanaka bảo vệ Ngọc trước con trai — một cách gián tiếp, đúng phong cách người Nhật cao tuổi — là dấu hiệu cho thấy mối quan hệ tin tưởng giữa hai người đã thực sự sâu rễ.

> Từ vựng & mẫu câu chương này: 面会・移乗・あざ・皮下出血・片麻痺・残存機能・クレーム対応・謝罪・申し訳ございません・状態報告・ご心配をおかけして・連絡が不十分でした・家族対応・信頼関係・差し入れ・糖分制限・電話対応・清拭・機械浴・一日のスケジュール・リハビリ・歩行訓練・追記・要望・引継ぎ済み', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000005, 800000028, NULL, 'markdown_book', 'T5. Phòng sự cố mùa hè (夏の事故予防)', '# Sách thực tập sinh điều dưỡng · T5. Phòng sự cố mùa hè (夏の事故予防)

> **Mục tiêu nhân vật:** Ngọc (25 tuổi, năm 2) học phòng ngừa các sự cố đặc trưng mùa hè trong điều dưỡng: nhắc bổ sung nước (水分補給), nhận biết dấu hiệu mất nước (脱水) và say nắng (熱中症), điều chỉnh nhiệt độ phòng (室温管理), phòng ngã (転倒予防) khi 利用者 mệt mỏi vì nóng. Đối mặt ca ヒヤリハット liên quan nhiệt độ và báo cáo đúng quy trình.

---

## Bối cảnh

Tháng 8 năm 2027. Mùa hè Nhật nóng bức, nhiệt độ ngoài trời lên tới 36–38°C. Tại viện dưỡng lão 「ひだまり苑」, người cao tuổi đặc biệt dễ bị mất nước và say nắng vì cảm giác khát giảm theo tuổi. Yamamoto phân công Ngọc phụ trách theo dõi bổ sung nước và kiểm tra nhiệt độ phòng trong ca sáng. Đây là chương Ngọc học cách nhận biết dấu hiệu nguy hiểm và xử lý ca ヒヤリハット đầu tiên liên quan nóng.

---

## Tình huống 1 — Buổi 朝礼 · 8:30, Yamamoto phổ biến lưu ý mùa hè

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>今日<rt>きょう</rt></ruby>も<ruby>暑<rt>あつ</rt></ruby>いですね。<ruby>夏<rt>なつ</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>脱水<rt>だっすい</rt></ruby>と<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Hôm nay lại nóng nhỉ. Mùa hè đặc biệt phải chú ý tình trạng mất nước và say nắng của người sử dụng dịch vụ.)* |
| Yamamoto | <ruby>高齢者<rt>こうれいしゃ</rt></ruby>は<ruby>喉<rt>のど</rt></ruby>の<ruby>渇<rt>かわ</rt></ruby>きを<ruby>感<rt>かん</rt></ruby>じにくいので、こちらから<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Người cao tuổi khó cảm nhận cơn khát, vì vậy chúng ta nhất định phải chủ động lên tiếng nhắc nhở.)* |
| Ngọc | あの、<ruby>脱水<rt>だっすい</rt></ruby>の<ruby>サイン<rt>サイン</rt></ruby>はどんなものがありますか?<br>*(Xin hỏi, dấu hiệu mất nước là những gì ạ?)* |
| Yamamoto | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>が<ruby>乾<rt>かわ</rt></ruby>いている、<ruby>皮膚<rt>ひふ</rt></ruby>をつまむと<ruby>戻<rt>もど</rt></ruby>りにくい、<ruby>尿<rt>にょう</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ない、ぼんやりしているなどです。<br>*(Câu hỏi hay đấy. Miệng khô, da bị véo không đàn hồi trở lại, lượng nước tiểu ít, người ngẩn ngơ... là những dấu hiệu đó.)* |
| Ngọc | <ruby>皮膚<rt>ひふ</rt></ruby>をつまむ...ですか。<ruby>実際<rt>じっさい</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>する<ruby>方法<rt>ほうほう</rt></ruby>があるんですね。<br>*(Véo da... vậy ạ. Có cách kiểm tra thực tế như vậy ạ.)* |
| Yamamoto | はい。あとで<ruby>一緒<rt>いっしょ</rt></ruby>にやってみましょう。グエンさん、今日は<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけを<ruby>担当<rt>たんとう</rt></ruby>してください。<br>*(Vâng. Lát mình thử cùng nhau nhé. Em Nguyễn, hôm nay em phụ trách nhắc nhở bổ sung nước nhé.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Hành lang phòng sinh hoạt · 9:00, kiểm tra nhiệt độ phòng

| Vai | Lời thoại |
|---|---|
| Nhân viên A | グエンさん、<ruby>各部屋<rt>かくへや</rt></ruby>の<ruby>室温<rt>しつおん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<ruby>冷房<rt>れいぼう</rt></ruby>が<ruby>効<rt>き</rt></ruby>いているかどうか。<br>*(Em Nguyễn, kiểm tra nhiệt độ từng phòng nhé. Xem điều hòa có hoạt động không.)* |
| Ngọc | <ruby>何度<rt>なんど</rt></ruby>くらいがいいですか?<br>*(Khoảng bao nhiêu độ là phù hợp ạ?)* |
| Nhân viên A | <ruby>夏<rt>なつ</rt></ruby>は<ruby>26<rt>にじゅうろく</rt></ruby>から<ruby>28<rt>にじゅうはち</rt></ruby>度くらいが<ruby>目安<rt>めやす</rt></ruby>です。<ruby>冷<rt>つめ</rt></ruby>やしすぎも<ruby>体<rt>からだ</rt></ruby>によくないので、<ruby>注意<rt>ちゅうい</rt></ruby>してくださいね。<br>*(Mùa hè khoảng 26–28 độ là chuẩn. Lạnh quá cũng không tốt cho sức khỏe, chú ý nhé.)* |
| Ngọc | (ghi vào bảng) <ruby>田中<rt>たなか</rt></ruby>さんの<ruby>お<rt>お</rt></ruby><ruby>部屋<rt>へや</rt></ruby>は<ruby>29<rt>にじゅうきゅう</rt></ruby>度になっています。<ruby>冷房<rt>れいぼう</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げてもいいですか?<br>*(Phòng ông Tanaka đang 29 độ. Em có thể hạ nhiệt độ điều hòa xuống không ạ?)* |
| Nhân viên A | はい。でも<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>先<rt>さき</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけてから<ruby>調整<rt>ちょうせい</rt></ruby>してください。<br>*(Vâng. Nhưng hãy hỏi ý kiến người sử dụng dịch vụ trước rồi mới điều chỉnh nhé.)* |
| Ngọc | (vào phòng, gõ cửa) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>部屋<rt>へや</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>暑<rt>あつ</rt></ruby>いですね。<ruby>冷房<rt>れいぼう</rt></ruby>を<ruby>強<rt>つよ</rt></ruby>くしてもよろしいですか?<br>*(Ông Tanaka, phòng hơi nóng nhỉ. Em bật điều hòa mạnh hơn một chút được không ạ?)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>む。さっきから<ruby>暑<rt>あつ</rt></ruby>くてな。<br>*(Ờ, làm đi. Từ nãy nóng lắm rồi.)* |
| Ngọc | はい。<ruby>調整<rt>ちょうせい</rt></ruby>しますね。<ruby>寒<rt>さむ</rt></ruby>くなったら、すぐ<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng. Em điều chỉnh nhé. Nếu thấy lạnh quá thì nói em nhé ạ.)* |

---

## Tình huống 3 — Phòng sinh hoạt chung · 9:30, nhắc bổ sung nước lần đầu trong ca

| Vai | Lời thoại |
|---|---|
| Ngọc | (đẩy xe đẩy có bình trà đến chỗ bà Sato) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>暑<rt>あつ</rt></ruby>いですね。お<ruby>茶<rt>ちゃ</rt></ruby>をどうぞ。<br>*(Bà Sato, hôm nay nóng nhỉ. Mời bà uống trà ạ.)* |
| Bà Sato | (nhìn lơ đãng) ...うん?<br>*(... Hả?)* |
| Ngọc | お<ruby>茶<rt>ちゃ</rt></ruby>です。<ruby>少<rt>すこ</rt></ruby>し<ruby>飲<rt>の</rt></ruby>みましょう。<br>*(Là trà ạ. Mình uống một chút nhé bà.)* |
| Bà Sato | <ruby>喉<rt>のど</rt></ruby>は<ruby>渇<rt>かわ</rt></ruby>いていないわよ。<br>*(Bà không khát đâu.)* |
| Ngọc | そうですか。でも<ruby>暑<rt>あつ</rt></ruby>い<ruby>日<rt>ひ</rt></ruby>は<ruby>気<rt>き</rt></ruby>がつかなくても<ruby>水分<rt>すいぶん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りなくなるんですよ。<ruby>少<rt>すこ</rt></ruby>しだけ、どうぞ。<br>*(Vậy ạ. Nhưng ngày nóng dù không thấy khát thì cơ thể vẫn thiếu nước đấy. Bà uống một chút thôi nhé.)* |
| Bà Sato | (cầm cốc, uống nhấp một ngụm) ...まあ、<ruby>飲<rt>の</rt></ruby>んでもいいわね。<br>*(... Thôi uống cũng được nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>しずつでいいですよ。<br>*(Cảm ơn bà. Uống từng chút thôi cũng được ạ.)* |
| Ngọc | (ghi vào sổ theo dõi) <ruby>佐藤<rt>さとう</rt></ruby>さん、9<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、お<ruby>茶<rt>ちゃ</rt></ruby>100<ruby>ml<rt>ミリリットル</rt></ruby>。<br>*(Bà Sato, 9 giờ 30 phút, uống trà 100ml.)* |

---

## Tình huống 4 — Phòng ông Kimura · 10:00, quan sát dấu hiệu mất nước

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はどうですか?<br>*(Ông Kimura, chào buổi sáng ạ. Hôm nay ông thấy thế nào?)* |
| Ông Kimura | なんか、<ruby>頭<rt>あたま</rt></ruby>がぼーっとするな。<br>*(Sao đầu cứ ngẩn ngơ thế này.)* |
| Ngọc | (lo lắng) そうですか。<ruby>昨日<rt>きのう</rt></ruby>から<ruby>水分<rt>すいぶん</rt></ruby>はとっていましたか?<br>*(Vậy ạ. Từ hôm qua đến giờ ông có uống nước không ạ?)* |
| Ông Kimura | あまり<ruby>飲<rt>の</rt></ruby>まなかったかな。<ruby>夜<rt>よる</rt></ruby>も<ruby>喉<rt>のど</rt></ruby>が<ruby>渇<rt>かわ</rt></ruby>かなかったから。<br>*(Hình như uống không nhiều. Tối qua cũng không thấy khát.)* |
| Ngọc | <ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>は<ruby>乾<rt>かわ</rt></ruby>いていますか?<br>*(Trong miệng có cảm thấy khô không ạ?)* |
| Ông Kimura | ちょっとね。<br>*(Hơi khô một chút.)* |
| Ngọc | (gọi ngay) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>頭<rt>あたま</rt></ruby>がぼーっとして、<ruby>口<rt>くち</rt></ruby>の<ruby>乾燥<rt>かんそう</rt></ruby>もあります。<ruby>脱水<rt>だっすい</rt></ruby>が<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Chị Yamamoto ơi, ông Kimura đầu ngẩn ngơ và miệng có khô. Em lo mất nước ạ.)* |
| Yamamoto | よく<ruby>気<rt>き</rt></ruby>づいたね。<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>して。バイタルを<ruby>計<rt>はか</rt></ruby>ってもらいます。<br>*(Em phát hiện tốt lắm. Báo ngay với y tá nhé. Nhờ họ đo dấu hiệu sinh tồn.)* |

---

## Tình huống 5 — Phòng điều dưỡng · 10:15, báo cáo với y tá

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>看護師<rt>かんごし</rt></ruby>さん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>件<rt>けん</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Chị y tá ơi, em có báo cáo về ông Kimura ạ.)* |
| Y tá | はい、どうぞ。<br>*(Vâng, nói đi.)* |
| Ngọc | 10<ruby>時<rt>じ</rt></ruby>ごろ、<ruby>木村<rt>きむら</rt></ruby>さんから「<ruby>頭<rt>あたま</rt></ruby>がぼーっとする」と<ruby>言<rt>い</rt></ruby>われました。<ruby>口腔内<rt>こうくうない</rt></ruby>の<ruby>乾燥<rt>かんそう</rt></ruby>もあります。<ruby>昨日<rt>きのう</rt></ruby>から<ruby>水分<rt>すいぶん</rt></ruby><ruby>摂取量<rt>せっしゅりょう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないようです。<br>*(Khoảng 10 giờ, ông Kimura nói "đầu ngẩn ngơ". Có dấu hiệu khô trong miệng. Có vẻ lượng nước uống từ hôm qua đến nay ít.)* |
| Y tá | わかりました。バイタルを<ruby>計<rt>はか</rt></ruby>ります。グエンさん、<ruby>記録<rt>きろく</rt></ruby>の<ruby>水分<rt>すいぶん</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べてきてもらえますか?<br>*(Hiểu rồi. Tôi sẽ đo dấu hiệu sinh tồn. Em Nguyễn, em kiểm tra lại lượng nước uống ghi trong hồ sơ giúp tôi được không?)* |
| Ngọc | はい、すぐに<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em kiểm tra ngay ạ.)* |
| Y tá | (sau khi đo) <ruby>血圧<rt>けつあつ</rt></ruby>がやや<ruby>低<rt>ひく</rt></ruby>めです。<ruby>脱水<rt>だっすい</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があります。こまめに<ruby>水分<rt>すいぶん</rt></ruby>をとってもらいましょう。<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Huyết áp hơi thấp. Có khả năng mất nước. Cho ông ấy uống nước thường xuyên nhé. Quan sát tình trạng cho tôi.)* |
| Ngọc | わかりました。<ruby>記録<rt>きろく</rt></ruby>にも<ruby>書<rt>か</rt></ruby>いておきます。<br>*(Vâng. Em cũng ghi vào hồ sơ ạ.)* |

---

## Tình huống 6 — Phòng sinh hoạt · 11:00, ca ヒヤリハット — ông Kimura suýt ngã

| Vai | Lời thoại |
|---|---|
| Ngọc | (quan sát từ xa, thấy ông Kimura đứng dậy chóng mặt) <ruby>木村<rt>きむら</rt></ruby>さん!<br>*(Ông Kimura!)* |
| Ông Kimura | (loạng choạng, bám vào thành ghế) おっと...<ruby>立<rt>た</rt></ruby>ちくらみがした。<br>*(Ôi... chóng mặt khi đứng dậy.)* |
| Ngọc | (chạy đến đỡ) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか! ゆっくり<ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Ông có sao không! Ngồi xuống từ từ ạ.)* |
| Ông Kimura | ああ、びっくりした。<ruby>急<rt>きゅう</rt></ruby>に<ruby>立<rt>た</rt></ruby>ったら<ruby>目<rt>め</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>ったよ。<br>*(Ôi, giật mình. Đứng dậy nhanh quá nên chóng mặt.)* |
| Ngọc | (một tay đỡ lưng, giúp ông ngồi) そのまま<ruby>少<rt>すこ</rt></ruby>し<ruby>座<rt>すわ</rt></ruby>っていてください。すぐ<ruby>看護師<rt>かんごし</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>びます。<br>*(Ông cứ ngồi yên một lúc. Em gọi y tá ngay ạ.)* |
| Ông Kimura | いや、もう<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<br>*(Không cần, tôi ổn rồi.)* |
| Ngọc | でも<ruby>念<rt>ねん</rt></ruby>のため、<ruby>確認<rt>かくにん</rt></ruby>してもらいますね。(Yamamoto に報告へ向かう)<br>*(Nhưng để an toàn, em nhờ xác nhận nhé ạ. (Ngọc đi báo cáo Yamamoto))* |
| Yamamoto | <ruby>怪我<rt>けが</rt></ruby>はなかった?<br>*(Có bị thương không?)* |
| Ngọc | はい、<ruby>倒<rt>たお</rt></ruby>れる<ruby>前<rt>まえ</rt></ruby>に<ruby>気<rt>き</rt></ruby>づいて<ruby>支<rt>ささ</rt></ruby>えました。ヒヤリハットとして<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>しますか?<br>*(Vâng, em phát hiện trước khi ông ngã và đỡ kịp. Có cần ghi vào hồ sơ ヒヤリハット không ạ?)* |
| Yamamoto | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>書<rt>か</rt></ruby>いてください。<ruby>転倒<rt>てんとう</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があったことは<ruby>全部<rt>すべて</rt></ruby><ruby>記録<rt>きろく</rt></ruby>する。いい<ruby>判断<rt>はんだん</rt></ruby>でしたよ。<br>*(Vâng, nhất định phải ghi. Tất cả những gì có nguy cơ ngã đều phải ghi lại hết. Em phán đoán tốt lắm.)* |

---

## Tình huống 7 — Phòng nghỉ ngơi · 11:30, học cách viết ヒヤリハット

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、ヒヤリハットの<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えますね。<br>*(Em Nguyễn, chị dạy em cách viết hồ sơ ヒヤリハット nhé.)* |
| Ngọc | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng ạ, mong chị chỉ bảo.)* |
| Yamamoto | まず「<ruby>何時<rt>なんじ</rt></ruby>に」「<ruby>誰<rt>だれ</rt></ruby>が」「どこで」「どうなった」「どう<ruby>対応<rt>たいおう</rt></ruby>した」を<ruby>書<rt>か</rt></ruby>きます。<br>*(Trước tiên ghi "lúc mấy giờ", "ai", "ở đâu", "chuyện gì xảy ra", "đã xử lý như thế nào".)* |
| Ngọc | (ghi) <ruby>木村<rt>きむら</rt></ruby>さん、11<ruby>時<rt>じ</rt></ruby>、<ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がりの<ruby>際<rt>さい</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちくらみ...こんなふうに?<br>*(Ông Kimura, 11 giờ, tại phòng ăn, khi đứng dậy bị chóng mặt... viết kiểu này được không ạ?)* |
| Yamamoto | いいですね。それから「<ruby>原因<rt>げんいん</rt></ruby>と<ruby>今後<rt>こんご</rt></ruby>の<ruby>対策<rt>たいさく</rt></ruby>」も<ruby>書<rt>か</rt></ruby>きます。<br>*(Tốt. Sau đó ghi thêm "nguyên nhân và biện pháp phòng ngừa trong tương lai".)* |
| Ngọc | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>脱水<rt>だっすい</rt></ruby>によるめまい、<ruby>対策<rt>たいさく</rt></ruby>は<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>の<ruby>強化<rt>きょうか</rt></ruby>と<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がりのサポート...でしょうか。<br>*(Nguyên nhân là chóng mặt do mất nước, biện pháp là tăng cường bổ sung nước và hỗ trợ khi đứng dậy... có đúng không ạ?)* |
| Yamamoto | よくできました。ヒヤリハットは<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐための<ruby>大事<rt>だいじ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>ですよ。<br>*(Làm tốt lắm. ヒヤリハット là thông tin quan trọng để ngăn ngừa tai nạn đấy.)* |

---

## Tình huống 8 — Phòng sinh hoạt · 13:00, nhắc nước buổi chiều

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>午後<rt>ごご</rt></ruby>のお<ruby>茶<rt>ちゃ</rt></ruby>です。どうぞ。<br>*(Ông Tanaka, đây là trà buổi chiều ạ. Mời ông.)* |
| Ông Tanaka | ああ、ちょうどよかった。<ruby>暑<rt>あつ</rt></ruby>くてな。<br>*(Ừ, đúng lúc quá. Nóng lắm.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>暑<rt>あつ</rt></ruby>いですね。こまめに<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Hôm nay nóng đặc biệt nhỉ. Ông uống thường xuyên nhé.)* |
| Ông Tanaka | わかった。(uống một hơi dài) ふう、うまいな。<br>*(Biết rồi. (uống một ngụm dài) Uff, ngon thật.)* |
| Ngọc | (mỉm cười) よかったです。<ruby>食事<rt>しょくじ</rt></ruby>のときも<ruby>必<rt>かなら</rt></ruby>ずお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>飲<rt>の</rt></ruby>むようにしてください。<br>*(Cháu mừng ạ. Khi ăn cơm cũng nhớ uống trà nhé ạ.)* |
| Ông Tanaka | うん。あんた、ずいぶん<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くようになったな。<br>*(Ừ. Cháu chu đáo hơn nhiều rồi đấy.)* |
| Ngọc | ありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんのおかげです。<br>*(Cháu cảm ơn ông. Nhờ ông đấy ạ.)* |

---

## Tình huống 9 — Sân trong · 14:00, giải thích quy tắc ra ngoài mùa hè

| Vai | Lời thoại |
|---|---|
| Ông Kimura | グエンさん、<ruby>外<rt>そと</rt></ruby>に<ruby>出<rt>で</rt></ruby>たいんだけど。<ruby>庭<rt>にわ</rt></ruby>を<ruby>散歩<rt>さんぽ</rt></ruby>したいんだよ。<br>*(Em Nguyễn, tôi muốn ra ngoài. Muốn đi dạo trong vườn.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>気温<rt>きおん</rt></ruby>が38<ruby>度<rt>ど</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えています。<ruby>外出<rt>がいしゅつ</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですね。<br>*(Hôm nay nhiệt độ vượt 38 độ rồi. Ra ngoài sẽ khó ạ.)* |
| Ông Kimura | そうか。でも<ruby>閉<rt>と</rt></ruby>じこもりも<ruby>辛<rt>つら</rt></ruby>いなあ。<br>*(Vậy à. Nhưng ở trong mãi cũng khổ nhỉ.)* |
| Ngọc | そうですよね。<ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>涼<rt>すず</rt></ruby>しくなったら<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>庭<rt>にわ</rt></ruby>に<ruby>出<rt>で</rt></ruby>ませんか?17<ruby>時<rt>じ</rt></ruby>ごろなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em hiểu ạ. Buổi chiều mát hơn thì mình ra vườn cùng nhau nhé? Khoảng 17 giờ chắc ổn ạ.)* |
| Ông Kimura | ほんとか! じゃあ<ruby>楽<rt>たの</rt></ruby>しみにしているよ。<br>*(Thật không! Vậy tôi chờ đấy nhé.)* |
| Ngọc | はい。でもそのときも<ruby>帽子<rt>ぼうし</rt></ruby>と<ruby>水<rt>みず</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>持<rt>も</rt></ruby>っていきましょうね。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>の<ruby>予防<rt>よぼう</rt></ruby>のために。<br>*(Vâng. Nhưng lúc đó cũng nhớ mang mũ và nước nhé. Để phòng say nắng.)* |
| Ông Kimura | わかった、グエンさんは<ruby>心配<rt>しんぱい</rt></ruby>しいな。<br>*(Biết rồi, em Nguyễn hay lo nhỉ.)* |

---

## Tình huống 10 — Phòng của bà Sato · 14:30, phát hiện dấu hiệu đáng lo

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa, vào phòng) <ruby>佐藤<rt>さとう</rt></ruby>さん、お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Bà Sato, cháu mang trà vào ạ.)* |
| Bà Sato | (mặt đỏ, mắt lờ đờ, không đáp ngay)<br>*(mặt đỏ, mắt lờ đờ, không đáp ngay)* |
| Ngọc | (lo lắng) <ruby>佐藤<rt>さとう</rt></ruby>さん? <ruby>聞<rt>き</rt></ruby>こえますか?<br>*(Bà Sato? Bà có nghe thấy không ạ?)* |
| Bà Sato | (chậm chạp) ...あ、なに?<br>*(... À, cái gì?)* |
| Ngọc | (sờ trán nhẹ nhàng) <ruby>顔<rt>かお</rt></ruby>が<ruby>赤<rt>あか</rt></ruby>くて、<ruby>体<rt>からだ</rt></ruby>が<ruby>熱<rt>あつ</rt></ruby>いですね。すぐ<ruby>看護師<rt>かんごし</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>びます。そのまま<ruby>動<rt>うご</rt></ruby>かないでください。<br>*(Mặt bà đỏ và người nóng nhỉ. Em gọi y tá ngay. Bà đừng cử động nhé.)* |
| Ngọc | (chạy ra, gọi ngay) <ruby>看護師<rt>かんごし</rt></ruby>さん! <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>顔<rt>かお</rt></ruby>が<ruby>赤<rt>あか</rt></ruby>く、<ruby>反応<rt>はんのう</rt></ruby>が<ruby>鈍<rt>にぶ</rt></ruby>いです。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があります!<br>*(Chị y tá! Bà Sato mặt đỏ, phản ứng chậm. Có khả năng bị say nắng!)* |
| Y tá | わかりました、すぐ行きます。エアコンを<ruby>最強<rt>さいきょう</rt></ruby>にして、<ruby>濡<rt>ぬ</rt></ruby>れタオルを<ruby>首<rt>くび</rt></ruby>に当ててください。<br>*(Hiểu rồi, tôi đến ngay. Bật điều hòa mạnh nhất và đặt khăn ướt lên cổ cho bà.)* |
| Ngọc | はい!<br>*(Vâng!)* |

---

## Tình huống 11 — Sau khi bà Sato ổn · 16:00, Yamamoto tổng kết

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>点滴<rt>てんてき</rt></ruby>で<ruby>回復<rt>かいふく</rt></ruby>しました。グエンさんが<ruby>早<rt>はや</rt></ruby>く<ruby>気<rt>き</rt></ruby>づいてよかったです。<br>*(Bà Sato đã hồi phục nhờ truyền nước. May em Nguyễn phát hiện sớm.)* |
| Ngọc | よかったです。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>遅<rt>おそ</rt></ruby>かったら、と<ruby>思<rt>おも</rt></ruby>うと...。<br>*(Em mừng quá. Nếu phát hiện muộn hơn một chút thì...)* |
| Yamamoto | だから<ruby>夏<rt>なつ</rt></ruby>の<ruby>水分管理<rt>すいぶんかんり</rt></ruby>と<ruby>室温管理<rt>しつおんかんり</rt></ruby>はとても<ruby>大事<rt>だいじ</rt></ruby>なんです。<ruby>今日<rt>きょう</rt></ruby>はよく<ruby>動<rt>うご</rt></ruby>けましたよ。<br>*(Vì vậy việc quản lý nước và nhiệt độ phòng mùa hè rất quan trọng. Hôm nay em hành động tốt lắm.)* |
| Ngọc | <ruby>脱水<rt>だっすい</rt></ruby>と<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>のものですか?<br>*(Mất nước và say nắng là hai thứ khác nhau ạ?)* |
| Yamamoto | <ruby>脱水<rt>だっすい</rt></ruby>は<ruby>体内<rt>たいない</rt></ruby>の<ruby>水分<rt>すいぶん</rt></ruby>が<ruby>不足<rt>ふそく</rt></ruby>した<ruby>状態<rt>じょうたい</rt></ruby>、<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>は<ruby>高温<rt>こうおん</rt></ruby>で<ruby>体温<rt>たいおん</rt></ruby>が<ruby>調整<rt>ちょうせい</rt></ruby>できなくなった<ruby>状態<rt>じょうたい</rt></ruby>です。<ruby>脱水<rt>だっすい</rt></ruby>が<ruby>進<rt>すす</rt></ruby>むと<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>になりやすいです。<br>*(Mất nước là trạng thái cơ thể thiếu nước, say nắng là trạng thái cơ thể không điều chỉnh được thân nhiệt trong môi trường nóng. Mất nước nặng dễ dẫn đến say nắng.)* |
| Ngọc | よくわかりました。セットで<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em hiểu rõ rồi ạ. Em sẽ ghi nhớ cả hai cùng nhau.)* |

---

## Tình huống 12 — Ký túc xá · 21:30, đồng hương (mạch truyện)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế của lao động Việt.

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Ngọc ơi, mặt mày trắng ra. Hôm nay có chuyện gì à? |
| Ngọc | (tiếng Việt) Hôm nay suýt chút nữa bà Sato bị say nắng trong phòng. Em phát hiện kịp, gọi y tá vào truyền nước. |
| Hương | (tiếng Việt) Ôi trời, may quá. Mấy cụ người ta không biết khát nên nguy hiểm lắm hả? |
| Ngọc | (tiếng Việt) Đúng vậy. Xếp bảo người già cảm giác khát kém lắm. Mình phải nhắc từng người, ghi từng ly nước vào sổ theo dõi. Hôm nay em mới hiểu tại sao chăm người già mùa hè lại vất vả hơn. |
| Hương | (tiếng Việt) Ừ, mà mày xử lý được rồi đó là trưởng thành rồi đó. Năm ngoái mày mà gặp chắc đứng run. |
| Ngọc | (tiếng Việt) (cười) Ừ... chắc vậy. Nhưng mà vẫn còn sợ. Chỉ là không có thời gian sợ thôi. |

---

## Đọng lại chương 5

Mùa hè tháng 8, Ngọc học được bộ kỹ năng phòng sự cố nhiệt đặc trưng điều dưỡng Nhật: nhận biết **dấu hiệu mất nước** (口腔乾燥・ぼんやり・皮膚緊張低下), **nhắc bổ sung nước chủ động** (こちらから声かけ), **quản lý nhiệt độ phòng** (26–28 độ, hỏi ý kiến trước khi điều chỉnh), **phân biệt脱水 và 熱中症**, xử lý ca **ヒヤリハット** (ghi đầy đủ 5W + nguyên nhân + đối sách), và phản ứng nhanh khi phát hiện dấu hiệu say nắng (gọi ngay y tá, làm mát khẩn cấp). Đây là ca huấn luyện thực chiến đầu tiên Ngọc độc lập phát hiện nguy cơ.

> Từ vựng & mẫu câu chương này: 脱水・熱中症・水分補給・室温管理・冷房・水分摂取量・立ちくらみ・ヒヤリハット・体位変換・バイタル・点滴・口腔内乾燥・皮膚をつまむ・こまめに・看護師さんに報告する・念のため・対策', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000006, 800000028, NULL, 'markdown_book', 'T6. Chăm sa sút trí tuệ nâng cao (認知症ケアの深化)', '# Sách thực tập sinh điều dưỡng · T6. Chăm sa sút trí tuệ nâng cao (認知症ケアの深化)

> **Mục tiêu nhân vật:** Ngọc (25 tuổi, năm 2) áp dụng sâu hơn các kỹ thuật chăm 認知症 khi bà Sato có BPSD nặng hơn: 帰宅願望 (đòi về nhà), kích động chiều tối (夕暮れ症候群), không nhận ra nhân viên. Học 受容・共感 (tiếp nhận và đồng cảm), バリデーション (xác nhận cảm xúc), パーソンセンタードケア (chăm sóc lấy con người làm trung tâm), điều hướng nhẹ nhàng — không tranh cãi, không phủ nhận.

---

## Bối cảnh

Tháng 9 năm 2027. Vào mùa thu, bà Sato (88 tuổi, 認知症 nặng) xuất hiện BPSD (症状行動・心理症状) rõ hơn: chiều tối hay đòi về nhà, kích động, có khi không nhận ra nhân viên. Yamamoto giao Ngọc chủ động chăm bà Sato buổi chiều và học cách ứng xử đúng — không phủ nhận, không tranh cãi, thay vào đó lắng nghe, xác nhận cảm xúc và điều hướng khéo léo theo バリデーション và パーソンセンタードケア.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 13:30, Yamamoto hướng dẫn trước ca chiều

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>は<ruby>佐藤<rt>さとう</rt></ruby>さんを<ruby>担当<rt>たんとう</rt></ruby>してください。<ruby>最近<rt>さいきん</rt></ruby>、BPSD が<ruby>強<rt>つよ</rt></ruby>くなっています。<br>*(Em Nguyễn, chiều nay em phụ trách bà Sato nhé. Gần đây BPSD của bà mạnh hơn rồi.)* |
| Ngọc | BPSDというのは、どんな<ruby>症状<rt>しょうじょう</rt></ruby>ですか?<br>*(BPSD là những triệu chứng như thế nào ạ?)* |
| Yamamoto | <ruby>認知症<rt>にんちしょう</rt></ruby>によって<ruby>起<rt>お</rt></ruby>こる<ruby>行動<rt>こうどう</rt></ruby>・<ruby>心理<rt>しんり</rt></ruby>の<ruby>症状<rt>しょうじょう</rt></ruby>です。<ruby>帰宅願望<rt>きたくがんぼう</rt></ruby>、<ruby>夕暮<rt>ゆうぐ</rt></ruby>れ<ruby>症候群<rt>しょうこうぐん</rt></ruby>、<ruby>徘徊<rt>はいかい</rt></ruby>など。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>特<rt>とく</rt></ruby>に<ruby>夕方<rt>ゆうがた</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>くなります。<br>*(Là các triệu chứng hành vi và tâm lý xảy ra do 認知症. Đòi về nhà, kích động chiều tối, lang thang... Bà Sato đặc biệt hay nặng hơn vào buổi chiều.)* |
| Ngọc | どう<ruby>対応<rt>たいおう</rt></ruby>したらいいですか?<br>*(Phải ứng xử thế nào ạ?)* |
| Yamamoto | <ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なことは「<ruby>否定<rt>ひてい</rt></ruby>しない」こと。「<ruby>違<rt>ちが</rt></ruby>います」「そんなことありません」は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>言<rt>い</rt></ruby>わない。<br>*(Điều quan trọng nhất là "không phủ nhận". Tuyệt đối không nói "Không phải vậy" hay "Không có chuyện đó".)* |
| Ngọc | では、どう<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Vậy thì phải nói thế nào ạ?)* |
| Yamamoto | まず<ruby>気持<rt>きも</rt></ruby>ちを<ruby>受<rt>う</rt></ruby>けとめる。「そうですか、<ruby>帰<rt>かえ</rt></ruby>りたいんですね」と<ruby>言<rt>い</rt></ruby>ってから、ゆっくり<ruby>別<rt>べつ</rt></ruby>の<ruby>話題<rt>わだい</rt></ruby>に<ruby>持<rt>も</rt></ruby>っていく。これをバリデーションといいます。<br>*(Trước tiên tiếp nhận cảm xúc. Nói "Vậy ạ, bà muốn về nhà ạ" rồi từ từ chuyển sang chủ đề khác. Kỹ thuật này gọi là バリデーション.)* |
| Ngọc | はい、やってみます。<br>*(Vâng, em sẽ thử ạ.)* |

---

## Tình huống 2 — Phòng sinh hoạt · 14:00, bà Sato lần đầu đòi về nhà trong ca

| Vai | Lời thoại |
|---|---|
| Bà Sato | (đứng dậy, nhìn quanh lo lắng) あの...ここはどこ? <ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたいのに。<br>*(Kia... đây là đâu vậy? Bà muốn về nhà cơ mà.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>帰<rt>かえ</rt></ruby>りたいんですね。<br>*(Bà Sato, bà muốn về nhà ạ.)* |
| Bà Sato | そうよ、<ruby>早<rt>はや</rt></ruby>く<ruby>帰<rt>かえ</rt></ruby>らないといけないの。<ruby>子<rt>こ</rt></ruby>どもたちが<ruby>待<rt>ま</rt></ruby>っているから。<br>*(Đúng rồi, bà phải về sớm thôi. Các con đang chờ mà.)* |
| Ngọc | (nhẹ nhàng, không phủ nhận) お<ruby>子<rt>こ</rt></ruby>さんたちが<ruby>待<rt>ま</rt></ruby>っているんですね。みんな<ruby>元気<rt>げんき</rt></ruby>でしょうか。<br>*(Các con đang chờ bà ạ. Chắc mọi người đều khỏe chứ ạ?)* |
| Bà Sato | (biểu cảm dịu lại một chút) ええ、<ruby>太郎<rt>たろう</rt></ruby>はもう<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>行<rt>い</rt></ruby>っているし、<ruby>花子<rt>はなこ</rt></ruby>は<ruby>学校<rt>がっこう</rt></ruby>よ。<br>*(Ừ, Taro đi làm rồi, còn Hanako thì đi học.)* |
| Ngọc | そうですか。<ruby>太郎<rt>たろう</rt></ruby>さんと<ruby>花子<rt>はなこ</rt></ruby>さん、いいお<ruby>名前<rt>なまえ</rt></ruby>ですね。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>優<rt>やさ</rt></ruby>しいお<ruby>母<rt>かあ</rt></ruby>さんだったんでしょうね。<br>*(Vậy ạ. Taro và Hanako, tên đẹp nhỉ. Bà Sato chắc là người mẹ hiền lắm nhỉ.)* |
| Bà Sato | (cười nhẹ) まあ、そうかしら。<ruby>苦労<rt>くろう</rt></ruby>もしたけど。<br>*(Ừ nhỉ, không biết nữa. Cũng vất vả lắm đấy.)* |
| Ngọc | (nhẹ nhàng) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しこちらに<ruby>座<rt>すわ</rt></ruby>りましょうか。お<ruby>茶<rt>ちゃ</rt></ruby>でも<ruby>一緒<rt>いっしょ</rt></ruby>にいかがですか。<br>*(Bà Sato, mình ngồi xuống đây một chút nhé. Mình uống trà cùng nhau nhé ạ.)* |
| Bà Sato | (ngồi xuống) ...そうね、<ruby>少<rt>すこ</rt></ruby>しだけ。<br>*(... Ừ nhỉ, một chút thôi.)* |

---

## Tình huống 3 — Hành lang · 14:30, Ngọc báo cáo với Yamamoto

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>佐藤<rt>さとう</rt></ruby>さんが「<ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたい」とおっしゃっていました。<ruby>子<rt>こ</rt></ruby>どもたちが<ruby>待<rt>ま</rt></ruby>っていると<ruby>思<rt>おも</rt></ruby>っているみたいで。<br>*(Chị Yamamoto, bà Sato nói muốn về nhà. Có vẻ bà nghĩ các con đang chờ ạ.)* |
| Yamamoto | そうですか。どう<ruby>対応<rt>たいおう</rt></ruby>しましたか?<br>*(Vậy à. Em đã ứng xử thế nào?)* |
| Ngọc | 「<ruby>帰<rt>かえ</rt></ruby>りたいんですね」と<ruby>受<rt>う</rt></ruby>けとめて、お<ruby>子<rt>こ</rt></ruby>さんのことを<ruby>聞<rt>き</rt></ruby>きました。そうしたら<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んでくれました。<br>*(Em nói "Bà muốn về nhà ạ" để tiếp nhận, rồi hỏi về các con. Sau đó bà bình tĩnh lại và uống trà.)* |
| Yamamoto | よかったです。それが<ruby>正解<rt>せいかい</rt></ruby>です。<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>中<rt>なか</rt></ruby>では、お<ruby>子<rt>こ</rt></ruby>さんたちはまだ<ruby>小<rt>ちい</rt></ruby>さいんです。その<ruby>世界<rt>せかい</rt></ruby>を<ruby>尊重<rt>そんちょう</rt></ruby>することが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Tốt lắm. Đó là cách đúng. Trong tâm trí bà Sato, các con vẫn còn nhỏ. Tôn trọng thế giới của bà ấy là điều quan trọng.)* |
| Ngọc | でも、<ruby>本当<rt>ほんとう</rt></ruby>のことを<ruby>伝<rt>つた</rt></ruby>えなくていいんですか? お<ruby>子<rt>こ</rt></ruby>さんはもう<ruby>大人<rt>おとな</rt></ruby>で...。<br>*(Nhưng có cần nói thật không ạ? Các con đã lớn cả rồi mà...)* |
| Yamamoto | <ruby>今<rt>いま</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さんには「<ruby>現実<rt>げんじつ</rt></ruby>」を<ruby>伝<rt>つた</rt></ruby>えても<ruby>理解<rt>りかい</rt></ruby>できません。それより<ruby>安心<rt>あんしん</rt></ruby>してもらう<ruby>方<rt>ほう</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>認知症<rt>にんちしょう</rt></ruby>ケアでは「<ruby>正<rt>ただ</rt></ruby>しさ」より「<ruby>安心<rt>あんしん</rt></ruby>」を<ruby>優先<rt>ゆうせん</rt></ruby>します。<br>*(Với tình trạng hiện tại, bà Sato không thể hiểu được "thực tế". Quan trọng hơn là làm cho bà cảm thấy an tâm. Trong chăm 認知症, "sự an tâm" được ưu tiên hơn "sự đúng đắn".)* |
| Ngọc | はい、<ruby>深<rt>ふか</rt></ruby>くわかりました。<br>*(Vâng, em hiểu sâu hơn rồi ạ.)* |

---

## Tình huống 4 — Phòng bà Sato · 15:00, bà không nhận ra Ngọc

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa, vào phòng) <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Bà Sato, cháu là Nguyễn đây ạ. Cháu mang nước vào cho bà.)* |
| Bà Sato | (nhìn Ngọc đầy ngờ vực) あなた、誰? <ruby>知<rt>し</rt></ruby>らない<ruby>人<rt>ひと</rt></ruby>ね。<br>*(Cô là ai? Cô lạ không quen biết mà.)* |
| Ngọc | (bình tĩnh, mỉm cười nhẹ) グエンといいます。<ruby>佐藤<rt>さとう</rt></ruby>さんのお<ruby>世話<rt>せわ</rt></ruby>をしているスタッフです。<br>*(Cháu tên Nguyễn ạ. Cháu là nhân viên chăm sóc bà.)* |
| Bà Sato | そうなの? <ruby>見<rt>み</rt></ruby>たことないわ。<br>*(Vậy à? Tôi không nhớ thấy cô bao giờ cả.)* |
| Ngọc | そうですか。<ruby>佐藤<rt>さとう</rt></ruby>さん、お<ruby>茶<rt>ちゃ</rt></ruby>、どうぞ。<ruby>今日<rt>きょう</rt></ruby>は<ruby>涼<rt>すず</rt></ruby>しいですね。<br>*(Vậy ạ. Bà Sato, mời bà uống trà ạ. Hôm nay mát mẻ nhỉ.)* |
| Bà Sato | (nhìn cốc trà, do dự một chút rồi cầm) ...まあ、<ruby>飲<rt>の</rt></ruby>みましょうか。<br>*(... Thôi uống vậy.)* |
| Ngọc | (nhẹ nhàng ngồi cạnh) <ruby>外<rt>そと</rt></ruby>の<ruby>風<rt>かぜ</rt></ruby>が<ruby>気持<rt>きも</rt></ruby>ちいいですね。<ruby>秋<rt>あき</rt></ruby>になってきましたね。<br>*(Gió bên ngoài dễ chịu nhỉ. Mùa thu đến rồi nhỉ.)* |
| Bà Sato | そうねえ。(giọng dịu hơn) <ruby>秋<rt>あき</rt></ruby>は<ruby>好<rt>す</rt></ruby>きよ。<br>*(Ừ nhỉ. (giọng dịu lại) Bà thích mùa thu lắm đấy.)* |

---

## Tình huống 5 — Phòng sinh hoạt · 16:00, 夕暮れ症候群 bắt đầu

| Vai | Lời thoại |
|---|---|
| Bà Sato | (nhìn ra cửa sổ trời tối dần, bồn chồn đứng lên ngồi xuống) <ruby>早<rt>はや</rt></ruby>く<ruby>帰<rt>かえ</rt></ruby>らないと。<ruby>晩<rt>ばん</rt></ruby>ごはんを<ruby>作<rt>つく</rt></ruby>らないといけないから。<br>*(Phải về sớm thôi. Bà còn phải nấu cơm tối mà.)* |
| Ngọc | (ngồi xuống gần bà, giọng êm ái) <ruby>晩<rt>ばん</rt></ruby>ごはんを<ruby>作<rt>つく</rt></ruby>るんですね。どんなお<ruby>料理<rt>りょうり</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>ですか?<br>*(Bà nấu cơm tối ạ. Bà nấu món gì giỏi nhất vậy?)* |
| Bà Sato | (dừng lại, suy nghĩ) <ruby>肉<rt>にく</rt></ruby>じゃが...よく<ruby>作<rt>つく</rt></ruby>ったわ。<ruby>主人<rt>しゅじん</rt></ruby>が<ruby>好<rt>す</rt></ruby>きだったのよ。<br>*(Nikujaga... bà hay nấu món đó. Ông nhà thích lắm.)* |
| Ngọc | ほんとですか。<ruby>肉<rt>にく</rt></ruby>じゃが、<ruby>美味<rt>おい</rt></ruby>しそうですね。<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらえますか?<br>*(Thật ạ. Nikujaga nghe có vẻ ngon nhỉ. Bà dạy cháu cách nấu được không ạ?)* |
| Bà Sato | (biểu cảm sáng lên) そうね、まず<ruby>玉<rt>たま</rt></ruby>ねぎを<ruby>炒<rt>いた</rt></ruby>めて...お<ruby>肉<rt>にく</rt></ruby>もね。<br>*(Ừ nhỉ, trước tiên xào hành tây lên... rồi thịt nữa.)* |
| Ngọc | (ghi chép như thật) ふんふん、<ruby>玉<rt>たま</rt></ruby>ねぎを<ruby>先<rt>さき</rt></ruby>に<ruby>炒<rt>いた</rt></ruby>めるんですね。<br>*(Vâng vâng, xào hành tây trước ạ.)* |
| Bà Sato | (đang kể, bớt bồn chồn) そう、そして<ruby>砂糖<rt>さとう</rt></ruby>と<ruby>醤油<rt>しょうゆ</rt></ruby>で...<br>*(Đúng rồi, rồi thêm đường và nước tương vào...)* |

---

## Tình huống 6 — Phòng sinh hoạt · 16:30, bà Sato kích động, không muốn ở lại

| Vai | Lời thoại |
|---|---|
| Bà Sato | (giọng nâng lên đột ngột) やっぱり<ruby>帰<rt>かえ</rt></ruby>ります! <ruby>離<rt>はな</rt></ruby>してください! ここにいたくない!<br>*(Bà vẫn về! Buông ra! Bà không muốn ở đây!)* |
| Ngọc | (không cầm giữ, ngồi xuống cạnh bà, giọng thấp và bình tĩnh) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>帰<rt>かえ</rt></ruby>りたいんですね。<ruby>辛<rt>つら</rt></ruby>いですね。<br>*(Bà Sato, bà muốn về nhà ạ. Chắc bà khổ lắm nhỉ.)* |
| Bà Sato | (giọng run run) <ruby>誰<rt>だれ</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かってくれないのよ。<br>*(Chẳng ai hiểu bà cả.)* |
| Ngọc | そうですか。<ruby>分<rt>わ</rt></ruby>かってもらえなくて、<ruby>寂<rt>さび</rt></ruby>しいですよね。<br>*(Vậy ạ. Không được ai hiểu, cô đơn lắm nhỉ.)* |
| Bà Sato | (dừng lại, nhìn Ngọc) ...あなた、<ruby>優<rt>やさ</rt></ruby>しいのね。<br>*(... Cô tốt bụng nhỉ.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんのことが<ruby>心配<rt>しんぱい</rt></ruby>なんです。ここには<ruby>佐藤<rt>さとう</rt></ruby>さんをちゃんと<ruby>見<rt>み</rt></ruby>てくれるスタッフがいます。<ruby>安心<rt>あんしん</rt></ruby>してくださいね。<br>*(Cháu lo cho bà mà ạ. Ở đây có nhân viên chăm sóc bà đàng hoàng. Bà yên tâm nhé.)* |
| Bà Sato | (ngồi xuống, thở dài) ...そう。<br>*(... Vậy à.)* |

---

## Tình huống 7 — Phòng nghỉ nhân viên · 17:00, Yamamoto nhận xét và dạy thêm

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>対応<rt>たいおう</rt></ruby>、よく<ruby>見<rt>み</rt></ruby>ていましたよ。<br>*(Em Nguyễn, chị đã quan sát cách em ứng xử với bà Sato hôm nay đấy.)* |
| Ngọc | <ruby>最後<rt>さいご</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてくれました。でも、<ruby>途中<rt>とちゅう</rt></ruby>、どう<ruby>言<rt>い</rt></ruby>えばいいか、<ruby>迷<rt>まよ</rt></ruby>うことがありました。<br>*(Cuối cùng bà bình tĩnh lại rồi. Nhưng ở giữa có lúc em không biết nói gì.)* |
| Yamamoto | それは<ruby>自然<rt>しぜん</rt></ruby>なことです。パーソンセンタードケアの<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。「<ruby>病気<rt>びょうき</rt></ruby>を<ruby>見<rt>み</rt></ruby>る」ではなく「その<ruby>人<rt>ひと</rt></ruby>を<ruby>見<rt>み</rt></ruby>る」です。<br>*(Điều đó là tự nhiên. Em hãy nhớ cách nghĩ của パーソンセンタードケア. Không phải "nhìn vào bệnh tật" mà là "nhìn vào con người đó".)* |
| Ngọc | <ruby>人<rt>ひと</rt></ruby>を<ruby>見<rt>み</rt></ruby>る...ということは、<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>人生<rt>じんせい</rt></ruby>や<ruby>好<rt>す</rt></ruby>きなことを<ruby>知<rt>し</rt></ruby>ることも<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Nhìn vào con người... tức là việc biết về cuộc đời và sở thích của bà Sato cũng quan trọng ạ?)* |
| Yamamoto | そうです。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>昔<rt>むかし</rt></ruby>、<ruby>料理<rt>りょうり</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>で、<ruby>音楽<rt>おんがく</rt></ruby>も<ruby>好<rt>す</rt></ruby>きでした。それを<ruby>活<rt>い</rt></ruby>かすと<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>くことがあります。今日、<ruby>料理<rt>りょうり</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしたのは<ruby>正解<rt>せいかい</rt></ruby>でしたよ。<br>*(Đúng vậy. Hồi trước bà Sato nấu ăn giỏi và thích âm nhạc. Tận dụng điều đó đôi khi giúp bà bình tĩnh. Hôm nay em nói chuyện về nấu ăn là đúng đấy.)* |
| Ngọc | はい、<ruby>佐藤<rt>さとう</rt></ruby>さんのことをもっと<ruby>知<rt>し</rt></ruby>りたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng, em muốn tìm hiểu thêm về bà Sato ạ.)* |

---

## Tình huống 8 — Phòng bà Sato · 17:30, thử dùng âm nhạc để dịu cơn kích động

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>音楽<rt>おんがく</rt></ruby>はお<ruby>好<rt>す</rt></ruby>きですか?<br>*(Bà Sato, bà thích âm nhạc không ạ?)* |
| Bà Sato | ええ、<ruby>演歌<rt>えんか</rt></ruby>が<ruby>好<rt>す</rt></ruby>きよ。<ruby>昔<rt>むかし</rt></ruby>よく<ruby>聴<rt>き</rt></ruby>いていたの。<br>*(Bà thích enka lắm. Ngày xưa hay nghe lắm.)* |
| Ngọc | いい<ruby>曲<rt>きょく</rt></ruby>ですね。(bật nhạc nhẹ nhàng) こんな<ruby>感<rt>かん</rt></ruby>じの<ruby>曲<rt>きょく</rt></ruby>はどうですか?<br>*(Hay nhỉ. (bật nhạc lên nhẹ nhàng) Loại nhạc kiểu này có được không ạ?)* |
| Bà Sato | (lắng nghe, biểu cảm mềm ra) ああ、この<ruby>歌<rt>うた</rt></ruby>は...。<br>*(À, bài hát này...)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>若<rt>わか</rt></ruby>い<ruby>頃<rt>ころ</rt></ruby>に<ruby>聴<rt>き</rt></ruby>いていたんですか?<br>*(Hồi trẻ bà hay nghe bài này ạ?)* |
| Bà Sato | そうよ。<ruby>主人<rt>しゅじん</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>によく...。(giọng trầm lại) なつかしいわね。<br>*(Đúng rồi. Hay nghe cùng ông nhà... (giọng trầm lại) Hoài niệm nhỉ.)* |
| Ngọc | (ngồi cạnh, yên lặng một chút) <ruby>素敵<rt>すてき</rt></ruby>な<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>で</rt></ruby>ですね。<br>*(Kỷ niệm đẹp nhỉ.)* |
| Bà Sato | (thở nhẹ, bớt bồn chồn) そうね...<ruby>帰<rt>かえ</rt></ruby>ることは、また<ruby>今度<rt>こんど</rt></ruby>ね。<br>*(Ừ nhỉ... chuyện về nhà, hôm khác vậy nhé.)* |

---

## Tình huống 9 — Phòng sinh hoạt · 18:00, bữa tối và nhắc thuốc

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>晩<rt>ばん</rt></ruby>ごはんの<ruby>時間<rt>じかん</rt></ruby>ですよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょうか。<br>*(Bà Sato, đến giờ ăn tối rồi ạ. Mình đi cùng nhé.)* |
| Bà Sato | ええ、<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Ừ, đi thôi.)* |
| Ngọc | (đến phòng ăn, giúp bà ngồi vào ghế) <ruby>今日<rt>きょう</rt></ruby>のごはん、おいしそうですね。<br>*(Cơm tối hôm nay trông ngon nhỉ.)* |
| Bà Sato | そうね。(ăn một muỗng, gật đầu) おいしいわね。<br>*(Ừ nhỉ. (ăn một muỗng, gật đầu) Ngon thật.)* |
| Ngọc | (sau bữa ăn, đưa thuốc) <ruby>食後<rt>しょくご</rt></ruby>のお<ruby>薬<rt>くすり</rt></ruby>です。お<ruby>水<rt>みず</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Đây là thuốc sau bữa ăn ạ. Mời bà uống cùng với nước nhé.)* |
| Bà Sato | (nhìn thuốc, do dự) これは<ruby>何<rt>なん</rt></ruby>の<ruby>薬<rt>くすり</rt></ruby>?<br>*(Đây là thuốc gì vậy?)* |
| Ngọc | <ruby>体<rt>からだ</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>をよくする<ruby>薬<rt>くすり</rt></ruby>です。お<ruby>医者<rt>いしゃ</rt></ruby>さんが<ruby>出<rt>だ</rt></ruby>してくれましたよ。<br>*(Là thuốc giúp cơ thể khỏe hơn ạ. Bác sĩ đã kê cho bà đó.)* |
| Bà Sato | ああ、そう。じゃあ<ruby>飲<rt>の</rt></ruby>みましょうか。<br>*(À, vậy à. Thì uống vậy.)* |

---

## Tình huống 10 — Phòng bà Sato · 19:00, chuẩn bị ngủ và ghi chép BPSD

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、もう<ruby>夜<rt>よる</rt></ruby>ですよ。ゆっくり<ruby>休<rt>やす</rt></ruby>みましょうか。<br>*(Bà Sato, tối rồi đấy ạ. Mình nghỉ ngơi nhé.)* |
| Bà Sato | そうね...ちょっと<ruby>眠<rt>ねむ</rt></ruby>たい<ruby>気<rt>き</rt></ruby>もするし。<br>*(Ừ nhỉ... cũng hơi buồn ngủ rồi.)* |
| Ngọc | (giúp bà nằm xuống, đắp chăn) お<ruby>休<rt>やす</rt></ruby>みなさい、<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(Chúc bà ngủ ngon, bà Sato ạ.)* |
| Bà Sato | ...ありがとうね、<ruby>優<rt>やさ</rt></ruby>しい<ruby>子<rt>こ</rt></ruby>。<br>*(... Cảm ơn cháu, cháu ngoan thật.)* |
| Ngọc | (xúc động nhẹ, ghi hồ sơ ngoài hành lang) <ruby>佐藤<rt>さとう</rt></ruby>さん、16<ruby>時<rt>じ</rt></ruby>ごろ<ruby>帰宅願望<rt>きたくがんぼう</rt></ruby>あり。<ruby>夕暮<rt>ゆうぐ</rt></ruby>れ<ruby>症候群<rt>しょうこうぐん</rt></ruby>の<ruby>症状<rt>しょうじょう</rt></ruby>みられた。<ruby>料理<rt>りょうり</rt></ruby>の<ruby>話題<rt>わだい</rt></ruby>と<ruby>音楽<rt>おんがく</rt></ruby>で<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>かれた。<ruby>夕食<rt>ゆうしょく</rt></ruby>、<ruby>服薬<rt>ふくやく</rt></ruby>とも<ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Bà Sato, khoảng 16 giờ có 帰宅願望. Thấy triệu chứng 夕暮れ症候群. Bình tĩnh lại nhờ chủ đề nấu ăn và âm nhạc. Bữa tối và uống thuốc đều hoàn tất.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · 19:30, đồng nghiệp trao đổi kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>担当<rt>たんとう</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>だったでしょう?<br>*(Em Nguyễn, phụ trách bà Sato chắc vất vả nhỉ?)* |
| Ngọc | はい。でも、<ruby>料理<rt>りょうり</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしたら<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてくれました。<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>好<rt>す</rt></ruby>きなことを<ruby>知<rt>し</rt></ruby>っておくと<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Vâng. Nhưng khi nói chuyện về nấu ăn thì bà bình tĩnh lại. Em nghĩ biết sở thích của bà rất hữu ích.)* |
| Mai-san | そうですね。<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は、<ruby>長期記憶<rt>ちょうききおく</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>っていることが<ruby>多<rt>おお</rt></ruby>いです。だから<ruby>昔<rt>むかし</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>は<ruby>反応<rt>はんのう</rt></ruby>がいいんですよ。<br>*(Đúng vậy. Người bị 認知症 thường giữ được ký ức dài hạn. Vì vậy chuyện ngày xưa hay được phản ứng tốt đấy.)* |
| Ngọc | なるほど。<ruby>短期記憶<rt>たんきおく</rt></ruby>と<ruby>長期記憶<rt>ちょうきおく</rt></ruby>...ケアにも<ruby>活<rt>い</rt></ruby>かせるんですね。<br>*(Ra vậy. Ký ức ngắn hạn và ký ức dài hạn... có thể ứng dụng vào chăm sóc nhỉ.)* |
| Mai-san | はい。グエンさん、<ruby>認知症<rt>にんちしょう</rt></ruby>ケアが<ruby>上手<rt>うま</rt></ruby>くなりましたよ。<br>*(Vâng. Em Nguyễn tiến bộ trong chăm 認知症 rồi đấy.)* |
| Ngọc | ありがとうございます。まだまだですが、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn chị. Em vẫn còn phải học nhiều, nhưng em sẽ cố ạ.)* |

---

## Tình huống 12 — Ký túc xá · 22:00, đồng hương (mạch truyện)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế của lao động Việt.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Sao hôm nay mặt tư lự vậy Ngọc? |
| Ngọc | (tiếng Việt) Hôm nay chăm bà Sato anh ơi. Bà bị認知症 nặng rồi, chiều nào cũng đòi về nhà, không nhận ra nhân viên. |
| Đức | (tiếng Việt) Nghe vất vả. Mà mày xử được không? |
| Ngọc | (tiếng Việt) Được. Em nói chuyện về nấu ăn, bật nhạc enka cho bà nghe... bà bình tĩnh lại. Nhưng mà cảm giác kỳ lạm anh. Mình không phủ nhận bà, không nói "bà ơi các con lớn rồi", chỉ nói "bà muốn về nhà ạ, bà nấu món gì ngon nhất?"... |
| Đức | (tiếng Việt) Ừ, tâm lý mà. Không phải tranh cãi ai đúng. Cái này học mãi mới quen được đó. |
| Ngọc | (tiếng Việt) Lúc bà nói "cảm ơn cháu, cháu ngoan thật" trước khi ngủ... em thấy nghề này có ý nghĩa thật. Không phải chỉ là thay tã hay tắm. |
| Đức | (tiếng Việt) Ừ. Nhớ cái đó đi. Hôm nào chán nản thì nhớ lại. |

---

## Đọng lại chương 6

Tháng 9 — Ngọc bước vào tầng sâu hơn của 認知症 care: không phải kỹ thuật thân thể mà là **nghệ thuật giao tiếp và tôn trọng thế giới nội tâm** của người bệnh. Các kỹ năng học được: **バリデーション** (xác nhận cảm xúc, không phủ nhận), **受容・共感** (tiếp nhận và đồng cảm), **パーソンセンタードケア** (dùng lịch sử cá nhân — sở thích nấu ăn, âm nhạc — để tiếp cận), **điều hướng nhẹ nhàng** khi 帰宅願望 và 夕暮れ症候群, phân biệt ký ức **短期** (hỏng) và **長期** (còn lại) để khai thác trong hội thoại, và ghi hồ sơ BPSD chuẩn.

> Từ vựng & mẫu câu chương này: 認知症・BPSD・帰宅願望・夕暮れ症候群・バリデーション・受容・共感・パーソンセンタードケア・否定しない・長期記憶・短期記憶・服薬・落ち着く・安心する・尊重する・気持ちを受けとめる・〜んですね（共感表現）・なつかしい', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000007, 800000028, NULL, 'markdown_book', 'T7. Khởi đầu giai đoạn cuối (看取りの始まり)', '# Sách thực tập sinh điều dưỡng · T7. Khởi đầu giai đoạn cuối (看取りの始まり)

> **Mục tiêu nhân vật:** Ngọc (năm 2, 10/2027) lần đầu đối diện thực tế bà Sato — người Ngọc chăm sóc từ năm đầu — bước vào giai đoạn cuối đời. Học về khái niệm 看取り, cách nhận biết dấu hiệu 終末期, vai trò nhân viên điều dưỡng trong 看取りケア. Cảm xúc lẫn lộn nhưng giữ được sự chuyên nghiệp.

---

## Bối cảnh

Tháng 10 năm 2027. Bà Sato (88 tuổi, mắc 認知症) — người mà Ngọc gắn bó từ năm đầu — bắt đầu ăn kém, ngủ nhiều hơn, sức khỏe suy giảm rõ rệt. Yamamoto nhận ra các dấu hiệu 終末期 (giai đoạn cuối đời) và bắt đầu hướng dẫn đội ngũ về 看取りケア. Gia đình bà Sato được mời họp. Ngọc vừa lo lắng vừa cố học cách đồng hành đúng đắn.

---

## Tình huống 1 — Phòng bà Sato · 7:30, buổi sáng phát hiện bà ăn kém hơn

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、おはようございます。<ruby>朝食<rt>ちょうしょく</rt></ruby>のお<ruby>時間<rt>じかん</rt></ruby>です。<br>*(Bà Sato, chào buổi sáng ạ. Đến giờ ăn sáng rồi ạ.)* |
| Bà Sato | ......ん......。<br>*(......ừ......)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>はおかゆです。<ruby>少<rt>すこ</rt></ruby>し<ruby>食<rt>た</rt></ruby>べてみましょうか。<br>*(Hôm nay là cháo. Mình ăn thử một ít nhé bà.)* |
| Bà Sato | (lắc đầu nhẹ) ...いらない......。<br>*(...Không cần......)* |
| Ngọc | (nhẹ nhàng) そうですか。<ruby>無理<rt>むり</rt></ruby>しなくていいですよ。お<ruby>水<rt>みず</rt></ruby>は<ruby>飲<rt>の</rt></ruby>めますか?<br>*(Vậy ạ. Bà không cần cố đâu. Bà uống nước được không ạ?)* |
| Bà Sato | ......<br>*(không trả lời, nhắm mắt lại)* |
| Ngọc | (ghi chép nhẹ tay, rồi đi ra hành lang, nói với Yamamoto) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>今朝<rt>けさ</rt></ruby>もほとんど<ruby>食<rt>た</rt></ruby>べていません。お<ruby>水<rt>みず</rt></ruby>も<ruby>飲<rt>の</rt></ruby>まれませんでした。<br>*(Chị Yamamoto, sáng nay bà Sato lại hầu như không ăn. Bà cũng không uống nước ạ.)* |
| Yamamoto | そうですか。わかりました。<ruby>記録<rt>きろく</rt></ruby>しておいてください。あとで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Vậy ạ. Em ghi chép lại nhé. Lát mình cùng kiểm tra.)* |

---

## Tình huống 2 — Phòng y tế · 9:00, Yamamoto giải thích dấu hiệu 終末期

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>佐藤<rt>さとう</rt></ruby>さんのことで<ruby>話<rt>はなし</rt></ruby>があります。<br>*(Em Nguyễn, chị có chuyện cần nói về bà Sato.)* |
| Ngọc | はい。<ruby>何<rt>なに</rt></ruby>かありましたか?<br>*(Vâng ạ. Có chuyện gì không chị?)* |
| Yamamoto | ここ<ruby>数週間<rt>すうしゅうかん</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>食事量<rt>しょくじりょう</rt></ruby>が<ruby>大きく<rt>おおきく</rt></ruby><ruby>減<rt>へ</rt></ruby>って、<ruby>睡眠<rt>すいみん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>も<ruby>長<rt>なが</rt></ruby>くなっています。これは「<ruby>終末期<rt>しゅうまつき</rt></ruby>」のサインかもしれません。<br>*(Mấy tuần nay, lượng ăn của bà Sato giảm nhiều, thời gian ngủ cũng dài hơn. Đây có thể là dấu hiệu "giai đoạn cuối đời".)* |
| Ngọc | <ruby>終末期<rt>しゅうまつき</rt></ruby>...というのは、どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Giai đoạn cuối đời... nghĩa là như thế nào ạ?)* |
| Yamamoto | <ruby>命<rt>いのち</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりに<ruby>近<rt>ちか</rt></ruby>づいている<ruby>状態<rt>じょうたい</rt></ruby>のことです。<ruby>医学的<rt>いがくてき</rt></ruby>に<ruby>回復<rt>かいふく</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくなってきた<ruby>時期<rt>じき</rt></ruby>です。<br>*(Là trạng thái sự sống đang dần đến hồi kết. Là giai đoạn về mặt y tế việc hồi phục đã trở nên khó khăn.)* |
| Ngọc | ......はい。<br>*(......Vâng ạ.)* |
| Yamamoto | <ruby>難<rt>むずか</rt></ruby>しいことですが、これも<ruby>介護<rt>かいご</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>一部<rt>いちぶ</rt></ruby>です。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えていきましょう。<br>*(Đây là điều khó khăn, nhưng đây cũng là một phần công việc điều dưỡng. Mình cùng suy nghĩ về điều này nhé.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 9:30, học khái niệm 看取り

| Vai | Lời thoại |
|---|---|
| Yamamoto | 「<ruby>看取<rt>みと</rt></ruby>り」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いたことがありますか?<br>*(Em có nghe từ "Mitori" chưa?)* |
| Ngọc | <ruby>言葉<rt>ことば</rt></ruby>は<ruby>聞<rt>き</rt></ruby>いたことがありますが、<ruby>詳<rt>くわ</rt></ruby>しくは<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Em có nghe từ này nhưng không hiểu kỹ ạ.)* |
| Yamamoto | 「<ruby>看取<rt>みと</rt></ruby>り」とは、<ruby>終末期<rt>しゅうまつき</rt></ruby>の<ruby>方<rt>かた</rt></ruby>が、できるだけ<ruby>穏<rt>おだ</rt></ruby>やかに、その<ruby>方<rt>かた</rt></ruby>らしく<ruby>最期<rt>さいご</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えられるように<ruby>支援<rt>しえん</rt></ruby>することです。<br>*(Mitori là việc hỗ trợ để người trong giai đoạn cuối đời có thể đón nhận những ngày cuối một cách bình yên, đúng với con người họ nhất.)* |
| Ngọc | <ruby>治療<rt>ちりょう</rt></ruby>ではなくて、<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>うことですか?<br>*(Không phải điều trị mà là đồng hành ạ?)* |
| Yamamoto | そうです。とてもいい<ruby>理解<rt>りかい</rt></ruby>です。<ruby>無理<rt>むり</rt></ruby>な<ruby>延命<rt>えんめい</rt></ruby>をするのではなく、その<ruby>人<rt>ひと</rt></ruby>らしい<ruby>時間<rt>じかん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にする<ruby>ケア<rt>ケア</rt></ruby>です。<br>*(Đúng vậy. Em hiểu rất tốt. Không phải kéo dài sự sống bằng mọi giá, mà là chăm sóc trân trọng những khoảng thời gian mang dấu ấn của chính người đó.)* |
| Ngọc | はい......。<ruby>メモ<rt>メモ</rt></ruby>します。<br>*(Vâng...... Em ghi lại ạ.)* |
| Yamamoto | <ruby>看取<rt>みと</rt></ruby>りは、<ruby>本人<rt>ほんにん</rt></ruby>だけでなく、<ruby>ご家族<rt>ごかぞく</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>支援<rt>しえん</rt></ruby>します。そこも<ruby>私<rt>わたし</rt></ruby>たちの<ruby>役割<rt>やくわり</rt></ruby>です。<br>*(Mitori không chỉ hỗ trợ bản thân người đó, mà còn hỗ trợ gia đình họ cùng. Đó cũng là vai trò của chúng ta.)* |

---

## Tình huống 4 — Phòng bà Sato · 10:00, chăm sóc buổi sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa nhẹ) <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>りますね。<br>*(Bà Sato, cháu là Nguyễn. Cháu vào nhé ạ.)* |
| Bà Sato | (mắt lờ đờ mở ra) ......あら。<br>*(......ồ.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>もお<ruby>顔<rt>かお</rt></ruby>をふきますね。<ruby>気持<rt>きも</rt></ruby>ちいいですよ。<br>*(Hôm nay cháu lau mặt cho bà nhé. Dễ chịu lắm đấy ạ.)* |
| Bà Sato | ......うん......。<br>*(......ừ......)* |
| Ngọc | (lau mặt thật nhẹ nhàng) <ruby>少<rt>すこ</rt></ruby>し<ruby>温<rt>あたた</rt></ruby>かいですよ。いいですか?<br>*(Hơi ấm một chút nhé bà. Bà có thấy ổn không?)* |
| Bà Sato | ......<ruby>気持<rt>きも</rt></ruby>ちいい......ねえ......。<br>*(......Dễ chịu......nhỉ......)* |
| Ngọc | よかったです。ゆっくりでいいですよ。ここにいますから。<br>*(Cháu mừng quá. Bà cứ từ từ thôi. Cháu ở đây với bà mà.)* |
| Bà Sato | (mỉm cười yếu) ......ありがとう......。<br>*(......Cảm ơn......)* |

---

## Tình huống 5 — Hành lang · 11:00, cuộc họp với gia đình bà Sato (chuẩn bị)

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby>さんのご<ruby>家族<rt>かぞく</rt></ruby>と<ruby>面談<rt>めんだん</rt></ruby>があります。<br>*(Em Nguyễn, chiều hôm nay có buổi họp mặt với gia đình bà Sato.)* |
| Ngọc | はい。<ruby>何<rt>なに</rt></ruby>を<ruby>話<rt>はな</rt></ruby>しますか?<br>*(Vâng ạ. Mình sẽ nói những gì ạ?)* |
| Yamamoto | <ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>現在<rt>げんざい</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>と、これからの<ruby>方針<rt>ほうしん</rt></ruby>についてです。<ruby>看取<rt>みと</rt></ruby>りの<ruby>ケア<rt>ケア</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>するかどうかも、ご<ruby>家族<rt>かぞく</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>決<rt>き</rt></ruby>めます。<br>*(Về tình trạng hiện tại của bà Sato và phương hướng sắp tới. Việc có chuyển sang chăm sóc Mitori không cũng sẽ cùng gia đình quyết định.)* |
| Ngọc | ご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は......<ruby>知<rt>し</rt></ruby>っていますか? <ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>状態<rt>じょうたい</rt></ruby>を。<br>*(Gia đình bà ấy......họ có biết không ạ? Về tình trạng của bà Sato.)* |
| Yamamoto | <ruby>先週<rt>せんしゅう</rt></ruby>、<ruby>主治医<rt>しゅじい</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>がいっています。ただ、<ruby>実際<rt>じっさい</rt></ruby>に<ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>にすると、<ruby>気持<rt>きも</rt></ruby>ちの<ruby>整理<rt>せいり</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>なこともあります。<br>*(Tuần trước bác sĩ phụ trách đã liên lạc rồi. Nhưng khi phải đối mặt trực tiếp, việc sắp xếp cảm xúc cũng rất khó.)* |
| Ngọc | はい......。わかりました。<ruby>私<rt>わたし</rt></ruby>は<ruby>面談<rt>めんだん</rt></ruby>に<ruby>同席<rt>どうせき</rt></ruby>しますか?<br>*(Vâng...... Em hiểu ạ. Cháu có tham dự buổi họp không ạ?)* |
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>として<ruby>同席<rt>どうせき</rt></ruby>してください。<ruby>発言<rt>はつげん</rt></ruby>はしなくていいです。<ruby>ご家族<rt>ごかぞく</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>学<rt>まな</rt></ruby>ぶためです。<br>*(Hôm nay em tham dự để quan sát nhé. Không cần phát biểu. Để học cách hiểu cảm xúc của gia đình.)* |

---

## Tình huống 6 — Phòng họp · 14:00, buổi họp gia đình bà Sato

| Vai | Lời thoại |
|---|---|
| Yamamoto | (với con gái bà Sato) <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>最近<rt>さいきん</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>についてご<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Cảm ơn gia đình đã đến dù bận rộn. Tôi sẽ giải thích về tình trạng gần đây của bà Sato.)* |
| Con gái bà Sato | はい......お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng...... Mong chị giải thích ạ.)* |
| Yamamoto | ここ<ruby>数週間<rt>すうしゅうかん</rt></ruby>、<ruby>食事<rt>しょくじ</rt></ruby>が<ruby>進<rt>すす</rt></ruby>まない<ruby>日<rt>ひ</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>いています。<ruby>睡眠<rt>すいみん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>も<ruby>長<rt>なが</rt></ruby>くなり、<ruby>医師<rt>いし</rt></ruby>も<ruby>終末期<rt>しゅうまつき</rt></ruby>のサインと<ruby>判断<rt>はんだん</rt></ruby>しています。<br>*(Nhiều tuần nay những ngày bà ăn kém vẫn tiếp tục. Thời gian ngủ cũng dài hơn, bác sĩ cũng nhận định đây là dấu hiệu của giai đoạn cuối.)* |
| Con gái bà Sato | (giọng run) そう......ですか......。<br>*(Vậy...... ạ......)* |
| Yamamoto | これからのことについて、ご<ruby>家族<rt>かぞく</rt></ruby>のご<ruby>意向<rt>いこう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせいただけますか。<ruby>看取<rt>みと</rt></ruby>りのケアに<ruby>移行<rt>いこう</rt></ruby>することについて、どのようにお<ruby>考<rt>かんが</rt></ruby>えですか?<br>*(Về những gì sắp tới, gia đình có thể cho chúng tôi biết ý kiến không. Về việc chuyển sang chăm sóc Mitori, gia đình nghĩ như thế nào?)* |
| Con gái bà Sato | (dừng lại) ......<ruby>母<rt>はは</rt></ruby>が......できるだけ<ruby>苦<rt>くる</rt></ruby>しまないように......お<ruby>願<rt>ねが</rt></ruby>いしたいです。<br>*(......Con chỉ mong mẹ......không phải chịu đựng nhiều......xin nhờ mọi người ạ.)* |
| Yamamoto | はい。<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>過<rt>す</rt></ruby>ごせるよう、<ruby>私<rt>わたし</rt></ruby>たちスタッフ<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>支<rt>ささ</rt></ruby>えていきます。<br>*(Vâng. Tất cả nhân viên chúng tôi sẽ cùng nhau hỗ trợ để bà Sato có thể trải qua những ngày này thật bình yên.)* |
| Ngọc | (ngồi im, cúi đầu nhẹ)<br>*(lặng lẽ cúi đầu)* |

---

## Tình huống 7 — Hành lang · 15:00, sau cuộc họp gia đình

| Vai | Lời thoại |
|---|---|
| Con gái bà Sato | (đến gặp Ngọc) あの......グエンさん、ですよね。<br>*(Ấy......cô là Nguyễn phải không ạ.)* |
| Ngọc | はい、グエンと<ruby>申<rt>もう</rt></ruby>します。<ruby>佐藤<rt>さとう</rt></ruby>さんを<ruby>毎日<rt>まいにち</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>しています。<br>*(Vâng, cháu là Nguyễn. Cháu phụ trách chăm sóc bà Sato mỗi ngày ạ.)* |
| Con gái bà Sato | <ruby>母<rt>はは</rt></ruby>が......いつも「グエンちゃんが<ruby>来<rt>き</rt></ruby>たよ」って<ruby>言<rt>い</rt></ruby>っていたんです。<br>*(Mẹ con......bà ấy hay nói "Cháu Nguyễn đến rồi" đấy.)* |
| Ngọc | (cảm xúc dâng lên) そうでしたか......。<ruby>佐藤<rt>さとう</rt></ruby>さんにはいつも<ruby>優<rt>やさ</rt></ruby>しくしていただいていました。<br>*(Vậy ạ...... Bà Sato luôn tốt với cháu ạ.)* |
| Con gái bà Sato | これからも......<ruby>母<rt>はは</rt></ruby>のそばにいてあげてください。<br>*(Sắp tới cũng......xin bạn hãy ở bên mẹ con nhé.)* |
| Ngọc | はい。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>支<rt>ささ</rt></ruby>えます。<br>*(Vâng ạ. Cháu sẽ hỗ trợ hết mình ạ.)* |

---

## Tình huống 8 — Phòng điều dưỡng · 15:30, Yamamoto hướng dẫn 看取りケア cụ thể

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>看取<rt>みと</rt></ruby>りケアで<ruby>大切<rt>たいせつ</rt></ruby>なことを<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Em Nguyễn, chị sẽ giải thích những điều quan trọng trong chăm sóc Mitori nhé.)* |
| Ngọc | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị chỉ ạ.)* |
| Yamamoto | <ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>なのは「<ruby>苦痛<rt>くつう</rt></ruby>を<ruby>減<rt>へ</rt></ruby>らすこと」です。<ruby>痛<rt>いた</rt></ruby>みや<ruby>不快感<rt>ふかいかん</rt></ruby>がないか、<ruby>常<rt>つね</rt></ruby>に<ruby>観察<rt>かんさつ</rt></ruby>します。<br>*(Điều quan trọng nhất là "giảm đau khổ". Luôn quan sát xem có đau hay khó chịu không.)* |
| Ngọc | <ruby>観察<rt>かんさつ</rt></ruby>というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>ますか?<br>*(Quan sát tức là cụ thể nhìn những gì ạ?)* |
| Yamamoto | <ruby>顔<rt>かお</rt></ruby>の<ruby>表情<rt>ひょうじょう</rt></ruby>、<ruby>呼吸<rt>こきゅう</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>、<ruby>皮膚<rt>ひふ</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>、<ruby>手足<rt>てあし</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>です。<ruby>変化<rt>へんか</rt></ruby>があったらすぐ<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Biểu cảm khuôn mặt, tình trạng hơi thở, màu da, nhiệt độ tay chân. Có thay đổi thì báo cáo ngay nhé.)* |
| Ngọc | はい。<ruby>声<rt>こえ</rt></ruby>かけも<ruby>続<rt>つづ</rt></ruby>けますか?<br>*(Vâng ạ. Việc lên tiếng với bà ấy cũng tiếp tục ạ?)* |
| Yamamoto | もちろんです。<ruby>意識<rt>いしき</rt></ruby>がはっきりしない<ruby>時<rt>とき</rt></ruby>でも、<ruby>耳<rt>みみ</rt></ruby>は<ruby>最後<rt>さいご</rt></ruby>まで<ruby>聞<rt>き</rt></ruby>こえていると<ruby>言<rt>い</rt></ruby>われています。<ruby>名前<rt>なまえ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んで、<ruby>声<rt>こえ</rt></ruby>をかけ<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Tất nhiên rồi. Người ta nói rằng dù ý thức không rõ ràng, tai vẫn nghe được đến phút cuối. Em hãy tiếp tục gọi tên và lên tiếng với bà nhé.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 9 — Phòng bà Sato · 16:00, chăm sóc buổi chiều

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa, vào phòng nhẹ nhàng) <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。<ruby>今日<rt>きょう</rt></ruby>は<ruby>娘<rt>むすめ</rt></ruby>さんも<ruby>来<rt>き</rt></ruby>てくれましたね。<ruby>嬉<rt>うれ</rt></ruby>しかったですか?<br>*(Bà Sato, cháu là Nguyễn. Hôm nay con gái bà cũng đến thăm nhỉ. Bà vui không ạ?)* |
| Bà Sato | ......<ruby>娘<rt>むすめ</rt></ruby>......きれいだった......ねえ......。<br>*(......Con gái......đẹp......nhỉ......)* |
| Ngọc | そうですね。とてもきれいな<ruby>方<rt>かた</rt></ruby>ですね。<br>*(Đúng vậy ạ. Cô ấy rất đẹp nhỉ.)* |
| Bà Sato | (nhắm mắt lại) ......ありがとう......グエンちゃん......。<br>*(......Cảm ơn......cháu Nguyễn......)* |
| Ngọc | (siết nhẹ tay bà) こちらこそ......<ruby>佐藤<rt>さとう</rt></ruby>さん。ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Cháu cũng cảm ơn bà......bà Sato. Bà nghỉ ngơi nhé.)* |
| Bà Sato | ......うん......。<br>*(......Ừ......)* |

---

## Tình huống 10 — Phòng điều dưỡng · 17:00, ghi 介護記録

| Vai | Lời thoại |
|---|---|
| Ngọc | (viết hồ sơ, hỏi nhân viên A) <ruby>田辺<rt>たなべ</rt></ruby>さん、<ruby>終末期<rt>しゅうまつき</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>で<ruby>特<rt>とく</rt></ruby>に<ruby>書<rt>か</rt></ruby>くことはありますか?<br>*(Chị Tanabe, khi ghi hồ sơ giai đoạn cuối có điều gì cần đặc biệt ghi không ạ?)* |
| Nhân viên A | <ruby>食事量<rt>しょくじりょう</rt></ruby>、<ruby>水分量<rt>すいぶんりょう</rt></ruby>、<ruby>睡眠時間<rt>すいみんじかん</rt></ruby>を<ruby>細<rt>こま</rt></ruby>かく<ruby>書<rt>か</rt></ruby>いてください。あとは<ruby>顔色<rt>かおいろ</rt></ruby>や<ruby>声<rt>こえ</rt></ruby>がけへの<ruby>反応<rt>はんのう</rt></ruby>も。<br>*(Ghi kỹ lượng ăn, lượng nước, thời gian ngủ. Ngoài ra còn màu sắc khuôn mặt và phản ứng khi được lên tiếng nữa.)* |
| Ngọc | <ruby>反応<rt>はんのう</rt></ruby>......というのは?<br>*(Phản ứng......tức là ạ?)* |
| Nhân viên A | 「<ruby>声<rt>こえ</rt></ruby>をかけると<ruby>目<rt>め</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けた」「<ruby>笑顔<rt>えがお</rt></ruby>が<ruby>見<rt>み</rt></ruby>られた」「<ruby>手<rt>て</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>ると<ruby>力<rt>ちから</rt></ruby>が<ruby>入<rt>はい</rt></ruby>った」など、<ruby>小<rt>ちい</rt></ruby>さな<ruby>変化<rt>へんか</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>します。その<ruby>日<rt>ひ</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>るでしょう。<br>*(Ghi lại những thay đổi nhỏ như "khi được gọi tên bà mở mắt", "thấy nụ cười", "khi nắm tay bà có phản ứng". Giúp lưu lại trạng thái của ngày hôm đó.)* |
| Ngọc | はい。<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>記録<rt>きろく</rt></ruby>ですね。ちゃんと<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng ạ. Đây là hồ sơ quan trọng nhỉ. Em sẽ ghi đầy đủ.)* |

---

## Tình huống 11 — Phòng y tế · 17:30, hỏi 看護師 về vai trò điều dưỡng trong 看取り

| Vai | Lời thoại |
|---|---|
| Ngọc | (gặp y tá trưởng) <ruby>中田<rt>なかた</rt></ruby>さん、<ruby>看取<rt>みと</rt></ruby>りのとき、<ruby>介護士<rt>かいごし</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Chị Nakata, trong Mitori, vai trò của nhân viên điều dưỡng là gì ạ?)* |
| 看護師 | <ruby>介護士<rt>かいごし</rt></ruby>さんは「<ruby>日常<rt>にちじょう</rt></ruby>の<ruby>生活<rt>せいかつ</rt></ruby>ケア」と「<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>うこと」です。<ruby>清潔<rt>せいけつ</rt></ruby>ケア、<ruby>体位変換<rt>たいいへんかん</rt></ruby>、それに<ruby>声<rt>こえ</rt></ruby>かけ。<br>*(Nhân viên điều dưỡng làm "chăm sóc sinh hoạt hàng ngày" và "đồng hành". Chăm sóc vệ sinh, đổi tư thế, và lên tiếng với người bệnh.)* |
| Ngọc | <ruby>医療行為<rt>いりょうこうい</rt></ruby>は<ruby>看護師<rt>かんごし</rt></ruby>さんの<ruby>仕事<rt>しごと</rt></ruby>ですか?<br>*(Hành vi y tế là việc của y tá ạ?)* |
| 看護師 | はい。<ruby>点滴<rt>てんてき</rt></ruby>や<ruby>薬<rt>くすり</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>たちです。でも、<ruby>佐藤<rt>さとう</rt></ruby>さんが「<ruby>穏<rt>おだ</rt></ruby>やかだった」と<ruby>感<rt>かん</rt></ruby>じられるのは、グエンさんたちのケアがあるからです。<br>*(Vâng. Truyền dịch và quản lý thuốc là của chúng tôi. Nhưng cảm giác bà Sato "thật bình yên" là nhờ vào sự chăm sóc của em và mọi người đấy.)* |
| Ngọc | ありがとうございます。<ruby>精一杯<rt>せいいっぱい</rt></ruby>やります。<br>*(Em cảm ơn ạ. Em sẽ cố gắng hết sức.)* |
| 看護師 | グエンさん、<ruby>気持<rt>きも</rt></ruby>ちが<ruby>辛<rt>つら</rt></ruby>くなったら、ひとりで<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>まないでください。チームで<ruby>支<rt>ささ</rt></ruby>え<ruby>合<rt>あ</rt></ruby>いましょう。<br>*(Em Nguyễn, khi cảm xúc trở nên nặng nề, đừng tự ôm một mình nhé. Hãy để cả nhóm cùng nâng đỡ nhau.)* |
| Ngọc | はい......。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng...... Em cảm ơn chị thật sự ạ.)* |

---

## Tình huống 12 — Ký túc · 21:00, tâm sự với Mai-san (tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật & cảm xúc thực của lao động Việt trước thực tế 看取り.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Chị Mai ơi, hôm nay em... mệt lòng lắm. |
| Mai-san | (tiếng Việt) Chuyện bà Sato hả? Chị nghe Yamamoto-san nói rồi. |
| Ngọc | (tiếng Việt) Em biết đây là công việc. Nhưng bà ấy hay kêu tên em, hay mỉm cười khi em lau mặt... Em không biết phải cảm xúc thế nào nữa. |
| Mai-san | (tiếng Việt) Ừ. Chị cũng từng vậy. Năm đầu chị mất một ông cụ em còn nhớ mãi. Không phải không được buồn đâu. Cảm xúc đó chứng tỏ em làm việc bằng cả trái tim. |
| Ngọc | (tiếng Việt) Nhưng em phải chuyên nghiệp... |
| Mai-san | (tiếng Việt) Chuyên nghiệp không có nghĩa là không cảm xúc. Chuyên nghiệp là em vẫn làm tốt công việc dù đang buồn. Em làm được vậy rồi đó. |
| Ngọc | (tiếng Việt) Yamamoto-san nói 看取り là đồng hành, không phải chữa bệnh. Em nghĩ em hiểu rồi. Mình ở bên để bà ấy không một mình. |
| Mai-san | (tiếng Việt) Đúng vậy. Và đó là điều quan trọng nhất. |

---

## Đọng lại chương 7

Ngọc đối diện với thực tế 終末期 — bà Sato, người đã gắn bó suốt năm đầu, bước sang giai đoạn cuối đời. Qua chương này, Ngọc học được: nhận biết **dấu hiệu 終末期** (ăn kém, ngủ nhiều, da thay đổi), hiểu khái niệm **看取り** (đồng hành bình yên, không kéo dài sự sống bằng mọi giá), **vai trò 介護士 trong 看取りケア** (chăm sóc vệ sinh, đổi tư thế, lên tiếng đến phút cuối, ghi hồ sơ chi tiết), và cách **đồng hành gia đình** trong buổi họp. Quan trọng hơn: Ngọc học được rằng cảm xúc và tính chuyên nghiệp không mâu thuẫn — đây là nền tảng để bước vào 看取りケア đúng nghĩa.

> Từ vựng & mẫu câu chương này: 終末期・看取り・看取りケア・苦痛を減らす・観察・体位変換・清潔ケア・声かけ・意識・顔色・呼吸・皮膚・水分量・食事量・介護記録・精一杯支えます・穏やかに過ごす・寄り添う・面談・移行する・方針', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000008, 800000028, NULL, 'markdown_book', 'T8. Thi đánh giá kỹ năng và N3 (技能評価試験とN3)', '# Sách thực tập sinh điều dưỡng · T8. Thi đánh giá kỹ năng và N3 (技能評価試験とN3)

> **Mục tiêu nhân vật:** Ngọc (25 tuổi, cuối năm 2027) đối mặt áp lực kép: thi 介護技能評価試験 (bắt buộc cho TTS) và thi tiếng Nhật N3 cùng một giai đoạn. Học mẫu câu ôn thi, hỏi đáp kỹ thuật 介助, ngôn ngữ phòng thi. Đây là cột mốc quan trọng nhất hành trình Ngọc — N3 mở cánh cửa chuyển sang 特定技能.

---

## Bối cảnh

Tháng 12 năm 2027. Ngọc gần tròn 2 năm rưỡi tại「ひだまり苑」. Thông báo từ 監理団体 (tổ chức quản lý): TTS phải hoàn thành 介護技能評価試験 trước hạn 3 năm. Kết hợp đó, Ngọc đặt mục tiêu thi N3 cùng kỳ thi tháng 12 JLPT. Hương — bạn cùng kỳ tại cơ sở gần đó — cũng cùng chung mục tiêu. Hai người lập 勉強会 ôn sau ca, áp lực gửi tiền về nhà vẫn đè nặng. Mai-san làm cầu nối kinh nghiệm thi. Ngày thi đến... và kết quả.

---

## Tình huống 1 — Phòng họp Hidamari-en · 9:00, thông báo kỳ thi

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>重要<rt>じゅうよう</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせがあります。<ruby>介護<rt>かいご</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>日程<rt>にってい</rt></ruby>が<ruby>決<rt>き</rt></ruby>まりました。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>20日<rt>はつか</rt></ruby>です。<br>*(Mọi người, có thông báo quan trọng. Lịch thi Đánh giá Kỹ năng Điều dưỡng đã được xác định. Là ngày 20 tháng sau.)* |
| Ngọc | (giật mình nhìn Hương qua điện thoại — Hương làm ở cơ sở gần đó, nhắn tin luôn) ...<ruby>来月<rt>らいげつ</rt></ruby>ですか。<br>*(... Tháng sau ạ?)* |
| Yamamoto | はい。<ruby>実習生<rt>じっしゅうせい</rt></ruby>さんは<ruby>全員<rt>ぜんいん</rt></ruby>、<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けなければなりません。<ruby>内容<rt>ないよう</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby>と<ruby>筆記<rt>ひっき</rt></ruby>の<ruby>2部構成<rt>にぶこうせい</rt></ruby>です。<br>*(Vâng. Tất cả thực tập sinh bắt buộc phải dự thi Đánh giá Kỹ năng. Nội dung gồm 2 phần: thực hành và bài viết.)* |
| Ngọc | <ruby>実技<rt>じつぎ</rt></ruby>というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんな<ruby>内容<rt>ないよう</rt></ruby>ですか?<br>*(Phần thực hành, cụ thể là nội dung gì ạ?)* |
| Yamamoto | <ruby>移乗<rt>いじょう</rt></ruby>、<ruby>食事<rt>しょくじ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>、<ruby>排泄<rt>はいせつ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>などが<ruby>出<rt>で</rt></ruby>ます。<ruby>試験官<rt>しけんかん</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>声<rt>こえ</rt></ruby>かけしながら<ruby>介助<rt>かいじょ</rt></ruby>をします。<br>*(Sẽ có chuyển vị trí, hỗ trợ ăn uống, hỗ trợ vệ sinh v.v. Em thực hiện hỗ trợ trước mặt giám khảo vừa lên tiếng thông báo.)* |
| Ngọc | 声かけも<ruby>評価<rt>ひょうか</rt></ruby>されるんですか?<br>*(Cả cách lên tiếng cũng được đánh giá ạ?)* |
| Yamamoto | そうです。<ruby>技術<rt>ぎじゅつ</rt></ruby>だけでなく、<ruby>言葉<rt>ことば</rt></ruby>のかけ<ruby>方<rt>かた</rt></ruby>、<ruby>態度<rt>たいど</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby>への<ruby>配慮<rt>はいりょ</rt></ruby>がすべて<ruby>採点<rt>さいてん</rt></ruby>されます。<br>*(Đúng vậy. Không chỉ kỹ thuật, mà cả cách dùng từ ngữ, thái độ, sự quan tâm đến an toàn đều được chấm điểm.)* |
| Ngọc | (thở dài nhẹ) わかりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em hiểu rồi. Em sẽ cố gắng ạ.)* |

---

## Tình huống 2 — Phòng nghỉ nhân viên · 17:30, Ngọc và Hương lập 勉強会

| Vai | Lời thoại |
|---|---|
| Hương | (qua điện thoại, tiếng Nhật) ゴックちゃん、やばい、<ruby>私<rt>わたし</rt></ruby>のとこもおんなじ<ruby>日<rt>ひ</rt></ruby>に<ruby>試験<rt>しけん</rt></ruby>だって。<br>*(Ngọc ơi, nguy to, bên chỗ tớ cũng thi cùng ngày rồi.)* |
| Ngọc | ほんとに? じゃあ、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しよう。<ruby>勉強会<rt>べんきょうかい</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ろう。<br>*(Thật không? Vậy mình ôn cùng nhau đi. Mình lập nhóm học thôi.)* |
| Hương | いいね!<ruby>夜<rt>よる</rt></ruby>、<ruby>仕事<rt>しごと</rt></ruby>が<ruby>終<rt>お</rt></ruby>わってから、<ruby>週<rt>しゅう</rt></ruby>3<ruby>回<rt>かい</rt></ruby>はどう?<br>*(Hay đó! Tối sau ca, 3 buổi một tuần sao?)* |
| Ngọc | <ruby>火曜日<rt>かようび</rt></ruby>、<ruby>木曜日<rt>もくようび</rt></ruby>、<ruby>土曜日<rt>どようび</rt></ruby>はどう? <ruby>技能試験<rt>ぎのうしけん</rt></ruby>とN3と、<ruby>両方<rt>りょうほう</rt></ruby>ともやろう。<br>*(Thứ Ba, Thứ Năm, Thứ Bảy thế nào? Thi kỹ năng với N3, làm cả hai nhé.)* |
| Hương | N3も<ruby>一緒<rt>いっしょ</rt></ruby>に?<ruby>大変<rt>たいへん</rt></ruby>じゃない?<br>*(N3 cùng nhau luôn à? Không vất vả sao?)* |
| Ngọc | <ruby>大変<rt>たいへん</rt></ruby>だけど、<ruby>今年<rt>ことし</rt></ruby>の12<ruby>月<rt>がつ</rt></ruby>のJLPTと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けたい。N3があれば、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>がる。<br>*(Vất vả thật, nhưng tớ muốn thi luôn kỳ JLPT tháng 12 năm nay. N3 rồi thì lựa chọn cho 特定技能 rộng hơn.)* |
| Hương | そっか。<ruby>私<rt>わたし</rt></ruby>もN3、<ruby>挑戦<rt>ちょうせん</rt></ruby>する!<ruby>一緒<rt>いっしょ</rt></ruby>にがんばろうね。<br>*(Ra vậy. Tớ cũng thử N3 luôn! Cùng cố nào.)* |

---

## Tình huống 3 — Phòng nghỉ Hương tại cơ sở lân cận · 21:00, ôn thực hành 介助

| Vai | Lời thoại |
|---|---|
| Hương | じゃあ、<ruby>今日<rt>きょう</rt></ruby>は<ruby>移乗介助<rt>いじょうかいじょ</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけを<ruby>練習<rt>れんしゅう</rt></ruby>しよう。ゴックちゃん、<ruby>試験官<rt>しけんかん</rt></ruby>役<rt>やく</rt>やって。<br>*(Vậy hôm nay mình luyện 声かけ cho phần hỗ trợ chuyển vị trí nhé. Ngọc đóng vai giám khảo đi.)* |
| Ngọc | わかった。じゃあ、<ruby>始<rt>はじ</rt></ruby>めて。<br>*(Được. Bắt đầu đi.)* |
| Hương | (thực hành) ○○さん、これから<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りますね。ベッドのふちに<ruby>座<rt>すわ</rt></ruby>っていただけますか?<br>*(Ông/Bà ○○, bây giờ mình chuyển sang xe lăn nhé. Ông/Bà có thể ngồi xuống mép giường được không?)* |
| Ngọc | (đóng vai giám khảo, gật đầu) ...それから?<br>*(... Rồi sao nữa?)* |
| Hương | <ruby>足<rt>あし</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>につけてください。<ruby>私<rt>わたし</rt></ruby>が<ruby>支<rt>ささ</rt></ruby>えますので、ゆっくり<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がってみましょう。いいですか?<br>*(Lòng bàn chân đặt xuống sàn nhé. Tôi sẽ đỡ, mình từ từ đứng dậy nhé. Được chưa?)* |
| Ngọc | (nhận xét) うん、<ruby>声<rt>こえ</rt></ruby>かけはよかった。でも「<ruby>支<rt>ささ</rt></ruby>えます」の<ruby>前<rt>まえ</rt></ruby>に「<ruby>腰<rt>こし</rt></ruby>を<ruby>持<rt>も</rt></ruby>ちますね」って<ruby>言<rt>い</rt></ruby>ったほうがいいと<ruby>思<rt>おも</rt></ruby>う。どこを<ruby>触<rt>さわ</rt></ruby>るかを<ruby>先<rt>さき</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>える。<br>*(Ừ, lên tiếng vậy là tốt. Nhưng trước "tôi đỡ" thì nên nói "tôi đặt tay ở lưng nhé". Báo trước sẽ chạm vào đâu.)* |
| Hương | あ、そっか。「<ruby>腰<rt>こし</rt></ruby>に<ruby>手<rt>て</rt></ruby>を<ruby>当<rt>あ</rt></ruby>てますね」って<ruby>言<rt>い</rt></ruby>う?<br>*(À, đúng nhỉ. Nói "Tôi đặt tay ở lưng nhé" à?)* |
| Ngọc | そう。<ruby>山本<rt>やまもと</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>がいつも<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うって<ruby>教<rt>おし</rt></ruby>えてくれた。「どこを」「どうする」を<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>う。<br>*(Đúng rồi. Chị Yamamoto luôn dạy phải nói cụ thể. "Ở đâu" và "làm gì" nhất định phải nói rõ.)* |
| Hương | じゃあ、<ruby>次<rt>つぎ</rt></ruby>は<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>ね。<ruby>誤嚥<rt>ごえん</rt></ruby><ruby>予防<rt>よぼう</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけ、<ruby>難<rt>むずか</rt></ruby>しいよね。<br>*(Vậy tiếp theo luyện phần hỗ trợ ăn uống nhé. 声かけ để phòng sặc, cái đó khó nhỉ.)* |
| Ngọc | うん。「ゆっくり<ruby>噛<rt>か</rt></ruby>んでくださいね」とか「<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>んでから<ruby>次<rt>つぎ</rt></ruby>をどうぞ」とか、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えた?<br>*(Ừ. "Nhai chậm nhé" hay "nuốt xong rồi hãy ăn tiếp" v.v., hết chưa?)* |
| Hương | まだ「<ruby>顔色<rt>かおいろ</rt></ruby>はいかがですか」「むせていませんか」あたりが<ruby>不安<rt>ふあん</rt></ruby>。<br>*(Cái kiểu "sắc mặt thế nào ạ", "có bị sặc không" thì vẫn chưa tự tin.)* |
| Ngọc | じゃあ、<ruby>交代<rt>こうたい</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<ruby>私<rt>わたし</rt></ruby>が<ruby>利用者<rt>りようしゃ</rt></ruby>役、Hương<ruby>ちゃん<rt>ちゃん</rt></ruby>がスタッフ役。<br>*(Vậy luyện luân phiên nhau nhé. Tớ đóng vai người dùng dịch vụ, Hương đóng vai nhân viên.)* |

---

## Tình huống 4 — Phòng tập thực hành · 19:00, luyện thao tác 介助 theo tiêu chí chấm điểm

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>実技<rt>じつぎ</rt></ruby>の<ruby>採点<rt>さいてん</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。まず「<ruby>排泄介助<rt>はいせつかいじょ</rt></ruby>」を<ruby>練習<rt>れんしゅう</rt></ruby>しましょうか。<br>*(Em Nguyễn, mình kiểm tra tiêu chí chấm điểm phần thực hành nhé. Trước tiên mình luyện "hỗ trợ vệ sinh" nhé.)* |
| Ngọc | はい。<ruby>採点<rt>さいてん</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>何点<rt>なんてん</rt></ruby>ですか?<br>*(Vâng ạ. Tiêu chí chấm điểm thì bao nhiêu điểm ạ?)* |
| Yamamoto | <ruby>声<rt>こえ</rt></ruby>かけ・<ruby>安全確認<rt>あんぜんかくにん</rt></ruby>・<ruby>手順<rt>てじゅん</rt></ruby>の<ruby>正確<rt>せいかく</rt></ruby>さ・プライバシーへの<ruby>配慮<rt>はいりょ</rt></ruby>、この<ruby>四<rt>し</rt></ruby>つが<ruby>主<rt>おも</rt></ruby>な<ruby>評価<rt>ひょうか</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>です。<br>*(Bốn tiêu chí chính là: lên tiếng, kiểm tra an toàn, độ chính xác của quy trình, và quan tâm đến sự riêng tư.)* |
| Ngọc | プライバシーへの<ruby>配慮<rt>はいりょ</rt></ruby>というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>には?<br>*(Quan tâm đến sự riêng tư thì cụ thể là gì ạ?)* |
| Yamamoto | カーテンを<ruby>閉<rt>し</rt></ruby>める、<ruby>衣類<rt>いるい</rt></ruby>をできるだけ<ruby>乱<rt>みだ</rt></ruby>さない、<ruby>作業中<rt>さぎょうちゅう</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>かけを<ruby>続<rt>つづ</rt></ruby>けるなどです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>気持<rt>きも</rt></ruby>ちをまず<ruby>考<rt>かんが</rt></ruby>えること。<br>*(Đóng rèm, hạn chế xáo trộn quần áo, tiếp tục lên tiếng trong lúc thực hiện v.v. Trước tiên hãy nghĩ đến cảm xúc của người được chăm sóc.)* |
| Ngọc | わかりました。では<ruby>始<rt>はじ</rt></ruby>めてもいいですか?<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Em hiểu ạ. Vậy em có thể bắt đầu không ạ? Chị Yamamoto xem giùm em được không ạ?)* |
| Yamamoto | もちろん。(ストップウォッチを手に取る) どうぞ。<br>*(Tất nhiên rồi. (cầm đồng hồ bấm giờ) Bắt đầu đi.)* |
| Ngọc | (quay sang người mẫu) ○○さん、これから<ruby>トイレ<rt>とれ</rt></ruby>のお<ruby>手伝<rt>てつだ</rt></ruby>いをさせていただきます。カーテンを<ruby>閉<rt>し</rt></ruby>めますね。<br>*(Ông/Bà ○○, bây giờ cháu sẽ hỗ trợ việc vệ sinh. Cháu đóng rèm nhé.)* |
| Yamamoto | (ghi chép, gật đầu) <ruby>声<rt>こえ</rt></ruby>かけ、<ruby>合格<rt>ごうかく</rt></ruby>。カーテン、<ruby>合格<rt>ごうかく</rt></ruby>。(nhỏ giọng) <ruby>次<rt>つぎ</rt></ruby>、<ruby>衣類<rt>いるい</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Lên tiếng — đạt. Rèm — đạt. (nhỏ giọng) Tiếp theo, chú ý thứ tự xử lý quần áo nhé.)* |

---

## Tình huống 5 — Phòng nghỉ nhân viên · 18:30, ôn từ vựng chuyên môn cùng Hương

| Vai | Lời thoại |
|---|---|
| Hương | (giọng qua điện thoại) ゴックちゃん、今日は<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>のテストをしよう。わたしが<ruby>言葉<rt>ことば</rt></ruby>を<ruby>言<rt>い</rt></ruby>うから、<ruby>意味<rt>いみ</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>して。<br>*(Ngọc ơi, hôm nay mình kiểm tra từ vựng chuyên môn nhé. Tớ đọc từ, cậu giải thích nghĩa nhé.)* |
| Ngọc | いいよ。<ruby>始<rt>はじ</rt></ruby>めて。<br>*(Được thôi. Bắt đầu đi.)* |
| Hương | 「<ruby>残存能力<rt>ざんそんのうりょく</rt></ruby>」。<br>*(「残存能力」.)* |
| Ngọc | <ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>自分<rt>じぶん</rt></ruby>でできる<ruby>力<rt>ちから</rt></ruby>のことだよ。その<ruby>力<rt>ちから</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にして、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>手伝<rt>てつだ</rt></ruby>いすぎないことが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Là năng lực mà người được chăm sóc vẫn còn có thể tự làm. Quan trọng là trân trọng năng lực đó, không nên hỗ trợ quá mức mọi thứ.)* |
| Hương | <ruby>正解<rt>せいかい</rt></ruby>! じゃあ「<ruby>誤嚥性肺炎<rt>ごえんせいはいえん</rt></ruby>」。<br>*(Đúng rồi! Vậy "誤嚥性肺炎".)* |
| Ngọc | <ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>や<ruby>唾液<rt>だえき</rt></ruby>が<ruby>気管<rt>きかん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>って<ruby>起<rt>お</rt></ruby>こる<ruby>肺炎<rt>はいえん</rt></ruby>。<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>のときに<ruby>特<rt>とく</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけないといけない。<ruby>誤嚥予防<rt>ごえんよぼう</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Là viêm phổi do thức ăn hoặc nước bọt vào khí quản. Khi hỗ trợ ăn uống phải đặc biệt chú ý. Lên tiếng để phòng sặc rất quan trọng.)* |
| Hương | <ruby>完璧<rt>かんぺき</rt></ruby>! じゃあ「<ruby>褥瘡<rt>じょくそう</rt></ruby>」、これは<ruby>難<rt>むずか</rt></ruby>しい。<br>*(Hoàn hảo! Vậy "褥瘡", cái này khó đó.)* |
| Ngọc | <ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>姿勢<rt>しせい</rt></ruby>でいると<ruby>皮膚<rt>ひふ</rt></ruby>が<ruby>傷<rt>いた</rt></ruby>む、<ruby>床ずれ<rt>とこずれ</rt></ruby>とも<ruby>言<rt>い</rt></ruby>う。<ruby>体位変換<rt>たいいへんかん</rt></ruby>が<ruby>予防<rt>よぼう</rt></ruby>になる。<br>*(Là loét do nằm lâu một tư thế, còn gọi là 床ずれ. Đổi tư thế nằm (体位変換) sẽ giúp phòng ngừa.)* |
| Hương | よし、ゴックちゃん<ruby>完璧<rt>かんぺき</rt></ruby>。N3の<ruby>語彙<rt>ごい</rt></ruby>もこのレベルでいけるね。<br>*(Ổn, Ngọc hoàn hảo rồi. Từ vựng N3 trình độ này là được rồi nhé.)* |

---

## Tình huống 6 — Hành lang Hidamari-en · 12:00, hỏi Yamamoto về điểm khó trong thi thực hành

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、ちょっとよろしいですか。<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいポイントは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Chị Yamamoto, cho em hỏi một chút được không ạ. Điểm khó nhất trong thi thực hành là gì ạ?)* |
| Yamamoto | そうですね... <ruby>技術<rt>ぎじゅつ</rt></ruby>よりも「<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>き」だと<ruby>思<rt>おも</rt></ruby>います。<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>声<rt>こえ</rt></ruby>かけを<ruby>忘<rt>わす</rt></ruby>れる<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<br>*(Để xem... Tôi nghĩ là "bình tĩnh" hơn là kỹ thuật. Nhiều người vì hồi hộp mà quên lên tiếng.)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>もそれが<ruby>心配<rt>しんぱい</rt></ruby>です。<ruby>手順<rt>てじゅん</rt></ruby>の<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になりそうで...<br>*(Cháu cũng lo điều đó ạ. Sợ đang làm giữa chừng thì đầu óc trống rỗng...)* |
| Yamamoto | <ruby>対策<rt>たいさく</rt></ruby>は「<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>する<ruby>習慣<rt>しゅうかん</rt></ruby>」です。「<ruby>次<rt>つぎ</rt></ruby>は<ruby>体位変換<rt>たいいへんかん</rt></ruby>です」と<ruby>自分<rt>じぶん</rt></ruby>でも<ruby>言<rt>い</rt></ruby>いながら<ruby>進<rt>すす</rt></ruby>める。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すと<ruby>頭<rt>あたま</rt></ruby>が<ruby>整理<rt>せいり</rt></ruby>される。<br>*(Biện pháp là "thói quen xác nhận thành tiếng". Vừa tự nói "tiếp theo là đổi tư thế" vừa thực hiện. Nói ra tiếng thì đầu óc sẽ rõ hơn.)* |
| Ngọc | なるほど。「<ruby>自分<rt>じぶん</rt></ruby>に<ruby>言<rt>い</rt></ruby>い<ruby>聞<rt>き</rt></ruby>かせながら<ruby>動<rt>うご</rt></ruby>く」ということですね。<br>*(Ra vậy. Tức là "vừa tự nhắc nhở bản thân vừa thực hiện" ạ.)* |
| Yamamoto | そうです。それと、<ruby>試験官<rt>しけんかん</rt></ruby>は<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>待<rt>ま</rt></ruby>っているわけではありません。<ruby>安全<rt>あんぜん</rt></ruby>への<ruby>意識<rt>いしき</rt></ruby>と<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>敬意<rt>けいい</rt></ruby>が<ruby>伝<rt>つた</rt></ruby>わればいい。<br>*(Đúng vậy. Và giám khảo không chờ đợi thất bại của các em. Chỉ cần truyền đạt được ý thức an toàn và sự tôn trọng với người được chăm sóc là đủ.)* |
| Ngọc | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>気持<rt>きも</rt></ruby>ちが<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Cảm ơn chị ạ. Cháu cảm thấy nhẹ hơn một chút rồi ạ.)* |

---

## Tình huống 7 — Phòng học nhỏ · 20:00, mô phỏng phần thi nói với 利用者

| Vai | Lời thoại |
|---|---|
| Hương | じゃあ、<ruby>今日<rt>きょう</rt></ruby>の<ruby>最後<rt>さいご</rt></ruby>は「<ruby>利用者<rt>りようしゃ</rt></ruby>さん<ruby>役<rt>やく</rt></ruby>」の<ruby>本番<rt>ほんばん</rt></ruby>シミュレーションをやろう。わたしが<ruby>利用者<rt>りようしゃ</rt></ruby>役をする。<br>*(Vậy cuối buổi hôm nay mình thử mô phỏng tình huống thật với "vai người được chăm sóc" nhé. Tớ đóng vai người dùng dịch vụ.)* |
| Ngọc | わかった。(<ruby>椅子<rt>いす</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>える) じゃあ、<ruby>始<rt>はじ</rt></ruby>めるね。<br>*(Được rồi. (sắp xếp ghế) Vậy bắt đầu nhé.)* |
| Ngọc | (giọng rõ ràng, nhẹ nhàng) ○○さん、こんにちは。グエンと<ruby>申<rt>もう</rt></ruby>します。<ruby>今日<rt>きょう</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>の<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか?<br>*(Ông/Bà ○○, chào buổi chiều. Cháu tên Nguyễn. Hôm nay sức khỏe ông/bà thế nào ạ?)* |
| Hương | (đóng vai, giọng chậm) ちょっと<ruby>腰<rt>こし</rt></ruby>が...<br>*(Lưng hơi...)* |
| Ngọc | <ruby>腰<rt>こし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>いですか? どのくらい<ruby>痛<rt>いた</rt></ruby>いですか? ちょっとですか、かなりですか?<br>*(Lưng đau ạ? Đau nhiều hay ít ạ? Một chút hay nhiều lắm ạ?)* |
| Hương | (đóng vai) ちょっとだけ。<br>*(Một chút thôi.)* |
| Ngọc | わかりました。<ruby>今日<rt>きょう</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>せず、ゆっくり<ruby>動<rt>うご</rt></ruby>きましょう。<ruby>何<rt>なに</rt></ruby>かあればすぐ<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Em hiểu ạ. Hôm nay mình không vội, từ từ cử động nhé. Nếu có gì thì nói ngay cho cháu biết nhé.)* |
| Hương | (ra khỏi vai, vỗ tay) すごい、ゴックちゃん!「どのくらい<ruby>痛<rt>いた</rt></ruby>いか」<ruby>聞<rt>き</rt></ruby>くのが<ruby>ポイント<rt>ぽいんと</rt></ruby>だよ。「<ruby>痛<rt>いた</rt></ruby>いですか」だけじゃなくて。<br>*(Tuyệt vời, Ngọc! Hỏi "đau nhiều hay ít" là điểm mấu chốt đấy. Không chỉ hỏi "có đau không".)* |
| Ngọc | そっか、<ruby>程度<rt>ていど</rt></ruby>を<ruby>聞<rt>き</rt></ruby>くのか。<ruby>状態<rt>じょうたい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をもっと<ruby>具体的<rt>ぐたいてき</rt></ruby>にするってことだね。<br>*(Ra vậy, phải hỏi mức độ. Tức là xác nhận tình trạng cụ thể hơn nhỉ.)* |

---

## Tình huống 8 — Ký túc xá Ngọc · 23:00, áp lực dồn dập

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn điện thoại, giọng mệt mỏi, nhắn Đức qua app) <ruby>今月<rt>こんげつ</rt></ruby>の<ruby>送金<rt>そうきん</rt></ruby>、ちょっと<ruby>少<rt>すく</rt></ruby>なくなりそう。<ruby>受験料<rt>じゅけんりょう</rt></ruby>とか<ruby>参考書<rt>さんこうしょ</rt></ruby>とか...<br>*(Tiền gửi về tháng này có vẻ ít hơn một chút. Phí dự thi với sách tham khảo...)* |
| Đức | (tiếng Nhật) ゴック、<ruby>無理<rt>むり</rt></ruby>するなよ。<ruby>試験<rt>しけん</rt></ruby>のほうが<ruby>先<rt>さき</rt></ruby>だろ。<br>*(Ngọc, đừng ép mình quá. Thi cử quan trọng hơn mà.)* |
| Ngọc | でも<ruby>家族<rt>かぞく</rt></ruby>も<ruby>待<rt>ま</rt></ruby>ってるし...<ruby>お父<rt>おとう</rt></ruby>さんの<ruby>薬代<rt>くすりだい</rt></ruby>もある。<ruby>毎月<rt>まいつき</rt></ruby><ruby>送<rt>おく</rt></ruby>らなきゃって<ruby>思<rt>おも</rt></ruby>うと...<br>*(Nhưng gia đình cũng đang chờ... còn tiền thuốc của bố nữa. Cứ nghĩ đến chuyện phải gửi mỗi tháng thì...)* |
| Đức | わかるよ。<ruby>俺<rt>おれ</rt></ruby>もそうだった。でも、N3<ruby>受<rt>う</rt></ruby>かったら<ruby>時給<rt>じきゅう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がる<ruby>可能性<rt>かのうせい</rt></ruby>があるし、<ruby>特定技能<rt>とくていぎのう</rt></ruby>になれば<ruby>手取<rt>てど</rt></ruby>りが<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>う。<ruby>今<rt>いま</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な<ruby>時期<rt>じき</rt></ruby>だよ。<br>*(Tao hiểu. Tao cũng vậy. Nhưng N3 mà đỗ thì có khả năng lương giờ tăng, và nếu lên 特定技能 thì tiền thực nhận khác hẳn. Bây giờ là giai đoạn quan trọng nhất đấy.)* |
| Ngọc | うん...<ruby>頑張<rt>がんば</rt></ruby>る。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かる。<br>*(Ừ... tớ sẽ cố. Nhất định đỗ.)* |

---

## Tình huống 9 — Phòng Mai-san tại cơ sở · 18:00, kinh nghiệm thi

| Vai | Lời thoại |
|---|---|
| Ngọc | マイさん、<ruby>技能評価試験<rt>ぎのうひょうかしけん</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>しますよね。<ruby>アドバイス<rt>あどばいす</rt></ruby>はありますか?<br>*(Chị Mai ơi, thi Đánh giá Kỹ năng hồi hộp lắm nhỉ. Chị có lời khuyên gì không ạ?)* |
| Mai-san | ゴックちゃん、ね。<ruby>試験官<rt>しけんかん</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>じゃないのよ。<ruby>普段<rt>ふだん</rt></ruby><ruby>通<rt>どお</rt></ruby>りにやれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Ngọc à. Giám khảo không phải người đáng sợ đâu. Cứ làm như thường ngày là được.)* |
| Ngọc | でも、<ruby>緊張<rt>きんちょう</rt></ruby>するといつもと<ruby>違<rt>ちが</rt></ruby>うことをしてしまいそうで...<br>*(Nhưng khi hồi hộp thì sợ làm khác hẳn bình thường...)* |
| Mai-san | <ruby>私<rt>わたし</rt></ruby>が<ruby>研修<rt>けんしゅう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>ったのは、「まず<ruby>声<rt>こえ</rt></ruby>かけ」「<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>」「<ruby>最後<rt>さいご</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>かけ」ってこと。この<ruby>三<rt>さん</rt></ruby>つを<ruby>忘<rt>わす</rt></ruby>れなければ、<ruby>減点<rt>げんてん</rt></ruby>は<ruby>少<rt>すく</rt></ruby>ない。<br>*(Những gì chị học trong đào tạo là: "声かけ trước", "kiểm tra an toàn", "声かけ cuối". Không quên ba điều này thì ít bị trừ điểm lắm.)* |
| Ngọc | 「<ruby>最後<rt>さいご</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけ」というのは?<br>*(声かけ cuối là gì ạ?)* |
| Mai-san | <ruby>終<rt>お</rt></ruby>わったあとに「お<ruby>疲<rt>つか</rt></ruby>れさまでした」「<ruby>楽<rt>らく</rt></ruby>になりましたか?」を<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>うこと。<ruby>介助<rt>かいじょ</rt></ruby>の<ruby>前後<rt>まえご</rt></ruby>で<ruby>相手<rt>あいて</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>確認<rt>かくにん</rt></ruby>するのが<ruby>基本<rt>きほん</rt></ruby>なのよ。<br>*(Sau khi kết thúc nhất định nói "お疲れさまでした" "Ông/Bà cảm thấy thoải mái hơn chưa?". Hỏi thăm cảm giác của người được chăm sóc trước và sau khi hỗ trợ là điều cơ bản.)* |
| Ngọc | N3は...どうでしたか、マイさんは?<br>*(Còn N3 thì... chị Mai ngày đó thế nào ạ?)* |
| Mai-san | (cười) 私はね、3回目で受かったの。だから焦らないで。でも、ゴックちゃんは<ruby>真面目<rt>まじめ</rt></ruby>だから、きっと1回で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>よ。<ruby>読解<rt>どっかい</rt></ruby>は<ruby>介護<rt>かいご</rt></ruby>の<ruby>文章<rt>ぶんしょう</rt></ruby>もよく<ruby>出<rt>で</rt></ruby>るから、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>みになるわよ。<br>*(Chị thì đỗ lần thứ 3 đấy. Nên đừng vội. Nhưng Ngọc chăm chỉ nên chắc 1 lần là được. Đọc hiểu hay ra bài về điều dưỡng lắm, nên kinh nghiệm làm việc là lợi thế đấy.)* |
| Ngọc | ありがとうございます、マイさん。<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Cảm ơn chị Mai. Em thấy nhẹ lòng hơn một chút rồi ạ.)* |

---

## Tình huống 10 — Phòng thi · 9:00, ngày thi kỹ năng (試験当日)

| Vai | Lời thoại |
|---|---|
| Shiken-kan (試験官) | グエン・ゴックさん、<ruby>入<rt>はい</rt></ruby>ってください。<ruby>準備<rt>じゅんび</rt></ruby>ができたら<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Nguyễn Ngọc, vào đây. Sẵn sàng rồi thì bắt đầu.)* |
| Ngọc | (hít thở sâu) はい。(quay sang người đóng vai 利用者) ○○さん、おはようございます。グエンと<ruby>申<rt>もう</rt></ruby>します。<ruby>今日<rt>きょう</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng ạ. (quay sang) Ông/Bà ○○, chào buổi sáng. Em tên Nguyễn. Hôm nay nhờ ông/bà giúp đỡ ạ.)* |
| Người đóng vai 利用者 | はい。<br>*(Vâng.)* |
| Ngọc | これからベッドから<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>っていただきます。ゆっくりベッドのふちに<ruby>座<rt>すわ</rt></ruby>っていただけますか?<br>*(Bây giờ chúng ta chuyển từ giường sang xe lăn. Ông/Bà có thể từ từ ngồi xuống mép giường không ạ?)* |
| Người đóng vai 利用者 | はい。<br>*(Vâng.)* |
| Ngọc | ありがとうございます。<ruby>腰<rt>こし</rt></ruby>に<ruby>手<rt>て</rt></ruby>を<ruby>当<rt>あ</rt></ruby>てますね。(đặt tay nhẹ) <ruby>足<rt>あし</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>につけてください。では、ゆっくり<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がりましょう。1、2、3。<br>*(Cảm ơn ạ. Em đặt tay ở lưng nhé. Lòng bàn chân đặt xuống sàn. Vậy, từ từ đứng dậy nào. 1, 2, 3.)* |
| Ngọc | (khi xong) お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>っていただきました。<ruby>楽<rt>らく</rt></ruby>になりましたか?<br>*(Ông/Bà đã vất vả. Đã ngồi vào xe lăn rồi ạ. Có thấy thoải mái hơn không ạ?)* |
| Người đóng vai 利用者 | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, tôi ổn.)* |
| Ngọc | (thầm) よし...(giọng bình tĩnh hơn hẳn)<br>*(Tốt...)* |

---

## Tình huống 11 — Ngoài phòng thi · 12:00, chờ kết quả và thành quả

| Vai | Lời thoại |
|---|---|
| Hương | (cúi đầu ra ngoài phòng, nói khẽ) ゴックちゃん、どうだった? わたし、<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>のとき、「むせていませんか」<ruby>言<rt>い</rt></ruby>うの<ruby>忘<rt>わす</rt></ruby>れた...<br>*(Ngọc ơi, sao rồi? Tớ phần hỗ trợ ăn uống quên mất câu "có bị sặc không"...)* |
| Ngọc | えっ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>? でも、ほかは<ruby>全部<rt>ぜんぶ</rt></ruby>できたの?<br>*(Ôi, ổn không? Nhưng phần khác làm hết rồi đúng không?)* |
| Hương | うん、たぶん。ゴックちゃんは?<br>*(Ừ, chắc vậy. Còn Ngọc?)* |
| Ngọc | ...<ruby>声<rt>こえ</rt></ruby>かけは<ruby>全部<rt>すべ</rt></ruby>できた。マイさんに<ruby>言<rt>い</rt></ruby>われた「3つ」も。<ruby>緊張<rt>きんちょう</rt></ruby>したけど、<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えてた。<br>*(... 声かけ phần nào cũng nói hết rồi. "3 điều" Mai-san dặn cũng làm rồi. Hồi hộp nhưng thân thể nhớ hết rồi.)* |
| Hương | それは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ! あとはN3だね。<ruby>来週<rt>らいしゅう</rt></ruby>だよ。<br>*(Vậy thì ổn rồi! Còn N3 nữa. Tuần sau rồi đó.)* |
| Ngọc | うん。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Ừ. Cùng cố đến cùng nhé.)* |
| --- | --- |
| **(Hai tuần sau — kết quả)** | |
| Ngọc | (gọi điện cho Hương, giọng run run) Hương<ruby>ちゃん<rt>ちゃん</rt></ruby>!<ruby>技能試験<rt>ぎのうしけん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>だった! そしてN3も...N3も<ruby>合格<rt>ごうかく</rt></ruby>だった!<br>*(Hương ơi! Thi kỹ năng, đỗ rồi! Và N3 cũng... N3 cũng đỗ rồi!)* |
| Hương | えええっ! ほんとに!? わたしも<ruby>技能<rt>ぎのう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>だった! N3は...<ruby>合格<rt>ごうかく</rt></ruby>! やった!<br>*(Hả!? Thật không!? Tớ thi kỹ năng cũng đỗ! N3 thì... đỗ! Tuyệt vời!)* |
| Ngọc | (tiếng Việt bật ra) Đỗ rồi Hương ơi! (rồi trở lại tiếng Nhật) <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ったから。ありがとう、Hươngちゃん。<br>*(Vì mình cùng cố gắng. Cảm ơn Hương nhé.)* |
| Hương | こちらこそ。ゴックちゃんがいなかったら、わたしダメだったよ。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>祝<rt>いわ</rt></ruby>いしよう!<br>*(Tớ mới cần phải cảm ơn. Không có Ngọc thì tớ không được đâu. Hôm nay mình ăn mừng thôi!)* |

---

## Tình huống mạch truyện — Ký túc xá · 21:00 (tiếng Việt)

> Scene tiếng Việt — khép chương với cảm xúc và tuyến gửi tiền về nhà.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, gọi điện về nhà) Mẹ ơi, con đỗ rồi! Cả thi kỹ năng lẫn N3! |
| Mẹ | (tiếng Việt) Con ơi... mẹ mừng quá. Có vất vả không? |
| Ngọc | (tiếng Việt) Vất vả nhưng con làm được mẹ. Tháng này con gửi được nhiều hơn một chút. Và N3 này... sau này con có thể chuyển sang visa 特定技能, tiền sẽ khá hơn. |
| Mẹ | (tiếng Việt) Mẹ không cần tiền nhiều, mẹ cần con khỏe. |
| Ngọc | (tiếng Việt, giọng rưng rưng) Con khỏe mẹ. Con đang làm tốt lắm. |
| Đức | (gõ cửa, tiếng Việt) Ê, nghe nói đỗ hết rồi? Tao mua bánh rồi. Ra đây mừng đi. |
| Ngọc | (tiếng Việt, cười) Dạ anh! (nói vào điện thoại) Mẹ ơi, con vào trước nhé. Con yêu mẹ. |

---

## Đọng lại chương 9

Ngọc và Hương cùng vượt qua áp lực kép — 介護技能評価試験 và JLPT N3 — bằng 勉強会 kiên trì. Chương này tập trung các mẫu câu thực hành thao tác 介助 trong ngữ cảnh thi cử: **声かけ ba bước** (trước → trong → sau), **状態確認** ("むせていませんか", "楽になりましたか"), và **残存能力** là triết lý không quên. Luyện theo tiêu chí chấm điểm (採点基準), ôn từ vựng chuyên môn cùng nhau (残存能力・誤嚥性肺炎・褥瘡), hỏi Yamamoto kỹ thuật tập trung dưới áp lực, và mô phỏng tình huống thật với 利用者 — tất cả chuẩn bị kỹ càng trước ngày thi. N3 đỗ không chỉ là bằng cấp — đó là chìa khóa mở con đường 特定技能, thay đổi tương lai Ngọc tại Nhật.

> Từ vựng & mẫu câu chương này: 介護技能評価試験・実技・筆記・試験官・移乗介助・食事介助・排泄介助・排泄介助・プライバシーへの配慮・採点基準・声かけ三段階・残存能力・誤嚥予防・誤嚥性肺炎・褥瘡・体位変換・むせる・楽になりましたか・どのくらい痛いですか・勉強会・JLPT N3・合格・特定技能1号・送金', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000009, 800000028, NULL, 'markdown_book', 'T9. Chinh phục N3 (N3への挑戦)', '# Sách thực tập sinh điều dưỡng · T9. Chinh phục N3 (N3への挑戦)

> **Mục tiêu nhân vật:** Ngọc (năm 2, 12/2027) vừa làm việc vừa ôn thi JLPT N3. Học từ vựng điều dưỡng N3, luyện hội thoại nghiệp vụ đòi hỏi trình độ cao hơn, trải qua ngày thi và đỗ N3 — bước ngoặt giúp đọc 介護記録 tốt hơn.

---

## Bối cảnh

Tháng 12 năm 2027. Kỳ thi JLPT N3 diễn ra vào đầu tháng 12. Ngọc đã đăng ký từ trước, ôn thi song song công việc. Cùng với Hương (đồng hương, làm ca chiều), Ngọc lập 勉強会 nhỏ sau mỗi ca. Mai-san — đã đỗ N2 — chia sẻ kinh nghiệm. Áp lực ba chiều: việc nặng, kỳ thi, gửi tiền về gia đình. Nhưng lý do để đỗ N3 rất thực tế: đọc được 介護記録, hiểu y lệnh, giao tiếp tốt hơn với 利用者 và gia đình họ.

---

## Tình huống 1 — Phòng sinh hoạt · 8:00, dùng từ N3 trong chăm sóc buổi sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>のご<ruby>気分<rt>きぶん</rt></ruby>はいかがですか?<br>*(Ông Tanaka, chào buổi sáng ạ. Hôm nay ông cảm thấy thế nào ạ?)* |
| Ông Tanaka | まあまあだな。<ruby>昨日<rt>きのう</rt></ruby>はよく<ruby>眠<rt>ねむ</rt></ruby>れたよ。<br>*(Cũng tạm thôi. Hôm qua ngủ tốt đấy.)* |
| Ngọc | それはよかったです。<ruby>食欲<rt>しょくよく</rt></ruby>はいかがですか?<br>*(Cháu mừng quá. Còn khẩu vị ông thế nào ạ?)* |
| Ông Tanaka | うん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>食<rt>た</rt></ruby>べられそうだ。<br>*(Ừ, hôm nay tôi nghĩ ăn được đấy.)* |
| Ngọc | よかった。<ruby>朝食<rt>ちょうしょく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>ができたらお<ruby>声<rt>こえ</rt></ruby>がけしますね。<br>*(Tuyệt. Bữa sáng chuẩn bị xong cháu gọi ông nhé.)* |
| Ông Tanaka | <ruby>最近<rt>さいきん</rt></ruby>、グエンの<ruby>日本語<rt>にほんご</rt></ruby>うまくなったな。「<ruby>気分<rt>きぶん</rt></ruby>はいかが」なんて、<ruby>前<rt>まえ</rt></ruby>は<ruby>言<rt>い</rt></ruby>えなかっただろう。<br>*(Dạo này tiếng Nhật của cháu giỏi lên đấy. "Cảm thấy thế nào" kiểu vậy, trước đây cháu chưa nói được nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>今<rt>いま</rt></ruby>N3の<ruby>勉強<rt>べんきょう</rt></ruby>をしています。<ruby>田中<rt>たなか</rt></ruby>さんとの<ruby>会話<rt>かいわ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>です。<br>*(Cháu cảm ơn ông. Cháu đang học ôn N3 ạ. Được nói chuyện với ông Tanaka là bài luyện tập tốt nhất đấy.)* |
| Ông Tanaka | (cười) そうか、なら毎日話しかけてやるよ。<br>*(Vậy à, thế thì hôm nào tôi cũng bắt chuyện cho cháu luyện.)* |

---

## Tình huống 2 — Phòng ăn · 12:00, tình huống giao tiếp N3 với ông Kimura

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>昼<rt>ひる</rt></ruby>はサバの<ruby>塩焼<rt>しおや</rt></ruby>きです。<ruby>食<rt>た</rt></ruby>べやすいように<ruby>骨<rt>ほね</rt></ruby>を<ruby>取<rt>と</rt></ruby>りましょうか?<br>*(Ông Kimura, bữa trưa hôm nay là cá thu nướng muối ạ. Để cháu gỡ xương cho ông ăn dễ hơn nhé?)* |
| Ông Kimura | ありがとう。<ruby>最近<rt>さいきん</rt></ruby><ruby>歯<rt>は</rt></ruby>がね、<ruby>弱<rt>よわ</rt></ruby>くなって<ruby>困<rt>こま</rt></ruby>っているんだ。<br>*(Cảm ơn nhé. Dạo này răng yếu đi, khổ lắm.)* |
| Ngọc | そうですか。<ruby>歯科<rt>しか</rt></ruby>の<ruby>先生<rt>せんせい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>されましたか? <ruby>担当<rt>たんとう</rt></ruby>の<ruby>方<rt>かた</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えしましょうか?<br>*(Vậy ạ. Ông đã trao đổi với nha sĩ chưa ạ? Để cháu báo lại với người phụ trách nhé?)* |
| Ông Kimura | ああ、お<ruby>願<rt>ねが</rt></ruby>いできるかい?<br>*(Ờ, nhờ cháu được không?)* |
| Ngọc | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>伝<rt>つた</rt></ruby>えます。ゆっくり<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってください。<br>*(Vâng, cháu nhất định sẽ báo lại. Ông ăn từ từ thôi nhé.)* |
| Ông Kimura | 「<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がる」......グエン、<ruby>敬語<rt>けいご</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えたんだね。<br>*(Cháu dùng "召し上がる"...... Nguyễn biết kính ngữ rồi đấy nhỉ.)* |
| Ngọc | (mỉm cười) N3の<ruby>勉強<rt>べんきょう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>いました。<ruby>使<rt>つか</rt></ruby>う<ruby>機会<rt>きかい</rt></ruby>を<ruby>探<rt>さが</rt></ruby>しているんです。<br>*(Cháu học được khi ôn N3 ạ. Cháu đang tìm cơ hội dùng đấy.)* |

---

## Tình huống 3 — Phòng điều dưỡng · 14:00, đọc 介護記録 với trình độ N3

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn vào hồ sơ, nhẩm đọc) 「<ruby>排泄<rt>はいせつ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>......<ruby>軟便<rt>なんべん</rt></ruby>......<ruby>量<rt>りょう</rt></ruby>は<ruby>少量<rt>しょうりょう</rt></ruby>......」ああ、<ruby>分<rt>わ</rt></ruby>かります。<ruby>柔<rt>やわ</rt></ruby>らかい<ruby>便<rt>べん</rt></ruby>で<ruby>量<rt>りょう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なかった、ということですね。<br>*(hỗ trợ bài tiết... phân mềm... lượng ít... À, cháu hiểu. Nghĩa là phân mềm và lượng ít, đúng không ạ.)* |
| Nhân viên A | そうそう、<ruby>正解<rt>せいかい</rt></ruby>。<ruby>前<rt>まえ</rt></ruby>は<ruby>記録<rt>きろく</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むのに<ruby>時間<rt>じかん</rt></ruby>かかっていたね。<br>*(Đúng rồi đó. Trước đây em đọc hồ sơ tốn thời gian lắm nhỉ.)* |
| Ngọc | はい。N3の<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>してから、<ruby>記録<rt>きろく</rt></ruby>が<ruby>読<rt>よ</rt></ruby>みやすくなりました。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かっています。<br>*(Vâng ạ. Kể từ khi học kanji N3, đọc hồ sơ dễ hơn hẳn. Em cảm thấy rất nhẹ nhõm ạ.)* |
| Nhân viên A | 「<ruby>嚥下<rt>えんげ</rt></ruby>」は<ruby>読<rt>よ</rt></ruby>める?<br>*(Chữ "嚥下" đọc được chưa?)* |
| Ngọc | 「えんげ」ですね。<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>む<ruby>力<rt>ちから</rt></ruby>のことです。<br>*(Là "えんげ" ạ. Là khả năng nuốt.)* |
| Nhân viên A | 完璧。N3<ruby>対策<rt>たいさく</rt></ruby>、ちゃんとしているね。<br>*(Hoàn hảo. Em ôn N3 nghiêm túc đấy nhỉ.)* |

---

## Tình huống 4 — Ký túc · 19:30, 勉強会 với Hương sau ca

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Chị ơi, hôm nay em học đến "〜によって" rồi mà vẫn chưa hiểu khi nào dùng. |
| Ngọc | (tiếng Việt) Ừ, khó lắm. Để chị ví dụ bằng công việc nhé. |
| Ngọc | (chuyển sang tiếng Nhật để luyện) たとえば、「<ruby>利用者<rt>りようしゃ</rt></ruby>によって、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>形態<rt>けいたい</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>います」。<ruby>人<rt>ひと</rt></ruby>それぞれで<ruby>違<rt>ちが</rt></ruby>う、という<ruby>意味<rt>いみ</rt></ruby>に「によって」を<ruby>使<rt>つか</rt></ruby>います。<br>*(Ví dụ: "Tùy theo từng người, dạng thức ăn khác nhau". Dùng "によって" khi nói tùy vào từng đối tượng mà kết quả khác nhau.)* |
| Hương | あ、「<ruby>状態<rt>じょうたい</rt></ruby>によって、<ruby>介護<rt>かいご</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります」もそうですね?<br>*(À, "Tùy tình trạng, phương pháp chăm sóc thay đổi" cũng vậy nhỉ?)* |
| Ngọc | そうそう、<ruby>正解<rt>せいかい</rt></ruby>。<ruby>介護<rt>かいご</rt></ruby>の<ruby>例文<rt>れいぶん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えると、<ruby>仕事<rt>しごと</rt></ruby>でも<ruby>使<rt>つか</rt></ruby>えるよね。<br>*(Đúng đó, đúng rồi. Học bằng ví dụ liên quan điều dưỡng thì dùng được luôn trong công việc nhỉ.)* |
| Hương | チームって<ruby>大事<rt>だいじ</rt></ruby>ですよね。ひとりで<ruby>勉強<rt>べんきょう</rt></ruby>するより<ruby>全然<rt>ぜんぜん</rt></ruby>いいです。<br>*(Có đồng đội quan trọng thật nhỉ. Học cùng nhau khác hẳn học một mình.)* |

---

## Tình huống 5 — Phòng nghỉ nhân viên · 20:00, Mai-san chia kinh nghiệm thi JLPT

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、N3の<ruby>試験<rt>しけん</rt></ruby>、もうすぐですね。<ruby>準備<rt>じゅんび</rt></ruby>はどうですか?<br>*(Em Nguyễn, kỳ thi N3 sắp đến rồi nhỉ. Chuẩn bị đến đâu rồi?)* |
| Ngọc | <ruby>言語知識<rt>げんごちしき</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>いますが、<ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Em nghĩ kiến thức ngôn ngữ ổn, nhưng em lo phần nghe ạ.)* |
| Mai-san | <ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>最後<rt>さいご</rt></ruby>まで<ruby>問題文<rt>もんだいぶん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いてから<ruby>答<rt>こた</rt></ruby>える<ruby>練習<rt>れんしゅう</rt></ruby>をしてください。<ruby>途中<rt>とちゅう</rt></ruby>でマークしようとすると<ruby>次<rt>つぎ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>き<ruby>逃<rt>のが</rt></ruby>しますよ。<br>*(Phần nghe hãy luyện tập nghe hết đề rồi mới trả lời nhé. Nếu cố đánh dấu giữa chừng sẽ bỏ lỡ câu tiếp theo đấy.)* |
| Ngọc | ありがとうございます。ほかに<ruby>注意<rt>ちゅうい</rt></ruby>することはありますか?<br>*(Cảm ơn chị. Còn điều gì cần chú ý nữa không ạ?)* |
| Mai-san | <ruby>試験<rt>しけん</rt></ruby>の<ruby>前日<rt>ぜんじつ</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しいことを<ruby>勉強<rt>べんきょう</rt></ruby>しないこと。それより<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>てください。<ruby>介護<rt>かいご</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じで、<ruby>体<rt>からだ</rt></ruby>が<ruby>資本<rt>しほん</rt></ruby>ですから。<br>*(Hôm trước ngày thi đừng học thêm gì mới. Chi bằng ngủ sớm đi. Giống như công việc điều dưỡng, cơ thể là vốn quý nhất.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>仕事<rt>しごと</rt></ruby>と<ruby>試験<rt>しけん</rt></ruby>、<ruby>両立<rt>りょうりつ</rt></ruby>するのは<ruby>大変<rt>たいへん</rt></ruby>ですが、<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>記録<rt>きろく</rt></ruby>ももっと<ruby>読<rt>よ</rt></ruby>みやすくなると<ruby>思<rt>おも</rt></ruby>って<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em hiểu rồi ạ. Vừa làm việc vừa ôn thi vất vả lắm, nhưng em nghĩ khi đỗ rồi đọc hồ sơ sẽ dễ hơn nhiều nên em cố ạ.)* |
| Mai-san | その<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>、いいですね。<ruby>資格<rt>しかく</rt></ruby>のためだけじゃなくて、<ruby>仕事<rt>しごと</rt></ruby>のためですね。<br>*(Cách nghĩ đó hay đấy. Không chỉ vì bằng cấp mà vì công việc nhỉ.)* |

---

## Tình huống 6 — Nơi làm việc · Ca sáng, hỏi Yamamoto về từ vựng N3 thấy trong 記録

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>記録<rt>きろく</rt></ruby>に「<ruby>倦怠感<rt>けんたいかん</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>い」と<ruby>書<rt>か</rt></ruby>いてありましたが、どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Chị Yamamoto, trong hồ sơ có ghi "倦怠感が強い", nghĩa là gì ạ?)* |
| Yamamoto | 「<ruby>倦怠感<rt>けんたいかん</rt></ruby>」は<ruby>体<rt>からだ</rt></ruby>がだるくて<ruby>疲<rt>つか</rt></ruby>れた<ruby>感<rt>かん</rt></ruby>じのことです。N3レベルの<ruby>単語<rt>たんご</rt></ruby>ですよ。<br>*(倦怠感 là cảm giác cơ thể mỏi mệt, nặng nề. Đây là từ vựng cấp N3 đấy.)* |
| Ngọc | あ、<ruby>体<rt>からだ</rt></ruby>のだるさ......<ruby>高齢者<rt>こうれいしゃ</rt></ruby>によく<ruby>見<rt>み</rt></ruby>られますか?<br>*(À, cảm giác mỏi mệt cơ thể... Hay gặp ở người cao tuổi không ạ?)* |
| Yamamoto | はい。<ruby>特<rt>とく</rt></ruby>に<ruby>夏<rt>なつ</rt></ruby>や<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>変化<rt>へんか</rt></ruby>するとき。「<ruby>倦怠感<rt>けんたいかん</rt></ruby>はありますか?」と<ruby>確認<rt>かくにん</rt></ruby>できるようになるといいですね。<br>*(Vâng. Đặc biệt vào mùa hè hoặc khi thể trạng thay đổi. Nếu em biết hỏi "Ông/bà có cảm thấy mỏi mệt không?" thì tốt lắm nhỉ.)* |
| Ngọc | <ruby>練習<rt>れんしゅう</rt></ruby>します。「<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>倦怠感<rt>けんたいかん</rt></ruby>はありますか?」こうですか?<br>*(Em luyện thử nhé. "Ông Tanaka, ông có cảm thấy mỏi mệt không ạ?" Như vậy có đúng không ạ?)* |
| Yamamoto | 完璧です。<ruby>試験<rt>しけん</rt></ruby>にも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちますよ。<br>*(Hoàn hảo. Vừa hữu ích cho kỳ thi nữa đấy.)* |

---

## Tình huống 7 — Phòng bà Sato · 10:00, chăm sóc Mitori dùng từ ngữ nhẹ nhàng N3

| Vai | Lời thoại |
|---|---|
| Ngọc | (vào phòng, nói nhẹ nhàng) <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。お<ruby>体<rt>からだ</rt></ruby>の<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか?<br>*(Bà Sato, cháu là Nguyễn. Tình trạng cơ thể bà thế nào ạ?)* |
| Bà Sato | ......<ruby>少<rt>すこ</rt></ruby>し......<ruby>楽<rt>らく</rt></ruby>になったよ......。<br>*(......Hơi dễ chịu hơn......rồi......)* |
| Ngọc | よかったです。<ruby>手<rt>て</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>ってもいいですか?<br>*(Cháu mừng quá. Bà cho cháu nắm tay được không ạ?)* |
| Bà Sato | (gật đầu rất nhẹ) ......うん......。<br>*(......Ừ......)* |
| Ngọc | (nắm tay bà nhẹ nhàng) <ruby>今日<rt>きょう</rt></ruby>のお<ruby>空<rt>そら</rt></ruby>、きれいですよ。<ruby>晴<rt>は</rt></ruby>れていて、<ruby>青<rt>あお</rt></ruby>いです。<br>*(Bầu trời hôm nay đẹp lắm bà ạ. Trời quang, xanh lắm.)* |
| Bà Sato | ......そう......ね......。<br>*(......Vậy......nhỉ......)* |
| Ngọc | (giọng bình tĩnh, ấm áp) <ruby>佐藤<rt>さとう</rt></ruby>さん、ここにいますから。<ruby>安心<rt>あんしん</rt></ruby>してください。<br>*(Bà Sato, cháu ở đây với bà. Bà yên tâm nhé.)* |

---

## Tình huống 8 — Ký túc · 22:00, đêm trước ngày thi

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Chị Ngọc ơi, chị có lo không? Ngày mai thi rồi. |
| Ngọc | (tiếng Việt) Lo chứ. Nhưng mà mình đã ôn hết sức rồi. Mai-san nói ngủ sớm quan trọng hơn học thêm. |
| Hương | (tiếng Việt) Chị có vừa làm việc vừa gửi tiền về nhà nữa mà. Em thấy chị vất vả hơn em. |
| Ngọc | (tiếng Việt) Ừ nhưng lý do mình thi là rõ ràng: đọc 記録 được, hiểu bác sĩ nói gì, nói chuyện được với gia đình 利用者. Không phải chỉ để có bằng. |
| Hương | (chuyển sang tiếng Nhật để luyện) じゃあ、<ruby>最後<rt>さいご</rt></ruby>に<ruby>一問<rt>いちもん</rt></ruby>だけ。「<ruby>看護師<rt>かんごし</rt></ruby>から<ruby>指示<rt>しじ</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける」......「<ruby>受<rt>う</rt></ruby>ける」の<ruby>反対<rt>はんたい</rt></ruby>は?<br>*(Vậy thì, một câu cuối thôi. "Nhận chỉ thị từ y tá"... Trái nghĩa của "nhận" là gì?)* |
| Ngọc | 「<ruby>出<rt>だ</rt></ruby>す」...... でも、<ruby>指示<rt>しじ</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>は「<ruby>指示<rt>しじ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す」ですね。<ruby>OK<rt>OK</rt></ruby>、もう<ruby>寝<rt>ね</rt></ruby>ます。<br>*(Là "出す"... nhưng trong trường hợp chỉ thị thì là "đưa ra chỉ thị" nhỉ. OK, ngủ thôi.)* |

---

## Tình huống 9 — Hội trường thi · Sáng ngày thi N3

| Vai | Lời thoại |
|---|---|
| Người hướng dẫn | これより<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力試験<rt>のうりょくしけん</rt></ruby>N3を<ruby>開始<rt>かいし</rt></ruby>します。<ruby>携帯電話<rt>けいたいでんわ</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>を<ruby>お切<rt>おき</rt></ruby>りください。<br>*(Bắt đầu kỳ thi Năng lực Nhật ngữ N3. Xin hãy tắt điện thoại di động.)* |
| Ngọc | (nhẩm trong đầu) <ruby>排泄<rt>はいせつ</rt></ruby>、<ruby>嚥下<rt>えんげ</rt></ruby>、<ruby>倦怠感<rt>けんたいかん</rt></ruby>、<ruby>終末期<rt>しゅうまつき</rt></ruby>......<ruby>介護<rt>かいご</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えた。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Hỗ trợ bài tiết, nuốt, mệt mỏi, giai đoạn cuối... Tất cả từ điều dưỡng mình đã nhớ. Ổn thôi.)* |
| Người hướng dẫn | では、<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いてください。<br>*(Vậy, mở đề thi ra nhé.)* |
| Ngọc | (lật đề, thở sâu, bắt đầu làm bài)<br>*(lật đề, hít thở sâu, bắt đầu làm bài)* |

---

## Tình huống 10 — Ký túc · 18:00, kết quả N3

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn vào màn hình điện thoại, run tay) ......<ruby>合格<rt>ごうかく</rt></ruby>......。<br>*(......Đỗ......rồi......)* |
| Hương | え!!<ruby>本当<rt>ほんとう</rt></ruby>ですか!?<br>*(Thật không vậy!?)* |
| Ngọc | (tiếng Việt, mắt đỏ hoe) Đỗ rồi Hương ơi. N3. Đỗ rồi. |
| Hương | (tiếng Việt) Chị xứng đáng lắm! Vừa làm vừa học, chị cố gắng dữ lắm mà. |
| Ngọc | (tiếng Việt) Gọi cho mẹ cái đã. Mẹ hay hỏi hoài... |
| Mai-san | (đi qua, thấy mặt Ngọc) グエンさん、<ruby>合格<rt>ごうかく</rt></ruby>しましたか?<br>*(Em Nguyễn, đỗ rồi à?)* |
| Ngọc | はい!N3、<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Vâng ạ! Cháu đỗ N3 rồi ạ!)* |
| Mai-san | やった!おめでとうございます!よく<ruby>頑張<rt>がんば</rt></ruby>りました!<br>*(Tuyệt vời! Chúc mừng em! Em cố gắng lắm rồi!)* |

---

## Tình huống 11 — Nơi làm việc sáng hôm sau, Yamamoto chúc mừng

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、N3<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます!<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>りましたね。<br>*(Em Nguyễn, chúc mừng em đỗ N3! Em thật sự đã cố gắng lắm.)* |
| Ngọc | ありがとうございます。<ruby>仕事<rt>しごと</rt></ruby>での<ruby>会話<rt>かいわ</rt></ruby>や<ruby>記録<rt>きろく</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>があったから<ruby>合格<rt>ごうかく</rt></ruby>できたと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em cảm ơn chị. Em nghĩ mình đỗ được là nhờ những cuộc hội thoại trong công việc và nhờ học từ hồ sơ ạ.)* |
| Yamamoto | これからは<ruby>記録<rt>きろく</rt></ruby>をもっとスムーズに<ruby>読<rt>よ</rt></ruby>めますね。<ruby>次<rt>つぎ</rt></ruby>はN2ですか?<br>*(Từ giờ đọc hồ sơ sẽ trơn tru hơn nhiều nhỉ. Tiếp theo là N2 không?)* |
| Ngọc | (cười) まずは<ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をもっとうまくなることです。N2は......<ruby>来年<rt>らいねん</rt></ruby>、<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Trước hết là làm tốt hơn công việc hiện tại đã ạ. N2 thì...... sang năm em mới nghĩ ạ.)* |
| Yamamoto | いい<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですよ。<ruby>田中<rt>たなか</rt></ruby>さんたちもきっと<ruby>喜<rt>よろこ</rt></ruby>んでくれますよ。<br>*(Cách nghĩ đó đúng đấy. Chắc ông Tanaka và mọi người cũng vui cho em đó.)* |
| Ngọc | はい。<ruby>ご報告<rt>ごほうこく</rt></ruby>しに<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Vâng ạ. Cháu đi báo tin cho các cụ.)* |

---

## Tình huống 12 — Ký túc · 21:00, gọi điện cho mẹ rồi tâm sự với Hương (tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến gửi tiền/gia đình thực tế lao động Việt.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, vừa gác máy) Mẹ vui lắm. Mẹ bảo "con giỏi quá, mẹ tự hào". |
| Hương | (tiếng Việt) Ừ, mẹ nào cũng vậy. Mà chị có tính thêm lương không khi có N3? |
| Ngọc | (tiếng Việt) Yamamoto-san nói có thể xin tăng lương khi gia hạn hợp đồng. Còn phải chờ. Nhưng quan trọng hơn là mình đọc được 記録 tốt hơn, nghe được y tá nói chuyện, hiểu được nhiều hơn. Đó mới là thứ mình cần nhất bây giờ. |
| Hương | (tiếng Việt) Chị học để làm việc tốt hơn, không phải chỉ để có bằng. Em thấy đó là điều đúng. |
| Ngọc | (tiếng Việt) Ừ. Và tháng sau gửi tiền về được nhiều hơn một chút. Mẹ già rồi, em trai còn học. Mình ráng thôi. |

---

## Đọng lại chương 9

Ngọc đỗ JLPT N3 sau những tháng ngày vừa làm việc vừa ôn thi. Hành trình chinh phục N3 không chỉ là ghi nhớ ngữ pháp mà là **học từ vựng điều dưỡng qua công việc thực tế** (倦怠感, 嚥下, 排泄, 看取り...), luyện hội thoại nghiệp vụ hằng ngày với 利用者 và đồng nghiệp, và hiểu rằng N3 chính là chìa khóa để **đọc 介護記録 trơn tru và giao tiếp sâu hơn** với người được chăm sóc. Đây là bước ngoặt nghề nghiệp và cũng là điểm tựa tinh thần — cho gia đình ở nhà, cho chính Ngọc trong giai đoạn 看取りケア nặng nề nhất.

> Từ vựng & mẫu câu chương này: N3・JLPT・合格・倦怠感・嚥下・排泄・軟便・少量・食事形態・聴解・言語知識・両立・〜によって・〜に役立つ・気分はいかがですか・召し上がる・ご報告します・指示を受ける・記録を読む・体が資本', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000010, 800000028, NULL, 'markdown_book', 'T10. Tiễn biệt — Chăm sóc giai đoạn cuối (看取り)', '# Sách thực tập sinh điều dưỡng · T10. Tiễn biệt — Chăm sóc giai đoạn cuối (看取り)

> **Mục tiêu nhân vật:** Ngọc trải qua lần đầu tiễn đưa một người được chăm sóc — bà Sato, người đã gọi Ngọc là "con gái" suốt nhiều tháng. Học mẫu hội thoại 看取りケア, cách chia buồn với gia đình, và cách xử lý cảm xúc bản thân như một người làm nghề trưởng thành.

---

## Bối cảnh

Tháng 3 năm 2028. Bà Sato (88 tuổi, 認知症) yếu dần trong những tuần gần đây — ăn kém, ngủ nhiều hơn, ít nói. Đội chăm sóc đã họp và xác nhận bà bước vào 終末期 (giai đoạn cuối). Ngọc đã làm việc tại Hidamari-en gần 2 năm, trình độ N3 vững. Đây là chương nặng nhất trong hành trình của Ngọc — và cũng là chương bà trưởng thành nhất.

---

## Tình huống 1 — Phòng họp nhân viên · 8:00, thông báo về tình trạng bà Sato

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りの<ruby>前<rt>まえ</rt></ruby>に、<ruby>佐藤<rt>さとう</rt></ruby>さんについてお<ruby>伝<rt>つた</rt></ruby>えします。<br>*(Trước khi bàn giao ca hôm nay, tôi muốn thông báo về tình trạng bà Sato.)* |
| Yamamoto | <ruby>先週<rt>せんしゅう</rt></ruby>から<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>摂取量<rt>せっしゅりょう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きく<ruby>減<rt>へ</rt></ruby>っています。<ruby>看護師<rt>かんごし</rt></ruby>さんと<ruby>医師<rt>いし</rt></ruby>が<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>終末期<rt>しゅうまつき</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Từ tuần trước, lượng ăn uống của bà giảm đáng kể. Y tá và bác sĩ đã xác nhận — bà đã vào giai đoạn cuối.)* |
| Ngọc | (nhỏ giọng) <ruby>終末期<rt>しゅうまつき</rt></ruby>...とは、どういうことですか?<br>*(Giai đoạn cuối... có nghĩa là thế nào ạ?)* |
| Yamamoto | <ruby>命<rt>いのち</rt></ruby>の<ruby>最後<rt>さいご</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>、ということです。<ruby>回復<rt>かいふく</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すのではなく、<ruby>苦<rt>くる</rt></ruby>しまずに、<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>過<rt>す</rt></ruby>ごしていただくことを<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Là khoảng thời gian cuối cùng của cuộc đời. Chúng ta không hướng đến phục hồi — mà hỗ trợ để bà được sống êm đềm, không đau khổ.)* |
| Nhân viên A | <ruby>ご家族<rt>ごかぞく</rt></ruby>にはもう<ruby>連絡<rt>れんらく</rt></ruby>しましたか?<br>*(Đã thông báo cho gia đình chưa ạ?)* |
| Yamamoto | はい、<ruby>昨日<rt>きのう</rt></ruby><ruby>息子<rt>むすこ</rt></ruby>さんにご<ruby>説明<rt>せつめい</rt></ruby>しました。<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>意向<rt>いこう</rt></ruby>は、「<ruby>自然<rt>しぜん</rt></ruby>な<ruby>形<rt>かたち</rt></ruby>で」とのことです。<br>*(Vâng, hôm qua tôi đã giải thích với con trai bà. Ý nguyện của bản thân bà là "được ra đi tự nhiên".)* |
| Ngọc | ...<ruby>分<rt>わ</rt></ruby>かりました。<br>*(... Em hiểu ạ.)* |

---

## Tình huống 2 — Hành lang · 8:30, Yamamoto giải thích 看取りケア

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>少<rt>すこ</rt></ruby>しいいですか。<ruby>看取<rt>みと</rt></ruby>りケアについて<ruby>説明<rt>せつめい</rt></ruby>したいです。<br>*(Em Nguyễn, có một chút không? Tôi muốn giải thích về chăm sóc cuối đời.)* |
| Ngọc | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin nghe ạ.)* |
| Yamamoto | <ruby>看取<rt>みと</rt></ruby>りケアというのは、<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>最後<rt>さいご</rt></ruby>まで<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>過<rt>す</rt></ruby>ごせるように<ruby>支<rt>ささ</rt></ruby>えることです。<br>*(看取りケア là hỗ trợ để người được chăm sóc có thể sống đến phút cuối với đầy đủ phẩm giá.)* |
| Ngọc | <ruby>具体的<rt>ぐたいてき</rt></ruby>には、どんなことをしますか?<br>*(Cụ thể thì mình làm những gì ạ?)* |
| Yamamoto | <ruby>痛<rt>いた</rt></ruby>みや<ruby>不快感<rt>ふかいかん</rt></ruby>を<ruby>減<rt>へ</rt></ruby>らすこと。<ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>を<ruby>潤<rt>うるお</rt></ruby>す<ruby>口腔<rt>こうくう</rt></ruby>ケア。<ruby>体<rt>からだ</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えること。そして、<ruby>側<rt>そば</rt></ruby>にいること。<br>*(Giảm đau và khó chịu. Chăm sóc miệng để giữ ẩm. Điều chỉnh tư thế nằm. Và — ở bên cạnh.)* |
| Ngọc | <ruby>医療的<rt>いりょうてき</rt></ruby>な<ruby>処置<rt>しょち</rt></ruby>はしないのですか?<br>*(Không có các xử lý y tế ạ?)* |
| Yamamoto | <ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>場合<rt>ばあい</rt></ruby>、ご<ruby>本人<rt>ほんにん</rt></ruby>とご<ruby>家族<rt>かぞく</rt></ruby>が「<ruby>自然<rt>しぜん</rt></ruby>な<ruby>形<rt>かたち</rt></ruby>で」と<ruby>決<rt>き</rt></ruby>めました。<ruby>介護職<rt>かいごしょく</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>は、<ruby>苦<rt>くる</rt></ruby>しまないように<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>うことです。<br>*(Với trường hợp bà Sato, bản thân bà và gia đình đã chọn "ra đi tự nhiên". Vai trò của nhân viên điều dưỡng là ở sát bên để bà không cô đơn và không đau đớn.)* |
| Ngọc | ...はい。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(... Vâng. Em hiểu ạ.)* |
| Yamamoto | <ruby>怖<rt>こわ</rt></ruby>いですか?<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってください。<br>*(Em có sợ không? Cứ nói thật đi.)* |
| Ngọc | (một chút dừng) ...<ruby>怖<rt>こわ</rt></ruby>いというより、<ruby>緊張<rt>きんちょう</rt></ruby>しています。<ruby>自分<rt>じぶん</rt></ruby>にできるか、<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(... Không hẳn là sợ, mà em hồi hộp. Em lo không biết mình có làm được không.)* |
| Yamamoto | その<ruby>気持<rt>きも</rt></ruby>ちは<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>完璧<rt>かんぺき</rt></ruby>にできなくていい。ただ、<ruby>佐藤<rt>さとう</rt></ruby>さんのそばにいてあげてください。<br>*(Cảm giác đó rất quan trọng. Em không cần phải hoàn hảo. Chỉ cần ở bên cạnh bà Sato thôi.)* |

---

## Tình huống 3 — Phòng bà Sato · 9:30, chăm sóc miệng và vệ sinh thân thể nhẹ nhàng (口腔ケア・清拭)

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。<ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>をきれいにしますね。<ruby>気持<rt>きも</rt></ruby>ちよくなりますよ。<br>*(Bà Sato, cháu Nguyễn đây ạ. Cháu làm sạch miệng cho bà nhé. Sẽ dễ chịu hơn ạ.)* |
| Bà Sato | (mắt khép hờ, gật đầu nhẹ) ...うん。<br>*(... Ừ.)* |
| Ngọc | (nhúng que vào nước, nhẹ nhàng lau miệng) <ruby>唇<rt>くちびる</rt></ruby>が<ruby>乾<rt>かわ</rt></ruby>いていますね。ゆっくりやりますよ。<ruby>痛<rt>いた</rt></ruby>いところがあったら<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Môi bà khô rồi nhỉ. Cháu làm từ từ nhé. Chỗ nào đau thì báo cháu nhé.)* |
| Bà Sato | ...ありがとう。<br>*(... Cảm ơn.)* |
| Ngọc | (lau xong miệng, chuyển sang lau mặt nhẹ) <ruby>次<rt>つぎ</rt></ruby>は<ruby>顔<rt>かお</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>きますね。タオルは<ruby>温<rt>あたた</rt></ruby>かいですよ。<br>*(Tiếp theo cháu lau mặt nhé. Khăn ấm đấy ạ.)* |
| Bà Sato | (nhẹ người hơn một chút) ...きもちいい。<br>*(... Dễ chịu quá.)* |
| Ngọc | よかった。(nhẹ nhàng lau tay bà) <ruby>手<rt>て</rt></ruby>も<ruby>拭<rt>ふ</rt></ruby>きますね。<ruby>冷<rt>つめ</rt></ruby>たくないですか?<br>*(Vậy là tốt rồi. (lau tay bà) Cháu lau tay nhé. Lạnh không ạ?)* |
| Bà Sato | ...いい。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(... Không. Bà được rồi.)* |
| Ngọc | (sau khi xong, chỉnh chăn nhẹ nhàng) きれいになりましたよ。<ruby>少し<rt>すこし</rt></ruby><ruby>楽<rt>らく</rt></ruby>になりましたか?<br>*(Sạch rồi ạ. Bà cảm thấy dễ chịu hơn một chút không ạ?)* |
| Bà Sato | (nhỏ giọng) ...うん。ありがとうね。<br>*(... Ừ. Cảm ơn nhé.)* |

---

## Tình huống 4 — Phòng bà Sato · 10:00, chăm sóc nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>ってもいいですか?<br>*(Bà Sato, cháu Nguyễn đây ạ. Cháu vào được không ạ?)* |
| Bà Sato | (mắt khẽ mở, giọng yếu) ...ん。<br>*(... Ừ.)* |
| Ngọc | <ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>を<ruby>湿<rt>しめ</rt></ruby>らせますね。<ruby>気持<rt>きも</rt></ruby>ちいいですよ。<br>*(Cháu làm ướt miệng cho bà nhé. Sẽ dễ chịu hơn ạ.)* |
| Bà Sato | ...ありがとう。<br>*(... Cảm ơn.)* |
| Ngọc | (nhẹ nhàng lau miệng, nắm bàn tay bà) <ruby>今日<rt>きょう</rt></ruby>は<ruby>暖<rt>あたた</rt></ruby>かいですよ。<ruby>外<rt>そと</rt></ruby>は<ruby>春<rt>はる</rt></ruby>になってきましたね。<br>*(Hôm nay trời ấm lắm bà ạ. Bên ngoài đang vào xuân rồi.)* |
| Bà Sato | (rất khẽ) ...はる...そう。<br>*(... Xuân... vậy à.)* |
| Ngọc | <ruby>痛<rt>いた</rt></ruby>いところはありますか?<ruby>何<rt>なに</rt></ruby>か<ruby>不快<rt>ふかい</rt></ruby>なことがあったら、<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Bà có chỗ nào đau không ạ? Nếu có gì không thoải mái, bà cứ cho cháu biết nhé.)* |
| Bà Sato | ...いい。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(... Không. Bà được rồi.)* |
| Ngọc | (ngồi yên bên cạnh, giữ tay bà) そばにいますよ。<br>*(Cháu ở đây với bà ạ.)* |

---

## Tình huống 5 — Phòng bà Sato · 11:00, trò chuyện nhẹ bên giường

| Vai | Lời thoại |
|---|---|
| Ngọc | (ngồi yên cạnh giường, giọng khẽ) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>外<rt>そと</rt></ruby>がいいお<ruby>天気<rt>てんき</rt></ruby>ですよ。<ruby>窓<rt>まど</rt></ruby>から<ruby>光<rt>ひかり</rt></ruby>が<ruby>入<rt>はい</rt></ruby>ってきていますね。<br>*(Bà Sato, hôm nay ngoài trời đẹp lắm ạ. Ánh sáng chiếu qua cửa sổ vào đây nhỉ.)* |
| Bà Sato | (mắt khép, thở đều, im lặng)<br>*(... Bà không nói, hơi thở đều.)* |
| Ngọc | (nhẹ nhàng) <ruby>昔<rt>むかし</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>聞<rt>き</rt></ruby>かせてください。<ruby>若<rt>わか</rt></ruby>い<ruby>頃<rt>ころ</rt></ruby>はどんなところにお<ruby>住<rt>す</rt></ruby>まいでしたか?<br>*(Bà kể cháu nghe một chút về ngày xưa nhé. Hồi trẻ bà sống ở đâu ạ?)* |
| Bà Sato | (khẽ mở mắt, rất nhẹ) ...しずおか...さくら。<br>*(... Shizuoka... hoa anh đào.)* |
| Ngọc | <ruby>静岡<rt>しずおか</rt></ruby>ですか。<ruby>桜<rt>さくら</rt></ruby>がきれいでしたか?<br>*(Shizuoka ạ. Hoa anh đào đẹp lắm ạ?)* |
| Bà Sato | (nụ cười thoáng qua) ...きれいだった。<ruby>毎年<rt>まいとし</rt></ruby>...みんなで。<br>*(... Đẹp lắm. Năm nào... cả nhà cùng nhau.)* |
| Ngọc | (nhỏ giọng) <ruby>今年<rt>ことし</rt></ruby>も<ruby>桜<rt>さくら</rt></ruby>、<ruby>咲<rt>さ</rt></ruby>いてきましたよ。<ruby>この辺<rt>このへん</rt></ruby>もきれいらしいです。<br>*(Năm nay hoa anh đào cũng nở rồi ạ. Nghe nói vùng này cũng đẹp lắm.)* |
| Bà Sato | ...そう。(hơi thở chậm lại, mắt khép) ...よかった。<br>*(... Vậy à. (mắt khép dần) ... Tốt quá.)* |
| Ngọc | (ngồi yên, không nói, chỉ ở đó)<br>*(Ngọc không nói thêm, ngồi yên cạnh bà.)* |

---

## Tình huống 6 — Phòng bà Sato · 14:00, bà Sato tỉnh và gọi tên

| Vai | Lời thoại |
|---|---|
| Ngọc | (đang chỉnh gối, nhẹ tay) <ruby>体<rt>からだ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>少<rt>すこ</rt></ruby>し<ruby>変<rt>か</rt></ruby>えますね。<br>*(Cháu đổi hướng nằm cho bà một chút nhé.)* |
| Bà Sato | (mắt mở, rõ hơn, nhìn thẳng vào Ngọc) ...ゆり。<br>*(... Yuri.)* |
| Ngọc | (khẽ dừng lại — Yuri là tên con gái bà Sato) はい。ここにいますよ。<br>*(Vâng. Con ở đây với bà ạ.)* |
| Bà Sato | ...ゆり、<ruby>来<rt>き</rt></ruby>てくれたの。<br>*(... Yuri, con đến rồi à.)* |
| Ngọc | (nắm chặt tay bà, giọng nhẹ) はい、<ruby>来<rt>き</rt></ruby>ましたよ。ずっとそばにいます。<br>*(Vâng, con đến rồi. Con ở cạnh bà mãi ạ.)* |
| Bà Sato | (dừng lâu, rồi rất khẽ) ...ありがとう、ゆり。よくできた<ruby>子<rt>こ</rt></ruby>。<br>*(... Cảm ơn con, Yuri. Con ngoan lắm.)* |
| Ngọc | ...(không nói, chỉ gật đầu nhẹ, giữ tay bà thêm một lúc dài)<br>*(... Ngọc không nói gì, chỉ gật đầu thật nhẹ, giữ tay bà.)* |

---

## Tình huống 7 — Phòng họp nhỏ · 12:30, trao đổi kế hoạch 看取りケア trong nhóm

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>の<ruby>昼<rt>ひる</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>看取<rt>みと</rt></ruby>りケアの<ruby>計画<rt>けいかく</rt></ruby>について、チームで<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Trưa nay, mình cùng nhau xác nhận kế hoạch 看取りケア cho bà Sato nhé.)* |
| 看護師 | <ruby>現在<rt>げんざい</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>は<ruby>安定<rt>あんてい</rt></ruby>しています。<ruby>点滴<rt>てんてき</rt></ruby>はご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>希望<rt>きぼう</rt></ruby>で<ruby>行<rt>おこな</rt></ruby>っていません。<ruby>苦痛<rt>くつう</rt></ruby>の<ruby>緩和<rt>かんわ</rt></ruby>を<ruby>最優先<rt>さいゆうせん</rt></ruby>にします。<br>*(Tình trạng hiện tại ổn định. Truyền nước theo nguyện vọng gia đình — không thực hiện. Ưu tiên hàng đầu là giảm đau.)* |
| Yamamoto | <ruby>介護<rt>かいご</rt></ruby><ruby>側<rt>がわ</rt></ruby>としては、<ruby>定期的<rt>ていきてき</rt></ruby>な<ruby>体位変換<rt>たいいへんかん</rt></ruby>と<ruby>口腔<rt>こうくう</rt></ruby>ケア、そして<ruby>声<rt>こえ</rt></ruby>かけを<ruby>続<rt>つづ</rt></ruby>けます。グエンさんは<ruby>朝<rt>あさ</rt></ruby>と<ruby>昼<rt>ひる</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phía điều dưỡng sẽ tiếp tục đổi tư thế định kỳ, chăm sóc miệng, và lên tiếng liên tục. Em Nguyễn phụ trách ca sáng và trưa nhé.)* |
| Ngọc | はい。<ruby>何<rt>なに</rt></ruby>か<ruby>変化<rt>へんか</rt></ruby>があったらすぐ<ruby>報告<rt>ほうこく</rt></ruby>しますか?<br>*(Vâng ạ. Nếu có thay đổi gì thì báo cáo ngay ạ?)* |
| 看護師 | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>特<rt>とく</rt></ruby>に<ruby>呼吸<rt>こきゅう</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>、<ruby>顔色<rt>かおいろ</rt></ruby>、<ruby>体温<rt>たいおん</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>してください。<br>*(Nhờ em nhé. Đặc biệt chú ý thay đổi nhịp thở, sắc mặt, nhiệt độ cơ thể.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。(một chút dừng) あの...<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>一人<rt>ひとり</rt></ruby>にならないように、できるだけそばにいたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em hiểu ạ. (dừng một chút) À... cháu muốn ở bên cạnh bà Sato càng nhiều càng tốt để bà không một mình ạ.)* |
| Yamamoto | (gật đầu) それが、<ruby>今<rt>いま</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さんに<ruby>一番<rt>いちばん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>なことです。チームで<ruby>支<rt>ささ</rt></ruby>えましょう。<br>*(Đó chính là điều bà Sato cần nhất lúc này. Cả nhóm cùng hỗ trợ nhé.)* |

---

## Tình huống 8 — Phòng bà Sato · 16:40, bà Sato qua đời

> *Tình huống này được kể lại gián tiếp — tập trung vào hành động nghề nghiệp sau đó, không miêu tả trực tiếp.*

| Vai | Lời thoại |
|---|---|
| Ngọc | (bước ra, gặp Yamamoto ở hành lang, giọng bình tĩnh) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>佐藤<rt>さとう</rt></ruby>さんが...<ruby>お休<rt>やす</rt></ruby>みになりました。<br>*(Chị Yamamoto, bà Sato... bà đã được nghỉ ngơi rồi ạ.)* |
| Yamamoto | (gật đầu, nhỏ giọng) <ruby>分<rt>わ</rt></ruby>かりました。<ruby>看護師<rt>かんごし</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>びます。グエンさん、よくそばにいてくれました。<br>*(Tôi hiểu rồi. Tôi sẽ gọi y tá. Em Nguyễn, cảm ơn em đã ở bên bà.)* |
| Ngọc | (dừng) ...はい。<br>*(... Vâng.)* |
| Yamamoto | <ruby>今<rt>いま</rt></ruby>から<ruby>ご家族<rt>ごかぞく</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>お見送<rt>おみおく</rt></ruby>りの<ruby>準備<rt>じゅんび</rt></ruby>をしましょう。<br>*(Bây giờ tôi sẽ liên hệ gia đình. Chúng ta cùng chuẩn bị tiễn đưa bà nhé.)* |
| Ngọc | (gật đầu) はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị ạ.)* |

---

## Tình huống 9 — Phòng tiếp khách · 18:00, đón gia đình bà Sato

| Vai | Lời thoại |
|---|---|
| Con trai bà Sato | (bước vào, mặt căng thẳng) <ruby>母<rt>はは</rt></ruby>は...もう?<br>*(Mẹ tôi... rồi à?)* |
| Yamamoto | はい。16<ruby>時<rt>じ</rt></ruby>45<ruby>分<rt>ふん</rt></ruby>に、<ruby>静<rt>しず</rt></ruby>かに<ruby>旅立<rt>たびだ</rt></ruby>たれました。<ruby>苦<rt>くる</rt></ruby>しまれていませんでした。<br>*(Vâng. Bà đã nhẹ nhàng ra đi lúc 16 giờ 45 phút. Bà không đau đớn gì ạ.)* |
| Con trai | (khẽ thở ra) ...そうですか。<br>*(... Vậy à.)* |
| Yamamoto | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>穏<rt>おだ</rt></ruby>やかでいらっしゃいました。グエンさんがずっとそばについていました。<br>*(Bà bình thản cho đến phút cuối. Em Nguyễn đã ở bên cạnh bà suốt.)* |
| Con trai | (nhìn Ngọc) ...そうですか。ありがとうございました。<br>*(... Vậy à. Cảm ơn cô.)* |
| Ngọc | (cúi đầu thật sâu) <ruby>お悔やみ<rt>おくやみ</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>佐藤<rt>さとう</rt></ruby>さんには、たいへんお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Cháu xin chia buồn cùng gia đình. Bà Sato đã rất tốt với cháu.)* |
| Con trai | (giọng khàn đi) 母は...最後の頃、よく「ゆり」と呼んでいたそうですね。あなたのことを、娘と思っていたのかもしれない。<br>*(Nghe nói những ngày cuối, mẹ tôi hay gọi "Yuri". Có lẽ bà coi cô như con gái.)* |
| Ngọc | (cúi đầu, không nói được nhiều) ...はい。<ruby>光栄<rt>こうえい</rt></ruby>でした。<br>*(... Vâng. Đó là vinh dự với cháu ạ.)* |
| Con trai | (gật đầu) よく<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てくださって、ありがとうございました。<br>*(Cảm ơn cô đã chăm sóc mẹ tôi tốt như vậy.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 19:30, xử lý cảm xúc sau ca

| Vai | Lời thoại |
|---|---|
| Ngọc | (ngồi yên, mắt đỏ hoe) ...<br>*(... Ngọc ngồi yên lặng.)* |
| Mai-san | (ngồi xuống cạnh) グエンさん、<ruby>今日<rt>きょう</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Em Nguyễn, hôm nay em vất vả rồi.)* |
| Ngọc | (cố giữ giọng) <ruby>泣<rt>な</rt></ruby>いてしまいました。すみません。<br>*(Cháu đã khóc. Xin lỗi chị.)* |
| Mai-san | <ruby>謝<rt>あやま</rt></ruby>らなくていい。<ruby>泣<rt>な</rt></ruby>けるということは、<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>ってきた<ruby>証拠<rt>しょうこ</rt></ruby>です。<br>*(Không cần xin lỗi. Việc em khóc được — đó là bằng chứng em đã thực sự gắn bó với bà Sato.)* |
| Yamamoto | (bước vào, ngồi xuống đối diện) グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>、よくできました。<ruby>本当<rt>ほんとう</rt></ruby>に。<br>*(Em Nguyễn, hôm nay em làm tốt lắm. Thật sự.)* |
| Ngọc | ...でも、<ruby>私<rt>わたし</rt></ruby>は<ruby>何<rt>なに</rt></ruby>もできなかったと<ruby>思<rt>おも</rt></ruby>います。ただそばにいただけで。<br>*(... Nhưng cháu cảm thấy mình chẳng làm được gì. Chỉ ngồi bên cạnh thôi.)* |
| Yamamoto | それが<ruby>看取<rt>みと</rt></ruby>りです。「そばにいる」こと自体が、<ruby>立派<rt>りっぱ</rt></ruby>なケアです。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>逝<rt>い</rt></ruby>かせなかった。それだけで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Đó chính là 看取り. "Ở bên cạnh" tự nó đã là sự chăm sóc xứng đáng. Em đã không để bà một mình khi ra đi. Chỉ thế thôi là đủ rồi.)* |
| Ngọc | (gật đầu, mắt rưng rưng) はい...<br>*(Vâng...)* |
| Mai-san | <ruby>今夜<rt>こんや</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<ruby>明日<rt>あした</rt></ruby>また<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>きましょう。<br>*(Tối nay cứ nghỉ ngơi thật kỹ đi. Ngày mai chúng ta lại làm cùng nhau nhé.)* |

---

## Tình huống 11 — Hành lang · 20:30, hỗ trợ tinh thần đồng nghiệp trẻ

| Vai | Lời thoại |
|---|---|
| Nhân viên mới (Tanaka-san, 23 tuổi) | (đứng ở góc hành lang, mặt bần thần) ...<br>*(... Tanaka ngồi im, mặt đang bị.)* |
| Ngọc | (đến gần nhẹ nhàng) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Tanaka-san, bạn ổn không?)* |
| Tanaka | ...はじめて、こういうことがあって...<ruby>何<rt>なに</rt></ruby>も<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>なくて。<br>*(... Lần đầu tiên gặp chuyện như thế này... không biết nói gì cả.)* |
| Ngọc | うん。<ruby>私<rt>わたし</rt></ruby>も<ruby>今日<rt>きょう</rt></ruby>、そうでした。<ruby>泣<rt>な</rt></ruby>いてしまいました。<br>*(Ừ. Mình hôm nay cũng vậy. Mình cũng đã khóc.)* |
| Tanaka | (nhìn Ngọc, ngạc nhiên) グエンさんも?<br>*(Chị Nguyễn cũng vậy à?)* |
| Ngọc | そうですよ。<ruby>泣<rt>な</rt></ruby>けるということは、<ruby>佐藤<rt>さとう</rt></ruby>さんのことをちゃんと<ruby>見<rt>み</rt></ruby>ていた<ruby>証拠<rt>しょうこ</rt></ruby>だって、マイさんが<ruby>言<rt>い</rt></ruby>ってくれました。<br>*(Đúng vậy. Chị Mai-san nói với mình rằng khóc được là bằng chứng mình đã thực sự quan tâm đến bà Sato.)* |
| Tanaka | ...そうなんですね。<br>*(... Vậy à.)* |
| Ngọc | <ruby>時間<rt>じかん</rt></ruby>がたつと、また<ruby>仕事<rt>しごと</rt></ruby>に<ruby>向<rt>む</rt></ruby>かえるようになります。でも<ruby>今日<rt>きょう</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>しなくていい。<ruby>今<rt>いま</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>大事<rt>だいじ</rt></ruby>にしてください。<br>*(Theo thời gian, bạn sẽ lại hướng được vào công việc. Nhưng hôm nay không cần ép. Hãy trân trọng cảm xúc bây giờ của bạn.)* |
| Tanaka | (gật đầu nhẹ) ...ありがとうございます、グエンさん。<br>*(... Cảm ơn chị Nguyễn.)* |
| Ngọc | (nhỏ giọng) お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Hôm nay bạn vất vả rồi. Chúng mình cùng cố nhé.)* |

---

## Tình huống 12 — Phòng ký túc · 22:00, Ngọc viết sổ tay (tiếng Việt)

> *Scene cuối tiếng Việt — Ngọc một mình với cuốn sổ tay nhỏ.*

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt — viết vào sổ tay) Hôm nay bà Sato đi rồi. Bà gọi cháu là Yuri — tên con gái bà. Cháu không sửa. Cháu chỉ nói "vâng, con ở đây". |
| Ngọc | (tiếp) Cháu không biết đó có phải đúng hay không. Nhưng lúc đó, cảm giác điều đúng nhất cháu có thể làm là ở đó — giữ tay bà, để bà biết có người bên cạnh. |
| Ngọc | (tiếp) Chị Yamamoto nói: "Ở bên cạnh tự nó đã là sự chăm sóc." Cháu muốn ghi lại câu đó, vì cháu sẽ cần nhớ lại nó nhiều lần nữa trong đời làm nghề này. |
| Ngọc | (tiếp) Cháu sang Nhật vì muốn có tiền gửi về. Điều đó vẫn còn đúng. Nhưng hôm nay cháu hiểu thêm một thứ — nghề này không chỉ là việc làm. Nó là lần cháu được ở bên một người trong khoảnh khắc quan trọng nhất của họ. Và họ tin tưởng cháu để làm điều đó. |
| Ngọc | (khép sổ, ngồi yên một lúc) |

---

## Đọng lại chương 10

看取りケア không phải là thất bại của y tế — đó là sự tôn trọng triệt để nhất dành cho một con người. Ngọc học cách chăm sóc miệng và thân thể nhẹ nhàng cho người 終末期 (口腔ケア・清拭), học cách trò chuyện bình thường bên giường — không cần nhiều lời, chỉ cần hiện diện. Đội chăm sóc cùng nhau lên kế hoạch 看取りケア (チームで看取る) với sự phối hợp giữa điều dưỡng và y tá. Và khi mọi thứ kết thúc, Ngọc quay lại hỗ trợ đồng nghiệp trẻ đang bỡ ngỡ — đó là lúc nhận ra mình đã thực sự trưởng thành trong nghề. "ở bên cạnh" là một hành động chuyên môn đòi hỏi cả kỹ năng lẫn trái tim.

> Từ vựng & mẫu câu chương này: 看取りケア・終末期・口腔ケア・清拭・体位変換・苦痛緩和・尊厳・穏やか・旅立つ・お悔やみ申し上げます・そばにいる・光栄でした・一人で逝かせない・チームで看取る・気持ちいいですか・呼吸の変化・顔色・体温', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000011, 800000028, NULL, 'markdown_book', 'T11. Tiễn biệt và trưởng thành (別れと成長)', '# Sách thực tập sinh điều dưỡng · T11. Tiễn biệt và trưởng thành (別れと成長)

> **Mục tiêu nhân vật:** Chương 11 nối tiếp trực tiếp sau 看取りケア (chương 10). Bà Sato đã qua đời. Ngọc học cách thực hiện các nghiệp vụ sau khi mất một cách tôn trọng, tiếp đón gia đình, nói lời chia buồn chuẩn nghiệp vụ, xử lý cảm xúc bản thân — và nhận ra ý nghĩa sâu xa của nghề điều dưỡng qua mất mát đầu tiên.

---

## Bối cảnh

Tháng 3 năm 2028. Một ngày sau khi bà Sato (88 tuổi, 認知症) ra đi êm đềm vào buổi chiều hôm trước. Đội Hidamari-en chuẩn bị tiễn biệt bà theo đúng nghi thức và tình người. Ngọc — gần 2 năm làm việc, N3 vững — lần đầu trải qua toàn bộ quy trình sau khi mất. Chương này không miêu tả cái chết trực diện mà tập trung vào 尊厳 (phẩm giá), nghiệp vụ chuyên môn, và sự trưởng thành của Ngọc.

---

## Tình huống 1 — Phòng họp nhân viên · 8:00, bàn giao ca sáng ngày hôm sau

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、おはようございます。<ruby>昨日<rt>きのう</rt></ruby>の16<ruby>時<rt>じ</rt></ruby>45<ruby>分<rt>ふん</rt></ruby>に、<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>旅立<rt>たびだ</rt></ruby>たれました。<br>*(Mọi người, chào buổi sáng. Lúc 16 giờ 45 phút hôm qua, bà Sato đã nhẹ nhàng ra đi.)* |
| Yamamoto | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>穏<rt>おだ</rt></ruby>やかで、<ruby>苦<rt>くる</rt></ruby>しまれていませんでした。チームで<ruby>支<rt>ささ</rt></ruby>えることができました。<br>*(Bà bình thản cho đến phút cuối, không đau đớn. Chúng ta đã cùng nhau hỗ trợ bà được.)* |
| Nhân viên A | (cúi đầu nhẹ) ...ありがとうございました、<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(... Cảm ơn bà Sato.)* |
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>は<ruby>ご家族<rt>ごかぞく</rt></ruby>がいらっしゃいます。<ruby>対応<rt>たいおう</rt></ruby>は<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>行<rt>おこな</rt></ruby>います。グエンさん、<ruby>昨日<rt>きのう</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体<rt>からだ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Hôm nay gia đình bà sẽ đến. Chúng ta đối ứng thật chu đáo nhé. Em Nguyễn, hôm qua em vất vả rồi. Em có khỏe không?)* |
| Ngọc | はい。<ruby>心配<rt>しんぱい</rt></ruby>をおかけしました。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng ạ. Em xin lỗi vì đã khiến chị lo. Em ổn rồi ạ.)* |
| Yamamoto | <ruby>無理<rt>むり</rt></ruby>せず。<ruby>今日<rt>きょう</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Đừng cố quá sức. Hôm nay chúng ta lại cùng nhau nhé.)* |
| Ngọc | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị ạ.)* |

---

## Tình huống 2 — Hành lang trước phòng bà Sato · 9:00, Yamamoto giải thích エンゼルケア

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はなし</rt></ruby>があります。<ruby>今日<rt>きょう</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>について。<br>*(Em Nguyễn, tôi muốn nói về công việc hôm nay một chút.)* |
| Ngọc | はい、<ruby>聞<rt>き</rt></ruby>いています。<br>*(Vâng, em nghe ạ.)* |
| Yamamoto | <ruby>今朝<rt>けさ</rt></ruby>、<ruby>看護師<rt>かんごし</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に「<ruby>死後<rt>しご</rt></ruby>のケア」を<ruby>行<rt>おこな</rt></ruby>います。「エンゼルケア」とも<ruby>呼<rt>よ</rt></ruby>ばれています。<br>*(Sáng nay chúng ta cùng y tá thực hiện "chăm sóc sau khi mất". Còn được gọi là "エンゼルケア".)* |
| Ngọc | エンゼルケアというのは、どんなことをしますか?<br>*(エンゼルケア là làm những gì ạ?)* |
| Yamamoto | <ruby>体<rt>からだ</rt></ruby>を<ruby>清潔<rt>せいけつ</rt></ruby>にし、<ruby>着替<rt>きが</rt></ruby>えをして、<ruby>整<rt>ととの</rt></ruby>えること。<ruby>生前<rt>せいぜん</rt></ruby>お<ruby>好<rt>す</rt></ruby>きだった<ruby>服<rt>ふく</rt></ruby>やお<ruby>化粧<rt>けしょう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えることもあります。<br>*(Là làm sạch cơ thể, thay quần áo, và chỉnh tề. Đôi khi còn mặc trang phục yêu thích khi còn sống, hoặc trang điểm nhẹ.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんも?<br>*(Bà Sato cũng vậy ạ?)* |
| Yamamoto | はい。<ruby>昨日<rt>きのう</rt></ruby>のうちに<ruby>息子<rt>むすこ</rt></ruby>さんから、<ruby>花柄<rt>はながら</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>が<ruby>好<rt>す</rt></ruby>きだったとお<ruby>聞<rt>き</rt></ruby>きしました。<ruby>準備<rt>じゅんび</rt></ruby>しています。<br>*(Vâng. Tối qua con trai bà cho biết bà thích kimono họa tiết hoa. Chúng ta đã chuẩn bị rồi.)* |
| Ngọc | (nhỏ giọng) <ruby>佐藤<rt>さとう</rt></ruby>さんらしいですね。<br>*(Đúng chất bà Sato nhỉ ạ.)* |
| Yamamoto | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ること。それがエンゼルケアの<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Giữ phẩm giá cho người đến phút cuối. Đó là ý nghĩa của Angel Care.)* |
| Ngọc | はい、しっかり<ruby>学<rt>まな</rt></ruby>ばせてください。<br>*(Vâng, mong chị cho cháu học kỹ ạ.)* |

---

## Tình huống 3 — Phòng bà Sato · 9:30, thực hiện エンゼルケア cùng y tá

| Vai | Lời thoại |
|---|---|
| 看護師 | グエンさん、<ruby>手<rt>て</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>って、<ruby>手袋<rt>てぶくろ</rt></ruby>をつけてください。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>佐藤<rt>さとう</rt></ruby>さんを<ruby>整<rt>ととの</rt></ruby>えます。<br>*(Em Nguyễn, rửa tay rồi đeo găng vào. Chúng ta cùng chỉnh tề cho bà Sato nhé.)* |
| Ngọc | はい。(rửa tay cẩn thận, đeo găng) <ruby>準備<rt>じゅんび</rt></ruby>できました。<br>*(Vâng. Em sẵn sàng rồi ạ.)* |
| 看護師 | <ruby>お顔<rt>おかお</rt></ruby>をきれいに<ruby>拭<rt>ふ</rt></ruby>いてください。<ruby>温<rt>あたた</rt></ruby>かいタオルで、<ruby>優<rt>やさ</rt></ruby>しく。<br>*(Em lau mặt cho bà nhẹ nhàng nhé. Dùng khăn ấm, nhẹ tay thôi.)* |
| Ngọc | (nhẹ nhàng lau mặt cho bà) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Bà Sato, cháu xin phép ạ.)* |
| 看護師 | (nhỏ giọng) <ruby>声<rt>こえ</rt></ruby>かけしながらやるのはいいことですよ。<ruby>今<rt>いま</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>こえているかもしれない。<br>*(Vừa làm vừa lên tiếng như vậy là tốt đấy. Biết đâu bà vẫn còn nghe thấy.)* |
| Ngọc | (tiếp tục nhẹ nhàng) きれいにしますよ。<ruby>佐藤<rt>さとう</rt></ruby>さん。<ruby>花柄<rt>はながら</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>、お<ruby>好<rt>す</rt></ruby>きだったんですね。<br>*(Cháu làm sạch cho bà nhé. Bà Sato. Bà thích kimono họa tiết hoa nhỉ.)* |
| 看護師 | <ruby>表情<rt>ひょうじょう</rt></ruby>、<ruby>穏<rt>おだ</rt></ruby>やかですね。<br>*(Nét mặt bà bình thản quá nhỉ.)* |
| Ngọc | (gật đầu, giữ xúc cảm) ...はい。<ruby>安らかそうです<rt>やすらかそうです</rt></ruby>。<br>*(... Vâng. Trông bà rất thanh thản ạ.)* |

---

## Tình huống 4 — Phòng họp nhỏ · 10:30, ôn lại các mẫu câu chia buồn trước khi đón gia đình

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>午後<rt>ごご</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>ご家族<rt>ごかぞく</rt></ruby>が<ruby>来<rt>き</rt></ruby>られます。<ruby>対応<rt>たいおう</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Em Nguyễn, chiều nay gia đình bà Sato sẽ đến. Chúng ta xem lại các câu nói lúc tiếp đón nhé.)* |
| Ngọc | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Vâng ạ. Cháu nên nói gì ạ?)* |
| Yamamoto | まず、「<ruby>お悔やみ<rt>おくやみ</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます」。これは<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>います。<br>*(Trước hết, "Xin chia buồn cùng gia đình". Câu này nhất định phải nói.)* |
| Ngọc | <ruby>お悔やみ<rt>おくやみ</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。(lặp lại nhẹ nhàng)<br>*(Xin chia buồn cùng gia đình.)* |
| Yamamoto | そして「<ruby>大変<rt>たいへん</rt></ruby>つらいところ、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます」。<ruby>ご家族<rt>ごかぞく</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちに<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Và "Trong lúc buồn đau, cảm ơn quý vị đã đến". Đây là câu chia sẻ cùng cảm xúc của gia đình.)* |
| Ngọc | <ruby>大変<rt>たいへん</rt></ruby>つらいところ、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。(luyện tập cẩn thận)<br>*(Trong lúc buồn đau, cảm ơn quý vị đã đến.)* |
| Yamamoto | いいですね。そして<ruby>無理<rt>むり</rt></ruby>に<ruby>話<rt>はな</rt></ruby>さなくてもいい。<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げて、<ruby>静<rt>しず</rt></ruby>かに<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>うことも<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Tốt lắm. Và không nhất thiết phải cố nói nhiều. Cúi đầu, lặng lẽ ở bên cũng là điều quan trọng.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em hiểu ạ. Em sẽ chú ý.)* |

---

## Tình huống 5 — Sảnh tiếp khách · 13:30, đón gia đình bà Sato đến

| Vai | Lời thoại |
|---|---|
| Con trai bà Sato | (bước vào cùng vợ và hai cháu, giọng trầm) <ruby>佐藤<rt>さとう</rt></ruby>ですが。<br>*(Chúng tôi là gia đình bà Sato.)* |
| Yamamoto | (cúi đầu sâu) ようこそいらっしゃいました。<ruby>大変<rt>たいへん</rt></ruby>つらいところ、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Mời vào ạ. Trong lúc buồn đau, cảm ơn quý vị đã đến.)* |
| Ngọc | (cúi đầu thật sâu) <ruby>お悔やみ<rt>おくやみ</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>大変<rt>たいへん</rt></ruby>つらいところ、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Xin chia buồn cùng gia đình. Trong lúc buồn đau, cảm ơn quý vị đã đến.)* |
| Con trai | (nhìn Ngọc, nhận ra) あ、グエンさん...。<ruby>昨日<rt>きのう</rt></ruby>はありがとうございました。<ruby>母<rt>はは</rt></ruby>のそばにいてくれて。<br>*(À, cô Nguyễn... Hôm qua cảm ơn cô đã ở bên mẹ tôi.)* |
| Ngọc | (cúi đầu) いいえ。<ruby>佐藤<rt>さとう</rt></ruby>さんには、たいへんお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>お部屋<rt>おへや</rt></ruby>にご<ruby>案内<rt>あんない</rt></ruby>しますね。<br>*(Không có gì ạ. Bà Sato đã rất tốt với cháu. Cháu đưa quý vị vào phòng nhé.)* |
| Con dâu bà Sato | (mắt đỏ, thì thầm) <ruby>最後<rt>さいご</rt></ruby>は...きれいな<ruby>顔<rt>かお</rt></ruby>をしていますか?<br>*(Bà... trông có bình thản không ạ?)* |
| Ngọc | (nhẹ nhàng) はい。<ruby>穏<rt>おだ</rt></ruby>やかな<ruby>お顔<rt>おかお</rt></ruby>をされています。<ruby>花柄<rt>はながら</rt></ruby>の<ruby>着物<rt>きもの</rt></ruby>をお<ruby>着<rt>き</rt></ruby>せしました。<br>*(Vâng ạ. Nét mặt bà rất bình thản. Chúng cháu đã mặc kimono họa tiết hoa cho bà rồi ạ.)* |
| Con dâu | (thở nhẹ) ...ありがとうございます。<br>*(... Cảm ơn cô.)* |

---

## Tình huống 6 — Phòng bà Sato · 14:00, gia đình gặp mặt lần cuối

| Vai | Lời thoại |
|---|---|
| Ngọc | (đứng ở ngưỡng cửa, nhỏ giọng) ごゆっくりどうぞ。<ruby>何<rt>なに</rt></ruby>かあればいつでも<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Mời quý vị cứ từ từ ạ. Có gì cứ gọi chúng cháu bất cứ lúc nào.)* |
| Con trai | (gật đầu, giọng xúc động) ...はい。<br>*(... Vâng.)* |
| (Ngọc khép cửa nhẹ nhàng, đứng ngoài hành lang)<br>*(Ngọc khép cửa, đứng chờ ở ngoài hành lang.)* | |
| Yamamoto | (bước đến cạnh Ngọc, nói nhỏ) よかった。<ruby>対応<rt>たいおう</rt></ruby>、とても<ruby>丁寧<rt>ていねい</rt></ruby>でした。<br>*(Tốt lắm. Em tiếp đón rất chu đáo đấy.)* |
| Ngọc | (thì thầm) ...<ruby>佐藤<rt>さとう</rt></ruby>さんのために、ちゃんとできてよかったです。<br>*(... Cháu mừng vì đã làm đúng để tiễn bà Sato.)* |
| Yamamoto | これも<ruby>仕事<rt>しごと</rt></ruby>の<ruby>一部<rt>いちぶ</rt></ruby>です。<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>の。<br>*(Đây cũng là một phần của công việc. Một phần rất quan trọng.)* |

---

## Tình huống 7 — Phòng tiếp khách · 15:30, con trai bà Sato trao đổi cảm ơn

| Vai | Lời thoại |
|---|---|
| Con trai | グエンさん、<ruby>少し<rt>すこし</rt></ruby>よろしいですか。<br>*(Cô Nguyễn, có thể nói chuyện một chút không?)* |
| Ngọc | はい、もちろんです。<br>*(Vâng, tất nhiên ạ.)* |
| Con trai | <ruby>母<rt>はは</rt></ruby>は<ruby>最後<rt>さいご</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、あなたのことをよく<ruby>話<rt>はな</rt></ruby>していました。「グエンちゃんは<ruby>手<rt>て</rt></ruby>が<ruby>優<rt>やさ</rt></ruby>しい」と。<br>*(Những ngày cuối, mẹ tôi hay nhắc đến cô. Bà nói "Nguyễn có bàn tay nhẹ nhàng".)* |
| Ngọc | (xúc động, cúi đầu) ...ありがとうございます。そのようにおっしゃっていただけると、うれしいです。<br>*(... Cảm ơn ạ. Nghe vậy cháu rất vui.)* |
| Con trai | <ruby>認知症<rt>にんちしょう</rt></ruby>が<ruby>進<rt>すす</rt></ruby>んでからも、あなたのことは<ruby>分<rt>わ</rt></ruby>かっていたようです。<ruby>顔<rt>かお</rt></ruby>を<ruby>見<rt>み</rt></ruby>ると<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていたと<ruby>聞<rt>き</rt></ruby>きました。<br>*(Ngay cả khi 認知症 tiến triển, bà vẫn nhận ra cô. Nghe nói mỗi khi thấy mặt cô, bà trở nên bình tĩnh.)* |
| Ngọc | (nhẹ nhàng) <ruby>佐藤<rt>さとう</rt></ruby>さんには、いつも<ruby>笑顔<rt>えがお</rt></ruby>をいただきました。こちらのほうが<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Bà Sato luôn cho cháu nụ cười. Người biết ơn là cháu mới đúng ạ.)* |
| Con trai | (gật đầu, mắt ướt) ...ほんとうに、ありがとうございました。<br>*(... Thật sự, xin cảm ơn cô.)* |
| Ngọc | (cúi đầu) <ruby>佐藤<rt>さとう</rt></ruby>さんのご<ruby>冥福<rt>めいふく</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>よりお<ruby>祈<rt>いの</rt></ruby>りしています。<br>*(Cháu thành tâm cầu nguyện cho bà Sato được yên nghỉ ạ.)* |

---

## Tình huống 8 — Phòng bà Sato sau khi gia đình rời đi · 17:00, dọn phòng với tình người

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>部屋<rt>へや</rt></ruby>の<ruby>片付<rt>かたづ</rt></ruby>けを<ruby>一緒<rt>いっしょ</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em Nguyễn, nhờ em cùng dọn phòng nhé.)* |
| Ngọc | はい。どこからはじめますか?<br>*(Vâng. Mình bắt đầu từ đâu ạ?)* |
| Yamamoto | まず<ruby>ベッド<rt>べっど</rt></ruby>のリネンを<ruby>交換<rt>こうかん</rt></ruby>します。そのあと、<ruby>窓<rt>まど</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けて<ruby>換気<rt>かんき</rt></ruby>しましょう。<br>*(Trước hết thay bộ ga giường. Sau đó mở cửa sổ thông khí nhé.)* |
| Ngọc | (bắt đầu dọn, tay nhẹ nhàng) <ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>写真<rt>しゃしん</rt></ruby>は...<br>*(Ảnh của bà Sato thì...)* |
| Yamamoto | <ruby>息子<rt>むすこ</rt></ruby>さんが<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>られました。でも<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>好<rt>す</rt></ruby>きだった<ruby>花<rt>はな</rt></ruby>は、もう<ruby>少し<rt>すこし</rt></ruby>このままにしておきます。<br>*(Con trai đã mang về rồi. Nhưng bông hoa bà Sato thích thì để thêm một lúc nữa nhé.)* |
| Ngọc | (nhìn bông hoa nhỏ trên bàn đầu giường) ...そうですね。<br>*(... Vâng, thế mới đúng ạ.)* |
| Yamamoto | この<ruby>仕事<rt>しごと</rt></ruby>は、<ruby>別<rt>わか</rt></ruby>れを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す<ruby>仕事<rt>しごと</rt></ruby>です。でも、その<ruby>別<rt>わか</rt></ruby>れ<ruby>一つ一つ<rt>ひとつひとつ</rt></ruby>に<ruby>意味<rt>いみ</rt></ruby>がある。<br>*(Công việc này là công việc lặp đi lặp lại những lần chia tay. Nhưng mỗi lần chia tay đó đều có ý nghĩa của nó.)* |
| Ngọc | (gật đầu chậm) はい。<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>過<rt>す</rt></ruby>ごした<ruby>時間<rt>じかん</rt></ruby>は、<ruby>消<rt>き</rt></ruby>えないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Cháu nghĩ khoảng thời gian ở bên bà Sato sẽ không bao giờ mất đi ạ.)* |

---

## Tình huống 9 — Phòng nghỉ nhân viên · 18:30, Yamamoto trao đổi cá nhân với Ngọc

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>座<rt>すわ</rt></ruby>ってください。<ruby>少し<rt>すこし</rt></ruby>いいですか。<br>*(Em Nguyễn, ngồi xuống đi. Tôi nói chuyện một chút được không?)* |
| Ngọc | はい。<br>*(Vâng ạ.)* |
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていて、グエンさんは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>したと<ruby>思<rt>おも</rt></ruby>いました。2<ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>来<rt>き</rt></ruby>たときを<ruby>覚<rt>おぼ</rt></ruby>えていますか?<br>*(Nhìn cách em đối ứng hôm nay, tôi thấy em đã thực sự trưởng thành. Em có nhớ 2 năm trước, ngày đầu tiên đến không?)* |
| Ngọc | (mỉm cười nhẹ) はい。とても<ruby>緊張<rt>きんちょう</rt></ruby>していて、<ruby>声<rt>こえ</rt></ruby>かけの<ruby>仕方<rt>しかた</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からなかった。<br>*(Vâng ạ. Em hồi hộp lắm, cách lên tiếng trước cũng không biết.)* |
| Yamamoto | <ruby>今<rt>いま</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>して<ruby>動<rt>うご</rt></ruby>けている。ご<ruby>家族<rt>かぞく</rt></ruby>への<ruby>言葉<rt>ことば</rt></ruby>も、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていた。<br>*(Bây giờ em tự mình phán đoán và hành động được rồi. Lời nói với gia đình cũng bình tĩnh lắm.)* |
| Ngọc | ...<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えていただいたからです。チームのおかげです。<br>*(... Là vì chị đã dạy cháu. Là nhờ cả đội ạ.)* |
| Yamamoto | それだけじゃない。グエンさんが<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>ってきたからです。<ruby>佐藤<rt>さとう</rt></ruby>さんに<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>って、この<ruby>仕事<rt>しごと</rt></ruby>に<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>ってきた。それが<ruby>今日<rt>きょう</rt></ruby>の<ruby>あなた<rt>あなた</rt></ruby>を<ruby>作<rt>つく</rt></ruby>った。<br>*(Không chỉ vậy. Vì em đã đối diện nghiêm túc với mọi thứ. Đối diện với bà Sato, đối diện với công việc này. Đó là điều tạo nên em của ngày hôm nay.)* |
| Ngọc | (cúi đầu, giọng xúc động) ...ありがとうございます。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(... Cảm ơn chị. Mong chị tiếp tục chỉ bảo cháu ạ.)* |

---

## Tình huống 10 — Phòng sinh hoạt · 19:00, ông Tanaka hỏi về bà Sato

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | グエン、<ruby>佐藤<rt>さとう</rt></ruby>さんは...もういないのか。<br>*(Nguyễn, bà Sato... bà đã không còn nữa rồi à.)* |
| Ngọc | (ngồi xuống cạnh ông Tanaka, giọng nhẹ nhàng) はい。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>旅立<rt>たびだ</rt></ruby>たれました。<ruby>苦<rt>くる</rt></ruby>しまれていませんでした。<br>*(Vâng ạ. Chiều qua bà đã nhẹ nhàng ra đi. Bà không đau đớn gì cả.)* |
| Ông Tanaka | (nhìn ra cửa sổ) そうか。...あの<ruby>人<rt>ひと</rt></ruby>は<ruby>昔<rt>むかし</rt></ruby>、<ruby>静岡<rt>しずおか</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をよくしていたな。<br>*(Vậy à. ... Ngày xưa bà ấy hay kể chuyện hoa anh đào ở Shizuoka lắm.)* |
| Ngọc | (nhỏ giọng) そうなんですか。<ruby>最後<rt>さいご</rt></ruby>に<ruby>桜<rt>さくら</rt></ruby>のことをおっしゃっていました。「きれいだった」と。<br>*(Vậy ạ. Những ngày cuối bà cũng nhắc đến hoa anh đào. Bà nói "đẹp lắm".)* |
| Ông Tanaka | (gật đầu chậm) ...そうか。よかった。<br>*(... Vậy à. Thế là tốt rồi.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんも、<ruby>今日<rt>きょう</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はいかがですか?<br>*(Còn ông Tanaka, hôm nay ông cảm thấy thế nào ạ?)* |
| Ông Tanaka | まあ、いつもと<ruby>変<rt>か</rt></ruby>わらんな。(khẽ nhìn Ngọc) ...お<ruby>前<rt>まえ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か。<br>*(Ừ, cũng như mọi ngày thôi. (liếc nhìn Ngọc) ... Còn cháu thì ổn chứ.)* |
| Ngọc | (gật đầu, mỉm cười nhẹ) はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ありがとうございます、<ruby>田中<rt>たなか</rt></ruby>さん。<br>*(Vâng, cháu ổn ạ. Cháu cảm ơn ông.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · 20:00, Mai-san và Ngọc cùng nhau sau ca

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>今日<rt>きょう</rt></ruby>もよく<ruby>頑張<rt>がんば</rt></ruby>りましたね。<br>*(Em Nguyễn, hôm nay em cũng cố gắng lắm nhỉ.)* |
| Ngọc | マイさん、あの...<ruby>一つ<rt>ひとつ</rt></ruby><ruby>聞<rt>き</rt></ruby>いてもいいですか。<br>*(Chị Mai-san, à... cháu hỏi một điều được không ạ?)* |
| Mai-san | もちろん。<br>*(Tất nhiên rồi.)* |
| Ngọc | この<ruby>仕事<rt>しごと</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けていると、<ruby>別<rt>わか</rt></ruby>れが<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>される。マイさんは、<ruby>慣<rt>な</rt></ruby>れますか? <ruby>慣<rt>な</rt></ruby>れたほうがいいのでしょうか?<br>*(Tiếp tục công việc này, sẽ lại tiễn biệt nhiều lần nữa. Chị có quen với điều đó không? Hay là nên quen đi?)* |
| Mai-san | (suy nghĩ một chút) ...<ruby>慣れる<rt>なれる</rt></ruby>というより、<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>め<ruby>方<rt>かた</rt></ruby>が<ruby>変<rt>か</rt></ruby>わると<ruby>思<rt>おも</rt></ruby>う。<ruby>辛<rt>つら</rt></ruby>くなくなるんじゃなくて、<ruby>辛<rt>つら</rt></ruby>くても<ruby>前<rt>まえ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>める<ruby>力<rt>ちから</rt></ruby>がつく。<br>*(... Không phải quen được, mà cách đón nhận nó sẽ thay đổi. Không phải là không còn đau nữa — mà là dù đau vẫn có thể tiếp tục bước về phía trước.)* |
| Ngọc | ...<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>め<ruby>方<rt>かた</rt></ruby>が<ruby>変<rt>か</rt></ruby>わる。<br>*(... Cách đón nhận nó thay đổi.)* |
| Mai-san | グエンさんも<ruby>今日<rt>きょう</rt></ruby>、その<ruby>第一歩<rt>だいいっぽ</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>み<ruby>出<rt>だ</rt></ruby>したと<ruby>思<rt>おも</rt></ruby>う。<ruby>泣<rt>な</rt></ruby>きながらも、ちゃんと<ruby>仕事<rt>しごと</rt></ruby>をした。<br>*(Em Nguyễn hôm nay cũng đã bước qua bước đầu tiên đó rồi. Vừa khóc, vừa vẫn làm tốt công việc.)* |
| Ngọc | (gật đầu chậm) ...はい。<ruby>続<rt>つづ</rt></ruby>けます。<ruby>佐藤<rt>さとう</rt></ruby>さんのぶんも、しっかり。<br>*(... Vâng. Cháu sẽ tiếp tục. Cả phần của bà Sato nữa.)* |

---

## Tình huống 12 — Ký túc xá · 22:00, Ngọc viết sổ tay (tiếng Việt)

> *Scene cuối tiếng Việt — Ngọc một mình với cuốn sổ, ghi lại điều đã thay đổi trong lòng.*

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt — viết vào sổ tay) Hôm nay cháu học được từ "エンゼルケア" — chăm sóc sau khi mất. Tưởng nghe sẽ sợ. Nhưng không phải vậy. Làm xong, cháu chỉ cảm thấy — đây là việc cần làm, và cần làm bằng tất cả sự tôn trọng. |
| Ngọc | (tiếp) Cháu đã cúi đầu trước gia đình bà Sato và nói "お悔やみ申し上げます". Câu đó khó. Không phải vì phát âm khó. Mà vì phải nói thật — không được để nó thành câu thuộc lòng. |
| Ngọc | (tiếp) Chị Mai-san nói: "Không phải là không đau nữa. Mà là dù đau vẫn tiếp tục được." Cháu nghĩ đó là định nghĩa của trưởng thành trong nghề này. |
| Ngọc | (tiếp) Cháu còn nhớ ngày đầu, cháu run khi gõ cửa phòng ông Tanaka. Giờ cháu đứng trước gia đình bà Sato, cúi đầu, nói đúng câu, và không bỏ chạy. Cháu không biết đó là dũng cảm hay chỉ là nghề nghiệp. Nhưng cháu nghĩ — có lẽ khi nghề và dũng cảm không còn khác nhau, thì mình đã thực sự vào nghề rồi. |
| Ngọc | (khép sổ, nhìn lên trần nhà một lúc) Bà Sato, cháu cảm ơn bà. |

---

## Đọng lại chương 11

Chương tiễn biệt không phải là chương về cái chết — mà là chương về phẩm giá. Ngọc học エンゼルケア (chăm sóc sau khi mất) với tinh thần tôn trọng tuyệt đối, luyện tập và thực hiện các mẫu câu chia buồn chuẩn nghiệp vụ (お悔やみ申し上げます・大変つらいところお越しいただきありがとうございます・ご冥福をお祈りしています), đón tiếp gia đình bằng sự bình tĩnh và chu đáo. Qua lời ông Tanaka, qua cuộc trò chuyện với Mai-san, Ngọc bắt đầu hiểu: nghề điều dưỡng không đòi hỏi bạn không đau — mà đòi hỏi bạn tiếp tục dù đau.

> Từ vựng & mẫu câu chương này: エンゼルケア・死後のケア・尊厳・旅立つ・お悔やみ申し上げます・大変つらいところ・お越しいただきありがとうございます・ご冥福をお祈りします・穏やか・安らか・受け止め方・成長・別れを繰り返す・ごゆっくりどうぞ', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (828000012, 800000028, NULL, 'markdown_book', 'T12. Tổng kết năm 2 (二年目の振り返り)', '# Sách thực tập sinh điều dưỡng · T12. Tổng kết năm 2 (二年目の振り返り)

> **Mục tiêu nhân vật:** Cuối năm 2. Ngọc 面談 với Yamamoto nhìn lại hành trình — đỗ N3, đỗ thi kỹ năng, vượt qua 看取り đầu tiên, thành thạo 記録. Bàn về chuyển 特定技能 sang năm 3. Xen nghiệp vụ thực tế cho thấy Ngọc giờ tự tin và vững vàng. Hé mở năm 3.

---

## Bối cảnh

Cuối tháng 3 năm 2028. Ngọc gần tròn 2 năm tại Hidamari-en. Năm 2 đã đánh dấu bước ngoặt lớn: vượt qua 看取り đầu tiên, đỗ N3, đỗ thi kỹ năng đặc định (特定技能評価試験), và ngày càng vững trong nghiệp vụ điều dưỡng. Chương này là buổi 面談 tổng kết năm 2 và bàn hướng năm 3, xen các tình huống nghiệp vụ cho thấy độ vững của Ngọc sau 2 năm.

---

## Tình huống 1 — Phòng sinh hoạt chung · 8:30, buổi sáng Ngọc dẫn đội tập thể dục

| Vai | Lời thoại |
|---|---|
| Ngọc | みなさん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>もラジオ<ruby>体操<rt>たいそう</rt></ruby>をしましょう。<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Mọi người, chào buổi sáng. Hôm nay chúng ta lại tập thể dục buổi sáng nhé. Sẵn sàng chưa ạ?)* |
| Ông Tanaka | グエン、お<ruby>前<rt>まえ</rt></ruby>が<ruby>仕切<rt>しき</rt></ruby>るようになったな。<br>*(Nguyễn, cháu dẫn được rồi nhỉ.)* |
| Ngọc | (cười) おかげさまで。<ruby>田中<rt>たなか</rt></ruby>さんたちに<ruby>鍛<rt>きた</rt></ruby>えてもらいましたから。では、はじめます。<ruby>手<rt>て</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げてください。<br>*(Nhờ mọi người mà cháu mới được vậy ạ. Vậy mình bắt đầu nhé. Giơ tay lên ạ.)* |
| Bà Kimura | グエンちゃん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>ね。<br>*(Nguyễn này, hôm nay bà trông tươi nhỉ.)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さんが<ruby>元気<rt>げんき</rt></ruby>でいてくださるから、わたしも<ruby>元気<rt>げんき</rt></ruby>です。はい、<ruby>次<rt>つぎ</rt></ruby>は<ruby>肩<rt>かた</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>してください。<br>*(Vì bà Kimura khỏe mạnh nên cháu cũng khỏe ạ. Vâng, tiếp theo xoay vai nhé.)* |
| Nhân viên mới | (thì thầm với đồng nghiệp) グエンさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>自然<rt>しぜん</rt></ruby>ですね。<ruby>利用者<rt>りようしゃ</rt></ruby>さんとの<ruby>距離<rt>きょり</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>方<rt>かた</rt></ruby>が。<br>*(Chị Nguyễn tự nhiên thật nhỉ. Cách chị giữ khoảng cách với các cụ.)* |

---

## Tình huống 2 — Bên giường ông Tanaka · 9:30, chăm sóc buổi sáng độc lập

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa nhẹ) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>ってもいいですか?<br>*(Ông Tanaka, cháu Nguyễn đây ạ. Cháu vào được không ạ?)* |
| Ông Tanaka | ああ、どうぞ。<br>*(Ừ, vào đi.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>足<rt>あし</rt></ruby>のむくみを<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>昨日<rt>きのう</rt></ruby>から<ruby>少し<rt>すこし</rt></ruby><ruby>気<rt>き</rt></ruby>になっていたので。<br>*(Hôm nay cháu kiểm tra phù chân cho ông nhé. Từ hôm qua cháu có để ý thấy một chút.)* |
| Ông Tanaka | ふん、よく<ruby>見<rt>み</rt></ruby>てるな。<br>*(Hừ, cháu quan sát kỹ nhỉ.)* |
| Ngọc | (kiểm tra cẩn thận) <ruby>右足<rt>みぎあし</rt></ruby>に<ruby>少し<rt>すこし</rt></ruby>むくみがありますね。<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Chân phải có phù một chút nhỉ. Cháu báo với y tá nhé.)* |
| Ông Tanaka | ...お<ruby>前<rt>まえ</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby>のころより<ruby>随分<rt>ずいぶん</rt></ruby><ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いたな。<br>*(... Cháu bình tĩnh hơn hồi mới đến nhiều nhỉ.)* |
| Ngọc | (gật đầu) ありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>鍛<rt>きた</rt></ruby>えていただきました。<br>*(Cảm ơn ông ạ. Cháu được ông rèn giũa mà.)* |
| Ông Tanaka | (khẽ cười) ふっ、そうか。<br>*(Phù, vậy à.)* |

---

## Tình huống 3 — Phòng họp nhỏ · 10:30, Ngọc hướng dẫn nhân viên mới viết 記録

| Vai | Lời thoại |
|---|---|
| Nhân viên mới (Tanaka-san) | グエンさん、<ruby>記録<rt>きろく</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>がまだよく<ruby>分<rt>わ</rt></ruby>からなくて。<ruby>見<rt>み</rt></ruby>てもらえますか?<br>*(Chị Nguyễn, em vẫn chưa hiểu rõ cách viết hồ sơ. Chị xem giúp em được không?)* |
| Ngọc | もちろん。<ruby>見<rt>み</rt></ruby>せてください。(đọc qua) ...<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>は<ruby>悪<rt>わる</rt></ruby>くないですよ。でも<ruby>二つ<rt>ふたつ</rt></ruby><ruby>直<rt>なお</rt></ruby>しましょうか。<br>*(Tất nhiên. Chị xem nhé. ... Cách viết không tệ đâu. Nhưng để chị sửa hai điểm nhỏ nhé.)* |
| Nhân viên mới | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị ạ.)* |
| Ngọc | まず、「<ruby>様子<rt>ようす</rt></ruby>がよかった」ではなくて、<ruby>具体的<rt>ぐたいてき</rt></ruby>に「<ruby>笑顔<rt>えがお</rt></ruby>が<ruby>見<rt>み</rt></ruby>られた」「<ruby>食事<rt>しょくじ</rt></ruby>を<ruby>全量<rt>ぜんりょう</rt></ruby><ruby>摂取<rt>せっしゅ</rt></ruby>した」と<ruby>書<rt>か</rt></ruby>きます。<br>*(Trước tiên, không viết "tình trạng tốt" chung chung, mà viết cụ thể: "thấy có nụ cười", "ăn hết suất".)* |
| nhân viên mới | なるほど、<ruby>具体的<rt>ぐたいてき</rt></ruby>に。<br>*(Ra vậy, cụ thể hơn.)* |
| Ngọc | それから、<ruby>時間<rt>じかん</rt></ruby>と<ruby>自分<rt>じぶん</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>書<rt>か</rt></ruby>く。「16<ruby>時<rt>じ</rt></ruby>00<ruby>分<rt>ふん</rt></ruby>、グエン<ruby>確認<rt>かくにん</rt></ruby>」のように。<br>*(Và luôn ghi thời gian và tên mình. Ví dụ "16:00, Nguyễn xác nhận" như vậy.)* |
| Nhân viên mới | はい、<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Vâng, em hiểu rồi ạ. Cảm ơn chị.)* |
| Ngọc | わたしも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じミスをしていましたよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>上手<rt>うま</rt></ruby>くなりましょう。<br>*(Chị hồi đầu cũng mắc lỗi đó mà. Chúng mình cùng tiến bộ nhé.)* |

---

## Tình huống 4 — Phòng sinh hoạt · 13:00, xử lý tình huống đột xuất bình tĩnh

| Vai | Lời thoại |
|---|---|
| Bà Kimura | (đang ngồi ăn, đột ngột ho mạnh) ごほっ...ごほっ。<br>*(Ugh... ugh. Bà đột ngột ho mạnh.)* |
| Ngọc | (đến ngay, đặt tay nhẹ lên lưng bà) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<ruby>背中<rt>せなか</rt></ruby>をさすりますね。ゆっくり<ruby>息<rt>いき</rt></ruby>を<ruby>吐<rt>は</rt></ruby>いてください。<br>*(Bà Kimura, bà ổn không? Cháu xoa lưng cho bà nhé. Từ từ thở ra nhé bà.)* |
| Bà Kimura | (ho qua rồi, thở lại được) ...ありがとう。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(... Cảm ơn. Bà được rồi.)* |
| Ngọc | <ruby>お茶<rt>おちゃ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>熱<rt>あつ</rt></ruby>かったかもしれません。ゆっくり<ruby>飲<rt>の</rt></ruby>みましょうね。<ruby>口<rt>くち</rt></ruby>のそばで<ruby>温度<rt>おんど</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから。<br>*(Trà có lẽ hơi nóng quá bà ạ. Mình uống từ từ nhé. Kiểm tra nhiệt độ gần miệng trước nhé.)* |
| Bà Kimura | うん、ありがとうね。<br>*(Ừ, cảm ơn.)* |
| Ngọc | (quay sang Yamamoto đứng gần) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>木村<rt>きむら</rt></ruby>さんがむせました。<ruby>今<rt>いま</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いています。<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>しておきます。<br>*(Chị Yamamoto, bà Kimura vừa bị sặc. Giờ bà ổn rồi. Cháu sẽ ghi vào hồ sơ nhé.)* |
| Yamamoto | (gật đầu) はい、ありがとう。<ruby>対応<rt>たいおう</rt></ruby>、よかったです。<br>*(Vâng, cảm ơn em. Em xử lý tốt.)* |

---

## Tình huống 5 — Phòng 面談 · 14:00, buổi đánh giá cuối năm với Yamamoto (phần 1: nhìn lại)

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>二年目<rt>にねんめ</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>をはじめましょう。まず、この1<ruby>年<rt>ねん</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>って、どうでしたか?<br>*(Em Nguyễn, chúng ta bắt đầu buổi 面談 năm 2 nhé. Trước hết, nhìn lại 1 năm vừa rồi, em thấy thế nào?)* |
| Ngọc | (suy nghĩ một chút) <ruby>一番<rt>いちばん</rt></ruby>は、<ruby>看取<rt>みと</rt></ruby>りを<ruby>経験<rt>けいけん</rt></ruby>したことだと<ruby>思<rt>おも</rt></ruby>います。<ruby>佐藤<rt>さとう</rt></ruby>さんのそばにいられたことが、<ruby>今<rt>いま</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>の<ruby>土台<rt>どだい</rt></ruby>になっています。<br>*(Cháu nghĩ điều lớn nhất là đã trải qua 看取り. Được ở bên cạnh bà Sato đã trở thành nền tảng của cháu bây giờ.)* |
| Yamamoto | ほかには?<br>*(Còn gì nữa không?)* |
| Ngọc | N3に<ruby>合格<rt>ごうかく</rt></ruby>できました。それと、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>評価試験<rt>ひょうかしけん</rt></ruby>も<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>記録<rt>きろく</rt></ruby>も、<ruby>最初<rt>さいしょ</rt></ruby>のころよりずっと<ruby>早<rt>はや</rt></ruby>く<ruby>書<rt>か</rt></ruby>けるようになりました。<br>*(Cháu đỗ N3 rồi ạ. Và cháu cũng đỗ kỳ thi đánh giá kỹ năng đặc định. Viết hồ sơ cũng nhanh hơn hồi đầu nhiều rồi.)* |
| Yamamoto | (gật đầu, mỉm cười) よく<ruby>頑張<rt>がんば</rt></ruby>りました。<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>は<ruby>簡単<rt>かんたん</rt></ruby>じゃないですよ。<br>*(Em đã cố gắng rất nhiều. Kỳ thi kỹ năng đặc định không dễ đâu nhé.)* |
| Ngọc | <ruby>夜<rt>よる</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しながら、<ruby>仕事<rt>しごと</rt></ruby>との<ruby>両立<rt>りょうりつ</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>でした。でも<ruby>諦<rt>あきら</rt></ruby>めなかったです。<br>*(Vừa học vừa làm việc ban đêm rất vất vả. Nhưng cháu không bỏ cuộc.)* |

---

## Tình huống 6 — Phòng 面談 · 14:30, đánh giá nghiệp vụ và điểm cần phát triển (phần 2)

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>業務<rt>ぎょうむ</rt></ruby>についても<ruby>評価<rt>ひょうか</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えますね。<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>声<rt>こえ</rt></ruby>かけ、とても<ruby>自然<rt>しぜん</rt></ruby>になりました。<ruby>記録<rt>きろく</rt></ruby>の<ruby>質<rt>しつ</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がっています。<br>*(Chị cũng nhận xét về nghiệp vụ nhé. Cách lên tiếng với các cụ đã rất tự nhiên rồi. Chất lượng hồ sơ cũng tốt lên.)* |
| Ngọc | ありがとうございます。<br>*(Cảm ơn chị ạ.)* |
| Yamamoto | <ruby>課題<rt>かだい</rt></ruby>として、<ruby>多職種連携<rt>たしょくしゅれんけい</rt></ruby>のとき、まだ<ruby>少し<rt>すこし</rt></ruby><ruby>遠慮<rt>えんりょ</rt></ruby>がちなことがあります。<ruby>看護師<rt>かんごし</rt></ruby>さんや<ruby>相談員<rt>そうだんいん</rt></ruby>への<ruby>報告<rt>ほうこく</rt></ruby>、もっと<ruby>積極的<rt>せっきょくてき</rt></ruby>に。<br>*(Điểm cần cải thiện, trong 多職種連携 em đôi khi vẫn hơi ngại ngùng. Báo cáo với y tá hay tư vấn viên, hãy chủ động hơn nhé.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>確<rt>たし</rt></ruby>かに、<ruby>遠慮<rt>えんりょ</rt></ruby>してしまうことがあります。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em hiểu ạ. Đúng là em đôi khi vẫn ngại. Em sẽ chú ý.)* |
| Yamamoto | <ruby>言語<rt>げんご</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>もあるかもしれない。でも、グエンさんの<ruby>日本語<rt>にほんご</rt></ruby>は<ruby>今<rt>いま</rt></ruby>、<ruby>業務<rt>ぎょうむ</rt></ruby>に<ruby>十分<rt>じゅうぶん</rt></ruby>なレベルです。<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていい。<br>*(Rào cản ngôn ngữ cũng có thể là lý do. Nhưng tiếng Nhật của em bây giờ đã đủ trình độ cho công việc rồi. Em có thể tự tin hơn.)* |
| Ngọc | はい。<ruby>三年目<rt>さんねんめ</rt></ruby>はもっと<ruby>積極的<rt>せっきょくてき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng. Sang năm 3 cháu sẽ báo cáo chủ động hơn ạ.)* |

---

## Tình huống 7 — Phòng 面談 · 15:00, bàn về 特定技能 và năm 3 (phần 3)

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>次<rt>つぎ</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしましょう。グエンさん、<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>することを<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Nói về bước tiếp theo nhé. Em Nguyễn có nghĩ đến việc chuyển sang 特定技能 không?)* |
| Ngọc | はい。<ruby>試験<rt>しけん</rt></ruby>にも<ruby>合格<rt>ごうかく</rt></ruby>しましたし、<ruby>興味<rt>きょうみ</rt></ruby>があります。ただ、<ruby>手続<rt>てつづ</rt></ruby>きがまだよく<ruby>分<rt>わ</rt></ruby>からなくて。<br>*(Vâng ạ. Cháu đã đỗ thi rồi, và cháu có quan tâm. Nhưng cháu chưa hiểu rõ thủ tục.)* |
| Yamamoto | <ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>すると、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります。そして<ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>少し<rt>すこし</rt></ruby><ruby>上<rt>あ</rt></ruby>がります。<br>*(Khi chuyển sang 特定技能 1号, tư cách lưu trú sẽ thay đổi. Và lương cũng tăng một chút.)* |
| Ngọc | <ruby>施設<rt>しせつ</rt></ruby>としては、<ruby>支援<rt>しえん</rt></ruby>してもらえますか?<br>*(Phía cơ sở có hỗ trợ cháu không ạ?)* |
| Yamamoto | もちろんです。<ruby>移行<rt>いこう</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>も、<ruby>行政書士<rt>ぎょうせいしょし</rt></ruby>の<ruby>先生<rt>せんせい</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>することもできます。<br>*(Tất nhiên rồi. Chúng tôi có thể hỗ trợ chuẩn bị giấy tờ, và giới thiệu cả chuyên viên hành chính tư pháp nữa.)* |
| Ngọc | ありがとうございます。ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>日本<rt>にほん</rt></ruby>でもっと<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>きたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Cảm ơn chị rất nhiều. Cháu muốn tiếp tục làm việc ở Nhật lâu hơn ạ.)* |
| Yamamoto | こちらも、グエンさんにいてほしいですから、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Chúng tôi cũng muốn em ở đây, nên cùng nhau tiến hành nhé.)* |

---

## Tình huống 8 — Hành lang · 15:30, sau 面談, Hương gặp Ngọc

| Vai | Lời thoại |
|---|---|
| Hương | (đến cạnh Ngọc, thì thầm tiếng Nhật) ねえ、<ruby>面談<rt>めんだん</rt></ruby>どうだった?<br>*(Ê, buổi 面談 thế nào?)* |
| Ngọc | (nhỏ giọng) よかったと<ruby>思<rt>おも</rt></ruby>う。<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>もした。<br>*(Cháu nghĩ ổn. Chúng cháu nói về 特定技能 luôn rồi.)* |
| Hương | え、<ruby>本当<rt>ほんとう</rt></ruby>に?<ruby>羨<rt>うらや</rt></ruby>ましい。わたしもN3を<ruby>早<rt>はや</rt></ruby>く<ruby>取<rt>と</rt></ruby>りたい。<br>*(Thật à? Mình ghen tị. Mình cũng muốn lấy N3 sớm thôi.)* |
| Ngọc | ヒュオンさんのN3、<ruby>応援<rt>おうえん</rt></ruby>しています。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しようよ。<br>*(Mình cổ vũ cho Hương lấy N3 nhé. Học cùng nhau đi.)* |
| Hương | ありがとう。グエン、<ruby>来年<rt>らいねん</rt></ruby>は<ruby>特定技能<rt>とくていぎのう</rt></ruby>か。<ruby>凄<rt>すご</rt></ruby>いな。<br>*(Cảm ơn. Ngọc năm sau là 特定技能 rồi. Giỏi thật nhỉ.)* |
| Ngọc | <ruby>凄<rt>すご</rt></ruby>くないよ。ただ、<ruby>諦<rt>あきら</rt></ruby>めなかっただけ。ヒュオンさんもできるよ。<br>*(Không phải giỏi đâu. Chỉ là mình không bỏ cuộc thôi. Hương cũng làm được nhé.)* |

---

## Tình huống 9 — Phòng sinh hoạt · 17:00, buổi chiều trò chuyện với bà Kimura

| Vai | Lời thoại |
|---|---|
| Bà Kimura | グエンちゃん、もう2<ruby>年<rt>ねん</rt></ruby>になるの?<br>*(Nguyễn này, đã 2 năm rồi à?)* |
| Ngọc | はい。<ruby>木村<rt>きむら</rt></ruby>さん、<ruby>覚<rt>おぼ</rt></ruby>えていてくれたんですか?<br>*(Vâng ạ. Bà Kimura còn nhớ ạ?)* |
| Bà Kimura | もちろんよ。<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>来<rt>き</rt></ruby>たとき、<ruby>緊張<rt>きんちょう</rt></ruby>してたわね。<ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さくて。<br>*(Tất nhiên rồi. Hồi mới đến, cháu hồi hộp lắm nhỉ. Nói nhỏ lắm.)* |
| Ngọc | (cười) そうでした。<ruby>今<rt>いま</rt></ruby>はどうですか?<br>*(Đúng ạ bà. Còn bây giờ ạ?)* |
| Bà Kimura | <ruby>今<rt>いま</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>がある。<ruby>明<rt>あか</rt></ruby>るい。<ruby>佐藤<rt>さとう</rt></ruby>さんのことも、ちゃんと<ruby>見<rt>み</rt></ruby>てあげてたわね。<br>*(Bây giờ có sinh khí hơn rồi. Tươi vui. Bà cũng nhìn thấy cháu lo cho bà Sato tốt lắm.)* |
| Ngọc | (nhẹ giọng) ...はい。<ruby>佐藤<rt>さとう</rt></ruby>さんには、たくさん<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(... Vâng. Bà Sato đã dạy cháu rất nhiều ạ.)* |
| Bà Kimura | わたしもよ、グエンちゃん。あなたがいてくれてよかった。<br>*(Bà cũng vậy, Nguyễn. Cháu có mặt ở đây thật tốt quá.)* |
| Ngọc | (gật đầu, mắt ấm) ありがとうございます、<ruby>木村<rt>きむら</rt></ruby>さん。<ruby>木村<rt>きむら</rt></ruby>さんのそばにいられて、わたしもよかったです。<br>*(Cảm ơn bà ạ. Cháu cũng mừng vì được ở bên bà Kimura.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 18:00, đội nhỏ chúc mừng Ngọc cuối năm 2

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>今日<rt>きょう</rt></ruby>で<ruby>二年目<rt>にねんめ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりですね。みんなでお<ruby>疲<rt>つか</rt></ruby>れさまでしたを<ruby>言<rt>い</rt></ruby>いたくて。<br>*(Em Nguyễn, hôm nay kết thúc năm 2 rồi nhỉ. Mọi người muốn cùng nói câu chúc mừng với em.)* |
| Ngọc | (ngạc nhiên vui) え...ありがとうございます。<br>*(Ồ... Cảm ơn mọi người ạ.)* |
| Yamamoto | グエンさんの2<ruby>年間<rt>ねんかん</rt></ruby>、チーム<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>見<rt>み</rt></ruby>ていました。N3<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>技能試験<rt>ぎのうしけん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、そして<ruby>看取<rt>みと</rt></ruby>りを<ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えた。<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(2 năm của em Nguyễn, cả đội đều nhìn thấy. Đỗ N3, đỗ kỳ thi kỹ năng, và vượt qua 看取り. Em đã thực sự cố gắng.)* |
| Nhân viên A | <ruby>最初<rt>さいしょ</rt></ruby>のころ、<ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さかったよね。(cười) <ruby>今<rt>いま</rt></ruby>はしっかりしてる。<br>*(Hồi đầu nói nhỏ lắm nhỉ. (cười) Bây giờ vững lắm rồi.)* |
| Ngọc | (cúi đầu sâu) みなさんのおかげです。<ruby>本当<rt>ほんとう</rt></ruby>に、ありがとうございました。<ruby>三年目<rt>さんねんめ</rt></ruby>も、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Là nhờ mọi người cả ạ. Thật sự, cháu cảm ơn rất nhiều. Sang năm 3 cũng mong mọi người tiếp tục chỉ bảo ạ.)* |
| Mai-san | こちらこそ。グエンさんは、チームの<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>一員<rt>いちいん</rt></ruby>です。<br>*(Chúng tôi cũng thế. Em Nguyễn là một thành viên quý giá của đội rồi.)* |

---

## Tình huống 11 — Phòng điều dưỡng · 19:00, Ngọc tự viết kế hoạch năm 3

| Vai | Lời thoại |
|---|---|
| Ngọc | (ngồi viết một mình) <ruby>三年目<rt>さんねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>... (viết vào sổ công vụ)<br>*(Mục tiêu năm 3... (viết vào sổ công vụ))* |
| Ngọc | (nhẩm đọc lại, bằng tiếng Nhật) <ruby>一つ目<rt>ひとつめ</rt></ruby>:<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>する。<br>*(Mục tiêu 1: Chuyển sang 特定技能 1号.)* |
| Ngọc | <ruby>二つ目<rt>ふたつめ</rt></ruby>: <ruby>後輩<rt>こうはい</rt></ruby>の<ruby>教育<rt>きょういく</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>教<rt>おそ</rt></ruby>わったことを<ruby>伝<rt>つた</rt></ruby>えたい。<br>*(Mục tiêu 2: Tham gia đào tạo đàn em. Muốn truyền đạt những gì mình đã được dạy.)* |
| Ngọc | <ruby>三つ目<rt>みっつめ</rt></ruby>: <ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>受験資格<rt>じゅけんしかく</rt></ruby>について<ruby>調<rt>しら</rt></ruby>べる。<ruby>まだ先<rt>まださき</rt></ruby>だけど、<ruby>目指<rt>めざ</rt></ruby>したい。<br>*(Mục tiêu 3: Tìm hiểu về điều kiện dự thi Kỹ sư phúc lợi điều dưỡng. Còn xa nhưng muốn hướng tới.)* |
| Ngọc | (đặt bút, nhìn lại trang giấy) ...<ruby>一年前<rt>いちねんまえ</rt></ruby>には、こんなことを<ruby>書<rt>か</rt></ruby>けるとは<ruby>思<rt>おも</rt></ruby>わなかった。<br>*(... 1 năm trước cháu không nghĩ mình có thể viết được những điều như thế này.)* |

---

## Tình huống 12 — Ký túc xá · 22:00, Ngọc và Đức (tiếng Việt)

> *Scene cuối tiếng Việt — Ngọc và Đức tâm sự cuối năm 2.*

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Sao, 2 năm xong rồi. Cảm giác thế nào Ngọc? |
| Ngọc | (tiếng Việt) Kỳ lạ lắm anh. Ngày đầu em không biết cách gõ cửa phòng người ta. Giờ em dạy người mới viết hồ sơ. |
| Đức | (tiếng Việt) Và đỗ N3, đỗ thi kỹ năng. Ngọc ổn đó. Còn bà Sato — anh biết em khóc nhiều đêm đó. |
| Ngọc | (tiếng Việt) Dạ. Nhưng cháu không hối hận. Được ở bên bà lúc đó — em nghĩ đó là phần quan trọng nhất trong 2 năm của mình. Dù không ai dạy mình chuẩn bị cho khoảnh khắc đó. |
| Đức | (tiếng Việt) Đó không ai dạy được. Mình chỉ có thể tự sống qua. Năm sau chuyển 特定技能 rồi, tính sao? |
| Ngọc | (tiếng Việt) Cứ làm tiếp. Em muốn học lên 介護福祉士 nữa. Còn xa, nhưng em muốn nhắm tới. |
| Đức | (tiếng Việt) Ừ. Ngủ sớm đi, mai còn làm sớm. |
| Ngọc | (tiếng Việt) Dạ. Cảm ơn anh đã luôn ở đây từ đầu. |

---

## Đọng lại chương 12

Chương khép lại năm 2 của Ngọc không phải bằng một khoảnh khắc kịch tính — mà bằng sự bình tĩnh và tự tin của một người đã đứng vững qua nhiều thử thách. Ngọc tổng kết năm 2 trong buổi 面談 (N3 hợp cách, thi kỹ năng đặc định đạt, vượt 看取り đầu tiên, thành thạo 記録), học cách tiếp nhận nhận xét để phát triển, và bắt đầu bàn hướng 特定技能. Ngọc từ người được dạy trở thành người hướng dẫn đàn em — dấu hiệu rõ nhất của sự trưởng thành nghề nghiệp. Năm 3 đang ở ngưỡng cửa.

> Từ vựng & mẫu câu chương này: 二年目の振り返り・面談・特定技能1号・移行・在留資格・評価試験・業務評価・課題・多職種連携・積極的に報告する・記録の質・後輩教育・介護福祉士・受験資格・目標を立てる・おかげさまで・チームの一員', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
