-- Hizashi LITE book SQL — Đại học Y3
-- curriculum_id = 800000023  (book_seq=23)
-- nguồn: books/23_dai_daigaku_year3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000023, 'N3', 'markdown_book', 'Du học', 'Đại học Y3', 'Bộ sách Hizashi — Đại học Y3', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000001, 800000023, NULL, 'markdown_book', 'T1. Ngày đầu vào lab Inoue (井上研究室入室)', '# Sách sinh viên Đại học Osaka · T1. Ngày đầu vào lab Inoue (井上研究室入室)

> **Mục tiêu nhân vật:** Đại 23 tuổi, năm 3 ĐH Osaka, ngày đầu vào lab NLP của Inoue-sensei. Học các mẫu hội thoại tiếng Nhật của tân thành viên lab: chào hỏi sensei lần đầu, tự giới thiệu kiểu lab (出身・興味分野), xin chỉ giáo sempai (ご指導お願いします), trình bày hướng nghiên cứu trong 1on1 với sensei, hỏi lại khi chưa hiểu thuật ngữ học thuật (〜というのは), đặt câu hỏi trong seminar (質問させていただきます).

---

## Bối cảnh

Tháng 4 năm 2028. Đại 23t, năm 3 khoa Thông tin — Khoa học Cơ sở, ĐH Osaka. Hôm nay 1/4 là ngày đầu chính thức vào 井上研究室 (lab NLP/AI). Lab 12 thành viên: Inoue教授 + 渡辺准教授 + 4 D (tiến sĩ) + 6 M (thạc sĩ) + 8 B (cử nhân). Mentor là Yamada-senpai (M1). Mai 5 tháng thai ở Toyonaka. Chương này tập trung các mẫu câu chào hỏi lab lần đầu + cách trình bày hướng nghiên cứu với sensei.

---

## Tình huống 1 — Cửa lab B棟 5F · 8:55, gõ cửa lần đầu

*Đại đứng trước cửa kính có dán "井上研究室 — Natural Language Processing Lab". Mặc áo sơ mi trắng, cầm USB và sổ tay mới.*

| Vai | Lời thoại |
|---|---|
| Đại | (hít sâu, gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>新<rt>あたら</rt></ruby>しく<ruby>配属<rt>はいぞく</rt></ruby>になりました、<ruby>学部<rt>がくぶ</rt></ruby>3<ruby>年<rt>ねん</rt></ruby>のグエン・ダイです。<br>*(Em xin phép. Em là Nguyễn Đại, cử nhân năm 3 vừa được phân về lab ạ.)* |
| Yamada | (mở cửa) おお、ダイくん!<ruby>待<rt>ま</rt></ruby>ってたよ。<ruby>山田<rt>やまだ</rt></ruby>です。<ruby>修士<rt>しゅうし</rt></ruby>1<ruby>年<rt>ねん</rt></ruby>でメンターを<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Ồ, Đại đây à! Đang đợi đấy. Tớ là Yamada, thạc sĩ năm 1, làm mentor cho cậu.)* |
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>からお<ruby>世話<rt>せわ</rt></ruby>になります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Yamada, từ hôm nay em xin được nhờ anh ạ. Mong anh chỉ giáo.)* |
| Yamada | こちらこそ。まず<ruby>荷物<rt>にもつ</rt></ruby>、あの<ruby>机<rt>つくえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いていいよ。<ruby>窓側<rt>まどがわ</rt></ruby>の<ruby>右<rt>みぎ</rt></ruby>から2つ<ruby>目<rt>め</rt></ruby>がダイくんの<ruby>席<rt>せき</rt></ruby>。<br>*(Tớ cũng vậy. Trước hết để đồ ở bàn kia. Bàn thứ 2 từ phải bên cửa sổ là chỗ của Đại.)* |
| Đại | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh.)* |

---

## Tình huống 2 — Phòng lab chính · 9:00, chào Inoue-sensei lần đầu

*Inoue-sensei (50t, kính gọng đen) ngồi ở bàn riêng cuối phòng. Yamada dẫn Đại sang.*

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>新入<rt>しんにゅう</rt></ruby>のグエン・ダイくんです。<br>*(Thầy, đây là Nguyễn Đại, tân thành viên ạ.)* |
| Đại | (cúi 30 độ) <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、はじめまして。ベトナムから<ruby>参<rt>まい</rt></ruby>りました、グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>当研究室<rt>とうけんきゅうしつ</rt></ruby>でお<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Thưa thầy Inoue, em xin chào lần đầu. Em đến từ Việt Nam, tên là Nguyễn Đại. Từ hôm nay em xin được nhờ phòng nghiên cứu của thầy. Em mong được chỉ giáo ạ.)* |
| Inoue | ダイくんね。<ruby>履歴書<rt>りれきしょ</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>しました。<ruby>日本語学校<rt>にほんごがっこう</rt></ruby>2<ruby>年<rt>ねん</rt></ruby>、<ruby>学部<rt>がくぶ</rt></ruby>2<ruby>年<rt>ねん</rt></ruby>、よく<ruby>頑張<rt>がんば</rt></ruby>ってきましたね。<br>*(Đại nhỉ. Tôi đã xem hồ sơ. 2 năm trường tiếng + 2 năm cử nhân, cậu cố gắng lắm.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。まだまだ<ruby>未熟<rt>みじゅく</rt></ruby>ですので、ご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Dạ em cảm ơn thầy quá khen. Em còn non lắm, mong thầy chỉ bảo ạ.)* |
| Inoue | <ruby>本日<rt>ほんじつ</rt></ruby>10<ruby>時<rt>じ</rt></ruby>から<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>説明会<rt>せつめいかい</rt></ruby>、14<ruby>時<rt>じ</rt></ruby>から1on1の<ruby>面談<rt>めんだん</rt></ruby>です。それまでは<ruby>山田<rt>やまだ</rt></ruby>くんに<ruby>案内<rt>あんない</rt></ruby>してもらってください。<br>*(Hôm nay 10 giờ có buổi giới thiệu lab, 14 giờ là 1on1. Trước đó để Yamada hướng dẫn cậu.)* |
| Đại | はい、かしこまりました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Lounge lab · 9:15, Yamada giới thiệu cohort

*Lounge nhỏ có máy pha cà phê. 3 sinh viên Nhật năm 3 (cùng cohort) đã đến.*

| Vai | Lời thoại |
|---|---|
| Yamada | みんな、<ruby>紹介<rt>しょうかい</rt></ruby>するよ。ダイくん、ベトナムからの<ruby>留学生<rt>りゅうがくせい</rt></ruby>。<br>*(Mọi người, giới thiệu nhé. Đây là Đại, du học sinh từ Việt Nam.)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、はじめまして。グエン・ダイです。<ruby>出身<rt>しゅっしん</rt></ruby>はベトナムのハノイです。<ruby>興味<rt>きょうみ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>は<ruby>多言語<rt>たげんご</rt></ruby>NLPです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, em chào lần đầu. Em là Nguyễn Đại. Quê em ở Hà Nội, Việt Nam. Lĩnh vực em quan tâm là NLP đa ngôn ngữ. Mong mọi người chỉ giáo.)* |
| Suzuki (B3) | <ruby>鈴木<rt>すずき</rt></ruby>です!<ruby>興味<rt>きょうみ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>は<ruby>要約<rt>ようやく</rt></ruby>です。ダイくん、<ruby>日本語<rt>にほんご</rt></ruby>めっちゃ<ruby>上手<rt>じょうず</rt></ruby>やん!<br>*(Tớ là Suzuki! Tớ thích tóm tắt văn bản. Đại nói tiếng Nhật giỏi quá!)* |
| Đại | いえいえ、まだまだです。<br>*(Đâu có, em còn kém lắm.)* |
| Takahashi (B3) | <ruby>高橋<rt>たかはし</rt></ruby>です。<ruby>対話<rt>たいわ</rt></ruby>システムに<ruby>興味<rt>きょうみ</rt></ruby>があります。<ruby>同<rt>おな</rt></ruby>じcohortなので<ruby>仲良<rt>なかよ</rt></ruby>くしてね。<br>*(Tớ là Takahashi. Tớ quan tâm hệ thống hội thoại. Cùng cohort thì thân thiết nhé.)* |
| Kobayashi (B3) | <ruby>小林<rt>こばやし</rt></ruby>です。よろしく!<br>*(Tớ là Kobayashi. Cùng cố gắng nhé!)* |

---

## Tình huống 4 — Phòng lab chính · 10:00, sensei giới thiệu cấu trúc lab

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>新入生<rt>しんにゅうせい</rt></ruby>4<ruby>名<rt>めい</rt></ruby>、ようこそ<ruby>当研究室<rt>とうけんきゅうしつ</rt></ruby>へ。これから<ruby>研究室<rt>けんきゅうしつ</rt></ruby>の<ruby>構成<rt>こうせい</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Chào mừng 4 tân sinh viên đến với phòng nghiên cứu. Bây giờ tôi giới thiệu cấu trúc lab.)* |
| Inoue | <ruby>教員<rt>きょういん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>と<ruby>渡辺<rt>わたなべ</rt></ruby><ruby>准教授<rt>じゅんきょうじゅ</rt></ruby>。<ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>はコード<ruby>生成<rt>せいせい</rt></ruby>が<ruby>専門<rt>せんもん</rt></ruby>です。<br>*(Giảng viên gồm tôi và phó giáo sư Watanabe. Thầy Watanabe chuyên sinh mã.)* |
| Inoue | <ruby>博士課程<rt>はかせかてい</rt></ruby>4<ruby>名<rt>めい</rt></ruby>:Linくん(<ruby>多言語<rt>たげんご</rt></ruby>)、<ruby>佐藤<rt>さとう</rt></ruby>くん(<ruby>要約<rt>ようやく</rt></ruby>)、Kimくん(<ruby>対話<rt>たいわ</rt></ruby>)、Wangくん(コード<ruby>生成<rt>せいせい</rt></ruby>)。<br>*(Tiến sĩ 4 người: Lin (đa ngôn ngữ), Sato (tóm tắt), Kim (hội thoại), Wang (sinh mã).)* |
| Inoue | <ruby>修士課程<rt>しゅうしかてい</rt></ruby>6<ruby>名<rt>めい</rt></ruby>:<ruby>山田<rt>やまだ</rt></ruby>くん(ダイくんのメンター、<ruby>多言語<rt>たげんご</rt></ruby>)<ruby>他<rt>ほか</rt></ruby>5<ruby>名<rt>めい</rt></ruby>。<br>*(Thạc sĩ 6 người: Yamada (mentor của Đại, hướng đa ngôn ngữ) + 5 người khác.)* |
| Đại | (giơ tay) <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>質問<rt>しつもん</rt></ruby>させていただいてもよろしいでしょうか?<br>*(Em xin phép, em hỏi một câu được không ạ?)* |
| Inoue | どうぞ。<br>*(Hỏi đi.)* |
| Đại | コアタイムは<ruby>何時<rt>なんじ</rt></ruby>から<ruby>何時<rt>なんじ</rt></ruby>までですか?<br>*(Giờ "core time" có mặt ở lab là từ mấy giờ đến mấy giờ ạ?)* |
| Inoue | コアタイムは10<ruby>時<rt>じ</rt></ruby>から16<ruby>時<rt>じ</rt></ruby>です。それ<ruby>以外<rt>いがい</rt></ruby>はリモートでも<ruby>構<rt>かま</rt></ruby>いません。<br>*(Core time là 10 giờ đến 16 giờ. Ngoài ra làm remote cũng được.)* |

---

## Tình huống 5 — Bàn của Đại · 11:00, Yamada chỉ git/slack/docker lab

| Vai | Lời thoại |
|---|---|
| Yamada | じゃあ<ruby>環境<rt>かんきょう</rt></ruby>セットアップを<ruby>始<rt>はじ</rt></ruby>めるよ。まず lab の Slack <ruby>招待<rt>しょうたい</rt></ruby>リンク、これだ。<br>*(Bây giờ bắt đầu thiết lập môi trường. Đầu tiên là link mời Slack của lab đây.)* |
| Đại | はい、<ruby>登録<rt>とうろく</rt></ruby>しました。チャンネルは<ruby>何<rt>なに</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ればいいですか?<br>*(Vâng, em đăng ký xong. Em vào những kênh nào ạ?)* |
| Yamada | `#general`、`#paper-reading`、`#multilingual-team`の3つは<ruby>必須<rt>ひっす</rt></ruby>だ。<ruby>個別<rt>こべつ</rt></ruby>のは<ruby>後<rt>あと</rt></ruby>で。<br>*(`#general`, `#paper-reading`, `#multilingual-team` là bắt buộc. Kênh riêng thì tính sau.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>次<rt>つぎ</rt></ruby>はGitですか?<br>*(Em rõ rồi. Tiếp theo là Git ạ?)* |
| Yamada | そう。lab の GitHub Organization に<ruby>招待<rt>しょうたい</rt></ruby>するから、ユーザー<ruby>名<rt>めい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えて。あとGPUサーバーのSSH<ruby>鍵<rt>かぎ</rt></ruby>も<ruby>登録<rt>とうろく</rt></ruby>するよ。<br>*(Ừ. Tớ sẽ mời cậu vào GitHub Organization của lab, đưa username đi. SSH key vào server GPU cũng đăng ký luôn.)* |
| Đại | あの、「コアタイム」というのは、<ruby>毎日<rt>まいにち</rt></ruby><ruby>必<rt>かなら</rt></ruby>ずラボに<ruby>来<rt>く</rt></ruby>ることですか?<br>*(Anh ơi, "core time" có phải nghĩa là ngày nào cũng phải đến lab không ạ?)* |
| Yamada | あ、いや。<ruby>原則<rt>げんそく</rt></ruby><ruby>在室<rt>ざいしつ</rt></ruby>だけど、<ruby>事前<rt>じぜん</rt></ruby>にSlackで<ruby>連絡<rt>れんらく</rt></ruby>すればリモートでも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>実験<rt>じっけん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>とかね。<br>*(À không. Về nguyên tắc là có mặt, nhưng báo Slack trước thì làm remote cũng OK. Ví dụ lúc đang chạy thực nghiệm.)* |

---

## Tình huống 6 — Lounge · 12:00, ăn trưa với cohort

*Bốn người B3 cùng đi convenience store mua bento, ăn ở lounge.*

| Vai | Lời thoại |
|---|---|
| Suzuki | ダイくん、お<ruby>箸<rt>はし</rt></ruby><ruby>使<rt>つか</rt></ruby>えるん?<br>*(Đại biết dùng đũa không?)* |
| Đại | はい、ベトナムも<ruby>箸文化<rt>はしぶんか</rt></ruby>ですよ。フォーとか、お<ruby>箸<rt>はし</rt></ruby>で<ruby>食<rt>た</rt></ruby>べます。<br>*(Có chứ, Việt Nam cũng dùng đũa mà. Phở chẳng hạn, em ăn bằng đũa.)* |
| Takahashi | へえ、フォー!<ruby>大阪<rt>おおさか</rt></ruby>でベトナム<ruby>料理<rt>りょうり</rt></ruby>の<ruby>店<rt>みせ</rt></ruby>あったら<ruby>連<rt>つ</rt></ruby>れてって!<br>*(Ồ phở! Có quán Việt Nam ở Osaka thì dẫn tụi tớ đi nhé!)* |
| Đại | <ruby>難波<rt>なんば</rt></ruby>に<ruby>美味<rt>おい</rt></ruby>しい<ruby>店<rt>みせ</rt></ruby>がありますよ。<ruby>今度<rt>こんど</rt></ruby>みんなで<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Ở Namba có quán ngon đấy. Lần tới đi cả nhóm nhé.)* |
| Kobayashi | <ruby>井上先生<rt>いのうえせんせい</rt></ruby>って、<ruby>厳<rt>きび</rt></ruby>しい?<br>*(Thầy Inoue có nghiêm không?)* |
| Suzuki | <ruby>論文<rt>ろんぶん</rt></ruby><ruby>読<rt>よ</rt></ruby>むのには<ruby>厳<rt>きび</rt></ruby>しいって<ruby>聞<rt>き</rt></ruby>いたで。でも<ruby>人柄<rt>ひとがら</rt></ruby>は<ruby>優<rt>やさ</rt></ruby>しいらしい。<br>*(Nghe nói thầy nghiêm khi đọc paper. Nhưng tính cách thì hiền.)* |
| Đại | (gật) <ruby>朝<rt>あさ</rt></ruby>お<ruby>会<rt>あ</rt></ruby>いした<ruby>印象<rt>いんしょう</rt></ruby>はとても<ruby>穏<rt>おだ</rt></ruby>やかでした。<br>*(Sáng gặp thầy thì ấn tượng rất ôn hoà.)* |

---

## Tình huống 7 — Phòng họp nhỏ · 14:00, 1on1 với Inoue về hướng nghiên cứu

*Đại bước vào phòng họp số 1. Inoue-sensei đã có laptop mở sẵn.*

| Vai | Lời thoại |
|---|---|
| Inoue | ダイくん、どうぞお<ruby>座<rt>すわ</rt></ruby>りください。<ruby>本題<rt>ほんだい</rt></ruby>は<ruby>研究<rt>けんきゅう</rt></ruby>テーマの<ruby>相談<rt>そうだん</rt></ruby>です。<ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>に「ベトナム<ruby>人向<rt>じんむ</rt></ruby>けの<ruby>日本語学習支援<rt>にほんごがくしゅうしえん</rt></ruby>システム」と<ruby>書<rt>か</rt></ruby>いてあったね。<br>*(Đại, mời ngồi. Việc chính là bàn về đề tài nghiên cứu. Trong đơn nguyện vọng cậu có viết "hệ thống hỗ trợ học tiếng Nhật cho người Việt" phải không?)* |
| Đại | はい、<ruby>仮称<rt>かしょう</rt></ruby>「Hizashi」というシステムを<ruby>構想<rt>こうそう</rt></ruby>しています。ベトナム<ruby>人学習者<rt>じんがくしゅうしゃ</rt></ruby>の<ruby>誤<rt>あやま</rt></ruby>りパターンを<ruby>自動<rt>じどう</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>し、AIで<ruby>個別<rt>こべつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>するものです。<br>*(Vâng, em đang phác thảo hệ thống tạm gọi là "Hizashi". Tự động phát hiện mẫu lỗi của người học Việt và dạy cá nhân hoá bằng AI ạ.)* |
| Inoue | おもしろい。<ruby>研究<rt>けんきゅう</rt></ruby>テーマとしては<ruby>大<rt>おお</rt></ruby>きく3つの<ruby>方向性<rt>ほうこうせい</rt></ruby>が<ruby>考<rt>かんが</rt></ruby>えられます。<br>*(Hay đấy. Đặt vào nghiên cứu thì có 3 hướng lớn.)* |
| Inoue | 1つ<ruby>目<rt>め</rt></ruby>:<ruby>誤訳検出<rt>ごやくけんしゅつ</rt></ruby>。2つ<ruby>目<rt>め</rt></ruby>:LLMによるAIチューター。3つ<ruby>目<rt>め</rt></ruby>:<ruby>適応的学習<rt>てきおうてきがくしゅう</rt></ruby>システム。<br>*(Một: phát hiện lỗi dịch. Hai: AI gia sư bằng LLM. Ba: hệ thống học thích ứng.)* |
| Đại | あの、「<ruby>適応的学習<rt>てきおうてきがくしゅう</rt></ruby>」というのは、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Thầy ơi, "học thích ứng" cụ thể là gì ạ, thầy giảng thêm cho em được không?)* |
| Inoue | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>能力<rt>のうりょく</rt></ruby>と<ruby>進度<rt>しんど</rt></ruby>に<ruby>応<rt>おう</rt></ruby>じて、<ruby>問題<rt>もんだい</rt></ruby>の<ruby>難易度<rt>なんいど</rt></ruby>や<ruby>順序<rt>じゅんじょ</rt></ruby>を<ruby>動的<rt>どうてき</rt></ruby>に<ruby>変<rt>か</rt></ruby>えるシステムです。Item Response Theory(IRT)が<ruby>基礎理論<rt>きそりろん</rt></ruby>になります。<br>*(Câu hỏi tốt. Là hệ thống thay đổi độ khó và thứ tự câu hỏi linh hoạt theo năng lực và tiến độ của người học. Lý thuyết nền là Item Response Theory (IRT).)* |
| Đại | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。<ruby>個人的<rt>こじんてき</rt></ruby>には2と3を<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせたいと<ruby>考<rt>かんが</rt></ruby>えています。<ruby>適応的学習機能付<rt>てきおうてきがくしゅうきのうつ</rt></ruby>きAIチューターという<ruby>形<rt>かたち</rt></ruby>で。<br>*(Em hiểu rồi ạ. Cá nhân em muốn kết hợp hướng 2 và 3 — trợ lý AI có chức năng học thích ứng.)* |
| Inoue | <ruby>賛成<rt>さんせい</rt></ruby>です。<ruby>山田<rt>やまだ</rt></ruby>くんも<ruby>多言語<rt>たげんご</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>だから、<ruby>共同研究<rt>きょうどうけんきゅう</rt></ruby>もできますよ。<br>*(Tôi tán thành. Yamada cũng theo hướng đa ngôn ngữ, hai người có thể nghiên cứu chung.)* |

---

## Tình huống 8 — Phòng họp nhỏ · 14:30, sensei giao lộ trình đọc 5 paper

| Vai | Lời thoại |
|---|---|
| Inoue | まず、<ruby>基礎<rt>きそ</rt></ruby><ruby>固<rt>かた</rt></ruby>めの<ruby>論文<rt>ろんぶん</rt></ruby>5<ruby>本<rt>ほん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでください。1ヶ<ruby>月以内<rt>げついない</rt></ruby>に。<br>*(Đầu tiên, đọc 5 bài paper nền tảng. Trong vòng 1 tháng.)* |
| Inoue | Attention Is All You Need、BERT、GPT-3、Multilingual BERT、XLM-Rの5<ruby>本<rt>ほん</rt></ruby>です。<br>*(Năm bài: Attention Is All You Need, BERT, GPT-3, Multilingual BERT, XLM-R.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>読書<rt>どくしょ</rt></ruby>ノートはどのような<ruby>形式<rt>けいしき</rt></ruby>で<ruby>提出<rt>ていしゅつ</rt></ruby>すればよろしいでしょうか?<br>*(Vâng, em rõ ạ. Note đọc paper em nộp theo định dạng nào ạ?)* |
| Inoue | Notionでテンプレートを<ruby>共有<rt>きょうゆう</rt></ruby>しています。<ruby>山田<rt>やまだ</rt></ruby>くんから<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。<ruby>毎週金曜<rt>まいしゅうきんよう</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>で<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Tôi chia sẻ template trên Notion rồi. Hỏi Yamada lấy. Thứ Sáu hàng tuần sẽ rà soát tiến độ.)* |
| Đại | かしこまりました。<ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Em rõ ạ. Em sẽ dốc sức làm.)* |
| Inoue | あ、それから — <ruby>奥<rt>おく</rt></ruby>さんが<ruby>妊娠中<rt>にんしんちゅう</rt></ruby>と<ruby>聞<rt>き</rt></ruby>きました。<ruby>体調<rt>たいちょう</rt></ruby><ruby>面<rt>めん</rt></ruby>で<ruby>何<rt>なに</rt></ruby>かあれば<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>相談<rt>そうだん</rt></ruby>してください。<br>*(À, còn nữa — tôi nghe nói vợ cậu đang mang thai. Có chuyện gì về sức khoẻ thì đừng ngại, cứ trao đổi.)* |
| Đại | (cảm động) ありがとうございます。お<ruby>気遣<rt>きづか</rt></ruby>い、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Em cảm ơn thầy. Em rất biết ơn sự quan tâm của thầy.)* |

---

## Tình huống 9 — Bàn Đại · 15:00, Yamada đưa template Notion + paper list

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>面談<rt>めんだん</rt></ruby>どうだった?<br>*(1on1 thế nào?)* |
| Đại | <ruby>研究<rt>けんきゅう</rt></ruby>テーマも<ruby>決<rt>き</rt></ruby>まりました。<ruby>適応的学習<rt>てきおうてきがくしゅう</rt></ruby>+AIチューターです。<br>*(Đã chốt được đề tài. Học thích ứng + AI gia sư.)* |
| Yamada | おお、いいやん!じゃあ<ruby>俺<rt>おれ</rt></ruby>と<ruby>方向<rt>ほうこう</rt></ruby>がほぼ<ruby>同<rt>おな</rt></ruby>じだ。Notionテンプレ、これだ。<ruby>論文<rt>ろんぶん</rt></ruby>5<ruby>本<rt>ほん</rt></ruby>のリンクも<ruby>送<rt>おく</rt></ruby>るね。<br>*(Ồ tốt đấy! Vậy hướng gần như giống tớ. Template Notion đây. Tớ gửi link 5 bài paper luôn.)* |
| Đại | <ruby>感謝<rt>かんしゃ</rt></ruby>します。<ruby>最初<rt>さいしょ</rt></ruby>はどれから<ruby>読<rt>よ</rt></ruby>むのがおすすめですか?<br>*(Em cảm ơn anh. Đầu tiên nên đọc bài nào trước ạ?)* |
| Yamada | Attention Is All You Needからだね。<ruby>全<rt>すべ</rt></ruby>ての<ruby>基礎<rt>きそ</rt></ruby>。<ruby>数式<rt>すうしき</rt></ruby><ruby>多<rt>おお</rt></ruby>いから、<ruby>分<rt>わ</rt></ruby>からないところは<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いて。<br>*(Bắt đầu từ "Attention Is All You Need". Nền tảng cho mọi thứ. Nhiều công thức, chỗ nào không hiểu cứ hỏi tớ.)* |
| Đại | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh.)* |

---

## Tình huống 10 — Thứ Sáu đầu · 7/4 14:00, seminar tuần đầu

*Phòng seminar lớn, 12 thành viên ngồi quanh bàn chữ U. Yamada lên bảng đầu tiên.*

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>します。「Multilingual BERT for Cross-lingual Transfer Learning」、Devlin <ruby>他<rt>ほか</rt></ruby>、2019<ruby>年<rt>ねん</rt></ruby>です。<br>*(Em xin giới thiệu paper hôm nay. "Multilingual BERT for Cross-lingual Transfer Learning", Devlin et al., 2019.)* |
| Yamada | <ruby>要約<rt>ようやく</rt></ruby>すると、104<ruby>言語<rt>げんご</rt></ruby>が<ruby>共通<rt>きょうつう</rt></ruby>のembedding<ruby>空間<rt>くうかん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>し、ゼロショット<ruby>転移<rt>てんい</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>が<ruby>可能<rt>かのう</rt></ruby>になります。<br>*(Tóm tắt: 104 ngôn ngữ chia sẻ không gian embedding chung, có thể chuyển giao zero-shot.)* |
| Đại | (giơ tay) <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>質問<rt>しつもん</rt></ruby>させていただきます。ベトナム<ruby>語<rt>ご</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>まれていますか?<br>*(Em xin phép hỏi. Tiếng Việt có được bao gồm không ạ?)* |
| Yamada | <ruby>含<rt>ふく</rt></ruby>まれているよ。ただし<ruby>低<rt>てい</rt></ruby>リソース<ruby>言語<rt>げんご</rt></ruby>に<ruby>分類<rt>ぶんるい</rt></ruby>される。XLM-Rの<ruby>方<rt>ほう</rt></ruby>がベトナム<ruby>語<rt>ご</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>いね。<br>*(Có. Nhưng được xếp vào ngôn ngữ ít tài nguyên. XLM-R mạnh hơn với tiếng Việt.)* |
| Đại | ありがとうございます。<ruby>追加<rt>ついか</rt></ruby>で<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>低<rt>てい</rt></ruby>リソース<ruby>言語<rt>げんご</rt></ruby>の<ruby>定義<rt>ていぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>でしょうか?<br>*(Em cảm ơn. Em xin phép hỏi thêm — định nghĩa "ngôn ngữ ít tài nguyên" là gì ạ?)* |
| Inoue | (đáp thay) Wikipedia<ruby>記事数<rt>きじすう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ない、または<ruby>並列<rt>へいれつ</rt></ruby>コーパスが<ruby>限<rt>かぎ</rt></ruby>られている<ruby>言語<rt>げんご</rt></ruby>です。ベトナム<ruby>語<rt>ご</rt></ruby>は<ruby>中<rt>ちゅう</rt></ruby>リソースという<ruby>分類<rt>ぶんるい</rt></ruby>もあります。<br>*(Là ngôn ngữ có ít bài Wikipedia hoặc parallel corpus hạn chế. Tiếng Việt cũng có phân loại là "trung tài nguyên".)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em học hỏi được nhiều ạ. Em cảm ơn thầy.)* |

---

## Tình huống 11 — Hành lang sau seminar · 17:00, sempai khen + rủ uống

| Vai | Lời thoại |
|---|---|
| Lin (D2) | (gặp Đại ở hành lang) ダイくん、<ruby>初日<rt>しょにち</rt></ruby>から<ruby>質問<rt>しつもん</rt></ruby>するなんて、<ruby>勇気<rt>ゆうき</rt></ruby>あるね!<br>*(Đại, ngày đầu mà đã hỏi câu, gan đấy!)* |
| Đại | (cúi nhẹ) <ruby>緊張<rt>きんちょう</rt></ruby>しましたが、<ruby>分<rt>わ</rt></ruby>からないままだとよくないと<ruby>思<rt>おも</rt></ruby>いまして。<br>*(Em hồi hộp nhưng nghĩ để không hiểu thì không tốt ạ.)* |
| Lin | いい<ruby>姿勢<rt>しせい</rt></ruby>だ。<ruby>今夜<rt>こんや</rt></ruby><ruby>新人歓迎<rt>しんじんかんげい</rt></ruby><ruby>飲<rt>の</rt></ruby>み<ruby>会<rt>かい</rt></ruby>あるけど、<ruby>来<rt>こ</rt></ruby>られる?<br>*(Thái độ tốt đấy. Tối nay có buổi tiệc chào tân thành viên, cậu đến được không?)* |
| Đại | あの、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>妻<rt>つま</rt></ruby>が<ruby>妊娠中<rt>にんしんちゅう</rt></ruby>でして、<ruby>今夜<rt>こんや</rt></ruby>は<ruby>早<rt>はや</rt></ruby>めに<ruby>帰<rt>かえ</rt></ruby>らせていただきたいのですが…<br>*(Dạ, em xin lỗi, vợ em đang mang thai nên tối nay em xin phép về sớm ạ...)* |
| Lin | あ、もちろん!<ruby>家族<rt>かぞく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>で。<ruby>次<rt>つぎ</rt></ruby>の<ruby>機会<rt>きかい</rt></ruby>ね。<br>*(Ồ tất nhiên rồi! Gia đình ưu tiên trước. Lần sau nhé.)* |
| Đại | はい、ご<ruby>理解<rt>りかい</rt></ruby>ありがとうございます。<br>*(Vâng, em cảm ơn anh thông cảm ạ.)* |

---

## Tình huống 12 — Trên xe điện Hankyu về Toyonaka · 18:00, gọi Mai

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, gọi Mai) Em ơi! Anh xong ngày đầu rồi! Đang trên tàu về. |
| Mai | (tiếng Việt) Anh ơi! Sao rồi? Thầy có nghiêm không? |
| Đại | (tiếng Việt) Thầy Inoue hiền lắm em. Còn hỏi em về việc em mang thai, bảo có gì cứ trao đổi. |
| Mai | (tiếng Việt) Trời ơi, thầy tốt quá! Còn anh mentor? |
| Đại | (tiếng Việt) Anh Yamada cùng hướng đa ngôn ngữ với anh. Còn rủ cohort đi ăn phở Namba. |
| Mai | (tiếng Việt) Mệt không anh? Hôm nay em hơi đau lưng. |
| Đại | (tiếng Việt) Em ráng nghỉ đi. Anh về sẽ bóp lưng cho em. Anh cũng từ chối tiệc tối nay rồi, về sớm với em. |
| Mai | (tiếng Việt) Cảm ơn anh. Mai nay siêu âm 5 tháng, bé Hana được 26cm rồi. |
| Đại | (tiếng Việt) Mầm Hizashi nảy ngày đầu lab, mầm Hana lớn trong bụng em. Hai mầm cùng lớn em ạ. |
| Mai | (tiếng Việt) Anh nói vần quá! Mau về đi. |

---

## Đọng lại chương 1

Ngày 1/4/2028, Đại chính thức vào **井上研究室**. Học được nhiều mẫu câu lab quan trọng: **「本日よりお世話になります」** (chào nhập lab), **「ご指導のほどよろしくお願いいたします」** (xin chỉ giáo sensei), **「質問させていただいてもよろしいでしょうか」** (xin phép đặt câu hỏi trang trọng), **「〜というのは、具体的に教えていただけますか」** (hỏi lại khi chưa hiểu thuật ngữ), **「申し訳ありませんが、〜させていただきたいのですが」** (xin phép tế nhị). Inoue-sensei chốt hướng nghiên cứu: **適応的学習機能付きAIチューター** — mầm Hizashi chính thức được gieo. Yamada-senpai (M1, hướng đa ngôn ngữ) làm mentor. 5 paper foundational phải đọc xong trong 1 tháng. Tối về tàu Hankyu, Đại gọi Mai — vợ 5 tháng thai báo bé Hana 26cm. Hai mầm cùng lớn.

> Từ vựng & mẫu câu chương này: 配属・お世話になります・ご指導のほどよろしくお願いいたします・恐縮です・かしこまりました・質問させていただきます・〜というのは・コアタイム・適応的学習・Item Response Theory・自然言語処理・多言語NLP・低リソース言語・ゼロショット転移・embedding空間・ファインチューニング・申し訳ありませんが・お気遣い感謝いたします

## Bí quyết chương

- **Ngày đầu lab = bậc keigo cao nhất**: 「本日よりお世話になります」「ご指導のほどよろしくお願いいたします」 — câu chuẩn cho mọi tân thành viên Nhật.
- **「〜というのは」** là vũ khí cứu mạng: Khi sensei dùng thuật ngữ chưa hiểu, đừng gật cho qua. Hỏi `「適応的学習というのは、具体的に教えていただけますか」` — sensei sẽ thấy bạn nghiêm túc.
- **Từ chối tiệc lab khéo**: 「申し訳ありませんが、妻が妊娠中でして〜帰らせていただきたいのですが」 — đưa lý do gia đình, đặc biệt với sempai/sensei Nhật, sẽ được chấp nhận. KHÔNG được im lặng trốn về.
- **Cohort B3 = tài sản 2 năm**: 3 sinh viên cùng năm sẽ học, ăn, làm thí nghiệm cùng nhau đến tốt nghiệp. Đầu tư quan hệ ngay ngày 1.
- **Inoue-sensei quan tâm gia đình**: Văn hoá lab tốt = sensei hỏi đời sống cá nhân của thành viên. Trả lời chân thành, không cần che giấu.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 失礼 | しつれい | THẤT LỄ | Thất lễ, xin phép |
| 配属 | はいぞく | PHỐI THUỘC | Được phân về (bộ phận) |
| 学部 | がくぶ | HỌC BỘ | Bậc cử nhân, khoa |
| 修士 | しゅうし | TU SĨ | Thạc sĩ |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 本日 | ほんじつ | BẢN NHẬT | Hôm nay (trang trọng) |
| 世話 | せわ | THẾ THOẠI | Sự chăm sóc, giúp đỡ |
| 当研究室 | とうけんきゅうしつ | ĐƯƠNG NGHIÊN CỨU THẤT | Phòng nghiên cứu của chúng tôi |
| 何卒 | なにとぞ | HÀ TỐT | Mong (trang trọng) |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | Sơ yếu lý lịch |
| 拝見 | はいけん | BÁI KIẾN | Xem (khiêm nhường) |
| 恐縮 | きょうしゅく | KHỦNG SÚC | Cảm thấy không xứng đáng |
| 未熟 | みじゅく | VỊ THỤC | Chưa chín, còn non |
| 指導 | しどう | CHỈ ĐẠO | Chỉ bảo, hướng dẫn |
| 説明会 | せつめいかい | THUYẾT MINH HỘI | Buổi giới thiệu |
| 面談 | めんだん | DIỆN ĐÀM | Buổi gặp 1-1 |
| 案内 | あんない | ÁN NỘI | Hướng dẫn, dẫn dắt |
| 准教授 | じゅんきょうじゅ | CHUẨN GIÁO THỤ | Phó giáo sư |
| 博士課程 | はかせかてい | BÁC SĨ KHÓA TRÌNH | Chương trình tiến sĩ |
| 修士課程 | しゅうしかてい | TU SĨ KHÓA TRÌNH | Chương trình thạc sĩ |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán, xuất thân |
| 興味分野 | きょうみぶんや | HƯNG VỊ PHÂN DÃ | Lĩnh vực quan tâm |
| 多言語 | たげんご | ĐA NGÔN NGỮ | Đa ngôn ngữ |
| 要約 | ようやく | YẾU ƯỚC | Tóm tắt |
| 対話 | たいわ | ĐỐI THOẠI | Hội thoại |
| 新入生 | しんにゅうせい | TÂN NHẬP SINH | Tân sinh viên |
| 構成 | こうせい | CẤU THÀNH | Cấu trúc |
| 教員 | きょういん | GIÁO VIÊN | Giảng viên |
| 専門 | せんもん | CHUYÊN MÔN | Chuyên môn |
| 生成 | せいせい | SINH THÀNH | Sinh, tạo ra |
| 質問 | しつもん | CHẤT VẤN | Câu hỏi |
| 以外 | いがい | DĨ NGOẠI | Ngoài ra |
| 環境 | かんきょう | HOÀN CẢNH | Môi trường |
| 招待 | しょうたい | CHIÊU ĐÃI | Lời mời |
| 登録 | とうろく | ĐĂNG LỤC | Đăng ký |
| 必須 | ひっす | TẤT TU | Bắt buộc |
| 個別 | こべつ | CÁ BIỆT | Riêng lẻ |
| 承知 | しょうち | THỪA TRI | Hiểu, đồng ý |
| 原則 | げんそく | NGUYÊN TẮC | Nguyên tắc |
| 在室 | ざいしつ | TẠI THẤT | Có mặt trong phòng |
| 事前 | じぜん | SỰ TIỀN | Trước, từ trước |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 実験 | じっけん | THỰC NGHIỆM | Thực nghiệm |
| 印象 | いんしょう | ẤN TƯỢNG | Ấn tượng |
| 穏やか | おだやか | ÔN | Ôn hoà |
| 本題 | ほんだい | BẢN ĐỀ | Chủ đề chính |
| 相談 | そうだん | TƯƠNG ĐÀM | Trao đổi, tư vấn |
| 志望理由書 | しぼうりゆうしょ | CHÍ VỌNG LÝ DO THƯ | Đơn nguyện vọng |
| 仮称 | かしょう | GIẢ XƯNG | Tên gọi tạm |
| 構想 | こうそう | CẤU TƯỞNG | Phác thảo, hình dung |
| 学習者 | がくしゅうしゃ | HỌC TẬP GIẢ | Người học |
| 誤り | あやまり | NGỘ | Lỗi sai |
| 検出 | けんしゅつ | KIỂM XUẤT | Phát hiện |
| 方向性 | ほうこうせい | PHƯƠNG HƯỚNG TÍNH | Hướng đi |
| 適応的学習 | てきおうてきがくしゅう | THÍCH ỨNG ĐÍCH HỌC TẬP | Học thích ứng |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | Cụ thể |
| 能力 | のうりょく | NĂNG LỰC | Năng lực |
| 進度 | しんど | TIẾN ĐỘ | Tiến độ |
| 難易度 | なんいど | NẠN DỊ ĐỘ | Độ khó dễ |
| 順序 | じゅんじょ | THUẬN TỰ | Thứ tự |
| 動的 | どうてき | ĐỘNG ĐÍCH | Linh hoạt, động |
| 基礎理論 | きそりろん | CƠ SỞ LÝ LUẬN | Lý thuyết nền |
| 共同研究 | きょうどうけんきゅう | CỘNG ĐỒNG NGHIÊN CỨU | Nghiên cứu chung |
| 形式 | けいしき | HÌNH THỨC | Định dạng |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ |
| 進捗 | しんちょく | TIẾN CHẮC | Tiến độ |
| 確認 | かくにん | XÁC NHẬN | Kiểm tra, xác nhận |
| 全力 | ぜんりょく | TOÀN LỰC | Dốc sức |
| 妊娠中 | にんしんちゅう | NHẬM THÂN TRUNG | Đang mang thai |
| 体調 | たいちょう | THỂ ĐIỀU | Tình trạng sức khoẻ |
| 遠慮 | えんりょ | VIỄN LỰ | Ngại, e dè |
| 気遣い | きづかい | KHÍ KHIỂN | Sự quan tâm |
| 感謝 | かんしゃ | CẢM TẠ | Cảm tạ |
| 数式 | すうしき | SỐ THỨC | Công thức toán |
| 紹介 | しょうかい | THIỆU GIỚI | Giới thiệu |
| 言語 | げんご | NGÔN NGỮ | Ngôn ngữ |
| 共通 | きょうつう | CỘNG THÔNG | Chung |
| 空間 | くうかん | KHÔNG GIAN | Không gian |
| 転移 | てんい | CHUYỂN DI | Chuyển giao |
| 含む | ふくむ | HÀM | Bao gồm |
| 低リソース言語 | ていリソースげんご | ĐÊ ... NGÔN NGỮ | Ngôn ngữ ít tài nguyên |
| 定義 | ていぎ | ĐỊNH NGHĨA | Định nghĩa |
| 記事数 | きじすう | KÝ SỰ SỐ | Số bài viết |
| 並列 | へいれつ | TỊNH LIỆT | Song song |
| 分類 | ぶんるい | PHÂN LOẠI | Phân loại |
| 勇気 | ゆうき | DŨNG KHÍ | Dũng khí |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Hồi hộp |
| 姿勢 | しせい | TƯ THẾ | Thái độ |
| 新人歓迎 | しんじんかんげい | TÂN NHÂN HOAN NGHÊNH | Chào mừng người mới |
| 優先 | ゆうせん | ƯU TIÊN | Ưu tiên |
| 理解 | りかい | LÝ GIẢI | Hiểu, thông cảm |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000002, 800000023, NULL, 'markdown_book', 'T2. Học PyTorch cơ bản với Yamada-senpai (PyTorch入門)', '# Sách sinh viên Đại học Osaka · T2. Học PyTorch cơ bản với Yamada-senpai (PyTorch入門)

> **Mục tiêu nhân vật:** Đại 23t, tháng 4-5/2028, vào lab Inoue được 1 tháng. Học các mẫu hội thoại với senpai trong 1on1 kỹ thuật: hỏi cách cài thư viện (〜のインストール方法を教えていただけますか), báo lỗi terminal với senpai (エラーが出てしまったのですが), xin review code (コードを見ていただけますか), trình bày kết quả thực nghiệm trước senpai/sensei (結果をご報告いたします), thông báo nghỉ vì việc gia đình (家庭の都合で〜), và pattern keigo viết tin nhắn Slack/email lab.

---

## Bối cảnh

Tháng 4-5/2028. Đại đã đọc xong Attention Is All You Need + BERT paper. Giờ Yamada-senpai dạy implementation: PyTorch tensor → autograd → first NN (MNIST). Laptop Apple M2 dùng MPS thay CUDA. Mai 6 tháng thai, bắt đầu sắm đồ baby với cô Yumi. Chương này tập trung các mẫu câu kỹ thuật khi học senpai 1on1 + báo cáo kết quả lab.

---

## Tình huống 1 — Bàn Đại · 8/4 10:00, Yamada chỉ cài PyTorch

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、おはようございます。PyTorchのインストール<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Anh Yamada, chào buổi sáng. Anh chỉ em cách cài PyTorch được không ạ?)* |
| Yamada | おはよう。MacBookやったよね、M2やっけ?<br>*(Chào. Cậu xài MacBook đúng không, M2 nhỉ?)* |
| Đại | はい、M2です。<br>*(Vâng, M2 ạ.)* |
| Yamada | じゃあ`pip install torch torchvision torchaudio`で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。MPSバックエンドがそのまま<ruby>使<rt>つか</rt></ruby>えるはずだ。<br>*(Vậy `pip install torch torchvision torchaudio` là OK. MPS backend dùng được luôn.)* |
| Đại | (gõ terminal) `pip install torch torchvision torchaudio` ... <ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(... Đã xong ạ.)* |
| Đại | (Python REPL) `import torch; print(torch.backends.mps.is_available())` → `True`. <ruby>動<rt>うご</rt></ruby>きました!<br>*(Chạy được rồi!)* |
| Yamada | OK。MPSはMetal Performance Shadersの<ruby>略<rt>りゃく</rt></ruby>で、AppleシリコンのGPU<ruby>加速<rt>かそく</rt></ruby>機能だ。CUDAの<ruby>代<rt>か</rt></ruby>わりに<ruby>使<rt>つか</rt></ruby>うやつ。<br>*(OK. MPS viết tắt của Metal Performance Shaders, là tính năng tăng tốc GPU của Apple Silicon. Dùng thay CUDA.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em học hỏi được nhiều. Em cảm ơn anh.)* |

---

## Tình huống 2 — Whiteboard lab · 8/4 11:00, Yamada dạy tensor

*Yamada vẽ tensor 3D trên bảng, Đại ngồi gõ live code.*

| Vai | Lời thoại |
|---|---|
| Yamada | tensorは<ruby>多次元配列<rt>たじげんはいれつ</rt></ruby>のこと。NumPyと<ruby>互換性<rt>ごかんせい</rt></ruby>があってGPUにも<ruby>対応<rt>たいおう</rt></ruby>している。<br>*(Tensor là mảng nhiều chiều. Tương thích NumPy và chạy được trên GPU.)* |
| Đại | NumPyの`np.array`とほぼ<ruby>同<rt>おな</rt></ruby>じイメージですね?<br>*(Hình dung gần giống `np.array` của NumPy đúng không ạ?)* |
| Yamada | そう。ただし<ruby>違<rt>ちが</rt></ruby>いが3つある。1)autograd <ruby>機能<rt>きのう</rt></ruby>、2)GPU<ruby>対応<rt>たいおう</rt></ruby>、3)dtype<ruby>厳密<rt>げんみつ</rt></ruby>。<br>*(Ừ. Nhưng có 3 khác biệt: 1) tính năng autograd, 2) chạy GPU, 3) dtype nghiêm ngặt.)* |
| Đại | (code) <br>```python<br>x = torch.tensor([[1,2],[3,4]], dtype=torch.float32)<br>y = torch.tensor([[5,6],[7,8]], dtype=torch.float32)<br>print(x + y)   # element-wise<br>print(x @ y)   # matmul<br>``` |
| Đại | <ruby>結果<rt>けっか</rt></ruby>:<br>```<br>tensor([[ 6.,  8.], [10., 12.]])<br>tensor([[19., 22.], [43., 50.]])<br>``` |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>。じゃあshape変換やってみよう。`x.view(4)`、`x.reshape(1,4)`の<ruby>違<rt>ちが</rt></ruby>いを<ruby>調<rt>しら</rt></ruby>べてみて。<br>*(Hoàn hảo. Thử biến đổi shape đi. Tìm hiểu khác biệt giữa `x.view(4)` và `x.reshape(1,4)`.)* |
| Đại | はい、<ruby>調<rt>しら</rt></ruby>べてみます。<br>*(Vâng, em tra cứu ạ.)* |

---

## Tình huống 3 — Bàn Đại · 8/4 13:30, Đại bị lỗi shape mismatch

*Đại đang code thì terminal đỏ rực. Yamada đi ngang.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、エラーが<ruby>出<rt>で</rt></ruby>てしまったのですが、<ruby>少<rt>すこ</rt></ruby>し<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Anh Yamada, em xin lỗi, em bị lỗi, anh xem giúp em được không ạ?)* |
| Yamada | OK、エラーメッセージ<ruby>見<rt>み</rt></ruby>せて。<br>*(OK, đưa thông báo lỗi đây xem.)* |
| Đại | (chỉ màn hình) `RuntimeError: mat1 and mat2 shapes cannot be multiplied (3x4 and 5x2)` です。<br>*(`RuntimeError: mat1 and mat2 shapes cannot be multiplied (3x4 and 5x2)`)* |
| Yamada | あー、matmulの<ruby>形<rt>かたち</rt></ruby>が<ruby>合<rt>あ</rt></ruby>っていない。3×4 と 5×2 は<ruby>掛<rt>か</rt></ruby>けられない。<ruby>内側<rt>うちがわ</rt></ruby>の<ruby>次元<rt>じげん</rt></ruby>を<ruby>揃<rt>そろ</rt></ruby>えないと。<br>*(À, shape matmul không khớp. 3×4 với 5×2 không nhân được. Phải khớp chiều bên trong.)* |
| Đại | あ、<ruby>内側<rt>うちがわ</rt></ruby>が4と5なので<ruby>合<rt>あ</rt></ruby>わないんですね。<br>*(À, chiều trong là 4 với 5 nên không khớp ạ.)* |
| Yamada | そう。`.shape`を<ruby>確認<rt>かくにん</rt></ruby>するクセをつけて。print debug や`assert x.shape == (...)`を<ruby>挟<rt>はさ</rt></ruby>むといいよ。<br>*(Đúng. Tạo thói quen check `.shape`. Chèn print debug hay `assert x.shape == (...)` cũng tốt.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>修正<rt>しゅうせい</rt></ruby>してみます。<br>*(Em rõ rồi ạ. Em sửa ngay.)* |

---

## Tình huống 4 — Bàn Đại · 8/4 15:00, autograd intuition

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>次<rt>つぎ</rt></ruby>はautograd、<ruby>自動微分<rt>じどうびぶん</rt></ruby>だ。バックプロパゲーションの<ruby>核心<rt>かくしん</rt></ruby>。<br>*(Tiếp theo là autograd, vi phân tự động. Cốt lõi của lan truyền ngược.)* |
| Đại | あの、「<ruby>自動微分<rt>じどうびぶん</rt></ruby>」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>自動<rt>じどう</rt></ruby>なのですか?<br>*(Anh ơi, "vi phân tự động" cụ thể cái gì tự động ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>。<ruby>計算<rt>けいさん</rt></ruby>グラフを<ruby>構築<rt>こうちく</rt></ruby>しながら、<ruby>勾配<rt>こうばい</rt></ruby>(gradient)を<ruby>自動<rt>じどう</rt></ruby>で<ruby>計算<rt>けいさん</rt></ruby>してくれる。<ruby>手<rt>て</rt></ruby>で<ruby>微分<rt>びぶん</rt></ruby><ruby>式<rt>しき</rt></ruby>を<ruby>書<rt>か</rt></ruby>かなくていい。<br>*(Câu hỏi hay. Vừa xây dựng đồ thị tính toán vừa tự tính gradient. Không phải viết tay công thức vi phân.)* |
| Đại | (code) <br>```python<br>x = torch.tensor(2.0, requires_grad=True)<br>y = x ** 3 + 2 * x   # y = x³ + 2x<br>y.backward()<br>print(x.grad)        # dy/dx = 3x² + 2 = 14 at x=2<br>``` |
| Đại | <ruby>結果<rt>けっか</rt></ruby>:`tensor(14.)`。<ruby>手計算<rt>てけいさん</rt></ruby>と<ruby>合<rt>あ</rt></ruby>いました!<br>*(Kết quả 14, khớp với tính tay!)* |
| Yamada | <ruby>素晴<rt>すば</rt></ruby>らしい。これがgradient descentの<ruby>基礎<rt>きそ</rt></ruby>だ。あとは<ruby>大規模化<rt>だいきぼか</rt></ruby>するだけ。<br>*(Tuyệt vời. Đây là nền tảng gradient descent. Còn lại chỉ là phóng đại quy mô.)* |

---

## Tình huống 5 — Slack lab · 10/4 9:30, báo nghỉ chiều vì siêu âm

| Vai | Lời thoại |
|---|---|
| Đại | (Slack `#general`) <ruby>皆<rt>みな</rt></ruby>さま、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>15:00より<ruby>家庭<rt>かてい</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>(<ruby>妻<rt>つま</rt></ruby>の<ruby>定期検診<rt>ていきけんしん</rt></ruby><ruby>同伴<rt>どうはん</rt></ruby>)で<ruby>早退<rt>そうたい</rt></ruby>させていただきます。ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。グエン・ダイ<br>*(Mọi người, chào buổi sáng. Hôm nay từ 15:00 em xin phép về sớm vì việc gia đình (đi cùng vợ khám định kỳ). Em xin lỗi vì làm phiền mọi người. Đại.)* |
| Yamada | (reply) <ruby>了解<rt>りょうかい</rt></ruby>!<ruby>奥<rt>おく</rt></ruby>さんに<ruby>気<rt>き</rt></ruby>をつけてって<ruby>伝<rt>つた</rt></ruby>えて!<br>*(Rõ! Nhắn vợ giữ gìn nhé!)* |
| Inoue | (reply) お<ruby>大事<rt>だいじ</rt></ruby>に。<br>*(Giữ gìn nhé.)* |
| Lin | (reply emoji 🤰👶) |
| Đại | (reply) <ruby>皆<rt>みな</rt></ruby>さま、ありがとうございます。<br>*(Mọi người, em cảm ơn ạ.)* |

---

## Tình huống 6 — Phòng họp nhỏ · 15/4 10:00, weekly 1on1 với Yamada

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Báo cáo tiến độ tuần này nào.)* |
| Đại | はい、<ruby>今週<rt>こんしゅう</rt></ruby>はtensorとautogradを<ruby>習得<rt>しゅうとく</rt></ruby>し、<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>線形回帰<rt>せんけいかいき</rt></ruby>モデルを<ruby>実装<rt>じっそう</rt></ruby>しました。<br>*(Vâng, tuần này em học tensor và autograd, đã implement mô hình linear regression đơn giản.)* |
| Yamada | コードを<ruby>見<rt>み</rt></ruby>せてくれる?<br>*(Cho xem code đi?)* |
| Đại | こちらです。(mở screen share GitHub)<br>*(Đây ạ.)* |
| Yamada | (đọc) ふむふむ ... `.train()`と`.eval()`の<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えがないね。<ruby>線形回帰<rt>せんけいかいき</rt></ruby>では<ruby>影響<rt>えいきょう</rt></ruby>ないけど、Dropout/BatchNormを<ruby>使<rt>つか</rt></ruby>うときは<ruby>必須<rt>ひっす</rt></ruby>だから<ruby>今<rt>いま</rt></ruby>からクセつけて。<br>*(Để xem ... Không có switch giữa `.train()` và `.eval()`. Linear regression thì không ảnh hưởng, nhưng dùng Dropout/BatchNorm thì bắt buộc, nên tạo thói quen từ giờ.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ bổ sung.)* |
| Yamada | あとは`optimizer.zero_grad()`を<ruby>忘<rt>わす</rt></ruby>れずに。これ<ruby>忘<rt>わす</rt></ruby>れると<ruby>勾配<rt>こうばい</rt></ruby>が<ruby>累積<rt>るいせき</rt></ruby>して<ruby>学習<rt>がくしゅう</rt></ruby>が<ruby>壊<rt>こわ</rt></ruby>れる。<br>*(Còn nữa, đừng quên `optimizer.zero_grad()`. Quên là gradient tích luỹ, training hỏng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>来週<rt>らいしゅう</rt></ruby>はMNIST<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Em rõ. Tuần tới em thử MNIST ạ.)* |
| Yamada | OK!2-layer MLPで<ruby>十分<rt>じゅうぶん</rt></ruby>、97%<ruby>狙<rt>ねら</rt></ruby>って。<br>*(OK! MLP 2 lớp là đủ, nhắm 97%.)* |

---

## Tình huống 7 — Bàn Đại · 22/4 14:00, MNIST chạy lần đầu

| Vai | Lời thoại |
|---|---|
| Đại | (code) <br>```python<br>class Net(nn.Module):<br>    def __init__(self):<br>        super().__init__()<br>        self.fc1 = nn.Linear(784, 128)<br>        self.fc2 = nn.Linear(128, 10)<br>    def forward(self, x):<br>        x = torch.relu(self.fc1(x.view(-1, 784)))<br>        return self.fc2(x)<br><br>model = Net().to(''mps'')<br>optimizer = optim.Adam(model.parameters(), lr=1e-3)<br>criterion = nn.CrossEntropyLoss()<br>``` |
| Đại | (terminal) Epoch 1: loss 0.32, acc 91.2% / Epoch 5: loss 0.04, acc 97.8% test<br> |
| Đại | (đứng dậy, đi tìm Yamada) <ruby>山田<rt>やまだ</rt></ruby>さん、MNIST<ruby>完成<rt>かんせい</rt></ruby>しました!テスト<ruby>精度<rt>せいど</rt></ruby>97.8%です!<br>*(Anh Yamada, MNIST xong rồi! Độ chính xác test 97.8%!)* |
| Yamada | おお、すごい!<ruby>初<rt>はじ</rt></ruby>めてのニューラルネットだろ?<ruby>感動<rt>かんどう</rt></ruby>するやろ。<br>*(Ồ tuyệt! Mạng nơ-ron đầu tiên đúng không? Xúc động chứ?)* |
| Đại | はい、<ruby>本当<rt>ほんとう</rt></ruby>に。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>書<rt>か</rt></ruby>いたコードが<ruby>数字<rt>すうじ</rt></ruby>を<ruby>認識<rt>にんしき</rt></ruby>できるなんて、まるで<ruby>魔法<rt>まほう</rt></ruby>です。<br>*(Vâng, thật sự đấy. Code mình viết mà nhận diện được chữ số, cứ như phép thuật ạ.)* |
| Yamada | その<ruby>感動<rt>かんどう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずに!<ruby>井上先生<rt>いのうえせんせい</rt></ruby>にも<ruby>報告<rt>ほうこく</rt></ruby>しよう。<br>*(Đừng quên cảm giác đó! Báo thầy Inoue luôn nhé.)* |

---

## Tình huống 8 — Bàn Inoue-sensei · 22/4 16:00, báo cáo MNIST 97.8%

| Vai | Lời thoại |
|---|---|
| Đại | (cúi nhẹ) <ruby>井上先生<rt>いのうえせんせい</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>失礼<rt>しつれい</rt></ruby>します。MNIST<ruby>分類器<rt>ぶんるいき</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>させていただきたいのですが、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Thầy Inoue, em xin phép làm phiền thầy. Em muốn báo cáo kết quả phân loại MNIST, thầy có thời gian không ạ?)* |
| Inoue | はい、どうぞ。<br>*(Được, mời.)* |
| Đại | 2<ruby>層<rt>そう</rt></ruby>MLP、<ruby>隠<rt>かく</rt></ruby>れ<ruby>層<rt>そう</rt></ruby>128<ruby>次元<rt>じげん</rt></ruby>、Adam optimizer、<ruby>学習率<rt>がくしゅうりつ</rt></ruby>1e-3で5エポック<ruby>学習<rt>がくしゅう</rt></ruby>した<ruby>結果<rt>けっか</rt></ruby>、テスト<ruby>精度<rt>せいど</rt></ruby>97.8%を<ruby>達成<rt>たっせい</rt></ruby>しました。<br>*(MLP 2 lớp, ẩn 128 chiều, Adam optimizer, learning rate 1e-3, train 5 epoch, đạt độ chính xác test 97.8%.)* |
| Inoue | いいですね。<ruby>過学習<rt>かがくしゅう</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>しましたか?<br>*(Tốt. Đã check overfitting chưa?)* |
| Đại | はい、train accが98.5%、test accが97.8%でしたので、<ruby>差<rt>さ</rt></ruby>は0.7%です。<ruby>軽<rt>かる</rt></ruby>い<ruby>過学習<rt>かがくしゅう</rt></ruby>ですが<ruby>許容範囲内<rt>きょようはんいない</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Vâng, train acc 98.5%, test acc 97.8%, chênh 0.7%. Overfit nhẹ nhưng trong ngưỡng chấp nhận được ạ.)* |
| Inoue | <ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>次<rt>つぎ</rt></ruby>はCNNでMNISTをやってみてください。99%は<ruby>超<rt>こ</rt></ruby>えられます。<br>*(Phán đoán đúng. Tiếp theo thử CNN cho MNIST. Vượt 99% được đấy.)* |
| Đại | はい、<ruby>挑戦<rt>ちょうせん</rt></ruby>させていただきます。<br>*(Vâng, em xin phép thử ạ.)* |

---

## Tình huống 9 — Quán cà phê Toyonaka · 25/4 18:00, Yumi rủ Mai sắm đồ baby

*Tony và Yumi mời Đại+Mai cà phê chiều. Đại mệt nhưng đến đủ.*

| Vai | Lời thoại |
|---|---|
| Yumi | (Osaka-ben) マイさん、お<ruby>腹<rt>なか</rt></ruby><ruby>大<rt>おお</rt></ruby>きなったなぁ!もう6ヶ<ruby>月<rt>げつ</rt></ruby>やろ?<br>*(Mai, bụng to lên rồi nhỉ! 6 tháng rồi đúng không?)* |
| Mai | はい、<ruby>来月<rt>らいげつ</rt></ruby>から7ヶ<ruby>月<rt>げつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Vâng, sang tháng là 7 tháng ạ.)* |
| Yumi | そろそろベビーグッズ<ruby>揃<rt>そろ</rt></ruby>えなあかんやろ。アカチャンホンポはどう?<ruby>千里中央店<rt>せんりちゅうおうてん</rt></ruby>でかいで〜!<br>*(Sắp phải sắm đồ baby rồi đấy. Akachan Honpo thế nào? Chi nhánh Senri-chuo to lắm!)* |
| Mai | アカチャンホンポ、<ruby>知<rt>し</rt></ruby>っています!リストは<ruby>作<rt>つく</rt></ruby>ったのですが、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと<ruby>何<rt>なに</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べばいいか<ruby>分<rt>わ</rt></ruby>からなくて。<br>*(Akachan Honpo, em biết ạ! Em có danh sách rồi, nhưng nói thật em không biết chọn cái nào.)* |
| Yumi | ほな<ruby>明日<rt>あした</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>こか!<ruby>私<rt>わたし</rt></ruby>、<ruby>孫<rt>まご</rt></ruby><ruby>気分<rt>きぶん</rt></ruby>で<ruby>選<rt>えら</rt></ruby>びたいねん!<br>*(Vậy mai đi cùng nhé! Tớ muốn chọn với tâm trạng "bà ngoại"!)* |
| Tony | (Osaka-ben) <ruby>俺<rt>おれ</rt></ruby>は<ruby>運転手<rt>うんてんしゅ</rt></ruby>やで。アルファード<ruby>出<rt>だ</rt></ruby>すわ。<br>*(Tôi làm tài xế. Lái Alphard ra nhé.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>何<rt>なに</rt></ruby>から<ruby>何<rt>なに</rt></ruby>までお<ruby>世話<rt>せわ</rt></ruby>になってしまって…<br>*(Cô chú giúp đỡ tụi cháu từ A đến Z luôn...)* |
| Yumi | あほ、<ruby>家族<rt>かぞく</rt></ruby>やん!<br>*(Đồ ngốc, người nhà mà!)* |

---

## Tình huống 10 — Bàn Đại · 30/4 11:00, Đại implement CNN MNIST 99.2%

| Vai | Lời thoại |
|---|---|
| Đại | (Slack DM Yamada) <ruby>山田<rt>やまだ</rt></ruby>さん、CNN<ruby>版<rt>ばん</rt></ruby>MNISTができました!テスト99.2%です。コードレビューお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか?<br>*(Anh Yamada, CNN MNIST xong rồi! Test 99.2%. Anh review code giúp em được không ạ?)* |
| Yamada | (Slack) おお<ruby>早<rt>はや</rt></ruby>っ!PR<ruby>作<rt>つく</rt></ruby>って<ruby>送<rt>おく</rt></ruby>って。15<ruby>分<rt>ぷん</rt></ruby>でレビューする。<br>*(Ồ nhanh thế! Tạo PR gửi đi. 15 phút tớ review.)* |
| Đại | (Slack) ありがとうございます!PR<ruby>送<rt>おく</rt></ruby>りました:`github.com/inoue-lab/dai-experiments/pull/3`<br>*(Cảm ơn anh! Đã gửi PR.)* |
| Yamada | (Slack, 15分後) レビューしたよ。Conv2D → ReLU → MaxPool の<ruby>流<rt>なが</rt></ruby>れがきれい。1<ruby>点<rt>てん</rt></ruby>だけ、`nn.functional.relu`より`nn.ReLU()`をmodule化した<ruby>方<rt>ほう</rt></ruby>がよい。<ruby>理由<rt>りゆう</rt></ruby>は`model.modules()`で<ruby>追跡<rt>ついせき</rt></ruby>できるから。<br>*(Đã review. Luồng Conv2D → ReLU → MaxPool đẹp. Chỉ 1 điểm: nên dùng `nn.ReLU()` module hơn `nn.functional.relu`. Lý do là track được qua `model.modules()`.)* |
| Đại | (Slack) <ruby>承知<rt>しょうち</rt></ruby>しました!すぐ<ruby>修正<rt>しゅうせい</rt></ruby>してforce-pushします。<br>*(Em rõ ạ! Em sửa ngay rồi force-push.)* |

---

## Tình huống 11 — Lounge lab · 30/4 16:00, đồng cohort hỏi lời khuyên

| Vai | Lời thoại |
|---|---|
| Suzuki | ダイくん!MNISTもうCNNまでいったん? <ruby>早<rt>はや</rt></ruby>すぎやろ!<br>*(Đại! MNIST đã đến CNN rồi à? Nhanh quá!)* |
| Takahashi | コツとかある?<br>*(Có tips gì không?)* |
| Đại | コツというか…<ruby>毎日<rt>まいにち</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby>、エラーメッセージを<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>読<rt>よ</rt></ruby>む<ruby>時間<rt>じかん</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>しています。<ruby>解決<rt>かいけつ</rt></ruby>したら<ruby>必<rt>かなら</rt></ruby>ずノートに<ruby>書<rt>か</rt></ruby>き<ruby>留<rt>と</rt></ruby>めます。<br>*(Tips thì... em dành 1 tiếng mỗi ngày đọc kỹ thông báo lỗi. Giải quyết xong là ghi vào sổ.)* |

| Suzuki | エラー<ruby>専用<rt>せんよう</rt></ruby>ノート!?<br>*(Sổ chuyên cho lỗi à!?)* |
| Đại | はい、Notionで「<ruby>遭遇<rt>そうぐう</rt></ruby>したエラー」というデータベースを<ruby>作<rt>つく</rt></ruby>って、エラーメッセージ・<ruby>原因<rt>げんいん</rt></ruby>・<ruby>解決法<rt>かいけつほう</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>しています。<br>*(Vâng, em làm database "Lỗi đã gặp" trên Notion, ghi message - nguyên nhân - cách giải quyết.)* |
| Takahashi | それや!<ruby>俺<rt>おれ</rt></ruby>も<ruby>真似<rt>まね</rt></ruby>するわ。<br>*(Đó! Tớ bắt chước đây.)* |
| Đại | テンプレートを<ruby>共有<rt>きょうゆう</rt></ruby>しますね。<br>*(Em share template nhé.)* |

---

## Tình huống 12 — Phòng khách Toyonaka · 30/4 22:00, gọi bố mẹ ở VN

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, video call) Bố mẹ ơi! Mai ơi đến chào ông bà này. |
| Mẹ Đại | (tiếng Việt) Trời, Mai bụng to rồi! Có khoẻ không con? |
| Mai | (tiếng Việt) Con khoẻ ạ. Hôm trước cô Yumi dẫn con đi sắm đồ baby ở Akachan Honpo. Mua được cũi, xe đẩy, áo sơ sinh đủ rồi. |
| Bố Đại | (tiếng Việt) Đại học hành sao rồi con? |
| Đại | (tiếng Việt) Bố ơi, tháng này con học PyTorch — framework deep learning ấy. Đã chạy được mạng nơ-ron đầu tiên, nhận diện chữ số viết tay đạt 99.2%. |
| Bố Đại | (tiếng Việt) Bố không hiểu lắm nhưng nghe oai phết. Anh Yamada vẫn dạy con à? |
| Đại | (tiếng Việt) Vâng, anh ấy 1on1 hàng tuần. Em PR lên GitHub là anh review trong 15 phút. Thầy Inoue cũng hôm trước khen con biết check overfitting. |
| Mẹ Đại | (tiếng Việt) Con cố lên. Hana ra đời tháng 8 mẹ sang chăm Mai 1 tháng nhé. |
| Đại | (tiếng Việt) Vâng, visa 短期滞在 con đang lo. Sẽ xong trước tháng 7. |
| Mai | (tiếng Việt) Mẹ ơi, mẹ sang con vui lắm! |
| Bố Đại | (tiếng Việt) Thôi đi ngủ đi, bên đó muộn rồi. |

---

## Đọng lại chương 2

Tháng 4-5/2028. Đại học PyTorch nền tảng dưới sự kèm cặp 1on1 hàng tuần của Yamada-senpai: **tensor → autograd → MLP MNIST 97.8% → CNN MNIST 99.2%**. Học được nhiều mẫu câu kỹ thuật quan trọng: **「インストール方法を教えていただけますか」** (xin chỉ cài thư viện), **「エラーが出てしまったのですが、見ていただけますか」** (báo lỗi với senpai), **「コードレビューお願いできますでしょうか」** (xin code review qua Slack), **「ご報告させていただきたいのですが、今お時間大丈夫でしょうか」** (báo cáo sensei lúc bận), **「家庭の都合で早退させていただきます」** (xin nghỉ vì việc gia đình — chuẩn Slack lab). Trong 1on1 với Inoue-sensei, biết cách trả lời câu hỏi overfitting (train/test gap 0.7%, trong ngưỡng chấp nhận). Yumi-bà nội tinh thần dẫn Mai đi Akachan Honpo Senri-chuo sắm đồ baby. Cuối tháng video call bố mẹ ở VN — visa 短期滞在 cho mẹ sang chăm sau khi Hana sinh đang được lo.

> Từ vựng & mẫu câu chương này: PyTorch・tensor・autograd・MPS・CUDA・MNIST・MLP・CNN・Adam optimizer・CrossEntropyLoss・過学習・学習率・隠れ層・テスト精度・線形回帰・勾配・自動微分・教えていただけますか・エラーが出てしまったのですが・ご報告させていただきます・家庭の都合で早退・コードレビューお願いできますでしょうか・force-push・Akachan Honpo・短期滞在ビザ

## Bí quyết chương

- **Senpai 1on1 = pattern keigo cố định**: 「教えていただけますか」 (cài đặt), 「見ていただけますか」 (lỗi), 「お願いできますでしょうか」 (review). Đừng dùng tame-go với senpai trong context kỹ thuật, dù thân.
- **Báo cáo Inoue-sensei cần CON SỐ + PHÁN ĐOÁN**: Không chỉ nói "97.8%", phải kèm "train/test gap 0.7%, trong ngưỡng chấp nhận" — sensei muốn thấy bạn biết phân tích, không phải khoe số.
- **Slack lab keigo formal**: 「家庭の都合で早退させていただきます。ご迷惑をおかけしますが、よろしくお願いいたします」 — câu chuẩn cho mọi tin nhắn nghỉ/về sớm/vắng họp. Sensei và sempai sẽ thông cảm.
- **Đầu tư database lỗi**: Khi cohort hỏi lời khuyên, share template Notion "Lỗi đã gặp" — vừa giúp đồng đội, vừa xây uy tín bản thân.
- **Family Tony-Yumi như ông bà tinh thần**: Yumi tự gọi mình là "孫気分" (tâm trạng bà ngoại) — văn hoá Osaka-ben thân tình. Đáp lại bằng 「家族のように〜お世話になってしまって」.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 方法 | ほうほう | PHƯƠNG PHÁP | Cách thức |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn tất |
| 略 | りゃく | LƯỢC | Viết tắt |
| 加速 | かそく | GIA TỐC | Tăng tốc |
| 多次元配列 | たじげんはいれつ | ĐA THỨ NGUYÊN PHỐI LIỆT | Mảng nhiều chiều |
| 互換性 | ごかんせい | HỖ HOÁN TÍNH | Khả năng tương thích |
| 対応 | たいおう | ĐỐI ỨNG | Hỗ trợ, đối ứng |
| 違い | ちがい | VI | Sự khác biệt |
| 機能 | きのう | CƠ NĂNG | Chức năng |
| 厳密 | げんみつ | NGHIÊM MẬT | Nghiêm ngặt |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 調べる | しらべる | ĐIỀU | Tra cứu, kiểm tra |
| 申し訳 | もうしわけ | THÂN DỊCH | Lời xin lỗi |
| 内側 | うちがわ | NỘI TRẮC | Bên trong |
| 次元 | じげん | THỨ NGUYÊN | Chiều, dimension |
| 揃える | そろえる | TỀ | Đồng đều, khớp |
| 修正 | しゅうせい | TU CHÍNH | Sửa chữa |
| 自動微分 | じどうびぶん | TỰ ĐỘNG VI PHÂN | Vi phân tự động |
| 核心 | かくしん | HẠCH TÂM | Cốt lõi |
| 計算 | けいさん | KẾ TOÁN | Tính toán |
| 構築 | こうちく | CẤU TRÚC | Xây dựng |
| 勾配 | こうばい | CẤU PHỐI | Gradient |
| 微分式 | びぶんしき | VI PHÂN THỨC | Công thức vi phân |
| 手計算 | てけいさん | THỦ KẾ TOÁN | Tính tay |
| 大規模化 | だいきぼか | ĐẠI QUY MÔ HOÁ | Mở rộng quy mô |
| 皆 | みな | GIAI | Mọi người |
| 家庭 | かてい | GIA ĐÌNH | Gia đình |
| 都合 | つごう | ĐÔ HỢP | Việc, lịch trình |
| 定期検診 | ていきけんしん | ĐỊNH KỲ KIỂM CHẨN | Khám định kỳ |
| 同伴 | どうはん | ĐỒNG BẠN | Đi cùng |
| 早退 | そうたい | TẢO THOÁI | Về sớm |
| 迷惑 | めいわく | MÊ HOẶC | Phiền phức |
| 大事 | だいじ | ĐẠI SỰ | Quan trọng, giữ gìn |
| 了解 | りょうかい | LIỄU GIẢI | Đã hiểu |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 習得 | しゅうとく | TẬP ĐẮC | Học được, nắm vững |
| 線形回帰 | せんけいかいき | TUYẾN HÌNH HỒI QUY | Hồi quy tuyến tính |
| 実装 | じっそう | THỰC TRANG | Triển khai code |
| 影響 | えいきょう | ẢNH HƯỞNG | Ảnh hưởng |
| 累積 | るいせき | LŨY TÍCH | Tích luỹ |
| 壊れる | こわれる | HOẠI | Hỏng, gãy |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | Thách thức, thử |
| 認識 | にんしき | NHẬN THỨC | Nhận diện |
| 魔法 | まほう | MA PHÁP | Phép thuật |
| 感動 | かんどう | CẢM ĐỘNG | Cảm động |
| 隠れ層 | かくれそう | ẨN TẦNG | Tầng ẩn |
| 学習率 | がくしゅうりつ | HỌC TẬP SUẤT | Learning rate |
| 達成 | たっせい | ĐẠT THÀNH | Đạt được |
| 過学習 | かがくしゅう | QUÁ HỌC TẬP | Overfitting |
| 許容範囲内 | きょようはんいない | HỨA DUNG PHẠM VI NỘI | Trong ngưỡng chấp nhận |
| 判断 | はんだん | PHÁN ĐOÁN | Phán đoán |
| 正しい | ただしい | CHÍNH | Đúng |
| 来月 | らいげつ | LAI NGUYỆT | Tháng sau |
| 選ぶ | えらぶ | TUYỂN | Chọn |
| 運転手 | うんてんしゅ | VẬN CHUYỂN THỦ | Tài xế |
| 家族 | かぞく | GIA TỘC | Gia đình |
| 早く | はやく | TẢO | Sớm, nhanh |
| 追跡 | ついせき | TRUY TÍCH | Theo dõi |
| 遭遇 | そうぐう | TAO NGỘ | Gặp phải |
| 原因 | げんいん | NGUYÊN NHÂN | Nguyên nhân |
| 解決法 | かいけつほう | GIẢI QUYẾT PHÁP | Cách giải quyết |
| 記録 | きろく | KÝ LỤC | Ghi chép |
| 真似 | まね | CHÂN TỰ | Bắt chước |
| 短期滞在 | たんきたいざい | ĐOẢN KỲ TRỆ TẠI | Lưu trú ngắn hạn (visa) |
| ビザ | — | — | Visa |
| 簡単 | かんたん | GIẢN ĐƠN | Đơn giản |
| 精度 | せいど | TINH ĐỘ | Độ chính xác |
| テスト精度 | テストせいど | — TINH ĐỘ | Độ chính xác trên test |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000003, 800000023, NULL, 'markdown_book', 'T3. Bé Hana chào đời (ハナ誕生)', '# Sách sinh viên Đại học Osaka · T3. Bé Hana chào đời (ハナ誕生)

> **Mục tiêu nhân vật:** Đại 23t, 5/8/2028, ngày Mai sinh đúng dự sinh tại 千里中央病院. Học các mẫu hội thoại tiếng Nhật trong tình huống y tế khẩn cấp + sinh nở: gọi taxi cho người đau bụng đẻ (陣痛が始まりました), check-in viện cấp cứu (受付お願いします), giao tiếp với 助産師 trong phòng sinh (頑張ってください・呼吸を整えて), báo tin vui qua LINE/điện thoại với gia đình hai bên, đón mẹ Đại sang Nhật visa 短期滞在, xin sensei nghỉ chăm con (1週間お休みをいただきたく).

---

## Bối cảnh

Sáng sớm 5/8/2028 — đúng dự sinh. Mai 23t bắt đầu chuyển dạ lúc 4:00 sáng. Toyonaka căn hộ → 千里中央病院 産婦人科 bằng taxi. Sinh thường 6:30 sáng, bé gái 3.200g khoẻ mạnh. Trong 1 tuần sau đó, mẹ Đại bay sang chăm cháu (visa 短期滞在), cô chú Tony-Yumi như ông bà tinh thần đến thăm, lab Inoue cohort + Yamada-senpai cũng đến chúc mừng. Chương này tập trung mẫu câu giao tiếp với 助産師・看護師・bệnh viện Nhật + báo tin gia đình Việt-Nhật.

---

## Tình huống 1 — Phòng ngủ căn hộ Toyonaka · 5/8 4:00, Mai bắt đầu chuyển dạ

*Đại đang ngủ. Mai ôm bụng, mặt nhăn lại, lay vai chồng.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi! Anh ơi dậy! Em đau lắm, em nghĩ bắt đầu rồi! |
| Đại | (tiếng Việt, ngồi bật dậy) Em ơi! Mấy phút một cơn rồi? |
| Mai | (tiếng Việt) Khoảng 7-8 phút một cơn. Em đã bấm giờ rồi. |
| Đại | (tiếng Việt) OK em. Anh gọi taxi ngay. Em ngồi yên, đừng đi lại. Em uống một ngụm nước nhé. |
| Mai | (tiếng Việt, thở mạnh) Vâng anh. Túi đồ sinh để cạnh cửa rồi. |
| Đại | (tiếng Việt) Giỏi quá em. Anh gọi viện trước. |

---

## Tình huống 2 — Phòng khách · 5/8 4:05, Đại gọi viện thông báo trước

| Vai | Lời thoại |
|---|---|
| Đại | (gọi 千里中央病院 dial 24h) もしもし、<ruby>千里中央病院<rt>せんりちゅうおうびょういん</rt></ruby><ruby>産婦人科<rt>さんふじんか</rt></ruby>でしょうか。<br>*(Alo, có phải bệnh viện Senri-chuo khoa sản không ạ?)* |
| Nhân viên | はい、<ruby>夜間<rt>やかん</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby>です。どうされましたか?<br>*(Vâng, tiếp tân ca đêm đây. Có việc gì ạ?)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>のグエン・マイが<ruby>本日<rt>ほんじつ</rt></ruby><ruby>予定日<rt>よていび</rt></ruby>でして、<ruby>先<rt>さき</rt></ruby>ほど4<ruby>時<rt>じ</rt></ruby>から<ruby>陣痛<rt>じんつう</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まりました。<ruby>間隔<rt>かんかく</rt></ruby>は7〜8<ruby>分<rt>ふん</rt></ruby>です。これから<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか?<br>*(Vợ em là Nguyễn Mai, hôm nay đúng dự sinh, vừa nãy 4 giờ bắt đầu đau đẻ. Cơn cách nhau 7-8 phút. Bây giờ tụi em đến viện được không ạ?)* |
| Nhân viên | <ruby>承知<rt>しょうち</rt></ruby>しました。すぐお<ruby>越<rt>こ</rt></ruby>しください。<ruby>正面玄関<rt>しょうめんげんかん</rt></ruby>は<ruby>閉<rt>し</rt></ruby>まっておりますので、<ruby>夜間救急<rt>やかんきゅうきゅう</rt></ruby><ruby>入口<rt>いりぐち</rt></ruby>からお<ruby>入<rt>はい</rt></ruby>りください。<ruby>母子<rt>ぼし</rt></ruby><ruby>手帳<rt>てちょう</rt></ruby>と<ruby>診察券<rt>しんさつけん</rt></ruby>をお<ruby>忘<rt>わす</rt></ruby>れなく。<br>*(Em rõ ạ. Anh chị đến ngay nhé. Cửa chính đóng rồi, anh chị vào bằng cửa cấp cứu đêm. Đừng quên sổ mẹ-con và thẻ khám.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。20<ruby>分<rt>ぷん</rt></ruby>ほどで<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em rõ. Khoảng 20 phút nữa em đến ạ.)* |

---

## Tình huống 3 — Trước căn hộ · 5/8 4:15, gọi taxi MK

| Vai | Lời thoại |
|---|---|
| Đại | (gọi taxi app) もしもし、タクシーをお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>豊中市<rt>とよなかし</rt></ruby><ruby>○○<rt>まるまる</rt></ruby>マンションから<ruby>千里中央病院<rt>せんりちゅうおうびょういん</rt></ruby>まで。<ruby>急<rt>いそ</rt></ruby>ぎでお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>妻<rt>つま</rt></ruby>が<ruby>陣痛中<rt>じんつうちゅう</rt></ruby>です。<br>*(Alo, em đặt taxi ạ. Từ chung cư ○○ ở Toyonaka đến bệnh viện Senri-chuo. Khẩn ạ. Vợ em đang đau đẻ.)* |
| Tổng đài | <ruby>承知<rt>しょうち</rt></ruby>しました。3<ruby>分<rt>ぷん</rt></ruby>でマンション<ruby>前<rt>まえ</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby>します。<ruby>車種<rt>しゃしゅ</rt></ruby>はトヨタクラウン、ナンバー「<ruby>大阪<rt>おおさか</rt></ruby>500 か 12-34」です。<br>*(Em rõ ạ. 3 phút xe đến trước chung cư. Xe Toyota Crown, biển số "Osaka 500 ka 12-34".)* |
| Đại | ありがとうございます。<ruby>待<rt>ま</rt></ruby>っております。<br>*(Em cảm ơn. Em đợi ạ.)* |
| (3 phút sau, taxi đến) <br> |
| Tài xế | (mở cửa) お<ruby>大事<rt>だいじ</rt></ruby>に。シート<ruby>倒<rt>たお</rt></ruby>しましょうか?<br>*(Giữ gìn nhé. Ngả ghế ra nhé?)* |
| Đại | お<ruby>願<rt>ねが</rt></ruby>いします。ありがとうございます。<br>*(Phiền bác. Em cảm ơn ạ.)* |

---

## Tình huống 4 — 千里中央病院 cửa cấp cứu đêm · 5/8 4:35, check-in

| Vai | Lời thoại |
|---|---|
| Đại | (chạy đến quầy) <ruby>失礼<rt>しつれい</rt></ruby>します!4<ruby>時<rt>じ</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>しました、グエンです。<ruby>妻<rt>つま</rt></ruby>のマイが<ruby>陣痛<rt>じんつう</rt></ruby>で<ruby>参<rt>まい</rt></ruby>りました。<br>*(Em xin phép! Em là Nguyen, gọi điện lúc 4 giờ. Vợ em Mai đau đẻ đến rồi ạ.)* |
| Nhân viên | お<ruby>待<rt>ま</rt></ruby>ちしておりました。マイさん、こちらの<ruby>車椅子<rt>くるまいす</rt></ruby>にお<ruby>掛<rt>か</rt></ruby>けください。<ruby>母子手帳<rt>ぼしてちょう</rt></ruby>と<ruby>保険証<rt>ほけんしょう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em đã chờ rồi ạ. Chị Mai, mời chị ngồi xe lăn này. Em xin sổ mẹ-con và thẻ bảo hiểm.)* |
| Mai | (đưa giấy tờ, thở dồn) お<ruby>願<rt>ねが</rt></ruby>いします…<br>*(Phiền chị...)* |
| Nhân viên | グエンさん、<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>主治医<rt>しゅじい</rt></ruby>は<ruby>佐藤先生<rt>さとうせんせい</rt></ruby>で<ruby>間違<rt>まちが</rt></ruby>いないですか?<br>*(Anh Nguyen, em xác nhận. Bác sĩ chính là bác sĩ Sato đúng không ạ?)* |
| Đại | はい、<ruby>間違<rt>まちが</rt></ruby>いありません。<br>*(Vâng, đúng ạ.)* |
| Nhân viên | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>当直<rt>とうちょく</rt></ruby>も<ruby>佐藤先生<rt>さとうせんせい</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby>から<ruby>到着<rt>とうちゃく</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。まずは<ruby>分娩室<rt>ぶんべんしつ</rt></ruby>2<ruby>番<rt>ばん</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>します。<br>*(Trực ca đêm hôm nay cũng là bác sĩ Sato. Bác sĩ đã có mặt từ sáng. Trước hết em đưa anh chị đến phòng sinh số 2.)* |

---

## Tình huống 5 — Phòng sinh 2 · 5/8 5:00, gặp 助産師 (nữ hộ sinh)

*Mai được đặt nằm trên giường sinh, máy đo tim thai gắn vào bụng. Một nữ hộ sinh tên Suzuki bước vào.*

| Vai | Lời thoại |
|---|---|
| Suzuki | マイさん、<ruby>助産師<rt>じょさんし</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Mai, em là Suzuki, nữ hộ sinh. Em xin nhờ chị.)* |
| Mai | よろしくお<ruby>願<rt>ねが</rt></ruby>いします…<br>*(Em nhờ chị ạ...)* |
| Suzuki | <ruby>内診<rt>ないしん</rt></ruby>させていただきますね。... はい、<ruby>子宮口<rt>しきゅうこう</rt></ruby>5センチです。<ruby>順調<rt>じゅんちょう</rt></ruby>ですよ!<ruby>赤<rt>あか</rt></ruby>ちゃんも<ruby>元気<rt>げんき</rt></ruby>です。<br>*(Em khám trong cho chị nhé. ... Cổ tử cung mở 5cm rồi. Suôn sẻ lắm! Em bé cũng khoẻ.)* |
| Mai | (thở mạnh) よかった…<br>*(Mừng quá...)* |
| Suzuki | <ruby>呼吸<rt>こきゅう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えましょう。<ruby>陣痛<rt>じんつう</rt></ruby>が<ruby>来<rt>く</rt></ruby>たら「ふー、ふー」と<ruby>長<rt>なが</rt></ruby>く<ruby>吐<rt>は</rt></ruby>いてください。<ruby>力<rt>ちから</rt></ruby>まないで。<br>*(Mình điều hoà hơi thở nhé. Khi cơn co đến, thở dài "phù, phù" ra. Đừng rặn.)* |
| Mai | はい…<br>*(Vâng...)* |
| Suzuki | (quay sang Đại) ご<ruby>主人<rt>しゅじん</rt></ruby>、<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>希望<rt>きぼう</rt></ruby>ですよね?<ruby>横<rt>よこ</rt></ruby>に<ruby>椅子<rt>いす</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>します。<ruby>奥<rt>おく</rt></ruby>さんの<ruby>手<rt>て</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>って、<ruby>声<rt>こえ</rt></ruby>をかけてあげてください。<br>*(Anh muốn vào cùng đúng không ạ? Em chuẩn bị ghế bên cạnh. Anh nắm tay vợ và động viên nhé.)* |
| Đại | はい、<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>わせていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin vào cùng. Em nhờ chị ạ.)* |

---

## Tình huống 6 — Phòng sinh 2 · 5/8 6:30, Hana chào đời

*2 giờ sau. Mai đã rặn nhiều cơn. Bác sĩ Sato vào, Suzuki đỡ.*

| Vai | Lời thoại |
|---|---|
| Suzuki | マイさん、もう<ruby>少<rt>すこ</rt></ruby>しですよ!<ruby>頭<rt>あたま</rt></ruby>が<ruby>見<rt>み</rt></ruby>えてきました!<ruby>頑張<rt>がんば</rt></ruby>ってください!<br>*(Chị Mai, sắp xong rồi! Đã thấy đầu em bé! Cố lên!)* |
| BS Sato | <ruby>次<rt>つぎ</rt></ruby>の<ruby>陣痛<rt>じんつう</rt></ruby>で<ruby>思<rt>おも</rt></ruby>いっきり<ruby>力<rt>ちから</rt></ruby>みましょう!せーの!<br>*(Cơn tiếp theo dồn hết sức nhé! Một, hai!)* |
| Mai | (hét, tiếng Việt) Anh ơi! |
| Đại | (nắm tay Mai) Em ơi! Anh đây! Cố lên em! Chỉ còn 1 cơn nữa! |
| Suzuki | はい、いま<ruby>出<rt>で</rt></ruby>てきました!<br>*(Rồi, em bé ra rồi!)* |
| (Tiếng khóc đầu đời "oa oa oa") <br>*(Tiếng khóc đầu đời.)* |
| BS Sato | <ruby>誕生<rt>たんじょう</rt></ruby>です!<ruby>女<rt>おんな</rt></ruby>の<ruby>子<rt>こ</rt></ruby>です!3,200グラム、<ruby>元気<rt>げんき</rt></ruby>な<ruby>赤<rt>あか</rt></ruby>ちゃんですよ。おめでとうございます!<br>*(Chào đời rồi! Bé gái! 3.200g, em bé khoẻ mạnh. Chúc mừng anh chị!)* |
| Đại | (nghẹn ngào, cúi đầu) ありがとうございます…<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Em cảm ơn... thật sự cảm ơn bác sĩ.)* |
| Suzuki | (đặt bé lên ngực Mai) マイさん、<ruby>会<rt>あ</rt></ruby>えましたね。<br>*(Chị Mai, gặp được bé rồi nhỉ.)* |
| Mai | (tiếng Việt, khóc) Hana ơi! Mẹ đây con! |

---

## Tình huống 7 — Phòng hậu sản · 5/8 8:00, gọi LINE báo gia đình hai bên

| Vai | Lời thoại |
|---|---|
| Đại | (LINE nhóm "Gia đình Việt-Nhật") Cả nhà ơi! Hana sinh lúc 6:30 sáng nay! Bé gái 3.200g, mẹ con khoẻ! Sinh thường ạ! |
| Mẹ Đại | (VN) Trời ơi con ơi! Mẹ thành bà nội rồi! Bố đang khóc kìa! Bà sang ngay tuần này nhé! |
| Bố Đại | (VN) Đại ơi, con đầu lòng! Bố tự hào về con lắm! Cảm ơn Mai đã sinh cho chúng ta đứa cháu xinh đẹp! |
| Mẹ Mai | (VN) Mai có khoẻ không con?? Mẹ lo cho con quá! Cho mẹ xem ảnh Hana đi! |
| Mai | (VN, mệt nhưng cười) Mẹ ơi! Con khoẻ ạ. Đây ảnh Hana đây mẹ! [ảnh Hana mới sinh] |
| Mẹ Mai | (VN) Trời ơi, giống mẹ y luôn! Mũi cao thế kia! |
| Linh-Anh | (VN, em gái Đại) Anh chị ơi! Em xin nghỉ tuần này, bay lên Osaka cuối tuần! Em là cô út rồi nhá! |
| Đại | (LINE) Cả nhà cảm ơn! Bé Hana = 陽奈, Hán Việt là "Dương Nại" — ánh nắng + cây nại (cây lê), kanji của Yumi-cô gợi ý. Tên gọi tắt Hana = Hoa. |
| Yumi (LINE) | ハナちゃん、<ruby>陽奈<rt>ひな</rt></ruby>ちゃん!かわいすぎる!<ruby>後<rt>のち</rt></ruby>ほど<ruby>主人<rt>しゅじん</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>います!<br>*(Bé Hina! Xinh quá! Lát nữa cô chú đến thăm!)* |

---

## Tình huống 8 — Phòng hậu sản · 5/8 9:00, Tony+Yumi đến thăm

*Yumi gõ cửa, ôm hoa hồng và túi quà.*

| Vai | Lời thoại |
|---|---|
| Yumi | (Osaka-ben) マイちゃん!<ruby>陽奈<rt>ひな</rt></ruby>ちゃん、おめでとう!<br>*(Mai! Bé Hina, chúc mừng!)* |
| Tony | (Osaka-ben) わし、おじいちゃんになったで〜!<br>*(Tớ thành ông nội tinh thần rồi đấy!)* |
| Mai | (tiếng Việt nhỏ, rồi JP) ありがとうございます…お<ruby>気持<rt>きもち</rt></ruby>ち、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn cô chú... Tấm lòng của cô chú, em mừng lắm.)* |
| Yumi | これ、お<ruby>祝儀<rt>しゅうぎ</rt></ruby>3<ruby>万円<rt>まんえん</rt></ruby>とベビー<ruby>服<rt>ふく</rt></ruby>!アカチャンホンポで<ruby>選<rt>えら</rt></ruby>んだやつ!<br>*(Đây là tiền mừng 3 vạn yên với đồ em bé! Tớ chọn ở Akachan Honpo!)* |
| Đại | (cúi đầu) こんなにしていただいて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。ありがとうございます。<br>*(Cô chú lo cho tụi cháu nhiều quá, cháu áy náy lắm. Cháu cảm ơn ạ.)* |
| Tony | あほ、<ruby>水臭<rt>みずくさ</rt></ruby>いこと<ruby>言<rt>い</rt></ruby>うな!<ruby>家族<rt>かぞく</rt></ruby>やん!<br>*(Ngốc, đừng có khách khí! Người nhà mà!)* |
| Yumi | (bế Hana) かわいいなぁ〜!マイちゃんに<ruby>似<rt>に</rt></ruby>てるな。<ruby>目<rt>め</rt></ruby>がマイちゃんそっくり!<br>*(Xinh quá! Giống Mai đấy. Mắt y hệt Mai!)* |
| Mai | (cười nhẹ) ありがとうございます。<ruby>由美<rt>ゆみ</rt></ruby>さんに<ruby>奈<rt>な</rt></ruby>の<ruby>字<rt>じ</rt></ruby>をいただいて、ありがとうございました。<br>*(Em cảm ơn cô. Cảm ơn cô đã đặt cho cháu chữ "nại" trong tên ạ.)* |

---

## Tình huống 9 — Phòng hậu sản · 6/8 14:00, Yamada + cohort lab đến thăm

| Vai | Lời thoại |
|---|---|
| Yamada | (gõ cửa) お<ruby>邪魔<rt>じゃま</rt></ruby>します!ダイくん、マイさん、おめでとう!<br>*(Em vào nhé! Đại, chị Mai, chúc mừng!)* |
| Suzuki (B3) | (Osaka-ben) ハナちゃん、めっちゃ<ruby>可愛<rt>かわい</rt></ruby>いやん!<br>*(Bé Hana xinh quá đi!)* |
| Takahashi (B3) | マイさん、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Chị Mai vất vả rồi.)* |
| Kobayashi (B3) | これ、cohort 4<ruby>人<rt>にん</rt></ruby>からのお<ruby>祝<rt>いわ</rt></ruby>いです。<br>*(Đây là quà mừng của 4 đứa cohort.)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。お<ruby>気遣<rt>きづか</rt></ruby>い<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Mọi người, em cảm ơn thật nhiều. Em rất biết ơn sự quan tâm của mọi người.)* |
| Yamada | <ruby>井上先生<rt>いのうえせんせい</rt></ruby>からも<ruby>伝言<rt>でんごん</rt></ruby>あるよ。「1<ruby>週間<rt>しゅうかん</rt></ruby><ruby>休<rt>やす</rt></ruby>んで<ruby>家族<rt>かぞく</rt></ruby>と<ruby>過<rt>す</rt></ruby>ごしてください。<ruby>研究<rt>けんきゅう</rt></ruby>のことは<ruby>心配<rt>しんぱい</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>」だって。<br>*(Thầy Inoue có nhắn lại. "Nghỉ 1 tuần để ở với gia đình. Việc nghiên cứu không cần lo lắng".)* |
| Đại | (cảm động) <ruby>井上先生<rt>いのうえせんせい</rt></ruby>に、<ruby>後<rt>のち</rt></ruby>ほど<ruby>正式<rt>せいしき</rt></ruby>にメールでお<ruby>礼<rt>れい</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Lát nữa em sẽ viết mail cảm ơn thầy Inoue chính thức ạ.)* |

---

## Tình huống 10 — Hành lang viện · 6/8 15:30, Đại viết email xin nghỉ chính thức gửi Inoue

| Vai | Lời thoại |
|---|---|
| Đại | (đọc to email vừa soạn cho mình) <br>「<ruby>井上先生<rt>いのうえせんせい</rt></ruby><br><br>お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>学部<rt>がくぶ</rt></ruby>3<ruby>年<rt>ねん</rt></ruby>のグエン・ダイです。<br><br><ruby>本日<rt>ほんじつ</rt></ruby>5<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、<ruby>妻<rt>つま</rt></ruby>が<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>女<rt>おんな</rt></ruby>の<ruby>子<rt>こ</rt></ruby>を<ruby>出産<rt>しゅっさん</rt></ruby>いたしました。<ruby>母子<rt>ぼし</rt></ruby>ともに<ruby>健康<rt>けんこう</rt></ruby>です。<br><br>つきましては、8<ruby>月<rt>がつ</rt></ruby>5<ruby>日<rt>か</rt></ruby>から12<ruby>日<rt>か</rt></ruby>まで1<ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>育児<rt>いくじ</rt></ruby>のためお<ruby>休<rt>やす</rt></ruby>みをいただきたく、ご<ruby>連絡<rt>れんらく</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br><br>セミナーの<ruby>論文<rt>ろんぶん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>は<ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>代<rt>か</rt></ruby>わっていただきました。<br><br>ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしますが、<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br><br>グエン・ダイ」<br> |
| Đại | (gửi mail, suy nghĩ) これでよし。<br>*(Vậy là OK.)* |
| Inoue (reply 5 phút sau) | お<ruby>誕生<rt>たんじょう</rt></ruby>おめでとうございます。ゆっくり<ruby>休<rt>やす</rt></ruby>んで<ruby>家族<rt>かぞく</rt></ruby>との<ruby>時間<rt>じかん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしてください。<ruby>研究<rt>けんきゅう</rt></ruby>のことは<ruby>心配<rt>しんぱい</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>です。<ruby>井上<rt>いのうえ</rt></ruby><br>*(Chúc mừng em bé chào đời. Nghỉ ngơi thư thả và trân trọng thời gian với gia đình nhé. Việc nghiên cứu không cần lo. Inoue.)* |

---

## Tình huống 11 — Sân bay Kansai (KIX) Ga đến Quốc tế · 12/8 14:00, đón mẹ Đại

*Đại cầm bảng "Mẹ Đại + chữ Việt". Mẹ Đại 50t kéo vali ra cổng.*

| Vai | Lời thoại |
|---|---|
| Đại | (vẫy tay, tiếng Việt) Mẹ ơi! Đây mẹ ơi! |
| Mẹ Đại | (tiếng Việt) Đại ơi! Mẹ thành bà nội rồi! |
| Đại | (tiếng Việt, ôm mẹ) Cảm ơn mẹ đã sang. Visa 短期滞在 90 ngày con xin xong từ tháng 7, mẹ ở lại 1 tháng nhé. |
| Mẹ Đại | (tiếng Việt) Ừ ừ. Hana sao rồi con? |
| Đại | (tiếng Việt) Bé khoẻ lắm mẹ. 3.200g, bú mẹ tốt. Mai đang ở viện thêm 3 ngày nữa. Mẹ về nhà nghỉ rồi chiều con dẫn đi viện luôn. |
| (Trên xe điện Hankyu về Toyonaka) <br> |
| Mẹ Đại | (tiếng Việt) Mẹ mang 5kg gạo, ruốc bông, lá xông sau sinh cho Mai. Có cả khăn xô của bà ngoại Mai gửi. |
| Đại | (tiếng Việt) Mẹ chu đáo quá. Mai sẽ cảm động lắm. |

---

## Tình huống 12 — Bệnh viện · 12/8 16:00, mẹ Đại gặp Mai+Hana lần đầu

| Vai | Lời thoại |
|---|---|
| Mẹ Đại | (tiếng Việt, mở cửa phòng) Mai ơi! Mẹ sang rồi! |
| Mai | (tiếng Việt, khóc nhẹ) Mẹ ơi! Cảm ơn mẹ đã sang với chúng con! |
| Mẹ Đại | (ôm Mai, nhìn Hana) Trời ơi cháu xinh quá! Giống mẹ y luôn! |
| Mai | (tiếng Việt) Mẹ bế Hana đi mẹ. Bà nội bế cháu lần đầu! |
| Mẹ Đại | (bế Hana, vừa khóc vừa cười) Cháu ơi, bà nội đây! Bà từ Hà Nội sang thăm cháu này! |
| (Suzuki nữ hộ sinh ghé qua) <br> |
| Suzuki | (cúi nhẹ) お<ruby>義母<rt>かあ</rt></ruby>さま、はじめまして。<ruby>担当<rt>たんとう</rt></ruby>の<ruby>助産師<rt>じょさんし</rt></ruby>、<ruby>鈴木<rt>すずき</rt></ruby>です。<br>*(Bác ạ, cháu chào lần đầu. Cháu là Suzuki, nữ hộ sinh phụ trách.)* |
| Đại | (phiên dịch) Mẹ ơi, đây là chị Suzuki nữ hộ sinh của Mai. |
| Mẹ Đại | (lúng túng, tiếng Việt rồi cúi) Cảm ơn cô đã chăm cháu! Cảm ơn nhiều! |
| Đại | (dịch sang JP) <ruby>母<rt>はは</rt></ruby>から、お<ruby>世話<rt>せわ</rt></ruby>になりまして<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございましたと<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ cháu xin gửi lời cảm ơn cô đã chăm sóc.)* |
| Suzuki | こちらこそ、マイさんは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>り<ruby>屋<rt>や</rt></ruby>さんでした。<br>*(Dạ không có gì, chị Mai cố gắng lắm ạ.)* |

---

## Tình huống 13 — Phòng khách Toyonaka · 12/8 22:00, cả nhà gọi video về Hà Nội

| Vai | Lời thoại |
|---|---|
| Bố Đại | (tiếng Việt, video) Mẹ sang được rồi à? Tốt quá! |
| Mẹ Đại | (tiếng Việt) Tôi đến nơi an toàn rồi ông ạ. Hana xinh lắm. Tay chân đầy đặn, mắt to. |
| Mẹ Mai | (tiếng Việt, video từ Hải Phòng) Mai ơi! Con có khoẻ không? Có ai chăm con không? |
| Mai | (tiếng Việt) Có mẹ chồng sang rồi mẹ ơi! Cô Yumi cũng ngày nào cũng nấu cháo gà mang sang. Con không thiếu gì cả. |
| Linh-Anh | (tiếng Việt) Em đang ở sân bay Nội Bài đây! Em bay JL751 9 giờ tối, sáng mai đến Kansai. |
| Đại | (tiếng Việt) Em ơi! Anh ra đón. JR Kansai-Airport line rồi đổi Hankyu, anh tính đường rồi. |
| Linh-Anh | (tiếng Việt) Vâng anh. Mai gặp cháu Hana! |
| Bố Đại | (tiếng Việt) Đại ơi, lo cho gia đình tốt nhé con. Bố tự hào về con. |
| Đại | (tiếng Việt, nghẹn) Vâng bố. Cảm ơn bố mẹ đã nuôi con đến hôm nay. Giờ đến lượt con. |

---

## Đọng lại chương 3

5/8/2028, 6:30 sáng — bé Hana (<ruby>陽奈<rt>ひな</rt></ruby>) chào đời tại 千里中央病院. 3.200g, bé gái, sinh thường, mẹ con khoẻ mạnh. Đại học được nhiều mẫu câu y tế/sinh nở quan trọng: **「陣痛が始まりました」** (báo chuyển dạ qua điện thoại), **「これから伺ってもよろしいでしょうか」** (xin đến viện), **「立ち会わせていただきます」** (xin được vào phòng sinh cùng), **「育児のためお休みをいただきたく、ご連絡申し上げます」** (mail xin sensei nghỉ chăm con), **「お気遣い感謝いたします」** (cảm ơn quan tâm) — tất cả ở mức keigo trang trọng vì giao tiếp với bác sĩ + nữ hộ sinh + sensei. Tony-Yumi như ông bà nội tinh thần, tặng tiền mừng + đồ em bé + đặt chữ "<ruby>奈<rt>な</rt></ruby>" trong tên Hana. Mẹ Đại bay sang Nhật visa **短期滞在** chăm Mai 1 tháng. Cô út Linh-Anh cũng bay sang cuối tuần. Inoue-sensei cho nghỉ 1 tuần — văn hoá lab Nhật rất nâng đỡ thành viên có sự kiện gia đình. Đại 23t làm bố, Mai 23t làm mẹ. Gia đình Việt-Nhật 3 thế hệ quây quần quanh bé Hana.

> Từ vựng & mẫu câu chương này: 陣痛・予定日・産婦人科・助産師・分娩室・子宮口・内診・呼吸を整える・立ち会い・出産・誕生・母子手帳・診察券・保険証・夜間救急・お気遣い感謝いたします・育児のためお休みをいただきたく・短期滞在ビザ・祝儀・ベビー服・お祝い・お疲れさまでした・お大事に・水臭いこと言うな・家族やん・お邪魔します・心配不要

## Bí quyết chương

- **Gọi viện sản khoa keigo formal**: 「陣痛が始まりました」「これから伺ってもよろしいでしょうか」 — không dùng tame-go dù khẩn. Y tá đêm nói chậm rãi để bạn nghe rõ địa chỉ vào cửa cấp cứu.
- **Phòng sinh: 助産師 nắm vai chính**: Nữ hộ sinh hướng dẫn "呼吸を整えましょう" — chồng hỗ trợ tinh thần, không can thiệp y tế. Trả lời 「立ち会わせていただきます」 khi được hỏi vào cùng.
- **Email xin nghỉ chăm con cấu trúc 5 phần**: 1) chào, 2) báo tin tốt (無事に出産), 3) xin nghỉ với mốc thời gian cụ thể, 4) phương án cover việc, 5) lời xin lỗi đã làm phiền + cảm ơn. Inoue-sensei sẽ reply trong 5 phút.
- **3 thế hệ Việt-Nhật quây quần**: Tony-Yumi gọi mình "おじいちゃん・おばあちゃん" (ông bà tinh thần). Đáp lại bằng 「お気持ち本当に嬉しいです」 + chữ Nhật trong tên con (奈) = sự biết ơn tế nhị.
- **Bà nội VN sang Nhật chăm cháu**: Visa 短期滞在 90 ngày xin trước 1 tháng. Mang gạo, ruốc bông, lá xông — văn hoá hậu sản Việt vẫn cần giữ ở Nhật. Phiên dịch giữa mẹ chồng VN với 助産師 Nhật là vai trò của Đại.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 産婦人科 | さんふじんか | SẢN PHỤ NHÂN KHOA | Khoa sản |
| 夜間受付 | やかんうけつけ | DẠ GIAN THỤ PHÓ | Tiếp tân ca đêm |
| 予定日 | よていび | DỰ ĐỊNH NHẬT | Ngày dự sinh |
| 陣痛 | じんつう | TRẬN THỐNG | Đau đẻ, cơn co |
| 間隔 | かんかく | GIAN CÁCH | Khoảng cách (thời gian) |
| 伺う | うかがう | TỨ | Đến (khiêm nhường) |
| 正面玄関 | しょうめんげんかん | CHÍNH DIỆN HUYỀN QUAN | Cửa chính |
| 夜間救急 | やかんきゅうきゅう | DẠ GIAN CỨU CẤP | Cấp cứu đêm |
| 入口 | いりぐち | NHẬP KHẨU | Cửa vào |
| 母子手帳 | ぼしてちょう | MẪU TỬ THỦ TRƯỚNG | Sổ mẹ-con |
| 診察券 | しんさつけん | CHẨN SÁT KHOÁN | Thẻ khám |
| 到着 | とうちゃく | ĐÁO TRỨ | Đến nơi |
| 急ぎ | いそぎ | CẤP | Khẩn cấp |
| 車種 | しゃしゅ | XA CHỦNG | Loại xe |
| 倒す | たおす | ĐẢO | Ngả xuống |
| 車椅子 | くるまいす | XA Ỷ TỬ | Xe lăn |
| 保険証 | ほけんしょう | BẢO HIỂM CHỨNG | Thẻ bảo hiểm |
| 主治医 | しゅじい | CHỦ TRỊ Y | Bác sĩ chính |
| 当直 | とうちょく | ĐƯƠNG TRỰC | Trực ban |
| 分娩室 | ぶんべんしつ | PHÂN MIỂN THẤT | Phòng sinh |
| 助産師 | じょさんし | TRỢ SẢN SƯ | Nữ hộ sinh |
| 内診 | ないしん | NỘI CHẨN | Khám trong |
| 子宮口 | しきゅうこう | TỬ CUNG KHẨU | Cổ tử cung |
| 順調 | じゅんちょう | THUẬN ĐIỀU | Suôn sẻ |
| 元気 | げんき | NGUYÊN KHÍ | Khoẻ |
| 呼吸 | こきゅう | HÔ HẤP | Hô hấp |
| 整える | ととのえる | CHỈNH | Điều hoà, sắp xếp |
| 吐く | はく | THỔ | Thở ra, nôn ra |
| 力む | りきむ | LỰC | Dồn sức, rặn |
| 主人 | しゅじん | CHỦ NHÂN | Chồng |
| 立ち会い | たちあい | LẬP HỘI | Có mặt cùng (sinh) |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 握る | にぎる | ÁC | Nắm |
| 声をかける | こえをかける | THANH | Lên tiếng động viên |
| 誕生 | たんじょう | ĐẢN SINH | Chào đời |
| 出産 | しゅっさん | XUẤT SẢN | Sinh nở |
| 無事 | ぶじ | VÔ SỰ | Bình an |
| 健康 | けんこう | KIỆN KHANG | Khoẻ mạnh |
| 育児 | いくじ | DỤC NHI | Nuôi con |
| 心配 | しんぱい | TÂM PHỐI | Lo lắng |
| 不要 | ふよう | BẤT YẾU | Không cần |
| 正式 | せいしき | CHÍNH THỨC | Chính thức |
| 礼 | れい | LỄ | Lời cảm ơn, lễ |
| 申し上げる | もうしあげる | THÂN THƯỢNG | Nói (cực kính ngữ) |
| 祝儀 | しゅうぎ | CHÚC NGHI | Tiền mừng |
| ベビー服 | ベビーふく | — PHỤC | Quần áo em bé |
| 水臭い | みずくさい | THỦY XÚ | Khách khí |
| 邪魔 | じゃま | TÀ MA | Quấy rầy, làm phiền |
| 伝言 | でんごん | TRUYỀN NGÔN | Lời nhắn |
| 義母 | ぎぼ | NGHĨA MẪU | Mẹ chồng/vợ |
| 頑張り屋 | がんばりや | NGOAN TRƯƠNG ỐC | Người chăm chỉ |
| 母 | はは | MẪU | Mẹ |
| 後ほど | のちほど | HẬU | Lát nữa |
| 笑顔 | えがお | TIẾU NHAN | Nụ cười |
| 最高 | さいこう | TỐI CAO | Tuyệt vời nhất |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000004, 800000023, NULL, 'markdown_book', 'T4. Transformer + BERT (Attention Is All You Need)', '# Sách sinh viên Đại học Osaka · T4. Transformer + BERT (Attention Is All You Need)

> **Mục tiêu nhân vật:** Đại 23t, 9-10/2028, sau Hana 1 tháng (1 tuần nghỉ + 4 tuần làm bố mới). Học các mẫu hội thoại tiếng Nhật của thành viên lab khi đọc paper khó: trình bày paper trong seminar (本日の論文は〜です), hỏi sensei khi không hiểu công thức (この式の意味を教えていただけますか), thảo luận với senpai về thiết kế thực nghiệm (実験設計について相談したいのですが), báo cáo kết quả fine-tuning đầu tiên (ベースラインの結果をご報告いたします), từ chối lịch nhậu lab khéo léo (家族の都合で〜), nói chuyện với vợ + bố mẹ về tiến độ nghiên cứu.

---

## Bối cảnh

Tháng 9-10/2028. Hana đã 1 tháng tuổi, biết cười. Mai đang được mẹ chồng + Yumi đỡ đần. Đại quay lại lab full-time sau 1 tuần nghỉ. Lộ trình paper của Inoue-sensei đến phase 2: **Attention Is All You Need (Vaswani 2017)** → **BERT (Devlin 2018)** → **GPT-3 (Brown 2020)** → fine-tune **bert-base-japanese-v3** trên parallel corpus VN-JP. Chương này tập trung các mẫu câu seminar + 1on1 trình bày paper khó + báo kết quả thực nghiệm đầu tiên.

---

## Tình huống 1 — Phòng seminar · 9/9 14:00, Đại thuyết trình paper Attention (lần đầu)

*Phòng seminar lớn. 12 thành viên + Inoue-sensei + Watanabe准教授 ngồi bàn chữ U. Đại bước lên bảng, slide đầu hiện "Attention Is All You Need (Vaswani et al., 2017)".*

| Vai | Lời thoại |
|---|---|
| Đại | (hít sâu, cúi) <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。グエン・ダイです。<ruby>論文<rt>ろんぶん</rt></ruby>は2017<ruby>年<rt>ねん</rt></ruby>NeurIPSの「Attention Is All You Need」、Vaswani <ruby>他<rt>ほか</rt></ruby>です。<br>*(Em xin phép giới thiệu paper hôm nay. Em là Nguyễn Đại. Bài là "Attention Is All You Need", Vaswani et al., NeurIPS 2017.)* |
| Đại | この<ruby>論文<rt>ろんぶん</rt></ruby>の<ruby>貢献<rt>こうけん</rt></ruby>は3つあります。1)RNNを<ruby>使<rt>つか</rt></ruby>わず<ruby>注意機構<rt>ちゅういきこう</rt></ruby>のみで<ruby>系列<rt>けいれつ</rt></ruby><ruby>変換<rt>へんかん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>うTransformer<ruby>構造<rt>こうぞう</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>。2)<ruby>並列<rt>へいれつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>による<ruby>学習<rt>がくしゅう</rt></ruby><ruby>高速化<rt>こうそくか</rt></ruby>。3)WMT 2014 En-De・En-FrでSOTA<ruby>達成<rt>たっせい</rt></ruby>。<br>*(Bài có 3 đóng góp. 1) Đề xuất kiến trúc Transformer chỉ dùng attention mechanism, không RNN. 2) Tăng tốc huấn luyện nhờ xử lý song song. 3) Đạt SOTA trên WMT 2014 En-De và En-Fr.)* |
| Đại | (chuyển slide) <ruby>核心<rt>かくしん</rt></ruby>はScaled Dot-Product Attentionです。<ruby>数式<rt>すうしき</rt></ruby>は:Attention(Q, K, V) = softmax(QK^T / √d_k) · V<br>*(Cốt lõi là Scaled Dot-Product Attention. Công thức: Attention(Q, K, V) = softmax(QK^T / √d_k) · V.)* |
| Watanabe准教授 | (giơ tay) <ruby>分母<rt>ぶんぼ</rt></ruby>の√d_kはなぜ<ruby>必要<rt>ひつよう</rt></ruby>なんですか?<br>*(Tại sao mẫu số là √d_k?)* |
| Đại | はい、<ruby>次元数<rt>じげんすう</rt></ruby>d_kが<ruby>大<rt>おお</rt></ruby>きいとQK^Tの<ruby>値<rt>あたい</rt></ruby>も<ruby>大<rt>おお</rt></ruby>きくなり、softmaxが<ruby>飽和<rt>ほうわ</rt></ruby>して<ruby>勾配<rt>こうばい</rt></ruby>が<ruby>消失<rt>しょうしつ</rt></ruby>します。√d_kで<ruby>割<rt>わ</rt></ruby>ることで<ruby>分散<rt>ぶんさん</rt></ruby>を1<ruby>付近<rt>ふきん</rt></ruby>に<ruby>抑<rt>おさ</rt></ruby>えます。<br>*(Vâng, khi d_k lớn thì QK^T cũng lớn, softmax bão hoà → vanishing gradient. Chia √d_k để giữ phương sai gần 1 ạ.)* |
| Watanabe准教授 | <ruby>正解<rt>せいかい</rt></ruby>です。<br>*(Đúng.)* |
| Inoue | (gật đầu) <ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Tiếp đi.)* |

---

## Tình huống 2 — Phòng seminar · 9/9 14:30, Đại bị sensei hỏi xoáy về multi-head

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>次<rt>つぎ</rt></ruby>はMulti-Head Attentionです。h<ruby>個<rt>こ</rt></ruby>(<ruby>論文<rt>ろんぶん</rt></ruby>では8)の<ruby>独立<rt>どくりつ</rt></ruby>したattention <ruby>機構<rt>きこう</rt></ruby>を<ruby>並列<rt>へいれつ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かし、<ruby>結果<rt>けっか</rt></ruby>を<ruby>連結<rt>れんけつ</rt></ruby>します。<br>*(Tiếp theo là Multi-Head Attention. Chạy song song h cơ chế attention độc lập (paper dùng 8), rồi nối kết quả.)* |
| Inoue | ダイくん、なぜ<ruby>複数<rt>ふくすう</rt></ruby>のheadが<ruby>必要<rt>ひつよう</rt></ruby>なんでしょう?1<ruby>個<rt>こ</rt></ruby>で<ruby>十分<rt>じゅうぶん</rt></ruby>ではないですか?<br>*(Đại, sao phải nhiều head? 1 head không đủ à?)* |
| Đại | (suy nghĩ 2 giây) えっと… <ruby>異<rt>こと</rt></ruby>なる<ruby>部分空間<rt>ぶぶんくうかん</rt></ruby>で<ruby>異<rt>こと</rt></ruby>なるパターンを<ruby>学習<rt>がくしゅう</rt></ruby>できるからです。<ruby>例<rt>たと</rt></ruby>えば、あるheadは<ruby>文法的<rt>ぶんぽうてき</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>、<ruby>別<rt>べつ</rt></ruby>のheadは<ruby>意味的<rt>いみてき</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>を<ruby>捉<rt>とら</rt></ruby>えると<ruby>論文<rt>ろんぶん</rt></ruby>5.4<ruby>節<rt>せつ</rt></ruby>で<ruby>分析<rt>ぶんせき</rt></ruby>されています。<br>*(Dạ... vì học được các pattern khác nhau trên các không gian con khác nhau. Ví dụ, head này bắt quan hệ ngữ pháp, head kia bắt quan hệ ngữ nghĩa — phân tích trong mục 5.4 của paper.)* |
| Inoue | いいですね。では<ruby>追加質問<rt>ついかしつもん</rt></ruby>:<ruby>多<rt>おお</rt></ruby>すぎるheadは<ruby>逆効果<rt>ぎゃくこうか</rt></ruby>になり<ruby>得<rt>え</rt></ruby>ますか?<br>*(Tốt. Hỏi thêm: nhiều head quá có phản tác dụng không?)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、その<ruby>点<rt>てん</rt></ruby>については<ruby>論文<rt>ろんぶん</rt></ruby>に<ruby>明記<rt>めいき</rt></ruby>されておらず、<ruby>確証<rt>かくしょう</rt></ruby>がありません。<ruby>後<rt>のち</rt></ruby>ほど<ruby>調<rt>しら</rt></ruby>べて<ruby>来週<rt>らいしゅう</rt></ruby>ご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Em xin lỗi, điểm này paper không nêu rõ, em chưa có chứng cứ. Em sẽ tra cứu và báo cáo tuần sau ạ.)* |
| Inoue | (gật) <ruby>分<rt>わ</rt></ruby>からないことを「<ruby>分<rt>わ</rt></ruby>からない」と<ruby>言<rt>い</rt></ruby>えるのは<ruby>研究者<rt>けんきゅうしゃ</rt></ruby>として<ruby>大事<rt>だいじ</rt></ruby>な<ruby>資質<rt>ししつ</rt></ruby>です。ヒント:Voita et al. 2019「Analyzing Multi-Head Self-Attention」を<ruby>読<rt>よ</rt></ruby>んでみてください。<br>*(Biết nói "không biết" với điều mình chưa biết là phẩm chất quan trọng của nhà nghiên cứu. Gợi ý: đọc Voita et al. 2019 "Analyzing Multi-Head Self-Attention".)* |
| Đại | (cúi) ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Em cảm ơn thầy chỉ giáo.)* |

---

## Tình huống 3 — Bàn Đại · 12/9 10:00, hỏi Yamada về positional encoding

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、お<ruby>時間<rt>じかん</rt></ruby><ruby>少<rt>すこ</rt></ruby>しよろしいでしょうか?<ruby>位置<rt>いち</rt></ruby>エンコーディングの<ruby>式<rt>しき</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Anh Yamada, em xin phép một chút thời gian. Anh giảng cho em ý nghĩa công thức positional encoding được không ạ?)* |
| Yamada | OK、ホワイトボードへ。<br>*(OK, lên bảng đi.)* |
| Yamada | (viết) PE(pos, 2i) = sin(pos / 10000^(2i/d_model)). <ruby>核心<rt>かくしん</rt></ruby>は<ruby>三角関数<rt>さんかくかんすう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って<ruby>位置情報<rt>いちじょうほう</rt></ruby>を<ruby>連続的<rt>れんぞくてき</rt></ruby>に<ruby>表現<rt>ひょうげん</rt></ruby>すること。<br>*(Cốt lõi là dùng hàm lượng giác để biểu diễn thông tin vị trí liên tục.)* |
| Đại | なぜsin/cosなのですか?learnable embeddingではダメなのでしょうか?<br>*(Sao lại sin/cos? Embedding learnable không được sao ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>!<ruby>論文<rt>ろんぶん</rt></ruby>では<ruby>両方<rt>りょうほう</rt></ruby><ruby>試<rt>ため</rt></ruby>したけど<ruby>性能<rt>せいのう</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだった。ただsin/cosは<ruby>学習時<rt>がくしゅうじ</rt></ruby>より<ruby>長<rt>なが</rt></ruby>い<ruby>系列<rt>けいれつ</rt></ruby>にも<ruby>外挿<rt>がいそう</rt></ruby>できる<ruby>利点<rt>りてん</rt></ruby>がある。<br>*(Câu hỏi hay! Paper thử cả hai, performance như nhau. Nhưng sin/cos có ưu điểm extrapolate được sang chuỗi dài hơn lúc train.)* |
| Đại | なるほど、<ruby>外挿性<rt>がいそうせい</rt></ruby>!よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra là tính extrapolate! Em hiểu rồi.)* |
| Yamada | あとは<ruby>波長<rt>はちょう</rt></ruby>が10000倍<ruby>変<rt>か</rt></ruby>わるから、<ruby>異<rt>こと</rt></ruby>なるスケールの<ruby>位置関係<rt>いちかんけい</rt></ruby>を<ruby>捉<rt>とら</rt></ruby>えられる。<br>*(Bước sóng còn thay đổi gấp 10000 lần, bắt được quan hệ vị trí ở nhiều thang đo khác nhau.)* |

---

## Tình huống 4 — Phòng seminar · 16/9 14:00, Sato-D seminar BERT

| Vai | Lời thoại |
|---|---|
| Sato (D3) | <ruby>本日<rt>ほんじつ</rt></ruby>はBERT、Devlin et al. 2018<ruby>年<rt>ねん</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>です。<ruby>事前学習<rt>じぜんがくしゅう</rt></ruby>タスクは2つ。<br>*(Hôm nay là BERT, Devlin et al. 2018. Có 2 task pre-training.)* |
| Sato | 1)MLM(Masked Language Model):トークンの15%をマスクして<ruby>予測<rt>よそく</rt></ruby>。<br>*(MLM: che 15% token để dự đoán.)* |
| Sato | 2)NSP(Next Sentence Prediction):2<ruby>文<rt>ぶん</rt></ruby>が<ruby>連続<rt>れんぞく</rt></ruby>するかを<ruby>判定<rt>はんてい</rt></ruby>。<br>*(NSP: phán đoán 2 câu có liên tiếp không.)* |
| Đại | (giơ tay) <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>質問<rt>しつもん</rt></ruby>させていただきます。15%という<ruby>比率<rt>ひりつ</rt></ruby>は<ruby>経験的<rt>けいけんてき</rt></ruby>に<ruby>決<rt>き</rt></ruby>めたのでしょうか?<br>*(Em xin phép hỏi. Tỷ lệ 15% là quyết định theo kinh nghiệm thôi ạ?)* |
| Sato | はい、ablation study(<ruby>論文<rt>ろんぶん</rt></ruby>Appendix C)で10〜20%を<ruby>試<rt>ため</rt></ruby>して15%が<ruby>最良<rt>さいりょう</rt></ruby>だったとあります。<ruby>後続<rt>こうぞく</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>(RoBERTa)では40%でも<ruby>有効<rt>ゆうこう</rt></ruby>と<ruby>報告<rt>ほうこく</rt></ruby>されてます。<br>*(Vâng, ablation study trong Appendix C thử 10-20%, 15% tốt nhất. Nghiên cứu sau (RoBERTa) báo cáo 40% cũng hiệu quả.)* |
| Đại | (note) RoBERTa <ruby>要<rt>よう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。ありがとうございました。<br>*(RoBERTa cần xác nhận lại. Em cảm ơn ạ.)* |

---

## Tình huống 5 — Bàn Đại · 18/9 9:30, lên kế hoạch fine-tune BERT-Japanese

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>実験設計<rt>じっけんせっけい</rt></ruby>について<ruby>相談<rt>そうだん</rt></ruby>したいのですが、<ruby>本日<rt>ほんじつ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>いただけますでしょうか?<br>*(Anh Yamada, em muốn xin tư vấn về thiết kế thực nghiệm, anh dành cho em 30 phút hôm nay được không ạ?)* |
| Yamada | OK、11<ruby>時<rt>じ</rt></ruby>からどう?<br>*(OK, 11 giờ thế nào?)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>事前<rt>じぜん</rt></ruby>にdocumentを<ruby>共有<rt>きょうゆう</rt></ruby>しておきます。<br>*(Em rõ ạ. Em share document trước.)* |
| (11:00 phòng họp nhỏ) <br> |
| Đại | (mở Notion doc) <ruby>研究目的<rt>けんきゅうもくてき</rt></ruby>:ベトナム<ruby>人学習者<rt>じんがくしゅうしゃ</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>誤<rt>あやま</rt></ruby>りパターンを<ruby>自動<rt>じどう</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>。データ:<ruby>自作<rt>じさく</rt></ruby>VN-learner JP error corpus 1,000<ruby>文<rt>ぶん</rt></ruby>(<ruby>正<rt>ただ</rt></ruby>500/<ruby>誤<rt>ご</rt></ruby>500)。<br>*(Mục tiêu: tự động phát hiện pattern lỗi tiếng Nhật của người học Việt. Data: corpus tự xây 1.000 câu (500 đúng/500 sai).)* |
| Đại | モデル:cl-tohoku/bert-base-japanese-v3を<ruby>二値分類<rt>にちぶんるい</rt></ruby>でfine-tune。<br>*(Model: cl-tohoku/bert-base-japanese-v3 fine-tune nhị phân.)* |
| Yamada | データ1,000はちょっと<ruby>少<rt>すく</rt></ruby>ないな。3<ruby>分割<rt>ぶんかつ</rt></ruby>するとtrain 700/val 150/test 150か。<br>*(Data 1000 hơi ít. Chia 3 thì train 700/val 150/test 150 nhỉ.)* |
| Đại | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>少<rt>すく</rt></ruby>ないので5-fold cross validation を<ruby>導入<rt>どうにゅう</rt></ruby>することを<ruby>検討<rt>けんとう</rt></ruby>しています。<br>*(Vâng, đúng vậy. Vì ít nên em đang cân nhắc áp dụng 5-fold cross validation.)* |
| Yamada | いいね。あとはベースラインを<ruby>必<rt>かなら</rt></ruby>ず<ruby>設定<rt>せってい</rt></ruby>して。ルールベース(<ruby>助詞<rt>じょし</rt></ruby><ruby>誤<rt>ご</rt></ruby><ruby>用<rt>よう</rt></ruby><ruby>辞書<rt>じしょ</rt></ruby>マッチング)とTF-IDF + SVMの2つは<ruby>必須<rt>ひっす</rt></ruby>。<br>*(Tốt. Còn phải set baseline. Rule-based (dictionary matching lỗi trợ từ) và TF-IDF + SVM là 2 baseline bắt buộc.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>来週<rt>らいしゅう</rt></ruby>までにベースライン<ruby>実装<rt>じっそう</rt></ruby>+ <ruby>結果<rt>けっか</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Em rõ ạ. Tuần sau em sẽ implement baseline + share kết quả.)* |

---

## Tình huống 6 — Bàn Đại · 23/9 weekend ở nhà, fine-tune BERT lần đầu

*Cuối tuần, Đại ngồi bàn nhỏ ở phòng khách Toyonaka. Mai đang ngủ, Hana ngủ trong cũi.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ terminal) `pip install transformers datasets accelerate`<br> |
| Đại | (Python code) <br>```python<br>from transformers import AutoTokenizer, AutoModelForSequenceClassification<br>from transformers import Trainer, TrainingArguments<br>import torch<br><br>MODEL = "cl-tohoku/bert-base-japanese-v3"<br>tokenizer = AutoTokenizer.from_pretrained(MODEL)<br>model = AutoModelForSequenceClassification.from_pretrained(MODEL, num_labels=2)<br><br># Fine-tune args<br>args = TrainingArguments(<br>    output_dir="./hizashi-bert-v1",<br>    num_train_epochs=3,<br>    per_device_train_batch_size=8,<br>    learning_rate=2e-5,<br>    eval_strategy="epoch",<br>    save_strategy="epoch",<br>)<br>``` |
| Đại | (Trainer.train() chạy 25 phút trên MPS) Epoch 1 val acc 71%, Epoch 2 val acc 76%, Epoch 3 val acc 78%.<br> |
| Mai | (từ giường, tiếng Việt) Anh ơi! Hana đói rồi, em pha sữa nhé. |
| Đại | (tiếng Việt) Em để anh. Em ngủ tiếp đi, đêm qua em dậy 3 lần rồi. |
| Mai | (tiếng Việt) Anh sao rồi? Code chạy được không? |
| Đại | (tiếng Việt) Được rồi em. Fine-tune BERT phát hiện câu sai tiếng Nhật của người Việt, đạt 78%. Mầm Hizashi có dạng kỹ thuật rồi đấy! |
| Mai | (tiếng Việt, cười) Anh giỏi quá. Pha sữa cho con xong rồi đi ngủ chút đi. |

---

## Tình huống 7 — Slack DM Yamada · 24/9 10:00 chủ nhật

| Vai | Lời thoại |
|---|---|
| Đại | (Slack) <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>週末<rt>しゅうまつ</rt></ruby><ruby>失礼<rt>しつれい</rt></ruby>します。BERT fine-tune<ruby>初回<rt>しょかい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Anh Yamada, em xin phép làm phiền cuối tuần. Em báo cáo kết quả fine-tune BERT lần đầu.)* |
| Đại | (Slack)<br>- Model: bert-base-japanese-v3<br>- Data: 1,000<ruby>文<rt>ぶん</rt></ruby>(700/150/150 split)<br>- 3 epochs, lr 2e-5, batch 8<br>- Val acc 78%, Test acc 76%<br>- Baseline比較:Rule-based 62%, TF-IDF+SVM 68%<br>- BERTが<ruby>明確<rt>めいかく</rt></ruby>に<ruby>優位<rt>ゆうい</rt></ruby>(+8〜14pt) |
| Yamada | (Slack, 30分後) おお、いいやん!ベースラインも<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>立<rt>た</rt></ruby>てたのが<ruby>偉<rt>えら</rt></ruby>い!<ruby>井上先生<rt>いのうえせんせい</rt></ruby>にも<ruby>共有<rt>きょうゆう</rt></ruby>しといて。<br>*(Ồ tốt đấy! Lập baseline nghiêm túc là điểm hay! Share thầy Inoue luôn nhé.)* |
| Yamada | (Slack)<ruby>次<rt>つぎ</rt></ruby>のステップ:データを2,000〜3,000<ruby>文<rt>ぶん</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やす。あとerror analysis、どんな<ruby>誤<rt>ご</rt></ruby><ruby>用<rt>よう</rt></ruby>パターンが<ruby>難<rt>むずか</rt></ruby>しいか<ruby>調<rt>しら</rt></ruby>べる。<br>*(Bước tiếp: tăng data lên 2.000-3.000 câu. Và error analysis — xem lỗi nào model khó phát hiện.)* |
| Đại | (Slack) <ruby>承知<rt>しょうち</rt></ruby>しました!<ruby>来週<rt>らいしゅう</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Em rõ! Tuần sau em làm.)* |

---

## Tình huống 8 — 1on1 Inoue-sensei · 25/9 14:00, báo cáo Hizashi v0.1

| Vai | Lời thoại |
|---|---|
| Đại | (cúi) <ruby>井上先生<rt>いのうえせんせい</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>いただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>はHizashi v0.1のベースライン<ruby>実験<rt>じっけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Thầy Inoue, em cảm ơn thầy dành thời gian. Hôm nay em báo cáo kết quả thực nghiệm baseline Hizashi v0.1.)* |
| Inoue | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | (slide) bert-base-japanese-v3を<ruby>自作<rt>じさく</rt></ruby>1,000<ruby>文<rt>ぶん</rt></ruby>VN-learner corpusでfine-tuneし、test acc 76%を<ruby>達成<rt>たっせい</rt></ruby>しました。Rule-based 62%、TF-IDF+SVM 68%を<ruby>明確<rt>めいかく</rt></ruby>に<ruby>上回<rt>うわまわ</rt></ruby>っています。<br>*(Fine-tune bert-base-japanese-v3 trên corpus 1.000 câu tự xây, test acc 76%. Vượt rõ Rule-based 62% và TF-IDF+SVM 68%.)* |
| Inoue | データ1,000は<ruby>論文<rt>ろんぶん</rt></ruby>として<ruby>主張<rt>しゅちょう</rt></ruby>するには<ruby>少<rt>すく</rt></ruby>ないですね。<ruby>統計的<rt>とうけいてき</rt></ruby><ruby>有意性<rt>ゆういせい</rt></ruby>はどう<ruby>担保<rt>たんぽ</rt></ruby>しますか?<br>*(1.000 hơi ít để công bố thành paper. Đảm bảo ý nghĩa thống kê thế nào?)* |
| Đại | はい、ご<ruby>指摘<rt>してき</rt></ruby>の<ruby>通<rt>とお</rt></ruby>りです。<ruby>来月<rt>らいげつ</rt></ruby>までに3,000<ruby>文<rt>ぶん</rt></ruby>まで<ruby>拡張<rt>かくちょう</rt></ruby>し、5-fold cross validationで95%<ruby>信頼<rt>しんらい</rt></ruby><ruby>区間<rt>くかん</rt></ruby>を<ruby>算出<rt>さんしゅつ</rt></ruby>する<ruby>計画<rt>けいかく</rt></ruby>です。<br>*(Vâng, đúng như thầy chỉ ra. Em sẽ mở rộng lên 3.000 câu vào tháng sau, dùng 5-fold cross validation tính khoảng tin cậy 95%.)* |
| Inoue | <ruby>計画<rt>けいかく</rt></ruby>が<ruby>具体的<rt>ぐたいてき</rt></ruby>ですね。それから、エラー<ruby>分析<rt>ぶんせき</rt></ruby>はやっていますか?<br>*(Kế hoạch cụ thể đấy. Còn error analysis thì sao?)* |
| Đại | まだです。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>着手<rt>ちゃくしゅ</rt></ruby>します。<ruby>助詞<rt>じょし</rt></ruby><ruby>誤<rt>ご</rt></ruby><ruby>用<rt>よう</rt></ruby>・<ruby>動詞<rt>どうし</rt></ruby><ruby>活用<rt>かつよう</rt></ruby><ruby>誤<rt>ご</rt></ruby>り・<ruby>語順<rt>ごじゅん</rt></ruby><ruby>誤<rt>ご</rt></ruby>りの3カテゴリに<ruby>分類<rt>ぶんるい</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Chưa ạ. Tuần sau em bắt đầu. Em dự định phân loại thành 3 category: sai trợ từ, sai chia động từ, sai trật tự từ.)* |
| Inoue | いいですね。それから、<ruby>長期的<rt>ちょうきてき</rt></ruby>には<ruby>誤<rt>ご</rt></ruby>検出だけでなく<ruby>正<rt>ただ</rt></ruby>しい<ruby>表現<rt>ひょうげん</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>もできるとよいですね。GPTとの<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせを<ruby>検討<rt>けんとう</rt></ruby>してください。<br>*(Tốt. Còn về dài hạn, không chỉ phát hiện lỗi mà còn gợi ý cách diễn đạt đúng nữa thì hay. Cân nhắc kết hợp GPT nhé.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。BERTで<ruby>検出<rt>けんしゅつ</rt></ruby>、GPTで<ruby>修正<rt>しゅうせい</rt></ruby><ruby>提案<rt>ていあん</rt></ruby> — Hizashiの<ruby>基本<rt>きほん</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>が<ruby>見<rt>み</rt></ruby>えてきました。ありがとうございます。<br>*(Vâng, em rõ. BERT phát hiện, GPT gợi ý sửa — kiến trúc cơ bản Hizashi đã rõ. Em cảm ơn thầy.)* |

---

## Tình huống 9 — Lounge lab · 29/9 18:00, từ chối tiệc Watanabe准教授

| Vai | Lời thoại |
|---|---|
| Watanabe | みんな、<ruby>金曜<rt>きんよう</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>梅田<rt>うめだ</rt></ruby>で<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>飲<rt>の</rt></ruby>み<ruby>会<rt>かい</rt></ruby>やるよ!<ruby>新入生<rt>しんにゅうせい</rt></ruby>も<ruby>来<rt>こ</rt></ruby>られる<ruby>人<rt>ひと</rt></ruby>は<ruby>来<rt>き</rt></ruby>てね!<br>*(Mọi người, tối thứ Sáu có tiệc lab ở Umeda nhé! Tân sinh viên ai đến được thì đến!)* |
| Suzuki (B3) | <ruby>行<rt>い</rt></ruby>きまーす!<br>*(Em đi!)* |
| Takahashi | <ruby>俺<rt>おれ</rt></ruby>も!<br>*(Tớ nữa!)* |
| Đại | (do dự rồi đứng lên) <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>でお<ruby>休<rt>やす</rt></ruby>みさせていただきます。<ruby>娘<rt>むすめ</rt></ruby>がまだ<ruby>生後<rt>せいご</rt></ruby>2ヶ<ruby>月<rt>げつ</rt></ruby>でして…<br>*(Thưa thầy Watanabe, em xin lỗi, vì việc gia đình em xin được vắng. Con gái em mới 2 tháng tuổi ạ...)* |
| Watanabe | あ、もちろん!<ruby>育児<rt>いくじ</rt></ruby>が<ruby>最優先<rt>さいゆうせん</rt></ruby>です。<ruby>気<rt>き</rt></ruby>にしないで。<br>*(Ồ tất nhiên! Việc chăm con ưu tiên nhất. Đừng ngại.)* |
| Đại | ご<ruby>理解<rt>りかい</rt></ruby>ありがとうございます。<br>*(Em cảm ơn thầy thông cảm ạ.)* |
| Suzuki | (nhỏ với Đại) ダイくん、すごいね、お<ruby>父<rt>とう</rt></ruby>さん!<br>*(Đại oai thật, làm bố rồi đấy!)* |
| Đại | (cười nhẹ) <ruby>夜<rt>よる</rt></ruby>2<ruby>回<rt>かい</rt></ruby><ruby>授乳<rt>じゅにゅう</rt></ruby>で<ruby>起<rt>お</rt></ruby>きるから、<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>く<ruby>体力<rt>たいりょく</rt></ruby>がないんだよ。<br>*(Đêm dậy cho con bú 2 lần, không còn sức đi nhậu đâu.)* |

---

## Tình huống 10 — Hành lang lab · 1/10 11:00, Đại gặp Kim (D2 hội thoại) hỏi GPT

| Vai | Lời thoại |
|---|---|
| Đại | Kimさん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいですか?<ruby>井上先生<rt>いのうえせんせい</rt></ruby>から「GPTとの<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせ」を<ruby>検討<rt>けんとう</rt></ruby>するよう<ruby>言<rt>い</rt></ruby>われまして、<ruby>対話<rt>たいわ</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>のKimさんにご<ruby>相談<rt>そうだん</rt></ruby>できればと…<br>*(Anh Kim, em xin chút thời gian được không? Thầy Inoue bảo em cân nhắc kết hợp với GPT, em muốn xin tư vấn của anh chuyên hội thoại...)* |
| Kim (D2) | もちろん!ラウンジ<ruby>行<rt>い</rt></ruby>こうか。<br>*(Tất nhiên! Đi lounge nhé.)* |
| (lounge) <br> |
| Kim | Hizashiの<ruby>場合<rt>ばあい</rt></ruby>、GPTを<ruby>使<rt>つか</rt></ruby>うとしたら2つの<ruby>選択肢<rt>せんたくし</rt></ruby>がある。1)OpenAI API、2)Llama 3 local hosting。<br>*(Trường hợp Hizashi, dùng GPT có 2 lựa chọn: 1) OpenAI API, 2) Llama 3 self-host.)* |
| Đại | コスト<ruby>面<rt>めん</rt></ruby>はどうでしょうか?<br>*(Về mặt chi phí thế nào ạ?)* |
| Kim | OpenAIは1<ruby>万<rt>まん</rt></ruby>クエリで<ruby>数百<rt>すうひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、Llama 3は GPUサーバー<ruby>必要<rt>ひつよう</rt></ruby>だけど<ruby>従量課金<rt>じゅうりょうかきん</rt></ruby>ナシ。<ruby>事業<rt>じぎょう</rt></ruby>として<ruby>展開<rt>てんかい</rt></ruby>するなら<ruby>後者<rt>こうしゃ</rt></ruby>。<br>*(OpenAI vài trăm yên/10.000 query, Llama 3 cần GPU server nhưng không tính theo lượng. Nếu triển khai làm business thì option 2.)* |
| Đại | なるほど…<ruby>修士<rt>しゅうし</rt></ruby><ruby>時代<rt>じだい</rt></ruby>はOpenAI API、<ruby>事業化<rt>じぎょうか</rt></ruby><ruby>時<rt>じ</rt></ruby>はLlama 3 — その<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えで<ruby>進<rt>すす</rt></ruby>めようと<ruby>思<rt>おも</rt></ruby>います。<br>*(Ra vậy... Thời thạc sĩ dùng OpenAI API, lúc startup hoá thì chuyển Llama 3 — em sẽ đi theo lộ trình đó.)* |
| Kim | いいプランだね。<br>*(Plan tốt đấy.)* |

---

## Tình huống 11 — Bàn Đại · 3/10 20:00, Hana cười lần đầu

*Đại đang code trên laptop ở phòng khách. Hana 2 tháng nằm trên ghế gấu trúc.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, hét nhỏ) Anh ơi! Hana cười rồi! |
| Đại | (tiếng Việt, đứng bật dậy) Hả? Cười thật á? |
| Mai | (tiếng Việt) Vừa cười xong! Anh thử làm mặt cười cho con xem! |
| Đại | (làm mặt cười với Hana) Hana ơi! Bố đây con! |
| Hana | (cười khoé miệng) <br>*(Cười toe.)* |
| Đại | (tiếng Việt, mắt rưng) Trời ơi! Con cười rồi em! Lần đầu nhé! |
| Mai | (tiếng Việt) Anh chụp ảnh đi! Gửi cô Yumi với mẹ ở VN! |
| Đại | (tiếng Việt) Vâng vâng. Anh quay video luôn! |

---

## Tình huống 12 — LINE group + gọi điện về VN · 3/10 21:00

| Vai | Lời thoại |
|---|---|
| Đại | (LINE group, gửi video) Cả nhà ơi! Hana cười lần đầu lúc 8 giờ tối nay! 2 tháng 28 ngày tuổi! |
| Mẹ Đại | (VN) Trời ơi cháu xinh quá! Bà nội xem đi xem lại không chán! |
| Yumi | (JP) <ruby>陽奈<rt>ひな</rt></ruby>ちゃん、<ruby>笑顔<rt>えがお</rt></ruby><ruby>最高<rt>さいこう</rt></ruby>!<ruby>明日<rt>あした</rt></ruby><ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>くわ!<br>*(Bé Hina cười tuyệt vời! Mai cô qua xem!)* |
| (Đại gọi video bố mẹ ở Hà Nội) <br> |
| Bố Đại | (VN) Đại ơi! Cháu cười lần đầu đấy! Đại có nhớ con khi nào cười lần đầu không? |
| Đại | (VN) Con không nhớ bố ạ. Chắc bố mẹ ghi vào sổ tay nhỉ? |
| Mẹ Đại | (VN) Có chứ! Con cười lần đầu 2 tháng 15 ngày. Hana muộn hơn anh chút. |
| Đại | (VN) Bố mẹ ơi, dạo này nghiên cứu thuận lợi. Em fine-tune model BERT phát hiện lỗi câu tiếng Nhật của người Việt, đạt 76% rồi. Thầy Inoue khen kế hoạch cụ thể. |
| Bố Đại | (VN) Bố mừng cho con. Vừa làm bố vừa làm nghiên cứu, đừng quá sức nhé. |
| Mai | (VN, ghé vào) Mẹ ơi, anh ấy đêm nào cũng dậy thay tã thay cho con đấy. Con không thiếu ngủ đâu. |
| Mẹ Đại | (VN) Tốt rồi. Vợ chồng chia sẻ nhau là tốt. Cô Yumi vẫn sang nấu cháo gà chứ? |
| Mai | (VN) Vâng mẹ, tuần 3 lần. Cô Yumi nói chăm Mai như con dâu cô ấy luôn. |
| Bố Đại | (VN) Cảm ơn cô chú Tony-Yumi nhiều! Tết bố mẹ sẽ gửi cà phê Buôn Ma Thuột sang cảm ơn. |

---

## Đọng lại chương 4

Tháng 9-10/2028. Sau 1 tuần nghỉ chăm Hana, Đại quay lại lab full-time và hoàn thành phase 2 lộ trình của Inoue-sensei: thuyết trình paper **Attention Is All You Need** trong seminar, học **BERT** từ Sato-D, hỏi Yamada về **positional encoding sin/cos**, hỏi Kim về **GPT (OpenAI API vs Llama 3 local)**. Học các mẫu câu seminar quan trọng: **「本日の論文を紹介させていただきます」** (mở đầu seminar), **「申し訳ありません、その点については確証がありません。後ほど調べてご報告させていただきます」** (trả lời "không biết" với sensei chuyên nghiệp), **「実験設計について相談したいのですが、お時間いただけますでしょうか」** (xin senpai tư vấn), **「結果をご報告いたします」** (báo cáo kết quả qua Slack/email), **「家族の都合でお休みさせていただきます」** (từ chối tiệc lab khéo). Fine-tune **bert-base-japanese-v3** lần đầu trên corpus VN-learner 1.000 câu, đạt **test acc 76%**, vượt baseline Rule-based 62% và TF-IDF+SVM 68%. Inoue-sensei chốt kiến trúc Hizashi: **BERT phát hiện lỗi + GPT gợi ý sửa**. Hana 2 tháng cười lần đầu — bố mẹ ở VN xúc động qua video call. Hai mầm Hizashi + Hana cùng lớn.

> Từ vựng & mẫu câu chương này: Transformer・Self-Attention・Scaled Dot-Product・Multi-Head・positional encoding・BERT・MLM・NSP・RoBERTa・fine-tuning・bert-base-japanese-v3・cross validation・ablation study・error analysis・統計的有意性・ベースライン・本日の論文を紹介させていただきます・確証がありません・後ほどご報告させていただきます・実験設計について相談したいのですが・家族の都合でお休みさせていただきます・ご指導ありがとうございます・お時間いただけますでしょうか・分からないと言える資質

## Bí quyết chương

- **Thuyết trình paper trong seminar có cấu trúc 3 bước**: 1) 紹介させていただきます + tác giả/năm, 2) 貢献は3つ (đóng góp), 3) 核心 + công thức. Đừng đọc abstract — paraphrase thành 3 điểm rõ ràng.
- **Sensei hỏi xoáy = cơ hội, không phải bẫy**: Khi Inoue hỏi điều bạn không biết, đừng bịa. 「申し訳ありません、確証がありません。後ほど調べてご報告させていただきます」 — sensei sẽ tôn trọng. Bịa = mất uy tín.
- **Báo cáo kết quả qua Slack có FORMAT**: Bullet point — Model / Data / Hyperparam / Metric / Baseline比較 / 考察. Yamada sẽ reply trong 30 phút.
- **1on1 sensei = chuẩn bị doc + slide**: Đừng đến tay không. Notion doc share trước → sensei đọc trong khi bạn trình bày → câu hỏi xoáy hơn nhưng dùng được sâu hơn.
- **Từ chối tiệc lab vì gia đình = OK ở Nhật học thuật**: 「家族の都合でお休みさせていただきます。娘がまだ生後2ヶ月でして」 — sensei Nhật hiện đại tôn trọng育児 (chăm con) tuyệt đối. Trẻ con < 6 tháng là lá chắn miễn dịch.
- **Hai mầm cùng lớn**: Hizashi (kỹ thuật BERT+GPT) và Hana (cười lần đầu) — phép song hành đẹp của T4. Báo bố mẹ VN qua video call về cả nghiên cứu lẫn cháu.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 論文 | ろんぶん | LUẬN VĂN | Bài báo khoa học |
| 貢献 | こうけん | CỐNG HIẾN | Đóng góp |
| 注意機構 | ちゅういきこう | CHÚ Ý CƠ CẤU | Cơ chế attention |
| 系列 | けいれつ | HỆ LIỆT | Chuỗi |
| 変換 | へんかん | BIẾN HOÁN | Biến đổi |
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 高速化 | こうそくか | CAO TỐC HOÁ | Tăng tốc |
| 分母 | ぶんぼ | PHÂN MẪU | Mẫu số |
| 次元数 | じげんすう | THỨ NGUYÊN SỐ | Số chiều |
| 飽和 | ほうわ | BÃO HOÀ | Bão hoà |
| 消失 | しょうしつ | TIÊU THẤT | Biến mất |
| 分散 | ぶんさん | PHÂN TÁN | Phương sai |
| 抑える | おさえる | ỨC | Kìm giữ |
| 正解 | せいかい | CHÍNH GIẢI | Đáp án đúng |
| 続ける | つづける | TỤC | Tiếp tục |
| 複数 | ふくすう | PHỨC SỐ | Nhiều |
| 独立 | どくりつ | ĐỘC LẬP | Độc lập |
| 連結 | れんけつ | LIÊN KẾT | Nối, ghép |
| 異なる | ことなる | DỊ | Khác biệt |
| 部分空間 | ぶぶんくうかん | BỘ PHẬN KHÔNG GIAN | Không gian con |
| 文法的 | ぶんぽうてき | VĂN PHÁP ĐÍCH | Thuộc ngữ pháp |
| 関係 | かんけい | QUAN HỆ | Quan hệ |
| 意味的 | いみてき | Ý NGHĨA ĐÍCH | Thuộc ngữ nghĩa |
| 捉える | とらえる | TRÓC | Bắt, nắm bắt |
| 分析 | ぶんせき | PHÂN TÍCH | Phân tích |
| 追加質問 | ついかしつもん | TRUY GIA CHẤT VẤN | Câu hỏi bổ sung |
| 逆効果 | ぎゃくこうか | NGHỊCH HIỆU QUẢ | Phản tác dụng |
| 明記 | めいき | MINH KÝ | Ghi rõ |
| 確証 | かくしょう | XÁC CHỨNG | Bằng chứng chắc chắn |
| 資質 | ししつ | TƯ CHẤT | Phẩm chất |
| 位置 | いち | VỊ TRÍ | Vị trí |
| 三角関数 | さんかくかんすう | TAM GIÁC HÀM SỐ | Hàm lượng giác |
| 位置情報 | いちじょうほう | VỊ TRÍ TÌNH BÁO | Thông tin vị trí |
| 連続的 | れんぞくてき | LIÊN TỤC ĐÍCH | Liên tục |
| 表現 | ひょうげん | BIỂU HIỆN | Biểu diễn |
| 性能 | せいのう | TÍNH NĂNG | Hiệu năng |
| 学習時 | がくしゅうじ | HỌC TẬP THỜI | Lúc huấn luyện |
| 外挿 | がいそう | NGOẠI TRA | Ngoại suy (extrapolate) |
| 利点 | りてん | LỢI ĐIỂM | Ưu điểm |
| 波長 | はちょう | BA TRƯỜNG | Bước sóng |
| 事前学習 | じぜんがくしゅう | SỰ TIỀN HỌC TẬP | Pre-training |
| 予測 | よそく | DỰ TRẮC | Dự đoán |
| 連続 | れんぞく | LIÊN TỤC | Liên tiếp |
| 判定 | はんてい | PHÁN ĐỊNH | Phán đoán |
| 比率 | ひりつ | TỶ SUẤT | Tỷ lệ |
| 経験的 | けいけんてき | KINH NGHIỆM ĐÍCH | Theo kinh nghiệm |
| 最良 | さいりょう | TỐI LƯƠNG | Tốt nhất |
| 後続 | こうぞく | HẬU TỤC | Tiếp theo, kế tiếp |
| 有効 | ゆうこう | HỮU HIỆU | Có hiệu quả |
| 実験設計 | じっけんせっけい | THỰC NGHIỆM THIẾT KẾ | Thiết kế thí nghiệm |
| 自作 | じさく | TỰ TÁC | Tự xây/làm |
| 二値分類 | にちぶんるい | NHỊ TRỊ PHÂN LOẠI | Phân loại nhị phân |
| 分割 | ぶんかつ | PHÂN CÁT | Chia tách |
| 導入 | どうにゅう | ĐẠO NHẬP | Đưa vào, áp dụng |
| 検討 | けんとう | KIỂM THẢO | Cân nhắc |
| 助詞 | じょし | TRỢ TỪ | Trợ từ |
| 誤用 | ごよう | NGỘ DỤNG | Dùng sai |
| 辞書 | じしょ | TỪ THƯ | Từ điển |
| 着手 | ちゃくしゅ | TRỨ THỦ | Bắt tay vào |
| 動詞活用 | どうしかつよう | ĐỘNG TỪ HOẠT DỤNG | Chia động từ |
| 語順 | ごじゅん | NGỮ THUẬN | Trật tự từ |
| 統計的 | とうけいてき | THỐNG KÊ ĐÍCH | Theo thống kê |
| 有意性 | ゆういせい | HỮU Ý TÍNH | Tính ý nghĩa thống kê |
| 担保 | たんぽ | ĐẢM BẢO | Đảm bảo |
| 拡張 | かくちょう | KHUẾCH TRƯƠNG | Mở rộng |
| 信頼区間 | しんらいくかん | TÍN LẠI KHU GIAN | Khoảng tin cậy |
| 算出 | さんしゅつ | TOÁN XUẤT | Tính ra |
| 指摘 | してき | CHỈ TRÍCH | Chỉ ra |
| 長期的 | ちょうきてき | TRƯỜNG KỲ ĐÍCH | Dài hạn |
| 基本構成 | きほんこうせい | CƠ BẢN CẤU THÀNH | Cấu trúc cơ bản |
| 抱負 | ほうふ | BÃO PHỤ | Hoài bão |
| 体力 | たいりょく | THỂ LỰC | Thể lực |
| 授乳 | じゅにゅう | THỤ NHŨ | Cho con bú |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | Lựa chọn |
| 従量課金 | じゅうりょうかきん | TÒNG LƯỢNG KHOÁ KIM | Trả theo lượng dùng |
| 事業 | じぎょう | SỰ NGHIỆP | Sự nghiệp, business |
| 展開 | てんかい | TRIỂN KHAI | Triển khai |
| 事業化 | じぎょうか | SỰ NGHIỆP HOÁ | Thương mại hoá |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000005, 800000023, NULL, 'markdown_book', 'T5. Cybozu intern khởi động — RAG project (Cybozu長期インターン)', '# Sách sinh viên Đại học Osaka · T5. Cybozu intern khởi động — RAG project (Cybozu長期インターン)

> **Mục tiêu nhân vật:** Đại 23 tuổi, năm 3 CS, 5/2028, intern dài hạn 3 tháng tại Cybozu R&D Osaka. Học các mẫu hội thoại tiếng Nhật của intern engineer: (1) chào hỏi onboarding ngày đầu, (2) hỏi lại khi chưa hiểu thuật ngữ tech, (3) báo cáo tiến độ với mentor, (4) keigo xin remote work vì lý do gia đình, (5) tự giới thiệu trước team trong morning standup, (6) đặt câu hỏi technical về kiến trúc hệ thống.

---

## Bối cảnh

Tháng 5 năm 2028. Đại 23 tuổi, sinh viên năm 3 CS Đại học Osaka, vừa kết thúc kỳ thi giữa kỳ. Mai đang mang thai Hana (dự sinh 5/8/2028, hiện 6 tháng). Hôm nay là Day 1 của kỳ thực tập dài hạn 3 tháng (5-7/2028) tại Cybozu Osaka R&D, dự án RAG document search cho Kintone. Mentor là anh Inomata-san (intern coordinator). Stipend ¥250k/tháng. Chương này tập trung các mẫu câu keigo công ty Nhật + technical Japanese trong môi trường intern engineer Nhật.

---

## Tình huống 1 — Cybozu Osaka lobby · 8:45, ngày đầu tiên trình diện reception

| Vai | Lời thoại |
|---|---|
| Đại | (đến quầy lễ tân, cúi chào) おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>長期<rt>ちょうき</rt></ruby>インターンでお<ruby>世話<rt>せわ</rt></ruby>になります、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>応<rt>おう</rt></ruby>グエンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào buổi sáng. Em là Nguyễn Đại, sinh viên Đại học Osaka, hôm nay bắt đầu kỳ thực tập dài hạn tại quý công ty.)* |
| Lễ tân | グエンさんですね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>猪股<rt>いのまた</rt></ruby>がすぐ<ruby>参<rt>まい</rt></ruby>りますので、こちらでお<ruby>掛<rt>か</rt></ruby>けになってお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Anh Nguyễn nhỉ. Chúng tôi đã chờ. Anh Inomata sẽ tới ngay, mời em ngồi đây chờ một lát.)* |
| Đại | はい、ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。(ngồi xuống, hít sâu) <br>*(Vâng, em cảm ơn. Em xin phép ạ.)* |
| Inomata | (bước ra) グエンさん、お<ruby>久<rt>ひさ</rt></ruby>しぶり！<ruby>本日<rt>ほんじつ</rt></ruby>からよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đại, lâu rồi mới gặp! Từ hôm nay nhờ em nhé.)* |
| Đại | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em mới phải nhờ anh ạ. Trong 3 tháng tới em sẽ cố gắng hết mình.)* |

---

## Tình huống 2 — Cybozu R&D floor · 9:30, onboarding tour + nhận laptop/badge

*Inomata dẫn Đại đi qua dãy ghế làm việc rộng, dừng tại chỗ ngồi gắn biển「インターン: 応・グエン」.*

| Vai | Lời thoại |
|---|---|
| Inomata | こちらがグエンさんの<ruby>席<rt>せき</rt></ruby>です。MacBook ProとモニターとSlackアカウント、すでに<ruby>準備<rt>じゅんび</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Đây là chỗ ngồi của em. MacBook Pro, màn hình, tài khoản Slack — đã chuẩn bị sẵn.)* |
| Đại | ありがとうございます。<ruby>入館<rt>にゅうかん</rt></ruby>カードはどちらでいただけますか?<br>*(Em cảm ơn ạ. Thẻ ra vào em nhận ở đâu ạ?)* |
| Inomata | あ、そうそう。<ruby>総務<rt>そうむ</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。<ruby>後<rt>あと</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。それから、<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は10時から19時、<ruby>休憩<rt>きゅうけい</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby>です。<br>*(À, đúng rồi. Em nhận ở phòng tổng vụ. Lát nữa anh dẫn em đi. Giờ làm việc là 10h-19h, nghỉ giải lao 1 tiếng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。コアタイムはございますか?<br>*(Em đã rõ ạ. Có giờ core time không ạ?)* |
| Inomata | 11時から16時がコアタイムです。<ruby>朝<rt>あさ</rt></ruby><ruby>夕<rt>ゆう</rt></ruby>はフレックスで<ruby>調整<rt>ちょうせい</rt></ruby>OKです。<ruby>奥<rt>おく</rt></ruby>さまが<ruby>妊娠中<rt>にんしんちゅう</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>っていますから、<ruby>柔軟<rt>じゅうなん</rt></ruby>に<ruby>使<rt>つか</rt></ruby>ってくださいね。<br>*(Core time là 11h-16h. Sáng và chiều có thể linh hoạt. Anh nghe nói vợ em đang mang thai, em cứ dùng linh hoạt nhé.)* |
| Đại | ご<ruby>配慮<rt>はいりょ</rt></ruby>ありがとうございます。<br>*(Em cảm ơn anh đã quan tâm ạ.)* |

---

## Tình huống 3 — Phòng họp Mizuho · 10:30, kickoff project RAG với senior engineer Sato-san

| Vai | Lời thoại |
|---|---|
| Sato (senior 35t) | はじめまして、シニアエンジニアの<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にRAGシステムを<ruby>作<rt>つく</rt></ruby>っていきましょう。<br>*(Lần đầu gặp em, tôi là Sato, senior engineer. 3 tháng tới ta cùng xây hệ thống RAG nhé.)* |
| Đại | はじめまして、グエンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp anh, em là Nguyễn ạ. Mong anh chỉ bảo.)* |
| Sato | プロジェクトの<ruby>概要<rt>がいよう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。Kintoneの<ruby>顧客<rt>こきゃく</rt></ruby>ドキュメントが<ruby>累計<rt>るいけい</rt></ruby>5<ruby>万件<rt>まんけん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>あって、<ruby>自然<rt>しぜん</rt></ruby><ruby>言語<rt>げんご</rt></ruby>で<ruby>検索<rt>けんさく</rt></ruby>できるようにしたいんです。<br>*(Tôi giải thích sơ về dự án. Có hơn 50.000 tài liệu khách hàng Kintone, tụi tôi muốn tìm kiếm được bằng ngôn ngữ tự nhiên.)* |
| Đại | RAGというのは、Retrieval-Augmented Generationの<ruby>略<rt>りゃく</rt></ruby>ですよね?<br>*(RAG là viết tắt của Retrieval-Augmented Generation phải không ạ?)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>りです。よくご<ruby>存知<rt>ぞんじ</rt></ruby>ですね。<ruby>大<rt>おお</rt></ruby>まかな<ruby>流<rt>なが</rt></ruby>れは<ruby>三<rt>みっ</rt></ruby>つ。ドキュメントをembeddingしてvector DBに<ruby>入<rt>い</rt></ruby>れる、<ruby>質問<rt>しつもん</rt></ruby>をembeddingしてsemantic searchで<ruby>関連<rt>かんれん</rt></ruby>ドキュメントを<ruby>取<rt>と</rt></ruby>ってくる、LLMに<ruby>渡<rt>わた</rt></ruby>して<ruby>回答<rt>かいとう</rt></ruby>を<ruby>生成<rt>せいせい</rt></ruby>する。<br>*(Đúng vậy. Em biết rõ nhỉ. Quy trình tổng quát có 3 bước: embed tài liệu rồi đưa vào vector DB; embed câu hỏi rồi semantic search lấy doc liên quan; đưa cho LLM để sinh câu trả lời.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。LLMはClaude APIを<ruby>使<rt>つか</rt></ruby>う<ruby>予定<rt>よてい</rt></ruby>でしょうか?<br>*(Em đã rõ. Cho em xác nhận một điều. LLM dự kiến dùng Claude API ạ?)* |
| Sato | はい、Claude 3.5 Sonnetを<ruby>予定<rt>よてい</rt></ruby>しています。<ruby>日本語<rt>にほんご</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>いので。<br>*(Đúng, dự kiến dùng Claude 3.5 Sonnet. Vì nó mạnh tiếng Nhật.)* |

---

## Tình huống 4 — Cybozu R&D · 11:00, hỏi lại khi chưa hiểu thuật ngữ pgvector

| Vai | Lời thoại |
|---|---|
| Sato | Vector DBはpgvectorを<ruby>使<rt>つか</rt></ruby>います。Cybozuは<ruby>全社的<rt>ぜんしゃてき</rt></ruby>にPostgreSQLを<ruby>採用<rt>さいよう</rt></ruby>しているので、extensionとしてpgvectorを<ruby>入<rt>い</rt></ruby>れるのが<ruby>自然<rt>しぜん</rt></ruby>なんです。<br>*(Vector DB tụi mình dùng pgvector. Cybozu toàn công ty dùng PostgreSQL nên cài pgvector dạng extension là tự nhiên nhất.)* |
| Đại | すみません、pgvectorというのは、PostgreSQLの<ruby>拡張<rt>かくちょう</rt></ruby>ということでしょうか? もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Em xin lỗi, pgvector nghĩa là extension của PostgreSQL ạ? Anh có thể giải thích lại giúp em được không?)* |
| Sato | はい、その<ruby>理解<rt>りかい</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。PostgreSQLに`CREATE EXTENSION vector;`を<ruby>叩<rt>たた</rt></ruby>くと、vector<ruby>型<rt>がた</rt></ruby>とcosine<ruby>類似度<rt>るいじど</rt></ruby><ruby>検索<rt>けんさく</rt></ruby>が<ruby>使<rt>つか</rt></ruby>えるようになります。<br>*(Đúng, hiểu vậy là ổn. Chạy `CREATE EXTENSION vector;` trên PostgreSQL là dùng được kiểu vector và tìm kiếm cosine similarity.)* |
| Đại | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。Pineconeのようなマネージドサービスではなく、<ruby>自前<rt>じまえ</rt></ruby>のPostgreSQLで<ruby>運用<rt>うんよう</rt></ruby>するということですね。<br>*(Em hiểu rồi. Tức là không dùng managed service như Pinecone, mà tự vận hành trên PostgreSQL nội bộ phải không ạ?)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>り！データの<ruby>主権<rt>しゅけん</rt></ruby>を<ruby>社内<rt>しゃない</rt></ruby>に<ruby>保<rt>たも</rt></ruby>ちたいという<ruby>方針<rt>ほうしん</rt></ruby>です。<br>*(Đúng vậy! Chủ trương giữ chủ quyền dữ liệu trong nội bộ.)* |

---

## Tình huống 5 — Cybozu cafeteria · 12:15, ăn trưa với các intern khác — tự giới thiệu nhanh

| Vai | Lời thoại |
|---|---|
| Intern A (Kyoto Univ) | あ、<ruby>新<rt>あたら</rt></ruby>しいインターンの<ruby>方<rt>かた</rt></ruby>ですか? どうぞこちらへ。<br>*(A, em là intern mới à? Mời ngồi đây.)* |
| Đại | ありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>長期<rt>ちょうき</rt></ruby>インターンになりました、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>のグエンです。<ruby>専攻<rt>せんこう</rt></ruby>はCSで、RAGプロジェクトを<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Em cảm ơn. Em là Nguyễn, sinh viên năm 3 Đại học Osaka, bắt đầu intern dài hạn từ hôm nay. Chuyên ngành CS, em phụ trách dự án RAG.)* |
| Intern A | おお、<ruby>佐藤<rt>さとう</rt></ruby>さんのチームですね! <ruby>俺<rt>おれ</rt></ruby>は<ruby>京都大学<rt>きょうとだいがく</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>、<ruby>修士<rt>しゅうし</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>。Kintone APIチームです。<br>*(Ồ, team anh Sato à! Tớ là Tanaka từ Đại học Kyoto, master năm 1. Team Kintone API.)* |
| Đại | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>長期<rt>ちょうき</rt></ruby>インターンは<ruby>何<rt>なん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>ですか?<br>*(Mong anh giúp đỡ. Anh đã đi intern dài hạn lần thứ mấy rồi ạ?)* |
| Tanaka | これで<ruby>三回目<rt>さんかいめ</rt></ruby>。Cybozuはご<ruby>飯<rt>はん</rt></ruby>が<ruby>無料<rt>むりょう</rt></ruby>で<ruby>嬉<rt>うれ</rt></ruby>しいよ。<ruby>困<rt>こま</rt></ruby>ったらSlackでDMして。<br>*(Lần thứ 3 rồi. Ở Cybozu cơm miễn phí nên sướng lắm. Có gì khó cứ DM Slack cho tớ.)* |
| Đại | ありがとうございます、<ruby>心強<rt>こころづよ</rt></ruby>いです。<br>*(Em cảm ơn, có anh em an tâm hẳn ạ.)* |

---

## Tình huống 6 — Cybozu desk · 14:00, Sato giao task đầu tiên + làm rõ scope

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>最初<rt>さいしょ</rt></ruby>のタスクは、embedding modelのベンチマークです。3つのモデル — OpenAIのtext-embedding-3-large、sentence-transformersのmultilingual-e5-large、それからintfloatのe5-mistral — を<ruby>比較<rt>ひかく</rt></ruby>してください。<br>*(Task đầu tiên là benchmark các embedding model. So sánh 3 model: text-embedding-3-large của OpenAI, multilingual-e5-large của sentence-transformers, và e5-mistral của intfloat.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>評価<rt>ひょうか</rt></ruby><ruby>指標<rt>しひょう</rt></ruby>はrecall@5とlatencyの<ruby>両方<rt>りょうほう</rt></ruby>でよろしいでしょうか?<br>*(Em đã rõ. Tiêu chí đánh giá dùng cả recall@5 và latency được không ạ?)* |
| Sato | いい<ruby>質問<rt>しつもん</rt></ruby>です。それに<ruby>加<rt>くわ</rt></ruby>えてコストも<ruby>入<rt>い</rt></ruby>れてください。OpenAIはAPIコストがかかりますが、e5系はself-hostでGPU<ruby>代<rt>だい</rt></ruby>のみ。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜<rt>きんよう</rt></ruby>までにレポートにまとめてもらえますか?<br>*(Câu hỏi tốt. Thêm cả cost vào nữa. OpenAI tốn API cost, các model e5 self-host chỉ tốn GPU. Tuần sau thứ 6 em tổng hợp thành report được không?)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>までに、recall@5、latency、コストの<ruby>三<rt>みっ</rt></ruby>つの<ruby>観点<rt>かんてん</rt></ruby>でベンチマーク・レポートをご<ruby>提出<rt>ていしゅつ</rt></ruby>いたします。<br>*(Đến thứ 6 tuần sau, em sẽ nộp report benchmark trên 3 tiêu chí: recall@5, latency và cost.)* |
| Sato | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>分<rt>わ</rt></ruby>からないことがあれば、いつでもSlackで<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Vâng, nhờ em. Có gì không hiểu cứ hỏi Slack bất cứ lúc nào nhé.)* |

---

## Tình huống 7 — Cybozu desk · 16:30, quan sát senior code review trên Pull Request

*Sato gọi Đại lại xem màn hình, đang review một PR của intern khác.*

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、ちょっとこの<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。これはCybozuの<ruby>典型的<rt>てんけいてき</rt></ruby>なcode review styleです。<br>*(Đại, xem cái màn hình này một chút. Đây là style code review điển hình của Cybozu.)* |
| Đại | はい、<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Vâng, em xem ạ.)* |
| Sato | コメントを<ruby>書<rt>か</rt></ruby>くときは、まず<ruby>良<rt>よ</rt></ruby>かった<ruby>点<rt>てん</rt></ruby>を<ruby>褒<rt>ほ</rt></ruby>める。<ruby>次<rt>つぎ</rt></ruby>に<ruby>改善<rt>かいぜん</rt></ruby><ruby>案<rt>あん</rt></ruby>を「〜してはどうでしょうか」という<ruby>提案<rt>ていあん</rt></ruby><ruby>形<rt>けい</rt></ruby>で<ruby>書<rt>か</rt></ruby>く。<ruby>命令<rt>めいれい</rt></ruby><ruby>形<rt>けい</rt></ruby>は<ruby>避<rt>さ</rt></ruby>けます。<br>*(Khi viết comment, đầu tiên khen điểm tốt. Tiếp theo viết đề xuất cải thiện ở thể "〜してはどうでしょうか". Tránh dạng mệnh lệnh.)* |
| Đại | なるほど、「<ruby>命令<rt>めいれい</rt></ruby><ruby>形<rt>けい</rt></ruby>を<ruby>避<rt>さ</rt></ruby>ける」というのは<ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>大学<rt>だいがく</rt></ruby>のGitHubではタメ<ruby>口<rt>ぐち</rt></ruby>で<ruby>書<rt>か</rt></ruby>いていたので……。<br>*(Em ngộ ra rồi. "Tránh dạng mệnh lệnh" là bài học hay đấy ạ. Trên GitHub đại học bọn em hay viết suồng sã…)* |
| Sato | <ruby>会社<rt>かいしゃ</rt></ruby>ではテキストでも<ruby>敬語<rt>けいご</rt></ruby>が<ruby>基本<rt>きほん</rt></ruby>です。「LGTM!」とか「nits:」とか<ruby>英語<rt>えいご</rt></ruby>のショートカットはOKだけど、<ruby>本文<rt>ほんぶん</rt></ruby>は<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Trong công ty thì text cũng dùng kính ngữ là chính. "LGTM!" hay "nits:" — kiểu shortcut tiếng Anh thì OK, nhưng nội dung phải lịch sự.)* |

---

## Tình huống 8 — Slack #intern-rag · tuần 2, báo cáo tiến độ daily standup format

| Vai | Lời thoại |
|---|---|
| Đại | (post Slack 10:00) おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>**<ruby>昨日<rt>きのう</rt></ruby>：** multilingual-e5-largeの<ruby>環境<rt>かんきょう</rt></ruby><ruby>構築<rt>こうちく</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、1,000<ruby>件<rt>けん</rt></ruby>のサンプルで<ruby>試行<rt>しこう</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>**<ruby>本日<rt>ほんじつ</rt></ruby>：** OpenAI text-embedding-3-largeでも<ruby>同<rt>おな</rt></ruby>じく<ruby>計測<rt>けいそく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>**ブロッカー：**<ruby>特<rt>とく</rt></ruby>になし。 |
| Sato | (reply) ありがとうございます。<ruby>順調<rt>じゅんちょう</rt></ruby>ですね。<ruby>何<rt>なに</rt></ruby>かあれば<ruby>遠慮<rt>えんりょ</rt></ruby>なく。<br>*(Cảm ơn em. Đang đúng tiến độ đấy. Có gì cứ nói thẳng nhé.)* |
| Đại | (reply) ありがとうございます! 1つだけご<ruby>相談<rt>そうだん</rt></ruby>させてください。OpenAI APIキーはどちらでお<ruby>借<rt>か</rt></ruby>りできますか?<br>*(Em cảm ơn! Cho em hỏi 1 việc. API key của OpenAI em mượn ở đâu ạ?)* |
| Sato | (reply) 1Passwordのvault「intern-shared」に<ruby>共有<rt>きょうゆう</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<ruby>使用量<rt>しようりょう</rt></ruby>は<ruby>都度<rt>つど</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đã share trong vault "intern-shared" của 1Password. Lượng sử dụng nhớ báo cáo từng lần nhé.)* |

---

## Tình huống 9 — Cybozu phòng họp Aoi · tuần 3, weekly 1on1 với Inomata

*Phòng họp nhỏ 4 người, chỉ có Đại và Inomata. Inomata mở MacBook ghi note.*

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>3<rt>さん</rt></ruby><ruby>週目<rt>しゅうめ</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>調子<rt>ちょうし</rt></ruby>はどうですか?<br>*(Đại à, đã 3 tuần rồi, cảm ơn em vất vả. Tình hình ổn không?)* |
| Đại | はい、おかげさまで<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>指導<rt>しどう</rt></ruby>してくださっていますので。<br>*(Vâng, nhờ trời em làm khá thuận lợi ạ. Anh Sato chỉ bảo em rất tận tình.)* |
| Inomata | それは<ruby>何<rt>なに</rt></ruby>よりです。<ruby>困<rt>こま</rt></ruby>っていることはありませんか? <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくださいね。<br>*(Vậy thì tốt nhất rồi. Có gì khó khăn không? Em cứ nói thẳng nhé.)* |
| Đại | <ruby>実<rt>じつ</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つ。<ruby>妻<rt>つま</rt></ruby>がもうすぐ<ruby>臨月<rt>りんげつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りまして、<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby>はフルリモートにさせていただけないでしょうか?<br>*(Thật ra có 1 việc. Vợ em sắp đến tháng sinh, sức khoẻ không ổn định. Tuần sau em xin được làm full remote có được không ạ?)* |
| Inomata | もちろんです! <ruby>家庭<rt>かてい</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>事前<rt>じぜん</rt></ruby>にSlackで<ruby>共有<rt>きょうゆう</rt></ruby>していただければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Tất nhiên! Cứ ưu tiên gia đình. Em báo trước trên Slack là được rồi.)* |
| Đại | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn anh. Em được giúp đỡ nhiều quá.)* |
| Inomata | こちらこそ、<ruby>事情<rt>じじょう</rt></ruby>を<ruby>早<rt>はや</rt></ruby>めに<ruby>共有<rt>きょうゆう</rt></ruby>してくれてありがとう。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>体調<rt>たいちょう</rt></ruby>あっての<ruby>仕事<rt>しごと</rt></ruby>ですからね。<br>*(Anh mới phải cảm ơn em đã chia sẻ sớm. Có sức khoẻ gia đình mới có công việc mà.)* |

---

## Tình huống 10 — Cybozu desk · tuần 4, semantic search prototype hoạt động — gọi Sato confirm

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか? semantic searchのプロトタイプが<ruby>動<rt>うご</rt></ruby>くようになりまして、<ruby>結果<rt>けっか</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていただきたいんです。<br>*(Anh Sato, anh có chút thời gian không ạ? Em đã chạy được prototype semantic search, em muốn anh xem kết quả ạ.)* |
| Sato | おお、もう<ruby>動<rt>うご</rt></ruby>いたんですか! <ruby>早<rt>はや</rt></ruby>いですね。<ruby>見<rt>み</rt></ruby>せてください。<br>*(Ồ, chạy được rồi à! Nhanh đấy. Cho anh xem.)* |
| Đại | (gõ terminal) クエリは「リモートワーク <ruby>申請<rt>しんせい</rt></ruby> <ruby>方法<rt>ほうほう</rt></ruby>」です。top-5の<ruby>結果<rt>けっか</rt></ruby>が80ミリ<ruby>秒<rt>びょう</rt></ruby>で<ruby>返<rt>かえ</rt></ruby>ってきます。<br>*(Câu query là "リモートワーク 申請 方法". Top-5 kết quả trả về trong 80 mili giây.)* |
| Sato | おっ、レイテンシも<ruby>悪<rt>わる</rt></ruby>くない。<ruby>関連<rt>かんれん</rt></ruby><ruby>性<rt>せい</rt></ruby>もしっかり<ruby>出<rt>で</rt></ruby>てるね。<ruby>次<rt>つぎ</rt></ruby>はre-rankingを<ruby>入<rt>い</rt></ruby>れたら、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>精度<rt>せいど</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がるかもしれません。<br>*(Ồ, latency cũng không tệ. Liên quan cũng rất chắc. Bước tiếp theo nếu thêm re-ranking thì có thể độ chính xác tăng thêm nữa.)* |
| Đại | re-ranking、cross-encoderを<ruby>使<rt>つか</rt></ruby>うやつですよね。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>にさせてください。<br>*(Re-ranking, là cái dùng cross-encoder phải không ạ. Cho em làm task tuần sau nhé.)* |
| Sato | はい、<ruby>任<rt>まか</rt></ruby>せます。<ruby>論文<rt>ろんぶん</rt></ruby>だとms-marco-MiniLMが<ruby>軽<rt>かる</rt></ruby>くて<ruby>強<rt>つよ</rt></ruby>いですよ。<br>*(Yên tâm giao em. Theo paper thì ms-marco-MiniLM nhẹ mà mạnh đó.)* |

---

## Tình huống 11 — Slack DM Inomata · tuần 5, xin remote vì Hana quấy đêm

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>猪股<rt>いのまた</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>明日<rt>あした</rt></ruby><ruby>急<rt>きゅう</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>明日<rt>あした</rt></ruby>と<ruby>明後日<rt>あさって</rt></ruby>、リモートに<ruby>変更<rt>へんこう</rt></ruby>させていただけますでしょうか。<ruby>妻<rt>つま</rt></ruby>が<ruby>切迫<rt>せっぱく</rt></ruby><ruby>気味<rt>ぎみ</rt></ruby>で<ruby>安静<rt>あんせい</rt></ruby><ruby>指示<rt>しじ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けまして……。<br>*(Anh Inomata, em xin lỗi đột xuất quá nhưng ngày mai và ngày kia em xin chuyển sang remote được không ạ. Vợ em có dấu hiệu doạ sinh, bác sĩ yêu cầu nghỉ ngơi tuyệt đối…)* |
| Inomata | <ruby>了解<rt>りょうかい</rt></ruby>です! まずは<ruby>奥<rt>おく</rt></ruby>さまを<ruby>優先<rt>ゆうせん</rt></ruby>してください。<ruby>仕事<rt>しごと</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>のない<ruby>範囲<rt>はんい</rt></ruby>で。<br>*(Đã rõ! Trước hết hãy ưu tiên vợ em. Công việc thì cứ trong khả năng thôi.)* |
| Đại | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さんにもお<ruby>伝<rt>つた</rt></ruby>えしておきます。<br>*(Em cảm ơn anh. Em sẽ báo cho anh Sato luôn ạ.)* |
| Inomata | こちらからも<ruby>共有<rt>きょうゆう</rt></ruby>しておきます。<ruby>奥<rt>おく</rt></ruby>さまによろしくお<ruby>伝<rt>つた</rt></ruby>えください。<br>*(Anh cũng sẽ chia sẻ phía mình. Cho anh gửi lời tới vợ em nhé.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Em thật sự rất biết ơn anh ạ.)* |

---

## Tình huống 12 — Cybozu morning standup phòng họp · tuần 6, lần đầu phát biểu trước cả team 8 người

| Vai | Lời thoại |
|---|---|
| Sato | では、<ruby>本日<rt>ほんじつ</rt></ruby>のstandup。グエンさんから<ruby>順番<rt>じゅんばん</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy thì standup hôm nay. Bắt đầu lần lượt từ Đại nhé.)* |
| Đại | おはようございます、インターンのグエンです。<ruby>昨日<rt>きのう</rt></ruby>はre-rankingのプロトタイプを<ruby>実装<rt>じっそう</rt></ruby>しまして、ms-marco-MiniLMでrecall@5が78%から85%に<ruby>向上<rt>こうじょう</rt></ruby>しました。<br>*(Chào buổi sáng, em là intern Nguyễn. Hôm qua em đã implement prototype re-ranking, dùng ms-marco-MiniLM thì recall@5 tăng từ 78% lên 85% ạ.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は、Claude APIの<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>し<ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>結合<rt>けつごう</rt></ruby>して、エンドツーエンドの<ruby>検証<rt>けんしょう</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めます。ブロッカーは<ruby>特<rt>とく</rt></ruby>にありません。<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Hôm nay em sẽ tích hợp phần gọi Claude API và verify end-to-end. Không có blocker. Em báo cáo xong ạ.)* |
| Member B | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>進捗<rt>しんちょく</rt></ruby>! re-ranking<ruby>後<rt>ご</rt></ruby>のlatencyはどのぐらいですか?<br>*(Tiến độ tuyệt vời! Latency sau re-ranking là bao nhiêu?)* |
| Đại | 80ミリ<ruby>秒<rt>びょう</rt></ruby>から130ミリ<ruby>秒<rt>びょう</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>えましたが、ユーザー<ruby>体験<rt>たいけん</rt></ruby><ruby>上<rt>じょう</rt></ruby>はまだ<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しております。<br>*(Tăng từ 80ms lên 130ms ạ, nhưng theo em đánh giá thì trải nghiệm người dùng vẫn ở mức chấp nhận được.)* |
| Sato | <ruby>判断<rt>はんだん</rt></ruby>の<ruby>根拠<rt>こんきょ</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>でいいですね。<ruby>次<rt>つぎ</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Căn cứ phán đoán rõ ràng, tốt đấy. Tiếp, Tanaka.)* |

---

## Tình huống 13 — Cybozu desk · tuần 8, hỏi senior về best practice xử lý API key + secret

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>一<rt>ひと</rt></ruby>つお<ruby>聞<rt>き</rt></ruby>きしたいことがあります。Claude APIキーや<ruby>各種<rt>かくしゅ</rt></ruby>secretの<ruby>管理<rt>かんり</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>はどうされていますか?<br>*(Anh Sato, em muốn hỏi 1 việc. Cách quản lý API key của Claude và các loại secret thì anh làm thế nào ạ?)* |
| Sato | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>原則<rt>げんそく</rt></ruby><ruby>三<rt>みっ</rt></ruby>つ。<ruby>一<rt>いち</rt></ruby>、コードに<ruby>絶対<rt>ぜったい</rt></ruby><ruby>書<rt>か</rt></ruby>かない。<ruby>二<rt>に</rt></ruby>、<ruby>環境変数<rt>かんきょうへんすう</rt></ruby>で<ruby>渡<rt>わた</rt></ruby>す。<ruby>三<rt>さん</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby>はAWS Secrets Managerで<ruby>管理<rt>かんり</rt></ruby>。<br>*(Câu hỏi hay. 3 nguyên tắc. Một: tuyệt đối không viết trong code. Hai: truyền qua environment variable. Ba: production quản lý qua AWS Secrets Manager.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。`.env`ファイルもgitignoreすべきですよね。<br>*(Em đã rõ. File `.env` cũng phải gitignore phải không ạ.)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>り。それから、git pushする<ruby>前<rt>まえ</rt></ruby>にpre-commit hookでsecretスキャンを<ruby>走<rt>はし</rt></ruby>らせるのもCybozu<ruby>標準<rt>ひょうじゅん</rt></ruby>です。`detect-secrets`というツールを<ruby>使<rt>つか</rt></ruby>っています。<br>*(Đúng vậy. Thêm nữa, trước khi git push thì chạy secret scan ở pre-commit hook cũng là chuẩn của Cybozu. Bọn anh dùng tool `detect-secrets`.)* |
| Đại | ありがとうございます、<ruby>後<rt>あと</rt></ruby>で<ruby>導入<rt>どうにゅう</rt></ruby>します。<br>*(Em cảm ơn ạ, lát em sẽ cài đặt.)* |

---

## Tình huống 14 — Cybozu cafeteria · tuần 9, ăn trưa với Inomata + Sato — small talk về Hizashi

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>休<rt>やす</rt></ruby>みの<ruby>日<rt>ひ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をされていますか?<br>*(Đại, ngày nghỉ em làm gì?)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>の<ruby>付<rt>つ</rt></ruby>き<ruby>添<rt>そ</rt></ruby>いと、あとは<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>です。ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリのアイデアを<ruby>練<rt>ね</rt></ruby>っていまして。<br>*(Em đi cùng vợ khám thai, rồi side project. Em đang ấp ủ ý tưởng về một app học tiếng Nhật cho người Việt ạ.)* |
| Sato | おっ、いいですね! どんなアーキテクチャを<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Ồ, hay đấy! Em định kiến trúc thế nào?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>今<rt>いま</rt></ruby>のCybozuのRAGスタックがそのまま<ruby>応用<rt>おうよう</rt></ruby>できるんじゃないかと<ruby>考<rt>かんが</rt></ruby>えています。pgvector + Claude API + sentence-transformers。<br>*(Thật ra em đang nghĩ là chính stack RAG của Cybozu giờ có thể áp dụng nguyên được. pgvector + Claude API + sentence-transformers.)* |
| Inomata | スタートアップ<ruby>志望<rt>しぼう</rt></ruby>ですか?<br>*(Em định khởi nghiệp à?)* |
| Đại | まだ<ruby>分<rt>わ</rt></ruby>かりません。<ruby>卒業後<rt>そつぎょうご</rt></ruby>の<ruby>進路<rt>しんろ</rt></ruby>は、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>卒研<rt>そつけん</rt></ruby>と<ruby>並行<rt>へいこう</rt></ruby>して<ruby>考<rt>かんが</rt></ruby>えていく<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em chưa biết. Định hướng sau tốt nghiệp em sẽ vừa làm 卒研 sang năm vừa suy nghĩ ạ.)* |
| Sato | <ruby>応援<rt>おうえん</rt></ruby>します。<ruby>面白<rt>おもしろ</rt></ruby>い<ruby>方向<rt>ほうこう</rt></ruby>ですね。<br>*(Anh ủng hộ. Hướng đi thú vị đấy.)* |

---

## Tình huống 15 — Apartment Toyonaka · 22:30, Đại tâm sự với Mai — cảnh tiếng Việt cuối chương

> Đại về tới căn hộ Toyonaka, ngồi bên cạnh Mai đang ôm bụng bầu 7 tháng. Đại vừa tan ca, mệt nhưng phấn khích.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, bụng còn đau không? Bé Hana đạp nhiều không? |
| Mai | (tiếng Việt) Hôm nay con đạp dữ lắm. Hôm nay ở Cybozu thế nào anh? |
| Đại | (tiếng Việt) Tốt lắm. Anh vừa demo prototype re-ranking, anh Sato khen. Mai à, anh kể em mới phát hiện ra cái này — gọi là pgvector. |
| Mai | (tiếng Việt) Pi-gì-vector? Là cái gì hả anh? |
| Đại | (tiếng Việt) Nó là một cái extension của PostgreSQL — cho phép dùng database thường để làm vector search luôn, không cần dịch vụ riêng như Pinecone. Cybozu dùng cái đó cho RAG. |
| Mai | (tiếng Việt) Anh nói RAG là cái gì đợt trước em chưa hiểu. |
| Đại | (tiếng Việt) RAG là Retrieval-Augmented Generation. Đại khái thế này: mình có 50.000 tài liệu, mình embed thành vector, lưu vào pgvector. Khi user hỏi, mình tìm 5 tài liệu liên quan nhất, đưa cho Claude API trả lời kèm trích dẫn nguồn. |
| Mai | (tiếng Việt) À hiểu rồi. Vậy nếu mình muốn làm app học tiếng Nhật cho người Việt, có dùng được cái này không? |
| Đại | (tiếng Việt) Đó! Đó! Đúng là cái anh đang nghĩ. Cybozu giống như một cái "bản xem trước" của Hizashi đó em. Cùng một stack thôi. |
| Mai | (tiếng Việt) Vậy là 3 tháng intern này anh đang được trả lương để học công nghệ sẽ làm Hizashi luôn hả? |
| Đại | (tiếng Việt) Ừ. ¥250 nghìn/tháng × 3 = ¥750 nghìn. Tiền nhà với đồ sơ sinh chuẩn bị đón Hana tầm ¥300 nghìn là ổn. Anh vẫn tiết kiệm được. |
| Mai | (tiếng Việt) Tốt quá anh. Mà anh ơi, anh nhớ giữ sức nhé. Sắp đến ngày sinh Hana, em cần anh khoẻ. |
| Đại | (tiếng Việt) Yên tâm. Hai vợ chồng cùng cố. Mai cố lên nha, sang năm anh xây Hizashi xong cả nhà mình có thêm cái để làm chung. |
| Mai | (tiếng Việt) Em đợi! Em là beta tester đầu tiên nhé. |

---

## Đọng lại chương 5

Đại trải qua 3 tháng đầu của kỳ thực tập dài hạn tại Cybozu Osaka, vừa làm intern engineer thực thụ vừa nuôi con sơ sinh. Học **mẫu chào hỏi ngày đầu** (「本日からお世話になります」), **xin xác nhận task** (「〜という理解で大丈夫でしょうか」), **hỏi lại khi chưa hiểu thuật ngữ** (「もう一度お願いできますか」), **báo tiến độ daily standup** (昨日/本日/ブロッカー format), **keigo xin remote work** (「リモートに変更させていただけますでしょうか」), và **đặt câu hỏi technical lịch sự** với senior (「〜について少しお聞きしたいことがあります」). Quan sát code review style của Cybozu (khen trước + đề xuất ở thể 「〜してはどうでしょうか」). Hiểu sâu RAG = embedding + pgvector + Claude API — chính là stack tương lai của Hizashi. ¥750k thu nhập, gia đình + công việc cân bằng nhờ văn hoá hybrid của Cybozu.

> Từ vựng & mẫu câu chương này: 長期インターン・お世話になります・承知しました・〜という理解で大丈夫でしょうか・もう一度お願いできますか・進捗報告・ブロッカー・フルリモート・家庭優先・コアタイム・フレックス・RAG・embedding・pgvector・semantic search・Claude API・re-ranking・recall@5・latency・コスト・〜してはどうでしょうか・〜させていただけますでしょうか・夜泣き・ハイブリッド

## Bí quyết chương

- **「お世話になります」là câu mở miệng kỳ thực tập** — không có câu chào này, người Nhật sẽ thấy intern chưa biết phép tắc.
- **Báo cáo daily standup format Nhật**: 昨日 → 本日 → ブロッカー. Đừng nói lung tung, cấu trúc cố định mới chuyên nghiệp.
- **Hỏi lại không phải thừa nhận yếu** — senior Nhật rất ghét intern gật gù giả vờ hiểu rồi làm sai. 「もう一度お願いできますか」 là câu được hoan nghênh.
- **Code review style Cybozu**: khen trước + 「〜してはどうでしょうか」 đề xuất, tránh thể mệnh lệnh kể cả với intern.
- **Văn hoá hybrid Cybozu thật**: công ty Nhật hiện đại tôn trọng gia đình. Báo trước sớm trên Slack là đủ.
- **Stack Cybozu = stack Hizashi**: intern không chỉ kiếm tiền, mà còn là "bản xem trước" công nghệ sản phẩm cá nhân tương lai.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 長期 | ちょうき | TRƯỜNG KỲ | Dài hạn |
| 申す | もうす | THÂN | Nói (khiêm) |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức |
| 入館 | にゅうかん | NHẬP QUÁN | Vào toà nhà |
| 総務 | そうむ | TỔNG VỤ | Tổng vụ |
| 受け取る | うけとる | THỤ THỦ | Nhận |
| 就業時間 | しゅうぎょうじかん | TỰU NGHIỆP THỜI GIAN | Giờ làm việc |
| 休憩 | きゅうけい | HƯU KHẾ | Nghỉ giải lao |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 柔軟 | じゅうなん | NHU NHUYỄN | Linh hoạt |
| 配慮 | はいりょ | PHỐI LỰ | Quan tâm |
| 概要 | がいよう | KHÁI YẾU | Sơ lược |
| 顧客 | こきゃく | CỐ KHÁCH | Khách hàng |
| 累計 | るいけい | LŨY KẾ | Tích luỹ |
| 自然言語 | しぜんげんご | TỰ NHIÊN NGÔN NGỮ | Ngôn ngữ tự nhiên |
| 検索 | けんさく | KIỂM SÁCH | Tìm kiếm |
| 大まか | おおまか | ĐẠI | Đại khái |
| 流れ | ながれ | LƯU | Quy trình |
| 関連 | かんれん | QUAN LIÊN | Liên quan |
| 回答 | かいとう | HỒI ĐÁP | Câu trả lời |
| 採用 | さいよう | THÁI DỤNG | Áp dụng, tuyển dụng |
| 叩く | たたく | KHẤU | Gõ |
| 類似度 | るいじど | LOẠI TỰ ĐỘ | Độ tương tự |
| 自前 | じまえ | TỰ TIỀN | Tự lo, nội bộ |
| 運用 | うんよう | VẬN DỤNG | Vận hành |
| 主権 | しゅけん | CHỦ QUYỀN | Chủ quyền |
| 保つ | たもつ | BẢO | Giữ |
| 方針 | ほうしん | PHƯƠNG CHÂM | Phương châm |
| 専攻 | せんこう | CHUYÊN CÔNG | Chuyên ngành |
| 心強い | こころづよい | TÂM CƯỜNG | Yên tâm |
| 評価指標 | ひょうかしひょう | ĐÁNH GIÁ CHỈ TIÊU | Tiêu chí đánh giá |
| 加える | くわえる | GIA | Thêm vào |
| 観点 | かんてん | QUAN ĐIỂM | Góc nhìn |
| 典型的 | てんけいてき | ĐIỂN HÌNH ĐÍCH | Điển hình |
| 褒める | ほめる | BAO | Khen |
| 改善案 | かいぜんあん | CẢI THIỆN ÁN | Đề xuất cải thiện |
| 命令形 | めいれいけい | MỆNH LỆNH HÌNH | Thể mệnh lệnh |
| 避ける | さける | TỴ | Tránh |
| 敬語 | けいご | KÍNH NGỮ | Kính ngữ |
| 本文 | ほんぶん | BẢN VĂN | Nội dung |
| 丁寧 | ていねい | ĐINH NINH | Lịch sự, cẩn thận |
| 試行 | しこう | THÍ HÀNH | Thử nghiệm |
| 計測 | けいそく | KẾ TRẮC | Đo |
| ブロッカー | — | — | Vấn đề chặn |
| 借りる | かりる | TÁ | Mượn |
| 使用量 | しようりょう | SỬ DỤNG LƯỢNG | Lượng dùng |
| 都度 | つど | ĐÔ ĐỘ | Mỗi lần |
| 調子 | ちょうし | ĐIỀU TỬ | Tình hình |
| 正直 | しょうじき | CHÍNH TRỰC | Thẳng thắn |
| 夜泣き | よなき | DẠ KHẤP | Quấy đêm |
| 事情 | じじょう | SỰ TÌNH | Hoàn cảnh |
| 関連性 | かんれんせい | QUAN LIÊN TÍNH | Tính liên quan |
| 任せる | まかせる | NHIỆM | Giao phó |
| 急 | きゅう | CẤP | Đột xuất |
| 変更 | へんこう | BIẾN CANH | Thay đổi |
| 発熱 | はつねつ | PHÁT NHIỆT | Sốt |
| 範囲 | はんい | PHẠM VI | Phạm vi |
| 順番 | じゅんばん | THUẬN PHIÊN | Lần lượt |
| 結合 | けつごう | KẾT HỢP | Tích hợp |
| 検証 | けんしょう | KIỂM CHỨNG | Kiểm chứng |
| 向上 | こうじょう | HƯỚNG THƯỢNG | Cải thiện, tăng |
| 体験 | たいけん | THỂ NGHIỆM | Trải nghiệm |
| 許容 | きょよう | HỨA DUNG | Chấp nhận |
| 根拠 | こんきょ | CĂN CỨ | Căn cứ |
| 各種 | かくしゅ | CÁC CHỦNG | Các loại |
| 環境変数 | かんきょうへんすう | HOÀN CẢNH BIẾN SỐ | Biến môi trường |
| 本番 | ほんばん | BẢN PHIÊN | Production |
| 管理 | かんり | QUẢN LÝ | Quản lý |
| 標準 | ひょうじゅん | TIÊU CHUẨN | Tiêu chuẩn |
| 走らせる | はしらせる | TẨU | Chạy (lệnh) |
| 個人開発 | こじんかいはつ | CÁ NHÂN KHAI PHÁT | Phát triển cá nhân |
| 練る | ねる | LUYỆN | Ấp ủ |
| 応用 | おうよう | ỨNG DỤNG | Áp dụng |
| 志望 | しぼう | CHÍ VỌNG | Nguyện vọng |
| 卒業後 | そつぎょうご | TỐT NGHIỆP HẬU | Sau tốt nghiệp |
| 進路 | しんろ | TIẾN LỘ | Hướng đi |
| 卒研 | そつけん | TỐT NGHIÊN | Nghiên cứu tốt nghiệp |
| 並行 | へいこう | TỊNH HÀNH | Song song |
| 応援 | おうえん | ỨNG VIỆN | Ủng hộ |
| ハイブリッド | — | — | Hybrid |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000006, 800000023, NULL, 'markdown_book', 'T6. Claude API + prompt engineering + デモ nội bộ (Claude API)', '# Sách sinh viên Đại học Osaka · T6. Claude API + prompt engineering + デモ nội bộ (Claude API)

> **Mục tiêu nhân vật:** Đại 23 tuổi, intern Cybozu tuần 5-9, 7-8/2028. Học các mẫu hội thoại tiếng Nhật của intern engineer giai đoạn middle: (1) trao đổi technical sâu về API/prompt với senior, (2) bảo vệ quyết định kỹ thuật ("vanilla SDK > LangChain"), (3) báo cáo bug + đề xuất giải pháp, (4) keigo trong làm mẫu trước cả CTO, (5) nhận phản hồi và phản hồi lịch sự, (6) thảo luận chi phí + ROI bằng tiếng Nhật business.

---

## Bối cảnh

Tháng 7-8 năm 2028. Đại đã quen với nhịp làm việc ở Cybozu, prototype RAG cơ bản đã xong. Giai đoạn này deep dive vào Claude API + prompt engineering + thử LangChain. Mai mang thai gần đủ tháng (Hana dự sinh 5/8), mẹ Đại sắp bay sang chăm. Cuối kỳ là làm mẫu nội bộ trước CTO 25/8 — ngay sau khi Hana sinh ra. Chương này tập trung các mẫu câu trao đổi technical sâu, bảo vệ quyết định kỹ thuật, và keigo dùng trong presentation cấp cao.

---

## Tình huống 1 — Cybozu desk · 7/7 sáng, Sato giới thiệu Anthropic SDK lần đầu

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>今日<rt>きょう</rt></ruby>からClaude APIに<ruby>入<rt>はい</rt></ruby>ります。AnthropicのPython SDKを<ruby>使<rt>つか</rt></ruby>います。<br>*(Đại, hôm nay mình bắt đầu vào Claude API. Dùng SDK Python của Anthropic.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。OpenAI SDKとは<ruby>違<rt>ちが</rt></ruby>うところはありますか?<br>*(Vâng, em mong anh chỉ. Có gì khác so với SDK của OpenAI ạ?)* |
| Sato | <ruby>大<rt>おお</rt></ruby>きな<ruby>違<rt>ちが</rt></ruby>いは2つ。1つは「messages」<ruby>形式<rt>けいしき</rt></ruby>でrole=user/assistantを<ruby>明示<rt>めいじ</rt></ruby>。もう1つはsystem<ruby>指示<rt>しじ</rt></ruby>が<ruby>独立<rt>どくりつ</rt></ruby>パラメータです。<br>*(Khác biệt lớn có 2. Một là format "messages" chỉ rõ role=user/assistant. Hai là system prompt là parameter riêng.)* |
| Đại | なるほど、systemが<ruby>独立<rt>どくりつ</rt></ruby>しているのは<ruby>明確<rt>めいかく</rt></ruby>でいいですね。<ruby>料金<rt>りょうきん</rt></ruby>はどうでしょうか?<br>*(Hiểu rồi, system tách riêng cũng rõ ràng, tốt nhỉ. Còn pricing thế nào ạ?)* |
| Sato | Claude 3.5 Sonnetはinputが$3/M tokens、outputが$15/M tokens。プロンプトキャッシュを<ruby>使<rt>つか</rt></ruby>えばcached inputは$0.30まで<ruby>下<rt>さ</rt></ruby>がります。<br>*(Claude 3.5 Sonnet thì input $3/M token, output $15/M token. Dùng prompt caching thì cached input còn $0.30.)* |
| Đại | プロンプトキャッシュは<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。どういう<ruby>仕組<rt>しく</rt></ruby>みですか?<br>*(Prompt caching em mới nghe lần đầu. Cơ chế thế nào ạ?)* |
| Sato | <ruby>同<rt>おな</rt></ruby>じシステムプロンプトや<ruby>長<rt>なが</rt></ruby>いコンテキストを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す<ruby>場合<rt>ばあい</rt></ruby>、5<ruby>分間<rt>ふんかん</rt></ruby>キャッシュされて<ruby>料金<rt>りょうきん</rt></ruby>が10<ruby>分<rt>ぶん</rt></ruby>の1になる<ruby>仕組<rt>しく</rt></ruby>みです。RAGでは<ruby>必須<rt>ひっす</rt></ruby>ですね。<br>*(Khi lặp lại cùng system prompt hay context dài, sẽ được cache trong 5 phút và chi phí giảm còn 1/10. Với RAG thì gần như bắt buộc.)* |
| Đại | それは<ruby>大<rt>おお</rt></ruby>きいですね。<ruby>後<rt>あと</rt></ruby>でドキュメントを<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みます。<br>*(Cái đó lớn đấy. Lát em sẽ đọc kỹ doc ạ.)* |

---

## Tình huống 2 — Cybozu desk · 9/7, Đại trình bày 5 nguyên tắc prompt engineering thu thập được

*Đại đã đọc Anthropic docs cuối tuần, mở screen sharing với Sato để xác nhận.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>週末<rt>しゅうまつ</rt></ruby>にprompt engineeringのドキュメントを<ruby>読<rt>よ</rt></ruby>みまして、5つの<ruby>原則<rt>げんそく</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>しました。ご<ruby>確認<rt>かくにん</rt></ruby>いただけますか?<br>*(Anh Sato, cuối tuần em đọc docs prompt engineering và đã tổng hợp 5 nguyên tắc. Anh xem giúp em được không ạ?)* |
| Sato | お、いいですね。<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Ồ, hay đấy. Em nói thử xem.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>、<ruby>具体的<rt>ぐたいてき</rt></ruby>かつ<ruby>詳細<rt>しょうさい</rt></ruby>に<ruby>書<rt>か</rt></ruby>く。2つ<ruby>目<rt>め</rt></ruby>、XMLタグで<ruby>構造化<rt>こうぞうか</rt></ruby>する。Claudeは<document>や<example>を<ruby>好<rt>この</rt></ruby>みます。<br>*(Một, viết cụ thể và chi tiết. Hai, cấu trúc hoá bằng XML tag. Claude thích <document> và <example>.)* |
| Đại | 3つ<ruby>目<rt>め</rt></ruby>、few-shotの<ruby>例<rt>れい</rt></ruby>を3〜5<ruby>個<rt>こ</rt></ruby><ruby>入<rt>い</rt></ruby>れる。4つ<ruby>目<rt>め</rt></ruby>、chain-of-thoughtで「step by stepで<ruby>考<rt>かんが</rt></ruby>えて」と<ruby>指示<rt>しじ</rt></ruby>。5つ<ruby>目<rt>め</rt></ruby>、<ruby>出力<rt>しゅつりょく</rt></ruby><ruby>形式<rt>けいしき</rt></ruby>を<ruby>明示<rt>めいじ</rt></ruby>する(JSON schemaなど)。<br>*(Ba, đưa 3-5 ví dụ few-shot. Bốn, dùng chain-of-thought "hãy suy nghĩ từng bước". Năm, chỉ định rõ format output, ví dụ JSON schema.)* |
| Sato | <ruby>完璧<rt>かんぺき</rt></ruby>です! その5つを<ruby>押<rt>お</rt></ruby>さえれば<ruby>大体<rt>だいたい</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>はカバーできます。<ruby>特<rt>とく</rt></ruby>にXMLタグは<ruby>強力<rt>きょうりょく</rt></ruby>です。<br>*(Hoàn hảo! Nắm được 5 cái đó thì gần như cover hết nghiệp vụ. Đặc biệt XML tag rất mạnh.)* |
| Đại | <ruby>追加<rt>ついか</rt></ruby>で<ruby>質問<rt>しつもん</rt></ruby>させてください。「<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>く」というのは、どの<ruby>程度<rt>ていど</rt></ruby>まで<ruby>細<rt>こま</rt></ruby>かく<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Cho em hỏi thêm. "Viết cụ thể" thì cụ thể đến mức nào ạ?)* |
| Sato | <ruby>判断<rt>はんだん</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は「<ruby>他<rt>た</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するつもりで<ruby>書<rt>か</rt></ruby>く」。<ruby>人間<rt>にんげん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するときに<ruby>足<rt>た</rt></ruby>りない<ruby>情報<rt>じょうほう</rt></ruby>は、Claudeにも<ruby>足<rt>た</rt></ruby>りません。<br>*(Tiêu chí phán đoán là "viết như đang giải thích cho người khác". Thiếu thông tin với người thì cũng thiếu thông tin với Claude.)* |

---

## Tình huống 3 — Cybozu desk · 15/7, Đại hỏi lại về citation format trong RAG response

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、RAGの<ruby>回答<rt>かいとう</rt></ruby>に<ruby>引用元<rt>いんようもと</rt></ruby>(citation)を<ruby>必<rt>かなら</rt></ruby>ず<ruby>含<rt>ふく</rt></ruby>めるようにしたいのですが、<ruby>良<rt>よ</rt></ruby>い<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>はありますか?<br>*(Anh Sato, em muốn câu trả lời RAG luôn kèm citation. Có cách viết tốt nào không ạ?)* |
| Sato | citationは<ruby>大事<rt>だいじ</rt></ruby>ですね。<ruby>業務<rt>ぎょうむ</rt></ruby>システムでは「ハルシネーション」<ruby>対策<rt>たいさく</rt></ruby>に<ruby>必須<rt>ひっす</rt></ruby>です。<ruby>方法<rt>ほうほう</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つ。<br>*(Citation quan trọng đấy. Trong system business thì bắt buộc để chống "hallucination". Có 2 cách.)* |
| Sato | 1つ<ruby>目<rt>め</rt></ruby>、プロンプト<ruby>内<rt>ない</rt></ruby>で<document id="..."><ruby>形式<rt>けいしき</rt></ruby>のXMLタグを<ruby>使<rt>つか</rt></ruby>って、「<ruby>回答<rt>かいとう</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ずdocument idを<ruby>引用<rt>いんよう</rt></ruby>すること」と<ruby>明示<rt>めいじ</rt></ruby>する。<br>*(Một: trong prompt dùng XML tag dạng <document id="...">, ghi rõ "câu trả lời phải kèm trích dẫn document id".)* |
| Sato | 2つ<ruby>目<rt>め</rt></ruby>、Anthropicの「citations」<ruby>機能<rt>きのう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。これだと<ruby>構造化<rt>こうぞうか</rt></ruby>された<ruby>形<rt>かたち</rt></ruby>でresponseに<ruby>含<rt>ふく</rt></ruby>まれます。<br>*(Hai: dùng feature "citations" của Anthropic. Cái này trả về citation đã được cấu trúc hoá trong response.)* |
| Đại | <ruby>後者<rt>こうしゃ</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>後処理<rt>あとしょり</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>そうですね。<ruby>両方<rt>りょうほう</rt></ruby><ruby>試<rt>ため</rt></ruby>してみてもよろしいですか?<br>*(Cái sau xử lý hậu kỳ có vẻ nhẹ hơn. Em thử cả 2 được không ạ?)* |
| Sato | はい、ぜひ。ベンチマーク<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Vâng, em cứ thử. Có kết quả benchmark thì share nhé.)* |

---

## Tình huống 4 — Cybozu phòng họp Sakura · 22/7, Đại propose dùng vanilla SDK thay LangChain

*Sato gọi Đại vào phòng họp nhỏ thảo luận lựa chọn framework.*

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、LangChainを<ruby>導入<rt>どうにゅう</rt></ruby>するかどうか<ruby>議論<rt>ぎろん</rt></ruby>したいんですが、どう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Đại, anh muốn thảo luận xem có dùng LangChain không, em nghĩ sao?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>今<rt>いま</rt></ruby>の<ruby>規模<rt>きぼ</rt></ruby>のRAGにLangChainは<ruby>過剰<rt>かじょう</rt></ruby>だと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Em xin nói thẳng, với quy mô RAG hiện tại thì LangChain hơi thừa ạ.)* |
| Sato | ほう、その<ruby>根拠<rt>こんきょ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Ồ, em nói rõ căn cứ xem.)* |
| Đại | 3<ruby>点<rt>てん</rt></ruby>ございます。1<ruby>点目<rt>てんめ</rt></ruby>、<ruby>我々<rt>われわれ</rt></ruby>のパイプラインは「embed → search → generate」の<ruby>3<rt>さん</rt></ruby>ステップのみ。LangChainの<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>レイヤーは<ruby>過剰<rt>かじょう</rt></ruby>です。<br>*(Có 3 điểm ạ. Điểm 1: pipeline của ta chỉ có 3 bước "embed → search → generate". Layer trừu tượng của LangChain là dư.)* |
| Đại | 2<ruby>点目<rt>てんめ</rt></ruby>、デバッグが<ruby>困難<rt>こんなん</rt></ruby>になります。<ruby>実際<rt>じっさい</rt></ruby>のプロンプトが<ruby>何<rt>なに</rt></ruby>になっているか、ラッパー<ruby>越<rt>ご</rt></ruby>しでは<ruby>見<rt>み</rt></ruby>えにくい。<br>*(Điểm 2: debug khó hơn. Prompt thực tế gửi đi là gì, qua wrapper rất khó nhìn.)* |
| Đại | 3<ruby>点目<rt>てんめ</rt></ruby>、Anthropic SDKは<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>洗練<rt>せんれん</rt></ruby>されており、バニラで<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>読<rt>よ</rt></ruby>みやすいコードが<ruby>書<rt>か</rt></ruby>けます。<br>*(Điểm 3: Anthropic SDK rất tinh gọn, dùng vanilla viết code đã đủ dễ đọc.)* |
| Sato | <ruby>説得力<rt>せっとくりょく</rt></ruby>ありますね。<ruby>俺<rt>おれ</rt></ruby>もLangChainの<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>は<ruby>過<rt>す</rt></ruby>ぎると<ruby>感<rt>かん</rt></ruby>じていたので<ruby>同意<rt>どうい</rt></ruby>します。バニラで<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Có sức thuyết phục đấy. Anh cũng cảm thấy LangChain trừu tượng quá, đồng tình. Đi vanilla.)* |
| Đại | ありがとうございます。<ruby>判断<rt>はんだん</rt></ruby>を<ruby>尊重<rt>そんちょう</rt></ruby>していただき、<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Em cảm ơn anh. Em biết ơn anh đã tôn trọng phán đoán của em ạ.)* |

---

## Tình huống 5 — Cybozu desk · 25/7, Đại phát hiện bug latency — báo Sato

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか? <ruby>問題<rt>もんだい</rt></ruby>を<ruby>1<rt>ひと</rt></ruby>つ<ruby>共有<rt>きょうゆう</rt></ruby>させてください。<br>*(Anh Sato, anh có chút thời gian không ạ? Cho em chia sẻ 1 vấn đề ạ.)* |
| Sato | はい、どうぞ。<br>*(Vâng, nói đi.)* |
| Đại | エンドツーエンドのレイテンシが<ruby>想定<rt>そうてい</rt></ruby>より<ruby>遅<rt>おそ</rt></ruby>くて、<ruby>平均<rt>へいきん</rt></ruby>3.2<ruby>秒<rt>びょう</rt></ruby>かかっています。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>調査<rt>ちょうさ</rt></ruby>したところ、Claude APIの<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しが2.8<ruby>秒<rt>びょう</rt></ruby>を<ruby>占<rt>し</rt></ruby>めていました。<br>*(Latency end-to-end chậm hơn dự kiến, trung bình 3.2 giây. Em điều tra thì gọi Claude API chiếm 2.8 giây.)* |
| Sato | 2.8<ruby>秒<rt>びょう</rt></ruby>は<ruby>長<rt>なが</rt></ruby>いですね。max_tokensはいくつですか?<br>*(2.8 giây dài đấy. max_tokens là bao nhiêu?)* |
| Đại | 1,024に<ruby>設定<rt>せってい</rt></ruby>しています。ただ<ruby>実際<rt>じっさい</rt></ruby>の<ruby>出力<rt>しゅつりょく</rt></ruby>は<ruby>平均<rt>へいきん</rt></ruby>250 tokens<ruby>程度<rt>ていど</rt></ruby>でした。<br>*(Em set 1024. Nhưng output thực tế trung bình chỉ khoảng 250 tokens ạ.)* |
| Sato | streamingを<ruby>試<rt>ため</rt></ruby>してみては? <ruby>体感<rt>たいかん</rt></ruby>レイテンシが<ruby>大<rt>おお</rt></ruby>きく<ruby>改善<rt>かいぜん</rt></ruby>されるはずです。<ruby>最初<rt>さいしょ</rt></ruby>のtokenが<ruby>返<rt>かえ</rt></ruby>るのは300〜500ミリ<ruby>秒<rt>びょう</rt></ruby><ruby>程度<rt>ていど</rt></ruby>のはずです。<br>*(Thử streaming xem? Latency cảm nhận sẽ cải thiện đáng kể. Token đầu tiên trả về tầm 300-500ms thôi.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。`stream=True`に<ruby>変更<rt>へんこう</rt></ruby>して、<ruby>明日<rt>あした</rt></ruby>のstandupで<ruby>結果<rt>けっか</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>いたします。<br>*(Em đã rõ. Em đổi thành `stream=True`, standup ngày mai em chia sẻ kết quả ạ.)* |
| Sato | お<ruby>願<rt>ねが</rt></ruby>いします。ちなみに、<ruby>事前<rt>じぜん</rt></ruby>に<ruby>原因<rt>げんいん</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>けて<ruby>報告<rt>ほうこく</rt></ruby>してくれてありがたい。<br>*(Nhờ em. Tiện đây, em đã phân tích nguyên nhân trước rồi mới báo cáo, anh cảm ơn.)* |

---

## Tình huống 6 — Cybozu desk · 8/8, Sato giới thiệu prompt caching cụ thể cho RAG

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、コスト<ruby>削減<rt>さくげん</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>です。プロンプトキャッシュを<ruby>導入<rt>どうにゅう</rt></ruby>すれば<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>下<rt>さ</rt></ruby>がります。<br>*(Đại, chuyện cắt giảm chi phí. Áp dụng prompt caching sẽ giảm đáng kể.)* |
| Đại | はい、ぜひ。<ruby>具体的<rt>ぐたいてき</rt></ruby>には、どの<ruby>部分<rt>ぶぶん</rt></ruby>をキャッシュすべきでしょうか?<br>*(Vâng, em rất muốn ạ. Cụ thể nên cache phần nào ạ?)* |
| Sato | 2か<ruby>所<rt>しょ</rt></ruby>。1つは<ruby>長<rt>なが</rt></ruby>めのsystemプロンプト(<ruby>例<rt>たと</rt></ruby>えば「あなたはCybozu Kintoneの<ruby>専門家<rt>せんもんか</rt></ruby>です」+ <ruby>指示<rt>しじ</rt></ruby>)。もう1つはfew-shotの<ruby>例<rt>れい</rt></ruby>。これらは<ruby>変<rt>か</rt></ruby>わらないので、cache_control = ephemeralを<ruby>付<rt>つ</rt></ruby>けます。<br>*(Hai chỗ. Một là system prompt dài (ví dụ "Bạn là chuyên gia về Cybozu Kintone" + chỉ thị). Hai là few-shot examples. Vì không đổi nên gắn cache_control = ephemeral.)* |
| Đại | <ruby>逆<rt>ぎゃく</rt></ruby>に、<ruby>検索<rt>けんさく</rt></ruby>で<ruby>取<rt>と</rt></ruby>ってきたドキュメントは<ruby>毎回<rt>まいかい</rt></ruby><ruby>変<rt>か</rt></ruby>わるのでキャッシュしない、ということですね。<br>*(Ngược lại, document lấy ra từ search thì mỗi lần khác nhau nên không cache, phải vậy không ạ.)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>り。キャッシュの<ruby>順序<rt>じゅんじょ</rt></ruby>は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>重要<rt>じゅうよう</rt></ruby>です。<ruby>固定<rt>こてい</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>、<ruby>可変<rt>かへん</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>後<rt>あと</rt></ruby>に<ruby>置<rt>お</rt></ruby>くのが<ruby>鉄則<rt>てっそく</rt></ruby>です。<br>*(Đúng. Thứ tự cache cực kỳ quan trọng. Phần cố định để trước, phần thay đổi để sau — quy tắc vàng.)* |
| Đại | なるほど、コスト<ruby>計算<rt>けいさん</rt></ruby>もしてみます。50,000<ruby>件<rt>けん</rt></ruby>のクエリで、<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>程度<rt>ていど</rt></ruby><ruby>削減<rt>さくげん</rt></ruby>できそうな<ruby>気<rt>き</rt></ruby>がします。<br>*(Hiểu rồi. Em sẽ tính cost. Với 50.000 query/tháng, em cảm thấy có thể giảm khoảng ¥30 nghìn ạ.)* |
| Sato | <ruby>試算<rt>しさん</rt></ruby>もぜひ。<ruby>本番<rt>ほんばん</rt></ruby><ruby>導入<rt>どうにゅう</rt></ruby>の<ruby>説得<rt>せっとく</rt></ruby><ruby>材料<rt>ざいりょう</rt></ruby>になります。<br>*(Tính thử luôn nhé. Sẽ là chất liệu thuyết phục cho production rollout.)* |

---

## Tình huống 7 — Cybozu desk · 14/8, Tanaka (intern khác) hỏi xin lời khuyên về prompt

*Tanaka từ team Kintone API ghé qua, ngồi bên Đại.*

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンくん、ちょっと<ruby>相談<rt>そうだん</rt></ruby>していい? <ruby>俺<rt>おれ</rt></ruby>のtaskでClaudeにJSON<ruby>出<rt>だ</rt></ruby>させたいんだけど、<ruby>形式<rt>けいしき</rt></ruby>がたまに<ruby>崩<rt>くず</rt></ruby>れるんだ。<br>*(Đại, anh hỏi nhờ chút được không? Task của anh muốn Claude xuất JSON, mà format thỉnh thoảng bị vỡ.)* |
| Đại | あ、その<ruby>問題<rt>もんだい</rt></ruby>はよく<ruby>聞<rt>き</rt></ruby>きます。<ruby>3<rt>みっ</rt></ruby>つ<ruby>方法<rt>ほうほう</rt></ruby>があります。<br>*(À, vấn đề đó hay gặp lắm. Có 3 cách ạ.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>、プロンプトに「<output_format>」XMLタグでJSON schemaを<ruby>明示<rt>めいじ</rt></ruby>する。2つ<ruby>目<rt>め</rt></ruby>、assistant<ruby>側<rt>がわ</rt></ruby>のprefillに「{」を<ruby>置<rt>お</rt></ruby>く。3つ<ruby>目<rt>め</rt></ruby>、tool useを<ruby>使<rt>つか</rt></ruby>う。<br>*(Một: trong prompt dùng XML tag "<output_format>" để chỉ định rõ JSON schema. Hai: prefill phía assistant bằng "{". Ba: dùng tool use.)* |
| Tanaka | prefill?<ruby>聞<rt>き</rt></ruby>いたことないな。<br>*(Prefill? Anh chưa nghe.)* |
| Đại | messagesの<ruby>最後<rt>さいご</rt></ruby>にrole=assistantで「{」を<ruby>入<rt>い</rt></ruby>れておく<ruby>方法<rt>ほうほう</rt></ruby>です。そうするとClaudeは<ruby>必<rt>かなら</rt></ruby>ずJSONの<ruby>続<rt>つづ</rt></ruby>きを<ruby>出力<rt>しゅつりょく</rt></ruby>します。<br>*(Cách này: trong messages cuối cùng thêm role=assistant với nội dung "{". Như vậy Claude bắt buộc tiếp tục xuất JSON.)* |
| Tanaka | お、<ruby>賢<rt>かしこ</rt></ruby>い! <ruby>後<rt>あと</rt></ruby>で<ruby>試<rt>ため</rt></ruby>してみる。ありがとう、グエンくん。<br>*(Ồ, khôn đấy! Lát anh thử. Cảm ơn Đại.)* |
| Đại | お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em vui vì giúp được anh.)* |

---

## Tình huống 8 — Cybozu phòng họp Tsubaki · 18/8, rehearsal demo với Sato + Inomata

| Vai | Lời thoại |
|---|---|
| Inomata | では、25<ruby>日<rt>にち</rt></ruby>のデモのリハーサルをしましょう。グエンさん、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy ta rehearsal cho demo 25 nhé. Đại, mời em.)* |
| Đại | はい。「Cybozu Document RAG <ruby>中間<rt>ちゅうかん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>」、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>インターン、グエン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng. "Cybozu Document RAG — báo cáo giữa kỳ", em là Nguyễn Đại, sinh viên năm 3 Đại học Osaka thực tập. Hôm nay xin được trình bày ạ.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>構成<rt>こうせい</rt></ruby>は、(1)<ruby>背景<rt>はいけい</rt></ruby>、(2)アーキテクチャ、(3)<ruby>成果<rt>せいか</rt></ruby>と<ruby>数値<rt>すうち</rt></ruby>、(4)<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby><ruby>案<rt>あん</rt></ruby>の4<ruby>部<rt>ぶ</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>、10<ruby>分間<rt>ぷんかん</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。<br>*(Bố cục hôm nay gồm 4 phần: (1) bối cảnh, (2) kiến trúc, (3) thành quả và số liệu, (4) đề xuất triển khai chính thức — dự kiến 10 phút ạ.)* |
| Sato | グエンさん、<ruby>1<rt>ひと</rt></ruby>つだけアドバイス。「<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>」のスライドで、コスト<ruby>削減<rt>さくげん</rt></ruby><ruby>効果<rt>こうか</rt></ruby>を<ruby>金額<rt>きんがく</rt></ruby>ベースで<ruby>示<rt>しめ</rt></ruby>すと<ruby>説得力<rt>せっとくりょく</rt></ruby>が<ruby>増<rt>ま</rt></ruby>します。<br>*(Đại, anh có 1 advice. Slide "triển khai chính thức", thể hiện hiệu quả cắt giảm chi phí bằng số tiền cụ thể thì thuyết phục hơn.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。プロンプトキャッシュ<ruby>導入後<rt>どうにゅうご</rt></ruby>の<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>削減<rt>さくげん</rt></ruby><ruby>見込<rt>みこ</rt></ruby>みを<ruby>明記<rt>めいき</rt></ruby>します。<br>*(Em đã rõ. Em sẽ ghi rõ con số dự kiến giảm ¥30 nghìn/tháng sau khi áp dụng prompt caching.)* |
| Inomata | <ruby>質疑応答<rt>しつぎおうとう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>もしておきましょう。「LangChainを<ruby>使<rt>つか</rt></ruby>わなかった<ruby>理由<rt>りゆう</rt></ruby>は?」と<ruby>聞<rt>き</rt></ruby>かれたらどう<ruby>答<rt>こた</rt></ruby>えますか?<br>*(Chuẩn bị cả Q&A. Nếu được hỏi "Tại sao không dùng LangChain?" thì em trả lời sao?)* |
| Đại | はい、<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>レイヤーの<ruby>過剰<rt>かじょう</rt></ruby>とデバッグ<ruby>容易<rt>ようい</rt></ruby><ruby>性<rt>せい</rt></ruby>の<ruby>観点<rt>かんてん</rt></ruby>から、バニラSDKを<ruby>選<rt>えら</rt></ruby>びました、と<ruby>答<rt>こた</rt></ruby>えるつもりです。<br>*(Vâng, em định trả lời: dựa trên góc nhìn lớp trừu tượng dư thừa và tính dễ debug, em chọn vanilla SDK ạ.)* |
| Sato | <ruby>完璧<rt>かんぺき</rt></ruby>です。<br>*(Hoàn hảo.)* |

---

## Tình huống 9 — Cybozu phòng họp lớn · 25/8 14:00, làm mẫu nội bộ trước CTO

*Phòng họp lớn, ~20 người gồm CTO, Sato, Inomata, các engineer khác. Đại đứng trước projector.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>お<ruby>集<rt>あつ</rt></ruby>まりいただき、ありがとうございます。インターンのグエン・ダイです。<br>*(Kính thưa quý vị, cảm ơn quý vị bận rộn vẫn đến tham dự. Em là intern Nguyễn Đại ạ.)* |
| Đại | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。50,000<ruby>件<rt>けん</rt></ruby>のドキュメントを<ruby>対象<rt>たいしょう</rt></ruby>に、semantic<ruby>検索<rt>けんさく</rt></ruby>80ミリ<ruby>秒<rt>びょう</rt></ruby> + Claude<ruby>生成<rt>せいせい</rt></ruby>1.5<ruby>秒<rt>びょう</rt></ruby>、<ruby>引用<rt>いんよう</rt></ruby><ruby>精度<rt>せいど</rt></ruby>95%、<ruby>1<rt>いち</rt></ruby>クエリあたり$0.02を<ruby>達成<rt>たっせい</rt></ruby>しました。<br>*(Em xin nói kết luận trước. Với 50.000 tài liệu: semantic search 80ms + Claude generation 1.5s, độ chính xác trích dẫn 95%, $0.02/query.)* |
| CTO (40t) | おお、<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>の<ruby>見込<rt>みこ</rt></ruby>みは?<br>*(Ồ, tuyệt vời. Khả năng triển khai production thì sao?)* |
| Đại | <ruby>来年<rt>らいねん</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby>四<ruby>半<rt>はん</rt></ruby><ruby>期<rt>き</rt></ruby>に、エンジニア4〜6<ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>工数<rt>こうすう</rt></ruby>で<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しております。<br>*(Em đánh giá có thể triển khai production trong Q1 năm sau, với 4-6 tuần công sức kỹ thuật.)* |
| CTO | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>本番<rt>ほんばん</rt></ruby><ruby>導入<rt>どうにゅう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>として<ruby>正式<rt>せいしき</rt></ruby>に<ruby>検討<rt>けんとう</rt></ruby>します。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でここまでよく<ruby>形<rt>かたち</rt></ruby>にしてくれました。<br>*(Tuyệt vời! Sẽ chính thức cân nhắc làm ứng viên production. 3 tháng mà em đã đưa được đến mức này, giỏi lắm.)* |
| Đại | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>猪股<rt>いのまた</rt></ruby>さんはじめチームの<ruby>皆様<rt>みなさま</rt></ruby>のおかげです。<br>*(Em cảm ơn. Là nhờ anh Sato, anh Inomata và cả team ạ.)* |

---

## Tình huống 10 — Cybozu phòng họp · 25/8 14:30, Q&A — engineer khác chất vấn về LangChain

| Vai | Lời thoại |
|---|---|
| Engineer C | <ruby>質問<rt>しつもん</rt></ruby>です。LangChainを<ruby>使<rt>つか</rt></ruby>えば<ruby>開発<rt>かいはつ</rt></ruby><ruby>速度<rt>そくど</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がるのでは? <ruby>使<rt>つか</rt></ruby>わなかった<ruby>理由<rt>りゆう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho hỏi. Dùng LangChain thì tốc độ phát triển sẽ tăng chứ? Lý do không dùng là gì?)* |
| Đại | ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます。<ruby>3<rt>みっ</rt></ruby>つの<ruby>観点<rt>かんてん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>いたしました。<br>*(Cảm ơn câu hỏi ạ. Em đã phán đoán dựa trên 3 góc nhìn.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>、パイプラインが3ステップと<ruby>単純<rt>たんじゅん</rt></ruby>で、LangChainの<ruby>抽象化<rt>ちゅうしょうか</rt></ruby>は<ruby>過剰<rt>かじょう</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>。2つ<ruby>目<rt>め</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby><ruby>運用<rt>うんよう</rt></ruby>でのデバッグ<ruby>容易<rt>ようい</rt></ruby><ruby>性<rt>せい</rt></ruby>を<ruby>重視<rt>じゅうし</rt></ruby>。3つ<ruby>目<rt>め</rt></ruby>、Anthropic SDKが<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>洗練<rt>せんれん</rt></ruby>されていてバニラで<ruby>可読性<rt>かどくせい</rt></ruby>が<ruby>確保<rt>かくほ</rt></ruby>できる。<br>*(Một: pipeline chỉ 3 bước đơn giản, lớp trừu tượng của LangChain là dư. Hai: trọng dụng tính dễ debug khi vận hành production. Ba: Anthropic SDK đủ tinh gọn, vanilla vẫn đảm bảo dễ đọc.)* |
| Đại | ただ、ご<ruby>指摘<rt>してき</rt></ruby>の<ruby>通<rt>とお</rt></ruby>り、<ruby>複雑<rt>ふくざつ</rt></ruby>なagentic workflowを<ruby>構築<rt>こうちく</rt></ruby>する<ruby>場合<rt>ばあい</rt></ruby>はLangChainやLangGraphの<ruby>検討<rt>けんとう</rt></ruby><ruby>価値<rt>かち</rt></ruby>はあると<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Tuy nhiên, đúng như anh chỉ ra, nếu xây agentic workflow phức tạp thì LangChain hoặc LangGraph có giá trị cân nhắc ạ.)* |
| Engineer C | <ruby>納得<rt>なっとく</rt></ruby>です。<ruby>判断<rt>はんだん</rt></ruby><ruby>根拠<rt>こんきょ</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>で<ruby>良<rt>よ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi đồng tình. Căn cứ phán đoán rõ ràng, tốt đấy.)* |
| Đại | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 11 — Cybozu pantry · 25/8 16:00, Inomata + Sato chúc mừng demo thành công

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした! デモ、<ruby>素晴<rt>すば</rt></ruby>らしかったです。<br>*(Đại, em vất vả rồi! Demo tuyệt vời.)* |
| Đại | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しましたが、なんとか<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>終<rt>お</rt></ruby>えられて<ruby>良<rt>よ</rt></ruby>かったです。<br>*(Em cảm ơn. Em hồi hộp lắm nhưng cuối cùng cũng kết thúc trôi chảy, em mừng quá ạ.)* |
| Sato | <ruby>特<rt>とく</rt></ruby>にQ&Aの<ruby>受<rt>う</rt></ruby>け<ruby>答<rt>こた</rt></ruby>えがプロフェッショナルでした。<ruby>3<rt>みっ</rt></ruby>つの<ruby>観点<rt>かんてん</rt></ruby>で<ruby>整理<rt>せいり</rt></ruby>して<ruby>答<rt>こた</rt></ruby>えるところ、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Đặc biệt phần trả lời Q&A rất chuyên nghiệp. Cách em sắp xếp theo 3 góc nhìn để trả lời, anh học hỏi được luôn.)* |
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さんに<ruby>事前<rt>じぜん</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>させていただいたおかげです。<br>*(Là nhờ anh Sato cho em luyện tập trước ạ.)* |
| Inomata | <ruby>残<rt>のこ</rt></ruby>り<ruby>1<rt>いっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>最後<rt>さいご</rt></ruby>の<ruby>発表<rt>はっぴょう</rt></ruby>がCTOを<ruby>含<rt>ふく</rt></ruby>む<ruby>幹部<rt>かんぶ</rt></ruby><ruby>陣<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けですから、さらに<ruby>大事<rt>だいじ</rt></ruby>ですよ。<br>*(Một tháng còn lại nhờ em nhé. Lần thuyết trình cuối sẽ trước cả ban lãnh đạo gồm CTO, càng quan trọng hơn đấy.)* |
| Đại | はい、<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>精<rt>せい</rt></ruby><ruby>進<rt>しん</rt></ruby>いたします。<br>*(Vâng, em xin tiếp tục nỗ lực ạ.)* |

---

## Tình huống 12 — Toyonaka apartment · 25/8 22:00, Đại về nhà báo Mai demo thành công — cảnh tiếng Việt cuối chương

> Đại về nhà muộn vì đi 飲み会 nhỏ sau demo. Mai đang dỗ Hana 20 ngày tuổi vừa khóc xong (Hana sinh 5/8/2028).

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, anh về rồi. Hana ngủ chưa? |
| Mai | (tiếng Việt) Vừa ngủ lại. Tối nay anh làm mẫu thế nào? |
| Đại | (tiếng Việt) Tốt lắm em! CTO của Cybozu khen, anh ấy nói chính thức xem xét triển khai sang năm. |
| Mai | (tiếng Việt) Trời ơi! Mừng quá anh ơi! Vậy là 3 tháng intern ra cái này coi như đỉnh rồi nhỉ. |
| Đại | (tiếng Việt) Ừ. Mà cái hay nhất là có một anh engineer chất vấn anh — "Sao không dùng LangChain?". Anh trả lời 3 lý do, anh ấy gật đầu. |
| Mai | (tiếng Việt) LangChain là cái gì hả anh? |
| Đại | (tiếng Việt) Nó là một framework gói gọn các bước gọi LLM lại. Mọi người hay dùng cho tiện. Nhưng anh phân tích pipeline mình chỉ 3 bước thôi, không cần. Dùng SDK gốc của Anthropic luôn cho dễ debug. |
| Mai | (tiếng Việt) Vậy là anh dám không theo trend phải không? |
| Đại | (tiếng Việt) Đúng. Mai à, hôm nay anh học được cái này quan trọng — không phải cứ framework xịn là dùng. Phải nhìn pipeline của mình rồi quyết. |
| Mai | (tiếng Việt) Em hiểu. Cái đó với Hizashi cũng vậy đúng không? |
| Đại | (tiếng Việt) Ừ. Anh sẽ làm Hizashi bằng vanilla Anthropic SDK luôn. Cộng thêm prompt caching — kỹ thuật anh mới học hôm nay, giảm 90% chi phí input. |
| Mai | (tiếng Việt) 90% á? Vậy app Hizashi tương lai chi phí AI rẻ lắm hả anh? |
| Đại | (tiếng Việt) Ừ, $0.02 mỗi câu hỏi thôi. Mai à, em hiểu không, anh đang được Cybozu trả lương ¥250 nghìn/tháng để học chính xác công nghệ làm Hizashi. |
| Mai | (tiếng Việt) Em hiểu rồi. Anh là ăn 2 đầu á! |
| Đại | (tiếng Việt) Cười... Còn nữa, anh làm mẫu cho team xong, anh Sato dạy thêm một mẹo — khi gọi LLM xuất JSON, prefill phía assistant bằng dấu ngoặc nhọn mở. Anh sẽ áp dụng cho Hizashi luôn. |
| Mai | (tiếng Việt) Em không hiểu kỹ thuật nhưng nghe anh vui em vui. Mai về với mẹ con em sớm nhé. |
| Đại | (tiếng Việt) Ừ. Mà anh xin lỗi đêm nay về muộn — có 飲み会 sau demo, anh không từ chối được. |
| Mai | (tiếng Việt) Không sao. Đó là văn hoá Nhật mà. Anh cứ nuôi quan hệ với senior đi, sau này có ích. |

---

## Đọng lại chương 6

Đại có 5 tuần giữa kỳ intern Cybozu — giai đoạn deep dive Claude API. Học **trao đổi technical sâu với senior** (「〜について少しお聞きしたいことがあります」), **bảo vệ quyết định kỹ thuật bằng 3 điểm** (「3点ございます。1点目〜」), **báo cáo bug có phân tích nguyên nhân** (「原因を調査したところ〜」), **keigo trong demo cấp CTO** (「結論から申し上げます」, 「ご質問ありがとうございます」), và **trả lời Q&A chất vấn** với cấu trúc 3 góc nhìn. Hiểu sâu **5 nguyên tắc prompt engineering** (specific + XML tag + few-shot + chain-of-thought + output format), **prompt caching** (cố định trước, biến đổi sau — giảm 90% input cost), **streaming** (cải thiện cảm nhận latency), và **prefill** (ép Claude xuất JSON đúng format). Quyết định vanilla SDK > LangChain với 3 căn cứ rõ ràng. Demo trước CTO thành công — được duyệt làm ứng viên triển khai production Q1/2029.

> Từ vựng & mẫu câu chương này: Anthropic SDK・Claude 3.5 Sonnet・プロンプトキャッシュ・cache_control・ephemeral・few-shot・chain-of-thought・XMLタグ・prefill・streaming・citations・ハルシネーション・LangChain・抽象化レイヤー・バニラSDK・本番展開・四半期・工数・結論から申し上げます・3点ございます・ご質問ありがとうございます・〜と判断しております・ご指摘の通り・納得です・お役に立てて嬉しいです

## Bí quyết chương

- **Bảo vệ quyết định kỹ thuật bằng 3 điểm**: Người Nhật rất thích cấu trúc 「3点ございます。1点目〜、2点目〜、3点目〜」. Senior + management đánh giá cao logic rõ ràng hơn ý kiến mạnh.
- **「結論から申し上げます」mở demo**: Style business Nhật bắt đầu bằng kết luận trước, sau đó mới detail. Ngược với academic Việt Nam (nền tảng → kết luận cuối).
- **Trong Q&A đừng phòng thủ**: Khi bị chất vấn, công nhận trước cái hợp lý của challenger (「ご指摘の通り〜の場合は検討価値があると考えております」), rồi mới giữ vững quyết định.
- **Prompt caching là kỹ thuật must-have**: Bất kỳ RAG production nào cũng phải dùng. Fixed prompt + few-shot lên đầu, retrieved docs sau.
- **Prefill ép Claude xuất JSON**: Thêm role=assistant với content="{" — Claude bắt buộc tiếp tục JSON. Kỹ thuật ít người biết.
- **Streaming = trải nghiệm tốt hơn**: Latency tổng không giảm, nhưng time-to-first-token giảm từ 2.8s xuống 300ms. User cảm thấy nhanh hơn nhiều.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 明示 | めいじ | MINH THỊ | Chỉ rõ |
| 指示 | しじ | CHỈ THỊ | Hướng dẫn, prompt |
| 明確 | めいかく | MINH XÁC | Rõ ràng |
| 料金 | りょうきん | LIỆU KIM | Giá, phí |
| 仕組み | しくみ | SĨ TỔ | Cơ chế |
| 繰り返す | くりかえす | PHIÊN PHẢN | Lặp lại |
| 詳細 | しょうさい | TƯỜNG TẾ | Chi tiết |
| 構造化 | こうぞうか | CẤU TẠO HOÁ | Cấu trúc hoá |
| 好む | このむ | HẢO | Thích, ưa |
| 出力形式 | しゅつりょくけいしき | XUẤT LỰC HÌNH THỨC | Format output |
| 押さえる | おさえる | ÁP | Nắm bắt, ấn |
| 業務 | ぎょうむ | NGHIỆP VỤ | Nghiệp vụ |
| 強力 | きょうりょく | CƯỜNG LỰC | Mạnh mẽ |
| 程度 | ていど | TRÌNH ĐỘ | Mức độ |
| 細かい | こまかい | TẾ | Chi tiết, tỉ mỉ |
| 基準 | きじゅん | CƠ CHUẨN | Tiêu chuẩn |
| 情報 | じょうほう | TÌNH BÁO | Thông tin |
| 引用元 | いんようもと | DẪN DỤNG NGUYÊN | Nguồn trích dẫn |
| 引用 | いんよう | DẪN DỤNG | Trích dẫn |
| ハルシネーション | — | — | Ảo giác (LLM) |
| 対策 | たいさく | ĐỐI SÁCH | Đối sách |
| 後処理 | あとしょり | HẬU XỬ LÝ | Hậu xử lý |
| 楽 | らく | LẠC | Nhẹ, dễ chịu |
| 議論 | ぎろん | NGHỊ LUẬN | Thảo luận |
| 規模 | きぼ | QUY MÔ | Quy mô |
| 過剰 | かじょう | QUÁ THẶNG | Dư thừa |
| 抽象化 | ちゅうしょうか | TRỪU TƯỢNG HOÁ | Trừu tượng hoá |
| 層 | レイヤー | TẦNG | Tầng, lớp |
| 困難 | こんなん | KHỐN NẠN | Khó khăn |
| 越し | ごし | VIỆT | Qua, xuyên qua |
| 非常 | ひじょう | PHI THƯỜNG | Cực kỳ |
| 洗練 | せんれん | TẨY LUYỆN | Tinh gọn |
| 説得力 | せっとくりょく | THUYẾT ĐẮC LỰC | Sức thuyết phục |
| 同意 | どうい | ĐỒNG Ý | Đồng ý |
| 尊重 | そんちょう | TÔN TRỌNG | Tôn trọng |
| 問題 | もんだい | VẤN ĐỀ | Vấn đề |
| 想定 | そうてい | TƯỞNG ĐỊNH | Giả định |
| 平均 | へいきん | BÌNH QUÂN | Trung bình |
| 占める | しめる | CHIẾM | Chiếm |
| 体感 | たいかん | THỂ CẢM | Cảm nhận |
| 削減 | さくげん | TIẾT GIẢM | Cắt giảm |
| 大幅 | おおはば | ĐẠI BÚC | Đáng kể |
| 場所 | ばしょ | TRƯỜNG SỞ | Nơi, chỗ |
| 専門家 | せんもんか | CHUYÊN MÔN GIA | Chuyên gia |
| 逆 | ぎゃく | NGHỊCH | Ngược |
| 鉄則 | てっそく | THIẾT TẮC | Quy tắc vàng |
| 試算 | しさん | THÍ TOÁN | Ước tính |
| 説得材料 | せっとくざいりょう | THUYẾT ĐẮC TÀI LIỆU | Chất liệu thuyết phục |
| 賢い | かしこい | HIỀN | Khôn, thông minh |
| 役に立つ | やくにたつ | DỊCH | Có ích |
| 工数 | こうすう | CÔNG SỐ | Công sức (man-hour) |
| 四半期 | しはんき | TỨ BÁN KỲ | Quý |
| 質疑応答 | しつぎおうとう | CHẤT NGHI ỨNG ĐÁP | Hỏi đáp |
| 容易性 | よういせい | DUNG DỊ TÍNH | Tính dễ dàng |
| 結論 | けつろん | KẾT LUẬN | Kết luận |
| 候補 | こうほ | HẬU BỔ | Ứng cử viên |
| 承認 | しょうにん | THỪA NHẬN | Phê duyệt |
| 形 | かたち | HÌNH | Hình thức |
| 関係部署 | かんけいぶしょ | QUAN HỆ BỘ THỰ | Bộ phận liên quan |
| 身に余る | みにあまる | THÂN DƯ | Quá vinh dự |
| 光栄 | こうえい | QUANG VINH | Vinh dự |
| 納得 | なっとく | NẠP ĐẮC | Đồng tình |
| 複雑 | ふくざつ | PHỨC TẠP | Phức tạp |
| 価値 | かち | GIÁ TRỊ | Giá trị |
| 受け答え | うけこたえ | THỤ ĐÁP | Trả lời (Q&A) |
| 引き続き | ひきつづき | DẪN TỤC | Tiếp tục |
| 精進 | せいしん | TINH TIẾN | Nỗ lực |
| 幹部陣 | かんぶじん | CÁN BỘ TRẬN | Ban lãnh đạo |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000007, 800000023, NULL, 'markdown_book', 'T7. Kết thúc intern Cybozu — final presentation + lời đề nghị 内定 (インターン終了)', '# Sách sinh viên Đại học Osaka · T7. Kết thúc intern Cybozu — final presentation + lời đề nghị 内定 (インターン終了)

> **Mục tiêu nhân vật:** Đại 23 tuổi, intern Cybozu tuần 12-13 cuối kỳ, 9/2028. Học các mẫu hội thoại tiếng Nhật của intern engineer giai đoạn closing: (1) keigo phát biểu cuối kỳ trước executive, (2) trả lời chất vấn ở cấp CEO bằng business Japanese, (3) tiếp nhận đề nghị 内定 (job offer) và xin thời gian cân nhắc, (4) keigo từ chối khéo / hoãn quyết định, (5) chào tạm biệt + cảm ơn senpai trong 送別会, (6) gửi email lịch sự sau khi rời công ty.

---

## Bối cảnh

Tháng 9 năm 2028. 3 tuần cuối kỳ intern dài hạn 3 tháng tại Cybozu Osaka. Đại đã hoàn thiện RAG system, làm mẫu nội bộ tháng 8 được CTO khen. Giờ là final presentation trước cả ban executive gồm CEO + CTO + HR Director. HR sẽ chính thức đề cập 内定 fresh xuân 2030. Hana hơn 1 tháng tuổi (sinh 5/8), Mai phục hồi sau sinh, mẹ Đại đang ở Toyonaka chăm cháu. Chương này tập trung các mẫu câu keigo cấp cao + cách phản ứng lịch sự khi được offer + cách bày tỏ biết ơn senpai khi rời công ty.

---

## Tình huống 1 — Cybozu phòng họp lớn All Hands · 28/9 10:00, final presentation 15 phút trước ~50 người

*Phòng họp lớn nhất công ty, có CEO Aono, CTO, HR Director, ~50 engineer. Đại mặc suit, slide đã chuẩn bị kỹ.*

| Vai | Lời thoại |
|---|---|
| Inomata | では、<ruby>本日<rt>ほんじつ</rt></ruby>のメインイベント、グエン・ダイさんの<ruby>最終<rt>さいしゅう</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>です。グエンさん、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy thì sự kiện chính hôm nay, bài thuyết trình cuối kỳ của Nguyễn Đại. Mời em.)* |
| Đại | (đứng dậy, cúi chào sâu 30 độ) <ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Kính thưa quý vị, hôm nay quý vị bận rộn vẫn dành thời gian, em xin chân thành cảm ơn ạ.)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学<rt>じょうほうかがく</rt></ruby><ruby>科<rt>か</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>、グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>は「Cybozu Document RAG <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>インターンの<ruby>成果<rt>せいか</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>」を、15<ruby>分間<rt>ふんかん</rt></ruby>でお<ruby>話<rt>はな</rt></ruby>しさせていただきます。<br>*(Em là Nguyễn Đại, sinh viên năm 3 ngành Khoa học Thông tin Đại học Osaka. Hôm nay em xin trình bày "Báo cáo thành quả 3 tháng intern Cybozu Document RAG" trong vòng 15 phút ạ.)* |
| Đại | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で50,000<ruby>件<rt>けん</rt></ruby>のKintoneドキュメントに<ruby>対<rt>たい</rt></ruby>する<ruby>本番<rt>ほんばん</rt></ruby><ruby>導入<rt>どうにゅう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>レベルのRAGシステムを<ruby>構築<rt>こうちく</rt></ruby>いたしました。<br>*(Em xin nói kết luận trước. Trong 3 tháng, em đã xây dựng được hệ thống RAG cấp độ production-ready cho 50.000 tài liệu Kintone.)* |

---

## Tình huống 2 — Cybozu phòng họp lớn · 28/9 10:05, trình bày số liệu thành quả

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>主<rt>おも</rt></ruby>な<ruby>成果<rt>せいか</rt></ruby>を<ruby>4<rt>よっ</rt></ruby>つご<ruby>紹介<rt>しょうかい</rt></ruby>します。<ruby>1<rt>いち</rt></ruby>、ベンチマーク<ruby>結果<rt>けっか</rt></ruby>:recall@5は85%、レイテンシは<ruby>平均<rt>へいきん</rt></ruby>1.6<ruby>秒<rt>びょう</rt></ruby>。<br>*(Em xin giới thiệu 4 thành quả chính. Một: kết quả benchmark — recall@5 là 85%, latency trung bình 1.6 giây.)* |
| Đại | <ruby>2<rt>に</rt></ruby>、<ruby>引用<rt>いんよう</rt></ruby><ruby>精度<rt>せいど</rt></ruby>95%。Claudeの「citations」<ruby>機能<rt>きのう</rt></ruby>と<documents>XMLタグの<ruby>併用<rt>へいよう</rt></ruby>でハルシネーションを<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>削減<rt>さくげん</rt></ruby>しました。<br>*(Hai: độ chính xác trích dẫn 95%. Kết hợp feature "citations" của Claude và XML tag <documents>, giảm hallucination đáng kể.)* |
| Đại | <ruby>3<rt>さん</rt></ruby>、コスト$0.02/クエリ。プロンプトキャッシュ<ruby>導入<rt>どうにゅう</rt></ruby>で、<ruby>月<rt>つき</rt></ruby>50,000クエリ<ruby>想定<rt>そうてい</rt></ruby>でも<ruby>月額<rt>げつがく</rt></ruby>$1,000<ruby>程度<rt>ていど</rt></ruby>に<ruby>抑<rt>おさ</rt></ruby>えられます。<br>*(Ba: chi phí $0.02/query. Áp dụng prompt caching, giả định 50.000 query/tháng cũng chỉ tốn khoảng $1.000/tháng.)* |
| Đại | <ruby>4<rt>よん</rt></ruby>、コード<ruby>規模<rt>きぼ</rt></ruby>4,200行、test coverage 78%、社内GitHubに`cybozu/kintone-rag`としてレビュー<ruby>済<rt>ず</rt></ruby>みでマージ<ruby>済<rt>ず</rt></ruby>みです。<br>*(Bốn: quy mô code 4.200 dòng, test coverage 78%, đã merge vào GitHub nội bộ tại `cybozu/kintone-rag` sau review.)* |

---

## Tình huống 3 — Cybozu phòng họp lớn · 28/9 10:12, đề xuất production rollout

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>最後<rt>さいご</rt></ruby>に、<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>のご<ruby>提案<rt>ていあん</rt></ruby>をさせていただきます。<ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>四<rt>し</rt></ruby><ruby>半<rt>はん</rt></ruby><ruby>期<rt>き</rt></ruby>、エンジニア4〜6<ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>工数<rt>こうすう</rt></ruby>で<ruby>展開<rt>てんかい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>いたします。<br>*(Cuối cùng em xin đề xuất triển khai production. Em đánh giá có thể triển khai trong Q1/2029, với 4-6 tuần công sức kỹ thuật.)* |
| Đại | <ruby>必要<rt>ひつよう</rt></ruby>な<ruby>追加<rt>ついか</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ:インフラのSRE<ruby>連携<rt>れんけい</rt></ruby>、<ruby>監視<rt>かんし</rt></ruby>ダッシュボード<ruby>構築<rt>こうちく</rt></ruby>、<ruby>段階的<rt>だんかいてき</rt></ruby>ロールアウトの<ruby>設計<rt>せっけい</rt></ruby>です。<br>*(Có 3 công việc bổ sung cần làm: kết hợp với SRE team về hạ tầng, xây dashboard monitoring, và thiết kế gradual rollout.)* |
| Đại | <ruby>以上<rt>いじょう</rt></ruby>でございます。ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。ご<ruby>質問<rt>しつもん</rt></ruby>をお<ruby>受<rt>う</rt></ruby>けします。<br>*(Em trình bày xong ạ. Cảm ơn quý vị đã lắng nghe. Em xin nhận câu hỏi ạ.)* |
| (vỗ tay) | (cả phòng vỗ tay)<br>*(...)* |

---

## Tình huống 4 — Cybozu phòng họp lớn · 28/9 10:15, CEO Aono chất vấn trực tiếp

| Vai | Lời thoại |
|---|---|
| CEO Aono | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>発表<rt>はっぴょう</rt></ruby>でした。1つ<ruby>聞<rt>き</rt></ruby>かせてください。コスト$1,000/<ruby>月<rt>つき</rt></ruby>とのことですが、<ruby>10<rt>じゅう</rt></ruby><ruby>倍<rt>ばい</rt></ruby>にスケールした<ruby>場合<rt>ばあい</rt></ruby>のリスクは<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Bài thuyết trình tuyệt vời. Cho tôi hỏi 1 câu. Em nói chi phí $1.000/tháng, nhưng nếu scale gấp 10 lần thì rủi ro là gì?)* |
| Đại | ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます。<ruby>2<rt>ふた</rt></ruby>つのリスクをご<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Em cảm ơn câu hỏi của anh ạ. Em xin giải thích 2 rủi ro.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>、Anthropic APIのrate limit。Tier 4でも<ruby>毎分<rt>まいふん</rt></ruby>400 requestsが<ruby>上限<rt>じょうげん</rt></ruby>です。500,000クエリ/<ruby>月<rt>つき</rt></ruby>になると<ruby>上限<rt>じょうげん</rt></ruby>に<ruby>触<rt>ふ</rt></ruby>れる<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Một: rate limit của Anthropic API. Cả Tier 4 cũng giới hạn 400 requests/phút. Lên 500.000 query/tháng có thể chạm trần.)* |
| Đại | <ruby>対策<rt>たいさく</rt></ruby>として、Anthropicと<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>するか、AWS Bedrock <ruby>経由<rt>けいゆ</rt></ruby>でClaudeを<ruby>呼<rt>よ</rt></ruby>ぶ<ruby>選択<rt>せんたく</rt></ruby><ruby>肢<rt>し</rt></ruby>が<ruby>考<rt>かんが</rt></ruby>えられます。<br>*(Đối sách: thương lượng trực tiếp với Anthropic, hoặc gọi Claude qua AWS Bedrock là phương án có thể cân nhắc.)* |
| Đại | 2つ<ruby>目<rt>め</rt></ruby>、pgvectorのindex<ruby>性能<rt>せいのう</rt></ruby>。50,000<ruby>件<rt>けん</rt></ruby>では<ruby>問題<rt>もんだい</rt></ruby>ありませんが、500,000<ruby>件<rt>けん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えるとHNSWやIVFFlatのチューニングが<ruby>必要<rt>ひつよう</rt></ruby>になります。<br>*(Hai: hiệu năng index của pgvector. Với 50.000 thì không sao, nhưng vượt 500.000 thì cần tuning HNSW hoặc IVFFlat.)* |
| CEO Aono | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>明確<rt>めいかく</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>ですね。<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>します。<ruby>関係部署<rt>かんけいぶしょ</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Câu trả lời rất rõ ràng. Tôi phê duyệt triển khai production. Hãy phối hợp với các bộ phận liên quan.)* |
| Đại | ありがとうございます。<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(Em cảm ơn anh ạ. Đây là vinh dự vượt quá khả năng của em.)* |

---

## Tình huống 5 — Cybozu phòng họp HR · 30/9 14:00, HR Director chính thức đề cập 内定

*Phòng họp riêng, có HR Director Yamada-san (45t) và Inomata. Trên bàn là một tệp tài liệu in màu.*

| Vai | Lời thoại |
|---|---|
| Yamada (HR) | グエンさん、<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>来年度<rt>らいねんど</rt></ruby><ruby>新卒<rt>しんそつ</rt></ruby><ruby>採用<rt>さいよう</rt></ruby>についてご<ruby>案内<rt>あんない</rt></ruby>させていただきます。<br>*(Đại à, 3 tháng vừa qua thật sự vất vả cho em. Hôm nay chị xin được giới thiệu về chương trình tuyển dụng fresh năm sau.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin lắng nghe ạ.)* |
| Yamada | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、グエンさんに<ruby>2030<rt>にせんさんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>春<rt>はる</rt></ruby><ruby>入社<rt>にゅうしゃ</rt></ruby>の<ruby>内定<rt>ないてい</rt></ruby>を<ruby>正式<rt>せいしき</rt></ruby>にお<ruby>出<rt>だ</rt></ruby>ししたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Chị nói kết luận trước. Cybozu chính thức muốn đưa ra lời đề nghị 内定 cho em vào công ty xuân 2030.)* |
| Đại | (cúi đầu) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。ありがとうございます。<br>*(Đây là lời quá vinh dự với em ạ. Em cảm ơn chị.)* |
| Yamada | <ruby>条件<rt>じょうけん</rt></ruby>を<ruby>4<rt>よっ</rt></ruby>つご<ruby>説明<rt>せつめい</rt></ruby>します。1、<ruby>初任給<rt>しょにんきゅう</rt></ruby><ruby>月額<rt>げつがく</rt></ruby>42<ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby> + <ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>ボーナス<ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月分<rt>かげつぶん</rt></ruby>、<ruby>年収<rt>ねんしゅう</rt></ruby><ruby>約<rt>やく</rt></ruby>670<ruby>万円<rt>まんえん</rt></ruby>。<br>*(Chị giải thích 4 điều kiện. Một: lương khởi điểm ¥420 nghìn/tháng + bonus 6 tháng/năm chia 2 lần, tổng thu nhập khoảng ¥6.7 triệu/năm.)* |
| Yamada | 2、<ruby>勤務地<rt>きんむち</rt></ruby><ruby>大阪<rt>おおさか</rt></ruby>オフィス、ハイブリッド<ruby>勤務<rt>きんむ</rt></ruby>3+2(<ruby>週<rt>しゅう</rt></ruby><ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>出社<rt>しゅっしゃ</rt></ruby>+<ruby>週<rt>しゅう</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>日<rt>か</rt></ruby>リモート)。<br>*(Hai: nơi làm việc Osaka office, hybrid 3+2 — 3 ngày văn phòng + 2 ngày remote.)* |
| Yamada | 3、<ruby>面接<rt>めんせつ</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby> + <ruby>内定<rt>ないてい</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>(<ruby>長期<rt>ちょうき</rt></ruby>インターンの<ruby>成果<rt>せいか</rt></ruby>を<ruby>評価<rt>ひょうか</rt></ruby>させていただきました)。<br>*(Ba: miễn phỏng vấn + cam kết 内定, do chị đã đánh giá thành quả intern dài hạn của em.)* |
| Yamada | 4、ご<ruby>返答<rt>へんとう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>以内<rt>いない</rt></ruby>、つまり<ruby>12<rt>じゅうに</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までにお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bốn: hạn phản hồi là 3 tháng, tức trong cuối tháng 12 em phản hồi nhé.)* |

---

## Tình huống 6 — Cybozu phòng họp HR · 30/9 14:15, Đại xin thời gian cân nhắc

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>大変<rt>たいへん</rt></ruby><ruby>光栄<rt>こうえい</rt></ruby>なお<ruby>話<rt>はなし</rt></ruby>、<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申し上げます。<br>*(Đây là lời mời rất vinh dự, em xin cảm ơn từ tận đáy lòng.)* |
| Đại | 1つだけ<ruby>正直<rt>しょうじき</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えしたいことがございます。<ruby>来年度<rt>らいねんど</rt></ruby>の<ruby>卒業研究<rt>そつぎょうけんきゅう</rt></ruby>で、<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>している<ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリ「Hizashi」の<ruby>本格化<rt>ほんかくか</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れております。<br>*(Em xin được nói thẳng một điều. Trong 卒研 năm tới em cũng đang nhắm tới việc làm nghiêm túc app học ngôn ngữ "Hizashi" mà em đang phát triển cá nhân.)* |
| Yamada | おお、<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>もされているんですね。<ruby>素晴<rt>すば</rt></ruby>らしいです。<br>*(Ồ, em còn làm cả side project à. Tuyệt vời.)* |
| Đại | はい。<ruby>妻<rt>つま</rt></ruby>のマイがN2の<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>で、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリを<ruby>作<rt>つく</rt></ruby>っております。Cybozuで<ruby>学<rt>まな</rt></ruby>んだRAGスタックを<ruby>応用<rt>おうよう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng. Vợ em Mai đang ôn N2, em đang làm app học tiếng Nhật cho người Việt. Dự định áp dụng stack RAG đã học ở Cybozu.)* |
| Yamada | なるほど、<ruby>動機<rt>どうき</rt></ruby>がはっきりしていて<ruby>素敵<rt>すてき</rt></ruby>です。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>真剣<rt>しんけん</rt></ruby>にご<ruby>検討<rt>けんとう</rt></ruby>ください。<ruby>結論<rt>けつろん</rt></ruby>がどちらでも、3<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>っていただいた<ruby>事実<rt>じじつ</rt></ruby>は<ruby>変<rt>か</rt></ruby>わりません。<br>*(Hiểu rồi, động lực rõ ràng đẹp đấy. Em cứ suy nghĩ nghiêm túc trong 3 tháng. Kết luận thế nào thì sự thật em đã cố gắng 3 tháng cũng không đổi.)* |
| Đại | <ruby>温<rt>あたた</rt></ruby>かいお<ruby>言葉<rt>ことば</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>12<rt>じゅうに</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までに<ruby>必<rt>かなら</rt></ruby>ずご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Em cảm ơn lời nói ấm áp của chị. Đến cuối tháng 12 em nhất định sẽ liên hệ ạ.)* |
| Inomata | グエンさん、<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<ruby>応援<rt>おうえん</rt></ruby>します。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれてありがとう。<br>*(Đại, anh mới nghe chuyện side project lần đầu. Anh ủng hộ. Cảm ơn em đã nói thẳng.)* |

---

## Tình huống 7 — Cybozu cafeteria · 30/9 cuối giờ, Đại tâm sự với Sato

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、HRから<ruby>内定<rt>ないてい</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>あったって?<br>*(Đại, anh nghe nói HR đã đề cập 内定 cho em rồi à?)* |
| Đại | はい。<ruby>正式<rt>せいしき</rt></ruby>に<ruby>確約<rt>かくやく</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>きました。<ruby>正直<rt>しょうじき</rt></ruby>、まだ<ruby>実感<rt>じっかん</rt></ruby>が<ruby>湧<rt>わ</rt></ruby>いていません。<br>*(Vâng, em đã nhận được cam kết chính thức. Thật ra, em vẫn chưa cảm nhận hết được.)* |
| Sato | おめでとう! ……でも、<ruby>顔<rt>かお</rt></ruby><ruby>色<rt>いろ</rt></ruby>があまり<ruby>明<rt>あか</rt></ruby>るくないですね。<br>*(Chúc mừng em! ...nhưng nét mặt em không tươi lắm.)* |
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さんだから<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますが、<ruby>卒業後<rt>そつぎょうご</rt></ruby>に<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>の「Hizashi」を<ruby>本格<rt>ほんかく</rt></ruby><ruby>展開<rt>てんかい</rt></ruby>したい<ruby>気持<rt>きも</rt></ruby>ちも<ruby>強<rt>つよ</rt></ruby>くて……。<br>*(Vì là anh Sato nên em xin nói thẳng, em cũng có ý muốn sau tốt nghiệp triển khai nghiêm túc "Hizashi" — side project của em.)* |
| Sato | スタートアップか。<ruby>俺<rt>おれ</rt></ruby>も<ruby>20<rt>にじゅう</rt></ruby><ruby>代<rt>だい</rt></ruby>のとき、<ruby>同<rt>おな</rt></ruby>じ<ruby>悩<rt>なや</rt></ruby>みありましたよ。<br>*(Startup à. Hồi 20 tuổi anh cũng có cùng nỗi băn khoăn này đó.)* |
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さんはどう<ruby>決<rt>き</rt></ruby>めましたか?<br>*(Anh đã quyết thế nào ạ?)* |
| Sato | <ruby>俺<rt>おれ</rt></ruby>は<ruby>大企業<rt>だいきぎょう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>びました。<ruby>後悔<rt>こうかい</rt></ruby>はしていません。でも、<ruby>君<rt>きみ</rt></ruby>が<ruby>選<rt>えら</rt></ruby>ぶべき<ruby>道<rt>みち</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>うかもしれません。<ruby>奥<rt>おく</rt></ruby>さんと<ruby>娘<rt>むすめ</rt></ruby>さんがいるから、リスクの<ruby>取<rt>と</rt></ruby>り<ruby>方<rt>かた</rt></ruby>も<ruby>違<rt>ちが</rt></ruby>うはず。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>じっくり<ruby>考<rt>かんが</rt></ruby>えてください。<br>*(Anh chọn công ty lớn. Anh không hối hận. Nhưng con đường em nên chọn có thể khác anh. Em có vợ con, cách lấy risk cũng khác. Em cứ suy nghĩ kỹ trong 3 tháng.)* |
| Đại | ありがとうございます、<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(Em cảm ơn anh Sato.)* |

---

## Tình huống 8 — Apartment Toyonaka · 30/9 22:00, Đại nhắn LINE Mai trước khi về

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai, tiếng Việt) Em ơi! HR Cybozu chính thức offer 内定 ¥6.7M/năm! Lương khởi điểm ¥420 nghìn/tháng. |
| Mai | (LINE, tiếng Việt) Chúc mừng anh! Em biết mà! Vậy anh nhận liền hay sao? |
| Đại | (LINE, tiếng Việt) Anh xin 3 tháng cân nhắc. Anh đã nói thẳng với HR về Hizashi. |
| Mai | (LINE, tiếng Việt) Trời anh nói thẳng luôn á? Có sao không? |
| Đại | (LINE, tiếng Việt) Chị HR khen anh "động lực rõ ràng đẹp đấy". Anh Sato cũng ủng hộ, bảo suy nghĩ kỹ vì có em với Hana. |
| Mai | (LINE, tiếng Việt) Tốt quá. Vậy 3 tháng tới mình bàn chung nhé. Anh về sớm em chờ. |

---

## Tình huống 9 — Cybozu izakaya Yamato · 30/9 19:30, 送別会 + senior tặng GitHub Pro lifetime

*Izakaya gần Cybozu Osaka, 12 người gồm Sato, Inomata, Tanaka, các engineer R&D. Đại được mời ngồi giữa.*

| Vai | Lời thoại |
|---|---|
| Inomata | では、グエンさんの<ruby>送別会<rt>そうべつかい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。まずは<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Vậy bắt đầu tiệc chia tay của Đại nào. Cụng ly!)* |
| Tất cả | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cụng ly!)* |
| Sato | グエンさん、<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>俺<rt>おれ</rt></ruby>から<ruby>一言<rt>ひとこと</rt></ruby>いいかな。<br>*(Đại, 3 tháng em vất vả rồi. Anh nói vài lời được không?)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Sato | グエンさんは<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で、<ruby>俺<rt>おれ</rt></ruby>が<ruby>新人<rt>しんじん</rt></ruby>のとき<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>覚<rt>おぼ</rt></ruby>えたことを<ruby>習得<rt>しゅうとく</rt></ruby>してくれた。<ruby>判断<rt>はんだん</rt></ruby><ruby>力<rt>りょく</rt></ruby>、<ruby>説明力<rt>せつめいりょく</rt></ruby>、コードの<ruby>質<rt>しつ</rt></ruby>、すべて<ruby>申<rt>もう</rt></ruby>し<ruby>分<rt>ぶん</rt></ruby>ない。<br>*(Đại trong 3 tháng đã thu nạp những gì anh phải mất 1 năm hồi mới vào nghề. Khả năng phán đoán, thuyết minh, chất lượng code — không có gì để phàn nàn.)* |
| Tanaka | グエンくん、prefillの<ruby>技<rt>わざ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かったよ。<ruby>俺<rt>おれ</rt></ruby>の<ruby>修論<rt>しゅうろん</rt></ruby>にも<ruby>使<rt>つか</rt></ruby>わせてもらう。<br>*(Đại ơi, cái mẹo prefill thật sự giúp anh nhiều lắm. Anh sẽ dùng cả trong luận văn master.)* |
| Inomata | みんなを<ruby>代表<rt>だいひょう</rt></ruby>して、ささやかなプレゼントを<ruby>用意<rt>ようい</rt></ruby>しました。CybozuロゴのパーカーとGitHub Pro lifetime<ruby>会員<rt>かいいん</rt></ruby><ruby>権<rt>けん</rt></ruby>(<ruby>84<rt>はちじゅうよん</rt></ruby>ドル×60<ruby>年<rt>ねん</rt></ruby>=<ruby>約<rt>やく</rt></ruby>5,040ドル<ruby>相当<rt>そうとう</rt></ruby>)です!<br>*(Đại diện mọi người, bọn anh có chuẩn bị quà nhỏ — áo hoodie logo Cybozu và GitHub Pro lifetime ($84 × 60 năm = tương đương khoảng $5.040)!)* |
| Đại | (xúc động, cúi đầu) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>でございます。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Đây là vinh dự quá lớn ạ. Em thật sự cảm ơn các anh chị.)* |

---

## Tình huống 10 — Izakaya Yamato · 30/9 21:00, Đại gửi lời cảm ơn tới cả team

*Đại đứng dậy, cầm ly trên tay. Cả phòng im lặng nghe.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆様<rt>みなさま</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>をいただけますでしょうか。<br>*(Kính thưa quý anh chị, cho em xin chút thời gian được không ạ.)* |
| Đại | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>はこのオフィスのドアを<ruby>緊張<rt>きんちょう</rt></ruby>しながら<ruby>叩<rt>たた</rt></ruby>きました。<ruby>娘<rt>むすめ</rt></ruby>のハナが<ruby>生<rt>う</rt></ruby>まれたばかりで、<ruby>不安<rt>ふあん</rt></ruby>でいっぱいでした。<br>*(3 tháng trước, em hồi hộp gõ cửa văn phòng này. Con gái Hana mới sinh, em lo lắng đầy mình.)* |
| Đại | しかし、<ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>分<rt>わ</rt></ruby>からないことを<ruby>聞<rt>き</rt></ruby>くたびに、<ruby>嫌<rt>いや</rt></ruby>な<ruby>顔<rt>かお</rt></ruby><ruby>一<rt>ひと</rt></ruby>つせず<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくださいました。<ruby>猪股<rt>いのまた</rt></ruby>さんは<ruby>娘<rt>むすめ</rt></ruby>の<ruby>体調<rt>たいちょう</rt></ruby>のたびに<ruby>柔軟<rt>じゅうなん</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>してくださいました。<br>*(Nhưng anh Sato mỗi lần em hỏi không hiểu, đều không một lần khó chịu mà chỉ bảo tận tình. Anh Inomata mỗi lần con em ốm đều linh hoạt thu xếp.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しております。Cybozuで<ruby>過<rt>す</rt></ruby>ごした<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>は、<ruby>私<rt>わたし</rt></ruby>のエンジニア<ruby>人生<rt>じんせい</rt></ruby>の<ruby>原点<rt>げんてん</rt></ruby>になります。<br>*(Em thật sự rất biết ơn. 3 tháng ở Cybozu sẽ là điểm xuất phát của đời engineer của em.)* |
| Đại | <ruby>進路<rt>しんろ</rt></ruby>はまだ<ruby>悩<rt>なや</rt></ruby>んでおりますが、<ruby>結論<rt>けつろん</rt></ruby>がどちらでも、Cybozuの<ruby>皆様<rt>みなさま</rt></ruby>から<ruby>頂<rt>いただ</rt></ruby>いたものは<ruby>一生<rt>いっしょう</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>にいたします。<br>*(Hướng đi em vẫn đang băn khoăn, nhưng kết luận thế nào em cũng sẽ trân trọng cả đời những gì các anh chị Cybozu đã dành cho em.)* |
| Đại | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。(cúi đầu sâu)<br>*(3 tháng, em xin chân thành cảm ơn các anh chị ạ.)* |
| Inomata | (lau khoé mắt) こちらこそ、グエンさん、ありがとう。<ruby>来年<rt>らいねん</rt></ruby><ruby>春<rt>はる</rt></ruby>、また<ruby>会<rt>あ</rt></ruby>えるといいですね。<br>*(Anh mới phải cảm ơn em. Xuân năm sau lại được gặp nhau nhé.)* |
| Đại | (mỉm cười) はい、<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>検討<rt>けんとう</rt></ruby>させていただきます。<br>*(Vâng, em sẽ cân nhắc nghiêm túc ạ.)* |

---

## Tình huống 11 — Toyonaka apartment · 1/10 09:00, Đại soạn email cảm ơn chính thức gửi Sato + Inomata

| Vai | Lời thoại |
|---|---|
| Đại | (gõ email)<br>件名:<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>のお<ruby>礼<rt>れい</rt></ruby>とご<ruby>挨拶<rt>あいさつ</rt></ruby><br><br><ruby>猪股<rt>いのまた</rt></ruby><ruby>様<rt>さま</rt></ruby><br>CC:<ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby><br><br>お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>のグエン・ダイです。<br>*(Subject: Lời cảm ơn 3 tháng và lời chào. Anh Inomata, CC anh Sato. Em xin gửi lời thăm. Em là Nguyễn Đại Đại học Osaka.)* |
| Đại | <ruby>昨日<rt>きのう</rt></ruby>は<ruby>素敵<rt>すてき</rt></ruby>な<ruby>送別会<rt>そうべつかい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いていただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>頂<rt>いただ</rt></ruby>いたパーカーとGitHub Pro<ruby>会員<rt>かいいん</rt></ruby><ruby>権<rt>けん</rt></ruby>、<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>わせていただきます。<br>*(Hôm qua các anh đã mở một tiệc chia tay rất tuyệt, em chân thành cảm ơn. Áo hoodie và GitHub Pro membership em sẽ trân trọng sử dụng.)* |
| Đại | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でRAG、Claude API、prompt engineering、コードレビュー<ruby>文化<rt>ぶんか</rt></ruby>など、<ruby>大学<rt>だいがく</rt></ruby>では<ruby>学<rt>まな</rt></ruby>べないことを<ruby>多<rt>おお</rt></ruby>く<ruby>習得<rt>しゅうとく</rt></ruby>できました。<ruby>皆様<rt>みなさま</rt></ruby>の<ruby>丁寧<rt>ていねい</rt></ruby>なご<ruby>指導<rt>しどう</rt></ruby>の<ruby>賜物<rt>たまもの</rt></ruby>と<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Trong 3 tháng em đã học được nhiều thứ không thể học ở trường: RAG, Claude API, prompt engineering, văn hoá code review. Tất cả là nhờ sự chỉ bảo tận tình của các anh chị.)* |
| Đại | <ruby>内定<rt>ないてい</rt></ruby>のご<ruby>提案<rt>ていあん</rt></ruby>については、<ruby>12<rt>じゅうに</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までに<ruby>必<rt>かなら</rt></ruby>ずご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<ruby>今後<rt>こんご</rt></ruby>とも<ruby>何<rt>なに</rt></ruby>かとお<ruby>力添<rt>ちからぞ</rt></ruby>えいただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br>*(Về lời mời 内定, em sẽ phản hồi nhất định trước cuối tháng 12. Mong các anh chị tiếp tục giúp đỡ em.)* |
| Đại | <ruby>取<rt>と</rt></ruby>り<ruby>急<rt>いそ</rt></ruby>ぎ、お<ruby>礼<rt>れい</rt></ruby>とご<ruby>挨拶<rt>あいさつ</rt></ruby>まで。<br><br><ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学<rt>じょうほうかがく</rt></ruby><ruby>科<rt>か</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><br>グエン・ダイ<br>*(Trên đây là lời cảm ơn và chào tạm biệt gấp. Nguyễn Đại — sinh viên năm 3 ngành Khoa học Thông tin Đại học Osaka.)* |

---

## Tình huống 12 — Toyonaka apartment · 1/10 21:00, video call Mai bàn về quyết định Cybozu vs Hizashi — cảnh tiếng Việt cuối chương

> Đại ngồi bên cũi Hana. Mai đang là quần áo trẻ em. MacBook đặt giữa hai vợ chồng.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Sao mặt anh trầm tư thế? Tiệc chia tay tối qua vui chứ? |
| Đại | (tiếng Việt) Vui lắm. Anh Sato khen anh, các anh chị tặng anh hoodie Cybozu và GitHub Pro lifetime — quà tầm $5.000 đó em. |
| Mai | (tiếng Việt) Trời, ai mà tặng quà mắc vậy! Vậy là 3 tháng được ¥750 nghìn lương + cam kết 内定 ¥6.7 triệu/năm + quà $5.000. Anh được nhiều thứ ghê. |
| Đại | (tiếng Việt) Ừ. Mà chính vì vậy anh càng phải suy nghĩ kỹ. Nhận 内定 nghĩa là cam kết 4/2030 vào Cybozu fulltime. Nếu vào rồi, Hizashi sẽ thành side project mãi mãi. |
| Mai | (tiếng Việt) Anh có chắc Hizashi thành công không? |
| Đại | (tiếng Việt) Không chắc. Đó là cái khó. Cybozu thì chắc 100% — lương ¥420 nghìn/tháng, hybrid 3+2, ổn định cho em với Hana. Hizashi thì rủi ro, nhưng nếu thành thì lớn hơn nhiều. |
| Mai | (tiếng Việt) Anh Sato khuyên gì? |
| Đại | (tiếng Việt) Ảnh hồi 20 tuổi cũng đứng giữa lựa chọn này. Ảnh chọn công ty lớn, không hối hận. Nhưng ảnh nói con đường của anh khác ảnh — vì anh có em và Hana, cách lấy risk khác. |
| Mai | (tiếng Việt) Em nghĩ thế này. Anh còn 14 tháng đến lúc tốt nghiệp. Trong 14 tháng đó, 卒研 năm 4 anh làm MVP của Hizashi luôn. Nếu MVP có người dùng thật, có doanh thu thật, mình quyết định startup. Nếu không có, mình nhận Cybozu. |
| Đại | (tiếng Việt) Em nói có logic ghê. Em là cofounder âm thầm của anh đó. |
| Mai | (tiếng Việt) Cười. Em là beta tester đầu tiên thôi. Mà anh ơi, nhận 内定 không có nghĩa là phải vào đúng không? Nếu cuối 12 anh quyết startup, anh từ chối được không? |
| Đại | (tiếng Việt) Được. Nhật có truyền thống nhận 内定 rồi từ chối — gọi là 内定辞退. Lịch sự thôi là OK. Anh cứ giữ 内定 như một option, rồi cuối tháng 12 mới quyết. |
| Mai | (tiếng Việt) Vậy là 3 tháng tới mình tập trung 卒研 + Hizashi MVP nhỉ. |
| Đại | (tiếng Việt) Ừ. Mà Mai ơi, anh muốn cảm ơn em một câu. 3 tháng intern này anh đi làm xa nhà, có hôm về muộn vì 飲み会, có tuần phải remote vì Hana ốm — em không một lần phàn nàn. Anh biết ơn em lắm. |
| Mai | (tiếng Việt) Khóc giả vờ. Đừng nói em xúc động bây giờ. Hai vợ chồng cố lên nha. |

---

## Đọng lại chương 7

Đại kết thúc 3 tháng intern Cybozu Osaka rực rỡ: final presentation thành công trước CEO + CTO + ~50 engineer, được CEO Aono phê duyệt production rollout Q1/2029, được HR Director chính thức offer 内定 ¥6.7 triệu/năm + miễn phỏng vấn + hạn phản hồi cuối 12/2028. Học **keigo phát biểu cuối kỳ cấp executive** (「ご清聴ありがとうございました」, 「結論から申し上げますと」), **phản ứng khi nhận offer** (「身に余るお言葉でございます」, «身に余る光栄»), **xin thời gian cân nhắc khéo** (「正直にお伝えしたいことがございます」 + nói thẳng về side project + cam kết deadline phản hồi), **lời cảm ơn 送別会** (kể câu chuyện 3 tháng + biết ơn cá nhân từng người), và **soạn email cảm ơn chính thức** sau khi rời công ty. Quyết định cuối: giữ 内定 như option, dùng 14 tháng tới làm 卒研 + Hizashi MVP, cuối tháng 12/2028 mới quyết.

> Từ vựng & mẫu câu chương này: 最終発表・ご清聴ありがとうございました・結論から申し上げますと・本番展開・段階的ロールアウト・rate limit・HNSW・IVFFlat・内定・確約・面接免除・初任給・年収・ハイブリッド勤務3+2・身に余るお言葉・身に余る光栄・正直にお伝えしたいことがございます・真剣に検討させていただきます・送別会・お疲れさまでした・取り急ぎお礼まで・今後ともよろしくお願いいたします・内定辞退

## Bí quyết chương

- **Final presentation cấp executive**: Mở bằng cảm ơn quý vị bận rộn vẫn đến, kết bằng 「ご清聴ありがとうございました」 + cúi sâu 30 độ. Đừng quên outline 4 phần ở đầu.
- **Nhận 内定 đừng đáp ngay**: Câu chuẩn là 「身に余るお言葉でございます」 (đây là lời quá vinh dự với em). Tránh "yes" hoặc "no" ngay tại bàn — luôn xin thời gian suy nghĩ.
- **Nói thẳng về side project là dũng cảm và đúng**: Người Nhật trọng 動機 (động lực). Giấu Hizashi rồi sau từ chối sẽ mất uy tín. Nói thẳng sớm và xin thời gian — phía HR thường tôn trọng.
- **内定辞退 là quyền chính đáng**: Nhật có cơ chế chính thức để từ chối 内定. Không phải bội tín. Giữ 内定 như option, cuối deadline mới quyết — chuẩn corporate VN-JP đều OK.
- **送別会 không phải uống nhậu thường**: Đứng dậy phát biểu, kể câu chuyện 3 tháng, gọi tên cụ thể từng senior + lý do biết ơn, cúi đầu sâu. Đây là chuẩn 送別会 Nhật.
- **Email cảm ơn sau khi rời**: Trong vòng 24h gửi email subject 「3ヶ月のお礼とご挨拶」, CC mentor + manager. Đây là 礼儀 cơ bản, là nền cho mối quan hệ dài hạn với công ty.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 最終発表 | さいしゅうはっぴょう | TỐI CHUNG PHÁT BIỂU | Thuyết trình cuối kỳ |
| 誠に | まことに | THÀNH | Chân thành |
| 情報科学科 | じょうほうかがくか | TÌNH BÁO KHOA HỌC KHOA | Ngành Khoa học Thông tin |
| 成果 | せいか | THÀNH QUẢ | Thành quả |
| 対する | たいする | ĐỐI | Đối với |
| 主 | おも | CHỦ | Chính, chủ yếu |
| 併用 | へいよう | TỊNH DỤNG | Dùng kết hợp |
| 月額 | げつがく | NGUYỆT NGẠCH | Tiền hàng tháng |
| 段階的 | だんかいてき | ĐOẠN GIAI ĐÍCH | Theo từng giai đoạn |
| 連携 | れんけい | LIÊN HUỀ | Kết hợp |
| 監視 | かんし | GIÁM THỊ | Giám sát |
| 設計 | せっけい | THIẾT KẾ | Thiết kế |
| 清聴 | せいちょう | THANH THÍNH | Lắng nghe |
| 集まる | あつまる | TẬP | Tập hợp |
| スケール | — | — | Scale, mở rộng |
| 上限 | じょうげん | THƯỢNG HẠN | Mức trần |
| 触れる | ふれる | XÚC | Chạm tới |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | Khả năng |
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| 交渉 | こうしょう | GIAO THIỆP | Thương lượng |
| 経由 | けいゆ | KINH DO | Thông qua |
| 超える | こえる | SIÊU | Vượt qua |
| 来年度 | らいねんど | LAI NIÊN ĐỘ | Năm tới |
| 新卒採用 | しんそつさいよう | TÂN TỐT THÁI DỤNG | Tuyển fresh graduate |
| 入社 | にゅうしゃ | NHẬP XÃ | Vào công ty |
| 確約 | かくやく | XÁC ƯỚC | Cam kết |
| 初任給 | しょにんきゅう | SƠ NHIỆM CẤP | Lương khởi điểm |
| 年収 | ねんしゅう | NIÊN THU | Thu nhập năm |
| 勤務地 | きんむち | CẦN VỤ ĐỊA | Nơi làm việc |
| 出社 | しゅっしゃ | XUẤT XÃ | Đến văn phòng |
| 面接 | めんせつ | DIỆN TIẾP | Phỏng vấn |
| 免除 | めんじょ | MIỄN TRỪ | Miễn |
| 返答 | へんとう | PHẢN ĐÁP | Trả lời |
| 期限 | きげん | KỲ HẠN | Hạn |
| 心より | こころより | TÂM | Từ tận đáy lòng |
| 視野 | しや | THỊ DÃ | Tầm nhìn |
| 動機 | どうき | ĐỘNG CƠ | Động lực |
| 真剣 | しんけん | CHÂN KIẾM | Nghiêm túc |
| 実感 | じっかん | THỰC CẢM | Cảm nhận thực |
| 湧く | わく | DŨNG | Trào dâng |
| 顔色 | かおいろ | NHAN SẮC | Sắc mặt |
| 悩み | なやみ | NÃO | Nỗi băn khoăn |
| 後悔 | こうかい | HẬU HỐI | Hối hận |
| 道 | みち | ĐẠO | Con đường |
| じっくり | — | — | Kỹ lưỡng |
| 送別会 | そうべつかい | TỐNG BIỆT HỘI | Tiệc chia tay |
| 乾杯 | かんぱい | CAN BÔI | Cụng ly |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 覚える | おぼえる | GIÁC | Nhớ, học |
| 説明力 | せつめいりょく | THUYẾT MINH LỰC | Khả năng giải thích |
| 質 | しつ | CHẤT | Chất lượng |
| 申し分ない | もうしぶんない | THÂN PHÂN | Không có gì để chê |
| 技 | わざ | KỸ | Kỹ thuật, mẹo |
| 修論 | しゅうろん | TU LUẬN | Luận văn thạc sĩ |
| 代表 | だいひょう | ĐẠI BIỂU | Đại diện |
| 会員権 | かいいんけん | HỘI VIÊN QUYỀN | Quyền hội viên |
| 相当 | そうとう | TƯƠNG ĐƯƠNG | Tương đương |
| 嫌な顔 | いやなかお | YẾM NHAN | Nét mặt khó chịu |
| 過ごす | すごす | QUÁ | Trải qua |
| 原点 | げんてん | NGUYÊN ĐIỂM | Điểm khởi đầu |
| 大切 | たいせつ | ĐẠI THIẾT | Trân trọng |
| 一生 | いっしょう | NHẤT SINH | Cả đời |
| 賜物 | たまもの | TỨ VẬT | Quà tặng, ơn |
| 力添え | ちからぞえ | LỰC THIÊM | Sự giúp đỡ |
| 幸い | さいわい | HẠNH | May mắn, mừng |
| 取り急ぎ | とりいそぎ | THỦ CẤP | Trước mắt |
| 挨拶 | あいさつ | YẾT KIẾN | Lời chào |
| 内定辞退 | ないていじたい | NỘI ĐỊNH TỪ THOÁI | Từ chối 内定 |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000008, 800000023, NULL, 'markdown_book', 'T8. Brainstorm đề tài 卒研 với Inoue-sensei (卒研テーマ)', '# Sách sinh viên Đại học Osaka · T8. Brainstorm đề tài 卒研 với Inoue-sensei (卒研テーマ)

> **Mục tiêu nhân vật:** Đại 23 tuổi, năm 3 CS kỳ 2 bắt đầu, 10/2028. Học các mẫu hội thoại tiếng Nhật của sinh viên CS sắp lên 卒研: (1) keigo 1on1 với giáo sư hướng dẫn, (2) trình bày phân tích trade-off giữa các phương án, (3) nói thẳng về động lực cá nhân với sensei (奥さんが動機), (4) thảo luận collab với senpai master, (5) viết research proposal bằng tiếng Nhật học thuật, (6) cảm ơn sensei lịch sự sau buổi 議論.

---

## Bối cảnh

Tháng 10 năm 2028. Đại đã kết thúc intern Cybozu, trở lại Lab Inoue (AI Lab Đại học Osaka). Trong tay đang có 内定 Cybozu ¥6.7M/năm (hạn phản hồi 31/12). Bước tiếp theo là đề tài 卒研 (luận văn tốt nghiệp năm 4), Inoue-sensei mời 1on1 ngày 5/10. Hạn chốt đề tài là 1/12. Yamada-senpai (master năm 2, lab member) đang làm multilingual NLP. Chương này tập trung các mẫu câu keigo academic + business + thảo luận research direction.

---

## Tình huống 1 — Lab Inoue B210 · 5/10 13:30, Đại đến phòng sensei chào hỏi đầu kỳ

*Phòng Inoue-sensei, kệ sách đầy paper, whiteboard có sơ đồ Transformer. Đại gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します、グエンです。<ruby>13<rt>じゅうさん</rt></ruby><ruby>時半<rt>じはん</rt></ruby>からお<ruby>時間<rt>じかん</rt></ruby>をいただいておりました。<br>*(Em xin phép, em là Nguyễn. Em đã hẹn được thầy 13h30 ạ.)* |
| Inoue | はい、どうぞ。お<ruby>掛<rt>か</rt></ruby>けください。<ruby>夏休<rt>なつやす</rt></ruby>みお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, em vào đi. Mời em ngồi. Cảm ơn em đã vất vả qua kỳ nghỉ hè.)* |
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>いたします。ご<ruby>無沙汰<rt>ぶさた</rt></ruby>しております。<br>*(Em xin phép. Lâu rồi chưa hỏi thăm thầy ạ.)* |
| Inoue | Cybozuの<ruby>長期<rt>ちょうき</rt></ruby>インターンはどうでしたか?<br>*(Kỳ thực tập dài hạn ở Cybozu thế nào?)* |
| Đại | はい、<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>充実<rt>じゅうじつ</rt></ruby>した<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でした。Kintoneドキュメントに<ruby>対<rt>たい</rt></ruby>するRAGシステムを<ruby>構築<rt>こうちく</rt></ruby>し、<ruby>本番<rt>ほんばん</rt></ruby><ruby>展開<rt>てんかい</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>として<ruby>承認<rt>しょうにん</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>きました。<br>*(Vâng, là 3 tháng vô cùng trọn vẹn ạ. Em đã xây hệ thống RAG cho tài liệu Kintone, được phê duyệt làm ứng viên triển khai production.)* |
| Inoue | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>は<ruby>卒研<rt>そつけん</rt></ruby>にも<ruby>必<rt>かなら</rt></ruby>ず<ruby>活<rt>い</rt></ruby>きます。<br>*(Tuyệt vời. Kinh nghiệm thực tế sẽ chắc chắn có ích cho 卒研.)* |

---

## Tình huống 2 — Lab Inoue B210 · 5/10 13:40, Inoue giới thiệu 3 hướng đề tài

*Inoue mở slide trên iPad cho Đại xem, 3 hướng được liệt kê rõ ràng.*

| Vai | Lời thoại |
|---|---|
| Inoue | では、<ruby>卒研<rt>そつけん</rt></ruby>テーマの<ruby>議論<rt>ぎろん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りましょう。グエンくんの<ruby>適性<rt>てきせい</rt></ruby>とCybozu<ruby>経験<rt>けいけん</rt></ruby>を<ruby>考慮<rt>こうりょ</rt></ruby>して、<ruby>3<rt>みっ</rt></ruby>つの<ruby>方向性<rt>ほうこうせい</rt></ruby>を<ruby>提示<rt>ていじ</rt></ruby>します。<br>*(Vậy ta vào thảo luận đề tài 卒研. Cân nhắc khả năng của em và kinh nghiệm Cybozu, thầy đề xuất 3 hướng.)* |
| Inoue | 1つ<ruby>目<rt>め</rt></ruby>、「ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>誤<rt>あやま</rt></ruby>り<ruby>検出<rt>けんしゅつ</rt></ruby>と<ruby>修正<rt>しゅうせい</rt></ruby>」。BERT<ruby>系<rt>けい</rt></ruby>モデルをfine-tuneしてgrammatical error correction (GEC)を<ruby>解<rt>と</rt></ruby>くテーマです。<br>*(Một: "Phát hiện và sửa lỗi tiếng Nhật của người học Việt". Đề tài fine-tune model dòng BERT để giải bài toán GEC.)* |
| Inoue | 2つ<ruby>目<rt>め</rt></ruby>、「<ruby>多言語<rt>たげんご</rt></ruby>コード<ruby>生成<rt>せいせい</rt></ruby>:ベトナム<ruby>人<rt>じん</rt></ruby><ruby>開発者<rt>かいはつしゃ</rt></ruby><ruby>向<rt>む</rt></ruby>けLLM」。<ruby>母国語<rt>ぼこくご</rt></ruby>+<ruby>日本語<rt>にほんご</rt></ruby>のmixed<ruby>指示<rt>しじ</rt></ruby>からcodeを<ruby>生成<rt>せいせい</rt></ruby>するテーマ。<br>*(Hai: "Sinh code đa ngôn ngữ: LLM cho lập trình viên Việt". Đề tài sinh code từ chỉ thị mixed tiếng mẹ đẻ + tiếng Nhật.)* |
| Inoue | 3つ<ruby>目<rt>め</rt></ruby>、「<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システム」。RAG + AIチューターで<ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のレベルに<ruby>動的<rt>どうてき</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせる<ruby>仕組<rt>しく</rt></ruby>みの<ruby>研究<rt>けんきゅう</rt></ruby>。<br>*(Ba: "Hệ thống học ngôn ngữ thích ứng". Nghiên cứu cơ chế RAG + AI tutor điều chỉnh động theo trình độ người học.)* |
| Inoue | どう<ruby>感<rt>かん</rt></ruby>じますか? <ruby>正直<rt>しょうじき</rt></ruby>な<ruby>感想<rt>かんそう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Em cảm thấy thế nào? Cho thầy nghe cảm tưởng thật của em.)* |

---

## Tình huống 3 — Lab Inoue B210 · 5/10 13:50, Đại phân tích trade-off 3 phương án

| Vai | Lời thoại |
|---|---|
| Đại | ありがとうございます。<ruby>3<rt>みっ</rt></ruby>つともそれぞれ<ruby>魅力<rt>みりょく</rt></ruby>がございます。trade-offを<ruby>整理<rt>せいり</rt></ruby>させていただいてもよろしいでしょうか?<br>*(Em cảm ơn thầy. Cả 3 đều có sức hấp dẫn riêng. Em xin phép phân tích trade-off được không ạ?)* |
| Inoue | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cứ làm.)* |
| Đại | 1つ<ruby>目<rt>め</rt></ruby>のGEC: <ruby>研究<rt>けんきゅう</rt></ruby>の<ruby>新規性<rt>しんきせい</rt></ruby>と<ruby>定量<rt>ていりょう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>のしやすさは<ruby>強<rt>つよ</rt></ruby>みですが、<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>動機<rt>どうき</rt></ruby>は<ruby>弱<rt>よわ</rt></ruby>めです。データセット<ruby>収集<rt>しゅうしゅう</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>そうです。<br>*(Hướng 1 GEC: điểm mạnh là tính mới về research và dễ đánh giá định lượng, nhưng động lực cá nhân của em yếu hơn. Thu thập dataset cũng khá khó.)* |
| Đại | 2つ<ruby>目<rt>め</rt></ruby>のコード<ruby>生成<rt>せいせい</rt></ruby>: <ruby>業務<rt>ぎょうむ</rt></ruby>と<ruby>近<rt>ちか</rt></ruby>く、Cybozuの<ruby>経験<rt>けいけん</rt></ruby>が<ruby>活<rt>い</rt></ruby>きます。ただ、GitHub Copilotなど<ruby>既存<rt>きそん</rt></ruby>サービスとの<ruby>差別化<rt>さべつか</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい<ruby>気<rt>き</rt></ruby>がします。<br>*(Hướng 2 sinh code: gần với công việc, kinh nghiệm Cybozu phát huy. Nhưng em cảm thấy khó differentiate với các service hiện có như GitHub Copilot.)* |
| Đại | 3つ<ruby>目<rt>め</rt></ruby>の<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>: <ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>動機<rt>どうき</rt></ruby>が<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>く、CybozuのRAG<ruby>技術<rt>ぎじゅつ</rt></ruby>がそのまま<ruby>使<rt>つか</rt></ruby>えます。ただ<ruby>評価<rt>ひょうか</rt></ruby><ruby>指標<rt>しひょう</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいかもしれません。<br>*(Hướng 3 học ngôn ngữ thích ứng: động lực cá nhân rất mạnh, kỹ thuật RAG ở Cybozu áp dụng nguyên được. Nhưng thiết kế tiêu chí đánh giá có thể khó.)* |
| Đại | <ruby>結論<rt>けつろん</rt></ruby>として、3つ<ruby>目<rt>め</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>く<ruby>関心<rt>かんしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っております。<br>*(Kết luận, em đặc biệt quan tâm hướng 3 ạ.)* |
| Inoue | trade-offの<ruby>分析<rt>ぶんせき</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>ですね。<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>の<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>動機<rt>どうき</rt></ruby>とは<ruby>具体的<rt>ぐたいてき</rt></ruby>に?<br>*(Phân tích trade-off rõ ràng đấy. Động lực cá nhân với hướng 3, cụ thể là gì?)* |

---

## Tình huống 4 — Lab Inoue B210 · 5/10 14:00, Đại nói thẳng về Mai + Hizashi

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げてもよろしいでしょうか。<br>*(Em xin được nói thẳng được không ạ.)* |
| Inoue | もちろんです。<br>*(Tất nhiên.)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>のマイが<ruby>現在<rt>げんざい</rt></ruby>N2の<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>市販<rt>しはん</rt></ruby>の<ruby>教材<rt>きょうざい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていますが、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>に<ruby>特化<rt>とっか</rt></ruby>した<ruby>教材<rt>きょうざい</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なく<ruby>苦労<rt>くろう</rt></ruby>しております。<br>*(Vợ em Mai hiện đang ôn N2. Hằng ngày dùng giáo trình bán sẵn nhưng vất vả vì ít giáo trình chuyên biệt cho người học Việt.)* |
| Đại | <ruby>例<rt>たと</rt></ruby>えば、ベトナム<ruby>人<rt>じん</rt></ruby>がよく<ruby>間違<rt>まちが</rt></ruby>える「<ruby>長音<rt>ちょうおん</rt></ruby>」(おとうさん/おとさん)や、<ruby>濁音<rt>だくおん</rt></ruby>と<ruby>清音<rt>せいおん</rt></ruby>の<ruby>区別<rt>くべつ</rt></ruby>(きん/ぎん)。<ruby>母国語<rt>ぼこくご</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>で<ruby>困<rt>こま</rt></ruby>る<ruby>箇所<rt>かしょ</rt></ruby>を<ruby>個別<rt>こべつ</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>するシステムがあれば<ruby>便利<rt>べんり</rt></ruby>だと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Ví dụ những chỗ người Việt hay nhầm: trường âm (おとうさん/おとさん), phân biệt thanh đục/thanh thanh (きん/ぎん). Em nghĩ nếu có hệ thống xử lý cá nhân hoá những điểm khó vì ảnh hưởng tiếng mẹ đẻ thì sẽ rất tiện.)* |
| Đại | また、<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>で「Hizashi」というプロジェクトを<ruby>進<rt>すす</rt></ruby>めておりまして、<ruby>卒研<rt>そつけん</rt></ruby>とリンクさせたいという<ruby>思<rt>おも</rt></ruby>いもございます。<br>*(Thêm nữa, em đang làm side project tên "Hizashi", em cũng có ý muốn link với 卒研 ạ.)* |
| Inoue | <ruby>奥<rt>おく</rt></ruby>さんが<ruby>動機<rt>どうき</rt></ruby>ですか? それは<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>動機<rt>どうき</rt></ruby>ですね。<ruby>強<rt>つよ</rt></ruby>い<ruby>動機<rt>どうき</rt></ruby>は<ruby>良<rt>よ</rt></ruby>い<ruby>研究<rt>けんきゅう</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずつながります。<br>*(Vợ là động lực à? Đó là động lực tuyệt vời. Động lực mạnh chắc chắn dẫn đến nghiên cứu tốt.)* |
| Đại | ありがとうございます。お<ruby>恥<rt>は</rt></ruby>ずかしながら……。<br>*(Em cảm ơn thầy. Em hơi ngại quá ạ……)* |
| Inoue | <ruby>恥<rt>は</rt></ruby>ずかしくないですよ。<ruby>研究者<rt>けんきゅうしゃ</rt></ruby>の<ruby>多<rt>おお</rt></ruby>くは、<ruby>身近<rt>みぢか</rt></ruby>な<ruby>問題<rt>もんだい</rt></ruby>から<ruby>研究<rt>けんきゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。それが<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>研究<rt>けんきゅう</rt></ruby>です。<br>*(Không có gì phải ngại đâu. Phần lớn nhà nghiên cứu đều bắt đầu từ vấn đề thân thuộc. Đó mới là nghiên cứu thật.)* |

---

## Tình huống 5 — Lab Inoue B210 · 5/10 14:10, làm rõ scope 卒研 vs Hizashi

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>1<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>卒研<rt>そつけん</rt></ruby>は<ruby>学術<rt>がくじゅつ</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>であり、<ruby>商<rt>しょう</rt></ruby><ruby>用<rt>よう</rt></ruby>プロダクト<ruby>開発<rt>かいはつ</rt></ruby>ではないので、<ruby>明確<rt>めいかく</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>けが<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Cho thầy xác nhận 1 điều. 卒研 là nghiên cứu học thuật, không phải phát triển sản phẩm thương mại, nên cần tách biệt rõ ràng.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<br>*(Vâng, em hiểu ạ.)* |
| Inoue | <ruby>卒研<rt>そつけん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>は「<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムにおける<ruby>新規<rt>しんき</rt></ruby><ruby>手法<rt>しゅほう</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>と<ruby>評価<rt>ひょうか</rt></ruby>」。プロダクト<ruby>化<rt>か</rt></ruby>(Hizashi)は<ruby>別途<rt>べっと</rt></ruby><ruby>個人<rt>こじん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phạm vi 卒研: "Đề xuất và đánh giá phương pháp mới trong hệ thống học ngôn ngữ thích ứng". Việc sản phẩm hoá (Hizashi) là chuyện cá nhân riêng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>研究<rt>けんきゅう</rt></ruby>の<ruby>貢献<rt>こうけん</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>になりますでしょうか?<br>*(Em đã rõ. Vậy đóng góp về mặt nghiên cứu sẽ là gì ạ?)* |
| Inoue | <ruby>2<rt>ふた</rt></ruby>つ<ruby>考<rt>かんが</rt></ruby>えられます。1つ<ruby>目<rt>め</rt></ruby>、ベトナム<ruby>人<rt>じん</rt></ruby>L2 Japaneseのerror patternをカテゴリ<ruby>化<rt>か</rt></ruby>したデータセットの<ruby>構築<rt>こうちく</rt></ruby>。<br>*(Có 2 điều có thể nghĩ tới. Một: xây dataset phân loại error pattern của người học tiếng Nhật L2 người Việt.)* |
| Inoue | 2つ<ruby>目<rt>め</rt></ruby>、<ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>誤<rt>あやま</rt></ruby>り<ruby>履歴<rt>りれき</rt></ruby>から<ruby>個別<rt>こべつ</rt></ruby>カリキュラムを<ruby>動的<rt>どうてき</rt></ruby>に<ruby>生成<rt>せいせい</rt></ruby>するRAGベースの<ruby>手法<rt>しゅほう</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>。<ruby>定量<rt>ていりょう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>はretention rateで<ruby>計<rt>はか</rt></ruby>れます。<br>*(Hai: đề xuất phương pháp dựa trên RAG để sinh động curriculum cá nhân từ lịch sử lỗi của người học. Đánh giá định lượng đo bằng retention rate.)* |
| Đại | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>明確<rt>めいかく</rt></ruby>です。ありがとうございます。<br>*(Rất rõ ràng ạ. Em cảm ơn thầy.)* |

---

## Tình huống 6 — Lab Inoue B210 · 5/10 14:20, hỏi lại về evaluation methodology

| Vai | Lời thoại |
|---|---|
| Đại | 1つ<ruby>不<rt>ふ</rt></ruby><ruby>明<rt>めい</rt></ruby><ruby>点<rt>てん</rt></ruby>がございます。retention rateというのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどのように<ruby>計測<rt>けいそく</rt></ruby>しますか?<br>*(Em có 1 điểm chưa rõ. Retention rate cụ thể đo thế nào ạ?)* |
| Inoue | <ruby>良<rt>よ</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>2<rt>ふた</rt></ruby>つの<ruby>方法<rt>ほうほう</rt></ruby>があります。<br>*(Câu hỏi tốt. Có 2 cách.)* |
| Inoue | 1つ<ruby>目<rt>め</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>のテストで、<ruby>学<rt>まな</rt></ruby>んだ<ruby>項目<rt>こうもく</rt></ruby>の<ruby>正答率<rt>せいとうりつ</rt></ruby>を<ruby>計測<rt>けいそく</rt></ruby>。<ruby>従来<rt>じゅうらい</rt></ruby><ruby>手法<rt>しゅほう</rt></ruby>とabベース<ruby>比較<rt>ひかく</rt></ruby>。<br>*(Một: đo tỉ lệ trả lời đúng các mục đã học sau 1 tuần kiểm tra. So sánh AB-base với phương pháp truyền thống.)* |
| Inoue | 2つ<ruby>目<rt>め</rt></ruby>、<ruby>長期<rt>ちょうき</rt></ruby>的にはspaced repetitionとの<ruby>比較<rt>ひかく</rt></ruby>。AnkiやSuperMemoのアルゴリズムがベースラインになります。<br>*(Hai: so sánh dài hạn với spaced repetition. Thuật toán của Anki hoặc SuperMemo sẽ là baseline.)* |
| Đại | なるほど。Ankiのアルゴリズムはご<ruby>存知<rt>ぞんじ</rt></ruby>でしょうか?<br>*(À hiểu rồi. Thầy biết thuật toán của Anki không ạ?)* |
| Inoue | はい、SM-2アルゴリズムですね。シンプルですが<ruby>強<rt>つよ</rt></ruby>いベースラインです。<ruby>後<rt>あと</rt></ruby>で<ruby>参考<rt>さんこう</rt></ruby><ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Ừ, thuật toán SM-2. Đơn giản nhưng là baseline mạnh. Lát thầy share paper tham khảo.)* |
| Đại | ありがとうございます。<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んで<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>初期<rt>しょき</rt></ruby><ruby>案<rt>あん</rt></ruby>をまとめてご<ruby>提示<rt>ていじ</rt></ruby>いたします。<br>*(Em cảm ơn. Em sẽ đọc paper và đến tuần sau trình thầy bản phác thảo đầu tiên ạ.)* |

---

## Tình huống 7 — Lab Inoue B210 · 5/10 14:30, Inoue đề cập timeline + deadline

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>最後<rt>さいご</rt></ruby>にスケジュールを<ruby>確認<rt>かくにん</rt></ruby>しましょう。<ruby>正式<rt>せいしき</rt></ruby>テーマ<ruby>登録<rt>とうろく</rt></ruby><ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りは<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>です。<br>*(Cuối cùng ta xác nhận lịch trình. Hạn chốt đăng ký đề tài chính thức là 1 tháng 12.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em đã rõ ạ.)* |
| Inoue | <ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>初期<rt>しょき</rt></ruby><ruby>案<rt>あん</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までにproposalの<ruby>初稿<rt>しょこう</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>までにlab seminarで<ruby>発表<rt>はっぴょう</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>に<ruby>最終<rt>さいしゅう</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>。これでいかがでしょうか?<br>*(Tuần sau bản phác thảo, cuối tháng 10 bản nháp proposal, 15/11 thuyết trình lab seminar, cuối tháng 11 điều chỉnh cuối. Em thấy thế nào?)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>各<rt>かく</rt></ruby>マイルストーンを<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<ruby>不<rt>ふ</rt></ruby><ruby>明<rt>めい</rt></ruby><ruby>点<rt>てん</rt></ruby>が<ruby>出<rt>で</rt></ruby>たらSlackでご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Em đã rõ. Em sẽ giữ đúng từng milestone. Có gì chưa rõ em xin được hỏi thầy qua Slack ạ.)* |
| Inoue | はい、いつでもどうぞ。それでは<ruby>本日<rt>ほんじつ</rt></ruby>はここまで。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>有意義<rt>ゆういぎ</rt></ruby>な<ruby>議論<rt>ぎろん</rt></ruby>でした。<br>*(Ừ, bất cứ lúc nào cũng được. Hôm nay đến đây thôi. Buổi thảo luận thật sự có ý nghĩa.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>なお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。(đứng dậy, cúi 45 độ)<br>*(Hôm nay thầy đã dành cho em thời gian quý báu, em xin chân thành cảm ơn. Em xin phép ạ.)* |

---

## Tình huống 8 — Lab Inoue lounge · 5/10 15:00, Đại ngẫu gặp Yamada-senpai sau buổi 1on1

*Lounge nhỏ ở lab, có máy pha cà phê. Yamada (master 2, 24t) đang pha espresso.*

| Vai | Lời thoại |
|---|---|
| Yamada | おっ、グエンくん、<ruby>久<rt>ひさ</rt></ruby>しぶり! Cybozuどうだった?<br>*(Ồ, Đại, lâu rồi mới gặp! Cybozu thế nào?)* |
| Đại | お<ruby>疲<rt>つか</rt></ruby>れさまです、<ruby>山田<rt>やまだ</rt></ruby>さん。<ruby>充実<rt>じゅうじつ</rt></ruby>した<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>でした。<ruby>内定<rt>ないてい</rt></ruby>も<ruby>頂<rt>いただ</rt></ruby>きまして。<br>*(Chào anh Yamada. 3 tháng vừa rồi rất trọn vẹn. Em còn nhận được 内定 nữa.)* |
| Yamada | おお、すげー! <ruby>新卒<rt>しんそつ</rt></ruby><ruby>確約<rt>かくやく</rt></ruby>? おめでとう。Cybozu<ruby>行<rt>い</rt></ruby>くの?<br>*(Ồ, ngon đấy! Cam kết fresh à? Chúc mừng. Em đi Cybozu à?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>、まだ<ruby>悩<rt>なや</rt></ruby>んでおります。<ruby>個人<rt>こじん</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>の「Hizashi」を<ruby>本格化<rt>ほんかくか</rt></ruby>させたい<ruby>気持<rt>きも</rt></ruby>ちも<ruby>強<rt>つよ</rt></ruby>くて。<br>*(Thật ra em vẫn đang băn khoăn. Em cũng muốn làm side project "Hizashi" thật nghiêm túc.)* |
| Yamada | Hizashi、<ruby>前<rt>まえ</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いてたな。ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリでしょ?<br>*(Hizashi, anh nghe lâu rồi. App học tiếng Nhật cho người Việt phải không?)* |
| Đại | はい。それで<ruby>卒研<rt>そつけん</rt></ruby>テーマも<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>して、<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムに<ruby>決<rt>き</rt></ruby>まりそうです。<br>*(Vâng. Nên em đã thảo luận đề tài 卒研 với thầy Inoue, có vẻ sẽ là hệ thống học ngôn ngữ thích ứng.)* |
| Yamada | ちょっと<ruby>待<rt>ま</rt></ruby>って、それ<ruby>俺<rt>おれ</rt></ruby>の<ruby>修士<rt>しゅうし</rt></ruby>テーマと<ruby>関連<rt>かんれん</rt></ruby>するじゃん! <ruby>俺<rt>おれ</rt></ruby>はmultilingual NLPで、L1-L2 transferのerror patternやってんの。<br>*(Khoan đã, cái đó liên quan đề tài master của anh đấy! Anh đang làm multilingual NLP, error pattern do L1-L2 transfer.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか! <ruby>偶然<rt>ぐうぜん</rt></ruby>すぎますね。<br>*(Thật ạ! Trùng hợp quá đi.)* |

---

## Tình huống 9 — Lab Inoue lounge · 5/10 15:15, Yamada đề xuất collab cụ thể

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>提案<rt>ていあん</rt></ruby>していい?<br>*(Anh đề xuất cụ thể được không?)* |
| Đại | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, anh nói đi ạ.)* |
| Yamada | <ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby>はこう。<ruby>俺<rt>おれ</rt></ruby>がVN-JP error detectionのモデリング<ruby>担当<rt>たんとう</rt></ruby>。<ruby>君<rt>きみ</rt></ruby>がerror履<ruby>歴<rt>れき</rt></ruby>を<ruby>使<rt>つか</rt></ruby>った<ruby>適応的<rt>てきおうてき</rt></ruby>カリキュラム<ruby>生成<rt>せいせい</rt></ruby>とAIチューター<ruby>担当<rt>たんとう</rt></ruby>。<br>*(Phân vai thế này. Anh phụ trách modeling error detection VN-JP. Em phụ trách sinh curriculum thích ứng từ lịch sử lỗi và AI tutor.)* |
| Yamada | <ruby>俺<rt>おれ</rt></ruby>のerror detection modelをAPIにして<ruby>君<rt>きみ</rt></ruby>のシステムから<ruby>呼<rt>よ</rt></ruby>べるようにすれば、<ruby>両方<rt>りょうほう</rt></ruby>の<ruby>研究<rt>けんきゅう</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>できる。<br>*(Anh wrap error detection model thành API, hệ thống của em gọi đến. Như vậy đóng góp cho cả 2 nghiên cứu.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>提案<rt>ていあん</rt></ruby>です。ただ、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のご<ruby>承認<rt>しょうにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>かと<ruby>思<rt>おも</rt></ruby>いますが、<ruby>進<rt>すす</rt></ruby>めてもよろしいでしょうか?<br>*(Đề xuất tuyệt vời. Nhưng em nghĩ cần xin phép thầy Inoue trước, em tiếp tục được không ạ?)* |
| Yamada | もちろん、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>には<ruby>俺<rt>おれ</rt></ruby>から<ruby>話<rt>はな</rt></ruby>しておく。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>火曜<rt>かよう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>でミーティングしようか。<br>*(Tất nhiên, để anh nói với thầy Inoue. Thứ 3 tuần sau, 3 người mình họp nhé.)* |
| Đại | はい、<ruby>是非<rt>ぜひ</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby>までに<ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby><ruby>案<rt>あん</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>してドキュメントにまとめます。<br>*(Vâng, rất sẵn lòng. Đến thứ 3 tuần sau em sẽ tổng hợp phân vai thành document.)* |
| Yamada | ナイス! <ruby>俺<rt>おれ</rt></ruby>もreview<ruby>側<rt>がわ</rt></ruby>で<ruby>協力<rt>きょうりょく</rt></ruby>するから。<br>*(OK ngon! Anh sẽ hỗ trợ ở phía review.)* |

---

## Tình huống 10 — Lab Inoue lounge · 5/10 15:30, hỏi Yamada về dataset Vietnamese-Japanese

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>1<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>させてください。VN-JPのerror datasetはどうやって<ruby>作<rt>つく</rt></ruby>っていますか?<br>*(Anh Yamada, em xin hỏi 1 câu. Dataset error VN-JP anh xây thế nào ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>! データ<ruby>収集<rt>しゅうしゅう</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大変<rt>たいへん</rt></ruby>なところなんだ。<ruby>3<rt>みっ</rt></ruby>つのsourceを<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせてる。<br>*(Câu hỏi hay! Chính việc thu thập dữ liệu là phần khó nhất. Anh kết hợp 3 nguồn.)* |
| Yamada | 1: Lang-8とHiNativeのpublic comment(ベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>投稿<rt>とうこう</rt></ruby>と<ruby>添削<rt>てんさく</rt></ruby>ペア)。2: <ruby>大阪<rt>おおさか</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby>センターから<ruby>許諾<rt>きょだく</rt></ruby><ruby>済<rt>ず</rt></ruby>みの<ruby>作文<rt>さくぶん</rt></ruby>データ。3: <ruby>自分<rt>じぶん</rt></ruby>で<ruby>合成<rt>ごうせい</rt></ruby>データをClaudeで<ruby>生成<rt>せいせい</rt></ruby>。<br>*(Một: comment public của Lang-8 và HiNative — cặp bài viết của người Việt + chỉnh sửa. Hai: dữ liệu bài viết của trung tâm sinh viên quốc tế ĐH Osaka đã có giấy phép. Ba: tự sinh synthetic data bằng Claude.)* |
| Đại | <ruby>合成<rt>ごうせい</rt></ruby>データはClaudeで?どんなプロンプトを<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Synthetic data bằng Claude à? Anh dùng prompt thế nào?)* |
| Yamada | few-shotで「ベトナム<ruby>人<rt>じん</rt></ruby>がよく<ruby>間違<rt>まちが</rt></ruby>えるパターン」を5<ruby>例<rt>れい</rt></ruby>ぐらい<ruby>入<rt>い</rt></ruby>れて、「<ruby>類似<rt>るいじ</rt></ruby>のerror sentenceを20<ruby>個<rt>こ</rt></ruby><ruby>生成<rt>せいせい</rt></ruby>して」とする。<ruby>後<rt>あと</rt></ruby>で<ruby>人手<rt>てさぎょう</rt></ruby>でフィルタリング。<br>*(Few-shot 5 ví dụ "lỗi người Việt hay mắc", rồi yêu cầu "sinh 20 câu error tương tự". Sau đó lọc thủ công.)* |
| Đại | なるほど、Cybozuで<ruby>学<rt>まな</rt></ruby>んだprompt engineeringがそのまま<ruby>使<rt>つか</rt></ruby>えますね。<br>*(Hiểu rồi, prompt engineering em học ở Cybozu áp dụng nguyên được nhỉ.)* |
| Yamada | そうそう、<ruby>君<rt>きみ</rt></ruby>はその<ruby>分野<rt>ぶんや</rt></ruby><ruby>強<rt>つよ</rt></ruby>いから<ruby>頼<rt>たの</rt></ruby>もしい。<br>*(Đúng đúng, em mảng đó mạnh nên anh yên tâm.)* |

---

## Tình huống 11 — Toyonaka apartment · 5/10 20:00, Đại nhắn LINE Mai báo tiến độ + xin gợi ý beta tester

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai, tiếng Việt) Em ơi! Hôm nay anh gặp thầy Inoue 1 tiếng. Chốt được hướng 卒研 rồi! |
| Mai | (LINE, tiếng Việt) Wow nhanh thế! Hướng gì hả anh? |
| Đại | (LINE, tiếng Việt) Hướng 3 — hệ thống học ngôn ngữ thích ứng. Đúng cái anh nói với em đó. |
| Mai | (LINE, tiếng Việt) Trời, vậy là 卒研 + Hizashi cùng một hướng luôn hả? |
| Đại | (LINE, tiếng Việt) Đúng. Mà thầy nói 卒研 và Hizashi phải tách biệt — 卒研 là academic, Hizashi là product. Em đừng nói lẫn lộn nhé. |
| Mai | (LINE, tiếng Việt) Hiểu rồi. Thế anh có collab với ai không? |
| Đại | (LINE, tiếng Việt) Có! Anh Yamada-senpai master năm 2 — đề tài của ảnh là VN-JP error detection. Ảnh wrap thành API, anh gọi từ hệ thống của anh. |
| Mai | (LINE, tiếng Việt) Hay quá! Vậy em làm gì được không? Em là beta tester đầu tiên mà. |
| Đại | (LINE, tiếng Việt) Em là cái nguồn động lực anh nói thẳng với thầy luôn rồi. Thầy nói "vợ là động lực — đó là động lực tuyệt vời". Em nổi tiếng với cả lab anh đó. |
| Mai | (LINE, tiếng Việt) Trời ơi! Em đỏ mặt rồi. Vậy bao giờ em được thử app? |
| Đại | (LINE, tiếng Việt) Cuối tháng 11 anh sẽ có proposal hoàn chỉnh. MVP đầu tiên Q1/2029. Em cố ôn N2 đến lúc đó nhé, anh sẽ dùng dữ liệu lỗi của em làm test case. |

---

## Tình huống 12 — Apartment Toyonaka · 6/10 21:30, Mai + thảo luận deadline cuối tháng 12 — cảnh tiếng Việt cuối chương

> Đại bế Hana 2 tháng đang ngủ trong địu. Mai đang cho Hana xem ảnh trên màn hình. Cả nhà 3 người video call.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Hana này, ba con hôm nay gặp thầy Inoue ở trường nè. Ba con nói thẳng "vợ em là động lực" nha. |
| Đại | (tiếng Việt) Cười... Đừng dạy con những chuyện như thế chứ. Mà em, anh đang nghĩ về deadline cuối tháng 12. |
| Mai | (tiếng Việt) Deadline 内定 phải không? Còn 2 tháng rưỡi nữa. |
| Đại | (tiếng Việt) Ừ. 31/12 phải trả lời Cybozu. Anh đang nghĩ cách để quyết. |
| Mai | (tiếng Việt) Anh có tiêu chí gì chưa? |
| Đại | (tiếng Việt) Anh có 3 tiêu chí. Một: cuối tháng 11 lab seminar — proposal 卒研 có được duyệt không. Hai: cuối tháng 12 MVP Hizashi sơ bộ — có ít nhất 5 beta tester người Việt thử và bảo "có giá trị". Ba: tài chính — tiền tiết kiệm có đủ 6 tháng nuôi gia đình mà không cần lương Cybozu không. |
| Mai | (tiếng Việt) Wow, anh nghĩ logic ghê. Vậy nếu cả 3 tiêu chí pass thì startup, không pass thì Cybozu? |
| Đại | (tiếng Việt) Ừ. Anh không muốn quyết bằng cảm xúc. Phải có dữ liệu thật. |
| Mai | (tiếng Việt) Em ủng hộ. Mà anh ơi, em nhắc anh điều này — dù chọn cái nào, em cũng đứng cùng anh. Cybozu thì mình ổn định, có Hana được chăm sóc tốt. Startup thì rủi ro nhưng vui hơn. |
| Đại | (tiếng Việt) Cảm ơn em. Mà em ạ, anh học được một cái hôm nay từ thầy Inoue. Thầy nói "phần lớn nhà nghiên cứu bắt đầu từ vấn đề thân thuộc — đó mới là nghiên cứu thật". Anh nghĩ vấn đề thân thuộc nhất của anh chính là em và Hana. |
| Mai | (tiếng Việt) Khóc thật. Đừng làm em khóc trước Hana chứ. |
| Đại | (tiếng Việt) Mai à, 14 tháng tới mình cùng đi qua nhé. Anh sẽ làm 卒研 + Hizashi MVP song song. Cuối tháng 12 mình quyết chung. |
| Mai | (tiếng Việt) Ừ. Đi nào! |

---

## Đọng lại chương 8

Đại quay lại Lab Inoue tháng 10/2028 với 内定 Cybozu trong tay. Buổi 1on1 với Inoue-sensei 1 tiếng đã chốt hướng 卒研 hướng 3 — **適応的言語学習システム** (hệ thống học ngôn ngữ thích ứng dựa trên RAG + AI tutor + retention rate). Học **keigo 1on1 với giáo sư** (「失礼します」, 「お時間をいただいておりました」, 「失礼いたします」 lúc về), **phân tích trade-off 3 phương án** với cấu trúc rõ ràng từng hướng (điểm mạnh + điểm yếu + lý do chọn), **nói thẳng động lực cá nhân** (「妻が現在N2の勉強中です」, 「お恥ずかしながら」), **hỏi lại về methodology** (「具体的にどのように計測しますか」), và **xác nhận timeline + cam kết milestone**. Bonus: gặp Yamada-senpai ở lounge, chốt collab cụ thể — Yamada modeling error detection VN-JP wrap thành API, Đại tích hợp vào hệ thống thích ứng. 3 tiêu chí ra quyết định cuối tháng 12: proposal pass + MVP có 5 beta tester người Việt + tài chính đủ 6 tháng.

> Từ vựng & mẫu câu chương này: 卒研・卒業研究・卒論・proposal・lab seminar・適応的言語学習システム・誤り検出・修正・RAG・AIチューター・retention rate・spaced repetition・SM-2アルゴリズム・error pattern・L1-L2 transfer・multilingual NLP・synthetic data・few-shot・お時間をいただいておりました・お恥ずかしながら・正直に申し上げてもよろしいでしょうか・trade-offを整理させていただいてもよろしいでしょうか・承知しております・各マイルストーンを必ず守ります・貴重なお時間をいただき誠にありがとうございました・失礼いたします

## Bí quyết chương

- **Vào phòng sensei phải đúng nghi thức**: 「失礼します」 + tên + nhắc giờ hẹn (「13時半からお時間をいただいておりました」). Sensei sẽ đánh giá cao sự chỉn chu.
- **Phân tích trade-off > nhận xét cảm tính**: Khi sensei đưa N phương án, đừng nói "em thích phương án X". Thay vào đó: trade-off matrix (điểm mạnh + điểm yếu) cho từng phương án, kết luận cuối cùng có căn cứ.
- **Nói thẳng động lực cá nhân là OK trong academic Nhật**: Inoue-sensei thật sự đánh giá cao 「奥さんが動機」. Người Nhật trọng động lực 動機 — đặc biệt động lực thân thuộc.
- **卒研 ≠ product development**: Khi đề tài 卒研 liên kết với side project commercial, phải tách rõ scope. Sensei cảnh báo "卒研 là academic research, sản phẩm hoá là chuyện cá nhân riêng".
- **Hỏi senpai về dataset là move khôn**: Bài toán research khó nhất thường là data collection. Yamada chia sẻ kinh nghiệm 3 nguồn (public web + university permission + synthetic by Claude) tiết kiệm tháng trời cho Đại.
- **Cam kết milestone bằng văn bản**: Sensei đưa ra timeline 4 mốc, Đại trả lời 「各マイルストーンを必ず守ります」 + đề xuất report qua Slack. Đó là chuẩn working agreement giữa student + advisor ở lab Nhật.
- **Cuối buổi luôn cảm ơn "貴重なお時間"**: Câu chốt 「貴重なお時間をいただき、誠にありがとうございました」 + cúi 45 độ. Đây là chuẩn etiquette kết thúc 1on1 với sensei.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 無沙汰 | ぶさた | VÔ SA THÁI | Lâu không gặp |
| 夏休み | なつやすみ | HẠ HƯU | Kỳ nghỉ hè |
| 充実 | じゅうじつ | SUNG THỰC | Trọn vẹn |
| 経験 | けいけん | KINH NGHIỆM | Kinh nghiệm |
| 活きる | いきる | HOẠT | Sống lại, có ích |
| 適性 | てきせい | THÍCH TÍNH | Năng khiếu |
| 考慮 | こうりょ | KHẢO LỰ | Cân nhắc |
| 提示 | ていじ | ĐỀ THỊ | Đề xuất |
| 解く | とく | GIẢI | Giải (bài toán) |
| 母国語 | ぼこくご | MẪU QUỐC NGỮ | Tiếng mẹ đẻ |
| 開発者 | かいはつしゃ | KHAI PHÁT GIẢ | Lập trình viên |
| 感想 | かんそう | CẢM TƯỞNG | Cảm tưởng |
| 整理 | せいり | CHỈNH LÝ | Sắp xếp |
| 新規性 | しんきせい | TÂN QUY TÍNH | Tính mới |
| 定量評価 | ていりょうひょうか | ĐỊNH LƯỢNG ĐÁNH GIÁ | Đánh giá định lượng |
| 収集 | しゅうしゅう | THU TẬP | Thu thập |
| 差別化 | さべつか | SAI BIỆT HOÁ | Differentiation |
| 指標 | しひょう | CHỈ TIÊU | Tiêu chí |
| 関心 | かんしん | QUAN TÂM | Sự quan tâm |
| 教材 | きょうざい | GIÁO TÀI | Giáo trình |
| 苦労 | くろう | KHỔ LAO | Vất vả |
| 長音 | ちょうおん | TRƯỜNG ÂM | Trường âm |
| 濁音 | だくおん | TRẦM ÂM | Thanh đục |
| 清音 | せいおん | THANH ÂM | Thanh trong |
| 区別 | くべつ | KHU BIỆT | Phân biệt |
| 箇所 | かしょ | CÁ SỞ | Chỗ, nơi |
| 便利 | べんり | TIỆN LỢI | Tiện lợi |
| 恥ずかしい | はずかしい | SỈ | Ngại, xấu hổ |
| 身近 | みぢか | THÂN CẬN | Thân thuộc |
| 本物 | ほんもの | BẢN VẬT | Thật, đích thực |
| 学術 | がくじゅつ | HỌC THUẬT | Học thuật |
| 商用 | しょうよう | THƯƠNG DỤNG | Thương mại |
| 切り分け | きりわけ | THIẾT PHÂN | Tách bạch |
| 新規 | しんき | TÂN QUY | Mới |
| 手法 | しゅほう | THỦ PHÁP | Phương pháp |
| 別途 | べっと | BIỆT ĐỒ | Riêng biệt |
| 履歴 | りれき | LÝ LỊCH | Lịch sử |
| カリキュラム | — | — | Curriculum |
| 不明点 | ふめいてん | BẤT MINH ĐIỂM | Điểm chưa rõ |
| 比較 | ひかく | TỶ GIẢO | So sánh |
| 参考 | さんこう | THAM KHẢO | Tham khảo |
| 初期案 | しょきあん | SƠ KỲ ÁN | Bản phác đầu |
| 締め切り | しめきり | ĐẾ THIẾT | Hạn chót |
| 初稿 | しょこう | SƠ CẢO | Bản nháp đầu |
| 最終調整 | さいしゅうちょうせい | TỐI CHUNG ĐIỀU CHỈNH | Điều chỉnh cuối |
| マイルストーン | — | — | Mốc |
| 守る | まもる | THỦ | Giữ, tuân |
| 有意義 | ゆういぎ | HỮU Ý NGHĨA | Có ý nghĩa |
| 貴重 | きちょう | QUÝ TRỌNG | Quý báu |
| 久しぶり | ひさしぶり | CỬU | Lâu rồi mới |
| 偶然 | ぐうぜん | NGẪU NHIÊN | Trùng hợp |
| 役割 | やくわり | DỊCH CÁT | Vai trò |
| 分担 | ぶんたん | PHÂN ĐẢM | Phân chia |
| 大歓迎 | だいかんげい | ĐẠI HOAN NGHÊNH | Hoan nghênh |
| 投稿 | とうこう | ĐẦU CẢO | Bài đăng |
| 添削 | てんさく | THIÊM SƯỚC | Chỉnh sửa |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | Du học sinh |
| 許諾 | きょだく | HỨA NẶC | Cấp phép |
| 作文 | さくぶん | TÁC VĂN | Bài tập làm văn |
| 合成 | ごうせい | HỢP THÀNH | Tổng hợp |
| 類似 | るいじ | LOẠI TỰ | Tương tự |
| 頼もしい | たのもしい | LẠI | Đáng tin |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000009, 800000023, NULL, 'markdown_book', 'T9. EUREKA — Hizashi ra đời', '# Sách đại học CS năm 3 · T9. EUREKA — Hizashi ra đời

> **Mục tiêu nhân vật:** Đại 23 tuổi, sinh viên CS năm 3 ĐH Osaka, tháng 11/2028, đang ở Toyonaka cùng Mai (vợ, đang ôn N2) và bé Hana 3 tháng. Học 5-6 mẫu hội thoại tiếng Nhật của sinh viên CS chuẩn bị 卒研: (1) báo cáo ý tưởng với 教授, (2) xin phê duyệt 卒研テーマ, (3) brainstorm features cùng senpai bằng JP IT mix, (4) trình bày user research findings, (5) hẹn cohort 祝賀会, (6) từ chối nhã nhặn lời đề nghị đầu tư của bác homestay.

---

## Bối cảnh

Tháng 11/2028. Mùa thu Osaka, lá phong đỏ rực ở công viên Senri. Đại đang học năm 3 lab Inoue (NLP), vừa qua intern Cybozu mùa hè, đã có 内定 ¥6,7M. Mai (23 tuổi) tạm nghỉ Yamato School để chăm Hana (3 tháng). Linh-Anh — em gái Đại, đang làm Toyota Boshoku — cuối tuần ghé thăm và than về tiếng Nhật công sở yếu. Bố ở Hà Nội nhắn LINE hỏi giúp con bác Tâm tìm app học JLPT. Bốn dữ liệu cộng lại → Đại nảy ra ý tưởng "Hizashi" — app học tiếng Nhật cho người Việt. Chương này tập trung các mẫu câu: báo cáo ý tưởng/xin phê duyệt 卒研、brainstorm bằng JP IT, cảm ơn senpai, từ chối nhã nhặn đề nghị đầu tư.

---

## Tình huống 1 — Phòng khách Toyonaka · 7:30 sáng 5/11, Mai hỏi điểm ngữ pháp N2

*Mai ngồi ở bàn bếp, mở quyển 新完全マスター N2 文法, mặt nhíu mày.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi, em đọc 5 lần vẫn không phân biệt được `〜ものを` với `〜ものの`. Sách giải thích bằng tiếng Nhật, em hiểu được mỗi chỗ ví dụ. |
| Đại | (VN) Để anh giảng. `〜ものを` = tiếc nuối, kiểu "lẽ ra X, mà lại không". Còn `〜ものの` = "tuy X nhưng kết quả lại Y". |
| Mai | (VN) À! Vì sao sách không viết một câu tiếng Việt như anh vừa nói nhỉ? Em đọc 5 phút là xong, đằng này mất cả tối. |
| Đại | (VN, ngẫm) Đúng thật. Sách N2 cho người Việt thì hiếm, mà sách Nhật-Anh thì nhiều. Người Việt mình bị ép học qua tiếng Anh. |
| Mai | (VN) Bao giờ anh ra trường làm app giúp em với. Em là người dùng đầu tiên đấy. |
| Đại | (VN, cười) Anh ghi nhớ rồi. |

---

## Tình huống 2 — Phòng khách · 14:00 thứ Bảy 7/11, Linh-Anh sang chơi than tiếng Nhật công sở

*Linh-Anh bế Hana, ngồi sofa cùng Mai. Đại pha trà.*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (VN) Anh chị ơi, em vào Toyota Boshoku 2 năm rồi mà tiếng Nhật công sở vẫn yếu lắm. Sếp nói trong họp là em nghe được 60%. |
| Đại | (VN) Em N3 rồi nhỉ. Cần lên N2 cộng với 敬語 thương mại — kiểu báo cáo, đàm phán. |
| Linh-Anh | (VN) Em tìm trên mạng cả tháng. App dạy chung chung thì nhiều, mà dạy cho người Việt làm văn phòng Nhật theo ngữ cảnh thực thì không có. |
| Mai | (VN) Em cũng vậy. Sách hay mà cứ bằng tiếng Nhật. |
| Đại | (VN, nghĩ trong đầu — không nói thành lời) *Mai. Linh-Anh. Hai người. Cùng một vấn đề.* |
| Linh-Anh | (VN) Anh học CS, anh làm app đi anh. Em đăng ký đầu tiên. |

---

## Tình huống 3 — Phòng làm việc Đại · 19:00 8/11, LINE bố từ Hà Nội

*Đại ngồi trước MacBook, vừa code vừa nghe Hana ngủ trong cũi. LINE bố nhảy lên.*

| Vai | Lời thoại |
|---|---|
| Bố | (LINE VN) Đại ơi. Hôm trước bác Tâm sang chơi, bố khoe con học Đại học Osaka khoa CNTT, N2 giỏi. |
| Bố | (LINE VN) Bác nhờ con tìm hộ: con bác 18 tuổi muốn du học Nhật, có app nào dạy JLPT N5 cho người mới bắt đầu không. |
| Đại | (LINE VN) Con tìm hiểu rồi báo bác sau ạ. |
| Đại | (VN, lẩm bẩm một mình — viết vào sổ tay, không nói ra) *Mai N2. Linh-Anh thương mại. Bác Tâm N5. Tuấn em sách 19-20 đang chuyển ngành IT. Bốn người. Một thị trường.* |

---

## Tình huống 4 — Công viên Senri · 16:00 11/11, gọi điện Mai báo "EUREKA"

*Đại đi dạo công viên một mình giữa lá phong đỏ. Bỗng đứng sựng lại, lấy điện thoại bấm gọi Mai.*

| Vai | Lời thoại |
|---|---|
| Đại | (điện thoại, VN, hơi run) Mai! Anh nghĩ ra rồi! |
| Mai | (VN, tiếng Hana khóc ở phía sau) Anh sao thế? Bình tĩnh đã. |
| Đại | (VN) Đề tài 卒研 của anh. Anh sẽ làm hệ thống học tiếng Nhật toàn diện cho người Việt. Tên là **Hizashi** — ánh nắng mai. Cho Mai, Linh-Anh, con bác Tâm, Tuấn em — cả cộng đồng. |
| Mai | (VN, cười) Hizashi… cái tên em đề nghị hồi tháng 6 đúng không? |
| Đại | (VN) Đúng rồi. Anh về ngay đây. |
| Mai | (VN) Em chờ. Em sẽ là beta tester số 1. |

---

## Tình huống 5 — Phòng làm việc nhà · 21:00 cùng tối, brainstorm 8 features lên whiteboard

*Mai cho Hana bú xong, ngồi cạnh Đại. Đại đứng trước whiteboard nhỏ treo tường, viết liên tục.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, vừa viết) Anh nghĩ ra 8 module chính. Một, **Study Course** — khóa N5→N1 bằng markdown tiếng Việt. |
| Mai | (VN) Có tiếng Việt giải thích là quan trọng nhất. |
| Đại | (VN) Hai, **Question Set** — 20 dạng câu hỏi: chọn đáp án, kanji yomi, đọc hiểu, nghe. Ba, **AI Tutor** dùng Claude API, hỏi đáp 24/7 bằng tiếng Việt. |
| Mai | (VN) Cái thứ ba em mong nhất. Nửa đêm em không hiểu ngữ pháp, hỏi ai bây giờ. |
| Đại | (VN) Bốn, **SRS** — thẻ từ vựng kiểu Anki. Năm, **Reading Passage** N3→N1 chú giải inline. Sáu, **Mogishiken** đề thi thử. Bảy, **TTS + ghi âm** luyện phát âm. Tám, **ví dụ ngữ pháp dùng tình huống Việt** — gia đình, baito, học hành. |
| Mai | (VN) Số 8 hay nhất. Em thấy mình trong đó. |

---

## Tình huống 6 — Văn phòng Inoue-sensei · 10:00 12/11, báo cáo 卒研テーマ và xin phê duyệt

*Đại gõ cửa văn phòng tầng 4 khoa CS. Đem theo bản tóm tắt 2 trang in màu.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Cháu xin phép vào ạ.)* |
| Inoue | グエンくん、どうぞ。<ruby>卒研<rt>そつけん</rt></ruby>テーマは<ruby>決<rt>き</rt></ruby>まりましたか？<br>*(Vào đi. Đề tài tốt nghiệp quyết chưa?)* |
| Đại | はい、<ruby>決<rt>き</rt></ruby>まりました。テーマは「Hizashi」――ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムです。<br>*(Tên Hizashi — hệ thống học tiếng Nhật thích ứng cho người Việt.)* |
| Inoue | <ruby>動機<rt>どうき</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Cho thầy nghe động lực.)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>、<ruby>妹<rt>いもうと</rt></ruby>、ベトナムの<ruby>近所<rt>きんじょ</rt></ruby>の<ruby>子<rt>こ</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>――この4<ruby>人<rt>にん</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じ<ruby>問題<rt>もんだい</rt></ruby>を<ruby>抱<rt>かか</rt></ruby>えています。「<ruby>説明<rt>せつめい</rt></ruby>がベトナム<ruby>語<rt>ご</rt></ruby>ではない」――この<ruby>市場<rt>しじょう</rt></ruby>のギャップを<ruby>埋<rt>う</rt></ruby>めたいんです。<br>*(Bốn người cùng vấn đề: thiếu giải thích tiếng Việt. Cháu muốn lấp khoảng trống thị trường này.)* |
| Inoue | <ruby>技術<rt>ぎじゅつ</rt></ruby>スタックは？<br>*(Stack kỹ thuật?)* |
| Đại | Flutter モバイルアプリ、FastAPI バックエンド、PostgreSQL に pgvector を<ruby>追加<rt>ついか</rt></ruby>、Claude API でチューターを<ruby>実装<rt>じっそう</rt></ruby>します。RAG で<ruby>文法<rt>ぶんぽう</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>を<ruby>検索<rt>けんさく</rt></ruby>します。<br>*(Flutter + FastAPI + Postgres pgvector + Claude API. RAG cho giải thích ngữ pháp.)* |
| Inoue | <ruby>目的<rt>もくてき</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>で、<ruby>動機<rt>どうき</rt></ruby>も<ruby>強<rt>つよ</rt></ruby>い、<ruby>市場<rt>しじょう</rt></ruby>ニーズもあります。<ruby>正式<rt>せいしき</rt></ruby>に<ruby>承認<rt>しょうにん</rt></ruby>します。<br>*(Mục tiêu rõ, động lực mạnh, có nhu cầu thị trường. Thầy chính thức phê duyệt.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cháu cảm ơn thầy rất nhiều!)* |

---

## Tình huống 7 — Hành lang lab · 10:30, hỏi lại Inoue điểm chưa hiểu về scope

*Đi ra khỏi văn phòng được vài bước, Đại quay lại gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つだけ<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>卒研<rt>そつけん</rt></ruby>のスコープはMVPでよろしいですか、それともプロダクトレベルまで<ruby>求<rt>もと</rt></ruby>められますか？<br>*(Cháu xác nhận một việc. Scope tốt nghiệp dừng ở MVP hay phải đến mức product?)* |
| Inoue | <ruby>卒論<rt>そつろん</rt></ruby>としてはMVPで<ruby>十分<rt>じゅうぶん</rt></ruby>です。ただし、5<ruby>人<rt>にん</rt></ruby>のベータユーザーの<ruby>定量<rt>ていりょう</rt></ruby>データ――<ruby>学習<rt>がくしゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>正答率<rt>せいとうりつ</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>――を<ruby>必<rt>かなら</rt></ruby>ず<ruby>取<rt>と</rt></ruby>ってください。<br>*(Luận văn MVP là đủ. Nhưng phải có dữ liệu định lượng từ 5 beta user: thời gian học, tỉ lệ trả lời đúng theo thời gian.)* |
| Đại | <ruby>定量<rt>ていりょう</rt></ruby>データ――というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>には<ruby>毎日<rt>まいにち</rt></ruby>のログでしょうか？<br>*(Định lượng — tức là log mỗi ngày phải không ạ?)* |
| Inoue | はい、デイリーログでいいです。<ruby>後<rt>あと</rt></ruby>で<ruby>分析<rt>ぶんせき</rt></ruby>できる<ruby>形<rt>かたち</rt></ruby>で。<br>*(Daily log là được. Lưu ở dạng phân tích được sau.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Cháu hiểu rồi. Cảm ơn thầy.)* |

---

## Tình huống 8 — Lab seminar room · 14:00 12/11, mời Yamada-senpai cùng làm module error detection

*Yamada-senpai đang gõ code trong góc lab.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、ちょっといいですか？<br>*(Anh Yamada, em hỏi một chút được không?)* |
| Yamada | おう、グエン。どうした？<br>*(Ờ, Đại. Sao thế?)* |
| Đại | さっき<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>卒研<rt>そつけん</rt></ruby>テーマを<ruby>承認<rt>しょうにん</rt></ruby>してもらいました。Hizashi です。<br>*(Thầy Inoue vừa duyệt đề tài. Hizashi.)* |
| Yamada | おめでとう！で、<ruby>俺<rt>おれ</rt></ruby>に<ruby>何<rt>なに</rt></ruby>か<ruby>手伝<rt>てつだ</rt></ruby>えることある？<br>*(Chúc mừng! Có gì giúp được không?)* |
| Đại | はい、error detection モジュール――<ruby>多言語<rt>たげんご</rt></ruby>NLPで、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>が<ruby>間違<rt>まちが</rt></ruby>えやすい<ruby>助詞<rt>じょし</rt></ruby>の<ruby>検出<rt>けんしゅつ</rt></ruby>を<ruby>共同研究<rt>きょうどうけんきゅう</rt></ruby>させていただけませんか？<br>*(Module error detection — phát hiện trợ từ người Việt hay sai, anh em cùng nghiên cứu được không?)* |
| Yamada | おもしろい！<ruby>俺<rt>おれ</rt></ruby>の<ruby>修論<rt>しゅうろん</rt></ruby>テーマと<ruby>重<rt>かさ</rt></ruby>なる。<ruby>大歓迎<rt>だいかんげい</rt></ruby>。<br>*(Hay! Trùng đề tài thạc sĩ của anh. Hoan nghênh.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか？ありがとうございます！<br>*(Thật ạ? Cảm ơn anh!)* |
| Yamada | <ruby>来週<rt>らいしゅう</rt></ruby>までに baseline architecture を<ruby>送<rt>おく</rt></ruby>って。レビューする。<br>*(Tuần sau gửi anh baseline architecture. Anh review.)* |

---

## Tình huống 9 — Quán izakaya gần Senri-Chuo · 19:00 18/11, cohort celebration

*Yamato, Aiko, Lin Wei, Rajesh, Mai bế Hana, Đại — 6 người + 1 em bé ngồi bàn dài.*

| Vai | Lời thoại |
|---|---|
| Yamato | <ruby>祝賀会<rt>しゅくがかい</rt></ruby>だ！グエンの<ruby>卒研<rt>そつけん</rt></ruby>テーマ<ruby>承認<rt>しょうにん</rt></ruby>、おめでとう！<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Tiệc mừng! Chúc mừng Đại được duyệt đề tài! Cạn ly!)* |
| Cả nhóm | かんぱーい！<br>*(Cạn ly!)* |
| Aiko | UI/UXは<ruby>無料<rt>むりょう</rt></ruby>でやるよ！Figmaのモックアップ8<ruby>画面<rt>がめん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>、<ruby>来月<rt>らいげつ</rt></ruby>までに<ruby>渡<rt>わた</rt></ruby>す。<br>*(UI/UX miễn phí! 8 màn hình Figma tháng sau giao.)* |
| Lin Wei | (English) Backend code review on me — free of charge. Pull request 来たらレビューする。<br>*(Anh review backend miễn phí.)* |
| Rajesh | (English) DevOps と AWS infra は<ruby>俺<rt>おれ</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>するよ。Render の<ruby>設定<rt>せってい</rt></ruby>も<ruby>手伝<rt>てつだ</rt></ruby>う。<br>*(DevOps AWS để anh lo. Cấu hình Render anh giúp.)* |
| Đại | みんな、<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<ruby>家族<rt>かぞく</rt></ruby>みたいだ。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>作<rt>つく</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げます。<br>*(Mọi người, thật sự cảm ơn. Như gia đình. Em nhất định hoàn thành.)* |
| Mai | (cúi đầu) <ruby>夫<rt>おっと</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ mọi người chăm sóc chồng em.)* |

---

## Tình huống 10 — Quán izakaya tiếp · 20:30, Tony đề nghị angel investment ¥1M

*Tony và Yumi vừa từ Tennoji lên thăm Hana, ngồi bàn bên cạnh. Tony nghe được câu chuyện Hizashi, chuyển sang ngồi cùng.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben) ダイくん、わしも<ruby>投資家<rt>とうしか</rt></ruby>みたいなことしたるわ！Hizashi のシードに¥1M<ruby>出<rt>だ</rt></ruby>すで！<br>*(Đại ơi, chú làm angel investor cho cháu! Bỏ 1 triệu yên vào seed Hizashi!)* |
| Đại | (cúi đầu) トニーさん、お<ruby>気持<rt>きも</rt></ruby>ちは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。ただ、<ruby>今<rt>いま</rt></ruby>はまだ<ruby>学生<rt>がくせい</rt></ruby>で、<ruby>卒研<rt>そつけん</rt></ruby>の<ruby>段階<rt>だんかい</rt></ruby>なので、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>投資<rt>とうし</rt></ruby>はお<ruby>受<rt>う</rt></ruby>けできません。<br>*(Chú Tony, cháu thật sự cảm động. Nhưng giờ cháu vẫn là sinh viên, đang ở giai đoạn tốt nghiệp, chưa thể nhận đầu tư chính thức được.)* |
| Tony | (Osaka-ben) <ruby>気<rt>き</rt></ruby>にせんでええ。<ruby>家族同然<rt>かぞくどうぜん</rt></ruby>やからな。<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>時<rt>とき</rt></ruby>はいつでも<ruby>言<rt>い</rt></ruby>うてや。<br>*(Đừng ngại. Như người nhà mà. Khi nào cần cứ nói.)* |
| Đại | ありがとうございます。<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>設立<rt>せつりつ</rt></ruby>するタイミングになったら、<ruby>真<rt>ま</rt></ruby>っ<ruby>先<rt>さき</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Cảm ơn chú. Khi nào lập công ty, cháu xin được hỏi ý kiến chú đầu tiên.)* |
| Yumi | (Osaka-ben) パパ、ダイくんは<ruby>真面目<rt>まじめ</rt></ruby>やからな。<ruby>急<rt>いそ</rt></ruby>がせんといて。<br>*(Bố ơi, Đại nghiêm túc lắm, đừng giục.)* |

---

## Tình huống 11 — Tàu Hankyu về Toyonaka · 22:00, Mai chia sẻ cảm xúc

*Đại bế Hana, Mai ngồi cạnh trong toa vắng.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, nhỏ giọng) Anh ơi. Hôm nay em hơi xúc động. Mọi người Nhật, Trung, Ấn — không ai cùng máu mà thương anh thế. |
| Đại | (VN) Ừ. Anh cũng vậy. Aiko làm UI miễn phí, Lin Wei review code, Rajesh lo DevOps. Tự nhiên anh thấy Hizashi không phải của riêng anh. |
| Mai | (VN) Còn anh Tony 1 triệu yên. Anh từ chối hay thật, em hồi hộp gần chết. |
| Đại | (VN) Phải từ chối khéo. Mình mới sinh viên, nhận tiền vào là thành nghĩa vụ liền. Đợi đúng lúc đã. |
| Mai | (VN) Em ủng hộ. Mà anh… mai em bắt đầu đăng ký N2 tháng 7 năm sau. Em cũng phải cố lên. |
| Đại | (VN) Em vừa nuôi Hana vừa ôn N2 — anh phục sát đất. |

---

## Tình huống 12 — Bàn làm việc nhà · 23:30 cùng đêm, nhật ký + LINE Tuấn em

*Đại mở sổ tay viết, rồi cầm điện thoại nhắn Tuấn em (cohort cũ sách 19-20, hiện chuyển sang ngành CNTT ở Kobe).*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE VN, gửi Tuấn em) Tuấn ơi, anh mới chốt đề tài tốt nghiệp: làm app học tiếng Nhật cho người Việt, tên Hizashi. Anh đang cần beta tester ngành IT — em có hứng không? |
| Tuấn em | (LINE VN) Anh ơi, em đăng ký đầu tiên! Em đang khổ với từ vựng IT tiếng Nhật. Pull request, デプロイ, リファクタリング — em phải tra từng từ. |
| Đại | (LINE VN) Đó! Module "IT vocabulary" anh thêm vào v0.2. Em sẵn sàng góp ý nhé. |
| Tuấn em | (LINE VN) Sẵn sàng anh. Bao giờ cho thử em báo cáo từng tuần một lần. |
| Đại | (LINE VN) Cảm ơn em. Chúc ngủ ngon. |

---

## Đọng lại chương 9

Một tuần đổi đời. Đại học được mẫu câu báo cáo 卒研テーマ với 教授: **「テーマは〜です。動機は〜です」** rồi **「正式に承認していただけますか」**. Khi chưa rõ scope, hỏi lại bằng **「〜というのは、具体的には〜でしょうか」** — kỹ năng hỏi lại không sợ mất mặt. Mời senpai cùng làm: **「〜を共同研究させていただけませんか」**. Cảm ơn cohort hỗ trợ miễn phí: **「家族みたいだ。本当にありがとう」**. Quan trọng nhất là cách **từ chối nhã nhặn đề nghị đầu tư của bác Tony**: **「お気持ちは嬉しいですが、今はまだ〜の段階なので、お受けできません」** + cam kết **「タイミングになったら、真っ先にご相談させてください」** — vừa giữ thể diện vừa giữ quan hệ. Bên ngôn ngữ Việt, Mai và Linh-Anh là người cùng cho Đại thấy "market gap" thật. Hizashi sinh ra từ 4 dữ liệu thực, không phải bàn giấy.

> Từ vựng & mẫu câu chương này: 卒研テーマ・適応的日本語学習・動機・市場ニーズ・正式に承認・〜というのは・共同研究させていただけませんか・お気持ちは嬉しいですが・お受けできません・真っ先にご相談・乾杯・家族同然・お世話になります・スコープ・MVP・定量データ・デイリーログ・ベータユーザー

## Bí quyết chương

- **報告 + 承認 = pattern keigo cố định**: vào → 「失礼します」、ra → 「ありがとうございました」. Báo cáo gói gọn 3 câu: テーマ / 動機 / スタック.
- **Hỏi lại không phải dốt — là cẩn thận**: 「〜というのは？」 / 「具体的には〜でしょうか」 — senpai và sensei đánh giá cao người hỏi lại đúng chỗ.
- **Từ chối tiền của người thân**: KHÔNG dùng いいえ. Dùng cấu trúc **嬉しい → 状況説明 → お受けできない → 将来の相談**. Đây là pattern keigo cứu vớt nhiều mối quan hệ.
- **JP IT mix**: pull request, RAG, MVP, FastAPI giữ tiếng Anh, bọc bằng JP đầy đủ ruby — đây là cách kỹ sư Nhật thật sự nói chuyện.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 文法 | ぶんぽう | VĂN PHÁP | Ngữ pháp |
| 後輩 | こうはい | HẬU BỐI | Đàn em |
| 妹 | いもうと | MUỘI | Em gái |
| 近所 | きんじょ | CẬN SỞ | Hàng xóm |
| 抱える | かかえる | BÃO | Mang vác, gánh |
| 市場 | しじょう | THỊ TRƯỜNG | Thị trường |
| 埋める | うめる | MAI | Lấp đầy |
| 技術 | ぎじゅつ | KỸ THUẬT | Công nghệ |
| 追加 | ついか | TRUY GIA | Thêm vào |
| スコープ | — | — | Scope |
| 求める | もとめる | CẦU | Yêu cầu |
| 卒論 | そつろん | TỐT LUẬN | Luận văn tốt nghiệp |
| 十分 | じゅうぶん | THẬP PHÂN | Đầy đủ |
| 必ず | かならず | TẤT | Chắc chắn |
| 正答率 | せいとうりつ | CHÍNH ĐÁP SUẤT | Tỷ lệ trả lời đúng |
| 変化 | へんか | BIẾN HOÁ | Sự thay đổi |
| 重なる | かさなる | TRÙNG | Trùng nhau |
| 祝賀会 | しゅくがかい | CHÚC HẠ HỘI | Tiệc mừng |
| 設定 | せってい | THIẾT ĐỊNH | Cài đặt |
| 投資家 | とうしか | ĐẦU TƯ GIA | Nhà đầu tư |
| 投資 | とうし | ĐẦU TƯ | Đầu tư |
| 段階 | だんかい | ĐOẠN GIAI | Giai đoạn |
| 受ける | うける | THỤ | Nhận |
| 家族同然 | かぞくどうぜん | GIA TỘC ĐỒNG NHIÊN | Như người nhà |
| 真っ先 | まっさき | CHÂN TIÊN | Đầu tiên |
| 設立 | せつりつ | THIẾT LẬP | Thành lập |
| 急がせる | いそがせる | CẤP | Giục giã |
| 真面目 | まじめ | CHÂN DIỆN MỤC | Nghiêm túc |
| 義務 | ぎむ | NGHĨA VỤ | Nghĩa vụ |
| 適応的 | てきおうてき | THÍCH ỨNG ĐÍCH | Thích ứng |
| 仲良く | なかよく | TRỌNG LƯƠNG | Thân thiết |
| ベータユーザー | — | — | Beta user |
| デイリーログ | — | — | Daily log |
| 定量データ | ていりょうデータ | ĐỊNH LƯỢNG — | Dữ liệu định lượng |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000010, 800000023, NULL, 'markdown_book', 'T10. Thiết kế architecture Hizashi', '# Sách đại học CS năm 3 · T10. Thiết kế architecture Hizashi

> **Mục tiêu nhân vật:** Đại 23 tuổi, tháng 12/2028, lab Inoue. Học 5-6 mẫu hội thoại tiếng Nhật của sinh viên CS năm 3 viết tech doc và xin review: (1) trình bày architecture diagram trước senpai, (2) hỏi feedback DB schema, (3) thảo luận chi phí cloud với mentor, (4) xin lịch hẹn 1on1 với 教授, (5) báo cáo tiến độ trong lab seminar, (6) xác nhận hiểu yêu cầu khi chưa rõ.

---

## Bối cảnh

Tháng 12/2028, đông Osaka, lá đã rụng hết. Hana 4 tháng đã biết lẫy. Mai đăng ký N2 tháng 7/2029. Đại tập trung viết Hizashi Architecture Document — mục tiêu 30 trang. Yamada-senpai làm reviewer chính. Inoue-sensei review pass cuối. Aiko gửi Figma mockup. Lin Wei sẵn sàng review code. Chương này tập trung các mẫu câu: trình bày architecture, xin review/feedback, hỏi lại khi chưa hiểu, báo cáo progress trong seminar, xin hẹn 1on1, thảo luận chi phí — toàn bộ trong môi trường lab CS Nhật.

---

## Tình huống 1 — Lab Inoue · 9:00 1/12, Đại mở Notion bắt đầu tech doc

*Đại đến lab sớm, chỉ có Yamada-senpai đã ngồi từ 8 giờ.*

| Vai | Lời thoại |
|---|---|
| Yamada | おはよう、グエン。<ruby>早<rt>はや</rt></ruby>いな。<br>*(Chào, đến sớm thế.)* |
| Đại | おはようございます。<ruby>今日<rt>きょう</rt></ruby>から Hizashi の<ruby>技術<rt>ぎじゅつ</rt></ruby>ドキュメントを<ruby>書<rt>か</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めます。30ページ<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(Hôm nay em bắt đầu viết tech doc Hizashi. Mục tiêu 30 trang.)* |
| Yamada | おう。アウトラインはもうあるか？<br>*(Ờ. Đã có outline chưa?)* |
| Đại | Notion に10<ruby>章<rt>しょう</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>で<ruby>下書<rt>したが</rt></ruby>きしました。ビジョン、アーキテクチャ、DBスキーマ、APIエンドポイント、モバイル<ruby>画面<rt>がめん</rt></ruby>、プロンプト<ruby>設計<rt>せっけい</rt></ruby>、インフラ、コスト、ロードマップ、リスクです。<br>*(Đã phác 10 chương trên Notion. Tầm nhìn, architecture, DB schema, API endpoint, mobile screen, prompt design, infrastructure, cost, roadmap, risk.)* |
| Yamada | <ruby>順番<rt>じゅんばん</rt></ruby>がいいね。<ruby>各章<rt>かくしょう</rt></ruby>1ページ<ruby>書<rt>か</rt></ruby>いたら<ruby>俺<rt>おれ</rt></ruby>にレビュー<ruby>頼<rt>たの</rt></ruby>んで。<br>*(Thứ tự ổn. Mỗi chương viết được 1 trang thì nhờ anh review.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh.)* |

---

## Tình huống 2 — Lab whiteboard · 11:00 3/12, vẽ architecture diagram trên Excalidraw

*Đại vẽ system diagram trên iPad, chiếu lên màn hình 75 inch của lab. Yamada đứng cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>説明<rt>せつめい</rt></ruby>させてください。4<ruby>層構造<rt>そうこうぞう</rt></ruby>です。<ruby>上<rt>うえ</rt></ruby>から、クライアント<ruby>層<rt>そう</rt></ruby>は Flutter――iOS と Android、<ruby>将来<rt>しょうらい</rt></ruby> Web も Next.js で。<br>*(Em xin trình bày. Cấu trúc 4 lớp. Trên cùng client layer là Flutter — iOS, Android, tương lai Web Next.js.)* |
| Đại | APIレイヤーは FastAPI、Pydantic で<ruby>型<rt>かた</rt></ruby><ruby>検証<rt>けんしょう</rt></ruby>。データレイヤーは PostgreSQL に pgvector を<ruby>追加<rt>ついか</rt></ruby>、キャッシュは Redis、AI チューターは Claude API。<br>*(API layer FastAPI + Pydantic kiểm tra type. Data layer Postgres + pgvector, cache Redis, AI tutor Claude API.)* |
| Đại | ストレージは Cloudflare R2――<ruby>音声<rt>おんせい</rt></ruby>と<ruby>画像<rt>がぞう</rt></ruby>を<ruby>保存<rt>ほぞん</rt></ruby>します。<br>*(Storage Cloudflare R2 — lưu audio và ảnh.)* |
| Yamada | フローは？<br>*(Flow thế nào?)* |
| Đại | クライアントから FastAPI に<ruby>要求<rt>ようきゅう</rt></ruby>が<ruby>来<rt>く</rt></ruby>る → Postgres と Redis と Claude API を<ruby>呼<rt>よ</rt></ruby>び<ruby>分<rt>わ</rt></ruby>ける → R2 のアセットURLを<ruby>返<rt>かえ</rt></ruby>す<ruby>流<rt>なが</rt></ruby>れです。<br>*(Client gửi request lên FastAPI → gọi phân nhánh Postgres/Redis/Claude → trả URL asset từ R2.)* |
| Yamada | クリアだ。<ruby>一<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>――Claude API の<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しはストリーミングだよな？タイムアウトは？<br>*(Rõ. Một câu hỏi — call Claude là streaming nhỉ? Timeout?)* |
| Đại | はい、ストリーミングです。タイムアウトは60<ruby>秒<rt>びょう</rt></ruby>に<ruby>設定<rt>せってい</rt></ruby>します。<br>*(Vâng streaming. Timeout đặt 60 giây.)* |

---

## Tình huống 3 — Lab kitchen · 12:30 3/12, hỏi Yamada về retry policy

*Cùng ăn bento, đứng ở bếp nhỏ của lab.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、Claude API のリトライ<ruby>方針<rt>ほうしん</rt></ruby>って、<ruby>普通<rt>ふつう</rt></ruby>どう<ruby>設定<rt>せってい</rt></ruby>しますか？<br>*(Anh Yamada, retry policy của Claude API thông thường đặt sao?)* |
| Yamada | <ruby>指数<rt>しすう</rt></ruby>バックオフで3<ruby>回<rt>かい</rt></ruby>まで。429 (rate limit) と 529 (overload) はリトライ、4xx はリトライしない。<br>*(Exponential backoff tối đa 3 lần. 429 với 529 thì retry, 4xx khác thì không.)* |
| Đại | 「<ruby>指数<rt>しすう</rt></ruby>バックオフ」――というのは、1<ruby>秒<rt>びょう</rt></ruby>、2<ruby>秒<rt>びょう</rt></ruby>、4<ruby>秒<rt>びょう</rt></ruby>と<ruby>待<rt>ま</rt></ruby>ち<ruby>時間<rt>じかん</rt></ruby>を<ruby>倍<rt>ばい</rt></ruby>にしていくということでしょうか？<br>*(Exponential backoff — tức là 1 giây, 2 giây, 4 giây gấp đôi thời gian chờ đúng không?)* |
| Yamada | そうそう。プラス、ジッターを<ruby>足<rt>た</rt></ruby>す。<ruby>同時<rt>どうじ</rt></ruby>に<ruby>全<rt>ぜん</rt></ruby>クライアントがリトライしないように。<br>*(Đúng. Thêm jitter nữa. Để mọi client không retry cùng lúc.)* |
| Đại | なるほど、ジッターも<ruby>追加<rt>ついか</rt></ruby>します。ありがとうございます。<br>*(Hiểu rồi, em thêm jitter. Cảm ơn anh.)* |

---

## Tình huống 4 — Lab desk · 14:00 5/12, hoàn thiện DB schema và xin Yamada review ER diagram

*Đại in ra A3 file ER diagram, đem đến bàn Yamada.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、DBスキーマ15テーブルのER<ruby>図<rt>ず</rt></ruby>ができました。レビューしていただけますか？<br>*(Anh Yamada, ER diagram 15 bảng đã xong. Anh review giúp em được không?)* |
| Yamada | おう、<ruby>置<rt>お</rt></ruby>いて。<ruby>30分後<rt>さんじゅっぷんご</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って。<br>*(Ờ, để đây. 30 phút sau quay lại.)* |
| Đại | (30 phút sau) <ruby>山田<rt>やまだ</rt></ruby>さん、いかがでしたか？<br>*(Anh thấy sao ạ?)* |
| Yamada | <ruby>全体<rt>ぜんたい</rt></ruby>は<ruby>明確<rt>めいかく</rt></ruby>だ。3<ruby>点<rt>てん</rt></ruby>コメント：<br>*(Tổng thể rõ. 3 điểm comment:)* |
| Yamada | <ruby>一<rt>ひと</rt></ruby>つ、`questions_answers` テーブルに `time_spent_ms` <ruby>列<rt>れつ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>して――<ruby>学習<rt>がくしゅう</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Một, thêm cột `time_spent_ms` vào bảng `questions_answers` — cần cho phân tích học tập.)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ、`document_embeddings` の vector(1024) は<ruby>大<rt>おお</rt></ruby>きすぎる。768 で<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(Hai, vector(1024) hơi to. 768 là đủ.)* |
| Yamada | <ruby>三<rt>みっ</rt></ruby>つ、`users` に `deleted_at` の soft delete を<ruby>追加<rt>ついか</rt></ruby>。GDPR<ruby>対応<rt>たいおう</rt></ruby>。<br>*(Ba, thêm `deleted_at` soft delete cho `users`. Để chuẩn GDPR.)* |
| Đại | 3<ruby>点<rt>てん</rt></ruby>とも<ruby>納得<rt>なっとく</rt></ruby>です。<ruby>修正<rt>しゅうせい</rt></ruby>します。ありがとうございます。<br>*(Cả 3 điểm em thấy đúng. Em sửa. Cảm ơn anh.)* |

---

## Tình huống 5 — Lab seminar room · 15:00 12/12, báo cáo progress weekly seminar

*Mỗi thứ Sáu lab Inoue có seminar 30 phút. Đại trình bày 5 phút status update.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>研究室<rt>けんきゅうしつ</rt></ruby>のみなさん、Hizashi の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をします。<br>*(Mọi người ở lab Inoue, em báo cáo tiến độ Hizashi.)* |
| Đại | <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つです。<ruby>一<rt>ひと</rt></ruby>つ、アーキテクチャ<ruby>図<rt>ず</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、DBスキーマ15テーブルとER<ruby>図<rt>ず</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>さんのレビュー<ruby>済<rt>ず</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ、APIエンドポイント<ruby>設計<rt>せっけい</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>、40<ruby>本<rt>ぽん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tuần này 3 kết quả. Một, hoàn thành architecture diagram. Hai, DB schema 15 bảng và ER diagram đã xong, Yamada review xong. Ba, API endpoint thiết kế dở, dự kiến 40 cái.)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>は、コスト<ruby>試算<rt>しさん</rt></ruby>とプロンプト<ruby>設計<rt>せっけい</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Tuần sau em làm phần ước tính chi phí và prompt design.)* |
| Đại | <ruby>課題<rt>かだい</rt></ruby>として、Claude API のトークン<ruby>消費量<rt>しょうひりょう</rt></ruby>の<ruby>見積<rt>みつ</rt></ruby>もりに<ruby>不安<rt>ふあん</rt></ruby>があります。アドバイスをいただけたら<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vướng mắc: em chưa chắc về ước tính token Claude. Mong được lời khuyên.)* |
| Inoue | トークンの<ruby>件<rt>けん</rt></ruby>は、<ruby>後<rt>あと</rt></ruby>で1on1で<ruby>話<rt>はな</rt></ruby>そう。よく<ruby>整理<rt>せいり</rt></ruby>されている。<br>*(Vấn đề token để 1on1 sau nói. Trình bày tốt.)* |
| Đại | ありがとうございます。<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Cảm ơn thầy. Em xong rồi.)* |

---

## Tình huống 6 — Email Inoue · 16:00 12/12, xin lịch 1on1

*Đại gõ email keigo trang trọng.*

| Vai | Lời thoại |
|---|---|
| Đại | (email)<br>件名：1on1<ruby>面談<rt>めんだん</rt></ruby>の<ruby>日程<rt>にってい</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>い<br><br><ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby><br><br>お<ruby>疲<rt>つか</rt></ruby>れさまです。グエン・ヴァン・ダイです。<br><br><ruby>本日<rt>ほんじつ</rt></ruby>のセミナーで<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げた Claude API のトークン<ruby>消費量<rt>しょうひりょう</rt></ruby>の<ruby>見積<rt>みつ</rt></ruby>もりについて、ご<ruby>相談<rt>そうだん</rt></ruby>させていただきたいです。<br><br><ruby>来週<rt>らいしゅう</rt></ruby>、30<ruby>分<rt>ぷん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>をいただけませんでしょうか。<ruby>候補<rt>こうほ</rt></ruby>は<ruby>以下<rt>いか</rt></ruby>です：<br>・15<ruby>日<rt>にち</rt></ruby>（<ruby>月<rt>げつ</rt></ruby>）14:00〜<br>・16<ruby>日<rt>にち</rt></ruby>（<ruby>火<rt>か</rt></ruby>）10:00〜<br>・17<ruby>日<rt>にち</rt></ruby>（<ruby>水<rt>すい</rt></ruby>）終日<br><br>ご<ruby>都合<rt>つごう</rt></ruby>のよろしい<ruby>日<rt>ひ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br><br>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>グエン・ヴァン・ダイ |
| Inoue | (reply 30 phút sau) 17<ruby>日<rt>にち</rt></ruby>10:00<ruby>研究室<rt>けんきゅうしつ</rt></ruby>で。<br>*(17/12 10h ở lab.)* |
| Đại | (reply) ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn thầy.)* |

---

## Tình huống 7 — Văn phòng Inoue · 10:00 17/12, 1on1 thảo luận chi phí Claude API

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Cháu xin phép.)* |
| Inoue | どうぞ。トークンの<ruby>話<rt>はなし</rt></ruby>ですね。<br>*(Mời vào. Chuyện token nhỉ.)* |
| Đại | はい。<ruby>現在<rt>げんざい</rt></ruby>の<ruby>試算<rt>しさん</rt></ruby>では、100ユーザーで<ruby>月<rt>つき</rt></ruby> Claude API が<ruby>約<rt>やく</rt></ruby>$45 です。<ruby>入力<rt>にゅうりょく</rt></ruby>300<ruby>万<rt>まん</rt></ruby>トークン、<ruby>出力<rt>しゅつりょく</rt></ruby>50<ruby>万<rt>まん</rt></ruby>トークン、<ruby>平均<rt>へいきん</rt></ruby><ruby>一人<rt>ひとり</rt></ruby><ruby>月<rt>つき</rt></ruby>10チャットを<ruby>想定<rt>そうてい</rt></ruby>しています。<br>*(Vâng. Ước tính 100 user/tháng Claude API ~$45. Input 3M token, output 500k, giả định trung bình 10 chat/người/tháng.)* |
| Inoue | プロンプトキャッシングは<ruby>使<rt>つか</rt></ruby>っているか？<br>*(Có dùng prompt caching không?)* |
| Đại | あ、まだ<ruby>検討<rt>けんとう</rt></ruby>していませんでした。<ruby>共通<rt>きょうつう</rt></ruby>の system prompt と RAG context を<ruby>キャッシュ<rt>キャッシュ</rt></ruby>すれば、<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>削減<rt>さくげん</rt></ruby>できそうですね。<br>*(À, em chưa tính tới. Cache system prompt và RAG context chắc giảm đáng kể.)* |
| Inoue | そう。Anthropic の<ruby>公式<rt>こうしき</rt></ruby>ドキュメントによると、キャッシュヒットでコスト10<ruby>分<rt>ぶん</rt></ruby>の1。100ユーザーで$5 まで<ruby>落<rt>お</rt></ruby>とせる<ruby>可能性<rt>かのうせい</rt></ruby>がある。<br>*(Ờ. Theo doc Anthropic, cache hit còn 1/10 chi phí. 100 user xuống $5 là khả thi.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>今週<rt>こんしゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>にプロンプトキャッシングを<ruby>設計<rt>せっけい</rt></ruby>に<ruby>組<rt>く</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みます。<br>*(Em học được. Trong tuần em lồng prompt caching vào thiết kế.)* |
| Inoue | <ruby>頑張<rt>がんば</rt></ruby>って。あと、コスト<ruby>試算<rt>しさん</rt></ruby>は1000ユーザー、1<ruby>万<rt>まん</rt></ruby>ユーザーの<ruby>段階<rt>だんかい</rt></ruby>も<ruby>出<rt>だ</rt></ruby>しておくこと。スケール<ruby>時<rt>じ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby><ruby>材料<rt>ざいりょう</rt></ruby>になる。<br>*(Cố lên. Còn ước tính chi phí ở mức 1k, 10k user cũng làm. Cần cho quyết định khi scale.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございました。<br>*(Vâng cháu hiểu. Cảm ơn thầy.)* |

---

## Tình huống 8 — Lab desk · 15:00 18/12, Aiko gửi Figma mockup → góp ý qua LINE

*Aiko gửi link Figma cho 8 màn hình mobile.*

| Vai | Lời thoại |
|---|---|
| Aiko | (LINE) ダイ、モックアップ8<ruby>画面<rt>がめん</rt></ruby><ruby>完成<rt>かんせい</rt></ruby>！<ruby>確認<rt>かくにん</rt></ruby>して→ figma.com/file/hizashi-v01<br>*(Đại, mockup 8 màn xong! Check đi.)* |
| Đại | (LINE) <ruby>早<rt>はや</rt></ruby>い！すごい。<ruby>今<rt>いま</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Nhanh quá! Em xem ngay.)* |
| Đại | (LINE, 20 phút sau) アイコちゃん、<ruby>本当<rt>ほんとう</rt></ruby>にきれい！2<ruby>点<rt>てん</rt></ruby>だけ<ruby>相談<rt>そうだん</rt></ruby>させて：<br>*(Aiko, đẹp thật! Chỉ 2 điểm em xin được trao đổi:)* |
| Đại | (LINE) ①「Vocab SRS<ruby>画面<rt>がめん</rt></ruby>」のカードめくりアニメ、ベトナム<ruby>語<rt>ご</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby><ruby>位置<rt>いち</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>下<rt>した</rt></ruby>にできますか？<br>*(Animation flip card vocab — vị trí tiếng Việt hạ xuống chút được không?)* |
| Đại | (LINE) ② チャット<ruby>画面<rt>がめん</rt></ruby>のストリーミングカーソル、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>遅<rt>おそ</rt></ruby>くしてほしい――ベトナム<ruby>人<rt>じん</rt></ruby><ruby>読者<rt>どくしゃ</rt></ruby>は<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むのに<ruby>時間<rt>じかん</rt></ruby>がかかるので。<br>*(Cursor streaming chat — chậm thêm chút — vì người Việt đọc kanji mất thời gian.)* |
| Aiko | (LINE) なるほど、ユーザー<ruby>目線<rt>めせん</rt></ruby>のフィードバックいいね。<ruby>修正<rt>しゅうせい</rt></ruby>するよ。<br>*(Hiểu, phản hồi từ user POV hay đấy. Mình sửa.)* |
| Đại | (LINE) ありがとう、アイコちゃん。<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>払<rt>はら</rt></ruby>わなくていいの？<br>*(Cảm ơn nha. Tiền công thật sự không nhận à?)* |
| Aiko | (LINE) <ruby>料金<rt>りょうきん</rt></ruby>ナシ！ただ、リリースしたらクレジットに「UI by Aiko」って<ruby>入<rt>い</rt></ruby>れてね（笑）<br>*(Không lấy! Nhưng khi release ghi credit "UI by Aiko" nhé hihi.)* |
| Đại | (LINE) <ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる！<br>*(Chắc chắn em ghi!)* |

---

## Tình huống 9 — Cafe Senri-Chuo · 17:00 19/12, gặp Lin Wei nhờ review API design

| Vai | Lời thoại |
|---|---|
| Đại | リンさん、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。API エンドポイントの<ruby>設計<rt>せっけい</rt></ruby>レビューをお<ruby>願<rt>ねが</rt></ruby>いしたくて。<br>*(Anh Lin, em làm phiền lúc anh bận. Em muốn nhờ anh review thiết kế API endpoint.)* |
| Lin Wei | (English mix) ノープロブレム。<ruby>見<rt>み</rt></ruby>せて。40 endpoints だっけ？<br>*(Không sao. Cho xem. 40 endpoint nhỉ?)* |
| Đại | はい、これです。(mở iPad) 一つ気になるのは、`/answers` のPOSTで、<ruby>採点<rt>さいてん</rt></ruby>ロジックを<ruby>同<rt>おな</rt></ruby>じエンドポイントに<ruby>入<rt>い</rt></ruby>れるか、<ruby>分<rt>わ</rt></ruby>けるかです。<br>*(Vâng đây. Em băn khoăn `/answers` POST — logic chấm điểm nhét cùng endpoint hay tách?)* |
| Lin Wei | <ruby>同<rt>おな</rt></ruby>じでいい。Idempotency<ruby>気<rt>き</rt></ruby>をつけて――<ruby>同<rt>おな</rt></ruby>じ user+question で2<ruby>回<rt>かい</rt></ruby> POST が<ruby>来<rt>こ</rt></ruby>た<ruby>場合<rt>ばあい</rt></ruby>のルール<ruby>決<rt>き</rt></ruby>めて。<br>*(Cùng được. Lo idempotency — cùng user+question gửi POST 2 lần xử lý sao.)* |
| Đại | あ、その<ruby>点<rt>てん</rt></ruby>は<ruby>抜<rt>ぬ</rt></ruby>けていました。`Idempotency-Key` ヘッダーを<ruby>導入<rt>どうにゅう</rt></ruby>します。<br>*(À điểm đó em sót. Em đưa vào header `Idempotency-Key`.)* |
| Lin Wei | あと、`/chat` のストリーミングは Server-Sent Events か WebSocket？<br>*(`/chat` streaming dùng SSE hay WebSocket?)* |
| Đại | SSE です。Flutter から flutter_client_sse <ruby>使<rt>つか</rt></ruby>います。<br>*(SSE. Flutter dùng flutter_client_sse.)* |
| Lin Wei | OK. <ruby>残<rt>のこ</rt></ruby>りは<ruby>後<rt>あと</rt></ruby>でメールで<ruby>送<rt>おく</rt></ruby>る。<br>*(OK. Còn lại anh email sau.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。ありがとうございます。<br>*(Thật sự cứu em. Cảm ơn anh.)* |

---

## Tình huống 10 — Lab desk · 11:00 20/12, ước tính chi phí và viết chương 8 tech doc

*Đại mở Google Sheets, gọi Yamada qua xem.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、コスト<ruby>試算<rt>しさん</rt></ruby>の<ruby>三<rt>みっ</rt></ruby>つのシナリオを<ruby>作<rt>つく</rt></ruby>りました。<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Yamada, em làm 3 kịch bản ước tính. Xem giúp em.)* |
| Đại | 100ユーザー<ruby>段階<rt>だんかい</rt></ruby>：プロンプトキャッシング<ruby>適用<rt>てきよう</rt></ruby><ruby>前<rt>まえ</rt></ruby>$100/<ruby>月<rt>つき</rt></ruby>、<ruby>適用<rt>てきよう</rt></ruby><ruby>後<rt>ご</rt></ruby>$55/<ruby>月<rt>つき</rt></ruby>。<br>*(100 user: trước cache $100, sau cache $55.)* |
| Đại | 1000ユーザー<ruby>段階<rt>だんかい</rt></ruby>：$550/<ruby>月<rt>つき</rt></ruby>。Postgres を Supabase Pro に upgrade。<br>*(1000 user: $550. Upgrade Supabase Pro.)* |
| Đại | 1<ruby>万<rt>まん</rt></ruby>ユーザー<ruby>段階<rt>だんかい</rt></ruby>：$4500/<ruby>月<rt>つき</rt></ruby>。Render から AWS ECS に<ruby>移行<rt>いこう</rt></ruby><ruby>検討<rt>けんとう</rt></ruby>。<br>*(10k user: $4500. Cân nhắc chuyển từ Render sang AWS ECS.)* |
| Yamada | いいね。MRR <ruby>目標<rt>もくひょう</rt></ruby>は？<br>*(Tốt. Mục tiêu MRR?)* |
| Đại | $5/ユーザー/<ruby>月<rt>つき</rt></ruby>です。<ruby>粗利率<rt>あらりりつ</rt></ruby>80%が<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(5 USD/user/tháng. Mục tiêu biên gộp 80%.)* |
| Yamada | <ruby>無料<rt>むりょう</rt></ruby>プランは？<br>*(Free plan?)* |
| Đại | はい、5<ruby>問<rt>もん</rt></ruby>/<ruby>日<rt>にち</rt></ruby>と AI チャット3<ruby>回<rt>かい</rt></ruby>/<ruby>日<rt>にち</rt></ruby>までは<ruby>無料<rt>むりょう</rt></ruby>。それ<ruby>以上<rt>いじょう</rt></ruby>は Pro プラン。<br>*(Vâng. Tới 5 câu/ngày + 3 chat AI/ngày miễn phí. Trên thì gói Pro.)* |
| Yamada | freemium モデル<ruby>典型<rt>てんけい</rt></ruby>だな。OK。<br>*(Mô hình freemium chuẩn. OK.)* |

---

## Tình huống 11 — Phòng khách Toyonaka · 22:00 22/12, Mai hỏi tiến độ

*Đại ngồi sofa với Hana ngủ trên ngực. Mai pha trà yuzu.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh xong tech doc chưa? Trông anh thấm mệt. |
| Đại | (VN) 28/30 trang rồi. Hôm nay xong chương cost projection — thầy Inoue dạy anh dùng prompt caching, chi phí giảm gần một nửa. |
| Mai | (VN) Prompt caching là gì? |
| Đại | (VN) Tưởng tượng anh đưa Claude API một đoạn hướng dẫn dài, dùng đi dùng lại. Anh đánh dấu đoạn đó "cache" — lần sau API chỉ tính giá 1/10. Y như mua sỉ. |
| Mai | (VN) À hiểu rồi! Vậy anh nên xếp những phần nào hay lặp lại vào cache? |
| Đại | (VN) System prompt mô tả Hizashi là gì, RAG context kiến thức ngữ pháp N5-N1, format JSON trả về. Bốn người dùng đầu họ đều dùng chung. |
| Mai | (VN) Hay quá. Tự nhiên em thấy app sắp xuất hiện thật. |
| Đại | (VN) Tháng 1 anh bắt đầu code. Tháng 2 có version đầu cho em test. |
| Mai | (VN, cười) Em chờ. Mà nay anh nhớ ngủ trước 24h nhé. Hana 4 tháng đang dậy nhiều cữ. |

---

## Tình huống 12 — Bàn làm việc · 23:30 23/12, đêm hoàn thiện 30 trang + email Inoue xin review

| Vai | Lời thoại |
|---|---|
| Đại | (email Inoue)<br>件名：Hizashi <ruby>技術<rt>ぎじゅつ</rt></ruby>ドキュメント v1.0 レビューのお<ruby>願<rt>ねが</rt></ruby>い<br><br><ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby><br><br>お<ruby>疲<rt>つか</rt></ruby>れさまです。<br><br>Hizashi <ruby>技術<rt>ぎじゅつ</rt></ruby>ドキュメント v1.0 が<ruby>完成<rt>かんせい</rt></ruby>しました。<ruby>全<rt>ぜん</rt></ruby>30ページ、10<ruby>章構成<rt>しょうこうせい</rt></ruby>です。<ruby>山田<rt>やまだ</rt></ruby>さんのレビューも<ruby>反映<rt>はんえい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br><br><ruby>添付<rt>てんぷ</rt></ruby>のPDFをご<ruby>確認<rt>かくにん</rt></ruby>いただき、<ruby>来年<rt>らいねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>の<ruby>実装<rt>じっそう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>にフィードバックをいただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br><br>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br><br>グエン・ヴァン・ダイ |
| Đại | (LINE Mai, VN) Em ơi. Anh vừa gửi tech doc 30 trang cho thầy. Đi ngủ đây. |
| Mai | (LINE VN) Chúc mừng anh! Mai em làm phở cho. Anh ngủ ngon. |
| Đại | (LINE VN) Yêu em. |

---

## Đọng lại chương 10

Một tháng viết tech doc — Đại học được nguyên bộ ngôn ngữ "engineer Nhật trình bày kỹ thuật". Khi trình bày diagram: **「説明させてください。〜層構造です」** chia mạch lạc. Khi hỏi convention chưa rõ: **「〜って、普通どう設定しますか」** + **「〜というのは、〜ということでしょうか」**. Khi báo cáo seminar: **「今週の成果は三つです」** → **「来週は〜に取り組みます」** → **「課題として〜があります。アドバイスをいただけたら嬉しいです」**. Khi nhờ review: **「レビューしていただけますか」**, khi nhận phản hồi: **「納得です。修正します」**. Email keigo lên 教授 theo cấu trúc cố định: 件名 → お疲れさまです → 本文 → ご都合のよろしい日を教えていただけますと幸いです. Cuộc gọi 1on1 với Inoue dạy 1 bài học kỹ thuật thật: prompt caching giảm 10 lần chi phí Claude API — vừa học JP vừa học CS.

> Từ vựng & mẫu câu chương này: 技術ドキュメント・アーキテクチャ図・〜層構造・データレイヤー・ストリーミング・タイムアウト・指数バックオフ・ジッター・リトライ方針・ER図・soft delete・GDPR対応・プロンプトキャッシング・トークン消費量・コスト試算・MRR・粗利率・freemium・Idempotency-Key・SSE・進捗報告・〜していただけませんでしょうか・ご都合のよろしい日・課題として・アドバイスをいただけたら・承知しました

## Bí quyết chương

- **エンジニアの<ruby>説明<rt>せつめい</rt></ruby>3段法**: <ruby>結論<rt>けつろん</rt></ruby> → 構造分解 → 具体数値. Đại dùng nguyên pattern này trình bày architecture (4 layer → flow → timeout 60s).
- **Hỏi lại trong tech meeting không yếu**: **「〜というのは？」** là dấu hiệu engineer cẩn thận. Yamada dạy jitter chính vì Đại hỏi lại exponential backoff.
- **Seminar weekly report 4 phần**: <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby> → <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby> → <ruby>課題<rt>かだい</rt></ruby> → <ruby>質問<rt>しつもん</rt></ruby>. Cấu trúc này dùng được cả đời.
- **Email xin 1on1**: bắt buộc 3 候補 (3 lựa chọn ngày), không hỏi 1 ngày duy nhất — đó là phép lịch sự tối thiểu với sensei/sếp Nhật.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 下書き | したがき | HẠ THƯ | Bản nháp |
| 章 | しょう | CHƯƠNG | Chương |
| 各章 | かくしょう | CÁC CHƯƠNG | Mỗi chương |
| 説明 | せつめい | THUYẾT MINH | Giải thích |
| 層構造 | そうこうぞう | TẦNG CẤU TẠO | Cấu trúc theo lớp |
| 将来 | しょうらい | TƯƠNG LAI | Tương lai |
| 型検証 | かたけんしょう | HÌNH KIỂM CHỨNG | Kiểm tra type |
| 保存 | ほぞん | BẢO TỒN | Lưu trữ |
| 要求 | ようきゅう | YÊU CẦU | Yêu cầu |
| 呼び分ける | よびわける | HÔ PHÂN | Gọi tách biệt |
| 返す | かえす | PHẢN | Trả về |
| クリア | — | — | Rõ |
| 指数 | しすう | CHỈ SỐ | Hàm mũ |
| 倍 | ばい | BỘI | Gấp đôi |
| ジッター | — | — | Jitter |
| 同時 | どうじ | ĐỒNG THỜI | Cùng lúc |
| 全 | ぜん | TOÀN | Toàn bộ |
| 列 | れつ | LIỆT | Cột (DB) |
| 必要 | ひつよう | TẤT YẾU | Cần thiết |
| 課題 | かだい | KHOÁ ĐỀ | Vướng mắc, đề tài |
| 不安 | ふあん | BẤT AN | Lo lắng |
| 見積もり | みつもり | KIẾN TÍCH | Ước tính |
| 件名 | けんめい | KIỆN DANH | Tiêu đề mail |
| 日程 | にってい | NHẬT TRÌNH | Lịch |
| 終日 | しゅうじつ | CHUNG NHẬT | Cả ngày |
| 入力 | にゅうりょく | NHẬP LỰC | Đầu vào |
| 出力 | しゅつりょく | XUẤT LỰC | Đầu ra |
| 公式 | こうしき | CÔNG THỨC | Chính thức |
| ヒット | — | — | Hit |
| 落とす | おとす | LẠC | Giảm xuống |
| 組み込む | くみこむ | TỔ NHẬP | Lồng vào |
| 判断材料 | はんだんざいりょう | PHÁN ĐOÁN TÀI LIỆU | Cơ sở phán đoán |
| 完成 | かんせい | HOÀN THÀNH | Hoàn thành |
| 表示 | ひょうじ | BIỂU THỊ | Hiển thị |
| 読者 | どくしゃ | ĐỘC GIẢ | Người đọc |
| 漢字 | かんじ | HÁN TỰ | Kanji |
| 目線 | めせん | MỤC TUYẾN | Góc nhìn |
| 入れる | いれる | NHẬP | Thêm vào |
| 採点 | さいてん | THÁI ĐIỂM | Chấm điểm |
| 抜ける | ぬける | BẠT | Sót, thiếu |
| シナリオ | — | — | Kịch bản |
| 適用前 | てきようまえ | THÍCH DỤNG TIỀN | Trước khi áp dụng |
| 適用後 | てきようご | THÍCH DỤNG HẬU | Sau khi áp dụng |
| 移行 | いこう | DI HÀNH | Chuyển sang |
| 粗利率 | あらりりつ | THÔ LỢI SUẤT | Biên lợi gộp |
| 無料プラン | むりょうプラン | VÔ LIỆU — | Gói miễn phí |
| 典型 | てんけい | ĐIỂN HÌNH | Điển hình |
| 反映 | はんえい | PHẢN ÁNH | Phản ánh |
| 添付 | てんぷ | THIẾP PHÓ | Đính kèm |
| 開始 | かいし | KHAI THỦY | Bắt đầu |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000011, 800000023, NULL, 'markdown_book', 'T11. Beta v0.1 — release Hizashi cho 5 người dùng đầu', '# Sách đại học CS năm 3 · T11. Beta v0.1 — release Hizashi cho 5 người dùng đầu

> **Mục tiêu nhân vật:** Đại 23 tuổi, tháng 1-3/2029, lab Inoue + nhà Toyonaka. Học 5-6 mẫu hội thoại tiếng Nhật của developer launch beta: (1) thông báo release trong lab seminar, (2) hướng dẫn beta tester Nhật cách cài TestFlight, (3) nhận phản hồi negative và xin chi tiết, (4) báo cáo bug + ETA fix bằng keigo, (5) trao đổi với 教授 về dữ liệu định lượng, (6) gọi Mai/Linh-Anh tiếng Việt onboarding.

---

## Bối cảnh

Tháng 1-3/2029. Đông qua xuân Osaka. Hana 5-7 tháng, biết ngồi, cười. Mai ôn N2 đều đặn 4 tiếng/ngày. Đại 3 tháng sprint: tháng 1 backend + DB, tháng 2 Flutter mobile, tháng 3 release Hizashi v0.1 cho 5 beta tester (Mai, Linh-Anh, Tuấn em, Phong cohort trường tiếng, Hùng em họ ở Hà Nội). Yamada review code mỗi tuần. Aiko cập nhật Figma theo feedback. Inoue-sensei cần data định lượng. Chương này tập trung các mẫu câu: thông báo launch, hướng dẫn cài app, xin phản hồi cụ thể, báo cáo bug, trao đổi với 教授, gọi điện onboard tiếng Việt.

---

## Tình huống 1 — Lab desk · 9:00 5/1, sprint kickoff với Yamada

*Đại đến lab trước Tết Tây 1 tuần, đặt MacBook lên bàn cạnh Yamada.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>明<rt>あ</rt></ruby>けましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Yamada, chúc mừng năm mới. Năm nay cũng nhờ anh giúp đỡ.)* |
| Yamada | おめでとう。Hizashi スプリント<ruby>開始<rt>かいし</rt></ruby>か？<br>*(Chúc mừng. Bắt đầu sprint Hizashi rồi à?)* |
| Đại | はい、<ruby>今日<rt>きょう</rt></ruby>からです。1<ruby>月<rt>がつ</rt></ruby>は backend と DB、2<ruby>月<rt>がつ</rt></ruby>は Flutter モバイル、3<ruby>月<rt>がつ</rt></ruby>に v0.1 ベータ<ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, từ hôm nay. Tháng 1 backend+DB, tháng 2 Flutter mobile, tháng 3 release v0.1 beta.)* |
| Yamada | タイトだな。プルリクエストは<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>送<rt>おく</rt></ruby>って。<ruby>週末<rt>しゅうまつ</rt></ruby>レビューする。<br>*(Sát ghê. Pull request gửi anh thứ Sáu hàng tuần. Cuối tuần anh review.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。ありがとうございます。<br>*(Thật sự cứu em. Cảm ơn anh.)* |

---

## Tình huống 2 — Lab terminal · 14:00 8/1, scaffold project và pair với Yamada lần đầu

*Đại share screen, Yamada ngồi cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | (terminal) `poetry init` で<ruby>始<rt>はじ</rt></ruby>めます。`fastapi`、`uvicorn`、`sqlalchemy`、`alembic`、`pydantic-settings`、`anthropic` を<ruby>入<rt>い</rt></ruby>れます。<br>*(Khởi tạo bằng poetry init. Cài fastapi, uvicorn, sqlalchemy, alembic, pydantic-settings, anthropic.)* |
| Yamada | `anthropic` の<ruby>最新<rt>さいしん</rt></ruby>バージョンを<ruby>確認<rt>かくにん</rt></ruby>して。プロンプトキャッシング<ruby>対応<rt>たいおう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Check version anthropic mới nhất. Cần hỗ trợ prompt caching.)* |
| Đại | はい――(terminal) 0.39.0 です。プロンプトキャッシング<ruby>対応<rt>たいおう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng — 0.39.0. Có hỗ trợ caching rồi.)* |
| Yamada | OK。<ruby>次<rt>つぎ</rt></ruby>、alembic で15テーブルのマイグレーションを<ruby>作<rt>つく</rt></ruby>ろう。<br>*(OK. Tiếp, làm migration 15 bảng bằng alembic.)* |
| Đại | (terminal) `alembic init alembic` → `alembic revision --autogenerate -m "initial 15 tables"` → `alembic upgrade head`。<br>*(Init + autogenerate + upgrade head.)* |
| Yamada | pgvector エクステンションは？<br>*(Pgvector extension?)* |
| Đại | <ruby>別<rt>べつ</rt></ruby>マイグレーションで `CREATE EXTENSION IF NOT EXISTS vector;` を<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Em làm migration riêng `CREATE EXTENSION IF NOT EXISTS vector;`.)* |

---

## Tình huống 3 — Lab seminar room · 15:00 26/1, weekly report — backend sprint xong

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>研究室<rt>けんきゅうしつ</rt></ruby>のみなさん、Hizashi の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をします。<br>*(Em báo cáo tiến độ Hizashi.)* |
| Đại | 1<ruby>月<rt>がつ</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>です。バックエンド FastAPI が35エンドポイント<ruby>完成<rt>かんせい</rt></ruby>、DB マイグレーション15テーブル<ruby>適用<rt>てきよう</rt></ruby><ruby>済<rt>ず</rt></ruby>、Claude API チューターのストリーミングが<ruby>動作確認<rt>どうさかくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>です。<br>*(Tháng 1 xong: FastAPI 35 endpoint, migration 15 bảng đã apply, Claude tutor streaming chạy thông.)* |
| Đại | <ruby>来月<rt>らいげつ</rt></ruby>は Flutter モバイル、8<ruby>画面<rt>がめん</rt></ruby><ruby>実装<rt>じっそう</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Tháng sau làm Flutter mobile 8 màn hình.)* |
| Đại | <ruby>課題<rt>かだい</rt></ruby>として、ストリーミングの<ruby>応答<rt>おうとう</rt></ruby><ruby>速度<rt>そくど</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>のトークンまで2<ruby>秒<rt>びょう</rt></ruby>かかります。プロンプトキャッシングで<ruby>改善<rt>かいぜん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vướng: TTFT 2 giây. Sẽ cải thiện bằng prompt caching.)* |
| Inoue | <ruby>自分自身<rt>じぶんじしん</rt></ruby> いいペースだ。TTFT は<ruby>計測<rt>けいそく</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby><ruby>続<rt>つづ</rt></ruby>けて。<ruby>卒論<rt>そつろん</rt></ruby>の<ruby>定量<rt>ていりょう</rt></ruby>データになる。<br>*(Tốc độ ổn. TTFT đo hàng ngày. Sẽ thành data định lượng cho luận văn.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>毎日<rt>まいにち</rt></ruby>ログに<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Em hiểu. Em log hàng ngày.)* |

---

## Tình huống 4 — Lab desk · 19:00 10/2, debug bug serializer với Lin Wei

*Đại stuck với bug Pydantic serialization 2 tiếng. Lin Wei ghé qua.*

| Vai | Lời thoại |
|---|---|
| Lin Wei | グエン、まだ<ruby>残<rt>のこ</rt></ruby>ってるな。<ruby>何<rt>なに</rt></ruby>か<ruby>詰<rt>つ</rt></ruby>まってる？<br>*(Đại, vẫn ngồi à. Có bị stuck gì không?)* |
| Đại | リンさん、ちょうどよかった。Pydantic で `datetime` のシリアライズが UTC タイムゾーンを<ruby>失<rt>うしな</rt></ruby>うんです。<br>*(Anh Lin, đúng lúc quá. Pydantic serialize datetime mất timezone UTC.)* |
| Lin Wei | コード<ruby>見<rt>み</rt></ruby>せて。<br>*(Cho xem code.)* |
| Đại | (chỉ màn hình) ここで `model_dump()` を<ruby>呼<rt>よ</rt></ruby>ぶと、UTC が tz-naive になります。<br>*(Đây, gọi `model_dump()` thì UTC trở thành tz-naive.)* |
| Lin Wei | あー、`model_config = ConfigDict(json_encoders={datetime: lambda v: v.isoformat()})` を<ruby>追加<rt>ついか</rt></ruby>して。または `Field(default_factory=lambda: datetime.now(timezone.utc))`。<br>*(À, thêm model_config với json_encoders. Hoặc dùng Field default_factory với timezone.utc.)* |
| Đại | あ、なるほど！(gõ code) ... <ruby>動<rt>うご</rt></ruby>きました！<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(À hiểu! ... Chạy được rồi! Cứu em quá.)* |
| Lin Wei | (English) No worries. ペアプロは<ruby>15分<rt>じゅうごふん</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>悩<rt>なや</rt></ruby>むな。<br>*(Không sao. Pair 15 phút là giải xong. Đừng ngồi một mình.)* |
| Đại | はい、<ruby>次<rt>つぎ</rt></ruby>からは30<ruby>分<rt>ぷん</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>しなかったら<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, lần sau quá 30 phút không xong là em hỏi.)* |

---

## Tình huống 5 — Lab pantry · 12:00 20/2, Yamada code review góp ý

*Yamada bring lại laptop với 8 comment trên pull request.*

| Vai | Lời thoại |
|---|---|
| Yamada | グエン、プルリクエストレビュー<ruby>完了<rt>かんりょう</rt></ruby>。8コメント<ruby>付<rt>つ</rt></ruby>けた。<br>*(Đại, review xong. Comment 8 chỗ.)* |
| Đại | ありがとうございます。<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Cảm ơn anh. Em check ngay.)* |
| Yamada | <ruby>主<rt>おも</rt></ruby>な<ruby>三<rt>みっ</rt></ruby>つ――<ruby>一<rt>ひと</rt></ruby>つ、`semantic_search` の `top_k=3` はマジックナンバー。<ruby>設定<rt>せってい</rt></ruby>ファイルに<ruby>移<rt>うつ</rt></ruby>して。<br>*(3 điểm chính — một, top_k=3 là magic number. Chuyển sang config file.)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ、Claude API のエラーハンドリングが<ruby>足<rt>た</rt></ruby>りない。429 と 529 だけリトライ、それ<ruby>以外<rt>いがい</rt></ruby>は<ruby>即<rt>そく</rt></ruby><ruby>失敗<rt>しっぱい</rt></ruby>。<br>*(Hai, error handling Claude API thiếu. 429 với 529 mới retry, còn lại fail ngay.)* |
| Yamada | <ruby>三<rt>みっ</rt></ruby>つ、テストカバレッジが<ruby>低<rt>ひく</rt></ruby>すぎる。<ruby>最低<rt>さいてい</rt></ruby>60%<ruby>欲<rt>ほ</rt></ruby>しい。<br>*(Ba, test coverage thấp quá. Ít nhất 60%.)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つとも<ruby>納得<rt>なっとく</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>対応<rt>たいおう</rt></ruby>して<ruby>再<rt>さい</rt></ruby>プルリクエストします。<br>*(3 điểm em thấy đúng. Thứ Sáu tuần sau em xử xong và gửi PR lại.)* |
| Yamada | OK。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(OK. Cố lên.)* |

---

## Tình huống 6 — Lab desk · 15:00 22/2, TestFlight submit + viết LINE hướng dẫn 5 beta tester

*App build xong, Đại upload TestFlight và Google Play Internal.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE 5 tester, mixed JP/VN) <br>みなさん、こんにちは。Hizashi v0.1 ベータ<ruby>版<rt>ばん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>ができました。<br>*(Xin chào mọi người. Hizashi v0.1 beta đã sẵn sàng.)* |
| Đại | (LINE VN) iPhone: TestFlight cài từ App Store, mở link mời em gửi → "Accept" → "Install".<br>Android: Google Play "Internal testing" link → "JOIN" → cài Hizashi từ store. |
| Phong (cohort N3) | (LINE JP) インストールできました。アカウント<ruby>登録<rt>とうろく</rt></ruby>の<ruby>画面<rt>がめん</rt></ruby>でストップしました。<ruby>登録<rt>とうろく</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cài được rồi. Đứng ở màn đăng ký. Anh chỉ giúp em cách đăng ký được không?)* |
| Đại | (LINE JP) フォン、ありがとう。「Google でログイン」ボタンを<ruby>押<rt>お</rt></ruby>してください。Google アカウントで<ruby>自動<rt>じどう</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>されます。<br>*(Phong cảm ơn nhé. Bấm nút "Đăng nhập Google". Sẽ tự đăng ký bằng Google account.)* |
| Phong | (LINE JP) できました！はじめての<ruby>画面<rt>がめん</rt></ruby>が<ruby>表示<rt>ひょうじ</rt></ruby>されました。ありがとうございます！<br>*(Được rồi! Màn hình đầu hiện ra. Cảm ơn anh!)* |
| Đại | (LINE JP) <ruby>使<rt>つか</rt></ruby>って<ruby>気<rt>き</rt></ruby>になった<ruby>点<rt>てん</rt></ruby>があれば、<ruby>何<rt>なん</rt></ruby>でも<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>教<rt>おし</rt></ruby>えてくださいね。<br>*(Có điểm gì băn khoăn khi dùng, mọi người cứ chia sẻ thoải mái nhé.)* |

---

## Tình huống 7 — Phòng khách Toyonaka · 20:00 25/2, onboard Mai bằng tiếng Việt

*Đại bế Hana, Mai cầm điện thoại tự dùng app lần đầu.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em mở app lên xem. Bấm "Đăng nhập Google" trước. |
| Mai | (VN) Xong rồi. Ồ, có 3 khoá N5, N4, N2. Em chọn N2 nhé. |
| Đại | (VN) Đúng rồi. Mở module "文法 N2 — Tuần 1". Trong đó có bài về `〜ものを` đấy. |
| Mai | (VN, đọc 1 phút) Trời, giải thích bằng tiếng Việt đầy đủ! Có cả ví dụ tình huống Việt Nam — em làm bài tập ngay được. |
| Đại | (VN) Em hỏi AI Tutor thử xem. Bấm nút chat dưới góc phải. |
| Mai | (VN, gõ: "Em chưa hiểu khác nhau giữa ものを và ものの") |
| Đại | (VN) Đợi nó stream answer. |
| Mai | (VN, đọc trả lời) Wow! Tutor giải thích bằng tiếng Việt, kèm 3 ví dụ tiếng Nhật có dịch. Anh ơi, trả lời còn rõ hơn anh đêm qua. |
| Đại | (VN, cười) Vì anh đã nhồi RAG bằng đúng cuốn sách N2 em đang đọc. Có gì sai, em báo anh nhé. |
| Mai | (VN) Yên tâm. Em sẽ ghi nhật ký từng phản hồi. |

---

## Tình huống 8 — Bàn làm việc · 22:30 26/2, Linh-Anh báo phản hồi Toyota Boshoku

*LINE Linh-Anh tới ngay sau khi cài.*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (LINE VN) Anh ơi! Em vừa thử module "Tiếng Nhật thương mại". Hay lắm, nhưng em đề nghị thêm 2 tình huống thực tế của em ở Toyota Boshoku. |
| Đại | (LINE VN) Em nói cụ thể đi. |
| Linh-Anh | (LINE VN) 1. Báo cáo tiến độ với 課長 cuối ngày — bằng keigo đầy đủ. 2. Đàm phán với khách hàng Nhật khi delay lịch giao hàng. |
| Đại | (LINE VN) Hai cái này anh cũng đang vướng. Anh ghi nhận vào v0.2 luôn. Em viết giúp anh 1-2 đoạn hội thoại mẫu thực tế của em được không? Anh sẽ tham khảo. |
| Linh-Anh | (LINE VN) Được! Cuối tuần này em gửi anh. |
| Đại | (LINE VN) Cảm ơn em. Em là beta tester quý nhất của anh đấy. |
| Linh-Anh | (LINE VN) Hehe, anh đừng nịnh. Cho em dùng free vĩnh viễn là được. |
| Đại | (LINE VN) Deal. |

---

## Tình huống 9 — Lab seminar · 15:00 1/3, báo cáo launch + xin hướng dẫn về data analysis

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>研究室<rt>けんきゅうしつ</rt></ruby>のみなさん、Hizashi v0.1 ベータ<ruby>版<rt>ばん</rt></ruby>を 2/25 に<ruby>公開<rt>こうかい</rt></ruby>しました。<ruby>現在<rt>げんざい</rt></ruby>5<ruby>名<rt>めい</rt></ruby>のテスターが<ruby>利用<rt>りよう</rt></ruby>しています。<br>*(Em đã release Hizashi v0.1 ngày 25/2. Hiện 5 tester đang dùng.)* |
| Đại | 1<ruby>週間<rt>しゅうかん</rt></ruby>のフィードバックは23<ruby>件<rt>けん</rt></ruby>、18<ruby>件<rt>けん</rt></ruby>は<ruby>修正<rt>しゅうせい</rt></ruby><ruby>済<rt>ず</rt></ruby>。<ruby>残<rt>のこ</rt></ruby>り5<ruby>件<rt>けん</rt></ruby>は<ruby>機能追加<rt>きのうついか</rt></ruby><ruby>要望<rt>ようぼう</rt></ruby>で、v0.2 で<ruby>対応<rt>たいおう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tuần đầu nhận 23 feedback, sửa 18. Còn 5 là yêu cầu thêm tính năng, dự kiến v0.2.)* |
| Đại | <ruby>定量<rt>ていりょう</rt></ruby>データとして、<ruby>各<rt>かく</rt></ruby>テスターの<ruby>毎日<rt>まいにち</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>解答<rt>かいとう</rt></ruby><ruby>数<rt>すう</rt></ruby>、<ruby>正答率<rt>せいとうりつ</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Data định lượng: thời gian học hàng ngày, số câu trả lời, tỉ lệ đúng — em đang ghi.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>卒論<rt>そつろん</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>分析<rt>ぶんせき</rt></ruby><ruby>手法<rt>しゅほう</rt></ruby>について、ご<ruby>相談<rt>そうだん</rt></ruby>させてください。<ruby>正答率<rt>せいとうりつ</rt></ruby>の<ruby>時系列<rt>じけいれつ</rt></ruby><ruby>変化<rt>へんか</rt></ruby>を<ruby>有意<rt>ゆうい</rt></ruby>に<ruby>示<rt>しめ</rt></ruby>すには、<ruby>何<rt>なに</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うべきでしょうか？<br>*(Thầy ơi, em xin tư vấn phương pháp phân tích. Để chứng minh thay đổi tỉ lệ đúng theo thời gian là có ý nghĩa, em nên dùng gì ạ?)* |
| Inoue | サンプル<ruby>数<rt>すう</rt></ruby>5<ruby>名<rt>めい</rt></ruby>なら、<ruby>個別<rt>こべつ</rt></ruby>の<ruby>学習<rt>がくしゅう</rt></ruby>曲<ruby>線<rt>せん</rt></ruby> (learning curve) を<ruby>示<rt>しめ</rt></ruby>すのが<ruby>現実的<rt>げんじつてき</rt></ruby>。<ruby>統計的<rt>とうけいてき</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>は20<ruby>名<rt>めい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>えてから。<br>*(Sample 5 thì show learning curve cá nhân là thực tế. Kiểm định thống kê đợi tăng lên 20+ user.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>個別<rt>こべつ</rt></ruby>の<ruby>学習<rt>がくしゅう</rt></ruby><ruby>曲線<rt>きょくせん</rt></ruby>5<ruby>本<rt>ぽん</rt></ruby>を<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Hiểu rồi. 5 learning curve cá nhân em update hàng tuần.)* |

---

## Tình huống 10 — LINE Tuấn em · 21:00 5/3, phản hồi "AI Tutor giải thích 3 cách"

| Vai | Lời thoại |
|---|---|
| Tuấn em | (LINE VN) Anh ơi! Em vừa hỏi tutor một điểm ngữ pháp `〜について` em không hiểu. Tutor giải thích lần 1 em vẫn lơ mơ. Em gõ "em chưa hiểu, anh giải thích lại được không". Nó giải thích lần 2 đơn giản hơn. Em vẫn không nắm. Em gõ "ví dụ thật cụ thể đi". Lần 3 nó cho 5 ví dụ liên quan công việc IT. Em hiểu luôn! |
| Đại | (LINE VN) Trời, đúng cái anh muốn nhất! Đó là giá trị cốt lõi: tutor TỰ ĐIỀU CHỈNH cách giải thích cho từng người. Em là người đầu tiên báo lại điều đó. |
| Tuấn em | (LINE VN) Em thấy như có 1 thầy riêng vậy. Lần đầu thấy app dạy ngôn ngữ không "đọc thuộc". |
| Đại | (LINE VN) Cảm ơn em. Em ghi giúp anh nguyên đoạn chat hôm nay, anh đưa vào case study trong luận văn được không? |
| Tuấn em | (LINE VN) Anh muốn em ghi giờ luôn không? |
| Đại | (LINE VN) Mai gửi cũng được. Ngủ ngon nhé. |
| Tuấn em | (LINE VN) Anh ngủ ngon. |

---

## Tình huống 11 — Phòng khách Toyonaka · 23:00 10/3, Phong báo bug payment screen

*Phong là sinh viên trường tiếng Osaka, N3, người Nhật-Việt giao tiếp tốt nhưng đọc kanji chậm.*

| Vai | Lời thoại |
|---|---|
| Phong | (LINE mix JP) ダイさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。バグ<ruby>報告<rt>ほうこく</rt></ruby>です。Pro プランの<ruby>支払<rt>しはら</rt></ruby>い<ruby>画面<rt>がめん</rt></ruby>で、Apple Pay を<ruby>選<rt>えら</rt></ruby>ぶとアプリが<ruby>落<rt>お</rt></ruby>ちます。<br>*(Anh Đại, em báo bug. Màn payment Pro plan, chọn Apple Pay là app crash.)* |
| Đại | フォン、<ruby>報告<rt>ほうこく</rt></ruby>ありがとうございます。<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてください：<br>① iPhone のモデルとiOSバージョン<br>② <ruby>落<rt>お</rt></ruby>ちる<ruby>直前<rt>ちょくぜん</rt></ruby>の<ruby>操作<rt>そうさ</rt></ruby><br>③ クラッシュログがあれば<ruby>添付<rt>てんぷ</rt></ruby>してください。<br>*(Phong, cảm ơn báo bug. Cho anh chi tiết: model iPhone + iOS version, thao tác ngay trước crash, log crash nếu có.)* |
| Phong | iPhone 14 Pro、iOS 17.3.1。「Pro <ruby>プラン<rt>プラン</rt></ruby>に<ruby>登録<rt>とうろく</rt></ruby>」ボタン→「Apple Pay」ボタン→<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になって<ruby>落<rt>お</rt></ruby>ちる。ログ→ (gửi crashlytics screenshot)<br>*(iPhone 14 Pro, iOS 17.3.1. Bấm "Đăng ký Pro" → bấm Apple Pay → trắng màn rồi crash. Log đây.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>特定<rt>とくてい</rt></ruby>します。ETA は 2-3<ruby>日<rt>にち</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby><ruby>版<rt>ばん</rt></ruby>を TestFlight に<ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<ruby>大変<rt>たいへん</rt></ruby>ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました。<br>*(Em hiểu rồi. Em sẽ tìm nguyên nhân. ETA 2-3 ngày sẽ ra bản sửa lên TestFlight. Xin lỗi đã làm phiền anh.)* |
| Phong | <ruby>気<rt>き</rt></ruby>にしないでください。ベータですからバグは<ruby>当然<rt>とうぜん</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Đừng ngại anh. Beta thì bug là chuyện thường. Cố lên anh.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>修正<rt>しゅうせい</rt></ruby>後<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Cảm ơn anh thật sự. Sửa xong em báo.)* |

---

## Tình huống 12 — Phòng làm việc · 23:30 25/3, nhật ký + LINE cảm ơn 5 tester

*Sprint 3 tháng đóng lại. Đại viết một message gửi nhóm 5 tester.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE group 5 testers, mix VN/JP)<br>(VN) Mọi người ơi. Hôm nay là tròn 1 tháng Hizashi v0.1 beta. Tổng cộng anh nhận 61 phản hồi, sửa 49. Có 5 người dùng — Mai, Linh-Anh, Tuấn, Phong, Hùng — mỗi người mỗi cách dùng, mỗi loại bug, mỗi mong muốn. |
| Đại | (VN) Tháng tới Hizashi mở rộng sang khoá N4 + module business JP từ phản hồi Linh-Anh + module IT vocab từ phản hồi Tuấn em. Target 50 active user tới cuối tháng 5. |
| Đại | (JP, gửi Phong) フォン、Apple Pay バグの<ruby>修正<rt>しゅうせい</rt></ruby>版<ruby>公開<rt>こうかい</rt></ruby><ruby>済<rt>ず</rt></ruby>です。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Phong, bản sửa Apple Pay đã release. Cảm ơn anh thật sự.)* |
| Mai | (VN) Em cảm ơn anh. Mỗi lần em mở Hizashi là thấy anh ngồi bên. |
| Linh-Anh | (VN) App của anh đã thay đổi cách em làm việc rồi. |
| Tuấn em | (VN) Em vẫn nói với Hùng: anh Đại làm app như có thật ấy. |
| Hùng | (VN, Hà Nội) Anh ơi em mới N5 nhưng học được 2 tuần rồi. Cảm ơn anh. |
| Phong | (JP) ダイさん、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Đại, từ nay vẫn nhờ anh.)* |
| Đại | (VN) Cảm ơn cả nhà. Hizashi là của mọi người. |

---

## Đọng lại chương 11

3 tháng từ scaffold đến release. Đại học được nguyên bộ ngôn ngữ developer Nhật làm việc thật: pair programming hỏi senpai **「ちょうどよかった。〜が〜なんです」** + **「コード見せて」** + **「動きました！本当に助かりました」**. Nhận code review feedback: **「三つとも納得です。〜までに対応して再プルリクエストします」**. Báo bug với ETA: **「ETA は〜以内に修正版を〜に公開予定です。大変ご迷惑をおかけしました」**. Hỏi senpai chi tiết bug **「① モデルとバージョン ② 直前の操作 ③ ログ」** — đây là pattern triage chuẩn. Báo cáo seminar có **進捗 + 課題 + 質問**. Xin tư vấn 教授 về phương pháp: **「〜について、ご相談させてください。〜には、何を使うべきでしょうか」**. Bên ngôn ngữ Việt, onboarding Mai cho thấy giá trị thật của tutor adaptive: Tuấn em hỏi 3 lần khác nhau, tutor tự điều chỉnh — đó là khoảnh khắc Hizashi "sống".

> Từ vựng & mẫu câu chương này: ベータ版・TestFlight・Internal Testing・スプリント・プルリクエスト・コードレビュー・マジックナンバー・エラーハンドリング・テストカバレッジ・ストリーミング・TTFT・プロンプトキャッシング・学習曲線・サンプル数・有意・統計的検定・ETA・クラッシュログ・ご迷惑をおかけしました・対応します・お疲れさまです・気にしないでください・本当に助かりました・〜について、ご相談させてください

## Bí quyết chương

- **Pair programming pattern**: senpai ghé qua dùng **「何か詰まってる？」** — junior trả lời **「ちょうどよかった」** + mô tả bug 1 câu + mở code. Đây là nghi thức cứu thời gian.
- **Bug triage 3 cột**: ① <ruby>環境<rt>かんきょう</rt></ruby> (model + OS), ② <ruby>再現手順<rt>さいげんてじゅん</rt></ruby> (steps), ③ ログ — engineer Nhật hỏi y chang thứ tự này.
- **Code review góp ý nhận như nào**: KHÔNG bao biện, dùng **「納得です」** + **「〜までに対応します」** + commit time-bound. Bao biện = mất uy tín senpai.
- **ETA + xin lỗi**: bug khách báo phải kèm **「ETA は〜です」** + **「大変ご迷惑をおかけしました」**. Thiếu 1 trong 2 là thiếu chuyên nghiệp.
- **5 tester profile cover full audience**: vợ (N2 ôn thi), em họ (thương mại), em cohort (IT), người trường tiếng (N3 thuần học), em họ ở VN (N5). Đây là cách chọn beta user — không phải random.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 明ける | あける | MINH | Sang (năm mới) |
| 今年 | ことし | KIM NIÊN | Năm nay |
| 公開 | こうかい | CÔNG KHAI | Công bố, release |
| プルリクエスト | — | — | Pull request |
| 最新 | さいしん | TỐI TÂN | Mới nhất |
| 別 | べつ | BIỆT | Riêng |
| 動作確認 | どうさかくにん | ĐỘNG TÁC XÁC NHẬN | Kiểm tra hoạt động |
| 応答速度 | おうとうそくど | ỨNG ĐÁP TỐC ĐỘ | Tốc độ phản hồi |
| 改善 | かいぜん | CẢI THIỆN | Cải thiện |
| 詰まる | つまる | NỆ | Bí, kẹt |
| 失う | うしなう | THẤT | Mất |
| ペアプロ | — | — | Pair programming |
| 解決 | かいけつ | GIẢI QUYẾT | Giải quyết |
| 悩む | なやむ | NÃO | Băn khoăn |
| 主な | おもな | CHỦ | Chính |
| マジックナンバー | — | — | Magic number |
| 即 | そく | TỨC | Ngay |
| 失敗 | しっぱい | THẤT BẠI | Thất bại |
| カバレッジ | — | — | Coverage |
| 最低 | さいてい | TỐI ĐÊ | Tối thiểu |
| 再 | さい | TÁI | Lại |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 出版 | しゅっぱん | XUẤT BẢN | Xuất bản |
| 画面 | がめん | HOẠ DIỆN | Màn hình |
| 自動 | じどう | TỰ ĐỘNG | Tự động |
| 気になる | きになる | KHÍ | Băn khoăn |
| 課長 | かちょう | KHOÁ TRƯỞNG | Trưởng phòng |
| 商談 | しょうだん | THƯƠNG ĐÀM | Đàm phán thương mại |
| 遅延 | ちえん | TRÌ DUYÊN | Trì hoãn |
| 納期 | のうき | NẠP KỲ | Hạn giao |
| 利用 | りよう | LỢI DỤNG | Sử dụng |
| 機能追加 | きのうついか | CƠ NĂNG TRUY GIA | Thêm tính năng |
| 要望 | ようぼう | YÊU CẦU | Yêu cầu |
| 学習時間 | がくしゅうじかん | HỌC TẬP THỜI GIAN | Thời gian học |
| 解答数 | かいとうすう | GIẢI ĐÁP SỐ | Số câu trả lời |
| 時系列 | じけいれつ | THỜI HỆ LIỆT | Theo thời gian |
| 示す | しめす | THỊ | Chỉ ra |
| 検定 | けんてい | KIỂM ĐỊNH | Kiểm định |
| 学習曲線 | がくしゅうきょくせん | HỌC TẬP KHÚC TUYẾN | Learning curve |
| 更新 | こうしん | CẬP TÂN | Cập nhật |
| 状況 | じょうきょう | TÌNH HUỐNG | Tình hình |
| 操作 | そうさ | THAO TÁC | Thao tác |
| 落ちる | おちる | LẠC | Crash, rớt |
| 特定 | とくてい | ĐẶC ĐỊNH | Xác định |
| 修正版 | しゅうせいばん | TU CHÍNH BẢN | Bản sửa |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | Lẽ đương nhiên |
| 反省 | はんせい | PHẢN TỈNH | Tự kiểm điểm |
| プロファイル | — | — | Profile |
| 拡大 | かくだい | KHUẾCH ĐẠI | Mở rộng |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (823000012, 800000023, NULL, 'markdown_book', 'T12. Khởi động 就活 — apply 4 công ty IT lớn', '# Sách đại học CS năm 3 · T12. Khởi động 就活 — apply 4 công ty IT lớn

> **Mục tiêu nhân vật:** Đại 23 tuổi, tháng 3-4/2029, năm 3 đại học khép. Học các mẫu hội thoại tiếng Nhật KEIGO chuyên dụng 就活 (job hunting) — kỹ năng quan trọng nhất chương này: (1) gọi điện キャリアセンター xin tư vấn, (2) viết 履歴書 và đọc lại trước người thật, (3) trả lời câu hỏi 志望動機 trong 模擬面接, (4) email gửi 人事 xin tham gia 説明会, (5) ứng đối câu hỏi 自己PR + 弱み, (6) cảm ơn sau phỏng vấn + ứng phó khi nhận オファー và xin thời gian suy nghĩ.

---

## Bối cảnh

Tháng 3-4/2029. Mùa xuân Osaka, hoa anh đào nở. Hana 7 tháng, biết đứng. Mai vừa đỗ N2 128/180. Đại đã có Cybozu 内定 ¥6,7M giữ chỗ, năm nay apply thêm 4 chỗ top-tier: Mercari Tokyo, CyberAgent Tokyo, LY Corporation Fukuoka, LY Corporation Osaka. Hizashi v0.1 beta thành công 5 user → là điểm mạnh hồ sơ. Chương này dạy keigo shukatsu chuẩn: 履歴書, 面接, 志望動機, 自己PR, お祈りメール, オファー hold xin suy nghĩ. Đây là chương ngôn ngữ quan trọng NHẤT cả sách 23.

---

## Tình huống 1 — Phòng khách Toyonaka · 7:00 25/3, tổng kết với Mai bằng tiếng Việt

*Đại uống cà phê, Mai đút Hana ăn cháo, lịch 就活 đặt trước mặt.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Năm 3 anh khép rồi. GPA 3.88, AtCoder Cyan, Cybozu offer giữ chỗ, Hizashi 5 user. Em phục anh. |
| Đại | (VN) Cảm ơn em. Tháng 4 anh apply thêm 4 chỗ: Mercari, CyberAgent, LY Fukuoka, LY Osaka. Cybozu sẽ là Plan B nếu không có chỗ nào tốt hơn. |
| Mai | (VN) Em ủng hộ. Mà 履歴書 anh viết tiếng Nhật rồi nhờ ai check? |
| Đại | (VN) Anh đặt lịch キャリアセンター trường rồi. Chiều nay 14h. |
| Mai | (VN) Anh nhớ mặc áo sơ mi đứng đắn nhé. Dù chỉ đến gặp tư vấn viên. |
| Đại | (VN, cười) Vâng vợ ơi. |

---

## Tình huống 2 — Điện thoại キャリアセンター · 10:00 25/3, đặt lịch 1on1 tư vấn shukatsu

*Đại gọi điện văn phòng career center của ĐH Osaka.*

| Vai | Lời thoại |
|---|---|
| 受付 | はい、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>キャリアセンターです。<br>*(Vâng, Career center ĐH Osaka.)* |
| Đại | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>3<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>就活相談<rt>しゅうかつそうだん</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいのですが。<br>*(Xin chào. Tôi là Nguyễn Văn Đại, năm 3 khoa CS. Tôi muốn đặt lịch tư vấn shukatsu.)* |
| 受付 | ご<ruby>希望<rt>きぼう</rt></ruby>の<ruby>日時<rt>にちじ</rt></ruby>はございますか？<br>*(Anh có ngày giờ mong muốn không?)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>14<ruby>時<rt>じ</rt></ruby>からは<ruby>空<rt>あ</rt></ruby>いていますでしょうか？<br>*(Hôm nay 14h có trống không ạ?)* |
| 受付 | <ruby>確認<rt>かくにん</rt></ruby>いたします。... はい、14<ruby>時<rt>じ</rt></ruby>から30<ruby>分<rt>ぷん</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>でお<ruby>取<rt>と</rt></ruby>りできます。<br>*(Tôi check ạ. ... Có, 14h 30 phút, với cố vấn Tanaka.)* |
| Đại | ありがとうございます。<ruby>履歴書<rt>りれきしょ</rt></ruby>のドラフトと、<ruby>志望<rt>しぼう</rt></ruby><ruby>企業<rt>きぎょう</rt></ruby>リストを<ruby>持参<rt>じさん</rt></ruby>します。<br>*(Cảm ơn. Tôi mang theo bản nháp 履歴書 và danh sách công ty muốn ứng tuyển.)* |
| 受付 | <ruby>承知<rt>しょうち</rt></ruby>いたしました。お<ruby>待<rt>ま</rt></ruby>ちしております。<br>*(Vâng, tôi đã hiểu. Chúng tôi đợi anh.)* |
| Đại | よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Nhờ giúp đỡ. Xin chào.)* |

---

## Tình huống 3 — Career center · 14:00 25/3, Tanaka-san review 履歴書

*Đại đem theo bản 履歴書 in trên giấy A3 đặc Nhật. Mặc sơ mi xanh nhạt + cà vạt navy.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>いたします。グエン・ヴァン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin phép. Tôi là Nguyễn Văn Đại. Hôm nay xin được nhờ chị.)* |
| Tanaka | グエンさん、こんにちは。お<ruby>掛<rt>か</rt></ruby>けください。<ruby>履歴書<rt>りれきしょ</rt></ruby>、<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Đại chào em. Em ngồi đi. Để cô xem 履歴書.)* |
| Tanaka | (đọc 5 phút)... <ruby>学歴<rt>がくれき</rt></ruby>と<ruby>資格<rt>しかく</rt></ruby>は<ruby>素晴<rt>すば</rt></ruby>らしいです。<ruby>応用情報<rt>おうようじょうほう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、N2、AtCoder Cyan、サイボウズ<ruby>内定<rt>ないてい</rt></ruby>――<ruby>申<rt>もう</rt></ruby>し<ruby>分<rt>ぶん</rt></ruby>ない。<br>*(Học vấn + chứng chỉ rất tốt. AP, N2, AtCoder Cyan, Cybozu offer — không chê được.)* |
| Tanaka | ただ、「<ruby>志望動機<rt>しぼうどうき</rt></ruby>」<ruby>欄<rt>らん</rt></ruby>がまだ<ruby>弱<rt>よわ</rt></ruby>い。「<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>技術力<rt>ぎじゅつりょく</rt></ruby>に<ruby>魅力<rt>みりょく</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じました」だけでは、どの<ruby>会社<rt>かいしゃ</rt></ruby>にも<ruby>当<rt>あ</rt></ruby>てはまります。<br>*(Tuy nhiên, ô 志望動機 còn yếu. "Tôi thấy hấp dẫn bởi năng lực công nghệ của quý công ty" — câu này áp được mọi công ty.)* |
| Đại | あ、おっしゃる<ruby>通<rt>とお</rt></ruby>りです。どう<ruby>書<rt>か</rt></ruby>けばよろしいでしょうか？<br>*(À đúng như chị nói. Vậy nên viết thế nào ạ?)* |
| Tanaka | <ruby>三<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>で<ruby>構成<rt>こうせい</rt></ruby>します。<ruby>一<rt>いち</rt></ruby>、<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>事業<rt>じぎょう</rt></ruby>・<ruby>技術<rt>ぎじゅつ</rt></ruby>に<ruby>触<rt>ふ</rt></ruby>れる。<ruby>二<rt>に</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>とどう<ruby>結<rt>むす</rt></ruby>びつくかを<ruby>示<rt>しめ</rt></ruby>す。<ruby>三<rt>さん</rt></ruby>、<ruby>入社<rt>にゅうしゃ</rt></ruby>後<ruby>何<rt>なに</rt></ruby>を<ruby>成<rt>な</rt></ruby>し<ruby>遂<rt>と</rt></ruby>げたいかを<ruby>述<rt>の</rt></ruby>べる。<br>*(Cấu trúc 3 đoạn. 1, nói về business/technology cụ thể của công ty. 2, kết nối với kinh nghiệm bản thân. 3, sau khi vào sẽ muốn làm gì.)* |
| Đại | <ruby>例<rt>たと</rt></ruby>えば、メルカリの<ruby>場合<rt>ばあい</rt></ruby>は？<br>*(Ví dụ với Mercari thì sao ạ?)* |
| Tanaka | メルカリは「<ruby>個人<rt>こじん</rt></ruby><ruby>間<rt>かん</rt></ruby>取引のインフラ」「Go + Microservice<ruby>多用<rt>たよう</rt></ruby>」「<ruby>多国籍<rt>たこくせき</rt></ruby><ruby>エンジニアリングチーム<rt>エンジニアリングチーム</rt></ruby>」が<ruby>強<rt>つよ</rt></ruby>み。グエンさんは Hizashi で同じく<ruby>個人<rt>こじん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のためのインフラを<ruby>構築<rt>こうちく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>、<ruby>多国籍<rt>たこくせき</rt></ruby>コホート<ruby>経験<rt>けいけん</rt></ruby>あり――そこを<ruby>結<rt>むす</rt></ruby>びつけてください。<br>*(Mercari mạnh ở "infrastructure C2C", "Go + microservice", "đội kỹ sư đa quốc tịch". Em đang build Hizashi cho cá nhân học viên, có kinh nghiệm cohort đa quốc tịch — kết nối ở đó.)* |
| Đại | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<ruby>今夜<rt>こんや</rt></ruby><ruby>書<rt>か</rt></ruby>き<ruby>直<rt>なお</rt></ruby>します。<br>*(Em học được nhiều. Tối nay em viết lại.)* |

---

## Tình huống 4 — Hành lang Career center · 14:30, hỏi lại Tanaka về "弱み" — điểm yếu

*Đại đã đứng dậy chào nhưng quay lại hỏi tiếp.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか？<br>*(Chị Tanaka, em hỏi thêm một điều được không ạ?)* |
| Tanaka | どうぞ。<br>*(Cứ hỏi.)* |
| Đại | <ruby>面接<rt>めんせつ</rt></ruby>で「<ruby>弱<rt>よわ</rt></ruby>みは<ruby>何<rt>なん</rt></ruby>ですか」と<ruby>聞<rt>き</rt></ruby>かれた<ruby>場合<rt>ばあい</rt></ruby>、どう<ruby>答<rt>こた</rt></ruby>えればいいでしょうか？「<ruby>弱<rt>よわ</rt></ruby>みはありません」だと<ruby>傲慢<rt>ごうまん</rt></ruby>に<ruby>聞<rt>き</rt></ruby>こえそうで……<br>*(Phỏng vấn hỏi "Điểm yếu của em là gì" thì trả lời sao? "Em không có điểm yếu" thì nghe kiêu...)* |
| Tanaka | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>原則<rt>げんそく</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つ：①<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>弱<rt>よわ</rt></ruby>みを1つ<ruby>挙<rt>あ</rt></ruby>げる、②<ruby>具体例<rt>ぐたいれい</rt></ruby>を<ruby>添<rt>そ</rt></ruby>える、③<ruby>克服<rt>こくふく</rt></ruby><ruby>努力<rt>どりょく</rt></ruby>を<ruby>述<rt>の</rt></ruby>べる。<br>*(Câu hỏi tốt. 3 nguyên tắc: ①nêu 1 điểm yếu thật, ②kèm ví dụ cụ thể, ③nói nỗ lực khắc phục.)* |
| Tanaka | <ruby>例<rt>たと</rt></ruby>えば「<ruby>細部<rt>さいぶ</rt></ruby>にこだわりすぎる<ruby>傾向<rt>けいこう</rt></ruby>があります。<ruby>大学<rt>だいがく</rt></ruby>2<ruby>年<rt>ねん</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、コードリファクタリングに<ruby>時間<rt>じかん</rt></ruby>をかけすぎて<ruby>納期<rt>のうき</rt></ruby>に<ruby>遅<rt>おく</rt></ruby>れたことがあります。<ruby>現在<rt>げんざい</rt></ruby>はタイムボックスを<ruby>設<rt>もう</rt></ruby>けて<ruby>対応<rt>たいおう</rt></ruby>しています」――こんな<ruby>感<rt>かん</rt></ruby>じです。<br>*(Ví dụ: "Em có xu hướng quá cầu toàn chi tiết. Năm 2 đại học từng refactor code quá lâu mà trễ deadline. Hiện em đặt timebox để giải quyết." — kiểu vậy.)* |
| Đại | なるほど。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございました。<br>*(Rõ rồi. Em học được nhiều. Cảm ơn chị.)* |

---

## Tình huống 5 — Phòng làm việc Toyonaka · 22:00 25/3, viết lại 志望動機 Mercari + đọc cho Mai nghe

*Đại viết xong bản 2, đọc to lên cho Mai (đang cho Hana ngủ) nghe.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em nghe anh đọc thử nhé. |
| Đại | (đọc) <ruby>御社<rt>おんしゃ</rt></ruby>を<ruby>志望<rt>しぼう</rt></ruby>する<ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>御社<rt>おんしゃ</rt></ruby>は「<ruby>個人<rt>こじん</rt></ruby><ruby>間<rt>かん</rt></ruby>の<ruby>取引<rt>とりひき</rt></ruby>インフラ」を Go + Microservice で<ruby>支<rt>ささ</rt></ruby>えており、<ruby>世界<rt>せかい</rt></ruby><ruby>最大級<rt>さいだいきゅう</rt></ruby>の<ruby>規模<rt>きぼ</rt></ruby>で<ruby>運用<rt>うんよう</rt></ruby>されている<ruby>点<rt>てん</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>く<ruby>惹<rt>ひ</rt></ruby>かれました。<br>*(Lý do em ứng tuyển có 3. Một, quý công ty đang chống đỡ "hạ tầng giao dịch cá nhân" bằng Go + Microservice, vận hành ở quy mô hàng đầu thế giới — em bị cuốn hút mạnh.)* |
| Đại | (tiếp) <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>私<rt>わたし</rt></ruby><ruby>自身<rt>じしん</rt></ruby>、<ruby>卒業研究<rt>そつぎょうけんきゅう</rt></ruby>でベトナム<ruby>人<rt>じん</rt></ruby>向け<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリ「Hizashi」を<ruby>構築<rt>こうちく</rt></ruby>しており、FastAPI と pgvector で<ruby>個人<rt>こじん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のためのインフラを<ruby>設計<rt>せっけい</rt></ruby>した<ruby>経験<rt>けいけん</rt></ruby>があります。<ruby>個人<rt>こじん</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>える<ruby>大規模<rt>だいきぼ</rt></ruby>インフラへの<ruby>関心<rt>かんしん</rt></ruby>は、ここで<ruby>培<rt>つちか</rt></ruby>われました。<br>*(Hai, bản thân em đang xây Hizashi cho người Việt làm 卒研, có kinh nghiệm thiết kế infrastructure cho người học cá nhân bằng FastAPI + pgvector. Mối quan tâm về hạ tầng quy mô lớn phục vụ cá nhân chính nuôi dưỡng từ đó.)* |
| Đại | (tiếp) <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>研究室<rt>けんきゅうしつ</rt></ruby>で<ruby>日本人<rt>にほんじん</rt></ruby>・<ruby>中国人<rt>ちゅうごくじん</rt></ruby>・<ruby>インド人<rt>インドじん</rt></ruby>の<ruby>仲間<rt>なかま</rt></ruby>と<ruby>協働<rt>きょうどう</rt></ruby>してまいりましたので、<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>多国籍<rt>たこくせき</rt></ruby>エンジニアリングチームにも<ruby>違和感<rt>いわかん</rt></ruby>なく<ruby>馴染<rt>なじ</rt></ruby>めると<ruby>確信<rt>かくしん</rt></ruby>しております。<ruby>以上<rt>いじょう</rt></ruby><ruby>三点<rt>さんてん</rt></ruby>から、<ruby>御社<rt>おんしゃ</rt></ruby>を<ruby>強<rt>つよ</rt></ruby>く<ruby>志望<rt>しぼう</rt></ruby>いたします。<br>*(Ba, em đã làm việc với bạn Nhật, Trung, Ấn ở lab, nên tin rằng em sẽ hoà nhập được với đội kỹ sư đa quốc tịch của quý công ty. Từ 3 điểm trên, em mạnh mẽ ứng tuyển.)* |
| Mai | (VN) Em không hiểu hết tiếng Nhật nhưng nghe có "logic 3 đoạn" rõ. Chị Tanaka nói thế hả? |
| Đại | (VN) Đúng. Chị bảo bao giờ cũng phải có "công ty cụ thể → kinh nghiệm bản thân → tương lai vào công ty". |
| Mai | (VN) Hay quá. Hôm nay em cũng học được. |

---

## Tình huống 6 — Lab desk · 10:00 27/3, gửi email 人事 Mercari xin tham gia 説明会

| Vai | Lời thoại |
|---|---|
| Đại | (email)<br>件名：エンジニア<ruby>職<rt>しょく</rt></ruby><ruby>説明会<rt>せつめいかい</rt></ruby><ruby>参加<rt>さんか</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>い／<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>グエン・ヴァン・ダイ<br><br>メルカリ<ruby>株式<rt>かぶしき</rt></ruby><ruby>会社<rt>がいしゃ</rt></ruby><br>人事部 ご<ruby>担当者<rt>たんとうしゃ</rt></ruby><ruby>様<rt>さま</rt></ruby><br><br>お<ruby>世話<rt>せわ</rt></ruby>になっております。<br><ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>3<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br><br>このたび、4<ruby>月<rt>がつ</rt></ruby>15<ruby>日<rt>にち</rt></ruby>(<ruby>月<rt>げつ</rt></ruby>)に<ruby>開催<rt>かいさい</rt></ruby>される「2030<ruby>年卒<rt>ねんそつ</rt></ruby>エンジニア<ruby>職<rt>しょく</rt></ruby><ruby>説明会<rt>せつめいかい</rt></ruby>」に<ruby>参加<rt>さんか</rt></ruby>させていただきたく、ご<ruby>連絡<rt>れんらく</rt></ruby><ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げました。<br><br><ruby>御社<rt>おんしゃ</rt></ruby>の Go と Microservice を<ruby>用<rt>もち</rt></ruby>いた<ruby>大規模<rt>だいきぼ</rt></ruby>インフラに<ruby>強<rt>つよ</rt></ruby>く<ruby>関心<rt>かんしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っており、<ruby>当日<rt>とうじつ</rt></ruby>、エンジニアの<ruby>皆様<rt>みなさま</rt></ruby>から<ruby>直接<rt>ちょくせつ</rt></ruby>お<ruby>話<rt>はなし</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>えればと<ruby>存<rt>ぞん</rt></ruby>じます。<br><br>お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、ご<ruby>確認<rt>かくにん</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br><br>―――<br>グエン・ヴァン・ダイ<br><ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>3<ruby>年<rt>ねん</rt></ruby><br><ruby>携帯<rt>けいたい</rt></ruby>：090-XXXX-XXXX<br>Mail: dai.nguyen@osaka-u.example |
| Yamada | (sang xem) keigo<ruby>完璧<rt>かんぺき</rt></ruby>だ。「<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが」+「ご<ruby>確認<rt>かくにん</rt></ruby>のほど」の<ruby>並<rt>なら</rt></ruby>びは<ruby>定型<rt>ていけい</rt></ruby>でいいね。<br>*(Keigo hoàn hảo. Cặp 恐縮ですが + ご確認のほど là combo chuẩn.)* |
| Đại | ありがとうございます。<ruby>送信<rt>そうしん</rt></ruby>します。<br>*(Cảm ơn anh. Em gửi.)* |

---

## Tình huống 7 — Online HackerRank test · 14:00 30/3, sau khi pass coding test

*Đại pass 3/3 bài Mercari coding test. Nhận email mời onsite Tokyo 5/4.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Yamato) コーディングテスト3/3でクリア！<ruby>東京<rt>とうきょう</rt></ruby>オンサイトの<ruby>招待<rt>しょうたい</rt></ruby>が<ruby>来<rt>き</rt></ruby>た！<br>*(Coding test 3/3! Có lời mời onsite Tokyo!)* |
| Yamato | (LINE) <ruby>本当<rt>ほんとう</rt></ruby>に？すげぇ！<ruby>俺<rt>おれ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>東京<ruby>行<rt>い</rt></ruby>く。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>新幹線<rt>しんかんせん</rt></ruby><ruby>取<rt>と</rt></ruby>ろう。<br>*(Thật á? Tuyệt! Tớ cũng đi Tokyo cùng ngày. Đặt shinkansen chung.)* |
| Đại | (LINE) よろしく！<ruby>面接<rt>めんせつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>もしてくれない？<br>*(Cảm ơn! Mà luyện phỏng vấn với tớ luôn được không?)* |
| Yamato | (LINE) いいよ。<ruby>明後日<rt>あさって</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>、ラボで<ruby>模擬<rt>もぎ</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>やろう。<ruby>俺<rt>おれ</rt></ruby>が<ruby>面接官役<rt>めんせつかんやく</rt></ruby>。<br>*(Được. Tối kia ở lab làm 模擬面接. Tớ đóng vai 面接官.)* |
| Đại | (LINE) ありがとう！スーツ<ruby>着<rt>き</rt></ruby>てくる。<br>*(Cảm ơn! Tớ mặc vest đến.)* |

---

## Tình huống 8 — Lab seminar room · 19:00 1/4, 模擬面接 với Yamato

*Yamato đóng vai 面接官 Mercari. Đại mặc vest đen, cà vạt navy, ngồi đối diện qua bàn.*

| Vai | Lời thoại |
|---|---|
| Yamato (面接官役) | グエンさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。まず、<ruby>自己<rt>じこ</rt></ruby>PRをお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Đại, cảm ơn em đã tới hôm nay. Đầu tiên, mời em tự PR.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>3<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>強<rt>つよ</rt></ruby>みは「<ruby>市場<rt>しじょう</rt></ruby>ニーズから<ruby>製品<rt>せいひん</rt></ruby>を<ruby>構築<rt>こうちく</rt></ruby>する<ruby>力<rt>ちから</rt></ruby>」です。<br>*(Vâng nhờ anh giúp đỡ. Tôi là Nguyễn Văn Đại, năm 3 khoa CS ĐH Osaka. Điểm mạnh của tôi là "khả năng xây dựng product từ nhu cầu thị trường".)* |
| Đại | <ruby>具体例<rt>ぐたいれい</rt></ruby>として、<ruby>妻<rt>つま</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>む4<ruby>名<rt>めい</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>共通課題<rt>きょうつうかだい</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>し、<ruby>卒業研究<rt>そつぎょうけんきゅう</rt></ruby>として Hizashi という<ruby>学習<rt>がくしゅう</rt></ruby>アプリを<ruby>構築<rt>こうちく</rt></ruby>、ベータ<ruby>版<rt>ばん</rt></ruby>を5<ruby>名<rt>めい</rt></ruby>のテスターに<ruby>公開<rt>こうかい</rt></ruby>し、3<ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>正答率<rt>せいとうりつ</rt></ruby>が<ruby>平均<rt>へいきん</rt></ruby>32%<ruby>向上<rt>こうじょう</rt></ruby>しました。<br>*(Ví dụ cụ thể, tôi phát hiện vấn đề chung của 4 người Việt học tiếng Nhật bao gồm vợ tôi, làm 卒研 xây app Hizashi, release beta cho 5 tester, sau 3 tháng tỉ lệ trả lời đúng tăng trung bình 32%.)* |
| Đại | <ruby>御社<rt>おんしゃ</rt></ruby>では、この「<ruby>個人<rt>こじん</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>を<ruby>大規模<rt>だいきぼ</rt></ruby>インフラで<ruby>解決<rt>かいけつ</rt></ruby>する」<ruby>姿勢<rt>しせい</rt></ruby>を<ruby>活<rt>い</rt></ruby>かしたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Ở quý công ty, tôi muốn vận dụng tinh thần "giải quyết vấn đề cá nhân bằng hạ tầng quy mô lớn" này.)* |
| Yamato | <ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>弱<rt>よわ</rt></ruby>みは？<br>*(Ngược lại, điểm yếu?)* |
| Đại | <ruby>細部<rt>さいぶ</rt></ruby>にこだわりすぎる<ruby>傾向<rt>けいこう</rt></ruby>がございます。<ruby>大学<rt>だいがく</rt></ruby>2<ruby>年<rt>ねん</rt></ruby>のチーム<ruby>開発<rt>かいはつ</rt></ruby>で、コードリファクタリングに<ruby>時間<rt>じかん</rt></ruby>をかけすぎてリリースが2<ruby>日<rt>にち</rt></ruby><ruby>遅<rt>おく</rt></ruby>れたことがあります。<ruby>現在<rt>げんざい</rt></ruby>は、タスクごとに<ruby>事前<rt>じぜん</rt></ruby>に60<ruby>分<rt>ぷん</rt></ruby>のタイムボックスを<ruby>設定<rt>せってい</rt></ruby>し、それを<ruby>超<rt>こ</rt></ruby>えたら<ruby>一旦<rt>いったん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>するように<ruby>改善<rt>かいぜん</rt></ruby>しました。<br>*(Tôi có xu hướng quá cầu toàn chi tiết. Năm 2 đại học từng làm dự án nhóm, refactor code quá lâu khiến release chậm 2 ngày. Hiện tôi đặt trước timebox 60 phút cho mỗi task, vượt là submit luôn.)* |
| Yamato | (out of role, VN) Anh trả lời chuẩn pattern 3 bước Tanaka dạy: nêu thật → ví dụ → cải thiện. Mercari sẽ thích. |
| Đại | (VN) Cảm ơn cậu. Lúc nói "wakami" tớ vẫn run. |

---

## Tình huống 9 — Văn phòng nhân sự Mercari Tokyo · 14:00 5/4, phỏng vấn vòng 2 thật

*Đại đến Mercari Roppongi, được dẫn vào phòng họp. Hai 面接官: ông Watanabe (Engineering Manager, 45 tuổi) và bà Sato (HR, 35 tuổi).*

| Vai | Lời thoại |
|---|---|
| Đại | (cúi 45 độ) <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきまして、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>のグエン・ヴァン・ダイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Hôm nay xin cảm ơn quý công ty đã dành thời gian. Tôi là Nguyễn Văn Đại từ ĐH Osaka. Nhờ giúp đỡ.)* |
| Watanabe | お<ruby>掛<rt>か</rt></ruby>けください。さっそくですが、なぜメルカリなのか、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Mời ngồi. Vào thẳng vấn đề — vì sao chọn Mercari, em nói cụ thể đi.)* |
| Đại | はい。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>御社<rt>おんしゃ</rt></ruby>の Go + Microservice<ruby>基盤<rt>きばん</rt></ruby>。<ruby>個人<rt>こじん</rt></ruby><ruby>間<rt>かん</rt></ruby><ruby>取引<rt>とりひき</rt></ruby><ruby>数<rt>すう</rt></ruby><ruby>累計<rt>るいけい</rt></ruby>30<ruby>億<rt>おく</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>突破<rt>とっぱ</rt></ruby>のスケール<ruby>運用<rt>うんよう</rt></ruby>に<ruby>魅力<rt>みりょく</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じております。<br>*(Vâng. Có 3 lý do. Một, hạ tầng Go + Microservice. Quy mô vận hành đạt 3 tỉ giao dịch C2C — hấp dẫn tôi mạnh mẽ.)* |
| Watanabe | (gật) <ruby>続<rt>つづ</rt></ruby>けて。<br>*(Tiếp.)* |
| Đại | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>私<rt>わたし</rt></ruby><ruby>自身<rt>じしん</rt></ruby>、<ruby>卒業研究<rt>そつぎょうけんきゅう</rt></ruby>で日本語<ruby>学習<rt>がくしゅう</rt></ruby>アプリ Hizashi を FastAPI + pgvector で<ruby>構築<rt>こうちく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<ruby>個人<rt>こじん</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えるインフラを<ruby>自分<rt>じぶん</rt></ruby>の<ruby>手<rt>て</rt></ruby>で<ruby>触<rt>さわ</rt></ruby>った<ruby>経験<rt>けいけん</rt></ruby>から、<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>本質<rt>ほんしつ</rt></ruby>に<ruby>共鳴<rt>きょうめい</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Hai, tôi đang xây Hizashi bằng FastAPI + pgvector. Kinh nghiệm tự tay chạm vào hạ tầng phục vụ cá nhân khiến tôi cộng hưởng với bản chất công việc của quý công ty.)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>研究室<rt>けんきゅうしつ</rt></ruby>で<ruby>日本人<rt>にほんじん</rt></ruby>・<ruby>中国人<rt>ちゅうごくじん</rt></ruby>・<ruby>インド人<rt>インドじん</rt></ruby>の<ruby>仲間<rt>なかま</rt></ruby>と<ruby>協働<rt>きょうどう</rt></ruby>してまいりました。<ruby>御社<rt>おんしゃ</rt></ruby>の50を<ruby>超<rt>こ</rt></ruby>える<ruby>国籍<rt>こくせき</rt></ruby>のエンジニアチームに<ruby>違和感<rt>いわかん</rt></ruby>なく<ruby>加<rt>くわ</rt></ruby>われると<ruby>確信<rt>かくしん</rt></ruby>しております。<br>*(Ba, tôi đã làm việc với Nhật/Trung/Ấn ở lab. Tin chắc sẽ hoà nhập đội kỹ sư hơn 50 quốc tịch của quý công ty.)* |
| Sato | Hizashi のユーザー<ruby>数<rt>すう</rt></ruby>は<ruby>現在<rt>げんざい</rt></ruby><ruby>何名<rt>なんめい</rt></ruby>ですか？<br>*(Hizashi hiện có mấy người dùng?)* |
| Đại | ベータ<ruby>版<rt>ばん</rt></ruby>テスター5<ruby>名<rt>めい</rt></ruby>で、3<ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>正答率<rt>せいとうりつ</rt></ruby>が<ruby>平均<rt>へいきん</rt></ruby>32%<ruby>向上<rt>こうじょう</rt></ruby>しました。<ruby>来月<rt>らいげつ</rt></ruby>50<ruby>名<rt>めい</rt></ruby>まで<ruby>拡大<rt>かくだい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(5 beta tester, 3 tháng tỉ lệ đúng tăng 32%. Tháng sau dự kiến mở rộng tới 50 user.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしい。では<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<br>*(Tuyệt. Chuyển sang câu hỏi kỹ thuật.)* |

---

## Tình huống 10 — Cùng phòng phỏng vấn · 14:30, câu hỏi kỹ thuật về scaling

| Vai | Lời thoại |
|---|---|
| Watanabe | Hizashi のユーザーが10<ruby>万<rt>まん</rt></ruby><ruby>人<rt>にん</rt></ruby>になったら、どこがボトルネックになると<ruby>思<rt>おも</rt></ruby>いますか？<br>*(Hizashi đạt 100k user, em nghĩ chỗ nào bottleneck?)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つ<ruby>挙<rt>あ</rt></ruby>げられます。<br>*(Em nêu 3 chỗ.)* |
| Đại | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、Claude API のコストとレート<ruby>制限<rt>せいげん</rt></ruby>。<ruby>対策<rt>たいさく</rt></ruby>として、プロンプトキャッシングで<ruby>共通<rt>きょうつう</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>のコストを10<ruby>分<rt>ぶん</rt></ruby>の1に<ruby>下<rt>さ</rt></ruby>げる、<ruby>頻出<rt>ひんしゅつ</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>は Redis にキャッシュする、<ruby>使用<rt>しよう</rt></ruby><ruby>頻度<rt>ひんど</rt></ruby>の<ruby>少<rt>すく</rt></ruby>ない<ruby>機能<rt>きのう</rt></ruby>には Haiku を<ruby>使<rt>つか</rt></ruby>う、です。<br>*(Một, cost và rate limit Claude API. Đối sách: prompt caching giảm phần chung còn 1/10, cache Redis cho câu hỏi thường gặp, dùng Haiku cho tính năng ít dùng.)* |
| Đại | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、pgvector の<ruby>類似<rt>るいじ</rt></ruby><ruby>検索<rt>けんさく</rt></ruby>。10<ruby>万<rt>まん</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>になると IVFFlat<ruby>索引<rt>さくいん</rt></ruby>の<ruby>再構築<rt>さいこうちく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。HNSW に<ruby>移行<rt>いこう</rt></ruby>するか、<ruby>専用<rt>せんよう</rt></ruby>ベクター DB に<ruby>分離<rt>ぶんり</rt></ruby>する<ruby>判断<rt>はんだん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Hai, similarity search pgvector. Trên 100k record cần rebuild IVFFlat. Phải quyết chuyển HNSW hay tách vector DB chuyên dụng.)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ストリーミングの<ruby>同時<rt>どうじ</rt></ruby><ruby>接続<rt>せつぞく</rt></ruby><ruby>数<rt>すう</rt></ruby>。FastAPI<ruby>単体<rt>たんたい</rt></ruby>の Worker<ruby>数<rt>すう</rt></ruby>では<ruby>足<rt>た</rt></ruby>りなくなるので、<ruby>水平<rt>すいへい</rt></ruby><ruby>分散<rt>ぶんさん</rt></ruby>と Server-Sent Events の<ruby>代<rt>か</rt></ruby>わりに WebSocket + Pub/Sub の<ruby>検討<rt>けんとう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Ba, số kết nối streaming đồng thời. Worker đơn FastAPI không đủ. Cần horizontal scaling + cân nhắc WebSocket + Pub/Sub thay SSE.)* |
| Watanabe | <ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>良<rt>よ</rt></ruby>い<ruby>回答<rt>かいとう</rt></ruby>です。<br>*(Trả lời cụ thể, tốt.)* |
| Sato | <ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>質問<rt>しつもん</rt></ruby>はありますか？<br>*(Ngược lại, em có câu hỏi gì không?)* |
| Đại | はい、<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>新卒<rt>しんそつ</rt></ruby>エンジニアが<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>半年<rt>はんとし</rt></ruby>で<ruby>身<rt>み</rt></ruby>につける<ruby>技術<rt>ぎじゅつ</rt></ruby>と、<ruby>新卒<rt>しんそつ</rt></ruby>が<ruby>初日<rt>しょにち</rt></ruby>から<ruby>触<rt>さわ</rt></ruby>れる<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>について、お<ruby>聞<rt>き</rt></ruby>かせいただけますか？<br>*(Có. Em xin được hỏi về kỹ thuật mà 新卒 của quý công ty học được trong 6 tháng đầu, và phạm vi production engineer mới được tiếp xúc từ ngày đầu.)* |

---

## Tình huống 11 — Cảm ơn email tối cùng ngày · 21:00 5/4

*Về khách sạn Tokyo, Đại gõ email cảm ơn chuẩn shukatsu.*

| Vai | Lời thoại |
|---|---|
| Đại | (email Watanabe + Sato)<br>件名：<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>面接<rt>めんせつ</rt></ruby>の<ruby>御礼<rt>おれい</rt></ruby>／<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>グエン・ヴァン・ダイ<br><br><ruby>渡辺<rt>わたなべ</rt></ruby><ruby>様<rt>さま</rt></ruby><br><ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby><br><br>お<ruby>世話<rt>せわ</rt></ruby>になっております。<br><br><ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しいところ、<ruby>貴重<rt>きちょう</rt></ruby>なお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br><br><ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>新卒<rt>しんそつ</rt></ruby>エンジニアが<ruby>初日<rt>しょにち</rt></ruby>から<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>に<ruby>触<rt>ふ</rt></ruby>れられる<ruby>環境<rt>かんきょう</rt></ruby>、また<ruby>多国籍<rt>たこくせき</rt></ruby>チームで<ruby>英語<rt>えいご</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>並列<rt>へいれつ</rt></ruby>で<ruby>使<rt>つか</rt></ruby>われる<ruby>文化<rt>ぶんか</rt></ruby>について<ruby>伺<rt>うかが</rt></ruby>うことができ、<ruby>御社<rt>おんしゃ</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きたいという<ruby>思<rt>おも</rt></ruby>いがさらに<ruby>強<rt>つよ</rt></ruby>くなりました。<br><br>ご<ruby>縁<rt>えん</rt></ruby>をいただけましたら、<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>大規模<rt>だいきぼ</rt></ruby>インフラの<ruby>一翼<rt>いちよく</rt></ruby>を<ruby>担<rt>にな</rt></ruby>えるエンジニアとして<ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>む<ruby>所存<rt>しょぞん</rt></ruby>でございます。<br><br>引き<ruby>続<rt>つづ</rt></ruby>き、よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br><br>―――<br>グエン・ヴァン・ダイ |

---

## Tình huống 12 — Lab desk · 11:00 12/4, Mercari gọi báo オファー — xin thời gian suy nghĩ

*Sato gọi điện trực tiếp.*

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、メルカリの<ruby>佐藤<rt>さとう</rt></ruby>です。お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Đại, tôi là Sato Mercari. Cảm ơn em đã hợp tác.)* |
| Đại | <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Chị Sato, xin chào.)* |
| Sato | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、グエンさんに<ruby>内定<rt>ないてい</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すことが<ruby>決<rt>き</rt></ruby>まりました。<ruby>年収<rt>ねんしゅう</rt></ruby>は¥7M、<ruby>勤務地<rt>きんむち</rt></ruby>は<ruby>東京<rt>とうきょう</rt></ruby><ruby>六本木<rt>ろっぽんぎ</rt></ruby>です。<br>*(Đi thẳng vào — chúng tôi quyết định trao 内定 cho em. Lương năm 7 triệu yên, làm việc tại Roppongi Tokyo.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！ご<ruby>連絡<rt>れんらく</rt></ruby>いただきましたこと、<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Em thật sự cảm ơn! Cảm tạ chị đã liên hệ.)* |
| Sato | お<ruby>返事<rt>へんじ</rt></ruby>のご<ruby>希望<rt>きぼう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>は5<ruby>月<rt>がつ</rt></ruby>10<ruby>日<rt>にち</rt></ruby>でいかがでしょうか？<br>*(Hạn trả lời ngày 10/5 được không?)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>大変<rt>たいへん</rt></ruby><ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させていただきたく、5<ruby>月<rt>がつ</rt></ruby>10<ruby>日<rt>にち</rt></ruby>までにお<ruby>返事<rt>へんじ</rt></ruby>させていただきます。<br>*(Em hiểu rồi. Xin phép em rất ngại, nhưng cần thảo luận với gia đình, em sẽ trả lời trước 10/5.)* |
| Sato | もちろんです。<ruby>奥様<rt>おくさま</rt></ruby>とお<ruby>子<rt>こ</rt></ruby>さんがいらっしゃいますものね。<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>しの<ruby>支援<rt>しえん</rt></ruby><ruby>制度<rt>せいど</rt></ruby>もございますので、<ruby>後日<rt>ごじつ</rt></ruby><ruby>資料<rt>しりょう</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Đương nhiên. Em có vợ và con mà. Có chế độ hỗ trợ chuyển nhà, em sẽ gửi tài liệu sau.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Cảm ơn chị thật nhiều. Em mang ơn.)* |

---

## Tình huống 13 — Phòng khách Toyonaka · 20:00 12/4, gọi Mai về Mercari offer

*Đại về đến nhà, Mai đang tắm cho Hana.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi. Mercari offer rồi. 7 triệu yên năm, Roppongi Tokyo, deadline trả lời 10/5. |
| Mai | (VN) Trời ơi! Chúc mừng anh! Anh muốn nhận không? |
| Đại | (VN) Anh đang băn khoăn. Cybozu Osaka 6.7 triệu, gần Hana với em, gần Tony-Yumi, gần lab Inoue cho 卒研 năm 4. Mercari 7 triệu nhưng phải lên Tokyo, xa hết. |
| Mai | (VN) Còn Hizashi? |
| Đại | (VN) Đó mới là vấn đề lớn. Nếu vào Mercari, làm 1-2 năm lên senior rồi nghỉ ra startup. Cybozu thì work-life balance tốt hơn, có thể song song Hizashi. |
| Mai | (VN) Quyết định lớn anh nên ngủ trên 1 tuần đã. Mà em ủng hộ anh chọn cái nào anh muốn. Em với Hana đi đâu cũng theo. |
| Đại | (VN, ôm Hana) Cảm ơn em. Anh sẽ suy nghĩ thật kỹ. Năm 4 mới quyết. |

---

## Đọng lại chương 12

Chương ngôn ngữ NẶNG NHẤT cả sách 23. Đại học nguyên bộ keigo shukatsu mà mọi người Việt làm tại Nhật đều phải có. **Gọi điện đặt lịch**: 「<ruby>世話<rt>せわ</rt></ruby>になっております」 → tự giới thiệu → 「ご<ruby>希望<rt>きぼう</rt></ruby>の<ruby>日時<rt>にちじ</rt></ruby>」. **Email keigo người lạ**: 「お<ruby>世話<rt>せわ</rt></ruby>になっております」 + 「<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが」 + 「ご<ruby>確認<rt>かくにん</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます」. **志望動機 3 đoạn**: <ruby>具体的<rt>ぐたいてき</rt></ruby><ruby>事業<rt>じぎょう</rt></ruby> → <ruby>自分<rt>じぶん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby> → <ruby>入社<rt>にゅうしゃ</rt></ruby>後<ruby>抱負<rt>ほうふ</rt></ruby>. **自己PR 3 đoạn**: <ruby>強<rt>つよ</rt></ruby>み 1 câu → <ruby>具体例<rt>ぐたいれい</rt></ruby><ruby>数字付<rt>すうじつ</rt></ruby>き → <ruby>御社<rt>おんしゃ</rt></ruby>でどう<ruby>活<rt>い</rt></ruby>かす. **弱み 3 bước**: <ruby>本当<rt>ほんとう</rt></ruby>の<ruby>弱<rt>よわ</rt></ruby>み → <ruby>具体例<rt>ぐたいれい</rt></ruby> → <ruby>克服<rt>こくふく</rt></ruby><ruby>努力<rt>どりょく</rt></ruby>. **Câu hỏi ngược cuối phỏng vấn**: BẮT BUỘC có 1 câu hỏi cụ thể về công việc. **Cảm ơn email sau phỏng vấn**: trong vòng 24h, 件名 "面接の御礼". **Nhận offer xin suy nghĩ**: 「<ruby>大変<rt>たいへん</rt></ruby><ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させていただきたく、〜までにお<ruby>返事<rt>へんじ</rt></ruby>させていただきます」 — pattern an toàn nhất.

> Từ vựng & mẫu câu chương này: 就活・履歴書・志望動機・自己PR・弱み・強み・面接・模擬面接・面接官・キャリアセンター・説明会・内定・お祈りメール・人事・御社・お世話になっております・本日はお時間をいただきまして・誠にありがとうございました・ご縁をいただけましたら・所存でございます・大変恐縮ですが・お返事させていただきます・ご確認のほど・引き続きよろしくお願い申し上げます・年収・勤務地・引っ越し支援制度

## Bí quyết chương

- **3 段階構成 là khuôn vàng**: cả 志望動機, 自己PR, 弱み đều theo cấu trúc 3 đoạn. Khi run trong phỏng vấn, đếm "Một... Hai... Ba..." là tự lấy lại nhịp.
- **Xin offer hold = không sai luật**: 100% công ty Nhật cho 1-2 tuần suy nghĩ. KHÔNG được nhận ngay tại chỗ — bị coi là thiếu suy xét. KHÔNG được từ chối ngay — mất quan hệ. Pattern「<ruby>大変<rt>たいへん</rt></ruby><ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させていただきたく」 cực kỳ an toàn.
- **Reverse question (cuối phỏng vấn)**: Bắt buộc hỏi. KHÔNG hỏi lương/giờ làm. Hỏi về growth, technology, culture — như Đại hỏi "新卒 6 tháng đầu học gì + production access từ ngày đầu phạm vi nào".
- **Email 御礼 24h**: deadline cứng. Trễ là điểm trừ. Subject "面接の御礼／大学名+氏名".
- **Career center = ATM keigo miễn phí**: trường nào cũng có. Đặt lịch sớm, đem 履歴書 + công ty list + câu hỏi cụ thể.
- **Mặc gì**: phỏng vấn tech vẫn vest đen + sơ mi trắng + cà vạt navy/đen. Mercari/CyberAgent "casual OK" nhưng vòng đầu vẫn nên vest — dư vẫn hơn thiếu.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 就活 | しゅうかつ | TỰU HOẠT | Hoạt động tìm việc |
| キャリアセンター | — | — | Trung tâm tư vấn nghề |
| 予約 | よやく | DỰ ƯỚC | Đặt lịch |
| 持参 | じさん | TRÌ THAM | Mang theo |
| 学歴 | がくれき | HỌC LỊCH | Học vấn |
| 資格 | しかく | TƯ CÁCH | Chứng chỉ |
| 合格 | ごうかく | HỢP CÁCH | Đỗ |
| 志望動機 | しぼうどうき | CHÍ VỌNG ĐỘNG CƠ | Động lực ứng tuyển |
| 欄 | らん | LAN | Ô, cột |
| 御社 | おんしゃ | NGỰ XÃ | Quý công ty |
| 技術力 | ぎじゅつりょく | KỸ THUẬT LỰC | Năng lực kỹ thuật |
| 魅力 | みりょく | MỴ LỰC | Sức hấp dẫn |
| 当てはまる | あてはまる | ĐƯƠNG | Áp dụng được |
| 結びつく | むすびつく | KẾT | Kết nối |
| 述べる | のべる | THUẬT | Trình bày |
| 多用 | たよう | ĐA DỤNG | Dùng nhiều |
| 多国籍 | たこくせき | ĐA QUỐC TỊCH | Đa quốc tịch |
| 強み | つよみ | CƯỜNG | Điểm mạnh |
| 弱み | よわみ | NHƯỢC | Điểm yếu |
| 傲慢 | ごうまん | NGẠO MAN | Kiêu ngạo |
| 細部 | さいぶ | TẾ BỘ | Chi tiết |
| こだわる | — | — | Cầu toàn, chấp |
| 傾向 | けいこう | KHUYNH HƯỚNG | Xu hướng |
| 克服 | こくふく | KHẮC PHỤC | Khắc phục |
| 努力 | どりょく | NỖ LỰC | Nỗ lực |
| 遅れる | おくれる | TRÌ | Trễ |
| 設ける | もうける | THIẾT | Thiết lập |
| 個人間 | こじんかん | CÁ NHÂN GIAN | Giữa cá nhân (C2C) |
| 取引 | とりひき | THỦ DẪN | Giao dịch |
| 惹かれる | ひかれる | NHẪ | Bị cuốn hút |
| 自身 | じしん | TỰ THÂN | Bản thân |
| 卒業研究 | そつぎょうけんきゅう | TỐT NGHIỆP NGHIÊN CỨU | Nghiên cứu tốt nghiệp |
| 培う | つちかう | BỒI | Nuôi dưỡng |
| 協働 | きょうどう | HIỆP ĐỘNG | Cộng tác |
| 違和感 | いわかん | VI HOÀ CẢM | Cảm giác lạc lõng |
| 馴染む | なじむ | TUẦN NHIỄM | Hoà nhập |
| 確信 | かくしん | XÁC TÍN | Tin chắc |
| 開催 | かいさい | KHAI THÁI | Tổ chức |
| 当日 | とうじつ | ĐƯƠNG NHẬT | Hôm đó |
| 存じる | ぞんじる | TỒN | Biết (khiêm) |
| 定型 | ていけい | ĐỊNH HÌNH | Khuôn mẫu |
| 模擬面接 | もぎめんせつ | MÔ NGHĨ DIỆN TIẾP | Phỏng vấn thử |
| 面接官 | めんせつかん | DIỆN TIẾP QUAN | Người phỏng vấn |
| 役 | やく | DỊCH | Vai |
| 自己PR | じこピーアール | TỰ KỶ — | Tự PR |
| 共通課題 | きょうつうかだい | CỘNG THÔNG KHOÁ ĐỀ | Vấn đề chung |
| 発見 | はっけん | PHÁT KIẾN | Phát hiện |
| 一翼 | いちよく | NHẤT DỰC | Một cánh, một phần |
| 担う | になう | ĐẢM | Gánh vác |
| 所存 | しょぞん | SỞ TỒN | Ý định |
| 縁 | えん | DUYÊN | Duyên |
| 突破 | とっぱ | ĐỘT PHÁ | Đột phá, vượt qua |
| 共鳴 | きょうめい | CỘNG MINH | Cộng hưởng |
| 本質 | ほんしつ | BẢN CHẤT | Bản chất |
| 国籍 | こくせき | QUỐC TỊCH | Quốc tịch |
| 加わる | くわわる | GIA | Tham gia |
| 制限 | せいげん | CHẾ HẠN | Hạn chế |
| 頻出 | ひんしゅつ | TẦN XUẤT | Hay xuất hiện |
| 頻度 | ひんど | TẦN ĐỘ | Tần suất |
| 索引 | さくいん | SÁCH DẪN | Index |
| 再構築 | さいこうちく | TÁI CẤU TRÚC | Xây lại |
| 分離 | ぶんり | PHÂN LY | Tách |
| 接続数 | せつぞくすう | TIẾP TỤC SỐ | Số kết nối |
| 単体 | たんたい | ĐƠN THỂ | Đơn lẻ |
| 水平分散 | すいへいぶんさん | THỦY BÌNH PHÂN TÁN | Phân tán ngang |
| 半年 | はんとし | BÁN NIÊN | Nửa năm |
| 初日 | しょにち | SƠ NHẬT | Ngày đầu |
| 御礼 | おれい | NGỰ LỄ | Lời cảm ơn (trang trọng) |
| 頂戴 | ちょうだい | ĐỈNH ĐÁI | Nhận (khiêm) |
| 文化 | ぶんか | VĂN HOÁ | Văn hoá |
| 引っ越し | ひっこし | DẪN VIỆT | Chuyển nhà |
| 支援制度 | しえんせいど | CHI VIỆN CHẾ ĐỘ | Chế độ hỗ trợ |
| 奥様 | おくさま | ÁO DẠNG | Vợ (kính ngữ) |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
