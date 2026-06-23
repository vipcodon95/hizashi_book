-- Hizashi LITE book SQL — Đại học Y1
-- curriculum_id = 800000021  (book_seq=21)
-- nguồn: books/21_dai_daigaku_year1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000021, 'N3', 'markdown_book', 'Du học', 'Đại học Y1', 'Bộ sách Hizashi — Đại học Y1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000001, 800000021, NULL, 'markdown_book', 'T1. Ngày nhập học ở ĐH Osaka cơ sở Toyonaka (入学式)', '# Sách sinh viên Đại học Osaka · T1. Ngày nhập học ở ĐH Osaka cơ sở Toyonaka (入学式)

> **Mục tiêu nhân vật:** Đại 21 tuổi, vừa đậu N2, ngày đầu nhập học khoa Khoa học Thông tin ĐH Osaka. Học các mẫu hội thoại tiếng Nhật của tân sinh viên du học: (1) hỏi đường đến hội trường, (2) xác nhận mã số tại quầy lễ tân, (3) tự giới thiệu với bạn cùng khoa, (4) hỏi lại khi chưa nghe rõ thông báo, (5) rủ/nhận lời tham gia hoạt động ngoại khoá, (6) gọi điện về Việt Nam báo tin.

---

## Bối cảnh

Sáng 4/4/2026, Đại đi Osaka Metro Midosuji từ Tennoji lên Umeda, rồi chuyển tàu Hankyu Takarazuka đến ga 石橋阪大前 dự lễ nhập học cùng 3000 tân sinh viên ĐH Osaka cơ sở 豊中 (Toyonaka). Khoa 情報科学科 (Khoa học Thông tin) có 101 SV — chỉ 3 du học sinh: Đại (VN), Lin Wei (TQ), Rajesh (Ấn). Đại quen Yamato Tanaka (người Nhật mê AtCoder) và Aiko Sato (Nhật, mê UI/UX). Chương này tập trung các mẫu câu **hỏi đường, chào hỏi tân sinh viên, xác nhận thông tin tại quầy lễ tân và rủ/nhận lời tham gia hoạt động**.

---

## Tình huống 1 — Ga 石橋阪大前 · 8:15, hỏi đường lên hội trường

*Đại vừa xuống tàu, kéo theo dòng tân sinh viên mặc vest đen. Cậu chưa rõ đường lên 体育館 nên hỏi nhân viên ga.*

| Vai | Lời thoại |
|---|---|
| Đại | すみません、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>体育館<rt>たいいくかん</rt></ruby>はどちらですか?<br>*(Xin lỗi, nhà thi đấu của ĐH Osaka đi lối nào ạ?)* |
| Nhân viên ga | <ruby>東口<rt>ひがしぐち</rt></ruby>を<ruby>出<rt>で</rt></ruby>て、<ruby>坂<rt>さか</rt></ruby>を<ruby>上<rt>のぼ</rt></ruby>ってください。15<ruby>分<rt>ふん</rt></ruby>ぐらいです。<br>*(Bạn ra cửa Đông rồi lên dốc. Khoảng 15 phút.)* |
| Đại | <ruby>新入生<rt>しんにゅうせい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>でいいですか?<br>*(Đi theo các bạn tân sinh viên là được phải không ạ?)* |
| Nhân viên ga | はい、みんなと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>けば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Vâng, đi theo mọi người là được. Cố lên nhé.)* |
| Đại | ありがとうございます!<br>*(Cháu cảm ơn ạ!)* |

---

## Tình huống 2 — Dốc lên Toyonaka · 8:30, làm quen Yamato

*Đại vừa lên dốc thì bị một bạn nam tóc rối, đeo balo to chạy theo gọi.*

| Vai | Lời thoại |
|---|---|
| Yamato | あ、<ruby>留学生<rt>りゅうがくせい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですか?<br>*(À, bạn là du học sinh à?)* |
| Đại | はい、ベトナムから<ruby>来<rt>き</rt></ruby>たグエン・ヴァン・ダイです。<ruby>初<rt>はじ</rt></ruby>めまして。<br>*(Vâng, mình là Nguyễn Văn Đại từ Việt Nam. Rất vui được gặp bạn.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>ヤマトやで!<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>?<br>*(Tớ là Tanaka Yamato! Khoa Khoa học Thông tin à?)* |
| Đại | はい!どうして<ruby>分<rt>わ</rt></ruby>かりましたか?<br>*(Vâng! Sao bạn biết được vậy?)* |
| Yamato | バッグに<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>の<ruby>資料<rt>しりょう</rt></ruby>が<ruby>見<rt>み</rt></ruby>えとるで。<br>*(Tài liệu khoa CNTT thò ra ngoài cặp của bạn kìa.)* |
| Đại | あ、<ruby>恥<rt>は</rt></ruby>ずかしい!<ruby>同<rt>おな</rt></ruby>じクラスですね。<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ôi xấu hổ quá! Vậy là cùng lớp rồi. 4 năm tới mong bạn giúp đỡ.)* |
| Yamato | こちらこそ!<ruby>留学生<rt>りゅうがくせい</rt></ruby>、うちの<ruby>学科<rt>がっか</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>しかおらんから<ruby>嬉<rt>うれ</rt></ruby>しいわ。<br>*(Tớ cũng vậy! Khoa mình chỉ có 3 du học sinh, vui ghê.)* |

---

## Tình huống 3 — Quầy lễ tân 体育館 · 8:45, xác nhận học vụ

*Hàng dài ở cửa nhà thi đấu. Đại đưa giấy thông báo, lo lắng vì lần đầu xưng mã số sinh viên bằng tiếng Nhật.*

| Vai | Lời thoại |
|---|---|
| Staff | <ruby>受付<rt>うけつけ</rt></ruby>です。<ruby>学籍番号<rt>がくせきばんごう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Quầy lễ tân đây ạ. Cho mình xin mã số sinh viên.)* |
| Đại | はい、<ruby>2<rt>に</rt></ruby><ruby>6<rt>ろく</rt></ruby>のB、<ruby>1<rt>いち</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>5<rt>ご</rt></ruby>です。<br>*(Vâng, 26B12345 ạ.)* |
| Staff | グエンさんですね。こちら<ruby>名簿<rt>めいぼ</rt></ruby>とパンフレットです。<ruby>学生証<rt>がくせいしょう</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby>お<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Anh Nguyễn đúng không. Danh sách và tài liệu đây. Thẻ sinh viên hôm sau sẽ phát.)* |
| Đại | あの、<ruby>学生証<rt>がくせいしょう</rt></ruby>はいつ<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>れますか?<br>*(Dạ cho hỏi, khi nào thì lấy được thẻ sinh viên ạ?)* |
| Staff | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby>、<ruby>教務課<rt>きょうむか</rt></ruby>でお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Thứ Hai tuần sau, lấy tại phòng giáo vụ.)* |
| Đại | <ruby>教務課<rt>きょうむか</rt></ruby>は<ruby>何号館<rt>なんごうかん</rt></ruby>ですか?<br>*(Phòng giáo vụ ở toà nhà số mấy ạ?)* |
| Staff | A<ruby>棟<rt>とう</rt></ruby>の1<ruby>階<rt>かい</rt></ruby>です。<ruby>地図<rt>ちず</rt></ruby>はパンフレットの<ruby>最後<rt>さいご</rt></ruby>のページにあります。<br>*(Toà A tầng 1. Bản đồ ở trang cuối tài liệu.)* |
| Đại | <ruby>確認<rt>かくにん</rt></ruby>しました。ありがとうございます。<br>*(Cháu xác nhận rồi. Cảm ơn ạ.)* |

---

## Tình huống 4 — Bên trong 体育館 · 8:55, hỏi chỗ ngồi

| Vai | Lời thoại |
|---|---|
| Đại | すみません、<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>の<ruby>席<rt>せき</rt></ruby>はどこですか?<br>*(Xin lỗi, chỗ ngồi của khoa Khoa học Thông tin ở đâu ạ?)* |
| Staff hướng dẫn | <ruby>右側<rt>みぎがわ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>列目<rt>れつめ</rt></ruby>です。<ruby>名簿順<rt>めいぼじゅん</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Bên phải, hàng thứ 5 tính từ phía trước. Ngồi theo thứ tự danh sách nhé.)* |
| Đại | <ruby>名簿順<rt>めいぼじゅん</rt></ruby>というのは、<ruby>番号<rt>ばんごう</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>ですか?<br>*(Theo "danh sách" tức là theo thứ tự số ạ?)* |
| Staff | はい、<ruby>学籍番号<rt>がくせきばんごう</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>です。<br>*(Vâng, theo mã số sinh viên.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Cháu hiểu rồi. Cảm ơn ạ.)* |
| Yamato | (vẫy tay từ hàng ghế) ダイ、こっちこっち!<ruby>俺<rt>おれ</rt></ruby>の<ruby>隣<rt>となり</rt></ruby><ruby>空<rt>あ</rt></ruby>いとるで!<br>*(Đại, bên này bên này! Chỗ bên tớ trống nè!)* |

---

## Tình huống 5 — Lễ nhập học · 9:00, nghe diễn văn hiệu trưởng

*Hiệu trưởng bước lên bục. Đại ngồi nghiêm chỉnh, mở vở ghi từ khoá. Câu nói đầu tiên của hiệu trưởng vang lên hơi nhanh.*

| Vai | Lời thoại |
|---|---|
| Hiệu trưởng | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby>2026<ruby>年度<rt>ねんど</rt></ruby>の<ruby>新入生<rt>しんにゅうせい</rt></ruby>3000<ruby>名<rt>めい</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さん、<ruby>入学<rt>にゅうがく</rt></ruby>おめでとうございます。<br>*(Chúc mừng 3000 tân sinh viên khoá 2026 ĐH Osaka.)* |
| Hiệu trưởng | <ruby>本学<rt>ほんがく</rt></ruby>の<ruby>理念<rt>りねん</rt></ruby>は「<ruby>地域<rt>ちいき</rt></ruby>に<ruby>生<rt>い</rt></ruby>き、<ruby>世界<rt>せかい</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びる」です。これからの<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>大<rt>おお</rt></ruby>いに<ruby>挑戦<rt>ちょうせん</rt></ruby>してください。<br>*(Triết lý của trường là "Sống cùng địa phương, vươn ra thế giới". 4 năm tới hãy mạnh dạn thử thách bản thân.)* |
| Đại | (thì thầm với Yamato) ごめん、<ruby>最後<rt>さいご</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby><ruby>教<rt>おし</rt></ruby>えて。<br>*(Xin lỗi, nói lại câu cuối giúp tớ với.)* |
| Yamato | (thì thầm) 「<ruby>大<rt>おお</rt></ruby>いに<ruby>挑戦<rt>ちょうせん</rt></ruby>してください」やで。"Hãy thử thách nhiều vào".<br>*("Hãy mạnh dạn thử thách." Nghĩa là "thử nhiều vào".)* |
| Đại | (gật, ghi) ありがとう。<br>*(Cảm ơn nhé.)* |
| (3000 SV) | (vỗ tay đồng loạt)<br>*(Vỗ tay.)* |

---

## Tình huống 6 — Sau lễ · 11:30, nghe loa hướng dẫn di chuyển

*Lễ kết thúc, loa thông báo phân khoa. Đại không kịp nghe số phòng.*

| Vai | Lời thoại |
|---|---|
| Loa | <ruby>基礎工学部<rt>きそこうがくぶ</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>の<ruby>方<rt>かた</rt></ruby>は、B<ruby>棟<rt>とう</rt></ruby>301<ruby>教室<rt>きょうしつ</rt></ruby>へ<ruby>移動<rt>いどう</rt></ruby>してください。<br>*(Sinh viên khoa Khoa học Thông tin xin di chuyển đến phòng B301.)* |
| Đại | (quay sang Yamato) ごめん、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>い。<ruby>教室<rt>きょうしつ</rt></ruby>は<ruby>何番<rt>なんばん</rt></ruby>?<br>*(Xin lỗi, nói lại giúp tớ. Phòng số mấy?)* |
| Yamato | B<ruby>棟<rt>とう</rt></ruby>の<ruby>301<rt>さんまるいち</rt></ruby>や。<ruby>俺<rt>おれ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じやから<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<br>*(B301 đó. Tớ cũng cùng phòng, đi chung nhé.)* |
| Đại | <ruby>助<rt>たす</rt></ruby>かった!<ruby>放送<rt>ほうそう</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くて<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れなかった。<br>*(Cứu tớ rồi! Loa nói nhanh quá, tớ không nghe kịp.)* |
| Yamato | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>!<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>は<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてや。<br>*(Yên tâm! Không hiểu cứ hỏi tớ thoải mái.)* |

---

## Tình huống 7 — Phòng B301 · 12:00, tự giới thiệu với Aiko

*Đại ngồi xuống ghế. Một bạn nữ tóc ngắn, đeo iPad, ngồi cạnh, chủ động bắt chuyện.*

| Vai | Lời thoại |
|---|---|
| Aiko | こんにちは。<ruby>佐藤<rt>さとう</rt></ruby><ruby>愛子<rt>あいこ</rt></ruby>です。<ruby>京都<rt>きょうと</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào bạn. Mình là Sato Aiko, người Kyoto. Mong được giúp đỡ.)* |
| Đại | こんにちは。グエン・ヴァン・ダイです。ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>で、<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>語学学校<rt>ごがくがっこう</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>してから<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào bạn. Mình là Nguyễn Văn Đại, người Việt Nam, đã học trường tiếng 2 năm trước khi vào đại học.)* |
| Aiko | わぁ、すごい!<ruby>日本語<rt>にほんご</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Ồ giỏi quá! Tiếng Nhật của bạn tốt ghê.)* |
| Đại | まだまだです。Aikoさんの<ruby>専攻<rt>せんこう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Còn kém lắm. Bạn Aiko định học chuyên ngành gì?)* |
| Aiko | UI/UXデザインに<ruby>興味<rt>きょうみ</rt></ruby>があります。ダイさんは?<br>*(Mình thích UI/UX design. Còn bạn Đại?)* |
| Đại | <ruby>機械学習<rt>きかいがくしゅう</rt></ruby>と<ruby>自然言語処理<rt>しぜんげんごしょり</rt></ruby>に<ruby>興味<rt>きょうみ</rt></ruby>があります。<br>*(Mình quan tâm đến machine learning và xử lý ngôn ngữ tự nhiên.)* |
| Aiko | <ruby>素敵<rt>すてき</rt></ruby>!<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tuyệt vời! 4 năm tới mong bạn giúp đỡ.)* |

---

## Tình huống 8 — Phòng B301 · 12:10, gặp Lin Wei và Rajesh

| Vai | Lời thoại |
|---|---|
| Lin Wei | (đến gần) <ruby>初<rt>はじ</rt></ruby>めまして。<ruby>中国<rt>ちゅうごく</rt></ruby><ruby>上海<rt>シャンハイ</rt></ruby>から<ruby>来<rt>き</rt></ruby>ました、リン・ウェイです。<br>*(Rất vui được gặp các bạn. Mình là Lin Wei, từ Thượng Hải Trung Quốc.)* |
| Đại | グエン・ダイです、ベトナムから。<ruby>同<rt>おな</rt></ruby>じ<ruby>留学生<rt>りゅうがくせい</rt></ruby>ですね!<br>*(Mình là Nguyễn Đại, từ Việt Nam. Cùng là du học sinh rồi nhỉ!)* |
| Rajesh | <ruby>初<rt>はじ</rt></ruby>めまして、インドのラジェッシュです。<ruby>22<rt>にじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>から<ruby>大学<rt>だいがく</rt></ruby>に<ruby>進<rt>すす</rt></ruby>みました。<br>*(Chào, mình Rajesh từ Ấn Độ, 22 tuổi. Mình chuyển từ Tokutei Ginou 1 sang đại học.)* |
| Đại | <ruby>年<rt>とし</rt></ruby>が<ruby>近<rt>ちか</rt></ruby>いですね。<ruby>僕<rt>ぼく</rt></ruby>は<ruby>21<rt>にじゅういち</rt></ruby>です。<br>*(Tuổi gần nhau ghê. Mình 21.)* |
| Aiko | <ruby>多国籍<rt>たこくせき</rt></ruby>クラスになりそうですね!<br>*(Lớp mình sắp thành lớp đa quốc tịch rồi!)* |
| Yamato | これは<ruby>面白<rt>おもしろ</rt></ruby>くなるで〜!<br>*(Sẽ vui đây~!)* |

---

## Tình huống 9 — B301 · 12:30, giáo vụ thông báo lịch tuần đầu

*Một thầy đứng trên bục, gọi là 学務員 (gakushokuin — nhân viên giáo vụ).*

| Vai | Lời thoại |
|---|---|
| Gakushokuin | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>月曜日<rt>げつようび</rt></ruby>からオリエンテーションが<ruby>始<rt>はじ</rt></ruby>まります。<ruby>火曜日<rt>かようび</rt></ruby>に<ruby>履修登録<rt>りしゅうとうろく</rt></ruby>、<ruby>水曜日<rt>すいようび</rt></ruby>から<ruby>授業<rt>じゅぎょう</rt></ruby>です。<br>*(Tuần sau bắt đầu định hướng. Thứ Ba đăng ký môn, thứ Tư bắt đầu lớp.)* |
| Đại | (giơ tay) すみません、「<ruby>履修登録<rt>りしゅうとうろく</rt></ruby>」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Dạ cho em hỏi, "rishuu touroku" nghĩa là gì ạ?)* |
| Gakushokuin | <ruby>授業<rt>じゅぎょう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んで<ruby>登録<rt>とうろく</rt></ruby>することです。オンラインで<ruby>行<rt>おこな</rt></ruby>います。<br>*(Là chọn môn và đăng ký. Làm online.)* |
| Đại | <ruby>必修科目<rt>ひっしゅうかもく</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>選<rt>えら</rt></ruby>ばなくていいですか?<br>*(Môn bắt buộc thì không cần tự chọn phải không ạ?)* |
| Gakushokuin | はい、<ruby>必修<rt>ひっしゅう</rt></ruby>は<ruby>自動<rt>じどう</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>です。<ruby>選択科目<rt>せんたくかもく</rt></ruby>だけ<ruby>選<rt>えら</rt></ruby>びます。<br>*(Đúng, môn bắt buộc tự động. Chỉ chọn môn tự chọn thôi.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em hiểu rồi. Cảm ơn thầy ạ.)* |

---

## Tình huống 10 — Hành lang · 13:00, hỏi căn-tin

| Vai | Lời thoại |
|---|---|
| Đại | ヤマト、<ruby>学食<rt>がくしょく</rt></ruby>はどこ?お<ruby>腹<rt>なか</rt></ruby><ruby>空<rt>す</rt></ruby>いたわ。<br>*(Yamato ơi, nhà ăn ở đâu? Tớ đói rồi.)* |
| Yamato | C<ruby>棟<rt>とう</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>や。<ruby>定食<rt>ていしょく</rt></ruby>が<ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>ぐらいやで。<ruby>安<rt>やす</rt></ruby>くて<ruby>美味<rt>うま</rt></ruby>い。<br>*(Toà C tầng 1. Cơm phần khoảng 500 yên. Rẻ mà ngon.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>も<ruby>行<rt>い</rt></ruby>っていい?<br>*(Mình đi cùng được không?)* |
| Đại | もちろん!リンとラジェッシュも<ruby>誘<rt>さそ</rt></ruby>おう。<br>*(Tất nhiên! Rủ cả Lin và Rajesh nữa nhé.)* |
| Yamato | <ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>歓迎会<rt>かんげいかい</rt></ruby>みたいやん!<br>*(Giống tiệc chào đón du học sinh luôn!)* |
| Đại | <ruby>新入生<rt>しんにゅうせい</rt></ruby><ruby>歓迎会<rt>かんげいかい</rt></ruby>でしょ?<ruby>全員<rt>ぜんいん</rt></ruby><ruby>新入生<rt>しんにゅうせい</rt></ruby>だから。<br>*(Là tiệc chào tân sinh viên chứ. Tất cả mình đều là tân sinh viên mà.)* |
| Yamato | (cười) せやな!<br>*(Đúng vậy nhỉ!)* |

---

## Tình huống 11 — Căn-tin C棟 · 13:15, gọi món lần đầu

*Đại đứng trước quầy nhận khay, lần đầu gọi món bằng tiếng Nhật trong trường ĐH.*

| Vai | Lời thoại |
|---|---|
| Nhân viên căn-tin | ご<ruby>注文<rt>ちゅうもん</rt></ruby>は?<br>*(Bạn gọi món gì?)* |
| Đại | A<ruby>定食<rt>ていしょく</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つ、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho mình một suất cơm phần A ạ.)* |
| Nhân viên | A<ruby>定食<rt>ていしょく</rt></ruby><ruby>一<rt>ひと</rt></ruby>つ、500<ruby>円<rt>えん</rt></ruby>です。<ruby>学生証<rt>がくせいしょう</rt></ruby>は?<br>*(Cơm A một suất, 500 yên. Có thẻ sinh viên không?)* |
| Đại | すみません、<ruby>今日<rt>きょう</rt></ruby>はまだもらってません。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>月曜日<rt>げつようび</rt></ruby>に<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ります。<br>*(Xin lỗi, hôm nay cháu chưa có. Thứ Hai tuần sau cháu mới lấy.)* |
| Nhân viên | では<ruby>現金<rt>げんきん</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>次回<rt>じかい</rt></ruby>から<ruby>学生証<rt>がくせいしょう</rt></ruby>でICカード<ruby>支払<rt>しはら</rt></ruby>いができます。<br>*(Vậy trả tiền mặt được. Lần sau dùng thẻ sinh viên thanh toán IC được.)* |
| Đại | <ruby>便利<rt>べんり</rt></ruby>ですね!ありがとうございます。<br>*(Tiện thật! Cảm ơn ạ.)* |

---

## Tình huống 12 — Bàn ăn căn-tin · 13:30, Yamato rủ AtCoder

| Vai | Lời thoại |
|---|---|
| Yamato | ダイ、<ruby>放課後<rt>ほうかご</rt></ruby>、<ruby>図書館<rt>としょかん</rt></ruby>でAtCoderの<ruby>練習会<rt>れんしゅうかい</rt></ruby>あるんやけど、<ruby>来<rt>く</rt></ruby>る?<br>*(Đại, chiều tan có buổi tập AtCoder ở thư viện đó. Đi không?)* |
| Đại | AtCoder?<ruby>聞<rt>き</rt></ruby>いたことあるけど、まだやったことない。<ruby>初心者<rt>しょしんしゃ</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(AtCoder? Tớ nghe rồi mà chưa làm. Lính mới đi được không?)* |
| Yamato | もちろん!<ruby>初<rt>はじ</rt></ruby>めての<ruby>人<rt>ひと</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>会<rt>かい</rt></ruby>や。アカウント<ruby>作<rt>つく</rt></ruby>って、A<ruby>問題<rt>もんだい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>解<rt>と</rt></ruby>くだけ。<br>*(Tất nhiên! Buổi đó dành cho người mới. Lập tài khoản rồi giải 1 bài A là xong.)* |
| Đại | <ruby>面白<rt>おもしろ</rt></ruby>そう!Aikoも<ruby>来<rt>く</rt></ruby>る?<br>*(Hay đấy! Aiko đi không?)* |
| Aiko | <ruby>競技<rt>きょうぎ</rt></ruby>プログラミングはちょっと<ruby>苦手<rt>にがて</rt></ruby>...でも、<ruby>見学<rt>けんがく</rt></ruby>だけしてみる。<br>*(Lập trình thi đấu mình hơi yếu... nhưng mình đi xem thử.)* |
| Yamato | <ruby>図書館<rt>としょかん</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>会議室<rt>かいぎしつ</rt></ruby>、17<ruby>時<rt>じ</rt></ruby>からや!<br>*(Phòng họp tầng 3 thư viện, 5 giờ chiều!)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>きます!<br>*(Vâng, nhất định đi!)* |

---

## Tình huống 13 — Thư viện tầng 3 · 17:15, lập tài khoản AtCoder

*Đại ngồi cạnh Yamato, mở laptop. Trên màn hình là trang đăng ký AtCoder.*

| Vai | Lời thoại |
|---|---|
| Yamato | アカウント<ruby>名<rt>めい</rt></ruby>は<ruby>何<rt>なに</rt></ruby>にする?<br>*(Tên tài khoản đặt gì?)* |
| Đại | 「vandai_osaka」にしようかな。<br>*(Đặt là "vandai_osaka" nhé.)* |
| Yamato | ええやん!ABC329のA<ruby>問題<rt>もんだい</rt></ruby>やってみ。<ruby>問題文<rt>もんだいぶん</rt></ruby><ruby>読<rt>よ</rt></ruby>める?<br>*(Hay đó! Thử bài A của ABC329 đi. Đọc đề được không?)* |
| Đại | (đọc to) 「<ruby>整数<rt>せいすう</rt></ruby>Nが<ruby>与<rt>あた</rt></ruby>えられます。Nの<ruby>2<rt>に</rt></ruby><ruby>倍<rt>ばい</rt></ruby>を<ruby>出力<rt>しゅつりょく</rt></ruby>してください」...<ruby>意味<rt>いみ</rt></ruby><ruby>分<rt>わ</rt></ruby>かった!<br>*(Cho số nguyên N, hãy in ra 2 lần N. Tớ hiểu rồi!)* |
| Yamato | やってみ。Pythonで<ruby>3<rt>さん</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>や。<br>*(Làm thử đi. Python 3 dòng thôi.)* |
| Đại | (gõ rồi nộp) ...AC!<br>*(...AC!)* |
| Yamato | <ruby>初<rt>はつ</rt></ruby>AC おめでとう!これでAtCoder<ruby>仲間<rt>なかま</rt></ruby>や!<br>*(Chúc mừng AC đầu tiên! Giờ là đồng đội AtCoder rồi!)* |
| Đại | ありがとう!まだ<ruby>分<rt>わ</rt></ruby>からないことが<ruby>多<rt>おお</rt></ruby>いから、これからもよろしく。<br>*(Cảm ơn! Còn nhiều thứ tớ chưa biết, mong bạn giúp đỡ tiếp.)* |

---

## Tình huống 14 — Video call về Hà Nội · 22:00, kể Mai chuyện trong ngày

> Cảnh tiếng Việt — Đại gọi video cho Mai (bạn gái ở Hà Nội). Ôn lại từ vựng JP trong ngày qua đối thoại tiếng Việt.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Anh vừa về dorm. Hôm nay là 入学式 — lễ nhập học, đông nghẹt 3000 đứa. |
| Mai | (tiếng Việt) Trời ơi đông thế anh! Anh có quen được bạn nào không? |
| Đại | (tiếng Việt) Quen được một bạn người Nhật tên Yamato, mê AtCoder — kiểu giải code online. Còn Aiko làm UI/UX, Lin Wei Trung Quốc, Rajesh Ấn Độ — bốn nước cùng lớp luôn. |
| Mai | (tiếng Việt) Đa quốc tịch ghê! Lễ to không anh? |
| Đại | (tiếng Việt) To! Hiệu trưởng nói câu chốt là 「大いに挑戦してください」 — "Hãy mạnh dạn thử thách bản thân". Anh ghi lại vào sổ rồi. |
| Mai | (tiếng Việt) Anh ngoan ghê. Còn bao lâu nữa mình cưới anh nhỉ? |
| Đại | (tiếng Việt) 9 tháng nữa, 14/1/2027. Anh đếm từng ngày em. À, hôm nay anh còn nộp được bài AtCoder đầu tiên nữa — anh em gọi là "AC". Bắt đầu hành trình rồi! |
| Mai | (tiếng Việt) Tự hào anh quá. Ngủ ngon nhé chồng. |
| Đại | (tiếng Việt) Em cũng ngủ ngon. Mai 7h sáng anh có lớp định hướng. |

---

## Đọng lại chương 1

Ngày 4/4/2026 — Đại vào ĐH Osaka. Cậu học cách **hỏi đường lịch sự** với 「すみません、〜はどちらですか?」, **xác nhận thông tin tại quầy lễ tân** với 「<ruby>学籍番号<rt>がくせきばんごう</rt></ruby>は〜です」 và 「<ruby>確認<rt>かくにん</rt></ruby>しました」, **tự giới thiệu tân sinh viên** với 「<ruby>4<rt>よ</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いします」. Khi không nghe rõ loa, cậu dùng 「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」 và 「〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?」 để hỏi lại. Cậu nhận lời Yamato 「<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>きます」 và nộp được bài AtCoder đầu tiên — **AC**. Tối về Đại gọi video kể Mai 「<ruby>大<rt>おお</rt></ruby>いに<ruby>挑戦<rt>ちょうせん</rt></ruby>してください」 — câu hiệu trưởng dặn 3000 tân sinh viên.

> Từ vựng & mẫu câu chương này: <ruby>入学式<rt>にゅうがくしき</rt></ruby>・<ruby>新入生<rt>しんにゅうせい</rt></ruby>・<ruby>体育館<rt>たいいくかん</rt></ruby>・<ruby>学籍番号<rt>がくせきばんごう</rt></ruby>・<ruby>学生証<rt>がくせいしょう</rt></ruby>・<ruby>名簿順<rt>めいぼじゅん</rt></ruby>・<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>・<ruby>留学生<rt>りゅうがくせい</rt></ruby>・<ruby>履修登録<rt>りしゅうとうろく</rt></ruby>・<ruby>必修科目<rt>ひっしゅうかもく</rt></ruby>・<ruby>選択科目<rt>せんたくかもく</rt></ruby>・<ruby>学食<rt>がくしょく</rt></ruby>・<ruby>定食<rt>ていしょく</rt></ruby>・<ruby>教務課<rt>きょうむか</rt></ruby>・<ruby>学務員<rt>がくしょくいん</rt></ruby>・〜はどちらですか・もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします・〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか・<ruby>承知<rt>しょうち</rt></ruby>しました・<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>きます

## Bí quyết chương

- **Mẫu câu hỏi đường + quầy lễ tân** là bộ kỹ năng sống còn của bất cứ tân sinh viên du học nào ngày đầu. Học chắc 「すみません、〜はどちらですか?」 và 「〜は<ruby>何号館<rt>なんごうかん</rt></ruby>ですか?」.
- **Khi không nghe rõ loa**: chỉ cần thì thầm hỏi bạn bên cạnh 「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」 — không xấu hổ. Người Nhật cũng làm vậy.
- **「〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?」** là vũ khí học thuật ngữ mới. 履修登録, 必修, 選択 — toàn từ học vụ phải hỏi để hiểu.
- **「<ruby>承知<rt>しょうち</rt></ruby>しました」** lịch sự hơn 「<ruby>分<rt>わ</rt></ruby>かりました」 khi nói với giáo vụ/sensei.
- Cảnh tiếng Việt cuối chương: Đại chêm từ JP đã học (入学式, AtCoder, AC, 大いに挑戦) khi kể Mai — đây là kỹ thuật ôn từ vựng tự nhiên.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入学式 | にゅうがくしき | NHẬP HỌC THỨC | lễ nhập học |
| 大阪大学 | おおさかだいがく | ĐẠI BẢN ĐẠI HỌC | Đại học Osaka |
| 体育館 | たいいくかん | THỂ DỤC QUÁN | nhà thi đấu |
| 東口 | ひがしぐち | ĐÔNG KHẨU | cửa Đông |
| 新入生 | しんにゅうせい | TÂN NHẬP SINH | tân sinh viên |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | du học sinh |
| 情報科学科 | じょうほうかがくか | TÌNH BÁO KHOA HỌC KHOA | khoa Khoa học Thông tin |
| 資料 | しりょう | TƯ LIỆU | tài liệu |
| 学科 | がっか | HỌC KHOA | khoa, ngành |
| 受付 | うけつけ | THỌ PHÓ | quầy lễ tân |
| 学籍番号 | がくせきばんごう | HỌC TỊCH PHIÊN HIỆU | mã số sinh viên |
| 名簿 | めいぼ | DANH BẠ | danh sách |
| 学生証 | がくせいしょう | HỌC SINH CHỨNG | thẻ sinh viên |
| 教務課 | きょうむか | GIÁO VỤ KHÓA | phòng giáo vụ |
| 棟 | とう | ĐỐNG | toà nhà |
| 地図 | ちず | ĐỊA ĐỒ | bản đồ |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 名簿順 | めいぼじゅん | DANH BẠ THUẬN | thứ tự danh sách |
| 本学 | ほんがく | BẢN HỌC | trường ta |
| 理念 | りねん | LÝ NIỆM | triết lý |
| 挑戦 | ちょうせん | THÁCH CHIẾN | thử thách |
| 基礎工学部 | きそこうがくぶ | CƠ SỞ CÔNG HỌC BỘ | khoa Công học cơ sở |
| 移動 | いどう | DI ĐỘNG | di chuyển |
| 放送 | ほうそう | PHÓNG TỐNG | phát thanh, loa |
| 出身 | しゅっしん | XUẤT THÂN | xuất thân |
| 語学学校 | ごがくがっこう | NGỮ HỌC HỌC HIỆU | trường tiếng |
| 専攻 | せんこう | CHUYÊN CÔNG | chuyên ngành |
| 機械学習 | きかいがくしゅう | CƠ GIỚI HỌC TẬP | machine learning |
| 自然言語処理 | しぜんげんごしょり | TỰ NHIÊN NGÔN NGỮ XỬ LÝ | xử lý ngôn ngữ tự nhiên |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | Tokutei Ginou |
| 多国籍 | たこくせき | ĐA QUỐC TỊCH | đa quốc tịch |
| 履修登録 | りしゅうとうろく | LÝ TU ĐĂNG LỤC | đăng ký môn học |
| 必修科目 | ひっしゅうかもく | TẤT TU KHOA MỤC | môn bắt buộc |
| 選択科目 | せんたくかもく | TUYỂN TRẠCH KHOA MỤC | môn tự chọn |
| 承知 | しょうち | THỪA TRI | hiểu, vâng |
| 学食 | がくしょく | HỌC THỰC | nhà ăn sinh viên |
| 定食 | ていしょく | ĐỊNH THỰC | cơm phần |
| 注文 | ちゅうもん | CHÚ VĂN | gọi món |
| 現金 | げんきん | HIỆN KIM | tiền mặt |
| 支払 | しはらい | CHI BÁT | thanh toán |
| 放課後 | ほうかご | PHÓNG KHÓA HẬU | sau giờ học |
| 図書館 | としょかん | ĐỒ THƯ QUÁN | thư viện |
| 練習会 | れんしゅうかい | LUYỆN TẬP HỘI | buổi luyện tập |
| 初心者 | しょしんしゃ | SƠ TÂM GIẢ | người mới |
| 競技 | きょうぎ | CẠNH KỸ | thi đấu |
| 見学 | けんがく | KIẾN HỌC | tham quan |
| 会議室 | かいぎしつ | HỘI NGHỊ THẤT | phòng họp |
| 整数 | せいすう | CHỈNH SỐ | số nguyên |
| 出力 | しゅつりょく | XUẤT LỰC | xuất, in ra |
| 仲間 | なかま | TRỌNG GIAN | đồng đội |
| 歓迎会 | かんげいかい | HOAN NGHÊNH HỘI | tiệc chào đón |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000002, 800000021, NULL, 'markdown_book', 'T2. Ký túc quốc tế và bạn cùng tầng (寮生活と新友達)', '# Sách sinh viên Đại học Osaka · T2. Ký túc quốc tế và bạn cùng tầng (寮生活と新友達)

> **Mục tiêu nhân vật:** Đại 21 tuổi, ngày 2 ở đại học, dọn vào 国際交流会館 (International House) ĐH Osaka. Học các mẫu hội thoại tiếng Nhật của du học sinh khi: (1) làm thủ tục check-in dorm, (2) hỏi nội quy ký túc (giờ giấc, bếp chung, máy giặt, rác), (3) nhờ vả/từ chối hàng xóm cùng tầng, (4) hỏi giá và đặt hàng tại Nitori, (5) mời bạn đến phòng chơi, (6) gọi điện báo bố mẹ ổn định chỗ ở.

---

## Bối cảnh

Sáng 5/4/2026, Đại kéo vali và một thùng sách từ ký túc trường tiếng ở Tennoji sang ĐH Osaka cơ sở Toyonaka. Phòng 305 ở 大阪大学国際交流会館 — 9 chiếu, view sân tennis với hàng anh đào. Cùng tầng 3 có Lin Wei (308) và Rajesh (312). Aiko ở tầng 4 (tầng nữ). Yamato ở ký túc người Nhật cách 1km. Chương này tập trung **các mẫu câu làm thủ tục thuê phòng, hỏi nội quy ký túc, mua sắm tại Nitori và mời bạn sang phòng**.

---

## Tình huống 1 — Quầy quản lý ký túc · 9:00, check-in phòng 305

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>入居<rt>にゅうきょ</rt></ruby>するグエン・ヴァン・ダイです。<br>*(Chào buổi sáng. Cháu là Nguyễn Văn Đại, hôm nay vào ở.)* |
| Quản lý | グエンさんですね。<ruby>305<rt>さんまるご</rt></ruby><ruby>号室<rt>ごうしつ</rt></ruby>です。<ruby>身分証<rt>みぶんしょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Anh Nguyễn đúng không. Phòng 305. Cho xem giấy tờ tuỳ thân.)* |
| Đại | はい、<ruby>在留<rt>ざいりゅう</rt></ruby>カードと<ruby>合格<rt>ごうかく</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby>です。<br>*(Vâng, thẻ cư trú và giấy báo trúng tuyển ạ.)* |
| Quản lý | <ruby>確認<rt>かくにん</rt></ruby>しました。これが<ruby>鍵<rt>かぎ</rt></ruby>とWi-Fiのパスワードです。<ruby>家賃<rt>やちん</rt></ruby>は<ruby>毎月<rt>まいつき</rt></ruby><ruby>月末<rt>げつまつ</rt></ruby>までに<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>振込<rt>ふりこみ</rt></ruby>です。<br>*(Đã xác nhận. Đây là chìa khoá và mật khẩu Wi-Fi. Tiền nhà chuyển khoản ngân hàng trước cuối tháng.)* |
| Đại | <ruby>家賃<rt>やちん</rt></ruby>は<ruby>一<rt>いっ</rt></ruby><ruby>か月<rt>かげつ</rt></ruby>いくらですか?<br>*(Tiền nhà một tháng bao nhiêu ạ?)* |
| Quản lý | <ruby>38,000<rt>さんまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>水道<rt>すいどう</rt></ruby>・<ruby>電気<rt>でんき</rt></ruby>・<ruby>ガス<rt>がす</rt></ruby>・Wi-Fi<ruby>込<rt>こ</rt></ruby>みです。<br>*(38 nghìn yên. Đã bao gồm điện nước gas Wi-Fi.)* |
| Đại | <ruby>込<rt>こ</rt></ruby>みで<ruby>38,000<rt>さんまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Bao trọn 38 nghìn! Cháu nhẹ gánh thật.)* |

---

## Tình huống 2 — Quầy quản lý · 9:10, hỏi nội quy bếp chung và máy giặt

| Vai | Lời thoại |
|---|---|
| Đại | あの、<ruby>共用<rt>きょうよう</rt></ruby>キッチンの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Dạ cho cháu hỏi cách dùng bếp chung được không ạ?)* |
| Quản lý | <ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>にあります。<ruby>使<rt>つか</rt></ruby>った<ruby>後<rt>あと</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>掃除<rt>そうじ</rt></ruby>してください。<ruby>食器<rt>しょっき</rt></ruby>は<ruby>放置<rt>ほうち</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>です。<br>*(Tầng 3. Dùng xong phải dọn dẹp. Cấm để bát đĩa lại.)* |
| Đại | <ruby>洗濯機<rt>せんたくき</rt></ruby>は?<br>*(Máy giặt thì sao ạ?)* |
| Quản lý | <ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>です。<ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>コインで<ruby>使<rt>つか</rt></ruby>えます。<ruby>夜<rt>よる</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>までは<ruby>使用<rt>しよう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>です。<br>*(Tầng 1. Bỏ 200 yên xu. Từ 23h đến 7h cấm dùng.)* |
| Đại | ゴミ<ruby>出<rt>だ</rt></ruby>しのルールはどうなっていますか?<br>*(Quy định đổ rác thế nào ạ?)* |
| Quản lý | <ruby>燃<rt>も</rt></ruby>えるゴミは<ruby>月水金<rt>げっすいきん</rt></ruby>、<ruby>燃<rt>も</rt></ruby>えないゴミは<ruby>木曜日<rt>もくようび</rt></ruby>です。<ruby>分別表<rt>ぶんべつひょう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>します。<br>*(Rác cháy được Hai/Tư/Sáu. Rác không cháy thứ Năm. Đây là bảng phân loại.)* |
| Đại | ありがとうございます。<ruby>後<rt>あと</rt></ruby>でじっくり<ruby>読<rt>よ</rt></ruby>みます。<br>*(Cảm ơn ạ. Lát cháu đọc kỹ.)* |

---

## Tình huống 3 — Trước phòng 305 · 9:30, gặp hàng xóm Nhật

*Đại vừa kéo vali tới cửa thì cửa phòng 306 mở ra, một anh người Nhật trạc 24 tuổi bước ra.*

| Vai | Lời thoại |
|---|---|
| Hàng xóm 306 | あ、こんにちは。<ruby>新<rt>あたら</rt></ruby>しい<ruby>方<rt>かた</rt></ruby>ですか?<br>*(À, xin chào. Người mới à?)* |
| Đại | はい、<ruby>本日<rt>ほんじつ</rt></ruby>から305<ruby>号室<rt>ごうしつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りました。グエンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em vào phòng 305 từ hôm nay. Em là Nguyễn. Mong anh giúp đỡ.)* |
| Hàng xóm | <ruby>修士<rt>しゅうし</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>橋本<rt>はしもと</rt></ruby>です。<ruby>何<rt>なに</rt></ruby>か<ruby>分<rt>わ</rt></ruby>からないことがあれば<ruby>気軽<rt>きがる</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Em là Hashimoto, thạc sĩ năm 1. Có gì không hiểu cứ hỏi thoải mái.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>助<rt>たす</rt></ruby>かります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Thật ạ? May quá. Em hỏi một câu được không?)* |
| Hashimoto | どうぞ。<br>*(Cứ hỏi.)* |
| Đại | <ruby>近<rt>ちか</rt></ruby>くにスーパーはありますか?<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>食材<rt>しょくざい</rt></ruby>を<ruby>買<rt>か</rt></ruby>いたいんです。<br>*(Quanh đây có siêu thị không ạ? Em muốn mua đồ nấu bữa tối.)* |
| Hashimoto | <ruby>歩<rt>ある</rt></ruby>いて<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>にライフがあります。<ruby>裏門<rt>うらもん</rt></ruby>を<ruby>出<rt>で</rt></ruby>てまっすぐです。<br>*(Đi bộ 5 phút có siêu thị Life. Ra cổng sau đi thẳng.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます!<br>*(Em hiểu rồi. Cảm ơn anh!)* |

---

## Tình huống 4 — Phòng 305 · 10:00, Lin Wei gõ cửa

*Đại đang xếp sách lên kệ thì có tiếng gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Lin Wei | (gõ cửa) ダイ、リンです。<br>*(Đại, Lin đây.)* |
| Đại | (mở cửa) リン!<ruby>同<rt>おな</rt></ruby>じ<ruby>階<rt>かい</rt></ruby>だったんだね!<br>*(Lin! Cùng tầng luôn à!)* |
| Lin Wei | はい、308<ruby>号室<rt>ごうしつ</rt></ruby>です。ラジェッシュは312。<ruby>偶然<rt>ぐうぜん</rt></ruby>ですね!<br>*(Vâng, phòng 308. Rajesh phòng 312. Tình cờ ghê!)* |
| Đại | <ruby>入<rt>はい</rt></ruby>って!まだ<ruby>片付<rt>かたづ</rt></ruby>いてないけど。<br>*(Vào đi! Phòng còn bừa lắm.)* |
| Lin Wei | お<ruby>邪魔<rt>じゃま</rt></ruby>します。わぁ、<ruby>9<rt>きゅう</rt></ruby><ruby>畳<rt>じょう</rt></ruby>?<ruby>広<rt>ひろ</rt></ruby>いね!<br>*(Xin lỗi làm phiền. Ồ, 9 chiếu á? Rộng nhỉ!)* |
| Đại | <ruby>前<rt>まえ</rt></ruby>の<ruby>語学学校<rt>ごがくがっこう</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>畳半<rt>じょうはん</rt></ruby>しかなかったから<ruby>感動<rt>かんどう</rt></ruby>している。<br>*(Ký túc trường tiếng cũ của tớ chỉ 4 chiếu rưỡi, nên tớ xúc động lắm.)* |
| Lin Wei | <ruby>午後<rt>ごご</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時<rt>じ</rt></ruby>、ニトリに<ruby>家具<rt>かぐ</rt></ruby>を<ruby>買<rt>か</rt></ruby>いに<ruby>行<rt>い</rt></ruby>くんだけど、<ruby>一緒<rt>いっしょ</rt></ruby>にどう?<br>*(Chiều 2 giờ tớ đi Nitori mua đồ. Đi cùng không?)* |
| Đại | いいね!<ruby>椅子<rt>いす</rt></ruby>とカーテンが<ruby>欲<rt>ほ</rt></ruby>しい。アイコも<ruby>誘<rt>さそ</rt></ruby>おう。<br>*(Hay! Tớ cần ghế với rèm. Rủ Aiko nữa nhé.)* |

---

## Tình huống 5 — Cửa hàng Nitori Toyonaka · 14:30, hỏi giá ghế

*Đại, Lin Wei, Aiko, Yamato và Rajesh đến Nitori. Aiko đẩy xe đi trước về khu ghế làm việc.*

| Vai | Lời thoại |
|---|---|
| Aiko | この<ruby>人間工学<rt>にんげんこうがく</rt></ruby>チェアいいと<ruby>思<rt>おも</rt></ruby>うよ!<br>*(Cái ghế công thái học này hay đó!)* |
| Đại | (xem giá) <ruby>7,990<rt>ななせんきゅうひゃくきゅうじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>か...ちょっと<ruby>高<rt>たか</rt></ruby>いな。<br>*(7,990 yên à... Hơi đắt nhỉ.)* |
| Aiko | でも、<ruby>長時間<rt>ちょうじかん</rt></ruby><ruby>座<rt>すわ</rt></ruby>るから<ruby>体<rt>からだ</rt></ruby>のために<ruby>大事<rt>だいじ</rt></ruby>だよ。<br>*(Nhưng mình ngồi lâu, vì cơ thể nên đầu tư là cần thiết.)* |
| Đại | すみません、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>いものはありますか?<br>*(Xin lỗi, có loại nào rẻ hơn chút không ạ?)* |
| Nhân viên Nitori | こちらの<ruby>4,990<rt>よんせんきゅうひゃくきゅうじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>のモデルもございます。<ruby>機能<rt>きのう</rt></ruby>は<ruby>少<rt>すく</rt></ruby>ないですが、<ruby>基本<rt>きほん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じです。<br>*(Có loại 4,990 yên. Ít chức năng hơn nhưng cơ bản giống nhau.)* |
| Đại | <ruby>背<rt>せ</rt></ruby>もたれは<ruby>調整<rt>ちょうせい</rt></ruby>できますか?<br>*(Lưng tựa có điều chỉnh được không ạ?)* |
| Nhân viên | はい、<ruby>角度<rt>かくど</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>と<ruby>高<rt>たか</rt></ruby>さ<ruby>調整<rt>ちょうせい</rt></ruby>はできます。<br>*(Vâng, điều chỉnh được góc và độ cao.)* |
| Đại | では、こちらの<ruby>4,990<rt>よんせんきゅうひゃくきゅうじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>のにします。<ruby>配送<rt>はいそう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Vậy cháu lấy cái 4,990 yên. Có giao hàng được không ạ?)* |
| Nhân viên | はい、<ruby>送料<rt>そうりょう</rt></ruby><ruby>550<rt>ごひゃくごじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>で<ruby>明日<rt>あした</rt></ruby>お<ruby>届<rt>とど</rt></ruby>けします。<br>*(Vâng, phí giao 550 yên, mai giao đến.)* |

---

## Tình huống 6 — Khu rèm Nitori · 15:00, Aiko tư vấn

| Vai | Lời thoại |
|---|---|
| Aiko | カーテンは<ruby>遮光<rt>しゃこう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>級<rt>きゅう</rt></ruby>がおすすめ。<ruby>朝<rt>あさ</rt></ruby><ruby>日<rt>ひ</rt></ruby><ruby>差<rt>さ</rt></ruby>すと<ruby>眠<rt>ねむ</rt></ruby>れないから。<br>*(Rèm nên chọn cản sáng cấp 1. Sáng nắng vào không ngủ được đâu.)* |
| Đại | <ruby>窓<rt>まど</rt></ruby>のサイズは<ruby>覚<rt>おぼ</rt></ruby>えてない...<br>*(Mình chưa nhớ kích cỡ cửa sổ...)* |
| Aiko | <ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>寮<rt>りょう</rt></ruby>サイズは<ruby>幅<rt>はば</rt></ruby><ruby>100<rt>ひゃく</rt></ruby>×<ruby>丈<rt>たけ</rt></ruby><ruby>178<rt>ひゃくななじゅうはち</rt></ruby>cmが<ruby>多<rt>おお</rt></ruby>いよ。<ruby>後<rt>あと</rt></ruby>で<ruby>合<rt>あ</rt></ruby>わなかったら<ruby>交換<rt>こうかん</rt></ruby>できるって<ruby>書<rt>か</rt></ruby>いてある。<br>*(Cỡ chuẩn ký túc thường là rộng 100, cao 178cm. Trên bảng ghi nếu không vừa có thể đổi.)* |
| Đại | じゃあ、それを<ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby>もらいます。Aikoは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>りになるね。<br>*(Vậy cháu lấy 2 tấm. Aiko đáng tin cậy thật.)* |
| Aiko | UI/UXは<ruby>暮<rt>く</rt></ruby>らしの<ruby>細部<rt>さいぶ</rt></ruby>に<ruby>宿<rt>やど</rt></ruby>るからね。<br>*(UI/UX nằm ở từng chi tiết cuộc sống mà.)* |
| Yamato | (đẩy xe đi qua) <ruby>俺<rt>おれ</rt></ruby>はマグカップとティッシュやで。シンプルや!<br>*(Tớ chỉ cốc với giấy ăn thôi. Đơn giản nè!)* |

---

## Tình huống 7 — Quầy thu ngân Nitori · 15:30, từ chối thẻ thành viên

| Vai | Lời thoại |
|---|---|
| Thu ngân | <ruby>合計<rt>ごうけい</rt></ruby><ruby>9,540<rt>きゅうせんごひゃくよんじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。メンバーズカードはお<ruby>持<rt>も</rt></ruby>ちですか?<br>*(Tổng 9,540 yên. Có thẻ thành viên không ạ?)* |
| Đại | いいえ、<ruby>持<rt>も</rt></ruby>っていません。<br>*(Không, cháu không có.)* |
| Thu ngân | <ruby>無料<rt>むりょう</rt></ruby>でお<ruby>作<rt>つく</rt></ruby>りできますが、いかがですか?<br>*(Làm thẻ miễn phí, anh có muốn không?)* |
| Đại | (ngập ngừng) すみません、<ruby>今日<rt>きょう</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby>がないので<ruby>次回<rt>じかい</rt></ruby>にします。<br>*(Xin lỗi, hôm nay cháu không có thời gian, để lần sau ạ.)* |
| Thu ngân | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>支払<rt>しはら</rt></ruby>いは<ruby>現金<rt>げんきん</rt></ruby>ですか、カードですか?<br>*(Vâng. Anh trả tiền mặt hay thẻ?)* |
| Đại | クレジットカードでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho cháu thanh toán thẻ tín dụng ạ.)* |
| Thu ngân | <ruby>一括<rt>いっかつ</rt></ruby>でよろしいですか?<br>*(Trả một lần được không ạ?)* |
| Đại | はい、<ruby>一括<rt>いっかつ</rt></ruby>で。<br>*(Vâng, một lần.)* |

---

## Tình huống 8 — Trên đường về dorm · 16:30, rủ ăn tối tại căn-tin

| Vai | Lời thoại |
|---|---|
| Đại | みんな、<ruby>夕食<rt>ゆうしょく</rt></ruby>はどうする?<br>*(Mọi người tối ăn gì?)* |
| Yamato | <ruby>寮<rt>りょう</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>定食<rt>ていしょく</rt></ruby>どう?<br>*(Cơm phần 500 yên ở căn-tin ký túc nha?)* |
| Aiko | いいね!<ruby>私<rt>わたし</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>にも<ruby>食堂<rt>しょくどう</rt></ruby>あるけど、<ruby>今日<rt>きょう</rt></ruby>はみんなと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べたい。<br>*(Hay đó! Ký túc nữ cũng có căn-tin nhưng nay mình muốn ăn cùng cả nhóm.)* |
| Lin Wei | <ruby>賛成<rt>さんせい</rt></ruby>!ラジェッシュは?<br>*(Đồng ý! Rajesh thì sao?)* |
| Rajesh | <ruby>僕<rt>ぼく</rt></ruby>はベジタリアンメニューがあれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Mình ăn được nếu có menu chay.)* |
| Đại | <ruby>寮<rt>りょう</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>にベジメニューはありますか?<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Căn-tin ký túc có menu chay không nhỉ? Xác nhận đi.)* |
| Yamato | <ruby>確<rt>たし</rt></ruby>か<ruby>野菜<rt>やさい</rt></ruby>カレーと<ruby>野菜炒<rt>やさいいた</rt></ruby>めがあったで。<br>*(Hình như có cà ri rau với rau xào nè.)* |
| Rajesh | <ruby>完璧<rt>かんぺき</rt></ruby>!<br>*(Hoàn hảo!)* |

---

## Tình huống 9 — Phòng 305 · 19:30, từ chối Yamato mượn sạc điện thoại

*Đại đang sắp lại bàn thì có tiếng gõ cửa nhỏ. Yamato thò đầu vào.*

| Vai | Lời thoại |
|---|---|
| Yamato | ダイ、<ruby>悪<rt>わる</rt></ruby>いんやけど、iPhoneの<ruby>充電器<rt>じゅうでんき</rt></ruby><ruby>貸<rt>か</rt></ruby>してくれへん?<br>*(Đại, ngại quá, cho tớ mượn sạc iPhone được không?)* |
| Đại | あ、ごめん、<ruby>僕<rt>ぼく</rt></ruby>のはUSB-Cタイプだけ。Lightningは<ruby>持<rt>も</rt></ruby>ってないんだ。<br>*(Ơ xin lỗi, tớ chỉ có loại USB-C. Lightning không có.)* |
| Yamato | あちゃー。じゃあリンに<ruby>聞<rt>き</rt></ruby>いてみるわ。<br>*(Tiếc ghê. Vậy tớ hỏi Lin xem.)* |
| Đại | リンもAndroidユーザーやで、たぶんUSB-Cやと<ruby>思<rt>おも</rt></ruby>うけど。<br>*(Lin cũng dùng Android, chắc cũng USB-C thôi.)* |
| Yamato | <ruby>共用<rt>きょうよう</rt></ruby>キッチンのコンセントの<ruby>横<rt>よこ</rt></ruby>に<ruby>誰<rt>だれ</rt></ruby>かの<ruby>充電器<rt>じゅうでんき</rt></ruby><ruby>置<rt>お</rt></ruby>いてあった<ruby>気<rt>き</rt></ruby>がする。<br>*(Hình như có người để sạc cạnh ổ điện ở bếp chung.)* |
| Đại | それは<ruby>勝手<rt>かって</rt></ruby>に<ruby>使<rt>つか</rt></ruby>わない<ruby>方<rt>かた</rt></ruby>がいいよ。<ruby>持<rt>も</rt></ruby>ち<ruby>主<rt>ぬし</rt></ruby>に<ruby>聞<rt>き</rt></ruby>こう。<br>*(Đừng tự ý dùng. Hỏi chủ trước đi.)* |
| Yamato | せやな、<ruby>反省<rt>はんせい</rt></ruby>。じゃあコンビニ<ruby>行<rt>い</rt></ruby>って<ruby>買<rt>か</rt></ruby>うわ。<ruby>悪<rt>わる</rt></ruby>かったな!<br>*(Phải đó, sai rồi. Vậy tớ ra konbini mua. Xin lỗi nhé!)* |

---

## Tình huống 10 — Phòng 305 · 20:00, mời cả nhóm sang chơi

| Vai | Lời thoại |
|---|---|
| Đại | (gửi tin nhắn LINE nhóm) みんな、もし<ruby>時間<rt>じかん</rt></ruby>あれば、<ruby>今<rt>いま</rt></ruby><ruby>僕<rt>ぼく</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>に<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>ない?<ruby>緑茶<rt>りょくちゃ</rt></ruby>とベトナムのお<ruby>菓子<rt>かし</rt></ruby>があるよ。<br>*(Mọi người ơi, có rảnh không, qua phòng tớ chơi đi. Có trà xanh và bánh kẹo Việt Nam.)* |
| Aiko | (reply) <ruby>行<rt>い</rt></ruby>く!<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>後<rt>ご</rt></ruby>に。<br>*(Mình qua! 5 phút nữa.)* |
| Lin Wei | (reply) ぼくも!<br>*(Tớ nữa!)* |
| Rajesh | (reply) On my way!<br>*(Đang đi đây!)* |
| Yamato | (reply, 5 phút sau gõ cửa) お<ruby>邪魔<rt>じゃま</rt></ruby>します!<br>*(Xin lỗi làm phiền!)* |
| Đại | みんなどうぞ。<ruby>椅子<rt>いす</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つしかないから、<ruby>床<rt>ゆか</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>ってくれる?<br>*(Mời cả nhà. Tớ chỉ có 3 ghế, mọi người ngồi sàn được không?)* |
| Aiko | <ruby>畳<rt>たたみ</rt></ruby>じゃなくて<ruby>床<rt>ゆか</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Sàn không phải chiếu, ngồi ok không?)* |
| Đại | カーペット<ruby>敷<rt>し</rt></ruby>いてあるよ。これがベトナムの「バインピア」、<ruby>食<rt>た</rt></ruby>べてみて。<br>*(Tớ trải thảm rồi. Đây là bánh pía Việt Nam, mọi người thử nhé.)* |
| Lin Wei | <ruby>甘<rt>あま</rt></ruby>くておいしい!<br>*(Ngọt mà ngon ghê!)* |

---

## Tình huống 11 — Phòng 305 · 21:00, hỏi Yamato về lab Inoue

| Vai | Lời thoại |
|---|---|
| Đại | ヤマト、<ruby>聞<rt>き</rt></ruby>きたいんだけど、AIラボで<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>研究室<rt>けんきゅうしつ</rt></ruby>はどこ?<br>*(Yamato ơi, hỏi tí, lab AI nào nổi tiếng nhất khoa mình?)* |
| Yamato | <ruby>井上<rt>いのうえ</rt></ruby>ラボや。NLP・LLMで<ruby>日本<rt>にほん</rt></ruby><ruby>有数<rt>ゆうすう</rt></ruby>やで。<br>*(Lab Inoue đó. NLP với LLM thuộc top Nhật luôn.)* |
| Đại | <ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>配属<rt>はいぞく</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>から?<br>*(Vào lab từ năm mấy?)* |
| Yamato | <ruby>3<rt>さん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>の<ruby>後期<rt>こうき</rt></ruby>からや。それまでは<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>。<br>*(Kỳ 2 năm 3. Trước đó tập trung lên lớp.)* |
| Đại | <ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>のうちにラボ<ruby>見学<rt>けんがく</rt></ruby>できる?<br>*(Năm 1 đến tham quan lab được không?)* |
| Yamato | できるで!<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>はオープンや。メール<ruby>送<rt>おく</rt></ruby>れば<ruby>歓迎<rt>かんげい</rt></ruby>してくれるはず。<br>*(Được! Thầy Inoue cởi mở lắm. Gửi mail thì thầy đón.)* |
| Đại | <ruby>来月<rt>らいげつ</rt></ruby>あたりにメールしてみよう。<br>*(Tháng sau tớ thử gửi mail.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>はHCIラボに<ruby>興味<rt>きょうみ</rt></ruby>ある。<ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のラボ。<br>*(Mình thích lab HCI. Lab thầy Watanabe.)* |
| Lin Wei | みんな<ruby>方向<rt>ほうこう</rt></ruby><ruby>性<rt>せい</rt></ruby><ruby>明<rt>あき</rt></ruby>らかでいいね。<ruby>僕<rt>ぼく</rt></ruby>はまだ<ruby>迷<rt>まよ</rt></ruby>っている。<br>*(Mọi người đã có hướng rõ ràng hay ghê. Tớ vẫn đang phân vân.)* |

---

## Tình huống 12 — Phòng 305 · 22:00, video call về Hà Nội với bố mẹ và Mai

> Cảnh tiếng Việt — Đại bật video gọi 3 cuộc liên tiếp: Mai → bố mẹ. Khoe phòng mới và ký túc.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, em xem phòng anh được chưa? Anh xoay camera đi! |
| Đại | (tiếng Việt) Đây, 9 chiếu nhé em — gấp đôi ký túc trường tiếng. Bàn, ghế công thái học mới mua hôm nay 4,990 yên. Có rèm cản sáng cấp 1 Aiko tư vấn nữa. |
| Mai | (tiếng Việt) Anh tự lập đỉnh quá! Tiền nhà có đắt không anh? |
| Đại | (tiếng Việt) 38 nghìn yên 1 tháng, bao gồm điện nước gas Wi-Fi luôn. So với chỗ Tony trước rẻ hơn nhiều. |
| Mẹ | (tiếng Việt, ghé vào video) Đại ơi, bố mẹ thấy con thu xếp gọn gàng quá. Bố mẹ yên tâm rồi. |
| Đại | (tiếng Việt) Mẹ ơi, học phí Osaka quốc lập 535 nghìn yên 1 năm, được giảm 50% vì gia đình thu nhập thấp. Bố mẹ đỡ gánh nặng nhé. |
| Bố | (tiếng Việt) Tốt quá con. Con nhớ phải giữ sức khoẻ, đừng thức khuya quá. |
| Đại | (tiếng Việt) Vâng bố. À hôm nay con quen được 4 bạn cùng khoa: Yamato người Nhật, Aiko cũng Nhật, Lin Wei Trung Quốc, Rajesh Ấn Độ. Bốn nước cùng tầng dorm. Mai năm 3 con định xin vào lab Inoue làm AI. |
| Mai | (tiếng Việt) Anh có kế hoạch hết rồi! Em tự hào về anh lắm. Còn 9 tháng nữa thôi, em sang Nhật cưới anh. |
| Đại | (tiếng Việt) Anh đếm từng ngày em. Bố mẹ, Mai ngủ ngon nhé. |

---

## Đọng lại chương 2

Ngày 5/4/2026 — Đại dọn vào 国際交流会館 phòng 305. Cậu học **mẫu câu check-in** 「<ruby>本日<rt>ほんじつ</rt></ruby><ruby>入居<rt>にゅうきょ</rt></ruby>するグエンです」 và 「<ruby>家賃<rt>やちん</rt></ruby>は<ruby>一<rt>いっ</rt></ruby><ruby>か月<rt>かげつ</rt></ruby>いくらですか?」, **hỏi nội quy** 「<ruby>共用<rt>きょうよう</rt></ruby>キッチンの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか」 và **ghi nhớ lịch đổ rác** 燃えるゴミは月水金. Tại Nitori cậu **hỏi loại rẻ hơn** 「もう<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>いものはありますか?」 và **đặt giao hàng** 「<ruby>配送<rt>はいそう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いできますか?」. Cậu **lịch sự từ chối** thẻ Nitori 「<ruby>今日<rt>きょう</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby>がないので<ruby>次回<rt>じかい</rt></ruby>にします」 và lời mượn sạc của Yamato. Tối cậu **mời bạn sang phòng** 「<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>ない?」 và gọi video về Hà Nội — báo Mai, bố mẹ đã ổn định.

> Từ vựng & mẫu câu chương này: <ruby>国際交流会館<rt>こくさいこうりゅうかいかん</rt></ruby>・<ruby>入居<rt>にゅうきょ</rt></ruby>・<ruby>家賃<rt>やちん</rt></ruby>・<ruby>振込<rt>ふりこみ</rt></ruby>・<ruby>共用<rt>きょうよう</rt></ruby>キッチン・<ruby>洗濯機<rt>せんたくき</rt></ruby>・<ruby>燃<rt>も</rt></ruby>えるゴミ・<ruby>分別表<rt>ぶんべつひょう</rt></ruby>・<ruby>9<rt>きゅう</rt></ruby><ruby>畳<rt>じょう</rt></ruby>・<ruby>遮光<rt>しゃこう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>級<rt>きゅう</rt></ruby>・<ruby>人間工学<rt>にんげんこうがく</rt></ruby>チェア・<ruby>配送<rt>はいそう</rt></ruby>・<ruby>一括<rt>いっかつ</rt></ruby>・<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>配属<rt>はいぞく</rt></ruby>・<ruby>井上<rt>いのうえ</rt></ruby>ラボ・お<ruby>邪魔<rt>じゃま</rt></ruby>します・もう<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>いものはありますか・<ruby>次回<rt>じかい</rt></ruby>にします・<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>ない

## Bí quyết chương

- **「もう<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>いものはありますか?」** là câu cứu nguy khi đi mua đồ ở Nitori/IKEA. Nhân viên Nhật cực kỳ thân thiện sẽ tư vấn loại rẻ hơn cho du học sinh.
- **Khi từ chối lịch sự**: dùng 「<ruby>次回<rt>じかい</rt></ruby>にします」 hoặc 「<ruby>持<rt>も</rt></ruby>っていません」 + xin lỗi. Không nói thẳng "không cần".
- **Khi bạn Nhật nhờ vả mà mình không có/không muốn**: thật thà nói 「ごめん、〜は<ruby>持<rt>も</rt></ruby>っていないんだ」 — Yamato không hề phật ý.
- **Mời sang phòng** bằng 「<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>ない?」 (suồng sã) hoặc 「お<ruby>越<rt>こ</rt></ruby>しください」 (lịch sự với sempai/sensei).
- **Cảnh gọi điện 3 chiều Mai + bố mẹ** ôn lại 6 từ vựng tiếng Nhật trong ngày bằng tiếng Việt — kỹ thuật "code-switch ôn từ".

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 寮生活 | りょうせいかつ | KÝ SINH HOẠT | đời sống ký túc |
| 新友達 | しんともだち | TÂN HỮU ĐẠT | bạn mới |
| 国際交流会館 | こくさいこうりゅうかいかん | QUỐC TẾ GIAO LƯU HỘI QUÁN | nhà giao lưu quốc tế |
| 本日 | ほんじつ | BẢN NHẬT | hôm nay |
| 入居 | にゅうきょ | NHẬP CƯ | dọn vào ở |
| 号室 | ごうしつ | HIỆU THẤT | số phòng |
| 身分証 | みぶんしょう | THÂN PHẬN CHỨNG | giấy tờ tuỳ thân |
| 在留 | ざいりゅう | TẠI LƯU | cư trú |
| 合格 | ごうかく | HỢP CÁCH | đậu, trúng tuyển |
| 通知書 | つうちしょ | THÔNG TRI THƯ | giấy báo |
| 鍵 | かぎ | KIỆN | chìa khoá |
| 家賃 | やちん | GIA NHẪM | tiền nhà |
| 月末 | げつまつ | NGUYỆT MẠT | cuối tháng |
| 銀行 | ぎんこう | NGÂN HÀNG | ngân hàng |
| 振込 | ふりこみ | CHẤN VÀO | chuyển khoản |
| 水道 | すいどう | THỦY ĐẠO | nước máy |
| 電気 | でんき | ĐIỆN KHÍ | điện |
| 共用 | きょうよう | CỘNG DỤNG | dùng chung |
| 掃除 | そうじ | TẢO TRỪ | dọn dẹp |
| 食器 | しょっき | THỰC KHÍ | bát đĩa |
| 放置 | ほうち | PHÓNG TRÍ | để mặc |
| 禁止 | きんし | CẤM CHỈ | cấm |
| 洗濯機 | せんたくき | TẨY TRẠCH CƠ | máy giặt |
| 使用 | しよう | SỬ DỤNG | sử dụng |
| 燃 | もえる | NHIÊN | cháy |
| 分別表 | ぶんべつひょう | PHÂN BIỆT BIỂU | bảng phân loại |
| 修士 | しゅうし | TU SỸ | thạc sĩ |
| 気軽 | きがる | KHÍ KHINH | thoải mái |
| 食材 | しょくざい | THỰC TÀI | nguyên liệu nấu ăn |
| 裏門 | うらもん | LÝ MÔN | cổng sau |
| 偶然 | ぐうぜん | NGẪU NHIÊN | tình cờ |
| 邪魔 | じゃま | TÀ MA | làm phiền |
| 畳 | じょう | ĐIỆP | chiếu, tatami |
| 感動 | かんどう | CẢM ĐỘNG | xúc động |
| 家具 | かぐ | GIA CỤ | đồ nội thất |
| 椅子 | いす | Y TỬ | ghế |
| 人間工学 | にんげんこうがく | NHÂN GIAN CÔNG HỌC | công thái học |
| 長時間 | ちょうじかん | TRƯỜNG THỜI GIAN | thời gian dài |
| 機能 | きのう | CƠ NĂNG | chức năng |
| 背 | せ | BỐI | lưng |
| 角度 | かくど | GIÁC ĐỘ | góc độ |
| 調整 | ちょうせい | ĐIỀU CHỈNH | điều chỉnh |
| 配送 | はいそう | PHỐI TỐNG | giao hàng |
| 送料 | そうりょう | TỐNG LIỆU | phí giao |
| 遮光 | しゃこう | GIÁ QUANG | cản sáng |
| 標準 | ひょうじゅん | TIÊU CHUẨN | tiêu chuẩn |
| 幅 | はば | PHÚC | bề rộng |
| 丈 | たけ | TRƯỢNG | chiều dài |
| 交換 | こうかん | GIAO HOÁN | đổi |
| 合計 | ごうけい | HỢP KẾ | tổng |
| 無料 | むりょう | VÔ LIỆU | miễn phí |
| 次回 | じかい | THỨ HỒI | lần sau |
| 一括 | いっかつ | NHẤT QUÁT | một lần |
| 食堂 | しょくどう | THỰC ĐƯỜNG | nhà ăn |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 野菜 | やさい | DÃ THÁI | rau |
| 完璧 | かんぺき | HOÀN BÍCH | hoàn hảo |
| 充電器 | じゅうでんき | SUNG ĐIỆN KHÍ | sạc |
| 勝手 | かって | THẮNG THỦ | tự ý |
| 反省 | はんせい | PHẢN TỈNH | tự kiểm điểm |
| 緑茶 | りょくちゃ | LỤC TRÀ | trà xanh |
| 菓子 | かし | QUẢ TỬ | bánh kẹo |
| 床 | ゆか | SÀNG | sàn |
| 研究室 | けんきゅうしつ | NGHIÊN CỨU THẤT | phòng nghiên cứu, lab |
| 配属 | はいぞく | PHỐI THUỘC | phân bổ, vào lab |
| 有数 | ゆうすう | HỮU SỐ | hàng đầu |
| 後期 | こうき | HẬU KỲ | kỳ sau |
| 中心 | ちゅうしん | TRUNG TÂM | trung tâm |
| 歓迎 | かんげい | HOAN NGHÊNH | hoan nghênh |
| 方向性 | ほうこうせい | PHƯƠNG HƯỚNG TÍNH | định hướng |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000003, 800000021, NULL, 'markdown_book', 'T3. Buổi học Python đầu tiên (プログラミング演習 I)', '# Sách sinh viên Đại học Osaka · T3. Buổi học Python đầu tiên (プログラミング演習 I)

> **Mục tiêu nhân vật:** Đại 21 tuổi, ngày 7/4/2026 — buổi đầu lớp プログラミング演習 I. Học các mẫu hội thoại tiếng Nhật trong phòng máy ĐH: (1) xin phép sensei dùng laptop riêng, (2) hỏi yêu cầu môi trường (Python phiên bản, IDE), (3) báo cáo lỗi/kết quả chạy code, (4) hỏi sensei khi không hiểu thuật ngữ kỹ thuật JP, (5) trao đổi với bạn cùng bàn về cách viết code, (6) chào hỏi senpai và hỏi về lab/AtCoder.

---

## Bối cảnh

Thứ 3 ngày 7/4/2026 chiều, buổi đầu lớp プログラミング演習 I tại phòng máy B棟 (30 iMac mới). Sensei: 渡辺 (Watanabe, 45 tuổi, Lab HCI). Trợ giảng: 山田 (Yamada-senpai, năm 4, AtCoder 水色, lab Inoue). 80 SV chia 4 lớp 20 người. Đại + Yamato + Aiko cùng lớp A. Lin Wei + Rajesh đã giỏi → mentor được đổi lên lớp upper. Chương này tập trung **các mẫu câu xin phép, báo cáo kết quả code, hỏi thuật ngữ, trao đổi với bạn cùng bàn**.

---

## Tình huống 1 — Cửa phòng máy B棟 · 12:55, xin phép dùng laptop riêng

*Watanabe-sensei đứng cửa, gật đầu chào từng SV vào.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・ダイです。<br>*(Thầy Watanabe, em chào thầy. Em là Nguyễn Văn Đại.)* |
| Watanabe | はい、グエンさん。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em Đại. Mong em hợp tác.)* |
| Đại | あの、<ruby>持参<rt>じさん</rt></ruby>のMacBookを<ruby>使<rt>つか</rt></ruby>ってもよろしいですか?<br>*(Thưa thầy, em dùng MacBook mang theo được không ạ?)* |
| Watanabe | はい、<ruby>環境<rt>かんきょう</rt></ruby>は<ruby>自由<rt>じゆう</rt></ruby>です。ただし、Python<ruby>3<rt>さん</rt></ruby>.<ruby>12<rt>じゅうに</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>とVSCodeを<ruby>推奨<rt>すいしょう</rt></ruby>します。<br>*(Được, môi trường tự chọn. Tuy nhiên thầy khuyến nghị Python 3.12 trở lên và VSCode.)* |
| Đại | <ruby>既<rt>すで</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>しました。Python<ruby>3<rt>さん</rt></ruby>.<ruby>12<rt>じゅうに</rt></ruby>とVSCodeが<ruby>入<rt>はい</rt></ruby>っています。<br>*(Em đã chuẩn bị rồi ạ. Đã cài Python 3.12 và VSCode.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしい。では<ruby>席<rt>せき</rt></ruby>に<ruby>着<rt>つ</rt></ruby>いてください。<br>*(Tuyệt vời. Em ngồi vào chỗ đi.)* |

---

## Tình huống 2 — Trong phòng máy · 13:00, Watanabe intro Python

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>はPython<ruby>入門<rt>にゅうもん</rt></ruby>です。Pythonは<ruby>1991<rt>せんきゅうひゃくきゅうじゅういち</rt></ruby><ruby>年<rt>ねん</rt></ruby>にGuido van Rossum<ruby>氏<rt>し</rt></ruby>が<ruby>作<rt>つく</rt></ruby>りました。<br>*(Hôm nay nhập môn Python. Python do ông Guido van Rossum tạo năm 1991.)* |
| Watanabe | <ruby>特徴<rt>とくちょう</rt></ruby>は<ruby>4<rt>よっ</rt></ruby>つあります。<ruby>動的<rt>どうてき</rt></ruby><ruby>型付<rt>かたづ</rt></ruby>け、<ruby>解釈<rt>かいしゃく</rt></ruby><ruby>型<rt>がた</rt></ruby>、インデント<ruby>必須<rt>ひっす</rt></ruby>、AIや<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>の<ruby>主流<rt>しゅりゅう</rt></ruby>です。<br>*(Có 4 đặc trưng: định kiểu động, thông dịch, bắt buộc thụt đầu dòng, chủ đạo AI/ML.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、すみません。<br>*(Thưa thầy.)* |
| Watanabe | はい、どうぞ。<br>*(Em hỏi đi.)* |
| Đại | 「<ruby>動的<rt>どうてき</rt></ruby><ruby>型付<rt>かたづ</rt></ruby>け」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Thưa thầy, "động kiểu phó" — dynamic typing — nghĩa là gì ạ?)* |
| Watanabe | <ruby>良<rt>い</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>変数<rt>へんすう</rt></ruby>の<ruby>型<rt>かた</rt></ruby>を<ruby>事前<rt>じぜん</rt></ruby>に<ruby>宣言<rt>せんげん</rt></ruby>しなくていいということです。`x = 5` と<ruby>書<rt>か</rt></ruby>けば、xは<ruby>自動的<rt>じどうてき</rt></ruby>にintになります。<br>*(Câu hỏi hay. Là không cần khai báo kiểu biến trước. Cứ viết `x = 5`, x tự thành int.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。CやJavaと<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Em hiểu rồi. Khác C và Java thầy nhỉ.)* |

---

## Tình huống 3 — Bàn máy · 13:15, Hello World và báo cáo kết quả

| Vai | Lời thoại |
|---|---|
| Watanabe | では、<ruby>新<rt>あたら</rt></ruby>しいファイル `hello.py` を<ruby>作成<rt>さくせい</rt></ruby>して、`print("Hello, World!")` と<ruby>書<rt>か</rt></ruby>いてください。<br>*(Vậy hãy tạo file hello.py mới, viết print("Hello, World!").)* |
| Đại | (gõ vào MacBook, chạy `python hello.py`) <ruby>先生<rt>せんせい</rt></ruby>、<ruby>実行<rt>じっこう</rt></ruby>できました。<br>*(Thưa thầy, em chạy được rồi.)* |
| Watanabe | <ruby>出力<rt>しゅつりょく</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしたか?<br>*(Kết quả là gì?)* |
| Đại | `Hello, World!` が<ruby>表示<rt>ひょうじ</rt></ruby>されました。<br>*(Hiện ra "Hello, World!" ạ.)* |
| Watanabe | おめでとう!プログラマー<ruby>誕生<rt>たんじょう</rt></ruby>ですね。<br>*(Chúc mừng! Một lập trình viên vừa ra đời.)* |
| Aiko | (cạnh bên, mừng rỡ) <ruby>私<rt>わたし</rt></ruby>も<ruby>動<rt>うご</rt></ruby>いた!<ruby>初<rt>はじ</rt></ruby>めて<ruby>動<rt>うご</rt></ruby>いたよ!<br>*(Mình cũng chạy được! Lần đầu chạy được luôn!)* |
| Đại | おめでとう、Aiko!<br>*(Chúc mừng Aiko nhé!)* |

---

## Tình huống 4 — Bàn máy · 13:30, gặp lỗi cú pháp đầu tiên

*Aiko đột nhiên cau mày. Terminal đỏ rực dòng lỗi.*

| Vai | Lời thoại |
|---|---|
| Aiko | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>助<rt>たす</rt></ruby>けて!エラーが<ruby>出<rt>で</rt></ruby>た。<br>*(Đại ơi cứu! Bị lỗi!)* |
| Đại | (nhìn màn hình) どんなエラー?<br>*(Lỗi gì?)* |
| Aiko | `SyntaxError: invalid syntax` って。<br>*(Báo "SyntaxError: invalid syntax".)* |
| Đại | あ、ここ。`if score >= 90` の<ruby>後<rt>あと</rt></ruby>のコロンが<ruby>抜<rt>ぬ</rt></ruby>けているよ。<br>*(À, đây này. Thiếu dấu hai chấm sau `if score >= 90`.)* |
| Aiko | あー、なるほど!Pythonは<ruby>厳<rt>きび</rt></ruby>しいね。<br>*(À ra vậy! Python khắt khe ghê.)* |
| Đại | <ruby>最初<rt>さいしょ</rt></ruby>はみんなここでつまずくよ。コロンとインデントが<ruby>命<rt>いのち</rt></ruby>。<br>*(Ai mới học cũng vấp chỗ này thôi. Dấu hai chấm và thụt đầu dòng là mạng sống.)* |
| Aiko | <ruby>直<rt>なお</rt></ruby>った!ありがとう、ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>頼<rt>たよ</rt></ruby>りになる。<br>*(Sửa được rồi! Cảm ơn Đại, đáng tin cậy ghê.)* |

---

## Tình huống 5 — Bàn máy · 13:50, Yamato show off ternary

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>次<rt>つぎ</rt></ruby>はif/elif/elseの<ruby>条件分岐<rt>じょうけんぶんき</rt></ruby>です。<ruby>成績<rt>せいせき</rt></ruby><ruby>判定<rt>はんてい</rt></ruby>のプログラムを<ruby>書<rt>か</rt></ruby>いてみましょう。<br>*(Tiếp theo là rẽ nhánh if/elif/else. Hãy thử viết chương trình chấm điểm.)* |
| Yamato | (thì thầm với Đại) <ruby>俺<rt>おれ</rt></ruby><ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>のチェーンで<ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>でやれるで。<br>*(Tớ viết chuỗi toán tử ba ngôi 1 dòng được nè.)* |
| Đại | <ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>?<br>*(Toán tử ba ngôi?)* |
| Yamato | (chỉ màn hình) `grade = "A" if s >= 90 else "B" if s >= 80 else "C" if s >= 70 else "F"` や。<br>*(`grade = "A" if s >= 90 else "B" if s >= 80 else "C" if s >= 70 else "F"` nè.)* |
| Đại | (ngạc nhiên) <ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>で<ruby>4<rt>よっ</rt></ruby>つの<ruby>条件<rt>じょうけん</rt></ruby>!<br>*(1 dòng 4 điều kiện!)* |
| Watanabe | (nghe được, bước tới) <ruby>田中<rt>たなか</rt></ruby><ruby>君<rt>くん</rt></ruby>、<ruby>面白<rt>おもしろ</rt></ruby>いですね。でも、<ruby>初心者<rt>しょしんしゃ</rt></ruby>には<ruby>読<rt>よ</rt></ruby>みにくいので、まずはif/elif/elseで<ruby>書<rt>か</rt></ruby>く<ruby>習慣<rt>しゅうかん</rt></ruby>をつけてください。<br>*(Hay đấy, Tanaka. Nhưng người mới khó đọc, hãy tập viết bằng if/elif/else trước đã.)* |
| Yamato | はい、<ruby>反省<rt>はんせい</rt></ruby>します。<br>*(Vâng, em xin rút kinh nghiệm.)* |
| Đại | (thì thầm với Yamato) <ruby>後<rt>あと</rt></ruby>で<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby><ruby>教<rt>おし</rt></ruby>えて。<br>*(Lát chỉ tớ toán tử ba ngôi nhé.)* |

---

## Tình huống 6 — Bàn máy · 14:15, hỏi sensei về list comprehension

*Watanabe vừa giới thiệu vòng for. Yamato giơ tay.*

| Vai | Lời thoại |
|---|---|
| Yamato | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Thưa thầy, em hỏi được không ạ?)* |
| Watanabe | どうぞ。<br>*(Em hỏi đi.)* |
| Yamato | リスト<ruby>内包表記<rt>ないほうひょうき</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってもいいですか?`[x**2 for x in range(10)]` のような<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>です。<br>*(Em dùng list comprehension được không ạ? Cách viết kiểu `[x**2 for x in range(10)]`.)* |
| Watanabe | はい、Pythonらしい<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>です。ただし、<ruby>今日<rt>きょう</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>では<ruby>普通<rt>ふつう</rt></ruby>のfor<ruby>文<rt>ぶん</rt></ruby>で<ruby>書<rt>か</rt></ruby>いてください。<ruby>基本<rt>きほん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に。<br>*(Vâng, cách viết kiểu Python đó. Tuy nhiên bài hôm nay hãy viết for thường. Cơ bản là quan trọng.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、リスト<ruby>内包表記<rt>ないほうひょうき</rt></ruby>はいつ<ruby>習<rt>なら</rt></ruby>いますか?<br>*(Thưa thầy, khi nào lớp mình học list comprehension ạ?)* |
| Watanabe | <ruby>第<rt>だい</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げます。それまでは<ruby>各自<rt>かくじ</rt></ruby><ruby>自習<rt>じしゅう</rt></ruby>でもOKです。<br>*(Buổi 5 sẽ học. Trước đó các em tự học cũng OK.)* |
| Đại | ありがとうございます!<br>*(Cảm ơn thầy ạ!)* |

---

## Tình huống 7 — Bàn máy · 14:30, hỏi lại khi sensei nói nhanh

| Vai | Lời thoại |
|---|---|
| Watanabe | では、<ruby>次<rt>つぎ</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>です。<ruby>1<rt>いち</rt></ruby>から<ruby>100<rt>ひゃく</rt></ruby>までの<ruby>偶数<rt>ぐうすう</rt></ruby>の<ruby>合計<rt>ごうけい</rt></ruby>を<ruby>求<rt>もと</rt></ruby>めるプログラムを<ruby>書<rt>か</rt></ruby>いてください。<br>*(Tiếp, bài tập. Viết chương trình tính tổng số chẵn từ 1 đến 100.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thưa thầy, xin lỗi, nói lại giúp em.)* |
| Watanabe | はい、ゆっくり<ruby>言<rt>い</rt></ruby>いますね。<ruby>1<rt>いち</rt></ruby>から<ruby>100<rt>ひゃく</rt></ruby>まで。<ruby>偶数<rt>ぐうすう</rt></ruby>だけ。<ruby>合計<rt>ごうけい</rt></ruby>を<ruby>求<rt>もと</rt></ruby>める。<br>*(Vâng, thầy nói chậm nhé. Từ 1 đến 100. Chỉ số chẵn. Tính tổng.)* |
| Đại | <ruby>偶数<rt>ぐうすう</rt></ruby>というのは、<ruby>2<rt>に</rt></ruby>で<ruby>割<rt>わ</rt></ruby>り<ruby>切<rt>き</rt></ruby>れる<ruby>数<rt>かず</rt></ruby>ですね?<br>*(Số chẵn tức là số chia hết cho 2 đúng không thầy?)* |
| Watanabe | その<ruby>通<rt>とお</rt></ruby>りです。`x % 2 == 0` で<ruby>判定<rt>はんてい</rt></ruby>できます。<br>*(Chính xác. Dùng `x % 2 == 0` để kiểm tra.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Em hiểu rồi. Em làm thử.)* |

---

## Tình huống 8 — Bàn máy · 14:45, báo kết quả bài tập với sensei

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、できました。<ruby>結果<rt>けっか</rt></ruby>は<ruby>2550<rt>にせんごひゃくごじゅう</rt></ruby>になりました。<br>*(Thưa thầy, em xong rồi. Kết quả là 2550.)* |
| Watanabe | <ruby>正解<rt>せいかい</rt></ruby>です。コードを<ruby>見<rt>み</rt></ruby>せてください。<br>*(Đúng. Cho thầy xem code.)* |
| Đại | (xoay màn hình)<br>```python<br>total = 0<br>for x in range(1, 101):<br>    if x % 2 == 0:<br>        total += x<br>print(total)<br>```<br> |
| Watanabe | きれいに<ruby>書<rt>か</rt></ruby>けていますね。<ruby>変数名<rt>へんすうめい</rt></ruby>の `total` も<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(Viết gọn gàng. Tên biến `total` cũng dễ hiểu.)* |
| Đại | ありがとうございます。<ruby>別<rt>べつ</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>もありますか?<br>*(Cảm ơn thầy. Có cách viết khác không ạ?)* |
| Watanabe | `sum(range(2, 101, 2))` で<ruby>一行<rt>いちぎょう</rt></ruby>でも<ruby>書<rt>か</rt></ruby>けます。<ruby>後<rt>あと</rt></ruby>で<ruby>試<rt>ため</rt></ruby>してみてください。<br>*(Có thể viết một dòng `sum(range(2, 101, 2))`. Lát thử nhé.)* |
| Đại | やってみます!<br>*(Em thử ngay!)* |

---

## Tình huống 9 — Bàn máy · 14:50, Yamada-senpai cameo

*Một anh tóc dài đeo kính, áo lab trắng bước vào, vai khoác balo.*

| Vai | Lời thoại |
|---|---|
| Yamada | お<ruby>疲<rt>つか</rt></ruby>れさまです!TA<ruby>担当<rt>たんとう</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>です。<br>*(Chào các em! Anh là Yamada, trợ giảng.)* |
| Đại | こんにちは、<ruby>山田<rt>やまだ</rt></ruby>さん。<ruby>初<rt>はじ</rt></ruby>めまして、グエンです。<br>*(Em chào anh Yamada. Rất vui được gặp anh, em là Nguyễn.)* |
| Yamada | グエン<ruby>君<rt>くん</rt></ruby>、<ruby>留学生<rt>りゅうがくせい</rt></ruby>?<br>*(Đại là du học sinh à?)* |
| Đại | はい、ベトナムからです。<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>語学学校<rt>ごがくがっこう</rt></ruby>を<ruby>経<rt>へ</rt></ruby>てきました。N<ruby>2<rt>に</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>しています。<br>*(Vâng, từ Việt Nam. Em qua 2 năm trường tiếng, đã đậu N2.)* |
| Yamada | すごいやん!<ruby>俺<rt>おれ</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby>ラボでNLPやっとる。AtCoderは<ruby>水色<rt>みずいろ</rt></ruby>や。<br>*(Giỏi đó! Anh năm 4, ở lab Inoue làm NLP. AtCoder rating xanh nhạt.)* |
| Đại | <ruby>井上<rt>いのうえ</rt></ruby>ラボ!<ruby>実<rt>じつ</rt></ruby>は<ruby>興味<rt>きょうみ</rt></ruby>があって、<ruby>見学<rt>けんがく</rt></ruby>できますか?<br>*(Lab Inoue! Thật ra em quan tâm, tham quan được không anh?)* |
| Yamada | もちろん!<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby>にゼミがあるで。<ruby>聴講<rt>ちょうこう</rt></ruby>OKや。<br>*(Tất nhiên! Thứ Sáu tuần sau 3h chiều có seminar. Đến nghe được nè.)* |
| Đại | ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください。<ruby>事前<rt>じぜん</rt></ruby>にメール<ruby>送<rt>おく</rt></ruby>ります。<br>*(Em xin được tham gia ạ. Em sẽ gửi mail trước.)* |
| Yamada | OK!<ruby>研究室<rt>けんきゅうしつ</rt></ruby>はC<ruby>棟<rt>とう</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby>や。<br>*(OK! Lab ở toà C tầng 4.)* |

---

## Tình huống 10 — Bàn máy · 14:55, hỏi senpai về AtCoder

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、AtCoderのことも<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Anh Yamada, em hỏi thêm về AtCoder được không?)* |
| Yamada | どうぞどうぞ。<br>*(Cứ hỏi đi.)* |
| Đại | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>茶色<rt>ちゃいろ</rt></ruby>レートにするのは<ruby>無理<rt>むり</rt></ruby>がありますか?<br>*(Mục tiêu năm 1 lên rating nâu có quá sức không anh?)* |
| Yamada | <ruby>毎週<rt>まいしゅう</rt></ruby>ABC<ruby>参加<rt>さんか</rt></ruby>すれば<ruby>余裕<rt>よゆう</rt></ruby>や。<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>200<rt>にひゃく</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>解<rt>と</rt></ruby>けば<ruby>茶色<rt>ちゃいろ</rt></ruby>は<ruby>確実<rt>かくじつ</rt></ruby>や。<br>*(Tuần nào cũng tham gia ABC là dư sức. Giải 200 bài cũ là chắc cú nâu.)* |
| Đại | <ruby>200<rt>にひゃく</rt></ruby><ruby>問<rt>もん</rt></ruby>!<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(200 bài! Em cố gắng ạ.)* |
| Yamato | (chen vào) <ruby>俺<rt>おれ</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>ずつやろうや。<br>*(Cùng tớ mỗi ngày 3 bài đi.)* |
| Yamada | ええコンビやな!<ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>×<ruby>3<rt>さん</rt></ruby><ruby>か月<rt>かげつ</rt></ruby>で<ruby>270<rt>にひゃくななじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>や。<br>*(Cặp đôi hay đó! Mỗi ngày 3 bài × 3 tháng = 270 bài.)* |
| Đại | やります!<br>*(Em làm liền!)* |

---

## Tình huống 11 — Cuối buổi · 15:00, sensei tổng kết

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>以上<rt>いじょう</rt></ruby>です。<ruby>宿題<rt>しゅくだい</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ。<br>*(Buổi hôm nay đến đây. Bài tập về nhà có 3 bài.)* |
| Watanabe | <ruby>1<rt>いち</rt></ruby>、FizzBuzz。<ruby>2<rt>に</rt></ruby>、<ruby>素数<rt>そすう</rt></ruby><ruby>判定<rt>はんてい</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>九九<rt>くく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>の<ruby>出力<rt>しゅつりょく</rt></ruby>。<ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(1. FizzBuzz. 2. Kiểm tra số nguyên tố. 3. In bảng cửu chương. Nộp trước thứ Sáu.)* |
| Đại | <ruby>提出方法<rt>ていしゅつほうほう</rt></ruby>は?<br>*(Cách nộp ạ?)* |
| Watanabe | <ruby>大学<rt>だいがく</rt></ruby>のLMSにアップロードしてください。<ruby>締切<rt>しめきり</rt></ruby>は<ruby>金曜日<rt>きんようび</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>59<rt>ごじゅうきゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Upload lên LMS của trường. Hạn 23h59 thứ Sáu.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございました。<br>*(Em hiểu rồi. Em cảm ơn thầy.)* |
| Watanabe | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Các em vất vả rồi.)* |

---

## Tình huống 12 — Hành lang · 15:10, mời Yamato + Aiko qua dorm code chung

| Vai | Lời thoại |
|---|---|
| Đại | ねえ、<ruby>今夜<rt>こんや</rt></ruby><ruby>僕<rt>ぼく</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>で<ruby>宿題<rt>しゅくだい</rt></ruby>やらない?<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で。<br>*(Này, tối nay qua phòng tớ làm bài chung không? Ba đứa mình.)* |
| Yamato | <ruby>賛成<rt>さんせい</rt></ruby>!FizzBuzzを<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>でやる<ruby>方法<rt>ほうほう</rt></ruby><ruby>教<rt>おし</rt></ruby>えたるわ。<br>*(Đồng ý! Tớ chỉ cách viết FizzBuzz bằng toán tử ba ngôi.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>も<ruby>行<rt>い</rt></ruby>く!<ruby>夕食<rt>ゆうしょく</rt></ruby>は?<br>*(Mình đi! Tối ăn gì?)* |
| Đại | <ruby>寮<rt>りょう</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>済<rt>す</rt></ruby>ませてから、<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めよう。<br>*(Ăn xong ở căn-tin ký túc, 7h tối bắt đầu nhé.)* |
| Yamato | おやつは<ruby>俺<rt>おれ</rt></ruby>が<ruby>持<rt>も</rt></ruby>っていくわ。<ruby>551<rt>ごーごーいち</rt></ruby>の<ruby>豚<rt>ぶた</rt></ruby>まん<ruby>買<rt>か</rt></ruby>うで。<br>*(Đồ ăn vặt tớ mang. Mua bánh bao thịt 551 đó.)* |
| Aiko | おお〜!<ruby>551<rt>ごーごーいち</rt></ruby>の<ruby>豚<rt>ぶた</rt></ruby>まん<ruby>大好<rt>だいす</rt></ruby>き!<br>*(Ô~ Bánh bao 551 mình mê lắm!)* |
| Đại | (VN, ghi nhớ) 551 là chuỗi bánh bao nổi tiếng Osaka — Yamato giới thiệu rồi. Phải thử.<br>*(551.)* |

---

## Tình huống 13 — Phòng 305 · 21:30, Yamato chỉ Đại ternary FizzBuzz

| Vai | Lời thoại |
|---|---|
| Yamato | これがFizzBuzzの<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby><ruby>版<rt>ばん</rt></ruby>や。<br>*(Đây là phiên bản FizzBuzz toán tử ba ngôi.)* |
| Yamato | (gõ vào laptop Đại)<br>```python<br>for i in range(1, 16):<br>    print("FizzBuzz" if i%15==0 else "Fizz" if i%3==0 else "Buzz" if i%5==0 else i)<br>```<br> |
| Đại | (đọc) ...わぁ、<ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>で<ruby>完結<rt>かんけつ</rt></ruby>!でも<ruby>提出<rt>ていしゅつ</rt></ruby>はif/elseで<ruby>書<rt>か</rt></ruby>くよ。<ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>指示<rt>しじ</rt></ruby>に<ruby>従<rt>したが</rt></ruby>う。<br>*(...Ơ, 1 dòng xong! Mà tớ vẫn nộp bằng if/else thôi. Theo lệnh thầy Watanabe.)* |
| Yamato | <ruby>正解<rt>せいかい</rt></ruby>や。<ruby>個人<rt>こじん</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>と<ruby>提出物<rt>ていしゅつぶつ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>けような。<br>*(Đúng. Tự học và bài nộp tách bạch đi.)* |
| Aiko | (làm bài FizzBuzz if/else) できた!<br>*(Mình xong rồi!)* |
| Đại | チェックしてあげる。(xem) ...あ、ここ。`i%3==0` と `i%5==0` の<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>逆<rt>ぎゃく</rt></ruby>。<ruby>15<rt>じゅうご</rt></ruby>の<ruby>倍数<rt>ばいすう</rt></ruby>を<ruby>最初<rt>さいしょ</rt></ruby>に。<br>*(Tớ kiểm cho. ...À, đây. Thứ tự `i%3==0` và `i%5==0` ngược rồi. Bội số 15 phải kiểm trước.)* |
| Aiko | あー、なるほど!<ruby>論理<rt>ろんり</rt></ruby><ruby>順序<rt>じゅんじょ</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<br>*(À ra vậy! Thứ tự logic quan trọng nhỉ.)* |

---

## Tình huống 14 — LINE Mai · 23:30, kể về buổi học đầu

> Cảnh tiếng Việt — Đại nhắn LINE với Mai, kể chi tiết buổi học và ôn lại từ vựng JP.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Anh vừa xong buổi 演習 (lab) Python đầu tiên. Hôm nay học Hello World, if/else, for loop. |
| Mai | (tiếng Việt) Anh có hiểu sensei nói không? |
| Đại | (tiếng Việt) Có một lần anh phải hỏi 「もう一度お願いします」 vì thầy nói nhanh. Còn lúc thầy giảng 動的型付け (dynamic typing) anh hỏi 「というのはどういう意味ですか」 thầy giải thích kỹ lắm. |
| Mai | (tiếng Việt) Anh dũng cảm ghê. Em nếu là anh chắc ngồi im không dám hỏi. |
| Đại | (tiếng Việt) Quy tắc của anh là: không hiểu phải hỏi ngay, đừng để dồn. Anh còn quen được anh Yamada senpai năm 4 ở lab Inoue. Anh ấy mời anh tuần sau qua dự seminar luôn! |
| Mai | (tiếng Việt) Trời ơi tốt quá anh ơi! Anh nói được câu xin tham dự seminar thế nào tiếng Nhật? |
| Đại | (tiếng Việt) Anh nói 「ぜひ参加させてください、事前にメール送ります」 — xin được tham dự, trước đó em gửi mail. Câu này sang trọng hơn 「行きたい」 thường. |
| Mai | (tiếng Việt) Em học theo anh. Mai em thi nốt môn cuối là xong kỳ. |
| Đại | (tiếng Việt) Cố lên em. Anh có bài tập về nhà FizzBuzz + 素数判定 + 九九表 nộp thứ Sáu. Ngủ ngon nhé! |
| Mai | (tiếng Việt) Anh ngủ ngon. Ôm anh từ HN. |

---

## Đọng lại chương 3

Ngày 7/4/2026 — Đại có buổi プログラミング演習 đầu tiên. Cậu học **xin phép sensei** 「<ruby>持参<rt>じさん</rt></ruby>のMacBookを<ruby>使<rt>つか</rt></ruby>ってもよろしいですか?」, **báo cáo kết quả code** 「<ruby>実行<rt>じっこう</rt></ruby>できました。<ruby>出力<rt>しゅつりょく</rt></ruby>は〜です」, **hỏi thuật ngữ** 「〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?」, **hỏi lại khi nghe không kịp** 「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」, **xin được tham gia lịch sự** 「ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください」 và **cảm ơn cuối buổi** 「ありがとうございました」. Cậu giúp Aiko sửa lỗi SyntaxError, được Yamato chỉ ternary operator, và được Yamada-senpai mời sang lab Inoue dự seminar tuần sau.

> Từ vựng & mẫu câu chương này: プログラミング<ruby>演習<rt>えんしゅう</rt></ruby>・<ruby>動的<rt>どうてき</rt></ruby><ruby>型付<rt>かたづ</rt></ruby>け・<ruby>解釈<rt>かいしゃく</rt></ruby><ruby>型<rt>がた</rt></ruby>・インデント・<ruby>変数<rt>へんすう</rt></ruby>・<ruby>条件分岐<rt>じょうけんぶんき</rt></ruby>・<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>・リスト<ruby>内包表記<rt>ないほうひょうき</rt></ruby>・<ruby>偶数<rt>ぐうすう</rt></ruby>・<ruby>素数<rt>そすう</rt></ruby><ruby>判定<rt>はんてい</rt></ruby>・FizzBuzz・<ruby>九九<rt>くく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>・<ruby>提出<rt>ていしゅつ</rt></ruby>・<ruby>締切<rt>しめきり</rt></ruby>・LMS・<ruby>聴講<rt>ちょうこう</rt></ruby>・ゼミ・<ruby>持参<rt>じさん</rt></ruby>・もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします・〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか・ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください

## Bí quyết chương

- **「<ruby>持参<rt>じさん</rt></ruby>の〜を<ruby>使<rt>つか</rt></ruby>ってもよろしいですか?」** là mẫu xin phép chuẩn ở mọi lớp ĐH Nhật. Lịch sự hơn 「使っていい?」 vô cùng.
- **Khi report kết quả code** dùng cấu trúc 「<ruby>実行<rt>じっこう</rt></ruby>できました」 → 「<ruby>出力<rt>しゅつりょく</rt></ruby>は〜です」 — pattern báo cáo nghiệp dư đến nghề.
- **「〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?」** + **「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」** là 2 vũ khí sống còn của du học sinh trong giảng đường. Đừng ngại dùng.
- **「ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください」** dùng khi xin tham dự seminar/event của senpai — sang trọng hơn 「行きたいです」.
- Khi senpai chỉ tech trick (ternary, list comp) hay hơn slide sensei: **học riêng**, **nộp theo sensei**. 「<ruby>個人<rt>こじん</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>と<ruby>提出物<rt>ていしゅつぶつ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>ける」.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 演習 | えんしゅう | DIỄN TẬP | thực hành, lab |
| 持参 | じさん | TRÌ THAM | mang theo |
| 環境 | かんきょう | HOÀN CẢNH | môi trường |
| 自由 | じゆう | TỰ DO | tự do |
| 推奨 | すいしょう | THÔI TƯỞNG | khuyến nghị |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| 入門 | にゅうもん | NHẬP MÔN | nhập môn |
| 特徴 | とくちょう | ĐẶC TRƯNG | đặc trưng |
| 動的 | どうてき | ĐỘNG ĐÍCH | động |
| 型付け | かたづけ | HÌNH PHÓ | định kiểu |
| 解釈型 | かいしゃくがた | GIẢI THÍCH HÌNH | kiểu thông dịch |
| 必須 | ひっす | TẤT TU | bắt buộc |
| 主流 | しゅりゅう | CHỦ LƯU | chủ đạo |
| 質問 | しつもん | CHẤT VẤN | câu hỏi |
| 変数 | へんすう | BIẾN SỐ | biến |
| 事前 | じぜん | SỰ TIỀN | trước |
| 宣言 | せんげん | TUYÊN NGÔN | khai báo |
| 自動的 | じどうてき | TỰ ĐỘNG ĐÍCH | tự động |
| 作成 | さくせい | TÁC THÀNH | tạo |
| 実行 | じっこう | THỰC HÀNH | chạy, thực thi |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 誕生 | たんじょう | ĐẢN SINH | ra đời |
| 厳 | きびしい | NGHIÊM | khắt khe |
| 命 | いのち | MỆNH | sinh mệnh |
| 条件分岐 | じょうけんぶんき | ĐIỀU KIỆN PHÂN KỲ | rẽ nhánh |
| 成績 | せいせき | THÀNH TÍCH | thành tích |
| 判定 | はんてい | PHÁN ĐỊNH | phán định |
| 三項演算子 | さんこうえんざんし | TAM HẠNG DIỄN TOÁN TỬ | toán tử ba ngôi |
| 条件 | じょうけん | ĐIỀU KIỆN | điều kiện |
| 習慣 | しゅうかん | TẬP QUÁN | thói quen |
| 内包表記 | ないほうひょうき | NỘI BAO BIỂU KÝ | comprehension |
| 課題 | かだい | KHÓA ĐỀ | bài tập |
| 基本 | きほん | CƠ BẢN | cơ bản |
| 自習 | じしゅう | TỰ TẬP | tự học |
| 偶数 | ぐうすう | NGẪU SỐ | số chẵn |
| 求める | もとめる | CẦU | tìm |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 正解 | せいかい | CHÍNH GIẢI | đúng |
| 変数名 | へんすうめい | BIẾN SỐ DANH | tên biến |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 経 | へる | KINH | trải qua |
| 取得 | しゅとく | THỦ ĐẮC | đạt được |
| 聴講 | ちょうこう | THÍNH GIẢNG | dự thính |
| 参加 | さんか | THAM GIA | tham gia |
| 茶色 | ちゃいろ | TRÀ SẮC | màu nâu |
| 余裕 | よゆう | DƯ DỤ | dư sức |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề cũ |
| 確実 | かくじつ | XÁC THỰC | chắc chắn |
| 宿題 | しゅくだい | TÚC ĐỀ | bài tập về nhà |
| 素数 | そすう | TỐ SỐ | số nguyên tố |
| 九九表 | くくひょう | CỬU CỬU BIỂU | bảng cửu chương |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 提出方法 | ていしゅつほうほう | ĐỀ XUẤT PHƯƠNG PHÁP | cách nộp |
| 締切 | しめきり | THIẾT THIẾT | hạn nộp |
| 倍数 | ばいすう | BỘI SỐ | bội số |
| 論理 | ろんり | LUẬN LÝ | logic |
| 順序 | じゅんじょ | THUẬN TỰ | thứ tự |
| 個人 | こじん | CÁ NHÂN | cá nhân |
| 学習 | がくしゅう | HỌC TẬP | học |
| 提出物 | ていしゅつぶつ | ĐỀ XUẤT VẬT | bài nộp |
| 指示 | しじ | CHỈ THỊ | chỉ thị |
| 完結 | かんけつ | HOÀN KẾT | hoàn tất |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000004, 800000021, NULL, 'markdown_book', 'T4. Toán nền — Đại số tuyến tính và Giải tích (数学基礎)', '# Sách sinh viên Đại học Osaka · T4. Toán nền — Đại số tuyến tính và Giải tích (数学基礎)

> **Mục tiêu nhân vật:** Đại 21 tuổi, giữa kỳ 1 (tháng 5/2026). Học các mẫu hội thoại tiếng Nhật của sinh viên ngành toán/CS: (1) đặt câu hỏi trong lớp 線形代数, (2) xin sensei giải thích lại định lý, (3) đề nghị kèm bạn (kèm Aiko), (4) hỏi nhờ giải bài, (5) xin sensei lời khuyên về tài liệu tham khảo, (6) báo bố mẹ điểm thi giữa kỳ qua video.

---

## Bối cảnh

Giữa tháng 5/2026, Đại đang trong tuần thi giữa kỳ 1. Lớp 線形代数 do Tajima-sensei dạy, 微積分 do Yoshida-sensei dạy — cả hai đều dùng tiếng Nhật học thuật khó (定理, 証明, 行列, 固有値). Đại có nền toán mạnh từ chuyên Tin Hà Nội nên top 5/80 (Đại số 92, Giải tích 88). Lin Wei top 1 (100). Aiko đuối (65/60), nhờ Đại kèm. Chương này tập trung **các mẫu câu đặt câu hỏi học thuật, nhờ giải thích lại, đề nghị kèm bạn, xin tài liệu tham khảo**.

---

## Tình huống 1 — Phòng A-201 · 9:00, lớp Đại số tuyến tính

*Tajima-sensei đứng trước bảng đen, vẽ ma trận 2×2.*

| Vai | Lời thoại |
|---|---|
| Tajima | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>行列<rt>ぎょうれつ</rt></ruby>の<ruby>固有値<rt>こゆうち</rt></ruby>と<ruby>固有<rt>こゆう</rt></ruby>ベクトルです。<ruby>定理<rt>ていり</rt></ruby>は det(A−λI)=0 です。<br>*(Hôm nay học trị riêng và vector riêng của ma trận. Định lý là det(A−λI)=0.)* |
| Tajima | A=[[1,2],[3,4]]の<ruby>場合<rt>ばあい</rt></ruby>、(1−λ)(4−λ)−6=0 を<ruby>解<rt>と</rt></ruby>くと、λ²−5λ−2=0 となります。<br>*(Với A=[[1,2],[3,4]] thì giải (1−λ)(4−λ)−6=0 thành λ²−5λ−2=0.)* |
| Đại | (tự tính nhẩm) λ = (5±√33)/2 ≈ 5.37 と −0.37 だね。<br>*(λ ≈ 5.37 và −0.37 nhé.)* |
| Aiko | (thì thầm với Đại) ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>暗算<rt>あんざん</rt></ruby>で<ruby>解<rt>と</rt></ruby>けるの?<br>*(Đại, cậu nhẩm ra được luôn á?)* |
| Đại | (thì thầm) <ruby>高校<rt>こうこう</rt></ruby>でやったから。Aikoは<ruby>2次<rt>にじ</rt></ruby><ruby>方程式<rt>ほうていしき</rt></ruby>の<ruby>公式<rt>こうしき</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えてる?<br>*(Cấp 3 tớ học rồi. Aiko nhớ công thức nghiệm phương trình bậc 2 không?)* |
| Aiko | x=(−b±√(b²−4ac))/2a ね?<br>*(x=(−b±√(b²−4ac))/2a chứ gì?)* |
| Đại | <ruby>正解<rt>せいかい</rt></ruby>!それを<ruby>使<rt>つか</rt></ruby>うだけ。<br>*(Đúng! Chỉ dùng cái đó thôi.)* |

---

## Tình huống 2 — Phòng A-201 · 9:30, Đại hỏi sensei về intuition

| Vai | Lời thoại |
|---|---|
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?<br>*(Thưa thầy, em hỏi được không ạ?)* |
| Tajima | はい、どうぞ。<br>*(Em hỏi đi.)* |
| Đại | <ruby>計算<rt>けいさん</rt></ruby>はできますが、<ruby>固有値<rt>こゆうち</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>がイメージできません。<ruby>幾何学的<rt>きかがくてき</rt></ruby>にはどう<ruby>解釈<rt>かいしゃく</rt></ruby>すればいいですか?<br>*(Em tính được nhưng chưa hình dung nghĩa của trị riêng. Hiểu hình học thì sao ạ?)* |
| Tajima | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>行列<rt>ぎょうれつ</rt></ruby>は<ruby>空間<rt>くうかん</rt></ruby>の<ruby>変換<rt>へんかん</rt></ruby>を<ruby>表<rt>あらわ</rt></ruby>します。<ruby>固有<rt>こゆう</rt></ruby>ベクトルは、<ruby>変換後<rt>へんかんご</rt></ruby>も<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わらないベクトルです。<ruby>固有値<rt>こゆうち</rt></ruby>はその<ruby>伸縮<rt>しんしゅく</rt></ruby><ruby>率<rt>りつ</rt></ruby>です。<br>*(Câu hỏi tuyệt vời. Ma trận biểu diễn phép biến đổi không gian. Vector riêng là vector không đổi hướng sau biến đổi. Trị riêng là tỉ lệ co giãn.)* |
| Đại | あ、なるほど!<ruby>主成分分析<rt>しゅせいぶんぶんせき</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>われるのはそのためですか?<br>*(À ra vậy! Vì thế PCA hay dùng đúng không ạ?)* |
| Tajima | その<ruby>通<rt>とお</rt></ruby>りです。グエン<ruby>君<rt>くん</rt></ruby>、よく<ruby>勉強<rt>べんきょう</rt></ruby>していますね。<br>*(Đúng vậy. Đại học hành chăm chỉ ghê.)* |

---

## Tình huống 3 — Hành lang · 10:50, Aiko cầu cứu kèm

| Vai | Lời thoại |
|---|---|
| Aiko | ダイ<ruby>君<rt>くん</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いがあるんだけど。<br>*(Đại ơi, mình có chuyện nhờ.)* |
| Đại | どうした?<br>*(Sao thế?)* |
| Aiko | <ruby>線形代数<rt>せんけいだいすう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>分<rt>わ</rt></ruby>からない。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>中間<rt>ちゅうかん</rt></ruby>テストなのに...。<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>ってもらえる?<br>*(Đại số tuyến tính mình chịu thật. Tuần sau thi giữa kỳ rồi... Cậu kèm mình được không?)* |
| Đại | もちろん!<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。いつがいい?<br>*(Tất nhiên! Đừng ngại. Khi nào tiện cho cậu?)* |
| Aiko | <ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>図書館<rt>としょかん</rt></ruby>でどう?<br>*(Chiều nay 4 giờ ở thư viện được không?)* |
| Đại | OK!でも<ruby>一<rt>ひと</rt></ruby>つ<ruby>条件<rt>じょうけん</rt></ruby>。<br>*(OK! Nhưng 1 điều kiện.)* |
| Aiko | え?<br>*(Hả?)* |
| Đại | Aikoは<ruby>UI<rt>ユーアイ</rt></ruby>/<ruby>UX<rt>ユーエックス</rt></ruby>の<ruby>感覚<rt>かんかく</rt></ruby>があるから、<ruby>視覚的<rt>しかくてき</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するよ。<ruby>苦手<rt>にがて</rt></ruby><ruby>意識<rt>いしき</rt></ruby>を<ruby>捨<rt>す</rt></ruby>てて。<br>*(Aiko có gu UI/UX nên tớ giải thích bằng hình ảnh. Vứt cảm giác sợ toán đi nhé.)* |
| Aiko | はい、<ruby>頑張<rt>がんば</rt></ruby>る!<br>*(Vâng, tớ cố!)* |

---

## Tình huống 4 — Phòng B-105 · 11:00, lớp Giải tích Yoshida-sensei

| Vai | Lời thoại |
|---|---|
| Yoshida | <ruby>微分<rt>びぶん</rt></ruby>の<ruby>定義<rt>ていぎ</rt></ruby>は f''(x) = lim(h→0)[f(x+h)−f(x)]/h です。<br>*(Định nghĩa đạo hàm là f''(x) = lim(h→0)[f(x+h)−f(x)]/h.)* |
| Yoshida | <ruby>例<rt>れい</rt></ruby>として、f(x)=x² の<ruby>場合<rt>ばあい</rt></ruby>、f''(x)=2x になります。<ruby>証明<rt>しょうめい</rt></ruby>は<ruby>教科書<rt>きょうかしょ</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby>ページを<ruby>参照<rt>さんしょう</rt></ruby>してください。<br>*(Ví dụ với f(x)=x² thì f''(x)=2x. Chứng minh tham khảo trang 32 sách giáo khoa.)* |
| Yamato | (thì thầm với Đại) <ruby>俺<rt>おれ</rt></ruby>、<ruby>高校<rt>こうこう</rt></ruby>でやったの<ruby>覚<rt>おぼ</rt></ruby>えてるけど、<ruby>用語<rt>ようご</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>忘<rt>わす</rt></ruby>れた。「<ruby>微分<rt>びぶん</rt></ruby>」って<ruby>英語<rt>えいご</rt></ruby>で<ruby>何<rt>なん</rt></ruby>やっけ?<br>*(Cấp 3 tớ học rồi mà quên hết thuật ngữ. "微分" tiếng Anh là gì nhỉ?)* |
| Đại | (thì thầm) derivative。<ruby>積分<rt>せきぶん</rt></ruby>は integral。<br>*(Derivative. Tích phân là integral.)* |
| Yamato | あぁ、それなら<ruby>分<rt>わ</rt></ruby>かる!<br>*(À, vậy thì hiểu rồi!)* |
| Yoshida | <ruby>田中<rt>たなか</rt></ruby><ruby>君<rt>くん</rt></ruby>、グエン<ruby>君<rt>くん</rt></ruby>、<ruby>授業中<rt>じゅぎょうちゅう</rt></ruby>の<ruby>私語<rt>しご</rt></ruby>は<ruby>控<rt>ひか</rt></ruby>えてください。<br>*(Tanaka, Đại, không nói chuyện riêng trong giờ.)* |
| Yamato + Đại | すみません!<br>*(Em xin lỗi thầy!)* |

---

## Tình huống 5 — Sau giờ Giải tích · 12:30, hỏi sensei tài liệu tham khảo

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>吉田<rt>よしだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>は<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<br>*(Thầy Yoshida, lúc nãy em xin lỗi ạ.)* |
| Yoshida | いえ、<ruby>気<rt>き</rt></ruby>にしないでください。<ruby>何<rt>なに</rt></ruby>か<ruby>用<rt>よう</rt></ruby>ですか?<br>*(Không sao, đừng để bụng. Em có việc gì?)* |
| Đại | <ruby>微積分<rt>びせきぶん</rt></ruby>をもっと<ruby>深<rt>ふか</rt></ruby>く<ruby>勉強<rt>べんきょう</rt></ruby>したいんですが、おすすめの<ruby>参考書<rt>さんこうしょ</rt></ruby>はありますか?<br>*(Em muốn học sâu hơn về giải tích, thầy có sách tham khảo nào khuyến nghị không ạ?)* |
| Yoshida | <ruby>初学者<rt>しょがくしゃ</rt></ruby>なら<ruby>杉浦<rt>すぎうら</rt></ruby><ruby>光夫<rt>みつお</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の『<ruby>解析<rt>かいせき</rt></ruby><ruby>入門<rt>にゅうもん</rt></ruby>』がいい。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>進<rt>すす</rt></ruby>みたければ Stewart の『Calculus』を<ruby>英語<rt>えいご</rt></ruby>で。<br>*(Người mới nên đọc "Giải tích nhập môn" của thầy Sugiura Mitsuo. Tiến thêm thì đọc Stewart "Calculus" tiếng Anh.)* |
| Đại | <ruby>図書館<rt>としょかん</rt></ruby>にありますか?<br>*(Thư viện có không ạ?)* |
| Yoshida | <ruby>両方<rt>りょうほう</rt></ruby>あります。<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>数学<rt>すうがく</rt></ruby>コーナー、<ruby>請求記号<rt>せいきゅうきごう</rt></ruby><ruby>413<rt>よんいちさん</rt></ruby>。<br>*(Cả hai đều có. Tầng 3 góc Toán, mã 413.)* |
| Đại | ありがとうございます!<ruby>放課後<rt>ほうかご</rt></ruby><ruby>借<rt>か</rt></ruby>りに<ruby>行<rt>い</rt></ruby>きます。<br>*(Em cảm ơn thầy! Chiều tan em ra mượn ạ.)* |

---

## Tình huống 6 — Thư viện tầng 3 · 16:00, kèm Aiko qua hình ảnh

*Đại trải giấy A3 trên bàn, vẽ hệ trục Oxy. Aiko mở Figma trên iPad.*

| Vai | Lời thoại |
|---|---|
| Đại | Aiko、<ruby>行列<rt>ぎょうれつ</rt></ruby>を「<ruby>図形<rt>ずけい</rt></ruby>の<ruby>変形<rt>へんけい</rt></ruby>ツール」と<ruby>思<rt>おも</rt></ruby>って。<br>*(Aiko, hình dung ma trận như "công cụ biến đổi hình".)* |
| Aiko | Figmaの transform みたいに?<br>*(Như transform của Figma á?)* |
| Đại | その<ruby>通<rt>とお</rt></ruby>り!<ruby>行列<rt>ぎょうれつ</rt></ruby> [[2,0],[0,3]] は<ruby>横<rt>よこ</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>倍<rt>ばい</rt></ruby>、<ruby>縦<rt>たて</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>するスケール<ruby>変換<rt>へんかん</rt></ruby>。<br>*(Chuẩn! Ma trận [[2,0],[0,3]] là phép scale ngang 2 lần, dọc 3 lần.)* |
| Aiko | (mắt sáng) あ!じゃあ<ruby>固有<rt>こゆう</rt></ruby>ベクトルは「<ruby>変形<rt>へんけい</rt></ruby>しても<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わらない<ruby>軸<rt>じく</rt></ruby>」だね?<br>*(À! Vậy vector riêng là "trục không đổi hướng khi biến đổi" đúng không?)* |
| Đại | <ruby>正解<rt>せいかい</rt></ruby>!Aikoは<ruby>視覚<rt>しかく</rt></ruby><ruby>派<rt>は</rt></ruby>だから、こう<ruby>覚<rt>おぼ</rt></ruby>えれば<ruby>計算<rt>けいさん</rt></ruby>もできる。<br>*(Đúng! Aiko thuộc tuýp thị giác, nhớ vậy thì tính được.)* |
| Aiko | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かりやすい!ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>先生<rt>せんせい</rt></ruby>より<ruby>説明<rt>せつめい</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>。<br>*(Dễ hiểu thật! Đại giảng còn dễ hơn thầy luôn.)* |
| Đại | (cười) <ruby>大袈裟<rt>おおげさ</rt></ruby>!<ruby>先生<rt>せんせい</rt></ruby>には<ruby>言<rt>い</rt></ruby>わないで。<br>*(Phóng đại quá! Đừng kể thầy nha.)* |

---

## Tình huống 7 — Thư viện · 17:00, Lin Wei khoe điểm và đề nghị kèm Aiko cuối tuần

| Vai | Lời thoại |
|---|---|
| Lin Wei | (đến bàn) みんな!<ruby>線形代数<rt>せんけいだいすう</rt></ruby>の<ruby>模試<rt>もし</rt></ruby><ruby>結果<rt>けっか</rt></ruby><ruby>出<rt>で</rt></ruby>たよ。<ruby>僕<rt>ぼく</rt></ruby><ruby>100<rt>ひゃく</rt></ruby><ruby>点<rt>てん</rt></ruby>!<br>*(Mọi người ơi! Có kết quả thi thử Đại số rồi. Tớ 100 điểm!)* |
| Yamato | (đứng dậy) マジ?トップやんけ!<ruby>俺<rt>おれ</rt></ruby><ruby>85<rt>はちじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>や。<br>*(Thật á? Top luôn! Tớ 85.)* |
| Đại | <ruby>僕<rt>ぼく</rt></ruby>は<ruby>92<rt>きゅうじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>だね。<br>*(Tớ 92. Hạng 2 nè.)* |
| Aiko | (cười khô) <ruby>私<rt>わたし</rt></ruby><ruby>65<rt>ろくじゅうご</rt></ruby>...。<br>*(Mình 65...)* |
| Lin Wei | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>!<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しよう。<ruby>土曜日<rt>どようび</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby>、どう?<br>*(Không sao! Cuối tuần học chung. Sáng thứ Bảy được không?)* |
| Aiko | <ruby>本当<rt>ほんとう</rt></ruby>に?<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ないけど、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thật á? Ngại quá nhưng nhờ Lin nhé.)* |
| Lin Wei | <ruby>気<rt>き</rt></ruby>にしないで!<ruby>教<rt>おし</rt></ruby>えるのは<ruby>自分<rt>じぶん</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby>にもなるから。<br>*(Đừng ngại! Dạy lại cũng là ôn cho tớ.)* |
| Đại | <ruby>僕<rt>ぼく</rt></ruby>も<ruby>参加<rt>さんか</rt></ruby>するよ。<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Tớ cũng tham gia. Ba đứa cùng cố nhé.)* |

---

## Tình huống 8 — Phòng 305 · 19:00, hỏi Yamato cách dùng NumPy

| Vai | Lời thoại |
|---|---|
| Đại | (gọi LINE Yamato) ヤマト、NumPyのlinalg.eigの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby><ruby>分<rt>わ</rt></ruby>かる?<br>*(Yamato, biết cách dùng NumPy linalg.eig không?)* |
| Yamato | (voice call) おう、<ruby>簡単<rt>かんたん</rt></ruby>やで。<ruby>3<rt>さん</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>でできる。<br>*(Ờ, đơn giản. 3 dòng là xong.)* |
| Đại | (gõ theo)<br>```python<br>import numpy as np<br>A = np.array([[1, 2], [3, 4]])<br>eigenvalues, eigenvectors = np.linalg.eig(A)<br>print(eigenvalues)<br>```<br> |
| Đại | <ruby>結果<rt>けっか</rt></ruby>: `[-0.37 5.37]`。<ruby>手計算<rt>てけいさん</rt></ruby>と<ruby>一致<rt>いっち</rt></ruby>した!<br>*(Kết quả: [-0.37 5.37]. Khớp với tính tay!)* |
| Yamato | やろ?<ruby>手計算<rt>てけいさん</rt></ruby>は<ruby>意味<rt>いみ</rt></ruby><ruby>理解<rt>りかい</rt></ruby>のため、NumPyは<ruby>実務<rt>じつむ</rt></ruby>のためや。<br>*(Đúng không? Tính tay để hiểu nghĩa, NumPy để làm thực tế.)* |
| Đại | <ruby>納得<rt>なっとく</rt></ruby>。<ruby>授業<rt>じゅぎょう</rt></ruby>では<ruby>手計算<rt>てけいさん</rt></ruby>、ラボでは NumPy。<br>*(Hợp lý. Trên lớp tính tay, trong lab NumPy.)* |
| Yamato | せやで。SciPyも<ruby>覚<rt>おぼ</rt></ruby>えとき、<ruby>積分<rt>せきぶん</rt></ruby>とかも<ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>や。<br>*(Đúng. Nhớ cả SciPy nữa, tích phân cũng 1 dòng.)* |

---

## Tình huống 9 — Cafe trường · thứ Bảy 11:00, học nhóm Đại + Lin Wei + Aiko

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English mix) OK、<ruby>今日<rt>きょう</rt></ruby>はAikoの<ruby>苦手<rt>にがて</rt></ruby>な<ruby>固有値<rt>こゆうち</rt></ruby><ruby>計算<rt>けいさん</rt></ruby>を<ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>解<rt>と</rt></ruby>こう。<br>*(OK, hôm nay giải 30 bài trị riêng — chỗ Aiko yếu.)* |
| Aiko | <ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>?<ruby>多<rt>おお</rt></ruby>いよ〜!<br>*(30 bài? Nhiều quá!)* |
| Đại | <ruby>多<rt>おお</rt></ruby>くないよ。<ruby>1<rt>いち</rt></ruby><ruby>問<rt>もん</rt></ruby>あたり<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>時間半<rt>じかんはん</rt></ruby>で<ruby>終<rt>お</rt></ruby>わる。<br>*(Không nhiều đâu. Mỗi bài 5 phút. 2 tiếng rưỡi xong.)* |
| Lin Wei | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>5<rt>ご</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に、<ruby>残<rt>のこ</rt></ruby>り<ruby>25<rt>にじゅうご</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>個別<rt>こべつ</rt></ruby>、<ruby>最後<rt>さいご</rt></ruby>に<ruby>答<rt>こた</rt></ruby>え<ruby>合<rt>あ</rt></ruby>わせ、いい?<br>*(5 bài đầu làm chung, 25 bài còn lại tự làm, cuối đối đáp án, được không?)* |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>計画<rt>けいかく</rt></ruby>!<br>*(Kế hoạch tuyệt!)* |
| Đại | じゃあ<ruby>1<rt>いち</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>目<rt>め</rt></ruby>:A=[[2,1],[1,2]] の<ruby>固有値<rt>こゆうち</rt></ruby>を<ruby>求<rt>もと</rt></ruby>めてください。<br>*(Bài 1: tính trị riêng của A=[[2,1],[1,2]].)* |
| Aiko | (tính giấy) (2−λ)²−1=0 → λ²−4λ+3=0 → λ=1 と<ruby>3<rt>さん</rt></ruby>!<br>*(λ=1 và 3!)* |
| Lin Wei + Đại | <ruby>正解<rt>せいかい</rt></ruby>!<br>*(Đúng rồi!)* |
| Aiko | やった!<br>*(Hay quá!)* |

---

## Tình huống 10 — Phòng tự học · 16:00, Aiko cảm ơn

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>終<rt>お</rt></ruby>わった。<ruby>正解率<rt>せいかいりつ</rt></ruby><ruby>26<rt>にじゅうろく</rt></ruby>/<ruby>30<rt>さんじゅう</rt></ruby>!<br>*(Xong 30 bài. Đúng 26/30!)* |
| Lin Wei | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>来週<rt>らいしゅう</rt></ruby>のテストは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<br>*(Tuyệt! Tuần sau thi không lo.)* |
| Aiko | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>のおかげ。<ruby>今度<rt>こんど</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がお<ruby>礼<rt>れい</rt></ruby>に<ruby>何<rt>なに</rt></ruby>かしたい。<br>*(Thật sự nhờ hai cậu. Lần sau mình muốn trả lễ.)* |
| Đại | <ruby>気<rt>き</rt></ruby>にしないで。お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>だよ。<br>*(Đừng để bụng. Tương trợ nhau thôi.)* |
| Aiko | じゃあ、<ruby>来週<rt>らいしゅう</rt></ruby>テスト<ruby>終<rt>お</rt></ruby>わったら、<ruby>私<rt>わたし</rt></ruby>の<ruby>地元<rt>じもと</rt></ruby><ruby>京都<rt>きょうと</rt></ruby>に<ruby>日帰<rt>ひがえ</rt></ruby>り<ruby>旅行<rt>りょこう</rt></ruby><ruby>案内<rt>あんない</rt></ruby>するね。<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも<ruby>京都<rt>きょうと</rt></ruby>まだ<ruby>行<rt>い</rt></ruby>ってないでしょ?<br>*(Vậy tuần sau thi xong, mình dẫn hai cậu đi Kyoto một ngày nhé. Hai cậu chưa đi Kyoto đúng không?)* |
| Lin Wei + Đại | <ruby>行<rt>い</rt></ruby>く!<ruby>絶対<rt>ぜったい</rt></ruby><ruby>行<rt>い</rt></ruby>く!<br>*(Đi! Đi chắc luôn!)* |

---

## Tình huống 11 — Phòng 305 · thứ Hai 18:00, thi giữa kỳ xong, báo điểm sensei

*Sau bài thi 線形代数 trả điểm online. Đại lên gặp Tajima-sensei sau giờ.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田島<rt>たじま</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>中間<rt>ちゅうかん</rt></ruby>テストの<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<ruby>94<rt>きゅうじゅうよん</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<br>*(Thầy Tajima, em có kết quả thi rồi. Em được 94.)* |
| Tajima | おお、よく<ruby>頑張<rt>がんば</rt></ruby>りましたね。<ruby>模試<rt>もし</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby>アップ。<br>*(Ồ, em cố gắng tốt đấy. Tăng 2 điểm so với thi thử.)* |
| Đại | <ruby>固有値<rt>こゆうち</rt></ruby>の<ruby>幾何学的<rt>きかがくてき</rt></ruby><ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらったおかげです。ありがとうございました。<br>*(Nhờ thầy giảng nghĩa hình học của trị riêng. Em cảm ơn ạ.)* |
| Tajima | グエン<ruby>君<rt>くん</rt></ruby>は<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>に<ruby>興味<rt>きょうみ</rt></ruby>あるんですよね?<br>*(Đại quan tâm machine learning đúng không?)* |
| Đại | はい!<br>*(Vâng ạ!)* |
| Tajima | <ruby>線形代数<rt>せんけいだいすう</rt></ruby>はその<ruby>基礎<rt>きそ</rt></ruby>です。<ruby>固有値<rt>こゆうち</rt></ruby>、<ruby>特異値分解<rt>とくいちぶんかい</rt></ruby>、<ruby>主成分分析<rt>しゅせいぶんぶんせき</rt></ruby>—すべて<ruby>繋<rt>つな</rt></ruby>がっています。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Đại số tuyến tính là nền của nó. Trị riêng, SVD, PCA — đều liên kết. Cố lên nhé.)* |
| Đại | はい、<ruby>続<rt>つづ</rt></ruby>けて<ruby>勉強<rt>べんきょう</rt></ruby>します!<br>*(Vâng, em học tiếp ạ!)* |

---

## Tình huống 12 — Phòng 305 · 22:00, video call báo điểm bố mẹ + Mai

> Cảnh tiếng Việt — Đại bật video call ba chiều với Mai, bố và mẹ ở Hà Nội. Báo điểm giữa kỳ.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Cả nhà ơi! Con vừa có điểm giữa kỳ. Đại số tuyến tính 94, Giải tích 90. Top 3 của 80 đứa khoa CNTT. |
| Mẹ | (tiếng Việt) Trời ơi! Mẹ tự hào quá con. Học toán bằng tiếng Nhật mà vẫn dẫn đầu được, thật là... mẹ không biết nói gì nữa. |
| Bố | (tiếng Việt) Đúng là không uổng công ba năm chuyên Tin Hà Nội. Con nhớ cảm ơn các thầy cấp 3 nhé. |
| Đại | (tiếng Việt) Vâng bố. Mà bên đại học Nhật họ có thuật ngữ riêng — 固有値 là eigenvalue, 微分 là derivative — toàn từ kanji khó. Lúc thầy nói nhanh là con phải hỏi 「もう一度お願いします」 luôn. |
| Mai | (tiếng Việt) Em đang ôn thi cuối kỳ Sư phạm. Anh kèm em môn Toán cao cấp qua Zoom được không? |
| Đại | (tiếng Việt) Được chứ! Cuối tuần này anh kèm em. Em chuẩn bị danh sách bài khó gửi anh trước nhé. |
| Mẹ | (tiếng Việt) Hai đứa chuẩn bị cưới rồi mà vẫn học chung. Lý tưởng quá! |
| Đại | (tiếng Việt) À nói thêm, con kèm bạn Aiko môn Đại số. Bạn ấy gốc design UI/UX nên con dạy theo kiểu hình ảnh — giống công cụ transform của Figma. Bạn ấy hiểu liền. |
| Bố | (tiếng Việt) Hay! Truyền đạt cho người không cùng ngành mới là kiểm tra mình hiểu thật sự. Cố lên con! |
| Đại | (tiếng Việt) Vâng. Còn 8 tháng nữa thôi, Mai sang Nhật cưới. Cả nhà ngủ ngon nhé! |

---

## Đọng lại chương 4

Giữa tháng 5/2026 — Đại trải qua tuần thi giữa kỳ Toán nền. Cậu học **đặt câu hỏi học thuật trang trọng** 「<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?」, **xin sensei giải thích sâu hơn** 「<ruby>幾何学的<rt>きかがくてき</rt></ruby>にはどう<ruby>解釈<rt>かいしゃく</rt></ruby>すればいいですか?」, **xin tài liệu tham khảo** 「おすすめの<ruby>参考書<rt>さんこうしょ</rt></ruby>はありますか?」, **đề nghị kèm bạn theo gu của bạn** (giải thích ma trận = Figma transform cho Aiko), **xin lỗi khi nói chuyện riêng trong giờ** 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした」 và **báo điểm/cảm ơn sensei** 「〜のおかげです、ありがとうございました」. Đại đứng top 3/80 (94 + 90), Lin Wei top 1, Aiko từ 65 lên 26/30 nhờ kèm. Tajima-sensei foreshadow đường ML: 線形代数 → SVD → PCA.

> Từ vựng & mẫu câu chương này: <ruby>線形代数<rt>せんけいだいすう</rt></ruby>・<ruby>微積分<rt>びせきぶん</rt></ruby>・<ruby>行列<rt>ぎょうれつ</rt></ruby>・<ruby>固有値<rt>こゆうち</rt></ruby>・<ruby>固有<rt>こゆう</rt></ruby>ベクトル・<ruby>微分<rt>びぶん</rt></ruby>・<ruby>積分<rt>せきぶん</rt></ruby>・<ruby>定理<rt>ていり</rt></ruby>・<ruby>証明<rt>しょうめい</rt></ruby>・<ruby>変換<rt>へんかん</rt></ruby>・<ruby>幾何学的<rt>きかがくてき</rt></ruby>・<ruby>参考書<rt>さんこうしょ</rt></ruby>・<ruby>請求記号<rt>せいきゅうきごう</rt></ruby>・<ruby>中間<rt>ちゅうかん</rt></ruby>テスト・<ruby>模試<rt>もし</rt></ruby>・<ruby>主成分分析<rt>しゅせいぶんぶんせき</rt></ruby>・NumPy・SciPy・<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか・〜のおかげです・<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした・お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>

## Bí quyết chương

- **「<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?」** sang trọng hơn 「質問していい?」 — dùng với sensei. Câu trả lời thường là 「どうぞ」.
- **Hỏi intuition thay vì công thức**: 「<ruby>幾何学的<rt>きかがくてき</rt></ruby>にはどう<ruby>解釈<rt>かいしゃく</rt></ruby>すればいいですか?」 — sensei sẽ vui hơn câu hỏi tính toán đơn thuần.
- **「〜のおかげです」** là cách cảm ơn lịch sự khi báo kết quả tốt cho thầy/người giúp đỡ.
- **「お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>」** dùng khi từ chối lời cảm ơn quá đà của bạn — "tương trợ thôi mà".
- Kỹ thuật **kèm bạn theo gu**: Aiko design → ma trận = Figma transform. Tương tự sau này dạy Mai cấp 3 Toán cao cấp — adapt theo nền tảng người học.
- Khi thầy nhắc nhở nói chuyện riêng: nói ngay 「すみません!」 + cuối giờ lên xin lỗi lại 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした」 — văn hoá Nhật đánh giá cao việc xin lỗi đầy đủ.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 数学基礎 | すうがくきそ | SỐ HỌC CƠ SỞ | toán nền |
| 線形代数 | せんけいだいすう | TUYẾN HÌNH ĐẠI SỐ | đại số tuyến tính |
| 微積分 | びせきぶん | VI TÍCH PHÂN | giải tích |
| 行列 | ぎょうれつ | HÀNG LIỆT | ma trận |
| 固有値 | こゆうち | CỐ HỮU TRỊ | trị riêng |
| 定理 | ていり | ĐỊNH LÝ | định lý |
| 場合 | ばあい | TRƯỜNG HỢP | trường hợp |
| 暗算 | あんざん | ÁM TOÁN | tính nhẩm |
| 方程式 | ほうていしき | PHƯƠNG TRÌNH THỨC | phương trình |
| 公式 | こうしき | CÔNG THỨC | công thức |
| 計算 | けいさん | KẾ TOÁN | tính toán |
| 意味 | いみ | Ý VỊ | ý nghĩa |
| 幾何学的 | きかがくてき | KỶ HÀ HỌC ĐÍCH | hình học |
| 解釈 | かいしゃく | GIẢI THÍCH | diễn giải |
| 空間 | くうかん | KHÔNG GIAN | không gian |
| 変換 | へんかん | BIẾN HOÁN | phép biến đổi |
| 方向 | ほうこう | PHƯƠNG HƯỚNG | hướng |
| 伸縮率 | しんしゅくりつ | THÂN SÚC SUẤT | tỉ lệ co giãn |
| 主成分分析 | しゅせいぶんぶんせき | CHỦ THÀNH PHẦN PHÂN TÍCH | PCA |
| 中間 | ちゅうかん | TRUNG GIAN | giữa kỳ |
| 遠慮 | えんりょ | VIỄN LỰ | ngại |
| 視覚的 | しかくてき | THỊ GIÁC ĐÍCH | thị giác |
| 説明 | せつめい | THUYẾT MINH | giải thích |
| 苦手 | にがて | KHỔ THỦ | yếu, kém |
| 意識 | いしき | Ý THỨC | ý thức |
| 微分 | びぶん | VI PHÂN | đạo hàm |
| 定義 | ていぎ | ĐỊNH NGHĨA | định nghĩa |
| 証明 | しょうめい | CHỨNG MINH | chứng minh |
| 教科書 | きょうかしょ | GIÁO KHOA THƯ | sách giáo khoa |
| 参照 | さんしょう | THAM CHIẾU | tham khảo |
| 用語 | ようご | DỤNG NGỮ | thuật ngữ |
| 積分 | せきぶん | TÍCH PHÂN | tích phân |
| 私語 | しご | TƯ NGỮ | nói chuyện riêng |
| 申し訳 | もうしわけ | THÂN DỊCH | xin lỗi |
| 参考書 | さんこうしょ | THAM KHẢO THƯ | sách tham khảo |
| 初学者 | しょがくしゃ | SƠ HỌC GIẢ | người mới học |
| 解析 | かいせき | GIẢI TÍCH | giải tích |
| 請求記号 | せいきゅうきごう | THỈNH CẦU KÝ HIỆU | mã thư viện |
| 図形 | ずけい | ĐỒ HÌNH | hình |
| 変形 | へんけい | BIẾN HÌNH | biến hình |
| 軸 | じく | TRỤC | trục |
| 視覚派 | しかくは | THỊ GIÁC PHÁI | thuộc tuýp thị giác |
| 大袈裟 | おおげさ | ĐẠI KHẾ TA | phóng đại |
| 模試 | もし | MÔ THÍ | thi thử |
| 正解率 | せいかいりつ | CHÍNH GIẢI SUẤT | tỷ lệ đúng |
| 復習 | ふくしゅう | PHỤC TẬP | ôn tập |
| 案内 | あんない | ÁN NỘI | hướng dẫn |
| 手計算 | てけいさん | THỦ KẾ TOÁN | tính tay |
| 一致 | いっち | NHẤT TRÍ | trùng khớp |
| 実務 | じつむ | THỰC VỤ | thực tế |
| 納得 | なっとく | NẠP ĐẮC | hợp lý |
| 個別 | こべつ | CÁ BIỆT | riêng lẻ |
| 答え合わせ | こたえあわせ | ĐÁP HỢP | đối đáp án |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 結構 | けっこう | KẾT CẤU | tốt, ổn |
| 互い様 | おたがいさま | HỖ DẠNG | tương trợ |
| 地元 | じもと | ĐỊA NGUYÊN | quê |
| 日帰り | ひがえり | NHẬT QUY | đi về trong ngày |
| 特異値分解 | とくいちぶんかい | ĐẶC DỊ TRỊ PHÂN GIẢI | SVD |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000005, 800000021, NULL, 'markdown_book', 'T5. Thuật toán cơ bản & AtCoder (アルゴリズム入門)', '# Sách sinh viên Đại học Osaka · T5. Thuật toán cơ bản & AtCoder (アルゴリズム入門)

> **Mục tiêu nhân vật:** Đại (21t, năm 1 ĐH Osaka CS, 6/2026, N2) học các mẫu hội thoại tiếng Nhật trong lecture アルゴリズム入門: (1) hỏi sensei về 計算量 Big O, (2) trình bày code Bubble/Quicksort/Binary search lên bảng, (3) trao đổi sempai về thư viện chuẩn Python, (4) chat LINE nhóm AtCoder, (5) báo cáo tiến độ tự học BFS, (6) keigo khi hỏi `〜と理解してよろしいでしょうか`.

---

## Bối cảnh

Tháng 6/2026, giữa kỳ 1 cuối năm 1. Đại đã quen lớp, ngồi cạnh **Yamato** (bạn cùng khoá Nhật, AtCoder 緑 1100) và **Lin Wei** (du học sinh TQ, AtCoder 水色 1300). Sensei môn アルゴリズム入門 là **大野 (Ohno)-sensei** 60 tuổi, tác giả giáo trình. Aiko (UI/UX, khoa thiết kế) hay xuất hiện ở canteen. Chương này tập trung mẫu câu **hỏi sensei trong lecture**, **báo cáo code mình viết** và **chat LINE nhóm AtCoder cuối tuần**.

---

## Tình huống 1 — Giảng đường B2 · 9:00, hỏi Ohno-sensei về Big O

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマは「<ruby>計算量<rt>けいさんりょう</rt></ruby> Big O <ruby>記法<rt>きほう</rt></ruby>」です。アルゴリズムの<ruby>効率<rt>こうりつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る<ruby>道具<rt>どうぐ</rt></ruby>です。<br>*(Hôm nay học "ký pháp Big O". Đây là công cụ đo hiệu năng thuật toán.)* |
| Ohno | O(1) は<ruby>定数時間<rt>ていすうじかん</rt></ruby>、O(log n) は<ruby>対数時間<rt>たいすうじかん</rt></ruby>、O(n²) は<ruby>二乗時間<rt>にじょうじかん</rt></ruby>です。<br>*(O(1) hằng số, O(log n) logarit, O(n²) bậc hai.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか。<br>*(Thưa thầy, em được phép hỏi ạ?)* |
| Ohno | はい、どうぞ。<br>*(Ừ, em cứ hỏi.)* |
| Đại | quick sort の<ruby>平均<rt>へいきん</rt></ruby> O(n log n) と<ruby>最悪<rt>さいあく</rt></ruby> O(n²)、この<ruby>差<rt>さ</rt></ruby>は pivot の<ruby>選<rt>えら</rt></ruby>び<ruby>方<rt>かた</rt></ruby>によるものだと<ruby>理解<rt>りかい</rt></ruby>してよろしいでしょうか。<br>*(Sự khác biệt giữa quick sort trung bình O(n log n) và xấu nhất O(n²) là do cách chọn pivot, em hiểu vậy có đúng không ạ?)* |
| Ohno | その<ruby>通<rt>とお</rt></ruby>りです。よく<ruby>勉強<rt>べんきょう</rt></ruby>していますね。ベトナムからの<ruby>留学生<rt>りゅうがくせい</rt></ruby>ですか?<br>*(Đúng vậy. Em học chăm đấy. Em là du học sinh Việt Nam phải không?)* |
| Đại | はい、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>1<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイです。<br>*(Vâng, em là Nguyễn Thanh Đại, năm 1 ĐH Osaka.)* |

---

## Tình huống 2 — Giảng đường B2 · 10:30, lên bảng viết code Bubble Sort

*Sensei gọi Đại lên bảng viết Bubble Sort trước cả lớp 80 sinh viên.*

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>誰<rt>だれ</rt></ruby>か<ruby>黒板<rt>こくばん</rt></ruby>で bubble sort を<ruby>書<rt>か</rt></ruby>いてみてくれますか?<br>*(Ai lên bảng viết bubble sort thử nào?)* |
| Đại | (giơ tay) はい、<ruby>私<rt>わたし</rt></ruby>がやらせていただきます。<br>*(Vâng, để em làm ạ.)* |
| Đại | (đứng cạnh bảng) Python で<ruby>書<rt>か</rt></ruby>かせていただきます。<ruby>二重<rt>にじゅう</rt></ruby> for ループで<ruby>隣<rt>となり</rt></ruby><ruby>同士<rt>どうし</rt></ruby>を<ruby>比較<rt>ひかく</rt></ruby>して<ruby>交換<rt>こうかん</rt></ruby>します。<br>*(Em xin viết bằng Python ạ. Vòng for lồng để so sánh và hoán đổi 2 phần tử kề.)* |
| Đại | (viết) `for i in range(n): for j in range(n-i-1): if a[j]>a[j+1]: a[j],a[j+1]=a[j+1],a[j]`<br>*(Code lên bảng.)* |
| Ohno | <ruby>計算量<rt>けいさんりょう</rt></ruby>は?<br>*(Độ phức tạp là?)* |
| Đại | <ruby>最悪<rt>さいあく</rt></ruby>・<ruby>平均<rt>へいきん</rt></ruby>ともに O(n²)、<ruby>最良<rt>さいりょう</rt></ruby>は<ruby>既<rt>すで</rt></ruby>に<ruby>整列<rt>せいれつ</rt></ruby><ruby>済<rt>ず</rt></ruby>みの<ruby>場合<rt>ばあい</rt></ruby> O(n) です。<br>*(Xấu nhất và trung bình đều O(n²), tốt nhất là O(n) khi đã sắp xếp sẵn.)* |
| Ohno | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>席<rt>せき</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>っていいですよ。<br>*(Hoàn hảo. Em về chỗ được rồi.)* |
| Yamato | (whisper khi Đại ngồi xuống) おっ、ダイ<ruby>調子<rt>ちょうし</rt></ruby>いいな。<br>*(Ờ, Đại sung quá.)* |

---

## Tình huống 3 — Giảng đường B2 · 11:00, hỏi lại sensei khi chưa hiểu

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>次<rt>つぎ</rt></ruby>は merge sort の<ruby>分割統治法<rt>ぶんかつとうちほう</rt></ruby>です。<ruby>配列<rt>はいれつ</rt></ruby>を<ruby>半分<rt>はんぶん</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けて、<ruby>再帰的<rt>さいきてき</rt></ruby>にソートし、<ruby>最後<rt>さいご</rt></ruby>に merge します。<br>*(Tiếp theo là divide & conquer của merge sort. Chia mảng làm đôi, sắp xếp đệ quy rồi merge ở cuối.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、すみません、「<ruby>分割統治法<rt>ぶんかつとうちほう</rt></ruby>」というのは?<br>*(Thưa thầy, xin lỗi thầy, "divide & conquer" nghĩa là gì ạ?)* |
| Ohno | <ruby>英語<rt>えいご</rt></ruby>では divide and conquer です。<ruby>問題<rt>もんだい</rt></ruby>を<ruby>小<rt>ちい</rt></ruby>さく<ruby>分<rt>わ</rt></ruby>けて、それぞれ<ruby>解<rt>と</rt></ruby>いて、<ruby>結合<rt>けつごう</rt></ruby>する<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<br>*(Tiếng Anh là divide and conquer. Chia bài toán nhỏ, giải từng phần rồi ghép lại.)* |
| Đại | なるほど、<ruby>理解<rt>りかい</rt></ruby>しました。ありがとうございます。<br>*(À, em hiểu rồi. Cảm ơn thầy.)* |
| Ohno | <ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>があれば、いつでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Từ nào không hiểu cứ hỏi bất cứ lúc nào.)* |

---

## Tình huống 4 — Canteen tầng 1 · 12:15, Yamato dạy `sorted()` Python

*Đại + Yamato + Lin Wei ngồi ăn karaage định食. Aiko đến ngồi cùng.*

| Vai | Lời thoại |
|---|---|
| Yamato | ダイ、<ruby>競技<rt>きょうぎ</rt></ruby>プログラミングなら quick sort を<ruby>手書<rt>てが</rt></ruby>きしなくていいぞ。<br>*(Đại à, lập trình thi đấu thì không cần tự viết quick sort đâu.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に? <ruby>授業<rt>じゅぎょう</rt></ruby>では<ruby>書<rt>か</rt></ruby>かされたけど。<br>*(Thật à? Trong lớp bị bắt viết mà.)* |
| Yamato | Python の `sorted()` は Timsort で<ruby>実装<rt>じっそう</rt></ruby>されている。<ruby>安定<rt>あんてい</rt></ruby>ソートで O(n log n)、C で<ruby>書<rt>か</rt></ruby>かれているから<ruby>圧倒的<rt>あっとうてき</rt></ruby>に<ruby>速<rt>はや</rt></ruby>い。<br>*(`sorted()` của Python cài bằng Timsort. Sắp xếp ổn định O(n log n), viết bằng C nên cực nhanh.)* |
| Lin Wei | (English) Yeah, in contests just `sorted(arr)`. Don''t reinvent the wheel.<br>*(Ờ, thi đấu cứ `sorted(arr)`. Đừng phát minh lại bánh xe.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。Timsort というのは<ruby>聞<rt>き</rt></ruby>いたことがなかった。<br>*(Học được bài hay. Timsort thì mình chưa từng nghe.)* |
| Aiko | (đến) <ruby>何<rt>なに</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>?<br>*(Đang nói chuyện gì vậy?)* |
| Yamato | ソートの<ruby>話<rt>はなし</rt></ruby>。<ruby>愛子<rt>あいこ</rt></ruby>には<ruby>関係<rt>かんけい</rt></ruby>ないから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Chuyện sort. Aiko không liên quan đâu, kệ đi.)* |
| Aiko | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>私<rt>わたし</rt></ruby>は Figma で<ruby>並<rt>なら</rt></ruby>べ<ruby>替<rt>か</rt></ruby>えるよ!<br>*(Cười. Mình sắp xếp bằng Figma!)* |

---

## Tình huống 5 — Giảng đường B2 · 13:00, hỏi sensei về binary search

| Vai | Lời thoại |
|---|---|
| Ohno | binary search は<ruby>探索範囲<rt>たんさくはんい</rt></ruby>を<ruby>毎回<rt>まいかい</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>に<ruby>絞<rt>しぼ</rt></ruby>るアルゴリズムで、O(log n) です。<br>*(Binary search là thuật toán thu hẹp phạm vi tìm kiếm còn một nửa mỗi lần, O(log n).)* |
| Ohno | ただし<ruby>前提条件<rt>ぜんていじょうけん</rt></ruby>があります。<br>*(Tuy nhiên có một điều kiện tiên quyết.)* |
| Đại | <ruby>事前<rt>じぜん</rt></ruby>にソート<ruby>済<rt>ず</rt></ruby>みであること、ですか?<br>*(Là phải sắp xếp trước, đúng không ạ?)* |
| Ohno | その<ruby>通<rt>とお</rt></ruby>り。Python の<ruby>標準<rt>ひょうじゅん</rt></ruby>ライブラリに `bisect` というモジュールがあって、<ruby>挿入位置<rt>そうにゅういち</rt></ruby>を O(log n) で<ruby>見<rt>み</rt></ruby>つけられます。<br>*(Chính xác. Thư viện chuẩn Python có module `bisect`, tìm vị trí chèn O(log n).)* |
| Đại | `bisect_left` と `bisect_right` の<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Khác biệt giữa `bisect_left` và `bisect_right` là gì ạ?)* |
| Ohno | <ruby>同<rt>おな</rt></ruby>じ<ruby>値<rt>あたい</rt></ruby>が<ruby>複数<rt>ふくすう</rt></ruby>あった<ruby>場合<rt>ばあい</rt></ruby>、left は<ruby>左端<rt>ひだりはし</rt></ruby>、right は<ruby>右端<rt>みぎはし</rt></ruby>の<ruby>挿入位置<rt>そうにゅういち</rt></ruby>を<ruby>返<rt>かえ</rt></ruby>します。<br>*(Khi có nhiều giá trị trùng, left trả vị trí chèn ngoài cùng bên trái, right ngoài cùng bên phải.)* |
| Đại | わかりました。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>で<ruby>使<rt>つか</rt></ruby>ってみます。<br>*(Em hiểu rồi. Bài tập tuần sau em sẽ thử dùng.)* |

---

## Tình huống 6 — Văn phòng sensei tầng 4 · 16:30, ghé văn phòng hỏi thêm

*Đại gõ cửa văn phòng Ohno-sensei sau giờ học.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>少々<rt>しょうしょう</rt></ruby>よろしいでしょうか。<br>*(Xin phép thầy. Thầy Ohno, thầy có rảnh ít phút không ạ?)* |
| Ohno | グエン<ruby>君<rt>くん</rt></ruby>、どうぞ。<ruby>何<rt>なに</rt></ruby>か?<br>*(Em Nguyễn à, vào đi. Gì vậy?)* |
| Đại | アルゴリズムの<ruby>独学<rt>どくがく</rt></ruby>に<ruby>適<rt>てき</rt></ruby>した<ruby>教材<rt>きょうざい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか。<br>*(Thầy có thể gợi ý giáo trình phù hợp để tự học thuật toán không ạ?)* |
| Ohno | そうですね。「アルゴ<ruby>式<rt>しき</rt></ruby>」というサイトはいかがですか? <ruby>無料<rt>むりょう</rt></ruby>で、<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>解説<rt>かいせつ</rt></ruby>もあります。<br>*(Để xem. Trang "Algo-shiki" thế nào? Miễn phí, có giải thích tiếng Nhật.)* |
| Đại | ありがとうございます。AtCoder の ABC は<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>参加<rt>さんか</rt></ruby>していますが、まだ<ruby>茶色<rt>ちゃいろ</rt></ruby>です。<br>*(Cảm ơn thầy ạ. AtCoder ABC em tham gia mỗi tuần, nhưng vẫn còn Brown.)* |
| Ohno | <ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>で<ruby>茶色<rt>ちゃいろ</rt></ruby>なら<ruby>立派<rt>りっぱ</rt></ruby>ですよ。<ruby>焦<rt>あせ</rt></ruby>らずに。<ruby>来年<rt>らいねん</rt></ruby>には<ruby>緑<rt>みどり</rt></ruby>になれるはずです。<br>*(Năm 1 mà Brown là giỏi rồi. Đừng nóng vội. Sang năm là có thể lên Green.)* |
| Đại | はい、<ruby>励<rt>はげ</rt></ruby>みになります。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, thầy động viên em quá. Em xin phép.)* |

---

## Tình huống 7 — Phòng trọ Toyonaka · Thứ 7 21:00, AtCoder ABC bắt đầu (LINE nhóm)

| Vai | Lời thoại |
|---|---|
| Yamato | (LINE group "OsakaCS3") ABC<ruby>始<rt>はじ</rt></ruby>まる!<ruby>全員<rt>ぜんいん</rt></ruby><ruby>参加<rt>さんか</rt></ruby>?<br>*(ABC bắt đầu! Cả nhóm tham gia chứ?)* |
| Đại | <ruby>参加<rt>さんか</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。VSCode<ruby>開<rt>ひら</rt></ruby>いた。<br>*(Đang tham gia. Mở VSCode rồi.)* |
| Lin Wei | Joined. Let''s go.<br>*(Tham gia rồi. Xông pha.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>は<ruby>応援団<rt>おうえんだん</rt></ruby>! ファイト!<br>*(Mình là cổ động viên! Fight!)* |
| Đại | (sau 30 phút) A、B AC! C は<ruby>難<rt>むずか</rt></ruby>しい...BFS<ruby>必要<rt>ひつよう</rt></ruby>。まだ<ruby>習<rt>なら</rt></ruby>ってない。<br>*(A, B AC! Bài C khó... cần BFS. Chưa học.)* |
| Yamato | A+B+C AC! C は BFS で<ruby>解<rt>と</rt></ruby>けた。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>で<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(A+B+C AC! Bài C giải bằng BFS được. Tháng sau Ohno-sensei sẽ dạy.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>独学<rt>どくがく</rt></ruby>する。<ruby>待<rt>ま</rt></ruby>てない。<br>*(Tớ mai tự học. Không chờ được.)* |
| Lin Wei | A+B+C+D AC. D was Dijkstra warm-up.<br>*(AC 4 bài. Bài D như khởi động Dijkstra.)* |
| Aiko | みんな<ruby>凄<rt>すご</rt></ruby>すぎ!<br>*(Mọi người ghê quá!)* |

---

## Tình huống 8 — Cafe Doutor Toyonaka · Chủ nhật 10:00, Đại giảng BFS cho Yamato

*Đại tự học BFS qua đêm, sáng hôm sau khoe Yamato ở Doutor.*

| Vai | Lời thoại |
|---|---|
| Đại | (mở laptop) <ruby>昨日<rt>きのう</rt></ruby>の C <ruby>問題<rt>もんだい</rt></ruby>、BFS で<ruby>解<rt>と</rt></ruby>けたよ。`deque` を<ruby>使<rt>つか</rt></ruby>った。<br>*(Bài C hôm qua, tớ giải bằng BFS được rồi. Dùng `deque`.)* |
| Yamato | お、<ruby>見<rt>み</rt></ruby>せて。<br>*(Ồ, xem nào.)* |
| Đại | `from collections import deque` で queue を<ruby>作<rt>つく</rt></ruby>って、`popleft()` で<ruby>先頭<rt>せんとう</rt></ruby>を O(1) で<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す。`list.pop(0)` だと O(n) で TLE になる。<br>*(Tạo queue bằng `deque`, dùng `popleft()` lấy đầu O(1). Nếu dùng `list.pop(0)` là O(n), sẽ TLE.)* |
| Yamato | <ruby>正解<rt>せいかい</rt></ruby>! その<ruby>違<rt>ちが</rt></ruby>いに<ruby>気<rt>き</rt></ruby>づくのが<ruby>大事<rt>だいじ</rt></ruby>。<ruby>独学<rt>どくがく</rt></ruby>でそこまで<ruby>分<rt>わ</rt></ruby>かるとは<ruby>偉<rt>えら</rt></ruby>いな。<br>*(Đúng rồi! Nhận ra điểm khác đó mới quan trọng. Tự học đến mức đó giỏi đấy.)* |
| Đại | (cười) <ruby>褒<rt>ほ</rt></ruby>めすぎ。コーヒーおごるから、DP も<ruby>教<rt>おし</rt></ruby>えて?<br>*(Khen quá. Tớ bao cà phê, dạy tớ DP đi?)* |
| Yamato | DP は<ruby>来月<rt>らいげつ</rt></ruby>の lecture を<ruby>待<rt>ま</rt></ruby>つほうがいい。<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>解説<rt>かいせつ</rt></ruby>が<ruby>絶妙<rt>ぜつみょう</rt></ruby>だから。<br>*(DP thì đợi lecture tháng sau hay hơn. Ohno-sensei giảng tuyệt cú mèo.)* |

---

## Tình huống 9 — Hành lang khoa CS · Thứ 2 8:50, Lin Wei khoe rating Cyan

| Vai | Lời thoại |
|---|---|
| Lin Wei | (chìa điện thoại) Dai! Look, I''m Cyan now — 1305!<br>*(Đại! Nhìn này, tớ Cyan rồi — 1305!)* |
| Đại | おお、おめでとう! <ruby>速<rt>はや</rt></ruby>いね。<br>*(Ồ, chúc mừng! Lên nhanh ghê.)* |
| Yamato | （<ruby>悔<rt>くや</rt></ruby>しそう）<ruby>俺<rt>おれ</rt></ruby>はまだ<ruby>緑<rt>みどり</rt></ruby>1100…リン・ウェイには<ruby>追<rt>お</rt></ruby>いつけない。<br>*(Tiếc rẻ. Tớ vẫn Green 1100... không đuổi kịp Lin Wei.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は<ruby>茶色<rt>ちゃいろ</rt></ruby>750。<ruby>年<rt>ねん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>緑<rt>みどり</rt></ruby>になりたい。<br>*(Tớ Brown 750. Trong năm muốn lên Green.)* |
| Lin Wei | Brown after 1 month is normal. Just keep coming to ABC every Saturday.<br>*(Brown sau 1 tháng là bình thường. Cứ chăm tham gia ABC mỗi thứ 7.)* |
| Đại | アドバイスありがとう。<br>*(Cảm ơn lời khuyên.)* |

---

## Tình huống 10 — Lecture · Thứ 4 10:00, Ohno gọi Đại lên giải bài

| Vai | Lời thoại |
|---|---|
| Ohno | グエン<ruby>君<rt>くん</rt></ruby>、この<ruby>配列<rt>はいれつ</rt></ruby>を quicksort で<ruby>並<rt>なら</rt></ruby>べ<ruby>替<rt>か</rt></ruby>える<ruby>過程<rt>かてい</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>してくれますか?<br>*(Em Nguyễn, giải thích quá trình quick sort sắp xếp mảng này được không?)* |
| Đại | はい。まず pivot を<ruby>中央<rt>ちゅうおう</rt></ruby>の<ruby>要素<rt>ようそ</rt></ruby>に<ruby>選<rt>えら</rt></ruby>びます。<ruby>例<rt>たと</rt></ruby>えば [3, 6, 1, 8, 2, 7, 4] なら pivot = 8 です。<br>*(Vâng. Đầu tiên chọn pivot là phần tử giữa. Ví dụ [3,6,1,8,2,7,4] thì pivot = 8.)* |
| Đại | <ruby>次<rt>つぎ</rt></ruby>に pivot より<ruby>小<rt>ちい</rt></ruby>さい<ruby>要素<rt>ようそ</rt></ruby>を<ruby>左<rt>ひだり</rt></ruby>、<ruby>大<rt>おお</rt></ruby>きい<ruby>要素<rt>ようそ</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けます。これを<ruby>再帰的<rt>さいきてき</rt></ruby>に<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>します。<br>*(Tiếp theo, chia phần tử nhỏ hơn pivot sang trái, lớn hơn sang phải. Lặp đệ quy.)* |
| Ohno | <ruby>最悪<rt>さいあく</rt></ruby><ruby>計算量<rt>けいさんりょう</rt></ruby>はいつ<ruby>発生<rt>はっせい</rt></ruby>しますか?<br>*(Khi nào xảy ra trường hợp xấu nhất?)* |
| Đại | pivot が<ruby>常<rt>つね</rt></ruby>に<ruby>最大<rt>さいだい</rt></ruby>または<ruby>最小<rt>さいしょう</rt></ruby><ruby>要素<rt>ようそ</rt></ruby>になる<ruby>場合<rt>ばあい</rt></ruby>、つまり<ruby>既<rt>すで</rt></ruby>にソート<ruby>済<rt>ず</rt></ruby>みの<ruby>配列<rt>はいれつ</rt></ruby>で<ruby>端<rt>はし</rt></ruby>を pivot にする<ruby>場合<rt>ばあい</rt></ruby>です。<br>*(Khi pivot luôn là phần tử lớn nhất hoặc nhỏ nhất, tức là mảng đã sắp sẵn mà chọn pivot ở đầu/cuối.)* |
| Ohno | よく<ruby>整理<rt>せいり</rt></ruby>されています。<ruby>満点<rt>まんてん</rt></ruby>。<br>*(Trình bày tốt. Điểm tối đa.)* |

---

## Tình huống 11 — Konbini Lawson Senrichūō · Thứ 6 22:00, mua Red Bull (Suzuki tenchō cũ)

*Đại ghé Lawson cũ — Suzuki tenchō vẫn nhớ Đại.*

| Vai | Lời thoại |
|---|---|
| Đại | (vào cửa) こんばんは、お<ruby>久<rt>ひさ</rt></ruby>しぶりです。<br>*(Chào buổi tối, lâu quá không gặp ạ.)* |
| Suzuki | ダイ<ruby>君<rt>くん</rt></ruby>! <ruby>大学<rt>だいがく</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>はどう?<br>*(Đại! Học đại học sao rồi?)* |
| Đại | アルゴリズムの<ruby>授業<rt>じゅぎょう</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>です。<ruby>今夜<rt>こんや</rt></ruby>も<ruby>徹夜<rt>てつや</rt></ruby>で<ruby>課題<rt>かだい</rt></ruby>です。<br>*(Lớp thuật toán vất vả lắm. Tối nay lại thức trắng làm bài tập.)* |
| Suzuki | レッドブル<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>、おまけしておくよ。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(2 lon Red Bull tôi tặng nhé. Cố lên.)* |
| Đại | え、いいんですか? ありがとうございます!<br>*(Ơ, được ạ? Cảm ơn anh!)* |
| Suzuki | バイトを<ruby>辞<rt>や</rt></ruby>めても、ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby>みたいなものだから。<br>*(Em nghỉ làm rồi nhưng Đại như người nhà mà.)* |
| Đại | <ruby>嬉<rt>うれ</rt></ruby>しいです。また<ruby>顔<rt>かお</rt></ruby><ruby>出<rt>だ</rt></ruby>します。<br>*(Em vui quá. Em sẽ ghé thăm.)* |

---

## Tình huống 12 — Phòng trọ Toyonaka · Khuya thứ 7 23:30, gọi điện Mai (cảnh tiếng Việt)

*Sau ABC, Đại gọi video Mai ở Hà Nội. Cả hai nói tiếng Việt, chêm từ Nhật đã học trong ngày.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay ABC sao rồi? Lên rating không? |
| Đại | (tiếng Việt) Anh AC hai bài thôi, lên 25 điểm. Bài C cần BFS — `breadth-first search`, anh chưa học. Mai chưa lên rating ngon được. |
| Mai | (tiếng Việt) BFS là gì hả anh? |
| Đại | (tiếng Việt) Là duyệt đồ thị theo từng tầng, dùng hàng đợi — `deque` ấy. Sensei Ohno bảo tháng sau mới dạy nhưng anh tự học trước. |
| Mai | (tiếng Việt) Anh chăm thế. Sensei có khen anh không? |
| Đại | (tiếng Việt) Hôm nay sensei gọi anh lên bảng viết Bubble sort với giải thích Quicksort. Sensei khen "完璧です" — hoàn hảo. Anh sướng cả ngày. |
| Mai | (tiếng Việt) Em mừng quá! À, mẹ em hôm nay đo áo dài rồi. 7 tháng nữa cưới đấy anh. |
| Đại | (tiếng Việt) Anh nhớ. Đầu năm 2027 anh về. Cố sống một mình thêm 7 tháng nữa thôi. |
| Mai | (tiếng Việt) Anh ngủ sớm đi. Đừng thức làm bài đến sáng nữa. |
| Đại | (tiếng Việt) Ừ, anh uống nốt lon Red Bull rồi đi ngủ. Anh thương em. |

---

## Đọng lại chương 5

Đại làm quen với phong cách lecture đại học CS Nhật: sensei viết công thức trên bảng, gọi sinh viên lên giải. Mẫu câu **「<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか」** (xin phép đặt câu hỏi) mở đầu mọi tương tác với Ohno-sensei. Khi không hiểu thuật ngữ, Đại dùng **「〜というのは?」** (cái đó nghĩa là gì?) — câu cứu mạng du học sinh. Lên bảng giải thích, Đại dùng **「〜と理解してよろしいでしょうか」** để xác nhận hiểu đúng. Trong LINE nhóm AtCoder, ngôn ngữ rút gọn: **「<ruby>参加<rt>さんか</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>」「AC!」「TLEになる」**. Khi tự học BFS qua đêm và giảng lại cho Yamato, Đại hiểu mình đã nắm vững. Tại văn phòng sensei, Đại học **「<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>少々<rt>しょうしょう</rt></ruby>よろしいでしょうか」** — câu gõ cửa keigo chuẩn. Cuối tuần ghé Lawson cũ chào Suzuki tenchō, được tặng Red Bull. Đêm khuya gọi Mai khoe sensei khen **「<ruby>完璧<rt>かんぺき</rt></ruby>です」**.

> Từ vựng & mẫu câu chương này: <ruby>計算量<rt>けいさんりょう</rt></ruby>・Big O・<ruby>定数時間<rt>ていすうじかん</rt></ruby>・<ruby>対数時間<rt>たいすうじかん</rt></ruby>・<ruby>分割統治法<rt>ぶんかつとうちほう</rt></ruby>・<ruby>再帰的<rt>さいきてき</rt></ruby>・<ruby>探索範囲<rt>たんさくはんい</rt></ruby>・<ruby>事前<rt>じぜん</rt></ruby>にソート<ruby>済<rt>ず</rt></ruby>み・<ruby>挿入位置<rt>そうにゅういち</rt></ruby>・bisect・deque・Timsort・〜してもよろしいでしょうか・〜というのは?・〜と<ruby>理解<rt>りかい</rt></ruby>してよろしいでしょうか・<ruby>失礼<rt>しつれい</rt></ruby>します・<ruby>励<rt>はげ</rt></ruby>みになります・<ruby>完璧<rt>かんぺき</rt></ruby>です・お<ruby>久<rt>ひさ</rt></ruby>しぶりです

## Bí quyết chương

- **Keigo lecture**: Đại học Nhật còn dùng keigo cứng khi hỏi sensei. `〜させていただきます` khi lên bảng, `〜よろしいでしょうか` khi xin phép.
- **Thuật ngữ kỹ thuật giữ EN, bao quanh là JP**: pivot, BFS, Timsort giữ nguyên — `Python の sorted() は Timsort で実装されている`.
- **「〜というのは?」 là vũ khí**: Du học sinh không hiểu từ chuyên ngành cứ hỏi thẳng. Sensei sẽ giải thích lại bằng EN nếu cần.
- **LINE nhóm AtCoder**: Văn phong rút gọn, không keigo. `参加中`, `AC!`, `TLE` thay vì câu đầy đủ.
- **Cảnh VN cuối**: Mai không hiểu BFS nhưng vẫn quan tâm tiến độ Đại — đây là phần thưởng cảm xúc cuối ngày.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 計算量 | けいさんりょう | KẾ TOÁN LƯỢNG | độ phức tạp |
| 記法 | きほう | KÝ PHÁP | ký pháp |
| 効率 | こうりつ | HIỆU SUẤT | hiệu năng |
| 道具 | どうぐ | ĐẠO CỤ | công cụ |
| 定数時間 | ていすうじかん | ĐỊNH SỐ THỜI GIAN | thời gian hằng số |
| 対数時間 | たいすうじかん | ĐỐI SỐ THỜI GIAN | thời gian logarit |
| 二乗時間 | にじょうじかん | NHỊ THỪA THỜI GIAN | thời gian bậc hai |
| 平均 | へいきん | BÌNH QUÂN | trung bình |
| 最悪 | さいあく | TỐI ÁC | xấu nhất |
| 理解 | りかい | LÝ GIẢI | hiểu |
| 国籍 | こくせき | QUỐC TỊCH | quốc tịch |
| 黒板 | こくばん | HẮC BẢN | bảng đen |
| 二重 | にじゅう | NHỊ TRỌNG | đôi, lồng |
| 隣同士 | となりどうし | LÂN ĐỒNG SỸ | hai phần tử kề |
| 比較 | ひかく | TỈ GIẢC | so sánh |
| 最良 | さいりょう | TỐI LƯƠNG | tốt nhất |
| 整列 | せいれつ | CHỈNH LIỆT | đã sắp xếp |
| 調子 | ちょうし | ĐIỀU TỬ | phong độ |
| 分割統治法 | ぶんかつとうちほう | PHÂN CÁT THỐNG TRỊ PHÁP | divide and conquer |
| 配列 | はいれつ | PHỐI LIỆT | mảng |
| 半分 | はんぶん | BÁN PHẦN | một nửa |
| 再帰的 | さいきてき | TÁI QUY ĐÍCH | đệ quy |
| 結合 | けつごう | KẾT HỢP | ghép |
| 安定 | あんてい | AN ĐỊNH | ổn định |
| 圧倒的 | あっとうてき | ÁP ĐẢO ĐÍCH | áp đảo |
| 関係 | かんけい | QUAN HỆ | liên quan |
| 探索範囲 | たんさくはんい | THÁM TÁC PHẠM VI | phạm vi tìm kiếm |
| 絞る | しぼる | GIẢO | thu hẹp |
| 前提条件 | ぜんていじょうけん | TIỀN ĐỀ ĐIỀU KIỆN | điều kiện tiên quyết |
| 挿入位置 | そうにゅういち | SÁP NHẬP VỊ TRÍ | vị trí chèn |
| 違い | ちがい | VI | khác biệt |
| 複数 | ふくすう | PHỨC SỐ | nhiều |
| 失礼 | しつれい | THẤT LỄ | thất lễ |
| 少々 | しょうしょう | THIẾU THIẾU | một chút |
| 独学 | どくがく | ĐỘC HỌC | tự học |
| 適 | てき | THÍCH | thích hợp |
| 教材 | きょうざい | GIÁO TÀI | giáo trình |
| 解説 | かいせつ | GIẢI THUYẾT | giải thích |
| 立派 | りっぱ | LẬP PHÁI | giỏi |
| 焦らず | あせらず | TIÊU | đừng vội |
| 励み | はげみ | LỆ | động viên |
| 応援団 | おうえんだん | ỨNG VIỆN ĐOÀN | cổ động viên |
| 必要 | ひつよう | TẤT YẾU | cần thiết |
| 先頭 | せんとう | TIÊN ĐẦU | đầu |
| 偉い | えらい | VĨ | giỏi |
| 絶妙 | ぜつみょう | TUYỆT DIỆU | tuyệt diệu |
| 悔しい | くやしい | HỐI | tiếc rẻ |
| 過程 | かてい | QUÁ TRÌNH | quá trình |
| 中央 | ちゅうおう | TRUNG ƯƠNG | trung tâm |
| 要素 | ようそ | YẾU TỐ | phần tử |
| 発生 | はっせい | PHÁT SINH | xảy ra |
| 最大 | さいだい | TỐI ĐẠI | lớn nhất |
| 最小 | さいしょう | TỐI TIỂU | nhỏ nhất |
| 端 | はし | ĐOAN | đầu/cuối |
| 整理 | せいり | CHỈNH LÝ | tổ chức, trình bày |
| 満点 | まんてん | MÃN ĐIỂM | điểm tối đa |
| 徹夜 | てつや | TRIỆT DẠ | thức trắng |
| 家族 | かぞく | GIA TỘC | gia đình |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000006, 800000021, NULL, 'markdown_book', 'T6. Nghỉ Lawson, chuyển sang gia sư lập trình (家庭教師バイト)', '# Sách sinh viên Đại học Osaka · T6. Nghỉ Lawson, chuyển sang gia sư lập trình (家庭教師バイト)

> **Mục tiêu nhân vật:** Đại (21t, ĐH Osaka năm 1, hè 7-8/2026, N2) học các mẫu hội thoại tiếng Nhật trong giai đoạn chuyển baito: (1) báo nghỉ việc với tenchō konbini — keigo trang trọng, (2) phỏng vấn đăng ký app gia sư PreSchool VN-Japan, (3) tự giới thiệu hồ sơ sensei với phụ huynh, (4) onboard học sinh người Nhật (1 em THPT Osaka muốn học Python), (5) báo cáo tiến độ với điều phối viên app, (6) cảnh tiếng Việt — gọi điện em gái Linh-Anh ở Toyota Boshoku Nagoya.

---

## Bối cảnh

Hè 7-8/2026, kỳ nghỉ 8 tuần đầu tiên của Đại ở ĐH Osaka. Sau 2 năm làm Lawson Namba từ thời trường tiếng (¥1100/h), Đại quyết nghỉ để chuyển sang gia sư lập trình online qua app PreSchool VN-Japan (¥2500/h). Học viên gồm em gái Linh-Anh (vừa vào Toyota Boshoku Nagoya làm data analyst), Tuấn-em (Kobe U Kinh tế năm 1, muốn 編入 sang CS), 2 em THPT Hà Nội, 1 em THPT Nhật ở Osaka và 1 anh đã đi làm IT. Chương này tập trung mẫu câu **báo nghỉ việc keigo**, **phỏng vấn đăng ký nền tảng** và **dạy 1-1 online bằng tiếng Nhật**.

---

## Tình huống 1 — Lawson Namba văn phòng tenchō · 17:00, báo nghỉ việc

*Đại đến Lawson 30 phút trước ca làm để nói chuyện riêng với Suzuki tenchō.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ cửa) <ruby>店長<rt>てんちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いただけますか。<br>*(Anh tenchō, em xin một chút thời gian được không ạ?)* |
| Suzuki | おう、ダイ<ruby>君<rt>くん</rt></ruby>、どうした?<br>*(Ờ, Đại à, có việc gì?)* |
| Đại | <ruby>実<rt>じつ</rt></ruby>は、<ruby>来月<rt>らいげつ</rt></ruby>からアルバイトを<ruby>辞<rt>や</rt></ruby>めさせていただきたいのですが…<br>*(Thật ra, từ tháng sau em muốn xin nghỉ baito ạ...)* |
| Suzuki | え! <ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いてくれたのに!<ruby>何<rt>なに</rt></ruby>か<ruby>問題<rt>もんだい</rt></ruby>があった?<br>*(Hả! Em đã làm 2 năm rồi mà! Có vấn đề gì sao?)* |
| Đại | いえ、<ruby>店長<rt>てんちょう</rt></ruby>には<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>大学<rt>だいがく</rt></ruby>の<ruby>専攻<rt>せんこう</rt></ruby>に<ruby>関連<rt>かんれん</rt></ruby>するプログラミングの<ruby>家庭教師<rt>かていきょうし</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めたいんです。<br>*(Không, em rất biết ơn tenchō. Em muốn bắt đầu làm gia sư lập trình để liên kết với chuyên ngành ở đại học.)* |
| Suzuki | なるほど、それはいい<ruby>判断<rt>はんだん</rt></ruby>だ。<ruby>時給<rt>じきゅう</rt></ruby>はいくら?<br>*(À, quyết định đúng đấy. Lương theo giờ bao nhiêu?)* |
| Đại | ¥2,500です。<ruby>店長<rt>てんちょう</rt></ruby>のところよりも<ruby>倍以上<rt>ばいいじょう</rt></ruby>です。<br>*(¥2,500 ạ. Hơn gấp đôi ở chỗ tenchō.)* |
| Suzuki | <ruby>立派<rt>りっぱ</rt></ruby>だ! いつまで<ruby>働<rt>はたら</rt></ruby>けるんだ?<br>*(Giỏi đấy! Làm đến khi nào được?)* |
| Đại | <ruby>7月末<rt>しちがつまつ</rt></ruby>までお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎはしっかりやらせていただきます。<br>*(Đến cuối tháng 7 ạ. Bàn giao em sẽ làm cẩn thận.)* |
| Suzuki | わかった。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>頼<rt>たの</rt></ruby>むぞ。<br>*(Hiểu rồi. Đến cuối nhờ em nhé.)* |

---

## Tình huống 2 — Lawson sàn bán hàng · 22:00, chia tay đồng nghiệp

*Ca cuối cùng của Đại. Đồng nghiệp Watanabe-san (sempai 4 năm) và Kim-san (du học sinh Hàn Quốc) chuẩn bị bánh nhỏ.*

| Vai | Lời thoại |
|---|---|
| Watanabe | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Đại, 2 năm rồi đó, cảm ơn em đã vất vả.)* |
| Đại | こちらこそ、<ruby>渡辺<rt>わたなべ</rt></ruby>さんに<ruby>色々<rt>いろいろ</rt></ruby><ruby>教<rt>おし</rt></ruby>えていただいて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Em mới phải cảm ơn chị. Chị đã chỉ em rất nhiều thứ.)* |
| Kim | ダイ<ruby>先輩<rt>せんぱい</rt></ruby>、レジの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれてありがとうございました。<br>*(Anh Đại, anh đã chỉ em cách dùng máy tính tiền rất tận tình. Cảm ơn anh.)* |
| Đại | キム<ruby>君<rt>くん</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>って。N1も<ruby>応援<rt>おうえん</rt></ruby>してます。<br>*(Kim, cố lên nhé. Anh ủng hộ em thi N1.)* |
| Watanabe | (đưa bánh dorayaki) これ、ささやかだけど、お<ruby>祝<rt>いわ</rt></ruby>いの<ruby>気持<rt>きも</rt></ruby>ち。<br>*(Cái này nhỏ thôi, là chút lòng chúc mừng.)* |
| Đại | わぁ、ありがとうございます! <ruby>泣<rt>な</rt></ruby>きそうです。<br>*(Ôi, cảm ơn chị! Em sắp khóc luôn.)* |
| Suzuki | (đến) <ruby>今後<rt>こんご</rt></ruby>とも<ruby>顔<rt>かお</rt></ruby><ruby>出<rt>だ</rt></ruby>しに<ruby>来<rt>こ</rt></ruby>いよ。お<ruby>客<rt>きゃく</rt></ruby>として<ruby>歓迎<rt>かんげい</rt></ruby>するから。<br>*(Sau này cứ ghé chơi. Đến với tư cách khách thì tao đón.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず!<br>*(Vâng, nhất định ạ!)* |

---

## Tình huống 3 — Phòng trọ Toyonaka · 14:00, phỏng vấn Zoom với điều phối viên PreSchool

*Đại đăng ký app PreSchool VN-Japan, có buổi phỏng vấn với điều phối viên Tanaka-san.*

| Vai | Lời thoại |
|---|---|
| Tanaka (PreSchool) | グエン・ヴァン・ダイさんですね。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Nguyễn Thanh Đại đúng không. Hôm nay nhờ anh nhé.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nhờ chị.)* |
| Tanaka | <ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh tự giới thiệu nhé.)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>のグエン・ヴァン・ダイです。<ruby>専門<rt>せんもん</rt></ruby>はアルゴリズムと Python、AtCoder<ruby>茶色<rt>ちゃいろ</rt></ruby>です。<br>*(Em là Nguyễn Văn Đại, năm 1 khoa Khoa học Thông tin ĐH Osaka. Chuyên về thuật toán và Python, AtCoder Brown.)* |
| Tanaka | <ruby>日本語<rt>にほんご</rt></ruby>は N2 でよろしいですか?<br>*(Tiếng Nhật N2 đúng không?)* |
| Đại | はい、<ruby>昨年<rt>さくねん</rt></ruby>12<ruby>月<rt>がつ</rt></ruby>に N2 を<ruby>取得<rt>しゅとく</rt></ruby>しました。N1 は<ruby>来年<rt>らいねん</rt></ruby><ruby>受<rt>う</rt></ruby>けます。<br>*(Vâng, tháng 12 năm ngoái em đỗ N2. N1 năm sau em thi.)* |
| Tanaka | <ruby>担当<rt>たんとう</rt></ruby>できる<ruby>言語<rt>げんご</rt></ruby>は?<br>*(Ngôn ngữ phụ trách được?)* |
| Đại | Python、<ruby>初歩<rt>しょほ</rt></ruby>の Java、HTML/CSS、SQL です。<br>*(Python, Java cơ bản, HTML/CSS, SQL ạ.)* |
| Tanaka | <ruby>料金<rt>りょうきん</rt></ruby>は¥2,500/<ruby>時間<rt>じかん</rt></ruby>でよろしいですか?<br>*(Giá ¥2500/giờ được không?)* |
| Đại | はい、それで<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>には<ruby>割引<rt>わりびき</rt></ruby>も<ruby>可能<rt>かのう</rt></ruby>です。<br>*(Vâng, vậy là được ạ. Với du học sinh em có thể giảm giá.)* |
| Tanaka | わかりました。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>応募<rt>おうぼ</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まります。<br>*(Hiểu rồi. Tuần sau bắt đầu nhận đăng ký học viên.)* |

---

## Tình huống 4 — Phòng trọ · 9:00 chủ nhật, buổi đầu dạy Linh-Anh (Zoom, tiếng Việt + JP technical)

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (Zoom, VN) Anh ơi, em mở Jupyter rồi. Bắt đầu được chưa anh? |
| Đại | (VN) Được rồi. Hôm nay học pandas — `import pandas as pd`. Em gõ theo anh. |
| Linh-Anh | (VN) Sếp em bảo Toyota Boshoku có file CSV doanh thu 6 tháng, em cần phân tích. |
| Đại | (VN) Quá hợp. `df = pd.read_csv(''sales.csv'')` rồi `df.head()` để xem 5 dòng đầu. |
| Linh-Anh | (VN) Ô! Một dòng đọc cả file. Excel của em mở mất 15 giây. |
| Đại | (VN) Tiếp: `df.groupby(''region'')[''amount''].sum()` = Pivot Table của Excel, nhưng tự động. |
| Linh-Anh | (VN) Trời, em làm tay 4 tiếng cái này. Giờ 30 giây xong! |
| Đại | (VN) Tuần sau anh dạy `matplotlib.pyplot` để vẽ bar chart tự động cho báo cáo sếp. |
| Linh-Anh | (VN) Anh thật là cứu tinh. Em chuyển ¥5000 deposit qua PayPay anh nhé. |
| Đại | (VN) Em ruột mà, anh không lấy. |
| Linh-Anh | (VN) Không, em trả nguyên giá. Anh ủng hộ kinh tế anh đi! |

---

## Tình huống 5 — Cafe Tully''s Senrichūō · 15:00, gặp mẹ học sinh Nhật

*Đại có học sinh Nhật đầu tiên — Saito Kenta (17t, THPT Kitano). Mẹ Kenta đặt buổi gặp trực tiếp trước khi thuê.*

| Vai | Lời thoại |
|---|---|
| Mẹ Saito | グエン<ruby>先生<rt>せんせい</rt></ruby>ですね。<ruby>初<rt>はじ</rt></ruby>めまして、<ruby>斉藤<rt>さいとう</rt></ruby><ruby>健太<rt>けんた</rt></ruby>の<ruby>母<rt>はは</rt></ruby>です。<br>*(Thầy Nguyễn phải không. Lần đầu gặp, tôi là mẹ của Saito Kenta.)* |
| Đại | <ruby>初<rt>はじ</rt></ruby>めまして、グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp, em tên là Nguyễn Thanh Đại. Xin được nhờ chị.)* |
| Mẹ Saito | <ruby>息子<rt>むすこ</rt></ruby>は<ruby>京都大学<rt>きょうとだいがく</rt></ruby><ruby>情報学科<rt>じょうほうがっか</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>しています。Python と<ruby>競技<rt>きょうぎ</rt></ruby>プログラミングを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cháu nhắm khoa CNTT ĐH Kyoto. Thầy có thể dạy Python và lập trình thi đấu không?)* |
| Đại | はい、<ruby>得意分野<rt>とくいぶんや</rt></ruby>です。AtCoder の ABC を<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>参加<rt>さんか</rt></ruby>していますので、<ruby>過去問<rt>かこもん</rt></ruby><ruby>解説<rt>かいせつ</rt></ruby>もできます。<br>*(Vâng, đây là sở trường của em. Em tham gia ABC AtCoder mỗi tuần nên cũng có thể giải bài cũ.)* |
| Mẹ Saito | <ruby>料金<rt>りょうきん</rt></ruby>は¥2,500/<ruby>時間<rt>じかん</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>っていますが、<ruby>週<rt>しゅう</rt></ruby>2<ruby>回<rt>かい</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Giá ¥2500/giờ tôi nghe nói rồi, có thể tuần 2 lần được không?)* |
| Đại | はい、<ruby>火曜<rt>かよう</rt></ruby>と<ruby>金曜<rt>きんよう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>でいかがでしょうか。<br>*(Vâng, thứ 3 và thứ 6 buổi tối thì sao ạ?)* |
| Mẹ Saito | <ruby>結構<rt>けっこう</rt></ruby>です。<ruby>健太<rt>けんた</rt></ruby>をよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Được ạ. Nhờ thầy chăm Kenta.)* |
| Đại | こちらこそ、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>らせていただきます。<br>*(Em mới phải nhờ chị, em sẽ cố gắng hết sức ạ.)* |

---

## Tình huống 6 — Zoom với Kenta · Thứ 3 20:00, buổi 1 dạy AtCoder

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>健太<rt>けんた</rt></ruby><ruby>君<rt>くん</rt></ruby>、こんばんは。<ruby>今夜<rt>こんや</rt></ruby>は AtCoder の ABC<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>解<rt>と</rt></ruby>いていきましょう。<br>*(Em Kenta, chào buổi tối. Tối nay mình giải ABC quá khứ nhé.)* |
| Kenta | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>先生<rt>せんせい</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>色<rt>いろ</rt></ruby>ですか?<br>*(Vâng, nhờ thầy. Thầy màu gì ạ?)* |
| Đại | <ruby>茶色<rt>ちゃいろ</rt></ruby>です。<ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>なので、まだまだ<ruby>修業<rt>しゅぎょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。<ruby>君<rt>きみ</rt></ruby>は?<br>*(Brown. Còn năm 1 nên đang luyện. Em sao?)* |
| Kenta | <ruby>灰色<rt>はいいろ</rt></ruby>です。A<ruby>問題<rt>もんだい</rt></ruby>は<ruby>解<rt>と</rt></ruby>けますが、B<ruby>問題<rt>もんだい</rt></ruby>で<ruby>止<rt>と</rt></ruby>まります。<br>*(Em Gray. Bài A giải được nhưng đến bài B là tắc.)* |
| Đại | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、B<ruby>問題<rt>もんだい</rt></ruby>のパターンを<ruby>覚<rt>おぼ</rt></ruby>えればすぐに<ruby>茶色<rt>ちゃいろ</rt></ruby>になれますよ。<br>*(Không sao, nhớ pattern bài B là lên Brown ngay.)* |
| Đại | (share screen) ABC 350-B を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>解<rt>と</rt></ruby>きましょう。<ruby>問題文<rt>もんだいぶん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>読<rt>よ</rt></ruby>んでください。<br>*(Cùng giải ABC 350-B. Em đọc to đề ra nhé.)* |
| Kenta | (đọc) 「N <ruby>個<rt>こ</rt></ruby>の<ruby>整数<rt>せいすう</rt></ruby>がある。 <ruby>偶数<rt>ぐうすう</rt></ruby>の<ruby>個数<rt>こすう</rt></ruby>を<ruby>出力<rt>しゅつりょく</rt></ruby>せよ」<br>*(Có N số nguyên. Xuất số lượng số chẵn.)* |
| Đại | では、どうやって<ruby>解<rt>と</rt></ruby>く?<br>*(Vậy giải sao?)* |
| Kenta | for ループで `if x % 2 == 0` をチェックして<ruby>数<rt>かぞ</rt></ruby>えます。<br>*(For loop, kiểm tra `if x % 2 == 0` rồi đếm.)* |
| Đại | <ruby>正解<rt>せいかい</rt></ruby>! <ruby>更<rt>さら</rt></ruby>に Python っぽく<ruby>書<rt>か</rt></ruby>くなら `sum(1 for x in arr if x % 2 == 0)` でワンライナーです。<br>*(Đúng! Cách Python hơn nữa là `sum(1 for x in arr if x % 2 == 0)` — một dòng.)* |

---

## Tình huống 7 — Discord với Tuấn-em · Thứ 4 21:00, ôn 編入 CS

*Tuấn (Kobe U Kinh tế năm 1) muốn chuyển sang CS năm 3 qua 編入.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (Discord voice, VN) Anh Đại! Em xin lịch giờ này được không? Em đang nghiên cứu編入 sang CS năm 3. |
| Đại | (VN) Được. 編入 thi gồm thuật toán, toán rời rạc, tiếng Anh. Em yếu nhất phần nào? |
| Tuấn | (VN) Thuật toán em yếu nhất. Hiện em chỉ biết Python basic. |
| Đại | (VN) OK. Anh recommend lộ trình 6 tháng: Tháng 1-2 mảng + chuỗi, tháng 3-4 sort/search + đệ quy, tháng 5 BFS/DFS, tháng 6 DP cơ bản. |
| Tuấn | (VN) Em theo được không anh? Em ngu lắm. |
| Đại | (VN) Tuấn-em, hồi mày học trường tiếng mày đã chăm hơn anh rồi. Đừng nói ngu. Anh kèm mày 2h/tuần ¥2500/h. |
| Tuấn | (VN) ¥2500/h em trả nguyên giá. Cảm ơn anh nhiều. |
| Đại | (VN) Mục tiêu cuối cùng: 編入 ĐH Osaka CS năm 3. Sách giáo trình "アルゴリズムイントロダクション" (CLRS bản Nhật). Em mua chưa? |
| Tuấn | (VN) Mai em ra Junkudo Sannomiya mua ngay. |

---

## Tình huống 8 — Konbini gần ga Toyonaka · 23:00, gặp Tony homestay cũ

*Đại tình cờ gặp Tony (chủ homestay cũ thời sách 19-20) ở Family Mart.*

| Vai | Lời thoại |
|---|---|
| Tony | あ、ダイ<ruby>君<rt>くん</rt></ruby>! <ruby>偶然<rt>ぐうぜん</rt></ruby>だな。<ruby>最近<rt>さいきん</rt></ruby>どう?<br>*(A, Đại! Tình cờ ghê. Dạo này sao rồi?)* |
| Đại | トニーさん! <ruby>家庭教師<rt>かていきょうし</rt></ruby>のバイトを<ruby>始<rt>はじ</rt></ruby>めたんですよ。Python を<ruby>教<rt>おし</rt></ruby>えています。<br>*(Anh Tony! Em mới bắt đầu làm gia sư Python.)* |
| Tony | おー、それは<ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>由美<rt>ゆみ</rt></ruby>も<ruby>喜<rt>よろこ</rt></ruby>ぶよ。<ruby>今度<rt>こんど</rt></ruby><ruby>家<rt>うち</rt></ruby>に<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>こ</rt></ruby>い。<ruby>晩<rt>ばん</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby><ruby>食<rt>た</rt></ruby>べに。<br>*(Ồ, tuyệt vời! Yumi cũng sẽ vui. Lần tới ghé chơi nhà, ăn tối.)* |
| Đại | <ruby>是非<rt>ぜひ</rt></ruby>! <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜<rt>きんよう</rt></ruby>はいかがですか?<br>*(Em xin! Thứ 6 tuần sau thế nào ạ?)* |
| Tony | OK、19<ruby>時<rt>じ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby><ruby>来<rt>こ</rt></ruby>い。<ruby>由美<rt>ゆみ</rt></ruby>がベトナム<ruby>料理<rt>りょうり</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るって。<br>*(OK, 19h đến nhé. Yumi nói sẽ nấu món Việt.)* |
| Đại | (cảm động) ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>家族<rt>かぞく</rt></ruby>みたいです。<br>*(Cảm ơn anh. Đúng là như gia đình em vậy.)* |

---

## Tình huống 9 — Phòng trọ · Chủ nhật 15:00, dạy 2 em THPT Hà Nội (Zoom đa người)

*Đại dạy nhóm 2 em THPT Hà Nội (lớp 10): An và Bình. Phụ huynh giới thiệu qua Linh-Anh.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Chào An, chào Bình. Hôm nay buổi đầu, mình học Python cơ bản. Hai em đã cài Python chưa? |
| An | (VN) Em cài rồi anh ạ. VSCode em cũng có. |
| Bình | (VN) Em cài Anaconda thôi anh. |
| Đại | (VN) Cả 2 đều OK. Bài 1: `print("Xin chào Việt Nam")`. Hai em gõ thử. |
| An | (VN) Chạy được rồi anh! |
| Bình | (VN) Em cũng chạy được! |
| Đại | (VN) Bài 2: viết hàm tính tổng n số từ 1 đến n. Hai em nghĩ 3 phút rồi gõ thử nhé. |
| Bình | (VN, sau 3 phút) `def sum_n(n): return sum(range(1, n+1))` |
| Đại | (VN) Đúng rồi Bình! Đó là Pythonic way. An làm thế nào? |
| An | (VN) Em làm `for i in range(1, n+1): s += i` rồi return s. Em chưa biết hàm `sum()`. |
| Đại | (VN) Hai cách đều đúng. Cách của An truyền thống — dễ hiểu, cách của Bình ngắn — Pythonic. Cả 2 đều cần biết. |

---

## Tình huống 10 — Cafe Tully''s Senrichūō · 14:00, gặp anh IT (LeetCode coaching)

*Anh Hùng (28t, kỹ sư VN làm Rakuten Tokyo, online qua app) muốn ôn LeetCode cho phỏng vấn Google. Buổi đầu gặp khi anh về Osaka thăm bạn.*

| Vai | Lời thoại |
|---|---|
| Hùng | (VN) Đại, anh là Hùng. Anh làm Rakuten 4 năm, đang chuẩn bị phỏng vấn Google Tokyo. |
| Đại | (VN) Em chào anh. Em vinh dự được kèm anh. Anh cần ôn dạng bài nào? |
| Hùng | (VN) LeetCode Medium-Hard, đặc biệt Dynamic Programming với Graph. |
| Đại | (VN) Em chưa học DP chính thức nhưng đã tự đọc. Anh cho em 1 tuần chuẩn bị giáo án, sau đó mình bắt đầu? |
| Hùng | (VN) OK. Anh chỉ cần partner để mock interview — explain code, time complexity. Em giải Medium được không? |
| Đại | (VN) Em giải được nếu là array/sorting/binary search. DP em phải xem trước đề. |
| Hùng | (VN) Vậy lý tưởng. ¥3000/h được không? Anh trả cao hơn giá thông thường vì em sẽ vất vả. |
| Đại | (VN) Anh hào phóng quá. ¥2500 thôi anh, vì em cũng học được từ anh. |
| Hùng | (VN) Không, ¥3000. Đó là quyết định cuối. |

---

## Tình huống 11 — Phòng trọ · Tối thứ 6 19:00, sang nhà Tony+Yumi ăn cơm

| Vai | Lời thoại |
|---|---|
| Yumi | (mở cửa) ダイ<ruby>君<rt>くん</rt></ruby>! ようこそ! <ruby>家庭教師<rt>かていきょうし</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>っているって?<br>*(Đại! Mời vào! Nghe nói đang chăm gia sư hả?)* |
| Đại | はい、<ruby>由美<rt>ゆみ</rt></ruby>さん、おじゃまします。これ、お<ruby>土産<rt>みやげ</rt></ruby>のベトナムコーヒーです。<br>*(Vâng, chị Yumi, xin phép vào ạ. Đây là quà — cà phê Việt Nam.)* |
| Tony | おー、サンキュー! <ruby>由美<rt>ゆみ</rt></ruby>が<ruby>春巻<rt>はるま</rt></ruby>きを<ruby>巻<rt>ま</rt></ruby>いた。<ruby>食<rt>た</rt></ruby>べてくれ。<br>*(Ồ, cảm ơn! Yumi cuốn nem rồi. Ăn đi.)* |
| Đại | <ruby>由美<rt>ゆみ</rt></ruby>さん、<ruby>本場<rt>ほんば</rt></ruby>のベトナムよりおいしいです!<br>*(Chị Yumi, ngon hơn cả nem chính gốc Việt Nam!)* |
| Yumi | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>嘘<rt>うそ</rt></ruby>でしょう! ダイ<ruby>君<rt>くん</rt></ruby>、お<ruby>世辞<rt>せじ</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>になったね。<br>*(Cười. Nói dối! Đại khéo nịnh thật.)* |
| Đại | <ruby>家庭教師<rt>かていきょうし</rt></ruby>でコミュニケーション<ruby>力<rt>りょく</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がりました。<br>*(Làm gia sư nên kỹ năng giao tiếp tăng đó.)* |
| Tony | マイちゃんは<ruby>元気<rt>げんき</rt></ruby>か?<ruby>結婚式<rt>けっこんしき</rt></ruby>はいつ?<br>*(Mai khoẻ không? Đám cưới bao giờ?)* |
| Đại | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>1月<rt>いちがつ</rt></ruby>です。ハノイで。<br>*(Tháng 1 năm sau ạ. Ở Hà Nội.)* |
| Yumi | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>呼<rt>よ</rt></ruby>んでね! <ruby>結婚<rt>けっこん</rt></ruby>のお<ruby>祝<rt>いわ</rt></ruby>いに<ruby>行<rt>い</rt></ruby>く!<br>*(Nhất định mời nhé! Cô đi mừng cưới!)* |

---

## Tình huống 12 — Phòng trọ · 23:00 cuối tháng 8, tổng kết hè (LINE Linh-Anh tiếng Việt)

*Cảnh tiếng Việt cuối chương — Đại gọi video em gái Linh-Anh sau khi tổng kết thu nhập hè.*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (VN, video) Anh ơi! Hè vừa rồi anh kiếm được bao nhiêu? |
| Đại | (VN) ¥130k. Ít hơn dự kiến vì chỉ có 5 học viên đều đặn — em, Tuấn, Kenta-kun (em THPT Nhật), 2 em THPT Hà Nội, và anh Hùng Rakuten. |
| Linh-Anh | (VN) Vẫn gấp đôi Lawson cùng kỳ. Hơn nữa, anh dạy đúng chuyên ngành — như Feynman: dạy lại là cách học sâu nhất. |
| Đại | (VN) Đúng. Anh học được nhiều khi giải thích `groupby` với `pivot_table` cho em. Còn buổi với anh Hùng — anh học DP qua mock interview. |
| Linh-Anh | (VN) Em báo cáo doanh thu tháng 7 cho sếp bằng pandas — 25 phút xong. Sếp khen, tăng lương em ¥10k/tháng. |
| Đại | (VN) ¥10k × 12 = ¥120k/năm. Em trả anh hè này ¥40k = lãi gấp 3. Đầu tư giáo dục đúng là ROI tốt nhất. |
| Linh-Anh | (VN) Tuần sau anh có Hack U Osaka đúng không? Yamato với Aiko team đúng không? |
| Đại | (VN) Ừ, 9-10/9. Team OsakaCS3. Anh phụ trách backend. Aiko UI, Yamato thuật toán. |
| Linh-Anh | (VN) Cố lên anh! Em theo dõi qua LINE nhé. |
| Đại | (VN) Cảm ơn em. À, mẹ em báo Mai may áo dài chưa? |
| Linh-Anh | (VN) Mẹ bảo Mai vừa thử lần 2 hôm qua. Đẹp lắm anh. 7 tháng nữa cưới rồi. |
| Đại | (VN) Anh mong từng ngày. |

---

## Đọng lại chương 6

Đại trải qua bước chuyển nghề baito đầu tiên: nghỉ Lawson Namba sau 2 năm. Mẫu câu **「アルバイトを<ruby>辞<rt>や</rt></ruby>めさせていただきたいのですが」** là chuẩn báo nghỉ với cấp trên Nhật — keigo `〜させていただく` + `〜のですが` để mở câu thận trọng. Khi phỏng vấn đăng ký nền tảng gia sư PreSchool, Đại dùng **「<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします」** và trả lời bằng cấu trúc `専攻は〜です・担当できる言語は〜です`. Khi gặp phụ huynh Nhật (mẹ Saito), Đại dùng **「<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>らせていただきます」** — câu cam kết keigo cao. Với học sinh Nhật (Kenta), Đại dùng dạng `〜君` thân mật nhưng vẫn `ですます`. Với học viên Việt (Linh-Anh, Tuấn, 2 em THPT, anh Hùng), Đại chuyển sang tiếng Việt, chêm từ Nhật khi nói thuật ngữ. Cuối chương Đại tổng kết ¥130k thu nhập hè + insight Feynman: dạy lại = học sâu nhất.

> Từ vựng & mẫu câu chương này: <ruby>家庭教師<rt>かていきょうし</rt></ruby>・<ruby>店長<rt>てんちょう</rt></ruby>・<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ・<ruby>時給<rt>じきゅう</rt></ruby>・<ruby>自己紹介<rt>じこしょうかい</rt></ruby>・<ruby>専攻<rt>せんこう</rt></ruby>・<ruby>担当<rt>たんとう</rt></ruby>・<ruby>料金<rt>りょうきん</rt></ruby>・<ruby>割引<rt>わりびき</rt></ruby>・<ruby>得意分野<rt>とくいぶんや</rt></ruby>・<ruby>過去問<rt>かこもん</rt></ruby>・<ruby>編入<rt>へんにゅう</rt></ruby>・〜させていただきたいのですが・〜させていただきます・お<ruby>世話<rt>せわ</rt></ruby>になりました・<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります・<ruby>結構<rt>けっこう</rt></ruby>です・お<ruby>願<rt>ねが</rt></ruby>いいたします・<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています

## Bí quyết chương

- **Nghỉ baito đúng cách**: Nói trước 1 tháng, dùng `〜させていただきたい`, nhấn `お<ruby>世話<rt>せわ</rt></ruby>になりました`. Suzuki tenchō còn tặng Red Bull sau khi nghỉ — quan hệ tốt mở cửa tương lai.
- **Phỏng vấn nền tảng**: Cấu trúc tự giới thiệu chuẩn: `〜大学〜学部〜年生の◯◯です。専門は〜、〜資格を取得しています`.
- **Dạy 1-1 đa ngôn ngữ**: Với học viên VN, dạy tiếng Việt + chêm từ JP. Với học viên Nhật, full tiếng Nhật `ですます`. Học sinh THPT Nhật xưng `〜君`, gọi mình `先生`.
- **Pricing tâm lý**: Với người thân (em ruột) đề nghị giảm 50% nhưng vẫn lấy nguyên giá theo ý họ. Với anh Hùng đề xuất ¥3000 thay vì ¥2500 — học từ người giỏi cũng là giá trị.
- **Maintain network**: Bữa cơm Tony+Yumi giữ relationship homestay cũ. Đại ghé Lawson cũ vẫn được Suzuki tenchō nhận như family.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 家庭教師 | かていきょうし | GIA ĐÌNH GIÁO SƯ | gia sư |
| 店長 | てんちょう | ĐIẾM TRƯỞNG | quản lý cửa hàng |
| 実 | じつ | THỰC | thật ra |
| 来月 | らいげつ | LAI NGUYỆT | tháng sau |
| 辞める | やめる | TỪ | xin nghỉ |
| 問題 | もんだい | VẤN ĐỀ | vấn đề |
| 世話 | せわ | THẾ THOẠI | giúp đỡ |
| 関連 | かんれん | QUAN LIÊN | liên quan |
| 判断 | はんだん | PHÁN ĐOÁN | quyết định |
| 時給 | じきゅう | THỜI CẤP | lương theo giờ |
| 倍以上 | ばいいじょう | BỘI DĨ THƯỢNG | hơn gấp đôi |
| 引き継ぎ | ひきつぎ | DẪN KẾ | bàn giao |
| 感謝 | かんしゃ | CẢM TẠ | biết ơn |
| 先輩 | せんぱい | TIÊN BỐI | tiền bối, sempai |
| 丁寧 | ていねい | ĐINH NINH | tận tình |
| 応援 | おうえん | ỨNG VIỆN | ủng hộ |
| 祝い | いわい | CHÚC | chúc mừng |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | tự giới thiệu |
| 情報科学科 | じょうほうかがくか | TÌNH BÁO KHOA HỌC KHOA | khoa Khoa học Thông tin (thuộc 基礎工学部 ĐH Osaka) |
| 専門 | せんもん | CHUYÊN MÔN | chuyên môn |
| 昨年 | さくねん | TẠC NIÊN | năm ngoái |
| 言語 | げんご | NGÔN NGỮ | ngôn ngữ |
| 初歩 | しょほ | SƠ BỘ | cơ bản |
| 料金 | りょうきん | LIỆU KIM | giá |
| 対象 | たいしょう | ĐỐI TƯỢNG | đối tượng |
| 割引 | わりびき | CÁT DẪN | giảm giá |
| 応募 | おうぼ | ỨNG MỘ | đăng ký |
| 息子 | むすこ | TỨC TỬ | con trai |
| 目指す | めざす | MỤC CHỈ | nhắm tới |
| 得意分野 | とくいぶんや | ĐẮC Ý PHÂN DÃ | sở trường |
| 伺う | うかがう | TỬ | nghe (kính ngữ) |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | hết sức |
| 解く | とく | GIẢI | giải |
| 灰色 | はいいろ | KHÔI SẮC | xám |
| 止まる | とまる | CHỈ | dừng, tắc |
| 声 | こえ | THANH | tiếng |
| 個数 | こすう | CÁ SỐ | số lượng |
| 編入 | へんにゅう | BIÊN NHẬP | chuyển ngành/trường |
| 算 | さん | TOÁN | tính |
| 経済 | けいざい | KINH TẾ | kinh tế |
| 顔出し | かおだし | NHAN XUẤT | ghé thăm |
| 込み | こみ | NHẬP | bao gồm |
| 春巻き | はるまき | XUÂN QUYỂN | nem |
| 本場 | ほんば | BẢN TRƯỜNG | chính gốc |
| 世辞 | せじ | THẾ TỪ | nịnh |
| 結婚式 | けっこんしき | KẾT HÔN THỨC | lễ cưới |
| 部屋 | へや | BỘ ỐC | phòng |
| 帰国 | きこく | QUY QUỐC | về nước |
| 投資 | とうし | ĐẦU TƯ | đầu tư |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000007, 800000021, NULL, 'markdown_book', 'T7. Hack U Osaka — hackathon đầu tiên (ハッカソン初参加)', '# Sách sinh viên Đại học Osaka · T7. Hack U Osaka — hackathon đầu tiên (ハッカソン初参加)

> **Mục tiêu nhân vật:** Đại (21t, ĐH Osaka CS năm 1, 9-10/9/2026, N2) học các mẫu hội thoại tiếng Nhật trong hackathon: (1) check-in tại Yahoo office — keigo lễ tân, (2) brainstorm + bàn architecture trong team 3 người, (3) chat LINE crisis lúc 2:00 sáng, (4) pitch 5 phút trước giám khảo Yahoo/AWS/GitHub Japan, (5) Q&A keigo với judge sau pitch, (6) phát biểu nhận giải khuyến khích, (7) chat LINE Mai khoe giải.

---

## Bối cảnh

Cuối tuần 9-10/9/2026, Đại tham gia hackathon đầu đời — **Hack U Osaka** do Yahoo Japan tổ chức tại Yahoo Osaka office Umeda. Team **OsakaCS3** gồm Đại (backend FastAPI), Yamato (thuật toán), Aiko (UI/UX React). 50 team, ~150 SV từ Osaka U, Kobe U, Ritsumeikan, Osaka Inst Tech. Theme "<ruby>学生生活<rt>がくせいせいかつ</rt></ruby>を<ruby>便利<rt>べんり</rt></ruby>に". Team chọn ý tưởng **教科書MarketPlace** — sàn bán lại sách giáo khoa giới hạn ĐH + AI gợi giá. Chương này tập trung mẫu câu **keigo trong môi trường công ty công nghệ Nhật**.

---

## Tình huống 1 — Yahoo Osaka office sảnh tầng 1 · 8:30, check-in lễ tân

| Vai | Lời thoại |
|---|---|
| Đại | (đến quầy) <ruby>失礼<rt>しつれい</rt></ruby>します。Hack U Osaka 2026の<ruby>参加者<rt>さんかしゃ</rt></ruby>です。<br>*(Xin phép. Em là người tham gia Hack U Osaka 2026.)* |
| Lễ tân | お<ruby>名前<rt>なまえ</rt></ruby>とチーム<ruby>名<rt>めい</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますか。<br>*(Cho phép xin tên và tên team ạ.)* |
| Đại | グエン・ヴァン・ダイです。チームは「OsakaCS3」です。<br>*(Em là Nguyễn Thanh Đại. Team OsakaCS3 ạ.)* |
| Lễ tân | はい、<ruby>受付<rt>うけつけ</rt></ruby>させていただきました。こちらがネームタグでございます。16<ruby>階<rt>かい</rt></ruby>のメインホールへお<ruby>進<rt>すす</rt></ruby>みください。<br>*(Vâng, tôi đã tiếp nhận ạ. Đây là thẻ tên. Mời anh lên hội trường chính tầng 16.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn chị ạ.)* |
| Lễ tân | エレベーターは<ruby>右側<rt>みぎがわ</rt></ruby>にございます。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Thang máy ở bên phải ạ. Chúc anh thi tốt.)* |
| Đại | はい、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em xin phép.)* |

---

## Tình huống 2 — Tầng 16 sảnh chờ · 8:55, ráp team

| Vai | Lời thoại |
|---|---|
| Yamato | おう、ダイ! <ruby>遅<rt>おそ</rt></ruby>かったな。<br>*(Ờ, Đại! Đến muộn ghê.)* |
| Đại | <ruby>梅田駅<rt>うめだえき</rt></ruby>で<ruby>迷子<rt>まいご</rt></ruby>になった。 Yahoo office<ruby>探<rt>さが</rt></ruby>すの<ruby>大変<rt>たいへん</rt></ruby>だった。<br>*(Tớ lạc ở ga Umeda. Tìm Yahoo office vất vả lắm.)* |
| Aiko | (đến với iPad + balo) <ruby>私<rt>わたし</rt></ruby>も<ruby>今<rt>いま</rt></ruby><ruby>着<rt>つ</rt></ruby>いた! Figma と iPad <ruby>持参<rt>じさん</rt></ruby>!<br>*(Mình cũng vừa đến! Mang theo Figma + iPad!)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はノート PC + <ruby>外部<rt>がいぶ</rt></ruby>モニタ<ruby>持<rt>も</rt></ruby>ってきた。32<ruby>時間<rt>じかん</rt></ruby><ruby>勝負<rt>しょうぶ</rt></ruby>だぞ!<br>*(Tớ mang laptop + monitor ngoài. Trận đấu 32 tiếng đó!)* |
| Đại | アーキテクチャ<ruby>設計<rt>せっけい</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>するよ。FastAPI + PostgreSQL でいい?<br>*(Thiết kế architecture tớ phụ trách. FastAPI + PostgreSQL OK chứ?)* |
| Aiko | <ruby>賛成<rt>さんせい</rt></ruby>。フロントは React + Tailwind。デザインシステムは1<ruby>時間<rt>じかん</rt></ruby>でできる。<br>*(Tán thành. Front-end React + Tailwind. Design system 1 tiếng xong.)* |
| Yamato | アルゴリズム<ruby>担当<rt>たんとう</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>。AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>のロジックを<ruby>設計<rt>せっけい</rt></ruby>する。<br>*(Thuật toán tớ phụ trách. Thiết kế logic AI gợi giá.)* |

---

## Tình huống 3 — Hội trường tầng 16 · 9:00, khai mạc MC Yahoo phát biểu

| Vai | Lời thoại |
|---|---|
| MC | みなさま、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はHack U Osaka 2026にご<ruby>参加<rt>さんか</rt></ruby>いただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Kính chào quý vị. Hôm nay xin cảm ơn quý vị đã tham gia Hack U Osaka 2026.)* |
| MC | テーマは「<ruby>学生生活<rt>がくせいせいかつ</rt></ruby>を<ruby>便利<rt>べんり</rt></ruby>に」でございます。<ruby>制限時間<rt>せいげんじかん</rt></ruby>は32<ruby>時間<rt>じかん</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>17<ruby>時<rt>じ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>です。<br>*(Chủ đề là "Làm cuộc sống sinh viên tiện lợi hơn". Thời gian 32 tiếng, hạn nộp 17h ngày mai.)* |
| MC | <ruby>最優秀賞<rt>さいゆうしゅうしょう</rt></ruby>は¥300,000とYahoo<ruby>採用面接<rt>さいようめんせつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>でございます。<br>*(Giải nhất ¥300,000 và cam kết phỏng vấn tuyển dụng Yahoo.)* |
| Đại | (whisper Yamato) Yahoo<ruby>面接<rt>めんせつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>って<ruby>大<rt>おお</rt></ruby>きいな!<br>*(Cam kết phỏng vấn Yahoo to ghê!)* |
| Yamato | (whisper) <ruby>厳<rt>きび</rt></ruby>しい<ruby>戦<rt>たたか</rt></ruby>いだ。50チームが<ruby>競合<rt>きょうごう</rt></ruby>するんだから。<br>*(Cuộc chiến khốc liệt. 50 team cạnh tranh nhau.)* |
| MC | それでは、<ruby>9時<rt>くじ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>から<ruby>開発開始<rt>かいはつかいし</rt></ruby>です。ご<ruby>健闘<rt>けんとう</rt></ruby>をお<ruby>祈<rt>いの</rt></ruby>りいたします。<br>*(Vậy thì, 9h30 bắt đầu phát triển. Chúc quý vị thi tốt.)* |

---

## Tình huống 4 — Phòng team OsakaCS3 (booth 12) · 9:30, brainstorm idea

| Vai | Lời thoại |
|---|---|
| Aiko | (whiteboard) アイディア3つ<ruby>出<rt>だ</rt></ruby>す。<br>*(Đưa 3 ý tưởng.)* |
| Aiko | 1: ノート<ruby>共有<rt>きょうゆう</rt></ruby>アプリ。2: <ruby>食堂<rt>しょくどう</rt></ruby><ruby>混雑<rt>こんざつ</rt></ruby><ruby>予測<rt>よそく</rt></ruby>。3: <ruby>教科書<rt>きょうかしょ</rt></ruby><ruby>転売<rt>てんばい</rt></ruby> + AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(1: chia sẻ ghi chép. 2: dự đoán mức đông căng tin. 3: bán lại sách + AI gợi giá.)* |
| Yamato | 3<ruby>番<rt>ばん</rt></ruby><ruby>推<rt>お</rt></ruby>す。<ruby>需要<rt>じゅよう</rt></ruby>もあるし、AIも<ruby>魅力的<rt>みりょくてき</rt></ruby>。<br>*(Vote số 3. Có nhu cầu, AI lại hấp dẫn.)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>は<ruby>今年<rt>ことし</rt></ruby><ruby>教科書<rt>きょうかしょ</rt></ruby>に¥40,000<ruby>使<rt>つか</rt></ruby>った。<ruby>来年<rt>らいねん</rt></ruby>はもう<ruby>不要<rt>ふよう</rt></ruby>。<br>*(Tán thành. Năm nay tớ tiêu ¥40,000 cho sách. Sang năm hết cần.)* |
| Aiko | <ruby>名前<rt>なまえ</rt></ruby>は「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」でどう?<br>*(Tên "Kyokasho MarketPlace" thế nào?)* |
| Yamato | シンプルで<ruby>良<rt>よ</rt></ruby>い。<ruby>差別化<rt>さべつか</rt></ruby><ruby>要因<rt>よういん</rt></ruby>は AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby> + <ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby> (メルカリと<ruby>違<rt>ちが</rt></ruby>って)。<br>*(Đơn giản, tốt. Điểm khác biệt: AI gợi giá + chỉ trong trường, khác Mercari.)* |
| Đại | OK、<ruby>決定<rt>けってい</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>はバックエンドを<ruby>始<rt>はじ</rt></ruby>める。<br>*(OK, quyết. Tớ bắt đầu backend.)* |

---

## Tình huống 5 — Booth 12 · 11:30, Đại bàn architecture với Yamato

*Đại đứng cạnh whiteboard, vẽ kiến trúc cho Yamato.*

| Vai | Lời thoại |
|---|---|
| Đại | アーキテクチャはこんな<ruby>感<rt>かん</rt></ruby>じ：Frontend React、Backend FastAPI、DB PostgreSQL、AI は GPT-3.5 API、デプロイは Heroku <ruby>無料<rt>むりょう</rt></ruby>プラン。<br>*(Architecture thế này: Frontend React, Backend FastAPI, DB PostgreSQL, AI dùng GPT-3.5 API, deploy Heroku free.)* |
| Yamato | <ruby>認証<rt>にんしょう</rt></ruby>は?<br>*(Authentication thì sao?)* |
| Đại | GitHub OAuth で<ruby>大学<rt>だいがく</rt></ruby>メールのみ。@ecs.osaka-u.ac.jp とかをフィルタする。<br>*(GitHub OAuth, lọc chỉ email đại học, ví dụ @ecs.osaka-u.ac.jp.)* |
| Yamato | <ruby>賢<rt>かしこ</rt></ruby>い。AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>のロジック:<br>*(Khéo đấy. Logic AI gợi giá:)* |
| Yamato | <ruby>推奨価格<rt>すいしょうかかく</rt></ruby> = <ruby>過去<rt>かこ</rt></ruby>30<ruby>日<rt>にち</rt></ruby><ruby>市場平均<rt>しじょうへいきん</rt></ruby> × <ruby>状態係数<rt>じょうたいけいすう</rt></ruby> + <ruby>新着<rt>しんちゃく</rt></ruby>ボーナス。<br>*(Giá gợi = giá trung bình 30 ngày × hệ số tình trạng + bonus mới đăng.)* |
| Yamato | <ruby>状態<rt>じょうたい</rt></ruby>は5<ruby>段階<rt>だんかい</rt></ruby>:<ruby>新品同様<rt>しんぴんどうよう</rt></ruby> (1.0)、<ruby>良<rt>よ</rt></ruby>い (0.85)、<ruby>普通<rt>ふつう</rt></ruby> (0.65)、<ruby>悪<rt>わる</rt></ruby>い (0.45)、ボロボロ (0.25)。<br>*(Tình trạng 5 cấp với hệ số.)* |
| Đại | エクセレント。<ruby>俺<rt>おれ</rt></ruby>は POST /books と GET /books/{id}/price-suggest を<ruby>実装<rt>じっそう</rt></ruby>する。<br>*(Tuyệt. Tớ cài endpoint POST /books với GET /books/{id}/price-suggest.)* |

---

## Tình huống 6 — Booth 12 · 13:00, Aiko show Figma prototype

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>見<rt>み</rt></ruby>てこれ! 3<ruby>画面<rt>がめん</rt></ruby>:<ruby>一覧<rt>いちらん</rt></ruby>、<ruby>詳細<rt>しょうさい</rt></ruby>、<ruby>出品<rt>しゅっぴん</rt></ruby>フォーム。<br>*(Xem này! 3 màn: danh sách, chi tiết, form đăng bán.)* |
| Đại | おお、デザインが<ruby>洗練<rt>せんれん</rt></ruby>されている。AIサジェストの<ruby>表示<rt>ひょうじ</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>は?<br>*(Ồ, thiết kế tinh tế. Hiển thị AI suggest thế nào?)* |
| Aiko | <ruby>出品<rt>しゅっぴん</rt></ruby>フォームで「AIによる<ruby>推奨価格<rt>すいしょうかかく</rt></ruby>: ¥2,800」と<ruby>表示<rt>ひょうじ</rt></ruby>して、ワンクリックで<ruby>適用<rt>てきよう</rt></ruby>できるようにする。<br>*(Trong form đăng bán hiển thị "Giá AI gợi: ¥2,800", một click để áp dụng.)* |
| Yamato | <ruby>素晴<rt>すば</rt></ruby>らしいUX。<ruby>競合<rt>きょうごう</rt></ruby>のメルカリには<ruby>真似<rt>まね</rt></ruby>できない<ruby>差別化<rt>さべつか</rt></ruby>。<br>*(UX tuyệt. Mercari không bắt chước được.)* |
| Aiko | カラーパレットは Yahoo の<ruby>赤<rt>あか</rt></ruby>と<ruby>白<rt>しろ</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせてみた。<ruby>主催<rt>しゅさい</rt></ruby><ruby>側<rt>がわ</rt></ruby>へのリスペクト。<br>*(Bảng màu mình lấy đỏ-trắng của Yahoo. Tôn trọng nhà tổ chức.)* |
| Đại | <ruby>戦略的<rt>せんりゃくてき</rt></ruby>!<br>*(Chiến lược ghê!)* |

---

## Tình huống 7 — Booth 12 · 2:00 AM chủ nhật, crisis DB index (LINE)

*Đại deploy lên Heroku, gọi list books mất 3 giây. Aiko ngủ gục bên cạnh, Yamato đi vệ sinh. Đại nhắn LINE riêng Yamato.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) ヤマト! `SELECT * FROM books WHERE seller_id = X` が3<ruby>秒<rt>びょう</rt></ruby>かかる!<ruby>遅<rt>おそ</rt></ruby>すぎる!<br>*(Yamato! Truy vấn mất 3 giây! Chậm quá!)* |
| Yamato | (LINE) インデックスがないんじゃない? `\d books` で<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Thiếu index à? Check `\d books` đi.)* |
| Đại | (LINE) <ruby>確認<rt>かくにん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>… primary key の id しかインデックスがない。seller_id にはない。<br>*(Đang check... chỉ có index trên primary key. Không có trên seller_id.)* |
| Yamato | (LINE) `CREATE INDEX idx_books_seller_id ON books(seller_id);` を<ruby>実行<rt>じっこう</rt></ruby>。<br>*(Chạy lệnh này đi.)* |
| Đại | (LINE) <ruby>実行<rt>じっこう</rt></ruby><ruby>済<rt>ず</rt></ruby>。<ruby>再<rt>さい</rt></ruby>クエリ → 50ms。✓<br>*(Đã chạy. Truy vấn lại → 50ms. ✓)* |
| Đại | (LINE) <ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<ruby>勉強<rt>べんきょう</rt></ruby>になった。<br>*(Cảm ơn thật. Học được bài hay.)* |
| Yamato | (LINE) DB の<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>必修<rt>ひっしゅう</rt></ruby>だ。インデックスは<ruby>基本<rt>きほん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>。<br>*(Lớp DB sang năm là bắt buộc. Index là cơ bản nhất.)* |
| Đại | (LINE) <ruby>戻<rt>もど</rt></ruby>ってきたら<ruby>缶<rt>かん</rt></ruby>コーヒーおごる。<br>*(Quay lại tớ mời cà phê lon.)* |

---

## Tình huống 8 — Booth 12 · 6:00 AM chủ nhật, Aiko thức dậy hỏi tiến độ

| Vai | Lời thoại |
|---|---|
| Aiko | (vươn vai) おはよう…<ruby>進捗<rt>しんちょく</rt></ruby>どう?<br>*(Chào... tiến độ sao rồi?)* |
| Đại | バックエンドは8<ruby>割<rt>わり</rt></ruby><ruby>完成<rt>かんせい</rt></ruby>。DBインデックスのバグを<ruby>夜中<rt>よなか</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby>した。<br>*(Backend xong 80%. Đêm tớ sửa bug DB index.)* |
| Yamato | (đi qua) AIエンドポイントは<ruby>完成<rt>かんせい</rt></ruby>。OpenAI APIに request <ruby>送<rt>おく</rt></ruby>って、JSON で<ruby>推奨価格<rt>すいしょうかかく</rt></ruby>と<ruby>説明文<rt>せつめいぶん</rt></ruby>が<ruby>返<rt>かえ</rt></ruby>ってくる。<br>*(AI endpoint xong. Gửi request đến OpenAI API, JSON trả giá gợi + giải thích.)* |
| Aiko | フロントエンドも7<ruby>割<rt>わり</rt></ruby>。あと2<ruby>時間<rt>じかん</rt></ruby>で<ruby>完成<rt>かんせい</rt></ruby>させる。<br>*(Frontend cũng 70%. 2 tiếng nữa xong.)* |
| Đại | <ruby>残<rt>のこ</rt></ruby>り11<ruby>時間<rt>じかん</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>ろう! <ruby>俺<rt>おれ</rt></ruby>はデモ<ruby>動画<rt>どうが</rt></ruby>の<ruby>台本<rt>だいほん</rt></ruby>を<ruby>書<rt>か</rt></ruby>く。<br>*(Còn 11 tiếng, cố lên! Tớ viết kịch bản video demo.)* |
| Aiko | <ruby>動画<rt>どうが</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が iMovie で<ruby>編集<rt>へんしゅう</rt></ruby>する。5<ruby>分<rt>ふん</rt></ruby><ruby>以内<rt>いない</rt></ruby>で。<br>*(Video mình edit bằng iMovie. Dưới 5 phút.)* |

---

## Tình huống 9 — Booth 12 · 14:00 chủ nhật, deploy & submit

| Vai | Lời thoại |
|---|---|
| Đại | (terminal) `git push origin main` → Heroku tự<ruby>動<rt>どう</rt></ruby>デプロイ<ruby>開始<rt>かいし</rt></ruby>!<br>*(Heroku tự deploy!)* |
| Đại | (theo dõi log) ビルド<ruby>成功<rt>せいこう</rt></ruby>… サーバー<ruby>起動<rt>きどう</rt></ruby>… ✓ kyokasho-mp.herokuapp.com で<ruby>動<rt>うご</rt></ruby>く!<br>*(Build success... server start... chạy được!)* |
| Yamato | (kiểm tra) AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>テスト: ISBN 978-4-7973-9847-3、<ruby>状態<rt>じょうたい</rt></ruby>4 → ¥2,800<ruby>推奨<rt>すいしょう</rt></ruby>。<ruby>新品<rt>しんぴん</rt></ruby>¥3,800、<ruby>状態係数<rt>じょうたいけいすう</rt></ruby>0.85だから<ruby>計算合<rt>けいさんあ</rt></ruby>ってる!<br>*(Test AI: ¥2,800 đúng công thức!)* |
| Aiko | <ruby>動画<rt>どうが</rt></ruby>も<ruby>完成<rt>かんせい</rt></ruby>! 4<ruby>分<rt>ぷん</rt></ruby>30<ruby>秒<rt>びょう</rt></ruby>!<br>*(Video xong! 4 phút 30 giây!)* |
| Đại | (submit form Yahoo) URL、GitHubリポジトリ、デモ<ruby>動画<rt>どうが</rt></ruby>、<ruby>提出<rt>ていしゅつ</rt></ruby>!<br>*(URL, repo GitHub, video — nộp!)* |
| Yamato | <ruby>提出完了<rt>ていしゅつかんりょう</rt></ruby>! <ruby>残<rt>のこ</rt></ruby>り3<ruby>時間<rt>じかん</rt></ruby>でピッチ<ruby>練習<rt>れんしゅう</rt></ruby>!<br>*(Nộp xong! Còn 3 tiếng luyện pitch!)* |

---

## Tình huống 10 — Hội trường tầng 16 · 15:00, pitch 5 phút trước judges

*3 giám khảo: Yahoo engineer Yoshida-san, AWS evangelist Sato-san, GitHub Japan PM Tanaka-san.*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>次<rt>つぎ</rt></ruby>、チーム「OsakaCS3」、5<ruby>分<rt>ふん</rt></ruby>のピッチをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếp theo, team OsakaCS3, pitch 5 phút.)* |
| Đại | (đứng giữa) みなさん、こんにちは。チーム「OsakaCS3」、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>1<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイです。<br>*(Xin chào mọi người. Team OsakaCS3, em là Nguyễn Văn Đại năm 1 khoa Khoa học Thông tin ĐH Osaka.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」を<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます。<br>*(Hôm nay xin được trình bày "Kyokasho MarketPlace".)* |
| Đại | <ruby>問題<rt>もんだい</rt></ruby>: <ruby>大学生<rt>だいがくせい</rt></ruby>は<ruby>毎年<rt>まいとし</rt></ruby>¥40,000を<ruby>教科書<rt>きょうかしょ</rt></ruby>に<ruby>費<rt>つい</rt></ruby>やすが、<ruby>翌年<rt>よくねん</rt></ruby>には<ruby>不要<rt>ふよう</rt></ruby>になる。<ruby>処分<rt>しょぶん</rt></ruby>に<ruby>困<rt>こま</rt></ruby>る。<br>*(Vấn đề: SV mỗi năm tốn ¥40,000 cho sách, năm sau không cần nữa, không biết xử lý sao.)* |
| Đại | <ruby>解決策<rt>かいけつさく</rt></ruby>: <ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>の<ruby>転売<rt>てんばい</rt></ruby>プラットフォーム + AIによる<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(Giải pháp: nền tảng bán lại trong trường + AI gợi giá.)* |
| Đại | (live demo) アルゴリズム<ruby>入門<rt>にゅうもん</rt></ruby>を<ruby>検索<rt>けんさく</rt></ruby> → 5<ruby>名<rt>めい</rt></ruby><ruby>出品中<rt>しゅっぴんちゅう</rt></ruby> → AI<ruby>推奨<rt>すいしょう</rt></ruby>¥2,800 → ワンクリック<ruby>購入<rt>こうにゅう</rt></ruby>。<br>*(Demo trực tiếp: tìm sách → 5 người bán → AI gợi ¥2,800 → một click mua.)* |
| Yamato | <ruby>技術的<rt>ぎじゅつてき</rt></ruby><ruby>差別化<rt>さべつか</rt></ruby>は2<ruby>点<rt>てん</rt></ruby>: AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby> + <ruby>大学<rt>だいがく</rt></ruby><ruby>限定<rt>げんてい</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>。メルカリには<ruby>真似<rt>まね</rt></ruby>できません。<br>*(Khác biệt kỹ thuật 2 điểm: AI gợi giá + xác thực giới hạn trường. Mercari không bắt chước được.)* |
| Aiko | UIはモバイルファースト、ユーザーは<ruby>3<rt>さん</rt></ruby>クリックで<ruby>取引完了<rt>とりひきかんりょう</rt></ruby>。<br>*(UI mobile-first, user 3 click hoàn tất giao dịch.)* |
| Đại | ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。<br>*(Cảm ơn quý vị đã lắng nghe.)* |

---

## Tình huống 11 — Hội trường · 15:08, Q&A với judges

| Vai | Lời thoại |
|---|---|
| Yoshida (Yahoo) | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>発表<rt>はっぴょう</rt></ruby>でした。<ruby>質問<rt>しつもん</rt></ruby>があります。<br>*(Phát biểu tuyệt vời. Tôi có câu hỏi.)* |
| Yoshida | AI<ruby>価格<rt>かかく</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>のデータが<ruby>少<rt>すく</rt></ruby>ない<ruby>初期段階<rt>しょきだんかい</rt></ruby>、どう<ruby>対処<rt>たいしょ</rt></ruby>しますか?<br>*(Giai đoạn đầu ít dữ liệu thì AI gợi giá xử lý sao?)* |
| Yamato | ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます。<ruby>初期<rt>しょき</rt></ruby>は<ruby>定価<rt>ていか</rt></ruby>の50%を<ruby>基準<rt>きじゅん</rt></ruby>とし、<ruby>取引<rt>とりひき</rt></ruby><ruby>件数<rt>けんすう</rt></ruby>が10<ruby>件<rt>けん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えたら<ruby>実績<rt>じっせき</rt></ruby>データに<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<br>*(Cảm ơn câu hỏi. Đầu lấy 50% giá gốc làm chuẩn, sau 10 giao dịch chuyển sang dữ liệu thực.)* |
| Sato (AWS) | <ruby>商業化<rt>しょうぎょうか</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>はいかがでしょうか。<br>*(Khả năng thương mại hoá thế nào?)* |
| Đại | <ruby>取引手数料<rt>とりひきてすうりょう</rt></ruby>5%を<ruby>想定<rt>そうてい</rt></ruby>しています。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>規模<rt>きぼ</rt></ruby>(<ruby>2.5<rt>にてんご</rt></ruby><ruby>万人<rt>まんにん</rt></ruby>)で<ruby>年間<rt>ねんかん</rt></ruby>¥10<ruby>万<rt>まん</rt></ruby>。<ruby>全国<rt>ぜんこく</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>なら<ruby>大<rt>おお</rt></ruby>きい<ruby>市場<rt>しじょう</rt></ruby>。<br>*(Phí giao dịch 5%. Quy mô ĐH Osaka (25,000 SV) năm ¥100k. Mở rộng toàn quốc thì thị trường lớn.)* |
| Tanaka (GitHub) | コードは GitHub に<ruby>公開<rt>こうかい</rt></ruby>されていますか?<br>*(Code có public trên GitHub không?)* |
| Aiko | はい、osakacs3/kyokasho-marketplace で<ruby>公開<rt>こうかい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。MIT ライセンスです。<br>*(Vâng, đã public ở osakacs3/kyokasho-marketplace. MIT license.)* |
| Yoshida | ありがとうございました。<br>*(Cảm ơn các em.)* |

---

## Tình huống 12 — Hội trường · 17:00, lễ trao giải

| Vai | Lời thoại |
|---|---|
| MC | それでは<ruby>結果発表<rt>けっかはっぴょう</rt></ruby>でございます。<br>*(Xin công bố kết quả.)* |
| MC | <ruby>最優秀賞<rt>さいゆうしゅうしょう</rt></ruby>¥300,000、チーム「ScheduleAI」<ruby>京都大学<rt>きょうとだいがく</rt></ruby>!<br>*(Giải nhất: team ScheduleAI ĐH Kyoto!)* |
| Đại | (whisper) <ruby>京大<rt>きょうだい</rt></ruby><ruby>強<rt>つよ</rt></ruby>いな…<br>*(ĐH Kyoto mạnh thật.)* |
| MC | <ruby>優秀賞<rt>ゆうしゅうしょう</rt></ruby>¥150,000、チーム「VoiceNote」<ruby>立命館大学<rt>りつめいかんだいがく</rt></ruby>!<br>*(Giải nhì: VoiceNote Ritsumeikan!)* |
| MC | <ruby>奨励賞<rt>しょうれいしょう</rt></ruby>¥50,000×5チーム!<br>*(Giải khuyến khích ¥50,000 × 5 đội!)* |
| MC | チーム「<ruby>教科書<rt>きょうかしょ</rt></ruby>MarketPlace」<ruby>大阪大学<rt>おおさかだいがく</rt></ruby> OsakaCS3!<br>*(Team Kyokasho MarketPlace ĐH Osaka OsakaCS3!)* |
| Đại + Yamato + Aiko | (đồng thanh) やった!<br>*(Tuyệt!)* |
| MC | 3<ruby>名<rt>めい</rt></ruby>とも<ruby>壇上<rt>だんじょう</rt></ruby>へお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời 3 bạn lên bục.)* |
| Yoshida | (trao thưởng) ¥50,000 + Yahooクラウドクレジット¥30,000 + GitHub Pro 1<ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>。おめでとう!<br>*(¥50k + credit Yahoo Cloud ¥30k + GitHub Pro 1 năm. Chúc mừng!)* |
| Đại | (cúi) ありがとうございます!<br>*(Cảm ơn ạ!)* |

---

## Tình huống 13 — Stage bên · 17:10, mini interview MC

| Vai | Lời thoại |
|---|---|
| MC | OsakaCS3<ruby>代表<rt>だいひょう</rt></ruby>のグエンさん、<ruby>感想<rt>かんそう</rt></ruby>を<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đại diện OsakaCS3 anh Nguyễn, cho một lời cảm tưởng nhé.)* |
| Đại | はい。<ruby>初<rt>はじ</rt></ruby>めてのハッカソンで<ruby>奨励賞<rt>しょうれいしょう</rt></ruby>をいただけて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng. Lần đầu hackathon mà được giải khuyến khích, em vô cùng vui ạ.)* |
| Đại | チームメイトのヤマト<ruby>君<rt>くん</rt></ruby>と<ruby>愛子<rt>あいこ</rt></ruby>さん、それから<ruby>応援<rt>おうえん</rt></ruby>してくれたみなさんに<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Cảm ơn đồng đội Yamato và Aiko cùng tất cả mọi người đã cổ vũ.)* |
| MC | ベトナムからの<ruby>留学生<rt>りゅうがくせい</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>っていますが、<ruby>日本語<rt>にほんご</rt></ruby>でこんなにうまくピッチできるのはすごいですね。<br>*(Nghe nói anh là du học sinh từ Việt Nam, mà pitch tiếng Nhật giỏi thế đấy.)* |
| Đại | <ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>にN5から<ruby>始<rt>はじ</rt></ruby>めて、<ruby>今<rt>いま</rt></ruby>N2です。<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねです。<br>*(2 năm trước em bắt đầu từ N5, giờ N2. Tích luỹ mỗi ngày.)* |
| MC | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>今後<rt>こんご</rt></ruby>の<ruby>活躍<rt>かつやく</rt></ruby>を<ruby>期待<rt>きたい</rt></ruby>しています。<br>*(Tuyệt vời! Mong tương lai anh phát triển.)* |
| Đại | ありがとうございました。<br>*(Cảm ơn chị.)* |

---

## Tình huống 14 — Quán izakaya Umeda · 19:30, ăn mừng cùng team (LINE Mai cảnh tiếng Việt)

*Sau lễ trao giải, team ăn mừng. Đại tách ra góc quán gọi video Mai.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, video) Anh ơi! Sao rồi? Hồi hộp quá! |
| Đại | (VN) Em ơi! Team anh được giải khuyến khích ¥50,000! Cộng credit Yahoo Cloud ¥30,000 + GitHub Pro 1 năm! |
| Mai | (VN) Trời ơi anh giỏi quá! Em tự hào về anh lắm! |
| Đại | (VN) Anh xếp thứ 3-7/50 đội. Đội nhất là Kyoto U, đội nhì Ritsumeikan. Cả 3 đội đứng đầu đều là ĐH lớn. Tụi anh năm 1 mà lọt top 7 là OK rồi. |
| Mai | (VN) Anh được lên sân khấu phải không? Em xem stream YouTube nhưng lag. |
| Đại | (VN) Ừ, MC còn phỏng vấn anh. Anh nói "2 năm trước em bắt đầu từ N5, giờ N2". MC khen anh giỏi tiếng Nhật. |
| Mai | (VN) Em khóc rồi đó. Từ ngày anh sang Nhật N5 lúng ta lúng túng, giờ pitch tiếng Nhật trước Yahoo. |
| Đại | (VN) ¥50k chia 3 = ¥16,500 mỗi đứa. Anh dùng tiền này mua nhẫn đính hôn cho em. |
| Mai | (VN) Anh đâu cần. Em chỉ cần anh về thôi. |
| Đại | (VN) 7 tháng nữa. À, sách giáo trình "アルゴリズム入門" của Ohno-sensei chính là sách đầu tiên đăng bán trên app team anh làm mẫu. Anh khoe sensei sẽ sốc lắm. |
| Mai | (VN) (cười) Sensei sẽ tự hào. Ngủ ngon nhé anh. |
| Đại | (VN) Anh về izakaya nhậu tiếp với Yamato, Aiko. Tối nay anh say cho biết. Thương em. |

---

## Đọng lại chương 7

Đại trải qua hackathon đầu tiên với rất nhiều mẫu câu keigo môi trường công ty công nghệ Nhật. Tại quầy lễ tân Yahoo, **「<ruby>受付<rt>うけつけ</rt></ruby>させていただきました」** (sonkeigo + kenjougo) là chuẩn. Khi MC khai mạc dùng **「ご<ruby>健闘<rt>けんとう</rt></ruby>をお<ruby>祈<rt>いの</rt></ruby>りいたします」** — câu chúc thi tốt trang trọng. Trong booth team, ngôn ngữ chuyển sang `〜形` ngắn gọn giữa bạn. Lúc 2h sáng nhắn LINE crisis, Đại dùng câu cụt **「<ruby>遅<rt>おそ</rt></ruby>すぎる!」** — không keigo. Khi pitch trước judges, Đại dùng **「<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます」「ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました」** — câu mở-đóng pitch chuẩn. Q&A dùng **「ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます」「<ruby>想定<rt>そうてい</rt></ruby>しています」**. Lúc nhận giải cúi đầu **「ありがとうございます」**. Phỏng vấn mini với MC: **「<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねです」** — câu khiêm tốn chuẩn. Cuối ngày gọi Mai bằng tiếng Việt, khoe thành tích và hứa dùng tiền thưởng mua nhẫn đính hôn.

> Từ vựng & mẫu câu chương này: <ruby>受付<rt>うけつけ</rt></ruby>・ネームタグ・<ruby>制限時間<rt>せいげんじかん</rt></ruby>・<ruby>採用面接<rt>さいようめんせつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>・アーキテクチャ・<ruby>状態係数<rt>じょうたいけいすう</rt></ruby>・<ruby>差別化<rt>さべつか</rt></ruby><ruby>要因<rt>よういん</rt></ruby>・<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>・<ruby>奨励賞<rt>しょうれいしょう</rt></ruby>・<ruby>商業化<rt>しょうぎょうか</rt></ruby>・<ruby>取引手数料<rt>とりひきてすうりょう</rt></ruby>・<ruby>結果発表<rt>けっかはっぴょう</rt></ruby>・〜させていただきます・ご<ruby>健闘<rt>けんとう</rt></ruby>をお<ruby>祈<rt>いの</rt></ruby>りいたします・ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました・ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます・<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ね・お<ruby>名前<rt>なまえ</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますか

## Bí quyết chương

- **Lễ tân Yahoo dùng keigo cao**: `お<ruby>名前<rt>なまえ</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますか` (xin tên), `〜でございます` (= です trang trọng). Đại đáp `失礼いたします` khi rời quầy.
- **Pitch 5 phút**: Cấu trúc chuẩn — `〜を<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます` (mở) → vấn đề → giải pháp → demo → `ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました` (đóng).
- **Q&A keigo**: `ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます` mở đầu mọi câu trả lời. Tránh nói "đúng đấy" trống không.
- **Code-switch ngữ cảnh**: Lễ tân/MC/judge = keigo cao. Team booth = `〜形` ngắn. LINE 2AM = câu cụt cảm xúc. Mai = tiếng Việt full.
- **Cảm tưởng nhận giải**: `<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ね` (tích luỹ mỗi ngày) — câu khiêm tốn truyền thống Nhật.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 参加者 | さんかしゃ | THAM GIA GIẢ | người tham gia |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | xin nhận |
| 階 | かい | GIAI | tầng |
| 梅田駅 | うめだえき | MAI ĐIỀN DỊCH | ga Umeda |
| 迷子 | まいご | MÊ TỬ | lạc |
| 探す | さがす | THÁM | tìm |
| 外部 | がいぶ | NGOẠI BỘ | bên ngoài |
| 勝負 | しょうぶ | THẮNG PHỤ | trận đấu |
| 設計 | せっけい | THIẾT KẾ | thiết kế |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | thời gian giới hạn |
| 最優秀賞 | さいゆうしゅうしょう | TỐI ƯU TÚ THƯỞNG | giải nhất |
| 採用面接 | さいようめんせつ | THÁI DỤNG DIỆN TIẾP | phỏng vấn tuyển dụng |
| 確約 | かくやく | XÁC ƯỚC | cam kết |
| 厳しい | きびしい | NGHIÊM | khắc nghiệt |
| 競合 | きょうごう | CẠNH HỢP | cạnh tranh |
| 開発開始 | かいはつかいし | KHAI PHÁT KHAI THỦY | bắt đầu phát triển |
| 健闘 | けんとう | KIỆN ĐẤU | thi tốt |
| 祈る | いのる | KỲ | cầu chúc |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 混雑 | こんざつ | HỖN TẠP | đông đúc |
| 予測 | よそく | DỰ TRẮC | dự đoán |
| 転売 | てんばい | CHUYỂN MÃI | bán lại |
| 価格 | かかく | GIÁ CÁCH | giá |
| 推す | おす | THÔI | đề cử |
| 需要 | じゅよう | NHU YẾU | nhu cầu |
| 魅力的 | みりょくてき | MỊ LỰC ĐÍCH | hấp dẫn |
| 不要 | ふよう | BẤT YẾU | không cần |
| 差別化 | さべつか | SAI BIỆT HOÁ | khác biệt hoá |
| 要因 | よういん | YẾU NHÂN | yếu tố |
| 限定 | げんてい | HẠN ĐỊNH | giới hạn |
| 認証 | にんしょう | NHẬN CHỨNG | xác thực |
| 状態係数 | じょうたいけいすう | TRẠNG THÁI HỆ SỐ | hệ số tình trạng |
| 新着 | しんちゃく | TÂN TRỨ | mới đăng |
| 段階 | だんかい | ĐOẠN GIAI | cấp độ |
| 新品同様 | しんぴんどうよう | TÂN PHẨM ĐỒNG DẠNG | như mới |
| 実装 | じっそう | THỰC TRANG | cài đặt |
| 画面 | がめん | HOẠ DIỆN | màn hình |
| 一覧 | いちらん | NHẤT LÃM | danh sách |
| 詳細 | しょうさい | TƯỜNG TẾ | chi tiết |
| 出品 | しゅっぴん | XUẤT PHẨM | đăng bán |
| 洗練 | せんれん | TẨY LUYỆN | tinh tế |
| 適用 | てきよう | THÍCH DỤNG | áp dụng |
| 真似 | まね | CHÂN TỰ | bắt chước |
| 主催 | しゅさい | CHỦ THÔI | nhà tổ chức |
| 戦略的 | せんりゃくてき | CHIẾN LƯỢC ĐÍCH | chiến lược |
| 秒 | びょう | DIỄU | giây |
| 進捗 | しんちょく | TIẾN THẮC | tiến độ |
| 修正 | しゅうせい | TU CHÍNH | sửa |
| 動画 | どうが | ĐỘNG HOẠ | video |
| 台本 | だいほん | ĐÀI BẢN | kịch bản |
| 編集 | へんしゅう | BIÊN TẬP | chỉnh sửa |
| 起動 | きどう | KHỞI ĐỘNG | khởi động |
| 発表 | はっぴょう | PHÁT BIỂU | trình bày |
| 解決策 | かいけつさく | GIẢI QUYẾT SÁCH | giải pháp |
| 費やす | ついやす | PHÍ | tiêu tốn |
| 翌年 | よくねん | DỰC NIÊN | năm sau |
| 処分 | しょぶん | XỬ PHÂN | xử lý |
| 困る | こまる | KHỐN | gặp khó |
| 購入 | こうにゅう | CẤU NHẬP | mua |
| 技術的 | ぎじゅつてき | KỸ THUẬT ĐÍCH | kỹ thuật |
| 清聴 | せいちょう | THANH THÍNH | lắng nghe |
| 指摘 | してき | CHỈ TRÍCH | góp ý |
| 初期段階 | しょきだんかい | SƠ KỲ ĐOẠN GIAI | giai đoạn đầu |
| 対処 | たいしょ | ĐỐI XỬ | xử lý |
| 定価 | ていか | ĐỊNH GIÁ | giá gốc |
| 基準 | きじゅん | CƠ CHUẨN | chuẩn |
| 取引 | とりひき | THỦ DẪN | giao dịch |
| 件数 | けんすう | KIỆN SỐ | số lượng |
| 超える | こえる | SIÊU | vượt |
| 実績 | じっせき | THỰC TÍCH | thành tích |
| 切り替える | きりかえる | THIẾT THẾ | chuyển đổi |
| 商業化 | しょうぎょうか | THƯƠNG NGHIỆP HOÁ | thương mại hoá |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 手数料 | てすうりょう | THỦ SỐ LIỆU | phí |
| 想定 | そうてい | TƯỞNG ĐỊNH | dự kiến |
| 規模 | きぼ | QUY MÔ | quy mô |
| 全国 | ぜんこく | TOÀN QUỐC | toàn quốc |
| 展開 | てんかい | TRIỂN KHAI | mở rộng |
| 市場 | しじょう | THỊ TRƯỜNG | thị trường |
| 公開 | こうかい | CÔNG KHAI | công khai |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | công bố kết quả |
| 優秀賞 | ゆうしゅうしょう | ƯU TÚ THƯỞNG | giải nhì |
| 奨励賞 | しょうれいしょう | KHUYẾN LỆ THƯỞNG | giải khuyến khích |
| 壇上 | だんじょう | ĐÀN THƯỢNG | bục |
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 感想 | かんそう | CẢM TƯỞNG | cảm tưởng |
| 一言 | ひとこと | NHẤT NGÔN | một lời |
| 積み重ね | つみかさね | TÍCH TRỌNG | tích luỹ |
| 活躍 | かつやく | HOẠT DƯỢC | phát triển |
| 期待 | きたい | KỲ ĐÃI | mong đợi |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000008, 800000021, NULL, 'markdown_book', 'T8. Cấu trúc dữ liệu — Array, Stack, Queue, Hash, Tree, Heap (データ構造)', '# Sách sinh viên Đại học Osaka · T8. Cấu trúc dữ liệu — Array, Stack, Queue, Hash, Tree, Heap (データ構造)

> **Mục tiêu nhân vật:** Đại (21t, ĐH Osaka CS năm 1, 10-11/2026, N2) học các mẫu hội thoại tiếng Nhật xoay quanh lecture データ構造 với Ohno-sensei: (1) câu xin hỏi `〜について<ruby>確認<rt>かくにん</rt></ruby>させてください`, (2) so sánh tốc độ Array vs Linked List với sempai, (3) trả lời quiz ngẫu hứng sensei trong lecture, (4) xin extension deadline bài tập, (5) khoe rating AtCoder lên Green trong LINE nhóm, (6) cảnh tiếng Việt — gọi điện Mai 2 tháng trước cưới.

---

## Bối cảnh

Tháng 10-11/2026, học kỳ 2 năm 1. Lecture データ構造 mỗi tuần với **Ohno-sensei** (tiếp T5). 8 tuần, 8 cấu trúc: Array, Linked List, Stack, Queue, Hash Table, Tree/BST, Heap, Graph. Giáo trình "アルゴリズムとデータ構造" giá ¥3,200. Đại đăng bán cuốn lý thuyết tháng trước trên app **教科書MarketPlace** mà team đã làm Hack U (T7). Aiko thỉnh thoảng kéo Đại đi triển lãm UI/UX cuối tuần. AtCoder Đại đang Brown 750, mục tiêu Green trước Tết. Chương này tập trung mẫu câu **giao tiếp lecture chính quy nhiều tuần**, **xin extension deadline** và **chat LINE nhóm AtCoder khi lên rating**.

---

## Tình huống 1 — Giảng đường B2 · 9:00 thứ 3 tuần 1, Array vs Linked List

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>本日<rt>ほんじつ</rt></ruby>はArrayとLinked Listを<ruby>比較<rt>ひかく</rt></ruby>します。<br>*(Hôm nay so sánh Array với Linked List.)* |
| Ohno | Array は<ruby>連続<rt>れんぞく</rt></ruby>メモリに<ruby>配置<rt>はいち</rt></ruby>、ランダムアクセスO(1)、<ruby>途中<rt>とちゅう</rt></ruby><ruby>挿入<rt>そうにゅう</rt></ruby>はO(n)です。<br>*(Array trên bộ nhớ liên tục, truy cập ngẫu nhiên O(1), chèn giữa O(n).)* |
| Ohno | Linked List は<ruby>分散<rt>ぶんさん</rt></ruby>メモリ、ランダムアクセスO(n)、<ruby>途中<rt>とちゅう</rt></ruby><ruby>挿入<rt>そうにゅう</rt></ruby>はO(1)です。<br>*(LL trên bộ nhớ phân tán, truy cập ngẫu nhiên O(n), chèn giữa O(1).)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>させてください。Linked List の<ruby>挿入<rt>そうにゅう</rt></ruby>がO(1)になるのは、<ruby>挿入位置<rt>そうにゅういち</rt></ruby>のノードへの<ruby>参照<rt>さんしょう</rt></ruby>を<ruby>既<rt>すで</rt></ruby>に<ruby>持<rt>も</rt></ruby>っている<ruby>場合<rt>ばあい</rt></ruby>のみですよね?<br>*(Thầy, em xin xác nhận. LL chèn O(1) chỉ khi đã giữ tham chiếu đến nút vị trí chèn đúng không ạ?)* |
| Ohno | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>質問<rt>しつもん</rt></ruby>です。その<ruby>通<rt>とお</rt></ruby>り。<ruby>参照<rt>さんしょう</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていない<ruby>場合<rt>ばあい</rt></ruby>は、<ruby>検索<rt>けんさく</rt></ruby>に O(n) かかります。<br>*(Câu hỏi tuyệt. Đúng. Nếu không có tham chiếu, tìm vị trí mất O(n).)* |
| Yamato | (whisper Đại) よく<ruby>気付<rt>きづ</rt></ruby>いたな。<br>*(Phát hiện hay đó.)* |

---

## Tình huống 2 — Canteen tầng 1 · 12:30 thứ 3, ăn trưa với Yamato + Lin Wei

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Dai''s question this morning was sharp. Did you study LL before?<br>*(Câu hỏi sáng nay của Đại sắc bén ghê. Bạn học LL từ trước à?)* |
| Đại | <ruby>高校<rt>こうこう</rt></ruby>のとき<ruby>少<rt>すこ</rt></ruby>しやった。ベトナムの<ruby>専門<rt>せんもん</rt></ruby><ruby>高校<rt>こうこう</rt></ruby>で。<br>*(Cấp 3 học chút rồi. Trường chuyên Tin ở Việt Nam.)* |
| Yamato | <ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>が<ruby>来週<rt>らいしゅう</rt></ruby> Stack と Queue を<ruby>扱<rt>あつか</rt></ruby>うが、<ruby>俺<rt>おれ</rt></ruby>は AtCoder で<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>使<rt>つか</rt></ruby>っているから<ruby>飽<rt>あ</rt></ruby>きるな。<br>*(Tuần sau sensei dạy Stack và Queue, nhưng tớ tuần nào ABC cũng dùng, chán.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>はまだ`list.pop(0)` を<ruby>使<rt>つか</rt></ruby>って TLE になったことある。`deque` の<ruby>必要性<rt>ひつようせい</rt></ruby>を<ruby>体感<rt>たいかん</rt></ruby>した。<br>*(Tớ từng dùng `list.pop(0)` rồi TLE. Cảm nhận sự cần thiết của `deque`.)* |
| Lin Wei | (English) Classic trap. `list.pop(0)` is O(n), always use `deque.popleft()`.<br>*(Bẫy cổ điển. `list.pop(0)` là O(n), luôn dùng `deque.popleft()`.)* |
| Yamato | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> (4<ruby>年生<rt>ねんせい</rt></ruby>) も<ruby>同<rt>おな</rt></ruby>じバグでTLEしたって<ruby>笑<rt>わら</rt></ruby>ってた。<br>*(Anh Kimura sempai năm 4 cũng cười kể từng TLE vì bug đó.)* |

---

## Tình huống 3 — Giảng đường B2 · 9:00 thứ 3 tuần 2, Stack & Queue lecture

| Vai | Lời thoại |
|---|---|
| Ohno | Stack は LIFO、push と pop が O(1)。<ruby>用途<rt>ようと</rt></ruby>:undo<ruby>機能<rt>きのう</rt></ruby>、<ruby>再帰<rt>さいき</rt></ruby>のコールスタック、<ruby>括弧<rt>かっこ</rt></ruby><ruby>整合性<rt>せいごうせい</rt></ruby>チェック。<br>*(Stack LIFO, push/pop O(1). Dùng: undo, call stack, kiểm tra ngoặc.)* |
| Ohno | では<ruby>誰<rt>だれ</rt></ruby>か <ruby>括弧<rt>かっこ</rt></ruby><ruby>整合性<rt>せいごうせい</rt></ruby>チェックのアルゴリズムを<ruby>説明<rt>せつめい</rt></ruby>できますか?<br>*(Vậy ai giải thích thuật toán kiểm tra cân bằng dấu ngoặc được?)* |
| Đại | (giơ tay) <ruby>私<rt>わたし</rt></ruby>がやらせてください。<br>*(Để em làm ạ.)* |
| Đại | <ruby>文字列<rt>もじれつ</rt></ruby>を<ruby>左<rt>ひだり</rt></ruby>から<ruby>読<rt>よ</rt></ruby>みます。<ruby>開<rt>ひら</rt></ruby>き<ruby>括弧<rt>かっこ</rt></ruby>を見たら stack に push、<ruby>閉<rt>と</rt></ruby>じ<ruby>括弧<rt>かっこ</rt></ruby>を<ruby>見<rt>み</rt></ruby>たら stack を pop して<ruby>対応<rt>たいおう</rt></ruby>するか<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Đọc chuỗi từ trái. Gặp ngoặc mở thì push vào stack, gặp ngoặc đóng thì pop ra kiểm tra có khớp không.)* |
| Đại | <ruby>最後<rt>さいご</rt></ruby>に stack が<ruby>空<rt>から</rt></ruby>なら<ruby>整合性<rt>せいごうせい</rt></ruby> OK、そうでなければ NG。<br>*(Cuối cùng stack rỗng là OK, không rỗng là NG.)* |
| Ohno | <ruby>完璧<rt>かんぺき</rt></ruby>。コードを<ruby>黒板<rt>こくばん</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてもらえますか?<br>*(Hoàn hảo. Viết code lên bảng giùm thầy?)* |
| Đại | はい。(viết) `stack=[]; pairs={'')'':''('','']'':''['',''}'':''{''}; for c in s: if c in ''([{'': stack.append(c); elif c in '')]}'': if not stack or stack.pop()!=pairs[c]: return False; return not stack`<br> |
| Ohno | お<ruby>見事<rt>みごと</rt></ruby>です。<br>*(Đẹp tuyệt.)* |

---

## Tình huống 4 — Văn phòng Ohno-sensei tầng 4 · 16:30 thứ 5 tuần 2, xin extension

*Đại làm gia sư + Hack U follow-up nên trễ bài tập 1 ngày. Đến văn phòng xin gia hạn.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>。<br>*(Xin phép, thầy Ohno.)* |
| Ohno | グエン<ruby>君<rt>くん</rt></ruby>、どうぞ。<br>*(Em Nguyễn, vào đi.)* |
| Đại | あの、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>第<rt>だい</rt></ruby>3<ruby>回<rt>かい</rt></ruby><ruby>課題<rt>かだい</rt></ruby>の<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>を<ruby>1日<rt>いちにち</rt></ruby><ruby>延<rt>の</rt></ruby>ばしていただけないでしょうか。<br>*(Thưa thầy, em vô cùng xin lỗi, có thể cho phép em hoãn nộp bài tập số 3 thêm 1 ngày được không ạ?)* |
| Ohno | <ruby>理由<rt>りゆう</rt></ruby>は?<br>*(Lý do?)* |
| Đại | <ruby>家庭教師<rt>かていきょうし</rt></ruby>のアルバイトの<ruby>生徒<rt>せいと</rt></ruby>がAtCoderの<ruby>大会<rt>たいかい</rt></ruby><ruby>直前<rt>ちょくぜん</rt></ruby>で、<ruby>追加<rt>ついか</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>を<ruby>要望<rt>ようぼう</rt></ruby>されまして…<ruby>計画<rt>けいかく</rt></ruby><ruby>管理<rt>かんり</rt></ruby>が<ruby>甘<rt>あま</rt></ruby>く、<ruby>反省<rt>はんせい</rt></ruby>しております。<br>*(Học viên gia sư của em sắp thi AtCoder, em phải dạy thêm... lập kế hoạch của em chưa chu, em xin tự kiểm điểm.)* |
| Ohno | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うのはいいことです。1<ruby>日<rt>にち</rt></ruby>だけならいいですよ。ただし<ruby>次回<rt>じかい</rt></ruby>からは<ruby>早<rt>はや</rt></ruby>めに<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>んでください。<br>*(Nói thẳng là tốt. 1 ngày thì được. Nhưng lần sau làm sớm hơn nhé.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました。<br>*(Em chân thành cảm ơn thầy. Em đã làm phiền thầy.)* |
| Ohno | <ruby>家庭教師<rt>かていきょうし</rt></ruby>もしているんですね。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Em làm cả gia sư hả. Cố lên.)* |

---

## Tình huống 5 — Giảng đường B2 · 9:00 thứ 3 tuần 3, Hash Table

| Vai | Lời thoại |
|---|---|
| Ohno | Hash Table は<ruby>平均<rt>へいきん</rt></ruby> O(1) の<ruby>検索<rt>けんさく</rt></ruby>。ハッシュ<ruby>関数<rt>かんすう</rt></ruby>と<ruby>衝突<rt>しょうとつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>が<ruby>核心<rt>かくしん</rt></ruby>です。<br>*(Hash Table tra cứu trung bình O(1). Hàm băm + xử lý xung đột là cốt lõi.)* |
| Ohno | <ruby>衝突<rt>しょうとつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>には2つの<ruby>方式<rt>ほうしき</rt></ruby>があります。チェイニングとオープンアドレッシング。<br>*(Xử lý xung đột có 2 cách: chaining và open addressing.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、「オープンアドレッシング」というのは?<br>*(Thầy, "open addressing" nghĩa là gì ạ?)* |
| Ohno | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>衝突<rt>しょうとつ</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>、<ruby>別<rt>べつ</rt></ruby>のスロットを<ruby>探<rt>さが</rt></ruby>して<ruby>格納<rt>かくのう</rt></ruby>する<ruby>方式<rt>ほうしき</rt></ruby>です。<ruby>線形探査<rt>せんけいたんさ</rt></ruby>、<ruby>二次探査<rt>にじたんさ</rt></ruby>、ダブルハッシュなどがあります。<br>*(Hỏi hay. Khi xung đột, tìm slot khác để lưu. Có linear probing, quadratic probing, double hashing.)* |
| Đại | Python の `dict` はどちらを<ruby>使<rt>つか</rt></ruby>っていますか?<br>*(`dict` của Python dùng cái nào ạ?)* |
| Ohno | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>質問<rt>しつもん</rt></ruby>! オープンアドレッシングです。<ruby>具体的<rt>ぐたいてき</rt></ruby>には<ruby>線形探査<rt>せんけいたんさ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>い<ruby>方式<rt>ほうしき</rt></ruby>。<ruby>3.7<rt>さんてんなな</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>挿入順<rt>そうにゅうじゅん</rt></ruby>も<ruby>保持<rt>ほじ</rt></ruby>します。<br>*(Câu hỏi tuyệt! Open addressing — gần linear probing. Python 3.7+ còn giữ thứ tự chèn.)* |
| Đại | なるほど。だから `for k in dict:` で<ruby>挿入順<rt>そうにゅうじゅん</rt></ruby>に<ruby>出<rt>で</rt></ruby>てくるんですね。<br>*(À thì ra. Nên `for k in dict:` đi theo thứ tự chèn đó.)* |
| Ohno | その<ruby>通<rt>とお</rt></ruby>り。<br>*(Đúng vậy.)* |

---

## Tình huống 6 — Booth thư viện CS tầng 2 · 15:00 thứ 5, học nhóm với sempai Kimura

*Sempai Kimura (4年生) tình cờ thấy Đại đang đọc 教科書, ngồi xuống dạy thêm.*

| Vai | Lời thoại |
|---|---|
| Kimura | あ、グエン<ruby>君<rt>くん</rt></ruby>? <ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>取<rt>と</rt></ruby>ってる?<br>*(A, Đại à? Lấy lớp Ohno-sensei à?)* |
| Đại | はい、<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby>Treeに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Vâng, anh Kimura. Tuần sau vào Tree ạ.)* |
| Kimura | <ruby>俺<rt>おれ</rt></ruby>4<ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>取<rt>と</rt></ruby>った。アドバイスする? Treeの<ruby>章<rt>しょう</rt></ruby>はBST の<ruby>削除<rt>さくじょ</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい。3ケースに<ruby>分<rt>わ</rt></ruby>けて<ruby>考<rt>かんが</rt></ruby>えるのを<ruby>覚<rt>おぼ</rt></ruby>えておけ。<br>*(Tớ học 4 năm trước rồi. Lời khuyên? Chương Tree khó nhất là xoá nút BST. Nhớ chia 3 case.)* |
| Đại | <ruby>3<rt>さん</rt></ruby>ケース?<br>*(3 case?)* |
| Kimura | <ruby>子<rt>こ</rt></ruby>ノードがない<ruby>場合<rt>ばあい</rt></ruby>、<ruby>子<rt>こ</rt></ruby>が1つの<ruby>場合<rt>ばあい</rt></ruby>、<ruby>子<rt>こ</rt></ruby>が2つの<ruby>場合<rt>ばあい</rt></ruby>。<ruby>最後<rt>さいご</rt></ruby>のケースは<ruby>右部分木<rt>みぎぶぶんき</rt></ruby>の<ruby>最小値<rt>さいしょうち</rt></ruby>と<ruby>置<rt>お</rt></ruby>き<ruby>換<rt>か</rt></ruby>える。<br>*(0 con, 1 con, 2 con. Trường hợp 2 con thay bằng giá trị min cây con phải.)* |
| Đại | ありがとうございます、<ruby>先輩<rt>せんぱい</rt></ruby>! メモします。<br>*(Cảm ơn anh! Em ghi chép đây.)* |
| Kimura | あと、Heap は AtCoder で<ruby>頻出<rt>ひんしゅつ</rt></ruby>。`heapq` を<ruby>使<rt>つか</rt></ruby>いこなせるようになれ。<br>*(Còn nữa, Heap hay xuất hiện ở AtCoder. Học dùng `heapq` thành thạo nhé.)* |
| Đại | はい!<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>茶<rt>ちゃ</rt></ruby>でもどうですか?<br>*(Vâng! Anh Kimura, em mời anh trà nhé?)* |
| Kimura | おお、おごり?<ruby>嬉<rt>うれ</rt></ruby>しいね、<ruby>行<rt>い</rt></ruby>こう。<br>*(Ồ, bao à? Vui ghê, đi nào.)* |

---

## Tình huống 7 — Giảng đường B2 · 9:00 thứ 3 tuần 5, Tree & BST

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>二分探索木<rt>にぶんたんさくぎ</rt></ruby> (BST) です。Tree は<ruby>根<rt>ね</rt></ruby>と<ruby>子<rt>こ</rt></ruby><ruby>節点<rt>せってん</rt></ruby>から<ruby>成<rt>な</rt></ruby>る、<ruby>二分木<rt>にぶんぎ</rt></ruby>は<ruby>子<rt>こ</rt></ruby>が<ruby>最大<rt>さいだい</rt></ruby>2つ。<br>*(Hôm nay Binary Search Tree. Tree có gốc và nút con, cây nhị phân tối đa 2 con.)* |
| Ohno | BST<ruby>性質<rt>せいしつ</rt></ruby>:<ruby>左<rt>ひだり</rt></ruby><<ruby>節点<rt>せってん</rt></ruby><<ruby>右<rt>みぎ</rt></ruby>。<ruby>検索<rt>けんさく</rt></ruby>・<ruby>挿入<rt>そうにゅう</rt></ruby>は<ruby>平均<rt>へいきん</rt></ruby> O(log n)、<ruby>最悪<rt>さいあく</rt></ruby> O(n)。<br>*(Tính chất BST: trái < nút < phải. Tìm/chèn trung bình O(log n), xấu nhất O(n).)* |
| Ohno | <ruby>削除<rt>さくじょ</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>誰<rt>だれ</rt></ruby>か3つのケースを<ruby>説明<rt>せつめい</rt></ruby>できますか?<br>*(Thao tác xoá khó nhất. Ai giải thích 3 case được?)* |
| Đại | (giơ tay) はい。<ruby>子<rt>こ</rt></ruby>がない<ruby>場合<rt>ばあい</rt></ruby>はそのまま<ruby>削除<rt>さくじょ</rt></ruby>。<ruby>子<rt>こ</rt></ruby>が1つの<ruby>場合<rt>ばあい</rt></ruby>はその<ruby>子<rt>こ</rt></ruby>で<ruby>置<rt>お</rt></ruby>き<ruby>換<rt>か</rt></ruby>える。<ruby>子<rt>こ</rt></ruby>が2つの<ruby>場合<rt>ばあい</rt></ruby>は<ruby>右部分木<rt>みぎぶぶんき</rt></ruby>の<ruby>最小値<rt>さいしょうち</rt></ruby>と<ruby>置<rt>お</rt></ruby>き<ruby>換<rt>か</rt></ruby>える。<br>*(Vâng. Không có con: xoá luôn. 1 con: thay bằng con đó. 2 con: thay bằng min cây con phải.)* |
| Ohno | <ruby>完璧<rt>かんぺき</rt></ruby>!<ruby>事前<rt>じぜん</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>してきましたか?<br>*(Hoàn hảo! Em đã học trước à?)* |
| Đại | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>図書館<rt>としょかん</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Anh Kimura sempai chỉ em ở thư viện.)* |
| Ohno | <ruby>4<rt>よん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby><ruby>君<rt>くん</rt></ruby>ですね。いい<ruby>先輩<rt>せんぱい</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていますね。<br>*(Anh Kimura năm 4 hả. Em có sempai tốt đấy.)* |

---

## Tình huống 8 — Giảng đường B2 · 10:30 thứ 3 tuần 5, sensei thử thách

*Sensei tiếp tục Heap & Priority Queue, gọi Lin Wei và Yamato lên bảng.*

| Vai | Lời thoại |
|---|---|
| Ohno | Heap は<ruby>完全<rt>かんぜん</rt></ruby><ruby>二分木<rt>にぶんぎ</rt></ruby>。Min-heap は<ruby>根<rt>ね</rt></ruby>が<ruby>最小値<rt>さいしょうち</rt></ruby>、<ruby>挿入<rt>そうにゅう</rt></ruby>と<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>しが O(log n)。<br>*(Heap là cây nhị phân đầy đủ. Min-heap gốc = min, chèn/lấy O(log n).)* |
| Ohno | リン・ウェイ<ruby>君<rt>くん</rt></ruby>、Python の `heapq` で max-heap を<ruby>作<rt>つく</rt></ruby>る<ruby>方法<rt>ほうほう</rt></ruby>は?<br>*(Lin Wei, làm max-heap bằng `heapq` Python sao?)* |
| Lin Wei | <ruby>値<rt>あたい</rt></ruby>を<ruby>負<rt>ふ</rt></ruby>にして push、pop の<ruby>結果<rt>けっか</rt></ruby>を<ruby>正<rt>せい</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>します。`heapq.heappush(h, -x)` 、`-heapq.heappop(h)` です。<br>*(Đẩy giá trị âm, pop ra đảo lại dấu.)* |
| Ohno | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>大和<rt>やまと</rt></ruby><ruby>君<rt>くん</rt></ruby>、<ruby>優先度付<rt>ゆうせんどつ</rt></ruby>きキューの<ruby>用途<rt>ようと</rt></ruby>は?<br>*(Đúng. Yamato, ứng dụng priority queue?)* |
| Yamato | Dijkstra アルゴリズム、top-K<ruby>問題<rt>もんだい</rt></ruby>、イベントスケジューラ、A*<ruby>探索<rt>たんさく</rt></ruby>です。<br>*(Dijkstra, top-K, event scheduler, A* search.)* |
| Ohno | <ruby>立派<rt>りっぱ</rt></ruby>!<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>参加<rt>さんか</rt></ruby>です。<br>*(Giỏi! Cả 3 em tham gia lớp xuất sắc.)* |

---

## Tình huống 9 — Phòng trọ Toyonaka · Thứ 7 21:00, AtCoder ABC lên Green (LINE)

| Vai | Lời thoại |
|---|---|
| Yamato | (LINE group "OsakaCS3") ABC<ruby>始<rt>はじ</rt></ruby>まる!<br>*(ABC bắt đầu!)* |
| Đại | <ruby>参戦<rt>さんせん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。<ruby>今夜<rt>こんや</rt></ruby>はheap<ruby>問題<rt>もんだい</rt></ruby><ruby>来<rt>く</rt></ruby>るかも。<br>*(Tham chiến. Tối nay có thể có bài heap.)* |
| (90 phút sau) | |
| Đại | A+B+C AC!Cはheap<ruby>問題<rt>もんだい</rt></ruby>! `heapq` で<ruby>解<rt>と</rt></ruby>けた!<br>*(AC 3 bài! Bài C là heap! Giải bằng `heapq`!)* |
| Yamato | A+B+C+D AC、+35。<ruby>緑<rt>みどり</rt></ruby>1100→1135。<br>*(AC 4 bài, +35. Green 1100→1135.)* |
| Lin Wei | A+B+C+D+E AC. +12. Cyan 1305→1317.<br>*(AC 5 bài. +12. Cyan lên.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>のレートは?待って…800→900→925! ついに<ruby>緑<rt>みどり</rt></ruby><ruby>到達<rt>とうたつ</rt></ruby>!!<br>*(Rating tớ? Chờ chút... 800→900→925! Lên Green!!)* |
| Yamato | おめでとう!!ついに<ruby>同<rt>おな</rt></ruby>じ<ruby>色<rt>いろ</rt></ruby>!<br>*(Chúc mừng!! Cùng màu rồi!)* |
| Aiko | <ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>凄<rt>すご</rt></ruby>すぎ!<ruby>祝<rt>いわ</rt></ruby>いに<ruby>明日<rt>あした</rt></ruby><ruby>梅田<rt>うめだ</rt></ruby>で<ruby>食<rt>た</rt></ruby>べ<ruby>放題<rt>ほうだい</rt></ruby>?<br>*(3 đứa ghê quá! Ngày mai liên hoan buffet Umeda?)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>! <ruby>俺<rt>おれ</rt></ruby>がおごる!<br>*(Tán thành! Tớ bao!)* |
| Yamato | おお!ダイ<ruby>太<rt>ふと</rt></ruby><ruby>っ腹<rt>ぱら</rt></ruby>!<br>*(Ồ! Đại hào phóng!)* |

---

## Tình huống 10 — Yakiniku Umeda · Chủ nhật 19:00, ăn mừng

| Vai | Lời thoại |
|---|---|
| Aiko | カンパーイ!<ruby>緑<rt>みどり</rt></ruby><ruby>到達<rt>とうたつ</rt></ruby>おめでとう!<br>*(Cụng ly! Chúc mừng lên Green!)* |
| Đại | カンパーイ!<br>*(Cụng ly!)* |
| Yamato | ダイ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>早<rt>はや</rt></ruby>かったな。<ruby>俺<rt>おれ</rt></ruby>は<ruby>緑<rt>みどり</rt></ruby><ruby>到達<rt>とうたつ</rt></ruby>に1<ruby>年半<rt>ねんはん</rt></ruby>かかった。<br>*(Đại, em lên nhanh ghê. Tớ mất 1 năm rưỡi mới lên Green.)* |
| Đại | ヤマトの<ruby>影響<rt>えいきょう</rt></ruby>。<ruby>毎週<rt>まいしゅう</rt></ruby>ABC<ruby>参加<rt>さんか</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>めてくれたから。<br>*(Nhờ Yamato. Cậu khuyên tớ tham gia ABC tuần nào cũng.)* |
| Lin Wei | (English) Dai, your improvement curve is impressive. Brown→Green in 5 months.<br>*(Đại, đường cong tiến bộ ấn tượng. Brown lên Green trong 5 tháng.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>はFigmaコンテストに<ruby>応募<rt>おうぼ</rt></ruby>することにした!みんなの<ruby>影響<rt>えいきょう</rt></ruby>!<br>*(Mình quyết định nộp Figma contest! Ảnh hưởng từ mọi người!)* |
| Đại | <ruby>愛子<rt>あいこ</rt></ruby>!<ruby>応援<rt>おうえん</rt></ruby>するよ!<br>*(Aiko! Ủng hộ cậu!)* |
| Yamato | <ruby>4<rt>よん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>頑張<rt>がんば</rt></ruby>ろう!<br>*(Cả 4 đứa cùng cố lên!)* |

---

## Tình huống 11 — Nhà Tony+Yumi · Thứ 6 19:00, gia đình homestay cũ

*Đại đưa Yamato và Aiko sang nhà Tony+Yumi ăn cơm.*

| Vai | Lời thoại |
|---|---|
| Tony | (mở cửa) ダイ<ruby>君<rt>くん</rt></ruby>!ヤマト<ruby>君<rt>くん</rt></ruby>と<ruby>愛子<rt>あいこ</rt></ruby>ちゃんもようこそ!<br>*(Đại! Yamato và Aiko nữa, mời vào!)* |
| Yumi | <ruby>今夜<rt>こんや</rt></ruby>はベトナム<ruby>料理<rt>りょうり</rt></ruby>です!ダイ<ruby>君<rt>くん</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わった<ruby>春巻<rt>はるま</rt></ruby>き。<br>*(Tối nay món Việt! Nem Đại dạy tôi.)* |
| Yamato | (ăn thử) <ruby>美味<rt>おい</rt></ruby>しい!ベトナム<ruby>料理<rt>りょうり</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて<ruby>食<rt>た</rt></ruby>べる!<br>*(Ngon quá! Lần đầu ăn món Việt!)* |
| Aiko | <ruby>由美<rt>ゆみ</rt></ruby>さん、<ruby>料理<rt>りょうり</rt></ruby>お<ruby>上手<rt>じょうず</rt></ruby>ですね。レストラン<ruby>並<rt>な</rt></ruby>み。<br>*(Chị Yumi nấu ngon ghê. Như nhà hàng.)* |
| Yumi | <ruby>息子<rt>むすこ</rt></ruby>がいないから、ダイ<ruby>君<rt>くん</rt></ruby>が<ruby>息子<rt>むすこ</rt></ruby>みたいなものよ。<br>*(Không có con trai nên Đại như con trai vậy đó.)* |
| Tony | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>結婚式<rt>けっこんしき</rt></ruby>は1<ruby>月<rt>がつ</rt></ruby>?<br>*(Đại, đám cưới tháng 1 hả?)* |
| Đại | はい、ハノイで。<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>14<rt>じゅうよっ</rt></ruby><ruby>日<rt>か</rt></ruby>です。トニーさん、<ruby>由美<rt>ゆみ</rt></ruby>さん、<ruby>是非<rt>ぜひ</rt></ruby><ruby>来<rt>き</rt></ruby>てください。<br>*(Vâng, ở Hà Nội ngày 14/1. Anh Tony, chị Yumi, mời sang dự ạ.)* |
| Yumi | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>行<rt>い</rt></ruby>くよ!フライト<ruby>予約<rt>よやく</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(Nhất định đi! Đã đặt chuyến bay rồi.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に?!<ruby>嬉<rt>うれ</rt></ruby>しいです!<br>*(Thật ạ?! Em vui quá!)* |

---

## Tình huống 12 — Phòng trọ · 23:00 chủ nhật, gọi Mai (cảnh tiếng Việt)

*Sau buổi yakiniku ăn mừng, Đại về phòng gọi video Mai.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, video) Anh ơi! Hôm nay sao mà gọi muộn vậy? |
| Đại | (VN) Anh đi yakiniku ăn mừng với Yamato, Aiko, Lin Wei. Anh lên AtCoder Green hôm qua! |
| Mai | (VN) Trời ơi Green hả? Anh kể em nghe Green nghĩa là gì đi. |
| Đại | (VN) AtCoder có thang màu Gray → Brown → Green → Cyan → Blue → Yellow → Orange → Red. Anh leo từ Gray (3 tháng trước) → Brown → giờ Green. Mục tiêu năm 1 đạt rồi. |
| Mai | (VN) Anh có Yamato, Aiko, Lin Wei làm bạn ở Nhật. Em ở Việt Nam mong từng tin nhắn của anh. |
| Đại | (VN) Em à, 2 tháng nữa anh về. Anh đặt vé về 8/1 rồi. |
| Mai | (VN) Em hỏi mẹ, bố em đã thuê xe đám cưới chưa. À, mà anh có gặp anh chị Tony+Yumi không? |
| Đại | (VN) Tối qua sang nhà ăn cơm. Anh Tony và chị Yumi đã đặt vé sang Hà Nội dự cưới rồi. Chị Yumi nói "ダイ君が息子みたいなものよ" — Đại như con trai vậy. |
| Mai | (VN) Em xúc động quá. Hỏi anh, lecture data structure tuần này học gì? |
| Đại | (VN) Heap với priority queue. Anh giải thích cho Yamato thuật toán BFS dùng deque, anh ấy gật gù khen. |
| Mai | (VN) Em yêu anh giỏi. Đi ngủ đi không khuya nữa. |
| Đại | (VN) Ừ. Tuần sau anh tiếp tục lecture Graph với Dijkstra. Sensei Ohno bảo Graph là chương cuối. |
| Mai | (VN) Cố lên anh. Em ngủ trước nhé. |
| Đại | (VN) Anh thương em. Chúc em ngủ ngon. |

---

## Đọng lại chương 8

Đại trải qua 8 tuần lecture データ構造 với Ohno-sensei. Mẫu câu **「<ruby>確認<rt>かくにん</rt></ruby>させてください」** (cho em xác nhận) là cách hỏi ngầm khẳng định hiểu biết. Khi xin extension deadline, Đại dùng combo trang trọng **「<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、〜していただけないでしょうか」** + giải thích lý do + tự kiểm điểm **「<ruby>反省<rt>はんせい</rt></ruby>しております」**. Tại thư viện, sempai Kimura gặp Đại, dùng văn phong sempai-kouhai: ngắn gọn `〜しろ・〜なれ`. Đại đáp keigo `〜していただきました`. Trong lecture, Đại tự tin giơ tay với **「<ruby>私<rt>わたし</rt></ruby>がやらせてください」** và được sensei khen **「<ruby>完璧<rt>かんぺき</rt></ruby>」**. LINE nhóm AtCoder dùng câu cụt khoe rating Green. Yakiniku ăn mừng dùng `カンパーイ` + `おごる`. Nhà Tony+Yumi vẫn là gia đình thứ hai — anh chị đã đặt vé sang dự cưới Mai. Cuối chương Đại gọi Mai khoe rating Green và xác nhận vé về 8/1.

> Từ vựng & mẫu câu chương này: <ruby>連続<rt>れんぞく</rt></ruby>メモリ・<ruby>分散<rt>ぶんさん</rt></ruby>メモリ・<ruby>挿入位置<rt>そうにゅういち</rt></ruby>・<ruby>括弧<rt>かっこ</rt></ruby><ruby>整合性<rt>せいごうせい</rt></ruby>・チェイニング・オープンアドレッシング・<ruby>線形探査<rt>せんけいたんさ</rt></ruby>・<ruby>二分探索木<rt>にぶんたんさくぎ</rt></ruby>・<ruby>右部分木<rt>みぎぶぶんき</rt></ruby>・<ruby>完全<rt>かんぜん</rt></ruby><ruby>二分木<rt>にぶんぎ</rt></ruby>・<ruby>優先度付<rt>ゆうせんどつ</rt></ruby>きキュー・<ruby>確認<rt>かくにん</rt></ruby>させてください・<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません・<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>を<ruby>延<rt>の</rt></ruby>ばしていただけないでしょうか・<ruby>反省<rt>はんせい</rt></ruby>しております・ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました・お<ruby>見事<rt>みごと</rt></ruby>です・カンパーイ・<ruby>太<rt>ふと</rt></ruby><ruby>っ腹<rt>ぱら</rt></ruby>

## Bí quyết chương

- **Xin extension deadline keigo bài bản**: `<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが` + lý do cụ thể + `<ruby>反省<rt>はんせい</rt></ruby>しております` + `ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました`. Tránh giả lý do — sensei Nhật tôn trọng thẳng thắn.
- **「〜について<ruby>確認<rt>かくにん</rt></ruby>させてください」**: Câu khẳng định ngầm hiểu biết khi học. Khác `〜とは?` (hỏi vì không biết).
- **Code-switch theo người**: Với sensei = full keigo `〜ていただく`. Với sempai = keigo nhẹ `〜です` + tôn trọng. Với bạn = `〜形` ngắn. Với gia đình homestay = nửa keigo nửa thân mật. Với người yêu VN = tiếng Việt chêm JP.
- **AtCoder lên Green = milestone**: ¥0 phần thưởng vật chất nhưng team ăn mừng yakiniku. Mục tiêu năm 1 đạt, năm 2 sẽ là Cyan.
- **Cảnh VN cuối là cầu nối**: Mai không hiểu thuật toán nhưng vẫn theo dõi tiến độ. Đại xác nhận vé về 8/1 — chuẩn bị cưới 14/1.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 連続 | れんぞく | LIÊN TỤC | liên tục |
| 配置 | はいち | PHỐI TRÍ | bố trí |
| 挿入 | そうにゅう | SÁP NHẬP | chèn |
| 途中 | とちゅう | ĐỒ TRUNG | giữa |
| 分散 | ぶんさん | PHÂN TÁN | phân tán |
| 検索 | けんさく | KIỂM TÁC | tìm kiếm |
| 体感 | たいかん | THỂ CẢM | cảm nhận |
| 必要性 | ひつようせい | TẤT YẾU TÍNH | sự cần thiết |
| 用途 | ようと | DỤNG ĐỒ | ứng dụng |
| 括弧 | かっこ | QUÁT HỒ | dấu ngoặc |
| 整合性 | せいごうせい | CHỈNH HỢP TÍNH | tính nhất quán |
| 文字列 | もじれつ | VĂN TỰ LIỆT | chuỗi |
| 対応 | たいおう | ĐỐI ỨNG | tương ứng |
| 空 | から | KHÔNG | rỗng |
| 見事 | みごと | KIẾN SỰ | đẹp tuyệt |
| 誠 | まこと | THÀNH | thành thật |
| 延ばす | のばす | DIÊN | hoãn |
| 直前 | ちょくぜん | TRỰC TIỀN | ngay trước |
| 追加 | ついか | TRUY GIA | thêm |
| 要望 | ようぼう | YẾU VỌNG | yêu cầu |
| 管理 | かんり | QUẢN LÝ | quản lý |
| 甘い | あまい | CAM | sơ sài |
| 正直 | しょうじき | CHÍNH TRỰC | thẳng thắn |
| 迷惑 | めいわく | MÊ HOẶC | làm phiền |
| 衝突 | しょうとつ | XUNG ĐỘT | xung đột |
| 処理 | しょり | XỬ LÝ | xử lý |
| 核心 | かくしん | HẠCH TÂM | cốt lõi |
| 方式 | ほうしき | PHƯƠNG THỨC | phương thức |
| 線形探査 | せんけいたんさ | TUYẾN HÌNH THÁM TRA | linear probing |
| 二次探査 | にじたんさ | NHỊ THỨ THÁM TRA | quadratic probing |
| 格納 | かくのう | CÁCH NẠP | lưu trữ |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 以降 | いこう | DĨ HÀNG | từ trở đi |
| 挿入順 | そうにゅうじゅん | SÁP NHẬP THUẬN | thứ tự chèn |
| 保持 | ほじ | BẢO TRÌ | giữ |
| 二分探索木 | にぶんたんさくぎ | NHỊ PHÂN THÁM TÁC MỘC | BST |
| 根 | ね | CĂN | gốc |
| 子節点 | こせってん | TỬ TIẾT ĐIỂM | nút con |
| 成る | なる | THÀNH | tạo thành |
| 二分木 | にぶんぎ | NHỊ PHÂN MỘC | cây nhị phân |
| 性質 | せいしつ | TÍNH CHẤT | tính chất |
| 削除 | さくじょ | TƯỚC TRỪ | xoá |
| 操作 | そうさ | THAO TÁC | thao tác |
| 置き換える | おきかえる | TRÍ HOÁN | thay thế |
| 右部分木 | みぎぶぶんき | HỮU BỘ PHẦN MỘC | cây con phải |
| 最小値 | さいしょうち | TỐI TIỂU TRỊ | giá trị nhỏ nhất |
| 完全 | かんぜん | HOÀN TOÀN | hoàn toàn |
| 取り出し | とりだし | THỦ XUẤT | lấy ra |
| 負 | ふ | PHỤ | âm |
| 正 | せい | CHÍNH | dương |
| 戻す | もどす | LỆ | đảo ngược |
| 優先度付き | ゆうせんどつき | ƯU TIÊN ĐỘ PHÓ | priority |
| イベント | いべんと | — | event |
| 参戦 | さんせん | THAM CHIẾN | tham chiến |
| 到達 | とうたつ | ĐÁO ĐẠT | đạt được |
| 凄い | すごい | THẾ | ghê gớm |
| 食べ放題 | たべほうだい | THỰC PHÓNG ĐỀ | buffet ăn không giới hạn |
| 太っ腹 | ふとっぱら | THÁI PHÚC | hào phóng |
| 影響 | えいきょう | ẢNH HƯỞNG | ảnh hưởng |
| 勧める | すすめる | KHUYẾN | khuyên |
| 絶対 | ぜったい | TUYỆT ĐỐI | tuyệt đối |
| 予約 | よやく | DỰ ƯỚC | đặt trước |
| 続ける | つづける | TỤC | tiếp tục |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000009, 800000021, NULL, 'markdown_book', 'T9. Git + GitHub + open source intro (Git・GitHub入門)', '# Sách sinh viên Đại học Osaka · T9. Git + GitHub + open source intro (Git・GitHub入門)

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 1 Đại học Osaka, tháng 12/2026. Học các mẫu hội thoại tiếng Nhật khi nói chuyện với guest lecturer chuyên ngành IT: chào hỏi và đặt câu hỏi keigo với 講師, mẫu câu trao đổi review code (`PR を確認しました`・`approve します`), mẫu câu báo cáo conflict (`〜で競合が起きました`), mẫu câu nhờ kèm cặp (`〜について教えていただけませんか`), mẫu câu cảm ơn maintainer open source bằng tiếng Nhật trang trọng, và mẫu câu chia sẻ tin vui với cohort qua LINE (`〜が merge されました！`).

---

## Bối cảnh

Tháng 12/2026, cuối kỳ 1 năm nhất. Khoa CNTT mời Kawasaki-san (40t, GitHub Japan DevRel) đến giảng khách 1 buổi cả ngày về Git và GitHub. Đại đã có account GitHub 1 năm nay (từ trường tiếng) nhưng chỉ commit cá nhân, chưa từng đóng góp open source. Cohort cùng học: Yamato, Aiko, Lin Wei, Rajesh. Chương này tập trung các mẫu câu nói với guest lecturer, mẫu câu review PR và mẫu câu báo cáo conflict bằng tiếng Nhật chuyên ngành IT.

---

## Tình huống 1 — Giảng đường C-201 · 9:55, chào hỏi guest lecturer trước giờ giảng

*Đại đến sớm, gặp Kawasaki-san đang chuẩn bị slide.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>川崎<rt>かわさき</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Kawasaki, chào anh ạ. Hôm nay nhờ anh giúp đỡ ạ.)* |
| Kawasaki | おはようございます。<ruby>君<rt>きみ</rt></ruby>は<ruby>留学生<rt>りゅうがくせい</rt></ruby>ですか?<br>*(Chào em. Em là du học sinh à?)* |
| Đại | はい、ベトナムから<ruby>来<rt>き</rt></ruby>ました。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。GitHubは1<ruby>年<rt>ねん</rt></ruby>くらい<ruby>使<rt>つか</rt></ruby>っていますが、オープンソースには<ruby>貢献<rt>こうけん</rt></ruby>したことがありません。<br>*(Vâng, em từ Việt Nam sang. Em là Nguyễn Đại ạ. Em dùng GitHub khoảng 1 năm rồi, nhưng chưa từng đóng góp open source.)* |
| Kawasaki | そうですか。<ruby>今日<rt>きょう</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてのPRを<ruby>出<rt>だ</rt></ruby>すところまでやりますよ。<ruby>楽<rt>たの</rt></ruby>しみにしててください。<br>*(Vậy à. Hôm nay chúng ta sẽ làm tới chỗ gửi PR đầu tiên đấy. Cứ chờ xem nhé.)* |
| Đại | はい、<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng, em sẽ cố gắng!)* |

---

## Tình huống 2 — Giảng đường C-201 · 10:00, mở bài về lịch sử Git

| Vai | Lời thoại |
|---|---|
| Kawasaki | みなさん、おはようございます。GitHub JapanのDevRel、<ruby>川崎<rt>かわさき</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>はGit・GitHub<ruby>入門<rt>にゅうもん</rt></ruby><ruby>講義<rt>こうぎ</rt></ruby>です。<br>*(Các bạn chào buổi sáng. Tôi là Kawasaki, DevRel của GitHub Japan. Hôm nay là buổi giảng nhập môn Git và GitHub.)* |
| Kawasaki | まず<ruby>歴史<rt>れきし</rt></ruby>から。Gitは2005<ruby>年<rt>ねん</rt></ruby>、Linuxの<ruby>創始者<rt>そうししゃ</rt></ruby>Linus Torvaldsが<ruby>開発<rt>かいはつ</rt></ruby>しました。<ruby>分散型<rt>ぶんさんがた</rt></ruby>バージョン<ruby>管理<rt>かんり</rt></ruby>システム、つまりDVCSです。<br>*(Đầu tiên là lịch sử. Git được Linus Torvalds, người sáng lập Linux, phát triển năm 2005. Đây là hệ thống quản lý phiên bản phân tán, tức DVCS.)* |
| Kawasaki | GitHubは2008<ruby>年<rt>ねん</rt></ruby><ruby>創業<rt>そうぎょう</rt></ruby>、2018<ruby>年<rt>ねん</rt></ruby>にMicrosoftが<ruby>買収<rt>ばいしゅう</rt></ruby>しました。<ruby>現在<rt>げんざい</rt></ruby>のユーザー<ruby>数<rt>すう</rt></ruby>は1<ruby>億人<rt>おくにん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えています。<br>*(GitHub thành lập 2008, được Microsoft mua lại năm 2018. Hiện tại số người dùng đã vượt 100 triệu.)* |
| Đại | <ruby>質問<rt>しつもん</rt></ruby>してもよろしいですか? Gitと<ruby>他<rt>ほか</rt></ruby>のバージョン<ruby>管理<rt>かんり</rt></ruby>ツール、たとえばSVNとの<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Em hỏi được không ạ? Khác biệt giữa Git và các công cụ khác như SVN là gì ạ?)* |
| Kawasaki | いい<ruby>質問<rt>しつもん</rt></ruby>です。SVNは<ruby>中央集権型<rt>ちゅうおうしゅうけんがた</rt></ruby>、Gitは<ruby>分散型<rt>ぶんさんがた</rt></ruby>。Gitは<ruby>各<rt>かく</rt></ruby>クローンが<ruby>完全<rt>かんぜん</rt></ruby>な<ruby>履歴<rt>りれき</rt></ruby>を<ruby>持<rt>も</rt></ruby>つので、オフラインでも commit できます。<br>*(Câu hỏi hay. SVN là tập trung, Git là phân tán. Mỗi clone Git có lịch sử đầy đủ nên có thể commit offline.)* |

---

## Tình huống 3 — Phòng thực hành CS-104 · 10:30, branch và merge thực hành

*Cohort ngồi 5 đứa cùng dãy máy. Kawasaki đi quanh kiểm tra terminal.*

| Vai | Lời thoại |
|---|---|
| Kawasaki | では<ruby>実習<rt>じっしゅう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。`feature/add-search` というブランチを<ruby>作成<rt>さくせい</rt></ruby>してください。<br>*(Bây giờ vào phần thực hành. Hãy tạo nhánh tên `feature/add-search`.)* |
| Đại | `git checkout -b feature/add-search` でいいですか?<br>*(Dùng `git checkout -b feature/add-search` được không ạ?)* |
| Kawasaki | はい、それで OK です。<ruby>変更<rt>へんこう</rt></ruby>を<ruby>加<rt>くわ</rt></ruby>えたら、add → commit → push の<ruby>順<rt>じゅん</rt></ruby>でやってみてください。<br>*(Vâng, được. Sửa xong thì làm theo thứ tự add → commit → push nhé.)* |
| Đại | (gõ terminal, nói nhỏ với Yamato) Yamato、push が<ruby>終<rt>お</rt></ruby>わったらレビューしてくれる?<br>*(Yamato ơi, push xong cậu review giúp tớ nhé?)* |
| Yamato | いいよ。reviewerに<ruby>指定<rt>してい</rt></ruby>してくれ。<br>*(OK. Cứ chỉ định tớ làm reviewer đi.)* |
| Đại | ありがとう。GitHub UIで「Create Pull Request」を<ruby>押<rt>お</rt></ruby>して、reviewerに<ruby>君<rt>きみ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>したよ。<br>*(Cảm ơn. Tớ vừa bấm "Create Pull Request" trên GitHub và thêm cậu làm reviewer rồi.)* |

---

## Tình huống 4 — Phòng thực hành · 10:45, review PR và approve qua LINE

| Vai | Lời thoại |
|---|---|
| Yamato | (LINE) PRを<ruby>確認<rt>かくにん</rt></ruby>しました。コードはきれいですね。Approveします!<br>*(Tớ xem PR rồi. Code gọn gàng đấy. Approve nhé!)* |
| Đại | (LINE) ありがとう! <ruby>1<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いていい? `merge commit` と `squash merge` どっちがいい?<br>*(Cảm ơn cậu! Cho tớ hỏi 1 cái nhé — `merge commit` với `squash merge`, cái nào tốt hơn?)* |
| Yamato | (LINE) <ruby>小<rt>ちい</rt></ruby>さい<ruby>機能<rt>きのう</rt></ruby>なら squash merge が<ruby>履歴<rt>りれき</rt></ruby>きれいだよ。<br>*(Tính năng nhỏ thì squash merge cho lịch sử gọn hơn đấy.)* |
| Đại | (LINE) わかった、squash で merge する。<br>*(OK, tớ squash merge nhé.)* |
| Yamato | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>。merge<ruby>後<rt>ご</rt></ruby>、ブランチも<ruby>削除<rt>さくじょ</rt></ruby>しといて。<br>*(OK. Merge xong nhớ xóa branch luôn nhé.)* |

---

## Tình huống 5 — Phòng thực hành · 11:00, gặp conflict thật, hỏi lại Kawasaki

*Đại pull main, terminal báo CONFLICT in `app.py`.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>川崎<rt>かわさき</rt></ruby>さん、すみません。`git pull origin main` をしたら、`app.py` で<ruby>競合<rt>きょうごう</rt></ruby>が<ruby>起<rt>お</rt></ruby>きました。どうすればいいでしょうか?<br>*(Anh Kawasaki, em xin phép. Em chạy `git pull origin main` thì bị conflict ở `app.py`. Em phải làm sao ạ?)* |
| Kawasaki | <ruby>競合<rt>きょうごう</rt></ruby>は<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>のことですよ。VSCodeで<ruby>開<rt>ひら</rt></ruby>くと `<<<<<<< HEAD` と `>>>>>>> main` のマーカーが<ruby>見<rt>み</rt></ruby>えますか?<br>*(Conflict là chuyện bình thường thôi. Mở bằng VSCode em có thấy các marker `<<<<<<< HEAD` và `>>>>>>> main` không?)* |
| Đại | はい、<ruby>見<rt>み</rt></ruby>えます。<br>*(Vâng, em thấy rồi ạ.)* |
| Kawasaki | では<ruby>両方<rt>りょうほう</rt></ruby><ruby>残<rt>のこ</rt></ruby>すか、どちらかを<ruby>選<rt>えら</rt></ruby>ぶか、<ruby>判断<rt>はんだん</rt></ruby>してください。<ruby>終<rt>お</rt></ruby>わったらマーカーを<ruby>消<rt>け</rt></ruby>して、add と commit で<ruby>解決<rt>かいけつ</rt></ruby>します。<br>*(Em quyết định giữ cả hai hay chọn một bên. Sửa xong xóa marker rồi add và commit để giải quyết.)* |
| Đại | わかりました。<ruby>両方<rt>りょうほう</rt></ruby><ruby>残<rt>のこ</rt></ruby>します。<br>*(Em hiểu rồi. Em giữ cả hai ạ.)* |
| Aiko | (ngồi bên cạnh) <ruby>競合<rt>きょうごう</rt></ruby><ruby>解決<rt>かいけつ</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かったけど、<ruby>慣<rt>な</rt></ruby>れますね!<br>*(Lúc đầu sợ giải quyết conflict nhưng rồi cũng quen đấy nhỉ!)* |

---

## Tình huống 6 — Phòng thực hành · 11:30, Kawasaki giảng rebase vs merge

| Vai | Lời thoại |
|---|---|
| Kawasaki | <ruby>次<rt>つぎ</rt></ruby>はmergeとrebaseの<ruby>違<rt>ちが</rt></ruby>いです。mergeは<ruby>合流<rt>ごうりゅう</rt></ruby>の<ruby>履歴<rt>りれき</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>り、<ruby>枝分<rt>えだわ</rt></ruby>かれが<ruby>見<rt>み</rt></ruby>えます。<br>*(Tiếp theo là khác biệt giữa merge và rebase. Merge giữ lại lịch sử hợp nhánh, thấy được chia nhánh.)* |
| Kawasaki | rebaseは<ruby>履歴<rt>りれき</rt></ruby>が<ruby>一直線<rt>いっちょくせん</rt></ruby>になります。<ruby>注意<rt>ちゅうい</rt></ruby>:push<ruby>済<rt>ず</rt></ruby>みのブランチをrebaseするのは<ruby>危険<rt>きけん</rt></ruby>です。<br>*(Rebase làm lịch sử thẳng. Lưu ý: rebase nhánh đã push lên rất nguy hiểm.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>のチームはmergeの<ruby>前<rt>まえ</rt></ruby>にrebaseしてから<ruby>送<rt>おく</rt></ruby>ります。<ruby>履歴<rt>りれき</rt></ruby>がきれいで<ruby>読<rt>よ</rt></ruby>みやすいです。<br>*(Team em luôn rebase trước rồi mới gửi merge. Lịch sử gọn gàng và dễ đọc.)* |
| Kawasaki | いいやり<ruby>方<rt>かた</rt></ruby>です。「<ruby>個人<rt>こじん</rt></ruby>ブランチはrebase、<ruby>共有<rt>きょうゆう</rt></ruby>ブランチはmerge」と<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Cách hay đấy. Hãy nhớ "branch cá nhân thì rebase, branch chia sẻ thì merge".)* |
| Đại | <ruby>個人<rt>こじん</rt></ruby>ブランチはrebase、<ruby>共有<rt>きょうゆう</rt></ruby>ブランチはmergeですね。メモしました。<br>*(Branch cá nhân thì rebase, branch chia sẻ thì merge. Em ghi lại rồi ạ.)* |

---

## Tình huống 7 — Căng-tin sinh viên · 12:30, ăn trưa với cohort bàn về GitHub Flow

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>午前中<rt>ごぜんちゅう</rt></ruby>のレクチャー、<ruby>面白<rt>おもしろ</rt></ruby>かったね。<br>*(Buổi sáng giảng hay thật đấy nhỉ.)* |
| Lin Wei | (xen tiếng Anh) GitHub Flow is so simple, just 5 steps. Atlassianの GitFlow より<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(GitHub Flow đơn giản thật, chỉ 5 bước. Dễ hiểu hơn GitFlow của Atlassian nhiều.)* |
| Đại | Lin Wei、GitFlowって、まだ<ruby>使<rt>つか</rt></ruby>われてるの?<br>*(Lin Wei ơi, GitFlow giờ còn được dùng không?)* |
| Lin Wei | <ruby>大企業<rt>だいきぎょう</rt></ruby>とかリリース<ruby>頻度<rt>ひんど</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いところはまだ<ruby>使<rt>つか</rt></ruby>ってるよ。スタートアップはGitHub Flow一<ruby>択<rt>たく</rt></ruby>。<br>*(Doanh nghiệp lớn hoặc nơi release thưa thì vẫn dùng. Startup thì chỉ GitHub Flow thôi.)* |
| Yamato | <ruby>午後<rt>ごご</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてのOSS PRだって。ドキドキするな。<br>*(Chiều nay là PR open source đầu tiên đó. Hồi hộp ghê.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>もドキドキ。<ruby>英語<rt>えいご</rt></ruby>でPR<ruby>説明<rt>せつめい</rt></ruby><ruby>書<rt>か</rt></ruby>けるかな…<br>*(Tớ cũng hồi hộp. Không biết viết mô tả PR bằng tiếng Anh nổi không…)* |
| Lin Wei | (tiếng Anh) Đại, your English is fine. Just be concise — what, why, how.<br>*(Đại ơi, tiếng Anh cậu OK mà. Viết gọn thôi — cái gì, tại sao, làm thế nào.)* |

---

## Tình huống 8 — Phòng thực hành · 14:30, Kawasaki hướng dẫn PR open source đầu tiên

| Vai | Lời thoại |
|---|---|
| Kawasaki | <ruby>午後<rt>ごご</rt></ruby>はみなさん<ruby>初<rt>はじ</rt></ruby>めてのオープンソースPRを<ruby>出<rt>だ</rt></ruby>しましょう。<ruby>練習<rt>れんしゅう</rt></ruby><ruby>用<rt>よう</rt></ruby>のリポジトリは `firstcontributions/first-contributions` です。<br>*(Buổi chiều mọi người sẽ gửi PR open source đầu tiên. Repo luyện tập là `firstcontributions/first-contributions`.)* |
| Kawasaki | まず `gh repo fork` でフォーク、ブランチを<ruby>切<rt>き</rt></ruby>って、Contributors.mdに<ruby>自分<rt>じぶん</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Trước hết fork bằng `gh repo fork`, tạo branch, rồi thêm tên mình vào Contributors.md.)* |
| Đại | <ruby>川崎<rt>かわさき</rt></ruby>さん、<ruby>名前<rt>なまえ</rt></ruby>はアルファベット<ruby>順<rt>じゅん</rt></ruby>に<ruby>入<rt>い</rt></ruby>れるんですか?<br>*(Anh Kawasaki, tên xếp theo thứ tự ABC ạ?)* |
| Kawasaki | はい、ABC<ruby>順<rt>じゅん</rt></ruby>です。コミットメッセージも<ruby>英語<rt>えいご</rt></ruby>で「Add 〇〇 to contributors」のように<ruby>書<rt>か</rt></ruby>いてください。<br>*(Đúng, theo ABC. Commit message cũng tiếng Anh, viết kiểu "Add OO to contributors" nhé.)* |
| Đại | わかりました。やってみます。<br>*(Em hiểu rồi. Em thử ạ.)* |

---

## Tình huống 9 — Phòng thực hành · 14:50, PR đầu tiên được auto-merge

*Đại push, mở PR trên trình duyệt, 10 phút sau bot tự động merge.*

| Vai | Lời thoại |
|---|---|
| Đại | (reo nhỏ) merge された! <ruby>川崎<rt>かわさき</rt></ruby>さん、<ruby>初<rt>はじ</rt></ruby>めてのPRがmergeされました!<br>*(Đã merge! Anh Kawasaki, PR đầu tiên của em đã merge rồi ạ!)* |
| Kawasaki | おめでとう! GitHubの<ruby>緑色<rt>みどりいろ</rt></ruby>のコントリビューショングラフ、これからどんどん<ruby>埋<rt>う</rt></ruby>めていってくださいね。<br>*(Chúc mừng! Biểu đồ contribution xanh trên GitHub, từ giờ em hãy lấp đầy nó dần dần nhé.)* |
| Đại | はい! <ruby>記念<rt>きねん</rt></ruby>スクリーンショットを<ruby>撮<rt>と</rt></ruby>っておきます。<br>*(Vâng! Em chụp ảnh kỷ niệm lại đây ạ.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>もmergeされた! 1<ruby>つ目<rt>つめ</rt></ruby>のOSS<ruby>貢献<rt>こうけん</rt></ruby>!<br>*(Tớ cũng merge rồi! Đóng góp OSS đầu tiên!)* |
| Lin Wei | (tiếng Anh) Congrats everyone! Now let''s find a real bug to fix.<br>*(Chúc mừng cả nhóm! Giờ tìm bug thật mà sửa nào.)* |

---

## Tình huống 10 — Phòng thực hành · 16:00, hỏi lại Kawasaki khi chưa hiểu thuật ngữ "maintainer"

| Vai | Lời thoại |
|---|---|
| Kawasaki | みなさん、<ruby>次<rt>つぎ</rt></ruby>はmaintainerとの<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です。<br>*(Tiếp theo là cách giao tiếp với maintainer.)* |
| Đại | すみません、「maintainer」というのは?<br>*(Anh cho em hỏi, "maintainer" nghĩa là sao ạ?)* |
| Kawasaki | リポジトリを<ruby>管理<rt>かんり</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>のことです。PRをreview・mergeする<ruby>権限<rt>けんげん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っている<ruby>人<rt>ひと</rt></ruby>ですね。<br>*(Là người quản lý repo. Người có quyền review và merge PR đó.)* |
| Đại | なるほど。issueのコメントとPRの<ruby>説明<rt>せつめい</rt></ruby>、どっちが<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Em hiểu rồi. Comment ở issue và mô tả PR, cái nào quan trọng hơn ạ?)* |
| Kawasaki | <ruby>両方<rt>りょうほう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>ですが、PRの<ruby>説明<rt>せつめい</rt></ruby>は「<ruby>何<rt>なに</rt></ruby>を、なぜ、どうやって<ruby>直<rt>なお</rt></ruby>したか」を<ruby>明確<rt>めいかく</rt></ruby>に。issueには `Fixes #123` で<ruby>紐<rt>ひも</rt></ruby>づけます。<br>*(Cả hai đều quan trọng, nhưng mô tả PR phải nêu rõ "sửa cái gì, tại sao, sửa thế nào". Liên kết với issue bằng `Fixes #123`.)* |
| Đại | わかりました。ありがとうございます。<br>*(Em hiểu rồi. Em cảm ơn anh ạ.)* |

---

## Tình huống 11 — Ký túc xá Toyonaka · 19:30, Đại tìm bug thật trong Hugo theme

*Đại thiết lập blog Hugo cá nhân tối hôm đó, phát hiện theme `hugo-theme-stack` lỗi với RTL languages.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Yamato) Yamato、Hugoのテーマでバグ<ruby>見<rt>み</rt></ruby>つけた! sidebar が RTL の<ruby>言語<rt>げんご</rt></ruby>で<ruby>崩<rt>くず</rt></ruby>れる。<br>*(Yamato! Tớ vừa tìm thấy bug trong theme Hugo! Sidebar bị vỡ với ngôn ngữ RTL.)* |
| Yamato | (LINE) マジで? GitHubのissueで<ruby>誰<rt>だれ</rt></ruby>か<ruby>報告<rt>ほうこく</rt></ruby>してる?<br>*(Thật à? Có ai báo issue trên GitHub chưa?)* |
| Đại | (LINE) #245 にある。<ruby>誰<rt>だれ</rt></ruby>もまだPR<ruby>出<rt>だ</rt></ruby>してない。<ruby>俺<rt>おれ</rt></ruby>、<ruby>挑戦<rt>ちょうせん</rt></ruby>してみる。<br>*(Có ở #245 rồi. Chưa ai gửi PR. Tớ thử xem.)* |
| Yamato | (LINE) いいね! `[dir=''rtl'']` の<ruby>属性<rt>ぞくせい</rt></ruby>セレクタを<ruby>使<rt>つか</rt></ruby>えばいいと<ruby>思<rt>おも</rt></ruby>うよ。<br>*(Hay đấy! Dùng selector thuộc tính `[dir=''rtl'']` là được mà.)* |
| Đại | (LINE) `flex-direction: row-reverse` でやってみる。fork して<ruby>修正<rt>しゅうせい</rt></ruby>するわ。<br>*(Tớ thử với `flex-direction: row-reverse`. Fork và sửa luôn đây.)* |
| Yamato | (LINE) <ruby>頑張<rt>がんば</rt></ruby>れ! PRの<ruby>説明<rt>せつめい</rt></ruby>、<ruby>川崎<rt>かわさき</rt></ruby>さんの<ruby>言<rt>い</rt></ruby>ってた「what / why / how」で<ruby>書<rt>か</rt></ruby>くといいよ。<br>*(Cố lên! Mô tả PR viết theo "what / why / how" như anh Kawasaki dạy đấy.)* |

---

## Tình huống 12 — Phòng KTX · 22:00, gửi PR và viết mô tả bằng tiếng Anh

| Vai | Lời thoại |
|---|---|
| Đại | (gõ một mình) Title: `fix: RTL support for sidebar layout`. <ruby>説明<rt>せつめい</rt></ruby>は<ruby>英語<rt>えいご</rt></ruby>で… let me see…<br>*(Tự lẩm bẩm.)* |
| Đại | (LINE Lin Wei) Lin Wei、PR<ruby>説明<rt>せつめい</rt></ruby>の<ruby>英語<rt>えいご</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>してくれない? `Fixes #245. Added [dir=''rtl''] selector to reverse flex direction for sidebar.` これでOK?<br>*(Lin Wei ơi, check giúp tớ tiếng Anh mô tả PR với? Thế này OK không?)* |
| Lin Wei | (LINE, tiếng Anh) Looks good! Add a brief explanation of what was broken, then your fix. Like: "The sidebar had hardcoded `flex-direction: row` which broke RTL languages (Arabic, Hebrew). Added `[dir=''rtl''] .sidebar { flex-direction: row-reverse; }`."<br>*(Ổn đấy! Thêm phần giải thích cái gì vỡ trước rồi mới đến fix.)* |
| Đại | (LINE) ありがとう! コピーさせてもらう。<br>*(Cảm ơn cậu! Tớ copy luôn nhé.)* |
| Đại | (gửi PR, một mình) <ruby>送<rt>おく</rt></ruby>った! あとは maintainer の<ruby>返事<rt>へんじ</rt></ruby>を<ruby>待<rt>ま</rt></ruby>つだけ。<br>*(Đã gửi! Giờ chỉ còn đợi maintainer phản hồi.)* |

---

## Tình huống 13 — Phòng KTX · 2 ngày sau 21:00, maintainer comment LGTM

| Vai | Lời thoại |
|---|---|
| Đại | (đọc notification GitHub, reo nhỏ) <ruby>来<rt>き</rt></ruby>た! コメントが<ruby>来<rt>き</rt></ruby>た!<br>*(Đến rồi! Có comment rồi!)* |
| Maintainer | (PR comment, tiếng Anh) "Great catch! The RTL fix is clean and well-targeted. LGTM, merging now. Thanks for contributing!"<br>*(Bắt bug hay đấy! Sửa RTL gọn và đúng chỗ. LGTM, merge luôn. Cảm ơn cậu đã đóng góp!)* |
| Đại | (reply PR, tiếng Anh) "Thank you so much! Glad I could help. This was my first real OSS contribution."<br>*(Em cảm ơn anh rất nhiều! Em vui vì giúp được gì đó. Đây là đóng góp OSS thật sự đầu tiên của em.)* |
| Đại | (LINE Yamato) Yamato、maintainerが merge してくれた! コメントも<ruby>褒<rt>ほ</rt></ruby>めてくれた!<br>*(Yamato! Maintainer đã merge! Còn khen tớ nữa!)* |
| Yamato | (LINE) おめでとう! GitHubのプロフィールが<ruby>華<rt>はな</rt></ruby>やかになるね! <ruby>俺<rt>おれ</rt></ruby>にも<ruby>分<rt>わ</rt></ruby>けてくれ。<br>*(Chúc mừng! Profile GitHub đẹp lên rồi đấy! Chia bí kíp cho tớ với.)* |
| Đại | (LINE) <ruby>明日<rt>あした</rt></ruby>クラスで<ruby>話<rt>はな</rt></ruby>そう!<br>*(Mai lên lớp kể nhé!)* |

---

## Tình huống 14 — Phòng KTX · 23:00, gọi video về VN cho Mai

*Đại mở video call Zalo. Mai đang ở phòng trọ Hà Nội, vừa đi dạy thực tập về.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Hôm nay anh có chuyện vui muốn khoe với em. |
| Mai | (tiếng Việt) Sao vậy anh? Mặt anh tươi quá! |
| Đại | (tiếng Việt) Anh vừa gửi pull request đầu tiên vào một dự án mã nguồn mở thật sự — một theme cho blog Hugo. Maintainer đã merge và khen anh đấy! |
| Mai | (tiếng Việt) Hay quá anh! Pull request là gì hở anh, em chưa hiểu lắm. |
| Đại | (tiếng Việt) Nó là cách mình đề nghị sửa code của người khác trên GitHub. Mình fork về máy mình, sửa, rồi gửi lại cho họ duyệt. Nếu họ thấy ổn thì họ merge — tức là gộp code mình vào sản phẩm chính. |
| Mai | (tiếng Việt) Vậy là code của anh đang chạy trên blog của bao nhiêu người trên thế giới rồi đấy! |
| Đại | (tiếng Việt) Đúng rồi em. Hôm nay anh học được bao nhiêu thứ — branch, merge, rebase, conflict, GitHub Flow. Anh Kawasaki từ GitHub Japan đến giảng cả ngày. |
| Mai | (tiếng Việt) Một tháng nữa anh về cưới em rồi đấy nhé. Em đã chuẩn bị xong áo dài. |
| Đại | (tiếng Việt) Anh nhớ! Anh đang đặt vé Vietjet 8/1. Anh thương em nhiều. |
| Mai | (tiếng Việt) Em cũng thương anh. Anh ngủ ngon nhé. |

---

## Đọng lại chương 9

Một buổi giảng khách dày đặc kiến thức Git và GitHub. Đại học mẫu câu chào hỏi guest lecturer (**「本日はよろしくお願いします」**), mẫu câu xin phép đặt câu hỏi (**「質問してもよろしいですか?」**), mẫu câu báo cáo conflict (**「〜で競合が起きました。どうすればいいでしょうか?」**), mẫu câu hỏi lại khi chưa hiểu thuật ngữ (**「〜というのは?」**), mẫu câu cảm ơn maintainer bằng tiếng Anh khi gửi PR, và mẫu câu chia sẻ tin vui qua LINE với cohort (**「merge された!」**). Đại còn đặt được PR thật đầu tiên fix bug RTL cho hugo-theme-stack và được maintainer khen LGTM. Cảnh cuối chương: Đại gọi video về VN khoe Mai, giải thích pull request và merge bằng tiếng Việt mộc mạc — vừa ôn lại bài học vừa hẹn 1 tháng nữa về cưới.

> Từ vựng & mẫu câu chương này: 分散型バージョン管理・ブランチ・マージ・リベース・競合・Pull Request・コードレビュー・GitHub Flow・GitFlow・Trunk-Based・オープンソース・コントリビューション・フォーク・LGTM・DevRel・maintainer・〜していただけませんか・〜というのは・本日はよろしくお願いします・質問してもよろしいですか・〜で競合が起きました・merge された・squash merge・rebase の前に確認

## Bí quyết chương

- **Keigo với guest lecturer**: GitHub Japan DevRel là khách doanh nghiệp đến giảng — dùng 「本日はよろしくお願いします」・「質問してもよろしいですか?」 chuẩn keigo.
- **Thuật ngữ EN bao quanh JP**: Git/GitHub/PR/merge/rebase/fork/maintainer giữ nguyên EN, nhưng câu xung quanh là JP đầy đủ với ruby — đây là cách thực tế kỹ sư IT Nhật nói chuyện.
- **「〜というのは?」**: Mẫu câu hỏi lại khi nghe thuật ngữ lạ, dùng được suốt sự nghiệp.
- **Real bug, real merge**: Hugo theme RTL fix là PR thật khả thi với SV năm 1 — không phải tô hồng.
- **Cảnh VN cuối chương**: Đại giải thích PR/merge cho Mai bằng tiếng Việt — vừa romantic vừa ôn lại bài học.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 講師 | こうし | GIẢNG SƯ | giảng viên khách |
| 貢献 | こうけん | CỐNG HIẾN | đóng góp |
| 楽しみ | たのしみ | LẠC | mong chờ |
| 講義 | こうぎ | GIẢNG NGHĨA | bài giảng |
| 歴史 | れきし | LỊCH SỬ | lịch sử |
| 創始者 | そうししゃ | SÁNG THỦY GIẢ | người sáng lập |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 分散型 | ぶんさんがた | PHÂN TÁN HÌNH | phân tán |
| 創業 | そうぎょう | SÁNG NGHIỆP | thành lập |
| 買収 | ばいしゅう | MÃI THU | mua lại |
| 現在 | げんざい | HIỆN TẠI | hiện tại |
| 億人 | おくにん | ỨC NHÂN | trăm triệu người |
| 中央集権型 | ちゅうおうしゅうけんがた | TRUNG ƯƠNG TẬP QUYỀN HÌNH | tập trung |
| 履歴 | りれき | LÝ LỊCH | lịch sử |
| 実習 | じっしゅう | THỰC TẬP | thực hành |
| 加える | くわえる | GIA | thêm |
| 確認しました | かくにんしました | XÁC NHẬN | đã kiểm tra |
| 指定 | してい | CHỈ ĐỊNH | chỉ định |
| 起きる | おきる | KHỞI | xảy ra |
| 当たり前 | あたりまえ | ĐƯƠNG TIỀN | đương nhiên |
| 残す | のこす | TÀN | giữ lại |
| 消す | けす | TIÊU | xóa |
| 解決 | かいけつ | GIẢI QUYẾT | giải quyết |
| 慣れる | なれる | QUÁN | quen |
| 合流 | ごうりゅう | HỢP LƯU | hợp dòng |
| 枝分かれ | えだわかれ | CHI PHÂN | chia nhánh |
| 一直線 | いっちょくせん | NHẤT TRỰC TUYẾN | thẳng |
| 注意 | ちゅうい | CHÚ Ý | chú ý |
| 危険 | きけん | NGUY HIỂM | nguy hiểm |
| 大企業 | だいきぎょう | ĐẠI XÍ NGHIỆP | doanh nghiệp lớn |
| 頻度 | ひんど | TẦN ĐỘ | tần suất |
| 低い | ひくい | ĐÊ | thấp |
| 一択 | いったく | NHẤT TRẠCH | duy nhất |
| 練習用 | れんしゅうよう | LUYỆN TẬP DỤNG | luyện tập |
| 切る | きる | THIẾT | tạo (branch) |
| 記念 | きねん | KỶ NIỆM | kỷ niệm |
| 撮る | とる | NHIẾP | chụp |
| 権限 | けんげん | QUYỀN HẠN | quyền |
| 明確 | めいかく | MINH XÁC | rõ ràng |
| 紐づける | ひもづける | NỮU | liên kết |
| 属性 | ぞくせい | THUỘC TÍNH | thuộc tính |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 返事 | へんじ | PHẢN SỰ | phản hồi |
| 来た | きた | LAI | đã đến |
| 褒める | ほめる | BÀO | khen |
| 華やか | はなやか | HOA | rực rỡ |
| 分ける | わける | PHÂN | chia |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000010, 800000021, NULL, 'markdown_book', 'T10. Về VN cưới Mai 1 tuần (結婚式・帰国)', '# Sách sinh viên Đại học Osaka · T10. Về VN cưới Mai 1 tuần (結婚式・帰国)

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 1 ĐH Osaka, tháng 1/2027 nghỉ đông về VN cưới Mai. Học các mẫu hội thoại Việt — Nhật xen kẽ trong bối cảnh đặc biệt: mẫu câu chào tạm biệt homestay trang trọng (`〜の間お世話になります`), mẫu câu nhận tiền mừng cưới từ người Nhật (`お祝儀ありがとうございます`), mẫu câu trang trọng trong lễ ăn hỏi Việt Nam, mẫu câu phát biểu cảm ơn quan khách tiệc cưới, mẫu câu xen JP trong khi nói chuyện với bạn cấp 3, mẫu câu xin lỗi vì rời lớp 1 tuần với cohort (`〜の間欠席させてください`).

---

## Bối cảnh

1/2027 kỳ nghỉ đông năm nhất. Đại bay Osaka → Hà Nội 8/1, cưới Mai 14/1, về Osaka 17/1. Lễ ăn hỏi truyền thống Bắc Bộ ngày 12/1 tại nhà Mai (Cầu Giấy). Lễ cưới chính 14/1 tại khách sạn Daewoo, 250 khách. Mai 22 tuổi (ĐH Sư phạm Hà Nội năm 4 cuối). Tony và Yumi (homestay Osaka) gửi video chúc và ¥50.000 tiền mừng. Cohort Yamato + Aiko + Lin Wei + Rajesh quay video chúc bằng tiếng Nhật. Chương này tập trung mẫu câu giao tiếp đa văn hoá Việt — Nhật trong sự kiện trọng đại, và các nghi thức ngôn ngữ trang trọng của lễ cưới Bắc Bộ.

---

## Tình huống 1 — Phòng khách nhà Tony · 7/1 tối, chào tạm biệt homestay trước khi bay

*Đại đã đóng xong vali. Tony và Yumi ngồi ở phòng khách, có sẵn bao mừng cưới.*

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ユミさん、<ruby>明日<rt>あした</rt></ruby>から1<ruby>週間<rt>しゅうかん</rt></ruby>、ベトナムに<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Bác Tony, bác Yumi, từ mai cháu đi Việt Nam 1 tuần ạ.)* |
| Tony | おお、いよいよやな! マイさんとの<ruby>結婚式<rt>けっこんしき</rt></ruby>、<ruby>楽<rt>たの</rt></ruby>しみやね。<br>*(Ồ, sắp đến rồi nhỉ! Lễ cưới với Mai, mong lắm đấy.)* |
| Đại | はい、<ruby>14日<rt>じゅうよっか</rt></ruby>がメインです。250<ruby>人<rt>にん</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby>さんが<ruby>来<rt>き</rt></ruby>ます。<br>*(Vâng, ngày 14 là chính ạ. Có 250 khách sẽ đến ạ.)* |
| Yumi | <ruby>250人<rt>にひゃくごじゅうにん</rt></ruby>!? すごいね! これ、お<ruby>祝儀<rt>しゅうぎ</rt></ruby>。<br>*(250 người à!? Hoành tráng quá! Đây, tiền mừng cưới.)* |
| Tony | (đưa phong bì) ¥50,000<ruby>入<rt>はい</rt></ruby>っとるで。<ruby>使<rt>つか</rt></ruby>ってや。<br>*(Trong này có ¥50.000. Cháu dùng nhé.)* |
| Đại | (cúi đầu sâu) こんなに…<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。お<ruby>祝儀<rt>しゅうぎ</rt></ruby>、<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>わせていただきます。<br>*(Nhiều quá ạ… Cháu thật sự cảm ơn hai bác. Tiền mừng này cháu sẽ dùng thật trân trọng ạ.)* |
| Yumi | マイさんに「<ruby>素敵<rt>すてき</rt></ruby>な<ruby>奥<rt>おく</rt></ruby>さんになってね」って<ruby>伝<rt>つた</rt></ruby>えて。<br>*(Cháu nhắn Mai giúp bác: "Hãy trở thành người vợ tuyệt vời nhé".)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>伝<rt>つた</rt></ruby>えます。1<ruby>週間後<rt>しゅうかんご</rt></ruby>、また<ruby>戻<rt>もど</rt></ruby>ってきます。<br>*(Vâng, cháu sẽ chắc chắn nhắn ạ. 1 tuần nữa cháu lại về ạ.)* |

---

## Tình huống 2 — Sân bay Kansai · 8/1 sáng, nhắn LINE Tony và Mai trước khi check-in

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Tony) トニーさん、<ruby>関空<rt>かんくう</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>しました。これからチェックインします。<br>*(Bác Tony, cháu đến sân bay Kansai rồi ạ. Bây giờ cháu check-in ạ.)* |
| Tony | (LINE) <ruby>気<rt>き</rt></ruby>をつけてな! マイさんによろしく。<br>*(Cẩn thận nhé! Cho bác gửi lời chào Mai.)* |
| Đại | (LINE Mai, tiếng Việt) Em ơi! Anh sắp lên máy bay. Năm tiếng nữa anh tới Nội Bài. |
| Mai | (LINE, tiếng Việt) Vâng anh! Em với mẹ em ra sân bay đón. Trời Hà Nội đang mưa phùn nhẹ. |
| Đại | (LINE Yamato) Yamato、<ruby>俺<rt>おれ</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>講義<rt>こうぎ</rt></ruby>、<ruby>欠席<rt>けっせき</rt></ruby>させてもらう。<ruby>結婚式<rt>けっこんしき</rt></ruby>のため。<ruby>1週間<rt>いっしゅうかん</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>、ノートをよろしく<ruby>頼<rt>たの</rt></ruby>む。<br>*(Yamato, tớ xin nghỉ tuần sau vì lễ cưới. 1 tuần này nhờ cậu chép vở giúp.)* |
| Yamato | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>! <ruby>俺<rt>おれ</rt></ruby>とアイコでノートを<ruby>共有<rt>きょうゆう</rt></ruby>するわ。<ruby>結婚式<rt>けっこんしき</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>って!<br>*(OK! Tớ với Aiko sẽ chia sẻ vở. Cố lên lễ cưới nhé!)* |

---

## Tình huống 3 — Sân bay Nội Bài · 8/1 16:00 GMT+7, gặp lại Mai và mẹ Mai sau 6 tháng

*Đại đẩy xe đẩy hành lý ra sảnh đến. Mai và mẹ Mai vẫy tay ở rào chắn.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, vẫy) Anh ơi! Đây! Đây! |
| Đại | (tiếng Việt, đẩy nhanh) Em! Cô! Cháu chào cô ạ! |
| Mẹ Mai | (tiếng Việt) Đại! Cháu gầy đi nhiều quá. Bên đó cháu ăn uống không đủ à? |
| Đại | (tiếng Việt) Dạ cháu ăn được mà cô. Tại học nhiều thôi ạ. Cô cháu mình lên xe đi cho đỡ rét. |
| Mai | (tiếng Việt, kéo tay) Em nhớ anh lắm. Sáu tháng tròn đấy. |
| Đại | (tiếng Việt) Anh cũng. Trên máy bay anh không ngủ được, cứ nghĩ đến em. |
| Mẹ Mai | (tiếng Việt) Hai đứa ngọt quá ta. Lát về bố Mai làm cơm đón cháu rồi đấy. |
| Đại | (tiếng Việt) Vâng, cháu cảm ơn cô. Cháu có chút quà từ Nhật cho cả nhà ạ — bánh Royce, bột matcha và mặt nạ Shiseido cho cô và Mai. |
| Mẹ Mai | (tiếng Việt) Cháu chu đáo quá. Thôi lên xe đi, mưa lạnh lắm. |

---

## Tình huống 4 — Nhà Mai (Cầu Giấy) · 12/1 sáng, lễ ăn hỏi — bố Đại đặt vấn đề

*Đoàn nhà trai 30 người đến trước cổng nhà Mai. 6 tráp lễ vật đỏ tươi đã được đội bê tráp nam chuẩn bị. Bố Đại đại diện họ trai bước vào.*

| Vai | Lời thoại |
|---|---|
| Bố Đại | (tiếng Việt, trang trọng) Kính thưa hai bác, hôm nay đoàn nhà chúng tôi sửa soạn lễ vật sang xin phép hai bác cho cháu Đại nhà chúng tôi được chính thức rước cháu Mai về làm dâu. |
| Bố Mai | (tiếng Việt) Dạ vâng, hai bác có nhã ý sang thưa chuyện, gia đình chúng tôi vô cùng vui mừng. Hai cháu đã tìm hiểu nhau từ thời cấp ba, nay duyên đã đến thì hai bên cùng vun vén cho các cháu. |
| Bố Đại | (tiếng Việt) Gia đình chúng tôi có chút lễ mọn gồm sáu tráp: trầu cau, chè, rượu thuốc, bánh phu thê, xôi gấc kèm gà, và hoa quả, kính dâng lên gia tiên hai bác. |
| Bố Mai | (tiếng Việt) Xin cảm ơn hai bác và gia đình. Lễ vật chu đáo, tươm tất quá. Xin mời hai bác cùng các cháu vào trong thắp nén hương lên bàn thờ tổ tiên. |
| Bố Đại | (tiếng Việt) Vâng, xin mời hai bác đi trước ạ. |

---

## Tình huống 5 — Phòng khách nhà Mai · 12/1 trưa, hai bà mẹ nói chuyện sau lễ

| Vai | Lời thoại |
|---|---|
| Mẹ Mai | (tiếng Việt, rưng rưng) Chị ơi, con Mai nhà tôi rồi đây phải sang Nhật, xa nhà xa cửa… |
| Mẹ Đại | (tiếng Việt, ân cần) Chị cứ yên tâm. Cháu Đại nhà tôi tính tình hiền lành, chịu khó. Sang bên ấy hai cháu sẽ đỡ đần nhau. Vợ chồng tôi cũng coi cháu Mai như con gái trong nhà. |
| Mẹ Mai | (tiếng Việt) Vâng, tôi tin chị. Mỗi tội con bé mới ra trường, chưa biết nấu nướng nhiều món Nhật. |
| Mẹ Đại | (tiếng Việt) Sang đó từ từ cháu nó học. Có Đại kèm. Khu Osaka cũng có cộng đồng người Việt mình đông, mua thực phẩm Việt không khó đâu. |
| Mai | (tiếng Việt, nghẹn ngào ôm mẹ) Mẹ ơi, con sang bên ấy nhưng vẫn về thăm bố mẹ thường xuyên mà. Mỗi năm con về một, hai lần. |
| Mẹ Mai | (tiếng Việt, lau nước mắt) Ừ, mẹ biết. Con đi theo chồng là mẹ mừng cho con. |
| Đại | (tiếng Việt) Cô ơi, cháu hứa với cô: mỗi cuối tuần cháu sẽ cho Mai gọi video về cho cô. Cháu sẽ chăm Mai đàng hoàng ạ. |
| Mẹ Mai | (tiếng Việt) Ừ, mẹ tin con. |

---

## Tình huống 6 — Phòng tân nương Daewoo · 14/1 6:30 sáng, sửa soạn áo dài cưới

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, đứng trước gương buộc khăn xếp) Khăn xếp này anh không biết buộc, em ra giúp anh được không? |
| Mai | (tiếng Việt, ra giúp) Để em. Anh cúi xuống chút. |
| Đại | (tiếng Việt) Em đẹp quá! Áo dài đỏ này thuê salon nào ở Hà Nội thế? |
| Mai | (tiếng Việt) Salon Mỹ Hạnh ở Hàng Đào. Hết bốn triệu rưỡi tiền thuê cả ba bộ — ăn hỏi, cưới chính, đãi tiệc tối. |
| Đại | (tiếng Việt) Áo dài chú rể anh may bên Osaka — tiệm trên Tennoji chuyên cho người Việt, hết ¥35.000. |
| Mai | (tiếng Việt) Hết bao nhiêu tiền Việt thế anh? |
| Đại | (tiếng Việt) Khoảng sáu triệu rưỡi em ạ. Đắt hơn ở Việt Nam một chút, nhưng chất vải đẹp. |
| Wedding planner | (tiếng Việt, gõ cửa) Cô dâu chú rể ơi, 15 phút nữa xuống sảnh chụp ảnh nhé! |
| Đại | (tiếng Việt) Vâng chị, bọn em xuống ngay. |

---

## Tình huống 7 — Sảnh cưới Daewoo · 14/1 11:00, Đại phát biểu trên sân khấu

*MC giới thiệu chú rể cô dâu. 250 khách vỗ tay. Đại cầm mic.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, lên sân khấu, cầm mic) Kính thưa hai bên gia đình, kính thưa toàn thể quý vị quan khách… |
| Đại | (tiếng Việt) Cháu là Nguyễn Đại, hiện đang là sinh viên năm nhất khoa Công nghệ thông tin Đại học Osaka, Nhật Bản. |
| Đại | (tiếng Việt) Cháu quen Mai từ hồi học lớp 11 chuyên Toán Tin trường Ams. Yêu xa sáu năm trời, từ tháng 4/2024 cháu sang Nhật du học. Hôm nay cháu chính thức được đón Mai về làm vợ. |
| Đại | (tiếng Việt) Tháng 5/2027 tới đây, Mai sẽ sang Nhật theo visa diện gia đình — bên Nhật gọi là kazoku-taizai. Hai vợ chồng cháu sẽ cùng sinh sống tại Osaka. |
| Đại | (tiếng Việt) Cháu xin được cảm ơn bố mẹ hai bên đã luôn ủng hộ chúng cháu trong suốt quãng đường yêu xa. Xin cảm ơn anh em, bạn bè đã có mặt hôm nay để chung vui cùng vợ chồng cháu. |
| Mai | (tiếng Việt, đứng cạnh, tiếp lời) Em xin được gửi lời cảm ơn tới anh Đại. Sáu năm yêu xa, anh chưa một lần phụ em. Em sẽ sang Nhật cùng anh, cùng anh vun vén cho cuộc sống mới của hai vợ chồng. |
| Đại | (tiếng Việt) Xin trân trọng cảm ơn quý vị! |
| (Cả hội trường vỗ tay dài. Mẹ Mai khóc.) | |

---

## Tình huống 8 — Sảnh cưới · 14/1 12:30, video chúc mừng từ Tony và Yumi

*MC giới thiệu. Màn hình chiếu video. Cả hội trường im lặng nghe.*

| Vai | Lời thoại |
|---|---|
| MC | (tiếng Việt) Xin mời quý vị cùng theo dõi đoạn video chúc mừng được gửi từ gia đình homestay của chú rể tại Osaka — ông Tony và bà Yumi Tanaka! |
| Tony | (video, JP) ダイ<ruby>君<rt>くん</rt></ruby>とマイさん、ご<ruby>結婚<rt>けっこん</rt></ruby>おめでとうございます!<br>*(Đại và Mai, chúc mừng hôn lễ của hai cháu!)* |
| Tony | (video, tiếng Việt lơ lớ) Đại… con trai tôi! Mai về Osaka, tôi… đón hai con nhé! Chúc… mừng! Hạnh… phúc! |
| Yumi | (video, JP) <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素敵<rt>すてき</rt></ruby>なお<ruby>二人<rt>ふたり</rt></ruby>ですね。どうかお<ruby>幸<rt>しあわ</rt></ruby>せに!<br>*(Hai cháu thật là một cặp đẹp đôi. Chúc hai cháu thật hạnh phúc!)* |
| Yumi | (video, tiếng Việt lơ lớ) Mai-chan… đẹp lắm nha! Bác… chờ Mai sang Osaka! |
| (Cả hội trường vỗ tay, nhiều người xúc động lau mắt.) | |

---

## Tình huống 9 — Sảnh cưới · 14/1 12:45, video chúc mừng từ cohort Osaka U

| Vai | Lời thoại |
|---|---|
| MC | (tiếng Việt) Tiếp theo là video chúc mừng từ nhóm bạn cùng khoá Đại học Osaka — Yamato, Aiko, Lin Wei và Rajesh! |
| Yamato | (video, JP) ダイ! ご<ruby>結婚<rt>けっこん</rt></ruby>おめでとう! <ruby>大阪<rt>おおさか</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って<ruby>来<rt>き</rt></ruby>たら、みんなで<ruby>祝賀会<rt>しゅくがかい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>こうな!<br>*(Đại ơi! Chúc mừng cậu! Về Osaka anh em mình mở tiệc mừng nhé!)* |
| Aiko | (video, JP) マイさん、<ruby>写真<rt>しゃしん</rt></ruby><ruby>見<rt>み</rt></ruby>たよ! とっても<ruby>素敵<rt>すてき</rt></ruby>! <ruby>大阪<rt>おおさか</rt></ruby>で<ruby>会<rt>あ</rt></ruby>えるのを<ruby>楽<rt>たの</rt></ruby>しみにしてます!<br>*(Chị Mai ơi, em xem ảnh rồi! Đẹp tuyệt! Em mong được gặp chị ở Osaka!)* |
| Lin Wei | (video, tiếng Anh xen JP) Congratulations Đại and Mai! See you back in Osaka. ご<ruby>結婚<rt>けっこん</rt></ruby>おめでとう!<br>*(Chúc mừng Đại và Mai! Gặp lại ở Osaka. Chúc mừng kết hôn!)* |
| Rajesh | (video, tiếng Anh) Wishing you both a lifetime of happiness! Đại, you owe us a wedding party in Osaka, OK?<br>*(Chúc hai bạn một đời hạnh phúc! Đại, mày nợ tụi tao một tiệc mừng cưới ở Osaka đấy nhé.)* |
| (Khách vỗ tay. Đại cúi đầu cảm ơn hướng về màn hình.) | |

---

## Tình huống 10 — Bàn tiệc số 5 · 14/1 14:00, bạn cấp 3 chuyên Tin chúc

*Khoa, Tuấn-Anh, Hoa — 3 bạn cấp 3 chuyên Tin ngồi cùng bàn.*

| Vai | Lời thoại |
|---|---|
| Khoa | (tiếng Việt) Đại! Mày là thần tượng cả lớp đấy. Đỗ Osaka U, cưới Mai, lại còn AtCoder Green nữa! |
| Đại | (tiếng Việt) Mày nói quá. Bên đó tao học cũng vất vả lắm. Còn mày sao rồi, FPT vẫn ổn chứ? |
| Khoa | (tiếng Việt) Tao đang dev FPT Software, đợt này làm project cho khách Nhật. Đôi khi cũng cần học chút tiếng Nhật giao tiếp. |
| Đại | (tiếng Việt) Hay đấy! Tao gửi cho mày link Hizashi — app học tiếng Nhật của bạn Tuấn-Anh tao, miễn phí, tao có review trên đó. |
| Tuấn-Anh | (tiếng Việt) Tao đang học năm cuối Bách Khoa, đang phỏng vấn FPT Japan. Mày có lời khuyên nào không Đại? |
| Đại | (tiếng Việt) Cứ đào sâu thuật toán với thiết kế hệ thống. Tiếng Anh nữa. JD của FPT Japan đòi hỏi cả keigo cơ bản, mày kiếm sách tiếng Nhật business mà đọc. |
| Hoa | (tiếng Việt) Bao giờ vợ chồng mày về VN nữa? Bọn này muốn đến chơi. |
| Đại | (tiếng Việt) Chắc Tết 2028. Năm nay Mai sang Osaka tháng 5, ổn định rồi mới về được. |

---

## Tình huống 11 — Sân khấu · 14/1 14:30, Đại và Mai nhảy bản đầu tiên

*DJ bật "Perfect" của Ed Sheeran. Đại dắt Mai ra giữa sân khấu.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, ghé tai Mai) Em có hạnh phúc không? |
| Mai | (tiếng Việt) Hạnh phúc nhất cuộc đời em. |
| Đại | (tiếng Việt) Anh hứa với em: anh sẽ không bao giờ để em thiệt thòi. |
| Mai | (tiếng Việt) Em tin anh. Anh nhảy nhẹ thôi, em đi giày cao gót cao quá. |
| Đại | (tiếng Việt, cười) Để anh đỡ em. Em nghiêng đầu vào vai anh đi. |
| Mai | (tiếng Việt) Em… mệt thật đấy. Từ 5 giờ sáng đến giờ. |
| Đại | (tiếng Việt) Chút nữa hết tiệc, mình về phòng nghỉ. Cảm ơn em đã chịu cực cùng anh hôm nay. |

---

## Tình huống 12 — Phòng tân hôn Daewoo · 14/1 22:00, bàn về visa và kế hoạch sang Nhật

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, mặc đồ ngủ, ngồi lên giường) Anh ơi! Em là vợ chính thức của anh rồi. |
| Đại | (tiếng Việt) Em sẽ là người duy nhất của anh suốt cả cuộc đời này. (Ôm) |
| Mai | (tiếng Việt) Bốn tháng nữa em sang Nhật. Anh giải thích lại em quy trình visa một lần nữa được không? Em sợ em làm sai giấy tờ. |
| Đại | (tiếng Việt) Em yên tâm. Visa của em là kazoku-taizai — diện gia đình. Em đã nộp hồ sơ ở Đại sứ quán Nhật tại Hà Nội tuần trước rồi đúng không? |
| Mai | (tiếng Việt) Vâng, em nộp thứ Năm tuần trước. Họ bảo chờ thư bảo lãnh từ anh gửi sang. |
| Đại | (tiếng Việt) Thư bảo lãnh tiếng Nhật gọi là shouhei riyuusho. Anh sẽ làm trong tuần đầu về Osaka — phải có giấy đăng ký kết hôn dịch công chứng, hợp đồng thuê căn hộ Senri-chuo, và sao kê tài khoản của anh chứng minh tài chính. |
| Mai | (tiếng Việt) Anh có đủ tài chính chứng minh cho hai vợ chồng không? |
| Đại | (tiếng Việt) Anh có ¥1.200.000 tiết kiệm từ gia sư cộng giải Hack U. Đủ chuẩn cho visa diện gia đình. Em an tâm. |
| Mai | (tiếng Việt) Vâng. Em tin anh. |

---

## Tình huống 13 — Sân bay Nội Bài · 17/1 6:00 sáng, chia tay bố mẹ và Mai

| Vai | Lời thoại |
|---|---|
| Mẹ Đại | (tiếng Việt, đưa cái túi bánh chưng) Đại! Mẹ gói cho con hai cái bánh chưng cuối còn trong tủ. Sang bên đấy hấp lại mà ăn. |
| Đại | (tiếng Việt) Vâng, con cảm ơn mẹ. Con yêu mẹ. |
| Bố Đại | (tiếng Việt, vỗ vai Đại) Đại à! Bố tự hào về con lắm. Mới 22 tuổi đỗ Đại học Osaka, lại cưới được Mai. Vậy là con đã thành đạt rồi. |
| Đại | (tiếng Việt, nghẹn) Bố ơi! Con vẫn còn nhiều thứ phải học lắm. Năm sau con sẽ tham quan lab, năm ba vào lab Inoue chuyên AI. |
| Bố Đại | (tiếng Việt) Bố không hiểu lab Inoue là gì, nhưng nghe con say sưa kể là bố biết con đang đi đúng đường. |
| Mai | (tiếng Việt, ôm) Anh đi đường cẩn thận nhé! Tháng 5 em sang. |
| Đại | (tiếng Việt) Em ở nhà giúp mẹ. Hồ sơ visa em chuẩn bị nốt mấy giấy tờ y tế. Mỗi tối anh gọi video. |
| Mẹ Mai | (tiếng Việt) Đại! Sang đó học cho giỏi nhé con. Mai để mẹ chăm cho con. |
| Đại | (tiếng Việt) Vâng, cháu cảm ơn cô. Cháu đi đây ạ. |

---

## Tình huống 14 — Căn hộ Senri-chuo · 17/1 23:00, gọi video về cho Mai sau khi về Osaka

*Đại vừa vào căn hộ mới (đã thuê từ trước). Wifi đã cài sẵn. Mở video call Zalo.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Anh về Osaka rồi. Anh đang ngồi trong căn hộ Senri-chuo — căn hộ của hai vợ chồng mình. |
| Mai | (tiếng Việt) Cho em xem với anh! (Đại bật camera quay quanh phòng.) Ôi, rộng thật! Có hai phòng cơ à? |
| Đại | (tiếng Việt) 2DK đấy em — hai phòng ngủ, một phòng ăn liền bếp. Tiền nhà 85.000 yên mỗi tháng. Anh đã sắm nồi cơm điện, lò vi sóng, ấm đun nước. Bộ chăn ga gối cũng đủ. |
| Mai | (tiếng Việt) Anh dán giấy gì lên tủ kia thế? |
| Đại | (tiếng Việt, lia camera) "Chào mừng Mai!" — anh dán bằng giấy washi mua ở Daiso ngày hôm qua. Để khi em sang là em thấy luôn. |
| Mai | (tiếng Việt, mắt rưng rưng) Anh… |
| Đại | (tiếng Việt) Em cố lên 4 tháng nữa. Hồ sơ visa em làm tốt là sang sớm hơn được đấy. |
| Mai | (tiếng Việt) Em sẽ cố. Tony và Yumi đã trở về phòng họ chưa anh? |
| Đại | (tiếng Việt) Anh đã gửi LINE rồi. Mai anh sẽ qua nhà Tony cảm ơn bằng tay — kèm gói bánh đậu xanh Hà Nội mẹ Mai gửi. |
| Mai | (tiếng Việt) Nhớ cảm ơn hai bác giúp em. Em yêu anh. |
| Đại | (tiếng Việt) Anh cũng yêu em. Chúc em ngủ ngon. |

---

## Đọng lại chương 10

Một tuần đặc biệt nhất đời Đại: bay từ Osaka về Hà Nội cưới Mai. Đại học mẫu câu trang trọng chia tay homestay (**「1週間ベトナムに行ってきます」・「お祝儀ありがとうございます」**), mẫu câu xin nghỉ học với cohort (**「結婚式のため欠席させてもらう」**), mẫu câu phát biểu cảm ơn quan khách tiệc cưới (tiếng Việt), và đặc biệt là nghi thức ngôn ngữ trang trọng của lễ ăn hỏi Bắc Bộ — bố Đại "thưa chuyện" 6 tráp với gia đình Mai. Video Tony và Yumi xen tiếng Nhật và tiếng Việt lơ lớ khiến hội trường xúc động. Cohort Yamato + Aiko + Lin Wei + Rajesh gửi video chúc bằng tiếng Nhật và tiếng Anh. Bàn riêng với Mai về quy trình visa **家族滞在** (kazoku-taizai) — thư bảo lãnh **招へい理由書** (shouhei riyuusho), giấy đăng ký kết hôn, hợp đồng thuê căn hộ, sao kê tài chính. Cảnh cuối: Đại về Osaka 1 mình, gọi video khoe Mai căn hộ Senri-chuo mới với dòng chữ "Chào mừng Mai!" dán trên tủ.

> Từ vựng & mẫu câu chương này: 結婚式・帰国・お祝儀・家族滞在・招へい理由書・ご結婚おめでとうございます・お幸せに・〜の間お世話になります・〜のため欠席させてもらう・1週間ベトナムに行ってきます・ăn hỏi・6 tráp・áo dài chú rể・thư bảo lãnh・kazoku-taizai・shouhei riyuusho・乾杯・祝賀会・Daewoo Hotel・新郎新婦

## Bí quyết chương

- **Đa văn hoá ngôn ngữ**: Một chương xen kẽ tiếng Việt trang trọng (ăn hỏi, phát biểu cưới) + tiếng Nhật keigo (chia tay homestay, nhận tiền mừng) + tiếng Anh (Rajesh video) — phản ánh đúng bối cảnh du học sinh Việt cưới ở VN nhưng sống ở Nhật.
- **Lễ ăn hỏi Bắc Bộ**: Pattern ngôn ngữ "Kính thưa hai bác / sửa soạn lễ vật / sáu tráp / kính dâng gia tiên" — register Việt truyền thống mà thế hệ trẻ đôi khi quên.
- **Visa kazoku-taizai**: Mẫu câu thực tế cho du học sinh đã có vợ — `shouhei riyuusho`, giấy đăng ký kết hôn công chứng, sao kê tài chính ¥1.200.000+.
- **Tony và Yumi tiếng Việt lơ lớ**: Detail thật của homestay Nhật có tình cảm với gia đình du học sinh — chi tiết nhỏ này khiến 250 khách xúc động.
- **Cảnh cuối "Chào mừng Mai!"**: Đỉnh điểm ấm áp — Đại đã dán sẵn lời chào trước khi Mai sang, foreshadow sách 22.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 間 | あいだ | GIAN | trong khoảng |
| 祝儀 | しゅうぎ | CHÚC NGHI | tiền mừng |
| 大切 | たいせつ | ĐẠI THIẾT | trân trọng |
| 奥さん | おくさん | ÁO | vợ |
| 素敵 | すてき | TỐ ĐÍCH | tuyệt vời |
| 伝える | つたえる | TRUYỀN | nhắn lại |
| 戻る | もどる | LỆ | quay lại |
| 関空 | かんくう | QUAN KHÔNG | sân bay Kansai |
| 到着 | とうちゃく | ĐÁO TRƯỚC | đến nơi |
| 気をつけて | きをつけて | KHÍ | cẩn thận |
| 欠席 | けっせき | KHUYẾT TỊCH | vắng mặt |
| 了解 | りょうかい | LIỄU GIẢI | hiểu, OK |
| 結婚 | けっこん | KẾT HÔN | kết hôn |
| 幸せ | しあわせ | HẠNH | hạnh phúc |
| 二人 | ふたり | NHỊ NHÂN | hai người |
| 祝賀会 | しゅくがかい | CHÚC HẠ HỘI | tiệc mừng |
| 新郎新婦 | しんろうしんぷ | TÂN LANG TÂN PHỤ | cô dâu chú rể |
| 家族滞在 | かぞくたいざい | GIA TỘC TRỆ TẠI | visa diện gia đình |
| 招へい理由書 | しょうへいりゆうしょ | CHIÊU LÝ DO THƯ | thư bảo lãnh |
| 乾杯 | かんぱい | CÀN BÔI | cạn ly |
| 国際 | こくさい | QUỐC TẾ | quốc tế |
| 婚姻届 | こんいんとどけ | HÔN NHÂN GIỚI | đăng ký kết hôn |
| 翻訳 | ほんやく | PHIÊN DỊCH | dịch |
| 公証 | こうしょう | CÔNG CHỨNG | công chứng |
| 賃貸契約 | ちんたいけいやく | NHẪM ĐẠI KHẾ ƯỚC | hợp đồng thuê |
| 残高証明 | ざんだかしょうめい | TÀN CAO CHỨNG MINH | sao kê |
| 財政 | ざいせい | TÀI CHÍNH | tài chính |
| 在留資格 | ざいりゅうしかく | TẠI LƯU TƯ CÁCH | tư cách lưu trú |
| 申請 | しんせい | THÂN THỈNH | đăng ký, xin |
| 大使館 | たいしかん | ĐẠI SỨ QUÁN | đại sứ quán |
| 必要書類 | ひつようしょるい | TẤT YẾU THƯ LOẠI | giấy tờ cần |
| 帯 | おび | ĐỚI | đai obi |
| 着物 | きもの | TRẢ VẬT | kimono |
| 挨拶 | あいさつ | AI TÁT | chào hỏi |
| 引っ越し | ひっこし | DẪN VIỆT | chuyển nhà |
| 西陣 | にしじん | TÂY TRẬN | Nishijin |
| 京都 | きょうと | KINH ĐÔ | Kyoto |
| 楽しみにしとく | たのしみにしとく | LẠC | mong chờ |
| 退去手続き | たいきょてつづき | THỐI KHỨ THỦ TỤC | thủ tục trả phòng |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000011, 800000021, NULL, 'markdown_book', 'T11. 基本情報技術者試験 prep + Lin Wei mentor (FE試験準備)', '# Sách sinh viên Đại học Osaka · T11. 基本情報技術者試験 prep + Lin Wei mentor (FE試験準備)

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 1 ĐH Osaka, 2-3/2027. Học các mẫu hội thoại tiếng Nhật trong giai đoạn ôn thi chứng chỉ quốc gia: mẫu câu nhờ kèm cặp một bạn senior hơn về kiến thức (`〜を教えていただけませんか`), mẫu câu báo cáo điểm mock test (`〜点でした`), mẫu câu hỏi lại khi không hiểu thuật ngữ kỹ thuật (`〜というのは何ですか`), mẫu câu kê khai đăng ký thi với giám thị (`受験者番号〇〇です`), mẫu câu báo tin đỗ chứng chỉ cho cohort (`合格しました!`), và mẫu câu giảng giải lại cho em gái ở VN (tiếng Việt + thuật ngữ JP xen kẽ).

---

## Bối cảnh

2-3/2027 — sau khi Đại về Osaka từ đám cưới VN. Đại + Yamato cùng đăng ký thi 基本情報技術者試験 (FE — Fundamental IT Engineer Examination, IPA cấp) ngày 15/4 tại Prometric Umeda. Lin Wei đã có FE bản Trung Quốc (chương trình giống 95%), tình nguyện làm mentor cho cả nhóm. FE gồm 科目A (60 câu / 90 phút — kiến thức rộng) và 科目B (20 câu / 100 phút — thuật toán). Pass = 60% mỗi môn. Pass rate quốc gia ~25-30%. Em gái Linh-Anh ở VN cũng đang định thi FE tháng 9/2027. Chương này tập trung mẫu câu học nhóm, mẫu câu báo cáo kết quả, và mẫu câu giao tiếp ngày thi thật.

---

## Tình huống 1 — Thư viện chính ĐH Osaka tầng 3 · 1/2/2027 thứ 7 10:00, Lin Wei offer mentor

| Vai | Lời thoại |
|---|---|
| Lin Wei | (tiếng Anh xen JP) Đại! Yamato! ちょっと<ruby>聞<rt>き</rt></ruby>いてくれ。<ruby>俺<rt>おれ</rt></ruby>、China<ruby>版<rt>はん</rt></ruby>のFEはもう<ruby>持<rt>も</rt></ruby>ってる。Syllabus is 95% same as Japan''s IPA exam.<br>*(Đại! Yamato! Nghe tớ này. Tớ có chứng chỉ FE bản Trung Quốc rồi. Chương trình giống IPA của Nhật tới 95%.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>?  Lin Wei、メンターになってくれない? FEの<ruby>勉強法<rt>べんきょうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか?<br>*(Thật à? Lin Wei ơi, cậu làm mentor cho tụi tớ được không? Chỉ cho tụi tớ cách học FE với?)* |
| Lin Wei | (tiếng Anh) Sure, I''ll mentor you both. <ruby>毎週土曜<rt>まいしゅうどよう</rt></ruby>、ここで2<ruby>時間<rt>じかん</rt></ruby>。OK?<br>*(Được, tớ kèm hai cậu. Mỗi thứ Bảy 2 tiếng ở đây nhé.)* |
| Yamato | <ruby>助<rt>たす</rt></ruby>かる! <ruby>俺<rt>おれ</rt></ruby>、<ruby>申込<rt>もうしこ</rt></ruby>みは4<ruby>月<rt>がつ</rt></ruby><ruby>15日<rt>じゅうごにち</rt></ruby>のCBTで<ruby>済<rt>す</rt></ruby>ませた。プロメトリック<ruby>梅田<rt>うめだ</rt></ruby>センター。<br>*(Cứu tinh! Tớ đã đăng ký thi CBT 15/4 ở trung tâm Prometric Umeda rồi.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>場所<rt>ばしょ</rt></ruby>! <ruby>受験料<rt>じゅけんりょう</rt></ruby>¥7,500、<ruby>振<rt>ふ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>み<ruby>済<rt>ず</rt></ruby>みだ。<br>*(Tớ cũng cùng ngày, cùng địa điểm! Lệ phí ¥7.500 chuyển khoản rồi.)* |
| Lin Wei | (tiếng Anh) Then let''s start with syllabus overview today.<br>*(Vậy hôm nay bắt đầu với tổng quan chương trình nhé.)* |

---

## Tình huống 2 — Thư viện · 1/2 10:30, Lin Wei giảng 8 lĩnh vực FE

| Vai | Lời thoại |
|---|---|
| Lin Wei | (vẽ trên giấy nháp) FEには8つの<ruby>分野<rt>ぶんや</rt></ruby>があります。<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>言<rt>い</rt></ruby>うね。<br>*(FE có 8 lĩnh vực. Tớ liệt kê theo thứ tự nhé.)* |
| Lin Wei | 1: <ruby>基礎理論<rt>きそりろん</rt></ruby> — math, logic, algorithm。 2: コンピュータシステム — CPU, memory, OS。<br>*(1: Lý thuyết cơ sở. 2: Hệ thống máy tính.)* |
| Lin Wei | 3: <ruby>技術要素<rt>ぎじゅつようそ</rt></ruby> — DB, network, security。 4: <ruby>開発技術<rt>かいはつぎじゅつ</rt></ruby> — SDLC, design, test。<br>*(3: Yếu tố kỹ thuật — DB, mạng, bảo mật. 4: Kỹ thuật phát triển.)* |
| Lin Wei | 5: プロジェクトマネジメント。 6: サービスマネジメント — ITIL。 7: <ruby>システム戦略<rt>システムせんりゃく</rt></ruby>。 8: <ruby>経営戦略<rt>けいえいせんりゃく</rt></ruby>＋<ruby>企業法務<rt>きぎょうほうむ</rt></ruby>。<br>*(5: Quản trị dự án. 6: Quản trị dịch vụ — ITIL. 7: Chiến lược hệ thống. 8: Chiến lược quản trị và pháp luật doanh nghiệp.)* |
| Đại | すみません、「ITIL」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Cho tớ hỏi, "ITIL" là gì vậy?)* |
| Lin Wei | (tiếng Anh) IT Infrastructure Library — best practices for IT service management. UKで<ruby>作<rt>つく</rt></ruby>られた<ruby>標準<rt>ひょうじゅん</rt></ruby>です。<br>*(Thư viện hạ tầng IT — tiêu chuẩn quản trị dịch vụ IT, do UK xây dựng.)* |
| Đại | なるほど。ありがとう、メモした。<br>*(Hiểu rồi. Cảm ơn, tớ ghi rồi.)* |

---

## Tình huống 3 — Thư viện · 8/2 11:00, deep dive thuật toán 科目B

| Vai | Lời thoại |
|---|---|
| Lin Wei | (tiếng Anh xen JP) 科目Bはalgorithm＋pseudocode、20<ruby>問<rt>もん</rt></ruby>を100<ruby>分<rt>ふん</rt></ruby>です。1<ruby>問<rt>もん</rt></ruby><ruby>平均<rt>へいきん</rt></ruby>5<ruby>分<rt>ふん</rt></ruby>。<br>*(Môn B là thuật toán và mã giả, 20 câu trong 100 phút. Trung bình 5 phút mỗi câu.)* |
| Lin Wei | (viết câu mẫu) "<ruby>配列<rt>はいれつ</rt></ruby>A[1..n]の<ruby>合計<rt>ごうけい</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>するアルゴリズムの<ruby>計算量<rt>けいさんりょう</rt></ruby>は?" A. O(1) B. O(log n) C. O(n) D. O(n²)<br>*(Độ phức tạp của thuật toán tính tổng mảng A[1..n] là?)* |
| Đại | Cは<ruby>正解<rt>せいかい</rt></ruby>ですね。O(n)。<br>*(Đáp án C đúng nhỉ. O(n).)* |
| Lin Wei | <ruby>正解<rt>せいかい</rt></ruby>! <ruby>典型問題<rt>てんけいもんだい</rt></ruby>だ。<ruby>次<rt>つぎ</rt></ruby>はもう<ruby>少<rt>すこ</rt></ruby>し<ruby>難<rt>むずか</rt></ruby>しいやつ。<br>*(Đúng rồi! Câu kinh điển. Tiếp theo khó hơn chút.)* |
| Yamato | (viết mã giả) `function fib(n): if n<=1 return n; return fib(n-1)+fib(n-2)`。<ruby>計算量<rt>けいさんりょう</rt></ruby>は?<br>*(Mã giả fib. Độ phức tạp?)* |
| Đại | O(2ⁿ)。<ruby>再帰<rt>さいき</rt></ruby>で memoization なし、だよね?<br>*(O(2ⁿ). Đệ quy không có memoization đúng không?)* |
| Lin Wei | <ruby>正解<rt>せいかい</rt></ruby>! memoizationを<ruby>使<rt>つか</rt></ruby>えばO(n)になる。<ruby>本番<rt>ほんばん</rt></ruby>でよく<ruby>出<rt>で</rt></ruby>るパターンだよ。<br>*(Đúng rồi! Dùng memoization thì còn O(n). Pattern hay ra ở thi thật đấy.)* |

---

## Tình huống 4 — Phòng KTX Đại · 12/2 19:00, Yamato gợi ý kakomon-doujou và Anki

*Đại nhắn LINE rủ Yamato qua phòng học cùng. Yamato đến với laptop.*

| Vai | Lời thoại |
|---|---|
| Yamato | (vừa vào phòng) Đại、<ruby>過去問<rt>かこもん</rt></ruby><ruby>道場<rt>どうじょう</rt></ruby>って<ruby>知<rt>し</rt></ruby>ってる? kakomon-doujou.com、<ruby>過去5年分<rt>かこごねんぶん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>が<ruby>無料<rt>むりょう</rt></ruby>。<br>*(Đại, biết Kakomon-doujou không? kakomon-doujou.com, đề 5 năm gần nhất miễn phí.)* |
| Đại | <ruby>知<rt>し</rt></ruby>らなかった! 「<ruby>過去問<rt>かこもん</rt></ruby>」って、<ruby>過去<rt>かこ</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>のこと?<br>*(Tớ không biết! "Kakomon" là đề thi cũ à?)* |
| Yamato | そう、<ruby>過去<rt>かこ</rt></ruby>の<ruby>試験問題<rt>しけんもんだい</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>。<ruby>解説<rt>かいせつ</rt></ruby>も<ruby>付<rt>つ</rt></ruby>いてるから、<ruby>間違<rt>まちが</rt></ruby>えても<ruby>学<rt>まな</rt></ruby>べる。<br>*(Ừ, viết tắt của 過去試験問題. Có cả lời giải, sai vẫn học được.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>はAnkiで<ruby>暗記<rt>あんき</rt></ruby>カードを500<ruby>枚<rt>まい</rt></ruby><ruby>作<rt>つく</rt></ruby>った。<ruby>毎日<rt>まいにち</rt></ruby>50<ruby>枚<rt>まい</rt></ruby>ずつレビューしてる。<br>*(Tớ làm 500 thẻ Anki rồi. Mỗi ngày ôn 50 thẻ.)* |
| Yamato | <ruby>暗記<rt>あんき</rt></ruby>カードと<ruby>過去問<rt>かこもん</rt></ruby><ruby>道場<rt>どうじょう</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>使<rt>つか</rt></ruby>えば<ruby>最強<rt>さいきょう</rt></ruby>だな。<br>*(Anki cộng kakomon-doujou kết hợp là vô địch đấy.)* |
| Đại | <ruby>OSI<rt>オーエスアイ</rt></ruby>7<ruby>層<rt>そう</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えるの<ruby>苦手<rt>にがて</rt></ruby>。コツある?<br>*(Tớ kém nhớ 7 tầng OSI. Có mẹo gì không?)* |
| Yamato | <ruby>語呂合<rt>ごろあ</rt></ruby>わせがあるよ。「<ruby>物<rt>ぶつ</rt></ruby>・データ・ネット・トラ・セッション・プレ・アプリ」って<ruby>頭文字<rt>かしらもじ</rt></ruby>で。<br>*(Có câu nhớ vần đấy. "Physical-Data-Network-Transport-Session-Presentation-Application" theo chữ cái đầu.)* |
| Đại | これ、メモする。<br>*(Tớ ghi lại đây.)* |

---

## Tình huống 5 — Thư viện · 22/2 11:00, Lin Wei nhấn mạnh 暗記 cho 科目A

| Vai | Lời thoại |
|---|---|
| Lin Wei | (tiếng Anh xen JP) 科目A is wide breadth, less depth. 60<ruby>問<rt>もん</rt></ruby>90<ruby>分<rt>ふん</rt></ruby>、1.5<ruby>分<rt>ふん</rt></ruby>/<ruby>問<rt>もん</rt></ruby>。<ruby>暗記<rt>あんき</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>のリストを<ruby>言<rt>い</rt></ruby>うよ。<br>*(Môn A rộng mà không sâu. 60 câu 90 phút, 1,5 phút mỗi câu. Tớ liệt kê danh sách bắt buộc thuộc.)* |
| Lin Wei | OSIの7<ruby>層<rt>そう</rt></ruby>、TCPとUDPの<ruby>違<rt>ちが</rt></ruby>い、SQLの<ruby>基本構文<rt>きほんこうぶん</rt></ruby>、DBの<ruby>正規化<rt>せいきか</rt></ruby> 1NF〜BCNF。<br>*(7 tầng OSI, khác biệt TCP / UDP, cú pháp SQL cơ bản, chuẩn hoá DB 1NF đến BCNF.)* |
| Lin Wei | <ruby>暗号化<rt>あんごうか</rt></ruby> — <ruby>対称<rt>たいしょう</rt></ruby>AESと<ruby>非対称<rt>ひたいしょう</rt></ruby>RSA。SDLC — waterfall, agile, spiral, V-model。<ruby>PM<rt>ピーエム</rt></ruby> — WBS, Gantt, critical path。<br>*(Mã hoá đối xứng AES và bất đối xứng RSA. SDLC. PM — WBS, Gantt, critical path.)* |
| Đại | すみません、「<ruby>正規化<rt>せいきか</rt></ruby>」というのは?<br>*(Cho tớ hỏi, "正規化" là gì ạ?)* |
| Lin Wei | DBの<ruby>表<rt>ひょう</rt></ruby>を<ruby>分割<rt>ぶんかつ</rt></ruby>して、<ruby>重複<rt>じゅうふく</rt></ruby>をなくす<ruby>手法<rt>しゅほう</rt></ruby>。<ruby>1<rt>いち</rt></ruby>NFは「<ruby>原子値<rt>げんしち</rt></ruby>のみ」、2NFは「<ruby>部分関数従属<rt>ぶぶんかんすうじゅうぞく</rt></ruby>を<ruby>除去<rt>じょきょ</rt></ruby>」、3NFは「<ruby>推移関数従属<rt>すいいかんすうじゅうぞく</rt></ruby>を<ruby>除去<rt>じょきょ</rt></ruby>」。<br>*(Là kỹ thuật chia bảng DB để loại bỏ trùng lặp. 1NF "chỉ giá trị nguyên tử", 2NF "loại phụ thuộc một phần", 3NF "loại phụ thuộc bắc cầu".)* |
| Đại | むずかしい… <ruby>例題<rt>れいだい</rt></ruby><ruby>解<rt>と</rt></ruby>きながら<ruby>覚<rt>おぼ</rt></ruby>えるよ。<br>*(Khó ghê… Tớ vừa giải ví dụ vừa nhớ vậy.)* |

---

## Tình huống 6 — Phòng KTX · 1/3 16:00, làm mock test 1 cùng Yamato

*Đại và Yamato cùng làm đề thử trên kakomon-doujou.com.*

| Vai | Lời thoại |
|---|---|
| Đại | (sau 90 phút môn A) <ruby>終<rt>お</rt></ruby>わった! Yamato、<ruby>結果<rt>けっか</rt></ruby>は?<br>*(Xong rồi! Yamato, kết quả thế nào?)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>は<ruby>科目<rt>かもく</rt></ruby>A 48/60、80%。<ruby>Đại<rt>ダイ</rt></ruby>は?<br>*(Tớ A 48/60, 80%. Còn cậu?)* |
| Đại | <ruby>科目<rt>かもく</rt></ruby>A 42/60、70%。<ruby>合格<rt>ごうかく</rt></ruby><ruby>圏内<rt>けんない</rt></ruby>だけど<ruby>余裕<rt>よゆう</rt></ruby>はないな。<br>*(A 42/60, 70%. Trong vùng đỗ nhưng không thoải mái.)* |
| (Cả hai làm tiếp môn B 100 phút.) | |
| Đại | <ruby>科目<rt>かもく</rt></ruby>B 13/20、65%。あぶない…<br>*(B 13/20, 65%. Suýt soát…)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はB 16/20、80%。<br>*(Tớ B 16/20, 80%.)* |
| Đại | (LINE Lin Wei) Lin Wei、モックテスト1の<ruby>結果<rt>けっか</rt></ruby>です。<ruby>科目<rt>かもく</rt></ruby>A 70%、<ruby>科目<rt>かもく</rt></ruby>B 65%。<ruby>合格<rt>ごうかく</rt></ruby>はギリギリ。アドバイスください。<br>*(Lin Wei, kết quả mock 1 đây: A 70%, B 65%. Suýt đỗ. Cho tớ lời khuyên với.)* |
| Lin Wei | (LINE, tiếng Anh) Both pass! But focus on 科目B. Algorithm in pseudocode is your weakness. <ruby>過去問<rt>かこもん</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby>5<ruby>問<rt>もん</rt></ruby>やって。<br>*(Cả hai môn đều đỗ! Nhưng tập trung môn B. Thuật toán mã giả là điểm yếu cậu. Mỗi ngày 5 câu đề cũ.)* |
| Đại | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>! <ruby>毎日<rt>まいにち</rt></ruby>5<ruby>問<rt>もん</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ずやる。<br>*(OK! Mỗi ngày 5 câu, nhất định.)* |

---

## Tình huống 7 — Phòng KTX · 5/3 21:00, Linh-Anh em gái gọi từ VN báo tin

*Đại đang gõ thẻ Anki. Điện thoại reo — Linh-Anh gọi từ Hà Nội.*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (tiếng Việt) Anh Đại ơi! Em vừa được sếp Toyota Boshoku khen kìa! Em dùng pandas tự động hoá báo cáo tháng, tiết kiệm 6 tiếng mỗi tuần. |
| Đại | (tiếng Việt) Hay quá em! Em áp dụng được vào công việc thật rồi đấy. |
| Linh-Anh | (tiếng Việt) Em cảm ơn anh đã kèm em từ 8 tháng trước. Mà anh đang ôn thi gì thế? |
| Đại | (tiếng Việt) Anh đang ôn FE — gọi đầy đủ là 基本情報技術者試験, chứng chỉ kỹ sư CNTT cơ bản của Nhật. Anh thi 15/4. |
| Linh-Anh | (tiếng Việt) Chứng chỉ quốc gia hả anh? Có tác dụng gì không anh? |
| Đại | (tiếng Việt) Có chứ! Ở Nhật, có FE là bằng chứng chính thức mình biết kiến thức CNTT cơ bản. Nhiều công ty Nhật yêu cầu khi tuyển. Toyota Boshoku có FE còn được giảm thuế thu nhập đấy em. |
| Linh-Anh | (tiếng Việt) Vậy em cũng muốn thi! Em đăng ký được không? |
| Đại | (tiếng Việt) Được chứ. Em đăng ký qua trang IPA — Information-technology Promotion Agency. Lệ phí ¥7.500. Em thi vào tháng 9/2027 nhé, anh sẽ kèm em y như anh kèm pandas. |
| Linh-Anh | (tiếng Việt) Vâng anh! Em chuẩn bị ngay. Anh gửi em link tài liệu nha. |
| Đại | (tiếng Việt) Anh gửi link kakomon-doujou nhé — trang Nhật miễn phí. Em đọc kanji được mà. |

---

## Tình huống 8 — Thư viện · 22/3 14:00, mock test 4 — Đại tiến bộ rõ

| Vai | Lời thoại |
|---|---|
| Lin Wei | (kiểm điểm) Đại、モック4の<ruby>結果<rt>けっか</rt></ruby>は?<br>*(Đại, kết quả mock 4?)* |
| Đại | <ruby>科目<rt>かもく</rt></ruby>A 50/60 (83%)、<ruby>科目<rt>かもく</rt></ruby>B 16/20 (80%)。<ruby>上<rt>あ</rt></ruby>がってきた!<br>*(A 50/60 83%, B 16/20 80%. Tăng rồi!)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はA 53/60 (88%)、B 17/20 (85%)。<br>*(Tớ A 88%, B 85%.)* |
| Lin Wei | (tiếng Anh) Great progress! 1<ruby>か月<rt>かげつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>と<ruby>比<rt>くら</rt></ruby>べて13ポイント<ruby>上<rt>あ</rt></ruby>がってるよ。<br>*(Tiến bộ tốt! So với 1 tháng trước tăng 13 điểm.)* |
| Đại | <ruby>過去問<rt>かこもん</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby>5<ruby>問<rt>もん</rt></ruby>、<ruby>20日間<rt>はつかかん</rt></ruby><ruby>続<rt>つづ</rt></ruby>けた<ruby>結果<rt>けっか</rt></ruby>だよ。アドバイスありがとう、Lin Wei。<br>*(Mỗi ngày 5 câu đề cũ, kiên trì 20 ngày liền. Cảm ơn Lin Wei vì lời khuyên.)* |
| Lin Wei | (tiếng Anh) Now keep this momentum. 2<ruby>週間<rt>しゅうかん</rt></ruby><ruby>残<rt>のこ</rt></ruby>ってる。<ruby>無理<rt>むり</rt></ruby>はしないで。<br>*(Giữ đà này. Còn 2 tuần. Đừng quá sức.)* |

---

## Tình huống 9 — Phòng KTX · 14/4 22:00, đêm trước thi — gọi Mai

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai, tiếng Việt) Em ơi! Mai 9:30 anh thi FE rồi nè. |
| Mai | (LINE, tiếng Việt) Em chúc anh thi đỗ! Anh ăn uống đầy đủ, ngủ sớm nhé. |
| Đại | (LINE) Anh đã sắm cơm bento ở Lawson rồi. Mai 7:00 anh dậy, 8:00 ra Umeda. |
| Mai | (LINE) Visa của em đã có kết quả phỏng vấn. Hai tuần nữa em có thư chính thức. |
| Đại | (LINE) Vậy là em sang được đầu tháng 5 đấy! Tuyệt vời. Để mai thi xong anh hoàn tất hợp đồng điện gas cho căn hộ. |
| Mai | (LINE) Vâng anh. Ngủ ngon nhé. Em sẽ cầu cho anh thi tốt. |
| Đại | (LINE Yamato) Yamato、<ruby>明日<rt>あした</rt></ruby>9:30 プロメトリック<ruby>梅田<rt>うめだ</rt></ruby>で<ruby>会<rt>あ</rt></ruby>おうな。<br>*(Yamato, mai 9:30 gặp ở Prometric Umeda nhé.)* |
| Yamato | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>! <ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(OK! Cố lên.)* |

---

## Tình huống 10 — Prometric Umeda · 15/4 9:20, check-in với giám thị

*Đại đến sớm 10 phút. Quầy tiếp tân. Giám thị đeo thẻ "IPA".*

| Vai | Lời thoại |
|---|---|
| Giám thị | おはようございます。<ruby>受験者番号<rt>じゅけんしゃばんごう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Chào buổi sáng. Cho tôi xin số báo danh.)* |
| Đại | <ruby>受験者番号<rt>じゅけんしゃばんごう</rt></ruby>FE2704-0825、ベトナム<ruby>国籍<rt>こくせき</rt></ruby>、グエン・ダイです。<br>*(Số báo danh FE2704-0825, quốc tịch Việt Nam, Nguyễn Đại ạ.)* |
| Giám thị | <ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>身分証明書<rt>みぶんしょうめいしょ</rt></ruby>と<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Xác nhận rồi. Cho tôi xem CMND và phiếu dự thi.)* |
| Đại | (trình thẻ ngoại kiều và phiếu) はい、こちらです。<br>*(Vâng, đây ạ.)* |
| Giám thị | OKです。<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>みは<ruby>禁止<rt>きんし</rt></ruby>です。<ruby>携帯<rt>けいたい</rt></ruby>はロッカーに<ruby>入<rt>い</rt></ruby>れてください。<ruby>席<rt>せき</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>は12です。<br>*(OK rồi. Không được mang đồ vào. Điện thoại để vào tủ. Số ghế của em là 12.)* |
| Đại | はい、わかりました。<br>*(Vâng, em hiểu rồi.)* |
| Giám thị | <ruby>科目<rt>かもく</rt></ruby>Aは9:30から60<ruby>問<rt>もん</rt></ruby>90<ruby>分<rt>ふん</rt></ruby>。<ruby>科目<rt>かもく</rt></ruby>Bは<ruby>休憩<rt>きゅうけい</rt></ruby><ruby>後<rt>ご</rt></ruby>、20<ruby>問<rt>もん</rt></ruby>100<ruby>分<rt>ふん</rt></ruby>。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Môn A từ 9:30, 60 câu 90 phút. Môn B sau giờ giải lao, 20 câu 100 phút. Cố lên nhé.)* |
| Đại | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 11 — Sảnh nghỉ Prometric · 15/4 11:00, giờ giải lao giữa môn A và môn B, gặp Yamato

| Vai | Lời thoại |
|---|---|
| Yamato | (đi ra từ phòng thi, gặp Đại) Đại! どうだった?<br>*(Đại! Sao rồi?)* |
| Đại | <ruby>科目<rt>かもく</rt></ruby>A、まあまあ。<ruby>2進数<rt>にしんすう</rt></ruby>とOSI、<ruby>正規化<rt>せいきか</rt></ruby>、PM、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>出<rt>で</rt></ruby>た。<ruby>練習<rt>れんしゅう</rt></ruby><ruby>通<rt>どお</rt></ruby>りだった。<br>*(Môn A, tạm ổn. Hệ nhị phân, OSI, normalization, PM — đều ra hết. Đúng như tớ luyện.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>も。<ruby>暗号<rt>あんごう</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>がちょっと<ruby>難<rt>むずか</rt></ruby>しかったけど。<br>*(Tớ cũng. Câu mã hoá hơi khó chút.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>もそれ! AESとRSAの<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けの<ruby>問題<rt>もんだい</rt></ruby>。<ruby>暗記<rt>あんき</rt></ruby>カードで<ruby>覚<rt>おぼ</rt></ruby>えたやつだから、<ruby>答<rt>こた</rt></ruby>えられた。<br>*(Tớ cũng! Câu phân biệt AES và RSA. Nhờ thẻ Anki nên tớ trả lời được.)* |
| Yamato | <ruby>科目<rt>かもく</rt></ruby>B、もうすぐだ。アルゴリズム、<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Môn B sắp tới rồi. Cố lên thuật toán.)* |
| Đại | <ruby>水<rt>みず</rt></ruby><ruby>飲<rt>の</rt></ruby>んで、トイレ<ruby>済<rt>す</rt></ruby>ませて、また<ruby>戻<rt>もど</rt></ruby>る。<br>*(Uống nước, đi vệ sinh xong tớ quay vào.)* |

---

## Tình huống 12 — Phòng thi · 15/4 12:30 → 14:10, làm môn B (im lặng, chỉ stage direction ngắn)

*Phòng im phăng phắc. Đại làm môn B 100 phút.*

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>科目<rt>かもく</rt></ruby>B、20<ruby>問<rt>もん</rt></ruby>100<ruby>分<rt>ふん</rt></ruby>、それでは<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Môn B, 20 câu trong 100 phút, mời các thí sinh bắt đầu.)* |
| (Đại làm Q5 — quicksort partition trace, OK.) | |
| (Q15 — chèn BST, OK.) | |
| (Q20 — knapsack DP, hơi khó, mất 12 phút.) | |
| Giám thị | (sau 100 phút) <ruby>終了<rt>しゅうりょう</rt></ruby>です。マウスから<ruby>手<rt>て</rt></ruby>を<ruby>離<rt>はな</rt></ruby>してください。<br>*(Hết giờ. Bỏ tay khỏi chuột.)* |
| Đại | (nhẹ thở) <ruby>終<rt>お</rt></ruby>わった…<br>*(Xong rồi…)* |

---

## Tình huống 13 — Phòng KTX · 15/4 23:00, kết quả CBT hiện ngay + gọi báo Mai

*CBT format mới: kết quả hiện trên màn hình ngay sau khi nộp.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Yamato) Yamato! <ruby>俺<rt>おれ</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>した! A 51/60 (85%)、B 16/20 (80%)!<br>*(Yamato! Tớ đỗ rồi! A 85%, B 80%!)* |
| Yamato | (LINE) <ruby>俺<rt>おれ</rt></ruby>も<ruby>合格<rt>ごうかく</rt></ruby>! A 56/60 (93%)、B 18/20 (90%)! <ruby>二人共<rt>ふたりとも</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>だな!<br>*(Tớ cũng đỗ! A 93%, B 90%! Hai đứa cùng đỗ!)* |
| Đại | (LINE Lin Wei) Lin Wei, <ruby>合格<rt>ごうかく</rt></ruby>しました! メンターになってくれて<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Lin Wei, em đỗ rồi! Cảm ơn cậu đã làm mentor.)* |
| Lin Wei | (LINE, tiếng Anh) Congrats both! お<ruby>祝<rt>いわ</rt></ruby>いに<ruby>明日<rt>あした</rt></ruby><ruby>梅田<rt>うめだ</rt></ruby>で<ruby>飯<rt>めし</rt></ruby><ruby>行<rt>い</rt></ruby>こう。<br>*(Chúc mừng cả hai! Mai ăn mừng ở Umeda nhé.)* |
| Đại | (LINE Mai, tiếng Việt) Em ơi! Anh đỗ FE rồi! 科目A 85%, 科目B 80%! |
| Mai | (LINE, tiếng Việt) Wow! Em tự hào quá! Anh giỏi nhất! |
| Đại | (LINE) Anh có chứng chỉ quốc gia đầu tiên rồi. Anh sẽ gắn huy hiệu lên trang GitHub. CV thêm một dòng đẹp. |
| Mai | (LINE) Hai tuần nữa em sang với anh nha. Mong gặp anh quá! |
| Đại | (LINE) Anh cũng mong. Tối nay anh ngủ với nụ cười em ạ. |

---

## Tình huống 14 — Phòng KTX · 16/4 9:00 sáng, gọi điện về VN báo bố mẹ và Linh-Anh

| Vai | Lời thoại |
|---|---|
| Đại | (gọi điện bố mẹ, tiếng Việt) Bố mẹ ơi! Con báo tin: con đã đỗ chứng chỉ FE rồi ạ! |
| Mẹ Đại | (tiếng Việt, qua loa ngoài) Hay quá con! FE là chứng chỉ gì cơ? |
| Đại | (tiếng Việt) Chứng chỉ quốc gia của Nhật về CNTT — tên đầy đủ là 基本情報技術者試験, tức Kỹ sư Công nghệ thông tin cơ bản. Tỷ lệ đỗ chỉ 25-30% trên toàn quốc. |
| Bố Đại | (tiếng Việt) Tự hào về con quá! Con thông báo cho cô bác hai bên nhà chưa? |
| Đại | (tiếng Việt) Con sẽ nhắn lát nữa. Mai bố mẹ cho con xin số em Linh-Anh nha, con báo nó luôn để nó có động lực thi tháng 9. |
| Linh-Anh | (gọi vào sau đó, tiếng Việt) Anh Đại! Anh đỗ rồi à? Em vừa nghe mẹ kể. |
| Đại | (tiếng Việt) Đúng rồi em. Giờ đến lượt em. Tháng 9 này em thi nhé, anh kèm em từ A đến Z. |
| Linh-Anh | (tiếng Việt) Vâng anh! Em đã đăng ký xong, đang học chương 1 — 基礎理論. Có chỗ nào không hiểu em hỏi anh nha. |
| Đại | (tiếng Việt) Bất cứ lúc nào em ạ. Cuối tuần anh em mình video call 1 tiếng, anh giảng cho em chương khó. |
| Linh-Anh | (tiếng Việt) Cảm ơn anh nhiều! Chúc anh chuẩn bị đón chị Mai vui vẻ nha. |

---

## Đọng lại chương 11

3 tháng cày FE cùng cohort. Đại học mẫu câu nhờ kèm cặp một bạn senior (**「メンターになってくれない?」・「〜を教えていただけませんか」**), mẫu câu hỏi lại khi không hiểu thuật ngữ (**「〜というのは何ですか」** — học hỏi về ITIL, 正規化, AES/RSA), mẫu câu báo cáo điểm mock test với mentor (**「科目A 70%、科目B 65%でした」**), mẫu câu kê khai đăng ký với giám thị (**「受験者番号〜です」**), và mẫu câu báo tin đỗ qua LINE (**「俺、合格した!」**). Lin Wei kèm 3 tháng — vô giá. Yamato chia sẻ trang **kakomon-doujou.com** và mẹo nhớ vần 7 tầng OSI. Em gái Linh-Anh ở VN báo tin được sếp Toyota khen vì pandas — và xin Đại kèm để thi FE tháng 9. Ngày thi 15/4: A 51/60 (85%) + B 16/20 (80%) — đỗ. Cảnh cuối: Đại gọi bố mẹ và Linh-Anh báo tin, chuyển sang chế độ mentor cho em gái.

> Từ vựng & mẫu câu chương này: 基本情報技術者試験・FE・IPA・CBT・科目A・科目B・過去問・過去問道場・Anki・OSI 7層・TCP/UDP・正規化・1NF/2NF/3NF/BCNF・WBS・critical path・暗号化対称非対称・受験者番号・受験票・合格しました・〜というのは何ですか・〜を教えていただけませんか・メンターになってくれない・お祝いに〜行こう

## Bí quyết chương

- **Mentor model**: Lin Wei (TQ FE syllabus 95% giống JP) làm mentor cho cohort — pattern thực tế ở ĐH Nhật, du học sinh các nước hỗ trợ nhau.
- **「〜というのは何ですか」 + EN term**: Mẫu câu chuẩn của SV năm 1 hỏi mentor — ITIL, 正規化, AES/RSA giữ EN, câu hỏi JP đầy đủ.
- **Anki 500 cards + kakomon-doujou 5 năm**: Combo prep thực tế đã helps Đại tăng từ 70% → 85%.
- **Phòng thi register**: 「受験者番号〜です」・「身分証明書」・「席番号」 — keigo của giám thị Nhật trong thi cử chuẩn IPA.
- **Linh-Anh callback + tutor relay**: Đại từ học trò Lin Wei → trở thành tutor cho em gái — chuỗi mentor sang thế hệ tiếp theo.
- **CBT instant result**: Format từ 2023 — biết kết quả ngay, tạo cảm xúc đỉnh điểm cho LINE Yamato/Mai ngay tối đó.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 基本情報技術者試験 | きほんじょうほうぎじゅつしゃしけん | CƠ BẢN TÌNH BÁO KỸ THUẬT GIẢ THÍ NGHIỆM | kỳ thi FE |
| 受験料 | じゅけんりょう | THỌ NGHIỆM LIỆU | lệ phí thi |
| 振り込み | ふりこみ | CHẤN VÀO | chuyển khoản |
| 分野 | ぶんや | PHÂN DÃ | lĩnh vực |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 基礎理論 | きそりろん | CƠ SỞ LÝ LUẬN | lý thuyết cơ sở |
| 技術要素 | ぎじゅつようそ | KỸ THUẬT YẾU TỐ | yếu tố kỹ thuật |
| 開発技術 | かいはつぎじゅつ | KHAI PHÁT KỸ THUẬT | kỹ thuật phát triển |
| 経営戦略 | けいえいせんりゃく | KINH DOANH CHIẾN LƯỢC | chiến lược kinh doanh |
| 企業法務 | きぎょうほうむ | XÍ NGHIỆP PHÁP VỤ | pháp luật doanh nghiệp |
| 科目 | かもく | KHOA MỤC | môn |
| 典型問題 | てんけいもんだい | ĐIỂN HÌNH VẤN ĐỀ | bài kinh điển |
| 再帰 | さいき | TÁI QUY | đệ quy |
| 本番 | ほんばん | BẢN PHIÊN | thi thật |
| 過去問道場 | かこもんどうじょう | QUÁ KHỨ VẤN ĐẠO TRƯỜNG | Kakomon Doujou |
| 略 | りゃく | LƯỢC | viết tắt |
| 試験問題 | しけんもんだい | THÍ NGHIỆM VẤN ĐỀ | đề thi |
| 間違える | まちがえる | GIAN VI | sai |
| 学ぶ | まなぶ | HỌC | học |
| 暗記 | あんき | ÁM KÝ | ghi nhớ |
| 語呂合わせ | ごろあわせ | NGỮ HỢP | câu nhớ vần |
| 頭文字 | かしらもじ | ĐẦU VĂN TỰ | chữ cái đầu |
| 暗号化 | あんごうか | ÁM HIỆU HOÁ | mã hoá |
| 対称 | たいしょう | ĐỐI XỨNG | đối xứng |
| 非対称 | ひたいしょう | PHI ĐỐI XỨNG | bất đối xứng |
| 正規化 | せいきか | CHÍNH QUY HOÁ | chuẩn hoá |
| 表 | ひょう | BIỂU | bảng |
| 分割 | ぶんかつ | PHÂN CÁT | chia |
| 重複 | じゅうふく | TRỌNG PHỨC | trùng lặp |
| 手法 | しゅほう | THỦ PHÁP | kỹ thuật |
| 原子値 | げんしち | NGUYÊN TỬ TRỊ | giá trị nguyên tử |
| 部分関数従属 | ぶぶんかんすうじゅうぞく | BỘ PHẦN HÀM SỐ TÒNG THUỘC | phụ thuộc một phần |
| 推移関数従属 | すいいかんすうじゅうぞく | THÔI DI HÀM SỐ TÒNG THUỘC | phụ thuộc bắc cầu |
| 除去 | じょきょ | TRỪ KHỨ | loại bỏ |
| 例題 | れいだい | LỆ ĐỀ | ví dụ |
| 合格圏内 | ごうかくけんない | HỢP CÁCH KHUYÊN NỘI | vùng đỗ |
| ギリギリ | ぎりぎり | — | suýt soát |
| アドバイス | あどばいす | — | lời khuyên |
| 弱点 | じゃくてん | NHƯỢC ĐIỂM | điểm yếu |
| 国家資格 | こっかしかく | QUỐC GIA TƯ CÁCH | chứng chỉ quốc gia |
| 役立つ | やくだつ | DỊCH LẬP | có ích |
| 採用 | さいよう | THÁI DỤNG | tuyển dụng |
| 所得税 | しょとくぜい | SỞ ĐẮC THUẾ | thuế thu nhập |
| 減税 | げんぜい | GIẢM THUẾ | giảm thuế |
| 申込み | もうしこみ | THÂN VÀO | đăng ký |
| 試験会場 | しけんかいじょう | THÍ NGHIỆM HỘI TRƯỜNG | địa điểm thi |
| 受験者番号 | じゅけんしゃばんごう | THỌ NGHIỆM GIẢ PHIÊN HIỆU | số báo danh |
| 身分証明書 | みぶんしょうめいしょ | THÂN PHẬN CHỨNG MINH THƯ | CMND |
| 受験票 | じゅけんひょう | THỌ NGHIỆM PHIẾU | phiếu dự thi |
| 持ち込み | もちこみ | TRÌ VÀO | mang vào |
| 携帯 | けいたい | HỆ ĐỚI | điện thoại |
| 席番号 | せきばんごう | TỊCH PHIÊN HIỆU | số ghế |
| 休憩 | きゅうけい | HƯU KHẾ | giải lao |
| 終了 | しゅうりょう | CHUNG LIỄU | kết thúc |
| 離す | はなす | LY | rời, bỏ |
| 認定 | にんてい | NHẬN ĐỊNH | công nhận |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (821000012, 800000021, NULL, 'markdown_book', 'T12. Year 1 closure — Mai sang Osaka (1年経過)', '# Sách sinh viên Đại học Osaka · T12. Year 1 closure — Mai sang Osaka (1年経過)

> **Mục tiêu nhân vật:** Đại 22 tuổi, vừa qua sinh nhật 4/2027, kết thúc năm 1 ĐH Osaka. Học các mẫu hội thoại tiếng Nhật khép năm 1: mẫu câu cạn ly khai tiệc với cohort (`乾杯! 〜お疲れ様`), mẫu câu báo cáo thành tích năm học (`GPA 〜、〜に合格`), mẫu câu bàn lab tour với senpai (`〜ラボを狙うつもり`), mẫu câu mời tiệc mừng vợ sang (`祝賀会を開きませんか`), mẫu câu chào tạm biệt homestay khi chuyển ra apt riêng (`お世話になりました`), và mẫu câu đón vợ ở sân bay Kansai bằng tiếng Việt + giới thiệu căn nhà mới bằng tiếng Nhật.

---

## Bối cảnh

Cuối tháng 4 đầu tháng 5/2027 — kết thúc kỳ học năm nhất ngày 24/4. Đại 22 tuổi (sinh nhật 4/2027). Tổng kết: GPA 3.85/4.0 (top 5/101), AtCoder Green 925, FE PASS, Hack U Osaka top 7, 4 PR open source merged. Cohort: Yamato (Green 1180, FE pass), Aiko (Awwwards Honorable Mention, Figma cert), Lin Wei (top GPA 3.95, Cyan 1450), Rajesh (AWS Cloud Practitioner, thực tập 2 tuần Mercari). Mai sang Nhật 2/5/2027 theo visa 家族滞在. Đại chuyển ra căn hộ 2DK Senri-chuo ngày 30/4. Chương này tập trung mẫu câu tổng kết năm học với cohort, mẫu câu lên kế hoạch lab tour năm 2, và mẫu câu giao tiếp gia đình mới khi Mai sang.

---

## Tình huống 1 — Sushi izakaya Toyonaka · 25/4 thứ 7 19:00, cạn ly khai tiệc tổng kết năm nhất

*Bàn 5 đứa cohort. Bia, sashimi, edamame. Yamato cầm cốc đầu tiên.*

| Vai | Lời thoại |
|---|---|
| Yamato | (đứng dậy, cầm cốc) みなさん、<ruby>1年生<rt>いちねんせい</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>! お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>でした! <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Các cậu! Năm nhất đã kết thúc an toàn! Vất vả rồi! Cạn ly!)* |
| 5 đứa | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Aiko | <ruby>1年<rt>いちねん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>早<rt>はや</rt></ruby>かったね。<ruby>去年<rt>きょねん</rt></ruby>の<ruby>今頃<rt>いまごろ</rt></ruby>は<ruby>入学式<rt>にゅうがくしき</rt></ruby>だったのに。<br>*(Một năm trôi nhanh thật. Năm ngoái giờ này còn là lễ nhập học mà.)* |
| Lin Wei | (tiếng Anh) Year 1 was foundation. Year 2 mới là lúc chuyên sâu. Lab tour, intern, AP cert — <ruby>忙<rt>いそが</rt></ruby>しくなる。<br>*(Năm 1 là nền móng. Năm 2 mới chuyên sâu. Lab tour, thực tập, chứng chỉ AP — sẽ bận đấy.)* |
| Rajesh | (tiếng Anh xen JP) Looking back, từ SSW1 nhảy lên đại học は<ruby>正解<rt>せいかい</rt></ruby>だった。<br>*(Nhìn lại, nhảy từ SSW1 lên đại học là quyết định đúng.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>も。みんなのおかげで<ruby>1年<rt>いちねん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>れた。ありがとう。<br>*(Tớ cũng. Nhờ có mọi người mà tớ qua được năm 1. Cảm ơn các cậu.)* |

---

## Tình huống 2 — Sushi izakaya · 25/4 19:30, mỗi đứa báo cáo thành tích năm 1

| Vai | Lời thoại |
|---|---|
| Yamato | <ruby>俺<rt>おれ</rt></ruby>から。GPA 3.7、AtCoder Green 1180、FE<ruby>合格<rt>ごうかく</rt></ruby>、Hack Uトップ7。<ruby>夏<rt>なつ</rt></ruby>のAtCoder<ruby>合宿<rt>がっしゅく</rt></ruby>にも<ruby>参加<rt>さんか</rt></ruby>した。<br>*(Tớ trước. GPA 3.7, AtCoder Green 1180, đỗ FE, Hack U top 7. Tham gia trại hè AtCoder.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>はGPA 3.6。UI/UXコンペでAwwwardsのHonorable Mentionをもらった。あと、Figma<ruby>公式<rt>こうしき</rt></ruby><ruby>認定<rt>にんてい</rt></ruby>もゲット!<br>*(Mình GPA 3.6. Cuộc thi UI/UX được Awwwards Honorable Mention. Còn chứng nhận Figma chính thức nữa!)* |
| Lin Wei | (tiếng Anh xen JP) GPA 3.95 — top 1。AtCoder Cyan 1450。FE 95%。React に2つOSS PRマージ。<br>*(GPA 3.95 top 1. AtCoder Cyan 1450. FE 95%. 2 PR open source merge vào React.)* |
| Đại | Lin Wei、<ruby>本当<rt>ほんとう</rt></ruby>にすごい… <ruby>俺<rt>おれ</rt></ruby>はGPA 3.85、AtCoder Green 925、FE<ruby>合格<rt>ごうかく</rt></ruby>、Hack U<ruby>トップ7<rt>トップなな</rt></ruby>、OSS PR 4<ruby>件<rt>けん</rt></ruby>。あと、Maiと<ruby>結婚<rt>けっこん</rt></ruby>した!<br>*(Lin Wei giỏi thật… Tớ GPA 3.85, AtCoder Green 925, đỗ FE, Hack U top 7, 4 PR OSS. Và cưới Mai!)* |
| Rajesh | (tiếng Anh) GPA 3.5. AWS Cloud Practitioner cert. <ruby>2週間<rt>にしゅうかん</rt></ruby>Mercari Osaka でインターン<ruby>済<rt>ず</rt></ruby>み。<br>*(GPA 3.5. Chứng chỉ AWS Cloud Practitioner. Đã thực tập 2 tuần ở Mercari Osaka.)* |
| Yamato | みんな<ruby>違<rt>ちが</rt></ruby>うけど、それぞれ<ruby>強<rt>つよ</rt></ruby>い! <ruby>来年<rt>らいねん</rt></ruby>はもっと<ruby>多<rt>おお</rt></ruby>くなるな。<br>*(Mỗi đứa một hướng, đều mạnh cả! Năm sau còn nhiều thành tích hơn nữa.)* |

---

## Tình huống 3 — Sushi izakaya · 25/4 20:00, bàn lab tour roadmap năm 2

| Vai | Lời thoại |
|---|---|
| Yamato | <ruby>来年<rt>らいねん</rt></ruby>はWeb<ruby>技術<rt>ぎじゅつ</rt></ruby>＋DB＋OS＋ネットワーク＋モバイル<ruby>必修<rt>ひっしゅう</rt></ruby>だ。<ruby>3年<rt>さんねん</rt></ruby>からラボに<ruby>所属<rt>しょぞく</rt></ruby>するから、ラボ<ruby>見学<rt>けんがく</rt></ruby>は<ruby>2年<rt>にねん</rt></ruby><ruby>後期<rt>こうき</rt></ruby>。<br>*(Năm sau bắt buộc Web + DB + OS + Mạng + Mobile. Năm 3 vào lab nên lab tour làm vào hậu kỳ năm 2.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は<ruby>井上<rt>いのうえ</rt></ruby>ラボ — AI/NLPを<ruby>狙<rt>ねら</rt></ruby>うつもり。<ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じラボにいるから、<ruby>紹介<rt>しょうかい</rt></ruby>してもらえそう。<br>*(Tớ nhắm lab Inoue — AI/NLP. Anh Yamada cũng ở lab đó, anh hứa giới thiệu cho tớ.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>は<ruby>渡辺<rt>わたなべ</rt></ruby>ラボ、HCI/UI。UI/UXの<ruby>研究<rt>けんきゅう</rt></ruby>と<ruby>相性<rt>あいしょう</rt></ruby>がいい。<br>*(Mình lab Watanabe — HCI/UI. Hợp với hướng nghiên cứu UI/UX.)* |
| Lin Wei | (tiếng Anh) <ruby>俺<rt>おれ</rt></ruby>は<ruby>佐藤<rt>さとう</rt></ruby>ラボ — Distributed Systems。<ruby>目標<rt>もくひょう</rt></ruby>はGoogle Tokyo SRE。<br>*(Tớ lab Sato — Hệ phân tán. Mục tiêu vị trí SRE Google Tokyo.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>は<ruby>鈴木<rt>すずき</rt></ruby>ラボ — アルゴリズム＋ゲーム<ruby>理論<rt>りろん</rt></ruby>。<ruby>競技<rt>きょうぎ</rt></ruby>プロの<ruby>背景<rt>はいけい</rt></ruby>と<ruby>合<rt>あ</rt></ruby>うからな。<br>*(Tớ lab Suzuki — Thuật toán và Lý thuyết trò chơi. Hợp với nền tảng lập trình thi đấu.)* |
| Rajesh | (tiếng Anh) Murakami Lab — Cloud / DevOps。AWS<ruby>方向<rt>ほうこう</rt></ruby>で。<br>*(Lab Murakami — Cloud / DevOps. Theo hướng AWS.)* |
| Đại | <ruby>5人<rt>ごにん</rt></ruby>、5つ<ruby>違<rt>ちが</rt></ruby>うラボ。みんなで<ruby>情報<rt>じょうほう</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>すれば、5<ruby>倍<rt>ばい</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>になるね。<br>*(5 đứa 5 lab khác nhau. Cùng trao đổi thông tin thì kiến thức tăng gấp 5.)* |

---

## Tình huống 4 — Sushi izakaya · 25/4 20:30, Đại mời mọi người tiệc mừng Mai sang

| Vai | Lời thoại |
|---|---|
| Đại | みんな、<ruby>大事<rt>だいじ</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせ。<ruby>来週<rt>らいしゅう</rt></ruby>5<ruby>月<rt>がつ</rt></ruby>2<ruby>日<rt>にち</rt></ruby>、Maiが<ruby>関空<rt>かんくう</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby>します!<br>*(Các cậu, tin quan trọng. Tuần sau ngày 2/5, Mai sẽ đến sân bay Kansai!)* |
| Aiko | <ruby>本当<rt>ほんとう</rt></ruby>? おめでとう! ご<ruby>結婚<rt>けっこん</rt></ruby><ruby>祝賀会<rt>しゅくがかい</rt></ruby><ruby>開<rt>ひら</rt></ruby>こうよ!<br>*(Thật à? Chúc mừng! Mở tiệc mừng cưới đi!)* |
| Yamato | 5<ruby>月<rt>がつ</rt></ruby><ruby>10日<rt>とおか</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>はどう? <ruby>千里中央<rt>せんりちゅうおう</rt></ruby>のレストラン<ruby>予約<rt>よやく</rt></ruby>するよ。<br>*(Tối ngày 10/5 nhé? Tớ đặt nhà hàng ở Senri-chuo cho.)* |
| Đại | ありがとう! Maiも<ruby>連<rt>つ</rt></ruby>れて<ruby>来<rt>き</rt></ruby>ます。みんなにマイを<ruby>紹介<rt>しょうかい</rt></ruby>したい。<br>*(Cảm ơn! Tớ dẫn Mai đến. Muốn giới thiệu Mai với các cậu.)* |
| Lin Wei | (tiếng Anh) <ruby>新<rt>あたら</rt></ruby>しい<ruby>家<rt>いえ</rt></ruby>はどこ?<br>*(Nhà mới ở đâu thế?)* |
| Đại | <ruby>千里中央<rt>せんりちゅうおう</rt></ruby>の2DK。<ruby>家賃<rt>やちん</rt></ruby>¥85,000。<ruby>大学<rt>だいがく</rt></ruby>まで15<ruby>分<rt>ふん</rt></ruby>。<br>*(2DK ở Senri-chuo. Tiền nhà ¥85.000. Tới trường 15 phút.)* |
| Yamato | ドミトリーが¥38,000 → アパート¥85,000か。<ruby>家計<rt>かけい</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Ký túc xá ¥38.000 lên căn hộ ¥85.000. Tài chính ổn không?)* |
| Đại | Maiの<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザだとアルバイト28<ruby>時間<rt>じかん</rt></ruby>OK。9<ruby>月<rt>がつ</rt></ruby>からYamato Language Schoolに<ruby>通<rt>かよ</rt></ruby>うよ。<br>*(Visa 家族滞在 của Mai cho phép làm thêm 28 tiếng. Tháng 9 sang sẽ học ở Yamato Language School.)* |

---

## Tình huống 5 — Nhà Tony và Yumi · 27/4 thứ 6 19:00, bữa cơm cuối ở ký túc xá trước khi chuyển

*Đại sang nhà Tony và Yumi ăn cơm — thông lệ thứ 6 hàng tuần từ sách 19. Lần cuối khi còn ở KTX.*

| Vai | Lời thoại |
|---|---|
| Yumi | (giọng Osaka) ダイ<ruby>君<rt>くん</rt></ruby>、マイさんが<ruby>来<rt>く</rt></ruby>るんやて! <ruby>千里中央<rt>せんりちゅうおう</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>すんやな。<br>*(Đại, vợ cháu sắp sang nhỉ! Chuyển sang Senri-chuo đúng không?)* |
| Đại | はい、<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>しは30<ruby>日<rt>にち</rt></ruby>です。1<ruby>年間<rt>ねんかん</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Vâng, cháu chuyển ngày 30. Một năm qua cháu được hai bác giúp đỡ rất nhiều ạ.)* |
| Tony | (giọng Osaka) <ruby>水臭<rt>みずくさ</rt></ruby>いこと<ruby>言<rt>い</rt></ruby>わんといて! <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>の<ruby>夕食<rt>ゆうしょく</rt></ruby>はちゃんと<ruby>来<rt>き</rt></ruby>てや! マイさんも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>連<rt>つ</rt></ruby>れて<ruby>来<rt>き</rt></ruby>てな!<br>*(Cháu đừng nói khách sáo thế! Tối thứ 6 hàng tuần vẫn phải sang ăn cơm đấy! Dẫn cả vợ sang cùng nhé!)* |
| Đại | はい! <ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>来<rt>き</rt></ruby>ます。Maiも<ruby>連<rt>つ</rt></ruby>れて<ruby>来<rt>き</rt></ruby>て、<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Vâng! Cháu nhất định sẽ đến. Cháu sẽ dẫn Mai sang và giới thiệu ạ.)* |
| Yumi | (đưa gói quà) これ、マイさんへの<ruby>結婚祝<rt>けっこんいわ</rt></ruby>い。<ruby>京都<rt>きょうと</rt></ruby><ruby>西陣<rt>にしじん</rt></ruby>の<ruby>帯<rt>おび</rt></ruby>よ。<ruby>着物<rt>きもの</rt></ruby>を<ruby>着<rt>き</rt></ruby>る<ruby>時<rt>とき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>ってね。<br>*(Đây, quà mừng cưới gửi Mai. Đai obi Nishijin Kyoto. Khi mặc kimono thì dùng nhé.)* |
| Đại | (xúc động cúi đầu) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます! Maiが<ruby>来<rt>き</rt></ruby>たら、まず<ruby>挨拶<rt>あいさつ</rt></ruby>に<ruby>連<rt>つ</rt></ruby>れて<ruby>来<rt>き</rt></ruby>ます。<br>*(Cháu thật sự cảm ơn hai bác! Khi Mai sang, cháu sẽ dẫn sang chào hai bác đầu tiên ạ.)* |
| Tony | (giọng Osaka) <ruby>楽<rt>たの</rt></ruby>しみにしとくで!<br>*(Bác chờ đấy!)* |

---

## Tình huống 6 — Phòng KTX 305 · 30/4 9:00 sáng, trả phòng và chào quản lý KTX

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>管理人<rt>かんりにん</rt></ruby>さん、おはようございます。305<ruby>号室<rt>ごうしつ</rt></ruby>の<ruby>退去<rt>たいきょ</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>きをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bác quản lý, chào buổi sáng. Cháu xin làm thủ tục trả phòng 305 ạ.)* |
| Quản lý KTX | (60t, đeo kính) おはよう、グエンさん。1<ruby>年間<rt>ねんかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>でした。お<ruby>部屋<rt>へや</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Chào em Nguyễn. Một năm vất vả rồi. Mình đi kiểm tra phòng nhé.)* |
| (Hai người lên phòng 305. Quản lý kiểm tra tường, sàn, bếp.) | |
| Quản lý | きれいに<ruby>使<rt>つか</rt></ruby>ってくれましたね。<ruby>敷金<rt>しききん</rt></ruby>は<ruby>全額返金<rt>ぜんがくへんきん</rt></ruby>します。<br>*(Em dùng sạch sẽ đấy. Tiền cọc sẽ hoàn lại 100%.)* |
| Đại | ありがとうございます。1<ruby>年間<rt>ねんかん</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Em cảm ơn bác. Một năm qua được bác giúp đỡ ạ.)* |
| Quản lý | <ruby>結婚<rt>けっこん</rt></ruby>されたんですよね? <ruby>奥<rt>おく</rt></ruby>さんとお<ruby>幸<rt>しあわ</rt></ruby>せに。<br>*(Em đã kết hôn nhỉ? Chúc em và vợ hạnh phúc.)* |
| Đại | はい、ありがとうございます!<br>*(Vâng, em cảm ơn bác!)* |

---

## Tình huống 7 — Căn hộ Senri-chuo · 30/4 14:00, cohort sang giúp khiêng đồ

*4 đứa Yamato + Aiko + Lin Wei + Rajesh sang giúp chuyển từ KTX Toyonaka sang Senri-chuo bằng xe thuê.*

| Vai | Lời thoại |
|---|---|
| Yamato | (đặt thùng sách xuống) このアパート、2DKで<ruby>広<rt>ひろ</rt></ruby>いな! ドミトリーは<ruby>狭<rt>せま</rt></ruby>かったもんな。<br>*(Căn 2DK này rộng thật! Phòng ký túc thì chật xỉu.)* |
| Đại | <ruby>2部屋<rt>ふたへや</rt></ruby>あるよ:<ruby>寝室<rt>しんしつ</rt></ruby>と<ruby>俺<rt>おれ</rt></ruby>の<ruby>書斎<rt>しょさい</rt></ruby>。Maiが<ruby>来<rt>き</rt></ruby>たら<ruby>共有<rt>きょうゆう</rt></ruby>スペースにする<ruby>予定<rt>よてい</rt></ruby>。<br>*(Có 2 phòng: phòng ngủ và phòng làm việc. Mai sang sẽ dùng chung làm chỗ học.)* |
| Aiko | UIの<ruby>世界<rt>せかい</rt></ruby>でも「personal space」って<ruby>大事<rt>だいじ</rt></ruby>って<ruby>言<rt>い</rt></ruby>うよね。<ruby>結婚生活<rt>けっこんせいかつ</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じだよ。<br>*(Giới UI cũng nói không gian riêng tư quan trọng. Cuộc sống vợ chồng cũng vậy.)* |
| Lin Wei | (tiếng Anh) Senri-chuo<ruby>良<rt>い</rt></ruby>いね。Mid-end suburb、Senri Mallまで<ruby>歩<rt>ある</rt></ruby>ける。<br>*(Senri-chuo tốt đấy. Ngoại ô tầm trung, đi bộ ra Senri Mall.)* |
| Rajesh | (tiếng Anh) Wifi setup<ruby>今夜<rt>こんや</rt></ruby>やらない? <ruby>俺<rt>おれ</rt></ruby>、Cybozu インターンの<ruby>時<rt>とき</rt></ruby>ISP<ruby>設定<rt>せってい</rt></ruby>やってた。<br>*(Setup wifi tối nay luôn không? Hồi thực tập Cybozu tớ làm setup ISP suốt.)* |
| Đại | ぜひ! eo<ruby>光<rt>ひかり</rt></ruby>の<ruby>機械<rt>きかい</rt></ruby>がもう<ruby>届<rt>とど</rt></ruby>いてる。<br>*(Nhờ cậu! Modem eo光 đã đến rồi.)* |
| Yamato | <ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>し<ruby>祝<rt>いわ</rt></ruby>いに、Mai<ruby>用<rt>よう</rt></ruby>の<ruby>歓迎<rt>かんげい</rt></ruby>カードを<ruby>作<rt>つく</rt></ruby>ろう!<br>*(Quà mừng tân gia: làm card chào mừng Mai đi!)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>がデザインする! Figma で<ruby>作<rt>つく</rt></ruby>って、A3 にプリント。<br>*(Mình thiết kế! Vẽ Figma rồi in A3.)* |

---

## Tình huống 8 — Căn hộ Senri-chuo · 30/4 22:00, gọi video báo Mai đã chuyển xong

| Vai | Lời thoại |
|---|---|
| Đại | (video call Zalo, tiếng Việt) Em ơi! Anh chuyển xong rồi. Để anh quay phòng cho em xem. |
| Mai | (tiếng Việt) Cho em xem với! |
| Đại | (lia camera) Đây là phòng khách kèm bếp — 12 mét vuông. Có nồi cơm, lò vi sóng, ấm đun nước. Anh để cốc cà phê em hay uống ở Việt Nam ngay đây. |
| Mai | (tiếng Việt) Anh chu đáo quá! |
| Đại | (lia tiếp) Đây phòng ngủ — anh để chăn ga Muji màu xanh nhạt em thích. Đây là bàn làm việc — chỗ này anh dành cho em học. |
| Mai | (tiếng Việt) Có khoá học tiếng Nhật cho em chưa anh? |
| Đại | (tiếng Việt) Có rồi. Yamato Language School ở Senri-chuo, đi bộ 10 phút từ nhà. Lớp N4 sáng — 9:00 đến 12:30. Một tháng ¥38.000. Anh đăng ký xong cho em rồi, em sang 9/2027 thì nhập học. |
| Mai | (tiếng Việt) Tuyệt vời! Hai ngày nữa em bay. Em đã đóng vali gần xong. |
| Đại | (tiếng Việt) Em nhớ cầm bản gốc giấy đăng ký kết hôn, hộ chiếu có visa, và 5 ảnh thẻ nhé. |
| Mai | (tiếng Việt) Vâng anh. Em cũng có quà cho hai bác Tony và Yumi — trà sen Hồ Tây và bộ ấm sứ Bát Tràng. |
| Đại | (tiếng Việt) Hai bác sẽ vui lắm. Ngủ ngon em nhé. |

---

## Tình huống 9 — Sân bay Kansai · 2/5/2027 13:50, chờ Mai ở sảnh đến

*Đại đến sớm 1 tiếng. Cầm bảng "Chào mừng Mai!" tự viết bằng giấy carton.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai, tiếng Việt) Em đã đáp xuống Kansai chưa? |
| Mai | (LINE, tiếng Việt) Đáp rồi anh! Em đang qua khai báo hải quan. 30 phút nữa em ra. |
| Đại | (LINE) Anh đang ở sảnh đến cửa B. Cầm bảng "Chào mừng Mai" đỏ. |
| (30 phút sau, Mai đẩy xe đẩy hành lý ra) | |
| Mai | (tiếng Việt, vẫy tay) Anh ơi!!! |
| Đại | (tiếng Việt, chạy lại ôm) Em! Em đến rồi! |
| Mai | (tiếng Việt) Em đặt chân tới Nhật rồi! Em là vợ của anh Đại ở Nhật rồi! |
| Đại | (tiếng Việt) Em mệt không? Bay 6 tiếng. |
| Mai | (tiếng Việt) Mệt một chút, nhưng nhìn thấy anh là khoẻ ngay. |
| Đại | (tiếng Việt) Tàu Nankai về Senri-chuo mất 90 phút. Anh đã mua sẵn IC Card cho em rồi. ICOCA, nạp ¥3000. |

---

## Tình huống 10 — Sảnh sân bay Kansai · 2/5 14:30, Mai chào tiếng Nhật lần đầu với người Nhật

*Trên đường ra tàu, Mai gặp một bà cụ Nhật bị lạc hỏi đường ga. Đại nhìn Mai.*

| Vai | Lời thoại |
|---|---|
| Bà cụ | すみません、ナンカイ<ruby>線<rt>せん</rt></ruby>のホームはどちらでしょうか?<br>*(Cô ơi, cho hỏi sân ga Nankai đi đường nào ạ?)* |
| Mai | (hơi luống cuống, nhìn Đại) えっと… すみません、<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かります。<br>*(Ơ… xin lỗi, cháu chỉ hiểu một chút tiếng Nhật ạ.)* |
| Đại | (đỡ lời) ナンカイ<ruby>線<rt>せん</rt></ruby>は<ruby>2階<rt>にかい</rt></ruby>です。あちらのエスカレーターを<ruby>上<rt>あ</rt></ruby>がって、<ruby>右側<rt>みぎがわ</rt></ruby>です。<br>*(Tuyến Nankai ở tầng 2 ạ. Lên thang cuốn đằng kia, rồi rẽ phải ạ.)* |
| Bà cụ | ありがとうございます! お<ruby>二人<rt>ふたり</rt></ruby>はカップル?<br>*(Cảm ơn các cháu! Hai cháu là cặp đôi à?)* |
| Đại | はい、<ruby>結婚<rt>けっこん</rt></ruby>したばかりです。<ruby>妻<rt>つま</rt></ruby>は<ruby>今日<rt>きょう</rt></ruby>ベトナムから<ruby>来<rt>き</rt></ruby>たんです。<br>*(Vâng, cháu mới cưới ạ. Vợ cháu hôm nay từ Việt Nam sang ạ.)* |
| Bà cụ | まあ! お<ruby>幸<rt>しあわ</rt></ruby>せにね! <ruby>奥<rt>おく</rt></ruby>さん、<ruby>日本語<rt>にほんご</rt></ruby>、これから<ruby>頑張<rt>がんば</rt></ruby>ってね。<br>*(Ôi! Chúc hai cháu hạnh phúc! Cô dâu, tiếng Nhật cố lên nhé.)* |
| Mai | (tự tin hơn một chút) はい、<ruby>頑張<rt>がんば</rt></ruby>ります。ありがとうございます。<br>*(Vâng, em sẽ cố gắng. Cháu cảm ơn cô ạ.)* |

---

## Tình huống 11 — Căn hộ Senri-chuo · 2/5 17:00, Mai bước vào nhà mới

| Vai | Lời thoại |
|---|---|
| Đại | (mở cửa) Em! Vào nhà! Anh để Slipper hồng cho em đây. |
| Mai | (tiếng Việt, bước vào) Ôi! Đẹp quá anh! Có cả thảm tatami này! |
| Đại | (tiếng Việt) Anh để dép trong giỏ kia. Em đặt vali xuống đi. Anh pha trà cho em. |
| Mai | (tiếng Việt, đứng trước tủ thấy dòng "Chào mừng Mai!") Anh dán cái này từ bao giờ thế? |
| Đại | (tiếng Việt) Từ ngày 17/1 anh về Osaka — ngay sau lễ cưới. Anh chờ em 4 tháng đấy. |
| Mai | (rưng rưng, tiếng Việt) Em… (ôm Đại) |
| Đại | (tiếng Việt) Aiko làm thêm tấm A3 chào mừng đẹp lắm. Để anh đưa em xem. |
| Mai | (tiếng Việt, nhận tấm A3) Cô bạn Aiko khéo tay quá! Có cả tên em viết bằng kanji nữa! "麻衣" — đẹp ghê. |
| Đại | (tiếng Việt) Aiko hỏi anh kanji của tên em — "麻衣" — Mai nghĩa là "vải gai mặc", hợp với bộ áo dài lụa. |
| Mai | (tiếng Việt) Thương các bạn của anh quá. Khi nào em được gặp các bạn? |
| Đại | (tiếng Việt) Tối 10/5 tiệc mừng cưới tại nhà hàng Senri. Em sẽ gặp đủ Yamato, Aiko, Lin Wei, Rajesh. |

---

## Tình huống 12 — Căn hộ Senri-chuo · 2/5 19:30, Mai gọi điện về VN báo bố mẹ đã sang an toàn

| Vai | Lời thoại |
|---|---|
| Mai | (gọi mẹ, tiếng Việt) Mẹ ơi! Con đã đến nhà anh Đại rồi! |
| Mẹ Mai | (qua loa ngoài, tiếng Việt) Tốt rồi con. Đại có ra đón con không? |
| Đại | (xen vào, tiếng Việt) Cháu chào cô! Cháu ra đón Mai từ 1 giờ sớm ạ. Mai đang ngồi ăn cơm Việt — cháu mua bún bò Huế ở chợ Việt khu Tsuruhashi mang về. |
| Mẹ Mai | (tiếng Việt) Đại chu đáo quá. Mai có ổn không cháu? |
| Đại | (tiếng Việt) Mai hơi mệt thôi cô, nhưng đã tắm rửa nghỉ ngơi rồi. Mai để máy đây ạ. |
| Mai | (tiếng Việt) Mẹ ơi! Nhà rộng lắm mẹ. Hai phòng. Có cả bàn riêng cho con học tiếng Nhật. Cô bạn người Nhật của anh Đại còn làm tấm thiệp viết "chào mừng" bằng cả tiếng Nhật lẫn tên kanji của con. |
| Mẹ Mai | (tiếng Việt) Yên tâm rồi. Con nghỉ đi, hôm sau gọi lại cho mẹ. Bố mẹ thương con. |
| Mai | (tiếng Việt) Vâng. Con yêu bố mẹ. |
| Đại | (tiếng Việt, vào lại) Cô ơi, cháu cũng xin chào cô. Hai vợ chồng cháu sẽ video call cả nhà mỗi cuối tuần ạ. |
| Mẹ Mai | (tiếng Việt) Vâng cháu. Cô tin Đại lắm. |

---

## Tình huống 13 — Căn hộ Senri-chuo · 2/5 23:00, đêm đầu tiên Mai ở Nhật — Đại viết nhật ký năm 1

*Mai đã ngủ. Đại ngồi bàn làm việc, mở laptop ghi nhật ký — đối thoại với chính mình qua chat thread riêng với Yamato.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Yamato) Yamato、Mai が<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby>した。<ruby>今<rt>いま</rt></ruby><ruby>寝<rt>ね</rt></ruby>てる。<br>*(Yamato, Mai đã sang bình an. Cô ấy đang ngủ.)* |
| Yamato | (LINE) よかった! 1<ruby>年生<rt>ねんせい</rt></ruby>のラストイベント<ruby>達成<rt>たっせい</rt></ruby>だな!<br>*(Tốt quá! Đã đạt event cuối năm 1!)* |
| Đại | (LINE) <ruby>1年<rt>いちねん</rt></ruby><ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ると、すごい<ruby>変化<rt>へんか</rt></ruby>だった。<ruby>去年<rt>きょねん</rt></ruby>の<ruby>今<rt>いま</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>はトニーさんの<ruby>家<rt>いえ</rt></ruby>に<ruby>初<rt>はじ</rt></ruby>めて<ruby>泊<rt>と</rt></ruby>まった<ruby>夜<rt>よる</rt></ruby>だった。<br>*(Nhìn lại 1 năm thay đổi kinh khủng. Năm ngoái giờ này là đêm đầu tiên ở nhà Tony.)* |
| Yamato | (LINE) <ruby>俺<rt>おれ</rt></ruby>たちも<ruby>同<rt>おな</rt></ruby>じ。<ruby>1年前<rt>いちねんまえ</rt></ruby>は<ruby>入学式<rt>にゅうがくしき</rt></ruby>でドキドキしてた。<ruby>今<rt>いま</rt></ruby>はFEに<ruby>合格<rt>ごうかく</rt></ruby>して、ラボツアー<ruby>計画中<rt>けいかくちゅう</rt></ruby>。<br>*(Bọn mình cũng vậy. 1 năm trước hồi hộp lễ nhập học. Giờ đỗ FE và đang lập kế hoạch lab tour.)* |
| Đại | (LINE) <ruby>2年生<rt>にねんせい</rt></ruby>、Web＋DB＋OS＋ネットワーク＋モバイル<ruby>頑張<rt>がんば</rt></ruby>ろうな。AP<ruby>応用情報<rt>おうようじょうほう</rt></ruby>も<ruby>挑戦<rt>ちょうせん</rt></ruby>するつもり。<br>*(Năm 2 cố lên Web + DB + OS + Mạng + Mobile. Tớ tính thi cả AP 応用情報.)* |
| Yamato | (LINE) <ruby>俺<rt>おれ</rt></ruby>も。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。おやすみ!<br>*(Tớ cũng. Cùng cố nhé. Chúc ngủ ngon!)* |
| Đại | (LINE) おやすみ!<br>*(Ngủ ngon!)* |

---

## Đọng lại chương 12

12 tháng năm nhất Đại học Osaka khép lại. Đại học mẫu câu cạn ly khai tiệc cohort (**「1年生無事終了! 乾杯!」**), mẫu câu báo cáo thành tích năm học (**「GPA 3.85、AtCoder Green 925、FE合格」**), mẫu câu bàn lab tour với cohort (**「井上ラボを狙うつもり」**), mẫu câu mời tiệc mừng cưới (**「結婚祝賀会を開きませんか」**), mẫu câu chào tạm biệt homestay khi rời KTX (**「1年間お世話になりました」**), và đặc biệt mẫu câu Mai chào tiếng Nhật lần đầu với bà cụ Nhật tại sân bay (**「少しだけ日本語が分かります」**). Lin Wei top khoa GPA 3.95, AtCoder Cyan 1450. 5 đứa cohort nhắm 5 lab khác nhau (Inoue AI/NLP cho Đại, Watanabe HCI cho Aiko, Sato distributed cho Lin Wei, Suzuki algorithm cho Yamato, Murakami cloud cho Rajesh). Tony và Yumi tặng đai obi Nishijin Kyoto cho Mai. Aiko làm card chào mừng A3 có tên kanji "麻衣". Cảnh cuối: Mai gọi mẹ báo đã sang an toàn, Đại nhắn LINE Yamato tổng kết 1 năm và lên kế hoạch năm 2 — cuộc đời mới chính thức bắt đầu ở căn hộ Senri-chuo.

> Từ vựng & mẫu câu chương này: 1年経過・お疲れ様でした・乾杯・GPA・AtCoder・FE合格・Hack U・OSS PR・Awwwards・Figma certified・AWS Cloud Practitioner・ラボ見学・井上ラボ・渡辺ラボ・佐藤ラボ・鈴木ラボ・村上ラボ・千里中央・2DK・家族滞在ビザ・Yamato Language School・西陣帯・退去手続き・敷金返金・結婚祝賀会を開きませんか・〜を狙うつもり・お世話になりました・少しだけ日本語が分かります・応用情報

## Bí quyết chương

- **Year 1 wrap clean với 5 thành tích metric khác nhau**: GPA, AtCoder, FE, OSS, hackathon — pattern realistic SV CS Osaka U.
- **Cohort 5-path year 2**: 5 đứa 5 lab khác nhau — không phải ai cũng làm AI/NLP. Aiko HCI, Lin Wei distributed, Yamato algorithm, Rajesh cloud.
- **「お世話になりました」 + 退去手続き**: Keigo chuẩn chuyển nhà ở Nhật — quản lý kiểm tra phòng, hoàn cọc 100% nếu sạch sẽ.
- **Mai sang Nhật + chào tiếng Nhật đầu tiên**: Tình huống bà cụ hỏi đường — Mai dùng được mẫu câu **「少しだけ日本語が分かります」** ngay ngày đầu. Đại đỡ lời nhưng Mai chủ động chào — pacing realistic.
- **Tên kanji "麻衣"**: Aiko đặt kanji cho Mai — chi tiết thật của vợ người Việt sang Nhật (chọn kanji cho tên Việt).
- **Tony và Yumi tradition tiếp tục**: Thứ 6 hàng tuần — Mai sẽ tham gia từ tuần tới. Bond xuyên series.
- **Khởi đầu sách 22**: Căn hộ Senri-chuo + Mai vào Yamato Language School N4 + lab tour 2nd half year 2.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 経過 | けいか | KINH QUÁ | trôi qua |
| 無事 | ぶじ | VÔ SỰ | bình an |
| 早い | はやい | TẢO | nhanh |
| 基礎 | きそ | CƠ SỞ | nền tảng |
| 合宿 | がっしゅく | HỢP TÚC | trại tập huấn |
| 公式認定 | こうしきにんてい | CÔNG THỨC NHẬN ĐỊNH | chứng nhận chính thức |
| 件 | けん | KIỆN | vụ, cái |
| 必修 | ひっしゅう | TẤT TU | bắt buộc |
| 所属 | しょぞく | SỞ THUỘC | thuộc về |
| 狙う | ねらう | THƯ | nhắm |
| 紹介 | しょうかい | THIỆU GIỚI | giới thiệu |
| 相性 | あいしょう | TƯƠNG TÍNH | hợp |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 背景 | はいけい | BỐI CẢNH | bối cảnh |
| 知識 | ちしき | TRI THỨC | kiến thức |
| 倍 | ばい | BỘI | lần, gấp |
| 知らせ | しらせ | TRI | tin |
| 開く | ひらく | KHAI | mở |
| 寝室 | しんしつ | TẨM THẤT | phòng ngủ |
| 書斎 | しょさい | THƯ TRAI | phòng làm việc |
| 共有 | きょうよう | CỘNG HỮU | chia sẻ |
| 世界 | せかい | THẾ GIỚI | thế giới |
| 結婚生活 | けっこんせいかつ | KẾT HÔN SINH HOẠT | đời sống vợ chồng |
| 中端 | ちゅうたん | TRUNG ĐOAN | tầm trung |
| 郊外 | こうがい | GIAO NGOẠI | ngoại ô |
| 設定 | せってい | THIẾT ĐỊNH | cấu hình |
| 機械 | きかい | CƠ GIỚI | máy móc |
| 届く | とどく | GIỚI | đến nơi |
| 引っ越し祝い | ひっこしいわい | DẪN VIỆT CHÚC | mừng tân gia |
| 水臭い | みずくさい | THỦY XÚ | khách sáo |
| 結婚祝い | けっこんいわい | KẾT HÔN CHÚC | quà mừng cưới |
| 管理人 | かんりにん | QUẢN LÝ NHÂN | quản lý |
| 退去 | たいきょ | THỐI KHỨ | trả phòng |
| 手続き | てつづき | THỦ TỤC | thủ tục |
| 敷金 | しききん | PHU KIM | tiền cọc |
| 全額返金 | ぜんがくへんきん | TOÀN NGẠCH PHẢN KIM | hoàn 100% |
| 妻 | つま | THÊ | vợ |
| 振り返る | ふりかえる | CHẤN | nhìn lại |
| 変化 | へんか | BIẾN HOÁ | thay đổi |
| 泊まる | とまる | BÁC | qua đêm |
| 応用情報 | おうようじょうほう | ỨNG DỤNG TÌNH BÁO | chứng chỉ AP |
| 計画中 | けいかくちゅう | KẾ HOẠCH TRUNG | đang lên kế hoạch |
| 達成 | たっせい | ĐẠT THÀNH | đạt được |
| 共通 | きょうつう | CỘNG THÔNG | chung |
| 連れる | つれる | LIÊN | dẫn theo |
| 家計 | かけい | GIA KẾ | tài chính gia đình |
| 通う | かよう | THÔNG | đi học, đi lại |
| 卒業 | そつぎょう | TỐT NGHIỆP | tốt nghiệp |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
