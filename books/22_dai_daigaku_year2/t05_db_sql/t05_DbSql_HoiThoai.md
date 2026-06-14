# Sách sinh viên Đại học Osaka · T5. DB入門 — PostgreSQL, ER diagram, JOIN

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
| 囲む | かこむ | — | bọc, bao quanh |
