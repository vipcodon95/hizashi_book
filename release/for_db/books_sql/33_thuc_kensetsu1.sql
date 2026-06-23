-- Hizashi LITE book SQL — Thực Kensetsu 1
-- curriculum_id = 800000033  (book_seq=33)
-- nguồn: books/33_thuc_kensetsu1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000033, 'N3', 'markdown_book', 'Xây dựng', 'Thực Kensetsu 1', 'Bộ sách Hizashi — Thực Kensetsu 1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000001, 800000033, NULL, 'markdown_book', 'T1. Nhập cảnh & ngày đầu công trường (来日初日)', '# Sách thực tập sinh xây dựng · T1. Nhập cảnh & ngày đầu công trường (来日初日)

> **Mục tiêu nhân vật:** Thức (21 tuổi, Hà Tĩnh) sang Nhật làm thực tập sinh kỹ năng (技能実習生) ngành xây dựng, nghề とび (giàn giáo). Học các mẫu hội thoại tiếng Nhật cơ bản ngày đầu: chào hỏi cấp trên ở công trường, tự giới thiệu trước tổ thợ, chào kiểu 「ご安全に」, hỏi lại khi chưa nghe rõ, nghe chỉ thị cực ngắn của 親方.

---

## Bối cảnh

Đầu tháng 4 năm 2026. Thức vừa hạ cánh sân bay Kansai, được công ty đón về ký túc, hôm sau ra công trường lần đầu — một công trình xây nhà 5 tầng ở Aichi. Trình độ tiếng Nhật N4. Chương này tập trung các mẫu câu chắc chắn phải dùng ngày đầu tại 現場 (genba — công trường): chào hỏi 親方・職長・先輩, tự giới thiệu ở 朝礼, câu chào đặc trưng nghề xây dựng 「ご安全に」, và cách hỏi lại an toàn khi chưa hiểu chỉ thị.

---

## Tình huống 1 — Sân bay Kansai · 14:00, người công ty ra đón

| Vai | Lời thoại |
|---|---|
| Người đón | トゥックさんですか?<ruby>建設<rt>けんせつ</rt></ruby><ruby>会社<rt>がいしゃ</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>です。<br>*(Em là Thức phải không? Tôi là Saito của công ty xây dựng.)* |
| Thức | はい、トゥックです。はじめまして。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em là Thức. Rất hân hạnh. Mong được giúp đỡ ạ.)* |
| Người đón | <ruby>長<rt>なが</rt></ruby>いフライト、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>荷物<rt>にもつ</rt></ruby>はこれだけですか?<br>*(Chuyến bay dài, em vất vả rồi. Hành lý chỉ có chừng này thôi à?)* |
| Thức | はい、これだけです。<br>*(Vâng, chỉ chừng này ạ.)* |
| Người đón | では、<ruby>車<rt>くるま</rt></ruby>で<ruby>寮<rt>りょう</rt></ruby>まで<ruby>行<rt>い</rt></ruby>きます。<ruby>明日<rt>あした</rt></ruby>から<ruby>現場<rt>げんば</rt></ruby>です。<br>*(Vậy đi xe về ký túc. Ngày mai bắt đầu ra công trường.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Ký túc · 19:00, anh Long đồng hương đón (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Thức hả? Anh Long, người Nghệ An, sang trước em một năm rưỡi. Đói chưa? |
| Thức | Em chào anh. Em đói lắm anh, trên máy bay ăn ít quá. |
| Anh Long | Anh nấu mì rồi đấy, ăn đi. Mai ra công trường đừng sợ, cứ "はい" với cười là qua ngày đầu. |
| Thức | Tiếng Nhật em yếu lắm anh, sợ không nghe được 親方 nói gì. |
| Anh Long | Ai cũng thế lúc đầu. Không nghe rõ thì nói 「すみません、もう一度お願いします」, đừng gật bừa — ngoài công trường gật bừa là nguy hiểm. |
| Thức | Vâng em nhớ ạ. Cảm ơn anh nhiều. |

---

## Tình huống 3 — Cổng công trường · 7:30, lần đầu vào 現場

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、おはよう。ここが<ruby>現場<rt>げんば</rt></ruby>です。<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>斉藤<rt>さいとう</rt></ruby>です。<br>*(Thức, chào em. Đây là công trường. Tôi là Saito, đốc công.)* |
| Thức | おはようございます。トゥックです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng ạ. Em là Thức. Mong được chỉ bảo ạ.)* |
| Saito | <ruby>現場<rt>げんば</rt></ruby>では「ご<ruby>安全<rt>あんぜん</rt></ruby>に」とも<ruby>言<rt>い</rt></ruby>います。<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Ở công trường người ta còn chào "Goanzen ni" (chúc an toàn). Em nhớ nhé.)* |
| Thức | ご<ruby>安全<rt>あんぜん</rt></ruby>に...ですね。はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Goanzen ni... ạ. Vâng, em sẽ nhớ.)* |
| Saito | まず<ruby>入口<rt>いりぐち</rt></ruby>でヘルメットをかぶってください。かぶらないと<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れません。<br>*(Trước hết ở cổng phải đội mũ bảo hộ. Không đội thì không vào trong được.)* |
| Thức | はい、すぐかぶります。<br>*(Vâng, em đội ngay ạ.)* |

---

## Tình huống 4 — Sân tập kết · 7:45, gặp 親方 Tanigawa

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>のトゥックくんです。<br>*(Sếp, đây là Thức, thực tập sinh mới.)* |
| Tanigawa | おう。<ruby>谷川<rt>たにがわ</rt></ruby>や。とびの<ruby>仕事<rt>しごと</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めてか?<br>*(Ờ. Tao là Tanigawa. Việc giàn giáo, lần đầu hả?)* |
| Thức | はい、<ruby>初<rt>はじ</rt></ruby>めてです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, lần đầu ạ. Mong sếp chỉ bảo ạ.)* |
| Tanigawa | ええか、<ruby>現場<rt>げんば</rt></ruby>はケガしたら<ruby>終<rt>お</rt></ruby>わりや。<ruby>分<rt>わ</rt></ruby>からんことは<ruby>聞<rt>き</rt></ruby>け。<br>*(Nghe đây, công trường mà bị thương là xong. Không biết thì hỏi.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>からないことは<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, không biết em sẽ hỏi ạ.)* |
| Tanigawa | よし。ついて<ruby>来<rt>こ</rt></ruby>い。<br>*(Được. Đi theo tao.)* |

---

## Tình huống 5 — Khu tập kết · 7:50, 親方 nói nhanh, Thức hỏi lại

| Vai | Lời thoại |
|---|---|
| Tanigawa | そこの<ruby>単管<rt>たんかん</rt></ruby>、こっち<ruby>持<rt>も</rt></ruby>って<ruby>来<rt>こ</rt></ruby>い。<br>*(Cái ống thép kia, mang lại đây.)* |
| Thức | すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin lỗi, sếp nói lại lần nữa giúp em ạ.)* |
| Tanigawa | (chỉ tay) あれや。あの<ruby>鉄<rt>てつ</rt></ruby>のパイプ。<br>*(Cái kia kìa. Cái ống sắt đó.)* |
| Thức | これですか?ここに<ruby>持<rt>も</rt></ruby>って<ruby>来<rt>く</rt></ruby>ればいいですか?<br>*(Cái này ạ? Mang lại đây là được phải không ạ?)* |
| Tanigawa | そうや。それでええ。<br>*(Đúng. Thế là được.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 6 — Trước giờ 朝礼 · 7:55, 先輩 Kondo chỉ chỗ đứng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくんね。<ruby>近藤<rt>こんどう</rt></ruby>です。<ruby>朝礼<rt>ちょうれい</rt></ruby>、<ruby>始<rt>はじ</rt></ruby>まるよ。<br>*(Là Thức nhỉ. Anh là Kondo. Họp sáng sắp bắt đầu rồi.)* |
| Thức | おはようございます。<ruby>朝礼<rt>ちょうれい</rt></ruby>はどこに<ruby>立<rt>た</rt></ruby>ちますか?<br>*(Chào buổi sáng ạ. Họp sáng em đứng chỗ nào ạ?)* |
| Kondo | あそこの<ruby>列<rt>れつ</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>の<ruby>隣<rt>となり</rt></ruby>でいいよ。<br>*(Hàng đằng kia, đứng cạnh anh là được.)* |
| Thức | はい。<ruby>何<rt>なに</rt></ruby>かすることはありますか?<br>*(Vâng. Em có cần làm gì không ạ?)* |
| Kondo | <ruby>今日<rt>きょう</rt></ruby>は<ruby>見<rt>み</rt></ruby>てるだけでいい。みんなと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>体操<rt>たいそう</rt></ruby>だけやって。<br>*(Hôm nay chỉ cần quan sát. Cùng mọi người tập thể dục thôi.)* |
| Thức | はい、わかりました。ありがとうございます。<br>*(Vâng, em hiểu rồi. Cảm ơn anh ạ.)* |

---

## Tình huống 7 — 朝礼 · 8:00, tự giới thiệu trước tổ thợ

| Vai | Lời thoại |
|---|---|
| Saito | みなさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>です。トゥックくん、<ruby>自己紹介<rt>じこしょうかい</rt></ruby>を。<br>*(Mọi người, từ hôm nay có thực tập sinh mới. Thức, em tự giới thiệu đi.)* |
| Thức | みなさん、おはようございます。ベトナムから<ruby>来<rt>き</rt></ruby>ました、トゥックと<ruby>申<rt>もう</rt></ruby>します。<br>*(Mọi người, chào buổi sáng ạ. Em đến từ Việt Nam, tên là Thức.)* |
| Thức | <ruby>21<rt>にじゅういち</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<ruby>建設<rt>けんせつ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Em 21 tuổi. Việc xây dựng là lần đầu của em.)* |
| Thức | <ruby>日本語<rt>にほんご</rt></ruby>はまだ<ruby>下手<rt>へた</rt></ruby>ですが、<ruby>一生懸命<rt>いっしょうけんめい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếng Nhật em còn kém, nhưng em sẽ cố gắng hết sức. Mong mọi người chỉ bảo ạ.)* |
| Thợ A | よろしくな!<br>*(Mong em nhé!)* |
| Tanigawa | しっかりやれよ。<br>*(Làm cho đàng hoàng đấy.)* |

---

## Tình huống 8 — 朝礼 · 8:05, KY hoạt động an toàn cùng tổ

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>のKY、<ruby>危険<rt>きけん</rt></ruby>ポイントは<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>です。<ruby>落下<rt>らっか</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(KY hôm nay, điểm nguy hiểm là làm việc trên cao. Chú ý rơi ngã.)* |
| Thức | (nói nhỏ với Kondo) KY、というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(KY, là cái gì vậy anh?)* |
| Kondo | <ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>のことだよ。<ruby>今日<rt>きょう</rt></ruby>あぶない<ruby>所<rt>ところ</rt></ruby>をみんなで<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Là dự báo nguy hiểm đó. Cả tổ cùng xác nhận chỗ nào nguy hiểm trong ngày.)* |
| Thức | なるほど。<ruby>落下<rt>らっか</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>、ですね。<br>*(Ra vậy. Chú ý rơi ngã, đúng không ạ.)* |
| Saito | はい、ではみんなで。「<ruby>今日<rt>きょう</rt></ruby>も<ruby>一日<rt>いちにち</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby>に!」<br>*(Rồi, cả tổ nào. "Hôm nay cả ngày an toàn!")* |
| Tổ thợ | <ruby>安全<rt>あんぜん</rt></ruby>に!ご<ruby>安全<rt>あんぜん</rt></ruby>に!<br>*(An toàn! Goanzen ni!)* |

---

## Tình huống 9 — Khu vật tư · 8:20, được phân công theo 先輩

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくんは<ruby>今日<rt>きょう</rt></ruby>、<ruby>近藤<rt>こんどう</rt></ruby>くんについて<ruby>仕事<rt>しごと</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Thức hôm nay theo Kondo để học việc nhé.)* |
| Thức | はい、<ruby>近藤<rt>こんどう</rt></ruby>さんについて<ruby>行<rt>い</rt></ruby>けばいいですか?<br>*(Vâng, em đi theo anh Kondo là được ạ?)* |
| Kondo | そう。まず<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えよう。<br>*(Đúng. Trước hết học tên dụng cụ đã.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。メモしてもいいですか?<br>*(Vâng, nhờ anh ạ. Em ghi chép được không ạ?)* |
| Kondo | いいよ。でも<ruby>現場<rt>げんば</rt></ruby>では<ruby>手<rt>て</rt></ruby>が<ruby>空<rt>あ</rt></ruby>いたときだけな。<br>*(Được. Nhưng ở công trường chỉ ghi lúc rảnh tay thôi nhé.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 10 — Khu vật tư · 8:30, học tên dụng cụ đầu tiên

| Vai | Lời thoại |
|---|---|
| Kondo | これがヘルメット。これが<ruby>安全帯<rt>あんぜんたい</rt></ruby>、フルハーネス<ruby>型<rt>がた</rt></ruby>。<br>*(Đây là mũ bảo hộ. Đây là dây an toàn, loại toàn thân.)* |
| Thức | フルハーネス...<ruby>体<rt>からだ</rt></ruby>につけるベルトですか?<br>*(Furuharness... là cái đai đeo vào người ạ?)* |
| Kondo | そう。<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>では<ruby>絶対<rt>ぜったい</rt></ruby>つける。<ruby>命<rt>いのち</rt></ruby><ruby>綱<rt>づな</rt></ruby>や。<br>*(Đúng. Trên cao là bắt buộc đeo. Dây cứu mạng đó.)* |
| Thức | いのちづな...<ruby>大事<rt>だいじ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Inochizuna... từ quan trọng nhỉ ạ.)* |
| Kondo | <ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。これは<ruby>明日<rt>あした</rt></ruby>くわしくやる。<br>*(Quan trọng nhất. Cái này mai làm kỹ.)* |
| Thức | はい、たのしみにしています。<br>*(Vâng, em mong chờ ạ.)* |

---

## Tình huống 11 — Chân công trình · 9:00, lần đầu nhìn giàn giáo cao

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、あの<ruby>高<rt>たか</rt></ruby>い<ruby>鉄<rt>てつ</rt></ruby>のは<ruby>足場<rt>あしば</rt></ruby>ですか?<br>*(Anh Kondo, cái khung sắt cao kia là giàn giáo ạ?)* |
| Kondo | そう、あれが<ruby>足場<rt>あしば</rt></ruby>。とびの<ruby>仕事<rt>しごと</rt></ruby>は、あれを<ruby>組<rt>く</rt></ruby>むことや。<br>*(Đúng, đó là giàn giáo. Việc tobi là lắp dựng cái đó.)* |
| Thức | たかいですね...<ruby>怖<rt>こわ</rt></ruby>くないですか?<br>*(Cao quá nhỉ... không sợ ạ?)* |
| Kondo | <ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>怖<rt>こわ</rt></ruby>い。でも<ruby>安全帯<rt>あんぜんたい</rt></ruby>があるから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Lúc đầu ai cũng sợ. Nhưng có dây an toàn nên không sao.)* |
| Thức | はい...<ruby>頑張<rt>がんば</rt></ruby>って<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng... em sẽ cố gắng học ạ.)* |
| Kondo | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ゆっくりでええ。<br>*(Không sao, cứ từ từ.)* |

---

## Tình huống 12 — Khu nghỉ · 10:00, 休憩 đầu tiên, small talk

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>休憩<rt>きゅうけい</rt></ruby>!トゥックくん、お<ruby>茶<rt>ちゃ</rt></ruby><ruby>飲<rt>の</rt></ruby>んで。<br>*(Nghỉ giải lao! Thức, uống trà đi.)* |
| Thức | ありがとうございます。いただきます。<br>*(Cảm ơn anh ạ. Em xin phép.)* |
| Kondo | <ruby>日本<rt>にほん</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>はあついよ。<ruby>水分<rt>すいぶん</rt></ruby>はちゃんと<ruby>取<rt>と</rt></ruby>ってな。<br>*(Mùa hè Nhật nóng lắm đấy. Phải uống nước đầy đủ nhé.)* |
| Thức | はい。ベトナムもあついですが、しっかり<ruby>飲<rt>の</rt></ruby>みます。<br>*(Vâng. Việt Nam cũng nóng, nhưng em sẽ uống đầy đủ ạ.)* |
| Kondo | ベトナムのどこ?<br>*(Việt Nam ở đâu thế?)* |
| Thức | ハティンです。<ruby>中部<rt>ちゅうぶ</rt></ruby>の<ruby>田舎<rt>いなか</rt></ruby>です。<br>*(Hà Tĩnh ạ. Vùng quê miền Trung ạ.)* |

---

## Tình huống 13 — Sân tập kết · 10:15, tập bê vật liệu nhẹ

| Vai | Lời thoại |
|---|---|
| Kondo | これ、<ruby>足場板<rt>あしばいた</rt></ruby>。<ruby>運<rt>はこ</rt></ruby>んでみて。<ruby>腰<rt>こし</rt></ruby>で<ruby>持<rt>も</rt></ruby>つんやで。<br>*(Đây là ván giàn giáo. Thử khiêng xem. Dùng hông mà nâng nhé.)* |
| Thức | はい。(thử nâng) おもいですね。<br>*(Vâng. Nặng quá ạ.)* |
| Kondo | <ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めるなよ。<ruby>背中<rt>せなか</rt></ruby>はまっすぐ。<br>*(Đừng để đau lưng đấy. Giữ lưng thẳng.)* |
| Thức | <ruby>背中<rt>せなか</rt></ruby>をまっすぐ、ですね。こうですか?<br>*(Giữ lưng thẳng ạ. Như thế này ạ?)* |
| Kondo | そうそう。ええ<ruby>感<rt>かん</rt></ruby>じ。<br>*(Đúng đúng. Cảm giác tốt đấy.)* |
| Thức | ありがとうございます。<br>*(Cảm ơn anh ạ.)* |

---

## Tình huống 14 — Chân giàn giáo · 11:00, 親方 sai việc đơn giản

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、その<ruby>箒<rt>ほうき</rt></ruby>で<ruby>足元<rt>あしもと</rt></ruby><ruby>掃<rt>は</rt></ruby>いとけ。<br>*(Thức, lấy cái chổi đó quét chỗ chân đứng đi.)* |
| Thức | はい。<ruby>足元<rt>あしもと</rt></ruby>を<ruby>掃<rt>は</rt></ruby>けばいいですか?<br>*(Vâng. Quét chỗ chân đứng là được ạ?)* |
| Tanigawa | そうや。<ruby>釘<rt>くぎ</rt></ruby>とかゴミが<ruby>落<rt>お</rt></ruby>ちてたら<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Đúng. Có đinh hay rác rơi là nguy hiểm.)* |
| Thức | わかりました。きれいにします。<br>*(Em hiểu rồi. Em quét sạch ạ.)* |
| Tanigawa | <ruby>現場<rt>げんば</rt></ruby>は<ruby>整理整頓<rt>せいりせいとん</rt></ruby>が<ruby>基本<rt>きほん</rt></ruby>や。<br>*(Công trường lấy gọn gàng ngăn nắp làm gốc.)* |
| Thức | はい、おぼえます。<br>*(Vâng, em ghi nhớ ạ.)* |

---

## Tình huống 15 — Chân giàn giáo · 11:20, báo cáo làm xong

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>足元<rt>あしもと</rt></ruby>の<ruby>掃除<rt>そうじ</rt></ruby>、<ruby>終<rt>お</rt></ruby>わりました。<br>*(Sếp, quét chỗ chân đứng xong rồi ạ.)* |
| Tanigawa | お、はやいな。ちゃんと<ruby>釘<rt>くぎ</rt></ruby>も<ruby>拾<rt>ひろ</rt></ruby>うたか?<br>*(Ồ, nhanh nhỉ. Có nhặt cả đinh chưa?)* |
| Thức | はい、<ruby>釘<rt>くぎ</rt></ruby>はバケツに<ruby>集<rt>あつ</rt></ruby>めました。<br>*(Vâng, đinh em gom vào xô rồi ạ.)* |
| Tanigawa | よし。<ruby>次<rt>つぎ</rt></ruby>は<ruby>近藤<rt>こんどう</rt></ruby>のところ<ruby>行<rt>い</rt></ruby>け。<br>*(Được. Tiếp theo đến chỗ Kondo đi.)* |
| Thức | はい、<ruby>近藤<rt>こんどう</rt></ruby>さんのところへ<ruby>行<rt>い</rt></ruby>きます。<br>*(Vâng, em đến chỗ anh Kondo ạ.)* |
| Tanigawa | おう、<ruby>気<rt>き</rt></ruby>をつけてな。<br>*(Ờ, cẩn thận đấy.)* |

---

## Tình huống 16 — Cạnh anh Long · 12:00, ăn trưa hỏi kinh nghiệm (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Sao rồi, sáng nay ổn không? |
| Thức | Em run lắm anh, nhưng 親方 không mắng gì. Em chủ yếu quét dọn với bê đồ. |
| Anh Long | Ngày đầu thế là tốt. Mấy hôm nữa quen tay, quan trọng là nhớ "ご安全に" và đừng bao giờ đứng dưới chỗ người ta làm trên cao. |
| Thức | Vâng anh. Có từ nào nghe hoài mà em chưa hiểu thì hỏi anh được không? |
| Anh Long | Được chứ. Nhưng ưu tiên hỏi 先輩 ngay tại chỗ, vì có khi từ đó liên quan an toàn, biết chậm là nguy. |
| Thức | Dạ em hiểu. Cảm ơn anh. |

---

## Tình huống 17 — Khu vật tư · 13:00, học câu chào trong ngày

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、すれ<ruby>違<rt>ちが</rt></ruby>う<ruby>人<rt>ひと</rt></ruby>には<ruby>何<rt>なん</rt></ruby>て<ruby>言<rt>い</rt></ruby>う?<br>*(Thức, gặp người đi ngang qua thì nói gì?)* |
| Thức | こんにちは、ですか?<br>*(Konnichiwa ạ?)* |
| Kondo | <ruby>現場<rt>げんば</rt></ruby>では「お<ruby>疲<rt>つか</rt></ruby>れさまです」が<ruby>多<rt>おお</rt></ruby>い。やってみて。<br>*(Ở công trường hay nói "Otsukaresama desu". Thử đi.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまです!<br>*(Otsukaresama desu!)* |
| Kondo | ええやん。<ruby>朝<rt>あさ</rt></ruby>は「おはようございます」、それ<ruby>以外<rt>いがい</rt></ruby>は「お<ruby>疲<rt>つか</rt></ruby>れさまです」でええ。<br>*(Tốt đấy. Sáng thì "Ohayou gozaimasu", còn lại thì "Otsukaresama desu" là được.)* |
| Thức | はい、おぼえました。<br>*(Vâng, em nhớ rồi ạ.)* |

---

## Tình huống 18 — Chân giàn giáo · 15:00, được nhắc đứng tránh

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、そこ<ruby>危<rt>あぶ</rt></ruby>ない!<ruby>下<rt>した</rt></ruby>に<ruby>立<rt>た</rt></ruby>つな!<br>*(Thức, đó nguy hiểm! Đừng đứng phía dưới!)* |
| Thức | (giật mình lùi lại) すみません!どこに<ruby>立<rt>た</rt></ruby>てばいいですか?<br>*(Em xin lỗi! Em đứng chỗ nào thì được ạ?)* |
| Kondo | <ruby>上<rt>うえ</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>してる<ruby>時<rt>とき</rt></ruby>は、<ruby>真下<rt>ました</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby><ruby>立<rt>た</rt></ruby>つな。<br>*(Khi có người làm trên cao, tuyệt đối không đứng ngay phía dưới.)* |
| Thức | はい、<ruby>真下<rt>ました</rt></ruby>には<ruby>立<rt>た</rt></ruby>ちません。<br>*(Vâng, em sẽ không đứng ngay dưới ạ.)* |
| Kondo | <ruby>物<rt>もの</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちてきたら<ruby>死<rt>し</rt></ruby>ぬで。マジで。<br>*(Đồ rơi xuống là chết đó. Nghiêm túc đấy.)* |
| Thức | はい...<ruby>気<rt>き</rt></ruby>をつけます。ありがとうございます。<br>*(Vâng... em sẽ chú ý. Cảm ơn anh ạ.)* |

---

## Tình huống 19 — Khu vật tư · 16:30, dọn dẹp cuối ca 片付け

| Vai | Lời thoại |
|---|---|
| Kondo | そろそろ<ruby>片付<rt>かたづ</rt></ruby>けや。<ruby>道具<rt>どうぐ</rt></ruby>を<ruby>元<rt>もと</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>して。<br>*(Sắp dọn dẹp rồi. Để dụng cụ về chỗ cũ.)* |
| Thức | はい。この<ruby>足場板<rt>あしばいた</rt></ruby>はどこに<ruby>置<rt>お</rt></ruby>きますか?<br>*(Vâng. Ván giàn giáo này để đâu ạ?)* |
| Kondo | あそこに<ruby>重<rt>かさ</rt></ruby>ねて。きれいにそろえてな。<br>*(Xếp chồng đằng kia. Sắp cho thẳng hàng nhé.)* |
| Thức | はい、そろえます。<ruby>他<rt>ほか</rt></ruby>に<ruby>何<rt>なに</rt></ruby>かありますか?<br>*(Vâng, em sắp ngay ngắn. Còn gì nữa không ạ?)* |
| Kondo | あとはゴミを<ruby>集<rt>あつ</rt></ruby>めたらええ。<br>*(Còn lại gom rác là được.)* |
| Thức | わかりました。やります。<br>*(Em hiểu rồi. Em làm ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 và chào về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>も<ruby>一日<rt>いちにち</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。ケガなし、<ruby>事故<rt>じこ</rt></ruby>なし。<br>*(Hôm nay cả ngày, mọi người vất vả rồi. Không thương tích, không tai nạn.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Saito | トゥックくん、<ruby>初日<rt>しょにち</rt></ruby>どうだった?<br>*(Thức, ngày đầu thế nào?)* |
| Thức | <ruby>大変<rt>たいへん</rt></ruby>でしたが、たくさん<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vất vả ạ, nhưng em học được rất nhiều ạ.)* |
| Tanigawa | また<ruby>明日<rt>あした</rt></ruby>な。<ruby>遅刻<rt>ちこく</rt></ruby>すんなよ。<br>*(Mai gặp lại. Đừng có đi muộn đấy.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Ngày đầu ở 現場, Thức học được những câu chào sống còn của nghề xây dựng: 「おはようございます」「お疲れさまです」「ご安全に」「お先に失礼します」. Quan trọng nhất, em hiểu khi không nghe rõ chỉ thị của 親方 thì phải nói 「すみません、もう一度お願いします」 và xác nhận lại 「〜ればいいですか?」 chứ tuyệt đối không gật bừa. Em cũng được khắc cốt bài học an toàn đầu tiên: không bao giờ đứng ngay dưới chỗ người khác làm trên cao, và フルハーネス là 命綱 — dây cứu mạng.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 現場 | げんば | Công trường |
> | 親方 | おやかた | Cai thợ (sếp tổ) |
> | 職長 | しょくちょう | Đốc công |
> | 先輩 | せんぱい | Đàn anh (thợ trước) |
> | 実習生 | じっしゅうせい | Thực tập sinh |
> | 足場 | あしば | Giàn giáo |
> | 足場板 | あしばいた | Ván giàn giáo |
> | 単管 | たんかん | Ống thép giàn giáo |
> | 安全帯 | あんぜんたい | Dây an toàn |
> | 命綱 | いのちづな | Dây cứu mạng |
> | 朝礼 | ちょうれい | Họp đầu giờ sáng |
> | 危険予知 | きけんよち | Dự báo nguy hiểm (KY) |
> | 高所作業 | こうしょさぎょう | Làm việc trên cao |
> | 整理整頓 | せいりせいとん | Gọn gàng ngăn nắp |
> | 片付け | かたづけ | Dọn dẹp |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000002, 800000033, NULL, 'markdown_book', 'T2. Đồ bảo hộ & an toàn vỡ lòng (安全基本)', '# Sách thực tập sinh xây dựng · T2. Đồ bảo hộ & an toàn vỡ lòng (安全基本)

> **Mục tiêu nhân vật:** Thức học các mẫu câu liên quan trang bị bảo hộ và quy tắc an toàn nền tảng: tên và cách dùng フルハーネス・安全靴・ヘルメット, cách báo cáo đeo/kiểm tra đồ bảo hộ, hô hấp khẩu lệnh KY, câu hỏi xác nhận an toàn với 職長.

---

## Bối cảnh

Tháng 4 năm 2026, tuần thứ hai của Thức. Hôm nay công ty tổ chức buổi huấn luyện an toàn (安全教育) bắt buộc cho người mới trước khi cho lên cao. Trọng tâm chương: từ vựng + mẫu câu về フルハーネス (dây an toàn toàn thân), 安全靴 (giày bảo hộ), ヘルメット (mũ), cách 職長 Saito kiểm tra, và các câu Thức dùng để báo cáo, hỏi lại, xác nhận đã đeo đúng.

---

## Tình huống 1 — Phòng họp công trường · 8:00, mở đầu buổi 安全教育

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>です。<ruby>新人<rt>しんじん</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>受<rt>う</rt></ruby>けます。<br>*(Hôm nay là huấn luyện an toàn. Người mới bắt buộc phải học.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |
| Saito | とびは<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<ruby>一番<rt>いちばん</rt></ruby><ruby>怖<rt>こわ</rt></ruby>いのは<ruby>墜落<rt>ついらく</rt></ruby>です。<br>*(Tobi là việc trên cao. Đáng sợ nhất là rơi từ trên cao.)* |
| Thức | ついらく...<ruby>落<rt>お</rt></ruby>ちることですか?<br>*(Tsuiraku... là rơi xuống ạ?)* |
| Saito | そうです。だから<ruby>安全<rt>あんぜん</rt></ruby><ruby>装備<rt>そうび</rt></ruby>がとても<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng. Vì thế trang bị an toàn rất quan trọng.)* |
| Thức | はい、しっかり<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ học kỹ ạ.)* |

---

## Tình huống 2 — Phòng họp · 8:15, học ヘルメット

| Vai | Lời thoại |
|---|---|
| Saito | まずヘルメット。あごひもは<ruby>必<rt>かなら</rt></ruby>ず<ruby>締<rt>し</rt></ruby>めます。<br>*(Trước hết là mũ bảo hộ. Quai cằm bắt buộc phải thắt.)* |
| Thức | あごひも、ですか?<br>*(Quai cằm ạ?)* |
| Saito | これです。ゆるいと<ruby>落<rt>お</rt></ruby>ちます。<ruby>意味<rt>いみ</rt></ruby>がありません。<br>*(Cái này. Lỏng thì rơi mất. Vô nghĩa.)* |
| Thức | あごひもを<ruby>締<rt>し</rt></ruby>める、ですね。こうですか?<br>*(Thắt quai cằm, đúng không ạ. Như thế này ạ?)* |
| Saito | そう。<ruby>指<rt>ゆび</rt></ruby><ruby>一本<rt>いっぽん</rt></ruby><ruby>入<rt>はい</rt></ruby>るくらいでいいです。<br>*(Đúng. Vừa lọt một ngón tay là được.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 3 — Phòng họp · 8:30, học 安全靴

| Vai | Lời thoại |
|---|---|
| Saito | これが<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>です。つま<ruby>先<rt>さき</rt></ruby>に<ruby>鉄<rt>てつ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っています。<br>*(Đây là giày bảo hộ. Mũi giày có thép.)* |
| Thức | どうして<ruby>鉄<rt>てつ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っているのですか?<br>*(Vì sao lại có thép ạ?)* |
| Saito | <ruby>重<rt>おも</rt></ruby>い<ruby>物<rt>もの</rt></ruby>が<ruby>足<rt>あし</rt></ruby>に<ruby>落<rt>お</rt></ruby>ちても、<ruby>指<rt>ゆび</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Đồ nặng rơi vào chân thì vẫn bảo vệ ngón chân.)* |
| Thức | なるほど。サンダルはだめですか?<br>*(Ra vậy. Dép thì không được ạ?)* |
| Saito | <ruby>絶対<rt>ぜったい</rt></ruby>だめ。<ruby>現場<rt>げんば</rt></ruby>は<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>だけです。<br>*(Tuyệt đối không. Công trường chỉ giày bảo hộ.)* |
| Thức | はい、いつも<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>をはきます。<br>*(Vâng, em luôn đi giày bảo hộ ạ.)* |

---

## Tình huống 4 — Phòng họp · 8:45, học フルハーネス kỹ

| Vai | Lời thoại |
|---|---|
| Saito | これがフルハーネスです。<ruby>体<rt>からだ</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Đây là dây an toàn toàn thân. Đỡ bằng toàn bộ cơ thể.)* |
| Thức | <ruby>腰<rt>こし</rt></ruby>だけのベルトとは<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Khác với loại đai chỉ ở hông ạ?)* |
| Saito | はい。<ruby>腰<rt>こし</rt></ruby>だけだと<ruby>落<rt>お</rt></ruby>ちたとき<ruby>危険<rt>きけん</rt></ruby>です。<ruby>今<rt>いま</rt></ruby>はフルハーネスが<ruby>義務<rt>ぎむ</rt></ruby>です。<br>*(Đúng. Chỉ ở hông thì khi rơi rất nguy hiểm. Giờ dây toàn thân là bắt buộc.)* |
| Thức | ぎむ、というのは<ruby>必<rt>かなら</rt></ruby>ずですか?<br>*(Gimu, tức là bắt buộc ạ?)* |
| Saito | そうです。<ruby>法律<rt>ほうりつ</rt></ruby>で<ruby>決<rt>き</rt></ruby>まっています。<br>*(Đúng. Pháp luật quy định rồi.)* |
| Thức | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rõ rồi ạ.)* |

---

## Tình huống 5 — Phòng họp · 9:00, tập đeo フルハーネス

| Vai | Lời thoại |
|---|---|
| Saito | やってみましょう。<ruby>肩<rt>かた</rt></ruby>に<ruby>通<rt>とお</rt></ruby>して、<ruby>胸<rt>むね</rt></ruby>のバックルを<ruby>留<rt>と</rt></ruby>めます。<br>*(Thử làm nhé. Luồn qua vai, cài khóa ngực.)* |
| Thức | (đeo thử) こうですか?<ruby>胸<rt>むね</rt></ruby>のここですか?<br>*(Như thế này ạ? Chỗ ngực này ạ?)* |
| Saito | そうです。<ruby>次<rt>つぎ</rt></ruby>は<ruby>足<rt>あし</rt></ruby>のベルト。きつすぎず、ゆるすぎず。<br>*(Đúng. Tiếp là đai chân. Không quá chặt, không quá lỏng.)* |
| Thức | <ruby>足<rt>あし</rt></ruby>のベルトも<ruby>留<rt>と</rt></ruby>めました。<ruby>確認<rt>かくにん</rt></ruby>してもらえますか?<br>*(Đai chân em cũng cài rồi. Anh kiểm tra giúp em được không ạ?)* |
| Saito | (kiểm tra) うん、いいですね。<ruby>毎回<rt>まいかい</rt></ruby>こうやって<ruby>点検<rt>てんけん</rt></ruby>します。<br>*(Ừ, được đấy. Mỗi lần phải kiểm tra như vậy.)* |
| Thức | はい、<ruby>毎回<rt>まいかい</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>します。<br>*(Vâng, mỗi lần em sẽ kiểm tra ạ.)* |

---

## Tình huống 6 — Phòng họp · 9:20, học フック móc đúng chỗ

| Vai | Lời thoại |
|---|---|
| Saito | フルハーネスのフックは、<ruby>腰<rt>こし</rt></ruby>より<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>にかけます。<br>*(Móc của dây an toàn phải móc vào chỗ cao hơn hông.)* |
| Thức | <ruby>腰<rt>こし</rt></ruby>より<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>...どうしてですか?<br>*(Chỗ cao hơn hông... vì sao ạ?)* |
| Saito | <ruby>低<rt>ひく</rt></ruby>いと、<ruby>落<rt>お</rt></ruby>ちる<ruby>距離<rt>きょり</rt></ruby>が<ruby>長<rt>なが</rt></ruby>くなって<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Thấp thì khoảng rơi dài ra, nguy hiểm.)* |
| Thức | わかりました。いつも<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>にかけます。<br>*(Em hiểu rồi. Em luôn móc vào chỗ cao ạ.)* |
| Saito | あと、<ruby>移動<rt>いどう</rt></ruby>のときも<ruby>必<rt>かなら</rt></ruby>ずかけたままです。<br>*(Còn nữa, khi di chuyển cũng luôn giữ móc.)* |
| Thức | はい、はずしません。<br>*(Vâng, em sẽ không tháo ạ.)* |

---

## Tình huống 7 — Phòng họp · 9:40, học khẩu lệnh 指差し呼称

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>現場<rt>げんば</rt></ruby>では「<ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>呼称<rt>こしょう</rt></ruby>」をします。<ruby>指<rt>ゆび</rt></ruby>でさして、<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>します。<br>*(Ở công trường ta làm "chỉ tay xướng tên". Chỉ tay và nói thành tiếng.)* |
| Thức | どんなふうに<ruby>言<rt>い</rt></ruby>いますか?<br>*(Nói như thế nào ạ?)* |
| Saito | フックを<ruby>指<rt>ゆび</rt></ruby>さして「フックよし!」と<ruby>言<rt>い</rt></ruby>います。やってみて。<br>*(Chỉ vào móc và nói "Móc, OK!". Thử đi.)* |
| Thức | (chỉ tay) フックよし!<br>*(Móc, OK!)* |
| Saito | いいですね。<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で。<ruby>確認<rt>かくにん</rt></ruby>を<ruby>習慣<rt>しゅうかん</rt></ruby>にします。<br>*(Tốt đấy. To lên. Biến việc xác nhận thành thói quen.)* |
| Thức | はい、<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, em sẽ nói thật to ạ.)* |

---

## Tình huống 8 — Phòng họp · 10:00, học 3点支持

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>足場<rt>あしば</rt></ruby>を<ruby>登<rt>のぼ</rt></ruby>るとき、「3<ruby>点<rt>てん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>」を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Khi leo giàn giáo, phải giữ "ba điểm tựa".)* |
| Thức | 3<ruby>点<rt>てん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>、というのは?<br>*(Ba điểm tựa, là sao ạ?)* |
| Saito | <ruby>手<rt>て</rt></ruby><ruby>2<rt>ふた</rt></ruby>つと<ruby>足<rt>あし</rt></ruby><ruby>2<rt>ふた</rt></ruby>つ、いつも3つは<ruby>掴<rt>つか</rt></ruby>んだままにします。<br>*(Hai tay hai chân, lúc nào cũng giữ ít nhất ba điểm.)* |
| Thức | <ruby>動<rt>うご</rt></ruby>かすのは<ruby>一<rt>ひと</rt></ruby>つだけ、ですね。<br>*(Chỉ di chuyển một điểm thôi, đúng không ạ.)* |
| Saito | そのとおり。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>一<rt>ひと</rt></ruby>つずつ。<br>*(Đúng vậy. Đừng vội, từng cái một.)* |
| Thức | はい、<ruby>急<rt>いそ</rt></ruby>ぎません。<br>*(Vâng, em sẽ không vội ạ.)* |

---

## Tình huống 9 — Sân ký túc · 12:30, hỏi anh Long về fullharness (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Sáng học フルハーネス hả? Cái đó cứu mạng anh một lần đấy. |
| Thức | Thật ạ? Anh kể em nghe với. |
| Anh Long | Năm ngoái anh trượt chân ở tầng 4, may có móc dây đúng chỗ cao nên chỉ treo lơ lửng, không sao. Không đeo thì giờ không ngồi đây nói chuyện. |
| Thức | Sợ thật anh. Em sẽ không bao giờ quên móc dây. |
| Anh Long | Nhớ nhé. Lười một giây là trả giá cả đời. Lên cao là móc liền, di chuyển cũng đừng tháo. |
| Thức | Vâng, em khắc cốt ghi tâm ạ. |

---

## Tình huống 10 — Phòng họp · 13:00, học biển báo nguy hiểm

| Vai | Lời thoại |
|---|---|
| Saito | この<ruby>赤<rt>あか</rt></ruby>いテープは「<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>」です。<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りません。<br>*(Băng đỏ này là "Cấm vào". Không được vào trong.)* |
| Thức | <ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>...<ruby>絶対<rt>ぜったい</rt></ruby><ruby>入<rt>はい</rt></ruby>らないですね。<br>*(Cấm vào... tuyệt đối không vào đúng không ạ.)* |
| Saito | そうです。<ruby>黄色<rt>きいろ</rt></ruby>は「<ruby>注意<rt>ちゅうい</rt></ruby>」。<ruby>気<rt>き</rt></ruby>をつけて<ruby>通<rt>とお</rt></ruby>ります。<br>*(Đúng. Vàng là "Chú ý". Đi qua phải cẩn thận.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からないテープがあったら、どうしますか?<br>*(Nếu gặp băng không hiểu thì làm sao ạ?)* |
| Saito | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>しない。<br>*(Câu hỏi hay. Nhất định phải hỏi. Đừng tự ý phán đoán.)* |
| Thức | はい、<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>しません。<br>*(Vâng, em sẽ không tự ý phán đoán ạ.)* |

---

## Tình huống 11 — Phòng họp · 13:30, học 工具 đeo người an toàn

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>では、<ruby>道具<rt>どうぐ</rt></ruby>に<ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>のひもをつけます。<br>*(Trên cao, dụng cụ phải buộc dây chống rơi.)* |
| Thức | <ruby>道具<rt>どうぐ</rt></ruby>にもひもですか?<br>*(Dụng cụ cũng buộc dây ạ?)* |
| Saito | はい。スパナ<ruby>一本<rt>いっぽん</rt></ruby>でも、<ruby>落<rt>お</rt></ruby>ちたら<ruby>下<rt>した</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>死<rt>し</rt></ruby>ぬこともあります。<br>*(Đúng. Chỉ một cái cờ-lê rơi xuống cũng có thể giết người phía dưới.)* |
| Thức | こわいですね。かならずひもをつけます。<br>*(Đáng sợ ạ. Em nhất định sẽ buộc dây.)* |
| Saito | そう。「<ruby>小<rt>ちい</rt></ruby>さい<ruby>物<rt>もの</rt></ruby>でも<ruby>凶器<rt>きょうき</rt></ruby>」と<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Đúng. Hãy nhớ "đồ nhỏ vẫn là hung khí".)* |
| Thức | はい、おぼえます。<br>*(Vâng, em ghi nhớ ạ.)* |

---

## Tình huống 12 — Hiện trường · 14:00, kiểm tra trang bị trước khi lên cao

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>実際<rt>じっさい</rt></ruby>にやってみます。トゥックくん、<ruby>装備<rt>そうび</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>を。<br>*(Làm thử thực tế. Thức, kiểm tra trang bị đi.)* |
| Thức | はい。ヘルメット、あごひも、よし。<br>*(Vâng. Mũ, quai cằm, OK.)* |
| Thức | <ruby>安全靴<rt>あんぜんぐつ</rt></ruby>、よし。フルハーネス、よし。<br>*(Giày bảo hộ, OK. Dây an toàn, OK.)* |
| Saito | フックは?<br>*(Còn móc?)* |
| Thức | (chỉ tay) フック、よし!<br>*(Móc, OK!)* |
| Saito | はい、<ruby>完璧<rt>かんぺき</rt></ruby>です。これを<ruby>毎回<rt>まいかい</rt></ruby>やります。<br>*(Được, hoàn hảo. Cái này mỗi lần đều phải làm.)* |

---

## Tình huống 13 — Chân giàn giáo · 14:20, 親方 kiểm tra đột xuất

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、ハーネスのフックどこかけとる?<br>*(Thức, móc dây mày đang móc ở đâu?)* |
| Thức | <ruby>頭<rt>あたま</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>の<ruby>横<rt>よこ</rt></ruby>パイプです。<br>*(Ống ngang phía trên đầu ạ.)* |
| Tanigawa | (kiểm tra) ええ<ruby>位置<rt>いち</rt></ruby>や。それでええ。<br>*(Vị trí tốt. Thế là được.)* |
| Thức | ありがとうございます。あっていますか?<br>*(Cảm ơn sếp ạ. Có đúng không ạ?)* |
| Tanigawa | あっとる。<ruby>新人<rt>しんじん</rt></ruby>にしてはええ<ruby>覚<rt>おぼ</rt></ruby>えや。<br>*(Đúng rồi. So với người mới thì nhớ tốt đấy.)* |
| Thức | はい、しっかりやります。<br>*(Vâng, em sẽ làm cẩn thận ạ.)* |

---

## Tình huống 14 — Chân giàn giáo · 14:40, được nhắc về mũ chưa cài quai

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、あごひも<ruby>緩<rt>ゆる</rt></ruby>んでるよ。<br>*(Thức, quai cằm em đang lỏng kìa.)* |
| Thức | あ、すみません!すぐ<ruby>締<rt>し</rt></ruby>めます。<br>*(À, em xin lỗi! Em thắt lại ngay ạ.)* |
| Kondo | <ruby>下<rt>した</rt></ruby>を<ruby>向<rt>む</rt></ruby>いた<ruby>時<rt>とき</rt></ruby>に<ruby>落<rt>お</rt></ruby>ちたら<ruby>意味<rt>いみ</rt></ruby>ないからな。<br>*(Cúi xuống mà mũ rơi thì vô nghĩa nhé.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>をつけます。<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Vâng, em chú ý. Anh kiểm tra giúp em ạ.)* |
| Kondo | うん、<ruby>今<rt>いま</rt></ruby>はええ。クセにしてな。<br>*(Ừ, giờ ổn rồi. Tạo thành thói quen nhé.)* |
| Thức | はい、いつも<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em luôn kiểm tra ạ.)* |

---

## Tình huống 15 — Khu nghỉ · 15:00, 休憩 nói chuyện về an toàn

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>どうやった?<br>*(Thức, huấn luyện an toàn thế nào?)* |
| Thức | <ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>が<ruby>多<rt>おお</rt></ruby>かったですが、<ruby>大事<rt>だいじ</rt></ruby>だと<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Nhiều từ khó ạ, nhưng em hiểu là rất quan trọng.)* |
| Kondo | そうや。<ruby>言葉<rt>ことば</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えたらええ。まず<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>える。<br>*(Đúng. Từ vựng học sau cũng được. Trước hết học bằng cơ thể.)* |
| Thức | <ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>える...いい<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Học bằng cơ thể... câu hay nhỉ ạ.)* |
| Kondo | <ruby>毎日<rt>まいにち</rt></ruby>やれば<ruby>自然<rt>しぜん</rt></ruby>に<ruby>身<rt>み</rt></ruby>につくよ。<br>*(Làm mỗi ngày thì tự nhiên thành kỹ năng.)* |
| Thức | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng mỗi ngày ạ.)* |

---

## Tình huống 16 — Hiện trường · 15:20, tập tháo móc khi đổi vị trí

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>移動<rt>いどう</rt></ruby>するとき、フックは<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>あります。<ruby>一本<rt>いっぽん</rt></ruby>ずつかけ<ruby>替<rt>か</rt></ruby>えます。<br>*(Khi di chuyển, móc có hai cái. Đổi từng cái một.)* |
| Thức | <ruby>一本<rt>いっぽん</rt></ruby>はずす<ruby>前<rt>まえ</rt></ruby>に、もう<ruby>一本<rt>いっぽん</rt></ruby>かけますか?<br>*(Trước khi tháo một cái, móc cái kia trước ạ?)* |
| Saito | そうです。それを「<ruby>二丁<rt>にちょう</rt></ruby>かけ」と<ruby>言<rt>い</rt></ruby>います。<ruby>常<rt>つね</rt></ruby>にどちらかかけたまま。<br>*(Đúng. Gọi là "móc đôi". Luôn giữ ít nhất một cái móc.)* |
| Thức | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>両方<rt>りょうほう</rt></ruby>はずさない、ですね。<br>*(Tuyệt đối không tháo cả hai, đúng không ạ.)* |
| Saito | そのとおり。これが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Đúng vậy. Cái này quan trọng nhất.)* |
| Thức | はい、ぜったい<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em nhất định tuân thủ ạ.)* |

---

## Tình huống 17 — Hiện trường · 15:40, báo cáo hoàn thành kiểm tra

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>装備<rt>そうび</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<br>*(Đốc công, kiểm tra trang bị, xong hết rồi ạ.)* |
| Saito | <ruby>問題<rt>もんだい</rt></ruby>ありませんでしたか?<br>*(Không có vấn đề gì chứ?)* |
| Thức | フルハーネスのベルトが<ruby>少<rt>すこ</rt></ruby>し<ruby>傷<rt>きず</rt></ruby>んでいます。<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Đai dây an toàn hơi bị sờn. Em xin báo cáo ạ.)* |
| Saito | よく<ruby>気<rt>き</rt></ruby>づきました。それは<ruby>交換<rt>こうかん</rt></ruby>します。<ruby>使<rt>つか</rt></ruby>わないでください。<br>*(Phát hiện tốt lắm. Cái đó phải thay. Đừng dùng nữa.)* |
| Thức | はい、<ruby>新<rt>あたら</rt></ruby>しいのをもらえますか?<br>*(Vâng, em xin cái mới được không ạ?)* |
| Saito | もちろん。<ruby>気<rt>き</rt></ruby>づいて<ruby>報告<rt>ほうこく</rt></ruby>する、それが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Tất nhiên. Phát hiện và báo cáo, điều đó quan trọng.)* |

---

## Tình huống 18 — Hiện trường · 16:00, được khen vì báo cáo đúng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、ベルトの<ruby>傷<rt>きず</rt></ruby>、お<ruby>前<rt>まえ</rt></ruby>が<ruby>見<rt>み</rt></ruby>つけたんか?<br>*(Thức, vết sờn ở đai, mày tìm ra hả?)* |
| Thức | はい、<ruby>点検<rt>てんけん</rt></ruby>のとき<ruby>気<rt>き</rt></ruby>づきました。<br>*(Vâng, lúc kiểm tra em phát hiện ạ.)* |
| Tanigawa | ええぞ。<ruby>命<rt>いのち</rt></ruby>にかかわる<ruby>道具<rt>どうぐ</rt></ruby>や。よう<ruby>見<rt>み</rt></ruby>とった。<br>*(Tốt. Là dụng cụ liên quan đến mạng sống. Quan sát tốt đấy.)* |
| Thức | ありがとうございます。これからも<ruby>注意<rt>ちゅうい</rt></ruby>します。<br>*(Cảm ơn sếp ạ. Từ giờ em sẽ chú ý ạ.)* |
| Tanigawa | <ruby>新人<rt>しんじん</rt></ruby>でも<ruby>気<rt>き</rt></ruby>づくやつは<ruby>伸<rt>の</rt></ruby>びる。その<ruby>調子<rt>ちょうし</rt></ruby>や。<br>*(Người mới mà biết để ý là sẽ tiến bộ. Cứ đà đó.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng, em sẽ cố gắng ạ!)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け & cất đồ bảo hộ

| Vai | Lời thoại |
|---|---|
| Kondo | フルハーネスは<ruby>丸<rt>まる</rt></ruby>めずに、ここにかけて。<br>*(Dây an toàn đừng cuộn lại, treo vào đây.)* |
| Thức | かけるだけでいいですか?<br>*(Chỉ treo lên là được ạ?)* |
| Kondo | そう。<ruby>絡<rt>から</rt></ruby>まると<ruby>次<rt>つぎ</rt></ruby><ruby>使<rt>つか</rt></ruby>うとき<ruby>困<rt>こま</rt></ruby>る。<br>*(Đúng. Rối thì lần sau dùng khổ.)* |
| Thức | ヘルメットはどこに<ruby>置<rt>お</rt></ruby>きますか?<br>*(Mũ bảo hộ để đâu ạ?)* |
| Kondo | その<ruby>棚<rt>たな</rt></ruby>に。<ruby>名前<rt>なまえ</rt></ruby>シール<ruby>貼<rt>は</rt></ruby>ってあるとこな。<br>*(Vào kệ đó. Chỗ có dán nhãn tên ấy.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>はみんな<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hôm nay mọi người huấn luyện an toàn, vất vả rồi.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Saito | トゥックくん、<ruby>明日<rt>あした</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がります。<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Thức, mai bắt đầu lên cao một chút. Chuẩn bị tốt chưa?)* |
| Thức | はい、しっかり<ruby>装備<rt>そうび</rt></ruby>を<ruby>点検<rt>てんけん</rt></ruby>します。<br>*(Vâng, em sẽ kiểm tra trang bị kỹ ạ.)* |
| Tanigawa | あわてんなよ。ゆっくりでええ。<br>*(Đừng cuống. Cứ từ từ.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức nắm được tên và cách dùng ba món bảo hộ sống còn: ヘルメット (mũ, phải thắt あごひも), 安全靴 (giày mũi thép), フルハーネス (dây an toàn toàn thân, móc cao hơn hông, 二丁かけ khi di chuyển). Em học khẩu lệnh xác nhận 「フックよし!」 theo lối 指差し呼称, quy tắc 3点支持 khi leo, và bài học không tự ý phán đoán biển báo. Quan trọng: em đã biết cách báo cáo khi phát hiện thiết bị hỏng — và được 親方 khen vì điều đó.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 安全教育 | あんぜんきょういく | Huấn luyện an toàn |
> | 墜落 | ついらく | Rơi từ trên cao |
> | 安全靴 | あんぜんぐつ | Giày bảo hộ |
> | 安全帯 | あんぜんたい | Dây an toàn |
> | 義務 | ぎむ | Bắt buộc (theo luật) |
> | 指差し呼称 | ゆびさしこしょう | Chỉ tay xướng tên |
> | 点検 | てんけん | Kiểm tra |
> | 二丁かけ | にちょうかけ | Móc đôi (luôn giữ 1 móc) |
> | 立入禁止 | たちいりきんし | Cấm vào |
> | 落下防止 | らっかぼうし | Chống rơi |
> | 装備 | そうび | Trang bị |
> | 移動 | いどう | Di chuyển |
> | 報告 | ほうこく | Báo cáo |
> | 交換 | こうかん | Thay (đổi) |
> | 習慣 | しゅうかん | Thói quen |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000003, 800000033, NULL, 'markdown_book', 'T3. Làm 手元 — phụ việc, đưa dụng cụ (手元)', '# Sách thực tập sinh xây dựng · T3. Làm 手元 — phụ việc, đưa dụng cụ (手元)

> **Mục tiêu nhân vật:** Thức học vai trò 手元 (temoto — phụ việc cho thợ chính): nghe gọi tên dụng cụ và đưa đúng, trả lời 「はい!」 dứt khoát, hỏi lại khi không rõ, chuyền vật liệu lên cao an toàn, mẫu câu xin/đưa/nhận dụng cụ.

---

## Bối cảnh

Tháng 5 năm 2026. Thức đã quen công trường, nay được giao làm 手元 cho 先輩 Kondo khi tổ bắt đầu chuẩn bị lắp giàn giáo. 手元 là người đứng dưới hoặc bên cạnh, đưa dụng cụ và vật liệu cho thợ chính đúng lúc. Chương tập trung mẫu câu nghe-gọi-tên-dụng-cụ, đáp 「はい!」, xác nhận 「これですか?」, chuyền đồ 「いきます!」「お願いします」, và báo hết vật liệu.

---

## Tình huống 1 — Chân giàn giáo · 8:10, được giao làm 手元

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>俺<rt>おれ</rt></ruby>の<ruby>手元<rt>てもと</rt></ruby>やってもらう。<br>*(Thức, từ hôm nay làm temoto cho anh.)* |
| Thức | <ruby>手元<rt>てもと</rt></ruby>、というのは<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Temoto, là làm gì ạ?)* |
| Kondo | <ruby>俺<rt>おれ</rt></ruby>が「スパナ」と<ruby>言<rt>い</rt></ruby>ったら、すぐ<ruby>渡<rt>わた</rt></ruby>す。それだけ。<br>*(Anh nói "cờ-lê" thì đưa ngay. Chỉ vậy thôi.)* |
| Thức | <ruby>道具<rt>どうぐ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す<ruby>仕事<rt>しごと</rt></ruby>ですね。<br>*(Việc đưa dụng cụ đúng không ạ.)* |
| Kondo | そう。<ruby>名前<rt>なまえ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えてないと<ruby>困<rt>こま</rt></ruby>るぞ。<br>*(Đúng. Không nhớ tên là khổ đấy.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>って<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ cố nhớ ạ.)* |

---

## Tình huống 2 — Khu vật tư · 8:20, học tên dụng cụ cơ bản

| Vai | Lời thoại |
|---|---|
| Kondo | これがラチェット。これがハンマー。これがインパクト。<br>*(Đây là cờ-lê tự động. Đây là búa. Đây là máy siết.)* |
| Thức | インパクト...<ruby>電動<rt>でんどう</rt></ruby>の<ruby>工具<rt>こうぐ</rt></ruby>ですか?<br>*(Inpakuto... là dụng cụ chạy điện ạ?)* |
| Kondo | そう、ボルトを<ruby>締<rt>し</rt></ruby>めるやつ。これは「<ruby>番線<rt>ばんせん</rt></ruby>」。<ruby>針金<rt>はりがね</rt></ruby>な。<br>*(Đúng, cái siết bu-lông. Còn đây là "bansen". Dây thép đó.)* |
| Thức | ばんせん、はりがね、ですね。メモします。<br>*(Bansen, dây thép, đúng không ạ. Em ghi lại.)* |
| Kondo | <ruby>覚<rt>おぼ</rt></ruby>えたら<ruby>復唱<rt>ふくしょう</rt></ruby>してみ。<br>*(Nhớ rồi thì đọc lại thử xem.)* |
| Thức | ラチェット、ハンマー、インパクト、<ruby>番線<rt>ばんせん</rt></ruby>。<br>*(Cờ-lê tự động, búa, máy siết, dây thép.)* |

---

## Tình huống 3 — Chân giàn giáo · 8:40, đưa dụng cụ lần đầu

| Vai | Lời thoại |
|---|---|
| Kondo | (từ trên) トゥックくん、ハンマー!<br>*(Thức, búa!)* |
| Thức | はい!ハンマー、いきます!<br>*(Vâng! Búa đây!)* |
| Kondo | (nhận) おう。<ruby>次<rt>つぎ</rt></ruby>、ラチェット!<br>*(Ờ. Tiếp, cờ-lê tự động!)* |
| Thức | (cầm lên) これですか?<br>*(Cái này ạ?)* |
| Kondo | そう、それ。はやく!<br>*(Đúng, cái đó. Nhanh!)* |
| Thức | はい、すみません!いきます!<br>*(Vâng, em xin lỗi! Đây ạ!)* |

---

## Tình huống 4 — Chân giàn giáo · 9:00, học cách đưa an toàn

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>下<rt>した</rt></ruby>から<ruby>投<rt>な</rt></ruby>げたらあかん。<ruby>絶対<rt>ぜったい</rt></ruby>や。<br>*(Thức, không được ném từ dưới lên. Tuyệt đối nhé.)* |
| Thức | では、どうやって<ruby>渡<rt>わた</rt></ruby>しますか?<br>*(Vậy đưa thế nào ạ?)* |
| Kondo | ロープのバケツに<ruby>入<rt>い</rt></ruby>れる。<ruby>俺<rt>おれ</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げる。<br>*(Bỏ vào xô có dây. Anh kéo lên.)* |
| Thức | バケツに<ruby>入<rt>い</rt></ruby>れて、「いいですか?」と<ruby>聞<rt>き</rt></ruby>けばいいですか?<br>*(Bỏ vào xô, rồi hỏi "Được chưa ạ?" là được ạ?)* |
| Kondo | そう。「いきます」<ruby>言<rt>い</rt></ruby>うてから<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>らせろ。<br>*(Đúng. Nói "Đây nhé" rồi mới cho anh kéo.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 5 — Chân giàn giáo · 9:20, chuyền vật liệu bằng xô

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、バケツ、いきます!<br>*(Anh Kondo, xô đây nhé!)* |
| Kondo | おう、<ruby>引<rt>ひ</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げるぞ。<ruby>手<rt>て</rt></ruby><ruby>離<rt>はな</rt></ruby>して。<br>*(Ờ, anh kéo lên đây. Buông tay ra.)* |
| Thức | はい、<ruby>離<rt>はな</rt></ruby>しました。<br>*(Vâng, em buông rồi ạ.)* |
| Kondo | (kéo lên) よし、<ruby>取<rt>と</rt></ruby>った。<br>*(Được, lấy được rồi.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>入<rt>い</rt></ruby>れますか?<br>*(Tiếp theo bỏ gì vào ạ?)* |
| Kondo | <ruby>番線<rt>ばんせん</rt></ruby>を<ruby>一束<rt>ひとたば</rt></ruby><ruby>頼<rt>たの</rt></ruby>む。<br>*(Cho một bó dây thép.)* |

---

## Tình huống 6 — Chân giàn giáo · 9:40, không nghe rõ tên dụng cụ

| Vai | Lời thoại |
|---|---|
| Kondo | (từ trên, gió to) トゥックくん、◯◯<ruby>取<rt>と</rt></ruby>って!<br>*(Thức, lấy ◯◯!)* |
| Thức | すみません、<ruby>聞<rt>き</rt></ruby>こえません!もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Em xin lỗi, em không nghe rõ! Anh nói lại lần nữa ạ!)* |
| Kondo | ク・サ・ビ!くさび!<br>*(Cu-sa-bi! Cái nêm chêm!)* |
| Thức | くさび、ですね!これですか?<br>*(Kusabi ạ! Cái này ạ?)* |
| Kondo | そう!それ!<br>*(Đúng! Cái đó!)* |
| Thức | はい、いきます!<br>*(Vâng, đây ạ!)* |

---

## Tình huống 7 — Chân giàn giáo · 10:00, 親方 sai làm 手元 cho mình

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、ちょっと<ruby>俺<rt>おれ</rt></ruby>の<ruby>手元<rt>てもと</rt></ruby><ruby>来<rt>こ</rt></ruby>い。<br>*(Thức, lại đây làm temoto cho tao chút.)* |
| Thức | はい!<ruby>親方<rt>おやかた</rt></ruby>、<ruby>何<rt>なに</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しますか?<br>*(Vâng! Sếp, em chuẩn bị gì ạ?)* |
| Tanigawa | クランプ<ruby>10<rt>じゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>、そこに<ruby>並<rt>なら</rt></ruby>べとけ。<br>*(Mười cái cùm, xếp ra đó.)* |
| Thức | クランプ<ruby>10<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>並<rt>なら</rt></ruby>べます。<br>*(Mười cái cùm, em xếp ra ạ.)* |
| Tanigawa | はやめにな。<ruby>手<rt>て</rt></ruby><ruby>止<rt>と</rt></ruby>めたないんや。<br>*(Nhanh chút. Tao không muốn ngừng tay.)* |
| Thức | はい、すぐやります!<br>*(Vâng, em làm ngay ạ!)* |

---

## Tình huống 8 — Chân giàn giáo · 10:20, đưa nhầm dụng cụ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、それと<ruby>違<rt>ちが</rt></ruby>う。<ruby>17<rt>じゅうなな</rt></ruby>のラチェットや。<br>*(Thức, không phải cái đó. Cờ-lê số 17.)* |
| Thức | すみません!<ruby>17<rt>じゅうなな</rt></ruby>...これですか?<br>*(Em xin lỗi! Số 17... cái này ạ?)* |
| Tanigawa | そうや。サイズ<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>渡<rt>わた</rt></ruby>せ。<br>*(Đúng. Xác nhận cỡ rồi hẵng đưa.)* |
| Thức | はい、<ruby>次<rt>つぎ</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>します。すみませんでした。<br>*(Vâng, lần sau em sẽ xác nhận. Em xin lỗi ạ.)* |
| Tanigawa | ええ。<ruby>間違<rt>まちが</rt></ruby>えたらすぐ<ruby>謝<rt>あやま</rt></ruby>る、それでええ。<br>*(Được. Sai thì xin lỗi ngay, thế là được.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn sếp ạ.)* |

---

## Tình huống 9 — Khu nghỉ · 10:40, anh Long dặn mẹo 手元 (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Làm 手元 mệt đầu hơn làm tay chân đấy, phải đoán trước thợ cần gì. |
| Thức | Vâng anh, em toàn bị gọi xong mới quýnh tìm. |
| Anh Long | Mẹo này: nhìn thợ đang làm bước nào thì đoán bước sau cần gì, chuẩn bị sẵn để cạnh chân. Lắp được nửa năm em sẽ tự đoán. |
| Thức | Hay quá anh. Còn tên dụng cụ nhiều quá em chưa thuộc hết. |
| Anh Long | Ghi vào sổ, tối về đọc lại. Quan trọng là nghe không rõ thì hỏi lại liền, đừng đưa đại — đưa sai dụng cụ trên cao là nguy hiểm. |
| Thức | Vâng em nhớ rồi ạ. Cảm ơn anh. |

---

## Tình huống 10 — Chân giàn giáo · 11:00, học đoán trước dụng cụ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今<rt>いま</rt></ruby><ruby>俺<rt>おれ</rt></ruby><ruby>何<rt>なに</rt></ruby>やってる?<br>*(Thức, giờ anh đang làm gì?)* |
| Thức | ボルトを<ruby>締<rt>し</rt></ruby>めています。<br>*(Anh đang siết bu-lông ạ.)* |
| Kondo | じゃあ<ruby>次<rt>つぎ</rt></ruby><ruby>何<rt>なに</rt></ruby><ruby>要<rt>い</rt></ruby>ると<ruby>思<rt>おも</rt></ruby>う?<br>*(Vậy em nghĩ tiếp theo cần gì?)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>のボルト...<ruby>用意<rt>ようい</rt></ruby>しておきますか?<br>*(Bu-lông tiếp theo... em chuẩn bị sẵn ạ?)* |
| Kondo | そう!それが<ruby>手元<rt>てもと</rt></ruby>や。<ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む。<br>*(Đúng! Đó mới là temoto. Đọc trước nhu cầu.)* |
| Thức | はい、<ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>みます。<br>*(Vâng, em sẽ đọc trước ạ.)* |

---

## Tình huống 11 — Chân giàn giáo · 11:20, báo hết vật liệu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、クランプがなくなりました。<br>*(Anh Kondo, hết cùm rồi ạ.)* |
| Kondo | お、もうないか。<ruby>倉庫<rt>そうこ</rt></ruby>から<ruby>持<rt>も</rt></ruby>って<ruby>来<rt>き</rt></ruby>て。<br>*(Ồ, hết rồi à. Lấy từ kho ra đi.)* |
| Thức | <ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby>くらい<ruby>持<rt>も</rt></ruby>って<ruby>来<rt>き</rt></ruby>ますか?<br>*(Lấy khoảng bao nhiêu cái ạ?)* |
| Kondo | とりあえず<ruby>20<rt>にじゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>頼<rt>たの</rt></ruby>む。<br>*(Tạm hai mươi cái nhé.)* |
| Thức | はい、<ruby>20<rt>にじゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>持<rt>も</rt></ruby>って<ruby>来<rt>き</rt></ruby>ます。<br>*(Vâng, em lấy hai mươi cái ạ.)* |
| Kondo | <ruby>急<rt>いそ</rt></ruby>がんでええ、こけんなよ。<br>*(Không cần vội, đừng vấp ngã đấy.)* |

---

## Tình huống 12 — Kho vật tư · 11:30, xin chìa khóa kho

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>倉庫<rt>そうこ</rt></ruby>の<ruby>鍵<rt>かぎ</rt></ruby>をお<ruby>借<rt>か</rt></ruby>りできますか?<br>*(Đốc công, em mượn chìa khóa kho được không ạ?)* |
| Saito | はい。<ruby>何<rt>なに</rt></ruby>を<ruby>取<rt>と</rt></ruby>りますか?<br>*(Được. Lấy gì thế?)* |
| Thức | クランプを<ruby>20<rt>にじゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>取<rt>と</rt></ruby>りに<ruby>行<rt>い</rt></ruby>きます。<br>*(Em đi lấy hai mươi cái cùm ạ.)* |
| Saito | わかりました。<ruby>取<rt>と</rt></ruby>ったら<ruby>数<rt>かず</rt></ruby>をノートに<ruby>書<rt>か</rt></ruby>いてください。<br>*(Hiểu rồi. Lấy xong ghi số vào sổ nhé.)* |
| Thức | はい、ノートに<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em ghi vào sổ ạ.)* |
| Saito | <ruby>鍵<rt>かぎ</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>返<rt>かえ</rt></ruby>してくださいね。<br>*(Chìa khóa nhớ trả lại nhé.)* |

---

## Tình huống 13 — Chân giàn giáo · 12:00, đưa nước cho thợ trên cao

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、ちょっと<ruby>水<rt>みず</rt></ruby><ruby>上<rt>あ</rt></ruby>げて。<br>*(Thức, đưa nước lên chút.)* |
| Thức | はい、ペットボトルをバケツに<ruby>入<rt>い</rt></ruby>れます。<br>*(Vâng, em bỏ chai nước vào xô ạ.)* |
| Kondo | <ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>頼<rt>たの</rt></ruby>む。<ruby>上<rt>うえ</rt></ruby>あついわ。<br>*(Hai chai nhé. Trên này nóng quá.)* |
| Thức | <ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>ですね。いきます!<br>*(Hai chai ạ. Đây nhé!)* |
| Kondo | おう、ありがとな。<ruby>気<rt>き</rt></ruby><ruby>利<rt>き</rt></ruby>くやん。<br>*(Ờ, cảm ơn nhé. Khéo đấy.)* |
| Thức | いえ、<ruby>当然<rt>とうぜん</rt></ruby>です。<br>*(Dạ không, chuyện đương nhiên ạ.)* |

---

## Tình huống 14 — Chân giàn giáo · 13:00, nhận lại dụng cụ từ trên

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>下<rt>した</rt></ruby><ruby>行<rt>い</rt></ruby>くぞ。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って。<br>*(Thức, đưa xuống đây. Nhận lấy.)* |
| Thức | はい、バケツ<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ります。<br>*(Vâng, em nhận xô ạ.)* |
| Kondo | <ruby>中<rt>なか</rt></ruby>にハンマー<ruby>入<rt>はい</rt></ruby>っとるから<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Trong có búa nên cẩn thận.)* |
| Thức | わかりました。(nhận) はい、<ruby>取<rt>と</rt></ruby>りました。<br>*(Em hiểu rồi. Vâng, em nhận được rồi ạ.)* |
| Kondo | それ<ruby>元<rt>もと</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>しといて。<br>*(Để cái đó về chỗ cũ đi.)* |
| Thức | はい、<ruby>戻<rt>もど</rt></ruby>します。<br>*(Vâng, em để về chỗ ạ.)* |

---

## Tình huống 15 — Chân giàn giáo · 13:30, được nhắc đứng vị trí an toàn

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>手元<rt>てもと</rt></ruby>でも<ruby>真下<rt>ました</rt></ruby>に<ruby>立<rt>た</rt></ruby>たないでください。<br>*(Thức, làm temoto cũng đừng đứng ngay phía dưới.)* |
| Thức | あ、すみません。どこに<ruby>立<rt>た</rt></ruby>てばいいですか?<br>*(À, em xin lỗi. Em đứng đâu thì được ạ?)* |
| Saito | <ruby>少<rt>すこ</rt></ruby>し<ruby>横<rt>よこ</rt></ruby>、<ruby>物<rt>もの</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちても<ruby>当<rt>あ</rt></ruby>たらない<ruby>所<rt>ところ</rt></ruby>です。<br>*(Lệch sang bên một chút, chỗ đồ rơi không trúng.)* |
| Thức | はい、<ruby>横<rt>よこ</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<br>*(Vâng, em dịch sang bên ạ.)* |
| Saito | <ruby>呼<rt>よ</rt></ruby>ばれたときだけ<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Chỉ khi được gọi mới vào phía dưới.)* |
| Thức | わかりました。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em hiểu rồi. Em sẽ chú ý ạ.)* |

---

## Tình huống 16 — Chân giàn giáo · 14:00, phối hợp nhịp với 先輩

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、リズムつかめてきたな。<br>*(Thức, bắt được nhịp rồi đấy.)* |
| Thức | ありがとうございます。<ruby>次<rt>つぎ</rt></ruby>は<ruby>布板<rt>ぬのいた</rt></ruby>ですか?<br>*(Cảm ơn anh ạ. Tiếp theo là ván sàn ạ?)* |
| Kondo | お、<ruby>分<rt>わ</rt></ruby>かってきたやん。そう、<ruby>布板<rt>ぬのいた</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby>。<br>*(Ồ, hiểu ra rồi đấy. Đúng, hai tấm ván sàn.)* |
| Thức | <ruby>布板<rt>ぬのいた</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby>、<ruby>用意<rt>ようい</rt></ruby>します。<br>*(Hai tấm ván sàn, em chuẩn bị ạ.)* |
| Kondo | その<ruby>調子<rt>ちょうし</rt></ruby>。<ruby>仕事<rt>しごと</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くなるで。<br>*(Cứ đà đó. Việc sẽ nhanh lên đấy.)* |
| Thức | はい、もっと<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố hơn ạ.)* |

---

## Tình huống 17 — Khu nghỉ · 15:00, 休憩 small talk với Hùng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、フンくんと<ruby>同<rt>おな</rt></ruby>じ<ruby>会社<rt>かいしゃ</rt></ruby>やったな。<br>*(Thức, em với Hùng cùng công ty nhỉ.)* |
| Thức | はい、フンくんは<ruby>隣<rt>となり</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>です。<br>*(Vâng, Hùng ở công trường bên cạnh ạ.)* |
| Kondo | <ruby>仲<rt>なか</rt></ruby>ええんか?<br>*(Thân nhau à?)* |
| Thức | はい、<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Vâng, bọn em học tiếng Nhật cùng nhau ạ.)* |
| Kondo | ええな。<ruby>仲間<rt>なかま</rt></ruby>がおると<ruby>頑張<rt>がんば</rt></ruby>れるやろ。<br>*(Tốt đấy. Có bạn thì cố gắng được phải không.)* |
| Thức | はい、<ruby>心強<rt>こころづよ</rt></ruby>いです。<br>*(Vâng, em vững tâm hơn ạ.)* |

---

## Tình huống 18 — Chân giàn giáo · 15:30, được nhờ dọn dụng cụ rơi

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、そこにボルト<ruby>落<rt>お</rt></ruby>ちとるぞ。<ruby>拾<rt>ひろ</rt></ruby>とけ。<br>*(Thức, có bu-lông rơi ở đó kìa. Nhặt đi.)* |
| Thức | はい、<ruby>拾<rt>ひろ</rt></ruby>います。<ruby>全部<rt>ぜんぶ</rt></ruby>ですか?<br>*(Vâng, em nhặt ạ. Tất cả ạ?)* |
| Tanigawa | <ruby>全部<rt>ぜんぶ</rt></ruby>や。<ruby>下<rt>した</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>すな。<ruby>踏<rt>ふ</rt></ruby>んだら<ruby>転<rt>ころ</rt></ruby>ぶ。<br>*(Tất cả. Đừng để sót dưới. Dẫm phải là ngã.)* |
| Thức | わかりました。バケツに<ruby>集<rt>あつ</rt></ruby>めます。<br>*(Em hiểu rồi. Em gom vào xô ạ.)* |
| Tanigawa | <ruby>足元<rt>あしもと</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にせえよ。<ruby>事故<rt>じこ</rt></ruby>のもとや。<br>*(Để ý chỗ chân đứng. Là nguồn tai nạn đấy.)* |
| Thức | はい、きれいにします。<br>*(Vâng, em dọn sạch ạ.)* |

---

## Tình huống 19 — Khu vật tư · 16:30, 片付け & ghi sổ vật tư

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby><ruby>使<rt>つか</rt></ruby>った<ruby>道具<rt>どうぐ</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>戻<rt>もど</rt></ruby>しましたか?<br>*(Thức, dụng cụ hôm nay dùng, để về hết chưa?)* |
| Thức | はい、ハンマーとラチェットは<ruby>戻<rt>もど</rt></ruby>しました。<br>*(Vâng, búa với cờ-lê em để về rồi ạ.)* |
| Saito | インパクトは?<ruby>充電<rt>じゅうでん</rt></ruby>しましたか?<br>*(Còn máy siết? Đã sạc chưa?)* |
| Thức | あ、まだです。すぐ<ruby>充電<rt>じゅうでん</rt></ruby>します。<br>*(À, chưa ạ. Em sạc ngay ạ.)* |
| Saito | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>明日<rt>あした</rt></ruby><ruby>使<rt>つか</rt></ruby>えないと<ruby>困<rt>こま</rt></ruby>ります。<br>*(Nhờ em. Mai không dùng được thì khổ.)* |
| Thức | はい、わすれません。<br>*(Vâng, em không quên ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & nhận xét

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。トゥックくん、<ruby>手元<rt>てもと</rt></ruby><ruby>慣<rt>な</rt></ruby>れましたか?<br>*(Hôm nay vất vả rồi. Thức, quen làm temoto chưa?)* |
| Thức | まだですが、<ruby>少<rt>すこ</rt></ruby>し<ruby>分<rt>わ</rt></ruby>かってきました。<br>*(Chưa hẳn ạ, nhưng em bắt đầu hiểu rồi ạ.)* |
| Kondo | <ruby>今日<rt>きょう</rt></ruby>は<ruby>反応<rt>はんのう</rt></ruby><ruby>速<rt>はや</rt></ruby>かったよ。よかった。<br>*(Hôm nay phản ứng nhanh đấy. Tốt.)* |
| Thức | ありがとうございます。<ruby>明日<rt>あした</rt></ruby>はもっと<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn anh ạ. Mai em sẽ cố hơn ạ.)* |
| Tanigawa | <ruby>名前<rt>なまえ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えてきたな。ええ<ruby>感<rt>かん</rt></ruby>じや。<br>*(Nhớ tên dụng cụ rồi đấy. Cảm giác tốt.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức nắm vai trò 手元: nghe gọi tên dụng cụ và đáp 「はい!◯◯、いきます!」 dứt khoát, xác nhận 「これですか?」 khi chưa chắc, và 「すみません、もう一度お願いします」 khi không nghe rõ. Em học không bao giờ ném dụng cụ lên cao mà phải dùng xô-dây, báo 「いきます」 trước khi cho kéo, và quy tắc đứng lệch sang bên tránh đồ rơi. Bài học lớn nhất: 手元 giỏi là người đọc trước được bước tiếp theo của thợ.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 手元 | てもと | Người phụ việc (chuyền dụng cụ) |
> | 道具 | どうぐ | Dụng cụ |
> | 番線 | ばんせん | Dây thép buộc |
> | くさび | くさび | Nêm chêm (chốt khóa) |
> | クランプ | くらんぷ | Cùm kẹp giàn giáo |
> | 布板 | ぬのいた | Ván sàn giàn giáo |
> | 倉庫 | そうこ | Kho |
> | 用意 | ようい | Chuẩn bị |
> | 復唱 | ふくしょう | Nhắc lại để xác nhận |
> | 受け取る | うけとる | Nhận lấy |
> | 戻す | もどす | Trả về (chỗ cũ) |
> | 充電 | じゅうでん | Sạc điện |
> | 反応 | はんのう | Phản ứng |
> | 仲間 | なかま | Đồng đội, bạn |
> | 足元 | あしもと | Chỗ chân đứng |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000004, 800000033, NULL, 'markdown_book', 'T4. 朝礼 & 報連相 cơ bản (朝礼・報連相)', '# Sách thực tập sinh xây dựng · T4. 朝礼 & 報連相 cơ bản (朝礼・報連相)

> **Mục tiêu nhân vật:** Thức học mẫu câu trong buổi 朝礼 (họp đầu giờ): điểm danh đáp 「はい!」, nghe phân công, KY hô khẩu hiệu; và 報連相 (báo cáo - liên lạc - thảo luận): báo cáo xong việc, liên lạc khi có vấn đề, hỏi ý kiến khi phân vân.

---

## Bối cảnh

Tháng 6 năm 2026. Tổ của Thức bước vào giai đoạn lắp giàn giáo chính, công việc nhiều và cần phối hợp chặt. 職長 Saito nhấn mạnh 報連相 — nguyên tắc giao tiếp căn bản trong công ty Nhật: 報告 (báo cáo), 連絡 (liên lạc), 相談 (thảo luận/hỏi ý kiến). Chương tập trung mẫu câu Thức dùng ở 朝礼 và khi báo cáo công việc thực tế cho 親方・職長.

---

## Tình huống 1 — Sân tập kết · 7:55, điểm danh 朝礼

| Vai | Lời thoại |
|---|---|
| Saito | これから<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>点呼<rt>てんこ</rt></ruby>します。<ruby>近藤<rt>こんどう</rt></ruby>!<br>*(Bắt đầu họp sáng. Điểm danh. Kondo!)* |
| Kondo | はい!<br>*(Có!)* |
| Saito | トゥック!<br>*(Thức!)* |
| Thức | はい!<br>*(Có!)* |
| Saito | ロン!<br>*(Long!)* |
| Anh Long | はい!<br>*(Có!)* |

---

## Tình huống 2 — Sân tập kết · 7:57, nghe phân công công việc

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>は<ruby>南側<rt>みなみがわ</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみた</rt></ruby>てです。<ruby>近藤<rt>こんどう</rt></ruby><ruby>班<rt>はん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>まで。<br>*(Hôm nay lắp giàn giáo phía nam. Tổ Kondo, làm đến tầng 3.)* |
| Kondo | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, đã rõ.)* |
| Saito | トゥックくんは<ruby>近藤<rt>こんどう</rt></ruby>くんの<ruby>手元<rt>てもと</rt></ruby>です。<br>*(Thức làm temoto cho Kondo.)* |
| Thức | はい、<ruby>近藤<rt>こんどう</rt></ruby>さんの<ruby>手元<rt>てもと</rt></ruby>ですね。<br>*(Vâng, làm temoto cho anh Kondo ạ.)* |
| Saito | そうです。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>近藤<rt>こんどう</rt></ruby>くんに<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Đúng. Không hiểu thì hỏi Kondo.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 3 — Sân tập kết · 8:00, KY hoạt động & khẩu hiệu

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>ポイントは?<ruby>近藤<rt>こんどう</rt></ruby>くん。<br>*(Điểm nguy hiểm hôm nay là gì? Kondo.)* |
| Kondo | <ruby>高所<rt>こうしょ</rt></ruby>からの<ruby>工具<rt>こうぐ</rt></ruby><ruby>落下<rt>らっか</rt></ruby>です。<br>*(Rơi dụng cụ từ trên cao.)* |
| Saito | そうです。<ruby>対策<rt>たいさく</rt></ruby>は?トゥックくん。<br>*(Đúng. Biện pháp? Thức.)* |
| Thức | <ruby>道具<rt>どうぐ</rt></ruby>にひもをつけます。<ruby>下<rt>した</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちません。<br>*(Buộc dây vào dụng cụ. Không đứng phía dưới ạ.)* |
| Saito | いいですね。では、ご<ruby>安全<rt>あんぜん</rt></ruby>に!<br>*(Tốt lắm. Vậy, chúc an toàn!)* |
| Tổ thợ | ご<ruby>安全<rt>あんぜん</rt></ruby>に!<br>*(Chúc an toàn!)* |

---

## Tình huống 4 — Sân tập kết · 8:03, thể dục buổi sáng

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>体操<rt>たいそう</rt></ruby>するぞ。トゥックくん、<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>て。<br>*(Tập thể dục nào. Thức, ra phía trước.)* |
| Thức | はい。<ruby>体操<rt>たいそう</rt></ruby>は<ruby>毎朝<rt>まいあさ</rt></ruby>しますか?<br>*(Vâng. Thể dục sáng nào cũng làm ạ?)* |
| Kondo | <ruby>毎朝<rt>まいあさ</rt></ruby>や。<ruby>体<rt>からだ</rt></ruby>をほぐさんとケガするで。<br>*(Sáng nào cũng làm. Không giãn cơ là chấn thương đấy.)* |
| Thức | なるほど。けがの<ruby>予防<rt>よぼう</rt></ruby>ですね。<br>*(Ra vậy. Phòng tránh chấn thương đúng không ạ.)* |
| Kondo | そう。しっかり<ruby>伸<rt>の</rt></ruby>ばせよ。<br>*(Đúng. Giãn cho kỹ vào.)* |
| Thức | はい、しっかりやります。<br>*(Vâng, em làm kỹ ạ.)* |

---

## Tình huống 5 — Chân giàn giáo · 9:00, học 報連相 là gì

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、「<ruby>報連相<rt>ほうれんそう</rt></ruby>」を<ruby>知<rt>し</rt></ruby>っていますか?<br>*(Thức, em biết "horenso" không?)* |
| Thức | やさいの<ruby>名前<rt>なまえ</rt></ruby>ですか?<br>*(Là tên rau ạ?)* |
| Saito | (cười) ちがいます。<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>のことです。<br>*(Không phải. Là báo cáo - liên lạc - thảo luận.)* |
| Thức | <ruby>報告<rt>ほうこく</rt></ruby>、<ruby>連絡<rt>れんらく</rt></ruby>、<ruby>相談<rt>そうだん</rt></ruby>...<ruby>仕事<rt>しごと</rt></ruby>で<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Báo cáo, liên lạc, thảo luận... quan trọng trong công việc ạ?)* |
| Saito | とても<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぎます。<br>*(Rất quan trọng. Để phòng tai nạn.)* |
| Thức | はい、しっかり<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ ghi nhớ ạ.)* |

---

## Tình huống 6 — Chân giàn giáo · 9:20, 報告 — báo cáo xong việc

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Kondo, em xin báo cáo.)* |
| Kondo | おう、<ruby>何<rt>なに</rt></ruby>?<br>*(Ờ, gì thế?)* |
| Thức | <ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>並<rt>なら</rt></ruby>べ<ruby>終<rt>お</rt></ruby>わりました。<br>*(Vật liệu tầng 1, em xếp xong hết rồi ạ.)* |
| Kondo | はやいな。<ruby>数<rt>かず</rt></ruby>は<ruby>合<rt>あ</rt></ruby>ってた?<br>*(Nhanh nhỉ. Số lượng có khớp không?)* |
| Thức | はい、<ruby>足場板<rt>あしばいた</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>枚<rt>まい</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, hai mươi tấm ván sàn, em đã kiểm tra.)* |
| Kondo | よし、ええ<ruby>報告<rt>ほうこく</rt></ruby>や。<ruby>次<rt>つぎ</rt></ruby><ruby>行<rt>い</rt></ruby>こう。<br>*(Tốt, báo cáo tốt đấy. Sang tiếp nào.)* |

---

## Tình huống 7 — Chân giàn giáo · 9:40, 連絡 — liên lạc về thay đổi

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>連絡<rt>れんらく</rt></ruby>です。<ruby>午後<rt>ごご</rt></ruby>から<ruby>雨<rt>あめ</rt></ruby>の<ruby>予報<rt>よほう</rt></ruby>です。<br>*(Thức, thông báo. Chiều dự báo có mưa.)* |
| Thức | <ruby>雨<rt>あめ</rt></ruby>が<ruby>降<rt>ふ</rt></ruby>ったら<ruby>作業<rt>さぎょう</rt></ruby>はどうしますか?<br>*(Mưa thì công việc thế nào ạ?)* |
| Saito | <ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>中止<rt>ちゅうし</rt></ruby>です。<ruby>下<rt>した</rt></ruby>の<ruby>片付<rt>かたづ</rt></ruby>けをします。<br>*(Việc trên cao sẽ dừng. Làm dọn dẹp dưới đất.)* |
| Thức | わかりました。<ruby>近藤<rt>こんどう</rt></ruby>さんにも<ruby>伝<rt>つた</rt></ruby>えますか?<br>*(Em hiểu rồi. Em báo cả anh Kondo ạ?)* |
| Saito | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>連絡<rt>れんらく</rt></ruby>はみんなで<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Nhờ em. Liên lạc thì cả tổ phải cùng nắm.)* |
| Thức | はい、すぐ<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Vâng, em báo ngay ạ.)* |

---

## Tình huống 8 — Chân giàn giáo · 9:50, truyền đạt 連絡 cho 先輩

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>職長<rt>しょくちょう</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>です。<br>*(Anh Kondo, có thông báo từ đốc công.)* |
| Kondo | <ruby>何<rt>なん</rt></ruby>やった?<br>*(Gì thế?)* |
| Thức | <ruby>午後<rt>ごご</rt></ruby>から<ruby>雨<rt>あめ</rt></ruby>です。<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>中止<rt>ちゅうし</rt></ruby>だそうです。<br>*(Chiều có mưa. Việc trên cao sẽ dừng ạ.)* |
| Kondo | わかった。じゃあ<ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>急<rt>いそ</rt></ruby>ごう。<br>*(Hiểu rồi. Vậy phải tranh thủ buổi sáng.)* |
| Thức | はい、<ruby>急<rt>いそ</rt></ruby>ぎます。<br>*(Vâng, mình tranh thủ ạ.)* |
| Kondo | <ruby>連絡<rt>れんらく</rt></ruby>ありがとな。<ruby>助<rt>たす</rt></ruby>かるわ。<br>*(Cảm ơn đã báo nhé. Đỡ lắm.)* |

---

## Tình huống 9 — Chân giàn giáo · 10:30, 相談 — hỏi ý kiến khi phân vân

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、ちょっと<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Anh Kondo, em có chuyện muốn hỏi ý.)* |
| Kondo | おう、<ruby>何<rt>なん</rt></ruby>や。<br>*(Ờ, gì thế.)* |
| Thức | このクランプ、<ruby>少<rt>すこ</rt></ruby>しさびています。<ruby>使<rt>つか</rt></ruby>っていいですか?<br>*(Cái cùm này hơi gỉ. Dùng được không ạ?)* |
| Kondo | (xem) ああ、これは<ruby>使<rt>つか</rt></ruby>うな。<ruby>新<rt>あたら</rt></ruby>しいの<ruby>持<rt>も</rt></ruby>って<ruby>来<rt>き</rt></ruby>て。<br>*(À, cái này đừng dùng. Lấy cái mới đi.)* |
| Thức | わかりました。<ruby>聞<rt>き</rt></ruby>いてよかったです。<br>*(Em hiểu rồi. May mà em hỏi.)* |
| Kondo | そうや。<ruby>迷<rt>まよ</rt></ruby>ったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>相談<rt>そうだん</rt></ruby>。<ruby>勝手<rt>かって</rt></ruby>に<ruby>決<rt>き</rt></ruby>めるな。<br>*(Đúng. Phân vân là phải hỏi. Đừng tự quyết.)* |

---

## Tình huống 10 — Khu nghỉ · 10:50, anh Long giải thích 報連相 (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | 報連相 nghe khô vậy chứ cực quan trọng đấy em. |
| Thức | Vâng, 職長 nói liên quan an toàn. Em vẫn chưa rõ lắm khi nào dùng cái nào. |
| Anh Long | Đơn giản: việc xong rồi thì 報告. Có thông tin mới cho người khác thì 連絡. Phân vân chưa biết làm sao thì 相談 — hỏi trước khi làm, đừng làm liều rồi hỏng. |
| Thức | À, em hiểu rồi. Hôm nay em hỏi anh Kondo cái cùm gỉ, đó là 相談 đúng không ạ? |
| Anh Long | Chuẩn rồi. Người Nhật ghét nhất là tự ý làm rồi giấu lỗi. Báo sớm dù lỗi nhỏ, họ quý em hơn. |
| Thức | Vâng em nhớ ạ. Cảm ơn anh. |

---

## Tình huống 11 — Chân giàn giáo · 11:10, báo cáo trung gian (中間報告)

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>材料<rt>ざいりょう</rt></ruby><ruby>運<rt>はこ</rt></ruby>び、どこまで<ruby>進<rt>すす</rt></ruby>みましたか?<br>*(Thức, chuyển vật liệu, đến đâu rồi?)* |
| Thức | <ruby>半分<rt>はんぶん</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。あと<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>くらいです。<br>*(Em xong một nửa rồi ạ. Còn khoảng một tiếng nữa.)* |
| Saito | わかりました。<ruby>途中<rt>とちゅう</rt></ruby>でも<ruby>報告<rt>ほうこく</rt></ruby>してくれて<ruby>助<rt>たす</rt></ruby>かります。<br>*(Hiểu rồi. Báo cả khi đang giữa chừng, đỡ lắm.)* |
| Thức | はい。<ruby>終<rt>お</rt></ruby>わったら、また<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng. Xong em sẽ báo lại ạ.)* |
| Saito | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>長<rt>なが</rt></ruby>い<ruby>仕事<rt>しごと</rt></ruby>は<ruby>途中<rt>とちゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Nhờ em. Việc dài thì báo giữa chừng cũng quan trọng.)* |
| Thức | はい、おぼえます。<br>*(Vâng, em ghi nhớ ạ.)* |

---

## Tình huống 12 — Chân giàn giáo · 11:40, báo cáo sự cố nhỏ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、すみません、<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Anh Kondo, xin lỗi, em có việc cần báo cáo.)* |
| Kondo | どうした?<br>*(Sao thế?)* |
| Thức | <ruby>足場板<rt>あしばいた</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>落<rt>お</rt></ruby>として、<ruby>少<rt>すこ</rt></ruby>し<ruby>割<rt>わ</rt></ruby>れました。<br>*(Em làm rơi một tấm ván sàn, hơi bị nứt ạ.)* |
| Kondo | ケガはないか?<br>*(Có bị thương không?)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>誰<rt>だれ</rt></ruby>もいませんでした。<br>*(Không sao ạ. Lúc đó không có ai cả.)* |
| Kondo | ケガなくてよかった。<ruby>隠<rt>かく</rt></ruby>さず<ruby>言<rt>い</rt></ruby>うてくれてええぞ。<br>*(Không thương tích là tốt. Không giấu mà nói ra là tốt.)* |

---

## Tình huống 13 — Chân giàn giáo · 13:00, được dạy cách báo cáo gọn

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>報告<rt>ほうこく</rt></ruby>は<ruby>結論<rt>けつろん</rt></ruby>から<ruby>言<rt>い</rt></ruby>います。<br>*(Thức, báo cáo thì nói kết luận trước.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>から、ですか?<br>*(Kết luận trước ạ?)* |
| Saito | はい。「<ruby>終<rt>お</rt></ruby>わりました」を<ruby>先<rt>さき</rt></ruby>に。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>後<rt>あと</rt></ruby>です。<br>*(Đúng. "Xong rồi" nói trước. Lý do nói sau.)* |
| Thức | やってみます。「<ruby>掃除<rt>そうじ</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<ruby>釘<rt>くぎ</rt></ruby>も<ruby>拾<rt>ひろ</rt></ruby>いました。」<br>*(Em thử ạ. "Quét xong rồi. Đinh cũng nhặt rồi ạ.")* |
| Saito | そうそう、それでいいです。<ruby>短<rt>みじか</rt></ruby>く、はっきり。<br>*(Đúng đúng, thế là được. Ngắn, rõ ràng.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 14 — Chân giàn giáo · 13:30, 親方 hỏi tiến độ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby>そろたか?<br>*(Thức, vật liệu tầng 2 đủ chưa?)* |
| Thức | はい、そろいました。クランプだけ<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>足<rt>た</rt></ruby>りません。<br>*(Vâng, đủ rồi ạ. Chỉ thiếu năm cái cùm thôi ạ.)* |
| Tanigawa | <ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby>か。すぐ<ruby>補充<rt>ほじゅう</rt></ruby>せえ。<br>*(Năm cái à. Bổ sung ngay.)* |
| Thức | はい、<ruby>倉庫<rt>そうこ</rt></ruby>から<ruby>取<rt>と</rt></ruby>ってきます。<br>*(Vâng, em ra kho lấy ạ.)* |
| Tanigawa | ええ<ruby>報告<rt>ほうこく</rt></ruby>や。<ruby>足<rt>た</rt></ruby>りんもんは<ruby>早<rt>はや</rt></ruby>めに<ruby>言<rt>い</rt></ruby>え。<br>*(Báo cáo tốt. Cái gì thiếu thì nói sớm.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 15 — Chân giàn giáo · 14:00, liên lạc khi rời vị trí

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>倉庫<rt>そうこ</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Anh Kondo, em ra kho một lát ạ.)* |
| Kondo | おう、<ruby>何<rt>なに</rt></ruby><ruby>分<rt>ぷん</rt></ruby>くらい?<br>*(Ờ, khoảng mấy phút?)* |
| Thức | <ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>くらいで<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Khoảng mười phút em về ạ.)* |
| Kondo | わかった。<ruby>戻<rt>もど</rt></ruby>ったら<ruby>声<rt>こえ</rt></ruby>かけて。<br>*(Hiểu rồi. Về thì gọi anh nhé.)* |
| Thức | はい、<ruby>戻<rt>もど</rt></ruby>ったら<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, về em sẽ báo ạ.)* |
| Kondo | <ruby>黙<rt>だま</rt></ruby>って<ruby>消<rt>き</rt></ruby>えるなよ。<ruby>探<rt>さが</rt></ruby>すからな。<br>*(Đừng có biến mất không nói. Phải đi tìm đấy.)* |

---

## Tình huống 16 — Chân giàn giáo · 14:30, hỏi ý kiến cách làm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>材料<rt>ざいりょう</rt></ruby>はここに<ruby>置<rt>お</rt></ruby>いていいですか?<br>*(Anh Kondo, vật liệu để đây được không ạ?)* |
| Kondo | そこは<ruby>通路<rt>つうろ</rt></ruby>や。<ruby>邪魔<rt>じゃま</rt></ruby>になる。<br>*(Đó là lối đi. Vướng đấy.)* |
| Thức | では、どこがいいですか?<br>*(Vậy chỗ nào tốt ạ?)* |
| Kondo | あの<ruby>壁<rt>かべ</rt></ruby><ruby>際<rt>ぎわ</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>せて<ruby>置<rt>お</rt></ruby>いて。<br>*(Dồn sát chân tường kia mà để.)* |
| Thức | わかりました。<ruby>聞<rt>き</rt></ruby>いてよかったです。<br>*(Em hiểu rồi. May mà em hỏi.)* |
| Kondo | そう、<ruby>置<rt>お</rt></ruby>く<ruby>場所<rt>ばしょ</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>関係<rt>かんけい</rt></ruby>あるからな。<br>*(Đúng, chỗ để cũng liên quan an toàn đấy.)* |

---

## Tình huống 17 — Chân giàn giáo · 15:00, báo cáo hoàn thành cả ngày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>材料<rt>ざいりょう</rt></ruby><ruby>運<rt>はこ</rt></ruby>び、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Anh Kondo, em báo cáo. Chuyển vật liệu, hoàn thành hết ạ.)* |
| Kondo | お、<ruby>全部<rt>ぜんぶ</rt></ruby>か。<ruby>問題<rt>もんだい</rt></ruby>なかった?<br>*(Ồ, hết rồi à. Không có vấn đề gì chứ?)* |
| Thức | クランプを<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>補充<rt>ほじゅう</rt></ruby>しました。<ruby>他<rt>ほか</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Em bổ sung năm cái cùm. Còn lại không có vấn đề ạ.)* |
| Kondo | ええ<ruby>報告<rt>ほうこく</rt></ruby>や。<ruby>結論<rt>けつろん</rt></ruby><ruby>先<rt>さき</rt></ruby>、<ruby>上手<rt>じょうず</rt></ruby>になったな。<br>*(Báo cáo tốt. Kết luận trước, khá lên rồi đấy.)* |
| Thức | ありがとうございます。<ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Cảm ơn anh ạ. Em có luyện tập ạ.)* |
| Kondo | その<ruby>調子<rt>ちょうし</rt></ruby>や。<br>*(Cứ đà đó.)* |

---

## Tình huống 18 — Chân giàn giáo · 15:40, 親方 khen 報連相 tốt

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>報告<rt>ほうこく</rt></ruby><ruby>多<rt>おお</rt></ruby>かったな。<br>*(Thức, hôm nay báo cáo nhiều nhỉ.)* |
| Thức | はい、<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Vâng, em luyện horenso ạ.)* |
| Tanigawa | ええこっちゃ。<ruby>言<rt>い</rt></ruby>わん<ruby>奴<rt>やつ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>困<rt>こま</rt></ruby>るんや。<br>*(Tốt đấy. Đứa không nói gì mới phiền nhất.)* |
| Thức | はい、これからも<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, từ giờ em sẽ báo cáo ạ.)* |
| Tanigawa | <ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>言<rt>い</rt></ruby>え。<ruby>隠<rt>かく</rt></ruby>すのが<ruby>一番<rt>いちばん</rt></ruby>あかん。<br>*(Có lỗi cũng phải nói. Giấu mới là tệ nhất.)* |
| Thức | はい、<ruby>隠<rt>かく</rt></ruby>しません。<br>*(Vâng, em sẽ không giấu ạ.)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け & xác nhận bàn giao

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>明日<rt>あした</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>、<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thức, chuẩn bị mai, em bàn giao đi.)* |
| Thức | はい。<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>まで<ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>置<rt>お</rt></ruby>きました。<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>はまだです。<br>*(Vâng. Vật liệu để đến tầng 2 rồi. Tầng 3 chưa ạ.)* |
| Saito | わかりました。<ruby>足<rt>た</rt></ruby>りない<ruby>物<rt>もの</rt></ruby>はありますか?<br>*(Hiểu rồi. Có gì còn thiếu không?)* |
| Thức | <ruby>布板<rt>ぬのいた</rt></ruby>があと<ruby>10<rt>じゅう</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Còn cần thêm mười tấm ván sàn ạ.)* |
| Saito | <ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>、<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>します。ありがとう。<br>*(Mai sáng, họp sáng sẽ phổ biến. Cảm ơn.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & xác nhận an toàn ngày

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>もケガなし、<ruby>事故<rt>じこ</rt></ruby>なし。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hôm nay cũng không thương tích, không tai nạn. Vất vả rồi.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>報連相<rt>ほうれんそう</rt></ruby>、よかったです。<br>*(Thức, horenso hôm nay tốt đấy.)* |
| Thức | ありがとうございます。まだ<ruby>練習<rt>れんしゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Cảm ơn anh ạ. Em vẫn đang luyện ạ.)* |
| Tanigawa | <ruby>続<rt>つづ</rt></ruby>けたらええ<ruby>職人<rt>しょくにん</rt></ruby>になるで。<br>*(Cứ giữ thế thì thành thợ giỏi đấy.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức nắm quy trình 朝礼: đáp 「はい!」 khi điểm danh, nghe phân công đáp 「承知しました」, trả lời câu hỏi KY và hô 「ご安全に」. Em hiểu 報連相: 報告 (báo việc xong, nói kết luận trước), 連絡 (truyền thông tin mới cho cả tổ, báo khi rời vị trí), 相談 (phân vân là hỏi trước khi làm). Bài học cốt lõi: dù lỗi nhỏ cũng phải báo, giấu lỗi là điều tệ nhất ở công trường.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 朝礼 | ちょうれい | Họp đầu giờ sáng |
> | 点呼 | てんこ | Điểm danh |
> | 報連相 | ほうれんそう | Báo cáo - liên lạc - thảo luận |
> | 報告 | ほうこく | Báo cáo |
> | 連絡 | れんらく | Liên lạc |
> | 相談 | そうだん | Hỏi ý kiến, thảo luận |
> | 承知 | しょうち | Đã rõ, đã hiểu |
> | 中止 | ちゅうし | Hủy, dừng |
> | 共有 | きょうゆう | Cùng nắm thông tin |
> | 結論 | けつろん | Kết luận |
> | 中間報告 | ちゅうかんほうこく | Báo cáo giữa chừng |
> | 補充 | ほじゅう | Bổ sung |
> | 引き継ぎ | ひきつぎ | Bàn giao |
> | 完了 | かんりょう | Hoàn thành |
> | 職人 | しょくにん | Thợ lành nghề |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000005, 800000033, NULL, 'markdown_book', 'T5. Tiếng lóng & phương ngữ 親方 (親方の訛り)', '# Sách thực tập sinh xây dựng · T5. Tiếng lóng & phương ngữ 親方 (親方の訛り)

> **Mục tiêu nhân vật:** Thức học cách nghe và hiểu tiếng lóng nghề tobi cùng phương ngữ Kansai cộc của 親方 Tanigawa: 「ええ」=いい, 「あかん」=だめ, 「ほな」=じゃあ, các từ lóng công trường (バラす, 段取り, ケレン...). Học cách hỏi lại lịch sự khi không hiểu thay vì gật bừa.

---

## Bối cảnh

Tháng 7 năm 2026. Thức đã quen việc nhưng vẫn vất vả vì 親方 Tanigawa nói giọng Kansai rất nhanh, lẫn nhiều tiếng lóng nghề. 先輩 Kondo trở thành "thông dịch" giúp Thức. Chương tập trung mẫu câu nghe-hiểu phương ngữ và tiếng lóng nghề xây dựng, và quan trọng nhất: cách hỏi lại 「すみません、〇〇ってどういう意味ですか?」 thay vì gật bừa.

---

## Tình huống 1 — Chân giàn giáo · 8:10, 親方 nói 「ええ」「あかん」

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、その<ruby>位置<rt>いち</rt></ruby>でええ。<br>*(Thức, vị trí đó được rồi.)* |
| Thức | (lưỡng lự) ええ...?<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Ee...? Ổn chứ ạ?)* |
| Tanigawa | せや、ええ<ruby>言<rt>い</rt></ruby>うたら「いい」や。OKや。<br>*(Phải, "ee" tức là "tốt". OK đó.)* |
| Thức | あ、「ええ」は「いい」ですね。わかりました。<br>*(À, "ee" là "tốt" ạ. Em hiểu rồi.)* |
| Tanigawa | そや。「あかん」は「だめ」やぞ。<ruby>覚<rt>おぼ</rt></ruby>えとけ。<br>*(Đúng. "Akan" là "không được" đấy. Nhớ lấy.)* |
| Thức | はい、「あかん」は「だめ」。<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, "akan" là "không được". Em ghi nhớ ạ.)* |

---

## Tình huống 2 — Chân giàn giáo · 8:30, không hiểu 「ほな」

| Vai | Lời thoại |
|---|---|
| Tanigawa | ほな、<ruby>次<rt>つぎ</rt></ruby><ruby>行<rt>い</rt></ruby>くで。<br>*(Hona, đi tiếp nào.)* |
| Thức | すみません、「ほな」ってどういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Xin lỗi sếp, "hona" nghĩa là gì ạ?)* |
| Tanigawa | 「じゃあ」や。「ほな<ruby>行<rt>い</rt></ruby>こか」=「じゃあ<ruby>行<rt>い</rt></ruby>こう」。<br>*("Jaa" đó. "Hona ikoka" = "Jaa ikou".)* |
| Thức | なるほど。「ほな」=「じゃあ」、ですね。<br>*(Ra vậy. "Hona" = "jaa", đúng không ạ.)* |
| Tanigawa | そや。よう<ruby>聞<rt>き</rt></ruby>いた。<ruby>分<rt>わ</rt></ruby>からんかったら<ruby>聞<rt>き</rt></ruby>けばええ。<br>*(Đúng. Hỏi tốt. Không hiểu thì cứ hỏi.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn sếp ạ.)* |

---

## Tình huống 3 — Chân giàn giáo · 8:50, Kondo giải thích thêm phương ngữ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>親方<rt>おやかた</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>、<ruby>難<rt>むずか</rt></ruby>しいやろ?<br>*(Thức, lời sếp khó hiểu nhỉ?)* |
| Thức | はい、はやくて、ことばも<ruby>違<rt>ちが</rt></ruby>います。<br>*(Vâng, vừa nhanh, từ ngữ cũng khác ạ.)* |
| Kondo | 「ちゃう」は「<ruby>違<rt>ちが</rt></ruby>う」。「めっちゃ」は「とても」。<br>*("Chau" là "khác/sai". "Meccha" là "rất".)* |
| Thức | 「ちゃう」=「<ruby>違<rt>ちが</rt></ruby>う」、「めっちゃ」=「とても」。メモします。<br>*("Chau" = "sai", "meccha" = "rất". Em ghi lại.)* |
| Kondo | <ruby>分<rt>わ</rt></ruby>からんかったら<ruby>俺<rt>おれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>き。<ruby>通訳<rt>つうやく</rt></ruby>したるわ。<br>*(Không hiểu thì hỏi anh. Anh phiên dịch cho.)* |
| Thức | ありがとうございます。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn anh ạ. Đỡ lắm ạ.)* |

---

## Tình huống 4 — Chân giàn giáo · 9:10, tiếng lóng 「バラす」

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>明日<rt>あした</rt></ruby>この<ruby>足場<rt>あしば</rt></ruby>バラすからな。<br>*(Thức, mai tháo cái giàn giáo này đấy.)* |
| Thức | すみません、「バラす」ってなんですか?<br>*(Xin lỗi sếp, "barasu" là gì ạ?)* |
| Tanigawa | <ruby>組<rt>く</rt></ruby>んだやつを<ruby>解体<rt>かいたい</rt></ruby>することや。バラバラにする。<br>*(Là tháo dỡ cái đã lắp. Tháo rời ra.)* |
| Thức | <ruby>組<rt>く</rt></ruby>むの<ruby>反対<rt>はんたい</rt></ruby>、ですね。バラす=<ruby>解体<rt>かいたい</rt></ruby>。<br>*(Ngược với lắp, đúng không ạ. Barasu = tháo dỡ.)* |
| Tanigawa | そや。<ruby>現場<rt>げんば</rt></ruby>では「バラし」ばっかり<ruby>言<rt>い</rt></ruby>うで。<br>*(Đúng. Ở công trường toàn nói "barashi" đấy.)* |
| Thức | はい、おぼえました。<br>*(Vâng, em nhớ rồi ạ.)* |

---

## Tình huống 5 — Chân giàn giáo · 9:30, tiếng lóng 「段取り」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>段取<rt>だんど</rt></ruby>りできてる?<br>*(Thức, dandori xong chưa?)* |
| Thức | だんどり...<ruby>準備<rt>じゅんび</rt></ruby>のことですか?<br>*(Dandori... là chuẩn bị ạ?)* |
| Kondo | そう。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>と<ruby>準備<rt>じゅんび</rt></ruby>のことや。<br>*(Đúng. Là thứ tự công việc và sự chuẩn bị.)* |
| Thức | 「<ruby>段取<rt>だんど</rt></ruby>り<ruby>八分<rt>はちぶ</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>きました。<ruby>意味<rt>いみ</rt></ruby>は?<br>*(Em có nghe "dandori hachibu". Nghĩa là gì ạ?)* |
| Kondo | <ruby>準備<rt>じゅんび</rt></ruby>がよかったら<ruby>仕事<rt>しごと</rt></ruby>の<ruby>8<rt>はち</rt></ruby><ruby>割<rt>わり</rt></ruby><ruby>終<rt>お</rt></ruby>わり、<ruby>意味<rt>いみ</rt></ruby>や。<br>*(Chuẩn bị tốt thì xong 80% công việc, ý là vậy.)* |
| Thức | いい<ruby>言葉<rt>ことば</rt></ruby>ですね。おぼえます。<br>*(Câu hay nhỉ ạ. Em ghi nhớ.)* |

---

## Tình huống 6 — Chân giàn giáo · 9:50, hỏi lại khi 親方 nói quá nhanh

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥックそれちゃうそっちやそっちもっとこっち！<br>*(Thức không phải cái đó bên kia kìa bên kia gần đây hơn!)* |
| Thức | すみません、ゆっくりお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin lỗi, sếp nói chậm giúp em ạ.)* |
| Tanigawa | (chậm lại) その...<ruby>長<rt>なが</rt></ruby>い...パイプ...こっちや。<br>*(Cái... ống... dài... lại đây.)* |
| Thức | この<ruby>長<rt>なが</rt></ruby>いパイプを、こちらに<ruby>持<rt>も</rt></ruby>って<ruby>来<rt>く</rt></ruby>るのですね?<br>*(Cái ống dài này, mang lại đây phải không ạ?)* |
| Tanigawa | そや、それや。ゆっくりでええ。<br>*(Đúng, cái đó. Cứ từ từ.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn sếp ạ.)* |

---

## Tình huống 7 — Chân giàn giáo · 10:10, tiếng lóng 「ケレン」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、この<ruby>鉄<rt>てつ</rt></ruby>パイプ、ケレンしといて。<br>*(Thức, ống thép này, keren đi.)* |
| Thức | ケレン...どうすればいいですか?<br>*(Keren... làm thế nào ạ?)* |
| Kondo | さびを<ruby>落<rt>お</rt></ruby>とすことや。このブラシでこする。<br>*(Là cạo gỉ. Lấy bàn chải này chà.)* |
| Thức | あ、さび<ruby>落<rt>お</rt></ruby>とし、ですね。やってみます。<br>*(À, cạo gỉ đúng không ạ. Em làm thử.)* |
| Kondo | そうそう。きれいになるまでな。<br>*(Đúng đúng. Đến khi sạch nhé.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 8 — Chân giàn giáo · 10:30, 親方 dùng từ ngắn cộc

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、それ<ruby>上<rt>あ</rt></ruby>げ。<br>*(Thức, nâng cái đó lên.)* |
| Thức | はい。どこまで<ruby>上<rt>あ</rt></ruby>げますか?<br>*(Vâng. Nâng lên đến đâu ạ?)* |
| Tanigawa | <ruby>肩<rt>かた</rt></ruby>まで。そこ<ruby>止<rt>と</rt></ruby>め。<br>*(Đến vai. Dừng đó.)* |
| Thức | <ruby>肩<rt>かた</rt></ruby>まで、ここで<ruby>止<rt>と</rt></ruby>めますね。<br>*(Đến vai, dừng ở đây phải không ạ.)* |
| Tanigawa | そや。<ruby>動<rt>うご</rt></ruby>かすな。<br>*(Đúng. Đừng nhúc nhích.)* |
| Thức | はい、<ruby>動<rt>うご</rt></ruby>かしません。<br>*(Vâng, em giữ yên ạ.)* |

---

## Tình huống 9 — Khu nghỉ · 10:50, anh Long mách mẹo nghe 親方 (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | 親方 Tanigawa nói khó nghe lắm đúng không? Anh hồi đầu cũng khóc thầm. |
| Thức | Vâng anh, ổng nói nhanh lại giọng Kansai, em hiểu chắc nửa. |
| Anh Long | Mẹo: nghe không kịp đừng đoán, nhìn tay ổng chỉ đâu thì làm theo, rồi nói lại "〜ですね?" để xác nhận. Sai thì ổng sửa, không sao. |
| Thức | Em hay làm vậy đó anh. Nhưng có lúc ổng cáu vì em hỏi nhiều quá. |
| Anh Long | Ổng cáu mồm thôi, bụng không xấu. Hỏi để làm đúng còn hơn làm sai gây tai nạn. Cứ ghi sổ từ lóng, một tháng là quen. |
| Thức | Vâng, em cảm ơn anh. |

---

## Tình huống 10 — Chân giàn giáo · 11:10, tiếng lóng 「アンコ」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、そこにアンコ<ruby>入<rt>い</rt></ruby>れといて。<br>*(Thức, nhét anko vào đó đi.)* |
| Thức | アンコ...<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>ですか?<br>*(Anko... là đồ ăn ạ?)* |
| Kondo | (cười) ちゃうちゃう。すき<ruby>間<rt>ま</rt></ruby>に<ruby>詰<rt>つ</rt></ruby>める<ruby>物<rt>もの</rt></ruby>のことや。<br>*(Không không. Là vật chèn vào khe hở đó.)* |
| Thức | あ、すきまを<ruby>埋<rt>う</rt></ruby>める<ruby>物<rt>もの</rt></ruby>ですね。<br>*(À, là vật lấp khe hở đúng không ạ.)* |
| Kondo | そう。<ruby>木<rt>き</rt></ruby>の<ruby>切<rt>き</rt></ruby>れ<ruby>端<rt>はし</rt></ruby>とかな。<ruby>現場<rt>げんば</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>はおもしろいやろ。<br>*(Đúng. Như mẩu gỗ vụn ấy. Tiếng công trường thú vị nhỉ.)* |
| Thức | はい、たくさんおぼえたいです。<br>*(Vâng, em muốn học thật nhiều ạ.)* |

---

## Tình huống 11 — Chân giàn giáo · 11:30, xác nhận lại để chắc

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、それカチ<ruby>上<rt>あ</rt></ruby>げといて。<br>*(Thức, kachi-age cái đó lên.)* |
| Thức | すみません、「カチ<ruby>上<rt>あ</rt></ruby>げ」は<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げることですか?<br>*(Xin lỗi sếp, "kachi-age" là nâng lên ạ?)* |
| Tanigawa | そや。グッと<ruby>上<rt>あ</rt></ruby>げて<ruby>固定<rt>こてい</rt></ruby>すんねん。<br>*(Đúng. Nâng mạnh lên rồi cố định lại.)* |
| Thức | <ruby>上<rt>あ</rt></ruby>げて、<ruby>固定<rt>こてい</rt></ruby>する。やってみます。<br>*(Nâng lên, cố định. Em thử ạ.)* |
| Tanigawa | おう。<ruby>分<rt>わ</rt></ruby>からん<ruby>言葉<rt>ことば</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>で<ruby>聞<rt>き</rt></ruby>け。<ruby>後<rt>あと</rt></ruby>では<ruby>遅<rt>おそ</rt></ruby>い。<br>*(Ờ. Từ không hiểu thì hỏi ngay tại chỗ. Để sau là muộn.)* |
| Thức | はい、すぐ<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, em sẽ hỏi ngay ạ.)* |

---

## Tình huống 12 — Chân giàn giáo · 13:00, học 「腰道具」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>腰道具<rt>こしどうぐ</rt></ruby>そろえた?<br>*(Thức, koshi-dougu đủ chưa?)* |
| Thức | こしどうぐ...<ruby>腰<rt>こし</rt></ruby>につける<ruby>道具<rt>どうぐ</rt></ruby>ですか?<br>*(Koshi-dougu... là dụng cụ đeo ở hông ạ?)* |
| Kondo | そう。<ruby>腰<rt>こし</rt></ruby>のベルトにつけるラチェットとかな。<br>*(Đúng. Như cờ-lê gắn vào đai hông ấy.)* |
| Thức | はい、ラチェットとハンマー、つけています。<br>*(Vâng, cờ-lê với búa, em đeo rồi ạ.)* |
| Kondo | ええな。とびは<ruby>腰道具<rt>こしどうぐ</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>や。<br>*(Tốt. Thợ tobi thì koshi-dougu là mạng sống.)* |
| Thức | はい、<ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Vâng, em sẽ giữ kỹ ạ.)* |

---

## Tình huống 13 — Chân giàn giáo · 13:30, 親方 mắng yêu kiểu Kansai

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、なにモタモタしとんねん!<br>*(Thức, sao mà lề mề thế!)* |
| Thức | すみません!「モタモタ」は<ruby>遅<rt>おそ</rt></ruby>いという<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Em xin lỗi! "Motamota" nghĩa là chậm ạ?)* |
| Tanigawa | そや、グズグズや。はよせえ。<br>*(Đúng, là chậm chạp đó. Nhanh lên.)* |
| Thức | はい、<ruby>急<rt>いそ</rt></ruby>ぎます!<br>*(Vâng, em làm nhanh ạ!)* |
| Tanigawa | (dịu) まあ、あわてて<ruby>落<rt>お</rt></ruby>とすなよ。<br>*(Thôi, vội mà rơi đồ thì không được đâu.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý ạ.)* |

---

## Tình huống 14 — Chân giàn giáo · 14:00, hiểu nhầm tiếng lóng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、それ<ruby>殺<rt>ころ</rt></ruby>しといて。<br>*(Thức, "giết" cái đó đi.)* |
| Thức | (hốt hoảng) え!?ころす...?<br>*(Hả!? Giết...?)* |
| Kondo | (cười) おちつけ。「<ruby>殺<rt>ころ</rt></ruby>す」は<ruby>固<rt>かた</rt></ruby>く<ruby>締<rt>し</rt></ruby>めて<ruby>動<rt>うご</rt></ruby>かなくすることや。<br>*(Bình tĩnh. "Korosu" là siết chặt cho khỏi xê dịch đó.)* |
| Thức | あ、びっくりしました。「<ruby>固定<rt>こてい</rt></ruby>する」ですね。<br>*(À, hết hồn ạ. Là "cố định" đúng không ạ.)* |
| Tanigawa | はは、ベトナム<ruby>人<rt>じん</rt></ruby>みんなびっくりするわ。<br>*(Haha, người Việt ai cũng giật mình hết.)* |
| Thức | はい、おぼえました。<ruby>聞<rt>き</rt></ruby>いてよかったです。<br>*(Vâng, em nhớ rồi. May mà em hỏi.)* |

---

## Tình huống 15 — Khu nghỉ · 15:00, 休憩 small talk về quê

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、ベトナムでも<ruby>方言<rt>ほうげん</rt></ruby>あるん?<br>*(Thức, ở Việt Nam cũng có phương ngữ à?)* |
| Thức | はい、たくさんあります。<ruby>北<rt>きた</rt></ruby>と<ruby>南<rt>みなみ</rt></ruby>でだいぶ<ruby>違<rt>ちが</rt></ruby>います。<br>*(Vâng, nhiều lắm ạ. Bắc với Nam khác nhau nhiều ạ.)* |
| Kondo | へえ、<ruby>日本<rt>にほん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じやな。<ruby>君<rt>きみ</rt></ruby>のとこは?<br>*(Ồ, giống Nhật nhỉ. Quê em thì sao?)* |
| Thức | ハティンは<ruby>中部<rt>ちゅうぶ</rt></ruby>で、<ruby>言葉<rt>ことば</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>いです。<br>*(Hà Tĩnh ở miền Trung, giọng nặng ạ.)* |
| Kondo | <ruby>関西弁<rt>かんさいべん</rt></ruby>みたいやな。<ruby>同<rt>おな</rt></ruby>じやんけ。<br>*(Giống tiếng Kansai nhỉ. Y chang luôn.)* |
| Thức | (cười) そうかもしれません。<br>*(Có lẽ vậy ạ.)* |

---

## Tình huống 16 — Chân giàn giáo · 15:20, học 「ジャッキ」「ボード」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>下<rt>した</rt></ruby>のジャッキ<ruby>調整<rt>ちょうせい</rt></ruby>して。<br>*(Thức, chỉnh kích ở dưới đi.)* |
| Thức | ジャッキ...<ruby>高<rt>たか</rt></ruby>さを<ruby>変<rt>か</rt></ruby>える<ruby>物<rt>もの</rt></ruby>ですか?<br>*(Jakki... là cái đổi độ cao ạ?)* |
| Kondo | そう。<ruby>足場<rt>あしば</rt></ruby>の<ruby>水平<rt>すいへい</rt></ruby>を<ruby>取<rt>と</rt></ruby>るんや。<ruby>回<rt>まわ</rt></ruby>して<ruby>調整<rt>ちょうせい</rt></ruby>する。<br>*(Đúng. Để lấy phẳng giàn giáo. Vặn để chỉnh.)* |
| Thức | <ruby>水平<rt>すいへい</rt></ruby>を<ruby>取<rt>と</rt></ruby>る...<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Lấy phẳng... quan trọng nhỉ ạ.)* |
| Kondo | <ruby>足場<rt>あしば</rt></ruby>がガタガタやったら<ruby>危<rt>あぶ</rt></ruby>ないからな。<br>*(Giàn giáo lung lay là nguy hiểm đấy.)* |
| Thức | はい、しっかり<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Vâng, em chỉnh kỹ ạ.)* |

---

## Tình huống 17 — Chân giàn giáo · 15:40, áp dụng từ lóng đã học

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>段取<rt>だんど</rt></ruby>りどうや?<br>*(Thức, dandori thế nào?)* |
| Thức | はい、<ruby>明日<rt>あした</rt></ruby>バラす<ruby>材料<rt>ざいりょう</rt></ruby>、もう<ruby>準備<rt>じゅんび</rt></ruby>しました。<br>*(Vâng, vật liệu mai tháo, em chuẩn bị rồi ạ.)* |
| Tanigawa | お、「バラす」も「<ruby>段取<rt>だんど</rt></ruby>り」も<ruby>使<rt>つか</rt></ruby>えるやん。<br>*(Ồ, "barasu" với "dandori" cũng dùng được rồi đấy.)* |
| Thức | はい、<ruby>近藤<rt>こんどう</rt></ruby>さんに<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Vâng, anh Kondo dạy em ạ.)* |
| Tanigawa | <ruby>覚<rt>おぼ</rt></ruby>えるの<ruby>早<rt>はや</rt></ruby>いな。ええ<ruby>感<rt>かん</rt></ruby>じや。<br>*(Học nhanh đấy. Cảm giác tốt.)* |
| Thức | ありがとうございます!<br>*(Cảm ơn sếp ạ!)* |

---

## Tình huống 18 — Chân giàn giáo · 16:00, 親方 khen tiến bộ nghe

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>最近<rt>さいきん</rt></ruby><ruby>俺<rt>おれ</rt></ruby>の<ruby>言<rt>い</rt></ruby>うこと<ruby>分<rt>わ</rt></ruby>かるようになったな。<br>*(Thức, dạo này hiểu được lời tao rồi đấy.)* |
| Thức | はい、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>慣<rt>な</rt></ruby>れてきました。<br>*(Vâng, em đang dần quen ạ.)* |
| Tanigawa | <ruby>分<rt>わ</rt></ruby>からんとき、ちゃんと<ruby>聞<rt>き</rt></ruby>くのがええ。<br>*(Không hiểu mà biết hỏi là tốt.)* |
| Thức | はい、これからも<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, từ giờ em vẫn sẽ hỏi ạ.)* |
| Tanigawa | <ruby>聞<rt>き</rt></ruby>くは<ruby>一時<rt>いっとき</rt></ruby>の<ruby>恥<rt>はじ</rt></ruby>、<ruby>聞<rt>き</rt></ruby>かぬは<ruby>一生<rt>いっしょう</rt></ruby>の<ruby>恥<rt>はじ</rt></ruby>や。<br>*(Hỏi là cái xấu hổ một lúc, không hỏi là cái xấu hổ cả đời.)* |
| Thức | いい<ruby>言葉<rt>ことば</rt></ruby>ですね。おぼえます。<br>*(Câu hay nhỉ ạ. Em ghi nhớ.)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け & xác nhận từ vựng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今日<rt>きょう</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby><ruby>言<rt>い</rt></ruby>うてみ。<br>*(Thức, đọc thử mấy từ hôm nay học xem.)* |
| Thức | ええ=いい、あかん=だめ、ほな=じゃあ。<br>*(Ee = tốt, akan = không được, hona = jaa.)* |
| Kondo | お、ええやん。<ruby>他<rt>ほか</rt></ruby>は?<br>*(Ồ, tốt đấy. Còn nữa?)* |
| Thức | バラす=<ruby>解体<rt>かいたい</rt></ruby>、<ruby>段取<rt>だんど</rt></ruby>り=<ruby>準備<rt>じゅんび</rt></ruby>、ケレン=さび<ruby>落<rt>お</rt></ruby>とし。<br>*(Barasu = tháo dỡ, dandori = chuẩn bị, keren = cạo gỉ.)* |
| Kondo | <ruby>完璧<rt>かんぺき</rt></ruby>や。<ruby>明日<rt>あした</rt></ruby>も<ruby>使<rt>つか</rt></ruby>えるな。<br>*(Hoàn hảo. Mai dùng được luôn.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>事故<rt>じこ</rt></ruby>なし、ケガなし。<br>*(Hôm nay vất vả rồi. Không tai nạn, không thương tích.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Tanigawa | トゥック、<ruby>言葉<rt>ことば</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えてきたな。ええぞ。<br>*(Thức, học từ tốt rồi đấy. Khá lắm.)* |
| Thức | ありがとうございます。<ruby>毎日<rt>まいにち</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Cảm ơn sếp ạ. Em học mỗi ngày ạ.)* |
| Kondo | また<ruby>分<rt>わ</rt></ruby>からん<ruby>言葉<rt>ことば</rt></ruby>あったら<ruby>聞<rt>き</rt></ruby>きや。<br>*(Có từ nào không hiểu lại hỏi nhé.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức học cách giải mã phương ngữ Kansai của 親方: 「ええ」=いい, 「あかん」=だめ, 「ほな」=じゃあ, 「ちゃう」=違う, 「めっちゃ」=とても. Em nắm tiếng lóng nghề tobi: バラす (tháo dỡ), 段取り (chuẩn bị/sắp xếp), ケレン (cạo gỉ), アンコ (vật chèn khe), 殺す (siết cố định). Quan trọng nhất, em biết câu hỏi lại 「すみません、〇〇ってどういう意味ですか?」 và 「ゆっくりお願いします」 — hỏi ngay tại chỗ thay vì gật bừa, đúng tinh thần 「聞くは一時の恥」.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 訛り | なまり | Giọng địa phương |
> | 方言 | ほうげん | Phương ngữ |
> | 関西弁 | かんさいべん | Tiếng Kansai |
> | 解体 | かいたい | Tháo dỡ |
> | 段取り | だんどり | Sắp xếp, chuẩn bị công việc |
> | 順番 | じゅんばん | Thứ tự |
> | 固定 | こてい | Cố định |
> | 調整 | ちょうせい | Điều chỉnh |
> | 水平 | すいへい | Mặt phẳng ngang |
> | 腰道具 | こしどうぐ | Bộ dụng cụ đeo hông |
> | 通訳 | つうやく | Phiên dịch |
> | 教わる | おそわる | Được dạy |
> | 慣れる | なれる | Quen dần |
> | 意味 | いみ | Nghĩa |
> | 恥 | はじ | Sự xấu hổ |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000006, 800000033, NULL, 'markdown_book', 'T6. Lắp dựng giàn giáo (足場の組立て)', '# Sách thực tập sinh xây dựng · T6. Lắp dựng giàn giáo (足場の組立て)

> **Mục tiêu nhân vật:** Thức học mẫu câu khi trực tiếp lắp dựng giàn giáo kiểu くさび緊結式: tên bộ phận (建枠・くさび・筋交い・布板・ジャッキベース), chỉ thị lắp ráp cực ngắn của 親方, xác nhận chốt đã khóa, kiểm tra chắc chắn trước khi lên.

---

## Bối cảnh

Tháng 8 năm 2026. Thức không còn chỉ làm 手元 mà bắt đầu được cho lắp giàn giáo thật cùng 先輩 Kondo. Công trình dùng giàn giáo くさび緊結式 (kiểu khóa nêm). Chương tập trung từ vựng bộ phận giàn giáo và mẫu câu trong thao tác lắp: nhận chỉ thị 「ここに建枠立てて」, đáp xác nhận, kiểm tra 「くさび、よし!」, báo cáo từng tầng xong.

---

## Tình huống 1 — Chân giàn giáo · 8:10, học tên bộ phận giàn giáo

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>足場<rt>あしば</rt></ruby><ruby>組<rt>く</rt></ruby>むぞ。まず<ruby>部品<rt>ぶひん</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えよ。<br>*(Thức, từ hôm nay lắp giàn giáo. Học tên bộ phận trước.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Kondo | これが<ruby>建枠<rt>たてわく</rt></ruby>。<ruby>柱<rt>はしら</rt></ruby>になる<ruby>部品<rt>ぶひん</rt></ruby>や。<br>*(Đây là khung đứng. Bộ phận làm cột.)* |
| Thức | たてわく...<ruby>足場<rt>あしば</rt></ruby>の<ruby>骨<rt>ほね</rt></ruby>ですね。<br>*(Tatewaku... là khung xương giàn giáo nhỉ ạ.)* |
| Kondo | そう、ええ<ruby>例<rt>たと</rt></ruby>えや。これは<ruby>布板<rt>ぬのいた</rt></ruby>、<ruby>歩<rt>ある</rt></ruby>く<ruby>床<rt>ゆか</rt></ruby>な。<br>*(Đúng, ví dụ hay đấy. Đây là ván sàn, chỗ sàn để đi.)* |
| Thức | はい、メモします。<br>*(Vâng, em ghi lại ạ.)* |

---

## Tình huống 2 — Chân giàn giáo · 8:25, học くさび và 筋交い

| Vai | Lời thoại |
|---|---|
| Kondo | これがくさび。ハンマーで<ruby>叩<rt>たた</rt></ruby>いて<ruby>固定<rt>こてい</rt></ruby>するんや。<br>*(Đây là nêm chốt. Gõ búa để cố định.)* |
| Thức | くさびを<ruby>叩<rt>たた</rt></ruby>く...<ruby>音<rt>おと</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Gõ nêm chốt... nghe tiếng là biết ạ?)* |
| Kondo | そう。「カン」といい<ruby>音<rt>おと</rt></ruby>がしたら<ruby>締<rt>し</rt></ruby>まってる。<br>*(Đúng. Nghe "can" tiếng đanh là đã chặt.)* |
| Thức | これは<ruby>筋交<rt>すじか</rt></ruby>いですか?<ruby>斜<rt>なな</rt></ruby>めの<ruby>部品<rt>ぶひん</rt></ruby>。<br>*(Cái này là thanh giằng chéo ạ? Bộ phận chéo.)* |
| Kondo | そや、<ruby>筋交<rt>すじか</rt></ruby>い。<ruby>横<rt>よこ</rt></ruby>ゆれを<ruby>止<rt>と</rt></ruby>める<ruby>大事<rt>だいじ</rt></ruby>な<ruby>部品<rt>ぶひん</rt></ruby>や。<br>*(Đúng, sujikai. Bộ phận quan trọng chặn rung ngang.)* |
| Thức | わかりました。よく<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em hiểu rồi. Em học kỹ ạ.)* |

---

## Tình huống 3 — Chân giàn giáo · 8:40, lắp ジャッキベース đầu tiên

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、まずジャッキベース<ruby>置<rt>お</rt></ruby>くで。ここや。<br>*(Thức, đặt chân kích trước. Chỗ này.)* |
| Thức | ジャッキベースは<ruby>一番<rt>いちばん</rt></ruby><ruby>下<rt>した</rt></ruby>ですか?<br>*(Chân kích ở dưới cùng ạ?)* |
| Kondo | そう。<ruby>足場<rt>あしば</rt></ruby>の<ruby>土台<rt>どだい</rt></ruby>や。<ruby>水平<rt>すいへい</rt></ruby><ruby>取<rt>と</rt></ruby>るで。<br>*(Đúng. Là nền móng giàn giáo. Để lấy phẳng.)* |
| Thức | <ruby>水平<rt>すいへい</rt></ruby>はどうやって<ruby>見<rt>み</rt></ruby>ますか?<br>*(Lấy phẳng xem thế nào ạ?)* |
| Kondo | この<ruby>水平器<rt>すいへいき</rt></ruby>で。<ruby>泡<rt>あわ</rt></ruby>が<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>に<ruby>来<rt>き</rt></ruby>たらOK。<br>*(Bằng cái thước thủy này. Bọt khí về giữa là OK.)* |
| Thức | はい、<ruby>泡<rt>あわ</rt></ruby>を<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>に。やってみます。<br>*(Vâng, bọt khí về giữa. Em thử ạ.)* |

---

## Tình huống 4 — Chân giàn giáo · 9:00, dựng 建枠 tầng 1

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>次<rt>つぎ</rt></ruby>、ここに<ruby>建枠<rt>たてわく</rt></ruby><ruby>立<rt>た</rt></ruby>てて。まっすぐな。<br>*(Tiếp, dựng khung đứng vào đây. Thẳng nhé.)* |
| Thức | はい。(dựng) まっすぐですか?<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Vâng. Thẳng chưa ạ? Anh kiểm tra giúp em.)* |
| Kondo | (xem) ちょっと<ruby>右<rt>みぎ</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>いてる。<ruby>少<rt>すこ</rt></ruby>し<ruby>戻<rt>もど</rt></ruby>して。<br>*(Hơi nghiêng phải. Chỉnh lại chút.)* |
| Thức | これくらいですか?<br>*(Cỡ này ạ?)* |
| Kondo | そう、まっすぐや。<ruby>次<rt>つぎ</rt></ruby>もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>立<rt>た</rt></ruby>てて。<br>*(Đúng, thẳng rồi. Tiếp dựng cái nữa.)* |
| Thức | はい、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>立<rt>た</rt></ruby>てます。<br>*(Vâng, em dựng cái nữa ạ.)* |

---

## Tình huống 5 — Chân giàn giáo · 9:20, đóng くさび xác nhận âm thanh

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、くさび<ruby>叩<rt>たた</rt></ruby>いて。しっかりな。<br>*(Thức, gõ nêm chốt đi. Cho chắc nhé.)* |
| Thức | (gõ) カン、カン。これでいいですか?<br>*(Can, can. Thế này được chưa ạ?)* |
| Kondo | もう<ruby>一発<rt>いっぱつ</rt></ruby>。<ruby>音<rt>おと</rt></ruby>が<ruby>変<rt>か</rt></ruby>わるまで。<br>*(Một phát nữa. Đến khi tiếng đổi.)* |
| Thức | (gõ) カン!<ruby>音<rt>おと</rt></ruby>、<ruby>高<rt>たか</rt></ruby>くなりました。<br>*(Can! Tiếng cao lên rồi ạ.)* |
| Kondo | それや!<ruby>締<rt>し</rt></ruby>まった<ruby>証拠<rt>しょうこ</rt></ruby>や。<br>*(Đúng đó! Là bằng chứng đã chặt.)* |
| Thức | わかりました。<ruby>音<rt>おと</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>します。<br>*(Em hiểu rồi. Em phán đoán qua tiếng ạ.)* |

---

## Tình huống 6 — Chân giàn giáo · 9:40, lắp 布板 sàn đi

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>次<rt>つぎ</rt></ruby>、<ruby>布板<rt>ぬのいた</rt></ruby>かけるで。フックを<ruby>引<rt>ひ</rt></ruby>っかける。<br>*(Tiếp, gác ván sàn. Móc cái khớp vào.)* |
| Thức | こちら<ruby>側<rt>がわ</rt></ruby>から<ruby>先<rt>さき</rt></ruby>ですか?<br>*(Bên này trước ạ?)* |
| Kondo | そう、<ruby>奥<rt>おく</rt></ruby>から<ruby>手前<rt>てまえ</rt></ruby>へ。すき<ruby>間<rt>ま</rt></ruby><ruby>作<rt>つく</rt></ruby>るな。<br>*(Đúng, từ trong ra ngoài. Đừng để hở khe.)* |
| Thức | すき<ruby>間<rt>ま</rt></ruby>があると<ruby>危<rt>あぶ</rt></ruby>ないですか?<br>*(Có khe hở thì nguy hiểm ạ?)* |
| Kondo | <ruby>足<rt>あし</rt></ruby><ruby>挟<rt>はさ</rt></ruby>んだり<ruby>物<rt>もの</rt></ruby><ruby>落<rt>お</rt></ruby>ちたりする。きっちりな。<br>*(Kẹt chân hay rơi đồ. Cho khít nhé.)* |
| Thức | はい、すき<ruby>間<rt>ま</rt></ruby>なく<ruby>並<rt>なら</rt></ruby>べます。<br>*(Vâng, em xếp không để hở ạ.)* |

---

## Tình huống 7 — Giàn giáo tầng 1 · 10:00, lắp 筋交い chống rung

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>筋交<rt>すじか</rt></ruby>い<ruby>入<rt>い</rt></ruby>れるで。<ruby>斜<rt>なな</rt></ruby>めにかける。<br>*(Thức, lắp thanh giằng chéo. Gác chéo vào.)* |
| Thức | どの<ruby>向<rt>む</rt></ruby>きですか?<br>*(Hướng nào ạ?)* |
| Kondo | <ruby>左下<rt>ひだりした</rt></ruby>から<ruby>右上<rt>みぎうえ</rt></ruby>へ。<ruby>両方<rt>りょうほう</rt></ruby>のピンを<ruby>差<rt>さ</rt></ruby>す。<br>*(Từ dưới trái lên trên phải. Cắm chốt cả hai đầu.)* |
| Thức | <ruby>両方<rt>りょうほう</rt></ruby>のピン、<ruby>差<rt>さ</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chốt hai đầu, em cắm rồi. Anh kiểm tra giúp ạ.)* |
| Kondo | (kiểm tra) よし、<ruby>抜<rt>ぬ</rt></ruby>けてへんな。これで<ruby>揺<rt>ゆ</rt></ruby>れんようになる。<br>*(Được, không tuột. Thế này sẽ hết rung.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 8 — Giàn giáo tầng 1 · 10:30, kiểm tra trước khi lên tầng 2

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>2<rt>に</rt></ruby><ruby>段目<rt>だんめ</rt></ruby><ruby>行<rt>い</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>点検<rt>てんけん</rt></ruby>や。<br>*(Thức, trước khi lên tầng 2 phải kiểm tra.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しますか?<br>*(Xác nhận những gì ạ?)* |
| Kondo | くさび、<ruby>筋交<rt>すじか</rt></ruby>い、<ruby>布板<rt>ぬのいた</rt></ruby>。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>や。<br>*(Nêm chốt, giằng chéo, ván sàn. Chỉ tay xác nhận hết.)* |
| Thức | (chỉ tay) くさび、よし!<ruby>筋交<rt>すじか</rt></ruby>い、よし!<ruby>布板<rt>ぬのいた</rt></ruby>、よし!<br>*(Nêm chốt, OK! Giằng chéo, OK! Ván sàn, OK!)* |
| Kondo | ええぞ。<ruby>下<rt>した</rt></ruby>がしっかりせんと<ruby>上<rt>うえ</rt></ruby>は<ruby>組<rt>く</rt></ruby>めん。<br>*(Tốt. Dưới không chắc thì không lắp trên được.)* |
| Thức | はい、<ruby>下<rt>した</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Vâng, dưới quan trọng nhỉ ạ.)* |

---

## Tình huống 9 — Khu nghỉ · 10:50, anh Long dặn về lắp giàn giáo (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Bắt đầu lắp 足場 thật rồi à? Đây là việc chính của tobi đấy. |
| Thức | Vâng anh, em được lắp 建枠 với đóng くさび. Mệt mà vui ạ. |
| Anh Long | Nhớ này: くさび phải nghe tiếng "can" đanh mới chắc, đừng đóng qua loa. Một chốt lỏng cả giàn giáo nguy hiểm. |
| Thức | Vâng, anh Kondo cũng dặn nghe tiếng. Em tập phân biệt tiếng rồi ạ. |
| Anh Long | Tốt. Còn lên tầng trên thì luôn 二丁かけ, đừng ham nhanh mà tháo cả hai móc. Anh thấy nhiều người ẩu chỗ đó. |
| Thức | Em luôn giữ một móc ạ. Cảm ơn anh nhắc. |

---

## Tình huống 10 — Giàn giáo tầng 2 · 11:10, lắp 建枠 trên cao

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>下<rt>した</rt></ruby>から<ruby>建枠<rt>たてわく</rt></ruby>もらうで。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って。<br>*(Thức, nhận khung đứng từ dưới đưa lên. Đỡ lấy.)* |
| Thức | はい、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ります。フックかけてからですか?<br>*(Vâng, em nhận. Móc dây xong rồi nhận ạ?)* |
| Kondo | <ruby>当然<rt>とうぜん</rt></ruby>や。フックなしで<ruby>手<rt>て</rt></ruby><ruby>離<rt>はな</rt></ruby>すな。<br>*(Đương nhiên. Không có móc thì đừng rời tay.)* |
| Thức | (đã móc) フック、よし。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る<ruby>準備<rt>じゅんび</rt></ruby>できました。<br>*(Đã móc. Móc, OK. Em sẵn sàng nhận ạ.)* |
| Kondo | よし、いくで。せーの。<br>*(Được, đưa đây. Một hai nào.)* |
| Thức | はい、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>りました。<br>*(Vâng, em nhận được rồi ạ.)* |

---

## Tình huống 11 — Giàn giáo tầng 2 · 11:30, 親方 kiểm tra chốt

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、そのくさび<ruby>叩<rt>たた</rt></ruby>いたんか?<br>*(Thức, cái nêm chốt đó gõ chưa?)* |
| Thức | はい、<ruby>叩<rt>たた</rt></ruby>きました。<ruby>音<rt>おと</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, em gõ rồi. Tiếng cũng kiểm tra rồi ạ.)* |
| Tanigawa | (gõ thử) ...カン。よし、<ruby>締<rt>し</rt></ruby>まっとる。<br>*(...Can. Được, chặt rồi.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたか?<br>*(Có ổn không ạ?)* |
| Tanigawa | ええ<ruby>仕事<rt>しごと</rt></ruby>や。くさびは<ruby>命<rt>いのち</rt></ruby><ruby>守<rt>まも</rt></ruby>る。<ruby>手<rt>て</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>くな。<br>*(Làm tốt. Nêm chốt giữ mạng sống. Đừng làm ẩu.)* |
| Thức | はい、ぜったい<ruby>手<rt>て</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>きません。<br>*(Vâng, em tuyệt đối không làm ẩu ạ.)* |

---

## Tình huống 12 — Giàn giáo tầng 2 · 13:00, lắp lan can 手すり

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>手<rt>て</rt></ruby>すりつけるで。<ruby>落<rt>お</rt></ruby>ちんようにな。<br>*(Thức, lắp lan can. Cho khỏi ngã.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりは<ruby>何本<rt>なんぼん</rt></ruby>つけますか?<br>*(Lan can lắp mấy thanh ạ?)* |
| Kondo | <ruby>上<rt>うえ</rt></ruby>と<ruby>中<rt>なか</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>。<ruby>法律<rt>ほうりつ</rt></ruby>で<ruby>決<rt>き</rt></ruby>まっとる。<br>*(Trên với giữa, hai thanh. Luật quy định rồi.)* |
| Thức | <ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>ですね。これで<ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>ですか?<br>*(Hai thanh ạ. Thế này là chống rơi ngã ạ?)* |
| Kondo | そや。<ruby>手<rt>て</rt></ruby>すりなしの<ruby>足場<rt>あしば</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>あかん。<br>*(Đúng. Giàn giáo không lan can là tuyệt đối không được.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ずつけます。<br>*(Vâng, em nhất định lắp ạ.)* |

---

## Tình huống 13 — Giàn giáo tầng 2 · 13:30, lắp 幅木 chống đồ rơi

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>足元<rt>あしもと</rt></ruby>に<ruby>幅木<rt>はばき</rt></ruby><ruby>入<rt>い</rt></ruby>れて。<ruby>物<rt>もの</rt></ruby><ruby>落<rt>お</rt></ruby>とさんために。<br>*(Lắp tấm chắn chân vào. Để khỏi rơi đồ.)* |
| Thức | <ruby>幅木<rt>はばき</rt></ruby>...<ruby>足元<rt>あしもと</rt></ruby>の<ruby>板<rt>いた</rt></ruby>ですか?<br>*(Habaki... là tấm ván ở chỗ chân ạ?)* |
| Kondo | そう。<ruby>道具<rt>どうぐ</rt></ruby>が<ruby>転<rt>ころ</rt></ruby>がっても<ruby>下<rt>した</rt></ruby>に<ruby>落<rt>お</rt></ruby>ちん。<br>*(Đúng. Dụng cụ có lăn cũng không rơi xuống dưới.)* |
| Thức | <ruby>下<rt>した</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>物<rt>もの</rt></ruby>ですね。<br>*(Là vật bảo vệ người phía dưới đúng không ạ.)* |
| Kondo | そや。これも<ruby>命<rt>いのち</rt></ruby><ruby>守<rt>まも</rt></ruby>る<ruby>部品<rt>ぶひん</rt></ruby>や。<br>*(Đúng. Đây cũng là bộ phận giữ mạng sống.)* |
| Thức | はい、しっかり<ruby>入<rt>い</rt></ruby>れます。<br>*(Vâng, em lắp chắc ạ.)* |

---

## Tình huống 14 — Giàn giáo tầng 2 · 14:00, báo cáo lắp xong tầng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>2<rt>に</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>、<ruby>組<rt>く</rt></ruby>み<ruby>終<rt>お</rt></ruby>わりました。<br>*(Anh Kondo, em báo cáo. Tầng 2, lắp xong rồi ạ.)* |
| Kondo | お、はやいな。<ruby>手<rt>て</rt></ruby>すりと<ruby>幅木<rt>はばき</rt></ruby>は?<br>*(Ồ, nhanh nhỉ. Lan can với chắn chân?)* |
| Thức | <ruby>両方<rt>りょうほう</rt></ruby>つけました。くさびも<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Cả hai em lắp rồi. Nêm chốt cũng kiểm tra xong hết ạ.)* |
| Kondo | <ruby>完璧<rt>かんぺき</rt></ruby>や。<ruby>確認<rt>かくにん</rt></ruby>に<ruby>行<rt>い</rt></ruby>くわ。<br>*(Hoàn hảo. Anh đi kiểm tra đây.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Kondo | <ruby>報告<rt>ほうこく</rt></ruby>もきっちりやな。ええ<ruby>職人<rt>しょくにん</rt></ruby>になるで。<br>*(Báo cáo cũng gọn gàng. Thành thợ giỏi đấy.)* |

---

## Tình huống 15 — Giàn giáo tầng 2 · 14:30, được sửa lỗi lắp 筋交い

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、その<ruby>筋交<rt>すじか</rt></ruby>い<ruby>向<rt>む</rt></ruby>き<ruby>逆<rt>ぎゃく</rt></ruby>やぞ。<br>*(Thức, thanh giằng chéo đó ngược hướng rồi.)* |
| Thức | あ、すみません。どう<ruby>直<rt>なお</rt></ruby>しますか?<br>*(À, em xin lỗi. Sửa thế nào ạ?)* |
| Tanigawa | <ruby>一回<rt>いっかい</rt></ruby><ruby>外<rt>はず</rt></ruby>して、<ruby>反対<rt>はんたい</rt></ruby>にかけ<ruby>直<rt>なお</rt></ruby>せ。<br>*(Tháo ra một lần, gác lại ngược lại.)* |
| Thức | はい。<ruby>外<rt>はず</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>かけます。「<ruby>筋交<rt>すじか</rt></ruby>い<ruby>外<rt>はず</rt></ruby>します!」<br>*(Vâng. Trước khi tháo em hô. "Tháo giằng chéo!")* |
| Tanigawa | おう、<ruby>声<rt>こえ</rt></ruby>かけはええクセや。<br>*(Ờ, hô báo là thói quen tốt.)* |
| Thức | (làm lại) <ruby>直<rt>なお</rt></ruby>しました。これで<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Em sửa rồi. Thế này đúng chưa ạ?)* |

---

## Tình huống 16 — Khu nghỉ · 15:00, 休憩 small talk

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>足場<rt>あしば</rt></ruby><ruby>組<rt>く</rt></ruby>むの<ruby>面白<rt>おもしろ</rt></ruby>いやろ?<br>*(Thức, lắp giàn giáo thú vị nhỉ?)* |
| Thức | はい、<ruby>形<rt>かたち</rt></ruby>ができていくのが<ruby>楽<rt>たの</rt></ruby>しいです。<br>*(Vâng, thấy nó dần thành hình rất vui ạ.)* |
| Kondo | <ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>そう<ruby>思<rt>おも</rt></ruby>たわ。とびはやりがいあるで。<br>*(Anh hồi đầu cũng nghĩ vậy. Tobi đáng làm lắm.)* |
| Thức | <ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>、まだ<ruby>少<rt>すこ</rt></ruby>し<ruby>怖<rt>こわ</rt></ruby>いですが...<br>*(Trên cao em vẫn hơi sợ ạ...)* |
| Kondo | <ruby>怖<rt>こわ</rt></ruby>いのは<ruby>正常<rt>せいじょう</rt></ruby>や。<ruby>怖<rt>こわ</rt></ruby>くなくなったら<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Sợ là bình thường. Hết sợ mới là nguy hiểm.)* |
| Thức | なるほど、いい<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Ra vậy, câu hay nhỉ ạ.)* |

---

## Tình huống 17 — Giàn giáo tầng 3 · 15:30, phối hợp đưa 建枠 lên cao

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>3<rt>さん</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>や。<ruby>建枠<rt>たてわく</rt></ruby><ruby>渡<rt>わた</rt></ruby>すで。<br>*(Thức, tầng 3 đây. Đưa khung đứng nhé.)* |
| Thức | はい。せーので<ruby>渡<rt>わた</rt></ruby>しますか?<br>*(Vâng. Hô "se-no" rồi đưa ạ?)* |
| Kondo | そう。「いくで」<ruby>言<rt>い</rt></ruby>うたら<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って。<br>*(Đúng. Anh nói "iku de" thì đỡ lấy.)* |
| Kondo | いくで、せーの!<br>*(Đưa đây, một hai!)* |
| Thức | はい!(nhận) <ruby>取<rt>と</rt></ruby>りました!<br>*(Vâng! Em nhận được rồi!)* |
| Kondo | ええ<ruby>呼吸<rt>こきゅう</rt></ruby>や。だいぶ<ruby>慣<rt>な</rt></ruby>れたな。<br>*(Ăn ý đấy. Quen lắm rồi.)* |

---

## Tình huống 18 — Giàn giáo tầng 3 · 16:00, kiểm tra tổng thể với 親方

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>3<rt>さん</rt></ruby><ruby>段目<rt>だんめ</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>するぞ。ついて<ruby>来<rt>こ</rt></ruby>い。<br>*(Thức, kiểm tra hết tầng 3. Theo tao.)* |
| Thức | はい。<ruby>何<rt>なに</rt></ruby>から<ruby>見<rt>み</rt></ruby>ますか?<br>*(Vâng. Xem từ đâu ạ?)* |
| Tanigawa | <ruby>下<rt>した</rt></ruby>のジャッキから。グラグラしてへんか<ruby>確認<rt>かくにん</rt></ruby>や。<br>*(Từ kích dưới. Kiểm tra có lung lay không.)* |
| Thức | (lay thử) <ruby>動<rt>うご</rt></ruby>きません。しっかりしています。<br>*(Không nhúc nhích ạ. Chắc chắn ạ.)* |
| Tanigawa | よし。くさび、<ruby>筋交<rt>すじか</rt></ruby>い、<ruby>手<rt>て</rt></ruby>すり、<ruby>全部<rt>ぜんぶ</rt></ruby>な。<br>*(Được. Nêm chốt, giằng chéo, lan can, hết nhé.)* |
| Thức | はい、<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em chỉ tay xác nhận từng cái ạ.)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け & phân loại bộ phận

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>余<rt>あま</rt></ruby>った<ruby>部品<rt>ぶひん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>ごとに<ruby>分<rt>わ</rt></ruby>けて。<br>*(Thức, bộ phận thừa phân loại theo loại đi.)* |
| Thức | <ruby>建枠<rt>たてわく</rt></ruby>と<ruby>布板<rt>ぬのいた</rt></ruby>を<ruby>別<rt>べつ</rt></ruby>にしますか?<br>*(Khung đứng với ván sàn để riêng ạ?)* |
| Kondo | そう。くさびとピンは<ruby>箱<rt>はこ</rt></ruby>にまとめて。<br>*(Đúng. Nêm chốt với chốt gom vào hộp.)* |
| Thức | わかりました。<ruby>数<rt>かず</rt></ruby>も<ruby>数<rt>かぞ</rt></ruby>えますか?<br>*(Em hiểu rồi. Đếm số luôn ạ?)* |
| Kondo | <ruby>数<rt>かぞ</rt></ruby>えて<ruby>明日<rt>あした</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>して。<ruby>足<rt>た</rt></ruby>りるか<ruby>確認<rt>かくにん</rt></ruby>や。<br>*(Đếm rồi mai báo cáo. Xem có đủ không.)* |
| Thức | はい、<ruby>数<rt>かぞ</rt></ruby>えてノートに<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em đếm rồi ghi vào sổ ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>段<rt>だん</rt></ruby>まで<ruby>組<rt>く</rt></ruby>めました。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hôm nay lắp được đến tầng 3. Vất vả rồi.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Tanigawa | トゥック、くさびの<ruby>音<rt>おと</rt></ruby><ruby>分<rt>わ</rt></ruby>かるようになったな。<br>*(Thức, phân biệt được tiếng nêm chốt rồi đấy.)* |
| Thức | はい、<ruby>耳<rt>みみ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, em học bằng tai ạ.)* |
| Kondo | <ruby>明日<rt>あした</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>や。<ruby>気<rt>き</rt></ruby><ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めてこ。<br>*(Mai là tầng 4. Tập trung lên nhé.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức nắm tên các bộ phận giàn giáo くさび緊結式: 建枠 (khung đứng), くさび (nêm chốt), 筋交い (giằng chéo), 布板 (ván sàn), ジャッキベース (chân kích), 手すり (lan can), 幅木 (tấm chắn chân). Em học cách đóng くさび nghe tiếng "カン" đanh để biết đã chặt, lắp đúng hướng 筋交い, kiểm tra 指差し確認 từng tầng trước khi lên, và hô báo 「〇〇外します!」 trước khi tháo. Bài học: "sợ trên cao là bình thường, hết sợ mới nguy hiểm".

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 組立て | くみたて | Lắp dựng |
> | 建枠 | たてわく | Khung đứng giàn giáo |
> | くさび | くさび | Nêm chốt khóa |
> | 筋交い | すじかい | Thanh giằng chéo |
> | 布板 | ぬのいた | Ván sàn giàn giáo |
> | ジャッキベース | じゃっきべーす | Chân kích điều chỉnh |
> | 手すり | てすり | Lan can |
> | 幅木 | はばき | Tấm chắn chân (chống rơi đồ) |
> | 水平器 | すいへいき | Thước thủy (đo phẳng) |
> | 土台 | どだい | Nền móng |
> | 固定 | こてい | Cố định |
> | 点検 | てんけん | Kiểm tra |
> | 指差し確認 | ゆびさしかくにん | Chỉ tay xác nhận |
> | 部品 | ぶひん | Bộ phận, linh kiện |
> | 呼吸 | こきゅう | Nhịp ăn ý (phối hợp) |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000007, 800000033, NULL, 'markdown_book', 'T7. Cảnh báo nguy hiểm & ヒヤリハット đầu (危険警告)', '# Sách thực tập sinh xây dựng · T7. Cảnh báo nguy hiểm & ヒヤリハット đầu (危険警告)

> **Mục tiêu nhân vật:** Thức học các khẩu lệnh cảnh báo nguy hiểm khẩn cấp ở công trường: 「上！」「下！」「危ない！」「ストップ！」「よけて！」, phản xạ né khi nghe cảnh báo, và cách báo cáo một vụ ヒヤリハット (suýt tai nạn) đầu tiên của bản thân.

---

## Bối cảnh

Tháng 9 năm 2026. Công trình vào giai đoạn đông người làm cùng lúc, nguy cơ va chạm và rơi đồ cao. 職長 Saito huấn luyện riêng các khẩu lệnh cảnh báo phải hô to và phản xạ tránh ngay. Giữa chương, Thức gặp một vụ ヒヤリハット (hiyari-hatto — tình huống suýt tai nạn) đầu tiên và học cách báo cáo đúng. Chương tập trung mẫu câu cảnh báo cực ngắn + báo cáo sự việc.

---

## Tình huống 1 — Chân giàn giáo · 8:10, học khẩu lệnh 「上！」「下！」

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>警告<rt>けいこく</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えます。<br>*(Thức, hôm nay anh dạy từ cảnh báo.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Saito | <ruby>上<rt>うえ</rt></ruby>から<ruby>物<rt>もの</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちるとき、「<ruby>上<rt>うえ</rt></ruby>！」と<ruby>叫<rt>さけ</rt></ruby>びます。<br>*(Khi đồ rơi từ trên, hô to "Ue!" (trên!).)* |
| Thức | 「<ruby>上<rt>うえ</rt></ruby>！」を<ruby>聞<rt>き</rt></ruby>いたら、どうしますか?<br>*(Nghe "Ue!" thì làm gì ạ?)* |
| Saito | すぐ<ruby>頭<rt>あたま</rt></ruby>を<ruby>守<rt>まも</rt></ruby>って、<ruby>横<rt>よこ</rt></ruby>に<ruby>逃<rt>に</rt></ruby>げます。<ruby>上<rt>うえ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ない。<br>*(Lập tức che đầu, né sang bên. Không ngẩng lên nhìn.)* |
| Thức | わかりました。<ruby>上<rt>うえ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ないで<ruby>逃<rt>に</rt></ruby>げます。<br>*(Em hiểu rồi. Không nhìn lên mà chạy né ạ.)* |

---

## Tình huống 2 — Chân giàn giáo · 8:25, tập phản xạ 「ストップ！」

| Vai | Lời thoại |
|---|---|
| Saito | 「ストップ！」は<ruby>動<rt>うご</rt></ruby>きを<ruby>止<rt>と</rt></ruby>める<ruby>言葉<rt>ことば</rt></ruby>です。<br>*("Sutoppu!" là từ dừng mọi cử động.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>をしていても<ruby>止<rt>と</rt></ruby>まりますか?<br>*(Đang làm gì cũng dừng ạ?)* |
| Saito | はい、<ruby>絶対<rt>ぜったい</rt></ruby>すぐ<ruby>止<rt>と</rt></ruby>まります。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>聞<rt>き</rt></ruby>きます。<br>*(Đúng, tuyệt đối dừng ngay. Lý do hỏi sau.)* |
| Saito | <ruby>練習<rt>れんしゅう</rt></ruby>します。ストップ！<br>*(Tập nào. Stop!)* |
| Thức | (đứng yên) <ruby>止<rt>と</rt></ruby>まりました!<br>*(Em dừng rồi!)* |
| Saito | いいですね。<ruby>考<rt>かんが</rt></ruby>えずに<ruby>止<rt>と</rt></ruby>まる、それが<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Tốt lắm. Dừng không cần nghĩ, đó là cứu mạng.)* |

---

## Tình huống 3 — Chân giàn giáo · 8:45, học 「危ない！」「よけて！」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、「<ruby>危<rt>あぶ</rt></ruby>ない！」<ruby>聞<rt>き</rt></ruby>いたら<ruby>体<rt>からだ</rt></ruby><ruby>動<rt>うご</rt></ruby>かす。<br>*(Thức, nghe "Abunai!" là cử động người ngay.)* |
| Thức | どっちに<ruby>動<rt>うご</rt></ruby>けばいいですか?<br>*(Né về hướng nào ạ?)* |
| Kondo | <ruby>声<rt>こえ</rt></ruby>のする<ruby>方<rt>ほう</rt></ruby>と<ruby>反対<rt>はんたい</rt></ruby>。「よけて！」も<ruby>同<rt>おな</rt></ruby>じや。<br>*(Ngược hướng có tiếng. "Yokete!" cũng vậy.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>の<ruby>反対<rt>はんたい</rt></ruby><ruby>側<rt>がわ</rt></ruby>に<ruby>逃<rt>に</rt></ruby>げる、ですね。<br>*(Né về phía ngược với tiếng đúng không ạ.)* |
| Kondo | そや。<ruby>迷<rt>まよ</rt></ruby>うな。<ruby>一瞬<rt>いっしゅん</rt></ruby>で<ruby>決<rt>き</rt></ruby>める。<br>*(Đúng. Đừng do dự. Quyết trong tích tắc.)* |
| Thức | はい、すぐ<ruby>動<rt>うご</rt></ruby>きます。<br>*(Vâng, em sẽ né ngay ạ.)* |

---

## Tình huống 4 — Giàn giáo tầng 2 · 9:10, lần đầu phải hô 「下！」

| Vai | Lời thoại |
|---|---|
| Thức | (làm rơi cờ-lê) あ！<ruby>下<rt>した</rt></ruby>ー！<ruby>下<rt>した</rt></ruby>ー！<br>*(A! Dưới! Dưới!)* |
| Anh Long | (phía dưới né) おっと！<br>*(Hú vía!)* |
| Kondo | トゥックくん、ちゃんと<ruby>叫<rt>さけ</rt></ruby>べたな。ええぞ。<br>*(Thức, hô được đấy. Tốt.)* |
| Thức | すみません、ラチェットを<ruby>落<rt>お</rt></ruby>としました。<br>*(Em xin lỗi, em làm rơi cờ-lê ạ.)* |
| Kondo | <ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>したから<ruby>当<rt>あ</rt></ruby>たらんかった。それが<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Vì hô nên không trúng ai. Đó mới quan trọng.)* |
| Thức | はい、<ruby>落<rt>お</rt></ruby>としたらすぐ<ruby>叫<rt>さけ</rt></ruby>びます。<br>*(Vâng, rơi đồ là em hô ngay ạ.)* |

---

## Tình huống 5 — Chân giàn giáo · 9:30, anh Long nhắc Thức (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Thức, nãy cái cờ-lê suýt trúng đầu anh đấy. |
| Thức | Em xin lỗi anh, em sơ ý quá. May mà em hô kịp "下！". |
| Anh Long | Hô là đúng rồi, không trách em chuyện đó. Nhưng dụng cụ trên cao phải buộc dây 落下防止 đầy đủ, đừng để rơi lần hai. |
| Thức | Vâng anh, em quên buộc dây cái cờ-lê đó. Em sẽ kiểm tra lại hết. |
| Anh Long | Ừ. Và phải báo 職長 vụ này, đây là ヒヤリハット đấy, không được giấu. Báo để cả tổ rút kinh nghiệm. |
| Thức | Vâng, em đi báo ngay ạ. Cảm ơn anh. |

---

## Tình huống 6 — Chân giàn giáo · 9:45, báo cáo ヒヤリハット cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、ヒヤリハットの<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Đốc công, em có báo cáo một vụ hiyari-hatto.)* |
| Saito | はい、<ruby>何<rt>なに</rt></ruby>がありましたか?<br>*(Được, có chuyện gì?)* |
| Thức | <ruby>2<rt>に</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>でラチェットを<ruby>落<rt>お</rt></ruby>としました。<ruby>下<rt>した</rt></ruby>にロンさんがいました。<br>*(Em làm rơi cờ-lê ở tầng 2. Phía dưới có anh Long.)* |
| Saito | ケガは?<br>*(Có thương tích không?)* |
| Thức | ありません。<ruby>叫<rt>さけ</rt></ruby>んで、ロンさんが<ruby>逃<rt>に</rt></ruby>げました。<br>*(Không ạ. Em hô, anh Long né được ạ.)* |
| Saito | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してくれてありがとう。<ruby>原因<rt>げんいん</rt></ruby>は?<br>*(Cảm ơn đã báo thật. Nguyên nhân?)* |

---

## Tình huống 7 — Chân giàn giáo · 9:55, phân tích nguyên nhân ヒヤリハット

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>原因<rt>げんいん</rt></ruby>は、ラチェットにひもをつけていなかったことです。<br>*(Nguyên nhân là em chưa buộc dây vào cờ-lê ạ.)* |
| Saito | そうですか。<ruby>対策<rt>たいさく</rt></ruby>はどうしますか?<br>*(Vậy à. Biện pháp thì sao?)* |
| Thức | <ruby>高所<rt>こうしょ</rt></ruby>の<ruby>道具<rt>どうぐ</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby>ひもをつけます。<ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Dụng cụ trên cao em sẽ buộc dây hết. Kiểm tra trước khi làm ạ.)* |
| Saito | いい<ruby>対策<rt>たいさく</rt></ruby>です。これを<ruby>朝礼<rt>ちょうれい</rt></ruby>でみんなに<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Biện pháp tốt. Cái này sẽ chia sẻ cả tổ ở họp sáng.)* |
| Thức | はい。<ruby>恥<rt>はず</rt></ruby>かしいですが、<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Vâng. Hơi xấu hổ ạ, nhưng em sẽ chia sẻ.)* |
| Saito | <ruby>恥<rt>はず</rt></ruby>かしくないです。<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐ<ruby>大事<rt>だいじ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>です。<br>*(Không có gì xấu hổ. Là thông tin quan trọng phòng tai nạn.)* |

---

## Tình huống 8 — Chân giàn giáo · 10:20, học 「玉掛けよし」「合図」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>声<rt>こえ</rt></ruby>かけは<ruby>警告<rt>けいこく</rt></ruby>だけやない。<ruby>合図<rt>あいず</rt></ruby>もや。<br>*(Thức, hô báo không chỉ là cảnh báo. Còn là ra hiệu.)* |
| Thức | <ruby>合図<rt>あいず</rt></ruby>...どんな<ruby>時<rt>とき</rt></ruby>ですか?<br>*(Aizu... lúc nào ạ?)* |
| Kondo | <ruby>物<rt>もの</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かす<ruby>時<rt>とき</rt></ruby>「いくよ」、<ruby>止<rt>と</rt></ruby>める<ruby>時<rt>とき</rt></ruby>「<ruby>止<rt>と</rt></ruby>めて」や。<br>*(Khi di chuyển đồ "iku yo", khi dừng "tomete".)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせて<ruby>動<rt>うご</rt></ruby>くのですね。<br>*(Khớp tiếng rồi mới làm đúng không ạ.)* |
| Kondo | そや。<ruby>黙<rt>だま</rt></ruby>って<ruby>動<rt>うご</rt></ruby>かすのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Đúng. Lặng lẽ động đồ là nguy hiểm nhất.)* |
| Thức | はい、かならず<ruby>声<rt>こえ</rt></ruby>かけます。<br>*(Vâng, em luôn hô báo ạ.)* |

---

## Tình huống 9 — Giàn giáo tầng 2 · 10:40, nghe 「上！」 phản xạ tránh

| Vai | Lời thoại |
|---|---|
| Kondo | (từ trên) <ruby>上<rt>うえ</rt></ruby>ー！<ruby>板<rt>いた</rt></ruby><ruby>落<rt>お</rt></ruby>ちるー！<br>*(Trên! Rơi ván!)* |
| Thức | (che đầu, né ngang) はい！<br>*(Vâng!)* |
| Kondo | (xuống xem) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か?<ruby>当<rt>あ</rt></ruby>たらんかったか?<br>*(Có sao không? Không trúng chứ?)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。すぐ<ruby>横<rt>よこ</rt></ruby>に<ruby>逃<rt>に</rt></ruby>げました。<br>*(Không sao ạ. Em né ngay sang bên ạ.)* |
| Kondo | ええ<ruby>反応<rt>はんのう</rt></ruby>や。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えたな。<br>*(Phản xạ tốt. Cơ thể nhớ rồi đấy.)* |
| Thức | はい、<ruby>練習<rt>れんしゅう</rt></ruby>のおかげです。<br>*(Vâng, nhờ luyện tập ạ.)* |

---

## Tình huống 10 — Chân giàn giáo · 11:00, được khen vì hô cảnh báo đúng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、さっき「<ruby>下<rt>した</rt></ruby>！」って<ruby>叫<rt>さけ</rt></ruby>んだやろ。<br>*(Thức, lúc nãy mày hô "Shita!" nhỉ.)* |
| Thức | はい、ラチェットを<ruby>落<rt>お</rt></ruby>としたとき<ruby>叫<rt>さけ</rt></ruby>びました。<br>*(Vâng, lúc làm rơi cờ-lê em đã hô ạ.)* |
| Tanigawa | <ruby>落<rt>お</rt></ruby>としたのはあかんが、<ruby>叫<rt>さけ</rt></ruby>んだのはようやった。<br>*(Làm rơi là sai, nhưng hô được là tốt.)* |
| Thức | ありがとうございます。<ruby>次<rt>つぎ</rt></ruby>は<ruby>落<rt>お</rt></ruby>としません。<br>*(Cảm ơn sếp ạ. Lần sau em không làm rơi nữa ạ.)* |
| Tanigawa | <ruby>叫<rt>さけ</rt></ruby>べん<ruby>奴<rt>やつ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>こわい。<ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>すのは<ruby>恥<rt>はじ</rt></ruby>やない。<br>*(Đứa không hô mới đáng sợ nhất. Hô không phải xấu hổ.)* |
| Thức | はい、<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で<ruby>叫<rt>さけ</rt></ruby>びます。<br>*(Vâng, em sẽ hô thật to ạ.)* |

---

## Tình huống 11 — Chân giàn giáo · 11:20, gọi 「ストップ」 khi thấy nguy hiểm

| Vai | Lời thoại |
|---|---|
| Thức | ストップ！ストップ！<ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>止<rt>と</rt></ruby>まってください！<br>*(Stop! Stop! Anh Kondo, dừng lại ạ!)* |
| Kondo | (dừng) <ruby>何<rt>なに</rt></ruby>や!?<br>*(Cái gì!?)* |
| Thức | <ruby>足元<rt>あしもと</rt></ruby>の<ruby>布板<rt>ぬのいた</rt></ruby>がずれています。<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Ván sàn chỗ chân anh bị xê. Nguy hiểm ạ.)* |
| Kondo | (xem) ほんまや。あぶなかった。よう<ruby>気<rt>き</rt></ruby>づいた。<br>*(Đúng thật. May quá. Phát hiện giỏi đấy.)* |
| Thức | <ruby>直<rt>なお</rt></ruby>してから<ruby>進<rt>すす</rt></ruby>みましょう。<br>*(Mình sửa rồi đi tiếp ạ.)* |
| Kondo | そやな。<ruby>気<rt>き</rt></ruby>づいたら<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>止<rt>と</rt></ruby>めてええんやで。<br>*(Đúng nhỉ. Thấy gì cứ thoải mái hô dừng nhé.)* |

---

## Tình huống 12 — 朝礼 hôm sau · 8:00, chia sẻ ヒヤリハット trước tổ

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>はトゥックくんからヒヤリハットの<ruby>共有<rt>きょうゆう</rt></ruby>です。どうぞ。<br>*(Hôm nay Thức chia sẻ vụ hiyari-hatto. Mời em.)* |
| Thức | みなさん、<ruby>昨日<rt>きのう</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>でラチェットを<ruby>落<rt>お</rt></ruby>としました。<br>*(Mọi người, hôm qua em làm rơi cờ-lê ở tầng 2.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>はひもをつけなかったことです。これから<ruby>必<rt>かなら</rt></ruby>ずつけます。<br>*(Nguyên nhân là không buộc dây. Từ giờ em sẽ luôn buộc.)* |
| Thợ A | <ruby>正直<rt>しょうじき</rt></ruby>でええな。<ruby>俺<rt>おれ</rt></ruby>らも<ruby>気<rt>き</rt></ruby>をつけよ。<br>*(Thật thà tốt đấy. Tụi mình cũng phải để ý.)* |
| Saito | みんなで<ruby>共有<rt>きょうゆう</rt></ruby>すれば<ruby>事故<rt>じこ</rt></ruby>が<ruby>減<rt>へ</rt></ruby>ります。ありがとう。<br>*(Cả tổ cùng chia sẻ thì tai nạn giảm. Cảm ơn.)* |
| Thức | はい、ありがとうございました。<br>*(Vâng, em xin cảm ơn ạ.)* |

---

## Tình huống 13 — Chân giàn giáo · 9:00, cảnh báo người lạ vào khu nguy hiểm

| Vai | Lời thoại |
|---|---|
| Thức | すみません！そこは<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>です！<br>*(Xin lỗi! Chỗ đó cấm vào ạ!)* |
| Người lạ | え、ここ<ruby>通<rt>とお</rt></ruby>れないの?<br>*(Hả, không đi qua đây được à?)* |
| Thức | はい、<ruby>上<rt>うえ</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>しています。<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Vâng, trên đang làm việc. Nguy hiểm ạ.)* |
| Người lạ | あ、ごめんなさい。どっち<ruby>行<rt>い</rt></ruby>けばいい?<br>*(À, xin lỗi. Đi đường nào?)* |
| Thức | あちらの<ruby>通路<rt>つうろ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lối đi đằng kia ạ.)* |
| Người lạ | わかった、ありがとう。<br>*(Hiểu rồi, cảm ơn.)* |

---

## Tình huống 14 — Chân giàn giáo · 10:00, được dạy ヒヤリハット phòng ngừa

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、ヒヤリハットは<ruby>事故<rt>じこ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>の<ruby>合図<rt>あいず</rt></ruby>です。<br>*(Thức, hiyari-hatto là tín hiệu trước tai nạn.)* |
| Thức | どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Nghĩa là sao ạ?)* |
| Saito | <ruby>小<rt>ちい</rt></ruby>さいヒヤリを<ruby>放<rt>ほう</rt></ruby>っておくと、<ruby>大<rt>おお</rt></ruby>きな<ruby>事故<rt>じこ</rt></ruby>になります。<br>*(Bỏ qua hiyari nhỏ thì thành tai nạn lớn.)* |
| Thức | だから<ruby>小<rt>ちい</rt></ruby>さくても<ruby>報告<rt>ほうこく</rt></ruby>するのですね。<br>*(Vì thế dù nhỏ cũng phải báo cáo đúng không ạ.)* |
| Saito | そうです。「ヒヤリ<ruby>300<rt>さんびゃく</rt></ruby>で<ruby>重大<rt>じゅうだい</rt></ruby><ruby>事故<rt>じこ</rt></ruby><ruby>1<rt>いち</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Đúng. Người ta nói "300 hiyari = 1 tai nạn nghiêm trọng".)* |
| Thức | こわいですね。よく<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Đáng sợ nhỉ ạ. Em ghi nhớ kỹ.)* |

---

## Tình huống 15 — Khu nghỉ · 10:50, 休憩 nói chuyện về Hùng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、フンくんの<ruby>現場<rt>げんば</rt></ruby>でも<ruby>声<rt>こえ</rt></ruby>かけ<ruby>厳<rt>きび</rt></ruby>しいんか?<br>*(Thức, công trường Hùng cũng nghiêm chuyện hô báo à?)* |
| Thức | はい、フンくんも<ruby>毎日<rt>まいにち</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>していると<ruby>言<rt>い</rt></ruby>っていました。<br>*(Vâng, Hùng cũng nói ngày nào cũng luyện ạ.)* |
| Kondo | どこの<ruby>現場<rt>げんば</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じや。<ruby>声<rt>こえ</rt></ruby>が<ruby>命<rt>いのち</rt></ruby><ruby>守<rt>まも</rt></ruby>るからな。<br>*(Công trường nào cũng vậy. Vì tiếng hô giữ mạng.)* |
| Thức | フンくんと<ruby>電話<rt>でんわ</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>しています。<br>*(Bọn em luyện qua điện thoại với Hùng ạ.)* |
| Kondo | ええ<ruby>仲間<rt>なかま</rt></ruby>やな。<ruby>続<rt>つづ</rt></ruby>けや。<br>*(Bạn tốt đấy. Cứ tiếp tục nhé.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng ạ.)* |

---

## Tình huống 16 — Chân giàn giáo · 13:00, hô khẩu lệnh phối hợp di chuyển vật

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、この<ruby>長<rt>なが</rt></ruby>いパイプ<ruby>運<rt>はこ</rt></ruby>ぶで。<br>*(Thức, khiêng cái ống dài này.)* |
| Thức | はい。<ruby>合図<rt>あいず</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Anh ra hiệu giúp em ạ.)* |
| Kondo | いくよー、せーの!<br>*(Đi nào, một hai!)* |
| Thức | (cùng nâng) はい!<ruby>後<rt>うし</rt></ruby>ろ、<ruby>段差<rt>だんさ</rt></ruby>あります。<ruby>気<rt>き</rt></ruby>をつけて!<br>*(Vâng! Phía sau có bậc. Cẩn thận ạ!)* |
| Kondo | おう、<ruby>教<rt>おし</rt></ruby>えてくれてありがとな。<br>*(Ờ, cảm ơn đã nhắc nhé.)* |
| Thức | <ruby>下<rt>お</rt></ruby>ろします。せーの、<ruby>下<rt>お</rt></ruby>ろし!<br>*(Hạ xuống đây. Một hai, hạ!)* |

---

## Tình huống 17 — Chân giàn giáo · 13:40, phát hiện nguy hiểm và báo 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>3<rt>さん</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>のくさびが<ruby>1<rt>ひと</rt></ruby>つ<ruby>緩<rt>ゆる</rt></ruby>んでいます。<br>*(Sếp, em báo cáo. Tầng 3 có một nêm chốt bị lỏng ạ.)* |
| Tanigawa | ほんまか。どこや。<br>*(Thật à. Chỗ nào.)* |
| Thức | <ruby>北側<rt>きたがわ</rt></ruby>の<ruby>角<rt>かど</rt></ruby>です。<ruby>叩<rt>たた</rt></ruby>いても<ruby>音<rt>おと</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いです。<br>*(Góc phía bắc ạ. Gõ vào tiếng vẫn trầm ạ.)* |
| Tanigawa | (xem) ほんまや。よう<ruby>気<rt>き</rt></ruby>づいた。すぐ<ruby>締<rt>し</rt></ruby>め<ruby>直<rt>なお</rt></ruby>すぞ。<br>*(Đúng thật. Phát hiện giỏi. Siết lại ngay.)* |
| Thức | はい、<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Vâng, em phụ ạ.)* |
| Tanigawa | <ruby>音<rt>おと</rt></ruby>で<ruby>気<rt>き</rt></ruby>づくとはたいしたもんや。<br>*(Nghe tiếng mà phát hiện được, giỏi đấy.)* |

---

## Tình huống 18 — Chân giàn giáo · 14:30, ôn lại khẩu lệnh với 職長

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>警告<rt>けいこく</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby><ruby>言<rt>い</rt></ruby>ってみて。<br>*(Thức, đọc thử mấy từ cảnh báo xem.)* |
| Thức | <ruby>上<rt>うえ</rt></ruby>！<ruby>下<rt>した</rt></ruby>！<ruby>危<rt>あぶ</rt></ruby>ない！ストップ！よけて！<br>*(Trên! Dưới! Nguy hiểm! Stop! Né!)* |
| Saito | いいですね。「<ruby>上<rt>うえ</rt></ruby>！」を<ruby>聞<rt>き</rt></ruby>いたら?<br>*(Tốt lắm. Nghe "Ue!" thì?)* |
| Thức | <ruby>頭<rt>あたま</rt></ruby>を<ruby>守<rt>まも</rt></ruby>って、<ruby>横<rt>よこ</rt></ruby>に<ruby>逃<rt>に</rt></ruby>げます。<ruby>上<rt>うえ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ません。<br>*(Che đầu, né sang bên. Không nhìn lên ạ.)* |
| Saito | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>体<rt>からだ</rt></ruby>にしっかり<ruby>入<rt>はい</rt></ruby>っていますね。<br>*(Hoàn hảo. Đã ngấm vào cơ thể rồi đấy.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け & kiểm tra dây dụng cụ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>明日<rt>あした</rt></ruby>の<ruby>道具<rt>どうぐ</rt></ruby>、ひも<ruby>全部<rt>ぜんぶ</rt></ruby>つけたか?<br>*(Thức, dụng cụ mai, buộc dây hết chưa?)* |
| Thức | はい、ラチェット、ハンマー、<ruby>全部<rt>ぜんぶ</rt></ruby>ひもをつけました。<br>*(Vâng, cờ-lê, búa, em buộc dây hết rồi ạ.)* |
| Kondo | <ruby>確認<rt>かくにん</rt></ruby>するで。(kiểm tra) ...ええな、<ruby>全部<rt>ぜんぶ</rt></ruby>ついてる。<br>*(Kiểm tra nào. ...Tốt, buộc hết rồi.)* |
| Thức | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>反省<rt>はんせい</rt></ruby>です。もう<ruby>落<rt>お</rt></ruby>としません。<br>*(Là rút kinh nghiệm hôm qua ạ. Không làm rơi nữa ạ.)* |
| Kondo | その<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大事<rt>だいじ</rt></ruby>や。<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>べたな。<br>*(Cái tâm thế đó quan trọng. Học được từ lỗi rồi đấy.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>もケガなし。トゥックくんのヒヤリ<ruby>共有<rt>きょうゆう</rt></ruby>、<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<br>*(Hôm nay không thương tích. Vụ chia sẻ hiyari của Thức rất hữu ích.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。ありがとうございます。<br>*(Mọi người vất vả ạ. Cảm ơn ạ.)* |
| Tanigawa | <ruby>落<rt>お</rt></ruby>とした<ruby>奴<rt>やつ</rt></ruby>が<ruby>隠<rt>かく</rt></ruby>さず<ruby>言<rt>い</rt></ruby>うた。それが<ruby>一番<rt>いちばん</rt></ruby>ええ。<br>*(Đứa làm rơi mà không giấu, nói thẳng. Thế là tốt nhất.)* |
| Thức | はい、これからも<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, từ giờ em sẽ báo cáo trung thực ạ.)* |
| Kondo | <ruby>声<rt>こえ</rt></ruby>かけも<ruby>上手<rt>じょうず</rt></ruby>になったな。また<ruby>明日<rt>あした</rt></ruby>。<br>*(Hô báo cũng giỏi lên rồi. Mai gặp.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức học các khẩu lệnh cảnh báo sống còn và phản xạ: 「上！」 (che đầu, né, không nhìn lên), 「下！」 (hô khi làm rơi đồ), 「危ない！」「よけて！」 (né ngược hướng tiếng), 「ストップ！」 (dừng ngay không cần nghĩ). Em trải qua vụ ヒヤリハット đầu tiên — làm rơi cờ-lê — và học cách báo cáo trung thực: nêu sự việc, nguyên nhân (quên buộc dây), biện pháp (luôn buộc dây), rồi chia sẻ trước 朝礼. Bài học: "300 hiyari = 1 tai nạn lớn", giấu lỗi nhỏ là mầm tai nạn lớn.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 警告 | けいこく | Cảnh báo |
> | ヒヤリハット | ひやりはっと | Tình huống suýt tai nạn |
> | 合図 | あいず | Tín hiệu, ra hiệu |
> | 叫ぶ | さけぶ | Hô to, gào |
> | 逃げる | にげる | Chạy né, thoát |
> | 原因 | げんいん | Nguyên nhân |
> | 対策 | たいさく | Biện pháp đối phó |
> | 共有 | きょうゆう | Chia sẻ (thông tin) |
> | 正直 | しょうじき | Trung thực |
> | 反省 | はんせい | Rút kinh nghiệm |
> | 重大事故 | じゅうだいじこ | Tai nạn nghiêm trọng |
> | 立入禁止 | たちいりきんし | Cấm vào |
> | 通路 | つうろ | Lối đi |
> | 段差 | だんさ | Bậc chênh (dễ vấp) |
> | 情報 | じょうほう | Thông tin |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000008, 800000033, NULL, 'markdown_book', 'T8. Phối hợp 2 người (二人連携)', '# Sách thực tập sinh xây dựng · T8. Phối hợp 2 người (二人連携)

> **Mục tiêu nhân vật:** Thức học mẫu câu phối hợp hai người nâng/đặt vật nặng: 「せーの」「いくよ」「もう少し」「そこで止めて」「下ろすよ」, ăn ý nhịp với 先輩, ra hiệu rõ ràng để không ai bị thương khi khiêng đồ dài/nặng trên cao.

---

## Bối cảnh

Tháng 10 năm 2026. Giàn giáo lên cao, nhiều vật liệu dài và nặng phải hai người khiêng/lắp đồng thời. Một nhịp sai là tai nạn. 先輩 Kondo dạy Thức "ngôn ngữ phối hợp" của thợ tobi: hô 「せーの」 để cùng nâng, 「いくよ」 trước khi chuyển, điều chỉnh bằng 「もう少し右」, dừng bằng 「そこ！」. Chương tập trung mẫu câu ra hiệu - đáp - điều chỉnh khi làm việc cặp đôi.

---

## Tình huống 1 — Chân giàn giáo · 8:10, học khẩu lệnh 「せーの」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>二人<rt>ふたり</rt></ruby>で<ruby>長<rt>なが</rt></ruby>い<ruby>材料<rt>ざいりょう</rt></ruby><ruby>運<rt>はこ</rt></ruby>ぶ。<br>*(Thức, hôm nay hai người khiêng vật liệu dài.)* |
| Thức | はい。<ruby>合図<rt>あいず</rt></ruby>はどうしますか?<br>*(Vâng. Ra hiệu thế nào ạ?)* |
| Kondo | <ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる<ruby>時<rt>とき</rt></ruby>は「せーの」。<ruby>二人<rt>ふたり</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げる。<br>*(Khi nâng thì "se-no". Hai người nâng cùng lúc.)* |
| Thức | せーの、で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げる、ですね。<br>*(Hô "se-no" rồi cùng nâng đúng không ạ.)* |
| Kondo | そや。バラバラに<ruby>上<rt>あ</rt></ruby>げたら<ruby>腰<rt>こし</rt></ruby><ruby>痛<rt>いた</rt></ruby>める。<br>*(Đúng. Nâng lệch nhau là đau lưng.)* |
| Thức | わかりました。<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Em hiểu rồi. Em khớp nhịp ạ.)* |

---

## Tình huống 2 — Chân giàn giáo · 8:25, nâng ống dài lần đầu

| Vai | Lời thoại |
|---|---|
| Kondo | じゃあ<ruby>持<rt>も</rt></ruby>つで。<ruby>準備<rt>じゅんび</rt></ruby>ええか?<br>*(Vậy cầm nào. Sẵn sàng chưa?)* |
| Thức | はい、<ruby>準備<rt>じゅんび</rt></ruby>OKです。<br>*(Vâng, em sẵn sàng rồi ạ.)* |
| Kondo | せーの!<br>*(Se-no!)* |
| Thức | (cùng nâng) はい!<ruby>持<rt>も</rt></ruby>ちました!<br>*(Vâng! Nâng được rồi!)* |
| Kondo | ええ<ruby>感<rt>かん</rt></ruby>じや。このまま<ruby>運<rt>はこ</rt></ruby>ぶで。<br>*(Cảm giác tốt. Cứ thế khiêng đi.)* |
| Thức | はい、ゆっくり<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Vâng, mình đi từ từ ạ.)* |

---

## Tình huống 3 — Lối đi · 8:35, ra hiệu khi đi cùng vật dài

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>前<rt>まえ</rt></ruby><ruby>見<rt>み</rt></ruby>えるか?<br>*(Thức, nhìn được phía trước không?)* |
| Thức | はい。<ruby>近藤<rt>こんどう</rt></ruby>さんは<ruby>後<rt>うし</rt></ruby>ろですね。<br>*(Vâng. Anh Kondo ở phía sau đúng không ạ.)* |
| Kondo | そや。<ruby>前<rt>まえ</rt></ruby>のお<ruby>前<rt>まえ</rt></ruby>が<ruby>声<rt>こえ</rt></ruby>かけてくれ。<br>*(Đúng. Em ở trước thì hô báo cho anh.)* |
| Thức | わかりました。<ruby>段差<rt>だんさ</rt></ruby>あります、<ruby>気<rt>き</rt></ruby>をつけて!<br>*(Em hiểu rồi. Có bậc, cẩn thận ạ!)* |
| Kondo | おう、ありがと。そうやって<ruby>教<rt>おし</rt></ruby>えてくれ。<br>*(Ờ, cảm ơn. Cứ báo như vậy đi.)* |
| Thức | はい、<ruby>曲<rt>ま</rt></ruby>がります、<ruby>右<rt>みぎ</rt></ruby>です!<br>*(Vâng, rẽ đây, bên phải ạ!)* |

---

## Tình huống 4 — Chân giàn giáo · 8:50, đặt xuống bằng 「下ろすよ」

| Vai | Lời thoại |
|---|---|
| Kondo | ここで<ruby>下<rt>お</rt></ruby>ろすで。「<ruby>下<rt>お</rt></ruby>ろすよ」<ruby>言<rt>い</rt></ruby>うてからな。<br>*(Hạ xuống ở đây. Nói "orosu yo" rồi mới hạ nhé.)* |
| Thức | はい。<ruby>下<rt>お</rt></ruby>ろすよ、せーの!<br>*(Vâng. Hạ đây, se-no!)* |
| Kondo | (cùng hạ) ゆっくりな...はい、<ruby>置<rt>お</rt></ruby>けた。<br>*(Từ từ nhé... rồi, đặt xong.)* |
| Thức | <ruby>指<rt>ゆび</rt></ruby><ruby>挟<rt>はさ</rt></ruby>みませんでしたか?<br>*(Có kẹt ngón tay không ạ?)* |
| Kondo | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<ruby>下<rt>お</rt></ruby>ろす<ruby>時<rt>とき</rt></ruby>は<ruby>指<rt>ゆび</rt></ruby><ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Không sao. Lúc hạ thì ngón tay nguy hiểm nhất.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý ạ.)* |

---

## Tình huống 5 — Giàn giáo tầng 3 · 9:10, đưa vật dài lên cao

| Vai | Lời thoại |
|---|---|
| Kondo | (trên cao) トゥックくん、<ruby>下<rt>した</rt></ruby>から<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げて。<ruby>俺<rt>おれ</rt></ruby>が<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る。<br>*(Thức, từ dưới đẩy lên. Anh đỡ lấy.)* |
| Thức | はい。せーので<ruby>上<rt>あ</rt></ruby>げますか?<br>*(Vâng. Hô "se-no" rồi đẩy lên ạ?)* |
| Kondo | そや。<ruby>俺<rt>おれ</rt></ruby>が「いくよ」<ruby>言<rt>い</rt></ruby>うたら<ruby>上<rt>あ</rt></ruby>げて。<br>*(Đúng. Anh nói "iku yo" thì đẩy lên.)* |
| Kondo | いくよ、せーの!<br>*(Iku yo, se-no!)* |
| Thức | (đẩy lên) はい!<ruby>届<rt>とど</rt></ruby>きますか?<br>*(Vâng! Tới chưa ạ?)* |
| Kondo | <ruby>届<rt>とど</rt></ruby>いた!<ruby>取<rt>と</rt></ruby>った。<ruby>手<rt>て</rt></ruby><ruby>離<rt>はな</rt></ruby>してええで。<br>*(Tới rồi! Lấy được. Buông tay được rồi.)* |

---

## Tình huống 6 — Giàn giáo tầng 3 · 9:30, điều chỉnh vị trí 「もう少し」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>建枠<rt>たてわく</rt></ruby>もう<ruby>少<rt>すこ</rt></ruby>し<ruby>右<rt>みぎ</rt></ruby>。<br>*(Thức, khung đứng sang phải chút nữa.)* |
| Thức | これくらいですか?<br>*(Cỡ này ạ?)* |
| Kondo | もうちょい。...そこ！<ruby>止<rt>と</rt></ruby>めて。<br>*(Thêm tí. ...Đó! Dừng.)* |
| Thức | (giữ yên) <ruby>止<rt>と</rt></ruby>めました。このままですか?<br>*(Em giữ rồi. Cứ vậy ạ?)* |
| Kondo | そのまま<ruby>動<rt>うご</rt></ruby>かさんといて。<ruby>今<rt>いま</rt></ruby><ruby>固定<rt>こてい</rt></ruby>する。<br>*(Cứ vậy đừng nhúc nhích. Anh cố định ngay.)* |
| Thức | はい、しっかり<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Vâng, em đỡ chắc ạ.)* |

---

## Tình huống 7 — Giàn giáo tầng 3 · 9:50, hô dừng khẩn cấp giữa phối hợp

| Vai | Lời thoại |
|---|---|
| Thức | ストップ！<ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>止<rt>と</rt></ruby>めて！<br>*(Stop! Anh Kondo, dừng lại!)* |
| Kondo | (dừng) どうした!?<br>*(Sao thế!?)* |
| Thức | <ruby>手<rt>て</rt></ruby>が<ruby>滑<rt>すべ</rt></ruby>りそうです。<ruby>持<rt>も</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>します。<br>*(Tay em sắp tuột. Em chỉnh lại tay ạ.)* |
| Kondo | ええで、ゆっくり<ruby>持<rt>も</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>せ。<ruby>急<rt>いそ</rt></ruby>ぐな。<br>*(Được, từ từ chỉnh lại. Đừng vội.)* |
| Thức | はい、<ruby>持<rt>も</rt></ruby>てました。<ruby>続<rt>つづ</rt></ruby>けましょう。<br>*(Vâng, cầm chắc rồi. Mình tiếp tục ạ.)* |
| Kondo | <ruby>無理<rt>むり</rt></ruby>せず<ruby>言<rt>い</rt></ruby>うてくれてよかった。<br>*(Không cố quá mà nói ra, tốt đấy.)* |

---

## Tình huống 8 — Giàn giáo tầng 3 · 10:10, phối hợp với 親方

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>俺<rt>おれ</rt></ruby>とこれ<ruby>持<rt>も</rt></ruby>つで。<br>*(Thức, khiêng cái này với tao.)* |
| Thức | はい!<ruby>親方<rt>おやかた</rt></ruby>、<ruby>合図<rt>あいず</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng ạ! Sếp, sếp ra hiệu giúp em ạ.)* |
| Tanigawa | <ruby>俺<rt>おれ</rt></ruby>が「せーの」<ruby>言<rt>い</rt></ruby>う。お<ruby>前<rt>まえ</rt></ruby>は<ruby>合<rt>あ</rt></ruby>わせろ。せーの!<br>*(Tao nói "se-no". Mày khớp theo. Se-no!)* |
| Thức | (cùng nâng) はい!<br>*(Vâng!)* |
| Tanigawa | おう、<ruby>呼吸<rt>こきゅう</rt></ruby><ruby>合<rt>あ</rt></ruby>うやんけ。<br>*(Ờ, ăn ý đấy chứ.)* |
| Thức | ありがとうございます。<br>*(Cảm ơn sếp ạ.)* |

---

## Tình huống 9 — Khu nghỉ · 10:50, anh Long nói về phối hợp (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Khiêng đồ hai người mệt nhất là gặp người không khớp nhịp. Em với anh Kondo ăn ý chưa? |
| Thức | Khá rồi anh. Ảnh hô "せーの" em nâng cùng lúc, quen tay rồi ạ. |
| Anh Long | Tốt. Mẹo: người ở trước luôn phải báo "段差あります", "右に曲がります" cho người sau đỡ vấp. Người sau không nhìn được đường. |
| Thức | Em hay làm thế đó anh. Có lần tay sắp tuột em hô "ストップ", ảnh khen luôn. |
| Anh Long | Đúng rồi, đừng cố gồng. Tuột tay giữa chừng là cả hai bị thương. Thà dừng còn hơn. |
| Thức | Vâng em nhớ ạ. Cảm ơn anh. |

---

## Tình huống 10 — Giàn giáo tầng 3 · 11:10, đếm nhịp cùng kéo

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、これ<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>るで。<ruby>息<rt>いき</rt></ruby><ruby>合<rt>あ</rt></ruby>わせよ。<br>*(Thức, kéo cái này. Khớp hơi nhé.)* |
| Thức | はい。<ruby>数<rt>かぞ</rt></ruby>えますか?<br>*(Vâng. Đếm nhịp ạ?)* |
| Kondo | そや。「いち、に、さん」で<ruby>引<rt>ひ</rt></ruby>く。<br>*(Đúng. "Một, hai, ba" thì kéo.)* |
| Thức | いち、に、さん!(cùng kéo)<br>*(Một, hai, ba!)* |
| Kondo | おう、<ruby>動<rt>うご</rt></ruby>いた。もう<ruby>一回<rt>いっかい</rt></ruby><ruby>同<rt>おな</rt></ruby>じで。<br>*(Ờ, nhúc nhích rồi. Một lần nữa giống vậy.)* |
| Thức | はい、いち、に、さん!<br>*(Vâng, một, hai, ba!)* |

---

## Tình huống 11 — Giàn giáo tầng 3 · 11:30, sửa lỗi không khớp nhịp

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今<rt>いま</rt></ruby><ruby>早<rt>はや</rt></ruby>かった。<ruby>俺<rt>おれ</rt></ruby>とずれた。<br>*(Thức, nãy em sớm quá. Lệch với anh.)* |
| Thức | すみません。「せーの」の「の」で<ruby>上<rt>あ</rt></ruby>げますか?<br>*(Em xin lỗi. Nâng ở chữ "no" của "se-no" ạ?)* |
| Kondo | そや。「せー」で<ruby>構<rt>かま</rt></ruby>えて、「の」で<ruby>上<rt>あ</rt></ruby>げる。<br>*(Đúng. "Se-" là gồng, "no" là nâng.)* |
| Thức | わかりました。もう<ruby>一回<rt>いっかい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em hiểu rồi. Cho em làm lại lần nữa ạ.)* |
| Kondo | せー...の!<br>*(Se-... no!)* |
| Thức | (khớp đúng) はい!<ruby>合<rt>あ</rt></ruby>いました!<br>*(Vâng! Khớp rồi!)* |

---

## Tình huống 12 — Giàn giáo tầng 4 · 13:00, phối hợp lắp 建枠 trên cao

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>二人<rt>ふたり</rt></ruby>で<ruby>建枠<rt>たてわく</rt></ruby><ruby>立<rt>た</rt></ruby>てるで。<br>*(Thức, hai người dựng khung đứng.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>支<rt>ささ</rt></ruby>えて、<ruby>近藤<rt>こんどう</rt></ruby>さんが<ruby>差<rt>さ</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みますか?<br>*(Em đỡ, anh Kondo cắm vào ạ?)* |
| Kondo | そや。お<ruby>前<rt>まえ</rt></ruby>「<ruby>支<rt>ささ</rt></ruby>えてる」<ruby>言<rt>い</rt></ruby>うて、<ruby>俺<rt>おれ</rt></ruby><ruby>差<rt>さ</rt></ruby>すから。<br>*(Đúng. Em nói "đang đỡ", anh cắm.)* |
| Thức | <ruby>支<rt>ささ</rt></ruby>えています。どうぞ。<br>*(Em đang đỡ. Anh làm đi ạ.)* |
| Kondo | (cắm vào) ...<ruby>入<rt>はい</rt></ruby>った。<ruby>手<rt>て</rt></ruby>ゆっくり<ruby>離<rt>はな</rt></ruby>して。<br>*(...Vào rồi. Buông tay từ từ.)* |
| Thức | はい、ゆっくり<ruby>離<rt>はな</rt></ruby>します。<br>*(Vâng, em buông từ từ ạ.)* |

---

## Tình huống 13 — Giàn giáo tầng 4 · 13:30, hô báo trước khi đổi tay

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>持<rt>も</rt></ruby>ち<ruby>替<rt>か</rt></ruby>えます。<ruby>支<rt>ささ</rt></ruby>えてください。<br>*(Anh Kondo, em đổi tay. Anh đỡ giúp ạ.)* |
| Kondo | おう、<ruby>支<rt>ささ</rt></ruby>えとる。ゆっくりでええ。<br>*(Ờ, anh đỡ rồi. Cứ từ từ.)* |
| Thức | (đổi tay) <ruby>持<rt>も</rt></ruby>ち<ruby>替<rt>か</rt></ruby>えました。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Em đổi tay rồi. Ổn rồi ạ.)* |
| Kondo | ええな。<ruby>持<rt>も</rt></ruby>ち<ruby>替<rt>か</rt></ruby>える<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>かけや。<br>*(Tốt. Đổi tay thì nhất định phải hô báo nhé.)* |
| Thức | はい、<ruby>黙<rt>だま</rt></ruby>って<ruby>離<rt>はな</rt></ruby>しません。<br>*(Vâng, em không lặng lẽ buông ra ạ.)* |
| Kondo | それが<ruby>連携<rt>れんけい</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>や。<br>*(Đó là căn bản của phối hợp.)* |

---

## Tình huống 14 — Giàn giáo tầng 4 · 14:00, được khen ăn ý

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>近藤<rt>こんどう</rt></ruby>とだいぶ<ruby>息<rt>いき</rt></ruby><ruby>合<rt>あ</rt></ruby>うようになったな。<br>*(Thức, với Kondo ăn ý lắm rồi đấy.)* |
| Thức | ありがとうございます。<ruby>毎日<rt>まいにち</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Cảm ơn sếp ạ. Em luyện mỗi ngày ạ.)* |
| Tanigawa | <ruby>二人<rt>ふたり</rt></ruby>の<ruby>息<rt>いき</rt></ruby>が<ruby>合<rt>あ</rt></ruby>うと<ruby>事故<rt>じこ</rt></ruby><ruby>減<rt>へ</rt></ruby>る。<ruby>仕事<rt>しごと</rt></ruby>も<ruby>速<rt>はや</rt></ruby>なる。<br>*(Hai người ăn ý thì tai nạn giảm. Việc cũng nhanh.)* |
| Thức | はい、<ruby>声<rt>こえ</rt></ruby>かけを<ruby>大事<rt>だいじ</rt></ruby>にしています。<br>*(Vâng, em coi trọng việc hô báo ạ.)* |
| Tanigawa | それでええ。<ruby>黙<rt>だま</rt></ruby>る<ruby>奴<rt>やつ</rt></ruby>とは<ruby>組<rt>く</rt></ruby>みたない。<br>*(Thế là được. Đứa im lặng thì không muốn ghép cặp.)* |
| Thức | はい、いつも<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng, em luôn lên tiếng ạ.)* |

---

## Tình huống 15 — Khu nghỉ · 15:00, 休憩 small talk

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>二人<rt>ふたり</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>慣<rt>な</rt></ruby>れたやろ?<br>*(Thức, làm đôi quen rồi nhỉ?)* |
| Thức | はい、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かったですが、<ruby>今<rt>いま</rt></ruby>は<ruby>楽<rt>たの</rt></ruby>しいです。<br>*(Vâng, lúc đầu sợ ạ, giờ thấy vui ạ.)* |
| Kondo | <ruby>相手<rt>あいて</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じられるとええよな。<br>*(Tin được bạn cặp thì tốt nhỉ.)* |
| Thức | はい、<ruby>近藤<rt>こんどう</rt></ruby>さんがいると<ruby>安心<rt>あんしん</rt></ruby>します。<br>*(Vâng, có anh Kondo em yên tâm ạ.)* |
| Kondo | <ruby>俺<rt>おれ</rt></ruby>もお<ruby>前<rt>まえ</rt></ruby><ruby>信<rt>しん</rt></ruby>じてるで。<ruby>声<rt>こえ</rt></ruby>かけてくれるからな。<br>*(Anh cũng tin em đấy. Vì em chịu hô báo.)* |
| Thức | ありがとうございます。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn anh ạ. Em vui ạ.)* |

---

## Tình huống 16 — Giàn giáo tầng 4 · 15:20, ba người phối hợp

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、これは<ruby>重<rt>おも</rt></ruby>い。ロンも<ruby>呼<rt>よ</rt></ruby>ぶで、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>でや。<br>*(Thức, cái này nặng. Gọi cả Long, ba người.)* |
| Thức | はい、ロンさん!<ruby>手伝<rt>てつだ</rt></ruby>ってください!<br>*(Vâng, anh Long! Anh phụ giúp ạ!)* |
| Anh Long | おう、どこ<ruby>持<rt>も</rt></ruby>てばええ?<br>*(Ờ, cầm chỗ nào?)* |
| Thức | <ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>合図<rt>あいず</rt></ruby>は<ruby>近藤<rt>こんどう</rt></ruby>さんです。<br>*(Anh cầm giữa giúp ạ. Anh Kondo ra hiệu ạ.)* |
| Kondo | <ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>いっしょやで。せーの!<br>*(Ba người cùng nhé. Se-no!)* |
| Thức | (cùng nâng) はい!<br>*(Vâng!)* |

---

## Tình huống 17 — Giàn giáo tầng 4 · 15:40, điều chỉnh tinh vi cùng nhau

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、あと<ruby>少<rt>すこ</rt></ruby>し<ruby>左<rt>ひだり</rt></ruby>。ミリ<ruby>単位<rt>たんい</rt></ruby>や。<br>*(Thức, sang trái chút nữa. Từng milimet.)* |
| Thức | (chỉnh nhẹ) これくらい?<br>*(Cỡ này?)* |
| Kondo | もうほんのちょっと...そこ!ピッタリや。<br>*(Thêm xíu xiu nữa... đó! Khít rồi.)* |
| Thức | <ruby>動<rt>うご</rt></ruby>かさず<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Em giữ yên không nhúc nhích ạ.)* |
| Kondo | (cố định) よし、ボルト<ruby>入<rt>はい</rt></ruby>った。<ruby>離<rt>はな</rt></ruby>してええ。<br>*(Được, bu-lông vào rồi. Buông được.)* |
| Thức | はい、ぴったり<ruby>合<rt>あ</rt></ruby>いましたね。<br>*(Vâng, khít hẳn rồi nhỉ ạ.)* |

---

## Tình huống 18 — Giàn giáo tầng 4 · 16:00, 親方 dạy ý nghĩa phối hợp

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、とびは<ruby>一人<rt>ひとり</rt></ruby>では<ruby>仕事<rt>しごと</rt></ruby>でけへん。<br>*(Thức, thợ tobi một mình không làm được việc.)* |
| Thức | はい、<ruby>二人<rt>ふたり</rt></ruby>、<ruby>三人<rt>さんにん</rt></ruby>で<ruby>協力<rt>きょうりょく</rt></ruby>しますね。<br>*(Vâng, hai người, ba người hợp sức đúng không ạ.)* |
| Tanigawa | そや。<ruby>相手<rt>あいて</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>を<ruby>預<rt>あず</rt></ruby>かっとんねん。<ruby>声<rt>こえ</rt></ruby>かけは<ruby>命<rt>いのち</rt></ruby>や。<br>*(Đúng. Là đang giữ mạng của bạn mình. Hô báo là mạng sống.)* |
| Thức | はい、しっかり<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng, em sẽ lên tiếng rõ ràng ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>かけがええ。その<ruby>調子<rt>ちょうし</rt></ruby>や。<br>*(Mày hô báo tốt. Cứ đà đó.)* |
| Thức | ありがとうございます!<br>*(Cảm ơn sếp ạ!)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け phối hợp dọn vật dài

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>長<rt>なが</rt></ruby>いパイプ<ruby>二人<rt>ふたり</rt></ruby>で<ruby>片付<rt>かたづ</rt></ruby>けるで。<br>*(Thức, ống dài hai người dọn.)* |
| Thức | はい。せーので<ruby>持<rt>も</rt></ruby>ちますか?<br>*(Vâng. Hô "se-no" rồi cầm ạ?)* |
| Kondo | そや。<ruby>棚<rt>たな</rt></ruby>まで<ruby>運<rt>はこ</rt></ruby>んで<ruby>長<rt>なが</rt></ruby>さ<ruby>順<rt>じゅん</rt></ruby>に<ruby>置<rt>お</rt></ruby>く。<br>*(Đúng. Khiêng tới kệ, xếp theo chiều dài.)* |
| Thức | せーの!(cùng nâng) <ruby>段差<rt>だんさ</rt></ruby>あります、<ruby>気<rt>き</rt></ruby>をつけて!<br>*(Se-no! Có bậc, cẩn thận ạ!)* |
| Kondo | おう、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>声<rt>こえ</rt></ruby>かけ<ruby>忘<rt>わす</rt></ruby>れんな。ええで。<br>*(Ờ, đến cuối vẫn nhớ hô báo. Tốt.)* |
| Thức | はい、<ruby>下<rt>お</rt></ruby>ろすよ、せーの!<br>*(Vâng, hạ đây, se-no!)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>もケガなし、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hôm nay cũng không thương tích, vất vả rồi.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Kondo | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>連携<rt>れんけい</rt></ruby><ruby>完璧<rt>かんぺき</rt></ruby>やったで。<br>*(Thức, phối hợp hôm nay hoàn hảo đấy.)* |
| Thức | ありがとうございます。<ruby>近藤<rt>こんどう</rt></ruby>さんのおかげです。<br>*(Cảm ơn anh ạ. Nhờ anh Kondo ạ.)* |
| Tanigawa | <ruby>息<rt>いき</rt></ruby><ruby>合<rt>あ</rt></ruby>う<ruby>相棒<rt>あいぼう</rt></ruby>は<ruby>宝<rt>たから</rt></ruby>や。<ruby>大事<rt>だいじ</rt></ruby>にせえ。<br>*(Bạn cặp ăn ý là báu vật. Trân trọng đi.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức nắm "ngôn ngữ phối hợp" hai người của thợ tobi: 「せーの」 (cùng nâng, nâng ở chữ "の"), 「いくよ」 (báo trước khi chuyển), 「もう少し右/左」 (điều chỉnh), 「そこ！止めて」 (dừng đúng chỗ), 「下ろすよ」 (báo trước khi hạ), 「持ち替えます」 (báo trước khi đổi tay). Em học người đi trước phải báo 「段差あります」「右に曲がります」 cho người sau, và 「ストップ」 khi tay sắp tuột — thà dừng còn hơn cố gồng. Bài học: hô báo là giữ mạng cho bạn cặp, "im lặng thì không ai muốn ghép cặp".

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 連携 | れんけい | Phối hợp |
> | 合図 | あいず | Tín hiệu, ra hiệu |
> | 同時 | どうじ | Cùng lúc |
> | 息が合う | いきがあう | Ăn ý, hợp nhịp |
> | 呼吸 | こきゅう | Nhịp phối hợp |
> | 支える | ささえる | Đỡ, giữ |
> | 持ち替える | もちかえる | Đổi tay cầm |
> | 持ち直す | もちなおす | Cầm lại cho chắc |
> | 下ろす | おろす | Hạ xuống |
> | 段差 | だんさ | Bậc chênh |
> | 協力 | きょうりょく | Hợp sức |
> | 相手 | あいて | Đối tác, người cùng làm |
> | 相棒 | あいぼう | Bạn cặp (làm chung) |
> | 信じる | しんじる | Tin tưởng |
> | 単位 | たんい | Đơn vị |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000009, 800000033, NULL, 'markdown_book', 'T9. Mùa hè & 熱中症 (夏・熱中症)', '# Sách thực tập sinh xây dựng · T9. Mùa hè & 熱中症 (夏・熱中症)

> **Mục tiêu nhân vật:** Thức học mẫu câu phòng và xử lý 熱中症 (say nắng/sốc nhiệt): xin nghỉ uống nước, báo cáo triệu chứng cơ thể, hỏi-đáp về 塩分・水分補給, nhắc đồng nghiệp, gọi cấp cứu khi có người gục.

---

## Bối cảnh

Tháng 8 năm 2026, đỉnh điểm mùa hè Nhật, nhiệt độ công trường vượt 38 độ. 熱中症 là mối nguy lớn nhất mùa này. 職長 Saito siết quy định nghỉ giải lao, uống nước-muối, theo dõi nhau. Chương tập trung mẫu câu Thức dùng để báo cơ thể mệt, xin nghỉ, nhắc nhở đồng nghiệp, và xử lý khẩn cấp khi anh Long gục vì sốc nhiệt.

---

## Tình huống 1 — 朝礼 · 8:00, 職長 cảnh báo nắng nóng

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>は<ruby>気温<rt>きおん</rt></ruby><ruby>38<rt>さんじゅうはち</rt></ruby><ruby>度<rt>ど</rt></ruby>の<ruby>予報<rt>よほう</rt></ruby>です。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(Hôm nay dự báo 38 độ. Chú ý sốc nhiệt.)* |
| Thức | <ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>...<ruby>暑<rt>あつ</rt></ruby>さの<ruby>病気<rt>びょうき</rt></ruby>ですか?<br>*(Sốc nhiệt... là bệnh do nóng ạ?)* |
| Saito | そうです。<ruby>命<rt>いのち</rt></ruby>にかかわります。<ruby>水<rt>みず</rt></ruby>をしっかり<ruby>飲<rt>の</rt></ruby>んでください。<br>*(Đúng. Có thể nguy hiểm tính mạng. Phải uống nước đầy đủ.)* |
| Thức | はい、どれくらい<ruby>飲<rt>の</rt></ruby>めばいいですか?<br>*(Vâng, uống bao nhiêu thì được ạ?)* |
| Saito | <ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ごとに<ruby>一口<rt>ひとくち</rt></ruby>。のどが<ruby>渇<rt>かわ</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に。<br>*(Cứ 30 phút một ngụm. Trước khi khát.)* |
| Thức | はい、わかりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 2 — 朝礼 · 8:05, học về 塩分

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>水<rt>みず</rt></ruby>だけではだめです。<ruby>塩分<rt>えんぶん</rt></ruby>も<ruby>取<rt>と</rt></ruby>ってください。<br>*(Chỉ nước thôi không được. Phải bổ sung cả muối.)* |
| Thức | <ruby>塩分<rt>えんぶん</rt></ruby>...しおですか?<br>*(Enbun... là muối ạ?)* |
| Saito | そうです。この<ruby>塩<rt>しお</rt></ruby>あめか、スポーツドリンクで。<br>*(Đúng. Bằng kẹo muối này, hoặc nước thể thao.)* |
| Thức | <ruby>汗<rt>あせ</rt></ruby>で<ruby>塩分<rt>えんぶん</rt></ruby>が<ruby>出<rt>で</rt></ruby>るからですか?<br>*(Vì mồ hôi làm mất muối ạ?)* |
| Saito | そのとおりです。<ruby>水<rt>みず</rt></ruby>だけだと<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Đúng vậy. Chỉ nước không thì ngược lại còn nguy.)* |
| Thức | はい、<ruby>塩<rt>しお</rt></ruby>あめもなめます。<br>*(Vâng, em sẽ ngậm cả kẹo muối ạ.)* |

---

## Tình huống 3 — Giàn giáo tầng 4 · 9:30, xin nghỉ uống nước

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、すみません、<ruby>水<rt>みず</rt></ruby><ruby>飲<rt>の</rt></ruby>んでもいいですか?<br>*(Anh Kondo, xin lỗi, em uống nước được không ạ?)* |
| Kondo | おう、もちろん。<ruby>遠慮<rt>えんりょ</rt></ruby>すんな。<br>*(Ờ, tất nhiên. Đừng ngại.)* |
| Thức | ありがとうございます。<ruby>近藤<rt>こんどう</rt></ruby>さんも<ruby>飲<rt>の</rt></ruby>みますか?<br>*(Cảm ơn anh ạ. Anh Kondo cũng uống chứ ạ?)* |
| Kondo | そやな、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>休<rt>やす</rt></ruby>もか。<br>*(Ừ nhỉ, cùng nghỉ luôn nào.)* |
| Thức | <ruby>暑<rt>あつ</rt></ruby>いときは<ruby>言<rt>い</rt></ruby>ったほうがいいですね。<br>*(Khi nóng thì nên nói ra nhỉ ạ.)* |
| Kondo | そや。<ruby>我慢<rt>がまん</rt></ruby>は<ruby>一番<rt>いちばん</rt></ruby>あかん。<br>*(Đúng. Ráng chịu là tệ nhất.)* |

---

## Tình huống 4 — Khu nghỉ · 10:00, báo cảm giác cơ thể

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いです。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Thức, sắc mặt em xấu. Có sao không?)* |
| Thức | <ruby>少<rt>すこ</rt></ruby>し<ruby>頭<rt>あたま</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>いです。<br>*(Em hơi đau đầu ạ.)* |
| Saito | <ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>の<ruby>初<rt>はじ</rt></ruby>めかもしれません。<ruby>日陰<rt>ひかげ</rt></ruby>で<ruby>休<rt>やす</rt></ruby>んで。<br>*(Có thể là dấu hiệu đầu của sốc nhiệt. Nghỉ chỗ râm đi.)* |
| Thức | はい。<ruby>水<rt>みず</rt></ruby>を<ruby>飲<rt>の</rt></ruby>めばよくなりますか?<br>*(Vâng. Uống nước thì đỡ hơn ạ?)* |
| Saito | <ruby>水<rt>みず</rt></ruby>と<ruby>塩分<rt>えんぶん</rt></ruby>を<ruby>取<rt>と</rt></ruby>って、<ruby>体<rt>からだ</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やしてください。<ruby>無理<rt>むり</rt></ruby>しない。<br>*(Uống nước với muối, làm mát cơ thể. Đừng cố.)* |
| Thức | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>休<rt>やす</rt></ruby>みます。<br>*(Vâng, em nghỉ một chút ạ.)* |

---

## Tình huống 5 — Khu nghỉ · 10:20, học cách hạ nhiệt cơ thể

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>首<rt>くび</rt></ruby>とわきを<ruby>冷<rt>ひ</rt></ruby>やすとええで。<br>*(Thức, làm mát cổ với nách thì tốt đấy.)* |
| Thức | どうして<ruby>首<rt>くび</rt></ruby>ですか?<br>*(Vì sao là cổ ạ?)* |
| Kondo | <ruby>太<rt>ふと</rt></ruby>い<ruby>血管<rt>けっかん</rt></ruby>があるから、<ruby>早<rt>はや</rt></ruby>く<ruby>冷<rt>ひ</rt></ruby>える。<br>*(Có mạch máu lớn, nên hạ nhiệt nhanh.)* |
| Thức | この<ruby>保冷剤<rt>ほれいざい</rt></ruby>を<ruby>首<rt>くび</rt></ruby>に<ruby>当<rt>あ</rt></ruby>てればいいですか?<br>*(Áp túi đá lạnh này vào cổ là được ạ?)* |
| Kondo | そや。だいぶ<ruby>楽<rt>らく</rt></ruby>になるはずや。<br>*(Đúng. Sẽ dễ chịu hơn nhiều đấy.)* |
| Thức | はい、<ruby>楽<rt>らく</rt></ruby>になってきました。ありがとうございます。<br>*(Vâng, em thấy dễ chịu hơn rồi. Cảm ơn anh ạ.)* |

---

## Tình huống 6 — Khu nghỉ · 10:40, anh Long lo cho Thức (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Thức, nãy thấy mày tái mặt, giờ sao rồi? |
| Thức | Đỡ rồi anh, em uống nước với ngậm kẹo muối, chườm cổ nữa. |
| Anh Long | May mày nói sớm. Năm đầu anh không hiểu, ráng chịu rồi xỉu luôn trên giàn giáo, hú vía. |
| Thức | Sợ thật anh. 職長 dặn 30 phút uống một ngụm, đừng đợi khát. |
| Anh Long | Đúng đó. Mà mày cũng để ý người khác giùm, ai im im mặt đỏ là phải hỏi liền. Tobi mùa hè chết người vì cái này. |
| Thức | Vâng anh, em sẽ để ý mọi người ạ. Cảm ơn anh. |

---

## Tình huống 7 — Giàn giáo tầng 4 · 11:00, nhắc đồng nghiệp uống nước

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、もう<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby>しましょう。<br>*(Anh Kondo, 30 phút rồi ạ. Mình bổ sung nước đi ạ.)* |
| Kondo | お、もうそんなか。<ruby>気<rt>き</rt></ruby>づいてくれてありがとな。<br>*(Ồ, đã đến lúc rồi à. Cảm ơn đã để ý nhé.)* |
| Thức | <ruby>塩<rt>しお</rt></ruby>あめもどうぞ。<br>*(Mời anh kẹo muối ạ.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby><ruby>気<rt>き</rt></ruby><ruby>利<rt>き</rt></ruby>くな。ええ<ruby>心<rt>こころ</rt></ruby>がけや。<br>*(Em khéo đấy. Tâm thế tốt.)* |
| Thức | みんなで<ruby>気<rt>き</rt></ruby>をつけたいです。<br>*(Em muốn cả tổ cùng chú ý ạ.)* |
| Kondo | そやな。<ruby>声<rt>こえ</rt></ruby>かけ<ruby>合<rt>あ</rt></ruby>うのが<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(Đúng nhỉ. Nhắc nhau là tốt nhất.)* |

---

## Tình huống 8 — Khu nghỉ · 12:00, hỏi về dấu hiệu nguy hiểm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>のあぶないサインは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Đốc công, dấu hiệu nguy hiểm của sốc nhiệt là gì ạ?)* |
| Saito | めまい、<ruby>吐<rt>は</rt></ruby>き<ruby>気<rt>け</rt></ruby>、<ruby>足<rt>あし</rt></ruby>がつる。それから<ruby>汗<rt>あせ</rt></ruby>が<ruby>出<rt>で</rt></ruby>なくなる。<br>*(Chóng mặt, buồn nôn, chuột rút. Rồi không ra mồ hôi nữa.)* |
| Thức | <ruby>汗<rt>あせ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ないのは<ruby>危<rt>あぶ</rt></ruby>ないですか?<br>*(Không ra mồ hôi là nguy hiểm ạ?)* |
| Saito | <ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないサインです。すぐ<ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby>です。<br>*(Là dấu hiệu nguy hiểm nhất. Gọi cấp cứu ngay.)* |
| Thức | わかりました。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Em hiểu rồi. Em ghi nhớ ạ.)* |
| Saito | <ruby>自分<rt>じぶん</rt></ruby>も<ruby>仲間<rt>なかま</rt></ruby>も、サインを<ruby>見<rt>み</rt></ruby><ruby>逃<rt>のが</rt></ruby>さないで。<br>*(Bản thân và đồng đội, đừng bỏ sót dấu hiệu.)* |

---

## Tình huống 9 — Giàn giáo tầng 3 · 13:30, anh Long gục vì sốc nhiệt

| Vai | Lời thoại |
|---|---|
| Anh Long | (loạng choạng) ...あれ...めまいが...<br>*(...Ơ... chóng mặt quá...)* |
| Thức | ロンさん!<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか!?<br>*(Anh Long! Anh có sao không!?)* |
| Anh Long | <ruby>気持<rt>きも</rt></ruby>ち<ruby>悪<rt>わる</rt></ruby>い...<ruby>立<rt>た</rt></ruby>てない...<br>*(Khó chịu... không đứng được...)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん!ロンさんが<ruby>倒<rt>たお</rt></ruby>れそうです!<ruby>来<rt>き</rt></ruby>てください!<br>*(Anh Kondo! Anh Long sắp ngã! Anh tới đây ạ!)* |
| Kondo | (chạy tới) すぐ<ruby>日陰<rt>ひかげ</rt></ruby>に<ruby>運<rt>はこ</rt></ruby>ぶで!トゥック、<ruby>足<rt>あし</rt></ruby><ruby>持<rt>も</rt></ruby>て!<br>*(Khiêng vào chỗ râm ngay! Thức, đỡ chân!)* |
| Thức | はい!ロンさん、しっかりしてください!<br>*(Vâng! Anh Long, anh cố lên ạ!)* |

---

## Tình huống 10 — Khu nghỉ · 13:35, sơ cứu anh Long

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>服<rt>ふく</rt></ruby>のボタン<ruby>外<rt>はず</rt></ruby>して、<ruby>体<rt>からだ</rt></ruby><ruby>冷<rt>ひ</rt></ruby>やせ!<br>*(Thức, cởi cúc áo, làm mát người!)* |
| Thức | はい!<ruby>保冷剤<rt>ほれいざい</rt></ruby>を<ruby>首<rt>くび</rt></ruby>とわきに<ruby>当<rt>あ</rt></ruby>てます!<br>*(Vâng! Em áp túi đá vào cổ với nách ạ!)* |
| Kondo | ロン、<ruby>水<rt>みず</rt></ruby><ruby>飲<rt>の</rt></ruby>めるか?<ruby>少<rt>すこ</rt></ruby>しずつな。<br>*(Long, uống nước được không? Từ từ thôi nhé.)* |
| Anh Long | (uống chút) ...すこし...のめる...<br>*(...Chút... uống được...)* |
| Thức | <ruby>足<rt>あし</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>くしますか?<br>*(Kê chân cao lên một chút ạ?)* |
| Kondo | そや、それでええ。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>呼<rt>よ</rt></ruby>んでくる!<br>*(Đúng, thế là được. Anh đi gọi đốc công!)* |

---

## Tình huống 11 — Khu nghỉ · 13:40, báo cáo 職長 tình trạng

| Vai | Lời thoại |
|---|---|
| Saito | (chạy đến) <ruby>状況<rt>じょうきょう</rt></ruby>は!?<br>*(Tình hình thế nào!?)* |
| Thức | ロンさんが<ruby>3<rt>さん</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>でめまいを<ruby>起<rt>お</rt></ruby>こしました。<br>*(Anh Long bị chóng mặt ở tầng 3 ạ.)* |
| Thức | <ruby>今<rt>いま</rt></ruby><ruby>日陰<rt>ひかげ</rt></ruby>で<ruby>体<rt>からだ</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やしています。<ruby>水<rt>みず</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>飲<rt>の</rt></ruby>めました。<br>*(Giờ đang làm mát ở chỗ râm. Uống nước được một chút ạ.)* |
| Saito | <ruby>意識<rt>いしき</rt></ruby>はある?<ruby>答<rt>こた</rt></ruby>えられる?<br>*(Còn tỉnh không? Trả lời được không?)* |
| Thức | はい、<ruby>話<rt>はな</rt></ruby>せます。でも<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いです。<br>*(Vâng, nói được ạ. Nhưng sắc mặt vẫn xấu ạ.)* |
| Saito | <ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby><ruby>呼<rt>よ</rt></ruby>びます。トゥックくんはそばにいて。<br>*(Tôi gọi cấp cứu. Thức ở cạnh anh ấy.)* |

---

## Tình huống 12 — Khu nghỉ · 13:45, trấn an anh Long

| Vai | Lời thoại |
|---|---|
| Thức | ロンさん、<ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby><ruby>来<rt>き</rt></ruby>ます。もう<ruby>少<rt>すこ</rt></ruby>しです。<br>*(Anh Long, xe cấp cứu đang đến. Sắp rồi ạ.)* |
| Anh Long | ...<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>...<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になった...<br>*(...Không sao... đỡ hơn chút rồi...)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>に<ruby>話<rt>はな</rt></ruby>さないで。<ruby>水<rt>みず</rt></ruby>もう<ruby>一口<rt>ひとくち</rt></ruby>どうですか?<br>*(Đừng cố nói. Uống thêm ngụm nước không ạ?)* |
| Anh Long | ...うん...のむ...<br>*(...Ừ... uống...)* |
| Thức | ゆっくりでいいです。そばにいますから。<br>*(Cứ từ từ. Em ở đây mà.)* |
| Anh Long | ...ありがとう...トゥック...<br>*(...Cảm ơn... Thức...)* |

---

## Tình huống 13 — Khu nghỉ · 14:00, bàn giao cho cấp cứu

| Vai | Lời thoại |
|---|---|
| Nhân viên cấp cứu | <ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho biết tình hình.)* |
| Saito | <ruby>40<rt>よんじゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>前<rt>まえ</rt></ruby>にめまいで<ruby>倒<rt>たお</rt></ruby>れました。<ruby>体<rt>からだ</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やし<ruby>水分<rt>すいぶん</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせました。<br>*(40 phút trước ngã do chóng mặt. Đã làm mát và cho uống nước.)* |
| Nhân viên cấp cứu | <ruby>意識<rt>いしき</rt></ruby>ははっきりしていますか?<br>*(Ý thức có rõ ràng không?)* |
| Thức | はい、<ruby>会話<rt>かいわ</rt></ruby>できます。<ruby>名前<rt>なまえ</rt></ruby>も<ruby>言<rt>い</rt></ruby>えました。<br>*(Vâng, nói chuyện được ạ. Tên cũng nói được ạ.)* |
| Nhân viên cấp cứu | わかりました。<ruby>病院<rt>びょういん</rt></ruby>で<ruby>診<rt>み</rt></ruby>ます。<br>*(Hiểu rồi. Sẽ khám ở bệnh viện.)* |
| Thức | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ các anh ạ.)* |

---

## Tình huống 14 — Chân giàn giáo · 14:30, 親方 dặn cả tổ

| Vai | Lời thoại |
|---|---|
| Tanigawa | みんな<ruby>聞<rt>き</rt></ruby>け。ロンは<ruby>大事<rt>だいじ</rt></ruby>ないが、<ruby>明日<rt>あした</rt></ruby><ruby>休<rt>やす</rt></ruby>みや。<br>*(Mọi người nghe đây. Long không nguy hiểm, nhưng mai nghỉ.)* |
| Thức | よかったです。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(May quá ạ. Em yên tâm rồi ạ.)* |
| Tanigawa | トゥック、お<ruby>前<rt>まえ</rt></ruby>の<ruby>初動<rt>しょどう</rt></ruby>がよかった。<ruby>早<rt>はや</rt></ruby>かった。<br>*(Thức, phản ứng đầu của mày tốt. Nhanh đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さんと<ruby>職長<rt>しょくちょう</rt></ruby>のおかげです。<br>*(Nhờ anh Kondo với đốc công ạ.)* |
| Tanigawa | これからも<ruby>仲間<rt>なかま</rt></ruby>を<ruby>見<rt>み</rt></ruby>てやれ。とびは<ruby>命<rt>いのち</rt></ruby><ruby>預<rt>あず</rt></ruby>け<ruby>合<rt>あ</rt></ruby>う<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Từ giờ để mắt đồng đội. Tobi là việc gửi mạng cho nhau.)* |
| Thức | はい、しっかり<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng, em sẽ để ý kỹ ạ.)* |

---

## Tình huống 15 — Khu nghỉ · 15:00, 休憩 ôn lại cách phòng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>反省<rt>はんせい</rt></ruby>や。<ruby>何<rt>なに</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>やった?<br>*(Thức, rút kinh nghiệm hôm nay. Cái gì quan trọng?)* |
| Thức | のどが<ruby>渇<rt>かわ</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>むこと、<ruby>仲間<rt>なかま</rt></ruby>を<ruby>見<rt>み</rt></ruby>ることです。<br>*(Uống trước khi khát, và để ý đồng đội ạ.)* |
| Kondo | そや。あと?<br>*(Đúng. Còn?)* |
| Thức | <ruby>我慢<rt>がまん</rt></ruby>しないで<ruby>早<rt>はや</rt></ruby>めに<ruby>言<rt>い</rt></ruby>うことです。<br>*(Không ráng chịu, nói sớm ạ.)* |
| Kondo | <ruby>完璧<rt>かんぺき</rt></ruby>や。それができたら<ruby>夏<rt>なつ</rt></ruby>は<ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えられる。<br>*(Hoàn hảo. Làm được vậy thì vượt qua được mùa hè.)* |
| Thức | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ chú ý mỗi ngày ạ.)* |

---

## Tình huống 16 — Giàn giáo tầng 4 · 15:30, áp dụng nhắc cả tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です!<br>*(Mọi người, đến giờ bổ sung nước ạ!)* |
| Thợ A | お、トゥックが<ruby>時間<rt>じかん</rt></ruby><ruby>係<rt>がかり</rt></ruby>か。<ruby>助<rt>たす</rt></ruby>かるわ。<br>*(Ồ, Thức làm người canh giờ à. Đỡ đấy.)* |
| Thức | <ruby>塩<rt>しお</rt></ruby>あめもありますよ。どうぞ。<br>*(Có cả kẹo muối nữa ạ. Mời mọi người.)* |
| Thợ A | <ruby>気<rt>き</rt></ruby><ruby>利<rt>き</rt></ruby>くなあ。サンキュー。<br>*(Khéo đấy. Cảm ơn nhé.)* |
| Thức | ロンさんのこと、もう<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>したくないです。<br>*(Chuyện anh Long, em không muốn lặp lại ạ.)* |
| Thợ A | せやな。みんなで<ruby>気<rt>き</rt></ruby>をつけよ。<br>*(Đúng nhỉ. Cả tổ cùng chú ý nào.)* |

---

## Tình huống 17 — Giàn giáo tầng 4 · 16:00, 職長 khen xử lý nhanh

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>のロンさんの<ruby>件<rt>けん</rt></ruby>、<ruby>対応<rt>たいおう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>かったです。<br>*(Thức, vụ anh Long hôm nay, xử lý nhanh đấy.)* |
| Thức | <ruby>習<rt>なら</rt></ruby>ったことをやっただけです。<br>*(Em chỉ làm theo điều được dạy thôi ạ.)* |
| Saito | それが<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>知識<rt>ちしき</rt></ruby>を<ruby>行動<rt>こうどう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>せました。<br>*(Đó mới quan trọng. Em biến kiến thức thành hành động.)* |
| Thức | <ruby>怖<rt>こわ</rt></ruby>かったですが、<ruby>体<rt>からだ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>きました。<br>*(Em sợ ạ, nhưng cơ thể tự cử động ạ.)* |
| Saito | それが<ruby>訓練<rt>くんれん</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>です。よくやりました。<br>*(Đó là sức mạnh của rèn luyện. Làm tốt lắm.)* |
| Thức | ありがとうございます。<br>*(Cảm ơn anh ạ.)* |

---

## Tình huống 18 — Khu nghỉ · 16:20, gọi điện hỏi thăm anh Long (tiếng Nhật báo 職長)

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、ロンさんに<ruby>電話<rt>でんわ</rt></ruby>してもいいですか?<br>*(Đốc công, em gọi điện cho anh Long được không ạ?)* |
| Saito | いいですよ。<ruby>容体<rt>ようだい</rt></ruby><ruby>聞<rt>き</rt></ruby>いてあげてください。<br>*(Được chứ. Hỏi thăm tình hình anh ấy đi.)* |
| Thức | (gọi xong) <ruby>点滴<rt>てんてき</rt></ruby>して、もう<ruby>元気<rt>げんき</rt></ruby>だそうです。<br>*(Truyền dịch xong, đã khỏe rồi ạ.)* |
| Saito | よかった。<ruby>明後日<rt>あさって</rt></ruby>には<ruby>戻<rt>もど</rt></ruby>れそうですか?<br>*(May quá. Ngày kia quay lại được không?)* |
| Thức | はい、<ruby>医者<rt>いしゃ</rt></ruby>がOKと<ruby>言<rt>い</rt></ruby>えば<ruby>戻<rt>もど</rt></ruby>ると<ruby>言<rt>い</rt></ruby>っていました。<br>*(Vâng, anh ấy nói bác sĩ OK thì sẽ quay lại ạ.)* |
| Saito | <ruby>無理<rt>むり</rt></ruby>させないように<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Nhắn anh ấy đừng cố nhé.)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け & chuẩn bị đồ chống nóng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>明日<rt>あした</rt></ruby>も<ruby>暑<rt>あつ</rt></ruby>いで。<ruby>保冷剤<rt>ほれいざい</rt></ruby><ruby>凍<rt>こお</rt></ruby>らせとけ。<br>*(Thức, mai cũng nóng. Để túi đá đông sẵn đi.)* |
| Thức | はい、<ruby>冷凍庫<rt>れいとうこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れます。<ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>要<rt>い</rt></ruby>りますか?<br>*(Vâng, em bỏ vào tủ đông. Cần mấy cái ạ?)* |
| Kondo | <ruby>人数分<rt>にんずうぶん</rt></ruby>。<ruby>多<rt>おお</rt></ruby>めにな。<br>*(Đủ số người. Dư ra chút.)* |
| Thức | <ruby>塩<rt>しお</rt></ruby>あめと<ruby>水<rt>みず</rt></ruby>も<ruby>補充<rt>ほじゅう</rt></ruby>しておきます。<br>*(Em bổ sung cả kẹo muối với nước ạ.)* |
| Kondo | おう、<ruby>頼<rt>たの</rt></ruby>むわ。<ruby>備<rt>そな</rt></ruby>えが<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Ờ, nhờ em. Chuẩn bị quan trọng.)* |
| Thức | はい、しっかり<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Vâng, em chuẩn bị kỹ ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>はロンさんの<ruby>件<rt>けん</rt></ruby>がありましたが、<ruby>大事<rt>だいじ</rt></ruby>なくてよかった。<br>*(Hôm nay có vụ anh Long, nhưng không nguy hiểm, may quá.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>はようやった。<ruby>仲間<rt>なかま</rt></ruby><ruby>助<rt>たす</rt></ruby>けたな。<br>*(Thức, hôm nay làm tốt. Cứu được đồng đội đấy.)* |
| Thức | ありがとうございます。みんな<ruby>無事<rt>ぶじ</rt></ruby>で<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn sếp ạ. Mọi người bình an em mừng ạ.)* |
| Saito | <ruby>明日<rt>あした</rt></ruby>も<ruby>暑<rt>あつ</rt></ruby>い。<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Mai cũng nóng. Nhớ bổ sung nước.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức học cách phòng và xử lý 熱中症: uống nước 30 phút/lần trước khi khát, bổ sung 塩分 bằng kẹo muối/nước thể thao, làm mát cổ-nách bằng 保冷剤, nhận biết dấu hiệu nguy hiểm (めまい, 吐き気, chuột rút, ngừng đổ mồ hôi). Em dùng được mẫu câu xin nghỉ 「すみません、水飲んでもいいですか?」, báo cơ thể 「頭が痛いです」, nhắc đồng nghiệp 「水分補給しましょう」, và xử lý khẩn cấp khi anh Long gục: gọi người, khiêng vào râm, làm mát, báo cáo 状況 ngắn gọn cho 職長 để gọi 救急車. Bài học sâu: "tobi là việc gửi mạng cho nhau", phải để mắt đồng đội.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 熱中症 | ねっちゅうしょう | Sốc nhiệt, say nắng |
> | 水分補給 | すいぶんほきゅう | Bổ sung nước |
> | 塩分 | えんぶん | Lượng muối |
> | 保冷剤 | ほれいざい | Túi đá làm mát |
> | 我慢 | がまん | Ráng chịu, nhịn |
> | めまい | めまい | Chóng mặt |
> | 吐き気 | はきけ | Buồn nôn |
> | 顔色 | かおいろ | Sắc mặt |
> | 意識 | いしき | Ý thức |
> | 救急車 | きゅうきゅうしゃ | Xe cấp cứu |
> | 状況 | じょうきょう | Tình hình |
> | 初動 | しょどう | Phản ứng ban đầu |
> | 容体 | ようだい | Tình trạng (bệnh) |
> | 点滴 | てんてき | Truyền dịch |
> | 無事 | ぶじ | Bình an, an toàn |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000010, 800000033, NULL, 'markdown_book', 'T10. Lỗi & bị 親方 ダメ出し mắng (親方のダメ出し)', '# Sách thực tập sinh xây dựng · T10. Lỗi & bị 親方 ダメ出し mắng (親方のダメ出し)

> **Mục tiêu nhân vật:** Thức học cách ứng xử khi mắc lỗi và bị 親方 mắng (ダメ出し): nhận lỗi ngay 「すみませんでした」, hỏi cách sửa, không bào chữa, báo cáo lỗi sớm thay vì giấu, và phục hồi tinh thần để làm tiếp.

---

## Bối cảnh

Tháng 11 năm 2026. Thức đã làm khá thạo nên đôi lúc chủ quan. Tháng này em mắc vài lỗi: lắp sai chiều 筋交い, quên kiểm tra くさび, để vật liệu chắn lối thoát hiểm. 親方 Tanigawa mắng nặng (kiểu Kansai cộc) nhưng dạy thật. Chương tập trung mẫu câu xin lỗi đúng cách, hỏi cách khắc phục, và phản tỉnh — kỹ năng mềm cốt lõi khi đi làm ở Nhật.

---

## Tình huống 1 — Giàn giáo tầng 5 · 8:30, bị phát hiện lắp sai 筋交い

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック！この<ruby>筋交<rt>すじか</rt></ruby>い、<ruby>向<rt>む</rt></ruby>き<ruby>逆<rt>ぎゃく</rt></ruby>やろ！<br>*(Thức! Cái giằng chéo này, ngược hướng rồi!)* |
| Thức | (xem) ...あ、すみませんでした。<br>*(...À, em xin lỗi ạ.)* |
| Tanigawa | <ruby>前<rt>まえ</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えたやろ。なんで<ruby>確認<rt>かくにん</rt></ruby>せえへんねん。<br>*(Đã dạy rồi mà. Sao không kiểm tra.)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>りました。すぐ<ruby>直<rt>なお</rt></ruby>します。<br>*(Em đã lơ là kiểm tra. Em sửa ngay ạ.)* |
| Tanigawa | せや、はよ<ruby>直<rt>なお</rt></ruby>せ。<ruby>言<rt>い</rt></ruby><ruby>訳<rt>わけ</rt></ruby>すんなよ。<br>*(Đúng, sửa nhanh. Đừng có bào chữa.)* |
| Thức | はい、<ruby>言<rt>い</rt></ruby><ruby>訳<rt>わけ</rt></ruby>しません。<br>*(Vâng, em không bào chữa ạ.)* |

---

## Tình huống 2 — Giàn giáo tầng 5 · 8:45, sửa lỗi và báo lại

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>筋交<rt>すじか</rt></ruby>い、<ruby>直<rt>なお</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Sếp, giằng chéo, em sửa rồi ạ. Sếp kiểm tra giúp ạ.)* |
| Tanigawa | (xem) ...おう、これでええ。<br>*(...Ờ, thế này được.)* |
| Thức | これから<ruby>毎回<rt>まいかい</rt></ruby><ruby>向<rt>む</rt></ruby>きを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Từ giờ mỗi lần em sẽ kiểm tra hướng ạ.)* |
| Tanigawa | <ruby>分<rt>わ</rt></ruby>かったらええ。<ruby>慣<rt>な</rt></ruby>れた<ruby>頃<rt>ころ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Hiểu là được. Lúc quen tay mới là nguy hiểm nhất.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めます。<br>*(Vâng, em sẽ tập trung lại ạ.)* |
| Tanigawa | せや、その<ruby>気持<rt>きも</rt></ruby>ちや。<br>*(Đúng, tâm thế đó.)* |

---

## Tình huống 3 — Giàn giáo tầng 5 · 9:30, quên kiểm tra くさび bị mắng nặng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック！この<ruby>角<rt>かど</rt></ruby>のくさび、<ruby>叩<rt>たた</rt></ruby>いてへんやろ！<br>*(Thức! Nêm chốt góc này, chưa gõ đúng không!)* |
| Thức | (gõ thử) ...<ruby>音<rt>おと</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いです。すみませんでした。<br>*(...Tiếng còn trầm. Em xin lỗi ạ.)* |
| Tanigawa | これ<ruby>人<rt>ひと</rt></ruby>が<ruby>乗<rt>の</rt></ruby>ったら<ruby>落<rt>お</rt></ruby>ちるんやぞ！<ruby>命<rt>いのち</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>や！<br>*(Người mà trèo lên là rơi đấy! Là chuyện mạng sống!)* |
| Thức | はい...<ruby>本当<rt>ほんとう</rt></ruby>にすみませんでした。すぐ<ruby>締<rt>し</rt></ruby>めます。<br>*(Vâng... em thực sự xin lỗi ạ. Em siết ngay ạ.)* |
| Tanigawa | <ruby>全部<rt>ぜんぶ</rt></ruby>もう<ruby>一回<rt>いっかい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>せえ。<ruby>一<rt>ひと</rt></ruby>つも<ruby>抜<rt>ぬ</rt></ruby>かすな。<br>*(Kiểm tra lại hết một lần nữa. Đừng sót cái nào.)* |
| Thức | はい、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em chỉ tay kiểm tra hết ạ.)* |

---

## Tình huống 4 — Giàn giáo tầng 5 · 10:00, kiểm tra lại toàn bộ くさび

| Vai | Lời thoại |
|---|---|
| Thức | (chỉ tay) くさび、よし。くさび、よし。...ここ、<ruby>緩<rt>ゆる</rt></ruby>い。<br>*(Nêm chốt, OK. Nêm chốt, OK. ...Chỗ này, lỏng.)* |
| Kondo | お、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>見<rt>み</rt></ruby>つけたか。<br>*(Ồ, tìm ra thêm một cái à.)* |
| Thức | はい、<ruby>2<rt>ふた</rt></ruby>つ<ruby>緩<rt>ゆる</rt></ruby>んでいました。<ruby>両方<rt>りょうほう</rt></ruby><ruby>締<rt>し</rt></ruby>めました。<br>*(Vâng, có hai cái lỏng. Em siết cả hai rồi ạ.)* |
| Kondo | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>見<rt>み</rt></ruby>つけて<ruby>直<rt>なお</rt></ruby>せたな。それでええ。<br>*(Tự tìm ra rồi sửa được đấy. Thế là được.)* |
| Thức | <ruby>怒<rt>おこ</rt></ruby>られて<ruby>当然<rt>とうぜん</rt></ruby>でした。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Bị mắng là đáng ạ. Em sẽ chú ý ạ.)* |
| Kondo | <ruby>親方<rt>おやかた</rt></ruby>は<ruby>命<rt>いのち</rt></ruby>のことやから<ruby>厳<rt>きび</rt></ruby>しい。<ruby>悪気<rt>わるぎ</rt></ruby>はないで。<br>*(Sếp nghiêm vì chuyện mạng sống. Không có ác ý đâu.)* |

---

## Tình huống 5 — Khu nghỉ · 10:40, anh Long an ủi (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Nãy thấy 親方 mắng mày to quá. Ổn không Thức? |
| Thức | Em buồn lắm anh. Em tưởng làm tốt rồi, ai ngờ quên kiểm tra くさび. |
| Anh Long | Ai cũng bị hết. Anh năm đầu bị mắng khóc luôn. Quan trọng là mày nhận lỗi ngay, không cãi, sửa liền — vậy là đúng. |
| Thức | Em sợ 親方 ghét em. |
| Anh Long | Không đâu. Ổng mắng vì lo mày gây tai nạn chết người. Ổng mặc kệ là lúc ổng bỏ mày rồi. Bị mắng còn là được dạy đấy. |
| Thức | Vâng... em hiểu rồi. Cảm ơn anh. |

---

## Tình huống 6 — Giàn giáo tầng 5 · 11:00, chủ động báo lỗi tự phát hiện

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>です。さっき<ruby>布板<rt>ぬのいた</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>付<rt>つ</rt></ruby>け<ruby>忘<rt>わす</rt></ruby>れていました。<br>*(Sếp, em báo cáo. Lúc nãy em quên lắp một tấm ván sàn ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>が<ruby>気<rt>き</rt></ruby>づいたんか?<br>*(Mày tự phát hiện à?)* |
| Thức | はい、<ruby>見回<rt>みまわ</rt></ruby>って<ruby>気<rt>き</rt></ruby>づきました。もう<ruby>付<rt>つ</rt></ruby>けました。<br>*(Vâng, em đi rà soát thì phát hiện. Em lắp rồi ạ.)* |
| Tanigawa | ...ふん。<ruby>自分<rt>じぶん</rt></ruby>から<ruby>言<rt>い</rt></ruby>うたんはええことや。<br>*(...Hừm. Tự mình nói ra là điều tốt.)* |
| Thức | <ruby>隠<rt>かく</rt></ruby>すと<ruby>危<rt>あぶ</rt></ruby>ないと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Em nghĩ giấu thì nguy hiểm ạ.)* |
| Tanigawa | せや。<ruby>怒<rt>おこ</rt></ruby>るのは<ruby>隠<rt>かく</rt></ruby>した<ruby>時<rt>とき</rt></ruby>や。<ruby>言<rt>い</rt></ruby>うたら<ruby>怒<rt>おこ</rt></ruby>らん。<br>*(Đúng. Tao mắng là lúc giấu. Nói ra thì không mắng.)* |

---

## Tình huống 7 — Giàn giáo tầng 5 · 11:30, hỏi cách làm đúng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>同<rt>おな</rt></ruby>じ<ruby>失敗<rt>しっぱい</rt></ruby>をしない<ruby>方法<rt>ほうほう</rt></ruby>はありますか?<br>*(Anh Kondo, có cách nào để không lặp lại lỗi không ạ?)* |
| Kondo | チェックリストや。<ruby>作業<rt>さぎょう</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>見回<rt>みまわ</rt></ruby>る。<br>*(Danh sách kiểm tra. Làm xong nhất định đi rà soát.)* |
| Thức | チェックリストを<ruby>作<rt>つく</rt></ruby>ればいいですか?<br>*(Em lập danh sách kiểm tra là được ạ?)* |
| Kondo | そや。くさび、<ruby>筋交<rt>すじか</rt></ruby>い、<ruby>布板<rt>ぬのいた</rt></ruby>、<ruby>手<rt>て</rt></ruby>すり、<ruby>順番<rt>じゅんばん</rt></ruby>に。<br>*(Đúng. Nêm chốt, giằng chéo, ván sàn, lan can, theo thứ tự.)* |
| Thức | わかりました。ノートに<ruby>書<rt>か</rt></ruby>いて<ruby>毎回<rt>まいかい</rt></ruby><ruby>見<rt>み</rt></ruby>ます。<br>*(Em hiểu rồi. Em ghi vào sổ, mỗi lần đều xem ạ.)* |
| Kondo | それや。<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>仕組<rt>しく</rt></ruby>みで<ruby>防<rt>ふせ</rt></ruby>ぐんや。<br>*(Đúng đó. Dùng cơ chế để chặn lỗi.)* |

---

## Tình huống 8 — Giàn giáo tầng 5 · 13:00, lại bị mắng vì để đồ chắn lối

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック！この<ruby>材料<rt>ざいりょう</rt></ruby>、<ruby>非常<rt>ひじょう</rt></ruby><ruby>口<rt>ぐち</rt></ruby><ruby>塞<rt>ふさ</rt></ruby>いどるぞ！<br>*(Thức! Vật liệu này chắn lối thoát hiểm rồi!)* |
| Thức | あ、すみませんでした！すぐどけます。<br>*(À, em xin lỗi ạ! Em dọn ngay ạ.)* |
| Tanigawa | <ruby>火事<rt>かじ</rt></ruby>になったらどうすんねん！<ruby>逃<rt>に</rt></ruby>げられへんやろ！<br>*(Cháy thì làm sao! Không thoát ra được đúng không!)* |
| Thức | <ruby>考<rt>かんが</rt></ruby>えが<ruby>足<rt>た</rt></ruby>りませんでした。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Em đã thiếu suy nghĩ. Em vô cùng xin lỗi ạ.)* |
| Tanigawa | <ruby>置<rt>お</rt></ruby>き<ruby>場所<rt>ばしょ</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby>のうちや。<ruby>頭<rt>あたま</rt></ruby><ruby>使<rt>つか</rt></ruby>え。<br>*(Chỗ để cũng là an toàn. Động não lên.)* |
| Thức | はい、<ruby>置<rt>お</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Vâng, trước khi để em sẽ suy nghĩ ạ.)* |

---

## Tình huống 9 — Giàn giáo tầng 5 · 13:20, không bào chữa dù có lý do

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、さっき<ruby>急<rt>いそ</rt></ruby>いでたから<ruby>仕方<rt>しかた</rt></ruby>ないとこもあるけどな。<br>*(Thức, lúc nãy vì vội nên cũng có phần khó tránh.)* |
| Thức | いえ、<ruby>急<rt>いそ</rt></ruby>いでも<ruby>安全<rt>あんぜん</rt></ruby>は<ruby>守<rt>まも</rt></ruby>るべきでした。<br>*(Dạ không, dù vội cũng phải giữ an toàn ạ.)* |
| Kondo | お、<ruby>言<rt>い</rt></ruby><ruby>訳<rt>わけ</rt></ruby>せえへんな。ええ<ruby>心構<rt>こころがま</rt></ruby>えや。<br>*(Ồ, không bào chữa nhỉ. Tâm thế tốt.)* |
| Thức | <ruby>言<rt>い</rt></ruby><ruby>訳<rt>わけ</rt></ruby>すると<ruby>同<rt>おな</rt></ruby>じ<ruby>失敗<rt>しっぱい</rt></ruby>をすると<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ bào chữa thì sẽ lặp lại lỗi ạ.)* |
| Kondo | その<ruby>通<rt>とお</rt></ruby>りや。<ruby>素直<rt>すなお</rt></ruby>な<ruby>奴<rt>やつ</rt></ruby>は<ruby>伸<rt>の</rt></ruby>びる。<br>*(Đúng vậy. Đứa thật thà thì tiến bộ.)* |
| Thức | ありがとうございます。<br>*(Cảm ơn anh ạ.)* |

---

## Tình huống 10 — Khu nghỉ · 14:00, tâm sự với Hùng qua điện thoại (tiếng Nhật báo cảnh)

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>元気<rt>げんき</rt></ruby>ないな。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か?<br>*(Thức, không có sức nhỉ. Có sao không?)* |
| Thức | <ruby>今日<rt>きょう</rt></ruby>は<ruby>怒<rt>おこ</rt></ruby>られてばかりで、<ruby>少<rt>すこ</rt></ruby>し<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>みました。<br>*(Hôm nay toàn bị mắng, em hơi nản ạ.)* |
| Kondo | <ruby>誰<rt>だれ</rt></ruby>でも<ruby>通<rt>とお</rt></ruby>る<ruby>道<rt>みち</rt></ruby>や。<ruby>俺<rt>おれ</rt></ruby>もそうやった。<br>*(Ai cũng phải qua. Anh cũng từng vậy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さんも<ruby>怒<rt>おこ</rt></ruby>られましたか?<br>*(Anh Kondo cũng bị mắng ạ?)* |
| Kondo | めっちゃ<ruby>怒<rt>おこ</rt></ruby>られたわ。でも<ruby>今<rt>いま</rt></ruby><ruby>感謝<rt>かんしゃ</rt></ruby>してる。<ruby>育<rt>そだ</rt></ruby>ててくれた。<br>*(Bị mắng dữ lắm. Nhưng giờ anh biết ơn. Họ rèn anh nên người.)* |
| Thức | そう<ruby>考<rt>かんが</rt></ruby>えると<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になります。<br>*(Nghĩ vậy thì em nhẹ lòng hơn ạ.)* |

---

## Tình huống 11 — Giàn giáo tầng 5 · 14:30, làm lại cẩn thận

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>今度<rt>こんど</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確認<rt>かくにん</rt></ruby>しながらやります。<br>*(Anh Kondo, lần này em vừa làm vừa kiểm tra từng cái ạ.)* |
| Kondo | ええ<ruby>心<rt>こころ</rt></ruby>がけや。<ruby>急<rt>いそ</rt></ruby>がんでええ。<br>*(Tâm thế tốt. Không cần vội đâu.)* |
| Thức | <ruby>建枠<rt>たてわく</rt></ruby><ruby>立<rt>た</rt></ruby>てました。くさび<ruby>叩<rt>たた</rt></ruby>きます。(gõ) カン!よし。<br>*(Dựng khung đứng rồi. Gõ nêm chốt. Can! OK.)* |
| Kondo | <ruby>音<rt>おと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>もできてるな。ええで。<br>*(Kiểm tra cả tiếng rồi đấy. Tốt.)* |
| Thức | <ruby>筋交<rt>すじか</rt></ruby>い、<ruby>向<rt>む</rt></ruby>き<ruby>確認<rt>かくにん</rt></ruby>...<ruby>左下<rt>ひだりした</rt></ruby>から<ruby>右上<rt>みぎうえ</rt></ruby>、よし。<br>*(Giằng chéo, kiểm tra hướng... dưới trái lên trên phải, OK.)* |
| Kondo | <ruby>完璧<rt>かんぺき</rt></ruby>や。<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>んだな。<br>*(Hoàn hảo. Học được từ lỗi rồi đấy.)* |

---

## Tình huống 12 — Giàn giáo tầng 5 · 15:00, 親方 kiểm tra và công nhận

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>午後<rt>ごご</rt></ruby>の<ruby>分<rt>ぶん</rt></ruby><ruby>見<rt>み</rt></ruby>るで。ついて<ruby>来<rt>こ</rt></ruby>い。<br>*(Thức, xem phần buổi chiều. Theo tao.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ sếp ạ.)* |
| Tanigawa | (kiểm tra) ...くさび、ええ。<ruby>筋交<rt>すじか</rt></ruby>い、ええ。<ruby>非常<rt>ひじょう</rt></ruby><ruby>口<rt>ぐち</rt></ruby>も<ruby>空<rt>あ</rt></ruby>いとる。<br>*(...Nêm chốt, được. Giằng chéo, được. Lối thoát hiểm cũng thông.)* |
| Thức | <ruby>午前<rt>ごぜん</rt></ruby>の<ruby>反省<rt>はんせい</rt></ruby>をしました。<br>*(Em đã rút kinh nghiệm buổi sáng ạ.)* |
| Tanigawa | ...うん。<ruby>怒<rt>おこ</rt></ruby>ったかいがあったわ。<br>*(...Ừ. Mắng cũng có ích.)* |
| Thức | ありがとうございます。<br>*(Cảm ơn sếp ạ.)* |

---

## Tình huống 13 — Giàn giáo tầng 5 · 15:20, hỏi 親方 thêm về nghề

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>一<rt>いち</rt></ruby><ruby>人前<rt>にんまえ</rt></ruby>になるには<ruby>何<rt>なに</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Sếp, để thành thợ cứng cần điều gì quan trọng nhất ạ?)* |
| Tanigawa | <ruby>同<rt>おな</rt></ruby>じ<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>さんことや。<br>*(Đừng lặp lại cùng một lỗi.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>してもいいですか?<br>*(Mắc lỗi cũng được ạ?)* |
| Tanigawa | <ruby>新人<rt>しんじん</rt></ruby>は<ruby>失敗<rt>しっぱい</rt></ruby>するもんや。<ruby>同<rt>おな</rt></ruby>じのを<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>するのがあかん。<br>*(Người mới thì phải mắc lỗi. Lặp cùng lỗi hai lần mới là không được.)* |
| Thức | わかりました。<ruby>一<rt>ひと</rt></ruby>つ<ruby>一<rt>ひと</rt></ruby>つの<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>必<rt>かなら</rt></ruby>ず<ruby>学<rt>まな</rt></ruby>びます。<br>*(Em hiểu rồi. Mỗi lỗi em sẽ học được điều gì đó ạ.)* |
| Tanigawa | それができたら<ruby>一<rt>いち</rt></ruby><ruby>人前<rt>にんまえ</rt></ruby>や。<br>*(Làm được vậy là thợ cứng.)* |

---

## Tình huống 14 — Khu nghỉ · 15:40, 職長 dạy ý nghĩa ダメ出し

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>親方<rt>おやかた</rt></ruby>のダメ<ruby>出<rt>だ</rt></ruby>し、つらいですか?<br>*(Thức, bị sếp chê trách, khổ không?)* |
| Thức | つらいですが、<ruby>意味<rt>いみ</rt></ruby>があると<ruby>分<rt>わ</rt></ruby>かってきました。<br>*(Khổ ạ, nhưng em hiểu là có ý nghĩa ạ.)* |
| Saito | <ruby>親方<rt>おやかた</rt></ruby>はあなたに<ruby>死<rt>し</rt></ruby>んでほしくないんです。だから<ruby>厳<rt>きび</rt></ruby>しい。<br>*(Sếp không muốn em chết. Vì thế mới nghiêm.)* |
| Thức | はい。<ruby>怒<rt>おこ</rt></ruby>られなくなったら<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Vâng. Không bị mắng nữa thì em mới lo ạ.)* |
| Saito | いい<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<ruby>叱<rt>しか</rt></ruby>られるうちが<ruby>花<rt>はな</rt></ruby>です。<br>*(Cách nghĩ tốt. Còn được mắng là còn may.)* |
| Thức | はい、<ruby>感謝<rt>かんしゃ</rt></ruby>して<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, em sẽ biết ơn mà lắng nghe ạ.)* |

---

## Tình huống 15 — Giàn giáo tầng 5 · 16:00, áp dụng checklist tự kiểm

| Vai | Lời thoại |
|---|---|
| Thức | (đọc sổ) チェック<ruby>開始<rt>かいし</rt></ruby>。くさび、<ruby>全部<rt>ぜんぶ</rt></ruby>よし。<br>*(Bắt đầu kiểm tra. Nêm chốt, hết, OK.)* |
| Thức | <ruby>筋交<rt>すじか</rt></ruby>い、<ruby>向<rt>む</rt></ruby>きよし。<ruby>布板<rt>ぬのいた</rt></ruby>、すき<ruby>間<rt>ま</rt></ruby>なし。<br>*(Giằng chéo, hướng OK. Ván sàn, không hở.)* |
| Kondo | お、チェックリスト<ruby>使<rt>つか</rt></ruby>ってるな。<br>*(Ồ, dùng danh sách kiểm tra rồi nhỉ.)* |
| Thức | はい、<ruby>手<rt>て</rt></ruby>すり、<ruby>幅木<rt>はばき</rt></ruby>、<ruby>非常<rt>ひじょう</rt></ruby><ruby>口<rt>ぐち</rt></ruby>...<ruby>全部<rt>ぜんぶ</rt></ruby>よし。<br>*(Vâng, lan can, chắn chân, lối thoát hiểm... hết, OK.)* |
| Kondo | これやったらもう<ruby>怒<rt>おこ</rt></ruby>られへんで。<br>*(Làm vậy thì không bị mắng nữa đâu.)* |
| Thức | はい、<ruby>習慣<rt>しゅうかん</rt></ruby>にします。<br>*(Vâng, em biến thành thói quen ạ.)* |

---

## Tình huống 16 — Giàn giáo tầng 5 · 16:15, 親方 hiếm hoi khen

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>最後<rt>さいご</rt></ruby>の<ruby>分<rt>ぶん</rt></ruby><ruby>見<rt>み</rt></ruby>たで。<br>*(Thức, xem phần cuối rồi đây.)* |
| Thức | (hồi hộp) ...いかがでしたか?<br>*(...Thế nào ạ?)* |
| Tanigawa | <ruby>文句<rt>もんく</rt></ruby>なしや。<ruby>朝<rt>あさ</rt></ruby>と<ruby>別人<rt>べつじん</rt></ruby>やな。<br>*(Không chê được. Khác hẳn lúc sáng đấy.)* |
| Thức | ありがとうございます！<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Cảm ơn sếp ạ! Em đã cố gắng ạ.)* |
| Tanigawa | <ruby>怒<rt>おこ</rt></ruby>られて<ruby>伸<rt>の</rt></ruby>びる<ruby>奴<rt>やつ</rt></ruby>が<ruby>本物<rt>ほんもの</rt></ruby>や。<br>*(Đứa bị mắng mà tiến bộ mới là thứ thiệt.)* |
| Thức | これからも<ruby>学<rt>まな</rt></ruby>びます。<br>*(Từ giờ em vẫn sẽ học ạ.)* |

---

## Tình huống 17 — Khu nghỉ · 16:25, phản tỉnh trước anh Long (tiếng Nhật)

| Vai | Lời thoại |
|---|---|
| Anh Long | トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>やったな。<br>*(Thức, hôm nay vất vả nhỉ.)* |
| Thức | はい。でも<ruby>午後<rt>ごご</rt></ruby>は<ruby>親方<rt>おやかた</rt></ruby>に<ruby>褒<rt>ほ</rt></ruby>められました。<br>*(Vâng. Nhưng buổi chiều em được sếp khen ạ.)* |
| Anh Long | おお、すごいやんけ。<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えたな。<br>*(Ồ, giỏi đấy. Chuyển trạng thái được rồi.)* |
| Thức | <ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>んでも<ruby>仕事<rt>しごと</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>くので、すぐ<ruby>立<rt>た</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>りました。<br>*(Nản thì việc vẫn phải làm, nên em đứng dậy ngay ạ.)* |
| Anh Long | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<ruby>引<rt>ひ</rt></ruby>きずらんことや。<br>*(Đó mới quan trọng nhất. Đừng để bụng dai dẳng.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |

---

## Tình huống 18 — Giàn giáo tầng 5 · 16:40, ghi nhật ký lỗi

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>何<rt>なに</rt></ruby><ruby>書<rt>か</rt></ruby>いてるん?<br>*(Thức, ghi gì thế?)* |
| Thức | <ruby>今日<rt>きょう</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>と<ruby>対策<rt>たいさく</rt></ruby>を<ruby>書<rt>か</rt></ruby>いています。<br>*(Em ghi lỗi hôm nay với biện pháp ạ.)* |
| Kondo | お、<ruby>失敗<rt>しっぱい</rt></ruby>ノートか。ええ<ruby>習慣<rt>しゅうかん</rt></ruby>や。<br>*(Ồ, sổ ghi lỗi à. Thói quen tốt.)* |
| Thức | <ruby>書<rt>か</rt></ruby>くと<ruby>忘<rt>わす</rt></ruby>れないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ ghi ra thì không quên ạ.)* |
| Kondo | <ruby>俺<rt>おれ</rt></ruby>も<ruby>新人<rt>しんじん</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>つけてたわ。<ruby>続<rt>つづ</rt></ruby>けや。<br>*(Anh hồi mới vào cũng ghi. Cứ duy trì nhé.)* |
| Thức | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em ghi mỗi ngày ạ.)* |

---

## Tình huống 19 — Khu vật tư · 16:50, 片付け & dọn đúng chỗ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、この<ruby>材料<rt>ざいりょう</rt></ruby>、<ruby>非常<rt>ひじょう</rt></ruby><ruby>口<rt>ぐち</rt></ruby>から<ruby>離<rt>はな</rt></ruby>して<ruby>置<rt>お</rt></ruby>きます。<br>*(Anh Kondo, vật liệu này em để xa lối thoát hiểm ạ.)* |
| Kondo | お、<ruby>朝<rt>あさ</rt></ruby>の<ruby>反省<rt>はんせい</rt></ruby><ruby>活<rt>い</rt></ruby>きてるな。<br>*(Ồ, kinh nghiệm buổi sáng phát huy rồi đấy.)* |
| Thức | はい、<ruby>置<rt>お</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>避難<rt>ひなん</rt></ruby><ruby>経路<rt>けいろ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, trước khi để em đã kiểm tra lối thoát ạ.)* |
| Kondo | <ruby>完璧<rt>かんぺき</rt></ruby>や。<ruby>一<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>怒<rt>おこ</rt></ruby>られたらもう<ruby>忘<rt>わす</rt></ruby>れへんやろ。<br>*(Hoàn hảo. Bị mắng một lần là không quên nữa nhỉ.)* |
| Thức | はい、<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, em nhớ bằng cơ thể rồi ạ.)* |
| Kondo | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い<ruby>覚<rt>おぼ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>や。<br>*(Đó là cách nhớ chắc nhất.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。ケガなし、<ruby>事故<rt>じこ</rt></ruby>なし。<br>*(Hôm nay vất vả rồi. Không thương tích, không tai nạn.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Tanigawa | トゥック、<ruby>朝<rt>あさ</rt></ruby>はようけ<ruby>怒<rt>おこ</rt></ruby>ったが、よう<ruby>立<rt>た</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>った。<br>*(Thức, sáng tao mắng nhiều, nhưng mày đứng dậy tốt.)* |
| Thức | ありがとうございます。<ruby>怒<rt>おこ</rt></ruby>っていただいて<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Cảm ơn sếp ạ. Em biết ơn vì sếp đã mắng ạ.)* |
| Tanigawa | ...ふん。<ruby>明日<rt>あした</rt></ruby>も<ruby>気<rt>き</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>くなよ。<br>*(...Hừm. Mai cũng đừng lơ là đấy.)* |
| Thức | はい!お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức học kỹ năng mềm cốt lõi khi đi làm ở Nhật: khi mắc lỗi thì nhận ngay 「すみませんでした」「申し訳ありません」, KHÔNG bào chữa dù có lý do, hỏi cách sửa 「同じ失敗をしない方法はありますか?」, và chủ động báo lỗi mình tự phát hiện (「怒るのは隠した時や」 — bị mắng là khi giấu, nói ra thì không bị mắng). Em dùng checklist tự kiểm và sổ ghi lỗi để chặn lặp lại. Bài học sâu nhất: 親方 nghiêm vì không muốn em chết, 「叱られるうちが花」 — còn được mắng là còn may, lặp cùng một lỗi hai lần mới là điều không thể chấp nhận.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | ダメ出し | だめだし | Chê trách, bắt làm lại |
> | 言い訳 | いいわけ | Bào chữa, biện hộ |
> | 怠る | おこたる | Lơ là, sao nhãng |
> | 申し訳ありません | もうしわけありません | Tôi vô cùng xin lỗi |
> | 素直 | すなお | Thật thà, ngoan ngoãn tiếp thu |
> | 反省 | はんせい | Phản tỉnh, rút kinh nghiệm |
> | 心構え | こころがまえ | Tâm thế, sự chuẩn bị tinh thần |
> | 仕組み | しくみ | Cơ chế |
> | 非常口 | ひじょうぐち | Lối thoát hiểm |
> | 避難経路 | ひなんけいろ | Đường thoát nạn |
> | 繰り返す | くりかえす | Lặp lại |
> | 一人前 | いちにんまえ | Thợ cứng, người đủ trình |
> | 叱る | しかる | Quở mắng (để dạy) |
> | 立ち直る | たちなおる | Đứng dậy, phục hồi |
> | 感謝 | かんしゃ | Biết ơn |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000011, 800000033, NULL, 'markdown_book', 'T11. 玉掛け & 揚重 nhập môn (玉掛け・揚重)', '# Sách thực tập sinh xây dựng · T11. 玉掛け & 揚重 nhập môn (玉掛け・揚重)

> **Mục tiêu nhân vật:** Thức học mẫu câu khi 玉掛け (móc/buộc tải để cẩu) và 揚重 (cẩu nâng vật liệu lên cao): khẩu lệnh ra hiệu cho người điều khiển cẩu (「巻き上げ」「巻き下げ」「ストップ」), xác nhận tải buộc chắc, cảnh báo người tránh khỏi vùng cẩu.

---

## Bối cảnh

Tháng 1 năm 2027. Công trình bước vào giai đoạn cần đưa lượng lớn vật liệu nặng lên cao bằng cẩu (クレーン). 玉掛け (buộc-móc tải) là công việc nguy hiểm cần chứng chỉ; Thức chưa có nên chỉ học phụ và hô tín hiệu dưới sự giám sát. 職長 Saito và 先輩 Kondo dạy khẩu lệnh chuẩn với người lái cẩu. Chương tập trung mẫu câu ra hiệu cẩu - xác nhận an toàn - cảnh báo vùng nguy hiểm.

---

## Tình huống 1 — Sân tập kết · 8:10, học 玉掛け là gì

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>揚重<rt>ようじゅう</rt></ruby><ruby>手伝<rt>てつだ</rt></ruby>うで。<br>*(Thức, từ hôm nay phụ việc cẩu nâng.)* |
| Thức | <ruby>揚重<rt>ようじゅう</rt></ruby>、というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Yojuu, là gì ạ?)* |
| Kondo | クレーンで<ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げることや。<br>*(Là dùng cẩu nâng vật liệu lên trên.)* |
| Thức | <ruby>玉掛<rt>たまか</rt></ruby>けという<ruby>言葉<rt>ことば</rt></ruby>も<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em cũng nghe từ tamakake ạ.)* |
| Kondo | <ruby>荷物<rt>にもつ</rt></ruby>にワイヤーをかける<ruby>作業<rt>さぎょう</rt></ruby>や。<ruby>資格<rt>しかく</rt></ruby>が<ruby>要<rt>い</rt></ruby>る。<br>*(Là việc móc dây cáp vào tải. Cần chứng chỉ.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>はまだ<ruby>資格<rt>しかく</rt></ruby>がないので<ruby>見<rt>み</rt></ruby>て<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em chưa có chứng chỉ nên quan sát để học ạ.)* |

---

## Tình huống 2 — Sân tập kết · 8:25, học tên dụng cụ 玉掛け

| Vai | Lời thoại |
|---|---|
| Kondo | これがワイヤーロープ。これがシャックル。これが<ruby>玉掛<rt>たまか</rt></ruby>けベルト。<br>*(Đây là cáp thép. Đây là khóa nối. Đây là dây đai buộc tải.)* |
| Thức | シャックル...つなぐ<ruby>金具<rt>かなぐ</rt></ruby>ですか?<br>*(Shackle... là móc nối kim loại ạ?)* |
| Kondo | そや。これで<ruby>荷物<rt>にもつ</rt></ruby>とフックをつなぐ。<br>*(Đúng. Cái này nối tải với móc cẩu.)* |
| Thức | <ruby>傷<rt>きず</rt></ruby>んだワイヤーは<ruby>使<rt>つか</rt></ruby>えますか?<br>*(Cáp bị sờn dùng được không ạ?)* |
| Kondo | <ruby>絶対<rt>ぜったい</rt></ruby>あかん。<ruby>切<rt>き</rt></ruby>れたら<ruby>荷物<rt>にもつ</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる。<ruby>必<rt>かなら</rt></ruby>ず<ruby>点検<rt>てんけん</rt></ruby>や。<br>*(Tuyệt đối không. Đứt là tải rơi. Nhất định phải kiểm tra.)* |
| Thức | はい、<ruby>使<rt>つか</rt></ruby>う<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng, trước khi dùng em sẽ kiểm tra ạ.)* |

---

## Tình huống 3 — Sân tập kết · 8:40, học khẩu lệnh tay với cẩu

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、クレーンには<ruby>手<rt>て</rt></ruby><ruby>合図<rt>あいず</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Thức, với cẩu thì dùng tín hiệu tay.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>は<ruby>届<rt>とど</rt></ruby>かないからですか?<br>*(Vì tiếng không tới được ạ?)* |
| Saito | そうです。<ruby>上<rt>あ</rt></ruby>げるときは<ruby>手<rt>て</rt></ruby>を<ruby>上<rt>うえ</rt></ruby>で<ruby>回<rt>まわ</rt></ruby>します。「<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ」です。<br>*(Đúng. Khi nâng thì xoay tay phía trên. Là "maki-age".)* |
| Thức | <ruby>下<rt>お</rt></ruby>ろすときは?<br>*(Khi hạ xuống thì sao ạ?)* |
| Saito | <ruby>手<rt>て</rt></ruby>を<ruby>下<rt>した</rt></ruby>で<ruby>回<rt>まわ</rt></ruby>します。「<ruby>巻<rt>ま</rt></ruby>き<ruby>下<rt>さ</rt></ruby>げ」です。<br>*(Xoay tay phía dưới. Là "maki-sage".)* |
| Thức | <ruby>止<rt>と</rt></ruby>めるときは<ruby>手<rt>て</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>るのですね。<br>*(Khi dừng thì nắm tay lại đúng không ạ.)* |

---

## Tình huống 4 — Sân tập kết · 9:00, quan sát 玉掛け chuẩn của 先輩

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>俺<rt>おれ</rt></ruby>の<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>見<rt>み</rt></ruby>とき。<br>*(Thức, xem anh buộc tải.)* |
| Thức | はい、<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng, em xem ạ.)* |
| Kondo | (móc dây) <ruby>重心<rt>じゅうしん</rt></ruby>の<ruby>真上<rt>まうえ</rt></ruby>にフックが<ruby>来<rt>く</rt></ruby>るようにかける。<br>*(Móc sao cho móc cẩu ở ngay trên trọng tâm.)* |
| Thức | <ruby>重心<rt>じゅうしん</rt></ruby>がずれるとどうなりますか?<br>*(Trọng tâm lệch thì sao ạ?)* |
| Kondo | <ruby>荷物<rt>にもつ</rt></ruby>が<ruby>傾<rt>かたむ</rt></ruby>いて<ruby>落<rt>お</rt></ruby>ちる。だから<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Tải nghiêng rồi rơi. Nên rất quan trọng.)* |
| Thức | なるほど、よく<ruby>見<rt>み</rt></ruby>ます。<br>*(Ra vậy, em quan sát kỹ ạ.)* |

---

## Tình huống 5 — Sân tập kết · 9:20, xác nhận tải buộc chắc

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、かけ<ruby>終<rt>お</rt></ruby>わったら<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Thức, móc xong thì kiểm tra.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しますか?<br>*(Kiểm tra những gì ạ?)* |
| Kondo | ワイヤーがねじれてないか、シャックルが<ruby>緩<rt>ゆる</rt></ruby>んでないか。<br>*(Cáp có xoắn không, khóa nối có lỏng không.)* |
| Thức | (chỉ tay) ワイヤーよし。シャックルよし。<br>*(Cáp, OK. Khóa nối, OK.)* |
| Kondo | ええな。<ruby>次<rt>つぎ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>上<rt>あ</rt></ruby>げて<ruby>確<rt>たし</rt></ruby>かめる。「<ruby>地切<rt>じぎ</rt></ruby>り」や。<br>*(Tốt. Tiếp là nâng lên chút để kiểm. Gọi "jigiri".)* |
| Thức | <ruby>地切<rt>じぎ</rt></ruby>り...<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>浮<rt>う</rt></ruby>かせるのですね。<br>*(Jigiri... là nhấc lên một chút thôi đúng không ạ.)* |

---

## Tình huống 6 — Sân tập kết · 9:40, hô tín hiệu 「巻き上げ」

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>声<rt>こえ</rt></ruby>も<ruby>出<rt>だ</rt></ruby>す。「<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ、ゆっくり！」<br>*(Thức, hô cả tiếng. "Maki-age, từ từ!")* |
| Thức | <ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ、ゆっくり！<br>*(Maki-age, từ từ!)* |
| Kondo | (tải nhấc nhẹ) ストップ！...<ruby>地切<rt>じぎ</rt></ruby>りOK、<ruby>荷物<rt>にもつ</rt></ruby><ruby>傾<rt>かたむ</rt></ruby>いてへん。<br>*(Stop! ...Jigiri OK, tải không nghiêng.)* |
| Thức | <ruby>傾<rt>かたむ</rt></ruby>いていたらどうしますか?<br>*(Nếu nghiêng thì làm sao ạ?)* |
| Kondo | <ruby>一回<rt>いっかい</rt></ruby><ruby>下<rt>お</rt></ruby>ろして、かけ<ruby>直<rt>なお</rt></ruby>す。<ruby>無理<rt>むり</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げん。<br>*(Hạ xuống một lần, móc lại. Không cố nâng.)* |
| Thức | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rõ rồi ạ.)* |

---

## Tình huống 7 — Sân tập kết · 10:00, cảnh báo người tránh vùng cẩu

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、クレーン<ruby>作業<rt>さぎょう</rt></ruby>です！<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>はい</rt></ruby>らないでください！<br>*(Mọi người, đang vận hành cẩu! Đừng vào phía dưới ạ!)* |
| Thợ A | おう、わかった。<br>*(Ờ, hiểu rồi.)* |
| Thức | <ruby>荷物<rt>にもつ</rt></ruby>の<ruby>下<rt>した</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby><ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>です！<br>*(Dưới tải là tuyệt đối cấm vào ạ!)* |
| Kondo | ええ<ruby>声<rt>こえ</rt></ruby>かけや。<ruby>吊<rt>つ</rt></ruby>り<ruby>荷<rt>に</rt></ruby>の<ruby>下<rt>した</rt></ruby>は<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Hô báo tốt. Dưới tải treo là nguy hiểm nhất.)* |
| Thức | <ruby>落<rt>お</rt></ruby>ちたら<ruby>即死<rt>そくし</rt></ruby>ですから。<br>*(Vì rơi xuống là chết ngay ạ.)* |
| Kondo | その<ruby>意識<rt>いしき</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>や。ずっと<ruby>持<rt>も</rt></ruby>っとけ。<br>*(Ý thức đó quan trọng. Giữ luôn nhé.)* |

---

## Tình huống 8 — Sân tập kết · 10:20, dẫn tải lên cao bằng dây 介錯ロープ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、この<ruby>介錯<rt>かいしゃく</rt></ruby>ロープ<ruby>持<rt>も</rt></ruby>って。<ruby>荷物<rt>にもつ</rt></ruby><ruby>回<rt>まわ</rt></ruby>らんように。<br>*(Thức, cầm dây dẫn hướng này. Cho tải khỏi xoay.)* |
| Thức | このロープで<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>しますか?<br>*(Dùng dây này để chỉnh hướng ạ?)* |
| Kondo | そや。<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>りすぎたらあかん。<ruby>軽<rt>かる</rt></ruby>くな。<br>*(Đúng. Đừng kéo căng quá. Nhẹ tay nhé.)* |
| Thức | <ruby>下<rt>した</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>る、ですね。<br>*(Kéo từ phía dưới đúng không ạ.)* |
| Kondo | そや。<ruby>荷物<rt>にもつ</rt></ruby>の<ruby>真下<rt>ました</rt></ruby>には<ruby>入<rt>はい</rt></ruby>るな。<ruby>横<rt>よこ</rt></ruby>からや。<br>*(Đúng. Đừng vào ngay dưới tải. Từ bên cạnh.)* |
| Thức | はい、<ruby>横<rt>よこ</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>きます。<br>*(Vâng, em kéo từ bên cạnh ạ.)* |

---

## Tình huống 9 — Khu nghỉ · 10:50, anh Long dặn về cẩu (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Bắt đầu phụ 揚重 rồi à? Đây là việc nguy hiểm bậc nhất công trường đấy. |
| Thức | Vâng anh. Em mới chỉ hô tín hiệu với cầm dây 介錯ロープ thôi, chưa được buộc tải. |
| Anh Long | Đúng, chưa có chứng chỉ thì đừng đụng vào 玉掛け. Nhớ tuyệt đối: không bao giờ đứng dưới tải treo, dù chỉ một giây. |
| Thức | Em nhớ ạ. 親方 với anh Kondo cũng nói "吊り荷の下" là chỗ chết người. |
| Anh Long | Ừ. Năm sau mày học thi chứng chỉ 玉掛け được. Giờ cứ quan sát cho kỹ, học khẩu lệnh tay cho chuẩn. |
| Thức | Vâng, em sẽ cố thi chứng chỉ. Cảm ơn anh. |

---

## Tình huống 10 — Sân tập kết · 11:10, phối hợp với người lái cẩu

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>合図<rt>あいず</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>だけや。お<ruby>前<rt>まえ</rt></ruby>が<ruby>声<rt>こえ</rt></ruby>かけ<ruby>係<rt>がかり</rt></ruby>。<br>*(Thức, ra hiệu chỉ một người. Em làm người hô.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>が<ruby>合図<rt>あいず</rt></ruby>するのですね?<br>*(Chỉ mình em ra hiệu đúng không ạ?)* |
| Kondo | そや。<ruby>何人<rt>なんにん</rt></ruby>も<ruby>合図<rt>あいず</rt></ruby>したら<ruby>運転手<rt>うんてんしゅ</rt></ruby>が<ruby>混乱<rt>こんらん</rt></ruby>する。<br>*(Đúng. Nhiều người ra hiệu thì tài xế rối.)* |
| Thức | わかりました。はっきり<ruby>大<rt>おお</rt></ruby>きく<ruby>合図<rt>あいず</rt></ruby>します。<br>*(Em hiểu rồi. Em ra hiệu to và rõ ạ.)* |
| Kondo | そや。<ruby>迷<rt>まよ</rt></ruby>ったら「ストップ」。それだけは<ruby>覚<rt>おぼ</rt></ruby>えとけ。<br>*(Đúng. Phân vân thì "Stop". Cái đó nhớ kỹ.)* |
| Thức | はい、<ruby>迷<rt>まよ</rt></ruby>ったらストップですね。<br>*(Vâng, phân vân thì Stop đúng không ạ.)* |

---

## Tình huống 11 — Sân tập kết · 11:30, ra hiệu nâng tải thật

| Vai | Lời thoại |
|---|---|
| Thức | (xoay tay trên) <ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ、ゆっくり！<br>*(Maki-age, từ từ!)* |
| Kondo | (theo dõi) ええで、まっすぐ<ruby>上<rt>あ</rt></ruby>がっとる。<br>*(Tốt, đang lên thẳng.)* |
| Thức | (nắm tay) ストップ！<ruby>位置<rt>いち</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Stop! Em kiểm tra vị trí ạ.)* |
| Kondo | おう、<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>動<rt>うご</rt></ruby>かす。それでええ。<br>*(Ờ, kiểm tra rồi mới di chuyển. Thế là được.)* |
| Thức | (xoay tay ngang) <ruby>右<rt>みぎ</rt></ruby>へ<ruby>移動<rt>いどう</rt></ruby>、ゆっくり！<br>*(Sang phải, từ từ!)* |
| Kondo | <ruby>合図<rt>あいず</rt></ruby>はっきりしてて<ruby>分<rt>わ</rt></ruby>かりやすいわ。<br>*(Ra hiệu rõ ràng dễ hiểu đấy.)* |

---

## Tình huống 12 — Giàn giáo tầng 5 · 13:00, nhận tải trên cao

| Vai | Lời thoại |
|---|---|
| Kondo | (trên cao) トゥックくん、<ruby>下<rt>した</rt></ruby>で<ruby>合図<rt>あいず</rt></ruby><ruby>頼<rt>たの</rt></ruby>む。<ruby>俺<rt>おれ</rt></ruby>が<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る。<br>*(Thức, ra hiệu ở dưới. Anh đỡ tải.)* |
| Thức | はい！<ruby>近藤<rt>こんどう</rt></ruby>さんの<ruby>位置<rt>いち</rt></ruby>まで<ruby>上<rt>あ</rt></ruby>げます。<br>*(Vâng! Em nâng tới chỗ anh Kondo ạ.)* |
| Thức | (xoay tay) <ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ！...あと<ruby>少<rt>すこ</rt></ruby>し！<br>*(Maki-age! ...Thêm chút nữa!)* |
| Kondo | <ruby>見<rt>み</rt></ruby>えた、もうちょい<ruby>右<rt>みぎ</rt></ruby>！<br>*(Thấy rồi, sang phải chút!)* |
| Thức | (xoay tay phải, rồi nắm tay) ストップ！その<ruby>位置<rt>いち</rt></ruby>で！<br>*(Stop! Giữ vị trí đó!)* |
| Kondo | <ruby>取<rt>と</rt></ruby>った！<ruby>巻<rt>ま</rt></ruby>き<ruby>下<rt>さ</rt></ruby>げ<ruby>少<rt>すこ</rt></ruby>し！<br>*(Lấy được! Hạ xuống chút!)* |

---

## Tình huống 13 — Giàn giáo tầng 5 · 13:20, tháo móc an toàn

| Vai | Lời thoại |
|---|---|
| Kondo | (trên cao) トゥックくん、<ruby>荷物<rt>にもつ</rt></ruby><ruby>置<rt>お</rt></ruby>けた。フック<ruby>外<rt>はず</rt></ruby>すで。<br>*(Thức, đặt tải xong. Tháo móc đây.)* |
| Thức | はい。ワイヤーが<ruby>緩<rt>ゆる</rt></ruby>んでから<ruby>外<rt>はず</rt></ruby>しますか?<br>*(Vâng. Đợi cáp chùng rồi mới tháo ạ?)* |
| Kondo | そや。<ruby>張<rt>は</rt></ruby>ったまま<ruby>外<rt>はず</rt></ruby>したら<ruby>跳<rt>は</rt></ruby>ねて<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Đúng. Còn căng mà tháo là bật văng nguy hiểm.)* |
| Thức | わかりました。<ruby>合図<rt>あいず</rt></ruby>します。<ruby>巻<rt>ま</rt></ruby>き<ruby>下<rt>さ</rt></ruby>げ、<ruby>少<rt>すこ</rt></ruby>し！<br>*(Em hiểu rồi. Em ra hiệu. Hạ xuống, chút thôi!)* |
| Kondo | ワイヤー<ruby>緩<rt>ゆる</rt></ruby>んだ。<ruby>外<rt>はず</rt></ruby>すで。<br>*(Cáp chùng rồi. Tháo nhé.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Vâng, anh cẩn thận ạ.)* |

---

## Tình huống 14 — Sân tập kết · 14:00, 親方 kiểm tra cách hô của Thức

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>合図<rt>あいず</rt></ruby>やってみい。<br>*(Thức, ra hiệu thử xem.)* |
| Thức | はい。<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ(xoay tay trên)、<ruby>巻<rt>ま</rt></ruby>き<ruby>下<rt>さ</rt></ruby>げ(xoay tay dưới)、ストップ(nắm tay)。<br>*(Vâng. Maki-age, maki-sage, stop.)* |
| Tanigawa | はっきりしとるな。<ruby>運転手<rt>うんてんしゅ</rt></ruby>から<ruby>見<rt>み</rt></ruby>えるか<ruby>意識<rt>いしき</rt></ruby>せえ。<br>*(Rõ ràng đấy. Phải để ý tài xế có nhìn thấy không.)* |
| Thức | はい、<ruby>運転手<rt>うんてんしゅ</rt></ruby>の<ruby>見<rt>み</rt></ruby>える<ruby>位置<rt>いち</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちます。<br>*(Vâng, em đứng chỗ tài xế nhìn thấy ạ.)* |
| Tanigawa | せや。<ruby>合図<rt>あいず</rt></ruby><ruby>者<rt>しゃ</rt></ruby>は<ruby>運転手<rt>うんてんしゅ</rt></ruby>と<ruby>心<rt>こころ</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つにせなあかん。<br>*(Đúng. Người ra hiệu phải một lòng với tài xế.)* |
| Thức | はい、<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng, em ghi nhớ ạ.)* |

---

## Tình huống 15 — Khu nghỉ · 15:00, 休憩 small talk về chứng chỉ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>資格<rt>しかく</rt></ruby><ruby>取<rt>と</rt></ruby>りたいか?<br>*(Thức, muốn lấy chứng chỉ tamakake không?)* |
| Thức | はい、ぜひ<ruby>取<rt>と</rt></ruby>りたいです。どうすればいいですか?<br>*(Vâng, em rất muốn lấy. Phải làm sao ạ?)* |
| Kondo | <ruby>講習<rt>こうしゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるんや。<ruby>2<rt>ふつ</rt></ruby><ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>くらいな。<br>*(Đi học khóa huấn luyện. Khoảng hai ba ngày.)* |
| Thức | <ruby>日本語<rt>にほんご</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Tiếng Nhật có ổn không ạ?)* |
| Kondo | <ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby><ruby>多<rt>おお</rt></ruby>いから<ruby>勉強<rt>べんきょう</rt></ruby>しとき。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>出<rt>だ</rt></ruby>してくれる。<br>*(Nhiều thuật ngữ chuyên môn, học trước đi. Công ty sẽ chi tiền.)* |
| Thức | <ruby>頑張<rt>がんば</rt></ruby>って<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Em sẽ cố gắng học ạ.)* |

---

## Tình huống 16 — Sân tập kết · 15:20, xử lý khi tải lắc

| Vai | Lời thoại |
|---|---|
| Thức | (nắm tay) ストップ！ストップ！<ruby>荷物<rt>にもつ</rt></ruby>が<ruby>揺<rt>ゆ</rt></ruby>れています！<br>*(Stop! Stop! Tải đang lắc ạ!)* |
| Kondo | ええ<ruby>判断<rt>はんだん</rt></ruby>や。<ruby>揺<rt>ゆ</rt></ruby>れたら<ruby>絶対<rt>ぜったい</rt></ruby><ruby>止<rt>と</rt></ruby>める。<br>*(Quyết định tốt. Lắc thì tuyệt đối dừng.)* |
| Thức | <ruby>揺<rt>ゆ</rt></ruby>れが<ruby>止<rt>と</rt></ruby>まるまで<ruby>待<rt>ま</rt></ruby>ちますか?<br>*(Đợi đến khi hết lắc ạ?)* |
| Kondo | そや。<ruby>慌<rt>あわ</rt></ruby>てて<ruby>動<rt>うご</rt></ruby>かすと<ruby>事故<rt>じこ</rt></ruby>る。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>くまで<ruby>待<rt>ま</rt></ruby>つ。<br>*(Đúng. Cuống mà di chuyển là tai nạn. Đợi nó ổn định.)* |
| Thức | (đợi) <ruby>止<rt>と</rt></ruby>まりました。<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ、ゆっくり<ruby>再開<rt>さいかい</rt></ruby>します。<br>*(Lắc dừng rồi. Maki-age, tiếp tục từ từ ạ.)* |
| Kondo | <ruby>冷静<rt>れいせい</rt></ruby>でええで。<br>*(Bình tĩnh tốt đấy.)* |

---

## Tình huống 17 — Sân tập kết · 15:40, được giao kiểm tra ワイヤー

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>明日<rt>あした</rt></ruby><ruby>使<rt>つか</rt></ruby>うワイヤー、<ruby>点検<rt>てんけん</rt></ruby>してください。<br>*(Thức, cáp mai dùng, kiểm tra giúp.)* |
| Thức | はい。<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>ればいいですか?<br>*(Vâng. Xem những gì ạ?)* |
| Saito | <ruby>素線<rt>そせん</rt></ruby>の<ruby>切<rt>き</rt></ruby>れ、<ruby>変形<rt>へんけい</rt></ruby>、さび。<ruby>一<rt>ひと</rt></ruby>つでもあったら<ruby>使<rt>つか</rt></ruby>わない。<br>*(Sợi cáp đứt, biến dạng, gỉ. Có một cái thôi cũng không dùng.)* |
| Thức | (kiểm tra) ...この<ruby>一本<rt>いっぽん</rt></ruby>、<ruby>素線<rt>そせん</rt></ruby>が<ruby>切<rt>き</rt></ruby>れています。<br>*(...Cái này, có sợi cáp bị đứt ạ.)* |
| Saito | よく<ruby>見<rt>み</rt></ruby>つけました。それは<ruby>廃棄<rt>はいき</rt></ruby>です。<ruby>命<rt>いのち</rt></ruby><ruby>守<rt>まも</rt></ruby>る<ruby>目<rt>め</rt></ruby>です。<br>*(Phát hiện tốt. Cái đó loại bỏ. Đôi mắt giữ mạng đấy.)* |
| Thức | はい、<ruby>別<rt>べつ</rt></ruby>にして<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em để riêng rồi báo cáo ạ.)* |

---

## Tình huống 18 — Sân tập kết · 16:00, 親方 đánh giá tiến bộ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>合図<rt>あいず</rt></ruby>、よかったぞ。<br>*(Thức, ra hiệu hôm nay tốt đấy.)* |
| Thức | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Cảm ơn sếp ạ. Em hồi hộp ạ.)* |
| Tanigawa | <ruby>揚重<rt>ようじゅう</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>するくらいでちょうどええ。<br>*(Cẩu nâng thì hồi hộp vừa phải mới đúng.)* |
| Thức | <ruby>慣<rt>な</rt></ruby>れても<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かないようにします。<br>*(Quen rồi em cũng sẽ không lơ là ạ.)* |
| Tanigawa | せや。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>資格<rt>しかく</rt></ruby><ruby>取<rt>と</rt></ruby>れ。<ruby>応援<rt>おうえん</rt></ruby>するわ。<br>*(Đúng. Sang năm lấy chứng chỉ tamakake đi. Tao ủng hộ.)* |
| Thức | はい！<ruby>必<rt>かなら</rt></ruby>ず<ruby>取<rt>と</rt></ruby>ります！<br>*(Vâng ạ! Em nhất định sẽ lấy ạ!)* |

---

## Tình huống 19 — Khu vật tư · 16:40, 片付け & cất ワイヤー đúng cách

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、ワイヤーは<ruby>地面<rt>じめん</rt></ruby>に<ruby>置<rt>お</rt></ruby>かんと、フックにかけて。<br>*(Thức, cáp đừng để dưới đất, treo lên móc.)* |
| Thức | <ruby>地面<rt>じめん</rt></ruby>に<ruby>置<rt>お</rt></ruby>くと<ruby>傷<rt>いた</rt></ruby>みますか?<br>*(Để dưới đất thì hỏng à ạ?)* |
| Kondo | さびる、<ruby>砂<rt>すな</rt></ruby><ruby>噛<rt>か</rt></ruby>む。<ruby>長持<rt>ながも</rt></ruby>ちさせなあかん。<br>*(Gỉ, dính cát. Phải để dùng được lâu.)* |
| Thức | <ruby>傷<rt>きず</rt></ruby>んだ<ruby>一本<rt>いっぽん</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>にしました。<br>*(Cái bị sờn em để riêng rồi ạ.)* |
| Kondo | ええな。<ruby>明日<rt>あした</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>言<rt>い</rt></ruby>うとき。<br>*(Tốt. Mai báo đốc công nhé.)* |
| Thức | はい、<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em sẽ báo cáo ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 終礼 & về

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>もケガなし、<ruby>事故<rt>じこ</rt></ruby>なし。<ruby>揚重<rt>ようじゅう</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Hôm nay không thương tích, không tai nạn. Cẩu nâng hoàn thành an toàn.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Kondo | トゥックくん、<ruby>合図<rt>あいず</rt></ruby><ruby>係<rt>がかり</rt></ruby><ruby>初<rt>はじ</rt></ruby>めてにしては<ruby>上出来<rt>じょうでき</rt></ruby>や。<br>*(Thức, làm người ra hiệu lần đầu mà tốt đấy.)* |
| Thức | ありがとうございます。<ruby>来年<rt>らいねん</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>取<rt>と</rt></ruby>ります。<br>*(Cảm ơn anh ạ. Sang năm em sẽ lấy chứng chỉ ạ.)* |
| Tanigawa | おう、<ruby>楽<rt>たの</rt></ruby>しみにしとるで。<br>*(Ờ, tao mong chờ đấy.)* |
| Thức | はい！お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng ạ! Em xin phép về trước. Chúc an toàn.)* |

---

## Đọng lại

Thức nhập môn 玉掛け・揚重: hiểu cần 資格 mới được buộc tải, nên giai đoạn này em quan sát + làm 合図者 (người ra hiệu). Em học khẩu lệnh tay với cẩu (巻き上げ xoay tay trên, 巻き下げ xoay tay dưới, ストップ nắm tay), quy tắc 地切り (nhấc thử kiểm trọng tâm), chỉ một người ra hiệu, đứng chỗ tài xế nhìn thấy, và tuyệt đối cấm đứng dưới 吊り荷 (tải treo). Em biết kiểm tra ワイヤー (sợi đứt/biến dạng/gỉ thì loại bỏ) và xử lý khi tải lắc: 「ストップ」 chờ ổn định. Cuối năm 1, em đặt mục tiêu lấy chứng chỉ 玉掛け.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 玉掛け | たまかけ | Buộc/móc tải để cẩu |
> | 揚重 | ようじゅう | Cẩu nâng vật liệu |
> | クレーン | くれーん | Cần cẩu |
> | ワイヤーロープ | わいやーろーぷ | Cáp thép |
> | シャックル | しゃっくる | Khóa nối |
> | 巻き上げ | まきあげ | Cuốn lên (nâng) |
> | 巻き下げ | まきさげ | Cuốn xuống (hạ) |
> | 地切り | じぎり | Nhấc thử khỏi mặt đất |
> | 重心 | じゅうしん | Trọng tâm |
> | 吊り荷 | つりに | Tải đang treo |
> | 介錯ロープ | かいしゃくろーぷ | Dây dẫn hướng tải |
> | 合図者 | あいずしゃ | Người ra hiệu |
> | 運転手 | うんてんしゅ | Tài xế (lái cẩu) |
> | 素線 | そせん | Sợi cáp con |
> | 資格 | しかく | Chứng chỉ, tư cách |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (833000012, 800000033, NULL, 'markdown_book', 'T12. Hết năm 1, quyết tâm (一年目の終わり)', '# Sách thực tập sinh xây dựng · T12. Hết năm 1, quyết tâm (一年目の終わり)

> **Mục tiêu nhân vật:** Thức tổng kết năm 1: nhận đánh giá từ 親方・職長, mẫu câu cảm ơn trang trọng, nói về mục tiêu năm 2 (thi chứng chỉ 玉掛け, trở thành thợ tobi cứng), 終礼 cuối năm, lời chúc đầu năm mới.

---

## Bối cảnh

Tháng 3 năm 2027, kết thúc năm thực tập thứ nhất của Thức. Từ một thanh niên N4 không biết gì, em đã thành thợ phụ tobi vững. Tổ làm lễ tổng kết cuối năm trước kỳ nghỉ. Chương tập trung mẫu câu đánh giá - cảm ơn - đặt mục tiêu - chào năm mới, đúng văn hóa công ty Nhật. Đây cũng là cầu nối sang Sách 34 (năm 2).

---

## Tình huống 1 — 朝礼 · 8:00, 職長 thông báo tổng kết năm

| Vai | Lời thoại |
|---|---|
| Saito | みなさん、<ruby>今年度<rt>こんねんど</rt></ruby>もあと<ruby>少<rt>すこ</rt></ruby>しです。<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>終<rt>お</rt></ruby>わりましょう。<br>*(Mọi người, năm tài chính này sắp hết. Hãy kết thúc không tai nạn.)* |
| Thức | おはようございます。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng ạ. Mong mọi người ạ.)* |
| Saito | トゥックくんは<ruby>来週<rt>らいしゅう</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>があります。<br>*(Thức tuần sau có buổi phỏng vấn đánh giá.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Vâng, em rõ ạ. Em sẽ chuẩn bị ạ.)* |
| Saito | <ruby>一年間<rt>いちねんかん</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>っておいてください。<br>*(Hãy nhìn lại một năm qua nhé.)* |
| Thức | はい、<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>っておきます。<br>*(Vâng, em sẽ nhìn lại ạ.)* |

---

## Tình huống 2 — Giàn giáo tầng 5 · 9:00, 先輩 nhận xét sự trưởng thành

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>一年<rt>いちねん</rt></ruby>はやかったな。<br>*(Thức, một năm nhanh nhỉ.)* |
| Thức | はい、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりませんでした。<br>*(Vâng, lúc đầu em chẳng biết gì ạ.)* |
| Kondo | <ruby>今<rt>いま</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でだいぶ<ruby>組<rt>く</rt></ruby>めるやん。<br>*(Giờ giàn giáo tự lắp được kha khá rồi đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さんが<ruby>教<rt>おし</rt></ruby>えてくれたおかげです。<br>*(Nhờ anh Kondo chỉ dạy ạ.)* |
| Kondo | <ruby>俺<rt>おれ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>言<rt>い</rt></ruby>うただけや。お<ruby>前<rt>まえ</rt></ruby>が<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Anh chỉ nói chút thôi. Em tự cố gắng đấy.)* |
| Thức | これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ giờ vẫn mong anh chỉ bảo ạ.)* |

---

## Tình huống 3 — Khu nghỉ · 10:00, ôn lại năm qua với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Thức, vậy là mày xong năm đầu rồi. Nhớ ngày mày mới sang run cầm cập không? |
| Thức | Nhớ chứ anh. Lúc đó em sợ 親方, không nghe được tiếng Nhật, suýt khóc. |
| Anh Long | Giờ mày hô 合図 cẩu, đóng くさび nghe tiếng được, 親方 còn khen. Tiến bộ ghê đấy. |
| Thức | Em biết ơn anh nhiều lắm. Anh dạy em nhiều thứ ngoài công việc nữa. |
| Anh Long | Bọn mình đồng hương, giúp nhau là phải. Năm 2 ráng thi chứng chỉ 玉掛け nha, lương lên đấy. |
| Thức | Vâng, em quyết tâm thi. Cảm ơn anh nhiều ạ. |

---

## Tình huống 4 — Giàn giáo tầng 5 · 11:00, được giao việc khó hơn

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>はこの<ruby>区画<rt>くかく</rt></ruby>、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>組<rt>く</rt></ruby>んでみい。<br>*(Thức, hôm nay khu này, thử tự lắp một mình xem.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>で、ですか?<br>*(Một mình ạ?)* |
| Tanigawa | そや。<ruby>俺<rt>おれ</rt></ruby>が<ruby>見<rt>み</rt></ruby>とる。お<ruby>前<rt>まえ</rt></ruby>ならできる。<br>*(Đúng. Tao theo dõi. Mày làm được.)* |
| Thức | はい、やってみます。<ruby>分<rt>わ</rt></ruby>からなければ<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, em thử ạ. Không hiểu em sẽ hỏi ạ.)* |
| Tanigawa | それでええ。<ruby>任<rt>まか</rt></ruby>せるからな。<br>*(Thế là được. Tao giao cho mày đấy.)* |
| Thức | はい、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってやります。<br>*(Vâng, em sẽ làm có trách nhiệm ạ.)* |

---

## Tình huống 5 — Giàn giáo tầng 5 · 12:00, hoàn thành việc tự làm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>区画<rt>くかく</rt></ruby><ruby>組<rt>く</rt></ruby>み<ruby>終<rt>お</rt></ruby>わりました。<ruby>点検<rt>てんけん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Sếp, khu này lắp xong rồi ạ. Sếp kiểm tra giúp ạ.)* |
| Tanigawa | (kiểm tra) ...くさび、ええ。<ruby>筋交<rt>すじか</rt></ruby>い、ええ。<ruby>手<rt>て</rt></ruby>すりもばっちりや。<br>*(...Nêm chốt, được. Giằng chéo, được. Lan can cũng chuẩn.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたか?<br>*(Có ổn không ạ?)* |
| Tanigawa | <ruby>一年<rt>いちねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>とは<ruby>別人<rt>べつじん</rt></ruby>やな。<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Khác hẳn một năm trước. Làm việc đàng hoàng đấy.)* |
| Thức | ありがとうございます。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn sếp ạ. Em vui ạ.)* |
| Tanigawa | この<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>二年目<rt>にねんめ</rt></ruby>もいけ。<br>*(Cứ đà này mà sang năm 2.)* |

---

## Tình huống 6 — Phòng họp · 13:30, buổi 面談 đánh giá với 職長

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>一年間<rt>いちねんかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>自分<rt>じぶん</rt></ruby>でどう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Thức, một năm vất vả rồi. Tự em thấy thế nào?)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>も<ruby>多<rt>おお</rt></ruby>かったですが、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>成長<rt>せいちょう</rt></ruby>できました。<br>*(Lỗi cũng nhiều ạ, nhưng em đã trưởng thành dần ạ.)* |
| Saito | <ruby>特<rt>とく</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びたのは<ruby>報連相<rt>ほうれんそう</rt></ruby>と<ruby>声<rt>こえ</rt></ruby>かけです。<br>*(Đặc biệt tiến bộ là horenso và việc hô báo.)* |
| Thức | ありがとうございます。まだ<ruby>足場<rt>あしば</rt></ruby>の<ruby>応用<rt>おうよう</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(Cảm ơn anh ạ. Em vẫn còn yếu phần giàn giáo nâng cao ạ.)* |
| Saito | <ruby>課題<rt>かだい</rt></ruby>を<ruby>分<rt>わ</rt></ruby>かっているのがいいです。<ruby>来年<rt>らいねん</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は?<br>*(Biết điểm yếu của mình là tốt. Mục tiêu năm sau?)* |
| Thức | <ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>って、<ruby>一<rt>いち</rt></ruby><ruby>人前<rt>にんまえ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づきたいです。<br>*(Em muốn lấy chứng chỉ tamakake, tiến gần thành thợ cứng ạ.)* |

---

## Tình huống 7 — Phòng họp · 13:45, nhận đánh giá và lời khuyên

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>評価<rt>ひょうか</rt></ruby>は<ruby>良好<rt>りょうこう</rt></ruby>です。<ruby>真面目<rt>まじめ</rt></ruby>で<ruby>正直<rt>しょうじき</rt></ruby>なところが<ruby>強<rt>つよ</rt></ruby>みです。<br>*(Đánh giá tốt. Điểm mạnh là chăm chỉ và trung thực.)* |
| Thức | ありがとうございます。<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Cảm ơn anh ạ. Em được động viên ạ.)* |
| Saito | <ruby>一<rt>ひと</rt></ruby>つ<ruby>言<rt>い</rt></ruby>うと、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていいです。<br>*(Một điều, em có thể tự tin hơn một chút.)* |
| Thức | はい、<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>てるよう<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng để tự tin hơn ạ.)* |
| Saito | <ruby>技術<rt>ぎじゅつ</rt></ruby>はついてきました。あとは<ruby>経験<rt>けいけん</rt></ruby>です。<br>*(Kỹ thuật đã lên rồi. Còn lại là kinh nghiệm.)* |
| Thức | はい、<ruby>二年目<rt>にねんめ</rt></ruby>も<ruby>一生懸命<rt>いっしょうけんめい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, năm 2 em cũng sẽ cố gắng hết sức ạ.)* |

---

## Tình huống 8 — Giàn giáo tầng 5 · 14:30, dạy lại đàn em mới (truyền nghề)

| Vai | Lời thoại |
|---|---|
| Đàn em mới | トゥックさん、このくさび、どう<ruby>叩<rt>たた</rt></ruby>けばいいですか?<br>*(Anh Thức, cái nêm chốt này gõ thế nào ạ?)* |
| Thức | <ruby>音<rt>おと</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて。「カン」と<ruby>高<rt>たか</rt></ruby>い<ruby>音<rt>おと</rt></ruby>になったら<ruby>締<rt>し</rt></ruby>まっています。<br>*(Nghe tiếng. "Can" tiếng cao lên là đã chặt.)* |
| Đàn em mới | (gõ) ...こうですか?<br>*(...Thế này ạ?)* |
| Thức | もう<ruby>一発<rt>いっぱつ</rt></ruby>。<ruby>音<rt>おと</rt></ruby>が<ruby>変<rt>か</rt></ruby>わるまで。<br>*(Một phát nữa. Đến khi tiếng đổi.)* |
| Đàn em mới | カン！<ruby>変<rt>か</rt></ruby>わりました！<br>*(Can! Đổi rồi ạ!)* |
| Thức | それです。<ruby>分<rt>わ</rt></ruby>からないことはいつでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Đúng đó. Không hiểu gì cứ hỏi anh bất cứ lúc nào.)* |

---

## Tình huống 9 — Khu nghỉ · 15:00, 親方 nói lời hiếm hoi

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、お<ruby>前<rt>まえ</rt></ruby><ruby>新人<rt>しんじん</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えとったな。<br>*(Thức, mày dạy người mới đấy nhỉ.)* |
| Thức | はい、<ruby>私<rt>わたし</rt></ruby>も<ruby>教<rt>おそ</rt></ruby>わったので。<br>*(Vâng, vì em cũng được dạy ạ.)* |
| Tanigawa | <ruby>教<rt>おし</rt></ruby>えられるようになったら<ruby>一人前<rt>いちにんまえ</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まりや。<br>*(Dạy được người khác là bắt đầu thành thợ cứng.)* |
| Thức | まだまだです。もっと<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Em còn kém lắm ạ. Em sẽ học thêm ạ.)* |
| Tanigawa | その<ruby>謙虚<rt>けんきょ</rt></ruby>さがええ。<ruby>二年目<rt>にねんめ</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むで。<br>*(Cái khiêm tốn đó tốt. Năm 2 nhờ mày đấy.)* |
| Thức | はい、こちらこそよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em cũng mong sếp chỉ bảo ạ.)* |

---

## Tình huống 10 — Giàn giáo tầng 5 · 15:30, hoàn thành công trình giai đoạn

| Vai | Lời thoại |
|---|---|
| Saito | みなさん、この<ruby>現場<rt>げんば</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>、<ruby>完成<rt>かんせい</rt></ruby>です！<br>*(Mọi người, giàn giáo công trường này, hoàn thành!)* |
| Thức | (nhìn lên) <ruby>高<rt>たか</rt></ruby>いですね...ここまでやったんですね。<br>*(Cao quá ạ... đã làm tới đây rồi nhỉ.)* |
| Kondo | トゥックくんも<ruby>組<rt>く</rt></ruby>んだ<ruby>足場<rt>あしば</rt></ruby>や。<ruby>誇<rt>ほこ</rt></ruby>りに<ruby>思<rt>おも</rt></ruby>えよ。<br>*(Cũng là giàn giáo em lắp đấy. Tự hào lên.)* |
| Thức | はい、<ruby>自分<rt>じぶん</rt></ruby>が<ruby>作<rt>つく</rt></ruby>ったと<ruby>思<rt>おも</rt></ruby>うと<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng, nghĩ là mình làm ra thì em vui lắm ạ.)* |
| Saito | これがとびの<ruby>仕事<rt>しごと</rt></ruby>のやりがいです。<br>*(Đây là cái đáng làm của nghề tobi.)* |
| Thức | <ruby>建設<rt>けんせつ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでよかったです。<br>*(Em chọn nghề xây dựng thật đúng ạ.)* |

---

## Tình huống 11 — Khu nghỉ · 15:50, cảm ơn 先輩 trang trọng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>一年間<rt>いちねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Kondo, suốt một năm, em thực sự cảm ơn anh ạ.)* |
| Kondo | きゅうにどうしたん。<br>*(Sao tự nhiên thế.)* |
| Thức | <ruby>言葉<rt>ことば</rt></ruby>も<ruby>仕事<rt>しごと</rt></ruby>も、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>近藤<rt>こんどう</rt></ruby>さんに<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Cả tiếng cả việc, em đều được anh Kondo dạy ạ.)* |
| Kondo | <ruby>照<rt>て</rt></ruby>れるやんけ。お<ruby>前<rt>まえ</rt></ruby>が<ruby>素直<rt>すなお</rt></ruby>やったから<ruby>教<rt>おし</rt></ruby>えやすかった。<br>*(Ngại đấy. Vì em thật thà nên dễ dạy.)* |
| Thức | <ruby>二年目<rt>にねんめ</rt></ruby>もご<ruby>指導<rt>しどう</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Năm 2 mong anh chỉ bảo tiếp ạ.)* |
| Kondo | おう、まかせとけ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろ。<br>*(Ờ, để đó cho anh. Cùng cố gắng nào.)* |

---

## Tình huống 12 — Cổng công trường · 16:00, dọn dẹp tổng vệ sinh cuối năm

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>は<ruby>年度末<rt>ねんどまつ</rt></ruby>の<ruby>大掃除<rt>おおそうじ</rt></ruby>です。みんなで<ruby>片付<rt>かたづ</rt></ruby>けましょう。<br>*(Hôm nay tổng vệ sinh cuối năm tài chính. Cả tổ cùng dọn nào.)* |
| Thức | はい！<ruby>道具<rt>どうぐ</rt></ruby>と<ruby>材料<rt>ざいりょう</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>整理<rt>せいり</rt></ruby>します。<br>*(Vâng ạ! Dụng cụ với vật liệu, em sắp xếp hết ạ.)* |
| Kondo | トゥックくん、ワイヤーの<ruby>点検<rt>てんけん</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Thức, kiểm tra cáp luôn nhé.)* |
| Thức | はい、<ruby>傷<rt>きず</rt></ruby>んだものは<ruby>分<rt>わ</rt></ruby>けて<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, cái hỏng em để riêng rồi báo cáo ạ.)* |
| Saito | さすが<ruby>一年<rt>いちねん</rt></ruby><ruby>経<rt>た</rt></ruby>つと<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Quả nhiên qua một năm là khác hẳn nhỉ.)* |
| Thức | ありがとうございます。<br>*(Cảm ơn anh ạ.)* |

---

## Tình huống 13 — Cổng công trường · 16:30, chuẩn bị 終礼 cuối năm

| Vai | Lời thoại |
|---|---|
| Tanigawa | みんな<ruby>集<rt>あつ</rt></ruby>まれ。<ruby>今年度<rt>こんねんど</rt></ruby><ruby>最後<rt>さいご</rt></ruby>の<ruby>終礼<rt>しゅうれい</rt></ruby>や。<br>*(Tập trung lại. Buổi kết ca cuối cùng năm này.)* |
| Thức | (đứng vào hàng) はい！<br>*(Vâng ạ!)* |
| Tanigawa | <ruby>今年度<rt>こんねんど</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby><ruby>無災害<rt>むさいがい</rt></ruby>で<ruby>終<rt>お</rt></ruby>われた。みんなのおかげや。<br>*(Năm nay, kết thúc không tai nạn không sự cố. Nhờ mọi người.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả ạ.)* |
| Tanigawa | <ruby>特<rt>とく</rt></ruby>に<ruby>新人<rt>しんじん</rt></ruby>のトゥック、よう<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Đặc biệt người mới Thức, cố gắng tốt.)* |
| Thức | ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Cảm ơn sếp ạ. Nhờ mọi người ạ.)* |

---

## Tình huống 14 — Cổng công trường · 16:40, phát biểu cảm tưởng năm 1

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>一年<rt>いちねん</rt></ruby>の<ruby>感想<rt>かんそう</rt></ruby>を<ruby>一言<rt>ひとこと</rt></ruby>どうぞ。<br>*(Thức, cảm tưởng một năm, nói một lời nào.)* |
| Thức | みなさん、<ruby>一年間<rt>いちねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Mọi người, suốt một năm, em thực sự được mọi người giúp đỡ.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からない<ruby>私<rt>わたし</rt></ruby>に、みなさんが<ruby>優<rt>やさ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Em không biết gì, mọi người đã chỉ dạy tận tình.)* |
| Thức | <ruby>二年目<rt>にねんめ</rt></ruby>は<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>って、もっと<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちたいです。<br>*(Năm 2 em sẽ lấy chứng chỉ tamakake, muốn giúp ích nhiều hơn.)* |
| Thức | これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ giờ vẫn mong mọi người chỉ bảo ạ.)* |
| Tổ thợ | (vỗ tay) よう<ruby>言<rt>い</rt></ruby>うた！<br>*(Nói hay lắm!)* |

---

## Tình huống 15 — Cổng công trường · 16:50, 親方 trao lời nhắn năm 2

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>二年目<rt>にねんめ</rt></ruby>は<ruby>一年目<rt>いちねんめ</rt></ruby>より<ruby>厳<rt>きび</rt></ruby>しなるで。<br>*(Thức, năm 2 sẽ khắt khe hơn năm 1 đấy.)* |
| Thức | はい、<ruby>覚悟<rt>かくご</rt></ruby>しています。<br>*(Vâng, em đã chuẩn bị tinh thần ạ.)* |
| Tanigawa | <ruby>仕事<rt>しごと</rt></ruby><ruby>任<rt>まか</rt></ruby>せる<ruby>分<rt>ぶん</rt></ruby>、<ruby>責任<rt>せきにん</rt></ruby>も<ruby>増<rt>ふ</rt></ruby>える。<br>*(Giao việc nhiều thì trách nhiệm cũng tăng.)* |
| Thức | はい、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ làm có trách nhiệm ạ.)* |
| Tanigawa | でもな、<ruby>無理<rt>むり</rt></ruby>はすんな。<ruby>命<rt>いのち</rt></ruby><ruby>一番<rt>いちばん</rt></ruby>や。<br>*(Nhưng đừng cố quá. Mạng sống là trên hết.)* |
| Thức | はい、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Vâng, em sẽ làm việc lấy an toàn làm đầu ạ.)* |

---

## Tình huống 16 — Cổng công trường · 17:00, 終礼 chính thức cuối năm

| Vai | Lời thoại |
|---|---|
| Saito | では、<ruby>今年度<rt>こんねんど</rt></ruby><ruby>最後<rt>さいご</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>です。<ruby>一年間<rt>いちねんかん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Vậy, lời chào cuối cùng năm nay. Một năm, mọi người vất vả rồi!)* |
| Tổ thợ | お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Vất vả rồi ạ!)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした！ありがとうございました！<br>*(Vất vả rồi ạ! Cảm ơn mọi người ạ!)* |
| Saito | <ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>無事故<rt>むじこ</rt></ruby>で。ご<ruby>安全<rt>あんぜん</rt></ruby>に！<br>*(Năm sau cũng không tai nạn. Chúc an toàn!)* |
| Tổ thợ | ご<ruby>安全<rt>あんぜん</rt></ruby>に！<br>*(Chúc an toàn!)* |
| Thức | ご<ruby>安全<rt>あんぜん</rt></ruby>に！<br>*(Chúc an toàn!)* |

---

## Tình huống 17 — Cổng công trường · 17:10, chào tạm biệt nghỉ lễ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥックくん、<ruby>休<rt>やす</rt></ruby>みはゆっくりせえよ。<br>*(Thức, nghỉ thì nghỉ cho thoải mái nhé.)* |
| Thức | はい、ありがとうございます。<ruby>近藤<rt>こんどう</rt></ruby>さんも<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Vâng, cảm ơn anh ạ. Anh Kondo cũng nghỉ ngơi nhé ạ.)* |
| Kondo | おう。<ruby>体<rt>からだ</rt></ruby><ruby>休<rt>やす</rt></ruby>めて、<ruby>二年目<rt>にねんめ</rt></ruby>に<ruby>備<rt>そな</rt></ruby>えとき。<br>*(Ờ. Nghỉ cho khỏe, chuẩn bị cho năm 2.)* |
| Thức | はい、<ruby>勉強<rt>べんきょう</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>しします。<br>*(Vâng, em cũng học một chút ạ.)* |
| Kondo | <ruby>真面目<rt>まじめ</rt></ruby>やなあ。ほどほどにな。<br>*(Chăm chỉ thật. Vừa phải thôi nhé.)* |
| Thức | はい(cười)。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng (cười). Em xin phép về trước ạ.)* |

---

## Tình huống 18 — Ký túc · 19:00, tâm sự cuối năm với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Anh Long | Xong năm 1 rồi đấy Thức. Cảm giác sao? |
| Thức | Em thấy mình lớn hẳn anh. Hồi đầu sợ đủ thứ, giờ tự lắp giàn giáo được, 親方 còn khen. |
| Anh Long | Anh mừng cho mày. Năm 2 áp lực hơn nhưng mày làm được. Quan trọng giữ sức khỏe, giữ an toàn. |
| Thức | Vâng anh. Em quyết tâm thi 玉掛け, rồi cố lấy thêm chứng chỉ nữa, lương lên giúp được bố mẹ ở nhà. |
| Anh Long | Đúng hướng đấy. Cứ chăm chỉ thật thà như năm nay là được. Mai mình về quê nghỉ Tết nhé. |
| Thức | Vâng, em cảm ơn anh đã đỡ em cả năm. Năm mới vui vẻ anh ạ. |

---

## Tình huống 19 — Công trường ngày làm lại · 8:00, chào năm mới

| Vai | Lời thoại |
|---|---|
| Saito | みなさん、あけましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, chúc mừng năm mới. Năm nay cũng mong mọi người ạ.)* |
| Thức | あけましておめでとうございます！<ruby>本年<rt>ほんねん</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chúc mừng năm mới ạ! Năm nay cũng mong mọi người chỉ bảo ạ.)* |
| Tanigawa | トゥック、<ruby>休<rt>やす</rt></ruby>みボケしてへんやろな。<br>*(Thức, không có uể oải sau nghỉ chứ.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です！しっかり<ruby>休<rt>やす</rt></ruby>んで<ruby>元気<rt>げんき</rt></ruby>です。<br>*(Không sao ạ! Em nghỉ đủ, khỏe ạ.)* |
| Tanigawa | よし。<ruby>二年目<rt>にねんめ</rt></ruby>、<ruby>気<rt>き</rt></ruby><ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めていこ。<br>*(Được. Năm 2, tập trung lên nào.)* |
| Thức | はい！<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng ạ! Em sẽ cố gắng ạ!)* |

---

## Tình huống 20 — 朝礼 · 8:05, KY đầu năm & quyết tâm năm 2

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今年<rt>ことし</rt></ruby><ruby>最初<rt>さいしょ</rt></ruby>のKYです。<ruby>今年<rt>ことし</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>、トゥックくん。<br>*(KY đầu tiên năm nay. Mục tiêu năm nay, Thức.)* |
| Thức | はい！<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>玉掛<rt>たまか</rt></ruby>けの<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>ることです！<br>*(Vâng ạ! Là không tai nạn và lấy chứng chỉ tamakake ạ!)* |
| Kondo | ええ<ruby>目標<rt>もくひょう</rt></ruby>や。<ruby>応援<rt>おうえん</rt></ruby>するで。<br>*(Mục tiêu tốt đấy. Anh ủng hộ.)* |
| Tanigawa | <ruby>言<rt>い</rt></ruby>うたからにはやれよ。<br>*(Đã nói thì phải làm đấy.)* |
| Thức | はい！<ruby>必<rt>かなら</rt></ruby>ずやり<ruby>遂<rt>と</rt></ruby>げます！<br>*(Vâng ạ! Em nhất định làm bằng được ạ!)* |
| Saito | では<ruby>今年<rt>ことし</rt></ruby>も<ruby>一年<rt>いちねん</rt></ruby>、ご<ruby>安全<rt>あんぜん</rt></ruby>に！<br>*(Vậy năm nay cả năm, chúc an toàn!)* |

---

## Đọng lại

Kết thúc năm 1, Thức từ một thanh niên N4 không biết gì đã thành thợ phụ tobi vững: tự lắp được một khu giàn giáo, hô 合図 cẩu, đóng くさび nghe tiếng, và bắt đầu dạy lại đàn em. Em học mẫu câu trang trọng cuối năm: 面談 đánh giá (nói điểm mạnh/yếu/mục tiêu), cảm ơn 「一年間、本当にお世話になりました」, phát biểu cảm tưởng, 終礼 cuối năm, và chào năm mới 「あけましておめでとうございます。本年もよろしくお願いいたします」. Quyết tâm năm 2: thi chứng chỉ 玉掛け, tiến tới 一人前, làm việc 安全第一. Câu chuyện tiếp nối ở Sách 34 (năm 2).

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 年度末 | ねんどまつ | Cuối năm tài chính |
> | 面談 | めんだん | Phỏng vấn đánh giá |
> | 振り返る | ふりかえる | Nhìn lại, hồi tưởng |
> | 評価 | ひょうか | Đánh giá |
> | 課題 | かだい | Vấn đề cần khắc phục |
> | 目標 | もくひょう | Mục tiêu |
> | 成長 | せいちょう | Trưởng thành |
> | 一人前 | いちにんまえ | Thợ cứng, đủ trình |
> | 謙虚 | けんきょ | Khiêm tốn |
> | 覚悟 | かくご | Quyết tâm, sẵn sàng tinh thần |
> | 責任 | せきにん | Trách nhiệm |
> | 無事故無災害 | むじこむさいがい | Không tai nạn không sự cố |
> | お世話になりました | おせわになりました | Cảm ơn đã giúp đỡ |
> | 安全第一 | あんぜんだいいち | An toàn là trên hết |
> | やり遂げる | やりとげる | Hoàn thành bằng được |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
