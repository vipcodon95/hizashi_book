-- Hizashi LITE book SQL — Đại học Y2
-- curriculum_id = 800000022  (book_seq=22)
-- nguồn: books/22_dai_daigaku_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000022, 'N3', 'markdown_book', 'Du học', 'Đại học Y2', 'Bộ sách Hizashi — Đại học Y2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000001, 800000022, NULL, 'markdown_book', 'T1. Năm 2 bắt đầu — Web kỹ thuật I + DB nhập môn', '# Sách sinh viên Đại học Osaka · T1. Năm 2 bắt đầu — Web kỹ thuật I + DB nhập môn

> **Mục tiêu nhân vật:** Đại 22t, năm 2 ĐH Osaka, vừa chuyển sang apt 2DK Senri-chuo. Học các mẫu hội thoại tiếng Nhật của sinh viên CS năm 2: (1) chào sensei mới buổi đầu lecture 「初めまして、よろしくお願いします」, (2) đặt câu hỏi trong giảng đường 「〜について質問があります」, (3) thảo luận stack technology với cohort 「〜を使ったことがありますか」, (4) báo cáo tiến độ code với sensei 「〜できました、見ていただけますか」, (5) chào homestay-family qua điện thoại 「ご無沙汰しております」, (6) gọi điện cho vợ tiếng Việt cuối ngày.

---

## Bối cảnh

Tháng 4 năm 2027. Đại 22 tuổi, năm 2 ĐH Osaka khoa Khoa học Thông tin. Mai (vợ) đã sang Nhật 2/5 — hai vợ chồng đang ở apt 2DK Senri-chuo. Tuần đầu kỳ: lecture mới Web技術 I (Nakamura-sensei) + DB入門 (Takahashi-sensei). Cohort cùng năm 2: Yamato, Aiko, Lin Wei, Rajesh. Yamada-senpai đã lên cao học vào lab Inoue. Chương này tập trung các mẫu câu chào sensei mới, đặt câu hỏi trong lecture, thảo luận tech stack với cohort, và báo cáo tiến độ.

---

## Tình huống 1 — Căn hộ Senri-chuo · 7:30, chào vợ trước khi đi học

*Mai đang nấu phở sáng trong bếp DK. Đại mặc áo sơ mi xanh, đeo balo.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ăn nhanh kẻo lỡ tàu Hankyu 7:50 đấy! |
| Đại | (tiếng Việt) Vâng vâng. Hôm nay buổi đầu Web技術 I, anh háo hức ghê. |
| Mai | (tiếng Việt) Web giao diện đúng không? Em nghe anh nhắc bao nhiêu lần rồi. |
| Đại | (tiếng Việt) Đúng. HTML, CSS, JavaScript. Tuần sau vào React. |
| Mai | (tiếng Việt) Anh học xong dạy lại em được không? |
| Đại | (tiếng Việt) Được chứ. Khi nào em xong N2 ở Yamato School là anh dạy. Đi đây. |
| Mai | (tiếng Việt) いってらっしゃい anh ơi! |
| Đại | <ruby>行<rt>い</rt></ruby>ってきます! |

---

## Tình huống 2 — Giảng đường Toyonaka · 9:00, chào Nakamura-sensei buổi đầu Web技術 I

*Phòng học 200 chỗ. Đại ngồi hàng 3, cạnh Yamato và Aiko. Nakamura-sensei (35t, ex-Mercari) bước vào.*

| Vai | Lời thoại |
|---|---|
| Nakamura | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>からWeb<ruby>技術<rt>ぎじゅつ</rt></ruby> I を<ruby>担当<rt>たんとう</rt></ruby>します、<ruby>中村<rt>なかむら</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào các bạn. Từ hôm nay tôi phụ trách Web Tech I, tôi là Nakamura. Mong các bạn giúp đỡ.)* |
| Cả lớp | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mong sensei giúp đỡ ạ.)* |
| Nakamura | この<ruby>授業<rt>じゅぎょう</rt></ruby>では、HTML、CSS、JavaScriptを<ruby>基礎<rt>きそ</rt></ruby>から<ruby>学<rt>まな</rt></ruby>びます。<ruby>後半<rt>こうはん</rt></ruby>はReactに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Lớp này học HTML, CSS, JavaScript từ căn bản. Nửa sau vào React.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>があります。Vueも<ruby>扱<rt>あつか</rt></ruby>いますか?<br>*(Sensei, em có câu hỏi. Có học cả Vue không ạ?)* |
| Nakamura | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。Vueは<ruby>来年<rt>らいねん</rt></ruby>のWeb<ruby>技術<rt>ぎじゅつ</rt></ruby> II で<ruby>扱<rt>あつか</rt></ruby>います。<ruby>今年<rt>ことし</rt></ruby>はReactに<ruby>集中<rt>しゅうちゅう</rt></ruby>します。<br>*(Câu hỏi hay. Vue sẽ học ở Web Tech II năm sau. Năm nay tập trung React.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn sensei.)* |

---

## Tình huống 3 — Giảng đường · 9:30, thảo luận stack với Yamato và Aiko

| Vai | Lời thoại |
|---|---|
| Yamato | (whisper, Osaka-ben) ダイ、HTML<ruby>書<rt>か</rt></ruby>いたことある?<br>*(Đại, viết HTML bao giờ chưa?)* |
| Đại | うん、Hack Uの<ruby>時<rt>とき</rt></ruby>にちょっと<ruby>触<rt>さわ</rt></ruby>った。でも<ruby>本格的<rt>ほんかくてき</rt></ruby>にはまだ。<br>*(Có, hồi Hack U có chạm vào chút. Nhưng bài bản thì chưa.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>はFigmaでデザインしてるから、<ruby>実装<rt>じっそう</rt></ruby><ruby>側<rt>がわ</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めて。<ruby>楽<rt>たの</rt></ruby>しみ。<br>*(Mình quen làm thiết kế Figma, nên phía implement là lần đầu. Hồi hộp.)* |
| Đại | アイコさん、Tailwind CSS<ruby>使<rt>つか</rt></ruby>ったことありますか?<br>*(Aiko, cậu dùng Tailwind CSS bao giờ chưa?)* |
| Aiko | Tailwind?<ruby>名前<rt>なまえ</rt></ruby>だけ<ruby>聞<rt>き</rt></ruby>いたことある。<br>*(Tailwind? Mới nghe tên thôi.)* |
| Yamato | Utility-first<ruby>系<rt>けい</rt></ruby>のCSSフレームワークやで。<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>業界標準<rt>ぎょうかいひょうじゅん</rt></ruby>や。<br>*(CSS framework loại utility-first. Là chuẩn ngành năm 2027 đó.)* |
| Đại | <ruby>後期<rt>こうき</rt></ruby>でやるって<ruby>中村先生<rt>なかむらせんせい</rt></ruby>が<ruby>言<rt>い</rt></ruby>ってた。<br>*(Cuối kỳ học, Nakamura-sensei vừa nói đấy.)* |

---

## Tình huống 4 — Phòng lab máy · 11:00, hỏi sensei khi code không chạy

*Đại đang gõ file `index.html` đầu tiên. Browser hiện trang trắng. Đại giơ tay.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、すみません。ちょっと<ruby>見<rt>み</rt></ruby>ていただけますか? ブラウザに<ruby>何<rt>なに</rt></ruby>も<ruby>表示<rt>ひょうじ</rt></ruby>されません。<br>*(Sensei, em xin lỗi. Sensei xem giúp em được không ạ? Browser không hiện gì cả.)* |
| Nakamura | (cúi xem màn hình) <ruby>見<rt>み</rt></ruby>せてください... ああ、`<head>`タグが<ruby>閉<rt>と</rt></ruby>じていませんね。`</head>`が<ruby>抜<rt>ぬ</rt></ruby>けています。<br>*(Để tôi xem... À, thẻ `<head>` chưa đóng. Thiếu `</head>`.)* |
| Đại | あ、<ruby>本当<rt>ほんとう</rt></ruby>だ! すみません、<ruby>初歩的<rt>しょほてき</rt></ruby>なミスでした。<br>*(A, thật vậy! Xin lỗi, lỗi sơ đẳng quá.)* |
| Nakamura | <ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>同<rt>おな</rt></ruby>じです。VS Codeの<ruby>拡張機能<rt>かくちょうきのう</rt></ruby> "Auto Close Tag" を<ruby>入<rt>い</rt></ruby>れると<ruby>楽<rt>らく</rt></ruby>になりますよ。<br>*(Ban đầu ai cũng vậy. Cài extension "Auto Close Tag" của VS Code sẽ dễ hơn.)* |
| Đại | <ruby>後<rt>あと</rt></ruby>で<ruby>入<rt>い</rt></ruby>れます。ありがとうございます。<br>*(Tí em cài. Cảm ơn sensei.)* |
| Nakamura | <ruby>表示<rt>ひょうじ</rt></ruby>できたら<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>見<rt>み</rt></ruby>に<ruby>来<rt>き</rt></ruby>ます。<br>*(Khi hiện được thì gọi tôi. Tôi sẽ qua xem.)* |

---

## Tình huống 5 — Phòng lab · 11:20, báo cáo tiến độ với Nakamura

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、できました! <ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Sensei, em làm được rồi! Sensei xem giúp em ạ.)* |
| Nakamura | (xem browser hiện "こんにちは!") いいですね。<ruby>初<rt>はじ</rt></ruby>めてのHTMLページ、おめでとうございます。<br>*(Tốt đấy. Trang HTML đầu tiên, chúc mừng em.)* |
| Đại | ありがとうございます! <ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>すればいいですか?<br>*(Cảm ơn sensei! Tiếp theo em nên thêm gì ạ?)* |
| Nakamura | CSSで<ruby>装飾<rt>そうしょく</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けてみてください。`style.css`を<ruby>作<rt>つく</rt></ruby>って、`<link>`タグで<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みます。<br>*(Thử thêm style bằng CSS đi. Tạo `style.css` rồi load bằng thẻ `<link>`.)* |
| Đại | はい、やってみます。<br>*(Vâng, em thử.)* |

---

## Tình huống 6 — Căng tin Toyonaka · 12:30, ăn trưa với cohort

*Bàn 6 người. Đại, Yamato, Aiko, Lin Wei, Rajesh.*

| Vai | Lời thoại |
|---|---|
| Yamato | (định食) ダイ、<ruby>午前中<rt>ごぜんちゅう</rt></ruby>のHTML、どうやった?<br>*(Đại, HTML buổi sáng thế nào?)* |
| Đại | <ruby>最初<rt>さいしょ</rt></ruby>はタグの<ruby>閉<rt>と</rt></ruby>じ<ruby>忘<rt>わす</rt></ruby>れで<ruby>表示<rt>ひょうじ</rt></ruby>されなかったけど、<ruby>中村先生<rt>なかむらせんせい</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えてくれた。<br>*(Đầu tiên quên đóng thẻ nên không hiện. Nhưng Nakamura-sensei chỉ rồi.)* |
| Lin Wei | <ruby>俺<rt>おれ</rt></ruby>はAtCoderでC++ばっかりやってたから、HTMLは<ruby>新鮮<rt>しんせん</rt></ruby>。<br>*(Mình toàn làm AtCoder C++ nên HTML mới mẻ.)* |
| Rajesh | (English mix) Same. I came from competitive programming. <ruby>フロントエンド<rt>ふろんとえんど</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて。<br>*(Y chang. Mình từ competitive programming. Frontend là lần đầu.)* |
| Aiko | <ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>私<rt>わたし</rt></ruby>はアルゴリズムが<ruby>苦手<rt>にがて</rt></ruby>。<ruby>得意分野<rt>とくいぶんや</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うね。<br>*(Ngược lại mình kém thuật toán. Sở trường khác nhau ha.)* |
| Đại | だからこそチームでやると<ruby>面白<rt>おもしろ</rt></ruby>い。<br>*(Cũng vì vậy mà làm team mới thú vị.)* |

---

## Tình huống 7 — Giảng đường DB · 14:00, Takahashi-sensei chào lớp DB入門

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>皆<rt>みな</rt></ruby>さん、こんにちは。<ruby>高橋<rt>たかはし</rt></ruby>です。DB<ruby>入門<rt>にゅうもん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Chào các bạn. Tôi là Takahashi. Phụ trách DB入門.)* |
| Cả lớp | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mong sensei giúp đỡ.)* |
| Takahashi | <ruby>本講座<rt>ほんこうざ</rt></ruby>はPostgreSQL <ruby>16<rt>じゅうろく</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。MySQLの<ruby>経験<rt>けいけん</rt></ruby>がある<ruby>人<rt>ひと</rt></ruby>は?<br>*(Lớp này dùng PostgreSQL 16. Ai có kinh nghiệm MySQL?)* |
| (5 người giơ tay) | |
| Takahashi | では、PostgreSQLだけ<ruby>使<rt>つか</rt></ruby>ったことがある<ruby>人<rt>ひと</rt></ruby>は?<br>*(Vậy ai chỉ dùng PostgreSQL thôi?)* |
| Đại | (giơ tay) はい、<ruby>個人<rt>こじん</rt></ruby>プロジェクトで<ruby>少<rt>すこ</rt></ruby>し<ruby>使<rt>つか</rt></ruby>いました。<br>*(Em ạ, dự án cá nhân em dùng chút ít.)* |
| Takahashi | いいですね。<ruby>本格的<rt>ほんかくてき</rt></ruby>な<ruby>正規化<rt>せいきか</rt></ruby>とSQLを<ruby>勉強<rt>べんきょう</rt></ruby>しましょう。<br>*(Tốt. Chúng ta sẽ học chuẩn hoá và SQL bài bản.)* |

---

## Tình huống 8 — Phòng lab DB · 15:30, Đại hỏi lại khi chưa hiểu term

| Vai | Lời thoại |
|---|---|
| Takahashi | この<ruby>例<rt>れい</rt></ruby>は<ruby>第三正規形<rt>だいさんせいきけい</rt></ruby>になっています。<ruby>推移的関数従属<rt>すいいてきかんすうじゅうぞく</rt></ruby>が<ruby>除去<rt>じょきょ</rt></ruby>されています。<br>*(Ví dụ này đã ở dạng 3NF. Đã loại bỏ phụ thuộc hàm bắc cầu.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、すみません。「<ruby>推移的関数従属<rt>すいいてきかんすうじゅうぞく</rt></ruby>」というのは?<br>*(Sensei xin lỗi. "Phụ thuộc hàm bắc cầu" nghĩa là gì ạ?)* |
| Takahashi | いい<ruby>質問<rt>しつもん</rt></ruby>です。Aが Bを<ruby>決<rt>き</rt></ruby>めて、 Bが Cを<ruby>決<rt>き</rt></ruby>める<ruby>場合<rt>ばあい</rt></ruby>、Aから Cへの<ruby>従属<rt>じゅうぞく</rt></ruby>を<ruby>推移的<rt>すいいてき</rt></ruby>と<ruby>呼<rt>よ</rt></ruby>びます。<br>*(Câu hỏi hay. Khi A quyết định B, B quyết định C, thì phụ thuộc từ A đến C gọi là bắc cầu.)* |
| Đại | もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>例<rt>れい</rt></ruby>があると<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Sensei nói lại lần nữa được không ạ. Có ví dụ thì dễ hiểu hơn.)* |
| Takahashi | <ruby>学生<rt>がくせい</rt></ruby><ruby>表<rt>ひょう</rt></ruby>で、<ruby>学籍番号<rt>がくせきばんごう</rt></ruby>→<ruby>学科<rt>がっか</rt></ruby>→<ruby>学部長<rt>がくぶちょう</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Trong bảng sinh viên: mã SV → khoa → trưởng khoa. Hiểu chưa?)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました! ありがとうございます。<br>*(Em hiểu rồi! Cảm ơn sensei.)* |

---

## Tình huống 9 — Phòng lab · 16:30, viết SQL đầu tiên

| Vai | Lời thoại |
|---|---|
| Takahashi | では、<ruby>各自<rt>かくじ</rt></ruby>`users`テーブルを<ruby>作<rt>つく</rt></ruby>ってください。<br>*(Mỗi người tự tạo bảng `users` nhé.)* |
| Đại | (gõ `CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(100), email VARCHAR(200) UNIQUE);`) <ruby>先生<rt>せんせい</rt></ruby>、これでいいですか?<br>*(Sensei, vậy được không ạ?)* |
| Takahashi | (xem) <ruby>正解<rt>せいかい</rt></ruby>です。`created_at TIMESTAMP DEFAULT NOW()`も<ruby>追加<rt>ついか</rt></ruby>すると<ruby>実用的<rt>じつようてき</rt></ruby>です。<br>*(Đúng rồi. Thêm `created_at TIMESTAMP DEFAULT NOW()` nữa là thực dụng.)* |
| Đại | はい、<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Vâng, em thêm.)* |
| Takahashi | <ruby>次<rt>つぎ</rt></ruby>はINSERTと SELECT を<ruby>練習<rt>れんしゅう</rt></ruby>してください。<br>*(Tiếp tục luyện INSERT và SELECT nhé.)* |

---

## Tình huống 10 — Sảnh Toyonaka · 17:30, gọi Yamada-senpai chúc mừng lên cao học

| Vai | Lời thoại |
|---|---|
| Đại | (LINE call) <ruby>山田先輩<rt>やまだせんぱい</rt></ruby>、ご<ruby>無沙汰<rt>ぶさた</rt></ruby>しております。ダイです。<br>*(Senpai Yamada, lâu rồi không gặp. Em là Đại.)* |
| Yamada | (Osaka-ben) おお、ダイ! <ruby>元気<rt>げんき</rt></ruby>か?<br>*(Ô Đại! Khoẻ không?)* |
| Đại | はい、<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>になりました。<ruby>修士<rt>しゅうし</rt></ruby><ruby>進学<rt>しんがく</rt></ruby>おめでとうございます!<br>*(Vâng, em lên năm 2 rồi. Chúc mừng senpai lên cao học!)* |
| Yamada | おおきに! Inoue<ruby>研<rt>けん</rt></ruby>、めっちゃ<ruby>面白<rt>おもろ</rt></ruby>いで。<br>*(Cảm ơn! Lab Inoue thú vị lắm đó.)* |
| Đại | <ruby>後期<rt>こうき</rt></ruby>に<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>見学<rt>けんがく</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってもいいですか?<br>*(Cuối kỳ em qua thăm lab được không ạ?)* |
| Yamada | <ruby>歓迎<rt>かんげい</rt></ruby>するで! <ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>くらい?<br>*(Welcome luôn! Tháng 10 nhé?)* |
| Đại | はい、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vâng, tháng 10 em liên lạc senpai.)* |

---

## Tình huống 11 — Hankyu Toyonaka · 18:00, trên tàu về nhà gọi Tony-san

*Đại lên tàu Hankyu Toyonaka về Senri-chuo. Bấm gọi Tony-san để chào sau khi chuyển apt.*

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ダイです。ご<ruby>無沙汰<rt>ぶさた</rt></ruby>しております。<br>*(Chú Tony, cháu Đại đây. Lâu rồi không gặp chú.)* |
| Tony | (Osaka-ben) おお、ダイ<ruby>君<rt>くん</rt></ruby>! <ruby>元気<rt>げんき</rt></ruby>か? マイさんも<ruby>来<rt>き</rt></ruby>てくれはったんやろ?<br>*(Ô cậu Đại! Khoẻ không? Cô Mai cũng sang rồi nhỉ?)* |
| Đại | はい、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>2日<rt>ふつか</rt></ruby>に<ruby>来日<rt>らいにち</rt></ruby>しました。<ruby>千里中央<rt>せんりちゅうおう</rt></ruby>の<ruby>2DK<rt>ニーディーケー</rt></ruby>に<ruby>住<rt>す</rt></ruby>んでいます。<br>*(Vâng, sang Nhật ngày 2 tháng 5. Vợ chồng cháu ở căn 2DK Senri-chuo ạ.)* |
| Tony | <ruby>千里<rt>せんり</rt></ruby>か! ここから<ruby>近<rt>ちか</rt></ruby>いやんけ! <ruby>今度<rt>こんど</rt></ruby><ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>てや、ユミも<ruby>会<rt>あ</rt></ruby>いたがってる。<br>*(Senri à! Gần đây mà! Lần tới qua chơi nhé, cô Yumi cũng muốn gặp.)* |
| Đại | はい、ぜひ! <ruby>日曜日<rt>にちようび</rt></ruby>はいかがですか?<br>*(Vâng, nhất định ạ! Chủ nhật được không ạ?)* |
| Tony | <ruby>日曜日<rt>にちようび</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>夕食<rt>ゆうしょく</rt></ruby><ruby>用意<rt>ようい</rt></ruby>するわ。マイさんも<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Chủ nhật 7 giờ tối, chú chuẩn bị bữa tối. Cả Mai cùng nhé.)* |
| Đại | ありがとうございます。<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Cảm ơn chú. Cháu mong được đến ạ.)* |

---

## Tình huống 12 — Apt Senri-chuo · 19:30, về nhà — Mai đón cửa

| Vai | Lời thoại |
|---|---|
| Đại | ただいま!<br>*(Anh về rồi!)* |
| Mai | おかえりなさい! <ruby>今日<rt>きょう</rt></ruby>はどうでしたか?<br>*(Anh về rồi! Hôm nay thế nào ạ?)* |
| Đại | (tiếng Việt) Anh ngạc nhiên, em đã chuyển sang chào kiểu Nhật được rồi nhỉ! |
| Mai | (tiếng Việt) Em luyện ở Yamato School ấy. Câu đầu tiên cô dạy luôn! |
| Đại | (tiếng Việt) Giỏi quá. Hôm nay Nakamura-sensei dạy HTML, Takahashi-sensei dạy SQL. Anh hỏi senpai Yamada cho đi tham quan lab Inoue tháng 10. |
| Mai | (tiếng Việt) Còn cô chú Tony? |
| Đại | (tiếng Việt) Cô chú mời hai vợ chồng mình ăn tối Chủ nhật 7 giờ. |
| Mai | (tiếng Việt) Hồi hộp quá. Lần đầu em gặp gia đình homestay của anh. |

---

## Tình huống 13 — Cảnh tiếng Việt cuối · 22:00, hai vợ chồng nói chuyện trên giường

> Cảnh tiếng Việt — vợ chồng Đại-Mai nói chuyện trước khi ngủ, ôn lại các từ Nhật đã học trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | Anh ơi, hôm nay anh học mấy mẫu câu gì? Dạy em đi. |
| Đại | Có mấy mẫu hay lắm. Một là `質問があります` — "em có câu hỏi" — để giơ tay phát biểu trong lecture. |
| Mai | À, em biết câu này. Cô ở Yamato School cũng dạy. Còn câu nào nữa? |
| Đại | `見ていただけますか` — "sensei xem giúp em được không ạ?" — dạng khiêm nhường khi nhờ sensei review code. |
| Mai | Lễ phép ghê. Còn câu gì khi không hiểu? |
| Đại | `〜というのは?` — "〜 nghĩa là gì ạ?". Hỏi lại sensei khi gặp thuật ngữ chưa hiểu. Hôm nay anh dùng với từ 推移的関数従属 — phụ thuộc hàm bắc cầu trong DB. |
| Mai | Khó vậy. Còn câu chào homestay-family thì sao? |
| Đại | `ご無沙汰しております` — "lâu rồi không liên lạc anh/chú/cô". Mở đầu khi gọi cho người đã lâu không gặp. |
| Mai | Em ghi note lại nha. Mai em mang đến Yamato School khoe cô. |
| Đại | Ừ. Chủ nhật mình sang cô chú Tony nha, em chuẩn bị quà gì đó nhỏ nhỏ. |
| Mai | Em mang phở khô ST25 với gói cà phê G7 nhé. |
| Đại | Tuyệt. Ngủ ngon em. |
| Mai | Ngủ ngon anh. |

---

## Đọng lại chương 1

Ngày đầu năm 2 đại học Osaka mở ra với 6 mẫu câu Đại sẽ dùng cả năm. Buổi sáng Đại học **「よろしくお願いします」** chào Nakamura-sensei buổi đầu Web技術 I, dùng **「質問があります」** giơ tay hỏi về Vue. Khi code không chạy, Đại biết nhờ **「見ていただけますか」** lễ phép xin sensei review, và khi làm xong báo cáo **「できました」**. Buổi chiều DB入門 với Takahashi-sensei dạy 第三正規形 — Đại hỏi lại bằng **「〜というのは?」** + **「もう一度お願いします」** khi chưa hiểu thuật ngữ 推移的関数従属. Cuối ngày Đại gọi Yamada-senpai và Tony-san bằng **「ご無沙汰しております」**, đặt lịch tham quan lab Inoue tháng 10 và bữa tối Chủ nhật với cô chú Tony. Tối cùng Mai ôn từ trên giường — cộng đồng mới (cohort + homestay-family + senpai cao học) bắt đầu hình thành.

> Từ vựng & mẫu câu chương này: 質問があります・見ていただけますか・できました・〜というのは?・もう一度お願いします・ご無沙汰しております・よろしくお願いします・推移的関数従属・第三正規形・初歩的なミス・装飾・正規化・修士進学・研究室見学・歓迎・PostgreSQL 16・SERIAL・PRIMARY KEY・Tailwind CSS・Utility-first

## Bí quyết chương

- **「〜というのは?」 + 「もう一度お願いします」** là combo cứu mạng khi học thuật ngữ CS chuyên ngành — sensei sẽ giải thích lại có ví dụ.
- Báo cáo tiến độ với sensei luôn mở đầu bằng **「できました」** và đóng bằng **「見ていただけますか」** — formal và respectful.
- Chào homestay-family sau thời gian xa cách dùng **「ご無沙汰しております」** — không bao giờ dùng `久しぶり` casual khi gọi người lớn tuổi hơn.
- Cohort cùng năm 2: mỗi đứa một nền tảng (Yamato hệ thống, Lin Wei/Rajesh competitive programming, Aiko Figma design, Đại từ Hack U). Khác biệt = bổ trợ.
- Yamada-senpai lên Inoue lab = khởi đầu cho tham quan lab Đại tháng 10.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 技術 | ぎじゅつ | KỸ THUẬT | kỹ thuật, công nghệ |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 授業 | じゅぎょう | THỤ NGHIỆP | giờ học, lớp học |
| 基礎 | きそ | CƠ SỞ | cơ bản, nền tảng |
| 後半 | こうはん | HẬU BÁN | nửa sau |
| 質問 | しつもん | CHẤT VẤN | câu hỏi |
| 扱う | あつかう | — | xử lý, đề cập đến |
| 集中 | しゅうちゅう | TẬP TRUNG | tập trung |
| 本格的 | ほんかくてき | BẢN CÁCH ĐÍCH | bài bản, chính thức |
| 実装 | じっそう | THỰC TRANG | implement, triển khai |
| 業界標準 | ぎょうかいひょうじゅん | NGHIỆP GIỚI TIÊU CHUẨN | chuẩn ngành |
| 後期 | こうき | HẬU KỲ | hậu kỳ, học kỳ sau |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 初歩的 | しょほてき | SƠ BỘ ĐÍCH | sơ đẳng |
| 拡張機能 | かくちょうきのう | KHUẾCH TRƯƠNG CƠ NĂNG | extension, plugin |
| 装飾 | そうしょく | TRANG SỨC | trang trí, styling |
| 入門 | にゅうもん | NHẬP MÔN | nhập môn |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 個人 | こじん | CÁ NHÂN | cá nhân |
| 正規化 | せいきか | CHÍNH QUY HOÁ | chuẩn hoá (DB) |
| 第三正規形 | だいさんせいきけい | ĐỆ TAM CHÍNH QUY HÌNH | dạng chuẩn 3 (3NF) |
| 推移的関数従属 | すいいてきかんすうじゅうぞく | SUY DI ĐÍCH HÀM SỐ TÒNG THUỘC | phụ thuộc hàm bắc cầu |
| 除去 | じょきょ | TRỪ KHỬ | loại bỏ |
| 従属 | じゅうぞく | TÒNG THUỘC | phụ thuộc |
| 学籍番号 | がくせきばんごう | HỌC TỊCH PHIÊN HIỆU | mã số sinh viên |
| 学科 | がっか | HỌC KHOA | khoa, ngành |
| 学部長 | がくぶちょう | HỌC BỘ TRƯỞNG | trưởng khoa |
| 正解 | せいかい | CHÍNH GIẢI | đáp án đúng |
| 追加 | ついか | TRUY GIA | thêm vào |
| 実用的 | じつようてき | THỰC DỤNG ĐÍCH | thực dụng |
| 練習 | れんしゅう | LUYỆN TẬP | luyện tập |
| 修士進学 | しゅうししんがく | TU SĨ TIẾN HỌC | lên cao học |
| 研究室見学 | けんきゅうしつけんがく | NGHIÊN CỨU THẤT KIẾN HỌC | thăm phòng nghiên cứu |
| 歓迎 | かんげい | HOAN NGHÊNH | hoan nghênh |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000002, 800000022, NULL, 'markdown_book', 'T2. Mai sang Nhật — Thủ tục 在留カード + 国民健康保険', '# Sách sinh viên Đại học Osaka · T2. Mai sang Nhật — Thủ tục 在留カード + 国民健康保険

> **Mục tiêu nhân vật:** 5/2027, Mai (vợ Đại) chính thức sang Nhật visa 家族滞在. Học các mẫu hội thoại tiếng Nhật khi đón vợ và làm thủ tục đầu tiên ở Toyonaka: (1) đón vợ tại sân bay Kansai, (2) làm 住所登録 và nhận 在留カード ở City Hall keigo formal 「お手続きをお願いいたします」, (3) đăng ký 国民健康保険 「保険料はいくらでしょうか」, (4) mở tài khoản Yucho Bank 「口座開設をしたいのですが」, (5) tiệc 歓迎会 cohort welcome Mai 「お世話になっております」, (6) gọi điện về mẹ ở Hà Nội báo tin yên ổn.

---

## Bối cảnh

Tháng 5 năm 2027. Mai (22t, vừa tốt nghiệp sư phạm Hà Nội) chính thức sang Nhật ngày 2/5 với visa 家族滞在. Apt 2DK Senri-chuo đã sẵn sàng. Một tuần đầu: ra sân bay đón, City Hall Toyonaka làm 住所登録 + 在留カード + マイナンバー + 国民健康保険, mở tài khoản Yucho. Tuần 2 cohort Yamato/Aiko/Lin Wei/Rajesh tổ chức 歓迎会 chào Mai. Chương này tập trung các mẫu câu keigo thủ tục hành chính + mẫu câu chào người vợ mới sang Nhật trong tiệc welcome.

---

## Tình huống 1 — Sân bay Kansai cửa đến · 14:00 ngày 2/5, đón vợ

*Đại đứng cửa đến quốc tế sảnh KIX, cầm bó hoa nhỏ. Cửa tự động mở, Mai đẩy 3 vali xanh đỏ ra.*

| Vai | Lời thoại |
|---|---|
| Mai | (vẫy tay) Anh ơi!!! |
| Đại | (chạy ôm) Em! Mệt không em? |
| Mai | (tiếng Việt) Mệt chết đi được, chuyến bay 6 tiếng mà ngồi hạng phổ thông. Nhưng nhìn thấy anh là khoẻ lại luôn. |
| Đại | (tiếng Việt) Hành lý 3 vali cơ á? |
| Mai | (tiếng Việt) Áo dài, nồi nấu phở, gia vị Việt với 5kg gạo ST25 đó anh. |
| Đại | (tiếng Việt) Em lo xa quá! Osaka có siêu thị Việt rồi. |
| Mai | (tiếng Việt) Mang để yên tâm. Mình về nhà nhanh đi, em buồn ngủ. |
| Đại | (tiếng Việt) Tàu Nankai Rapi:t 50 phút về Namba, đổi sang Midosuji line lên Senri-chuo. Bám chặt vali kẻo lạc nha. |

---

## Tình huống 2 — Apt Senri-chuo · 17:00, lần đầu Mai vào nhà mới

| Vai | Lời thoại |
|---|---|
| Đại | (mở cửa) ただいま — à không, lần đầu thì phải nói khác. ようこそ、<ruby>俺<rt>おれ</rt></ruby>たちの<ruby>家<rt>いえ</rt></ruby>に!<br>*(Anh về rồi — à không, lần đầu thì phải nói khác. Chào mừng vào nhà mình!)* |
| Mai | (tiếng Việt) Trời ơi sạch sẽ ghê! Anh dọn dẹp khéo thật! |
| Đại | (dẫn đi xem) Phòng ngủ bên này, phòng làm việc anh code buổi tối bên kia. Bếp DK với phòng tắm. Wifi 1Gbps. Nồi cơm Zojirushi mới. |
| Mai | (tiếng Việt) Em ngủ giường nào ạ? |
| Đại | (tiếng Việt) Chung với anh chứ. Phòng làm việc chỉ để bàn code thôi. |
| Mai | (ôm) ありがとう、あなた。<br>*(Cảm ơn anh.)* |
| Đại | (tiếng Việt) Mai 9 giờ sáng mình đi City Hall Toyonaka làm 住所登録. Trong vòng 14 ngày kể từ nhập cảnh là luật. |
| Mai | (tiếng Việt) Vâng, em chuẩn bị giấy tờ. |

---

## Tình huống 3 — Toyonaka City Hall quầy 在留管理 · 9:00 ngày 4/5

*Quầy số 5, biển ghi "外国人住民登録". Officer nữ 40t mặc áo xanh navy.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>住所登録<rt>じゅうしょとうろく</rt></ruby>のお<ruby>手続<rt>てつづ</rt></ruby>きをお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào chị. Cháu xin nhờ làm thủ tục đăng ký địa chỉ.)* |
| Officer | <ruby>初<rt>はじ</rt></ruby>めての<ruby>住所登録<rt>じゅうしょとうろく</rt></ruby>でいらっしゃいますか。<br>*(Quý vị đăng ký địa chỉ lần đầu phải không ạ?)* |
| Đại | はい、<ruby>妻<rt>つま</rt></ruby>が<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザで<ruby>来日<rt>らいにち</rt></ruby>しました。<br>*(Vâng, vợ cháu sang Nhật bằng visa gia đình lưu trú ạ.)* |
| Officer | パスポート、<ruby>入国時<rt>にゅうこくじ</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby>カード、それと<ruby>賃貸契約書<rt>ちんたいけいやくしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Quý vị cho mượn hộ chiếu, thẻ cư trú lúc nhập cảnh, và hợp đồng thuê nhà ạ.)* |
| Đại | (đưa giấy tờ) こちらでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đây ạ.)* |
| Officer | <ruby>確認<rt>かくにん</rt></ruby>いたします... マイ・ファムさんですね。<ruby>住所<rt>じゅうしょ</rt></ruby>は<ruby>千里中央<rt>せんりちゅうおう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>丁目<rt>ちょうめ</rt></ruby>。<br>*(Tôi xác nhận... Cô Mai Phạm đúng không. Địa chỉ Senri-chuo phường 1.)* |
| Mai | はい、そうです。<br>*(Vâng, đúng ạ.)* |
| Officer | (in 在留カード) <ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ほどお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Xin đợi khoảng 15 phút ạ.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng nhờ chị.)* |

---

## Tình huống 4 — City Hall · 9:20, hỏi thêm về マイナンバー

| Vai | Lời thoại |
|---|---|
| Officer | (đưa 在留カード) こちらマイ・ファムさんの<ruby>在留<rt>ざいりゅう</rt></ruby>カードでございます。<br>*(Đây là thẻ cư trú của cô Mai Phạm ạ.)* |
| Đại | ありがとうございます。マイナンバーカードも<ruby>申請<rt>しんせい</rt></ruby>できますでしょうか?<br>*(Cảm ơn chị. Cháu có thể đăng ký My Number Card luôn được không ạ?)* |
| Officer | はい、<ruby>同時<rt>どうじ</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby>できます。<ruby>通知<rt>つうち</rt></ruby>カードが<ruby>後日<rt>ごじつ</rt></ruby><ruby>郵送<rt>ゆうそう</rt></ruby>されます。<br>*(Vâng, có thể đăng ký cùng lúc. Thẻ thông báo sẽ được gửi qua bưu điện sau.)* |
| Đại | カード<ruby>本体<rt>ほんたい</rt></ruby>は どのくらいで<ruby>届<rt>とど</rt></ruby>きますか?<br>*(Thẻ chính bao lâu thì nhận được ạ?)* |
| Officer | <ruby>約<rt>やく</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>ヶ月後<rt>かげつご</rt></ruby>に<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>っていただけます。<ruby>本人<rt>ほんにん</rt></ruby>がお<ruby>越<rt>こ</rt></ruby>しください。<br>*(Khoảng 1 tháng sau quý vị đến nhận. Phải là bản thân đến ạ.)* |
| Mai | <ruby>分<rt>わ</rt></ruby>かりました。お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em hiểu rồi. Nhờ chị giúp ạ.)* |
| Officer | <ruby>申請書<rt>しんせいしょ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>写真<rt>しゃしん</rt></ruby>はそちらの<ruby>機械<rt>きかい</rt></ruby>で<ruby>撮<rt>と</rt></ruby>れます。<br>*(Quý vị điền đơn ạ. Ảnh chụp ở máy đằng kia.)* |

---

## Tình huống 5 — City Hall quầy 保険 · 11:00, đăng ký 国民健康保険

| Vai | Lời thoại |
|---|---|
| Đại | すみません、<ruby>国民健康保険<rt>こくみんけんこうほけん</rt></ruby>の<ruby>加入<rt>かにゅう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cháu xin lỗi, cháu nhờ đăng ký bảo hiểm y tế quốc dân luôn ạ.)* |
| Officer 2 | はい、<ruby>在留<rt>ざいりゅう</rt></ruby>カードをお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>収入<rt>しゅうにゅう</rt></ruby>はございますか?<br>*(Vâng, cho mượn thẻ cư trú ạ. Có thu nhập không ạ?)* |
| Mai | いいえ、<ruby>収入<rt>しゅうにゅう</rt></ruby>は <ruby>0<rt>ゼロ</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Không ạ, thu nhập 0 yên.)* |
| Officer 2 | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>保険料<rt>ほけんりょう</rt></ruby>は<ruby>月額<rt>げつがく</rt></ruby><ruby>1,500<rt>せんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>最低<rt>さいてい</rt></ruby><ruby>額<rt>がく</rt></ruby>となります。<br>*(Tôi đã rõ. Phí bảo hiểm 1.500 yên/tháng, mức tối thiểu.)* |
| Đại | <ruby>保険料<rt>ほけんりょう</rt></ruby>はいくらでしょうか? — あ、<ruby>1,500<rt>せんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>ですね。<ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>は?<br>*(Phí bảo hiểm bao nhiêu ạ? — À, 1.500 yên ạ. Cách thanh toán?)* |
| Officer 2 | <ruby>口座振替<rt>こうざふりかえ</rt></ruby>か、コンビニでの<ruby>納付書払<rt>のうふしょばら</rt></ruby>いを<ruby>選<rt>えら</rt></ruby>べます。<br>*(Có thể chọn rút tự động từ tài khoản, hoặc thanh toán bằng phiếu ở konbini.)* |
| Đại | では、<ruby>後日<rt>ごじつ</rt></ruby><ruby>口座<rt>こうざ</rt></ruby>を<ruby>開設<rt>かいせつ</rt></ruby>してから<ruby>口座振替<rt>こうざふりかえ</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>します。<ruby>当面<rt>とうめん</rt></ruby>はコンビニ<ruby>払<rt>ばら</rt></ruby>いで。<br>*(Vậy hôm sau bọn cháu mở tài khoản rồi đổi sang rút tự động. Trước mắt thanh toán konbini ạ.)* |
| Officer 2 | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>納付書<rt>のうふしょ</rt></ruby>を<ruby>郵送<rt>ゆうそう</rt></ruby>いたします。<br>*(Tôi đã rõ. Sẽ gửi phiếu thanh toán qua bưu điện.)* |

---

## Tình huống 6 — Bên ngoài City Hall · 12:00, Mai hỏi lại Đại

*Hai vợ chồng ra cửa City Hall, cầm trên tay 在留カード mới in, biên lai 国民健康保険.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, 国民健康保険 là bảo hiểm gì vậy? Em nghe officer giải thích mà chưa hiểu hết. |
| Đại | (tiếng Việt) Bảo hiểm y tế quốc dân. Toàn dân Nhật bắt buộc, người nước ngoài ở >3 tháng cũng phải tham gia. Đi viện chỉ trả 30%, 70% bảo hiểm chi. |
| Mai | (tiếng Việt) 1.500 yên một tháng rẻ quá. Ở Việt Nam cũng tầm 100 nghìn mà chi trả 70% — Nhật chất lượng cao hơn nhiều. |
| Đại | (tiếng Việt) Đúng. Em sẽ thấy khác biệt khi nào ốm. Giờ mình sang Yucho Bank mở tài khoản. |

---

## Tình huống 7 — Yucho Bank Senri-chuo · 13:30, mở tài khoản

| Vai | Lời thoại |
|---|---|
| Đại | こんにちは。<ruby>妻<rt>つま</rt></ruby>の<ruby>口座<rt>こうざ</rt></ruby><ruby>開設<rt>かいせつ</rt></ruby>をしたいのですが。<br>*(Chào chị. Cháu muốn mở tài khoản cho vợ ạ.)* |
| Teller | はい、ありがとうございます。<ruby>在留<rt>ざいりゅう</rt></ruby>カード、パスポート、ご<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>印鑑<rt>いんかん</rt></ruby>かサインをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cảm ơn quý vị. Cho mượn thẻ cư trú, hộ chiếu, và con dấu hoặc chữ ký của bản thân ạ.)* |
| Mai | <ruby>印鑑<rt>いんかん</rt></ruby>はまだ<ruby>持<rt>も</rt></ruby>っていません。サインでもいいですか?<br>*(Em chưa có con dấu. Ký tên có được không ạ?)* |
| Teller | はい、サインで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でございます。こちらの<ruby>用紙<rt>ようし</rt></ruby>にご<ruby>記入<rt>きにゅう</rt></ruby>ください。<br>*(Vâng, ký tên được ạ. Quý vị điền vào tờ này.)* |
| Mai | (điền form, ký katakana) マイ・ファム<br> |
| Teller | キャッシュカードは<ruby>1<rt>いっ</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>にご<ruby>自宅<rt>じたく</rt></ruby>に<ruby>郵送<rt>ゆうそう</rt></ruby>されます。<br>*(Thẻ ATM một tuần sau sẽ gửi đến nhà ạ.)* |
| Mai | ありがとうございます。<br>*(Cảm ơn chị ạ.)* |

---

## Tình huống 8 — Izakaya Senri-chuo · 19:00 ngày 10/5, 歓迎会 cohort welcome Mai

*Bàn izakaya tầng 2 phố Senri-chuo. 5 cohort + Mai = 6 người. Yamato đứng dậy nâng ly.*

| Vai | Lời thoại |
|---|---|
| Yamato | (Osaka-ben) マイさんの<ruby>来日<rt>らいにち</rt></ruby><ruby>歓迎会<rt>かんげいかい</rt></ruby>やで! みんな、<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Tiệc mừng Mai sang Nhật nha! Mọi người, cạn ly!)* |
| Cả nhóm | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Mai | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>主人<rt>しゅじん</rt></ruby>がいつもお<ruby>世話<rt>せわ</rt></ruby>になっております。マイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, chồng em luôn được mọi người giúp đỡ. Em là Mai. Mong mọi người chiếu cố.)* |
| Aiko | マイさん、<ruby>日本語<rt>にほんご</rt></ruby>お<ruby>上手<rt>じょうず</rt></ruby>ですね!<br>*(Mai, tiếng Nhật giỏi quá!)* |
| Mai | ありがとうございます。<ruby>去年<rt>きょねん</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>にN3に<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>今<rt>いま</rt></ruby>N2を<ruby>準備<rt>じゅんび</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Cảm ơn ạ. Tháng 12 năm ngoái em đỗ N3. Hiện đang ôn N2.)* |
| Lin Wei | Mai, what did you study in Vietnam?<br>*(Mai, học gì hồi ở Việt Nam thế?)* |
| Mai | <ruby>大学<rt>だいがく</rt></ruby>で<ruby>英語教育<rt>えいごきょういく</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>しました。<ruby>今年<rt>ことし</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>卒業<rt>そつぎょう</rt></ruby>しました。<br>*(Em học sư phạm tiếng Anh đại học. Tốt nghiệp tháng 4 năm nay.)* |
| Rajesh | Cool! Maybe teach English here too?<br>*(Hay! Sang đây cũng dạy à?)* |
| Mai | <ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>からヤマト<ruby>語学院<rt>ごがくいん</rt></ruby>でN2を<ruby>勉強<rt>べんきょう</rt></ruby>します。その<ruby>後<rt>あと</rt></ruby><ruby>考<rt>かんが</rt></ruby>えます。<br>*(Tháng 9 em vào Yamato Language School ôn N2. Sau đó tính tiếp.)* |

---

## Tình huống 9 — Izakaya · 20:30, Đại giới thiệu Mai chi tiết hơn

| Vai | Lời thoại |
|---|---|
| Đại | みんな、マイは<ruby>俺<rt>おれ</rt></ruby>と<ruby>高校<rt>こうこう</rt></ruby>から<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>っている。<ruby>6<rt>ろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>遠距離<rt>えんきょり</rt></ruby><ruby>恋愛<rt>れんあい</rt></ruby>を<ruby>経<rt>へ</rt></ruby>て、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>にハノイで<ruby>結婚式<rt>けっこんしき</rt></ruby>をした。<br>*(Mọi người, Mai và mình yêu nhau từ cấp 3. 6 năm yêu xa, tháng 3 vừa rồi tổ chức đám cưới ở Hà Nội.)* |
| Aiko | わぁ、<ruby>素敵<rt>すてき</rt></ruby>!<ruby>6<rt>ろく</rt></ruby><ruby>年<rt>ねん</rt></ruby>って すごい!<br>*(Wow lãng mạn! 6 năm đỉnh quá!)* |
| Yamato | (Osaka-ben) ダイ、<ruby>真面目<rt>まじめ</rt></ruby>な<ruby>男<rt>おとこ</rt></ruby>やんけ! マイさん、<ruby>苦労<rt>くろう</rt></ruby><ruby>多<rt>おお</rt></ruby>かったでしょう?<br>*(Đại, đàn ông nghiêm túc thật đó! Mai chắc vất vả nhiều ha?)* |
| Mai | <ruby>正直<rt>しょうじき</rt></ruby><ruby>言<rt>い</rt></ruby>うと、<ruby>大変<rt>たいへん</rt></ruby>でした。でも、<ruby>主人<rt>しゅじん</rt></ruby>が<ruby>毎日<rt>まいにち</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>くれたので、<ruby>頑張<rt>がんば</rt></ruby>れました。<br>*(Thật lòng mà nói, vất vả. Nhưng chồng em ngày nào cũng liên lạc nên em cố được.)* |
| Lin Wei | <ruby>感動<rt>かんどう</rt></ruby>した。<br>*(Cảm động.)* |
| Rajesh | Đại, you got a good wife!<br>*(Đại, cậu có vợ tốt đấy!)* |

---

## Tình huống 10 — Apt Senri-chuo · 22:30, về nhà sau tiệc

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, mọi người trong nhóm tốt ghê. Em thấy đỡ lo hẳn. |
| Đại | (tiếng Việt) Yamato vui tính nhất. Aiko thì cùng tuổi em, hai đứa có thể chơi cùng. Lin Wei với Rajesh nghiêm túc nhưng chân thật. |
| Mai | (tiếng Việt) Em nói "主人がお世話になっております" có đúng không anh? Em hơi run khi nói. |
| Đại | (tiếng Việt) Chuẩn 100%. Câu mẫu chào cảm ơn vì chồng/vợ/con được giúp đỡ. Em nói tự nhiên lắm. |
| Mai | (tiếng Việt) Cô ở Yamato School Hà Nội dạy. Em luyện cả tháng trước khi sang. |
| Đại | (tiếng Việt) Mai mình gọi điện về cho mẹ em đi, mẹ đang lo. |

---

## Tình huống 11 — Cảnh tiếng Việt cuối · 23:00, Mai gọi mẹ Hà Nội

> Cảnh tiếng Việt — Mai gọi video call với mẹ ruột ở Hà Nội, kể chuyện một tuần đầu ở Nhật.

| Vai | Lời thoại |
|---|---|
| Mẹ Mai | (qua video) Mai ơi! Con khoẻ không con? Mẹ lo cả tuần đây này. |
| Mai | Con khoẻ mẹ ạ. Tuần này con bận làm thủ tục. Mẹ biết 在留カード là gì không? Thẻ cư trú đấy ạ. |
| Mẹ Mai | Con có chỗ ở ổn không? |
| Mai | Apt 2DK Senri-chuo, sạch sẽ ấm áp. Anh Đại dọn dẹp khéo ghê mẹ. |
| Mẹ Mai | Còn bảo hiểm y tế thế nào? Bên Nhật đắt không con? |
| Mai | 1.500 yên một tháng thôi mẹ ơi, vì con chưa có thu nhập. Đi viện chỉ trả 30% mà chất lượng cao hơn nhiều. Hơn cả VN. |
| Mẹ Mai | Mẹ yên tâm rồi. Còn ngân hàng? |
| Mai | Con mở Yucho Bank rồi, thẻ tuần sau gửi về nhà. Có cả My Number nữa, một tháng nữa nhận. |
| Mẹ Mai | Anh Đại có chăm con không? |
| Mai | Chăm lắm mẹ ạ. Hôm nay nhóm bạn cùng khoá anh ấy tổ chức tiệc welcome con. Toàn người trẻ tốt bụng. Có cả Aiko cùng tuổi con. |
| Mẹ Mai | Tháng 9 con vào trường tiếng nhỉ? Cố ôn N2 nha con. |
| Mai | Vâng mẹ. Mẹ giữ gìn sức khoẻ. Cuối tuần con với anh Đại sang cô chú Tony — homestay-family cũ của anh Đại. |
| Mẹ Mai | Ừ con. Mai gọi nha. Chào con. |
| Mai | Dạ chào mẹ. |

---

## Đọng lại chương 2

Một tuần đầu của Mai ở Nhật là một chuỗi mẫu câu keigo hành chính Đại đã chuẩn bị sẵn cho vợ. Tại sân bay Kansai, Đại đón Mai về Senri-chuo bằng Nankai Rapi:t + Midosuji line. Tại Toyonaka City Hall, Đại dùng **「お手続きをお願いいたします」** để bắt đầu 住所登録, **「マイナンバーカードも申請できますでしょうか」** đăng ký My Number Card, **「保険料はいくらでしょうか」** hỏi phí 国民健康保険 1.500 yên/tháng. Tại Yucho Bank Senri-chuo, dùng **「口座開設をしたいのですが」** mở tài khoản cho Mai. Tại 歓迎会 izakaya, Mai tự giới thiệu bằng **「主人がいつもお世話になっております」** — câu chào vợ kinh điển trong văn hoá Nhật, được cohort khen 上手. Cuối tuần Mai gọi video về mẹ Hà Nội, báo các thủ tục đã xong và yên ổn.

> Từ vựng & mẫu câu chương này: 住所登録・在留カード・マイナンバーカード・国民健康保険・口座開設・家族滞在ビザ・お手続きをお願いいたします・〜はいくらでしょうか・口座振替・納付書払い・お世話になっております・歓迎会・乾杯・申請書・賃貸契約書・口座振替・印鑑・キャッシュカード・遠距離恋愛・準備中

## Bí quyết chương

- **「お手続きをお願いいたします」** — câu mở đầu khi bước vào quầy hành chính, formal hơn 「〜したい」 nhiều.
- **「〜できますでしょうか」** — câu hỏi khả năng cực lễ phép, an toàn dùng với officer mọi tình huống.
- **「主人がお世話になっております」** — câu vợ chào người quen của chồng, hoặc 「家内が」 ngược lại. Người nói ko bao giờ dùng 妻/夫 trực tiếp khi giới thiệu cho người ngoài.
- 14 ngày sau nhập cảnh là deadline pháp lý cho 住所登録 — quên = phạt tiền.
- Yucho Bank dùng được ATM toàn quốc miễn phí — chọn ưu tiên cho người mới đến, sau khi quen thì mở thêm Mitsubishi UFJ hoặc Mizuho.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 来日 | らいにち | LAI NHẬT | sang Nhật |
| 住所登録 | じゅうしょとうろく | TRỤ SỞ ĐĂNG LỤC | đăng ký địa chỉ |
| 手続き | てつづき | THỦ TỤC | thủ tục |
| 在留カード | ざいりゅうカード | TẠI LƯU | thẻ cư trú |
| 家族滞在 | かぞくたいざい | GIA TỘC TRỆ TẠI | gia đình lưu trú (visa) |
| 賃貸契約書 | ちんたいけいやくしょ | THUÊ MƯỚN KHẾ ƯỚC THƯ | hợp đồng thuê nhà |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 申請 | しんせい | THÂN THỈNH | đăng ký, nộp đơn |
| 通知 | つうち | THÔNG TRI | thông báo |
| 郵送 | ゆうそう | BƯU TỐNG | gửi qua bưu điện |
| 本人 | ほんにん | BẢN NHÂN | bản thân |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | đơn đăng ký |
| 記入 | きにゅう | KÝ NHẬP | điền vào |
| 国民健康保険 | こくみんけんこうほけん | QUỐC DÂN KIỆN KHANG BẢO HIỂM | bảo hiểm y tế quốc dân |
| 加入 | かにゅう | GIA NHẬP | tham gia |
| 収入 | しゅうにゅう | THU NHẬP | thu nhập |
| 保険料 | ほけんりょう | BẢO HIỂM LIỆU | phí bảo hiểm |
| 月額 | げつがく | NGUYỆT NGẠCH | mức/tháng |
| 最低額 | さいていがく | TỐI ĐÊ NGẠCH | mức tối thiểu |
| 支払い方法 | しはらいほうほう | CHI TRẢ PHƯƠNG PHÁP | phương thức thanh toán |
| 口座振替 | こうざふりかえ | KHẨU TOẠ CHẤN THẾ | rút tự động từ tài khoản |
| 納付書 | のうふしょ | NỘP PHÓ THƯ | phiếu thanh toán |
| 当面 | とうめん | ĐƯƠNG DIỆN | trước mắt |
| 口座開設 | こうざかいせつ | KHẨU TOẠ KHAI THIẾT | mở tài khoản |
| 印鑑 | いんかん | ẤN GIÁM | con dấu |
| 用紙 | ようし | DỤNG CHỈ | tờ giấy, biểu mẫu |
| 歓迎会 | かんげいかい | HOAN NGHÊNH HỘI | tiệc chào mừng |
| 乾杯 | かんぱい | CAN BÔI | cạn ly |
| 主人 | しゅじん | CHỦ NHÂN | chồng (mình nói) |
| 合格 | ごうかく | HỢP CÁCH | đỗ, trúng tuyển |
| 準備中 | じゅんびちゅう | CHUẨN BỊ TRUNG | đang chuẩn bị |
| 英語教育 | えいごきょういく | ANH NGỮ GIÁO DỤC | sư phạm tiếng Anh |
| 卒業 | そつぎょう | TỐT NGHIỆP | tốt nghiệp |
| 遠距離恋愛 | えんきょりれんあい | VIỄN CỰ LY LUYẾN ÁI | tình yêu xa |
| 結婚式 | けっこんしき | KẾT HÔN THỨC | lễ cưới |
| 苦労 | くろう | KHỔ LAO | vất vả |
| 正直 | しょうじき | CHÍNH TRỰC | thật lòng |
| 感動 | かんどう | CẢM ĐỘNG | xúc động |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000003, 800000022, NULL, 'markdown_book', 'T3. FE đỗ + 勉強会 Osaka.rb đầu tiên', '# Sách sinh viên Đại học Osaka · T3. FE đỗ + 勉強会 Osaka.rb đầu tiên

> **Mục tiêu nhân vật:** 6/2027. Đại biết tin đỗ FE (基本情報技術者試験) và lần đầu tham dự 勉強会 Ruby community Osaka.rb tại văn phòng Cybozu Honmachi. Học các mẫu hội thoại tiếng Nhật của sinh viên CS năm 2 trong tech community: (1) báo tin đỗ FE với cohort 「合格しました」, (2) hỏi senpai về 勉強会 「〜について教えてください」, (3) tự giới thiệu khi đến meetup lần đầu 「初めて参加させていただきます」, (4) đặt câu hỏi cho LT speaker 「質問してもよろしいでしょうか」, (5) trao danh thiếp với engineer chuyên nghiệp 「名刺交換させていただけますか」, (6) gọi điện về Mai báo tin được mời intern.

---

## Bối cảnh

Tháng 6 năm 2027. Kết quả FE công bố ngày 5/6 — Đại 720+685 đỗ cả hai科目, Yamato 780+720, Lin Wei 920+880 top score. Yamato giới thiệu Đại lần đầu đến 勉強会 Osaka.rb lần 128 tại Cybozu Osaka office Honmachi tầng 8 ngày 15/6. Tại kết nối chuyên ngành, Đại gặp Inomata-san (engineer Cybozu 40t) — mời ứng tuyển intern hè 2 tuần. Chương này tập trung các mẫu câu báo tin tốt, tự giới thiệu nơi xa lạ, đặt câu hỏi nghiêm túc, và trao danh thiếp formal.

---

## Tình huống 1 — Apt Senri-chuo · 9:00 ngày 5/6, login IPA xem kết quả FE

*Đại ngồi máy tính phòng làm việc nhỏ, Mai đứng sau lưng. Trang IPA đang loading.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai, đếm cùng anh 3 2 1 click Enter nha. |
| Mai | (tiếng Việt) 3... 2... 1... click! |
| Đại | (xem màn hình) <ruby>合格<rt>ごうかく</rt></ruby>!!! <ruby>科目<rt>かもく</rt></ruby>A <ruby>720<rt>ななひゃくにじゅう</rt></ruby>、<ruby>科目<rt>かもく</rt></ruby>B <ruby>685<rt>ろっぴゃくはちじゅうご</rt></ruby>!<br>*(Đỗ!!! Khoa A 720, Khoa B 685!)* |
| Mai | (tiếng Việt) Ô anh ơi chúc mừng! Chứng chỉ quốc gia đầu tiên rồi đó! |
| Đại | (ôm Mai) よっしゃー! <ruby>朝<rt>あさ</rt></ruby>から<ruby>最高<rt>さいこう</rt></ruby>!<br>*(Yessss! Sáng sớm sướng quá!)* |
| Mai | (tiếng Việt) Báo nhóm cohort đi anh. |

---

## Tình huống 2 — LINE group cohort · 9:15, báo tin

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) みんな!FEの<ruby>結果<rt>けっか</rt></ruby><ruby>出<rt>で</rt></ruby>たで! <ruby>俺<rt>おれ</rt></ruby><ruby>科目<rt>かもく</rt></ruby>A <ruby>720<rt>ななひゃくにじゅう</rt></ruby>、<ruby>科目<rt>かもく</rt></ruby>B <ruby>685<rt>ろっぴゃくはちじゅうご</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Mọi người ơi! Kết quả FE ra rồi! Mình A 720, B 685 đỗ!)* |
| Yamato | (LINE, Osaka-ben) <ruby>俺<rt>おれ</rt></ruby>もや!<ruby>780<rt>ななひゃくはちじゅう</rt></ruby>＋<ruby>720<rt>ななひゃくにじゅう</rt></ruby>!<ruby>合格<rt>ごうかく</rt></ruby>! 🎉<br>*(Tớ cũng đỗ! 780+720! 🎉)* |
| Lin Wei | (LINE) <ruby>920<rt>きゅうひゃくにじゅう</rt></ruby>+<ruby>880<rt>はっぴゃくはちじゅう</rt></ruby>でした。<br>*(Mình 920+880.)* |
| Aiko | え、リン<ruby>君<rt>くん</rt></ruby><ruby>満点近<rt>まんてんちか</rt></ruby>い!すごい!<br>*(Hả, Lin gần điểm tối đa! Đỉnh quá!)* |
| Rajesh | (LINE) Pass! 750+710.<br>*(Đỗ! 750+710.)* |
| Aiko | (LINE) <ruby>私<rt>わたし</rt></ruby><ruby>650<rt>ろっぴゃくごじゅう</rt></ruby>＋<ruby>610<rt>ろっぴゃくじゅう</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>!ギリギリやけど、<ruby>嬉<rt>うれ</rt></ruby>しい!<br>*(Mình 650+610 đỗ! Sát nút nhưng vui quá!)* |
| Đại | みんな<ruby>合格<rt>ごうかく</rt></ruby>!すごいで!<ruby>今度<rt>こんど</rt></ruby><ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>こう!<br>*(Cả nhóm đỗ! Đỉnh thật! Hôm nào đi nhậu nhé!)* |

---

## Tình huống 3 — Sảnh Toyonaka campus · 12:30, Yamato rủ đi 勉強会

*Đại và Yamato đứng dưới cây ginkgo cạnh thư viện, vừa ăn bento konbini.*

| Vai | Lời thoại |
|---|---|
| Yamato | (Osaka-ben) ダイ、Osaka.rbの<ruby>勉強会<rt>べんきょうかい</rt></ruby>に<ruby>来<rt>こ</rt></ruby>うへん?<ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>19<rt>じゅうく</rt></ruby><ruby>時<rt>じ</rt></ruby>、サイボウズの<ruby>本町<rt>ほんまち</rt></ruby>オフィスや。<br>*(Đại, đi 勉強会 Osaka.rb không? Ngày 15 lúc 19h, văn phòng Cybozu Honmachi.)* |
| Đại | <ruby>勉強会<rt>べんきょうかい</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えてください。<ruby>初<rt>はじ</rt></ruby>めてやから、よく<ruby>分<rt>わ</rt></ruby>からへん。<br>*(Cho tớ biết về 勉強会 với. Lần đầu nên chưa rõ.)* |
| Yamato | <ruby>勉強会<rt>べんきょうかい</rt></ruby>は<ruby>技術<rt>ぎじゅつ</rt></ruby>コミュニティの<ruby>集<rt>つど</rt></ruby>いや。<ruby>毎月<rt>まいつき</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>、エンジニアが<ruby>集<rt>あつ</rt></ruby>まって LT する。<br>*(勉強会 là buổi tụ tập cộng đồng tech. Mỗi tháng 1 lần, engineer tụ tập làm LT.)* |
| Đại | LTって?<br>*(LT là gì?)* |
| Yamato | Lightning Talk —<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>でサクッと<ruby>発表<rt>はっぴょう</rt></ruby>。<ruby>誰<rt>だれ</rt></ruby>でも<ruby>登壇<rt>とうだん</rt></ruby>できる。<ruby>聞<rt>き</rt></ruby>くだけでもOK。<br>*(Lightning Talk — phát biểu nhanh 5 phút. Ai cũng lên nói được. Đến nghe không cũng OK.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>、Rubyまだ<ruby>知<rt>し</rt></ruby>らへんねん。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かな?<br>*(Tớ chưa biết Ruby. Có sao không nhỉ?)* |
| Yamato | <ruby>初心者<rt>しょしんしゃ</rt></ruby>でも<ruby>大歓迎<rt>だいかんげい</rt></ruby>や。<ruby>俺<rt>おれ</rt></ruby>もRailsちょっとしか<ruby>触<rt>さわ</rt></ruby>ったことないし。<br>*(Người mới cũng được hoan nghênh. Tớ cũng chỉ chạm Rails chút thôi.)* |
| Đại | じゃあ、<ruby>行<rt>い</rt></ruby>く!<ruby>面白<rt>おもしろ</rt></ruby>そう!<br>*(Vậy tớ đi! Có vẻ thú vị!)* |

---

## Tình huống 4 — Apt Senri-chuo · 18:00 ngày 15/6, chuẩn bị đi 勉強会

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh mặc áo gì? Đi Cybozu office mà. |
| Đại | (tiếng Việt) Engineer Nhật toàn mặc casual. Áo phông + jeans là OK. Có khi formal hơn thấy lạc lõng. |
| Mai | (tiếng Việt) Mang theo danh thiếp gì không? |
| Đại | (tiếng Việt) Sinh viên không có danh thiếp công ty. Anh in tạm 20 cái danh thiếp cá nhân tuần trước rồi. Có tên, link vandai.dev, email, LINE ID. |
| Mai | (tiếng Việt) Nhớ chào lễ phép nha. Engineer Nhật ở meetup formal lắm đấy. |
| Đại | (tiếng Việt) Vâng. Anh tập câu mở đầu rồi: 「初めて参加させていただきます」. |
| Mai | (tiếng Việt) Câu khiêm nhường ghê. Đi nhé anh. |

---

## Tình huống 5 — Cybozu Osaka tầng 8 Honmachi · 18:50, reception lần đầu

*Đại bước vào sảnh tầng 8. Bàn reception có cô gái 25t mặc áo trắng cười tươi.*

| Vai | Lời thoại |
|---|---|
| Reception | こんばんは! Osaka.rb の<ruby>参加<rt>さんか</rt></ruby>でしょうか?<br>*(Chào tối. Anh là người tham gia Osaka.rb ạ?)* |
| Đại | はい、ダイ・グエンと<ruby>申<rt>もう</rt></ruby>します。<ruby>初<rt>はじ</rt></ruby>めて<ruby>参加<rt>さんか</rt></ruby>させていただきます。<br>*(Vâng, em là Đại Nguyễn. Em xin phép tham dự lần đầu ạ.)* |
| Reception | ようこそ! こちらが<ruby>名札<rt>なふだ</rt></ruby>です。お<ruby>名前<rt>なまえ</rt></ruby>と<ruby>所属<rt>しょぞく</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Mời vào! Đây là thẻ tên. Anh viết tên và nơi học/làm việc giúp ạ.)* |
| Đại | (viết) <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>、ダイ・グエン<br> |
| Reception | <ruby>大学生<rt>だいがくせい</rt></ruby>さんですね!<ruby>若<rt>わか</rt></ruby>い<ruby>方<rt>かた</rt></ruby><ruby>大歓迎<rt>だいかんげい</rt></ruby>です。<ruby>奥<rt>おく</rt></ruby>の<ruby>会場<rt>かいじょう</rt></ruby>へどうぞ。<br>*(Sinh viên à! Hoan nghênh người trẻ ạ. Mời vào hội trường phía trong.)* |
| Đại | ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Cảm ơn chị. Em xin phép.)* |

---

## Tình huống 6 — Hội trường tầng 8 · 19:00, organizer mở đầu

*30 ghế kê hình chữ U. Whiteboard có ghi "Osaka.rb #128". Organizer Saitou-san (35t) đứng micro.*

| Vai | Lời thoại |
|---|---|
| Saitou | <ruby>皆<rt>みな</rt></ruby>さん、こんばんは。Osaka.rb<ruby>第<rt>だい</rt></ruby><ruby>128<rt>ひゃくにじゅうはち</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>勉強会<rt>べんきょうかい</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>します。<br>*(Mọi người chào tối. Bắt đầu 勉強会 Osaka.rb lần 128.)* |
| Saitou | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>参加者<rt>さんかしゃ</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>。<ruby>初参加<rt>はつさんか</rt></ruby>の<ruby>方<rt>かた</rt></ruby>はいらっしゃいますか?<br>*(Hôm nay 30 người tham gia. Ai dự lần đầu xin giơ tay ạ?)* |
| Đại + 2 người | (giơ tay)<br> |
| Saitou | おお、<ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>! <ruby>歓迎<rt>かんげい</rt></ruby>します。お<ruby>名前<rt>なまえ</rt></ruby>を<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Ô 3 người! Hoan nghênh. Tự giới thiệu tên theo lượt nhé.)* |
| Đại | (đứng) <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>のダイ・グエンです。ベトナムからの<ruby>留学生<rt>りゅうがくせい</rt></ruby>です。Ruby はまだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>ですが、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em chào mọi người. Em là Đại Nguyễn, năm 2 khoa Khoa học Thông tin Đại học Osaka. Du học sinh Việt Nam. Ruby vẫn đang học, mong mọi người chiếu cố.)* |
| Cả phòng | (vỗ tay) <br> |
| Saitou | ベトナムから!<ruby>素晴<rt>すば</rt></ruby>らしい。では、LT<ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Từ Việt Nam! Tuyệt thật. Vậy bắt đầu 3 LT.)* |

---

## Tình huống 7 — Sau LT 1 · 19:30, đặt câu hỏi cho speaker

*LT 1 vừa xong, slide tiêu đề "Rails 7.2 の新機能" của speaker Nishida-san (Mercari Osaka).*

| Vai | Lời thoại |
|---|---|
| Saitou | <ruby>質問<rt>しつもん</rt></ruby>ある<ruby>方<rt>かた</rt></ruby>?<br>*(Ai có câu hỏi?)* |
| Đại | (giơ tay) <ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか。<br>*(Em xin được đặt câu hỏi ạ.)* |
| Nishida | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>のダイです。Rails 7.2の Solid Cache は、Redis の<ruby>代替<rt>だいたい</rt></ruby>として<ruby>使<rt>つか</rt></ruby>えますか?<br>*(Em Đại năm 2 Đại học Osaka. Solid Cache của Rails 7.2 có dùng được thay cho Redis không ạ?)* |
| Nishida | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>用途<rt>ようと</rt></ruby>によります。<ruby>小規模<rt>しょうきぼ</rt></ruby>なら DB-backed Solid Cacheで<ruby>十分<rt>じゅうぶん</rt></ruby>ですが、<ruby>大規模<rt>だいきぼ</rt></ruby>な<ruby>場合<rt>ばあい</rt></ruby>はやはり Redis の<ruby>方<rt>ほう</rt></ruby>が<ruby>速<rt>はや</rt></ruby>いです。<br>*(Câu hỏi hay. Tuỳ use case. Quy mô nhỏ thì DB-backed Solid Cache đủ, quy mô lớn thì Redis vẫn nhanh hơn.)* |
| Đại | ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Cảm ơn anh. Em học được nhiều ạ.)* |
| Nishida | <ruby>後<rt>あと</rt></ruby>でゆっくり<ruby>話<rt>はな</rt></ruby>しましょう。<br>*(Lát nữa mình nói chuyện kỹ.)* |

---

## Tình huống 8 — Sau LT 3 · 20:30, kết nối chuyên ngành đứng quanh bàn ăn nhẹ

*Pizza + Asahi + Calpis bày trên bàn. Đại đứng cạnh Yamato, nhìn quanh tìm người để bắt chuyện.*

| Vai | Lời thoại |
|---|---|
| Yamato | (Osaka-ben) ダイ、<ruby>誰<rt>だれ</rt></ruby>か<ruby>話<rt>はな</rt></ruby>しかけてみ。<ruby>名刺<rt>めいし</rt></ruby><ruby>持<rt>も</rt></ruby>ってきたやろ?<br>*(Đại, thử bắt chuyện ai đi. Mang danh thiếp rồi đúng không?)* |
| Đại | うん、<ruby>20<rt>にじゅう</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>持<rt>も</rt></ruby>ってきた。<br>*(Ừ, 20 cái.)* |
| Inomata-san | (đến gần) こんばんは。<ruby>先<rt>さき</rt></ruby>ほどの<ruby>質問<rt>しつもん</rt></ruby>、よかったですね。<br>*(Chào tối. Câu hỏi vừa nãy hay đấy.)* |
| Đại | あ、ありがとうございます!<br>*(Vâng, cảm ơn anh!)* |
| Inomata-san | サイボウズの<ruby>猪股<rt>いのまた</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi là Inomata bên Cybozu. Rất mong được làm quen.)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>のダイ・グエンです。<ruby>名刺<rt>めいし</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>させていただけますか?<br>*(Em là Đại Nguyễn năm 2 Đại học Osaka. Em xin phép được trao đổi danh thiếp ạ.)* |
| Inomata-san | はい、ぜひ。 (hai tay đưa danh thiếp) <br> |
| Đại | (hai tay nhận, đọc tên rồi cất ngực trái) ちょうだいいたします。<ruby>猪股様<rt>いのまたさま</rt></ruby>ですね。<br>*(Em xin nhận. Anh Inomata phải không ạ.)* |
| Đại | (đưa danh thiếp cá nhân hai tay) <ruby>個人<rt>こじん</rt></ruby><ruby>名刺<rt>めいし</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、こちらお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin lỗi anh là danh thiếp cá nhân, đây ạ.)* |
| Inomata-san | (nhận, xem) vandai.dev... ポートフォリオサイト!<ruby>素晴<rt>すば</rt></ruby>らしい。<br>*(vandai.dev... Trang portfolio! Tuyệt thật.)* |

---

## Tình huống 9 — Kết nối chuyên ngành · 21:00, Inomata mời intern hè

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、サイボウズ<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>インターン、<ruby>応募<rt>おうぼ</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えてみませんか?<br>*(Đại, em có cân nhắc ứng tuyển intern hè ở Cybozu Osaka không?)* |
| Đại | はい!<ruby>是非<rt>ぜひ</rt></ruby><ruby>応募<rt>おうぼ</rt></ruby>したいです。<ruby>期間<rt>きかん</rt></ruby>はどのくらいでしょうか?<br>*(Vâng! Em rất muốn ứng tuyển. Thời gian khoảng bao lâu ạ?)* |
| Inomata | <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>から<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>のプログラムです。<ruby>有給<rt>ゆうきゅう</rt></ruby>、<ruby>日給<rt>にっきゅう</rt></ruby><ruby>1万<rt>いちまん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<br>*(Cuối tháng 7 đến giữa tháng 8, chương trình 2 tuần. Có lương, 10.000 yên/ngày.)* |
| Đại | <ruby>応募<rt>おうぼ</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh chỉ cách ứng tuyển giúp em ạ.)* |
| Inomata | <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>からサイボウズの<ruby>採用<rt>さいよう</rt></ruby>サイトで<ruby>受付<rt>うけつけ</rt></ruby>します。<ruby>履歴書<rt>りれきしょ</rt></ruby>とGitHubリンクがあればOK。<ruby>俺<rt>おれ</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>するで。<br>*(Từ 1/7 mở nhận hồ sơ trên trang tuyển dụng Cybozu. Có CV và link GitHub là được. Anh phụ trách.)* |
| Đại | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>応募<rt>おうぼ</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em nhất định ứng tuyển. Mong anh giúp đỡ ạ.)* |
| Inomata | <ruby>頑張<rt>がんば</rt></ruby>って。<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>俺<rt>おれ</rt></ruby>のチームに<ruby>来<rt>き</rt></ruby>てや。Kintone のフロントエンドチームや。<br>*(Cố lên. Đỗ rồi qua team anh — team frontend Kintone.)* |

---

## Tình huống 10 — Cybozu sảnh thang máy · 21:30, chia tay Yamato

| Vai | Lời thoại |
|---|---|
| Yamato | (Osaka-ben) ダイ、すごいやんけ! インターン<ruby>誘<rt>さそ</rt></ruby>われた!<br>*(Đại đỉnh quá! Được mời intern rồi!)* |
| Đại | まだ<ruby>応募<rt>おうぼ</rt></ruby>するだけや。<ruby>選考<rt>せんこう</rt></ruby><ruby>通<rt>とお</rt></ruby>るか<ruby>分<rt>わ</rt></ruby>からへん。<br>*(Mới chỉ ứng tuyển thôi. Chưa biết có đỗ không.)* |
| Yamato | <ruby>担当者<rt>たんとうしゃ</rt></ruby><ruby>本人<rt>ほんにん</rt></ruby>が<ruby>誘<rt>さそ</rt></ruby>ってるんやから<ruby>絶対<rt>ぜったい</rt></ruby><ruby>通<rt>とお</rt></ruby>るで。<br>*(Người phụ trách trực tiếp mời mà — chắc chắn đỗ.)* |
| Đại | <ruby>勉強会<rt>べんきょうかい</rt></ruby><ruby>初<rt>はじ</rt></ruby>めて<ruby>来<rt>き</rt></ruby>てよかった。ヤマト、<ruby>誘<rt>さそ</rt></ruby>ってくれてありがとう。<br>*(Mừng vì lần đầu đến 勉強会. Yamato, cảm ơn vì rủ.)* |
| Yamato | コミュニティの<ruby>力<rt>ちから</rt></ruby>やで。<ruby>毎月<rt>まいつき</rt></ruby><ruby>来<rt>き</rt></ruby>たらええわ。<br>*(Sức mạnh cộng đồng đó. Tháng nào cũng đến nha.)* |

---

## Tình huống 11 — Trên tàu Midosuji line · 22:00, Đại gọi Mai

*Đại ngồi tàu Midosuji line về Senri-chuo. Tai nghe Bluetooth. Mai bắt máy ngay.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi sao rồi? Có vui không? |
| Đại | (tiếng Việt) Em ơi, anh được mời intern Cybozu Osaka rồi! 2 tuần tháng 7-8, lương 10.000 yên/ngày! |
| Mai | (tiếng Việt) Ô trời ơi sao nhanh vậy! Mới đi lần đầu mà! |
| Đại | (tiếng Việt) Anh đặt câu hỏi cho LT speaker, anh Inomata bên Cybozu nghe thấy nên đến bắt chuyện. Trao danh thiếp xong anh ấy mời luôn. |
| Mai | (tiếng Việt) Danh thiếp anh in tuần trước có chỗ dùng rồi đó. |
| Đại | (tiếng Việt) 19h tối ngày 1/7 mở nhận hồ sơ. Anh sẽ gửi sớm. CV + link GitHub + vandai.dev. |
| Mai | (tiếng Việt) Tuyệt vời. Hôm nay anh dùng câu khiêm nhường gì hay không? |
| Đại | (tiếng Việt) `初めて参加させていただきます` — em xin được tham dự lần đầu. Câu khiêm nhường nhất. |
| Mai | (tiếng Việt) Cô ở Yamato School dạy em mới hôm qua! Em ghi note nha. |
| Đại | (tiếng Việt) Còn `名刺交換させていただけますか` — em xin được trao danh thiếp. Engineer Nhật trao danh thiếp formal lắm — phải hai tay. |
| Mai | (tiếng Việt) Anh về sớm em đợi cơm. |

---

## Tình huống 12 — Cảnh tiếng Việt cuối · 23:30, Đại ghi nhật ký bên cạnh Mai

> Cảnh tiếng Việt — Đại ngồi bàn viết nhật ký bằng tiếng Việt, Mai nằm giường bên đọc sách N2, hai vợ chồng trò chuyện ngắn.

| Vai | Lời thoại |
|---|---|
| Đại | Em ơi, anh đang viết nhật ký ngày hôm nay đây. |
| Mai | Anh viết gì hôm nay? |
| Đại | "Ngày 15/6/2027. Buổi 勉強会 đầu tiên đời mình. Osaka.rb lần 128 ở Cybozu Honmachi tầng 8. 30 người. Mình là người trẻ nhất, du học sinh duy nhất." |
| Mai | Ý nghĩa quá. Còn gì nữa? |
| Đại | "Mình đứng dậy tự giới thiệu trước 30 engineer Nhật. Lần đầu nói tiếng Nhật trong môi trường ngoài campus. Run quá. Nhưng cả phòng vỗ tay. Cảm giác được công nhận." |
| Mai | Tự hào về anh ghê. Còn anh Inomata? |
| Đại | "Anh Inomata Cybozu engineer 40t, mặt hiền, nói chuyện rất chân thật. Mời mình intern hè 2 tuần. Tin đầu tiên trong sự nghiệp CS của mình ngoài campus." |
| Mai | Em cũng học theo anh. Yamato School khoá em có buổi 交流会 với học sinh trường khác tháng sau, em phải đi. |
| Đại | Đi đi em. Cộng đồng là sức mạnh — Yamato bảo anh thế tối nay. |
| Mai | Ngủ ngon anh. |
| Đại | Ngủ ngon em. |

---

## Đọng lại chương 3

Đại trải qua một ngày bản lề trong sự nghiệp CS: sáng biết tin **「合格しました」** FE 720+685, tối đi 勉強会 Osaka.rb lần 128 đầu tiên. Tại Cybozu Honmachi tầng 8, Đại dùng **「初めて参加させていただきます」** mở đầu lần đầu tới meetup, **「質問してもよろしいでしょうか」** đặt câu hỏi cho LT speaker Nishida-san về Solid Cache Rails 7.2. Tại kết nối chuyên ngành, Đại dùng **「名刺交換させていただけますか」** trao danh thiếp cá nhân vandai.dev với Inomata-san Cybozu — được mời ứng tuyển intern hè 2 tuần lương 10.000 yên/ngày. Đại học được 3 bài học cốt lõi: (a) cộng đồng = sức mạnh, (b) đặt câu hỏi nghiêm túc là cách nhanh nhất gây ấn tượng, (c) danh thiếp formal cần in sẵn ngay khi vào tech community. Cuối ngày Mai khoe Yamato School khoá em sẽ có 交流会 tháng sau — vợ chồng cùng học cách hoà nhập.

> Từ vựng & mẫu câu chương này: 合格しました・〜について教えてください・初めて参加させていただきます・質問してもよろしいでしょうか・名刺交換させていただけますか・ちょうだいいたします・勉強会・LT・Lightning Talk・登壇・初心者・大歓迎・所属・初参加・選考・有給・履歴書・採用サイト・コミュニティ・名札

## Bí quyết chương

- **「初めて参加させていただきます」** là câu mở đầu mạnh nhất cho meetup lần đầu — formal + khiêm nhường + cho biết bạn mới.
- Đặt **câu hỏi cụ thể** sau LT (không vague) = cách hiệu quả nhất để engineer xung quanh để ý.
- Trao danh thiếp ở Nhật: hai tay đưa, hai tay nhận, đọc tên thành tiếng `〜様ですね`, cất vào ngực trái (không bỏ túi quần). Câu chuẩn `名刺交換させていただけますか`.
- Sinh viên không có danh thiếp công ty → in danh thiếp cá nhân (tên + portfolio URL + email + LINE/X handle). 1.000 yên/100 cái ở Vistaprint.
- Inomata-san Cybozu mời intern = serendipity của community presence. Câu chuyện thật ở Osaka.rb #128.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 結果 | けっか | KẾT QUẢ | kết quả |
| 科目 | かもく | KHOA MỤC | môn học, khoa thi |
| 満点 | まんてん | MÃN ĐIỂM | điểm tối đa |
| 勉強会 | べんきょうかい | MIỄN CƯỜNG HỘI | buổi học nhóm, meetup |
| 登壇 | とうだん | ĐĂNG ĐÀN | lên bục, phát biểu |
| 初心者 | しょしんしゃ | SƠ TÂM GIẢ | người mới |
| 大歓迎 | だいかんげい | ĐẠI HOAN NGHÊNH | rất hoan nghênh |
| 参加 | さんか | THAM GIA | tham gia |
| 名札 | なふだ | DANH TRÁP | thẻ tên |
| 所属 | しょぞく | SỞ THUỘC | nơi làm việc/học |
| 会場 | かいじょう | HỘI TRƯỜNG | hội trường |
| 失礼 | しつれい | THẤT LỄ | xin phép, thất lễ |
| 開始 | かいし | KHAI THUỶ | bắt đầu |
| 参加者 | さんかしゃ | THAM GIA GIẢ | người tham dự |
| 初参加 | はつさんか | SƠ THAM GIA | lần đầu tham dự |
| 順番 | じゅんばん | THUẬN PHIÊN | theo lượt |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | du học sinh |
| 代替 | だいたい | ĐẠI THẾ | thay thế |
| 用途 | ようと | DỤNG ĐỒ | mục đích sử dụng |
| 小規模 | しょうきぼ | TIỂU QUY MÔ | quy mô nhỏ |
| 大規模 | だいきぼ | ĐẠI QUY MÔ | quy mô lớn |
| 名刺 | めいし | DANH THÍCH | danh thiếp |
| 名刺交換 | めいしこうかん | DANH THÍCH GIAO HOÁN | trao đổi danh thiếp |
| 採用 | さいよう | THẢI DỤNG | tuyển dụng |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | sơ yếu lý lịch, CV |
| 応募 | おうぼ | ỨNG MỘ | ứng tuyển |
| 期間 | きかん | KỲ GIAN | thời gian |
| 有給 | ゆうきゅう | HỮU CẤP | có lương |
| 日給 | にっきゅう | NHẬT CẤP | lương ngày |
| 選考 | せんこう | TUYỂN KHẢO | xét tuyển |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | người phụ trách |
| 提唱 | ていしょう | ĐỀ XƯỚNG | đề xuất |
| 交流会 | こうりゅうかい | GIAO LƯU HỘI | buổi giao lưu |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000004, 800000022, NULL, 'markdown_book', 'T4. Web技術 I — HTML/CSS/JS sang React + Next.js', '# Sách sinh viên Đại học Osaka · T4. Web技術 I — HTML/CSS/JS sang React + Next.js

> **Mục tiêu nhân vật:** 6-7/2027. Đại đào sâu HTML/CSS/JS vanilla rồi chuyển sang React + Next.js + Tailwind + TypeScript. Deploy portfolio vandai.dev lên Vercel. Học các mẫu hội thoại tiếng Nhật của sinh viên CS năm 2 trong lab thực hành web: (1) hỏi sensei khi gặp lỗi DOM 「エラーが出ました」, (2) thảo luận kiến trúc với cohort 「〜の方が良いと思います」, (3) review code với senpai 「コードレビューお願いできますか」, (4) đăng ký Cloudflare domain qua điện thoại keigo 「ドメインを取得したいのですが」, (5) khoe portfolio với vợ tiếng Việt, (6) showcase trước cohort 「これがポートフォリオです」.

---

## Bối cảnh

Tháng 6-7 năm 2027. Web技術 I của Nakamura-sensei đã sang giai đoạn 2 — từ HTML/CSS/JS vanilla chuyển sang React 18 + Next.js 14 + Tailwind + TypeScript. Bài tập cuối kỳ: mỗi sinh viên xây personal portfolio site, deploy live URL. Đại đặt mục tiêu **vandai.dev** — domain mua Cloudflare Registrar 800 yên/year, hosting Vercel free tier. Cohort Yamato, Aiko, Lin Wei, Rajesh cũng có site riêng. Chương này tập trung mẫu câu hỏi sensei khi debug, thảo luận tech choice với cohort, và showcase portfolio.

---

## Tình huống 1 — Phòng lab Toyonaka · 9:00, Nakamura giảng DOM + Event

| Vai | Lời thoại |
|---|---|
| Nakamura | DOM は Document Object Model の<ruby>略<rt>りゃく</rt></ruby>です。HTMLを JS で<ruby>操作<rt>そうさ</rt></ruby>するための<ruby>仕組<rt>しく</rt></ruby>みです。<br>*(DOM viết tắt của Document Object Model. Là cơ chế để dùng JS thao tác HTML.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、`getElementById` と `querySelector` の<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>でしょうか?<br>*(Sensei, sự khác nhau giữa `getElementById` và `querySelector` là gì ạ?)* |
| Nakamura | いい<ruby>質問<rt>しつもん</rt></ruby>です。`getElementById`は ID<ruby>専用<rt>せんよう</rt></ruby>で<ruby>速<rt>はや</rt></ruby>い。`querySelector`は CSS セレクタ<ruby>全般<rt>ぜんぱん</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>するが、<ruby>少<rt>すこ</rt></ruby>し<ruby>遅<rt>おそ</rt></ruby>い。<br>*(Câu hỏi hay. `getElementById` chỉ cho ID, nhanh. `querySelector` xử được CSS selector tổng quát nhưng chậm hơn chút.)* |
| Đại | <ruby>現場<rt>げんば</rt></ruby>ではどちらをよく<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Ngoài thực tế người ta dùng cái nào nhiều hơn ạ?)* |
| Nakamura | <ruby>最近<rt>さいきん</rt></ruby>は`querySelector`が<ruby>主流<rt>しゅりゅう</rt></ruby>です。<ruby>柔軟性<rt>じゅうなんせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いからです。<br>*(Gần đây `querySelector` là chính. Vì linh hoạt cao hơn.)* |

---

## Tình huống 2 — Phòng lab · 10:30, debug click event không chạy

*Đại viết button counter nhưng click không tăng số. Đại gõ console.log debug, không in gì.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、エラーが<ruby>出<rt>で</rt></ruby>ました。クリックしても<ruby>反応<rt>はんのう</rt></ruby>しません。<br>*(Sensei, em gặp lỗi. Click không phản hồi.)* |
| Nakamura | (đến xem) コンソールに<ruby>何<rt>なに</rt></ruby>か<ruby>表示<rt>ひょうじ</rt></ruby>されていますか?<br>*(Console có hiện gì không?)* |
| Đại | "Cannot read property ''addEventListener'' of null"と<ruby>出<rt>で</rt></ruby>ています。<br>*(Hiện "Cannot read property ''addEventListener'' of null" ạ.)* |
| Nakamura | <ruby>原因<rt>げんいん</rt></ruby>は スクリプトが <ruby>要素<rt>ようそ</rt></ruby>より<ruby>先<rt>さき</rt></ruby>に<ruby>実行<rt>じっこう</rt></ruby>されているからです。`<script>`タグを `<body>` の<ruby>最後<rt>さいご</rt></ruby>に<ruby>移動<rt>いどう</rt></ruby>するか、`defer`<ruby>属性<rt>ぞくせい</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>してください。<br>*(Nguyên nhân: script chạy trước khi element tồn tại. Em chuyển `<script>` xuống cuối `<body>` hoặc thêm thuộc tính `defer`.)* |
| Đại | (thêm `defer`) できました! クリックで<ruby>数字<rt>すうじ</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えます。ありがとうございます。<br>*(Em làm được rồi! Click tăng số rồi. Cảm ơn sensei.)* |
| Nakamura | DOM<ruby>関連<rt>かんれん</rt></ruby>のエラーで<ruby>一番<rt>いちばん</rt></ruby><ruby>多<rt>おお</rt></ruby>いのが この パターンです。<ruby>覚<rt>おぼ</rt></ruby>えておいてください。<br>*(Lỗi DOM phổ biến nhất là pattern này. Nhớ nha.)* |

---

## Tình huống 3 — Phòng lab · 14:00, Nakamura giới thiệu React

| Vai | Lời thoại |
|---|---|
| Nakamura | バニラJSは<ruby>小規模<rt>しょうきぼ</rt></ruby>では<ruby>十分<rt>じゅうぶん</rt></ruby>ですが、<ruby>規模<rt>きぼ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きくなると<ruby>状態管理<rt>じょうたいかんり</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>になります。そこで React を<ruby>導入<rt>どうにゅう</rt></ruby>します。<br>*(Vanilla JS đủ cho quy mô nhỏ, nhưng quy mô lớn thì quản lý state vất vả. Vì vậy ta dùng React.)* |
| Nakamura | React は Meta<ruby>社<rt>しゃ</rt></ruby>が<ruby>2013<rt>にせんじゅうさん</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>公開<rt>こうかい</rt></ruby>。コンポーネント<ruby>指向<rt>しこう</rt></ruby>と Virtual DOM が<ruby>特徴<rt>とくちょう</rt></ruby>です。<br>*(React do Meta phát hành năm 2013. Đặc trưng là hướng component và Virtual DOM.)* |
| Aiko | <ruby>先生<rt>せんせい</rt></ruby>、Vue との<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Sensei, khác Vue thế nào ạ?)* |
| Nakamura | React は JSXで JS の<ruby>柔軟性<rt>じゅうなんせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。Vue はテンプレート<ruby>記法<rt>きほう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>いやすい。<ruby>業界<rt>ぎょうかい</rt></ruby>シェアは React の<ruby>方<rt>ほう</rt></ruby>が<ruby>圧倒的<rt>あっとうてき</rt></ruby>に<ruby>高<rt>たか</rt></ruby>いです。<br>*(React dùng JSX, JS linh hoạt cao. Vue dùng template, dễ học. Thị phần ngành thì React áp đảo.)* |
| Đại | <ruby>就職<rt>しゅうしょく</rt></ruby>するなら React の<ruby>方<rt>ほう</rt></ruby>が<ruby>良<rt>よ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Đi xin việc thì học React tốt hơn phải không sensei?)* |
| Nakamura | はい。<ruby>特<rt>とく</rt></ruby>に<ruby>大手<rt>おおて</rt></ruby> IT は React が<ruby>主流<rt>しゅりゅう</rt></ruby>です。<br>*(Đúng. Đặc biệt IT lớn React là chính.)* |

---

## Tình huống 4 — Phòng lab · 15:30, Đại viết Counter component đầu

| Vai | Lời thoại |
|---|---|
| Đại | (gõ) `const [count, setCount] = useState(0);`<br> |
| Nakamura | (đi vòng quanh) グエンさん、useState は<ruby>状態管理<rt>じょうたいかんり</rt></ruby>フックです。`count` が<ruby>現在<rt>げんざい</rt></ruby>の<ruby>値<rt>あたい</rt></ruby>、`setCount` で<ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Đại, useState là hook quản lý state. `count` là giá trị hiện tại, `setCount` để cập nhật.)* |
| Đại | `setCount` を<ruby>呼<rt>よ</rt></ruby>ぶと どうなりますか?<br>*(Gọi `setCount` thì điều gì xảy ra ạ?)* |
| Nakamura | コンポーネントが<ruby>再描画<rt>さいびょうが</rt></ruby>されます。<ruby>差分<rt>さぶん</rt></ruby>のみ DOM に<ruby>反映<rt>はんえい</rt></ruby>されます。Virtual DOM の<ruby>仕組<rt>しく</rt></ruby>みです。<br>*(Component sẽ re-render. Chỉ phần khác biệt được phản ánh lên DOM. Cơ chế của Virtual DOM.)* |
| Đại | <ruby>効率的<rt>こうりつてき</rt></ruby>ですね。<br>*(Hiệu quả thật ha.)* |
| Aiko | (cạnh bên) Figmaのコンポーネントが React の コンポーネントに<ruby>1<rt>いっ</rt></ruby><ruby>対<rt>たい</rt></ruby><ruby>1<rt>いち</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>するのが<ruby>気持<rt>きも</rt></ruby>ちいい。<br>*(Component Figma map 1:1 với component React thấy phê ghê.)* |

---

## Tình huống 5 — Căng tin · 12:30, thảo luận stack với cohort

| Vai | Lời thoại |
|---|---|
| Lin Wei | <ruby>個人<rt>こじん</rt></ruby>サイトに <ruby>静的<rt>せいてき</rt></ruby>サイトジェネレーター<ruby>使<rt>つか</rt></ruby>うか、それとも Next.js<ruby>使<rt>つか</rt></ruby>うか<ruby>迷<rt>まよ</rt></ruby>っている。<br>*(Trang cá nhân mình phân vân dùng static site generator hay Next.js.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は Next.js の<ruby>方<rt>ほう</rt></ruby>が<ruby>良<rt>よ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>います。<ruby>将来<rt>しょうらい</rt></ruby>ブログとかAPI<ruby>追加<rt>ついか</rt></ruby>したい<ruby>時<rt>とき</rt></ruby>、<ruby>移行<rt>いこう</rt></ruby>しなくていいから。<br>*(Mình thấy Next.js tốt hơn. Tương lai thêm blog hay API thì không cần migrate.)* |
| Lin Wei | <ruby>確<rt>たし</rt></ruby>かに。<ruby>俺<rt>おれ</rt></ruby>は AWS Architecture を<ruby>記事<rt>きじ</rt></ruby>にしたい。<ruby>記事<rt>きじ</rt></ruby><ruby>機能<rt>きのう</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>やな。<br>*(Đúng đấy. Mình muốn viết bài về AWS Architecture. Cần chức năng blog.)* |
| Rajesh | I''ll use Astro instead. Faster.<br>*(Mình dùng Astro thay. Nhanh hơn.)* |
| Yamato | (Osaka-ben) アストロも<ruby>速<rt>はや</rt></ruby>いんやけど、エコシステムは Next.js の<ruby>方<rt>ほう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいで。<br>*(Astro cũng nhanh, nhưng hệ sinh thái Next.js lớn hơn.)* |
| Đại | TypeScript も<ruby>使<rt>つか</rt></ruby>うんやろ?<br>*(Có dùng TypeScript chứ?)* |
| Yamato | <ruby>当然<rt>とうぜん</rt></ruby>や。バニラJSはもう<ruby>書<rt>か</rt></ruby>かへん。<br>*(Đương nhiên. Không viết vanilla JS nữa.)* |

---

## Tình huống 6 — Phòng lab cuối tuần · Thứ 7 14:00, mua domain Cloudflare

*Đại ngồi trước laptop trong apt. Mở trang Cloudflare Registrar, đăng nhập, tìm `vandai.dev`.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi, vandai.dev còn trống! 800 yên/year! |
| Mai | (tiếng Việt) Mua đi anh. Tên domain phải có cá tính. |
| Đại | (terminal) `npx create-next-app@latest vandai-portfolio --typescript --tailwind --app`<br> |
| Đại | (code) Pages: `/` home, `/about`, `/projects`, `/blog`, `/contact`<br> |
| Đại | (tiếng Việt) Mai, em xem trang home anh viết tự giới thiệu chưa OK chưa? |
| Mai | (xem) (tiếng Việt) "Đại Nguyen — CS student @ Osaka University. Interested in web development, distributed systems, and bridging Vietnam-Japan." Hay ghê. |
| Đại | (deploy) `vercel --prod`<br> |
| Đại | (DNS Cloudflare) A record vandai.dev → Vercel<br> |
| Đại | (browser) https://vandai.dev → loaded! <br> |
| Đại | (tiếng Việt) Online rồi em ơi! |
| Mai | (ôm) (tiếng Việt) Anh là lập trình viên thực thụ rồi. |

---

## Tình huống 7 — Sảnh Toyonaka · 9:00 thứ 2, nhờ Yamato review code

| Vai | Lời thoại |
|---|---|
| Đại | (Osaka-ben mix) ヤマト、ちょっと コードレビューお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Yamato, cậu review code giúp mình được không?)* |
| Yamato | おお、ええで。vandai.devの<ruby>件<rt>けん</rt></ruby>?<br>*(OK đó. Vụ vandai.dev hả?)* |
| Đại | <ruby>主<rt>おも</rt></ruby>にコンポーネント<ruby>構成<rt>こうせい</rt></ruby>と TypeScript の<ruby>型定義<rt>かたていぎ</rt></ruby>。<ruby>初心者<rt>しょしんしゃ</rt></ruby>すぎる<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>になってないか<ruby>心配<rt>しんぱい</rt></ruby>。<br>*(Chính là cấu trúc component và type definition TypeScript. Lo viết kiểu newbie quá.)* |
| Yamato | (xem GitHub) `src/components/ProjectCard.tsx`... props の<ruby>型定義<rt>かたていぎ</rt></ruby>は OK や。ただ、<ruby>個別<rt>こべつ</rt></ruby>のtypeにせず、<ruby>共通<rt>きょうつう</rt></ruby> type `types.ts` に<ruby>切<rt>き</rt></ruby>り<ruby>出<rt>だ</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいで。<br>*(Type props OK. Nhưng nên tách thành file `types.ts` chung thay vì định nghĩa riêng từng chỗ.)* |
| Đại | なるほど、リファクタする。<ruby>他<rt>ほか</rt></ruby>は?<br>*(Hiểu rồi, mình refactor. Khác?)* |
| Yamato | `useState`の<ruby>初期値<rt>しょきち</rt></ruby>が`any`に なってる<ruby>場所<rt>ばしょ</rt></ruby>がある。<ruby>明示的<rt>めいじてき</rt></ruby>に<ruby>型<rt>かた</rt></ruby><ruby>指定<rt>してい</rt></ruby>して。<br>*(Có chỗ initial value của `useState` đang `any`. Chỉ định type rõ ràng đi.)* |
| Đại | ありがとう! <ruby>夜<rt>よる</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby>して、また<ruby>見<rt>み</rt></ruby>てもらってもいいですか?<br>*(Cảm ơn! Tối mình sửa, lát nhờ cậu xem lại nhé?)* |
| Yamato | ええよ。プルリクエスト<ruby>送<rt>おく</rt></ruby>って。<br>*(OK. Gửi pull request nha.)* |

---

## Tình huống 8 — Phòng lab · Thứ 5 14:00, showcase portfolio trước cohort

*Nakamura-sensei yêu cầu mỗi sinh viên 5 phút show portfolio. Đại lên trước.*

| Vai | Lời thoại |
|---|---|
| Nakamura | では、グエンさん どうぞ。<br>*(Vâng, mời em Đại.)* |
| Đại | (đứng) <ruby>失礼<rt>しつれい</rt></ruby>します。これがポートフォリオです。<ruby>ドメイン<rt>どめいん</rt></ruby>は vandai.dev、ホスティングは Vercel、フレームワークは Next.js 14 + TypeScript + Tailwind CSSです。<br>*(Em xin phép. Đây là portfolio. Domain vandai.dev, hosting Vercel, framework Next.js 14 + TypeScript + Tailwind CSS.)* |
| Đại | <ruby>主<rt>おも</rt></ruby>な<ruby>機能<rt>きのう</rt></ruby>は<ruby>4<rt>よっ</rt></ruby>つ:プロフィール、プロジェクト<ruby>一覧<rt>いちらん</rt></ruby>、ブログ、コンタクトフォームです。コンタクトフォームは Resend API でメール<ruby>送信<rt>そうしん</rt></ruby>します。<br>*(Có 4 chức năng chính: hồ sơ, danh sách dự án, blog, form liên hệ. Form gửi mail qua Resend API.)* |
| Nakamura | <ruby>質問<rt>しつもん</rt></ruby>です。レスポンシブは どう<ruby>対応<rt>たいおう</rt></ruby>していますか?<br>*(Cho hỏi. Em xử responsive thế nào?)* |
| Đại | Tailwind の breakpoint を<ruby>使<rt>つか</rt></ruby>っています。`md:` で <ruby>768<rt>ななひゃくろくじゅうはち</rt></ruby>px、`lg:` で <ruby>1024<rt>せんにじゅうよん</rt></ruby>px<ruby>以上<rt>いじょう</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けています。<br>*(Em dùng breakpoint Tailwind. `md:` cho ≥768px, `lg:` cho ≥1024px.)* |
| Nakamura | いいですね。SEO<ruby>対策<rt>たいさく</rt></ruby>はしていますか?<br>*(Tốt. Có làm SEO không?)* |
| Đại | はい、Next.js の `metadata` API で OGP と meta description を<ruby>設定<rt>せってい</rt></ruby>しています。Lighthouseで<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<br>*(Vâng, em dùng `metadata` API Next.js cho OGP và meta description. Lighthouse 95 điểm.)* |
| Nakamura | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>業界<rt>ぎょうかい</rt></ruby>レベルです。<ruby>拍手<rt>はくしゅ</rt></ruby>。<br>*(Tuyệt. Trình độ ngành luôn. Mời vỗ tay.)* |
| Cả lớp | (vỗ tay)<br> |

---

## Tình huống 9 — Phòng lab · 14:30, xem portfolio cohort khác

| Vai | Lời thoại |
|---|---|
| Yamato | yamatotanaka.dev — AtCoder<ruby>競技<rt>きょうぎ</rt></ruby>プログラミングの<ruby>解説<rt>かいせつ</rt></ruby>ブログです。<ruby>記事<rt>きじ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>書<rt>か</rt></ruby>きました。<br>*(yamatotanaka.dev — Blog giải thích competitive programming AtCoder. Em viết 30 bài.)* |
| Aiko | aikosato.design — Figma <ruby>作品<rt>さくひん</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>のギャラリーです。デザイナーとしての<ruby>個性<rt>こせい</rt></ruby>を<ruby>出<rt>だ</rt></ruby>しました。<br>*(aikosato.design — Gallery 20 tác phẩm Figma. Em đưa cá tính designer ra.)* |
| Lin Wei | linwei.io — <ruby>分散<rt>ぶんさん</rt></ruby>システムと AWS Architecture の<ruby>記事<rt>きじ</rt></ruby>です。<ruby>英語<rt>えいご</rt></ruby>で<ruby>書<rt>か</rt></ruby>いています。<br>*(linwei.io — Bài viết về hệ thống phân tán và AWS Architecture. Em viết bằng tiếng Anh.)* |
| Rajesh | rajesh.cloud — DevOps + Terraform tutorials.<br> |
| Nakamura | <ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby>とも<ruby>個性<rt>こせい</rt></ruby>が<ruby>出<rt>で</rt></ruby>ていて<ruby>素晴<rt>すば</rt></ruby>らしい。これからも<ruby>更新<rt>こうしん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けてください。<ruby>就活<rt>しゅうかつ</rt></ruby>に<ruby>役立<rt>やくだ</rt></ruby>ちます。<br>*(Cả 5 người đều có cá tính, tuyệt thật. Tiếp tục cập nhật nhé. Sẽ có ích cho xin việc.)* |

---

## Tình huống 10 — Apt Senri-chuo · Tối 20:00, Đại refactor sau review

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai, anh đang refactor theo review của Yamato. Tách common type ra file riêng. |
| Mai | (tiếng Việt) Khó không anh? |
| Đại | (tiếng Việt) Không khó nhưng tốn thời gian. 10 file đều phải sửa import. May là TypeScript catch lỗi ngay khi sửa sai. |
| Mai | (tiếng Việt) TypeScript là gì hả anh? Em nghe tên hoài mà chưa biết. |
| Đại | (tiếng Việt) JavaScript có thêm type. Vd `string`, `number`, `boolean`. Viết sai type — compiler báo đỏ ngay. Đi xin việc ở Nhật bắt buộc phải biết. |
| Mai | (tiếng Việt) Mai em hỏi cô ở Yamato School có lớp lập trình cho người mới không nhỉ. |
| Đại | (tiếng Việt) Em ôn N2 xong tháng 12 đã. Sau đó anh dạy em React từ đầu. |

---

## Tình huống 11 — Cảnh tiếng Việt cuối · Chủ nhật trưa 12:00, gọi bố mẹ VN khoe vandai.dev

> Cảnh tiếng Việt — Đại và Mai gọi video call về cho bố mẹ Đại ở Hà Nội, khoe trang vandai.dev mới làm.

| Vai | Lời thoại |
|---|---|
| Bố Đại | (qua video) A con! Mai con! Bố mẹ đợi từ sáng. |
| Đại | Bố ơi mở trình duyệt giúp con, gõ "vandai.dev" nha. |
| Bố Đại | (đeo kính, gõ chậm) v-a-n-d-a-i chấm d-e-v... À! Hiện ra trang đẹp ghê! Có ảnh con luôn! |
| Đại | Đó là trang cá nhân con tự làm bằng React với Next.js. Bài tập cuối kỳ Web Tech I đó bố. |
| Mẹ Đại | Mẹ không hiểu kỹ thuật nhưng nhìn đẹp. Sạch sẽ, gọn gàng. Giống tính con nhỉ. |
| Đại | Cảm ơn mẹ. Con mua tên miền vandai.dev với 800 yên một năm — khoảng 130 nghìn VND. |
| Bố Đại | Rẻ vậy à? Tưởng đắt. |
| Đại | Hosting Vercel miễn phí cho sinh viên. Tiền chỉ trả cho domain thôi. |
| Mai | Bố mẹ ơi, hôm nay anh Đại tự refactor cả buổi sau khi Yamato — bạn cùng khoá — review code. Em nấu phở mà anh ấy không kịp ăn nóng. |
| Mẹ Đại | Mai phải nhắc con trai mẹ ăn đúng giờ. Lập trình mệt mắt lắm. |
| Đại | Vâng mẹ. À, tháng 7 con đi intern Cybozu Osaka 2 tuần luôn. Lương 10.000 yên/ngày. |
| Bố Đại | Tốt quá con! Bố tự hào về con. |
| Mẹ Đại | Linh-Anh em con cũng vừa bảo Sato hôm chủ nhật sang Senri thăm hai vợ chồng. Nhớ chuẩn bị tiếp đón. |
| Đại | Vâng con biết rồi. Bố mẹ giữ gìn sức khoẻ. |
| Mai | Bố mẹ chào ạ. |
| Bố mẹ | Chào hai con. |

---

## Đọng lại chương 4

Web技術 I chuyển sang giai đoạn 2 — Đại đào sâu DOM/event vanilla rồi nhảy thẳng React 18 + Next.js 14 + TypeScript + Tailwind. Khi gặp lỗi `Cannot read property ''addEventListener'' of null`, Đại học **「エラーが出ました」** mở đầu nhờ sensei + **「コンソールに何か表示されていますか?」** từ Nakamura — cách debug standard. Thảo luận với cohort, Đại đưa quan điểm bằng **「〜の方が良いと思います」** chọn Next.js thay static site generator. Nhờ Yamato review code bằng **「コードレビューお願いできますか」** — refactor common type ra `types.ts`. Showcase với Nakamura-sensei mở đầu **「これがポートフォリオです」** + đáp câu hỏi về responsive, SEO, Lighthouse score 95. Mua domain Cloudflare 800 yên/year, deploy Vercel free tier, **vandai.dev online**. Cả cohort 5 người đều có site riêng — mỗi đứa một bản sắc (algorithm blog, design gallery, distributed systems, DevOps, generic portfolio). Cuối tuần khoe bố mẹ qua video call — bố Đại tự hào, mẹ Đại nhắc Mai cho con ăn đúng giờ.

> Từ vựng & mẫu câu chương này: エラーが出ました・〜の方が良いと思います・コードレビューお願いできますか・これがポートフォリオです・コンソールに表示されていますか・DOM・getElementById・querySelector・addEventListener・defer 属性・useState・状態管理フック・Virtual DOM・再描画・コンポーネント指向・JSX・型定義・リファクタ・プルリクエスト・レスポンシブ・breakpoint・SEO対策・Lighthouse・metadata API・ドメイン取得・ホスティング・Vercel・Cloudflare Registrar

## Bí quyết chương

- **「エラーが出ました」** + đọc message lỗi nguyên văn = mẫu báo lỗi standard với sensei. Không bao giờ "không chạy được" chung chung.
- **「〜の方が良いと思います」** = câu thảo luận tech choice trong cohort — đưa quan điểm có lý do, không áp đặt.
- **「コードレビューお願いできますか」** với senpai/sempai = chuẩn mực collab trong tech Nhật. Đi kèm pull request rõ ràng.
- Showcase portfolio: mở đầu **「これがポートフォリオです」** + nêu stack (framework + hosting + domain) + 4-5 chức năng chính → đáp Q&A về performance/SEO.
- Stack 2027 chuẩn ngành: **Next.js 14 + TypeScript + Tailwind CSS + Vercel + Cloudflare Registrar**. Sinh viên CS năm 2 nắm được = competitive trong xin việc.
- Domain `.dev` của Google requires HTTPS by default — phù hợp portfolio dev. 800 yên/year là giá vừa túi sinh viên.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 略 | りゃく | LƯỢC | viết tắt |
| 操作 | そうさ | THAO TÁC | thao tác |
| 仕組み | しくみ | — | cơ chế |
| 専用 | せんよう | CHUYÊN DỤNG | chuyên dụng |
| 全般 | ぜんぱん | TOÀN BAN | toàn bộ, tổng quát |
| 対応 | たいおう | ĐỐI ỨNG | hỗ trợ, xử lý |
| 現場 | げんば | HIỆN TRƯỜNG | thực tế công việc |
| 主流 | しゅりゅう | CHỦ LƯU | chủ đạo |
| 柔軟性 | じゅうなんせい | NHU NHUYỄN TÍNH | tính linh hoạt |
| 反応 | はんのう | PHẢN ỨNG | phản hồi |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 要素 | ようそ | YẾU TỐ | element |
| 実行 | じっこう | THỰC HÀNH | thực thi |
| 属性 | ぞくせい | THUỘC TÍNH | thuộc tính |
| 移動 | いどう | DI ĐỘNG | di chuyển |
| 数字 | すうじ | SỐ TỰ | số |
| 関連 | かんれん | QUAN LIÊN | liên quan |
| 状態管理 | じょうたいかんり | TRẠNG THÁI QUẢN LÝ | quản lý state |
| 導入 | どうにゅう | ĐẠO NHẬP | đưa vào, áp dụng |
| 公開 | こうかい | CÔNG KHAI | phát hành, công khai |
| 指向 | しこう | CHỈ HƯỚNG | hướng (paradigm) |
| 特徴 | とくちょう | ĐẶC TRƯNG | đặc trưng |
| 記法 | きほう | KÝ PHÁP | cú pháp |
| 圧倒的 | あっとうてき | ÁP ĐẢO ĐÍCH | áp đảo |
| 就職 | しゅうしょく | TỰU CHỨC | xin việc |
| 大手 | おおて | ĐẠI THỦ | công ty lớn |
| 再描画 | さいびょうが | TÁI MIÊU HOẠ | re-render |
| 差分 | さぶん | SAI PHÂN | diff, khác biệt |
| 反映 | はんえい | PHẢN ÁNH | phản ánh |
| 効率的 | こうりつてき | HIỆU SUẤT ĐÍCH | hiệu quả |
| 静的 | せいてき | TĨNH ĐÍCH | tĩnh |
| 移行 | いこう | DI HÀNH | migrate |
| 取得 | しゅとく | THỦ ĐẮC | mua, lấy được |
| 型定義 | かたていぎ | HÌNH ĐỊNH NGHĨA | định nghĩa kiểu |
| 共通 | きょうつう | CỘNG THÔNG | chung |
| 切り出す | きりだす | — | tách ra |
| 初期値 | しょきち | SƠ KỲ TRỊ | giá trị khởi tạo |
| 明示的 | めいじてき | MINH THỊ ĐÍCH | rõ ràng |
| 指定 | してい | CHỈ ĐỊNH | chỉ định |
| 修正 | しゅうせい | TU CHÍNH | sửa |
| 機能 | きのう | CƠ NĂNG | chức năng |
| 一覧 | いちらん | NHẤT LÃM | danh sách |
| 送信 | そうしん | TỐNG TÍN | gửi đi |
| 対策 | たいさく | ĐỐI SÁCH | biện pháp |
| 設定 | せってい | THIẾT ĐỊNH | cài đặt |
| 拍手 | はくしゅ | PHÁCH THỦ | vỗ tay |
| 個性 | こせい | CÁ TÍNH | cá tính |
| 作品 | さくひん | TÁC PHẨM | tác phẩm |
| 分散 | ぶんさん | PHÂN TÁN | phân tán |
| 就活 | しゅうかつ | TỰU HOẠT | hoạt động xin việc |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000005, 800000022, NULL, 'markdown_book', 'T5. DB入門 — PostgreSQL, ER diagram, JOIN', '# Sách sinh viên Đại học Osaka · T5. DB入門 — PostgreSQL, ER diagram, JOIN

> **Mục tiêu nhân vật:** Đại (sinh viên năm 2 Đại học Osaka, 22 tuổi, 7/2027, Toyonaka). Học các mẫu hội thoại tiếng Nhật ngành DB: hỏi sensei về ER diagram, trình bày bảng trên whiteboard, giải thích chuẩn hoá 1NF–3NF, hỏi lại khi chưa hiểu thuật ngữ, thảo luận JOIN/ACID với senpai, báo cáo tiến độ project, và gọi điện về VN kể chuyện với Mai.

---

## Bối cảnh

Tháng 7 năm 2027. Đại đang học kỳ hè năm 2 ở Osaka University, campus Toyonaka. Lecture 「データベース入門」 do Takahashi-sensei (continued T1) phụ trách. Project nhóm: hệ thống đăng ký học `school enrollment` với 5 bảng (students, courses, enrollments, professors, departments). Mai đã sang Nhật ở cùng Đại tại Senri-chuo, chuẩn bị đăng ký lớp N2 ở trường tiếng vùng Osaka từ tháng 9. Chương này tập trung các mẫu câu hỏi-đáp với sensei về DB, cách trình bày SQL trong meeting và cách hỏi lại thuật ngữ.

---

## Tình huống 1 — Giảng đường C2 · 9:00, Takahashi giảng ER diagram

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>からER diagramの<ruby>話<rt>はなし</rt></ruby>をします。ERは Entity-Relationship の<ruby>略<rt>りゃく</rt></ruby>で、<ruby>1976<rt>せんきゅうひゃくななじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby>にチェンさんが<ruby>提唱<rt>ていしょう</rt></ruby>しました。<br>*(Hôm nay bắt đầu nói về ER diagram. ER là viết tắt Entity-Relationship, do Chen đề xuất năm 1976.)* |
| Takahashi | <ruby>基本<rt>きほん</rt></ruby><ruby>記号<rt>きごう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つです。Entityは<ruby>箱<rt>はこ</rt></ruby>、Attributeは<ruby>楕円<rt>だえん</rt></ruby>、Relationshipは<ruby>菱形<rt>ひしがた</rt></ruby>で<ruby>描<rt>か</rt></ruby>きます。<br>*(Có 3 ký hiệu cơ bản: Entity vẽ hộp, Attribute vẽ ellipse, Relationship vẽ hình thoi.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、「Entity」と「Attribute」の<ruby>違<rt>ちが</rt></ruby>いをもう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thầy ơi, xin thầy nói lại sự khác nhau giữa Entity và Attribute ạ.)* |
| Takahashi | Entityは「もの」です。<ruby>例<rt>たと</rt></ruby>えば Student。Attributeはその「<ruby>属性<rt>ぞくせい</rt></ruby>」、name や student_id ですね。<br>*(Entity là "vật" — ví dụ Student. Attribute là "thuộc tính" — như name hay student_id.)* |
| Đại | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(À, em hiểu rồi. Cảm ơn thầy ạ.)* |

---

## Tình huống 2 — Whiteboard giảng đường · 9:30, Đại trình bày M:N

*Takahashi gọi Đại lên bảng vẽ quan hệ Student và Course.*

| Vai | Lời thoại |
|---|---|
| Takahashi | グエンさん、Student と Course の<ruby>関係<rt>かんけい</rt></ruby>をホワイトボードに<ruby>描<rt>か</rt></ruby>いてみてください。<br>*(Em Nguyễn, vẽ quan hệ giữa Student và Course lên bảng nhé.)* |
| Đại | (cầm bút) はい。<ruby>一人<rt>ひとり</rt></ruby>の<ruby>学生<rt>がくせい</rt></ruby>が<ruby>複数<rt>ふくすう</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>を<ruby>取<rt>と</rt></ruby>るので、M:N の<ruby>関係<rt>かんけい</rt></ruby>です。<br>*(Vâng. Một sinh viên học nhiều môn nên là quan hệ M:N.)* |
| Đại | (vẽ) `[Student] — M:N — [Course]`。M:N なので、<ruby>中間<rt>ちゅうかん</rt></ruby>テーブル `enrollments` が<ruby>必要<rt>ひつよう</rt></ruby>になると<ruby>思<rt>おも</rt></ruby>います。<br>*(Vì là M:N, em nghĩ cần bảng trung gian enrollments.)* |
| Takahashi | <ruby>正解<rt>せいかい</rt></ruby>です！その<ruby>中間<rt>ちゅうかん</rt></ruby>テーブルの<ruby>主<rt>しゅ</rt></ruby>キーはどう<ruby>設計<rt>せっけい</rt></ruby>しますか？<br>*(Chính xác! Vậy primary key của bảng trung gian em thiết kế thế nào?)* |
| Đại | `enrollment_id` を<ruby>独立<rt>どくりつ</rt></ruby>させて、`student_id` と `course_id` に UNIQUE <ruby>制約<rt>せいやく</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けます。<br>*(Tách enrollment_id ra, đặt ràng buộc UNIQUE lên cặp student_id và course_id.)* |
| Takahashi | いいですね。それが<ruby>実務<rt>じつむ</rt></ruby>でもよく<ruby>使<rt>つか</rt></ruby>われるパターンです。<br>*(Tốt đấy. Đó cũng là pattern hay dùng trong thực tế.)* |

---

## Tình huống 3 — Phòng seminar · 11:00, Takahashi giảng Normalization

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>次<rt>つぎ</rt></ruby>は「<ruby>正規化<rt>せいきか</rt></ruby>」、Normalization です。1NF から 3NF まで<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Tiếp theo là chuẩn hoá. Sẽ giảng tuần tự từ 1NF đến 3NF.)* |
| Takahashi | 1NF は<ruby>原子値<rt>げんしち</rt></ruby>のみ、セルに<ruby>配列<rt>はいれつ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れてはいけません。<br>*(1NF: chỉ giá trị nguyên tử, không cho mảng vào một ô.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、「<ruby>原子値<rt>げんしち</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Thưa thầy, "nguyên tử" cụ thể nghĩa là gì ạ?)* |
| Takahashi | <ruby>分割<rt>ぶんかつ</rt></ruby>できない<ruby>値<rt>あたい</rt></ruby>です。<ruby>例<rt>たと</rt></ruby>えば `courses = "DB,OS,Network"` は<ruby>駄目<rt>だめ</rt></ruby>、カンマで<ruby>区切<rt>くぎ</rt></ruby>った<ruby>時点<rt>じてん</rt></ruby>で 1NF <ruby>違反<rt>いはん</rt></ruby>です。<br>*(Là giá trị không tách được. Ví dụ courses = "DB,OS,Network" là sai — chia bằng dấu phẩy là vi phạm 1NF.)* |
| Takahashi | 2NF は 1NF +<ruby>部分<rt>ぶぶん</rt></ruby><ruby>関数<rt>かんすう</rt></ruby><ruby>従属<rt>じゅうぞく</rt></ruby>の<ruby>除去<rt>じょきょ</rt></ruby>、3NF は<ruby>推移<rt>すいい</rt></ruby><ruby>従属<rt>じゅうぞく</rt></ruby>の<ruby>除去<rt>じょきょ</rt></ruby>です。<br>*(2NF = 1NF + loại phụ thuộc bộ phận, 3NF = loại phụ thuộc bắc cầu.)* |
| Đại | はい、ノートに<ruby>取<rt>と</rt></ruby>りました。<ruby>後<rt>あと</rt></ruby>で<ruby>例題<rt>れいだい</rt></ruby>を<ruby>解<rt>と</rt></ruby>いて<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em đã ghi rồi. Lát nữa em giải bài tập để kiểm tra lại.)* |

---

## Tình huống 4 — Phòng lab CS · 13:00, Đại trao đổi với senpai Yumi

*Yumi (M1, senpai 1 năm trên) đang review schema cho project của Đại.*

| Vai | Lời thoại |
|---|---|
| Yumi | グエンくん、スキーマ<ruby>見<rt>み</rt></ruby>せて。`students(id, name, course1, course2, course3)` ってなってるけど、これは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>？<br>*(Em Nguyễn, cho chị xem schema. students(id, name, course1, course2, course3) — cái này ổn không?)* |
| Đại | あ、それは<ruby>古<rt>ふる</rt></ruby>いバージョンです。1NF <ruby>違反<rt>いはん</rt></ruby>なので<ruby>書<rt>か</rt></ruby>き<ruby>直<rt>なお</rt></ruby>しました。<br>*(À đó là bản cũ. Vi phạm 1NF nên em đã viết lại rồi.)* |
| Đại | (chỉ màn hình) <ruby>新<rt>あたら</rt></ruby>しい<ruby>形<rt>かたち</rt></ruby>は `students(id, name)` と `enrollments(student_id, course_id)` の<ruby>二<rt>ふた</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>けました。<br>*(Phiên bản mới em chia thành 2 bảng: students(id, name) và enrollments(student_id, course_id).)* |
| Yumi | いいね。<ruby>正規化<rt>せいきか</rt></ruby>できてる。じゃあ、professor と department の<ruby>関係<rt>かんけい</rt></ruby>は？<br>*(Tốt. Đã chuẩn hoá rồi. Vậy quan hệ professor và department thì sao?)* |
| Đại | 1:N です。<ruby>一人<rt>ひとり</rt></ruby>の<ruby>先生<rt>せんせい</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つの<ruby>学科<rt>がっか</rt></ruby>に<ruby>所属<rt>しょぞく</rt></ruby>するので、`professors.department_id` を<ruby>外部<rt>がいぶ</rt></ruby>キーにしました。<br>*(1:N. Một thầy thuộc một khoa nên em đặt professors.department_id làm khoá ngoại.)* |
| Yumi | OK、いい<ruby>設計<rt>せっけい</rt></ruby>。<br>*(OK, thiết kế tốt.)* |

---

## Tình huống 5 — Giảng đường C2 · 14:00, Takahashi giảng JOIN

| Vai | Lời thoại |
|---|---|
| Takahashi | JOIN には<ruby>主<rt>おも</rt></ruby>に<ruby>四<rt>よっ</rt></ruby>つの<ruby>種類<rt>しゅるい</rt></ruby>があります。INNER JOIN は<ruby>共通<rt>きょうつう</rt></ruby>レコードのみ、LEFT JOIN は<ruby>左<rt>ひだり</rt></ruby><ruby>全件<rt>ぜんけん</rt></ruby> +<ruby>右<rt>みぎ</rt></ruby><ruby>一致<rt>いっち</rt></ruby><ruby>分<rt>ぶん</rt></ruby>です。<br>*(JOIN có 4 loại chính. INNER JOIN lấy bản ghi chung, LEFT JOIN lấy toàn bộ bên trái + phần khớp bên phải.)* |
| Takahashi | RIGHT JOIN はその<ruby>逆<rt>ぎゃく</rt></ruby>、FULL OUTER JOIN は<ruby>両方<rt>りょうほう</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby>です。<br>*(RIGHT JOIN ngược lại, FULL OUTER JOIN lấy toàn bộ cả hai bên.)* |
| Đại | (giơ tay) <ruby>質問<rt>しつもん</rt></ruby>です。INNER JOIN と LEFT JOIN の<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けは、どう<ruby>判断<rt>はんだん</rt></ruby>すればいいですか？<br>*(Em xin hỏi. Phân biệt khi nào dùng INNER JOIN và LEFT JOIN thì căn cứ vào đâu ạ?)* |
| Takahashi | いい<ruby>質問<rt>しつもん</rt></ruby>です。「<ruby>未<rt>み</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>の<ruby>学生<rt>がくせい</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>めたい」なら LEFT JOIN、「<ruby>登録<rt>とうろく</rt></ruby>した<ruby>学生<rt>がくせい</rt></ruby>だけでいい」なら INNER JOIN です。<br>*(Câu hỏi hay. Nếu "muốn gồm cả sinh viên chưa đăng ký" thì LEFT JOIN, nếu "chỉ cần sinh viên đã đăng ký" thì INNER JOIN.)* |
| Đại | (mở laptop, gõ SQL)<br>```sql<br>SELECT s.name, c.name AS course<br>FROM students s<br>INNER JOIN enrollments e ON s.id = e.student_id<br>INNER JOIN courses c ON e.course_id = c.id;<br>```<br> |
| Đại | <ruby>登録<rt>とうろく</rt></ruby><ruby>済<rt>ず</rt></ruby>みの<ruby>学生<rt>がくせい</rt></ruby>だけ、こうですね。<br>*(Chỉ sinh viên đã đăng ký thì như thế này ạ.)* |
| Takahashi | <ruby>完璧<rt>かんぺき</rt></ruby>です。これは<ruby>就職<rt>しゅうしょく</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>の<ruby>定番<rt>ていばん</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>でもあるので、しっかり<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Hoàn hảo. Đây cũng là câu hỏi kinh điển trong phỏng vấn xin việc, hãy nhớ kỹ.)* |

---

## Tình huống 6 — Phòng lab · 15:00, Đại hỏi senpai Rajesh về performance

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>、ちょっといいですか？ LEFT JOIN を<ruby>三<rt>みっ</rt></ruby>つ<ruby>重<rt>かさ</rt></ruby>ねたら<ruby>遅<rt>おそ</rt></ruby>くなりました。<br>*(Senpai, hỏi anh chút được không? Em chồng 3 LEFT JOIN thì bị chậm.)* |
| Rajesh | <ruby>何件<rt>なんけん</rt></ruby>くらいのデータ？<br>*(Bao nhiêu bản ghi?)* |
| Đại | students <ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>件<rt>けん</rt></ruby>、enrollments <ruby>10<rt>じゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>件<rt>けん</rt></ruby>くらいです。<br>*(students 10k, enrollments 100k.)* |
| Rajesh | EXPLAIN <ruby>見<rt>み</rt></ruby>た？ INDEX が<ruby>効<rt>き</rt></ruby>いてないかも。<br>*(Đã xem EXPLAIN chưa? Có thể INDEX không ăn.)* |
| Đại | あ、まだ<ruby>見<rt>み</rt></ruby>てないです。<ruby>今<rt>いま</rt></ruby>すぐ<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(À, em chưa xem. Em kiểm tra ngay.)* |
| Đại | (terminal) `EXPLAIN ANALYZE SELECT ...` → Seq Scan が<ruby>三<rt>みっ</rt></ruby>つ<ruby>出<rt>で</rt></ruby>てます！<br>*(EXPLAIN ANALYZE — hiện ra 3 Seq Scan!)* |
| Rajesh | やっぱり。`enrollments(student_id)` と `enrollments(course_id)` に INDEX <ruby>貼<rt>は</rt></ruby>って。<br>*(Đúng như đoán. Tạo INDEX trên enrollments(student_id) và enrollments(course_id) đi.)* |

---

## Tình huống 7 — Phòng lab · 15:20, Đại tạo INDEX và đo lại

| Vai | Lời thoại |
|---|---|
| Đại | (gõ SQL)<br>```sql<br>CREATE INDEX idx_enroll_student ON enrollments(student_id);<br>CREATE INDEX idx_enroll_course  ON enrollments(course_id);<br>```<br> |
| Đại | (chạy lại EXPLAIN) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>見<rt>み</rt></ruby>てください！ <ruby>200<rt>にひゃく</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>から <ruby>5<rt>ご</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>になりました！<br>*(Senpai, anh xem này! Từ 200ms giảm còn 5ms!)* |
| Rajesh | <ruby>40<rt>よんじゅう</rt></ruby><ruby>倍<rt>ばい</rt></ruby><ruby>速<rt>はや</rt></ruby>くなった<ruby>感<rt>かん</rt></ruby>じ？ INDEX の<ruby>力<rt>ちから</rt></ruby>を<ruby>体感<rt>たいかん</rt></ruby>したな。<br>*(Nhanh gấp 40 lần à? Vậy là em đã cảm nhận được sức mạnh của INDEX rồi đó.)* |
| Đại | (gật đầu) Hack U の<ruby>時<rt>とき</rt></ruby>、<ruby>夜中<rt>よなか</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことで<ruby>悩<rt>なや</rt></ruby>んでました。<ruby>今度<rt>こんど</rt></ruby>はちゃんと<ruby>理解<rt>りかい</rt></ruby>できました。<br>*(Hồi Hack U, 2 giờ sáng em cũng kẹt vì cái này. Lần này hiểu đúng bản chất rồi.)* |
| Rajesh | いいね、それが<ruby>大学<rt>だいがく</rt></ruby>で<ruby>学<rt>まな</rt></ruby>ぶ<ruby>意味<rt>いみ</rt></ruby>だ。<br>*(Tốt, đó là ý nghĩa của việc học đại học.)* |

---

## Tình huống 8 — Giảng đường C2 · 16:00, Takahashi giảng ACID + Transaction

| Vai | Lời thoại |
|---|---|
| Takahashi | Transaction には<ruby>四<rt>よっ</rt></ruby>つの<ruby>性質<rt>せいしつ</rt></ruby>があります。Atomicity・Consistency・Isolation・Durability、<ruby>頭文字<rt>かしらもじ</rt></ruby>を<ruby>取<rt>と</rt></ruby>って ACID です。<br>*(Transaction có 4 tính chất: Atomicity, Consistency, Isolation, Durability — viết tắt là ACID.)* |
| Takahashi | <ruby>典型例<rt>てんけいれい</rt></ruby>は<ruby>銀行<rt>ぎんこう</rt></ruby>の<ruby>振込<rt>ふりこみ</rt></ruby>です。A の<ruby>口座<rt>こうざ</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>き<ruby>落<rt>お</rt></ruby>とすだけ<ruby>成功<rt>せいこう</rt></ruby>して B への<ruby>入金<rt>にゅうきん</rt></ruby>が<ruby>失敗<rt>しっぱい</rt></ruby>したら、お<ruby>金<rt>かね</rt></ruby>が<ruby>消<rt>き</rt></ruby>えてしまいます。<br>*(Ví dụ kinh điển là chuyển khoản ngân hàng. Nếu rút khỏi tài khoản A thành công mà cộng cho B thất bại thì tiền biến mất.)* |
| Đại | (gõ SQL trong slide)<br>```sql<br>BEGIN;<br>UPDATE accounts SET balance = balance - 100 WHERE id = 1;<br>UPDATE accounts SET balance = balance + 100 WHERE id = 2;<br>COMMIT;<br>```<br> |
| Đại | <ruby>途中<rt>とちゅう</rt></ruby>で<ruby>失敗<rt>しっぱい</rt></ruby>したら ROLLBACK して<ruby>元<rt>もと</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>す、ということですね。<br>*(Nếu giữa chừng thất bại thì ROLLBACK trả về trạng thái cũ, đúng không ạ?)* |
| Takahashi | その<ruby>通<rt>とお</rt></ruby>りです。Atomicity が<ruby>命<rt>いのち</rt></ruby>です。<br>*(Đúng vậy. Atomicity là sống còn.)* |

---

## Tình huống 9 — Phòng lab · 17:00, hỏi lại Yumi về Isolation level

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>由美<rt>ゆみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、Isolation level の<ruby>話<rt>はなし</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>教<rt>おし</rt></ruby>えてもらえますか？<br>*(Chị Yumi, chị giảng lại em phần Isolation level được không ạ?)* |
| Yumi | いいよ。<ruby>四<rt>よっ</rt></ruby>つレベルがあって、Read Uncommitted → Read Committed → Repeatable Read → Serializable の<ruby>順<rt>じゅん</rt></ruby>に<ruby>厳<rt>きび</rt></ruby>しくなる。<br>*(Được. Có 4 mức, càng về sau càng nghiêm: Read Uncommitted → Read Committed → Repeatable Read → Serializable.)* |
| Đại | PostgreSQL のデフォルトは？<br>*(Mặc định của PostgreSQL là gì ạ?)* |
| Yumi | Read Committed。MySQL は Repeatable Read。データベースによって<ruby>違<rt>ちが</rt></ruby>うから<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて。<br>*(Read Committed. MySQL là Repeatable Read. Khác nhau theo DB nên cẩn thận.)* |
| Đại | なるほど、<ruby>就職<rt>しゅうしょく</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>で<ruby>聞<rt>き</rt></ruby>かれそうですね。メモしておきます。<br>*(Ra vậy, hay được hỏi khi phỏng vấn ha. Em ghi lại đây.)* |

---

## Tình huống 10 — Phòng họp project · 18:00, Đại trình bày tiến độ

*Đại đứng trước nhóm 4 SV trình bày project schema 5 bảng.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>5<rt>いつ</rt></ruby>つのテーブルを 3NF まで<ruby>正規化<rt>せいきか</rt></ruby>しました。<br>*(Em xin báo cáo tiến độ hôm nay. Đã chuẩn hoá 5 bảng đến 3NF.)* |
| Đại | INDEX も<ruby>三<rt>みっ</rt></ruby>つ<ruby>追加<rt>ついか</rt></ruby>して、<ruby>主<rt>しゅ</rt></ruby>なクエリは<ruby>5<rt>ご</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby><ruby>以内<rt>いない</rt></ruby>で<ruby>動<rt>うご</rt></ruby>くようになりました。<br>*(Đã thêm 3 INDEX, các truy vấn chính chạy dưới 5ms.)* |
| SV nhóm | <ruby>登録<rt>とうろく</rt></ruby><ruby>処理<rt>しょり</rt></ruby>は Transaction で<ruby>囲<rt>かこ</rt></ruby>む？<br>*(Xử lý đăng ký có bọc Transaction không?)* |
| Đại | はい、`enrollments` への INSERT と `courses.remaining_seats` の UPDATE は<ruby>一<rt>ひと</rt></ruby>つの Transaction にします。<br>*(Có, INSERT vào enrollments và UPDATE courses.remaining_seats sẽ bọc chung một Transaction.)* |
| SV nhóm | OK、いいと<ruby>思<rt>おも</rt></ruby>う。<br>*(OK, tốt rồi.)* |

---

## Tình huống 11 — Cafeteria · 19:00, Đại nhắn Tuấn về DB

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Tuấn ở Hà Nội) Tuấn ơi, hôm nay học sâu về PostgreSQL. INDEX đỉnh thật. |
| Tuấn | Mày học chuẩn hoá tới đâu rồi? |
| Đại | 3NF + BCNF. Hồi Hack U mình tay ngang nên schema lởm, giờ học bài bản thấy khác hẳn. |
| Tuấn | Sau này về VN làm chung Hizashi, mày lo phần DB nha. |
| Đại | Chốt. Anh sẽ xây schema cho Hizashi từ con số 0. |

---

## Tình huống 12 — Trước cổng campus Toyonaka · 21:00, gọi điện về VN cho Mai

> Cảnh tiếng Việt — Đại gọi cho Mai (vợ, đang ở Senri-chuo, chuẩn bị nhập học lớp N2 trường tiếng Osaka).

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, hôm nay anh học `JOIN` với `INDEX`. Lúc anh tạo index xong, query nhanh gấp 40 lần luôn em ạ. |
| Mai | (tiếng Việt) Trời, anh kể chứ em chả hiểu gì đâu. Mà nghe giọng anh vui là em biết hôm nay ok. |
| Đại | (tiếng Việt) Còn nữa, `Takahashi-sensei` khen em trên bảng. Anh giải thích `M:N` cần bảng trung gian, ông gật đầu. |
| Mai | (tiếng Việt) Hihi giỏi quá. À mai em đăng ký lớp `N2` ở Yamato. Bắt đầu từ tháng 9. |
| Đại | (tiếng Việt) Em đăng ký được rồi hả? Tuyệt vời! Anh hỗ trợ em từ xa nha. |
| Mai | (tiếng Việt) Ừ. Mà sao anh học DB mà nhắc nhiều đến Hizashi vậy? |
| Đại | (tiếng Việt) Vì sau này mình mở app học tiếng Nhật, anh sẽ tự tay xây database từ đầu cho em với mọi người dùng. Hôm nay anh thấy DB không còn đáng sợ nữa. |
| Mai | (tiếng Việt) Thương anh. Ngủ sớm đi nhé, mai còn đi lab. |

---

## Đọng lại chương 5

Một ngày học DB sâu của Đại ở Osaka University. Đại học **ER diagram** (Entity/Attribute/Relationship), tự tin giải thích **quan hệ M:N cần bảng trung gian** trước cả lớp, và hỏi lại sensei khi chưa rõ thuật ngữ bằng mẫu **「〜というのは、具体的にどういう意味ですか」**. Học **Normalization 1NF/2NF/3NF**, phát hiện schema cũ của mình vi phạm 1NF và refactor. Học **4 loại JOIN** + biết khi nào dùng INNER vs LEFT qua câu trả lời của Takahashi. Tự tay tạo **INDEX** trên `enrollments(student_id)` + `(course_id)` — query từ **200ms xuống 5ms**, sống lại cảm giác bế tắc đêm Hack U. Học **ACID** + **Transaction** với ví dụ chuyển khoản ngân hàng, hỏi senpai về **Isolation level**. Cuối ngày Đại trình bày tiến độ trước nhóm bằng mẫu **「本日の進捗を報告します」** rồi gọi điện về cho Mai — người vừa chính thức đăng ký lớp N2 ở Yamato School.

> Từ vựng & mẫu câu chương này: ER diagram・Entity・Attribute・Relationship・中間テーブル・M:N・正規化・原子値・1NF・2NF・3NF・BCNF・部分関数従属・推移従属・INNER JOIN・LEFT JOIN・RIGHT JOIN・FULL OUTER JOIN・INDEX・EXPLAIN ANALYZE・Seq Scan・Index Scan・Transaction・ACID・BEGIN/COMMIT/ROLLBACK・Isolation level・〜というのは・もう一度お願いします・本日の進捗を報告します・なるほど、分かりました

## Bí quyết chương

- **Hỏi lại không xấu hổ**: Mẫu 「〜というのは、具体的にどういう意味ですか」 là vũ khí của du học sinh — sensei luôn thích sinh viên dám hỏi sâu.
- **Số liệu cụ thể khi báo cáo**: 「200ミリ秒から5ミリ秒になりました」 ấn tượng hơn 「速くなりました」 rất nhiều.
- **Liên hệ Hack U → Đại học**: Vấp ở dự án thực rồi học bài bản sau là pattern tối ưu cho SV CS năm 2.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 記号 | きごう | KÝ HIỆU | ký hiệu |
| 箱 | はこ | — | hộp |
| 楕円 | だえん | ĐẠI VIÊN | hình ellipse |
| 菱形 | ひしがた | LĂNG HÌNH | hình thoi |
| 複数 | ふくすう | PHỨC SỐ | nhiều |
| 中間 | ちゅうかん | TRUNG GIAN | trung gian |
| 設計 | せっけい | THIẾT KẾ | thiết kế |
| 独立 | どくりつ | ĐỘC LẬP | độc lập |
| 制約 | せいやく | CHẾ ƯỚC | ràng buộc |
| 実務 | じつむ | THỰC VỤ | thực tế công việc |
| 原子値 | げんしち | NGUYÊN TỬ TRỊ | giá trị nguyên tử |
| 配列 | はいれつ | PHỐI LIỆT | mảng |
| 分割 | ぶんかつ | PHÂN CẮT | chia tách |
| 違反 | いはん | VI PHẠM | vi phạm |
| 部分 | ぶぶん | BỘ PHẬN | bộ phận |
| 関数 | かんすう | HÀM SỐ | hàm số |
| 例題 | れいだい | LỆ ĐỀ | bài tập mẫu |
| 外部キー | がいぶキー | NGOẠI BỘ | khoá ngoại |
| 種類 | しゅるい | CHỦNG LOẠI | loại |
| 一致 | いっち | NHẤT TRÍ | khớp |
| 逆 | ぎゃく | NGHỊCH | ngược |
| 両方 | りょうほう | LƯỠNG PHƯƠNG | cả hai bên |
| 判断 | はんだん | PHÁN ĐOÁN | đánh giá, phán đoán |
| 完璧 | かんぺき | HOÀN BÍCH | hoàn hảo |
| 面接 | めんせつ | DIỆN TIẾP | phỏng vấn |
| 定番 | ていばん | ĐỊNH PHIÊN | kinh điển, quen thuộc |
| 性質 | せいしつ | TÍNH CHẤT | tính chất |
| 頭文字 | かしらもじ | ĐẦU VĂN TỰ | chữ cái đầu |
| 典型例 | てんけいれい | ĐIỂN HÌNH LỆ | ví dụ điển hình |
| 振込 | ふりこみ | CHẤN VÀO | chuyển khoản |
| 引き落とす | ひきおとす | — | rút (tiền) |
| 入金 | にゅうきん | NHẬP KIM | nạp tiền |
| 命 | いのち | MỆNH | sống còn, mạng |
| 進捗 | しんちょく | TIẾN CHỈ | tiến độ |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 処理 | しょり | XỬ LÝ | xử lý |
| 囲む | かこむ | — | bọc, bao quanh |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000006, 800000022, NULL, 'markdown_book', 'T6. Thực tập hè Cybozu Osaka — Kintone plugin', '# Sách sinh viên Đại học Osaka · T6. Thực tập hè Cybozu Osaka — Kintone plugin

> **Mục tiêu nhân vật:** Đại (sinh viên năm 2 Osaka U, 22 tuổi, 1-15/8/2027, lần đầu intern tech company). Học các mẫu hội thoại tiếng Nhật của intern: tự giới thiệu trang trọng buổi onboarding, hỏi mentor về spec và tech stack, báo cáo daily standup, xin phản hồi khi code review, thuyết trình demo cuối kỳ, đáp lời mời intern dài hạn, và gọi điện về VN báo tin với Mai.

---

## Bối cảnh

1-15/8/2027. Đại lần đầu thực tập tech company tại Cybozu Osaka office, tầng 8 Honmachi. Mentor Inomata-san (engineer 5 năm kinh nghiệm). Project: build Kintone plugin theo dõi tình trạng đặt phòng họp bằng JavaScript SDK. Stipend ¥150k cho 2 tuần. 4 intern khác đến từ Kyodai, Kobe U, Doshisha. Chương này tập trung các mẫu câu của intern năm 2: jikoshoukai keigo, hỏi spec, daily standup, đáp lời phản hồi từ senior, và cuối kỳ nhận lời mời intern dài hạn.

---

## Tình huống 1 — Sảnh tầng 8 Cybozu Osaka · 9:00, onboarding ngày đầu

| Vai | Lời thoại |
|---|---|
| HR | <ruby>本日<rt>ほんじつ</rt></ruby>はサマーインターンシップにお<ruby>越<rt>こ</rt></ruby>しくださいまして、ありがとうございます。<ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さん、<ruby>歓迎<rt>かんげい</rt></ruby>いたします。<br>*(Cảm ơn 5 bạn đã đến với Cybozu summer internship. Xin chào mừng các bạn.)* |
| HR | まず、<ruby>一人<rt>ひとり</rt></ruby>ずつ<ruby>自己<rt>じこ</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trước tiên, xin từng bạn giới thiệu bản thân.)* |
| Đại | (đứng dậy, cúi nhẹ) <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>参<rt>まい</rt></ruby>りました。<br>*(Em xin giới thiệu, em là Nguyễn Văn Đại, sinh viên năm 2 khoa Khoa học Thông tin Osaka University, đến từ Việt Nam.)* |
| Đại | <ruby>得意<rt>とくい</rt></ruby>な<ruby>分野<rt>ぶんや</rt></ruby>は React と PostgreSQL です。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>二週間<rt>にしゅうかん</rt></ruby>、どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mảng em mạnh là React và PostgreSQL. 2 tuần tới rất mong được học hỏi ạ.)* |
| HR | ありがとうございます。それでは、メンターの<ruby>猪股<rt>いのまた</rt></ruby>さんをご<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Cảm ơn. Tiếp theo xin giới thiệu mentor Inomata-san.)* |

---

## Tình huống 2 — Phòng họp Sakura · 9:30, mentor Inomata giới thiệu project

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>初<rt>はじ</rt></ruby>めまして。メンターを<ruby>担当<rt>たんとう</rt></ruby>する<ruby>猪股<rt>いのまた</rt></ruby>です。<ruby>気軽<rt>きがる</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけてくださいね。<br>*(Em Nguyễn, rất hân hạnh. Anh là Inomata, sẽ làm mentor cho em. Cứ thoải mái hỏi anh nhé.)* |
| Đại | はい、<ruby>猪股<rt>いのまた</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng anh Inomata, em rất mong được học hỏi anh.)* |
| Inomata | <ruby>今回<rt>こんかい</rt></ruby>のプロジェクトは「<ruby>会議室<rt>かいぎしつ</rt></ruby><ruby>予約<rt>よやく</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>プラグイン」です。Kintone の JavaScript SDK で<ruby>開発<rt>かいはつ</rt></ruby>します。<br>*(Project lần này là "Plugin theo dõi tình trạng đặt phòng họp". Phát triển bằng JavaScript SDK của Kintone.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、Kintone を<ruby>触<rt>さわ</rt></ruby>るのは<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>基本的<rt>きほんてき</rt></ruby>な<ruby>構造<rt>こうぞう</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Em xin lỗi, đây là lần đầu em chạm vào Kintone. Anh có thể chỉ em cấu trúc cơ bản trước được không?)* |
| Inomata | もちろんです。Kintone は<ruby>弊社<rt>へいしゃ</rt></ruby>のローコード SaaS で、ノーコードで<ruby>業務<rt>ぎょうむ</rt></ruby>アプリが<ruby>作<rt>つく</rt></ruby>れます。プラグインは JS SDK で<ruby>拡張<rt>かくちょう</rt></ruby>します。<br>*(Tất nhiên. Kintone là SaaS low-code của bên anh, dựng app nghiệp vụ không cần code. Plugin mở rộng bằng JS SDK.)* |

---

## Tình huống 3 — Phòng họp Sakura · 10:00, hỏi tech stack chi tiết

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>スタックを<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Anh có thể giới thiệu em tech stack của công ty được không?)* |
| Inomata | バックエンドは Java と Kotlin、Spring Boot です。フロントエンドは React と TypeScript ですね。<br>*(Backend là Java và Kotlin với Spring Boot. Frontend là React và TypeScript.)* |
| Inomata | DB は MySQL <ruby>8<rt>はち</rt></ruby> と Redis キャッシュ、インフラは AWS、CI/CD は GitHub Actions と ArgoCD です。<br>*(DB là MySQL 8 với Redis cache, hạ tầng AWS, CI/CD là GitHub Actions + ArgoCD.)* |
| Đại | ArgoCD というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういうツールですか？<br>*(ArgoCD cụ thể là tool gì ạ?)* |
| Inomata | Kubernetes <ruby>向<rt>む</rt></ruby>けの GitOps ツールです。Git の<ruby>状態<rt>じょうたい</rt></ruby>とクラスタの<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>同期<rt>どうき</rt></ruby>します。<br>*(Là tool GitOps cho Kubernetes — đồng bộ trạng thái Git với cluster.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>大学<rt>だいがく</rt></ruby>とはスケールが<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Em học được nhiều quá. Quy mô khác hẳn ở trường.)* |

---

## Tình huống 4 — Khu intern · 11:00, hỏi spec plugin chi tiết

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>猪股<rt>いのまた</rt></ruby>さん、<ruby>仕様<rt>しよう</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>させてください。プラグインは<ruby>一覧画面<rt>いちらんがめん</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>するんですよね？<br>*(Anh Inomata, em xin xác nhận về spec. Plugin sẽ hiển thị ở màn hình danh sách phải không ạ?)* |
| Inomata | そうです。<ruby>今後<rt>こんご</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>を<ruby>件数<rt>けんすう</rt></ruby>バッジで<ruby>表示<rt>ひょうじ</rt></ruby>してください。<br>*(Đúng vậy. Em hãy hiển thị số lượng booking trong 1 tuần tới dưới dạng badge.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>過去<rt>かこ</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>は<ruby>除外<rt>じょがい</rt></ruby>するイメージでしょうか？<br>*(Em rõ rồi ạ. Có loại trừ booking trong quá khứ không ạ?)* |
| Inomata | はい、<ruby>今日<rt>きょう</rt></ruby><ruby>以降<rt>いこう</rt></ruby>のものだけです。<ruby>並<rt>なら</rt></ruby>び<ruby>順<rt>じゅん</rt></ruby>は<ruby>開始<rt>かいし</rt></ruby><ruby>時刻<rt>じこく</rt></ruby><ruby>順<rt>じゅん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đúng, chỉ booking từ hôm nay trở đi. Sắp xếp theo giờ bắt đầu.)* |
| Đại | (gõ vào notebook) はい、メモしました。<ruby>明日<rt>あす</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>までに v0.1 のたたき<ruby>台<rt>だい</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>します。<br>*(Vâng em ghi lại rồi. Mai sáng em sẽ chuẩn bị bản nháp v0.1.)* |

---

## Tình huống 5 — Khu intern · 14:00, viết code Kintone JS SDK

*Đại ngồi cùng bàn với 4 intern khác, mở Kintone dev environment.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ code)<br>```javascript<br>kintone.events.on(''app.record.index.show'', (event) => {<br>  const today = new Date();<br>  const upcoming = event.records.filter(<br>    r => new Date(r.start_time.value) > today<br>  );<br>  const header = kintone.app.getHeaderMenuSpaceElement();<br>  header.innerHTML = `<span class="badge">${upcoming.length} upcoming</span>`;<br>});<br>```<br> |
| Intern Kyodai | グエンさん、それ どうやって テスト するんですか？<br>*(Em Nguyễn, cái đó test thế nào?)* |
| Đại | Kintone <ruby>管理<rt>かんり</rt></ruby><ruby>画面<rt>がめん</rt></ruby>でプラグインを zip にしてアップロードして、アプリで<ruby>有効<rt>ゆうこう</rt></ruby>にします。<br>*(Vào trang quản trị Kintone, đóng zip plugin upload lên, rồi enable trong app.)* |
| Intern Kyodai | なるほど、ありがとうございます。<br>*(À ra vậy, cảm ơn em.)* |
| Đại | (chạy thử) <ruby>動<rt>うご</rt></ruby>きました！「<ruby>5<rt>ご</rt></ruby> upcoming」と<ruby>表示<rt>ひょうじ</rt></ruby>されています。<br>*(Chạy được rồi! Hiển thị "5 upcoming".)* |

---

## Tình huống 6 — Phòng họp Sakura · 10:00 day 3, daily standup

*5 intern + 2 mentor ngồi vòng tròn. Mỗi người 1 phút.*

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Em Nguyễn, chia sẻ tiến độ đi.)* |
| Đại | はい。<ruby>昨日<rt>きのう</rt></ruby>は Kintone JS SDK の<ruby>基礎<rt>きそ</rt></ruby>を<ruby>学<rt>まな</rt></ruby>び、プラグイン v0.1 を<ruby>実装<rt>じっそう</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>は code review をお<ruby>願<rt>ねが</rt></ruby>いする<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng. Hôm qua em học cơ bản Kintone JS SDK và đã code xong plugin v0.1. Hôm nay em định xin code review.)* |
| Đại | <ruby>困<rt>こま</rt></ruby>っていることは、<ruby>大量<rt>たいりょう</rt></ruby>のレコードがある<ruby>時<rt>とき</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>くなることです。<br>*(Khó khăn là khi có nhiều record thì hiển thị chậm.)* |
| Inomata | わかりました。<ruby>午後<rt>ごご</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>てみましょう。<br>*(OK. Chiều nay anh em cùng xem nhé.)* |
| Đại | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cảm ơn anh. Em mong được anh chỉ.)* |

---

## Tình huống 7 — Bàn làm việc · 14:00 day 3, Inomata code review

| Vai | Lời thoại |
|---|---|
| Inomata | (nhìn màn hình) コードはきれいですね。<ruby>変数名<rt>へんすうめい</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(Code sạch đấy. Tên biến cũng dễ hiểu.)* |
| Inomata | <ruby>一<rt>ひと</rt></ruby>つ<ruby>提案<rt>ていあん</rt></ruby>ですが、`localStorage` で<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>キャッシュすると、<ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くなりますよ。<br>*(Anh đề xuất, cache 5 phút bằng localStorage thì hiển thị sẽ nhanh hơn.)* |
| Đại | あ、なるほど！<ruby>毎回<rt>まいかい</rt></ruby> API を<ruby>叩<rt>たた</rt></ruby>かなくて<ruby>済<rt>す</rt></ruby>みますね。<ruby>早速<rt>さっそく</rt></ruby><ruby>試<rt>ため</rt></ruby>してみます。<br>*(À, hay quá! Đỡ phải gọi API mỗi lần. Em thử ngay.)* |
| Đại | <ruby>有効<rt>ゆうこう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>は TTL <ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか？<br>*(TTL 5 phút có ổn không ạ?)* |
| Inomata | <ruby>会議室<rt>かいぎしつ</rt></ruby><ruby>予約<rt>よやく</rt></ruby>は<ruby>頻繁<rt>ひんぱん</rt></ruby>に<ruby>変<rt>か</rt></ruby>わらないので、<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Đặt phòng họp không thay đổi thường xuyên nên 5 phút là đủ.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>明日<rt>あす</rt></ruby>までに v0.2 を<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Em rõ rồi ạ. Mai em sẽ làm xong v0.2.)* |

---

## Tình huống 8 — Cafeteria tầng 9 · 12:00 day 5, ăn trưa với intern khác

| Vai | Lời thoại |
|---|---|
| Intern Kobe | グエンさん、<ruby>日本語<rt>にほんご</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>ですね。<ruby>何年<rt>なんねん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しましたか？<br>*(Em Nguyễn, tiếng Nhật khá quá. Học mấy năm rồi?)* |
| Đại | ありがとうございます。<ruby>来日<rt>らいにち</rt></ruby>してから<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<ruby>最初<rt>さいしょ</rt></ruby>はホームステイで<ruby>毎日<rt>まいにち</rt></ruby><ruby>会話<rt>かいわ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしました。<br>*(Cảm ơn anh. Em sang Nhật 3 năm rồi. Lúc đầu ở homestay nên luyện hội thoại mỗi ngày.)* |
| Intern Doshisha | Kintone プラグイン、<ruby>難<rt>むずか</rt></ruby>しくないですか？<br>*(Plugin Kintone không khó hả?)* |
| Đại | <ruby>最初<rt>さいしょ</rt></ruby>はドキュメントを<ruby>読<rt>よ</rt></ruby>むのに<ruby>苦労<rt>くろう</rt></ruby>しました。でも、<ruby>猪股<rt>いのまた</rt></ruby>さんが<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれるので、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Lúc đầu em vật vã đọc docs. Nhưng anh Inomata chỉ rất tận tình nên ổn rồi.)* |

---

## Tình huống 9 — Bàn làm việc · 15:00 day 8, Cybozu culture talk

*Inomata mời Đại ngồi tách bàn nói chuyện về văn hoá công ty.*

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>弊社<rt>へいしゃ</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>について<ruby>話<rt>はな</rt></ruby>させてください。<br>*(Em Nguyễn, anh kể em nghe về văn hoá công ty.)* |
| Inomata | <ruby>有名<rt>ゆうめい</rt></ruby>なスローガンが「<ruby>100<rt>ひゃく</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>100<rt>ひゃく</rt></ruby><ruby>通<rt>とお</rt></ruby>りの<ruby>働<rt>はたら</rt></ruby>き<ruby>方<rt>かた</rt></ruby>」です。リモートとフレックスは<ruby>各自<rt>かくじ</rt></ruby>で<ruby>選<rt>えら</rt></ruby>べます。<br>*(Slogan nổi tiếng là "100 người 100 cách làm việc". Remote và flex mỗi người tự chọn.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>新卒<rt>しんそつ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じですか？<br>*(Tuyệt vời ạ. Sinh viên mới ra trường cũng vậy ạ?)* |
| Inomata | はい。<ruby>初任給<rt>しょにんきゅう</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>35<rt>さんじゅうご</rt></ruby><ruby>万<rt>まん</rt></ruby>から<ruby>45<rt>よんじゅうご</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>賞与<rt>しょうよ</rt></ruby>は<ruby>年間<rt>ねんかん</rt></ruby><ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>です。<br>*(Đúng vậy. Lương khởi điểm 350k–450k yên/tháng, thưởng 6 tháng/năm.)* |
| Đại | <ruby>魅力的<rt>みりょくてき</rt></ruby>ですね。<ruby>将来<rt>しょうらい</rt></ruby><ruby>応募<rt>おうぼ</rt></ruby>させていただきたいです。<br>*(Hấp dẫn quá. Tương lai em xin ứng tuyển ạ.)* |

---

## Tình huống 10 — Phòng họp Sakura · 14:00 day 14, final demo

*Đại đứng trước 8 senior engineer + HR + 4 intern khác. Slide đầu tiên là kiến trúc plugin.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます。<br>*(Cảm ơn các anh chị đã dành thời gian hôm nay. Em xin phép trình bày kết quả 2 tuần.)* |
| Đại | (chỉ slide) プラグインは<ruby>三<rt>みっ</rt></ruby>つの<ruby>機能<rt>きのう</rt></ruby>を<ruby>備<rt>そな</rt></ruby>えています。<ruby>1<rt>いち</rt></ruby>:バッジ<ruby>表示<rt>ひょうじ</rt></ruby>、<ruby>2<rt>に</rt></ruby>: localStorage キャッシュ、<ruby>3<rt>さん</rt></ruby>:エラー<ruby>処理<rt>しょり</rt></ruby>です。<br>*(Plugin có 3 chức năng: 1 hiển thị badge, 2 cache localStorage, 3 xử lý lỗi.)* |
| Đại | (demo) <ruby>初回<rt>しょかい</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みは<ruby>300<rt>さんびゃく</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>、キャッシュ<ruby>後<rt>ご</rt></ruby>は<ruby>15<rt>じゅうご</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>に<ruby>短縮<rt>たんしゅく</rt></ruby>できました。<br>*(Lần đầu load 300ms, sau cache giảm còn 15ms.)* |
| Senior eng | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>とは<ruby>思<rt>おも</rt></ruby>えないクオリティです。<br>*(Tuyệt vời. Không nghĩ là sinh viên năm 2.)* |
| Senior eng | キャッシュの<ruby>提案<rt>ていあん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてすぐ<ruby>実装<rt>じっそう</rt></ruby>できたのが<ruby>印象的<rt>いんしょうてき</rt></ruby>です。<br>*(Ấn tượng là nhận đề xuất cache xong em implement ngay.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>猪股<rt>いのまた</rt></ruby>さんのご<ruby>指導<rt>しどう</rt></ruby>のおかげです。<br>*(Em không dám nhận. Là nhờ anh Inomata chỉ bảo ạ.)* |

---

## Tình huống 11 — Phòng họp Sakura · 15:00 day 14, lời mời intern dài hạn

*HR và Inomata ngồi lại với Đại sau demo.*

| Vai | Lời thoại |
|---|---|
| HR | グエンさん、<ruby>今日<rt>きょう</rt></ruby>のプレゼン、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしかったです。<br>*(Em Nguyễn, presentation hôm nay thực sự xuất sắc.)* |
| HR | <ruby>3<rt>さん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>での<ruby>長期<rt>ちょうき</rt></ruby>インターンに<ruby>興味<rt>きょうみ</rt></ruby>はありませんか？<br>*(Em có quan tâm internship dài hạn vào năm 3 không?)* |
| Đại | <ruby>是非<rt>ぜひ</rt></ruby><ruby>参加<rt>さんか</rt></ruby>させていただきたいです！<ruby>具体的<rt>ぐたいてき</rt></ruby>には、どのようなプロジェクトでしょうか？<br>*(Em rất mong được tham gia! Cụ thể là dự án thế nào ạ?)* |
| HR | <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、RAG <ruby>関連<rt>かんれん</rt></ruby>の<ruby>研究<rt>けんきゅう</rt></ruby>プロジェクトです。<br>*(Từ tháng 6/2028, 3 tháng — dự án nghiên cứu liên quan đến RAG.)* |
| Đại | RAG というのは、Retrieval-Augmented Generation のことですよね？<br>*(RAG là Retrieval-Augmented Generation phải không ạ?)* |
| Inomata | そうです。LLM と<ruby>検索<rt>けんさく</rt></ruby>を<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせる<ruby>分野<rt>ぶんや</rt></ruby>です。グエンさんに<ruby>合<rt>あ</rt></ruby>うと<ruby>思<rt>おも</rt></ruby>います。<br>*(Đúng. Lĩnh vực kết hợp LLM với search. Anh nghĩ hợp với em.)* |
| Đại | ありがとうございます。<ruby>応募<rt>おうぼ</rt></ruby>させていただきます。<br>*(Em cảm ơn. Em xin được ứng tuyển ạ.)* |

---

## Tình huống 12 — Thang máy · 18:30 day 14, Đại nhắn LINE Mai

*Đại đang xuống tầng 1 sau buổi chia tay intern.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE → Mai) Em ơi! Cybozu vừa mời anh apply intern dài 3 tháng năm 3, dự án RAG. |
| Mai | Trời ơi tuyệt vời quá anh! Em mừng muốn khóc. |
| Đại | Em chuẩn bị nhập học N2 chưa? Bao giờ vô lớp ở Yamato? |
| Mai | Tuần sau. Anh ráng nha, em cũng ráng. |
| Đại | Yêu em. Cuối tuần anh gọi video kể chi tiết. |
| Mai | Dạ. Hôm nay anh thưởng cho mình bữa ngon đi! |

---

## Tình huống 13 — Quán izakaya gần Honmachi · 20:00 day 14, gọi điện về VN cho bố mẹ

> Cảnh tiếng Việt — Đại ngồi một mình trong quán nhỏ, gọi video cho bố mẹ ở Hà Nội. Mai đã báo trước cho bố mẹ Đại biết tin.

| Vai | Lời thoại |
|---|---|
| Mẹ Đại | (tiếng Việt) Con ơi, Mai vừa gọi báo mẹ rồi. Con được mời thực tập dài hả? |
| Đại | (tiếng Việt) Vâng mẹ. 3 tháng, từ tháng 6 năm sau. Cybozu là công ty SaaS lớn, lương tốt, văn hoá tốt. |
| Bố Đại | (tiếng Việt) Giỏi con. Hôm nay con `intern` 2 tuần được bao nhiêu? |
| Đại | (tiếng Việt) `¥150k` bố ạ. Trừ thuế còn `¥130k`, đủ trả tiền nhà tháng 8 và điện nước. |
| Mẹ Đại | (tiếng Việt) Tự lo được là bố mẹ mừng rồi. Mà `RAG` là cái gì hả con? |
| Đại | (tiếng Việt) Là kết hợp `AI` với tìm kiếm, mẹ ạ. Sau này nếu mình mở Hizashi, công nghệ này sẽ là lõi để app trả lời câu hỏi tiếng Nhật cho người Việt. |
| Bố Đại | (tiếng Việt) Bố không hiểu nhưng nghe con say sưa là bố biết đúng đường. Cố lên con. |
| Đại | (tiếng Việt) Dạ. Con cảm ơn bố mẹ. Mẹ nhớ giữ sức khoẻ, Tết con về. |

---

## Đọng lại chương 6

Hai tuần intern hè đầu tiên ở Cybozu Osaka. Đại bước vào ngày đầu với mẫu jikoshoukai trang trọng **「〜と申します。どうぞよろしくお願いいたします」**, hỏi mentor về tech stack bằng **「御社の技術スタックを教えていただけますか」**, làm rõ spec bằng **「〜について確認させてください」**. Implement plugin Kintone bằng JavaScript SDK trong 3 ngày, daily standup báo cáo bằng **「進捗を共有します・困っていることは〜です」**, nhận code review từ Inomata-san, học cách đáp lại feedback bằng **「なるほど、早速試してみます」**. Học văn hoá Cybozu **「100人100通りの働き方」**. Final demo: từ **300ms xuống 15ms** sau khi thêm localStorage cache, được senior engineer khen rồi nhận lời mời intern dài 3 tháng dự án **RAG** từ 6/2028. Tối nhắn LINE Mai, gọi video về Hà Nội báo tin bố mẹ — hạt giống Hizashi tiếp tục lớn.

> Từ vựng & mẫu câu chương này: サマーインターン・Kintone・プラグイン・JavaScript SDK・Spring Boot・MySQL・Redis・AWS・GitHub Actions・ArgoCD・Kubernetes・GitOps・localStorage キャッシュ・TTL・code review・daily standup・100人100通りの働き方・初任給・賞与・RAG・〜と申します・どうぞよろしくお願いいたします・御社の技術スタックを教えていただけますか・〜について確認させてください・承知しました・進捗を共有します・困っていることは〜です・恐れ入りますが・是非参加させていただきたいです

## Bí quyết chương

- **Keigo intern level**: 「させていただきます・恐れ入ります・承知しました」 là 3 mẫu sống còn ngày đầu intern Nhật.
- **Hỏi spec ngay đầu**: 「〜について確認させてください」 giúp tránh refactor cuối kỳ. Người Nhật đánh giá cao intern hỏi sớm hơn intern code sai rồi sửa.
- **Hạt giống RAG**: Lời mời intern dài hạn năm 3 không phải kết thúc — là cánh cửa mở vào sách 23 (lab Inoue + RAG project).

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本日 | ほんじつ | BẢN NHẬT | hôm nay |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | tự giới thiệu |
| 研究科 | けんきゅうか | NGHIÊN CỨU KHOA | khoa nghiên cứu |
| 申す | もうす | — | nói (khiêm nhường) |
| 参る | まいる | — | đến (khiêm nhường) |
| 得意 | とくい | ĐẮC Ý | sở trường |
| 分野 | ぶんや | PHÂN DÃ | lĩnh vực |
| 気軽 | きがる | KHÍ KHINH | thoải mái |
| 仕様 | しよう | SĨ DẠNG | spec, thông số |
| 会議室 | かいぎしつ | HỘI NGHỊ THẤT | phòng họp |
| 予約 | よやく | DỰ ƯỚC | đặt trước |
| 状況 | じょうきょう | TÌNH HUỐNG | tình trạng |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 弊社 | へいしゃ | TỆ XÃ | công ty chúng tôi (khiêm) |
| 業務 | ぎょうむ | NGHIỆP VỤ | nghiệp vụ |
| 拡張 | かくちょう | KHUẾCH TRƯƠNG | mở rộng |
| 御社 | おんしゃ | NGỰ XÃ | quý công ty |
| 同期 | どうき | ĐỒNG KỲ | đồng bộ |
| 一覧画面 | いちらんがめん | NHẤT LÃM HOẠ DIỆN | màn hình danh sách |
| 件数 | けんすう | KIỆN SỐ | số lượng |
| 過去 | かこ | QUÁ KHỨ | quá khứ |
| 除外 | じょがい | TRỪ NGOẠI | loại trừ |
| 並び順 | ならびじゅん | — | thứ tự sắp xếp |
| 開始時刻 | かいしじこく | KHAI THUỶ THỜI KHẮC | giờ bắt đầu |
| 承知 | しょうち | THỪA TRI | đã hiểu, đã rõ |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 有効期限 | ゆうこうきげん | HỮU HIỆU KỲ HẠN | thời hạn hiệu lực |
| 頻繁 | ひんぱん | TẦN PHỒN | thường xuyên |
| 仕上げる | しあげる | SĨ THƯỢNG | hoàn thiện |
| 文化 | ぶんか | VĂN HOÁ | văn hoá |
| 各自 | かくじ | CÁC TỰ | mỗi người |
| 新卒 | しんそつ | TÂN TỐT | sinh viên mới ra trường |
| 初任給 | しょにんきゅう | SƠ NHẬM CẤP | lương khởi điểm |
| 賞与 | しょうよ | THƯỞNG DỮ | thưởng |
| 魅力的 | みりょくてき | MỴ LỰC ĐÍCH | hấp dẫn |
| 将来 | しょうらい | TƯƠNG LAI | tương lai |
| 成果 | せいか | THÀNH QUẢ | thành quả |
| 発表 | はっぴょう | PHÁT BIỂU | trình bày |
| 備える | そなえる | BỊ | trang bị, có |
| 短縮 | たんしゅく | ĐOẢN SÚC | rút ngắn |
| 印象的 | いんしょうてき | ẤN TƯỢNG ĐÍCH | ấn tượng |
| 指導 | しどう | CHỈ ĐẠO | chỉ dẫn |
| 長期 | ちょうき | TRƯỜNG KỲ | dài hạn |
| 興味 | きょうみ | HỨNG VỊ | quan tâm |
| 検索 | けんさく | KIỂM SÁCH | tìm kiếm |
| 組み合わせる | くみあわせる | — | kết hợp |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000007, 800000022, NULL, 'markdown_book', 'T7. OS入門 + ネットワーク — TCP/IP, HTTP, Linux', '# Sách sinh viên Đại học Osaka · T7. OS入門 + ネットワーク — TCP/IP, HTTP, Linux

> **Mục tiêu nhân vật:** Đại (sinh viên năm 2 Osaka U, 22 tuổi, 9-10/2027, Toyonaka). Học các mẫu hội thoại tiếng Nhật của SV CS năm 2: hỏi sensei về process/thread/memory, xin senpai giảng lại OSI và TCP/UDP, demo `dig`/`curl` trong lecture, nhờ bạn bè Indo/Trung giúp debug Ubuntu, kể chuyện Linux cho bạn cùng phòng, và động viên Mai bắt đầu lớp N2 Yamato School.

---

## Bối cảnh

9-10/2027. Đại bước vào kỳ thu năm 2. Hai lecture lớn: **「OS入門」** do Nakagawa-sensei (60 tuổi, ex-Linux kernel contributor) phụ trách, và **「ネットワーク入門」** do Yamanaka-sensei (50 tuổi, ex-NTT engineer) phụ trách. Lab CS có server Linux SSH chung cho SV. Đại quyết định cài Ubuntu 24.04 dual-boot trên ThinkPad cá nhân. Cùng tuần đó Mai bắt đầu lớp N2 ở trường tiếng Nhật vùng Osaka (Mai đã sang Nhật ở cùng Đại từ tháng 5). Chương này tập trung các mẫu câu hỏi-đáp về OS và mạng trong giảng đường, cách demo terminal trong lecture, và hội thoại debug với bạn quốc tế.

---

## Tình huống 1 — Giảng đường E5 · 9:00, Nakagawa-sensei giảng Process vs Thread

| Vai | Lời thoại |
|---|---|
| Nakagawa | <ruby>今日<rt>きょう</rt></ruby>はプロセスとスレッドの<ruby>違<rt>ちが</rt></ruby>いから<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Hôm nay bắt đầu từ sự khác biệt giữa process và thread.)* |
| Nakagawa | プロセスは OS の<ruby>独立<rt>どくりつ</rt></ruby><ruby>実行<rt>じっこう</rt></ruby><ruby>単位<rt>たんい</rt></ruby>で、メモリ<ruby>空間<rt>くうかん</rt></ruby>は<ruby>分離<rt>ぶんり</rt></ruby>されています。<br>*(Process là đơn vị thực thi độc lập của OS, không gian bộ nhớ tách biệt.)* |
| Nakagawa | スレッドはプロセス<ruby>内<rt>ない</rt></ruby>の<ruby>軽量<rt>けいりょう</rt></ruby><ruby>実行<rt>じっこう</rt></ruby><ruby>単位<rt>たんい</rt></ruby>で、メモリを<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Thread là đơn vị thực thi nhẹ trong process, dùng chung bộ nhớ.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、メモリを<ruby>共有<rt>きょうゆう</rt></ruby>するということは、<ruby>競合<rt>きょうごう</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby>が<ruby>起<rt>お</rt></ruby>こりやすいということですか？<br>*(Thầy ơi, dùng chung bộ nhớ thì có dễ xảy ra race condition không ạ?)* |
| Nakagawa | <ruby>鋭<rt>するど</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>ですね。その<ruby>通<rt>とお</rt></ruby>りです。だからミューテックスやセマフォで<ruby>排他<rt>はいた</rt></ruby><ruby>制御<rt>せいぎょ</rt></ruby>します。<br>*(Câu hỏi sắc bén. Đúng vậy. Do đó cần dùng mutex hoặc semaphore để khoá tài nguyên.)* |
| Đại | ありがとうございます。<ruby>後<rt>あと</rt></ruby>で<ruby>実際<rt>じっさい</rt></ruby>のコードで<ruby>試<rt>ため</rt></ruby>してみます。<br>*(Em cảm ơn. Lát em sẽ thử bằng code thật.)* |

---

## Tình huống 2 — Phòng lab CS · 10:30, Đại làm mẫu `ps`/`top` cho sempai

| Vai | Lời thoại |
|---|---|
| Yumi | グエンくん、プロセスの<ruby>確認<rt>かくにん</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>、もう<ruby>覚<rt>おぼ</rt></ruby>えた？<br>*(Em Nguyễn, đã nhớ cách check process chưa?)* |
| Đại | はい。`ps aux` でリストを<ruby>表示<rt>ひょうじ</rt></ruby>、`top` でリアルタイムに<ruby>監視<rt>かんし</rt></ruby>します。<br>*(Vâng. ps aux để list, top để giám sát real-time.)* |
| Đại | (gõ terminal)<br>```bash<br>$ ps aux | head<br>$ top<br>$ kill -9 12345  # force kill PID<br>```<br> |
| Yumi | OK、いいね。<ruby>次<rt>つぎ</rt></ruby>は `htop` も<ruby>試<rt>ため</rt></ruby>してみて、もっと<ruby>見<rt>み</rt></ruby>やすいから。<br>*(OK tốt. Lần sau thử htop, nhìn dễ hơn.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>です。インストールしておきます。<br>*(Em rõ. Em cài luôn.)* |

---

## Tình huống 3 — Giảng đường E5 · 11:00, Nakagawa giảng memory management

| Vai | Lời thoại |
|---|---|
| Nakagawa | <ruby>次<rt>つぎ</rt></ruby>は<ruby>仮想<rt>かそう</rt></ruby>メモリです。プロセスごとに<ruby>独立<rt>どくりつ</rt></ruby>したアドレス<ruby>空間<rt>くうかん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ちます。<br>*(Tiếp theo là bộ nhớ ảo. Mỗi process có không gian địa chỉ độc lập.)* |
| Nakagawa | ヒープは malloc や new で<ruby>動的<rt>どうてき</rt></ruby>に<ruby>確保<rt>かくほ</rt></ruby>、スタックは<ruby>関数呼<rt>かんすうよ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しの<ruby>情報<rt>じょうほう</rt></ruby><ruby>用<rt>よう</rt></ruby>です。<br>*(Heap cấp phát động bằng malloc/new, Stack cho thông tin gọi hàm.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、メモリリークというのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>起<rt>お</rt></ruby>こりますか？<br>*(Thầy ơi, memory leak cụ thể xảy ra điều gì ạ?)* |
| Nakagawa | <ruby>解放<rt>かいほう</rt></ruby>し<ruby>忘<rt>わす</rt></ruby>れたメモリが<ruby>溜<rt>た</rt></ruby>まり<ruby>続<rt>つづ</rt></ruby>けて、<ruby>最後<rt>さいご</rt></ruby>に OOM killer に<ruby>殺<rt>ころ</rt></ruby>されます。<br>*(Bộ nhớ quên free tích tụ lại, cuối cùng bị OOM killer kill process.)* |
| Đại | OOM killer は Linux カーネルの<ruby>機能<rt>きのう</rt></ruby>ですよね？<br>*(OOM killer là tính năng của Linux kernel phải không ạ?)* |
| Nakagawa | そうです。<ruby>実際<rt>じっさい</rt></ruby>の<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>でよく<ruby>遭遇<rt>そうぐう</rt></ruby>します。<br>*(Đúng. Trong môi trường production thực tế gặp thường xuyên.)* |

---

## Tình huống 4 — Phòng lab · 13:00, Đại viết Python multi-thread

| Vai | Lời thoại |
|---|---|
| Đại | (gõ Python)<br>```python<br>import threading<br><br>def task(n):<br>    print(f"Task {n} running")<br><br>threads = [threading.Thread(target=task, args=(i,))<br>           for i in range(5)]<br>for t in threads: t.start()<br>for t in threads: t.join()<br>```<br> |
| Đại | (chạy) <ruby>5<rt>いつ</rt></ruby>つのスレッドが<ruby>並行<rt>へいこう</rt></ruby>で<ruby>動<rt>うご</rt></ruby>きました！<br>*(5 thread chạy song song được rồi!)* |
| Yumi | (đứng sau) GIL も<ruby>知<rt>し</rt></ruby>ってる？ Python のスレッドは<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>並列<rt>へいれつ</rt></ruby>じゃないよ。<br>*(Biết GIL không? Thread của Python không phải parallel thực sự đâu.)* |
| Đại | あ、Global Interpreter Lock ですね。<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>並列<rt>へいれつ</rt></ruby>には multiprocessing を<ruby>使<rt>つか</rt></ruby>うんですね。<br>*(À, Global Interpreter Lock. Muốn parallel thật phải dùng multiprocessing đúng không?)* |
| Yumi | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>大事<rt>だいじ</rt></ruby>なポイント。<br>*(Chính xác. Điểm quan trọng đấy.)* |

---

## Tình huống 5 — Giảng đường F2 · 14:00, Yamanaka-sensei giảng OSI 7 layers

| Vai | Lời thoại |
|---|---|
| Yamanaka | ネットワーク<ruby>入門<rt>にゅうもん</rt></ruby>へようこそ。<ruby>最初<rt>さいしょ</rt></ruby>は OSI <ruby>参照<rt>さんしょう</rt></ruby>モデル<ruby>7<rt>なな</rt></ruby><ruby>層<rt>そう</rt></ruby>です。<br>*(Chào mừng đến lớp Network. Đầu tiên là mô hình tham chiếu OSI 7 lớp.)* |
| Yamanaka | <ruby>上<rt>うえ</rt></ruby>から、<ruby>7<rt>なな</rt></ruby> Application、<ruby>6<rt>ろく</rt></ruby> Presentation、<ruby>5<rt>ご</rt></ruby> Session、<ruby>4<rt>よん</rt></ruby> Transport、<ruby>3<rt>さん</rt></ruby> Network、<ruby>2<rt>に</rt></ruby> Data Link、<ruby>1<rt>いち</rt></ruby> Physical です。<br>*(Từ trên xuống: 7 Application, 6 Presentation, 5 Session, 4 Transport, 3 Network, 2 Data Link, 1 Physical.)* |
| Đại | <ruby>覚<rt>おぼ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>はありますか？<br>*(Có mẹo nhớ không ạ?)* |
| Yamanaka | <ruby>英語<rt>えいご</rt></ruby>の<ruby>覚<rt>おぼ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>で「Please Do Not Throw Sausage Pizza Away」というのがあります。<br>*(Tiếng Anh có câu "Please Do Not Throw Sausage Pizza Away".)* |
| Đại | (cười) <ruby>面白<rt>おもしろ</rt></ruby>いですね。アンキカードに<ruby>登録<rt>とうろく</rt></ruby>します。<br>*(Hay quá. Em đăng ký vào thẻ Anki.)* |

---

## Tình huống 6 — Giảng đường F2 · 15:30, hỏi về TCP vs UDP

| Vai | Lời thoại |
|---|---|
| Yamanaka | TCP は<ruby>接続型<rt>せつぞくがた</rt></ruby>、<ruby>信頼性<rt>しんらいせい</rt></ruby>あり、<ruby>順序<rt>じゅんじょ</rt></ruby><ruby>保証<rt>ほしょう</rt></ruby>。Web やメールに<ruby>使<rt>つか</rt></ruby>われます。<br>*(TCP có kết nối, tin cậy, đúng thứ tự — dùng cho web và email.)* |
| Yamanaka | UDP は<ruby>非接続型<rt>ひせつぞくがた</rt></ruby>、<ruby>高速<rt>こうそく</rt></ruby>、<ruby>保証<rt>ほしょう</rt></ruby>なし。ゲーム、ストリーミング、DNS に<ruby>使<rt>つか</rt></ruby>われます。<br>*(UDP không kết nối, nhanh, không bảo đảm — dùng cho game, streaming, DNS.)* |
| Đại | <ruby>質問<rt>しつもん</rt></ruby>です。<ruby>動画<rt>どうが</rt></ruby><ruby>配信<rt>はいしん</rt></ruby>で UDP を<ruby>使<rt>つか</rt></ruby>うのは、<ruby>少<rt>すこ</rt></ruby>しデータが<ruby>欠<rt>か</rt></ruby>けてもいいから<ruby>遅<rt>おく</rt></ruby>れないようにするためですか？<br>*(Em xin hỏi. Streaming video dùng UDP là vì để mất một ít dữ liệu cũng được miễn không bị trễ đúng không ạ?)* |
| Yamanaka | <ruby>完璧<rt>かんぺき</rt></ruby>な<ruby>理解<rt>りかい</rt></ruby>です。リアルタイム<ruby>性<rt>せい</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>します。<br>*(Hiểu hoàn hảo. Ưu tiên tính real-time.)* |
| Đại | ありがとうございます。<br>*(Em cảm ơn thầy.)* |

---

## Tình huống 7 — Trước lớp F2 · 15:50, Đại làm mẫu `curl -v` trên màn chiếu

*Yamanaka mời Đại lên demo HTTPS handshake.*

| Vai | Lời thoại |
|---|---|
| Yamanaka | グエンくん、ターミナルで HTTPS の<ruby>動<rt>うご</rt></ruby>きを<ruby>見<rt>み</rt></ruby>せてもらえますか？<br>*(Em Nguyễn, em làm mẫu hoạt động HTTPS bằng terminal được không?)* |
| Đại | はい、`curl -v` で<ruby>詳<rt>くわ</rt></ruby>しい<ruby>過程<rt>かてい</rt></ruby>が<ruby>見<rt>み</rt></ruby>られます。<br>*(Vâng, dùng curl -v sẽ thấy quá trình chi tiết.)* |
| Đại | (gõ) `curl -v https://google.com` → <ruby>画面<rt>がめん</rt></ruby>に TCP <ruby>3<rt>さん</rt></ruby> way handshake、TLS handshake、HTTP/<ruby>2<rt>に</rt></ruby> response が<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>されます。<br>*(curl -v https://google.com — màn hình hiện lần lượt TCP 3-way handshake, TLS handshake, HTTP/2 response.)* |
| Yamanaka | TLS の<ruby>証明書<rt>しょうめいしょ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>も<ruby>見<rt>み</rt></ruby>えますね。<br>*(Cũng thấy được kiểm tra certificate TLS nữa.)* |
| Đại | はい。Let''s Encrypt で<ruby>無料<rt>むりょう</rt></ruby>に<ruby>取<rt>と</rt></ruby>れる<ruby>証明書<rt>しょうめいしょ</rt></ruby>です。<br>*(Vâng. Certificate có thể lấy miễn phí từ Let''s Encrypt.)* |

---

## Tình huống 8 — Phòng lab · 17:00, Yamanaka giảng DNS hierarchy

| Vai | Lời thoại |
|---|---|
| Yamanaka | DNS は<ruby>階層<rt>かいそう</rt></ruby><ruby>構造<rt>こうぞう</rt></ruby>です。root →<ruby>3<rt>さん</rt></ruby>TLD (com, jp) → authoritative の<ruby>順<rt>じゅん</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>します。<br>*(DNS phân cấp: root → TLD (com, jp) → authoritative.)* |
| Đại | (terminal) `dig vandai.dev` で<ruby>調<rt>しら</rt></ruby>べてみます。<br>*(Em thử bằng dig vandai.dev.)* |
| Đại | A record と nameserver が Cloudflare と<ruby>表示<rt>ひょうじ</rt></ruby>されます。<br>*(Hiện A record và nameserver là Cloudflare.)* |
| Yamanaka | キャッシュも<ruby>大事<rt>だいじ</rt></ruby>です。TTL が<ruby>短<rt>みじか</rt></ruby>いと<ruby>反映<rt>はんえい</rt></ruby>が<ruby>速<rt>はや</rt></ruby>く、<ruby>長<rt>なが</rt></ruby>いとサーバ<ruby>負荷<rt>ふか</rt></ruby>が<ruby>軽<rt>かる</rt></ruby>くなります。<br>*(Cache cũng quan trọng. TTL ngắn thì update nhanh, TTL dài thì giảm tải server.)* |
| Đại | <ruby>本番<rt>ほんばん</rt></ruby>では<ruby>普通<rt>ふつう</rt></ruby>どれくらいに<ruby>設定<rt>せってい</rt></ruby>しますか？<br>*(Production thường set khoảng bao nhiêu ạ?)* |
| Yamanaka | <ruby>安定<rt>あんてい</rt></ruby>運用なら<ruby>3600<rt>さんぜんろっぴゃく</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>移行<rt>いこう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>なら<ruby>300<rt>さんびゃく</rt></ruby><ruby>秒<rt>びょう</rt></ruby>くらいですね。<br>*(Ổn định thì 3600s, đang migrate thì khoảng 300s.)* |

---

## Tình huống 9 — Phòng riêng · cuối tuần, Đại nhắn Rajesh xin lời khuyên dual-boot

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Rajesh) <ruby>先輩<rt>せんぱい</rt></ruby>、Ubuntu のデュアルブートを<ruby>導入<rt>どうにゅう</rt></ruby>したいんですが、<ruby>注意点<rt>ちゅういてん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか？ |
| Rajesh | (English) Test in Live USB first. Backup Windows partition. Use Ubuntu 24.04 LTS. |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>金<rt>きん</rt></ruby><ruby>曜<rt>よう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>にやってみます。 |
| Rajesh | Don''t forget `secure boot` setting in BIOS. |
| Đại | あ、<ruby>大事<rt>だいじ</rt></ruby>なポイントですね。<ruby>無効<rt>むこう</rt></ruby>にする<ruby>必要<rt>ひつよう</rt></ruby>がありますよね？ |
| Rajesh | Yes. Or you can sign your own key. But disable is easier for student. |
| Đại | ありがとうございます！ |

---

## Tình huống 10 — Phòng riêng tối thứ 7 · 22:00, Đại nhờ Wang debug Wi-Fi sau khi cài Ubuntu

*Wang là sinh viên Trung Quốc cùng lab, rành kernel module.*

| Vai | Lời thoại |
|---|---|
| Đại | (Discord call) <ruby>王<rt>ワン</rt></ruby>くん、Ubuntu <ruby>入<rt>はい</rt></ruby>ったけど Wi-Fi が<ruby>認識<rt>にんしき</rt></ruby>されないんだ。<br>*(Wang ơi, cài Ubuntu xong nhưng Wi-Fi không nhận.)* |
| Wang | ThinkPad? Intel AX チップなら<ruby>追加<rt>ついか</rt></ruby>ドライバが<ruby>必要<rt>ひつよう</rt></ruby>。`lspci | grep -i network` で<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(ThinkPad? Intel AX chip thì cần driver bổ sung. Check bằng lspci | grep -i network.)* |
| Đại | (terminal) Intel Wi-Fi 6E AX211 と<ruby>表示<rt>ひょうじ</rt></ruby>されました。<br>*(Hiện Intel Wi-Fi 6E AX211.)* |
| Wang | `sudo apt install linux-firmware` を<ruby>実行<rt>じっこう</rt></ruby>して、<ruby>再起動<rt>さいきどう</rt></ruby>。<br>*(Chạy sudo apt install linux-firmware xong reboot.)* |
| Đại | (sau reboot) <ruby>動<rt>うご</rt></ruby>きました！ <ruby>本当<rt>ほんとう</rt></ruby>にありがとう、<ruby>王<rt>ワン</rt></ruby>くん。<br>*(Chạy được rồi! Cảm ơn Wang thật nhiều.)* |
| Wang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>も<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことで<ruby>悩<rt>なや</rt></ruby>んだから。<br>*(Không sao. Năm trước tôi cũng kẹt cái này.)* |

---

## Tình huống 11 — Phòng riêng · sáng chủ nhật, Đại thiết lập môi trường dev Ubuntu

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Rajesh) <ruby>先輩<rt>せんぱい</rt></ruby>、おすすめの dev <ruby>環境<rt>かんきょう</rt></ruby>セットを<ruby>教<rt>おし</rt></ruby>えてください。 |
| Rajesh | (English) zsh + oh-my-zsh, tmux, neovim, Docker, asdf for runtime versions. |
| Đại | (terminal)<br>```bash<br>sudo apt install zsh tmux neovim docker.io<br>sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"<br>chsh -s $(which zsh)<br>```<br> |
| Đại | (LINE) <ruby>環境<rt>かんきょう</rt></ruby>セット<ruby>完了<rt>かんりょう</rt></ruby>です！ |
| Rajesh | Great. Now you have a real CS workstation. |
| Đại | <ruby>大学<rt>だいがく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>でようやくスタートラインに<ruby>立<rt>た</rt></ruby>てた<ruby>気分<rt>きぶん</rt></ruby>です。 |

---

## Tình huống 12 — Cafeteria · chiều chủ nhật, ăn cùng bạn Indo Putri

| Vai | Lời thoại |
|---|---|
| Putri | グエンくん、<ruby>最近<rt>さいきん</rt></ruby>ターミナルばかり<ruby>触<rt>さわ</rt></ruby>ってるね。<br>*(Em Nguyễn, dạo này thấy lúc nào cũng chạm terminal.)* |
| Đại | Ubuntu に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えたんだ。<ruby>最初<rt>さいしょ</rt></ruby>は Wi-Fi で<ruby>苦労<rt>くろう</rt></ruby>したけど、<ruby>今<rt>いま</rt></ruby>は<ruby>快適<rt>かいてき</rt></ruby>です。<br>*(Mình chuyển sang Ubuntu rồi. Lúc đầu khổ vì Wi-Fi, giờ mượt rồi.)* |
| Putri | <ruby>私<rt>わたし</rt></ruby>もそろそろ Linux <ruby>覚<rt>おぼ</rt></ruby>えないと。インターンで<ruby>聞<rt>き</rt></ruby>かれて<ruby>困<rt>こま</rt></ruby>った。<br>*(Mình cũng sắp phải học Linux. Hồi intern bị hỏi mà không trả lời được.)* |
| Đại | <ruby>基本<rt>きほん</rt></ruby>コマンドだけでも<ruby>覚<rt>おぼ</rt></ruby>えとくと<ruby>違<rt>ちが</rt></ruby>うよ。`ls`、`cd`、`grep`、`ssh` の<ruby>四<rt>よっ</rt></ruby>つから<ruby>始<rt>はじ</rt></ruby>めて。<br>*(Học mỗi vài lệnh cơ bản cũng khác liền. Bắt đầu từ ls, cd, grep, ssh.)* |
| Putri | OK、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>教<rt>おし</rt></ruby>えて！<br>*(OK, tuần sau dạy mình nha!)* |

---

## Tình huống 13 — Phòng riêng · đêm chủ nhật, gọi video Mai (cảnh tiếng Việt cuối)

> Cảnh tiếng Việt — Đại gọi video về cho Mai vừa đi học buổi đầu tiên lớp N2 ở Yamato Language School.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi! Hôm nay em đi buổi đầu lớp `N2`. Lớp 12 đứa: 5 VN, 4 TQ, 2 Indo, 1 Phil. |
| Đại | (tiếng Việt) Wow đông ghê. Cô giáo người Nhật hả? |
| Mai | (tiếng Việt) `Yamamoto-sensei`, 35 tuổi, từng dạy ở Tokyo. Cô nói chậm, dễ nghe. Buổi đầu cô hỏi vì sao học N2, em nói: "Vì chồng em đang học CS ở Osaka, em muốn sau này nói chuyện với gia đình anh ấy". |
| Đại | (tiếng Việt) Trời, em làm anh muốn khóc. Còn 6 tháng nữa em thi tháng 2/2028 phải không? |
| Mai | (tiếng Việt) Dạ. Mỗi ngày em sẽ học 2 tiếng. Cuối tuần làm đề. Anh dạy em mẫu câu nào hôm nay đi! |
| Đại | (tiếng Việt) Được. Hôm nay anh học `OS` với `Network`. Em nhớ câu này: 「〜というのは、具体的にどういう意味ですか」 — dùng khi hỏi lại thuật ngữ với sensei. Cực kỳ hữu dụng cho `N2`. |
| Mai | (tiếng Việt) Em ghi vào sổ rồi. À, anh cài `Ubuntu` xong chưa? |
| Đại | (tiếng Việt) Xong rồi. Wi-Fi kẹt 2 tiếng, nhờ bạn Trung Quốc cứu. Giờ anh có `zsh + tmux + neovim + Docker`. Sẵn sàng cho năm 3 lab Inoue rồi. |
| Mai | (tiếng Việt) Mình cùng cố nha. Em ngủ đây. |

---

## Đọng lại chương 7

Tuần học OS + Network của Đại ở Osaka U. Học **process vs thread** + race condition (mutex/semaphore), demo `ps aux` + `top` cho senpai. Học **virtual memory**, **heap vs stack**, **memory leak → OOM killer** (Nakagawa-sensei ex-kernel contributor). Học **OSI 7 layers** với mnemonic Please Do Not Throw Sausage Pizza Away, **TCP vs UDP** với insight streaming dùng UDP để ưu tiên real-time, demo `curl -v https://google.com` lên màn chiếu để cả lớp thấy **TCP handshake → TLS handshake → HTTP/2 response**. Học **DNS hierarchy** với `dig`. Cuối tuần cài **Ubuntu 24.04 dual-boot**, nhờ Rajesh hướng dẫn, Wang fix Wi-Fi driver `linux-firmware`. Setup **zsh + tmux + neovim + Docker** — workstation thật sự đầu tiên. Mẫu câu chìa khoá hỏi-đáp: **「〜というのは、具体的にどういう意味ですか」・「〜は、〜のためですか」・「もう一度お願いします」**. Tối Chủ Nhật gọi video Mai — Mai vừa nhập học N2 Yamato School, dạy Mai chính cái mẫu câu hỏi lại sensei.

> Từ vựng & mẫu câu chương này: プロセス・スレッド・競合状態・ミューテックス・セマフォ・仮想メモリ・ヒープ・スタック・メモリリーク・OOM killer・GIL・multiprocessing・OSI 7層・TCP・UDP・TLS handshake・HTTP/2・Let''s Encrypt・DNS・TTL・dig・curl -v・Ubuntu 24.04・dual-boot・secure boot・linux-firmware・zsh・tmux・neovim・Docker・〜というのは、具体的にどういう意味ですか・もう一度お願いします・鋭い質問ですね・了解です

## Bí quyết chương

- **Hỏi sensei thông minh**: Mẫu 「〜は、〜のためですか」 (UDP là vì để ưu tiên không trễ phải không ạ) cho thấy SV tự suy luận trước khi hỏi — sensei rất quý.
- **Bạn quốc tế là tài nguyên**: Wang (TQ, kernel), Rajesh (Ấn, Linux veteran), Putri (Indo) — mỗi người một thế mạnh. SV CS du học cần network đa quốc.
- **Hạt giống năm 3**: Workstation Linux đầy đủ là tiền đề cho lab Inoue (sách 23) — Đại không còn là tay mơ.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 単位 | たんい | ĐƠN VỊ | đơn vị |
| 軽量 | けいりょう | KHINH LƯỢNG | nhẹ |
| 分離 | ぶんり | PHÂN LY | tách biệt |
| 競合状態 | きょうごうじょうたい | CẠNH HỢP TRẠNG THÁI | race condition |
| 鋭い | するどい | DUỆ | sắc bén |
| 排他制御 | はいたせいぎょ | BÀI THA CHẾ NGỰ | điều khiển độc quyền |
| 監視 | かんし | GIÁM THỊ | giám sát |
| 了解 | りょうかい | LIỄU GIẢI | hiểu rồi, rõ |
| 仮想 | かそう | GIẢ TƯỞNG | ảo |
| 空間 | くうかん | KHÔNG GIAN | không gian |
| 動的 | どうてき | ĐỘNG ĐÍCH | động (dynamic) |
| 確保 | かくほ | XÁC BẢO | cấp phát, đảm bảo |
| 関数呼び出し | かんすうよびだし | HÀM SỐ HÔ XUẤT | gọi hàm |
| 解放 | かいほう | GIẢI PHÓNG | giải phóng |
| 遭遇 | そうぐう | TAO NGỘ | gặp phải |
| 本番環境 | ほんばんかんきょう | BẢN PHIÊN HOÀN CẢNH | môi trường production |
| 並行 | へいこう | TỊNH HÀNH | đồng thời (concurrent) |
| 並列 | へいれつ | TỊNH LIỆT | song song (parallel) |
| 参照 | さんしょう | THAM CHIẾU | tham chiếu |
| 層 | そう | TẦNG | tầng, lớp |
| 接続型 | せつぞくがた | TIẾP TỤC HÌNH | dạng có kết nối |
| 信頼性 | しんらいせい | TÍN LẠI TÍNH | độ tin cậy |
| 順序 | じゅんじょ | THUẬN TỰ | thứ tự |
| 保証 | ほしょう | BẢO CHỨNG | bảo đảm |
| 高速 | こうそく | CAO TỐC | tốc độ cao |
| 配信 | はいしん | PHỐI TÍN | phân phối, streaming |
| 優先 | ゆうせん | ƯU TIÊN | ưu tiên |
| 過程 | かてい | QUÁ TRÌNH | quá trình |
| 証明書 | しょうめいしょ | CHỨNG MINH THƯ | chứng chỉ |
| 階層構造 | かいそうこうぞう | GIAI TẦNG CẤU TẠO | cấu trúc phân tầng |
| 解決 | かいけつ | GIẢI QUYẾT | giải quyết, phân giải |
| 負荷 | ふか | PHỤ HÀ | tải |
| 注意点 | ちゅういてん | CHÚ Ý ĐIỂM | điểm cần lưu ý |
| 無効 | むこう | VÔ HIỆU | vô hiệu hoá |
| 認識 | にんしき | NHẬN THỨC | nhận diện |
| 再起動 | さいきどう | TÁI KHỞI ĐỘNG | khởi động lại |
| 切り替える | きりかえる | — | chuyển đổi |
| 快適 | かいてき | KHOÁI ĐÍCH | thoải mái, mượt |
| 基本 | きほん | CƠ BẢN | cơ bản |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000008, 800000022, NULL, 'markdown_book', 'T8. Mobile dev — Flutter first app cho Mai', '# Sách sinh viên Đại học Osaka · T8. Mobile dev — Flutter first app cho Mai

> **Mục tiêu nhân vật:** Đại (sinh viên năm 2 Osaka U, 22 tuổi, 10-11/2027, Toyonaka). Học các mẫu hội thoại tiếng Nhật của SV mobile dev: hỏi sensei về lựa chọn framework, giải thích Dart cho bạn trong tutorial, hỏi lại senpai về StatefulWidget, demo `flutter run` cho cả lab, nhận góp ý feature từ Mai (tiếng Việt) và translate thành spec, brainstorm hạt giống Hizashi với Tuấn.

---

## Bối cảnh

10-11/2027. Đại học lecture **「モバイルアプリ<ruby>開発<rt>かいはつ</rt></ruby><ruby>入門<rt>にゅうもん</rt></ruby>」** do Suzuki-sensei (40 tuổi, ex-Google Tokyo Android team) phụ trách. Lecture so sánh native iOS/Android, React Native, và Flutter. Lớp chọn **Flutter 3.x** vì single codebase + native compile. Cuối tuần Đại build app đầu tay **"Mai''s vocabulary tracker"** — Mai dùng học N2 từ tháng 9. App có SRS + dự định thêm TTS. Đây cũng là khoảnh khắc **hạt giống Hizashi** chính thức nảy mầm trong đầu Đại. Chương này tập trung các mẫu câu hỏi-đáp về mobile dev, demo code Flutter, và đối thoại Việt-Việt với Mai về tính năng app.

---

## Tình huống 1 — Giảng đường D3 · 9:00, Suzuki-sensei giảng tại sao chọn Flutter

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby>はモバイル<ruby>開発<rt>かいはつ</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つあります。<br>*(Hôm nay bắt đầu từ lựa chọn cho mobile dev. Có 3 nhóm lớn.)* |
| Suzuki | <ruby>1<rt>いち</rt></ruby>:Native — iOS は Swift、Android は Kotlin。<ruby>性能<rt>せいのう</rt></ruby><ruby>最高<rt>さいこう</rt></ruby>ですが、コードベースが<ruby>二<rt>ふた</rt></ruby>つ<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(1: Native — iOS Swift, Android Kotlin. Hiệu năng cao nhất nhưng cần 2 codebase.)* |
| Suzuki | <ruby>2<rt>に</rt></ruby>:React Native — JS、ホットリロード、<ruby>単一<rt>たんいつ</rt></ruby>コードベース。Meta が<ruby>開発<rt>かいはつ</rt></ruby>。<br>*(2: React Native — JS, hot reload, single codebase. Meta phát triển.)* |
| Suzuki | <ruby>3<rt>さん</rt></ruby>:Flutter — Dart、ネイティブコンパイル、<ruby>美<rt>うつく</rt></ruby>しい UI。Google が<ruby>開発<rt>かいはつ</rt></ruby>。<br>*(3: Flutter — Dart, native compile, UI đẹp. Google phát triển.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>本講座<rt>ほんこうざ</rt></ruby>で Flutter を<ruby>選<rt>えら</rt></ruby>んだ<ruby>理由<rt>りゆう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Thầy ơi, lý do khoá học này chọn Flutter là gì ạ?)* |
| Suzuki | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>単一<rt>たんいつ</rt></ruby>コードで iOS、Android、Web、デスクトップまで<ruby>動<rt>うご</rt></ruby>くからです。<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>には<ruby>学習<rt>がくしゅう</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby>がいいです。<br>*(Câu hỏi hay. Vì một codebase chạy được iOS, Android, Web, desktop. Với SV năm 2 thì hiệu quả học cao.)* |

---

## Tình huống 2 — Giảng đường D3 · 10:00, Suzuki giảng Dart cơ bản

| Vai | Lời thoại |
|---|---|
| Suzuki | Dart は<ruby>静的<rt>せいてき</rt></ruby><ruby>型付<rt>かたつ</rt></ruby>けで、Java と JS のハイブリッドの<ruby>感<rt>かん</rt></ruby>じです。<br>*(Dart là kiểu tĩnh, cảm giác lai Java và JS.)* |
| Suzuki | async/await が<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>装備<rt>そうび</rt></ruby>です。API <ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しが<ruby>書<rt>か</rt></ruby>きやすいです。<br>*(async/await là tính năng built-in. Viết gọi API rất gọn.)* |
| Đại | (giơ tay) TypeScript と<ruby>比<rt>くら</rt></ruby>べると、どんな<ruby>違<rt>ちが</rt></ruby>いがありますか？<br>*(So với TypeScript, có khác gì không ạ?)* |
| Suzuki | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>似<rt>に</rt></ruby>ています。TypeScript を<ruby>知<rt>し</rt></ruby>っていれば、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で Dart に<ruby>慣<rt>な</rt></ruby>れます。<br>*(Rất giống. Nếu biết TypeScript thì 1 tuần quen Dart.)* |
| Đại | <ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Em yên tâm rồi ạ.)* |

---

## Tình huống 3 — Phòng lab CS · 11:00, Đại giải thích Dart cho Putri

| Vai | Lời thoại |
|---|---|
| Putri | グエンくん、Dart の<ruby>変数<rt>へんすう</rt></ruby><ruby>宣言<rt>せんげん</rt></ruby>、`var` と `final` と `const` の<ruby>違<rt>ちが</rt></ruby>いがよく<ruby>分<rt>わ</rt></ruby>からない。<br>*(Em Nguyễn, mình không phân biệt được var, final, const của Dart.)* |
| Đại | `var` は<ruby>再<rt>さい</rt></ruby><ruby>代入<rt>だいにゅう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>、`final` は<ruby>一度<rt>いちど</rt></ruby>だけ<ruby>代入<rt>だいにゅう</rt></ruby>、`const` はコンパイル<ruby>時<rt>じ</rt></ruby><ruby>定数<rt>ていすう</rt></ruby>です。<br>*(var có thể gán lại, final chỉ gán một lần, const là hằng số tại compile time.)* |
| Đại | (viết ví dụ trên giấy)<br>```dart<br>var name = ''Đại'';        // có thể đổi sau<br>final age = 22;           // gán 1 lần, runtime OK<br>const PI = 3.14;          // compile time<br>```<br> |
| Putri | あ、わかりやすい！ TypeScript の `let`、`const` <ruby>2<rt>ふた</rt></ruby>つだけより<ruby>細<rt>こま</rt></ruby>かいんだね。<br>*(À dễ hiểu! Khác với TypeScript chỉ có let và const.)* |
| Đại | そうそう。<ruby>細<rt>こま</rt></ruby>かいけど、その<ruby>分<rt>ぶん</rt></ruby><ruby>最適化<rt>さいてきか</rt></ruby>が<ruby>効<rt>き</rt></ruby>きやすい。<br>*(Đúng vậy. Chi tiết hơn nhưng nhờ vậy tối ưu tốt hơn.)* |

---

## Tình huống 4 — Phòng lab · 14:00, Đại tạo Flutter app đầu tay

| Vai | Lời thoại |
|---|---|
| Đại | (terminal) `flutter create my_first_app && cd my_first_app`<br> |
| Đại | (lib/main.dart)<br>```dart<br>import ''package:flutter/material.dart'';<br><br>void main() => runApp(MyApp());<br><br>class MyApp extends StatelessWidget {<br>  @override<br>  Widget build(BuildContext context) {<br>    return MaterialApp(<br>      home: Scaffold(<br>        appBar: AppBar(title: Text(''First App'')),<br>        body: Center(child: Text(''Hello, Flutter!'')),<br>      ),<br>    );<br>  }<br>}<br>```<br> |
| Đại | (terminal) `flutter run -d chrome` → ブラウザに<ruby>表示<rt>ひょうじ</rt></ruby>。<ruby>続<rt>つづ</rt></ruby>けて `flutter run -d ios` → iOS シミュレータでも<ruby>動<rt>うご</rt></ruby>く！<br>*(Hiện trên Chrome → tiếp tục flutter run -d ios → chạy trên iOS simulator!)* |
| Đại | (cười) <ruby>同<rt>おな</rt></ruby>じコードが Web でも iOS でも<ruby>動<rt>うご</rt></ruby>くって<ruby>感動<rt>かんどう</rt></ruby>です！<br>*(Cùng code chạy được Web và iOS — xúc động thật!)* |

---

## Tình huống 5 — Phòng lab · 15:00, Đại hỏi senpai Yumi về StatefulWidget

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>由美<rt>ゆみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、StatelessWidget と StatefulWidget の<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けがまだ<ruby>曖昧<rt>あいまい</rt></ruby>です。<br>*(Chị Yumi, em còn mơ hồ về phân biệt StatelessWidget với StatefulWidget.)* |
| Yumi | <ruby>簡単<rt>かんたん</rt></ruby>。<ruby>画面<rt>がめん</rt></ruby>が<ruby>変<rt>か</rt></ruby>わるかどうか。テキストや<ruby>固定<rt>こてい</rt></ruby>ボタンなら Stateless、カウンタやフォームなら Stateful。<br>*(Đơn giản. Màn hình có đổi không. Text/button cố định thì Stateless, counter/form thì Stateful.)* |
| Đại | `setState` を<ruby>呼<rt>よ</rt></ruby>ぶと、build が<ruby>再<rt>さい</rt></ruby><ruby>実行<rt>じっこう</rt></ruby>される<ruby>仕組<rt>しく</rt></ruby>みですよね？<br>*(Gọi setState thì build chạy lại đúng không ạ?)* |
| Yumi | そう。React の `setState` と<ruby>同<rt>おな</rt></ruby>じ<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>。<ruby>差分<rt>さぶん</rt></ruby>レンダリングするから<ruby>速<rt>はや</rt></ruby>い。<br>*(Đúng. Tư duy giống setState của React. Render diff nên nhanh.)* |
| Đại | <ruby>納得<rt>なっとく</rt></ruby>です。ありがとうございます。<br>*(Em hiểu rõ rồi. Cảm ơn chị.)* |

---

## Tình huống 6 — Phòng riêng · cuối tuần, Đại brainstorm app cho Mai (LINE Tuấn)

*Đại nhắn Tuấn ở Hà Nội để chốt feature.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Tuấn) Tuấn ơi, anh định build app vocab tracker cho Mai học N2. Mày góp ý feature đi. |
| Tuấn | OK. 1. Thêm thẻ (JP + reading + nghĩa VN). 2. SRS giãn cách. 3. Audio TTS. 4. Tag theo level. 5. Stats học. |
| Đại | TTS để v2 đi. v1 anh làm core: thẻ + SRS + tag. DB Sqlite local. |
| Tuấn | Chuẩn. SRS algorithm dùng SM-2 đơn giản nhé, đừng vướng FSRS làm gì. |
| Đại | Chốt SM-2. Cuối tuần này code xong v0.1. |

---

## Tình huống 7 — Phòng riêng · tối thứ 7, Đại code Vocab + SRS

| Vai | Lời thoại |
|---|---|
| Đại | (lib/models/vocab.dart)<br>```dart<br>class Vocab {<br>  final int id;<br>  final String jp;<br>  final String reading;<br>  final String vn;<br>  int srsLevel;<br>  DateTime? nextReview;<br><br>  Vocab({required this.id, required this.jp,<br>         required this.reading, required this.vn,<br>         this.srsLevel = 0, this.nextReview});<br>}<br>```<br> |
| Đại | (lib/services/srs.dart)<br>```dart<br>// SM-2 simplified intervals (days)<br>const intervals = [1, 3, 7, 14, 30, 90];<br><br>DateTime nextReviewDate(int level) {<br>  final days = intervals[level.clamp(0, intervals.length - 1)];<br>  return DateTime.now().add(Duration(days: days));<br>}<br>```<br> |
| Đại | (LINE Tuấn) Xong core rồi. Thêm 50 từ N2 test → app hiện "5 từ đến hạn hôm nay" → quiz → đánh dấu đúng → giãn sang 3 ngày tới ✓ |
| Tuấn | Đỉnh. Gửi mai test thử đi. |

---

## Tình huống 8 — Phòng riêng · sáng chủ nhật, Mai dùng app + phản hồi (cảnh tiếng Việt giữa chương)

*Đại video call Mai, đưa iPhone đang cài app để Mai thử qua màn hình.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi app dễ thương ghê! Cái card lật mượt lắm. Em thêm 100 từ N2 vào rồi. |
| Đại | (tiếng Việt) Vui không em? |
| Mai | (tiếng Việt) Vui. Nhưng em muốn nghe phát âm chuẩn. Anh thêm tính năng đọc tiếng Nhật được không? |
| Đại | (tiếng Việt) Được chứ. Flutter có gói `flutter_tts` luôn. Tuần sau anh thêm. |
| Mai | (tiếng Việt) Còn nữa — chỗ "đã thuộc / chưa thuộc" anh thêm nút "khó quá, học lại từ đầu" được không? Có hôm em sai cả mục N2 mondai 1, muốn reset. |
| Đại | (tiếng Việt) Reset SRS về level 0. OK ghi nhận, anh làm. |
| Mai | (tiếng Việt) Anh biết không, mấy đứa bạn em cũng đang cần app kiểu này. Linh-Anh đang học N4. Trang đang ôn N3. Có app tiếng Việt làm cho người Việt thì tốt biết bao. |
| Đại | (tiếng Việt, ngẩn người) Em nói đúng. App tiếng Nhật mà tiếng Anh giao diện, lại thiếu giải thích văn hoá VN... Đó là khoảng trống. |

---

## Tình huống 9 — Phòng riêng · sáng chủ nhật, Đại dịch phản hồi Mai thành spec

| Vai | Lời thoại |
|---|---|
| Đại | (tự nói ra tiếng, viết spec vào notebook) <ruby>機能<rt>きのう</rt></ruby><ruby>追加<rt>ついか</rt></ruby><ruby>仕様<rt>しよう</rt></ruby>:<br>*(Spec thêm tính năng:)* |
| Đại | <ruby>1<rt>いち</rt></ruby>. TTS<ruby>機能<rt>きのう</rt></ruby>:`flutter_tts` パッケージ<ruby>使用<rt>しよう</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>ロケール ja-JP <ruby>固定<rt>こてい</rt></ruby>。<br>*(1. Chức năng TTS: dùng gói flutter_tts, locale ja-JP.)* |
| Đại | <ruby>2<rt>に</rt></ruby>. SRS リセットボタン:カード<ruby>個別<rt>こべつ</rt></ruby>に level <ruby>0<rt>ぜろ</rt></ruby> へ<ruby>戻<rt>もど</rt></ruby>す。<br>*(2. Nút reset SRS: từng thẻ về level 0.)* |
| Đại | <ruby>3<rt>さん</rt></ruby>. UI:ベトナム<ruby>語<rt>ご</rt></ruby><ruby>表記<rt>ひょうき</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>。<ruby>文化的<rt>ぶんかてき</rt></ruby><ruby>注釈<rt>ちゅうしゃく</rt></ruby><ruby>欄<rt>らん</rt></ruby>を<ruby>新設<rt>しんせつ</rt></ruby>。<br>*(3. UI: thêm hiển thị tiếng Việt. Tạo cột chú thích văn hoá.)* |

---

## Tình huống 10 — Phòng riêng · chiều chủ nhật, Đại implement TTS

| Vai | Lời thoại |
|---|---|
| Đại | (pubspec.yaml)<br>```yaml<br>dependencies:<br>  flutter_tts: ^4.0.0<br>  sqflite: ^2.3.0<br>```<br> |
| Đại | (lib/services/tts_service.dart)<br>```dart<br>import ''package:flutter_tts/flutter_tts.dart'';<br><br>class TtsService {<br>  final _tts = FlutterTts();<br><br>  Future<void> init() async {<br>    await _tts.setLanguage(''ja-JP'');<br>    await _tts.setSpeechRate(0.5);<br>  }<br><br>  Future<void> speak(String text) => _tts.speak(text);<br>}<br>```<br> |
| Đại | (chạy app, nhấn nút phát âm 「<ruby>勉強<rt>べんきょう</rt></ruby>」) `べんきょう` <ruby>聞<rt>き</rt></ruby>こえました！<br>*(Phát ra "べんきょう" rồi!)* |
| Đại | (LINE Mai) Em ơi, TTS done. Mai sáng anh send file mới. |
| Mai | (LINE, tiếng Việt) Tuyệt vời. Anh đỉnh nhất quả đất. |

---

## Tình huống 11 — Phòng lab · sáng thứ 2, Đại làm mẫu cho Suzuki-sensei

*Đại xin 10 phút sau lecture để demo cá nhân.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>鈴木<rt>すずき</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>個人<rt>こじん</rt></ruby><ruby>制作<rt>せいさく</rt></ruby>でアプリを<ruby>作<rt>つく</rt></ruby>ってみました。<ruby>見<rt>み</rt></ruby>ていただけますか？<br>*(Thưa thầy Suzuki, cuối tuần em làm app cá nhân. Thầy xem giúp em được không ạ?)* |
| Suzuki | もちろん。<ruby>何<rt>なん</rt></ruby>のアプリ？<br>*(Tất nhiên. App gì?)* |
| Đại | ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>単語<rt>たんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリです。SRS と TTS<ruby>機能<rt>きのう</rt></ruby><ruby>付<rt>つ</rt></ruby>きです。<br>*(App học từ vựng tiếng Nhật cho người Việt. Có SRS và TTS.)* |
| Đại | (demo trên iPhone) <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>枚<rt>まい</rt></ruby> → <ruby>音声<rt>おんせい</rt></ruby><ruby>再生<rt>さいせい</rt></ruby> → <ruby>覚<rt>おぼ</rt></ruby>えていたら<ruby>3<rt>みっ</rt></ruby><ruby>日後<rt>かご</rt></ruby>へ。<br>*(Hôm nay 5 thẻ ôn → phát audio → nhớ rồi thì sang 3 ngày sau.)* |
| Suzuki | <ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>でこのレベル？ ターゲットユーザーが<ruby>明確<rt>めいかく</rt></ruby>で、いい<ruby>視点<rt>してん</rt></ruby>です。<br>*(SV năm 2 mà làm tới mức này à? Target user rõ ràng, góc nhìn tốt.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>妻<rt>つま</rt></ruby>が N2 を<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>で、<ruby>彼女<rt>かのじょ</rt></ruby>のために<ruby>作<rt>つく</rt></ruby>りました。<br>*(Em không dám nhận. Vợ em đang học N2, em làm cho cô ấy.)* |
| Suzuki | (cười ấm) いい<ruby>動機<rt>どうき</rt></ruby>です。<ruby>本格的<rt>ほんかくてき</rt></ruby>に<ruby>発展<rt>はってん</rt></ruby>させたら、<ruby>卒業<rt>そつぎょう</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>のテーマにもなりますよ。<br>*(Động cơ tốt đấy. Phát triển nghiêm túc thì còn làm được đề tài tốt nghiệp.)* |
| Đại | (tim đập mạnh) <ruby>本当<rt>ほんとう</rt></ruby>ですか？ <ruby>考<rt>かんが</rt></ruby>えてみます。<br>*(Thật ạ? Em sẽ suy nghĩ ạ.)* |

---

## Tình huống 12 — Cafeteria · trưa thứ 2, Đại nhắn Aiko ý tưởng startup

*Aiko là bạn cùng lab từ năm 1, có gốc thiết kế.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>愛子<rt>あいこ</rt></ruby>さん、ちょっと<ruby>相談<rt>そうだん</rt></ruby>があるんだけど。<br>*(Aiko, mình có chuyện muốn bàn.)* |
| Aiko | <ruby>何<rt>なに</rt></ruby>？<br>*(Gì thế?)* |
| Đại | ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリ、<ruby>本気<rt>ほんき</rt></ruby>でやろうかと<ruby>思<rt>おも</rt></ruby>ってる。<br>*(App học tiếng Nhật cho người Việt — mình đang tính làm nghiêm túc.)* |
| Aiko | <ruby>面白<rt>おもしろ</rt></ruby>そう。<ruby>市場<rt>しじょう</rt></ruby>は？<br>*(Có vẻ thú vị. Market thế nào?)* |
| Đại | <ruby>日本<rt>にほん</rt></ruby><ruby>在住<rt>ざいじゅう</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>労働<rt>ろうどう</rt></ruby><ruby>者<rt>しゃ</rt></ruby>が<ruby>50<rt>ごじゅう</rt></ruby><ruby>万人<rt>まんにん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>、<ruby>留学生<rt>りゅうがくせい</rt></ruby>が<ruby>10<rt>じゅう</rt></ruby><ruby>万人<rt>まんにん</rt></ruby><ruby>近<rt>ちか</rt></ruby>く。<br>*(Người Việt đang sống ở Nhật trên 500k, du học sinh gần 100k.)* |
| Aiko | <ruby>小<rt>ちい</rt></ruby>さくないね。UI <ruby>設計<rt>せっけい</rt></ruby>、<ruby>手伝<rt>てつだ</rt></ruby>うよ。<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>として<ruby>覚<rt>おぼ</rt></ruby>えておいて。<br>*(Không nhỏ đâu. Mình hỗ trợ thiết kế UI. Nhớ ghi tên mình vào danh sách co-founder nha.)* |
| Đại | (cười) <ruby>了解<rt>りょうかい</rt></ruby>です！<br>*(OK luôn!)* |

---

## Tình huống 13 — Phòng riêng · tối thứ 2, gọi video Mai (cảnh tiếng Việt cuối)

> Cảnh tiếng Việt — Đại video call Mai báo tin buổi demo với sensei và lời gợi ý đề tài tốt nghiệp.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Hôm nay anh làm mẫu app cho Suzuki-sensei. Ông khen, còn nói có thể phát triển thành đề tài tốt nghiệp luôn. |
| Mai | (tiếng Việt) Trời ơi! Em mừng quá. Vậy là app của em sẽ trở thành luận văn của anh? |
| Đại | (tiếng Việt) Đúng vậy. Mà không chỉ app cho em đâu. Anh tính làm hẳn cho cộng đồng người Việt — `Hizashi`. Aiko đăng ký làm `co-founder` rồi. |
| Mai | (tiếng Việt) Hizashi nghĩa là gì anh? |
| Đại | (tiếng Việt) Tiếng Nhật là 「<ruby>陽射<rt>ひざ</rt></ruby>し」 — tia nắng. Anh muốn app này như tia nắng cho người Việt mò mẫm học tiếng Nhật. |
| Mai | (tiếng Việt) Tên hay quá. Em là người dùng đầu tiên đó nha. |
| Đại | (tiếng Việt) Em là `user 1`. Suốt đời. Hôm nay em phát hiện 1 từ N2 nào hay nhất? |
| Mai | (tiếng Việt) 「<ruby>切<rt>き</rt></ruby>っ<ruby>掛<rt>か</rt></ruby>け」 — nghĩa là "khởi đầu". Em thấy hôm nay đúng là `切っ掛け` cho cả hai mình. |
| Đại | (tiếng Việt) Hay. Anh thêm từ đó vào app làm từ kỷ niệm. Ngủ ngon em. |
| Mai | (tiếng Việt) Anh ngủ ngon. Cố lên co-founder. |

---

## Đọng lại chương 8

Hai ngày cuối tuần đặt nền tảng cho cả hành trình Hizashi. Đại học **Flutter 3.x** + **Dart** trong lecture của Suzuki-sensei, biết phân biệt **var/final/const**, **StatelessWidget vs StatefulWidget**, **setState → diff render**. Tạo Flutter app đầu tay chạy được trên cả Chrome và iOS simulator chỉ với một codebase. Cuối tuần build **"Mai vocabulary tracker v0.1"**: `Vocab` model + **SRS SM-2** intervals + Sqlite local + 100 từ N2 thật. Nhận feedback tiếng Việt từ Mai, dịch thành spec JP **「機能追加仕様」**, implement **flutter_tts** với locale ja-JP. Sáng thứ 2 demo cho Suzuki-sensei bằng mẫu **「個人制作でアプリを作ってみました。見ていただけますか」** — được sensei khen và gợi ý **「卒業研究のテーマにもなりますよ」**. Trưa thứ 2 mời Aiko làm **co-founder** thiết kế UI. Tối gọi video Mai chốt tên **「<ruby>陽射<rt>ひざ</rt></ruby>し」=Hizashi**. Mai chính thức là **user 1 suốt đời**, và từ kỷ niệm 「<ruby>切<rt>き</rt></ruby>っ<ruby>掛<rt>か</rt></ruby>け」 ghim vào lịch sử.

> Từ vựng & mẫu câu chương này: Flutter・Dart・Widget・StatelessWidget・StatefulWidget・setState・MaterialApp・Scaffold・var/final/const・async/await・hot reload・ネイティブコンパイル・cross-platform・SRS・SM-2・Sqlite・flutter_tts・ja-JP・卒業研究・共同創業者・切っ掛け・陽射し (Hizashi)・〜について確認させてください・個人制作でアプリを作ってみました・見ていただけますか・〜の使い分けがまだ曖昧です・恐れ入ります・本格的に発展させたら

## Bí quyết chương

- **Một sensei khen bằng 100 lần tự khen**: Mẫu 「卒業研究のテーマにもなりますよ」 từ Suzuki-sensei chính thức xác nhận đề tài Hizashi cho sách 23-24.
- **Mai → user 1 → Vietnamese market**: Cuộc trò chuyện tiếng Việt Mai-Đại làm vỡ insight "app cho người Việt, bằng cách nghĩ Việt" — không chỉ dịch giao diện sang VN, mà reframe toàn bộ pedagogy.
- **Hạt giống → mầm cây**: Tên Hizashi 「陽射し」, từ kỷ niệm 「切っ掛け」, co-founder Aiko — 3 mốc tinh thần cho sách 23 trở đi.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 性能 | せいのう | TÍNH NĂNG | hiệu năng |
| 単一 | たんいつ | ĐƠN NHẤT | duy nhất |
| 必要 | ひつよう | TẤT YẾU | cần thiết |
| 美しい | うつくしい | MỸ | đẹp |
| 本講座 | ほんこうざ | BẢN GIẢNG TOẠ | khoá học này |
| 選ぶ | えらぶ | TUYỂN | chọn |
| 理由 | りゆう | LÝ DO | lý do |
| 学習効率 | がくしゅうこうりつ | HỌC TẬP HIỆU SUẤT | hiệu quả học |
| 静的型付け | せいてきかたつけ | TĨNH ĐÍCH HÌNH PHÓ | kiểu tĩnh |
| 標準装備 | ひょうじゅんそうび | TIÊU CHUẨN TRANG BỊ | trang bị tiêu chuẩn |
| 非常に | ひじょうに | PHI THƯỜNG | rất, cực kỳ |
| 似る | にる | TỢ | giống |
| 安心 | あんしん | AN TÂM | yên tâm |
| 変数宣言 | へんすうせんげん | BIẾN SỐ TUYÊN NGÔN | khai báo biến |
| 代入 | だいにゅう | ĐẠI NHẬP | gán |
| 定数 | ていすう | ĐỊNH SỐ | hằng số |
| 最適化 | さいてきか | TỐI THÍCH HOÁ | tối ưu hoá |
| 曖昧 | あいまい | ÁI MUỘI | mơ hồ |
| 画面 | がめん | HOẠ DIỆN | màn hình |
| 固定 | こてい | CỐ ĐỊNH | cố định |
| 納得 | なっとく | NỘP ĐẮC | hiểu rõ, thuyết phục |
| 妻 | つま | THÊ | vợ (cách khiêm xưng vợ mình với người ngoài) |
| 動機 | どうき | ĐỘNG CƠ | động cơ |
| 卒業研究 | そつぎょうけんきゅう | TỐT NGHIỆP NGHIÊN CỨU | đề tài tốt nghiệp |
| 相談 | そうだん | TƯƠNG ĐÀM | bàn bạc |
| 市場 | しじょう | THỊ TRƯỜNG | thị trường |
| 在住 | ざいじゅう | TẠI TRỤ | đang sinh sống |
| 労働者 | ろうどうしゃ | LAO ĐỘNG GIẢ | người lao động |
| 共同創業者 | きょうどうそうぎょうしゃ | CỘNG ĐỒNG SÁNG NGHIỆP GIẢ | co-founder |
| 候補 | こうほ | HẬU BỔ | ứng viên |
| 切っ掛け | きっかけ | THIẾT QUẢI | khởi đầu, cơ hội |
| 陽射し | ひざし | DƯƠNG XẠ | tia nắng |
| 発展 | はってん | PHÁT TRIỂN | phát triển |
| 表記 | ひょうき | BIỂU KÝ | hiển thị |
| 注釈 | ちゅうしゃく | CHÚ THÍCH | chú thích |
| 新設 | しんせつ | TÂN THIẾT | tạo mới |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000009, 800000022, NULL, 'markdown_book', 'T9. Project演習 — team build & deploy production', '# Sách sinh viên Đại học Osaka · T9. Project演習 — team build & deploy production

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 2 hậu kỳ (11-12/2027). Học các mẫu hội thoại tiếng Nhật của sinh viên CS làm team project: **báo cáo standup**, **chia vai trò (担当)**, **xin ý kiến sensei**, **báo sự cố production**, **đề xuất giải pháp kỹ thuật**, **phát biểu cuối khóa trang trọng**.

---

## Bối cảnh

Tháng 11-12/2027. Lớp **プロジェクト演習** của Watanabe-sensei (HCI Lab) chia nhóm 4 người × 20 nhóm. Đại + Yamato + Aiko + Lin Wei lập nhóm "OSU CS3" build site **OsakaU CS Hub** — nền tảng note + forum + CV cho 101 SV khoa CNTT, deploy thật trên Xserver VPS ¥900/月. Sprint 6 tuần, final presentation 22/12. Chương này tập trung các mẫu câu **báo cáo tiến độ, chia 担当, xin xác nhận sensei, xử lý sự cố production và phát biểu kết quả**.

---

## Tình huống 1 — Giảng đường C-204 · 11/11 10:30, sensei phổ biến đề bài

| Vai | Lời thoại |
|---|---|
| Watanabe | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>から「プロジェクト<ruby>演習<rt>えんしゅう</rt></ruby>」が<ruby>始<rt>はじ</rt></ruby>まります。4<ruby>名<rt>めい</rt></ruby>×20チームで<ruby>編成<rt>へんせい</rt></ruby>してください。<br>*(Các em, từ hôm nay bắt đầu môn "Project演習". Chia 4 người × 20 nhóm nhé.)* |
| Watanabe | <ruby>課題<rt>かだい</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つです。<ruby>一<rt>いち</rt></ruby>、<ruby>実際<rt>じっさい</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>を<ruby>解決<rt>かいけつ</rt></ruby>する。<ruby>二<rt>に</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>にデプロイする。<ruby>三<rt>さん</rt></ruby>、12<ruby>月<rt>がつ</rt></ruby>22<ruby>日<rt>にち</rt></ruby>に<ruby>発表<rt>はっぴょう</rt></ruby>する。<br>*(Có ba yêu cầu. Một, giải bài toán thực tế. Hai, deploy lên môi trường production. Ba, phát biểu ngày 22/12.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>というのは、<ruby>実際<rt>じっさい</rt></ruby>のユーザーが<ruby>使<rt>つか</rt></ruby>うサーバーということでよろしいでしょうか?<br>*(Thưa thầy, "本番環境" có nghĩa là server mà user thật sự dùng, đúng không ạ?)* |
| Watanabe | そうです。<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>仮<rt>かり</rt></ruby>のサーバーではありません。<ruby>本物<rt>ほんもの</rt></ruby>のトラフィックを<ruby>受<rt>う</rt></ruby>けるサーバーです。<br>*(Đúng. Không phải server giả lập cho lớp học. Là server nhận lưu lượng thật.)* |
| Yamato | (thì thầm Đại) <ruby>俺<rt>おれ</rt></ruby>たち、Aiko と Lin Wei <ruby>誘<rt>さそ</rt></ruby>って4<ruby>人<rt>にん</rt></ruby>で<ruby>組<rt>く</rt></ruby>もうぜ。<br>*(Tụi mình rủ Aiko và Lin Wei lập nhóm 4 đi.)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>昼休<rt>ひるやす</rt></ruby>みに<ruby>声<rt>こえ</rt></ruby>をかける。<br>*(Tán thành. Trưa tớ rủ.)* |

---

## Tình huống 2 — Cafeteria · 11/11 12:30, mời Aiko + Lin Wei vào nhóm

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>愛子<rt>あいこ</rt></ruby>さん、Lin Wei、<ruby>少<rt>すこ</rt></ruby>しいいですか? プロジェクト<ruby>演習<rt>えんしゅう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Aiko, Lin Wei, hai bạn rảnh chút không? Tớ muốn bàn về môn Project演習.)* |
| Aiko | どうぞ。なに?<br>*(Cứ nói. Gì thế?)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>と Yamato で<ruby>組<rt>く</rt></ruby>むんだけど、<ruby>二<rt>ふた</rt></ruby>りで<ruby>一緒<rt>いっしょ</rt></ruby>にやってもらえないかな? UI/UX は<ruby>愛子<rt>あいこ</rt></ruby>さん、インフラは Lin Wei にお<ruby>願<rt>ねが</rt></ruby>いしたい。<br>*(Tớ với Yamato lập nhóm, hai bạn vào cùng được không? UI/UX nhờ Aiko, hạ tầng nhờ Lin Wei.)* |
| Lin Wei | (English) Sounds good. What''s the problem we''re solving?<br>*(Hay đấy. Mình giải bài toán gì?)* |
| Aiko | テーマはもう<ruby>決<rt>き</rt></ruby>まってる?<br>*(Đã chốt chủ đề chưa?)* |
| Đại | まだです。<ruby>明日<rt>あした</rt></ruby>4<ruby>人<rt>にん</rt></ruby>でブレストしましょう。<br>*(Chưa. Mai 4 đứa cùng brainstorm nhé.)* |
| Yamato | (chen vào) <ruby>俺<rt>おれ</rt></ruby>はアルゴリズム<ruby>担当<rt>たんとう</rt></ruby>するわ。<br>*(Tớ phụ trách algorithm nhé.)* |

---

## Tình huống 3 — Phòng họp lab C-110 · 12/11 14:00, brainstorm chốt đề tài

*Bốn người ngồi quanh whiteboard. Aiko cầm marker.*

| Vai | Lời thoại |
|---|---|
| Aiko | まず<ruby>身近<rt>みぢか</rt></ruby>な<ruby>問題<rt>もんだい</rt></ruby>から<ruby>考<rt>かんが</rt></ruby>えませんか? <ruby>私<rt>わたし</rt></ruby>たちの<ruby>学科<rt>がっか</rt></ruby>101<ruby>名<rt>めい</rt></ruby>、LINE グループが<ruby>大<rt>おお</rt></ruby>きすぎて<ruby>情報<rt>じょうほう</rt></ruby>が<ruby>流<rt>なが</rt></ruby>れちゃう。<br>*(Bắt đầu từ vấn đề gần mình nhỉ? Khoa 101 SV, group LINE quá lớn nên thông tin trôi mất.)* |
| Yamato | <ruby>確<rt>たし</rt></ruby>かに。<ruby>講義<rt>こうぎ</rt></ruby>のノートも<ruby>誰<rt>だれ</rt></ruby>かが Drive に<ruby>上<rt>あ</rt></ruby>げるけど、<ruby>共有<rt>きょうゆう</rt></ruby>リンクが<ruby>探<rt>さが</rt></ruby>しにくい。<br>*(Đúng đấy. Ai đó up note lên Drive nhưng link khó tìm.)* |
| Đại | じゃあ、<ruby>専用<rt>せんよう</rt></ruby>プラットフォームを<ruby>作<rt>つく</rt></ruby>るのはどうですか? ノート<ruby>共有<rt>きょうゆう</rt></ruby>+フォーラム+CV/ポートフォリオ。<br>*(Vậy mình build nền tảng riêng đi? Note share + forum + CV.)* |
| Lin Wei | (English) And only @ecs.osaka-u.ac.jp emails can register. Closed community.<br>*(Và chỉ email của khoa mới đăng ký được. Cộng đồng đóng.)* |
| Aiko | <ruby>名前<rt>なまえ</rt></ruby>は?<br>*(Tên đặt là gì?)* |
| Đại | 「OsakaU CS Hub」はどうですか?<br>*(OsakaU CS Hub thấy sao?)* |
| Yamato | シンプルでいい。<ruby>採用<rt>さいよう</rt></ruby>!<br>*(Đơn giản, hay. Lấy!)* |
| Aiko | じゃあ、<ruby>明日<rt>あした</rt></ruby>までに<ruby>各自<rt>かくじ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>の<ruby>仕様<rt>しよう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えて<ruby>共有<rt>きょうゆう</rt></ruby>しましょう。<br>*(Vậy đến mai mỗi người tổng hợp spec phần mình rồi share nhé.)* |

---

## Tình huống 4 — Lab Watanabe · 14/11 16:00, xin xác nhận kiến trúc

*Đại mang laptop đến phòng sensei. Aiko đi cùng.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか? アーキテクチャの<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>したいです。<br>*(Xin phép ạ. Thầy Watanabe, em xin thầy ít phút được không ạ? Em muốn nhờ thầy xác nhận kiến trúc.)* |
| Watanabe | どうぞ、<ruby>座<rt>すわ</rt></ruby>って。<br>*(Cứ ngồi đi.)* |
| Đại | フロントエンドは Next.js + TypeScript、バックエンドは FastAPI、DB は PostgreSQL と Redis、デプロイは Xserver VPS に Docker Compose です。<br>*(Frontend Next.js + TypeScript, backend FastAPI, DB PostgreSQL + Redis, deploy Xserver VPS bằng Docker Compose ạ.)* |
| Watanabe | <ruby>悪<rt>わる</rt></ruby>くないですね。ただ、VPS は1GB RAM しかないでしょう? Redis を<ruby>使<rt>つか</rt></ruby>うとメモリが<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Không tệ. Nhưng VPS chỉ 1GB RAM đúng không? Dùng Redis có lo về bộ nhớ đấy.)* |
| Đại | (ghi vội) <ruby>承知<rt>しょうち</rt></ruby>しました。Redis は<ruby>軽<rt>かる</rt></ruby>めのキャッシュ<ruby>用途<rt>ようと</rt></ruby>に<ruby>限定<rt>げんてい</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ giới hạn Redis chỉ dùng cho cache nhẹ.)* |
| Watanabe | あとは CI/CD はどうする?<br>*(Còn CI/CD thì sao?)* |
| Aiko | GitHub Actions で main<ruby>ブランチ<rt>ブランチ</rt></ruby>に push したら<ruby>自動<rt>じどう</rt></ruby>デプロイです。<br>*(GitHub Actions, push vào main là auto-deploy ạ.)* |
| Watanabe | いいですね。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Tốt đấy. Cố lên nhé.)* |

---

## Tình huống 5 — Discord voice channel · 18/11 19:30, daily standup tuần 1

*Tab "OSU CS3 daily 19:30". Bốn người voice.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>今日<rt>きょう</rt></ruby>のスタンドアップ<ruby>始<rt>はじ</rt></ruby>めます。<ruby>俺<rt>おれ</rt></ruby>から。バックエンド:<ruby>認証<rt>にんしょう</rt></ruby>とノート CRUD 4 エンドポイント<ruby>完了<rt>かんりょう</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>はフォーラム<ruby>機能<rt>きのう</rt></ruby>。<ruby>困<rt>こま</rt></ruby>っていることはなし。<br>*(Bắt đầu standup hôm nay. Tớ trước. Backend: auth và 4 endpoint CRUD note xong. Mai sang forum. Không có gì kẹt.)* |
| Yamato | アルゴリズム:<ruby>検索<rt>けんさく</rt></ruby>の<ruby>方針<rt>ほうしん</rt></ruby>を<ruby>調査<rt>ちょうさ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。Postgres の<ruby>全文<rt>ぜんぶん</rt></ruby><ruby>検索<rt>けんさく</rt></ruby>でいけそう。Elasticsearch は<ruby>不要<rt>ふよう</rt></ruby>。<br>*(Algorithm: đang khảo sát hướng search. Postgres full-text có vẻ ổn. Khỏi cần Elasticsearch.)* |
| Aiko | UI: ログイン<ruby>画面<rt>がめん</rt></ruby>とノート<ruby>一覧<rt>いちらん</rt></ruby><ruby>画面<rt>がめん</rt></ruby>のモックアップ<ruby>完了<rt>かんりょう</rt></ruby>。Figma リンク<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(UI: xong mockup màn login và màn list note. Tớ share link Figma.)* |
| Lin Wei | (English) DevOps: Docker Compose file ready. GitHub Actions pipeline 80% done. Need 1 more day.<br>*(DevOps: file Docker Compose xong. Pipeline GitHub Actions 80%. Cần thêm 1 ngày.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>。じゃあ<ruby>明日<rt>あした</rt></ruby>も19:30 で。<ruby>解散<rt>かいさん</rt></ruby>!<br>*(OK. Mai cũng 19:30 nhé. Giải tán!)* |

---

## Tình huống 6 — Phòng Đại · 25/11 22:40, hỏi lại khi chưa hiểu Lin Wei

*LINE call Lin Wei. Đại đang debug terminal.*

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Đại, Redis just OOM-killed on the VPS. Production down.<br>*(Redis vừa bị OOM kill trên VPS. Production sập.)* |
| Đại | え、ちょっと<ruby>待<rt>ま</rt></ruby>って。「OOM kill」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>?<br>*(Khoan, cho hỏi "OOM kill" cụ thể là gì?)* |
| Lin Wei | (English) Out Of Memory. Linux kernel killed the Redis process because RAM was full.<br>*(Out Of Memory. Kernel Linux giết tiến trình Redis vì hết RAM.)* |
| Đại | なるほど。もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>原因<rt>げんいん</rt></ruby>はセッション<ruby>情報<rt>じょうほう</rt></ruby>が Redis に<ruby>溜<rt>た</rt></ruby>まりすぎたから、ということですか?<br>*(Ra vậy. Cho tớ xác nhận lại nhé. Nguyên nhân là session info dồn vào Redis quá nhiều, đúng không?)* |
| Lin Wei | (English) Exactly. We have 200 sessions × 50KB = 10MB just for sessions, plus cache.<br>*(Đúng. 200 session × 50KB = 10MB chỉ riêng session, cộng cache nữa.)* |
| Đại | じゃあ、セッションは Postgres に<ruby>移<rt>うつ</rt></ruby>して、Redis は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頻繁<rt>ひんぱん</rt></ruby>な<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みだけにしよう。<br>*(Vậy mình chuyển session sang Postgres, Redis chỉ cho phần đọc thật sự dồn dập thôi.)* |
| Lin Wei | (English) Agreed. I''ll refactor tonight, deploy at 2am low traffic.<br>*(OK. Tối tớ refactor, deploy lúc 2 giờ sáng lúc ít traffic.)* |
| Đại | <ruby>助<rt>たす</rt></ruby>かる。<ruby>明日<rt>あした</rt></ruby>のスタンドアップで<ruby>報告<rt>ほうこく</rt></ruby>しよう。<br>*(Đỡ quá. Mai standup mình báo nhé.)* |

---

## Tình huống 7 — Discord standup · 26/11 19:30, báo sự cố cho nhóm

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Quick report: last night Redis OOM on staging. Đại and I migrated sessions to Postgres. Stable now.<br>*(Báo nhanh: tối qua Redis OOM trên staging. Tớ với Đại đã migrate session sang Postgres. Giờ ổn rồi.)* |
| Yamato | え、<ruby>本番<rt>ほんばん</rt></ruby>にも<ruby>影響<rt>えいきょう</rt></ruby>あった?<br>*(Ơ, có ảnh hưởng production không?)* |
| Đại | <ruby>本番<rt>ほんばん</rt></ruby><ruby>公開<rt>こうかい</rt></ruby><ruby>前<rt>まえ</rt></ruby>でよかったです。ステージング<ruby>環境<rt>かんきょう</rt></ruby>で<ruby>発見<rt>はっけん</rt></ruby>できました。<br>*(May là chưa public production. Phát hiện được trên staging.)* |
| Aiko | <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>が<ruby>言<rt>い</rt></ruby>っていたメモリの<ruby>心配<rt>しんぱい</rt></ruby>、<ruby>当<rt>あ</rt></ruby>たってたね。<br>*(Lời thầy Watanabe lo về memory đúng thật.)* |
| Đại | はい。<ruby>先生<rt>せんせい</rt></ruby>の<ruby>指摘<rt>してき</rt></ruby>のおかげです。<ruby>次<rt>つぎ</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng. Nhờ thầy chỉ ra. Buổi gặp tới em sẽ báo cáo lại.)* |

---

## Tình huống 8 — Office hour Watanabe · 28/11 15:00, báo sensei về sự cố

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>先日<rt>せんじつ</rt></ruby>ご<ruby>指摘<rt>してき</rt></ruby>いただいた Redis のメモリの<ruby>件<rt>けん</rt></ruby>、<ruby>実際<rt>じっさい</rt></ruby>にステージングで OOM が<ruby>発生<rt>はっせい</rt></ruby>しました。<br>*(Thầy Watanabe, vấn đề memory Redis hôm trước thầy chỉ — đã thực sự bị OOM trên staging ạ.)* |
| Watanabe | やはり。どう<ruby>対応<rt>たいおう</rt></ruby>しましたか?<br>*(Quả nhiên. Em xử lý thế nào?)* |
| Đại | セッションを Postgres に<ruby>移<rt>うつ</rt></ruby>し、Redis は<ruby>頻繁<rt>ひんぱん</rt></ruby>な<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みキャッシュのみにしました。<ruby>現在<rt>げんざい</rt></ruby>はメモリ<ruby>使用率<rt>しようりつ</rt></ruby>が60% で<ruby>安定<rt>あんてい</rt></ruby>しております。<br>*(Em chuyển session sang Postgres, Redis chỉ để cache đọc dồn dập. Hiện tại memory ổn định ở 60% ạ.)* |
| Watanabe | いい<ruby>対応<rt>たいおう</rt></ruby>です。<ruby>本番<rt>ほんばん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>発見<rt>はっけん</rt></ruby>できたのは<ruby>大<rt>おお</rt></ruby>きいですよ。<br>*(Xử lý tốt. Phát hiện trước khi vào production là quan trọng đấy.)* |
| Đại | はい、ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございました。<br>*(Vâng, em cảm ơn thầy chỉ dẫn ạ.)* |

---

## Tình huống 9 — Phòng Aiko · 5/12 21:00, review UI cuối

| Vai | Lời thoại |
|---|---|
| Aiko | (chia màn hình) <ruby>最終<rt>さいしゅう</rt></ruby>UI<ruby>確認<rt>かくにん</rt></ruby>です。スマホ<ruby>表示<rt>ひょうじ</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Check UI final nhé. Cả phần hiển thị mobile nữa.)* |
| Đại | フォーラムの<ruby>投稿<rt>とうこう</rt></ruby><ruby>画面<rt>がめん</rt></ruby>、タグの<ruby>位置<rt>いち</rt></ruby>がもう<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>うえ</rt></ruby>でもいいかも。<br>*(Màn post forum, vị trí tag có vẻ nên đẩy lên chút.)* |
| Aiko | <ruby>確<rt>たし</rt></ruby>かに。<ruby>修正<rt>しゅうせい</rt></ruby>します。あと、ダークモードはどうですか?<br>*(Đúng đấy. Tớ sửa. Còn dark mode thấy thế nào?)* |
| Đại | いいね。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うことが<ruby>多<rt>おお</rt></ruby>いから、SV にも<ruby>喜<rt>よろこ</rt></ruby>ばれると<ruby>思<rt>おも</rt></ruby>う。<br>*(Hay. SV hay dùng đêm khuya, chắc thích đấy.)* |
| Aiko | じゃあ<ruby>明日<rt>あした</rt></ruby>までにダークモードも<ruby>仕上<rt>しあ</rt></ruby>げる。<br>*(Vậy mai tớ làm xong cả dark mode.)* |

---

## Tình huống 10 — Quán cafe Tully''s Toyonaka · 11/12 17:00, rehearsal phát biểu

*Đại cầm slide trên iPad. Yamato cầm đồng hồ bấm giờ.*

| Vai | Lời thoại |
|---|---|
| Đại | (rehearsal) <ruby>本日<rt>ほんじつ</rt></ruby>は「OsakaU CS Hub」の<ruby>発表<rt>はっぴょう</rt></ruby>をさせていただきます。<ruby>私<rt>わたし</rt></ruby>たちチームOSU CS3 の<ruby>四<rt>よん</rt></ruby><ruby>名<rt>めい</rt></ruby>でございます。<br>*(Xin phép hôm nay được phát biểu về "OsakaU CS Hub". Chúng em là 4 thành viên team OSU CS3 ạ.)* |
| Yamato | (bấm giờ) いまの<ruby>導入<rt>どうにゅう</rt></ruby>30<ruby>秒<rt>びょう</rt></ruby>。<ruby>残<rt>のこ</rt></ruby>り4<ruby>分<rt>ぷん</rt></ruby>30。<br>*(Phần mở 30 giây. Còn 4 phút 30.)* |
| Đại | <ruby>解決<rt>かいけつ</rt></ruby>した<ruby>課題<rt>かだい</rt></ruby>は、<ruby>学科<rt>がっか</rt></ruby>101<ruby>名<rt>めい</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>の<ruby>難<rt>むずか</rt></ruby>しさです。<br>*(Bài toán đã giải là khó khăn chia sẻ thông tin của khoa 101 SV ạ.)* |
| Aiko | (chen vào) もう<ruby>少<rt>すこ</rt></ruby>しゆっくり<ruby>話<rt>はな</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいよ。<ruby>早口<rt>はやくち</rt></ruby>になってる。<br>*(Nói chậm hơn chút đi. Đang nói nhanh quá.)* |
| Đại | (gật) ありがとう。もう<ruby>一度<rt>いちど</rt></ruby>。<br>*(Cảm ơn. Lần nữa nhé.)* |
| Lin Wei | (English) Dai, when you say production, pause one beat. Let it sink in.<br>*(Đại, lúc nói "production" hãy ngừng 1 nhịp. Cho người nghe thấm.)* |

---

## Tình huống 11 — Server room · 12/12 23:50, launch production

*Terminal đỏ chữ trắng. Bốn người chen quanh laptop Đại.*

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Final health check pass. Ready when you are.<br>*(Health check cuối qua rồi. Sẵn sàng khi cậu muốn.)* |
| Đại | (gõ terminal) <ruby>本番<rt>ほんばん</rt></ruby>リリース、いきます。3、2、1...<br>*(Chính thức release production. 3, 2, 1...)* |
| Đại | (Enter) `gh release create v1.0.0 --notes "First production launch"`<br>(Enter) `gh release create v1.0.0 --notes "First production launch"` |
| Yamato | (mở browser) https://cs-hub.osu-cs3.dev →<ruby>表示<rt>ひょうじ</rt></ruby>OK!<br>*(Hiển thị OK!)* |
| Aiko | (LINE 101 SV) みなさん、お<ruby>待<rt>ま</rt></ruby>たせしました! 「OsakaU CS Hub」<ruby>公開<rt>こうかい</rt></ruby>です! GitHub<ruby>認証<rt>にんしょう</rt></ruby>でご<ruby>登録<rt>とうろく</rt></ruby>ください!<br>*(Mọi người chờ đã lâu! "OsakaU CS Hub" mở rồi! Đăng ký bằng GitHub nhé!)* |
| Đại | (Datadog dashboard) <ruby>登録<rt>とうろく</rt></ruby>1<ruby>件<rt>けん</rt></ruby><ruby>来<rt>き</rt></ruby>た! 2<ruby>件<rt>けん</rt></ruby>!<br>*(Có đăng ký 1 người! 2 người!)* |
| Lin Wei | (English) 10 minutes in: 25 signups. Trending.<br>*(Sau 10 phút: 25 đăng ký. Đang trending.)* |

---

## Tình huống 12 — Phòng Đại · 13/12 0:30, nhắn Mai sau launch

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai) Em ơi, vừa launch production lúc 12 giờ đêm. 25 người đăng ký trong 10 phút đầu. Mệt nhưng vui muốn xỉu. |
| Mai | (LINE) Chúc mừng anh!!! Em vừa ngủ dậy đọc tin nhắn, mừng quá. Anh có ăn gì chưa? |
| Đại | (LINE) Chưa em, cả nhóm còn ngồi xem dashboard. Tony cho phần cơm tối trong tủ lạnh rồi. Em ngủ tiếp đi, mai gọi nhé. |
| Mai | (LINE) Ừ anh. Nhớ uống nước. Em hãnh diện về anh lắm đó. |

---

## Tình huống 13 — Giảng đường lớn A-101 · 22/12 14:00, phát biểu cuối khóa

*20 nhóm. Đại là nhóm thứ 13. Lên slide đầu.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はチームOSU CS3「OsakaU CS Hub」の<ruby>発表<rt>はっぴょう</rt></ruby>をさせていただきます。<br>*(Thầy Watanabe và quý vị, hôm nay em xin được phát biểu về "OsakaU CS Hub" của team OSU CS3 ạ.)* |
| Đại | <ruby>本番<rt>ほんばん</rt></ruby><ruby>公開<rt>こうかい</rt></ruby>から10<ruby>日<rt>か</rt></ruby><ruby>間<rt>かん</rt></ruby>で、101<ruby>名<rt>めい</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby><ruby>生<rt>せい</rt></ruby>のうち<ruby>七十五<rt>しちじゅうご</rt></ruby><ruby>名<rt>めい</rt></ruby>がアクティブ<ruby>利用者<rt>りようしゃ</rt></ruby>となっております。<br>*(Sau 10 ngày từ ngày public, 75/101 SV của khoa đã là active user ạ.)* |
| Đại | ノート<ruby>投稿<rt>とうこう</rt></ruby>250<ruby>件<rt>けん</rt></ruby>、フォーラムスレッド95<ruby>件<rt>けん</rt></ruby>です。<ruby>運用<rt>うんよう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に Redis OOM の<ruby>問題<rt>もんだい</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しましたが、<ruby>本番<rt>ほんばん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>解決<rt>かいけつ</rt></ruby>できました。<br>*(250 bài note, 95 thread forum. Trong vận hành đã gặp lỗi Redis OOM nhưng đã giải quyết trước khi vào production ạ.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>実<rt>じつ</rt></ruby>トラフィックを<ruby>10日<rt>とおか</rt></ruby><ruby>維持<rt>いじ</rt></ruby>できているのは20チーム<ruby>中<rt>ちゅう</rt></ruby>2チームだけです。<ruby>採点<rt>さいてん</rt></ruby>はA+。<br>*(Tuyệt vời. Duy trì traffic thật trong 10 ngày — chỉ 2/20 nhóm làm được. Điểm A+.)* |
| Đại | ありがとうございます。チーム<ruby>全員<rt>ぜんいん</rt></ruby>を<ruby>代表<rt>だいひょう</rt></ruby>して<ruby>御礼<rt>おれい</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Em cảm ơn thầy ạ. Em xin thay mặt cả nhóm cảm ơn ạ.)* |

---

## Tình huống 14 — Izakaya Toyonaka · 22/12 19:30,打ち上げ cuối kỳ

| Vai | Lời thoại |
|---|---|
| Yamato | お<ruby>疲<rt>つか</rt></ruby>れさま! A+!<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Vất vả rồi! A+! Cạn ly!)* |
| Bốn người | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Aiko | ダイ、<ruby>発表<rt>はっぴょう</rt></ruby>のとき、ゆっくり<ruby>話<rt>はな</rt></ruby>せてたよ。リハーサルの<ruby>成果<rt>せいか</rt></ruby>ね。<br>*(Đại, lúc phát biểu nói chậm được rồi đấy. Rehearsal có kết quả nhỉ.)* |
| Đại | ありがとう。みんなのおかげです。<br>*(Cảm ơn. Nhờ mọi người cả.)* |
| Lin Wei | (English) Next semester let''s do something bigger. Maybe a startup idea?<br>*(Kỳ sau làm gì lớn hơn nhỉ. Ý tưởng startup chăng?)* |
| Đại | (cười) <ruby>考<rt>かんが</rt></ruby>えておく。<br>*(Để tớ nghĩ xem.)* |

---

## Tình huống 15 — Phòng Đại · 22/12 23:30, gọi Mai tổng kết

*Cảnh tiếng Việt — Đại gọi video Mai sau bữa打ち上げ.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi, vừa về đến nhà. Hôm nay phát biểu được A+ em ạ. |
| Mai | (tiếng Việt) Chúc mừng anh! Thầy nói gì cụ thể không anh? |
| Đại | (tiếng Việt) Thầy nói trong 20 nhóm chỉ 2 nhóm giữ được traffic thật 10 ngày. Trong đó có nhóm anh. Thầy dùng từ 素晴らしい — kiểu "tuyệt vời" ấy em. |
| Mai | (tiếng Việt) Trời ơi vui quá. Mà anh kể em nghe vụ Redis OOM hôm trước đi. Em nghe loáng thoáng mà chưa hiểu lắm. |
| Đại | (tiếng Việt) À, OOM là Out Of Memory — server hết RAM nên hệ điều hành nó tự giết tiến trình Redis luôn. May là phát hiện ở staging chứ chưa lên production. Anh học được mẫu câu báo cáo sự cố với sensei: "先日ご指摘いただいた件、実際に発生しました" — kiểu "vấn đề thầy chỉ hôm trước, đã thật sự xảy ra rồi ạ". |
| Mai | (tiếng Việt) Em nhớ câu đó. Sang năm em đi học lại Yamato School, em cũng phải biết báo cáo kiểu đó với sensei. |
| Đại | (tiếng Việt) Ừ em. Mà nay phát biểu xong, Lin Wei nó bảo kỳ sau làm cái gì lớn hơn — kiểu startup ấy. Anh thấy hơi le lói chút. |
| Mai | (tiếng Việt) Em ủng hộ. Nhưng anh ngủ đi đã, 12 giờ rưỡi rồi đấy. |

---

## Đọng lại chương 9

Đại học cách **chia 担当 trong nhóm 4 người** (backend/algorithm/UI/DevOps), **báo cáo standup hằng ngày** (`今日のスタンドアップ始めます`), **xin xác nhận sensei** (`少しお時間よろしいでしょうか? 〜の確認をお願いしたいです`), và **hỏi lại khi chưa hiểu thuật ngữ tiếng Anh** từ Lin Wei (`〜というのは具体的に何?・もう一度確認させてください`). Khi xảy ra sự cố Redis OOM, Đại học mẫu **báo cáo sensei về sự cố và giải pháp** (`先日ご指摘いただいた件、実際に〜が発生しました・〜のように対応しました`). Đỉnh cao là **bài phát biểu trang trọng cuối khóa** (`本日は〜の発表をさせていただきます・チーム全員を代表して御礼申し上げます`) — đạt A+, 75/101 SV active. Buổi tối Đại gọi Mai bằng tiếng Việt, kể lại sự cố và mẫu câu mới học.

> Từ vựng & mẫu câu chương này: プロジェクト演習・本番環境・担当・スタンドアップ・〜というのは・もう一度確認させてください・先日ご指摘いただいた件・〜のように対応しました・〜の確認をお願いしたいです・本日は〜の発表をさせていただきます・OOM・ステージング・解散・乾杯・素晴らしい・チーム全員を代表して・〜させていただきます

## Bí quyết chương

- **Phát biểu trang trọng dùng けんじょうご**: `発表をさせていただきます・御礼申し上げます` — bắt buộc với sensei và giảng đường lớn.
- **Hỏi lại thuật ngữ tiếng Anh từ Lin Wei**: Đừng giả vờ hiểu. `〜というのは具体的に何?` luôn an toàn.
- **Báo sự cố cho sensei dạng đối ngẫu**: nhắc lại lời sensei từng cảnh báo → trình bày fact → trình bày giải pháp → cảm ơn chỉ dẫn. Đây là pattern báo cáo Nhật điển hình.
- **Standup Discord nhóm SV CS**: bắt đầu bằng tên người + danh từ phụ trách + tiến độ + việc kẹt. Ngắn gọn ≤2 câu/người.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 演習 | えんしゅう | DIỄN TẬP | thực tập, bài tập lớn |
| 編成 | へんせい | BIÊN THÀNH | tổ chức, lập đội |
| 課題 | かだい | KHOÁ ĐỀ | đề bài, nhiệm vụ |
| 仮 | かり | GIẢ | tạm, giả lập |
| 本物 | ほんもの | BẢN VẬT | đồ thật |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 昼休み | ひるやすみ | TRÚ HƯU | giờ nghỉ trưa |
| 身近 | みぢか | THÂN CẬN | gần gũi |
| 流れる | ながれる | LƯU | trôi đi |
| 講義 | こうぎ | GIẢNG NGHĨA | bài giảng |
| 探す | さがす | THÁM | tìm |
| 整える | ととのえる | CHỈNH | sắp xếp, chuẩn bị |
| 指摘 | してき | CHỈ TRÍCH | chỉ ra, góp ý |
| 限定 | げんてい | HẠN ĐỊNH | giới hạn |
| 認証 | にんしょう | NHẬN CHỨNG | xác thực, auth |
| 完了 | かんりょう | HOÀN LIỄU | hoàn thành |
| 方針 | ほうしん | PHƯƠNG CHÂM | hướng đi |
| 調査 | ちょうさ | ĐIỀU TRA | khảo sát |
| 全文検索 | ぜんぶんけんさく | TOÀN VĂN KIỂM SÁCH | full-text search |
| 不要 | ふよう | BẤT YẾU | không cần |
| 投稿 | とうこう | ĐẦU CẢO | bài đăng |
| 解散 | かいさん | GIẢI TÁN | giải tán |
| 影響 | えいきょう | ẢNH HƯỞNG | ảnh hưởng |
| 発見 | はっけん | PHÁT KIẾN | phát hiện |
| 当たる | あたる | ĐƯƠNG | trúng, đúng |
| 面談 | めんだん | DIỆN ĐÀM | gặp mặt nói chuyện |
| 発生 | はっせい | PHÁT SINH | xảy ra |
| 安定 | あんてい | AN ĐỊNH | ổn định |
| 使用率 | しようりつ | SỬ DỤNG SUẤT | tỷ lệ sử dụng |
| 最終 | さいしゅう | TỐI CHUNG | cuối cùng |
| 位置 | いち | VỊ TRÍ | vị trí |
| 維持 | いじ | DUY TRÌ | duy trì |
| 採点 | さいてん | THẢI ĐIỂM | chấm điểm |
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 御礼 | おれい | NGỰ LỄ | cảm ơn (lịch sự) |
| 早口 | はやくち | TẢO KHẨU | nói nhanh |
| 健康 | けんこう | KIỆN KHANG | sức khoẻ |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000010, 800000022, NULL, 'markdown_book', 'T10. Mai có baby — báo tin có thai với gia đình và sensei', '# Sách sinh viên Đại học Osaka · T10. Mai có baby — báo tin có thai với gia đình và sensei

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 2 hậu kỳ (1-2/2028). Học các mẫu hội thoại tiếng Nhật khi: **đi khám sản cùng vợ** (giao tiếp với bác sĩ + lễ tân), **báo tin có thai với host family Tony+Yumi** (kính ngữ thân mật), **báo tin với sensei Inoue** (kính ngữ trang trọng), **xin sắp xếp lịch thực tập linh hoạt với HR Cybozu** (mẫu xin phép gia đình), **tham gia tiệc mừng không cồn** với cohort.

---

## Bối cảnh

Tháng 1-2/2028. Mai (22 tuổi, đã sang Nhật được 1 năm, đang học N2 Yamato School) thử que thấy 2 vạch. Hai vợ chồng đi khám tại **千里中央マタニティクリニック** xác nhận có thai 12 tuần, dự sinh đầu 8/2028. Đại phải báo tin với host family, sensei, HR Cybozu (vì kỳ thực tập hè 6-9/2028 trùng dự sinh). Chương này tập trung các mẫu câu **giao tiếp tại phòng khám sản, báo tin vui với người trên (家族・先生・上司), xin điều chỉnh lịch vì gia đình**.

---

## Tình huống 1 — Bếp căn hộ 2DK Toyonaka · 5/1/2028 6:50, Mai báo Đại

*Mai vừa từ nhà vệ sinh ra, tay cầm 2 que thử thai.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi! Dậy đi! Em vừa thử lên 2 vạch đấy! |
| Đại | (tiếng Việt, dụi mắt) Hả? Em thử cái gì? |
| Mai | (tiếng Việt) Que thử thai! Em mua hai que ở Daikoku Drug hôm qua. Cả hai đều dương luôn. |
| Đại | (tiếng Việt, sững) Trời ơi... thật hả em? |
| Mai | (tiếng Việt) Thật. Mà em chưa dám tin. Anh đi cùng em ra phòng khám xác nhận nhé. Em đã tìm Senri-chuo Maternity rồi, đặt được lịch chiều mai. |
| Đại | (tiếng Việt) Đi. Anh xin nghỉ một buổi học là được. Em ngồi xuống đã, mặt em tái lắm. |
| Mai | (tiếng Việt) Em hồi hộp anh ạ. Mà cũng vui. Vợ chồng mình sắp có baby thật rồi. |

---

## Tình huống 2 — Quầy lễ tân Senri-chuo Maternity · 6/1 14:00, đăng ký khám

*Mai ngồi sofa. Đại lên quầy điền form.*

| Vai | Lời thoại |
|---|---|
| Lễ tân | いらっしゃいませ。<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>予約<rt>よやく</rt></ruby>でしょうか?<br>*(Chào quý khách. Hôm nay quý khách có hẹn ạ?)* |
| Đại | はい、14<ruby>時<rt>じ</rt></ruby>に<ruby>予約<rt>よやく</rt></ruby>しております<ruby>妻<rt>つま</rt></ruby>のグエン・ホアン・マイです。<ruby>初診<rt>しょしん</rt></ruby>です。<br>*(Vâng, vợ em là Nguyễn Hoàng Mai có hẹn 14h ạ. Khám lần đầu ạ.)* |
| Lễ tân | はい、<ruby>初診<rt>しょしん</rt></ruby>の<ruby>問診票<rt>もんしんひょう</rt></ruby>にご<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>保険証<rt>ほけんしょう</rt></ruby>はお<ruby>持<rt>も</rt></ruby>ちですか?<br>*(Vâng, xin điền vào phiếu khám lần đầu. Quý khách có mang thẻ bảo hiểm không?)* |
| Đại | はい、こちらです。<ruby>国民健康保険<rt>こくみんけんこうほけん</rt></ruby>です。<br>*(Vâng, đây ạ. Bảo hiểm y tế quốc dân ạ.)* |
| Lễ tân | ありがとうございます。<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>問診票<rt>もんしんひょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか? <ruby>英語版<rt>えいごばん</rt></ruby>もございます。<br>*(Cảm ơn quý khách. Phiếu khám tiếng Nhật có ổn không ạ? Có bản tiếng Anh nữa.)* |
| Đại | <ruby>日本語<rt>にほんご</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないところは<ruby>伺<rt>うかが</rt></ruby>います。<br>*(Tiếng Nhật ổn ạ. Chỗ nào không hiểu em sẽ hỏi.)* |
| Lễ tân | では、あちらでお<ruby>掛<rt>か</rt></ruby>けになってお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Vậy mời quý khách ngồi bên kia chờ ạ.)* |

---

## Tình huống 3 — Phòng siêu âm · 6/1 14:30, bác sĩ confirm thai 12 tuần

| Vai | Lời thoại |
|---|---|
| Bác sĩ | では<ruby>始<rt>はじ</rt></ruby>めますね。マイさん、お<ruby>腹<rt>なか</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してください。ジェルが<ruby>少<rt>すこ</rt></ruby>し<ruby>冷<rt>つめ</rt></ruby>たいですよ。<br>*(Bắt đầu nhé. Chị Mai, bộc bụng ra giúp bác. Gel hơi lạnh chút nhé.)* |
| Mai | はい。<br>*(Vâng.)* |
| Bác sĩ | (di đầu dò) ...あ、<ruby>見<rt>み</rt></ruby>えました。<ruby>赤<rt>あか</rt></ruby>ちゃんですね。<br>*(... À, thấy rồi. Em bé đây.)* |
| Đại | (nhìn màn hình) えっ、ここですか?<br>*(Ơ, ở chỗ này ạ?)* |
| Bác sĩ | はい、ここです。<ruby>心拍<rt>しんぱく</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>できますね。トクトクっていう<ruby>音<rt>おと</rt></ruby>、<ruby>聞<rt>き</rt></ruby>こえますか?<br>*(Vâng, đây. Đã xác nhận được nhịp tim. Anh chị có nghe được tiếng "thinh thịch" không?)* |
| Mai | はい、<ruby>聞<rt>き</rt></ruby>こえます!<br>*(Vâng, em nghe được ạ!)* |
| Bác sĩ | <ruby>妊娠<rt>にんしん</rt></ruby>12<ruby>週<rt>しゅう</rt></ruby>ですね。<ruby>予定日<rt>よていび</rt></ruby>は2028<ruby>年<rt>ねん</rt></ruby>8<ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めです。<ruby>順調<rt>じゅんちょう</rt></ruby>ですよ。<br>*(Thai 12 tuần rồi nhé. Dự sinh đầu tháng 8/2028. Suôn sẻ lắm.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>気<rt>き</rt></ruby>をつけることはございますか?<br>*(Thưa bác sĩ, có điều gì cần lưu ý ạ?)* |
| Bác sĩ | <ruby>初期<rt>しょき</rt></ruby>はつわりがありますね。<ruby>無理<rt>むり</rt></ruby>をしないこと。<ruby>葉酸<rt>ようさん</rt></ruby>のサプリは<ruby>続<rt>つづ</rt></ruby>けてください。<ruby>次<rt>つぎ</rt></ruby>の<ruby>検診<rt>けんしん</rt></ruby>は4<ruby>週間後<rt>しゅうかんご</rt></ruby>です。<br>*(Giai đoạn đầu có ốm nghén. Đừng cố quá. Tiếp tục uống folic acid. Khám tiếp sau 4 tuần.)* |
| Mai | はい、ありがとうございます。<br>*(Vâng, em cảm ơn bác sĩ ạ.)* |

---

## Tình huống 4 — Phòng khách nhà Tony+Yumi · 8/1 18:30, báo host family

*Tony+Yumi mời cơm tối thứ 6 hằng tuần. Đại đợi đến sau bữa ăn mới nói.*

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ユミさん、<ruby>食事<rt>しょくじ</rt></ruby>のあとで<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ないんですが、ご<ruby>報告<rt>ほうこく</rt></ruby>したいことがございます。<br>*(Anh Tony, chị Yumi, xin lỗi vì sau bữa ăn, nhưng em có chuyện muốn báo ạ.)* |
| Tony | (Osaka-ben) <ruby>何<rt>なん</rt></ruby>や、ダイ?<ruby>改<rt>あらた</rt></ruby>まって。<br>*(Gì thế, Đại? Trang trọng vậy.)* |
| Đại | <ruby>実<rt>じつ</rt></ruby>は、マイが<ruby>妊娠<rt>にんしん</rt></ruby>しました。<ruby>先日<rt>せんじつ</rt></ruby>クリニックで<ruby>確認<rt>かくにん</rt></ruby>できました。12<ruby>週<rt>しゅう</rt></ruby>です。<br>*(Thật ra... Mai đã có thai. Hôm trước tụi em đã xác nhận tại phòng khám. 12 tuần ạ.)* |
| Yumi | (Osaka-ben) えええ! ほんまに?<br>*(Cái gì! Thật á?)* |
| Mai | はい、<ruby>予定日<rt>よていび</rt></ruby>は8<ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めです。<br>*(Vâng, dự sinh đầu tháng 8 ạ.)* |
| Tony | (Osaka-ben, đập đùi) <ruby>わし<rt>わし</rt></ruby>、おじいちゃんになるんやで! ユミ、おばあちゃんやで!<br>*(Tớ làm ông rồi đấy! Yumi, bà rồi nhé!)* |
| Yumi | (Osaka-ben, ôm Mai) マイちゃん!ほんまにおめでとう! <ruby>体<rt>からだ</rt></ruby>、<ruby>大事<rt>だいじ</rt></ruby>にしてや!<br>*(Mai ơi! Chúc mừng thật đấy! Giữ gìn sức khỏe nhé!)* |
| Đại | これからもいろいろ<ruby>教<rt>おし</rt></ruby>えていただけると<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Mong anh chị tiếp tục chỉ bảo tụi em ạ.)* |
| Tony | (Osaka-ben) もちろんや!<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>来<rt>こ</rt></ruby>いや。<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby>やんけ。<br>*(Tất nhiên! Kẹt cái gì là tới đây nhé. Gia đình Osaka của tụi mày mà.)* |

---

## Tình huống 5 — Phòng Yumi · 8/1 19:30, Yumi dạy Mai mẹo Nhật

| Vai | Lời thoại |
|---|---|
| Yumi | (Osaka-ben) マイちゃん、つわりはまだ?<br>*(Mai ơi, ốm nghén chưa?)* |
| Mai | はい、<ruby>朝<rt>あさ</rt></ruby>ちょっと<ruby>気持<rt>きも</rt></ruby>ち<ruby>悪<rt>わる</rt></ruby>くなります。<br>*(Vâng, sáng hơi khó chịu ạ.)* |
| Yumi | (Osaka-ben) <ruby>梅干<rt>うめぼ</rt></ruby>しを<ruby>食<rt>た</rt></ruby>べてみて。<ruby>日本<rt>にほん</rt></ruby>の<ruby>妊婦<rt>にんぷ</rt></ruby>さんの<ruby>知恵<rt>ちえ</rt></ruby>やで。<br>*(Thử ăn mơ muối xem. Mẹo của phụ nữ mang thai Nhật đấy.)* |
| Mai | <ruby>梅干<rt>うめぼ</rt></ruby>し、ですか? <ruby>試<rt>ため</rt></ruby>してみます。<br>*(Mơ muối ạ? Em thử xem ạ.)* |
| Yumi | (Osaka-ben) あと、<ruby>母子手帳<rt>ぼしてちょう</rt></ruby>、もう<ruby>市役所<rt>しやくしょ</rt></ruby>でもらった?<br>*(Còn nữa, Sổ mẹ con đã lấy ở phường chưa?)* |
| Mai | え、<ruby>母子手帳<rt>ぼしてちょう</rt></ruby>というのは?<br>*(Ơ, "Sổ mẹ con" là gì ạ?)* |
| Yumi | (Osaka-ben) <ruby>母子健康手帳<rt>ぼしけんこうてちょう</rt></ruby>のことや。<ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>無料<rt>むりょう</rt></ruby>でもらえる。<ruby>検診<rt>けんしん</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>や<ruby>赤<rt>あか</rt></ruby>ちゃんの<ruby>成長<rt>せいちょう</rt></ruby>を<ruby>書<rt>か</rt></ruby>く<ruby>大事<rt>だいじ</rt></ruby>な<ruby>手帳<rt>てちょう</rt></ruby>やで。<br>*(Sổ Sức khoẻ Mẹ và Con. Lấy miễn phí ở phường. Sổ quan trọng ghi lịch khám và sự phát triển của em bé.)* |
| Mai | はじめて<ruby>聞<rt>き</rt></ruby>きました。<ruby>明日<rt>あした</rt></ruby><ruby>市役所<rt>しやくしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます。ありがとうございます!<br>*(Lần đầu em nghe. Mai em ra phường lấy. Em cảm ơn chị ạ!)* |

---

## Tình huống 6 — Phòng Đại · 9/1 22:00, gọi video bố mẹ HN

*Cảnh tiếng Việt — Đại+Mai cùng gọi bố mẹ Hà Nội.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi, mẹ với bố ngồi gần nhau đi, tụi con có tin báo. |
| Mẹ Đại | (tiếng Việt) Có gì hai đứa? Mẹ run hết cả người rồi đây. |
| Mai | (tiếng Việt) Mẹ ơi, con có em bé rồi mẹ. Bác sĩ vừa confirm chiều thứ tư, 12 tuần ạ. |
| Mẹ Đại | (tiếng Việt) Trời ơi! Bố ơi! Mình lên chức ông bà rồi này! |
| Bố Đại | (tiếng Việt, giọng nghẹn) Đại à... con 22 tuổi đã làm bố cơ đấy. Bố tự hào về con. |
| Đại | (tiếng Việt) Dạ. Dự sinh đầu tháng 8 ạ. Tụi con đặt tên là Hana — tiếng Nhật là 花, tiếng Việt mình đọc là Hoa ạ. |
| Mẹ Đại | (tiếng Việt) Tên đẹp quá. Mẹ thích lắm. Mai ơi con ăn uống gì có dễ không? Có nôn nhiều không? |
| Mai | (tiếng Việt) Hơi nghén buổi sáng mẹ ạ. Chị Yumi host family chỉ ăn 梅干し — mơ muối, đỡ lắm mẹ. |
| Bố Đại | (tiếng Việt) Học việc nuôi con từ người Nhật cũng được đó. Hai đứa cần gì cứ nói bố mẹ gửi sang. |

---

## Tình huống 7 — LINE Linh-Anh · 9/1 23:00, em gái biết tin

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (LINE, tiếng Việt) Anh hai!!! Em vừa nghe mẹ nói! Em sắp được làm cô rồi! |
| Đại | (LINE, tiếng Việt) Hehe. Em chuẩn bị tinh thần nhé. Tháng 8 này lên cô. |
| Linh-Anh | (LINE, tiếng Việt) Em với Sato sắp gửi quà sang đây. Tên bé gọi là gì? |
| Đại | (LINE, tiếng Việt) Hana — 花 ấy em. Mai chọn. |
| Sato (bạn trai Linh-Anh) | (LINE) ダイさん、マイさん、おめでとうございます! <ruby>姪<rt>めい</rt></ruby>っ<ruby>子<rt>こ</rt></ruby>のハナちゃん、<ruby>楽<rt>たの</rt></ruby>しみにしております。<br>*(Anh Đại, chị Mai, chúc mừng anh chị ạ! Em mong gặp cháu Hana lắm ạ.)* |
| Đại | (LINE) ありがとう、サト<ruby>君<rt>くん</rt></ruby>。<br>*(Cảm ơn Sato-kun.)* |

---

## Tình huống 8 — Office hour Inoue-sensei · 10/1 16:00, báo sensei

*Đại đến văn phòng Inoue-sensei (NLP Lab — chương 11 sẽ phỏng vấn lab). Đã hẹn lịch trước.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上先生<rt>いのうえせんせい</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Thầy Inoue, em xin phép ạ.)* |
| Inoue | グエンさん、どうぞ。<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>の<ruby>相談<rt>そうだん</rt></ruby>でしたね?<br>*(Em Nguyễn, mời vào. Em đến trao đổi về nguyện vọng lab phải không?)* |
| Đại | はい、それと、もう<ruby>一<rt>ひと</rt></ruby>つご<ruby>報告<rt>ほうこく</rt></ruby>がございます。<ruby>私<rt>わたくし</rt></ruby><ruby>事<rt>ごと</rt></ruby>で<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>妻<rt>つま</rt></ruby>が<ruby>妊娠<rt>にんしん</rt></ruby>いたしまして、<ruby>出産<rt>しゅっさん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>が2028<ruby>年<rt>ねん</rt></ruby>8<ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めでございます。<br>*(Vâng, và em có một việc xin báo cáo nữa ạ. Xin phép chuyện riêng — vợ em đang mang thai, dự sinh đầu tháng 8/2028 ạ.)* |
| Inoue | おお、そうですか! おめでとうございます。<ruby>奥様<rt>おくさま</rt></ruby>のお<ruby>身体<rt>からだ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Ồ, vậy à! Chúc mừng em. Sức khoẻ phu nhân có ổn không?)* |
| Đại | はい、<ruby>順調<rt>じゅんちょう</rt></ruby>でございます。ご<ruby>心配<rt>しんぱい</rt></ruby>ありがとうございます。<br>*(Vâng, suôn sẻ ạ. Cảm ơn thầy đã quan tâm.)* |
| Đại | <ruby>来年度<rt>らいねんど</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby>ラボに<ruby>所属<rt>しょぞく</rt></ruby>させていただく<ruby>場合<rt>ばあい</rt></ruby>、8<ruby>月<rt>がつ</rt></ruby>の<ruby>出産<rt>しゅっさん</rt></ruby><ruby>前後<rt>ぜんご</rt></ruby>に<ruby>研究<rt>けんきゅう</rt></ruby><ruby>活動<rt>かつどう</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>調整<rt>ちょうせい</rt></ruby>させていただく<ruby>可能性<rt>かのうせい</rt></ruby>がございます。<ruby>事前<rt>じぜん</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えしたく、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたしました。<br>*(Trường hợp năm sau được vào Inoue Lab, quanh thời điểm sinh tháng 8 em có thể cần điều chỉnh hoạt động nghiên cứu một chút ạ. Em muốn báo trước nên xin thầy ít thời gian ạ.)* |
| Inoue | ご<ruby>家族<rt>かぞく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>でかまいませんよ。うちのラボは<ruby>柔軟<rt>じゅうなん</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>します。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>時期<rt>じき</rt></ruby>ですから。<br>*(Cứ ưu tiên gia đình. Lab tôi sẽ linh hoạt. Đây là thời điểm quan trọng mà.)* |
| Đại | ありがとうございます。<ruby>研究<rt>けんきゅう</rt></ruby>はもちろん<ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>ませていただきます。<br>*(Em cảm ơn thầy ạ. Phần nghiên cứu tất nhiên em sẽ dốc sức.)* |

---

## Tình huống 9 — Hành lang sau office hour · 10/1 16:30, gặp Yamada-senpai

| Vai | Lời thoại |
|---|---|
| Yamada | おう、ダイ! <ruby>井上<rt>いのうえ</rt></ruby>のとこ<ruby>行<rt>い</rt></ruby>ってきたの?<br>*(Ô, Đại! Vừa qua chỗ thầy Inoue à?)* |
| Đại | はい、<ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。<ruby>実<rt>じつ</rt></ruby>は、<ruby>妻<rt>つま</rt></ruby>が<ruby>妊娠<rt>にんしん</rt></ruby>したので、ご<ruby>報告<rt>ほうこく</rt></ruby>に。<br>*(Vâng, anh Yamada. Thật ra, vợ em có thai, nên em vào báo cáo.)* |
| Yamada | マジか!おめでとう!いつ?<br>*(Thật á! Chúc mừng! Khi nào?)* |
| Đại | 8<ruby>月<rt>がつ</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Dự kiến tháng 8 ạ.)* |
| Yamada | <ruby>俺<rt>おれ</rt></ruby>は<ruby>独身<rt>どくしん</rt></ruby>やからピンと<ruby>来<rt>こ</rt></ruby>ないけど、すごいなあ。<ruby>子育<rt>こそだ</rt></ruby>てしながら<ruby>研究<rt>けんきゅう</rt></ruby>って<ruby>聞<rt>き</rt></ruby>くと<ruby>尊敬<rt>そんけい</rt></ruby>するわ。<br>*(Anh độc thân nên chưa hình dung được, nhưng giỏi thật. Vừa nuôi con vừa nghiên cứu, anh nể luôn.)* |
| Đại | <ruby>井上先生<rt>いのうえせんせい</rt></ruby>も<ruby>柔軟<rt>じゅうなん</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>するとおっしゃってくださいました。<br>*(Thầy Inoue cũng bảo sẽ linh hoạt ạ.)* |
| Yamada | <ruby>井上先生<rt>いのうえせんせい</rt></ruby>そういうの<ruby>大事<rt>だいじ</rt></ruby>にする<ruby>方<rt>かた</rt></ruby>やで。<ruby>安心<rt>あんしん</rt></ruby>しろよ。<br>*(Thầy Inoue rất coi trọng cái đó đấy. Yên tâm đi.)* |

---

## Tình huống 10 — Mai ở căn hộ · 12/1 20:00, Mai báo Đại quyết định pause Yamato School

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, em nghĩ kỹ rồi. Em sẽ tạm nghỉ Yamato School. |
| Đại | (tiếng Việt) Em chắc chứ? Em đang sát N2 lắm rồi mà. |
| Mai | (tiếng Việt) Em chắc. Đi học mỗi ngày mất 2 tiếng tàu, em mệt. Em sẽ học online nhẹ nhàng thôi. JLPT 7/2028 em xin lùi sang kỳ 12/2028, lúc đó bé 4 tháng rồi. |
| Đại | (tiếng Việt) Đúng rồi em. Sức khỏe em với bé là quan trọng nhất. Anh ủng hộ. |
| Mai | (tiếng Việt) Mà ngày mai em định ra trường nói chuyện với cô Tanaka — giáo viên chủ nhiệm. Em hơi run, anh tập với em một câu được không? |
| Đại | (tiếng Việt) Được. Em nói thử đi. |
| Mai | <ruby>田中先生<rt>たなかせんせい</rt></ruby>、<ruby>家庭<rt>かてい</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>で、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>休学<rt>きゅうがく</rt></ruby>させていただきたいのですが、よろしいでしょうか?<br>*(Thưa cô Tanaka, vì lý do gia đình, từ tháng sau em xin được nghỉ học tạm, được không ạ?)* |
| Đại | (tiếng Việt) Câu rất chuẩn. Thêm câu giải thích lý do thật: `<ruby>実<rt>じつ</rt></ruby>は、<ruby>妊娠<rt>にんしん</rt></ruby>いたしまして` (Thật ra em đang mang thai). |
| Mai | (tiếng Việt) Ừ. Em viết ra giấy nhớ. Cảm ơn anh. |

---

## Tình huống 11 — Văn phòng Yamato School · 13/1 14:00, Mai báo cô Tanaka

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>田中先生<rt>たなかせんせい</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか?<br>*(Cô Tanaka, em xin phép ạ. Cô cho em ít thời gian được không ạ?)* |
| Tanaka-sensei | はい、マイさん、どうぞ。<br>*(Vâng, Mai, mời em.)* |
| Mai | <ruby>実<rt>じつ</rt></ruby>は、<ruby>妊娠<rt>にんしん</rt></ruby>いたしまして、<ruby>予定日<rt>よていび</rt></ruby>が8<ruby>月<rt>がつ</rt></ruby>でございます。<ruby>家庭<rt>かてい</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>で、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>休学<rt>きゅうがく</rt></ruby>させていただきたいのですが、よろしいでしょうか?<br>*(Thật ra em đã mang thai, dự sinh tháng 8 ạ. Vì lý do gia đình, từ tháng sau em xin tạm nghỉ học, được không ạ?)* |
| Tanaka-sensei | まあ! おめでとうございます! もちろん<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>休学<rt>きゅうがく</rt></ruby>は<ruby>最長<rt>さいちょう</rt></ruby>2<ruby>年間<rt>ねんかん</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Ôi! Chúc mừng em! Tất nhiên được rồi. Nghỉ học tối đa 2 năm em nhé.)* |
| Mai | ありがとうございます。<ruby>復学<rt>ふくがく</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。<br>*(Em cảm ơn cô. Em dự kiến quay lại tháng 1 năm sau ạ.)* |
| Tanaka-sensei | では、<ruby>休学届<rt>きゅうがくとどけ</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しますね。<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にしてください。<br>*(Vậy cô chuẩn bị giấy xin nghỉ học nhé. Em giữ gìn sức khoẻ nhé.)* |
| Mai | はい、ありがとうございます。<br>*(Vâng, em cảm ơn cô ạ.)* |

---

## Tình huống 12 — LINE HR Cybozu · 15/1 10:00, xin sắp xếp lịch thực tập

*Đại đã được mời thực tập hè dài 6-9/2028 từ năm ngoái. Nay phải xin điều chỉnh.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Cybozu HR Hayashi-san) <ruby>林様<rt>はやしさま</rt></ruby>、<ruby>大学<rt>だいがく</rt></ruby>2<ruby>年<rt>ねん</rt></ruby>のグエン・ダイです。いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Anh Hayashi, em là Nguyễn Đại năm 2 đại học. Em luôn được anh giúp đỡ ạ.)* |
| Đại | <ruby>夏<rt>なつ</rt></ruby>の<ruby>長期<rt>ちょうき</rt></ruby>インターン(6〜9<ruby>月<rt>がつ</rt></ruby>)に<ruby>関<rt>かん</rt></ruby>して、ご<ruby>相談<rt>そうだん</rt></ruby>がございます。<br>*(Em xin được trao đổi về kỳ thực tập dài hè (6-9 tháng) ạ.)* |
| Đại | <ruby>家庭<rt>かてい</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>で<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>子<rt>こ</rt></ruby>どもが8<ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めに<ruby>誕生<rt>たんじょう</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>でございます。<ruby>出産<rt>しゅっさん</rt></ruby><ruby>前後<rt>ぜんご</rt></ruby>の<ruby>勤務<rt>きんむ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>は<ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Xin lỗi vì lý do gia đình, nhưng con em dự kiến sinh đầu tháng 8 ạ. Em có thể được sắp xếp lịch làm việc linh hoạt quanh thời điểm sinh không ạ?)* |
| Hayashi (HR) | (LINE) ダイさん、ご<ruby>家族<rt>かぞく</rt></ruby>のおめでたいニュース、おめでとうございます!<br>*(Đại, tin vui của gia đình em, chúc mừng nhé!)* |
| Hayashi | (LINE) <ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>です。8<ruby>月<rt>がつ</rt></ruby>に1<ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>休暇<rt>きゅうか</rt></ruby>+ リモート<ruby>勤務<rt>きんむ</rt></ruby>2<ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>調整<rt>ちょうせい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Công ty mình văn hoá ưu tiên gia đình. Tháng 8 có thể sắp 1 tuần nghỉ + 2 tuần remote nhé.)* |
| Đại | (LINE) <ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>のうえ、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>日程<rt>にってい</rt></ruby>を<ruby>来週<rt>らいしゅう</rt></ruby>までにお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Em xin chân thành cảm ơn ạ. Em sẽ bàn với gia đình rồi gửi lịch chính thức trong tuần tới ạ.)* |
| Hayashi | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>奥様<rt>おくさま</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にしてくださいね。<br>*(OK nhé. Em chăm sóc phu nhân nha.)* |

---

## Tình huống 13 — Izakaya Toyonaka · 14/1 19:00, tiệc mừng không cồn với cohort

| Vai | Lời thoại |
|---|---|
| Yamato | みんな、<ruby>本日<rt>ほんじつ</rt></ruby>はダイとマイさんの<ruby>祝賀会<rt>しゅくがかい</rt></ruby>!<ruby>全員<rt>ぜんいん</rt></ruby>ノンアルコールでいくよ! <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Mọi người, hôm nay là tiệc mừng cho Đại và Mai! Cả nhóm uống đồ không cồn nhé! Cạn ly!)* |
| Cả nhóm | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Aiko | マイさん、つわりはどう?<br>*(Mai, ốm nghén thế nào?)* |
| Mai | <ruby>朝<rt>あさ</rt></ruby>だけです。ユミさんに<ruby>梅干<rt>うめぼ</rt></ruby>しを<ruby>教<rt>おそ</rt></ruby>わって、<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Chỉ buổi sáng ạ. Chị Yumi chỉ ăn mơ muối, đỡ hơn ạ.)* |
| Lin Wei | (English) Name decided?<br>*(Đặt tên chưa?)* |
| Đại | はい、ハナ — <ruby>漢字<rt>かんじ</rt></ruby>で「<ruby>花<rt>はな</rt></ruby>」。<ruby>ベトナム語<rt>ベトナムご</rt></ruby>で「Hoa」、<ruby>同<rt>おな</rt></ruby>じ<ruby>意味<rt>いみ</rt></ruby>。<br>*(Vâng, Hana — kanji là 花. Tiếng Việt là Hoa, cùng nghĩa.)* |
| Rajesh | Beautiful name. In Hindi we have "Pushpa" — also flower. Cross-cultural baby!<br>*(Tên đẹp. Tiếng Hindi có "Pushpa" — cũng là hoa. Bé đa văn hoá!)* |
| Yamato | お<ruby>祝<rt>いわ</rt></ruby>いに、みんなで<ruby>何<rt>なに</rt></ruby>かプレゼントしようぜ。<br>*(Mừng đi, cả nhóm cùng tặng quà gì đó đi.)* |
| Aiko | <ruby>絵本<rt>えほん</rt></ruby>がいい!<ruby>日本語<rt>にほんご</rt></ruby>とベトナム<ruby>語<rt>ご</rt></ruby>のバイリンガル<ruby>絵本<rt>えほん</rt></ruby>を<ruby>探<rt>さが</rt></ruby>そう。<br>*(Sách tranh nhé! Tìm sách tranh song ngữ Nhật-Việt đi.)* |
| Mai | みんな、ありがとうございます。<ruby>感動<rt>かんどう</rt></ruby>しました。<br>*(Mọi người, em cảm ơn. Em xúc động lắm ạ.)* |

---

## Tình huống 14 — Phòng Đại · 20/1 23:00, gọi video bố mẹ HN

*Cảnh tiếng Việt — Đại gọi bố mẹ cuối tuần, kể chuyện báo sensei + cohort.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi, tuần này con báo tin với thầy chủ nhiệm lab tương lai rồi. |
| Mẹ Đại | (tiếng Việt) Thầy nói sao con? |
| Đại | (tiếng Việt) Thầy chúc mừng. Thầy còn bảo "ご家族優先でかまいませんよ" — kiểu cứ ưu tiên gia đình. Người Nhật giờ cũng thoáng về cái này lắm mẹ. |
| Bố Đại | (tiếng Việt) Hay quá. Trước bố cứ tưởng người Nhật khắt khe chuyện công việc lắm. |
| Đại | (tiếng Việt) Cybozu cũng vậy bố. HR cho con nghỉ 1 tuần lúc Mai sinh, thêm 2 tuần remote. Câu HR dùng: "当社は家族優先の文化です" — công ty mình văn hoá ưu tiên gia đình. |
| Mẹ Đại | (tiếng Việt) Mẹ yên tâm rồi. Mai có nói chuyện với mẹ chồng Nhật chưa con? Chị Yumi ấy. |
| Đại | (tiếng Việt) Có ạ. Chị Yumi chỉ Mai ra phường lấy 母子手帳 — Sổ Mẹ và Con. Mai hôm sau ra phường lấy luôn. Bố mẹ Nhật quan tâm cẩn thận lắm mẹ ạ. |
| Bố Đại | (tiếng Việt) Tốt rồi. Bố mẹ gửi mỗi tháng thêm chút sang đỡ hai đứa. |
| Đại | (tiếng Việt) Dạ. Tụi con cảm ơn bố mẹ. |

---

## Đọng lại chương 10

Đại học các mẫu **báo tin có thai với từng đối tượng khác nhau**: với host family thân thiết Tony+Yumi dùng cấu trúc thân tình **`実は〜しました・ご報告したいことがございます`**; với sensei Inoue cực kỳ trang trọng **`私事で恐縮ですが、妻が妊娠いたしまして`** kèm xin điều chỉnh **`〜させていただく可能性がございます`**; với HR Cybozu qua LINE dùng **`家庭の事情で恐縮ですが・〜は可能でしょうか?`** và nhận lại văn hoá Nhật **`家族優先でかまいませんよ・当社は家族優先の文化です`**. Mai cũng học theo Đại để báo cô Tanaka tại Yamato School xin **休学**. Tại phòng khám sản, Đại học giao tiếp lễ tân + bác sĩ Nhật (**初診・問診票・保険証・予定日・順調**). Yumi dạy Mai mẹo **梅干し** trị nghén và **母子手帳** lấy ở phường.

> Từ vựng & mẫu câu chương này: 妊娠・予定日・初診・問診票・保険証・順調・葉酸・つわり・梅干し・母子手帳・休学・休学届・私事で恐縮ですが・実は・〜いたしまして・ご報告したいことがございます・〜させていただく可能性がございます・家庭の事情で恐縮ですが・〜は可能でしょうか・家族優先・ご家族優先でかまいません・お時間を頂戴いたしました・誠にありがとうございます・乾杯・ノンアルコール

## Bí quyết chương

- **Báo tin theo "tầng" trang trọng**: cùng một tin "có thai" nhưng với host family vs sensei vs HR dùng từ khác hẳn. Phải nắm cả 3 register.
- **Chuyện riêng với người trên dùng `私事で恐縮ですが`**: câu mở đầu chuẩn xin nói chuyện riêng tư với sensei/上司.
- **Xin điều chỉnh kèm cam kết**: `〜は可能でしょうか?` (xin phép) → khi được duyệt thêm `研究は全力で取り組ませていただきます` (cam kết phần chính vẫn không giảm).
- **母子手帳 là điểm chốt**: bất kỳ phụ nữ Nhật/định cư Nhật mang thai đều nhận sổ này tại 市役所 — biểu tượng welfare gia đình Nhật.
- **Văn hoá Cybozu thực sự ưu tiên gia đình**: không phải tất cả công ty Nhật đều thế, nhưng các IT-tier 1 (Cybozu, Sansan, Sakura) thật sự linh hoạt.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 初診 | しょしん | SƠ CHẨN | khám lần đầu |
| 問診票 | もんしんひょう | VẤN CHẨN PHIẾU | phiếu khai bệnh |
| 保険証 | ほけんしょう | BẢO HIỂM CHỨNG | thẻ bảo hiểm |
| 英語版 | えいごばん | ANH NGỮ BẢN | bản tiếng Anh |
| 伺う | うかがう | TỨ | hỏi (khiêm nhường) |
| 始める | はじめる | THUỶ | bắt đầu |
| 心拍 | しんぱく | TÂM PHÁCH | nhịp tim |
| 妊娠 | にんしん | NHÂM THẦN | mang thai |
| 週 | しゅう | TUẦN | tuần |
| 予定日 | よていび | DỰ ĐỊNH NHẬT | ngày dự sinh |
| 順調 | じゅんちょう | THUẬN ĐIỀU | suôn sẻ |
| 葉酸 | ようさん | DIỆP TOAN | folic acid |
| つわり | つわり | — | ốm nghén |
| 無理 | むり | VÔ LÝ | gắng sức quá |
| 検診 | けんしん | KIỂM CHẨN | khám định kỳ |
| 改まる | あらたまる | CẢI | trang trọng lại |
| 体 | からだ | THỂ | cơ thể |
| 大事 | だいじ | ĐẠI SỰ | quan trọng, giữ gìn |
| 困る | こまる | KHỐN | gặp khó |
| 知恵 | ちえ | TRI HUỆ | mẹo, trí khôn |
| 梅干し | うめぼし | MAI CAN | mơ muối |
| 母子手帳 | ぼしてちょう | MẪU TỬ THỦ TRƯỚNG | sổ mẹ con |
| 市役所 | しやくしょ | THỊ DỊCH SỞ | uỷ ban quận/phường |
| 無料 | むりょう | VÔ LIỆU | miễn phí |
| 記録 | きろく | KÝ LỤC | ghi chép |
| 成長 | せいちょう | THÀNH TRƯỞNG | phát triển |
| 手帳 | てちょう | THỦ TRƯỚNG | sổ tay |
| 姪っ子 | めいっこ | ĐIỆT TỬ | cháu gái |
| 私事 | わたくしごと | TƯ SỰ | việc riêng |
| 恐縮 | きょうしゅく | KHỦNG SÚC | xin lỗi (khiêm) |
| 出産 | しゅっさん | XUẤT SẢN | sinh con |
| 奥様 | おくさま | ÁO DẠNG | phu nhân |
| 来年度 | らいねんど | LAI NIÊN ĐỘ | năm sau |
| 研究活動 | けんきゅうかつどう | NGHIÊN CỨU HOẠT ĐỘNG | hoạt động nghiên cứu |
| 調整 | ちょうせい | ĐIỀU CHỈNH | điều chỉnh |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 事前 | じぜん | SỰ TIỀN | trước, từ trước |
| 頂戴 | ちょうだい | ĐỈNH ĐÁI | xin nhận (khiêm) |
| 柔軟 | じゅうなん | NHU NHUYỄN | linh hoạt |
| 全力 | ぜんりょく | TOÀN LỰC | dốc sức |
| 取り組む | とりくむ | — | bắt tay vào |
| 独身 | どくしん | ĐỘC THÂN | độc thân |
| 尊敬 | そんけい | TÔN KÍNH | kính trọng |
| 家庭 | かてい | GIA ĐÌNH | gia đình |
| 事情 | じじょう | SỰ TÌNH | hoàn cảnh |
| 休学 | きゅうがく | HƯU HỌC | nghỉ học tạm |
| 復学 | ふくがく | PHỤC HỌC | quay lại học |
| 勤務 | きんむ | CẦN VỤ | làm việc |
| 休暇 | きゅうか | HƯU GIẢ | nghỉ phép |
| 当社 | とうしゃ | ĐƯƠNG XÃ | công ty này |
| 正式 | せいしき | CHÍNH THỨC | chính thức |
| 日程 | にってい | NHẬT TRÌNH | lịch trình |
| 誠に | まことに | THÀNH | chân thành |
| 祝賀会 | しゅくがかい | CHÚC HẠ HỘI | tiệc chúc mừng |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000011, 800000022, NULL, 'markdown_book', 'T11. Lab tour 8 lab — phỏng vấn vào Inoue Lab (NLP/AI)', '# Sách sinh viên Đại học Osaka · T11. Lab tour 8 lab — phỏng vấn vào Inoue Lab (NLP/AI)

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 2 hậu kỳ (2-3/2028). Học các mẫu hội thoại tiếng Nhật khi: **tham quan research lab và chào sensei lần đầu** (`本日はラボツアーへ参りました`), **đặt câu hỏi senpai về lab** (`〜について伺ってもよろしいでしょうか?`), **so sánh lab với bạn cohort**, **viết động cơ application** (志望理由), **trả lời phỏng vấn lab 3 lý do** (`理由は3つございます`), **nhận kết quả 合格** và báo cảm ơn.

---

## Bối cảnh

Tháng 2-3/2028. Hậu kỳ năm 2 — khoa CNTT bắt buộc tham quan 8 research lab để chọn lab gắn bó năm 3-4 và làm 卒研. Đại tour 4 lab trọng tâm: Inoue (NLP/AI — NV1), Watanabe (HCI — NV2), Suzuki (Algorithm), Sato (Distributed Systems — NV3). Application deadline 15/3, phỏng vấn 25/3, kết quả 1/4. Inoue Lab cạnh tranh nhất khoa — 5 suất, ~20 SV nộp. Yamada-senpai (đã quen từ T1 sách 21) đang là Master năm 1 ở Inoue Lab. Chương này tập trung các mẫu câu **tour lab, hỏi senpai/sensei, viết động cơ, phỏng vấn lab và báo kết quả**.

---

## Tình huống 1 — Giảng đường A-101 · 1/2 10:00, sensei phổ biến lab tour

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>から2<ruby>週間<rt>しゅうかん</rt></ruby>、ラボツアー<ruby>期間<rt>きかん</rt></ruby>です。8つの<ruby>研究室<rt>けんきゅうしつ</rt></ruby>を<ruby>自由<rt>じゆう</rt></ruby>に<ruby>訪問<rt>ほうもん</rt></ruby>してください。<br>*(Từ hôm nay 2 tuần là kỳ tham quan lab. Các em tự do thăm 8 research lab.)* |
| Watanabe | <ruby>応募<rt>おうぼ</rt></ruby>は<ruby>第三<rt>だいさん</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>まで。<ruby>選考<rt>せんこう</rt></ruby>はGPA + <ruby>面接<rt>めんせつ</rt></ruby>+ <ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>です。<ruby>締切<rt>しめきり</rt></ruby>は3<ruby>月<rt>がつ</rt></ruby>15<ruby>日<rt>にち</rt></ruby>。<br>*(Nộp tối đa 3 nguyện vọng. Xét tuyển bằng GPA + phỏng vấn + đơn động cơ. Hạn 15/3.)* |
| Đại | (thì thầm Yamato) <ruby>俺<rt>おれ</rt></ruby>はInoue Lab 1<ruby>本<rt>ぽん</rt></ruby><ruby>狙<rt>ねら</rt></ruby>い。<br>*(Tớ nhắm chính Inoue Lab.)* |
| Yamato | (thì thầm) <ruby>俺<rt>おれ</rt></ruby>はSuzuki。アルゴリズム<ruby>一択<rt>いったく</rt></ruby>。<br>*(Tớ Suzuki. Chỉ algorithm.)* |

---

## Tình huống 2 — Hành lang B-3F · 5/2 13:30, Đại chào Yamada-senpai trước tour

*Đại đứng đợi trước cửa Inoue Lab. Yamada-senpai đi tới.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>久<rt>ひさ</rt></ruby>しぶりです!<br>*(Anh Yamada, lâu lắm rồi ạ!)* |
| Yamada | おう、ダイ! やっと<ruby>来<rt>き</rt></ruby>たか。<ruby>来週<rt>らいしゅう</rt></ruby>のツアー<ruby>楽<rt>たの</rt></ruby>しみにしてたぞ。<br>*(Ô, Đại! Cuối cùng cũng đến. Anh mong tour tuần sau lắm.)* |
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>、ツアーの<ruby>前<rt>まえ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか? <ruby>井上先生<rt>いのうえせんせい</rt></ruby>はどんな<ruby>方<rt>かた</rt></ruby>ですか?<br>*(Anh ơi, trước tour cho em hỏi chút được không ạ? Thầy Inoue là người thế nào ạ?)* |
| Yamada | <ruby>厳<rt>きび</rt></ruby>しいけど、<ruby>論理的<rt>ろんりてき</rt></ruby>。「なぜ?」と<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>く<ruby>方<rt>かた</rt></ruby>や。<ruby>準備<rt>じゅんび</rt></ruby>してきた<ruby>学生<rt>がくせい</rt></ruby>はかわいがる。<br>*(Khắt khe nhưng logic. Hay hỏi "tại sao?". Sinh viên chuẩn bị kỹ thì thầy quý.)* |
| Đại | <ruby>研究室<rt>けんきゅうしつ</rt></ruby>の<ruby>雰囲気<rt>ふんいき</rt></ruby>はいかがですか?<br>*(Không khí lab thế nào ạ?)* |
| Yamada | M1 4<ruby>人<rt>にん</rt></ruby>+ B4 5<ruby>人<rt>にん</rt></ruby>。コアタイムは<ruby>火曜<rt>かよう</rt></ruby>と<ruby>金曜<rt>きんよう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>。<ruby>勉強会<rt>べんきょうかい</rt></ruby><ruby>週<rt>しゅう</rt></ruby>1<ruby>回<rt>かい</rt></ruby>。<ruby>論文<rt>ろんぶん</rt></ruby><ruby>輪読<rt>りんどく</rt></ruby>もあるで。<br>*(M1 có 4 người + B4 5 người. Core time thứ 3 và thứ 6 chiều. Seminar 1 lần/tuần. Có cả đọc paper luân phiên.)* |
| Đại | ありがとうございます。<ruby>大変<rt>たいへん</rt></ruby><ruby>参考<rt>さんこう</rt></ruby>になりました。<br>*(Em cảm ơn anh. Rất tham khảo được ạ.)* |

---

## Tình huống 3 — Inoue Lab · 8/2 14:00, Inoue-sensei giới thiệu 5 hướng

*15 SV xếp hàng vào lab. Đại đứng hàng thứ hai. Inoue đứng trước whiteboard.*

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はInoue Labのツアーへようこそ。<ruby>当<rt>とう</rt></ruby>ラボはNLPとLLMの<ruby>研究<rt>けんきゅう</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>っております。<br>*(Các em, xin chào mừng đến Inoue Lab tour hôm nay. Lab tôi nghiên cứu về NLP và LLM.)* |
| Inoue | <ruby>主<rt>おも</rt></ruby>な<ruby>研究<rt>けんきゅう</rt></ruby><ruby>領域<rt>りょういき</rt></ruby>は<ruby>五<rt>いつ</rt></ruby>つございます。<ruby>一<rt>いち</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>トークナイゼーション。<ruby>二<rt>に</rt></ruby>、<ruby>事前<rt>じぜん</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>モデルのファインチューニング。<ruby>三<rt>さん</rt></ruby>、<ruby>多言語<rt>たげんご</rt></ruby>NLP。<ruby>四<rt>よん</rt></ruby>、<ruby>文章<rt>ぶんしょう</rt></ruby><ruby>要約<rt>ようやく</rt></ruby>。<ruby>五<rt>ご</rt></ruby>、LLMの<ruby>応用<rt>おうよう</rt></ruby>です。<br>*(Có 5 lĩnh vực chính. Một, tokenization tiếng Nhật. Hai, fine-tuning model pretrained. Ba, NLP đa ngôn ngữ. Bốn, tóm tắt văn bản. Năm, ứng dụng LLM.)* |
| Inoue | <ruby>質問<rt>しつもん</rt></ruby>がある<ruby>方<rt>かた</rt></ruby>?<br>*(Em nào có câu hỏi?)* |
| Đại | (giơ tay) <ruby>多言語<rt>たげんご</rt></ruby>NLPについて<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか? <ruby>日本語<rt>にほんご</rt></ruby>と<ruby>東南<rt>とうなん</rt></ruby>アジア<ruby>言語<rt>げんご</rt></ruby>、<ruby>特<rt>とく</rt></ruby>にベトナム<ruby>語<rt>ご</rt></ruby>の<ruby>研究<rt>けんきゅう</rt></ruby>はございますか?<br>*(Em xin hỏi về NLP đa ngôn ngữ được không ạ? Có nghiên cứu tiếng Nhật với ngôn ngữ ĐNÁ — đặc biệt tiếng Việt — không ạ?)* |
| Inoue | <ruby>良<rt>よ</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>現在<rt>げんざい</rt></ruby>、JP-EN-中国語のリソースは<ruby>豊富<rt>ほうふ</rt></ruby>ですが、ベトナム<ruby>語<rt>ご</rt></ruby>は<ruby>未開拓<rt>みかいたく</rt></ruby>です。<ruby>挑戦<rt>ちょうせん</rt></ruby>したい<ruby>方<rt>かた</rt></ruby>には<ruby>面白<rt>おもしろ</rt></ruby>いテーマです。<br>*(Câu hỏi tốt. Hiện tại JP-EN-Trung tài nguyên dồi dào nhưng tiếng Việt còn chưa khai thác. Với em nào muốn thử thì là chủ đề thú vị.)* |
| Đại | (cúi nhẹ) ありがとうございます。<br>*(Cảm ơn thầy ạ.)* |

---

## Tình huống 4 — Bàn poster Inoue Lab · 8/2 14:30, Yamada-senpai giới thiệu nghiên cứu

| Vai | Lời thoại |
|---|---|
| Yamada | (chỉ poster) これが<ruby>俺<rt>おれ</rt></ruby>のM1テーマ:「<ruby>低<rt>てい</rt></ruby><ruby>資源<rt>しげん</rt></ruby><ruby>言語<rt>げんご</rt></ruby>のためのCross-lingual Transfer」。<ruby>英語<rt>えいご</rt></ruby>BERTからベトナム<ruby>語<rt>ご</rt></ruby>へ<ruby>知識<rt>ちしき</rt></ruby><ruby>移転<rt>いてん</rt></ruby>するんだ。<br>*(Đây là chủ đề M1 của anh: "Cross-lingual Transfer cho ngôn ngữ ít tài nguyên". Transfer kiến thức từ BERT tiếng Anh sang tiếng Việt.)* |
| Đại | (chăm chú đọc poster) これは<ruby>正<rt>まさ</rt></ruby>に<ruby>私<rt>わたし</rt></ruby>が<ruby>関心<rt>かんしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っている<ruby>領域<rt>りょういき</rt></ruby>です!<br>*(Đây đúng là lĩnh vực em quan tâm!)* |
| Yamada | <ruby>来年度<rt>らいねんど</rt></ruby><ruby>入<rt>はい</rt></ruby>って<ruby>来<rt>こ</rt></ruby>たら、<ruby>俺<rt>おれ</rt></ruby>のサブテーマを<ruby>任<rt>まか</rt></ruby>せられるかもしれん。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>しろよ。<br>*(Năm sau em vào, anh có thể giao sub-topic của anh đấy. Nhất định nộp nhé.)* |
| Đại | はい、<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>にします。ところで、<ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>くコツはございますか?<br>*(Vâng, em để NV1. À, có bí quyết viết đơn động cơ không ạ?)* |
| Yamada | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>経験<rt>けいけん</rt></ruby>を<ruby>書<rt>か</rt></ruby>くこと。「NLP に<ruby>興味<rt>きょうみ</rt></ruby>があります」だけじゃダメ。「<ruby>妻<rt>つま</rt></ruby>のための<ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリを<ruby>試作<rt>しさく</rt></ruby>した」みたいな<ruby>事実<rt>じじつ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れるんだ。<br>*(Phải viết kinh nghiệm cụ thể. Chỉ "em quan tâm NLP" thì không ổn. Phải có fact kiểu "em đã làm thử app học ngôn ngữ cho vợ".)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます、<ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Em hiểu rồi. Em cảm ơn anh thật ạ.)* |

---

## Tình huống 5 — Watanabe Lab · 12/2 13:00, tour NV2 cùng Aiko

| Vai | Lời thoại |
|---|---|
| Watanabe | HCI Labの<ruby>方向<rt>ほうこう</rt></ruby>は3つです。UXリサーチ、アクセシビリティ、AR/VR。<br>*(HCI Lab có 3 hướng. UX research, accessibility, AR/VR.)* |
| Aiko | (giơ tay) アクセシビリティの<ruby>具体例<rt>ぐたいれい</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか?<br>*(Em xin hỏi ví dụ cụ thể về accessibility được không ạ?)* |
| Watanabe | <ruby>高齢者<rt>こうれいしゃ</rt></ruby><ruby>向<rt>む</rt></ruby>けスマホUIや、<ruby>視覚<rt>しかく</rt></ruby><ruby>障害<rt>しょうがい</rt></ruby>のある<ruby>方<rt>かた</rt></ruby>のためのスクリーンリーダー<ruby>最適化<rt>さいてきか</rt></ruby>などです。<br>*(UI smartphone cho người cao tuổi, hoặc tối ưu screen reader cho người khiếm thị.)* |
| Aiko | (thì thầm Đại) こっち<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>にする!<br>*(Mình để NV1 nhé!)* |
| Đại | (thì thầm) <ruby>俺<rt>おれ</rt></ruby>は<ruby>第二<rt>だいに</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>。バックアップ。<br>*(Tớ NV2. Dự phòng.)* |

---

## Tình huống 6 — Sato Lab · 15/2 11:00, tour NV3 với Lin Wei

| Vai | Lời thoại |
|---|---|
| Sato-sensei | <ruby>分散<rt>ぶんさん</rt></ruby>システムLabです。テーマはコンセンサスアルゴリズム、Kubernetes、サーバーレスです。<br>*(Lab Distributed Systems. Chủ đề: consensus algorithm, Kubernetes, serverless.)* |
| Lin Wei | (English, giơ tay) Sensei, can I ask in English? My Japanese is limited.<br>*(Thầy ơi, em hỏi tiếng Anh được không ạ? Tiếng Nhật em hạn chế.)* |
| Sato-sensei | もちろん、どうぞ。<br>*(Tất nhiên, mời em.)* |
| Lin Wei | (English) Any collaboration with Mercari or Google?<br>*(Có hợp tác với Mercari hay Google không ạ?)* |
| Sato-sensei | はい、Mercariと<ruby>共同<rt>きょうどう</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>が2つあります。インターンも<ruby>毎年<rt>まいねん</rt></ruby>2<ruby>名<rt>めい</rt></ruby><ruby>送<rt>おく</rt></ruby>っています。<br>*(Vâng, có 2 nghiên cứu chung với Mercari. Mỗi năm gửi 2 SV đi thực tập.)* |
| Đại | (giơ tay) <ruby>佐藤<rt>さとう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>当<rt>とう</rt></ruby>ラボに<ruby>応募<rt>おうぼ</rt></ruby>する<ruby>場合<rt>ばあい</rt></ruby>、<ruby>事前<rt>じぜん</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>として<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>でしょうか?<br>*(Thưa thầy, khi ứng tuyển lab, cần kiến thức nền gì ạ?)* |
| Sato-sensei | <ruby>分散<rt>ぶんさん</rt></ruby>システムの<ruby>授業<rt>じゅぎょう</rt></ruby>のB+ <ruby>以上<rt>いじょう</rt></ruby>、Linux<ruby>基本<rt>きほん</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>、Goか Rust の<ruby>経験<rt>けいけん</rt></ruby>があると<ruby>良<rt>よ</rt></ruby>いですね。<br>*(Điểm B+ trở lên môn distributed systems, biết Linux cơ bản, có kinh nghiệm Go hoặc Rust thì tốt.)* |

---

## Tình huống 7 — Quán cafe Toyonaka · 18/2 16:00, cohort so sánh nguyện vọng

| Vai | Lời thoại |
|---|---|
| Đại | みんな、<ruby>志望<rt>しぼう</rt></ruby>はどうする? <ruby>共有<rt>きょうゆう</rt></ruby>しようよ。<br>*(Mọi người NV thế nào? Chia sẻ đi.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>:Suzuki(NV1)、Inoue(NV2)、Sato(NV3)。<br> |
| Aiko | <ruby>私<rt>わたし</rt></ruby>:Watanabe(NV1)、Inoue(NV2)、Suzuki(NV3)。<br> |
| Lin Wei | (English) Sato NV1, Murakami NV2, Sato NV3 again actually I mean Watanabe.<br>*(Sato NV1, Murakami NV2, à nhầm — Watanabe NV3.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>:Inoue(NV1)、Watanabe(NV2)、Sato(NV3)。<br> |
| Rajesh | I''ll go Murakami Cloud NV1 — AWS focus.<br>*(Tớ Murakami Cloud NV1 — focus AWS.)* |
| Aiko | 5<ruby>人<rt>にん</rt></ruby>とも<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby><ruby>違<rt>ちが</rt></ruby>うね。<ruby>面白<rt>おもしろ</rt></ruby>い。<br>*(5 đứa NV1 khác nhau hết. Hay đấy.)* |
| Yamato | Inoue<ruby>競<rt>きそ</rt></ruby>うの、お<ruby>互<rt>たが</rt></ruby>い<ruby>気<rt>き</rt></ruby>まずいな。<br>*(Cạnh tranh Inoue, hơi ngại nhau nhỉ.)* |
| Đại | <ruby>選考<rt>せんこう</rt></ruby>は<ruby>選考<rt>せんこう</rt></ruby>。<ruby>結果<rt>けっか</rt></ruby>がどうでも、<ruby>仲間<rt>なかま</rt></ruby>は<ruby>仲間<rt>なかま</rt></ruby>だよ。<br>*(Xét tuyển là xét tuyển. Kết quả thế nào, bạn vẫn là bạn.)* |

---

## Tình huống 8 — Phòng Đại · 25/2 22:30, Mai góp ý đơn 志望理由書

*Đại đang viết draft 6 trên MacBook. Mai bụng đã to.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh đọc cho em nghe đi. Em góp ý xem có chỗ nào "Nhật" hơn được không. |
| Đại | (tiếng Việt) Ừ. Bắt đầu nhé: "<ruby>私<rt>わたし</rt></ruby>が<ruby>井上<rt>いのうえ</rt></ruby>ラボを<ruby>志望<rt>しぼう</rt></ruby>する<ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つございます。" |
| Mai | (tiếng Việt) Hay. Tiếp đi. |
| Đại | (tiếng Việt) "<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby>として<ruby>多言語<rt>たげんご</rt></ruby>NLPに<ruby>強<rt>つよ</rt></ruby>い<ruby>関心<rt>かんしん</rt></ruby>がございます。" — Lý do 1 là làm du học sinh VN, em quan tâm mạnh NLP đa ngôn ngữ. |
| Mai | (tiếng Việt) Câu đó tốt. Lý do 2? |
| Đại | (tiếng Việt) "<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>妻<rt>つま</rt></ruby>のために<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリの<ruby>試作<rt>しさく</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>った<ruby>経験<rt>けいけん</rt></ruby>がございます。" — Lý do 2 là em có kinh nghiệm làm thử app học tiếng Nhật cho vợ. |
| Mai | (tiếng Việt) Em xúc động đấy. Để câu đó. Lý do 3? |
| Đại | (tiếng Việt) "<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のCross-lingual Transferの<ruby>研究<rt>けんきゅう</rt></ruby>と<ruby>方向性<rt>ほうこうせい</rt></ruby>が<ruby>合致<rt>がっち</rt></ruby>しております。" |
| Mai | (tiếng Việt) Anh thêm câu kết kiểu cam kết đi: "全力で研究に取り組む所存です" — em sẽ dốc sức nghiên cứu. |
| Đại | (tiếng Việt) Đúng! Câu đó kết bài chuẩn lắm. Em giỏi keigo rồi đấy. |
| Mai | (tiếng Việt) Em chỉ học chỗ Yumi-san là chính thôi. |

---

## Tình huống 9 — Phòng Inoue-sensei · 25/3 14:00, phỏng vấn lab

*Đại comp lê đen sơ mi trắng. Inoue ngồi sau bàn, cầm CV của Đại.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>大学<rt>だいがく</rt></ruby>2<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin phép ạ. Em là Nguyễn Văn Đại năm 2 đại học. Hôm nay mong thầy giúp đỡ ạ.)* |
| Inoue | どうぞ、お<ruby>座<rt>すわ</rt></ruby>りください。グエンさん、なぜInoue Labを<ruby>志望<rt>しぼう</rt></ruby>しましたか?<br>*(Mời em ngồi. Em Nguyễn, vì sao em chọn Inoue Lab?)* |
| Đại | <ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby>として<ruby>多言語<rt>たげんご</rt></ruby>NLPに<ruby>強<rt>つよ</rt></ruby>い<ruby>関心<rt>かんしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っております。<br>*(Có 3 lý do ạ. Lý do 1: là du học sinh VN, em quan tâm rất mạnh đến NLP đa ngôn ngữ.)* |
| Đại | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>妻<rt>つま</rt></ruby>のために<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリの<ruby>試作<rt>しさく</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>った<ruby>経験<rt>けいけん</rt></ruby>がございます。<ruby>実<rt>じつ</rt></ruby><ruby>用途<rt>ようと</rt></ruby>のNLPアプリへの<ruby>強<rt>つよ</rt></ruby>い<ruby>動機<rt>どうき</rt></ruby>がございます。<br>*(Lý do 2: em có kinh nghiệm làm thử app học tiếng Nhật cho vợ. Em có động lực mạnh với app NLP thực dụng.)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のCross-lingual Transferの<ruby>研究<rt>けんきゅう</rt></ruby>と<ruby>方向性<rt>ほうこうせい</rt></ruby>が<ruby>合致<rt>がっち</rt></ruby>しております。<br>*(Lý do 3: trùng hướng với nghiên cứu Cross-lingual Transfer của anh Yamada.)* |
| Inoue | <ruby>動機<rt>どうき</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>ですね。<ruby>卒業研究<rt>そつぎょうけんきゅう</rt></ruby>のテーマは<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Động cơ rõ ràng. Đã nghĩ đề tài 卒研 chưa?)* |
| Đại | はい、<ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムとAIチューターを<ruby>融合<rt>ゆうごう</rt></ruby>させる<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Vâng, em đang nghĩ hướng kết hợp hệ thống học ngôn ngữ và AI gia sư ạ.)* |
| Inoue | <ruby>面白<rt>おもしろ</rt></ruby>いですね! ところで、<ruby>仮<rt>かり</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>をつけるとしたら?<br>*(Hay đấy! Mà nếu đặt tên giả định thì là gì?)* |
| Đại | (giật mình một chút) <ruby>仮<rt>かり</rt></ruby>に「Hizashi」と<ruby>呼<rt>よ</rt></ruby>んでおります。「<ruby>陽射<rt>ひざ</rt></ruby>し」、<ruby>光<rt>ひかり</rt></ruby>がベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>に<ruby>届<rt>とど</rt></ruby>くという<ruby>意味<rt>いみ</rt></ruby>でございます。<br>*(Tạm gọi là "Hizashi" ạ. Là "陽射し" — nghĩa ánh nắng đến với người học VN ạ.)* |
| Inoue | Hizashi、いい<ruby>名前<rt>なまえ</rt></ruby>ですね。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Hizashi, tên hay. Tôi sẽ nhớ.)* |
| Đại | (cúi 30 độ) ありがとうございます。<br>*(Em cảm ơn thầy ạ.)* |

---

## Tình huống 10 — Phòng Đại · 25/3 19:00, gọi Mai báo kết quả phỏng vấn

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi, phỏng vấn xong rồi. Đỡ run rồi. |
| Mai | (tiếng Việt) Sao anh? Cảm giác thế nào? |
| Đại | (tiếng Việt) Tốt em ạ. Thầy hỏi em đề tài 卒研, anh trả lời "hệ thống học ngôn ngữ + AI gia sư". Thầy còn hỏi đặt tên giả định, anh buột mồm nói "Hizashi". |
| Mai | (tiếng Việt) Trời! Anh nói tên ra rồi! |
| Đại | (tiếng Việt) Ừ. Thầy bảo "Hizashi, tên hay. Tôi sẽ nhớ". Anh giật mình lắm. Tên dự án mình ấp ủ từ năm 1, giờ lộ ra trong phòng phỏng vấn. |
| Mai | (tiếng Việt) Có khi đó là cái dấu. Anh sẽ đỗ Inoue Lab thôi. |
| Đại | (tiếng Việt) Mong vậy. 1/4 có kết quả. Còn 1 tuần nữa. |

---

## Tình huống 11 — Phòng Đại · 1/4 9:05, mở email kết quả

| Vai | Lời thoại |
|---|---|
| Đại | (mở Gmail, đọc to) 「<ruby>井上<rt>いのうえ</rt></ruby>ラボ<ruby>選考<rt>せんこう</rt></ruby><ruby>結果<rt>けっか</rt></ruby>:<ruby>合格<rt>ごうかく</rt></ruby>」<br>*(Kết quả xét tuyển Inoue Lab: ĐỖ)* |
| Mai | (tiếng Việt) Anh ơi! |
| Đại | (giơ tay reo lên) <ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Đỗ!)* |
| Đại | (đọc tiếp) 「ようこそInoue Labへ。4<ruby>月<rt>がつ</rt></ruby>10<ruby>日<rt>か</rt></ruby><ruby>顔合<rt>かおあ</rt></ruby>わせ<ruby>会<rt>かい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>」<br>*(Hoan nghênh đến Inoue Lab. 10/4 sẽ có buổi gặp mặt)* |
| Mai | (tiếng Việt) Trời ơi mừng quá. Mau gọi báo Yamada-senpai đi anh. |

---

## Tình huống 12 — LINE Yamada-senpai · 1/4 9:10, báo senpai

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) <ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ご<ruby>報告<rt>ほうこく</rt></ruby>です!Inoue Lab <ruby>合格<rt>ごうかく</rt></ruby>いたしました!<ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<br>*(Anh Yamada, em báo cáo ạ! Em đỗ Inoue Lab rồi ạ! Nhờ anh đấy.)* |
| Yamada | (LINE) おお!<ruby>合格<rt>ごうかく</rt></ruby><ruby>確<rt>たし</rt></ruby>かに!ようこそラボへ! <ruby>4<rt>よん</rt></ruby><ruby>月<rt>がつ</rt></ruby>10<ruby>日<rt>か</rt></ruby>に<ruby>会<rt>あ</rt></ruby>おうな。<br>*(Ô! Đỗ chắc chắn rồi! Hoan nghênh vào lab! 10/4 gặp nhau nhé.)* |
| Đại | (LINE) はい!<ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>のアドバイスも<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Vâng ạ! Lời khuyên về đơn động cơ thật sự cứu em ạ.)* |
| Yamada | (LINE) サブテーマ<ruby>準備<rt>じゅんび</rt></ruby>しとくぞ。<ruby>覚悟<rt>かくご</rt></ruby>しろよ(笑)<br>*(Anh chuẩn bị sub-topic cho em rồi đấy. Chuẩn bị tinh thần nhé (cười))* |

---

## Tình huống 13 — Cohort LINE group · 1/4 12:00, 5 đứa báo kết quả

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) Inoue Lab <ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Inoue đỗ!)* |
| Yamato | (LINE) Suzuki Lab <ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Suzuki đỗ!)* |
| Aiko | (LINE) Watanabe Lab <ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Watanabe đỗ!)* |
| Lin Wei | (LINE, English) Sato Lab in!<br>*(Vào Sato Lab rồi!)* |
| Rajesh | (LINE) Murakami Cloud Lab confirmed!<br>*(Murakami Cloud đã chốt!)* |
| Đại | (LINE) <ruby>五<rt>ご</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>五<rt>いつ</rt></ruby>つの<ruby>研究室<rt>けんきゅうしつ</rt></ruby>!<ruby>来年<rt>らいねん</rt></ruby>は<ruby>共同<rt>きょうどう</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>のチャンスを<ruby>探<rt>さが</rt></ruby>そう!<br>*(5 đứa 5 lab! Năm sau tìm cơ hội nghiên cứu chung nhé!)* |
| Aiko | (LINE) お<ruby>祝<rt>いわ</rt></ruby>い<ruby>飲<rt>の</rt></ruby>み<ruby>会<rt>かい</rt></ruby>、<ruby>金曜<rt>きんよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>で!マイさん<ruby>体調<rt>たいちょう</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>な<ruby>範囲<rt>はんい</rt></ruby>で。<br>*(Tiệc mừng tối thứ 6 nhé! Trong giới hạn sức khoẻ Mai cho phép.)* |

---

## Tình huống 14 — Phòng Đại · 1/4 23:00, gọi bố mẹ HN

*Cảnh tiếng Việt — Đại gọi video bố mẹ báo kết quả.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Bố mẹ ơi, con đỗ Inoue Lab rồi ạ. NV1 luôn. |
| Mẹ Đại | (tiếng Việt) Trời ơi! Đại của mẹ giỏi quá. Cái lab NLP đấy phải không con? |
| Đại | (tiếng Việt) Vâng, NLP/AI ạ. Có cả nghiên cứu đa ngôn ngữ JP-VN nữa mẹ. |
| Bố Đại | (tiếng Việt) Có 20 đứa nộp, lấy 5 đứa nhỉ? |
| Đại | (tiếng Việt) Vâng. Con may là có Yamada-senpai làm mentor — nhớ anh đó là người dẫn con đi viện bảo tàng năm 1 không bố? |
| Bố Đại | (tiếng Việt) Nhớ. Anh tốt thật. Vậy là năm 3 con vào Inoue Lab rồi. Hana sinh giữa kỳ thực tập Cybozu. Cuộc đời con bước sang trang lớn rồi đấy. |
| Đại | (tiếng Việt) Vâng. Mà bố biết không, trong phỏng vấn con buột miệng nói tên dự án ấp ủ — "Hizashi" — tiếng Nhật là 陽射し, ánh nắng ấy bố. Thầy bảo "tên hay, tôi sẽ nhớ". |
| Mẹ Đại | (tiếng Việt) Tên đẹp con. Mai chọn tên Hana, con chọn tên Hizashi. Nhà mình đầy ánh sáng nhỉ. |

---

## Đọng lại chương 11

Đại học mẫu hội thoại đầy đủ chuỗi **lab tour → application → phỏng vấn → kết quả**: bắt đầu bằng **xin senpai info trước tour** (`〜について伺ってもよろしいでしょうか?`), **đặt câu hỏi với sensei trong tour** (`〜の具体例を伺ってもよろしいですか?`), **viết 志望理由書 với 3 lý do cụ thể** (`理由は三つございます・一つ目は〜`), **vào phỏng vấn cúi chào trang trọng** (`失礼いたします・本日はよろしくお願いいたします`), **trả lời 3 lý do với fact cụ thể không chung chung**, kết bằng **cam kết** (`全力で研究に取り組む所存です`). Nhận kết quả 合格 thì **báo senpai cảm ơn cụ thể** (`先輩のアドバイスのおかげです`). Trong phỏng vấn Inoue-sensei, tên dự án **Hizashi** lần đầu lộ diện — Đại "trượt miệng" nói tên ấp ủ từ năm 1.

> Từ vựng & mẫu câu chương này: 研究室・ラボツアー・志望・第一志望・志望理由書・選考・面接・合格・卒業研究・卒研・〜について伺ってもよろしいでしょうか・大変参考になりました・理由は三つございます・一つ目は・二つ目は・三つ目は・〜に強い関心を持っております・〜した経験がございます・〜と方向性が合致しております・全力で〜に取り組む所存です・失礼いたします・本日はよろしくお願いいたします・〜のおかげです・覚悟しろよ・顔合わせ会・トークナイゼーション・ファインチューニング・Cross-lingual Transfer・低資源言語・コアタイム・論文輪読

## Bí quyết chương

- **Phỏng vấn lab dùng cấu trúc 3 lý do**: bố cục `理由は三つございます・一つ目は〜・二つ目は〜・三つ目は〜` là khung chuẩn cho mọi 志望理由 ở Nhật (lab, intern, 就活).
- **Mỗi lý do PHẢI có fact cụ thể**: Yamada-senpai cảnh báo "chỉ nói 興味があります thì rớt". Fact của Đại: "vợ học JP nên làm app cho vợ" — đây là loại fact đắt giá vì không ai làm giả được.
- **Hỏi senpai trước khi tour**: anti-pattern là nhảy vào lab tour không biết gì. Pattern đúng là chào senpai trước, hỏi sensei tính cách + không khí lab + bí quyết application.
- **Trang phục phỏng vấn lab**: vest đen sơ mi trắng — như buổi 就活, không xuề xoà như đi học.
- **Câu "覚悟しろよ" của senpai**: thân mật nhưng nghiêm túc — báo trước sub-topic sẽ giao là khó.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 訪問 | ほうもん | PHỎNG VẤN (chữ Hán) | thăm viếng (≠ 面接 = phỏng vấn tuyển dụng) |
| 志望 | しぼう | CHÍ VỌNG | nguyện vọng |
| 志望理由書 | しぼうりゆうしょ | CHÍ VỌNG LÝ DO THƯ | đơn động cơ |
| 締切 | しめきり | THIẾT THIẾT | hạn chót |
| 厳しい | きびしい | NGHIÊM | khắt khe |
| 論理的 | ろんりてき | LUẬN LÝ ĐÍCH | logic |
| 必ず | かならず | TẤT | nhất định |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| 雰囲気 | ふんいき | PHẦN VI KHÍ | bầu không khí |
| 論文 | ろんぶん | LUẬN VĂN | bài báo khoa học |
| 輪読 | りんどく | LUÂN ĐỘC | đọc luân phiên |
| 参考 | さんこう | THAM KHẢO | tham khảo |
| 領域 | りょういき | LÃNH VỰC | lĩnh vực |
| 事前学習 | じぜんがくしゅう | SỰ TIỀN HỌC TẬP | huấn luyện trước (pre-training) |
| 多言語 | たげんご | ĐA NGÔN NGỮ | đa ngôn ngữ |
| 文章要約 | ぶんしょうようやく | VĂN CHƯƠNG YẾU ƯỚC | tóm tắt văn bản |
| 応用 | おうよう | ỨNG DỤNG | ứng dụng |
| 未開拓 | みかいたく | VỊ KHAI THÁC | chưa khai phá |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thử thách |
| 関心 | かんしん | QUAN TÂM | quan tâm |
| 知識 | ちしき | TRI THỨC | kiến thức |
| 移転 | いてん | DI CHUYỂN | chuyển giao |
| 任せる | まかせる | NHẬM | giao phó |
| 視覚障害 | しかくしょうがい | THỊ GIÁC CHƯỚNG NGẠI | khiếm thị |
| 共同研究 | きょうどうけんきゅう | CỘNG ĐỒNG NGHIÊN CỨU | nghiên cứu chung |
| 事前知識 | じぜんちしき | SỰ TIỀN TRI THỨC | kiến thức nền |
| 試作 | しさく | THÍ TÁC | làm thử (prototype) |
| 方向性 | ほうこうせい | PHƯƠNG HƯỚNG TÍNH | định hướng |
| 合致 | がっち | HỢP TRÍ | trùng khớp |
| 所存 | しょぞん | SỞ TỒN | dự định, ý định (khiêm) |
| 顔合わせ | かおあわせ | NHAN HỢP | gặp mặt |
| 覚悟 | かくご | GIÁC NGỘ | chuẩn bị tinh thần |
| 競う | きそう | CẠNH | cạnh tranh |
| 気まずい | きまずい | KHÍ | ngượng ngùng |
| 仲間 | なかま | TRỌNG GIAN | bạn đồng hành |
| 印刷 | いんさつ | ẤN LOÁT | in |
| 仮に | かりに | GIẢ | giả định |
| 融合 | ゆうごう | DUNG HỢP | kết hợp |
| 低資源言語 | ていしげんげんご | ĐÊ TÀI NGUYÊN NGÔN NGỮ | ngôn ngữ ít tài nguyên |
| コアタイム | コアタイム | — | giờ cốt lõi |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (822000012, 800000022, NULL, 'markdown_book', 'T12. Năm 2 khép lại — tổng kết với cohort, host family, gia đình HN', '# Sách sinh viên Đại học Osaka · T12. Năm 2 khép lại — tổng kết với cohort, host family, gia đình HN

> **Mục tiêu nhân vật:** Đại 23 tuổi, cuối năm 2 (4/2028). Học các mẫu hội thoại tiếng Nhật khi: **乾杯 mở tiệc nhóm** không cồn (vì Mai có thai), **báo cáo số liệu cá nhân năm học** với cohort (`年間の振り返り`), **trình bày kế hoạch năm 3 phức tạp** với cohort/host family, **報告会 với host family Tony+Yumi** (cập nhật ảnh siêu âm + tên Hana), **xác nhận giới tính bé với bác sĩ**, **chào tạm biệt giảng đường năm 2** chính thức.

---

## Bối cảnh

Tháng 4/2028, năm 2 khép lại. Đại 23 (vừa sinh nhật), Mai 23, thai 4 tháng (đã siêu âm xác nhận con gái — bé Hana, dự sinh 8/2028). Năm 2 stats: GPA 3.82, AtCoder Green 1080, 2 tuần thực tập Cybozu, dự án nhóm OsakaU CS Hub A+, đã đỗ Inoue Lab cho năm 3. Bữa tổng kết tại izakaya Toyonaka (cùng nơi T12 sách 21). Chương này tập trung các mẫu câu **乾杯 mở/đóng năm học, báo cáo `〜年の振り返り`, trình bày kế hoạch năm tới với host family và sensei, ありがとうございました chính thức khép năm**.

---

## Tình huống 1 — Bệnh viện Senri-chuo · 22/4 14:00, siêu âm xác nhận con gái

| Vai | Lời thoại |
|---|---|
| Bác sĩ | マイさん、<ruby>本日<rt>ほんじつ</rt></ruby>は16<ruby>週<rt>しゅう</rt></ruby>の<ruby>検診<rt>けんしん</rt></ruby>です。<ruby>性別<rt>せいべつ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>もできるかもしれません。<br>*(Chị Mai, hôm nay là khám tuần 16. Có thể xác nhận giới tính được rồi.)* |
| Mai | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, nhờ bác sĩ ạ.)* |
| Bác sĩ | (siêu âm) ...あ、<ruby>足<rt>あし</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いてくれましたね。<ruby>女<rt>おんな</rt></ruby>の<ruby>子<rt>こ</rt></ruby>です。<br>*(... À, em bé mở chân ra rồi. Là bé gái.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Thật ạ?)* |
| Bác sĩ | はい、ほぼ<ruby>確実<rt>かくじつ</rt></ruby>です。<br>*(Vâng, gần như chắc chắn.)* |
| Mai | (mắt rưng rưng, tiếng Việt) Anh ơi, bé gái thật rồi. |
| Đại | (tiếng Việt) Ừ em. Tên Hana đúng là tên dành cho con. |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、エコー<ruby>写真<rt>しゃしん</rt></ruby>をいただけますか? <ruby>家族<rt>かぞく</rt></ruby>に<ruby>見<rt>み</rt></ruby>せたいです。<br>*(Thưa bác sĩ, cho em xin ảnh siêu âm được không? Em muốn cho gia đình xem ạ.)* |
| Bác sĩ | もちろん、<ruby>3<rt>さん</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>印刷<rt>いんさつ</rt></ruby>しておきますね。<br>*(Tất nhiên, tôi in 3 tấm nhé.)* |

---

## Tình huống 2 — Phòng khách Tony+Yumi · 22/4 19:00, khoe ảnh siêu âm

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ユミさん、ご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>今日<rt>きょう</rt></ruby><ruby>性別<rt>せいべつ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Anh Tony, chị Yumi, em báo tin. Hôm nay đã biết giới tính rồi ạ.)* |
| Yumi | (Osaka-ben) どっちなん!<br>*(Bé nào!)* |
| Mai | <ruby>女<rt>おんな</rt></ruby>の<ruby>子<rt>こ</rt></ruby>です!<ruby>名前<rt>なまえ</rt></ruby>はハナ、<ruby>漢字<rt>かんじ</rt></ruby>は「<ruby>花<rt>はな</rt></ruby>」です。<br>*(Bé gái ạ! Tên là Hana, kanji là 花 ạ.)* |
| Tony | (Osaka-ben) <ruby>女<rt>おんな</rt></ruby>の<ruby>子<rt>こ</rt></ruby>か!ハナちゃん!<ruby>孫<rt>まご</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>や!<br>*(Bé gái à! Bé Hana! Cháu gái của tớ!)* |
| Yumi | (Osaka-ben, cầm ảnh siêu âm) これがハナちゃん?<ruby>顔<rt>かお</rt></ruby><ruby>分<rt>わ</rt></ruby>かるなあ!<ruby>鼻<rt>はな</rt></ruby>がダイさんに<ruby>似<rt>に</rt></ruby>とるで!<br>*(Đây là bé Hana à? Thấy mặt rồi! Mũi giống Đại đấy!)* |
| Đại | (cười) もう<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Đã nhìn ra rồi ạ?)* |
| Tony | (Osaka-ben) ユミ、<ruby>女<rt>おんな</rt></ruby>の<ruby>子<rt>こ</rt></ruby><ruby>用<rt>よう</rt></ruby>のベビー<ruby>服<rt>ふく</rt></ruby><ruby>買<rt>か</rt></ruby>いに<ruby>行<rt>い</rt></ruby>こうや。<ruby>俺<rt>おれ</rt></ruby>がおごるで!<br>*(Yumi, đi mua đồ baby cho bé gái nào. Tớ trả!)* |
| Yumi | (Osaka-ben) ほんま?やった!<br>*(Thật á? Tuyệt!)* |

---

## Tình huống 3 — Phòng Đại · 22/4 22:00, gọi video bố mẹ HN khoe ảnh

*Cảnh tiếng Việt — Đại+Mai chụp ảnh siêu âm trước camera.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi, bố ơi, nhìn này. Bé gái ạ. |
| Mẹ Đại | (tiếng Việt) Trời ơi, cháu gái của bà rồi! Mẹ thấy mặt cháu rồi đây! Đẹp quá! |
| Bố Đại | (tiếng Việt) Hana chính thức rồi. Hoa nhà mình. |
| Mai | (tiếng Việt) Vâng mẹ. Tony với Yumi nãy mừng lắm, ông Tony bảo đi mua đồ cho cháu, ông trả. |
| Mẹ Đại | (tiếng Việt) Chu đáo quá. Mẹ gửi sang cho Mai ít bột nghệ với khô gà thôi. Mai có muốn ăn gì không con? |
| Mai | (tiếng Việt) Mẹ ơi, con thèm nem rán Hà Nội kinh khủng. |
| Mẹ Đại | (tiếng Việt) Mẹ làm gửi đông lạnh sang nhé. Tuần sau có người quen sang Osaka. |
| Đại | (tiếng Việt) Dạ cảm ơn mẹ. Bố ơi, năm 3 con dự kiến lab + Cybozu + sinh con — dày đặc lắm. Tuần sau tiệc khép năm 2 với nhóm, con sẽ trình bày kế hoạch nhóm. |
| Bố Đại | (tiếng Việt) Ừ con. Trình bày rõ ràng cho mọi người biết, để được hỗ trợ. |

---

## Tình huống 4 — Izakaya Toyonaka · 25/4 19:00, 乾杯 mở tiệc khép năm 2

*Cùng izakaya với T12 sách 21. 5 đứa + Mai. Mai gọi nước cam, mọi người gọi soft drink + 1 beer cho ai muốn.*

| Vai | Lời thoại |
|---|---|
| Yamato | (đứng lên) <ruby>本日<rt>ほんじつ</rt></ruby>はOSU CS3 コホート2<ruby>年生<rt>ねんせい</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>う<ruby>会<rt>かい</rt></ruby>です。マイさんに<ruby>合<rt>あ</rt></ruby>わせて、<ruby>全員<rt>ぜんいん</rt></ruby>ソフトドリンクで!<br>*(Hôm nay là buổi mừng kết thúc năm 2 của cohort OSU CS3. Theo Mai, cả nhóm dùng soft drink!)* |
| Aiko | マイさん、<ruby>体調<rt>たいちょう</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<ruby>椅子<rt>いす</rt></ruby>クッション<ruby>追加<rt>ついか</rt></ruby>もらおうか?<br>*(Mai ơi, sức khoẻ ổn không? Có cần thêm gối ghế không?)* |
| Mai | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です、ありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>呼<rt>よ</rt></ruby>んでくださってありがとうございます。<br>*(Em ổn ạ, cảm ơn mọi người. Hôm nay cảm ơn đã mời em ạ.)* |
| Yamato | じゃあ、<ruby>乾杯<rt>かんぱい</rt></ruby>!<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>とハナちゃんの<ruby>性別<rt>せいべつ</rt></ruby><ruby>判明<rt>はんめい</rt></ruby>に!<br>*(Vậy nào, cạn ly! Mừng kết thúc năm 2 và biết giới tính bé Hana!)* |
| Cả nhóm | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Lin Wei | (English, raising cup) To the cohort surviving year 2!<br>*(Mừng cohort sống sót năm 2!)* |

---

## Tình huống 5 — Cùng izakaya · 25/4 19:30, mỗi đứa báo cáo số liệu năm 2

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ろうよ。<ruby>一<rt>ひと</rt></ruby>り1<ruby>分<rt>ぷん</rt></ruby>ずつ、<ruby>年間<rt>ねんかん</rt></ruby>サマリー。<br>*(Cùng nhìn lại đi. Mỗi người 1 phút tổng kết năm.)* |
| Yamato | じゃあ<ruby>俺<rt>おれ</rt></ruby>から。GPA 3.78、AtCoder 1280 (Green の<ruby>最後<rt>さいご</rt></ruby>でCyanへ<ruby>突入<rt>とつにゅう</rt></ruby><ruby>寸前<rt>すんぜん</rt></ruby>)、Suzuki Lab<ruby>合格<rt>ごうかく</rt></ruby>、ICPC<ruby>地区<rt>ちく</rt></ruby><ruby>予選<rt>よせん</rt></ruby><ruby>本戦<rt>ほんせん</rt></ruby><ruby>進出<rt>しんしゅつ</rt></ruby>。<br>*(Tớ trước. GPA 3.78, AtCoder 1280 (cuối Green sát Cyan), đỗ Suzuki Lab, ICPC dự loại khu vực vào vòng chính.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>:GPA 3.70、Watanabe Lab<ruby>合格<rt>ごうかく</rt></ruby>、Awwwards 2<ruby>賞<rt>しょう</rt></ruby>、Figma Pro <ruby>認定<rt>にんてい</rt></ruby>。<br>*(Tớ: GPA 3.70, đỗ Watanabe Lab, 2 giải Awwwards, chứng chỉ Figma Pro.)* |
| Lin Wei | (English) GPA 4.00 top 1 again, AtCoder Cyan 1580, Sato Lab in, Mercari summer intern 8 weeks confirmed.<br>*(GPA 4.00 top 1 lần nữa, AtCoder Cyan 1580, vào Sato Lab, đã chốt 8 tuần thực tập Mercari hè.)* |
| Rajesh | GPA 3.55, AWS Solutions Architect Associate cert, Murakami Lab.<br>*(GPA 3.55, chứng chỉ AWS Solutions Architect Associate, Murakami Lab.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>:GPA 3.82(<ruby>学科<rt>がっか</rt></ruby>top 7/101)、AtCoder 1080、Cybozu 2<ruby>週間<rt>しゅうかん</rt></ruby>インターン、OsakaU CS Hub A+、Inoue Lab<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>個人<rt>こじん</rt></ruby><ruby>面<rt>めん</rt></ruby>では、マイが<ruby>来日<rt>らいにち</rt></ruby>+ハナ<ruby>誕生<rt>たんじょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Tớ: GPA 3.82 (top 7/101 khoa), AtCoder 1080, thực tập Cybozu 2 tuần, OsakaU CS Hub A+, đỗ Inoue Lab. Cá nhân: Mai sang Nhật + Hana sắp ra đời.)* |
| Aiko | ダイの<ruby>個人<rt>こじん</rt></ruby><ruby>面<rt>めん</rt></ruby>、<ruby>一<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>濃<rt>こ</rt></ruby>いんじゃない?<br>*(Đời tư Đại đặc nhất luôn nhỉ?)* |
| Đại | (cười) <ruby>確<rt>たし</rt></ruby>かに。<br>*(Đúng thật.)* |

---

## Tình huống 6 — Cùng izakaya · 25/4 20:15, Đại trình bày kế hoạch năm 3

*Đại mở Notion trên iPad, share màn hình ra TV của izakaya (phòng riêng có TV).*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>俺<rt>おれ</rt></ruby>の<ruby>来年度<rt>らいねんど</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>、<ruby>共有<rt>きょうゆう</rt></ruby>させてください。<ruby>濃厚<rt>のうこう</rt></ruby>です。<br>*(Cho tớ share kế hoạch năm tới. Đậm đặc đấy.)* |
| Đại | 4<ruby>月<rt>がつ</rt></ruby>10<ruby>日<rt>か</rt></ruby>:Inoue Lab <ruby>顔合<rt>かおあ</rt></ruby>わせ。Yamada<ruby>先輩<rt>せんぱい</rt></ruby>がメンター。<br>*(10/4: gặp mặt Inoue Lab. Mentor là anh Yamada.)* |
| Đại | 4-5<ruby>月<rt>がつ</rt></ruby>:PyTorch + Transformer + BERTの<ruby>基礎<rt>きそ</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>。<br>*(4-5: học cơ bản PyTorch + Transformer + BERT.)* |
| Đại | 6-9<ruby>月<rt>がつ</rt></ruby>:Cybozu<ruby>長期<rt>ちょうき</rt></ruby>インターン3ヶ<ruby>月<rt>げつ</rt></ruby>。<ruby>担当<rt>たんとう</rt></ruby>はRAGプロジェクト。<br>*(6-9: thực tập dài Cybozu 3 tháng. Phụ trách dự án RAG.)* |
| Đại | 8<ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>め:ハナ<ruby>誕生<rt>たんじょう</rt></ruby>。1<ruby>週間<rt>しゅうかん</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>+2<ruby>週間<rt>しゅうかん</rt></ruby>リモート、Cybozu HR と<ruby>合意<rt>ごうい</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(Đầu 8: Hana sinh. Đã thoả thuận với Cybozu HR 1 tuần nghỉ + 2 tuần remote.)* |
| Đại | 9-12<ruby>月<rt>がつ</rt></ruby>:ラボ<ruby>研究<rt>けんきゅう</rt></ruby>+<ruby>卒研<rt>そつけん</rt></ruby>テーマ<ruby>絞<rt>しぼ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>み。<br>*(9-12: nghiên cứu lab + chốt đề tài 卒研.)* |
| Đại | 1-3<ruby>月<rt>がつ</rt></ruby>:Hizashi v0.1 <ruby>試作<rt>しさく</rt></ruby>+ <ruby>就活<rt>しゅうかつ</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<br>*(1-3: prototype Hizashi v0.1 + bắt đầu chuẩn bị 就活.)* |
| Yamato | <ruby>濃<rt>こ</rt></ruby>いな!<ruby>体<rt>からだ</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か?<br>*(Đậm đặc thật! Sức khoẻ chịu nổi không?)* |
| Đại | (gật) <ruby>無理<rt>むり</rt></ruby>はしません。<ruby>家族<rt>かぞく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>です。<br>*(Tớ không ép quá. Ưu tiên gia đình.)* |
| Aiko | マイさんとハナちゃん、<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>はみんなで<ruby>支<rt>ささ</rt></ruby>えるよ。<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。<br>*(Mai và Hana, lúc kẹt cả nhóm hỗ trợ. Đừng ngại.)* |
| Lin Wei | (English) Brother, you got cohort backup. Anytime.<br>*(Anh em, có cohort hậu thuẫn. Bất cứ khi nào.)* |
| Đại | みんな、<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Mọi người, thật sự cảm ơn.)* |

---

## Tình huống 7 — Cùng izakaya · 25/4 21:00, hỏi senpai có hiểu chưa khi nghe Lin Wei

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) By the way Đại, for RAG at Cybozu, are you doing dense retrieval or hybrid?<br>*(À mà Đại, RAG ở Cybozu cậu làm dense retrieval hay hybrid?)* |
| Đại | え、もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。「dense retrieval」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>?<br>*(Khoan, cho tớ xác nhận lại. "Dense retrieval" cụ thể là gì?)* |
| Lin Wei | (English) Vector embedding similarity search, versus keyword BM25 search. Hybrid combines both.<br>*(Search tương đồng vector embedding, đối lại với BM25 keyword search. Hybrid kết hợp cả hai.)* |
| Đại | なるほど。Cybozu<ruby>側<rt>がわ</rt></ruby>はまだ<ruby>仕様<rt>しよう</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>していないけど、ハイブリッドの<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いと<ruby>聞<rt>き</rt></ruby>いている。<br>*(Ra vậy. Phía Cybozu chưa chốt spec nhưng tớ nghe khả năng cao là hybrid.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>も<ruby>今<rt>いま</rt></ruby><ruby>知<rt>し</rt></ruby>った。ありがとうLin Wei。<br>*(Tớ cũng vừa mới biết. Cảm ơn Lin Wei.)* |

---

## Tình huống 8 — Cùng izakaya · 25/4 22:30, Mai phát biểu cảm ơn cohort

| Vai | Lời thoại |
|---|---|
| Mai | (đứng lên, hơi run) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しよろしいですか?<br>*(Mọi người cho em chút được không ạ?)* |
| Cả nhóm | どうぞ!<br>*(Cứ tự nhiên!)* |
| Mai | <ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>て1<ruby>年<rt>ねん</rt></ruby><ruby>経<rt>た</rt></ruby>ちました。<ruby>右<rt>みぎ</rt></ruby>も<ruby>左<rt>ひだり</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からなかった<ruby>私<rt>わたし</rt></ruby>を、<ruby>皆<rt>みな</rt></ruby>さんが<ruby>家族<rt>かぞく</rt></ruby>のように<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れてくださいました。<br>*(Em đến Nhật được 1 năm rồi. Em vốn không biết gì, mà mọi người đã đón em như gia đình.)* |
| Mai | これから<ruby>子育<rt>こそだ</rt></ruby>てが<ruby>始<rt>はじ</rt></ruby>まりますが、ダイをよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Sắp tới em bắt đầu nuôi con, xin mọi người tiếp tục lo cho Đại giúp em ạ.)* |
| Aiko | (mắt long lanh) マイさん…<br>*(Mai ơi...)* |
| Yamato | お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>だよ!ハナちゃんが<ruby>生<rt>う</rt></ruby>まれたら、おじさんおばさんが5<ruby>人<rt>にん</rt></ruby>もできるんだ!<br>*(Đôi bên cùng có lợi mà! Bé Hana sinh xong, có 5 chú cô luôn đấy!)* |
| Mai | (cúi đầu) ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 9 — Bữa tối thứ 6 Tony+Yumi · 27/4 19:30, hứa duy trì bữa tối hằng tuần

| Vai | Lời thoại |
|---|---|
| Yumi | (Osaka-ben, dọn bàn) マイちゃん、4ヶ<ruby>月<rt>げつ</rt></ruby>でもうお<ruby>腹<rt>なか</rt></ruby><ruby>大<rt>おお</rt></ruby>きいなあ!<br>*(Mai ơi! Mới 4 tháng mà bụng to rồi!)* |
| Mai | はい、<ruby>急<rt>きゅう</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きくなりました。<br>*(Vâng, bụng to ra nhanh ạ.)* |
| Tony | (Osaka-ben) <ruby>来年度<rt>らいねんど</rt></ruby>はダイも<ruby>忙<rt>いそが</rt></ruby>しいやろ?Cybozu と<ruby>子育<rt>こそだ</rt></ruby>てと<ruby>研究室<rt>けんきゅうしつ</rt></ruby>と。<br>*(Năm tới Đại cũng bận lắm nhỉ? Cybozu rồi nuôi con rồi lab.)* |
| Đại | はい、<ruby>正直<rt>しょうじき</rt></ruby>キツいです。でも、トニーさん、ユミさん、お<ruby>願<rt>ねが</rt></ruby>いがあります。<br>*(Vâng, thật sự nặng. Nhưng anh Tony, chị Yumi, em có một việc xin nhờ.)* |
| Tony | (Osaka-ben) <ruby>何<rt>なん</rt></ruby>や?<br>*(Gì thế?)* |
| Đại | <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>の<ruby>夕食<rt>ゆうしょく</rt></ruby>、<ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>続<rt>つづ</rt></ruby>けさせていただけませんか? <ruby>俺<rt>おれ</rt></ruby>たちにとって<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>時間<rt>じかん</rt></ruby>でして。<br>*(Bữa tối thứ 6 hằng tuần, năm tới em xin được tiếp tục được không ạ? Là thời gian rất quan trọng với tụi em ạ.)* |
| Yumi | (Osaka-ben, cười toét) <ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>やん!こっちこそお<ruby>願<rt>ねが</rt></ruby>いやで!<br>*(Đương nhiên rồi! Phải nói là tớ xin nhờ tụi em chứ!)* |
| Tony | (Osaka-ben) ハナちゃんが<ruby>生<rt>う</rt></ruby>まれたら、ベビーカーで<ruby>連<rt>つ</rt></ruby>れて<ruby>来<rt>こ</rt></ruby>いや!<br>*(Hana sinh ra, đẩy xe đẩy mang tới luôn nhé!)* |
| Đại | (cúi đầu) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Em cảm ơn anh chị thật ạ.)* |

---

## Tình huống 10 — Giảng đường C-204 · 28/4 17:00, chào tạm biệt Watanabe-sensei

*Lớp プロジェクト演習 đã hoàn tất tháng trước. Đại đến văn phòng Watanabe-sensei chào.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Thầy Watanabe, em xin phép ạ.)* |
| Watanabe | グエンさん、どうぞ。<ruby>来年度<rt>らいねんど</rt></ruby>はInoue Labでしたね?<br>*(Em Nguyễn, mời vào. Năm sau em vào Inoue Lab phải không?)* |
| Đại | はい。<ruby>本日<rt>ほんじつ</rt></ruby>は1<ruby>年間<rt>ねんかん</rt></ruby>のお<ruby>礼<rt>れい</rt></ruby>をお<ruby>伝<rt>つた</rt></ruby>えに<ruby>参<rt>まい</rt></ruby>りました。プロジェクト<ruby>演習<rt>えんしゅう</rt></ruby>でご<ruby>指導<rt>しどう</rt></ruby>いただき、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Vâng. Hôm nay em đến để gửi lời cảm ơn 1 năm qua ạ. Cảm ơn thầy đã chỉ dẫn trong môn Project演習 ạ.)* |
| Watanabe | こちらこそ。OsakaU CS Hub、いまも<ruby>稼働<rt>かどう</rt></ruby>しているそうですね?<br>*(Tôi cũng vậy. OsakaU CS Hub bây giờ vẫn chạy đúng không?)* |
| Đại | はい、4<ruby>月<rt>がつ</rt></ruby>26<ruby>日<rt>にち</rt></ruby><ruby>現在<rt>げんざい</rt></ruby>、92<ruby>名<rt>めい</rt></ruby>のアクティブユーザーがおります。<br>*(Vâng, đến 26/4 hiện tại có 92 active user ạ.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>運用<rt>うんよう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けるのが<ruby>一<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいんです。Inoue Labでも<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Tuyệt. Duy trì vận hành là khó nhất. Sang Inoue Lab cố lên nhé.)* |
| Đại | はい、ありがとうございました。<br>*(Vâng, em cảm ơn thầy ạ.)* |

---

## Tình huống 11 — Lab Inoue · 4/10 10:00 (đầu năm 3), Đại lần đầu vào lab chính thức

*Buổi 顔合わせ với Yamada-senpai và Inoue-sensei. Trước cửa lab.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上先生<rt>いのうえせんせい</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>からお<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>大学<rt>だいがく</rt></ruby>3<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイです。<br>*(Thầy Inoue, từ hôm nay em xin được thầy giúp đỡ ạ. Em là Nguyễn Văn Đại năm 3 đại học.)* |
| Inoue | ようこそInoue Labへ。<ruby>顔合<rt>かおあ</rt></ruby>わせの<ruby>後<rt>あと</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>がオンボーディングします。<br>*(Hoan nghênh đến Inoue Lab. Sau buổi gặp mặt, Yamada sẽ onboarding cho em.)* |
| Yamada | おう、ダイ!<ruby>机<rt>つくえ</rt></ruby>は<ruby>奥<rt>おく</rt></ruby>の<ruby>角<rt>かど</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>の<ruby>隣<rt>となり</rt></ruby>や。<br>*(Ô, Đại! Bàn của em ở góc trong. Cạnh bàn anh.)* |
| Đại | はい!よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng ạ! Mong anh giúp đỡ ạ.)* |
| Inoue | グエンさん、<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>勉強会<rt>べんきょうかい</rt></ruby>でTransformerの<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>してもらえますか? <ruby>原典<rt>げんてん</rt></ruby>「Attention Is All You Need」です。<br>*(Em Nguyễn, em phát biểu paper Transformer ở seminar tháng sau được không? Paper gốc "Attention Is All You Need" ấy.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Vâng, em nhất định sẽ chuẩn bị ạ.)* |

---

## Tình huống 12 — Phòng Đại · 30/4 23:00, gọi Mai (cảnh tiếng Việt khép chương)

*Mai đã ngủ sớm. Đại gọi LINE bố mẹ HN trước khi ngủ — tổng kết năm 2.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi, hôm nay là 30/4. Tròn 24 tháng từ ngày con sang Nhật. |
| Mẹ Đại | (tiếng Việt) Trời, 2 năm rồi á? Mẹ tưởng mới có hôm trước. |
| Đại | (tiếng Việt) Vâng. Hai năm thay đổi nhiều mẹ ạ. GPA con 3.82, đỗ Inoue Lab, có thực tập Cybozu dài năm tới. Mà quan trọng nhất là Mai sang, sắp có Hana. |
| Bố Đại | (tiếng Việt) Năm 3 con kế hoạch dày đặc đúng không? |
| Đại | (tiếng Việt) Vâng bố. Tháng 4 vào Inoue Lab + học PyTorch + Transformer. Tháng 6-9 thực tập Cybozu RAG project — con vừa học từ Lin Wei khái niệm "dense retrieval vs hybrid" — kiểu search dùng vector embedding với BM25 ấy bố. Tháng 8 Hana sinh, Cybozu cho 1 tuần nghỉ + 2 tuần remote. Cuối năm bắt đầu prototype Hizashi. |
| Mẹ Đại | (tiếng Việt) Trời ơi, mẹ nghe mà chóng mặt. Mai ngủ rồi à con? |
| Đại | (tiếng Việt) Vâng mẹ. Em đang nghén nhẹ, hơi mệt. Em đặt tay con lên bụng cảm nhận bé đạp — cảm xúc lạ lắm mẹ. |
| Bố Đại | (tiếng Việt) Con 23 rồi nhỉ. Hai năm nữa tốt nghiệp tháng 3/2030. Đến lúc đó Hana được 1 tuổi rưỡi. |
| Đại | (tiếng Việt) Vâng. Bố ơi, con biết ơn bố mẹ cho con cơ hội sang đây. Hai năm qua dài và đầy chuyện, mà con thấy đi đúng hướng. |
| Mẹ Đại | (tiếng Việt) Mẹ tự hào về con với Mai. Ngủ đi con, mai gọi tiếp nhé. |
| Đại | (tiếng Việt) Vâng. Bố mẹ ngủ ngon. |

---

## Đọng lại chương 12

Đại khép năm 2 bằng chuỗi mẫu câu **tổng kết và bàn giao**: tại izakaya cohort dùng **`乾杯・年間の振り返り・〜計画を共有させてください`** chia số liệu cá nhân và trình bày kế hoạch năm 3; Mai phát biểu cảm ơn cohort bằng mẫu **`〜をよろしくお願いいたします`** — gửi gắm chồng cho bạn. Với host family dùng **`お願いがあります・〜させていただけませんか?`** xin duy trì bữa tối thứ 6. Với Watanabe-sensei dùng **`1年間のお礼をお伝えに参りました・ご指導いただきありがとうございました`** chào chính thức. Đầu năm 3, lần đầu vào Inoue Lab chính thức với **`本日からお世話になります`** và nhận task phát biểu paper Transformer. Cuối chương Đại gọi bố mẹ HN bằng tiếng Việt tổng kết 24 tháng, ôn lại khái niệm mới học từ Lin Wei (dense retrieval vs hybrid).

> Từ vựng & mẫu câu chương này: 振り返り・年間サマリー・〜計画を共有させてください・濃厚・家族優先・遠慮しないで・お互い様・もう一度確認させてください・〜というのは具体的に何・お礼をお伝えに参りました・ご指導いただきありがとうございました・お願いがあります・〜させていただけませんか・本日からお世話になります・必ず準備いたします・乾杯・ソフトドリンク・性別判明・エコー写真・孫娘・dense retrieval・hybrid search・RAG・Transformer・Attention Is All You Need・顔合わせ・オンボーディング・勉強会・顔合わせ会

## Bí quyết chương

- **乾杯 trong hoàn cảnh có người không uống**: chuyển sang ソフトドリンク toàn nhóm là cách thể hiện tôn trọng. Người Nhật làm rất tự nhiên không gây áp lực.
- **`〜計画を共有させてください` mở bài trình bày kế hoạch**: dùng được cho cohort, sensei, gia đình — register linh hoạt.
- **`お互い様` của Yamato**: câu thần kỳ khi ai đó cảm ơn — "đôi bên cùng có lợi/cùng giúp nhau" — giảm nặng nề.
- **`お世話になります` vs `お世話になりました`**: hiện tại progressive (bắt đầu quan hệ) vs quá khứ (kết thúc/chào). Đại dùng cả hai trong chương — 渡辺先生 quá khứ vs 井上先生 hiện tại.
- **Chuỗi báo cáo số liệu cohort 1 phút/người**: bố cục GPA → contest/cert → lab → bonus cá nhân. Format chuẩn.
- **Bé Hana giới tính được xác nhận tuần 16**: chuẩn y khoa Nhật — siêu âm tuần 16-20 thường đã thấy giới tính.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 性別 | せいべつ | TÍNH BIỆT | giới tính |
| 確実 | かくじつ | XÁC THỰC | chắc chắn |
| 家族 | かぞく | GIA TỘC | gia đình |
| 孫娘 | まごむすめ | TÔN NƯƠNG | cháu gái |
| 鼻 | はな | TỴ | mũi |
| 体調 | たいちょう | THỂ ĐIỀU | tình trạng sức khoẻ |
| 終了 | しゅうりょう | CHUNG LIỄU | kết thúc |
| 呼ぶ | よぶ | HÔ | mời, gọi |
| 振り返り | ふりかえり | CHẤN PHẢN | nhìn lại, tổng kết |
| 年間 | ねんかん | NIÊN GIAN | trong năm |
| 突入 | とつにゅう | ĐỘT NHẬP | đột nhập, bước vào |
| 寸前 | すんぜん | THỐN TIỀN | sát ngay trước |
| 予選 | よせん | DỰ TUYỂN | vòng loại |
| 本戦 | ほんせん | BẢN CHIẾN | vòng chính |
| 進出 | しんしゅつ | TIẾN XUẤT | tiến vào |
| 認定 | にんてい | NHẬN ĐỊNH | chứng nhận |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 濃厚 | のうこう | NỒNG HẬU | đậm đặc |
| 誕生 | たんじょう | ĐẢN SINH | sinh ra |
| 合意 | ごうい | HỢP Ý | thoả thuận |
| 絞り込む | しぼりこむ | — | chốt, thu hẹp |
| 遠慮 | えんりょ | VIỄN LỰ | ngại ngùng, e dè |
| 受け入れる | うけいれる | THỤ NHẬP | đón nhận |
| 子育て | こそだて | TỬ DỤC | nuôi con |
| お互い様 | おたがいさま | HỖ DẠNG | đôi bên cùng có lợi |
| 大切 | たいせつ | ĐẠI THIẾT | quan trọng |
| 当たり前 | あたりまえ | ĐƯƠNG TIỀN | đương nhiên |
| 稼働 | かどう | GIÁ ĐỘNG | vận hành |
| 運用 | うんよう | VẬN DỤNG | vận hành, duy trì |
| 原典 | げんてん | NGUYÊN ĐIỂN | bản gốc, paper gốc |
| 経つ | たつ | KINH | trôi qua |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
