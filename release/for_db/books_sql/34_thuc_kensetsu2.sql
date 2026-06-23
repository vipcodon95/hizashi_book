-- Hizashi LITE book SQL — Thực Kensetsu 2
-- curriculum_id = 800000034  (book_seq=34)
-- nguồn: books/34_thuc_kensetsu2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000034, 'N3', 'markdown_book', 'Xây dựng', 'Thực Kensetsu 2', 'Bộ sách Hizashi — Thực Kensetsu 2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000001, 800000034, NULL, 'markdown_book', 'T1. Bắt đầu được giao việc độc lập (独立作業のはじまり)', '# Sách thực tập sinh xây dựng · T1. Bắt đầu được giao việc độc lập (独立作業のはじまり)

> **Mục tiêu nhân vật:** Thức (22 tuổi, TTS xây dựng nghề とび/giàn giáo) bước sang năm 2 (4/2027). Từ 手元 (phụ việc) bắt đầu được 親方 giao việc nhỏ làm độc lập. Học mẫu câu nhận việc, xác nhận yêu cầu, báo cáo tiến độ và báo cáo khi xong (報連相 thành thạo hơn năm 1).

---

## Bối cảnh

Tháng 4 năm 2027. Thức vào năm thứ hai thực tập kỹ năng (技能実習生) ngành xây dựng, tổ giàn giáo (とび) của 谷川親方 tại một công trường nhà chung cư ở tỉnh Aichi. Trình độ tiếng Nhật tiến tới N3. Sau một năm làm 手元 (đưa đồ, dọn dẹp), năm nay Thức bắt đầu được giao những phần việc nhỏ tự làm. Chương này tập trung mẫu câu nhận việc rõ ràng, xác nhận chỉ thị, báo cáo tiến độ và kết thúc công việc.

---

## Tình huống 1 — Trước văn phòng công trường · 7:30, 親方 thông báo việc năm 2

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今年<rt>ことし</rt></ruby>から<ruby>二年目<rt>にねんめ</rt></ruby>やな。そろそろ<ruby>一人<rt>ひとり</rt></ruby>で<ruby>仕事<rt>しごと</rt></ruby>させるで。<br>*(Thức, từ năm nay là năm thứ hai rồi nhỉ. Sắp tới sẽ cho cậu làm việc một mình đấy.)* |
| Thức | はい、ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn ạ. Em sẽ cố gắng.)* |
| Tanigawa | まずは<ruby>小<rt>ちい</rt></ruby>さい<ruby>作業<rt>さぎょう</rt></ruby>からや。できることから<ruby>確実<rt>かくじつ</rt></ruby>にやれ。<br>*(Bắt đầu từ việc nhỏ trước. Việc nào làm được thì làm cho chắc chắn.)* |
| Thức | はい。<ruby>分<rt>わ</rt></ruby>からないことは、すぐ<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Vâng. Việc gì không hiểu, em hỏi ngay được không ạ?)* |
| Tanigawa | <ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>や。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>して<ruby>事故<rt>じこ</rt></ruby>るのが<ruby>一番<rt>いちばん</rt></ruby>あかん。<br>*(Đương nhiên. Tự ý phán đoán rồi gây tai nạn mới là tệ nhất.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rõ ạ. Mong anh chỉ bảo ạ.)* |

---

## Tình huống 2 — Bãi tập kết vật tư · 7:45, nhận việc đầu tiên độc lập

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。この<ruby>足場板<rt>あしばいた</rt></ruby>を<ruby>種類<rt>しゅるい</rt></ruby>ごとに<ruby>分<rt>わ</rt></ruby>けてください。<br>*(Thức, việc đầu tiên hôm nay đây. Em phân loại đống ván giàn giáo này theo từng loại nhé.)* |
| Thức | はい。<ruby>長<rt>なが</rt></ruby>さで<ruby>分<rt>わ</rt></ruby>ければいいですか?<br>*(Vâng. Em phân theo chiều dài được không ạ?)* |
| Saito | そうです。<ruby>四<rt>よん</rt></ruby>メートルと<ruby>三<rt>さん</rt></ruby>メートルと<ruby>二<rt>に</rt></ruby>メートルに<ruby>分<rt>わ</rt></ruby>けてください。<br>*(Đúng. Chia thành loại 4 mét, 3 mét và 2 mét.)* |
| Thức | <ruby>割<rt>わ</rt></ruby>れている<ruby>板<rt>いた</rt></ruby>があったら、どうしますか?<br>*(Nếu có tấm ván bị nứt thì em làm sao ạ?)* |
| Saito | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>傷<rt>いた</rt></ruby>んだ<ruby>板<rt>いた</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>にして、<ruby>赤<rt>あか</rt></ruby>いテープを<ruby>貼<rt>は</rt></ruby>っておいてください。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>使<rt>つか</rt></ruby>いません。<br>*(Câu hỏi hay. Ván hỏng để riêng, dán băng đỏ lên. Tuyệt đối không dùng.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>傷<rt>いた</rt></ruby>んだ<ruby>板<rt>いた</rt></ruby>は<ruby>赤<rt>あか</rt></ruby>テープですね。やります。<br>*(Vâng, em hiểu rồi. Ván hỏng dán băng đỏ ạ. Em làm ngay.)* |

---

## Tình huống 3 — Bãi tập kết · 9:00, báo cáo giữa chừng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>中間<rt>ちゅうかん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>してもいいですか?<br>*(Anh Saito, em báo cáo giữa chừng được không ạ?)* |
| Saito | はい、どうぞ。<br>*(Ừ, em nói đi.)* |
| Thức | <ruby>四<rt>よん</rt></ruby>メートルと<ruby>三<rt>さん</rt></ruby>メートルは<ruby>終<rt>お</rt></ruby>わりました。<ruby>傷<rt>いた</rt></ruby>んだ<ruby>板<rt>いた</rt></ruby>が<ruby>五枚<rt>ごまい</rt></ruby>ありました。<br>*(Loại 4 mét và 3 mét đã xong. Có 5 tấm ván bị hỏng ạ.)* |
| Saito | <ruby>五枚<rt>ごまい</rt></ruby>か。<ruby>赤<rt>あか</rt></ruby>テープは<ruby>貼<rt>は</rt></ruby>りましたか?<br>*(5 tấm à. Đã dán băng đỏ chưa?)* |
| Thức | はい、<ruby>貼<rt>は</rt></ruby>って<ruby>別<rt>べつ</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>置<rt>お</rt></ruby>きました。<ruby>残<rt>のこ</rt></ruby>りは<ruby>二<rt>に</rt></ruby>メートルだけです。<br>*(Vâng, em dán rồi để chỗ khác. Còn lại chỉ loại 2 mét thôi ạ.)* |
| Saito | よし、いいペースや。そのまま<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Tốt, nhịp độ ổn đấy. Cứ tiếp tục như thế.)* |

---

## Tình huống 4 — Bãi tập kết · 9:40, báo cáo hoàn thành

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>足場板<rt>あしばいた</rt></ruby>の<ruby>仕分<rt>しわ</rt></ruby>け、<ruby>終<rt>お</rt></ruby>わりました。<br>*(Anh Saito, việc phân loại ván giàn giáo xong rồi ạ.)* |
| Saito | はやいな。<ruby>確認<rt>かくにん</rt></ruby>するわ。<br>*(Nhanh nhỉ. Để tôi kiểm tra.)* |
| Thức | <ruby>傷<rt>いた</rt></ruby>んだ<ruby>板<rt>いた</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby>で<ruby>八枚<rt>はちまい</rt></ruby>でした。あそこにまとめてあります。<br>*(Ván hỏng tổng cộng 8 tấm. Em gom hết ở đằng kia.)* |
| Saito | きれいに<ruby>分<rt>わ</rt></ruby>けてあるな。<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Phân loại gọn gàng đấy. Đạt yêu cầu.)* |
| Thức | ありがとうございます。<ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をしましょうか?<br>*(Em cảm ơn ạ. Việc tiếp theo em làm gì ạ?)* |
| Saito | じゃあ、<ruby>近藤<rt>こんどう</rt></ruby>さんの<ruby>手伝<rt>てつだ</rt></ruby>いに<ruby>行<rt>い</rt></ruby>ってください。<br>*(Vậy thì sang giúp anh Kondo nhé.)* |

---

## Tình huống 5 — Chân giàn giáo tầng 1 · 10:00, được giao siết một đoạn nhỏ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、ここのクランプ、<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしてくれるか。<br>*(Thức, mấy cái khóa kẹp chỗ này, siết chặt lại thêm giúp anh nhé.)* |
| Thức | はい。どのくらい<ruby>締<rt>し</rt></ruby>めればいいですか?<br>*(Vâng. Em siết đến mức nào ạ?)* |
| Kondo | ラチェットでしっかり<ruby>締<rt>し</rt></ruby>めて、<ruby>動<rt>うご</rt></ruby>かなければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<br>*(Dùng cờ lê tự động siết chặt, không lung lay là được.)* |
| Thức | <ruby>締<rt>し</rt></ruby>めすぎてもいけませんか?<br>*(Siết quá chặt cũng không được ạ?)* |
| Kondo | おお、よう<ruby>知<rt>し</rt></ruby>ってるな。<ruby>締<rt>し</rt></ruby>めすぎるとボルトが<ruby>傷<rt>いた</rt></ruby>む。「<ruby>効<rt>き</rt></ruby>いた」と<ruby>感<rt>かん</rt></ruby>じたら<ruby>止<rt>と</rt></ruby>めるんや。<br>*(Ồ, biết đấy nhỉ. Siết quá thì hỏng bu lông. Cảm thấy "ăn" rồi thì dừng.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確認<rt>かくにん</rt></ruby>しながらやります。<br>*(Vâng, em hiểu rồi. Em vừa làm vừa kiểm tra từng cái một.)* |

---

## Tình huống 6 — Chân giàn giáo · 10:30, hỏi khi gặp cái khóa bất thường

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ちょっと<ruby>見<rt>み</rt></ruby>てもらえますか。<br>*(Anh Kondo, anh xem giúp em một chút được không ạ?)* |
| Kondo | どうした?<br>*(Sao thế?)* |
| Thức | このクランプ、<ruby>締<rt>し</rt></ruby>めても<ruby>少<rt>すこ</rt></ruby>し<ruby>動<rt>うご</rt></ruby>きます。<ruby>変<rt>へん</rt></ruby>です。<br>*(Cái khóa này, siết rồi mà vẫn hơi lung lay. Lạ quá ạ.)* |
| Kondo | どれどれ...ああ、これは<ruby>金具<rt>かなぐ</rt></ruby>が<ruby>傷<rt>いた</rt></ruby>んでるな。<ruby>交換<rt>こうかん</rt></ruby>や。<br>*(Đâu xem nào... À, cái này khóa bị hỏng rồi. Phải thay.)* |
| Thức | <ruby>勝手<rt>かって</rt></ruby>に<ruby>使<rt>つか</rt></ruby>わなくてよかったです。<ruby>報告<rt>ほうこく</rt></ruby>してよかったですか?<br>*(May là em không tự ý dùng. Em báo cáo là đúng phải không ạ?)* |
| Kondo | <ruby>大正解<rt>だいせいかい</rt></ruby>や。<ruby>気<rt>き</rt></ruby>づいたらすぐ<ruby>言<rt>い</rt></ruby>う、それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>やで。<br>*(Quá đúng. Phát hiện ra thì nói ngay, đó là điều quan trọng nhất đấy.)* |

---

## Tình huống 7 — Khu vật tư · 11:00, nhận chỉ thị nhiều bước

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>聞<rt>き</rt></ruby>けよ。まず<ruby>単管<rt>たんかん</rt></ruby>を<ruby>二十本<rt>にじっぽん</rt></ruby>、それから<ruby>クランプ<rt>くらんぷ</rt></ruby>を<ruby>三十個<rt>さんじっこ</rt></ruby>、<ruby>三階<rt>さんがい</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げてくれ。<br>*(Thức, nghe đây. Trước hết 20 cây ống thép, rồi 30 cái khóa kẹp, chuyển lên tầng 3 nhé.)* |
| Thức | はい、<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>単管<rt>たんかん</rt></ruby><ruby>二十本<rt>にじっぽん</rt></ruby>と<ruby>クランプ<rt>くらんぷ</rt></ruby><ruby>三十個<rt>さんじっこ</rt></ruby>を<ruby>三階<rt>さんがい</rt></ruby>ですね。<br>*(Vâng, cho em xác nhận lại. 20 cây ống thép và 30 cái khóa kẹp lên tầng 3, đúng không ạ?)* |
| Tanigawa | そうや。<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>単管<rt>たんかん</rt></ruby>が<ruby>先<rt>さき</rt></ruby>や。<br>*(Đúng. Thứ tự là ống thép trước.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>で<ruby>運<rt>はこ</rt></ruby>べますか?<ruby>重<rt>おも</rt></ruby>そうです。<br>*(Một mình em vác được không ạ? Nặng quá ạ.)* |
| Tanigawa | <ruby>無理<rt>むり</rt></ruby>するな。<ruby>重<rt>おも</rt></ruby>いものはフンを<ruby>呼<rt>よ</rt></ruby>んで<ruby>二人<rt>ふたり</rt></ruby>でやれ。<br>*(Đừng cố quá. Đồ nặng thì gọi Hùng làm hai người.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。フンくんと<ruby>一緒<rt>いっしょ</rt></ruby>にやります。<br>*(Vâng, em hiểu rồi. Em làm cùng Hùng ạ.)* |

---

## Tình huống 8 — Tầng 3 · 11:30, phối hợp với Hùng vận chuyển

| Vai | Lời thoại |
|---|---|
| Thức | フン、<ruby>単管<rt>たんかん</rt></ruby>を<ruby>三階<rt>さんがい</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げる。<ruby>手伝<rt>てつだ</rt></ruby>ってくれる?<br>*(Hùng, chuyển ống thép lên tầng 3. Giúp tôi nhé?)* |
| Hùng | いいよ。<ruby>何本<rt>なんぼん</rt></ruby>?<br>*(Được. Mấy cây?)* |
| Thức | <ruby>二十本<rt>にじっぽん</rt></ruby>。<ruby>一回<rt>いっかい</rt></ruby>に<ruby>五本<rt>ごほん</rt></ruby>ずつにしよう。<ruby>無理<rt>むり</rt></ruby>したら<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(20 cây. Mỗi lần khiêng 5 cây thôi. Cố quá thì nguy hiểm.)* |
| Hùng | そうだね。<ruby>声<rt>こえ</rt></ruby>かけながらやろう。<br>*(Đúng đó. Vừa làm vừa lên tiếng nhé.)* |
| Thức | じゃあ<ruby>行<rt>い</rt></ruby>くよ。「せーの」で<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げよう。<br>*(Vậy bắt đầu nhé. Hô "một hai ba" rồi cùng nhấc lên.)* |
| Hùng | せーの!よし、<ruby>上<rt>あ</rt></ruby>がった。<br>*(Một hai ba! Được, lên rồi.)* |

---

## Tình huống 9 — Tầng 3 · 12:00, báo cáo xong việc nhiều bước

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>単管<rt>たんかん</rt></ruby><ruby>二十本<rt>にじっぽん</rt></ruby>と<ruby>クランプ<rt>くらんぷ</rt></ruby><ruby>三十個<rt>さんじっこ</rt></ruby>、<ruby>三階<rt>さんがい</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げ<ruby>終<rt>お</rt></ruby>わりました。<br>*(Anh Tanigawa, 20 cây ống thép và 30 cái khóa kẹp đã chuyển xong lên tầng 3 ạ.)* |
| Tanigawa | おう、はやいな。どこに<ruby>置<rt>お</rt></ruby>いた?<br>*(Ồ, nhanh nhỉ. Đặt ở đâu?)* |
| Thức | <ruby>北側<rt>きたがわ</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>のそばに、<ruby>邪魔<rt>じゃま</rt></ruby>にならないように<ruby>置<rt>お</rt></ruby>きました。<br>*(Cạnh tường phía bắc, em đặt sao cho không vướng lối đi ạ.)* |
| Tanigawa | よう<ruby>考<rt>かんが</rt></ruby>えたな。<ruby>通路<rt>つうろ</rt></ruby>をふさいだら<ruby>危<rt>あぶ</rt></ruby>ないからな。<br>*(Biết nghĩ đấy. Chắn lối đi là nguy hiểm mà.)* |
| Thức | はい。<ruby>養生<rt>ようじょう</rt></ruby>シートもかけておきました。<br>*(Vâng. Em cũng phủ tấm bạt bảo vệ lên rồi ạ.)* |
| Tanigawa | <ruby>言<rt>い</rt></ruby>われる<ruby>前<rt>まえ</rt></ruby>にやったんか。<ruby>成長<rt>せいちょう</rt></ruby>したな。<br>*(Chưa bảo đã làm à. Tiến bộ rồi đấy.)* |

---

## Tình huống 10 — Khu nghỉ · 12:15, anh Long hỏi thăm chuyện năm 2

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>二年目<rt>にねんめ</rt></ruby>どう?もう<ruby>一人<rt>ひとり</rt></ruby>で<ruby>任<rt>まか</rt></ruby>される?<br>*(Thức, năm hai thế nào? Đã được giao việc một mình chưa?)* |
| Thức | はい、<ruby>少<rt>すこ</rt></ruby>しずつです。まだ<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Vâng, từng chút một ạ. Vẫn còn hồi hộp.)* |
| Long | <ruby>最初<rt>さいしょ</rt></ruby>はみんなそうや。<ruby>分<rt>わ</rt></ruby>からんかったら<ruby>俺<rt>おれ</rt></ruby>にも<ruby>聞<rt>き</rt></ruby>けよ。<br>*(Lúc đầu ai cũng vậy. Không hiểu thì hỏi cả anh nữa nhé.)* |
| Thức | ありがとうございます。ロンさんがいて<ruby>心強<rt>こころづよ</rt></ruby>いです。<br>*(Em cảm ơn anh. Có anh Long em yên tâm hơn nhiều.)* |
| Long | <ruby>困<rt>こま</rt></ruby>ったら<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>むな。それだけは<ruby>約束<rt>やくそく</rt></ruby>な。<br>*(Có chuyện gì đừng tự ôm một mình. Hứa với anh điều đó thôi nhé.)* |
| Thức | はい、<ruby>約束<rt>やくそく</rt></ruby>します。<br>*(Vâng, em hứa ạ.)* |

---

## Tình huống 11 — Công trường · 13:00, được giao kiểm tra đai an toàn

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>午後<rt>ごご</rt></ruby>はみんなの<ruby>安全帯<rt>あんぜんたい</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>ってください。<br>*(Thức, buổi chiều giúp tôi kiểm tra dây đai an toàn của mọi người nhé.)* |
| Thức | はい。<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>ればいいですか?<br>*(Vâng. Em kiểm tra những gì ạ?)* |
| Saito | フックの<ruby>変形<rt>へんけい</rt></ruby>、ベルトのほつれ、それから<ruby>使用期限<rt>しようきげん</rt></ruby>です。<br>*(Móc có biến dạng không, dây có sờn không, và hạn sử dụng.)* |
| Thức | <ruby>使用期限<rt>しようきげん</rt></ruby>はどこに<ruby>書<rt>か</rt></ruby>いてありますか?<br>*(Hạn sử dụng ghi ở đâu ạ?)* |
| Saito | ベルトのラベルに<ruby>製造年<rt>せいぞうねん</rt></ruby>が<ruby>書<rt>か</rt></ruby>いてあります。<ruby>古<rt>ふる</rt></ruby>いものは<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Trên nhãn dây có ghi năm sản xuất. Cái nào cũ nhất định phải báo cáo.)* |
| Thức | はい、フルハーネスも<ruby>同<rt>おな</rt></ruby>じように<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, dây toàn thân cũng kiểm tra giống vậy ạ.)* |

---

## Tình huống 12 — Khu để dụng cụ · 13:40, phát hiện đai hỏng và báo cáo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、ひとつ<ruby>気<rt>き</rt></ruby>になる<ruby>安全帯<rt>あんぜんたい</rt></ruby>があります。<br>*(Anh Saito, có một dây đai an toàn em thấy có vấn đề ạ.)* |
| Saito | どれや?<br>*(Cái nào?)* |
| Thức | このベルト、<ruby>端<rt>はし</rt></ruby>がほつれています。フックも<ruby>少<rt>すこ</rt></ruby>し<ruby>曲<rt>ま</rt></ruby>がっています。<br>*(Cái dây này, đầu bị sờn ạ. Móc cũng hơi cong ạ.)* |
| Saito | ほんまや、これはあかん。すぐ<ruby>使用<rt>しよう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にする。<br>*(Đúng thật, cái này không được. Cấm sử dụng ngay.)* |
| Thức | <ruby>赤<rt>あか</rt></ruby>い<ruby>札<rt>ふだ</rt></ruby>をつけておきますか?<br>*(Em treo thẻ đỏ lên nhé?)* |
| Saito | そうしてくれ。よう<ruby>見<rt>み</rt></ruby>つけた。<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>いだぞ。<br>*(Làm vậy đi. Tìm ra giỏi đấy. Ngăn được tai nạn rồi.)* |

---

## Tình huống 13 — Chân giàn giáo · 14:00, được giao tự lắp chân đế

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、この<ruby>列<rt>れつ</rt></ruby>のジャッキベース、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>据<rt>す</rt></ruby>えてみるか?<br>*(Thức, hàng chân đế kích này, thử tự lắp một mình xem?)* |
| Thức | やってみます。<ruby>水平<rt>すいへい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながらでいいですか?<br>*(Em thử ạ. Em vừa làm vừa canh cân bằng được không ạ?)* |
| Kondo | そうや。<ruby>水平器<rt>すいへいき</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>しろ。<ruby>傾<rt>かたむ</rt></ruby>いたまま<ruby>組<rt>く</rt></ruby>むと<ruby>全部<rt>ぜんぶ</rt></ruby>ゆがむ。<br>*(Đúng. Nhất định dùng thước thủy kiểm tra. Lệch mà lắp lên là cả giàn vênh hết.)* |
| Thức | <ruby>地面<rt>じめん</rt></ruby>が<ruby>柔<rt>やわ</rt></ruby>らかいところは、どうすればいいですか?<br>*(Chỗ nền đất mềm thì em làm sao ạ?)* |
| Kondo | <ruby>敷板<rt>しきいた</rt></ruby>を<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>い</rt></ruby>れて<ruby>沈<rt>しず</rt></ruby>まないようにするんや。<br>*(Lót ván đệm xuống dưới cho nó không bị lún.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>水平<rt>すいへい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em hiểu rồi. Em kiểm tra cân bằng từng cái một.)* |

---

## Tình huống 14 — Chân giàn giáo · 14:40, Kondo kiểm tra việc Thức tự làm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ジャッキベース<ruby>据<rt>す</rt></ruby>え<ruby>終<rt>お</rt></ruby>わりました。<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Kondo, em lắp xong chân đế kích rồi ạ. Anh xem giúp em.)* |
| Kondo | どれ...<ruby>水平<rt>すいへい</rt></ruby>はバッチリやな。<br>*(Đâu... cân bằng chuẩn lắm.)* |
| Thức | <ruby>一列<rt>いちれつ</rt></ruby>だけ、<ruby>地面<rt>じめん</rt></ruby>が<ruby>柔<rt>やわ</rt></ruby>らかかったので<ruby>敷板<rt>しきいた</rt></ruby>を<ruby>入<rt>い</rt></ruby>れました。<br>*(Riêng một hàng, vì nền đất mềm nên em đã lót ván đệm ạ.)* |
| Kondo | おお、ちゃんと<ruby>判断<rt>はんだん</rt></ruby>できたな。<ruby>去年<rt>きょねん</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>うわ。<br>*(Ồ, biết phán đoán đúng đấy. Khác năm ngoái rồi nhé.)* |
| Thức | ありがとうございます。まだまだ<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Em cảm ơn ạ. Em sẽ còn học nhiều ạ.)* |
| Kondo | その<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大事<rt>だいじ</rt></ruby>や。ええ<ruby>調子<rt>ちょうし</rt></ruby>やで。<br>*(Tinh thần đó quan trọng. Đang đà tốt đấy.)* |

---

## Tình huống 15 — Công trường · 15:00, nghỉ giải lao, Kondo dạy mẹo

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>仕事<rt>しごと</rt></ruby>を<ruby>任<rt>まか</rt></ruby>されたとき、<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なことは<ruby>何<rt>なに</rt></ruby>か<ruby>分<rt>わ</rt></ruby>かるか?<br>*(Thức, khi được giao việc, điều quan trọng nhất là gì, biết không?)* |
| Thức | えっと...<ruby>速<rt>はや</rt></ruby>くやることですか?<br>*(Ờ... làm nhanh ạ?)* |
| Kondo | <ruby>違<rt>ちが</rt></ruby>う。<ruby>分<rt>わ</rt></ruby>からんことを<ruby>分<rt>わ</rt></ruby>からんと<ruby>言<rt>い</rt></ruby>うことや。<br>*(Không phải. Là nói không hiểu khi không hiểu.)* |
| Thức | はい、<ruby>無理<rt>むり</rt></ruby>して<ruby>失敗<rt>しっぱい</rt></ruby>するより、ですね。<br>*(Vâng, hơn là cố làm rồi thất bại, đúng không ạ?)* |
| Kondo | そうや。<ruby>とび<rt>とび</rt></ruby>は<ruby>命<rt>いのち</rt></ruby>がかかってる<ruby>仕事<rt>しごと</rt></ruby>や。<ruby>分<rt>わ</rt></ruby>かったふりが<ruby>一番<rt>いちばん</rt></ruby><ruby>怖<rt>こわ</rt></ruby>い。<br>*(Đúng. Tobi là nghề mạng treo lơ lửng. Giả vờ hiểu là đáng sợ nhất.)* |
| Thức | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em khắc cốt ghi tâm ạ.)* |

---

## Tình huống 16 — Tầng 2 · 15:30, được giao quét dọn sàn thao tác

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>二階<rt>にかい</rt></ruby>の<ruby>作業床<rt>さぎょうゆか</rt></ruby>を<ruby>清掃<rt>せいそう</rt></ruby>してください。<br>*(Thức, vệ sinh sàn thao tác tầng 2 nhé.)* |
| Thức | はい。<ruby>道具<rt>どうぐ</rt></ruby>はそのままにしておいていいですか?<br>*(Vâng. Dụng cụ cứ để nguyên đó được không ạ?)* |
| Saito | いや、<ruby>使<rt>つか</rt></ruby>っていない<ruby>道具<rt>どうぐ</rt></ruby>は<ruby>片付<rt>かたづ</rt></ruby>けてください。<ruby>足元<rt>あしもと</rt></ruby>に<ruby>物<rt>もの</rt></ruby>があると<ruby>転<rt>ころ</rt></ruby>びます。<br>*(Không, dụng cụ không dùng thì dọn đi. Có đồ dưới chân là vấp ngã.)* |
| Thức | <ruby>釘<rt>くぎ</rt></ruby>や<ruby>端材<rt>はざい</rt></ruby>も<ruby>拾<rt>ひろ</rt></ruby>いますか?<br>*(Đinh với gỗ vụn em cũng nhặt luôn ạ?)* |
| Saito | もちろんです。<ruby>整理<rt>せいり</rt></ruby><ruby>整頓<rt>せいとん</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Tất nhiên. Sắp xếp gọn gàng là cơ bản của an toàn.)* |
| Thức | はい、きれいにします。<br>*(Vâng, em sẽ dọn sạch ạ.)* |

---

## Tình huống 17 — Tầng 2 · 16:00, báo cáo và đề xuất thêm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>清掃<rt>せいそう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, vệ sinh xong rồi ạ. Em có một đề xuất ạ.)* |
| Saito | ほう、<ruby>言<rt>い</rt></ruby>ってみて。<br>*(Ồ, nói thử xem.)* |
| Thức | <ruby>端<rt>はし</rt></ruby>のところに<ruby>隙間<rt>すきま</rt></ruby>があります。<ruby>板<rt>いた</rt></ruby>を<ruby>一枚<rt>いちまい</rt></ruby><ruby>足<rt>た</rt></ruby>したほうがいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Ở chỗ mép có khe hở. Em nghĩ nên thêm một tấm ván ạ.)* |
| Saito | よう<ruby>気<rt>き</rt></ruby>づいたな。たしかに<ruby>危<rt>あぶ</rt></ruby>ない。<ruby>君<rt>きみ</rt></ruby>の<ruby>言<rt>い</rt></ruby>う<ruby>通<rt>とお</rt></ruby>りや。<br>*(Để ý giỏi đấy. Đúng là nguy hiểm. Đúng như em nói.)* |
| Thức | <ruby>足場板<rt>あしばいた</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきましょうか?<br>*(Em mang ván giàn giáo đến nhé?)* |
| Saito | <ruby>頼<rt>たの</rt></ruby>むわ。<ruby>気<rt>き</rt></ruby>づいて<ruby>言<rt>い</rt></ruby>ってくれて<ruby>助<rt>たす</rt></ruby>かる。<br>*(Nhờ em. Để ý mà nói ra giúp tôi đỡ lắm.)* |

---

## Tình huống 18 — Văn phòng công trường · 16:30, viết nhật ký công việc

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>作業<rt>さぎょう</rt></ruby><ruby>日報<rt>にっぽう</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>で<ruby>書<rt>か</rt></ruby>いてみてください。<br>*(Thức, từ hôm nay em tự viết nhật ký công việc thử nhé.)* |
| Thức | はい。<ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Vâng. Em viết những gì ạ?)* |
| Saito | やった<ruby>作業<rt>さぎょう</rt></ruby>、<ruby>時間<rt>じかん</rt></ruby>、それから<ruby>気<rt>き</rt></ruby>づいたことです。<br>*(Việc đã làm, thời gian, và những điều em để ý thấy.)* |
| Thức | <ruby>傷<rt>いた</rt></ruby>んだ<ruby>安全帯<rt>あんぜんたい</rt></ruby>のことも<ruby>書<rt>か</rt></ruby>きますか?<br>*(Chuyện dây đai an toàn bị hỏng em cũng viết ạ?)* |
| Saito | <ruby>必<rt>かなら</rt></ruby>ず<ruby>書<rt>か</rt></ruby>いてください。それが<ruby>記録<rt>きろく</rt></ruby>として<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Nhất định phải viết. Đó là ghi chép rất quan trọng.)* |
| Thức | はい、ていねいに<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em sẽ viết cẩn thận ạ.)* |

---

## Tình huống 19 — Văn phòng · 16:50, 親方 nhận xét ngày đầu giao việc

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>初<rt>はじ</rt></ruby>めて<ruby>一人<rt>ひとり</rt></ruby>で<ruby>仕事<rt>しごと</rt></ruby>して、どうやった?<br>*(Thức, lần đầu làm việc một mình, thấy thế nào?)* |
| Thức | <ruby>緊張<rt>きんちょう</rt></ruby>しましたが、できると<ruby>少<rt>すこ</rt></ruby>し<ruby>自信<rt>じしん</rt></ruby>がつきました。<br>*(Em hồi hộp, nhưng làm được nên có chút tự tin ạ.)* |
| Tanigawa | ええことや。でも<ruby>調子<rt>ちょうし</rt></ruby>に<ruby>乗<rt>の</rt></ruby>るなよ。<ruby>事故<rt>じこ</rt></ruby>は<ruby>慣<rt>な</rt></ruby>れたころに<ruby>起<rt>お</rt></ruby>きる。<br>*(Tốt đấy. Nhưng đừng tự mãn. Tai nạn xảy ra lúc quen tay nhất.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めます。<br>*(Vâng, em sẽ giữ tinh thần cảnh giác ạ.)* |
| Tanigawa | <ruby>報告<rt>ほうこく</rt></ruby>もちゃんとできてた。その<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>一年<rt>いちねん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>れ。<br>*(Báo cáo cũng làm tốt. Cứ đà đó mà cố gắng cả năm nhé.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |

---

## Tình huống 20 — Ký túc xá · 19:00, Thức tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, hôm nay là ngày đầu em được giao việc tự làm. Hồi hộp ghê. |
| Long | Anh biết mà. Năm hai khác năm một nhiều. Người ta bắt đầu tin mình rồi đó. |
| Thức | Em sợ nhất là làm sai mà không biết. Nghề giàn giáo nguy hiểm thật. |
| Long | Thì cứ nhớ một câu thôi: không chắc thì hỏi, đừng đoán. Anh năm đầu cũng vậy. |
| Thức | Dạ. Có anh em đỡ lo. Cảm ơn anh nhiều. |
| Long | Ừ, cố lên. Năm nay tiếng Nhật em lên là làm việc nhẹ hơn nhiều. Ngủ sớm đi. |

---

## Đọng lại

Ngày đầu năm 2, Thức chuyển từ vai phụ việc sang được giao những phần việc nhỏ tự làm độc lập. Em học cách xác nhận chỉ thị nhiều bước, báo cáo giữa chừng và khi hoàn thành, đồng thời chủ động phát hiện thiết bị hỏng và đề xuất cải thiện. 親方 nhắc bài học cốt lõi của nghề とび: tuyệt đối không giả vờ hiểu, vì đây là nghề tính mạng treo lơ lửng.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 足場板 | あしばいた | ván giàn giáo |
> | 単管 | たんかん | ống thép giàn giáo |
> | クランプ | くらんぷ | khóa kẹp (clamp) |
> | 増し締め | ましじめ | siết chặt lại thêm |
> | ジャッキベース | じゃっきべーす | chân đế kích |
> | 敷板 | しきいた | ván đệm chống lún |
> | 水平器 | すいへいき | thước thủy (cân bằng) |
> | 安全帯 | あんぜんたい | dây đai an toàn |
> | 報告 | ほうこく | báo cáo |
> | 確認 | かくにん | xác nhận |
> | 作業日報 | さぎょうにっぽう | nhật ký công việc |
> | 整理整頓 | せいりせいとん | sắp xếp gọn gàng |
> | 養生 | ようじょう | che chắn bảo vệ |
> | 提案 | ていあん | đề xuất |
> | 肝に銘じる | きもにめいじる | khắc cốt ghi tâm |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000002, 800000034, NULL, 'markdown_book', 'T2. Bật mực đánh dấu trục chính xác (墨出しの正確さ)', '# Sách thực tập sinh xây dựng · T2. Bật mực đánh dấu trục chính xác (墨出しの正確さ)

> **Mục tiêu nhân vật:** Thức học công đoạn 墨出し (bật mực, đánh dấu trục/cao độ) — việc đòi hỏi độ chính xác cao. Học mẫu câu xác nhận số đo, đọc bản vẽ đơn giản, báo sai số, xin kiểm tra lại.

---

## Bối cảnh

Tháng 5 năm 2027. Công trường chung cư bước vào giai đoạn dựng giàn giáo theo trục chuẩn. 谷川親方 giao Thức học phụ việc 墨出し cùng 斉藤職長: căng dây, đo khoảng cách, đánh dấu vị trí chân giàn giáo theo bản vẽ. Sai một chút là cả giàn lệch. Chương này tập trung mẫu câu về số đo, đơn vị, xác nhận lại và báo cáo sai số.

---

## Tình huống 1 — Công trường · 7:40, 親方 giới thiệu việc 墨出し

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>墨出<rt>すみだ</rt></ruby>しを<ruby>覚<rt>おぼ</rt></ruby>えてもらう。<ruby>足場<rt>あしば</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>を<ruby>決<rt>き</rt></ruby>める<ruby>大事<rt>だいじ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Thức, hôm nay học bật mực. Là việc quan trọng để định vị trí giàn giáo.)* |
| Thức | はい。<ruby>墨出<rt>すみだ</rt></ruby>しは<ruby>初<rt>はじ</rt></ruby>めてです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Bật mực thì đây là lần đầu ạ. Mong anh chỉ bảo ạ.)* |
| Tanigawa | <ruby>一<rt>いち</rt></ruby>ミリ<ruby>違<rt>ちが</rt></ruby>っても<ruby>後<rt>あと</rt></ruby>で<ruby>大<rt>おお</rt></ruby>きくずれる。ええか、<ruby>慎重<rt>しんちょう</rt></ruby>にやれ。<br>*(Lệch một milimét sau cũng vênh lớn. Nghe rõ chưa, làm cẩn thận.)* |
| Thức | はい。<ruby>分<rt>わ</rt></ruby>からない<ruby>数字<rt>すうじ</rt></ruby>は、その<ruby>場<rt>ば</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Con số nào không rõ em sẽ xác nhận ngay tại chỗ ạ.)* |
| Tanigawa | それでええ。<ruby>斉藤<rt>さいとう</rt></ruby>について<ruby>学<rt>まな</rt></ruby>べ。<br>*(Vậy là được. Theo Saito mà học.)* |

---

## Tình huống 2 — Mặt nền · 8:00, học đọc bản vẽ vị trí

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、この<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>足場<rt>あしば</rt></ruby>は<ruby>建物<rt>たてもの</rt></ruby>から<ruby>六百<rt>ろっぴゃく</rt></ruby>ミリ<ruby>離<rt>はな</rt></ruby>します。<br>*(Thức, xem bản vẽ này. Giàn giáo cách tòa nhà 600 milimét.)* |
| Thức | <ruby>六百<rt>ろっぴゃく</rt></ruby>ミリ、つまり<ruby>六十<rt>ろくじゅう</rt></ruby>センチですね?<br>*(600 mili, tức là 60 phân, đúng không ạ?)* |
| Saito | そうです。よく<ruby>変換<rt>へんかん</rt></ruby>できましたね。この<ruby>線<rt>せん</rt></ruby>が<ruby>基準<rt>きじゅん</rt></ruby><ruby>線<rt>せん</rt></ruby>です。<br>*(Đúng. Quy đổi giỏi đấy. Đường này là đường chuẩn.)* |
| Thức | <ruby>基準線<rt>きじゅんせん</rt></ruby>から<ruby>測<rt>はか</rt></ruby>ればいいですか?<br>*(Em đo từ đường chuẩn ạ?)* |
| Saito | そうです。<ruby>必<rt>かなら</rt></ruby>ず<ruby>基準線<rt>きじゅんせん</rt></ruby>からです。<ruby>適当<rt>てきとう</rt></ruby>に<ruby>測<rt>はか</rt></ruby>ったらだめですよ。<br>*(Đúng. Luôn từ đường chuẩn. Đo đại khái là không được đâu.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>基準線<rt>きじゅんせん</rt></ruby>からですね。<br>*(Vâng, em hiểu rồi. Từ đường chuẩn ạ.)* |

---

## Tình huống 3 — Mặt nền · 8:30, căng dây mực đôi

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>墨壺<rt>すみつぼ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<ruby>糸<rt>いと</rt></ruby>をぴんと<ruby>張<rt>は</rt></ruby>ってください。<br>*(Dùng hộp mực. Căng dây cho thật thẳng.)* |
| Thức | こうですか?もっと<ruby>強<rt>つよ</rt></ruby>く<ruby>引<rt>ひ</rt></ruby>きますか?<br>*(Như này ạ? Em kéo mạnh hơn nữa ạ?)* |
| Saito | もう<ruby>少<rt>すこ</rt></ruby>し。たるむと<ruby>線<rt>せん</rt></ruby>が<ruby>曲<rt>ま</rt></ruby>がります。<br>*(Thêm chút nữa. Chùng thì đường mực sẽ cong.)* |
| Thức | <ruby>動<rt>うご</rt></ruby>かないように<ruby>押<rt>お</rt></ruby>さえます。<br>*(Em giữ chặt không cho nhúc nhích ạ.)* |
| Saito | いいですね。では<ruby>弾<rt>はじ</rt></ruby>きます。せーの。<br>*(Tốt. Vậy búng dây nhé. Một hai ba.)* |
| Thức | きれいな<ruby>線<rt>せん</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<br>*(Đường mực hiện ra đẹp ạ.)* |

---

## Tình huống 4 — Mặt nền · 9:00, xác nhận số đo trước khi đánh dấu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>柱<rt>はしら</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は<ruby>千八百<rt>せんはっぴゃく</rt></ruby>ミリですね?<br>*(Anh Saito, cho em xác nhận. Khoảng cách cột là 1800 mili, đúng không ạ?)* |
| Saito | そうです。<ruby>千八百<rt>せんはっぴゃく</rt></ruby>ミリ、<ruby>間違<rt>まちが</rt></ruby>えないように。<br>*(Đúng. 1800 mili, đừng nhầm.)* |
| Thức | メジャーの<ruby>読<rt>よ</rt></ruby>み<ruby>方<rt>かた</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>見<rt>み</rt></ruby>てもらえますか?<br>*(Cách đọc thước cuộn, anh xem lại giúp em một lần nữa được không ạ?)* |
| Saito | いいですよ。ゼロは<ruby>基準線<rt>きじゅんせん</rt></ruby>にきっちり<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Được. Vạch số 0 phải khớp chính xác vào đường chuẩn.)* |
| Thức | なるほど。ここが<ruby>千八百<rt>せんはっぴゃく</rt></ruby>の<ruby>点<rt>てん</rt></ruby>ですね。<br>*(Em hiểu rồi. Đây là điểm 1800 ạ.)* |
| Saito | そうです。そこに<ruby>印<rt>しるし</rt></ruby>をつけてください。<br>*(Đúng. Đánh dấu vào đó nhé.)* |

---

## Tình huống 5 — Mặt nền · 9:40, phát hiện sai số và báo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、ちょっと<ruby>気<rt>き</rt></ruby>になることがあります。<br>*(Anh Saito, có chỗ này em thấy lấn cấn ạ.)* |
| Saito | <ruby>何<rt>なん</rt></ruby>ですか?<br>*(Gì thế?)* |
| Thức | ここの<ruby>距離<rt>きょり</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby>と<ruby>五<rt>ご</rt></ruby>ミリくらい<ruby>違<rt>ちが</rt></ruby>います。<br>*(Khoảng cách chỗ này lệch so với bản vẽ khoảng 5 mili ạ.)* |
| Saito | え、どれ?...ほんまや。<ruby>柱<rt>はしら</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>傾<rt>かたむ</rt></ruby>いてるな。<br>*(Hả, đâu?... Đúng thật. Cột hơi nghiêng nhỉ.)* |
| Thức | <ruby>勝手<rt>かって</rt></ruby>に<ruby>直<rt>なお</rt></ruby>さず、<ruby>先<rt>さき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しました。<br>*(Em chưa tự sửa, báo cáo trước ạ.)* |
| Saito | それでええ。<ruby>五<rt>ご</rt></ruby>ミリの<ruby>差<rt>さ</rt></ruby>を<ruby>見<rt>み</rt></ruby><ruby>逃<rt>のが</rt></ruby>さんかったな。たいしたもんや。<br>*(Vậy là đúng. Không bỏ sót sai số 5 mili. Giỏi đấy.)* |

---

## Tình huống 6 — Mặt nền · 10:00, hỏi khi đường mực bị mờ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>墨<rt>すみ</rt></ruby>が<ruby>薄<rt>うす</rt></ruby>くて<ruby>見<rt>み</rt></ruby>えにくいです。どうしますか?<br>*(Anh Kondo, mực nhạt khó nhìn quá. Em làm sao ạ?)* |
| Kondo | <ruby>雨<rt>あめ</rt></ruby>で<ruby>消<rt>き</rt></ruby>えかけてるな。もう<ruby>一回<rt>いっかい</rt></ruby><ruby>打<rt>う</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>すで。<br>*(Mưa làm phai rồi. Bật lại lần nữa thôi.)* |
| Thức | そのまま<ruby>上<rt>うえ</rt></ruby>から<ruby>打<rt>う</rt></ruby>っていいですか?<br>*(Em bật đè lên ngay được không ạ?)* |
| Kondo | いや、<ruby>元<rt>もと</rt></ruby>の<ruby>点<rt>てん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>打<rt>う</rt></ruby>て。ずれたら<ruby>意味<rt>いみ</rt></ruby>ないからな。<br>*(Không, xác nhận điểm gốc rồi mới bật. Lệch thì vô nghĩa.)* |
| Thức | はい、<ruby>基準<rt>きじゅん</rt></ruby>の<ruby>釘<rt>くぎ</rt></ruby>を<ruby>探<rt>さが</rt></ruby>します。<br>*(Vâng, em tìm cây đinh chuẩn ạ.)* |
| Kondo | そうそう、それが<ruby>残<rt>のこ</rt></ruby>ってるはずや。<br>*(Đúng đúng, cây đó chắc còn đấy.)* |

---

## Tình huống 7 — Mặt nền · 10:40, đo cao độ bằng máy thủy bình

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>次<rt>つぎ</rt></ruby>は<ruby>高<rt>たか</rt></ruby>さの<ruby>墨<rt>すみ</rt></ruby>です。レベルで<ruby>基準<rt>きじゅん</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さを<ruby>出<rt>だ</rt></ruby>します。<br>*(Tiếp theo là mực cao độ. Dùng máy thủy bình lấy cao độ chuẩn.)* |
| Thức | レベルの<ruby>数字<rt>すうじ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>みますか?<br>*(Em đọc số trên máy ạ?)* |
| Saito | はい、<ruby>読<rt>よ</rt></ruby>んで<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>で<ruby>言<rt>い</rt></ruby>ってください。<ruby>聞<rt>き</rt></ruby>き<ruby>間違<rt>まちが</rt></ruby>いを<ruby>防<rt>ふせ</rt></ruby>ぎます。<br>*(Ừ, đọc và nói to lên. Để tránh nghe nhầm.)* |
| Thức | <ruby>千二百三十<rt>せんにひゃくさんじゅう</rt></ruby>ミリ、です!<br>*(1230 mili, đây ạ!)* |
| Saito | はい、<ruby>千二百三十<rt>せんにひゃくさんじゅう</rt></ruby>ミリ、<ruby>復唱<rt>ふくしょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Vâng, 1230 mili, xác nhận lặp lại.)* |
| Thức | <ruby>復唱<rt>ふくしょう</rt></ruby>すると<ruby>安心<rt>あんしん</rt></ruby>ですね。<br>*(Lặp lại thì yên tâm nhỉ.)* |

---

## Tình huống 8 — Mặt nền · 11:10, đánh dấu cao độ lên cột

| Vai | Lời thoại |
|---|---|
| Saito | この<ruby>高<rt>たか</rt></ruby>さに<ruby>陸墨<rt>ろくずみ</rt></ruby>を<ruby>打<rt>う</rt></ruby>ちます。<ruby>水平<rt>すいへい</rt></ruby>の<ruby>基準線<rt>きじゅんせん</rt></ruby>です。<br>*(Ở độ cao này bật mực ngang. Là đường chuẩn mặt phẳng ngang.)* |
| Thức | <ruby>陸墨<rt>ろくずみ</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。メモします。<br>*(Mực ngang, lần đầu em nghe. Em ghi lại ạ.)* |
| Saito | <ruby>床<rt>ゆか</rt></ruby>から<ruby>一<rt>いち</rt></ruby>メートルのところに<ruby>打<rt>う</rt></ruby>つことが<ruby>多<rt>おお</rt></ruby>いです。<br>*(Thường bật ở vị trí cách sàn 1 mét.)* |
| Thức | どうして<ruby>一<rt>いち</rt></ruby>メートルですか?<br>*(Vì sao lại 1 mét ạ?)* |
| Saito | <ruby>見<rt>み</rt></ruby>やすくて<ruby>測<rt>はか</rt></ruby>りやすいからです。みんなが<ruby>使<rt>つか</rt></ruby>う<ruby>基準<rt>きじゅん</rt></ruby>になります。<br>*(Vì dễ nhìn dễ đo. Thành mốc chuẩn cho mọi người dùng.)* |
| Thức | なるほど、<ruby>理由<rt>りゆう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かると<ruby>覚<rt>おぼ</rt></ruby>えやすいです。<br>*(Hiểu rồi, biết lý do thì dễ nhớ ạ.)* |

---

## Tình huống 9 — Mặt nền · 11:40, được giao tự đánh dấu một hàng

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、この<ruby>一列<rt>いちれつ</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>墨<rt>すみ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してみてください。<br>*(Thức, một hàng này, tự bật mực thử xem.)* |
| Thức | はい。<ruby>不安<rt>ふあん</rt></ruby>なところは<ruby>声<rt>こえ</rt></ruby>をかけてもいいですか?<br>*(Vâng. Chỗ nào không chắc em gọi anh được không ạ?)* |
| Saito | もちろんです。<ruby>無理<rt>むり</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めないでください。<br>*(Tất nhiên. Đừng cố làm tới khi chưa chắc.)* |
| Thức | <ruby>基準線<rt>きじゅんせん</rt></ruby>から<ruby>千八百<rt>せんはっぴゃく</rt></ruby>ずつですね。<ruby>測<rt>はか</rt></ruby>ります。<br>*(Cứ mỗi 1800 từ đường chuẩn ạ. Em đo đây.)* |
| Saito | <ruby>一<rt>ひと</rt></ruby>つ<ruby>測<rt>はか</rt></ruby>るごとに<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すといいですよ。<br>*(Mỗi lần đo xong nên đọc thành tiếng nhé.)* |
| Thức | はい、<ruby>千八百<rt>せんはっぴゃく</rt></ruby>...<ruby>三千六百<rt>さんぜんろっぴゃく</rt></ruby>...<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, 1800... 3600... em đọc lần lượt ạ.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, anh Long chia sẻ kinh nghiệm 墨出し

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>墨出<rt>すみだ</rt></ruby>し<ruby>任<rt>まか</rt></ruby>されたんやろ?どうやった?<br>*(Thức, được giao bật mực rồi à? Thấy thế nào?)* |
| Thức | <ruby>難<rt>むずか</rt></ruby>しいです。<ruby>一<rt>いち</rt></ruby>ミリでも<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Khó ạ. Lệch một mili cũng hồi hộp.)* |
| Long | それでええんや。<ruby>墨<rt>すみ</rt></ruby>がずれたら<ruby>建物<rt>たてもの</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby>ずれる。<ruby>怖<rt>こわ</rt></ruby>がるくらいでちょうどええ。<br>*(Vậy mới đúng. Mực lệch thì cả công trình lệch. Sợ vừa phải là tốt.)* |
| Thức | <ruby>復唱<rt>ふくしょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>って、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Xác nhận lặp lại đúng là quan trọng thật anh nhỉ.)* |
| Long | せやで。<ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>聞<rt>き</rt></ruby>き<ruby>間違<rt>まちが</rt></ruby>えてよう<ruby>怒<rt>おこ</rt></ruby>られた。<ruby>慣<rt>な</rt></ruby>れたら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<br>*(Đúng vậy. Anh hồi đầu cũng nghe nhầm bị mắng hoài. Quen rồi thì ổn.)* |

---

## Tình huống 11 — Mặt nền · 13:00, Saito kiểm tra hàng Thức tự làm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>一列<rt>いちれつ</rt></ruby>、<ruby>墨<rt>すみ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>し<ruby>終<rt>お</rt></ruby>わりました。<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Saito, một hàng đã bật mực xong. Nhờ anh kiểm tra ạ.)* |
| Saito | どれどれ...メジャーで<ruby>測<rt>はか</rt></ruby>り<ruby>直<rt>なお</rt></ruby>すで。<br>*(Đâu xem nào... đo lại bằng thước cuộn nhé.)* |
| Thức | <ruby>気<rt>き</rt></ruby>になるところは<ruby>三<rt>さん</rt></ruby>か<ruby>所<rt>しょ</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>測<rt>はか</rt></ruby>りました。<br>*(Ba chỗ em thấy nghi nghi, em đã đo lại một lần ạ.)* |
| Saito | お、ぜんぶ<ruby>誤差<rt>ごさ</rt></ruby><ruby>一<rt>いち</rt></ruby>ミリ<ruby>以内<rt>いない</rt></ruby>や。<ruby>合格<rt>ごうかく</rt></ruby>。<br>*(Ồ, tất cả sai số trong 1 mili. Đạt.)* |
| Thức | ありがとうございます。<ruby>自分<rt>じぶん</rt></ruby>でも<ruby>検<rt>けん</rt></ruby><ruby>査<rt>さ</rt></ruby>する<ruby>習慣<rt>しゅうかん</rt></ruby>をつけます。<br>*(Em cảm ơn ạ. Em sẽ tập thói quen tự kiểm tra lại.)* |
| Saito | その<ruby>姿勢<rt>しせい</rt></ruby>がプロや。<br>*(Tư thế đó mới là chuyên nghiệp.)* |

---

## Tình huống 12 — Mặt nền · 13:40, hỏi cách xử lý khi nền không bằng phẳng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ここの<ruby>地面<rt>じめん</rt></ruby>がでこぼこで<ruby>墨<rt>すみ</rt></ruby>が<ruby>打<rt>う</rt></ruby>てません。<br>*(Anh Kondo, nền chỗ này lồi lõm không bật mực được ạ.)* |
| Kondo | ああ、そういうときはチョークで<ruby>点<rt>てん</rt></ruby>を<ruby>打<rt>う</rt></ruby>つんや。<br>*(À, lúc đó thì đánh dấu điểm bằng phấn.)* |
| Thức | <ruby>線<rt>せん</rt></ruby>じゃなくて<ruby>点<rt>てん</rt></ruby>でいいんですか?<br>*(Không cần đường mà chỉ cần điểm thôi ạ?)* |
| Kondo | <ruby>点<rt>てん</rt></ruby>と<ruby>点<rt>てん</rt></ruby>をつなげば<ruby>線<rt>せん</rt></ruby>になるやろ。あとで<ruby>糸<rt>いと</rt></ruby>を<ruby>張<rt>は</rt></ruby>る。<br>*(Nối điểm với điểm thì thành đường. Sau căng dây sau.)* |
| Thức | なるほど、<ruby>工夫<rt>くふう</rt></ruby>するんですね。<br>*(Hiểu rồi, phải biết linh hoạt nhỉ.)* |
| Kondo | <ruby>現場<rt>げんば</rt></ruby>は<ruby>図面<rt>ずめん</rt></ruby>どおりにいかんことも<ruby>多<rt>おお</rt></ruby>い。<ruby>頭<rt>あたま</rt></ruby><ruby>使<rt>つか</rt></ruby>えよ。<br>*(Công trường nhiều khi không như bản vẽ. Phải động não.)* |

---

## Tình huống 13 — Mặt nền · 14:10, ghi số liệu vào sổ

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>測<rt>はか</rt></ruby>った<ruby>数字<rt>すうじ</rt></ruby>はこの<ruby>野帳<rt>やちょう</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>してください。<br>*(Thức, số liệu đo được ghi vào sổ tay công trường này nhé.)* |
| Thức | どんなふうに<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Em ghi như thế nào ạ?)* |
| Saito | <ruby>場所<rt>ばしょ</rt></ruby>、<ruby>寸法<rt>すんぽう</rt></ruby>、<ruby>日付<rt>ひづけ</rt></ruby>です。あとで<ruby>誰<rt>だれ</rt></ruby>が<ruby>見<rt>み</rt></ruby>ても<ruby>分<rt>わ</rt></ruby>かるように。<br>*(Vị trí, kích thước, ngày tháng. Để sau ai xem cũng hiểu.)* |
| Thức | <ruby>字<rt>じ</rt></ruby>はていねいに<ruby>書<rt>か</rt></ruby>いたほうがいいですね。<br>*(Chữ phải viết cẩn thận nhỉ.)* |
| Saito | そうです。<ruby>数字<rt>すうじ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>み<ruby>間違<rt>まちが</rt></ruby>えたら<ruby>事故<rt>じこ</rt></ruby>のもとです。<br>*(Đúng. Đọc nhầm con số là nguồn gốc tai nạn.)* |
| Thức | はい、はっきり<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em viết rõ ràng ạ.)* |

---

## Tình huống 14 — Mặt nền · 14:40, 親方 kiểm tra toàn bộ mực

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>墨<rt>すみ</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>見<rt>み</rt></ruby>たで。どう<ruby>思<rt>おも</rt></ruby>う、<ruby>自分<rt>じぶん</rt></ruby>では?<br>*(Thức, mực hôm nay tao xem hết rồi. Tự cậu thấy thế nào?)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>遅<rt>おそ</rt></ruby>かったですが、だんだん<ruby>正確<rt>せいかく</rt></ruby>になったと<ruby>思<rt>おも</rt></ruby>います。<br>*(Lúc đầu chậm, nhưng em nghĩ càng về sau càng chính xác hơn ạ.)* |
| Tanigawa | <ruby>正直<rt>しょうじき</rt></ruby>でええな。<ruby>速<rt>はや</rt></ruby>さより<ruby>正確<rt>せいかく</rt></ruby>さや、<ruby>墨出<rt>すみだ</rt></ruby>しは。<br>*(Thật thà thế là tốt. Bật mực thì chính xác hơn là nhanh.)* |
| Thức | はい、<ruby>速<rt>はや</rt></ruby>さは<ruby>後<rt>あと</rt></ruby>からついてくると<ruby>言<rt>い</rt></ruby>われました。<br>*(Vâng, em được dạy là tốc độ rồi sẽ theo sau ạ.)* |
| Tanigawa | そのとおりや。よう<ruby>覚<rt>おぼ</rt></ruby>えとけ。<br>*(Đúng vậy. Nhớ kỹ đấy.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |

---

## Tình huống 15 — Mặt nền · 15:00, hỗ trợ Hùng cùng căng dây

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>糸<rt>いと</rt></ruby><ruby>張<rt>は</rt></ruby>るの<ruby>手伝<rt>てつだ</rt></ruby>って。<ruby>一人<rt>ひとり</rt></ruby>じゃ<ruby>無理<rt>むり</rt></ruby>や。<br>*(Thức, giúp tôi căng dây với. Một mình không nổi.)* |
| Thức | いいよ。<ruby>俺<rt>おれ</rt></ruby>がこっちの<ruby>端<rt>はし</rt></ruby>を<ruby>持<rt>も</rt></ruby>つ。<ruby>合図<rt>あいず</rt></ruby>して。<br>*(Được. Tôi giữ đầu này. Hùng ra hiệu nhé.)* |
| Hùng | せーので<ruby>引<rt>ひ</rt></ruby>こう。たるまないように。<br>*(Hô một hai ba rồi kéo. Đừng để chùng.)* |
| Thức | ぴんと<ruby>張<rt>は</rt></ruby>れた?<ruby>動<rt>うご</rt></ruby>かさないで。<br>*(Căng thẳng chưa? Đừng làm xê dịch.)* |
| Hùng | バッチリ。<ruby>二人<rt>ふたり</rt></ruby>でやると<ruby>楽<rt>らく</rt></ruby>やな。<br>*(Chuẩn rồi. Hai người làm nhẹ thật.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>えば<ruby>失敗<rt>しっぱい</rt></ruby>しないよ。<br>*(Hai bên gọi nhau thì không hỏng đâu.)* |

---

## Tình huống 16 — Mặt nền · 15:30, hỏi về ký hiệu trên bản vẽ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、この<ruby>図面<rt>ずめん</rt></ruby>の<ruby>記号<rt>きごう</rt></ruby>、<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Anh Saito, ký hiệu trên bản vẽ này em không hiểu nghĩa ạ.)* |
| Saito | どれですか?...ああ、これは<ruby>通<rt>とお</rt></ruby>り<ruby>芯<rt>しん</rt></ruby>の<ruby>番号<rt>ばんごう</rt></ruby>です。<br>*(Cái nào?... À, đây là số hiệu trục.)* |
| Thức | <ruby>通<rt>とお</rt></ruby>り<ruby>芯<rt>しん</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めての<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Trục, từ này lần đầu em nghe ạ.)* |
| Saito | <ruby>建物<rt>たてもの</rt></ruby>の<ruby>中心<rt>ちゅうしん</rt></ruby>の<ruby>線<rt>せん</rt></ruby>のことです。すべての<ruby>基準<rt>きじゅん</rt></ruby>になります。<br>*(Là đường tâm của tòa nhà. Là mốc chuẩn cho tất cả.)* |
| Thức | だから<ruby>番号<rt>ばんごう</rt></ruby>がついているんですね。<br>*(Vì vậy mới được đánh số nhỉ.)* |
| Saito | そうです。「<ruby>X一<rt>えっくすいち</rt></ruby>」とか「<ruby>Y二<rt>わいに</rt></ruby>」とか<ruby>呼<rt>よ</rt></ruby>びます。<br>*(Đúng. Gọi là "X1", "Y2"...)* |

---

## Tình huống 17 — Mặt nền · 16:00, đề xuất đánh dấu thêm cho dễ nhìn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>してもいいですか?<br>*(Anh Saito, em đề xuất một chút được không ạ?)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>大事<rt>だいじ</rt></ruby>な<ruby>点<rt>てん</rt></ruby>に<ruby>赤<rt>あか</rt></ruby>いマークをつけたら、<ruby>間違<rt>まちが</rt></ruby>いにくいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Đánh dấu đỏ vào điểm quan trọng thì em nghĩ sẽ ít nhầm hơn ạ.)* |
| Saito | ええ<ruby>考<rt>かんが</rt></ruby>えや。みんなにも<ruby>分<rt>わ</rt></ruby>かりやすい。やってみて。<br>*(Ý hay đấy. Mọi người cũng dễ nhìn. Làm thử đi.)* |
| Thức | はい、<ruby>主要<rt>しゅよう</rt></ruby>な<ruby>通<rt>とお</rt></ruby>り<ruby>芯<rt>しん</rt></ruby>だけ<ruby>赤<rt>あか</rt></ruby>くします。<br>*(Vâng, em chỉ tô đỏ các trục chính ạ.)* |
| Saito | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えて<ruby>動<rt>うご</rt></ruby>けるようになったな。<br>*(Biết tự nghĩ rồi hành động rồi đấy.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo tổng kết ngày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>墨出<rt>すみだ</rt></ruby>し、ぜんぶ<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Tanigawa, việc bật mực hôm nay đã hoàn thành hết ạ.)* |
| Tanigawa | <ruby>誤差<rt>ごさ</rt></ruby>はどうやった?<br>*(Sai số thế nào?)* |
| Thức | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>一<rt>いち</rt></ruby>ミリ<ruby>以内<rt>いない</rt></ruby>で、<ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>をもらいました。<br>*(Tất cả trong 1 mili, anh Saito chấm đạt rồi ạ.)* |
| Tanigawa | よっしゃ。<ruby>明日<rt>あした</rt></ruby>から<ruby>建<rt>た</rt></ruby>て<ruby>込<rt>こ</rt></ruby>みやで。この<ruby>墨<rt>すみ</rt></ruby>が<ruby>基準<rt>きじゅん</rt></ruby>になる。<br>*(Tốt. Từ mai dựng giàn. Mực này thành mốc chuẩn đấy.)* |
| Thức | はい、<ruby>責任<rt>せきにん</rt></ruby><ruby>重大<rt>じゅうだい</rt></ruby>ですね。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めます。<br>*(Vâng, trách nhiệm lớn nhỉ. Em sẽ giữ tinh thần cảnh giác ạ.)* |
| Tanigawa | その<ruby>意識<rt>いしき</rt></ruby>でええ。ご<ruby>苦労<rt>くろう</rt></ruby>さん。<br>*(Ý thức đó là được. Vất vả rồi.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Kondo khen Thức

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>墨<rt>すみ</rt></ruby>、<ruby>去年<rt>きょねん</rt></ruby>のお<ruby>前<rt>まえ</rt></ruby>と<ruby>大違<rt>おおちが</rt></ruby>いやったぞ。<br>*(Thức, mực hôm nay, khác xa với cậu năm ngoái đấy.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか?うれしいです。<br>*(Thật ạ? Em vui quá ạ.)* |
| Kondo | <ruby>確認<rt>かくにん</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>らんかったのがええ。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいんや。<br>*(Không lơ là khâu kiểm tra là điểm tốt. Cái đó khó nhất đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わったとおりにやっただけです。<br>*(Em chỉ làm đúng như anh Kondo dạy thôi ạ.)* |
| Kondo | その<ruby>素直<rt>すなお</rt></ruby>さがお<ruby>前<rt>まえ</rt></ruby>の<ruby>武器<rt>ぶき</rt></ruby>や。<ruby>明日<rt>あした</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むで。<br>*(Sự cầu thị đó là vũ khí của cậu. Mai cũng nhờ nhé.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức tâm sự với Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Hùng à, hôm nay tao học bật mực. Căng thẳng ghê, lệch một mili là cả công trình lệch. |
| Hùng | Tao cũng nghe anh Long nói vậy. Mày nhớ số tiếng Nhật giỏi thật, tao đo toàn nghe nhầm. |
| Thức | Mẹo là đọc to lên rồi nghe người ta lặp lại. Họ gọi là "fukushou kakunin". Mày thử đi. |
| Hùng | Ờ để mai tao tập. Năm hai mà tiếng Nhật không lên là khổ. |
| Thức | Ừ, tối nay tao với mày ôn lại số đếm với đơn vị mili nhé. Ngủ sớm còn dậy đi làm. |
| Hùng | Được, cảm ơn mày. Đồng kỳ phải kéo nhau lên chứ. |

---

## Đọng lại

Thức bước vào công đoạn 墨出し đòi hỏi độ chính xác tuyệt đối. Em học cách đọc bản vẽ, đổi đơn vị, căng dây mực, xác nhận lặp lại số đo (復唱確認) và tự kiểm tra sai số trước khi báo cáo. 親方 nhấn mạnh: bật mực coi trọng chính xác hơn tốc độ, vì đường mực này là mốc chuẩn cho toàn bộ công trình.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 墨出し | すみだし | bật mực, đánh dấu trục |
> | 墨壺 | すみつぼ | hộp mực bật |
> | 基準線 | きじゅんせん | đường chuẩn |
> | 通り芯 | とおりしん | trục tâm công trình |
> | 陸墨 | ろくずみ | mực ngang (cao độ) |
> | レベル | れべる | máy thủy bình |
> | 復唱確認 | ふくしょうかくにん | xác nhận lặp lại |
> | 寸法 | すんぽう | kích thước |
> | 誤差 | ごさ | sai số |
> | 図面 | ずめん | bản vẽ |
> | 野帳 | やちょう | sổ tay ghi số liệu công trường |
> | 記号 | きごう | ký hiệu |
> | 慎重 | しんちょう | cẩn thận, thận trọng |
> | 正確さ | せいかくさ | độ chính xác |
> | 検査 | けんさ | kiểm tra |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000003, 800000034, NULL, 'markdown_book', 'T3. Dựng giàn và xiết khóa (建て込みと締め付け)', '# Sách thực tập sinh xây dựng · T3. Dựng giàn và xiết khóa (建て込みと締め付け)

> **Mục tiêu nhân vật:** Thức học dựng giàn giáo (建て込み) và xiết khóa kẹp (締め付け) bằng ラチェット, クランプ. Học mẫu câu phối hợp đồng đội khi dựng, hô hiệu, kiểm tra mô-men siết, xác nhận an toàn từng tầng.

---

## Bối cảnh

Tháng 6 năm 2027. Sau khi 墨出し xong, tổ giàn giáo bắt đầu dựng giàn thật theo trục. Thức năm 2 được tham gia 建て込み: lắp 単管, xiết クランプ bằng ラチェット, dựng từng tầng. Đây là việc nguy hiểm cần phối hợp ăn ý và hô hiệu rõ. Chương này tập trung mẫu câu làm việc nhóm trên cao và xác nhận độ chặt.

---

## Tình huống 1 — Chân giàn · 7:40, 親方 phân công đội dựng

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>今日<rt>きょう</rt></ruby>から<ruby>建<rt>た</rt></ruby>て<ruby>込<rt>こ</rt></ruby>みや。トゥックは<ruby>近藤<rt>こんどう</rt></ruby>と<ruby>組<rt>く</rt></ruby>め。<br>*(Từ hôm nay dựng giàn. Thức ghép với Kondo.)* |
| Thức | はい。<ruby>主<rt>おも</rt></ruby>に<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Vâng. Em chủ yếu làm gì ạ?)* |
| Tanigawa | <ruby>下<rt>した</rt></ruby>で<ruby>単管<rt>たんかん</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>して、<ruby>慣<rt>な</rt></ruby>れたら<ruby>締<rt>し</rt></ruby>め<ruby>付<rt>つ</rt></ruby>けもやれ。<br>*(Dưới đưa ống thép lên, quen rồi thì xiết khóa luôn.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>かけは<ruby>必<rt>かなら</rt></ruby>ずしますね。<br>*(Em sẽ luôn hô hiệu chứ ạ?)* |
| Tanigawa | <ruby>当然<rt>とうぜん</rt></ruby>や。<ruby>頭上<rt>ずじょう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>やぞ。<br>*(Đương nhiên. Làm trên đầu nhau thì tiếng hô là mạng sống.)* |
| Thức | はい、<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>でやります。<br>*(Vâng, em sẽ hô to ạ.)* |

---

## Tình huống 2 — Chân giàn · 8:00, đưa ống thép lên tầng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>単管<rt>たんかん</rt></ruby><ruby>一本<rt>いっぽん</rt></ruby>、<ruby>上<rt>あ</rt></ruby>げてくれ。<br>*(Thức, một cây ống thép, đưa lên đây.)* |
| Thức | はい、<ruby>行<rt>い</rt></ruby>きます。「<ruby>上<rt>あ</rt></ruby>げ<ruby>材<rt>ざい</rt></ruby>」!<br>*(Vâng, đưa lên đây. "Vật liệu lên"!)* |
| Kondo | よし、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>った。<ruby>手<rt>て</rt></ruby>を<ruby>離<rt>はな</rt></ruby>すで。<br>*(Được, nhận rồi. Tao buông tay đây.)* |
| Thức | <ruby>離<rt>はな</rt></ruby>します!<ruby>次<rt>つぎ</rt></ruby><ruby>行<rt>い</rt></ruby>きますか?<br>*(Buông đây! Cây tiếp theo chứ ạ?)* |
| Kondo | <ruby>待<rt>ま</rt></ruby>て、<ruby>固定<rt>こてい</rt></ruby>してからや。<ruby>慌<rt>あわ</rt></ruby>てるな。<br>*(Khoan, để cố định xong đã. Đừng vội.)* |
| Thức | はい、<ruby>合図<rt>あいず</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちます。<br>*(Vâng, em chờ hiệu lệnh ạ.)* |

---

## Tình huống 3 — Tầng 1 · 8:40, học xiết クランプ bằng ラチェット

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>次<rt>つぎ</rt></ruby>は<ruby>締<rt>し</rt></ruby>め<ruby>付<rt>つ</rt></ruby>けや。ラチェットの<ruby>当<rt>あ</rt></ruby>て<ruby>方<rt>かた</rt></ruby>、<ruby>見<rt>み</rt></ruby>てろ。<br>*(Tiếp theo là xiết. Cách đặt cờ lê tự động, nhìn đây.)* |
| Thức | クランプの<ruby>向<rt>む</rt></ruby>きは<ruby>決<rt>き</rt></ruby>まっていますか?<br>*(Hướng đặt khóa kẹp có quy định không ạ?)* |
| Kondo | あるで。<ruby>固定<rt>こてい</rt></ruby>クランプは<ruby>直角<rt>ちょっかく</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>、<ruby>自在<rt>じざい</rt></ruby>クランプは<ruby>角度<rt>かくど</rt></ruby><ruby>自由<rt>じゆう</rt></ruby>や。<br>*(Có chứ. Khóa cố định chuyên vuông góc, khóa xoay thì góc tự do.)* |
| Thức | <ruby>直角<rt>ちょっかく</rt></ruby>のところに<ruby>自在<rt>じざい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ったらだめですか?<br>*(Chỗ vuông góc mà dùng khóa xoay thì không được ạ?)* |
| Kondo | だめや。<ruby>強度<rt>きょうど</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>う。<ruby>用途<rt>ようと</rt></ruby>を<ruby>間違<rt>まちが</rt></ruby>えるな。<br>*(Không được. Độ chịu lực khác nhau. Đừng nhầm công dụng.)* |
| Thức | はい、<ruby>固定<rt>こてい</rt></ruby>と<ruby>自在<rt>じざい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けます。<br>*(Vâng, em sẽ dùng riêng khóa cố định và khóa xoay ạ.)* |

---

## Tình huống 4 — Tầng 1 · 9:10, xác nhận lực siết

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、これくらいの<ruby>締<rt>し</rt></ruby>め<ruby>具合<rt>ぐあい</rt></ruby>でいいですか?<br>*(Anh Kondo, siết cỡ này được không ạ?)* |
| Kondo | ちょっと<ruby>触<rt>さわ</rt></ruby>らせて...うん、もうひと<ruby>息<rt>いき</rt></ruby><ruby>締<rt>し</rt></ruby>めろ。<br>*(Để tao sờ thử... ừ, siết thêm một nhịp nữa.)* |
| Thức | こうですか?<ruby>動<rt>うご</rt></ruby>かなくなりました。<br>*(Như này ạ? Hết lung lay rồi ạ.)* |
| Kondo | それや。<ruby>締<rt>し</rt></ruby>めすぎず<ruby>緩<rt>ゆる</rt></ruby>すぎず。<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えろ。<br>*(Đó. Không quá chặt không quá lỏng. Học bằng tay.)* |
| Thức | <ruby>規定<rt>きてい</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>は<ruby>数字<rt>すうじ</rt></ruby>でありますか?<br>*(Lực quy định có con số không ạ?)* |
| Kondo | あるが、<ruby>現場<rt>げんば</rt></ruby>では<ruby>手<rt>て</rt></ruby>の<ruby>感覚<rt>かんかく</rt></ruby>や。<ruby>抜<rt>ぬ</rt></ruby>き<ruby>取<rt>と</rt></ruby>り<ruby>検査<rt>けんさ</rt></ruby>で<ruby>確<rt>たし</rt></ruby>かめる。<br>*(Có, nhưng ở công trường là cảm giác tay. Kiểm tra mẫu để xác nhận.)* |

---

## Tình huống 5 — Tầng 1 · 9:40, hỏi khi gặp khóa khó vào

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、このクランプ、<ruby>口<rt>くち</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>かなくて<ruby>入<rt>はい</rt></ruby>りません。<br>*(Anh Kondo, cái khóa này không bửa miệng ra được, không vào ạ.)* |
| Kondo | <ruby>無理<rt>むり</rt></ruby>に<ruby>叩<rt>たた</rt></ruby>くなよ。<ruby>錆<rt>さび</rt></ruby>てるかもしれん。<br>*(Đừng cố đập đấy. Có khi bị gỉ.)* |
| Thức | じゃあ<ruby>別<rt>べつ</rt></ruby>のと<ruby>交換<rt>こうかん</rt></ruby>しますか?<br>*(Vậy em đổi cái khác ạ?)* |
| Kondo | そうしろ。<ruby>動<rt>うご</rt></ruby>きが<ruby>悪<rt>わる</rt></ruby>いのは<ruby>使<rt>つか</rt></ruby>わん。<ruby>不良品<rt>ふりょうひん</rt></ruby>はまとめとけ。<br>*(Làm vậy đi. Cái nào rít thì không dùng. Hàng lỗi gom lại.)* |
| Thức | はい、<ruby>不良品<rt>ふりょうひん</rt></ruby>の<ruby>箱<rt>はこ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れます。<br>*(Vâng, em bỏ vào thùng hàng lỗi ạ.)* |
| Kondo | それでええ。<ruby>判断<rt>はんだん</rt></ruby><ruby>早<rt>はや</rt></ruby>なったな。<br>*(Vậy là được. Phán đoán nhanh hơn rồi đấy.)* |

---

## Tình huống 6 — Tầng 2 · 10:10, dựng tầng tiếp, hô hiệu phối hợp

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>二層目<rt>にそうめ</rt></ruby><ruby>行<rt>い</rt></ruby>くで。<ruby>下<rt>した</rt></ruby>から<ruby>支<rt>ささ</rt></ruby>えてくれ。<br>*(Thức, lên tầng hai nhé. Đỡ từ dưới giúp tao.)* |
| Thức | はい、<ruby>支<rt>ささ</rt></ruby>えます。「いきます、せーの」!<br>*(Vâng, em đỡ đây. "Bắt đầu, một hai ba"!)* |
| Kondo | おう、<ruby>位置<rt>いち</rt></ruby>よし。そのまま<ruby>動<rt>うご</rt></ruby>かすな。<br>*(Ờ, vị trí ổn. Cứ giữ đừng động.)* |
| Thức | <ruby>固定<rt>こてい</rt></ruby><ruby>終<rt>お</rt></ruby>わったら<ruby>声<rt>こえ</rt></ruby>かけてください。<br>*(Cố định xong anh hô em nhé.)* |
| Kondo | <ruby>締<rt>し</rt></ruby>めた、<ruby>手<rt>て</rt></ruby><ruby>離<rt>はな</rt></ruby>してええで。<br>*(Xiết rồi, buông tay được rồi.)* |
| Thức | <ruby>了解<rt>りょうかい</rt></ruby>、<ruby>離<rt>はな</rt></ruby>します!<br>*(Rõ, buông tay!)* |

---

## Tình huống 7 — Tầng 2 · 10:40, lắp ván thao tác và lan can

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>足場板<rt>あしばいた</rt></ruby>を<ruby>敷<rt>し</rt></ruby>いて、<ruby>手<rt>て</rt></ruby>すりをつけるで。<br>*(Lát ván thao tác rồi gắn lan can.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりは<ruby>何<rt>なん</rt></ruby>センチの<ruby>高<rt>たか</rt></ruby>さですか?<br>*(Lan can cao bao nhiêu phân ạ?)* |
| Kondo | <ruby>上<rt>うえ</rt></ruby>さんが<ruby>九十<rt>きゅうじゅう</rt></ruby>センチ<ruby>以上<rt>いじょう</rt></ruby>、<ruby>中<rt>なか</rt></ruby>さんも<ruby>要<rt>い</rt></ruby>る。<br>*(Thanh trên từ 90 phân trở lên, thanh giữa cũng cần.)* |
| Thức | <ruby>中<rt>なか</rt></ruby>さんは<ruby>転落<rt>てんらく</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>のためですね?<br>*(Thanh giữa là để chống rơi ngã đúng không ạ?)* |
| Kondo | そうや。<ruby>巾木<rt>はばき</rt></ruby>もつける。<ruby>物<rt>もの</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちんようにな。<br>*(Đúng. Gắn cả thanh chắn chân nữa. Để đồ không rơi xuống.)* |
| Thức | はい、<ruby>上<rt>うえ</rt></ruby>・<ruby>中<rt>なか</rt></ruby>・<ruby>巾木<rt>はばき</rt></ruby>、<ruby>三<rt>みっ</rt></ruby>つ<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, thanh trên, thanh giữa, chắn chân, em nhớ ba thứ ạ.)* |

---

## Tình huống 8 — Tầng 2 · 11:10, anh Long nhắc kiểm tra trước khi lên

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>上<rt>あ</rt></ruby>がる<ruby>前<rt>まえ</rt></ruby>に<ruby>足場<rt>あしば</rt></ruby><ruby>揺<rt>ゆ</rt></ruby>すったか?<br>*(Thức, trước khi leo lên có rung thử giàn chưa?)* |
| Thức | あ、まだです。<ruby>揺<rt>ゆ</rt></ruby>すって<ruby>確<rt>たし</rt></ruby>かめます。<br>*(À, chưa ạ. Em rung thử kiểm tra đây.)* |
| Long | <ruby>必<rt>かなら</rt></ruby>ずやれ。<ruby>緩<rt>ゆる</rt></ruby>んでたら<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。<br>*(Nhất định phải làm. Lỏng là nguy hiểm tính mạng.)* |
| Thức | ガタつきはありません。しっかりしています。<br>*(Không lung lay ạ. Chắc chắn ạ.)* |
| Long | ええ。<ruby>面倒<rt>めんどう</rt></ruby>でも<ruby>毎回<rt>まいかい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>との<ruby>約束<rt>やくそく</rt></ruby>や。<br>*(Tốt. Phiền cũng phải kiểm tra mỗi lần. Hứa với anh đấy.)* |
| Thức | はい、<ruby>約束<rt>やくそく</rt></ruby>します。<br>*(Vâng, em hứa ạ.)* |

---

## Tình huống 9 — Tầng 2 · 11:40, được giao tự xiết một nhịp

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、この<ruby>一<rt>ひと</rt></ruby>スパン、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>締<rt>し</rt></ruby>めてみ。<br>*(Thức, một nhịp này, tự siết thử xem.)* |
| Thức | はい。<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>下<rt>した</rt></ruby>から<ruby>上<rt>うえ</rt></ruby>でいいですか?<br>*(Vâng. Thứ tự từ dưới lên được không ạ?)* |
| Kondo | そうや。<ruby>仮締<rt>かりじ</rt></ruby>めしてから<ruby>本締<rt>ほんじ</rt></ruby>めや。<ruby>一気<rt>いっき</rt></ruby>に<ruby>締<rt>し</rt></ruby>めるな。<br>*(Đúng. Siết tạm rồi siết chặt. Đừng siết một lèo.)* |
| Thức | <ruby>仮締<rt>かりじ</rt></ruby>めは<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えるためですね。<br>*(Siết tạm là để chỉnh dáng tổng thể đúng không ạ?)* |
| Kondo | よう<ruby>分<rt>わ</rt></ruby>かってるな。ゆがみを<ruby>防<rt>ふせ</rt></ruby>ぐためや。<br>*(Hiểu rõ đấy. Để tránh bị vênh.)* |
| Thức | はい、<ruby>仮締<rt>かりじ</rt></ruby>めから<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Vâng, em bắt đầu từ siết tạm ạ.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, anh Long tâm sự về nghề (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, hôm nay em được tự xiết một nhịp giàn. Tay run mà vui anh ạ. |
| Long | Năm hai là vậy đó. Người ta giao tay nghề rồi. Nhưng nhớ, giàn giáo sập là chết người, không đùa được. |
| Thức | Dạ. Em rung thử trước khi lên đúng như anh dặn. |
| Long | Tốt. Cái nghề này anh làm năm thứ ba rồi, vẫn rung thử mỗi lần. Cẩn thận không bao giờ thừa. |
| Thức | Em nhớ ạ. Có anh chỉ em đỡ sợ. |
| Long | Cứ hỏi. Ăn cơm đi rồi chiều còn dựng tiếp. |

---

## Tình huống 11 — Tầng 2 · 13:00, Kondo nghiệm thu nhịp Thức làm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>スパン<ruby>締<rt>し</rt></ruby>め<ruby>終<rt>お</rt></ruby>わりました。<ruby>点検<rt>てんけん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Kondo, em siết xong một nhịp. Nhờ anh kiểm tra ạ.)* |
| Kondo | どれ...<ruby>一本<rt>いっぽん</rt></ruby>ずつ<ruby>触<rt>さわ</rt></ruby>るで。<br>*(Đâu... tao sờ từng cây.)* |
| Thức | <ruby>緩<rt>ゆる</rt></ruby>いところがあったら<ruby>言<rt>い</rt></ruby>ってください。<br>*(Chỗ nào lỏng anh chỉ em ạ.)* |
| Kondo | お、ぜんぶ<ruby>効<rt>き</rt></ruby>いてる。ゆがみもない。<ruby>合格<rt>ごうかく</rt></ruby>や。<br>*(Ồ, ăn hết. Không vênh. Đạt.)* |
| Thức | ありがとうございます。<ruby>仮締<rt>かりじ</rt></ruby>めのおかげですね。<br>*(Em cảm ơn ạ. Nhờ siết tạm trước nhỉ.)* |
| Kondo | そうや、<ruby>段取<rt>だんど</rt></ruby>りが<ruby>身<rt>み</rt></ruby>についてきたな。<br>*(Đúng, biết bố trí trình tự rồi đấy.)* |

---

## Tình huống 12 — Tầng 3 · 13:40, sử dụng フルハーネス trên cao

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>三層目<rt>さんそうめ</rt></ruby>です。フルハーネスを<ruby>掛<rt>か</rt></ruby>けてください。<br>*(Thức, tầng thứ ba. Móc dây toàn thân vào nhé.)* |
| Thức | はい。<ruby>掛<rt>か</rt></ruby>ける<ruby>場所<rt>ばしょ</rt></ruby>はどこがいいですか?<br>*(Vâng. Móc vào chỗ nào thì tốt ạ?)* |
| Saito | <ruby>腰<rt>こし</rt></ruby>より<ruby>高<rt>たか</rt></ruby>い<ruby>丈夫<rt>じょうぶ</rt></ruby>な<ruby>単管<rt>たんかん</rt></ruby>です。<ruby>低<rt>ひく</rt></ruby>いと<ruby>意味<rt>いみ</rt></ruby>がありません。<br>*(Cây ống thép chắc cao hơn thắt lưng. Thấp thì vô nghĩa.)* |
| Thức | <ruby>移動<rt>いどう</rt></ruby>するときは、どうしますか?<br>*(Khi di chuyển thì làm sao ạ?)* |
| Saito | フックは<ruby>二<rt>ふた</rt></ruby>つ。<ruby>片方<rt>かたほう</rt></ruby>ずつ<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えます。<ruby>両方<rt>りょうほう</rt></ruby><ruby>外<rt>はず</rt></ruby>さない。<br>*(Hai móc. Đổi từng cái một. Không tháo cả hai.)* |
| Thức | はい、<ruby>常<rt>つね</rt></ruby>にどちらか<ruby>掛<rt>か</rt></ruby>けておきます。<br>*(Vâng, luôn móc một trong hai cái ạ.)* |

---

## Tình huống 13 — Tầng 3 · 14:10, hỏi khi gió mạnh

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなってきました。<ruby>続<rt>つづ</rt></ruby>けますか?<br>*(Anh Saito, gió mạnh lên rồi. Mình làm tiếp ạ?)* |
| Saito | ええ<ruby>気<rt>き</rt></ruby>づきや。<ruby>風速<rt>ふうそく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>するわ。<br>*(Để ý tốt đấy. Để tôi kiểm tra tốc độ gió.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Trên giàn giáo đặc biệt sợ ạ.)* |
| Saito | <ruby>十<rt>じゅう</rt></ruby>メートルを<ruby>超<rt>こ</rt></ruby>えたら<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>中止<rt>ちゅうし</rt></ruby>です。<ruby>規則<rt>きそく</rt></ruby>です。<br>*(Vượt 10 mét/giây thì dừng làm trên cao. Là quy định.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>しないことが<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Không cố quá là quan trọng nhỉ.)* |
| Saito | そうです。<ruby>命<rt>いのち</rt></ruby>より<ruby>大事<rt>だいじ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>はありません。<br>*(Đúng. Không có công việc nào quan trọng hơn tính mạng.)* |

---

## Tình huống 14 — Tầng 2 · 14:40, xử lý khi siết quá làm hỏng ren

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>締<rt>し</rt></ruby>めすぎてネジが<ruby>空回<rt>からまわ</rt></ruby>りします。<br>*(Anh Kondo, em siết quá nên ốc bị trượt ren ạ.)* |
| Kondo | あー、なめたな。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うてくれてよかった。<br>*(À, trượt ren rồi. May là cậu nói thật.)* |
| Thức | <ruby>隠<rt>かく</rt></ruby>したら<ruby>危<rt>あぶ</rt></ruby>ないと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Em nghĩ giấu thì nguy hiểm ạ.)* |
| Kondo | そのとおりや。<ruby>隠<rt>かく</rt></ruby>すのが<ruby>一番<rt>いちばん</rt></ruby>あかん。<ruby>交換<rt>こうかん</rt></ruby>すればええだけや。<br>*(Đúng vậy. Giấu là tệ nhất. Chỉ cần thay là xong.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>からは<ruby>効<rt>き</rt></ruby>いた<ruby>感覚<rt>かんかく</rt></ruby>で<ruby>止<rt>と</rt></ruby>めます。<br>*(Từ sau em sẽ dừng ở cảm giác "ăn" rồi ạ.)* |
| Kondo | それでええ。<ruby>失敗<rt>しっぱい</rt></ruby>は<ruby>報告<rt>ほうこく</rt></ruby>すれば<ruby>失敗<rt>しっぱい</rt></ruby>やない。<br>*(Vậy là được. Lỗi mà báo cáo thì không còn là lỗi.)* |

---

## Tình huống 15 — Tầng 3 · 15:00, phối hợp ba người dựng dầm dài

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、フン、<ruby>長<rt>なが</rt></ruby>い<ruby>単管<rt>たんかん</rt></ruby>を<ruby>三人<rt>さんにん</rt></ruby>で<ruby>上<rt>あ</rt></ruby>げるで。<br>*(Thức, Hùng, cây ống thép dài ba người cùng đưa lên.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>が<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby><ruby>持<rt>も</rt></ruby>ちます。フンは<ruby>先端<rt>せんたん</rt></ruby>。<br>*(Tôi giữ giữa. Hùng giữ đầu mũi.)* |
| Hùng | <ruby>合図<rt>あいず</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>出<rt>だ</rt></ruby>す?<br>*(Ai ra hiệu lệnh?)* |
| Kondo | <ruby>俺<rt>おれ</rt></ruby>が<ruby>出<rt>だ</rt></ruby>す。「いち、に、さん」で<ruby>上<rt>あ</rt></ruby>げろ。<br>*(Tao ra. "Một, hai, ba" thì nâng.)* |
| Thức | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>声<rt>こえ</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせていきましょう。<br>*(Rõ. Hô đồng thanh nào.)* |
| Kondo | いち、に、さん!よし、<ruby>上<rt>あ</rt></ruby>がった。<br>*(Một, hai, ba! Được, lên rồi.)* |

---

## Tình huống 16 — Tầng 3 · 15:30, hỏi về 筋交い (giằng chéo)

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>筋交<rt>すじか</rt></ruby>いはどうして<ruby>斜<rt>なな</rt></ruby>めに<ruby>入<rt>い</rt></ruby>れるんですか?<br>*(Anh Kondo, sao thanh giằng lại lắp chéo ạ?)* |
| Kondo | ええ<ruby>質問<rt>しつもん</rt></ruby>や。<ruby>横<rt>よこ</rt></ruby>の<ruby>揺<rt>ゆ</rt></ruby>れを<ruby>止<rt>と</rt></ruby>めるためや。<br>*(Câu hỏi hay. Để chặn rung lắc ngang.)* |
| Thức | <ruby>筋交<rt>すじか</rt></ruby>いがないと<ruby>倒<rt>たお</rt></ruby>れますか?<br>*(Không có thanh giằng thì đổ ạ?)* |
| Kondo | <ruby>地震<rt>じしん</rt></ruby>や<ruby>風<rt>かぜ</rt></ruby>でぐらつく。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>省<rt>はぶ</rt></ruby>くな。<br>*(Động đất hay gió là lung lay. Tuyệt đối không bỏ.)* |
| Thức | <ruby>抜<rt>ぬ</rt></ruby>いてはいけない<ruby>部材<rt>ぶざい</rt></ruby>ですね。<br>*(Là cấu kiện không được tháo nhỉ.)* |
| Kondo | そのとおり。<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>部材<rt>ぶざい</rt></ruby>や。<br>*(Đúng vậy. Là cấu kiện bảo vệ tính mạng.)* |

---

## Tình huống 17 — Tầng 3 · 16:00, đề xuất sửa lối lên xuống

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>昇降<rt>しょうこう</rt></ruby><ruby>階段<rt>かいだん</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>、ちょっと<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, vị trí cầu thang lên xuống, em có chút đề xuất ạ.)* |
| Saito | <ruby>言<rt>い</rt></ruby>ってみてください。<br>*(Nói thử xem.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>資材<rt>しざい</rt></ruby>と<ruby>近<rt>ちか</rt></ruby>すぎて<ruby>危<rt>あぶ</rt></ruby>ない<ruby>気<rt>き</rt></ruby>がします。<br>*(Chỗ hiện tại quá gần vật tư, em thấy hơi nguy hiểm ạ.)* |
| Saito | たしかにそうやな。<ruby>動線<rt>どうせん</rt></ruby>がぶつかる。ええ<ruby>指摘<rt>してき</rt></ruby>や。<br>*(Đúng thật. Tuyến di chuyển va nhau. Chỉ ra hay đấy.)* |
| Thức | <ruby>反対側<rt>はんたいがわ</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>したらどうでしょうか?<br>*(Chuyển sang phía đối diện thì sao ạ?)* |
| Saito | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>してみる。<ruby>気<rt>き</rt></ruby>づいてくれて<ruby>助<rt>たす</rt></ruby>かった。<br>*(Tôi sẽ bàn với cai. Để ý ra giúp tôi đỡ lắm.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo tiến độ dựng giàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>三層目<rt>さんそうめ</rt></ruby>まで<ruby>建<rt>た</rt></ruby>て<ruby>込<rt>こ</rt></ruby>みました。<br>*(Anh Tanigawa, hôm nay đã dựng giàn xong đến tầng thứ ba ạ.)* |
| Tanigawa | <ruby>締<rt>し</rt></ruby>め<ruby>付<rt>つ</rt></ruby>けの<ruby>抜<rt>ぬ</rt></ruby>き<ruby>取<rt>と</rt></ruby>り<ruby>検査<rt>けんさ</rt></ruby>は?<br>*(Kiểm tra mẫu lực siết thì sao?)* |
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>が<ruby>確認<rt>かくにん</rt></ruby>して、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>でした。ネジを<ruby>一<rt>ひと</rt></ruby>つなめたので<ruby>交換<rt>こうかん</rt></ruby>しました。<br>*(Anh Saito kiểm tra, tất cả đạt ạ. Em làm trượt một ren nên đã thay rồi ạ.)* |
| Tanigawa | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うのがええ。<ruby>隠<rt>かく</rt></ruby>す<ruby>奴<rt>やつ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>あかん。<br>*(Nói thật là tốt. Đứa giấu mới là tệ nhất.)* |
| Thức | はい、<ruby>明日<rt>あした</rt></ruby>は<ruby>四層目<rt>よんそうめ</rt></ruby>からです。<br>*(Vâng, mai bắt đầu từ tầng thứ tư ạ.)* |
| Tanigawa | <ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くな。<ruby>高<rt>たか</rt></ruby>くなるほど<ruby>怖<rt>こわ</rt></ruby>いぞ。<br>*(Đừng lơ là. Càng lên cao càng đáng sợ đấy.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Saito đánh giá tiến bộ

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>声<rt>こえ</rt></ruby>かけが<ruby>上手<rt>じょうず</rt></ruby>になりましたね。<br>*(Thức, hô hiệu giỏi lên rồi nhỉ.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さいと<ruby>危<rt>あぶ</rt></ruby>ないと<ruby>教<rt>おそ</rt></ruby>わったので。<br>*(Em được dạy hô nhỏ là nguy hiểm ạ.)* |
| Saito | そのとおりです。チームの<ruby>安全<rt>あんぜん</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>まります。<br>*(Đúng vậy. An toàn của cả đội bắt đầu từ tiếng hô.)* |
| Thức | <ruby>提案<rt>ていあん</rt></ruby>も<ruby>聞<rt>き</rt></ruby>いてもらえて、うれしかったです。<br>*(Đề xuất cũng được lắng nghe, em vui lắm ạ.)* |
| Saito | いい<ruby>視点<rt>してん</rt></ruby>でした。これからも<ruby>気<rt>き</rt></ruby>づいたら<ruby>言<rt>い</rt></ruby>ってください。<br>*(Góc nhìn tốt. Sau này để ý gì cứ nói nhé.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, em nhất định sẽ nói ạ.)* |

---

## Tình huống 20 — Tầng 3 · 17:00, kiểm tra cuối ngày trước khi xuống

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>帰<rt>かえ</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>最終<rt>さいしゅう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>や。<br>*(Thức, trước khi về kiểm tra lần cuối.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すり、<ruby>筋交<rt>すじか</rt></ruby>い、<ruby>巾木<rt>はばき</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Lan can, thanh giằng, chắn chân, em kiểm tra hết rồi ạ.)* |
| Kondo | <ruby>工具<rt>こうぐ</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>ってないか?<br>*(Còn sót dụng cụ trên giàn không?)* |
| Thức | ラチェット<ruby>一本<rt>いっぽん</rt></ruby>あったので<ruby>下<rt>お</rt></ruby>ろしました。<ruby>落下物<rt>らっかぶつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>です。<br>*(Có một cây cờ lê nên em đã hạ xuống. Để chống rơi vật ạ.)* |
| Kondo | きっちりやな。それが<ruby>とび<rt>とび</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>や。<br>*(Chu đáo đấy. Đó là cơ bản của thợ tobi.)* |
| Thức | はい、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, anh vất vả rồi ạ.)* |

---

## Đọng lại

Thức tham gia 建て込み thật sự: đưa vật liệu, xiết クランプ bằng ラチェット, phân biệt khóa cố định và khóa xoay, siết tạm rồi siết chặt, lắp lan can ba thanh và 筋交い. Em học hô hiệu phối hợp, dùng フルハーネス trên cao, dừng việc khi gió mạnh, và quan trọng nhất: báo cáo trung thực khi làm hỏng ren. 親方 nhấn mạnh giấu lỗi là điều tệ nhất trong nghề とび.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 建て込み | たてこみ | dựng giàn giáo |
> | 締め付け | しめつけ | xiết khóa |
> | 固定クランプ | こていくらんぷ | khóa kẹp cố định (vuông góc) |
> | 自在クランプ | じざいくらんぷ | khóa kẹp xoay (góc tự do) |
> | 仮締め | かりじめ | siết tạm |
> | 本締め | ほんじめ | siết chặt cố định |
> | 筋交い | すじかい | thanh giằng chéo |
> | 巾木 | はばき | thanh chắn chân |
> | 手すり | てすり | lan can |
> | 抜き取り検査 | ぬきとりけんさ | kiểm tra mẫu (lấy mẫu) |
> | 昇降階段 | しょうこうかいだん | cầu thang lên xuống |
> | 落下物防止 | らっかぶつぼうし | chống rơi vật |
> | 風速 | ふうそく | tốc độ gió |
> | 部材 | ぶざい | cấu kiện |
> | 段取り | だんどり | bố trí trình tự công việc |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000004, 800000034, NULL, 'markdown_book', 'T4. Phối hợp với tổ cốt thép (鉄筋班との連携)', '# Sách thực tập sinh xây dựng · T4. Phối hợp với tổ cốt thép (鉄筋班との連携)

> **Mục tiêu nhân vật:** Thức học phối hợp giàn giáo với tổ cốt thép (鉄筋班) — điều chỉnh giàn theo tiến độ buộc thép, làm việc liên tổ. Học mẫu câu liên lạc giữa các tổ khác nghề, điều chỉnh giàn theo yêu cầu, thương lượng tiến độ.

---

## Bối cảnh

Tháng 7 năm 2027. Công trường vào giai đoạn cốt thép. Tổ giàn giáo của 谷川親方 phải phối hợp chặt với 鉄筋班 (tổ cốt thép): chỉnh độ cao sàn thao tác theo tiến độ buộc thép, mở/đóng lối, di dời giàn cục bộ. Chương này tập trung mẫu câu giao tiếp liên tổ — nghề khác, ngôn ngữ khác, phải lễ độ và rõ ràng.

---

## Tình huống 1 — Công trường · 7:40, 親方 dặn phối hợp liên tổ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>から<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>班<rt>はん</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>く。<ruby>礼儀<rt>れいぎ</rt></ruby><ruby>正<rt>ただ</rt></ruby>しくな。<br>*(Thức, từ hôm nay phối hợp với tổ cốt thép. Phải lễ phép.)* |
| Thức | はい。<ruby>違<rt>ちが</rt></ruby>う<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>ですか?<br>*(Vâng. Là người công ty khác ạ?)* |
| Tanigawa | <ruby>協力<rt>きょうりょく</rt></ruby><ruby>会社<rt>がいしゃ</rt></ruby>や。<ruby>俺<rt>おれ</rt></ruby>らの<ruby>足場<rt>あしば</rt></ruby>がないと<ruby>仕事<rt>しごと</rt></ruby>でけへん。<br>*(Là công ty hợp tác. Không có giàn của mình thì họ không làm được.)* |
| Thức | こちらの<ruby>都合<rt>つごう</rt></ruby>だけで<ruby>動<rt>うご</rt></ruby>かしたらだめですね。<br>*(Không được tự ý làm theo ý mình bên này nhỉ.)* |
| Tanigawa | そのとおり。<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>をかけ<ruby>合<rt>あ</rt></ruby>え。<br>*(Đúng vậy. Nhất định phải trao đổi với nhau.)* |
| Thức | はい、<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>動<rt>うご</rt></ruby>かします。<br>*(Vâng, em xác nhận rồi mới điều chỉnh ạ.)* |

---

## Tình huống 2 — Khu cốt thép · 8:00, chào hỏi tổ trưởng cốt thép

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>足場<rt>あしば</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>のトゥックと<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào buổi sáng. Em là Thức, phụ trách giàn giáo ạ.)* |
| Tổ trưởng cốt thép | ああ、<ruby>谷川<rt>たにがわ</rt></ruby>さんとこの。よろしく。<br>*(À, chỗ anh Tanigawa. Mong cậu.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>のことで<ruby>困<rt>こま</rt></ruby>ったら、<ruby>私<rt>わたし</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってください。<br>*(Có gì khó về giàn giáo, anh cứ nói với em ạ.)* |
| Tổ trưởng cốt thép | ええ<ruby>子<rt>こ</rt></ruby>やな。<ruby>早速<rt>さっそく</rt></ruby>やが、ここの<ruby>板<rt>いた</rt></ruby>、<ruby>一枚<rt>いちまい</rt></ruby><ruby>外<rt>はず</rt></ruby>せるか?<br>*(Cậu được đấy. Nói luôn nhé, tấm ván chỗ này, gỡ một tấm được không?)* |
| Thức | すぐは<ruby>判断<rt>はんだん</rt></ruby>できません。<ruby>親方<rt>おやかた</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>して<ruby>返事<rt>へんじ</rt></ruby>します。<br>*(Em chưa quyết ngay được. Em hỏi cai rồi trả lời ạ.)* |
| Tổ trưởng cốt thép | それでええ。<ruby>勝手<rt>かって</rt></ruby>に<ruby>外<rt>はず</rt></ruby>されても<ruby>困<rt>こま</rt></ruby>るしな。<br>*(Vậy là được. Tự ý gỡ thì cũng phiền.)* |

---

## Tình huống 3 — Công trường · 8:20, báo cáo yêu cầu liên tổ lên 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>班<rt>はん</rt></ruby>から<ruby>依頼<rt>いらい</rt></ruby>です。<ruby>足場板<rt>あしばいた</rt></ruby>を<ruby>一枚<rt>いちまい</rt></ruby><ruby>外<rt>はず</rt></ruby>したいそうです。<br>*(Anh Tanigawa, tổ cốt thép yêu cầu ạ. Họ muốn gỡ một tấm ván giàn ạ.)* |
| Tanigawa | どこの<ruby>板<rt>いた</rt></ruby>や?<ruby>場所<rt>ばしょ</rt></ruby>は?<br>*(Tấm ván chỗ nào? Vị trí?)* |
| Thức | <ruby>東側<rt>ひがしがわ</rt></ruby>、<ruby>柱<rt>はしら</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>くです。<ruby>鉄筋<rt>てっきん</rt></ruby>を<ruby>差<rt>さ</rt></ruby>し<ruby>込<rt>こ</rt></ruby>むためだそうです。<br>*(Phía đông, gần cột ạ. Để luồn cốt thép vào ạ.)* |
| Tanigawa | <ruby>一枚<rt>いちまい</rt></ruby>だけならええ。ただし<ruby>開口部<rt>かいこうぶ</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>せ。<br>*(Chỉ một tấm thì được. Nhưng phải treo biển báo chỗ lỗ hở.)* |
| Thức | <ruby>転落<rt>てんらく</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>の<ruby>表示<rt>ひょうじ</rt></ruby>ですね。<ruby>必<rt>かなら</rt></ruby>ず<ruby>出<rt>だ</rt></ruby>します。<br>*(Biển "cẩn thận rơi ngã" ạ. Em nhất định treo ạ.)* |
| Tanigawa | それから<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら、すぐ<ruby>戻<rt>もど</rt></ruby>せ。<br>*(Với cả xong việc thì lắp lại ngay.)* |

---

## Tình huống 4 — Khu cốt thép · 8:40, truyền đạt lại quyết định

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>一枚<rt>いちまい</rt></ruby>だけなら<ruby>外<rt>はず</rt></ruby>せます。<br>*(Em hỏi cai rồi ạ. Chỉ một tấm thì gỡ được ạ.)* |
| Tổ trưởng cốt thép | おお、はやいな。たすかるわ。<br>*(Ồ, nhanh nhỉ. Đỡ quá.)* |
| Thức | ただ、<ruby>条件<rt>じょうけん</rt></ruby>があります。<ruby>開口部<rt>かいこうぶ</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Nhưng có điều kiện ạ. Em sẽ treo biển báo chỗ lỗ hở ạ.)* |
| Tổ trưởng cốt thép | <ruby>当然<rt>とうぜん</rt></ruby>や。<ruby>俺<rt>おれ</rt></ruby>らも<ruby>気<rt>き</rt></ruby>をつける。<br>*(Đương nhiên. Bọn anh cũng sẽ chú ý.)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら<ruby>声<rt>こえ</rt></ruby>をかけてください。すぐ<ruby>戻<rt>もど</rt></ruby>します。<br>*(Xong việc anh gọi em nhé. Em lắp lại ngay ạ.)* |
| Tổ trưởng cốt thép | わかった。<ruby>連絡<rt>れんらく</rt></ruby>するわ。<br>*(Hiểu rồi. Anh sẽ báo.)* |

---

## Tình huống 5 — Khu cốt thép · 9:10, đặt biển báo lỗ hở

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>開口部<rt>かいこうぶ</rt></ruby>の<ruby>表示<rt>ひょうじ</rt></ruby>はこれでいいですか?<br>*(Anh Kondo, biển báo lỗ hở như này được chưa ạ?)* |
| Kondo | <ruby>表示<rt>ひょうじ</rt></ruby>だけやと<ruby>弱<rt>よわ</rt></ruby>い。カラーコーンとバーも<ruby>置<rt>お</rt></ruby>け。<br>*(Chỉ biển báo thì yếu. Đặt thêm cọc tiêu và thanh chắn.)* |
| Thức | <ruby>囲<rt>かこ</rt></ruby>って<ruby>近<rt>ちか</rt></ruby>づけないようにするんですね。<br>*(Quây lại không cho lại gần ạ?)* |
| Kondo | そや。<ruby>人<rt>ひと</rt></ruby>は<ruby>表示<rt>ひょうじ</rt></ruby>だけやと<ruby>見<rt>み</rt></ruby><ruby>落<rt>お</rt></ruby>とす。<ruby>物理<rt>ぶつり</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>止<rt>と</rt></ruby>めるんや。<br>*(Đúng. Người ta chỉ có biển thì bỏ sót. Phải chặn bằng vật lý.)* |
| Thức | なるほど、<ruby>見<rt>み</rt></ruby>えても<ruby>入<rt>はい</rt></ruby>れないように、ですね。<br>*(Hiểu rồi, nhìn thấy mà vẫn không vào được nhỉ.)* |
| Kondo | そうや。それが<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>や。<br>*(Đúng. Đó mới là biện pháp an toàn thật sự.)* |

---

## Tình huống 6 — Khu cốt thép · 9:40, hỏi khi tổ cốt thép xin thêm

| Vai | Lời thoại |
|---|---|
| Thợ cốt thép | トゥックくん、もう<ruby>一枚<rt>いちまい</rt></ruby><ruby>外<rt>はず</rt></ruby>せへんか?<ruby>鉄筋<rt>てっきん</rt></ruby>が<ruby>長<rt>なが</rt></ruby>くてな。<br>*(Thức, gỡ thêm một tấm nữa được không? Cốt thép dài quá.)* |
| Thức | すみません、<ruby>聞<rt>き</rt></ruby>いているのは<ruby>一枚<rt>いちまい</rt></ruby>だけです。<br>*(Em xin lỗi, em chỉ được phép một tấm thôi ạ.)* |
| Thợ cốt thép | ちょっとくらいええやろ?<ruby>急<rt>いそ</rt></ruby>いでるんや。<br>*(Thêm chút thì sao? Đang vội mà.)* |
| Thức | <ruby>気持<rt>きも</rt></ruby>ちは<ruby>分<rt>わ</rt></ruby>かりますが、<ruby>勝手<rt>かって</rt></ruby>には<ruby>決<rt>き</rt></ruby>められません。すぐ<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em hiểu ạ, nhưng em không tự quyết được. Em hỏi ngay ạ.)* |
| Thợ cốt thép | ...まあ、それが<ruby>正<rt>ただ</rt></ruby>しいわな。<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(...Thôi, vậy là đúng. Nhờ cậu.)* |
| Thức | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>待<rt>ま</rt></ruby>ってください。<br>*(Vâng, anh chờ em một chút ạ.)* |

---

## Tình huống 7 — Công trường · 9:50, xin chỉ thị thêm từ 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>班<rt>はん</rt></ruby>がもう<ruby>一枚<rt>いちまい</rt></ruby><ruby>外<rt>はず</rt></ruby>したいと<ruby>言<rt>い</rt></ruby>っています。<br>*(Anh Tanigawa, tổ cốt thép muốn gỡ thêm một tấm nữa ạ.)* |
| Tanigawa | <ruby>断<rt>ことわ</rt></ruby>らんと<ruby>来<rt>き</rt></ruby>たんやな。ええ<ruby>判断<rt>はんだん</rt></ruby>や。<br>*(Không tự ý từ chối mà đến hỏi nhỉ. Phán đoán tốt.)* |
| Thức | <ruby>二枚<rt>にまい</rt></ruby><ruby>外<rt>はず</rt></ruby>すと<ruby>危<rt>あぶ</rt></ruby>ないですか?<br>*(Gỡ hai tấm thì nguy hiểm ạ?)* |
| Tanigawa | <ruby>二枚<rt>にまい</rt></ruby>なら<ruby>俺<rt>おれ</rt></ruby>が<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>く。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来<rt>こ</rt></ruby>い。<br>*(Hai tấm thì tao đi xem. Đi cùng tao.)* |
| Thức | はい、<ruby>現場<rt>げんば</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>決<rt>き</rt></ruby>めるんですね。<br>*(Vâng, ra hiện trường xem rồi quyết nhỉ.)* |
| Tanigawa | そや。<ruby>図面<rt>ずめん</rt></ruby>と<ruby>現場<rt>げんば</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>うからな。<br>*(Đúng. Bản vẽ với hiện trường khác nhau mà.)* |

---

## Tình huống 8 — Khu cốt thép · 10:20, ba bên thống nhất phương án

| Vai | Lời thoại |
|---|---|
| Tanigawa | こうしよう。<ruby>二枚<rt>にまい</rt></ruby><ruby>外<rt>はず</rt></ruby>す<ruby>代<rt>か</rt></ruby>わりに、<ruby>命綱<rt>いのちづな</rt></ruby>を<ruby>張<rt>は</rt></ruby>る。<br>*(Làm thế này. Gỡ hai tấm nhưng đổi lại căng dây cứu sinh.)* |
| Tổ trưởng cốt thép | ありがたい。<ruby>安全帯<rt>あんぜんたい</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けられるな。<br>*(Cảm ơn. Vậy là móc được dây an toàn.)* |
| Thức | <ruby>親綱<rt>おやづな</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>張<rt>は</rt></ruby>ります。<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Dây trục để em căng. Anh chỉ em vị trí ạ.)* |
| Tanigawa | トゥック、<ruby>両端<rt>りょうたん</rt></ruby>をしっかり<ruby>固定<rt>こてい</rt></ruby>せえよ。<ruby>命<rt>いのち</rt></ruby>がかかる。<br>*(Thức, hai đầu cố định cho chắc nhé. Tính mạng đấy.)* |
| Thức | はい、<ruby>固定<rt>こてい</rt></ruby>クランプ<ruby>二<rt>ふた</rt></ruby>つで<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>留<rt>と</rt></ruby>めます。<br>*(Vâng, em dùng hai khóa cố định bắt thật chắc ạ.)* |
| Tổ trưởng cốt thép | おかげで<ruby>安心<rt>あんしん</rt></ruby>して<ruby>作業<rt>さぎょう</rt></ruby>でけるわ。<br>*(Nhờ vậy mà bọn anh yên tâm làm việc.)* |

---

## Tình huống 9 — Khu cốt thép · 11:00, hỏi cách tránh vướng cốt thép

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>鉄筋<rt>てっきん</rt></ruby>が<ruby>足場<rt>あしば</rt></ruby>にぶつかっています。どうしますか?<br>*(Anh Kondo, cốt thép va vào giàn giáo ạ. Em làm sao ạ?)* |
| Kondo | どこや?...ああ、<ruby>支柱<rt>しちゅう</rt></ruby>が<ruby>邪魔<rt>じゃま</rt></ruby>になっとるな。<br>*(Đâu?... À, cây cột vướng rồi nhỉ.)* |
| Thức | <ruby>支柱<rt>しちゅう</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かせますか?<br>*(Dời cột được không ạ?)* |
| Kondo | <ruby>支柱<rt>しちゅう</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>や。<ruby>足場<rt>あしば</rt></ruby>の<ruby>骨組<rt>ほねぐ</rt></ruby>みやからな。<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>側<rt>がわ</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>してもらえ。<br>*(Cột thì không được. Là khung của giàn mà. Nhờ bên cốt thép điều chỉnh.)* |
| Thức | <ruby>双方<rt>そうほう</rt></ruby>で<ruby>相談<rt>そうだん</rt></ruby>するんですね。<br>*(Hai bên cùng bàn nhỉ.)* |
| Kondo | そや。<ruby>勝手<rt>かって</rt></ruby>に<ruby>骨組<rt>ほねぐ</rt></ruby>みは<ruby>触<rt>さわ</rt></ruby>るな。<br>*(Đúng. Đừng tự ý động vào khung.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, anh Long bàn về phối hợp liên tổ (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, hôm nay em làm với tổ cốt thép. Họ giục gỡ ván mà em không dám tự quyết. |
| Long | Em làm đúng đó. Tổ khác giục là chuyện thường, nhưng giàn là mạng người. Cứ "để em hỏi cai" là an toàn nhất. |
| Thức | Em sợ họ nghĩ mình khó tính, làm chậm việc họ. |
| Long | Không đâu. Người làm lâu năm họ tôn trọng đứa cẩn thận. Đứa dễ dãi mới đáng lo. |
| Thức | Dạ, em hiểu rồi. Phối hợp mà vẫn giữ nguyên tắc anh nhỉ. |
| Long | Đúng. Lễ phép nhưng không nhân nhượng cái an toàn. Ăn cơm đi. |

---

## Tình huống 11 — Công trường · 13:00, điều chỉnh cao độ sàn theo yêu cầu

| Vai | Lời thoại |
|---|---|
| Tổ trưởng cốt thép | トゥックくん、<ruby>作業床<rt>さぎょうゆか</rt></ruby>がちょっと<ruby>低<rt>ひく</rt></ruby>いんや。<ruby>上<rt>あ</rt></ruby>げられるか?<br>*(Thức, sàn thao tác hơi thấp. Nâng lên được không?)* |
| Thức | どのくらい<ruby>上<rt>あ</rt></ruby>げればいいですか?<br>*(Nâng lên cỡ nào ạ?)* |
| Tổ trưởng cốt thép | <ruby>三十<rt>さんじゅう</rt></ruby>センチくらいや。<ruby>腰<rt>こし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>くてかなわん。<br>*(Khoảng 30 phân. Đau lưng chịu không nổi.)* |
| Thức | <ruby>段<rt>だん</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つ<ruby>変<rt>か</rt></ruby>える<ruby>作業<rt>さぎょう</rt></ruby>です。<ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>します。<br>*(Là việc đổi một bậc ạ. Em sẽ bàn với anh Kondo.)* |
| Tổ trưởng cốt thép | <ruby>無理<rt>むり</rt></ruby><ruby>言<rt>い</rt></ruby>うてすまんな。<br>*(Xin lỗi đã làm khó cậu.)* |
| Thức | いえ、<ruby>働<rt>はたら</rt></ruby>きやすいのが<ruby>一番<rt>いちばん</rt></ruby>です。<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Không ạ, dễ làm việc là quan trọng nhất. Em sẽ điều chỉnh ạ.)* |

---

## Tình huống 12 — Sàn thao tác · 13:40, phối hợp Hùng nâng sàn

| Vai | Lời thoại |
|---|---|
| Thức | フン、<ruby>作業床<rt>さぎょうゆか</rt></ruby>を<ruby>一段<rt>いちだん</rt></ruby><ruby>上<rt>あ</rt></ruby>げる。<ruby>手伝<rt>てつだ</rt></ruby>って。<br>*(Hùng, nâng sàn thao tác lên một bậc. Giúp tôi.)* |
| Hùng | <ruby>板<rt>いた</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>外<rt>はず</rt></ruby>す?<br>*(Gỡ ván ra trước hả?)* |
| Thức | そう。<ruby>外<rt>はず</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に「<ruby>外<rt>はず</rt></ruby>すよ」って<ruby>下<rt>した</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>かけて。<br>*(Đúng. Trước khi gỡ thì hô xuống dưới "gỡ ván đây".)* |
| Hùng | <ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>がおったら<ruby>危<rt>あぶ</rt></ruby>ないもんな。<br>*(Dưới có người thì nguy hiểm thật.)* |
| Thức | クランプの<ruby>位置<rt>いち</rt></ruby>を<ruby>変<rt>か</rt></ruby>えてから<ruby>板<rt>いた</rt></ruby>を<ruby>戻<rt>もど</rt></ruby>そう。<br>*(Đổi vị trí khóa rồi mới lắp ván lại nhé.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>声<rt>こえ</rt></ruby>かけ<ruby>合<rt>あ</rt></ruby>いながらやろう。<br>*(Rõ. Vừa làm vừa hô nhau nhé.)* |

---

## Tình huống 13 — Sàn thao tác · 14:20, báo cáo đã điều chỉnh xong

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>作業床<rt>さぎょうゆか</rt></ruby>、<ruby>三十<rt>さんじゅう</rt></ruby>センチ<ruby>上<rt>あ</rt></ruby>げました。<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Sàn thao tác em nâng 30 phân rồi ạ. Anh kiểm tra giúp ạ.)* |
| Tổ trưởng cốt thép | お、ちょうどええ<ruby>高<rt>たか</rt></ruby>さや。<ruby>腰<rt>こし</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>になったわ。<br>*(Ồ, độ cao vừa đẹp. Lưng đỡ rồi.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりと<ruby>巾木<rt>はばき</rt></ruby>も<ruby>付<rt>つ</rt></ruby>け<ruby>直<rt>なお</rt></ruby>しました。<br>*(Lan can với chắn chân em lắp lại rồi ạ.)* |
| Tổ trưởng cốt thép | <ruby>細<rt>こま</rt></ruby>かいとこまでようやってくれる。たすかるわ。<br>*(Làm tới cả chi tiết nhỏ. Đỡ thật.)* |
| Thức | <ruby>揺<rt>ゆ</rt></ruby>すって<ruby>確認<rt>かくにん</rt></ruby>もしました。ガタつきはありません。<br>*(Em rung thử kiểm tra rồi. Không lung lay ạ.)* |
| Tổ trưởng cốt thép | きっちりしとるな。<ruby>谷川<rt>たにがわ</rt></ruby>さんにも<ruby>言<rt>い</rt></ruby>うとくわ。<br>*(Chu đáo đấy. Anh sẽ nói với anh Tanigawa luôn.)* |

---

## Tình huống 14 — Công trường · 14:50, 親方 nghe phản hồi tốt từ liên tổ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>班<rt>はん</rt></ruby>の<ruby>親方<rt>おやかた</rt></ruby>がお<ruby>前<rt>まえ</rt></ruby>を<ruby>褒<rt>ほ</rt></ruby>めとったぞ。<br>*(Thức, cai tổ cốt thép khen cậu đấy.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか?うれしいです。<br>*(Thật ạ? Em vui quá ạ.)* |
| Tanigawa | <ruby>断<rt>ことわ</rt></ruby>るときも<ruby>失礼<rt>しつれい</rt></ruby>がなかったと。それが<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Lúc từ chối cũng không thất lễ. Cái đó quan trọng.)* |
| Thức | <ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>気<rt>き</rt></ruby>をつけました。<ruby>気持<rt>きも</rt></ruby>ちは<ruby>分<rt>わ</rt></ruby>かると<ruby>言<rt>い</rt></ruby>ってから<ruby>断<rt>ことわ</rt></ruby>りました。<br>*(Em chú ý cách nói ạ. Em nói "em hiểu mà" rồi mới từ chối ạ.)* |
| Tanigawa | それがプロの<ruby>仕事<rt>しごと</rt></ruby>や。<ruby>技術<rt>ぎじゅつ</rt></ruby>より<ruby>難<rt>むずか</rt></ruby>しいんやで、それが。<br>*(Đó mới là làm việc chuyên nghiệp. Cái đó khó hơn kỹ thuật đấy.)* |
| Thức | はい、<ruby>言葉<rt>ことば</rt></ruby>も<ruby>仕事<rt>しごと</rt></ruby>のうちですね。<br>*(Vâng, lời nói cũng là một phần công việc nhỉ.)* |

---

## Tình huống 15 — Khu cốt thép · 15:10, lắp lại ván sau khi tổ cốt thép xong

| Vai | Lời thoại |
|---|---|
| Thợ cốt thép | トゥックくん、こっちの<ruby>作業<rt>さぎょう</rt></ruby>は<ruby>終<rt>お</rt></ruby>わった。<ruby>板<rt>いた</rt></ruby><ruby>戻<rt>もど</rt></ruby>してええで。<br>*(Thức, việc bên này xong rồi. Lắp ván lại được rồi.)* |
| Thức | はい、すぐ<ruby>戻<rt>もど</rt></ruby>します。<ruby>下<rt>した</rt></ruby>に<ruby>誰<rt>だれ</rt></ruby>もいませんか?<br>*(Vâng, em lắp lại ngay. Dưới có ai không ạ?)* |
| Thợ cốt thép | おらん。<ruby>確認<rt>かくにん</rt></ruby>したわ。<br>*(Không. Anh kiểm tra rồi.)* |
| Thức | ありがとうございます。<ruby>念<rt>ねん</rt></ruby>のため<ruby>私<rt>わたし</rt></ruby>ももう<ruby>一度<rt>いちど</rt></ruby><ruby>見<rt>み</rt></ruby>ます。<br>*(Em cảm ơn ạ. Cho chắc em xem lại lần nữa ạ.)* |
| Thợ cốt thép | <ruby>慎重<rt>しんちょう</rt></ruby>やな。ええことや。<br>*(Cẩn thận nhỉ. Tốt đấy.)* |
| Thức | <ruby>開口部<rt>かいこうぶ</rt></ruby>はゼロにします。それまで<ruby>表示<rt>ひょうじ</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>します。<br>*(Em sẽ bịt hết lỗ hở. Đến lúc đó vẫn để biển báo ạ.)* |

---

## Tình huống 16 — Sàn thao tác · 15:40, hỏi về tải trọng cho phép

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>鉄筋<rt>てっきん</rt></ruby>を<ruby>足場<rt>あしば</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いていいですか?<br>*(Anh Kondo, để cốt thép lên sàn giàn được không ạ?)* |
| Kondo | <ruby>量<rt>りょう</rt></ruby>によるな。<ruby>積載<rt>せきさい</rt></ruby><ruby>荷重<rt>かじゅう</rt></ruby>に<ruby>制限<rt>せいげん</rt></ruby>がある。<br>*(Tùy lượng. Tải trọng có giới hạn.)* |
| Thức | <ruby>制限<rt>せいげん</rt></ruby>はどれくらいですか?<br>*(Giới hạn cỡ bao nhiêu ạ?)* |
| Kondo | この<ruby>足場<rt>あしば</rt></ruby>は<ruby>一<rt>いち</rt></ruby>スパン<ruby>四百<rt>よんひゃく</rt></ruby>キロまでや。<ruby>集中<rt>しゅうちゅう</rt></ruby>させるな。<br>*(Giàn này một nhịp tối đa 400 kg. Đừng dồn một chỗ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>けて<ruby>置<rt>お</rt></ruby>くように<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>班<rt>はん</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Em sẽ báo tổ cốt thép xếp dàn ra ạ.)* |
| Kondo | それがええ。<ruby>過積載<rt>かせきさい</rt></ruby>は<ruby>崩落<rt>ほうらく</rt></ruby>のもとや。<br>*(Vậy là tốt. Quá tải là nguồn gốc sập giàn.)* |

---

## Tình huống 17 — Khu cốt thép · 16:00, đề xuất đặt sàn vật liệu riêng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>鉄筋<rt>てっきん</rt></ruby>の<ruby>仮置<rt>かりお</rt></ruby>き<ruby>場<rt>ば</rt></ruby>を<ruby>別<rt>べつ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>れば、<ruby>足場<rt>あしば</rt></ruby>に<ruby>荷重<rt>かじゅう</rt></ruby>がかかりません。<br>*(Làm chỗ để tạm cốt thép riêng thì giàn không bị chịu tải ạ.)* |
| Saito | なるほど、<ruby>地上<rt>ちじょう</rt></ruby>に<ruby>置<rt>お</rt></ruby>けば<ruby>安全<rt>あんぜん</rt></ruby>やな。<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>班<rt>はん</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>してみる。<br>*(Hiểu rồi, để dưới đất thì an toàn nhỉ. Tôi sẽ bàn với tổ cốt thép.)* |
| Thức | <ruby>運<rt>はこ</rt></ruby>ぶ<ruby>手間<rt>てま</rt></ruby>は<ruby>増<rt>ふ</rt></ruby>えますが、<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>優先<rt>ゆうせん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vác sẽ tốn công hơn, nhưng em nghĩ an toàn ưu tiên ạ.)* |
| Saito | <ruby>正<rt>ただ</rt></ruby>しい<ruby>考<rt>かんが</rt></ruby>えや。よう<ruby>気<rt>き</rt></ruby>づいた。<br>*(Suy nghĩ đúng đắn. Để ý giỏi.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo phối hợp liên tổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>班<rt>はん</rt></ruby>との<ruby>連携<rt>れんけい</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Tanigawa, việc phối hợp với tổ cốt thép hôm nay, em báo cáo ạ.)* |
| Tanigawa | おう、<ruby>聞<rt>き</rt></ruby>こう。<br>*(Ờ, nói nghe.)* |
| Thức | <ruby>板<rt>いた</rt></ruby>を<ruby>二枚<rt>にまい</rt></ruby><ruby>外<rt>はず</rt></ruby>して<ruby>親綱<rt>おやづな</rt></ruby>を<ruby>張<rt>は</rt></ruby>り、<ruby>作業床<rt>さぎょうゆか</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>しました。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>元<rt>もと</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>しました。<br>*(Gỡ hai tấm căng dây trục, điều chỉnh sàn thao tác. Tất cả đã khôi phục lại ạ.)* |
| Tanigawa | <ruby>開口部<rt>かいこうぶ</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>ってへんな?<br>*(Không còn lỗ hở chứ?)* |
| Thức | はい、ゼロです。<ruby>仮置<rt>かりお</rt></ruby>き<ruby>場<rt>ば</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>もして、<ruby>職長<rt>しょくちょう</rt></ruby>が<ruby>検討中<rt>けんとうちゅう</rt></ruby>です。<br>*(Vâng, không còn. Em cũng đề xuất chỗ để tạm, đốc công đang xem xét ạ.)* |
| Tanigawa | <ruby>段取<rt>だんど</rt></ruby>りも<ruby>考<rt>かんが</rt></ruby>えられるようになったな。ええ<ruby>成長<rt>せいちょう</rt></ruby>や。<br>*(Biết nghĩ cả bố trí công việc rồi. Tiến bộ tốt.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Kondo nhận xét về giao tiếp liên tổ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>他<rt>た</rt></ruby>の<ruby>班<rt>はん</rt></ruby>とようやってたな。<ruby>去年<rt>きょねん</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>やったやろ。<br>*(Thức, làm với tổ khác tốt đấy. Năm ngoái thì không nổi nhỉ.)* |
| Thức | <ruby>去年<rt>きょねん</rt></ruby>は<ruby>言葉<rt>ことば</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からなくて<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Năm ngoái không hiểu tiếng nên em sợ ạ.)* |
| Kondo | <ruby>今<rt>いま</rt></ruby>は<ruby>断<rt>ことわ</rt></ruby>るのも<ruby>頼<rt>たの</rt></ruby>むのもできる。<ruby>大<rt>おお</rt></ruby>きな<ruby>進歩<rt>しんぽ</rt></ruby>や。<br>*(Giờ từ chối hay nhờ vả đều làm được. Tiến bộ lớn đấy.)* |
| Thức | <ruby>相手<rt>あいて</rt></ruby>の<ruby>立場<rt>たちば</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えると<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきます。<br>*(Nghĩ cho phía bên kia thì lời nói tự ra ạ.)* |
| Kondo | ええこと<ruby>言<rt>い</rt></ruby>うやないか。それが<ruby>現場<rt>げんば</rt></ruby>の<ruby>呼吸<rt>こきゅう</rt></ruby>や。<br>*(Nói hay đấy chứ. Đó là nhịp thở của công trường.)* |
| Thức | はい、もっと<ruby>上手<rt>じょうず</rt></ruby>になります。<br>*(Vâng, em sẽ giỏi hơn nữa ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức ôn từ với Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Hùng, hôm nay tao học mấy từ phối hợp liên tổ: 親綱 dây trục, 積載荷重 tải trọng, 開口部 lỗ hở. |
| Hùng | Mấy từ đó khó nhớ thật. Mày học nhanh ghê. |
| Thức | Mẹo là gắn từ với hành động lúc làm. 開口部 là chỗ gỡ ván, nhìn thấy là nhớ liền. |
| Hùng | Hay đó. Mai tao thử. Tổ cốt thép giục tao toàn không biết nói sao. |
| Thức | Cứ nói "ちょっと確認します" rồi đi hỏi cai. Câu đó cứu tao suốt. |
| Hùng | Ghi lại liền. Cảm ơn mày, ngủ thôi. |

---

## Đọng lại

Thức học làm việc liên tổ với 鉄筋班 — nghề khác, công ty khác. Em nắm nguyên tắc cốt lõi: không tự quyết phần ảnh hưởng an toàn, luôn "để em hỏi cai" rồi trả lời; từ chối nhưng vẫn lễ độ; đề xuất phương án thay thế (căng 親綱, làm chỗ để tạm riêng). 親方 đánh giá cao việc Thức biết giao tiếp giữ nguyên tắc — thứ khó hơn cả kỹ thuật.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 鉄筋班 | てっきんはん | tổ cốt thép |
> | 連携 | れんけい | phối hợp, liên kết |
> | 協力会社 | きょうりょくがいしゃ | công ty hợp tác (thầu phụ) |
> | 開口部 | かいこうぶ | lỗ hở (chỗ gỡ ván) |
> | 親綱 | おやづな | dây trục cứu sinh |
> | 命綱 | いのちづな | dây cứu sinh |
> | 作業床 | さぎょうゆか | sàn thao tác |
> | 積載荷重 | せきさいかじゅう | tải trọng cho phép |
> | 過積載 | かせきさい | quá tải |
> | 崩落 | ほうらく | sập, đổ giàn |
> | 仮置き場 | かりおきば | chỗ để tạm vật liệu |
> | 表示 | ひょうじ | biển báo, đánh dấu |
> | 調整 | ちょうせい | điều chỉnh |
> | 立場 | たちば | lập trường, vị thế |
> | 礼儀正しい | れいぎただしい | lễ phép, đúng phép tắc |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000005, 800000034, NULL, 'markdown_book', 'T5. Móc buộc tải và cẩu vật (玉掛けとクレーン揚重)', '# Sách thực tập sinh xây dựng · T5. Móc buộc tải và cẩu vật (玉掛けとクレーン揚重)

> **Mục tiêu nhân vật:** Thức học 玉掛け (móc buộc tải) và phối hợp cẩu (クレーン揚重). Học mẫu câu ra hiệu lệnh tay cho thợ cẩu, xác nhận trọng lượng/dây cáp, cảnh báo khu vực dưới tải, hô hiệu chuẩn.

---

## Bối cảnh

Tháng 8 năm 2027. Công trường cần cẩu (クレーン) đưa giàn giáo và vật liệu lên cao. Thức năm 2 được học 玉掛け — móc buộc tải đúng cách và làm 合図者 (người ra hiệu) phối hợp với thợ vận hành cẩu. Đây là công việc cực kỳ nguy hiểm, tải treo trên đầu người. Chương này tập trung mẫu câu hiệu lệnh cẩu, xác nhận an toàn dưới tải.

---

## Tình huống 1 — Công trường · 7:40, 親方 dặn về 玉掛け

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>玉掛<rt>たまか</rt></ruby>けや。<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない<ruby>仕事<rt>しごと</rt></ruby>やぞ。<br>*(Thức, hôm nay là móc buộc tải. Việc nguy hiểm nhất đấy.)* |
| Thức | はい。<ruby>資格<rt>しかく</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>はしました。<br>*(Vâng. Em đã học để thi chứng chỉ ạ.)* |
| Tanigawa | <ruby>資格<rt>しかく</rt></ruby>があっても<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くな。<ruby>吊<rt>つ</rt></ruby>り<ruby>荷<rt>に</rt></ruby>の<ruby>下<rt>した</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby><ruby>入<rt>はい</rt></ruby>るな。<br>*(Có chứng chỉ cũng đừng lơ là. Tuyệt đối không vào dưới tải treo.)* |
| Thức | はい、<ruby>吊<rt>つ</rt></ruby>り<ruby>荷<rt>に</rt></ruby>の<ruby>下<rt>した</rt></ruby>は<ruby>立入<rt>たちい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>ですね。<br>*(Vâng, dưới tải treo là cấm vào nhỉ.)* |
| Tanigawa | そや。<ruby>命<rt>いのち</rt></ruby>が<ruby>飛<rt>と</rt></ruby>ぶ。<ruby>近藤<rt>こんどう</rt></ruby>について<ruby>学<rt>まな</rt></ruby>べ。<br>*(Đúng. Mất mạng như chơi. Theo Kondo mà học.)* |
| Thức | はい、<ruby>慎重<rt>しんちょう</rt></ruby>にやります。<br>*(Vâng, em sẽ làm cẩn thận ạ.)* |

---

## Tình huống 2 — Bãi vật tư · 8:00, chọn dây cáp đúng tải

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、この<ruby>束<rt>たば</rt></ruby>、<ruby>何<rt>なん</rt></ruby>キロくらいや<ruby>思<rt>おも</rt></ruby>う?<br>*(Thức, bó này, cậu nghĩ nặng cỡ mấy ký?)* |
| Thức | <ruby>見<rt>み</rt></ruby>た<ruby>感<rt>かん</rt></ruby>じで<ruby>三百<rt>さんびゃく</rt></ruby>キロくらいですか?<br>*(Nhìn cảm giác khoảng 300 ký ạ?)* |
| Kondo | おしい、<ruby>四百<rt>よんひゃく</rt></ruby>ある。<ruby>玉掛<rt>たまか</rt></ruby>けは<ruby>重<rt>おも</rt></ruby>さを<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>や。<br>*(Suýt đúng, 400 ký đấy. Móc tải phải luôn xác nhận trọng lượng.)* |
| Thức | <ruby>重<rt>おも</rt></ruby>さで<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>用具<rt>ようぐ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ぶんですね。<br>*(Theo trọng lượng để chọn dụng cụ móc nhỉ.)* |
| Kondo | そや。<ruby>使用<rt>しよう</rt></ruby><ruby>荷重<rt>かじゅう</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えたら<ruby>切<rt>き</rt></ruby>れる。<br>*(Đúng. Vượt tải sử dụng là đứt cáp.)* |
| Thức | はい、<ruby>余裕<rt>よゆう</rt></ruby>のある<ruby>太<rt>ふと</rt></ruby>いワイヤーにします。<br>*(Vâng, em chọn cáp to có dư tải ạ.)* |

---

## Tình huống 3 — Bãi vật tư · 8:30, kiểm tra dây cáp trước khi dùng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、このワイヤー、<ruby>使<rt>つか</rt></ruby>っていいですか?<br>*(Anh Kondo, sợi cáp này, dùng được không ạ?)* |
| Kondo | <ruby>素線<rt>そせん</rt></ruby>の<ruby>切<rt>き</rt></ruby>れ、<ruby>確認<rt>かくにん</rt></ruby>したか?<br>*(Sợi tao có đứt không, kiểm tra chưa?)* |
| Thức | ここ、<ruby>少<rt>すこ</rt></ruby>しほつれています。<br>*(Chỗ này hơi tướp ạ.)* |
| Kondo | それはアウトや。<ruby>一本<rt>いっぽん</rt></ruby>でも<ruby>切<rt>き</rt></ruby>れてたら<ruby>使<rt>つか</rt></ruby>わん。<br>*(Cái đó loại. Đứt dù một sợi cũng không dùng.)* |
| Thức | <ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わるから<ruby>厳<rt>きび</rt></ruby>しいんですね。<br>*(Vì liên quan tính mạng nên nghiêm nhỉ.)* |
| Kondo | そや。<ruby>新<rt>あたら</rt></ruby>しいのに<ruby>替<rt>か</rt></ruby>えとけ。<br>*(Đúng. Đổi sợi mới đi.)* |

---

## Tình huống 4 — Bãi vật tư · 9:00, học cách buộc tải cân bằng

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>掛<rt>か</rt></ruby>け<ruby>方<rt>かた</rt></ruby>を<ruby>見<rt>み</rt></ruby>てろ。<ruby>重心<rt>じゅうしん</rt></ruby>の<ruby>真上<rt>まうえ</rt></ruby>にフックを<ruby>合<rt>あ</rt></ruby>わせる。<br>*(Nhìn cách móc. Đặt móc thẳng trên trọng tâm.)* |
| Thức | <ruby>重心<rt>じゅうしん</rt></ruby>がずれるとどうなりますか?<br>*(Trọng tâm lệch thì sao ạ?)* |
| Kondo | <ruby>傾<rt>かたむ</rt></ruby>いて<ruby>荷<rt>に</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる。<ruby>角度<rt>かくど</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Nghiêng rồi tải rơi. Góc cũng quan trọng.)* |
| Thức | <ruby>吊<rt>つ</rt></ruby>り<ruby>角度<rt>かくど</rt></ruby>は<ruby>何度<rt>なんど</rt></ruby>までですか?<br>*(Góc treo tối đa bao nhiêu độ ạ?)* |
| Kondo | <ruby>六十度<rt>ろくじゅうど</rt></ruby><ruby>以内<rt>いない</rt></ruby>や。<ruby>広<rt>ひろ</rt></ruby>げすぎると<ruby>力<rt>ちから</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>える。<br>*(Trong 60 độ. Mở rộng quá thì lực tăng.)* |
| Thức | はい、<ruby>角度<rt>かくど</rt></ruby>を<ruby>狭<rt>せま</rt></ruby>く<ruby>保<rt>たも</rt></ruby>ちます。<br>*(Vâng, em giữ góc hẹp ạ.)* |

---

## Tình huống 5 — Bãi vật tư · 9:30, học hiệu lệnh tay cơ bản

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>次<rt>つぎ</rt></ruby>は<ruby>合図<rt>あいず</rt></ruby>や。「<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ」はこう、<ruby>腕<rt>うで</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>す。<br>*(Tiếp theo là hiệu lệnh. "Cuốn lên" là vầy, xoay cánh tay.)* |
| Thức | 「<ruby>巻<rt>ま</rt></ruby>き<ruby>下<rt>さ</rt></ruby>げ」は<ruby>反対<rt>はんたい</rt></ruby>ですか?<br>*(Vậy "hạ xuống" thì ngược lại ạ?)* |
| Kondo | そや。「<ruby>停止<rt>ていし</rt></ruby>」は<ruby>手<rt>て</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>って<ruby>上<rt>あ</rt></ruby>げる。<br>*(Đúng. "Dừng" là nắm tay giơ lên.)* |
| Thức | <ruby>緊急<rt>きんきゅう</rt></ruby><ruby>停止<rt>ていし</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>ですか?<br>*(Dừng khẩn cấp thì khác ạ?)* |
| Kondo | <ruby>両手<rt>りょうて</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きく<ruby>振<rt>ふ</rt></ruby>る。それは<ruby>絶対<rt>ぜったい</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えろ。<br>*(Vẫy mạnh hai tay. Cái đó phải nhớ tuyệt đối.)* |
| Thức | はい、<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>合図<rt>あいず</rt></ruby>ですね。<br>*(Vâng, là hiệu lệnh cứu mạng nhỉ.)* |

---

## Tình huống 6 — Công trường · 10:00, lần đầu làm 合図者 dưới hướng dẫn

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>俺<rt>おれ</rt></ruby>の<ruby>横<rt>よこ</rt></ruby>で<ruby>合図<rt>あいず</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してみ。<br>*(Thức, đứng cạnh tao ra hiệu thử xem.)* |
| Thức | クレーンの<ruby>運転手<rt>うんてんしゅ</rt></ruby>から<ruby>見<rt>み</rt></ruby>える<ruby>位置<rt>いち</rt></ruby>でいいですか?<br>*(Đứng chỗ thợ cẩu nhìn thấy được không ạ?)* |
| Kondo | <ruby>必<rt>かなら</rt></ruby>ずや。<ruby>見<rt>み</rt></ruby>えへんかったら<ruby>事故<rt>じこ</rt></ruby>る。<br>*(Bắt buộc. Không thấy nhau là tai nạn.)* |
| Thức | (giơ tay) 「ゆっくり<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ」!<br>*(Cuốn lên từ từ!)* |
| Kondo | ええぞ、<ruby>声<rt>こえ</rt></ruby>も<ruby>出<rt>だ</rt></ruby>せ。<ruby>手<rt>て</rt></ruby>と<ruby>声<rt>こえ</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>や。<br>*(Tốt, hô cả tiếng. Tay và tiếng, cả hai.)* |
| Thức | はい、はっきり<ruby>合図<rt>あいず</rt></ruby>します。<br>*(Vâng, em ra hiệu rõ ràng ạ.)* |

---

## Tình huống 7 — Công trường · 10:30, cảnh báo người vào dưới tải

| Vai | Lời thoại |
|---|---|
| Thức | フン、<ruby>危<rt>あぶ</rt></ruby>ない!<ruby>吊<rt>つ</rt></ruby>り<ruby>荷<rt>に</rt></ruby>の<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るな!<br>*(Hùng, nguy hiểm! Đừng vào dưới tải treo!)* |
| Hùng | あ、ごめん!<ruby>気<rt>き</rt></ruby>づかんかった。<br>*(À, xin lỗi! Tôi không để ý.)* |
| Thức | <ruby>荷<rt>に</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちたら<ruby>死<rt>し</rt></ruby>ぬで。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>通<rt>とお</rt></ruby>るな。<br>*(Tải rơi là chết đấy. Tuyệt đối đừng đi qua.)* |
| Hùng | わかった。<ruby>遠回<rt>とおまわ</rt></ruby>りする。<br>*(Hiểu rồi. Tôi đi vòng.)* |
| Kondo | トゥック、ようガツンと<ruby>言<rt>い</rt></ruby>うた。それでええ。<br>*(Thức, nói thẳng tốt đấy. Vậy là được.)* |
| Thức | <ruby>仲間<rt>なかま</rt></ruby>でも<ruby>危<rt>あぶ</rt></ruby>ないときは<ruby>強<rt>つよ</rt></ruby>く<ruby>言<rt>い</rt></ruby>います。<br>*(Đồng đội mà nguy hiểm em cũng nói mạnh ạ.)* |

---

## Tình huống 8 — Công trường · 11:00, hỏi khi tải lắc

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>荷<rt>に</rt></ruby>が<ruby>揺<rt>ゆ</rt></ruby>れています。どうしますか?<br>*(Anh Kondo, tải đang lắc. Em làm sao ạ?)* |
| Kondo | <ruby>無理<rt>むり</rt></ruby>に<ruby>手<rt>て</rt></ruby>で<ruby>止<rt>と</rt></ruby>めるな。<ruby>巻<rt>ま</rt></ruby>くの<ruby>止<rt>と</rt></ruby>めて<ruby>待<rt>ま</rt></ruby>て。<br>*(Đừng cố lấy tay chặn. Dừng cuốn, chờ đã.)* |
| Thức | <ruby>介錯<rt>かいしゃく</rt></ruby>ロープを<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Dùng dây dẫn hướng ạ?)* |
| Kondo | そや、よう<ruby>知<rt>し</rt></ruby>ってるな。ロープで<ruby>向<rt>む</rt></ruby>きを<ruby>調整<rt>ちょうせい</rt></ruby>するんや。<br>*(Đúng, biết đấy nhỉ. Dùng dây chỉnh hướng.)* |
| Thức | <ruby>手<rt>て</rt></ruby>で<ruby>触<rt>さわ</rt></ruby>ると<ruby>巻<rt>ま</rt></ruby>き<ruby>込<rt>こ</rt></ruby>まれるからですね。<br>*(Lấy tay đụng thì bị cuốn theo nhỉ.)* |
| Kondo | そのとおり。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>素手<rt>すで</rt></ruby>で<ruby>止<rt>と</rt></ruby>めるな。<br>*(Đúng vậy. Tuyệt đối không chặn bằng tay không.)* |

---

## Tình huống 9 — Công trường · 11:30, phối hợp đưa tải lên tầng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>上<rt>うえ</rt></ruby>の<ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>荷<rt>に</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げます。<ruby>準備<rt>じゅんび</rt></ruby>いいですか?<br>*(Anh Kondo trên kia, em đưa tải lên. Sẵn sàng chưa ạ?)* |
| Kondo | (từ trên) おう、<ruby>準備<rt>じゅんび</rt></ruby>よし。ゆっくりやで。<br>*(Ờ, sẵn sàng. Từ từ thôi nhé.)* |
| Thức | 「ゆっくり<ruby>巻<rt>ま</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げ」!...「<ruby>停止<rt>ていし</rt></ruby>」!<br>*(Cuốn lên từ từ!... Dừng!)* |
| Kondo | <ruby>位置<rt>いち</rt></ruby>ピッタリや。<ruby>下<rt>お</rt></ruby>ろしてくれ。<br>*(Vị trí khớp luôn. Hạ xuống đi.)* |
| Thức | 「ゆっくり<ruby>巻<rt>ま</rt></ruby>き<ruby>下<rt>さ</rt></ruby>げ」...「<ruby>停止<rt>ていし</rt></ruby>」、<ruby>着地<rt>ちゃくち</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>!<br>*(Hạ xuống từ từ... Dừng, xác nhận chạm đất!)* |
| Kondo | バッチリや。<ruby>合図<rt>あいず</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>やったぞ。<br>*(Chuẩn luôn. Hiệu lệnh chính xác đấy.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, anh Long nói về nỗi sợ cẩu (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, hôm nay em làm hiệu lệnh cẩu. Tải treo trên đầu, em sợ tay run. |
| Long | Sợ là đúng. Anh năm thứ ba rồi vẫn sợ. Cái nghề này hết sợ là lúc nguy hiểm nhất. |
| Thức | Em mới đuổi thằng Hùng ra khỏi dưới tải. Nó giận không anh? |
| Long | Không đâu. Sau nó cảm ơn mày ấy. Cứu mạng nhau mà giận gì. Cứ mạnh mồm khi nguy hiểm. |
| Thức | Dạ. Em nhớ câu anh dạy: thà bị ghét còn hơn để xảy ra chuyện. |
| Long | Đúng đó. Ăn cơm đi, chiều cẩn thận tiếp. |

---

## Tình huống 11 — Công trường · 13:00, được giao tự buộc một tải nhỏ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、この<ruby>軽<rt>かる</rt></ruby>い<ruby>束<rt>たば</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>玉掛<rt>たまか</rt></ruby>けしてみ。<br>*(Thức, bó nhẹ này, tự móc buộc thử xem.)* |
| Thức | はい。まず<ruby>重<rt>おも</rt></ruby>さを<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>百<rt>ひゃく</rt></ruby>キロくらいですね。<br>*(Vâng. Đầu tiên xác nhận trọng lượng. Khoảng 100 ký ạ.)* |
| Kondo | <ruby>掛<rt>か</rt></ruby>け<ruby>方<rt>かた</rt></ruby>は?<br>*(Cách móc?)* |
| Thức | <ruby>二点<rt>にてん</rt></ruby><ruby>吊<rt>づ</rt></ruby>りで、<ruby>重心<rt>じゅうしん</rt></ruby>の<ruby>真上<rt>まうえ</rt></ruby>、<ruby>角度<rt>かくど</rt></ruby>は<ruby>狭<rt>せま</rt></ruby>く。<br>*(Treo hai điểm, trên trọng tâm, góc hẹp ạ.)* |
| Kondo | おっ、ようできとる。<ruby>最後<rt>さいご</rt></ruby>に<ruby>何<rt>なに</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する?<br>*(Ồ, làm tốt đấy. Cuối cùng kiểm tra gì?)* |
| Thức | <ruby>外<rt>はず</rt></ruby>れ<ruby>止<rt>ど</rt></ruby>めです。フックの<ruby>金具<rt>かなぐ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Chốt khóa móc ạ. Em kiểm tra cái lẫy móc ạ.)* |

---

## Tình huống 12 — Công trường · 13:40, hỏi xử lý gió khi cẩu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>風<rt>かぜ</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきました。<ruby>揚重<rt>ようじゅう</rt></ruby><ruby>続<rt>つづ</rt></ruby>けますか?<br>*(Anh Saito, gió nổi lên rồi. Cẩu tiếp ạ?)* |
| Saito | ええ<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>風速<rt>ふうそく</rt></ruby><ruby>計<rt>けい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ましょう。<br>*(Phán đoán tốt. Xem máy đo gió nào.)* |
| Thức | <ruby>大<rt>おお</rt></ruby>きい<ruby>板<rt>いた</rt></ruby>は<ruby>風<rt>かぜ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けやすいですね。<br>*(Ván to thì hứng gió mạnh nhỉ.)* |
| Saito | そうです。<ruby>瞬間<rt>しゅんかん</rt></ruby><ruby>風速<rt>ふうそく</rt></ruby><ruby>十<rt>じゅう</rt></ruby>メートルで<ruby>中止<rt>ちゅうし</rt></ruby>です。<br>*(Đúng. Gió giật 10 mét/giây là dừng.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>は<ruby>八<rt>はち</rt></ruby>メートルです。<ruby>注意<rt>ちゅうい</rt></ruby>しながら<ruby>続<rt>つづ</rt></ruby>けますか?<br>*(Hiện 8 mét/giây. Vừa cẩn thận vừa làm tiếp ạ?)* |
| Saito | <ruby>軽<rt>かる</rt></ruby>い<ruby>荷<rt>に</rt></ruby>だけや。<ruby>大物<rt>おおもの</rt></ruby>は<ruby>後<rt>あと</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>す。<br>*(Chỉ tải nhẹ thôi. Đồ to để lại sau.)* |

---

## Tình huống 13 — Công trường · 14:10, báo sự cố cáp xoắn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ワイヤーがねじれています。<ruby>止<rt>と</rt></ruby>めました。<br>*(Anh Kondo, dây cáp bị xoắn ạ. Em dừng rồi ạ.)* |
| Kondo | ようすぐ<ruby>止<rt>と</rt></ruby>めた。ねじれたまま<ruby>吊<rt>つ</rt></ruby>ると<ruby>切<rt>き</rt></ruby>れることがある。<br>*(Dừng ngay tốt đấy. Xoắn mà cứ treo là có khi đứt.)* |
| Thức | <ruby>一度<rt>いちど</rt></ruby><ruby>下<rt>お</rt></ruby>ろして<ruby>掛<rt>か</rt></ruby>け<ruby>直<rt>なお</rt></ruby>しますか?<br>*(Hạ xuống móc lại ạ?)* |
| Kondo | そや。<ruby>面倒<rt>めんどう</rt></ruby>でも<ruby>掛<rt>か</rt></ruby>け<ruby>直<rt>なお</rt></ruby>す。<ruby>近道<rt>ちかみち</rt></ruby>はせんことや。<br>*(Đúng. Phiền cũng phải móc lại. Đừng đi đường tắt.)* |
| Thức | <ruby>急<rt>いそ</rt></ruby>がば<ruby>回<rt>まわ</rt></ruby>れ、ですね。<br>*(Dục tốc bất đạt nhỉ.)* |
| Kondo | ことわざも<ruby>知<rt>し</rt></ruby>っとるんか。そのとおりや。<br>*(Biết cả tục ngữ à. Đúng vậy đấy.)* |

---

## Tình huống 14 — Công trường · 14:40, 親方 kiểm tra việc 玉掛け của Thức

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>見<rt>み</rt></ruby>せてみ。<br>*(Thức, móc buộc tải làm cho tao xem.)* |
| Thức | はい。<ruby>重<rt>おも</rt></ruby>さ<ruby>確認<rt>かくにん</rt></ruby>、ワイヤー<ruby>点検<rt>てんけん</rt></ruby>、<ruby>重心<rt>じゅうしん</rt></ruby>、<ruby>角度<rt>かくど</rt></ruby>、<ruby>外<rt>はず</rt></ruby>れ<ruby>止<rt>ど</rt></ruby>めです。<br>*(Vâng. Xác nhận trọng lượng, kiểm tra cáp, trọng tâm, góc, chốt khóa ạ.)* |
| Tanigawa | <ruby>手順<rt>てじゅん</rt></ruby>が<ruby>体<rt>からだ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っとるな。<ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>もできとる。<br>*(Trình tự ngấm vào người rồi. Hô to xác nhận cũng làm được.)* |
| Thức | <ruby>一<rt>ひと</rt></ruby>つでも<ruby>抜<rt>ぬ</rt></ruby>かすと<ruby>事故<rt>じこ</rt></ruby>になると<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Em được dạy bỏ sót dù một bước là tai nạn ạ.)* |
| Tanigawa | そや。<ruby>二年目<rt>にねんめ</rt></ruby>でここまでできれば<ruby>上等<rt>じょうとう</rt></ruby>や。<br>*(Đúng. Năm hai mà tới mức này là khá đấy.)* |
| Thức | ありがとうございます。<ruby>油断<rt>ゆだん</rt></ruby>しません。<br>*(Em cảm ơn ạ. Em không lơ là ạ.)* |

---

## Tình huống 15 — Công trường · 15:00, phối hợp ba người dỡ tải

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>大<rt>おお</rt></ruby>きい<ruby>荷<rt>に</rt></ruby>が<ruby>来<rt>く</rt></ruby>る。トゥックが<ruby>合図<rt>あいず</rt></ruby>、フンが<ruby>介錯<rt>かいしゃく</rt></ruby>や。<br>*(Tải to sắp tới. Thức ra hiệu, Hùng giữ dây dẫn hướng.)* |
| Thức | フン、<ruby>介錯<rt>かいしゃく</rt></ruby>ロープ<ruby>持<rt>も</rt></ruby>った?<ruby>離<rt>はな</rt></ruby>れて<ruby>立<rt>た</rt></ruby>って。<br>*(Hùng, cầm dây dẫn hướng chưa? Đứng cách xa ra.)* |
| Hùng | <ruby>持<rt>も</rt></ruby>った。<ruby>合図<rt>あいず</rt></ruby>に<ruby>従<rt>したが</rt></ruby>うで。<br>*(Cầm rồi. Tôi nghe theo hiệu lệnh.)* |
| Thức | 「ゆっくり<ruby>巻<rt>ま</rt></ruby>き<ruby>下<rt>さ</rt></ruby>げ」...フン、<ruby>右<rt>みぎ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し!<br>*(Hạ xuống từ từ... Hùng, sang phải một chút!)* |
| Hùng | <ruby>右<rt>みぎ</rt></ruby>、<ruby>了解<rt>りょうかい</rt></ruby>!ゆっくりやな。<br>*(Phải, rõ! Từ từ nhé.)* |
| Thức | 「<ruby>停止<rt>ていし</rt></ruby>」、<ruby>着地<rt>ちゃくち</rt></ruby>!<ruby>玉<rt>たま</rt></ruby><ruby>外<rt>はず</rt></ruby>しは<ruby>待<rt>ま</rt></ruby>て。<br>*(Dừng, chạm đất! Khoan tháo móc.)* |

---

## Tình huống 16 — Công trường · 15:30, hỏi về thứ tự tháo móc

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>玉<rt>たま</rt></ruby><ruby>外<rt>はず</rt></ruby>しはいつしますか?<br>*(Anh Kondo, khi nào thì tháo móc ạ?)* |
| Kondo | <ruby>荷<rt>に</rt></ruby>が<ruby>完全<rt>かんぜん</rt></ruby>に<ruby>地面<rt>じめん</rt></ruby>について、<ruby>安定<rt>あんてい</rt></ruby>してからや。<br>*(Khi tải chạm đất hoàn toàn và ổn định mới tháo.)* |
| Thức | <ruby>少<rt>すこ</rt></ruby>し<ruby>浮<rt>う</rt></ruby>いていたら?<br>*(Còn hơi treo lên thì sao ạ?)* |
| Kondo | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>外<rt>はず</rt></ruby>すな。<ruby>戻<rt>もど</rt></ruby>って<ruby>挟<rt>はさ</rt></ruby>まれる。<br>*(Tuyệt đối không tháo. Bật lại kẹp người.)* |
| Thức | <ruby>玉掛<rt>たまか</rt></ruby>け<ruby>者<rt>しゃ</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>はこれが<ruby>多<rt>おお</rt></ruby>いんですね。<br>*(Tai nạn của người móc tải hay xảy ra cái này nhỉ.)* |
| Kondo | そや、ようわかっとる。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>くな。<br>*(Đúng, hiểu rõ đấy. Đến phút cuối đừng lơ là.)* |

---

## Tình huống 17 — Công trường · 16:00, đề xuất kẻ vạch khu cấm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>吊<rt>つ</rt></ruby>り<ruby>荷<rt>に</rt></ruby>の<ruby>下<rt>した</rt></ruby>に<ruby>地面<rt>じめん</rt></ruby>に<ruby>赤<rt>あか</rt></ruby>いラインを<ruby>引<rt>ひ</rt></ruby>けば、みんな<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Kẻ vạch đỏ dưới đất chỗ tải treo thì mọi người dễ nhận ạ.)* |
| Saito | ええ<ruby>考<rt>かんが</rt></ruby>えや。<ruby>立入<rt>たちい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby><ruby>区域<rt>くいき</rt></ruby>を<ruby>見<rt>み</rt></ruby>える<ruby>化<rt>か</rt></ruby>するんやな。<br>*(Ý hay đấy. Trực quan hóa khu cấm vào nhỉ.)* |
| Thức | コーンだけだと<ruby>動<rt>うご</rt></ruby>かされることがあるので。<br>*(Chỉ cọc tiêu thì hay bị xê dịch ạ.)* |
| Saito | <ruby>現場<rt>げんば</rt></ruby>をよう<ruby>見<rt>み</rt></ruby>とるな。<ruby>採用<rt>さいよう</rt></ruby>や。<br>*(Quan sát công trường giỏi đấy. Duyệt.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo ngày làm 揚重

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>揚重<rt>ようじゅう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Tanigawa, công việc cẩu hôm nay đã hoàn thành an toàn ạ.)* |
| Tanigawa | <ruby>事故<rt>じこ</rt></ruby>はゼロやな?<br>*(Tai nạn bằng không chứ?)* |
| Thức | はい、ゼロです。ワイヤーのねじれを<ruby>一回<rt>いっかい</rt></ruby><ruby>発見<rt>はっけん</rt></ruby>して<ruby>掛<rt>か</rt></ruby>け<ruby>直<rt>なお</rt></ruby>しました。<br>*(Vâng, bằng không. Phát hiện cáp xoắn một lần và móc lại rồi ạ.)* |
| Tanigawa | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な<ruby>報告<rt>ほうこく</rt></ruby>や。<ruby>気<rt>き</rt></ruby>づいて<ruby>止<rt>と</rt></ruby>めたんやろ。<br>*(Đó là báo cáo quan trọng nhất. Phát hiện rồi dừng đúng không.)* |
| Thức | はい。<ruby>立入<rt>たちい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>ラインの<ruby>提案<rt>ていあん</rt></ruby>もしました。<br>*(Vâng. Em cũng đề xuất kẻ vạch khu cấm ạ.)* |
| Tanigawa | <ruby>安全<rt>あんぜん</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えとる。ええ<ruby>職人<rt>しょくにん</rt></ruby>になるで。<br>*(Tự nghĩ về an toàn rồi. Sẽ thành thợ giỏi đấy.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Kondo đánh giá làm hiệu lệnh

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>合図<rt>あいず</rt></ruby>、<ruby>運転手<rt>うんてんしゅ</rt></ruby>が<ruby>褒<rt>ほ</rt></ruby>めとったぞ。<br>*(Thức, hiệu lệnh hôm nay, thợ cẩu khen đấy.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか?どこがよかったですか?<br>*(Thật ạ? Chỗ nào tốt ạ?)* |
| Kondo | <ruby>動<rt>うご</rt></ruby>きがはっきりして、<ruby>止<rt>と</rt></ruby>めるとこで<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>止<rt>と</rt></ruby>めとった。<br>*(Động tác rõ ràng, chỗ cần dừng thì dừng dứt khoát.)* |
| Thức | <ruby>運転手<rt>うんてんしゅ</rt></ruby>は<ruby>合図<rt>あいず</rt></ruby>だけが<ruby>頼<rt>たよ</rt></ruby>りだと<ruby>聞<rt>き</rt></ruby>いたので。<br>*(Em nghe nói thợ cẩu chỉ trông vào hiệu lệnh thôi ạ.)* |
| Kondo | そや。<ruby>合図者<rt>あいずしゃ</rt></ruby>は<ruby>運転手<rt>うんてんしゅ</rt></ruby>の<ruby>目<rt>め</rt></ruby>や。<ruby>責任<rt>せきにん</rt></ruby><ruby>重大<rt>じゅうだい</rt></ruby>やぞ。<br>*(Đúng. Người ra hiệu là mắt của thợ cẩu. Trách nhiệm lớn đấy.)* |
| Thức | はい、その<ruby>重<rt>おも</rt></ruby>さを<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Vâng, em sẽ không quên sức nặng đó ạ.)* |

---

## Tình huống 20 — Công trường · 17:00, dọn dụng cụ móc tải cuối ngày

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>玉掛<rt>たまか</rt></ruby>け<ruby>用具<rt>ようぐ</rt></ruby>、<ruby>片付<rt>かたづ</rt></ruby>けるで。<br>*(Thức, dụng cụ móc tải, dọn nào.)* |
| Thức | ワイヤーは<ruby>巻<rt>ま</rt></ruby>いて、フックは<ruby>掛<rt>か</rt></ruby>けて<ruby>保管<rt>ほかん</rt></ruby>します。<br>*(Cáp cuộn lại, móc treo lên để bảo quản ạ.)* |
| Kondo | <ruby>傷<rt>いた</rt></ruby>んだワイヤーは<ruby>分<rt>わ</rt></ruby>けたか?<br>*(Cáp hỏng tách riêng chưa?)* |
| Thức | はい、<ruby>赤<rt>あか</rt></ruby>い<ruby>札<rt>ふだ</rt></ruby>をつけて<ruby>使用<rt>しよう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にしました。<br>*(Vâng, em treo thẻ đỏ cấm sử dụng rồi ạ.)* |
| Kondo | <ruby>明日<rt>あした</rt></ruby><ruby>使<rt>つか</rt></ruby>う<ruby>奴<rt>やつ</rt></ruby>が<ruby>困<rt>こま</rt></ruby>らんようにな。<ruby>完璧<rt>かんぺき</rt></ruby>や。<br>*(Để đứa mai dùng không gặp rắc rối. Hoàn hảo.)* |
| Thức | はい、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, anh vất vả rồi ạ.)* |

---

## Đọng lại

Thức học 玉掛け và làm 合図者 — công việc nguy hiểm nhất công trường. Em nắm quy trình: xác nhận trọng lượng, kiểm tra cáp, đặt móc trên trọng tâm, giữ góc treo trong 60 độ, hô hiệu rõ ràng, tuyệt đối cấm người dưới tải treo, không tháo móc khi tải chưa ổn định. Thức biết dừng ngay khi cáp xoắn và đề xuất kẻ vạch khu cấm. 親方 nhấn mạnh: người ra hiệu là mắt của thợ cẩu, trách nhiệm tính mạng.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 玉掛け | たまかけ | móc buộc tải |
> | 揚重 | ようじゅう | cẩu nâng vật |
> | 合図者 | あいずしゃ | người ra hiệu lệnh |
> | 吊り荷 | つりに | tải treo |
> | 立入禁止 | たちいりきんし | cấm vào |
> | 使用荷重 | しようかじゅう | tải trọng sử dụng |
> | 素線 | そせん | sợi tao (trong cáp) |
> | 重心 | じゅうしん | trọng tâm |
> | 吊り角度 | つりかくど | góc treo |
> | 介錯ロープ | かいしゃくろーぷ | dây dẫn hướng tải |
> | 外れ止め | はずれどめ | chốt khóa móc |
> | 巻き上げ | まきあげ | cuốn lên |
> | 巻き下げ | まきさげ | hạ xuống |
> | 緊急停止 | きんきゅうていし | dừng khẩn cấp |
> | 油断 | ゆだん | lơ là, mất cảnh giác |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000006, 800000034, NULL, 'markdown_book', 'T6. Suýt tai nạn và tuần tra an toàn (ヒヤリハットと安全パトロール)', '# Sách thực tập sinh xây dựng · T6. Suýt tai nạn và tuần tra an toàn (ヒヤリハットと安全パトロール)

> **Mục tiêu nhân vật:** Thức học văn hóa an toàn: báo ヒヤリハット (suýt tai nạn), tham gia 安全パトロール (tuần tra an toàn), KY (危険予知) trước việc. Học mẫu câu báo cáo sự cố hụt, nêu nguy cơ, phát biểu trong họp an toàn.

---

## Bối cảnh

Tháng 9 năm 2027. Công trường đẩy mạnh hoạt động an toàn. Thức năm 2 lần đầu được tham gia đầy đủ: viết phiếu ヒヤリハット, dự 安全パトロール cùng 斉藤職長, phát biểu trong 朝礼 KY. Chương này tập trung mẫu câu báo cáo suýt tai nạn không sợ bị mắng, chỉ ra nguy cơ, đề xuất biện pháp.

---

## Tình huống 1 — Công trường · 7:30, 朝礼 KY hoạt động dự đoán nguy cơ

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>、<ruby>危険<rt>きけん</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>はどこですか?トゥックくん。<br>*(Việc hôm nay, chỗ nào nguy hiểm? Thức.)* |
| Thức | <ruby>三層目<rt>さんそうめ</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby>で、<ruby>部材<rt>ぶざい</rt></ruby>の<ruby>落下<rt>らっか</rt></ruby>が<ruby>危<rt>あぶ</rt></ruby>ないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ khi tháo tầng ba, rơi cấu kiện là nguy hiểm ạ.)* |
| Saito | いい<ruby>指摘<rt>してき</rt></ruby>です。<ruby>対策<rt>たいさく</rt></ruby>は?<br>*(Chỉ ra hay. Biện pháp?)* |
| Thức | <ruby>下<rt>した</rt></ruby>を<ruby>立入<rt>たちい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にして、<ruby>声<rt>こえ</rt></ruby>かけを<ruby>徹底<rt>てってい</rt></ruby>します。<br>*(Cấm vào phía dưới và hô hiệu triệt để ạ.)* |
| Saito | そのとおりです。みなさん、トゥックくんの<ruby>言<rt>い</rt></ruby>うとおりに。<br>*(Đúng vậy. Mọi người làm như Thức nói.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>をつけて<ruby>作業<rt>さぎょう</rt></ruby>します。<br>*(Vâng, em sẽ làm việc cẩn thận ạ.)* |

---

## Tình huống 2 — Tầng 2 · 9:00, Thức gặp suýt tai nạn

| Vai | Lời thoại |
|---|---|
| Thức | (giật mình) あっ、<ruby>危<rt>あぶ</rt></ruby>なかった!<br>*(À, suýt nữa!)* |
| Kondo | どうした、トゥック!<br>*(Sao thế, Thức!)* |
| Thức | <ruby>足場板<rt>あしばいた</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>浮<rt>う</rt></ruby>いていて、<ruby>足<rt>あし</rt></ruby>がはまりかけました。<br>*(Tấm ván giàn hơi kênh lên, chân em suýt lọt vào ạ.)* |
| Kondo | <ruby>転<rt>ころ</rt></ruby>ばんかったか?ケガは?<br>*(Không ngã chứ? Có thương không?)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。でも、ヒヤリとしました。<br>*(Em không sao ạ. Nhưng mà hú vía ạ.)* |
| Kondo | ヒヤリハットや。<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>せえ。<br>*(Là suýt tai nạn đấy. Nhất định phải báo cáo.)* |

---

## Tình huống 3 — Tầng 2 · 9:10, báo cáo ヒヤリハット ngay cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、ヒヤリハットの<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Anh Saito, em báo cáo một vụ suýt tai nạn ạ.)* |
| Saito | <ruby>何<rt>なに</rt></ruby>がありましたか?<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってください。<br>*(Có chuyện gì? Nói thật đi.)* |
| Thức | <ruby>足場板<rt>あしばいた</rt></ruby>が<ruby>固定<rt>こてい</rt></ruby>されておらず、<ruby>足<rt>あし</rt></ruby>がはまりかけました。<br>*(Tấm ván giàn chưa được cố định, chân em suýt lọt vào ạ.)* |
| Saito | <ruby>怒<rt>おこ</rt></ruby>りません。<ruby>言<rt>い</rt></ruby>ってくれてありがとう。<ruby>場所<rt>ばしょ</rt></ruby>は?<br>*(Tôi không mắng đâu. Cảm ơn em đã nói. Vị trí?)* |
| Thức | <ruby>北側<rt>きたがわ</rt></ruby>の<ruby>通路<rt>つうろ</rt></ruby>、<ruby>柱<rt>はしら</rt></ruby>の<ruby>三<rt>さん</rt></ruby><ruby>本目<rt>ほんめ</rt></ruby>あたりです。<br>*(Lối đi phía bắc, khoảng cột thứ ba ạ.)* |
| Saito | すぐ<ruby>固定<rt>こてい</rt></ruby>させます。<ruby>報告<rt>ほうこく</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Tôi cho cố định ngay. Báo cáo là quan trọng nhất.)* |

---

## Tình huống 4 — Tầng 2 · 9:30, viết phiếu ヒヤリハット

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、ヒヤリハット<ruby>用紙<rt>ようし</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてください。<br>*(Thức, viết vào phiếu suýt tai nạn nhé.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Em viết những gì ạ?)* |
| Saito | いつ、どこで、<ruby>何<rt>なに</rt></ruby>が、なぜ、です。<ruby>原因<rt>げんいん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Khi nào, ở đâu, cái gì, vì sao. Nguyên nhân quan trọng.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>固定<rt>こてい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>ったこと、ですか?<br>*(Nguyên nhân là lơ là khâu kiểm tra cố định, đúng không ạ?)* |
| Saito | そうです。<ruby>誰<rt>だれ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いかではなく、なぜ<ruby>起<rt>お</rt></ruby>きたかを<ruby>書<rt>か</rt></ruby>きます。<br>*(Đúng. Không phải ai sai, mà viết vì sao xảy ra.)* |
| Thức | <ruby>同<rt>おな</rt></ruby>じことを<ruby>防<rt>ふせ</rt></ruby>ぐためですね。<ruby>書<rt>か</rt></ruby>きます。<br>*(Để ngăn lặp lại nhỉ. Em viết ạ.)* |

---

## Tình huống 5 — Văn phòng · 9:50, hỏi vì sao không bị phạt

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>したら<ruby>怒<rt>おこ</rt></ruby>られると<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Anh Saito, em cứ tưởng báo cáo là bị mắng ạ.)* |
| Saito | <ruby>逆<rt>ぎゃく</rt></ruby>です。<ruby>隠<rt>かく</rt></ruby>すほうが<ruby>怒<rt>おこ</rt></ruby>られます。<br>*(Ngược lại. Giấu mới bị mắng.)* |
| Thức | どうしてですか?<br>*(Vì sao ạ?)* |
| Saito | ヒヤリハットは<ruby>事故<rt>じこ</rt></ruby>の<ruby>芽<rt>め</rt></ruby>です。<ruby>三百<rt>さんびゃく</rt></ruby><ruby>件<rt>けん</rt></ruby>の<ruby>芽<rt>め</rt></ruby>を<ruby>摘<rt>つ</rt></ruby>めば<ruby>大<rt>おお</rt></ruby>けが<ruby>一<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げます。<br>*(Suýt tai nạn là mầm tai nạn. Nhổ 300 mầm thì ngăn được 1 vụ thương nặng.)* |
| Thức | だから<ruby>報告<rt>ほうこく</rt></ruby>を<ruby>歓迎<rt>かんげい</rt></ruby>するんですね。<br>*(Vì vậy mới hoan nghênh báo cáo nhỉ.)* |
| Saito | そうです。<ruby>言<rt>い</rt></ruby>いやすい<ruby>現場<rt>げんば</rt></ruby>が<ruby>安全<rt>あんぜん</rt></ruby>な<ruby>現場<rt>げんば</rt></ruby>です。<br>*(Đúng. Công trường dễ nói là công trường an toàn.)* |

---

## Tình huống 6 — Công trường · 10:30, bắt đầu 安全パトロール

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>パトロールに<ruby>同行<rt>どうこう</rt></ruby>してください。<br>*(Thức, hôm nay đi cùng tuần tra an toàn nhé.)* |
| Thức | はい。<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>ればいいですか?<br>*(Vâng. Em quan sát những gì ạ?)* |
| Saito | <ruby>手<rt>て</rt></ruby>すりの<ruby>欠損<rt>けっそん</rt></ruby>、<ruby>開口部<rt>かいこうぶ</rt></ruby>、<ruby>整理<rt>せいり</rt></ruby><ruby>整頓<rt>せいとん</rt></ruby>、それから<ruby>保護具<rt>ほごぐ</rt></ruby>の<ruby>着用<rt>ちゃくよう</rt></ruby>です。<br>*(Lan can thiếu, lỗ hở, gọn gàng, và việc đeo đồ bảo hộ.)* |
| Thức | <ruby>気<rt>き</rt></ruby>づいたら<ruby>言<rt>い</rt></ruby>ってもいいですか?<br>*(Phát hiện thì em nói được không ạ?)* |
| Saito | もちろんです。<ruby>新<rt>あたら</rt></ruby>しい<ruby>目<rt>め</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Tất nhiên. Con mắt mới quan trọng.)* |
| Thức | はい、しっかり<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng, em quan sát kỹ ạ.)* |

---

## Tình huống 7 — Tầng 3 · 10:50, Thức phát hiện lan can thiếu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、ここの<ruby>中<rt>なか</rt></ruby>さんがありません。<br>*(Anh Saito, chỗ này thiếu thanh giữa lan can ạ.)* |
| Saito | おっ、よう<ruby>見<rt>み</rt></ruby>つけました。<ruby>危険<rt>きけん</rt></ruby>です。<br>*(Ồ, tìm ra giỏi đấy. Nguy hiểm.)* |
| Thức | <ruby>誰<rt>だれ</rt></ruby>かが<ruby>外<rt>はず</rt></ruby>して<ruby>戻<rt>もど</rt></ruby>し<ruby>忘<rt>わす</rt></ruby>れたんでしょうか?<br>*(Chắc ai gỡ ra rồi quên lắp lại ạ?)* |
| Saito | おそらくそうです。すぐ<ruby>是正<rt>ぜせい</rt></ruby>します。<ruby>記録<rt>きろく</rt></ruby>もします。<br>*(Có lẽ vậy. Sửa ngay. Ghi lại nữa.)* |
| Thức | <ruby>戻<rt>もど</rt></ruby>すまで<ruby>表示<rt>ひょうじ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>しておきます。<br>*(Đến khi lắp lại em treo biển báo ạ.)* |
| Saito | <ruby>気<rt>き</rt></ruby>がきくね。それでこそパトロールです。<br>*(Tinh ý đấy. Tuần tra phải vậy.)* |

---

## Tình huống 8 — Tầng 1 · 11:10, nhắc đồng nghiệp đeo dây an toàn

| Vai | Lời thoại |
|---|---|
| Thức | フンくん、フルハーネス<ruby>掛<rt>か</rt></ruby>けてる?<br>*(Hùng, đã móc dây toàn thân chưa?)* |
| Hùng | あ...ちょっと<ruby>外<rt>はず</rt></ruby>してた。すぐ<ruby>掛<rt>か</rt></ruby>けるわ。<br>*(À... vừa tháo ra. Móc ngay đây.)* |
| Thức | <ruby>高<rt>たか</rt></ruby>さ<ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>掛<rt>か</rt></ruby>けないと。<ruby>俺<rt>おれ</rt></ruby>も<ruby>言<rt>い</rt></ruby>われたから。<br>*(Cao trên 2 mét nhất định phải móc. Tôi cũng bị nhắc mà.)* |
| Hùng | わかってる。パトロール<ruby>中<rt>ちゅう</rt></ruby>やもんな。<br>*(Tôi biết. Đang tuần tra mà.)* |
| Thức | パトロールおらんときも<ruby>同<rt>おな</rt></ruby>じや。<ruby>命<rt>いのち</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つやで。<br>*(Không có tuần tra cũng vậy. Mạng có một thôi.)* |
| Hùng | ...そやな。ありがとう、<ruby>気<rt>き</rt></ruby>をつけるわ。<br>*(...Đúng nhỉ. Cảm ơn, tôi sẽ chú ý.)* |

---

## Tình huống 9 — Công trường · 11:30, ghi biên bản tuần tra

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>指摘<rt>してき</rt></ruby><ruby>事項<rt>じこう</rt></ruby>をまとめてください。<br>*(Thức, tổng hợp các điểm chỉ ra hôm nay nhé.)* |
| Thức | <ruby>三<rt>みっ</rt></ruby>つです。<ruby>手<rt>て</rt></ruby>すり<ruby>欠損<rt>けっそん</rt></ruby>、<ruby>保護具<rt>ほごぐ</rt></ruby><ruby>未<rt>み</rt></ruby><ruby>着用<rt>ちゃくよう</rt></ruby>、<ruby>通路<rt>つうろ</rt></ruby>の<ruby>資材<rt>しざい</rt></ruby><ruby>放置<rt>ほうち</rt></ruby>です。<br>*(Ba điểm ạ. Lan can thiếu, không đeo đồ bảo hộ, vật tư để bừa lối đi.)* |
| Saito | それぞれ<ruby>是正<rt>ぜせい</rt></ruby>しましたか?<br>*(Từng cái đã sửa chưa?)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりと<ruby>資材<rt>しざい</rt></ruby>は<ruby>済<rt>す</rt></ruby>みました。<ruby>保護具<rt>ほごぐ</rt></ruby>は<ruby>本人<rt>ほんにん</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>しました。<br>*(Lan can với vật tư xong rồi. Đồ bảo hộ em đã nhắc người đó ạ.)* |
| Saito | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>是正<rt>ぜせい</rt></ruby>まで<ruby>確認<rt>かくにん</rt></ruby>するのがパトロールです。<br>*(Hoàn hảo. Theo đến khi sửa xong mới là tuần tra.)* |
| Thức | はい、<ruby>見<rt>み</rt></ruby>つけて<ruby>終<rt>お</rt></ruby>わりじゃないんですね。<br>*(Vâng, không phải tìm ra là xong nhỉ.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, anh Long nói về văn hóa báo cáo (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, hôm nay em báo suýt tai nạn mà không bị mắng. Lạ thật, ở Việt Nam em sợ báo lắm. |
| Long | Ở Nhật người ta coi ヒヤリハット là báu vật. Giấu mới bị nặng. Em báo là cứu cả đội đó. |
| Thức | Em hiểu rồi. Nhưng có người vẫn ngại báo anh ạ. |
| Long | Ừ, ai cũng ngại lúc đầu. Em cứ làm gương, người sau dễ làm theo. Đừng để cái sĩ diện hại mạng. |
| Thức | Dạ. Em sẽ luôn báo. Cảm ơn anh. |
| Long | Tốt. Ăn cơm rồi chiều đi tuần tra tiếp cho quen. |

---

## Tình huống 11 — Công trường · 13:00, dự họp phản hồi an toàn

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>午後<rt>ごご</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>です。トゥックくん、<ruby>午前<rt>ごぜん</rt></ruby>のヒヤリハットを<ruby>発表<rt>はっぴょう</rt></ruby>してください。<br>*(Họp an toàn buổi chiều. Thức, trình bày vụ suýt tai nạn buổi sáng nhé.)* |
| Thức | はい。<ruby>午前<rt>ごぜん</rt></ruby><ruby>九時<rt>くじ</rt></ruby>ごろ、<ruby>三層目<rt>さんそうめ</rt></ruby>で<ruby>足場板<rt>あしばいた</rt></ruby>が<ruby>浮<rt>う</rt></ruby>いていて<ruby>足<rt>あし</rt></ruby>がはまりかけました。<br>*(Vâng. Khoảng 9 giờ sáng, tầng ba có tấm ván kênh, chân em suýt lọt ạ.)* |
| Saito | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>でしたか?<br>*(Nguyên nhân là gì?)* |
| Thức | <ruby>固定<rt>こてい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>ったことです。<ruby>対策<rt>たいさく</rt></ruby>は<ruby>毎<rt>まい</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>板<rt>いた</rt></ruby>を<ruby>点検<rt>てんけん</rt></ruby>することです。<br>*(Lơ là kiểm tra cố định ạ. Biện pháp là mỗi sáng kiểm tra ván ạ.)* |
| Saito | <ruby>分<rt>わ</rt></ruby>かりやすい<ruby>発表<rt>はっぴょう</rt></ruby>でした。みんなで<ruby>共有<rt>きょうゆう</rt></ruby>しましょう。<br>*(Trình bày dễ hiểu. Chia sẻ cho mọi người nào.)* |
| Thức | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 12 — Công trường · 13:40, hỏi cách viết biện pháp hiệu quả

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、「<ruby>気<rt>き</rt></ruby>をつける」と<ruby>書<rt>か</rt></ruby>くのはだめですか?<br>*(Anh Kondo, viết "chú ý" thì không được ạ?)* |
| Kondo | だめや。「<ruby>気<rt>き</rt></ruby>をつける」は<ruby>対策<rt>たいさく</rt></ruby>やない。<br>*("Chú ý" không phải biện pháp.)* |
| Thức | じゃあ、どう<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Vậy em viết thế nào ạ?)* |
| Kondo | <ruby>誰<rt>だれ</rt></ruby>でもできる<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>な<ruby>行動<rt>こうどう</rt></ruby>や。「<ruby>朝<rt>あさ</rt></ruby><ruby>一<rt>いち</rt></ruby>で<ruby>全<rt>ぜん</rt></ruby><ruby>板<rt>いた</rt></ruby>を<ruby>足<rt>あし</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>」とかな。<br>*(Hành động cụ thể ai cũng làm được. Kiểu "sáng đầu giờ giẫm thử toàn bộ ván".)* |
| Thức | なるほど、<ruby>仕組<rt>しく</rt></ruby>みにするんですね。<br>*(Hiểu rồi, biến thành quy trình nhỉ.)* |
| Kondo | そや。<ruby>人<rt>ひと</rt></ruby>の<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちに<ruby>頼<rt>たよ</rt></ruby>ったらあかん。<br>*(Đúng. Đừng trông vào ý thức của người ta.)* |

---

## Tình huống 13 — Tầng 2 · 14:10, phát hiện nguy cơ và đề xuất

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>気<rt>き</rt></ruby>になることがあります。<br>*(Anh Saito, có chỗ này em thấy lấn cấn ạ.)* |
| Saito | <ruby>言<rt>い</rt></ruby>ってください。<br>*(Nói đi.)* |
| Thức | <ruby>昇降口<rt>しょうこうぐち</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>くに<ruby>資材<rt>しざい</rt></ruby>があって、<ruby>登<rt>のぼ</rt></ruby>るとき<ruby>邪魔<rt>じゃま</rt></ruby>です。<br>*(Gần lối lên xuống có vật tư, lúc leo bị vướng ạ.)* |
| Saito | たしかに<ruby>転落<rt>てんらく</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>になります。どうしたらいい?<br>*(Đúng là dễ thành nguyên nhân té ngã. Nên làm sao?)* |
| Thức | <ruby>資材<rt>しざい</rt></ruby><ruby>置場<rt>おきば</rt></ruby>を<ruby>一<rt>いち</rt></ruby>メートル<ruby>離<rt>はな</rt></ruby>せば<ruby>安全<rt>あんぜん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Dời chỗ để vật tư ra xa 1 mét thì em nghĩ an toàn ạ.)* |
| Saito | すぐ<ruby>移動<rt>いどう</rt></ruby>させましょう。よう<ruby>気<rt>き</rt></ruby>づきました。<br>*(Dời ngay nào. Để ý giỏi đấy.)* |

---

## Tình huống 14 — Văn phòng · 14:40, 親方 nghe báo cáo tuần tra

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、パトロールどうやった?<br>*(Thức, tuần tra thế nào?)* |
| Thức | <ruby>指摘<rt>してき</rt></ruby>を<ruby>四<rt>よっ</rt></ruby>つ<ruby>出<rt>だ</rt></ruby>して、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>是正<rt>ぜせい</rt></ruby>しました。<br>*(Em chỉ ra bốn điểm, đã sửa hết ạ.)* |
| Tanigawa | <ruby>自分<rt>じぶん</rt></ruby>のヒヤリハットも<ruby>出<rt>だ</rt></ruby>したんやろ?<br>*(Vụ suýt tai nạn của cậu cũng báo chứ?)* |
| Thức | はい。<ruby>隠<rt>かく</rt></ruby>すより<ruby>言<rt>い</rt></ruby>うほうが<ruby>良<rt>よ</rt></ruby>いと<ruby>学<rt>まな</rt></ruby>びました。<br>*(Vâng. Em học được rằng nói ra tốt hơn giấu ạ.)* |
| Tanigawa | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<ruby>事故<rt>じこ</rt></ruby>ゼロは<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>報告<rt>ほうこく</rt></ruby>からや。<br>*(Cái đó quan trọng nhất. Tai nạn bằng không bắt đầu từ báo cáo trung thực.)* |
| Thức | はい、これからも<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, sau này em luôn báo cáo ạ.)* |

---

## Tình huống 15 — Công trường · 15:00, KY nhóm nhỏ trước việc chiều

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>午後<rt>ごご</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby>、<ruby>危険<rt>きけん</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>言<rt>い</rt></ruby>おう。トゥックから。<br>*(Tháo dỡ buổi chiều, nói nguy cơ từng cái. Thức trước.)* |
| Thức | <ruby>部材<rt>ぶざい</rt></ruby>を<ruby>下<rt>お</rt></ruby>ろすとき、<ruby>手<rt>て</rt></ruby>がすべる<ruby>危険<rt>きけん</rt></ruby>があります。<br>*(Khi hạ cấu kiện xuống, có nguy cơ tuột tay ạ.)* |
| Hùng | <ruby>手袋<rt>てぶくろ</rt></ruby>が<ruby>濡<rt>ぬ</rt></ruby>れてたら<ruby>余計<rt>よけい</rt></ruby>すべるな。<br>*(Găng tay ướt thì càng dễ tuột.)* |
| Thức | だから<ruby>乾<rt>かわ</rt></ruby>いた<ruby>手袋<rt>てぶくろ</rt></ruby>に<ruby>替<rt>か</rt></ruby>えてから<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Vậy đổi sang găng khô rồi mới bắt đầu nhé.)* |
| Kondo | ええKYや。<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>な<ruby>対策<rt>たいさく</rt></ruby>が<ruby>出<rt>で</rt></ruby>とる。<br>*(KY tốt đấy. Ra được biện pháp cụ thể.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>かけも<ruby>忘<rt>わす</rt></ruby>れずにいきましょう。<br>*(Đừng quên hô hiệu nữa nhé.)* |

---

## Tình huống 16 — Tầng 3 · 15:30, dừng việc khi thấy bất an

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ちょっと<ruby>止<rt>と</rt></ruby>めていいですか?<br>*(Anh Kondo, dừng một chút được không ạ?)* |
| Kondo | どうした?<br>*(Sao thế?)* |
| Thức | この<ruby>部材<rt>ぶざい</rt></ruby>、<ruby>思<rt>おも</rt></ruby>ったより<ruby>重<rt>おも</rt></ruby>くて<ruby>一人<rt>ひとり</rt></ruby>では<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Cấu kiện này nặng hơn em tưởng, một mình thì nguy hiểm ạ.)* |
| Kondo | よう<ruby>止<rt>と</rt></ruby>めた。<ruby>無理<rt>むり</rt></ruby>したら<ruby>腰<rt>こし</rt></ruby>やる。<ruby>二人<rt>ふたり</rt></ruby>でやろう。<br>*(Dừng đúng đấy. Cố là hỏng lưng. Làm hai người.)* |
| Thức | <ruby>止<rt>と</rt></ruby>める<ruby>勇気<rt>ゆうき</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>だと<ruby>教<rt>おそ</rt></ruby>わったので。<br>*(Em được dạy can đảm dừng cũng quan trọng ạ.)* |
| Kondo | そのとおりや。<ruby>止<rt>と</rt></ruby>める<ruby>判断<rt>はんだん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいんやで。<br>*(Đúng vậy. Quyết định dừng là khó nhất đấy.)* |

---

## Tình huống 17 — Công trường · 16:00, đề xuất bảng ヒヤリハット chung

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | ヒヤリハットを<ruby>休憩所<rt>きゅうけいじょ</rt></ruby>に<ruby>貼<rt>は</rt></ruby>り<ruby>出<rt>だ</rt></ruby>せば、みんなが<ruby>学<rt>まな</rt></ruby>べます。<br>*(Dán phiếu suýt tai nạn ở khu nghỉ thì mọi người học được ạ.)* |
| Saito | ええ<ruby>考<rt>かんが</rt></ruby>えや。<ruby>名前<rt>なまえ</rt></ruby>は<ruby>消<rt>け</rt></ruby>して<ruby>事例<rt>じれい</rt></ruby>だけにしましょう。<br>*(Ý hay đấy. Xóa tên, chỉ để lại sự việc nhé.)* |
| Thức | <ruby>恥<rt>は</rt></ruby>ずかしくないようにですね。<ruby>報告<rt>ほうこく</rt></ruby>しやすくなります。<br>*(Để không xấu hổ nhỉ. Sẽ dễ báo cáo hơn ạ.)* |
| Saito | <ruby>君<rt>きみ</rt></ruby>は<ruby>仕組<rt>しく</rt></ruby>みで<ruby>考<rt>かんが</rt></ruby>えられる。<ruby>採用<rt>さいよう</rt></ruby>します。<br>*(Em biết nghĩ theo cơ chế. Duyệt.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo tổng kết ngày an toàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>活動<rt>かつどう</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Tanigawa, hoạt động an toàn hôm nay, em báo cáo ạ.)* |
| Tanigawa | <ruby>聞<rt>き</rt></ruby>こう。<br>*(Nói nghe.)* |
| Thức | ヒヤリハット<ruby>一<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>、パトロールで<ruby>指摘<rt>してき</rt></ruby><ruby>四<rt>よん</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>是正<rt>ぜせい</rt></ruby>、<ruby>事故<rt>じこ</rt></ruby>ゼロです。<br>*(Báo một vụ suýt tai nạn, tuần tra chỉ ra bốn điểm đã sửa, tai nạn bằng không ạ.)* |
| Tanigawa | <ruby>事故<rt>じこ</rt></ruby>ゼロが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>や。<br>*(Tai nạn bằng không là thành quả lớn nhất.)* |
| Thức | ヒヤリハット<ruby>掲示<rt>けいじ</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>も<ruby>採用<rt>さいよう</rt></ruby>されました。<br>*(Đề xuất dán bảng suýt tai nạn cũng được duyệt ạ.)* |
| Tanigawa | <ruby>現場<rt>げんば</rt></ruby>を<ruby>良<rt>よ</rt></ruby>くしようとしとる。ええ<ruby>姿勢<rt>しせい</rt></ruby>や。<br>*(Đang muốn cải thiện công trường. Tư thế tốt.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Saito đánh giá ý thức an toàn

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>目<rt>め</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>っていました。<br>*(Thức, hôm nay con mắt an toàn của em lớn lên đấy.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>のヒヤリハットがきっかけです。<ruby>怖<rt>こわ</rt></ruby>かったので。<br>*(Xuất phát từ vụ suýt tai nạn của em ạ. Vì em sợ.)* |
| Saito | その<ruby>怖<rt>こわ</rt></ruby>さを<ruby>忘<rt>わす</rt></ruby>れないでください。<ruby>慣<rt>な</rt></ruby>れが<ruby>一番<rt>いちばん</rt></ruby><ruby>怖<rt>こわ</rt></ruby>い。<br>*(Đừng quên nỗi sợ đó. Quen tay là đáng sợ nhất.)* |
| Thức | はい。<ruby>止<rt>と</rt></ruby>める<ruby>勇気<rt>ゆうき</rt></ruby>も<ruby>持<rt>も</rt></ruby>ち<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng. Em sẽ giữ mãi sự can đảm dừng việc ạ.)* |
| Saito | <ruby>立派<rt>りっぱ</rt></ruby>です。<ruby>君<rt>きみ</rt></ruby>なら<ruby>後輩<rt>こうはい</rt></ruby>にも<ruby>教<rt>おし</rt></ruby>えられます。<br>*(Đáng nể. Em có thể dạy lại đàn em được.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng ạ.)* |

---

## Tình huống 20 — Khu nghỉ · 17:00, dán phiếu ヒヤリハット đầu tiên

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>掲示板<rt>けいじばん</rt></ruby>に<ruby>貼<rt>は</rt></ruby>りました。<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Kondo, em dán lên bảng rồi ạ. Anh xem ạ.)* |
| Kondo | おっ、お<ruby>前<rt>まえ</rt></ruby>の<ruby>事例<rt>じれい</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(Ồ, sự việc của cậu là cái đầu tiên.)* |
| Thức | <ruby>恥<rt>は</rt></ruby>ずかしいですが、<ruby>誰<rt>だれ</rt></ruby>かの<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てばいいです。<br>*(Hơi xấu hổ, nhưng giúp được ai đó là tốt rồi ạ.)* |
| Kondo | その<ruby>気持<rt>きも</rt></ruby>ちが<ruby>現場<rt>げんば</rt></ruby>を<ruby>変<rt>か</rt></ruby>えるんや。<br>*(Tinh thần đó làm thay đổi công trường đấy.)* |
| Thức | みんなが<ruby>言<rt>い</rt></ruby>いやすくなればいいです。<br>*(Mọi người dễ nói ra thì tốt ạ.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>、ええ<ruby>職人<rt>しょくにん</rt></ruby>になってきたな。<br>*(Cậu thành thợ giỏi rồi đấy.)* |

---

## Đọng lại

Thức học văn hóa an toàn kiểu Nhật: ヒヤリハット không phải để bị phạt mà là báu vật ngăn tai nạn lớn; báo cáo trung thực được hoan nghênh. Em tham gia 安全パトロール (chỉ ra và theo đến khi sửa xong), KY nhóm nhỏ trước việc, và học viết biện pháp cụ thể thay vì "chú ý". Quan trọng nhất: Thức có can đảm dừng việc khi thấy bất an và đề xuất cơ chế để cả đội dễ báo cáo.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | ヒヤリハット | ひやりはっと | suýt tai nạn (hú vía) |
> | 安全パトロール | あんぜんぱとろーる | tuần tra an toàn |
> | 危険予知 | きけんよち | dự đoán nguy cơ (KY) |
> | 指摘事項 | してきじこう | điểm chỉ ra cần sửa |
> | 是正 | ぜせい | sửa chữa, khắc phục |
> | 欠損 | けっそん | thiếu hụt, khuyết |
> | 保護具 | ほごぐ | đồ bảo hộ |
> | 着用 | ちゃくよう | mặc/đeo (bảo hộ) |
> | 対策 | たいさく | biện pháp |
> | 原因 | げんいん | nguyên nhân |
> | 事例 | じれい | sự việc, ca điển hình |
> | 共有 | きょうゆう | chia sẻ chung |
> | 仕組み | しくみ | cơ chế, quy trình |
> | 掲示板 | けいじばん | bảng dán thông báo |
> | 勇気 | ゆうき | can đảm |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000007, 800000034, NULL, 'markdown_book', 'T7. Mùa đông, mưa và khủng hoảng của anh Long (冬・雨・ロンさんの危機)', '# Sách thực tập sinh xây dựng · T7. Mùa đông, mưa và khủng hoảng của anh Long (冬・雨・ロンさんの危機)

> **Mục tiêu nhân vật:** Mùa đông lạnh và mưa khiến thu nhập giảm, anh Long rơi vào khủng hoảng tâm lý vì áp lực tiền. Thức học mẫu câu làm việc thời tiết xấu, đồng thời học cách lắng nghe đồng hương khủng hoảng (cân bằng — không tố cáo, hướng anh tới kênh chính thức).

---

## Bối cảnh

Tháng 12 năm 2027. Mùa đông Aichi, mưa và lạnh làm công việc ngoài trời gián đoạn, ngày công ít đi, thu nhập giảm. Anh Long — đàn anh năm 3 — căng thẳng vì áp lực gửi tiền về và mùa đông kéo dài, có lúc nói lời tiêu cực. Chương này tập trung mẫu câu làm việc thời tiết xấu (an toàn mùa đông) và một tình huống Thức lắng nghe anh Long, khuyên anh tìm đoàn thể/職長 hỗ trợ chính thức.

---

## Tình huống 1 — Công trường · 7:30, 朝礼 dặn an toàn mùa đông

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今朝<rt>けさ</rt></ruby>は<ruby>霜<rt>しも</rt></ruby>が<ruby>降<rt>お</rt></ruby>りています。<ruby>足場<rt>あしば</rt></ruby>が<ruby>凍<rt>こお</rt></ruby>って<ruby>滑<rt>すべ</rt></ruby>ります。<br>*(Sáng nay có sương giá. Giàn giáo đóng băng trơn trượt.)* |
| Thức | <ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めはどうすればいいですか?<br>*(Chống trượt thì làm sao ạ?)* |
| Saito | <ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>霜<rt>しも</rt></ruby>を<ruby>落<rt>お</rt></ruby>とします。<ruby>足元<rt>あしもと</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Trước khi làm gạt sương đi. Nhất định kiểm tra chỗ đặt chân.)* |
| Thức | <ruby>手袋<rt>てぶくろ</rt></ruby>も<ruby>凍<rt>こお</rt></ruby>えると<ruby>力<rt>ちから</rt></ruby>が<ruby>入<rt>はい</rt></ruby>りません。<br>*(Găng tay cóng cũng không dùng được sức ạ.)* |
| Saito | いい<ruby>指摘<rt>してき</rt></ruby>です。こまめに<ruby>暖<rt>あたた</rt></ruby>まる<ruby>休憩<rt>きゅうけい</rt></ruby>を<ruby>取<rt>と</rt></ruby>ります。<br>*(Chỉ ra hay. Nghỉ sưởi ấm thường xuyên.)* |
| Thức | はい、<ruby>無理<rt>むり</rt></ruby>せず<ruby>声<rt>こえ</rt></ruby>をかけ<ruby>合<rt>あ</rt></ruby>います。<br>*(Vâng, không cố quá và hô nhau ạ.)* |

---

## Tình huống 2 — Tầng 2 · 8:30, làm việc trên giàn đóng băng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>板<rt>いた</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>凍<rt>こお</rt></ruby>っとるから<ruby>気<rt>き</rt></ruby>をつけろ。<br>*(Thức, trên ván đóng băng, cẩn thận đấy.)* |
| Thức | <ruby>歩<rt>ある</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>足<rt>あし</rt></ruby>で<ruby>確<rt>たし</rt></ruby>かめます。<br>*(Trước khi đi em giẫm thử kiểm tra ạ.)* |
| Kondo | そや。<ruby>急<rt>いそ</rt></ruby>ぐな。<ruby>冬<rt>ふゆ</rt></ruby>は<ruby>転落<rt>てんらく</rt></ruby><ruby>事故<rt>じこ</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>える。<br>*(Đúng. Đừng vội. Mùa đông tai nạn té ngã tăng.)* |
| Thức | <ruby>滑<rt>すべ</rt></ruby>ったら<ruby>無理<rt>むり</rt></ruby>に<ruby>立<rt>た</rt></ruby>とうとしないほうがいいですか?<br>*(Trượt rồi thì đừng cố đứng dậy hơn ạ?)* |
| Kondo | そや、<ruby>手<rt>て</rt></ruby>すりをつかんで<ruby>体<rt>からだ</rt></ruby>を<ruby>低<rt>ひく</rt></ruby>くせえ。<br>*(Đúng, bám lan can hạ thấp người xuống.)* |
| Thức | はい、<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng, em nhớ ạ.)* |

---

## Tình huống 3 — Công trường · 10:00, mưa bất chợt, hỏi xử lý

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>雨<rt>あめ</rt></ruby>が<ruby>降<rt>ふ</rt></ruby>ってきました。<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>はどうしますか?<br>*(Anh Saito, mưa rồi ạ. Làm trên cao thì sao ạ?)* |
| Saito | いったん<ruby>中断<rt>ちゅうだん</rt></ruby>します。<ruby>濡<rt>ぬ</rt></ruby>れた<ruby>足場<rt>あしば</rt></ruby>は<ruby>危険<rt>きけん</rt></ruby>です。<br>*(Tạm dừng đã. Giàn ướt là nguy hiểm.)* |
| Thức | <ruby>道具<rt>どうぐ</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>下<rt>お</rt></ruby>ろしますか?<br>*(Hạ dụng cụ xuống trước ạ?)* |
| Saito | はい。<ruby>濡<rt>ぬ</rt></ruby>れると<ruby>滑<rt>すべ</rt></ruby>って<ruby>落下<rt>らっか</rt></ruby>します。<ruby>養生<rt>ようじょう</rt></ruby>もしてください。<br>*(Ừ. Ướt thì trượt rơi. Che chắn nữa nhé.)* |
| Thức | <ruby>電動<rt>でんどう</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby>は<ruby>濡<rt>ぬ</rt></ruby>らさないように<ruby>注意<rt>ちゅうい</rt></ruby>します。<br>*(Dụng cụ điện em chú ý không cho ướt ạ.)* |
| Saito | そうです。<ruby>感電<rt>かんでん</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>があります。<br>*(Đúng. Có nguy cơ điện giật.)* |

---

## Tình huống 4 — Khu nghỉ · 10:30, chờ tạnh mưa, trò chuyện công việc

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>雨<rt>あめ</rt></ruby>やみそうにないな。トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>早<rt>はや</rt></ruby><ruby>上<rt>あ</rt></ruby>がりかもな。<br>*(Mưa không có vẻ tạnh nhỉ. Thức, hôm nay chắc về sớm đấy.)* |
| Thức | <ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>は<ruby>給料<rt>きゅうりょう</rt></ruby>が<ruby>減<rt>へ</rt></ruby>りますか?<br>*(Ngày mưa thì lương bị giảm ạ?)* |
| Kondo | <ruby>日給<rt>にっきゅう</rt></ruby>やからな。<ruby>休<rt>やす</rt></ruby>むと<ruby>減<rt>へ</rt></ruby>る。<ruby>冬<rt>ふゆ</rt></ruby>はみんなきつい。<br>*(Vì lương theo ngày mà. Nghỉ thì giảm. Mùa đông ai cũng vất.)* |
| Thức | ロンさんも<ruby>大変<rt>たいへん</rt></ruby>そうです。<br>*(Anh Long trông cũng vất vả ạ.)* |
| Kondo | あいつは<ruby>三年目<rt>さんねんめ</rt></ruby>で<ruby>仕送<rt>しおく</rt></ruby>りも<ruby>多<rt>おお</rt></ruby>い。<ruby>気<rt>き</rt></ruby>にかけてやれ。<br>*(Nó năm ba gửi tiền về cũng nhiều. Để ý nó giúp.)* |
| Thức | はい、<ruby>声<rt>こえ</rt></ruby>をかけてみます。<br>*(Vâng, em sẽ hỏi thăm anh ấy ạ.)* |

---

## Tình huống 5 — Công trường · 13:00, mưa tạnh, kiểm tra giàn trước khi lên lại

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>雨<rt>あめ</rt></ruby>がやみました。<ruby>作業<rt>さぎょう</rt></ruby><ruby>再開<rt>さいかい</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>点検<rt>てんけん</rt></ruby>です。<br>*(Mưa tạnh rồi. Trước khi làm lại phải kiểm tra.)* |
| Thức | <ruby>板<rt>いた</rt></ruby>が<ruby>濡<rt>ぬ</rt></ruby>れていないか<ruby>確<rt>たし</rt></ruby>かめます。<br>*(Em xem ván còn ướt không ạ.)* |
| Saito | クランプの<ruby>緩<rt>ゆる</rt></ruby>みも<ruby>見<rt>み</rt></ruby>てください。<ruby>雨<rt>あめ</rt></ruby>のあとは<ruby>特<rt>とく</rt></ruby>に。<br>*(Khóa kẹp có lỏng không cũng xem. Sau mưa đặc biệt chú ý.)* |
| Thức | <ruby>水<rt>みず</rt></ruby>がたまっている<ruby>所<rt>ところ</rt></ruby>は<ruby>拭<rt>ふ</rt></ruby>きますか?<br>*(Chỗ đọng nước em lau đi ạ?)* |
| Saito | はい、<ruby>滑<rt>すべ</rt></ruby>るところは<ruby>必<rt>かなら</rt></ruby>ず。<ruby>慎重<rt>しんちょう</rt></ruby>に。<br>*(Ừ, chỗ trơn thì nhất định lau. Cẩn thận.)* |
| Thức | はい、<ruby>一<rt>ひと</rt></ruby><ruby>面<rt>めん</rt></ruby>ずつ<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em kiểm tra từng mặt một ạ.)* |

---

## Tình huống 6 — Tầng 2 · 14:00, anh Long nói lời tiêu cực lúc làm

| Vai | Lời thoại |
|---|---|
| Long | こんな<ruby>寒<rt>さむ</rt></ruby>い<ruby>中<rt>なか</rt></ruby>、<ruby>働<rt>はたら</rt></ruby>いても<ruby>金<rt>かね</rt></ruby><ruby>減<rt>へ</rt></ruby>る<ruby>一方<rt>いっぽう</rt></ruby>や...<br>*(Lạnh thế này, làm mà tiền cứ vơi đi...)* |
| Thức | ロンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いです。<br>*(Anh Long, anh ổn không? Sắc mặt anh không tốt ạ.)* |
| Long | ...いや、なんでもない。<ruby>仕事<rt>しごと</rt></ruby><ruby>続<rt>つづ</rt></ruby>けよう。<br>*(...Không, không sao. Làm tiếp thôi.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>しないでください。<ruby>後<rt>あと</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>しませんか?<br>*(Anh đừng cố ạ. Lát nữa mình nói chuyện chút không ạ?)* |
| Long | ...そうやな。<ruby>休憩<rt>きゅうけい</rt></ruby>のとき<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(...Ừ nhỉ. Lúc nghỉ nhờ cậu nhé.)* |
| Thức | はい。<ruby>今<rt>いま</rt></ruby>は<ruby>足元<rt>あしもと</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて、<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<br>*(Vâng. Giờ chú ý chỗ đặt chân, mình cùng làm nhé.)* |

---

## Tình huống 7 — Tầng 2 · 14:20, kéo anh Long tập trung an toàn

| Vai | Lời thoại |
|---|---|
| Thức | ロンさん、フック、こっちの<ruby>単管<rt>たんかん</rt></ruby>に<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えてください。<br>*(Anh Long, móc dây đổi sang cây ống thép này ạ.)* |
| Long | ...ああ、<ruby>悪<rt>わる</rt></ruby>い、<ruby>掛<rt>か</rt></ruby>け<ruby>忘<rt>わす</rt></ruby>れとった。<br>*(...À, xin lỗi, anh quên móc.)* |
| Thức | <ruby>考<rt>かんが</rt></ruby>え<ruby>事<rt>ごと</rt></ruby>すると<ruby>危<rt>あぶ</rt></ruby>ないです。<ruby>今<rt>いま</rt></ruby>は<ruby>作業<rt>さぎょう</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>しましょう。<br>*(Suy nghĩ vẩn vơ là nguy hiểm ạ. Giờ tập trung vào việc đã ạ.)* |
| Long | ...せやな。お<ruby>前<rt>まえ</rt></ruby>に<ruby>気<rt>き</rt></ruby>を<ruby>遣<rt>つか</rt></ruby>わせて<ruby>悪<rt>わる</rt></ruby>いな。<br>*(...Đúng nhỉ. Để cậu phải lo cho anh, ngại quá.)* |
| Thức | <ruby>気<rt>き</rt></ruby>にしないでください。<ruby>後<rt>あと</rt></ruby>でちゃんと<ruby>聞<rt>き</rt></ruby>きます。<br>*(Anh đừng ngại ạ. Lát em nghe đàng hoàng ạ.)* |
| Long | ありがとう。とりあえず<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Cảm ơn cậu. Trước mắt cứ làm việc đã.)* |

---

## Tình huống 8 — Khu nghỉ · 15:00, Thức lắng nghe anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, anh kể em nghe đi. Mấy hôm nay trông anh khác lắm. |
| Long | Mùa đông ít việc, lương xuống mà nhà thì cứ gọi xin tiền. Anh mệt quá Thức ạ. Có lúc muốn bỏ về. |
| Thức | Em hiểu mà anh. Nhưng anh đừng tự ôm một mình, đúng câu anh dặn em đó. |
| Long | Ờ... anh nói thì dễ, tới lượt mình mới thấy khó. |
| Thức | Anh thử nói với 斉藤職長 xem. Anh ấy hiền, có khi sắp được việc trong nhà những ngày mưa. Còn chuyện tiền, đoàn thể tiếp nhận (組合) có người tư vấn tiếng Việt đó anh. |
| Long | Ừ... để anh thử. Cảm ơn em đã nghe. Đừng kể ai chuyện này nhé. |
| Thức | Dạ em không kể đâu. Nhưng anh hứa là sẽ đi nói với người có thể giúp thật sự nhé. |
| Long | Anh hứa. Có thằng em như mày anh đỡ thật. |

---

## Tình huống 9 — Khu nghỉ · 15:15, gợi ý anh Long kênh hỗ trợ chính thức

| Vai | Lời thoại |
|---|---|
| Thức | ロンさん、<ruby>組合<rt>くみあい</rt></ruby>の<ruby>相談<rt>そうだん</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>、ベトナム<ruby>語<rt>ご</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だそうです。<br>*(Anh Long, cửa tư vấn của đoàn thể nghe nói tiếng Việt cũng được ạ.)* |
| Long | <ruby>本当<rt>ほんとう</rt></ruby>か。<ruby>怒<rt>おこ</rt></ruby>られへんかな。<br>*(Thật à. Liệu có bị mắng không nhỉ.)* |
| Thức | <ruby>相談<rt>そうだん</rt></ruby>するための<ruby>窓口<rt>まどぐち</rt></ruby>です。<ruby>怒<rt>おこ</rt></ruby>られません。<br>*(Là cửa để tư vấn mà. Không bị mắng đâu ạ.)* |
| Long | そうか...<ruby>一人<rt>ひとり</rt></ruby>で<ruby>悩<rt>なや</rt></ruby>むよりましやな。<br>*(Vậy à... còn hơn ôm một mình.)* |
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>にも<ruby>冬<rt>ふゆ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>のこと、<ruby>聞<rt>き</rt></ruby>いてみてください。<br>*(Anh thử hỏi đốc công về việc làm mùa đông nữa ạ.)* |
| Long | わかった。<ruby>明日<rt>あした</rt></ruby><ruby>勇気<rt>ゆうき</rt></ruby><ruby>出<rt>だ</rt></ruby>して<ruby>言<rt>い</rt></ruby>うてみる。<br>*(Hiểu rồi. Mai anh lấy can đảm thử nói.)* |

---

## Tình huống 10 — Công trường · 15:40, quay lại làm việc, hỗ trợ anh Long

| Vai | Lời thoại |
|---|---|
| Thức | ロンさん、<ruby>残<rt>のこ</rt></ruby>りの<ruby>単管<rt>たんかん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>下<rt>した</rt></ruby>から<ruby>渡<rt>わた</rt></ruby>します。<br>*(Anh Long, mấy cây ống thép còn lại, em đưa từ dưới lên ạ.)* |
| Long | <ruby>助<rt>たす</rt></ruby>かるわ。<ruby>今日<rt>きょう</rt></ruby>はちょっと<ruby>体<rt>からだ</rt></ruby>が<ruby>重<rt>おも</rt></ruby>い。<br>*(Đỡ quá. Hôm nay người anh hơi nặng nề.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>しないで、ゆっくりでいいです。<ruby>声<rt>こえ</rt></ruby>かけ<ruby>合<rt>あ</rt></ruby>いましょう。<br>*(Đừng cố, từ từ cũng được ạ. Mình hô nhau nhé.)* |
| Long | お<ruby>前<rt>まえ</rt></ruby>、<ruby>二年目<rt>にねんめ</rt></ruby>とは<ruby>思<rt>おも</rt></ruby>えんな。<ruby>頼<rt>たの</rt></ruby>もしいわ。<br>*(Cậu, không nghĩ là mới năm hai đấy. Đáng tin cậy.)* |
| Thức | ロンさんに<ruby>教<rt>おそ</rt></ruby>わったからです。<ruby>恩返<rt>おんがえ</rt></ruby>しです。<br>*(Vì em được anh Long dạy ạ. Em trả ơn ạ.)* |
| Long | ...ありがとうな。<ruby>頑張<rt>がんば</rt></ruby>るわ。<br>*(...Cảm ơn cậu. Anh sẽ cố.)* |

---

## Tình huống 11 — Tầng 2 · 16:00, hỏi 職長 về việc làm ngày mưa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>に<ruby>屋内<rt>おくない</rt></ruby>でできる<ruby>仕事<rt>しごと</rt></ruby>はありますか?<br>*(Anh Saito, ngày mưa có việc làm trong nhà không ạ?)* |
| Saito | ありますよ。<ruby>資材<rt>しざい</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>、<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>、<ruby>清掃<rt>せいそう</rt></ruby>などです。<br>*(Có chứ. Sắp xếp vật tư, kiểm tra dụng cụ, vệ sinh...)* |
| Thức | それなら<ruby>雨<rt>あめ</rt></ruby>でも<ruby>働<rt>はたら</rt></ruby>けますね。<br>*(Vậy thì mưa cũng làm việc được nhỉ.)* |
| Saito | そうです。<ruby>希望<rt>きぼう</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>がいれば<ruby>言<rt>い</rt></ruby>ってください。<br>*(Đúng. Có ai muốn làm thì bảo tôi.)* |
| Thức | <ruby>実<rt>じつ</rt></ruby>は、<ruby>冬<rt>ふゆ</rt></ruby>の<ruby>収入<rt>しゅうにゅう</rt></ruby>を<ruby>心配<rt>しんぱい</rt></ruby>している<ruby>人<rt>ひと</rt></ruby>がいます。<br>*(Thực ra, có người đang lo thu nhập mùa đông ạ.)* |
| Saito | そうですか。<ruby>本人<rt>ほんにん</rt></ruby>から<ruby>相談<rt>そうだん</rt></ruby>があれば、できるだけ<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Vậy à. Nếu người đó tới hỏi, tôi sẽ điều chỉnh hết sức.)* |

---

## Tình huống 12 — Khu nghỉ · 16:10, không tiết lộ tên, chỉ gợi mở

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、さっきの<ruby>人<rt>ひと</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>ですか?<br>*(Thức, người lúc nãy là ai vậy?)* |
| Thức | すみません、<ruby>名前<rt>なまえ</rt></ruby>は<ruby>言<rt>い</rt></ruby>えません。<ruby>本人<rt>ほんにん</rt></ruby>が<ruby>話<rt>はな</rt></ruby>すと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em xin lỗi, em không nói tên được. Em nghĩ chính người đó sẽ nói ạ.)* |
| Saito | ...そうですね。<ruby>無理<rt>むり</rt></ruby>には<ruby>聞<rt>き</rt></ruby>きません。<br>*(...Đúng nhỉ. Tôi không hỏi ép.)* |
| Thức | ただ、<ruby>冬<rt>ふゆ</rt></ruby>に<ruby>困<rt>こま</rt></ruby>る<ruby>人<rt>ひと</rt></ruby>がいることだけ、<ruby>知<rt>し</rt></ruby>っておいてほしくて。<br>*(Chỉ là, em muốn anh biết có người gặp khó mùa đông thôi ạ.)* |
| Saito | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>相談<rt>そうだん</rt></ruby>しやすい<ruby>雰囲気<rt>ふんいき</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ります。<br>*(Hiểu rồi. Tôi sẽ tạo bầu không khí dễ tâm sự.)* |
| Thức | ありがとうございます。それで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Em cảm ơn ạ. Vậy là đủ rồi ạ.)* |

---

## Tình huống 13 — Công trường · ngày hôm sau 8:00, anh Long chủ động nói với 職長

| Vai | Lời thoại |
|---|---|
| Long | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、ちょっと<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Anh Saito, em có chút chuyện muốn hỏi ạ.)* |
| Saito | はい、<ruby>聞<rt>き</rt></ruby>きますよ。どうぞ。<br>*(Ừ, tôi nghe đây. Nói đi.)* |
| Long | <ruby>冬<rt>ふゆ</rt></ruby>の<ruby>収入<rt>しゅうにゅう</rt></ruby>が<ruby>厳<rt>きび</rt></ruby>しくて...<ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>、ありますか?<br>*(Thu nhập mùa đông căng quá... ngày mưa có việc không ạ?)* |
| Saito | よく<ruby>言<rt>い</rt></ruby>ってくれました。<ruby>屋内<rt>おくない</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>します。<br>*(Tốt là em đã nói. Tôi sẽ xếp việc trong nhà cho.)* |
| Long | ありがとうございます。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>言<rt>い</rt></ruby>うのが<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Em cảm ơn ạ. Thật ra em sợ không dám nói ạ.)* |
| Saito | <ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えるより<ruby>言<rt>い</rt></ruby>うほうがいいです。いつでもどうぞ。<br>*(Nói ra tốt hơn ôm một mình. Lúc nào cũng được.)* |

---

## Tình huống 14 — Khu nghỉ · 12:10, anh Long nhẹ lòng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, em thấy anh hôm nay tươi hơn rồi đó. |
| Long | Ừ, anh nói với 職長 rồi, ngày mưa được làm trong kho. Còn định cuối tuần gọi lên đoàn thể hỏi chuyện tiền. |
| Thức | Tốt quá anh. Em mừng thật. Tự nói ra là khó nhất mà anh làm được rồi. |
| Long | Nhờ mày đẩy anh đó. Anh suýt làm bậy. Cái mùa đông này nó làm người ta nghĩ quẩn. |
| Thức | Có gì anh cứ nói em. Mình là đồng hương mà. Nhưng chuyện lớn thì để người có thể giúp thật lo anh nhé. |
| Long | Anh hiểu rồi. Cảm ơn em. Mày trưởng thành hơn anh nghĩ nhiều. |

---

## Tình huống 15 — Tầng 2 · 13:00, làm việc bình thường, anh Long tỉnh táo lại

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>でやる。お<ruby>前<rt>まえ</rt></ruby>は<ruby>下<rt>した</rt></ruby>から<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Thức, hôm nay anh làm trên. Cậu đỡ từ dưới nhé.)* |
| Thức | はい。<ruby>調子<rt>ちょうし</rt></ruby><ruby>戻<rt>もど</rt></ruby>りましたね。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Vâng. Anh lại sức rồi nhỉ. Em yên tâm ạ.)* |
| Long | <ruby>心配<rt>しんぱい</rt></ruby>かけたな。もう<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<br>*(Làm cậu lo rồi. Giờ ổn rồi.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>そうなときは<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>ってください。<br>*(Lúc nào thấy không ổn anh nhất định bảo em ạ.)* |
| Long | わかった。<ruby>声<rt>こえ</rt></ruby>かけ<ruby>合<rt>あ</rt></ruby>っていこう。「<ruby>上<rt>あ</rt></ruby>げるで」!<br>*(Hiểu rồi. Mình hô nhau nhé. "Đưa lên đây"!)* |
| Thức | 「<ruby>上<rt>あ</rt></ruby>げます」!<ruby>息<rt>いき</rt></ruby><ruby>合<rt>あ</rt></ruby>ってますね。<br>*(Đưa lên đây! Ăn ý nhỉ.)* |

---

## Tình huống 16 — Công trường · 14:00, hỏi Kondo về chế độ ngày nghỉ thời tiết

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>天候<rt>てんこう</rt></ruby>で<ruby>休<rt>やす</rt></ruby>む<ruby>日<rt>ひ</rt></ruby>は<ruby>仕方<rt>しかた</rt></ruby>ないですか?<br>*(Anh Kondo, ngày nghỉ vì thời tiết thì đành chịu ạ?)* |
| Kondo | <ruby>外<rt>そと</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>やからな。でも<ruby>会社<rt>かいしゃ</rt></ruby>によって<ruby>手当<rt>てあて</rt></ruby>が<ruby>出<rt>で</rt></ruby>る<ruby>所<rt>ところ</rt></ruby>もある。<br>*(Vì là việc ngoài trời mà. Nhưng tùy công ty cũng có chỗ trả phụ cấp.)* |
| Thức | <ruby>休業<rt>きゅうぎょう</rt></ruby><ruby>手当<rt>てあて</rt></ruby>というやつですか?<br>*(Là cái phụ cấp nghỉ việc ấy ạ?)* |
| Kondo | おお、よう<ruby>知<rt>し</rt></ruby>っとるな。<ruby>条件<rt>じょうけん</rt></ruby>があるから<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くのが<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(Ồ, biết đấy nhỉ. Có điều kiện nên hỏi công ty là tốt nhất.)* |
| Thức | <ruby>困<rt>こま</rt></ruby>っている<ruby>人<rt>ひと</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてあげたいです。<br>*(Em muốn chỉ cho người đang gặp khó ạ.)* |
| Kondo | ええ<ruby>心<rt>こころ</rt></ruby>がけや。<ruby>正<rt>ただ</rt></ruby>しい<ruby>窓口<rt>まどぐち</rt></ruby>に<ruby>繋<rt>つな</rt></ruby>げてやるのが<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(Tâm tốt đấy. Nối tới đúng cửa chính thức là tốt nhất.)* |

---

## Tình huống 17 — Công trường · 15:00, đề xuất chia việc trong nhà ngày mưa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>の<ruby>屋内<rt>おくない</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>表<rt>ひょう</rt></ruby>にして<ruby>貼<rt>は</rt></ruby>れば、みんな<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Lập bảng việc trong nhà ngày mưa rồi dán lên thì mọi người dễ biết ạ.)* |
| Saito | なるほど。<ruby>言<rt>い</rt></ruby>い<ruby>出<rt>だ</rt></ruby>しにくい<ruby>人<rt>ひと</rt></ruby>も<ruby>動<rt>うご</rt></ruby>きやすいですね。<br>*(Hiểu rồi. Người ngại nói ra cũng dễ làm hơn nhỉ.)* |
| Thức | はい、<ruby>聞<rt>き</rt></ruby>かなくても<ruby>選<rt>えら</rt></ruby>べるようにしたいです。<br>*(Vâng, em muốn để không cần hỏi cũng chọn được ạ.)* |
| Saito | やさしい<ruby>視点<rt>してん</rt></ruby>です。<ruby>採用<rt>さいよう</rt></ruby>します。<br>*(Góc nhìn nhân văn. Duyệt.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo ngày làm thời tiết xấu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>雨<rt>あめ</rt></ruby>で<ruby>中断<rt>ちゅうだん</rt></ruby>がありましたが<ruby>事故<rt>じこ</rt></ruby>ゼロです。<br>*(Anh Tanigawa, hôm nay có gián đoạn vì mưa nhưng tai nạn bằng không ạ.)* |
| Tanigawa | <ruby>冬<rt>ふゆ</rt></ruby>は<ruby>事故<rt>じこ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。よう<ruby>気<rt>き</rt></ruby>をつけた。<br>*(Mùa đông tai nạn nhiều. Cẩn thận tốt đấy.)* |
| Thức | <ruby>濡<rt>ぬ</rt></ruby>れた<ruby>足場<rt>あしば</rt></ruby>は<ruby>再開<rt>さいかい</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>しました。<br>*(Giàn ướt em đã kiểm tra hết trước khi làm lại ạ.)* |
| Tanigawa | それでええ。<ruby>仲間<rt>なかま</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>もよう<ruby>見<rt>み</rt></ruby>とるらしいな。<br>*(Vậy là được. Nghe nói cậu cũng để ý tới tình trạng đồng đội nhỉ.)* |
| Thức | <ruby>冬<rt>ふゆ</rt></ruby>はみんなきついので、<ruby>声<rt>こえ</rt></ruby>をかけ<ruby>合<rt>あ</rt></ruby>っています。<br>*(Mùa đông ai cũng vất, nên mọi người hỏi thăm nhau ạ.)* |
| Tanigawa | <ruby>現場<rt>げんば</rt></ruby>は<ruby>人<rt>ひと</rt></ruby>や。お<ruby>前<rt>まえ</rt></ruby>、ええもん<ruby>持<rt>も</rt></ruby>っとる。<br>*(Công trường là con người. Cậu có cái tốt đấy.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Kondo nhận xét cách Thức xử lý

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、ロンのこと、うまいことやったな。<br>*(Thức, chuyện anh Long, xử lý khéo đấy.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>は<ruby>聞<rt>き</rt></ruby>いただけです。<ruby>解決<rt>かいけつ</rt></ruby>したのは<ruby>本人<rt>ほんにん</rt></ruby>です。<br>*(Em chỉ lắng nghe thôi ạ. Tự anh ấy giải quyết ạ.)* |
| Kondo | それがええんや。<ruby>勝手<rt>かって</rt></ruby>に<ruby>言<rt>い</rt></ruby>いふらさんかったやろ。<br>*(Vậy mới đúng. Không đi rêu rao lung tung nhỉ.)* |
| Thức | <ruby>本人<rt>ほんにん</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しい<ruby>窓口<rt>まどぐち</rt></ruby>に<ruby>行<rt>い</rt></ruby>くのを<ruby>手伝<rt>てつだ</rt></ruby>っただけです。<br>*(Em chỉ giúp anh ấy tới đúng cửa chính thức thôi ạ.)* |
| Kondo | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい<ruby>支<rt>ささ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>や。よう<ruby>分<rt>わ</rt></ruby>かっとるな。<br>*(Đó là cách hỗ trợ khó nhất. Hiểu rõ đấy.)* |
| Thức | <ruby>困<rt>こま</rt></ruby>ったら<ruby>頼<rt>たよ</rt></ruby>れる<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>知<rt>し</rt></ruby>っておくのが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Biết chỗ có thể dựa vào khi gặp khó là quan trọng ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức và anh Long nói về mùa đông (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Long | Thức à, cảm ơn mày mấy hôm nay. Anh đỡ nhiều rồi. Cuối tuần anh sẽ gọi lên đoàn thể. |
| Thức | Em mừng anh ạ. Mùa đông còn dài, anh đừng giữ trong lòng nữa nhé. |
| Long | Ừ. Anh nhận ra rồi, im lặng chịu đựng không phải mạnh mẽ. Nói ra mới mạnh. |
| Thức | Đúng đó anh. Em cũng học được từ chuyện của anh. Có gì khó là tìm người giúp được thật. |
| Long | Mày giỏi hơn anh hồi năm hai nhiều. Ngủ sớm đi, mai trời lạnh. |
| Thức | Dạ. Anh cũng ngủ sớm. Mai mình lại hô nhau trên giàn nhé. |

---

## Đọng lại

Mùa đông và mưa làm thu nhập giảm, anh Long rơi vào khủng hoảng. Thức học mẫu câu an toàn mùa đông (sương giá, giàn ướt, dụng cụ điện) và quan trọng hơn: cách hỗ trợ đồng hương đúng mực — lắng nghe, không rêu rao, không tự xử lý hộ, mà hướng anh tới kênh chính thức (職長, đoàn thể tiếp nhận có tư vấn tiếng Việt). Anh Long tự lấy can đảm nói ra và nhẹ lòng. Bài học: nói ra không phải yếu đuối, im lặng chịu đựng mới nguy hiểm.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 霜 | しも | sương giá |
> | 凍る | こおる | đóng băng |
> | 滑り止め | すべりどめ | chống trượt |
> | 中断 | ちゅうだん | tạm dừng |
> | 感電 | かんでん | điện giật |
> | 日給 | にっきゅう | lương theo ngày |
> | 仕送り | しおくり | gửi tiền về |
> | 収入 | しゅうにゅう | thu nhập |
> | 相談窓口 | そうだんまどぐち | cửa tư vấn |
> | 組合 | くみあい | đoàn thể (tiếp nhận TTS) |
> | 屋内作業 | おくないさぎょう | việc làm trong nhà |
> | 休業手当 | きゅうぎょうてあて | phụ cấp nghỉ việc |
> | 再開 | さいかい | làm lại, tái khởi động |
> | 抱え込む | かかえこむ | tự ôm một mình |
> | 心がけ | こころがけ | sự lưu tâm, tâm niệm |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000008, 800000034, NULL, 'markdown_book', 'T8. Va chạm với đồng nghiệp (同僚との衝突)', '# Sách thực tập sinh xây dựng · T8. Va chạm với đồng nghiệp (同僚との衝突)

> **Mục tiêu nhân vật:** Thức gặp hiểu lầm/va chạm với một đàn anh Nhật trẻ về cách làm việc. Học mẫu câu xử lý mâu thuẫn nghề: bình tĩnh hỏi lại, xin lỗi đúng mực, giải thích quan điểm, hòa giải qua 職長, làm lành.

---

## Bối cảnh

Tháng 1 năm 2028. Công trường căng tiến độ. Một đàn anh Nhật trẻ (大村先輩, Omura) nóng tính trách Thức làm chậm và "không nghe lời". Thức thấy mình bị hiểu lầm nhưng không cãi tay đôi. Chương này tập trung mẫu câu xử lý va chạm tại công trường — kiềm chế, hỏi lại cho rõ, báo 職長, và làm lành sau khi hiểu nhau.

---

## Tình huống 1 — Tầng 3 · 9:00, bị Omura trách gắt

| Vai | Lời thoại |
|---|---|
| Omura | おい、トゥック!<ruby>何<rt>なん</rt></ruby>でこんな<ruby>遅<rt>おそ</rt></ruby>いんや!<br>*(Này, Thức! Sao chậm thế này hả!)* |
| Thức | すみません、<ruby>何<rt>なに</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>かったでしょうか?<br>*(Em xin lỗi, em chậm chỗ nào ạ?)* |
| Omura | <ruby>材料<rt>ざいりょう</rt></ruby><ruby>上<rt>あ</rt></ruby>げるの、もっと<ruby>早<rt>はや</rt></ruby>くせえや!<br>*(Đưa vật liệu lên, nhanh hơn đi!)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。でも<ruby>一人<rt>ひとり</rt></ruby>で<ruby>重<rt>おも</rt></ruby>いので<ruby>安全<rt>あんぜん</rt></ruby>のため<ruby>確認<rt>かくにん</rt></ruby>していました。<br>*(Em hiểu rồi. Nhưng một mình nặng nên em đang kiểm tra cho an toàn ạ.)* |
| Omura | <ruby>言<rt>い</rt></ruby>い<ruby>訳<rt>わけ</rt></ruby>すんな!<br>*(Đừng có biện minh!)* |
| Thức | ...すみません。<ruby>急<rt>いそ</rt></ruby>ぎます。<br>*(...Em xin lỗi. Em làm nhanh ạ.)* |

---

## Tình huống 2 — Tầng 3 · 9:10, kiềm chế, không cãi tay đôi

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、あれ<ruby>言<rt>い</rt></ruby>い<ruby>過<rt>す</rt></ruby>ぎやろ。<ruby>言<rt>い</rt></ruby>い<ruby>返<rt>かえ</rt></ruby>さんの?<br>*(Thức, ổng nói quá đáng đó. Không cãi lại à?)* |
| Thức | <ruby>今<rt>いま</rt></ruby><ruby>言<rt>い</rt></ruby>い<ruby>返<rt>かえ</rt></ruby>しても<ruby>喧嘩<rt>けんか</rt></ruby>になるだけや。<br>*(Giờ cãi lại chỉ thành cãi nhau thôi.)* |
| Hùng | でも<ruby>悔<rt>くや</rt></ruby>しくないんか?<br>*(Nhưng không ấm ức à?)* |
| Thức | <ruby>悔<rt>くや</rt></ruby>しいけど、<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>する。<ruby>誤解<rt>ごかい</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>解<rt>と</rt></ruby>く。<br>*(Ấm ức chứ, nhưng tập trung làm. Hiểu lầm để sau gỡ.)* |
| Hùng | お<ruby>前<rt>まえ</rt></ruby>、<ruby>冷静<rt>れいせい</rt></ruby>やな。<br>*(Cậu bình tĩnh nhỉ.)* |
| Thức | <ruby>頭<rt>あたま</rt></ruby><ruby>冷<rt>ひ</rt></ruby>やしてからのほうがちゃんと<ruby>話<rt>はな</rt></ruby>せる。<br>*(Để đầu nguội rồi nói chuyện cho đàng hoàng hơn.)* |

---

## Tình huống 3 — Tầng 3 · 10:00, cố làm tốt phần việc của mình

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>大村<rt>おおむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>材料<rt>ざいりょう</rt></ruby><ruby>上<rt>あ</rt></ruby>げました。<ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>しますか?<br>*(Anh Omura, em đưa vật liệu lên rồi. Tiếp theo chuẩn bị gì ạ?)* |
| Omura | ...クランプ、<ruby>五十個<rt>ごじっこ</rt></ruby>や。<br>*(...Khóa kẹp, 50 cái.)* |
| Thức | はい、<ruby>五十個<rt>ごじっこ</rt></ruby>ですね。すぐ<ruby>持<rt>も</rt></ruby>ってきます。<br>*(Vâng, 50 cái ạ. Em mang lên ngay ạ.)* |
| Omura | ...おう。<br>*(...Ờ.)* |
| Thức | <ruby>足<rt>た</rt></ruby>りなかったら<ruby>言<rt>い</rt></ruby>ってください。すぐ<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Thiếu thì anh bảo em ạ. Em bổ sung ngay ạ.)* |
| Omura | ...わかった。<br>*(...Hiểu rồi.)* |

---

## Tình huống 4 — Khu nghỉ · 12:10, tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, sáng nay anh Omura mắng em làm chậm, mà thật ra em đang kiểm tra an toàn. Em ấm ức quá. |
| Long | Omura tính nóng nhưng tay nghề cao, không xấu bụng đâu. Hôm nay chắc bị áp lực tiến độ. |
| Thức | Em không cãi, sợ thành cãi nhau. Nhưng cứ để vậy em khó chịu. |
| Long | Em làm đúng rồi, không cãi tay đôi lúc nóng. Nhưng hiểu lầm thì phải gỡ, đừng ôm. Em nói chuyện riêng với ổng, hoặc nhờ 職長 làm cầu nối. |
| Thức | Dạ. Em sợ nói lại ổng nổi nóng tiếp. |
| Long | Cứ bình tĩnh nói sự thật, đừng trách ngược. Người Nhật trọng người biết nói thẳng mà lễ độ. Anh tin em làm được. |

---

## Tình huống 5 — Công trường · 13:00, xin nói chuyện riêng với Omura

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>大村<rt>おおむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>話<rt>はなし</rt></ruby>してもいいですか?<br>*(Anh Omura, em nói chuyện một chút được không ạ?)* |
| Omura | ...なんや。<br>*(...Gì thế.)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>のこと、<ruby>誤解<rt>ごかい</rt></ruby>があったかもしれません。<br>*(Chuyện sáng nay, có thể có chút hiểu lầm ạ.)* |
| Omura | <ruby>誤解<rt>ごかい</rt></ruby>?<br>*(Hiểu lầm?)* |
| Thức | <ruby>遅<rt>おそ</rt></ruby>かったのは、<ruby>足場板<rt>あしばいた</rt></ruby>が<ruby>浮<rt>う</rt></ruby>いていて<ruby>固定<rt>こてい</rt></ruby>を<ruby>直<rt>なお</rt></ruby>していたからです。<br>*(Em chậm là vì ván giàn kênh lên, em đang chỉnh cố định lại ạ.)* |
| Omura | ...そうやったんか。<br>*(...Vậy à.)* |

---

## Tình huống 6 — Công trường · 13:10, giải thích bình tĩnh, không trách ngược

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>急<rt>いそ</rt></ruby>ぐのは<ruby>分<rt>わ</rt></ruby>かっていました。でも<ruby>危<rt>あぶ</rt></ruby>ないまま<ruby>渡<rt>わた</rt></ruby>せませんでした。<br>*(Em biết là phải nhanh. Nhưng để nguy hiểm em không đưa lên được ạ.)* |
| Omura | ...それを<ruby>先<rt>さき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えや。<br>*(...Thì nói trước đi chứ.)* |
| Thức | すみません、<ruby>説明<rt>せつめい</rt></ruby>が<ruby>足<rt>た</rt></ruby>りませんでした。<ruby>次<rt>つぎ</rt></ruby>からは<ruby>先<rt>さき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em xin lỗi, em giải thích chưa đủ. Lần sau em báo trước ạ.)* |
| Omura | ...いや、<ruby>俺<rt>おれ</rt></ruby>も<ruby>怒鳴<rt>どな</rt></ruby>りすぎた。<ruby>悪<rt>わる</rt></ruby>かったな。<br>*(...Không, anh cũng quát quá. Anh sai rồi.)* |
| Thức | いえ、<ruby>安全<rt>あんぜん</rt></ruby>のことが<ruby>伝<rt>つた</rt></ruby>わってよかったです。<br>*(Không ạ, chuyện an toàn truyền đạt được là tốt rồi ạ.)* |
| Omura | お<ruby>前<rt>まえ</rt></ruby>、<ruby>言<rt>い</rt></ruby>い<ruby>返<rt>かえ</rt></ruby>さんと<ruby>偉<rt>えら</rt></ruby>いな。<br>*(Cậu, không cãi lại, hay đấy.)* |

---

## Tình huống 7 — Công trường · 13:30, hiểu thêm áp lực của Omura

| Vai | Lời thoại |
|---|---|
| Omura | <ruby>実<rt>じつ</rt></ruby>はな、<ruby>今日<rt>きょう</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れてて<ruby>焦<rt>あせ</rt></ruby>っとったんや。<br>*(Thật ra, hôm nay tiến độ trễ nên anh sốt ruột.)* |
| Thức | そうだったんですね。<ruby>知<rt>し</rt></ruby>らなくてすみません。<br>*(Ra là vậy ạ. Em không biết, xin lỗi anh ạ.)* |
| Omura | お<ruby>前<rt>まえ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いんやない。<ruby>八<rt>や</rt></ruby>つ<ruby>当<rt>あ</rt></ruby>たりや。<br>*(Không phải lỗi cậu. Anh trút giận lên cậu thôi.)* |
| Thức | <ruby>焦<rt>あせ</rt></ruby>っているときは<ruby>声<rt>こえ</rt></ruby>をかけてください。<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Lúc sốt ruột anh cứ gọi em. Em phụ ạ.)* |
| Omura | ...ありがとうな。お<ruby>前<rt>まえ</rt></ruby>、ええ<ruby>奴<rt>やつ</rt></ruby>やな。<br>*(...Cảm ơn cậu. Cậu được đấy.)* |
| Thức | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>工程<rt>こうてい</rt></ruby><ruby>戻<rt>もど</rt></ruby>しましょう。<br>*(Mình cùng kéo lại tiến độ nhé.)* |

---

## Tình huống 8 — Công trường · 14:00, báo 職長 để tránh tái diễn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>しておきます。<br>*(Anh Saito, chuyện sáng nay, em báo cáo lại ạ.)* |
| Saito | <ruby>何<rt>なに</rt></ruby>かありましたか?<br>*(Có chuyện gì à?)* |
| Thức | <ruby>大村<rt>おおむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>少<rt>すこ</rt></ruby>し<ruby>誤解<rt>ごかい</rt></ruby>がありましたが、<ruby>話<rt>はな</rt></ruby>して<ruby>解決<rt>かいけつ</rt></ruby>しました。<br>*(Em có chút hiểu lầm với anh Omura, nhưng nói chuyện giải quyết rồi ạ.)* |
| Saito | <ruby>自分<rt>じぶん</rt></ruby>たちで<ruby>解決<rt>かいけつ</rt></ruby>したのですね。<ruby>立派<rt>りっぱ</rt></ruby>です。<br>*(Tự hai bên giải quyết à. Đáng nể.)* |
| Thức | ただ、<ruby>工程<rt>こうてい</rt></ruby>の<ruby>遅<rt>おく</rt></ruby>れが<ruby>原因<rt>げんいん</rt></ruby>なので、<ruby>共有<rt>きょうゆう</rt></ruby>したくて。<br>*(Chỉ là nguyên nhân do trễ tiến độ nên em muốn chia sẻ ạ.)* |
| Saito | <ruby>大事<rt>だいじ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Thông tin quan trọng. Sáng mai họp tôi sẽ điều chỉnh.)* |

---

## Tình huống 9 — Tầng 3 · 14:40, phối hợp lại với Omura ăn ý

| Vai | Lời thoại |
|---|---|
| Omura | トゥック、<ruby>次<rt>つぎ</rt></ruby>の<ruby>単管<rt>たんかん</rt></ruby>、<ruby>三本<rt>さんぼん</rt></ruby><ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Thức, ba cây ống thép tiếp theo nhờ nhé.)* |
| Thức | はい、<ruby>三本<rt>さんぼん</rt></ruby>ですね。<ruby>固定<rt>こてい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>してから<ruby>渡<rt>わた</rt></ruby>します。<br>*(Vâng, ba cây ạ. Em kiểm tra cố định rồi đưa lên ạ.)* |
| Omura | おう、それでええ。<ruby>安全<rt>あんぜん</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>でな。<br>*(Ờ, vậy là được. Ưu tiên an toàn nhé.)* |
| Thức | 「<ruby>上<rt>あ</rt></ruby>げます」!<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り<ruby>確認<rt>かくにん</rt></ruby><ruby>願<rt>ねが</rt></ruby>います。<br>*(Đưa lên đây! Anh xác nhận nhận giúp em ạ.)* |
| Omura | <ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>った!ええ<ruby>呼吸<rt>こきゅう</rt></ruby>や。<br>*(Nhận rồi! Ăn ý đấy.)* |
| Thức | <ruby>誤解<rt>ごかい</rt></ruby>が<ruby>解<rt>と</rt></ruby>けて、<ruby>仕事<rt>しごと</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Gỡ được hiểu lầm, làm việc nhẹ hẳn ạ.)* |

---

## Tình huống 10 — Khu nghỉ · 15:00, anh Long nhận xét cách xử lý (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, em với anh Omura làm lành rồi. Em nói chuyện riêng, ổng cũng xin lỗi luôn. |
| Long | Giỏi đó. Cái khó nhất là không cãi lúc nóng mà vẫn không nuốt ấm ức. Em làm được cả hai. |
| Thức | Em chỉ nói sự thật, không trách ngược ổng. Tự ổng nhận ra. |
| Long | Đúng cách rồi. Người Nhật ngại xung đột trực diện, nhưng nói thẳng mà lễ độ thì họ nể. Em lớn rồi đó. |
| Thức | Em cũng báo 職長 để tránh lần sau. Không phải để mách, mà để sửa cái gốc. |
| Long | Chuẩn. Mách khác báo cáo. Em phân biệt được là trưởng thành thật. |

---

## Tình huống 11 — Công trường · 15:30, Omura chủ động chỉ dạy kỹ thuật

| Vai | Lời thoại |
|---|---|
| Omura | トゥック、お<ruby>前<rt>まえ</rt></ruby>、<ruby>締<rt>し</rt></ruby>め<ruby>付<rt>つ</rt></ruby>けのコツ、<ruby>教<rt>おし</rt></ruby>えたろか。<br>*(Thức, mẹo xiết khóa, anh chỉ cho không?)* |
| Thức | ぜひお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Anh chỉ giúp em ạ!)* |
| Omura | ラチェットを<ruby>体<rt>からだ</rt></ruby>の<ruby>重<rt>おも</rt></ruby>みで<ruby>押<rt>お</rt></ruby>すんや。<ruby>腕<rt>うで</rt></ruby>だけやと<ruby>疲<rt>つか</rt></ruby>れる。<br>*(Đẩy cờ lê bằng trọng lượng cơ thể. Chỉ dùng tay thì mỏi.)* |
| Thức | なるほど、<ruby>体重<rt>たいじゅう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですね。やってみます。<br>*(Hiểu rồi, dùng trọng lượng người nhỉ. Em thử ạ.)* |
| Omura | おお、<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みはやいな。<br>*(Ồ, tiếp thu nhanh nhỉ.)* |
| Thức | <ruby>大村<rt>おおむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>、すごいです。<br>*(Kỹ thuật của anh Omura giỏi thật ạ.)* |

---

## Tình huống 12 — Tầng 3 · 16:00, Thức hỏi cách góp ý ngược lại lễ độ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>意見<rt>いけん</rt></ruby>を<ruby>言<rt>い</rt></ruby>うとき、どう<ruby>言<rt>い</rt></ruby>えば<ruby>失礼<rt>しつれい</rt></ruby>じゃないですか?<br>*(Anh Kondo, khi muốn góp ý với đàn anh, nói sao cho không thất lễ ạ?)* |
| Kondo | まず「<ruby>教<rt>おし</rt></ruby>えてください」から<ruby>入<rt>はい</rt></ruby>るんや。<br>*(Bắt đầu bằng "anh chỉ em với" trước.)* |
| Thức | <ruby>否定<rt>ひてい</rt></ruby>から<ruby>入<rt>はい</rt></ruby>らないんですね。<br>*(Không vào bằng phủ định nhỉ.)* |
| Kondo | そや。「こうかもしれません」と<ruby>柔<rt>やわ</rt></ruby>らかく<ruby>言<rt>い</rt></ruby>えば<ruby>角<rt>かど</rt></ruby>が<ruby>立<rt>た</rt></ruby>たん。<br>*(Đúng. Nói nhẹ "có lẽ thế này ạ" thì không gây căng.)* |
| Thức | <ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>で<ruby>伝<rt>つた</rt></ruby>わり<ruby>方<rt>かた</rt></ruby>が<ruby>変<rt>か</rt></ruby>わるんですね。<br>*(Cách nói thay đổi cách tiếp nhận nhỉ.)* |
| Kondo | そや。<ruby>中身<rt>なかみ</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しくても<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>で<ruby>喧嘩<rt>けんか</rt></ruby>になる。<br>*(Đúng. Nội dung đúng mà cách nói sai cũng thành cãi nhau.)* |

---

## Tình huống 13 — Công trường · 16:20, áp dụng góp ý lễ độ với Omura

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>大村<rt>おおむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Anh Omura, cho em xác nhận một điều ạ.)* |
| Omura | <ruby>何<rt>なん</rt></ruby>や?<br>*(Gì thế?)* |
| Thức | このクランプ、<ruby>向<rt>む</rt></ruby>きが<ruby>逆<rt>ぎゃく</rt></ruby>かもしれません。<ruby>見<rt>み</rt></ruby>てもらえますか?<br>*(Cái khóa này, có thể bị ngược hướng ạ. Anh xem giúp em được không ạ?)* |
| Omura | お、ほんまや。<ruby>俺<rt>おれ</rt></ruby>のミスや。よう<ruby>気<rt>き</rt></ruby>づいた。<br>*(Ồ, đúng thật. Lỗi của anh. Để ý giỏi.)* |
| Thức | <ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>じゃなかったですか?<br>*(Cách nói em có thất lễ không ạ?)* |
| Omura | <ruby>全然<rt>ぜんぜん</rt></ruby>。そういう<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>なら<ruby>気持<rt>きも</rt></ruby>ちええわ。<br>*(Đâu có. Nói kiểu đó thì thoải mái mà.)* |

---

## Tình huống 14 — Văn phòng · 16:40, 親方 nghe chuyện hòa giải

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>大村<rt>おおむら</rt></ruby>とやり<ruby>合<rt>あ</rt></ruby>うたんやて?<br>*(Thức, nghe nói cậu với Omura va chạm à?)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>は<ruby>誤解<rt>ごかい</rt></ruby>がありましたが、<ruby>話<rt>はな</rt></ruby>して<ruby>仲直<rt>なかなお</rt></ruby>りしました。<br>*(Sáng có hiểu lầm, nhưng nói chuyện làm lành rồi ạ.)* |
| Tanigawa | <ruby>殴<rt>なぐ</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いにならんでよかったわ。どうやって<ruby>収<rt>おさ</rt></ruby>めた?<br>*(May không thành ẩu đả. Dàn xếp thế nào?)* |
| Thức | <ruby>言<rt>い</rt></ruby>い<ruby>返<rt>かえ</rt></ruby>さず、<ruby>後<rt>あと</rt></ruby>で<ruby>事実<rt>じじつ</rt></ruby>だけ<ruby>説明<rt>せつめい</rt></ruby>しました。<br>*(Em không cãi lại, sau giải thích chỉ sự thật ạ.)* |
| Tanigawa | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大人<rt>おとな</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>や。<ruby>職人<rt>しょくにん</rt></ruby>は<ruby>腕<rt>うで</rt></ruby>だけやない。<br>*(Đó là cách người lớn nhất. Thợ giỏi không chỉ tay nghề.)* |
| Thức | <ruby>人間<rt>にんげん</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>も<ruby>仕事<rt>しごと</rt></ruby>のうちですね。<br>*(Quan hệ con người cũng là một phần công việc nhỉ.)* |

---

## Tình huống 15 — Công trường · ngày hôm sau 7:30, Omura đối xử thân thiện

| Vai | Lời thoại |
|---|---|
| Omura | トゥック、おはよう。<ruby>今日<rt>きょう</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むで。<br>*(Thức, chào buổi sáng. Hôm nay cũng nhờ nhé.)* |
| Thức | おはようございます。<ruby>今日<rt>きょう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng ạ. Hôm nay mong anh chỉ bảo ạ.)* |
| Omura | <ruby>昨日<rt>きのう</rt></ruby>は<ruby>悪<rt>わる</rt></ruby>かったな。もう<ruby>引<rt>ひ</rt></ruby>きずってへんで。<br>*(Hôm qua anh sai. Không để bụng nữa đâu.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>もです。<ruby>気持<rt>きも</rt></ruby>ちよく<ruby>働<rt>はたら</rt></ruby>けます。<br>*(Em cũng vậy ạ. Làm việc thoải mái ạ.)* |
| Omura | お<ruby>前<rt>まえ</rt></ruby>みたいな<ruby>後輩<rt>こうはい</rt></ruby>、ええわ。<br>*(Đàn em như cậu, được đấy.)* |
| Thức | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ. Em sẽ cố gắng ạ.)* |

---

## Tình huống 16 — Tầng 2 · 9:00, hỏi Kondo về văn hóa "không để bụng"

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>喧嘩<rt>けんか</rt></ruby>した<ruby>次<rt>つぎ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>、みんな<ruby>普通<rt>ふつう</rt></ruby>に<ruby>話<rt>はな</rt></ruby>すんですね。<br>*(Anh Kondo, ngày sau cãi nhau, mọi người vẫn nói chuyện bình thường nhỉ.)* |
| Kondo | <ruby>仕事<rt>しごと</rt></ruby>でぶつかるのは<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>や。<ruby>引<rt>ひ</rt></ruby>きずるほうが<ruby>困<rt>こま</rt></ruby>る。<br>*(Va chạm trong việc là thường. Để bụng mới phiền.)* |
| Thức | <ruby>仕事<rt>しごと</rt></ruby>のことと<ruby>個人<rt>こじん</rt></ruby>のことは<ruby>別<rt>べつ</rt></ruby>ですね。<br>*(Chuyện công việc và chuyện cá nhân là tách biệt nhỉ.)* |
| Kondo | そや。その<ruby>場<rt>ば</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>して、<ruby>翌日<rt>よくじつ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>さん。<br>*(Đúng. Giải quyết tại chỗ, không để qua hôm sau.)* |
| Thức | <ruby>気持<rt>きも</rt></ruby>ちの<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えが<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Chuyển đổi tâm trạng quan trọng nhỉ.)* |
| Kondo | それができる<ruby>奴<rt>やつ</rt></ruby>が<ruby>長<rt>なが</rt></ruby><ruby>続<rt>つづ</rt></ruby>きするんや。<br>*(Đứa làm được cái đó thì trụ lâu trong nghề.)* |

---

## Tình huống 17 — Công trường · 10:00, đề xuất họp ngắn phối hợp tiến độ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>三分<rt>さんぷん</rt></ruby>、<ruby>工程<rt>こうてい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>すれば、<ruby>焦<rt>あせ</rt></ruby>りからの<ruby>衝突<rt>しょうとつ</rt></ruby>が<ruby>減<rt>へ</rt></ruby>ると<ruby>思<rt>おも</rt></ruby>います。<br>*(Trước việc dành 3 phút xác nhận tiến độ thì em nghĩ va chạm do sốt ruột sẽ giảm ạ.)* |
| Saito | なるほど。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>潰<rt>つぶ</rt></ruby>すんですね。<br>*(Hiểu rồi. Dập nguyên nhân từ đầu nhỉ.)* |
| Thức | はい、<ruby>誰<rt>だれ</rt></ruby>が<ruby>何<rt>なに</rt></ruby>を<ruby>急<rt>いそ</rt></ruby>ぐか<ruby>共有<rt>きょうゆう</rt></ruby>したいです。<br>*(Vâng, em muốn chia sẻ ai đang gấp việc gì ạ.)* |
| Saito | ええ<ruby>提案<rt>ていあん</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby>から<ruby>試<rt>ため</rt></ruby>しましょう。<br>*(Đề xuất hay. Từ mai thử nhé.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo tổng kết

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>大村<rt>おおむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>問題<rt>もんだい</rt></ruby>なく<ruby>作業<rt>さぎょう</rt></ruby>できました。<br>*(Anh Tanigawa, hôm nay em làm việc với anh Omura không vấn đề gì ạ.)* |
| Tanigawa | もう<ruby>引<rt>ひ</rt></ruby>きずってへんな?<br>*(Không còn để bụng chứ?)* |
| Thức | はい、お<ruby>互<rt>たが</rt></ruby>い<ruby>気持<rt>きも</rt></ruby>ちよく<ruby>働<rt>はたら</rt></ruby>けています。<ruby>朝<rt>あさ</rt></ruby>の<ruby>工程<rt>こうてい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>も<ruby>提案<rt>ていあん</rt></ruby>しました。<br>*(Vâng, hai bên làm việc thoải mái ạ. Em cũng đề xuất xác nhận tiến độ buổi sáng ạ.)* |
| Tanigawa | <ruby>喧嘩<rt>けんか</rt></ruby>を<ruby>改善<rt>かいぜん</rt></ruby>に<ruby>変<rt>か</rt></ruby>えたんか。<ruby>大<rt>たい</rt></ruby>したもんや。<br>*(Biến cãi nhau thành cải tiến à. Giỏi đấy.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>べと<ruby>教<rt>おそ</rt></ruby>わったので。<br>*(Em được dạy học từ thất bại ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>、<ruby>二年目<rt>にねんめ</rt></ruby>でええ<ruby>根性<rt>こんじょう</rt></ruby>しとる。<br>*(Cậu, năm hai mà bản lĩnh đấy.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Omura nói lời thật với Thức

| Vai | Lời thoại |
|---|---|
| Omura | トゥック、<ruby>正直<rt>しょうじき</rt></ruby><ruby>言<rt>い</rt></ruby>うと、お<ruby>前<rt>まえ</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>したわ。<br>*(Thức, nói thật, anh nhìn lại cậu khác rồi.)* |
| Thức | <ruby>見直<rt>みなお</rt></ruby>す、ですか?<br>*(Nhìn lại khác, ạ?)* |
| Omura | <ruby>怒鳴<rt>どな</rt></ruby>られても<ruby>逃<rt>に</rt></ruby>げず、ちゃんと<ruby>話<rt>はな</rt></ruby>しに<ruby>来<rt>き</rt></ruby>た。<ruby>普通<rt>ふつう</rt></ruby>でけへんで。<br>*(Bị quát mà không trốn, đến nói chuyện đàng hoàng. Bình thường khó làm lắm.)* |
| Thức | <ruby>逃<rt>に</rt></ruby>げたら<ruby>何<rt>なに</rt></ruby>も<ruby>変<rt>か</rt></ruby>わらないと<ruby>思<rt>おも</rt></ruby>ったので。<br>*(Em nghĩ trốn thì không thay đổi được gì ạ.)* |
| Omura | その<ruby>考<rt>かんが</rt></ruby>え、ええで。これからは<ruby>仲間<rt>なかま</rt></ruby>や。<br>*(Suy nghĩ đó hay. Từ giờ là đồng đội.)* |
| Thức | はい、ありがとうございます。<ruby>頼<rt>たよ</rt></ruby>りにしています。<br>*(Vâng, em cảm ơn ạ. Em trông cậy vào anh ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức và Hùng nhìn lại (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, sáng tao tưởng mày với anh Omura căng luôn. Vậy mà chiều thấy hai người cười. |
| Thức | Tao không cãi lúc nóng, để nguội rồi nói riêng sự thật. Hóa ra ổng bị áp lực tiến độ thôi. |
| Hùng | Tao mà bị mắng vậy chắc giận cả tháng. Mày kiềm hay thật. |
| Thức | Anh Long dạy tao: không cãi tay đôi, nhưng cũng đừng nuốt ấm ức. Phải gỡ hiểu lầm. |
| Hùng | Ghi nhớ. Đồng kỳ phải học nhau. Mai tao thử bình tĩnh hơn. |
| Thức | Ừ. Va chạm là chuyện thường, miễn đừng để qua đêm. Ngủ thôi. |

---

## Đọng lại

Thức bị Omura hiểu lầm và trách gắt giữa lúc căng tiến độ. Em học cách xử lý va chạm nghề: không cãi tay đôi lúc nóng nhưng cũng không nuốt ấm ức; để đầu nguội rồi nói chuyện riêng, chỉ trình bày sự thật, không trách ngược. Em báo 職長 để sửa nguyên nhân gốc (không phải để mách), và đề xuất họp ngắn xác nhận tiến độ. Bài học: thợ giỏi không chỉ ở tay nghề, quan hệ con người cũng là một phần công việc; va chạm đừng để qua đêm.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 衝突 | しょうとつ | va chạm, xung đột |
> | 誤解 | ごかい | hiểu lầm |
> | 言い訳 | いいわけ | biện minh |
> | 言い返す | いいかえす | cãi lại |
> | 冷静 | れいせい | bình tĩnh |
> | 八つ当たり | やつあたり | trút giận lên người khác |
> | 工程 | こうてい | tiến độ, công đoạn |
> | 仲直り | なかなおり | làm lành |
> | 角が立つ | かどがたつ | gây căng thẳng (mất lòng) |
> | 引きずる | ひきずる | để bụng, dai dẳng |
> | 切り替え | きりかえ | chuyển đổi (tâm trạng) |
> | 改善 | かいぜん | cải tiến |
> | 見直す | みなおす | nhìn nhận lại (tốt hơn) |
> | 根性 | こんじょう | bản lĩnh, ý chí |
> | 人間関係 | にんげんかんけい | quan hệ con người |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000009, 800000034, NULL, 'markdown_book', 'T9. Đổ bê tông lớn và trách nhiệm (大打設と責任)', '# Sách thực tập sinh xây dựng · T9. Đổ bê tông lớn và trách nhiệm (大打設と責任)

> **Mục tiêu nhân vật:** Ngày đổ bê tông lớn (打設), giàn giáo phải tuyệt đối an toàn. Thức được giao trách nhiệm một khu vực. Học mẫu câu phối hợp ngày trọng điểm, kiểm tra tổng thể, ứng phó sự cố, gánh trách nhiệm và báo cáo dưới áp lực cao.

---

## Bối cảnh

Tháng 2 năm 2028. Hôm nay 打設 (đổ bê tông) tầng lớn — ngày trọng điểm cả công trường, có xe bơm bê tông, nhiều tổ phối hợp. Giàn giáo và sàn thao tác phải chịu tải và rung động lớn, tuyệt đối không được sự cố. 親方 giao Thức năm 2 phụ trách kiểm tra và giữ an toàn một khu. Chương này tập trung mẫu câu làm việc ngày áp lực cao và gánh trách nhiệm.

---

## Tình huống 1 — Công trường · 6:30, 朝礼 dặn ngày 打設

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>今日<rt>きょう</rt></ruby>は<ruby>大<rt>だい</rt></ruby><ruby>打設<rt>だせつ</rt></ruby>や。<ruby>足場<rt>あしば</rt></ruby>に<ruby>事故<rt>じこ</rt></ruby>があったら<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>止<rt>と</rt></ruby>まる。<br>*(Hôm nay đổ bê tông lớn. Giàn có sự cố là dừng tất cả.)* |
| Thức | はい。<ruby>私<rt>わたし</rt></ruby>はどこを<ruby>担当<rt>たんとう</rt></ruby>しますか?<br>*(Vâng. Em phụ trách khu nào ạ?)* |
| Tanigawa | <ruby>東側<rt>ひがしがわ</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>一帯<rt>いったい</rt></ruby>や。お<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せる。<br>*(Cả khu giàn phía đông. Giao cho cậu.)* |
| Thức | <ruby>責任<rt>せきにん</rt></ruby><ruby>重大<rt>じゅうだい</rt></ruby>ですね。<ruby>全力<rt>ぜんりょく</rt></ruby>でやります。<br>*(Trách nhiệm lớn nhỉ. Em sẽ làm hết sức ạ.)* |
| Tanigawa | <ruby>不安<rt>ふあん</rt></ruby>なら<ruby>遠慮<rt>えんりょ</rt></ruby>せず<ruby>呼<rt>よ</rt></ruby>べ。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>えるな。<br>*(Không yên tâm thì cứ gọi. Đừng tự ôm một mình.)* |
| Thức | はい、<ruby>判断<rt>はんだん</rt></ruby>に<ruby>迷<rt>まよ</rt></ruby>ったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vâng, phân vân là em báo ngay ạ.)* |

---

## Tình huống 2 — Khu đông · 7:00, kiểm tra tổng thể trước đổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>打設<rt>だせつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Anh Kondo, các mục kiểm tra trước khi đổ, cho em xác nhận ạ.)* |
| Kondo | クランプの<ruby>緩<rt>ゆる</rt></ruby>み、<ruby>足場板<rt>あしばいた</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>、<ruby>手<rt>て</rt></ruby>すり、<ruby>壁<rt>かべ</rt></ruby>つなぎや。<br>*(Khóa lỏng, ván cố định, lan can, neo vào tường.)* |
| Thức | <ruby>壁<rt>かべ</rt></ruby>つなぎは<ruby>特<rt>とく</rt></ruby>に<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Neo vào tường đặc biệt quan trọng ạ?)* |
| Kondo | そや。<ruby>打設<rt>だせつ</rt></ruby>の<ruby>振動<rt>しんどう</rt></ruby>で<ruby>足場<rt>あしば</rt></ruby>が<ruby>倒<rt>たお</rt></ruby>れたら<ruby>大惨事<rt>だいさんじ</rt></ruby>や。<br>*(Đúng. Rung động khi đổ làm giàn đổ thì thảm họa lớn.)* |
| Thức | <ruby>一<rt>ひと</rt></ruby>つずつ<ruby>触<rt>さわ</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em sờ kiểm tra từng cái một ạ.)* |
| Kondo | それでええ。<ruby>命<rt>いのち</rt></ruby><ruby>預<rt>あず</rt></ruby>かる<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちでな。<br>*(Vậy là được. Với tâm thế giữ tính mạng người khác nhé.)* |

---

## Tình huống 3 — Khu đông · 7:30, phát hiện một neo tường lỏng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です!<br>*(Anh Tanigawa, em báo cáo khẩn ạ!)* |
| Tanigawa | どうした、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>言<rt>い</rt></ruby>え。<br>*(Sao thế, bình tĩnh nói.)* |
| Thức | <ruby>東側<rt>ひがしがわ</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>つなぎが<ruby>一<rt>ひと</rt></ruby>つ<ruby>緩<rt>ゆる</rt></ruby>んでいます。<ruby>打設<rt>だせつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>見<rt>み</rt></ruby>つけました。<br>*(Một neo tường phía đông bị lỏng ạ. Em phát hiện trước khi đổ ạ.)* |
| Tanigawa | よう<ruby>見<rt>み</rt></ruby>つけた!すぐ<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めや。<ruby>俺<rt>おれ</rt></ruby>も<ruby>行<rt>い</rt></ruby>く。<br>*(Tìm ra giỏi! Siết chặt lại ngay. Tao tới luôn.)* |
| Thức | はい、<ruby>打設<rt>だせつ</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>できるまで<ruby>待<rt>ま</rt></ruby>ってもらえますか?<br>*(Vâng, việc đổ chờ đến khi xác nhận xong được không ạ?)* |
| Tanigawa | <ruby>当然<rt>とうぜん</rt></ruby>や。<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>先<rt>さき</rt></ruby>や。<ruby>言<rt>い</rt></ruby>うてくれて<ruby>助<rt>たす</rt></ruby>かった。<br>*(Đương nhiên. An toàn trước. Cậu nói ra cứu cả công trường.)* |

---

## Tình huống 4 — Khu đông · 7:40, siết lại cùng 親方

| Vai | Lời thoại |
|---|---|
| Tanigawa | ここか。たしかに<ruby>緩<rt>ゆる</rt></ruby>いな。トゥック、ラチェット。<br>*(Đây à. Đúng là lỏng. Thức, đưa cờ lê.)* |
| Thức | はい、ラチェットです。<ruby>私<rt>わたし</rt></ruby>が<ruby>押<rt>お</rt></ruby>さえます。<br>*(Vâng, cờ lê đây ạ. Em giữ ạ.)* |
| Tanigawa | しっかり<ruby>効<rt>き</rt></ruby>かせる。これでよし。<ruby>他<rt>ほか</rt></ruby>は?<br>*(Siết cho ăn. Vậy là được. Chỗ khác?)* |
| Thức | <ruby>他<rt>ほか</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>つなぎは<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>触<rt>さわ</rt></ruby>って<ruby>確<rt>たし</rt></ruby>かめました。<ruby>異常<rt>いじょう</rt></ruby>なしです。<br>*(Các neo khác em đã sờ kiểm tra hết. Không có bất thường ạ.)* |
| Tanigawa | <ruby>一<rt>ひと</rt></ruby>つ<ruby>緩<rt>ゆる</rt></ruby>んでたら<ruby>他<rt>ほか</rt></ruby>も<ruby>疑<rt>うたが</rt></ruby>う。ええ<ruby>習慣<rt>しゅうかん</rt></ruby>や。<br>*(Một cái lỏng thì nghi cả cái khác. Thói quen tốt.)* |
| Thức | はい、<ruby>念<rt>ねん</rt></ruby>のため<ruby>全数<rt>ぜんすう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, cho chắc em kiểm tra toàn bộ ạ.)* |

---

## Tình huống 5 — Khu đông · 8:00, báo OK cho 職長 để bắt đầu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>東側<rt>ひがしがわ</rt></ruby><ruby>足場<rt>あしば</rt></ruby>、<ruby>点検<rt>てんけん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>異常<rt>いじょう</rt></ruby>なしです。<br>*(Anh Saito, giàn phía đông kiểm tra xong, không bất thường ạ.)* |
| Saito | <ruby>緩<rt>ゆる</rt></ruby>んでた<ruby>箇所<rt>かしょ</rt></ruby>は?<br>*(Chỗ bị lỏng thì sao?)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>と<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めして、<ruby>再<rt>さい</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>しました。<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Em siết lại với cai và kiểm tra lại. Không vấn đề ạ.)* |
| Saito | よし、<ruby>東側<rt>ひがしがわ</rt></ruby>は<ruby>打設<rt>だせつ</rt></ruby>OKと<ruby>判断<rt>はんだん</rt></ruby>します。<br>*(Tốt, kết luận phía đông OK để đổ.)* |
| Thức | <ruby>打設中<rt>だせつちゅう</rt></ruby>も<ruby>監視<rt>かんし</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Trong lúc đổ em sẽ tiếp tục theo dõi ạ.)* |
| Saito | <ruby>頼<rt>たの</rt></ruby>みます。<ruby>君<rt>きみ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じます。<br>*(Nhờ em. Tôi tin phán đoán của em.)* |

---

## Tình huống 6 — Khu đông · 9:00, giám sát trong lúc đổ bê tông

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>打設<rt>だせつ</rt></ruby><ruby>始<rt>はじ</rt></ruby>まったで。<ruby>足場<rt>あしば</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>どうや?<br>*(Thức, đổ bắt đầu rồi. Tình trạng giàn thế nào?)* |
| Thức | <ruby>振動<rt>しんどう</rt></ruby>はありますが、<ruby>揺<rt>ゆ</rt></ruby>れは<ruby>小<rt>ちい</rt></ruby>さいです。<ruby>異常<rt>いじょう</rt></ruby>なしです。<br>*(Có rung nhưng lắc nhỏ. Không bất thường ạ.)* |
| Kondo | クランプの<ruby>音<rt>おと</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いとけよ。<ruby>異音<rt>いおん</rt></ruby>がしたらすぐ<ruby>言<rt>い</rt></ruby>え。<br>*(Lắng nghe tiếng khóa kẹp. Có tiếng lạ thì báo ngay.)* |
| Thức | はい、<ruby>耳<rt>みみ</rt></ruby>でも<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>目<rt>め</rt></ruby>と<ruby>耳<rt>みみ</rt></ruby><ruby>両方<rt>りょうほう</rt></ruby>で。<br>*(Vâng, em kiểm tra cả bằng tai. Cả mắt và tai ạ.)* |
| Kondo | それや。<ruby>異変<rt>いへん</rt></ruby>は<ruby>早<rt>はや</rt></ruby>く<ruby>気<rt>き</rt></ruby>づくほどええ。<br>*(Đúng đó. Bất thường phát hiện càng sớm càng tốt.)* |
| Thức | <ruby>少<rt>すこ</rt></ruby>しでも<ruby>変<rt>へん</rt></ruby>なら<ruby>止<rt>と</rt></ruby>める<ruby>合図<rt>あいず</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Hơi lạ thôi em cũng ra hiệu dừng ạ.)* |

---

## Tình huống 7 — Khu đông · 10:00, phát hiện rung bất thường, quyết định dừng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>足場<rt>あしば</rt></ruby>の<ruby>揺<rt>ゆ</rt></ruby>れが<ruby>大<rt>おお</rt></ruby>きくなっています。<br>*(Anh Saito, độ lắc của giàn đang lớn lên ạ.)* |
| Saito | どのくらいや?<br>*(Cỡ nào?)* |
| Thức | <ruby>足場板<rt>あしばいた</rt></ruby>が<ruby>明<rt>あき</rt></ruby>らかに<ruby>動<rt>うご</rt></ruby>いています。<ruby>一旦<rt>いったん</rt></ruby><ruby>止<rt>と</rt></ruby>めたほうがいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Ván giàn rõ ràng đang xê dịch. Em nghĩ nên dừng lại đã ạ.)* |
| Saito | <ruby>君<rt>きみ</rt></ruby>がそう<ruby>言<rt>い</rt></ruby>うなら<ruby>止<rt>と</rt></ruby>める。<ruby>打設<rt>だせつ</rt></ruby><ruby>一時<rt>いちじ</rt></ruby><ruby>中断<rt>ちゅうだん</rt></ruby>!<br>*(Em nói vậy thì dừng. Tạm dừng đổ bê tông!)* |
| Thức | ありがとうございます。すぐ<ruby>原因<rt>げんいん</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べます。<br>*(Em cảm ơn ạ. Em điều tra nguyên nhân ngay ạ.)* |
| Saito | <ruby>君<rt>きみ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じた。<ruby>遠慮<rt>えんりょ</rt></ruby>するな。<br>*(Tôi tin phán đoán của em. Đừng ngại.)* |

---

## Tình huống 8 — Khu đông · 10:10, tìm và khắc phục nguyên nhân

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Anh Kondo, em tìm ra nguyên nhân rồi ạ.)* |
| Kondo | <ruby>何<rt>なん</rt></ruby>や?<br>*(Cái gì?)* |
| Thức | <ruby>足場板<rt>あしばいた</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby><ruby>金具<rt>かなぐ</rt></ruby>が<ruby>振動<rt>しんどう</rt></ruby>で<ruby>外<rt>はず</rt></ruby>れかけていました。<br>*(Cái lẫy cố định ván bị rung gần bung ra ạ.)* |
| Kondo | あぶないとこやったな。よう<ruby>止<rt>と</rt></ruby>めた。すぐ<ruby>固定<rt>こてい</rt></ruby>し<ruby>直<rt>なお</rt></ruby>すで。<br>*(Suýt nguy hiểm rồi. Dừng đúng đấy. Cố định lại ngay.)* |
| Thức | <ruby>他<rt>ほか</rt></ruby>の<ruby>板<rt>いた</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じか<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em kiểm tra xem các tấm khác có giống vậy không ạ.)* |
| Kondo | そや、<ruby>一<rt>ひと</rt></ruby>か<ruby>所<rt>しょ</rt></ruby>あったら<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>疑<rt>うたが</rt></ruby>え。<br>*(Đúng, có một chỗ thì nghi tất cả.)* |

---

## Tình huống 9 — Khu đông · 10:40, báo đã khắc phục, xin tiếp tục

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>固定<rt>こてい</rt></ruby><ruby>金具<rt>かなぐ</rt></ruby>を<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしました。<br>*(Anh Saito, em đã siết lại hết các lẫy cố định ạ.)* |
| Saito | <ruby>揺<rt>ゆ</rt></ruby>れは<ruby>収<rt>おさ</rt></ruby>まりましたか?<br>*(Hết lắc chưa?)* |
| Thức | はい、<ruby>試<rt>ため</rt></ruby>しに<ruby>揺<rt>ゆ</rt></ruby>すりましたが、しっかりしています。<br>*(Vâng, em rung thử rồi, chắc chắn ạ.)* |
| Saito | <ruby>親方<rt>おやかた</rt></ruby>にも<ruby>確認<rt>かくにん</rt></ruby>してもらいましたか?<br>*(Đã nhờ cai kiểm tra chưa?)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>して、OKをもらいました。<br>*(Vâng, cai cũng kiểm tra và đồng ý rồi ạ.)* |
| Saito | では<ruby>打設<rt>だせつ</rt></ruby><ruby>再開<rt>さいかい</rt></ruby>です。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>監視<rt>かんし</rt></ruby>を。<br>*(Vậy đổ tiếp. Tiếp tục giám sát nhé.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, anh Long nói về trách nhiệm (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, sáng nay em phải quyết định cho dừng đổ bê tông. Tay em run, sợ quyết sai thì cả công trường mất tiền. |
| Long | Em quyết đúng đó. Thà dừng nhầm còn hơn để giàn sập. Tiền làm lại được, mạng người thì không. |
| Thức | 職長 nói "tôi tin phán đoán của em". Câu đó làm em vừa mừng vừa nặng vai. |
| Long | Đó là người ta giao trách nhiệm thật cho em rồi. Năm hai mà được tin vậy là hiếm. |
| Thức | Em sợ lần sau lại phải quyết một mình. |
| Long | Không một mình đâu. Em báo, người trên quyết cùng. Em làm đúng quy trình là được. Tự tin lên. |

---

## Tình huống 11 — Khu đông · 13:00, phối hợp giữ an toàn lối xe bơm

| Vai | Lời thoại |
|---|---|
| Thức | フン、ポンプ<ruby>車<rt>しゃ</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>く、<ruby>立入<rt>たちい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にしよう。<br>*(Hùng, gần xe bơm, mình cấm vào nhé.)* |
| Hùng | コーン<ruby>置<rt>お</rt></ruby>くだけでええ?<br>*(Chỉ đặt cọc tiêu được không?)* |
| Thức | バーもつけよう。ホースが<ruby>暴<rt>あば</rt></ruby>れると<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Gắn cả thanh chắn. Vòi quẫy là nguy hiểm.)* |
| Hùng | たしかに。<ruby>圧力<rt>あつりょく</rt></ruby>すごいもんな。<br>*(Đúng thật. Áp lực mạnh lắm.)* |
| Thức | <ruby>誰<rt>だれ</rt></ruby>か<ruby>入<rt>はい</rt></ruby>ろうとしたら<ruby>大<rt>おお</rt></ruby>きい<ruby>声<rt>こえ</rt></ruby>で<ruby>止<rt>と</rt></ruby>めて。<br>*(Ai định vào thì hô to chặn lại nhé.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>こっち<ruby>見<rt>み</rt></ruby>とくわ。<br>*(Rõ. Tôi canh bên này cho.)* |

---

## Tình huống 12 — Khu đông · 13:40, hỏi 親方 về phân chia tải sau đổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>打設<rt>だせつ</rt></ruby>のあと<ruby>足場<rt>あしば</rt></ruby>はすぐ<ruby>外<rt>はず</rt></ruby>せますか?<br>*(Anh Tanigawa, sau khi đổ tháo giàn được ngay không ạ?)* |
| Tanigawa | あかん。コンクリートが<ruby>固<rt>かた</rt></ruby>まるまで<ruby>待<rt>ま</rt></ruby>つ。<br>*(Không được. Chờ bê tông đông cứng.)* |
| Thức | <ruby>養生<rt>ようじょう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>はどれくらいですか?<br>*(Thời gian bảo dưỡng cỡ bao lâu ạ?)* |
| Tanigawa | <ruby>季節<rt>きせつ</rt></ruby>によるが、<ruby>冬<rt>ふゆ</rt></ruby>は<ruby>長<rt>なが</rt></ruby>い。<ruby>監督<rt>かんとく</rt></ruby>の<ruby>指示<rt>しじ</rt></ruby>を<ruby>待<rt>ま</rt></ruby>て。<br>*(Tùy mùa, đông thì lâu. Chờ chỉ thị của giám sát.)* |
| Thức | <ruby>勝手<rt>かって</rt></ruby>に<ruby>外<rt>はず</rt></ruby>すと<ruby>事故<rt>じこ</rt></ruby>になりますね。<br>*(Tự ý tháo là tai nạn nhỉ.)* |
| Tanigawa | そや。<ruby>固<rt>かた</rt></ruby>まる<ruby>前<rt>まえ</rt></ruby>に<ruby>支<rt>ささ</rt></ruby>えを<ruby>外<rt>はず</rt></ruby>したら<ruby>崩<rt>くず</rt></ruby>れる。<br>*(Đúng. Tháo đỡ trước khi cứng là sập.)* |

---

## Tình huống 13 — Khu đông · 14:10, ghi nhật ký sự cố và biện pháp

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>中断<rt>ちゅうだん</rt></ruby>のこと、<ruby>記録<rt>きろく</rt></ruby>してください。<br>*(Thức, vụ tạm dừng hôm nay, ghi chép lại nhé.)* |
| Thức | <ruby>時間<rt>じかん</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>、<ruby>対策<rt>たいさく</rt></ruby>、<ruby>再開<rt>さいかい</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>でいいですか?<br>*(Thời gian, nguyên nhân, biện pháp, giờ làm lại, được không ạ?)* |
| Saito | はい。<ruby>誰<rt>だれ</rt></ruby>が<ruby>判断<rt>はんだん</rt></ruby>したかも<ruby>書<rt>か</rt></ruby>いてください。<br>*(Ừ. Ghi cả ai là người quyết định nữa.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>気<rt>き</rt></ruby>づいて<ruby>職長<rt>しょくちょう</rt></ruby>が<ruby>中断<rt>ちゅうだん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めた、ですね。<br>*(Em phát hiện, đốc công quyết tạm dừng, đúng không ạ?)* |
| Saito | そうです。<ruby>正確<rt>せいかく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>すことが<ruby>次<rt>つぎ</rt></ruby>に<ruby>生<rt>い</rt></ruby>きます。<br>*(Đúng. Ghi chính xác sẽ có ích cho lần sau.)* |
| Thức | はい、ていねいに<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em viết cẩn thận ạ.)* |

---

## Tình huống 14 — Văn phòng · 15:00, 親方 đánh giá quyết định của Thức

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>、<ruby>正解<rt>せいかい</rt></ruby>やったぞ。<br>*(Thức, quyết định hôm nay, đúng đấy.)* |
| Thức | <ruby>止<rt>と</rt></ruby>めて<ruby>怒<rt>おこ</rt></ruby>られないか<ruby>不安<rt>ふあん</rt></ruby>でした。<br>*(Em lo dừng lại thì bị mắng ạ.)* |
| Tanigawa | <ruby>逆<rt>ぎゃく</rt></ruby>や。<ruby>気<rt>き</rt></ruby>づいて<ruby>止<rt>と</rt></ruby>めへんかったら<ruby>怒<rt>おこ</rt></ruby>る。<br>*(Ngược lại. Thấy mà không dừng mới bị mắng.)* |
| Thức | <ruby>大<rt>おお</rt></ruby>きな<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げてよかったです。<br>*(Ngăn được tai nạn lớn, em mừng ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せて<ruby>正解<rt>せいかい</rt></ruby>やった。<ruby>責任<rt>せきにん</rt></ruby>を<ruby>果<rt>は</rt></ruby>たしたな。<br>*(Giao cho cậu là đúng. Cậu hoàn thành trách nhiệm rồi.)* |
| Thức | ありがとうございます。<ruby>信<rt>しん</rt></ruby>じてもらえて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn ạ. Được tin tưởng em vui lắm ạ.)* |

---

## Tình huống 15 — Khu đông · 15:30, hướng dẫn Hùng cách giám sát

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>監視<rt>かんし</rt></ruby>って<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>たらええんや?<br>*(Thức, giám sát thì nhìn cái gì vậy?)* |
| Thức | <ruby>足場板<rt>あしばいた</rt></ruby>の<ruby>動<rt>うご</rt></ruby>き、クランプの<ruby>音<rt>おと</rt></ruby>、<ruby>壁<rt>かべ</rt></ruby>つなぎや。<br>*(Chuyển động của ván, tiếng khóa kẹp, neo tường.)* |
| Hùng | <ruby>音<rt>おと</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>なんか?<br>*(Tiếng cũng quan trọng à?)* |
| Thức | <ruby>異音<rt>いおん</rt></ruby>は<ruby>異常<rt>いじょう</rt></ruby>の<ruby>合図<rt>あいず</rt></ruby>や。<ruby>俺<rt>おれ</rt></ruby>も<ruby>音<rt>おと</rt></ruby>で<ruby>気<rt>き</rt></ruby>づいた。<br>*(Tiếng lạ là dấu hiệu bất thường. Tôi cũng nhờ tiếng mà phát hiện.)* |
| Hùng | なるほど、<ruby>耳<rt>みみ</rt></ruby>も<ruby>使<rt>つか</rt></ruby>うんやな。<br>*(Hiểu rồi, phải dùng cả tai nhỉ.)* |
| Thức | おかしいと<ruby>思<rt>おも</rt></ruby>ったら<ruby>迷<rt>まよ</rt></ruby>わず<ruby>言<rt>い</rt></ruby>え。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Thấy lạ thì đừng ngần ngại, nói ngay. Đó là quan trọng nhất.)* |

---

## Tình huống 16 — Khu đông · 16:00, đề xuất checklist trước đổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>打設<rt>だせつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>を<ruby>表<rt>ひょう</rt></ruby>にして、チェックしながら<ruby>回<rt>まわ</rt></ruby>れば<ruby>抜<rt>ぬ</rt></ruby>けが<ruby>減<rt>へ</rt></ruby>ります。<br>*(Lập bảng kiểm tra trước khi đổ, vừa đi vừa tick thì giảm bỏ sót ạ.)* |
| Saito | ええ<ruby>考<rt>かんが</rt></ruby>えや。<ruby>記憶<rt>きおく</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>ると<ruby>抜<rt>ぬ</rt></ruby>けるからな。<br>*(Ý hay đấy. Trông vào trí nhớ thì hay sót mà.)* |
| Thức | <ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>一番<rt>いちばん</rt></ruby><ruby>上<rt>うえ</rt></ruby>に<ruby>書<rt>か</rt></ruby>きたいです。<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なので。<br>*(Em muốn ghi neo tường trên cùng. Vì quan trọng nhất ạ.)* |
| Saito | <ruby>君<rt>きみ</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>が<ruby>生<rt>い</rt></ruby>きていますね。<ruby>採用<rt>さいよう</rt></ruby>します。<br>*(Kinh nghiệm của em phát huy nhỉ. Duyệt.)* |

---

## Tình huống 17 — Khu đông · 16:30, kiểm tra cuối sau khi đổ xong

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>打設<rt>だせつ</rt></ruby><ruby>終<rt>お</rt></ruby>わった。<ruby>最終<rt>さいしゅう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>や。<br>*(Thức, đổ xong rồi. Kiểm tra lần cuối.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>に<ruby>変形<rt>へんけい</rt></ruby>はありません。<ruby>壁<rt>かべ</rt></ruby>つなぎも<ruby>無事<rt>ぶじ</rt></ruby>です。<br>*(Giàn không biến dạng. Neo tường cũng nguyên ạ.)* |
| Kondo | <ruby>足場板<rt>あしばいた</rt></ruby>に<ruby>固<rt>かた</rt></ruby>まった<ruby>コンクリート<rt>こんくりーと</rt></ruby>はないか?<br>*(Có bê tông đông bám trên ván không?)* |
| Thức | <ruby>数<rt>すう</rt></ruby><ruby>か<rt>か</rt></ruby><ruby>所<rt>しょ</rt></ruby>あったので<ruby>固<rt>かた</rt></ruby>まる<ruby>前<rt>まえ</rt></ruby>に<ruby>落<rt>お</rt></ruby>としました。<br>*(Có vài chỗ nên em cạo đi trước khi nó cứng ạ.)* |
| Kondo | <ruby>気<rt>き</rt></ruby>がきくな。<ruby>固<rt>かた</rt></ruby>まると<ruby>滑<rt>すべ</rt></ruby>って<ruby>危<rt>あぶ</rt></ruby>ないからな。<br>*(Tinh ý đấy. Cứng rồi là trơn nguy hiểm mà.)* |
| Thức | はい、<ruby>明日<rt>あした</rt></ruby>のために<ruby>片付<rt>かたづ</rt></ruby>けておきます。<br>*(Vâng, em dọn sẵn cho ngày mai ạ.)* |

---

## Tình huống 18 — Văn phòng · 17:00, báo cáo tổng kết ngày 打設

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>大<rt>だい</rt></ruby><ruby>打設<rt>だせつ</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Tanigawa, đổ bê tông lớn hôm nay đã hoàn thành an toàn ạ.)* |
| Tanigawa | <ruby>東側<rt>ひがしがわ</rt></ruby>、<ruby>事故<rt>じこ</rt></ruby>ゼロやな?<br>*(Phía đông, tai nạn bằng không chứ?)* |
| Thức | はい、ゼロです。<ruby>壁<rt>かべ</rt></ruby>つなぎ<ruby>一<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>と<ruby>固定<rt>こてい</rt></ruby><ruby>金具<rt>かなぐ</rt></ruby>を<ruby>打設<rt>だせつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>と<ruby>途中<rt>とちゅう</rt></ruby>に<ruby>是正<rt>ぜせい</rt></ruby>しました。<br>*(Vâng, bằng không. Một neo tường và lẫy cố định em đã sửa trước và giữa lúc đổ ạ.)* |
| Tanigawa | <ruby>途中<rt>とちゅう</rt></ruby>で<ruby>止<rt>と</rt></ruby>める<ruby>判断<rt>はんだん</rt></ruby>がよかった。<ruby>勇気<rt>ゆうき</rt></ruby>がいるぞ、あれは。<br>*(Quyết dừng giữa chừng tốt đấy. Cái đó cần can đảm.)* |
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>が<ruby>信<rt>しん</rt></ruby>じてくれたからできました。<br>*(Nhờ đốc công tin em mới làm được ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>が<ruby>信<rt>しん</rt></ruby>じられる<ruby>仕事<rt>しごと</rt></ruby>をしたからや。<ruby>立派<rt>りっぱ</rt></ruby>やったぞ。<br>*(Vì cậu làm việc đáng tin. Đáng nể đấy.)* |

---

## Tình huống 19 — Văn phòng · 17:15, Saito nói về việc giao trách nhiệm

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>今日<rt>きょう</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>区画<rt>くかく</rt></ruby><ruby>任<rt>まか</rt></ruby>せて、どう<ruby>感<rt>かん</rt></ruby>じましたか?<br>*(Thức, hôm nay giao cho em một khu, em thấy thế nào?)* |
| Thức | <ruby>怖<rt>こわ</rt></ruby>かったですが、<ruby>誇<rt>ほこ</rt></ruby>らしくもありました。<br>*(Em sợ ạ, nhưng cũng tự hào ạ.)* |
| Saito | その<ruby>両方<rt>りょうほう</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>怖<rt>こわ</rt></ruby>さがあるから<ruby>慎重<rt>しんちょう</rt></ruby>になれる。<br>*(Cả hai cái đó đều quan trọng. Có sợ thì mới cẩn thận.)* |
| Thức | <ruby>任<rt>まか</rt></ruby>される<ruby>重<rt>おも</rt></ruby>さが<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu được sức nặng của việc được giao ạ.)* |
| Saito | それが<ruby>分<rt>わ</rt></ruby>かれば、もう<ruby>一人前<rt>いちにんまえ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>いです。<br>*(Hiểu được điều đó thì gần thành thợ thực thụ rồi.)* |
| Thức | はい、もっと<ruby>信頼<rt>しんらい</rt></ruby>される<ruby>職人<rt>しょくにん</rt></ruby>になります。<br>*(Vâng, em sẽ thành thợ được tin cậy hơn nữa ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức và anh Long nhìn lại (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Long | Thức, nghe nói hôm nay mày cho dừng cả buổi đổ bê tông. Cả công trường nói về mày đó. |
| Thức | Em run lắm anh ạ. Quyết xong tay còn lạnh. May mà đúng. |
| Long | Không phải may, là em làm đúng quy trình. Phát hiện, báo, người trên quyết. Em không liều một mình. |
| Thức | Dạ. 親方 bảo giao cho em là đúng. Em vừa mừng vừa thấy trách nhiệm nặng. |
| Long | Nặng thì mới là trưởng thành. Anh năm ba còn chưa được giao nguyên một khu ngày đổ lớn. |
| Thức | Tại em được mọi người dạy hết mà anh. Cảm ơn anh nữa. Ngủ thôi, mai còn việc. |

---

## Đọng lại

Ngày đổ bê tông lớn, Thức được 親方 giao trách nhiệm cả một khu giàn. Em phát hiện neo tường lỏng trước khi đổ, rồi quyết định báo dừng giữa chừng khi giàn lắc bất thường — học cách gánh trách nhiệm dưới áp lực cao mà vẫn theo đúng quy trình (phát hiện, báo, người trên quyết cùng). 職長 và 親方 đặt niềm tin vào phán đoán của em. Bài học: thà dừng nhầm còn hơn để sập; tiền làm lại được, tính mạng thì không.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 打設 | だせつ | đổ bê tông |
> | 壁つなぎ | かべつなぎ | neo giàn vào tường |
> | 振動 | しんどう | rung động |
> | 異音 | いおん | tiếng lạ (bất thường) |
> | 異変 | いへん | sự biến đổi bất thường |
> | 監視 | かんし | giám sát |
> | 中断 | ちゅうだん | tạm dừng |
> | 養生期間 | ようじょうきかん | thời gian bảo dưỡng bê tông |
> | ポンプ車 | ぽんぷしゃ | xe bơm bê tông |
> | 固定金具 | こていかなぐ | lẫy/khóa cố định |
> | 全数確認 | ぜんすうかくにん | kiểm tra toàn bộ |
> | 責任を果たす | せきにんをはたす | hoàn thành trách nhiệm |
> | 区画 | くかく | khu vực phụ trách |
> | 一人前 | いちにんまえ | thợ thực thụ |
> | 信頼 | しんらい | tin cậy |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000010, 800000034, NULL, 'markdown_book', 'T10. Hướng dẫn đàn em mới (後輩指導)', '# Sách thực tập sinh xây dựng · T10. Hướng dẫn đàn em mới (後輩指導)

> **Mục tiêu nhân vật:** Có thực tập sinh mới (đàn em năm 1) vào tổ. Thức năm 2 lần đầu ở vị trí người dạy. Học mẫu câu hướng dẫn an toàn, giải thích từng bước, sửa lỗi đàn em nhẹ nhàng, dạy lại đúng cách mình từng được dạy.

---

## Bối cảnh

Tháng 3 năm 2028 (cuối năm 2 của Thức). Một thực tập sinh Việt mới — em Nam (ナムくん) — vào tổ giàn giáo. 親方 giao Thức kèm Nam như từng được Kondo và anh Long kèm mình. Thức lần đầu ở vai người dạy: giải thích an toàn, làm mẫu, sửa lỗi mà không làm đàn em sợ. Chương này tập trung mẫu câu hướng dẫn đàn em tại công trường.

---

## Tình huống 1 — Công trường · 7:30, 親方 giao Thức kèm đàn em

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>新人<rt>しんじん</rt></ruby>のナム、お<ruby>前<rt>まえ</rt></ruby>が<ruby>面倒<rt>めんどう</rt></ruby><ruby>見<rt>み</rt></ruby>てくれ。<br>*(Thức, em mới Nam, cậu kèm cho nhé.)* |
| Thức | はい。<ruby>私<rt>わたし</rt></ruby>でいいんですか?まだ<ruby>二年目<rt>にねんめ</rt></ruby>です。<br>*(Vâng. Em làm được ạ? Em mới năm hai ạ.)* |
| Tanigawa | <ruby>二年目<rt>にねんめ</rt></ruby>やからや。<ruby>去年<rt>きょねん</rt></ruby>のことをよう<ruby>覚<rt>おぼ</rt></ruby>えとるやろ。<br>*(Vì mới năm hai. Còn nhớ rõ chuyện năm ngoái mà.)* |
| Thức | たしかに、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>困<rt>こま</rt></ruby>ったことは<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Đúng ạ, những cái lúc đầu vất vả em nhớ ạ.)* |
| Tanigawa | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。まず<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えたれ。<br>*(Cái đó quan trọng nhất. Trước hết dạy nó an toàn.)* |
| Thức | はい、<ruby>自分<rt>じぶん</rt></ruby>が<ruby>教<rt>おそ</rt></ruby>わったように<ruby>教<rt>おし</rt></ruby>えます。<br>*(Vâng, em dạy lại như em đã được dạy ạ.)* |

---

## Tình huống 2 — Bãi vật tư · 7:45, lần đầu gặp đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、はじめまして。<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>のトゥックです。<br>*(Nam, rất hân hạnh. Anh là Thức, người kèm em.)* |
| Nam | はじめまして。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Rất hân hạnh. Mong anh chỉ bảo ạ. Em hồi hộp ạ.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>そうやった。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いて。<br>*(Không sao, anh năm ngoái cũng vậy. Không hiểu gì cứ hỏi.)* |
| Nam | はい。<ruby>怒<rt>おこ</rt></ruby>られないか<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Vâng. Em lo bị mắng ạ.)* |
| Thức | <ruby>聞<rt>き</rt></ruby>くのは<ruby>怒<rt>おこ</rt></ruby>られへん。<ruby>聞<rt>き</rt></ruby>かんと<ruby>事故<rt>じこ</rt></ruby>るほうが<ruby>怒<rt>おこ</rt></ruby>られる。<br>*(Hỏi thì không bị mắng. Không hỏi rồi gây tai nạn mới bị mắng.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em hiểu rồi. Em sẽ cố gắng ạ.)* |

---

## Tình huống 3 — Khu nghỉ · 8:00, dạy đeo dây an toàn

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、まずフルハーネスや。これが<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(Nam, trước hết là dây toàn thân. Cái này bảo vệ tính mạng.)* |
| Nam | どうやって<ruby>着<rt>つ</rt></ruby>けますか?<br>*(Đeo thế nào ạ?)* |
| Thức | <ruby>肩<rt>かた</rt></ruby>から<ruby>通<rt>とお</rt></ruby>して、<ruby>腿<rt>もも</rt></ruby>のベルトを<ruby>締<rt>し</rt></ruby>める。きつすぎず<ruby>緩<rt>ゆる</rt></ruby>すぎず。<br>*(Luồn qua vai, siết dây đùi. Không quá chặt không quá lỏng.)* |
| Nam | これくらいですか?<br>*(Cỡ này ạ?)* |
| Thức | もう<ruby>少<rt>すこ</rt></ruby>し。<ruby>指<rt>ゆび</rt></ruby>が<ruby>二本<rt>にほん</rt></ruby><ruby>入<rt>はい</rt></ruby>るくらいが<ruby>目安<rt>めやす</rt></ruby>や。<br>*(Thêm chút. Lọt được hai ngón tay là mức chuẩn.)* |
| Nam | なるほど、<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Hiểu rồi, em nhớ ạ.)* |

---

## Tình huống 4 — Tầng 1 · 8:30, làm mẫu trước, cho đàn em xem

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>材料<rt>ざいりょう</rt></ruby>の<ruby>渡<rt>わた</rt></ruby>し<ruby>方<rt>かた</rt></ruby>、まず<ruby>俺<rt>おれ</rt></ruby>がやる。<ruby>見<rt>み</rt></ruby>とけ。<br>*(Nam, cách đưa vật liệu, anh làm trước. Nhìn nhé.)* |
| Nam | はい、<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng, em xem ạ.)* |
| Thức | (làm mẫu) 「<ruby>上<rt>あ</rt></ruby>げます」と<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す。<ruby>相手<rt>あいて</rt></ruby>が「<ruby>受<rt>う</rt></ruby>けた」と<ruby>言<rt>い</rt></ruby>うまで<ruby>離<rt>はな</rt></ruby>さない。<br>*(Hô "đưa lên đây". Đối phương nói "nhận rồi" mới buông.)* |
| Nam | <ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すのが<ruby>大事<rt>だいじ</rt></ruby>なんですね。<br>*(Hô to là quan trọng nhỉ.)* |
| Thức | そや。<ruby>黙<rt>だま</rt></ruby>って<ruby>離<rt>はな</rt></ruby>すと<ruby>落<rt>お</rt></ruby>ちて<ruby>大事故<rt>だいじこ</rt></ruby>や。<ruby>次<rt>つぎ</rt></ruby>、やってみ。<br>*(Đúng. Im lặng buông là rơi tai nạn lớn. Tiếp, thử đi.)* |
| Nam | はい、やってみます。<br>*(Vâng, em thử ạ.)* |

---

## Tình huống 5 — Tầng 1 · 8:50, đàn em làm, Thức quan sát

| Vai | Lời thoại |
|---|---|
| Nam | 「<ruby>上<rt>あ</rt></ruby>げます」!...<ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>りお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đưa lên đây!... Anh Kondo, anh nhận giúp em ạ.)* |
| Kondo | <ruby>受<rt>う</rt></ruby>けた!ええ<ruby>声<rt>こえ</rt></ruby>や。<br>*(Nhận rồi! Hô tốt đấy.)* |
| Thức | ナムくん、<ruby>声<rt>こえ</rt></ruby>はよかった。でも<ruby>足<rt>あし</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Nam, tiếng hô tốt. Nhưng vị trí chân hơi nguy hiểm.)* |
| Nam | あ、どこですか?<br>*(À, chỗ nào ạ?)* |
| Thức | <ruby>板<rt>いた</rt></ruby>の<ruby>端<rt>はし</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>すぎる。<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>に<ruby>立<rt>た</rt></ruby>つと<ruby>安全<rt>あんぜん</rt></ruby>や。<br>*(Quá sát mép ván. Đứng giữa thì an toàn.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em hiểu rồi. Em chú ý ạ.)* |

---

## Tình huống 6 — Tầng 1 · 9:20, sửa lỗi đàn em nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、ちょっと<ruby>待<rt>ま</rt></ruby>って。そのクランプ、<ruby>逆<rt>ぎゃく</rt></ruby>や。<br>*(Nam, khoan đã. Cái khóa đó ngược rồi.)* |
| Nam | あ、すみません!<br>*(À, em xin lỗi!)* |
| Thức | <ruby>謝<rt>あやま</rt></ruby>らんでええ。<ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>間違<rt>まちが</rt></ruby>える。<ruby>俺<rt>おれ</rt></ruby>もやった。<br>*(Đừng xin lỗi. Lúc đầu ai cũng nhầm. Anh cũng từng.)* |
| Nam | <ruby>先輩<rt>せんぱい</rt></ruby>もですか?<br>*(Anh cũng vậy ạ?)* |
| Thức | もちろん。<ruby>固定<rt>こてい</rt></ruby>クランプは<ruby>直角<rt>ちょっかく</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>や。<ruby>覚<rt>おぼ</rt></ruby>え<ruby>方<rt>かた</rt></ruby><ruby>教<rt>おし</rt></ruby>えるわ。<br>*(Tất nhiên. Khóa cố định chuyên góc vuông. Anh chỉ mẹo nhớ cho.)* |
| Nam | ありがとうございます。<ruby>覚<rt>おぼ</rt></ruby>えやすいです。<br>*(Em cảm ơn ạ. Dễ nhớ ạ.)* |

---

## Tình huống 7 — Tầng 1 · 9:50, dạy lý do, không chỉ thao tác

| Vai | Lời thoại |
|---|---|
| Nam | <ruby>先輩<rt>せんぱい</rt></ruby>、どうして<ruby>毎回<rt>まいかい</rt></ruby><ruby>足場<rt>あしば</rt></ruby>を<ruby>揺<rt>ゆ</rt></ruby>するんですか?<br>*(Anh, sao mỗi lần phải rung giàn vậy ạ?)* |
| Thức | ええ<ruby>質問<rt>しつもん</rt></ruby>や。<ruby>緩<rt>ゆる</rt></ruby>みがないか<ruby>確<rt>たし</rt></ruby>かめるためや。<br>*(Câu hỏi hay. Để xác nhận có lỏng không.)* |
| Nam | <ruby>見<rt>み</rt></ruby>るだけじゃだめですか?<br>*(Chỉ nhìn không được ạ?)* |
| Thức | <ruby>目<rt>め</rt></ruby>では<ruby>分<rt>わ</rt></ruby>からん<ruby>緩<rt>ゆる</rt></ruby>みがある。<ruby>体<rt>からだ</rt></ruby>で<ruby>確<rt>たし</rt></ruby>かめるんや。<br>*(Có chỗ lỏng mắt không thấy. Phải kiểm bằng tay/người.)* |
| Nam | <ruby>理由<rt>りゆう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かると<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Biết lý do thì không quên ạ.)* |
| Thức | そや。<ruby>俺<rt>おれ</rt></ruby>もそうやって<ruby>覚<rt>おぼ</rt></ruby>えた。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>く<ruby>癖<rt>くせ</rt></ruby>をつけ。<br>*(Đúng. Anh cũng nhớ kiểu đó. Tập thói quen hỏi lý do.)* |

---

## Tình huống 8 — Khu nghỉ · 12:10, Thức và Nam nói chuyện (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, em sợ làm sai bị mắng quá. Ở quê em chưa làm xây dựng bao giờ. |
| Thức | Anh năm ngoái y hệt em. Run lắm. Nhưng cứ hỏi, đừng đoán. Nghề giàn giáo mạng treo lơ lửng, đoán bậy là chết người. |
| Nam | Anh học tiếng Nhật sao mà nghe hiểu được anh Kondo nói tiếng Kansai vậy? |
| Thức | Năm đầu anh cũng không hiểu gì. Cứ ghi lại từ, tối ôn. Mỗi tối một ít, một năm là khác hẳn. |
| Nam | Dạ. Có anh là người Việt em đỡ lo. |
| Thức | Anh từng có anh Long kèm anh. Giờ tới lượt anh kèm em. Cứ yên tâm, mình giúp nhau. |

---

## Tình huống 9 — Tầng 2 · 13:00, khen đúng lúc để đàn em tự tin

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、さっきの<ruby>声<rt>こえ</rt></ruby>かけ、<ruby>完璧<rt>かんぺき</rt></ruby>やったぞ。<br>*(Nam, hô hiệu lúc nãy, hoàn hảo đấy.)* |
| Nam | <ruby>本当<rt>ほんとう</rt></ruby>ですか?うれしいです。<br>*(Thật ạ? Em vui quá ạ.)* |
| Thức | <ruby>大<rt>おお</rt></ruby>きい<ruby>声<rt>こえ</rt></ruby>で、はっきり。<ruby>朝<rt>あさ</rt></ruby>より<ruby>上手<rt>じょうず</rt></ruby>になった。<br>*(To, rõ. Giỏi hơn buổi sáng rồi.)* |
| Nam | <ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>褒<rt>ほ</rt></ruby>められると<ruby>頑張<rt>がんば</rt></ruby>れます。<br>*(Được anh khen em có động lực ạ.)* |
| Thức | できたことは、ちゃんと<ruby>言<rt>い</rt></ruby>う。<ruby>俺<rt>おれ</rt></ruby>もそうしてもらった。<br>*(Làm được thì anh nói rõ. Anh cũng được vậy.)* |
| Nam | はい、もっと<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố hơn ạ.)* |

---

## Tình huống 10 — Tầng 2 · 13:40, dạy báo cáo (報連相)

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>仕事<rt>しごと</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>や。<br>*(Nam, xong việc thì nhất định báo cáo.)* |
| Nam | <ruby>何<rt>なに</rt></ruby>を<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Em nói gì ạ?)* |
| Thức | <ruby>終<rt>お</rt></ruby>わったこと、<ruby>気<rt>き</rt></ruby>づいたこと、<ruby>困<rt>こま</rt></ruby>ったこと、<ruby>三<rt>みっ</rt></ruby>つや。<br>*(Việc xong, điều để ý, chỗ vướng, ba thứ.)* |
| Nam | <ruby>困<rt>こま</rt></ruby>ったことも<ruby>言<rt>い</rt></ruby>うんですか?<br>*(Chỗ vướng cũng nói ạ?)* |
| Thức | <ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<ruby>隠<rt>かく</rt></ruby>すと<ruby>後<rt>あと</rt></ruby>で<ruby>大<rt>おお</rt></ruby>きくなる。<br>*(Quan trọng nhất. Giấu thì sau to chuyện.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<br>*(Em hiểu rồi. Em sẽ nói thật ạ.)* |

---

## Tình huống 11 — Tầng 2 · 14:10, đàn em mắc lỗi, hướng dẫn xử lý

| Vai | Lời thoại |
|---|---|
| Nam | <ruby>先輩<rt>せんぱい</rt></ruby>...クランプを<ruby>一<rt>ひと</rt></ruby>つ<ruby>下<rt>した</rt></ruby>に<ruby>落<rt>お</rt></ruby>としてしまいました。<br>*(Anh... em làm rơi một cái khóa xuống dưới rồi ạ.)* |
| Thức | <ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>はいたか?ケガ<ruby>人<rt>にん</rt></ruby>は?<br>*(Dưới có người không? Có ai bị thương không?)* |
| Nam | いません。<ruby>誰<rt>だれ</rt></ruby>もいませんでした。<br>*(Không ạ. Không có ai ạ.)* |
| Thức | よかった。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれて<ruby>偉<rt>えら</rt></ruby>い。すぐ<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しよう。<br>*(May quá. Nói thật giỏi đấy. Mình báo đốc công ngay nào.)* |
| Nam | <ruby>怒<rt>おこ</rt></ruby>られますか?<br>*(Em bị mắng không ạ?)* |
| Thức | <ruby>隠<rt>かく</rt></ruby>すより<ruby>言<rt>い</rt></ruby>うほうがずっとええ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>く。<br>*(Nói tốt hơn giấu nhiều. Anh đi cùng em.)* |

---

## Tình huống 12 — Văn phòng · 14:20, cùng đàn em báo cáo lỗi cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、ナムくんが<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Anh Saito, em Nam có việc cần báo cáo ạ.)* |
| Nam | クランプを<ruby>下<rt>した</rt></ruby>に<ruby>落<rt>お</rt></ruby>としました。<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>はいませんでした。すみません。<br>*(Em làm rơi khóa xuống dưới. Dưới không có người ạ. Em xin lỗi ạ.)* |
| Saito | ケガ<ruby>人<rt>にん</rt></ruby>がなくて<ruby>何<rt>なに</rt></ruby>よりです。すぐ<ruby>言<rt>い</rt></ruby>ったのがよかった。<br>*(Không ai bị thương là tốt nhất. Báo ngay là tốt.)* |
| Nam | <ruby>工具<rt>こうぐ</rt></ruby><ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>の<ruby>紐<rt>ひも</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けるのを<ruby>忘<rt>わす</rt></ruby>れました。<br>*(Em quên gắn dây chống rơi dụng cụ ạ.)* |
| Saito | <ruby>原因<rt>げんいん</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かれば<ruby>次<rt>つぎ</rt></ruby>は<ruby>防<rt>ふせ</rt></ruby>げます。トゥックくん、よう<ruby>指導<rt>しどう</rt></ruby>した。<br>*(Biết nguyên nhân thì lần sau ngăn được. Thức, kèm tốt đấy.)* |
| Thức | はい、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ cùng nó chú ý ạ.)* |

---

## Tình huống 13 — Tầng 2 · 14:50, dạy dùng dây chống rơi dụng cụ

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>工具<rt>こうぐ</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>の<ruby>紐<rt>ひも</rt></ruby>や。<br>*(Nam, dụng cụ thì nhất định gắn dây chống rơi.)* |
| Nam | こうやって<ruby>付<rt>つ</rt></ruby>けますか?<br>*(Gắn thế này ạ?)* |
| Thức | そう、<ruby>体<rt>からだ</rt></ruby>か<ruby>丈夫<rt>じょうぶ</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>に。<ruby>手<rt>て</rt></ruby>から<ruby>離<rt>はな</rt></ruby>れても<ruby>落<rt>お</rt></ruby>ちない。<br>*(Đúng, vào người hoặc chỗ chắc. Tuột tay cũng không rơi.)* |
| Nam | <ruby>下<rt>した</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためですね。<br>*(Để bảo vệ người dưới nhỉ.)* |
| Thức | そや。<ruby>一<rt>いち</rt></ruby>キロの<ruby>工具<rt>こうぐ</rt></ruby>でも<ruby>高<rt>たか</rt></ruby>さから<ruby>落<rt>お</rt></ruby>ちたら<ruby>凶器<rt>きょうき</rt></ruby>や。<br>*(Đúng. Dụng cụ 1 ký rơi từ trên cao cũng thành hung khí.)* |
| Nam | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Em tuyệt đối không quên ạ.)* |

---

## Tình huống 14 — Tầng 2 · 15:20, hỏi Kondo cách dạy hiệu quả hơn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えるの、<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Anh Kondo, dạy đàn em khó thật ạ.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えるのも<ruby>難<rt>むずか</rt></ruby>しかったで。<br>*(Dạy cậu cũng khó mà.)* |
| Thức | どうすれば<ruby>伝<rt>つた</rt></ruby>わりますか?<br>*(Làm sao để nó hiểu ạ?)* |
| Kondo | <ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby>に<ruby>多<rt>おお</rt></ruby>くを<ruby>教<rt>おし</rt></ruby>えるな。<ruby>一<rt>ひと</rt></ruby>つできたら<ruby>次<rt>つぎ</rt></ruby>や。<br>*(Đừng dạy nhiều một lúc. Làm được một cái rồi sang cái tiếp.)* |
| Thức | あせらないことですね。<br>*(Không vội vàng nhỉ.)* |
| Kondo | そや。お<ruby>前<rt>まえ</rt></ruby>もそうやって<ruby>育<rt>そだ</rt></ruby>った。<ruby>焦<rt>あせ</rt></ruby>らせると<ruby>事故<rt>じこ</rt></ruby>る。<br>*(Đúng. Cậu cũng lớn lên kiểu đó. Hối thúc là tai nạn.)* |

---

## Tình huống 15 — Tầng 2 · 15:40, áp dụng "dạy từng bước một"

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>かけだけ<ruby>完璧<rt>かんぺき</rt></ruby>にしよう。<ruby>他<rt>ほか</rt></ruby>は<ruby>明日<rt>あした</rt></ruby>でええ。<br>*(Nam, hôm nay chỉ cần hô hiệu cho hoàn hảo. Cái khác để mai.)* |
| Nam | <ruby>一<rt>ひと</rt></ruby>つずつでいいんですか?<br>*(Từng cái một được ạ?)* |
| Thức | そや。<ruby>一<rt>ひと</rt></ruby>つ<ruby>確実<rt>かくじつ</rt></ruby>にできるほうが<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Đúng. Làm chắc một cái thì quan trọng hơn.)* |
| Nam | <ruby>気<rt>き</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Em thấy nhẹ đầu hơn ạ.)* |
| Thức | <ruby>焦<rt>あせ</rt></ruby>ると<ruby>危<rt>あぶ</rt></ruby>ない。<ruby>俺<rt>おれ</rt></ruby>もそう<ruby>教<rt>おそ</rt></ruby>わった。<br>*(Vội là nguy hiểm. Anh cũng được dạy vậy.)* |
| Nam | <ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Cách dạy của anh dễ hiểu ạ.)* |

---

## Tình huống 16 — Khu nghỉ · 16:00, đàn em tiến bộ, Thức báo 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、ナムくんの<ruby>様子<rt>ようす</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Tanigawa, tình hình em Nam, em báo cáo ạ.)* |
| Tanigawa | どうや、あいつは。<br>*(Nó thế nào?)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>かけが<ruby>上手<rt>じょうず</rt></ruby>になりました。クランプを<ruby>落<rt>お</rt></ruby>としましたが、すぐ<ruby>報告<rt>ほうこく</rt></ruby>できました。<br>*(Hô hiệu giỏi lên rồi. Có làm rơi khóa nhưng báo cáo ngay được ạ.)* |
| Tanigawa | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えたか。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Nói thật được à. Cái đó quan trọng nhất.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>去年<rt>きょねん</rt></ruby><ruby>教<rt>おそ</rt></ruby>わったことを<ruby>伝<rt>つた</rt></ruby>えています。<br>*(Em truyền lại những gì năm ngoái em được dạy ạ.)* |
| Tanigawa | それでええ。<ruby>教<rt>おし</rt></ruby>えると<ruby>自分<rt>じぶん</rt></ruby>も<ruby>伸<rt>の</rt></ruby>びるんやで。<br>*(Vậy là được. Dạy thì chính mình cũng tiến bộ đấy.)* |

---

## Tình huống 17 — Tầng 2 · 16:20, đề xuất sổ tay đàn em mới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>新人<rt>しんじん</rt></ruby>がよく<ruby>間違<rt>まちが</rt></ruby>えることを<ruby>一<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>にまとめて<ruby>渡<rt>わた</rt></ruby>せば、<ruby>覚<rt>おぼ</rt></ruby>えやすいです。<br>*(Tổng hợp những lỗi em mới hay mắc vào một trang đưa cho thì dễ nhớ ạ.)* |
| Saito | ええ<ruby>考<rt>かんが</rt></ruby>えや。<ruby>君<rt>きみ</rt></ruby>が<ruby>去年<rt>きょねん</rt></ruby><ruby>困<rt>こま</rt></ruby>ったことやな。<br>*(Ý hay đấy. Là những cái năm ngoái em vất vả nhỉ.)* |
| Thức | はい、ベトナム<ruby>語<rt>ご</rt></ruby>も<ruby>付<rt>つ</rt></ruby>ければもっと<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Vâng, kèm tiếng Việt nữa thì dễ hiểu hơn ạ.)* |
| Saito | <ruby>後輩<rt>こうはい</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かる<ruby>君<rt>きみ</rt></ruby>らしい。<ruby>採用<rt>さいよう</rt></ruby>です。<br>*(Đúng kiểu em hiểu lòng đàn em. Duyệt.)* |

---

## Tình huống 18 — Văn phòng · 16:40, báo cáo ngày kèm đàn em

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Tanigawa, việc kèm đàn em hôm nay, em báo cáo ạ.)* |
| Tanigawa | <ruby>聞<rt>き</rt></ruby>こう。<br>*(Nói nghe.)* |
| Thức | ナムくんは<ruby>声<rt>こえ</rt></ruby>かけ、<ruby>安全帯<rt>あんぜんたい</rt></ruby>、<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。<ruby>事故<rt>じこ</rt></ruby>ゼロです。<br>*(Nam đã học hô hiệu, dây an toàn, báo liên thảo. Tai nạn bằng không ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えると、お<ruby>前<rt>まえ</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby>にもなるやろ。<br>*(Cậu dạy thì cũng là ôn lại cho chính cậu nhỉ.)* |
| Thức | はい、<ruby>説明<rt>せつめい</rt></ruby>すると<ruby>自分<rt>じぶん</rt></ruby>の<ruby>理解<rt>りかい</rt></ruby>も<ruby>深<rt>ふか</rt></ruby>まります。<br>*(Vâng, giải thích thì hiểu của em cũng sâu hơn ạ.)* |
| Tanigawa | それが<ruby>分<rt>わ</rt></ruby>かるとは、<ruby>成長<rt>せいちょう</rt></ruby>したな。<br>*(Hiểu được điều đó là trưởng thành rồi đấy.)* |

---

## Tình huống 19 — Văn phòng · 16:55, Kondo đánh giá Thức làm thầy

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>に<ruby>似<rt>に</rt></ruby>とったぞ。<br>*(Thức, cách dạy hôm nay, giống anh đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わったとおりにやっただけです。<br>*(Em chỉ làm đúng như anh Kondo dạy ạ.)* |
| Kondo | <ruby>謝<rt>あやま</rt></ruby>らんでええと<ruby>言<rt>い</rt></ruby>うてたな。あれは<ruby>俺<rt>おれ</rt></ruby>の<ruby>口癖<rt>くちぐせ</rt></ruby>や。<br>*(Bảo nó "đừng xin lỗi" nhỉ. Đó là câu cửa miệng của anh.)* |
| Thức | <ruby>怖<rt>こわ</rt></ruby>がらせないことが<ruby>大事<rt>だいじ</rt></ruby>だと<ruby>学<rt>まな</rt></ruby>びました。<br>*(Em học được không làm nó sợ là quan trọng ạ.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>はええ<ruby>先輩<rt>せんぱい</rt></ruby>になる。<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>いでくれや。<br>*(Cậu sẽ thành đàn anh tốt. Kế thừa lại nhé.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぎます。<br>*(Vâng, em nhất định kế thừa ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức và anh Long nói về việc dạy (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Long | Thức, nghe nói mày kèm thằng Nam hả? Thấy sao? |
| Thức | Khó hơn em tưởng anh ạ. Mới hiểu hồi xưa anh với anh Kondo kèm em cực thế nào. |
| Long | Đúng đó. Dạy người mới hiểu giá trị người từng dạy mình. Em làm tốt là trả ơn rồi. |
| Thức | Em cứ nhớ câu anh dặn em năm ngoái: không chắc thì hỏi, đừng đoán. Giờ em dặn lại nó. |
| Long | Vậy là cái tốt được truyền tiếp. Đó mới là ý nghĩa. Em lớn thật rồi Thức ạ. |
| Thức | Nhờ có anh hết. Ngủ thôi anh, mai em với Nam lại lên giàn. |

---

## Đọng lại

Cuối năm 2, Thức lần đầu ở vai người dạy — kèm em Nam mới sang. Em học mẫu câu hướng dẫn đàn em: dạy an toàn trước, làm mẫu rồi cho thử, sửa lỗi mà không làm đàn em sợ ("đừng xin lỗi, ai cũng từng nhầm"), dạy cả lý do chứ không chỉ thao tác, dạy từng bước một, khen đúng lúc, và cùng đàn em báo cáo lỗi. Thức truyền lại đúng cách Kondo và anh Long từng kèm mình. Bài học: dạy người khác là ôn lại và trưởng thành cho chính mình; cái tốt phải được kế thừa.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 後輩指導 | こうはいしどう | hướng dẫn đàn em |
> | 新人 | しんじん | người mới |
> | 指導担当 | しどうたんとう | người phụ trách kèm cặp |
> | 目安 | めやす | mức chuẩn, mốc tham khảo |
> | 報連相 | ほうれんそう | báo cáo - liên lạc - thảo luận |
> | 落下防止 | らっかぼうし | chống rơi |
> | 凶器 | きょうき | hung khí |
> | 口癖 | くちぐせ | câu cửa miệng |
> | 受け継ぐ | うけつぐ | kế thừa |
> | 復習 | ふくしゅう | ôn tập |
> | 理解 | りかい | sự thấu hiểu |
> | 焦らせる | あせらせる | làm cho cuống/vội |
> | 面倒を見る | めんどうをみる | trông nom, kèm cặp |
> | 伸びる | のびる | tiến bộ, phát triển |
> | 成長 | せいちょう | trưởng thành |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000011, 800000034, NULL, 'markdown_book', 'T11. Nghĩ về Tokutei Ginou (特定技能の検討)', '# Sách thực tập sinh xây dựng · T11. Nghĩ về Tokutei Ginou (特定技能の検討)

> **Mục tiêu nhân vật:** Thức nghĩ về tương lai sau khi hết thực tập — chuyển sang 特定技能 (Tokutei Ginou). Học mẫu câu hỏi đường đi nghề nghiệp: JAC, CCUS, chế độ lương tháng (月給制), thi đánh giá kỹ năng. (Các thông tin chế độ chú thích "đúng tại thời điểm 2026".)

---

## Bối cảnh

Tháng 3 năm 2028 (cuối năm 2). Thức bắt đầu nghĩ tới con đường sau khi hết 3 năm thực tập: chuyển sang tư cách 特定技能 để làm tiếp ngành xây dựng. Em hỏi 親方, 職長 và anh Long về JAC (đoàn thể ngành xây dựng), CCUS (hệ thống nâng cao năng lực thợ), chế độ lương tháng, kỳ thi đánh giá kỹ năng. Chương này tập trung mẫu câu hỏi đáp về tương lai nghề.

> **Chú thích:** Các thông tin về JAC, CCUS, 特定技能, 月給制 trong chương phản ánh chế độ đúng tại thời điểm năm 2026; chế độ có thể thay đổi, người học cần xác nhận thông tin mới nhất khi thực sự làm thủ tục.

---

## Tình huống 1 — Khu nghỉ · 12:10, Thức hỏi 親方 về tương lai

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>実習<rt>じっしゅう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら、その<ruby>後<rt>あと</rt></ruby>はどうなりますか?<br>*(Anh Tanigawa, sau khi hết thực tập, rồi sao ạ?)* |
| Tanigawa | <ruby>残<rt>のこ</rt></ruby>りたいなら<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>変<rt>か</rt></ruby>える<ruby>道<rt>みち</rt></ruby>があるで。<br>*(Muốn ở lại thì có đường chuyển sang Tokutei Ginou.)* |
| Thức | <ruby>特定技能<rt>とくていぎのう</rt></ruby>、よく<ruby>聞<rt>き</rt></ruby>きます。<ruby>実習<rt>じっしゅう</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Tokutei Ginou em hay nghe. Khác thực tập ạ?)* |
| Tanigawa | <ruby>違<rt>ちが</rt></ruby>う。<ruby>転職<rt>てんしょく</rt></ruby>もできるし、<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がる<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<br>*(Khác. Chuyển việc được, lương cũng tăng với nhiều người.)* |
| Thức | <ruby>条件<rt>じょうけん</rt></ruby>はありますか?<br>*(Có điều kiện không ạ?)* |
| Tanigawa | <ruby>試験<rt>しけん</rt></ruby>がいる。<ruby>詳<rt>くわ</rt></ruby>しいことは<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>聞<rt>き</rt></ruby>け。<ruby>俺<rt>おれ</rt></ruby>より<ruby>詳<rt>くわ</rt></ruby>しい。<br>*(Phải thi. Chi tiết hỏi đốc công. Anh ấy rành hơn tao.)* |

---

## Tình huống 2 — Văn phòng · 13:00, hỏi 職長 về kỳ thi đánh giá

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>には<ruby>試験<rt>しけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だと<ruby>聞<rt>き</rt></ruby>きました。<br>*(Anh Saito, em nghe Tokutei Ginou cần thi ạ.)* |
| Saito | はい。でも<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>を<ruby>良<rt>よ</rt></ruby>い<ruby>成績<rt>せいせき</rt></ruby>で<ruby>終<rt>お</rt></ruby>えれば、<ruby>試験<rt>しけん</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>される<ruby>場合<rt>ばあい</rt></ruby>があります。<br>*(Ừ. Nhưng nếu hoàn thành thực tập tốt thì có trường hợp được miễn thi.)* |
| Thức | <ruby>実習<rt>じっしゅう</rt></ruby>を<ruby>真面目<rt>まじめ</rt></ruby>にやることが<ruby>大事<rt>だいじ</rt></ruby>なんですね。<br>*(Làm thực tập nghiêm túc là quan trọng nhỉ.)* |
| Saito | そうです。<ruby>三年間<rt>さんねんかん</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby>が<ruby>君<rt>きみ</rt></ruby>の<ruby>未来<rt>みらい</rt></ruby>になります。<br>*(Đúng. Đánh giá 3 năm sẽ thành tương lai của em.)* |
| Thức | <ruby>日本語<rt>にほんご</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>もありますか?<br>*(Có thi tiếng Nhật không ạ?)* |
| Saito | <ruby>日本語<rt>にほんご</rt></ruby>の<ruby>基準<rt>きじゅん</rt></ruby>もあります。<ruby>今<rt>いま</rt></ruby>から<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Có tiêu chuẩn tiếng Nhật nữa. Từ giờ tiếp tục học đi.)* |

---

## Tình huống 3 — Văn phòng · 13:20, hỏi về JAC

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、JACという<ruby>言葉<rt>ことば</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きました。<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Saito, em nghe từ JAC. Là gì ạ?)* |
| Saito | <ruby>建設<rt>けんせつ</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>特定技能<rt>とくていぎのう</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>える<ruby>団体<rt>だんたい</rt></ruby>です。<br>*(Là tổ chức hỗ trợ Tokutei Ginou ngành xây dựng.)* |
| Thức | どんなことをしてくれますか?<br>*(Họ làm những gì cho mình ạ?)* |
| Saito | <ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れの<ruby>支援<rt>しえん</rt></ruby>や、<ruby>相談<rt>そうだん</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>などです。<ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby><ruby>特有<rt>とくゆう</rt></ruby>の<ruby>仕組<rt>しく</rt></ruby>みです。<br>*(Hỗ trợ tiếp nhận, cửa tư vấn... Là cơ chế đặc thù ngành xây dựng.)* |
| Thức | <ruby>建設<rt>けんせつ</rt></ruby>は<ruby>特別<rt>とくべつ</rt></ruby>な<ruby>仕組<rt>しく</rt></ruby>みがあるんですね。<br>*(Xây dựng có cơ chế riêng nhỉ.)* |
| Saito | はい。<ruby>建設<rt>けんせつ</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>や<ruby>処遇<rt>しょぐう</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るルールが<ruby>厳<rt>きび</rt></ruby>しいんです。<br>*(Ừ. Xây dựng có quy định nghiêm về an toàn và đãi ngộ.)* |

---

## Tình huống 4 — Văn phòng · 13:40, hỏi về CCUS

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、CCUSのカード、<ruby>私<rt>わたし</rt></ruby>も<ruby>持<rt>も</rt></ruby>っています。<ruby>何<rt>なん</rt></ruby>のためですか?<br>*(Anh Saito, thẻ CCUS em cũng có. Để làm gì ạ?)* |
| Saito | <ruby>建設<rt>けんせつ</rt></ruby>キャリアアップシステムです。あなたの<ruby>経験<rt>けいけん</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Là hệ thống nâng cao sự nghiệp ngành xây dựng. Ghi lại kinh nghiệm của em.)* |
| Thức | <ruby>経験<rt>けいけん</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>すると、どうなりますか?<br>*(Ghi lại kinh nghiệm thì sao ạ?)* |
| Saito | <ruby>技能<rt>ぎのう</rt></ruby>レベルが<ruby>上<rt>あ</rt></ruby>がると、<ruby>給料<rt>きゅうりょう</rt></ruby>の<ruby>交渉<rt>こうしょう</rt></ruby>に<ruby>有利<rt>ゆうり</rt></ruby>になります。<br>*(Bậc kỹ năng lên thì có lợi khi đàm phán lương.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>のカード<ruby>登録<rt>とうろく</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>なんですね。<br>*(Đăng ký thẻ mỗi ngày là quan trọng nhỉ.)* |
| Saito | そうです。<ruby>面倒<rt>めんどう</rt></ruby>でも<ruby>続<rt>つづ</rt></ruby>けてください。<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>財産<rt>ざいさん</rt></ruby>です。<br>*(Đúng. Phiền cũng tiếp tục đi. Là tài sản tương lai.)* |

---

## Tình huống 5 — Văn phòng · 14:00, hỏi về chế độ lương tháng (月給制)

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>は<ruby>月給<rt>げっきゅう</rt></ruby>になると<ruby>聞<rt>き</rt></ruby>きました。<br>*(Anh Saito, em nghe Tokutei Ginou thì hưởng lương tháng ạ.)* |
| Saito | <ruby>建設<rt>けんせつ</rt></ruby>では<ruby>月給制<rt>げっきゅうせい</rt></ruby>が<ruby>原則<rt>げんそく</rt></ruby>です。<ruby>天気<rt>てんき</rt></ruby>で<ruby>収入<rt>しゅうにゅう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きく<ruby>減<rt>へ</rt></ruby>らないようにです。<br>*(Xây dựng nguyên tắc là lương tháng. Để thu nhập không giảm mạnh vì thời tiết.)* |
| Thức | <ruby>雨<rt>あめ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>でも<ruby>給料<rt>きゅうりょう</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>するんですね。<br>*(Ngày mưa lương vẫn ổn định nhỉ.)* |
| Saito | そうです。<ruby>冬<rt>ふゆ</rt></ruby>に<ruby>困<rt>こま</rt></ruby>った<ruby>人<rt>ひと</rt></ruby>には<ruby>大<rt>おお</rt></ruby>きいです。<br>*(Đúng. Với người vất vả mùa đông thì rất lớn.)* |
| Thức | ロンさんが<ruby>聞<rt>き</rt></ruby>いたら<ruby>喜<rt>よろこ</rt></ruby>びそうです。<br>*(Anh Long nghe được chắc mừng lắm ạ.)* |
| Saito | <ruby>正<rt>ただ</rt></ruby>しい<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>知<rt>し</rt></ruby>ることが、<ruby>将来<rt>しょうらい</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Biết thông tin đúng sẽ bảo vệ tương lai.)* |

---

## Tình huống 6 — Văn phòng · 14:20, hỏi về chuyển việc trong 特定技能

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えられますか?<br>*(Anh Saito, Tokutei Ginou đổi công ty được không ạ?)* |
| Saito | <ruby>同<rt>おな</rt></ruby>じ<ruby>分野<rt>ぶんや</rt></ruby>なら<ruby>転職<rt>てんしょく</rt></ruby>できます。<ruby>実習<rt>じっしゅう</rt></ruby>とは<ruby>大<rt>おお</rt></ruby>きく<ruby>違<rt>ちが</rt></ruby>います。<br>*(Cùng ngành thì chuyển việc được. Khác nhiều so với thực tập.)* |
| Thức | <ruby>自由<rt>じゆう</rt></ruby>に<ruby>選<rt>えら</rt></ruby>べるのはいいですね。<br>*(Được tự do chọn thì tốt nhỉ.)* |
| Saito | ただ、<ruby>手続<rt>てつづ</rt></ruby>きが<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>勝手<rt>かって</rt></ruby>に<ruby>辞<rt>や</rt></ruby>めるとトラブルになります。<br>*(Nhưng cần thủ tục. Tự ý nghỉ là rắc rối.)* |
| Thức | <ruby>正<rt>ただ</rt></ruby>しい<ruby>順番<rt>じゅんばん</rt></ruby>でやることが<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Làm đúng trình tự là quan trọng nhỉ.)* |
| Saito | そのとおりです。<ruby>困<rt>こま</rt></ruby>ったらJACや<ruby>専門<rt>せんもん</rt></ruby>の<ruby>窓口<rt>まどぐち</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>を。<br>*(Đúng vậy. Khó thì hỏi JAC hay cửa chuyên môn.)* |

---

## Tình huống 7 — Khu nghỉ · 14:40, anh Long chia sẻ kinh nghiệm thực tế

| Vai | Lời thoại |
|---|---|
| Thức | ロンさん、ロンさんは<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えるんですか?<br>*(Anh Long, anh chuyển sang Tokutei Ginou ạ?)* |
| Long | <ruby>来年<rt>らいねん</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら、そうするつもりや。<br>*(Sang năm hết thực tập, anh định vậy.)* |
| Thức | <ruby>手続<rt>てつづ</rt></ruby>きは<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Thủ tục có khó không ạ?)* |
| Long | <ruby>書類<rt>しょるい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。でもJACや<ruby>組合<rt>くみあい</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>ってくれる。<ruby>一人<rt>ひとり</rt></ruby>でやらんでええ。<br>*(Giấy tờ nhiều. Nhưng JAC với đoàn thể giúp. Không phải tự làm một mình.)* |
| Thức | <ruby>月給制<rt>げっきゅうせい</rt></ruby>になれば<ruby>冬<rt>ふゆ</rt></ruby>も<ruby>安心<rt>あんしん</rt></ruby>ですね。<br>*(Lương tháng thì mùa đông cũng yên tâm nhỉ.)* |
| Long | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大<rt>おお</rt></ruby>きい。あの<ruby>冬<rt>ふゆ</rt></ruby>みたいに<ruby>悩<rt>なや</rt></ruby>まんで<ruby>済<rt>す</rt></ruby>む。<br>*(Cái đó lớn nhất. Khỏi phải khổ tâm như mùa đông đó.)* |

---

## Tình huống 8 — Khu nghỉ · 15:00, Thức và anh Long nói về tương lai (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, em đang nghĩ hết 3 năm sẽ chuyển 特定技能 làm tiếp xây dựng. Anh thấy sao? |
| Long | Tốt chứ. Nghề tobi mày làm được rồi, tiếng Nhật lên N3 nữa. Chuyển 特定技能 là lương tháng, ổn định hơn hẳn. |
| Thức | Em sợ thủ tục rắc rối, với lại không biết chế độ có đổi không. |
| Long | Cái đó thì phải hỏi JAC và đoàn thể lúc làm thật, đừng nghe đồn. Chế độ vài năm đổi một lần. Mình chỉ cần làm thực tập cho tốt, hồ sơ đẹp là lợi nhất. |
| Thức | Dạ. Em sẽ chăm thi kỹ năng với tiếng Nhật từ giờ. |
| Long | Đúng hướng. Đừng nóng. Ba năm tới làm đàng hoàng, tương lai tự mở. Anh đi trước, có gì anh báo lại kinh nghiệm. |

---

## Tình huống 9 — Văn phòng · 15:20, hỏi 親方 về thi đánh giá kỹ năng tobi

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、とびの<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>、<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Anh Tanigawa, thi đánh giá kỹ năng tobi khó không ạ?)* |
| Tanigawa | <ruby>毎日<rt>まいにち</rt></ruby>ちゃんとやっとれば<ruby>怖<rt>こわ</rt></ruby>くない。<ruby>基本<rt>きほん</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねや。<br>*(Mỗi ngày làm đàng hoàng thì không đáng sợ. Là tích lũy cái cơ bản.)* |
| Thức | <ruby>特別<rt>とくべつ</rt></ruby>な<ruby>勉強<rt>べんきょう</rt></ruby>がいりますか?<br>*(Cần học gì đặc biệt không ạ?)* |
| Tanigawa | <ruby>安全<rt>あんぜん</rt></ruby>と<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>言葉<rt>ことば</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>できるようにしとけ。<br>*(Tập giải thích an toàn và trình tự bằng lời.)* |
| Thức | <ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えたことを<ruby>言葉<rt>ことば</rt></ruby>にするんですね。<br>*(Diễn đạt bằng lời cái đã học bằng tay nhỉ.)* |
| Tanigawa | そや。お<ruby>前<rt>まえ</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えとるやろ。それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>や。<br>*(Đúng. Cậu đang dạy đàn em mà. Đó là luyện tốt nhất.)* |

---

## Tình huống 10 — Văn phòng · 15:40, hỏi 職長 cách chuẩn bị từ bây giờ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>今<rt>いま</rt></ruby>から<ruby>何<rt>なに</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>すればいいですか?<br>*(Anh Saito, từ giờ em chuẩn bị gì ạ?)* |
| Saito | <ruby>三<rt>みっ</rt></ruby>つです。<ruby>日本語<rt>にほんご</rt></ruby>、<ruby>技能<rt>ぎのう</rt></ruby>、それから<ruby>記録<rt>きろく</rt></ruby>です。<br>*(Ba thứ. Tiếng Nhật, kỹ năng, và ghi chép.)* |
| Thức | <ruby>記録<rt>きろく</rt></ruby>というのはCCUSですか?<br>*(Ghi chép là CCUS ạ?)* |
| Saito | はい、それと<ruby>作業<rt>さぎょう</rt></ruby><ruby>日報<rt>にっぽう</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねが<ruby>証明<rt>しょうめい</rt></ruby>になります。<br>*(Ừ, với cả nhật ký công việc. Tích lũy mỗi ngày thành bằng chứng.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>のことが<ruby>未来<rt>みらい</rt></ruby>につながるんですね。<br>*(Việc mỗi ngày nối tới tương lai nhỉ.)* |
| Saito | そうです。<ruby>近道<rt>ちかみち</rt></ruby>はありません。<ruby>地道<rt>じみち</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い。<br>*(Đúng. Không có đường tắt. Kiên trì là mạnh nhất.)* |

---

## Tình huống 11 — Công trường · 16:00, làm việc với tâm thế hướng tương lai

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>考<rt>かんが</rt></ruby>えとるんやて?<br>*(Thức, đang tính Tokutei Ginou à?)* |
| Thức | はい。でもまず<ruby>残<rt>のこ</rt></ruby>り<ruby>一年<rt>いちねん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にします。<br>*(Vâng. Nhưng trước hết em trân trọng một năm còn lại ạ.)* |
| Kondo | ええ<ruby>考<rt>かんが</rt></ruby>えや。<ruby>先<rt>さき</rt></ruby>ばっかり<ruby>見<rt>み</rt></ruby>て<ruby>足元<rt>あしもと</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れたら<ruby>事故<rt>じこ</rt></ruby>るで。<br>*(Suy nghĩ hay. Chỉ nhìn xa quên dưới chân là tai nạn đấy.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>にやることが、<ruby>未来<rt>みらい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>です。<br>*(Làm việc hiện tại cẩn thận chính là chuẩn bị cho tương lai ạ.)* |
| Kondo | ええこと<ruby>言<rt>い</rt></ruby>うな。それが<ruby>分<rt>わ</rt></ruby>かっとる<ruby>奴<rt>やつ</rt></ruby>は<ruby>伸<rt>の</rt></ruby>びる。<br>*(Nói hay đấy. Đứa hiểu điều đó thì tiến xa.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わったからです。<br>*(Vì em được anh Kondo dạy ạ.)* |

---

## Tình huống 12 — Khu nghỉ · 16:15, chia sẻ thông tin đúng cho Hùng

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>特定技能<rt>とくていぎのう</rt></ruby>って<ruby>給料<rt>きゅうりょう</rt></ruby>めっちゃ<ruby>上<rt>あ</rt></ruby>がるって<ruby>本当<rt>ほんとう</rt></ruby>?<br>*(Thức, nghe nói Tokutei Ginou lương tăng vọt, thật không?)* |
| Thức | <ruby>上<rt>あ</rt></ruby>がる<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いけど、<ruby>会社<rt>かいしゃ</rt></ruby>や<ruby>地域<rt>ちいき</rt></ruby>で<ruby>違<rt>ちが</rt></ruby>うで。<br>*(Nhiều người tăng nhưng tùy công ty và vùng khác nhau đó.)* |
| Hùng | じゃあ<ruby>噂<rt>うわさ</rt></ruby>は<ruby>信<rt>しん</rt></ruby>じたらあかんな。<br>*(Vậy tin đồn không tin được nhỉ.)* |
| Thức | そや。<ruby>正<rt>ただ</rt></ruby>しいのはJACや<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くこと。<ruby>俺<rt>おれ</rt></ruby>も<ruby>確<rt>たし</rt></ruby>かめた。<br>*(Đúng. Cái chuẩn là hỏi JAC hay đốc công. Anh cũng đã xác nhận.)* |
| Hùng | お<ruby>前<rt>まえ</rt></ruby>、ちゃんと<ruby>調<rt>しら</rt></ruby>べとるな。<ruby>俺<rt>おれ</rt></ruby>にも<ruby>教<rt>おし</rt></ruby>えて。<br>*(Cậu tìm hiểu kỹ nhỉ. Chỉ tôi với.)* |
| Thức | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>聞<rt>き</rt></ruby>きに<ruby>行<rt>い</rt></ruby>こう。それが<ruby>確実<rt>かくじつ</rt></ruby>や。<br>*(Mình cùng đi hỏi đốc công nhé. Vậy chắc ăn.)* |

---

## Tình huống 13 — Văn phòng · 16:30, hỏi về điều kiện tiếng Nhật cụ thể

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>はどのレベルが<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Anh Saito, tiếng Nhật cần trình độ nào ạ?)* |
| Saito | <ruby>基本<rt>きほん</rt></ruby>の<ruby>会話<rt>かいわ</rt></ruby>ができる<ruby>基準<rt>きじゅん</rt></ruby>が<ruby>求<rt>もと</rt></ruby>められます。<ruby>詳<rt>くわ</rt></ruby>しい<ruby>基準<rt>きじゅん</rt></ruby>は<ruby>最新<rt>さいしん</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Yêu cầu mức hội thoại cơ bản. Tiêu chuẩn chi tiết hãy xác nhận thông tin mới nhất.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>は<ruby>変<rt>か</rt></ruby>わることがあるんですね。<br>*(Chế độ có thể thay đổi nhỉ.)* |
| Saito | はい。だから<ruby>古<rt>ふる</rt></ruby>い<ruby>噂<rt>うわさ</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じず、その<ruby>時<rt>とき</rt></ruby>に<ruby>確<rt>たし</rt></ruby>かめることが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Ừ. Nên đừng tin đồn cũ, lúc đó xác nhận lại là quan trọng.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>できることは<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>伸<rt>の</rt></ruby>ばすことですね。<br>*(Cái làm được bây giờ là nâng tiếng Nhật nhỉ.)* |
| Saito | そうです。それは<ruby>制度<rt>せいど</rt></ruby>が<ruby>変<rt>か</rt></ruby>わっても<ruby>無駄<rt>むだ</rt></ruby>になりません。<br>*(Đúng. Cái đó chế độ đổi cũng không phí.)* |

---

## Tình huống 14 — Công trường · 16:45, 親方 dặn về tâm thế dài hạn

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>先<rt>さき</rt></ruby>のことばっかり<ruby>気<rt>き</rt></ruby>にしすぎるなよ。<br>*(Thức, đừng để ý chuyện tương lai quá.)* |
| Thức | はい。<ruby>不安<rt>ふあん</rt></ruby>になりすぎないようにします。<br>*(Vâng. Em sẽ không lo lắng quá ạ.)* |
| Tanigawa | <ruby>腕<rt>うで</rt></ruby>と<ruby>信用<rt>しんよう</rt></ruby>があれば、<ruby>制度<rt>せいど</rt></ruby>が<ruby>変<rt>か</rt></ruby>わっても<ruby>食<rt>く</rt></ruby>うていける。<br>*(Có tay nghề và uy tín thì chế độ đổi cũng sống được.)* |
| Thức | <ruby>結局<rt>けっきょく</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>なんですね。<br>*(Rốt cuộc vẫn là công việc hằng ngày nhỉ.)* |
| Tanigawa | そや。<ruby>制度<rt>せいど</rt></ruby>は<ruby>道具<rt>どうぐ</rt></ruby>や。<ruby>使<rt>つか</rt></ruby>うのは<ruby>腕<rt>うで</rt></ruby>のあるお<ruby>前<rt>まえ</rt></ruby>や。<br>*(Đúng. Chế độ là công cụ. Người dùng nó là cậu, người có tay nghề.)* |
| Thức | はい、<ruby>地に足<rt>じにあし</rt></ruby>をつけて<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ vững chân mà cố gắng ạ.)* |

---

## Tình huống 15 — Khu nghỉ · 12:10 hôm sau, anh Long báo tin (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Long | Thức, anh hỏi đoàn thể rồi. Năm sau anh chuyển 特定技能, lương tháng, đỡ lo mùa đông. |
| Thức | Mừng cho anh. Vậy là đường anh đi rõ rồi. Em theo sau một năm. |
| Long | Anh sẽ ghi lại từng bước thủ tục cho em. Đừng tin mạng xã hội, toàn tin cũ với đồn bậy. |
| Thức | Dạ. Em chỉ tin 職長 với JAC thôi. Mấy cái khác em hỏi lại hết. |
| Long | Đúng cách. Mày cẩn thận vậy là yên tâm rồi. Một năm nữa mình lại là đồng nghiệp 特定技能. |
| Thức | Vâng. Em cố cho hồ sơ ba năm đẹp. Cảm ơn anh đi trước dò đường. |

---

## Tình huống 16 — Công trường · 13:00, áp dụng vào việc dạy Tài

| Vai | Lời thoại |
|---|---|
| Tài | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>実習<rt>じっしゅう</rt></ruby>の<ruby>後<rt>あと</rt></ruby>って<ruby>不安<rt>ふあん</rt></ruby>です。どうなるんですか?<br>*(Anh, sau thực tập em lo ạ. Sẽ thế nào ạ?)* |
| Thức | <ruby>特定技能<rt>とくていぎのう</rt></ruby>という<ruby>道<rt>みち</rt></ruby>がある。でも<ruby>今<rt>いま</rt></ruby>は<ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Có con đường Tokutei Ginou. Nhưng giờ là việc trước mắt.)* |
| Tài | <ruby>今<rt>いま</rt></ruby>から<ruby>心配<rt>しんぱい</rt></ruby>しなくていいですか?<br>*(Từ giờ chưa cần lo ạ?)* |
| Thức | <ruby>心配<rt>しんぱい</rt></ruby>より<ruby>準備<rt>じゅんび</rt></ruby>や。<ruby>日本語<rt>にほんご</rt></ruby>と<ruby>技能<rt>ぎのう</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ。<br>*(Lo không bằng chuẩn bị. Tiếng Nhật và kỹ năng, mỗi ngày một ít.)* |
| Tài | <ruby>先輩<rt>せんぱい</rt></ruby>みたいに<ruby>調<rt>しら</rt></ruby>べればいいですね。<br>*(Tìm hiểu như anh là được nhỉ.)* |
| Thức | そや。<ruby>噂<rt>うわさ</rt></ruby>やなくて、<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くんやで。<br>*(Đúng. Không phải tin đồn, mà hỏi đốc công nhé.)* |

---

## Tình huống 17 — Văn phòng · 14:00, đề xuất buổi chia sẻ thông tin tương lai

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>実習生<rt>じっしゅうせい</rt></ruby>みんなに<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>正<rt>ただ</rt></ruby>しい<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>する<ruby>機会<rt>きかい</rt></ruby>があれば、<ruby>噂<rt>うわさ</rt></ruby>に<ruby>惑<rt>まど</rt></ruby>わされません。<br>*(Có dịp giải thích thông tin đúng về Tokutei Ginou cho mọi thực tập sinh thì không bị tin đồn dắt mũi ạ.)* |
| Saito | <ruby>大事<rt>だいじ</rt></ruby>な<ruby>視点<rt>してん</rt></ruby>です。<ruby>不安<rt>ふあん</rt></ruby>から<ruby>失敗<rt>しっぱい</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<br>*(Góc nhìn quan trọng. Nhiều người vì lo lắng mà sai.)* |
| Thức | <ruby>正<rt>ただ</rt></ruby>しく<ruby>知<rt>し</rt></ruby>れば<ruby>安心<rt>あんしん</rt></ruby>して<ruby>働<rt>はたら</rt></ruby>けます。<br>*(Biết đúng thì yên tâm làm việc ạ.)* |
| Saito | JACの<ruby>資料<rt>しりょう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って<ruby>会<rt>かい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>きましょう。ええ<ruby>提案<rt>ていあん</rt></ruby>です。<br>*(Dùng tài liệu JAC mở buổi nhé. Đề xuất hay.)* |

---

## Tình huống 18 — Văn phòng · 16:30, báo cáo và sắp xếp suy nghĩ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>将来<rt>しょうらい</rt></ruby>のこと、いろいろ<ruby>調<rt>しら</rt></ruby>べました。<br>*(Anh Tanigawa, chuyện tương lai, em tìm hiểu nhiều rồi ạ.)* |
| Tanigawa | <ruby>答<rt>こた</rt></ruby>えは<ruby>出<rt>で</rt></ruby>たか?<br>*(Có ra câu trả lời chưa?)* |
| Thức | はい。<ruby>残<rt>のこ</rt></ruby>り<ruby>一年<rt>いちねん</rt></ruby>を<ruby>真面目<rt>まじめ</rt></ruby>にやって、<ruby>特定技能<rt>とくていぎのう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Vâng. Em làm nghiêm túc một năm còn lại, hướng tới Tokutei Ginou ạ.)* |
| Tanigawa | <ruby>地道<rt>じみち</rt></ruby>でええ<ruby>答<rt>こた</rt></ruby>えや。<ruby>慌<rt>あわ</rt></ruby>てる<ruby>奴<rt>やつ</rt></ruby>より<ruby>強<rt>つよ</rt></ruby>い。<br>*(Câu trả lời chắc chắn, hay đấy. Mạnh hơn đứa hấp tấp.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>は<ruby>変<rt>か</rt></ruby>わっても、<ruby>腕<rt>うで</rt></ruby>と<ruby>信用<rt>しんよう</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>ると<ruby>学<rt>まな</rt></ruby>びました。<br>*(Em học được chế độ đổi nhưng tay nghề và uy tín thì còn ạ.)* |
| Tanigawa | それが<ruby>分<rt>わ</rt></ruby>かれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。ええ<ruby>顔<rt>かお</rt></ruby>になったな。<br>*(Hiểu được thì ổn rồi. Mặt sáng ra rồi đấy.)* |

---

## Tình huống 19 — Văn phòng · 16:45, Saito đánh giá cách Thức suy nghĩ

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>噂<rt>うわさ</rt></ruby>に<ruby>飛<rt>と</rt></ruby>びつかず<ruby>確<rt>たし</rt></ruby>かめたのが<ruby>偉<rt>えら</rt></ruby>いです。<br>*(Thức, không vồ lấy tin đồn mà đi xác nhận, đáng nể.)* |
| Thức | <ruby>間違<rt>まちが</rt></ruby>った<ruby>情報<rt>じょうほう</rt></ruby>で<ruby>人生<rt>じんせい</rt></ruby>を<ruby>決<rt>き</rt></ruby>めたくなかったので。<br>*(Em không muốn quyết cuộc đời bằng thông tin sai ạ.)* |
| Saito | その<ruby>慎重<rt>しんちょう</rt></ruby>さが<ruby>君<rt>きみ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みです。<br>*(Sự thận trọng đó là điểm mạnh của em.)* |
| Thức | <ruby>仕事<rt>しごと</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですね。<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>動<rt>うご</rt></ruby>く。<br>*(Giống công việc nhỉ. Xác nhận rồi mới làm.)* |
| Saito | そのとおりです。<ruby>君<rt>きみ</rt></ruby>はもう<ruby>自分<rt>じぶん</rt></ruby>で<ruby>道<rt>みち</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べます。<br>*(Đúng vậy. Em đã tự chọn được con đường rồi.)* |
| Thức | はい、<ruby>一歩<rt>いっぽ</rt></ruby>ずつ<ruby>進<rt>すす</rt></ruby>みます。<br>*(Vâng, em tiến từng bước một ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức nghĩ về con đường (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Hùng à, em hỏi 職長 với anh Long hết rồi. Đường rõ rồi: ba năm thực tập làm tốt, rồi 特定技能 lương tháng. |
| Hùng | Mày chắc chắn ghê. Tao còn mù mờ lắm. |
| Thức | Tao cũng từng mù mờ. Bí quyết là đừng tin đồn, hỏi đúng người: 職長, JAC, đoàn thể. Chế độ năm 2026 vầy, nhưng tới lúc làm phải check lại. |
| Hùng | Ờ, để mai tao với mày lên hỏi 職長 chung. |
| Thức | Được. Mà quan trọng nhất vẫn là làm việc đàng hoàng mỗi ngày. Hồ sơ đẹp thì cửa nào cũng mở. |
| Hùng | Nghe mày nói tao yên tâm hơn. Ngủ thôi, mai còn lên giàn. |

---

## Đọng lại

Cuối năm 2, Thức bắt đầu nghĩ về con đường sau thực tập: chuyển sang 特定技能 làm tiếp nghề tobi. Em chủ động hỏi 親方, 職長, anh Long về JAC, CCUS, chế độ lương tháng (月給制), thi đánh giá kỹ năng — và quan trọng nhất là học cách phân biệt thông tin chính thức với tin đồn. Bài học cốt lõi: chế độ là công cụ và có thể thay đổi (thông tin đúng tại 2026, phải xác nhận lại khi làm thật); cái còn lại vĩnh viễn là tay nghề và uy tín tích lũy mỗi ngày.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 特定技能 | とくていぎのう | Tokutei Ginou (tư cách lưu trú) |
> | 技能実習 | ぎのうじっしゅう | thực tập kỹ năng |
> | 評価試験 | ひょうかしけん | thi đánh giá (kỹ năng) |
> | 免除 | めんじょ | miễn (thi) |
> | 月給制 | げっきゅうせい | chế độ lương tháng |
> | 転職 | てんしょく | chuyển việc |
> | 処遇 | しょぐう | đãi ngộ |
> | 支援 | しえん | hỗ trợ |
> | 相談窓口 | そうだんまどぐち | cửa tư vấn |
> | 登録 | とうろく | đăng ký |
> | 制度 | せいど | chế độ |
> | 噂 | うわさ | tin đồn |
> | 最新の情報 | さいしんのじょうほう | thông tin mới nhất |
> | 地道 | じみち | kiên trì, chắc chắn |
> | 信用 | しんよう | uy tín |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (834000012, 800000034, NULL, 'markdown_book', 'T12. Đánh giá năm 2 (二年目の評価)', '# Sách thực tập sinh xây dựng · T12. Đánh giá năm 2 (二年目の評価)

> **Mục tiêu nhân vật:** Kết thúc năm 2. Buổi đánh giá chính thức với 親方/職長, nhìn lại một năm, nhận phản hồi, đặt mục tiêu năm 3. Học mẫu câu trong buổi đánh giá: tự nhận xét, nhận góp ý, cảm ơn, trình bày nguyện vọng nghề nghiệp.

---

## Bối cảnh

Cuối tháng 3 năm 2028. Kết thúc năm thứ 2 của Thức. Công ty tổ chức buổi đánh giá (評価面談) với 親方 và 職長: nhìn lại một năm (từ được giao việc độc lập, 墨出し, 玉掛け, an toàn, hướng dẫn đàn em...), nhận phản hồi và đặt mục tiêu năm 3 (hướng tới 特定技能). Chương này tập trung mẫu câu trong buổi đánh giá chính thức và lời cảm ơn cuối năm.

---

## Tình huống 1 — Văn phòng · 9:00, mở đầu buổi đánh giá

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>二年目<rt>にねんめ</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Thức, mình bắt đầu buổi đánh giá năm hai nhé.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |
| Saito | まず、この<ruby>一年<rt>いちねん</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>でどう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Trước hết, tự em thấy một năm qua thế nào?)* |
| Thức | <ruby>緊張<rt>きんちょう</rt></ruby>しますが、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>します。<br>*(Em hồi hộp, nhưng em nói thật ạ.)* |
| Saito | それでいいです。<ruby>良<rt>よ</rt></ruby>かったことも<ruby>悪<rt>わる</rt></ruby>かったことも。<br>*(Vậy là được. Cả tốt và chưa tốt.)* |
| Thức | はい、<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>話<rt>はな</rt></ruby>させてください。<br>*(Vâng, cho em nói lần lượt ạ.)* |

---

## Tình huống 2 — Văn phòng · 9:10, tự nhận xét điểm tiến bộ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>一番<rt>いちばん</rt></ruby><ruby>成長<rt>せいちょう</rt></ruby>したのは<ruby>報連相<rt>ほうれんそう</rt></ruby>です。<ruby>言<rt>い</rt></ruby>えるようになりました。<br>*(Tiến bộ nhất là báo liên thảo ạ. Em nói ra được rồi.)* |
| Saito | たしかに。<ruby>去年<rt>きょねん</rt></ruby>は<ruby>黙<rt>だま</rt></ruby>っていることが<ruby>多<rt>おお</rt></ruby>かったですね。<br>*(Đúng. Năm ngoái em hay im lặng nhỉ.)* |
| Thức | <ruby>墨出<rt>すみだ</rt></ruby>しと<ruby>玉掛<rt>たまか</rt></ruby>けも<ruby>覚<rt>おぼ</rt></ruby>えました。<ruby>責任<rt>せきにん</rt></ruby>のある<ruby>仕事<rt>しごと</rt></ruby>もできました。<br>*(Bật mực và móc tải em cũng học được. Việc có trách nhiệm cũng làm được ạ.)* |
| Saito | <ruby>打設<rt>だせつ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>は<ruby>立派<rt>りっぱ</rt></ruby>でした。<br>*(Quyết định ngày đổ bê tông đáng nể đấy.)* |
| Thức | あれは<ruby>怖<rt>こわ</rt></ruby>かったですが、<ruby>自信<rt>じしん</rt></ruby>になりました。<br>*(Hôm đó em sợ ạ, nhưng thành tự tin ạ.)* |
| Saito | <ruby>怖<rt>こわ</rt></ruby>さを<ruby>知<rt>し</rt></ruby>っている<ruby>人<rt>ひと</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い。<br>*(Người biết sợ là người mạnh nhất.)* |

---

## Tình huống 3 — Văn phòng · 9:20, tự nhận xét điểm còn yếu

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>逆<rt>ぎゃく</rt></ruby>に、まだ<ruby>足<rt>た</rt></ruby>りないと<ruby>思<rt>おも</rt></ruby>うところは?<br>*(Ngược lại, chỗ nào em thấy còn thiếu?)* |
| Thức | <ruby>段取<rt>だんど</rt></ruby>りがまだ<ruby>遅<rt>おそ</rt></ruby>いです。<ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>力<rt>ちから</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いです。<br>*(Sắp xếp trình tự em còn chậm. Khả năng nhìn trước còn yếu ạ.)* |
| Saito | よく<ruby>分<rt>わ</rt></ruby>かっていますね。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>弱<rt>よわ</rt></ruby>みを<ruby>言<rt>い</rt></ruby>えるのは<ruby>強<rt>つよ</rt></ruby>みです。<br>*(Hiểu rõ đấy. Nói được điểm yếu của mình là điểm mạnh.)* |
| Thức | <ruby>言葉<rt>ことば</rt></ruby>も、<ruby>難<rt>むずか</rt></ruby>しい<ruby>説明<rt>せつめい</rt></ruby>はまだ<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(Tiếng nữa, giải thích khó em vẫn còn yếu ạ.)* |
| Saito | <ruby>正直<rt>しょうじき</rt></ruby>でいいです。<ruby>課題<rt>かだい</rt></ruby>が<ruby>見<rt>み</rt></ruby>えれば<ruby>伸<rt>の</rt></ruby>びます。<br>*(Thật thà là tốt. Thấy được điểm cần khắc phục thì sẽ tiến bộ.)* |
| Thức | <ruby>来年<rt>らいねん</rt></ruby>はそこを<ruby>重点<rt>じゅうてん</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Năm sau em sẽ luyện trọng tâm chỗ đó ạ.)* |

---

## Tình huống 4 — Văn phòng · 9:30, 親方 đưa phản hồi tổng thể

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>俺<rt>おれ</rt></ruby>からも<ruby>言<rt>い</rt></ruby>わせてもらう。<br>*(Thức, để tao cũng nói.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh ạ.)* |
| Tanigawa | <ruby>一年<rt>いちねん</rt></ruby>でよう<ruby>変<rt>か</rt></ruby>わった。<ruby>特<rt>とく</rt></ruby>に<ruby>安全<rt>あんぜん</rt></ruby>への<ruby>意識<rt>いしき</rt></ruby>や。<br>*(Một năm thay đổi nhiều. Đặc biệt là ý thức an toàn.)* |
| Thức | ヒヤリハットを<ruby>経験<rt>けいけん</rt></ruby>して<ruby>変<rt>か</rt></ruby>わりました。<br>*(Em trải qua vụ suýt tai nạn rồi thay đổi ạ.)* |
| Tanigawa | あれを<ruby>隠<rt>かく</rt></ruby>さんと<ruby>言<rt>い</rt></ruby>えた。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Cậu không giấu mà nói ra được. Cái đó quan trọng nhất.)* |
| Thức | <ruby>言<rt>い</rt></ruby>いやすい<ruby>現場<rt>げんば</rt></ruby>だったからです。ありがとうございます。<br>*(Vì công trường dễ nói ạ. Em cảm ơn anh ạ.)* |

---

## Tình huống 5 — Văn phòng · 9:40, nhận góp ý nghiêm khắc đúng mực

| Vai | Lời thoại |
|---|---|
| Tanigawa | ただ、<ruby>慣<rt>な</rt></ruby>れてきて<ruby>気<rt>き</rt></ruby>が<ruby>緩<rt>ゆる</rt></ruby>む<ruby>時<rt>とき</rt></ruby>があった。<br>*(Nhưng có lúc quen tay rồi lơ là.)* |
| Thức | はい、<ruby>自分<rt>じぶん</rt></ruby>でも<ruby>感<rt>かん</rt></ruby>じました。すみません。<br>*(Vâng, tự em cũng cảm thấy ạ. Em xin lỗi ạ.)* |
| Tanigawa | <ruby>謝<rt>あやま</rt></ruby>らんでええ。<ruby>気<rt>き</rt></ruby>づいとるなら<ruby>直<rt>なお</rt></ruby>せる。<br>*(Đừng xin lỗi. Nhận ra thì sửa được.)* |
| Thức | <ruby>慣<rt>な</rt></ruby>れたころが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないと<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Em khắc cốt ghi tâm lúc quen tay là nguy hiểm nhất ạ.)* |
| Tanigawa | それでええ。<ruby>注意<rt>ちゅうい</rt></ruby>を<ruby>素直<rt>すなお</rt></ruby>に<ruby>聞<rt>き</rt></ruby>けるのが<ruby>お前<rt>おまえ</rt></ruby>のええとこや。<br>*(Vậy là được. Nghe góp ý cầu thị là điểm tốt của cậu.)* |
| Thức | これからも<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>言<rt>い</rt></ruby>ってください。<br>*(Sau này anh cứ thẳng thắn nói em ạ.)* |

---

## Tình huống 6 — Văn phòng · 9:50, Kondo bổ sung nhận xét

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>俺<rt>おれ</rt></ruby>からも<ruby>一<rt>ひと</rt></ruby>つ。タイの<ruby>面倒<rt>めんどう</rt></ruby>、よう<ruby>見<rt>み</rt></ruby>とった。<br>*(Tao cũng một câu. Kèm Tài tốt đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わったとおりにやっただけです。<br>*(Em chỉ làm đúng như anh Kondo dạy ạ.)* |
| Kondo | それが<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぐということや。<ruby>現場<rt>げんば</rt></ruby>はそうやって<ruby>続<rt>つづ</rt></ruby>く。<br>*(Đó là kế thừa đấy. Công trường tiếp nối như vậy.)* |
| Thức | <ruby>教<rt>おし</rt></ruby>えると<ruby>自分<rt>じぶん</rt></ruby>も<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Dạy thì chính em cũng học được ạ.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>はええ<ruby>職人<rt>しょくにん</rt></ruby>になる。<ruby>来年<rt>らいねん</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むで。<br>*(Cậu sẽ thành thợ giỏi. Sang năm cũng nhờ nhé.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |

---

## Tình huống 7 — Văn phòng · 10:00, trình bày nguyện vọng năm 3

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>来年<rt>らいねん</rt></ruby>、<ruby>三年目<rt>さんねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は?<br>*(Thức, sang năm, mục tiêu năm thứ ba là gì?)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>で<ruby>一<rt>ひと</rt></ruby><ruby>区画<rt>くかく</rt></ruby><ruby>任<rt>まか</rt></ruby>される<ruby>職人<rt>しょくにん</rt></ruby>になりたいです。<br>*(Em muốn thành thợ tự đảm nhận được một khu một mình ạ.)* |
| Saito | いい<ruby>目標<rt>もくひょう</rt></ruby>です。<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>には?<br>*(Mục tiêu tốt. Cụ thể thì sao?)* |
| Thức | <ruby>段取<rt>だんど</rt></ruby>りを<ruby>速<rt>はや</rt></ruby>く、<ruby>言葉<rt>ことば</rt></ruby>をN3<ruby>以上<rt>いじょう</rt></ruby>に、<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>することです。<br>*(Sắp xếp nhanh hơn, tiếng Nhật trên N3, thi đậu đánh giá kỹ năng ạ.)* |
| Saito | その<ruby>先<rt>さき</rt></ruby>は<ruby>特定技能<rt>とくていぎのう</rt></ruby>ですね。<br>*(Tiếp đó là Tokutei Ginou nhỉ.)* |
| Thức | はい、<ruby>建設<rt>けんせつ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたいです。<br>*(Vâng, em muốn tiếp tục nghề xây dựng ạ.)* |

---

## Tình huống 8 — Văn phòng · 10:10, 親方 đánh giá nguyện vọng

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>建設<rt>けんせつ</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたいんか。うれしいことや。<br>*(Muốn tiếp tục xây dựng à. Mừng đấy.)* |
| Thức | この<ruby>仕事<rt>しごと</rt></ruby>が<ruby>好<rt>す</rt></ruby>きになりました。<ruby>形<rt>かたち</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>るのが<ruby>誇<rt>ほこ</rt></ruby>らしいです。<br>*(Em yêu nghề này rồi ạ. Tự hào vì để lại được công trình ạ.)* |
| Tanigawa | とびは<ruby>建物<rt>たてもの</rt></ruby>の<ruby>骨組<rt>ほねぐ</rt></ruby>みを<ruby>支<rt>ささ</rt></ruby>える。<ruby>誇<rt>ほこ</rt></ruby>っていい<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Tobi đỡ cả khung công trình. Là nghề đáng tự hào.)* |
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>の<ruby>下<rt>もと</rt></ruby>で<ruby>学<rt>まな</rt></ruby>べてよかったです。<br>*(Em may mắn được học dưới trướng anh Tanigawa ạ.)* |
| Tanigawa | <ruby>来年<rt>らいねん</rt></ruby>もしっかり<ruby>育<rt>そだ</rt></ruby>てる。<ruby>覚悟<rt>かくご</rt></ruby>しとけ。<br>*(Sang năm tao rèn tiếp. Chuẩn bị tinh thần đi.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |

---

## Tình huống 9 — Văn phòng · 10:20, nhận đánh giá bằng văn bản

| Vai | Lời thoại |
|---|---|
| Saito | これが<ruby>今年<rt>ことし</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby><ruby>表<rt>ひょう</rt></ruby>です。<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Đây là bảng đánh giá năm nay. Em xác nhận nhé.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby>と<ruby>報連相<rt>ほうれんそう</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い<ruby>評価<rt>ひょうか</rt></ruby>ですね。<br>*(An toàn và báo liên thảo được đánh giá cao nhỉ.)* |
| Saito | はい。<ruby>段取<rt>だんど</rt></ruby>りは「<ruby>来年<rt>らいねん</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Ừ. Sắp xếp ghi là "điểm cần khắc phục năm sau".)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>感<rt>かん</rt></ruby>じと<ruby>同<rt>おな</rt></ruby>じです。<ruby>納得<rt>なっとく</rt></ruby>しました。<br>*(Giống cảm nhận của em. Em đồng ý ạ.)* |
| Saito | <ruby>納得<rt>なっとく</rt></ruby>できる<ruby>評価<rt>ひょうか</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>です。サインをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đánh giá mà em đồng ý là tốt nhất. Ký giúp tôi nhé.)* |
| Thức | はい、サインします。ありがとうございます。<br>*(Vâng, em ký ạ. Em cảm ơn ạ.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, Thức và anh Long nhìn lại năm 2 (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, em vừa xong buổi đánh giá năm hai. An toàn với báo cáo điểm cao, sắp xếp công việc còn yếu. |
| Long | Đúng người đúng việc. Năm hai mà được khen quyết định ngày đổ bê tông là hiếm đó. Anh năm hai còn run hơn em. |
| Thức | Em nhớ năm ngoái sang còn không hiểu tiếng Kansai. Giờ nghe 親方 chửi yêu cũng hiểu. |
| Long | Đó là cả năm cố gắng đó. Năm ba làm tốt nữa là 特定技能 mở đường. Mình lại làm cùng nhau. |
| Thức | Dạ. Cảm ơn anh đã kèm em từ năm một, lúc anh khủng hoảng em cũng học được nhiều. |
| Long | Mình giúp nhau mà. Đồng hương xa nhà, không dựa nhau thì dựa ai. Cố nốt năm ba nhé. |

---

## Tình huống 11 — Văn phòng · 13:00, hỏi 職長 cách cải thiện điểm yếu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>段取<rt>だんど</rt></ruby>りを<ruby>速<rt>はや</rt></ruby>くするには、どうすれば?<br>*(Anh Saito, để sắp xếp nhanh hơn thì làm sao ạ?)* |
| Saito | <ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>頭<rt>あたま</rt></ruby>で<ruby>並<rt>なら</rt></ruby>べる<ruby>習慣<rt>しゅうかん</rt></ruby>です。<br>*(Tập thói quen xếp trình tự trong đầu trước khi làm.)* |
| Thức | <ruby>先<rt>さき</rt></ruby>を<ruby>想像<rt>そうぞう</rt></ruby>するんですね。<br>*(Hình dung trước nhỉ.)* |
| Saito | はい。<ruby>次<rt>つぎ</rt></ruby>に<ruby>何<rt>なに</rt></ruby>がいるか<ruby>考<rt>かんが</rt></ruby>えながら<ruby>動<rt>うご</rt></ruby>く。<ruby>毎日<rt>まいにち</rt></ruby>やれば<ruby>速<rt>はや</rt></ruby>くなる。<br>*(Ừ. Vừa làm vừa nghĩ tiếp theo cần gì. Mỗi ngày làm thì sẽ nhanh.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>動<rt>うご</rt></ruby>きを<ruby>観察<rt>かんさつ</rt></ruby>します。<br>*(Em sẽ quan sát cách làm của anh Kondo ạ.)* |
| Saito | いい<ruby>方法<rt>ほうほう</rt></ruby>です。<ruby>上手<rt>じょうず</rt></ruby>な<ruby>人<rt>ひと</rt></ruby>を<ruby>真似<rt>まね</rt></ruby>るのが<ruby>近道<rt>ちかみち</rt></ruby>です。<br>*(Cách hay. Bắt chước người giỏi là đường gần nhất.)* |

---

## Tình huống 12 — Công trường · 13:40, áp dụng ngay lời khuyên

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>段取<rt>だんど</rt></ruby>りを<ruby>勉強<rt>べんきょう</rt></ruby>したいです。<ruby>見<rt>み</rt></ruby>せてもらえますか?<br>*(Anh Kondo, em muốn học cách sắp xếp. Anh cho em xem được không ạ?)* |
| Kondo | ええで。まず<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>物<rt>もの</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>集<rt>あつ</rt></ruby>める。<br>*(Được. Trước hết nhìn tổng thể, gom đồ cần trước.)* |
| Thức | <ruby>動<rt>うご</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えるんですね。<br>*(Nghĩ trước khi làm nhỉ.)* |
| Kondo | そや。<ruby>無駄足<rt>むだあし</rt></ruby>が<ruby>減<rt>へ</rt></ruby>る。それが<ruby>速<rt>はや</rt></ruby>さや。<br>*(Đúng. Đỡ phải đi lại vô ích. Đó là sự nhanh.)* |
| Thức | なるほど、<ruby>速<rt>はや</rt></ruby>さは<ruby>準備<rt>じゅんび</rt></ruby>から<ruby>生<rt>う</rt></ruby>まれるんですね。<br>*(Hiểu rồi, nhanh sinh ra từ chuẩn bị nhỉ.)* |
| Kondo | ええとこに<ruby>気<rt>き</rt></ruby>づいた。<ruby>来年<rt>らいねん</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しみや。<br>*(Để ý đúng chỗ đấy. Năm sau đáng mong chờ.)* |

---

## Tình huống 13 — Công trường · 14:10, cảm ơn từng người trong tổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>大村<rt>おおむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>今年<rt>ことし</rt></ruby>はいろいろ<ruby>教<rt>おし</rt></ruby>えてもらってありがとうございました。<br>*(Anh Omura, năm nay anh chỉ em nhiều, em cảm ơn ạ.)* |
| Omura | <ruby>最初<rt>さいしょ</rt></ruby>はぶつかったけどな。お<ruby>前<rt>まえ</rt></ruby>、ええ<ruby>奴<rt>やつ</rt></ruby>や。<br>*(Lúc đầu va chạm đấy. Cậu được đấy.)* |
| Thức | あの<ruby>時<rt>とき</rt></ruby><ruby>話<rt>はな</rt></ruby>せてよかったです。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(May là lúc đó mình nói chuyện được. Em học được nhiều ạ.)* |
| Omura | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>遠慮<rt>えんりょ</rt></ruby>せず<ruby>言<rt>い</rt></ruby>い<ruby>合<rt>あ</rt></ruby>おうや。<br>*(Sang năm cứ thẳng thắn nói nhau nhé.)* |
| Thức | はい。<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけながら。<br>*(Vâng. Vừa chú ý cách nói ạ.)* |
| Omura | ははっ、<ruby>成長<rt>せいちょう</rt></ruby>したな。<ruby>来年<rt>らいねん</rt></ruby>もよろしくな。<br>*(Haha, trưởng thành rồi đấy. Sang năm cũng nhờ nhé.)* |

---

## Tình huống 14 — Khu nghỉ · 14:40, đàn em Tài cảm ơn Thức

| Vai | Lời thoại |
|---|---|
| Tài | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>今年<rt>ことし</rt></ruby>はありがとうございました。<ruby>怖<rt>こわ</rt></ruby>くなかったです。<br>*(Anh, năm nay em cảm ơn anh ạ. Em không sợ ạ.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>そう<ruby>言<rt>い</rt></ruby>われたかった。<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Anh năm ngoái cũng mong được nghe vậy. Giúp được em anh vui.)* |
| Tài | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Sang năm anh chỉ em tiếp ạ.)* |
| Thức | もちろん。でも<ruby>来年<rt>らいねん</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>える<ruby>練習<rt>れんしゅう</rt></ruby>もしよう。<br>*(Tất nhiên. Nhưng sang năm cũng tập tự nghĩ nhé.)* |
| Tài | はい。<ruby>先輩<rt>せんぱい</rt></ruby>みたいになりたいです。<br>*(Vâng. Em muốn được như anh ạ.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>俺<rt>おれ</rt></ruby>もまだ<ruby>途中<rt>とちゅう</rt></ruby>や。<br>*(Cùng cố gắng. Anh cũng còn đang trên đường mà.)* |

---

## Tình huống 15 — Công trường · 15:00, anh Long động viên trước năm 3

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>二年目<rt>にねんめ</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさん。よう<ruby>成長<rt>せいちょう</rt></ruby>したな。<br>*(Thức, năm hai vất vả rồi. Trưởng thành đấy.)* |
| Thức | ロンさんのおかげです。<ruby>困<rt>こま</rt></ruby>ったとき<ruby>支<rt>ささ</rt></ruby>えてくれました。<br>*(Nhờ anh Long ạ. Lúc khó anh đỡ em ạ.)* |
| Long | <ruby>俺<rt>おれ</rt></ruby>こそ、<ruby>冬<rt>ふゆ</rt></ruby>のとき<ruby>助<rt>たす</rt></ruby>けてもろた。<br>*(Anh mới cảm ơn, mùa đông được cậu giúp.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>いさまです。<ruby>来年<rt>らいねん</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Có qua có lại ạ. Sang năm mình cùng cố gắng nhé.)* |
| Long | おう。<ruby>三年目<rt>さんねんめ</rt></ruby>はもっと<ruby>面白<rt>おもしろ</rt></ruby>くなるで。<br>*(Ờ. Năm ba còn thú vị hơn đấy.)* |
| Thức | <ruby>楽<rt>たの</rt></ruby>しみです。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めていきます。<br>*(Em mong lắm ạ. Em sẽ giữ tinh thần cảnh giác ạ.)* |

---

## Tình huống 16 — Công trường · 15:30, nhìn lại công trình đã làm

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、この<ruby>建物<rt>たてもの</rt></ruby>、もうすぐ<ruby>完成<rt>かんせい</rt></ruby>や。どう<ruby>感<rt>かん</rt></ruby>じる?<br>*(Thức, tòa nhà này sắp xong rồi. Cậu thấy thế nào?)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>を<ruby>組<rt>く</rt></ruby>んだのは<ruby>俺<rt>おれ</rt></ruby>たちです。<ruby>誇<rt>ほこ</rt></ruby>らしいです。<br>*(Giàn giáo là tụi em dựng ạ. Tự hào ạ.)* |
| Kondo | <ruby>足場<rt>あしば</rt></ruby>は<ruby>最後<rt>さいご</rt></ruby>に<ruby>消<rt>き</rt></ruby>える。でも<ruby>建物<rt>たてもの</rt></ruby>を<ruby>建<rt>た</rt></ruby>てたのは<ruby>俺<rt>おれ</rt></ruby>らや。<br>*(Giàn giáo cuối cùng biến mất. Nhưng dựng nên tòa nhà là tụi mình.)* |
| Thức | <ruby>見<rt>み</rt></ruby>えなくても、<ruby>支<rt>ささ</rt></ruby>えた<ruby>仕事<rt>しごと</rt></ruby>ですね。<br>*(Không nhìn thấy nhưng là công việc đỡ phía sau nhỉ.)* |
| Kondo | そや。それがとびの<ruby>誇<rt>ほこ</rt></ruby>りや。<ruby>覚<rt>おぼ</rt></ruby>えとけ。<br>*(Đúng. Đó là niềm tự hào của tobi. Nhớ đấy.)* |
| Thức | はい、<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Vâng, cả đời em không quên ạ.)* |

---

## Tình huống 17 — Văn phòng · 16:00, đề xuất mục tiêu tổ năm sau

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Anh Saito, hướng tới năm sau em có một đề xuất ạ.)* |
| Saito | どうぞ。<br>*(Cứ nói.)* |
| Thức | <ruby>新人<rt>しんじん</rt></ruby><ruby>用<rt>よう</rt></ruby>のチェック<ruby>表<rt>ひょう</rt></ruby>を<ruby>今年<rt>ことし</rt></ruby>の<ruby>反省<rt>はんせい</rt></ruby>から<ruby>作<rt>つく</rt></ruby>り<ruby>直<rt>なお</rt></ruby>したいです。<br>*(Em muốn làm lại bảng kiểm cho người mới từ những điểm rút kinh nghiệm năm nay ạ.)* |
| Saito | ええ<ruby>考<rt>かんが</rt></ruby>えや。<ruby>経験<rt>けいけん</rt></ruby>を<ruby>次<rt>つぎ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>すんやな。<br>*(Ý hay đấy. Để lại kinh nghiệm cho lớp sau nhỉ.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>困<rt>こま</rt></ruby>ったことを、タイたちに<ruby>困<rt>こま</rt></ruby>らせたくないです。<br>*(Cái em từng vất vả, em không muốn Tài và lớp sau vất ạ.)* |
| Saito | <ruby>君<rt>きみ</rt></ruby>らしい<ruby>提案<rt>ていあん</rt></ruby>です。ぜひ<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Đề xuất đúng kiểu em. Cứ tiến hành đi.)* |

---

## Tình huống 18 — Văn phòng · 16:20, báo cáo tổng kết năm 2

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>、<ruby>二年目<rt>にねんめ</rt></ruby>、<ruby>大<rt>おお</rt></ruby>きな<ruby>事故<rt>じこ</rt></ruby>なく<ruby>終<rt>お</rt></ruby>えられました。<br>*(Anh Tanigawa, năm hai, em kết thúc mà không tai nạn lớn ạ.)* |
| Tanigawa | それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>や。<ruby>無事<rt>ぶじ</rt></ruby>が<ruby>何<rt>なに</rt></ruby>よりや。<br>*(Đó là thành quả lớn nhất. An toàn là trên hết.)* |
| Thức | <ruby>独立<rt>どくりつ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>、<ruby>墨出<rt>すみだ</rt></ruby>し、<ruby>玉掛<rt>たまか</rt></ruby>け、<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>できました。<br>*(Làm việc độc lập, bật mực, móc tải, kèm đàn em, em đều trải qua ạ.)* |
| Tanigawa | <ruby>一年<rt>いちねん</rt></ruby>でようやった。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>一人前<rt>いちにんまえ</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>せ。<br>*(Một năm làm tốt. Năm sau hướng tới thợ thực thụ.)* |
| Thức | はい、<ruby>三年目<rt>さんねんめ</rt></ruby>も<ruby>全力<rt>ぜんりょく</rt></ruby>でやります。ありがとうございました。<br>*(Vâng, năm ba em cũng làm hết sức. Em cảm ơn ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。ご<ruby>苦労<rt>くろう</rt></ruby>さん、<ruby>一年<rt>いちねん</rt></ruby>。<br>*(Cậu thì không sao đâu. Vất vả rồi, cả năm.)* |

---

## Tình huống 19 — Văn phòng · 16:40, lời cuối của 職長

| Vai | Lời thoại |
|---|---|
| Saito | トゥックくん、<ruby>一年<rt>いちねん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Thức, một năm, vất vả thật rồi.)* |
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>がいつも<ruby>信<rt>しん</rt></ruby>じてくれました。<br>*(Anh Saito luôn tin tưởng em ạ.)* |
| Saito | <ruby>君<rt>きみ</rt></ruby>が<ruby>信<rt>しん</rt></ruby>じられる<ruby>仕事<rt>しごと</rt></ruby>をしたからです。それを<ruby>忘<rt>わす</rt></ruby>れないで。<br>*(Vì em làm việc đáng tin. Đừng quên điều đó.)* |
| Thức | はい。<ruby>来年<rt>らいねん</rt></ruby>はもっと<ruby>信頼<rt>しんらい</rt></ruby>される<ruby>職人<rt>しょくにん</rt></ruby>になります。<br>*(Vâng. Sang năm em thành thợ được tin cậy hơn nữa ạ.)* |
| Saito | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>今日<rt>きょう</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確<rt>たし</rt></ruby>かめましょう。<br>*(Câu đó, ngày này năm sau, mình cùng kiểm chứng nhé.)* |
| Thức | はい、<ruby>約束<rt>やくそく</rt></ruby>します。<br>*(Vâng, em hứa ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, Thức nhìn lại năm 2 (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Hùng à, vậy là hết năm hai. Năm ngoái tao còn run khi cầm cờ lê, giờ được giao cả một khu ngày đổ bê tông. |
| Hùng | Mày đi nhanh thật. Tao còn lẹt đẹt. |
| Thức | Không đâu, mỗi người một nhịp. Tao chỉ nhớ một câu: không chắc thì hỏi, đừng đoán. Câu đó cứu tao cả năm. |
| Hùng | Câu của anh Long hả? Tao cũng ghi rồi. |
| Thức | Ừ. Năm ba mình cố cho hồ sơ đẹp, rồi 特定技能. Một năm nữa thôi. Cố lên Hùng. |
| Hùng | Ờ, cảm ơn mày. Đồng kỳ phải về đích cùng nhau. Ngủ thôi, mai vẫn lên giàn. |

---

## Đọng lại

Kết thúc năm 2, Thức trải qua buổi đánh giá chính thức: tự nhận xét điểm mạnh (an toàn, 報連相) và điểm yếu (段取り, tiếng Nhật khó), nhận phản hồi nghiêm khắc đúng mực ("lúc quen tay nguy hiểm nhất") mà không tự ái, và đặt mục tiêu năm 3 hướng tới 特定技能. Em cảm ơn từng người đã dìu dắt và chính em giờ đã dìu được đàn em. Một năm từ phụ việc lên thợ thực thụ. Bài học cốt lõi của cả series: không chắc thì hỏi đừng đoán, an toàn trên hết, và niềm tin phải đến từ công việc đáng tin.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 評価面談 | ひょうかめんだん | buổi đánh giá phỏng vấn |
> | 自己評価 | じこひょうか | tự đánh giá |
> | 課題 | かだい | điểm cần khắc phục |
> | 段取り | だんどり | sắp xếp trình tự |
> | 納得 | なっとく | đồng thuận, thông suốt |
> | 重点的 | じゅうてんてき | trọng tâm |
> | 覚悟 | かくご | sẵn sàng tinh thần |
> | 受け継ぐ | うけつぐ | kế thừa |
> | 観察 | かんさつ | quan sát |
> | 無駄足 | むだあし | đi lại vô ích |
> | 成果 | せいか | thành quả |
> | 一人前 | いちにんまえ | thợ thực thụ |
> | 誇り | ほこり | niềm tự hào |
> | 信頼 | しんらい | tin cậy |
> | お互いさま | おたがいさま | có qua có lại |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
