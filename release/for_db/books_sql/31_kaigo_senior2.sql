-- Hizashi LITE book SQL — Kaigo Senior 2
-- curriculum_id = 800000031  (book_seq=31)
-- nguồn: books/31_kaigo_senior2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000031, 'N3', 'markdown_book', 'Điều dưỡng', 'Kaigo Senior 2', 'Bộ sách Hizashi — Kaigo Senior 2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000001, 800000031, NULL, 'markdown_book', 'T1. Khoá thực tập sinh mới (新しい技能実習生)', '# Sách điều dưỡng viên quốc gia · T1. Khoá thực tập sinh mới (新しい技能実習生)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー + 教育担当 mới nhận) đón khoá TTS mới gồm Linh, Tuấn (Việt Nam) và Maya (Indonesia). Lần đầu đứng ở phía "người hướng dẫn", Ngọc vừa lo lắng vừa cảm thấy kỳ lạ khi nhìn lại chính mình 5 năm trước.

---

## Bối cảnh

Tháng 4 năm 2031. Cơ sở 「ひだまり苑」. Ngọc vừa nhận thêm vai trò 技能実習指導員 (教育担当) sau khi hoàn thành 講習 7 tiếng bắt buộc. Hôm nay là ngày đầu tiên khoá TTS mới đến cơ sở.

---

## Tình huống 1 — Phòng họp · 8:30, giao nhiệm vụ 教育担当

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>が3<ruby>名<rt>めい</rt></ruby><ruby>来<rt>き</rt></ruby>ます。グエンさんが<ruby>担当指導員<rt>たんとうしどういん</rt></ruby>ですよ。<br>*(Ngọc, hôm nay có 3 thực tập sinh mới đến. Em là người phụ trách hướng dẫn nhé.)* |
| Ngọc | はい。<ruby>正直<rt>しょうじき</rt></ruby>、まだ<ruby>緊張<rt>きんちょう</rt></ruby>しています。<ruby>私<rt>わたし</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Vâng. Thành thật mà nói, em vẫn còn lo. Liệu em có ổn không ạ?)* |
| Yamamoto | グエンさんが5<ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>来<rt>き</rt></ruby>たとき、<ruby>誰<rt>だれ</rt></ruby>かがそう<ruby>思<rt>おも</rt></ruby>っていたかもしれません。でも<ruby>今<rt>いま</rt></ruby>、こうして<ruby>立<rt>た</rt></ruby>っている。それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>ですよ。<br>*(Khi Ngọc đến 5 năm trước, có lẽ ai đó cũng nghĩ vậy. Nhưng giờ em đang đứng ở đây. Đó là bằng chứng tốt nhất rồi.)* |
| Ngọc | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn chị. Em sẽ cố gắng.)* |
| Yamamoto | <ruby>指導員<rt>しどういん</rt></ruby>として<ruby>大切<rt>たいせつ</rt></ruby>なことが3つあります。「<ruby>見<rt>み</rt></ruby>せる」「やらせる」「<ruby>認<rt>みと</rt></ruby>める」。<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Có 3 điều quan trọng khi làm người hướng dẫn: "làm mẫu", "cho thử", "công nhận". Hãy nhớ nhé.)* |
| Ngọc | <ruby>見<rt>み</rt></ruby>せる、やらせる、<ruby>認<rt>みと</rt></ruby>める。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Làm mẫu, cho thử, công nhận. Em rõ rồi ạ.)* |

---

## Tình huống 2 — Sảnh đón tiếp · 9:00, TTS mới đến

| Vai | Lời thoại |
|---|---|
| Ngọc | みなさん、ようこそ「ひだまり<ruby>苑<rt>えん</rt></ruby>」へ。<ruby>担当指導員<rt>たんとうしどういん</rt></ruby>のグエン・ゴックです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào mọi người đến với "Hidamari-en". Tôi là Nguyễn Ngọc, người phụ trách hướng dẫn. Rất mong được làm việc cùng.)* |
| Linh | (nói nhỏ, cúi đầu sâu) グエンと<ruby>申<rt>もう</rt></ruby>します。ベトナムのリン・ティ・リンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em tên Nguyễn. Linh Thị Linh, đến từ Việt Nam. Mong được chỉ bảo ạ.)* |
| Tuấn | (đứng thẳng, giọng cứng) グエン・ヴァン・トゥアンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em là Nguyễn Văn Tuấn. Mong được làm việc cùng.)* |
| Maya | マヤ・サリです。インドネシアから<ruby>来<rt>き</rt></ruby>ました。<ruby>日本語<rt>にほんご</rt></ruby>、まだ<ruby>勉強<rt>べんきょう</rt></ruby>中です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em là Maya Sari. Đến từ Indonesia. Tiếng Nhật em vẫn đang học. Mong được chỉ bảo ạ.)* |
| Ngọc | (nhìn 3 người, nhẹ giọng) <ruby>私<rt>わたし</rt></ruby>も5<ruby>年前<rt>ねんまえ</rt></ruby>、みなさんと<ruby>同<rt>おな</rt></ruby>じようにここに<ruby>立<rt>た</rt></ruby>っていました。だから<ruby>不安<rt>ふあん</rt></ruby>な<ruby>気持<rt>きも</rt></ruby>ち、よく<ruby>分<rt>わ</rt></ruby>かります。<br>*(Tôi 5 năm trước cũng đứng ngay đây, như mọi người vậy. Nên tôi hiểu cảm giác lo lắng đó lắm.)* |

---

## Tình huống 3 — Buổi 朝礼 · 9:15, giới thiệu trước toàn nhân viên

| Vai | Lời thoại |
|---|---|
| Yamamoto | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>が3<ruby>名<rt>めい</rt></ruby>、<ruby>加<rt>くわ</rt></ruby>わります。グエン<ruby>指導員<rt>しどういん</rt></ruby>のもとで<ruby>研修<rt>けんしゅう</rt></ruby>します。みなさん、ご<ruby>協力<rt>きょうりょく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, từ hôm nay có thêm 3 thực tập sinh mới. Các em sẽ được đào tạo dưới sự hướng dẫn của người phụ trách Nguyễn. Mong mọi người hợp tác.)* |
| An | グエンさんが<ruby>指導員<rt>しどういん</rt></ruby>か。<ruby>頼<rt>たの</rt></ruby>もしいな。<br>*(Ngọc làm người hướng dẫn à. Đáng tin cậy nhỉ.)* |
| Sato (介護主任) | (gật đầu lạnh lùng) よろしくお<ruby>願<rt>ねが</rt></ruby>いします。グエンさん、<ruby>何<rt>なに</rt></ruby>かあれば<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Xin chào. Ngọc, có gì thì báo cáo tôi nhé.)* |
| Ngọc | はい、<ruby>佐藤<rt>さとう</rt></ruby>主任。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, Sato chủ nhiệm. Mong được hợp tác.)* |
| Đức | (ghé tai Ngọc) グエン、<ruby>緊張<rt>きんちょう</rt></ruby>してる? ふふ。<br>*(Ngọc ơi, hồi hộp không? Hehe.)* |
| Ngọc | (thì thầm lại) <ruby>少<rt>すこ</rt></ruby>しね。<ruby>静<rt>しず</rt></ruby>かにして、デュックさん。<br>*(Một chút thôi. Im đi nào, anh Đức ơi.)* |

---

## Tình huống 4 — Phòng hội ý · 10:00, phát sổ tay và giải thích lịch đào tạo

| Vai | Lời thoại |
|---|---|
| Ngọc | これは<ruby>研修<rt>けんしゅう</rt></ruby>スケジュールです。<ruby>最初<rt>さいしょ</rt></ruby>の1か<ruby>月<rt>げつ</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>と<ruby>基本<rt>きほん</rt></ruby>の<ruby>動作<rt>どうさ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Đây là lịch đào tạo. Tháng đầu tiên sẽ học quan sát và ghi nhớ các động tác cơ bản.)* |
| Tuấn | <ruby>一か月<rt>ひとつき</rt></ruby>…<ruby>見学<rt>けんがく</rt></ruby>だけですか?<br>*(Một tháng... chỉ quan sát thôi ạ?)* |
| Ngọc | <ruby>最初<rt>さいしょ</rt></ruby>は「<ruby>見<rt>み</rt></ruby>る」ことがとても<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>焦<rt>あせ</rt></ruby>らなくていいです。<br>*(Lúc đầu việc "quan sát" rất quan trọng. Không cần phải vội.)* |
| Linh | (nhỏ giọng) あの…<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Uh... em có thể hỏi không ạ?)* |
| Ngọc | もちろんです。<ruby>質問<rt>しつもん</rt></ruby>はいつでも<ruby>歓迎<rt>かんげい</rt></ruby>です。どうぞ。<br>*(Tất nhiên rồi. Hỏi lúc nào cũng được. Cứ hỏi đi.)* |
| Linh | <ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えるのが<ruby>難<rt>むずか</rt></ruby>しそうで…<br>*(Em lo là khó nhớ tên các cụ lắm...)* |
| Ngọc | それは<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>悩<rt>なや</rt></ruby>みでした。でも<ruby>毎日<rt>まいにち</rt></ruby><ruby>関<rt>かか</rt></ruby>わるうちに、<ruby>自然<rt>しぜん</rt></ruby>と<ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Đó cũng là nỗi lo ban đầu của tôi. Nhưng cứ tiếp xúc hàng ngày là sẽ tự nhiên nhớ thôi. Không sao đâu.)* |

---

## Tình huống 5 — Hành lang ユニット A · 11:00, hướng dẫn đi lại trong cơ sở

| Vai | Lời thoại |
|---|---|
| Ngọc | ここがユニットAの<ruby>生活<rt>せいかつ</rt></ruby>スペースです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>普段<rt>ふだん</rt></ruby>ここで<ruby>過<rt>す</rt></ruby>ごしています。<br>*(Đây là không gian sinh hoạt Unit A. Các cụ thường ngày sinh hoạt ở đây.)* |
| Maya | ここ、とても<ruby>明<rt>あか</rt></ruby>るいですね。きれいです。<br>*(Nơi này sáng sủa thật. Đẹp quá.)* |
| Ngọc | そうですね。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>気持<rt>きも</rt></ruby>ちよく<ruby>生活<rt>せいかつ</rt></ruby>できるよう、<ruby>環境<rt>かんきょう</rt></ruby>はとても<ruby>大切<rt>たいせつ</rt></ruby>にしています。<br>*(Đúng vậy. Chúng tôi rất coi trọng môi trường để các cụ được sống thoải mái.)* |
| Tuấn | <ruby>廊下<rt>ろうか</rt></ruby>にある<ruby>手<rt>て</rt></ruby>すりは、<ruby>全員<rt>ぜんいん</rt></ruby>が<ruby>使<rt>つか</rt></ruby>うんですか?<br>*(Thanh vịn ở hành lang, tất cả mọi người đều dùng ạ?)* |
| Ngọc | <ruby>歩行<rt>ほこう</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>な<ruby>利用者<rt>りようしゃ</rt></ruby>さん<ruby>向<rt>む</rt></ruby>けです。<ruby>使<rt>つか</rt></ruby>う<ruby>方<rt>かた</rt></ruby>によって、<ruby>介助<rt>かいじょ</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>も<ruby>違<rt>ちが</rt></ruby>います。<br>*(Dành cho các cụ đi lại không vững. Tuỳ từng người mà cách hỗ trợ cũng khác nhau.)* |
| Linh | (ghi chép chăm chú) あの、<ruby>廊下<rt>ろうか</rt></ruby>で<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>会<rt>あ</rt></ruby>ったら、どうすればいいですか?<br>*(Uh, nếu gặp các cụ ở hành lang thì làm gì ạ?)* |
| Ngọc | まず「こんにちは」と<ruby>声<rt>こえ</rt></ruby>をかけてください。<ruby>笑顔<rt>えがお</rt></ruby>で。<ruby>難<rt>むずか</rt></ruby>しいことは<ruby>言<rt>い</rt></ruby>わなくていいです。<br>*(Trước tiên chào "Xin chào" nhé. Với nụ cười. Không cần nói gì khó cả.)* |

---

## Tình huống 6 — Phòng ăn · 12:00, quan sát bữa trưa lần đầu

| Vai | Lời thoại |
|---|---|
| Hương | みなさん、<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていてください。まず<ruby>声<rt>こえ</rt></ruby>かけから<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mọi người hãy quan sát hỗ trợ bữa ăn. Trước tiên bắt đầu bằng lên tiếng báo trước nhé.)* |
| Hương | (với bà Yamada) <ruby>山田<rt>やまだ</rt></ruby>さん、お<ruby>昼<rt>ひる</rt></ruby>ごはんですよ。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>好<rt>す</rt></ruby>きなうどんですよ。<br>*(Bà Yamada, bữa trưa rồi ạ. Hôm nay có mì udon bà thích đây.)* |
| Bà Yamada | あら、うどん! うれしいわ。<br>*(Ồ, udon à! Vui quá.)* |
| Ngọc | (với TTS) <ruby>声<rt>こえ</rt></ruby>かけのときは、<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>楽<rt>たの</rt></ruby>しみになるような<ruby>言葉<rt>ことば</rt></ruby>をかけます。ただ「<ruby>食事<rt>しょくじ</rt></ruby>です」というより、ずっと<ruby>気持<rt>きも</rt></ruby>ちが<ruby>違<rt>ちが</rt></ruby>いますよね。<br>*(Khi lên tiếng, hãy nói những lời khiến các cụ vui lên. Chỉ nói "đến bữa rồi" với cách nói như vừa rồi, cảm giác hoàn toàn khác nhau nhỉ.)* |
| Maya | はい、<ruby>声<rt>こえ</rt></ruby>かけって、ただ<ruby>知<rt>し</rt></ruby>らせるだけじゃないんですね。<br>*(Vâng, lên tiếng không chỉ để thông báo, đúng không ạ.)* |
| Ngọc | そう。<ruby>心<rt>こころ</rt></ruby>のケアでもあります。よく<ruby>気<rt>き</rt></ruby>がついたね、マヤさん。<br>*(Đúng vậy. Đó cũng là chăm sóc tinh thần đấy. Nhận ra được điều đó tốt lắm, Maya.)* |

---

## Tình huống 7 — Phòng nghỉ nhân viên · 13:00, giờ giải lao, hỏi về quy định

| Vai | Lời thoại |
|---|---|
| Tuấn | グエンさん、<ruby>残業<rt>ざんぎょう</rt></ruby>はよくありますか?<br>*(Chị Ngọc, làm thêm giờ có nhiều không ạ?)* |
| Ngọc | <ruby>月<rt>つき</rt></ruby>によります。<ruby>人手<rt>ひとで</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないときは<ruby>少<rt>すこ</rt></ruby>しあります。でも、<ruby>予定<rt>よてい</rt></ruby>がある<ruby>日<rt>ひ</rt></ruby>は<ruby>早<rt>はや</rt></ruby>めに<ruby>申<rt>もう</rt></ruby>し<ruby>出<rt>で</rt></ruby>れば<ruby>調整<rt>ちょうせい</rt></ruby>できますよ。<br>*(Tuỳ tháng. Khi thiếu người thì có thêm một chút. Nhưng ngày có kế hoạch riêng thì báo sớm là điều chỉnh được.)* |
| Linh | あの…<ruby>休憩<rt>きゅうけい</rt></ruby>は<ruby>何分<rt>なんぷん</rt></ruby>ですか?<br>*(Uh... giờ nghỉ là bao nhiêu phút ạ?)* |
| Ngọc | <ruby>昼休憩<rt>ひるきゅうけい</rt></ruby>は45<ruby>分<rt>ふん</rt></ruby>です。あとは<ruby>業務中<rt>ぎょうむちゅう</rt></ruby>に<ruby>短<rt>みじか</rt></ruby>い<ruby>休憩<rt>きゅうけい</rt></ruby>を<ruby>挟<rt>はさ</rt></ruby>みます。<br>*(Nghỉ trưa 45 phút. Ngoài ra có nghỉ ngắn xen kẽ trong ca làm.)* |
| Maya | (nhìn xuống điện thoại) すみません、<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>があれば、<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Xin lỗi, nếu có từ không hiểu, em có thể hỏi không ạ?)* |
| Ngọc | もちろん。<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<ruby>分<rt>わ</rt></ruby>からないことを<ruby>黙<rt>だま</rt></ruby>っている<ruby>方<rt>ほう</rt></ruby>が<ruby>困<rt>こま</rt></ruby>ります。<br>*(Tất nhiên. Cứ hỏi, đừng ngại. Không hiểu mà im lặng mới là vấn đề.)* |

---

## Tình huống 8 — ユニット A · 14:00, hướng dẫn ghi chép hồ sơ

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>介護<rt>かいご</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>はとても<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby>、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>様子<rt>ようす</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Hồ sơ điều dưỡng rất quan trọng. Mỗi ngày ghi chép tình trạng của các cụ.)* |
| Tuấn | <ruby>漢字<rt>かんじ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>書<rt>か</rt></ruby>けるか<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Chữ kanji khó quá ạ. Thành thật mà nói, em lo không biết có viết được không.)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じでした。<ruby>初<rt>はじ</rt></ruby>めは<ruby>手書<rt>てが</rt></ruby>きではなく、タブレットで<ruby>入力<rt>にゅうりょく</rt></ruby>します。<ruby>辞書<rt>じしょ</rt></ruby>も<ruby>使<rt>つか</rt></ruby>えますよ。<br>*(Tôi hồi đầu cũng vậy. Ban đầu không phải viết tay, nhập liệu trên máy tính bảng. Dùng được từ điển nữa.)* |
| Linh | よかった…。<ruby>毎日<rt>まいにち</rt></ruby><ruby>書<rt>か</rt></ruby>くんですか?<br>*(May quá... Mỗi ngày đều phải ghi ạ?)* |
| Ngọc | はい。でも<ruby>慣<rt>な</rt></ruby>れたら<ruby>早<rt>はや</rt></ruby>くなります。よく<ruby>使<rt>つか</rt></ruby>う<ruby>表現<rt>ひょうげん</rt></ruby>をまとめたプリントを<ruby>渡<rt>わた</rt></ruby>します。<br>*(Vâng. Nhưng quen rồi sẽ nhanh thôi. Tôi sẽ phát tờ tổng hợp các cách diễn đạt hay dùng.)* |
| Maya | ありがとうございます。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn chị. Em nhẹ người quá.)* |

---

## Tình huống 9 — Sảnh · 15:30, TTS lần đầu tiếp xúc 利用者

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>挨拶<rt>あいさつ</rt></ruby>してみましょう。<ruby>笑顔<rt>えがお</rt></ruby>で、ゆっくり、はっきり<ruby>話<rt>はな</rt></ruby>してください。<br>*(Vậy thì thử chào các cụ đi. Mặt cười, nói chậm, nói rõ ràng nhé.)* |
| Linh | (run rẩy tiến đến bà Yoshida) よ、よしださん…こんにちは。リンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Bà, bà Yoshida... xin chào ạ. Em tên Linh.)* |
| Bà Yoshida | まあ、かわいい<ruby>子<rt>こ</rt></ruby>ね。ベトナムから?<br>*(Ôi, bé xinh nhỉ. Từ Việt Nam à?)* |
| Linh | はい、そうです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đúng ạ. Mong được chỉ bảo.)* |
| Bà Yoshida | こちらこそ。よろしくね。<br>*(Tôi cũng vậy. Mong em nhé.)* |
| Ngọc | (gật đầu khen Linh) よかったですよ、リンさん。ちゃんと<ruby>伝<rt>つた</rt></ruby>わりました。<br>*(Tốt lắm đó, Linh. Em truyền đạt được rồi.)* |

---

## Tình huống 10 — Văn phòng · 16:30, báo cáo cuối ngày với Sato 主任

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>主任、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。3<ruby>名<rt>めい</rt></ruby>とも、<ruby>特<rt>とく</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>なく<ruby>初日<rt>しょにち</rt></ruby>を<ruby>終<rt>お</rt></ruby>えました。<br>*(Sato chủ nhiệm, tôi báo cáo về buổi đào tạo nhân viên mới hôm nay. Cả 3 người đều hoàn thành ngày đầu không có vấn đề gì đặc biệt.)* |
| Sato | リンさんはどうでしたか?<ruby>内気<rt>うちき</rt></ruby>そうな<ruby>印象<rt>いんしょう</rt></ruby>でしたが。<br>*(Linh thế nào? Tôi thấy bạn ấy có vẻ nhút nhát.)* |
| Ngọc | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しているようです。でも<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>挨拶<rt>あいさつ</rt></ruby>は<ruby>丁寧<rt>ていねい</rt></ruby>でした。これから<ruby>伸<rt>の</rt></ruby>びると<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng, có vẻ hơi căng thẳng. Nhưng cách chào các cụ rất lịch sự. Tôi nghĩ bạn ấy sẽ phát triển tốt.)* |
| Sato | トゥアンさんは?<br>*(Còn Tuấn?)* |
| Ngọc | <ruby>積極的<rt>せっきょくてき</rt></ruby>で<ruby>質問<rt>しつもん</rt></ruby>もよくします。ただ、<ruby>少<rt>すこ</rt></ruby>し<ruby>焦<rt>あせ</rt></ruby>りが<ruby>見<rt>み</rt></ruby>えます。<ruby>段階<rt>だんかい</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>んで<ruby>指導<rt>しどう</rt></ruby>していきます。<br>*(Bạn ấy chủ động và hay đặt câu hỏi. Nhưng thấy hơi nóng vội. Tôi sẽ hướng dẫn từng bước.)* |
| Sato | わかりました。グエンさん、<ruby>指導員<rt>しどういん</rt></ruby>として<ruby>記録<rt>きろく</rt></ruby>もちゃんとつけておいてください。<br>*(Rõ rồi. Ngọc, với tư cách người phụ trách, hãy ghi chép đầy đủ nhé.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>毎日<rt>まいにち</rt></ruby><ruby>記録<rt>きろく</rt></ruby>します。<br>*(Vâng, em rõ rồi ạ. Em sẽ ghi chép hàng ngày.)* |

---

## Tình huống 11 — Phòng thay đồ · 17:30, tan ca

| Vai | Lời thoại |
|---|---|
| An | グエンさん、<ruby>今日<rt>きょう</rt></ruby>どうだった? <ruby>初<rt>はじ</rt></ruby>めての<ruby>指導員<rt>しどういん</rt></ruby>。<br>*(Ngọc ơi, hôm nay thế nào? Lần đầu làm người hướng dẫn.)* |
| Ngọc | <ruby>不思議<rt>ふしぎ</rt></ruby>な<ruby>感覚<rt>かんかく</rt></ruby>でした。あの3<ruby>人<rt>にん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていると、5<ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>して。<br>*(Cảm giác kỳ lạ lắm. Nhìn 3 bạn ấy, tôi nhớ lại mình 5 năm trước.)* |
| An | そうだよね。グエンさんも<ruby>最初<rt>さいしょ</rt></ruby>はすごく<ruby>緊張<rt>きんちょう</rt></ruby>してたね。<br>*(Phải không nào. Ngọc hồi đầu cũng hồi hộp lắm đấy.)* |
| Ngọc | だからこそ、<ruby>私<rt>わたし</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>くない<ruby>指導員<rt>しどういん</rt></ruby>でいたいです。<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>けると<ruby>思<rt>おも</rt></ruby>ってほしくて。<br>*(Vì vậy, tôi muốn là người hướng dẫn không đáng sợ. Muốn các bạn ấy thấy có thể hỏi bất cứ điều gì.)* |
| An | それ、いい<ruby>指導員<rt>しどういん</rt></ruby>だよ。きっと<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Đó là người hướng dẫn tốt đó. Chắc chắn ổn thôi.)* |

---

## Tình huống 12 — Tiếng Việt · Điện thoại lúc 20:00, Ngọc gọi về cho mẹ

| Vai | Lời thoại |
|---|---|
| Mẹ (qua điện thoại) | Hôm nay sao rồi con? Hồi hộp không? |
| Ngọc | Hồi hộp lắm mẹ ơi. Nhưng mà... nhìn mấy bạn mới, con cứ nhớ lại hồi đầu mình sang đây. |
| Mẹ | Bạn nào dễ thương không? |
| Ngọc | Có bạn Linh, người Việt mình, nhút nhát lắm. Giống con hồi xưa. Còn bạn Tuấn thì trông lo lắng chuyện tiền bạc, cũng hiểu được. |
| Mẹ | Con làm được không? Làm thầy người khác mà. |
| Ngọc | Con không biết nữa. Nhưng mà chị Yamamoto nói điều hay lắm — "Em đứng được đây là bằng chứng rồi". Con thấy vững hơn một chút. |
| Mẹ | Ừ, con làm được. Mẹ tin con. |
| Ngọc | Cảm ơn mẹ. Hôm nay con mệt nhưng vui. Mẹ và em ở nhà khỏe không? |

---', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000002, 800000031, NULL, 'markdown_book', 'T2. Dạy thực tập sinh (実習生を教える)', '# Sách điều dưỡng viên quốc gia · T2. Dạy thực tập sinh (実習生を教える)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, 教育担当) hướng dẫn Linh, Tuấn, Maya các quy trình 移乗介助 và 食事介助 theo phương pháp "làm mẫu → cho thử → nhận xét". Ngọc đối mặt với chính mình ngày xưa qua từng học trò và dần hiểu ra rằng 指導 không phải là dạy kỹ thuật, mà là xây dựng tự tin.

---

## Bối cảnh

Tháng 5 năm 2031. Khoá TTS đã qua tháng đầu quan sát. Ngọc bắt đầu dạy thực hành 移乗介助 (di chuyển từ giường sang xe lăn) và 食事介助 (hỗ trợ bữa ăn). Sato 主任 theo dõi từ xa.

---

## Tình huống 1 — Phòng đào tạo · 9:00, giải thích 移乗介助 lý thuyết

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は「<ruby>移乗介助<rt>いじょうかいじょ</rt></ruby>」を<ruby>学<rt>まな</rt></ruby>びます。ベッドから<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>る<ruby>介助<rt>かいじょ</rt></ruby>です。<br>*(Hôm nay chúng ta học "hỗ trợ di chuyển". Đây là hỗ trợ chuyển từ giường sang xe lăn.)* |
| Tuấn | <ruby>重<rt>おも</rt></ruby>い<ruby>方<rt>かた</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Ngay cả người nặng cũng ổn ạ?)* |
| Ngọc | ポイントは「<ruby>力<rt>ちから</rt></ruby>で<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げない」ことです。<ruby>体<rt>からだ</rt></ruby>の<ruby>重心<rt>じゅうしん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>動<rt>うご</rt></ruby>きを<ruby>引<rt>ひ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>します。<br>*(Điểm mấu chốt là "không nhấc lên bằng sức". Dùng trọng tâm cơ thể, khơi gợi chuyển động của người được chăm sóc.)* |
| Linh | トランスファーベルトって<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Dây transfer belt là gì ạ?)* |
| Ngọc | <ruby>移乗<rt>いじょう</rt></ruby>のときに<ruby>腰<rt>こし</rt></ruby>に<ruby>巻<rt>ま</rt></ruby>くベルトです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>動<rt>うご</rt></ruby>けるよう<ruby>補助<rt>ほじょ</rt></ruby>します。<ruby>実物<rt>じつぶつ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Là dây quấn quanh hông khi di chuyển. Giúp người được chăm sóc di chuyển an toàn. Tôi sẽ giải thích vừa xem thực tế.)* |
| Maya | スライディングシートは<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Tấm trượt có cần không ạ?)* |
| Ngọc | <ruby>寝<rt>ね</rt></ruby>たきりの<ruby>方<rt>かた</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>は<ruby>使<rt>つか</rt></ruby>います。<ruby>今日<rt>きょう</rt></ruby>は<ruby>立位<rt>たちい</rt></ruby>が<ruby>保<rt>たも</rt></ruby>てる<ruby>方<rt>かた</rt></ruby>のケースから<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Với người nằm liệt thì dùng. Hôm nay hãy bắt đầu với trường hợp người giữ được tư thế đứng.)* |

---

## Tình huống 2 — Phòng thực hành · 9:30, Ngọc làm mẫu 移乗介助

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>私<rt>わたし</rt></ruby>がまず<ruby>見本<rt>みほん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せます。よく<ruby>見<rt>み</rt></ruby>てください。<ruby>声<rt>こえ</rt></ruby>かけのタイミングに<ruby>注目<rt>ちゅうもく</rt></ruby>してください。<br>*(Tôi sẽ làm mẫu trước. Quan sát kỹ nhé. Chú ý thời điểm lên tiếng.)* |
| Ngọc | (với người dùng giả định — Đức đóng vai) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りましょう。ゆっくりでいいですよ。<br>*(Ông Tanaka, mình chuyển sang xe lăn nhé. Cứ từ từ thôi ạ.)* |
| Đức (đóng vai) | はい…。<br>*(Vâng...)*|
| Ngọc | <ruby>足<rt>あし</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>につけて、<ruby>前<rt>まえ</rt></ruby>に<ruby>体<rt>からだ</rt></ruby>を<ruby>傾<rt>かたむ</rt></ruby>けてください。<ruby>私<rt>わたし</rt></ruby>は<ruby>腰<rt>こし</rt></ruby>のベルトを<ruby>持<rt>も</rt></ruby>ちます。<br>*(Đặt chân xuống sàn, nghiêng người về phía trước. Tôi giữ dây đai hông ạ.)* |
| Ngọc | (sau khi hoàn thành, quay lại) <ruby>車椅子<rt>くるまいす</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>確認<rt>かくにん</rt></ruby>して、ブレーキをかけてから<ruby>始<rt>はじ</rt></ruby>めること。<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>最優先<rt>さいゆうせん</rt></ruby>です。<br>*(Kiểm tra hướng xe lăn, khoá phanh rồi mới bắt đầu. An toàn là trên hết.)* |
| Linh | (ghi chép) ブレーキを<ruby>先<rt>さき</rt></ruby>に…<br>*(Phanh trước...)* |
| Maya | <ruby>声<rt>こえ</rt></ruby>かけのとき、すごく<ruby>柔<rt>やわ</rt></ruby>らかい<ruby>声<rt>こえ</rt></ruby>でしたね。<br>*(Khi lên tiếng, giọng chị mềm mỏng thật nhỉ.)* |

---

## Tình huống 3 — Phòng thực hành · 10:00, Tuấn thử lần đầu

| Vai | Lời thoại |
|---|---|
| Ngọc | では、トゥアンさん、やってみましょう。<ruby>焦<rt>あせ</rt></ruby>らなくていいですよ。<br>*(Thôi nào Tuấn, thử đi. Không cần vội.)* |
| Tuấn | (mạnh tay hơn cần thiết) はい。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>移<rt>うつ</rt></ruby>ります。いきます!<br>*(Vâng. Ông Tanaka, chuyển nhé. Đi nào!)* |
| Đức (đóng vai) | (giả vờ giật mình) わっ。<br>*(Ối.)* |
| Ngọc | (nhẹ nhàng) ちょっと<ruby>待<rt>ま</rt></ruby>ってください。<ruby>声<rt>こえ</rt></ruby>かけが<ruby>少<rt>すこ</rt></ruby>し<ruby>速<rt>はや</rt></ruby>かったです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>準備<rt>じゅんび</rt></ruby>できているか、<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>動<rt>うご</rt></ruby>いてください。<br>*(Khoan đã. Lên tiếng hơi nhanh. Hãy xác nhận người được chăm sóc đã sẵn sàng rồi mới di chuyển nhé.)* |
| Tuấn | (thở dài nhỏ) はい…すみません。<br>*(Vâng... xin lỗi.)* |
| Ngọc | <ruby>謝<rt>あやま</rt></ruby>らなくていいですよ。<ruby>最初<rt>さいしょ</rt></ruby>はみんなそうです。もう<ruby>一度<rt>いちど</rt></ruby>、ゆっくりやってみて。<br>*(Không cần xin lỗi. Ai lúc đầu cũng vậy. Thử lại một lần nữa, chậm thôi.)* |
| Tuấn | (lần này nhẹ nhàng hơn) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りましょうか。<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Ông Tanaka, mình chuyển sang xe lăn nhé. Ông sẵn sàng chưa ạ?)* |
| Đức (đóng vai) | うん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<br>*(Ừ, được rồi.)* |
| Ngọc | よくなりました。<ruby>声<rt>こえ</rt></ruby>かけが<ruby>丁寧<rt>ていねい</rt></ruby>でしたよ。<br>*(Tốt hơn rồi. Lên tiếng lịch sự lắm.)* |

---

## Tình huống 4 — Phòng thực hành · 10:30, Linh thử nhưng run tay

| Vai | Lời thoại |
|---|---|
| Ngọc | リンさん、<ruby>次<rt>つぎ</rt></ruby>はあなたの<ruby>番<rt>ばん</rt></ruby>です。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Linh, đến lượt em rồi. Không sao đâu.)* |
| Linh | (tay run) …はい。<ruby>田中<rt>たなか</rt></ruby>さん、あの…<ruby>車椅子<rt>くるまいす</rt></ruby>に…<ruby>移<rt>うつ</rt></ruby>りましょうか…<br>*(... Vâng. Ông Tanaka, uh... sang xe lăn... nhé ạ...)* |
| Ngọc | (đứng cạnh, thì thầm) <ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていますね。<ruby>深呼吸<rt>しんこきゅう</rt></ruby>してから、ゆっくり。<br>*(Tay đang run nhỉ. Thở sâu đi, rồi từ từ.)* |
| Linh | (thở rồi thử lại, nhẹ hơn) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>準備<rt>じゅんび</rt></ruby>できましたか? ゆっくりでいいですよ。<br>*(Ông Tanaka, ông sẵn sàng chưa ạ? Từ từ thôi ạ.)* |
| Đức (đóng vai) | ああ、いいよ。<ruby>上手<rt>じょうず</rt></ruby>だね。<br>*(Ừ, được. Khéo nhỉ.)* |
| Ngọc | (sau đó, riêng với Linh) リンさん、<ruby>良<rt>よ</rt></ruby>かったですよ。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが「<ruby>上手<rt>じょうず</rt></ruby>だね」と<ruby>言<rt>い</rt></ruby>ってくれましたよ。<br>*(Linh, làm tốt lắm. Người được chăm sóc còn khen "khéo nhỉ" đó.)* |
| Linh | (nhẹ nhõm) ほんとですか…<br>*(Thật không ạ...)* |
| Ngọc | <ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えても、<ruby>声<rt>こえ</rt></ruby>かけはちゃんとできました。それで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Dù tay run nhưng vẫn lên tiếng đúng cách. Vậy là đủ rồi.)* |

---

## Tình huống 5 — Phòng ăn · 11:30, giải thích 食事介助 lý thuyết

| Vai | Lời thoại |
|---|---|
| Ngọc | 「<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>」は<ruby>嚥下<rt>えんげ</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>誤嚥<rt>ごえん</rt></ruby>というのは<ruby>知<rt>し</rt></ruby>っていますか?<br>*(Trong "hỗ trợ bữa ăn" cần chú ý đến nuốt. Các bạn có biết "nuốt nhầm" không?)* |
| Tuấn | <ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>が<ruby>気管<rt>きかん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってしまうこと…ですか?<br>*(Là thức ăn lọt vào khí quản... phải không ạ?)* |
| Ngọc | そうです。<ruby>誤嚥性肺炎<rt>ごえんせいはいえん</rt></ruby>につながることもあります。だからスピードと<ruby>姿勢<rt>しせい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>がとても<ruby>重要<rt>じゅうよう</rt></ruby>です。<br>*(Đúng rồi. Có thể dẫn đến viêm phổi do nuốt nhầm. Vì vậy kiểm tra tốc độ và tư thế rất quan trọng.)* |
| Maya | <ruby>姿勢<rt>しせい</rt></ruby>はどうすればいいですか?<br>*(Tư thế nên như thế nào ạ?)* |
| Ngọc | <ruby>原則<rt>げんそく</rt></ruby>は<ruby>上半身<rt>じょうはんしん</rt></ruby>を<ruby>起<rt>お</rt></ruby>こして、<ruby>顎<rt>あご</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>引<rt>ひ</rt></ruby>いた<ruby>状態<rt>じょうたい</rt></ruby>です。<ruby>実際<rt>じっさい</rt></ruby>にやってみるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>早<rt>はや</rt></ruby>いです。<br>*(Nguyên tắc là phần trên thân thẳng, cằm hơi cúi xuống. Thực hành là cách nhanh nhất.)* |
| Linh | ゆっくり<ruby>食<rt>た</rt></ruby>べさせることが<ruby>大切<rt>たいせつ</rt></ruby>ですね?<br>*(Để ăn chậm là quan trọng nhỉ?)* |
| Ngọc | そうです。「<ruby>急<rt>いそ</rt></ruby>がせない」「<ruby>一口<rt>ひとくち</rt></ruby>ずつ」「<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>んだか<ruby>確認<rt>かくにん</rt></ruby>する」。この3つを<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Đúng. "Không giục vội", "từng miếng một", "xác nhận đã nuốt xong". Hãy nhớ 3 điều này nhé.)* |

---

## Tình huống 6 — Phòng ăn · 12:00, Ngọc làm mẫu 食事介助

| Vai | Lời thoại |
|---|---|
| Ngọc | (với bà Fujii) <ruby>藤井<rt>ふじい</rt></ruby>さん、お<ruby>昼<rt>ひる</rt></ruby>ごはんです。<ruby>今日<rt>きょう</rt></ruby>はおいしそうなお<ruby>魚<rt>さかな</rt></ruby>がありますよ。<br>*(Bà Fujii, bữa trưa rồi ạ. Hôm nay có cá trông ngon lắm đây.)* |
| Bà Fujii | あら、うれしいわ。<br>*(Ôi, vui quá.)* |
| Ngọc | では、<ruby>一口<rt>ひとくち</rt></ruby>どうぞ。ゆっくりでいいですよ。<br>*(Nào, một miếng thôi. Từ từ thôi ạ.)* |
| Ngọc | (với TTS đang quan sát) <ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>口<rt>くち</rt></ruby>が<ruby>閉<rt>と</rt></ruby>じるのを<ruby>待<rt>ま</rt></ruby>ちます。それから<ruby>次<rt>つぎ</rt></ruby>の<ruby>一口<rt>ひとくち</rt></ruby>です。<br>*(Đợi miệng người được chăm sóc khép lại. Rồi mới đến miếng tiếp.)* |
| Tuấn | (ghi chép) <ruby>口<rt>くち</rt></ruby>が<ruby>閉<rt>と</rt></ruby>じてから…<br>*(Sau khi miệng khép lại...)* |
| Ngọc | あと、<ruby>本人<rt>ほんにん</rt></ruby>が<ruby>食<rt>た</rt></ruby>べたいものを<ruby>選<rt>えら</rt></ruby>んでもらいます。<ruby>小<rt>ちい</rt></ruby>さな<ruby>選択<rt>せんたく</rt></ruby>でも「<ruby>自分<rt>じぶん</rt></ruby>で<ruby>決<rt>き</rt></ruby>める」ことが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Và để người đó tự chọn muốn ăn gì. Dù là lựa chọn nhỏ, việc "tự quyết định" rất quan trọng.)* |

---

## Tình huống 7 — Phòng ăn · 12:30, Maya thử 食事介助

| Vai | Lời thoại |
|---|---|
| Ngọc | マヤさん、<ruby>次<rt>つぎ</rt></ruby>あなたが<ruby>挑戦<rt>ちょうせん</rt></ruby>してください。<ruby>私<rt>わたし</rt></ruby>はそばで<ruby>見<rt>み</rt></ruby>ています。<br>*(Maya, em thử tiếp nhé. Tôi đứng cạnh xem.)* |
| Maya | はい。(với bà Yoshida) <ruby>吉田<rt>よしだ</rt></ruby>さん、ごはんですよ。<ruby>一口<rt>ひとくち</rt></ruby>、いかがですか?<br>*(Vâng. Bà Yoshida, bữa cơm rồi ạ. Một miếng nhé, bà dùng ạ?)* |
| Bà Yoshida | うん、ありがとうね。<br>*(Ừ, cảm ơn em.)* |
| Maya | (đút cẩn thận, đợi) <ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>めましたか?<br>*(Nuốt được chưa ạ?)* |
| Bà Yoshida | うん、おいしいよ。<br>*(Ừ, ngon lắm.)* |
| Ngọc | (nhẹ nhàng) マヤさん、よかったです。<ruby>確認<rt>かくにん</rt></ruby>のタイミングもよかったですよ。<br>*(Maya, tốt lắm. Thời điểm kiểm tra cũng rất đúng đó.)* |
| Maya | (mỉm cười) よかった。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>しましたが、<ruby>吉田<rt>よしだ</rt></ruby>さんが「おいしい」と<ruby>言<rt>い</rt></ruby>ってくれたので。<br>*(May quá. Lúc đầu em hồi hộp, nhưng bà Yoshida nói "ngon" rồi...)* |

---

## Tình huống 8 — Hành lang · 14:00, Ngọc trao đổi với Hương về phương pháp

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>指導<rt>しどう</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>じゃない? ちゃんとできてる?<br>*(Ngọc ơi, hướng dẫn có vất vả không? Làm được chứ?)* |
| Ngọc | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>上手<rt>じょうず</rt></ruby>にできたときに、どうほめればいいか、まだ<ruby>迷<rt>まよ</rt></ruby>います。<br>*(Thành thật mà nói, khó thật. Khi làm tốt, tôi vẫn còn phân vân nên khen thế nào.)* |
| Hương | <ruby>具体的<rt>ぐたいてき</rt></ruby>にほめるといいよ。「<ruby>声<rt>こえ</rt></ruby>かけがよかった」とか「タイミングが<ruby>良<rt>よ</rt></ruby>かった」とか。「よかったです」だけじゃ<ruby>伝<rt>つた</rt></ruby>わりにくい。<br>*(Khen cụ thể vào. "Cách lên tiếng tốt" hay "thời điểm đúng". Chỉ nói "tốt lắm" thôi thì khó truyền đạt.)* |
| Ngọc | そうか…<ruby>私<rt>わたし</rt></ruby>もそうほめてもらいたかったんだな、と<ruby>思<rt>おも</rt></ruby>いながら<ruby>聞<rt>き</rt></ruby>いていました。<br>*(À đúng rồi... tôi vừa nghe vừa nghĩ hồi xưa mình cũng muốn được khen vậy.)* |
| Hương | グエンさんは<ruby>良<rt>よ</rt></ruby>い<ruby>指導員<rt>しどういん</rt></ruby>になるよ。<ruby>経験<rt>けいけん</rt></ruby>を<ruby>言葉<rt>ことば</rt></ruby>にできる<ruby>人<rt>ひと</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>い。<br>*(Ngọc sẽ là người hướng dẫn tốt đó. Người biến kinh nghiệm thành lời nói là người mạnh mẽ.)* |

---

## Tình huống 9 — Văn phòng · 16:00, Sato 主任 quan sát và nhận xét

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>しました。トゥアンさんへの<ruby>対応<rt>たいおう</rt></ruby>はよかったです。<ruby>注意<rt>ちゅうい</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>が<ruby>適切<rt>てきせつ</rt></ruby>でした。<br>*(Ngọc, tôi đã theo dõi việc hướng dẫn hôm nay. Cách xử lý với Tuấn tốt. Cách nhắc nhở phù hợp.)* |
| Ngọc | ありがとうございます。<ruby>感情的<rt>かんじょうてき</rt></ruby>にならず、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えることを<ruby>意識<rt>いしき</rt></ruby>しました。<br>*(Cảm ơn. Tôi đã cố ý không để cảm xúc chi phối và truyền đạt cụ thể.)* |
| Sato | ただ、リンさんには<ruby>声<rt>こえ</rt></ruby>かけが<ruby>多<rt>おお</rt></ruby>すぎたかもしれません。<ruby>自分<rt>じぶん</rt></ruby>でやる<ruby>時間<rt>じかん</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Tuy nhiên, với Linh có thể bạn lên tiếng hỗ trợ hơi nhiều. Cần để em tự làm nữa.)* |
| Ngọc | (gật đầu) はい、<ruby>確<rt>たし</rt></ruby>かにそうでした。<ruby>心配<rt>しんぱい</rt></ruby>するあまり、<ruby>過干渉<rt>かかんしょう</rt></ruby>になっていたかもしれません。<br>*(Vâng, đúng thật. Tôi lo quá mức có thể đã can thiệp thái quá.)* |
| Sato | 「<ruby>失敗<rt>しっぱい</rt></ruby>させない」より「<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>ばせる」が<ruby>指導<rt>しどう</rt></ruby>です。<br>*(Hướng dẫn không phải là "không để thất bại" mà là "để học từ thất bại".)* |
| Ngọc | …<ruby>深<rt>ふか</rt></ruby>い<ruby>言葉<rt>ことば</rt></ruby>ですね。<ruby>心<rt>こころ</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(... Lời sâu sắc quá. Em khắc vào lòng.)* |

---

## Tình huống 10 — Phòng thay đồ · 17:30, Tuấn hỏi thêm sau giờ làm

| Vai | Lời thoại |
|---|---|
| Tuấn | グエンさん、ちょっとよろしいですか。<ruby>今日<rt>きょう</rt></ruby>の<ruby>移乗<rt>いじょう</rt></ruby>で、<ruby>力<rt>ちから</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないと<ruby>思<rt>おも</rt></ruby>うことがあって。<br>*(Chị Ngọc, cho em hỏi một chút. Lúc di chuyển hôm nay, em thấy mình không đủ sức.)* |
| Ngọc | <ruby>力<rt>ちから</rt></ruby>で<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げようとしてましたね。<ruby>腰<rt>こし</rt></ruby>を<ruby>曲<rt>ま</rt></ruby>げて<ruby>持<rt>も</rt></ruby>つと<ruby>腰痛<rt>ようつう</rt></ruby>になります。<ruby>体<rt>からだ</rt></ruby>の<ruby>重心<rt>じゅうしん</rt></ruby>を<ruby>低<rt>ひく</rt></ruby>くして、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>近<rt>ちか</rt></ruby>くなることがポイントです。<br>*(Em đang cố nhấc bằng sức. Cúi lưng xuống sẽ bị đau lưng. Điểm mấu chốt là hạ trọng tâm cơ thể xuống và tiếp cận gần người được chăm sóc.)* |
| Tuấn | <ruby>腰<rt>こし</rt></ruby>に<ruby>来<rt>く</rt></ruby>るのが<ruby>心配<rt>しんぱい</rt></ruby>です。<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けられますか?<br>*(Em lo bị đau lưng. Có làm được lâu dài không ạ?)* |
| Ngọc | ボディメカニクスを<ruby>身<rt>み</rt></ruby>につければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>も5<ruby>年<rt>ねん</rt></ruby><ruby>経<rt>た</rt></ruby>って、まだ<ruby>腰痛<rt>ようつう</rt></ruby>なしです。<br>*(Nắm được cơ học cơ thể thì không sao. Tôi 5 năm rồi vẫn chưa bị đau lưng.)* |
| Tuấn | (nhẹ thở) そうですか。よかった。<br>*(Vậy ạ. May quá.)* |

---

## Tình huống 11 — Hành lang · 17:45, Ngọc phản tư sau ngày dài

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。どうでしたか、<ruby>今日<rt>きょう</rt></ruby>は。<br>*(Ngọc, cảm ơn vất vả. Hôm nay thế nào?)* |
| Ngọc | <ruby>教<rt>おし</rt></ruby>えながら、<ruby>自分<rt>じぶん</rt></ruby>が<ruby>再確認<rt>さいかくにん</rt></ruby>することが<ruby>多<rt>おお</rt></ruby>かったです。なぜこうするのか、ちゃんと<ruby>言語化<rt>げんごか</rt></ruby>しなければいけなくて。<br>*(Vừa dạy, tôi vừa phải tự xác nhận lại nhiều điều. Phải diễn đạt bằng lời tại sao lại làm vậy.)* |
| Yamamoto | それが「<ruby>教<rt>おし</rt></ruby>えることで<ruby>自分<rt>じぶん</rt></ruby>も<ruby>成長<rt>せいちょう</rt></ruby>する」ということです。グエンさんも<ruby>今日<rt>きょう</rt></ruby>、<ruby>成長<rt>せいちょう</rt></ruby>しましたよ。<br>*(Đó chính là "dạy người khác là bản thân cũng trưởng thành". Hôm nay Ngọc cũng đã trưởng thành đấy.)* |
| Ngọc | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>主任から「<ruby>失敗<rt>しっぱい</rt></ruby>させない」より「<ruby>学<rt>まな</rt></ruby>ばせる」という<ruby>言葉<rt>ことば</rt></ruby>をもらいました。<ruby>深<rt>ふか</rt></ruby>いですね。<br>*(Cảm ơn anh. Sato chủ nhiệm có nói "để học từ thất bại" hơn là "không để thất bại". Sâu sắc thật.)* |
| Yamamoto | Sato主任はきびしいけど、<ruby>良<rt>よ</rt></ruby>いことを<ruby>言<rt>い</rt></ruby>いますよ。だんだん<ruby>分<rt>わ</rt></ruby>かってきますよ。<br>*(Sato chủ nhiệm nghiêm khắc nhưng nói hay lắm. Từ từ sẽ hiểu thôi.)* |

---

## Tình huống 12 — Tiếng Việt · Tin nhắn với Hương lúc 21:00

| Vai | Lời thoại |
|---|---|
| Hương (tin nhắn) | Hôm nay dạy được không Ngọc? |
| Ngọc (nhắn lại) | Được Hương ơi. Nhưng mà hôm nay mình học được nhiều hơn cả học trò luôn. Lúc dạy mới thấy mình hiểu hay chưa hiểu chỗ nào. |
| Hương | Ha, vậy là mày vừa là thầy vừa là trò luôn. Giỏi quá. |
| Ngọc | Sato chủ nhiệm có nhắc là đừng can thiệp quá, để học trò tự thử. Mình cứ lo cho bạn Linh nên nhảy vào nhiều quá. |
| Hương | Ừ, con người ta học được từ té ngã mà. Mày cũng vậy hồi xưa đó. |
| Ngọc | Đúng rồi. Hương ơi, mày dạo này sao rồi? Có định thi thêm gì không? |
| Hương | Đang tính ôn 介護福祉士 lần hai. Mình cùng nhau cố nhé. |

---', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000003, 800000031, NULL, 'markdown_book', 'T3. Cú sốc văn hoá của thực tập sinh (実習生のカルチャーショック)', '# Sách điều dưỡng viên quốc gia · T3. Cú sốc văn hoá của thực tập sinh (実習生のカルチャーショック)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, 教育担当) đối mặt với khủng hoảng tâm lý của Linh — bạn không thể vượt qua việc thực hiện おむつ交換 (thay bỉm). Ngọc nhớ lại chính mình 5 năm trước (sách 27) và dùng trải nghiệm thật của bản thân để gỡ rối, không phải lý thuyết.

---

## Bối cảnh

Tháng 6 năm 2031. Tuần lễ thứ 3 thực hành. Khoá TTS bắt đầu tham gia các công việc chăm sóc cơ thể. Linh rơi vào khủng hoảng sau buổi quan sát おむつ交換 đầu tiên — tương tự Ngọc tập 27, chương 3.

---

## Tình huống 1 — Hành lang · 9:00, Linh không vào phòng được

| Vai | Lời thoại |
|---|---|
| Ngọc | (thấy Linh đứng tần ngần trước cửa) リンさん、どうしましたか?<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いですよ。<br>*(Linh, có chuyện gì vậy? Em trông mặt không tốt lắm đó.)* |
| Linh | (mắt đỏ hoe) …すみません。<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れなくて。<br>*(... Xin lỗi. Em không vào được.)* |
| Ngọc | <ruby>無理<rt>むり</rt></ruby>しなくていいです。ちょっとここで<ruby>話<rt>はな</rt></ruby>しましょう。<br>*(Không cần cố gắng quá. Mình nói chuyện ở đây một chút nhé.)* |
| Linh | (giọng run) <ruby>今朝<rt>けさ</rt></ruby>、<ruby>山本<rt>やまもと</rt></ruby>さんのおむつ<ruby>交換<rt>こうかん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていて…<ruby>体<rt>からだ</rt></ruby>が<ruby>固<rt>かた</rt></ruby>まってしまいました。<br>*(Sáng nay xem thay bỉm cho bác Yamamoto... người em cứng lại hết.)* |
| Ngọc | (gật đầu, không vội) それは<ruby>自然<rt>しぜん</rt></ruby>なことですよ。<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じでした。<br>*(Điều đó rất tự nhiên. Tôi cũng vậy.)* |
| Linh | (ngạc nhiên) グエンさんも…?<br>*(Chị Ngọc cũng...?)* |

---

## Tình huống 2 — Phòng nghỉ nhân viên · 9:10, Ngọc kể chuyện của mình

| Vai | Lời thoại |
|---|---|
| Ngọc | 5<ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めておむつ<ruby>交換<rt>こうかん</rt></ruby>を<ruby>見<rt>み</rt></ruby>たとき、<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になりました。<br>*(5 năm trước, lần đầu tôi xem thay bỉm, đầu óc tôi trắng xoá hết.)* |
| Linh | そうだったんですか…<br>*(Vậy sao...)* |
| Ngọc | トイレも<ruby>自分<rt>じぶん</rt></ruby>で<ruby>行<rt>い</rt></ruby>けない<ruby>方<rt>かた</rt></ruby>を<ruby>助<rt>たす</rt></ruby>けるのは「<ruby>恥<rt>は</rt></ruby>ずかしいこと」だと、<ruby>無意識<rt>むいしき</rt></ruby>に<ruby>思<rt>おも</rt></ruby>っていたと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi nghĩ mình đã vô thức nghĩ rằng việc giúp người không thể tự đi vệ sinh là "điều xấu hổ".)* |
| Linh | (gật đầu nhỏ) …そうかもしれません。<br>*(... Có thể vậy.)* |
| Ngọc | でも<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>言<rt>い</rt></ruby>ってくれたことがあります。「<ruby>人間<rt>にんげん</rt></ruby>は<ruby>生<rt>う</rt></ruby>まれるときも<ruby>死<rt>し</rt></ruby>ぬときも、<ruby>人<rt>ひと</rt></ruby>に<ruby>助<rt>たす</rt></ruby>けてもらう。それを<ruby>手伝<rt>てつだ</rt></ruby>うことは<ruby>尊<rt>とうと</rt></ruby>い<ruby>仕事<rt>しごと</rt></ruby>だ」と。<br>*(Nhưng có senpai đã nói với tôi: "Con người khi sinh ra và khi chết đi đều cần người giúp đỡ. Việc hỗ trợ điều đó là công việc cao quý".)* |
| Linh | (im lặng ngẫm nghĩ) …<ruby>尊<rt>とうと</rt></ruby>い<ruby>仕事<rt>しごと</rt></ruby>…<br>*(... Công việc cao quý...)* |
| Ngọc | リンさんが<ruby>感<rt>かん</rt></ruby>じていることは、<ruby>弱<rt>よわ</rt></ruby>さじゃないですよ。<ruby>感受性<rt>かんじゅせい</rt></ruby>があるということです。<br>*(Điều Linh đang cảm thấy không phải là yếu đuối. Đó là sự nhạy cảm.)* |

---

## Tình huống 3 — Phòng nghỉ · 9:25, Linh kể thêm nỗi lo

| Vai | Lời thoại |
|---|---|
| Linh | 実は、ベトナムにいたとき、<ruby>家族<rt>かぞく</rt></ruby>から「なんで<ruby>介護<rt>かいご</rt></ruby>をするの?」と<ruby>言<rt>い</rt></ruby>われました。<ruby>恥<rt>は</rt></ruby>ずかしい<ruby>仕事<rt>しごと</rt></ruby>だって。<br>*(Thật ra, khi còn ở Việt Nam, gia đình em hỏi "sao lại làm điều dưỡng?". Họ nói là công việc đáng xấu hổ.)* |
| Ngọc | …<ruby>私<rt>わたし</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>っていました。<br>*(... Gia đình tôi cũng nói vậy.)* |
| Linh | そうなんですか?<br>*(Vậy ạ?)* |
| Ngọc | でも<ruby>今<rt>いま</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>います。ここで<ruby>働<rt>はたら</rt></ruby>いて、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに「ありがとう」と<ruby>言<rt>い</rt></ruby>ってもらったとき、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>誇<rt>ほこ</rt></ruby>りに<ruby>思<rt>おも</rt></ruby>えます。<br>*(Nhưng bây giờ khác rồi. Làm việc ở đây, khi được các cụ nói "cảm ơn", tôi thật sự tự hào.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>も、いつかそう<ruby>思<rt>おも</rt></ruby>えるでしょうか。<br>*(Em có thể cảm thấy vậy được không, một ngày nào đó?)* |
| Ngọc | <ruby>必<rt>かなら</rt></ruby>ずなれます。リンさんが<ruby>今日<rt>きょう</rt></ruby>ここで<ruby>話<rt>はな</rt></ruby>してくれたこと、それ自体がもう<ruby>一歩<rt>いっぽ</rt></ruby>です。<br>*(Chắc chắn được. Việc Linh hôm nay nói ra điều này, đó bản thân đã là một bước rồi.)* |

---

## Tình huống 4 — Hành lang · 10:00, Tuấn cũng đang gặp khó khăn

| Vai | Lời thoại |
|---|---|
| Tuấn | (gặp Ngọc ở hành lang) グエンさん、<ruby>今日<rt>きょう</rt></ruby>のおむつ<ruby>交換<rt>こうかん</rt></ruby>、<ruby>正直<rt>しょうじき</rt></ruby>つらかったです。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>嫌<rt>いや</rt></ruby>がっているような<ruby>気<rt>き</rt></ruby>がして。<br>*(Chị Ngọc, hôm nay thay bỉm, thành thật mà nói vất vả quá. Em cảm thấy như người được chăm sóc không muốn...)* |
| Ngọc | <ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>表情<rt>ひょうじょう</rt></ruby>、<ruby>気<rt>き</rt></ruby>になりましたか?<br>*(Em để ý đến vẻ mặt người được chăm sóc à?)* |
| Tuấn | はい。<ruby>恥<rt>は</rt></ruby>ずかしそうでした。<br>*(Vâng. Trông có vẻ ngượng ngùng.)* |
| Ngọc | それを<ruby>感<rt>かん</rt></ruby>じ<ruby>取<rt>と</rt></ruby>れるのはとても<ruby>大切<rt>たいせつ</rt></ruby>です。だから「<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る」ケアが<ruby>必要<rt>ひつよう</rt></ruby>なんです。<ruby>声<rt>こえ</rt></ruby>かけとプライバシーの<ruby>確保<rt>かくほ</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>一歩<rt>いっぽ</rt></ruby>です。<br>*(Nhận ra được điều đó rất quan trọng. Đó là lý do tại sao cần chăm sóc "bảo vệ phẩm giá". Lên tiếng và đảm bảo sự riêng tư là bước đầu tiên.)* |
| Tuấn | <ruby>声<rt>こえ</rt></ruby>かけって、どんなことを<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Lên tiếng thì nói gì ạ?)* |
| Ngọc | 「<ruby>失礼<rt>しつれい</rt></ruby>します」「<ruby>終<rt>お</rt></ruby>わりましたよ」「<ruby>気持<rt>きも</rt></ruby>ちよかったですか?」。<ruby>気持<rt>きも</rt></ruby>ちを<ruby>言葉<rt>ことば</rt></ruby>にする<ruby>声<rt>こえ</rt></ruby>かけが、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*("Xin phép", "Xong rồi ạ", "Có thoải mái không ạ?". Lên tiếng thể hiện cảm xúc bảo vệ phẩm giá người được chăm sóc.)* |

---

## Tình huống 5 — Phòng thực hành · 10:30, Ngọc làm mẫu おむつ交換 với giải thích từng bước

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>実際<rt>じっさい</rt></ruby>に<ruby>見<rt>み</rt></ruby>せます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>かけに<ruby>注目<rt>ちゅうもく</rt></ruby>してください。<br>*(Tôi sẽ làm mẫu thực tế. Hôm nay chú ý vào cách lên tiếng nhé.)* |
| Ngọc | (với người dùng giả định) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。おむつを<ruby>交換<rt>こうかん</rt></ruby>しますね。カーテンを<ruby>閉<rt>し</rt></ruby>めます。<br>*(Ông Tanaka, xin phép ông. Thay bỉm cho ông nhé. Tôi kéo rèm lại.)* |
| Ngọc | (quay sang TTS) カーテンを<ruby>閉<rt>し</rt></ruby>めること、<ruby>覚<rt>おぼ</rt></ruby>えてください。<ruby>必<rt>かなら</rt></ruby>ずです。<br>*(Nhớ kéo rèm nhé. Bắt buộc.)* |
| Ngọc | (tiếp tục) <ruby>横<rt>よこ</rt></ruby>に<ruby>向<rt>む</rt></ruby>けますね。ゆっくりです。<ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Nghiêng sang bên nhé. Từ từ thôi. Có đau không ạ?)* |
| Ngọc | (sau đó) <ruby>終<rt>お</rt></ruby>わりましたよ。<ruby>気持<rt>きも</rt></ruby>ちよかったですか?<br>*(Xong rồi ạ. Có thoải mái không?)* |
| Ngọc | (với TTS) <ruby>最初<rt>さいしょ</rt></ruby>と<ruby>最後<rt>さいご</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>かけ、<ruby>必<rt>かなら</rt></ruby>ずする。それだけで<ruby>全然違<rt>ぜんぜんちが</rt></ruby>います。<br>*(Lên tiếng ở đầu và cuối, nhất định phải làm. Chỉ vậy thôi là hoàn toàn khác nhau rồi.)* |

---

## Tình huống 6 — Phòng thực hành · 11:00, Linh thử lần đầu

| Vai | Lời thoại |
|---|---|
| Ngọc | リンさん、<ruby>準備<rt>じゅんび</rt></ruby>できたら、やってみましょう。<ruby>無理<rt>むり</rt></ruby>なら<ruby>言<rt>い</rt></ruby>ってください。<br>*(Linh, khi sẵn sàng thì thử nhé. Không ổn thì nói cho tôi biết.)* |
| Linh | (hít thở sâu) …やってみます。<br>*(... Em sẽ thử.)* |
| Linh | (với người dùng giả định) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。おむつを<ruby>交換<rt>こうかん</rt></ruby>させていただきます。カーテン、<ruby>閉<rt>し</rt></ruby>めますね。<br>*(Ông Tanaka, xin phép. Em thay bỉm cho ông ạ. Em kéo rèm lại nhé.)* |
| Ngọc | (thì thầm) よかったです。<ruby>声<rt>こえ</rt></ruby>かけ、ちゃんとできています。<br>*(Tốt lắm. Lên tiếng đúng cách rồi đó.)* |
| Linh | (sau khi xong, tay run nhưng hoàn thành) <ruby>終<rt>お</rt></ruby>わりました。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたか?<br>*(Xong rồi ạ. Ông có ổn không ạ?)* |
| Đức (đóng vai) | ありがとうね。<ruby>丁寧<rt>ていねい</rt></ruby>だね。<br>*(Cảm ơn em. Cẩn thận nhỉ.)* |
| Linh | (mắt ướt nhẹ) ありがとうございます…<br>*(Cảm ơn ông...)* |
| Ngọc | (sau đó, kéo Linh ra hành lang) リンさん、よくやりました。<ruby>声<rt>こえ</rt></ruby>かけも、<ruby>手順<rt>てじゅん</rt></ruby>も。<ruby>誇<rt>ほこ</rt></ruby>りに<ruby>思<rt>おも</rt></ruby>っていいです。<br>*(Linh, làm tốt lắm. Cả lên tiếng lẫn thủ tục. Em có quyền tự hào đó.)* |

---

## Tình huống 7 — Văn phòng · 12:30, báo cáo Yamamoto về tình trạng TTS

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、リンさんについてご<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>今日<rt>きょう</rt></ruby>のおむつ<ruby>交換<rt>こうかん</rt></ruby>で、<ruby>精神的<rt>せいしんてき</rt></ruby>に<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>んでいました。<br>*(Yamamoto, tôi báo cáo về Linh. Hôm nay buổi thay bỉm, em ấy bị suy sụp tinh thần.)* |
| Yamamoto | そうか。グエンさんはどう<ruby>対応<rt>たいおう</rt></ruby>しましたか?<br>*(Vậy à. Ngọc đã xử lý thế nào?)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>を<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>しました。5<ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じような<ruby>気持<rt>きも</rt></ruby>ちだったことを。<br>*(Tôi nói thật từ kinh nghiệm của mình. Rằng 5 năm trước, tôi cũng có cảm giác như vậy.)* |
| Yamamoto | それは<ruby>良<rt>よ</rt></ruby>い<ruby>対応<rt>たいおう</rt></ruby>です。<ruby>理論<rt>りろん</rt></ruby>よりも、<ruby>経験<rt>けいけん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>届<rt>とど</rt></ruby>くことがあります。<br>*(Đó là cách xử lý tốt. Đôi khi lời nói từ kinh nghiệm truyền đạt được hơn lý luận.)* |
| Ngọc | その<ruby>後<rt>あと</rt></ruby>、リンさんは<ruby>自分<rt>じぶん</rt></ruby>でやってみました。<ruby>声<rt>こえ</rt></ruby>かけも<ruby>丁寧<rt>ていねい</rt></ruby>でした。<br>*(Sau đó Linh đã tự thử. Lên tiếng cũng lịch sự.)* |
| Yamamoto | それはよかった。グエンさん、よく<ruby>支<rt>ささ</rt></ruby>えましたね。<br>*(Vậy tốt quá. Ngọc, em đã chăm sóc tốt lắm.)* |

---

## Tình huống 8 — Phòng nghỉ · 14:00, Maya chia sẻ góc nhìn khác

| Vai | Lời thoại |
|---|---|
| Maya | グエンさん、<ruby>少<rt>すこ</rt></ruby>しよろしいですか?<br>*(Chị Ngọc, cho em hỏi một chút được không?)* |
| Ngọc | もちろん。どうしました?<br>*(Tất nhiên. Có chuyện gì vậy?)* |
| Maya | インドネシアでも、<ruby>介護<rt>かいご</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby>がするものという<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>があります。でも<ruby>私<rt>わたし</rt></ruby>は、<ruby>専門的<rt>せんもんてき</rt></ruby>にやることに<ruby>誇<rt>ほこ</rt></ruby>りを<ruby>感<rt>かん</rt></ruby>じています。<br>*(Ở Indonesia cũng có suy nghĩ rằng chăm sóc là việc của gia đình. Nhưng em cảm thấy tự hào khi làm việc này một cách chuyên nghiệp.)* |
| Ngọc | マヤさんはそう<ruby>思<rt>おも</rt></ruby>えているんですね。<ruby>素晴<rt>すば</rt></ruby>らしい。リンさんにも<ruby>聞<rt>き</rt></ruby>かせてあげたいです。<br>*(Maya đã nghĩ được như vậy rồi. Thật tuyệt. Muốn để Linh nghe cũng được nhỉ.)* |
| Maya | リンさんに<ruby>話<rt>はな</rt></ruby>してもいいですか?<br>*(Em có thể nói chuyện với Linh không ạ?)* |
| Ngọc | もちろんです。みなさんが<ruby>支<rt>ささ</rt></ruby>え<ruby>合<rt>あ</rt></ruby>えるのが<ruby>一番<rt>いちばん</rt></ruby>です。<br>*(Tất nhiên. Mọi người hỗ trợ lẫn nhau là tốt nhất rồi.)* |

---

## Tình huống 9 — Hành lang · 15:30, Sato 主任 quan sát và hỏi thăm

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、リンさんの<ruby>件<rt>けん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>きました。どう<ruby>見<rt>み</rt></ruby>ていますか?<br>*(Ngọc, chuyện Linh tôi có nghe. Em thấy thế nào?)* |
| Ngọc | <ruby>一時的<rt>いちじてき</rt></ruby>な<ruby>壁<rt>かべ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<ruby>今日<rt>きょう</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>でやり<ruby>遂<rt>と</rt></ruby>げることができました。<ruby>続<rt>つづ</rt></ruby>けて<ruby>見守<rt>みまも</rt></ruby>ります。<br>*(Tôi nghĩ đây là bức tường tạm thời. Hôm nay em ấy đã tự mình làm được. Tôi sẽ tiếp tục quan sát.)* |
| Sato | <ruby>辞<rt>や</rt></ruby>めたいと<ruby>言<rt>い</rt></ruby>う<ruby>様子<rt>ようす</rt></ruby>は?<br>*(Có dấu hiệu muốn bỏ cuộc không?)* |
| Ngọc | <ruby>今<rt>いま</rt></ruby>のところはありません。ただ、<ruby>家族<rt>かぞく</rt></ruby>からのプレッシャーがあるようです。「なぜ<ruby>介護<rt>かいご</rt></ruby>か」という。<br>*(Hiện tại chưa thấy. Nhưng có vẻ có áp lực từ gia đình. Kiểu "sao lại làm điều dưỡng" ấy.)* |
| Sato | それは<ruby>辞<rt>や</rt></ruby>める<ruby>理由<rt>りゆう</rt></ruby>になりやすい。<ruby>注意<rt>ちゅうい</rt></ruby>して<ruby>見<rt>み</rt></ruby>ておいてください。<ruby>月<rt>つき</rt></ruby>1<ruby>回<rt>かい</rt></ruby>、<ruby>面談<rt>めんだん</rt></ruby>を<ruby>設<rt>もう</rt></ruby>けてください。<br>*(Đó dễ trở thành lý do bỏ cuộc. Hãy chú ý quan sát. Mỗi tháng hãy tổ chức buổi gặp mặt một lần.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>個別面談<rt>こべつめんだん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<br>*(Vâng, em rõ rồi. Tuần sau em sẽ sắp xếp buổi gặp riêng.)* |

---

## Tình huống 10 — Phòng nghỉ · 16:30, Ngọc và Đức nói chuyện

| Vai | Lời thoại |
|---|---|
| Đức | グエン、<ruby>今日<rt>きょう</rt></ruby>リンさんの<ruby>役<rt>やく</rt></ruby>を<ruby>演<rt>え</rt></ruby>じてみて、<ruby>昔<rt>むかし</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>したよ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はきつかったな。<br>*(Ngọc ơi, hôm nay đóng vai người dùng cho Linh, tôi nhớ lại ngày xưa. Hồi đầu tôi cũng vất vả lắm đấy.)* |
| Ngọc | そうだったよね。デュックさんも<ruby>最初<rt>さいしょ</rt></ruby>はつらそうにしてたな、って<ruby>覚<rt>おぼ</rt></ruby>えてる。<br>*(Đúng nhỉ. Tôi còn nhớ hồi đầu anh Đức cũng có vẻ vất vả.)* |
| Đức | でも<ruby>続<rt>つづ</rt></ruby>けたら<ruby>変<rt>か</rt></ruby>わった。リンさんも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。グエンがついてるから。<br>*(Nhưng tiếp tục thì thay đổi rồi. Linh cũng ổn thôi. Vì có Ngọc bên cạnh mà.)* |
| Ngọc | ありがとう、デュックさん。<ruby>今日<rt>きょう</rt></ruby>も<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ってくれてありがとう。<br>*(Cảm ơn anh Đức. Cảm ơn hôm nay cũng đã giúp đỡ nhé.)* |
| Đức | いいよいいよ。また<ruby>何<rt>なん</rt></ruby>かあれば<ruby>言<rt>い</rt></ruby>ってね。<br>*(Không sao. Có gì cứ nói nhé.)* |

---

## Tình huống 11 — Hành lang đầu buổi · 17:30, Linh trước khi về

| Vai | Lời thoại |
|---|---|
| Linh | グエンさん、<ruby>今日<rt>きょう</rt></ruby>ありがとうございました。<ruby>朝<rt>あさ</rt></ruby>はパニックになっていて、すみませんでした。<br>*(Chị Ngọc, cảm ơn hôm nay. Buổi sáng em bị hoảng loạn, xin lỗi ạ.)* |
| Ngọc | <ruby>謝<rt>あやま</rt></ruby>らなくていいですよ。<ruby>今日<rt>きょう</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>一歩<rt>いっぽ</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>み<ruby>出<rt>だ</rt></ruby>せましたよね。それが<ruby>全<rt>すべ</rt></ruby>てです。<br>*(Không cần xin lỗi. Hôm nay em đã tự mình bước được một bước rồi. Đó là tất cả.)* |
| Linh | <ruby>田中<rt>たなか</rt></ruby>さんが「<ruby>丁寧<rt>ていねい</rt></ruby>だね」って<ruby>言<rt>い</rt></ruby>ってくれたこと、ずっと<ruby>忘<rt>わす</rt></ruby>れないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Việc bác Tanaka nói "cẩn thận nhỉ", em nghĩ mãi mãi không quên được.)* |
| Ngọc | それが介護の<ruby>醍醐味<rt>だいごみ</rt></ruby>です。<ruby>最初<rt>さいしょ</rt></ruby>のそういう<ruby>言葉<rt>ことば</rt></ruby>は、ずっと<ruby>力<rt>ちから</rt></ruby>になります。<br>*(Đó là tinh tuý của điều dưỡng. Những lời nói như vậy đầu tiên, mãi mãi sẽ là sức mạnh.)* |
| Linh | はい。<ruby>明日<rt>あした</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Ngày mai em cũng sẽ cố gắng.)* |

---

## Tình huống 12 — Tiếng Việt · Cuộc gọi với mẹ ở Việt Nam lúc 20:30

| Vai | Lời thoại |
|---|---|
| Mẹ Ngọc (qua điện thoại) | Con ơi, dạo này sao rồi? Vất vả không? |
| Ngọc | Bình thường mẹ ơi. Chỉ là hôm nay có bạn học trò bị sốc vì công việc — giống con hồi mới sang vậy đó. |
| Mẹ | Rồi sao, con giúp được không? |
| Ngọc | Được mẹ ơi. Con kể lại chuyện của con hồi đó cho bạn nghe. Thấy bạn bớt hoảng sợ hơn. |
| Mẹ | Con giỏi quá. Mà mẹ hỏi thật, công việc đó... mẹ vẫn còn thấy kỳ lắm. Con ổn thật không? |
| Ngọc | Mẹ, con ổn lắm. Con tự hào về công việc này. Hôm nay bạn học trò làm được lần đầu tiên, mặt bạn ấy sáng hẳn lên — con thấy vui lắm. Giống như ngày xưa có người chăm sóc con vậy. |
| Mẹ | Ừ... mẹ nghe con nói thì cũng hiểu hơn rồi. |
| Ngọc | Mẹ ơi, con nhớ mẹ lắm. Dạo này mẹ và em có khỏe không? Mình nói chuyện thêm chút nha. |

---', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000004, 800000031, NULL, 'markdown_book', 'T4. Hỗ trợ thực tập sinh tự lập (実習生の自立支援)', '# Sách điều dưỡng viên quốc gia · T4. Hỗ trợ thực tập sinh tự lập (実習生の自立支援)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー kiêm 教育担当) kèm cặp TTS Linh (Việt, nhút nhát) qua ca trực đêm 夜勤 đầu tiên. Học mẫu hội thoại: hướng dẫn quy trình夜勤, xử lý tình huống ban đêm (tiểu đêm, ngã, không ngủ được, khó thở), giao tiếp với điều dưỡng on-call, và xây tự tin cho TTS mới.

---

## Bối cảnh

Tháng 9 năm 2031. <ruby>ひだまり苑<rt>えん</rt></ruby> đang trong giai đoạn đón khoá TTS mới. Linh — TTS Việt 22 tuổi, nhút nhát, trình độ N3 — sắp trực ca đêm đầu tiên (22:00 ~ 7:00). Ngọc, với vai trò 教育担当, tự nguyện dạy kèm trực tiếp ca này để Linh không bị "quăng" một mình. Mái tóc dài buộc gọn, bước vào ca đêm với tâm lý vừa là chị vừa là sếp — nhớ lại những ca đêm run bần bật của chính mình 5 năm trước.

---

## Tình huống 1 — Phòng thay đồ · 21:45, chuẩn bị vào ca đêm

| Vai | Lời thoại |
|---|---|
| Linh | (giọng khẽ khàng, tay vân vê áo đồng phục) グエン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>夜勤<rt>やきん</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>します... |
| | *(Chị Ngọc ơi, ca đêm... em hồi hộp quá...)* |
| Ngọc | ふふ、<ruby>当然<rt>とうぜん</rt></ruby>ですよ。<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby>はガチガチでした。 |
| | *(Hehe, bình thường thôi. Chị cũng cứng đờ ca đêm đầu tiên luôn.)* |
| Linh | そうなんですか...? |
| | *(Vậy ạ...?)* |
| Ngọc | でも<ruby>今夜<rt>こんや</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>一緒<rt>いっしょ</rt></ruby>にいますから、<ruby>一人<rt>ひとり</rt></ruby>じゃないですよ。まず<ruby>夜勤<rt>やきん</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>覚<rt>おぼ</rt></ruby>えましょう。 |
| | *(Nhưng tối nay chị ở đây cùng, em không một mình đâu. Trước hết hãy nhớ quy trình ca đêm đã.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。 |
| | *(Vâng, mong chị chỉ bảo ạ.)* |
| Ngọc | <ruby>夜勤<rt>やきん</rt></ruby>で<ruby>大事<rt>だいじ</rt></ruby>なのは3つ。<ruby>安全確認<rt>あんぜんかくにん</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby>、そして<ruby>報告<rt>ほうこく</rt></ruby>。この3つを<ruby>忘<rt>わす</rt></ruby>れないでください。 |
| | *(Ca đêm có 3 điều quan trọng. Xác nhận an toàn, ghi chép, và báo cáo. Đừng quên 3 điều này.)* |
| Linh | あんぜんかくにん、きろく、ほうこく。はい、メモします。 |
| | *(Xác nhận an toàn, ghi chép, báo cáo. Vâng, em ghi lại ạ.)* |

---

## Tình huống 2 — Trạm y tá · 22:00, nhận bàn giao ca

| Vai | Lời thoại |
|---|---|
| Nhân viên ca chiều | お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>夜勤<rt>やきん</rt></ruby><ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎをします。<ruby>今夜<rt>こんや</rt></ruby>の<ruby>注意<rt>ちゅうい</rt></ruby><ruby>利用者<rt>りようしゃ</rt></ruby>さんは3<ruby>名<rt>めい</rt></ruby>です。 |
| | *(Vất vả rồi. Bây giờ bàn giao ca đêm. Tối nay có 3 người cần chú ý đặc biệt.)* |
| Ngọc | (gật đầu với Linh) リンさん、メモを<ruby>取<rt>と</rt></ruby>ってください。 |
| | *(Em Linh, ghi lại đi.)* |
| Nhân viên ca chiều | <ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>今夜<rt>こんや</rt></ruby><ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>きがなかったです。<ruby>夜間<rt>やかん</rt></ruby><ruby>不眠<rt>ふみん</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>してください。<ruby>鈴木<rt>すずき</rt></ruby>さんは<ruby>嚥下<rt>えんげ</rt></ruby><ruby>機能<rt>きのう</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いので、<ruby>夜間<rt>やかん</rt></ruby>の<ruby>むせ込<rt>こ</rt></ruby>みに<ruby>気<rt>き</rt></ruby>をつけて。<ruby>山田<rt>やまだ</rt></ruby>さんはバイタルが<ruby>少<rt>すこ</rt></ruby>し<ruby>不安定<rt>ふあんてい</rt></ruby>です。 |
| | *(Ông Sato tối nay bồn chồn. Chú ý mất ngủ ban đêm. Bà Suzuki chức năng nuốt yếu, chú ý sặc ban đêm. Ông Yamada sinh hiệu hơi không ổn định.)* |
| Linh | (ghi tên nhanh) ...えんげきのう...って<ruby>何<rt>なん</rt></ruby>ですか? |
| | *(Chức năng nuốt... là gì ạ?)* |
| Ngọc | (khẽ, với Linh) <ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>や<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>を<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>む<ruby>力<rt>ちから</rt></ruby>のことです。<ruby>後<rt>あと</rt></ruby>でまた<ruby>説明<rt>せつめい</rt></ruby>しますね。 |
| | *(Là sức mạnh để nuốt thức ăn và đồ uống. Chị giải thích thêm sau nhé.)* |
| Linh | ありがとうございます。 |
| | *(Cảm ơn chị ạ.)* |

---

## Tình huống 3 — Hành lang · 22:30, tuần tra kiểm tra phòng đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | では<ruby>巡回<rt>じゅんかい</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<ruby>夜勤<rt>やきん</rt></ruby>の<ruby>巡回<rt>じゅんかい</rt></ruby>は1<ruby>時間<rt>じかん</rt></ruby>おきです。<ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なに</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>いますか? |
| | *(Bây giờ đi tuần tra. Tuần tra ca đêm cứ 1 tiếng một lần. Em nghĩ mục đích là gì?)* |
| Linh | え...え<ruby>ーと<rt>ーと</rt></ruby>...ご<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>安全<rt>あんぜん</rt></ruby>かどうか、<ruby>確認<rt>かくにん</rt></ruby>するためですか? |
| | *(Ừm... là để xác nhận xem các cụ có an toàn không ạ?)* |
| Ngọc | そうです、よく<ruby>言<rt>い</rt></ruby>えました。それから<ruby>呼吸<rt>こきゅう</rt></ruby>・<ruby>体位<rt>たいい</rt></ruby>・<ruby>布団<rt>ふとん</rt></ruby>のずれも<ruby>確認<rt>かくにん</rt></ruby>します。では、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>部屋<rt>へや</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めてください。 |
| | *(Đúng, em nói tốt lắm. Ngoài ra còn kiểm tra hô hấp, tư thế nằm, và chăn có bị lệch không. Bây giờ em bắt đầu từ phòng ông Tanaka đi.)* |
| Linh | (nhẹ nhàng gõ cửa) <ruby>田中<rt>たなか</rt></ruby>さん、リンです。<ruby>失礼<rt>しつれい</rt></ruby>します。 |
| | *(Ông Tanaka, em là Linh. Em xin phép vào ạ.)* |
| Ngọc | (đứng ở cửa, quan sát — gật đầu nhẹ khích lệ) |
| Linh | (nhìn vào phòng, quay ra báo) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>呼吸<rt>こきゅう</rt></ruby><ruby>安定<rt>あんてい</rt></ruby>、<ruby>体位<rt>たいい</rt></ruby>も<ruby>問題<rt>もんだい</rt></ruby>ないです。 |
| | *(Ông Tanaka hô hấp ổn định, tư thế cũng không có vấn đề ạ.)* |
| Ngọc | 100<ruby>点<rt>てん</rt></ruby>。<ruby>記録<rt>きろく</rt></ruby>シートに<ruby>書<rt>か</rt></ruby>いてください。 |
| | *(100 điểm. Ghi vào bảng ghi chép nhé.)* |

---

## Tình huống 4 — Hành lang · 00:15, ông Sato mất ngủ và bước ra ngoài phòng

| Vai | Lời thoại |
|---|---|
| Linh | (thấy ông Sato đứng giữa hành lang, hốt hoảng) え、<ruby>先輩<rt>せんぱい</rt></ruby>っ! <ruby>佐藤<rt>さとう</rt></ruby>さんが... |
| | *(Chị ơi! Ông Sato đang...!)* |
| Ngọc | (nhẹ nhàng đến gần ông Sato) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>眠<rt>ねむ</rt></ruby>れませんでしたか?<ruby>寒<rt>さむ</rt></ruby>くないですか? |
| | *(Ông Sato, ông không ngủ được ạ? Ông có lạnh không?)* |
| Ông Sato | (mơ hồ) ...トイレ、どこだ...? |
| | *(...Nhà vệ sinh... ở đâu nhỉ...?)* |
| Ngọc | はい、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。こちらですよ。(nhẹ nhàng dẫn ông đi) |
| | *(Vâng, cùng đi nhé. Lối này ạ.)* |
| Ngọc | (quay sang Linh, nói khẽ) リンさん、このあと<ruby>佐藤<rt>さとう</rt></ruby>さんをお<ruby>部屋<rt>へや</rt></ruby>に<ruby>誘導<rt>ゆうどう</rt></ruby>して、<ruby>記録<rt>きろく</rt></ruby>に「<ruby>夜間<rt>やかん</rt></ruby><ruby>徘徊<rt>はいかい</rt></ruby>あり、トイレ<ruby>誘導<rt>ゆうどう</rt></ruby>にて<ruby>対応<rt>たいおう</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてください。 |
| | *(Em Linh, sau đó dẫn ông Sato vào phòng, ghi vào hồ sơ "có lang thang ban đêm, đã xử lý bằng cách hướng dẫn vào nhà vệ sinh".)* |
| Linh | はい。え...<ruby>徘徊<rt>はいかい</rt></ruby>って、<ruby>怖<rt>こわ</rt></ruby>くなかったんですか? |
| | *(Vâng. Ừm... lang thang ban đêm, chị không sợ sao?)* |
| Ngọc | <ruby>慌<rt>あわ</rt></ruby>てないことが<ruby>一番<rt>いちばん</rt></ruby>です。<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>不安<rt>ふあん</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じると、もっと<ruby>混乱<rt>こんらん</rt></ruby>しますから。 |
| | *(Không hoảng loạn là quan trọng nhất. Vì nếu người được chăm sóc cảm thấy bất an, họ sẽ càng rối loạn thêm.)* |

---

## Tình huống 5 — Trạm y tá · 01:00, bà Suzuki kêu khó thở

| Vai | Lời thoại |
|---|---|
| Linh | (chuông gọi phòng bà Suzuki reng — Linh chạy vào, ra ngay) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>鈴木<rt>すずき</rt></ruby>さんが「<ruby>息<rt>いき</rt></ruby>が<ruby>苦<rt>くる</rt></ruby>しい」って... |
| | *(Chị ơi, bà Suzuki nói "thở khó"...!)* |
| Ngọc | (bình tĩnh) すぐ<ruby>行<rt>い</rt></ruby>きます。まずSpO₂を<ruby>測<rt>はか</rt></ruby>ってください。 |
| | *(Đi ngay. Trước hết đo SpO₂ đi.)* |
| Linh | (đo) SpO₂は92%です。 |
| | *(SpO₂ là 92% ạ.)* |
| Ngọc | わかりました。<ruby>頭部<rt>とうぶ</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げて、<ruby>看護師<rt>かんごし</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。リンさんは<ruby>鈴木<rt>すずき</rt></ruby>さんのそばにいてください。 |
| | *(Tôi hiểu rồi. Nâng đầu lên một chút, rồi báo y tá. Em Linh ở bên cạnh bà Suzuki.)* |
| Ngọc | (điện thoại) <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>夜勤<rt>やきん</rt></ruby>のグエンです。<ruby>鈴木<rt>すずき</rt></ruby>さんが<ruby>呼吸苦<rt>こきゅうく</rt></ruby>を<ruby>訴<rt>うった</rt></ruby>えています。SpO₂が92%で、<ruby>現在<rt>げんざい</rt></ruby><ruby>頭部挙上<rt>とうぶきょじょう</rt></ruby>で<ruby>対応中<rt>たいおうちゅう</rt></ruby>です。 |
| | *(Chị Nakamura, em Ngọc ca đêm đây. Bà Suzuki đang kêu khó thở. SpO₂ 92%, hiện tại đang nâng đầu xử lý.)* |
| Nakamura | わかりました。すぐ<ruby>行<rt>い</rt></ruby>きます。<ruby>酸素<rt>さんそ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をしておいてください。 |
| | *(Tôi hiểu. Tôi đến ngay. Hãy chuẩn bị oxy sẵn.)* |
| Linh | (sau khi bà Suzuki ổn hơn) ...<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えています。 |
| | *(Tay em đang run...)* |
| Ngọc | それで<ruby>普通<rt>ふつう</rt></ruby>です。でも<ruby>冷静<rt>れいせい</rt></ruby>に<ruby>動<rt>うご</rt></ruby>けましたよ。<ruby>合格<rt>ごうかく</rt></ruby>です。 |
| | *(Bình thường vậy thôi. Nhưng em đã hành động bình tĩnh đấy. Đạt rồi.)* |

---

## Tình huống 6 — Phòng nghỉ ca đêm · 02:00, giải thích bảng ghi chép và hỏi đáp

| Vai | Lời thoại |
|---|---|
| Ngọc | 2<ruby>時間<rt>じかん</rt></ruby>、よく<ruby>頑張<rt>がんば</rt></ruby>りました。<ruby>少<rt>すこ</rt></ruby>し<ruby>休憩<rt>きゅうけい</rt></ruby>しながら、<ruby>記録<rt>きろく</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。 |
| | *(2 tiếng rồi, em đã cố gắng tốt. Vừa nghỉ vừa kiểm tra lại cách ghi chép nhé.)* |
| Linh | はい。さっきの<ruby>鈴木<rt>すずき</rt></ruby>さんの<ruby>記録<rt>きろく</rt></ruby>は、どう<ruby>書<rt>か</rt></ruby>けばいいですか? |
| | *(Vâng. Hồ sơ vụ bà Suzuki ban nãy em viết thế nào ạ?)* |
| Ngọc | 「<ruby>呼吸苦<rt>こきゅうく</rt></ruby>の<ruby>訴<rt>うった</rt></ruby>えあり。SpO₂ 92%。<ruby>頭部挙上<rt>とうぶきょじょう</rt></ruby><ruby>実施<rt>じっし</rt></ruby>。<ruby>看護師<rt>かんごし</rt></ruby>へ<ruby>報告<rt>ほうこく</rt></ruby><ruby>済<rt>ず</rt></ruby>み。その<ruby>後<rt>ご</rt></ruby>SpO₂ 97%に<ruby>改善<rt>かいぜん</rt></ruby>。」こう<ruby>書<rt>か</rt></ruby>きます。 |
| | *(Viết: "Có kêu khó thở. SpO₂ 92%. Đã nâng đầu. Đã báo y tá. Sau đó SpO₂ cải thiện lên 97%." Viết như vậy.)* |
| Linh | <ruby>事実<rt>じじつ</rt></ruby>だけを<ruby>書<rt>か</rt></ruby>くんですね。 |
| | *(Chỉ ghi sự thật thôi nhỉ ạ.)* |
| Ngọc | そうです。<ruby>記録<rt>きろく</rt></ruby>は<ruby>意見<rt>いけん</rt></ruby>じゃなく、<ruby>観察<rt>かんさつ</rt></ruby>した<ruby>事実<rt>じじつ</rt></ruby>です。「<ruby>具合<rt>ぐあい</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>そうだった」じゃなく「SpO₂ 92%」と<ruby>数字<rt>すうじ</rt></ruby>で<ruby>書<rt>か</rt></ruby>く。 |
| | *(Đúng. Hồ sơ không phải ý kiến, mà là sự thật quan sát được. Không viết "có vẻ không khỏe" mà viết số liệu "SpO₂ 92%".)* |
| Linh | よくわかりました。 |
| | *(Em hiểu rõ rồi ạ.)* |

---

## Tình huống 7 — Hành lang · 03:30, tuần tra và ông Yamada kêu đau lưng

| Vai | Lời thoại |
|---|---|
| Ông Yamada | (gõ chuông) ちょっと、<ruby>腰<rt>こし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>くて<ruby>眠<rt>ねむ</rt></ruby>れないんだよ。 |
| | *(Cô ơi, lưng đau quá ngủ không được.)* |
| Linh | (nhìn Ngọc) え...どうすれば...? |
| | *(Ừm... em phải làm gì...?)* |
| Ngọc | (khẽ với Linh) リンさん、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>してみてください。<ruby>私<rt>わたし</rt></ruby>はここで<ruby>見<rt>み</rt></ruby>ています。 |
| | *(Em Linh, em thử tự xử lý nhé. Chị ở đây quan sát.)* |
| Linh | (hít thở, đến gần) <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>腰<rt>こし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>いんですね。<ruby>体位<rt>たいい</rt></ruby>を<ruby>変<rt>か</rt></ruby>えてみましょうか? |
| | *(Ông Yamada, lưng ông đang đau nhỉ. Để con đổi tư thế nằm thử nhé ạ?)* |
| Ông Yamada | うん、お<ruby>願<rt>ねが</rt></ruby>い。 |
| | *(Ừ, nhờ cô nhé.)* |
| Linh | (nhẹ nhàng đổi tư thế) こちら<ruby>楽<rt>らく</rt></ruby>になりましたか? |
| | *(Vậy ông thấy dễ chịu hơn chưa ạ?)* |
| Ông Yamada | ああ、だいぶ<ruby>楽<rt>らく</rt></ruby>になった。ありがとう。 |
| | *(Ừ, thoải hơn nhiều rồi. Cảm ơn cô.)* |
| Ngọc | (ra hành lang, gật đầu với Linh) <ruby>完璧<rt>かんぺき</rt></ruby>でした。<ruby>自分<rt>じぶん</rt></ruby>でできましたね。 |
| | *(Hoàn hảo rồi. Em tự làm được rồi nhỉ.)* |

---

## Tình huống 8 — Trạm y tá · 04:30, Ngọc hỏi Linh để rút kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Ngọc | リンさん、<ruby>今夜<rt>こんや</rt></ruby><ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しかったことは<ruby>何<rt>なに</rt></ruby>ですか? |
| | *(Em Linh, tối nay điều gì em thấy khó nhất?)* |
| Linh | ...<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になることです。<ruby>鈴木<rt>すずき</rt></ruby>さんのとき、<ruby>何<rt>なに</rt></ruby>を<ruby>言<rt>い</rt></ruby>えばいいかわからなくなりました。 |
| | *(Khi khẩn cấp đầu óc trắng xóa ạ. Lúc bà Suzuki, em không biết phải nói gì.)* |
| Ngọc | そう。だから「<ruby>報告<rt>ほうこく</rt></ruby>の<ruby>型<rt>かた</rt></ruby>」を<ruby>覚<rt>おぼ</rt></ruby>えるんです。SBAR、<ruby>知<rt>し</rt></ruby>っていますか? |
| | *(Đúng. Vì vậy mới cần nhớ "mẫu báo cáo". SBAR, em biết không?)* |
| Linh | いいえ... |
| | *(Chưa ạ...)* |
| Ngọc | S=<ruby>状況<rt>じょうきょう</rt></ruby>、B=<ruby>背景<rt>はいけい</rt></ruby>、A=<ruby>評価<rt>ひょうか</rt></ruby>、R=<ruby>要望<rt>ようぼう</rt></ruby>。「<ruby>鈴木<rt>すずき</rt></ruby>さんが<ruby>呼吸苦<rt>こきゅうく</rt></ruby>を<ruby>訴<rt>うった</rt></ruby>えています（S）、<ruby>嚥下<rt>えんげ</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です（B）、SpO₂が92%です（A）、<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします（R）」。 |
| | *(S=Tình trạng, B=Bối cảnh, A=Đánh giá, R=Yêu cầu. "Bà Suzuki đang kêu khó thở (S), bà là người nuốt yếu (B), SpO₂ là 92% (A), nhờ chị kiểm tra (R)".)* |
| Linh | なるほど、これを<ruby>覚<rt>おぼ</rt></ruby>えれば<ruby>頭<rt>あたま</rt></ruby>が<ruby>白<rt>しろ</rt></ruby>くなっても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。 |
| | *(Ra vậy, em nhớ cái này thì dù đầu trắng xóa cũng không sao nhỉ ạ.)* |
| Ngọc | その<ruby>通<rt>とお</rt></ruby>り。<ruby>型<rt>かた</rt></ruby>が<ruby>体<rt>からだ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れば、<ruby>頭<rt>あたま</rt></ruby>より<ruby>先<rt>さき</rt></ruby>に<ruby>体<rt>からだ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>きます。 |
| | *(Đúng vậy. Khi mẫu ngấm vào người, cơ thể sẽ hành động trước khi đầu kịp nghĩ.)* |

---

## Tình huống 9 — Phòng ăn · 06:00, chuẩn bị bữa sáng và 声かけ buổi sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | もうすぐ<ruby>朝<rt>あさ</rt></ruby>です。<ruby>起床<rt>きしょう</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>と<ruby>朝食<rt>ちょうしょく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をします。<ruby>声<rt>こえ</rt></ruby>かけのポイントを<ruby>覚<rt>おぼ</rt></ruby>えていますか? |
| | *(Sắp sáng rồi. Bây giờ hỗ trợ thức dậy và chuẩn bị bữa sáng. Em còn nhớ điểm quan trọng của 声かけ không?)* |
| Linh | はい。<ruby>突然<rt>とつぜん</rt></ruby><ruby>触<rt>さわ</rt></ruby>らない、まず<ruby>名前<rt>なまえ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶ、<ruby>何<rt>なに</rt></ruby>をするか<ruby>説明<rt>せつめい</rt></ruby>する...です。 |
| | *(Vâng. Không chạm đột ngột, trước hết gọi tên, giải thích sẽ làm gì... ạ.)* |
| Ngọc | よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。では<ruby>田中<rt>たなか</rt></ruby>さんをお<ruby>起<rt>お</rt></ruby>こしてみてください。 |
| | *(Em nhớ tốt lắm. Vậy thử đánh thức ông Tanaka đi.)* |
| Linh | (vào phòng nhẹ nhàng) <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。リンです。もう<ruby>朝<rt>あさ</rt></ruby>ですよ。<ruby>起<rt>お</rt></ruby>きましょうか? |
| | *(Ông Tanaka, chào buổi sáng ạ. Con là Linh. Sáng rồi ạ. Mình dậy nhé ạ?)* |
| Ông Tanaka | (mơ màng) ん...ああ、そうか。<ruby>頼<rt>たの</rt></ruby>むよ。 |
| | *(Hm...ừ nhỉ. Nhờ cô nhé.)* |
| Ngọc | (đứng ngoài cửa, mỉm cười) |

---

## Tình huống 10 — Trạm y tá · 06:45, bàn giao ca sáng

| Vai | Lời thoại |
|---|---|
| Nhân viên ca sáng | お<ruby>早<rt>はや</rt></ruby>うございます。<ruby>夜勤<rt>やきん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りをお<ruby>願<rt>ねが</rt></ruby>いします。 |
| | *(Chào buổi sáng. Ca đêm vất vả rồi. Nhờ bàn giao ạ.)* |
| Ngọc | (quay sang Linh) リンさん、<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りをしてください。今夜<ruby>起<rt>お</rt></ruby>きたことを<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>話<rt>はな</rt></ruby>して。 |
| | *(Em Linh, em bàn giao đi. Kể lại theo thứ tự những gì xảy ra tối nay.)* |
| Linh | (hít thở, rồi báo cáo) <ruby>夜間<rt>やかん</rt></ruby>の<ruby>特記<rt>とっき</rt></ruby>します。<ruby>佐藤<rt>さとう</rt></ruby>さん、0<ruby>時<rt>じ</rt></ruby>15<ruby>分<rt>ふん</rt></ruby>ごろ<ruby>夜間<rt>やかん</rt></ruby><ruby>徘徊<rt>はいかい</rt></ruby>あり、トイレ<ruby>誘導<rt>ゆうどう</rt></ruby>にて<ruby>対応<rt>たいおう</rt></ruby>。<ruby>鈴木<rt>すずき</rt></ruby>さん、1<ruby>時<rt>じ</rt></ruby>ごろ<ruby>呼吸苦<rt>こきゅうく</rt></ruby>を<ruby>訴<rt>うった</rt></ruby>え、SpO₂ 92%。<ruby>頭部挙上<rt>とうぶきょじょう</rt></ruby>、<ruby>看護師<rt>かんごし</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>後、97%に<ruby>改善<rt>かいぜん</rt></ruby>。<ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>腰痛<rt>ようつう</rt></ruby>の<ruby>訴<rt>うった</rt></ruby>えで<ruby>体位変換<rt>たいいへんかん</rt></ruby>にて<ruby>対応<rt>たいおう</rt></ruby>。その<ruby>他<rt>た</rt></ruby><ruby>特記<rt>とっき</rt></ruby>なし。 |
| | *(Báo cáo đặc biệt ban đêm. Ông Sato, khoảng 0h15 có lang thang đêm, xử lý bằng hướng dẫn nhà vệ sinh. Bà Suzuki, khoảng 1h kêu khó thở, SpO₂ 92%. Sau khi y tá xử lý nâng đầu, cải thiện lên 97%. Ông Yamada, kêu đau lưng, xử lý bằng đổi tư thế. Không có điều đặc biệt nào khác.)* |
| Nhân viên ca sáng | ありがとうございます。<ruby>了解<rt>りょうかい</rt></ruby>しました。 |
| | *(Cảm ơn. Nhận rồi ạ.)* |
| Ngọc | (khẽ gật đầu với Linh — nụ cười khích lệ) |

---

## Tình huống 11 — Trước cửa cơ sở · 07:10, sau ca đêm kết thúc

| Vai | Lời thoại |
|---|---|
| Linh | (thở dài nhẹ nhõm) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>終<rt>お</rt></ruby>わりましたね...。 |
| | *(Chị ơi, xong rồi ạ...)* |
| Ngọc | お<ruby>疲<rt>つか</rt></ruby>れさまでした。どうでしたか、<ruby>夜勤<rt>やきん</rt></ruby>の<ruby>感想<rt>かんそう</rt></ruby>は? |
| | *(Vất vả rồi. Ca đêm cảm giác thế nào?)* |
| Linh | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かったですが...でも、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>できたとき、<ruby>少<rt>すこ</rt></ruby>し<ruby>自信<rt>じしん</rt></ruby>がつきました。 |
| | *(Ban đầu em sợ... nhưng khi tự xử lý được, em thấy tự tin hơn một chút ạ.)* |
| Ngọc | それが「<ruby>成長<rt>せいちょう</rt></ruby>」です。<ruby>怖<rt>こわ</rt></ruby>くてもやり<ruby>遂<rt>と</rt></ruby>げた<ruby>経験<rt>けいけん</rt></ruby>は、<ruby>次<rt>つぎ</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>力<rt>ちから</rt></ruby>になります。 |
| | *(Đó là "trưởng thành" rồi đó. Kinh nghiệm đã làm được dù sợ sẽ nhất định thành sức mạnh cho ca đêm tiếp theo.)* |
| Linh | グエン<ruby>先輩<rt>せんぱい</rt></ruby>は、<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby>のとき、<ruby>誰<rt>だれ</rt></ruby>かそばにいましたか? |
| | *(Ca đêm đầu tiên của chị, có ai ở bên cạnh không ạ?)* |
| Ngọc | (khẽ cười) いなかったですよ。だから、リンさんには<ruby>絶対<rt>ぜったい</rt></ruby>一<ruby>人<rt>ひとり</rt></ruby>にしたくなかった。 |
| | *(Không có đâu. Vì vậy chị nhất định không muốn để em một mình.)* |

---

## Tình huống 12 — Phòng riêng · 20:00 tối hôm sau, điện thoại về cho mẹ

> Scene tiếng Việt — mạch nhân vật, tâm sự sau ca đêm đầu tiên trong vai trò người dạy.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Con ơi, sao hôm nay gọi sớm vậy? Thường giờ này con ngủ bù chớ? |
| Ngọc | (tiếng Việt) Con mới dạy TTS xong ca đêm đầu tiên của tụi nó, mẹ. Ngủ không được, cứ nghĩ lại hồi xưa con cũng vậy. |
| Mẹ | (tiếng Việt) Giờ con là thầy rồi hả? Con gái mẹ giỏi ghê. |
| Ngọc | (tiếng Việt) Không có thầy thầy gì đâu mẹ ơi. Mà con thấy vui lạ. Hồi xưa ai dạy con, giờ con dạy lại người khác... Cái nghề này nó vậy mẹ. |
| Mẹ | (tiếng Việt) Nhớ giữ sức khỏe nghen con. Đừng thức quá khuya. |
| Ngọc | (tiếng Việt) Dạ con biết. Mẹ và ba khỏe không? Em Thảo thi tháng mấy rồi? |

---

## Đọng lại chương 4

Ca đêm đầu tiên của Linh — và vai trò 教育担当 đầu tiên thực thụ của Ngọc. Chương này tập trung: **quy trình夜勤** (an toàn → ghi chép → báo cáo), **xử lý 3 tình huống ban đêm** (徘徊, 呼吸苦, 腰痛), **kỹ thuật báo cáo SBAR**, **cách ghi hồ sơ bằng số liệu khách quan**, và **bàn giao ca 申し送り** chuẩn. Ngọc không chỉ dạy kỹ năng — bà dạy cả tâm thế "không hoảng loạn" và phương pháp "型を体に入れる".

> Từ vựng & mẫu câu chương này: 夜勤・巡回・安全確認・記録・報告・申し送り・引き継ぎ・徘徊・誘導・呼吸苦・SpO₂・頭部挙上・嚥下機能・体位変換・腰痛・SBAR・状況・背景・評価・要望・特記事項・改善・声かけ', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000005, 800000031, NULL, 'markdown_book', 'T5. Điều phối nhóm đa quốc tịch (多国籍チームの調整)', '# Sách điều dưỡng viên quốc gia · T5. Điều phối nhóm đa quốc tịch (多国籍チームの調整)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー kiêm 教育担当) hoà giải mâu thuẫn văn hoá trong nhóm TTS Việt–Indonesia, xây tinh thần đội. Học mẫu hội thoại: tiếp nhận phàn nàn, trung gian hoà giải, giải thích khác biệt văn hoá làm việc, tổ chức họp nhóm, và báo cáo lên 主任.

---

## Bối cảnh

Tháng 10 năm 2031. Khoá TTS mới gồm 3 người — Linh (Việt, nhút nhát), Tuấn (Việt, áp lực nợ tiền, tính thẳng), và Maya (Indonesia, hướng ngoại, xem ứng phó linh hoạt là ưu điểm) — đã làm việc được 2 tháng và bắt đầu xuất hiện ma sát. Tuấn thấy Maya "không đúng giờ, thiếu nghiêm túc"; Maya cảm thấy bị "Tuấn cứ soi mói, không tôn trọng". Linh kẹt giữa hai người, im lặng căng thẳng. Ngọc nhận ra dấu hiệu sớm và chủ động can thiệp với vai trò 教育担当.

---

## Tình huống 1 — Phòng thay đồ · 08:10, Tuấn phàn nàn với Ngọc trước giờ họp sáng

| Vai | Lời thoại |
|---|---|
| Tuấn | (tiếng Nhật thấp giọng, sau khi đồng nghiệp khác ra) グエン<ruby>先輩<rt>せんぱい</rt></ruby>、ちょっと<ruby>相談<rt>そうだん</rt></ruby>があります。 |
| | *(Chị Ngọc, em có chuyện muốn hỏi ạ.)* |
| Ngọc | はい、どうぞ。 |
| | *(Ừ, em nói đi.)* |
| Tuấn | マヤさんのことです。<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りのとき、いつも<ruby>話<rt>はな</rt></ruby>が<ruby>長<rt>なが</rt></ruby>くて、<ruby>時間<rt>じかん</rt></ruby>が<ruby>守<rt>まも</rt></ruby>れていません。ベトナムではそういうのは<ruby>失礼<rt>しつれい</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。 |
| | *(Về Maya ạ. Lúc bàn giao ca cô ấy hay nói dài, không giữ giờ. Ở Việt Nam em nghĩ vậy là thất lễ ạ.)* |
| Ngọc | トゥアンさんが<ruby>気<rt>き</rt></ruby>になっているのは<ruby>分<rt>わ</rt></ruby>かります。ただ、<ruby>直接<rt>ちょくせつ</rt></ruby>マヤさんに<ruby>言<rt>い</rt></ruby>いましたか? |
| | *(Chị hiểu em đang bực. Nhưng em đã nói trực tiếp với Maya chưa?)* |
| Tuấn | ...言ったら<ruby>気<rt>き</rt></ruby>まずくなりそうで。 |
| | *(Nói thì sợ sẽ khó xử ạ...)* |
| Ngọc | わかりました。<ruby>私<rt>わたし</rt></ruby>が<ruby>間<rt>あいだ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。ただ、<ruby>今日<rt>きょう</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>は<ruby>普通<rt>ふつう</rt></ruby>にしてください。 |
| | *(Chị hiểu. Chị sẽ đứng vào giữa. Nhưng buổi họp sáng hôm nay cứ bình thường nhé.)* |
| Tuấn | はい。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。 |
| | *(Vâng. Nhờ chị ạ.)* |

---

## Tình huống 2 — Hành lang · 09:30, Maya tìm Ngọc sau giờ chăm sóc buổi sáng

| Vai | Lời thoại |
|---|---|
| Maya | グエンさん、ちょっといいですか? |
| | *(Chị Ngọc, em hỏi chút được không ạ?)* |
| Ngọc | もちろん。どうぞ。 |
| | *(Tất nhiên. Em nói đi.)* |
| Maya | トゥアンさんが、いつも<ruby>目<rt>め</rt></ruby>で<ruby>私<rt>わたし</rt></ruby>を<ruby>見<rt>み</rt></ruby>ています。<ruby>何<rt>なに</rt></ruby>かするたびに、<ruby>批判<rt>ひはん</rt></ruby>されているような<ruby>気<rt>き</rt></ruby>がして...インドネシアでは、チームは<ruby>助<rt>たす</rt></ruby>け<ruby>合<rt>あ</rt></ruby>うものです。こんなに<ruby>厳<rt>きび</rt></ruby>しくない。 |
| | *(Anh Tuấn cứ nhìn em bằng ánh mắt... Mỗi khi em làm gì đều cảm thấy như bị phê phán... Ở Indonesia, đội nhóm là phải hỗ trợ nhau. Không nghiêm khắc như vậy ạ.)* |
| Ngọc | マヤさんの<ruby>気持<rt>きも</rt></ruby>ちも<ruby>分<rt>わ</rt></ruby>かります。<ruby>辛<rt>つら</rt></ruby>かったですね。 |
| | *(Chị cũng hiểu cảm giác của Maya. Em vất vả rồi nhỉ.)* |
| Maya | はい...でも<ruby>仕事<rt>しごと</rt></ruby>はちゃんとしているつもりです。 |
| | *(Vâng... nhưng em nghĩ em làm việc đàng hoàng rồi ạ.)* |
| Ngọc | そうですね。マヤさんの<ruby>笑顔<rt>えがお</rt></ruby>と<ruby>利用者<rt>りようしゃ</rt></ruby>さんとのコミュニケーション、<ruby>私<rt>わたし</rt></ruby>はとても<ruby>評価<rt>ひょうか</rt></ruby>しています。 |
| | *(Đúng rồi. Nụ cười và cách giao tiếp của Maya với người được chăm sóc, chị đánh giá rất cao đó.)* |
| Maya | ありがとうございます...。 |
| | *(Cảm ơn chị...)* |
| Ngọc | <ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>をください。<ruby>私<rt>わたし</rt></ruby>が<ruby>解決<rt>かいけつ</rt></ruby>します。 |
| | *(Cho chị một chút thời gian. Chị sẽ giải quyết.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 12:00, Ngọc gặp Yamamoto để xin lời khuyên

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>し<ruby>相談<rt>そうだん</rt></ruby>してもいいですか? |
| | *(Chị Yamamoto, em hỏi ý kiến chút được không ạ?)* |
| Yamamoto | もちろん。<ruby>実習生<rt>じっしゅうせい</rt></ruby>のこと? |
| | *(Tất nhiên rồi. Chuyện TTS hả?)* |
| Ngọc | はい。ベトナムとインドネシアのTTSの<ruby>間<rt>あいだ</rt></ruby>に<ruby>文化的<rt>ぶんかてき</rt></ruby>なすれ違いが<ruby>起<rt>お</rt></ruby>きています。<ruby>時間<rt>じかん</rt></ruby>感覚と、<ruby>仕事<rt>しごと</rt></ruby>への<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>い<ruby>方<rt>かた</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いです。 |
| | *(Vâng. Đang có sự hiểu lầm về văn hoá giữa TTS Việt và Indonesia. Khác biệt về ý thức thời gian và cách tiếp cận công việc ạ.)* |
| Yamamoto | ああ、<ruby>多国籍<rt>たこくせき</rt></ruby>チームあるあるね。グエンさんはどうしたいと<ruby>思<rt>おも</rt></ruby>っている? |
| | *(À, chuyện thường gặp với nhóm đa quốc tịch nhỉ. Ngọc đang định làm gì?)* |
| Ngọc | <ruby>三人<rt>さんにん</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めて、オープンに<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>う<ruby>場<rt>ば</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りたいと<ruby>思<rt>おも</rt></ruby>います。でも、<ruby>誰<rt>だれ</rt></ruby>かを<ruby>責<rt>せ</rt></ruby>める<ruby>場<rt>ば</rt></ruby>にはしたくないです。 |
| | *(Em muốn tập hợp cả 3 người lại, tạo không gian nói chuyện cởi mở. Nhưng không muốn biến thành buổi quy tội ai.)* |
| Yamamoto | いいアプローチだと<ruby>思<rt>おも</rt></ruby>うよ。「それぞれの<ruby>文化<rt>ぶんか</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>する」という<ruby>切<rt>き</rt></ruby>り<ruby>口<rt>くち</rt></ruby>で<ruby>始<rt>はじ</rt></ruby>めるといいかもね。 |
| | *(Chị nghĩ đó là cách tiếp cận tốt. Có thể bắt đầu bằng góc độ "chia sẻ cách làm việc của từng nền văn hoá" đó.)* |
| Ngọc | そうですね。<ruby>批判<rt>ひはん</rt></ruby>ではなく、<ruby>学<rt>まな</rt></ruby>び<ruby>合<rt>あ</rt></ruby>いとして。ありがとうございます。 |
| | *(Đúng rồi. Không phải phê bình mà là học hỏi lẫn nhau. Cảm ơn chị.)* |

---

## Tình huống 4 — Phòng hội ý nhỏ · 14:00, Ngọc mở buổi nói chuyện nhóm 3 TTS

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は、みんなで<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>う<ruby>場<rt>ば</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りました。<ruby>誰<rt>だれ</rt></ruby>かを<ruby>責<rt>せ</rt></ruby>める<ruby>場<rt>ば</rt></ruby>ではありません。それぞれの<ruby>国<rt>くに</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>え<ruby>合<rt>あ</rt></ruby>う<ruby>場<rt>ば</rt></ruby>にしましょう。 |
| | *(Hôm nay chị tạo buổi để mọi người nói chuyện với nhau. Đây không phải buổi để trách ai. Hãy coi đây là nơi để chia sẻ cách làm việc của từng nước nhé.)* |
| Tuấn | ...(gật đầu)...はい。 |
| | *(...Vâng.)* |
| Maya | ...(hơi ngại ngùng)...わかりました。 |
| | *(...Em hiểu ạ.)* |
| Ngọc | まず<ruby>私<rt>わたし</rt></ruby>から。ベトナムでは<ruby>仕事<rt>しごと</rt></ruby>で「<ruby>時間<rt>じかん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る」ことを<ruby>特別<rt>とくべつ</rt></ruby>に<ruby>大切<rt>たいせつ</rt></ruby>にします。でもそれは「<ruby>仕事<rt>しごと</rt></ruby>への<ruby>誠実<rt>せいじつ</rt></ruby>さ」の<ruby>表<rt>あらわ</rt></ruby>し<ruby>方<rt>かた</rt></ruby>のひとつです。<ruby>マヤさんの<rt>まやさんの</rt></ruby><ruby>国<rt>くに</rt></ruby>では、どう<ruby>表<rt>あらわ</rt></ruby>しますか? |
| | *(Trước hết chị chia sẻ. Ở Việt Nam, "giữ giờ" được đặc biệt coi trọng trong công việc. Nhưng đó chỉ là một cách thể hiện "sự tận tâm với công việc". Ở nước Maya, cách thể hiện như thế nào?)* |
| Maya | インドネシアでは...<ruby>関係<rt>かんけい</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にします。<ruby>人<rt>ひと</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしっかり<ruby>聞<rt>き</rt></ruby>いてから<ruby>動<rt>うご</rt></ruby>くことが<ruby>誠実<rt>せいじつ</rt></ruby>さです。だから<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りで<ruby>詳<rt>くわ</rt></ruby>しく<ruby>話<rt>はな</rt></ruby>すのは...<ruby>雑<rt>ざつ</rt></ruby>にしたくないからです。 |
| | *(Ở Indonesia... chúng em coi trọng mối quan hệ. Nghe kỹ câu chuyện của người kia rồi mới hành động — đó là sự tận tâm. Vì vậy nói chi tiết trong bàn giao ca là vì... không muốn làm ẩu ạ.)* |
| Tuấn | (ngạc nhiên) ...あ、そういう<ruby>意味<rt>いみ</rt></ruby>だったんですか。 |
| | *(...À, ý nghĩa là vậy à.)* |

---

## Tình huống 5 — Phòng hội ý nhỏ · 14:20, Tuấn chia sẻ và hiểu ra

| Vai | Lời thoại |
|---|---|
| Ngọc | トゥアンさんは、<ruby>時間<rt>じかん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ることをなぜ<ruby>大切<rt>たいせつ</rt></ruby>にしていますか? |
| | *(Anh Tuấn, anh coi trọng giữ giờ vì lý do gì?)* |
| Tuấn | ...カントーで<ruby>働<rt>はたら</rt></ruby>いていたとき、<ruby>時間<rt>じかん</rt></ruby>が<ruby>守<rt>まも</rt></ruby>れないと<ruby>信用<rt>しんよう</rt></ruby>を<ruby>なくし<rt>なくし</rt></ruby>ます。<ruby>仕事<rt>しごと</rt></ruby>を<ruby>失<rt>うしな</rt></ruby>います。だからここでも<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>守<rt>まも</rt></ruby>ろうとしています。 |
| | *(Khi em làm ở Cần Thơ, không giữ giờ là mất tín nhiệm. Mất việc luôn. Vì vậy ở đây em tuyệt đối giữ giờ ạ.)* |
| Ngọc | ありがとう、トゥアンさん。<ruby>二人<rt>ふたり</rt></ruby>とも、<ruby>仕事<rt>しごと</rt></ruby>に<ruby>誠実<rt>せいじつ</rt></ruby>でした。ただ、その<ruby>形<rt>かたち</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>っただけです。 |
| | *(Cảm ơn anh Tuấn. Cả hai đều tận tâm với công việc. Chỉ là cách thể hiện khác nhau thôi.)* |
| Maya | ...<ruby>私<rt>わたし</rt></ruby>、トゥアンさんが<ruby>私<rt>わたし</rt></ruby>のことが<ruby>嫌<rt>きら</rt></ruby>いなのかと<ruby>思<rt>おも</rt></ruby>っていました。 |
| | *(Em cứ tưởng anh Tuấn ghét em ạ.)* |
| Tuấn | (ngượng ngùng) ...そんなことはないです。マヤさんが<ruby>利用者<rt>りようしゃ</rt></ruby>さんと<ruby>話<rt>はな</rt></ruby>すとき、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>上手<rt>うま</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>っています。 |
| | *(...Không có vậy đâu. Khi Maya nói chuyện với người được chăm sóc, anh thật sự nghĩ em giỏi lắm.)* |
| Linh | (nhẹ nhõm, lần đầu lên tiếng) よかった...みんな<ruby>仲<rt>なか</rt></ruby>よくしてほしかったです。 |
| | *(May quá... Em muốn mọi người hòa thuận với nhau ạ.)* |

---

## Tình huống 6 — Phòng hội ý nhỏ · 14:40, Ngọc đặt ra quy tắc chung của nhóm

| Vai | Lời thoại |
|---|---|
| Ngọc | では、このチームの<ruby>共通<rt>きょうつう</rt></ruby>ルールを<ruby>決<rt>き</rt></ruby>めましょう。まず「<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>り」について。みんなの<ruby>意見<rt>いけん</rt></ruby>は? |
| | *(Vậy hãy quyết định quy tắc chung của nhóm này. Trước hết về "bàn giao ca". Ý kiến của mọi người?)* |
| Tuấn | 5<ruby>分以内<rt>ふんいない</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いしたいです。 |
| | *(Em muốn trong vòng 5 phút ạ.)* |
| Maya | でも<ruby>大事<rt>だいじ</rt></ruby>なことは<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>伝<rt>つた</rt></ruby>えたいです。 |
| | *(Nhưng em muốn truyền đạt hết những điều quan trọng ạ.)* |
| Ngọc | なるほど。では「<ruby>重要事項<rt>じゅうようじこう</rt></ruby>は<ruby>先<rt>さき</rt></ruby>に、<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>記録<rt>きろく</rt></ruby>で」はどうですか?<ruby>口頭<rt>こうとう</rt></ruby>では5<ruby>分<rt>ふん</rt></ruby>、<ruby>詳<rt>くわ</rt></ruby>しいことは<ruby>記録<rt>きろく</rt></ruby>を<ruby>見<rt>み</rt></ruby>てもらう。 |
| | *(Ra vậy. Vậy "điều quan trọng nói trước, chi tiết thì dùng hồ sơ" thì sao? Miệng 5 phút, việc chi tiết thì xem hồ sơ.)* |
| Tuấn | それなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。 |
| | *(Vậy thì được ạ.)* |
| Maya | はい、それでいいです。 |
| | *(Vâng, vậy được ạ.)* |
| Linh | (ghi lại vào sổ) <ruby>記録<rt>きろく</rt></ruby>します。 |
| | *(Em ghi lại ạ.)* |
| Ngọc | いい。もう<ruby>一<rt>ひと</rt></ruby>つ。「わからないことがあったら、<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>聞<rt>き</rt></ruby>く」。<ruby>目<rt>め</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>しない。<ruby>約束<rt>やくそく</rt></ruby>できますか? |
| | *(Tốt. Thêm một điều nữa. "Có gì không hiểu thì hỏi trực tiếp". Không phán xét qua ánh mắt. Hứa được không?)* |
| 3 người | はい。 |
| | *(Vâng.)* |

---

## Tình huống 7 — Phòng sinh hoạt chung · 15:30, Maya và Tuấn phối hợp chăm sóc cụ Kimura

| Vai | Lời thoại |
|---|---|
| Tuấn | マヤさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>口腔<rt>こうくう</rt></ruby><ruby>ケア<rt>けあ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<ruby>私<rt>わたし</rt></ruby>は<ruby>体位変換<rt>たいいへんかん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。 |
| | *(Maya, bạn có thể chăm sóc răng miệng cho ông Kimura không? Tôi phụ trách đổi tư thế nằm.)* |
| Maya | もちろんです。(đến gần ông Kimura, mỉm cười) <ruby>木村<rt>きむら</rt></ruby>さん、お<ruby>口<rt>くち</rt></ruby>のケアをしましょうか? |
| | *(Tất nhiên. Ông Kimura, để con chăm sóc răng miệng cho ông nhé ạ?)* |
| Ông Kimura | ああ、マヤちゃん。<ruby>今日<rt>きょう</rt></ruby>も<ruby>笑顔<rt>えがお</rt></ruby>がいいね。 |
| | *(Ồ, Maya. Hôm nay nụ cười cũng đẹp nhỉ.)* |
| Maya | ありがとうございます! |
| | *(Cảm ơn ông ạ!)* |
| Tuấn | (sau khi xong) マヤさん、ありがとう。<ruby>連携<rt>れんけい</rt></ruby>、スムーズでしたね。 |
| | *(Maya, cảm ơn. Phối hợp suôn sẻ nhỉ.)* |
| Maya | こちらこそ。トゥアンさんの<ruby>体位変換<rt>たいいへんかん</rt></ruby>、<ruby>丁寧<rt>ていねい</rt></ruby>ですね。 |
| | *(Em mới cảm ơn anh. Đổi tư thế nằm của anh tỉ mỉ lắm.)* |
| Ngọc | (quan sát từ xa, gật đầu nhẹ) |

---

## Tình huống 8 — Hành lang · 16:00, Linh nói với Ngọc

| Vai | Lời thoại |
|---|---|
| Linh | グエン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>二人<rt>ふたり</rt></ruby>が<ruby>仲良<rt>なかよ</rt></ruby>くなってよかったです。<ruby>先輩<rt>せんぱい</rt></ruby>はどうやってあんなに<ruby>上手<rt>うま</rt></ruby>く<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>わせたんですか? |
| | *(Chị Ngọc, hai người hòa thuận với nhau rồi, tốt quá. Chị làm sao mà điều phối khéo vậy ạ?)* |
| Ngọc | <ruby>秘訣<rt>ひけつ</rt></ruby>は「<ruby>行動<rt>こうどう</rt></ruby>だけを<ruby>見<rt>み</rt></ruby>ない」ことです。なぜその<ruby>行動<rt>こうどう</rt></ruby>をしたか、<ruby>背景<rt>はいけい</rt></ruby>を<ruby>知<rt>し</rt></ruby>ろうとすることです。 |
| | *(Bí quyết là "không chỉ nhìn hành động". Mà cố gắng hiểu tại sao họ làm vậy — hiểu bối cảnh phía sau.)* |
| Linh | なるほど...。<ruby>私<rt>わたし</rt></ruby>も、<ruby>誰<rt>だれ</rt></ruby>かと<ruby>意見<rt>いけん</rt></ruby>が<ruby>合<rt>あ</rt></ruby>わないとき、そう<ruby>考<rt>かんが</rt></ruby>えられるようになりたいです。 |
| | *(Ra vậy... Em cũng muốn học cách nghĩ như vậy khi ý kiến không khớp với ai đó ạ.)* |
| Ngọc | それが「<ruby>チームワーク<rt>ちーむわーく</rt></ruby>」ですよ。リンさんも、<ruby>今日<rt>きょう</rt></ruby>「みんなに<ruby>仲<rt>なか</rt></ruby>よくしてほしかった」と<ruby>言<rt>い</rt></ruby>ってくれましたね。それ、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>でした。 |
| | *(Đó là "tinh thần nhóm" đó. Hôm nay em cũng đã nói "muốn mọi người hòa thuận" mà. Câu đó rất quan trọng đấy.)* |

---

## Tình huống 9 — Văn phòng Sato主任 · 16:30, Ngọc báo cáo lên 主任

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、<ruby>実習生<rt>じっしゅうせい</rt></ruby>チームについてご<ruby>報告<rt>ほうこく</rt></ruby>があります。 |
| | *(Chị Sato, em có báo cáo về nhóm TTS ạ.)* |
| Sato主任 | はい、どうぞ。 |
| | *(Vâng, nói đi.)* |
| Ngọc | ベトナムとインドネシアのTTSの<ruby>間<rt>あいだ</rt></ruby>で、<ruby>文化的<rt>ぶんかてき</rt></ruby>な<ruby>誤解<rt>ごかい</rt></ruby>がありました。<ruby>今日<rt>きょう</rt></ruby>、<ruby>三人<rt>さんにん</rt></ruby>での<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>いの<ruby>場<rt>ば</rt></ruby>を<ruby>設<rt>もう</rt></ruby>けて、<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りの<ruby>共通<rt>きょうつう</rt></ruby>ルールを<ruby>決<rt>き</rt></ruby>めました。 |
| | *(Đã có hiểu lầm về văn hoá giữa TTS Việt và Indonesia. Hôm nay em tổ chức buổi nói chuyện 3 người, và đã thống nhất quy tắc chung cho bàn giao ca.)* |
| Sato主任 | それはよかった。どんなルールにしたの? |
| | *(Tốt rồi. Quy tắc như thế nào?)* |
| Ngọc | 「<ruby>口頭<rt>こうとう</rt></ruby>の<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りは<ruby>重要事項<rt>じゅうようじこう</rt></ruby>のみ5<ruby>分以内<rt>ふんいない</rt></ruby>。<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>記録<rt>きろく</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>」と「<ruby>不明点<rt>ふめいてん</rt></ruby>は<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>する」の2<ruby>点<rt>てん</rt></ruby>です。 |
| | *(Hai điểm: "Bàn giao miệng chỉ những điều quan trọng, trong 5 phút. Chi tiết xác nhận qua hồ sơ" và "Điều không rõ thì hỏi trực tiếp".)* |
| Sato主任 | グエンさん、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>して<ruby>動<rt>うご</rt></ruby>けましたね。<ruby>主任<rt>しゅにん</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>らずに<ruby>解決<rt>かいけつ</rt></ruby>した。 |
| | *(Ngọc đã tự phán đoán và hành động rồi nhỉ. Giải quyết mà không cần dựa vào chủ nhiệm.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さんにアドバイスをいただきました。ありがとうございます。 |
| | *(Em đã được chị Yamamoto cho lời khuyên ạ. Cảm ơn.)* |
| Sato主任 | チームで<ruby>育<rt>そだ</rt></ruby>てている、ということですね。よかった。 |
| | *(Là cả nhóm cùng nuôi dưỡng nhau, đúng không. Tốt lắm.)* |

---

## Tình huống 10 — Bãi đỗ xe · 17:10, Ngọc và Đức trao đổi ngắn cuối ngày

| Vai | Lời thoại |
|---|---|
| Đức | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>実習生<rt>じっしゅうせい</rt></ruby>の<ruby>ミーティング<rt>みーてぃんぐ</rt></ruby>したって<ruby>聞<rt>き</rt></ruby>きましたよ。 |
| | *(Chị Ngọc, nghe nói hôm nay chị họp với TTS à.)* |
| Ngọc | はい。ベトナムとインドネシアで、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>って、<ruby>少<rt>すこ</rt></ruby>しぶつかっていました。 |
| | *(Vâng. Việt và Indonesia khác nhau về cách nghĩ về công việc, đã va chạm một chút.)* |
| Đức | <ruby>私<rt>わたし</rt></ruby>たちのとき、そういう<ruby>問題<rt>もんだい</rt></ruby>、グエンさんが<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えていたんですよね。<ruby>当時<rt>とうじ</rt></ruby>、<ruby>誰<rt>だれ</rt></ruby>も<ruby>教育担当<rt>きょういくたんとう</rt></ruby>がいなかった。 |
| | *(Hồi bọn mình, kiểu vấn đề đó chị Ngọc ôm một mình. Lúc đó không có ai phụ trách đào tạo cả.)* |
| Ngọc | そうですね...<ruby>今<rt>いま</rt></ruby>の<ruby>子<rt>こ</rt></ruby>たちは<ruby>恵<rt>めぐ</rt></ruby>まれています。でも、その<ruby>分<rt>ぶん</rt></ruby><ruby>私<rt>わたし</rt></ruby>はちゃんと<ruby>仕事<rt>しごと</rt></ruby>をしないといけないですね。 |
| | *(Đúng rồi... Bọn nhỏ bây giờ may mắn hơn. Nhưng chính vì vậy em phải làm tốt việc của mình hơn.)* |
| Đức | グエンさんらしいですね。お<ruby>疲<rt>つか</rt></ruby>れさまでした。 |
| | *(Đúng kiểu chị Ngọc nhỉ. Vất vả rồi.)* |
| Ngọc | お<ruby>疲<rt>つか</rt></ruby>れさまでした、<ruby>徳<rt>とく</rt></ruby>さん。 |
| | *(Anh Đức vất vả rồi.)* |

---

## Tình huống 11 — Phòng họp nhỏ · 18:00, Ngọc viết kế hoạch đào tạo tháng tới

| Vai | Lời thoại |
|---|---|
| An | グエンさん、まだいたんですか?<ruby>今日<rt>きょう</rt></ruby>は<ruby>残業<rt>ざんぎょう</rt></ruby>ですか? |
| | *(Chị Ngọc vẫn còn đây à? Hôm nay tăng ca ạ?)* |
| Ngọc | ちょっと<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>教育計画<rt>きょういくけいかく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えていました。<ruby>今日<rt>きょう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まえて、3<ruby>カ国<rt>かこく</rt></ruby>の<ruby>文化的<rt>ぶんかてき</rt></ruby><ruby>背景<rt>はいけい</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>するセッションを<ruby>入<rt>い</rt></ruby>れたいと<ruby>思<rt>おも</rt></ruby>って。 |
| | *(Chị đang nghĩ kế hoạch đào tạo tháng tới. Dựa trên chuyện hôm nay, chị muốn thêm một buổi chia sẻ bối cảnh văn hoá của 3 nước.)* |
| An | いいですね。ベトナム・インドネシア・それと<ruby>日本<rt>にほん</rt></ruby>の<ruby>職場文化<rt>しょくばぶんか</rt></ruby>も? |
| | *(Tốt nhỉ. Việt Nam, Indonesia — và cả văn hoá công sở Nhật nữa ạ?)* |
| Ngọc | そうです。<ruby>日本<rt>にほん</rt></ruby>の<ruby>職場<rt>しょくば</rt></ruby>では「<ruby>空気<rt>くうき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む」「<ruby>報連相<rt>ほうれんそう</rt></ruby>」が<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>ですが、<ruby>外国人<rt>がいこくじん</rt></ruby>スタッフには<ruby>説明<rt>せつめい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですね。 |
| | *(Đúng. Ở công sở Nhật, "đọc không khí" và "báo-liên-thương" là điều hiển nhiên, nhưng nhân viên nước ngoài cần được giải thích rõ nhỉ.)* |
| An | グエンさんって、<ruby>自分<rt>じぶん</rt></ruby>も<ruby>外国人<rt>がいこくじん</rt></ruby>なのに、もう<ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>視点<rt>してん</rt></ruby>と<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>視点<rt>してん</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>を<ruby>持<rt>も</rt></ruby>っているんですね。 |
| | *(Chị Ngọc, dù chính chị cũng là người nước ngoài, nhưng chị đã có cả hai góc nhìn — của người Nhật và của người nước ngoài nhỉ.)* |
| Ngọc | (cười) 5<ruby>年<rt>ねん</rt></ruby>いると、そうなりますよ。 |
| | *(Ở 5 năm thì vậy thôi.)* |

---

## Tình huống 12 — Phòng riêng · 21:30, điện thoại về cho mẹ

> Scene tiếng Việt — mạch nhân vật, tâm sự sau ngày dài điều phối nhóm.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Con ơi, hôm nay sao nghe giọng mệt vậy? |
| Ngọc | (tiếng Việt) Mệt vui mẹ ơi. Hôm nay con phải hoà giải mấy đứa TTS. Một đứa Việt, một đứa Indonesia, cứ hiểu nhầm nhau. |
| Mẹ | (tiếng Việt) Rồi sao? Ổn không? |
| Ngọc | (tiếng Việt) Ổn rồi mẹ. Tụi nó chỉ cần có người để ngồi lại với nhau. Con nhớ hồi đó con sang cũng một mình, không có ai giải thích gì hết... giờ con làm được việc đó cho tụi nó, vui lắm. |
| Mẹ | (tiếng Việt) Con lớn rồi ha. Mẹ yên tâm lắm. Giữ sức khoẻ nghen, đừng làm quá sức. |
| Ngọc | (tiếng Việt) Dạ con biết. Mẹ uống thuốc đúng giờ chưa? Để con hỏi em Thảo dòm chừng mẹ dùm. |

---

## Đọng lại chương 5

Ngọc ở vị trí 教育担当 không chỉ dạy kỹ năng — mà còn là người **xây văn hoá nhóm**. Chương này tập trung: **tiếp nhận phàn nàn không phán xét**, **nghe hai phía trước khi hành động**, **kỹ thuật tổ chức họp hoà giải** (không quy tội, dùng "chia sẻ văn hoá" làm góc tiếp cận), **đặt quy tắc chung theo đồng thuận**, và **báo cáo lên cấp trên** sau khi giải quyết. Quan trọng hơn: Ngọc nhận ra lợi thế độc đáo của mình — người có cả hai góc nhìn.

> Từ vựng & mẫu câu chương này: 多国籍チーム・文化的な誤解・すれ違い・相談・間に入る・話し合いの場・批判・誠実さ・共通ルール・重要事項・詳細・口頭・申し送り・連携・教育計画・職場文化・空気を読む・報連相・視点・アドバイスをいただく・主任に報告', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000006, 800000031, NULL, 'markdown_book', 'T6. Lần tiễn biệt đầu tiên của thực tập sinh (実習生の初めての看取り)', '# Sách điều dưỡng viên quốc gia · T6. Lần tiễn biệt đầu tiên của thực tập sinh (実習生の初めての看取り)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー + 教育担当) hướng dẫn TTS Linh (nữ, nhút nhát) vượt qua lần đầu tiếp xúc với giai đoạn <ruby>看取り<rt>みとり</rt></ruby> — khi <ruby>利用者<rt>りようしゃ</rt></ruby> Fujita-san bước vào những tuần cuối đời. Qua đó Ngọc truyền lại bài học nhân văn chính cô từng học từ chị Yamamoto: điều dưỡng không thể cứu hết, nhưng luôn có thể ở bên.

---

## Bối cảnh

Tháng 10 năm 2031. Fujita Haruko (88 tuổi, nhập viện dưỡng lão từ 2026) bước vào giai đoạn <ruby>看取り<rt>みとり</rt></ruby> — ăn uống giảm dần, ngủ nhiều, <ruby>呼吸<rt>こきゅう</rt></ruby> thay đổi. Bác sĩ và y tá Nakamura đã thông báo với gia đình, team điều dưỡng chuyển sang chăm sóc <ruby>終末期<rt>しゅうまつき</rt></ruby>. TTS Linh (3 tháng kinh nghiệm) được Ngọc chủ động đưa vào ca này để học. Đây là lần đầu Linh đối mặt với cái chết trong nghề.

---

## Tình huống 1 — Phòng họp nhỏ · 7:50 sáng, Ngọc thông báo trước ca

| Vai | Lời thoại |
|---|---|
| Ngọc | リンさん、ツアンさん、おはようございます。今日の<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に、一つお<ruby>話<rt>はなし</rt></ruby>があります。<br>*(Linh, Tuấn, chào buổi sáng. Trước buổi bàn giao ca, tôi có một điều muốn nói.)* |
| Linh | はい、リーダー。<br>*(Vâng, chị trưởng nhóm.)* |
| Ngọc | <ruby>藤田<rt>ふじた</rt></ruby>さんが<ruby>看取り<rt>みとり</rt></ruby>の<ruby>段階<rt>だんかい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っています。<ruby>食事<rt>しょくじ</rt></ruby>がほとんど<ruby>摂<rt>と</rt></ruby>れなくなり、<ruby>眠<rt>ねむ</rt></ruby>っている<ruby>時間<rt>じかん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えています。<br>*(Cụ Fujita đã vào giai đoạn cuối đời. Bà gần như không ăn được nữa, thời gian ngủ tăng lên.)* |
| Tuấn | ...そうですか。<br>*(...Vậy ạ.)* |
| Ngọc | <ruby>看取り<rt>みとり</rt></ruby>は<ruby>特別<rt>とくべつ</rt></ruby>なケアです。<ruby>怖<rt>こわ</rt></ruby>いと<ruby>感<rt>かん</rt></ruby>じる<ruby>人<rt>ひと</rt></ruby>もいます。でも、<ruby>私<rt>わたし</rt></ruby>たちにできることがあります。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>学<rt>まな</rt></ruby>びましょう。<br>*(Chăm sóc cuối đời là loại chăm sóc đặc biệt. Có người cảm thấy sợ. Nhưng chúng ta có thể làm được. Hãy cùng nhau học.)* |
| Linh | (giọng nhỏ) ...はい。<br>*(...Vâng.)* |

---

## Tình huống 2 — Phòng <ruby>藤田<rt>ふじた</rt></ruby>-san · 8:20, buổi chăm sóc sáng

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa nhẹ) <ruby>藤田<rt>ふじた</rt></ruby>さん、おはようございます。グエンです。リンも<ruby>一緒<rt>いっしょ</rt></ruby>にまいりました。<br>*(Cụ Fujita, chào buổi sáng. Cháu là Nguyễn. Linh cũng đi cùng ạ.)* |
| Fujita-san | (giọng yếu, mắt hé mở) ...おはよう。<br>*(...Chào con.)* |
| Ngọc | <ruby>体<rt>からだ</rt></ruby>をきれいにしますね。<ruby>冷<rt>つめ</rt></ruby>たくないか<ruby>確認<rt>かくにん</rt></ruby>しながら<ruby>進<rt>すす</rt></ruby>めます。<br>*(Cháu lau người cho cụ nhé. Cháu sẽ kiểm tra xem có lạnh không rồi làm từng bước.)* |
| Fujita-san | ...ありがとう。<br>*(...Cảm ơn con.)* |
| Ngọc | (nói nhỏ với Linh) リンさん、<ruby>声<rt>こえ</rt></ruby>かけを<ruby>止<rt>や</rt></ruby>めないでください。<ruby>目<rt>め</rt></ruby>が<ruby>閉<rt>と</rt></ruby>じていても、<ruby>耳<rt>みみ</rt></ruby>は<ruby>聞<rt>き</rt></ruby>こえています。<br>*(Linh, đừng ngừng lên tiếng. Dù mắt nhắm, tai vẫn nghe được.)* |
| Linh | (gật đầu, giọng cẩn thận) <ruby>藤田<rt>ふじた</rt></ruby>さん、<ruby>温<rt>あたた</rt></ruby>かいですか?<br>*(Cụ Fujita, cụ có ấm không ạ?)* |
| Fujita-san | (khẽ gật đầu) ...うん。<br>*(...Ừ.)* |

---

## Tình huống 3 — Hành lang · 9:00, Linh hỏi Ngọc sau khi ra khỏi phòng

| Vai | Lời thoại |
|---|---|
| Linh | (giọng run nhẹ) リーダー、<ruby>藤田<rt>ふじた</rt></ruby>さんは...もうすぐですか?<br>*(Chị trưởng nhóm, cụ Fujita... sắp rồi ạ?)* |
| Ngọc | <ruby>中村<rt>なかむら</rt></ruby>看護師さんによると、<ruby>数日<rt>すうじつ</rt></ruby>から<ruby>数週間<rt>すうしゅうかん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>われます。<ruby>体<rt>からだ</rt></ruby>のサインがいくつか<ruby>出<rt>で</rt></ruby>ています。<br>*(Theo y tá Nakamura, có thể vài ngày đến vài tuần. Cơ thể đã có một số dấu hiệu.)* |
| Linh | ...どんなサインですか?<br>*(...Những dấu hiệu gì ạ?)* |
| Ngọc | <ruby>食事<rt>しょくじ</rt></ruby>が<ruby>摂<rt>と</rt></ruby>れない、<ruby>睡眠<rt>すいみん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>える、<ruby>下肢<rt>かし</rt></ruby>がむくむ、<ruby>チアノーゼ<rt>ちあのーぜ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ることがあります。あとで<ruby>看取り<rt>みとり</rt></ruby>パンフレットを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>読<rt>よ</rt></ruby>みましょう。<br>*(Không ăn được, ngủ nhiều, phù chân, đôi khi có tím tái. Lát nữa mình cùng đọc tờ thông tin về chăm sóc cuối đời nhé.)* |
| Linh | はい。...こわい、というより、悲しいです。<br>*(Vâng. ...Không phải sợ, mà là buồn ạ.)* |
| Ngọc | それが<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>気持<rt>きも</rt></ruby>ちです。<ruby>大切<rt>たいせつ</rt></ruby>にしてください。<br>*(Đó là cảm xúc thật. Hãy trân trọng điều đó.)* |

---

## Tình huống 4 — Phòng y tá · 10:00, Y tá Nakamura giải thích quy trình <ruby>看取り<rt>みとり</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Nakamura | (y tá) リーダーさん、<ruby>藤田<rt>ふじた</rt></ruby>さんの<ruby>バイタル<rt>ばいたる</rt></ruby>ですが、<ruby>血圧<rt>けつあつ</rt></ruby>が<ruby>下降<rt>かこう</rt></ruby>気味です。<ruby>家族<rt>かぞく</rt></ruby>には<ruby>昨日<rt>きのう</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>済みです。<br>*(Trưởng nhóm, về chỉ số của cụ Fujita — huyết áp đang có xu hướng giảm. Đã liên hệ gia đình từ hôm qua rồi.)* |
| Ngọc | ありがとうございます。<ruby>苦痛<rt>くつう</rt></ruby>の<ruby>緩和<rt>かんわ</rt></ruby>は<ruby>現状<rt>げんじょう</rt></ruby>のまま<ruby>継続<rt>けいぞく</rt></ruby>でよろしいでしょうか?<br>*(Cảm ơn chị. Về giảm đau, tiếp tục giữ nguyên phác đồ hiện tại đúng không ạ?)* |
| Nakamura | はい。<ruby>点滴<rt>てんてき</rt></ruby>は<ruby>最小限<rt>さいしょうげん</rt></ruby>で、<ruby>口腔<rt>こうくう</rt></ruby>ケアを<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Đúng. Giảm tối thiểu dịch truyền, tiếp tục chăm sóc khoang miệng cẩn thận.)* |
| Ngọc | (quay sang Linh) リンさん、<ruby>看取り<rt>みとり</rt></ruby>ケアでは<ruby>延命<rt>えんめい</rt></ruby>より<ruby>安楽<rt>あんらく</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>します。<ruby>痛<rt>いた</rt></ruby>みをとって、<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>過<rt>す</rt></ruby>ごしていただくことが<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(Linh, trong chăm sóc cuối đời, chúng ta ưu tiên sự thoải mái hơn kéo dài sinh mạng. Mục tiêu là giảm đau và giúp cụ sống những ngày còn lại thật yên bình.)* |
| Linh | ...はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(...Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 5 — Phòng <ruby>藤田<rt>ふじた</rt></ruby>-san · 14:00, gia đình đến thăm

| Vai | Lời thoại |
|---|---|
| Con gái Fujita | (60 tuổi, đến từ Kobe) グエンさん、<ruby>母<rt>はは</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>はいかがですか?<br>*(Chị Nguyễn, tình trạng mẹ tôi thế nào ạ?)* |
| Ngọc | <ruby>今朝<rt>けさ</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>かけに<ruby>反応<rt>はんのう</rt></ruby>してくださいました。「<ruby>温<rt>あたた</rt></ruby>かい」とおっしゃっていました。<ruby>苦<rt>くる</rt></ruby>しそうな<ruby>様子<rt>ようす</rt></ruby>はありません。<br>*(Sáng nay cụ có phản ứng khi chúng tôi nói chuyện. Cụ nói "ấm". Không có biểu hiện đau đớn ạ.)* |
| Con gái Fujita | (nhẹ nhõm) そうですか。ありがとうございます。<br>*(Vậy ạ. Cảm ơn chị nhiều.)* |
| Ngọc | ご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてあげてください。<ruby>耳<rt>みみ</rt></ruby>には<ruby>届<rt>とど</rt></ruby>いていると<ruby>思<rt>おも</rt></ruby>います。<br>*(Xin hãy nói chuyện với cụ. Tôi tin tai cụ vẫn nghe được ạ.)* |
| Con gái Fujita | (ngồi xuống bên giường, cầm tay mẹ) お母さん、来たよ。<br>*(Mẹ ơi, con đến rồi.)* |
| Linh | (đứng ngoài cửa, nói nhỏ với Ngọc) ...きれいですね。<ruby>家族<rt>かぞく</rt></ruby>がそばにいる。<br>*(...Đẹp quá chị ơi. Có gia đình bên cạnh.)* |
| Ngọc | (gật nhẹ) そうですね。私たちの<ruby>仕事<rt>しごと</rt></ruby>の一つは、この<ruby>時間<rt>じかん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ることです。<br>*(Đúng vậy. Một trong những công việc của chúng ta là bảo vệ khoảng thời gian này.)* |

---

## Tình huống 6 — Phòng nghỉ nhân viên · 15:30, Linh sụp xuống

| Vai | Lời thoại |
|---|---|
| Linh | (ngồi xuống ghế, mắt đỏ) リーダー、<ruby>私<rt>わたし</rt></ruby>、ちゃんとできていますか?<ruby>ケア<rt>けあ</rt></ruby>のとき<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えて...<br>*(Chị trưởng nhóm, em làm đúng không ạ? Khi chăm sóc tay em run...)* |
| Ngọc | (ngồi xuống cạnh) 手が震えても、<ruby>声<rt>こえ</rt></ruby>かけを<ruby>止<rt>や</rt></ruby>めなかった。<ruby>藤田<rt>ふじた</rt></ruby>さんに「<ruby>温<rt>あたた</rt></ruby>かいですか」って<ruby>聞<rt>き</rt></ruby>けた。それで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Tay run nhưng em không ngừng lên tiếng. Em đã hỏi cụ Fujita "cụ có ấm không". Như vậy là đủ rồi.)* |
| Linh | ...でも、<ruby>助<rt>たす</rt></ruby>けられない、と<ruby>思<rt>おも</rt></ruby>ったら、<ruby>悔<rt>くや</rt></ruby>しくて。<br>*(...Nhưng khi nghĩ rằng mình không thể cứu được, em thấy... tức.)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はそうでした。<ruby>先輩<rt>せんぱい</rt></ruby>に言われたんです。「<ruby>看取り<rt>みとり</rt></ruby>は<ruby>失敗<rt>しっぱい</rt></ruby>じゃない。<ruby>旅立ち<rt>たびだち</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>うことだ」と。<br>*(Tôi cũng vậy lúc đầu. Đàn chị đã nói với tôi: "Chăm sóc cuối đời không phải thất bại. Đó là đồng hành cùng người ra đi.")* |
| Linh | ...<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>う。<br>*(...Đồng hành.)* |
| Ngọc | そうです。<ruby>泣<rt>な</rt></ruby>きたいときは<ruby>泣<rt>な</rt></ruby>いていい。でも<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>前<rt>まえ</rt></ruby>では、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いた<ruby>顔<rt>かお</rt></ruby>で<ruby>側<rt>そば</rt></ruby>にいてください。それだけでいい。<br>*(Đúng. Khi muốn khóc thì khóc đi. Nhưng trước mặt cụ, hãy ở bên cạnh với khuôn mặt bình thản. Chỉ cần vậy thôi.)* |

---

## Tình huống 7 — Phòng <ruby>藤田<rt>ふじた</rt></ruby>-san · tối ngày hôm sau, báo tin

| Vai | Lời thoại |
|---|---|
| Yamamoto | (gọi điện, Ngọc vừa hết ca) グエンさん、<ruby>藤田<rt>ふじた</rt></ruby>さん、<ruby>先<rt>さき</rt></ruby>ほど<ruby>旅立<rt>たびだ</rt></ruby>たれました。<ruby>家族<rt>かぞく</rt></ruby>が<ruby>側<rt>そば</rt></ruby>にいらっしゃいました。<br>*(Ngọc, cụ Fujita vừa ra đi. Gia đình đã ở bên cạnh.)* |
| Ngọc | ...そうですか。ありがとうございます、<ruby>山本<rt>やまもと</rt></ruby>さん。<ruby>穏<rt>おだ</rt></ruby>やかでしたか?<br>*(...Vậy ạ. Cảm ơn chị Yamamoto. Cụ có ra đi bình thản không ạ?)* |
| Yamamoto | はい。<ruby>娘<rt>むすめ</rt></ruby>さんが<ruby>手<rt>て</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>っていらっしゃいました。<br>*(Có. Con gái đang cầm tay cụ.)* |
| Ngọc | よかったです。(しばらく<ruby>沈黙<rt>ちんもく</rt></ruby>) リンに<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Thật may. (Im lặng một lúc) Em sẽ báo Linh.)* |
| Yamamoto | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Nhờ em vậy. Ngọc, em vất vả rồi.)* |

---

## Tình huống 8 — Công viên gần viện · 21:00, Ngọc nói chuyện với Linh

| Vai | Lời thoại |
|---|---|
| Ngọc | (gọi điện cho Linh) リン、<ruby>今<rt>いま</rt></ruby><ruby>話<rt>はなし</rt></ruby>せますか?<br>*(Linh, bây giờ nói chuyện được không?)* |
| Linh | はい。<ruby>藤田<rt>ふじた</rt></ruby>さん...ですか?<br>*(Vâng. Cụ Fujita... ạ?)* |
| Ngọc | はい。<ruby>今夜<rt>こんや</rt></ruby>、<ruby>穏<rt>おだ</rt></ruby>やかにお<ruby>旅立<rt>たびだ</rt></ruby>ちになりました。<ruby>家族<rt>かぞく</rt></ruby>も<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いました。<br>*(Vâng. Tối nay cụ ra đi bình thản. Gia đình kịp có mặt.)* |
| Linh | ...(しばらく<ruby>無言<rt>むごん</rt></ruby>)...よかった。<ruby>家族<rt>かぞく</rt></ruby>がいて、よかった。<br>*...(im lặng một lúc)...May quá. May là có gia đình bên cạnh.)* |
| Ngọc | リン、<ruby>今日<rt>きょう</rt></ruby>から<ruby>先<rt>さき</rt></ruby>も、こういうことがあります。でも<ruby>今日<rt>きょう</rt></ruby>リンがしたこと、<ruby>声<rt>こえ</rt></ruby>かけを<ruby>続<rt>つづ</rt></ruby>けたこと、<ruby>藤田<rt>ふじた</rt></ruby>さんに<ruby>届<rt>とど</rt></ruby>いていたと<ruby>私<rt>わたし</rt></ruby>は<ruby>思<rt>おも</rt></ruby>います。<br>*(Linh, từ nay về sau sẽ còn những lúc như thế này. Nhưng điều Linh làm hôm nay — tiếp tục lên tiếng — tôi tin là đã chạm đến cụ Fujita.)* |
| Linh | (giọng nghẹn) ...ありがとうございます、リーダー。<br>*(...Cảm ơn chị, chị trưởng nhóm.)* |

---

## Tình huống 9 — Phòng họp · sáng hôm sau, buổi <ruby>デスカンファレンス<rt>でするかんふぁれんす</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Sato | (主任) <ruby>藤田<rt>ふじた</rt></ruby>さんの<ruby>デスカンファレンス<rt>でするかんふぁれんす</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今回<rt>こんかい</rt></ruby>のケアを<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り、<ruby>次<rt>つぎ</rt></ruby>に<ruby>生<rt>い</rt></ruby>かすことを<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>いましょう。<br>*(Xin bắt đầu buổi họp rà soát sau khi mất cụ Fujita. Hãy nhìn lại quá trình chăm sóc và rút ra bài học cho lần sau.)* |
| Ngọc | <ruby>今回<rt>こんかい</rt></ruby>はTTS実習生のリンさんも<ruby>看取り<rt>みとり</rt></ruby>ケアに<ruby>入<rt>はい</rt></ruby>ってもらいました。<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>かけを<ruby>続<rt>つづ</rt></ruby>け、ご<ruby>家族<rt>かぞく</rt></ruby>への<ruby>対応<rt>たいおう</rt></ruby>も<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてできていました。<br>*(Lần này TTS Linh cũng tham gia chăm sóc cuối đời. Linh tiếp tục lên tiếng cẩn thận và ứng xử với gia đình bình tĩnh.)* |
| Linh | (khẽ cúi đầu) ありがとうございます。まだ<ruby>慣<rt>な</rt></ruby>れていませんが、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Cảm ơn ạ. Em vẫn chưa quen nhưng đã học được rất nhiều.)* |
| Nakamura | リンさん、<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>看取り<rt>みとり</rt></ruby>はだれでも<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>次<rt>つぎ</rt></ruby>に<ruby>生<rt>い</rt></ruby>かすことを<ruby>大切<rt>たいせつ</rt></ruby>にしてください。<br>*(Linh, lần đầu chăm sóc cuối đời ai cũng thấy khó. Hãy trân trọng việc rút kinh nghiệm cho lần sau.)* |
| Sato | <ruby>今回<rt>こんかい</rt></ruby>、ご<ruby>家族<rt>かぞく</rt></ruby>から「<ruby>最期<rt>さいご</rt></ruby>まで<ruby>側<rt>そば</rt></ruby>にいてもらえてよかった」とお<ruby>言葉<rt>ことば</rt></ruby>をいただきました。チーム全員に<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Lần này gia đình cụ đã gửi lời "Thật may mắn khi có mọi người ở bên đến phút cuối". Xin cảm ơn cả đội.)* |

---

## Tình huống 10 — <ruby>藤田<rt>ふじた</rt></ruby>-san の部屋 · <ruby>荷物整理<rt>にもつせいり</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Ngọc | (Linh và Ngọc dọn phòng sau khi gia đình lấy đồ) リンさん、<ruby>部屋<rt>へや</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>するときも、<ruby>礼儀<rt>れいぎ</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れないでください。「<ruby>藤田<rt>ふじた</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します」と<ruby>声<rt>こえ</rt></ruby>をかけながら<ruby>進<rt>すす</rt></ruby>めます。<br>*(Linh, khi dọn phòng cũng đừng quên lễ nghĩa. Hãy nói "Cụ Fujita, cho phép cháu" rồi mới làm từng bước.)* |
| Linh | <ruby>藤田<rt>ふじた</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。(nhẹ nhàng dọn đồ)<br>*(Cụ Fujita, cho phép cháu ạ.)* |
| Ngọc | (lau sạch bàn, nói nhỏ) <ruby>藤田<rt>ふじた</rt></ruby>さんは<ruby>花<rt>はな</rt></ruby>が<ruby>好<rt>す</rt></ruby>きでした。いつもお<ruby>部屋<rt>へや</rt></ruby>に<ruby>一輪<rt>いちりん</rt></ruby>あった。<br>*(Cụ Fujita thích hoa. Trong phòng lúc nào cũng có một bông.)* |
| Linh | ...そうですね。<ruby>知<rt>し</rt></ruby>りませんでした。もっと<ruby>話<rt>はな</rt></ruby>しかけておけばよかったです。<br>*...Vậy ạ. Em không biết điều đó. Em ước mình đã nói chuyện nhiều hơn với cụ.)* |
| Ngọc | まだ<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>う<ruby>利用者<rt>りようしゃ</rt></ruby>さんがいます。その<ruby>気持<rt>きも</rt></ruby>ちを、<ruby>次<rt>つぎ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>に。<br>*(Vẫn còn những cụ khác. Hãy mang cảm xúc đó sang người tiếp theo.)* |

---

## Tình huống 11 — <ruby>朝礼<rt>ちょうれい</rt></ruby> tuần sau · Tuấn chia sẻ cảm nhận

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りで、だれか<ruby>話<rt>はな</rt></ruby>したいことはありますか?<br>*(Trong phần nhìn lại tuần này, ai có điều muốn chia sẻ không?)* |
| Tuấn | (ngập ngừng) ...あの、<ruby>私<rt>わたし</rt></ruby>は<ruby>看取り<rt>みとり</rt></ruby>のカンファレンスに<ruby>初<rt>はじ</rt></ruby>めて<ruby>参加<rt>さんか</rt></ruby>しました。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Thưa, em lần đầu tiên tham gia buổi họp sau khi cụ mất. Thật ra em cũng sợ.)* |
| Ngọc | (gật đầu) <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えたこと、よかったです。<ruby>感<rt>かん</rt></ruby>じることを<ruby>隠<rt>かく</rt></ruby>さないでください。チームで<ruby>支<rt>ささ</rt></ruby>え<ruby>合<rt>あ</rt></ruby>いましょう。<br>*(Nói thật được như vậy là tốt. Đừng giấu cảm xúc. Hãy để cả đội cùng nâng đỡ nhau.)* |
| Yamamoto | ツアンさん、<ruby>怖<rt>こわ</rt></ruby>いのは<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>です。でも、その<ruby>経験<rt>けいけん</rt></ruby>がいつか<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>力<rt>ちから</rt></ruby>になりますよ。<br>*(Tuấn, cảm thấy sợ là bình thường. Nhưng kinh nghiệm đó có ngày sẽ thành sức mạnh quý giá đấy.)* |
| Tuấn | ...はい。ありがとうございます。<br>*(...Vâng. Cảm ơn ạ.)* |

---

## Tình huống 12 — Ký túc xá · 22:30, Ngọc gọi về Cần Thơ

> Scene tiếng Việt — Ngọc một mình, gọi mẹ sau tuần dài.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Ngọc đó hả con? Muộn vậy, ổn không? |
| Ngọc | (tiếng Việt) Con ổn mẹ. Tuần này bận. Có cụ trong viện mất, mà con phụ trách đào tạo TTS mới, nên... mệt hơn thường. |
| Mẹ | (tiếng Việt) Tội nghiệp. Con có sao không? |
| Ngọc | (tiếng Việt) Con ổn mẹ. Chỉ là... lần đầu tiên con đứng phía bên kia — không phải TTS học, mà là người dạy TTS vượt qua. Cũng kỳ lạ lắm. |
| Mẹ | (tiếng Việt) Con lớn rồi đó, Ngọc. Mẹ mừng. |
| Ngọc | (tiếng Việt, cười nhẹ) Cảm ơn mẹ. Ngủ sớm đi mẹ, con ổn. Tuần sau con gọi lại. |

---

## Đọng lại chương 6

Linh trải qua <ruby>看取り<rt>みとり</rt></ruby> đầu đời với bàn tay run nhưng không rời phòng — điều Ngọc nhận ra là đủ. Ngọc chuyển lại đúng bài học từ đàn chị: *"<ruby>看取り<rt>みとり</rt></ruby>は<ruby>失敗<rt>しっぱい</rt></ruby>じゃない。<ruby>旅立ち<rt>たびだち</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>うことだ。"* Tuấn học bằng cách quan sát. Fujita-san ra đi có gia đình bên cạnh — đúng như team đã chuẩn bị.

> Từ vựng & mẫu câu chương này: 看取り・終末期ケア・申し送り・バイタル・血圧下降・点滴・口腔ケア・チアノーゼ・下肢浮腫・延命より安楽・デスカンファレンス・旅立ち・寄り添う・声かけを続ける・穏やかに・荷物整理・礼儀を忘れない', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000007, 800000031, NULL, 'markdown_book', 'T7. Phối hợp đa ngành và hướng dẫn thực tập (多職種連携と実習指導)', '# Sách điều dưỡng viên quốc gia · T7. Phối hợp đa ngành và hướng dẫn thực tập (多職種連携と実習指導)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー + 教育担当) phối hợp với y tá Nakamura và chuyên viên phục hồi chức năng (PT) Hayashi để đào tạo TTS Linh, Tuấn, Maya quy trình liên ngành: <ruby>カンファレンス<rt>かんふぁれんす</rt></ruby>, báo cáo <ruby>申し送り<rt>もうしおくり</rt></ruby>, phối hợp <ruby>リハビリ<rt>りはびり</rt></ruby> + <ruby>服薬<rt>ふくやく</rt></ruby> + <ruby>移乗<rt>いじょう</rt></ruby>. TTS học cách báo cáo đúng chuẩn và không vượt lẫn ranh giới chuyên môn.

---

## Bối cảnh

Tháng 11 năm 2031. <ruby>ひだまり苑<rt>ひだまりえん</rt></ruby> vừa cập nhật <ruby>個別支援計画<rt>こべつしえんけいかく</rt></ruby> (kế hoạch chăm sóc cá nhân) cho 3 <ruby>利用者<rt>りようしゃ</rt></ruby> trong nhóm Ngọc quản lý. Đây là dịp Ngọc tổ chức chuỗi thực hành liên ngành cho TTS: quan sát <ruby>カンファレンス<rt>かんふぁれんす</rt></ruby> đa chuyên ngành, học báo cáo chuẩn với y tá, tập phối hợp giờ <ruby>リハビリ<rt>りはびり</rt></ruby> và hỗ trợ <ruby>服薬<rt>ふくやく</rt></ruby>. Mỗi sai sót nhỏ đều là bài học — Ngọc chọn cách sửa ngay tại hiện trường.

---

## Tình huống 1 — Phòng họp đa chuyên ngành · 9:00, <ruby>カンファレンス<rt>かんふぁれんす</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Sato | (<ruby>主任<rt>しゅにん</rt></ruby>) では、<ruby>定期<rt>ていき</rt></ruby><ruby>カンファレンス<rt>かんふぁれんす</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今月<rt>こんげつ</rt></ruby>の<ruby>対象<rt>たいしょう</rt></ruby>は<ruby>佐々木<rt>ささき</rt></ruby>さん、<ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>岡本<rt>おかもと</rt></ruby>さんの3<ruby>名<rt>めい</rt></ruby>です。<br>*(Vậy, xin bắt đầu buổi họp đánh giá định kỳ. Tháng này ba cụ được xem xét là Sasaki, Yamada, và Okamoto.)* |
| Nakamura | (<ruby>看護師<rt>かんごし</rt></ruby>) <ruby>佐々木<rt>ささき</rt></ruby>さんの<ruby>バイタル<rt>ばいたる</rt></ruby>は<ruby>安定<rt>あんてい</rt></ruby>しています。ただ、<ruby>服薬<rt>ふくやく</rt></ruby>後に<ruby>眠気<rt>ねむけ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなることがあります。<ruby>転倒<rt>てんとう</rt></ruby><ruby>リスク<rt>りすく</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>を。<br>*(Chỉ số sinh tồn của cụ Sasaki ổn định. Tuy nhiên sau uống thuốc có lúc buồn ngủ nhiều. Chú ý nguy cơ ngã.)* |
| Hayashi | (PT) <ruby>山田<rt>やまだ</rt></ruby>さんは<ruby>右足<rt>みぎあし</rt></ruby>の<ruby>筋力<rt>きんりょく</rt></ruby>が<ruby>先月<rt>せんげつ</rt></ruby>より<ruby>改善<rt>かいぜん</rt></ruby>しています。<ruby>平行棒<rt>へいこうぼう</rt></ruby>での<ruby>歩行<rt>ほこう</rt></ruby>を<ruby>週<rt>しゅう</rt></ruby>3<ruby>回<rt>かい</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やします。<br>*(Cơ lực chân phải của cụ Yamada cải thiện so với tháng trước. Tăng luyện tập đi bộ với thanh song song lên 3 lần/tuần.)* |
| Ngọc | <ruby>介護<rt>かいご</rt></ruby>チームからは、<ruby>岡本<rt>おかもと</rt></ruby>さんの<ruby>食事<rt>しょくじ</rt></ruby>量が<ruby>先週<rt>せんしゅう</rt></ruby>から<ruby>減<rt>へ</rt></ruby>っています。<ruby>水分<rt>すいぶん</rt></ruby>は<ruby>取<rt>と</rt></ruby>れていますが、<ruby>主食<rt>しゅしょく</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby>ほどです。<br>*(Từ phía đội điều dưỡng, lượng ăn của cụ Okamoto giảm từ tuần trước. Nước uống vẫn đủ nhưng cơm chính chỉ ăn được khoảng một nửa.)* |
| Nakamura | <ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>口腔内<rt>こうくうない</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>義歯<rt>ぎし</rt></ruby>の<ruby>合<rt>あ</rt></ruby>い<ruby>具合<rt>구합</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Đã rõ. Tôi sẽ kiểm tra khoang miệng. Mọi người cũng kiểm tra xem răng giả có vừa không nhé.)* |
| Ngọc | (nói nhỏ với TTS) <ruby>見<rt>み</rt></ruby>ていてください。<ruby>介護<rt>かいご</rt></ruby>は<ruby>看護<rt>かんご</rt></ruby>と<ruby>リハビリ<rt>りはびり</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えます。<ruby>一人<rt>ひとり</rt></ruby>では<ruby>決<rt>き</rt></ruby>めません。<br>*(Các em theo dõi nhé. Điều dưỡng phối hợp cùng y tá và phục hồi chức năng. Không ai quyết định một mình.)* |

---

## Tình huống 2 — Hành lang · 9:45, Ngọc giải thích sau <ruby>カンファレンス<rt>かんふぁれんす</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Tuấn | リーダー、<ruby>カンファレンス<rt>かんふぁれんす</rt></ruby>で<ruby>介護<rt>かいご</rt></ruby>が<ruby>報告<rt>ほうこく</rt></ruby>する<ruby>内容<rt>ないよう</rt></ruby>と、<ruby>看護師<rt>かんごし</rt></ruby>が<ruby>報告<rt>ほうこく</rt></ruby>する<ruby>内容<rt>ないよう</rt></ruby>、どう<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Chị trưởng nhóm, nội dung điều dưỡng báo cáo trong họp đa ngành khác gì so với y tá báo cáo ạ?)* |
| Ngọc | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>介護<rt>かいご</rt></ruby>は「<ruby>日常生活<rt>にちじょうせいかつ</rt></ruby>の<ruby>観察<rt>かんさつ</rt></ruby>」です。<ruby>食事<rt>しょくじ</rt></ruby>・<ruby>排泄<rt>はいせつ</rt></ruby>・<ruby>睡眠<rt>すいみん</rt></ruby>・<ruby>表情<rt>ひょうじょう</rt></ruby>・<ruby>会話<rt>かいわ</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>。<br>*(Câu hỏi hay. Điều dưỡng báo cáo "quan sát sinh hoạt hàng ngày". Thay đổi về ăn uống, vệ sinh, giấc ngủ, biểu cảm, cuộc trò chuyện.)* |
| Tuấn | <ruby>看護師<rt>かんごし</rt></ruby>は?<br>*(Còn y tá ạ?)* |
| Ngọc | <ruby>看護師<rt>かんごし</rt></ruby>は「<ruby>医療的<rt>いりょうてき</rt></ruby>な<ruby>評価<rt>ひょうか</rt></ruby>」です。<ruby>バイタル<rt>ばいたる</rt></ruby>、<ruby>薬<rt>くすり</rt></ruby>の<ruby>効果<rt>こうか</rt></ruby>、<ruby>疾患<rt>しっかん</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>たちが<ruby>診断<rt>しんだん</rt></ruby>するのではなく、<ruby>観察<rt>かんさつ</rt></ruby>した<ruby>事実<rt>じじつ</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Y tá là "đánh giá y tế". Chỉ số sinh tồn, hiệu quả thuốc, diễn biến bệnh. Chúng ta không chẩn đoán — chúng ta truyền đạt chính xác những gì quan sát được.)* |
| Maya | (Indonesia) 分かりました。"見て、伝える"ですね。<br>*(Dạ hiểu ạ. "Quan sát, rồi truyền đạt" ạ.)* |
| Ngọc | そうです、マヤさん。<ruby>正確<rt>せいかく</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>で<ruby>伝<rt>つた</rt></ruby>えることが<ruby>大切<rt>たいせつ</rt></ruby>です。「<ruby>なんか変<rt>なんかへん</rt></ruby>」ではなく「<ruby>昨日<rt>きのう</rt></ruby>より<ruby>食事量<rt>しょくじりょう</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby>でした」と<ruby>言<rt>い</rt></ruby>います。<br>*(Đúng vậy, Maya. Quan trọng là diễn đạt bằng ngôn ngữ chính xác. Không phải "trông có gì đó lạ" mà là "lượng ăn hôm nay bằng một nửa so với hôm qua".)* |

---

## Tình huống 3 — Phòng <ruby>山田<rt>やまだ</rt></ruby>-san · 10:30, phối hợp giờ <ruby>リハビリ<rt>りはびり</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Hayashi | (PT) グエンさん、<ruby>山田<rt>やまだ</rt></ruby>さんのリハビリの<ruby>前<rt>まえ</rt></ruby>に<ruby>一言<rt>ひとこと</rt></ruby>いいですか?今日は<ruby>平行棒<rt>へいこうぼう</rt></ruby>で10<ruby>メートル<rt>めーとる</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にしています。<ruby>左側<rt>ひだりがわ</rt></ruby>に<ruby>介護<rt>かいご</rt></ruby>スタッフがついてください。<br>*(Chị Nguyễn, trước giờ tập của cụ Yamada cho tôi nói một câu nhé. Hôm nay mục tiêu là 10 mét với thanh song song. Nhờ nhân viên điều dưỡng đứng bên trái cụ.)* |
| Ngọc | わかりました。リンさん、<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>左側<rt>ひだりがわ</rt></ruby>につきます。<ruby>転倒<rt>てんとう</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>のため、ベルトは<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>してから。<br>*(Rõ rồi. Linh, em đứng bên trái cụ Yamada nhé. Để phòng ngã, nhất định kiểm tra dây đai trước đã.)* |
| Linh | はい。(kiểm tra dây đai) <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>始<rt>はじ</rt></ruby>めますね。ゆっくりで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng. Cụ Yamada, chúng ta bắt đầu nhé. Từ từ thôi ạ.)* |
| Yamada | (cụ ông 82 tuổi) ...<ruby>頑張<rt>がんば</rt></ruby>ってみるよ。<br>*(...Cháu cố thử vậy.)* |
| Hayashi | (PT, hướng dẫn) <ruby>右足<rt>みぎあし</rt></ruby>から<ruby>出<rt>だ</rt></ruby>してください。そう、<ruby>上手<rt>じょうず</rt></ruby>です。<br>*(Bước chân phải trước. Đúng rồi, giỏi lắm.)* |
| Ngọc | (quan sát, nói nhỏ với Linh sau đó) <ruby>リハビリ<rt>りはびり</rt></ruby>中は<ruby>声<rt>こえ</rt></ruby>かけしていいですが、<ruby>PT<rt>ぴーてぃー</rt></ruby>の<ruby>指示<rt>しじ</rt></ruby>と<ruby>かぶらないように<rt>かぶらないように</rt></ruby>。<ruby>優先<rt>ゆうせん</rt></ruby>はPTの<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Trong giờ tập có thể lên tiếng nhưng đừng chồng chéo với chỉ dẫn của PT. Ưu tiên lời của PT.)* |
| Linh | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 4 — Phòng <ruby>佐々木<rt>ささき</rt></ruby>-san · 11:00, hỗ trợ <ruby>服薬<rt>ふくやく</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Nakamura | (<ruby>看護師<rt>かんごし</rt></ruby>, chuẩn bị thuốc) グエンさん、<ruby>佐々木<rt>ささき</rt></ruby>さんの<ruby>服薬<rt>ふくやく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<ruby>薬<rt>くすり</rt></ruby>は<ruby>用意<rt>ようい</rt></ruby>しました。<ruby>食後<rt>しょくご</rt></ruby>30<ruby>分以内<rt>ぷんいない</rt></ruby>です。<br>*(Chị Nguyễn, nhờ chị hỗ trợ uống thuốc cho cụ Sasaki được không? Thuốc đã chuẩn bị xong. Trong vòng 30 phút sau ăn nhé.)* |
| Ngọc | <ruby>了解<rt>りょうかい</rt></ruby>です。ツアンさん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ていてください。<ruby>服薬<rt>ふくやく</rt></ruby>の<ruby>介助<rt>かいじょ</rt></ruby>は<ruby>決<rt>き</rt></ruby>められた<ruby>手順<rt>てじゅん</rt></ruby>があります。<br>*(Rõ rồi. Tuấn, em theo xem cùng nhé. Hỗ trợ uống thuốc có quy trình nhất định.)* |
| Ngọc | (bước vào phòng) <ruby>佐々木<rt>ささき</rt></ruby>さん、お<ruby>薬<rt>くすり</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。まず<ruby>名前<rt>なまえ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。お<ruby>名前<rt>なまえ</rt></ruby>をおっしゃっていただけますか?<br>*(Cụ Sasaki, đến giờ uống thuốc rồi. Trước tiên cho phép xác nhận tên ạ. Cụ có thể nói tên của cụ không ạ?)* |
| Sasaki-san | <ruby>佐々木<rt>ささき</rt></ruby><ruby>正男<rt>まさお</rt></ruby>。<br>*(Sasaki Masao.)* |
| Ngọc | ありがとうございます。<ruby>今日<rt>きょう</rt></ruby>のお<ruby>薬<rt>くすり</rt></ruby>は<ruby>三種類<rt>さんしゅるい</rt></ruby>です。お<ruby>水<rt>みず</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>にお<ruby>飲<rt>の</rt></ruby>みください。<br>*(Cảm ơn cụ. Hôm nay có ba loại thuốc. Xin uống cùng với nước ạ.)* |
| Ngọc | (sau đó, hành lang, với Tuấn) <ruby>服薬<rt>ふくやく</rt></ruby>で<ruby>大切<rt>たいせつ</rt></ruby>なことが<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>名前<rt>なまえ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>、<ruby>飲<rt>の</rt></ruby>んだ<ruby>後<rt>あと</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>、そして<ruby>異変<rt>いへん</rt></ruby>があればすぐ<ruby>看護師<rt>かんごし</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>薬<rt>くすり</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>たちではなく<ruby>看護師<rt>かんごし</rt></ruby>がします。<br>*(Khi hỗ trợ uống thuốc có ba điều quan trọng. Xác nhận tên, xác nhận sau khi uống, và nếu có bất thường báo ngay y tá. Phán đoán về thuốc là việc của y tá, không phải chúng ta.)* |
| Tuấn | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>してはいけないんですね。<br>*(Không được tự mình phán đoán nhỉ.)* |
| Ngọc | そうです。それが<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Đúng vậy. Đó là nền tảng của an toàn.)* |

---

## Tình huống 5 — Phòng ăn · 12:30, Linh báo cáo sai và Ngọc sửa

| Vai | Lời thoại |
|---|---|
| Linh | (sau bữa trưa, báo cáo với Ngọc) リーダー、<ruby>岡本<rt>おかもと</rt></ruby>さんが今日もあまり<ruby>食<rt>た</rt></ruby>べませんでした。<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いかもしれません。<br>*(Chị trưởng nhóm, hôm nay cụ Okamoto lại ăn ít. Có thể cụ đang không khỏe.)* |
| Ngọc | リン、ちょっと<ruby>待<rt>ま</rt></ruby>ってください。「<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いかもしれない」は<ruby>判断<rt>はんだん</rt></ruby>です。私たちは<ruby>事実<rt>じじつ</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Linh, đợi một chút. "Có thể không khỏe" là phán đoán. Chúng ta báo cáo sự thật.)* |
| Linh | ...あ、すみません。<br>*(...À, xin lỗi ạ.)* |
| Ngọc | もう<ruby>一度<rt>いちど</rt></ruby>、<ruby>事実<rt>じじつ</rt></ruby>だけで<ruby>言<rt>い</rt></ruby>ってみてください。<br>*(Em thử nói lại, chỉ bằng sự thật thôi.)* |
| Linh | (suy nghĩ) <ruby>岡本<rt>おかもと</rt></ruby>さんは<ruby>今日<rt>きょう</rt></ruby>、<ruby>昼食<rt>ちゅうしょく</rt></ruby>の<ruby>主食<rt>しゅしょく</rt></ruby>を3<ruby>割<rt>わり</rt></ruby>ほど<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がりました。<ruby>副菜<rt>ふくさい</rt></ruby>は<ruby>半分<rt>はんぶん</rt></ruby>ほどです。<ruby>食事中<rt>しょくじちゅう</rt></ruby>、<ruby>表情<rt>ひょうじょう</rt></ruby>は<ruby>穏<rt>おだ</rt></ruby>やかでした。<br>*(Hôm nay cụ Okamoto dùng được khoảng 30% cơm chính trong bữa trưa. Món phụ khoảng một nửa. Trong bữa ăn biểu cảm của cụ bình thản.)* |
| Ngọc | よかったです。そういう<ruby>報告<rt>ほうこく</rt></ruby>ができると、<ruby>看護師<rt>かんごし</rt></ruby>も<ruby>医師<rt>いし</rt></ruby>も<ruby>正確<rt>せいかく</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>できます。<br>*(Tốt lắm. Báo cáo được như vậy, y tá và bác sĩ mới phán đoán chính xác được.)* |

---

## Tình huống 6 — <ruby>申し送り<rt>もうしおくり</rt></ruby> 14:00, TTS thực hành bàn giao ca

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をします。マヤさん、<ruby>岡本<rt>おかもと</rt></ruby>さんの<ruby>午後<rt>ごご</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Bây giờ chúng ta luyện tập bàn giao ca. Maya, em báo cáo tình trạng của cụ Okamoto buổi chiều.)* |
| Maya | はい。<ruby>岡本<rt>おかもと</rt></ruby>さんは<ruby>午後<rt>ごご</rt></ruby>13<ruby>時<rt>じ</rt></ruby>から<ruby>排泄介助<rt>はいせつかいじょ</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>いました。<ruby>異常<rt>いじょう</rt></ruby>なし。<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>は<ruby>お茶<rt>おちゃ</rt></ruby>100ml。<ruby>昼寝<rt>ひるね</rt></ruby>は<ruby>約<rt>やく</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby>で、<ruby>覚醒<rt>かくせい</rt></ruby>は<ruby>良好<rt>りょうこう</rt></ruby>でした。<br>*(Vâng. Cụ Okamoto được hỗ trợ vệ sinh lúc 13 giờ chiều. Không có bất thường. Bổ sung nước: 100ml trà. Ngủ trưa khoảng 1 tiếng, tỉnh giấc tốt.)* |
| Ngọc | (gật đầu) よかったです、マヤさん。<ruby>時間<rt>じかん</rt></ruby>・<ruby>内容<rt>ないよう</rt></ruby>・<ruby>量<rt>りょう</rt></ruby>・<ruby>結果<rt>けっか</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っていました。<ruby>申し送り<rt>もうしおくり</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>は「5W1H」で<ruby>伝<rt>つた</rt></ruby>えることです。<br>*(Tốt lắm, Maya. Em đã có đủ thời gian, nội dung, lượng và kết quả. Cơ bản của bàn giao ca là truyền đạt theo "5W1H".)* |
| Tuấn | 5W1Hとは?<br>*(5W1H là gì ạ?)* |
| Ngọc | いつ・だれが・どこで・なにを・なぜ・どのように。<ruby>介護記録<rt>かいごきろく</rt></ruby>もこの<ruby>順番<rt>じゅんばん</rt></ruby>です。<br>*(Khi nào, ai, ở đâu, cái gì, tại sao, như thế nào. Nhật ký điều dưỡng cũng theo thứ tự này.)* |

---

## Tình huống 7 — Phòng ký kết kế hoạch · 15:00, giải thích <ruby>個別支援計画<rt>こべつしえんけいかく</rt></ruby>

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>個別支援計画<rt>こべつしえんけいかく</rt></ruby>について<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>一人<rt>ひとり</rt></ruby>ひとりの<ruby>利用者<rt>りようしゃ</rt></ruby>さんに、それぞれの<ruby>目標<rt>もくひょう</rt></ruby>と<ruby>支援方法<rt>しえんほうほう</rt></ruby>が<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Hôm nay mình giải thích về kế hoạch hỗ trợ cá nhân. Trong đó ghi rõ mục tiêu và phương thức hỗ trợ riêng cho từng cụ.)* |
| Tuấn | だれが<ruby>作<rt>つく</rt></ruby>りますか?<br>*(Ai lập kế hoạch này ạ?)* |
| Ngọc | <ruby>介護<rt>かいご</rt></ruby>・<ruby>看護<rt>かんご</rt></ruby>・<ruby>リハビリ<rt>りはびり</rt></ruby>・<ruby>栄養士<rt>えいようし</rt></ruby>・ソーシャルワーカーが<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>ります。それが「<ruby>多職種連携<rt>たしょくしゅれんけい</rt></ruby>」です。<ruby>ご家族<rt>ごかぞく</rt></ruby>の<ruby>意向<rt>いこう</rt></ruby>も<ruby>入<rt>はい</rt></ruby>ります。<br>*(Điều dưỡng, y tá, phục hồi chức năng, chuyên gia dinh dưỡng, nhân viên xã hội cùng nhau lập. Đó là "phối hợp đa ngành". Ý kiến của gia đình cũng được đưa vào.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>たちTTSも<ruby>関<rt>かか</rt></ruby>わりますか?<br>*(TTS chúng em cũng tham gia không ạ?)* |
| Ngọc | <ruby>直接<rt>ちょくせつ</rt></ruby><ruby>書<rt>か</rt></ruby>くことはありませんが、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>観察<rt>かんさつ</rt></ruby>と<ruby>記録<rt>きろく</rt></ruby>がこの<ruby>計画<rt>けいかく</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えます。<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>無駄<rt>むだ</rt></ruby>ではありません。<br>*(Các em không trực tiếp viết vào, nhưng quan sát và ghi chép hàng ngày là nền tảng của kế hoạch này. Công việc mỗi ngày không hề vô ích.)* |

---

## Tình huống 8 — Hành lang · 15:45, Maya hỏi về ranh giới chuyên môn

| Vai | Lời thoại |
|---|---|
| Maya | リーダー、<ruby>利用者<rt>りようしゃ</rt></ruby>さんから「<ruby>薬<rt>くすり</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やしてほしい」と<ruby>言<rt>い</rt></ruby>われたとき、どうすればいいですか?<br>*(Chị trưởng nhóm, khi có cụ nói "muốn tăng thuốc" thì mình làm gì ạ?)* |
| Ngọc | まず「<ruby>承知<rt>しょうち</rt></ruby>しました、<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>伝<rt>つた</rt></ruby>えます」と<ruby>言<rt>い</rt></ruby>います。<ruby>自分<rt>じぶん</rt></ruby>では<ruby>判断<rt>はんだん</rt></ruby>しません。<br>*(Trước tiên nói "Vâng, cháu sẽ báo y tá ạ". Không tự mình phán đoán.)* |
| Maya | なぜですか?<br>*(Vì sao ạ?)* |
| Ngọc | <ruby>薬<rt>くすり</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>は<ruby>医師<rt>いし</rt></ruby>が<ruby>決<rt>き</rt></ruby>めます。<ruby>介護職<rt>かいごしょく</rt></ruby>はその<ruby>権限<rt>けんげん</rt></ruby>がありません。でも、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>訴<rt>うった</rt></ruby>えをちゃんと<ruby>伝<rt>つた</rt></ruby>えることが<ruby>私<rt>わたし</rt></ruby>たちの<ruby>役割<rt>やくわり</rt></ruby>です。<br>*(Liều thuốc do bác sĩ quyết định. Nhân viên điều dưỡng không có thẩm quyền đó. Nhưng truyền đạt đúng điều mà cụ muốn nói — đó chính là vai trò của chúng ta.)* |
| Maya | 分かりました。「伝える」ことが大切ですね。<br>*(Dạ hiểu rồi. "Truyền đạt" là quan trọng nhỉ.)* |
| Ngọc | そうです。<ruby>マヤ<rt>まや</rt></ruby>さん、いい<ruby>質問<rt>しつもん</rt></ruby>でした。<br>*(Đúng vậy. Maya, câu hỏi rất hay đấy.)* |

---

## Tình huống 9 — Phòng làm việc · 16:30, Tuấn ghi sai hồ sơ và Ngọc sửa

| Vai | Lời thoại |
|---|---|
| Ngọc | (xem lại hồ sơ) ツアンさん、ちょっと<ruby>確認<rt>かくにん</rt></ruby>したいことが。「<ruby>佐々木<rt>ささき</rt></ruby>さんは<ruby>具合<rt>ぐあい</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>そうだった」と<ruby>書<rt>か</rt></ruby>いてありますが、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんな<ruby>様子<rt>ようす</rt></ruby>でしたか?<br>*(Tuấn, tôi muốn xác nhận một chỗ. Trong hồ sơ ghi "cụ Sasaki có vẻ không khỏe" — cụ thể tình trạng là như thế nào?)* |
| Tuấn | あ...え、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>悪<rt>わる</rt></ruby>かったです。<br>*(À... ờ, sắc mặt cụ hơi không tốt ạ.)* |
| Ngọc | では「<ruby>顔色<rt>かおいろ</rt></ruby>がやや<ruby>蒼白<rt>そうはく</rt></ruby>に<ruby>見<rt>み</rt></ruby>えた」と<ruby>書<rt>か</rt></ruby>いてください。「<ruby>具合<rt>ぐあい</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>い」は<ruby>主観<rt>しゅかん</rt></ruby>ですが、「<ruby>顔色<rt>かおいろ</rt></ruby>がやや<ruby>蒼白<rt>そうはく</rt></ruby>」は<ruby>観察<rt>かんさつ</rt></ruby>です。<br>*(Vậy thì ghi "sắc mặt có vẻ hơi tái". "Không khỏe" là chủ quan, nhưng "sắc mặt hơi tái" là quan sát.)* |
| Tuấn | (ghi lại) はい、<ruby>訂正<rt>ていせい</rt></ruby>します。ありがとうございます。<br>*(Vâng, em sửa lại. Cảm ơn chị.)* |
| Ngọc | <ruby>記録<rt>きろく</rt></ruby>は<ruby>証拠<rt>しょうこ</rt></ruby>です。<ruby>正確<rt>せいかく</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>で<ruby>書<rt>か</rt></ruby>くことが<ruby>安全<rt>あんぜん</rt></ruby>につながります。<ruby>怒<rt>おこ</rt></ruby>っているのではなく、<ruby>大切<rt>たいせつ</rt></ruby>だから<ruby>言<rt>い</rt></ruby>います。<br>*(Hồ sơ là bằng chứng. Viết bằng ngôn ngữ chính xác dẫn đến sự an toàn. Tôi không giận — tôi nói vì điều này quan trọng.)* |

---

## Tình huống 10 — Phòng họp · 17:00, Ngọc nhận phản hồi từ Nakamura

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、<ruby>今日<rt>きょう</rt></ruby>のTTSさんたちの<ruby>様子<rt>ようす</rt></ruby>ですが、<ruby>服薬<rt>ふくやく</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>がしっかりできていましたよ。<br>*(Chị Nguyễn, về tình hình các TTS hôm nay — quy trình hỗ trợ uống thuốc làm chắc chắn lắm.)* |
| Ngọc | ありがとうございます。<ruby>名前確認<rt>なまえかくにん</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ずするように<ruby>指導<rt>しどう</rt></ruby>しました。<br>*(Cảm ơn chị. Em đã hướng dẫn nhất định phải xác nhận tên.)* |
| Nakamura | ただ、<ruby>記録<rt>きろく</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>が<ruby>主観的<rt>しゅかんてき</rt></ruby>な<ruby>表現<rt>ひょうげん</rt></ruby>になっていることが<ruby>多<rt>おお</rt></ruby>かったです。そこは<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>指導<rt>しどう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tuy nhiên, ngôn ngữ trong hồ sơ còn hay dùng cách diễn đạt chủ quan. Nhờ chị tiếp tục hướng dẫn điểm đó.)* |
| Ngọc | はい、<ruby>今日<rt>きょう</rt></ruby>も<ruby>一件<rt>いっけん</rt></ruby>ありまして、<ruby>対応<rt>たいおう</rt></ruby>しました。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>徹底<rt>てってい</rt></ruby>します。<br>*(Vâng, hôm nay cũng có một trường hợp và em đã xử lý rồi. Em sẽ tiếp tục làm triệt để.)* |
| Nakamura | グエンさんが<ruby>教育担当<rt>きょういくたんとう</rt></ruby>に<ruby>なって<rt>なって</rt></ruby>から、TTSの<ruby>質<rt>しつ</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がっています。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Từ khi chị Nguyễn phụ trách đào tạo, chất lượng của TTS tăng lên rõ rệt. Thật nhẹ nhõm.)* |
| Ngọc | ありがとうございます。<ruby>中村<rt>なかむら</rt></ruby>さんのフィードバックがあるから<ruby>私<rt>わたし</rt></ruby>も<ruby>成長<rt>せいちょう</rt></ruby>できます。<br>*(Cảm ơn chị. Nhờ phản hồi của chị Nakamura mà em cũng phát triển được.)* |

---

## Tình huống 11 — Phòng休憩 · 17:30, 3 TTS cùng ôn lại

| Vai | Lời thoại |
|---|---|
| Linh | (với Tuấn và Maya) 今日、リーダーにすごく教えてもらいましたね。<ruby>報告<rt>ほうこく</rt></ruby>は<ruby>事実<rt>じじつ</rt></ruby>、<ruby>判断<rt>はんだん</rt></ruby>は<ruby>看護師<rt>かんごし</rt></ruby>と<ruby>医師<rt>いし</rt></ruby>、というのが<ruby>頭<rt>あたま</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>っています。<br>*(Hôm nay chị trưởng nhóm dạy nhiều quá nhỉ. "Báo cáo là sự thật, phán đoán là y tá và bác sĩ" — câu đó vẫn còn trong đầu em.)* |
| Tuấn | 記録のことも。「<ruby>具合<rt>ぐあい</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>い」じゃなくて「<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>蒼白<rt>そうはく</rt></ruby>」。ちゃんと<ruby>書<rt>か</rt></ruby>けるようにします。<br>*(Cả việc ghi hồ sơ nữa. Không phải "không khỏe" mà là "sắc mặt tái". Em sẽ cố ghi đúng.)* |
| Maya | リーダーは<ruby>厳<rt>きび</rt></ruby>しいけど、<ruby>説明<rt>せつめい</rt></ruby>がいつも<ruby>分<rt>わ</rt></ruby>かりやすいです。<ruby>怒<rt>おこ</rt></ruby>っているじゃなくて、<ruby>教<rt>おし</rt></ruby>えてくれています。<br>*(Chị trưởng nhóm nghiêm nhưng giải thích lúc nào cũng dễ hiểu. Không phải giận mà là đang dạy.)* |
| Linh | (cười) そうですね。<ruby>私<rt>わたし</rt></ruby>たちも、いつかリーダーみたいになれるかな。<br>*(Đúng nhỉ. Không biết rồi mình có được như chị trưởng nhóm không nhỉ.)* |

---

## Tình huống 12 — <ruby>帰宅<rt>きたく</rt></ruby>途中 · đêm, Ngọc nhắn tin cho đồng hương Đức

> Scene tiếng Việt — Ngọc về nhà một mình, nhắn tin cuối ngày.

| Vai | Lời thoại |
|---|---|
| Đức | (tin nhắn) Sao, ổn không? Nghe nói đang đào tạo mấy TTS mới? |
| Ngọc | (tin nhắn, tiếng Việt) Ổn anh. Mệt nhưng thấy ý nghĩa. Hôm nay dạy tụi nhỏ báo cáo cho đúng chuẩn, phối hợp với y tá, PT. Cái hay là mình vừa dạy vừa nhớ lại hồi mình còn là TTS mình cũng sai y như vậy. |
| Đức | (tin nhắn) Ừ, vòng đời. Năm ngoái em học, năm nay em dạy. |
| Ngọc | (tin nhắn) Đúng anh. Mà cũng thấy trách nhiệm nặng hơn. Sai của TTS bây giờ là sai của mình một phần. |
| Đức | (tin nhắn) Đó mới là giáo viên thật sự. Ngủ ngon. |

---

## Đọng lại chương 7

Ngọc vận hành vai trò <ruby>教育担当<rt>きょういくたんとう</rt></ruby> trọn vẹn: không chỉ dạy kỹ năng mà dạy tư duy — **quan sát ≠ phán đoán**, **truyền đạt = sự thật + đơn vị đo**, **ranh giới chuyên môn = an toàn**. Ba TTS học được quy trình liên ngành từ <ruby>カンファレンス<rt>かんふぁれんす</rt></ruby> → <ruby>申し送り<rt>もうしおくり</rt></ruby> → <ruby>記録<rt>きろく</rt></ruby> → <ruby>服薬介助<rt>ふくやくかいじょ</rt></ruby>. Sai sót được sửa ngay tại hiện trường, không trừng phạt.

> Từ vựng & mẫu câu chương này: 多職種連携・カンファレンス・申し送り・個別支援計画・服薬介助・名前確認・バイタル・リハビリ・平行棒・転倒リスク・排泄介助・水分補給・介護記録・5W1H・主観的表現 vs 観察・権限の範囲・教育担当・フィードバック', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000008, 800000031, NULL, 'markdown_book', 'T8. Khủng hoảng của thực tập sinh Tuấn (実習生トゥアンの危機)', '# Sách điều dưỡng viên quốc gia · T8. Khủng hoảng của thực tập sinh Tuấn (実習生トゥアンの危機)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー + 教育担当) đối mặt với TTS Tuấn muốn bỏ về nước vì áp lực nợ tiền — cô vận dụng chính kinh nghiệm bản thân (motif Đức từ sách 27) và vai trò người dẫn dắt để thuyết phục Tuấn tiếp tục — tháng 11/2031.

---

## Bối cảnh

Tháng 11 năm 2031. Tuấn (21 tuổi, TTS người Việt, tháng thứ 4 tại Hidamari-en) đang chịu áp lực ngầm: nợ phí môi giới 4 triệu yên vẫn còn nặng, bố ốm ở nhà, và mỗi tháng lương không đủ gửi về theo kỳ vọng của gia đình. Tuấn đang nghĩ đến việc xin về nước sớm — bỏ hợp đồng giữa chừng. Ngọc nhận ra dấu hiệu từ tuần trước. Hôm nay cô dành buổi chiều để nói chuyện thật sự với Tuấn — một cuộc trò chuyện cô nhớ mãi vì chính Đức đã nói như vậy với cô 5 năm trước.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 14:00, Ngọc mời Tuấn nói chuyện riêng

| Vai | Lời thoại |
|---|---|
| Ngọc | トゥアンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>がありますか? 2<ruby>人<rt>にん</rt></ruby>で<ruby>話<rt>はな</rt></ruby>したいことがあるんです。<br>*(Tuấn, chiều nay có chút thời gian không? Tôi muốn hai người nói chuyện.)* |
| Tuấn | (ngần ngừ) ...はい。<br>*(... Vâng.)* |
| Ngọc | <ruby>怒<rt>おこ</rt></ruby>っているわけじゃないですよ。ただ、<ruby>最近<rt>さいきん</rt></ruby>のトゥアンさんのことが<ruby>心配<rt>しんぱい</rt></ruby>で。<ruby>リーダー<rt>リーダー</rt></ruby>としてではなく、<ruby>先輩<rt>せんぱい</rt></ruby>として<ruby>聞<rt>き</rt></ruby>きたいんです。<br>*(Không phải tôi đang tức đâu. Chỉ là lo cho Tuấn gần đây. Không phải với tư cách リーダー, mà là đàn chị muốn hỏi.)* |
| Tuấn | (nhẹ người, gật đầu) ...わかりました。<br>*(... Vâng, được ạ.)* |

---

## Tình huống 2 — Phòng nhỏ cuối hành lang · cuộc trò chuyện thật sự bắt đầu

| Vai | Lời thoại |
|---|---|
| Ngọc | トゥアンさん、<ruby>最近<rt>さいきん</rt></ruby>どうですか?<ruby>本当<rt>ほんとう</rt></ruby>のことを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Tuấn, gần đây thế nào? Nói thật cho tôi nghe nhé.)* |
| Tuấn | (im lặng một lúc, rồi nói tiếng Nhật khó nhọc) ...ゴックさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<ruby>帰<rt>かえ</rt></ruby>りたいと<ruby>思<rt>おも</rt></ruby>っています。<ruby>日本<rt>にほん</rt></ruby>を<ruby>辞<rt>や</rt></ruby>めて。<br>*(... Chị Ngọc, con nói thật. Con muốn về. Bỏ Nhật.)* |
| Ngọc | (không ngạc nhiên, nói nhẹ nhàng) そうですか。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてもらえますか?<br>*(Vậy à. Cho tôi nghe lý do được không?)* |
| Tuấn | (tiếng Nhật chậm, xen ít tiếng Việt) お<ruby>金<rt>かね</rt></ruby>が...<ruby>足<rt>た</rt></ruby>りないんです。<ruby>家族<rt>かぞく</rt></ruby>に<ruby>送金<rt>そうきん</rt></ruby>しても、<ruby>借金<rt>しゃっきん</rt></ruby>がまだ<ruby>残<rt>のこ</rt></ruby>っています。お<ruby>父<rt>とう</rt></ruby>さんも<ruby>病気<rt>びょうき</rt></ruby>で...。<ruby>毎月<rt>まいつき</rt></ruby><ruby>赤字<rt>あかじ</rt></ruby>の<ruby>気分<rt>きぶん</rt></ruby>で...<br>*(Tiền... không đủ. Gửi về cho gia đình rồi mà nợ vẫn còn. Bố lại bệnh nữa... Mỗi tháng cảm giác như thâm hụt mãi...)* |
| Ngọc | お<ruby>父<rt>とう</rt></ruby>さんが<ruby>病気<rt>びょうき</rt></ruby>なんですね。それは<ruby>辛<rt>つら</rt></ruby>い。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えていたんですね。<br>*(Bố bệnh nữa. Khó thật. Tuấn ôm một mình suốt nhỉ.)* |
| Tuấn | (mắt đỏ) ...はい。<ruby>誰<rt>だれ</rt></ruby>にも<ruby>言<rt>い</rt></ruby>えなくて...<br>*(... Vâng. Không nói được với ai...)* |

---

## Tình huống 3 — Cùng phòng, Ngọc kể câu chuyện của chính mình

| Vai | Lời thoại |
|---|---|
| Ngọc | トゥアンさん、<ruby>実<rt>じつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>も、<ruby>来<rt>き</rt></ruby>て<ruby>最初<rt>さいしょ</rt></ruby>のころ、<ruby>同<rt>おな</rt></ruby>じことを<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Tuấn, thật ra ngày đầu tôi sang đây, tôi cũng đã nghĩ như vậy.)* |
| Tuấn | (ngẩng đầu) え...<br>*(Sao...)* |
| Ngọc | <ruby>借金<rt>しゃっきん</rt></ruby>があって、<ruby>仕送り<rt>しおくり</rt></ruby>しなきゃいけなくて、<ruby>日本語<rt>にほんご</rt></ruby>はわからなくて、<ruby>体<rt>からだ</rt></ruby>はきつくて。「もう<ruby>帰<rt>かえ</rt></ruby>りたい」って<ruby>何度<rt>なんど</rt></ruby>も<ruby>思<rt>おも</rt></ruby>いました。<br>*(Nợ tiền, phải gửi về, tiếng Nhật không hiểu, người thì mệt. Tôi đã nghĩ "muốn về" nhiều lần lắm.)* |
| Tuấn | ...ゴックさんも、そうだったんですか。<br>*(... Chị Ngọc cũng từng như vậy sao.)* |
| Ngọc | そう。<ruby>先輩<rt>せんぱい</rt></ruby>のドックさんという<ruby>人<rt>ひと</rt></ruby>が、<ruby>私<rt>わたし</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれた言葉があります。「<ruby>今<rt>いま</rt></ruby><ruby>帰<rt>かえ</rt></ruby>ったら、<ruby>借金<rt>しゃっきん</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>る。でも<ruby>残<rt>のこ</rt></ruby>ったら、<ruby>借金<rt>しゃっきん</rt></ruby>は<ruby>消<rt>き</rt></ruby>える。」<br>*(Ừ. Có một đàn anh tên Đức đã nói với tôi: "Về giờ, nợ vẫn còn. Nhưng ở lại, nợ sẽ hết.")* |
| Tuấn | (suy nghĩ)<br>*(suy nghĩ)* |
| Ngọc | でも、それだけじゃない。あのとき<ruby>残<rt>のこ</rt></ruby>ったから、<ruby>今<rt>いま</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>があります。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>も、リーダーも、<ruby>家族<rt>かぞく</rt></ruby>も。<ruby>全部<rt>ぜんぶ</rt></ruby>、<ruby>残<rt>のこ</rt></ruby>ることにしたからです。<br>*(Nhưng không chỉ vậy. Vì tôi ở lại ngày đó, nên mới có tôi bây giờ. Bằng 介護福祉士, vai リーダー, gia đình. Tất cả vì tôi đã chọn ở lại.)* |

---

## Tình huống 4 — Tuấn chia sẻ sâu hơn về nợ và áp lực gia đình

| Vai | Lời thoại |
|---|---|
| Tuấn | ゴックさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>送り出し<rt>おくりだし</rt></ruby><ruby>機関<rt>きかん</rt></ruby>に400<ruby>万<rt>まん</rt></ruby>くらい<ruby>払<rt>はら</rt></ruby>いました。<ruby>毎月<rt>まいつき</rt></ruby><ruby>返済<rt>へんさい</rt></ruby>があって、<ruby>家族<rt>かぞく</rt></ruby>への<ruby>送金<rt>そうきん</rt></ruby>もあって、<ruby>手元<rt>てもと</rt></ruby>にほとんど<ruby>残<rt>のこ</rt></ruby>らないんです。<br>*(Chị Ngọc, nói thật thì con đã trả cho tổ chức phái cử khoảng 400 vạn. Mỗi tháng trả nợ, lại gửi tiền về, tay không còn lại bao nhiêu.)* |
| Ngọc | (gật đầu) <ruby>私<rt>わたし</rt></ruby>もそうでした。<ruby>最初<rt>さいしょ</rt></ruby>の1<ruby>年<rt>ねん</rt></ruby>はほとんど<ruby>貯金<rt>ちょきん</rt></ruby>できなかったです。でも、2<ruby>年目<rt>ねんめ</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Tôi cũng vậy. Năm đầu gần như không tiết kiệm được. Nhưng sang năm 2 thì từ từ nhẹ hơn.)* |
| Tuấn | <ruby>本当<rt>ほんとう</rt></ruby>ですか...<br>*(Thật không chị...)* |
| Ngọc | <ruby>本当<rt>ほんとう</rt></ruby>です。それに、トゥアンさんは<ruby>今<rt>いま</rt></ruby><ruby>実習生<rt>じっしゅうせい</rt></ruby>ですが、<ruby>試験<rt>しけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば<ruby>特定技能1号<rt>とくていぎのういちごう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えられる。そうしたら<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がります。<br>*(Thật. Với lại, Tuấn hiện là TTS, nhưng nếu đỗ kỳ thi sẽ chuyển được lên 特定技能1号. Khi đó lương cũng tăng.)* |
| Tuấn | <ruby>特定技能<rt>とくていぎのう</rt></ruby>...それ、<ruby>試験<rt>しけん</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(特定技能... Kỳ thi đó khó không chị?)* |
| Ngọc | <ruby>難<rt>むずか</rt></ruby>しくないです。N4の<ruby>日本語<rt>にほんご</rt></ruby>と<ruby>介護<rt>かいご</rt></ruby>の<ruby>基礎知識<rt>きそちしき</rt></ruby>があれば<ruby>受<rt>う</rt></ruby>けられます。トゥアンさんはもう<ruby>基礎<rt>きそ</rt></ruby>はできています。<br>*(Không khó. N4 tiếng Nhật và kiến thức cơ bản 介護 là thi được rồi. Tuấn đã có nền tảng rồi đó.)* |

---

## Tình huống 5 — Tiếp theo, Ngọc nói về bố Tuấn và giải pháp thực tế

| Vai | Lời thoại |
|---|---|
| Ngọc | お<ruby>父<rt>とう</rt></ruby>さんのこと、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>教<rt>おし</rt></ruby>えてもらえますか?<br>*(Bố Tuấn, cho tôi nghe thêm chút được không?)* |
| Tuấn | <ruby>先月<rt>せんげつ</rt></ruby>から<ruby>入院<rt>にゅういん</rt></ruby>しています。<ruby>費用<rt>ひよう</rt></ruby>がかかって、<ruby>お母<rt>かあ</rt></ruby>さんが<ruby>一人<rt>ひとり</rt></ruby>で<ruby>支払<rt>しはら</rt></ruby>っています。<ruby>僕<rt>ぼく</rt></ruby>が<ruby>帰<rt>かえ</rt></ruby>ったら<ruby>助<rt>たす</rt></ruby>けられると<ruby>思<rt>おも</rt></ruby>って...<br>*(Tháng trước bố nhập viện. Chi phí nhiều, mẹ đang trả một mình. Con nghĩ nếu về sẽ giúp được...)* |
| Ngọc | そうですね。でも、<ruby>帰<rt>かえ</rt></ruby>ったら<ruby>今<rt>いま</rt></ruby>より<ruby>多<rt>おお</rt></ruby>く<ruby>稼<rt>かせ</rt></ruby>げますか?<br>*(Tôi hiểu. Nhưng về rồi Tuấn kiếm được nhiều hơn bây giờ không?)* |
| Tuấn | (do dự) ...<ruby>難<rt>むずか</rt></ruby>しいですね。ベトナムの<ruby>給料<rt>きゅうりょう</rt></ruby>だと...<br>*(... Khó nhỉ. Với lương ở Việt Nam thì...)* |
| Ngọc | <ruby>監理団体<rt>かんりだんたい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>しましたか?<ruby>緊急の<rt>きんきゅうの</rt></ruby>ご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>状況<rt>じょうきょう</rt></ruby>は、<ruby>送金<rt>そうきん</rt></ruby>の<ruby>サポート<rt>サポート</rt></ruby>がもらえる<ruby>場合<rt>ばあい</rt></ruby>もあります。または<ruby>施設<rt>しせつ</rt></ruby>の<ruby>生活相談員<rt>せいかつそうだんいん</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてみてもいいかもしれない。<br>*(Đã hỏi đơn vị giám lý chưa? Trường hợp gia đình khẩn cấp, có thể được hỗ trợ gửi tiền. Hoặc thử hỏi 生活相談員 ở cơ sở cũng được.)* |
| Tuấn | そういう<ruby>相談<rt>そうだん</rt></ruby>ができるんですか...<ruby>知<rt>し</rt></ruby>らなかったです。<br>*(Có thể tư vấn được như vậy à... Con không biết.)* |
| Ngọc | そうです。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えなくていいです。それがここにいる<ruby>理由<rt>りゆう</rt></ruby>のひとつです。<br>*(Đúng vậy. Không cần ôm một mình. Đó là một trong những lý do có mọi người ở đây.)* |

---

## Tình huống 6 — Ngọc đề nghị gặp Mai-san cùng với Tuấn

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>の<ruby>後<rt>あと</rt></ruby>で、<ruby>舞<rt>まい</rt></ruby>さん(生活相談員)に<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>話<rt>はな</rt></ruby>しに<ruby>行<rt>い</rt></ruby>きませんか? トゥアンさんの<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えて、<ruby>何<rt>なに</rt></ruby>か<ruby>方法<rt>ほうほう</rt></ruby>がないか<ruby>相談<rt>そうだん</rt></ruby>しましょう。<br>*(Sau hôm nay, cùng tôi đến gặp Mai-san (生活相談員) không? Nói về tình huống của Tuấn, cùng tìm xem có cách nào không.)* |
| Tuấn | (rụt rè) ...でも、<ruby>迷惑<rt>めいわく</rt></ruby>じゃないですか?<br>*(... Nhưng có làm phiền không ạ?)* |
| Ngọc | (lắc đầu, cười) <ruby>舞<rt>まい</rt></ruby>さんの<ruby>仕事<rt>しごと</rt></ruby>はまさにこれです。TTSの<ruby>皆<rt>みな</rt></ruby>さんのことを<ruby>支<rt>ささ</rt></ruby>えるのが<ruby>仕事<rt>しごと</rt></ruby>です。<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。<br>*(Lắc đầu, cười. Đây chính là công việc của Mai-san. Hỗ trợ mọi TTS là công việc của cô ấy. Đừng ngại.)* |
| Tuấn | (thở dài) ...ゴックさん、ありがとうございます。<ruby>私<rt>わたし</rt></ruby>は<ruby>何<rt>なに</rt></ruby>も<ruby>言<rt>い</rt></ruby>わずに<ruby>帰<rt>かえ</rt></ruby>ろうとしていました。<br>*(... Chị Ngọc, cảm ơn chị. Con đã định về mà không nói gì với ai.)* |
| Ngọc | (nói nghiêm nhưng ấm áp) それはだめですよ。<ruby>失踪<rt>しっそう</rt></ruby>したら、トゥアンさんの<ruby>将来<rt>しょうらい</rt></ruby>に<ruby>傷<rt>きず</rt></ruby>がつきます。<ruby>次<rt>つぎ</rt></ruby>に<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>たくても<ruby>来<rt>こ</rt></ruby>れなくなる<ruby>可能性<rt>かのうせい</rt></ruby>もあります。<br>*(Nói nghiêm nhưng ấm áp. Vậy không được. Nếu bỏ trốn về, sẽ ảnh hưởng đến tương lai của Tuấn. Sau này muốn sang Nhật lại cũng có thể không được.)* |
| Tuấn | (giật mình) そうですか...<br>*(Vậy ạ...)* |

---

## Tình huống 7 — Phòng Mai-san · ba người ngồi lại, tìm giải pháp

| Vai | Lời thoại |
|---|---|
| Mai-san | トゥアンさん、<ruby>話<rt>はな</rt></ruby>してくれてよかった。まず、<ruby>監理団体<rt>かんりだんたい</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>してお<ruby>父<rt>とう</rt></ruby>さんの<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えましょう。<ruby>緊急<rt>きんきゅう</rt></ruby>の<ruby>一時<rt>いちじ</rt></ruby><ruby>帰国<rt>きこく</rt></ruby>ができるか<ruby>確認<rt>かくにん</rt></ruby>してみます。<br>*(Tuấn, may mà nói ra rồi. Trước tiên hãy liên lạc với đơn vị giám lý và báo tình trạng bố. Tôi sẽ hỏi xem có thể về nước tạm thời trong trường hợp khẩn cấp không.)* |
| Tuấn | <ruby>一時帰国<rt>いちじきこく</rt></ruby>...できるんですか?<br>*(Về nước tạm thời... có thể ạ?)* |
| Mai-san | <ruby>ケース<rt>ケース</rt></ruby>によりますが、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>重病<rt>じゅうびょう</rt></ruby>は<ruby>認<rt>みと</rt></ruby>められることがあります。ただ、<ruby>監理団体<rt>かんりだんたい</rt></ruby>と<ruby>早<rt>はや</rt></ruby>めに<ruby>相談<rt>そうだん</rt></ruby>することが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Tuỳ trường hợp, nhưng bệnh nặng trong gia đình thường được chấp nhận. Tuy nhiên, quan trọng là phải trao đổi sớm với đơn vị giám lý.)* |
| Tuấn | (nhẹ nhõm) そうですか...<ruby>知<rt>し</rt></ruby>らなかったです。<br>*(Vậy ạ... Con không biết.)* |
| Mai-san | あと、<ruby>送金<rt>そうきん</rt></ruby>のことで<ruby>困<rt>こま</rt></ruby>っているなら、<ruby>国際送金<rt>こくさいそうきん</rt></ruby>の<ruby>手数料<rt>てすうりょう</rt></ruby>が<ruby>安<rt>やす</rt></ruby>いサービスを<ruby>紹介<rt>しょうかい</rt></ruby>できます。<ruby>毎月<rt>まいつき</rt></ruby>の<ruby>負担<rt>ふたん</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>減<rt>へ</rt></ruby>りますよ。<br>*(Ngoài ra, nếu khó khăn về gửi tiền, tôi có thể giới thiệu dịch vụ chuyển tiền quốc tế phí thấp. Sẽ giảm bớt gánh nặng mỗi tháng.)* |
| Ngọc | (trong lòng) <ruby>舞<rt>まい</rt></ruby>さんがいてよかった。<ruby>私<rt>わたし</rt></ruby>だけじゃ、ここまで<ruby>知<rt>し</rt></ruby>らなかった。<br>*(Trong lòng: May có Mai-san. Chỉ một mình tôi thì không biết đến mức này.)* |

---

## Tình huống 8 — Hành lang sau cuộc họp · Tuấn nói lời quyết tâm

| Vai | Lời thoại |
|---|---|
| Tuấn | ゴックさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>帰<rt>かえ</rt></ruby>ろうとしていたのに。<br>*(Chị Ngọc, hôm nay thật sự cảm ơn chị. Con đã định về mà.)* |
| Ngọc | もう<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えないでください。<ruby>困<rt>こま</rt></ruby>ったときは、<ruby>言<rt>い</rt></ruby>ってください。それが<ruby>チーム<rt>チーム</rt></ruby>です。<br>*(Đừng ôm một mình nữa. Khi khó khăn, cứ nói. Đó là ý nghĩa của đội nhóm.)* |
| Tuấn | はい。<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>も<ruby>受<rt>う</rt></ruby>けてみます。<br>*(Vâng. Con sẽ cố. Con sẽ thử thi 特定技能 luôn.)* |
| Ngọc | それはいい<ruby>目標<rt>もくひょう</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Đó là mục tiêu tốt. Tôi cũng sẽ cùng giúp chuẩn bị.)* |
| Tuấn | ゴックさんみたいになれるかな...<br>*(Không biết có được như chị Ngọc không...)* |
| Ngọc | (mỉm cười) <ruby>私<rt>わたし</rt></ruby>も、5<ruby>年前<rt>ねんまえ</rt></ruby>は<ruby>今<rt>いま</rt></ruby>のトゥアンさんと<ruby>同<rt>おな</rt></ruby>じでした。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Mỉm cười. Tôi 5 năm trước cũng giống Tuấn bây giờ. Không sao đâu.)* |

---

## Tình huống 9 — Phòng nghỉ nhân viên · sau ca, Ngọc báo cáo Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>トゥアンさんと<ruby>面談<rt>めんだん</rt></ruby>しました。<ruby>帰国<rt>きこく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えていたことが<ruby>分<rt>わ</rt></ruby>かりました。<ruby>経済的<rt>けいざいてき</rt></ruby>な<ruby>問題<rt>もんだい</rt></ruby>とお<ruby>父<rt>とう</rt></ruby>さんの<ruby>入院<rt>にゅういん</rt></ruby>です。<br>*(Chủ nhiệm Sato, hôm nay tôi phỏng vấn Tuấn. Biết được cậu ấy đang nghĩ đến việc về nước. Vấn đề tài chính và bố nhập viện.)* |
| Sato | そうですか。グエンさんが<ruby>早<rt>はや</rt></ruby>めに<ruby>気<rt>き</rt></ruby>づいてくれてよかった。<ruby>舞<rt>まい</rt></ruby>さんには?<br>*(Vậy à. May Nguyễn phát hiện sớm. Với Mai-san thì sao?)* |
| Ngọc | はい、3<ruby>人<rt>にん</rt></ruby>で<ruby>話<rt>はな</rt></ruby>しました。<ruby>一時帰国<rt>いちじきこく</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>と、<ruby>監理団体<rt>かんりだんたい</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>しました。トゥアンさんは<ruby>残<rt>のこ</rt></ruby>る<ruby>意志<rt>いし</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>してくれました。<br>*(Vâng, 3 người đã nói chuyện. Đề xuất khả năng về nước tạm và liên lạc đơn vị giám lý. Tuấn đã bày tỏ ý chí ở lại.)* |
| Sato | グエンさん、よくやってくれましたね。<ruby>教育担当<rt>きょういくたんとう</rt></ruby>として、これが<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>のひとつです。<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えるだけじゃない。<br>*(Nguyễn, làm tốt lắm. Là 教育担当, đây là một trong những công việc quan trọng nhất. Không chỉ dạy kỹ thuật.)* |
| Ngọc | (cảm thấy ý nghĩa vai trò mình đang gánh) はい。<ruby>私<rt>わたし</rt></ruby>も<ruby>経験<rt>けいけん</rt></ruby>があったから、トゥアンさんの<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng. Vì tôi cũng đã trải qua, nên tôi hiểu cảm giác của Tuấn.)* |

---

## Tình huống 10 — Phòng TTS · hôm sau, Tuấn làm việc chăm hơn

| Vai | Lời thoại |
|---|---|
| Linh | (nói nhỏ với Ngọc) ゴックさん、トゥアンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>いますね。<ruby>笑顔<rt>えがお</rt></ruby>もあって。<br>*(Chị Ngọc, hôm nay Tuấn khác nhỉ. Còn cả nụ cười nữa.)* |
| Ngọc | (gật đầu) そう、<ruby>頑張<rt>がんば</rt></ruby>っているね。<br>*(Ừ, đang cố đó.)* |
| Tuấn | (đang hướng dẫn 利用者 với giọng tự tin hơn) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>体<rt>からだ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>変<rt>か</rt></ruby>えますね。<ruby>痛<rt>いた</rt></ruby>くないですか?<br>*(Ông Tanaka, tôi đổi tư thế nằm nhé. Có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>そうだね。<br>*(Không sao. Hôm nay trông vui vẻ nhỉ.)* |
| Tuấn | (cười nhẹ) はい、おかげさまで。<br>*(Vâng, nhờ mọi người ạ.)* |
| Ngọc | (từ xa, nhìn, nghĩ trong lòng) ドックさんが<ruby>私<rt>わたし</rt></ruby>にしてくれたこと、<ruby>今度<rt>こんど</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がトゥアンさんにしてあげられた。<br>*(Trong lòng: Điều Đức đã làm cho mình, giờ mình cũng đã làm được cho Tuấn.)* |

---

## Tình huống 11 — Gọi điện cho Đức · tối muộn, Ngọc chia sẻ khoảnh khắc

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Chị Ngọc gọi hơi trễ. Có chuyện gì không? |
| Ngọc | (tiếng Việt) Không có chuyện gấp. Chỉ muốn cảm ơn anh Đức một lần nữa. |
| Đức | (tiếng Việt) Cảm ơn cái gì? |
| Ngọc | (tiếng Việt) Hồi năm 1, anh nói với em: "Về giờ nợ còn, ở lại nợ hết." Em đã kể lại câu đó cho một TTS hôm nay. Bạn ấy định bỏ về. |
| Đức | (tiếng Việt) Thiệt vậy. Kết quả sao? |
| Ngọc | (tiếng Việt) Bạn ấy quyết ở lại. Và còn nói sẽ thi 特定技能. |
| Đức | (tiếng Việt, cười) Chị Ngọc giờ làm được việc của anh rồi. Lớn thật. |
| Ngọc | (tiếng Việt) Dạ, nhờ anh dạy. Ngủ ngon anh. |

---

## Tình huống 12 — Nhà Ngọc · đêm, nhật ký ngắn trong đầu

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, tự nghĩ) Hôm nay mệt nhưng nhẹ lòng. Tuấn ở lại. Đó là điều quan trọng nhất. |
| Ngọc | (tiếng Nhật, nhìn ra cửa sổ, độc thoại) <ruby>教育担当<rt>きょういくたんとう</rt></ruby>というのは、<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えることだけじゃない。<ruby>人<rt>ひと</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>けられるように<ruby>支<rt>ささ</rt></ruby>えること。それがわかった<ruby>日<rt>ひ</rt></ruby>だった。<br>*(Làm 教育担当 không chỉ là dạy kỹ thuật. Là hỗ trợ để con người có thể tiếp tục. Đó là điều tôi hiểu ra hôm nay.)* |
| Ngọc | (tiếng Việt, tự nhủ) Mình không một mình đâu. Có Yamamoto-san, có Đức, có Hương. Ngủ thôi. |

---

## Đọng lại chương 8

Tháng 11/2031 — chương trọng tâm cảm xúc của sách 31. TTS Tuấn muốn bỏ về vì áp lực nợ và bố bệnh; Ngọc dùng đúng câu Đức đã nói với cô 5 năm trước để giữ Tuấn lại, đồng thời kết hợp với Mai-san tìm **一時帰国** khẩn cấp và giảm phí gửi tiền. Tuấn quyết ở lại và đặt mục tiêu **特定技能1号**. Motif "người được cứu trở thành người cứu" khép lại vòng tròn từ sách 27.

> Từ vựng & mẫu câu chương này: 教育担当・面談・監理団体・失踪・一時帰国・特定技能1号・送金・国際送金・手数料・生活相談員・経済的問題・緊急・意志を示す・チーム', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000009, 800000031, NULL, 'markdown_book', 'T9. Tiệc cuối năm và sự trưởng thành của thực tập sinh (忘年会と実習生の成長)', '# Sách điều dưỡng viên quốc gia · T9. Tiệc cuối năm và sự trưởng thành của thực tập sinh (忘年会と実習生の成長)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー + 教育担当, độc thân) — dẫn tiệc 忘年会 cuối năm, nhìn lại một năm đào tạo TTS Linh/Tuấn/Maya; Tuấn vượt khủng hoảng nợ tiền; Kobayashi úp mở vai trò lớn hơn cho Ngọc năm sau (mở đường thăng 介護主任).

---

## Bối cảnh

Tháng 12 năm 2031. Viện dưỡng lão ひだまり苑 tổ chức 忘年会 cuối năm cho toàn nhân viên tại nhà hàng gần ga. Ngọc — ユニットリーダー kiêm 教育担当 — cùng đồng nghiệp Yamamoto, Sato, Kobayashi, và ba TTS Linh, Tuấn, Maya tham dự. Đây là năm đầu tiên Ngọc chính thức đào tạo TTS từ đầu đến cuối. Cuối đêm, Ngọc gọi điện về Cần Thơ báo tin cuối năm cho mẹ.

---

## Tình huống 1 — Phòng họp · 17:30, thông báo 忘年会 và phân công

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>今年<rt>ことし</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>今夜<rt>こんや</rt></ruby>7<ruby>時<rt>じ</rt></ruby>から<ruby>駅前<rt>えきまえ</rt></ruby>の「<ruby>桜<rt>さくら</rt></ruby>」で<ruby>忘年会<rt>ぼうねんかい</rt></ruby>です。<ruby>実習生<rt>じっしゅうせい</rt></ruby>も<ruby>全員<rt>ぜんいん</rt></ruby><ruby>参加<rt>さんか</rt></ruby>してください。<br>*(Mọi người, năm nay cũng đã vất vả rồi. Tối nay 7 giờ có tiệc cuối năm tại nhà hàng "Sakura" trước ga. Các thực tập sinh cũng tham gia đầy đủ nhé.)* |
| Ngọc | <ruby>実習生<rt>じっしゅうせい</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さん、<ruby>正装<rt>せいそう</rt></ruby>じゃなくても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。スマートカジュアルで<ruby>来<rt>き</rt></ruby>てください。<br>*(Các bạn thực tập sinh, không cần mặc trang phục trang trọng cũng được. Mặc smart casual đến nhé.)* |
| Linh | はい、わかりました。グエンさん、「スマートカジュアル」というのはどんな<ruby>服<rt>ふく</rt></ruby>ですか?<br>*(Vâng, em hiểu rồi. Chị Nguyễn, "smart casual" là trang phục như thế nào ạ?)* |
| Ngọc | ジーンズは<ruby>避<rt>さ</rt></ruby>けて、きれいなシャツやブラウスを<ruby>着<rt>き</rt></ruby>ればいいですよ。<ruby>難<rt>むずか</rt></ruby>しく<ruby>考<rt>かんが</rt></ruby>えないでください。<br>*(Tránh quần jeans, mặc áo sơ mi hoặc blouse gọn gàng là được. Đừng nghĩ phức tạp quá nhé.)* |
| Tuấn | グエンさん、<ruby>今夜<rt>こんや</rt></ruby>の<ruby>乾杯<rt>かんぱい</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>がやりますか?<br>*(Chị Nguyễn, tối nay ai sẽ dẫn "kanpai" ạ?)* |
| Yamamoto | ユニットリーダーのグエンさんにお<ruby>願<rt>ねが</rt></ruby>いしていますよ。<br>*(Chúng tôi đã nhờ trưởng nhóm Nguyễn rồi đó.)* |
| Ngọc | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。では、<ruby>現場<rt>げんば</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎをしっかりして<ruby>集合<rt>しゅうごう</rt></ruby>しましょう。<br>*(Vâng, tôi sẽ cố thôi. Vậy mọi người bàn giao ca cẩn thận rồi tập hợp nhé.)* |

---

## Tình huống 2 — Nhà hàng Sakura · 19:00, nghi thức khai tiệc

| Vai | Lời thoại |
|---|---|
| Kobayashi | では、<ruby>施設長<rt>しせつちょう</rt></ruby>より<ruby>一言<rt>ひとこと</rt></ruby>。<ruby>今年<rt>ことし</rt></ruby>はスタッフ・<ruby>実習生<rt>じっしゅうせい</rt></ruby>が<ruby>一丸<rt>いちがん</rt></ruby>となって、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってくれました。<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Vậy, một lời từ giám đốc. Năm nay nhân viên và thực tập sinh đã đoàn kết bảo vệ sự an toàn cho các cụ. Tôi chân thành cảm ơn mọi người.)* |
| Ngọc | (đứng dậy) では、<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます。<ruby>今年<rt>ことし</rt></ruby>一<ruby>年<rt>ねん</rt></ruby>、<ruby>皆<rt>みな</rt></ruby>さんに<ruby>支<rt>ささ</rt></ruby>えていただき、ありがとうございました。<ruby>実習生<rt>じっしゅうせい</rt></ruby>のリン・トゥアン・マヤさんも、よく<ruby>頑張<rt>がんば</rt></ruby>りましたね。<ruby>来年<rt>らいねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Vậy để tôi dẫn tụng "kanpai". Năm nay tôi đã được mọi người ủng hộ, chân thành cảm ơn. Các bạn thực tập sinh Linh, Tuấn, Maya cũng đã cố gắng rất nhiều nhỉ. Năm sau cũng mong được chỉ bảo. Kanpai!)* |
| Mọi người | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Kanpai!)* |
| Maya | (nói nhỏ với Linh) グエンさんのスピーチ、かっこよかったです。<br>*(Bài phát biểu của chị Nguyễn ngầu thật.)* |
| Linh | そうですね。わたしも<ruby>早<rt>はや</rt></ruby>くああなりたいです。<br>*(Đúng vậy. Em cũng muốn mau trở nên như chị ấy.)* |

---

## Tình huống 3 — Bàn tiệc · 19:30, Yamamoto hỏi Ngọc về năm đào tạo TTS

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今年<rt>ことし</rt></ruby>は<ruby>教育担当<rt>きょういくたんとう</rt></ruby>として<ruby>実習生<rt>じっしゅうせい</rt></ruby>3<ruby>人<rt>にん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しましたね。どうでしたか?<br>*(Chị Nguyễn, năm nay với tư cách là phụ trách đào tạo, chị đã phụ trách 3 thực tập sinh nhỉ. Thế nào?)* |
| Ngọc | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>でした。<ruby>教<rt>おし</rt></ruby>えることと<ruby>見守<rt>みまも</rt></ruby>ることの<ruby>バランス<rt>バランス</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくて。<br>*(Thật ra, lúc đầu khó lắm. Cân bằng giữa dạy và để các bạn tự làm thật không dễ.)* |
| Yamamoto | でも、<ruby>今<rt>いま</rt></ruby>では3<ruby>人<rt>にん</rt></ruby>とも<ruby>現場<rt>げんば</rt></ruby>で<ruby>安定<rt>あんてい</rt></ruby>して<ruby>動<rt>うご</rt></ruby>けていますよ。グエンさんの<ruby>指導<rt>しどう</rt></ruby>のおかげですね。<br>*(Nhưng bây giờ cả 3 người đều làm việc ổn định ở hiện trường rồi. Nhờ sự hướng dẫn của chị Nguyễn đấy.)* |
| Ngọc | いいえ、3<ruby>人<rt>にん</rt></ruby>が<ruby>自分<rt>じぶん</rt></ruby>たちで<ruby>努力<rt>どりょく</rt></ruby>した<ruby>結果<rt>けっか</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>はただ<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歩<rt>ある</rt></ruby>いただけです。<br>*(Không ạ, đó là kết quả các bạn tự nỗ lực. Tôi chỉ cùng bước đi cạnh thôi.)* |
| Yamamoto | その<ruby>謙虚<rt>けんきょ</rt></ruby>さがグエンさんらしいですね。でも、<ruby>指導者<rt>しどうしゃ</rt></ruby>として<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>していますよ。<br>*(Sự khiêm tốn đó đúng là chất của chị Nguyễn nhỉ. Nhưng chị đã chắc chắn phát triển với tư cách là người hướng dẫn rồi đó.)* |

---

## Tình huống 4 — Bàn tiệc · 20:00, Linh báo cáo tiến bộ với Ngọc

| Vai | Lời thoại |
|---|---|
| Linh | グエンさん、<ruby>今年<rt>ことし</rt></ruby>はいろいろ<ruby>教<rt>おし</rt></ruby>えていただいて、ありがとうございました。<br>*(Chị Nguyễn, năm nay cảm ơn chị đã dạy em nhiều điều ạ.)* |
| Ngọc | リンさんこそ、よく<ruby>頑張<rt>がんば</rt></ruby>りましたよ。<ruby>介護記録<rt>かいごきろく</rt></ruby>の<ruby>書き方<rt>かきかた</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>はどうでしたか?<br>*(Chính Linh mới là người đã cố gắng đó. Lúc đầu viết hồ sơ điều dưỡng thế nào?)* |
| Linh | <ruby>最初<rt>さいしょ</rt></ruby>はぜんぜん<ruby>書<rt>か</rt></ruby>けませんでした。でも、グエンさんが<ruby>毎日<rt>まいにち</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してくれたので、<ruby>今<rt>いま</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>で<ruby>書<rt>か</rt></ruby>けます。<br>*(Lúc đầu em không viết được gì cả. Nhưng vì chị Nguyễn mỗi ngày cùng kiểm tra với em, nên bây giờ em tự viết được rồi.)* |
| Ngọc | それは<ruby>本当<rt>ほんとう</rt></ruby>にうれしいです。<ruby>記録<rt>きろく</rt></ruby>は<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>大事<rt>だいじ</rt></ruby>なものだから、これからも<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けてくださいね。<br>*(Điều đó thật sự khiến tôi vui. Vì biên bản là thứ quan trọng bảo vệ sự an toàn của các cụ, nên hãy tiếp tục thực hiện cẩn thận nhé.)* |
| Linh | はい。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>3<ruby>号<rt>ごう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>するために、もっとがんばります。<br>*(Vâng. Năm sau để chuyển sang thực tập kỹ năng bậc 3, em sẽ cố gắng hơn nữa.)* |

---

## Tình huống 5 — Góc bàn tiệc · 20:20, Tuấn cảm ơn Ngọc về khủng hoảng nợ

| Vai | Lời thoại |
|---|---|
| Tuấn | グエンさん、<ruby>先月<rt>せんげつ</rt></ruby>はほんとうにありがとうございました。あの<ruby>時<rt>とき</rt></ruby>、<ruby>相談<rt>そうだん</rt></ruby>できなかったら、どうなっていたか。<br>*(Chị Nguyễn, tháng trước thực sự cảm ơn chị. Lúc đó nếu không tâm sự được thì không biết sao nữa.)* |
| Ngọc | <ruby>話<rt>はな</rt></ruby>してくれてよかったです。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えこまないでください。<ruby>借金<rt>しゃっきん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>は<ruby>恥<rt>はず</rt></ruby>ずかしくないですよ。<ruby>多<rt>おお</rt></ruby>くの<ruby>人<rt>ひと</rt></ruby>が<ruby>経験<rt>けいけん</rt></ruby>することです。<br>*(Tốt là bạn đã nói ra. Đừng giữ một mình. Vấn đề tiền nợ không phải điều đáng xấu hổ. Nhiều người đã trải qua điều này mà.)* |
| Tuấn | でも、グエンさんのおかげで<ruby>組合<rt>くみあい</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>できて、<ruby>分割払<rt>ぶんかつばら</rt></ruby>いの<ruby>計画<rt>けいかく</rt></ruby>も<ruby>立<rt>た</rt></ruby>てられました。<ruby>今<rt>いま</rt></ruby>は<ruby>毎月<rt>まいつき</rt></ruby>ちゃんと<ruby>返済<rt>へんさい</rt></ruby>できています。<br>*(Nhưng nhờ chị Nguyễn em liên lạc được với công đoàn, và lập được kế hoạch trả góp. Bây giờ mỗi tháng em đang trả đúng hạn rồi.)* |
| Ngọc | それはよかった。<ruby>返済<rt>へんさい</rt></ruby>できているなら、あとは<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>してください。トゥアンさんの<ruby>技術<rt>ぎじゅつ</rt></ruby>は<ruby>着実<rt>ちゃくじつ</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びていますよ。<br>*(Vậy là tốt. Nếu đang trả được thì sau đó hãy tập trung vào công việc nhé. Kỹ thuật của Tuấn đang tăng lên chắc chắn đó.)* |
| Tuấn | はい。グエンさんのように<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>信頼<rt>しんらい</rt></ruby>されるスタッフになりたいです。<br>*(Vâng. Em muốn trở thành nhân viên được các cụ tin tưởng như chị Nguyễn.)* |

---

## Tình huống 6 — Bàn tiệc · 20:45, Maya chia sẻ tiến bộ tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Maya | グエンさん、わたし<ruby>今年<rt>ことし</rt></ruby>N3に<ruby>合格<rt>ごうかく</rt></ruby>しましたよ！<br>*(Chị Nguyễn, năm nay em đã đỗ N3 rồi!)* |
| Ngọc | マヤさん、すごいですね！<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>りました！<br>*(Maya, tuyệt vời quá! Bạn đã thật sự cố gắng lắm!)* |
| Maya | グエンさんが<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>漢字<rt>かんじ</rt></ruby>の<ruby>小テスト<rt>こテスト</rt></ruby>をしてくれたので、<ruby>諦<rt>あきら</rt></ruby>めずに<ruby>続<rt>つづ</rt></ruby>けられました。<br>*(Vì chị Nguyễn mỗi tuần tổ chức quiz kanji cho em, nên em không bỏ cuộc được và tiếp tục đến cùng.)* |
| Ngọc | <ruby>続<rt>つづ</rt></ruby>けたのはマヤさん<ruby>自身<rt>じしん</rt></ruby>ですよ。<ruby>来年<rt>らいねん</rt></ruby>はN2に<ruby>挑戦<rt>ちょうせん</rt></ruby>しますか?<br>*(Người tiếp tục được là chính Maya đó. Năm sau có thử sức N2 không?)* |
| Maya | はい、<ruby>挑戦<rt>ちょうせん</rt></ruby>します。でも<ruby>難<rt>むずか</rt></ruby>しそうで…<br>*(Vâng, em sẽ thử. Nhưng có vẻ khó quá…)* |
| Ngọc | <ruby>難<rt>むずか</rt></ruby>しくても、マヤさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>対策<rt>たいさく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えましょう。<br>*(Dù khó, Maya thì ổn thôi. Cùng nhau nghĩ phương án ôn tập nhé.)* |

---

## Tình huống 7 — Bàn tiệc · 21:00, Sato nhìn lại năm cùng Ngọc

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>教育担当<rt>きょういくたんとう</rt></ruby>になった<ruby>最初<rt>さいしょ</rt></ruby>のころ、<ruby>覚<rt>おぼ</rt></ruby>えていますか?<br>*(Chị Nguyễn, có nhớ hồi mới trở thành phụ trách đào tạo không?)* |
| Ngọc | <ruby>覚<rt>おぼ</rt></ruby>えています。<ruby>実習生<rt>じっしゅうせい</rt></ruby>にどう<ruby>教<rt>おし</rt></ruby>えればいいかわからなくて、<ruby>佐藤<rt>さとう</rt></ruby>さんにたくさん<ruby>相談<rt>そうだん</rt></ruby>しました。<br>*(Em nhớ. Em không biết dạy thực tập sinh như thế nào, nên đã hỏi chị Sato rất nhiều.)* |
| Sato | あのとき、「<ruby>教<rt>おし</rt></ruby>えすぎず、<ruby>失敗<rt>しっぱい</rt></ruby>させてみる」って<ruby>言<rt>い</rt></ruby>いましたね。<br>*(Hồi đó tôi có nói "đừng dạy quá nhiều, để các bạn thử sai" nhỉ.)* |
| Ngọc | はい。あのアドバイスが<ruby>一番<rt>いちばん</rt></ruby><ruby>効<rt>き</rt></ruby>きました。<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>ぶことが<ruby>一番<rt>いちばん</rt></ruby><ruby>身<rt>み</rt></ruby>につきますから。<br>*(Vâng. Lời khuyên đó có tác dụng nhất. Vì học từ thất bại mới thấm nhất mà.)* |
| Sato | <ruby>来年<rt>らいねん</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>も<ruby>入<rt>はい</rt></ruby>ってくる<ruby>予定<rt>よてい</rt></ruby>ですよ。グエンさんはもっと<ruby>頼<rt>たの</rt></ruby>もしくなっていますよ。<br>*(Năm sau dự kiến cũng có thực tập sinh mới vào. Chị Nguyễn chắc chắn sẽ càng đáng tin cậy hơn đó.)* |

---

## Tình huống 8 — Góc sảnh · 21:20, Kobayashi nói chuyện riêng với Ngọc

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、ちょっとよろしいですか?<br>*(Chị Nguyễn, có chút thời gian không?)* |
| Ngọc | はい、<ruby>施設長<rt>しせつちょう</rt></ruby>。<br>*(Vâng, giám đốc.)* |
| Kobayashi | <ruby>今年<rt>ことし</rt></ruby>の<ruby>教育担当<rt>きょういくたんとう</rt></ruby>としての<ruby>働<rt>はたら</rt></ruby>き、とても<ruby>評価<rt>ひょうか</rt></ruby>しています。<ruby>実習生<rt>じっしゅうせい</rt></ruby>3<ruby>人<rt>にん</rt></ruby>とも<ruby>定着<rt>ていちゃく</rt></ruby>して、<ruby>現場<rt>げんば</rt></ruby>の<ruby>雰囲気<rt>ふんいき</rt></ruby>もよくなりました。<br>*(Tôi đánh giá cao công việc của chị với tư cách phụ trách đào tạo năm nay. Cả 3 thực tập sinh đều ổn định ở lại, không khí hiện trường cũng tốt lên nhiều.)* |
| Ngọc | ありがとうございます。<ruby>利用者<rt>りようしゃ</rt></ruby>さんにも<ruby>迷惑<rt>めいわく</rt></ruby>をかけずに<ruby>済<rt>す</rt></ruby>んでよかったと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Cảm ơn ông. Tôi mừng là không gây phiền hà cho các cụ.)* |
| Kobayashi | <ruby>来年<rt>らいねん</rt></ruby>、グエンさんには<ruby>介護主任<rt>かいごしゅにん</rt></ruby>という<ruby>役割<rt>やくわり</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えています。<ruby>施設全体<rt>しせつぜんたい</rt></ruby>の<ruby>質<rt>しつ</rt></ruby>を<ruby>管理<rt>かんり</rt></ruby>する<ruby>立場<rt>たちば</rt></ruby>です。<ruby>詳<rt>くわ</rt></ruby>しくは<ruby>年明<rt>ねんあ</rt></ruby>けに<ruby>話<rt>はなし</rt></ruby>しましょう。<br>*(Năm sau, tôi đang nghĩ đến vai trò 介護主任 cho chị Nguyễn. Đó là vị trí quản lý chất lượng toàn bộ cơ sở. Chi tiết hãy nói chuyện vào đầu năm mới nhé.)* |
| Ngọc | <ruby>介護主任<rt>かいごしゅにん</rt></ruby>...。ありがとうございます。<ruby>責任<rt>せきにん</rt></ruby>の<ruby>重さ<rt>おもさ</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じますが、<ruby>精<rt>せい</rt></ruby>いっぱいやらせていただきます。<br>*(介護主任… Cảm ơn ông. Tôi cảm nhận được trách nhiệm nặng nề, nhưng tôi sẽ cố gắng hết sức.)* |
| Kobayashi | グエンさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>楽<rt>たの</rt></ruby>しみにしていますよ。<br>*(Chị Nguyễn thì không vấn đề gì. Tôi mong chờ đó.)* |

---

## Tình huống 9 — Sân nhà hàng · 21:45, chia tay về nhà

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、<ruby>皆<rt>みな</rt></ruby>さん、お<ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>ってください。<ruby>今年<rt>ことし</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。よいお<ruby>年<rt>とし</rt></ruby>を。<br>*(Vậy, mọi người về cẩn thận nhé. Năm nay cũng đã vất vả rồi. Chúc năm mới vui vẻ.)* |
| Ngọc | こちらこそ、ありがとうございました。よいお<ruby>年<rt>とし</rt></ruby>を。<br>*(Tôi cũng xin cảm ơn. Chúc năm mới vui vẻ ạ.)* |
| Tuấn | グエンさん、<ruby>来年<rt>らいねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Nguyễn, năm sau cũng mong được chỉ bảo ạ.)* |
| Linh | グエンさん、お<ruby>体<rt>からだ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてください。よいお<ruby>年<rt>とし</rt></ruby>を。<br>*(Chị Nguyễn, chị chú ý sức khoẻ nhé. Chúc năm mới vui vẻ ạ.)* |
| Maya | グエンさん、<ruby>来年<rt>らいねん</rt></ruby>もN2<ruby>一緒<rt>いっしょ</rt></ruby>にがんばりましょうね！<br>*(Chị Nguyễn, năm sau cùng nhau cố cho N2 nhé!)* |
| Ngọc | はい、みんな<ruby>気<rt>き</rt></ruby>をつけて。よいお<ruby>年<rt>とし</rt></ruby>を！<br>*(Vâng, mọi người về cẩn thận. Chúc năm mới vui vẻ!)* |

---

## Tình huống 10 — Viện dưỡng lão · 9:00 sáng hôm sau, họp nhìn lại năm

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>今年<rt>ことし</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りをします。ユニット1のリーダー、グエンさんから<ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chúng ta sẽ nhìn lại năm nay. Mời trưởng nhóm 1, chị Nguyễn báo cáo.)* |
| Ngọc | はい。<ruby>今年<rt>ことし</rt></ruby>は<ruby>教育担当<rt>きょういくたんとう</rt></ruby>として<ruby>実習生<rt>じっしゅうせい</rt></ruby>3<ruby>人<rt>にん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しました。<ruby>定着率<rt>ていちゃくりつ</rt></ruby>100<ruby>パーセント<rt>パーセント</rt></ruby>は<ruby>達成<rt>たっせい</rt></ruby>しましたが、<ruby>指導記録<rt>しどうきろく</rt></ruby>の<ruby>書き方<rt>かきかた</rt></ruby>に<ruby>課題<rt>かだい</rt></ruby>がありました。<br>*(Vâng. Năm nay tôi phụ trách hướng dẫn 3 thực tập sinh với tư cách phụ trách đào tạo. Tỷ lệ ở lại đạt 100%, nhưng có vấn đề về cách viết hồ sơ hướng dẫn.)* |
| Kobayashi | <ruby>定着率<rt>ていちゃくりつ</rt></ruby>100<ruby>パーセント<rt>パーセント</rt></ruby>はすばらしい。<ruby>課題<rt>かだい</rt></ruby>については、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>改善計画<rt>かいぜんけいかく</rt></ruby>に<ruby>落<rt>お</rt></ruby>とし<ruby>込<rt>こ</rt></ruby>んでください。<br>*(Tỷ lệ ở lại 100% thật xuất sắc. Về vấn đề còn tồn tại, hãy đưa vào kế hoạch cải thiện năm sau nhé.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>指導マニュアル<rt>しどうマニュアル</rt></ruby>を<ruby>作成<rt>さくせい</rt></ruby>して、チーム<ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Vâng, tôi rõ rồi. Năm sau tôi sẽ soạn thảo tài liệu hướng dẫn và chia sẻ với cả nhóm.)* |
| Sato | いいですね。そのマニュアルは<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>実習生<rt>じっしゅうせい</rt></ruby>にも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちますよ。<br>*(Hay đó. Tài liệu đó sẽ hữu ích cho cả thực tập sinh đàn em sau này nữa.)* |

---

## Tình huống 11 — Phòng sinh hoạt · 15:00, Tuấn lần đầu thực hiện độc lập quy trình nhập viện

| Vai | Lời thoại |
|---|---|
| Ngọc | トゥアンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>新規<rt>しんき</rt></ruby><ruby>入所者<rt>にゅうしょしゃ</rt></ruby>の<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れ、<ruby>一人<rt>ひとり</rt></ruby>でやってみてください。わたしは<ruby>近<rt>ちか</rt></ruby>くにいますから。<br>*(Anh Tuấn, hôm nay tiếp nhận người mới vào, anh thử một mình đi. Tôi sẽ ở gần đây thôi.)* |
| Tuấn | え、<ruby>一人<rt>ひとり</rt></ruby>でですか?<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Ồ, một mình ạ? Được không ạ?)* |
| Ngọc | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>先月<rt>せんげつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>してください。<br>*(Ổn thôi. Hãy nhớ lại buổi luyện tập tháng trước nhé.)* |
| Tuấn | (sau khi hoàn thành) グエンさん、<ruby>終<rt>お</rt></ruby>わりました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Nguyễn, em xong rồi. Mong chị kiểm tra giúp ạ.)* |
| Ngọc | (xem hồ sơ) よくできました。<ruby>入所者<rt>にゅうしょしゃ</rt></ruby>さんへの<ruby>声<rt>こえ</rt></ruby>かけも<ruby>丁寧<rt>ていねい</rt></ruby>でしたよ。これが<ruby>自立<rt>じりつ</rt></ruby>ですね。<br>*(Làm tốt lắm. Cách lên tiếng với người mới vào cũng rất chu đáo. Đây chính là tự lập rồi đó.)* |
| Tuấn | ありがとうございます。でも、まだグエンさんがいないと<ruby>不安<rt>ふあん</rt></ruby>なところがあります。<br>*(Cảm ơn chị. Nhưng em vẫn còn lo khi không có chị ở đó ạ.)* |
| Ngọc | その<ruby>不安<rt>ふあん</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>慎重<rt>しんちょう</rt></ruby>さの<ruby>表<rt>あらわ</rt></ruby>れですから。ただ、<ruby>自分<rt>じぶん</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じてください。<ruby>力<rt>ちから</rt></ruby>はついています。<br>*(Sự lo lắng đó quan trọng đó. Vì đó là biểu hiện của sự thận trọng. Nhưng hãy tin vào bản thân. Năng lực đang tăng lên rồi đó.)* |

---

## Tình huống 12 — Phòng riêng ký túc xá · 22:30, Ngọc gọi điện về nhà

> Scene tiếng Việt — Ngọc (độc thân, 29 tuổi) gọi cho mẹ ở Cần Thơ cuối năm.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Ngọc ơi, cuối năm sao con gọi muộn vậy? |
| Ngọc | (tiếng Việt) Dạ con vừa về tiệc cuối năm mà mẹ. Vui lắm. Nhưng về phòng là nhớ mẹ liền. |
| Mẹ | (tiếng Việt) Con ăn uống có đủ không? Gầy không? Một mình ở xa mẹ lo lắm. |
| Ngọc | (tiếng Việt) Con khoẻ mẹ, béo ra là đằng khác. Năm nay con được giao dạy 3 đứa thực tập sinh, tụi nó tiến bộ nhiều lắm. Con thấy vui. |
| Mẹ | (tiếng Việt) Vậy là tốt. Mà con một mình hoài, Tết này không về à? |
| Ngọc | (tiếng Việt) Chưa được mẹ, ca Tết con phải trực. Nhưng con hứa hè năm sau về. Mà mẹ, giám đốc hôm nay bảo năm sau muốn cho con lên chủ nhiệm điều dưỡng. Mẹ không biết chức đó lớn cỡ nào đâu, nhưng con hồi hộp lắm. |
| Mẹ | (tiếng Việt) Ừ, mẹ không biết nhưng nghe to to. Con cứ cố, mẹ tự hào lắm rồi. Nhớ giữ sức khoẻ, đừng làm nhiều quá. |
| Ngọc | (tiếng Việt) Dạ con biết. Mẹ ngủ sớm đi. Con yêu mẹ. |

---

## Đọng lại chương 9

忘年会 là cột mốc Ngọc lần đầu dẫn 乾杯 chính thức với tư cách ユニットリーダー kiêm 教育担当 — khép lại một năm đào tạo ba TTS từ đầu đến cuối. Linh tự viết hồ sơ được, Tuấn vượt khủng hoảng nợ và tự thực hiện được quy trình nhập viện, Maya đỗ N3 — ba điểm sáng rõ dưới sự dìu dắt kiên nhẫn của Ngọc. Kobayashi úp mở 介護主任 — vai trò quản lý toàn cơ sở — mở đường cho Chương 10. Đêm cuối năm, Ngọc một mình gọi về Cần Thơ, độc thân nhớ nhà nhưng đầy tự hào.

> Từ vựng & mẫu câu: 忘年会・乾杯の音頭を取る・教育担当・実習生・定着率・指導マニュアル・介護主任・施設全体・振り返り・課題・改善計画・技能実習3号・自立・不安は大切・よいお年を', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000010, 800000031, NULL, 'markdown_book', 'T10. Thăng chức chủ nhiệm điều dưỡng (介護主任への昇進)', '# Sách điều dưỡng viên quốc gia · T10. Thăng chức chủ nhiệm điều dưỡng (介護主任への昇進)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi) — được 施設長 Kobayashi gọi vào 面談, chính thức đề bạt lên 介護主任; đối mặt với áp lực trách nhiệm toàn hiện trường và phản ứng hỗn hợp của đồng nghiệp.

---

## Bối cảnh

Tháng 1. Sau kỳ nghỉ Tết Nhật Bản, Kobayashi gọi Ngọc vào phòng làm việc để 面談 chính thức về việc đề bạt 介護主任. Sato — 介護主任 tiền nhiệm — sắp chuyển sang bộ phận 相談員. Ngọc phải quyết định có nhận hay không.

---

## Tình huống 1 — Hành lang · 8:30, Yamamoto báo tin

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の10<ruby>時<rt>じ</rt></ruby>に<ruby>施設長<rt>しせつちょう</rt></ruby>から<ruby>面談<rt>めんだん</rt></ruby>があります。<ruby>知<rt>し</rt></ruby>っていましたか?<br>*(Chị Nguyễn, hôm nay 10 giờ có buổi phỏng vấn với giám đốc. Chị đã biết chưa?)* |
| Ngọc | はい、<ruby>昨日<rt>きのう</rt></ruby>メールをいただきました。<ruby>内容<rt>ないよう</rt></ruby>は<ruby>分<rt>わ</rt></ruby>からないのですが...<br>*(Vâng, hôm qua tôi có nhận email. Nhưng tôi không biết nội dung là gì...)* |
| Yamamoto | たぶん、いい<ruby>話<rt>はなし</rt></ruby>ですよ。<ruby>緊張<rt>きんちょう</rt></ruby>しないで。<br>*(Có lẽ là tin tốt đó. Đừng hồi hộp.)* |
| Ngọc | でも、やはり<ruby>緊張<rt>きんちょう</rt></ruby>します。<ruby>何<rt>なに</rt></ruby>かまずいことがあったのかと...<br>*(Nhưng dù sao tôi cũng hồi hộp. Cứ nghĩ không biết có chuyện gì không tốt...)* |
| Yamamoto | (cười) そんなことはないですよ。グエンさんの<ruby>仕事<rt>しごと</rt></ruby>はいつも<ruby>丁寧<rt>ていねい</rt></ruby>ですから。<br>*(Không có đâu. Công việc của chị Nguyễn lúc nào cũng cẩn thận mà.)* |

---

## Tình huống 2 — Phòng 施設長 · 10:00, mở đầu 面談

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>失礼<rt>しつれい</rt></ruby>します。グエン・ゴックです。お<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<br>*(Xin phép vào. Tôi là Nguyễn Ngọc. Cảm ơn ông đã dành thời gian.)* |
| Kobayashi | どうぞ<ruby>座<rt>すわ</rt></ruby>ってください。グエンさん、<ruby>今日<rt>きょう</rt></ruby>お<ruby>呼<rt>よ</rt></ruby>びしたのは、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>お話<rt>おはなし</rt></ruby>があるからです。<br>*(Mời ngồi. Hôm nay tôi mời chị Nguyễn đến vì có việc quan trọng.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, tôi rõ rồi ạ.)* |
| Kobayashi | <ruby>佐藤<rt>さとう</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>が3<ruby>月<rt>がつ</rt></ruby>に<ruby>相談員<rt>そうだんいん</rt></ruby>に<ruby>異動<rt>いどう</rt></ruby>することになりました。それで、<ruby>次<rt>つぎ</rt></ruby>の<ruby>介護主任<rt>かいごしゅにん</rt></ruby>として、グエンさんに<ruby>お願<rt>おねが</rt></ruby>いしたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Chủ nhiệm Sato sẽ chuyển sang bộ phận tư vấn vào tháng 3. Vì vậy, tôi muốn nhờ chị Nguyễn làm 介護主任 tiếp theo.)* |
| Ngọc | (dừng lại) ...わたしが、ですか?<br>*(... Là tôi ạ?)* |

---

## Tình huống 3 — Phòng 施設長 · 10:10, nghe giải thích vai trò

| Vai | Lời thoại |
|---|---|
| Kobayashi | はい。<ruby>介護主任<rt>かいごしゅにん</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>の<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>管理<rt>かんり</rt></ruby>する<ruby>立場<rt>たちば</rt></ruby>です。<ruby>シフト<rt>シフト</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>、<ruby>職員<rt>しょくいん</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>、<ruby>看護<rt>かんご</rt></ruby>・<ruby>事務<rt>じむ</rt></ruby>との<ruby>連携<rt>れんけい</rt></ruby>なども<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Vâng. 介護主任 là vị trí quản lý toàn bộ hiện trường. Cũng phụ trách điều chỉnh ca, đánh giá nhân viên, phối hợp với bộ phận y tế và hành chính.)* |
| Ngọc | <ruby>責任<rt>せきにん</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいですね...<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>自分<rt>じぶん</rt></ruby>にできるかどうか、<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Trách nhiệm lớn quá nhỉ... Thành thật mà nói, tôi lo không biết mình có làm được không.)* |
| Kobayashi | その<ruby>正直<rt>しょうじき</rt></ruby>さが、グエンさんの<ruby>強<rt>つよ</rt></ruby>みです。<ruby>完璧<rt>かんぺき</rt></ruby>な<ruby>人<rt>ひと</rt></ruby>はいません。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えながら<ruby>進<rt>すす</rt></ruby>んでいけばいい。<br>*(Sự thành thật đó chính là điểm mạnh của chị Nguyễn. Không ai là hoàn hảo cả. Cứ vừa suy nghĩ cùng nhau vừa tiến lên thôi.)* |
| Ngọc | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>考<rt>かんが</rt></ruby>えさせていただいてもいいですか?<br>*(Cảm ơn ông. Ông có thể cho tôi suy nghĩ thêm một chút không?)* |
| Kobayashi | もちろんです。<ruby>週末<rt>しゅうまつ</rt></ruby>までに<ruby>返事<rt>へんじ</rt></ruby>をいただけますか?<br>*(Tất nhiên. Tuần này đến cuối tuần chị cho tôi câu trả lời được không?)* |

---

## Tình huống 4 — Phòng休憩 · 11:30, Sato nói chuyện với Ngọc

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>施設長<rt>しせつちょう</rt></ruby>から<ruby>話<rt>はなし</rt></ruby>がありましたよね?<br>*(Chị Nguyễn, giám đốc đã nói chuyện rồi đúng không?)* |
| Ngọc | はい。<ruby>佐藤<rt>さとう</rt></ruby>さん、ご<ruby>存知<rt>ぞんじ</rt></ruby>でしたか?<br>*(Vâng. Chị Sato đã biết rồi ạ?)* |
| Sato | ええ、わたしが<ruby>推薦<rt>すいせん</rt></ruby>したんです。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby>、グエンさんを<ruby>信用<rt>しんよう</rt></ruby>していなかった。でも、<ruby>一年<rt>いちねん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えが<ruby>変<rt>か</rt></ruby>わりました。<br>*(Vâng, tôi đã đề nghị đó. Ban đầu thật ra tôi chưa tin chị Nguyễn. Nhưng sau một năm tôi thay đổi suy nghĩ rồi.)* |
| Ngọc | そうだったんですか。ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さんにたくさん<ruby>助<rt>たす</rt></ruby>けていただきました。<br>*(Thế ạ. Cảm ơn chị. Tôi đã được chị Sato giúp đỡ rất nhiều.)* |
| Sato | グエンさんは<ruby>自分<rt>じぶん</rt></ruby>で<ruby>努力<rt>どりょく</rt></ruby>したんです。あとは<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って。<ruby>外国人<rt>がいこくじん</rt></ruby>が<ruby>介護主任<rt>かいごしゅにん</rt></ruby>になるのは、この<ruby>施設<rt>しせつ</rt></ruby>で<ruby>初<rt>はじ</rt></ruby>めてです。それはすごいことですよ。<br>*(Chị Nguyễn tự mình nỗ lực đó. Còn lại thì hãy tự tin. Người nước ngoài làm 介護主任 là lần đầu tiên ở cơ sở này. Đó là điều đáng tự hào đó.)* |

---

## Tình huống 5 — Nhà trọ · 19:00, gọi về hỏi mẹ

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Mẹ ơi, con có chuyện muốn hỏi ý kiến mẹ. |
| Mẹ | (tiếng Việt) Chuyện gì vậy con, nghe giọng nghiêm nghiêm quá. |
| Ngọc | (tiếng Việt) Giám đốc đề nghị con làm 介護主任 — chủ nhiệm điều dưỡng. Thay chị Sato. |
| Mẹ | (tiếng Việt) Ủa, thăng chức luôn à? Con tính sao? |
| Ngọc | (tiếng Việt) Con hơi lo. Trách nhiệm lớn hơn nhiều. Mà con ở một mình, không có ai... |
| Mẹ | (tiếng Việt) Con lo cho mẹ thì đừng. Mẹ lo được. Con mà từ chối cơ hội này, mẹ tiếc lắm đó. Con làm được, mẹ tin. |

---

## Tình huống 6 — Viện dưỡng lão · 9:00 hôm sau, Ngọc hỏi Yamamoto

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しよろしいですか?<ruby>介護主任<rt>かいごしゅにん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>について<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Chị Yamamoto, có chút thời gian không? Tôi hỏi về công việc của 介護主任 được không?)* |
| Yamamoto | もちろん。どうぞ。<br>*(Tất nhiên. Cứ hỏi đi.)* |
| Ngọc | <ruby>主任<rt>しゅにん</rt></ruby>になると、<ruby>現場<rt>げんば</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れる<ruby>時間<rt>じかん</rt></ruby>は<ruby>減<rt>へ</rt></ruby>りますか?<ruby>利用者<rt>りようしゃ</rt></ruby>さんと<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>関<rt>かか</rt></ruby>わる<ruby>時間<rt>じかん</rt></ruby>が<ruby>減<rt>へ</rt></ruby>るのが、<ruby>一番<rt>いちばん</rt></ruby><ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Khi làm chủ nhiệm, thời gian vào hiện trường có giảm không? Tôi lo nhất là thời gian tiếp xúc trực tiếp với các cụ giảm đi.)* |
| Yamamoto | そうですね、<ruby>書類<rt>しょるい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>増<rt>ふ</rt></ruby>えます。でも、<ruby>現場<rt>げんば</rt></ruby>に<ruby>出<rt>で</rt></ruby>ることもできます。<ruby>主任<rt>しゅにん</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby><ruby>次第<rt>しだい</rt></ruby>。<br>*(Đúng, công việc giấy tờ sẽ tăng. Nhưng vẫn có thể ra hiện trường. Tùy vào cách làm của chủ nhiệm.)* |
| Ngọc | そうですか。ありがとうございます。<ruby>前向<rt>まえむ</rt></ruby>きに<ruby>考<rt>かんが</rt></ruby>えてみます。<br>*(Vậy ạ. Cảm ơn chị. Tôi sẽ thử suy nghĩ theo hướng tích cực.)* |

---

## Tình huống 7 — Phòng 施設長 · <ruby>金曜日<rt>きんようび</rt></ruby> 15:00, Ngọc trả lời

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>施設長<rt>しせつちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>をいただけますか?<ruby>先日<rt>せんじつ</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>について、お<ruby>返事<rt>へんじ</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Giám đốc, ông có chút thời gian không? Tôi đến để trả lời về việc hôm trước.)* |
| Kobayashi | どうぞ、<ruby>座<rt>すわ</rt></ruby>ってください。<ruby>返事<rt>へんじ</rt></ruby>は?<br>*(Mời ngồi. Câu trả lời thế nào?)* |
| Ngọc | <ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けします。<ruby>不安<rt>ふあん</rt></ruby>はありますが、<ruby>精<rt>せい</rt></ruby>いっぱい<ruby>頑張<rt>がんば</rt></ruby>ります。ご<ruby>指導<rt>しどう</rt></ruby>をよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi xin trân trọng nhận. Dù còn lo lắng nhưng tôi sẽ cố gắng hết sức. Mong được chỉ bảo ạ.)* |
| Kobayashi | よかった。4<ruby>月<rt>がつ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>に<ruby>就任<rt>しゅうにん</rt></ruby>です。3<ruby>月<rt>がつ</rt></ruby>は<ruby>佐藤<rt>さとう</rt></ruby>さんから<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎをしっかり<ruby>受<rt>う</rt></ruby>けてください。<br>*(Tốt quá. Từ tháng 4 chính thức nhậm chức. Tháng 3 hãy nhận bàn giao cẩn thận từ chị Sato.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Vâng, tôi rõ rồi. Cảm ơn ông.)* |

---

## Tình huống 8 — Phòng nghỉ · 16:00, Sato bắt đầu bàn giao

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ<ruby>資料<rt>しりょう</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しました。まず<ruby>職員<rt>しょくいん</rt></ruby><ruby>名簿<rt>めいぼ</rt></ruby>と<ruby>シフト表<rt>シフトひょう</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Chị Nguyễn, tôi đã chuẩn bị tài liệu bàn giao. Trước tiên hãy xem qua danh sách nhân viên và bảng ca làm việc.)* |
| Ngọc | はい、ありがとうございます。これが<ruby>全員分<rt>ぜんいんぶん</rt></ruby>ですか?<ruby>担当<rt>たんとう</rt></ruby>ユニットごとに<ruby>分<rt>わ</rt></ruby>かれていますね。<br>*(Vâng, cảm ơn chị. Đây là của toàn bộ nhân viên ạ? Được phân theo từng nhóm phụ trách nhỉ.)* |
| Sato | そうです。<ruby>主任<rt>しゅにん</rt></ruby>は<ruby>全<rt>すべ</rt></ruby>てのユニットの<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>把握<rt>はあく</rt></ruby>する<ruby>必要<rt>ひつよう</rt></ruby>があります。<ruby>月<rt>つき</rt></ruby>1<ruby>回<rt>かい</rt></ruby>のユニット<ruby>会議<rt>かいぎ</rt></ruby>の<ruby>進行<rt>しんこう</rt></ruby>もグエンさんが<ruby>担当<rt>たんとう</rt></ruby>になります。<br>*(Đúng. Chủ nhiệm cần nắm được tình hình của tất cả các nhóm. Việc điều hành cuộc họp nhóm hàng tháng cũng sẽ do chị Nguyễn phụ trách.)* |
| Ngọc | <ruby>議事録<rt>ぎじろく</rt></ruby>の<ruby>書き方<rt>かきかた</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えていただけますか?<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて、まだ<ruby>慣<rt>な</rt></ruby>れていません。<br>*(Chị cũng có thể dạy tôi cách viết biên bản không? Nhiều kanji quá, tôi chưa quen.)* |
| Sato | もちろん。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<ruby>最初<rt>さいしょ</rt></ruby>はみんなそうですよ。<br>*(Tất nhiên. Chúng ta cùng luyện tập nhé. Ban đầu ai cũng vậy thôi.)* |

---

## Tình huống 9 — Hành lang · 17:00, đồng nghiệp Nhật phản ứng khác nhau

| Vai | Lời thoại |
|---|---|
| Nhân viên A (Nhật) | グエンさん、<ruby>主任<rt>しゅにん</rt></ruby>になるって<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>早<rt>はや</rt></ruby>いですね。<br>*(Chị Nguyễn, nghe nói thành chủ nhiệm là thật ạ? Nhanh thật nhỉ.)* |
| Ngọc | はい。まだ<ruby>不安<rt>ふあん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いですが、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Còn nhiều lo lắng lắm, mong được mọi người chỉ bảo.)* |
| Nhân viên A | まあ、がんばってください。<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>主任<rt>しゅにん</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてですから、いろいろ<ruby>大変<rt>たいへん</rt></ruby>かもしれないけど。<br>*(À, cố lên nhé. Vì chủ nhiệm là người nước ngoài là lần đầu tiên, có thể sẽ có nhiều khó khăn đó.)* |
| Nhân viên B (Nhật) | (thân thiện hơn) グエンさん、おめでとうございます。グエンさんなら<ruby>絶対<rt>ぜったい</rt></ruby>できますよ。<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Chị Nguyễn, chúc mừng. Chị Nguyễn thì chắc chắn làm được. Tôi ủng hộ chị.)* |
| Ngọc | ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんの<ruby>力<rt>ちから</rt></ruby>を<ruby>借<rt>か</rt></ruby>りながら<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn. Tôi sẽ cố gắng nhờ vào sức mạnh của mọi người.)* |

---

## Tình huống 10 — Nhà · 20:00, báo tin cho Linh và Tuấn

| Vai | Lời thoại |
|---|---|
| Ngọc | リン、トアン、<ruby>聞<rt>き</rt></ruby>いてください。4<ruby>月<rt>がつ</rt></ruby>から<ruby>介護主任<rt>かいごしゅにん</rt></ruby>になることになりました。<br>*(Linh, Tuấn, nghe đây. Từ tháng 4 tôi sẽ trở thành 介護主任.)* |
| Linh | えっ、<ruby>主任<rt>しゅにん</rt></ruby>ですか?おめでとうございます！すごい！<br>*(Ồ, chủ nhiệm ạ? Chúc mừng chị! Giỏi quá!)* |
| Tuấn | グエンさん、ほんとうにすごいですね。<ruby>外国人<rt>がいこくじん</rt></ruby>で<ruby>介護主任<rt>かいごしゅにん</rt></ruby>は<ruby>珍<rt>めずら</rt></ruby>しいですよね。<br>*(Chị Nguyễn, thật sự giỏi quá. Người nước ngoài làm 介護主任 thì hiếm đúng không ạ?)* |
| Ngọc | そう、だから<ruby>責任<rt>せきにん</rt></ruby>が<ruby>重<rt>おも</rt></ruby>いです。でも、リンさんやトアンさんにも<ruby>将来<rt>しょうらい</rt></ruby>こういう<ruby>道<rt>みち</rt></ruby>があるって<ruby>伝<rt>つた</rt></ruby>えたいです。<br>*(Đúng, nên trách nhiệm rất nặng. Nhưng tôi muốn truyền đạt cho Linh và Tuấn rằng các bạn cũng sẽ có con đường này trong tương lai.)* |
| Linh | ありがとうございます。チュニムを<ruby>見<rt>み</rt></ruby>て、<ruby>私<rt>わたし</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Cảm ơn chị. Nhìn chị làm chủ nhiệm, em cũng muốn cố gắng hơn.)* |

---

## Tình huống 11 — Viện dưỡng lão · 9:00, làm việc cùng Nakamura 看護師

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、4<ruby>月<rt>がつ</rt></ruby>から<ruby>主任<rt>しゅにん</rt></ruby>になるんですね。<ruby>看護<rt>かんご</rt></ruby>との<ruby>連携<rt>れんけい</rt></ruby>は<ruby>大事<rt>たいじ</rt></ruby>ですから、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Nguyễn, nghe nói từ tháng 4 trở thành chủ nhiệm nhỉ. Phối hợp với bộ phận y tế rất quan trọng, mong được cộng tác.)* |
| Ngọc | こちらこそ、<ruby>中村<rt>なかむら</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>医療<rt>いりょう</rt></ruby>と<ruby>介護<rt>かいご</rt></ruby>の<ruby>連携<rt>れんけい</rt></ruby>については、まだ<ruby>学<rt>まな</rt></ruby>ぶことがたくさんあります。<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Tôi cũng vậy, chị Nakamura, mong được cộng tác. Về phối hợp giữa y tế và điều dưỡng, tôi còn nhiều điều cần học. Mong chị chỉ bảo.)* |
| Nakamura | もちろん。たとえば<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>状態<rt>じょうたい</rt></ruby>が<ruby>変化<rt>へんか</rt></ruby>したとき、すぐ<ruby>報告<rt>ほうこく</rt></ruby>してもらえると<ruby>助<rt>たす</rt></ruby>かります。<ruby>連絡<rt>れんらく</rt></ruby>ツールはメモ<ruby>帳<rt>ちょう</rt></ruby>よりICTの<ruby>方<rt>ほう</rt></ruby>がいいですね。<br>*(Tất nhiên. Ví dụ khi tình trạng của các cụ thay đổi, báo ngay cho tôi là giúp được nhiều. Về công cụ liên lạc, dùng ICT tốt hơn sổ tay.)* |
| Ngọc | はい、<ruby>現場<rt>げんば</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>のICT<ruby>化<rt>か</rt></ruby>も<ruby>課題<rt>かだい</rt></ruby>として<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Vâng, việc số hóa ICT hồ sơ hiện trường cũng sẽ là nhiệm vụ tôi sẽ cố gắng.)* |

---

## Tình huống 12 — Nhà · 21:00, Ngọc gọi điện về Việt Nam (tiếng Việt)

> Scene tiếng Việt — tuyến gia đình, mẹ Ngọc ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Mẹ Ngọc | (tiếng Việt, qua điện thoại) Ngọc đó hả con? Lâu quá mới gọi. |
| Ngọc | (tiếng Việt) Dạ mẹ, con bận quá. Mẹ khoẻ không? |
| Mẹ Ngọc | (tiếng Việt) Mẹ khoẻ. Bé Mai thế nào rồi? |
| Ngọc | (tiếng Việt) Mai ổn lắm mẹ. Đã có bạn, nói được tiếng Nhật rồi. À mẹ, con có tin vui — công ty thăng chức con làm chủ nhiệm điều dưỡng. |
| Mẹ Ngọc | (tiếng Việt) Thật không? Trời ơi con ơi, mẹ tự hào quá. Ước gì mẹ qua được đó ăn mừng với con. |
| Ngọc | (tiếng Việt, giọng có chút buồn) Dạ, con cũng muốn vậy lắm mẹ. Nhưng thôi, mẹ giữ sức khoẻ. Con sẽ cố gắng để mẹ tự hào thêm. |

---

## Đọng lại chương 10

Kobayashi chính thức đề bạt Ngọc lên 介護主任 sau khi Sato chuyển sang 相談員. Yếu tố then chốt: chính Sato — người từng hoài nghi — đã đứng ra đề cử. Ngọc nhận lời sau khi hỏi ý kiến mẹ ở Cần Thơ và tìm hiểu Yamamoto về thực tế công việc. Phản ứng đồng nghiệp chia đôi: một số hoài nghi nhẹ ("外国人の主任は初めて"), một số ủng hộ thật lòng. Tuyến cảm xúc: mẹ ở Việt Nam không qua được mừng — nỗi cô đơn đặc trưng của người lao động di cư.

> Từ vựng & mẫu câu: 面談・介護主任・異動・引き継ぎ・就任・推薦・把握・職員評価・議事録・ICT化・謹んでお受けします・前向きに考える・力を借りながら', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000011, 800000031, NULL, 'markdown_book', 'T11. Thực tập sinh đỗ thi kỹ năng (実習生の技能試験合格)', '# Sách điều dưỡng viên quốc gia · T11. Thực tập sinh đỗ thi kỹ năng (実習生の技能試験合格)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi, ユニットリーダー + 教育担当) — khoá TTS Linh và Tuấn thi 介護技能評価試験; Ngọc là người trực tiếp ôn luyện cho họ. Kết quả đỗ = thành quả vai 教育担当.

---

## Bối cảnh

Tháng 2. Kỳ thi 介護技能評価試験 của khoá TTS thứ 2 (Linh, Tuấn, Maya) diễn ra. Đây là kỳ thi bắt buộc để TTS tiếp tục ở lại Nhật. Ngọc đã dạy thêm buổi tối trong suốt 2 tháng trước đó. Ngày công bố kết quả trở thành ngày vỡ oà của cả nhóm.

---

## Tình huống 1 — Phòng họp · 18:30 (2 tháng trước), buổi ôn đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。まず<ruby>試験<rt>しけん</rt></ruby>の<ruby>構成<rt>こうせい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Mọi người, từ hôm nay chúng ta bắt đầu chuẩn bị cho 介護技能評価試験. Trước tiên hãy xem lại cấu trúc của kỳ thi.)* |
| Linh | グエンさん、<ruby>試験<rt>しけん</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Chị Nguyễn, kỳ thi có khó không ạ?)* |
| Ngọc | <ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と<ruby>筆記<rt>ひっき</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の2<ruby>部分<rt>ぶぶん</rt></ruby>あります。<ruby>技術<rt>ぎじゅつ</rt></ruby>は<ruby>移乗<rt>いじょう</rt></ruby>・<ruby>排泄<rt>はいせつ</rt></ruby><ruby>介助<rt>かいじょ</rt></ruby>・<ruby>口腔<rt>こうくう</rt></ruby>ケアなどが<ruby>出<rt>で</rt></ruby>ます。<ruby>日々<rt>ひび</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じです。<br>*(Có 2 phần: thi kỹ năng thực hành và thi viết. Phần kỹ năng gồm di chuyển, hỗ trợ vệ sinh, chăm sóc miệng... Giống công việc hàng ngày thôi.)* |
| Tuấn | <ruby>筆記<rt>ひっき</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>心配<rt>しんぱい</rt></ruby>です。<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて。<br>*(Tôi lo phần tiếng Nhật của thi viết. Nhiều kanji quá.)* |
| Ngọc | わたしもそうでした。でも、<ruby>毎日<rt>まいにち</rt></ruby>10<ruby>個<rt>こ</rt></ruby>ずつ<ruby>覚<rt>おぼ</rt></ruby>えれば、2か<ruby>月<rt>つき</rt></ruby>で<ruby>十分<rt>じゅうぶん</rt></ruby>です。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Tôi cũng vậy trước đây. Nhưng nếu học 10 chữ mỗi ngày, 2 tháng là đủ rồi. Cùng nhau cố lên nào.)* |

---

## Tình huống 2 — Phòng sinh hoạt · 19:00 (1 tháng trước), luyện kỹ năng 移乗

| Vai | Lời thoại |
|---|---|
| Ngọc | トアンさん、<ruby>移乗<rt>いじょう</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby>やってみてください。<ruby>声<rt>こえ</rt></ruby>かけも<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Tuấn, hãy thực hành lại quy trình di chuyển một lần nữa. Đừng quên lên tiếng trước nhé.)* |
| Tuấn | はい。田<ruby>中<rt>なか</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>から<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りますね。<ruby>足<rt>あし</rt></ruby>を<ruby>床<rt>ゆか</rt></ruby>につけていただけますか?<br>*(Vâng. Ông Tanaka, bây giờ mình chuyển sang xe lăn nhé. Ông có thể đặt chân xuống sàn không ạ?)* |
| Ngọc | いいですよ。でも、<ruby>手<rt>て</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>をもう<ruby>少<rt>すこ</rt></ruby>し<ruby>腰<rt>こし</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づけて。それから「いち、に、さん」で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちますよと<ruby>伝<rt>つた</rt></ruby>えて。<br>*(Tốt đó. Nhưng vị trí tay đặt gần hơn vào eo một chút. Rồi thông báo "một, hai, ba cùng đứng dậy nhé" nhé.)* |
| Tuấn | わかりました。いち、に、さん、<ruby>立<rt>た</rt></ruby>ちますよ。<br>*(Tôi hiểu rồi. Một, hai, ba, mình đứng lên nhé.)* |
| Ngọc | よくなりました。<ruby>試験<rt>しけん</rt></ruby>では<ruby>評価者<rt>ひょうかしゃ</rt></ruby>が<ruby>声<rt>こえ</rt></ruby>かけを<ruby>必<rt>かなら</rt></ruby>ず<ruby>見<rt>み</rt></ruby>ています。<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けて。<br>*(Đã tốt hơn rồi. Trong thi, người chấm điểm luôn theo dõi việc lên tiếng. Cứ tiếp tục cẩn thận nhé.)* |

---

## Tình huống 3 — Phòng họp · 19:30 (1 tháng trước), luyện kỹ năng 口腔ケア với Linh

| Vai | Lời thoại |
|---|---|
| Ngọc | リンさん、<ruby>口腔<rt>こうくう</rt></ruby>ケアの<ruby>手順<rt>てじゅん</rt></ruby>は?<br>*(Linh, quy trình chăm sóc miệng là gì?)* |
| Linh | まず<ruby>手洗<rt>てあら</rt></ruby>いをして、<ruby>手袋<rt>てぶくろ</rt></ruby>をつけます。それから「<ruby>口<rt>くち</rt></ruby>をゆすいでください」と<ruby>声<rt>こえ</rt></ruby>をかけて...<br>*(Trước tiên rửa tay, đeo găng tay. Sau đó lên tiếng "xin súc miệng nhé"...)* |
| Ngọc | いいですよ。でも<ruby>義歯<rt>ぎし</rt></ruby>がある<ruby>方<rt>かた</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>はどうしますか?<br>*(Tốt đó. Nhưng đối với người có răng giả thì làm thế nào?)* |
| Linh | あ...わかりません。<br>*(À... Tôi không biết ạ.)* |
| Ngọc | <ruby>義歯<rt>ぎし</rt></ruby>は<ruby>外<rt>はず</rt></ruby>して<ruby>専用<rt>せんよう</rt></ruby>ブラシで<ruby>洗<rt>あら</rt></ruby>います。そして<ruby>保管<rt>ほかん</rt></ruby>する<ruby>場合<rt>ばあい</rt></ruby>は<ruby>水<rt>みず</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>い</rt></ruby>れます。<ruby>試験<rt>しけん</rt></ruby>によく<ruby>出<rt>で</rt></ruby>るので<ruby>覚<rt>おぼ</rt></ruby>えておいてください。<br>*(Răng giả tháo ra rồi rửa bằng bàn chải chuyên dụng. Khi cất thì đặt vào trong nước. Hay ra trong thi nên nhớ kỹ nhé.)* |

---

## Tình huống 4 — Phòng nghỉ nhân viên · 22:00 (3 tuần trước thi), Tuấn xuống tinh thần

| Vai | Lời thoại |
|---|---|
| Tuấn | グエンさん、<ruby>模擬試験<rt>もぎしけん</rt></ruby>で<ruby>点数<rt>てんすう</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>かったです。<ruby>合格<rt>ごうかく</rt></ruby>できるか<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Chị Nguyễn, điểm thi thử của tôi thấp. Tôi lo không biết có đỗ được không.)* |
| Ngọc | どの<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>かったですか?<br>*(Phần nào điểm thấp?)* |
| Tuấn | <ruby>筆記<rt>ひっき</rt></ruby>の<ruby>認知症<rt>にんちしょう</rt></ruby>とBPSDのところです。<ruby>言葉<rt>ことば</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくて。<br>*(Phần viết về 認知症 và BPSD. Từ ngữ khó quá.)* |
| Ngọc | BPSDは「<ruby>行動<rt>こうどう</rt></ruby>・<ruby>心理症状<rt>しんりしょうじょう</rt></ruby>」のことです。<ruby>徘徊<rt>はいかい</rt></ruby>、<ruby>暴言<rt>ぼうげん</rt></ruby>、<ruby>幻覚<rt>げんかく</rt></ruby>などが<ruby>含<rt>ふく</rt></ruby>まれます。<ruby>対応<rt>たいおう</rt></ruby>は「<ruby>否定<rt>ひてい</rt></ruby>しない、<ruby>共感<rt>きょうかん</rt></ruby>する」が<ruby>基本<rt>きほん</rt></ruby>です。<br>*(BPSD là "triệu chứng hành vi và tâm lý". Gồm lang thang, nói bạo lực, ảo giác, v.v. Nguyên tắc ứng phó cơ bản là "không phủ nhận, đồng cảm".)* |
| Tuấn | なるほど。グエンさん、<ruby>諦<rt>あきら</rt></ruby>めないで<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Ra vậy. Chị Nguyễn, tôi sẽ không bỏ cuộc và cố gắng.)* |

---

## Tình huống 5 — Phòng họp · 19:00 (1 tuần trước thi), kiểm tra tổng hợp

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>最後<rt>さいご</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をしましょう。<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>で<ruby>最<rt>もっと</rt></ruby>も<ruby>大事<rt>たいじ</rt></ruby>なことは<ruby>何<rt>なん</rt></ruby>ですか?リンさん。<br>*(Vậy, hãy kiểm tra lần cuối. Điều quan trọng nhất trong thi kỹ năng là gì? Linh.)* |
| Linh | <ruby>声<rt>こえ</rt></ruby>かけ、<ruby>安全<rt>あんぜん</rt></ruby>、そして<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>尊厳<rt>そんげん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ることです。<br>*(Lên tiếng trước, an toàn, và bảo vệ phẩm giá của người sử dụng dịch vụ ạ.)* |
| Ngọc | (gật đầu) <ruby>完璧<rt>かんぺき</rt></ruby>です。トアンさん、<ruby>筆記<rt>ひっき</rt></ruby>で<ruby>介護<rt>かいご</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>は?<br>*(Hoàn hảo. Tuấn, nguyên tắc cơ bản của điều dưỡng trong phần thi viết là gì?)* |
| Tuấn | <ruby>自立<rt>じりつ</rt></ruby><ruby>支援<rt>しえん</rt></ruby>、<ruby>個別<rt>こべつ</rt></ruby>ケア、<ruby>チームケア<rt>チームケア</rt></ruby>、<ruby>尊厳<rt>そんげん</rt></ruby>の<ruby>保持<rt>ほじ</rt></ruby>です。<br>*(Hỗ trợ tự lập, chăm sóc cá nhân, chăm sóc nhóm, duy trì phẩm giá ạ.)* |
| Ngọc | よし、<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>ってください。<ruby>皆<rt>みな</rt></ruby>さんならきっと<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Tốt, hãy đi với sự tự tin. Mọi người chắc chắn ổn thôi.)* |

---

## Tình huống 6 — Ngày thi · sáng sớm, Ngọc tiễn ở cổng

| Vai | Lời thoại |
|---|---|
| Linh | グエンさん、<ruby>見送<rt>みおく</rt></ruby>りに<ruby>来<rt>き</rt></ruby>てくれたんですか?<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Chị Nguyễn ra tiễn ạ? Em vui quá.)* |
| Ngọc | もちろん。<ruby>今日<rt>きょう</rt></ruby>まで<ruby>一生懸命<rt>いっしょうけんめい</rt></ruby>やってきましたから。リンさん、トアンさん、マヤさん、<ruby>力<rt>ちから</rt></ruby>を<ruby>出<rt>だ</rt></ruby>し<ruby>切<rt>き</rt></ruby>ってください。<br>*(Tất nhiên rồi. Vì mọi người đã cố gắng hết sức đến hôm nay mà. Linh, Tuấn, Maya, hãy dốc toàn bộ sức ra nhé.)* |
| Maya | グエンさん、ありがとうございます。<ruby>絶対<rt>ぜったい</rt></ruby>がんばります！<br>*(Chị Nguyễn, cảm ơn chị. Em nhất định sẽ cố gắng!)* |
| Tuấn | グエンさんの<ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えます。<br>*(Em sẽ đáp lại kỳ vọng của chị Nguyễn.)* |
| Ngọc | <ruby>行<rt>い</rt></ruby>ってらっしゃい。<ruby>待<rt>ま</rt></ruby>っていますよ。<br>*(Đi đường cẩn thận. Chị chờ tin nhé.)* |

---

## Tình huống 7 — Viện dưỡng lão · chiều thi, Ngọc chờ kết quả

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>きませんね。<ruby>試験<rt>しけん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>気<rt>き</rt></ruby>になりますか?<br>*(Chị Nguyễn, hơi bồn chồn nhỉ. Đang lo kết quả thi ạ?)* |
| Ngọc | はい、やっぱり<ruby>心配<rt>しんぱい</rt></ruby>で。<ruby>2<rt>に</rt></ruby>か<ruby>月間<rt>げつかん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>してきたので。<br>*(Vâng, dù sao cũng lo lắng. Vì chúng tôi đã cùng chuẩn bị suốt 2 tháng mà.)* |
| Yamamoto | グエンさん、<ruby>教育担当<rt>きょういくたんとう</rt></ruby>として<ruby>精<rt>せい</rt></ruby>いっぱいやったじゃないですか。<ruby>結果<rt>けっか</rt></ruby>はどうであれ、それは<ruby>変<rt>か</rt></ruby>わらない。<br>*(Chị Nguyễn đã làm hết sức với tư cách là người phụ trách đào tạo rồi mà. Dù kết quả thế nào, điều đó không thay đổi.)* |
| Ngọc | ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さんにそう<ruby>言<rt>い</rt></ruby>ってもらえると、<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になります。<br>*(Cảm ơn chị. Được chị Yamamoto nói vậy, tôi thấy nhẹ nhàng hơn một chút.)* |

---

## Tình huống 8 — Hành lang · 18:00, tin vui đến

| Vai | Lời thoại |
|---|---|
| Tuấn | (gọi điện thoại, vui sướng) グエンさん！<ruby>合格<rt>ごうかく</rt></ruby>しました！3<ruby>人<rt>にん</rt></ruby>とも！<br>*(Chị Nguyễn! Chúng em đỗ rồi! Cả 3 người!)* |
| Ngọc | (thở phào) えっ、<ruby>本当<rt>ほんとう</rt></ruby>ですか?! よかった、よかった...!<br>*(Ồ, thật không?! May quá, may quá...!)* |
| Tuấn | グエンさんのおかげです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Là nhờ chị Nguyễn đó ạ. Thật sự cảm ơn chị rất nhiều.)* |
| Ngọc | (<ruby>涙<rt>なみだ</rt></ruby>をこらえながら) いいえ、<ruby>皆<rt>みな</rt></ruby>さんが<ruby>頑張<rt>がんば</rt></ruby>ったんです。<ruby>本当<rt>ほんとう</rt></ruby>によかった。おめでとう！<br>*(Cố nén nước mắt) Không, mọi người đã tự cố gắng mà. May quá thật sự. Chúc mừng!)* |

---

## Tình huống 9 — Phòng nghỉ nhân viên · tối đó, Ngọc báo tin với Yamamoto và Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>佐藤<rt>さとう</rt></ruby>さん、ご<ruby>報告<rt>ほうこく</rt></ruby>があります。TTS<ruby>研修生<rt>けんしゅうせい</rt></ruby>3<ruby>名<rt>めい</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>が<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Chị Yamamoto, chị Sato, tôi có báo cáo. Cả 3 TTS nghiên cứu sinh đều đỗ 介護技能評価試験.)* |
| Yamamoto | えっ、3<ruby>人<rt>にん</rt></ruby>とも！すごいですね！グエンさん、おめでとうございます。よく<ruby>指導<rt>しどう</rt></ruby>してくれました。<br>*(Ồ, cả 3 người! Giỏi quá! Chị Nguyễn, chúc mừng. Chị đã hướng dẫn tốt lắm.)* |
| Sato | グエンさんの<ruby>教育<rt>きょういく</rt></ruby>のたまものですね。TTS<ruby>全員<rt>ぜんいん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby>としても<ruby>誇<rt>ほこ</rt></ruby>らしい。<br>*(Là thành quả từ việc đào tạo của chị Nguyễn đó. Cả TTS đều đỗ là niềm tự hào của cả cơ sở nữa.)* |
| Ngọc | ありがとうございます。でも<ruby>一番<rt>いちばん</rt></ruby>は<ruby>彼<rt>かれ</rt></ruby>ら<ruby>自身<rt>じしん</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>です。<br>*(Cảm ơn. Nhưng quan trọng nhất vẫn là sự nỗ lực của chính bản thân họ.)* |

---

## Tình huống 10 — Phòng họp · hôm sau, Kobayashi chúc mừng

| Vai | Lời thoại |
|---|---|
| Kobayashi | <ruby>全員合格<rt>ぜんいんごうかく</rt></ruby>は<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>成果<rt>せいか</rt></ruby>です。グエンさんの<ruby>教育担当<rt>きょういくたんとう</rt></ruby>としての<ruby>仕事<rt>しごと</rt></ruby>が、この<ruby>結果<rt>けっか</rt></ruby>につながりました。<br>*(Tất cả đều đỗ là thành tích tuyệt vời. Công việc của chị Nguyễn với tư cách người phụ trách đào tạo đã dẫn đến kết quả này.)* |
| Ngọc | ありがとうございます。<ruby>彼<rt>かれ</rt></ruby>らが<ruby>頑張<rt>がんば</rt></ruby>ってくれたおかげです。これからも<ruby>成長<rt>せいちょう</rt></ruby>を<ruby>見守<rt>みまも</rt></ruby>っていきます。<br>*(Cảm ơn ông. Là nhờ họ đã cố gắng. Tôi sẽ tiếp tục dõi theo sự trưởng thành của họ.)* |
| Kobayashi | 4<ruby>月<rt>がつ</rt></ruby>から<ruby>主任<rt>しゅにん</rt></ruby>としての<ruby>仕事<rt>しごと</rt></ruby>にも、この<ruby>教育<rt>きょういく</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>を<ruby>活<rt>い</rt></ruby>かしてください。<br>*(Từ tháng 4 với tư cách chủ nhiệm, hãy tận dụng kinh nghiệm đào tạo này nhé.)* |

---

## Tình huống 11 — Phòng ký túc · tối, Ngọc nói với cả nhóm TTS

| Vai | Lời thoại |
|---|---|
| Ngọc | リンさん、トアンさん、マヤさん、<ruby>本当<rt>ほんとう</rt></ruby>におめでとう。でも、これはスタートです。<ruby>介護技能評価試験<rt>かいごぎのうひょうかしけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しても、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けて<ruby>学<rt>まな</rt></ruby>ぶことが<ruby>大事<rt>たいじ</rt></ruby>です。<br>*(Linh, Tuấn, Maya, thật sự chúc mừng. Nhưng đây mới chỉ là điểm khởi đầu. Dù đã đỗ 介護技能評価試験, điều quan trọng là tiếp tục học mỗi ngày trong công việc.)* |
| Linh | はい。グエンさんみたいに、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>も<ruby>目指<rt>めざ</rt></ruby>したいです。<br>*(Vâng. Em muốn hướng tới 介護福祉士 giống như chị Nguyễn.)* |
| Maya | わたしも。<ruby>日本語<rt>にほんご</rt></ruby>もっとがんばります。<br>*(Em cũng vậy. Em sẽ cố học tiếng Nhật nhiều hơn.)* |
| Tuấn | グエンさん、これからも<ruby>指導<rt>しどう</rt></ruby>をよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Nguyễn, sau này cũng mong được chị chỉ bảo tiếp ạ.)* |
| Ngọc | もちろん。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>していきましょう。<br>*(Tất nhiên. Cùng nhau trưởng thành nào.)* |

---

## Tình huống 12 — Nhà trọ · đêm, Ngọc gọi về khoe với mẹ (tiếng Việt)

> Scene tiếng Việt — mạch nhớ nhà, chia sẻ niềm vui.

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Con trông có vẻ vui hơn hôm nay. Chuyện gì tốt vậy? |
| Ngọc | (tiếng Việt) Linh, Tuấn, Maya — cả 3 đứa đỗ thi kỹ năng rồi mẹ ơi. Con mừng hơn cả thi đỗ của mình ngày xưa. |
| Mẹ | (tiếng Việt) Đó là tại con dạy tốt chứ. Con làm giáo viên giỏi đó biết không. |
| Ngọc | (tiếng Việt) Con thấy mình hiểu Yamamoto-san hơn rồi — hồi xưa chị ấy cũng vậy với con. Giờ con trả lại cho lứa sau. |
| Mẹ | (tiếng Việt) Vòng tròn đẹp lắm. Mẹ tự hào con lắm. |
| Ngọc | (tiếng Việt, cười) Cảm ơn mẹ. Con nhớ mẹ. Hôm nay vui quá. |

---

## Đọng lại chương 11

Thành quả vai 教育担当 được chứng thực: 3/3 TTS đỗ 介護技能評価試験. Điểm cảm xúc cao nhất không phải lúc nhận tin mà lúc Ngọc nói "いいえ、皆さんが頑張ったんです" — người dạy giỏi là người nhường công cho học trò. Động lực Linh muốn thi 介護福祉士 = Ngọc ngày xưa gặp Yamamoto = vòng tròn truyền nghề khép lại. Kobayashi nối trực tiếp kinh nghiệm đào tạo vào vai 介護主任 tháng 4.

> Từ vựng & mẫu câu: 介護技能評価試験・技術試験・筆記試験・移乗・口腔ケア・義歯・BPSD・認知症・自立支援・個別ケア・尊厳の保持・教育担当・全員合格・成果・指導のたまもの', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (831000012, 800000031, NULL, 'markdown_book', 'T12. Nhậm chức chủ nhiệm điều dưỡng (介護主任就任)', '# Sách điều dưỡng viên quốc gia · T12. Nhậm chức chủ nhiệm điều dưỡng (介護主任就任)

> **Mục tiêu nhân vật:** Ngọc (29 tuổi) — chính thức nhậm chức 介護主任; đứng trước câu hỏi tương lai — ケアマネ hay 認定介護福祉士? Khép sách 31, mở hướng sách 32.

---

## Bối cảnh

Tháng 3 — cuối tháng, lễ nhậm chức 介護主任 diễn ra tại phòng họp toàn thể. Sato tổ chức 送別会 nhỏ rồi chính thức chuyển sang 相談員. Ngọc đứng trước cả cơ sở lần đầu với tư cách chủ nhiệm. Cuối tháng, trong đêm yên tĩnh, Ngọc suy nghĩ về đích tiếp theo.

---

## Tình huống 1 — Phòng họp · 9:00, 送別会 của Sato

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、<ruby>介護主任<rt>かいごしゅにん</rt></ruby><ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>送別会<rt>そうべつかい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>佐藤<rt>さとう</rt></ruby>さんは10<ruby>年間<rt>ねんかん</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>として、この<ruby>施設<rt>しせつ</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えてくださいました。<br>*(Vậy, chúng ta bắt đầu tiệc tiễn chủ nhiệm Sato. Trong 10 năm làm chủ nhiệm, chị Sato đã chống đỡ cho cơ sở này.)* |
| Sato | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>ありがとうございました。これからは<ruby>相談員<rt>そうだんいん</rt></ruby>として、<ruby>利用者<rt>りようしゃ</rt></ruby>さんとご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>橋渡<rt>はしわた</rt></ruby>しをしていきます。<ruby>介護<rt>かいご</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>はグエンさんに<ruby>任<rt>まか</rt></ruby>せます。<br>*(Mọi người, cảm ơn đã ở bên tôi suốt thời gian dài. Từ nay tôi sẽ làm cầu nối giữa người dùng dịch vụ và gia đình với tư cách là 相談員. Tôi giao hiện trường điều dưỡng cho chị Nguyễn.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎを<ruby>丁寧<rt>ていねい</rt></ruby>にしていただいて、<ruby>安心<rt>あんしん</rt></ruby>して<ruby>引<rt>ひ</rt></ruby>き<ruby>受<rt>う</rt></ruby>けることができます。<br>*(Chị Sato, thật sự cảm ơn chị. Chị đã bàn giao cẩn thận nên tôi có thể yên tâm nhận tiếp.)* |
| Sato | グエンさん、あなたなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>外国人<rt>がいこくじん</rt></ruby>だから<ruby>難<rt>むずか</rt></ruby>しいことも<ruby>多<rt>おお</rt></ruby>いかもしれないけど、それを<ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えるだけの<ruby>力<rt>ちから</rt></ruby>があります。<br>*(Chị Nguyễn, chị ổn thôi. Vì là người nước ngoài nên có thể có nhiều khó khăn, nhưng chị có đủ sức để vượt qua.)* |

---

## Tình huống 2 — Phòng họp · 10:00, lễ nhậm chức chính thức

| Vai | Lời thoại |
|---|---|
| Kobayashi | では、<ruby>辞令<rt>じれい</rt></ruby>を<ruby>交付<rt>こうふ</rt></ruby>します。グエン・ゴック<ruby>氏<rt>し</rt></ruby>を<ruby>介護主任<rt>かいごしゅにん</rt></ruby>に<ruby>任命<rt>にんめい</rt></ruby>します。<br>*(Vậy, tôi trao quyết định bổ nhiệm. Bổ nhiệm bà Nguyễn Ngọc làm 介護主任.)* |
| Ngọc | (nhận quyết định, cúi đầu) ありがとうございます。<ruby>誠心誠意<rt>せいしんせいい</rt></ruby><ruby>務<rt>つと</rt></ruby>めます。<br>*(Cảm ơn ông. Tôi sẽ tận tâm tận lực thực hiện nhiệm vụ.)* |
| Kobayashi | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chủ nhiệm Nguyễn, xin mời một lời.)* |
| Ngọc | (đứng thẳng, hít thở) <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>介護主任<rt>かいごしゅにん</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めさせていただきます。<ruby>私<rt>わたし</rt></ruby>はベトナム<ruby>出身<rt>しゅっしん</rt></ruby>ですが、この<ruby>施設<rt>しせつ</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んだことをすべて<ruby>活<rt>い</rt></ruby>かして、<ruby>利用者<rt>りようしゃ</rt></ruby>さんのために、<ruby>皆<rt>みな</rt></ruby>さんとともに<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ hôm nay tôi nhận nhiệm vụ 介護主任. Tôi là người Việt Nam, nhưng tôi sẽ tận dụng tất cả những gì đã học ở cơ sở này, vì các cụ và cùng mọi người cố gắng. Mong được chỉ bảo.)* |
| Mọi người | (vỗ tay) よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Mong được chỉ bảo!)* |

---

## Tình huống 3 — Phòng 主任 · 11:00, lần đầu ngồi vào ghế chủ nhiệm

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn quanh phòng, tự nhủ) ここが<ruby>主任室<rt>しゅにんしつ</rt></ruby>か。<ruby>佐藤<rt>さとう</rt></ruby>さんが10<ruby>年間<rt>ねんかん</rt></ruby>ここに<ruby>座<rt>すわ</rt></ruby>っていたんだ。<br>*(Đây là phòng chủ nhiệm à. Chị Sato đã ngồi ở đây suốt 10 năm.)* |
| Yamamoto | (gõ cửa) グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>ユニット会議<rt>ユニットかいぎ</rt></ruby>の<ruby>資料<rt>しりょう</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Chủ nhiệm Nguyễn, tôi mang tài liệu cuộc họp nhóm hôm nay đến.)* |
| Ngọc | ありがとうございます。「グエン<ruby>主任<rt>しゅにん</rt></ruby>」という<ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>、まだ<ruby>慣<rt>な</rt></ruby>れていません...<br>*(Cảm ơn. Cách gọi "Chủ nhiệm Nguyễn" tôi vẫn chưa quen...)* |
| Yamamoto | すぐ<ruby>慣<rt>な</rt></ruby>れますよ。グエンさん、いえ、グエン<ruby>主任<rt>しゅにん</rt></ruby>。<br>*(Sẽ quen sớm thôi. Chị Nguyễn, à không, Chủ nhiệm Nguyễn.)* |
| Ngọc | (cười nhẹ) では、<ruby>会議<rt>かいぎ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をします。<ruby>議長<rt>ぎちょう</rt></ruby>も<ruby>今日<rt>きょう</rt></ruby>から<ruby>私<rt>わたし</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>ですね。<br>*(Vậy, tôi chuẩn bị cho cuộc họp. Việc chủ trì hôm nay cũng do tôi phụ trách rồi nhỉ.)* |

---

## Tình huống 4 — Phòng họp toàn thể · 14:00, chủ trì cuộc họp ユニット đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>今月<rt>こんげつ</rt></ruby>のユニット<ruby>会議<rt>かいぎ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>先月<rt>せんげつ</rt></ruby>の<ruby>ヒヤリハット<rt>ヒヤリハット</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vậy, chúng ta bắt đầu cuộc họp nhóm tháng này. Đầu tiên xem lại báo cáo sự cố suýt xảy ra của tháng trước.)* |
| Nhân viên A | ユニット1の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>夜間<rt>やかん</rt></ruby>に<ruby>転倒<rt>てんとう</rt></ruby>しそうになりました。<ruby>対策<rt>たいさく</rt></ruby>として<ruby>床<rt>ゆか</rt></ruby>マットを<ruby>設置<rt>せっち</rt></ruby>しました。<br>*(Báo cáo của nhóm 1. Ông Kimura suýt ngã vào ban đêm. Biện pháp đối phó: đặt thảm sàn.)* |
| Ngọc | ありがとうございます。他の<ruby>ユニット<rt>ユニット</rt></ruby>にも<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>床<rt>ゆか</rt></ruby>マットの<ruby>使用<rt>しよう</rt></ruby>は<ruby>全<rt>すべ</rt></ruby>ての<ruby>ユニット<rt>ユニット</rt></ruby>で<ruby>検討<rt>けんとう</rt></ruby>してください。<ruby>次<rt>つぎ</rt></ruby>、ユニット2の<ruby>報告<rt>ほうこく</rt></ruby>をどうぞ。<br>*(Cảm ơn. Tôi sẽ chia sẻ với các nhóm khác. Hãy cân nhắc sử dụng thảm sàn ở tất cả các nhóm. Tiếp theo, nhóm 2 báo cáo.)* |
| Nhân viên B | はい。ユニット2は<ruby>問題<rt>もんだい</rt></ruby>なしです。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>認知症<rt>にんちしょう</rt></ruby><ruby>症状<rt>しょうじょう</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>改善<rt>かいぜん</rt></ruby>しています。<br>*(Vâng. Nhóm 2 không có vấn đề. Triệu chứng 認知症 của ông Tanaka có cải thiện một chút.)* |
| Ngọc | よかったです。<ruby>改善<rt>かいぜん</rt></ruby>のポイントを<ruby>議事録<rt>ぎじろく</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>しておいてください。<ruby>他<rt>ほか</rt></ruby>の<ruby>利用者<rt>りようしゃ</rt></ruby>さんのケアにも<ruby>役立<rt>やくだ</rt></ruby>ちます。<br>*(Tốt quá. Hãy ghi lại điểm cải thiện vào biên bản. Sẽ có ích cho việc chăm sóc các cụ khác nữa.)* |

---

## Tình huống 5 — Phòng主任 · 17:00, xử lý công việc giấy tờ đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn chồng tài liệu) <ruby>職員<rt>しょくいん</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>表<rt>ひょう</rt></ruby>、<ruby>シフト<rt>シフト</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>、<ruby>ケア会議<rt>ケアかいぎ</rt></ruby><ruby>議事録<rt>ぎじろく</rt></ruby>...<ruby>多<rt>おお</rt></ruby>いな。<br>*(Bảng đánh giá nhân viên, kế hoạch ca làm, biên bản họp chăm sóc... Nhiều quá nhỉ.)* |
| Nakamura | (gõ cửa) グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>服薬<rt>ふくやく</rt></ruby><ruby>管理<rt>かんり</rt></ruby>について<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Chủ nhiệm Nguyễn, tôi muốn bàn về quản lý thuốc của ông Tanaka.)* |
| Ngọc | はい、どうぞ。<ruby>服薬<rt>ふくやく</rt></ruby><ruby>管理<rt>かんり</rt></ruby>は<ruby>看護<rt>かんご</rt></ruby>と<ruby>介護<rt>かいご</rt></ruby>の<ruby>連携<rt>れんけい</rt></ruby>が<ruby>大事<rt>たいじ</rt></ruby>ですね。<br>*(Vâng, mời vào. Quản lý thuốc thì phối hợp giữa y tế và điều dưỡng rất quan trọng nhỉ.)* |
| Nakamura | そうです。<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>最近<rt>さいきん</rt></ruby><ruby>薬<rt>くすり</rt></ruby>を<ruby>飲<rt>の</rt></ruby>みたがらないことがあります。<ruby>拒薬<rt>きょやく</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>をどうするか<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えたいです。<br>*(Đúng. Dạo này ông Tanaka đôi khi không muốn uống thuốc. Tôi muốn cùng nghĩ xem cách xử lý khi từ chối thuốc.)* |
| Ngọc | <ruby>拒薬<rt>きょやく</rt></ruby>ですね。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから、<ruby>看護師<rt>かんごし</rt></ruby>・<ruby>介護士<rt>かいごし</rt></ruby>・<ruby>ご家族<rt>ごかぞく</rt></ruby>で<ruby>カンファレンス<rt>カンファレンス</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>きましょう。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Từ chối thuốc à. Hãy xác nhận lý do trước, rồi mở hội nghị chăm sóc giữa y tá, điều dưỡng và gia đình. Tôi sẽ sắp xếp lịch tuần tới.)* |

---

## Tình huống 6 — Hành lang · 18:00, Linh hỏi thăm chủ nhiệm mới

| Vai | Lời thoại |
|---|---|
| Linh | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>はどうでしたか?<br>*(Chủ nhiệm Nguyễn, ngày đầu hôm nay thế nào ạ?)* |
| Ngọc | 「グエン<ruby>主任<rt>しゅにん</rt></ruby>」...まだ<ruby>慣<rt>な</rt></ruby>れないけど、やってみるしかないですよ。<ruby>会議<rt>かいぎ</rt></ruby>の<ruby>進行<rt>しんこう</rt></ruby>はどうだったか、<ruby>後<rt>あと</rt></ruby>で<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてね。<br>*(Chủ nhiệm Nguyễn... chưa quen lắm, nhưng chỉ có thể thử thôi. Việc chủ trì cuộc họp thế nào, sau này nói thật cho tôi biết nhé.)* |
| Linh | はい。でも、グエン<ruby>主任<rt>しゅにん</rt></ruby>の<ruby>進行<rt>しんこう</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりやすくて、みんなも<ruby>話<rt>はな</rt></ruby>しやすそうでした。<br>*(Vâng. Nhưng cách chủ trì của Chủ nhiệm Nguyễn rõ ràng dễ hiểu, mọi người cũng có vẻ dễ nói chuyện hơn.)* |
| Ngọc | そう言ってくれてありがとう。まだまだだけど、<ruby>一歩<rt>いっぽ</rt></ruby>ずつですね。<br>*(Cảm ơn bạn nói vậy. Còn nhiều thiếu sót lắm, nhưng từng bước một nhỉ.)* |

---

## Tình huống 7 — Nhà trọ · 20:00, gọi điện về cho mẹ

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Con ơi, hôm nay là ngày đặc biệt mà. Nhậm chức rồi sao? |
| Ngọc | (tiếng Việt) Dạ mẹ. Hôm nay con ký nhận quyết định bổ nhiệm 介護主任 chính thức rồi. Mẹ ơi, "介護主任" là người lãnh đạo những người chăm sóc các cụ. |
| Mẹ | (tiếng Việt) Vậy thì con là người giỏi nhất à? |
| Ngọc | (tiếng Việt, cười) Không mẹ ơi, vẫn còn nhiều thiếu sót lắm. Nhưng con sẽ cố gắng vì mọi người. Mẹ ủng hộ con nhé. |
| Mẹ | (tiếng Việt) Ủng hộ chứ! Cố lên con mẹ! Mẹ tự hào con lắm. |

---

## Tình huống 8 — Phòng主任 · 2 tuần sau, làm việc khuya

| Vai | Lời thoại |
|---|---|
| Yamamoto | (gõ cửa) グエン<ruby>主任<rt>しゅにん</rt></ruby>、まだ<ruby>残業<rt>ざんぎょう</rt></ruby>ですか?もう9<ruby>時<rt>じ</rt></ruby>ですよ。<br>*(Chủ nhiệm Nguyễn, vẫn còn làm thêm giờ ạ? Đã 9 giờ rồi đó.)* |
| Ngọc | あ、<ruby>職員<rt>しょくいん</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>が<ruby>終<rt>お</rt></ruby>わらなくて。<ruby>書き方<rt>かきかた</rt></ruby>がまだ<ruby>慣<rt>な</rt></ruby>れていません。<br>*(À, tài liệu đánh giá nhân viên chưa xong. Cách viết vẫn chưa quen.)* |
| Yamamoto | わたしも<ruby>手伝<rt>てつだ</rt></ruby>います。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>全部<rt>ぜんぶ</rt></ruby>しなくていいですよ。<ruby>主任<rt>しゅにん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>周<rt>まわ</rt></ruby>りに<ruby>頼<rt>たよ</rt></ruby>ることも<ruby>大事<rt>たいじ</rt></ruby>です。<br>*(Tôi cũng giúp. Không cần một mình làm hết đâu. Công việc của chủ nhiệm là biết nhờ cậy người xung quanh cũng rất quan trọng.)* |
| Ngọc | ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さんにそう<ruby>言<rt>い</rt></ruby>われると<ruby>楽<rt>らく</rt></ruby>になります。でも...<ruby>一人<rt>ひとり</rt></ruby>でも<ruby>早<rt>はや</rt></ruby>くできるように<ruby>慣<rt>な</rt></ruby>れたいです。<br>*(Cảm ơn. Được chị Yamamoto nói vậy tôi thấy nhẹ hơn. Nhưng... tôi cũng muốn sớm quen để một mình làm được.)* |

---

## Tình huống 9 — Phòng họp · 15:00, gặp gia đình người dùng dịch vụ lần đầu với tư cách 主任

| Vai | Lời thoại |
|---|---|
| Gia đình Tanaka | <ruby>主任<rt>しゅにん</rt></ruby>さん、<ruby>父<rt>ちち</rt></ruby>の<ruby>最近<rt>さいきん</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>はいかがでしょうか?<br>*(Chủ nhiệm, gần đây tình trạng của ba tôi thế nào rồi ạ?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんは、<ruby>最近<rt>さいきん</rt></ruby><ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>戻<rt>もど</rt></ruby>ってきています。<ruby>服薬<rt>ふくやく</rt></ruby>については<ruby>看護師<rt>かんごし</rt></ruby>の<ruby>中村<rt>なかむら</rt></ruby>さんと<ruby>連携<rt>れんけい</rt></ruby>して<ruby>対応<rt>たいおう</rt></ruby>しています。<ruby>先日<rt>せんじつ</rt></ruby>のカンファレンスで<ruby>決<rt>き</rt></ruby>めた<ruby>対策<rt>たいさく</rt></ruby>を<ruby>実施中<rt>じっしちゅう</rt></ruby>です。<br>*(Ông Tanaka gần đây ăn ngon hơn rồi ạ. Về việc uống thuốc, chúng tôi đang phối hợp với y tá Nakamura để xử lý. Chúng tôi đang thực hiện biện pháp đã quyết định trong buổi họp chăm sóc vừa rồi.)* |
| Gia đình Tanaka | ありがとうございます。<ruby>主任<rt>しゅにん</rt></ruby>さんが<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>だと<ruby>知<rt>し</rt></ruby>って、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>心配<rt>しんぱい</rt></ruby>していましたが...<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>していただいて、<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Cảm ơn. Biết rằng chủ nhiệm là người nước ngoài, ban đầu chúng tôi hơi lo lắng... Nhưng được giải thích cẩn thận nên tôi yên tâm rồi.)* |
| Ngọc | ご<ruby>不安<rt>ふあん</rt></ruby>をかけてしまい、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。これからも<ruby>田中<rt>たなか</rt></ruby>さんのために<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めます。<ruby>何<rt>なに</rt></ruby>かご<ruby>心配<rt>しんぱい</rt></ruby>がありましたらいつでも<ruby>連絡<rt>れんらく</rt></ruby>ください。<br>*(Xin lỗi đã khiến gia đình lo lắng. Từ nay tôi cũng sẽ tận tâm vì ông Tanaka. Nếu có điều gì lo lắng, xin cứ liên hệ bất cứ lúc nào.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 20:00, Ngọc và Yamamoto nói chuyện về tương lai

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>今後<rt>こんご</rt></ruby>の<ruby>キャリア<rt>キャリア</rt></ruby>について、<ruby>何<rt>なに</rt></ruby>か<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Chủ nhiệm Nguyễn, về sự nghiệp trong tương lai, chị có suy nghĩ gì không?)* |
| Ngọc | <ruby>実<rt>じつ</rt></ruby>は、<ruby>最近<rt>さいきん</rt></ruby><ruby>二つ<rt>ふたつ</rt></ruby>の<ruby>道<rt>みち</rt></ruby>で<ruby>迷<rt>まよ</rt></ruby>っています。ケアマネジャーと<ruby>認定<rt>にんてい</rt></ruby><ruby>介護福祉士<rt>かいごふくしし</rt></ruby>です。<br>*(Thật ra gần đây tôi đang phân vân giữa hai con đường. ケアマネジャー và 認定介護福祉士.)* |
| Yamamoto | どちらも<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>選択<rt>せんたく</rt></ruby>ですね。<ruby>違<rt>ちが</rt></ruby>いは<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Cả hai đều là lựa chọn tuyệt vời nhỉ. Chị hiểu sự khác nhau chưa?)* |
| Ngọc | ケアマネは<ruby>計画<rt>けいかく</rt></ruby><ruby>立案<rt>りつあん</rt></ruby>が<ruby>中心<rt>ちゅうしん</rt></ruby>で、<ruby>現場<rt>げんば</rt></ruby>から<ruby>離<rt>はな</rt></ruby>れますよね。<ruby>認定<rt>にんてい</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>りながら<ruby>専門性<rt>せんもんせい</rt></ruby>を<ruby>高<rt>たか</rt></ruby>める<ruby>道<rt>みち</rt></ruby>。でも<ruby>認定<rt>にんてい</rt></ruby>はまだ「<ruby>意味<rt>いみ</rt></ruby>がない」という<ruby>声<rt>こえ</rt></ruby>もあって。<br>*(ケアマネ thì trung tâm là lập kế hoạch, xa rời hiện trường nhỉ. 認定 thì vừa ở lại hiện trường vừa nâng cao chuyên môn. Nhưng 認定 vẫn có ý kiến "không có ý nghĩa" nữa.)* |
| Yamamoto | グエンさんはどっちが<ruby>向<rt>む</rt></ruby>いていると<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Chị Nguyễn nghĩ mình phù hợp với con đường nào hơn?)* |
| Ngọc | まだ<ruby>答<rt>こた</rt></ruby>えが<ruby>出<rt>で</rt></ruby>ていません。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>主任<rt>しゅにん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れてから、じっくり<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Tôi chưa có câu trả lời. Đợi quen với công việc chủ nhiệm thêm một chút rồi suy nghĩ kỹ.)* |

---

## Tình huống 11 — Nhà · đêm khuya, Ngọc một mình nghĩ về tương lai

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại nội tâm, viết nhật ký tiếng Nhật) <ruby>今日<rt>きょう</rt></ruby>で<ruby>介護主任<rt>かいごしゅにん</rt></ruby>になって2<ruby>週間<rt>しゅうかん</rt></ruby>。まだ<ruby>毎日<rt>まいにち</rt></ruby><ruby>失敗<rt>しっぱい</rt></ruby>と<ruby>発見<rt>はっけん</rt></ruby>の<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>し。でも、<ruby>前<rt>まえ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>んでいることは<ruby>分<rt>わ</rt></ruby>かる。<br>*(Hôm nay đã 2 tuần kể từ khi làm 介護主任. Mỗi ngày vẫn là sự lặp lại của thất bại và khám phá. Nhưng tôi biết mình đang tiến về phía trước.)* |
| Ngọc | ケアマネジャーか、<ruby>認定<rt>にんてい</rt></ruby>か。どちらも<ruby>険<rt>けわ</rt></ruby>しい<ruby>道<rt>みち</rt></ruby>。でも、<ruby>日本<rt>にほん</rt></ruby>で<ruby>生<rt>い</rt></ruby>きていくために、<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>と</rt></ruby>まることはできない。<ruby>来年<rt>らいねん</rt></ruby>、<ruby>答<rt>こた</rt></ruby>えを<ruby>出<rt>だ</rt></ruby>そう。<br>*(ケアマネジャー hay 認定. Cả hai đều là con đường gian nan. Nhưng để sống ở Nhật, tôi không thể dừng lại. Năm sau, tôi sẽ đưa ra câu trả lời.)* |

---

## Tình huống 12 — Nhà trọ · sáng hôm sau, Ngọc suy nghĩ về tương lai

> Scene chuyển tiếp — khép sách 31, mở sách 32.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, tự nhủ khi nhìn vào gương) Ngủ đủ giấc rồi. Hôm nay ngày mới. |
| Ngọc | (tiếng Việt, nghĩ) ケアマネ? Hay 認定? Chưa chắc. Nhưng mình biết không thể đứng im. Mình đến đây vì một lý do. |
| Ngọc | (tiếng Nhật, tự nhủ khi ra khỏi nhà trọ) さあ、<ruby>行<rt>い</rt></ruby>こう。グエン<ruby>主任<rt>しゅにん</rt></ruby>として、<ruby>今日<rt>きょう</rt></ruby>も<ruby>一歩<rt>いっぽ</rt></ruby>ずつ。<br>*(Nào, đi thôi. Với tư cách Chủ nhiệm Nguyễn, hôm nay cũng từng bước một.)* |
| Ngọc | (tiếng Nhật, trong đầu) わたしたちも、まだまだ<ruby>成長中<rt>せいちょうちゅう</rt></ruby>だけど。<br>*(Chúng ta cũng đang trưởng thành, dù vẫn còn nhiều điều phải học.)* |

---

## Đọng lại chương 12 (và sách 31)

Ngọc chính thức nhậm chức 介護主任 — đỉnh sách 31. Ba cột trụ của cung bậc: (1) Sato trao gậy với lời công nhận chân thành sau 1 năm hoài nghi; (2) Ngọc đối diện gia đình người dùng dịch vụ lần đầu với tư cách chủ nhiệm — thắng được định kiến "người nước ngoài"; (3) Đêm khuya một mình, Ngọc đặt câu hỏi ケアマネ hay 認定 — mầm câu chuyện sách 32 nảy mầm. Ngọc vẫn độc thân, sống một mình tại Nhật — nỗi cô đơn đặc trưng của người lao động di cư biến thành sức mạnh tự lập.

> Từ vựng & mẫu câu: 辞令・任命・就任・誠心誠意・送別会・引き継ぎ・ヒヤリハット・拒薬・カンファレンス・服薬管理・職員評価・認定介護福祉士・ケアマネジャー・残業・成長中・一歩ずつ', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
