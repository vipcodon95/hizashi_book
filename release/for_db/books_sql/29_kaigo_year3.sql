-- Hizashi LITE book SQL — Kaigo Y3
-- curriculum_id = 800000029  (book_seq=29)
-- nguồn: books/29_kaigo_year3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000029, 'N3', 'markdown_book', 'Điều dưỡng', 'Kaigo Y3', 'Bộ sách Hizashi — Kaigo Y3', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000001, 800000029, NULL, 'markdown_book', 'T1. Năm 3, làm tiền bối (三年目・先輩として)', '# Sách thực tập sinh điều dưỡng · T1. Năm 3, làm tiền bối (三年目・先輩として)

> **Mục tiêu nhân vật:** Ngọc (năm 3, đã vững nghề) bước vào vai trò sempai lần đầu — được Yamamoto giao hướng dẫn kohai mới người Việt tên An. Chương tập trung các mẫu câu: nhận lệnh 指導 từ cấp trên, giới thiệu cơ sở cho kohai, chào 利用者 thành thục, xử lý tình huống nghiệp vụ quen thuộc, và phản chiếu lại hành trình của chính mình.

---

## Bối cảnh

Tháng 4 năm 2028. Ngọc bước sang năm thứ 3 tại 「ひだまり苑」(Hidamari-en). Trình độ tiếng Nhật N3. An — thực tập sinh mới người Việt — vừa đến hôm qua, hiện đang đứng nhìn mọi thứ bằng ánh mắt bỡ ngỡ hệt Ngọc hai năm trước. Yamamoto giao cho Ngọc nhiệm vụ chỉ dẫn (指導) An trong những tuần đầu.

---

## Tình huống 1 — Văn phòng trưởng nhóm · 8:00, Yamamoto giao nhiệm vụ 指導

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今年<rt>ことし</rt></ruby>で<ruby>三年目<rt>さんねんめ</rt></ruby>ですね。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>しましたよ。<br>*(Em Nguyễn, năm nay là năm thứ 3 rồi nhỉ. Em thực sự đã trưởng thành nhiều lắm.)* |
| Ngọc | ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さんのご<ruby>指導<rt>しどう</rt></ruby>のおかげです。<br>*(Em cảm ơn chị. Là nhờ chị đã chỉ bảo ạ.)* |
| Yamamoto | 今日から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>のアンさんが<ruby>来<rt>き</rt></ruby>ます。グエンさんに<ruby>指導<rt>しどう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいのですが。<br>*(Từ hôm nay, thực tập sinh mới tên An sẽ đến. Chị muốn nhờ em hướng dẫn cô ấy.)* |
| Ngọc | え、わたしが<ruby>指導<rt>しどう</rt></ruby>するのですか？<br>*(Ồ, em ạ? Em sẽ hướng dẫn ạ?)* |
| Yamamoto | そうです。グエンさんは<ruby>今<rt>いま</rt></ruby>や<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>先輩<rt>せんぱい</rt></ruby>です。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>一年目<rt>いちねんめ</rt></ruby>のとき<ruby>学<rt>まな</rt></ruby>んだことを、アンさんに<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Đúng vậy. Em giờ đã là tiền bối xuất sắc rồi. Em hãy truyền lại những gì mình học được hồi năm nhất cho An nhé.)* |
| Ngọc | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby>やってみます。<br>*(Vâng, em sẽ cố gắng hết sức ạ.)* |
| Yamamoto | <ruby>分<rt>わ</rt></ruby>からないことがあれば、わたしにいつでも<ruby>相談<rt>そうだん</rt></ruby>してください。<ruby>一人<rt>ひとり</rt></ruby>でがんばらなくていいですよ。<br>*(Nếu có gì không rõ, cứ bàn với chị bất cứ lúc nào. Em không cần một mình gánh hết đâu.)* |
| Ngọc | はい、ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn chị. Em sẽ cố ạ.)* |

---

## Tình huống 2 — Sảnh chính · 8:30, lần đầu gặp kohai An

| Vai | Lời thoại |
|---|---|
| An | あの...グエン<ruby>先輩<rt>せんぱい</rt></ruby>ですか？ アン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin hỏi... chị có phải là tiền bối Nguyễn không ạ? Em là An Thị Hoa. Mong được chỉ bảo ạ.)* |
| Ngọc | はい、グエン・ゴックです。アンさん、よろしくね。<ruby>緊張<rt>きんちょう</rt></ruby>している？<br>*(Đúng rồi, chị là Nguyễn Ngọc. An nhé, chào em. Em có hồi hộp không?)* |
| An | はい、とても<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Vâng, em hồi hộp lắm ạ.)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。わたしも<ruby>一年目<rt>いちねんめ</rt></ruby>のとき、すごく<ruby>緊張<rt>きんちょう</rt></ruby>していましたから。<br>*(Không sao đâu. Chị cũng hồi hộp lắm hồi năm nhất mà.)* |
| An | そうなんですか。すこし<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Vậy ạ. Em thấy yên tâm hơn một chút rồi ạ.)* |
| Ngọc | 今日は<ruby>施設<rt>しせつ</rt></ruby>を<ruby>案内<rt>あんない</rt></ruby>するね。<ruby>分<rt>わ</rt></ruby>からないことは、どんどん<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Hôm nay chị sẽ dẫn em tham quan cơ sở. Có gì không hiểu cứ hỏi thoải mái nhé.)* |
| An | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em mong được chỉ bảo ạ.)* |

---

## Tình huống 3 — Tham quan cơ sở · 8:45, Ngọc giải thích về 特養

| Vai | Lời thoại |
|---|---|
| Ngọc | ここが「ひだまり<ruby>苑<rt>えん</rt></ruby>」です。<ruby>特別<rt>とくべつ</rt></ruby><ruby>養護<rt>ようご</rt></ruby><ruby>老人<rt>ろうじん</rt></ruby>ホーム、<ruby>略<rt>りゃく</rt></ruby>して「<ruby>特養<rt>とくよう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Đây là "Hidamari-en". Viện dưỡng lão đặc biệt, gọi tắt là "Tokuyou".)* |
| An | とくよう...メモしてもいいですか？<br>*(Tokuyou... Em ghi lại được không ạ?)* |
| Ngọc | もちろんです。どんどんメモしてください。それがいちばんの<ruby>勉強<rt>べんきょう</rt></ruby>です。<br>*(Dĩ nhiên rồi. Cứ ghi nhiều vào. Đó là cách học tốt nhất đấy.)* |
| An | <ruby>利用者<rt>りようしゃ</rt></ruby>さんというのは？<br>*(Người sử dụng dịch vụ là gì ạ?)* |
| Ngọc | ここで<ruby>生活<rt>せいかつ</rt></ruby>している<ruby>高齢者<rt>こうれいしゃ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>のことです。「お<ruby>年寄<rt>としよ</rt></ruby>り」ではなく、<ruby>必<rt>かなら</rt></ruby>ず「<ruby>利用者<rt>りようしゃ</rt></ruby>さん」と<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にするためです。<br>*(Là những người cao tuổi đang sinh sống ở đây. Đừng gọi là "người già", nhất định gọi là "người sử dụng dịch vụ" nhé. Để trân trọng phẩm giá của họ.)* |
| An | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>大切<rt>たいせつ</rt></ruby>なことですね。<br>*(Vâng, em hiểu rồi ạ. Đây là điều quan trọng nhỉ.)* |
| Ngọc | そうです。わたしも<ruby>一年目<rt>いちねんめ</rt></ruby>のとき、<ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>教<rt>おそ</rt></ruby>わったことです。<br>*(Đúng vậy. Chị cũng được chị Yamamoto dạy điều này hồi năm nhất đấy.)* |

---

## Tình huống 4 — Buổi 朝礼 · 9:00, An tự giới thiệu, Ngọc đứng bên hỗ trợ

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>のアンさんです。どうぞ。<br>*(Mọi người, từ hôm nay có thực tập sinh mới tên An. Mời em.)* |
| An | (nhỏ, run run) あの...はじめまして。アン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します...よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin chào... em tên là An Thị Hoa... Mong mọi người chỉ bảo ạ.)* |
| Ngọc | (nói nhỏ, khích lệ) アンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で。<br>*(An, không sao đâu. Cố nói to thêm một chút nhé.)* |
| An | (hít thở, cố gắng) ベトナムのハノイ<ruby>出身<rt>しゅっしん</rt></ruby>です。<ruby>一生懸命<rt>いっしょうけんめい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。ご<ruby>指導<rt>しどう</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em đến từ Hà Nội, Việt Nam. Em sẽ cố gắng hết sức. Mong mọi người chỉ bảo ạ.)* |
| Nhân viên Mai | アンさん、よく<ruby>来<rt>き</rt></ruby>てくれました。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょうね。<br>*(An, cảm ơn em đã đến. Mình cùng cố gắng nhé.)* |
| Ngọc | (sau buổi họp, nói riêng với An) よかったよ。<ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>緊張<rt>きんちょう</rt></ruby>するから。<br>*(Tốt lắm. Ban đầu ai cũng hồi hộp mà.)* |
| An | ありがとうございます、<ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Cảm ơn chị tiền bối ạ.)* |

---

## Tình huống 5 — Hành lang trước phòng ông Tanaka · 9:30, Ngọc dạy cách gõ cửa

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>部屋<rt>へや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るとき、<ruby>必<rt>かなら</rt></ruby>ずノックします。<ruby>知<rt>し</rt></ruby>っていますか？<br>*(An, khi vào phòng người sử dụng dịch vụ, nhất định phải gõ cửa. Em có biết không?)* |
| An | はい、でも<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>えばいいですか？<br>*(Vâng, nhưng em nói gì ạ?)* |
| Ngọc | 「<ruby>名前<rt>なまえ</rt></ruby>+です。<ruby>入<rt>はい</rt></ruby>ってもよろしいですか？」と<ruby>言<rt>い</rt></ruby>います。やってみて。<br>*(Nói "Tên + です。入ってもよろしいですか？" Thử đi.)* |
| An | (gõ cửa) <ruby>田中<rt>たなか</rt></ruby>さん、アンです。<ruby>入<rt>はい</rt></ruby>ってもよろしいですか？<br>*(Ông Tanaka, cháu là An. Cháu vào được không ạ?)* |
| Ông Tanaka | (vọng ra) ああ、いいよ。<br>*(Ừ, vào đi.)* |
| An | (mở cửa) <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Cháu xin phép vào ạ.)* |
| Ngọc | (gật đầu nhẹ, nói nhỏ) よかったです。<ruby>毎回<rt>まいかい</rt></ruby><ruby>必<rt>かなら</rt></ruby>ずこうしてください。<ruby>部屋<rt>へや</rt></ruby>は<ruby>利用者<rt>りようしゃ</rt></ruby>さんのプライベートな<ruby>空間<rt>くうかん</rt></ruby>です。<br>*(Tốt lắm. Lần nào cũng nhất định làm như vậy. Phòng là không gian riêng tư của các cụ đấy.)* |
| An | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 6 — Phòng ông Tanaka · 9:45, Ngọc chăm sóc thành thục, An quan sát

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。グエンです。<ruby>今朝<rt>けさ</rt></ruby>のご<ruby>様子<rt>ようす</rt></ruby>はいかがですか?<br>*(Ông Tanaka, chào buổi sáng ạ. Cháu là Nguyễn. Buổi sáng hôm nay ông thế nào ạ?)* |
| Ông Tanaka | ん、<ruby>右肩<rt>みぎかた</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>重<rt>おも</rt></ruby>いな。<br>*(Ừm, vai phải hơi nặng một chút.)* |
| Ngọc | そうですか。<ruby>体位変換<rt>たいいへんかん</rt></ruby>をしましょう。<ruby>左側<rt>ひだりがわ</rt></ruby>に<ruby>向<rt>む</rt></ruby>きを<ruby>変<rt>か</rt></ruby>えますね。いいですか？<br>*(Vậy ạ. Chúng ta đổi tư thế nằm nhé. Cháu cho ông nằm nghiêng bên trái nhé. Ông đồng ý không ạ?)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>む。<br>*(Ừ, nhờ cháu.)* |
| Ngọc | (thực hiện nhẹ nhàng) <ruby>痛<rt>いた</rt></ruby>くないですか？<br>*(Ông có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。グエンさんは<ruby>手<rt>て</rt></ruby>が<ruby>上手<rt>うま</rt></ruby>いな。<br>*(Không sao. Cháu Nguyễn khéo tay nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>楽<rt>らく</rt></ruby>になりましたか？<br>*(Cảm ơn ông. Ông thấy dễ chịu hơn chưa ạ?)* |
| Ông Tanaka | うん、だいぶいいよ。ありがとう。<br>*(Ừ, khá hơn nhiều rồi. Cảm ơn.)* |
| Ngọc | (quay sang An, nói nhỏ) <ruby>見<rt>み</rt></ruby>ましたか? <ruby>声<rt>こえ</rt></ruby>をかけて、<ruby>許可<rt>きょか</rt></ruby>をもらって、それから<ruby>動<rt>うご</rt></ruby>かします。<br>*(Em thấy không? Lên tiếng trước, xin phép, rồi mới thực hiện.)* |
| An | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>先<rt>さき</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかける、ということですね。<br>*(Vâng, em hiểu rồi ạ. Là phải lên tiếng trước, đúng không ạ.)* |

---

## Tình huống 7 — Phòng sinh hoạt chung · 10:30, Ngọc chào ông Kimura, giới thiệu An

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しいスタッフのアンさんをご<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Ông Kimura, chào buổi sáng ạ. Hôm nay cháu giới thiệu nhân viên mới tên An với ông nhé.)* |
| Ông Kimura | おお、また<ruby>新<rt>あたら</rt></ruby>しい<ruby>人<rt>ひと</rt></ruby>かね。ベトナムの<ruby>人<rt>ひと</rt></ruby>か？<br>*(Ồ, lại có người mới à. Người Việt Nam à?)* |
| An | はい。アン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng ạ. Cháu là An Thị Hoa. Mong ông chỉ bảo ạ.)* |
| Ông Kimura | ふむ。グエンさんみたいに<ruby>上手<rt>うま</rt></ruby>くなれよ。グエンさんはよくできる<ruby>子<rt>こ</rt></ruby>だから。<br>*(Hmm. Cố giỏi như cháu Nguyễn đấy. Cháu Nguyễn là đứa làm tốt lắm mà.)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、ありがとうございます。アンさんもすぐに<ruby>慣<rt>な</rt></ruby>れますよ。<br>*(Ông Kimura, cảm ơn ông ạ. An cũng sẽ quen sớm thôi ạ.)* |
| Ông Kimura | ははは。まあ、ゆっくりやりなさい。<ruby>急<rt>あわ</rt></ruby>てなくていいよ。<br>*(Ha ha ha. Thôi thì cứ từ từ. Không cần vội đâu.)* |
| An | はい、ありがとうございます。<br>*(Vâng, cháu cảm ơn ông ạ.)* |

---

## Tình huống 8 — Phòng ăn · 11:30, hướng dẫn An phụ giờ ăn trưa

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>昼食<rt>ちゅうしょく</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんを<ruby>食堂<rt>しょくどう</rt></ruby>にご<ruby>案内<rt>あんない</rt></ruby>するとき、なんと<ruby>声<rt>こえ</rt></ruby>をかけますか？<br>*(An, đến giờ ăn trưa. Khi dẫn các cụ ra phòng ăn, em nói gì nào?)* |
| An | あの...「<ruby>昼ごはん<rt>ひるごはん</rt></ruby>です」...ですか？<br>*(Ạ... "Đến giờ ăn trưa"... ạ?)* |
| Ngọc | <ruby>惜<rt>おし</rt></ruby>い。「<ruby>昼食<rt>ちゅうしょく</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>ですよ。<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りましょうか？」の<ruby>方<rt>ほう</rt></ruby>がていねいです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんには<ruby>丁寧語<rt>ていねいご</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってください。<br>*(Gần đúng rồi. Nói "Đến giờ ăn trưa rồi ạ. Chúng ta ra phòng ăn nhé？" thì lịch sự hơn. Khi nói với các cụ phải dùng kính ngữ nhé.)* |
| An | なるほど、「<ruby>参<rt>まい</rt></ruby>りましょうか」ですね。<br>*(Ra là vậy, dùng "参りましょうか" ạ.)* |
| Ngọc | そうです。<ruby>食事中<rt>しょくじちゅう</rt></ruby>は<ruby>様子<rt>ようす</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てください。<ruby>むせていないか<rt>むせていないか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>するのがとても<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng. Trong bữa ăn hãy quan sát kỹ. Kiểm tra xem có bị sặc không là rất quan trọng đấy.)* |
| An | <ruby>むせる<rt>むせる</rt></ruby>というのは<ruby>分<rt>わ</rt></ruby>かります。ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Em biết "sặc" là gì ạ. Em đã học bằng tiếng Việt rồi.)* |
| Ngọc | よかった。でも<ruby>実際<rt>じっさい</rt></ruby>に<ruby>見<rt>み</rt></ruby>るのが<ruby>一番<rt>いちばん</rt></ruby>です。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>観察<rt>かんさつ</rt></ruby>しましょう。<br>*(Tốt lắm. Nhưng quan sát thực tế mới là tốt nhất. Mình cùng quan sát nhé.)* |

---

## Tình huống 9 — Phòng ăn · 12:00, Ngọc xử lý tình huống ông Tanaka ăn chậm

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>食欲<rt>しょくよく</rt></ruby>はいかがですか？<br>*(Ông Tanaka, ông có ngon miệng không ạ?)* |
| Ông Tanaka | あまり<ruby>食<rt>た</rt></ruby>べたくないな。<ruby>今日<rt>きょう</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>がだるい。<br>*(Không muốn ăn lắm. Hôm nay người mệt mỏi.)* |
| Ngọc | そうですか。<ruby>無理<rt>むり</rt></ruby>せず、<ruby>食<rt>た</rt></ruby>べられるものだけでいいですよ。お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>飲<rt>の</rt></ruby>みますか？<br>*(Vậy ạ. Ông không cần ráng, ăn được bao nhiêu là đủ. Ông uống trà một chút nhé?)* |
| Ông Tanaka | ああ、それはいいな。<br>*(Ừ, vậy được.)* |
| Ngọc | <ruby>温<rt>ぬる</rt></ruby>めにしてありますよ。(đưa ly trà) どうぞ。<br>*(Trà ấm vừa rồi ạ. Mời ông.)* |
| Ông Tanaka | ありがとう。グエンさんは<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くな。<br>*(Cảm ơn. Cháu Nguyễn biết ý người ta nhỉ.)* |
| Ngọc | (sau đó, nói với An) アンさん、<ruby>食欲<rt>しょくよく</rt></ruby>がないときは、<ruby>無理<rt>むり</rt></ruby>に<ruby>勧<rt>すす</rt></ruby>めなくていいです。でも、<ruby>必<rt>かなら</rt></ruby>ず<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>してください。<br>*(An, khi các cụ không muốn ăn, không cần ép. Nhưng nhất định phải ghi vào hồ sơ nhé.)* |
| An | はい、<ruby>食事量<rt>しょくじりょう</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>するのですね。<br>*(Vâng, ghi lại lượng ăn ạ.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 14:00, Ngọc giải thích về 申し送り

| Vai | Lời thoại |
|---|---|
| An | <ruby>先輩<rt>せんぱい</rt></ruby>、「<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>り」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Chị, "bàn giao ca" là gì ạ?)* |
| Ngọc | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りは、シフトが<ruby>変<rt>か</rt></ruby>わるときに<ruby>次<rt>つぎ</rt></ruby>のスタッフに<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えることです。<br>*(Câu hỏi hay đấy. Bàn giao ca là việc truyền đạt thông tin cho nhân viên ca tiếp theo khi đổi ca.)* |
| An | どんな<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えますか？<br>*(Truyền đạt những thông tin gì ạ?)* |
| Ngọc | <ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>体調<rt>たいちょう</rt></ruby>、<ruby>食事量<rt>しょくじりょう</rt></ruby>、<ruby>排泄<rt>はいせつ</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>、<ruby>特別<rt>とくべつ</rt></ruby>な<ruby>変化<rt>へんか</rt></ruby>などです。とても<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Tình trạng sức khỏe, lượng ăn, tình trạng bài tiết, những thay đổi đặc biệt của các cụ. Đây là công việc rất quan trọng.)* |
| An | わかりました。<ruby>記録<rt>きろく</rt></ruby>をちゃんと<ruby>書<rt>か</rt></ruby>かないといけませんね。<br>*(Em hiểu rồi ạ. Phải ghi hồ sơ đàng hoàng nhỉ.)* |
| Ngọc | そうです。<ruby>記録<rt>きろく</rt></ruby>は<ruby>次<rt>つぎ</rt></ruby>のスタッフへの<ruby>手紙<rt>てがみ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>えばいいです。<ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>教<rt>おそ</rt></ruby>わったことです。<br>*(Đúng vậy. Hãy nghĩ hồ sơ như là lá thư gửi cho nhân viên ca sau. Đây là điều chị Yamamoto dạy chị.)* |
| An | <ruby>手紙<rt>てがみ</rt></ruby>...いい<ruby>表現<rt>ひょうげん</rt></ruby>ですね。<br>*(Lá thư... cách nói hay nhỉ ạ.)* |

---

## Tình huống 11 — Cuối ca · 16:30, Ngọc bàn giao ca và chào tạm biệt

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りをお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>、<ruby>昼食<rt>ちゅうしょく</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なかったです。「<ruby>体<rt>からだ</rt></ruby>がだるい」とおっしゃっていました。<br>*(Chị Yamamoto, em xin bàn giao ca. Hôm nay ông Tanaka ăn trưa ít ạ. Ông ấy nói người mệt mỏi.)* |
| Yamamoto | わかりました。<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>しますね。<ruby>記録<rt>きろく</rt></ruby>はできていますか？<br>*(Chị rõ rồi. Chị sẽ xem thêm lúc bữa tối. Hồ sơ đã ghi chưa?)* |
| Ngọc | はい、<ruby>記録<rt>きろく</rt></ruby>は<ruby>完了<rt>かんりょう</rt></ruby>しています。アンさんも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, hồ sơ đã hoàn thành rồi ạ. Em và An cũng đã kiểm tra cùng nhau.)* |
| Yamamoto | よかったです。グエンさん、アンさんのことよろしくお<ruby>願<rt>ねが</rt></ruby>いしますね。<br>*(Tốt lắm. Nguyễn, nhờ em chăm sóc An nhé.)* |
| Ngọc | はい。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng ạ. Em xin phép về trước. Chị vất vả rồi ạ.)* |
| An | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>先輩<rt>せんぱい</rt></ruby>、ありがとうございました。<br>*(Vất vả rồi ạ. Cảm ơn chị tiền bối nhiều ạ.)* |
| Ngọc | アンさんも<ruby>お疲れさまでした<rt>おつかれさまでした</rt></ruby>。また<ruby>明日<rt>あした</rt></ruby>ね。<br>*(An cũng vất vả rồi. Hẹn ngày mai nhé.)* |

---

## Tình huống 12 — Ký túc · 21:00, Ngọc nhớ lại mình năm 1

> Scene tiếng Việt — mạch truyện, phản chiếu hành trình của Ngọc.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Sao, hôm nay dạy đàn em thế nào? |
| Ngọc | (tiếng Việt) Anh ơi, nhìn An mà em nhớ lại mình năm 1. Y hệt — run, không biết nói gì, mà chăm chú ghi chép từng chữ. |
| Đức | (tiếng Việt) Ừ. Mà giờ em là sempai rồi đó. Không ngờ nhanh vậy. |
| Ngọc | (tiếng Việt) Chị Yamamoto tin tưởng giao cho em. Em thấy vừa tự hào vừa lo. Sợ hướng dẫn sai. |
| Đức | (tiếng Việt) Lo là tốt. Không lo mới đáng lo. Mà em vững rồi, cứ dạy những gì chị Yamamoto từng dạy em. |
| Ngọc | (tiếng Việt) Dạ. Em sẽ cố. Muốn An không phải vật lộn một mình như em hồi đó. |

---

## Đọng lại chương 1

Năm 3, Ngọc không còn là người học — mà là người dạy. Vai trò đảo ngược hoàn toàn: từ người gõ cửa run tay, nay Ngọc tự tin thực hiện **体位変換**, đọc được tình trạng ông Tanaka, bàn giao ca trơn tru. Đồng thời học cách **指導**: kiên nhẫn giải thích, để kohai thử, không áp đặt. Mẫu câu mới của vai sempai: **「やってみて」「よかったです」「見ましたか?」「惜しい、〜の方がていねいです」**. Bài học lớn nhất: truyền lại không chỉ kỹ năng, mà cả triết lý — 利用者さんの尊厳, 記録は次のスタッフへの手紙.

> Từ vựng & mẫu câu chương này: 三年目・先輩・指導・後輩・承知しました・精一杯やります・体位変換・声かけ・許可をもらう・丁寧語・参りましょうか・食欲・食事量・記録・申し送り・体調・排泄・お先に失礼します・お疲れさまでした', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000002, 800000029, NULL, 'markdown_book', 'T2. Dạy đàn em (後輩を教える)', '# Sách thực tập sinh điều dưỡng · T2. Dạy đàn em (後輩を教える)

> **Mục tiêu nhân vật:** Ngọc (năm 3, sempai) hướng dẫn kohai An các kỹ thuật cơ bản: 声かけ, 移乗 (chuyển tư thế), 食事介助 (hỗ trợ bữa ăn). An lóng ngóng giống Ngọc năm 1. Ngọc học cách 指導: vừa làm mẫu, vừa giải thích, vừa để An thử và nhận xét — nhớ lại Yamamoto từng kiên nhẫn dạy mình như vậy.

---

## Bối cảnh

Tháng 5 năm 2028. An đã trải qua tuần đầu quan sát. Từ hôm nay, Ngọc bắt đầu cho An thực hành từng kỹ thuật một — theo phương pháp "làm mẫu → giải thích → để An thử → nhận xét" mà Yamamoto đã dùng với Ngọc hai năm trước. Trình độ Ngọc N3, An đang ở giai đoạn N4 sơ khai.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 8:15, trước ca, Ngọc lên kế hoạch chỉ dẫn

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>実際<rt>じっさい</rt></ruby>にやってみる<ruby>日<rt>ひ</rt></ruby>です。<ruby>怖<rt>こわ</rt></ruby>くないですよ。<br>*(An, hôm nay là ngày em thực hành thật sự rồi. Không đáng sợ đâu.)* |
| An | はい。でも<ruby>失敗<rt>しっぱい</rt></ruby>したらどうしよう...<br>*(Vâng ạ. Nhưng nếu em thất bại thì sao...)* |
| Ngọc | まず<ruby>先輩<rt>せんぱい</rt></ruby>がやってみせます。それを<ruby>見<rt>み</rt></ruby>てください。それから、アンさんがやってみる。わたしがそばで<ruby>見<rt>み</rt></ruby>ています。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Trước tiên chị làm mẫu. Em xem nhé. Sau đó, An thử. Chị sẽ đứng bên cạnh. Không sao đâu.)* |
| An | そうやって<ruby>教<rt>おし</rt></ruby>えてもらえるんですか。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Chị sẽ dạy theo cách đó ạ. Em yên tâm hơn rồi.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さんも、わたしにそうやって<ruby>教<rt>おし</rt></ruby>えてくれましたよ。「<ruby>見<rt>み</rt></ruby>て・やって・<ruby>確認<rt>かくにん</rt></ruby>する」が<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Chị Yamamoto cũng đã dạy chị theo cách đó đấy. "Xem — làm thử — xác nhận" là cơ bản.)* |
| An | わかりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em hiểu rồi ạ. Em sẽ cố gắng.)* |

---

## Tình huống 2 — Hành lang trước phòng ông Tanaka · 9:00, Ngọc làm mẫu 声かけ chuẩn

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、まず「<ruby>声<rt>こえ</rt></ruby>かけ」の<ruby>正しい<rt>ただしい</rt></ruby>やり<ruby>方<rt>かた</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(An, trước tiên hãy xem cách thực hiện "lên tiếng báo trước" đúng cách nhé.)* |
| An | はい。<br>*(Vâng ạ.)* |
| Ngọc | (gõ cửa) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>今<rt>いま</rt></ruby>から<ruby>体<rt>からだ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>かせていただきます。よろしいですか？<br>*(Ông Tanaka, cháu là Nguyễn. Bây giờ cháu lau người cho ông nhé. Ông đồng ý không ạ?)* |
| Ông Tanaka | ああ、いいよ。<br>*(Ừ, được.)* |
| Ngọc | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>寒<rt>さむ</rt></ruby>くないですか？<ruby>窓<rt>まど</rt></ruby>を<ruby>閉<rt>し</rt></ruby>めましょうか？<br>*(Cảm ơn ông. Ông có thấy lạnh không ạ? Cháu đóng cửa sổ không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<br>*(Không sao.)* |
| Ngọc | (sau đó, nói với An) <ruby>見<rt>み</rt></ruby>ましたか? <ruby>入室前<rt>にゅうしつまえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずノック、<ruby>許可<rt>きょか</rt></ruby>、それから「<ruby>何<rt>なに</rt></ruby>をするか」を<ruby>伝<rt>つた</rt></ruby>えます。<ruby>環境<rt>かんきょう</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Em thấy chưa? Trước khi vào phòng nhất định gõ cửa, xin phép, rồi báo "sẽ làm gì". Cũng đừng quên hỏi về môi trường xung quanh nhé.)* |
| An | <ruby>環境<rt>かんきょう</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>、というのは？<br>*(Xác nhận môi trường là sao ạ?)* |
| Ngọc | <ruby>寒<rt>さむ</rt></ruby>くないか、<ruby>明<rt>あか</rt></ruby>るさはいいか、<ruby>プライバシー<rt>プライバシー</rt></ruby>は<ruby>守<rt>まも</rt></ruby>れているかです。<br>*(Là có lạnh không, ánh sáng có ổn không, quyền riêng tư có được đảm bảo không.)* |

---

## Tình huống 3 — Phòng ông Tanaka · 9:20, An thử 声かけ lần đầu

| Vai | Lời thoại |
|---|---|
| Ngọc | じゃあ、アンさんがやってみましょう。わたしはそばで<ruby>見<rt>み</rt></ruby>ています。<br>*(Thôi nào, An thử đi. Chị đứng bên cạnh xem.)* |
| An | (hít thở) <ruby>田中<rt>たなか</rt></ruby>さん...あの、アンです。<ruby>今<rt>いま</rt></ruby>から...えっと...<ruby>体<rt>からだ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>きます...<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Ông Tanaka... à, cháu là An. Bây giờ... ừm... cháu lau người... ông có ổn không ạ?)* |
| Ông Tanaka | (hơi ngạc nhiên) ...ああ、いいよ。<br>*(... Ừ, được.)* |
| An | (quay ra, mặt đỏ) すみません、うまくできなかったです。<br>*(Em xin lỗi, em làm chưa được.)* |
| Ngọc | よかったですよ。<ruby>最初<rt>さいしょ</rt></ruby>にしては<ruby>上手<rt>うま</rt></ruby>でした。<ruby>一点<rt>いってん</rt></ruby>だけ：「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？」より「よろしいですか？」の<ruby>方<rt>ほう</rt></ruby>がていねいです。<br>*(Được lắm đấy. Với lần đầu là khá rồi. Chỉ một điểm thôi: "大丈夫ですか？" thì thay bằng "よろしいですか？" lịch sự hơn nhé.)* |
| An | 「よろしいですか」...はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(「よろしいですか」... Vâng, em sẽ nhớ ạ.)* |
| Ngọc | <ruby>内容<rt>ないよう</rt></ruby>は<ruby>完璧<rt>かんぺき</rt></ruby>です。ノックして、<ruby>名乗<rt>なの</rt></ruby>って、<ruby>何<rt>なに</rt></ruby>をするか<ruby>伝<rt>つた</rt></ruby>えた。<ruby>次<rt>つぎ</rt></ruby>はもっとうまくなりますよ。<br>*(Nội dung là hoàn hảo rồi. Gõ cửa, xưng tên, báo sẽ làm gì. Lần sau sẽ tốt hơn thôi.)* |

---

## Tình huống 4 — Phòng sinh hoạt · 10:00, Ngọc làm mẫu 移乗介助

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>次<rt>つぎ</rt></ruby>は「<ruby>移乗<rt>いじょう</rt></ruby>」です。ベッドから<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>るとき<ruby>手伝<rt>てつだ</rt></ruby>うことです。<br>*(An, tiếp theo là "di chuyển". Là hỗ trợ di chuyển từ giường sang xe lăn.)* |
| An | <ruby>移乗<rt>いじょう</rt></ruby>...はい、<ruby>聞<rt>き</rt></ruby>いたことがあります。<ruby>難<rt>むずか</rt></ruby>しいですか？<br>*(移乗... Vâng, em có nghe rồi. Khó không ạ?)* |
| Ngọc | <ruby>慣<rt>な</rt></ruby>れたら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。まず<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>です。わたしがやってみます。よく<ruby>見<rt>み</rt></ruby>てください。<br>*(Quen rồi là ổn thôi. Trước tiên an toàn là số 1. Chị sẽ làm mẫu. Em xem kỹ nhé.)* |
| Ngọc | (với ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りましょうか。まず<ruby>ベッド<rt>ベッド</rt></ruby>の<ruby>端<rt>はし</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>っていただきます。<br>*(Ông Kimura, mình chuyển sang xe lăn nhé. Trước tiên ông ngồi vào mép giường nhé.)* |
| Ông Kimura | ああ、よろしく。<br>*(Ừ, nhờ cậu nhé.)* |
| Ngọc | (thực hiện đúng kỹ thuật, nói từng bước) <ruby>足<rt>あし</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>につけますね。<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がるとき、わたしの<ruby>肩<rt>かた</rt></ruby>に<ruby>手<rt>て</rt></ruby>を<ruby>置<rt>お</rt></ruby>いてください。いち、に、さん。<br>*(Ông đặt chân xuống sàn nhé. Khi đứng dậy, ông đặt tay lên vai cháu. Một, hai, ba.)* |
| Ông Kimura | (đứng lên) おお。<br>*(Ồ.)* |
| Ngọc | (an toàn vào xe lăn) よかった。<ruby>腰<rt>こし</rt></ruby>は<ruby>痛<rt>いた</rt></ruby>くないですか？<br>*(Tốt rồi. Lưng ông có đau không ạ?)* |
| Ông Kimura | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。グエンさんは<ruby>上手<rt>うま</rt></ruby>いな。<br>*(Không sao. Cháu Nguyễn khéo nhỉ.)* |

---

## Tình huống 5 — Phòng sinh hoạt · 10:30, Ngọc giải thích kỹ thuật 移乗 với An

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>見<rt>み</rt></ruby>ましたか？ ポイントを<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(An, em thấy chưa? Chị giải thích các điểm quan trọng nhé.)* |
| An | はい、<ruby>速<rt>はや</rt></ruby>くて<ruby>驚<rt>おどろ</rt></ruby>きました。でも<ruby>安全<rt>あんぜん</rt></ruby>そうでした。<br>*(Vâng, em thấy nhanh mà vẫn an toàn, em ngạc nhiên ạ.)* |
| Ngọc | <ruby>移乗<rt>いじょう</rt></ruby>のポイントは<ruby>三<rt>みっつ</rt></ruby>です。まず「<ruby>声<rt>こえ</rt></ruby>かけ」。<ruby>次<rt>つぎ</rt></ruby>に「<ruby>体<rt>からだ</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>さ」、つまり<ruby>利用者<rt>りようしゃ</rt></ruby>さんと<ruby>近<rt>ちか</rt></ruby>く<ruby>立<rt>た</rt></ruby>つこと。それから「いち・に・さん」の<ruby>掛<rt>か</rt></ruby>け<ruby>声<rt>ごえ</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>くこと。<br>*(Có ba điểm của 移乗. Đầu tiên là "lên tiếng báo trước". Tiếp theo là "gần cơ thể", tức là đứng sát bên người sử dụng dịch vụ. Rồi dùng "một, hai, ba" cùng nhau di chuyển.)* |
| An | <ruby>三<rt>みっつ</rt></ruby>...「<ruby>声<rt>こえ</rt></ruby>かけ」「<ruby>体<rt>からだ</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>さ」「<ruby>掛<rt>か</rt></ruby>け<ruby>声<rt>ごえ</rt></ruby>」ですね。<br>*(Ba điểm... "声かけ", "gần cơ thể", "đếm cùng" ạ.)* |
| Ngọc | そうです。<ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めないように、<ruby>膝<rt>ひざ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げます。<ruby>背中<rt>せなか</rt></ruby>で<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げると、<ruby>先輩<rt>せんぱい</rt></ruby>も<ruby>利用者<rt>りようしゃ</rt></ruby>さんも<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Đúng. Để không bị đau lưng, dùng đầu gối để nâng. Nếu nâng bằng lưng thì nguy hiểm cho cả nhân viên lẫn người được chăm sóc.)* |
| An | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ chú ý ạ.)* |

---

## Tình huống 6 — Phòng ông Kimura · 11:00, An thử 移乗 với Ngọc đứng kề bên

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>今度<rt>こんど</rt></ruby>はやってみましょう。わたしは<ruby>すぐ<rt>すぐ</rt></ruby><ruby>隣<rt>となり</rt></ruby>にいます。<br>*(An, lần này em thử đi. Chị đứng ngay bên cạnh.)* |
| An | (hít thở, bước tới) <ruby>木村<rt>きむら</rt></ruby>さん、アンです。<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りましょうか。よろしいですか？<br>*(Ông Kimura, cháu là An. Mình chuyển sang xe lăn nhé ạ. Ông đồng ý không ạ?)* |
| Ông Kimura | ああ。<br>*(Ừ.)* |
| An | (hỗ trợ, nói từng bước nhưng hơi run) <ruby>足<rt>あし</rt></ruby>を...そこに。<ruby>手<rt>て</rt></ruby>を...わたしの<ruby>肩<rt>かた</rt></ruby>に。いち、に...さん。<br>*(Chân... để đó. Tay... lên vai cháu. Một, hai... ba.)* |
| Ông Kimura | (ngồi vào xe lăn) おお。<ruby>上手<rt>うま</rt></ruby>いじゃないか。<br>*(Ồ. Khéo nhỉ.)* |
| An | (thở phào) よかった...ありがとうございます。<br>*(May quá... Cháu cảm ơn ông ạ.)* |
| Ngọc | (sau khi ra ngoài) アンさん、すごく<ruby>上手<rt>うま</rt></ruby>でしたよ！<ruby>声<rt>こえ</rt></ruby>かけもできました、「よろしいですか？」もできました。<br>*(An, em làm tốt lắm！ Đã lên tiếng trước, đã nói "よろしいですか？" rồi.)* |
| An | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しましたが、<ruby>声<rt>こえ</rt></ruby>かけのおかげでちょっと<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>きました。<br>*(Cảm ơn chị. Em hồi hộp lắm nhưng nhờ "声かけ" em bình tĩnh được một chút.)* |

---

## Tình huống 7 — Phòng ăn · 11:45, Ngọc làm mẫu 食事介助

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>今度<rt>こんど</rt></ruby>は「<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>」を<ruby>見<rt>み</rt></ruby>てください。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>左片麻痺<rt>ひだりかたまひ</rt></ruby>で、<ruby>右手<rt>みぎて</rt></ruby>は<ruby>使<rt>つか</rt></ruby>えます。<br>*(An, lần này xem chị làm "hỗ trợ bữa ăn" nhé. Ông Tanaka bị liệt nửa người bên trái, tay phải còn dùng được.)* |
| An | <ruby>片麻痺<rt>かたまひ</rt></ruby>...はい。<br>*(Liệt nửa người... Vâng ạ.)* |
| Ngọc | (đến bên ông Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>昼<rt>ひる</rt></ruby>はうどんですよ。お<ruby>好<rt>す</rt></ruby>きですか？<br>*(Ông Tanaka, hôm nay trưa ăn udon đấy ạ. Ông có thích không?)* |
| Ông Tanaka | うどんか。いいな。<br>*(Udon à. Tốt đấy.)* |
| Ngọc | まず<ruby>自分<rt>じぶん</rt></ruby>で<ruby>食<rt>た</rt></ruby>べてみてください。<ruby>難<rt>むずか</rt></ruby>しかったら<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Đầu tiên ông tự ăn thử nhé. Khi nào khó thì cháu giúp.)* |
| Ông Tanaka | (cố ăn, nhưng khó khăn với một tay) うーん、<ruby>麺<rt>めん</rt></ruby>がうまく<ruby>持<rt>も</rt></ruby>てない。<br>*(Ừm, khó giữ sợi mì quá.)* |
| Ngọc | <ruby>手伝<rt>てつだ</rt></ruby>いますね。(giữ bát nhẹ nhàng) <ruby>少<rt>すこ</rt></ruby>しずつ<ruby>口<rt>くち</rt></ruby>に<ruby>運<rt>はこ</rt></ruby>びます。<ruby>熱<rt>あつ</rt></ruby>くないですか？<br>*(Cháu giúp nhé. Từng chút nhỏ cháu đưa lên miệng ông. Ông có thấy nóng không ạ?)* |
| Ông Tanaka | ちょうどいいよ。ありがとう。<br>*(Vừa đủ. Cảm ơn.)* |

---

## Tình huống 8 — Phòng ăn · 12:10, Ngọc giải thích nguyên tắc 食事介助 với An

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>なことを<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(An, chị giải thích những điểm quan trọng của hỗ trợ bữa ăn nhé.)* |
| An | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị chỉ bảo.)* |
| Ngọc | まず「<ruby>自立支援<rt>じりつしえん</rt></ruby>」です。できることは<ruby>自分<rt>じぶん</rt></ruby>でやってもらいます。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>手伝<rt>てつだ</rt></ruby>ってはいけません。<br>*(Đầu tiên là "hỗ trợ tự lập". Những gì các cụ tự làm được thì để tự làm. Không được giúp hết tất cả.)* |
| An | え、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>手伝<rt>てつだ</rt></ruby>ったらいけないんですか？<br>*(Ồ, không được giúp hết ạ?)* |
| Ngọc | そうです。<ruby>残存機能<rt>ざんぞんきのう</rt></ruby>を<ruby>活<rt>い</rt></ruby>かすためです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>力<rt>ちから</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしなければなりません。<br>*(Đúng vậy. Để tận dụng chức năng còn lại. Phải trân trọng sức lực của người sử dụng dịch vụ.)* |
| An | なるほど...<ruby>残存機能<rt>ざんぞんきのう</rt></ruby>、メモします。<br>*(Ra là vậy... 残存機能, em ghi lại ạ.)* |
| Ngọc | それから、<ruby>むせ<rt>むせ</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>すること。ゆっくり、<ruby>少<rt>すこ</rt></ruby>しずつ。<ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>が<ruby>空<rt>から</rt></ruby>になってから<ruby>次<rt>つぎ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<br>*(Ngoài ra, chú ý sặc. Từ từ, từng chút nhỏ. Miệng trống rồi mới đưa tiếp.)* |
| An | はい、<ruby>急<rt>いそ</rt></ruby>がないことが<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Vâng, không vội vàng là quan trọng nhỉ.)* |

---

## Tình huống 9 — Phòng ăn · 12:30, An thử 食事介助 với Ngọc đứng kề bên

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>今度<rt>こんど</rt></ruby>は<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>を<ruby>試<rt>こころ</rt></ruby>みてください。<ruby>木村<rt>きむら</rt></ruby>さんは<ruby>自分<rt>じぶん</rt></ruby>で<ruby>食<rt>た</rt></ruby>べられますが、<ruby>調子<rt>ちょうし</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>い<ruby>日<rt>ひ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(An, lần này em thử hỗ trợ bữa ăn cho ông Kimura nhé. Ông Kimura tự ăn được nhưng những ngày khó chịu thì giúp một chút.)* |
| An | (đến bên ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>昼<rt>ひる</rt></ruby>ごはんですよ。<ruby>自分<rt>じぶん</rt></ruby>で<ruby>食<rt>た</rt></ruby>べてみますか？<br>*(Ông Kimura, bữa trưa hôm nay đây ạ. Ông tự ăn thử nhé?)* |
| Ông Kimura | ああ、<ruby>少<rt>すこ</rt></ruby>し<ruby>食<rt>た</rt></ruby>べてみる。<br>*(Ừ, thử ăn một chút.)* |
| An | (quan sát, thấy ông Kimura ăn chậm và khó) <ruby>手伝<rt>てつだ</rt></ruby>いましょうか？<br>*(Cháu giúp nhé ạ?)* |
| Ông Kimura | ん、じゃあ<ruby>汁<rt>しる</rt></ruby>だけ<ruby>頼<rt>たの</rt></ruby>むかな。<br>*(Ừm, vậy thì nhờ con đưa canh thôi nhé.)* |
| An | はい。(đưa thìa canh từ từ) ゆっくりどうぞ。<ruby>熱<rt>あつ</rt></ruby>くないですか？<br>*(Vâng. Ông ăn từ từ ạ. Có nóng không ạ?)* |
| Ông Kimura | ちょうどいいよ。アンさんは<ruby>丁寧<rt>ていねい</rt></ruby>だな。<br>*(Vừa đủ. An cẩn thận nhỉ.)* |
| Ngọc | (sau đó, gật đầu với An) よかったですよ。<ruby>自立支援<rt>じりつしえん</rt></ruby>ができていました。<ruby>必要<rt>ひつよう</rt></ruby>なところだけ<ruby>手伝<rt>てつだ</rt></ruby>いましたね。<br>*(Tốt lắm. Em đã thực hiện đúng "hỗ trợ tự lập" rồi đấy. Chỉ giúp những chỗ cần thiết nhé.)* |

---

## Tình huống 10 — Hành lang · 13:30, An hỏi về cách xử lý khi 利用者 từ chối

| Vai | Lời thoại |
|---|---|
| An | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>利用者<rt>りようしゃ</rt></ruby>さんが「いらない」とか「したくない」と<ruby>言<rt>い</rt></ruby>ったら、どうすればいいですか？<br>*(Chị, nếu người sử dụng dịch vụ nói "không cần" hay "không muốn" thì làm sao ạ?)* |
| Ngọc | いい<ruby>質問<rt>しつもん</rt></ruby>です。まず、<ruby>無理<rt>むり</rt></ruby>にしないこと。<ruby>拒否<rt>きょひ</rt></ruby>には<ruby>理由<rt>りゆう</rt></ruby>があります。<br>*(Câu hỏi hay đấy. Đầu tiên, không ép buộc. Sự từ chối luôn có lý do.)* |
| An | <ruby>理由<rt>りゆう</rt></ruby>、たとえば？<br>*(Lý do, ví dụ như gì ạ?)* |
| Ngọc | <ruby>体<rt>からだ</rt></ruby>がつらい、<ruby>気分<rt>きぶん</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>い、<ruby>眠<rt>ねむ</rt></ruby>い、または<ruby>担当者<rt>たんとうしゃ</rt></ruby>を<ruby>信頼<rt>しんらい</rt></ruby>していない...いろいろあります。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Người khó chịu, không thoải mái, buồn ngủ, hoặc chưa tin tưởng nhân viên phụ trách... nhiều lý do lắm. Hãy hỏi lý do một cách lịch sự.)* |
| An | 「どうされましたか？」と<ruby>聞<rt>き</rt></ruby>けばいいですか？<br>*(Hỏi "Ông/bà có sao không?" có được không ạ?)* |
| Ngọc | そうです。「<ruby>今<rt>いま</rt></ruby>はしたくないですか？」「どこか<ruby>つらいところ<rt>つらいところ</rt></ruby>はありますか？」と<ruby>聞<rt>き</rt></ruby>くのもいいです。そして<ruby>必<rt>かなら</rt></ruby>ず<ruby>記録<rt>きろく</rt></ruby>と<ruby>報告<rt>ほうこく</rt></ruby>をします。<br>*(Đúng. Hỏi "Giờ ông/bà không muốn ạ?" hay "Có chỗ nào khó chịu không ạ?" cũng tốt. Và nhất định ghi hồ sơ và báo cáo nhé.)* |
| An | <ruby>記録<rt>きろく</rt></ruby>と<ruby>報告<rt>ほうこく</rt></ruby>...はい、<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Ghi hồ sơ và báo cáo... Vâng, quan trọng nhỉ ạ.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · 16:00, Yamamoto kiểm tra tiến độ

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、アンさんの<ruby>指導<rt>しどう</rt></ruby>はどうですか？<br>*(Nguyễn, việc hướng dẫn An thế nào?)* |
| Ngọc | はい。<ruby>声<rt>こえ</rt></ruby>かけと<ruby>移乗<rt>いじょう</rt></ruby>と<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>をやってみました。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>していましたが、<ruby>木村<rt>きむら</rt></ruby>さんに「<ruby>丁寧<rt>ていねい</rt></ruby>だ」と<ruby>言<rt>い</rt></ruby>っていただけました。<br>*(Vâng. Em đã thực hành 声かけ, 移乗 và 食事介助. Ban đầu hồi hộp nhưng ông Kimura đã khen là cẩn thận ạ.)* |
| Yamamoto | それはよかったです。アンさん自身はどうですか？<br>*(Tốt quá. Còn bản thân An thì sao?)* |
| Ngọc | <ruby>真面目<rt>まじめ</rt></ruby>でよく<ruby>質問<rt>しつもん</rt></ruby>します。「<ruby>拒否<rt>きょひ</rt></ruby>のとき」についても<ruby>自分<rt>じぶん</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いてきました。<br>*(Cô ấy nghiêm túc và hay đặt câu hỏi. Ngay cả chủ đề "khi người dùng từ chối" cũng tự hỏi ạ.)* |
| Yamamoto | 素晴らしい。グエンさんも<ruby>一年目<rt>いちねんめ</rt></ruby>のとき、よく<ruby>質問<rt>しつもん</rt></ruby>していましたよ。<br>*(Tuyệt vời. Nguyễn hồi năm nhất cũng hay đặt câu hỏi lắm đấy.)* |
| Ngọc | (mỉm cười) <ruby>山本<rt>やまもと</rt></ruby>さんが<ruby>怖<rt>こわ</rt></ruby>くなかったので、<ruby>聞<rt>き</rt></ruby>けました。<br>*(Vì chị Yamamoto không đáng sợ nên em mới dám hỏi ạ.)* |
| Yamamoto | そう言ってくれて、うれしいです。グエンさんも、アンさんが<ruby>聞<rt>き</rt></ruby>やすい<ruby>先輩<rt>せんぱい</rt></ruby>でいてください。<br>*(Nghe em nói vậy chị vui lắm. Nguyễn cũng cố là người tiền bối mà An dễ hỏi nhé.)* |
| Ngọc | はい、そうします。<br>*(Vâng, em sẽ thế ạ.)* |

---

## Tình huống 12 — Ký túc · 21:30, Ngọc nhớ lại Yamamoto dạy mình

> Scene tiếng Việt — mạch truyện, Ngọc hiểu thêm ý nghĩa của việc được dạy và dạy lại.

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Ngọc ơi, dạy kohai thấy sao? |
| Ngọc | (tiếng Việt) Khó hơn em tưởng. Không phải là biết rồi dạy là xong — mình phải kiên nhẫn, nói đúng thời điểm, để người ta thử trước chứ không được làm hết. |
| Hương | (tiếng Việt) Nghe như chị Yamamoto dạy mình hồi năm 1 vậy. |
| Ngọc | (tiếng Việt) Đúng vậy. Hôm nay chị Yamamoto nói em giống An hồi năm 1. Mà giờ em lại đứng chỗ chị Yamamoto. Thấy... biết ơn lắm. |
| Hương | (tiếng Việt) Thì đó là cách người trong nghề truyền nghề cho nhau. Chị Yamamoto truyền cho mình, mình truyền cho An. |
| Ngọc | (tiếng Việt) Dạ. Và em muốn truyền đúng — không chỉ kỹ thuật mà cái tâm nữa. 利用者さんを大切にする気持ち. |

---

## Đọng lại chương 2

Ngọc học điều khó nhất của vai sempai: không phải làm giỏi hơn, mà là **dạy đúng cách** — làm mẫu trước, giải thích rõ, để kohai thử và nhận xét xây dựng thay vì chỉ trích. Qua 3 kỹ thuật cốt lõi: **声かけ** (lên tiếng báo trước, xin phép, hỏi môi trường), **移乗** (gần cơ thể, đếm cùng, dùng đầu gối), **食事介助** (tự lập trước, từng chút nhỏ, hỏi nhiệt độ). Nguyên tắc **自立支援** và cách xử lý **拒否** (hỏi lý do → ghi hồ sơ → báo cáo) được An hấp thu tốt nhờ Ngọc truyền đạt từ trải nghiệm thực tế. Vòng tròn truyền nghề: Yamamoto → Ngọc → An.

> Từ vựng & mẫu câu chương này: 指導・見てやってみせる・声かけ・入室前・許可・環境確認・移乗・体の近さ・掛け声・片麻痺・食事介助・自立支援・残存機能・むせ・拒否・記録・報告・申し送り・お先に失礼します', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000003, 800000029, NULL, 'markdown_book', 'T3. Chuẩn bị Đặc định (特定技能への準備)', '# Sách thực tập sinh điều dưỡng · T3. Chuẩn bị Đặc định (特定技能への準備)

> **Mục tiêu nhân vật:** Ngọc (27 tuổi, tháng 6/2028, năm thứ 3 TTS sắp kết thúc) tìm hiểu và chuẩn bị chuyển sang tư cách lưu trú 特定技能1号 ngành 介護. Học các từ vựng, quy trình, quyền lợi liên quan đến chế độ đặc định — xen kẽ nghiệp vụ điều dưỡng thường ngày.

> **Ghi chú thời điểm:** Thông tin về 特定技能1号 介護 trong chương này phản ánh khung pháp lý tại thời điểm 2028 (Luật Quản lý Xuất nhập cảnh, thông tư hướng dẫn Bộ Tư pháp / Bộ Y tế Lao động Phúc lợi Nhật Bản). Cụ thể: 3 kỳ thi bắt buộc, JLPT N3 trở lên miễn kỳ thi tiếng Nhật thông thường (JFT-Basic/JLPT), thời hạn tổng cộng tối đa 5 năm, 特定技能2号 介護 cho phép bảo lãnh gia đình. Người học cần xác minh thông tin mới nhất qua cơ quan có thẩm quyền khi thực tế xin chuyển đổi.

---

## Bối cảnh

Tháng 6 năm 2028. Ngọc đang làm ca sáng tại Hidamari-en. Hợp đồng TTS (技能実習) 3 năm sẽ hết hạn vào tháng 9. Yamamoto và Mai-san đã nhắn nhủ Ngọc cần sớm quyết định: về nước hay chuyển 特定技能1号? Ngọc đã tự ôn lại thông tin cơ bản và hôm nay chủ động hỏi chuyện chuyên sâu hơn.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 8:15, hỏi Mai-san về lộ trình

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>マイ<rt>まい</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>し<ruby>相談<rt>そうだん</rt></ruby>してもいいですか？ <ruby>特定技能<rt>とくていぎのう</rt></ruby>のことです。<br>*(Chị Mai, em hỏi chị một chút được không? Về chuyện 特定技能 ạ.)* |
| Mai-san | もちろん。グエンさん、もうそろそろ<ruby>考<rt>かんが</rt></ruby>えないといけない<ruby>時期<rt>じき</rt></ruby>ですね。<ruby>9月<rt>くがつ</rt></ruby>に<ruby>実習<rt>じっしゅう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりますから。<br>*(Tất nhiên rồi. Em Nguyễn, đã đến lúc cần suy nghĩ rồi nhỉ. Vì tháng 9 kết thúc thực tập.)* |
| Ngọc | はい。<ruby>特定技能1号<rt>とくていぎのういちごう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えたいと<ruby>思<rt>おも</rt></ruby>っています。でも、<ruby>何<rt>なに</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めればいいか...<br>*(Vâng. Em muốn chuyển sang 特定技能1号. Nhưng không biết bắt đầu từ đâu...)* |
| Mai-san | まず<ruby>試験<rt>しけん</rt></ruby>のことを<ruby>理解<rt>りかい</rt></ruby>しましょう。<ruby>3種類<rt>さんしゅるい</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>があります。でも、グエンさんはN3を<ruby>持<rt>も</rt></ruby>っているから、<ruby>一部<rt>いちぶ</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby>されます。<br>*(Trước tiên hãy hiểu về các kỳ thi. Có 3 loại thi. Nhưng em có N3 nên sẽ được miễn một phần.)* |
| Ngọc | え、<ruby>免除<rt>めんじょ</rt></ruby>？ どの<ruby>試験<rt>しけん</rt></ruby>ですか？<br>*(Ồ, được miễn？ Miễn thi gì ạ？)* |
| Mai-san | それをこれから<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Để chị giải thích sau nhé.)* |

---

## Tình huống 2 — Phòng nghỉ · 8:30, 3 kỳ thi và quy tắc miễn thi

| Vai | Lời thoại |
|---|---|
| Mai-san | <ruby>特定技能1号<rt>とくていぎのういちごう</rt></ruby><ruby>介護<rt>かいご</rt></ruby>には、<ruby>3種類<rt>さんしゅるい</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Để có 特定技能1号 介護, cần 3 loại kỳ thi.)* |
| Mai-san | ひとつめは「<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>」— <ruby>実技<rt>じつぎ</rt></ruby>と<ruby>知識<rt>ちしき</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>です。<br>*(Thứ nhất là "Kỳ thi đánh giá kỹ năng chăm sóc" — thi kỹ năng thực hành và kiến thức.)* |
| Mai-san | ふたつめは<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>。「JFT‐Basic」か「JLPT N4<ruby>以上<rt>いじょう</rt></ruby>」のどちらかが<ruby>必要<rt>ひつよう</rt></ruby>です。でもグエンさんはJLPT N3を<ruby>持<rt>も</rt></ruby>っているから、この<ruby>部分<rt>ぶぶん</rt></ruby>は**<ruby>免除<rt>めんじょ</rt></ruby>**です。<br>*(Thứ hai là kỳ thi tiếng Nhật. Cần một trong hai: "JFT-Basic" hoặc "JLPT N4 trở lên". Nhưng vì em có JLPT N3, phần này được **miễn**.)* |
| Ngọc | よかった！ それは<ruby>助<rt>たす</rt></ruby>かります。<br>*(May quá！ Thật là nhẹ nhõm.)* |
| Mai-san | みっつめは「<ruby>介護日本語評価試験<rt>かいごにほんごひょうかしけん</rt></ruby>」— <ruby>介護<rt>かいご</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>です。これは<ruby>受<rt>う</rt></ruby>けないといけません。<br>*(Thứ ba là "Kỳ thi đánh giá tiếng Nhật điều dưỡng" — kỳ thi tiếng Nhật chuyên ngành điều dưỡng. Cái này vẫn phải thi.)* |
| Ngọc | つまり、わたしが<ruby>受<rt>う</rt></ruby>けるのは2つの<ruby>試験<rt>しけん</rt></ruby>だけ、ということですね？<br>*(Tức là em chỉ cần thi 2 kỳ thôi, đúng không ạ？)* |
| Mai-san | そうです。JLPT N3<ruby>以上<rt>いじょう</rt></ruby>があれば、<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>部分<rt>ぶぶん</rt></ruby>は<ruby>免除<rt>めんじょ</rt></ruby>になります。<br>*(Đúng vậy. Nếu có JLPT N3 trở lên, phần kỳ thi tiếng Nhật thông thường được miễn.)* |

---

## Tình huống 3 — Hành lang · 9:00, vừa đi kiểm tra 利用者 vừa hỏi thêm

| Vai | Lời thoại |
|---|---|
| Ngọc | (đi cùng Yamamoto kiểm tra buổi sáng) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>って、どんな<ruby>内容<rt>ないよう</rt></ruby>ですか？<br>*(Chị Yamamoto, kỳ thi đánh giá kỹ năng điều dưỡng có nội dung gì ạ?)* |
| Yamamoto | <ruby>介護<rt>かいご</rt></ruby>の<ruby>基本知識<rt>きほんちしき</rt></ruby>と<ruby>技術<rt>ぎじゅつ</rt></ruby>が<ruby>問<rt>と</rt></ruby>われます。<ruby>移乗<rt>いじょう</rt></ruby>や<ruby>入浴介助<rt>にゅうよくかいじょ</rt></ruby>、<ruby>認知症<rt>にんちしょう</rt></ruby>ケアなど。グエンさんは3<ruby>年間<rt>ねんかん</rt></ruby><ruby>やってきた<rt>やってきた</rt></ruby>から<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Sẽ kiểm tra kiến thức và kỹ thuật cơ bản về điều dưỡng. Như chuyển đổi tư thế, hỗ trợ tắm, chăm sóc người sa sút trí tuệ... Em làm 3 năm rồi, không lo đâu.)* |
| Ngọc | <ruby>試験<rt>しけん</rt></ruby>はどこで<ruby>受<rt>う</rt></ruby>けられますか？<br>*(Thi ở đâu ạ?)* |
| Yamamoto | <ruby>海外<rt>かいがい</rt></ruby>でも<ruby>日本<rt>にほん</rt></ruby>でも<ruby>受<rt>う</rt></ruby>けられます。グエンさんはもう<ruby>日本<rt>にほん</rt></ruby>にいるから、<ruby>国内<rt>こくない</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>む<ruby>方<rt>ほう</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>です。<br>*(Có thể thi ở nước ngoài lẫn Nhật Bản. Vì em đang ở Nhật rồi, đăng ký trong nước sẽ tiện hơn.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>次<rt>つぎ</rt></ruby>の<ruby>日程<rt>にってい</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べます。<br>*(Em hiểu rồi. Em sẽ tra lịch thi tiếp theo ạ.)* |
| Yamamoto | (立ち止まって)<ruby>田中<rt>たなか</rt></ruby>さんのお<ruby>部屋<rt>へや</rt></ruby>、ここですよ。<ruby>声<rt>こえ</rt></ruby>かけしてみてください。<br>*(Dừng lại) Phòng ông Tanaka đây. Em thử lên tiếng xem.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。グエンです。<ruby>入<rt>はい</rt></ruby>ってもよろしいですか？<br>*(Ông Tanaka, chào buổi sáng ạ. Em là Nguyễn. Em vào được không ạ?)* |
| Ông Tanaka | ああ、いいよ。<br>*(Ừ, vào đi.)* |

---

## Tình huống 4 — Phòng ông Tanaka · 9:15, chăm sóc buổi sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>体調<rt>たいちょう</rt></ruby>はいかがですか？<br>*(Ông Tanaka, hôm nay sức khỏe ông thế nào ạ?)* |
| Ông Tanaka | まあまあだな。<ruby>腰<rt>こし</rt></ruby>がちょっと<ruby>痛<rt>いた</rt></ruby>い。<br>*(Cũng tạm thôi. Lưng hơi đau.)* |
| Ngọc | そうですか。<ruby>痛<rt>いた</rt></ruby>い<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Vậy ạ. Ông có thể cho cháu biết đau ở chỗ nào không ạ?)* |
| Ông Tanaka | ここ、<ruby>右側<rt>みぎがわ</rt></ruby>の<ruby>腰<rt>こし</rt></ruby>だ。<br>*(Đây, bên phải, ở lưng.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>担当者<rt>たんとうしゃ</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>朝食<rt>ちょうしょく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をしますね。<br>*(Em hiểu rồi. Em sẽ báo cho người phụ trách. Cháu chuẩn bị bữa sáng cho ông nhé.)* |
| Ông Tanaka | グエンちゃん、もうすぐ<ruby>帰<rt>かえ</rt></ruby>るのか？ ベトナムに。<br>*(Cô Nguyễn, sắp về rồi à？ Về Việt Nam.)* |
| Ngọc | まだ<ruby>決<rt>き</rt></ruby>めていません。できれば<ruby>日本<rt>にほん</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Cháu chưa quyết định. Cháu muốn tiếp tục ở Nhật nếu được ạ.)* |
| Ông Tanaka | そうか。<ruby>居<rt>い</rt></ruby>てくれると<ruby>助<rt>たす</rt></ruby>かるよ。<br>*(Vậy à. Nếu em ở lại thì cũng tốt cho tôi đấy.)* |
| Ngọc | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn ông ạ. Cháu sẽ cố gắng.)* |

---

## Tình huống 5 — Phòng sinh hoạt · 10:30, 利用者 tập thể dục nhẹ + hỏi về quyền lợi TK

| Vai | Lời thoại |
|---|---|
| Ngọc | (sau khi hỗ trợ bài tập nhẹ cho các cụ, quay sang An) アン、<ruby>体操<rt>たいそう</rt></ruby><ruby>終<rt>お</rt></ruby>わったら<ruby>記録<rt>きろく</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いね。<br>*(An, xong bài tập thể dục thì ghi chép nhé.)* |
| An | はい、<ruby>先輩<rt>せんぱい</rt></ruby>。ところで、<ruby>特定技能<rt>とくていぎのう</rt></ruby>って、<ruby>実習<rt>じっしゅう</rt></ruby>と<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(Vâng, chị ơi. Nhân tiện, 特定技能 khác 実習 thế nào ạ?)* |
| Ngọc | <ruby>大<rt>おお</rt></ruby>きな<ruby>違<rt>ちが</rt></ruby>いはね、<ruby>転職<rt>てんしょく</rt></ruby>できることと、<ruby>残業<rt>ざんぎょう</rt></ruby>の<ruby>扱<rt>あつか</rt></ruby>いが<ruby>違<rt>ちが</rt></ruby>うこと。<br>*(Khác biệt lớn là được phép chuyển việc, và cách tính giờ làm thêm cũng khác.)* |
| An | <ruby>転職<rt>てんしょく</rt></ruby>できる？<br>*(Được chuyển việc ạ?)* |
| Ngọc | うん。<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>内なら<ruby>転職<rt>てんしょく</rt></ruby>OK。<ruby>実習<rt>じっしゅう</rt></ruby>のときは<ruby>原則<rt>げんそく</rt></ruby>できなかったでしょう。それから<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>日本人<rt>にほんじん</rt></ruby>と<ruby>同等<rt>どうとう</rt></ruby>でないといけないルールがあります。<br>*(Ừ. Trong cùng ngành thì được phép chuyển. Hồi thực tập thì về nguyên tắc không được. Ngoài ra còn có quy định lương phải ngang bằng người Nhật.)* |
| An | いいですね。<ruby>私<rt>わたし</rt></ruby>も<ruby>将来<rt>しょうらい</rt></ruby>そうしたいです。<br>*(Hay nhỉ. Em sau này cũng muốn làm vậy.)* |
| Ngọc | じゃあ、<ruby>今<rt>いま</rt></ruby>からN3<ruby>目指<rt>めざ</rt></ruby>して<ruby>勉強<rt>べんきょう</rt></ruby>してね。それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>近道<rt>ちかみち</rt></ruby>だから。<br>*(Vậy từ bây giờ học hướng tới N3 đi nhé. Đó là con đường tắt nhất đấy.)* |

---

## Tình huống 6 — Phòng ăn · 12:15, bữa trưa ngắn + hỏi chế độ gia đình

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>マイ<rt>まい</rt></ruby>さん、<ruby>特定技能1号<rt>とくていぎのういちごう</rt></ruby>のとき、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>日本<rt>にほん</rt></ruby>に<ruby>呼<rt>よ</rt></ruby>べますか？<br>*(Chị Mai, khi có 特定技能1号, em có thể bảo lãnh gia đình sang Nhật không ạ?)* |
| Mai-san | 1号は<ruby>基本的<rt>きほんてき</rt></ruby>に<ruby>家族帯同<rt>かぞくたいどう</rt></ruby>は<ruby>認<rt>みと</rt></ruby>められていません。<ruby>特定技能2号<rt>とくていぎのうにごう</rt></ruby>になると<ruby>家族帯同<rt>かぞくたいどう</rt></ruby>が<ruby>可能<rt>かのう</rt></ruby>です。<ruby>介護<rt>かいご</rt></ruby>も2号の<ruby>対象<rt>たいしょう</rt></ruby>に<ruby>なっています<rt>なっています</rt></ruby>が、<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>要件<rt>ようけん</rt></ruby>は<ruby>最新<rt>さいしん</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(1号 về cơ bản không được phép bảo lãnh gia đình. Lên 特定技能2号 thì được bảo lãnh gia đình. 介護 cũng đã được bổ sung vào danh sách 2号, nhưng điều kiện cụ thể hãy xác nhận thông tin mới nhất.)* |
| Ngọc | そうですか...<ruby>在留期間<rt>ざいりゅうきかん</rt></ruby>は<ruby>最大<rt>さいだい</rt></ruby>どのくらいですか？<br>*(Vậy ạ... Thời hạn lưu trú tối đa là bao lâu ạ?)* |
| Mai-san | 1<ruby>回<rt>かい</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby>が<ruby>最大<rt>さいだい</rt></ruby>1<ruby>年<rt>ねん</rt></ruby>で、<ruby>更新<rt>こうしん</rt></ruby>できます。<ruby>通算<rt>つうさん</rt></ruby>5<ruby>年<rt>ねん</rt></ruby>まで<ruby>延長<rt>えんちょう</rt></ruby>可能です。<br>*(Mỗi lần lưu trú tối đa 1 năm, có thể gia hạn. Tổng cộng có thể kéo dài đến 5 năm.)* |
| Ngọc | 5<ruby>年間<rt>ねんかん</rt></ruby>...<ruby>更新<rt>こうしん</rt></ruby>のとき、また<ruby>試験<rt>しけん</rt></ruby>が<ruby>要<rt>い</rt></ruby>りますか？<br>*(5 năm... Khi gia hạn có phải thi lại không ạ？)* |
| Mai-san | <ruby>更新<rt>こうしん</rt></ruby>のたびに<ruby>試験<rt>しけん</rt></ruby>はなくていいです。<ruby>雇用主<rt>こようぬし</rt></ruby>との<ruby>契約<rt>けいやく</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>いていれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Mỗi lần gia hạn không cần thi lại. Miễn là hợp đồng với chủ lao động vẫn tiếp tục là được.)* |
| Ngọc | <ruby>安心<rt>あんしん</rt></ruby>しました。ありがとうございます。<br>*(Em yên tâm rồi. Cảm ơn chị ạ.)* |

---

## Tình huống 7 — Phòng sinh hoạt · 14:00, hỗ trợ 利用者 buổi chiều + trao đổi với Yamamoto

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>今日<rt>きょう</rt></ruby>は<ruby>暑<rt>あつ</rt></ruby>いですね。<br>*(Em Nguyễn, nhờ em bổ sung nước cho ông Kimura. Hôm nay trời nóng nhỉ.)* |
| Ngọc | はい。(ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、お<ruby>茶<rt>ちゃ</rt></ruby>をどうぞ。<ruby>熱<rt>あつ</rt></ruby>くないですよ。<br>*(Vâng. Ông Kimura, mời ông dùng trà ạ. Không nóng đâu ạ.)* |
| Ông Kimura | ありがとうよ。グエンちゃん、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>良<rt>よ</rt></ruby>いな。<ruby>何<rt>なに</rt></ruby>かいいことでもあったか？<br>*(Cảm ơn. Cô Nguyễn, trông có vẻ tươi tắn nhỉ. Có chuyện vui gì à?)* |
| Ngọc | はい、ちょっと<ruby>将来<rt>しょうらい</rt></ruby>のことを<ruby>考<rt>かんが</rt></ruby>えていたんです。<ruby>日本<rt>にほん</rt></ruby>でもう<ruby>少<rt>すこ</rt></ruby>し<ruby>働<rt>はたら</rt></ruby>きたくて。<br>*(Vâng, cháu đang nghĩ về tương lai. Cháu muốn làm việc ở Nhật thêm một thời gian nữa.)* |
| Ông Kimura | そうか、<ruby>頑張<rt>がんば</rt></ruby>ってくれ。<ruby>わしら<rt>わしら</rt></ruby>も<ruby>応援<rt>おうえん</rt></ruby>してるぞ。<br>*(Vậy à, cố lên. Bọn mình cũng ủng hộ đấy.)* |
| Yamamoto | (đến gần) グエンさん、<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>は<ruby>早<rt>はや</rt></ruby>めに<ruby>動<rt>うご</rt></ruby>いた<ruby>方<rt>ほう</rt></ruby>がいいですよ。<ruby>書類<rt>しょるい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いですから。<br>*(Em Nguyễn, thủ tục 特定技能 nên chuẩn bị sớm đấy. Giấy tờ nhiều lắm.)* |
| Ngọc | そうですね。どんな<ruby>書類<rt>しょるい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか？<br>*(Vâng chị nhỉ. Cần những giấy tờ gì ạ?)* |

---

## Tình huống 8 — Phòng nghỉ · 14:30, danh sách giấy tờ cần thiết

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>主<rt>おも</rt></ruby>なものをお<ruby>伝<rt>つた</rt></ruby>えしますね。まず<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請書<rt>しんせいしょ</rt></ruby>。<br>*(Chị nói những cái chính nhé. Trước tiên là đơn xin thay đổi tư cách lưu trú.)* |
| Yamamoto | それから<ruby>試験合格証明書<rt>しけんごうかくしょうめいしょ</rt></ruby>、パスポート、<ruby>在留カード<rt>ざいりゅうカード</rt></ruby>、<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>のコピー。<br>*(Sau đó là giấy chứng nhận đỗ thi, hộ chiếu, thẻ lưu trú, bản sao hợp đồng lao động.)* |
| Ngọc | <ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>は、ひだまり<ruby>苑<rt>えん</rt></ruby>が<ruby>用意<rt>ようい</rt></ruby>してくれますか？<br>*(Hợp đồng lao động, Hidamari-en sẽ chuẩn bị cho em chứ ạ?)* |
| Yamamoto | はい、<ruby>施設側<rt>しせつがわ</rt></ruby>が<ruby>準備<rt>じゅんび</rt></ruby>します。<ruby>事業所<rt>じぎょうしょ</rt></ruby>の「<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>」も<ruby>関係<rt>かんけい</rt></ruby>してきます。<br>*(Vâng, phía cơ sở sẽ chuẩn bị. "Tổ chức hỗ trợ đăng ký" của nơi làm việc cũng sẽ liên quan.)* |
| Ngọc | <ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>とは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Tổ chức hỗ trợ đăng ký là gì ạ?)* |
| Yamamoto | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>労働者<rt>ろうどうしゃ</rt></ruby>の<ruby>生活<rt>せいかつ</rt></ruby>や<ruby>就労<rt>しゅうろう</rt></ruby>をサポートする<ruby>機関<rt>きかん</rt></ruby>です。<ruby>住居<rt>じゅうきょ</rt></ruby>のことや<ruby>銀行口座<rt>ぎんこうこうざ</rt></ruby>のことも<ruby>手伝<rt>てつだ</rt></ruby>ってくれます。<br>*(Là tổ chức hỗ trợ cuộc sống và công việc cho lao động nước ngoài. Họ cũng hỗ trợ về nơi ở, tài khoản ngân hàng...)* |
| Ngọc | それは<ruby>安心<rt>あんしん</rt></ruby>ですね。<ruby>一人<rt>ひとり</rt></ruby>では<ruby>難<rt>むずか</rt></ruby>しそうです。<br>*(Thật yên tâm. Một mình chắc khó lắm ạ.)* |

---

## Tình huống 9 — Phòng ông Tanaka · 15:00, vệ sinh buổi chiều

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>午後<rt>ごご</rt></ruby>の<ruby>清拭<rt>せいしょく</rt></ruby>をしますね。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Ông Tanaka, cháu lau người buổi chiều cho ông nhé. Cháu xin phép ạ.)* |
| Ông Tanaka | ああ。<ruby>腰<rt>こし</rt></ruby>の<ruby>痛<rt>いた</rt></ruby>みはまだあるよ。<br>*(Ừ. Lưng vẫn còn đau đấy.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>今日<rt>きょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>に<ruby>書<rt>か</rt></ruby>いておきましたし、<ruby>看護師<rt>かんごし</rt></ruby>さんにも<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em hiểu rồi. Em đã ghi vào nhật ký hôm nay rồi, và sẽ báo cho y tá ạ.)* |
| Ông Tanaka | ちゃんとしてるな、グエンちゃんは。<br>*(Em Nguyễn chu đáo nhỉ.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんの<ruby>お<rt>お</rt></ruby>かげです。いつも<ruby>教<rt>おし</rt></ruby>えてくださいますから。<br>*(Nhờ ông ạ. Ông lúc nào cũng chỉ bảo cho cháu.)* |
| Ông Tanaka | はっはっは。そうかね。<br>*(Ha ha ha. Thế hả.)* |
| Ngọc | では、<ruby>始<rt>はじ</rt></ruby>めますね。<ruby>痛<rt>いた</rt></ruby>かったらすぐ<ruby>言<rt>い</rt></ruby>ってください。<br>*(Vậy cháu bắt đầu nhé. Nếu đau thì nói ngay cho cháu biết ạ.)* |

---

## Tình huống 10 — Bàn nhân viên · 15:45, đọc tài liệu hướng dẫn 特定技能

| Vai | Lời thoại |
|---|---|
| Ngọc | (ngồi đọc tài liệu) <ruby>マイ<rt>まい</rt></ruby>さん、この「<ruby>特定技能所属機関<rt>とくていぎのうしょぞくきかん</rt></ruby>」というのは、ひだまり<ruby>苑<rt>えん</rt></ruby>のことですか？<br>*(Chị Mai, "cơ quan thuộc đặc định kỹ năng" này chỉ Hidamari-en đúng không ạ?)* |
| Mai-san | そうです。<ruby>特定技能外国人<rt>とくていぎのうがいこくじん</rt></ruby>を<ruby>雇用<rt>こよう</rt></ruby>する<ruby>施設<rt>しせつ</rt></ruby>のことです。<ruby>施設<rt>しせつ</rt></ruby>も<ruby>要件<rt>ようけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たさないといけません。<br>*(Đúng rồi. Đó là cơ sở tuyển dụng người lao động 特定技能 nước ngoài. Cơ sở cũng phải đáp ứng các điều kiện nhất định.)* |
| Ngọc | ひだまり<ruby>苑<rt>えん</rt></ruby>は<ruby>要件<rt>ようけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たしていますか？<br>*(Hidamari-en đáp ứng điều kiện chưa ạ?)* |
| Mai-san | はい。すでに<ruby>他<rt>ほか</rt></ruby>のスタッフで<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>方<rt>かた</rt></ruby>がいますから、<ruby>実績<rt>じっせき</rt></ruby>があります。グエンさんは<ruby>申請<rt>しんせい</rt></ruby>しやすい<ruby>状況<rt>じょうきょう</rt></ruby>ですよ。<br>*(Rồi. Vì đã có nhân viên 特定技能 khác rồi, nên có tiền lệ. Em Nguyễn đang ở hoàn cảnh thuận lợi để đăng ký đấy.)* |
| Ngọc | よかった。では、<ruby>7月<rt>しちがつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>して<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みます。<br>*(May quá. Vậy em sẽ đăng ký hướng tới kỳ thi tháng 7 ạ.)* |
| Mai-san | いいですね。<ruby>応援<rt>おうえん</rt></ruby>しています。<ruby>分<rt>わ</rt></ruby>からないことがあれば、<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Hay đấy. Chị ủng hộ em. Có gì không hiểu cứ hỏi chị nhé.)* |

---

## Tình huống 11 — Hành lang · 16:30, bàn giao ca với nhân viên ca chiều

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りをします。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>午前<rt>ごぜん</rt></ruby>から<ruby>右腰部<rt>みぎようぶ</rt></ruby>に<ruby>痛<rt>いた</rt></ruby>みがあります。<ruby>看護師<rt>かんごし</rt></ruby>さんへの<ruby>報告<rt>ほうこく</rt></ruby>は<ruby>済<rt>す</rt></ruby>んでいます。<br>*(Em bàn giao nhé. Ông Tanaka từ buổi sáng có đau ở vùng lưng phải. Đã báo cho y tá rồi ạ.)* |
| Nhân viên ca chiều | <ruby>分<rt>わ</rt></ruby>かりました。ほかに<ruby>変<rt>か</rt></ruby>わったことはありますか？<br>*(Em hiểu rồi. Có điểm gì bất thường khác không?)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さんは<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>普通<rt>ふつう</rt></ruby>で、<ruby>水分<rt>すいぶん</rt></ruby>も<ruby>問題<rt>もんだい</rt></ruby>ありません。<ruby>他<rt>ほか</rt></ruby>の<ruby>利用者<rt>りようしゃ</rt></ruby>さんも<ruby>特<rt>とく</rt></ruby>に<ruby>変<rt>か</rt></ruby>わりなしです。<br>*(Ông Kimura ăn uống bình thường, nước uống cũng không có vấn đề. Các cụ khác cũng không có gì đặc biệt.)* |
| Nhân viên ca chiều | ありがとう。<ruby>記録<rt>きろく</rt></ruby>はできていますか？<br>*(Cảm ơn. Đã ghi chép xong chưa?)* |
| Ngọc | はい、<ruby>全員分<rt>ぜんいんぶん</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em đã điền đủ cho tất cả. Nhờ anh/chị xác nhận ạ.)* |
| Nhân viên ca chiều | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>お疲<rt>おつか</rt></ruby>れさまでした。<br>*(Rõ. Em vất vả rồi.)* |
| Ngọc | お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>夕方<rt>ゆうがた</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh/chị vất vả rồi. Buổi chiều tối nhờ anh/chị nhé.)* |

---

## Tình huống 12 — Phòng ký túc · 21:30, Ngọc và Hương (mạch truyện)

> Scene tiếng Việt — giữ mạch nhân vật & tâm lý thực tế của lao động Việt chuẩn bị bước ngoặt.

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Ngọc, nghe chị Lan nói mày đang tính chuyển đặc định? |
| Ngọc | (tiếng Việt) Ừ. Tao nghĩ kỹ rồi. Về cũng được, nhưng tao chưa muốn. Cảm giác như bỏ dở giữa chừng. |
| Hương | (tiếng Việt) Nhưng 特定技能 là thi lại từ đầu mà. Không ngại sao? |
| Ngọc | (tiếng Việt) Tao chỉ còn thi 2 phần thôi vì có N3. Phần kỹ năng điều dưỡng thì tao làm 3 năm rồi, không lo bằng hồi thi N3. Cái tao lo hơn là giấy tờ với tiền xử lý hồ sơ. |
| Hương | (tiếng Việt) Công ty của mày có hỗ trợ không? |
| Ngọc | (tiếng Việt) Chị Yamamoto nói sẽ có 登録支援機関 hỗ trợ. Mà tao cũng phải tự tìm hiểu, không thể phụ thuộc hoàn toàn. |
| Hương | (tiếng Việt) Ừ, kiểu gì cũng phải biết quyền lợi của mình. Cố lên, 3 năm làm việc không phải dễ, xứng đáng được ở lại. |

---

## Đọng lại chương 3

Tháng 6/2028, Ngọc chủ động tìm hiểu lộ trình chuyển 特定技能1号 介護. Các mẫu câu và kiến thức chính: **3 kỳ thi** (介護技能評価試験・JFT-Basic hoặc JLPT N4 trở lên・介護日本語評価試験), **quy tắc miễn thi** (JLPT N3 trở lên miễn phần kỳ thi tiếng Nhật thông thường — còn phải thi 介護技能評価試験 và 介護日本語評価試験), **quyền lợi** (転職 trong cùng ngành, lương ngang người Nhật, gia hạn tổng cộng tối đa 5 năm), **giấy tờ cần thiết** (在留資格変更許可申請書・試験合格証明書・雇用契約書・パスポート・在留カード), **vai trò 登録支援機関**. Nghiệp vụ thường ngày: giao tiếp báo cáo đau lưng 利用者, bàn giao ca chuẩn, 声かけ khi làm 清拭.

> Từ vựng & mẫu câu chương này: 特定技能1号・在留資格・免除・介護技能評価試験・JFT-Basic・JLPT・介護日本語評価試験・転職・登録支援機関・特定技能所属機関・在留資格変更許可申請書・雇用契約書・在留カード・清拭・申し送り・右腰部・記入する・了解', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000004, 800000029, NULL, 'markdown_book', 'T4. Bước đầu dẫn dắt (リーダーシップ)', '# Sách thực tập sinh điều dưỡng · T4. Bước đầu dẫn dắt (リーダーシップ)

> **Mục tiêu nhân vật:** Ngọc (27 tuổi, tháng 7/2028) được Yamamoto giao phụ trách 1 nhóm 利用者 trong ca sáng. Học kỹ năng リーダーシップ cơ bản: phân công công việc, ưu tiên nhiệm vụ, điều phối khi thiếu người, lập kế hoạch chăm sóc nhỏ, và cách hướng dẫn kohai An.

---

## Bối cảnh

Tháng 7 năm 2028. Sau khi Yamamoto quan sát thấy Ngọc làm việc chín chắn, cô quyết định giao Ngọc phụ trách nhóm A (gồm ông Tanaka, ông Kimura và 3 cụ khác) trong ca sáng thứ Hai. Đây là lần đầu tiên Ngọc đảm nhận vai trò dẫn dắt nhóm. An — đàn em 1 năm kinh nghiệm — được giao phối hợp cùng. Ngọc vừa học làm leader vừa tiếp tục chuẩn bị hồ sơ 特定技能.

---

## Tình huống 1 — Phòng họp nhân viên · 7:50, nhận nhiệm vụ từ Yamamoto

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>午前中<rt>ごぜんちゅう</rt></ruby>のAグループを<ruby>担当<rt>たんとう</rt></ruby>してもらいます。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>木村<rt>きむら</rt></ruby>さんなど<ruby>合計<rt>ごうけい</rt></ruby>5<ruby>名<rt>めい</rt></ruby>です。<br>*(Em Nguyễn, từ hôm nay nhờ em phụ trách nhóm A buổi sáng. Gồm ông Tanaka, ông Kimura và tổng cộng 5 người.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。アンさんも<ruby>一緒<rt>いっしょ</rt></ruby>ですか？<br>*(Vâng, em rõ rồi ạ. An cũng đi cùng phải không ạ?)* |
| Yamamoto | そうです。アンさんの<ruby>動<rt>うご</rt></ruby>きもグエンさんが<ruby>確認<rt>かくにん</rt></ruby>してください。<ruby>先輩<rt>せんぱい</rt></ruby>として、<ruby>声<rt>こえ</rt></ruby>かけと<ruby>指示<rt>しじ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đúng. Nhờ em cũng xem cả cách làm của An. Với tư cách đàn chị, nhờ em hướng dẫn và phân công nhé.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>何<rt>なに</rt></ruby>か<ruby>気<rt>き</rt></ruby>をつけることはありますか？<br>*(Em hiểu rồi. Có điều gì cần lưu ý không ạ?)* |
| Yamamoto | <ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>優先順位<rt>ゆうせんじゅんい</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えてください。<ruby>医療的<rt>いりょうてき</rt></ruby>なケアが<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>方<rt>かた</rt></ruby>から<ruby>先<rt>さき</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>する。わからなければすぐ<ruby>相談<rt>そうだん</rt></ruby>してください。<br>*(Hãy nghĩ về thứ tự ưu tiên cho từng cụ. Ưu tiên người cần chăm sóc y tế trước. Có gì không hiểu thì hỏi ngay nhé.)* |
| Ngọc | はい。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Em sẽ cố gắng ạ.)* |

---

## Tình huống 2 — Hành lang · 8:05, phân công công việc với An

| Vai | Lời thoại |
|---|---|
| Ngọc | アン、<ruby>今日<rt>きょう</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>私<rt>わたし</rt></ruby>が<ruby>田中<rt>たなか</rt></ruby>さんと<ruby>木村<rt>きむら</rt></ruby>さんを<ruby>担当<rt>たんとう</rt></ruby>します。アンは<ruby>残り<rt>のこり</rt></ruby>の3<ruby>名<rt>めい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(An, chị giải thích phân công hôm nay nhé. Chị phụ trách ông Tanaka và ông Kimura. An đảm nhận 3 cụ còn lại nhé.)* |
| An | はい、<ruby>先輩<rt>せんぱい</rt></ruby>。<ruby>順番<rt>じゅんばん</rt></ruby>はどうすればいいですか？<br>*(Vâng, chị ơi. Thứ tự làm thế nào ạ?)* |
| Ngọc | まず<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけをして<ruby>体調確認<rt>たいちょうかくにん</rt></ruby>をします。それから<ruby>更衣介助<rt>こういかいじょ</rt></ruby>、<ruby>洗面<rt>せんめん</rt></ruby>介助の<ruby>順<rt>じゅん</rt></ruby>で。<br>*(Trước tiên chào và kiểm tra tình trạng sức khỏe tất cả mọi người. Sau đó theo thứ tự hỗ trợ thay đồ, vệ sinh mặt.)* |
| An | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>緊急<rt>きんきゅう</rt></ruby>のときはどうしたらいいですか？<br>*(Em hiểu rồi ạ. Khi khẩn cấp thì làm thế nào ạ?)* |
| Ngọc | すぐ<ruby>私<rt>わたし</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んでください。それでも<ruby>難<rt>むずか</rt></ruby>しければ、<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えないでね。<br>*(Gọi chị ngay. Nếu vẫn khó thì báo chị Yamamoto. Đừng một mình ôm đồm nhé.)* |
| An | はい、<ruby>先輩<rt>せんぱい</rt></ruby>。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, chị. Nhờ chị nhé.)* |

---

## Tình huống 3 — Phòng ông Tanaka · 8:20, kiểm tra buổi sáng + phát hiện vấn đề

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>体調<rt>たいちょう</rt></ruby>はいかがですか？<br>*(Ông Tanaka, chào buổi sáng ạ. Hôm nay sức khỏe ông thế nào ạ?)* |
| Ông Tanaka | うーん、<ruby>昨夜<rt>さくや</rt></ruby>はあまり<ruby>眠<rt>ねむ</rt></ruby>れなかった。<ruby>体<rt>からだ</rt></ruby>がだるい。<br>*(Ừm, tối qua không ngủ được mấy. Người mệt mỏi.)* |
| Ngọc | そうですか。<ruby>熱<rt>ねつ</rt></ruby>はありますか？ <ruby>測<rt>はか</rt></ruby>ってもいいですか？<br>*(Vậy ạ. Ông có sốt không ạ？ Cháu đo nhiệt độ được không ạ？)* |
| Ông Tanaka | まあ、<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Ừ, nhờ cháu đi.)* |
| Ngọc | (đo nhiệt kế) 37.2<ruby>度<rt>ど</rt></ruby>です。<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>いですね。<ruby>食欲<rt>しょくよく</rt></ruby>はありますか？<br>*(37.2 độ. Hơi cao nhỉ. Ông có muốn ăn không ạ?)* |
| Ông Tanaka | あまりない。<br>*(Không mấy.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。すぐ<ruby>担当<rt>たんとう</rt></ruby>の<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。ゆっくり<ruby>休<rt>やす</rt></ruby>んでいてください。<br>*(Em hiểu rồi. Cháu báo ngay cho y tá phụ trách ạ. Ông nghỉ ngơi nhé.)* |
| Ông Tanaka | ありがとう。グエンちゃん、<ruby>今日<rt>きょう</rt></ruby>はリーダーだってな。<br>*(Cảm ơn. Em Nguyễn, hôm nay em làm leader à nhỉ.)* |
| Ngọc | は、はい。<ruby>初<rt>はじ</rt></ruby>めてなので<ruby>緊張<rt>きんちょう</rt></ruby>していますが、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(V, vâng ạ. Lần đầu tiên nên cháu hơi hồi hộp, nhưng cháu sẽ cố gắng ạ.)* |

---

## Tình huống 4 — Điểm điều dưỡng · 8:40, báo cáo Yamamoto và điều chỉnh kế hoạch

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>体温<rt>たいおん</rt></ruby>が37.2<ruby>度<rt>ど</rt></ruby>で、<ruby>食欲<rt>しょくよく</rt></ruby>もあまりありません。<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Chị Yamamoto, nhiệt độ ông Tanaka 37.2 độ, ăn uống cũng kém. Em xin báo cáo ạ.)* |
| Yamamoto | ありがとう、<ruby>素早<rt>すばや</rt></ruby>い<ruby>報告<rt>ほうこく</rt></ruby>ですね。<ruby>看護師<rt>かんごし</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>しておきます。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>の<ruby>入浴<rt>にゅうよく</rt></ruby>は<ruby>中止<rt>ちゅうし</rt></ruby>にしましょう。<br>*(Cảm ơn em, báo cáo nhanh nhỉ. Chị liên hệ y tá ngay. Hôm nay dừng tắm cho ông Tanaka nhé.)* |
| Ngọc | はい。それではAグループの<ruby>入浴<rt>にゅうよく</rt></ruby>は<ruby>田中<rt>たなか</rt></ruby>さんを<ruby>除<rt>のぞ</rt></ruby>いた4<ruby>名<rt>めい</rt></ruby>でよろしいですか？<br>*(Vâng. Vậy nhóm A tắm sẽ là 4 người trừ ông Tanaka, được không ạ?)* |
| Yamamoto | そうです。<ruby>順番<rt>じゅんばん</rt></ruby>はグエンさんに<ruby>任<rt>まか</rt></ruby>せます。どうしますか？<br>*(Đúng. Thứ tự chị để em quyết. Em định làm thế nào?)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さんから<ruby>始<rt>はじ</rt></ruby>めます。<ruby>車椅子<rt>くるまいす</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は<ruby>二人<rt>ふたり</rt></ruby>がかりが<ruby>必要<rt>ひつよう</rt></ruby>なので、アンと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>します。<br>*(Bắt đầu từ ông Kimura. Những cụ dùng xe lăn cần hai người nên em sẽ làm cùng An.)* |
| Yamamoto | いい<ruby>判断<rt>はんだん</rt></ruby>ですね。<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Phán đoán tốt đấy. Em tiến hành đi.)* |

---

## Tình huống 5 — Phòng tắm · 9:30, hướng dẫn An hỗ trợ tắm cho 利用者

| Vai | Lời thoại |
|---|---|
| Ngọc | アン、<ruby>木村<rt>きむら</rt></ruby>さんを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>お風呂<rt>おふろ</rt></ruby>にご<ruby>案内<rt>あんない</rt></ruby>します。<ruby>脱衣<rt>だつい</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が、アンは<ruby>椅子<rt>いす</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>してください。<br>*(An, hai chị em mình cùng đưa ông Kimura vào tắm. Chị phụ cởi đồ, An chuẩn bị ghế nhé.)* |
| An | はい。<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>湯温<rt>ゆおん</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>しましたか？<br>*(Vâng. Chị ơi, đã kiểm tra nhiệt độ nước chưa ạ?)* |
| Ngọc | あ、そうですね。<ruby>確認<rt>かくにん</rt></ruby>してください。<ruby>40度<rt>よんじゅうど</rt></ruby>から<ruby>41度<rt>よんじゅういちど</rt></ruby>がいいです。<br>*(À đúng rồi. An kiểm tra đi nhé. Khoảng 40 đến 41 độ là được.)* |
| An | (kiểm tra) 40.5<ruby>度<rt>ど</rt></ruby>でした。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(40.5 độ ạ. Ổn rồi ạ.)* |
| Ngọc | よかった。(sang ông Kimura) <ruby>木村<rt>きむら</rt></ruby>さん、お<ruby>風呂<rt>ふろ</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。<ruby>気持<rt>きも</rt></ruby>ちよくなりますよ。<br>*(Tốt. Ông Kimura, đến giờ tắm rồi ạ. Sẽ thấy dễ chịu hơn đấy.)* |
| Ông Kimura | ああ、<ruby>楽<rt>たの</rt></ruby>しみだ。<br>*(Ừ, thích đây.)* |
| Ngọc | (nói nhỏ với An) アン、<ruby>木村<rt>きむら</rt></ruby>さんは<ruby>膝<rt>ひざ</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いから、<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がりのとき<ruby>必<rt>かなら</rt></ruby>ず<ruby>支<rt>ささ</rt></ruby>えてください。<br>*(nói nhỏ với An: An nhé, ông Kimura đầu gối yếu nên khi đứng dậy nhất định phải đỡ ông.)* |
| An | わかりました、<ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Em hiểu rồi, chị ơi.)* |

---

## Tình huống 6 — Phòng sinh hoạt · 10:30, lập kế hoạch chăm sóc ngắn hạn

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>短期<rt>たんき</rt></ruby>ケアプランを<ruby>考<rt>かんが</rt></ruby>えてみました。よろしいですか？<br>*(Chị Yamamoto, em đã thử lên kế hoạch chăm sóc ngắn hạn cho ông Tanaka. Chị xem giúp được không ạ?)* |
| Yamamoto | もちろん。<ruby>話<rt>はな</rt></ruby>してください。<br>*(Được chứ. Em nói đi.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>安静<rt>あんせい</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>して、<ruby>食事<rt>しょくじ</rt></ruby>は<ruby>少量<rt>しょうりょう</rt></ruby>でも<ruby>無理<rt>むり</rt></ruby>なく<ruby>提供<rt>ていきょう</rt></ruby>します。<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>を<ruby>こまめに<rt>こまめに</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Hôm nay ưu tiên nghỉ ngơi, cung cấp bữa ăn ít nhưng không ép. Kiểm tra bổ sung nước thường xuyên.)* |
| Ngọc | <ruby>午後<rt>ごご</rt></ruby>も<ruby>体温<rt>たいおん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>って、<ruby>変化<rt>へんか</rt></ruby>があれば<ruby>すぐ<rt>すぐ</rt></ruby><ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Buổi chiều cũng đo nhiệt độ, nếu có thay đổi báo ngay cho y tá ạ.)* |
| Yamamoto | とても<ruby>具体的<rt>ぐたいてき</rt></ruby>ですね。よく<ruby>考<rt>かんが</rt></ruby>えています。これをアンさんにも<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Rất cụ thể đấy. Em nghĩ kỹ lắm. Chia sẻ kế hoạch này cho An nhé.)* |
| Ngọc | はい、<ruby>伝<rt>つた</rt></ruby>えます。<ruby>記録<rt>きろく</rt></ruby>にも<ruby>書<rt>か</rt></ruby>いておきます。<br>*(Vâng, em sẽ thông báo. Em cũng ghi vào nhật ký ạ.)* |
| Yamamoto | <ruby>素晴<rt>すばら</rt></ruby>しい。<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>すことが<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りのときも<ruby>使<rt>つか</rt></ruby>えますから。<br>*(Tuyệt vời. Ghi chép lại là điều quan trọng. Còn dùng được khi bàn giao ca.)* |

---

## Tình huống 7 — Hành lang · 11:00, xử lý khi thiếu người

| Vai | Lời thoại |
|---|---|
| An | (chạy đến) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>鈴木<rt>すずき</rt></ruby>さんがトイレを<ruby>急<rt>きゅう</rt></ruby>に<ruby>希望<rt>きぼう</rt></ruby>されています。でも<ruby>私<rt>わたし</rt></ruby>は<ruby>今<rt>いま</rt></ruby><ruby>別<rt>べつ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>の<ruby>対応中<rt>たいおうちゅう</rt></ruby>です。<br>*(Chị ơi, cụ Suzuki đột ngột muốn đi vệ sinh. Nhưng em đang phụ trách cụ khác mà.)* |
| Ngọc | 分かった。<ruby>私<rt>わたし</rt></ruby>が<ruby>行<rt>い</rt></ruby>きます。アンはそのまま<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Chị hiểu. Chị đi. An cứ tiếp tục đi nhé.)* |
| An | すみません、ありがとうございます。<br>*(Xin lỗi chị, cảm ơn chị.)* |
| Ngọc | (đến chỗ cụ Suzuki) <ruby>鈴木<rt>すずき</rt></ruby>さん、グエンです。<ruby>トイレ<rt>トイレ</rt></ruby>ですね。すぐ<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Cụ Suzuki, cháu là Nguyễn. Cụ cần đi vệ sinh phải không ạ. Mình đi ngay nhé.)* |
| Cụ Suzuki | ありがとうよ、<ruby>急<rt>いそ</rt></ruby>いでね。<br>*(Cảm ơn nhé, nhanh lên đấy.)* |
| Ngọc | はい、<ruby>気<rt>き</rt></ruby>をつけていきましょうね。<ruby>急<rt>いそ</rt></ruby>ぎすぎないでください。<br>*(Vâng, mình đi cẩn thận nhé. Cụ đừng vội quá ạ.)* |

---

## Tình huống 8 — Phòng nghỉ nhân viên · 11:30, An báo tình huống bất ngờ

| Vai | Lời thoại |
|---|---|
| An | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby>さんが「<ruby>頭<rt>あたま</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>い」とおっしゃっています。どうしたらいいですか？<br>*(Chị ơi, cụ Sato nói "bị đau đầu". Phải làm gì ạ?)* |
| Ngọc | まず<ruby>体温<rt>たいおん</rt></ruby>と<ruby>血圧<rt>けつあつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ってください。<ruby>数値<rt>すうち</rt></ruby>を<ruby>見<rt>み</rt></ruby>てから<ruby>判断<rt>はんだん</rt></ruby>します。<br>*(Trước hết đo nhiệt độ và huyết áp đi. Xem chỉ số rồi mình quyết định.)* |
| An | 分かりました。(sau đó quay lại) 36.8<ruby>度<rt>ど</rt></ruby>、<ruby>血圧<rt>けつあつ</rt></ruby>は158/95です。<br>*(Em hiểu rồi. Sau đó quay lại: 36.8 độ, huyết áp 158/95 ạ.)* |
| Ngọc | <ruby>血圧<rt>けつあつ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>めですね。これは<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>すぐ<rt>すぐ</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>する<ruby>必要<rt>ひつよう</rt></ruby>があります。<ruby>私<rt>わたし</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Huyết áp hơi cao nhỉ. Cần báo ngay cho y tá. Chị sẽ liên hệ.)* |
| An | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>一人<rt>ひとり</rt></ruby>でどこまで<ruby>判断<rt>はんだん</rt></ruby>できるんですか？<br>*(Chị ơi, mình có thể tự phán đoán đến đâu vậy ạ？)* |
| Ngọc | <ruby>バイタル<rt>バイタル</rt></ruby>の<ruby>測定<rt>そくてい</rt></ruby>と<ruby>記録<rt>きろく</rt></ruby>まで。<ruby>判断<rt>はんだん</rt></ruby>と<ruby>指示<rt>しじ</rt></ruby>は<ruby>看護師<rt>かんごし</rt></ruby>さん。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えないことが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đến mức đo và ghi chép dấu hiệu sinh tồn. Phán đoán và chỉ định là y tá. Quan trọng là không vượt quá vai trò của mình.)* |
| An | よく<ruby>分<rt>わ</rt></ruby>かりました。<ruby>先輩<rt>せんぱい</rt></ruby>、ありがとうございます。<br>*(Em hiểu rõ rồi. Cảm ơn chị.)* |

---

## Tình huống 9 — Phòng ông Tanaka · 13:00, kiểm tra buổi chiều + kết nối

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>昼<rt>ひる</rt></ruby>ごはんは<ruby>食<rt>た</rt></ruby>べられましたか？<br>*(Ông Tanaka, bữa trưa ông ăn được chút không ạ?)* |
| Ông Tanaka | ちょっとだけな。<ruby>おかゆ<rt>おかゆ</rt></ruby>を<ruby>半分<rt>はんぶん</rt></ruby>。<br>*(Chút thôi. Cháo được nửa phần.)* |
| Ngọc | <ruby>食<rt>た</rt></ruby>べてくれてよかった。<ruby>水<rt>みず</rt></ruby>はどのくらい<ruby>飲<rt>の</rt></ruby>みましたか？<br>*(Ăn được là tốt rồi. Ông uống được bao nhiêu nước ạ?)* |
| Ông Tanaka | コップ1<ruby>杯<rt>はい</rt></ruby>ぐらいかな。<br>*(Khoảng một ly thôi.)* |
| Ngọc | <ruby>午後<rt>ごご</rt></ruby>ももう<ruby>少<rt>すこ</rt></ruby>し<ruby>飲<rt>の</rt></ruby>んでもらえると<ruby>助<rt>たす</rt></ruby>かります。お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきますね。<br>*(Chiều ông uống thêm một chút nữa thì tốt hơn. Cháu mang trà đến nhé.)* |
| Ông Tanaka | グエンちゃん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>ちゃんと<rt>ちゃんと</rt></ruby>リーダーしてるじゃないか。<br>*(Em Nguyễn, hôm nay em làm leader đàng hoàng đấy chứ.)* |
| Ngọc | ありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>言<rt>い</rt></ruby>ってもらえると<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Cảm ơn ông ạ. Được ông nói vậy cháu thấy thêm động lực.)* |
| Ông Tanaka | ふん。まあ、<ruby>頑張<rt>がんば</rt></ruby>りなさい。<br>*(Hừm. Thôi, cứ cố lên.)* |

---

## Tình huống 10 — Phòng sinh hoạt · 14:00, họp nhóm nhanh cuối ca sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | アン、10<ruby>分<rt>ぷん</rt></ruby>だけ<ruby>話<rt>はな</rt></ruby>しましょう。<ruby>今日<rt>きょう</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ります。<br>*(An, nói chuyện 10 phút thôi nhé. Nhìn lại buổi sáng hôm nay.)* |
| An | はい、<ruby>先輩<rt>せんぱい</rt></ruby>。<ruby>佐藤<rt>さとう</rt></ruby>さんのことは<ruby>上手<rt>うまく</rt></ruby>く<ruby>対応<rt>たいおう</rt></ruby>できましたか？<br>*(Vâng, chị. Vụ cụ Sato chị xử lý ổn không ạ?)* |
| Ngọc | はい。<ruby>看護師<rt>かんごし</rt></ruby>さんがすぐ<ruby>対応<rt>たいおう</rt></ruby>してくださいました。アンが<ruby>早<rt>はや</rt></ruby>く<ruby>報告<rt>ほうこく</rt></ruby>してくれたからです。<br>*(Ổn. Y tá xử lý ngay. Nhờ An báo nhanh đấy.)* |
| An | ありがとうございます。でも、<ruby>血圧<rt>けつあつ</rt></ruby>の<ruby>数値<rt>すうち</rt></ruby>を<ruby>見<rt>み</rt></ruby>てもどう<ruby>判断<rt>はんだん</rt></ruby>すればいいか...<br>*(Cảm ơn chị. Nhưng nhìn con số huyết áp mà không biết phán đoán thế nào...)* |
| Ngọc | <ruby>正常値<rt>せいじょうち</rt></ruby>の<ruby>目安<rt>めやす</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えましょう。<ruby>収縮期<rt>しゅうしゅくき</rt></ruby>140以上か、<ruby>拡張期<rt>かくちょうき</rt></ruby>90以上だと<ruby>高血圧<rt>こうけつあつ</rt></ruby>のサインです。でも<ruby>判断<rt>はんだん</rt></ruby>は<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>任<rt>まか</rt></ruby>せて。<br>*(Hãy nhớ ngưỡng bình thường. Tâm thu từ 140 trở lên hoặc tâm trương từ 90 trở lên là dấu hiệu huyết áp cao. Nhưng phán đoán thì để y tá nhé.)* |
| An | はい、メモします。<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>はたくさん<ruby>教<rt>おし</rt></ruby>えてくださってありがとうございました。<br>*(Vâng, em ghi lại ạ. Chị ơi, hôm nay cảm ơn chị đã chỉ bảo nhiều.)* |
| Ngọc | アンもよく<ruby>動<rt>うご</rt></ruby>いてくれました。ありがとう。<ruby>明日<rt>あした</rt></ruby>もよろしく。<br>*(An cũng làm tốt lắm. Cảm ơn. Ngày mai cũng nhờ nhé.)* |

---

## Tình huống 11 — Bàn nhân viên · 16:30, tổng kết ca với Yamamoto

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>のAグループ、どうでしたか？<br>*(Em Nguyễn, nhóm A hôm nay thế nào?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんの<ruby>発熱<rt>はつねつ</rt></ruby>と<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>血圧上昇<rt>けつあつじょうしょう</rt></ruby>がありました。どちらもすぐ<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>しました。<ruby>入浴<rt>にゅうよく</rt></ruby>は4<ruby>名<rt>めい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Ông Tanaka bị sốt và cụ Sato huyết áp tăng. Cả hai trường hợp đều liên hệ y tá ngay. Tắm cho 4 người hoàn thành ạ.)* |
| Yamamoto | <ruby>完璧<rt>かんぺき</rt></ruby>な<ruby>報告<rt>ほうこく</rt></ruby>ですね。アンさんへの<ruby>指示<rt>しじ</rt></ruby>はどうでしたか？<br>*(Báo cáo hoàn hảo đấy. Còn hướng dẫn cho An thì sao?)* |
| Ngọc | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>不安<rt>ふあん</rt></ruby>そうでしたが、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えて<ruby>動<rt>うご</rt></ruby>けるようになっています。<ruby>血圧<rt>けつあつ</rt></ruby>の<ruby>正常値<rt>せいじょうち</rt></ruby>もまだ<ruby>覚<rt>おぼ</rt></ruby>えていないので、<ruby>今後<rt>こんご</rt></ruby><ruby>教<rt>おし</rt></ruby>えていきます。<br>*(Ban đầu có vẻ lo lắng, nhưng giờ đã tự nghĩ và hành động được. Vẫn chưa nhớ ngưỡng huyết áp bình thường nên về sau chị sẽ dạy thêm.)* |
| Yamamoto | <ruby>後輩<rt>こうはい</rt></ruby>の<ruby>成長<rt>せいちょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら<ruby>育<rt>そだ</rt></ruby>てる、それがリーダーの<ruby>大事<rt>だいじ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>です。グエンさん、<ruby>今日<rt>きょう</rt></ruby>はよくできました。<br>*(Vừa nhìn sự trưởng thành của đàn em vừa nuôi dưỡng — đó là việc quan trọng của người leader. Em Nguyễn, hôm nay làm tốt lắm.)* |
| Ngọc | ありがとうございます。まだまだ<ruby>勉強<rt>べんきょう</rt></ruby>することがたくさんありますが、<ruby>続<rt>つづ</rt></ruby>けて<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn chị. Em vẫn còn nhiều điều phải học, nhưng em sẽ tiếp tục cố gắng ạ.)* |

---

## Tình huống 12 — Phòng ký túc · 21:00, Ngọc và Đức (mạch truyện)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến tâm lý Ngọc bước vào vai trò mới.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Sao, làm leader ngày đầu thế nào? |
| Ngọc | (tiếng Việt) Mệt hơn làm bình thường nhiều lắm anh. Phải để mắt đồng thời tới 5 người, lại còn lo cho An nữa. |
| Đức | (tiếng Việt) Thế mới là leader chứ. Em thấy cái gì khó nhất? |
| Ngọc | (tiếng Việt) Phán đoán thứ tự ưu tiên. Ông Tanaka sốt, cụ Sato huyết áp tăng, cụ Suzuki cần vệ sinh gấp — tất cả gần như cùng lúc. Em phải quyết nhanh mà không được sai. |
| Đức | (tiếng Việt) Mà em không sai chứ? |
| Ngọc | (tiếng Việt) May là không. Nhưng em hiểu ra một điều: mình làm điều dưỡng không chỉ chăm cụ nữa, mà còn phải lo cho đàn em học đúng kỹ thuật. Cái này nặng hơn tưởng. |
| Đức | (tiếng Việt) Ừ. Nhưng đó là dấu hiệu em đang lên tầm mới đấy. Thực ra phù hợp với 特定技能 luôn — người ta cần người có thể tự chủ trong ca làm việc. |
| Ngọc | (tiếng Việt) Đúng rồi. Cũng may em đã đăng ký thi tháng 7. Nếu làm leader tốt, hồ sơ cũng đẹp hơn. |

---

## Đọng lại chương 4

Tháng 7/2028, Ngọc bước vào vai trò leader nhóm lần đầu. Các mẫu câu và kỹ năng chính: **phân công công việc** (担当を説明します・アンは〜をお願いします), **báo cáo khẩn** (すぐ看護師さんに報告します), **lập kế hoạch chăm sóc** (優先順位・短期ケアプラン), **xử lý thiếu người** (私が行きます・そのまま続けてください), **hướng dẫn đàn em** (〜に気をつけてください・役割を超えないことが大切), **tổng kết ca** với cấp trên. Khái niệm nghiệp vụ: バイタル測定, 正常値の目安, 収縮期/拡張期, 申し送り dưới vai trò leader.

> Từ vựng & mẫu câu chương này: 担当・優先順位・短期ケアプラン・バイタル・収縮期・拡張期・高血圧・正常値・判断・役割・後輩・申し送り・発熱・血圧上昇・承知しました・〜まで完了しました・育てる・リーダーシップ', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000005, 800000029, NULL, 'markdown_book', 'T5. Thi Đặc định (特定技能試験)', '# Sách thực tập sinh điều dưỡng · T5. Thi Đặc định (特定技能試験)

> **Mục tiêu nhân vật:** Ngọc (năm 3 TTS, sắp kết thúc hợp đồng) chuẩn bị và tham dự kỳ thi 特定技能1号介護: 介護技能評価試験 và 介護日本語評価試験 (đã có N3 nên miễn JFT-Basic). Học mẫu hội thoại ôn thi nghiệp vụ, lý thuyết điều dưỡng chuẩn, và ngôn ngữ phòng thi.

---

## Bối cảnh

Tháng 8 năm 2028. Ngọc sắp hết hợp đồng TTS介護. Để ở lại Nhật theo diện 特定技能1号介護, Ngọc phải thi đỗ 2 bài: 介護技能評価試験 (kỹ năng chuyên ngành — gồm phần lý thuyết và thực hành thao tác 介助) và 介護日本語評価試験 (tiếng Nhật điều dưỡng). Ngọc đã có JLPT N3 nên được miễn JFT-Basic. Cùng ôn với Hương và Đức — cả ba đều thi cùng đợt.

> ⚠️ Chú thích: Thông tin về các bài thi 特定技能1号介護 và điều kiện visa được mô tả theo quy định có hiệu lực tại thời điểm 2026–2028. Người học nên kiểm tra lại quy định hiện hành khi cần.

---

## Tình huống 1 — Phòng sinh hoạt Hidamari-en · Buổi sáng, nhận lịch thi từ cấp trên

| Vai | Lời thoại |
|---|---|
| Kimura | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>ありますか?<ruby>試験<rt>しけん</rt></ruby>のことで<ruby>話<rt>はなし</rt></ruby>があります。<br>*(Em Nguyễn, chiều nay em có chút thời gian không? Tôi có chuyện muốn nói về kỳ thi.)* |
| Ngọc | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>ですね?<br>*(Vâng, em rảnh ạ. Là về kỳ thi 特定技能 đúng không ạ?)* |
| Kimura | そうです。<ruby>来月<rt>らいげつ</rt></ruby>、<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>と<ruby>介護日本語評価試験<rt>かいごにほんごひょうかしけん</rt></ruby>の<ruby>日程<rt>にってい</rt></ruby>が<ruby>確定<rt>かくてい</rt></ruby>しました。<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby>20<ruby>日<rt>にち</rt></ruby>です。<br>*(Đúng vậy. Tháng sau, lịch thi 介護技能評価試験 và 介護日本語評価試験 đã được xác nhận. Ngày 20 tháng 8.)* |
| Ngọc | 8<ruby>月<rt>がつ</rt></ruby>20<ruby>日<rt>にち</rt></ruby>ですね。メモします。JFT-Basicは<ruby>免除<rt>めんじょ</rt></ruby>でいいですか?<br>*(Ngày 20 tháng 8 ạ. Em ghi lại. JFT-Basic thì em được miễn đúng không ạ?)* |
| Kimura | はい、N3をお<ruby>持<rt>も</rt></ruby>ちですから<ruby>免除<rt>めんじょ</rt></ruby>です。<ruby>残<rt>のこ</rt></ruby>り2<ruby>科目<rt>かもく</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>してください。<ruby>施設<rt>しせつ</rt></ruby>も<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Vâng, em có N3 rồi nên được miễn. Em tập trung vào 2 môn còn lại nhé. Cơ sở chúng tôi cũng cổ vũ em.)* |
| Ngọc | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn ông ạ. Em sẽ cố gắng.)* |

---

## Tình huống 2 — Phòng nghỉ nhân viên · 20:00, ba người bắt đầu ôn thi

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Nhật) <ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>、どんな<ruby>問題<rt>もんだい</rt></ruby>が<ruby>出<rt>で</rt></ruby>るか<ruby>知<rt>し</rt></ruby>ってる?<br>*(Bài thi đánh giá kỹ năng điều dưỡng, mày biết ra đề gì không?)* |
| Ngọc | <ruby>筆記<rt>ひっき</rt></ruby>と<ruby>実技<rt>じつぎ</rt></ruby>の2<ruby>部分<rt>ぶぶん</rt></ruby>だよ。<ruby>筆記<rt>ひっき</rt></ruby>は<ruby>介護<rt>かいご</rt></ruby>の<ruby>基本知識<rt>きほんちしき</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>介助<rt>かいじょ</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>実演<rt>じつえん</rt></ruby>する。<br>*(Có 2 phần: bút ký và thực hành. Bút ký là kiến thức cơ bản điều dưỡng, thực hành là thực hiện thao tác hỗ trợ.)* |
| Hương | <ruby>実技<rt>じつぎ</rt></ruby>で<ruby>何<rt>なに</rt></ruby>が<ruby>出<rt>で</rt></ruby>そう?<br>*(Thực hành hỏi gì vậy nhỉ?)* |
| Ngọc | <ruby>移乗介助<rt>いじょうかいじょ</rt></ruby>とか<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>とか。<ruby>声かけ<rt>こえかけ</rt></ruby>が<ruby>減点<rt>げんてん</rt></ruby>対象になるから、<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>をかけながらやること。<br>*(Hỗ trợ chuyển chỗ và hỗ trợ bữa ăn. Quên 声かけ là bị trừ điểm, nên vừa làm vừa phải nói nhé.)* |
| Đức | わかった。じゃあ<ruby>実技<rt>じつぎ</rt></ruby>から<ruby>練習<rt>れんしゅう</rt></ruby>しよう。俺が<ruby>利用者<rt>りようしゃ</rt></ruby>役をやる。<br>*(Hiểu rồi. Vậy luyện thực hành trước đi. Tao đóng vai người sử dụng dịch vụ.)* |
| Ngọc | よし。始めるね。<br>*(Được. Bắt đầu nhé.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 20:30, luyện thao tác 移乗介助 với Đức

| Vai | Lời thoại |
|---|---|
| Ngọc | (thực hành) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>から<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りますね。よろしいですか?<br>*(Ông Tanaka, bây giờ mình chuyển sang xe lăn nhé. Ông đồng ý không ạ?)* |
| Đức | (đóng vai) はい。<br>*(Vâng.)* |
| Ngọc | (kiểm tra) まず<ruby>車椅子<rt>くるまいす</rt></ruby>のブレーキをかけます。<ruby>フットレスト<rt>ふっとれすと</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げますね。<br>*(Trước tiên, khóa phanh xe lăn. Em nâng bàn đặt chân lên nhé.)* |
| Ngọc | <ruby>端座位<rt>たんざい</rt></ruby>になってください。<ruby>足<rt>あし</rt></ruby>をしっかり<ruby>床<rt>ゆか</rt></ruby>につけてください。<br>*(Ông ngồi thẳng cạnh giường được không ạ. Đặt chân chắc xuống sàn nhé.)* |
| Ngọc | では、<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がりますね。<ruby>前<rt>まえ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>体<rt>からだ</rt></ruby>を<ruby>傾<rt>かたむ</rt></ruby>けてください。せーの。<br>*(Vậy, mình đứng dậy nhé. Ông nghiêng người về phía trước một chút. Nào.)* |
| Hương | (nhận xét) <ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がりの<ruby>声かけ<rt>こえかけ</rt></ruby>、もう<ruby>一回<rt>いっかい</rt></ruby>はっきり<ruby>言<rt>い</rt></ruby>った方がいいよ。「せーの」だけじゃなく「<ruby>立<rt>た</rt></ruby>ちますよ」も<ruby>加<rt>くわ</rt></ruby>えて。<br>*(Tiếng hô lúc đứng dậy, nói rõ hơn một lần nữa đi. Không chỉ "nào" mà thêm "mình đứng nhé" vào.)* |
| Ngọc | あ、そうだね。ありがとう。もう<ruby>一回<rt>いっかい</rt></ruby>やってみる。<br>*(À, đúng rồi. Cảm ơn. Thử lại một lần nữa nào.)* |

---

## Tình huống 4 — Hành lang Hidamari-en · Buổi chiều, ôn lý thuyết cùng Yamamoto

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>試験<rt>しけん</rt></ruby>の<ruby>筆記<rt>ひっき</rt></ruby>で「<ruby>介護<rt>かいご</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>」がよく<ruby>出<rt>で</rt></ruby>ると<ruby>聞<rt>き</rt></ruby>きました。<ruby>確認<rt>かくにん</rt></ruby>してもいいですか?<br>*(Chị Yamamoto, em nghe nói "nguyên tắc cơ bản điều dưỡng" hay ra trong phần bút ký. Em hỏi lại được không ạ?)* |
| Yamamoto | もちろん。まず「<ruby>尊厳<rt>そんげん</rt></ruby>の<ruby>保持<rt>ほじ</rt></ruby>」、<ruby>次<rt>つぎ</rt></ruby>に「<ruby>自立支援<rt>じりつしえん</rt></ruby>」、そして「<ruby>個別ケア<rt>こべつけあ</rt></ruby>」。この3つがとても<ruby>重要<rt>じゅうよう</rt></ruby>です。<br>*(Tất nhiên. Đầu tiên là "bảo vệ phẩm giá", tiếp theo là "hỗ trợ tự lập", và "chăm sóc cá nhân hóa". 3 điều này rất quan trọng.)* |
| Ngọc | <ruby>自立支援<rt>じりつしえん</rt></ruby>...「<ruby>なんでも<rt>なんでも</rt></ruby><ruby>やってあげる<rt>やってあげる</rt></ruby>のではなく、<ruby>本人<rt>ほんにん</rt></ruby>ができることはなるべく<ruby>本人<rt>ほんにん</rt></ruby>に<ruby>やってもらう<rt>やってもらう</rt></ruby>」ということですよね?<br>*(Hỗ trợ tự lập... nghĩa là "không làm thay mọi thứ, mà để bản thân họ tự làm những gì có thể", đúng không ạ?)* |
| Yamamoto | その<ruby>通<rt>とお</rt></ruby>りです。<ruby>残存能力<rt>ざんそんのうりょく</rt></ruby>を<ruby>活<rt>い</rt></ruby>かすことです。<ruby>試験<rt>しけん</rt></ruby>でも<ruby>現場<rt>げんば</rt></ruby>でも、この<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>は<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Đúng vậy. Là phát huy năng lực còn lại. Cả trong thi lẫn thực tế, cách nghĩ này là cơ bản.)* |
| Ngọc | <ruby>残存能力<rt>ざんそんのうりょく</rt></ruby>...はい、メモします。あと「<ruby>褥瘡<rt>じょくそう</rt></ruby>」の<ruby>予防<rt>よぼう</rt></ruby>も<ruby>よく出る<rt>よくでる</rt></ruby>ですか?<br>*(Năng lực còn lại... vâng, em ghi lại. Ngoài ra, phòng ngừa loét tì đè cũng hay ra không ạ?)* |
| Yamamoto | はい。「2<ruby>時間<rt>じかん</rt></ruby>ごとの<ruby>体位変換<rt>たいいへんかん</rt></ruby>」が<ruby>基本<rt>きほん</rt></ruby>です。それと<ruby>皮膚<rt>ひふ</rt></ruby>の<ruby>観察<rt>かんさつ</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Vâng. "Đổi tư thế mỗi 2 tiếng" là cơ bản. Và đừng quên quan sát da.)* |
| Ngọc | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Vâng, em hiểu rõ rồi ạ. Cảm ơn chị.)* |

---

## Tình huống 5 — Phòng nghỉ nhân viên · 22:00, ôn 介護日本語評価試験 cùng Hương

| Vai | Lời thoại |
|---|---|
| Hương | (mở đề cương) グエンちゃん、<ruby>介護日本語評価試験<rt>かいごにほんごひょうかしけん</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しよう。私が<ruby>読<rt>よ</rt></ruby>む。<br>*(Ngọc, mình luyện bài 申し送り trong 介護日本語評価試験 nhé. Tao đọc.)* |
| Hương | 「<ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>昨夜<rt>さくや</rt></ruby>23<ruby>時<rt>じ</rt></ruby>ごろ<ruby>覚醒<rt>かくせい</rt></ruby>、<ruby>トイレ誘導<rt>といれゆうどう</rt></ruby>を<ruby>実施<rt>じっし</rt></ruby>した。<ruby>その後<rt>そのご</rt></ruby>は<ruby>安眠<rt>あんみん</rt></ruby>。<ruby>バイタル<rt>ばいたる</rt></ruby><ruby>異常<rt>いじょう</rt></ruby>なし」——<ruby>下線<rt>かせん</rt></ruby>の「<ruby>誘導<rt>ゆうどう</rt></ruby>」の<ruby>読み方<rt>よみかた</rt></ruby>は?<br>*(Câu hỏi: "Bà Yamada, khoảng 23h đêm qua thức giấc, đã thực hiện dẫn đến nhà vệ sinh. Sau đó ngủ ngon. Sinh hiệu bình thường." — Từ "誘導" đọc là gì?)* |
| Ngọc | 「<ruby>誘導<rt>ゆうどう</rt></ruby>」だよ。「ゆうどう」。"<ruby>誘<rt>ゆう</rt></ruby>"が「さそう」、"<ruby>導<rt>どう</rt></ruby>"が「みちびく」。<br>*(Là "yūdō". "誘" là "mời, dẫn", "導" là "hướng dẫn".)* |
| Hương | <ruby>正解<rt>せいかい</rt></ruby>。じゃあ「<ruby>安眠<rt>あんみん</rt></ruby>」は?<br>*(Đúng rồi. Vậy "安眠" đọc là gì?)* |
| Ngọc | 「<ruby>安眠<rt>あんみん</rt></ruby>」。ぐっすり<ruby>眠<rt>ねむ</rt></ruby>ること。<ruby>記録<rt>きろく</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>だよ。<br>*(Là "anmin". Ngủ say. Từ hay dùng trong ghi hồ sơ.)* |
| Hương | <ruby>私<rt>わたし</rt></ruby>は「<ruby>排泄<rt>はいせつ</rt></ruby>」の<ruby>漢字<rt>かんじ</rt></ruby>がいつも<ruby>不安<rt>ふあん</rt></ruby>。<br>*(Tao hay lo kanji của "排泄".)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、「<ruby>排<rt>はい</rt></ruby>」と「<ruby>泄<rt>せつ</rt></ruby>」。<ruby>毎日<rt>まいにち</rt></ruby><ruby>記録<rt>きろく</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてるから<ruby>絶対<rt>ぜったい</rt></ruby><ruby>書<rt>か</rt></ruby>ける。<ruby>信じて<rt>しんじて</rt></ruby>。<br>*(Không sao, "排" và "泄". Mày viết trong hồ sơ mỗi ngày rồi nên chắc chắn viết được. Tự tin lên.)* |

---

## Tình huống 6 — Phòng nghỉ nhân viên · 23:00, lo lắng trước ngày thi (ngày hôm trước)

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn vào ghi chú) <ruby>明日<rt>あした</rt></ruby>か...。<ruby>筆記<rt>ひっき</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う。でも<ruby>実技<rt>じつぎ</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>したら<ruby>声かけ<rt>こえかけ</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れそうで<ruby>怖<rt>こわ</rt></ruby>い。<br>*(Ngày mai rồi... Phần bút ký chắc ổn. Nhưng phần thực hành, nếu hồi hộp thì sợ quên 声かけ.)* |
| Đức | (tiếng Nhật) <ruby>緊張<rt>きんちょう</rt></ruby>しても<ruby>順番<rt>じゅんばん</rt></ruby>通りやれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。「<ruby>声かけ<rt>こえかけ</rt></ruby>→<ruby>確認<rt>かくにん</rt></ruby>→<ruby>介助<rt>かいじょ</rt></ruby>→<ruby>確認<rt>かくにん</rt></ruby>」を<ruby>体<rt>から</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えてる。<br>*(Dù hồi hộp thì cứ làm theo thứ tự là ổn. "声かけ → xác nhận → hỗ trợ → xác nhận" — cơ thể đã nhớ rồi.)* |
| Hương | <ruby>毎日<rt>まいにち</rt></ruby><ruby>現場<rt>げんば</rt></ruby>でやってることと<ruby>同<rt>おな</rt></ruby>じだよ。<ruby>試験<rt>しけん</rt></ruby>だからって<ruby>特別<rt>とくべつ</rt></ruby>なことは<ruby>何<rt>なに</rt></ruby>もない。<br>*(Cũng giống hệt thứ mày làm ở hiện trường mỗi ngày. Vì là thi chứ không có gì đặc biệt hơn đâu.)* |
| Ngọc | ...そうだよね。<ruby>3年間<rt>さんねんかん</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby>やってきた。<ruby>私<rt>わたし</rt></ruby>の<ruby>体<rt>からだ</rt></ruby>はもう<ruby>知<rt>し</rt></ruby>ってる。<br>*(... Đúng rồi nhỉ. 3 năm, mỗi ngày đều làm. Cơ thể mình đã biết rồi.)* |
| Đức | <ruby>3人<rt>さんにん</rt></ruby>で<ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かる。<br>*(3 đứa mình nhất định đỗ.)* |
| Ngọc | うん。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Ừ. Cùng cố lên.)* |

---

## Tình huống 7 — Hội trường thi · 9:00, trước phòng thi — chờ bắt đầu

| Vai | Lời thoại |
|---|---|
| Hướng dẫn viên thi | これより「<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>」を<ruby>開始<rt>かいし</rt></ruby>します。<ruby>携帯電話<rt>けいたいでんわ</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>はお<ruby>切<rt>き</rt></ruby>りください。<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>には<ruby>筆記用具<rt>ひっきようぐ</rt></ruby>のみ。<br>*(Bây giờ bắt đầu "Bài thi đánh giá kỹ năng điều dưỡng". Vui lòng tắt điện thoại. Trên bàn chỉ để dụng cụ viết.)* |
| Ngọc | (nhìn quanh, hít thở sâu) ...<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>3年間<rt>さんねんかん</rt></ruby><ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねてきた。(đặt bút xuống bàn, nhìn vào tờ đề)<br>*(... Không sao. 3 năm tích lũy rồi. — đặt bút, nhìn vào đề —)* |
| Hướng dẫn viên thi | では<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Bắt đầu làm bài.)* |
| Ngọc | (đọc câu hỏi đầu tiên) 「<ruby>移乗介助<rt>いじょうかいじょ</rt></ruby>の<ruby>際<rt>さい</rt></ruby>に<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>行<rt>おこな</rt></ruby>うことは<ruby>何<rt>なに</rt></ruby>か」...「<ruby>声かけ<rt>こえかけ</rt></ruby>」。(tự tin ghi đáp án)<br>*(Câu hỏi đầu tiên: "Khi hỗ trợ chuyển chỗ, điều đầu tiên phải làm là gì?"... "声かけ". — tự tin ghi đáp án —)* |

---

## Tình huống 8 — Phòng thực hành · 11:00, phần thi thực hành 移乗介助

| Vai | Lời thoại |
|---|---|
| Giám khảo | グエンさん、<ruby>今<rt>いま</rt></ruby>から<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>利用者<rt>りようしゃ</rt></ruby>さんをベッドから<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移乗<rt>いじょう</rt></ruby>してください。<br>*(Nguyễn, bây giờ bắt đầu phần thi thực hành. Xin hỗ trợ người sử dụng dịch vụ từ giường lên xe lăn.)* |
| Ngọc | (hít thở, tiếp cận người mẫu bình tĩnh) <ruby>田中<rt>たなか</rt></ruby>さん、こんにちは。グエンです。<ruby>今<rt>いま</rt></ruby>から<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りましょうか。<ruby>準備<rt>じゅんび</rt></ruby>はよろしいですか?<br>*(Ông Tanaka, xin chào. Cháu là Nguyễn. Bây giờ mình chuyển sang xe lăn nhé. Ông đã sẵn sàng chưa ạ?)* |
| Người mẫu | (gật đầu) はい。<br>*(Vâng.)* |
| Ngọc | まず<ruby>車椅子<rt>くるまいす</rt></ruby>のブレーキをかけます。(kiểm tra phanh) <ruby>フットレスト<rt>ふっとれすと</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げます。(nâng lên) では、<ruby>端座位<rt>たんざい</rt></ruby>になっていただけますか。<br>*(Trước tiên em khóa phanh xe lăn. — kiểm tra — Em nâng bàn chân lên. — nâng — Vậy, ông ngồi thẳng cạnh giường được không ạ.)* |
| Ngọc | <ruby>足<rt>あし</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>にしっかりつけてください。では<ruby>立<rt>た</rt></ruby>ちますよ、せーの。<br>*(Đặt chân chắc xuống sàn nhé. Mình đứng nhé, nào.)* |
| Ngọc | (sau khi hỗ trợ ông ngồi xuống xe lăn) <ruby>座<rt>すわ</rt></ruby>れましたね。<ruby>痛<rt>いた</rt></ruby>いところはありませんか?<br>*(Ông đã ngồi rồi nhé. Có chỗ nào đau không ạ?)* |
| Người mẫu | (lắc đầu) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Không sao.)* |
| Ngọc | (nhẹ nhõm, tiếp tục bình tĩnh) ありがとうございます。<ruby>以上<rt>いじょう</rt></ruby>で<ruby>終<rt>お</rt></ruby>わります。<br>*(Cảm ơn ông. Đến đây kết thúc ạ.)* |

---

## Tình huống 9 — Hành lang hội trường thi · 12:30, sau khi nộp bài bút ký

| Vai | Lời thoại |
|---|---|
| Hương | (thì thầm) グエンちゃん、<ruby>問題<rt>もんだい</rt></ruby>3<ruby>番<rt>ばん</rt></ruby>、どう<ruby>答<rt>こた</rt></ruby>えた?「<ruby>褥瘡予防<rt>じょくそうよぼう</rt></ruby>のための<ruby>体位変換<rt>たいいへんかん</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>」。<br>*(Ngọc ơi, câu 3 mày trả lời sao? "Khoảng cách đổi tư thế để phòng loét tì đè".)* |
| Ngọc | 「2<ruby>時間<rt>じかん</rt></ruby>ごと」って<ruby>書<rt>か</rt></ruby>いた。<br>*(Tao ghi "mỗi 2 tiếng".)* |
| Hương | (thở phào) よかった、<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ。<ruby>実技<rt>じつぎ</rt></ruby>はどうだった?<br>*(Chuẩn rồi, tao cũng vậy. Còn thực hành thế nào?)* |
| Ngọc | <ruby>緊張<rt>きんちょう</rt></ruby>したけど...<ruby>声かけ<rt>こえかけ</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>言<rt>い</rt></ruby>えた。<ruby>順番<rt>じゅんばん</rt></ruby>も<ruby>間違<rt>まちが</rt></ruby>えなかったと<ruby>思<rt>おも</rt></ruby>う。<br>*(Hồi hộp nhưng... 声かけ mình nói đủ hết. Thứ tự cũng không nhầm, chắc vậy.)* |
| Đức | (đến chỗ hai người) <ruby>実技<rt>じつぎ</rt></ruby>、<ruby>最後<rt>さいご</rt></ruby>の「<ruby>痛<rt>いた</rt></ruby>いところはないですか」を<ruby>言<rt>い</rt></ruby>うの<ruby>忘<rt>わす</rt></ruby>れた...。<ruby>減点<rt>げんてん</rt></ruby>かな。<br>*(Thực hành, tao quên câu "có chỗ nào đau không" ở cuối... Bị trừ điểm không nhỉ.)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<ruby>他<rt>ほか</rt></ruby>が<ruby>全部<rt>ぜんぶ</rt></ruby>できてたら、1<ruby>点<rt>てん</rt></ruby>か2<ruby>点<rt>てん</rt></ruby>の<ruby>減点<rt>げんてん</rt></ruby>だけ。<ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>超<rt>こ</rt></ruby>えてると<ruby>思<rt>おも</rt></ruby>う。<br>*(Ổn mà. Nếu các phần khác đều làm được thì chỉ bị trừ 1-2 điểm. Chắc vẫn qua điểm đỗ.)* |

---

## Tình huống 10 — Hội trường thi · 14:00, phần thi 介護日本語評価試験

| Vai | Lời thoại |
|---|---|
| Hướng dẫn viên thi | これより「<ruby>介護日本語評価試験<rt>かいごにほんごひょうかしけん</rt></ruby>」を<ruby>開始<rt>かいし</rt></ruby>します。<ruby>配布<rt>はいふ</rt></ruby>した<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Bây giờ bắt đầu "Bài thi tiếng Nhật điều dưỡng". Xem tờ đề được phát.)* |
| Ngọc | (nhìn vào đề) 「<ruby>申し送り<rt>もうしおくり</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んで<ruby>答<rt>こた</rt></ruby>えなさい」...よし。(tự tin mở đề)<br>*(Câu hỏi: "Đọc bàn giao ca và trả lời"... Được rồi. — tự tin mở đề —)* |
| Ngọc | (đọc đề đầu) 「<ruby>木村<rt>きむら</rt></ruby>さん、<ruby>昨夜<rt>さくや</rt></ruby><ruby>発熱<rt>はつねつ</rt></ruby>38.2<ruby>度<rt>ど</rt></ruby>。<ruby>解熱剤<rt>げねつざい</rt></ruby><ruby>投与<rt>とうよ</rt></ruby>後、37.1<ruby>度<rt>ど</rt></ruby>に<ruby>低下<rt>ていか</rt></ruby>」。<ruby>下線<rt>かせん</rt></ruby>の「<ruby>解熱剤<rt>げねつざい</rt></ruby>」の<ruby>読み方<rt>よみかた</rt></ruby>は...「げねつざい」!<br>*(Đọc câu: "Ông Kimura, tối qua sốt 38.2 độ. Sau khi dùng thuốc hạ sốt, giảm xuống 37.1 độ." Chữ gạch dưới "解熱剤" đọc là... "gennetsuzai"!)* |
| Ngọc | (sau khi nộp bài, thở ra nhẹ) ...<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>答<rt>こた</rt></ruby>えられた。<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>文章<rt>ぶんしょう</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>書<rt>か</rt></ruby>いてきたおかげだ。<br>*(... Mình trả lời được hết. Nhờ viết văn bàn giao ca mỗi ngày mới được vậy.)* |

---

## Tình huống 11 — Phòng họp Hidamari-en · Sáng, 3 tuần sau — nhận kết quả thi

| Vai | Lời thoại |
|---|---|
| Kimura | グエンさん、<ruby>ドゥックさん<rt>どぅっくさん</rt></ruby>、フォンさん、<ruby>試験結果<rt>しけんけっか</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きました。<br>*(Ngọc, Đức, Hương — kết quả thi đã đến rồi.)* |
| Ngọc | (tim đập mạnh) ...はい。<br>*(... Vâng ạ.)* |
| Kimura | (đưa giấy kết quả) 3<ruby>名<rt>めい</rt></ruby>とも...<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Cả 3 người... đỗ rồi.)* |
| Ngọc | (nhìn giấy, tay run nhẹ) ....<ruby>合格<rt>ごうかく</rt></ruby>した。<br>*(... Đỗ rồi.)* |
| Đức | (tiếng Nhật) <ruby>本当<rt>ほんとう</rt></ruby>に!?<ruby>よかった<rt>よかった</rt></ruby>!<br>*(Thật không!? May quá!)* |
| Hương | (ôm tập vở vào ngực, thở phào) ......<ruby>よかった<rt>よかった</rt></ruby>。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>よかった<rt>よかった</rt></ruby>。<br>*(... May quá. May quá thật.)* |
| Kimura | よく<ruby>頑張<rt>がんば</rt></ruby>りました。<ruby>次<rt>つぎ</rt></ruby>は<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby><ruby>手続<rt>てつづき</rt></ruby>きを<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Các em đã cố gắng lắm. Tiếp theo hãy tiến hành thủ tục chuyển tư cách lưu trú nhé.)* |
| Ngọc | (cúi đầu, giọng nhẹ) はい。ありがとうございます。<br>*(Vâng. Cảm ơn ông ạ.)* |

---

## Tình huống 12 — Ký túc xá · Tối, sau khi nhận kết quả

> Scene tiếng Việt — mạch nhân vật và cảm xúc thật sau ngày quan trọng.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, gọi video cho mẹ) Mẹ ơi, con đỗ rồi. 特定技能 rồi mẹ. |
| Mẹ | (tiếng Việt) Thật không con? Trời ơi... con làm được rồi. Mẹ mừng quá. |
| Ngọc | (tiếng Việt, mắt đỏ hoe) Dạ. Con còn nhớ hồi năm nhất, con cứ sợ mình không trụ được. Mà bây giờ... con là 特定技能 rồi mẹ. Không còn là thực tập sinh nữa. |
| Mẹ | (tiếng Việt) Con làm mẹ tự hào lắm. Nhớ giữ sức khỏe. Còn lo cho bản thân nữa nha. |
| Ngọc | (tiếng Việt) Dạ mẹ. Con sẽ cố. Mẹ cũng giữ sức khỏe nhé. |

---

## Đọng lại chương 5

Ngọc, Hương và Đức cùng ôn thi và vượt qua kỳ thi 特定技能1号介護 với hai bài: 介護技能評価試験 (筆記 + 実技) và 介護日本語評価試験. Hành trình từ lo lắng, ôn tập đến phòng thi và kết quả đỗ đã khép lại 3 năm thực tập sinh — mở ra tư cách mới: 特定技能1号. Điều quan trọng nhất: 3 năm tích lũy nghiệp vụ mỗi ngày chính là nền tảng để vượt qua kỳ thi.

> ⚠️ Chú thích: Thông tin về bài thi 特定技能1号介護 và điều kiện miễn thi được mô tả theo quy định hiệu lực tại 2026–2028. Người học nên kiểm tra lại quy định hiện hành.

> Từ vựng & mẫu câu chương này: 特定技能1号・介護技能評価試験・介護日本語評価試験・JFT-Basic・免除・筆記・実技・移乗介助・端座位・フットレスト・ブレーキ・声かけ・減点・尊厳の保持・自立支援・残存能力・個別ケア・褥瘡予防・体位変換・2時間ごと・申し送り・排泄・誘導・安眠・発熱・解熱剤・合格・在留資格変更', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000006, 800000029, NULL, 'markdown_book', 'T6. Lên Đặc định & Trực đêm độc lập (特定技能へ・一人夜勤)', '# Sách thực tập sinh điều dưỡng · T6. Lên Đặc định & Trực đêm độc lập (特定技能へ・一人夜勤)

> **Mục tiêu nhân vật:** Sau khi đã đỗ kỳ thi 特定技能 (chương trước), Ngọc làm thủ tục chuyển tư cách lưu trú từ TTS sang 特定技能1号介護, và lần đầu trực đêm hoàn toàn độc lập — tự xử lý tình huống khẩn cấp và được công nhận như người làm nghề thực thụ.

---

## Bối cảnh

Tháng 9 năm 2028. Ngọc vừa thi đỗ cả hai bài 特定技能1号介護 (介護技能評価試験 và 介護日本語評価試験 — đã được miễn JFT-Basic nhờ có JLPT N3) ở chương trước. Hợp đồng TTS介護 3 năm cũng sắp kết thúc. Cơ sở Hidamari-en muốn giữ Ngọc ở lại — và Ngọc cũng muốn tiếp tục. Việc còn lại là hoàn tất thủ tục chuyển tư cách lưu trú (在留資格変更) sang 特定技能1号. Khi được cấp visa mới, Ngọc sẽ không còn ở thân phận thực tập sinh nữa, mà là nhân viên điều dưỡng chính thức.

> ⚠️ Chú thích: Thông tin về thủ tục chuyển 特定技能1号介護 và điều kiện visa được mô tả theo quy định có hiệu lực tại thời điểm 2026–2028. Người học nên kiểm tra lại quy định hiện hành khi cần.

---

## Tình huống 1 — Phòng họp · 9:00, báo kết quả thi và bàn bước tiếp theo

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>先月<rt>せんげつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます。<br>*(Em Nguyễn, kỳ thi tháng trước, chúc mừng em đã đỗ.)* |
| Ngọc | ありがとうございます。<ruby>技能試験<rt>ぎのうしけん</rt></ruby>も<ruby>介護日本語<rt>かいごにほんご</rt></ruby>も、<ruby>無事<rt>ぶじ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>できました。<br>*(Em cảm ơn chị ạ. Cả bài kỹ năng lẫn tiếng Nhật điều dưỡng, em đều đỗ an toàn rồi.)* |
| Yamamoto | <ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>りました。<ruby>施設<rt>しせつ</rt></ruby>としても、グエンさんに<ruby>続<rt>つづ</rt></ruby>けてほしいと<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Em đã thực sự cố gắng lắm. Cơ sở chúng tôi cũng rất muốn em ở lại tiếp.)* |
| Ngọc | <ruby>次<rt>つぎ</rt></ruby>は<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>ですね。<ruby>手続<rt>てつづ</rt></ruby>きを<ruby>確認<rt>かくにん</rt></ruby>してもいいですか?<br>*(Tiếp theo là chuyển tư cách lưu trú đúng không ạ. Em hỏi lại thủ tục cho chắc được không ạ?)* |
| Yamamoto | もちろん。<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>から「<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>」へ、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>をします。<br>*(Tất nhiên. Ta sẽ làm đơn xin chuyển tư cách lưu trú từ "thực tập kỹ năng" sang "特定技能1号".)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>すればいいですか?<br>*(Em cần chuẩn bị những gì ạ?)* |
| Yamamoto | <ruby>施設<rt>しせつ</rt></ruby>が<ruby>雇用<rt>こよう</rt></ruby><ruby>契約書<rt>けいやくしょ</rt></ruby>などを<ruby>準備<rt>じゅんび</rt></ruby>します。グエンさんは<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>とパスポートを<ruby>用意<rt>ようい</rt></ruby>してください。<br>*(Cơ sở sẽ chuẩn bị hợp đồng lao động và các giấy tờ. Em lo phần giấy chứng nhận đỗ và hộ chiếu nhé.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。すぐ<ruby>用意<rt>ようい</rt></ruby>します。<br>*(Em hiểu rồi ạ. Em sẽ chuẩn bị ngay.)* |

---

## Tình huống 2 — Phòng tư vấn · 14:00, Mai-san hướng dẫn thủ tục giấy tờ

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Em Nguyễn, giấy tờ chuyển tư cách lưu trú, cùng kiểm tra với chị nhé.)* |
| Ngọc | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>申請書<rt>しんせいしょ</rt></ruby>はこれでいいですか?<br>*(Vâng, nhờ chị ạ. Đơn xin thế này được chưa ạ?)* |
| Mai-san | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>申請<rt>しんせい</rt></ruby>は<ruby>入管<rt>にゅうかん</rt></ruby>、つまり<ruby>出入国在留管理局<rt>しゅつにゅうこくざいりゅうかんりきょく</rt></ruby>に<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng, được rồi. Đơn nộp lên Nyukan, tức là Cục Quản lý xuất nhập cảnh và lưu trú.)* |
| Ngọc | <ruby>許可<rt>きょか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るまで、どのくらいかかりますか?<br>*(Đến khi được phê duyệt thì mất khoảng bao lâu ạ?)* |
| Mai-san | だいたい1〜2ヶ<ruby>月<rt>げつ</rt></ruby>です。その<ruby>間<rt>あいだ</rt></ruby>も<ruby>今<rt>いま</rt></ruby>まで<ruby>通<rt>とお</rt></ruby>り<ruby>働<rt>はたら</rt></ruby>けますよ。<br>*(Khoảng 1-2 tháng. Trong thời gian đó em vẫn làm việc bình thường như cũ được.)* |
| Ngọc | <ruby>安心<rt>あんしん</rt></ruby>しました。<ruby>許可<rt>きょか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら、<ruby>何<rt>なに</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりますか?<br>*(Em yên tâm rồi ạ. Khi được phê duyệt thì có gì thay đổi ạ?)* |
| Mai-san | <ruby>監理団体<rt>かんりだんたい</rt></ruby>を<ruby>通<rt>とお</rt></ruby>さず、<ruby>施設<rt>しせつ</rt></ruby>と<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>になります。お<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>日本人<rt>にほんじん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>基準<rt>きじゅん</rt></ruby>です。<br>*(Em sẽ ký hợp đồng lao động trực tiếp với cơ sở, không qua nghiệp đoàn nữa. Lương cũng theo chuẩn ngang với người Nhật.)* |
| Ngọc | <ruby>同<rt>おな</rt></ruby>じ<ruby>基準<rt>きじゅん</rt></ruby>...。<ruby>頑張<rt>がんば</rt></ruby>ってきて、<ruby>本当<rt>ほんとう</rt></ruby>によかったです。<br>*(Cùng một chuẩn... Cố gắng đến giờ, thật sự may quá ạ.)* |

---

## Tình huống 3 — Phòng họp · 10:00 (một tháng sau), nhận kết quả phê duyệt visa

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>入管<rt>にゅうかん</rt></ruby>から<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りました。<ruby>正式<rt>せいしき</rt></ruby>に「<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>」です。<br>*(Em Nguyễn, Cục xuất nhập cảnh đã phê duyệt. Em chính thức là "特定技能1号" rồi.)* |
| Ngọc | (xúc động) <ruby>本当<rt>ほんとう</rt></ruby>ですか。ありがとうございます。<br>*(Thật ạ? Em cảm ơn chị nhiều.)* |
| Yamamoto | これからは<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>ではなく、<ruby>一人<rt>ひとり</rt></ruby>の<ruby>介護<rt>かいご</rt></ruby><ruby>職員<rt>しょくいん</rt></ruby>です。<ruby>夜勤<rt>やきん</rt></ruby>も<ruby>一人<rt>ひとり</rt></ruby>で<ruby>任<rt>まか</rt></ruby>せられます。<br>*(Từ giờ em không còn là thực tập sinh nữa, mà là một nhân viên điều dưỡng. Ca đêm cũng có thể giao cho em trực một mình.)* |
| Ngọc | <ruby>一人<rt>ひとり</rt></ruby><ruby>夜勤<rt>やきん</rt></ruby>ですか...。<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。でも、やってみたいです。<br>*(Trực đêm một mình ạ... Em hơi hồi hộp. Nhưng em muốn thử ạ.)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。3<ruby>年間<rt>ねんかん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>があります。<ruby>困<rt>こま</rt></ruby>ったら<ruby>看護師<rt>かんごし</rt></ruby>のオンコールに<ruby>連絡<rt>れんらく</rt></ruby>できます。<br>*(Không sao. Em có 3 năm kinh nghiệm rồi. Khi gặp khó có thể gọi y tá trực on-call.)* |
| Ngọc | はい。<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Em sẽ làm với tinh thần trách nhiệm ạ.)* |
| Yamamoto | <ruby>同<rt>おな</rt></ruby>じ<ruby>職員<rt>しょくいん</rt></ruby>として、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Với tư cách đồng nghiệp, mong em tiếp tục nhé.)* |
| Ngọc | (cúi đầu) はい、こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em cũng mong được chị chỉ bảo ạ.)* |

---

## Tình huống 4 — Phòng họp · 18:00, nhận lịch 夜勤 một mình lần đầu

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Em Nguyễn, xem lịch trực đêm tuần sau nhé.)* |
| Ngọc | (xem lịch, dừng lại) あの...グエンの<ruby>名前<rt>なまえ</rt></ruby>が1<ruby>人<rt>り</rt></ruby>だけですね。<ruby>二人体制<rt>ふたりたいせい</rt></ruby>じゃないのですか?<br>*(Ủa... chỉ có mình em thôi ạ. Không phải ca hai người sao ạ?)* |
| Yamamoto | グエンさんは<ruby>今月<rt>こんげつ</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby>になりました。<ruby>一人夜勤<rt>ひとりやきん</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せられます。<br>*(Em từ tháng này đã là 特定技能 rồi. Em có thể được giao trực đêm một mình.)* |
| Ngọc | (hít thở) ...わかりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>何<rt>なに</rt></ruby>かあったら<ruby>電話<rt>でんわ</rt></ruby>してもいいですか?<br>*(... Em hiểu ạ. Em sẽ cố. Nếu có gì xảy ra em được phép gọi điện không ạ?)* |
| Yamamoto | もちろんです。<ruby>緊急<rt>きんきゅう</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>はいつでも<ruby>連絡<rt>れんらく</rt></ruby>してください。でも、グエンさんならできます。<br>*(Tất nhiên rồi. Trường hợp khẩn cấp, cứ liên lạc bất cứ lúc nào. Nhưng em làm được mà, chị tin.)* |
| Ngọc | ありがとうございます。<ruby>準備<rt>じゅんび</rt></ruby>をしっかりします。<br>*(Cảm ơn chị. Em sẽ chuẩn bị thật kỹ ạ.)* |

---

## Tình huống 5 — Hành lang Hidamari-en ban đêm · 23:45, kiểm tra an toàn phòng trước khi 巡回

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, nhìn vào checklist, tự nhắc thầm) <ruby>夜勤<rt>やきん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。まず<ruby>各居室<rt>かくきょしつ</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>から。<ruby>窓<rt>まど</rt></ruby><ruby>施錠<rt>せじょう</rt></ruby>、<ruby>転落防止柵<rt>てんらくぼうしさく</rt></ruby>、<ruby>ナースコール<rt>なあすこうる</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>。<br>*(Bắt đầu trực đêm. Trước tiên kiểm tra an toàn từng phòng. Khóa cửa sổ, thanh chắn ngăn rơi, vị trí chuông gọi y tá.)* |
| Ngọc | (vào phòng ông Yamane, kiểm tra nhẹ nhàng) <ruby>山根<rt>やまね</rt></ruby>さん、おやすみなさい。(xem thanh giường) <ruby>柵<rt>さく</rt></ruby>よし。<ruby>ナースコール<rt>なあすこうる</rt></ruby>よし。<ruby>窓<rt>まど</rt></ruby>...よし。<br>*(Ông Yamane, chúc ông ngủ ngon. — kiểm tra — Thanh chắn ổn. Chuông gọi ổn. Cửa sổ... ổn.)* |
| Ngọc | (ghi vào sổ) <ruby>23<rt>にじゅうさん</rt></ruby>:<ruby>45<rt>よんじゅうご</rt></ruby>。<ruby>全居室<rt>ぜんきょしつ</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>異常<rt>いじょう</rt></ruby>なし。<ruby>巡回<rt>じゅんかい</rt></ruby><ruby>開始<rt>かいし</rt></ruby>します。<br>*(23:45. Hoàn thành kiểm tra an toàn toàn bộ phòng. Không có bất thường. Bắt đầu tuần tra.)* |

---

## Tình huống 6 — Phòng vệ sinh · 1:30, tự xử lý 利用者 cần đi vệ sinh ban đêm

| Vai | Lời thoại |
|---|---|
| Ông Yamane | (nhấn chuông gọi nhẹ từ giường) |
| Ngọc | (nhanh chóng đến phòng) <ruby>山根<rt>やまね</rt></ruby>さん、どうしましたか?<br>*(Ông Yamane, có chuyện gì vậy ạ?)* |
| Ông Yamane | (giọng khẽ, ngượng ngùng) ...トイレに<ruby>行<rt>い</rt></ruby>きたいんだが。<br>*(... Tôi muốn đi vệ sinh.)* |
| Ngọc | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>起<rt>お</rt></ruby>き<ruby>上<rt>あ</rt></ruby>がりを<ruby>手伝<rt>てつだ</rt></ruby>いますね。<ruby>急<rt>いそ</rt></ruby>がなくていいですよ、<ruby>ゆっくり<rt>ゆっくり</rt></ruby>で。<br>*(Vâng, không sao đâu ạ. Cháu giúp ông ngồi dậy nhé. Không cần vội, cứ từ từ thôi.)* |
| Ngọc | (đỡ ông ngồi dậy, đưa đến nhà vệ sinh, đứng chờ bên ngoài) <ruby>終<rt>お</rt></ruby>わったら<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>すぐ<rt>すぐ</rt></ruby><ruby>来<rt>き</rt></ruby>ます。<br>*(Xong thì gọi cháu nhé. Cháu đến ngay.)* |
| Ông Yamane | (từ trong ra, nhẹ nhõm) ...ありがとう。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>悪<rt>わる</rt></ruby>いね。<br>*(... Cảm ơn. Làm phiền ban đêm nhỉ.)* |
| Ngọc | (cười nhẹ) <ruby>全然<rt>ぜんぜん</rt></ruby>です。これが<ruby>仕事<rt>しごと</rt></ruby>ですから。<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>りましょう。<br>*(Không có gì ạ. Đây là công việc của cháu mà. Nào, về phòng an toàn thôi ạ.)* |
| Ngọc | (sau khi ông nằm xuống, ghi vào sổ) 1:<ruby>30<rt>さんじゅう</rt></ruby>。<ruby>山根<rt>やまね</rt></ruby>さん<ruby>排泄<rt>はいせつ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>。<ruby>転倒<rt>てんとう</rt></ruby>なし。<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>帰室<rt>きしつ</rt></ruby>。<ruby>バイタル<rt>ばいたる</rt></ruby><ruby>異常<rt>いじょう</rt></ruby>なし。<br>*(1:30. Hỗ trợ ông Yamane vệ sinh. Không té ngã. Về phòng an toàn. Dấu hiệu sinh tồn bình thường.)* |

---

## Tình huống 7 — Hidamari-en ban đêm · 2:15, xử lý tình huống bất ổn

| Vai | Lời thoại |
|---|---|
| Ngọc | (đang đi 巡回, nghe tiếng động, bước vào phòng ông Yamane — 利用者 mới) <ruby>山根<rt>やまね</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Ông Yamane, ông có ổn không ạ?)* |
| Ông Yamane | (ngồi dậy, lẫn lộn, giọng to) だれだ!ここはどこだ!<ruby>家<rt>うち</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>る!<br>*(Ai đó! Đây là đâu! Tôi muốn về nhà!)* |
| Ngọc | (giọng bình tĩnh, nhẹ nhàng) <ruby>山根<rt>やまね</rt></ruby>さん、グエンです。<ruby>夜中<rt>よなか</rt></ruby>の2<ruby>時<rt>じ</rt></ruby>ですよ。<ruby>今<rt>いま</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>なところにいます。<br>*(Ông Yamane, cháu là Nguyễn đây ạ. Bây giờ là 2 giờ đêm rồi. Ông đang ở nơi an toàn ạ.)* |
| Ông Yamane | (bối rối) ...でも、<ruby>家<rt>うち</rt></ruby>に...<br>*(... Nhưng, nhà của tôi...)* |
| Ngọc | (ngồi xuống ngang tầm mắt ông, giọng nhẹ) <ruby>今夜<rt>こんや</rt></ruby>はここに<ruby>泊<rt>と</rt></ruby>まっています。<ruby>寒<rt>さむ</rt></ruby>くないですか?<ruby>毛布<rt>もうふ</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきますね。<br>*(Đêm nay ông đang nghỉ ở đây ạ. Ông có lạnh không? Cháu lấy chăn cho ông nhé.)* |
| Ông Yamane | (dịu lại một chút) ...さむい、な。<br>*(... Lạnh nhỉ.)* |
| Ngọc | (lấy chăn đắp lên, rót nước) <ruby>少<rt>すこ</rt></ruby>しお<ruby>水<rt>みず</rt></ruby>を<ruby>飲<rt>の</rt></ruby>みますか?<ruby>ゆっくり<rt>ゆっくり</rt></ruby>でいいですよ。<br>*(Ông uống chút nước nhé? Cứ từ từ thôi ạ.)* |
| Ông Yamane | (uống, bắt đầu bình tĩnh hơn) ...ありがとう。<br>*(... Cảm ơn.)* |
| Ngọc | <ruby>横<rt>よこ</rt></ruby>になりますか?<ruby>そばにいますよ<rt>そばにいますよ</rt></ruby>。<br>*(Ông nằm xuống không ạ? Cháu ở đây với ông.)* |
| Ông Yamane | (gật đầu, nằm xuống, nhắm mắt dần)<br>*(gật đầu, nằm xuống, dần nhắm mắt)* |
| Ngọc | (ngồi yên bên cạnh vài phút cho đến khi ông ngủ lại, rồi ghi vào hồ sơ) <ruby>2<rt>に</rt></ruby>:<ruby>15<rt>じゅうご</rt></ruby>、<ruby>山根<rt>やまね</rt></ruby>さん<ruby>覚醒<rt>かくせい</rt></ruby>。<ruby>声かけ<rt>こえかけ</rt></ruby>・<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby>にて<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>く。<ruby>転倒<rt>てんとう</rt></ruby>なし。<ruby>体温<rt>たいおん</rt></ruby>・<ruby>呼吸<rt>こきゅう</rt></ruby><ruby>正常<rt>せいじょう</rt></ruby>。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>経過<rt>けいか</rt></ruby><ruby>観察<rt>かんさつ</rt></ruby>。<br>*(2:15, ông Yamane thức giấc. Bình tĩnh lại sau khi được 声かけ và bổ sung nước. Không té ngã. Nhiệt độ và hô hấp bình thường. Tiếp tục theo dõi.)* |

---

## Tình huống 8 — Phòng hồ sơ · 4:00, ghi 夜勤記録 độc lập

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình tại bàn hồ sơ, tập trung viết) <ruby>夜勤<rt>やきん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>...。<ruby>山根<rt>やまね</rt></ruby>さん、<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>木村<rt>きむら</rt></ruby>さん。<ruby>3名分<rt>さんめいぶん</rt></ruby>。(ゆっくりと書く)<br>*(Hồ sơ trực đêm... Ông Yamane, bà Sato, ông Kimura. 3 người. — viết chậm rãi —)* |
| Ngọc | (tự nhẩm lại) <ruby>バイタル<rt>ばいたる</rt></ruby>、<ruby>排泄<rt>はいせつ</rt></ruby><ruby>回数<rt>かいすう</rt></ruby>、<ruby>睡眠<rt>すいみん</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>、<ruby>特記事項<rt>とっきじこう</rt></ruby>。<ruby>漏<rt>も</rt></ruby>れなく<ruby>書<rt>か</rt></ruby>かないと。<br>*(Dấu hiệu sinh tồn, số lần vệ sinh, tình trạng ngủ, sự kiện đáng chú ý. Phải ghi đầy đủ không bỏ sót.)* |
| Ngọc | (viết xong, đọc lại, gật đầu) <ruby>山根<rt>やまね</rt></ruby>さんの<ruby>覚醒<rt>かくせい</rt></ruby>のところ、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>詳<rt>くわ</rt></ruby>しく<ruby>書<rt>か</rt></ruby>こう。<ruby>対応<rt>たいおう</rt></ruby>した<ruby>内容<rt>ないよう</rt></ruby>も<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>残<rt>のこ</rt></ruby>したい。<br>*(Phần ông Yamane thức giấc, viết chi tiết thêm một chút. Muốn ghi lại đầy đủ nội dung đã xử lý.)* |
| Ngọc | (ghi xong, thở ra nhẹ) <ruby>完成<rt>かんせい</rt></ruby>。<ruby>自分<rt>じぶん</rt></ruby>ひとりで<ruby>書<rt>か</rt></ruby>いた<ruby>夜勤<rt>やきん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>。(khẽ mỉm cười)<br>*(Xong rồi. Hồ sơ trực đêm do một mình mình viết. — mỉm cười nhẹ —)* |

---

## Tình huống 9 — Phòng họp · 8:00, 申し送り sáng — Yamamoto công nhận

| Vai | Lời thoại |
|---|---|
| Ngọc | (申し送り với ca ngày) <ruby>夜間<rt>やかん</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていました。<ruby>特記<rt>とっき</rt></ruby>事項は<ruby>山根<rt>やまね</rt></ruby>さん1<ruby>件<rt>けん</rt></ruby>です。2<ruby>時<rt>じ</rt></ruby>15<ruby>分<rt>ふん</rt></ruby>、<ruby>覚醒<rt>かくせい</rt></ruby>・<ruby>混乱<rt>こんらん</rt></ruby>あり。<ruby>声かけ<rt>こえかけ</rt></ruby>と<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby>で<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>き、<ruby>再眠<rt>さいみん</rt></ruby>されました。<ruby>転倒<rt>てんとう</rt></ruby>・<ruby>外傷<rt>がいしょう</rt></ruby>なし。<ruby>記録<rt>きろく</rt></ruby>に<ruby>詳細<rt>しょうさい</rt></ruby>を<ruby>記入<rt>きにゅう</rt></ruby>しました。<br>*(Toàn bộ đêm yên tĩnh. Có một sự kiện cần ghi nhận là ông Yamane. 2 giờ 15, ông thức giấc và có biểu hiện lẫn lộn. Sau 声かけ và bổ sung nước, ông bình tĩnh và ngủ lại. Không té ngã, không chấn thương. Đã ghi chi tiết vào hồ sơ.)* |
| Nhân viên ca ngày | <ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>山根<rt>やまね</rt></ruby>さん、<ruby>最近<rt>さいきん</rt></ruby>こういうことが<ruby>多<rt>おお</rt></ruby>いですね。<ruby>日中<rt>にっちゅう</rt></ruby>も<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます。<br>*(Rõ rồi. Ông Yamane dạo này hay vậy nhỉ. Ban ngày cũng để ý theo dõi thêm.)* |
| Yamamoto | (sau khi họp xong, gặp riêng Ngọc) グエンさん、<ruby>昨夜<rt>さくや</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>、よかったですよ。<br>*(Em Nguyễn, cách xử lý đêm qua của em rất tốt đấy.)* |
| Ngọc | (ngạc nhiên nhẹ) え、ありがとうございます。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しました。<ruby>電話<rt>でんわ</rt></ruby>しようか<ruby>迷<rt>まよ</rt></ruby>いました。<br>*(Ồ, cảm ơn chị. Thật ra cháu hơi căng thẳng. Cháu có phân vân có nên gọi điện không.)* |
| Yamamoto | でも、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>して、<ruby>適切<rt>てきせつ</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>した。<ruby>記録<rt>きろく</rt></ruby>も<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてある。それが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Nhưng em đã tự phán đoán và xử lý đúng. Hồ sơ cũng ghi cẩn thận. Đó mới là điều quan trọng.)* |
| Ngọc | ありがとうございます。<ruby>実習生<rt>じっしゅうせい</rt></ruby>のころは、こんなに<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>対応<rt>たいおう</rt></ruby>できなかったと<ruby>思<rt>おも</rt></ruby>います。<br>*(Cảm ơn chị. Hồi còn là thực tập sinh, em nghĩ mình không thể bình tĩnh xử lý được như vậy.)* |
| Yamamoto | <ruby>3年間<rt>さんねんかん</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねです。グエンさんは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>しました。<br>*(Đó là kết quả tích lũy 3 năm đó. Em Nguyễn thực sự đã trưởng thành rất nhiều.)* |

---

## Tình huống 10 — Hành lang ひだまり苑 · Buổi chiều, hướng dẫn 後輩 mới một thao tác đơn giản

| Vai | Lời thoại |
|---|---|
| An | (tiếng Nhật, giọng run, nhìn xe lăn) あの...ぐえんさん、<ruby>車椅子<rt>くるまいす</rt></ruby>の<ruby>ブレーキ<rt>ぶれーき</rt></ruby>はどうやって<ruby>確認<rt>かくにん</rt></ruby>するんですか?<br>*(Uh... chị Nguyễn, cháu kiểm tra phanh xe lăn như thế nào ạ?)* |
| Ngọc | (nhìn An — thực tập sinh người Việt mới vào 1 tháng, mỉm cười nhẹ) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Không sao đâu. Mình cùng xem nhé.)* |
| Ngọc | (chỉ vào phanh) まずここを<ruby>押<rt>お</rt></ruby>して<ruby>固定<rt>こてい</rt></ruby>する。それから<ruby>車輪<rt>しゃりん</rt></ruby>が<ruby>動<rt>うご</rt></ruby>かないか<ruby>手<rt>て</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>してみて。<br>*(Đầu tiên bấm vào đây để cố định. Sau đó kiểm tra xem bánh xe có bị động không.)* |
| An | (thử làm theo, gật đầu) あ、<ruby>動<rt>うご</rt></ruby>かないです。<br>*(À, không bị động ạ.)* |
| Ngọc | そう。<ruby>移乗<rt>いじょう</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>は<ruby>毎回<rt>まいかい</rt></ruby>この<ruby>確認<rt>かくにん</rt></ruby>をする。<ruby>忘<rt>わす</rt></ruby>れないようにね。<br>*(Đúng rồi. Trước mỗi lần 移乗 là phải kiểm tra bước này. Nhớ nhé.)* |
| An | (tiếng Việt, thầm) Chị Ngọc... chị dạy giống hệt cách mà chị hay được dạy vậy. |
| Ngọc | (nghe, cười nhẹ) (tiếng Việt) Em mới thấy sao? Vì chị cũng từng ở chỗ em đứng đó. |

---

## Tình huống 11 — Phòng nghỉ · 9:30, Đức báo tin (tiếng Việt)

> *Scene cuối tiếng Việt — Đức thông báo bước chuyển của mình.*

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt, nhắn tin cho Ngọc) Em ơi, anh cũng vừa nhận được kết quả. Đỗ 特定技能 rồi. |
| Ngọc | (tiếng Việt) Thật không anh? Chúc mừng anh! Em cứ tưởng anh định về VN. |
| Đức | (tiếng Việt) Ừ... anh cũng từng nghĩ vậy. Nhưng anh đã ở đây lâu rồi, bỏ đi thì tiếc. Hơn nữa, thấy em vẫn làm được, anh tự hỏi sao anh lại không. |
| Ngọc | (tiếng Việt) Anh làm được từ lâu rồi. Anh chỉ cần tin mình thôi. |
| Đức | (tiếng Việt) Ừ. Cảm ơn em đã không bỏ cuộc trước. Nhờ nhìn thấy em mà anh tiếp tục được. |
| Ngọc | (tiếng Việt, gõ nhắn lại) Bây giờ mình là đồng nghiệp thật sự rồi anh ơi. Cùng cố tiếp nhé. |

---

## Đọng lại chương 11

Từ thực tập sinh cần người hướng dẫn mọi bước, Ngọc đã trở thành nhân viên 特定技能 tự mình kiểm tra an toàn từng phòng trước 巡回, xử lý 利用者 cần vệ sinh ban đêm một mình, viết 夜勤記録 đầy đủ không sót, 申し送り sáng tự tin trước ca ngày, và bắt đầu truyền lại từng thao tác nhỏ cho 後輩 mới. Và Đức, người từng muốn bỏ tất cả, cũng tìm lại được hướng đi. Hành trình chưa kết thúc, nhưng cả hai đã bước sang một trang mới.

> ⚠️ Chú thích: Thông tin về bài thi 特定技能1号介護 (介護技能評価試験 + JFT-Basic/JLPT + 介護日本語評価試験) và điều kiện miễn thi theo quy định hiệu lực tại 2026–2028. Người học nên kiểm tra lại quy định hiện hành.

> Từ vựng & mẫu câu chương này: 特定技能1号・在留資格変更・介護技能評価試験・介護日本語評価試験・JFT-Basic・免除・一人夜勤・転落防止柵・施錠・ナースコール・排泄介助・帰室・夜勤記録・バイタル・特記事項・後輩・車椅子・ブレーキ確認・移乗・覚醒・混乱・声かけ・申し送り・記録・判断・対応・成長', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000007, 800000029, NULL, 'markdown_book', 'T7. Trách nhiệm trực đêm độc lập (一人夜勤の責任)', '# Sách thực tập sinh điều dưỡng · T7. Trách nhiệm trực đêm độc lập (一人夜勤の責任)

> **Mục tiêu nhân vật:** Ngọc — giờ là 特定技能1号介護 — trực đêm hoàn toàn một mình lần đầu tiên kể từ khi chuyển tư cách. Đêm xảy ra tình huống bất ổn phức tạp (利用者 sốt cao + té giường). Ngọc tự đánh giá, xử lý khẩn cấp, gọi 看護師 on-call, ghi 記録 đầy đủ, và 申し送り sáng tự tin. Hành trình cho thấy sự trưởng thành vượt bậc so với đêm trực đầu tiên năm 1.

---

## Bối cảnh

Tháng 10 năm 2028. Ngọc đã chuyển sang 特定技能1号介護 được gần 1 tháng. Hidamari-en phân công Ngọc 一人夜勤 — trực đêm độc lập, không có nhân viên thứ hai cùng ca. Khác với ca đêm đầu tiên năm nhất (theo sát đàn anh, mọi quyết định đều hỏi), lần này mọi phán đoán đều do Ngọc tự chịu trách nhiệm. Đêm này, 利用者 ông Kimura sốt cao đột ngột và có nguy cơ té giường — Ngọc phải tự kích hoạt quy trình 緊急対応.

---

## Tình huống 1 — Phòng họp Hidamari-en · 17:00, nhận 申し送り từ ca ngày

| Vai | Lời thoại |
|---|---|
| Nhân viên ca ngày | グエンさん、<ruby>今夜<rt>こんや</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>です。<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>し<ruby>元気<rt>げんき</rt></ruby>がなく、<ruby>食欲<rt>しょくよく</rt></ruby>も<ruby>低下<rt>ていか</rt></ruby>しています。<ruby>体温<rt>たいおん</rt></ruby>は17<ruby>時<rt>じ</rt></ruby>で36.8<ruby>度<rt>ど</rt></ruby>でした。<br>*(Ngọc, đây là bàn giao ca tối nay. Ông Kimura từ chiều nay có vẻ không được khỏe, và chán ăn. Nhiệt độ lúc 17h là 36.8 độ.)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さんですね。<ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>他<rt>ほか</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>する<ruby>方<rt>かた</rt></ruby>はいらっしゃいますか?<br>*(Ông Kimura đúng không. Rõ rồi. Còn ai khác cần chú ý không ạ?)* |
| Nhân viên ca ngày | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>昨夜<rt>さくや</rt></ruby>から<ruby>咳<rt>せき</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>しあります。<ruby>今夜<rt>こんや</rt></ruby>も<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>他<rt>ほか</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いています。<br>*(Ông Tanaka từ tối qua có chút ho. Tối nay tiếp tục theo dõi nhé. Những người còn lại thì ổn định.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>木村<rt>きむら</rt></ruby>さんと<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>特<rt>とく</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>して<ruby>見<rt>み</rt></ruby>ます。<br>*(Rõ rồi ạ. Ông Kimura và ông Tanaka, em sẽ đặc biệt chú ý.)* |
| Nhân viên ca ngày | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>何<rt>なに</rt></ruby>かあれば<ruby>看護師<rt>かんごし</rt></ruby>の<ruby>矢野<rt>やの</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>してください。<ruby>緊急時<rt>きんきゅうじ</rt></ruby>は<ruby>施設長<rt>しせつちょう</rt></ruby>にも<ruby>報告<rt>ほうこく</rt></ruby>を。<br>*(Nhờ em. Nếu có gì liên lạc với y tá Yano nhé. Trường hợp khẩn cấp thì báo cả trưởng cơ sở.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, em rõ ạ. Chị vất vả rồi.)* |

---

## Tình huống 2 — Hành lang Hidamari-en · 18:30, 巡回 đầu ca — kiểm tra từng phòng

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, cầm clipboard, bắt đầu 巡回 đầu ca) <ruby>18<rt>じゅうはち</rt></ruby>:<ruby>30<rt>さんじゅう</rt></ruby>、<ruby>夜勤<rt>やきん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<ruby>今夜<rt>こんや</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>ひとり。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていこう。(gõ cửa phòng ông Kimura)<br>*(18:30, bắt đầu trực đêm. Tối nay chỉ có mình. Bình tĩnh thôi. — gõ cửa phòng ông Kimura —)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>っていいですか?<br>*(Ông Kimura, cháu là Nguyễn. Cháu vào được không ạ?)* |
| Ông Kimura | (giọng mệt mỏi) ...ああ、<ruby>入<rt>はい</rt></ruby>っていいよ。<br>*(... Ờ, vào đi.)* |
| Ngọc | (vào phòng, quan sát mặt ông) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>赤<rt>あか</rt></ruby>いですね。<ruby>体温<rt>たいおん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ってもいいですか?<br>*(Ông Kimura, mặt ông hơi đỏ nhỉ. Cháu đo nhiệt độ được không ạ?)* |
| Ông Kimura | ん、<ruby>頼<rt>たの</rt></ruby>む。<br>*(Ừ, nhờ cháu.)* |
| Ngọc | (đo xong) 37.5<ruby>度<rt>ど</rt></ruby>です。<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってますね。<ruby>水<rt>みず</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んでもらえますか?<ruby>こまめに<rt>こまめに</rt></ruby><ruby>水分<rt>すいぶん</rt></ruby>を<ruby>取<rt>と</rt></ruby>ることが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(37.5 độ ạ. Hơi tăng rồi đấy. Ông uống nước được không ạ? Bổ sung nước thường xuyên là quan trọng.)* |
| Ông Kimura | ...<ruby>ありがとう<rt>ありがとう</rt></ruby>。<br>*(... Cảm ơn cháu.)* |
| Ngọc | (ghi vào hồ sơ) 18:30。<ruby>木村<rt>きむら</rt></ruby>さん<ruby>体温<rt>たいおん</rt></ruby>37.5<ruby>度<rt>ど</rt></ruby>。<ruby>顔色<rt>かおいろ</rt></ruby><ruby>発赤<rt>はっせき</rt></ruby>あり。<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby><ruby>実施<rt>じっし</rt></ruby>。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>経過<rt>けいか</rt></ruby><ruby>観察<rt>かんさつ</rt></ruby>。<br>*(18:30. Ông Kimura nhiệt độ 37.5. Mặt có vẻ đỏ. Đã bổ sung nước. Tiếp tục theo dõi.)* |

---

## Tình huống 3 — Phòng hồ sơ · 20:00, 巡回 thứ hai — sốt tăng lên

| Vai | Lời thoại |
|---|---|
| Ngọc | (vào phòng ông Kimura lần thứ hai, đo nhiệt độ) ...<ruby>木村<rt>きむら</rt></ruby>さん、38.4<ruby>度<rt>ど</rt></ruby>あります。<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>くなりましたね。<br>*(Ông Kimura, 38.4 độ rồi ạ. Cao hơn một chút rồi đấy.)* |
| Ông Kimura | (nhìn mờ) ....<ruby>寒<rt>さむ</rt></ruby>い気がする。<br>*(... Cảm giác ớn lạnh.)* |
| Ngọc | (bình tĩnh, nghĩ thầm) 38.4<ruby>度<rt>ど</rt></ruby>...。<ruby>看護師<rt>かんごし</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>するタイミングだ。(chăm đắp chăn cho ông) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>から<ruby>看護師<rt>かんごし</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<ruby>少<rt>すこ</rt></ruby>し<ruby>待<rt>ま</rt></ruby>っていてください。<ruby>毛布<rt>もうふ</rt></ruby>を<ruby>かけますね<rt>かけますね</rt></ruby>。<br>*(38.4 độ... Đã đến lúc liên lạc với y tá. — đắp chăn cho ông — Ông Kimura, cháu liên lạc với y tá ngay bây giờ. Ông đợi chút nhé. Cháu đắp chăn cho ông nhé.)* |
| Ngọc | (ra hành lang, gọi điện) <ruby>矢野<rt>やの</rt></ruby>さん、グエンです。<ruby>木村<rt>きむら</rt></ruby>さん、18<ruby>時<rt>じ</rt></ruby>に37.5、20<ruby>時<rt>じ</rt></ruby>に38.4<ruby>度<rt>ど</rt></ruby>になっています。<ruby>悪寒<rt>おかん</rt></ruby>の<ruby>訴<rt>うった</rt></ruby>えもあります。<ruby>対応<rt>たいおう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Y tá Yano, cháu là Nguyễn. Ông Kimura, lúc 18h là 37.5, lúc 20h lên 38.4 độ. Ông cũng có biểu hiện ớn lạnh. Nhờ chỉ cách xử lý ạ.)* |

---

## Tình huống 4 — Điện thoại với 看護師 Yano on-call · 20:05

| Vai | Lời thoại |
|---|---|
| Y tá Yano | (qua điện thoại) グエンさん、<ruby>連絡<rt>れんらく</rt></ruby>ありがとう。<ruby>血圧<rt>けつあつ</rt></ruby>と<ruby>SpO2<rt>えすぴーおーつー</rt></ruby>も<ruby>測<rt>はか</rt></ruby>れますか?<br>*(Nguyễn, cảm ơn em đã báo. Em đo được huyết áp và SpO2 không?)* |
| Ngọc | はい、<ruby>今<rt>いま</rt></ruby>すぐ<ruby>測<rt>はか</rt></ruby>ります。(đo xong) <ruby>血圧<rt>けつあつ</rt></ruby>118/72、SpO295<ruby>パーセント<rt>ぱーせんと</rt></ruby>です。<br>*(Vâng, cháu đo ngay. — đo xong — Huyết áp 118/72, SpO2 95%.)* |
| Y tá Yano | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>今<rt>いま</rt></ruby>のところ<ruby>緊急搬送<rt>きんきゅうはんそう</rt></ruby>ではないですが、<ruby>解熱剤<rt>げねつざい</rt></ruby>は<ruby>指示書<rt>しじしょ</rt></ruby>に<ruby>従<rt>したが</rt></ruby>って<ruby>投与<rt>とうよ</rt></ruby>してください。<ruby>30分後<rt>さんじゅっぷんご</rt></ruby>に<ruby>再度<rt>さいど</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>して<ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rõ rồi. Hiện tại chưa cần đưa đi cấp cứu, nhưng hãy dùng thuốc hạ sốt theo phiếu chỉ thị. Sau 30 phút đo lại và báo cáo nhé.)* |
| Ngọc | <ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>解熱剤<rt>げねつざい</rt></ruby>を<ruby>投与<rt>とうよ</rt></ruby>して、30<ruby>分後<rt>ぷんご</rt></ruby>に<ruby>再測定<rt>さいそくてい</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Rõ ạ. Cháu dùng thuốc hạ sốt, sau 30 phút đo lại và báo.)* |
| Y tá Yano | よく<ruby>冷静<rt>れいせい</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>できましたよ。<ruby>何<rt>なに</rt></ruby>かあればすぐ<ruby>電話<rt>でんわ</rt></ruby>してください。<br>*(Em báo cáo bình tĩnh lắm. Có gì xảy ra thì gọi ngay nhé.)* |
| Ngọc | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn chị ạ. Nhờ chị.)* |

---

## Tình huống 5 — Phòng ông Kimura · 20:40, sốt không giảm — ông Kimura cố ngồi dậy, nguy cơ té

| Vai | Lời thoại |
|---|---|
| Ngọc | (đang đo nhiệt độ) <ruby>木村<rt>きむら</rt></ruby>さん、まだ38.2<ruby>度<rt>ど</rt></ruby>あります。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>横<rt>よこ</rt></ruby>になっていてください。<br>*(Ông Kimura, vẫn còn 38.2 độ. Ông nằm xuống thêm chút nữa nhé.)* |
| Ông Kimura | (giọng mơ hồ, cố xoay người) ....<ruby>トイレ<rt>といれ</rt></ruby>...。<ruby>行<rt>い</rt></ruby>かなきゃ。(cố ngồi dậy, loạng choạng)<br>*(... Nhà vệ sinh... Phải đi thôi. — cố ngồi dậy, loạng choạng —)* |
| Ngọc | (ngay lập tức đặt tay lên vai ông) <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>立<rt>た</rt></ruby>たないでください。グエンが<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます。<ruby>待<rt>ま</rt></ruby>ってください。<br>*(Ông Kimura, không được tự đứng dậy một mình. Cháu đi cùng. Ông đợi nhé.)* |
| Ngọc | (đỡ ông ngồi dậy an toàn, nhìn thấy ông lảo đảo, quyết định dùng xe lăn) <ruby>今日<rt>きょう</rt></ruby>は<ruby>車椅子<rt>くるまいす</rt></ruby>で<ruby>行<rt>い</rt></ruby>きましょう。<ruby>熱<rt>ねつ</rt></ruby>があるから、<ruby>転<rt>こ</rt></ruby>ばないように<ruby>気<rt>き</rt></ruby>をつけないと。<br>*(Hôm nay mình đi xe lăn nhé. Ông đang sốt nên phải cẩn thận không ngã.)* |
| Ông Kimura | (gật đầu yếu ớt)<br>*(gật đầu yếu ớt)* |
| Ngọc | (đưa ông đến nhà vệ sinh, đứng chờ bên ngoài, chú ý tiếng động) (thầm) <ruby>倒<rt>たお</rt></ruby>れないようにしないと。ブレーキかけた、<ruby>フットレスト<rt>ふっとれすと</rt></ruby>も<ruby>上<rt>あ</rt></ruby>げた。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Phải cẩn thận không để ông ngã. Đã khóa phanh, đã nâng bàn chân lên. Được rồi.)* |

---

## Tình huống 6 — Phòng ông Kimura · 21:30, báo cáo lần hai với y tá Yano — sốt giảm

| Vai | Lời thoại |
|---|---|
| Ngọc | (gọi điện) <ruby>矢野<rt>やの</rt></ruby>さん、グエンです。<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>再測定<rt>さいそくてい</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。21<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、<ruby>体温<rt>たいおん</rt></ruby>37.6<ruby>度<rt>ど</rt></ruby>。<ruby>血圧<rt>けつあつ</rt></ruby>120/74、SpO296。<ruby>意識<rt>いしき</rt></ruby>ははっきりしています。<ruby>トイレ<rt>といれ</rt></ruby>は<ruby>車椅子<rt>くるまいす</rt></ruby>で<ruby>介助<rt>かいじょ</rt></ruby>しました。<ruby>転倒<rt>てんとう</rt></ruby>なし。<br>*(Y tá Yano, cháu là Nguyễn. Báo cáo đo lại ông Kimura. 21 giờ 30, nhiệt độ 37.6. Huyết áp 120/74, SpO2 96. Ý thức rõ ràng. Nhà vệ sinh đã hỗ trợ bằng xe lăn. Không té ngã.)* |
| Y tá Yano | <ruby>解熱剤<rt>げねつざい</rt></ruby>が<ruby>効<rt>き</rt></ruby>いてきましたね。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>1時間<rt>いちじかん</rt></ruby>ごとに<ruby>体温<rt>たいおん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>って、38.5<ruby>度<rt>ど</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えたらまた<ruby>連絡<rt>れんらく</rt></ruby>ください。<br>*(Thuốc hạ sốt đã có tác dụng rồi. Tiếp tục đo nhiệt độ mỗi tiếng, nếu vượt 38.5 thì báo lại nhé.)* |
| Ngọc | <ruby>了解<rt>りょうかい</rt></ruby>です。1<ruby>時間<rt>じかん</rt></ruby>ごとに<ruby>測定<rt>そくてい</rt></ruby>し、38.5<ruby>以上<rt>いじょう</rt></ruby>で<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Rõ ạ. Đo mỗi tiếng, nếu từ 38.5 trở lên thì báo.)* |
| Y tá Yano | <ruby>車椅子<rt>くるまいす</rt></ruby>で<ruby>介助<rt>かいじょ</rt></ruby>したのは<ruby>正解<rt>せいかい</rt></ruby>でしたよ。<ruby>熱<rt>ねつ</rt></ruby>があるときは<ruby>転倒<rt>てんとう</rt></ruby><ruby>リスク<rt>りすく</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。よく<ruby>判断<rt>はんだん</rt></ruby>できました。<br>*(Dùng xe lăn hỗ trợ là đúng đấy. Khi sốt, nguy cơ té ngã cao hơn. Em phán đoán tốt lắm.)* |
| Ngọc | ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>注意<rt>ちゅうい</rt></ruby>して<ruby>見<rt>み</rt></ruby>ます。<br>*(Cảm ơn chị. Cháu sẽ tiếp tục theo dõi kỹ.)* |

---

## Tình huống 7 — Hành lang Hidamari-en · 23:00, 巡回 đêm, kiểm tra ông Tanaka

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa phòng ông Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、グエンです。<ruby>入<rt>はい</rt></ruby>っていいですか?<br>*(Ông Tanaka, cháu là Nguyễn. Cháu vào được không ạ?)* |
| Ông Tanaka | (tiếng ngáy ngủ đều đặn — đang ngủ)<br>*(tiếng ngáy ngủ đều đặn — đang ngủ)* |
| Ngọc | (nhìn vào phòng nhẹ nhàng — không bật đèn, dùng đèn pin nhỏ) <ruby>咳<rt>せき</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>...今は<ruby>聞<rt>き</rt></ruby>こえない。<ruby>呼吸<rt>こきゅう</rt></ruby>も<ruby>規則的<rt>きそくてき</rt></ruby>。<ruby>転落防止柵<rt>てんらくぼうしさく</rt></ruby>よし。<ruby>ナースコール<rt>なあすこうる</rt></ruby>よし。(ghi lại)<br>*(Tình trạng ho... Hiện không nghe thấy. Hô hấp đều đặn. Thanh chắn ngã ổn. Chuông gọi ổn. — ghi lại —)* |
| Ngọc | (ghi vào hồ sơ) 23:00。<ruby>田中<rt>たなか</rt></ruby>さん<ruby>安眠<rt>あんみん</rt></ruby>中。<ruby>咳<rt>せき</rt></ruby>なし。<ruby>呼吸<rt>こきゅう</rt></ruby><ruby>正常<rt>せいじょう</rt></ruby>。<ruby>体位<rt>たいい</rt></ruby><ruby>変換<rt>へんかん</rt></ruby><ruby>実施<rt>じっし</rt></ruby>（<ruby>右側臥位<rt>みぎそくがい</rt></ruby>→<ruby>左側臥位<rt>ひだりそくがい</rt></ruby>）。<br>*(23:00. Ông Tanaka đang ngủ say. Không ho. Hô hấp bình thường. Đã thực hiện đổi tư thế (nằm nghiêng phải → trái).)* |

---

## Tình huống 8 — Phòng ông Kimura · 01:00, sốt ổn định — ông Kimura nói chuyện nhẹ

| Vai | Lời thoại |
|---|---|
| Ngọc | (đo nhiệt độ lần thứ tư trong đêm) <ruby>木村<rt>きむら</rt></ruby>さん、37.2<ruby>度<rt>ど</rt></ruby>になりました。だいぶ<ruby>下<rt>さ</rt></ruby>がりましたよ。<br>*(Ông Kimura, xuống còn 37.2 độ rồi ạ. Giảm nhiều rồi đó.)* |
| Ông Kimura | (thở nhẹ nhõm) そうか...。グエンちゃん、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>夜勤<rt>やきん</rt></ruby>か。<ruby>大変<rt>たいへん</rt></ruby>だったね。<br>*(Vậy à... Cháu Nguyễn, trực đêm một mình à. Vất vả nhỉ.)* |
| Ngọc | (mỉm cười nhẹ) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>元気<rt>げんき</rt></ruby>になってきてよかったです。<br>*(Không sao đâu ạ. Ông Kimura khỏe hơn rồi thì cháu mừng.)* |
| Ông Kimura | <ruby>昔<rt>むかし</rt></ruby>は<ruby>熱<rt>ねつ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ても<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>気<rt>き</rt></ruby>にしなかったのにな。<ruby>年<rt>とし</rt></ruby>を<ruby>取<rt>と</rt></ruby>ると<ruby>体<rt>からだ</rt></ruby>が<ruby>正直<rt>しょうじき</rt></ruby>だ。<br>*(Ngày xưa sốt cũng chẳng quan tâm. Già rồi, cơ thể nó thật thà lắm.)* |
| Ngọc | (cười nhẹ) そうですね。でも<ruby>今夜<rt>こんや</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>いますから<rt>いますから</rt></ruby>、<ruby>安心<rt>あんしん</rt></ruby>してください。<ruby>何<rt>なに</rt></ruby>かあればすぐ<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Đúng vậy nhỉ. Nhưng tối nay có cháu ở đây, ông yên tâm. Có gì thì gọi ngay nhé.)* |
| Ông Kimura | ん。ありがとうよ、グエンちゃん。<ruby>いい<rt>いい</rt></ruby><ruby>子<rt>こ</rt></ruby>だ。<br>*(Ừ. Cảm ơn cháu nhé, cháu Nguyễn. Cháu ngoan lắm.)* |

---

## Tình huống 9 — Phòng hồ sơ · 04:00, viết 夜勤記録 độc lập — tổng hợp toàn bộ đêm

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình tại bàn hồ sơ, viết tập trung) <ruby>夜勤<rt>やきん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>...<ruby>木村<rt>きむら</rt></ruby>さんのところが<ruby>一番<rt>いちばん</rt></ruby><ruby>重要<rt>じゅうよう</rt></ruby>だ。<ruby>時間<rt>じかん</rt></ruby>と<ruby>体温<rt>たいおん</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>、<ruby>対応<rt>たいおう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>、<ruby>看護師<rt>かんごし</rt></ruby>への<ruby>報告<rt>ほうこく</rt></ruby>、<ruby>指示<rt>しじ</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>書<rt>か</rt></ruby>かないと。<br>*(Hồ sơ trực đêm... Phần ông Kimura là quan trọng nhất. Thời gian và sự thay đổi nhiệt độ, nội dung xử lý, báo cáo với y tá, nội dung chỉ thị. Phải ghi đầy đủ hết.)* |
| Ngọc | (viết từng dòng cẩn thận) 「18:30　37.5<ruby>度<rt>ど</rt></ruby>。<ruby>発赤<rt>はっせき</rt></ruby>あり。<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>。/ 20:00　38.4<ruby>度<rt>ど</rt></ruby>。<ruby>悪寒<rt>おかん</rt></ruby>の<ruby>訴<rt>うった</rt></ruby>え。<ruby>看護師<rt>かんごし</rt></ruby><ruby>矢野<rt>やの</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>解熱剤<rt>げねつざい</rt></ruby><ruby>投与<rt>とうよ</rt></ruby><ruby>指示<rt>しじ</rt></ruby>。...」<br>*(— viết từng dòng — "18:30 37.5 độ. Có đỏ mặt. Bổ sung nước. / 20:00 38.4 độ. Ông có biểu hiện ớn lạnh. Báo y tá Yano. Chỉ thị dùng thuốc hạ sốt. ...")* |
| Ngọc | (viết thêm phần tự nhận xét) 「<ruby>移動<rt>いどう</rt></ruby><ruby>時<rt>じ</rt></ruby>は<ruby>車椅子<rt>くるまいす</rt></ruby>を<ruby>使用<rt>しよう</rt></ruby>。<ruby>転倒<rt>てんとう</rt></ruby><ruby>リスク<rt>りすく</rt></ruby><ruby>考慮<rt>こうりょ</rt></ruby>のため。<ruby>以降<rt>いこう</rt></ruby>、<ruby>看護師<rt>かんごし</rt></ruby><ruby>指示<rt>しじ</rt></ruby>に<ruby>従<rt>したが</rt></ruby>い1<ruby>時間<rt>じかん</rt></ruby>ごと<ruby>測定<rt>そくてい</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>。1:00に37.2<ruby>度<rt>ど</rt></ruby>へ<ruby>低下<rt>ていか</rt></ruby>。<ruby>安定<rt>あんてい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>。」<br>*(— ghi thêm — "Khi di chuyển sử dụng xe lăn vì xem xét nguy cơ té ngã. Sau đó, tiếp tục đo mỗi tiếng theo chỉ thị y tá. Lúc 1:00 giảm xuống 37.2 độ. Xác nhận ổn định.")* |
| Ngọc | (đọc lại toàn bộ, gật đầu) ...<ruby>以前<rt>いぜん</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>だったら、こんなに<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>書<rt>か</rt></ruby>けなかった。(nhẹ nhõm)<br>*(... Hồi trước thì mình không thể bình tĩnh viết như này được. — nhẹ nhõm —)* |

---

## Tình huống 10 — Phòng họp Hidamari-en · 07:30, 申し送り sáng — tự tin báo cáo toàn bộ đêm

| Vai | Lời thoại |
|---|---|
| Ngọc | (申し送り trước ca ngày) <ruby>夜間<rt>やかん</rt></ruby>の<ruby>特記事項<rt>とっきじこう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>夜間<rt>やかん</rt></ruby>38.4<ruby>度<rt>ど</rt></ruby>まで<ruby>上昇<rt>じょうしょう</rt></ruby>しました。<ruby>看護師<rt>かんごし</rt></ruby><ruby>矢野<rt>やの</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>、<ruby>指示<rt>しじ</rt></ruby>に<ruby>従<rt>したが</rt></ruby>い<ruby>解熱剤<rt>げねつざい</rt></ruby>を<ruby>投与<rt>とうよ</rt></ruby>しました。<br>*(Báo cáo sự kiện đặc biệt trong đêm. Ông Kimura đêm qua sốt lên đến 38.4 độ. Đã liên lạc y tá Yano, theo chỉ thị đã dùng thuốc hạ sốt.)* |
| Ngọc | <ruby>現在<rt>げんざい</rt></ruby>7<ruby>時<rt>じ</rt></ruby>、37.0<ruby>度<rt>ど</rt></ruby>。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いています。<ruby>夜間<rt>やかん</rt></ruby>、<ruby>トイレ<rt>といれ</rt></ruby>へは<ruby>転倒<rt>てんとう</rt></ruby><ruby>リスク<rt>りすく</rt></ruby>を<ruby>考慮<rt>こうりょ</rt></ruby>し<ruby>車椅子<rt>くるまいす</rt></ruby>で<ruby>介助<rt>かいじょ</rt></ruby>しました。<ruby>転倒<rt>てんとう</rt></ruby>・<ruby>外傷<rt>がいしょう</rt></ruby>なし。<ruby>記録<rt>きろく</rt></ruby>に<ruby>詳細<rt>しょうさい</rt></ruby>を<ruby>記入<rt>きにゅう</rt></ruby>済み<rt>ずみ</rt>です。<br>*(Hiện tại lúc 7h là 37.0 độ. Ổn định rồi. Ban đêm, khi đi vệ sinh đã dùng xe lăn hỗ trợ vì xem xét nguy cơ té ngã. Không té ngã, không chấn thương. Đã ghi chi tiết vào hồ sơ.)* |
| Yamamoto | <ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>田中<rt>たなか</rt></ruby>さんは?<br>*(Rõ rồi. Còn ông Tanaka thì sao?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>咳<rt>せき</rt></ruby>なし。<ruby>安眠<rt>あんみん</rt></ruby>。<ruby>体位変換<rt>たいいへんかん</rt></ruby><ruby>2回<rt>にかい</rt></ruby><ruby>実施<rt>じっし</rt></ruby>、<ruby>異常<rt>いじょう</rt></ruby>なし。<ruby>他<rt>ほか</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は<ruby>全員<rt>ぜんいん</rt></ruby><ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていました。<br>*(Ông Tanaka không ho. Ngủ ngon. Đã đổi tư thế 2 lần, không có gì bất thường. Những người còn lại tất cả đều ổn định.)* |
| Yamamoto | (gật đầu) ありがとうございます。<ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>も<ruby>継続<rt>けいぞく</rt></ruby>して<ruby>観察<rt>かんさつ</rt></ruby>します。グエンさん、<ruby>お疲<rt>おつか</rt></ruby>れさまでした。<br>*(Cảm ơn em. Ông Kimura, hôm nay tiếp tục theo dõi. Nguyễn, em vất vả rồi.)* |

---

## Tình huống 11 — Hành lang ひだまり苑 · Sau 申し送り, Yamamoto nói riêng với Ngọc

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>昨夜<rt>さくや</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>、とてもよかったですよ。<ruby>特<rt>とく</rt></ruby>に<ruby>看護師<rt>かんごし</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>の<ruby>タイミング<rt>たいみんぐ</rt></ruby>と<ruby>報告<rt>ほうこく</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>が<ruby>的確<rt>てきかく</rt></ruby>でした。<br>*(Em Nguyễn, cách xử lý tối qua rất tốt. Đặc biệt thời điểm liên lạc y tá và nội dung báo cáo rất chính xác.)* |
| Ngọc | (hơi bất ngờ) ありがとうございます。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かと<ruby>不安<rt>ふあん</rt></ruby>でした。<br>*(Cảm ơn chị. Thật ra lúc đầu cháu cũng lo không biết một mình có ổn không.)* |
| Yamamoto | でも<ruby>自分<rt>じぶん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>して、<ruby>必要<rt>ひつよう</rt></ruby>なときに<ruby>助<rt>たす</rt></ruby>けを<ruby>求<rt>もと</rt></ruby>めた。それが<ruby>一人前<rt>いちにんまえ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Nhưng em đã tự phán đoán, và xin giúp đỡ đúng lúc cần. Đó mới là cách làm việc của người chuyên nghiệp thực sự.)* |
| Ngọc | (nhớ lại năm đầu) ...<ruby>1年目<rt>いちねんめ</rt></ruby>の<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby>、<ruby>先輩<rt>せんぱい</rt></ruby>がいないと<ruby>何<rt>なに</rt></ruby>もできませんでした。あの<ruby>頃<rt>ころ</rt></ruby>と<ruby>比べる<rt>くらべる</rt></ruby>と...<ruby>少<rt>すこ</rt></ruby>し<ruby>成長<rt>せいちょう</rt></ruby>できたかなと<ruby>思<rt>おも</rt></ruby>います。<br>*(... Ca đêm đầu tiên năm nhất, không có đàn anh thì cháu không làm được gì. So với hồi đó... cháu nghĩ mình đã trưởng thành lên một chút rồi.)* |
| Yamamoto | 「<ruby>少<rt>すこ</rt></ruby>し」じゃないですよ。<ruby>ずいぶん<rt>ずいぶん</rt></ruby>です。(mỉm cười)<br>*(Không phải "một chút" đâu. Là rất nhiều đấy. — mỉm cười —)* |

---

## Tình huống 12 — Ký túc xá · Buổi sáng, sau khi về từ ca đêm

> Scene tiếng Việt — cảm xúc thật của Ngọc sau đêm trực đầu tiên một mình với tư cách 特定技能.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt, đang chuẩn bị đi ca sáng) Ngọc về rồi. Đêm qua thế nào, có gì không? |
| Ngọc | (tiếng Việt, ngồi xuống, thở ra) Có. Ông Kimura sốt 38.4. Cháu tự gọi y tá, tự xử lý, tự viết hồ sơ. Mọi thứ một mình. |
| Đức | (tiếng Việt) Thế rồi sao? |
| Ngọc | (tiếng Việt) Rồi... ổn. Ông giảm sốt, không ngã. Sáng báo cáo xong chị Yamamoto khen. |
| Đức | (tiếng Việt) Thấy không — mình làm được. Em nhớ năm nhất, em mà trực đêm một mình thì chắc gọi anh giữa đêm rồi. |
| Ngọc | (tiếng Việt, cười nhẹ) Dạ... cháu cũng nhớ hồi đó. Hồi đó ông Kimura sốt chắc cháu hoảng loạn rồi. Còn tối qua, cháu chỉ nghĩ: đo nhiệt độ, ghi chép, gọi y tá đúng lúc, theo dõi sát. Làm từng bước thôi. |
| Đức | (tiếng Việt) Đó là 3 năm tích lũy. Không phải một đêm. |
| Ngọc | (tiếng Việt, nhìn ra cửa sổ) Vâng. Cháu hiểu rồi anh ạ. Nghề này nó dạy mình từng ngày — không phải từng năm. |

---

## Đọng lại chương 7

Ngọc — giờ là 特定技能1号介護 — đã hoàn thành ca trực đêm độc lập đầu tiên: tự phát hiện dấu hiệu sốt tăng của ông Kimura, gọi 看護師 đúng thời điểm, báo cáo đầy đủ sinh hiệu, phán đoán dùng xe lăn để phòng té ngã, ghi 夜勤記録 chi tiết, và 申し送り sáng rõ ràng tự tin. So với ca đêm đầu tiên năm nhất (mọi thứ cần hỏi đàn anh), sự trưởng thành hiện ra trong từng quyết định độc lập — và trong câu nói của chính Ngọc: *"3 năm tích lũy, không phải một đêm."*

> Từ vựng & mẫu câu chương này: 一人夜勤・申し送り・経過観察・巡回・体温・発熱・悪寒・解熱剤・投与・指示書・SpO2・血圧・緊急搬送・転倒リスク・車椅子介助・端座位・転落防止柵・ナースコール・安眠・体位変換・夜勤記録・特記事項・バイタル・判断・報告・連絡・看護師・緊急対応・一人前・成長', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000008, 800000029, NULL, 'markdown_book', 'T8. Thành thạo ghi chép (介護記録のプロへ)', '# Sách thực tập sinh điều dưỡng · T8. Thành thạo ghi chép (介護記録のプロへ)

> **Mục tiêu nhân vật:** Ngọc (27 tuổi, tháng 11 năm 2028) — đã là 特定技能1号, tay nghề vững. Chương này tập trung vào kỹ năng ghi chép 介護記録 chuyên nghiệp, đọc hiểu ケアプラン, tham gia bàn luận 個別援助計画, và hướng dẫn 後輩 An viết 記録 đúng chuẩn.

---

## Bối cảnh

Tháng 11 năm 2028. Ngọc đã làm việc tại「ひだまり苑」hơn 2,5 năm. Cô không còn là người mới cần cầm tay chỉ việc — cô là người mà Yamamoto tin giao 記録 riêng, tham gia họp 個別援助計画. Kohai An mới vào 2 tháng, còn lúng túng với cách ghi chép. Ông Tanaka — 利用者 quen thuộc — vẫn ở đó, lầm lì như mọi ngày, nhưng thỉnh thoảng để lộ sự tin tưởng qua từng cử chỉ nhỏ.

---

## Tình huống 1 — Phòng ghi chép nhân viên · 8:00, Ngọc đọc 記録 ca trước

| Vai | Lời thoại |
|---|---|
| Ngọc | (đọc sổ ghi chép, tập trung) <ruby>昨夜<rt>さくや</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>夜間<rt>やかん</rt></ruby>2<ruby>回<rt>かい</rt></ruby><ruby>起床<rt>きしょう</rt></ruby>、<ruby>排尿<rt>はいにょう</rt></ruby>あり、<ruby>睡眠<rt>すいみん</rt></ruby>は<ruby>浅<rt>あさ</rt></ruby>め...。<br>*(Cháu kiểm tra ghi chép ca đêm. Ông Tanaka, thức dậy 2 lần vào ban đêm, có tiểu tiện, giấc ngủ nông...)* |
| Yamamoto | グエンさん、<ruby>昨日<rt>きのう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>記録<rt>きろく</rt></ruby>に<ruby>気<rt>き</rt></ruby>になることがありましたか?<br>*(Nguyễn, trong ghi chép hôm qua về ông Tanaka có gì đáng chú ý không?)* |
| Ngọc | はい。<ruby>夜間<rt>やかん</rt></ruby>の<ruby>起床<rt>きしょう</rt></ruby>が2<ruby>回<rt>かい</rt></ruby>あって、<ruby>水分<rt>すいぶん</rt></ruby><ruby>摂取量<rt>せっしゅりょう</rt></ruby>が<ruby>昼間<rt>ひるま</rt></ruby>より<ruby>少<rt>すく</rt></ruby>なかったです。<ruby>今日<rt>きょう</rt></ruby>の<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Thức đêm 2 lần, lượng nước uống ban ngày ít hơn thường ngày. Cháu muốn chú ý bổ sung nước hôm nay ạ.)* |
| Yamamoto | いい<ruby>読<rt>よ</rt></ruby>み<ruby>方<rt>かた</rt></ruby>です。<ruby>記録<rt>きろく</rt></ruby>はただ<ruby>書<rt>か</rt></ruby>くだけじゃなく、<ruby>次<rt>つぎ</rt></ruby>のケアにつなげるために<ruby>読<rt>よ</rt></ruby>むものですからね。<br>*(Cách đọc tốt đấy. Ghi chép không chỉ để viết — mà để đọc và kết nối sang chăm sóc tiếp theo.)* |
| Ngọc | はい、<ruby>そのつながりが大切<rt>そのつながりがたいせつ</rt></ruby>だと<ruby>最近<rt>さいきん</rt></ruby><ruby>分<rt>わ</rt></ruby>かってきました。<br>*(Vâng, gần đây cháu mới hiểu ra cái liên kết đó quan trọng thế nào ạ.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 9:00, chăm sóc buổi sáng và ghi nhận trạng thái

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>おはようございます<rt>おはようございます</rt></ruby>。<ruby>今朝<rt>けさ</rt></ruby>の<ruby>体<rt>からだ</rt></ruby>の<ruby>具合<rt>ぐあい</rt></ruby>はどうですか?<br>*(Ông Tanaka, chào buổi sáng ạ. Sáng nay ông thấy người thế nào?)* |
| Ông Tanaka | ...なんか<ruby>眠<rt>ねむ</rt></ruby>い。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>二回<rt>にかい</rt></ruby>も<ruby>起<rt>お</rt></ruby>きた。<br>*(... Buồn ngủ sao ấy. Đêm qua tôi thức dậy hai lần.)* |
| Ngọc | そうですか。<ruby>記録<rt>きろく</rt></ruby>でも<ruby>確認<rt>かくにん</rt></ruby>していました。<ruby>夜<rt>よる</rt></ruby>は<ruby>寒<rt>さむ</rt></ruby>くなかったですか?<br>*(Thế ạ. Cháu đã kiểm tra trong ghi chép rồi. Ông có bị lạnh vào ban đêm không ạ?)* |
| Ông Tanaka | ちょっとな。<ruby>布団<rt>ふとん</rt></ruby>が<ruby>足<rt>あし</rt></ruby>からずれてた。<br>*(Có hơi lạnh. Chăn bị tuột ra khỏi chân.)* |
| Ngọc | ありがとうございます、<ruby>教<rt>おし</rt></ruby>えてくれて。<ruby>今夜<rt>こんや</rt></ruby>からは<ruby>夜間<rt>やかん</rt></ruby>の<ruby>巡視<rt>じゅんし</rt></ruby>で<ruby>布団<rt>ふとん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>も<ruby>記録<rt>きろく</rt></ruby>に<ruby>入<rt>い</rt></ruby>れます。<br>*(Cảm ơn ông đã nói ạ. Từ tối nay cháu sẽ ghi vào ghi chép việc kiểm tra chăn trong khi tuần tra đêm.)* |
| Ông Tanaka | お前、<ruby>記録<rt>きろく</rt></ruby>ばかり<ruby>言<rt>い</rt></ruby>うな。<br>*(Mày cứ chép với ghi mãi.)* |
| Ngọc | (mỉm cười) <ruby>記録<rt>きろく</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>だと、<ruby>田中<rt>たなか</rt></ruby>さんのことをもっと<ruby>よく<rt>よく</rt></ruby>ケアできるんです。だから<ruby>大切<rt>たいせつ</rt></ruby>なんですよ。<br>*(Ghi chép chính xác thì cháu có thể chăm sóc ông tốt hơn. Nên quan trọng lắm đấy ạ.)* |

---

## Tình huống 3 — Phòng họp nhân viên · 10:00, tham gia họp ケアプラン

| Vai | Lời thoại |
|---|---|
| Yamamoto | では<ruby>今日<rt>きょう</rt></ruby>の<ruby>個別援助計画<rt>こべつえんじょけいかく</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>です。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>ケアプラン<rt>けあぷらん</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>します。グエンさん、<ruby>現場<rt>げんば</rt></ruby>からの<ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hôm nay chúng ta xem xét lại kế hoạch hỗ trợ cá nhân. Xem lại Kế hoạch Chăm sóc của ông Tanaka. Nguyễn, nhờ em báo cáo từ thực tế nhé.)* |
| Ngọc | はい。この1ヶ<ruby>月<rt>げつ</rt></ruby>で、<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>夜間<rt>やかん</rt></ruby>の<ruby>覚醒<rt>かくせい</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えています。<ruby>排尿<rt>はいにょう</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>と<ruby>思<rt>おも</rt></ruby>われますが、<ruby>日中<rt>にっちゅう</rt></ruby>の<ruby>水分<rt>すいぶん</rt></ruby><ruby>摂取<rt>せっしゅ</rt></ruby>のタイミングを<ruby>変<rt>か</rt></ruby>えることで<ruby>改善<rt>かいぜん</rt></ruby>できるかもしれません。<br>*(Vâng. Trong tháng này, ông Tanaka tỉnh giấc ban đêm tăng lên. Có vẻ do tiểu tiện, nhưng có thể cải thiện bằng cách thay đổi thời điểm bổ sung nước ban ngày ạ.)* |
| Yamamoto | (gật đầu) 具体的にはどうしましょうか?<br>*(Cụ thể thì làm thế nào?)* |
| Ngọc | <ruby>夕食<rt>ゆうしょく</rt></ruby>から<ruby>就寝<rt>しゅうしん</rt></ruby>まで<ruby>水分<rt>すいぶん</rt></ruby>を<ruby>少<rt>すく</rt></ruby>なめにして、<ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>多め<rt>おおめ</rt></ruby>に<ruby>取<rt>と</rt></ruby>っていただくのはどうでしょうか。<ruby>記録<rt>きろく</rt></ruby>を1<ruby>週間<rt>しゅうかん</rt></ruby><ruby>つけ<rt>つけ</rt></ruby>て<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Từ bữa tối đến giờ ngủ giảm lượng nước, còn buổi sáng cho ông uống nhiều hơn — thế nào ạ? Cháu sẽ ghi chép theo dõi 1 tuần.)* |
| Yamamoto | いい<ruby>提案<rt>ていあん</rt></ruby>ですね。<ruby>記録<rt>きろく</rt></ruby>を<ruby>基<rt>もと</rt></ruby>にした<ruby>ケア<rt>けあ</rt></ruby>の<ruby>改善<rt>かいぜん</rt></ruby>—これが<ruby>本当<rt>ほんとう</rt></ruby>のプロの<ruby>仕事<rt>しごと</rt></ruby>ですよ。<br>*(Đề xuất tốt đấy. Cải thiện chăm sóc dựa trên ghi chép — đây mới là công việc của người thực sự chuyên nghiệp.)* |
| Ngọc | ありがとうございます。<ruby>ケアプラン<rt>けあぷらん</rt></ruby>に<ruby>追記<rt>ついき</rt></ruby>します。<br>*(Cảm ơn ạ. Cháu sẽ bổ sung vào Kế hoạch Chăm sóc.)* |

---

## Tình huống 4 — Hành lang · 11:00, Ngọc hướng dẫn An viết 記録 đúng chuẩn

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>書<rt>か</rt></ruby>きましたか?<ruby>少<rt>すこ</rt></ruby>し<ruby>見<rt>み</rt></ruby>てもいいですか?<br>*(An, em đã viết ghi chép hôm nay chưa? Chị xem một chút được không?)* |
| An | はい、でも<ruby>自信<rt>じしん</rt></ruby>がないです。<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>が<ruby>合<rt>あ</rt></ruby>っているか<ruby>分<rt>わ</rt></ruby>からなくて...。<br>*(Vâng, nhưng em không tự tin. Em không biết cách viết có đúng không...)* |
| Ngọc | (đọc sổ An) ここ、「<ruby>元気<rt>げんき</rt></ruby>そうでした」と<ruby>書<rt>か</rt></ruby>いていますね。<ruby>記録<rt>きろく</rt></ruby>には「そうでした」は<ruby>使<rt>つか</rt></ruby>わないほうがいいです。<ruby>主観的<rt>しゅかんてき</rt></ruby>になるから。<br>*(Đây, em viết "có vẻ khỏe mạnh". Trong ghi chép không nên dùng "có vẻ". Vì mang tính chủ quan.)* |
| An | じゃあ、どう<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Vậy thì viết thế nào ạ?)* |
| Ngọc | たとえば「<ruby>表情<rt>ひょうじょう</rt></ruby>が<ruby>明<rt>あか</rt></ruby>るく、<ruby>食事<rt>しょくじ</rt></ruby>を<ruby>完食<rt>かんしょく</rt></ruby>した」とか「<ruby>声かけ<rt>こえかけ</rt></ruby>に<ruby>笑顔<rt>えがお</rt></ruby>で<ruby>応答<rt>おうとう</rt></ruby>した」など、<ruby>見<rt>み</rt></ruby>たことをそのまま<ruby>書<rt>か</rt></ruby>きます。<br>*(Ví dụ "nét mặt tươi vui, ăn hết bữa" hoặc "phản ứng cười khi được hỏi thăm" — viết đúng những gì mình thấy.)* |
| An | なるほど。<ruby>事実<rt>じじつ</rt></ruby>だけを<ruby>書<rt>か</rt></ruby>くんですね。<br>*(À ra vậy. Chỉ viết sự thật đúng không ạ?)* |
| Ngọc | そうです。<ruby>介護記録<rt>かいごきろく</rt></ruby>は<ruby>日記<rt>にっき</rt></ruby>じゃない。<ruby>客観的<rt>きゃっかんてき</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>次<rt>つぎ</rt></ruby>のスタッフに<ruby>伝<rt>つた</rt></ruby>えるものです。<br>*(Đúng vậy. Ghi chép điều dưỡng không phải nhật ký. Đó là thông tin khách quan để truyền lại cho nhân viên ca sau.)* |

---

## Tình huống 5 — Phòng ghi chép · 13:30, viết 記録 về ông Tanaka

| Vai | Lời thoại |
|---|---|
| An | グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>記録<rt>きろく</rt></ruby>、どう<ruby>書<rt>か</rt></ruby>けばいいですか? <ruby>午前中<rt>ごぜんちゅう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しむせていたと<ruby>思<rt>おも</rt></ruby>うんですが。<br>*(Chị Nguyễn, ghi chép về ông Tanaka thế nào ạ? Cháu thấy buổi sáng ông có hơi bị sặc...)* |
| Ngọc | 「<ruby>思<rt>おも</rt></ruby>う」はダメ。<ruby>見<rt>み</rt></ruby>たことを<ruby>正確<rt>せいかく</rt></ruby>に。どんな<ruby>場面<rt>ばめん</rt></ruby>でむせましたか?<br>*(Không được dùng "cháu thấy". Viết chính xác những gì đã thấy. Ông sặc trong tình huống nào?)* |
| An | <ruby>昼食<rt>ちゅうしょく</rt></ruby>のとき、お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んでいたら2<ruby>回<rt>かい</rt></ruby>むせました。すぐ<ruby>止<rt>と</rt></ruby>まりましたが。<br>*(Bữa trưa khi uống trà thì sặc 2 lần. Nhưng dừng lại ngay ạ.)* |
| Ngọc | それを<ruby>そのまま<rt>そのまま</rt></ruby><ruby>書<rt>か</rt></ruby>きます。「<ruby>昼食時<rt>ちゅうしょくじ</rt></ruby>、<ruby>飲水中<rt>いんすいちゅう</rt></ruby>に2<ruby>回<rt>かい</rt></ruby>むせ。<ruby>自然<rt>しぜん</rt></ruby>に<ruby>回復<rt>かいふく</rt></ruby>。<ruby>食事<rt>しょくじ</rt></ruby>は<ruby>完食<rt>かんしょく</rt></ruby>」。これが<ruby>正確<rt>せいかく</rt></ruby>な<ruby>記録<rt>きろく</rt></ruby>です。<br>*(Viết y như vậy. "Bữa trưa, sặc 2 lần khi uống nước. Tự hồi phục. Ăn hết bữa." Đây là ghi chép chính xác.)* |
| An | わかりました。そして<ruby>むせたこと<rt>むせたこと</rt></ruby>はすぐ<ruby>報告<rt>ほうこく</rt></ruby>しましたか?<br>*(Em hiểu rồi. Nhưng việc sặc đó cháu báo cáo ngay chưa ạ?)* |
| Ngọc | えらい、その<ruby>確認<rt>かくにん</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>。<ruby>観察<rt>かんさつ</rt></ruby>して→<ruby>記録<rt>きろく</rt></ruby>して→<ruby>報告<rt>ほうこく</rt></ruby>する、この3つがセットです。<br>*(Giỏi đấy, việc xác nhận đó rất quan trọng. Quan sát → ghi chép → báo cáo, 3 cái này là một bộ.)* |

---

## Tình huống 6 — Phòng ăn · 14:00, quan sát bữa chiều và ghi nhận kịp thời

| Vai | Lời thoại |
|---|---|
| Ngọc | (quan sát bữa ăn, ghi sổ nhỏ) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>おやつ<rt>おやつ</rt></ruby>は<ruby>食<rt>た</rt></ruby>べられましたか?<br>*(Ông Tanaka, hôm nay ông ăn được bữa xế không ạ?)* |
| Ông Tanaka | まあな。<ruby>柔<rt>やわ</rt></ruby>らかかったから。<br>*(Cũng được. Vì mềm.)* |
| Ngọc | よかったです。(ghi nhỏ vào sổ) <ruby>水分<rt>すいぶん</rt></ruby>はどうですか? もう<ruby>一杯<rt>いっぱい</rt></ruby>いかがですか?<br>*(Tốt ạ. Nước thì sao ạ? Ông dùng thêm một ly không?)* |
| Ông Tanaka | いらん。<ruby>夜<rt>よる</rt></ruby>トイレに<ruby>行<rt>い</rt></ruby>きたくないから。<br>*(Không cần. Tôi không muốn phải dậy đêm đi toilet.)* |
| Ngọc | あ、そうですね。<ruby>でも<rt>でも</rt></ruby><ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>飲<rt>の</rt></ruby>んでいただけましたか? <ruby>脱水<rt>だっすい</rt></ruby>が<ruby>心配<rt>しんぱい</rt></ruby>なんです。<br>*(À, đúng rồi ạ. Nhưng buổi sáng ông đã uống đủ chưa? Cháu lo ông bị mất nước.)* |
| Ông Tanaka | ...<ruby>朝<rt>あさ</rt></ruby>は<ruby>飲<rt>の</rt></ruby>んだよ。<ruby>お前<rt>おまえ</rt></ruby>が<ruby>持<rt>も</rt></ruby>ってきたやつ。<br>*(... Buổi sáng tôi có uống rồi. Cái mày mang đến đó.)* |
| Ngọc | (mỉm cười, ghi vào sổ) ありがとうございます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>午前中<rt>ごぜんちゅう</rt></ruby>の<ruby>水分<rt>すいぶん</rt></ruby>摂取が<ruby>良好<rt>りょうこう</rt></ruby>と<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Cảm ơn ông. Cháu ghi là hôm nay lượng nước buổi sáng tốt nhé.)* |

---

## Tình huống 7 — Phòng nghỉ nhân viên · 15:00, Yamamoto dạy về 個別援助計画

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、「<ruby>個別援助計画<rt>こべつえんじょけいかく</rt></ruby>」と「<ruby>ケアプラン<rt>けあぷらん</rt></ruby>」の<ruby>違<rt>ちが</rt></ruby>いは<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Nguyễn, em có biết sự khác nhau giữa "Kế hoạch hỗ trợ cá nhân" và "Kế hoạch Chăm sóc" không?)* |
| Ngọc | <ruby>ケアプラン<rt>けあぷらん</rt></ruby>は<ruby>ケアマネジャー<rt>けあまねじゃー</rt></ruby>が<ruby>作<rt>つく</rt></ruby>る<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>で、<ruby>個別援助計画<rt>こべつえんじょけいかく</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>スタッフが<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>落<rt>お</rt></ruby>とし<ruby>込<rt>こ</rt></ruby>む<ruby>計画<rt>けいかく</rt></ruby>ですか?<br>*(Kế hoạch Chăm sóc là kế hoạch tổng thể do Quản lý Chăm sóc lập, còn Kế hoạch hỗ trợ cá nhân là kế hoạch cụ thể do nhân viên tại cơ sở triển khai phải không ạ?)* |
| Yamamoto | よく<ruby>理解<rt>りかい</rt></ruby>しています。その<ruby>個別援助計画<rt>こべつえんじょけいかく</rt></ruby>に<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>が<ruby>根拠<rt>こんきょ</rt></ruby>になります。だから<ruby>記録<rt>きろく</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>なんです。<br>*(Em hiểu rõ rồi. Và ghi chép hằng ngày trở thành căn cứ cho kế hoạch đó. Nên ghi chép mới quan trọng.)* |
| Ngọc | なるほど。<ruby>記録<rt>きろく</rt></ruby>が<ruby>計画<rt>けいかく</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えているんですね。<br>*(À ra vậy. Ghi chép là nền tảng cho kế hoạch đúng không ạ.)* |
| Yamamoto | そうです。グエンさんが<ruby>今朝<rt>けさ</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>で<ruby>提案<rt>ていあん</rt></ruby>した<ruby>水分<rt>すいぶん</rt></ruby>の<ruby>改善案<rt>かいぜんあん</rt></ruby>—あれも<ruby>記録<rt>きろく</rt></ruby>から<ruby>生<rt>う</rt></ruby>まれたものですよね。<br>*(Đúng vậy. Đề xuất cải thiện lượng nước mà em nêu trong cuộc họp sáng nay — cũng sinh ra từ ghi chép mà nhỉ.)* |
| Ngọc | はい。<ruby>記録<rt>きろく</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んで<ruby>初<rt>はじ</rt></ruby>めて<ruby>気<rt>き</rt></ruby>がついたことでした。<br>*(Vâng. Đó là điều cháu chỉ nhận ra khi đọc lại ghi chép ạ.)* |

---

## Tình huống 8 — Phòng ghi chép · 16:00, An viết lại 記録 đúng chuẩn

| Vai | Lời thoại |
|---|---|
| An | グエンさん、<ruby>書<rt>か</rt></ruby>き<ruby>直<rt>なお</rt></ruby>しました。<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Chị Nguyễn, cháu viết lại rồi. Chị xem được không ạ?)* |
| Ngọc | (đọc) うん、よくなりました。「<ruby>表情<rt>ひょうじょう</rt></ruby>が<ruby>明<rt>あか</rt></ruby>るく<ruby>笑顔<rt>えがお</rt></ruby>あり」「<ruby>食事<rt>しょくじ</rt></ruby>は8<ruby>割<rt>わり</rt></ruby><ruby>摂取<rt>せっしゅ</rt></ruby>」—<ruby>客観的<rt>きゃっかんてき</rt></ruby>でいいですよ。<br>*(Ừ, tốt hơn rồi. "Nét mặt tươi, có nụ cười" "Ăn 8/10 phần ăn" — khách quan, tốt đấy.)* |
| An | ありがとうございます。でも、「<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>良好<rt>りょうこう</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いたんですが、これはどうですか?<br>*(Cảm ơn chị. Nhưng cháu viết "Ăn ngon miệng" — cái này thế nào ạ?)* |
| Ngọc | それは<ruby>問題<rt>もんだい</rt></ruby>ないですよ。「<ruby>良好<rt>りょうこう</rt></ruby>」は<ruby>介護記録<rt>かいごきろく</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>だから。「<ruby>良<rt>よ</rt></ruby>さそう」はダメだけど、「<ruby>良好<rt>りょうこう</rt></ruby>」は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Không vấn đề gì. "良好" là từ thường dùng trong ghi chép điều dưỡng mà. "Có vẻ tốt" thì không được, nhưng "Tốt/良好" thì được.)* |
| An | そういう<ruby>違<rt>ちが</rt></ruby>いがあるんですね。<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>分<rt>わ</rt></ruby>かってきました。<br>*(Có sự khác nhau như vậy à. Cháu bắt đầu hiểu dần rồi ạ.)* |
| Ngọc | <ruby>最初<rt>さいしょ</rt></ruby>はみんなそうです。<ruby>続<rt>つづ</rt></ruby>ければ<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>上手<rt>うま</rt></ruby>くなります。<br>*(Ai lúc đầu cũng vậy. Cứ tiếp tục thì nhất định sẽ giỏi.)* |

---

## Tình huống 9 — Hành lang phòng ông Tanaka · 17:00, Ngọc bàn giao ca với đồng nghiệp

| Vai | Lời thoại |
|---|---|
| Nhân viên B | グエンさん、<ruby>申し送り<rt>もうしおくり</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nguyễn, nhờ em bàn giao ca nhé.)* |
| Ngọc | はい。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>、<ruby>夜間<rt>やかん</rt></ruby>の<ruby>覚醒<rt>かくせい</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>いていたので、<ruby>水分<rt>すいぶん</rt></ruby>を<ruby>午前中<rt>ごぜんちゅう</rt></ruby><ruby>多め<rt>おおめ</rt></ruby>に<ruby>取<rt>と</rt></ruby>っていただきました。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>水分<rt>すいぶん</rt></ruby>摂取は500mlで、<ruby>まずまず<rt>まずまず</rt></ruby>です。<br>*(Vâng. Ông Tanaka hôm nay do thức đêm nhiều nên cháu cho ông uống nước nhiều hơn vào buổi sáng. Lượng nước hôm nay 500ml, tạm ổn ạ.)* |
| Nhân viên B | <ruby>昼食<rt>ちゅうしょく</rt></ruby>は?<br>*(Bữa trưa thế nào?)* |
| Ngọc | <ruby>ほぼ<rt>ほぼ</rt></ruby><ruby>完食<rt>かんしょく</rt></ruby>です。<ruby>飲水<rt>いんすい</rt></ruby>のとき2<ruby>回<rt>かい</rt></ruby>むせがありましたが、<ruby>自然<rt>しぜん</rt></ruby>に<ruby>回復<rt>かいふく</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby><ruby>済<rt>ずみ</rt></ruby>です。<ruby>夜間<rt>やかん</rt></ruby>は<ruby>布団<rt>ふとん</rt></ruby>のずれを<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Gần hết phần ăn. Khi uống nước sặc 2 lần nhưng tự hồi phục, đã ghi vào sổ. Ban đêm nhớ kiểm tra chăn bị tuột nhé.)* |
| Nhân viên B | 分かりました。<ruby>記録<rt>きろく</rt></ruby>の<ruby>引き継ぎ<rt>ひきつぎ</rt></ruby>がいつも<ruby>丁寧<rt>ていねい</rt></ruby>ですね、グエンさんは。<br>*(Rõ rồi. Nguyễn bàn giao ghi chép lúc nào cũng tỉ mỉ nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>記録<rt>きろく</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>だと、<ruby>次<rt>つぎ</rt></ruby>のスタッフが<ruby>安心<rt>あんしん</rt></ruby>して<ruby>働<rt>はたら</rt></ruby>けますから。<br>*(Cảm ơn ạ. Ghi chép chính xác thì nhân viên ca sau an tâm làm việc hơn mà ạ.)* |

---

## Tình huống 10 — Sảnh ひだまり苑 · 17:30, Ngọc và Đức sau ca làm

| Vai | Lời thoại |
|---|---|
| Đức | グエンさん、<ruby>今日<rt>きょう</rt></ruby>も<ruby>遅<rt>おそ</rt></ruby>くまで<ruby>記録<rt>きろく</rt></ruby>していましたか?<br>*(Nguyễn, hôm nay lại ngồi ghi chép muộn hả?)* |
| Ngọc | はい。でも、もう<ruby>慣<rt>な</rt></ruby>れましたよ。<ruby>最初<rt>さいしょ</rt></ruby>は1<ruby>件<rt>けん</rt></ruby>書くのに10<ruby>分<rt>ぷん</rt></ruby>かかっていましたが、今は5<ruby>分<rt>ふん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に書けます。<br>*(Vâng. Nhưng em quen rồi. Hồi đầu một mục ghi mất 10 phút, giờ chưa tới 5 phút ạ.)* |
| Đức | それは<ruby>成長<rt>せいちょう</rt></ruby>ですよ。<ruby>記録<rt>きろく</rt></ruby>ができる<ruby>人<rt>ひと</rt></ruby>は<ruby>観察<rt>かんさつ</rt></ruby>もできる<ruby>人<rt>ひと</rt></ruby>です。<br>*(Đó là tiến bộ đấy. Người biết ghi chép là người biết quan sát.)* |
| Ngọc | ドックさん、そのこと、<ruby>最初<rt>さいしょ</rt></ruby>から<ruby>分<rt>わ</rt></ruby>かっていましたか?<br>*(Anh Đức, anh biết điều đó từ đầu rồi à?)* |
| Đức | いいや、<ruby>俺<rt>おれ</rt></ruby>も2<ruby>年<rt>ねん</rt></ruby>かかったよ。(笑) <ruby>焦<rt>あせ</rt></ruby>らなくていいよ、お前は<ruby>もう<rt>もう</rt></ruby><ruby>速<rt>はや</rt></ruby>い。<br>*(Không, anh cũng mất 2 năm. Cười. Em không cần vội, em đã nhanh rồi.)* |

---

## Tình huống 11 — Phòng họp nhân viên · Cuối tháng, Yamamoto nhận xét tiến độ

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今月<rt>こんげつ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>のクオリティが<ruby>上<rt>あ</rt></ruby>がりました。<ruby>特<rt>とく</rt></ruby>に<ruby>観察<rt>かんさつ</rt></ruby>した<ruby>事実<rt>じじつ</rt></ruby>の<ruby>記述<rt>きじゅつ</rt></ruby>が<ruby>具体的<rt>ぐたいてき</rt></ruby>になっています。<br>*(Nguyễn, chất lượng ghi chép tháng này của em tăng lên rồi. Đặc biệt phần mô tả sự thực quan sát được trở nên cụ thể hơn nhiều.)* |
| Ngọc | ありがとうございます。<ruby>ケアプラン<rt>けあぷらん</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>に<ruby>参加<rt>さんか</rt></ruby>してから、<ruby>記録<rt>きろく</rt></ruby>の<ruby>目的<rt>もくてき</rt></ruby>が<ruby>よく分かった<rt>よくわかった</rt></ruby>と<ruby>思<rt>おも</rt></ruby>います。<br>*(Cảm ơn ạ. Từ khi tham gia họp Kế hoạch Chăm sóc, cháu nghĩ cháu đã hiểu mục đích của ghi chép rõ hơn ạ.)* |
| Yamamoto | アンさんへの<ruby>指導<rt>しどう</rt></ruby>も<ruby>上手<rt>うま</rt></ruby>かったです。<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てることが<ruby>できる<rt>できる</rt></ruby>というのは、<ruby>本当<rt>ほんとう</rt></ruby>のプロの<ruby>印<rt>しるし</rt></ruby>です。<br>*(Hướng dẫn em An cũng tốt. Có thể đào tạo đàn em — đó là dấu hiệu của người thực sự chuyên nghiệp.)* |
| Ngọc | まだ<ruby>うまく<rt>うまく</rt></ruby><ruby>教<rt>おし</rt></ruby>えられるか<ruby>分<rt>わ</rt></ruby>からないですが、<ruby>自分<rt>じぶん</rt></ruby>がしてもらったことを、<ruby>次<rt>つぎ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>返<rt>かえ</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Cháu chưa biết có dạy được giỏi không, nhưng cháu muốn trả lại cho đàn em những gì cháu đã được chỉ bảo ạ.)* |
| Yamamoto | それが<ruby>介護<rt>かいご</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えていくことですよ。<ruby>ありがとう<rt>ありがとう</rt></ruby>、グエンさん。<br>*(Đó chính là điều duy trì môi trường điều dưỡng. Cảm ơn em, Nguyễn.)* |

---

## Tình huống 12 — Ký túc xá · 21:00, Ngọc và Hương (tiếng Việt)

> Scene tiếng Việt — mạch nhân vật, nhìn lại hành trình nghề nghiệp.

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Ngọc ơi, mày dạy An viết 記録 như thế nào vậy? Con nhỏ đó hỏi tao hoài mà tao không biết giải thích kiểu gì. |
| Ngọc | (tiếng Việt) Ừ, hồi đầu khó thiệt. Chủ yếu nhớ là: chỉ viết những gì mình thấy, không viết cảm tưởng hay "có vẻ". Viết sự thật thôi. |
| Hương | (tiếng Việt) Nghe đơn giản nhưng làm khó lắm. Tao nhớ hồi mới vào tao viết 記録 như viết nhật ký luôn. Bị Yamamoto-san sửa cả trang. |
| Ngọc | (cười) Tao cũng vậy. Mà giờ nghĩ lại thấy ghi chép với bàn 個別援助計画 là hai thứ mình phải biết nhất trong nghề này. Hiểu cái đó thì làm gì cũng có ý nghĩa hơn. |
| Hương | (tiếng Việt) Mày giờ khác rồi Ngọc ơi. Lúc mới qua mày còn không dám nói trong họp. Giờ mày đề xuất điều chỉnh ケアプラン luôn. |
| Ngọc | (im lặng một chút) Ừ. Cũng không biết lúc nào chuyển. Chắc từ từ mà được. Thôi ngủ đi Hương, mai còn ca sáng. |

---

## Đọng lại chương 8

Ngọc không còn ghi chép để "hoàn thành nhiệm vụ" — cô ghi chép để **hiểu người bệnh hơn**, để **đề xuất điều chỉnh ケアプラン**, để **truyền lại thông tin chính xác** cho ca sau. Kỹ năng này — quan sát → ghi chép khách quan → báo cáo → cải thiện chăm sóc — là nền tảng của nghề điều dưỡng chuyên nghiệp. Và khi Ngọc bắt đầu hướng dẫn An, cô nhận ra: người thực sự hiểu nghề là người có thể giải thích nghề cho người khác.

> Từ vựng & mẫu câu chương này: 介護記録・ケアプラン・個別援助計画・客観的・主観的・事実の記述・申し送り・観察・報告・水分摂取量・夜間覚醒・排尿・脱水・むせ・引き継ぎ・後輩を育てる・根拠・記録を基にしたケアの改善', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000009, 800000029, NULL, 'markdown_book', 'T9. Hướng tới Điều dưỡng viên quốc gia (介護福祉士を目指して)', '# Sách thực tập sinh điều dưỡng · T9. Hướng tới Điều dưỡng viên quốc gia (介護福祉士を目指して)

> **Mục tiêu nhân vật:** Ngọc (27 tuổi, tháng 12 năm 2028) — đặt mục tiêu thi 介護福祉士国家試験, tìm hiểu lộ trình rõ ràng: 実務者研修, điều kiện thực tế, và visa「介護」dài hạn. Yamamoto và Mai-san giải thích chi tiết, giúp Ngọc hiểu con đường phía trước.

---

## Bối cảnh

Tháng 12 năm 2028. Cuối năm — 忘年会 sắp đến, nhưng Ngọc đang nghĩ đến điều lớn hơn bữa tiệc. Cô đã hoàn thành 実務者研修 từ tháng 10, sắp đủ 3 năm kinh nghiệm thực tế vào tháng 4 năm 2029. Cánh cửa của kỳ thi 介護福祉士国家試験 đang mở ra. Trong chương này, Ngọc hỏi rõ từng bước: điều kiện thi, cách đăng ký, nội dung thi, và quan trọng nhất — visa「介護」sẽ thay đổi cuộc đời cô thế nào.

> **Chú thích:** Thông tin về lộ trình thi 介護福祉士 (điều kiện 3 năm thực tế + 実務者研修), visa「介護」(không giới hạn thời gian lưu trú, bảo lãnh vợ/chồng và con), và chế độ パート合格制度 được mô tả theo quy định tại thời điểm 2028-2029 trong truyện.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 9:30, Ngọc hỏi Yamamoto về điều kiện thi

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>し<ruby>聞<rt>き</rt></ruby>いてもいいですか。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>国家試験<rt>こっかしけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っているんですが。<br>*(Chị Yamamoto, cháu hỏi chút được không ạ. Cháu đang muốn thi kỳ thi quốc gia Điều dưỡng viên Phúc lợi ạ.)* |
| Yamamoto | あら、<ruby>本気<rt>ほんき</rt></ruby>ですか。いい<ruby>目標<rt>もくひょう</rt></ruby>ですね。(gật đầu) まず<ruby>受験資格<rt>じゅけんしかく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。<ruby>実務経験<rt>じつむけいけん</rt></ruby>は<ruby>何年<rt>なんねん</rt></ruby>になりますか?<br>*(Ồ, em nghiêm túc đấy. Mục tiêu tốt nhỉ. Đầu tiên hãy kiểm tra điều kiện dự thi. Em có bao nhiêu năm kinh nghiệm thực tế rồi?)* |
| Ngọc | 2026<ruby>年<rt>ねん</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>から<ruby>働<rt>はたら</rt></ruby>いていますので、<ruby>来年<rt>らいねん</rt></ruby>の4<ruby>月<rt>がつ</rt></ruby>でちょうど3<ruby>年<rt>ねん</rt></ruby>になります。<br>*(Cháu bắt đầu làm từ tháng 4 năm 2026, nên tháng 4 năm sau sẽ đúng 3 năm ạ.)* |
| Yamamoto | <ruby>国家試験<rt>こっかしけん</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>ですから、<ruby>来年<rt>らいねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>は3<ruby>年<rt>ねん</rt></ruby>に<ruby>満<rt>み</rt></ruby>たないですね。でも<ruby>次<rt>つぎ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>...つまり2030<ruby>年<rt>ねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>なら<ruby>条件<rt>じょうけん</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>っています。<br>*(Kỳ thi quốc gia mỗi năm vào tháng 1, nên kỳ tháng 1 năm sau chưa đủ 3 năm. Nhưng kỳ tiếp theo — tức tháng 1 năm 2030 — điều kiện đủ rồi đấy.)* |
| Ngọc | 2030<ruby>年<rt>ねん</rt></ruby>...。あと1<ruby>年以上<rt>ねんいじょう</rt></ruby>ですね。でも<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>今<rt>いま</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めたいです。<br>*(Năm 2030... Còn hơn 1 năm nữa nhỉ. Nhưng cháu muốn bắt đầu chuẩn bị từ bây giờ ạ.)* |
| Yamamoto | その<ruby>姿勢<rt>しせい</rt></ruby>、<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>早<rt>はや</rt></ruby>ければ<ruby>早<rt>はや</rt></ruby>いほどいい。<br>*(Thái độ đó quan trọng lắm. Càng sớm càng tốt.)* |

---

## Tình huống 2 — Phòng họp nhân viên · 10:30, Yamamoto giải thích điều kiện 実務者研修

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>受験資格<rt>じゅけんしかく</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>は2つあります。1つ目は3<ruby>年<rt>ねん</rt></ruby>の<ruby>実務経験<rt>じつむけいけん</rt></ruby>。2つ目は「<ruby>介護職員実務者研修<rt>かいごしょくいんじつむしゃけんしゅう</rt></ruby>」の<ruby>修了<rt>しゅうりょう</rt></ruby>です。<br>*(Điều kiện dự thi có 2 điểm. Thứ nhất là 3 năm kinh nghiệm thực tế. Thứ hai là hoàn thành "Khóa đào tạo thực hành viên chăm sóc điều dưỡng".)* |
| Ngọc | <ruby>実務者研修<rt>じつむしゃけんしゅう</rt></ruby>は、<ruby>去年<rt>きょねん</rt></ruby>10<ruby>月<rt>がつ</rt></ruby>に<ruby>終<rt>お</rt></ruby>わりました。<ruby>修了証<rt>しゅうりょうしょう</rt></ruby>も<ruby>持<rt>も</rt></ruby>っています。<br>*(Cháu đã hoàn thành Khóa thực hành viên vào tháng 10 năm ngoái ạ. Và có giấy chứng nhận hoàn thành rồi.)* |
| Yamamoto | それは<ruby>完璧<rt>かんぺき</rt></ruby>ですね。あとは<ruby>実務経験<rt>じつむけいけん</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>えば、<ruby>受験<rt>じゅけん</rt></ruby>できます。<ruby>試験<rt>しけん</rt></ruby>の<ruby>申し込み<rt>もうしこみ</rt></ruby>は<ruby>例年<rt>れいねん</rt></ruby>8<ruby>月<rt>がつ</rt></ruby>ごろですよ。<br>*(Vậy thì hoàn hảo rồi. Khi nào đủ kinh nghiệm thực tế thì em có thể đăng ký thi. Đăng ký thi thường vào khoảng tháng 8 hằng năm đấy.)* |
| Ngọc | 8<ruby>月<rt>がつ</rt></ruby>ですね。メモします。<ruby>試験<rt>しけん</rt></ruby>の<ruby>科目<rt>かもく</rt></ruby>はどんなものがありますか?<br>*(Tháng 8 nhỉ. Cháu ghi lại. Kỳ thi có những môn nào ạ?)* |
| Yamamoto | <ruby>全部<rt>ぜんぶ</rt></ruby>で12<ruby>科目<rt>かもく</rt></ruby>あります。「<ruby>人間<rt>にんげん</rt></ruby>と<ruby>社会<rt>しゃかい</rt></ruby>」「<ruby>介護<rt>かいご</rt></ruby>」「<ruby>こころとからだのしくみ<rt>こころとからだのしくみ</rt></ruby>」「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」などです。<ruby>問題数<rt>もんだいすう</rt></ruby>は<ruby>合計<rt>ごうけい</rt></ruby>125<ruby>問<rt>もん</rt></ruby>です。<br>*(Tổng cộng có 12 môn. "Con người và Xã hội", "Điều dưỡng", "Cơ chế tâm thể", "Chăm sóc y tế" v.v. Tổng số câu hỏi là 125 câu.)* |
| Ngọc | 125<ruby>問<rt>もん</rt></ruby>...。<ruby>難<rt>むずか</rt></ruby>しそうですが、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(125 câu... Nghe có vẻ khó, nhưng cháu sẽ cố gắng ạ.)* |

---

## Tình huống 3 — Phòng 生活相談員 · 11:00, Mai-san giải thích visa「介護」

| Vai | Lời thoại |
|---|---|
| Ngọc | マイさん、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>取<rt>と</rt></ruby>ったら、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>はどうなりますか?<br>*(Mai-san ơi, nếu cháu đỗ Điều dưỡng viên Phúc lợi thì tư cách lưu trú sẽ thế nào ạ?)* |
| Mai-san | それ、とても<ruby>大事<rt>だいじ</rt></ruby>な<ruby>質問<rt>しつもん</rt></ruby>ですよ。「<ruby>介護<rt>かいご</rt></ruby>」という<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>できます。これは<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>を<ruby>持<rt>も</rt></ruby>つ<ruby>外国人<rt>がいこくじん</rt></ruby>に<ruby>認<rt>みと</rt></ruby>められた<ruby>専用<rt>せんよう</rt></ruby>ビザです。<br>*(Câu hỏi rất quan trọng đấy. Em có thể chuyển sang tư cách lưu trú "Kaigo". Đây là visa dành riêng cho người nước ngoài có chứng chỉ Điều dưỡng viên Phúc lợi.)* |
| Ngọc | <ruby>特定技能<rt>とくていぎのう</rt></ruby>と<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Khác gì so với Đặc định kỹ năng ạ?)* |
| Mai-san | <ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>は<ruby>最長<rt>さいちょう</rt></ruby>5<ruby>年<rt>ねん</rt></ruby>の<ruby>上限<rt>じょうげん</rt></ruby>があります。でも「<ruby>介護<rt>かいご</rt></ruby>」ビザは<ruby>上限<rt>じょうげん</rt></ruby>がありません。<ruby>更新<rt>こうしん</rt></ruby>し<ruby>続<rt>つづ</rt></ruby>けることができます。<br>*(Đặc định kỹ năng 1 hào có giới hạn tối đa 5 năm. Nhưng visa "Kaigo" thì không có giới hạn. Em có thể gia hạn liên tục.)* |
| Ngọc | <ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶことはできますか？<br>*(Em có thể bảo lãnh gia đình sang không ạ?)* |
| Mai-san | <ruby>配偶者<rt>はいぐうしゃ</rt></ruby>と<ruby>子<rt>こ</rt></ruby>どもを<ruby>呼<rt>よ</rt></ruby>び<ruby>寄<rt>よ</rt></ruby>せることができます。<ruby>特定技能<rt>とくていぎのう</rt></ruby>ではできなかったことです。<br>*(Em có thể bảo lãnh vợ/chồng và con. Điều này không thể làm được với Đặc định kỹ năng.)* |
| Ngọc | (im lặng một lúc) ...すごいですね。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>は、ただの<ruby>資格<rt>しかく</rt></ruby>じゃないんですね。<br>*(... Thật đáng kể nhỉ. Điều dưỡng viên Phúc lợi không chỉ là chứng chỉ đơn thuần nhỉ.)* |
| Mai-san | そうです。<ruby>生活<rt>せいかつ</rt></ruby>を<ruby>変<rt>か</rt></ruby>える<ruby>資格<rt>しかく</rt></ruby>です。<br>*(Đúng vậy. Đó là chứng chỉ thay đổi cuộc sống.)* |

---

## Tình huống 4 — Hành lang · 13:00, chăm sóc ông Tanaka, ông hỏi Ngọc đang tính gì

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>午後<rt>ごご</rt></ruby>のリハビリがありますよ。<ruby>準備<rt>じゅんび</rt></ruby>しましょうか?<br>*(Ông Tanaka, hôm nay có tập phục hồi buổi chiều đấy. Mình chuẩn bị nhé?)* |
| Ông Tanaka | ああ。(Ngọc dừng tay, nhìn ra cửa sổ) お前、<ruby>最近<rt>さいきん</rt></ruby>なんか<ruby>考<rt>かんが</rt></ruby>えてる<ruby>顔<rt>かお</rt></ruby>してるな。<br>*(Ừ. Mày dạo này hay có cái mặt đang suy nghĩ gì đó nhỉ.)* |
| Ngọc | (ngạc nhiên) え、そうですか? <ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>取<rt>と</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>っていて...。<br>*(Ồ, vậy ạ? Cháu đang nghĩ đến việc lấy chứng chỉ Điều dưỡng viên Phúc lợi...)* |
| Ông Tanaka | <ruby>介護福祉士<rt>かいごふくしし</rt></ruby>か。むずかしいぞ。<ruby>受<rt>う</rt></ruby>かるか?<br>*(Điều dưỡng viên Phúc lợi à. Khó đấy. Mày đỗ được không?)* |
| Ngọc | (mỉm cười) <ruby>分<rt>わ</rt></ruby>かりません。でも<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Cháu không biết ạ. Nhưng cháu sẽ thử.)* |
| Ông Tanaka | ...<ruby>まあ<rt>まあ</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>れ。<br>*(... Thôi thì cố lên.)* |
| Ngọc | (nhẹ nhàng, tiếp tục hỗ trợ) ありがとうございます、<ruby>田中<rt>たなか</rt></ruby>さん。<ruby>田中<rt>たなか</rt></ruby>さんのことをもっとよくケアできるようになるためにも、もっと<ruby>勉強<rt>べんきょう</rt></ruby>したいんです。<br>*(Cảm ơn ông ạ. Cháu cũng muốn học thêm để có thể chăm sóc ông tốt hơn nữa.)* |

---

## Tình huống 5 — Phòng nghỉ nhân viên · 14:30, Yamamoto giải thích về パート合格制度

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>国家試験<rt>こっかしけん</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>できなかったら<ruby>どうなりますか<rt>どうなりますか</rt></ruby>?<br>*(Chị Yamamoto, nếu cháu trượt kỳ thi quốc gia thì sẽ thế nào ạ?)* |
| Yamamoto | <ruby>来年<rt>らいねん</rt></ruby>また<ruby>受<rt>う</rt></ruby>けることができますよ。それと、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>には「パート<ruby>合格制度<rt>ごうかくせいど</rt></ruby>」があります。<br>*(Em có thể thi lại năm sau. Ngoài ra, kỳ thi Điều dưỡng viên Phúc lợi có "Chế độ đỗ từng phần".)* |
| Ngọc | パート<ruby>合格<rt>ごうかく</rt></ruby>...?<br>*(Đỗ từng phần...?)* |
| Yamamoto | 12<ruby>科目<rt>かもく</rt></ruby>のうち、<ruby>合格<rt>ごうかく</rt></ruby>した<ruby>科目<rt>かもく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>次回<rt>じかい</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>に<ruby>持<rt>も</rt></ruby>ち<ruby>越<rt>こ</rt></ruby>せます。<ruby>不合格<rt>ふごうかく</rt></ruby>になった<ruby>科目<rt>かもく</rt></ruby>だけ<ruby>受<rt>う</rt></ruby>け<ruby>直<rt>なお</rt></ruby>せばいいんです。<br>*(Trong 12 môn, các môn đã đỗ được bảo lưu sang kỳ thi lần sau. Chỉ cần thi lại những môn chưa đỗ thôi.)* |
| Ngọc | それは<ruby>安心<rt>あんしん</rt></ruby>しました。<ruby>全部<rt>ぜんぶ</rt></ruby>やり<ruby>直<rt>なお</rt></ruby>しじゃないんですね。<br>*(Nghe vậy cháu yên tâm hơn rồi. Không phải làm lại từ đầu hết nhỉ.)* |
| Yamamoto | そうです。<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>の<ruby>延長<rt>えんちょう</rt></ruby>も<ruby>申請<rt>しんせい</rt></ruby>できますよ。<ruby>焦<rt>あせ</rt></ruby>らなくていいですよ。<br>*(Đúng vậy. Tư cách lưu trú cũng được gia hạn đối ứng. Em không cần vội đâu.)* |

---

## Tình huống 6 — Phòng nghỉ nhân viên · 15:30, Ngọc hỏi về nội dung ôn thi

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>合格<rt>ごうかく</rt></ruby>するには<ruby>何点<rt>なんてん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Chị Yamamoto, cần bao nhiêu điểm để đỗ ạ?)* |
| Yamamoto | <ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>毎年<rt>まいとし</rt></ruby><ruby>変<rt>か</rt></ruby>わりますが、だいたい125<ruby>問<rt>もん</rt></ruby>中60%<ruby>以上<rt>いじょう</rt></ruby>が<ruby>目安<rt>めやす</rt></ruby>です。ただし、<ruby>各<rt>かく</rt></ruby><ruby>科目<rt>かもく</rt></ruby>ごとに<ruby>最低点<rt>さいていてん</rt></ruby>があって、1<ruby>科目<rt>かもく</rt></ruby>でも<ruby>基準点<rt>きじゅんてん</rt></ruby>を<ruby>下回<rt>したまわ</rt></ruby>ると<ruby>不合格<rt>ふごうかく</rt></ruby>になります。<br>*(Điểm đỗ thay đổi mỗi năm, nhưng khoảng 60% trong 125 câu là mốc tham khảo. Tuy nhiên mỗi môn đều có điểm tối thiểu, một môn nào dưới điểm chuẩn là trượt.)* |
| Ngọc | つまり、<ruby>苦手<rt>にがて</rt></ruby>な<ruby>科目<rt>かもく</rt></ruby>を<ruby>作<rt>つく</rt></ruby>らないことが<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Tức là không được để môn nào thành điểm yếu đúng không ạ.)* |
| Yamamoto | そうです。<ruby>特<rt>とく</rt></ruby>に「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」は<ruby>現場<rt>げんば</rt></ruby>では<ruby>あまり<rt>あまり</rt></ruby><ruby>使<rt>つか</rt></ruby>わない<ruby>内容<rt>ないよう</rt></ruby>も<ruby>多<rt>おお</rt></ruby>いので、<ruby>しっかり<rt>しっかり</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>してください。<br>*(Đúng vậy. Đặc biệt "Chăm sóc y tế" có nhiều nội dung không hay dùng ở thực tế, nên cần học kỹ.)* |
| Ngọc | <ruby>医療的<rt>いりょうてき</rt></ruby>ケア...。<ruby>喀痰<rt>かくたん</rt></ruby><ruby>吸引<rt>きゅういん</rt></ruby>や<ruby>経管栄養<rt>けいかんえいよう</rt></ruby>ですね。<ruby>実務者研修<rt>じつむしゃけんしゅう</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>し<ruby>習<rt>なら</rt></ruby>いました。<br>*(Chăm sóc y tế... Hút đờm và nuôi ăn qua ống đúng không ạ. Cháu đã học một chút trong Khóa thực hành viên ạ.)* |
| Yamamoto | いい<ruby>基礎<rt>きそ</rt></ruby>がありますね。そこから<ruby>深<rt>ふか</rt></ruby>めれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Nền tảng tốt rồi đấy. Từ đó mà đào sâu thêm thì ổn thôi.)* |

---

## Tình huống 7 — Phòng 生活相談員 · 16:00, Mai-san cho mượn sách ôn thi

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、これ。(đưa một cuốn sách) <ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>参考書<rt>さんこうしょ</rt></ruby>です。<ruby>去年<rt>きょねん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>した<ruby>スタッフ<rt>すたっふ</rt></ruby>から<ruby>もらった<rt>もらった</rt></ruby>ものですが、よかったら<ruby>使<rt>つか</rt></ruby>ってください。<br>*(Nguyễn, đây. — đưa quyển sách — Sách ôn thi Điều dưỡng viên Phúc lợi. Tôi nhận từ nhân viên đỗ năm ngoái, em dùng được thì cứ dùng nhé.)* |
| Ngọc | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか! ありがとうございます。(cầm sách, lật xem) <ruby>分厚<rt>ぶあつ</rt></ruby>いですね...<ruby>頑張<rt>がんば</rt></ruby>らないと。<br>*(Ồ, thật ạ! Cảm ơn ạ. — cầm sách, giở xem — Dày quá... cháu phải cố mới được.)* |
| Mai-san | (cười) <ruby>全部<rt>ぜんぶ</rt></ruby>を<ruby>一度<rt>いちど</rt></ruby>に<ruby>読<rt>よ</rt></ruby>もうとしないこと。<ruby>科目<rt>かもく</rt></ruby>ごとに<ruby>分<rt>わ</rt></ruby>けて、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>進めていく<rt>すすめていく</rt></ruby>のがコツです。<br>*(Cười. Đừng cố đọc hết cùng một lúc. Chia theo từng môn, từng bước tiến dần — đó là bí quyết.)* |
| Ngọc | <ruby>科目<rt>かもく</rt></ruby>ごとに<ruby>ノート<rt>のーと</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>っています。<ruby>現場<rt>げんば</rt></ruby>での<ruby>経験<rt>けいけん</rt></ruby>と<ruby>結びつけながら<rt>むすびつけながら</rt></ruby>。<br>*(Cháu đang nghĩ sẽ làm vở ôn theo từng môn. Vừa liên kết với kinh nghiệm thực tế.)* |
| Mai-san | それ、とても<ruby>いい<rt>いい</rt></ruby>やり<ruby>方<rt>かた</rt></ruby>です。<ruby>実務<rt>じつむ</rt></ruby>と<ruby>試験<rt>しけん</rt></ruby>をつなぐことが<ruby>合格<rt>ごうかく</rt></ruby>への<ruby>近道<rt>ちかみち</rt></ruby>ですよ。<br>*(Cách đó rất tốt. Nối thực hành với thi cử là con đường ngắn nhất để đỗ đấy.)* |

---

## Tình huống 8 — Hành lang sau buổi họp · 17:00, Đức nghe chuyện Ngọc thi

| Vai | Lời thoại |
|---|---|
| Đức | グエンさん、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すって<ruby>本当<rt>ほんとう</rt></ruby>か? <ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>いたんだが。<br>*(Nguyễn, nghe nói em muốn thi Điều dưỡng viên Phúc lợi? Anh nghe Yamamoto nói.)* |
| Ngọc | はい。まだ1<ruby>年以上<rt>ねんいじょう</rt></ruby>ありますが、<ruby>今<rt>いま</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng. Còn hơn 1 năm nữa nhưng cháu muốn bắt đầu ngay từ bây giờ ạ.)* |
| Đức | <ruby>いいじゃないか<rt>いいじゃないか</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>は<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>は<ruby>まだ<rt>まだ</rt></ruby>だが、<ruby>応援<rt>おうえん</rt></ruby>するよ。<ruby>過去問<rt>かこもん</rt></ruby>は<ruby>早<rt>はや</rt></ruby>めにやるといい。<br>*(Tốt đấy. Anh chưa có chứng chỉ đó, nhưng anh ủng hộ em. Em nên làm đề cũ sớm thôi.)* |
| Ngọc | ドックさんはやらないんですか?<br>*(Anh không thi ạ?)* |
| Đức | <ruby>俺<rt>おれ</rt></ruby>はまだタイミングじゃない。でもいつかは<ruby>考<rt>かんが</rt></ruby>えてるよ。(mỉm cười) <ruby>お前<rt>おまえ</rt></ruby>が<ruby>先<rt>さき</rt></ruby>に<ruby>取<rt>と</rt></ruby>ったら、おごってもらうからな。<br>*(Anh... chưa phải thời điểm. Nhưng anh có nghĩ đến lúc nào đó. Mày đỗ trước thì mày mời anh nhé.)* |
| Ngọc | (cười) はい、<ruby>絶対<rt>ぜったい</rt></ruby>におごります。<br>*(Vâng, cháu nhất định mời ạ.)* |

---

## Tình huống 9 — Phòng ăn · bữa tối, 忘年会 chuẩn bị

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>今夜<rt>こんや</rt></ruby>の<ruby>忘年会<rt>ぼうねんかい</rt></ruby>、<ruby>楽<rt>たの</rt></ruby>しみだね。<br>*(Nguyễn, tối nay tiệc cuối năm, mong quá nhỉ.)* |
| Ngọc | うん。でも<ruby>今年<rt>ことし</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>もできたし、<ruby>何<rt>なん</rt></ruby>か<ruby>気持<rt>きも</rt></ruby>ちが<ruby>違<rt>ちが</rt></ruby>う。<br>*(Ừ. Nhưng năm nay cũng đặt được mục tiêu cho năm sau rồi, nên cảm giác khác hẳn.)* |
| Hương | <ruby>介護福祉士<rt>かいごふくしし</rt></ruby>のこと?<br>*(Chuyện Điều dưỡng viên Phúc lợi à?)* |
| Ngọc | うん。ビザのことも、<ruby>将来<rt>しょうらい</rt></ruby>のことも、ちゃんと<ruby>見<rt>み</rt></ruby>えてきた<ruby>気<rt>き</rt></ruby>がする。<br>*(Ừ. Chuyện visa, chuyện tương lai, mình thấy mọi thứ rõ hơn rồi.)* |
| Hương | ヒュオンも<ruby>応援<rt>おうえん</rt></ruby>するよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しよう、<ruby>2人<rt>ふたり</rt></ruby>で。<br>*(Hương cũng ủng hộ. Hai đứa mình cùng ôn nhé.)* |
| Ngọc | (ấm lòng) <ruby>ありがとう<rt>ありがとう</rt></ruby>、ヒュオン。<br>*(Cảm ơn Hương.)* |

---

## Tình huống 10 — Bàn tiệc 忘年会 · tối, nhân viên nói chuyện về năm cũ

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>今年<rt>ことし</rt></ruby>も<ruby>一年<rt>いちねん</rt></ruby>、<ruby>みんなお疲れさまでした<rt>みんなおつかれさまでした</rt></ruby>。<ruby>来年<rt>らいねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người vất vả cả năm rồi. Năm sau cũng mong mọi người nhé.)* |
| Nhân viên | <ruby>お疲れさまでした<rt>おつかれさまでした</rt></ruby>!<br>*(Mọi người vất vả rồi!)* |
| Yamamoto | (nói riêng với Ngọc) グエンさん、<ruby>来年<rt>らいねん</rt></ruby>は<ruby>大事<rt>だいじ</rt></ruby>な<ruby>年<rt>とし</rt></ruby>になりますね。<ruby>応援<rt>おうえん</rt></ruby>していますよ。<br>*(Nguyễn, năm sau sẽ là năm quan trọng nhỉ. Chị ủng hộ em đấy.)* |
| Ngọc | ありがとうございます。<ruby>来年<rt>らいねん</rt></ruby>こそ、<ruby>ちゃんと<rt>ちゃんと</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>して<ruby>臨<rt>のぞ</rt></ruby>みます。<br>*(Cảm ơn chị. Năm sau cháu sẽ chuẩn bị đàng hoàng rồi mới đi thi ạ.)* |
| Mai-san | グエンさん、<ruby>施設<rt>しせつ</rt></ruby>も<ruby>全力<rt>ぜんりょく</rt></ruby>でサポートします。<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Nguyễn, cơ sở sẽ hỗ trợ hết sức. Cứ hỏi không ngại nhé.)* |
| Ngọc | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。(cúi đầu ấm lòng) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng, cháu nhờ mọi người ạ. — cúi đầu ấm lòng — Cảm ơn mọi người thật sự ạ.)* |

---

## Tình huống 11 — Trên đường về ký túc sau 忘年会 · 22:00, Ngọc và Hương

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>楽<rt>たの</rt></ruby>しかったね。でも<ruby>なんか<rt>なんか</rt></ruby><ruby>顔<rt>かお</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>う。<ruby>何<rt>なに</rt></ruby>か<ruby>考<rt>かんが</rt></ruby>えてる?<br>*(Nguyễn, hôm nay vui nhỉ. Nhưng nét mặt Ngọc hơi khác. Đang nghĩ gì vậy?)* |
| Ngọc | ヒュオン、「<ruby>介護<rt>かいご</rt></ruby>」ビザのこと<ruby>知<rt>し</rt></ruby>ってた? <ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>取<rt>と</rt></ruby>ったら、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べるんだよ。<br>*(Hương, em có biết visa "Kaigo" không? Đỗ Điều dưỡng viên Phúc lợi thì có thể bảo lãnh gia đình sang đấy.)* |
| Hương | え...<ruby>本当<rt>ほんとう</rt></ruby>に? <ruby>それ、すごく大事<rt>それ、すごくだいじ</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>じゃないか。<br>*(Ồ... Thật à? Đó là chuyện quan trọng lắm nhỉ.)* |
| Ngọc | うん。<ruby>まだ<rt>まだ</rt></ruby><ruby>先<rt>さき</rt></ruby>のことだけど...。<ruby>母<rt>はは</rt></ruby>のことを<ruby>考<rt>かんが</rt></ruby>えた。<br>*(Ừ. Dù còn xa... Nhưng mình nghĩ đến mẹ.)* |
| Hương | (nhẹ nhàng) ゴックのお<ruby>母<rt>かあ</rt></ruby>さん、<ruby>元気<rt>げんき</rt></ruby>だといいね。<br>*(Mong mẹ Ngọc khỏe mạnh nhé.)* |
| Ngọc | うん。だから<ruby>頑張<rt>がんば</rt></ruby>りたいんだ。<ruby>来年<rt>らいねん</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう、ヒュオン。<br>*(Ừ. Nên mình muốn cố thật sự. Năm sau, mình cùng cố nhé Hương.)* |

---

## Tình huống 12 — Ký túc xá · 23:00, gọi điện về Cần Thơ (tiếng Việt)

> Scene tiếng Việt — tuyến gia đình, đặt mục tiêu và cảm xúc thật.

| Vai | Lời thoại |
|---|---|
| Mẹ | (qua điện thoại) Ngọc ơi, khuya rồi sao còn gọi? |
| Ngọc | (tiếng Việt) Con nhớ mẹ. Hôm nay công ty tiệc cuối năm, vui nhưng mà sau đó con cứ nghĩ đến mẹ hoài. |
| Mẹ | Con ăn uống có đầy đủ không? Lạnh không? |
| Ngọc | (tiếng Việt) Dạ mẹ, con ổn. Mẹ ơi, con có tin vui muốn kể. Con đang lên kế hoạch thi chứng chỉ điều dưỡng quốc gia Nhật — gọi là 介護福祉士. Kỳ thi vào tháng 1 năm 2030. |
| Mẹ | Ừa, rồi sao con? |
| Ngọc | (tiếng Việt) Nếu con đỗ, con được visa ở lại Nhật mà không bị giới hạn thời gian. Và con được phép... bảo lãnh gia đình sang. Vợ chồng hoặc con cái thôi mẹ, không phải bố mẹ. Nhưng mà... tương lai rộng hơn nhiều. |
| Mẹ | (im lặng) Vậy... con tính ở Nhật lâu dài à? |
| Ngọc | (tiếng Việt) Dạ mẹ... con chưa biết hết. Nhưng con muốn có lựa chọn. Chứ giờ con biết mình phải về khi hết visa — cái đó nặng lắm mẹ. |
| Mẹ | Mẹ hiểu. Con cứ thi đi. Mẹ ở đây mạnh khỏe, đừng lo. |
| Ngọc | Dạ. Cảm ơn mẹ. Con sẽ gọi lại tuần sau. Mẹ ngủ sớm nha. |
| Mẹ | Ừ. Cố lên con. Mẹ thương con nhiều. |

---

## Đọng lại chương 9

Ngọc đặt mục tiêu rõ ràng: thi 介護福祉士国家試験 vào tháng 1 năm 2030. Cô hiểu đủ điều kiện (3 năm thực tế + 実務者研修), biết cấu trúc thi (12 môn, 125 câu, điểm tối thiểu từng môn), biết chế độ bảo hiểm khi lỡ trượt (パート合格制度), và quan trọng nhất — hiểu visa「介護」là cánh cửa mở ra cuộc sống mà cô muốn xây dựng tại Nhật. Lần đầu tiên sau 2,5 năm, Ngọc cảm thấy **tương lai có hình dạng**.

> Từ vựng & mẫu câu chương này: 介護福祉士・国家試験・受験資格・実務経験・介護職員実務者研修・修了証・在留資格「介護」・家族呼び寄せ・配偶者・パート合格制度・科目免除・忘年会・参考書・過去問・12科目・125問・基準点・医療的ケア・喀痰吸引・経管栄養', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000010, 800000029, NULL, 'markdown_book', 'T10. Đường tới thi quốc gia (国家試験への道)', '# Sách thực tập sinh điều dưỡng · T10. Đường tới thi quốc gia (国家試験への道)

> **Mục tiêu nhân vật:** Ngọc (27 tuổi, tháng 1 năm 2029) — bước vào giai đoạn ôn thi 介護福祉士国家試験. Cô và Hương ôn 過去問 cùng nhau, xen kẽ công việc chăm sóc thực tế tại ひだまり苑. Đức cổ vũ. Áp lực thật, nhưng nhìn ông Tanaka mỗi ngày nhắc cô lý do mình làm nghề này.

---

## Bối cảnh

Tháng 1 năm 2029. Ngọc mới đăng ký thi, kỳ thi sẽ diễn ra tháng 1 năm 2030 — còn đúng 1 năm. Cô bắt đầu ôn tập theo kế hoạch: buổi tối sau ca làm, cuối tuần, và tranh thủ giờ nghỉ. Hương cùng ôn — hai người hỏi nhau, giải thích cho nhau. Đức không thi nhưng cổ vũ từ xa. Và mỗi ngày khi Ngọc chăm sóc ông Tanaka, bà Sato, bà Kato — cô nhận ra rằng những gì mình học từ sách cũng đang hiện ra trước mặt mình mỗi giờ làm.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 9:00, Ngọc ôn thi trong giờ nghỉ

| Vai | Lời thoại |
|---|---|
| Ngọc | (đọc sách ôn, ghi chép) 「<ruby>介護保険制度<rt>かいごほけんせいど</rt></ruby>」... <ruby>要介護<rt>ようかいご</rt></ruby>1から5、<ruby>要支援<rt>ようしえん</rt></ruby>1と2...<ruby>区分<rt>くぶん</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Chế độ bảo hiểm điều dưỡng... Cần điều dưỡng 1 đến 5, Cần hỗ trợ 1 và 2... Xem lại phân loại một lần nữa.)* |
| Yamamoto | (nhìn qua) グエンさん、<ruby>勉強<rt>べんきょう</rt></ruby>していますね。<ruby>今<rt>いま</rt></ruby>どの<ruby>科目<rt>かもく</rt></ruby>ですか?<br>*(Nguyễn, em đang học đấy. Đang ôn môn gì vậy?)* |
| Ngọc | 「<ruby>社会<rt>しゃかい</rt></ruby>の<ruby>理解<rt>りかい</rt></ruby>」です。<ruby>介護保険<rt>かいごほけん</rt></ruby>の<ruby>区分<rt>くぶん</rt></ruby>が<ruby>毎回<rt>まいかい</rt></ruby>こんがらがってしまって。<br>*(Môn "Hiểu xã hội" ạ. Phân loại bảo hiểm điều dưỡng cứ bị lẫn lộn mãi.)* |
| Yamamoto | <ruby>実際<rt>じっさい</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>要介護<rt>ようかいご</rt></ruby>3、<ruby>鈴木<rt>すずき</rt></ruby>さんは<ruby>要介護<rt>ようかいご</rt></ruby>2ですよね。<ruby>現場<rt>げんば</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>当<rt>あ</rt></ruby>てはめると<ruby>覚<rt>おぼ</rt></ruby>えやすいですよ。<br>*(Thực tế ông Tanaka là Cần điều dưỡng 3, ông Suzuki là Cần điều dưỡng 2 đúng không. Gán với người thực tế ở đây thì dễ nhớ hơn đấy.)* |
| Ngọc | あ、そうですね! <ruby>田中<rt>たなか</rt></ruby>さんが3だから、<ruby>移動<rt>いどう</rt></ruby>に<ruby>介助<rt>かいじょ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>で、<ruby>認知<rt>にんち</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>しある...<ruby>それで<rt>それで</rt></ruby><ruby>あのレベル<rt>あのれべる</rt></ruby>なんですね。<br>*(À, đúng rồi! Ông Tanaka là 3 nên cần hỗ trợ di chuyển, có chút suy giảm nhận thức... nên mới ở mức đó nhỉ.)* |
| Yamamoto | <ruby>現場<rt>げんば</rt></ruby>と<ruby>教科書<rt>きょうかしょ</rt></ruby>を<ruby>つなげる<rt>つなげる</rt></ruby>—それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>勉強法<rt>べんきょうほう</rt></ruby>です。<br>*(Kết nối thực tế với sách giáo khoa — đó là phương pháp học tốt nhất.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 10:30, chăm sóc buổi sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今朝<rt>けさ</rt></ruby>は<ruby>体操<rt>たいそう</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>立<rt>た</rt></ruby>つ<ruby>練習<rt>れんしゅう</rt></ruby>をしましょうか。<br>*(Ông Tanaka, sáng nay trước thể dục mình tập đứng một chút nhé.)* |
| Ông Tanaka | また<ruby>立<rt>た</rt></ruby>つ<ruby>練習<rt>れんしゅう</rt></ruby>か。<ruby>今日<rt>きょう</rt></ruby>はめんどうだな。<br>*(Lại tập đứng à. Hôm nay ngại quá.)* |
| Ngọc | (bình tĩnh) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>毎日<rt>まいにち</rt></ruby>ちょっとずつ<ruby>続<rt>つづ</rt></ruby>けることが<ruby>大切<rt>たいせつ</rt></ruby>なんです。(nhẹ nhàng hỗ trợ) <ruby>今日<rt>きょう</rt></ruby>は10<ruby>秒<rt>びょう</rt></ruby>だけ。<ruby>準備<rt>じゅんび</rt></ruby>いいですか?<br>*(Ông Tanaka, việc tiếp tục từng ngày một chút là quan trọng lắm. Hôm nay chỉ 10 giây thôi. Ông sẵn sàng chưa?)* |
| Ông Tanaka | (gật đầu miễn cưỡng) ...やるよ。<br>*(... Làm thôi.)* |
| Ngọc | (hỗ trợ ông đứng lên) <ruby>はい<rt>はい</rt></ruby>、ゆっくりと。<ruby>足<rt>あし</rt></ruby>が<ruby>床<rt>ゆか</rt></ruby>についていますね。いいですよ。<br>*(Vâng, từ từ thôi. Chân đã chạm sàn rồi. Tốt lắm.)* |
| Ông Tanaka | (đứng, thở nhẹ) ...<ruby>立<rt>た</rt></ruby>ってる。<br>*(... Đứng được rồi.)* |
| Ngọc | <ruby>素晴<rt>すば</rt></ruby>らしい! <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>も<ruby>しっかり<rt>しっかり</rt></ruby><ruby>立<rt>た</rt></ruby>てました。<ruby>記録<rt>きろく</rt></ruby>しておきますね。<br>*(Tuyệt vời! Ông Tanaka, hôm nay cũng đứng vững rồi. Cháu ghi lại nhé.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 12:30, Ngọc và Hương ôn 過去問 giờ ăn trưa

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>この問題<rt>このもんだい</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>やろう<rt>やろう</rt></ruby>。「<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>への<ruby>対応<rt>たいおう</rt></ruby>として<ruby>適切<rt>てきせつ</rt></ruby>なものを<ruby>選<rt>えら</rt></ruby>べ」だよ。<br>*(Nguyễn, cùng làm câu này. "Chọn phương án ứng xử phù hợp với người mắc chứng mất trí nhớ".)* |
| Ngọc | (đọc lựa chọn) ...AとCが<ruby>間違<rt>まちが</rt></ruby>ってる。Aは「<ruby>間違<rt>まちが</rt></ruby>いを<ruby>指摘<rt>してき</rt></ruby>する」—それはダメ。<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>方<rt>かた</rt></ruby>の<ruby>現実<rt>げんじつ</rt></ruby>を<ruby>否定<rt>ひてい</rt></ruby>したらいけない。<br>*(A và C sai. A là "chỉ ra lỗi sai" — không được. Không được phủ nhận thực tế của người mắc chứng mất trí nhớ.)* |
| Hương | じゃあ<ruby>正解<rt>せいかい</rt></ruby>はB? 「その<ruby>方<rt>かた</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>め、<ruby>感情<rt>かんじょう</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>う」か。<br>*(Vậy đáp án là B? "Tiếp nhận lời nói của người đó, đồng cảm với cảm xúc của họ"?)* |
| Ngọc | そう。これ、<ruby>バリデーション<rt>ばりでーしょん</rt></ruby>の<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>に<ruby>つながっているよ<rt>つながっているよ</rt></ruby>。<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>にやってきたこと。<br>*(Đúng. Đây liên kết với cách nghĩ của Validation đấy. Cái mình đã thực hiện cùng bà Sato.)* |
| Hương | <ruby>現場<rt>げんば</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>があると、<ruby>問題<rt>もんだい</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいね。<br>*(Có kinh nghiệm thực tế thì hiểu ý nghĩa câu hỏi dễ hơn nhỉ.)* |
| Ngọc | うん。でも「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」は<ruby>現場<rt>げんば</rt></ruby>でやらないことが<ruby>多<rt>おお</rt></ruby>くて...<ruby>そっち<rt>そっち</rt></ruby>が<ruby>怖<rt>こわ</rt></ruby>い。<br>*(Ừ. Nhưng "Chăm sóc y tế" có nhiều thứ không làm ở thực tế... Phần đó mình sợ hơn.)* |

---

## Tình huống 4 — Phòng sinh hoạt · 14:00, chăm sóc bà Sato và quan sát nhận thức

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>もいいお<ruby>天気<rt>てんき</rt></ruby>ですね。<ruby>窓<rt>まど</rt></ruby>から<ruby>見<rt>み</rt></ruby>てみましょうか。<br>*(Bà Sato, hôm nay thời tiết đẹp nhỉ. Mình nhìn ra cửa sổ một chút nhé.)* |
| Bà Sato | (nhìn ra ngoài) きれいね...。あら、あの<ruby>人<rt>ひと</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>?<br>*(Đẹp quá... Ồ, người kia là ai vậy?)* |
| Ngọc | <ruby>外<rt>そと</rt></ruby>で<ruby>歩<rt>ある</rt></ruby>いている<ruby>人<rt>ひと</rt></ruby>ですよ。<ruby>散歩<rt>さんぽ</rt></ruby>してるみたいですね。<br>*(Người đang đi bộ bên ngoài đó ạ. Có vẻ họ đang dạo bộ.)* |
| Bà Sato | そうか...<ruby>私<rt>わたし</rt></ruby>も<ruby>昔<rt>むかし</rt></ruby>は<ruby>よく<rt>よく</rt></ruby><ruby>歩<rt>ある</rt></ruby>いたのよ。<ruby>主人<rt>しゅじん</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Vậy à... Ngày xưa tôi cũng hay đi bộ lắm. Cùng với chồng tôi.)* |
| Ngọc | そうですか。どんなところを<ruby>歩<rt>ある</rt></ruby>かれましたか?<br>*(Vậy ạ. Ông bà đi bộ ở những đâu ạ?)* |
| Bà Sato | (mắt sáng lên) <ruby>川沿<rt>かわぞ</rt></ruby>いが<ruby>好<rt>す</rt></ruby>きだったわ。<ruby>桜<rt>さくら</rt></ruby>が<ruby>きれい<rt>きれい</rt></ruby>で。<br>*(Tôi thích đi ven sông. Hoa anh đào đẹp lắm.)* |
| Ngọc | (gật đầu, lắng nghe) それは<ruby>素敵<rt>すてき</rt></ruby>ですね。(ghi chú nhỏ trong đầu) <ruby>回想法<rt>かいそうほう</rt></ruby>が<ruby>効<rt>き</rt></ruby>いている—<ruby>試験<rt>しけん</rt></ruby>でも<ruby>出<rt>で</rt></ruby>たとこ。<br>*(Thật đẹp nhỉ. — ghi chú nhỏ trong đầu — Liệu pháp hồi tưởng đang có tác dụng — đúng cái phần trong đề thi đấy.)* |

---

## Tình huống 5 — Phòng nghỉ nhân viên · 15:30, Yamamoto hỏi tiến độ ôn thi

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はどうですか?<br>*(Nguyễn, việc học ôn thế nào rồi?)* |
| Ngọc | <ruby>社会<rt>しゃかい</rt></ruby>の<ruby>理解<rt>りかい</rt></ruby>と<ruby>介護<rt>かいご</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>は<ruby>だいぶ<rt>だいぶ</rt></ruby><ruby>分<rt>わ</rt></ruby>かってきました。でも<ruby>医療的<rt>いりょうてき</rt></ruby>ケアが<ruby>まだ<rt>まだ</rt></ruby><ruby>弱<rt>よわ</rt></ruby>いです。<br>*(Môn Hiểu xã hội và Cơ bản điều dưỡng cháu hiểu được khá rồi. Nhưng Chăm sóc y tế vẫn còn yếu ạ.)* |
| Yamamoto | <ruby>医療的<rt>いりょうてき</rt></ruby>ケアは、<ruby>吸引<rt>きゅういん</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>と「なぜそうするのか」の<ruby>理由<rt>りゆう</rt></ruby>を<ruby>セット<rt>せっと</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>いい<rt>いい</rt></ruby>ですよ。<br>*(Với Chăm sóc y tế, nếu học thủ thuật hút kết hợp với "tại sao làm vậy" thì sẽ tốt đấy.)* |
| Ngọc | 「なぜ」まで<ruby>考<rt>かんが</rt></ruby>える...。<ruby>記録<rt>きろく</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですね。<ruby>事実<rt>じじつ</rt></ruby>だけじゃなく<ruby>理由<rt>りゆう</rt></ruby>も。<br>*(Suy nghĩ đến "tại sao"... Giống như ghi chép nhỉ. Không chỉ sự thật mà cả lý do nữa.)* |
| Yamamoto | (mỉm cười) グエンさんは<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>ってきましたね。<ruby>そういう<rt>そういう</rt></ruby><ruby>力<rt>ちから</rt></ruby>が<ruby>試験<rt>しけん</rt></ruby>でも<ruby>活<rt>い</rt></ruby>きますよ。<br>*(Cách suy nghĩ của Nguyễn đã trưởng thành rồi đấy. Năng lực đó cũng sẽ phát huy trong kỳ thi đấy.)* |

---

## Tình huống 6 — Sảnh ひだまり苑 · Buổi chiều, An hỏi Ngọc về ôn thi

| Vai | Lời thoại |
|---|---|
| An | グエンさん、<ruby>国家試験<rt>こっかしけん</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>って<ruby>どこから始めたらいいですか<rt>どこからはじめたらいいですか</rt></ruby>? <ruby>私<rt>わたし</rt></ruby>も<ruby>いつか<rt>いつか</rt></ruby><ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>って。<br>*(Chị Nguyễn, ôn thi quốc gia thì nên bắt đầu từ đâu ạ? Em cũng muốn thi lúc nào đó.)* |
| Ngọc | いいですね! まず<ruby>過去問<rt>かこもん</rt></ruby>を1<ruby>年分<rt>ねんぶん</rt></ruby><ruby>解<rt>と</rt></ruby>いてみてください。<ruby>どこが<rt>どこが</rt></ruby><ruby>弱<rt>よわ</rt></ruby>いか<ruby>分<rt>わ</rt></ruby>かります。<br>*(Tốt đấy! Đầu tiên thử làm đề 1 năm xem. Em sẽ biết mình yếu chỗ nào.)* |
| An | <ruby>何年分<rt>なんねんぶん</rt></ruby>くらいやるんですか?<br>*(Cần làm đề mấy năm ạ?)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>は3<ruby>年分<rt>ねんぶん</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にしています。<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>すことでパターンが<ruby>見<rt>み</rt></ruby>えてくるから。<br>*(Cháu đặt mục tiêu 3 năm đề. Lặp đi lặp lại thì nhìn ra được quy luật đề thi.)* |
| An | グエンさん、<ruby>すごいですね<rt>すごいですね</rt></ruby>。<ruby>仕事<rt>しごと</rt></ruby>しながらどうやって<ruby>時間<rt>じかん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っているんですか?<br>*(Chị Nguyễn giỏi thật. Vừa làm vừa lấy thời gian đâu ôn vậy ạ?)* |
| Ngọc | <ruby>昼休み<rt>ひるやすみ</rt></ruby>に30<ruby>分<rt>ぷん</rt></ruby>、<ruby>夜<rt>よる</rt></ruby>に1<ruby>時間<rt>じかん</rt></ruby>。<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ。それだけです。<br>*(Giờ nghỉ trưa 30 phút, tối 1 tiếng. Mỗi ngày một chút. Chỉ vậy thôi.)* |

---

## Tình huống 7 — Hành lang · 17:00, ca bàn giao và Đức hỏi thăm

| Vai | Lời thoại |
|---|---|
| Đức | グエンさん、<ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れ。<ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はどうよ?<br>*(Nguyễn, hôm nay vất vả rồi. Ôn thi thế nào?)* |
| Ngọc | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>疲<rt>つか</rt></ruby>れるときもあります。<ruby>仕事<rt>しごと</rt></ruby>のあとに<ruby>本<rt>ほん</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>くのが<ruby>つらい日<rt>つらいひ</rt></ruby>もあって。<br>*(Thật lòng mà nói, có lúc cháu mệt lắm. Cũng có ngày sau ca làm mở sách ra thấy nặng ạ.)* |
| Đức | <ruby>そりゃ<rt>そりゃ</rt></ruby><ruby>そうだろう<rt>そうだろう</rt></ruby>。<ruby>誰<rt>だれ</rt></ruby>だって<ruby>疲<rt>つか</rt></ruby>れる。でも、やめるのか?<br>*(Dĩ nhiên rồi. Ai cũng mệt. Nhưng mày bỏ không?)* |
| Ngọc | やめません。ただ...<ruby>たまに<rt>たまに</rt></ruby><ruby>自信<rt>じしん</rt></ruby>がなくなるだけです。<br>*(Không bỏ ạ. Chỉ là... đôi lúc mất tự tin thôi.)* |
| Đức | <ruby>自信<rt>じしん</rt></ruby>は<ruby>後<rt>あと</rt></ruby>から<ruby>来<rt>く</rt></ruby>る。<ruby>今<rt>いま</rt></ruby>はただ<ruby>続<rt>つづ</rt></ruby>ければいい。<ruby>俺<rt>おれ</rt></ruby>も<ruby>技能評価試験<rt>ぎのうひょうかしけん</rt></ruby>のとき<ruby>そうだった<rt>そうだった</rt></ruby>から。<br>*(Tự tin thì đến sau. Giờ chỉ cần tiếp tục. Anh cũng vậy hồi thi đánh giá kỹ năng mà.)* |
| Ngọc | (gật đầu, ấm lòng) ありがとう、ドックさん。<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Cảm ơn anh Đức. Cháu sẽ tiếp tục ạ.)* |

---

## Tình huống 8 — Phòng ông Tanaka · 19:00, ca tối, Ngọc ở lại trực

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今夜<rt>こんや</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>夜勤<rt>やきん</rt></ruby>です。<ruby>何<rt>なに</rt></ruby>かあったらすぐ<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Ông Tanaka, tối nay cháu trực đêm. Có gì ông gọi cháu ngay nhé.)* |
| Ông Tanaka | ああ。...<ruby>勉強<rt>べんきょう</rt></ruby>してるんだって？<ruby>山本<rt>やまもと</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いたぞ。<br>*(Ừ... Nghe nói mày đang học à? Tao nghe từ Yamamoto đấy.)* |
| Ngọc | はい。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>しています。<br>*(Vâng ạ. Cháu đang hướng tới Điều dưỡng viên Phúc lợi.)* |
| Ông Tanaka | ...<ruby>頑張<rt>がんば</rt></ruby>れよ。<ruby>俺<rt>おれ</rt></ruby>は...<ruby>お前<rt>おまえ</rt></ruby>みたいな<ruby>子<rt>こ</rt></ruby>に<ruby>見<rt>み</rt></ruby>てもらいたい。<br>*(... Cố lên nhé. Tao muốn... được người như mày chăm sóc.)* |
| Ngọc | (dừng lại, xúc động) <ruby>田中<rt>たなか</rt></ruby>さん...<br>*(Ông Tanaka...)* |
| Ông Tanaka | (quay mặt đi) ...なんでもない。<ruby>寝<rt>ね</rt></ruby>る。<br>*(... Không có gì. Tao ngủ.)* |
| Ngọc | (nhẹ nhàng kéo chăn lên) <ruby>おやすみなさい<rt>おやすみなさい</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さん。<ruby>今夜<rt>こんや</rt></ruby>もそばにいますよ。<br>*(Chúc ông ngủ ngon ạ. Tối nay cháu cũng ở gần đây nhé.)* |

---

## Tình huống 9 — Phòng nghỉ nhân viên · Đêm muộn khi trực, Ngọc ôn bài trong ca trực

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, đọc nhẩm) 「<ruby>喀痰<rt>かくたん</rt></ruby><ruby>吸引<rt>きゅういん</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>...カテーテルを<ruby>鼻腔<rt>びくう</rt></ruby>に<ruby>挿入<rt>そうにゅう</rt></ruby>する<ruby>前<rt>まえ</rt></ruby>に...」(lật sách) <ruby>気道<rt>きどう</rt></ruby>の<ruby>解剖学<rt>かいぼうがく</rt></ruby>から<ruby>理解<rt>りかい</rt></ruby>しないといけない。<br>*(Quy trình hút đờm... Trước khi đưa ống thông vào khoang mũi... Phải hiểu từ giải phẫu đường thở.)* |
| Ngọc | (độc thoại nội tâm) <ruby>田中<rt>たなか</rt></ruby>さんが「<ruby>お前<rt>おまえ</rt></ruby>みたいな<ruby>子<rt>こ</rt></ruby>に<ruby>見<rt>み</rt></ruby>てもらいたい」って...。(nhìn sang hành lang phòng ông Tanaka) <ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>する。そのために<ruby>今夜<rt>こんや</rt></ruby>もやる。<br>*(Ông Tanaka nói muốn người như mày chăm sóc... Nhất định cháu phải đỗ. Vì vậy tối nay cũng học tiếp.)* |

---

## Tình huống 10 — Ký túc xá · Cuối tuần, Ngọc và Hương ôn thi cùng nhau

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>こっち<rt>こっち</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>やってみて。「<ruby>感染症<rt>かんせんしょう</rt></ruby><ruby>予防<rt>よぼう</rt></ruby>で<ruby>正しい<rt>ただしい</rt></ruby>ものは?」<br>*(Nguyễn, thử làm câu này. "Câu nào đúng về phòng ngừa bệnh truyền nhiễm?")* |
| Ngọc | (đọc lựa chọn)...B。「<ruby>手洗<rt>てあら</rt></ruby>いは<ruby>流水<rt>りゅうすい</rt></ruby>と<ruby>石けん<rt>せっけん</rt></ruby>で30<ruby>秒以上<rt>びょういじょう</rt></ruby>」。<ruby>スタンダードプリコーション<rt>すたんだーどぷりこーしょん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>だよ。<br>*(B. "Rửa tay bằng nước chảy và xà phòng trên 30 giây". Đây là cơ bản của Phòng ngừa Chuẩn.)* |
| Hương | <ruby>正解<rt>せいかい</rt></ruby>! グエンさん、<ruby>だいぶ<rt>だいぶ</rt></ruby><ruby>速<rt>はや</rt></ruby>くなったね。<br>*(Đúng rồi! Nguyễn nhanh hơn hẳn rồi nhỉ.)* |
| Ngọc | <ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>してきたからね。でも「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」の<ruby>計算問題<rt>けいさんもんだい</rt></ruby>がまだ<ruby>苦手<rt>にがて</rt></ruby>だ。<br>*(Lặp nhiều rồi mà. Nhưng câu tính toán trong "Chăm sóc y tế" vẫn còn yếu.)* |
| Hương | <ruby>一緒<rt>いっしょ</rt></ruby>にやろう。<ruby>2人<rt>ふたり</rt></ruby>で<ruby>解<rt>と</rt></ruby>けば<ruby>怖<rt>こわ</rt></ruby>くない。<br>*(Cùng làm nhé. Hai người làm thì không đáng sợ.)* |
| Ngọc | (cười) そうだね。ヒュオンがいると<ruby>心強<rt>こころづよ</rt></ruby>い。<br>*(Ừ nhỉ. Có Hương thì mình yên tâm hơn.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · Cuối tháng, Yamamoto đánh giá tiến độ

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>して、<ruby>どうですか<rt>どうですか</rt></ruby>? <ruby>手応え<rt>てごたえ</rt></ruby>はありますか?<br>*(Nguyễn, học 1 tháng rồi, thế nào? Em có cảm giác tiến bộ không?)* |
| Ngọc | <ruby>社会<rt>しゃかい</rt></ruby>の<ruby>理解<rt>りかい</rt></ruby>と<ruby>認知症<rt>にんちしょう</rt></ruby>ケアは<ruby>自信<rt>じしん</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきました。でも<ruby>医療的<rt>いりょうてき</rt></ruby>ケアは<ruby>まだ<rt>まだ</rt></ruby>3<ruby>割<rt>わり</rt></ruby>くらいの<ruby>正答率<rt>せいとうりつ</rt></ruby>です。<br>*(Môn Hiểu xã hội và Chăm sóc chứng mất trí nhớ cháu tự tin hơn rồi. Nhưng Chăm sóc y tế vẫn mới đúng khoảng 3/10.)* |
| Yamamoto | 3<ruby>割<rt>わり</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>まった<ruby>人<rt>ひと</rt></ruby>がいちばん<ruby>伸<rt>の</rt></ruby>びます。<ruby>分<rt>わ</rt></ruby>かっていないことが<ruby>分<rt>わ</rt></ruby>かっているから。<br>*(Người bắt đầu từ 3/10 thường tiến bộ nhiều nhất. Vì đã biết mình chưa biết gì.)* |
| Ngọc | (gật đầu) <ruby>あと11ヶ月<rt>あとじゅういっかげつ</rt></ruby>あります。<ruby>追いつきます<rt>おいつきます</rt></ruby>。<br>*(Còn 11 tháng nữa ạ. Cháu sẽ theo kịp.)* |
| Yamamoto | <ruby>応援<rt>おうえん</rt></ruby>しています。<ruby>来月<rt>らいげつ</rt></ruby>も<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Chị ủng hộ em. Tháng sau cũng báo cáo cho chị nhé.)* |

---

## Tình huống 12 — Ký túc xá · 22:00, Ngọc và Đức — tiếng Việt

> Scene tiếng Việt — mạch nhân vật, áp lực thật và sự chuyển hóa bên trong.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Ngọc, sao mày cứ ngồi như vậy? Ôn thi xong rồi không? |
| Ngọc | (tiếng Việt) Xong rồi anh. Cháu đang ngồi nghĩ về ông Tanaka. |
| Đức | Chuyện gì? |
| Ngọc | (tiếng Việt) Tối qua ông ấy nói với cháu "tao muốn được người như mày chăm sóc". Ông cụ khó tính nhất viện, mà nói câu đó. Cháu... không biết tại sao lại xúc động mạnh vậy. |
| Đức | (im lặng) Ừ. Cái đó nặng lắm Ngọc. Không phải ai làm 3 năm cũng được nghe câu đó. |
| Ngọc | (tiếng Việt) Anh ơi, cháu biết mình phải đỗ lần này. Không phải chỉ vì visa hay tương lai. Mà vì... cháu muốn xứng đáng với cái câu đó của ông ấy. |
| Đức | (gật đầu nhẹ) Đó là lý do đủ rồi đó. Đi ngủ đi, mai còn ca sáng. |
| Ngọc | Dạ. Cảm ơn anh nghe cháu nói. |

---

## Đọng lại chương 10

Ngọc ôn thi — không chỉ vì chứng chỉ hay visa. Mỗi ngày chăm sóc tại ひだまり苑 trở thành bài học sống của những trang sách cô đang ôn: バリデーション từ bà Sato, 感染症予防 từ thực hành hằng ngày, 介護保険の区分 từ chính ông Tanaka và bà Kato. Và khi ông Tanaka — người lầm lì nhất viện — nói câu "tao muốn được người như mày chăm sóc", Ngọc hiểu rằng lý do thật sự để đỗ kỳ thi này không phải nằm trong cuốn sách ôn thi.

> Từ vựng & mẫu câu chương này: 介護福祉士・国家試験・過去問・正答率・12科目・医療的ケア・社会の理解・認知症ケア・バリデーション・回想法・感染症予防・スタンダードプリコーション・要介護・要支援・介護保険制度・喀痰吸引・カテーテル・気道解剖・実務と理論をつなぐ・手応え', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000011, 800000029, NULL, 'markdown_book', 'T11. Ngày thi quốc gia (国家試験当日)', '# Sách thực tập sinh điều dưỡng · T11. Ngày thi quốc gia (国家試験当日)

> **Mục tiêu nhân vật:** Ngọc (27 tuổi) — đã là 特定技能1号, bước vào kỳ thi 介護福祉士国家試験 (tháng 1/2030). Chương này tập trung các hội thoại về lộ trình chứng chỉ quốc gia, visa vĩnh viễn nghề, ngày thi, và chế độ パート合格制度 khi vấp ngã lần đầu — quyết tâm tiếp tục.

---

## Bối cảnh

Từ tháng 3 năm 2029 đến tháng 1 năm 2030. Ngọc đã làm việc tại「ひだまり苑」hơn 3 năm, là 特定技能1号 và đã tự mình xử lý ca trực đêm. Cô quyết định chinh phục cột mốc lớn nhất: thi 介護福祉士 — chứng chỉ điều dưỡng quốc gia, cánh cửa mở ra visa「介護」và con đường ở lại Nhật lâu dài. Sau gần một năm chuẩn bị, kỳ thi diễn ra cuối tháng 1 năm 2030. Hương cùng ôn thi. Đức — người đàn anh từng gần bỏ cuộc — nay đã vượt qua và cổ vũ nhiệt thành. Và ông Tanaka, người lão bướng bỉnh 82 tuổi mà Ngọc đã gắn bó suốt ba năm, vẫn ở đó — im lặng, ấm áp.

> ⚠️ Chú thích: Kỳ thi 介護福祉士国家試験 tổ chức cuối tháng 1 hằng năm; chế độ パート合格制度 và điều kiện visa「介護」mô tả theo quy định có hiệu lực tại thời điểm 2028–2030. Người học nên kiểm tra lại quy định hiện hành khi cần.

---

## Tình huống 1 — Phòng họp ひだまり苑 · 9:00, Ngọc tuyên bố mục tiêu

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>来月<rt>らいげつ</rt></ruby>で<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>3<ruby>年目<rt>ねんめ</rt></ruby>ですね。<ruby>次<rt>つぎ</rt></ruby>の<ruby>ステップ<rt>すてっぷ</rt></ruby>は<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Nguyễn, tháng sau là năm thứ 3 với đặc định 1 hào rồi. Em đang nghĩ đến bước tiếp theo chưa?)* |
| Ngọc | はい。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>国家試験<rt>こっかしけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng. Em muốn thi kỳ thi quốc gia Điều dưỡng viên Phúc lợi ạ.)* |
| Yamamoto | それはいい<ruby>目標<rt>もくひょう</rt></ruby>ですね。<ruby>実務経験<rt>じつむけいけん</rt></ruby>は<ruby>何年<rt>なんねん</rt></ruby>ですか?<br>*(Mục tiêu tốt đấy. Em có bao nhiêu năm kinh nghiệm thực tế rồi?)* |
| Ngọc | 2026<ruby>年<rt>ねん</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>から<ruby>働<rt>はたら</rt></ruby>いているので、もうすぐ3<ruby>年<rt>ねん</rt></ruby>です。<br>*(Em bắt đầu làm từ tháng 4 năm 2026, nên sắp đủ 3 năm ạ.)* |
| Yamamoto | 3<ruby>年<rt>ねん</rt></ruby>の<ruby>実務経験<rt>じつむけいけん</rt></ruby>と「<ruby>介護職員実務者研修<rt>かいごしょくいんじつむしゃけんしゅう</rt></ruby>」の<ruby>修了<rt>しゅうりょう</rt></ruby>が<ruby>受験資格<rt>じゅけんしかく</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>です。<ruby>研修<rt>けんしゅう</rt></ruby>はもう<ruby>終<rt>お</rt></ruby>わりましたか?<br>*(Điều kiện là 3 năm kinh nghiệm thực tế và hoàn thành "Khóa đào tạo thực hành viên chăm sóc điều dưỡng". Em đã hoàn thành khóa đó chưa?)* |
| Ngọc | はい、<ruby>去年<rt>きょねん</rt></ruby>10<ruby>月<rt>がつ</rt></ruby>に<ruby>修了<rt>しゅうりょう</rt></ruby>しました。<br>*(Vâng, em đã hoàn thành vào tháng 10 năm ngoái ạ.)* |
| Yamamoto | では、<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>揃<rt>そろ</rt></ruby>っていますね。<ruby>試験<rt>しけん</rt></ruby>は1<ruby>月<rt>がつ</rt></ruby>です。<ruby>今<rt>いま</rt></ruby>からでも<ruby>遅<rt>おそ</rt></ruby>くはない。<br>*(Vậy thì điều kiện đã đủ rồi. Kỳ thi vào tháng 1. Bắt đầu từ bây giờ không muộn đâu.)* |
| Ngọc | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。ありがとうございます。<br>*(Vâng, em sẽ cố gắng. Em cảm ơn ạ.)* |

---

## Tình huống 2 — Phòng ông Tanaka · 10:00, chăm sóc hằng ngày với tay nghề vững

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>体操<rt>たいそう</rt></ruby>、<ruby>始<rt>はじ</rt></ruby>めますよ。<ruby>今日<rt>きょう</rt></ruby>は<ruby>右肩<rt>みぎかた</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はどうですか?<br>*(Ông Tanaka, bắt đầu thể dục buổi sáng nhé. Hôm nay vai phải của ông thế nào ạ?)* |
| Ông Tanaka | (lẩm bẩm) ...まあまあだな。<br>*(... Cũng tạm ổn thôi.)* |
| Ngọc | (nhẹ nhàng nắm tay ông, hỗ trợ cử động) では<ruby>ゆっくり<rt>ゆっくり</rt></ruby><ruby>腕<rt>うで</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げましょう。<ruby>痛<rt>いた</rt></ruby>かったらすぐ<ruby>言<rt>い</rt></ruby>ってください。<br>*(Vậy từ từ giơ tay lên nhé. Đau thì nói ngay cho cháu biết ạ.)* |
| Ông Tanaka | (làm theo, liếc nhìn Ngọc) ...お前、<ruby>最初<rt>さいしょ</rt></ruby>のころよりずいぶん<ruby>上手<rt>うま</rt></ruby>くなったな。<br>*(... Mày giờ khéo hơn hồi đầu nhiều nhỉ.)* |
| Ngọc | (ngạc nhiên, cười) え、ありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>毎日<rt>まいにち</rt></ruby><ruby>鍛<rt>きた</rt></ruby>えてくれたおかげです。<br>*(Ồ, cảm ơn ông. Là nhờ ông tôi luyện cho cháu mỗi ngày đấy ạ.)* |
| Ông Tanaka | (khẽ cười, quay đi) ...バカなことを<ruby>言<rt>い</rt></ruby>うな。<br>*(... Nói bậy bạ vậy.)* |
| Ngọc | (tiếp tục hỗ trợ, nhẹ nhàng) <ruby>左<rt>ひだり</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じように。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Bên trái cũng làm tương tự nhé. Ông Tanaka, hôm nay mình cùng cố nhé.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 14:00, Yamamoto giải thích lộ trình và visa

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>したら、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>はどうなりますか?<br>*(Chị Yamamoto, nếu em đỗ Điều dưỡng viên Phúc lợi, tư cách lưu trú sẽ thế nào ạ?)* |
| Yamamoto | 「<ruby>介護<rt>かいご</rt></ruby>」という<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>できます。これは<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>を<ruby>持<rt>も</rt></ruby>つ<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>のビザです。<br>*(Em có thể chuyển sang tư cách lưu trú "Kaigo". Đây là visa dành riêng cho người nước ngoài có chứng chỉ Điều dưỡng viên Phúc lợi.)* |
| Ngọc | <ruby>特定技能<rt>とくていぎのう</rt></ruby>と<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Khác gì với đặc định kỹ năng ạ?)* |
| Yamamoto | <ruby>大<rt>おお</rt></ruby>きな<ruby>違<rt>ちが</rt></ruby>いが2つあります。まず、<ruby>在留期間<rt>ざいりゅうきかん</rt></ruby>の<ruby>上限<rt>じょうげん</rt></ruby>がありません。ずっと<ruby>日本<rt>にほん</rt></ruby>にいられます。<br>*(Có 2 điểm khác biệt lớn. Thứ nhất, không có giới hạn thời gian lưu trú. Em có thể ở Nhật mãi được.)* |
| Ngọc | え、<ruby>永住<rt>えいじゅう</rt></ruby>できるということですか?<br>*(Nghĩa là có thể ở lại vĩnh viễn ạ?)* |
| Yamamoto | <ruby>永住<rt>えいじゅう</rt></ruby>とは<ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>いますが、<ruby>期限<rt>きげん</rt></ruby>を<ruby>気<rt>き</rt></ruby>にせず<ruby>働<rt>はたら</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けられます。もう1つは、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>び<ruby>寄<rt>よ</rt></ruby>せられること。<ruby>配偶者<rt>はいぐうしゃ</rt></ruby>や<ruby>子<rt>こ</rt></ruby>どもを<ruby>日本<rt>にほん</rt></ruby>に<ruby>連<rt>つ</rt></ruby>れてこられます。<br>*(Khác một chút so với vĩnh trú, nhưng em có thể tiếp tục làm việc mà không lo hạn visa. Điểm nữa là em có thể bảo lãnh gia đình. Đưa vợ/chồng và con cái sang Nhật được.)* |
| Ngọc | <ruby>家族<rt>かぞく</rt></ruby>を...(しばらく<ruby>黙<rt>だま</rt></ruby>る) <ruby>お母<rt>おかあ</rt></ruby>さんも<ruby>呼<rt>よ</rt></ruby>べますか?<br>*(Gia đình... — im lặng một lúc — Em có thể bảo lãnh mẹ em sang không ạ?)* |
| Yamamoto | <ruby>配偶者<rt>はいぐうしゃ</rt></ruby>と<ruby>子<rt>こ</rt></ruby>どもが<ruby>対象<rt>たいしょう</rt></ruby>です。でも、<ruby>将来<rt>しょうらい</rt></ruby>に<ruby>向<rt>む</rt></ruby>けての<ruby>選択肢<rt>せんたくし</rt></ruby>はずっと<ruby>広<rt>ひろ</rt></ruby>がりますよ。<br>*(Đối tượng bảo lãnh là vợ/chồng và con. Nhưng các lựa chọn cho tương lai của em sẽ rộng ra rất nhiều đấy.)* |
| Ngọc | はい...。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>取<rt>と</rt></ruby>りたいです。<br>*(Vâng... Em nhất định sẽ lấy được chứng chỉ Điều dưỡng viên Phúc lợi ạ.)* |

---

## Tình huống 4 — Ký túc xá · 22:00, ôn thi cùng Hương, Đức cổ vũ

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Việt) Ngọc ơi, câu này khó quá. "リスクマネジメント"... ở viện mình gọi khác quá. |
| Ngọc | (tiếng Việt) Ừ. Nhưng mà học thuật ngữ chuẩn bây giờ đi, vì đề thi dùng từ sách giáo khoa. Mình tra lại nha. |
| Ngọc | この<ruby>問題<rt>もんだい</rt></ruby>は「<ruby>リスクマネジメント<rt>りすくまねじめんと</rt></ruby>」。<ruby>介護<rt>かいご</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>では<ruby>事故<rt>じこ</rt></ruby>を<ruby>未然<rt>みぜん</rt></ruby>に<ruby>防<rt>ふせ</rt></ruby>ぐための<ruby>管理<rt>かんり</rt></ruby>のことね。<br>*(Câu này là "Quản lý rủi ro". Trong môi trường điều dưỡng, đó là quản lý để ngăn ngừa tai nạn trước khi xảy ra.)* |
| Hương | <ruby>転倒予防<rt>てんとうよぼう</rt></ruby>とか<ruby>誤嚥予防<rt>ごえんよぼう</rt></ruby>とかも<ruby>入<rt>はい</rt></ruby>る?<br>*(Phòng ngã, phòng sặc cũng thuộc về đó không?)* |
| Ngọc | そうそう。<ruby>ヒヤリハット<rt>ひやりはっと</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>も<ruby>リスクマネジメント<rt>りすくまねじめんと</rt></ruby>の<ruby>一部<rt>いちぶ</rt></ruby>だよ。<br>*(Đúng rồi. Ghi lại ヒヤリハット cũng là một phần của quản lý rủi ro đấy.)* |
| Đức | (bước vào, mang hai lon café) ôn thi đến khuya à? Anh tưởng mày đã ngủ. |
| Hương | (tiếng Việt) Anh Đức! Anh mang café cho tụi em à? Cảm ơn anh! |
| Đức | (tiếng Việt) Ừ. Anh ngày xưa ôn thi 技能評価 một mình, không có ai. Tụi mày có nhau là may hơn anh rồi. Cứ vậy mà học. |
| Ngọc | (tiếng Việt) Anh Đức... cảm ơn anh nhiều. |
| Đức | (tiếng Việt) Đừng cảm ơn. Đỗ đi rồi tính. |

---

## Tình huống 5 — Phòng thi quốc gia · Tháng 1 năm 2030, ngày thi 介護福祉士国家試験

| Vai | Lời thoại |
|---|---|
| Hướng dẫn viên | (đọc thông báo phòng thi) では<ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いてください。<br>*(Vậy chúng ta bắt đầu thi. Mời mở đề thi.)* |
| Ngọc | (độc thoại nội tâm) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。3<ruby>年間<rt>ねんかん</rt></ruby>やってきた。<ruby>田中<rt>たなか</rt></ruby>さんのこと、<ruby>佐藤<rt>さとう</rt></ruby>さんのこと、<ruby>夜勤<rt>やきん</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>のこと...<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>答<rt>こた</rt></ruby>えの<ruby>中<rt>なか</rt></ruby>にある。<br>*(Ổn thôi. Mình đã làm 3 năm rồi. Chuyện ông Tanaka, chuyện bà Sato, những đêm trực... tất cả đều nằm trong câu trả lời.)* |
| Ngọc | (nhìn câu hỏi về 認知症ケア) ...この<ruby>問題<rt>もんだい</rt></ruby>は<ruby>バリデーション<rt>ばりでーしょん</rt></ruby>ね。<ruby>佐藤<rt>さとう</rt></ruby>さんといっしょにやったやつ。<br>*(Câu này về バリデーション nhỉ. Cái mình đã thực hiện cùng bà Sato đó.)* |

---

## Tình huống 6 — Ngoài phòng thi · Sau khi ra khỏi phòng thi, Ngọc và Hương

| Vai | Lời thoại |
|---|---|
| Hương | どうだった? <ruby>難<rt>むずか</rt></ruby>しかったね。<br>*(Thế nào? Khó nhỉ.)* |
| Ngọc | うん...。<ruby>医療的<rt>いりょうてき</rt></ruby>ケアの<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しかった。<ruby>全<rt>ぜん</rt></ruby>12<ruby>科目<rt>かもく</rt></ruby>あるから、<ruby>一部<rt>いちぶ</rt></ruby>は<ruby>自信<rt>じしん</rt></ruby>がない。<br>*(Ừ... Phần chăm sóc y tế khó quá. Có đến 12 môn, một số mình không tự tin.)* |
| Hương | わたしも<ruby>権利擁護<rt>けんりようご</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>が...<ruby>分<rt>わ</rt></ruby>からなかった。<br>*(Mình cũng không hiểu câu về bảo vệ quyền lợi người dùng dịch vụ...)* |
| Ngọc | とにかく、<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちましょう。<br>*(Thôi, mình chờ kết quả đi.)* |

*(Vài tuần sau — kết quả về)*

| Vai | Lời thoại |
|---|---|
| Ngọc | (cầm kết quả, giọng run) ...12<ruby>科目<rt>かもく</rt></ruby>のうち、「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」で<ruby>基準点<rt>きじゅんてん</rt></ruby>を<ruby>下回<rt>したまわ</rt></ruby>った。<ruby>不合格<rt>ふごうかく</rt></ruby>...。<br>*(Trong 12 môn, môn "Chăm sóc y tế" bị dưới điểm chuẩn. Trượt rồi...)* |
| Hương | ゴック...(近づいて肩に手を置く)<br>*(Ngọc... — tiến lại đặt tay lên vai Ngọc —)* |
| Ngọc | <ruby>全部<rt>ぜんぶ</rt></ruby>やり<ruby>直<rt>なお</rt></ruby>しなの...?<ruby>来年<rt>らいねん</rt></ruby>また<ruby>最初<rt>さいしょ</rt></ruby>から...。(うつむく)<br>*(Phải làm lại từ đầu hết à... Năm sau lại từ đầu... — cúi đầu xuống —)* |

---

## Tình huống 7 — Phòng 生活相談員 · Buổi chiều, Mai-san báo tin về パート合格制度

| Vai | Lời thoại |
|---|---|
| Mai-san | グエンさん、<ruby>少<rt>すこ</rt></ruby>しいいですか? <ruby>大事<rt>だいじ</rt></ruby>なことをお<ruby>伝<rt>つた</rt></ruby>えしたいんです。<br>*(Nguyễn, em có chút thời gian không? Có chuyện quan trọng chị muốn nói.)* |
| Ngọc | はい、マイさん...<br>*(Vâng, chị Mai...)* |
| Mai-san | <ruby>今年<rt>ことし</rt></ruby>から「<ruby>パート合格制度<rt>ぱーとごうかくせいど</rt></ruby>」が<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>にも<ruby>適用<rt>てきよう</rt></ruby>されています。<ruby>知<rt>し</rt></ruby>っていましたか?<br>*(Từ năm nay, "Chế độ đỗ từng phần" đã được áp dụng cho kỳ thi Điều dưỡng viên Phúc lợi. Em có biết không?)* |
| Ngọc | パート...合格?<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きます。<br>*(Đỗ từng phần...? Lần đầu em nghe ạ.)* |
| Mai-san | 12<ruby>科目<rt>かもく</rt></ruby>を<ruby>合格<rt>ごうかく</rt></ruby>した<ruby>科目<rt>かもく</rt></ruby>は、<ruby>次<rt>つぎ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>で<ruby>免除<rt>めんじょ</rt></ruby>されます。<ruby>不合格<rt>ふごうかく</rt></ruby>だった<ruby>科目<rt>かもく</rt></ruby>だけ<ruby>受<rt>う</rt></ruby>け<ruby>直<rt>なお</rt></ruby>せばいいんです。<br>*(Môn nào đã đỗ trong 12 môn sẽ được miễn ở kỳ thi tiếp theo. Em chỉ cần thi lại môn chưa đỗ thôi.)* |
| Ngọc | え...!<ruby>本当<rt>ほんとう</rt></ruby>ですか? つまり「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」だけ<ruby>受<rt>う</rt></ruby>ければ...?<br>*(Ư... Thật ạ? Tức là em chỉ cần thi lại môn "Chăm sóc y tế" thôi...?)* |
| Mai-san | そうです。そのために、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>も1<ruby>年<rt>ねん</rt></ruby>、<ruby>延長申請<rt>えんちょうしんせい</rt></ruby>できます。<ruby>施設<rt>しせつ</rt></ruby>も<ruby>サポート<rt>さぽーと</rt></ruby>します。<br>*(Đúng vậy. Và để làm điều đó, em có thể xin gia hạn tư cách lưu trú thêm 1 năm. Cơ sở cũng sẽ hỗ trợ em.)* |
| Ngọc | (giọng run vì xúc động) <ruby>知<rt>し</rt></ruby>らなかったです...。<ruby>全部<rt>ぜんぶ</rt></ruby>やり<ruby>直<rt>なお</rt></ruby>しだと<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Em không biết... Em cứ nghĩ phải làm lại từ đầu hết.)* |
| Mai-san | 11<ruby>科目<rt>かもく</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>しているんですよ。それは<ruby>大<rt>おお</rt></ruby>きな<ruby>成果<rt>せいか</rt></ruby>です。<ruby>誇<rt>ほこ</rt></ruby>ってください。<br>*(Em đã đỗ 11 môn rồi đấy. Đó là thành quả lớn. Hãy tự hào về điều đó nhé.)* |

> **Chú thích:** Chế độ「パート合格制度」(đỗ từng phần / partial credit system) chính thức được áp dụng cho kỳ thi 介護福祉士国家試験 từ năm 2026. Người thi đỗ một số môn trong kỳ thi đó được bảo lưu kết quả môn đó trong 1 lần thi tiếp theo, và tư cách lưu trú có thể được gia hạn thêm 1 năm để thi lại. Thông tin này đúng tại thời điểm câu chuyện diễn ra (2029-2030).

---

## Tình huống 8 — Hành lang ひだまり苑 · Buổi sáng, ông Tanaka trao thư

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | グエンさん、<ruby>少<rt>すこ</rt></ruby>しいいか。<br>*(Cô Nguyễn, có chút được không.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。どうかされましたか?<br>*(Ông Tanaka, chào buổi sáng ạ. Có chuyện gì ạ?)* |
| Ông Tanaka | これ...(ふうとうを<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す)。<ruby>娘<rt>むすめ</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>んで<ruby>書<rt>か</rt></ruby>いてもらった。<br>*(Đây... — đưa ra một phong bì —. Tôi nhờ con gái viết hộ.)* |
| Ngọc | <ruby>手紙<rt>てがみ</rt></ruby>...ですか?<br>*(Là thư... ạ?)* |
| Ông Tanaka | <ruby>読<rt>よ</rt></ruby>んでみろ。<ruby>照<rt>て</rt></ruby>れくさいから、ここでは<ruby>読<rt>よ</rt></ruby>むな。<br>*(Cứ đọc đi. Vì ngại nên đừng đọc ở đây.)* |
| Ngọc | (うなずく) はい、ありがとうございます。<br>*(— gật đầu — Vâng, cảm ơn ông ạ.)* |

*(Sau đó, Ngọc một mình đọc thư trong phòng nghỉ)*

| Vai | Lời thoại |
|---|---|
| Ngọc | (đọc thư, giọng nhẹ) 「グエンさんへ。<ruby>3年間<rt>さんねんかん</rt></ruby>、ありがとう。<ruby>最初<rt>さいしょ</rt></ruby>はうるさいと<ruby>思<rt>おも</rt></ruby>っていたが、<ruby>今<rt>いま</rt></ruby>はあなたがいてくれてよかったと<ruby>思<rt>おも</rt></ruby>っている。<ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>れ。田中」<br>*(— đọc thư, giọng nhẹ — "Gửi em Nguyễn. Cảm ơn em 3 năm qua. Ban đầu tôi nghĩ em ồn ào, nhưng bây giờ tôi thấy may vì em ở đây. Hãy giữ gìn sức khỏe. Cố lên với kỳ thi Điều dưỡng viên Phúc lợi. Tanaka")* |
| Ngọc | (im lặng một lúc, rồi khẽ cười) <ruby>田中<rt>たなか</rt></ruby>さん...。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Ông Tanaka... Em nhất định sẽ đỗ.)* |

---

## Tình huống 9 — Phòng họp ひだまり苑 · 16:00, trao đổi với Yamamoto về lộ trình ôn thi lại

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>医療的<rt>いりょうてき</rt></ruby>ケアだけ<ruby>集中<rt>しゅうちゅう</rt></ruby>して<ruby>勉強<rt>べんきょう</rt></ruby>するのに、どんな<ruby>方法<rt>ほうほう</rt></ruby>がいいでしょうか?<br>*(Chị Yamamoto, để tập trung ôn riêng phần Chăm sóc y tế, phương pháp nào là tốt nhất ạ?)* |
| Yamamoto | まず<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>すこと。それと、<ruby>施設<rt>しせつ</rt></ruby>で<ruby>実際<rt>じっさい</rt></ruby>に<ruby>使<rt>つか</rt></ruby>っている<ruby>手順書<rt>てじゅんしょ</rt></ruby>と<ruby>教科書<rt>きょうかしょ</rt></ruby>を<ruby>見比<rt>みくら</rt></ruby>べると<ruby>わかりやすい<rt>わかりやすい</rt></ruby>ですよ。<br>*(Đầu tiên là luyện đề cũ nhiều lần. Ngoài ra, so sánh quy trình thực tế tại cơ sở với sách giáo khoa sẽ dễ hiểu hơn đấy.)* |
| Ngọc | <ruby>手順書<rt>てじゅんしょ</rt></ruby>と<ruby>教科書<rt>きょうかしょ</rt></ruby>を<ruby>比<rt>くら</rt></ruby>べる...。なるほど、<ruby>実務<rt>じつむ</rt></ruby>と<ruby>理論<rt>りろん</rt></ruby>をつなげるということですね。<br>*(So quy trình thực tế với sách giáo khoa... Tức là nối thực hành với lý thuyết đúng không ạ.)* |
| Yamamoto | そうです。グエンさんは3<ruby>年間<rt>ねんかん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>がある。それを<ruby>活<rt>い</rt></ruby>かして<ruby>勉強<rt>べんきょう</rt></ruby>すれば、きっと<ruby>次<rt>つぎ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Đúng vậy. Em có 3 năm kinh nghiệm rồi. Tận dụng điều đó để học thì lần sau nhất định sẽ ổn thôi.)* |
| Ngọc | ありがとうございます。<ruby>次<rt>つぎ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Cảm ơn chị. Lần sau em nhất định đỗ ạ.)* |
| Yamamoto | (gật đầu) <ruby>応援<rt>おうえん</rt></ruby>しています。<ruby>何<rt>なに</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Chị ủng hộ em. Cứ hỏi gì cũng được nhé.)* |

---

## Tình huống 10 — Hành lang ひだまり苑 · Buổi chiều, động viên 後輩 người Việt mới

| Vai | Lời thoại |
|---|---|
| An | (tiếng Nhật, giọng buồn) グエンさん...。<ruby>今日<rt>きょう</rt></ruby>、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>怒<rt>おこ</rt></ruby>られました。<ruby>声かけ<rt>こえかけ</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>かったみたいで...。<br>*(Chị Nguyễn... Hôm nay cháu bị ông cụ mắng. Có vẻ cách cháu hỏi thăm không đúng...)* |
| Ngọc | (ngồi xuống cạnh An) アン、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はよく<ruby>同<rt>おな</rt></ruby>じミスをしていたから。<br>*(An ơi, không sao đâu. Chị hồi đầu cũng hay mắc lỗi tương tự mà.)* |
| An | え、グエンさんも?<br>*(Ủa, chị cũng vậy ạ?)* |
| Ngọc | うん。<ruby>利用者<rt>りようしゃ</rt></ruby>さんによって、<ruby>好<rt>す</rt></ruby>きな<ruby>声かけ<rt>こえかけ</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>う。<ruby>今日<rt>きょう</rt></ruby><ruby>怒<rt>おこ</rt></ruby>られたことで、その<ruby>人<rt>ひと</rt></ruby>のことが<ruby>少<rt>すこ</rt></ruby>し<ruby>分<rt>わ</rt></ruby>かったってことだよ。<br>*(Ừ. Mỗi cụ thích cách hỏi thăm khác nhau. Hôm nay bị mắng là em đã hiểu thêm một chút về cụ đó rồi đó.)* |
| An | (suy nghĩ) ...そういう<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>もあるんですね。<br>*(... Cũng có cách nghĩ như vậy nữa ạ.)* |
| Ngọc | (tiếng Việt, nhẹ nhàng) Em mới vào chưa được 2 tháng. Hồi đó chị còn bị nhiều hơn. Cứ cố từng ngày, sẽ quen thôi. |
| An | (tiếng Việt) Vâng chị. Cảm ơn chị nhiều. |

---

## Tình huống 11 — Scene tiếng Việt · Gọi điện về Cần Thơ

> Scene tiếng Việt — khép lại hành trình, tuyến gia đình, kết mở hi vọng.

| Vai | Lời thoại |
|---|---|
| Mẹ | (qua điện thoại) Ngọc ơi, mẹ nghe nói con thi không đỗ à? Có sao không con? |
| Ngọc | Dạ mẹ. Con trượt một môn thôi. Nhưng mà môn đó con được thi lại, không cần thi lại từ đầu hết đâu mẹ. |
| Mẹ | Ừ... mẹ cũng lo. Ba năm rồi con chưa về. Con có mệt lắm không? |
| Ngọc | Mệt có mệt mẹ. Nhưng con không buồn đâu. Con đọc thư ông cụ mà con chăm — ông ấy bảo con "cố lên". Ông cụ khó tính nhất viện mà cũng viết thư cho con, mẹ biết không. |
| Mẹ | (cười nhẹ) Vậy hả con. Ông cụ thương con rồi đó. |
| Ngọc | Mẹ ơi, con sẽ thi lại tháng 1 năm sau. Lần này con chỉ ôn một môn thôi nên chắc chắn hơn. Mà khi con đỗ 介護福祉士... con sẽ có visa ở lại Nhật lâu dài được. Không bị giới hạn thời gian nữa. |
| Mẹ | Nghe mà mẹ vừa mừng vừa buồn con ơi. Mừng vì con tiến được. Buồn vì xa con quá. |
| Ngọc | Con biết mẹ. Nhưng mẹ ơi, con đã chọn nghề này, con đã chọn ở đây rồi — không phải vì bị bắt buộc, mà vì con thấy ý nghĩa thật. Con muốn tiếp tục. |
| Mẹ | (im lặng một lúc) Thì mẹ ủng hộ con thôi. Cứ làm tốt đi con. |
| Ngọc | Dạ. Mẹ ở nhà giữ sức khỏe nha. Con thương mẹ nhiều lắm. |
| Mẹ | Mẹ thương con. Cố lên. |

*(Ngọc đặt điện thoại xuống. Qua cửa sổ ký túc xá, đèn đường Osaka lên từng ngọn. Cô lấy quyển sách ôn thi ra — phần "医療的ケア" đã có trang đánh dấu đỏ từ tuần trước.)*

---

## Đọng lại chương 12

Hành trình của Ngọc chưa kết thúc — nhưng cô đã trở thành người khác so với cô gái 24 tuổi bước vào 「ひだまり苑」hồi tháng 4 năm 2026. Qua 3 năm: từ 実習生 → 特定技能 → người bước vào ngưỡng cửa **介護福祉士**. Tay nghề vững đến mức ông Tanaka khó tính nhất viện cũng nhận ra, biết hỏi Yamamoto đúng câu hỏi để học tiếp, biết động viên 後輩 người Việt bằng chính kinh nghiệm của mình. Vấp ngã không đồng nghĩa thất bại khi có chế độ パート合格 nâng đỡ, có đồng nghiệp sát cánh, có bức thư của ông cụ cứng đầu nhất viện nhắc rằng 3 năm chăm sóc chưa bao giờ là vô nghĩa. **Lần thi sau — Ngọc sẽ đỗ.**

> Từ vựng & mẫu câu chương này: 介護福祉士・国家試験・介護職員実務者研修・受験資格・在留資格「介護」・家族呼び寄せ・パート合格制度・科目免除・延長申請・リスクマネジメント・医療的ケア・12科目・過去問・手順書・教科書・声かけ・後輩・応援しています・絶対に合格します・誇ってください', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (829000012, 800000029, NULL, 'markdown_book', 'T12. Khởi đầu mới (新たな出発)', '# Sách thực tập sinh điều dưỡng · T12. Khởi đầu mới (新たな出発)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, tháng 3 năm 2030) — CHƯƠNG KẾT SERIES. Sau kết quả kỳ thi 介護福祉士 tháng 1/2030 (trượt môn 医療的ケア, được パート合格制度 bảo lưu các môn đã đỗ), Ngọc đứng trước lựa chọn: gục ngã hay tiếp tục. Ông Tanaka viết thư tay. Ngọc nhìn lại gần 4 năm — từ cô gái N4 hoảng hốt trong ngày đầu đến người hướng dẫn 後輩, bàn luận ケアプラン, và sắp thi lại với nền vững hơn.

---

## Bối cảnh

Tháng 3 năm 2030. Kết quả kỳ thi 介護福祉士国家試験 cuối tháng 1/2030 đã về. Ngọc trượt một môn — 医療的ケア — nhưng đỗ các môn còn lại. Nhờ chế độ パート合格制度, tư cách lưu trú được gia hạn thêm 1 năm, và cô chỉ cần thi lại môn còn thiếu vào kỳ thi tháng 1 năm 2031. Việc này đã diễn ra ở chương 11 (T11). Chương kết này mở ra sau đó: Ngọc bước ra khỏi cú sốc đầu tiên, ông Tanaka trao thư, và cô nhìn lại toàn bộ hành trình gần 4 năm với ánh mắt khác hơn.

---

## Tình huống 1 — Phòng nghỉ nhân viên · Sáng, Yamamoto gặp Ngọc sau kết quả thi

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>結果<rt>けっか</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きました。11<ruby>科目<rt>かもく</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>したんですね。<br>*(Nguyễn, chị nghe kết quả rồi. Em đỗ 11 môn đấy nhỉ.)* |
| Ngọc | はい...。でも<ruby>医療的<rt>いりょうてき</rt></ruby>ケアで<ruby>落<rt>お</rt></ruby>ちてしまいました。<ruby>悔<rt>くや</rt></ruby>しいです。<br>*(Vâng... Nhưng cháu trượt môn Chăm sóc y tế. Tiếc lắm ạ.)* |
| Yamamoto | 11<ruby>科目<rt>かもく</rt></ruby>は<ruby>大きな成果<rt>おおきなせいか</rt></ruby>です。<ruby>パート合格<rt>ぱーとごうかく</rt></ruby>で<ruby>来年<rt>らいねん</rt></ruby>また<ruby>医療的<rt>いりょうてき</rt></ruby>ケアだけ<ruby>受<rt>う</rt></ruby>けられる。<ruby>前向き<rt>まえむき</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えましょう。<br>*(11 môn là thành quả lớn. Nhờ đỗ từng phần, năm sau em chỉ cần thi lại môn Chăm sóc y tế thôi. Hãy suy nghĩ tích cực nhé.)* |
| Ngọc | はい。<ruby>マイさん<rt>まいさん</rt></ruby>にも<ruby>教<rt>おし</rt></ruby>えていただいて、<ruby>在留<rt>ざいりゅう</rt></ruby>の<ruby>延長<rt>えんちょう</rt></ruby>もできることが<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng. Mai-san cũng giải thích, và cháu biết có thể gia hạn lưu trú rồi ạ.)* |
| Yamamoto | (gật đầu) <ruby>施設<rt>しせつ</rt></ruby>として、<ruby>全力<rt>ぜんりょく</rt></ruby>でサポートします。<ruby>来年<rt>らいねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Với tư cách cơ sở, chúng tôi sẽ hỗ trợ hết sức. Cùng cố hướng đến tháng 1 năm sau nhé.)* |
| Ngọc | ありがとうございます。<ruby>今度<rt>こんど</rt></ruby>こそ、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Cảm ơn chị. Lần sau cháu nhất định đỗ ạ.)* |

---

## Tình huống 2 — Hành lang phòng ông Tanaka · Buổi sáng, ông Tanaka trao thư

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | グエンさん、<ruby>少<rt>すこ</rt></ruby>しいいか。<br>*(Cô Nguyễn, có chút được không.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。どうかされましたか?<br>*(Ông Tanaka, chào buổi sáng. Có chuyện gì ạ?)* |
| Ông Tanaka | これ...(đưa phong bì bằng cả hai tay) <ruby>娘<rt>むすめ</rt></ruby>に<ruby>代筆<rt>だいひつ</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>んだ。<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えるから、<ruby>自分<rt>じぶん</rt></ruby>では<ruby>書<rt>か</rt></ruby>けなくて。<br>*(Đây... — đưa phong bì bằng cả hai tay — Tôi nhờ con gái viết hộ. Tay tôi run nên tôi không tự viết được.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん...<ruby>手紙<rt>てがみ</rt></ruby>ですか?<br>*(Ông Tanaka... Thư ạ?)* |
| Ông Tanaka | <ruby>読<rt>よ</rt></ruby>むのは<ruby>後<rt>あと</rt></ruby>でいい。(nhìn đi chỗ khác) <ruby>照<rt>て</rt></ruby>れくさいから<ruby>ここでは<rt>ここでは</rt></ruby><ruby>読<rt>よ</rt></ruby>むな。<br>*(Đọc sau cũng được. — nhìn đi chỗ khác — Ngại nên đừng đọc ở đây.)* |
| Ngọc | (cầm phong bì, cúi đầu sâu) ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>にします。<br>*(Cảm ơn ông ạ. Cháu sẽ trân trọng ạ.)* |

*(Sau đó, Ngọc đọc thư một mình trong phòng nghỉ)*

| Vai | Lời thoại |
|---|---|
| Ngọc | (đọc nhẹ, giọng xúc động) 「グエンさんへ。<ruby>3年間<rt>さんねんかん</rt></ruby>、ありがとう。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby>、ベトナムの<ruby>人<rt>ひと</rt></ruby>に<ruby>世話<rt>せわ</rt></ruby>になるのは<ruby>嫌<rt>いや</rt></ruby>だった。でも、お<ruby>前<rt>まえ</rt></ruby>はそんな<ruby>俺<rt>おれ</rt></ruby>を<ruby>気<rt>き</rt></ruby>にせず、<ruby>毎日<rt>まいにち</rt></ruby><ruby>来<rt>き</rt></ruby>てくれた。<ruby>感謝<rt>かんしゃ</rt></ruby>している。<ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけろ。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>れ。<ruby>田中<rt>たなか</rt></ruby>」<br>*(— đọc nhẹ — "Gửi em Nguyễn. Cảm ơn em 3 năm qua. Thật lòng mà nói, lúc đầu tôi không muốn được người Việt Nam chăm sóc. Nhưng em không quan tâm điều đó, và cứ đến mỗi ngày. Tôi biết ơn em. Hãy giữ gìn sức khỏe. Cố lên với kỳ thi Điều dưỡng viên Phúc lợi. Tanaka")* |
| Ngọc | (im lặng dài, mắt ướt) <ruby>田中<rt>たなか</rt></ruby>さん...(khẽ cười qua nước mắt) <ruby>3年間<rt>さんねんかん</rt></ruby>、<ruby>ありがとうございました<rt>ありがとうございました</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Ông Tanaka... 3 năm qua cảm ơn ông. Cháu nhất định sẽ đỗ.)* |

---

## Tình huống 3 — Phòng sinh hoạt · 10:00, chăm sóc ông Tanaka sau khi đọc thư

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>体操<rt>たいそう</rt></ruby>、<ruby>始<rt>はじ</rt></ruby>めましょうか。<ruby>今日<rt>きょう</rt></ruby>は<ruby>右腕<rt>みぎうで</rt></ruby>の<ruby>動<rt>うご</rt></ruby>きはどうですか?<br>*(Ông Tanaka, bắt đầu thể dục buổi sáng nhé. Hôm nay cánh tay phải của ông thế nào ạ?)* |
| Ông Tanaka | (nhìn Ngọc, lẩm bẩm) ...お前、<ruby>目<rt>め</rt></ruby>が<ruby>赤<rt>あか</rt></ruby>いぞ。<br>*(... Mắt mày đỏ đấy.)* |
| Ngọc | (cười nhẹ) <ruby>少<rt>すこ</rt></ruby>し<ruby>アレルギー<rt>あれるぎー</rt></ruby>で。(nhẹ nhàng nắm tay ông) <ruby>では<rt>では</rt></ruby><ruby>ゆっくり<rt>ゆっくり</rt></ruby><ruby>上<rt>あ</rt></ruby>げましょうか。<br>*(Cháu bị dị ứng một chút. — nhẹ nhàng nắm tay ông — Từ từ giơ lên nhé.)* |
| Ông Tanaka | (làm theo, liếc nhìn) ...<ruby>手紙<rt>てがみ</rt></ruby>、<ruby>読<rt>よ</rt></ruby>んだか?<br>*(... Thư, mày đọc rồi chứ?)* |
| Ngọc | (gật đầu nhẹ) <ruby>はい<rt>はい</rt></ruby>。<ruby>大切<rt>たいせつ</rt></ruby>にします。<ruby>ありがとうございました<rt>ありがとうございました</rt></ruby>。<br>*(Vâng. Cháu sẽ trân trọng. Cảm ơn ông ạ.)* |
| Ông Tanaka | (quay đi, giọng khàn) ...はやく<ruby>合格<rt>ごうかく</rt></ruby>しろよ。<br>*(... Đỗ nhanh lên.)* |
| Ngọc | (tiếp tục hỗ trợ, giọng bình tĩnh ấm áp) はい。<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>できる<ruby>日<rt>ひ</rt></ruby>まで、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Cháu sẽ cố đến ngày có thể báo tin cho ông ạ.)* |

---

## Tình huống 4 — Phòng nghỉ nhân viên · 11:30, Ngọc báo cáo kế hoạch ôn lại với Yamamoto

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」の<ruby>ために<rt>ために</rt></ruby>、<ruby>今年<rt>ことし</rt></ruby>は<ruby>集中的<rt>しゅうちゅうてき</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>っています。<ruby>施設<rt>しせつ</rt></ruby>で<ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せていただけますか?<br>*(Chị Yamamoto, để ôn môn Chăm sóc y tế, cháu muốn học tập trung trong năm nay. Cháu có thể xem quy trình thực tế của cơ sở không ạ?)* |
| Yamamoto | もちろん。<ruby>施設<rt>しせつ</rt></ruby>の<ruby>手順書<rt>てじゅんしょ</rt></ruby>と<ruby>教科書<rt>きょうかしょ</rt></ruby>を<ruby>照<rt>て</rt></ruby>らし<ruby>合<rt>あ</rt></ruby>わせると<ruby>理解<rt>りかい</rt></ruby>が<ruby>深<rt>ふか</rt></ruby>まりますよ。<ruby>いつでも<rt>いつでも</rt></ruby><ruby>使<rt>つか</rt></ruby>っていいです。<br>*(Dĩ nhiên. Đối chiếu quy trình cơ sở với sách giáo khoa thì hiểu sâu hơn đấy. Cứ dùng bất cứ lúc nào.)* |
| Ngọc | ありがとうございます。それと、<ruby>月<rt>つき</rt></ruby>に1<ruby>回<rt>かい</rt></ruby>くらい、<ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>進み<rt>すすみ</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>してもいいですか? <ruby>アドバイス<rt>あどばいす</rt></ruby>もいただけると<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn chị. Và khoảng 1 lần mỗi tháng, cháu có thể báo cáo tiến độ ôn thi không ạ? Được nhận lời khuyên cũng giúp ích nhiều lắm.)* |
| Yamamoto | もちろんです。グエンさんの<ruby>成功<rt>せいこう</rt></ruby>は、<ruby>施設<rt>しせつ</rt></ruby>みんなの<ruby>喜<rt>よろこ</rt></ruby>びですから。<br>*(Dĩ nhiên rồi. Thành công của Nguyễn là niềm vui của cả cơ sở mà.)* |

---

## Tình huống 5 — Hành lang · 13:00, Ngọc và kohai An — nhìn lại hành trình

| Vai | Lời thoại |
|---|---|
| An | グエンさん、<ruby>試験<rt>しけん</rt></ruby>のこと、<ruby>聞<rt>き</rt></ruby>いていいですか?<br>*(Chị Nguyễn, cháu hỏi về kỳ thi được không ạ?)* |
| Ngọc | いいよ。なに?<br>*(Được. Sao vậy?)* |
| An | <ruby>1科目<rt>いちかもく</rt></ruby>だけで<ruby>不合格<rt>ふごうかく</rt></ruby>になるって、<ruby>ショック<rt>しょっく</rt></ruby>じゃなかったですか?<br>*(Chỉ vì 1 môn mà trượt — chị có bị sốc không?)* |
| Ngọc | (thẳng thắn) ショックだったよ。でも、11<ruby>科目<rt>かもく</rt></ruby><ruby>受かった<rt>うかった</rt></ruby>のも<ruby>事実<rt>じじつ</rt></ruby>だから。<ruby>全部<rt>ぜんぶ</rt></ruby>やり<ruby>直<rt>なお</rt></ruby>しじゃないって<ruby>分<rt>わ</rt></ruby>かったとき、<ruby>気持<rt>きも</rt></ruby>ちが<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>わった。<br>*(Sốc chứ. Nhưng đỗ 11 môn cũng là thực tế mà. Khi biết không phải làm lại từ đầu hết, mình cảm thấy khác hẳn.)* |
| An | グエンさんが「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>」って<ruby>言<rt>い</rt></ruby>えるのは、3<ruby>年間<rt>ねんかん</rt></ruby>があるからですよね。<br>*(Chị có thể nói "ổn thôi" vì chị có 3 năm đằng sau đúng không ạ.)* |
| Ngọc | (suy nghĩ một lúc) そうかもしれない。でも3<ruby>年間<rt>ねんかん</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby>から<ruby>分<rt>わ</rt></ruby>かってたわけじゃない。<ruby>1日1日<rt>いちにちいちにち</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたら、<ruby>いつの間<rt>いつのま</rt></ruby>にか3<ruby>年<rt>ねん</rt></ruby>になってた。<br>*(Có thể vậy. Nhưng 3 năm không phải từ đầu mình đã biết mình sẽ có. Cứ tiếp tục từng ngày, rồi không biết lúc nào đã thành 3 năm.)* |
| An | (nhẹ nhàng) ...ありがとうございます、グエンさん。<br>*(... Cảm ơn chị Nguyễn.)* |

---

## Tình huống 6 — Phòng bà Kato · 14:30, chăm sóc chiều, nhớ lại ngày đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>加藤<rt>かとう</rt></ruby>さん、お<ruby>茶<rt>ちゃ</rt></ruby>をどうぞ。<ruby>今日<rt>きょう</rt></ruby>の<ruby>お茶<rt>おちゃ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>冷<rt>さ</rt></ruby>ましてありますよ。<br>*(Bà Kato, mời bà dùng trà. Trà hôm nay đã được để nguội một chút đấy ạ.)* |
| Bà Kato | ありがとうね。グエン<ruby>さん<rt>さん</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くわ。<br>*(Cảm ơn em. Cô Nguyễn thật chu đáo nhỉ.)* |
| Ngọc | (mỉm cười) <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>は<ruby>熱<rt>あつ</rt></ruby>いまま<ruby>出<rt>だ</rt></ruby>そうとして、<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>してもらいました。(nội tâm: あの日のことがまだ覚えている...)<br>*(Hồi đầu cháu suýt đưa nước còn nóng, được đàn chị nhắc nhở. — nội tâm: Vẫn nhớ hôm đó...)* |
| Bà Kato | そうなの。みんな<ruby>最初<rt>さいしょ</rt></ruby>はそうよ。<ruby>今<rt>いま</rt></ruby>は<ruby>立派<rt>りっぱ</rt></ruby>ね。<br>*(Vậy à. Ai ban đầu cũng vậy thôi. Bây giờ giỏi lắm rồi đấy.)* |
| Ngọc | (ấm lòng) ありがとうございます、<ruby>加藤<rt>かとう</rt></ruby>さん。<ruby>まだまだ<rt>まだまだ</rt></ruby>ですが。<br>*(Cảm ơn bà Kato ạ. Nhưng cháu vẫn còn nhiều phải học lắm.)* |
| Bà Kato | <ruby>謙虚<rt>けんきょ</rt></ruby>なのがいいのよ、グエンさんは。<br>*(Khiêm tốn vậy là tốt đó, cô Nguyễn.)* |

---

## Tình huống 7 — Phòng họp nhân viên · 15:30, họp 個別援助計画 cuối quý

| Vai | Lời thoại |
|---|---|
| Yamamoto | では<ruby>今月<rt>こんげつ</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>ケア<rt>けあ</rt></ruby>についての<ruby>評価<rt>ひょうか</rt></ruby>です。グエンさん、<ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy bây giờ đánh giá chăm sóc ông Tanaka tháng này. Nguyễn, nhờ em báo cáo.)* |
| Ngọc | はい。<ruby>夜間<rt>やかん</rt></ruby>の<ruby>覚醒<rt>かくせい</rt></ruby>は<ruby>先月<rt>せんげつ</rt></ruby>より<ruby>減<rt>へ</rt></ruby>りました。<ruby>水分<rt>すいぶん</rt></ruby><ruby>摂取<rt>せっしゅ</rt></ruby>のタイミングを<ruby>変<rt>か</rt></ruby>えた<ruby>効果<rt>こうか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ていると<ruby>思<rt>おも</rt></ruby>われます。<ruby>食欲<rt>しょくよく</rt></ruby>は<ruby>安定<rt>あんてい</rt></ruby>、<ruby>ADL<rt>えーでぃーえる</rt></ruby>は<ruby>現状維持<rt>げんじょういじ</rt></ruby>です。<br>*(Vâng. Số lần thức đêm giảm so với tháng trước. Có vẻ là hiệu quả của việc điều chỉnh thời điểm bổ sung nước. Ăn uống ổn định, ADL duy trì như hiện tại ạ.)* |
| Yamamoto | <ruby>変化<rt>へんか</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>まで<ruby>分析<rt>ぶんせき</rt></ruby>できているのがいいですね。<ruby>来月<rt>らいげつ</rt></ruby>も<ruby>引き続き<rt>ひきつづき</rt></ruby><ruby>観察<rt>かんさつ</rt></ruby>してください。<br>*(Tốt là em phân tích được cả nguyên nhân thay đổi. Tháng sau tiếp tục theo dõi nhé.)* |
| Ngọc | はい。それと、<ruby>田中<rt>たなか</rt></ruby>さんのご<ruby>家族<rt>かぞく</rt></ruby>からも「<ruby>最近<rt>さいきん</rt></ruby><ruby>父<rt>ちち</rt></ruby>が<ruby>穏<rt>おだ</rt></ruby>やかだ」と<ruby>連絡<rt>れんらく</rt></ruby>がありました。<br>*(Vâng. Và gia đình ông Tanaka cũng liên hệ nói "gần đây bố hiền hơn" ạ.)* |
| Mai-san | (gật đầu) それは<ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>変化<rt>へんか</rt></ruby>がご<ruby>家族<rt>かぞく</rt></ruby>にも<ruby>伝<rt>つた</rt></ruby>わっている。グエンさんのケアが<ruby>実<rt>み</rt></ruby>を<ruby>結<rt>むす</rt></ruby>んでいますね。<br>*(Thật tuyệt vời nhỉ. Sự thay đổi của người sử dụng dịch vụ đã truyền đến cả gia đình. Chăm sóc của Nguyễn đang lan ra đấy.)* |

---

## Tình huống 8 — Sảnh ひだまり苑 · Buổi chiều, Đức chia sẻ về 3 năm nhìn lại

| Vai | Lời thoại |
|---|---|
| Đức | グエンさん、ちょっといいか。<br>*(Nguyễn, có chút được không?)* |
| Ngọc | はい。どうしましたか?<br>*(Vâng. Có chuyện gì ạ?)* |
| Đức | <ruby>3年前<rt>さんねんまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてるか? <ruby>お前<rt>おまえ</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>にここに<ruby>来<rt>き</rt></ruby>たとき。<br>*(Mày có nhớ 3 năm trước không? Hồi mày mới đến đây lần đầu.)* |
| Ngọc | (cười) <ruby>覚<rt>おぼ</rt></ruby>えています。<ruby>声かけ<rt>こえかけ</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からなくて、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えてもらってばかりでした。<br>*(Cháu nhớ. Cháu không biết cách hỏi thăm, cứ phải hỏi tên gọi các cụ mãi.)* |
| Đức | <ruby>今<rt>いま</rt></ruby>のお前は<ruby>別人<rt>べつじん</rt></ruby>だよ。<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てて、<ruby>ケアプラン<rt>けあぷらん</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>で<ruby>提案<rt>ていあん</rt></ruby>して、<ruby>田中<rt>たなか</rt></ruby>さんから<ruby>手紙<rt>てがみ</rt></ruby>もらって。<br>*(Mày bây giờ như người khác rồi. Đào tạo đàn em, đề xuất trong họp ケアプラン, nhận thư từ ông Tanaka.)* |
| Ngọc | ドックさんがいたから<ruby>続けられた<rt>つづけられた</rt></ruby>と<ruby>思<rt>おも</rt></ruby>っています。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、<ruby>諦めそうになった<rt>あきらめそうになった</rt></ruby>とき、ドックさんが「<ruby>続<rt>つづ</rt></ruby>けろ」って<ruby>言<rt>い</rt></ruby>ってくれた。<br>*(Cháu nghĩ cháu tiếp tục được vì có anh. Hồi đầu, khi suýt bỏ cuộc, anh đã nói "cứ tiếp tục".)* |
| Đức | (bình tĩnh) <ruby>俺<rt>おれ</rt></ruby>は<ruby>言葉<rt>ことば</rt></ruby>をかけただけだ。<ruby>続けたのはお前<rt>つづけたのはおまえ</rt></ruby>だろ。<br>*(Anh chỉ nói thôi. Người tiếp tục là mày chứ.)* |
| Ngọc | (gật đầu) はい。でもその<ruby>言葉<rt>ことば</rt></ruby>があったから。<br>*(Vâng. Nhưng vì có câu đó.)* |

---

## Tình huống 9 — Phòng nghỉ nhân viên · Cuối ca, Ngọc viết kế hoạch ôn thi lại

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, ghi chép vào sổ nhỏ) <ruby>来年<rt>らいねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>まで10<ruby>ヶ月<rt>かげつ</rt></ruby>。「<ruby>医療的<rt>いりょうてき</rt></ruby>ケア」だけ。<ruby>毎月<rt>まいつき</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる。<br>*(Còn 10 tháng đến tháng 1 năm sau. Chỉ môn "Chăm sóc y tế" thôi. Đặt mục tiêu từng tháng.)* |
| Ngọc | (độc thoại nội tâm) <ruby>3年前<rt>さんねんまえ</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>に「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ」と<ruby>言<rt>い</rt></ruby>えるとしたら...。きっと<ruby>信<rt>しん</rt></ruby>じなかっただろうな。でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だった。<ruby>今<rt>いま</rt></ruby>もきっと<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Nếu có thể nói với bản thân 3 năm trước "ổn thôi nhé"... Chắc bản thân đó sẽ không tin đâu. Nhưng rồi đã ổn. Giờ chắc cũng ổn thôi.)* |
| Ngọc | (ghi vào sổ) <ruby>目標<rt>もくひょう</rt></ruby>: 2030<ruby>年<rt>ねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>。<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>する。<br>*(Mục tiêu: Tháng 1 năm 2030, đỗ Điều dưỡng viên Phúc lợi. Báo tin cho ông Tanaka.)* |

---

## Tình huống 10 — Sảnh ひだまり苑 · 17:00, chào tạm biệt ông Tanaka cuối ca

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>も<ruby>お疲<rt>おつか</rt></ruby>れさまでした。<ruby>ゆっくり<rt>ゆっくり</rt></ruby><ruby>休<rt>やす</rt></ruby>んでください。<br>*(Ông Tanaka, hôm nay ông vất vả rồi. Nghỉ ngơi tốt nhé ạ.)* |
| Ông Tanaka | ああ。お前も<ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>れ。<br>*(Ừ. Mày cũng cẩn thận mà về.)* |
| Ngọc | はい。ありがとうございます。(dừng, quay lại) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>手紙<rt>てがみ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>をしに<ruby>来<rt>き</rt></ruby>ます。<br>*(Vâng. Cảm ơn ông. — dừng, quay lại — Ông Tanaka, thật sự cảm ơn ông vì bức thư. Cháu nhất định sẽ đến báo tin đỗ cho ông.)* |
| Ông Tanaka | (im lặng một lúc, rồi khẽ gật) ...<ruby>待<rt>ま</rt></ruby>ってるぞ。<br>*(... Tao chờ đấy.)* |
| Ngọc | (cúi đầu, giọng ấm) はい。<ruby>必<rt>かなら</rt></ruby>ず。<br>*(Vâng. Nhất định ạ.)* |

---

## Tình huống 11 — Trên đường về ký túc · 18:00, Ngọc và Hương

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>顔<rt>かお</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>う。<ruby>何<rt>なに</rt></ruby>かいいことあった?<br>*(Nguyễn, hôm nay nét mặt khác. Có chuyện vui à?)* |
| Ngọc | うん。<ruby>田中<rt>たなか</rt></ruby>さんが「<ruby>待<rt>ま</rt></ruby>ってるぞ」って<ruby>言<rt>い</rt></ruby>ってくれた。<br>*(Ừ. Ông Tanaka nói "tao chờ đấy".)* |
| Hương | え...(立ち止まる)<ruby>田中<rt>たなか</rt></ruby>さんが? あの<ruby>口数<rt>くちかず</rt></ruby>の<ruby>少<rt>すく</rt></ruby>ない...?<br>*(Ồ... — dừng lại — Ông Tanaka? Người ít nói đó...?)* |
| Ngọc | うん。(cười khẽ) だから<ruby>合格<rt>ごうかく</rt></ruby>しなきゃいけない。<ruby>待<rt>ま</rt></ruby>ってる<ruby>人<rt>ひと</rt></ruby>がいるから。<br>*(Ừ. Nên mình phải đỗ. Vì có người đang chờ mình.)* |
| Hương | (ấm lòng) そうだね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>ヒュオンも<rt>ひゅおんも</rt></ruby><ruby>応援<rt>おうえん</rt></ruby>してるよ。<br>*(Đúng rồi. Cùng cố nhé. Hương cũng ủng hộ Ngọc đấy.)* |
| Ngọc | ありがとう。(nhìn lên bầu trời tối Osaka) <ruby>来年<rt>らいねん</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>の<ruby>お祝<rt>いわ</rt></ruby>いをしよう。<br>*(Cảm ơn. — nhìn lên bầu trời tối Osaka — Năm sau, mình cùng ăn mừng đỗ nhé.)* |

---

## Tình huống 12 — Ký túc xá · 22:00, gọi về Cần Thơ (tiếng Việt)

> Scene tiếng Việt — khép lại hành trình 3 năm, kết mở nhưng có nền hi vọng thật.

| Vai | Lời thoại |
|---|---|
| Mẹ | (qua điện thoại) Ngọc ơi, con gọi muộn vậy, có sao không? |
| Ngọc | (tiếng Việt) Dạ mẹ ơi. Con ổn. Hôm nay con muốn kể mẹ nghe chuyện này. |
| Mẹ | Gì vậy con? |
| Ngọc | (tiếng Việt) Mẹ biết ông cụ mà con chăm không? Ông Tanaka — cái ông khó tính mà con hay kể mẹ nghe. Hôm nay ổng nói với con là "tao chờ mày". Chờ con thi đỗ rồi báo tin cho ổng. |
| Mẹ | (im lặng) Ổng... thương con thật rồi đó Ngọc ơi. |
| Ngọc | (tiếng Việt) Dạ mẹ. Con cũng nghĩ vậy. Ba năm rồi mẹ. Con nhớ hồi mới qua, con không biết nói 失礼します đúng kiểu, sợ mọi thứ, tưởng về không được. Giờ con hướng dẫn đàn em, ngồi họp đề xuất kế hoạch chăm sóc, và... ông cụ khó tính nhất viện viết thư cho con. |
| Mẹ | (nhẹ nhàng) Vậy thì con đã làm được rồi còn gì. |
| Ngọc | (tiếng Việt) Con chưa xong mẹ. Con còn phải thi lại một môn nữa, tháng 1 năm sau. Nhưng mà... lần này con không sợ nữa. Con biết mình làm được. Chỉ là cần thêm một lần nữa thôi. |
| Mẹ | Mẹ tin con. Con làm nghề này mẹ thấy con trưởng thành hẳn. Không còn giống cái con gái hồi xưa lo lắng mọi thứ nữa. |
| Ngọc | (cười khẽ, tiếng Việt) Thật không mẹ? Con vẫn lo lắng nhiều lắm chứ. Chỉ là biết cách đứng dậy hơn thôi. Mẹ ơi, khi con đỗ 介護福祉士... con sẽ có visa ở lại Nhật không bị giới hạn thời gian. Con muốn tiếp tục làm nghề này lâu dài. Ở đây, bên cạnh ông Tanaka và những cụ như ông ấy. |
| Mẹ | (ngập ngừng) Mẹ nhớ con lắm. Nhưng mẹ hiểu. Con đã chọn rồi, và con chọn đúng. |
| Ngọc | (giọng nhẹ, tiếng Việt) Cảm ơn mẹ. Mẹ ở nhà giữ gìn sức khỏe nha. Con thương mẹ. |
| Mẹ | Mẹ thương con. Cố lên, 介護福祉士 — con gái mẹ. |

*(Ngọc đặt điện thoại xuống. Bên ngoài cửa sổ ký túc, Osaka đêm lên đèn. Cô mở sổ ôn thi ra — trang đầu ghi: "医療的ケア — 目標: 満点". Cô nhìn một lúc, rồi bắt đầu viết.)*

---

## Đọng lại chương 12 — và toàn bộ series

Ngọc bắt đầu series này là cô gái 24 tuổi không biết 利用者 nghĩa là gì, sợ gõ cửa phòng người bệnh, run khi tự giới thiệu trước buổi họp sáng. Ba năm sau: cô ghi chép 介護記録 chuyên nghiệp, đề xuất điều chỉnh ケアプラン, hướng dẫn 後輩, đứng vững sau kết quả thi không trọn vẹn — và nhận được thư tay từ người đàn ông cứng đầu nhất viện. **Hành trình chưa kết thúc. Nhưng người đang đi đã khác.**

> Từ vựng & mẫu câu chương này: 介護福祉士・国家試験・パート合格制度・在留資格の延長・医療的ケア・個別援助計画・ADL・現状維持・申し送り・後輩を育てる・声かけ・ケアプランの提案・手紙・代筆・絶対に合格します・待ってるぞ・お疲れさまでした・必ず', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
