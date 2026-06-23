-- Hizashi LITE book SQL — Kaigo (Điều dưỡng) Y1
-- curriculum_id = 800000027  (book_seq=27)
-- nguồn: books/27_kaigo/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000027, 'N3', 'markdown_book', 'Điều dưỡng', 'Kaigo (Điều dưỡng) Y1', 'Bộ sách Hizashi — Kaigo (Điều dưỡng) Y1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000001, 800000027, NULL, 'markdown_book', 'T1. Ngày đầu đặt chân tới Nhật — Cú sốc đầu tiên (来日初日)', '# Sách thực tập sinh điều dưỡng · T1. Ngày đầu đặt chân tới Nhật — Cú sốc đầu tiên (来日初日)

> **Mục tiêu nhân vật:** Ngọc (24 tuổi, Cần Thơ) sang Nhật làm thực tập sinh điều dưỡng (介護). Học các mẫu hội thoại tiếng Nhật cơ bản ngày đầu tại viện dưỡng lão: chào hỏi, tự giới thiệu, hỏi đáp khi tham quan, chào hỏi 利用者 (người được chăm sóc), nghe 声かけ chuẩn của đàn anh.

---

## Bối cảnh

Ngày 6 tháng 4 năm 2026. Ngọc vào làm thực tập sinh kỹ năng (技能実習生) ngành điều dưỡng tại viện dưỡng lão đặc biệt 「ひだまり苑」(Hidamari-en), gần Osaka. Trình độ tiếng Nhật N4. Chương này tập trung các mẫu câu giao tiếp đầu tiên người làm điều dưỡng chắc chắn dùng: chào hỏi cấp trên, tự giới thiệu, hỏi khi chưa hiểu, chào 利用者.

---

## Tình huống 1 — Sảnh Hidamari-en · 8:30, gặp trưởng nhóm

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさんですね。<ruby>介護<rt>かいご</rt></ruby>リーダーの<ruby>山本<rt>やまもと</rt></ruby>です。<br>*(Em là Nguyễn nhỉ. Tôi là Yamamoto, trưởng nhóm điều dưỡng.)* |
| Ngọc | はじめまして。グエン・ゴックです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Rất hân hạnh. Em là Nguyễn Ngọc. Mong được chỉ bảo ạ.)* |
| Yamamoto | はい、よろしく。<ruby>緊張<rt>きんちょう</rt></ruby>していますか?<br>*(Vâng, mong em. Em có hồi hộp không?)* |
| Ngọc | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Vâng, em hơi hồi hộp ạ.)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>分<rt>わ</rt></ruby>からないことは、いつでも<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Không sao đâu. Có gì không hiểu, cứ hỏi bất cứ lúc nào nhé.)* |
| Ngọc | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Yamamoto | では、<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy, em tự giới thiệu trong buổi họp sáng nhé.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Buổi 朝礼 · 8:45, tự giới thiệu trước nhân viên

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>さんです。グエンさん、どうぞ。<br>*(Mọi người, từ hôm nay có thực tập sinh mới. Mời em Nguyễn.)* |
| Ngọc | みなさん、おはようございます。グエン・ゴックと<ruby>申<rt>もう</rt></ruby>します。<br>*(Mọi người, chào buổi sáng. Em tên là Nguyễn Ngọc.)* |
| Ngọc | ベトナムのカントー<ruby>出身<rt>しゅっしん</rt></ruby>で、<ruby>24<rt>にじゅうよん</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<br>*(Em đến từ Cần Thơ, Việt Nam, năm nay 24 tuổi.)* |
| Ngọc | <ruby>介護<rt>かいご</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>日本語<rt>にほんご</rt></ruby>もまだ<ruby>下手<rt>へた</rt></ruby>ですが、<ruby>一生懸命<rt>いっしょうけんめい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Đây là lần đầu em làm điều dưỡng. Tiếng Nhật em còn kém, nhưng em sẽ cố gắng hết sức.)* |
| Ngọc | ご<ruby>指導<rt>しどう</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mong mọi người chỉ bảo ạ.)* |
| Nhân viên A | こちらこそ、よろしくね。<br>*(Chúng tôi cũng mong em nhé.)* |
| Nhân viên B | <ruby>分<rt>わ</rt></ruby>からないことがあったら、<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Có gì không hiểu, đừng ngại cứ hỏi nhé.)* |
| Ngọc | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 3 — Tham quan cơ sở · 9:00, hỏi đáp nghiệp vụ

| Vai | Lời thoại |
|---|---|
| Yamamoto | ここが「ひだまり<ruby>苑<rt>えん</rt></ruby>」、<ruby>特別<rt>とくべつ</rt></ruby><ruby>養護<rt>ようご</rt></ruby><ruby>老人<rt>ろうじん</rt></ruby>ホームです。<br>*(Đây là "Hidamari-en", viện dưỡng lão đặc biệt.)* |
| Ngọc | <ruby>特別<rt>とくべつ</rt></ruby><ruby>養護<rt>ようご</rt></ruby><ruby>老人<rt>ろうじん</rt></ruby>ホーム...すみません、どんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Viện dưỡng lão đặc biệt... Xin lỗi, nghĩa là gì ạ?)* |
| Yamamoto | <ruby>介護<rt>かいご</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>方<rt>かた</rt></ruby>が、<ruby>生活<rt>せいかつ</rt></ruby>する<ruby>施設<rt>しせつ</rt></ruby>です。<ruby>略<rt>りゃく</rt></ruby>して「<ruby>特養<rt>とくよう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Là cơ sở để những người cần được chăm sóc sinh sống. Gọi tắt là "Tokuyou".)* |
| Ngọc | とくよう、ですね。メモします。<br>*(Tokuyou ạ. Em ghi lại.)* |
| Yamamoto | <ruby>今<rt>いま</rt></ruby>、<ruby>50<rt>ごじゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>利用者<rt>りようしゃ</rt></ruby>さんがいらっしゃいます。<br>*(Hiện có 50 người sử dụng dịch vụ.)* |
| Ngọc | りようしゃさん、というのは...?<br>*(Người sử dụng dịch vụ, tức là...?)* |
| Yamamoto | ここで<ruby>生活<rt>せいかつ</rt></ruby>している<ruby>高齢者<rt>こうれいしゃ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>のことです。「お<ruby>年寄<rt>としよ</rt></ruby>り」ではなく「<ruby>利用者<rt>りようしゃ</rt></ruby>さん」と<ruby>呼<rt>よ</rt></ruby>びます。<br>*(Là những người cao tuổi đang sinh sống ở đây. Chúng tôi gọi là "người sử dụng dịch vụ", không gọi "người già".)* |
| Ngọc | どうして「<ruby>利用者<rt>りようしゃ</rt></ruby>さん」と<ruby>呼<rt>よ</rt></ruby>ぶのですか?<br>*(Vì sao lại gọi là "người sử dụng dịch vụ" ạ?)* |
| Yamamoto | <ruby>一人<rt>ひとり</rt></ruby>ひとりを<ruby>大切<rt>たいせつ</rt></ruby>にする、<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためです。とても<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですよ。<br>*(Để trân trọng từng người, để bảo vệ phẩm giá của họ. Đây là cách nghĩ rất quan trọng.)* |
| Ngọc | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rõ rồi ạ.)* |

---

## Tình huống 4 — Phòng sinh hoạt chung · 9:30, lần đầu chào 利用者

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。<ruby>新<rt>あたら</rt></ruby>しいスタッフのグエンさんです。<br>*(Ông Tanaka, chào buổi sáng. Đây là Nguyễn, nhân viên mới.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、はじめまして。グエンと<ruby>申<rt>もう</rt></ruby>します。どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ông Tanaka, rất hân hạnh. Cháu tên Nguyễn. Mong được chỉ bảo ạ.)* |
| Ông Tanaka | ...ベトナムの<ruby>人<rt>ひと</rt></ruby>か。<ruby>日本語<rt>にほんご</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かね。<br>*(...Người Việt Nam à. Tiếng Nhật có ổn không đấy.)* |
| Ngọc | まだ<ruby>下手<rt>へた</rt></ruby>ですが、<ruby>頑張<rt>がんば</rt></ruby>って<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Cháu còn kém ạ, nhưng cháu sẽ cố gắng học.)* |
| Ông Tanaka | ふん。まあ、ゆっくりやりなさい。<br>*(Hừm. Thôi, cứ từ từ mà làm.)* |
| Ngọc | はい、ありがとうございます。<br>*(Vâng, cháu cảm ơn ông ạ.)* |
| Yamamoto | (đi ra, nói nhỏ với Ngọc) <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>口<rt>くち</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>厳<rt>きび</rt></ruby>しいですが、<ruby>悪<rt>わる</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>ではありませんよ。<br>*(Ông Tanaka nói hơi nghiêm, nhưng không phải người xấu đâu.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 5 — Trước phòng ông Tanaka · 10:00, học cách gõ cửa và xin phép vào phòng 利用者

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>部屋<rt>へや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るとき、どうすればいいか<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Khi vào phòng người sử dụng dịch vụ, em biết phải làm gì không?)* |
| Ngọc | ノックしますか?<br>*(Gõ cửa ạ?)* |
| Yamamoto | そうです。まずノックして、<ruby>名前<rt>なまえ</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってから<ruby>入<rt>はい</rt></ruby>ります。やってみてください。<br>*(Đúng. Trước hết gõ cửa, nói tên rồi mới vào. Em thử đi.)* |
| Ngọc | (gõ cửa nhẹ) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>ってもよろしいですか?<br>*(Ông Tanaka, cháu là Nguyên. Cháu vào được không ạ?)* |
| Ông Tanaka | (vọng ra) ああ、いいよ。<br>*(Ừ, vào đi.)* |
| Ngọc | (mở cửa, cúi đầu) <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Cháu xin phép vào ạ.)* |
| Yamamoto | (gật đầu với Ngọc) よかったですよ。<ruby>毎回<rt>まいかい</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ずこうしてください。<ruby>部屋<rt>へや</rt></ruby>は<ruby>利用者<rt>りようしゃ</rt></ruby>さんのプライベートな<ruby>空間<rt>くうかん</rt></ruby>ですから。<br>*(Tốt lắm. Lần nào cũng nhất định làm như vậy. Vì phòng là không gian riêng tư của người sử dụng dịch vụ.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎回<rt>まいかい</rt></ruby>ノックします。<br>*(Vâng, em hiểu. Mỗi lần cháu sẽ gõ cửa ạ.)* |

---

## Tình huống 6 — Bên giường ông Tanaka · 10:30, quan sát 声かけ chuẩn

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。「<ruby>声<rt>こえ</rt></ruby>かけ」を<ruby>覚<rt>おぼ</rt></ruby>えてくださいね。<br>*(Em Nguyễn, hãy quan sát việc của đàn anh. Nhớ học cách "lên tiếng báo trước khi chăm sóc" nhé.)* |
| Nhân viên A | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>体<rt>からだ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>変<rt>か</rt></ruby>えますね。<br>*(Ông Tanaka, tôi xin phép. Tôi đổi tư thế nằm cho ông nhé.)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Ờ, nhờ cậu.)* |
| Nhân viên A | <ruby>右<rt>みぎ</rt></ruby>を<ruby>下<rt>した</rt></ruby>にしますね。<ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Tôi cho ông nằm nghiêng bên phải nhé. Có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Không sao.)* |
| Nhân viên A | はい、<ruby>終<rt>お</rt></ruby>わりました。<ruby>楽<rt>らく</rt></ruby>になりましたか?<br>*(Vâng, xong rồi. Ông thấy dễ chịu hơn chưa?)* |
| Ông Tanaka | うん、ありがとう。<br>*(Ừ, cảm ơn.)* |
| Yamamoto | (quay sang Ngọc) <ruby>見<rt>み</rt></ruby>ましたか?<ruby>必<rt>かなら</rt></ruby>ず、<ruby>先<rt>さき</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけます。<ruby>何<rt>なに</rt></ruby>をするか、<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Em thấy chưa? Luôn lên tiếng trước. Giải thích sẽ làm gì.)* |
| Ngọc | はい。<ruby>急<rt>きゅう</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>らない、ということですね。<br>*(Vâng. Tức là không chạm vào đột ngột, đúng không ạ?)* |
| Yamamoto | そうです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>安心<rt>あんしん</rt></ruby>するためです。とても<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. Để người sử dụng dịch vụ yên tâm. Rất quan trọng.)* |
| Ngọc | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。メモします。<br>*(Vâng, em hiểu rõ rồi. Em ghi lại.)* |

---

## Tình huống 7 — Phòng sinh hoạt · 10:50, phụ phát khăn và nước uống buổi sáng

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんにお<ruby>茶<rt>ちゃ</rt></ruby>とおしぼりを<ruby>配<rt>くば</rt></ruby>ってください。<br>*(Em Nguyễn, đến giờ bổ sung nước rồi. Em phát trà và khăn lau tay cho các cụ nhé.)* |
| Ngọc | はい。<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Vâng. Cháu nói gì ạ?)* |
| Yamamoto | 「お<ruby>茶<rt>ちゃ</rt></ruby>をどうぞ」と「おしぼりです」と<ruby>言<rt>い</rt></ruby>えばいいです。<br>*(Nói "Mời ông/bà dùng trà" và "Đây là khăn" là được.)* |
| Ngọc | (mang khay đến chỗ ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、お<ruby>茶<rt>ちゃ</rt></ruby>をどうぞ。おしぼりもどうぞ。<br>*(Ông Kimura, mời ông dùng trà ạ. Đây là khăn lau tay ạ.)* |
| Ông Kimura | ありがとう。<ruby>今日<rt>きょう</rt></ruby>も<ruby>元気<rt>げんき</rt></ruby>だよ。<br>*(Cảm ơn. Hôm nay tôi cũng khỏe đấy.)* |
| Ngọc | よかったです。ゆっくり<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Cháu mừng ạ. Ông uống từ từ nhé.)* |
| Nhân viên B | (nói nhỏ với Ngọc) グエンさん、<ruby>熱<rt>あつ</rt></ruby>くないか<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>渡<rt>わた</rt></ruby>してね。<ruby>利用者<rt>りようしゃ</rt></ruby>さんは<ruby>熱<rt>あつ</rt></ruby>さに<ruby>気<rt>き</rt></ruby>がつきにくいことがあります。<br>*(Em Nguyễn, xác nhận không quá nóng rồi hãy đưa nhé. Các cụ đôi khi không nhận ra nhiệt độ nóng.)* |
| Ngọc | あ、そうですね。<ruby>気<rt>き</rt></ruby>をつけます。ありがとうございます。<br>*(À, đúng rồi ạ. Cháu sẽ chú ý. Cảm ơn ạ.)* |

---

## Tình huống 8 — Phòng sinh hoạt · 11:00, chào hỏi 利用者 vui tính

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、おはようございます。<br>*(Ông Kimura, chào buổi sáng ạ.)* |
| Ông Kimura | おお、<ruby>新<rt>あたら</rt></ruby>しい<ruby>人<rt>ひと</rt></ruby>だね。どこから<ruby>来<rt>き</rt></ruby>たの?<br>*(Ồ, người mới nhỉ. Cháu từ đâu tới?)* |
| Ngọc | ベトナムから<ruby>来<rt>き</rt></ruby>ました。カントーという<ruby>町<rt>まち</rt></ruby>です。<br>*(Cháu đến từ Việt Nam. Một thành phố tên Cần Thơ ạ.)* |
| Ông Kimura | ベトナム!<ruby>暑<rt>あつ</rt></ruby>いところだろう。<ruby>私<rt>わたし</rt></ruby>は<ruby>若<rt>わか</rt></ruby>い<ruby>頃<rt>ころ</rt></ruby>、<ruby>船<rt>ふね</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>でいろんな<ruby>国<rt>くに</rt></ruby>に<ruby>行<rt>い</rt></ruby>ったよ。<br>*(Việt Nam! Chắc nóng lắm nhỉ. Hồi trẻ tôi làm trên tàu, đi nhiều nước lắm đấy.)* |
| Ngọc | そうなんですか!すごいですね。<br>*(Vậy ạ! Tuyệt thật ạ.)* |
| Ông Kimura | また<ruby>今度<rt>こんど</rt></ruby>、<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてあげるよ。<br>*(Hôm nào tôi kể chuyện cho cháu nghe.)* |
| Ngọc | はい、ぜひ<ruby>聞<rt>き</rt></ruby>きたいです。ありがとうございます。<br>*(Vâng, cháu rất muốn nghe ạ. Cháu cảm ơn ông.)* |

---

## Tình huống 9 — Phòng ăn · 11:45, quan sát giờ ăn trưa và dẫn 利用者 ra bàn

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>昼食<rt>ちゅうしょく</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんを<ruby>食堂<rt>しょくどう</rt></ruby>にご<ruby>案内<rt>あんない</rt></ruby>してください。<br>*(Em Nguyễn, đến giờ ăn trưa. Em đưa các cụ ra phòng ăn nhé.)* |
| Ngọc | はい。<ruby>木村<rt>きむら</rt></ruby>さん、<ruby>昼ごはん<rt>ひるごはん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょうか?<br>*(Ông Kimura, đến giờ ăn trưa rồi. Mình ra phòng ăn nhé ạ?)* |
| Ông Kimura | おお、もうそんな<ruby>時間<rt>じかん</rt></ruby>か。よし、<ruby>行<rt>い</rt></ruby>こう。<br>*(Ồ, đã đến giờ rồi à. Thôi đi thôi.)* |
| Ngọc | (đẩy xe lăn nhẹ nhàng ra hành lang) ゆっくり<ruby>行<rt>い</rt></ruby>きますね。<br>*(Mình đi từ từ nhé ạ.)* |
| Yamamoto | (nói với Ngọc) グエンさん、<ruby>食事<rt>しょくじ</rt></ruby>のとき、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>様子<rt>ようす</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てください。<ruby>食欲<rt>しょくよく</rt></ruby>はあるか、むせていないかを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em Nguyễn, trong bữa ăn hãy quan sát kỹ tình trạng các cụ. Xem có ngon miệng không, có bị sặc không.)* |
| Ngọc | むせる...というのは?<br>*(Sặc... nghĩa là gì ạ?)* |
| Yamamoto | <ruby>食べ物<rt>たべもの</rt></ruby>が<ruby>気管<rt>きかん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りそうになることです。<ruby>高齢者<rt>こうれいしゃ</rt></ruby>は<ruby>注意<rt>ちゅうい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Là khi thức ăn suýt vào đường thở. Người cao tuổi cần đặc biệt chú ý.)* |
| Ngọc | はい、しっかり<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng, cháu sẽ quan sát kỹ ạ.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 12:00, hỏi cấp trên khi chưa hiểu

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Chị Yamamoto, em hỏi một câu được không ạ?)* |
| Yamamoto | はい、どうぞ。<br>*(Vâng, em hỏi đi.)* |
| Ngọc | <ruby>午前中<rt>ごぜんちゅう</rt></ruby>、「<ruby>体位<rt>たいい</rt></ruby><ruby>変換<rt>へんかん</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きました。どんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Buổi sáng em nghe từ "đổi tư thế nằm". Nghĩa là gì ạ?)* |
| Yamamoto | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>寝<rt>ね</rt></ruby>たきりの<ruby>方<rt>かた</rt></ruby>の<ruby>体<rt>からだ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>変<rt>か</rt></ruby>えることです。<br>*(Câu hỏi hay đấy. Là việc đổi hướng cơ thể cho người nằm liệt giường.)* |
| Ngọc | どうして<ruby>向<rt>む</rt></ruby>きを<ruby>変<rt>か</rt></ruby>えますか?<br>*(Vì sao phải đổi hướng ạ?)* |
| Yamamoto | <ruby>同<rt>おな</rt></ruby>じ<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>長<rt>なが</rt></ruby>いと、「<ruby>褥瘡<rt>じょくそう</rt></ruby>」ができます。<ruby>皮膚<rt>ひふ</rt></ruby>の<ruby>傷<rt>きず</rt></ruby>です。それを<ruby>防<rt>ふせ</rt></ruby>ぐためです。<br>*(Nếu giữ một tư thế lâu, sẽ bị "loét tì đè". Là vết thương trên da. Đổi tư thế để phòng điều đó.)* |
| Ngọc | <ruby>褥瘡<rt>じょくそう</rt></ruby>...<ruby>大事<rt>だいじ</rt></ruby>なことですね。メモしておきます。<br>*(Loét tì đè... Là điều quan trọng nhỉ. Em ghi lại ạ.)* |
| Yamamoto | はい。<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>は、いつでも<ruby>聞<rt>き</rt></ruby>いてくださいね。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Vâng. Từ nào không hiểu cứ hỏi bất cứ lúc nào nhé. Đó là điều quan trọng nhất.)* |
| Ngọc | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 11 — Sảnh ra về · 16:30, chào tạm biệt 利用者 và đồng nghiệp cuối ca

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>はありがとうございました。また<ruby>明日<rt>あした</rt></ruby>。<br>*(Ông Tanaka, hôm nay cảm ơn ông ạ. Hẹn gặp ông ngày mai.)* |
| Ông Tanaka | ああ。<ruby>気<rt>き</rt></ruby>をつけてな。<br>*(Ừ. Về cẩn thận nhé.)* |
| Ngọc | (đến chỗ ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>はありがとうございました。ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Ông Kimura, hôm nay cháu cảm ơn ông. Ông nghỉ ngơi nhé.)* |
| Ông Kimura | うん、また<ruby>来<rt>き</rt></ruby>てね。<ruby>楽<rt>たの</rt></ruby>しみにしているよ。<br>*(Ừ, ngày mai lại đến nhé. Tôi mong đấy.)* |
| Ngọc | (quay sang Yamamoto) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>はありがとうございました。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Chị Yamamoto, hôm nay em cảm ơn chị. Em xin phép về trước ạ.)* |
| Yamamoto | お<ruby>疲<rt>つか</rt></ruby>れさまでした。また<ruby>明日<rt>あした</rt></ruby>ね。<br>*(Em vất vả rồi. Hẹn ngày mai nhé.)* |
| Ngọc | はい、お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Vâng, chị vất vả rồi ạ!)* |

---

## Tình huống 12 — Ký túc · 21:00, đồng hương (mạch truyện)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế của lao động Việt.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Sao, ngày đầu thế nào? |
| Ngọc | (tiếng Việt) Mệt mà vui anh. Em ghi được cả trang từ mới: 特養, 利用者, 体位変換, 褥瘡, 声かけ... |
| Đức | (tiếng Việt) Ừ, ghi nhiều vô. Tiếng Nhật chuyên môn này thi kỹ năng với N3 đều cần hết. Mà nói trước: nghề này không nhẹ, với lại tháng nào cũng phải lo gửi tiền về. Đừng nản. |
| Ngọc | (tiếng Việt) Dạ em biết. Em nợ phí cũng nhiều. Nhưng em thấy mọi người ở đây tử tế, em làm được. |
| Đức | (tiếng Việt) Ừ. Cứ vậy mà tiến. Ngủ sớm đi, mai 7 giờ. |

---

## Đọng lại chương 1

Ngày đầu, Ngọc học được các mẫu câu nền tảng người làm điều dưỡng dùng hằng ngày: **chào hỏi cấp trên**, **tự giới thiệu** (申します・ご指導のほど), **hỏi lại khi chưa hiểu** (どんな意味ですか・質問してもいいですか), **gõ cửa xin phép vào phòng** (ノックして失礼します), **chào 利用者**, quan sát **声かけ chuẩn** (xin phép → giải thích → xác nhận → cảm ơn), **phát khăn/nước** (お茶をどうぞ — chú ý nhiệt độ), **dẫn ra bữa ăn và quan sát sặc** (むせる), và công thức **chào cuối ca** (お疲れさまでした・お先に失礼します). Đồng thời nhận ra 介護 là nghề có **phẩm giá** (利用者さん, không gọi "người già").

> Từ vựng & mẫu câu chương này: 介護リーダー・実習生・自己紹介・申します・ご指導のほど・特別養護老人ホーム(特養)・利用者・尊厳・声かけ・体位変換・褥瘡・しつれいします・〜してもいいですか・水分補給・おしぼり・食堂・むせる・お疲れさまでした・お先に失礼します', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000002, 800000027, NULL, 'markdown_book', 'T2. Tiếng gọi và nâng người (声かけと移乗)', '# Sách thực tập sinh điều dưỡng · T2. Tiếng gọi và nâng người (声かけと移乗)

> **Mục tiêu nhân vật:** Ngọc học nguyên tắc **声かけ** — bắt buộc lên tiếng trước mọi thao tác chạm người — và kỹ thuật **移乗** (chuyển 利用者 từ giường sang xe lăn và ngược lại). Phải vượt qua nỗi sợ làm đau người được chăm và thái độ cáu kỉnh của ông Tanaka.

---

## Bối cảnh

Tháng 5 năm 2026. Ngọc đã qua tháng đầu quan sát, giờ bắt đầu thực hành trực tiếp. Hôm nay chị Yamamoto dạy chuyên sâu về 声かけ và 移乗 (いじょう) — kỹ thuật chuyển người từ giường lên xe lăn. Ông Tanaka (82 tuổi, liệt nửa người sau đột quỵ — 片麻痺・へんまひ) là người thực hành chính. Ông hay cáu nếu thao tác không chuẩn.

---

## Tình huống 1 — Phòng họp nhỏ · 8:00, Yamamoto dạy nguyên tắc 声かけ

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>移乗<rt>いじょう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をします。その<ruby>前<rt>まえ</rt></ruby>に、「<ruby>声<rt>こえ</rt></ruby>かけ」について<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Hôm nay chúng ta bắt đầu luyện tập kỹ thuật chuyển người. Trước đó hãy ôn lại "声かけ" nhé.)* |
| Ngọc | はい。<ruby>声<rt>こえ</rt></ruby>かけは<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Vâng. 声かけ rất quan trọng đúng không ạ.)* |
| Yamamoto | そうです。<ruby>必<rt>かなら</rt></ruby>ず、<ruby>体<rt>からだ</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけます。<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>今<rt>いま</rt></ruby>から<ruby>何<rt>なに</rt></ruby>をするか、<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Đúng vậy. Nhất thiết phải lên tiếng trước khi chạm vào người. Giải thích cho người sử dụng dịch vụ biết sắp làm gì.)* |
| Ngọc | なぜそんなに<ruby>大切<rt>たいせつ</rt></ruby>なんですか?<br>*(Vì sao điều đó lại quan trọng vậy ạ?)* |
| Yamamoto | <ruby>突然<rt>とつぜん</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>られると、<ruby>人間<rt>にんげん</rt></ruby>はびっくりします。<ruby>怖<rt>こわ</rt></ruby>いと<ruby>感<rt>かん</rt></ruby>じます。<ruby>声<rt>こえ</rt></ruby>かけで<ruby>安心<rt>あんしん</rt></ruby>してもらえます。<br>*(Bị chạm vào đột ngột, con người sẽ giật mình. Cảm thấy sợ. Nếu lên tiếng trước thì họ sẽ yên tâm.)* |
| Ngọc | なるほど。では、どう<ruby>声<rt>こえ</rt></ruby>をかければいいですか?<br>*(Ra là vậy. Vậy thì nên nói gì ạ?)* |
| Yamamoto | <ruby>基本<rt>きほん</rt></ruby>のパターンは<ruby>三<rt>みっ</rt></ruby>つです。<ruby>一<rt>いち</rt></ruby>、<ruby>名前<rt>なまえ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶ。<ruby>二<rt>に</rt></ruby>、<ruby>何<rt>なに</rt></ruby>をするか<ruby>言<rt>い</rt></ruby>う。<ruby>三<rt>さん</rt></ruby>、「いいですか?」と<ruby>許可<rt>きょか</rt></ruby>を<ruby>取<rt>と</rt></ruby>る。<br>*(Có ba mẫu cơ bản. Một, gọi tên. Hai, nói sắp làm gì. Ba, xin phép bằng "được không ạ?".)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りますね。いいですか?... こんな<ruby>感<rt>かん</rt></ruby>じですか?<br>*(Ông Tanaka, cháu đỡ ông sang xe lăn nhé. Được không ạ?... Kiểu như vậy không ạ?)* |
| Yamamoto | いいですね。そう<ruby>言<rt>い</rt></ruby>えれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Tốt đấy. Nói được như vậy là ổn rồi.)* |

---

## Tình huống 2 — Bên giường ông Tanaka · 9:00, lần đầu thực hành 移乗

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。グエンです。<br>*(Ông Tanaka, chào buổi sáng. Cháu là Nguyên ạ.)* |
| Ông Tanaka | ああ。<br>*(Ừ.)* |
| Ngọc | <ruby>今<rt>いま</rt></ruby>から<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りますね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>いてもらえますか?<br>*(Bây giờ cháu đỡ ông sang xe lăn nhé. Ông phối hợp giúp cháu được không ạ?)* |
| Ông Tanaka | ...まあ、<ruby>頼<rt>たの</rt></ruby>む。<br>*(... Thôi được, nhờ cậu.)* |
| Ngọc | (nhẹ nhàng đặt tay — nhưng tay run, động tác không chắc) では、ゆっくり<ruby>起<rt>お</rt></ruby>きますよ。せーの。<br>*(Vậy từ từ ngồi dậy nhé. Nào.)* |
| Ông Tanaka | (nhăn mặt) いたっ。ちょっと、<ruby>乱暴<rt>らんぼう</rt></ruby>だぞ。<br>*(Ái. Khẽ thôi, thô bạo quá.)* |
| Ngọc | すみません! <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか? <ruby>痛<rt>いた</rt></ruby>いですか?<br>*(Cháu xin lỗi! Ông có ổn không? Có đau không ạ?)* |
| Ông Tanaka | (gạt tay ra) もういい。<ruby>今日<rt>きょう</rt></ruby>は<ruby>嫌<rt>いや</rt></ruby>だ。<br>*(Thôi rồi. Hôm nay tao không muốn nữa.)* |
| Yamamoto | (tiến vào, nói nhỏ với Ngọc) グエンさん、<ruby>一度<rt>いちど</rt></ruby><ruby>下<rt>さ</rt></ruby>がって。<br>*(Em Nguyễn, lui ra một chút.)* |

---

## Tình huống 3 — Phòng ông Tanaka · 9:10, 声かけ khi thay tư thế trên giường

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>休<rt>やす</rt></ruby>んでいる<ruby>間<rt>あいだ</rt></ruby>に、<ruby>体位変換<rt>たいいへんかん</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけを<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。やってみてください。<br>*(Trong lúc ông Tanaka nghỉ, chúng ta luyện 声かけ khi đổi tư thế nhé. Em thử đi.)* |
| Ngọc | (nhỏ giọng, tiến lại giường) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>体<rt>からだ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>変<rt>か</rt></ruby>えてもいいですか?<br>*(Ông Tanaka, cháu là Nguyên. Cháu đổi tư thế nằm cho ông được không ạ?)* |
| Ông Tanaka | (<ruby>目<rt>め</rt></ruby>をつむったまま、うなずく) ...ああ。<br>*(... Ừ.)* |
| Ngọc | <ruby>左側<rt>ひだりがわ</rt></ruby>を<ruby>下<rt>した</rt></ruby>にしますね。<ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Cháu cho ông nghiêng bên trái nhé. Có đau không ạ?)* |
| Ông Tanaka | ...<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(... Không sao.)* |
| Ngọc | はい、<ruby>終<rt>お</rt></ruby>わりました。<ruby>楽<rt>らく</rt></ruby>になりましたか?<br>*(Vâng, xong rồi ạ. Ông thấy dễ chịu hơn chưa?)* |
| Ông Tanaka | (không nói, chỉ gật đầu)<br>*(im lặng gật đầu)* |
| Yamamoto | (gật đầu với Ngọc) いい<ruby>声<rt>こえ</rt></ruby>かけでした。<ruby>毎回<rt>まいかい</rt></ruby>、この<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(声かけ tốt đấy. Lần nào cũng theo thứ tự này nhé.)* |
| Ngọc | はい。<ruby>声<rt>こえ</rt></ruby>かけ→<ruby>説明<rt>せつめい</rt></ruby>→<ruby>確認<rt>かくにん</rt></ruby>ですね。<br>*(Vâng. 声かけ → giải thích → xác nhận ạ.)* |

---

## Tình huống 4 — Hành lang · 9:15, ông Tanaka từ chối — Ngọc tủi thân

| Vai | Lời thoại |
|---|---|
| Yamamoto | (nói nhỏ với Ngọc) <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>は<ruby>気分<rt>きぶん</rt></ruby>がよくないみたいですね。<ruby>無理<rt>むり</rt></ruby>しなくていいです。<br>*(Ông Tanaka hôm nay có vẻ không vui. Không cần ép.)* |
| Ngọc | (mắt đỏ hoe) すみません、<ruby>私<rt>わたし</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>かったです...<br>*(Xin lỗi, cách làm của em tệ quá...)* |
| Yamamoto | <ruby>泣<rt>な</rt></ruby>かないで。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>でも<ruby>難<rt>むずか</rt></ruby>しいですよ。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えましょう。<br>*(Đừng khóc. Ai mới làm cũng khó cả. Hãy cùng nghĩ xem nguyên nhân là gì nhé.)* |
| Ngọc | はい...どこが<ruby>悪<rt>わる</rt></ruby>かったですか?<br>*(Vâng... Chỗ nào sai ạ?)* |
| Yamamoto | <ruby>体<rt>からだ</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>です。<ruby>力<rt>ちから</rt></ruby>まかせに<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>ってしまいましたね。「ボディメカニクス」という<ruby>技術<rt>ぎじゅつ</rt></ruby>があります。<br>*(Là vấn đề cách dùng cơ thể. Em đã kéo bằng sức thô. Có kỹ thuật gọi là "cơ sinh học thân thể" đó.)* |
| Ngọc | ボディメカニクス...? はじめて<ruby>聞<rt>き</rt></ruby>きます。<br>*(Cơ sinh học cơ thể...? Cháu nghe lần đầu ạ.)* |
| Yamamoto | あとで<ruby>教<rt>おし</rt></ruby>えます。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>悪<rt>わる</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>ではないですよ。<ruby>体<rt>からだ</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>かっただけです。<br>*(Tí nữa tôi dạy. Ông Tanaka không phải người xấu. Chỉ là bị đau thôi.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。また<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Vâng, em hiểu. Em sẽ thử lại.)* |

---

## Tình huống 5 — Phòng thực hành · 10:00, Yamamoto dạy ボディメカニクス

| Vai | Lời thoại |
|---|---|
| Yamamoto | では「ボディメカニクス」を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>簡単<rt>かんたん</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>体<rt>からだ</rt></ruby>を<ruby>上手<rt>じょうず</rt></ruby>に<ruby>使<rt>つか</rt></ruby>って、<ruby>少<rt>すく</rt></ruby>ない<ruby>力<rt>ちから</rt></ruby>で<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>介助<rt>かいじょ</rt></ruby>する<ruby>技術<rt>ぎじゅつ</rt></ruby>です。<br>*(Tôi giải thích "ボディメカニクス". Nói đơn giản, là kỹ thuật dùng cơ thể khéo léo để hỗ trợ an toàn với ít sức nhất.)* |
| Ngọc | どうやって<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Dùng như thế nào ạ?)* |
| Yamamoto | <ruby>三<rt>みっ</rt></ruby>つのポイントです。まず、<ruby>足<rt>あし</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げて<ruby>腰<rt>こし</rt></ruby>を<ruby>落<rt>お</rt></ruby>とします。<ruby>重心<rt>じゅうしん</rt></ruby>を<ruby>低<rt>ひく</rt></ruby>くします。<br>*(Có ba điểm. Trước tiên, dang chân ra và hạ lưng xuống. Hạ thấp trọng tâm.)* |
| Ngọc | こうですか? (thử tư thế)<br>*(Như này ạ?)* |
| Yamamoto | いいですね。<ruby>次<rt>つぎ</rt></ruby>に、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>体<rt>からだ</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づけます。<ruby>離<rt>はな</rt></ruby>れていると<ruby>力<rt>ちから</rt></ruby>がいります。<br>*(Tốt. Tiếp theo, kéo cơ thể người dùng lại gần mình. Nếu xa sẽ tốn sức hơn.)* |
| Ngọc | 「<ruby>近<rt>ちか</rt></ruby>づける」ですね。<ruby>三<rt>み</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Là "kéo lại gần" ạ. Điểm thứ ba là gì?)* |
| Yamamoto | <ruby>大<rt>おお</rt></ruby>きな<ruby>筋肉<rt>きんにく</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<ruby>腕<rt>うで</rt></ruby>だけでなく、<ruby>足<rt>あし</rt></ruby>と<ruby>腰<rt>こし</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>で<ruby>動<rt>うご</rt></ruby>かします。<br>*(Dùng cơ bắp lớn. Không chỉ dùng tay, mà dùng sức chân và lưng để di chuyển.)* |
| Ngọc | それから、<ruby>田中<rt>たなか</rt></ruby>さんの「<ruby>残存<rt>ざんそん</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>」も<ruby>大切<rt>たいせつ</rt></ruby>ですか? <ruby>昨日<rt>きのう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>言<rt>い</rt></ruby>っていました。<br>*(Còn "năng lực còn lại" của ông Tanaka cũng quan trọng không ạ? Hôm qua đàn anh đã nhắc đến.)* |
| Yamamoto | よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。そうです。<ruby>残存<rt>ざんそん</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>は、<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>自分<rt>じぶん</rt></ruby>でまだできる<ruby>力<rt>ちから</rt></ruby>です。それを<ruby>使<rt>つか</rt></ruby>ってもらいます。<ruby>全部<rt>ぜんぶ</rt></ruby>やってあげてはいけません。<br>*(Em nhớ tốt đấy. Đúng vậy. 残存能力 là khả năng người dùng dịch vụ còn tự làm được. Để họ tự dùng. Không được làm hết giúp họ.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>左手<rt>ひだりて</rt></ruby>が<ruby>動<rt>うご</rt></ruby>くので、それを<ruby>使<rt>つか</rt></ruby>ってもらうようにしますね。<br>*(Ông Tanaka tay trái còn cử động được, thì để ông tự dùng tay đó ạ.)* |
| Yamamoto | 正解です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>力<rt>ちから</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じること、これも<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng rồi. Tin vào sức của người dùng dịch vụ — điều này cũng quan trọng.)* |

---

## Tình huống 6 — Hành lang · 11:00, 声かけ hỏi 利用者 có cần đi vệ sinh không

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>排泄<rt>はいせつ</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけも<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんに「トイレに<ruby>行<rt>い</rt></ruby>きますか?」と<ruby>聞<rt>き</rt></ruby>く<ruby>練習<rt>れんしゅう</rt></ruby>をしましょう。<br>*(声かけ hỏi về vệ sinh cũng quan trọng. Chúng ta luyện hỏi "Ông/bà có muốn đi vệ sinh không?".)* |
| Ngọc | (đến chỗ ông Kimura đang ngồi xe lăn) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>、トイレに<ruby>行<rt>い</rt></ruby>きますか?<br>*(Ông Kimura, bây giờ ông có muốn đi vệ sinh không ạ?)* |
| Ông Kimura | ああ、<ruby>行<rt>い</rt></ruby>っておこうかな。<br>*(Ừ, đi một cái cho xong.)* |
| Ngọc | では、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。お<ruby>手洗<rt>てあら</rt></ruby>いはこちらです。<br>*(Vậy mình cùng đi nhé. Nhà vệ sinh ở phía này ạ.)* |
| Ông Kimura | (được đẩy xe lăn đến cửa nhà vệ sinh) ありがとうね。<br>*(Cảm ơn nhé.)* |
| Yamamoto | (nói nhỏ với Ngọc) <ruby>定期的<rt>ていきてき</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけることが<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>自分<rt>じぶん</rt></ruby>から<ruby>言<rt>い</rt></ruby>えないことが<ruby>多<rt>おお</rt></ruby>いですから。<br>*(Việc hỏi định kỳ rất quan trọng. Vì nhiều khi các cụ không chủ động nói được.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>時間<rt>じかん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めて<ruby>声<rt>こえ</rt></ruby>をかけますね。<br>*(Vâng, em hiểu rồi. Cháu sẽ hỏi theo giờ định kỳ ạ.)* |

---

## Tình huống 7 — Bên giường ông Tanaka · 14:00, Ngọc thử lại

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>午後<rt>ごご</rt></ruby>の<ruby>車椅子<rt>くるまいす</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>ですよ。<ruby>移乗<rt>いじょう</rt></ruby>してもいいですか?<br>*(Ông Tanaka, cháu là Nguyên ạ. Đến giờ ngồi xe lăn buổi chiều rồi ạ. Cháu đỡ ông sang được không ạ?)* |
| Ông Tanaka | (nhìn Ngọc, khẽ gật) ...まあ、いい。<br>*(... Thôi được.)* |
| Ngọc | ありがとうございます。ゆっくりやりますね。<ruby>左手<rt>ひだりて</rt></ruby>でベッドを<ruby>押<rt>お</rt></ruby>してもらえますか?<br>*(Cháu cảm ơn ông. Cháu làm từ từ nhé. Ông dùng tay trái chống vào giường được không ạ?)* |
| Ông Tanaka | ああ。(dùng tay trái chống)<br>*(Ừ.)* |
| Ngọc | せーの。(hạ lưng, giữ chắc, động tác nhẹ nhàng hơn)<br>*(Nào.)* |
| Ông Tanaka | (ngồi dậy) ...<ruby>今日<rt>きょう</rt></ruby>は<ruby>上手<rt>うま</rt></ruby>いな。<ruby>痛<rt>いた</rt></ruby>くない。<br>*(... Hôm nay khéo hơn. Không đau.)* |
| Ngọc | よかった! <ruby>痛<rt>いた</rt></ruby>くないですか? <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Mừng quá! Có đau không ạ? Ông ổn không?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<ruby>早<rt>はや</rt></ruby>く<ruby>居間<rt>いま</rt></ruby>に<ruby>連<rt>つ</rt></ruby>れていけ。<br>*(Không sao. Đẩy tao ra phòng khách nhanh lên.)* |
| Ngọc | はい、すぐです! (nở nụ cười, đẩy xe lăn nhẹ nhàng)<br>*(Vâng, ngay bây giờ ạ!)* |
| Yamamoto | (đứng ở cửa, gật đầu mỉm cười với Ngọc) よくできました。<br>*(Làm tốt lắm.)* |

---

## Tình huống 8 — Phòng sinh hoạt · 14:30, 移乗 từ xe lăn sang ghế tựa

| Vai | Lời thoại |
|---|---|
| Nhân viên A | グエンさん、<ruby>今度<rt>こんど</rt></ruby>は<ruby>車椅子<rt>くるまいす</rt></ruby>からソファーへの<ruby>移乗<rt>いじょう</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<ruby>田中<rt>たなか</rt></ruby>さん、いいですか?<br>*(Em Nguyễn, lần này hãy cùng thực hành 移乗 từ xe lăn sang ghế sofa nhé. Ông Tanaka, được không ạ?)* |
| Ông Tanaka | (gật đầu) まあ、いい。<br>*(Được thôi.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>車椅子<rt>くるまいす</rt></ruby>からソファーに<ruby>移<rt>うつ</rt></ruby>ります。ゆっくりやりますね。<br>*(Ông Tanaka, cháu đỡ ông từ xe lăn sang ghế sofa nhé. Cháu làm từ từ ạ.)* |
| Ông Tanaka | ああ。<br>*(Ừ.)* |
| Ngọc | <ruby>左手<rt>ひだりて</rt></ruby>でソファーを<ruby>押<rt>お</rt></ruby>してください。せーの。<br>*(Ông dùng tay trái chống vào ghế. Nào.)* |
| Nhân viên A | (hỗ trợ phụ) いいですよ、<ruby>上手<rt>うま</rt></ruby>い。そのまま。<br>*(Tốt lắm, khéo đấy. Cứ vậy thôi.)* |
| Ông Tanaka | (ngồi xuống sofa) ...よし。<br>*(... Được rồi.)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか? <ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Ông ổn không ạ? Có đau không?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。今日は<ruby>上手<rt>うま</rt></ruby>くなったな。<br>*(Không sao. Hôm nay cậu khéo hơn rồi đấy.)* |
| Ngọc | (nhẹ thở phào) ありがとうございます!<br>*(Cháu cảm ơn ông ạ!)* |

---

## Tình huống 9 — Hành lang · 15:00, 歩行介助 dìu ông Kimura đi bộ ngắn

| Vai | Lời thoại |
|---|---|
| Ông Kimura | グエンちゃん、ちょっと<ruby>歩<rt>ある</rt></ruby>きたいな。<ruby>廊下<rt>ろうか</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>いてもいいかい?<br>*(Cô Nguyên ơi, tôi muốn đi bộ một chút. Đi dọc hành lang được không?)* |
| Ngọc | はい、いいですよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歩<rt>ある</rt></ruby>きましょう。(ngoái hỏi Yamamoto) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>歩行<rt>ほこう</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>をしてもいいですか?<br>*(Vâng, được ạ. Mình cùng đi. — Chị Yamamoto, cháu hỗ trợ ông Kimura đi bộ được không ạ?)* |
| Yamamoto | はい、いいですよ。<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>右側<rt>みぎがわ</rt></ruby>に<ruby>立<rt>た</rt></ruby>って、<ruby>腰<rt>こし</rt></ruby>のあたりに<ruby>手<rt>て</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えてください。<br>*(Được. Em đứng phía bên phải ông Kimura, đặt tay nhẹ ở vùng lưng dưới nhé.)* |
| Ngọc | (đứng bên phải ông Kimura, đặt tay nhẹ) <ruby>木村<rt>きむら</rt></ruby>さん、ゆっくり<ruby>歩<rt>ある</rt></ruby>きましょう。<ruby>転<rt>こ</rt></ruby>ばないように、ここに<ruby>手<rt>て</rt></ruby>を<ruby>置<rt>お</rt></ruby>きますね。<br>*(Ông Kimura, mình đi từ từ nhé. Để ông khỏi té, cháu đặt tay ở đây nhé.)* |
| Ông Kimura | ありがとう。<ruby>久<rt>ひさ</rt></ruby>しぶりに<ruby>歩<rt>ある</rt></ruby>くと<ruby>気持<rt>きも</rt></ruby>ちがいいな。<br>*(Cảm ơn. Lâu lắm mới đi bộ, dễ chịu thật.)* |
| Ngọc | よかったです。<ruby>疲<rt>つか</rt></ruby>れたら<ruby>言<rt>い</rt></ruby>ってくださいね。<br>*(Cháu mừng ạ. Ông mệt thì nói cháu nhé.)* |
| Ông Kimura | うん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。もう<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>行<rt>い</rt></ruby>こうか。<br>*(Ừ, tôi ổn. Đi thêm chút nữa nào.)* |

---

## Tình huống 10 — Bên ngoài · 17:00, Hương gọi điện

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Ngọc ơi, hôm nay mày học 移乗 chưa? Tao mới tập xong, mệt muốn xỉu. |
| Ngọc | (tiếng Việt) Học rồi. Buổi sáng tao làm sai, ông cụ cáu, xấu hổ gần khóc. Buổi chiều thử lại được rồi. |
| Hương | (tiếng Việt) Bên tao cũng y chang. Chị trưởng nhóm nói 移乗 là kỹ năng quan trọng nhất năm đầu, sai là nguy hiểm cho bệnh nhân lẫn mình. |
| Ngọc | (tiếng Việt) Ừ. Chị Yamamoto dạy tao ボディメカニクス — kiểu dùng trọng tâm cơ thể, không kéo bằng tay thuần. Mày học chưa? |
| Hương | (tiếng Việt) Học rồi! "足を広げて腰を落とす" — dang chân hạ lưng. Tao nhớ câu đó rồi. Mà cái từ 残存能力 hay ghê, nghĩa là không làm hộ hết, để họ tự làm những gì còn làm được. |
| Ngọc | (tiếng Việt) Đúng rồi. Tao cũng học được hôm nay. Nghề này nhiều thứ lắm, mày ơi. |
| Hương | (tiếng Việt) Học từ từ thôi. Chúc mày ngủ ngon! |

---

## Tình huống 11 — Phòng sinh hoạt · 18:30, ông Tanaka nói "ありがとう"

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>にお<ruby>部屋<rt>へや</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>りましょう。<ruby>戻<rt>もど</rt></ruby>りますね。<br>*(Ông Tanaka, trước bữa tối mình về phòng nhé. Cháu đưa ông về ạ.)* |
| Ông Tanaka | ああ。<br>*(Ừ.)* |
| Ngọc | (đẩy xe lăn về phòng, giúp ông nằm xuống giường nhẹ nhàng) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>横<rt>よこ</rt></ruby>になりますね。<ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Ông Tanaka, cháu đỡ ông nằm xuống nhé. Có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Không sao.)* |
| Ngọc | では、ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Vậy ông nghỉ ngơi nhé.)* |
| Ông Tanaka | (nằm xuống, giọng rất nhỏ) ...ありがとう。<br>*(... Cảm ơn.)* |
| Ngọc | (bất ngờ, nhìn lại ông) え...? はい、<ruby>お役<rt>おやく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ててよかったです。<br>*(Hả...? Vâng, cháu mừng vì được giúp ông.)* |
| Ông Tanaka | (nhắm mắt, không nói nữa)<br>*(im lặng)* |
| Ngọc | (bước ra, mỉm cười một mình)<br>*(Ngọc bước ra hành lang, tim đập nhẹ nhàng.)* |

---

## Đọng lại chương 2

Ngọc trải qua một ngày đầy cảm xúc: thất bại lần đầu 移乗 vì dùng sức thô, suýt khóc vì ông Tanaka cáu — rồi học **ボディメカニクス** (hạ trọng tâm, kéo sát người, dùng cơ lớn) và khái niệm **残存能力** (không làm hộ những gì người dùng còn tự làm được). Buổi sáng thêm kỹ năng **体位変換の声かけ** (gọi tên → giải thích → xác nhận) và **排泄の声かけ** (hỏi vệ sinh theo giờ định kỳ). Buổi chiều thực hành thành công 移乗 lần 2, rồi lần đầu thực hành **移乗 từ xe lăn sang ghế** và **歩行介助** cùng ông Kimura. Và phần thưởng bất ngờ: ông Tanaka — người khó tính nhất — nói nhỏ "ありがとう".

> Từ vựng & mẫu câu chương này: 移乗・声かけ・ボディメカニクス・残存能力・重心・足を広げる・腰を落とす・片麻痺・体位変換・排泄・トイレ・定期的・歩行介助・〜してもいいですか・痛くないですか・ゆっくりやりますね・お役に立ててよかったです', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000003, 800000027, NULL, 'markdown_book', 'T3. Quy trình một ngày (一日の流れ)', '# Sách thực tập sinh điều dưỡng · T3. Quy trình một ngày (一日の流れ)

> **Mục tiêu nhân vật:** Ngọc (24 tuổi, TTS năm 1 tại Hidamari-en) học chuỗi hỗ trợ buổi sáng: đánh thức nhẹ nhàng (起床介助), chăm sóc vệ sinh buổi sáng (整容), thay đồ (更衣), dẫn ra phòng ăn (食堂), ăn sáng (朝食), chăm sóc răng miệng (口腔ケア), và ghi nhật ký chăm sóc (記録). Tháng 6 năm 2026 — tuần thứ ba đi làm.

---

## Bối cảnh

Tháng 6 năm 2026. Ngọc đã làm việc được gần ba tuần tại Hidamari-en. Yamamoto bắt đầu để Ngọc phụ trách một mình từng bước trong chuỗi 朝の介助 (hỗ trợ buổi sáng), với sự giám sát từ xa. Ngọc vẫn hay hỏi khi gặp bước chưa rõ. Ca bắt đầu lúc 7:00.

---

## Tình huống 1 — Phòng họp nhân viên · 7:00, bàn giao ca sáng

| Vai | Lời thoại |
|---|---|
| Yamamoto | おはようございます。では、<ruby>朝<rt>あさ</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chào buổi sáng. Vậy, bắt đầu bàn giao ca sáng.)* |
| Nhân viên A | <ruby>昨夜<rt>さくや</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>2回<rt>にかい</rt></ruby><ruby>トイレ<rt>トイレ</rt></ruby>に<ruby>起<rt>お</rt></ruby>きました。<ruby>朝<rt>あさ</rt></ruby>は<ruby>眠<rt>ねむ</rt></ruby>いかもしれません。<br>*(Tối qua ông Tanaka dậy đi vệ sinh 2 lần. Sáng nay có thể ông buồn ngủ.)* |
| Yamamoto | わかりました。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>昨日<rt>きのう</rt></ruby>から<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>低下<rt>ていか</rt></ruby>しています。<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てください。<br>*(Rõ. Bà Sato từ hôm qua ăn kém hơn một chút. Hãy quan sát kỹ trong bữa ăn.)* |
| Ngọc | <ruby>申し送り<rt>もうしおくり</rt></ruby>というのは、<ruby>何<rt>なに</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えるんですか?<br>*(Bàn giao ca là truyền đạt những gì ạ?)* |
| Yamamoto | <ruby>夜<rt>よる</rt></ruby>のあいだに<ruby>起<rt>お</rt></ruby>きたことを<ruby>次<rt>つぎ</rt></ruby>のスタッフに<ruby>伝<rt>つた</rt></ruby>えます。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>体調<rt>たいちょう</rt></ruby>、<ruby>睡眠<rt>すいみん</rt></ruby>、<ruby>排泄<rt>はいせつ</rt></ruby>などです。<br>*(Truyền đạt những gì xảy ra trong đêm cho nhân viên ca sau. Tình trạng sức khỏe, giấc ngủ, vệ sinh của các cụ.)* |
| Ngọc | はい、<ruby>大切<rt>たいせつ</rt></ruby>なことですね。メモします。<br>*(Vâng, là điều quan trọng nhỉ. Em ghi lại.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 7:15, 起床介助 — đánh thức nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>起床介助<rt>きしょうかいじょ</rt></ruby>です。まず<ruby>田中<rt>たなか</rt></ruby>さんを<ruby>起<rt>お</rt></ruby>こします。<ruby>声<rt>こえ</rt></ruby>かけの<ruby>仕方<rt>しかた</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Em Nguyễn, đến lúc hỗ trợ dậy buổi sáng. Trước hết đánh thức ông Tanaka. Em thử lên tiếng xem.)* |
| Ngọc | (gõ cửa, vào phòng, đến gần) <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。グエンです。<ruby>朝<rt>あさ</rt></ruby>になりましたよ。<br>*(Ông Tanaka, chào buổi sáng. Cháu là Nguyên. Trời sáng rồi ạ.)* |
| Ông Tanaka | (mở mắt) ...ああ、もうそんな<ruby>時間<rt>じかん</rt></ruby>か。<br>*(...À, đã đến giờ rồi à.)* |
| Ngọc | <ruby>昨夜<rt>さくや</rt></ruby>はよく<ruby>眠<rt>ねむ</rt></ruby>れましたか?<br>*(Tối qua ông ngủ có ngon không ạ?)* |
| Ông Tanaka | まあまあだな。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>2回<rt>にかい</rt></ruby><ruby>トイレ<rt>トイレ</rt></ruby>に<ruby>行<rt>い</rt></ruby>ったから。<br>*(Cũng bình thường. Đêm dậy đi vệ sinh 2 lần rồi.)* |
| Ngọc | そうでしたか。<ruby>起<rt>お</rt></ruby>き<ruby>上<rt>あ</rt></ruby>がりますね。ゆっくりでいいですよ。<br>*(Vậy à. Cháu đỡ ông dậy nhé. Từ từ thôi ạ.)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>む。<br>*(Ừ, nhờ cháu.)* |
| Yamamoto | (gật đầu với Ngọc) よかった。<ruby>声<rt>こえ</rt></ruby>かけ、<ruby>上手<rt>じょうず</rt></ruby>になりましたね。<br>*(Tốt lắm. Em lên tiếng trước giỏi hơn rồi đấy.)* |

---

## Tình huống 3 — Phòng ông Tanaka · 7:25, 整容 — rửa mặt và chải tóc

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>顔<rt>かお</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>いましょうか。おしぼりをお<ruby>持<rt>も</rt></ruby>ちしました。<br>*(Ông Tanaka, mình rửa mặt nhé. Cháu đem khăn ấm đến rồi ạ.)* |
| Ông Tanaka | うん。<ruby>自分<rt>じぶん</rt></ruby>でできるよ、<ruby>右手<rt>みぎて</rt></ruby>は。<br>*(Ừ. Tay phải tao tự làm được.)* |
| Ngọc | はい、<ruby>右<rt>みぎ</rt></ruby>は<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>拭<rt>ふ</rt></ruby>いて、<ruby>左<rt>ひだり</rt></ruby>はお<ruby>手伝<rt>てつだ</rt></ruby>いします。<br>*(Vâng, bên phải ông tự lau, bên trái cháu hỗ trợ ạ.)* |
| Ông Tanaka | (tự lau mặt bên phải) ...<ruby>左<rt>ひだり</rt></ruby>はうまくいかんのう。<br>*(...Bên trái khó quá.)* |
| Ngọc | <ruby>拭<rt>ふ</rt></ruby>きますね。<ruby>冷<rt>つめ</rt></ruby>たくないですか?<br>*(Cháu lau nhé. Có lạnh không ạ?)* |
| Ông Tanaka | ちょうどいい。<br>*(Vừa đúng rồi.)* |
| Ngọc | <ruby>次<rt>つぎ</rt></ruby>に<ruby>髪<rt>かみ</rt></ruby>をとかしますね。くしはどこですか?<br>*(Tiếp theo cháu chải tóc cho ông nhé. Lược ở đâu ạ?)* |
| Ông Tanaka | <ruby>引き出し<rt>ひきだし</rt></ruby>の<ruby>中<rt>なか</rt></ruby>だよ。<br>*(Trong ngăn kéo đó.)* |
| Ngọc | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。(chải tóc nhẹ nhàng) <ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Vâng, xin phép ạ. Có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>気持<rt>きも</rt></ruby>ちいいな。<br>*(Không sao. Dễ chịu đấy.)* |

---

## Tình huống 4 — Phòng ông Tanaka · 7:40, 更衣介助 — hỗ trợ thay đồ

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>着替<rt>きが</rt></ruby>えをお<ruby>手伝<rt>てつだ</rt></ruby>いします。<ruby>今日<rt>きょう</rt></ruby>はこの<ruby>服<rt>ふく</rt></ruby>でいいですか?<br>*(Ông Tanaka, cháu hỗ trợ ông thay đồ. Hôm nay mặc bộ này được không ạ?)* |
| Ông Tanaka | ああ、それでいい。<br>*(Ừ, bộ đó được.)* |
| Ngọc | <ruby>麻痺<rt>まひ</rt></ruby>のある<ruby>左<rt>ひだり</rt></ruby>から<ruby>着<rt>き</rt></ruby>ますね。まず<ruby>袖<rt>そで</rt></ruby>に<ruby>腕<rt>うで</rt></ruby>を<ruby>通<rt>とお</rt></ruby>します。<br>*(Cháu mặc từ bên liệt trái trước nhé. Trước hết luồn tay vào tay áo.)* |
| Ông Tanaka | (hơi khó chịu) <ruby>急<rt>いそ</rt></ruby>がなくていい、ゆっくりな。<br>*(Không cần vội, từ từ thôi.)* |
| Ngọc | はい、ゆっくりします。<ruby>痛<rt>いた</rt></ruby>かったら<ruby>言<rt>い</rt></ruby>ってください。<br>*(Vâng, cháu làm từ từ. Nếu đau ông cứ nói nhé.)* |
| Yamamoto | (nói nhỏ với Ngọc) <ruby>片麻痺<rt>かたまひ</rt></ruby>のある<ruby>方<rt>かた</rt></ruby>は「<ruby>患側<rt>かんそく</rt></ruby>から<ruby>着<rt>き</rt></ruby>て、<ruby>健側<rt>けんそく</rt></ruby>から<ruby>脱<rt>ぬ</rt></ruby>ぐ」が<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Với người bị liệt nửa người, nguyên tắc cơ bản là "mặc từ bên liệt, cởi từ bên lành".)* |
| Ngọc | <ruby>患側<rt>かんそく</rt></ruby>から<ruby>着<rt>き</rt></ruby>て、<ruby>健側<rt>けんそく</rt></ruby>から<ruby>脱<rt>ぬ</rt></ruby>ぐ...わかりました。メモします。<br>*(Mặc từ bên liệt, cởi từ bên lành... Em hiểu rồi. Em ghi lại ạ.)* |

---

## Tình huống 5 — Hành lang · 8:00, đưa 利用者 ra 食堂

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>朝ごはん<rt>あさごはん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Ông Tanaka, đến giờ ăn sáng rồi. Mình ra phòng ăn nhé.)* |
| Ông Tanaka | ちょっと<ruby>待<rt>ま</rt></ruby>て、<ruby>トイレ<rt>トイレ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きたい。<br>*(Khoan, tao muốn đi vệ sinh đã.)* |
| Ngọc | はい、わかりました。<ruby>トイレ<rt>トイレ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。(sau khi hỗ trợ xong) よかったです。では、<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょうか。<br>*(Vâng, rõ ạ. Mình đi vệ sinh nhé. Tốt rồi. Vậy mình ra phòng ăn nhé ạ.)* |
| (Tại hành lang, gặp bà Sato) | |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、おはようございます。<ruby>朝ごはん<rt>あさごはん</rt></ruby>ですよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Bà Sato, chào buổi sáng ạ. Đến giờ ăn sáng rồi. Mình cùng đi nhé.)* |
| Bà Sato | (nhìn xung quanh, vẻ bối rối) ...ここは<ruby>どこ<rt>どこ</rt></ruby>? <ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたい。<br>*(...Đây là đâu? Tôi muốn về nhà.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、ここはひだまり<ruby>苑<rt>えん</rt></ruby>ですよ。まず、ご<ruby>飯<rt>はん</rt></ruby>を<ruby>食<rt>た</rt></ruby>べましょう。おいしいですよ。<br>*(Bà Sato, đây là Hidamari-en ạ. Trước hết mình ăn cơm đã nhé. Ngon lắm đấy.)* |
| Bà Sato | (gật đầu chậm rãi) ...そう。ご<ruby>飯<rt>はん</rt></ruby>か。<br>*(...Vậy à. Ăn cơm à.)* |

---

## Tình huống 6 — Phòng ăn · 8:10, 朝食介助 — hỗ trợ ăn sáng

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>朝食<rt>ちょうしょく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をしてください。<ruby>田中<rt>たなか</rt></ruby>さんのエプロンと<ruby>食事<rt>しょくじ</rt></ruby>を<ruby>セット<rt>セット</rt></ruby>して。<br>*(Em Nguyễn, chuẩn bị bữa sáng. Cài yếm và xếp bữa ăn cho ông Tanaka nhé.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、エプロンをつけますね。<br>*(Ông Tanaka, cháu cài yếm cho ông nhé.)* |
| Ông Tanaka | ああ。<br>*(Ừ.)* |
| Ngọc | (sau khi xếp bữa ăn xong) <ruby>田中<rt>たなか</rt></ruby>さん、「いただきます」と<ruby>言<rt>い</rt></ruby>いましょうか。<br>*(Ông Tanaka, mình cùng nói "いただきます" nhé ạ.)* |
| Ông Tanaka | <ruby>分<rt>わ</rt></ruby>かってるよ。いただきます。(bắt đầu ăn)<br>*(Biết rồi. Mời dùng bữa.)* |
| Ngọc | (quan sát, đến gần nhân viên A nói nhỏ) <ruby>田中<rt>たなか</rt></ruby>さんが<ruby>少<rt>すこ</rt></ruby>しむせているようです。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Ông Tanaka có vẻ hơi bị sặc. Có ổn không ạ?)* |
| Nhân viên A | そうですね。<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みにくいときは、<ruby>姿勢<rt>しせい</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>前<rt>まえ</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>けてください。<br>*(Đúng nhỉ. Khi nuốt khó, hơi nghiêng người về phía trước nhé.)* |
| Ngọc | <ruby>前<rt>まえ</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>けますね。<br>*(Nghiêng về phía trước nhé ạ.)* |
| Ông Tanaka | (sau khi điều chỉnh tư thế) うん、<ruby>楽<rt>らく</rt></ruby>になった。<br>*(Ừ, dễ hơn rồi.)* |

---

## Tình huống 7 — Phòng ăn · 8:15, quan sát bà Sato ăn ít

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>朝ごはん<rt>あさごはん</rt></ruby>ですよ。<ruby>食<rt>た</rt></ruby>べてみましょう。<br>*(Bà Sato, ăn sáng đây ạ. Bà ăn thử nhé.)* |
| Bà Sato | (nhìn bát cơm, không đụng đũa) ...あんまり<ruby>食<rt>た</rt></ruby>べたくない。<br>*(...Tôi không muốn ăn mấy.)* |
| Ngọc | そうですか。<ruby>少<rt>すこ</rt></ruby>しだけでもいいですよ。お<ruby>味噌汁<rt>みそしる</rt></ruby>からどうぞ。<br>*(Vậy à. Ít một chút cũng được ạ. Bà dùng canh miso trước đi.)* |
| Bà Sato | (nhấp một hớp) ...おいしい。<br>*(...Ngon đấy.)* |
| Ngọc | よかった。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>飲<rt>の</rt></ruby>みますか?<br>*(Mừng quá. Bà uống thêm một chút nữa không ạ?)* |
| Bà Sato | うん、<ruby>少<rt>すこ</rt></ruby>しね。<br>*(Ừ, một chút thôi.)* |
| Yamamoto | (nói nhỏ với Ngọc) グエンさん、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>と<ruby>内容<rt>ないよう</rt></ruby>をメモしておいてください。あとで<ruby>記録<rt>きろく</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。<br>*(Em Nguyễn, ghi lại lượng và nội dung bữa ăn nhé. Lát ghi vào nhật ký chăm sóc.)* |
| Ngọc | はい。みそしる<ruby>半分<rt>はんぶん</rt></ruby>、ごはん<ruby>少<rt>すこ</rt></ruby>し、ですね。メモします。<br>*(Vâng. Canh miso nửa bát, cơm một chút, đúng không ạ. Em ghi lại.)* |

---

## Tình huống 8 — Phòng ăn · 8:45, 口腔ケア — chăm sóc răng miệng sau bữa ăn

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>食後<rt>しょくご</rt></ruby>は<ruby>口腔<rt>こうくう</rt></ruby>ケアです。グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>歯磨<rt>はみが</rt></ruby>きを<ruby>手伝<rt>てつだ</rt></ruby>ってください。<br>*(Sau bữa ăn là chăm sóc răng miệng. Em Nguyễn, hỗ trợ ông Tanaka đánh răng nhé.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>歯磨<rt>はみが</rt></ruby>きをします。歯ブラシを<ruby>持<rt>も</rt></ruby>ってきましたよ。<br>*(Ông Tanaka, đến lúc đánh răng rồi ạ. Cháu đem bàn chải đến rồi đây.)* |
| Ông Tanaka | ああ。<ruby>自分<rt>じぶん</rt></ruby>でやるよ。<br>*(Ừ. Tao tự làm.)* |
| Ngọc | はい。では、<ruby>口<rt>くち</rt></ruby>をゆすぐときにお<ruby>手伝<rt>てつだ</rt></ruby>いしますね。<br>*(Vâng. Vậy khi súc miệng cháu hỗ trợ cho nhé.)* |
| Ông Tanaka | (đánh răng một lúc) こっちで<ruby>吐<rt>は</rt></ruby>けばいいか?<br>*(Nhổ ra đây được không?)* |
| Ngọc | はい、こちらに。(đưa cốc nhổ) <ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>、きれいになりましたね。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, nhổ vào đây ạ. Miệng sạch sẽ rồi nhỉ. Ông vất vả rồi.)* |
| Yamamoto | グエンさん、<ruby>口腔<rt>こうくう</rt></ruby>ケアは<ruby>誤嚥<rt>ごえん</rt></ruby><ruby>性<rt>せい</rt></ruby><ruby>肺炎<rt>はいえん</rt></ruby>の<ruby>予防<rt>よぼう</rt></ruby>にもなります。<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>介護<rt>かいご</rt></ruby>です。<br>*(Em Nguyễn, chăm sóc răng miệng còn giúp phòng ngừa viêm phổi do hít sặc. Là việc chăm sóc quan trọng.)* |
| Ngọc | <ruby>誤嚥<rt>ごえん</rt></ruby><ruby>性<rt>せい</rt></ruby><ruby>肺炎<rt>はいえん</rt></ruby>...それは<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>が<ruby>肺<rt>はい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ることですか?<br>*(Viêm phổi do hít sặc... Là do thức ăn vào phổi ạ?)* |
| Yamamoto | そうです。<ruby>高齢者<rt>こうれいしゃ</rt></ruby>に<ruby>多<rt>おお</rt></ruby>い<ruby>病気<rt>びょうき</rt></ruby>です。よく<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Đúng vậy. Là bệnh phổ biến ở người cao tuổi. Nhớ kỹ nhé.)* |

---

## Tình huống 9 — Phòng sinh hoạt · 9:00, hỏi Yamamoto về trình tự buổi sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>質問<rt>しつもん</rt></ruby>があります。<ruby>朝<rt>あさ</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れ、もう<ruby>一度<rt>いちど</rt></ruby>まとめてもらえますか?<br>*(Chị Yamamoto, em có câu hỏi. Chị có thể tổng kết lại quy trình buổi sáng cho em một lần nữa không ạ?)* |
| Yamamoto | もちろん。<ruby>起床介助<rt>きしょうかいじょ</rt></ruby>、<ruby>整容<rt>せいよう</rt></ruby>、<ruby>更衣<rt>こうい</rt></ruby>、<ruby>食堂<rt>しょくどう</rt></ruby>へのご<ruby>案内<rt>あんない</rt></ruby>、<ruby>朝食<rt>ちょうしょく</rt></ruby>、<ruby>口腔<rt>こうくう</rt></ruby>ケア、<ruby>記録<rt>きろく</rt></ruby>、です。<br>*(Dĩ nhiên. Hỗ trợ dậy, vệ sinh buổi sáng, thay đồ, dẫn ra phòng ăn, ăn sáng, chăm sóc răng miệng, ghi nhật ký.)* |
| Ngọc | <ruby>整容<rt>せいよう</rt></ruby>というのは<ruby>顔<rt>かお</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>ったり、<ruby>髪<rt>かみ</rt></ruby>をとかしたりですか?<br>*(Chăm sóc vệ sinh buổi sáng là rửa mặt, chải tóc phải không ạ?)* |
| Yamamoto | そうです。<ruby>整容<rt>せいよう</rt></ruby>は<ruby>見た目<rt>みため</rt></ruby>をきれいにすることで、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>気持<rt>きも</rt></ruby>ちをよくします。<br>*(Đúng vậy. Chăm sóc vẻ ngoài gọn gàng giúp tâm trạng người sử dụng dịch vụ tốt hơn.)* |
| Ngọc | なるほど。<ruby>気持<rt>きも</rt></ruby>ちのためにも<ruby>大切<rt>たいせつ</rt></ruby>なんですね。<br>*(À ra vậy. Cũng quan trọng cho tinh thần nữa nhỉ.)* |
| Yamamoto | そうですよ。<ruby>毎朝<rt>まいあさ</rt></ruby>きれいにすることで、<ruby>一日<rt>いちにち</rt></ruby>が<ruby>気持<rt>きも</rt></ruby>ちよく<ruby>始<rt>はじ</rt></ruby>まります。<br>*(Đúng vậy. Mỗi sáng được gọn gàng, cả ngày bắt đầu thoải mái hơn.)* |

---

## Tình huống 10 — Phòng ông Kimura · 9:20, chăm sóc buổi sáng cho 利用者 vui tính

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa) <ruby>木村<rt>きむら</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>ってもいいですか?<br>*(Ông Kimura, cháu là Nguyên. Cháu vào được không ạ?)* |
| Ông Kimura | おお、いいよいいよ。<ruby>今日<rt>きょう</rt></ruby>も<ruby>元気<rt>げんき</rt></ruby>だよ!<br>*(Ồ, vào đi vào đi. Hôm nay tôi cũng khỏe đấy!)* |
| Ngọc | よかったです。<ruby>朝<rt>あさ</rt></ruby>の<ruby>整容<rt>せいよう</rt></ruby>をしましょう。おしぼりです。<br>*(Mừng quá ạ. Mình chăm sóc vệ sinh buổi sáng nhé. Đây là khăn ấm ạ.)* |
| Ông Kimura | ありがとう。(lau mặt) グエンちゃん、ベトナムの<ruby>朝<rt>あさ</rt></ruby>ごはんは<ruby>何<rt>なに</rt></ruby>を<ruby>食<rt>た</rt></ruby>べるの?<br>*(Cảm ơn. Em Nguyên, bữa sáng ở Việt Nam ăn gì vậy?)* |
| Ngọc | フォーという<ruby>麺<rt>めん</rt></ruby>をよく<ruby>食<rt>た</rt></ruby>べます。ごはんやサンドイッチも<ruby>食<rt>た</rt></ruby>べますよ。<br>*(Thường ăn một loại mì tên Phở. Cũng ăn cơm và bánh mì nữa ạ.)* |
| Ông Kimura | フォー!<ruby>聞<rt>き</rt></ruby>いたことあるよ。<ruby>美味<rt>おい</rt></ruby>しそうだね。<br>*(Phở! Tôi có nghe đấy. Trông ngon nhỉ.)* |
| Ngọc | <ruby>今度<rt>こんど</rt></ruby>、<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せますね。<br>*(Lần sau cháu cho ông xem ảnh nhé.)* |
| Ông Kimura | ぜひぜひ。<ruby>楽<rt>たの</rt></ruby>しみにしてるよ。<br>*(Nhất định nhé. Tôi mong đấy.)* |

---

## Tình huống 11 — Phòng y tá · 10:00, ghi 記録 — nhật ký chăm sóc

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>介助<rt>かいじょ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<ruby>記録<rt>きろく</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Em Nguyễn, hỗ trợ buổi sáng xong rồi. Viết nhật ký chăm sóc nhé.)* |
| Ngọc | はい。どんなことを<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Vâng. Phải viết những gì ạ?)* |
| Yamamoto | <ruby>起床時間<rt>きしょうじかん</rt></ruby>、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>、<ruby>体調<rt>たいちょう</rt></ruby>、<ruby>特記事項<rt>とっきじこう</rt></ruby>です。<ruby>短<rt>みじか</rt></ruby>くていいですよ。<br>*(Giờ dậy, lượng thức ăn, tình trạng sức khỏe, điểm đặc biệt cần ghi chú. Ngắn gọn thôi.)* |
| Ngọc | (viết) 「<ruby>田中<rt>たなか</rt></ruby>さん、7<ruby>時<rt>じ</rt></ruby>15<ruby>分<rt>ふん</rt></ruby><ruby>起床<rt>きしょう</rt></ruby>。<ruby>朝食<rt>ちょうしょく</rt></ruby>は<ruby>全量<rt>ぜんりょう</rt></ruby>。<ruby>食事中<rt>しょくじちゅう</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>しむせあり。<ruby>姿勢<rt>しせい</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>にて<ruby>改善<rt>かいぜん</rt></ruby>。」これでいいですか?<br>*(Viết: "Ông Tanaka, dậy lúc 7:15. Ăn sáng hết phần. Trong bữa ăn có sặc nhẹ. Điều chỉnh tư thế thì cải thiện." Như vậy được chưa ạ?)* |
| Yamamoto | よかったです。「むせあり」と「<ruby>改善<rt>かいぜん</rt></ruby>」を<ruby>書<rt>か</rt></ruby>いたのはよかった。<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>です。<br>*(Tốt lắm. Ghi "có sặc" và "cải thiện" là đúng. Là thông tin quan trọng.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんはどう<ruby>書<rt>か</rt></ruby>けばいいですか?<ruby>食事<rt>しょくじ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>なかったので。<br>*(Còn bà Sato thì viết thế nào ạ? Bà ăn ít nên ạ.)* |
| Yamamoto | 「<ruby>朝食<rt>ちょうしょく</rt></ruby>は<ruby>摂取量<rt>せっしゅりょう</rt></ruby><ruby>少<rt>すく</rt></ruby>なめ。みそしる<ruby>半分<rt>はんぶん</rt></ruby>のみ<ruby>摂取<rt>せっしゅ</rt></ruby>。<ruby>食欲<rt>しょくよく</rt></ruby><ruby>低下<rt>ていか</rt></ruby><ruby>続<rt>つづ</rt></ruby>く。」と<ruby>書<rt>か</rt></ruby>いてください。<br>*(Viết "Ăn sáng lượng ít. Chỉ uống nửa bát canh miso. Tiếp tục giảm cảm giác thèm ăn.".)* |
| Ngọc | はい、そのとおり<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em viết đúng như vậy ạ.)* |

---

## Tình huống 12 — Ký túc · 21:00, đồng hương (mạch truyện)

> Scene tiếng Việt — giữ mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Hôm nay bên đó ra sao? Cơ sở mình cứ 10 giờ mới ăn sáng, tụi mình không theo ca dậy buổi sáng. |
| Ngọc | (tiếng Việt) Bên mình 7 giờ là bắt đầu. Nhiều bước lắm: đánh thức, rửa mặt, chải tóc, thay đồ, đưa ra phòng ăn, ăn xong còn đánh răng nữa. Rồi mới ghi nhật ký. |
| Hương | (tiếng Việt) Ghi nhật ký bằng tiếng Nhật hả? Khó không? |
| Ngọc | (tiếng Việt) Khó hơn mình nghĩ. Phải dùng từ chuyên môn đàng hoàng: 摂取量, 特記事項... May là chị Yamamoto chỉ kỹ. Cơ sở bạn thì sao? |
| Hương | (tiếng Việt) Bên mình dùng app tablet, chọn mấy ô sẵn, đỡ hơn. Nhưng khi có sự cố vẫn phải tự viết. Thôi, cùng cố nhé. |
| Ngọc | (tiếng Việt) Ừ. Nhưng mình thích cách chị Yamamoto giải thích từng bước. Hiểu lý do thì làm không bị máy móc. |

---

## Đọng lại chương 3

Ngọc học xong chuỗi hỗ trợ buổi sáng 6 bước: **起床介助** (đánh thức — hỏi giấc ngủ, đỡ dậy từ từ) → **整容** (rửa mặt + chải tóc — tôn trọng phần tự làm được của 利用者) → **更衣介助** (thay đồ — nguyên tắc 患側から着て健側から脱ぐ) → **食堂への案内** (hỏi vệ sinh trước, dỗ nhẹ khi 認知症) → **朝食** (quan sát むせる, điều chỉnh tư thế, ghi lượng ăn) → **口腔ケア** (phòng 誤嚥性肺炎) → **記録** (ngắn gọn, ghi đủ: giờ dậy, lượng ăn, thể trạng, đặc biệt).

> Từ vựng & mẫu câu chương này: 申し送り・起床介助・整容・更衣介助・患側から着て健側から脱ぐ・片麻痺・食堂・朝食・むせる・姿勢調整・口腔ケア・誤嚥性肺炎・記録・摂取量・特記事項・食欲低下・声かけ・おしぼり', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000004, 800000027, NULL, 'markdown_book', 'T4. Bữa ăn và sự cố suýt xảy ra (食事介助とヒヤリハット)', '# Sách thực tập sinh điều dưỡng · T4. Bữa ăn và sự cố suýt xảy ra (食事介助とヒヤリハット)

> **Mục tiêu nhân vật:** Ngọc học **食事介助** (hỗ trợ ăn uống) — tư thế ngồi đúng, tốc độ, các dạng thức ăn đặc biệt. Rồi đối mặt với tình huống căng thẳng nhất từ đầu: bà Sato suýt bị sặc (**誤嚥・ごえん**). Ngọc hoảng loạn, Yamamoto xử lý gọi y tá — và sau đó Ngọc phải viết báo cáo **ヒヤリハット** đầu tiên trong nghề.

---

## Bối cảnh

Tháng 7 năm 2026. Ba tháng sau khi vào nghề, Ngọc được phân công hỗ trợ ăn buổi trưa cho bà Sato (88 tuổi, 認知症・にんちしょう). Bà Sato hay ăn nhanh và không chờ nuốt xong mới nhai tiếp — nguy cơ **誤嚥** (sặc thức ăn vào phổi) cao. Hôm nay là tình huống thật đầu tiên Ngọc phải đối mặt với an toàn người bệnh.

---

## Tình huống 1 — Phòng ăn · 11:30, Yamamoto dạy 食事介助 trước bữa

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>食事<rt>しょくじ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してもらいます。その<ruby>前<rt>まえ</rt></ruby>に、<ruby>大切<rt>たいせつ</rt></ruby>なことをお<ruby>話<rt>はな</rt></ruby>しします。<br>*(Hôm nay em phụ trách hỗ trợ ăn. Trước đó tôi xin nói một điều quan trọng.)* |
| Ngọc | はい、<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, em nghe ạ.)* |
| Yamamoto | まず、<ruby>座<rt>すわ</rt></ruby>る<ruby>姿勢<rt>しせい</rt></ruby>です。<ruby>背中<rt>せなか</rt></ruby>をまっすぐにして、<ruby>少<rt>すこ</rt></ruby>し<ruby>前<rt>まえ</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>けます。こうすると<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みやすくなります。<br>*(Trước tiên là tư thế ngồi. Lưng thẳng, nghiêng nhẹ về phía trước. Như vậy sẽ dễ nuốt hơn.)* |
| Ngọc | <ruby>前<rt>まえ</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>ける...ですね。どのくらいですか?<br>*(Nghiêng về phía trước... ạ. Khoảng bao nhiêu ạ?)* |
| Yamamoto | <ruby>少<rt>すこ</rt></ruby>しだけです。これくらい。(시범) あごが<ruby>下<rt>した</rt></ruby>がると<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みやすくなります。<br>*(Chỉ một chút thôi. Khoảng thế này. Khi cằm hơi cúi xuống thì nuốt dễ hơn.)* |
| Ngọc | なるほど。それから<ruby>速<rt>はや</rt></ruby>さはどうですか?<br>*(Ra là vậy. Còn tốc độ thì sao ạ?)* |
| Yamamoto | <ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>一口<rt>ひとくち</rt></ruby>ずつ<ruby>待<rt>ま</rt></ruby>ちます。<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>んだのを<ruby>確認<rt>かくにん</rt></ruby>してから、<ruby>次<rt>つぎ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<ruby>急<rt>いそ</rt></ruby>がせてはいけません。<br>*(Quan trọng lắm. Chờ từng miếng một. Xác nhận nuốt xong rồi mới đưa miếng tiếp theo. Không được giục.)* |
| Ngọc | <ruby>確認<rt>かくにん</rt></ruby>はどうやって?<br>*(Xác nhận bằng cách nào ạ?)* |
| Yamamoto | のどを<ruby>見<rt>み</rt></ruby>ます。「ごっくん」と<ruby>動<rt>うご</rt></ruby>きますよ。それか、「<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>めましたか?」と<ruby>聞<rt>き</rt></ruby>きます。<br>*(Nhìn vào cổ họng. Sẽ thấy chuyển động khi nuốt. Hoặc hỏi "ông/bà nuốt được chưa ạ?".)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 2 — Bếp phân phát thức ăn · 11:45, học các loại thức ăn đặc biệt

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>形態<rt>けいたい</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。<ruby>利用者<rt>りようしゃ</rt></ruby>さんによって<ruby>違<rt>ちが</rt></ruby>います。<br>*(Em Nguyễn, hãy ghi nhớ các dạng thức ăn. Mỗi người dùng dịch vụ sẽ khác nhau.)* |
| Ngọc | どんな<ruby>種類<rt>しゅるい</rt></ruby>がありますか?<br>*(Có những loại nào ạ?)* |
| Yamamoto | まず「<ruby>普通食<rt>ふつうしょく</rt></ruby>」、<ruby>普通<rt>ふつう</rt></ruby>の<ruby>食事<rt>しょくじ</rt></ruby>です。<ruby>次<rt>つぎ</rt></ruby>に「<ruby>刻<rt>きざ</rt></ruby>み<ruby>食<rt>しょく</rt></ruby>」、<ruby>細<rt>こま</rt></ruby>かく<ruby>切<rt>き</rt></ruby>った<ruby>食事<rt>しょくじ</rt></ruby>です。<br>*(Trước tiên là "普通食", thức ăn thông thường. Tiếp theo là "刻み食", thức ăn cắt nhỏ.)* |
| Ngọc | 「<ruby>刻<rt>きざ</rt></ruby>み<ruby>食<rt>しょく</rt></ruby>」は<ruby>歯<rt>は</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>い<ruby>方<rt>かた</rt></ruby>のためですか?<br>*(Thức ăn cắt nhỏ là dành cho người yếu răng ạ?)* |
| Yamamoto | そうです。それから「ミキサー<ruby>食<rt>しょく</rt></ruby>」、<ruby>全部<rt>ぜんぶ</rt></ruby>ミキサーにかけて、<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みやすくしたものです。<br>*(Đúng vậy. Rồi còn "Thức ăn xay", xay nhuyễn hoàn toàn để dễ nuốt.)* |
| Ngọc | ミキサー<ruby>食<rt>しょく</rt></ruby>...<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちませんか?<br>*(Thức ăn xay... Không mất ngon không ạ?)* |
| Yamamoto | いい<ruby>質問<rt>しつもん</rt></ruby>です。だから<ruby>最近<rt>さいきん</rt></ruby>は<ruby>見<rt>み</rt></ruby>た<ruby>目<rt>め</rt></ruby>をきれいにします。<ruby>形<rt>かたち</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えて<ruby>出<rt>だ</rt></ruby>します。それと「とろみ<ruby>食<rt>しょく</rt></ruby>」もあります。<br>*(Câu hỏi hay. Nên gần đây người ta trình bày đẹp hơn. Tạo hình rồi bày ra. Còn có "thức ăn đặc sệt" nữa.)* |
| Ngọc | とろみ<ruby>食<rt>しょく</rt></ruby>というのは?<br>*(Thức ăn đặc sệt là gì ạ?)* |
| Yamamoto | <ruby>液体<rt>えきたい</rt></ruby>に「とろみ<ruby>剤<rt>ざい</rt></ruby>」を<ruby>入<rt>い</rt></ruby>れて、<ruby>少<rt>すこ</rt></ruby>しとろっとした<ruby>状態<rt>じょうたい</rt></ruby>にします。<ruby>誤嚥<rt>ごえん</rt></ruby><ruby>予防<rt>よぼう</rt></ruby>のためです。<ruby>佐藤<rt>さとう</rt></ruby>さんはとろみつきです。<br>*(Cho "chất làm sệt" vào chất lỏng để tạo độ đặc nhẹ. Để phòng tránh sặc thức ăn vào phổi. Bà Sato dùng loại có độ sệt.)* |
| Ngọc | <ruby>誤嚥<rt>ごえん</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>いですね。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Sặc vào phổi nguy hiểm nhỉ. Em sẽ cẩn thận ạ.)* |
| Yamamoto | <ruby>誤嚥性<rt>ごえんせい</rt></ruby><ruby>肺炎<rt>はいえん</rt></ruby>になることがあります。<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わります。だから<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>急<rt>いそ</rt></ruby>がせません。<br>*(Có thể dẫn đến viêm phổi do hít sặc. Liên quan đến tính mạng. Nên tuyệt đối không được giục.)* |

---

## Tình huống 3 — Phòng ăn · 11:55, chuẩn bị bàn ăn và 声かけ trước bữa

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>環境<rt>かんきょう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えます。まずテーブルをきれいにしてください。<br>*(Em Nguyễn, trước bữa ăn mình dọn dẹp môi trường trước. Đầu tiên hãy lau sạch bàn.)* |
| Ngọc | はい。(lau bàn) テーブルを<ruby>拭<rt>ふ</rt></ruby>きました。<ruby>次<rt>つぎ</rt></ruby>は?<br>*(Vâng. Em lau xong rồi. Tiếp theo ạ?)* |
| Yamamoto | <ruby>食器<rt>しょっき</rt></ruby>を<ruby>並<rt>なら</rt></ruby>べます。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>食べやすい<rt>たべやすい</rt></ruby><ruby>位置<rt>いち</rt></ruby>に<ruby>置<rt>お</rt></ruby>きます。それから<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>をかけます。<br>*(Bày chén bát. Đặt ở vị trí người được chăm sóc có thể ăn dễ dàng. Rồi trước bữa ăn nhất định phải lên tiếng gọi.)* |
| Ngọc | <ruby>声<rt>こえ</rt></ruby>かけって、なんて<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Gọi thì nói gì ạ?)* |
| Yamamoto | 「<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>お昼<rt>おひる</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>ですよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べましょう」と<ruby>言<rt>い</rt></ruby>います。<ruby>笑顔<rt>えがお</rt></ruby>で、ゆっくり<ruby>話<rt>はな</rt></ruby>しかけます。<br>*("Bà Sato ơi, đến giờ ăn trưa rồi ạ. Mình cùng ăn nhé" — nói vậy. Mặt cười, nói chậm rãi.)* |
| Ngọc | <ruby>笑顔<rt>えがお</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Nụ cười quan trọng nhỉ ạ.)* |
| Yamamoto | そうです。<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は<ruby>表情<rt>ひょうじょう</rt></ruby>をよく<ruby>読<rt>よ</rt></ruby>みます。<ruby>声<rt>こえ</rt></ruby>のトーンも<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>明<rt>あか</rt></ruby>るく、<ruby>穏<rt>おだ</rt></ruby>やかに。<br>*(Đúng vậy. Người bị sa sút trí tuệ rất nhạy cảm với biểu cảm khuôn mặt. Giọng điệu cũng quan trọng. Hãy tươi tắn, nhẹ nhàng.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>佐藤<rt>さとう</rt></ruby>さんに<ruby>声<rt>こえ</rt></ruby>をかけてみます。<br>*(Em hiểu rồi ạ. Em sẽ thử gọi bà Sato.)* |
| Ngọc | (bước đến bên bà Sato, mỉm cười) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>お昼<rt>おひる</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>ですよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べましょう。<br>*(Bà Sato ơi, đến giờ ăn trưa rồi ạ. Mình cùng ăn nhé.)* |
| Bà Sato | (nhìn Ngọc, gật đầu nhẹ) うん、<ruby>食<rt>た</rt></ruby>べる。<br>*(Ừ, bà ăn.)* |
| Yamamoto | (nhỏ giọng với Ngọc) よかったです。<ruby>上手<rt>じょうず</rt></ruby>ですよ。<br>*(Tốt lắm. Em làm tốt đấy.)* |

---

## Tình huống 4 — Bàn ăn bà Sato · 12:00, sự cố suýt sặc

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、こんにちは。グエンです。<ruby>今日<rt>きょう</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がお<ruby>食事<rt>しょくじ</rt></ruby>のお<ruby>手伝<rt>てつだ</rt></ruby>いをします。<br>*(Bà Sato, chào bà ạ. Cháu là Nguyên. Hôm nay cháu giúp bà ăn ạ.)* |
| Bà Sato | (nhìn Ngọc với ánh mắt nhẹ nhàng) あら、かわいい<ruby>子<rt>こ</rt></ruby>ね。<ruby>娘<rt>むすめ</rt></ruby>みたい。<br>*(Ôi, đứa con dễ thương. Giống con gái tao quá.)* |
| Ngọc | (mỉm cười) ありがとうございます。では、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べましょう。<ruby>姿勢<rt>しせい</rt></ruby>はこれでいいですか? (kiểm tra tư thế bà Sato)<br>*(Cháu cảm ơn ạ. Vậy mình ăn cùng nhé. Tư thế ngồi như vậy ổn chưa bà?)* |
| Bà Sato | うん、いいよ。<ruby>早<rt>はや</rt></ruby>く<ruby>食<rt>た</rt></ruby>べたいわ。<br>*(Ừ, ổn. Bà muốn ăn nhanh.)* |
| Ngọc | <ruby>一口<rt>ひとくち</rt></ruby>ずつですよ。<ruby>急<rt>いそ</rt></ruby>がなくてもいいです。(múc thìa đầu, đưa cho bà Sato)<br>*(Từng miếng một nhé bà. Không cần vội.)* |
| Bà Sato | (nuốt, chưa kịp xong đã há miệng đòi thêm) もっと、もっと。<br>*(Thêm, thêm.)* |
| Ngọc | (lo lắng, nhưng vì bà Sato nài, đưa thêm hơi nhanh) は、はい...<br>*(Dạ... vâng ạ...)* |
| Bà Sato | (đột ngột ho dữ dội) げほっ、げほっ!<br>*(Khọc, khọc!)* |
| Ngọc | (giật mình, đứng dậy, giọng run) <ruby>佐藤<rt>さとう</rt></ruby>さん! <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか!?<br>*(Bà Sato! Bà có ổn không!?)* |
| Bà Sato | (mặt đỏ, tiếp tục ho, không đáp được)<br>*(Bà Sato không nói được, mặt đỏ bừng, tay bám vào bàn.)* |
| Ngọc | (hoảng loạn, hét lên) <ruby>山本<rt>やまもと</rt></ruby>さん! <ruby>助<rt>たす</rt></ruby>けてください!<br>*(Chị Yamamoto! Cứu cháu với!)* |

---

## Tình huống 5 — Phòng ăn · 12:05, Yamamoto xử lý — gọi 看護師

| Vai | Lời thoại |
|---|---|
| Yamamoto | (chạy vào, lập tức kiểm tra bà Sato) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>聞<rt>き</rt></ruby>こえますか? (vỗ nhẹ lưng theo hướng xuống)<br>*(Bà Sato, bà nghe thấy không? )* |
| Bà Sato | (ho thêm một lúc rồi dừng, thở được) ...ん、んんん...<br>*(... ừ, ừ...)* |
| Yamamoto | (vẫn theo dõi, quay sang Ngọc nhanh) グエンさん、<ruby>今<rt>いま</rt></ruby>すぐナースコールを<ruby>押<rt>お</rt></ruby>して。<ruby>看護師<rt>かんごし</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>んで。<br>*(Em Nguyễn, bấm chuông gọi y tá ngay. Gọi y tá đến.)* |
| Ngọc | (chạy đến bảng gọi, bấm) は、はい!<br>*(Dạ, vâng ạ!)* |
| Y tá (đến nhanh) | どうしましたか?<br>*(Có chuyện gì vậy?)* |
| Yamamoto | <ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>食事中<rt>しょくじちゅう</rt></ruby>にむせました。<ruby>今<rt>いま</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていますが、<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bà Sato bị sặc trong khi ăn. Hiện đã ổn hơn nhưng nhờ kiểm tra ạ.)* |
| Y tá | わかりました。(kiểm tra bà Sato — đo SpO2, hỏi, nghe phổi) <ruby>今<rt>いま</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。でも<ruby>記録<rt>きろく</rt></ruby>しておきます。<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます。<br>*(Rõ rồi. Bây giờ ổn rồi. Nhưng tôi ghi lại. Tiếp tục theo dõi.)* |
| Yamamoto | ありがとうございます。<ruby>食事<rt>しょくじ</rt></ruby>は<ruby>今日<rt>きょう</rt></ruby>はここまでにします。<ruby>佐藤<rt>さとう</rt></ruby>さん、もう<ruby>終<rt>お</rt></ruby>わりにしましょう。ゆっくり<ruby>休<rt>やす</rt></ruby>みましょう。<br>*(Cảm ơn. Hôm nay dừng ăn ở đây thôi. Bà Sato, mình dừng thôi nhé. Nghỉ ngơi nhé.)* |
| Bà Sato | (gật đầu mệt mỏi) うん...<br>*(Ừ...)* |

---

## Tình huống 6 — Phòng ăn · 12:20, hỗ trợ uống nước và uống thuốc (服薬介助)

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>後<rt>あと</rt></ruby>は<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby>と<ruby>服薬<rt>ふくやく</rt></ruby>があります。<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<br>*(Sau bữa ăn có bù nước và uống thuốc. Làm cùng nhau nhé.)* |
| Ngọc | <ruby>服薬<rt>ふくやく</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>...お<ruby>薬<rt>くすり</rt></ruby>を<ruby>飲<rt>の</rt></ruby>ませるんですか?<br>*(Hỗ trợ uống thuốc... là cho uống thuốc ạ?)* |
| Yamamoto | そうです。でも、<ruby>基本<rt>きほん</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>飲<rt>の</rt></ruby>んでもらいます。<ruby>私<rt>わたし</rt></ruby>たちは<ruby>確認<rt>かくにん</rt></ruby>して、<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>めたか<ruby>見<rt>み</rt></ruby>ます。<br>*(Đúng. Nhưng về cơ bản để người ta tự uống. Chúng ta xác nhận và xem họ có nuốt được không.)* |
| Ngọc | まず<ruby>水<rt>みず</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んでもらいますか?<br>*(Trước tiên cho uống nước ạ?)* |
| Yamamoto | そうです。<ruby>水<rt>みず</rt></ruby>はとろみをつけてあります。「<ruby>田中<rt>たなか</rt></ruby>さん、お<ruby>水<rt>みず</rt></ruby>をどうぞ」と<ruby>声<rt>こえ</rt></ruby>をかけます。<ruby>一口<rt>ひとくち</rt></ruby>ずつです。<br>*(Đúng. Nước đã cho thêm chất làm sệt. Nói "Ông Tanaka, mời ông uống nước". Từng ngụm một.)* |
| Ngọc | (bước đến bên ông Tanaka, nhẹ giọng) <ruby>田中<rt>たなか</rt></ruby>さん、お<ruby>水<rt>みず</rt></ruby>をどうぞ。<ruby>一口<rt>ひとくち</rt></ruby>ずつ<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Ông Tanaka ơi, mời ông uống nước. Từng ngụm nhỏ thôi nhé ạ.)* |
| Ông Tanaka | ん。(uống, nuốt xong)<br>*(Ừ.)* |
| Ngọc | <ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>めましたね。<ruby>次<rt>つぎ</rt></ruby>はお<ruby>薬<rt>くすり</rt></ruby>です。(đặt thuốc lên tay ông) これを<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Nuốt rồi nhỉ. Tiếp theo là thuốc. Mời ông uống viên này.)* |
| Ông Tanaka | (uống thuốc, ngụm nước) ん、<ruby>飲<rt>の</rt></ruby>んだ。<br>*(Ừ, uống rồi.)* |
| Ngọc | (kiểm tra miệng ông) <ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてもらえますか? (nhìn, xác nhận không còn thuốc) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。ありがとうございます。<br>*(Ông có thể cho cháu nhìn trong miệng không? Ổn rồi. Cảm ơn ông ạ.)* |
| Yamamoto | (với Ngọc) <ruby>薬<rt>くすり</rt></ruby>が<ruby>口<rt>くち</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>っていないか<ruby>確認<rt>かくにん</rt></ruby>するのが<ruby>大切<rt>たいせつ</rt></ruby>です。これを「<ruby>口腔内<rt>こうくうない</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Xác nhận thuốc không còn trong miệng là quan trọng. Cái này gọi là "kiểm tra trong khoang miệng".)* |

---

## Tình huống 7 — Phòng họp nhỏ · 13:30, họp 振り返り — đây là ヒヤリハット

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>きましたか?<br>*(Em Nguyễn, em bình tĩnh lại chưa?)* |
| Ngọc | はい...すみませんでした。<ruby>私<rt>わたし</rt></ruby>のせいで...<br>*(Vâng... Em xin lỗi. Vì em mà...)* |
| Yamamoto | <ruby>自分<rt>じぶん</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めなくていいです。でも<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りをしましょう。<ruby>何<rt>なに</rt></ruby>があったか<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Không cần tự trách bản thân. Nhưng hãy cùng nhìn lại. Em kể xem chuyện gì đã xảy ra nhé.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんが「もっと」と<ruby>言<rt>い</rt></ruby>ったので...<ruby>少<rt>すこ</rt></ruby>し<ruby>早<rt>はや</rt></ruby>く<ruby>食<rt>た</rt></ruby>べさせてしまいました。<br>*(Bà Sato nói "thêm"... nên em đã đưa thức ăn hơi nhanh.)* |
| Yamamoto | そうですね。これを「ヒヤリハット」と<ruby>言<rt>い</rt></ruby>います。<ruby>事故<rt>じこ</rt></ruby>にはならなかったけれど、なりそうだった<ruby>出来事<rt>できごと</rt></ruby>です。<br>*(Đúng rồi. Cái này gọi là "ヒヤリハット" — sự cố suýt xảy ra. Chưa thành tai nạn nhưng suýt thành.)* |
| Ngọc | ヒヤリハット...はじめて<ruby>聞<rt>き</rt></ruby>きます。<br>*(ヒヤリハット... Em nghe lần đầu ạ.)* |
| Yamamoto | 「ヒヤリ」は「ひやっとした」という<ruby>意味<rt>いみ</rt></ruby>、「ハット」は「はっとした」という<ruby>意味<rt>いみ</rt></ruby>です。<ruby>危<rt>あぶ</rt></ruby>ないと<ruby>感<rt>かん</rt></ruby>じた<ruby>瞬間<rt>しゅんかん</rt></ruby>のことです。<br>*("ヒヤリ" nghĩa là "toát mồ hôi lạnh", "ハット" nghĩa là "giật mình nhận ra". Là khoảnh khắc cảm thấy nguy hiểm.)* |
| Ngọc | では<ruby>今日<rt>きょう</rt></ruby>は「ヒヤリハット」でした。<ruby>報告<rt>ほうこく</rt></ruby>しなければなりませんか?<br>*(Vậy hôm nay là "ヒヤリハット" ạ. Em phải báo cáo không?)* |
| Yamamoto | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>きます。<ruby>大切<rt>たいせつ</rt></ruby>なことです。<ruby>隠<rt>かく</rt></ruby>してはいけません。<br>*(Vâng, nhất định phải viết báo cáo. Rất quan trọng. Không được giấu.)* |
| Ngọc | なぜ<ruby>隠<rt>かく</rt></ruby>してはいけないのですか?<br>*(Tại sao không được giấu ạ?)* |
| Yamamoto | <ruby>報告<rt>ほうこく</rt></ruby>することで、<ruby>次<rt>つぎ</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げます。チーム<ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>学<rt>まな</rt></ruby>べます。これが<ruby>介護<rt>かいご</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>です。<br>*(Bằng cách báo cáo, có thể ngăn tai nạn lần sau. Cả nhóm cùng học được. Đây là văn hóa trong điều dưỡng.)* |

---

## Tình huống 8 — Bàn làm việc · 15:00, Ngọc viết ヒヤリハット報告 đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn tờ mẫu báo cáo, thở dài) む、<ruby>難<rt>むずか</rt></ruby>しい...。<ruby>漢字<rt>かんじ</rt></ruby>がいっぱい。<br>*(Khó quá... Toàn kanji.)* |
| Yamamoto | (ngồi bên cạnh) <ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。まず「<ruby>発生<rt>はっせい</rt></ruby><ruby>日時<rt>にちじ</rt></ruby>」、<ruby>今日<rt>きょう</rt></ruby>の<ruby>日付<rt>ひづけ</rt></ruby>と<ruby>時間<rt>じかん</rt></ruby>です。<br>*(Làm cùng nhau nhé. Trước tiên "thời gian xảy ra", ghi ngày và giờ hôm nay.)* |
| Ngọc | (ghi) 2026<ruby>年<rt>ねん</rt></ruby>7<ruby>月<rt>がつ</rt></ruby>...。<ruby>次<rt>つぎ</rt></ruby>は?<br>*(Năm 2026, tháng 7... Tiếp theo ạ?)* |
| Yamamoto | 「<ruby>発生<rt>はっせい</rt></ruby><ruby>場所<rt>ばしょ</rt></ruby>」、どこで<ruby>起<rt>お</rt></ruby>きましたか?<br>*("Nơi xảy ra", xảy ra ở đâu?)* |
| Ngọc | <ruby>食堂<rt>しょくどう</rt></ruby>、ですね。「<ruby>状況<rt>じょうきょう</rt></ruby>」は?<br>*(Phòng ăn ạ. Còn "tình huống" thì?)* |
| Yamamoto | <ruby>起<rt>お</rt></ruby>きたことを<ruby>客観的<rt>きゃっかんてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。「〜と<ruby>思<rt>おも</rt></ruby>った」ではなく、「〜した」という<ruby>事実<rt>じじつ</rt></ruby>だけ。<br>*(Viết những gì đã xảy ra một cách khách quan. Không phải "tôi nghĩ..." mà chỉ ghi sự thật "đã làm...".)* |
| Ngọc | (ghi chậm rãi) 「<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>食事中<rt>しょくじちゅう</rt></ruby>にむせた。<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みを<ruby>確認<rt>かくにん</rt></ruby>せずに<ruby>次<rt>つぎ</rt></ruby>の<ruby>一口<rt>ひとくち</rt></ruby>を<ruby>提供<rt>ていきょう</rt></ruby>した」...<br>*("Bà Sato bị sặc trong khi ăn. Đã đưa miếng tiếp theo mà không xác nhận nuốt xong"...)* |
| Yamamoto | いいです。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>書<rt>か</rt></ruby>けています。「<ruby>今後<rt>こんご</rt></ruby>の<ruby>対策<rt>たいさく</rt></ruby>」も<ruby>書<rt>か</rt></ruby>きましょう。<br>*(Tốt. Em viết trung thực. Viết thêm "biện pháp phòng ngừa từ nay về sau" nữa nhé.)* |
| Ngọc | 「<ruby>次<rt>つぎ</rt></ruby>は<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みを<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>一口<rt>ひとくち</rt></ruby>ずつ<ruby>提供<rt>ていきょう</rt></ruby>する」...<ruby>書<rt>か</rt></ruby>けました。<br>*("Lần sau sẽ xác nhận nuốt xong mới đưa từng miếng tiếp"... Em viết xong rồi ạ.)* |
| Yamamoto | よくできました。これが<ruby>報告書<rt>ほうこくしょ</rt></ruby>です。<ruby>難<rt>むずか</rt></ruby>しかったですか?<br>*(Làm tốt lắm. Đây là báo cáo. Có khó không?)* |
| Ngọc | はい、でも<ruby>大切<rt>たいせつ</rt></ruby>なことだと<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, nhưng em hiểu đây là việc quan trọng rồi ạ.)* |

---

## Tình huống 9 — Bàn làm việc · 15:30, ghi lượng ăn vào sổ (食事量の記録)

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>報告書<rt>ほうこくしょ</rt></ruby>のほかに、<ruby>食事量<rt>しょくじりょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>もあります。<br>*(Ngoài báo cáo ヒヤリハット, còn có ghi lượng ăn vào nữa.)* |
| Ngọc | <ruby>食事量<rt>しょくじりょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>...ですか?<br>*(Ghi lượng ăn ạ?)* |
| Yamamoto | はい。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>どのくらい<ruby>食<rt>た</rt></ruby>べましたか?<br>*(Vâng. Hôm nay bà Sato ăn được bao nhiêu?)* |
| Ngọc | えっと...<ruby>半分<rt>はんぶん</rt></ruby>くらいだと<ruby>思<rt>おも</rt></ruby>います。<ruby>途中<rt>とちゅう</rt></ruby>でむせてしまったので。<br>*(Ờm... Cháu nghĩ khoảng một nửa ạ. Vì bị sặc giữa chừng.)* |
| Yamamoto | そうですね。<ruby>記録<rt>きろく</rt></ruby>は「<ruby>主食<rt>しゅしょく</rt></ruby>5<ruby>割<rt>わり</rt></ruby>、<ruby>副食<rt>ふくしょく</rt></ruby>3<ruby>割<rt>わり</rt></ruby>」のように<ruby>書<rt>か</rt></ruby>きます。<ruby>割合<rt>わりあい</rt></ruby>で<ruby>書<rt>か</rt></ruby>くんです。<br>*(Đúng vậy. Ghi như "cơm 5 phần, thức ăn đi kèm 3 phần". Ghi theo tỉ lệ.)* |
| Ngọc | 「<ruby>割<rt>わり</rt></ruby>」...10<ruby>割<rt>わり</rt></ruby>が<ruby>全部<rt>ぜんぶ</rt></ruby>ですか?<br>*("Wari"... 10 phần là ăn hết ạ?)* |
| Yamamoto | そうです。10<ruby>割<rt>わり</rt></ruby>が<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>食<rt>た</rt></ruby>べた。5<ruby>割<rt>わり</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby>です。<ruby>食欲<rt>しょくよく</rt></ruby>がないときは<ruby>少<rt>すく</rt></ruby>なくなります。<br>*(Đúng. 10 phần là ăn hết. 5 phần là nửa. Khi không có cảm giác ngon miệng thì ít hơn.)* |
| Ngọc | なぜ<ruby>記録<rt>きろく</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>なんですか?<br>*(Tại sao việc ghi lại quan trọng ạ?)* |
| Yamamoto | <ruby>食事量<rt>しょくじりょう</rt></ruby>が<ruby>減<rt>へ</rt></ruby>ったら、<ruby>体調<rt>たいちょう</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>のサインかもしれません。<ruby>看護師<rt>かんごし</rt></ruby>さんや<ruby>医師<rt>いし</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えるために<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Nếu lượng ăn giảm, có thể là dấu hiệu thay đổi thể trạng. Ghi lại để báo cho y tá và bác sĩ.)* |
| Ngọc | なるほど。<ruby>記録<rt>きろく</rt></ruby>はチームで<ruby>共有<rt>きょうゆう</rt></ruby>するんですね。<br>*(Ra là vậy. Ghi lại để cả nhóm cùng chia sẻ thông tin nhỉ ạ.)* |

---

## Tình huống 10 — Phòng ăn · 16:00, quan sát 利用者 ăn chậm

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今度<rt>こんど</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>の<ruby>利用者<rt>りようしゃ</rt></ruby>さんを<ruby>見<rt>み</rt></ruby>てみてください。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>を<ruby>観察<rt>かんさつ</rt></ruby>します。<br>*(Em Nguyễn, lần này thử quan sát người dùng dịch vụ khác. Quan sát tình trạng ăn của ông Tanaka.)* |
| Ngọc | はい。(quan sát) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>食<rt>た</rt></ruby>べるのがゆっくりですね。<br>*(Vâng. Ông Tanaka ăn chậm nhỉ ạ.)* |
| Yamamoto | <ruby>片麻痺<rt>かたまひ</rt></ruby>があるので、<ruby>右手<rt>みぎて</rt></ruby>だけで<ruby>食<rt>た</rt></ruby>べています。<ruby>疲<rt>つか</rt></ruby>れやすいんです。<br>*(Vì bị liệt nửa người, ông ấy chỉ dùng tay phải để ăn. Dễ mệt.)* |
| Ngọc | <ruby>声<rt>こえ</rt></ruby>をかけた<ruby>方<rt>ほう</rt></ruby>がいいですか?<br>*(Có nên lên tiếng hỏi thăm không ạ?)* |
| Yamamoto | そうですね。でも<ruby>急<rt>いそ</rt></ruby>がせるような<ruby>声<rt>こえ</rt></ruby>かけはだめです。「ゆっくりでいいですよ」と<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Đúng vậy. Nhưng không được gọi theo kiểu giục. Nói "ông cứ từ từ thôi ạ".)* |
| Ngọc | (bước đến nhẹ nhàng) <ruby>田中<rt>たなか</rt></ruby>さん、ゆっくりでいいですよ。お<ruby>疲<rt>つか</rt></ruby>れじゃないですか?<br>*(Ông Tanaka ơi, ông cứ từ từ thôi ạ. Ông có mệt không ạ?)* |
| Ông Tanaka | ん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。でも、この<ruby>魚<rt>さかな</rt></ruby>は<ruby>硬<rt>かた</rt></ruby>いな。<br>*(Ừ, tao ổn. Nhưng cá này cứng nhỉ.)* |
| Ngọc | そうですか。(quay về phía Yamamoto) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんが「<ruby>魚<rt>さかな</rt></ruby>が<ruby>硬<rt>かた</rt></ruby>い」とおっしゃっています。<br>*(Vậy ạ. Chị Yamamoto, ông Tanaka nói "cá cứng quá".)* |
| Yamamoto | ありがとう。<ruby>次回<rt>じかい</rt></ruby>から<ruby>刻<rt>きざ</rt></ruby>み<ruby>食<rt>しょく</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>するか<ruby>確認<rt>かくにん</rt></ruby>します。グエンさん、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>声<rt>こえ</rt></ruby>をよく<ruby>聞<rt>き</rt></ruby>くのが<ruby>大切<rt>たいせつ</rt></ruby>ですよ。<br>*(Cảm ơn. Sẽ xác nhận xem có cần đổi sang thức ăn cắt nhỏ lần tới không. Em Nguyễn, lắng nghe kỹ tiếng nói của người được chăm sóc là quan trọng đấy.)* |

---

## Tình huống 11 — Hành lang · 17:00, Mai-san an ủi

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>でしたね。(nói bằng tiếng Nhật — nhưng giọng ấm áp)<br>*(Em Nguyễn, hôm nay vất vả nhỉ.)* |
| Ngọc | マイさん...は、はい。<ruby>怖<rt>こわ</rt></ruby>かったです。<ruby>佐藤<rt>さとう</rt></ruby>さんに<ruby>何<rt>なに</rt></ruby>かあったらと<ruby>思<rt>おも</rt></ruby>って...<br>*(Mai-san... vâng. Em hoảng lắm. Em cứ nghĩ lỡ bà Sato có chuyện gì thì...)* |
| Mai-san | でも、<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>して<ruby>助<rt>たす</rt></ruby>けを<ruby>呼<rt>よ</rt></ruby>べましたね。それはよかったです。<br>*(Nhưng em đã lớn tiếng kêu cứu được. Điều đó tốt lắm.)* |
| Ngọc | <ruby>報告書<rt>ほうこくしょ</rt></ruby>も<ruby>書<rt>か</rt></ruby>きました。<ruby>怖<rt>こわ</rt></ruby>かったけど、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きました。<br>*(Em cũng đã viết báo cáo rồi. Sợ nhưng em viết thật.)* |
| Mai-san | それが<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>日本<rt>にほん</rt></ruby>の<ruby>介護<rt>かいご</rt></ruby>では、ミスを<ruby>隠<rt>かく</rt></ruby>すのが<ruby>一番<rt>いちばん</rt></ruby><ruby>怖<rt>こわ</rt></ruby>いことです。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>することが「プロ」の<ruby>態度<rt>たいど</rt></ruby>です。<br>*(Đó là điều quan trọng. Trong điều dưỡng Nhật, che giấu lỗi mới là điều đáng sợ nhất. Báo cáo trung thực là thái độ của người chuyên nghiệp.)* |
| Ngọc | プロ、ですか。まだプロじゃないですけど...<br>*(Chuyên nghiệp ạ. Em chưa chuyên nghiệp đâu...)* |
| Mai-san | <ruby>今日<rt>きょう</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>しなりましたよ。<ruby>失敗<rt>しっぱい</rt></ruby>して、<ruby>報告<rt>ほうこく</rt></ruby>して、<ruby>学<rt>まな</rt></ruby>んで。それが<ruby>成長<rt>せいちょう</rt></ruby>です。<br>*(Từ hôm nay em đã chuyên nghiệp hơn một chút rồi. Mắc lỗi, báo cáo, học hỏi. Đó là trưởng thành.)* |
| Ngọc | ありがとうございます、マイさん。<ruby>明日<rt>あした</rt></ruby>もがんばります。<br>*(Em cảm ơn Mai-san. Ngày mai em sẽ cố gắng.)* |
| Mai-san | はい。<ruby>佐藤<rt>さとう</rt></ruby>さんも<ruby>明日<rt>あした</rt></ruby>を<ruby>待<rt>ま</rt></ruby>っていますよ。<br>*(Vâng. Bà Sato cũng đang chờ em ngày mai đó.)* |

---

## Đọng lại chương 4

Ngọc học được ba nhóm thức ăn đặc biệt (**刻み食・ミキサー食・とろみ食**) và nguyên tắc 食事介助 (tư thế, tốc độ, xác nhận nuốt). Trước bữa ăn phải chuẩn bị bàn và **声かけ** đúng cách; sau bữa hỗ trợ uống nước và **服薬介助** kèm kiểm tra **口腔内**; ghi **食事量** theo tỉ lệ 割 để báo cho đội. Bài học thật sự đến từ sự cố: bà Sato suýt bị **誤嚥** vì Ngọc đưa thức ăn nhanh hơn cho phép. Nhờ Yamamoto xử lý kịp, gọi **看護師** đúng lúc, bà Sato an toàn. Sau đó Ngọc lần đầu viết **ヒヤリハット報告書** — học văn hóa báo cáo Nhật: trung thực, không giấu, để cả đội cùng học.

> Từ vựng & mẫu câu chương này: 食事介助・誤嚥・誤嚥性肺炎・刻み食・ミキサー食・とろみ食・とろみ剤・一口ずつ・飲み込む・むせる・ヒヤリハット・振り返り・報告書・看護師・ナースコール・客観的に書く・正直に報告する・声かけ・服薬介助・口腔内確認・食事量・主食・副食・観察する', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000005, 800000027, NULL, 'markdown_book', 'T5. Vệ sinh, tắm rửa và phẩm giá (排泄・入浴介助と尊厳)', '# Sách thực tập sinh điều dưỡng · T5. Vệ sinh, tắm rửa và phẩm giá (排泄・入浴介助と尊厳)

> **Mục tiêu nhân vật:** Ngọc (tháng 9/2026, 5 tháng kinh nghiệm) học kỹ năng 排泄介助 và 入浴介助 — hai loại hỗ trợ chạm đến phẩm giá 利用者 nhiều nhất. Yamamoto giảng về 尊厳・プライバシー・羞恥心. Ngọc kiên nhẫn vượt qua rào cản tâm lý, dùng 雑談 để ông Tanaka chịu tắm, và xây dần quan hệ thực sự với ông.

---

## Bối cảnh

Tháng 9 năm 2026. Ngọc đã làm việc tại 「ひだまり苑」được 5 tháng. Cô đã quen với 移乗 và 食事介助, nhưng hôm nay Yamamoto xếp lịch hướng dẫn 排泄介助 và 入浴介助 — hai kỹ năng Ngọc vẫn né tránh vì ngại. Trình độ tiếng Nhật N4.

---

## Tình huống 1 — Phòng thay đồ · 9:00, học 排泄介助

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>排泄<rt>はいせつ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をします。<br>*(Hôm nay chúng ta luyện tập hỗ trợ vệ sinh.)* |
| Ngọc | は、はい。<ruby>排泄<rt>はいせつ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>...ですか。<br>*(Vâng... Hỗ trợ vệ sinh... ạ.)* |
| Yamamoto | <ruby>緊張<rt>きんちょう</rt></ruby>していますね。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>って、どう<ruby>感<rt>かん</rt></ruby>じますか?<br>*(Em đang căng thẳng nhỉ. Nói thật đi, em cảm thấy thế nào?)* |
| Ngọc | ...すみません。<ruby>少<rt>すこ</rt></ruby>し、<ruby>怖<rt>こわ</rt></ruby>いというか、<ruby>恥<rt>は</rt></ruby>ずかしいというか...<br>*(Xin lỗi. Em hơi... sợ, hay là ngại...)* |
| Yamamoto | そう<ruby>感<rt>かん</rt></ruby>じるのは<ruby>普通<rt>ふつう</rt></ruby>ですよ。<ruby>新人<rt>しんじん</rt></ruby>はみんなそうです。<br>*(Cảm thấy thế là bình thường. Người mới ai cũng vậy.)* |
| Ngọc | でも、<ruby>利用者<rt>りようしゃ</rt></ruby>さんは、もっと<ruby>恥<rt>は</rt></ruby>ずかしいですよね?<br>*(Nhưng người được chăm sóc còn ngại hơn nhiều nhỉ ạ?)* |
| Yamamoto | そうです。それに<ruby>気<rt>き</rt></ruby>づいた、グエンさんはすごいですよ。そこが<ruby>一番大切<rt>いちばんたいせつ</rt></ruby>です。<br>*(Đúng vậy. Em đã nhận ra điều đó, giỏi lắm. Đó chính là điều quan trọng nhất.)* |

---

## Tình huống 2 — Phòng họp nhỏ · 9:30, Yamamoto giảng về 尊厳・羞恥心

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>介護<rt>かいご</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>で<ruby>一番難<rt>いちばんむずか</rt></ruby>しいのは、<ruby>技術<rt>ぎじゅつ</rt></ruby>より<ruby>心<rt>こころ</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>です。<br>*(Điều khó nhất trong công việc điều dưỡng không phải kỹ thuật, mà là thái độ trong tâm.)* |
| Ngọc | <ruby>心<rt>こころ</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>...ですか?<br>*(Thái độ trong tâm ạ?)* |
| Yamamoto | <ruby>羞恥心<rt>しゅうちしん</rt></ruby>という<ruby>言葉<rt>ことば</rt></ruby>、<ruby>知<rt>し</rt></ruby>っていますか?<br>*(Em có biết từ "羞恥心" không?)* |
| Ngọc | えっと...「<ruby>恥<rt>は</rt></ruby>ずかしい」という<ruby>気持<rt>きも</rt></ruby>ち、でしょうか?<br>*(Ờm... Là cảm giác "xấu hổ" phải không ạ?)* |
| Yamamoto | そうです。<ruby>排泄<rt>はいせつ</rt></ruby>は<ruby>人間<rt>にんげん</rt></ruby>がもっとも<ruby>プライベート<rt>ぷらいべーと</rt></ruby>なことです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんは、それを<ruby>他人<rt>たにん</rt></ruby>に<ruby>助<rt>たす</rt></ruby>けてもらわなければなりません。<br>*(Đúng vậy. Vệ sinh là chuyện riêng tư nhất của con người. Vậy mà người sử dụng dịch vụ phải nhờ người ngoài giúp.)* |
| Ngọc | だから、すごく<ruby>辛<rt>つら</rt></ruby>いんですね...<br>*(Nên rất khổ tâm nhỉ ạ...)* |
| Yamamoto | そうです。だから<ruby>私<rt>わたし</rt></ruby>たちは<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。「<ruby>尊厳<rt>そんげん</rt></ruby>」は<ruby>英語<rt>えいご</rt></ruby>で「dignity」です。<br>*(Đúng. Vì vậy chúng ta bảo vệ "phẩm giá". "尊厳" trong tiếng Anh là "dignity".)* |
| Ngọc | <ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためには、どうすればいいですか?<br>*(Để bảo vệ phẩm giá, cần làm thế nào ạ?)* |
| Yamamoto | まず、ドアを<ruby>閉<rt>し</rt></ruby>める。カーテンをする。<ruby>声<rt>こえ</rt></ruby>は<ruby>小<rt>ちい</rt></ruby>さく。そして、<ruby>急<rt>いそ</rt></ruby>がない。<br>*(Đầu tiên, đóng cửa lại. Kéo rèm. Nói nhỏ giọng. Và không vội.)* |
| Ngọc | <ruby>急<rt>いそ</rt></ruby>がない、大事ですね。<br>*(Không vội, quan trọng thật nhỉ.)* |
| Yamamoto | それから、「<ruby>終<rt>お</rt></ruby>わりましたよ」「<ruby>気持<rt>きも</rt></ruby>ちよくなりましたね」と<ruby>声<rt>こえ</rt></ruby>をかける。<ruby>安心感<rt>あんしんかん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ることが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Sau đó nói "xong rồi nhé", "dễ chịu hơn rồi nhỉ". Tạo cảm giác an tâm là quan trọng.)* |
| Ngọc | はい、<ruby>言葉<rt>ことば</rt></ruby>も<ruby>介護<rt>かいご</rt></ruby>なんですね。<br>*(Vâng, lời nói cũng là điều dưỡng nhỉ.)* |
| Yamamoto | いいことを<ruby>言<rt>い</rt></ruby>いますね。そうですよ。<br>*(Em nói hay đấy. Đúng vậy.)* |

---

## Tình huống 3 — Hành lang trước phòng vệ sinh · 9:50, 声かけ giữ プライバシー khi 排泄介助

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>実際<rt>じっさい</rt></ruby>に<ruby>排泄誘導<rt>はいせつゆうどう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしましょう。<ruby>声<rt>こえ</rt></ruby>かけのやり<ruby>方<rt>かた</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Em Nguyễn, hãy thực hành dẫn đi vệ sinh thực tế. Bắt đầu từ cách lên tiếng gọi.)* |
| Ngọc | はい。どんな<ruby>声<rt>こえ</rt></ruby>かけがいいですか?<br>*(Vâng. Nên gọi như thế nào ạ?)* |
| Yamamoto | まず<ruby>時間<rt>じかん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めます。<ruby>食後<rt>しょくご</rt></ruby>や<ruby>起床後<rt>きしょうご</rt></ruby>など、<ruby>決<rt>き</rt></ruby>まった<ruby>時間<rt>じかん</rt></ruby>にトイレに<ruby>誘導<rt>ゆうどう</rt></ruby>します。これを「<ruby>排泄誘導<rt>はいせつゆうどう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Trước tiên định giờ cố định. Sau bữa ăn hay sau khi thức dậy, dẫn đi vệ sinh đúng giờ. Điều này gọi là "hướng dẫn đi vệ sinh định giờ".)* |
| Ngọc | <ruby>決<rt>き</rt></ruby>まった<ruby>時間<rt>じかん</rt></ruby>に<ruby>行<rt>い</rt></ruby>くんですね。<ruby>声<rt>こえ</rt></ruby>かけは?<br>*(Đi theo giờ cố định nhỉ. Còn cách lên tiếng gọi?)* |
| Yamamoto | 「<ruby>田中<rt>たなか</rt></ruby>さん、お<ruby>手洗<rt>てあら</rt></ruby>いに<ruby>行<rt>い</rt></ruby>きませんか?」と<ruby>誘<rt>さそ</rt></ruby>います。「トイレ」より「お<ruby>手洗<rt>てあら</rt></ruby>い」の<ruby>方<rt>ほう</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>です。<br>*("Ông Tanaka ơi, mình đi vệ sinh nhé?" — mời vậy. "お手洗い" lịch sự hơn "トイレ".)* |
| Ngọc | なるほど。そして<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ったら?<br>*(Ra là vậy. Vào trong rồi thì sao ạ?)* |
| Yamamoto | ドアを<ruby>閉<rt>し</rt></ruby>めて、<ruby>外<rt>そと</rt></ruby>で<ruby>待<rt>ま</rt></ruby>ちます。「<ruby>終<rt>お</rt></ruby>わったら<ruby>呼<rt>よ</rt></ruby>んでください」と<ruby>伝<rt>つた</rt></ruby>えます。<ruby>中<rt>なか</rt></ruby>を<ruby>見<rt>み</rt></ruby>ない、<ruby>覗<rt>のぞ</rt></ruby>かない。<br>*(Đóng cửa lại, đứng chờ bên ngoài. Nói "xong rồi thì gọi cháu nhé". Không nhìn vào, không nhòm vào.)* |
| Ngọc | <ruby>プライバシー<rt>ぷらいばしー</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためですね。<br>*(Để giữ sự riêng tư nhỉ ạ.)* |
| Yamamoto | そうです。でも<ruby>長<rt>なが</rt></ruby>くかかるときは「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?」と<ruby>声<rt>こえ</rt></ruby>をかけます。<ruby>転倒<rt>てんとう</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>があるので。<br>*(Đúng. Nhưng nếu lâu thì hỏi "ông ổn chứ ạ?". Vì có nguy cơ ngã.)* |
| Ngọc | <ruby>安全<rt>あんぜん</rt></ruby>と<ruby>プライバシー<rt>ぷらいばしー</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>ですね。<br>*(Vừa an toàn vừa giữ riêng tư nhỉ ạ.)* |

---

## Tình huống 4 — Trước phòng tắm · 10:30, ông Tanaka từ chối tắm

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>風呂<rt>ふろ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>ですよ。<br>*(Ông Tanaka, chào buổi sáng. Hôm nay là ngày tắm đấy ạ.)* |
| Ông Tanaka | <ruby>嫌<rt>いや</rt></ruby>だ。<ruby>入<rt>はい</rt></ruby>らん。<br>*(Không. Tao không tắm.)* |
| Ngọc | でも、<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>三日<rt>みっか</rt></ruby>ぶりですよ。<br>*(Nhưng ông ơi, đã ba ngày rồi đấy.)* |
| Ông Tanaka | それは<ruby>知<rt>し</rt></ruby>ってる。<ruby>入<rt>はい</rt></ruby>りたくないんだ。<ruby>寒<rt>さむ</rt></ruby>いし、<ruby>疲<rt>つか</rt></ruby>れる。<br>*(Tao biết. Tao không muốn tắm. Lạnh, mệt.)* |
| Ngọc | そうですか...<ruby>少<rt>すこ</rt></ruby>し、<ruby>待<rt>ま</rt></ruby>ってもいいですか?<br>*(Vậy ạ... Cháu chờ một chút được không ạ?)* |
| Ông Tanaka | (không trả lời, nhìn ra cửa sổ)<br>*(quay mặt đi)* |

---

## Tình huống 5 — Bên giường ông Tanaka · 10:45, Ngọc kiên nhẫn dùng 雑談

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>天気<rt>てんき</rt></ruby>がいいですね。<ruby>空<rt>そら</rt></ruby>が<ruby>青<rt>あお</rt></ruby>いです。<br>*(Ông ơi, hôm nay thời tiết đẹp nhỉ. Trời xanh lắm.)* |
| Ông Tanaka | ふん。<br>*(Hừ.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんは、お<ruby>若<rt>わか</rt></ruby>い<ruby>頃<rt>ころ</rt></ruby>、どんなお<ruby>仕事<rt>しごと</rt></ruby>をされていましたか?<br>*(Ông hồi trẻ làm nghề gì vậy ạ?)* |
| Ông Tanaka | ...<ruby>大工<rt>だいく</rt></ruby>だ。<ruby>家<rt>いえ</rt></ruby>を<ruby>建<rt>た</rt></ruby>てた。<br>*(Thợ mộc. Tao xây nhà.)* |
| Ngọc | すごい!<ruby>家<rt>いえ</rt></ruby>を<ruby>建<rt>た</rt></ruby>てるんですか。どんな<ruby>家<rt>いえ</rt></ruby>を?<br>*(Tuyệt! Xây nhà à. Xây loại nhà như thế nào ạ?)* |
| Ông Tanaka | いろいろだ。<ruby>木<rt>き</rt></ruby>の<ruby>家<rt>いえ</rt></ruby>が<ruby>好<rt>す</rt></ruby>きだった。<ruby>匂<rt>にお</rt></ruby>いがいい。<br>*(Đủ loại. Tao thích nhà gỗ. Mùi thơm lắm.)* |
| Ngọc | <ruby>木<rt>き</rt></ruby>の<ruby>匂<rt>にお</rt></ruby>い、いいですよね。ベトナムにも<ruby>木<rt>き</rt></ruby>の<ruby>家<rt>いえ</rt></ruby>がありますよ。<br>*(Mùi gỗ tuyệt thật nhỉ. Việt Nam cũng có nhà gỗ đấy ạ.)* |
| Ông Tanaka | そうか。ベトナムの<ruby>木<rt>き</rt></ruby>も<ruby>良<rt>よ</rt></ruby>いのか?<br>*(Vậy à. Gỗ Việt Nam cũng tốt hả?)* |
| Ngọc | はい、チークという<ruby>木<rt>き</rt></ruby>は<ruby>有名<rt>ゆうめい</rt></ruby>です。とても<ruby>固<rt>かた</rt></ruby>いです。<br>*(Vâng, gỗ teak rất nổi tiếng ạ. Rất cứng.)* |
| Ông Tanaka | ほう。チークか。<ruby>知<rt>し</rt></ruby>らなかった。<br>*(Ồ. Gỗ teak à. Tao chưa biết.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>大工<rt>だいく</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>、<ruby>詳<rt>くわ</rt></ruby>しく<ruby>聞<rt>き</rt></ruby>きたいです。お<ruby>風呂<rt>ふろ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りながら、<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてもらえませんか?<br>*(Ông ơi, cháu muốn nghe thêm về nghề mộc. Ông vừa tắm vừa kể cho cháu nghe được không ạ?)* |
| Ông Tanaka | (ngập ngừng) ...そうだな。まあ、しょうがない。<br>*(Ừ thì... thôi được, chịu vậy.)* |
| Ngọc | ありがとうございます、<ruby>田中<rt>たなか</rt></ruby>さん。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cháu cảm ơn ông ạ. Cháu vui lắm.)* |

---

## Tình huống 6 — Phòng thay đồ · 10:55, hỗ trợ thay quần áo (更衣介助)

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>入浴<rt>にゅうよく</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>更衣介助<rt>こうい かいじょ</rt></ruby>があります。<ruby>着替<rt>きが</rt></ruby>えを<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Trước khi tắm có hỗ trợ thay đồ. Giúp người ta thay quần áo.)* |
| Ngọc | <ruby>更衣介助<rt>こういかいじょ</rt></ruby>...どんな<ruby>順番<rt>じゅんばん</rt></ruby>ですか?<br>*(Hỗ trợ thay đồ... theo thứ tự nào ạ?)* |
| Yamamoto | <ruby>脱<rt>ぬ</rt></ruby>ぐときは<ruby>健側<rt>けんそく</rt></ruby>から、<ruby>着<rt>き</rt></ruby>るときは<ruby>患側<rt>かんそく</rt></ruby>から。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>場合<rt>ばあい</rt></ruby>、<ruby>麻痺<rt>まひ</rt></ruby>は<ruby>左側<rt>ひだりがわ</rt></ruby>ですね。<br>*(Cởi thì bắt đầu từ bên lành, mặc thì bắt đầu từ bên liệt. Với ông Tanaka, bên liệt là bên trái nhỉ.)* |
| Ngọc | 「<ruby>健側<rt>けんそく</rt></ruby>から<ruby>脱<rt>ぬ</rt></ruby>ぐ」「<ruby>患側<rt>かんそく</rt></ruby>から<ruby>着<rt>き</rt></ruby>る」...むずかしいですが<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*("Cởi bắt đầu từ bên lành", "mặc bắt đầu từ bên liệt"... khó nhưng em sẽ nhớ ạ.)* |
| Yamamoto | そうです。「<ruby>脱健着患<rt>だっけんちゃくかん</rt></ruby>」と<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>早<rt>はや</rt></ruby>いです。<br>*(Đúng. Nhớ theo cụm "脱健着患" thì nhanh hơn.)* |
| Ngọc | <ruby>脱健着患<rt>だっけんちゃくかん</rt></ruby>...わかりました。それから<ruby>プライバシー<rt>ぷらいばしー</rt></ruby>は?<br>*(脱健着患... Em hiểu rồi. Còn về sự riêng tư ạ?)* |
| Yamamoto | カーテンを<ruby>閉<rt>し</rt></ruby>めて、<ruby>他<rt>ほか</rt></ruby>の<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>見<rt>み</rt></ruby>えないようにします。そして「〜を<ruby>脱<rt>ぬ</rt></ruby>ぎますね」と<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>をかけてから<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Kéo rèm lại, không để người được chăm sóc khác nhìn thấy. Và nhất định gọi "cháu tháo... nhé" trước rồi mới giúp.)* |
| Ngọc | (nhẹ giọng với ông Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>上<rt>うわ</rt></ruby>の<ruby>服<rt>ふく</rt></ruby>を<ruby>脱<rt>ぬ</rt></ruby>ぎますね。<ruby>右腕<rt>みぎうで</rt></ruby>から<ruby>脱<rt>ぬ</rt></ruby>ぎます。<br>*(Ông Tanaka ơi, cháu tháo áo trên nhé. Tháo từ tay phải trước ạ.)* |
| Ông Tanaka | ん。<br>*(Ừ.)* |
| Yamamoto | (nhỏ giọng với Ngọc) よかったです。ゆっくり、<ruby>痛<rt>いた</rt></ruby>くないか<ruby>確認<rt>かくにん</rt></ruby>しながら<ruby>手伝<rt>てつだ</rt></ruby>ってください。<br>*(Tốt lắm. Từ từ, vừa giúp vừa hỏi xem có đau không nhé.)* |

---

## Tình huống 7 — Phòng tắm · 11:00, ông Tanaka tắm và kể chuyện thời trẻ

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>温度<rt>おんど</rt></ruby>はいかがですか?<ruby>熱<rt>あつ</rt></ruby>すぎませんか?<br>*(Ông ơi, nhiệt độ thế nào ạ? Có nóng quá không?)* |
| Ông Tanaka | ちょうどいい。<ruby>気持<rt>きも</rt></ruby>ちいいな。<br>*(Vừa đủ. Dễ chịu thật.)* |
| Ngọc | よかったです。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>大工<rt>だいく</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めたのはいつですか?<br>*(Tốt quá. Ông bắt đầu làm thợ mộc từ khi nào ạ?)* |
| Ông Tanaka | <ruby>十八<rt>じゅうはち</rt></ruby>の<ruby>時<rt>とき</rt></ruby>だ。<ruby>父親<rt>ちちおや</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わった。<br>*(Năm mười tám tuổi. Bố tao dạy.)* |
| Ngọc | お<ruby>父<rt>とう</rt></ruby>さんも<ruby>大工<rt>だいく</rt></ruby>さんでしたか?<br>*(Bố ông cũng là thợ mộc ạ?)* |
| Ông Tanaka | ああ。<ruby>父<rt>ちち</rt></ruby>は<ruby>腕<rt>うで</rt></ruby>が<ruby>良<rt>よ</rt></ruby>かった。<ruby>私<rt>わたし</rt></ruby>はなかなか<ruby>追<rt>お</rt></ruby>いつけなかった。<br>*(Ừ. Bố tao tay nghề giỏi lắm. Tao mãi mà không đuổi kịp.)* |
| Ngọc | でも、<ruby>田中<rt>たなか</rt></ruby>さんも<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>大工<rt>だいく</rt></ruby>さんですよね。<ruby>家<rt>いえ</rt></ruby>を<ruby>何軒<rt>なんけん</rt></ruby>も<ruby>建<rt>た</rt></ruby>てたんですから。<br>*(Nhưng ông cũng là thợ mộc tuyệt vời mà. Ông xây bao nhiêu ngôi nhà rồi cơ mà.)* |
| Ông Tanaka | ...<ruby>数<rt>かず</rt></ruby>えたことがなかったな。<ruby>百軒<rt>ひゃっけん</rt></ruby>くらいかもしれん。<br>*(Tao chưa đếm. Có khi cũng trăm cái.)* |
| Ngọc | ひゃっけん!すごいですね。その<ruby>家<rt>いえ</rt></ruby>に<ruby>今<rt>いま</rt></ruby>も<ruby>人<rt>ひと</rt></ruby>が<ruby>住<rt>す</rt></ruby>んでいますね。<br>*(Trăm cái! Tuyệt vời quá. Những ngôi nhà đó bây giờ vẫn có người sống trong đó nhỉ.)* |
| Ông Tanaka | そうだな...(しばらく黙る)...そう<ruby>考<rt>かんが</rt></ruby>えると、<ruby>悪<rt>わる</rt></ruby>くない<ruby>仕事<rt>しごと</rt></ruby>だったな。<br>*(Ừ nhỉ...(im lặng một lúc)...Nghĩ vậy thì cũng là nghề không tệ nhỉ.)* |
| Ngọc | ぜんぜん<ruby>悪<rt>わる</rt></ruby>くないですよ。とても<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>です。(やさしく背中を流しながら) <ruby>背中<rt>せなか</rt></ruby>、<ruby>流<rt>なが</rt></ruby>しますね。<br>*(Không tệ chút nào. Là nghề rất ý nghĩa. (nhẹ nhàng kỳ lưng) Cháu kỳ lưng cho ông nhé.)* |
| Ông Tanaka | (lặng yên, thở dài nhẹ) ありがとうな。<ruby>久<rt>ひさ</rt></ruby>しぶりに<ruby>気持<rt>きも</rt></ruby>ちよく<ruby>入<rt>はい</rt></ruby>れた。<br>*(Cảm ơn nhé. Lâu lắm rồi tao mới tắm thấy dễ chịu.)* |

---

## Tình huống 8 — Phòng thay đồ · 11:20, kiểm tra da khi tắm (清拭・皮膚観察)

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>入浴後<rt>にゅうよくご</rt></ruby>に<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>があります。<ruby>皮膚<rt>ひふ</rt></ruby>の<ruby>観察<rt>かんさつ</rt></ruby>です。<br>*(Sau khi tắm có việc quan trọng. Quan sát da.)* |
| Ngọc | <ruby>皮膚<rt>ひふ</rt></ruby>の<ruby>観察<rt>かんさつ</rt></ruby>...<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>ればいいですか?<br>*(Quan sát da... Cần nhìn gì ạ?)* |
| Yamamoto | まず<ruby>赤<rt>あか</rt></ruby>くなっているところがないか。それから<ruby>傷<rt>きず</rt></ruby>や<ruby>腫<rt>は</rt></ruby>れ。<ruby>特<rt>とく</rt></ruby>に<ruby>骨<rt>ほね</rt></ruby>が<ruby>出<rt>で</rt></ruby>ているところは<ruby>注意<rt>ちゅうい</rt></ruby>します。<br>*(Đầu tiên xem có chỗ nào đỏ không. Rồi vết thương hay sưng. Đặc biệt chú ý những chỗ xương nhô ra.)* |
| Ngọc | <ruby>骨<rt>ほね</rt></ruby>が<ruby>出<rt>で</rt></ruby>ているところ?たとえば?<br>*(Chỗ xương nhô ra ạ? Ví dụ như đâu ạ?)* |
| Yamamoto | かかと、<ruby>腰<rt>こし</rt></ruby>、<ruby>肩<rt>かた</rt></ruby>のあたりです。ずっと<ruby>同<rt>おな</rt></ruby>じ<ruby>姿勢<rt>しせい</rt></ruby>でいると「<ruby>褥瘡<rt>じょくそう</rt></ruby>」になることがあります。<br>*(Gót chân, hông, vai. Nếu giữ cùng tư thế lâu có thể bị "loét tì đè".)* |
| Ngọc | <ruby>褥瘡<rt>じょくそう</rt></ruby>...それは<ruby>怖<rt>こわ</rt></ruby>いですね。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>背中<rt>せなか</rt></ruby>を<ruby>見<rt>み</rt></ruby>てもいいですか?<br>*(Loét tì đè... Nguy hiểm nhỉ. Cháu có thể nhìn lưng ông Tanaka không ạ?)* |
| Yamamoto | もちろん。「<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>背中<rt>せなか</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>きますね」と<ruby>声<rt>こえ</rt></ruby>をかけてから<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Tất nhiên. Nói "Ông Tanaka ơi, cháu lau lưng nhé" trước rồi kiểm tra.)* |
| Ngọc | (nhẹ giọng) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>背中<rt>せなか</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>きますね。(lau lưng, quan sát) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>腰<rt>こし</rt></ruby>のあたりが<ruby>少<rt>すこ</rt></ruby>し<ruby>赤<rt>あか</rt></ruby>いです。<br>*(Ông Tanaka ơi, cháu lau lưng nhé. Yamamoto-san, vùng hông hơi đỏ một chút.)* |
| Yamamoto | よく<ruby>気<rt>き</rt></ruby>づきました。<ruby>記録<rt>きろく</rt></ruby>して、<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>しましょう。<ruby>早<rt>はや</rt></ruby>めに<ruby>対応<rt>たいおう</rt></ruby>することが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Em chú ý tốt lắm. Ghi lại rồi báo y tá nhé. Xử lý sớm là quan trọng.)* |

---

## Tình huống 9 — Hành lang · 16:00, Đức cãi nhau với nhân viên Nhật

> Scene tiếng Việt — mặt tối: xung đột văn hóa nơi làm việc.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, thấy Đức đứng ngoài hành lang mặt đỏ) Anh Đức, sao vậy? |
| Đức | (tiếng Việt, giọng bực bội) Tao bị senpai Nakamura mắng vì không báo cáo đúng cái gì đó. Tao đâu hiểu rõ mấy từ ổng nói đâu, rồi ổng nói tao không nghe lời. Tức thiệt. |
| Ngọc | (tiếng Việt) Ổng nói chuyện gì vậy? |
| Đức | (tiếng Việt) Cái gì đó về 申し送り hôm qua. Tao viết nhưng viết thiếu. Tao không biết là phải viết đủ đến mức đó. Không ai nói tao rõ. |
| Ngọc | (tiếng Việt) Anh có thể hỏi lại Yamamoto-san xem viết đúng cách chưa không? |
| Đức | (tiếng Việt, thở dài) Tao biết. Nhưng mệt quá, em ơi. Mỗi ngày cứ sợ mình làm sai. Tiền nợ còn đó, mà cứ bị mắng hoài. |
| Ngọc | (tiếng Việt, nhẹ nhàng) Em hiểu anh. Nhưng mình phải hỏi, không hiểu mà im thì họ không biết để giúp. Để em hỏi Yamamoto-san về 申し送り rồi nói lại cho anh nhé. |
| Đức | (tiếng Việt) Ừ. Cảm ơn em. |

---

## Tình huống 10 — Phòng thay đồ cuối ca · 17:30, Ngọc suy nghĩ về ý nghĩa nghề

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さん、よかったですよ。どうやって<ruby>説得<rt>せっとく</rt></ruby>しましたか?<br>*(Em Nguyễn, hôm nay ông Tanaka vào rất tốt. Em thuyết phục bằng cách nào vậy?)* |
| Ngọc | えっと、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いたら、<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>話<rt>はな</rt></ruby>してくれて...<br>*(Em hỏi chuyện nghề của ông, rồi ông kể...)* |
| Yamamoto | それが<ruby>雑談<rt>ざつだん</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>好<rt>す</rt></ruby>きなことを<ruby>話題<rt>わだい</rt></ruby>にして、<ruby>心<rt>こころ</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いてもらう。<br>*(Đó gọi là 雑談 — trò chuyện phiếm. Chọn chủ đề người được chăm sóc thích, để họ mở lòng.)* |
| Ngọc | <ruby>雑談<rt>ざつだん</rt></ruby>が<ruby>介護<rt>かいご</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>なんですね。<br>*(Trò chuyện phiếm cũng là kỹ thuật điều dưỡng nhỉ.)* |
| Yamamoto | そうです。<ruby>信頼<rt>しんらい</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>がないと、<ruby>介護<rt>かいご</rt></ruby>はできません。<br>*(Đúng vậy. Không có quan hệ tin tưởng thì không thể làm điều dưỡng.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんがお<ruby>風呂<rt>ふろ</rt></ruby>で「<ruby>気持<rt>きも</rt></ruby>ちよかった」と<ruby>言<rt>い</rt></ruby>ってくださいました。それが<ruby>嬉<rt>うれ</rt></ruby>しかったです。<br>*(Hôm nay ông Tanaka nói "dễ chịu" khi tắm. Cháu vui lắm ạ.)* |
| Yamamoto | それが<ruby>介護<rt>かいご</rt></ruby>の<ruby>やりがい<rt>やりがい</rt></ruby>ですよ。<ruby>小<rt>ちい</rt></ruby>さいことだけど、<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đó chính là niềm vui của nghề điều dưỡng. Nhỏ thôi nhưng quý giá lắm.)* |
| Ngọc | はい。<ruby>今日<rt>きょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>介護<rt>かいご</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かった<ruby>気<rt>き</rt></ruby>がします。<br>*(Vâng. Hôm nay cháu cảm thấy hiểu được một chút ý nghĩa của điều dưỡng rồi ạ.)* |

---

## Tình huống 11 — Hành lang cuối ca · 17:50, tổng kết kỹ năng ngày hôm nay

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>多<rt>おお</rt></ruby>くのことを<ruby>学<rt>まな</rt></ruby>びましたね。<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りをしましょう。<br>*(Em Nguyễn, hôm nay học được nhiều thứ nhỉ. Cùng nhìn lại nhé.)* |
| Ngọc | はい。<ruby>排泄誘導<rt>はいせつゆうどう</rt></ruby>、<ruby>更衣介助<rt>こういかいじょ</rt></ruby>、<ruby>入浴介助<rt>にゅうよくかいじょ</rt></ruby>、<ruby>皮膚観察<rt>ひふかんさつ</rt></ruby>...たくさんありました。<br>*(Vâng. Hướng dẫn đi vệ sinh đúng giờ, hỗ trợ thay đồ, hỗ trợ tắm, quan sát da... nhiều lắm ạ.)* |
| Yamamoto | どれも「<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る」という<ruby>共通<rt>きょうつう</rt></ruby>のテーマがありますね。<br>*(Tất cả đều có chủ đề chung là "bảo vệ phẩm giá" nhỉ.)* |
| Ngọc | そうですね。<ruby>声<rt>こえ</rt></ruby>かけ、カーテン、<ruby>急<rt>いそ</rt></ruby>がない...ぜんぶ<ruby>尊厳<rt>そんげん</rt></ruby>のためですね。<br>*(Đúng nhỉ. Lên tiếng gọi, kéo rèm, không vội... tất cả đều vì phẩm giá.)* |
| Yamamoto | そうです。それと、<ruby>今日<rt>きょう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>腰<rt>こし</rt></ruby>の<ruby>赤<rt>あか</rt></ruby>み、よく<ruby>気<rt>き</rt></ruby>づきましたよ。<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>して、<ruby>ポジショニング<rt>ぽじしょにんぐ</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>すことになりました。<br>*(Đúng. Và hôm nay em chú ý được vết đỏ ở hông ông Tanaka tốt lắm. Báo y tá rồi sẽ xem lại tư thế nằm cho ông.)* |
| Ngọc | よかったです。<ruby>小<rt>ちい</rt></ruby>さい<ruby>発見<rt>はっけん</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>なんですね。<br>*(May quá. Phát hiện nhỏ cũng quan trọng nhỉ ạ.)* |
| Yamamoto | そうです。グエンさんは<ruby>観察力<rt>かんさつりょく</rt></ruby>がいいです。その<ruby>力<rt>ちから</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしてください。<br>*(Đúng. Em Nguyễn có khả năng quan sát tốt. Hãy giữ gìn khả năng đó nhé.)* |

---

## Đọng lại chương 4

Ngọc vượt qua rào cản tâm lý với 排泄介助 và 入浴介助 nhờ hiểu được nguyên tắc **尊厳・羞恥心・プライバシー** — giữ phẩm giá người được chăm là trên hết. Học thêm 3 kỹ năng nghiệp vụ quan trọng: **排泄誘導** (dẫn đi vệ sinh đúng giờ với 声かけ lịch sự), **更衣介助** theo nguyên tắc **脱健着患**, và **皮膚観察** sau tắm để phát hiện sớm **褥瘡**. Với ông Tanaka, không phải quy trình hay mệnh lệnh mà là **雑談** — lắng nghe câu chuyện người thợ mộc 82 tuổi — mới là chìa khóa mở lòng. Bài học: quan hệ tin tưởng (信頼関係) là nền tảng của mọi kỹ thuật.

> Từ vựng & mẫu câu chương này: 排泄介助・入浴介助・羞恥心・尊厳・プライバシー・雑談・信頼関係・入浴拒否・声かけ・安心感・ちょうどいい・やりがい・排泄誘導・更衣介助・脱健着患・健側・患側・清拭・皮膚観察・褥瘡・口腔内確認・ポジショニング・観察力', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000006, 800000027, NULL, 'markdown_book', 'T6. Hoạt động giải trí (レクリエーション)', '# Sách thực tập sinh điều dưỡng · T6. Hoạt động giải trí (レクリエーション)

> **Mục tiêu nhân vật:** Ngọc (24 tuổi, TTS năm 1 tại Hidamari-en) lần đầu phụ dẫn hoạt động giải trí (レクリエーション) cho nhóm 利用者: thể dục buổi sáng, hát bài cũ, gấp giấy, trò chơi trí nhớ, trò chuyện về chuyện xưa. Học cách lôi cuốn 利用者 ít nói và xử lý người không muốn tham gia. Tháng 10 năm 2026 — tháng thứ sáu đi làm.

---

## Bối cảnh

Tháng 10 năm 2026. Ngọc đã quen với chuỗi chăm sóc cơ bản. Yamamoto bắt đầu để Ngọc phụ dẫn giờ レクリエーション — hoạt động giải trí tập thể mỗi buổi sáng tại phòng sinh hoạt chung. Hôm nay có: ラジオ体操 (thể dục theo đài), hát bài cũ, 折り紙 (gấp giấy), trò chơi trí nhớ. Ngọc lo lắng vì chưa bao giờ đứng trước đám đông bằng tiếng Nhật.

---

## Tình huống 1 — Phòng họp nhân viên · 9:00, chuẩn bị trước giờ レク

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>のレクリエーションを<ruby>手伝<rt>てつだ</rt></ruby>ってもらいます。<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Em Nguyễn, hôm nay em phụ dẫn hoạt động giải trí nhé. Chuẩn bị được chưa?)* |
| Ngọc | ...すみません、<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。レクリエーションというのは、どんなことをするんですか?<br>*(...Xin lỗi, em hơi hồi hộp ạ. Hoạt động giải trí là làm gì ạ?)* |
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>はラジオ<ruby>体操<rt>たいそう</rt></ruby>、<ruby>歌<rt>うた</rt></ruby>、<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>かみ</rt></ruby>、<ruby>記憶<rt>きおく</rt></ruby>ゲームです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>楽<rt>たの</rt></ruby>しんでもらうのが<ruby>目的<rt>もくてき</rt></ruby>です。<br>*(Hôm nay là thể dục theo đài, hát, gấp giấy, trò chơi trí nhớ. Mục đích là để các cụ vui.)* |
| Ngọc | <ruby>体<rt>からだ</rt></ruby>と<ruby>頭<rt>あたま</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですね。<br>*(Vừa dùng cơ thể vừa dùng đầu óc nhỉ ạ.)* |
| Yamamoto | そうです。レクリエーションは<ruby>楽<rt>たの</rt></ruby>しむだけでなく、<ruby>認知症<rt>にんちしょう</rt></ruby><ruby>予防<rt>よぼう</rt></ruby>や<ruby>体<rt>からだ</rt></ruby>の<ruby>機能<rt>きのう</rt></ruby>を<ruby>保<rt>たも</rt></ruby>つためにも<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng. Hoạt động giải trí không chỉ để vui, còn quan trọng để phòng ngừa sa sút trí tuệ và duy trì chức năng cơ thể.)* |
| Ngọc | なるほど、<ruby>医療的<rt>いりょうてき</rt></ruby>な<ruby>意味<rt>いみ</rt></ruby>もあるんですね。<br>*(À ra vậy, còn có ý nghĩa y tế nữa nhỉ.)* |
| Yamamoto | そうですよ。では、<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>かみ</rt></ruby>と<ruby>CD<rt>シーディー</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>してください。<br>*(Đúng vậy. Vậy em chuẩn bị giấy gấp và đĩa CD nhé.)* |

---

## Tình huống 2 — Phòng sinh hoạt · 9:30, ラジオ体操 — thể dục buổi sáng

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>もラジオ<ruby>体操<rt>たいそう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょう。グエンさん、<ruby>前<rt>まえ</rt></ruby>に<ruby>立<rt>た</rt></ruby>って。<br>*(Mọi người, chào buổi sáng. Hôm nay cũng bắt đầu bằng thể dục theo đài nhé. Em Nguyễn, đứng lên trước.)* |
| Ngọc | (đứng trước mọi người) みなさん、おはようございます。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>体操<rt>たいそう</rt></ruby>しましょう。<br>*(Mọi người, chào buổi sáng ạ. Cùng nhau tập thể dục nhé.)* |
| Ông Kimura | (vui vẻ) グエンちゃん、<ruby>上手<rt>じょうず</rt></ruby>にできるかな?<br>*(Em Nguyên, làm được không đấy nhỉ?)* |
| Ngọc | (cười) <ruby>頑張<rt>がんば</rt></ruby>ります。みなさんで<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。(nhạc bắt đầu) では、<ruby>手<rt>て</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>に<ruby>伸<rt>の</rt></ruby>ばしてください。<br>*(Em cố gắng ạ. Mọi người cùng làm nhé. Vậy, giơ tay lên cao nhé.)* |
| Ông Tanaka | (ngồi xe lăn, chỉ vẫy tay nhẹ) ...<ruby>腕<rt>うで</rt></ruby>しか<ruby>動<rt>うご</rt></ruby>かせんな。<br>*(...Chỉ động được tay thôi.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>腕<rt>うで</rt></ruby>だけでも<ruby>十分<rt>じゅうぶん</rt></ruby>ですよ。よく<ruby>動<rt>うご</rt></ruby>いてますよ。<br>*(Ông Tanaka, chỉ tay thôi cũng đủ rồi ạ. Ông vẫy tốt lắm đấy.)* |
| Ông Tanaka | (hơi mềm lòng) ...そうかな。<br>*(...Thật không nhỉ.)* |

---

## Tình huống 3 — Phòng sinh hoạt · 9:45, hát bài cũ — bà Sato ít tham gia

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>次<rt>つぎ</rt></ruby>は<ruby>歌<rt>うた</rt></ruby>です。<ruby>今日<rt>きょう</rt></ruby>は「<ruby>故郷<rt>ふるさと</rt></ruby>」を<ruby>歌<rt>うた</rt></ruby>いましょう。グエンさん、<ruby>歌詞<rt>かし</rt></ruby>を<ruby>黒板<rt>こくばん</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてください。<br>*(Tiếp theo là hát. Hôm nay hát "Furusato" nhé. Em Nguyễn, viết lời lên bảng nhé.)* |
| Ngọc | (viết xong) みなさん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>いましょう。「ふるさと」です。<ruby>始<rt>はじ</rt></ruby>めます。うさぎ<ruby>追<rt>お</rt></ruby>いし、かの<ruby>山<rt>やま</rt></ruby>...♪<br>*(Mọi người cùng hát nhé. Bài "Furusato". Bắt đầu nào. Usagi oishi kano yama...♪)* |
| Ông Kimura | (hát to, vui vẻ) こぶな<ruby>釣<rt>つ</rt></ruby>りし、かの<ruby>川<rt>かわ</rt></ruby>...♪<br>*(Kobuna tsurishi kano kawa...♪)* |
| Ngọc | (liếc nhìn thấy bà Sato ngồi im) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>いませんか?<br>*(Bà Sato, bà không hát cùng ạ?)* |
| Bà Sato | (lắc đầu nhẹ) ...わたしは<ruby>歌<rt>うた</rt></ruby>えない。<br>*(...Tôi không hát được đâu.)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>歌詞<rt>かし</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながらでいいです。<ruby>口<rt>くち</rt></ruby>だけ<ruby>動<rt>うご</rt></ruby>かすだけでも。<br>*(Không sao ạ. Nhìn lời mà hát cũng được. Chỉ mấp máy miệng thôi cũng được.)* |
| Bà Sato | (sau một lúc, bắt đầu mấp máy theo) ...♪<br>*(...♪)* |
| Yamamoto | (nói nhỏ với Ngọc) よかった。<ruby>無理<rt>むり</rt></ruby>に<ruby>誘<rt>さそ</rt></ruby>わなかったのがよかったです。<br>*(Tốt lắm. Em không ép mà vẫn lôi cuốn được, tốt đấy.)* |

---

## Tình huống 4 — Phòng sinh hoạt · 10:00, 折り紙 — gấp giấy, người không muốn tham gia

| Vai | Lời thoại |
|---|---|
| Ngọc | みなさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>かみ</rt></ruby>をしましょう。<ruby>好<rt>す</rt></ruby>きな<ruby>色<rt>いろ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでください。<br>*(Mọi người, hôm nay mình gấp giấy nhé. Mọi người chọn màu yêu thích đi.)* |
| Ông Kimura | (chọn màu đỏ) <ruby>私<rt>わたし</rt></ruby>はこれ!<ruby>鶴<rt>つる</rt></ruby>を<ruby>折<rt>お</rt></ruby>ったことあるよ。<br>*(Tôi chọn cái này! Tôi từng gấp hạc giấy đấy.)* |
| Ông Tanaka | (khoanh tay) ...<ruby>手<rt>て</rt></ruby>が<ruby>利<rt>き</rt></ruby>かんから、こういうのは<ruby>苦手<rt>にがて</rt></ruby>だ。<br>*(...Tay không làm được, mấy cái này tao kém lắm.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>右手<rt>みぎて</rt></ruby>でできることだけでいいですよ。<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>かみ</rt></ruby>を<ruby>押<rt>お</rt></ruby>さえるだけでも<ruby>助<rt>たす</rt></ruby>かります。<br>*(Ông Tanaka, chỉ làm được bằng tay phải thôi cũng được ạ. Chỉ cần giữ tờ giấy thôi là cháu nhờ rồi.)* |
| Ông Tanaka | (nhìn xuống tay, do dự) ...<ruby>押<rt>お</rt></ruby>さえるだけか。<br>*(...Chỉ giữ thôi à.)* |
| Ngọc | はい。(đặt tờ giấy trước mặt ông) ここを<ruby>押<rt>お</rt></ruby>さえてください。<br>*(Vâng. Ông giữ chỗ này nhé.)* |
| Ông Tanaka | (tự nhiên giữ tờ giấy bằng tay phải) ああ、こうか。<br>*(À, thế này à.)* |
| Ngọc | ありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんがいてくれると<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn ông ạ. Có ông giúp cháu đỡ nhiều lắm.)* |
| Ông Tanaka | (khẽ cười) ...まあ、これぐらいはできる。<br>*(...Thôi, nhiêu này tao làm được.)* |

---

## Tình huống 5 — Phòng sinh hoạt · 10:15, hướng dẫn gấp từng bước

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>チューリップ<rt>チューリップ</rt></ruby>を<ruby>折<rt>お</rt></ruby>りましょう。まず<ruby>四角<rt>しかく</rt></ruby>に<ruby>折<rt>お</rt></ruby>ります。<br>*(Vậy mình gấp hoa tulip nhé. Trước hết gấp thành hình vuông.)* |
| Ông Kimura | <ruby>四角<rt>しかく</rt></ruby>ね。(gấp nhanh) こうかな?<br>*(Hình vuông nhỉ. Thế này à?)* |
| Ngọc | そうです、<ruby>上手<rt>じょうず</rt></ruby>です!<ruby>次<rt>つぎ</rt></ruby>に<ruby>角<rt>かど</rt></ruby>を<ruby>中<rt>なか</rt></ruby>に<ruby>折<rt>お</rt></ruby>ります。<ruby>ゆっくり<rt>ゆっくり</rt></ruby>でいいですよ。<br>*(Đúng rồi, giỏi quá! Tiếp theo gấp các góc vào trong. Từ từ thôi nhé.)* |
| Bà Sato | (nhìn tờ giấy, vẻ bối rối) ...どうやるの?<br>*(...Làm thế nào vậy?)* |
| Ngọc | (ngồi xuống bên cạnh bà Sato) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。(cầm tay bà hướng dẫn từng bước) まずここを<ruby>持<rt>も</rt></ruby>って...こっちに<ruby>折<rt>お</rt></ruby>ります。<br>*(Bà Sato, mình cùng làm nhé. Trước hết cầm chỗ này... gấp sang bên này.)* |
| Bà Sato | (gấp được) ...あ、<ruby>折<rt>お</rt></ruby>れた。<br>*(...À, gấp được rồi.)* |
| Ngọc | すごいです!<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>上手<rt>じょうず</rt></ruby>です。<br>*(Tuyệt vời ạ! Bà Sato giỏi lắm đấy.)* |
| Bà Sato | (vẻ vui) ...そう?<ruby>下手<rt>へた</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>ってた。<br>*(...Vậy à? Tôi cứ nghĩ mình vụng tay.)* |

---

## Tình huống 6 — Phòng sinh hoạt · 10:30, ông Kimura kể chuyện xưa — 雑談

| Vai | Lời thoại |
|---|---|
| Ông Kimura | グエンちゃん、<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>かみ</rt></ruby>は<ruby>子<rt>こ</rt></ruby>どもの<ruby>頃<rt>ころ</rt></ruby>によくやったなあ。<ruby>鶴<rt>つる</rt></ruby>を<ruby>千羽<rt>せんば</rt></ruby>も<ruby>折<rt>お</rt></ruby>ったよ。<br>*(Em Nguyên, hồi nhỏ tôi hay gấp giấy lắm. Gấp tới cả nghìn con hạc đó.)* |
| Ngọc | <ruby>千羽<rt>せんば</rt></ruby>!すごいですね。どうして<ruby>千羽<rt>せんば</rt></ruby>も?<br>*(Nghìn con! Tuyệt vậy ạ. Sao lại gấp nhiều vậy ạ?)* |
| Ông Kimura | <ruby>病気<rt>びょうき</rt></ruby>の<ruby>友達<rt>ともだち</rt></ruby>のために<ruby>折<rt>お</rt></ruby>ったんだ。<ruby>千羽鶴<rt>せんばづる</rt></ruby>を<ruby>送<rt>おく</rt></ruby>ると、<ruby>病気<rt>びょうき</rt></ruby>がよくなるといわれてるからね。<br>*(Gấp cho người bạn bị bệnh. Người ta nói gửi nghìn hạc giấy thì bạn sẽ khỏi bệnh.)* |
| Ngọc | きれいな<ruby>話<rt>はなし</rt></ruby>ですね。<ruby>友達<rt>ともだち</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>になりましたか?<br>*(Chuyện đẹp quá ạ. Người bạn đó có khỏi không ạ?)* |
| Ông Kimura | (nhìn xa xăm) ...ああ、<ruby>元気<rt>げんき</rt></ruby>になったよ。<ruby>今<rt>いま</rt></ruby>は<ruby>南<rt>みなみ</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>に<ruby>住<rt>す</rt></ruby>んでる。<ruby>年賀状<rt>ねんがじょう</rt></ruby>はまだ<ruby>来<rt>く</rt></ruby>るよ。<br>*(...Ừ, khỏi rồi. Bây giờ sống ở miền nam. Vẫn còn gửi thiệp năm mới đấy.)* |
| Ngọc | よかったですね。<ruby>木村<rt>きむら</rt></ruby>さん、<ruby>優<rt>やさ</rt></ruby>しいですね。<br>*(Mừng quá ạ. Ông Kimura tốt bụng quá nhỉ.)* |
| Ông Kimura | (cười to) そんなことないよ。でも、<ruby>話<rt>はなし</rt></ruby>してよかった。<ruby>久<rt>ひさ</rt></ruby>しぶりに<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>したよ。<br>*(Không có đâu. Nhưng kể ra thì vui. Lâu lắm mới nhớ lại chuyện đó.)* |

---

## Tình huống 7 — Phòng sinh hoạt · 10:45, trò chơi trí nhớ — ông Tanaka từ chối

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>次<rt>つぎ</rt></ruby>は<ruby>記憶<rt>きおく</rt></ruby>ゲームです。グエンさん、<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Tiếp theo là trò chơi trí nhớ. Em Nguyễn, em dẫn nhé.)* |
| Ngọc | みなさん、<ruby>絵<rt>え</rt></ruby>カードを<ruby>見<rt>み</rt></ruby>て、<ruby>名前<rt>なまえ</rt></ruby>を<ruby>言<rt>い</rt></ruby>うゲームです。<ruby>簡単<rt>かんたん</rt></ruby>ですよ。<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Mọi người, đây là trò chơi nhìn thẻ hình rồi nói tên. Đơn giản thôi ạ. Sẵn sàng chưa?)* |
| Ông Tanaka | (xua tay) ...<ruby>私<rt>わたし</rt></ruby>はいい。こういうゲームは<ruby>好<rt>す</rt></ruby>きじゃない。<br>*(...Tôi thôi. Tôi không thích trò chơi kiểu này.)* |
| Ngọc | そうですか。(không ép) では、<ruby>木村<rt>きむら</rt></ruby>さんから。(lật thẻ) これは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Vậy à. Vậy từ ông Kimura nhé. Cái này là gì ạ?)* |
| Ông Kimura | <ruby>桜<rt>さくら</rt></ruby>だ!すぐわかったよ。<br>*(Hoa anh đào! Tôi nhận ra ngay.)* |
| Ngọc | (sau 2-3 thẻ, quay nhìn ông Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、これは<ruby>何<rt>なん</rt></ruby>でしょう?(lật thẻ con tàu)<br>*(Ông Tanaka, cái này là gì nhỉ?)* |
| Ông Tanaka | (nhìn thấy ảnh con tàu, mặt thay đổi) ...それは<ruby>船<rt>ふね</rt></ruby>じゃないか。<ruby>木村<rt>きむら</rt></ruby>さんも<ruby>昔<rt>むかし</rt></ruby><ruby>船<rt>ふね</rt></ruby>に<ruby>乗<rt>の</rt></ruby>ったんだろう。<br>*(...Cái đó là tàu chứ. Ông Kimura hồi xưa cũng đi tàu nhỉ.)* |
| Ông Kimura | (vui ra mặt) そうそう!<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>覚<rt>おぼ</rt></ruby>えてたか。<br>*(Đúng đúng! Ông Tanaka còn nhớ đấy nhỉ.)* |
| Ngọc | (nói nhỏ với Yamamoto) <ruby>無理<rt>むり</rt></ruby>に<ruby>誘<rt>さそ</rt></ruby>わなくてよかったですね。<br>*(Không ép mà vẫn tham gia được nhỉ chị ạ.)* |
| Yamamoto | (gật đầu) そうですね。グエンさん、<ruby>上手<rt>じょうず</rt></ruby>でしたよ。<br>*(Đúng vậy. Em xử lý tốt đấy.)* |

---

## Tình huống 8 — Phòng sinh hoạt · 11:00, bà Sato nhớ bài hát cũ

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>好<rt>す</rt></ruby>きな<ruby>歌<rt>うた</rt></ruby>がありますか?<br>*(Bà Sato, bà có bài hát yêu thích không ạ?)* |
| Bà Sato | (nghĩ một lúc) ...「<ruby>赤<rt>あか</rt></ruby>とんぼ」が<ruby>好<rt>す</rt></ruby>き。<ruby>小<rt>しょう</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>のとき<ruby>歌<rt>うた</rt></ruby>ったよ。<br>*(...Tôi thích "Chuồn chuồn đỏ". Hồi tiểu học hay hát bài đó.)* |
| Ngọc | 「<ruby>赤<rt>あか</rt></ruby>とんぼ」、ですね。(quay sang Yamamoto) あの...「<ruby>赤<rt>あか</rt></ruby>とんぼ」はできますか?<br>*("Chuồn chuồn đỏ" nhỉ ạ. À... bài "Chuồn chuồn đỏ" được không ạ?)* |
| Yamamoto | もちろん。みなさん、「<ruby>赤<rt>あか</rt></ruby>とんぼ」を<ruby>知<rt>し</rt></ruby>っていますか?<br>*(Dĩ nhiên. Mọi người có biết bài "Chuồn chuồn đỏ" không?)* |
| Ông Kimura | <ruby>知<rt>し</rt></ruby>ってる<ruby>知<rt>し</rt></ruby>ってる!<br>*(Biết biết!)* |
| Ngọc | では<ruby>一緒<rt>いっしょ</rt></ruby>に。(bắt đầu hát nhẹ nhàng) ゆうやけ、こやけの、あかとんぼ...♪<br>*(Vậy cùng hát nhé. Yuyake koyake no akatonbo...♪)* |
| Bà Sato | (hát theo, giọng rõ hơn so với lúc đầu) おわれて<ruby>見<rt>み</rt></ruby>たのは、いつの<ruby>日<rt>ひ</rt></ruby>か...♪<br>*(Owarete mitano wa itsu no hi ka...♪)* |
| Ngọc | (sau khi hát xong, mỉm cười) <ruby>佐藤<rt>さとう</rt></ruby>さん、きれいな<ruby>声<rt>こえ</rt></ruby>ですね。<br>*(Bà Sato, giọng bà đẹp quá ạ.)* |
| Bà Sato | (mỉm cười) ...<ruby>久<rt>ひさ</rt></ruby>しぶりに<ruby>歌<rt>うた</rt></ruby>ったね。<br>*(...Lâu lắm mới hát lại nhỉ.)* |

---

## Tình huống 9 — Phòng sinh hoạt · 11:15, hỏi Yamamoto về 利用者 ít nói

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんのように「<ruby>参加<rt>さんか</rt></ruby>したくない」という<ruby>利用者<rt>りようしゃ</rt></ruby>さんには、どうすればいいですか?<br>*(Chị Yamamoto, với những người như ông Tanaka nói "không muốn tham gia" thì phải làm thế nào ạ?)* |
| Yamamoto | <ruby>無理<rt>むり</rt></ruby>に<ruby>誘<rt>さそ</rt></ruby>わないことです。<ruby>参加<rt>さんか</rt></ruby>しなくてもいい、<ruby>見<rt>み</rt></ruby>ているだけでもいい、と<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Không ép. Nói rằng không tham gia cũng được, chỉ nhìn thôi cũng được.)* |
| Ngọc | でも、<ruby>参加<rt>さんか</rt></ruby>してもらった<ruby>方<rt>ほう</rt></ruby>が<ruby>体<rt>からだ</rt></ruby>にいいですよね?<br>*(Nhưng tham gia thì tốt hơn cho cơ thể đúng không ạ?)* |
| Yamamoto | そうです。でも、<ruby>強制<rt>きょうせい</rt></ruby>は<ruby>逆効果<rt>ぎゃっこうか</rt></ruby>です。<ruby>自分<rt>じぶん</rt></ruby>から「やってみよう」と<ruby>思<rt>おも</rt></ruby>ってもらうのが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng. Nhưng ép ngược lại phản tác dụng. Quan trọng là để họ tự nghĩ "thử xem nào".)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんのように、<ruby>自然<rt>しぜん</rt></ruby>に<ruby>参加<rt>さんか</rt></ruby>してもらえましたね。<br>*(Như ông Tanaka hôm nay, tự nhiên tham gia được rồi nhỉ ạ.)* |
| Yamamoto | そうですよ。グエンさんが<ruby>上手<rt>じょうず</rt></ruby>にきっかけを<ruby>作<rt>つく</rt></ruby>りましたね。あの<ruby>船<rt>ふね</rt></ruby>のカード、<ruby>偶然<rt>ぐうぜん</rt></ruby>でしたか?<br>*(Đúng vậy. Em đã tạo ra cơ hội khéo léo đấy. Cái thẻ con tàu đó, tình cờ à?)* |
| Ngọc | (cười) ....<ruby>半分<rt>はんぶん</rt></ruby><ruby>偶然<rt>ぐうぜん</rt></ruby>です。<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>昔<rt>むかし</rt></ruby><ruby>船<rt>ふね</rt></ruby>に<ruby>乗<rt>の</rt></ruby>ったと<ruby>話<rt>はなし</rt></ruby>したことを<ruby>覚<rt>おぼ</rt></ruby>えていたので。<br>*(Nửa tình cờ ạ. Vì em nhớ ông Kimura từng kể đi tàu.)* |
| Yamamoto | それは<ruby>偶然<rt>ぐうぜん</rt></ruby>じゃないです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんのことをよく<ruby>覚<rt>おぼ</rt></ruby>えていた、ということですよ。<br>*(Cái đó không phải tình cờ. Là em nhớ kỹ thông tin về người sử dụng dịch vụ đấy.)* |

---

## Tình huống 10 — Phòng sinh hoạt · 11:30, kết thúc レク và ông Tanaka cảm ơn

| Vai | Lời thoại |
|---|---|
| Ngọc | みなさん、<ruby>今日<rt>きょう</rt></ruby>のレクリエーションはここまでです。ありがとうございました。<ruby>楽<rt>たの</rt></ruby>しかったですか?<br>*(Mọi người, hoạt động giải trí hôm nay đến đây thôi ạ. Cảm ơn mọi người. Có vui không ạ?)* |
| Ông Kimura | <ruby>楽<rt>たの</rt></ruby>しかったよ!グエンちゃん、また<ruby>来週<rt>らいしゅう</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Vui lắm! Em Nguyên, tuần sau lại phụ nhé.)* |
| Bà Sato | (gật đầu nhẹ) ...<ruby>楽<rt>たの</rt></ruby>しかった。<br>*(...Vui đấy.)* |
| Ông Tanaka | (lặng yên, rồi khẽ nói) ...グエン、<ruby>船<rt>ふね</rt></ruby>のカード、<ruby>面白<rt>おもしろ</rt></ruby>かったな。<br>*(...Nguyên, cái thẻ con tàu hay đấy nhỉ.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、ありがとうございます。<ruby>来週<rt>らいしゅう</rt></ruby>もまた<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<br>*(Ông Tanaka, cảm ơn ông ạ. Tuần sau mình lại cùng nhau nhé.)* |
| Ông Tanaka | (gật đầu, không nói thêm, nhưng rõ ràng không phản đối) ...<br>*(...)* |
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>はよくできました。<ruby>参加<rt>さんか</rt></ruby>したくない<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>対応<rt>たいおう</rt></ruby>も<ruby>上手<rt>じょうず</rt></ruby>でした。<br>*(Em Nguyễn, hôm nay em làm tốt lắm. Cả cách xử lý với người không muốn tham gia cũng tốt.)* |
| Ngọc | ありがとうございます。でも、まだ<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Cảm ơn chị. Nhưng em vẫn hồi hộp ạ.)* |

---

## Tình huống 11 — Phòng y tá · 14:00, ghi 記録 sau レク

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、レクリエーションの<ruby>記録<rt>きろく</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<ruby>参加<rt>さんか</rt></ruby>した<ruby>利用者<rt>りようしゃ</rt></ruby>さん、<ruby>様子<rt>ようす</rt></ruby>、<ruby>反応<rt>はんのう</rt></ruby>を<ruby>書<rt>か</rt></ruby>きます。<br>*(Em Nguyễn, viết nhật ký hoạt động giải trí nhé. Ghi người tham gia, tình trạng, phản ứng.)* |
| Ngọc | (viết) 「ラジオ<ruby>体操<rt>たいそう</rt></ruby>：<ruby>全員<rt>ぜんいん</rt></ruby><ruby>参加<rt>さんか</rt></ruby>。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>腕<rt>うで</rt></ruby>のみ。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>最初<rt>さいしょ</rt></ruby><ruby>消極的<rt>しょうきょくてき</rt></ruby>だが<ruby>途中<rt>とちゅう</rt></ruby>から<ruby>参加<rt>さんか</rt></ruby>。」これでいいですか?<br>*(Viết: "Thể dục: toàn bộ tham gia. Ông Tanaka chỉ tay. Bà Sato ban đầu thụ động nhưng sau đó tham gia." Vậy được chưa ạ?)* |
| Yamamoto | いいですね。「<ruby>消極的<rt>しょうきょくてき</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>もよかったです。<ruby>専門的<rt>せんもんてき</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>えるようになりましたね。<br>*(Tốt nhỉ. Từ "thụ động" cũng hay đấy. Em đã dùng được từ chuyên môn rồi đấy.)* |
| Ngọc | (vui) ありがとうございます。<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>かみ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>はどう<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Cảm ơn chị. Còn nhật ký gấp giấy thì viết thế nào ạ?)* |
| Yamamoto | 「<ruby>作品<rt>さくひん</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>させた」や「<ruby>補助<rt>ほじょ</rt></ruby>のもとで<ruby>参加<rt>さんか</rt></ruby>した」などです。<ruby>田中<rt>たなか</rt></ruby>さんは?<br>*(Dùng "hoàn thành tác phẩm" hay "tham gia với hỗ trợ" chẳng hạn. Ông Tanaka thì sao?)* |
| Ngọc | 「<ruby>右手<rt>みぎて</rt></ruby>で<ruby>紙<rt>かみ</rt></ruby>を<ruby>押<rt>お</rt></ruby>さえる<ruby>形<rt>かたち</rt></ruby>で<ruby>参加<rt>さんか</rt></ruby>。<ruby>笑顔<rt>えがお</rt></ruby>あり。」でいいですか?<br>*("Tham gia bằng cách giữ giấy bằng tay phải. Có biểu cảm vui." Được không ạ?)* |
| Yamamoto | よかったです。「<ruby>笑顔<rt>えがお</rt></ruby>あり」は<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>ですよ。<ruby>心<rt>こころ</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>がわかりますから。<br>*(Tốt lắm. "Có biểu cảm vui" là thông tin quan trọng đấy. Vì hiểu được trạng thái tinh thần.)* |

---

## Tình huống 12 — Ký túc · 21:30, đồng hương (mạch truyện)

> Scene tiếng Việt — giữ mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Sao, hôm nay có gì không? Trông mày vui hơn thường. |
| Ngọc | (tiếng Việt) Hôm nay em dẫn レク lần đầu. Hồi hộp lắm nhưng ổn anh. Ông Tanaka ban đầu không muốn tham gia, nhưng cuối cùng tự nói chuyện về con tàu. |
| Đức | (tiếng Việt) Ông già khó tính đó à? Cơ sở anh cũng có mấy ông vậy. Không ép được, phải tìm điểm bấm. |
| Ngọc | (tiếng Việt) Chị Yamamoto bảo "đừng ép, để tự họ muốn". Nghe thì dễ mà làm khó anh ơi. |
| Đức | (tiếng Việt) Ừ, nghề này nó vậy. Không phải kỹ thuật là khó, cái khó là đọc được người. Mày mà làm được vậy thì được rồi. Mà đừng quá vui — nhớ tháng này còn tiền về nhà. |
| Ngọc | (tiếng Việt) Em biết. Nhưng ít nhất hôm nay em thấy mình làm được cái gì đó thật sự có ích, không chỉ là đẩy xe lăn hay lau người. |

---

## Đọng lại chương 6

Ngọc lần đầu phụ dẫn レクリエーション và học ba bài học quan trọng: (1) **không ép** — để 利用者 tự chủ (田中さんが自然に参加); (2) **tìm điểm kết nối** — dùng ký ức cá nhân của 利用者 (thẻ con tàu, bài "Chuồn chuồn đỏ") để mở cửa giao tiếp; (3) **ghi nhật ký レク chuẩn** — ghi rõ 参加状況・反応・笑顔あり. Hoạt động gồm: ラジオ体操, 歌 (故郷・赤とんぼ), 折り紙 (チューリップ), 記憶ゲーム. Hiểu レク không chỉ là vui — còn phòng 認知症 và duy trì 機能.

> Từ vựng & mẫu câu chương này: レクリエーション・ラジオ体操・折り紙・記憶ゲーム・認知症予防・機能を保つ・参加・消極的・強制・逆効果・きっかけを作る・自然に参加・補助のもとで・笑顔あり・千羽鶴・雑談・記録・反応', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000007, 800000027, NULL, 'markdown_book', 'T7. Lễ hội theo mùa (季節の行事)', '# Sách thực tập sinh điều dưỡng · T7. Lễ hội theo mùa (季節の行事)

> **Mục tiêu nhân vật:** Ngọc (TTS năm 1, tháng 11/2026) tham gia tổ chức sự kiện mùa thu tại Hidamari-en: 紅葉狩り ngoài vườn, 文化祭 trong viện, hát dân ca, làm đồ thủ công. Học giao tiếp đời thường với 利用者 và gia đình, đồng thời nắm vững an toàn khi đưa 利用者 ra ngoài trời — xe lăn, phòng ngã, mặc ấm.

---

## Bối cảnh

Tháng 11 năm 2026. Hidamari-en tổ chức tuần lễ thu「秋のふれあい週間」: buổi sáng đưa 利用者 ra vườn ngắm lá đỏ (紅葉狩り), buổi chiều trình diễn văn hoá nhỏ (文化祭) — hát, làm đồ thủ công origami, kakejiku mùa thu. Gia đình 利用者 được mời vào tham dự. Đây là dịp Ngọc lần đầu dẫn 車椅子 ra ngoài trời và tiếp xúc trực tiếp với người nhà 利用者.

---

## Tình huống 1 — Phòng họp nhân viên · 8:20, họp chuẩn bị sự kiện

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>今日<rt>きょう</rt></ruby>から「<ruby>秋<rt>あき</rt></ruby>のふれあい<ruby>週間<rt>しゅうかん</rt></ruby>」です。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>紅葉狩<rt>もみじが</rt></ruby>り、<ruby>午後<rt>ごご</rt></ruby>は<ruby>文化祭<rt>ぶんかさい</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。<br>*(Mọi người, từ hôm nay là "Tuần lễ giao lưu mùa thu". Buổi sáng là ngắm lá đỏ, buổi chiều là hội văn hoá.)* |
| Nhân viên A | <ruby>グエン<rt>グエン</rt></ruby>さんは<ruby>車椅子<rt>くるまいす</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>田中<rt>たなか</rt></ruby>さんと<ruby>木村<rt>きむら</rt></ruby>さんをお<ruby>連<rt>つ</rt></ruby>れします。<br>*(Em Nguyễn phụ trách xe lăn nhé. Đưa ông Tanaka và ông Kimura ra vườn.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>注意<rt>ちゅうい</rt></ruby>することはありますか?<br>*(Vâng, em rõ rồi. Có điều gì cần chú ý không ạ?)* |
| Yamamoto | <ruby>外<rt>そと</rt></ruby>は<ruby>寒<rt>さむ</rt></ruby>いので、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>上着<rt>うわぎ</rt></ruby>を<ruby>着<rt>き</rt></ruby>せてください。<ruby>段差<rt>だんさ</rt></ruby>と<ruby>転倒<rt>てんとう</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>してください。<br>*(Ngoài trời lạnh, hãy mặc áo khoác cho các cụ. Chú ý bậc thềm và ngã nhé.)* |
| Ngọc | <ruby>段差<rt>だんさ</rt></ruby>というのは...?<br>*(Bậc thềm là...?)* |
| Yamamoto | <ruby>地面<rt>じめん</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さが<ruby>変<rt>か</rt></ruby>わるところです。<ruby>車椅子<rt>くるまいす</rt></ruby>がひっかかりやすいので、<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Chỗ mặt đất thay đổi độ cao. Xe lăn dễ bị vấp, hãy cẩn thận nhé.)* |
| Ngọc | はい、わかりました。しっかり<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em hiểu. Em sẽ kiểm tra kỹ ạ.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 9:00, chuẩn bị mặc ấm trước khi ra ngoài

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>庭<rt>にわ</rt></ruby>に<ruby>紅葉<rt>もみじ</rt></ruby>を<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Ông Tanaka, chào buổi sáng. Hôm nay mình ra vườn ngắm lá đỏ nhé ạ.)* |
| Ông Tanaka | ほう、<ruby>紅葉<rt>もみじ</rt></ruby>か。<ruby>久<rt>ひさ</rt></ruby>しぶりだな。<br>*(Ồ, lá đỏ à. Lâu rồi không thấy nhỉ.)* |
| Ngọc | <ruby>外<rt>そと</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>寒<rt>さむ</rt></ruby>いです。<ruby>上着<rt>うわぎ</rt></ruby>を<ruby>着<rt>き</rt></ruby>ましょうか?<br>*(Ngoài trời hơi lạnh ạ. Mình mặc áo khoác nhé ạ?)* |
| Ông Tanaka | そうだな、<ruby>頼<rt>たの</rt></ruby>む。<br>*(Ừ, nhờ cháu nhé.)* |
| Ngọc | (cầm áo) <ruby>袖<rt>そで</rt></ruby>を<ruby>通<rt>とお</rt></ruby>しますね。ゆっくりどうぞ。<br>*(Cháu luồn tay vào tay áo nhé. Ông từ từ thôi ạ.)* |
| Ông Tanaka | <ruby>左手<rt>ひだりて</rt></ruby>が<ruby>動<rt>うご</rt></ruby>きにくいから、そっちから<ruby>先<rt>さき</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>む。<br>*(Tay trái tôi khó cử động, mặc bên đó trước nhé.)* |
| Ngọc | はい、<ruby>左<rt>ひだり</rt></ruby>から<ruby>先<rt>さき</rt></ruby>ですね。<ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Vâng, bên trái trước ạ. Có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Không sao.)* |

---

## Tình huống 3 — Hành lang → vườn · 9:15, đẩy xe lăn ra ngoài trời

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>出発<rt>しゅっぱつ</rt></ruby>しますね。ゆっくり<ruby>行<rt>い</rt></ruby>きます。<br>*(Ông Tanaka, mình xuất phát nhé. Đi từ từ thôi ạ.)* |
| Ông Tanaka | ああ。<br>*(Ừ.)* |
| Ngọc | (tới bậc thềm, dừng lại) <ruby>段差<rt>だんさ</rt></ruby>がありますが、<ruby>少<rt>すこ</rt></ruby>し<ruby>揺<rt>ゆ</rt></ruby>れるかもしれません。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Có bậc thềm ạ, có thể hơi rung một chút. Ông có ổn không ạ?)* |
| Ông Tanaka | かまわん、<ruby>行<rt>い</rt></ruby>ってくれ。<br>*(Không sao, đi đi cháu.)* |
| Ngọc | (đẩy cẩn thận qua bậc) はい。では<ruby>後<rt>うし</rt></ruby>ろ<ruby>向<rt>む</rt></ruby>きで<ruby>進<rt>すす</rt></ruby>みますね。<br>*(Vâng. Mình đi lùi qua bậc nhé ạ.)* |
| Nhân viên A | (đi bên cạnh) グエンさん、<ruby>段差<rt>だんさ</rt></ruby>は<ruby>後<rt>うし</rt></ruby>ろ<ruby>向<rt>む</rt></ruby>きで<ruby>下<rt>お</rt></ruby>りるのが<ruby>正<rt>ただ</rt></ruby>しいですよ。<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Em Nguyễn, xuống bậc thì đi lùi là đúng đấy. Em làm tốt lắm.)* |
| Ngọc | ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(Cảm ơn anh. Em được chị Yamamoto dạy ạ.)* |

---

## Tình huống 4 — Vườn Hidamari-en · 9:30, ngắm lá đỏ cùng ông Kimura

| Vai | Lời thoại |
|---|---|
| Ông Kimura | おお、きれいだな! <ruby>赤<rt>あか</rt></ruby>いもみじ、<ruby>久<rt>ひさ</rt></ruby>しぶりに<ruby>見<rt>み</rt></ruby>た。<br>*(Ồ, đẹp quá! Lá đỏ, lâu rồi không thấy nhỉ.)* |
| Ngọc | ほんとうにきれいですね。<ruby>日本<rt>にほん</rt></ruby>の<ruby>秋<rt>あき</rt></ruby>はすばらしいですね。<br>*(Thật sự đẹp quá ạ. Mùa thu Nhật Bản tuyệt vời nhỉ ạ.)* |
| Ông Kimura | ベトナムには<ruby>紅葉<rt>こうよう</rt></ruby>はないのかい?<br>*(Ở Việt Nam không có lá đổi màu à?)* |
| Ngọc | あまりないです。<ruby>南<rt>みなみ</rt></ruby>は<ruby>一年中<rt>いちねんじゅう</rt></ruby><ruby>緑<rt>みどり</rt></ruby>のままです。だから、このもみじがとても<ruby>新鮮<rt>しんせん</rt></ruby>です。<br>*(Hầu như không có ạ. Miền nam quanh năm xanh. Nên những chiếc lá này rất mới lạ với cháu.)* |
| Ông Kimura | そうか。じゃあ、<ruby>写真<rt>しゃしん</rt></ruby>に<ruby>撮<rt>と</rt></ruby>っておきなよ。<ruby>いい<rt>いい</rt></ruby><ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>で</rt></ruby>になるよ。<br>*(Vậy à. Thì chụp ảnh đi. Sẽ là kỷ niệm đẹp đấy.)* |
| Ngọc | ありがとうございます。<ruby>木村<rt>きむら</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>撮<rt>と</rt></ruby>ってもいいですか?<br>*(Cảm ơn ông. Cháu chụp ảnh cùng ông được không ạ?)* |
| Ông Kimura | もちろん! どんどん<ruby>撮<rt>と</rt></ruby>っていいよ。<br>*(Tất nhiên! Cứ chụp thoải mái.)* |

---

## Tình huống 5 — Vườn · 9:50, ông Tanaka lạnh — xử lý tình huống

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>お体<rt>おからだ</rt></ruby>の<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか?<br>*(Ông Tanaka, ông có cảm thấy ổn không ạ?)* |
| Ông Tanaka | ちょっと<ruby>寒<rt>さむ</rt></ruby>くなってきたな。<ruby>手<rt>て</rt></ruby>が<ruby>冷<rt>つめ</rt></ruby>たい。<br>*(Bắt đầu thấy lạnh rồi. Tay lạnh rồi nhỉ.)* |
| Ngọc | (kiểm tra tay ông) ほんとうに<ruby>冷<rt>つめ</rt></ruby>たいですね。<ruby>中<rt>なか</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>りましょうか?<br>*(Tay lạnh thật nhỉ. Mình vào trong thôi ạ?)* |
| Ông Tanaka | そうしようか。<br>*(Thôi vào đi nhỉ.)* |
| Ngọc | (đến gặp Nhân viên A) すみません、<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>寒<rt>さむ</rt></ruby>いとおっしゃっています。<ruby>手足<rt>てあし</rt></ruby>が<ruby>冷<rt>つめ</rt></ruby>たいです。<ruby>先<rt>さき</rt></ruby>に<ruby>室内<rt>しつない</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ってもいいですか?<br>*(Xin lỗi anh, ông Tanaka nói lạnh. Tay chân lạnh rồi. Em có thể đưa ông vào trong trước không ạ?)* |
| Nhân viên A | もちろん。<ruby>無理<rt>むり</rt></ruby>させてはいけないですよ。<ruby>判断<rt>はんだん</rt></ruby>がよかったです。<br>*(Tất nhiên. Không được để ông cố gắng quá đâu. Em nhận xét đúng đấy.)* |

---

## Tình huống 6 — Phòng sinh hoạt · 10:30, chuẩn bị 文化祭 — trưng bày origami

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>午後<rt>ごご</rt></ruby>の<ruby>文化祭<rt>ぶんかさい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>利用者<rt>りようしゃ</rt></ruby>さんと<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>がみ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りましょう。<br>*(Em Nguyễn, giúp chuẩn bị hội văn hoá buổi chiều nhé. Cùng làm origami với các cụ nhé.)* |
| Ngọc | はい。どんな<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>がみ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りますか?<br>*(Vâng. Làm origami gì ạ?)* |
| Yamamoto | <ruby>秋<rt>あき</rt></ruby>らしいもの、<ruby>紅葉<rt>もみじ</rt></ruby>やどんぐりです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>手先<rt>てさき</rt></ruby>の<ruby>動<rt>うご</rt></ruby>きの<ruby>訓練<rt>くんれん</rt></ruby>にもなりますよ。<br>*(Những thứ mang chất mùa thu — lá đỏ và quả sồi. Đây cũng là bài tập vận động ngón tay cho các cụ đấy.)* |
| Ngọc | <ruby>手先<rt>てさき</rt></ruby>の<ruby>訓練<rt>くんれん</rt></ruby>...そういう<ruby>意味<rt>いみ</rt></ruby>もあるんですね。<br>*(Vận động ngón tay... Có ý nghĩa như vậy nữa à ạ.)* |
| Nhân viên B | <ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>中<rt>なか</rt></ruby>には<ruby>手<rt>て</rt></ruby>が<ruby>思<rt>おも</rt></ruby>うように<ruby>動<rt>うご</rt></ruby>かない<ruby>方<rt>かた</rt></ruby>もいます。<ruby>無理<rt>むり</rt></ruby>せず、<ruby>手伝<rt>てつだ</rt></ruby>いながら<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Trong số các cụ có người tay không cử động theo ý muốn. Đừng ép, vừa phụ vừa làm cùng nhé.)* |
| Ngọc | はい、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>ります。<br>*(Vâng, mình cùng làm.)* |

---

## Tình huống 7 — Phòng sinh hoạt · 11:00, làm origami cùng bà Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>がみ</rt></ruby>をしませんか? <ruby>秋<rt>あき</rt></ruby>らしいどんぐりを<ruby>作<rt>つく</rt></ruby>りますよ。<br>*(Bà Sato, mình cùng làm origami nhé? Mình làm quả sồi mang chất mùa thu đó ạ.)* |
| Bà Sato | あら、どんぐり? いいわね。でも<ruby>手<rt>て</rt></ruby>がうまく<ruby>動<rt>うご</rt></ruby>かなくて...<br>*(Ồ, quả sồi à? Hay đấy. Nhưng tay tôi không cử động được tốt lắm...)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>私<rt>わたし</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>います。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>折<rt>お</rt></ruby>りましょう。<br>*(Không sao đâu ạ. Cháu giúp ạ. Mình cùng gấp nhé.)* |
| Bà Sato | ありがとうね。昔、子どもたちと折り紙をよくしたわ。<br>*(Cảm ơn cháu. Hồi xưa bà hay làm origami với bọn trẻ lắm.)* |
| Ngọc | そうですか。お<ruby>子<rt>こ</rt></ruby>さんは<ruby>何人<rt>なんにん</rt></ruby>いらっしゃいますか?<br>*(Vậy ạ. Bà có mấy người con ạ?)* |
| Bà Sato | <ruby>二人<rt>ふたり</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>、<ruby>娘<rt>むすめ</rt></ruby>が<ruby>来<rt>く</rt></ruby>るのよ。<br>*(Hai người. Hôm nay con gái tôi sẽ đến đấy.)* |
| Ngọc | それは<ruby>楽<rt>たの</rt></ruby>しみですね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>ったどんぐりを<ruby>見<rt>み</rt></ruby>せてあげましょう。<br>*(Vậy thích quá nhỉ ạ. Mình đem quả sồi mình cùng làm khoe con gái bà nhé.)* |

---

## Tình huống 8 — Phòng sinh hoạt · 13:00, gia đình 利用者 đến thăm — lần đầu tiếp ứng

| Vai | Lời thoại |
|---|---|
| Người nhà | (bước vào) すみません、<ruby>佐藤<rt>さとう</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby>です。<ruby>母<rt>はは</rt></ruby>はどちらにいますか?<br>*(Xin lỗi, tôi là gia đình của bà Sato. Mẹ tôi ở đâu ạ?)* |
| Ngọc | いらっしゃいませ。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>今<rt>いま</rt></ruby>あちらの<ruby>席<rt>せき</rt></ruby>にいらっしゃいます。ご<ruby>案内<rt>あんない</rt></ruby>します。<br>*(Xin chào. Bà Sato hiện đang ở chỗ kia ạ. Để cháu dẫn đường.)* |
| Người nhà | ありがとうございます。<ruby>母<rt>はは</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>はいかがですか?<br>*(Cảm ơn bạn. Mẹ tôi dạo này thế nào ạ?)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>そうですよ。<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>がみ</rt></ruby>を<ruby>楽<rt>たの</rt></ruby>しんでいらっしゃいます。<ruby>詳<rt>くわ</rt></ruby>しいことは<ruby>担当<rt>たんとう</rt></ruby>のスタッフにお<ruby>聞<rt>き</rt></ruby>きください。<br>*(Hôm nay trông bà có vẻ vui ạ. Bà đang thích thú làm origami. Về chi tiết, mời bạn hỏi nhân viên phụ trách ạ.)* |
| Người nhà | わかりました。ありがとう。<br>*(Vâng, hiểu rồi. Cảm ơn.)* |
| Yamamoto | (nói nhỏ với Ngọc sau đó) よかったですよ。<ruby>家族<rt>かぞく</rt></ruby>への<ruby>対応<rt>たいおう</rt></ruby>は「<ruby>状態<rt>じょうたい</rt></ruby>は<ruby>担当者<rt>たんとうしゃ</rt></ruby>へ」と<ruby>伝<rt>つた</rt></ruby>えるのが<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Em làm tốt lắm. Khi tiếp gia đình, nguyên tắc cơ bản là chuyển câu hỏi về tình trạng cho nhân viên phụ trách.)* |

---

## Tình huống 9 — Phòng sinh hoạt · 14:00, buổi hát dân ca — động viên bà Sato tham gia

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、<ruby>みんな<rt>みんな</rt></ruby>で「<ruby>赤<rt>あか</rt></ruby>とんぼ」を<ruby>歌<rt>うた</rt></ruby>いましょう。グエンさんも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>ってください。<br>*(Nào, mình cùng hát "Chuồn chuồn đỏ" nhé. Em Nguyễn cũng hát cùng nhé.)* |
| Ngọc | えっ、わたし...まだ<ruby>歌詞<rt>かし</rt></ruby>がわかりません。<br>*(Ủa, cháu... cháu chưa thuộc lời ạ.)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です、<ruby>見<rt>み</rt></ruby>ながら<ruby>歌<rt>うた</rt></ruby>えますよ。(đưa tờ lời bài hát) はい、どうぞ。<br>*(Không sao, vừa xem vừa hát được mà. Đây, cầm lấy.)* |
| Ngọc | (bước đến bà Sato) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>いましょうよ。<br>*(Bà Sato, mình cùng hát nhé ạ.)* |
| Bà Sato | (lắc đầu nhẹ) わたし、<ruby>声<rt>こえ</rt></ruby>が<ruby>出<rt>で</rt></ruby>にくくて...<br>*(Tôi khó cất giọng lắm...)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>小<rt>ちい</rt></ruby>さな<ruby>声<rt>こえ</rt></ruby>でもいいです。わたしも<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>歌<rt>うた</rt></ruby>は<ruby>苦手<rt>にがて</rt></ruby>ですから、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Không sao đâu ạ. Giọng nhỏ cũng được. Cháu cũng không giỏi hát tiếng Nhật, mình cùng cố gắng nhé ạ.)* |
| Bà Sato | (mỉm cười) そうね、やってみるわ。<br>*(Thôi nhỉ, thử xem vậy.)* |

---

## Tình huống 10 — Hành lang · 14:45, ông Kimura mệt — ngừng hoạt động an toàn

| Vai | Lời thoại |
|---|---|
| Ông Kimura | グエンちゃん、ちょっと<ruby>疲<rt>つか</rt></ruby>れた。<ruby>部屋<rt>へや</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたいな。<br>*(Cháu Nguyễn ơi, bác mệt rồi. Bác muốn về phòng.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。すぐ<ruby>連<rt>つ</rt></ruby>れて<ruby>行<rt>い</rt></ruby>きますね。<ruby>気分<rt>きぶん</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いとかはありますか?<br>*(Cháu hiểu rồi. Cháu đưa bác về ngay nhé. Bác có thấy khó chịu gì không ạ?)* |
| Ông Kimura | それはないけど、<ruby>今日<rt>きょう</rt></ruby>はちょっとにぎやかすぎたかな。<br>*(Không có. Nhưng hôm nay có vẻ ồn ào quá với bác.)* |
| Ngọc | (đến gặp Nhân viên A) <ruby>木村<rt>きむら</rt></ruby>さんがお<ruby>疲<rt>つか</rt></ruby>れになっています。<ruby>部屋<rt>へや</rt></ruby>にお<ruby>連<rt>つ</rt></ruby>れしてもよいですか?<br>*(Ông Kimura mệt rồi ạ. Em có thể đưa ông về phòng không ạ?)* |
| Nhân viên A | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>部屋<rt>へや</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ったら<ruby>様子<rt>ようす</rt></ruby>をメモしておいてください。<br>*(Vâng, nhờ em nhé. Khi về phòng, ghi lại tình trạng vào sổ nhé.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em hiểu ạ.)* |

---

## Tình huống 11 — Phòng sinh hoạt · 15:30, tổng kết 文化祭 — bà Sato tặng origami cho con gái

| Vai | Lời thoại |
|---|---|
| Bà Sato | (với người nhà) ほら、グエンちゃんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>ったどんぐりよ。<br>*(Nhìn này, đây là quả sồi tôi và cháu Nguyễn cùng làm đấy.)* |
| Người nhà | まあ、かわいい! お<ruby>母<rt>かあ</rt></ruby>さんが<ruby>作<rt>つく</rt></ruby>ったの?<br>*(Ồ dễ thương quá! Mẹ làm đấy à?)* |
| Bà Sato | そう。グエンちゃんに<ruby>手伝<rt>てつだ</rt></ruby>ってもらったけどね。<br>*(Ừ. Nhưng cũng nhờ cháu Nguyễn giúp đấy.)* |
| Người nhà | (quay sang Ngọc) ありがとうございます。<ruby>母<rt>はは</rt></ruby>がうれしそうにしていて、よかった。<br>*(Cảm ơn bạn nhiều. Thấy mẹ tôi vui như vậy, tốt quá.)* |
| Ngọc | こちらこそ。<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>れて、わたしも<ruby>楽<rt>たの</rt></ruby>しかったです。<br>*(Cháu cũng vậy ạ. Cháu cũng vui khi được làm cùng bà Sato.)* |
| Bà Sato | また<ruby>来年<rt>らいねん</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>にしましょうね。<br>*(Năm sau mình lại làm cùng nhé.)* |
| Ngọc | はい、ぜひ。<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Vâng, nhất định ạ. Cháu mong đến năm sau.)* |

---

## Tình huống 12 — Ký túc xá · 21:00, kể lại sự kiện với Hương

> Scene tiếng Việt — giữ mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Hương | Ngọc ơi, hôm nay có lễ hội gì đó hả? Mặt mày vui lắm. |
| Ngọc | Ừ chị, lần đầu em đẩy xe lăn ra ngoài trời cho ông Tanaka với ông Kimura đi ngắm lá đỏ. Đẹp lắm chị ơi! |
| Hương | Ừ, mùa thu Nhật đẹp thật. Mà cẩn thận xe lăn ngoài sân, trơn lắm. |
| Ngọc | Dạ, em học rồi — bậc thềm thì phải đi lùi xuống. Hồi chiều còn làm origami với bà Sato, bà tặng con gái. Em vui lắm. |
| Hương | Tốt. Mấy cái kỷ niệm như vậy mới giữ được mình đây chị. Nghề này cần tình cảm, không chỉ kỹ thuật đâu. |
| Ngọc | Dạ, em hiểu rồi chị ạ. |

---

## Đọng lại chương 7

Tháng 11, Ngọc lần đầu dẫn xe lăn ra ngoài trời trong dịp 秋のふれあい週間, học được các kỹ năng an toàn cốt lõi: **mặc áo khoác trước khi ra ngoài** (tay bị yếu mặc trước), **kỹ thuật qua bậc thềm** (đi lùi — 後ろ向きで下りる), **nhận biết 利用者 lạnh và xử lý** (hỏi thăm → báo nhân viên → đưa vào trong), **quan sát mệt mỏi và dừng hoạt động đúng lúc**. Đồng thời học giao tiếp đời thường: **tiếp gia đình 利用者** (chuyển câu hỏi về tình trạng cho nhân viên phụ trách), **động viên 利用者 tham gia hát và làm đồ thủ công** (折り紙), **ý nghĩa trị liệu của 行事** (vận động ngón tay — 手先の訓練).

> Từ vựng & mẫu câu chương này: 紅葉狩り・文化祭・車椅子・段差・転倒・上着・後ろ向きで下りる・手先の訓練・折り紙・声かけ・家族への対応・担当者へ・疲れた・部屋に帰りたい・様子をメモする・赤とんぼ・楽しみにしています', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000008, 800000027, NULL, 'markdown_book', 'T8. Chăm sóc sa sút trí tuệ (認知症のケア)', '# Sách thực tập sinh điều dưỡng · T8. Chăm sóc sa sút trí tuệ (認知症のケア)

> **Mục tiêu nhân vật:** Ngọc (tháng 12/2026, 8 tháng kinh nghiệm, tiến từ N4 → N3) đối mặt với thực tế 認知症 qua bà Sato: lặp câu hỏi không dứt, 物盗られ妄想 đổ oan Ngọc lấy ví. Yamamoto giảng nguyên tắc 受容・共感・否定しない. Ngọc học バリデーション — kết nối bằng cảm xúc thay vì logic — và bà Sato gọi Ngọc bằng tên con gái, mở tuyến cảm động sâu sắc.

---

## Bối cảnh

Tháng 12 năm 2026. Ngọc đã làm việc được 8 tháng. Tiếng Nhật tiến dần sang N3, câu nói dài hơn, từ chuyên môn nhiều hơn. Bà Sato (88 tuổi, 認知症 giai đoạn trung bình) là 利用者 Ngọc chưa biết cách xử lý — mỗi lần tiếp xúc đều bất ngờ và đòi hỏi cách phản ứng khác hoàn toàn với những gì Ngọc đã học.

---

## Tình huống 1 — Phòng sinh hoạt chung · 9:15, bà Sato lặp câu hỏi

| Vai | Lời thoại |
|---|---|
| Bà Sato | あの、<ruby>今日<rt>きょう</rt></ruby>は<ruby>何曜日<rt>なにようび</rt></ruby>ですか?<br>*(Xin lỗi, hôm nay là thứ mấy nhỉ?)* |
| Ngọc | <ruby>水曜日<rt>すいようび</rt></ruby>ですよ、<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(Thứ Tư ạ, bà Sato.)* |
| Bà Sato | そうですか。ありがとう。(しばらくして) あの、<ruby>今日<rt>きょう</rt></ruby>は<ruby>何曜日<rt>なにようび</rt></ruby>ですか?<br>*(Vậy à. Cảm ơn. (một lúc sau) Xin lỗi, hôm nay là thứ mấy nhỉ?)* |
| Ngọc | え...また<ruby>水曜日<rt>すいようび</rt></ruby>ですよ。<br>*(Ờ... Vẫn là thứ Tư ạ.)* |
| Bà Sato | あら、そう。ありがとう。(少し後で) ねえ、<ruby>今日<rt>きょう</rt></ruby>は<ruby>何曜日<rt>なにようび</rt></ruby>?<br>*(Ồ, vậy à. Cảm ơn. (sau một chút) Này, hôm nay thứ mấy nhỉ?)* |
| Ngọc | (心の中で: また...どうしよう) <ruby>水曜日<rt>すいようび</rt></ruby>ですよ、<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(trong lòng: lại rồi... phải làm sao) Thứ Tư ạ, bà Sato.)* |
| Bà Sato | そうか。<ruby>娘<rt>むすめ</rt></ruby>が<ruby>来<rt>く</rt></ruby>るかしら...<br>*(Vậy à. Con gái sẽ đến nhỉ...)* |

---

## Tình huống 2 — Phòng bà Sato · 10:00, 物盗られ妄想 — đổ oan Ngọc lấy ví

| Vai | Lời thoại |
|---|---|
| Bà Sato | (giọng lo lắng) ちょっと、あなた!<ruby>私<rt>わたし</rt></ruby>の<ruby>財布<rt>さいふ</rt></ruby>が<ruby>見<rt>み</rt></ruby>えないのよ。<br>*(Này, cô kia! Ví của tôi không thấy đâu.)* |
| Ngọc | えっ、そうですか。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>探<rt>さが</rt></ruby>しましょうか?<br>*(Thật ạ? Cháu tìm cùng bà được không?)* |
| Bà Sato | あなたが<ruby>持<rt>も</rt></ruby>っていったんじゃないの!さっき<ruby>部屋<rt>へや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってきたでしょう!<br>*(Cô lấy rồi đấy! Cô vừa mới vào phòng tôi mà!)* |
| Ngọc | えっ...わ、<ruby>私<rt>わたし</rt></ruby>は<ruby>取<rt>と</rt></ruby>っていませんよ。<ruby>本当<rt>ほんとう</rt></ruby>です。<br>*(Ơ... Ch-cháu không lấy ạ. Thật mà.)* |
| Bà Sato | うそ!あなたが<ruby>持<rt>も</rt></ruby>っていったに<ruby>決<rt>き</rt></ruby>まってる!<ruby>返<rt>かえ</rt></ruby>しなさい!<br>*(Nói dối! Nhất định là cô lấy rồi! Trả lại đây!)* |
| Ngọc | (mặt trắng, không biết phải nói gì)<br>*(đứng sững, giọng run)* |
| Yamamoto | (bước vào) <ruby>佐藤<rt>さとう</rt></ruby>さん、どうしましたか?<br>*(Bà Sato, chuyện gì vậy ạ?)* |
| Bà Sato | この<ruby>子<rt>こ</rt></ruby>が<ruby>財布<rt>さいふ</rt></ruby>を<ruby>盗<rt>と</rt></ruby>ったのよ!<br>*(Con bé này lấy ví của tôi rồi!)* |
| Yamamoto | そうですか、<ruby>佐藤<rt>さとう</rt></ruby>さん。<ruby>大変<rt>たいへん</rt></ruby>でしたね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>探<rt>さが</rt></ruby>しましょう。(Ngọcに小声で) グエンさん、<ruby>後<rt>あと</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Vậy à, bà Sato. Thật vất vả nhỉ. Chúng ta tìm cùng nhau nhé. (thì thầm với Ngọc) Em Nguyễn, lát chị giải thích.)* |

---

## Tình huống 3 — Hành lang · 10:30, Yamamoto giảng về 受容・共感・否定しない

| Vai | Lời thoại |
|---|---|
| Ngọc | (mắt đỏ) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>私<rt>わたし</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>取<rt>と</rt></ruby>っていません。どうしたらよかったですか?<br>*(Chị Yamamoto, cháu thật sự không lấy. Cháu phải làm gì mới đúng ạ?)* |
| Yamamoto | グエンさん、あなたは<ruby>何<rt>なに</rt></ruby>も<ruby>悪<rt>わる</rt></ruby>くないですよ。まず、そこを<ruby>分<rt>わ</rt></ruby>かってください。<br>*(Em Nguyễn, em không làm gì sai cả. Trước tiên, em hãy hiểu điều đó.)* |
| Ngọc | でも、<ruby>佐藤<rt>さとう</rt></ruby>さんがそう<ruby>信<rt>しん</rt></ruby>じているんですよね...<br>*(Nhưng bà Sato tin như vậy mà...)* |
| Yamamoto | それが「<ruby>物盗<rt>ものと</rt></ruby>られ<ruby>妄想<rt>もうそう</rt></ruby>」です。<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>症状<rt>しょうじょう</rt></ruby>の一つで、<ruby>大切<rt>たいせつ</rt></ruby>なものがなくなったと<ruby>感<rt>かん</rt></ruby>じたとき、だれかのせいにしてしまうんです。<br>*(Đó là "hoang tưởng bị lấy cắp". Là một triệu chứng của 認知症, khi cảm thấy mất thứ quan trọng, họ đổ cho ai đó.)* |
| Ngọc | どうして<ruby>私<rt>わたし</rt></ruby>みたいな<ruby>外国人<rt>がいこくじん</rt></ruby>が<ruby>疑<rt>うたが</rt></ruby>われやすいですか?<br>*(Tại sao người nước ngoài như cháu dễ bị nghi hơn ạ?)* |
| Yamamoto | <ruby>身近<rt>みじか</rt></ruby>にいる<ruby>人<rt>ひと</rt></ruby>ほど<ruby>疑<rt>うたが</rt></ruby>われやすいんです。<ruby>家族<rt>かぞく</rt></ruby>も<ruby>疑<rt>うたが</rt></ruby>われます。<ruby>悪意<rt>あくい</rt></ruby>があるわけじゃないんですよ。<br>*(Người hay ở gần càng dễ bị nghi. Gia đình cũng bị nghi. Không phải họ có ác ý đâu.)* |
| Ngọc | じゃあ、さっき<ruby>私<rt>わたし</rt></ruby>が「<ruby>取<rt>と</rt></ruby>っていません」と<ruby>言<rt>い</rt></ruby>ったのは、<ruby>間違<rt>まちが</rt></ruby>いでしたか?<br>*(Vậy lúc nãy cháu nói "cháu không lấy" là sai không ạ?)* |
| Yamamoto | そうです。「<ruby>違<rt>ちが</rt></ruby>います」「そんなことない」と<ruby>否定<rt>ひてい</rt></ruby>すると、<ruby>利用者<rt>りようしゃ</rt></ruby>さんはもっと<ruby>不安<rt>ふあん</rt></ruby>になります。<br>*(Đúng vậy. Nếu nói "không phải", "không có chuyện đó" — phủ nhận — người được chăm sóc sẽ càng lo lắng hơn.)* |
| Ngọc | じゃあ、どう<ruby>答<rt>こた</rt></ruby>えればよかったですか?<br>*(Vậy cháu nên đáp lại thế nào mới đúng ạ?)* |
| Yamamoto | まず、<ruby>受容<rt>じゅよう</rt></ruby>。「そうですか、<ruby>困<rt>こま</rt></ruby>りましたね」と<ruby>気持<rt>きも</rt></ruby>ちを<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>める。次に<ruby>共感<rt>きょうかん</rt></ruby>。「<ruby>大切<rt>たいせつ</rt></ruby>なものですね」と<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>う。そして<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>探<rt>さが</rt></ruby>す。<br>*(Đầu tiên, tiếp nhận. Nói "Vậy ạ, thật khổ nhỉ" — đón nhận cảm xúc. Tiếp theo, đồng cảm. "Đó là thứ quan trọng nhỉ" — sát cánh. Rồi tìm cùng nhau.)* |
| Ngọc | <ruby>否定<rt>ひてい</rt></ruby>しない、<ruby>受容<rt>じゅよう</rt></ruby>、<ruby>共感<rt>きょうかん</rt></ruby>...メモします。<br>*(Không phủ nhận, tiếp nhận, đồng cảm... Cháu ghi lại.)* |
| Yamamoto | もう一つ大事なことがあります。「バリデーション」という<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(Còn một điều quan trọng nữa. Đó là phương pháp "Validation".)* |
| Ngọc | バリデーション...どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Validation... nghĩa là gì ạ?)* |
| Yamamoto | <ruby>事実<rt>じじつ</rt></ruby>で<ruby>正<rt>ただ</rt></ruby>そうとするのではなく、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>感情<rt>かんじょう</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>うことです。「<ruby>財布<rt>さいふ</rt></ruby>がなくて<ruby>心配<rt>しんぱい</rt></ruby>ですね」と、<ruby>気持<rt>きも</rt></ruby>ちの<ruby>部分<rt>ぶぶん</rt></ruby>だけに<ruby>反応<rt>はんのう</rt></ruby>する。<br>*(Không cố sửa bằng sự thật, mà sát cánh với cảm xúc của người được chăm sóc. Nói "Không thấy ví thì lo quá nhỉ" — chỉ phản hồi phần cảm xúc.)* |
| Ngọc | <ruby>正<rt>ただ</rt></ruby>しいかどうかより、<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大事<rt>だいじ</rt></ruby>なんですね。<br>*(Đúng hay sai không quan trọng bằng cảm xúc, phải không ạ.)* |
| Yamamoto | そう。<ruby>認知症<rt>にんちしょう</rt></ruby>のケアは、<ruby>論理<rt>ろんり</rt></ruby>ではなく<ruby>感情<rt>かんじょう</rt></ruby>で<ruby>繋<rt>つな</rt></ruby>がることです。<br>*(Đúng vậy. Chăm sóc 認知症 là kết nối bằng cảm xúc, không phải bằng logic.)* |

---

## Tình huống 4 — Phòng bà Sato · 14:00, Ngọc thử バリデーション

| Vai | Lời thoại |
|---|---|
| Bà Sato | (ngồi lo lắng, hai tay bồn chồn) <ruby>財布<rt>さいふ</rt></ruby>が...どこに<ruby>行<rt>い</rt></ruby>ったのかしら。<br>*(Ví...không biết đi đâu rồi.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>財布<rt>さいふ</rt></ruby>が<ruby>見<rt>み</rt></ruby>つからなくて、<ruby>心配<rt>しんぱい</rt></ruby>ですね。<br>*(Bà Sato, không tìm thấy ví, lo lắm nhỉ.)* |
| Bà Sato | そうなの。<ruby>大事<rt>たいじ</rt></ruby>なものが<ruby>入<rt>はい</rt></ruby>っているのよ。<br>*(Đúng vậy. Trong đó có nhiều thứ quan trọng lắm.)* |
| Ngọc | そうですか。<ruby>大事<rt>たいじ</rt></ruby>なものが<ruby>入<rt>はい</rt></ruby>っているんですね。どんなものが<ruby>入<rt>はい</rt></ruby>っていますか?<br>*(Vậy ạ. Có nhiều thứ quan trọng nhỉ. Trong đó có những gì ạ?)* |
| Bà Sato | (すこし落ち着いて) <ruby>娘<rt>むすめ</rt></ruby>の<ruby>写真<rt>しゃしん</rt></ruby>が...。<ruby>小<rt>ちい</rt></ruby>さい<ruby>頃<rt>ころ</rt></ruby>の。<br>*(hơi dịu lại) Có ảnh con gái... Ảnh hồi nhỏ của nó.)* |
| Ngọc | お<ruby>嬢<rt>じょう</rt></ruby>さんの<ruby>写真<rt>しゃしん</rt></ruby>ですか。<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Ảnh con gái bà à. Quý giá lắm nhỉ.)* |
| Bà Sato | <ruby>娘<rt>むすめ</rt></ruby>は<ruby>優<rt>やさ</rt></ruby>しい<ruby>子<rt>こ</rt></ruby>でね。<ruby>遠<rt>とお</rt></ruby>くに<ruby>住<rt>す</rt></ruby>んでいるから、なかなか<ruby>来<rt>こ</rt></ruby>られないんだけど。<br>*(Con gái tôi hiền lắm. Nó sống xa nên ít khi đến được.)* |
| Ngọc | そうですか。<ruby>会<rt>あ</rt></ruby>いたいですね。<br>*(Vậy ạ. Muốn gặp lắm nhỉ.)* |
| Bà Sato | (Ngọcの顔をじっと見て) あなた、<ruby>娘<rt>むすめ</rt></ruby>に<ruby>似<rt>に</rt></ruby>ているわ。<ruby>優<rt>やさ</rt></ruby>しい<ruby>顔<rt>かお</rt></ruby>。<br>*(nhìn kỹ mặt Ngọc) Cháu trông giống con gái tôi nhỉ. Khuôn mặt hiền.)* |
| Ngọc | そうですか?(すこし驚いて、やさしく微笑む)<br>*(Vậy ạ? (hơi bất ngờ, mỉm cười nhẹ))* |
| Bà Sato | <ruby>財布<rt>さいふ</rt></ruby>はね、きっとどこかにあるわ。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>よ。(穏やかになっている)<br>*(Ví ấy chắc ở đâu đó. Không sao đâu. (đã dịu lại hẳn))* |
| Ngọc | はい、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>探<rt>さが</rt></ruby>しましょうね。(心の中で: バリデーション、できた!)<br>*(Vâng, chúng ta tìm cùng nhau nhé. (trong lòng: Validation — mình làm được!))* |

---

## Tình huống 5 — Phòng nghỉ nhân viên · 15:30, bà Sato gọi Ngọc bằng tên con gái

| Vai | Lời thoại |
|---|---|
| Bà Sato | (Ngọcが通りかかると) ちょっと、<ruby>明<rt>あか</rt></ruby>り。<br>*(Ngọc đi ngang qua) Này, Akari.)* |
| Ngọc | (振り返って) はい?<br>*(quay lại) Vâng?)* |
| Bà Sato | <ruby>明<rt>あか</rt></ruby>り、<ruby>今日<rt>きょう</rt></ruby>は<ruby>遅<rt>おそ</rt></ruby>かったわね。<ruby>忙<rt>いそが</rt></ruby>しかった?<br>*(Akari, hôm nay về muộn nhỉ. Bận lắm à?)* |
| Ngọc | (あっ...私を娘さんと思っている) えっと、<ruby>少<rt>すこ</rt></ruby>し<ruby>忙<rt>いそが</rt></ruby>しかったです。<br>*(trong lòng: À...bà tưởng mình là con gái) Ừm, hơi bận một chút ạ.)* |
| Bà Sato | <ruby>明<rt>あか</rt></ruby>り、<ruby>痩<rt>や</rt></ruby>せた?ちゃんと<ruby>食<rt>た</rt></ruby>べているの?<br>*(Akari, gầy đi rồi à? Có ăn đàng hoàng không?)* |
| Ngọc | (ルールを思い出す：否定しない、感情に寄り添う) はい、ちゃんと<ruby>食<rt>た</rt></ruby>べています。<ruby>心配<rt>しんぱい</rt></ruby>しないでください。<br>*(nhớ lại nguyên tắc: không phủ nhận, sát cánh cảm xúc) Dạ, con ăn đàng hoàng mà. Mẹ đừng lo nhé.)* |
| Bà Sato | (ほっとして微笑む) そう。よかった。<ruby>明<rt>あか</rt></ruby>りが<ruby>来<rt>き</rt></ruby>てくれると、<ruby>安心<rt>あんしん</rt></ruby>するわ。<br>*(thở phào, mỉm cười) Vậy à. Tốt quá. Akari đến thì mẹ yên tâm lắm.)* |
| Ngọc | (胸が熱くなる) ...<ruby>私<rt>わたし</rt></ruby>もです。(そっと手を握る)<br>*(lòng ấm lên) ...Con cũng vậy. (nhẹ nhàng nắm tay bà))* |
| Bà Sato | (目を閉じて、穏やかな顔で) ありがとう、<ruby>明<rt>あか</rt></ruby>り。<br>*(nhắm mắt lại, khuôn mặt bình yên) Cảm ơn con, Akari.)* |

---

## Tình huống 6 — Hành lang · 16:00, bà Sato đi lang thang (徘徊) — dẫn về nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Ngọc | (đi hành lang, thấy bà Sato đứng gần cửa ra vào, tay cầm túi nhỏ) <ruby>佐藤<rt>さとう</rt></ruby>さん、どちらへ<ruby>行<rt>い</rt></ruby>かれますか?<br>*(Bà Sato, bà định đi đâu vậy ạ?)* |
| Bà Sato | (nhìn quanh, vẻ lo lắng) <ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>らないといけないの。<ruby>夕飯<rt>ゆうはん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>が...<br>*(Tôi phải về nhà. Phải chuẩn bị bữa tối...)* |
| Ngọc | そうですか。<ruby>大変<rt>たいへん</rt></ruby>ですね。（やさしく並んで歩きながら） あ、<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>外<rt>そと</rt></ruby>が<ruby>寒<rt>さむ</rt></ruby>いですよ。<ruby>少<rt>すこ</rt></ruby>し<ruby>温<rt>あたた</rt></ruby>まってから<ruby>行<rt>い</rt></ruby>きませんか?<br>*(Vậy ạ. Bận quá nhỉ. — À, bà Sato, hôm nay bên ngoài lạnh lắm đấy. Bà ấm người một chút rồi đi không ạ?)* |
| Bà Sato | (立ち止まって) そう?<ruby>寒<rt>さむ</rt></ruby>いの?<br>*(dừng lại) Vậy à? Lạnh lắm à?)* |
| Ngọc | ええ。<ruby>中<rt>なか</rt></ruby>でお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>飲<rt>の</rt></ruby>みませんか?<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Vâng. Vào trong uống trà không ạ? Cùng nhau nhé.)* |
| Bà Sato | (すこし考えて) そうね、<ruby>温<rt>あたた</rt></ruby>かいものが<ruby>飲<rt>の</rt></ruby>みたいわ。<br>*(suy nghĩ một chút) Thì cũng được nhỉ, tôi cũng muốn uống gì ấm ấm.)* |
| Ngọc | (そっとそばに<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>って、ゆっくり<ruby>歩<rt>ある</rt></ruby>く) こちらです。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(nhẹ nhàng đi kề bên, bước từ từ) Lối này ạ. Chúng ta cùng đi nhé.)* |
| Bà Sato | (すなおについてくる) <ruby>夕飯<rt>ゆうはん</rt></ruby>は...あとでいいかしら。<br>*(ngoan ngoãn đi theo) Bữa tối... sau cũng được nhỉ.)* |
| Ngọc | (心の中で: よかった...急がず、否定せず。) はい、ゆっくりでいいですよ。<br>*(trong lòng: May quá... không vội, không phủ nhận.) Vâng, từ từ thôi ạ.)* |

---

## Tình huống 7 — Phòng sinh hoạt chung · 16:30, bà Sato lặp câu hỏi lần ba — cách đáp kiên nhẫn

| Vai | Lời thoại |
|---|---|
| Bà Sato | (ngồi uống trà, nhìn Ngọc) あなた、<ruby>今日<rt>きょう</rt></ruby>は<ruby>何曜日<rt>なにようび</rt></ruby>ですか?<br>*(Này cháu, hôm nay thứ mấy nhỉ?)* |
| Ngọc | <ruby>水曜日<rt>すいようび</rt></ruby>ですよ、<ruby>佐藤<rt>さとう</rt></ruby>さん。いいお<ruby>天気<rt>てんき</rt></ruby>ですね。<br>*(Thứ Tư ạ, bà Sato. Thời tiết đẹp nhỉ.)* |
| Bà Sato | そう。(しばらくして) ねえ、<ruby>今日<rt>きょう</rt></ruby>は<ruby>何曜日<rt>なにようび</rt></ruby>?<br>*(Vậy à. — (một lúc sau) Này, hôm nay thứ mấy?)* |
| Ngọc | (穏やかに、同じトーンで) <ruby>水曜日<rt>すいようび</rt></ruby>ですよ。(カレンダーを指して) ここに<ruby>書<rt>か</rt></ruby>いてありますね。<br>*(bình tĩnh, cùng giọng điệu) Thứ Tư ạ. — (chỉ vào lịch) Ở đây cũng ghi đây bà nhé.)* |
| Bà Sato | あら、ほんとうね。(また少しして) あなた、<ruby>今日<rt>きょう</rt></ruby>は...<br>*(Ồ, đúng nhỉ. — (lại một chút sau) Này cháu, hôm nay...)* |
| Ngọc | (さっとカレンダーを持ってきて) <ruby>水曜日<rt>すいようび</rt></ruby>です。<ruby>佐藤<rt>さとう</rt></ruby>さん、お<ruby>茶<rt>ちゃ</rt></ruby>おいしいですか?<br>*(nhanh tay mang lịch lại) Thứ Tư ạ. — Bà Sato, trà có ngon không ạ?)* |
| Bà Sato | (お茶に気を取られて) おいしいわ。ありがとう。<br>*(bị thu hút bởi trà) Ngon lắm. Cảm ơn cháu.)* |
| Ngọc | (心の中で: 同じことを何度聞かれても、怒らない。これが<ruby>認知症<rt>にんちしょう</rt></ruby>ケアだ。)<br>*(trong lòng: Dù bà hỏi bao nhiêu lần, mình không được tức. Đây là chăm sóc 認知症.)* |

---

## Tình huống 8 — Phòng bà Sato · 17:00, bà từ chối uống thuốc — thuyết phục nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>薬<rt>くすり</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>ですよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>みましょう。<br>*(Bà Sato, đến giờ uống thuốc rồi ạ. Nào, bà uống nhé.)* |
| Bà Sato | (首を振る) <ruby>飲<rt>の</rt></ruby>みたくない。あんな<ruby>苦<rt>にが</rt></ruby>いもの、<ruby>嫌<rt>いや</rt></ruby>よ。<br>*(lắc đầu) Tôi không muốn uống. Đắng lắm, tôi không chịu được.)* |
| Ngọc | そうですか、<ruby>苦<rt>にが</rt></ruby>いですよね。(少し考えて) <ruby>佐藤<rt>さとう</rt></ruby>さん、この<ruby>薬<rt>くすり</rt></ruby>はね、<ruby>頭<rt>あたま</rt></ruby>をすっきりさせてくれる<ruby>薬<rt>くすり</rt></ruby>なんですよ。<br>*(Vậy ạ, đắng nhỉ. — (suy nghĩ một chút) Bà Sato, thuốc này giúp đầu óc bà tỉnh táo hơn đấy ạ.)* |
| Bà Sato | <ruby>頭<rt>あたま</rt></ruby>が?...<ruby>最近<rt>さいきん</rt></ruby>、<ruby>頭<rt>あたま</rt></ruby>がぼんやりするのよね。<br>*(Đầu óc à?... Gần đây đầu óc tôi hay mơ màng lắm.)* |
| Ngọc | だから、この<ruby>薬<rt>くすり</rt></ruby>が<ruby>助<rt>たす</rt></ruby>けてくれますよ。お<ruby>水<rt>みず</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>むと<ruby>楽<rt>らく</rt></ruby>ですよ。(コップを差し出す)<br>*(Nên thuốc này sẽ giúp bà đấy. Uống với nước cho dễ nhé. (đưa cốc nước))* |
| Bà Sato | (まだためらいながら) ...<ruby>娘<rt>むすめ</rt></ruby>が<ruby>飲<rt>の</rt></ruby>んだ<ruby>方<rt>ほう</rt></ruby>がいいって<ruby>言<rt>い</rt></ruby>った?<br>*(vẫn còn do dự) ...Con gái tôi có nói nên uống không?)* |
| Ngọc | はい、<ruby>先生<rt>せんせい</rt></ruby>と<ruby>娘<rt>むすめ</rt></ruby>さんが<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>決<rt>き</rt></ruby>めたお<ruby>薬<rt>くすり</rt></ruby>ですよ。<ruby>安心<rt>あんしん</rt></ruby>して<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Vâng, đây là thuốc mà bác sĩ và con gái bà cùng quyết định đấy ạ. Bà cứ yên tâm mà uống.)* |
| Bà Sato | (ゆっくり<ruby>飲<rt>の</rt></ruby>む) <ruby>娘<rt>むすめ</rt></ruby>が...<ruby>決<rt>き</rt></ruby>めたの。じゃあ、<ruby>飲<rt>の</rt></ruby>む。<br>*(từ từ uống) Con gái tôi... quyết định à. Vậy thì uống.)* |
| Ngọc | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さん、えらいですね。<br>*(Cảm ơn bà ạ. Bà ngoan lắm nhỉ, bà Sato.)* |

---

## Tình huống 9 — Phòng sinh hoạt chung · 18:00, hoạt động giải trí レクリエーション với bà Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>はレクリエーションの<ruby>時間<rt>じかん</rt></ruby>です。<ruby>一緒<rt>いっしょ</rt></ruby>にやってみますか?<br>*(Bà Sato, hôm nay đến giờ hoạt động vui vẻ rồi ạ. Bà thử làm cùng không?)* |
| Bà Sato | なにをするの?<br>*(Làm gì vậy?)* |
| Ngọc | (折り紙を出して) <ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>がみ</rt></ruby>です。<ruby>昔<rt>むかし</rt></ruby>、よく<ruby>折<rt>お</rt></ruby>っていましたか?<br>*(lấy giấy gấp ra) Gấp giấy ạ. Hồi xưa bà hay gấp không ạ?)* |
| Bà Sato | (目が輝く) あら、<ruby>折<rt>お</rt></ruby>り<ruby>紙<rt>がみ</rt></ruby>!<ruby>好<rt>す</rt></ruby>きよ。<ruby>鶴<rt>つる</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>でね。<br>*(mắt sáng lên) Ồ, gấp giấy! Tôi thích lắm. Tôi giỏi gấp hạc lắm đấy.)* |
| Ngọc | えっ、すごい!<ruby>鶴<rt>つる</rt></ruby>、<ruby>教<rt>おし</rt></ruby>えてもらえますか?<br>*(Ồ, giỏi thật! Bà có thể dạy cháu gấp hạc được không ạ?)* |
| Bà Sato | (うれしそうに紙を取って) こうやって、<ruby>半分<rt>はんぶん</rt></ruby>に<ruby>折<rt>お</rt></ruby>って...。<ruby>次<rt>つぎ</rt></ruby>はここをこう...<br>*(vui vẻ cầm giấy) Làm thế này, gấp đôi lại... Rồi chỗ này thì thế này...)* |
| Ngọc | (まねしながら) こうですか?<ruby>難<rt>むずか</rt></ruby>しい...<br>*(bắt chước theo) Như vậy à? Khó quá...)* |
| Bà Sato | (笑いながら) ちがう、こっちよ。<ruby>見<rt>み</rt></ruby>ていて。(ゆっくり折って見せる)<br>*(cười) Không phải, phía này nhé. Nhìn đây. (từ từ gấp cho xem))* |
| Ngọc | あ、なるほど!<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>上手<rt>じょうず</rt></ruby>ですね。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>得意<rt>とくい</rt></ruby>なんですね。<br>*(À, ra vậy! Bà Sato giỏi thật đấy. Quả thật bà giỏi nhỉ.)* |
| Bà Sato | (誇らしそうに微笑む) そうよ。<ruby>昔<rt>むかし</rt></ruby>から<ruby>好<rt>す</rt></ruby>きなの。<br>*(mỉm cười tự hào) Đúng vậy. Tôi thích từ hồi xưa cơ.)* |
| Ngọc | (心の中で: レクリエーションは昔の記憶を引き出す。<ruby>長期記憶<rt>ちょうききおく</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っているから、こういう活動が効く。)<br>*(trong lòng: Hoạt động giải trí kéo ra ký ức ngày xưa. Vì trí nhớ dài hạn vẫn còn, nên những hoạt động như này có tác dụng.)* |

---

## Tình huống 10 — Bên ngoài ký túc · 20:00, Đức nói "tao chịu hết nổi rồi"

> Scene tiếng Việt — mặt tối: kiệt sức với 認知症.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt, ngồi thềm lạnh, mặt mệt) Tao không biết mình còn trụ được bao lâu. |
| Ngọc | (tiếng Việt) Chuyện gì vậy anh? |
| Đức | (tiếng Việt) Hôm nay bà Kobayashi — bà bị 認知症 bên tao — cứ la hét, rồi đánh tay tao mấy cái vì bà nói tao vào phòng bà trộm đồ. Tao giải thích, bà càng la to hơn. Rồi senpai nói tao phải "受容する". Tao làm sao受容 được khi bị đánh? |
| Ngọc | (tiếng Việt) Em cũng bị sáng nay. Bà Sato nói em lấy ví của bà. |
| Đức | (tiếng Việt) Rồi em làm gì? |
| Ngọc | (tiếng Việt) Em không biết làm gì lúc đầu. Nhưng Yamamoto-san dạy em バリデーション. Buổi chiều em thử, bà Sato dịu hẳn. Rồi bà gọi em bằng tên con gái bà... |
| Đức | (tiếng Việt, ngạc nhiên) Vậy á. Cũng hay. Nhưng mà anh... anh không biết mình có đủ sức làm vậy mỗi ngày không. |
| Ngọc | (tiếng Việt, nhẹ nhàng) Em cũng không biết. Nhưng anh Đức, mình học được thì mình có thể làm được. Yamamoto-san nói: không cần làm hoàn hảo, cần hiểu bà ấy đang sợ. |
| Đức | (tiếng Việt, thở dài) Ừ. Để anh suy nghĩ thêm. |

---

## Tình huống 11 — Phòng ký túc · 22:00, Ngọc tìm hiểu thêm về 認知症

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、まだ<ruby>起<rt>お</rt></ruby>きてるの?<ruby>何<rt>なに</rt></ruby>読んでるの?<br>*(Ngọc ơi, chưa ngủ à? Đọc gì vậy?)* |
| Ngọc | <ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby>さんのことがあって、もっと<ruby>知<rt>し</rt></ruby>りたくて。<br>*(Sách về 認知症. Hôm nay có chuyện với bà Sato, em muốn hiểu thêm.)* |
| Hương | <ruby>認知症<rt>にんちしょう</rt></ruby>って、<ruby>種類<rt>しゅるい</rt></ruby>があるよね。<br>*(認知症 có nhiều loại nhỉ.)* |
| Ngọc | うん、アルツハイマー<ruby>型<rt>がた</rt></ruby>が一番<ruby>多<rt>おお</rt></ruby>いみたいで、<ruby>短期記憶<rt>たんききおく</rt></ruby>が<ruby>先<rt>さき</rt></ruby>に<ruby>落<rt>お</rt></ruby>ちるって<ruby>書<rt>か</rt></ruby>いてある。だから<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>何曜日<rt>なにようび</rt></ruby>を<ruby>何度<rt>なんど</rt></ruby>も<ruby>聞<rt>き</rt></ruby>くんだ。<ruby>新<rt>あたら</rt></ruby>しい<ruby>記憶<rt>きおく</rt></ruby>が<ruby>作<rt>つく</rt></ruby>れないから。<br>*(Ừ, loại Alzheimer phổ biến nhất, sách nói trí nhớ ngắn hạn mất trước. Nên bà Sato mới hỏi thứ mấy nhiều lần. Vì bà không tạo được ký ức mới.)* |
| Hương | そっか。だから<ruby>怒<rt>おこ</rt></ruby>っちゃダメなんだね。<ruby>忘<rt>わす</rt></ruby>れたくて<ruby>忘<rt>わす</rt></ruby>れてるわけじゃないから。<br>*(Ừ nhỉ. Nên không được tức. Vì bà không cố tình quên mà.)* |
| Ngọc | そう。(ページをめくりながら)それと、<ruby>長期記憶<rt>ちょうききおく</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>るんだって。<ruby>昔<rt>むかし</rt></ruby>のことは<ruby>覚<rt>おぼ</rt></ruby>えてる。だから<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>娘<rt>むすめ</rt></ruby>さんのことはちゃんと<ruby>覚<rt>おぼ</rt></ruby>えてるんだ。<br>*(Đúng. (lật trang) Và trí nhớ dài hạn vẫn còn. Chuyện ngày xưa vẫn nhớ. Nên bà Sato vẫn nhớ rõ con gái bà.)* |
| Hương | それで、ゴックさんを<ruby>娘<rt>むすめ</rt></ruby>さんと<ruby>思<rt>おも</rt></ruby>ったのかも。<br>*(Nên bà mới nhầm Ngọc là con gái.)* |
| Ngọc | たぶん。(しばらく考えてから) でも、<ruby>佐藤<rt>さとう</rt></ruby>さんが「ありがとう、<ruby>明<rt>あか</rt></ruby>り」と<ruby>言<rt>い</rt></ruby>ったとき...なんか、<ruby>胸<rt>むね</rt></ruby>が<ruby>熱<rt>あつ</rt></ruby>くなった。<br>*(Có lẽ vậy. (suy nghĩ một lúc) Nhưng khi bà nói "cảm ơn con, Akari"... lòng em ấm lắm.)* |
| Hương | それが<ruby>介護<rt>かいご</rt></ruby>だよ。そういう<ruby>瞬間<rt>しゅんかん</rt></ruby>のために<ruby>続<rt>つづ</rt></ruby>けられる。<br>*(Đó chính là điều dưỡng đấy. Vì những khoảnh khắc như vậy mà mình tiếp tục được.)* |
| Ngọc | (うなずく。スマホに一行メモする:「<ruby>認知症<rt>にんちしょう</rt></ruby>は<ruby>論理<rt>ろんり</rt></ruby>でなく<ruby>感情<rt>かんじょう</rt></ruby>で<ruby>繋<rt>つな</rt></ruby>がる。」)<br>*(gật đầu. Ghi vào điện thoại: "認知症 là kết nối bằng cảm xúc, không phải bằng logic."))* |

---

## Đọng lại chương 5

Ngọc lần đầu chạm vào thực tế khắc nghiệt của 認知症 qua đủ các tình huống nghiệp vụ: **短期記憶の喪失** (câu hỏi lặp vô tận), **物盗られ妄想** (đổ oan), **徘徊** (đi lang thang), **服薬拒否** (từ chối uống thuốc), và **レクリエーション** khai thác trí nhớ dài hạn. Bài học xuyên suốt: không phủ nhận, tiếp nhận cảm xúc, đồng hành — **否定しない・受容・共感**. **バリデーション** giúp kết nối bằng cảm xúc thay vì logic. Khi bà Sato gọi "Akari" — gọi tên con gái qua khuôn mặt Ngọc — đó là khoảnh khắc lặng mà sâu, mở ra tuyến tình cảm cho những chương sau.

> Từ vựng & mẫu câu chương này: 認知症・短期記憶・長期記憶・物盗られ妄想・徘徊・服薬拒否・レクリエーション・受容・共感・否定しない・バリデーション・感情・論理・安心感・心配ですね・大変でしたね・一緒に探しましょう・どちらへ行かれますか・〜してから行きませんか', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000009, 800000027, NULL, 'markdown_book', 'T9. Nhận biết bất thường (体調変化に気づく)', '# Sách thực tập sinh điều dưỡng · T9. Nhận biết bất thường (体調変化に気づく)

> **Mục tiêu nhân vật:** Ngọc (TTS năm 1, tháng 1/2027) học quan sát và nhận biết dấu hiệu bất thường của 利用者: đo バイタル (体温・血圧・脈拍), phát hiện 微熱・食欲低下・皮膚の変化・咳/痰. Học cách báo 看護師 đúng quy trình (誰が・何の症状・いつから), ghi vào 記録. Mùa đông phòng 脱水・インフルエンザ.

---

## Bối cảnh

Tháng 1 năm 2027. Mùa đông, Hidamari-en bước vào giai đoạn cao điểm dịch cúm (インフルエンザ). Ngọc đã qua 9 tháng làm việc, nắm được các công việc cơ bản. Yamamoto bắt đầu giao Ngọc nhiệm vụ đo バイタル buổi sáng và nhận biết dấu hiệu bất thường của 利用者, từ đó học quy trình báo cáo (報告) cho 看護師 đúng chuẩn: ai — triệu chứng gì — từ bao giờ — đo được bao nhiêu.

---

## Tình huống 1 — Phòng họp nhân viên · 7:50, họp sáng mùa đông

| Vai | Lời thoại |
|---|---|
| Yamamoto | おはようございます。<ruby>今日<rt>きょう</rt></ruby>から<ruby>朝<rt>あさ</rt></ruby>のバイタル<ruby>測定<rt>そくてい</rt></ruby>をグエンさんに<ruby>担当<rt>たんとう</rt></ruby>してもらいます。<br>*(Chào buổi sáng. Từ hôm nay em Nguyễn sẽ phụ trách đo chỉ số sinh tồn buổi sáng.)* |
| Ngọc | えっ、わたしが...?<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Ủa, cháu à...? Cháu làm được không ạ?)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。バイタルは<ruby>体温<rt>たいおん</rt></ruby>・<ruby>血圧<rt>けつあつ</rt></ruby>・<ruby>脈拍<rt>みゃくはく</rt></ruby>の<ruby>3<rt>みっ</rt></ruby>つです。<ruby>数値<rt>すうち</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>して、<ruby>異常<rt>いじょう</rt></ruby>があれば<ruby>看護師<rt>かんごし</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Được thôi. Chỉ số sinh tồn gồm 3 thứ: nhiệt độ cơ thể, huyết áp, nhịp mạch. Ghi lại số liệu, nếu có bất thường thì báo y tá.)* |
| Ngọc | <ruby>異常<rt>いじょう</rt></ruby>というのは、どんな<ruby>数値<rt>すうち</rt></ruby>ですか?<br>*(Bất thường tức là số liệu như thế nào ạ?)* |
| Yamamoto | <ruby>体温<rt>たいおん</rt></ruby>は<ruby>37<rt>さんじゅうなな</rt></ruby>.<ruby>5<rt>ご</rt></ruby>℃<ruby>以上<rt>いじょう</rt></ruby>が<ruby>微熱<rt>びねつ</rt></ruby>です。<ruby>血圧<rt>けつあつ</rt></ruby>は<ruby>上<rt>うえ</rt></ruby>が<ruby>140<rt>ひゃくよんじゅう</rt></ruby>以上か<ruby>90<rt>きゅうじゅう</rt></ruby>以下なら<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Nhiệt độ từ 37.5°C trở lên là sốt nhẹ. Huyết áp tâm thu từ 140 trở lên hoặc tâm trương từ 90 trở xuống thì báo.)* |
| Ngọc | はい、メモします。<ruby>脈拍<rt>みゃくはく</rt></ruby>は?<br>*(Vâng, em ghi lại. Còn nhịp mạch ạ?)* |
| Yamamoto | <ruby>1<rt>いっ</rt></ruby><ruby>分間<rt>ぷんかん</rt></ruby>に<ruby>50<rt>ごじゅう</rt></ruby><ruby>回<rt>かい</rt></ruby>以下か<ruby>100<rt>ひゃく</rt></ruby><ruby>回<rt>かい</rt></ruby>以上なら<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からなければいつでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Dưới 50 lần/phút hoặc trên 100 lần/phút thì báo. Không hiểu thì hỏi bất cứ lúc nào nhé.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 8:10, đo nhiệt độ lần đầu

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>朝<rt>あさ</rt></ruby>のバイタルを<ruby>測<rt>はか</rt></ruby>りますね。<br>*(Ông Tanaka, cháu Nguyễn đây ạ. Cháu xin vào. Cháu đo chỉ số buổi sáng nhé.)* |
| Ông Tanaka | ああ、どうぞ。<br>*(Ừ, vào đi.)* |
| Ngọc | まず<ruby>体温<rt>たいおん</rt></ruby>からです。<ruby>脇<rt>わき</rt></ruby>に<ruby>挟<rt>はさ</rt></ruby>んでください。<br>*(Trước tiên đo nhiệt độ ạ. Ông kẹp vào nách nhé.)* |
| Ông Tanaka | こうか?<br>*(Như thế này à?)* |
| Ngọc | はい、そうです。ありがとうございます。(một lúc sau) <ruby>36<rt>さんじゅうろく</rt></ruby>.<ruby>8<rt>はち</rt></ruby>℃です。<ruby>普通<rt>ふつう</rt></ruby>ですね。<br>*(Vâng, đúng rồi ạ. (lát sau) 36.8°C ạ. Bình thường nhỉ.)* |
| Ông Tanaka | そうか。<ruby>今日<rt>きょう</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>重<rt>おも</rt></ruby>い<ruby>気<rt>き</rt></ruby>がする。<br>*(Vậy à. Hôm nay tôi thấy người hơi nặng nề.)* |
| Ngọc | そうですか。<ruby>具体的<rt>ぐたいてき</rt></ruby>にどこか<ruby>痛<rt>いた</rt></ruby>いところはありますか?<br>*(Vậy ạ. Cụ thể ông có đau chỗ nào không ạ?)* |
| Ông Tanaka | いや、<ruby>痛<rt>いた</rt></ruby>いというわけではないが、<ruby>だるい<rt>だるい</rt></ruby>感じだ。<br>*(Không đau đâu, nhưng cảm giác mệt mỏi trong người.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>担当<rt>たんとう</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えますね。<br>*(Cháu hiểu rồi ạ. Cháu sẽ báo lại cho người phụ trách nhé.)* |

---

## Tình huống 3 — Phòng bà Sato · 8:30, phát hiện 微熱

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa) <ruby>佐藤<rt>さとう</rt></ruby>さん、グエンです。<ruby>体温<rt>たいおん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>りますね。<br>*(Bà Sato, cháu Nguyễn đây ạ. Cháu đo nhiệt độ nhé.)* |
| Bà Sato | はい、どうぞ。<br>*(Ừ, được đấy.)* |
| Ngọc | (nhìn nhiệt kế) <ruby>37<rt>さんじゅうなな</rt></ruby>.<ruby>6<rt>ろく</rt></ruby>℃...。<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>いですね。<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>体<rt>からだ</rt></ruby>の<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか?<br>*(37.6°C... Hơi cao nhỉ. Bà Sato, bà có cảm thấy ổn không ạ?)* |
| Bà Sato | なんとなく<ruby>頭<rt>あたま</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>い<ruby>気<rt>き</rt></ruby>がする。<br>*(Cảm thấy hơi đau đầu.)* |
| Ngọc | いつごろから<ruby>気<rt>き</rt></ruby>になりますか?<br>*(Từ khoảng bao giờ bà thấy vậy ạ?)* |
| Bà Sato | <ruby>朝<rt>あさ</rt></ruby>おきたときから、かしら。<br>*(Từ lúc sáng dậy, tôi nghĩ vậy.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>少<rt>すこ</rt></ruby>しやすんでいてください。すぐ<ruby>報告<rt>ほうこく</rt></ruby>してきます。<br>*(Cháu hiểu rồi ạ. Bà nghỉ thêm một lúc nhé. Cháu đi báo ngay bây giờ.)* |

---

## Tình huống 4 — Trạm y tá · 8:40, báo cáo 微熱 cho 看護師 đúng quy trình

| Vai | Lời thoại |
|---|---|
| Ngọc | すみません、<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>佐藤<rt>さとう</rt></ruby>さんなんですが...<br>*(Xin lỗi, cháu có báo cáo ạ. Về bà Sato ạ...)* |
| 看護師 | はい、どうぞ。<br>*(Vâng, nói đi.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>体温<rt>たいおん</rt></ruby>が<ruby>37<rt>さんじゅうなな</rt></ruby>.<ruby>6<rt>ろく</rt></ruby>℃です。<ruby>頭痛<rt>ずつう</rt></ruby>を<ruby>訴<rt>うった</rt></ruby>えていて、<ruby>朝<rt>あさ</rt></ruby>から<ruby>続<rt>つづ</rt></ruby>いているとおっしゃっています。<br>*(Nhiệt độ của bà Sato là 37.6°C ạ. Bà than đau đầu, và bà nói là từ sáng đến giờ ạ.)* |
| 看護師 | わかりました。<ruby>他<rt>ほか</rt></ruby>に<ruby>気<rt>き</rt></ruby>になることはありますか?<br>*(Hiểu rồi. Còn điều gì khác đáng chú ý không?)* |
| Ngọc | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>夕食<rt>ゆうしょく</rt></ruby>を<ruby>半分<rt>はんぶん</rt></ruby>しか<ruby>食<rt>た</rt></ruby>べていなかったと<ruby>記録<rt>きろく</rt></ruby>にありました。<br>*(Trong hồ sơ ghi bữa tối hôm qua bà chỉ ăn một nửa ạ.)* |
| 看護師 | いい<ruby>報告<rt>ほうこく</rt></ruby>ですね。「<ruby>誰<rt>だれ</rt></ruby>が・<ruby>何<rt>なに</rt></ruby>の<ruby>症状<rt>しょうじょう</rt></ruby>・<ruby>いつから<rt>いつから</rt></ruby>・<ruby>数値<rt>すうち</rt></ruby>」を<ruby>揃<rt>そろ</rt></ruby>えて<ruby>報告<rt>ほうこく</rt></ruby>できていますよ。<br>*(Báo cáo tốt đấy. Em đã báo đủ "ai — triệu chứng gì — từ bao giờ — số liệu cụ thể" rồi.)* |
| Ngọc | ありがとうございます。<ruby>これから<rt>これから</rt></ruby>も<ruby>そう<rt>そう</rt></ruby>します。<br>*(Cảm ơn ạ. Từ nay cháu sẽ làm như vậy.)* |

---

## Tình huống 5 — Phòng ông Kimura · 9:00, phát hiện 食欲低下

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、おはようございます。<ruby>朝ごはん<rt>あさごはん</rt></ruby>はいかがでしたか?<br>*(Ông Kimura, chào buổi sáng ạ. Bữa sáng ông ăn thế nào ạ?)* |
| Ông Kimura | あんまり<ruby>食欲<rt>しょくよく</rt></ruby>がないな。<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>食<rt>た</rt></ruby>べた。<br>*(Chẳng thấy ngon miệng lắm. Chỉ ăn một chút thôi.)* |
| Ngọc | そうですか。いつごろから<ruby>食欲<rt>しょくよく</rt></ruby>がありませんか?<br>*(Vậy ạ. Từ khoảng bao giờ ông thấy không ngon miệng ạ?)* |
| Ông Kimura | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>昼<rt>ひる</rt></ruby>ごろからかな。<br>*(Khoảng trưa hôm qua nhỉ.)* |
| Ngọc | のどの<ruby>痛<rt>いた</rt></ruby>みとか、<ruby>咳<rt>せき</rt></ruby>はありますか?<br>*(Ông có đau họng hay ho không ạ?)* |
| Ông Kimura | <ruby>咳<rt>せき</rt></ruby>がちょっと<ruby>出<rt>で</rt></ruby>る<ruby>気<rt>き</rt></ruby>はするな。<br>*(Có vẻ hơi ho một chút đấy.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>体温<rt>たいおん</rt></ruby>も<ruby>測<rt>はか</rt></ruby>らせてください。<ruby>今<rt>いま</rt></ruby>の<ruby>季節<rt>きせつ</rt></ruby>は<ruby>風邪<rt>かぜ</rt></ruby>が<ruby>流<rt>はや</rt></ruby>りやすいです。<br>*(Cháu hiểu rồi ạ. Để cháu đo nhiệt độ ông nhé. Mùa này dễ bị cảm lắm.)* |

---

## Tình huống 6 — Phòng ông Kimura · 9:15, báo cáo phức hợp: 食欲低下 + 咳

| Vai | Lời thoại |
|---|---|
| Ngọc | (đến trạm y tá) すみません。<ruby>木村<rt>きむら</rt></ruby>さんについて<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Xin lỗi ạ. Cháu xin báo cáo về ông Kimura.)* |
| 看護師 | はい。<br>*(Vâng.)* |
| Ngọc | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>昼<rt>ひる</rt></ruby>ごろから<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>低下<rt>ていか</rt></ruby>しています。<ruby>今朝<rt>けさ</rt></ruby>の<ruby>朝食<rt>ちょうしょく</rt></ruby>も<ruby>半分<rt>はんぶん</rt></ruby>ほどです。<ruby>軽<rt>かる</rt></ruby>い<ruby>咳<rt>せき</rt></ruby>もあります。<ruby>体温<rt>たいおん</rt></ruby>は<ruby>36<rt>さんじゅうろく</rt></ruby>.<ruby>9<rt>きゅう</rt></ruby>℃です。<br>*(Từ trưa hôm qua ông bị giảm cảm giác ngon miệng. Bữa sáng hôm nay cũng chỉ ăn được một nửa. Ngoài ra có ho nhẹ. Nhiệt độ là 36.9°C ạ.)* |
| 看護師 | <ruby>咳<rt>せき</rt></ruby>は<ruby>痰<rt>たん</rt></ruby>が<ruby>出<rt>で</rt></ruby>ていますか?<br>*(Khi ho có đờm không?)* |
| Ngọc | <ruby>確認<rt>かくにん</rt></ruby>していませんでした。<ruby>戻<rt>もど</rt></ruby>って<ruby>聞<rt>き</rt></ruby>いてきてもいいですか?<br>*(Cháu chưa kiểm tra ạ. Cháu có thể quay lại hỏi ông không ạ?)* |
| 看護師 | はい、お<ruby>願<rt>ねが</rt></ruby>いします。それも<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>です。わからないことは「<ruby>確認<rt>かくにん</rt></ruby>してきます」と<ruby>言<rt>い</rt></ruby>えばいいですよ。<br>*(Vâng, nhờ em nhé. Đó cũng là thông tin quan trọng. Cái gì chưa biết cứ nói "để cháu xác nhận lại" là được nhé.)* |

---

## Tình huống 7 — Phòng sinh hoạt · 10:00, Yamamoto giảng về phòng 脱水 mùa đông

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>冬<rt>ふゆ</rt></ruby>は<ruby>脱水<rt>だっすい</rt></ruby>にも<ruby>注意<rt>ちゅうい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>知<rt>し</rt></ruby>っていましたか?<br>*(Em Nguyễn, mùa đông cũng cần chú ý mất nước đấy. Em có biết không?)* |
| Ngọc | えっ、<ruby>夏<rt>なつ</rt></ruby>じゃないんですか?<ruby>冬<rt>ふゆ</rt></ruby>も<ruby>脱水<rt>だっすい</rt></ruby>になるんですか?<br>*(Ủa, không phải mùa hè sao ạ? Mùa đông cũng bị mất nước ạ?)* |
| Yamamoto | そうです。<ruby>寒<rt>さむ</rt></ruby>いと<ruby>のど<rt>のど</rt></ruby>が<ruby>渇<rt>かわ</rt></ruby>いたと<ruby>感<rt>かん</rt></ruby>じにくくなります。<ruby>高齢者<rt>こうれいしゃ</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>水分<rt>すいぶん</rt></ruby>を<ruby>飲<rt>の</rt></ruby>まなくなります。<br>*(Đúng vậy. Khi lạnh thì khó nhận ra cảm giác khát nước. Người cao tuổi đặc biệt ít uống nước.)* |
| Ngọc | では、どうすればいいですか?<br>*(Vậy thì phải làm gì ạ?)* |
| Yamamoto | <ruby>声<rt>こえ</rt></ruby>かけをして、こまめにお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>めます。「<ruby>喉<rt>のど</rt></ruby>が<ruby>渇<rt>かわ</rt></ruby>いていませんか?」と<ruby>聞<rt>き</rt></ruby>きながら<ruby>配<rt>くば</rt></ruby>ります。<br>*(Lên tiếng nhắc và thường xuyên mời trà. Vừa hỏi "Ông/bà có khát không?" vừa đưa nước nhé.)* |
| Ngọc | はい。<ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>が<ruby>乾燥<rt>かんそう</rt></ruby>しているのも<ruby>脱水<rt>だっすい</rt></ruby>のサインですか?<br>*(Vâng ạ. Miệng khô cũng là dấu hiệu của mất nước phải không ạ?)* |
| Yamamoto | その<ruby>通<rt>とお</rt></ruby>りです。よく<ruby>知<rt>し</rt></ruby>っていますね。<ruby>口<rt>くち</rt></ruby>の<ruby>乾燥<rt>かんそう</rt></ruby>・<ruby>尿<rt>にょう</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>が<ruby>濃<rt>こ</rt></ruby>い・ぼーっとする、これが<ruby>典型<rt>てんけい</rt></ruby>的なサインです。<br>*(Đúng vậy. Em biết rõ đấy. Miệng khô, nước tiểu đậm màu, đờ đẫn — đây là những dấu hiệu điển hình.)* |

---

## Tình huống 8 — Phòng bà Sato · 13:00, quan sát da đổi màu

| Vai | Lời thoại |
|---|---|
| Ngọc | (giúp bà Sato thay quần áo) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>お体<rt>おからだ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>きますね。<br>*(Bà Sato, cháu lau người cho bà nhé.)* |
| Bà Sato | ありがとう。<br>*(Cảm ơn cháu.)* |
| Ngọc | (phát hiện vùng đỏ ở lưng) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>腰<rt>こし</rt></ruby>のあたりが<ruby>少<rt>すこ</rt></ruby>し<ruby>赤<rt>あか</rt></ruby>くなっています。<ruby>痛<rt>いた</rt></ruby>くありませんか?<br>*(Bà Sato, vùng lưng của bà có chỗ hơi đỏ. Có đau không ạ?)* |
| Bà Sato | そこ? <ruby>少<rt>すこ</rt></ruby>し<ruby>痒<rt>かゆ</rt></ruby>い<ruby>気<rt>き</rt></ruby>がするわ。<br>*(Chỗ đó à? Cảm giác hơi ngứa đó cháu.)* |
| Ngọc | いつから<ruby>気<rt>き</rt></ruby>になりますか?<br>*(Từ khi nào bà thấy vậy ạ?)* |
| Bà Sato | さあ、<ruby>昨日<rt>きのう</rt></ruby>か、<ruby>一昨日<rt>おととい</rt></ruby>かしら。<br>*(Tôi không nhớ rõ, hôm qua hay hôm kia nhỉ.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。すぐ<ruby>確認<rt>かくにん</rt></ruby>してもらいます。<ruby>服<rt>ふく</rt></ruby>を<ruby>着<rt>き</rt></ruby>ましょうね。<br>*(Cháu hiểu rồi ạ. Cháu sẽ nhờ người kiểm tra ngay. Mình mặc áo vào nhé.)* |

---

## Tình huống 9 — Trạm y tá · 13:20, báo cáo 皮膚の変化 cho 看護師

| Vai | Lời thoại |
|---|---|
| Ngọc | すみません、<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>皮膚<rt>ひふ</rt></ruby>についてお<ruby>伝<rt>つた</rt></ruby>えしたいことがあります。<br>*(Xin lỗi, cháu có điều muốn báo về da của bà Sato ạ.)* |
| 看護師 | はい、どうぞ。<br>*(Vâng, nói đi.)* |
| Ngọc | <ruby>腰<rt>こし</rt></ruby>の<ruby>左側<rt>ひだりがわ</rt></ruby>、<ruby>親指<rt>おやゆび</rt></ruby>ほどの<ruby>大<rt>おお</rt></ruby>きさの<ruby>赤<rt>あか</rt></ruby>みがあります。<ruby>表面<rt>ひょうめん</rt></ruby>は<ruby>破<rt>やぶ</rt></ruby>れていません。<ruby>痒<rt>かゆ</rt></ruby>みがあるとおっしゃっています。<ruby>昨日<rt>きのう</rt></ruby>か<ruby>一昨日<rt>おととい</rt></ruby>から<ruby>気<rt>き</rt></ruby>になっているようです。<br>*(Vùng lưng bên trái, có vết đỏ khoảng bằng ngón tay cái. Bề mặt da chưa bị vỡ. Bà nói có cảm giác ngứa. Hình như từ hôm qua hoặc hôm kia ạ.)* |
| 看護師 | よく<ruby>気<rt>き</rt></ruby>がつきましたね。<ruby>初期<rt>しょき</rt></ruby>の<ruby>褥瘡<rt>じょくそう</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>今日<rt>きょう</rt></ruby>から<ruby>体位変換<rt>たいいへんかん</rt></ruby>の<ruby>頻度<rt>ひんど</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やします。<br>*(Em phát hiện sớm đấy. Có thể đây là loét tì đè giai đoạn đầu. Từ hôm nay tăng tần suất đổi tư thế nằm nhé.)* |
| Ngọc | はい。<ruby>記録<rt>きろく</rt></ruby>には<ruby>何<rt>なん</rt></ruby>と<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Vâng ạ. Vào hồ sơ cháu ghi thế nào ạ?)* |
| 看護師 | 「<ruby>腰部<rt>ようぶ</rt></ruby><ruby>左側<rt>ひだりがわ</rt></ruby>に<ruby>発赤<rt>はっせき</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>表皮<rt>ひょうひ</rt></ruby><ruby>損傷<rt>そんしょう</rt></ruby>なし。<ruby>看護師<rt>かんごし</rt></ruby>へ<ruby>報告<rt>ほうこく</rt></ruby><ruby>済<rt>ず</rt></ruby>み」と<ruby>書<rt>か</rt></ruby>いてください。<br>*(Ghi: "Phát hiện vùng đỏ ở lưng trái. Da chưa bị tổn thương. Đã báo y tá.")* |

---

## Tình huống 10 — Phòng sinh hoạt · 14:30, phòng lây 感染 mùa cúm — giải thích cho ông Kimura

| Vai | Lời thoại |
|---|---|
| Ông Kimura | グエンちゃん、なぜ<ruby>今日<rt>きょう</rt></ruby>は<ruby>マスク<rt>マスク</rt></ruby>しているの?<br>*(Cháu Nguyễn, sao hôm nay đeo khẩu trang vậy?)* |
| Ngọc | <ruby>今<rt>いま</rt></ruby>、<ruby>施設<rt>しせつ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>でインフルエンザが<ruby>流行<rt>はや</rt></ruby>っています。<ruby>感染<rt>かんせん</rt></ruby>しないように<ruby>気<rt>き</rt></ruby>をつけています。<br>*(Hiện tại trong cơ sở đang có dịch cúm lây. Cháu đang cẩn thận để không bị lây ạ.)* |
| Ông Kimura | そうか。ワシは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かな。<br>*(Vậy à. Không biết tôi có sao không nhỉ.)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さんは<ruby>今年<rt>ことし</rt></ruby>インフルエンザの<ruby>予防接種<rt>よぼうせっしゅ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けましたから、<ruby>少<rt>すこ</rt></ruby>し<ruby>安心<rt>あんしん</rt></ruby>です。でも<ruby>手洗<rt>てあら</rt></ruby>いが<ruby>大切<rt>たいせつ</rt></ruby>ですよ。<br>*(Ông đã tiêm phòng cúm năm nay rồi, nên yên tâm một phần. Nhưng rửa tay vẫn rất quan trọng nhé ạ.)* |
| Ông Kimura | そうだな。<ruby>手<rt>て</rt></ruby>はちゃんと<ruby>洗<rt>あら</rt></ruby>っているよ。<br>*(Đúng nhỉ. Tôi vẫn rửa tay đàng hoàng mà.)* |
| Ngọc | ありがとうございます。<ruby>気<rt>き</rt></ruby>になることがあったら、いつでも<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Cảm ơn ông ạ. Có gì bất thường, ông gọi cháu bất cứ lúc nào nhé.)* |

---

## Tình huống 11 — Trạm y tá · 16:00, Yamamoto kiểm tra 記録 và khen Ngọc

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>見<rt>み</rt></ruby>ました。<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>発赤<rt>はっせき</rt></ruby>と<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>食欲低下<rt>しょくよくていか</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>ちゃんと<ruby>書<rt>か</rt></ruby>けていますね。<br>*(Em Nguyễn, tôi đã xem hồ sơ hôm nay. Cả vết đỏ của bà Sato lẫn giảm ngon miệng của ông Kimura đều ghi đầy đủ đấy.)* |
| Ngọc | ありがとうございます。<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(Cảm ơn ạ. Cháu được y tá chỉ dạy.)* |
| Yamamoto | <ruby>記録<rt>きろく</rt></ruby>は「<ruby>事実<rt>じじつ</rt></ruby>」だけを<ruby>書<rt>か</rt></ruby>きます。「<ruby>元気<rt>げんき</rt></ruby>がない<ruby>気<rt>き</rt></ruby>がする」ではなく「<ruby>表情<rt>ひょうじょう</rt></ruby>が<ruby>暗<rt>くら</rt></ruby>い」「<ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さい」のように、<ruby>見<rt>み</rt></ruby>たことを<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。<br>*(Hồ sơ chỉ ghi "sự thật". Không ghi "cảm thấy thiếu năng lượng" mà ghi cụ thể những gì quan sát được: "nét mặt tối" hay "giọng nhỏ".)* |
| Ngọc | なるほど。<ruby>主観<rt>しゅかん</rt></ruby>じゃなく、<ruby>客観的<rt>きゃっかんてき</rt></ruby>な<ruby>事実<rt>じじつ</rt></ruby>を<ruby>書<rt>か</rt></ruby>くんですね。<br>*(Ra vậy ạ. Không phải nhận xét chủ quan, mà ghi sự thật khách quan nhỉ.)* |
| Yamamoto | そうです。<ruby>成長<rt>せいちょう</rt></ruby>していますね、グエンさん。<br>*(Đúng vậy. Em đang tiến bộ đấy, Nguyễn ạ.)* |
| Ngọc | ありがとうございます。<ruby>これからも<rt>これからも</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn ạ. Cháu sẽ tiếp tục cố gắng ạ.)* |

---

## Tình huống 12 — Ký túc xá · 21:30, nói chuyện với Đức

> Scene tiếng Việt — giữ mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Đức | Ngọc, mặt mày nghiêm thế. Hôm nay sao? |
| Ngọc | Dạ, hôm nay cháu phát hiện bà Sato bị đỏ lưng, có thể loét tì đè giai đoạn đầu. Cháu lo, không biết mình có báo đúng không. |
| Đức | Báo đúng rồi còn lo gì. Quan trọng là mày phát hiện ra, báo ngay — vậy là chuẩn. Nếu mày im không nói mới là vấn đề. |
| Ngọc | Dạ, y tá cũng khen cháu phát hiện sớm. Nhưng cháu vẫn thấy mình còn nhiều thứ chưa biết anh ơi. |
| Đức | Bình thường. Mày mới 9 tháng. Anh năm thứ hai mới thấy mình biết được cỡ 60%. Cứ ghi 記録 thật cẩn thận, báo cáo đủ thông tin — "ai, gì, từ bao giờ, số liệu" — là ổn. |
| Ngọc | Dạ, cháu hiểu rồi. Cảm ơn anh. |

---

## Đọng lại chương 9

Tháng 1, Ngọc bước vào vai trò mới: tự đo và đánh giá バイタル buổi sáng. Chương này nắm chắc quy trình **báo cáo chuẩn 4 yếu tố: 誰が・何の症状・いつから・数値**. Học phân biệt các dấu hiệu bất thường: **微熱** (37.5°C+, nhận biết qua nhiệt kế + đau đầu), **食欲低下** (hỏi thăm + đối chiếu hồ sơ bữa ăn), **皮膚の発赤** (quan sát khi chăm sóc cơ thể, ghi vị trí + kích thước + tình trạng da), **咳/痰** (hỏi cụ thể), **脱水** (nhắc uống nước thường xuyên, nhất là mùa đông). Học nguyên tắc ghi **記録**: chỉ ghi sự thật khách quan, tránh nhận xét chủ quan. Cuối cùng, học phòng lây 感染 (khẩu trang + rửa tay, tư vấn cho 利用者 về 予防接種).

> Từ vựng & mẫu câu chương này: バイタル測定・体温・血圧・脈拍・微熱・食欲低下・皮膚の発赤・褥瘡・咳・痰・脱水・インフルエンザ・予防接種・報告(誰が・症状・いつから・数値)・記録・客観的・事実・確認してきます・〜の可能性があります', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000010, 800000027, NULL, 'markdown_book', 'T10. Ca trực đêm đầu tiên (初めての夜勤)', '# Sách thực tập sinh điều dưỡng · T10. Ca trực đêm đầu tiên (初めての夜勤)

> **Mục tiêu nhân vật:** Ngọc lần đầu được phân công ca trực đêm (夜勤). Học các mẫu câu và quy trình nghiệp vụ đêm: 巡回・ナースコール・緊急対応・事故報告書・申し送り. Trải qua tình huống ông Kimura ngã trong phòng vệ sinh — phép thử thực sự đầu tiên về khả năng xử lý khẩn cấp.

---

## Bối cảnh

Tháng 3 năm 2027. Ngọc đã làm việc gần 1 năm tại「ひだまり苑」. Trình độ tiếng Nhật đang chuyển sang N3. Theo quy định, thực tập sinh vẫn phải trực đêm theo cặp với nhân viên chính thức (二人体制). Đêm nay Ngọc trực cùng tiền bối Nakamura-san — nhân viên dày dạn kinh nghiệm. Đây là ca trực đêm đầu tiên trong đời Ngọc.

---

## Tình huống 1 — Phòng họp ca · 21:30, thông báo phân công 夜勤

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>水曜日<rt>すいようび</rt></ruby>、<ruby>夜勤<rt>やきん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってもらいます。<ruby>中村<rt>なかむら</rt></ruby>さんと<ruby>二人体制<rt>ふたりたいせい</rt></ruby>です。<br>*(Em Nguyễn, thứ Tư tuần tới em vào ca trực đêm nhé. Hai người cùng làm với chị Nakamura.)* |
| Ngọc | えっ...は、はい。<ruby>夜勤<rt>やきん</rt></ruby>は、<ruby>何時<rt>なんじ</rt></ruby>から<ruby>何時<rt>なんじ</rt></ruby>ですか?<br>*(Ơ... v-vâng ạ. Ca đêm từ mấy giờ đến mấy giờ ạ?)* |
| Yamamoto | <ruby>夜<rt>よる</rt></ruby>の9<ruby>時<rt>じ</rt></ruby>から<ruby>翌朝<rt>よくあさ</rt></ruby>の9<ruby>時<rt>じ</rt></ruby>まで、12<ruby>時間<rt>じかん</rt></ruby>です。<br>*(Từ 9 giờ tối đến 9 giờ sáng hôm sau, 12 tiếng.)* |
| Ngọc | 12<ruby>時間<rt>じかん</rt></ruby>...。<ruby>何<rt>なに</rt></ruby>をすればいいですか?<br>*(12 tiếng... Cháu phải làm những gì ạ?)* |
| Yamamoto | <ruby>主<rt>おも</rt></ruby>に<ruby>三<rt>みっ</rt></ruby>つです。<ruby>巡回<rt>じゅんかい</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby>、そして<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>。<br>*(Chủ yếu có ba việc. Đi kiểm tra vòng, ghi chép, và xử lý khẩn cấp.)* |
| Ngọc | <ruby>巡回<rt>じゅんかい</rt></ruby>というのは...?<br>*(Đi kiểm tra vòng là...?)* |
| Yamamoto | <ruby>夜中<rt>よなか</rt></ruby>に<ruby>定期的<rt>ていきてき</rt></ruby>に<ruby>各部屋<rt>かくへや</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>って、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>することです。2<ruby>時間<rt>じかん</rt></ruby>ごとに<ruby>回<rt>まわ</rt></ruby>ります。<br>*(Là đi vòng quanh từng phòng định kỳ vào ban đêm để kiểm tra tình trạng của người sử dụng dịch vụ. Cứ mỗi 2 tiếng đi một vòng.)* |
| Ngọc | はい。それから、ナースコールはどうすれば...?<br>*(Vâng ạ. Còn chuông y tá thì xử lý thế nào ạ...?)* |
| Yamamoto | ナースコールが<ruby>鳴<rt>な</rt></ruby>ったら、<ruby>必<rt>かなら</rt></ruby>ず<ruby>二人<rt>ふたり</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>します。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>しないでください。<ruby>必<rt>かなら</rt></ruby>ず<ruby>中村<rt>なかむら</rt></ruby>さんに<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Khi chuông y tá reo, nhất định phải xử lý cùng nhau. Đừng tự mình phán đoán. Nhất định phải xác nhận với chị Nakamura nhé.)* |
| Ngọc | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, cháu nhất định sẽ xác nhận ạ.)* |

---

## Tình huống 2 — Phòng họp giao ca · (ca đêm đó) 20:45, nhận 申し送り trước khi vào ca

| Vai | Lời thoại |
|---|---|
| Nhân viên ca chiều | では、<ruby>申し送り<rt>もうしおくり</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今夜<rt>こんや</rt></ruby>の<ruby>注意事項<rt>ちゅういじこう</rt></ruby>からです。<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>から<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>低下<rt>ていか</rt></ruby>しています。<ruby>水分<rt>すいぶん</rt></ruby>も<ruby>少<rt>すく</rt></ruby>なめです。<br>*(Vậy, bắt đầu bàn giao ca nhé. Bắt đầu từ những lưu ý tối nay. Bà Sato từ chiều nay giảm ăn. Uống nước cũng ít hơn.)* |
| Nakamura | <ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>夜間<rt>やかん</rt></ruby>の<ruby>水分<rt>すいぶん</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>します。ほかには?<br>*(Tôi sẽ kiểm tra lượng nước của bà Sato vào ban đêm. Còn gì nữa không?)* |
| Nhân viên ca chiều | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>昨夜<rt>さくや</rt></ruby>から<ruby>咳<rt>せき</rt></ruby>が<ruby>出<rt>で</rt></ruby>ています。<ruby>熱<rt>ねつ</rt></ruby>は<ruby>今<rt>いま</rt></ruby>のところなしですが、<ruby>夜中<rt>よなか</rt></ruby>に<ruby>状態<rt>じょうたい</rt></ruby>が<ruby>変化<rt>へんか</rt></ruby>したらすぐ<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Ông Tanaka từ tối hôm qua có ho. Hiện chưa sốt, nhưng nếu đêm nay tình trạng thay đổi thì báo ngay nhé.)* |
| Ngọc | (メモを<ruby>取<rt>と</rt></ruby>りながら) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>咳<rt>せき</rt></ruby>あり、<ruby>発熱<rt>はつねつ</rt></ruby>なし...。<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>食欲<rt>しょくよく</rt></ruby>・<ruby>水分<rt>すいぶん</rt></ruby><ruby>低下<rt>ていか</rt></ruby>...。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(vừa ghi chú) Ông Tanaka, có ho, chưa sốt... Bà Sato, giảm ăn và giảm uống nước... Rõ rồi ạ.)* |
| Nhân viên ca chiều | <ruby>木村<rt>きむら</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>から<ruby>就寝前<rt>しゅうしんまえ</rt></ruby>に<ruby>安定剤<rt>あんていざい</rt></ruby>が<ruby>追加<rt>ついか</rt></ruby>になりました。<ruby>薬<rt>くすり</rt></ruby>はナースから<ruby>渡<rt>わた</rt></ruby>してもらいます。<br>*(Ông Kimura từ hôm nay được thêm thuốc an thần trước khi ngủ. Thuốc y tá sẽ đưa.)* |
| Nakamura | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>以上<rt>いじょう</rt></ruby>ですか?<br>*(Rõ rồi. Hết chưa ạ?)* |
| Nhân viên ca chiều | はい、<ruby>以上<rt>いじょう</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>でした。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, hết rồi ạ. Cảm ơn đã làm việc chăm chỉ. Nhờ các bạn nhé.)* |
| Ngọc | (心の中で: 申し送りって、たくさん<ruby>情報<rt>じょうほう</rt></ruby>が<ruby>一気<rt>いっき</rt></ruby>に<ruby>来<rt>く</rt></ruby>るんだ。メモが<ruby>大事<rt>だいじ</rt></ruby>。)<br>*(trong lòng: Bàn giao ca có quá nhiều thông tin đến cùng lúc nhỉ. Phải ghi chú thật kỹ.)* |

---

## Tình huống 3 — Phòng trực · 21:00, chị Nakamura hướng dẫn chuẩn bị

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、<ruby>初<rt>はじ</rt></ruby>めての<ruby>夜勤<rt>やきん</rt></ruby>ですね。<ruby>緊張<rt>きんちょう</rt></ruby>してますか?<br>*(Em Nguyễn, ca đêm đầu tiên nhỉ. Em có hồi hộp không?)* |
| Ngọc | はい、<ruby>少<rt>すこ</rt></ruby>し...。<ruby>心配<rt>しんぱい</rt></ruby>なことがいくつかあります。<br>*(Vâng, hơi hồi hộp ạ... Có một vài điều cháu lo lắng.)* |
| Nakamura | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>一緒<rt>いっしょ</rt></ruby>にいますから。まず、<ruby>巡回<rt>じゅんかい</rt></ruby>の<ruby>チェックリスト<rt>チェックリスト</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Không sao đâu. Chị cùng ở đây mà. Trước tiên, nhìn vào bảng kiểm tra đi vòng đi nhé.)* |
| Ngọc | はい。「<ruby>呼吸<rt>こきゅう</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>」「<ruby>体位<rt>たいい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>」「<ruby>おむつ<rt>おむつ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>の<ruby>必要性<rt>ひつようせい</rt></ruby>」...これをチェックするのですか?<br>*(Vâng. "Kiểm tra hô hấp", "kiểm tra tư thế nằm", "có cần đổi tã không"... Phải kiểm tra những thứ này ạ?)* |
| Nakamura | そうです。それから、<ruby>部屋<rt>へや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るときは<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>かけしてください。たとえ<ruby>眠<rt>ねむ</rt></ruby>っていても。<br>*(Đúng rồi. Ngoài ra, khi vào phòng thì nhất định phải lên tiếng trước nhé. Dù họ đang ngủ đi nữa.)* |
| Ngọc | <ruby>眠<rt>ねむ</rt></ruby>っていても声かけするのですか?<br>*(Dù đang ngủ vẫn phải lên tiếng ạ?)* |
| Nakamura | はい。「<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>夜中<rt>よなか</rt></ruby>にすみません。<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました」と<ruby>静<rt>しず</rt></ruby>かに<ruby>言<rt>い</rt></ruby>えばいいですよ。<ruby>突然<rt>とつぜん</rt></ruby><ruby>触<rt>さわ</rt></ruby>ると<ruby>驚<rt>おどろ</rt></ruby>かせてしまいますから。<br>*(Vâng. Nói nhẹ thôi: "Ông Tanaka, xin lỗi vào đêm khuya nhé. Cháu đến xem tình hình ông." Vì nếu đột ngột chạm vào sẽ làm họ giật mình.)* |
| Ngọc | なるほど。<ruby>夜中<rt>よなか</rt></ruby>でも声かけは<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Ra vậy. Dù đêm khuya thì lên tiếng trước vẫn quan trọng nhỉ.)* |
| Nakamura | それから、<ruby>緊急<rt>きんきゅう</rt></ruby>のときは、まず「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか!」と<ruby>声<rt>こえ</rt></ruby>をかけて、<ruby>次<rt>つぎ</rt></ruby>にナースに<ruby>連絡<rt>れんらく</rt></ruby>です。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れないでください。<br>*(Ngoài ra, khi khẩn cấp, trước tiên lên tiếng "Em có ổn không!", rồi mới liên lạc với y tá. Đừng quên thứ tự nhé.)* |
| Ngọc | はい、<ruby>覚<rt>おぼ</rt></ruby>えました。まず声かけ、<ruby>次<rt>つぎ</rt></ruby>にナースへ<ruby>連絡<rt>れんらく</rt></ruby>。<br>*(Vâng, cháu nhớ rồi ạ. Trước tiên lên tiếng, sau đó liên lạc y tá.)* |

---

## Tình huống 4 — Hành lang · 23:30, lần 巡回 đầu tiên trong đêm

| Vai | Lời thoại |
|---|---|
| Nakamura | では、<ruby>一回目<rt>いっかいめ</rt></ruby>の<ruby>巡回<rt>じゅんかい</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。グエンさんが<ruby>声<rt>こえ</rt></ruby>かけをしてみてください。<br>*(Vậy mình đi vòng kiểm tra lần đầu nhé. Em Nguyễn thử lên tiếng đi.)* |
| Ngọc | (thở sâu, bước vào phòng ông Tanaka, giọng nhẹ) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>夜中<rt>よなか</rt></ruby>にすみません。グエンです。<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(— Ông Tanaka, xin lỗi vào đêm khuya nhé. Cháu Nguyễn đây. Cháu đến xem tình hình ông.)* |
| Ông Tanaka | (nhẹ mở mắt, giọng buồn ngủ) ...ああ、グエンか。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<br>*(... À, Nguyễn à. Ông ổn thôi.)* |
| Ngọc | <ruby>体<rt>からだ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きは<ruby>楽<rt>らく</rt></ruby>ですか?<ruby>痛<rt>いた</rt></ruby>いところはないですか?<br>*(Tư thế nằm có thoải mái không ạ? Có chỗ nào đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。ゆっくり<ruby>休<rt>やす</rt></ruby>ませてくれ。<br>*(Ổn rồi. Để ông nghỉ yên.)* |
| Ngọc | はい、すみません。おやすみなさい。<br>*(Vâng, xin lỗi ông ạ. Ông ngủ ngon nhé.)* |
| Nakamura | (ra hành lang, nói nhỏ) <ruby>上手<rt>じょうず</rt></ruby>ですよ。<ruby>声<rt>こえ</rt></ruby>のトーンもよかったです。<br>*(Tốt lắm. Giọng điệu cũng tốt đấy.)* |
| Ngọc | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しました。でも、<ruby>少<rt>すこ</rt></ruby>し<ruby>慣<rt>な</rt></ruby>れてきました。<br>*(Cảm ơn chị ạ. Cháu hồi hộp quá. Nhưng cháu đã quen dần rồi.)* |

---

## Tình huống 5 — Hành lang · 0:10, ông Tanaka bấm ナースコール — cần đi vệ sinh

| Vai | Lời thoại |
|---|---|
| (ナースコール音が鳴る) | |
| Ngọc | (bộ đàm) はい、<ruby>田中<rt>たなか</rt></ruby>さん、どうしましたか?<br>*(Vâng, ông Tanaka, có chuyện gì ạ?)* |
| Ông Tanaka | (giọng buồn ngủ, ngập ngừng) あの...トイレに<ruby>行<rt>い</rt></ruby>きたいんだが、<ruby>一人<rt>ひとり</rt></ruby>では<ruby>心配<rt>しんぱい</rt></ruby>で。<br>*(Ừm... tôi muốn đi vệ sinh, nhưng đi một mình ngại quá.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>今<rt>いま</rt></ruby>すぐ<ruby>参<rt>まい</rt></ruby>ります。(Nakamura-sanを呼ぶ) <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんがトイレに<ruby>行<rt>い</rt></ruby>きたいそうです。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます。<br>*(Rõ rồi ạ. Cháu đến ngay. — Chị Nakamura, ông Tanaka muốn đi vệ sinh ạ. Mình cùng đến nhé.)* |
| Nakamura | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>先<rt>さき</rt></ruby>に<ruby>行<rt>い</rt></ruby>って<ruby>声<rt>こえ</rt></ruby>かけしてください。<br>*(Được. Em đến trước và lên tiếng đi.)* |
| Ngọc | (phòng ông Tanaka, giọng nhẹ) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。トイレ、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<ruby>起<rt>お</rt></ruby>き<ruby>上<rt>あ</rt></ruby>がるとき、ゆっくりでいいですよ。<br>*(Ông Tanaka, cháu Nguyễn đây. Mình đi vệ sinh cùng nhé. Khi ngồi dậy cứ từ từ thôi ạ.)* |
| Ông Tanaka | (ngồi dậy chậm) ありがとう。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>呼<rt>よ</rt></ruby>んで<ruby>悪<rt>わる</rt></ruby>いね。<br>*(Cảm ơn cháu. Gọi vào đêm khuya làm phiền nhỉ.)* |
| Ngọc | <ruby>全然<rt>ぜんぜん</rt></ruby>です。そのためにいますから。<ruby>転<rt>こ</rt></ruby>ばないように、ゆっくり<ruby>行<rt>い</rt></ruby>きましょう。(そっと<ruby>腕<rt>うで</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>える)<br>*(Không có gì đâu ạ. Cháu ở đây để làm điều này mà. Đi chậm thôi để khỏi bị ngã nhé. (nhẹ nhàng đỡ tay ông))* |
| Nakamura | (theo sau, nói nhỏ với Ngọc) <ruby>夜間<rt>やかん</rt></ruby>のトイレ<ruby>介助<rt>かいじょ</rt></ruby>は<ruby>転倒<rt>てんとう</rt></ruby>リスクが<ruby>高<rt>たか</rt></ruby>いです。<ruby>必<rt>かなら</rt></ruby>ず<ruby>付<rt>つ</rt></ruby>き<ruby>添<rt>そ</rt></ruby>ってください。<br>*(Hỗ trợ đi vệ sinh ban đêm có nguy cơ ngã cao. Nhất định phải đi kèm nhé.)* |
| Ngọc | はい、<ruby>分<rt>わ</rt></ruby>かりました。(心の中で: ナースコールは<ruby>面倒<rt>めんどう</rt></ruby>じゃない。<ruby>安全<rt>あんぜん</rt></ruby>のためにある。)<br>*(Vâng, rõ rồi ạ. — trong lòng: Chuông y tá không phải phiền phức. Nó tồn tại để đảm bảo an toàn.)* |

---

## Tình huống 6 — Hành lang gần phòng vệ sinh · 1:40, phát hiện ông Kimura ngã

| Vai | Lời thoại |
|---|---|
| (Tiếng động mạnh từ phòng vệ sinh) | |
| Ngọc | (giật mình, chạy đến) <ruby>木村<rt>きむら</rt></ruby>さん！<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか！<br>*(Ông Kimura! Ông có ổn không!)* |
| Ông Kimura | (ngã xuống sàn, giọng yếu) い、<ruby>痛<rt>いた</rt></ruby>い...<ruby>足<rt>あし</rt></ruby>が...<br>*(Đ, đau... chân tôi...)* |
| Ngọc | (quỳ xuống, không di chuyển ngay, giọng bình tĩnh) <ruby>今<rt>いま</rt></ruby>、<ruby>動<rt>うご</rt></ruby>かさないでください。<ruby>中村<rt>なかむら</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>びます。<ruby>待<rt>ま</rt></ruby>っていてください。<br>*(Bây giờ đừng cử động nhé. Cháu gọi chị Nakamura. Ông đợi một chút nhé.)* |
| Ông Kimura | ああ...頼む...<br>*(Ừ... nhờ cháu...)* |
| Ngọc | (gọi qua máy bộ đàm, giọng rõ ràng) <ruby>中村<rt>なかむら</rt></ruby>さん！<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>トイレ<rt>トイレ</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>しました！<ruby>すぐ来<rt>すぐき</rt></ruby>てください！<br>*(Chị Nakamura! Ông Kimura ngã trong nhà vệ sinh rồi! Chị đến ngay được không!)* |
| Nakamura | (qua máy) <ruby>分<rt>わ</rt></ruby>かりました。<ruby>今<rt>いま</rt></ruby>すぐ<ruby>行<rt>い</rt></ruby>きます。ナースにも<ruby>連絡<rt>れんらく</rt></ruby>しますか?<br>*(Tôi hiểu rồi. Đến ngay. Tôi liên lạc y tá luôn nhé?)* |
| Ngọc | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>木村<rt>きむら</rt></ruby>さんは<ruby>足<rt>あし</rt></ruby>に<ruby>痛<rt>いた</rt></ruby>みがあります。<br>*(Vâng, nhờ chị. Ông Kimura bị đau chân ạ.)* |

---

## Tình huống 7 — Phòng vệ sinh → phòng ông Kimura · 1:45, ứng cứu và sơ cứu

| Vai | Lời thoại |
|---|---|
| Nakamura | (đến nơi, cúi xuống kiểm tra) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>意識<rt>いしき</rt></ruby>はありますか?<ruby>頭<rt>あたま</rt></ruby>は<ruby>打<rt>う</rt></ruby>ちましたか?<br>*(Ông Kimura, ông còn tỉnh không? Có đập đầu không?)* |
| Ông Kimura | <ruby>頭<rt>あたま</rt></ruby>は...たぶん<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>腰<rt>こし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>い。<br>*(Đầu... chắc không sao. Nhưng lưng đau.)* |
| Nakamura | グエンさん、ナースが<ruby>来<rt>き</rt></ruby>るまで<ruby>木村<rt>きむら</rt></ruby>さんのそばにいてください。<ruby>体<rt>からだ</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かさないように。<br>*(Em Nguyễn, ở cạnh ông Kimura cho đến khi y tá đến nhé. Đừng cho ông ấy cử động.)* |
| Ngọc | はい。(ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、すぐに<ruby>看護師<rt>かんごし</rt></ruby>さんが<ruby>来<rt>き</rt></ruby>ますよ。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですからね。<br>*(Vâng. — Ông Kimura, y tá đến ngay thôi ạ. Ông yên tâm nhé.)* |
| Ông Kimura | ありがとう...グエンちゃん。こんな<ruby>夜中<rt>よなか</rt></ruby>に<ruby>迷惑<rt>めいわく</rt></ruby>かけて...<br>*(Cảm ơn cháu... Nguyễn. Làm phiền cháu vào đêm khuya thế này...)* |
| Ngọc | <ruby>迷惑<rt>めいわく</rt></ruby>じゃないですよ。これが<ruby>仕事<rt>しごと</rt></ruby>ですから。<ruby>寒<rt>さむ</rt></ruby>くないですか? (lấy chăn đắp) <br>*(Không phiền gì đâu ạ. Đây là việc của cháu mà. Ông có lạnh không? —)* |
| Y tá trực | (đến kiểm tra) <ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いがあります。レントゲンは<ruby>朝<rt>あさ</rt></ruby>になります。<ruby>今夜<rt>こんや</rt></ruby>はベッドで<ruby>安静<rt>あんせい</rt></ruby>にしてください。<br>*(Có khả năng bị gãy xương. Chụp X-quang phải đợi đến sáng. Tối nay nằm yên trên giường nhé.)* |
| Nakamura | (Ngọc) <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>対応<rt>たいおう</rt></ruby>できましたよ。<ruby>立派<rt>りっぱ</rt></ruby>でした。<br>*(Em xử lý bình tĩnh lắm. Giỏi đấy.)* |
| Ngọc | ありがとうございます。でも、<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていました...<br>*(Cảm ơn chị. Nhưng tay cháu run lắm...)* |
| Nakamura | それで<ruby>普通<rt>ふつう</rt></ruby>ですよ。<ruby>大事<rt>だいじ</rt></ruby>なのは、<ruby>行動<rt>こうどう</rt></ruby>できたことですから。<br>*(Vậy là bình thường thôi. Quan trọng là em đã hành động được.)* |

---

## Tình huống 8 — Phòng trực · 2:15, ghi 夜勤日誌 — ghi chép ca đêm

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>が<ruby>書<rt>か</rt></ruby>けたら、<ruby>夜勤<rt>やきん</rt></ruby><ruby>日誌<rt>にっし</rt></ruby>も<ruby>書<rt>か</rt></ruby>いてください。<ruby>今夜<rt>こんや</rt></ruby>の<ruby>巡回<rt>じゅんかい</rt></ruby><ruby>記録<rt>きろく</rt></ruby>と<ruby>特記事項<rt>とっきじこう</rt></ruby>をまとめます。<br>*(Em Nguyễn, viết xong báo cáo sự cố rồi thì viết nhật ký ca đêm nhé. Tổng hợp ghi chép đi vòng tối nay và các sự kiện đặc biệt.)* |
| Ngọc | <ruby>夜勤<rt>やきん</rt></ruby><ruby>日誌<rt>にっし</rt></ruby>...どんなことを<ruby>書<rt>か</rt></ruby>くのですか?<br>*(Nhật ký ca đêm... Cháu viết những gì ạ?)* |
| Nakamura | <ruby>巡回<rt>じゅんかい</rt></ruby>した<ruby>時間<rt>じかん</rt></ruby>と<ruby>各利用者<rt>かくりようしゃ</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>、ナースコール<ruby>対応<rt>たいおう</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>、それと<ruby>気<rt>き</rt></ruby>になったことを<ruby>書<rt>か</rt></ruby>きます。<ruby>特<rt>とく</rt></ruby>に<ruby>変化<rt>へんか</rt></ruby>がなければ「<ruby>異常<rt>いじょう</rt></ruby>なし」と<ruby>書<rt>か</rt></ruby>いてもいいです。<br>*(Giờ đi vòng và tình trạng từng người sử dụng dịch vụ, nội dung xử lý chuông y tá, và những điều đáng lưu ý. Nếu không có gì thay đổi thì viết "không có bất thường" cũng được.)* |
| Ngọc | (書いてみて) 「23<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、<ruby>一回目巡回<rt>いっかいめじゅんかい</rt></ruby>。<ruby>田中<rt>たなか</rt></ruby>さん：<ruby>入眠中<rt>にゅうみんちゅう</rt></ruby>、<ruby>異常<rt>いじょう</rt></ruby>なし。<ruby>木村<rt>きむら</rt></ruby>さん：<ruby>入眠中<rt>にゅうみんちゅう</rt></ruby>、<ruby>異常<rt>いじょう</rt></ruby>なし。」こんな<ruby>感<rt>かん</rt></ruby>じですか?<br>*(Viết thử — "23 giờ 30 phút, đi vòng lần 1. Ông Tanaka: đang ngủ, không có bất thường. Ông Kimura: đang ngủ, không có bất thường." — Như vậy được không ạ?)* |
| Nakamura | いいです。ただ、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>咳<rt>せき</rt></ruby>は<ruby>特記<rt>とっき</rt></ruby>してください。「<ruby>咳<rt>せき</rt></ruby>あり、<ruby>発熱<rt>はつねつ</rt></ruby>なし、<ruby>呼吸<rt>こきゅう</rt></ruby><ruby>安定<rt>あんてい</rt></ruby>」のように。<br>*(Được rồi. Nhưng tiếng ho của ông Tanaka thì ghi đặc biệt nhé. Kiểu như "có ho, chưa sốt, hô hấp ổn định".)* |
| Ngọc | わかりました。(書き加えて) それから、0<ruby>時<rt>じ</rt></ruby>10<ruby>分<rt>ぷん</rt></ruby>のナースコールも<ruby>書<rt>か</rt></ruby>きます。「<ruby>田中<rt>たなか</rt></ruby>さん、トイレ<ruby>介助<rt>かいじょ</rt></ruby>。<ruby>転倒<rt>てんとう</rt></ruby>なく<ruby>終了<rt>しゅうりょう</rt></ruby>」でいいですか?<br>*(Rõ rồi. — (viết thêm) Rồi cháu cũng ghi chuông y tá lúc 0 giờ 10 phút. "Hỗ trợ ông Tanaka đi vệ sinh. Kết thúc không có sự cố ngã." — Được không ạ?)* |
| Nakamura | そうです。<ruby>短<rt>みじか</rt></ruby>くても、<ruby>事実<rt>じじつ</rt></ruby>だけを<ruby>書<rt>か</rt></ruby>く。グエンさん、<ruby>上手<rt>じょうず</rt></ruby>ですよ。<br>*(Đúng vậy. Dù ngắn nhưng chỉ ghi sự thật. Em Nguyễn giỏi đấy.)* |
| Ngọc | (ほっとして) ありがとうございます。<ruby>記録<rt>きろく</rt></ruby>ってこんなに<ruby>大事<rt>だいじ</rt></ruby>なんですね。<br>*(thở phào) Cảm ơn chị. Ghi chép quan trọng thế này nhỉ.)* |

---

## Tình huống 9 — Phòng trực · 3:00, viết 事故報告書

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<ruby>転倒<rt>てんとう</rt></ruby>があったときは<ruby>必<rt>かなら</rt></ruby>ず<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Em Nguyễn, viết báo cáo sự cố nhé. Khi có người ngã thì nhất định phải ghi chép lại.)* |
| Ngọc | <ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>...どう<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Báo cáo sự cố... Cháu viết thế nào ạ?)* |
| Nakamura | 5W1Hで<ruby>書<rt>か</rt></ruby>きます。<ruby>誰<rt>だれ</rt></ruby>が、<ruby>何時<rt>なんじ</rt></ruby>に、どこで、<ruby>何<rt>なに</rt></ruby>をして、どうなったか。そして<ruby>対応<rt>たいおう</rt></ruby>した<ruby>内容<rt>ないよう</rt></ruby>。<br>*(Viết theo 5W1H. Ai, lúc mấy giờ, ở đâu, làm gì, kết quả ra sao. Rồi nội dung xử lý.)* |
| Ngọc | (viết thử) 「<ruby>午前<rt>ごぜん</rt></ruby>1<ruby>時<rt>じ</rt></ruby>40<ruby>分頃<rt>ぷんごろ</rt></ruby>、<ruby>木村<rt>きむら</rt></ruby><ruby>様<rt>さま</rt></ruby>がトイレ<ruby>内<rt>ない</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>されているのを<ruby>発見<rt>はっけん</rt></ruby>した。<ruby>腰部<rt>ようぶ</rt></ruby>に<ruby>痛<rt>いた</rt></ruby>みを<ruby>訴<rt>うった</rt></ruby>えており...」こんな感じですか?<br>*(— "Khoảng 1 giờ 40 phút sáng, phát hiện ông Kimura ngã trong nhà vệ sinh. Ông kêu đau vùng thắt lưng..." — Như vậy có đúng không ạ?)* |
| Nakamura | いいですよ。「<ruby>訴<rt>うった</rt></ruby>えており」という<ruby>表現<rt>ひょうげん</rt></ruby>もよかったです。<ruby>客観的<rt>きゃっかんてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>けています。<br>*(Tốt lắm. Cách dùng "kêu đau" cũng tốt đấy. Em đã viết một cách khách quan rồi.)* |
| Ngọc | 「<ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>い」という<ruby>言葉<rt>ことば</rt></ruby>も<ruby>書<rt>か</rt></ruby>いていいですか?<br>*(Cụm "có khả năng gãy xương" cháu có thể viết vào không ạ?)* |
| Nakamura | はい、「<ruby>看護師<rt>かんごし</rt></ruby>が<ruby>確認<rt>かくにん</rt></ruby>したところ、<ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いがあり、<ruby>朝<rt>あさ</rt></ruby>にレントゲン<ruby>予定<rt>よてい</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてください。<ruby>事実<rt>じじつ</rt></ruby>と<ruby>対応<rt>たいおう</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けて<ruby>書<rt>か</rt></ruby>くのが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Vâng, viết "Sau khi y tá kiểm tra, có khả năng bị gãy xương, dự kiến chụp X-quang vào buổi sáng". Quan trọng là tách biệt sự thật và xử lý.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>事実<rt>じじつ</rt></ruby>と<ruby>対応<rt>たいおう</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けて<ruby>書<rt>か</rt></ruby>く...メモします。<br>*(Cháu hiểu rồi ạ. Tách biệt sự thật và xử lý... Cháu ghi lại.)* |

---

## Tình huống 10 — Hành lang · 6:30, 巡回 lần cuối — bàn giao chi tiết trước ca sáng

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に、<ruby>最後<rt>さいご</rt></ruby>の<ruby>巡回<rt>じゅんかい</rt></ruby>をしてください。<ruby>各部屋<rt>かくへや</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>して、<ruby>日勤<rt>にっきん</rt></ruby>の<ruby>引き継ぎ<rt>ひきつぎ</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>をまとめます。<br>*(Em Nguyễn, trước khi bàn giao ca sáng, em đi vòng lần cuối nhé. Kiểm tra tình trạng từng phòng rồi tổng hợp thông tin bàn giao cho ca ngày.)* |
| Ngọc | はい。(phòng bà Sato, giọng nhẹ) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>朝<rt>あさ</rt></ruby>ですよ。<ruby>気分<rt>きぶん</rt></ruby>はいかがですか?<br>*(Vâng. — Bà Sato, sáng rồi ạ. Bà thấy trong người thế nào ạ?)* |
| Bà Sato | (目を覚ます) ああ、あなた。<ruby>夜<rt>よる</rt></ruby>は<ruby>ゆっくり眠れた<rt>ゆっくりねむれた</rt></ruby>わ。<br>*(tỉnh dậy) À, cháu đó. Đêm qua ngủ ngon lắm.)* |
| Ngọc | よかったです。お<ruby>水<rt>みず</rt></ruby>、<ruby>飲<rt>の</rt></ruby>みますか?(コップを差し出す)<br>*(Tốt quá. Bà uống nước không ạ? (đưa cốc))* |
| Bà Sato | (のんで) ありがとう。<ruby>今日<rt>きょう</rt></ruby>は<ruby>娘<rt>むすめ</rt></ruby>が<ruby>来<rt>く</rt></ruby>るかしら。<br>*(uống) Cảm ơn. Hôm nay con gái tôi có đến không nhỉ.)* |
| Ngọc | どうでしょうね。<ruby>会<rt>あ</rt></ruby>えるといいですね。(心の中で: <ruby>水分<rt>すいぶん</rt></ruby>OK。<ruby>気分<rt>きぶん</rt></ruby>も<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いている。<ruby>日勤<rt>にっきん</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>える。)<br>*(Không biết nữa. Gặp được thì tốt nhỉ. — trong lòng: Uống nước ổn. Tinh thần cũng bình tĩnh. Nhớ báo cho ca ngày.)* |
| Nakamura | (hành lang, nói nhỏ) <ruby>木村<rt>きむら</rt></ruby>さんは?<br>*(Còn ông Kimura thì sao?)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さんは<ruby>安静<rt>あんせい</rt></ruby>にされています。<ruby>痛<rt>いた</rt></ruby>みは「<ruby>少<rt>すこ</rt></ruby>しある」とおっしゃっていました。<ruby>顔色<rt>かおいろ</rt></ruby>は<ruby>普通<rt>ふつう</rt></ruby>です。<br>*(Ông Kimura đang nằm yên. Ông nói "vẫn còn đau một chút". Sắc mặt bình thường.)* |
| Nakamura | よくできました。その<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>申し送り<rt>もうしおくり</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<br>*(Tốt lắm. Đưa thông tin đó vào nội dung bàn giao ca nhé.)* |
| Ngọc | はい。(メモに書き加えながら) <ruby>引き継ぎ<rt>ひきつぎ</rt></ruby>って、ちゃんと<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しないといけないんですね。<br>*(Vâng. — (viết thêm vào ghi chú) Bàn giao ca phải kiểm tra đúng thứ tự nhỉ.)* |

---

## Tình huống 11 — Phòng họp giao ca · 9:00, 申し送り lần đầu

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、<ruby>申し送り<rt>もうしおくり</rt></ruby>は<ruby>始<rt>はじ</rt></ruby>めてですね。<ruby>夜勤<rt>やきん</rt></ruby>で<ruby>起<rt>お</rt></ruby>きたことを、<ruby>日勤<rt>にっきん</rt></ruby>のスタッフに<ruby>伝<rt>つた</rt></ruby>えます。<ruby>分<rt>わ</rt></ruby>かりやすく、<ruby>簡潔<rt>かんけつ</rt></ruby>に。<br>*(Em Nguyễn, lần đầu bàn giao ca nhỉ. Em truyền đạt những gì xảy ra trong ca đêm cho nhân viên ca ngày nhé. Dễ hiểu, súc tích.)* |
| Ngọc | はい。えーと...「<ruby>夜間<rt>やかん</rt></ruby>は<ruby>全体的<rt>ぜんたいてき</rt></ruby>に<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていました。ナースコールは3<ruby>回<rt>かい</rt></ruby>ありました。」...<ruby>木村<rt>きむら</rt></ruby>さんのことも<ruby>報告<rt>ほうこく</rt></ruby>します。「<ruby>午前<rt>ごぜん</rt></ruby>1<ruby>時<rt>じ</rt></ruby>40<ruby>分頃<rt>ぷんごろ</rt></ruby>、<ruby>木村<rt>きむら</rt></ruby>さんがトイレで<ruby>転倒<rt>てんとう</rt></ruby>されました。<ruby>看護師<rt>かんごし</rt></ruby>が<ruby>対応<rt>たいおう</rt></ruby>し、<ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いで<ruby>朝<rt>あさ</rt></ruby>にレントゲン<ruby>予定<rt>よてい</rt></ruby>です。」<br>*(Vâng. Ừm... "Đêm nhìn chung yên tĩnh. Chuông y tá reo 3 lần." ...Cháu cũng báo cáo chuyện ông Kimura. "Khoảng 1 giờ 40 phút sáng, ông Kimura ngã trong nhà vệ sinh. Y tá đã xử lý, có khả năng gãy xương, dự kiến chụp X-quang buổi sáng.")* |
| Nhân viên ca ngày | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>はできていますか?<br>*(Rõ rồi. Báo cáo sự cố đã làm xong chưa?)* |
| Ngọc | はい、<ruby>書<rt>か</rt></ruby>きました。こちらです。<br>*(Vâng, cháu đã viết xong ạ. Đây ạ.)* |
| Yamamoto | グエンさん、<ruby>申し送り<rt>もうしおくり</rt></ruby>、よくできました。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>話<rt>はな</rt></ruby>せましたね。<br>*(Em Nguyễn, bàn giao ca tốt lắm. Em nói bình tĩnh nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>夜勤<rt>やきん</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>でしたが、いろいろ<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Cảm ơn chị ạ. Ca đêm vất vả nhưng cháu học được nhiều thứ.)* |
| Yamamoto | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>をしたのは、<ruby>大変<rt>たいへん</rt></ruby>だったと<ruby>思<rt>おも</rt></ruby>います。でも、<ruby>正<rt>ただ</rt></ruby>しく<ruby>動<rt>うご</rt></ruby>けました。お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>でした。<br>*(Ca đêm đầu tiên mà phải xử lý tình huống người ngã, chắc vất vả lắm. Nhưng em đã hành động đúng rồi. Em đã làm việc chăm chỉ rồi.)* |
| Ngọc | ありがとうございます。<ruby>帰<rt>かえ</rt></ruby>って<ruby>少<rt>すこ</rt></ruby>し<ruby>休<rt>やす</rt></ruby>みます。でも、また<ruby>夜勤<rt>やきん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りたいです。<br>*(Cảm ơn chị. Cháu về nghỉ một chút. Nhưng cháu muốn làm ca đêm nữa ạ.)* |

---

## Đọng lại chương 6

Ca trực đêm đầu tiên, Ngọc đi qua trọn vẹn chu kỳ của 夜勤: nhận **申し送り** đầy thông tin từ ca chiều, **巡回 định kỳ** mỗi 2 tiếng, hỗ trợ **ナースコール đêm khuya** khi ông Tanaka cần đi vệ sinh — hiểu rằng chuông không phải phiền phức mà là an toàn. Phát hiện ông Kimura ngã — **緊急対応** đúng thứ tự: giữ bình tĩnh, không tự di chuyển, liên lạc đồng nghiệp và y tá. Ghi **夜勤日誌** theo sự thật, viết **事故報告書** theo 5W1H. Sáng ra, lần đầu **巡回 cuối** kiểm tra từng phòng rồi **申し送り** súc tích trước ca ngày — khép lại 12 tiếng bằng sự trưởng thành thật sự.

> Từ vựng & mẫu câu chương này: 夜勤・二人体制・申し送り・注意事項・特記事項・巡回・ナースコール・トイレ介助・見守り・転倒・発見・緊急対応・応援要請・夜勤日誌・異常なし・入眠中・事故報告書・骨折の疑い・客観的・5W1H・引き継ぎ・〜の疑いがあり・〜予定です・〜と訴えており', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000011, 800000027, NULL, 'markdown_book', 'T11. Tổng kết năm 1 (一年目の振り返り)', '# Sách thực tập sinh điều dưỡng · T11. Tổng kết năm 1 (一年目の振り返り)

> **Mục tiêu nhân vật:** Ngọc tròn 1 năm làm TTS điều dưỡng tại Hidamari-en (4/2026 → 3/2027). Chương này ghi lại buổi 面談 đánh giá chính thức với Yamamoto, xen các tình huống chăm sóc hàng ngày để thấy Ngọc đã thành thạo hơn rõ rệt so với ngày đầu.

---

## Bối cảnh

Cuối tháng 3 năm 2027. Ngọc sắp kết thúc năm thực tập thứ nhất. Yamamoto tổ chức buổi 面談 (phỏng vấn đánh giá) theo định kỳ. Ngọc lo lắng nhưng cũng tự hào nhìn lại hành trình 12 tháng: từ cô gái chưa biết gõ cửa phòng người dùng dịch vụ, đến nay đã làm được các 介助 cơ bản độc lập. Trình độ tiếng Nhật chớm N4+.

---

## Tình huống 1 — Phòng ăn sáng · 7:00, chuẩn bị ca và bàn giao thông tin

| Vai | Lời thoại |
|---|---|
| Nhân viên đêm | グエンさん、おはようございます。<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りします。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>昨夜<rt>さくや</rt></ruby>は<ruby>良<rt>よ</rt></ruby>く<ruby>眠<rt>ねむ</rt></ruby>れていました。バイタルも<ruby>安定<rt>あんてい</rt></ruby>しています。<br>*(Em Nguyễn, chào buổi sáng. Tôi bàn giao nhé. Ông Tanaka tối qua ngủ ngon. Sinh hiệu cũng ổn định.)* |
| Ngọc | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さんはいかがでしたか?<br>*(Cảm ơn chị. Bà Sato thế nào ạ?)* |
| Nhân viên đêm | <ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>夜中<rt>よなか</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby><ruby>起<rt>お</rt></ruby>き出して、<ruby>廊下<rt>ろうか</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>いていました。<ruby>声<rt>こえ</rt></ruby>をかけてお<ruby>部屋<rt>へや</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>りました。<br>*(Bà Sato nửa đêm dậy một lần, đi bộ ra hành lang. Tôi lên tiếng gọi bà và đưa bà về phòng rồi.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>午前<rt>ごぜん</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>をしっかり<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>木村<rt>きむら</rt></ruby>さんのほうは?<br>*(Rõ ạ. Em sẽ theo dõi kỹ tình trạng buổi sáng. Còn ông Kimura thì sao ạ?)* |
| Nhân viên đêm | <ruby>木村<rt>きむら</rt></ruby>さんは<ruby>問題<rt>もんだい</rt></ruby>なしです。では、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Ông Kimura không vấn đề gì. Mong em nhé. Vất vả rồi.)* |
| Ngọc | お<ruby>疲<rt>つか</rt></ruby>れさまでした。ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Chị vất vả rồi. Chị nghỉ ngơi nhé.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 8:00, hỗ trợ 起き上がり và chào buổi sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>ってもよろしいですか?<br>*(Ông Tanaka, cháu là Nguyễn. Cháu vào được không ạ?)* |
| Ông Tanaka | ああ、いいよ。<br>*(Ừ, vào đi.)* |
| Ngọc | おはようございます。<ruby>今日<rt>きょう</rt></ruby>のご<ruby>気分<rt>きぶん</rt></ruby>はいかがですか?<br>*(Chào buổi sáng ông ạ. Hôm nay ông cảm thấy thế nào ạ?)* |
| Ông Tanaka | まあまあだな。<ruby>右<rt>みぎ</rt></ruby><ruby>半身<rt>はんしん</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>しだるい。<br>*(Bình thường thôi. Nửa người bên phải hơi nặng nề.)* |
| Ngọc | そうですか。では、ゆっくり<ruby>起<rt>お</rt></ruby>き<ruby>上<rt>あ</rt></ruby>がりましょう。<ruby>ベッド<rt>ベッド</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>起<rt>お</rt></ruby>こしますね。<br>*(Vậy ạ. Thế thì mình từ từ ngồi dậy nhé. Cháu nâng đầu giường lên một chút nhé.)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>む。<br>*(Ừ, nhờ cháu.)* |
| Ngọc | では、<ruby>麻痺<rt>まひ</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>足<rt>あし</rt></ruby>から<ruby>横<rt>よこ</rt></ruby>に<ruby>向<rt>む</rt></ruby>けますね。<ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Cháu xoay chân bên liệt ra ngoài trước nhé. Có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。グエンさん、<ruby>上手<rt>うま</rt></ruby>くなったな。<br>*(Không sao. Cháu Nguyễn, khéo tay hơn nhiều rồi đấy.)* |
| Ngọc | ありがとうございます。では、<ruby>足<rt>あし</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>に<ruby>降<rt>お</rt></ruby>ろして、ゆっくり<ruby>起<rt>お</rt></ruby>きてください。<br>*(Cảm ơn ông ạ. Thế thì ông hạ chân xuống sàn, từ từ ngồi dậy nhé.)* |

---

## Tình huống 3 — Phòng sinh hoạt · 9:00, hoạt động buổi sáng với bà Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、おはようございます。グエンです。<ruby>今日<rt>きょう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bà Sato, chào buổi sáng ạ. Cháu là Nguyễn. Hôm nay cũng mong bà nhé.)* |
| Bà Sato | あら、あなたは...どなたでしたっけ?<br>*(Ồ, cháu là... cháu là ai nhỉ?)* |
| Ngọc | グエンです。ベトナムから<ruby>来<rt>き</rt></ruby>たグエンです。いつもお<ruby>世話<rt>せわ</rt></ruby>しています。<br>*(Cháu là Nguyễn ạ. Nguyễn từ Việt Nam đến. Cháu hay chăm sóc bà ạ.)* |
| Bà Sato | あ、そう。<ruby>今日<rt>きょう</rt></ruby>は<ruby>暖<rt>あたた</rt></ruby>かいわね。<br>*(À, vậy à. Hôm nay ấm nhỉ.)* |
| Ngọc | そうですね。<ruby>今日<rt>きょう</rt></ruby>はいいお<ruby>天気<rt>てんき</rt></ruby>ですよ。<ruby>窓<rt>まど</rt></ruby>から<ruby>桜<rt>さくら</rt></ruby>が<ruby>見<rt>み</rt></ruby>えますよ。ご<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ませんか?<br>*(Đúng vậy ạ. Hôm nay trời đẹp. Từ cửa sổ nhìn thấy hoa anh đào đấy bà. Mình cùng ngắm không ạ?)* |
| Bà Sato | まあ、<ruby>桜<rt>さくら</rt></ruby>!<ruby>見<rt>み</rt></ruby>たい<ruby>見<rt>み</rt></ruby>たい。<br>*(Ồ, hoa anh đào! Tôi muốn xem muốn xem.)* |
| Ngọc | では、<ruby>車椅子<rt>くるまいす</rt></ruby>で<ruby>窓<rt>まど</rt></ruby>のそばに<ruby>行<rt>い</rt></ruby>きましょう。<ruby>準備<rt>じゅんび</rt></ruby>しますね。<br>*(Thế thì mình đẩy xe lăn ra gần cửa sổ nhé bà. Cháu chuẩn bị nhé.)* |

---

## Tình huống 4 — Hành lang · 10:00, phối hợp với đồng nghiệp hỗ trợ di chuyển ông Tanaka

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんをリハビリ<ruby>室<rt>しつ</rt></ruby>に<ruby>移乗<rt>いじょう</rt></ruby>するの、<ruby>一緒<rt>いっしょ</rt></ruby>にやってもらえますか?<br>*(Chị Nguyễn, em giúp chị chuyển ông Tanaka vào phòng phục hồi chức năng được không?)* |
| Ngọc | はい、もちろんです。<ruby>田中<rt>たなか</rt></ruby>さん、リハビリ<ruby>室<rt>しつ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きますね。<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<br>*(Vâng, được ạ. Ông Tanaka, mình đi phòng phục hồi chức năng nhé. Mình chuyển sang xe lăn nhé.)* |
| Ông Tanaka | ああ。<br>*(Ừ.)* |
| Mai-san | では、グエンさんは<ruby>麻痺<rt>まひ</rt></ruby><ruby>側<rt>がわ</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えてください。私が<ruby>健側<rt>けんそく</rt></ruby>から<ruby>誘導<rt>ゆうどう</rt></ruby>します。<br>*(Thế thì em Nguyễn đỡ bên liệt nhé. Chị dẫn dắt từ bên lành.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>足<rt>あし</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>につけてください。ゆっくり<ruby>立<rt>た</rt></ruby>ちますよ。<br>*(Rõ ạ. Ông Tanaka, ông đặt chân xuống sàn nhé. Từ từ đứng lên nhé.)* |
| Ông Tanaka | (đứng dậy) よし。<br>*(Được rồi.)* |
| Mai-san | グエンさん、<ruby>上手<rt>じょうず</rt></ruby>ですね。<ruby>去年<rt>きょねん</rt></ruby>より<ruby>全然<rt>ぜんぜん</rt></ruby>ちがう。<br>*(Chị Nguyễn làm khéo quá. Khác hẳn năm ngoái.)* |
| Ngọc | ありがとうございます。<ruby>先輩<rt>せんぱい</rt></ruby>たちに<ruby>教<rt>おし</rt></ruby>えていただいたおかげです。<br>*(Cảm ơn chị ạ. Nhờ các chị đã dạy em.)* |

---

## Tình huống 5 — Bên ông Kimura · 11:00, trò chuyện trong lúc chăm sóc

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>爪<rt>つめ</rt></ruby>を<ruby>切<rt>き</rt></ruby>りますね。いいですか?<br>*(Ông Kimura, cháu cắt móng tay cho ông nhé. Được không ạ?)* |
| Ông Kimura | ああ、いいよ。グエンちゃんは<ruby>一年<rt>いちねん</rt></ruby>になるね。<br>*(Ừ được. Cháu Nguyễn sắp được một năm rồi nhỉ.)* |
| Ngọc | はい。<ruby>来月<rt>らいつき</rt></ruby>で<ruby>一年<rt>いちねん</rt></ruby>です。<ruby>早<rt>はや</rt></ruby>いですね。<br>*(Vâng. Tháng sau tròn một năm ạ. Nhanh thật nhỉ.)* |
| Ông Kimura | はじめは<ruby>泣<rt>な</rt></ruby>きそうな<ruby>顔<rt>かお</rt></ruby>をしていたな。<br>*(Lúc đầu cháu mặt mày như sắp khóc ấy.)* |
| Ngọc | (cười nhẹ) そうでしたか...。ご<ruby>迷惑<rt>めいわく</rt></ruby>をかけましたね。<br>*(Vậy ạ... Chắc cháu làm phiền ông nhiều nhỉ.)* |
| Ông Kimura | そんなことないよ。<ruby>最初<rt>さいしょ</rt></ruby>からちゃんとやろうとしていたよ。<ruby>私<rt>わたし</rt></ruby>には<ruby>分<rt>わ</rt></ruby>かる。<br>*(Không có đâu. Ngay từ đầu cháu đã cố gắng đàng hoàng rồi. Ông biết mà.)* |
| Ngọc | ありがとうございます。<ruby>木村<rt>きむら</rt></ruby>さんに<ruby>励<rt>はげ</rt></ruby>まされると<ruby>嬉<rt>うれ</rt></ruby>しいです。はい、<ruby>爪<rt>つめ</rt></ruby>、きれいになりましたよ。<br>*(Cháu cảm ơn ông ạ. Được ông động viên cháu vui lắm. Xong rồi ạ, móng tay ông sạch rồi nhé.)* |

---

## Tình huống 6 — Phòng ăn · 12:00, hỗ trợ bữa trưa thành thạo

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>昼食<rt>ちゅうしょく</rt></ruby>は<ruby>刻<rt>きざ</rt></ruby>み<ruby>食<rt>しょく</rt></ruby>です。では、<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってください。<br>*(Ông Tanaka, bữa trưa hôm nay là thức ăn thái nhỏ ạ. Mời ông dùng bữa.)* |
| Ông Tanaka | ありがとう。<ruby>今日<rt>きょう</rt></ruby>は<ruby>何<rt>なに</rt></ruby>だ?<br>*(Cảm ơn. Hôm nay ăn gì vậy?)* |
| Ngọc | <ruby>魚<rt>さかな</rt></ruby>の<ruby>煮付<rt>につ</rt></ruby>けと、お<ruby>味噌汁<rt>みそしる</rt></ruby>です。おいしいですよ。<br>*(Cá kho và canh miso ạ. Ngon lắm đấy ông.)* |
| Ông Tanaka | (ăn một miếng) うん、まあまあだな。<br>*(Ừ, cũng được.)* |
| Ngọc | (quan sát) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>ゆっくり<rt>ゆっくり</rt></ruby><ruby>食<rt>た</rt></ruby>べてくださいね。<ruby>むせたら<rt>むせたら</rt></ruby><ruby>教<rt>おし</rt></ruby>えてください。<br>*(Ông Tanaka, ăn từ từ thôi nhé. Nếu bị sặc thì nói cháu biết ngay nhé.)* |
| Ông Tanaka | 分かった。<ruby>心配<rt>しんぱい</rt></ruby>するな。<br>*(Biết rồi. Đừng lo.)* |
| Ngọc | (心の中で: <ruby>食事<rt>しょくじ</rt></ruby><ruby>量<rt>りょう</rt></ruby>は<ruby>普通<rt>ふつう</rt></ruby>ですね。<ruby>記録<rt>きろく</rt></ruby>しておこう。)<br>*(trong lòng: Lượng ăn bình thường. Ghi lại nhé.)* |

---

## Tình huống 7 — Phòng 面談 · 14:00, buổi đánh giá chính thức với Yamamoto (phần 1)

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、どうぞ<ruby>座<rt>すわ</rt></ruby>ってください。<ruby>今日<rt>きょう</rt></ruby>は<ruby>一年<rt>いちねん</rt></ruby>の<ruby>振り返<rt>ふりかえ</rt></ruby>りの<ruby>面談<rt>めんだん</rt></ruby>をします。<br>*(Em Nguyễn, mời em ngồi. Hôm nay mình sẽ làm buổi đánh giá nhìn lại một năm nhé.)* |
| Ngọc | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị ạ.)* |
| Yamamoto | まず、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>一年間<rt>いちねんかん</rt></ruby>を<ruby>振り返<rt>ふりかえ</rt></ruby>って、どう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Trước tiên, em tự nhìn lại một năm qua, em nghĩ thế nào?)* |
| Ngọc | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>何<rt>なに</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりませんでした。<ruby>声<rt>こえ</rt></ruby>かけの<ruby>仕方<rt>しかた</rt></ruby>も、<ruby>介助<rt>かいじょ</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>も。<br>*(Lúc đầu em thực sự không biết gì cả. Cách lên tiếng, cách hỗ trợ — cái gì cũng không biết ạ.)* |
| Ngọc | でも<ruby>今<rt>いま</rt></ruby>は、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>起<rt>お</rt></ruby>き<ruby>上<rt>あ</rt></ruby>がりや<ruby>移乗<rt>いじょう</rt></ruby>は、ある<ruby>程度<rt>ていど</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でできるようになりました。<br>*(Nhưng bây giờ, việc đỡ ông Tanaka ngồi dậy hay chuyển chỗ, em đã có thể tự làm ở mức cơ bản rồi ạ.)* |
| Yamamoto | そうですね。<ruby>成長<rt>せいちょう</rt></ruby>しましたよ。<ruby>特<rt>とく</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>かけが<ruby>自然<rt>しぜん</rt></ruby>になりました。<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>気遣<rt>きづか</rt></ruby>いも<ruby>伝<rt>つた</rt></ruby>わっています。<br>*(Đúng vậy. Em đã tiến bộ nhiều. Đặc biệt cách lên tiếng đã trở nên tự nhiên hơn. Sự quan tâm của em với các cụ cũng được cảm nhận tốt.)* |
| Ngọc | ありがとうございます。<br>*(Cảm ơn chị ạ.)* |

---

## Tình huống 8 — Phòng 面談 · 14:15, buổi đánh giá — điểm cần cải thiện

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>一方<rt>いっぽう</rt></ruby>で、<ruby>課題<rt>かだい</rt></ruby>もあります。グエンさん、<ruby>気<rt>き</rt></ruby>がついていますか?<br>*(Mặt khác, cũng có điểm cần cải thiện. Em Nguyễn, em có nhận ra không?)* |
| Ngọc | ...はい。<ruby>急変<rt>きゅうへん</rt></ruby>のときの<ruby>対応<rt>たいおう</rt></ruby>が、まだ<ruby>遅<rt>おそ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>います。あとは、チームへの<ruby>報告<rt>ほうこく</rt></ruby>が<ruby>足<rt>た</rt></ruby>りない<ruby>時<rt>とき</rt></ruby>がありました。<br>*(Vâng ạ. Em nghĩ em xử lý khi có dấu hiệu thay đổi đột ngột còn chậm. Và có lúc em báo cáo cho nhóm chưa đủ ạ.)* |
| Yamamoto | よく<ruby>分<rt>わ</rt></ruby>かっていますね。そこです。<ruby>気<rt>き</rt></ruby>になることは、<ruby>小<rt>ちい</rt></ruby>さいことでもすぐ<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>です。<br>*(Em nhận ra đúng rồi. Đó chính là điểm ấy. Điều gì lo ngại, dù nhỏ cũng phải báo cáo — liên lạc — thảo luận ngay.)* |
| Ngọc | ほうれんそう、ですね。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Báo cáo — liên lạc — thảo luận ạ. Em sẽ chú ý hơn.)* |
| Yamamoto | あと、<ruby>記録<rt>きろく</rt></ruby>の<ruby>文章<rt>ぶんしょう</rt></ruby>をもう<ruby>少<rt>すこ</rt></ruby>し<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>くとよいです。例えば「<ruby>食欲<rt>しょくよく</rt></ruby>あり」だけでなく「<ruby>全量摂取<rt>ぜんりょうせっしゅ</rt></ruby>」と<ruby>書<rt>か</rt></ruby>く。<br>*(Thêm nữa, viết nhật ký chăm sóc cụ thể hơn một chút thì tốt. Ví dụ không chỉ "có cảm giác ngon miệng" mà viết "ăn hết toàn bộ phần".)* |
| Ngọc | はい、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。ありがとうございます。<br>*(Vâng, em sẽ viết cụ thể hơn. Cảm ơn chị ạ.)* |

---

## Tình huống 9 — Phòng 面談 · 14:30, đặt mục tiêu năm 2

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、<ruby>二年目<rt>にねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Vậy cho chị nghe về mục tiêu năm 2 của em nhé.)* |
| Ngọc | はい。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>日本語能力試験<rt>にほんごのうりょくしけん</rt></ruby>N3に<ruby>合格<rt>ごうかく</rt></ruby>したいです。<ruby>今年<rt>ことし</rt></ruby>の<ruby>十二月<rt>じゅうにがつ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けます。<br>*(Vâng. Thứ nhất, em muốn đậu kỳ thi năng lực tiếng Nhật N3. Em sẽ thi vào tháng 12 năm nay ạ.)* |
| Yamamoto | いいですね。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Tốt đấy. Thứ hai là gì?)* |
| Ngọc | <ruby>介護<rt>かいご</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めたいです。<ruby>将来<rt>しょうらい</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>したいので。<br>*(Em muốn bắt đầu chuẩn bị cho kỳ thi kỹ năng điều dưỡng ạ. Vì em muốn chuyển sang tư cách lưu trú kỹ năng đặc định trong tương lai.)* |
| Yamamoto | それは<ruby>良<rt>よ</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>としても、<ruby>応援<rt>おうえん</rt></ruby>します。<ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なときは、<ruby>相談<rt>そうだん</rt></ruby>してください。<br>*(Đó là mục tiêu tốt. Công ty chúng tôi cũng ủng hộ em. Khi cần thời gian học, cứ thảo luận với chị nhé.)* |
| Ngọc | はい、ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, cảm ơn chị. Em sẽ cố gắng ạ.)* |

---

## Tình huống 10 — Phòng sinh hoạt · 15:30, ông Tanaka hỏi về kết quả 面談

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>面談<rt>めんだん</rt></ruby>があったんだろう。どうだった?<br>*(Cháu Nguyễn, hôm nay có phỏng vấn đánh giá phải không. Thế nào rồi?)* |
| Ngọc | はい。<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>良<rt>よ</rt></ruby>い<ruby>評価<rt>ひょうか</rt></ruby>もいただきましたが、<ruby>課題<rt>かだい</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Vâng ạ. Chị Yamamoto có khen cháu, nhưng cũng chỉ ra điểm cần cải thiện ạ.)* |
| Ông Tanaka | そうか。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれるのはいいことだ。<br>*(Vậy à. Nói thẳng thắn như thế là tốt đấy.)* |
| Ngọc | そうですね。<ruby>二年目<rt>にねんめ</rt></ruby>はN3と<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にします。<br>*(Đúng ạ. Năm 2 cháu đặt mục tiêu N3 và kỳ thi kỹ năng ạ.)* |
| Ông Tanaka | <ruby>頑張<rt>がんば</rt></ruby>れ。グエンさんならできる。ここ<ruby>一年<rt>いちねん</rt></ruby>で<ruby>随分<rt>ずいぶん</rt></ruby>よくなったからな。<br>*(Cố lên. Cháu Nguyễn làm được. Một năm nay cháu tiến bộ nhiều lắm rồi đấy.)* |
| Ngọc | ありがとうございます、<ruby>田中<rt>たなか</rt></ruby>さん。そのお<ruby>言葉<rt>ことば</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn ông Tanaka ạ. Câu đó của ông làm cháu vui nhất đấy ạ.)* |

---

## Tình huống 11 — Phòng sinh hoạt · 16:00, bà Sato nhìn hoa anh đào cuối ngày

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>、きれいでしたね。<br>*(Bà Sato, hoa anh đào hôm nay đẹp thật nhỉ.)* |
| Bà Sato | ええ、きれいだった。<ruby>毎年<rt>まいとし</rt></ruby><ruby>見<rt>み</rt></ruby>ていても、<ruby>飽<rt>あ</rt></ruby>きないわね。<br>*(Đúng, đẹp lắm. Năm nào ngắm cũng không chán nhỉ.)* |
| Ngọc | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ましょうね。<br>*(Năm sau mình cùng ngắm nữa nhé bà.)* |
| Bà Sato | そうね。...あなた、<ruby>名前<rt>なまえ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしたっけ?<br>*(Nhỉ. ...Cháu tên gì ấy nhỉ?)* |
| Ngọc | (nhẹ nhàng) グエンです。グエン・ゴック。ベトナムから<ruby>来<rt>き</rt></ruby>たグエンです。<br>*(Cháu là Nguyễn ạ. Nguyễn Ngọc. Nguyễn từ Việt Nam đến.)* |
| Bà Sato | グエンさん...。いい<ruby>名前<rt>なまえ</rt></ruby>ね。<br>*(Nguyễn à... Cái tên hay đấy nhỉ.)* |
| Ngọc | ありがとうございます。ゆっくり<ruby>休<rt>やす</rt></ruby>んでくださいね。<br>*(Cảm ơn bà ạ. Bà nghỉ ngơi nhé.)* |

---

## Tình huống 12 — Ký túc · 21:30, tổng kết với Đức

> Scene tiếng Việt — mạch nhân vật, nhìn lại năm 1 thực chất.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Sao,面談 thế nào? |
| Ngọc | (tiếng Việt) Ổn anh. Chị Yamamoto khen cháu tiến bộ, nhưng cũng chỉ ra cháu báo cáo chưa đủ, viết hồ sơ chưa cụ thể. |
| Đức | (tiếng Việt) Đó là ý kiến xây dựng, tốt hơn là chỉ khen. Năm 2 tính sao? |
| Ngọc | (tiếng Việt) Thi N3 tháng 12. Và chuẩn bị thi kỹ năng đặc định. Chị Yamamoto nói công ty ủng hộ. |
| Đức | (tiếng Việt) Vậy là ổn. Ít nhất còn biết mình đang ở đâu, đang đi đâu. Ngủ đi, sáng mai còn ca. |
| Ngọc | (tiếng Việt) Dạ. Cảm ơn anh. |

---

## Đọng lại chương 11

Năm 1 khép lại với buổi 面談 thẳng thắn: Yamamoto đánh giá cao sự tiến bộ của Ngọc về **声かけ tự nhiên** và **介助 cơ bản**, đồng thời chỉ ra điểm cần cải thiện là **ほうれんそう** và **記録の具体性**. Ngọc đặt mục tiêu năm 2 rõ ràng: **N3 (12月)** và **特定技能への準備**. Tình cảm với 利用者 — ông Tanaka đã thật sự tin tưởng, bà Sato quên rồi lại nhớ, ông Kimura vẫn ấm áp — là nền tảng để tiếp tục.

> Từ vựng & mẫu câu chương này: 申し送り・バイタル・安定・起き上がり・麻痺側・健側・移乗・誘導・刻み食・全量摂取・面談・振り返り・成長・課題・報告・連絡・相談(ほうれんそう)・具体的・日本語能力試験・特定技能・技能検定・目標', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (827000012, 800000027, NULL, 'markdown_book', 'T12. Là thành viên ê-kíp (チームの一員として)', '# Sách thực tập sinh điều dưỡng · T12. Là thành viên ê-kíp (チームの一員として)

> **Mục tiêu nhân vật:** Chương kết năm 1. Ngọc phối hợp nhịp nhàng với đồng nghiệp Nhật trong ca làm, được giao việc độc lập hơn, nhận sự tin tưởng từ 利用者. Khép lại năm 1 ấm áp, hé mở năm 2.

---

## Bối cảnh

Cuối tháng 3 năm 2027, những ngày cuối cùng của năm thực tập thứ nhất. Nhịp làm việc của Ngọc tại Hidamari-en đã ổn định: phối hợp 移乗 2 người, hỗ trợ đồng nghiệp khi bận, nhận việc độc lập hơn. 利用者 đã quen mặt, quen giọng, quen cách chăm sóc của cô. Chương này ghi lại một ca làm việc như thế — bình thường mà ấm áp.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 7:15, nhận phân công ca ngày

| Vai | Lời thoại |
|---|---|
| Yamamoto | おはようございます。では、<ruby>今日<rt>きょう</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。グエンさんは<ruby>田中<rt>たなか</rt></ruby>さんと<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>担当<rt>たんとう</rt></ruby>です。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>してください。<br>*(Chào buổi sáng mọi người. Xác nhận phân công hôm nay nhé. Em Nguyễn phụ trách ông Tanaka và ông Kimura. Buổi sáng em tự xử lý nhé.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>佐藤<rt>さとう</rt></ruby>さんは?<br>*(Vâng, em rõ ạ. Bà Sato thì sao ạ?)* |
| Yamamoto | <ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>、マイさんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>入浴<rt>にゅうよく</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>があります。グエンさんには<ruby>午後<rt>ごご</rt></ruby>にフォローをお<ruby>願<rt>ねが</rt></ruby>いするかもしれません。<br>*(Bà Sato hôm nay có hỗ trợ tắm với chị Mai. Buổi chiều chị có thể nhờ em hỗ trợ thêm.)* |
| Ngọc | はい、いつでも<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Vâng, khi nào cần chị cứ gọi em ạ.)* |
| Yamamoto | では<ruby>今日<rt>きょう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hôm nay cũng mong mọi người nhé.)* |
| Nhân viên (đồng thanh) | よろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Mong mọi người nhé!)* |

---

## Tình huống 2 — Phòng ông Tanaka · 8:00, chăm sóc buổi sáng độc lập

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>朝<rt>あさ</rt></ruby>のお<ruby>世話<rt>せわ</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<ruby>入<rt>はい</rt></ruby>ってもよろしいですか?<br>*(Ông Tanaka, cháu là Nguyễn. Cháu đến chăm sóc buổi sáng ạ. Cháu vào được không?)* |
| Ông Tanaka | ああ、どうぞ。<br>*(Ừ, vào đi.)* |
| Ngọc | おはようございます。<ruby>昨夜<rt>さくや</rt></ruby>はよく<ruby>眠<rt>ねむ</rt></ruby>れましたか?<br>*(Chào buổi sáng ông ạ. Tối qua ông ngủ ngon không ạ?)* |
| Ông Tanaka | まあまあだ。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>一回<rt>いっかい</rt></ruby>、<ruby>喉<rt>のど</rt></ruby>が<ruby>渇<rt>かわ</rt></ruby>いて<ruby>起<rt>お</rt></ruby>きた。<br>*(Bình thường thôi. Nửa đêm dậy một lần vì khát.)* |
| Ngọc | そうですか。お<ruby>水<rt>みず</rt></ruby>はちゃんと<ruby>飲<rt>の</rt></ruby>めましたか?<br>*(Vậy ạ. Ông uống nước được không ạ?)* |
| Ông Tanaka | ナースコールを<ruby>押<rt>お</rt></ruby>したら、すぐ<ruby>来<rt>き</rt></ruby>てくれた。<br>*(Tôi bấm chuông gọi thì họ tới ngay.)* |
| Ngọc | よかったです。では、<ruby>顔<rt>かお</rt></ruby><ruby>拭<rt>ふ</rt></ruby>きとお<ruby>着替<rt>きが</rt></ruby>えをしますね。<ruby>今日<rt>きょう</rt></ruby>はいいお<ruby>天気<rt>てんき</rt></ruby>ですよ。<ruby>食堂<rt>しょくどう</rt></ruby>の<ruby>窓<rt>まど</rt></ruby>から<ruby>桜<rt>さくら</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。<br>*(Cháu mừng ạ. Thế thì cháu lau mặt và thay quần áo cho ông nhé. Hôm nay trời đẹp đấy ông. Từ cửa phòng ăn nhìn thấy hoa anh đào ạ.)* |
| Ông Tanaka | そうか。なら<ruby>楽<rt>たの</rt></ruby>しみだな。<br>*(Vậy à. Thú vị đấy.)* |

---

## Tình huống 3 — Hành lang · 9:00, hỗ trợ đồng nghiệp bận khi đang đi qua

| Vai | Lời thoại |
|---|---|
| Nhân viên C | グエンさん、<ruby>少<rt>すこ</rt></ruby>しいいですか?<ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>居室<rt>いしつ</rt></ruby>でトイレに<ruby>行<rt>い</rt></ruby>きたいとおっしゃっています。<ruby>今<rt>いま</rt></ruby>、<ruby>手<rt>て</rt></ruby>が<ruby>離<rt>はな</rt></ruby>せなくて。<br>*(Chị Nguyễn, em có rảnh một chút không? Ông Yamada ở phòng muốn đi vệ sinh. Chị đang bận, tay không rời được.)* |
| Ngọc | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>山田<rt>やまだ</rt></ruby>さんは<ruby>何号室<rt>なんごうしつ</rt></ruby>ですか?<br>*(Vâng, được ạ. Ông Yamada ở phòng số mấy ạ?)* |
| Nhân viên C | 203<ruby>号室<rt>ごうしつ</rt></ruby>です。ありがとう、<ruby>助<rt>たす</rt></ruby>かります。<br>*(Phòng 203 ạ. Cảm ơn, em giúp được rồi.)* |
| Ngọc | (đến phòng 203, gõ cửa) <ruby>山田<rt>やまだ</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>ってもいいですか? お<ruby>手洗<rt>てあら</rt></ruby>いですね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Ông Yamada, cháu là Nguyễn. Cháu vào được không ạ? Ông muốn đi vệ sinh phải không. Mình đi cùng nhé.)* |
| Ông Yamada | ああ、<ruby>急<rt>いそ</rt></ruby>いでくれ。<br>*(Ừ, nhanh nhanh lên.)* |
| Ngọc | はい、すぐ<ruby>行<rt>い</rt></ruby>きますよ。<ruby>焦<rt>あせ</rt></ruby>らなくて<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>準備<rt>じゅんび</rt></ruby>できました、<ruby>立<rt>た</rt></ruby>ちましょう。<br>*(Vâng, đi ngay đây ạ. Ông không cần vội vàng đâu. Chuẩn bị xong rồi, mình đứng dậy nhé.)* |

---

## Tình huống 4 — Phòng sinh hoạt · 10:00, chăm sóc ông Kimura — trò chuyện thường ngày

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>のご<ruby>気分<rt>きぶん</rt></ruby>は?<br>*(Ông Kimura, chào buổi sáng. Hôm nay ông thấy thế nào?)* |
| Ông Kimura | 元気だよ。グエンちゃん、今日で<ruby>最後<rt>さいご</rt></ruby>の<ruby>月<rt>つき</rt></ruby>だろう?<ruby>一年<rt>いちねん</rt></ruby>目の。<br>*(Khỏe đấy. Cháu Nguyễn, hôm nay là tháng cuối năm 1 rồi nhỉ.)* |
| Ngọc | はい。あっという<ruby>間<rt>ま</rt></ruby>でした。<ruby>木村<rt>きむら</rt></ruby>さんにもたくさんお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Vâng. Nhanh thật ạ. Cháu cũng được ông giúp đỡ nhiều lắm ạ.)* |
| Ông Kimura | <ruby>私<rt>わたし</rt></ruby>こそ。グエンちゃんが<ruby>来<rt>き</rt></ruby>てから、<ruby>朝<rt>あさ</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しくなった。<br>*(Tôi mới phải cảm ơn chứ. Từ khi cháu Nguyễn đến, lời chào buổi sáng vui hơn nhiều đấy.)* |
| Ngọc | そう<ruby>言<rt>い</rt></ruby>っていただけて、うれしいです。<ruby>二年目<rt>にねんめ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nghe ông nói vậy cháu vui lắm. Năm 2 cháu cũng mong được giúp đỡ ông ạ.)* |
| Ông Kimura | こっちこそ。<ruby>楽<rt>たの</rt></ruby>しみにしているよ。<br>*(Tôi mới phải. Tôi mong đấy.)* |

---

## Tình huống 5 — Hành lang · 11:00, phối hợp 移乗 2 người với Mai-san

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>入浴後<rt>にゅうよくご</rt></ruby>の<ruby>移乗<rt>いじょう</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いできますか?<ruby>ベッド<rt>ベッド</rt></ruby>への<ruby>移乗<rt>いじょう</rt></ruby>です。<br>*(Chị Nguyễn, em giúp chuyển bà Sato về giường sau tắm được không ạ?)* |
| Ngọc | もちろんです。どちら<ruby>側<rt>がわ</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しますか?<br>*(Được ạ. Em đứng bên nào ạ?)* |
| Mai-san | グエンさんは<ruby>足<rt>あし</rt></ruby><ruby>側<rt>がわ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>私<rt>わたし</rt></ruby>が<ruby>上半身<rt>じょうはんしん</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Em phụ trách phần chân nhé. Chị đỡ phần thân trên.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>佐藤<rt>さとう</rt></ruby>さん、これからベッドに<ruby>移<rt>うつ</rt></ruby>りますね。ゆっくりやりますから、<ruby>安心<rt>あんしん</rt></ruby>してください。<br>*(Rõ ạ. Bà Sato, giờ mình chuyển bà về giường nhé. Cháu làm từ từ thôi, bà yên tâm nhé.)* |
| Bà Sato | はい...お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng... nhờ các cháu nhé.)* |
| Mai-san | せーの。<br>*(Nào, cùng nhé.)* |
| Ngọc | (cùng nhịp) はい。<br>*(Vâng.)* |
| Mai-san | (sau khi xong) グエンさん、ありがとう。<ruby>息<rt>いき</rt></ruby>が<ruby>合<rt>あ</rt></ruby>っていますね。<br>*(Chị Nguyễn, cảm ơn. Nhịp nhàng đấy nhỉ.)* |
| Ngọc | ありがとうございます。マイさんに<ruby>教<rt>おし</rt></ruby>えていただいたおかげです。<br>*(Cảm ơn chị ạ. Nhờ chị dạy cháu mới được như vậy.)* |

---

## Tình huống 6 — Phòng ăn · 12:00, hỗ trợ bữa trưa — ông Tanaka tự ăn nhiều hơn

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、お<ruby>昼<rt>ひる</rt></ruby>ですよ。<ruby>今日<rt>きょう</rt></ruby>は<ruby>軟<rt>やわ</rt></ruby>らか<ruby>食<rt>しょく</rt></ruby>です。まずお<ruby>味噌汁<rt>みそしる</rt></ruby>からどうぞ。<br>*(Ông Tanaka, đến trưa rồi ạ. Hôm nay là thức ăn mềm. Ông dùng canh miso trước nhé.)* |
| Ông Tanaka | (tự cầm muỗng ăn) うん、今日は<ruby>右手<rt>みぎて</rt></ruby>でも<ruby>少<rt>すこ</rt></ruby>し<ruby>動<rt>うご</rt></ruby>くな。<br>*(Ừ, hôm nay tay phải cũng nhúc nhích được một chút.)* |
| Ngọc | それは<ruby>良<rt>よ</rt></ruby>かったです!リハビリの<ruby>効果<rt>こうか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ていますね。<br>*(Thật tốt quá ạ! Phục hồi chức năng có hiệu quả rồi nhỉ.)* |
| Ông Tanaka | そうかもな。グエンさんが<ruby>毎日<rt>まいにち</rt></ruby>よく<ruby>声<rt>こえ</rt></ruby>をかけてくれるから、<ruby>気持<rt>きも</rt></ruby>ちもいいんだよ。<br>*(Có lẽ vậy. Cháu Nguyễn ngày nào cũng hay nói chuyện, tâm trạng ông cũng tốt hơn đấy.)* |
| Ngọc | ありがとうございます。<ruby>食欲<rt>しょくよく</rt></ruby>はありますか?<br>*(Cảm ơn ông ạ. Ông có ngon miệng không ạ?)* |
| Ông Tanaka | まあまあ。<ruby>今日<rt>きょう</rt></ruby>のは<ruby>軟<rt>やわ</rt></ruby>らかくて<ruby>食<rt>た</rt></ruby>べやすい。<br>*(Bình thường. Hôm nay mềm, dễ ăn đấy.)* |
| Ngọc | (ghi nhật ký) <ruby>全量<rt>ぜんりょう</rt></ruby>の8<ruby>割摂取<rt>わりせっしゅ</rt></ruby>、<ruby>食欲<rt>しょくよく</rt></ruby>あり、むせなし。<br>*(Ăn được 8 phần, có cảm giác ngon miệng, không bị sặc.)* |

---

## Tình huống 7 — Phòng sinh hoạt · 14:00, Ngọc được giao dẫn hoạt động giải trí nhỏ

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>のレクリエーション、グエンさんにお<ruby>願<rt>ねが</rt></ruby>いしたいのですが。<br>*(Em Nguyễn, buổi chiều hôm nay chị muốn nhờ em phụ trách hoạt động giải trí nhé.)* |
| Ngọc | え?<ruby>私<rt>わたし</rt></ruby>がですか?<br>*(Ạ? Là em ạ?)* |
| Yamamoto | はい。<ruby>今日<rt>きょう</rt></ruby>は<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>歌<rt>うた</rt></ruby>とタオル<ruby>体操<rt>たいそう</rt></ruby>です。グエンさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Vâng. Hôm nay chỉ là hát và bài tập khăn thôi. Em Nguyễn làm được đấy.)* |
| Ngọc | わかりました、やってみます。<ruby>歌<rt>うた</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>すればいいですか?<br>*(Rõ ạ, em thử làm. Em cần chuẩn bị bài hát gì ạ?)* |
| Yamamoto | 「ふるさと」と「<ruby>春<rt>はる</rt></ruby>の<ruby>小川<rt>おがわ</rt></ruby>」です。<ruby>歌詞<rt>かし</rt></ruby>カードはそこにあります。<br>*(Bài "Cố hương" và "Con suối mùa xuân". Thẻ lời bài hát ở đó rồi.)* |
| Ngọc | (với các 利用者) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>いましょう。「ふるさと」からです。<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Mọi người, hôm nay mình cùng hát nhé. Bắt đầu bằng bài "Cố hương". Mọi người sẵn sàng chưa ạ?)* |
| Ông Kimura | いいね、<ruby>始<rt>はじ</rt></ruby>めよう。<br>*(Tốt đấy, bắt đầu thôi.)* |

---

## Tình huống 8 — Phòng sinh hoạt · 15:00, ông Tanaka nhắn nhủ sau khi ca kết thúc

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のレク、<ruby>参加<rt>さんか</rt></ruby>してくださってありがとうございました。<br>*(Ông Tanaka, cảm ơn ông đã tham gia hoạt động hôm nay ạ.)* |
| Ông Tanaka | グエンさんが<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>てやると、なんか<ruby>雰囲気<rt>ふんいき</rt></ruby>がいいな。<br>*(Khi cháu Nguyễn đứng ra dẫn, không khí thấy vui hơn đấy.)* |
| Ngọc | ありがとうございます。まだ<ruby>緊張<rt>きんちょう</rt></ruby>しましたが。<br>*(Cảm ơn ông ạ. Nhưng cháu vẫn còn hồi hộp đấy ông ơi.)* |
| Ông Tanaka | <ruby>最初<rt>さいしょ</rt></ruby>から<ruby>上手<rt>うま</rt></ruby>くできる<ruby>人間<rt>にんげん</rt></ruby>はいない。<ruby>一年前<rt>いちねんまえ</rt></ruby>のグエンさんを<ruby>見<rt>み</rt></ruby>ろ。あのころとは<ruby>違<rt>ちが</rt></ruby>う。<br>*(Không ai làm giỏi ngay từ đầu đâu. Nhìn lại cháu Nguyễn một năm trước xem. Khác rồi đấy.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん...。ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に。<br>*(Ông Tanaka... Cháu cảm ơn ông. Thật lòng ạ.)* |
| Ông Tanaka | <ruby>二年目<rt>にねんめ</rt></ruby>もよろしくな。<br>*(Năm 2 cũng nhờ cháu nhé.)* |
| Ngọc | はい、こちらこそよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cháu cũng mong ông ạ.)* |

---

## Tình huống 9 — Phòng hành chính · 16:00, nộp nhật ký chăm sóc và được Yamamoto nhận xét

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>です。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Yamamoto, đây là nhật ký hôm nay ạ. Mong chị kiểm tra giúp ạ.)* |
| Yamamoto | (xem qua) グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>、よく<ruby>書<rt>か</rt></ruby>けていますね。「<ruby>全量<rt>ぜんりょう</rt></ruby>の8<ruby>割摂取<rt>わりせっしゅ</rt></ruby>」「むせなし」、<ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(Chị Nguyễn, nhật ký hôm nay viết tốt đấy. "Ăn được 8 phần", "không sặc" — cụ thể, dễ hiểu.)* |
| Ngọc | ありがとうございます。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えていただいたので、<ruby>意識<rt>いしき</rt></ruby>しました。<br>*(Cảm ơn chị. Nhờ chị hướng dẫn trong 面談 hôm qua nên em chú ý hơn ạ.)* |
| Yamamoto | いいですね。<ruby>成長<rt>せいちょう</rt></ruby>が<ruby>速<rt>はや</rt></ruby>いです。<ruby>二年目<rt>にねんめ</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(Tốt lắm. Em tiến bộ nhanh đấy. Chị mong năm 2 của em đấy.)* |
| Ngọc | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>今日<rt>きょう</rt></ruby>もありがとうございました。<br>*(Vâng, em sẽ cố gắng. Hôm nay cũng cảm ơn chị ạ.)* |

---

## Tình huống 10 — Sảnh ra về · 16:30, tạm biệt cuối ca năm 1

| Vai | Lời thoại |
|---|---|
| Ngọc | (đến chỗ ông Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>もありがとうございました。また<ruby>明日<rt>あした</rt></ruby>。<br>*(Ông Tanaka, hôm nay cũng cảm ơn ông ạ. Hẹn gặp ông ngày mai.)* |
| Ông Tanaka | ああ。<ruby>気<rt>き</rt></ruby>をつけてな。また<ruby>来<rt>き</rt></ruby>い。<br>*(Ừ. Về cẩn thận nhé. Ngày mai lại đến.)* |
| Ngọc | (đến chỗ ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<ruby>今日<rt>きょう</rt></ruby>は<ruby>歌<rt>うた</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>えて<ruby>楽<rt>たの</rt></ruby>しかったです。<br>*(Ông Kimura, ông nghỉ ngơi nhé. Hôm nay được cùng ông hát vui lắm ạ.)* |
| Ông Kimura | こちらこそ。また<ruby>来週<rt>らいしゅう</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Tôi mới phải cảm ơn chứ. Tuần sau lại nhờ cháu nhé.)* |
| Ngọc | (quay sang Yamamoto) <ruby>山本<rt>やまもと</rt></ruby>さん、お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>一年間<rt>いちねんかん</rt></ruby>、ありがとうございました。<br>*(Chị Yamamoto, em xin phép về trước ạ. Cảm ơn chị suốt một năm qua ạ.)* |
| Yamamoto | こちらこそ、ありがとう。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>来年度<rt>らいねんど</rt></ruby>もよろしくね。<br>*(Tôi cũng cảm ơn em. Em vất vả rồi. Năm tới cũng mong em nhé.)* |
| Ngọc | はい!よろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Vâng! Mong chị ạ!)* |

---

## Tình huống 11 — Đường về · 17:00, Ngọc đi bộ về một mình giữa hoa anh đào

| Vai | Lời thoại |
|---|---|
| Ngọc | (tự nhủ, nhìn hàng cây anh đào) <ruby>一年<rt>いちねん</rt></ruby>、<ruby>経<rt>た</rt></ruby>ったな。<ruby>去年<rt>きょねん</rt></ruby>の<ruby>今頃<rt>いまごろ</rt></ruby>、ここを<ruby>歩<rt>ある</rt></ruby>くのが<ruby>怖<rt>こわ</rt></ruby>かった。<ruby>言葉<rt>ことば</rt></ruby>も、<ruby>仕事<rt>しごと</rt></ruby>も。<br>*(Một năm qua rồi. Năm ngoái vào giờ này, mình sợ khi bước trên con đường này. Cả tiếng Nhật lẫn công việc.)* |
| Ngọc | (tiếp tục đi, mỉm cười) <ruby>田中<rt>たなか</rt></ruby>さんに「また<ruby>来<rt>き</rt></ruby>い」って<ruby>言<rt>い</rt></ruby>われた。<ruby>木村<rt>きむら</rt></ruby>さんは「<ruby>楽<rt>たの</rt></ruby>しみにしているよ」って。<br>*(Ông Tanaka bảo "ngày mai lại đến". Ông Kimura bảo "tôi mong đấy nhé".)* |
| Ngọc | (nhẹ nhàng) それで<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Vậy là đủ rồi.)* |

---

## Tình huống 12 — Ký túc · 21:00, gọi điện về Cần Thơ

> Scene tiếng Việt — kết năm 1, gọi mẹ.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt, qua điện thoại) Ngọc ơi, con khỏe không? Công việc thế nào? |
| Ngọc | (tiếng Việt) Con khỏe mẹ. Hôm nay là ngày cuối tháng 3, hết năm 1 rồi mẹ ơi. |
| Mẹ | (tiếng Việt) Vậy à? Nhanh thật nhỉ. Con có quen việc chưa? |
| Ngọc | (tiếng Việt) Quen rồi mẹ. Con tự làm được nhiều việc rồi. Hôm nay con còn được giao dẫn hoạt động ca hát cho các ông bà nữa. |
| Mẹ | (tiếng Việt) Giỏi quá. Mẹ yên tâm rồi. Ăn uống đầy đủ không? |
| Ngọc | (tiếng Việt) Đầy đủ mẹ. Mẹ đừng lo. Con còn phải học N3 năm nay nữa, bận lắm nhưng vui mẹ ạ. |
| Mẹ | (tiếng Việt) Ừ, con cố gắng. Mẹ nhớ con. |
| Ngọc | (tiếng Việt) Con cũng nhớ mẹ. Nhưng con ổn rồi mẹ ơi. Thật sự ổn rồi. |

---

## Đọng lại chương 12

Chương kết năm 1: Ngọc không còn là cô thực tập sinh bỡ ngỡ ghi trang từ mới ngày đầu. Cô đã là **thành viên thực sự của ê-kíp Hidamari-en** — nhận phân công độc lập, phối hợp **移乗 2 người** nhịp nhàng với đồng nghiệp, hỗ trợ linh hoạt khi cần, dẫn **レクリエーション** và nộp **記録** cụ thể, đúng chuẩn. Ông Tanaka, ông Kimura, bà Sato — mỗi người đã trở thành một phần trong ngày làm việc của Ngọc. Năm 2 đang ở phía trước, với mục tiêu rõ ràng. Và một cuộc điện thoại ngắn về Cần Thơ: "Con ổn rồi mẹ ơi."

> Từ vựng & mẫu câu chương này: 担当・承知しました・居室・移乗・息が合う・軟らか食・全量摂取・むせ・レクリエーション・記録・全量の8割摂取・来年度・お先に失礼します・お疲れさまでした・こちらこそ・あっという間・チームの一員', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
