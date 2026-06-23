-- Hizashi LITE book SQL — Thực Kensetsu Senior 2
-- curriculum_id = 800000037  (book_seq=37)
-- nguồn: books/37_thuc_kensetsu_senior2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000037, 'N3', 'markdown_book', 'Xây dựng', 'Thực Kensetsu Senior 2', 'Bộ sách Hizashi — Thực Kensetsu Senior 2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000001, 800000037, NULL, 'markdown_book', 'T1. Học khoá đào tạo đốc công an toàn vệ sinh (職長・安全衛生責任者教育)', '# Sách kỹ năng đặc định xây dựng · T1. Học khoá đào tạo đốc công an toàn vệ sinh (職長・安全衛生責任者教育)

> **Mục tiêu nhân vật:** Thức (24-25 tuổi, Hà Tĩnh, 特定技能1号 建設, nghề とび) bước vào năm mới 4/2030, được 谷川親方 cử đi học khoá 職長・安全衛生責任者教育 2 ngày (14 giờ). Học các mẫu hội thoại tiếng Nhật nghiệp vụ ở vai chuẩn bị lên 職長: đăng ký khoá học, nghe giảng viên, hỏi đáp về vai trò đốc công, báo cáo親方 sau khoá.

---

## Bối cảnh

Đầu tháng 4 năm 2030. Thức đã làm とび ở công ty 谷川組 được vài năm, từ thợ lên 班長 (tổ trưởng). Năm nay 谷川親方 quyết định bồi dưỡng Thức lên 職長 (đốc công), bước đầu là cử đi khoá đào tạo 職長・安全衛生責任者教育 do hiệp hội tổ chức — bắt buộc theo Luật An toàn Vệ sinh Lao động trước khi đảm nhiệm vai trò chỉ huy hiện trường. Tiếng Nhật của Thức đang ở mức N3, hướng tới N2. Chương này tập trung mẫu câu khi tiếp nhận nhiệm vụ mới, nghe giảng, hỏi giảng viên, và báo cáo cấp trên.

---

## Tình huống 1 — Văn phòng 谷川組 · 8:00, 親方 giao nhiệm vụ đi học

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてもらう。<br>*(Thức, từ tuần sau cậu đi học khoá đào tạo đốc công.)* |
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>、ですか。<ruby>私<rt>わたし</rt></ruby>がですか?<br>*(Đào tạo đốc công ạ. Là em ạ?)* |
| Tanigawa | そうだ。<ruby>班長<rt>はんちょう</rt></ruby>として<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いてきた。<ruby>次<rt>つぎ</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>をまとめる<ruby>立場<rt>たちば</rt></ruby>だ。<br>*(Đúng vậy. Cậu đã làm tổ trưởng tốt rồi. Tiếp theo là vị trí điều hành cả công trường.)* |
| Thức | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。どのような<ruby>研修<rt>けんしゅう</rt></ruby>ですか?<br>*(Cảm ơn anh. Em sẽ cố gắng. Đó là khoá tập huấn thế nào ạ?)* |
| Tanigawa | <ruby>二日間<rt>ふつかかん</rt></ruby>、<ruby>合<rt>あ</rt></ruby>わせて<ruby>14<rt>じゅうよ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>だ。<ruby>安全<rt>あんぜん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>取<rt>と</rt></ruby>れる。<br>*(Hai ngày, tổng cộng 14 giờ. Lấy luôn cả tư cách phụ trách an toàn vệ sinh.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>準備<rt>じゅんび</rt></ruby>しておきます。<br>*(Vâng, em rõ rồi ạ. Em sẽ chuẩn bị trước.)* |
| Tanigawa | <ruby>受講<rt>じゅこう</rt></ruby><ruby>料<rt>りょう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>だ。しっかり<ruby>学<rt>まな</rt></ruby>んでこい。<br>*(Học phí công ty chịu. Cố mà học cho ra hồn.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>身<rt>み</rt></ruby>につけてきます。<br>*(Vâng, em nhất định sẽ học cho thành thạo.)* |

---

## Tình huống 2 — Sảnh hội trường đào tạo · 8:40, làm thủ tục đăng ký

| Vai | Lời thoại |
|---|---|
| Lễ tân | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>の<ruby>受講者<rt>じゅこうしゃ</rt></ruby><ruby>様<rt>さま</rt></ruby>ですか?<br>*(Chào buổi sáng. Anh là học viên khoá đào tạo đốc công hôm nay phải không ạ?)* |
| Thức | はい、<ruby>谷川組<rt>たにがわぐみ</rt></ruby>のトゥックと<ruby>申<rt>もう</rt></ruby>します。<ruby>受講<rt>じゅこう</rt></ruby>の<ruby>申込<rt>もうしこ</rt></ruby>みをしてあります。<br>*(Vâng, tôi tên Thức, công ty Tanigawa-gumi. Tôi đã đăng ký dự khoá ạ.)* |
| Lễ tân | <ruby>確認<rt>かくにん</rt></ruby>いたします。…はい、ございました。こちらの<ruby>受講<rt>じゅこう</rt></ruby><ruby>票<rt>ひょう</rt></ruby>にお<ruby>名前<rt>なまえ</rt></ruby>をご<ruby>記入<rt>きにゅう</rt></ruby>ください。<br>*(Tôi xác nhận giúp anh. ...Vâng, có ạ. Anh điền tên vào phiếu dự khoá này.)* |
| Thức | はい。<ruby>身分<rt>みぶん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Vâng. Có cần giấy tờ tuỳ thân không ạ?)* |
| Lễ tân | はい、<ruby>本人<rt>ほんにん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>のため、<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Vâng, để xác nhận danh tính, cho tôi xem thẻ lưu trú.)* |
| Thức | どうぞ。<ruby>修了<rt>しゅうりょう</rt></ruby><ruby>証<rt>しょう</rt></ruby>は<ruby>二日目<rt>ふつかめ</rt></ruby>にいただけますか?<br>*(Đây ạ. Giấy chứng nhận hoàn thành tôi nhận vào ngày thứ hai được không ạ?)* |
| Lễ tân | はい、<ruby>全<rt>すべ</rt></ruby>てのカリキュラムを<ruby>修了<rt>しゅうりょう</rt></ruby>された<ruby>後<rt>あと</rt></ruby>、お<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Vâng, sau khi anh hoàn thành toàn bộ chương trình, chúng tôi sẽ trao.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Tôi rõ rồi ạ. Cảm ơn chị.)* |

---

## Tình huống 3 — Phòng học · 9:00, giảng viên mở đầu về vai trò 職長

| Vai | Lời thoại |
|---|---|
| Giảng viên | みなさん、<ruby>職長<rt>しょくちょう</rt></ruby>とは<ruby>現場<rt>げんば</rt></ruby>で<ruby>作業員<rt>さぎょういん</rt></ruby>を<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>指揮<rt>しき</rt></ruby><ruby>監督<rt>かんとく</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>のことです。<br>*(Các anh, đốc công là người trực tiếp chỉ huy giám sát công nhân tại hiện trường.)* |
| Giảng viên | <ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>は<ruby>大<rt>おお</rt></ruby>きく<ruby>分<rt>わ</rt></ruby>けて<ruby>五<rt>いつ</rt></ruby>つあります。まず「<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>の<ruby>決定<rt>けってい</rt></ruby>」です。<br>*(Vai trò của đốc công chia lớn thành năm. Đầu tiên là "quyết định trình tự thi công".)* |
| Thức | (giơ tay) すみません、「<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>の<ruby>決定<rt>けってい</rt></ruby>」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういうことですか?<br>*(Xin lỗi, "quyết định trình tự thi công" cụ thể là thế nào ạ?)* |
| Giảng viên | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。どの<ruby>作業<rt>さぎょう</rt></ruby>を、どの<ruby>順番<rt>じゅんばん</rt></ruby>で、<ruby>誰<rt>だれ</rt></ruby>がやるかを<ruby>決<rt>き</rt></ruby>めることです。<br>*(Câu hỏi hay. Là quyết định việc nào, làm theo thứ tự nào, ai làm.)* |
| Thức | なるほど。<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えて<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>決<rt>き</rt></ruby>める、ということですね。<br>*(Ra vậy. Tức là quyết định thứ tự có cân nhắc an toàn ạ.)* |
| Giảng viên | そのとおりです。<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>が<ruby>作業員<rt>さぎょういん</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Đúng vậy. Phán đoán của đốc công bảo vệ tính mạng công nhân.)* |
| Thức | はい、しっかりメモします。<br>*(Vâng, tôi sẽ ghi chú kỹ.)* |

---

## Tình huống 4 — Phòng học · 10:30, học về 危険性・有害性の調査 (リスクアセスメント)

| Vai | Lời thoại |
|---|---|
| Giảng viên | <ruby>次<rt>つぎ</rt></ruby>は「リスクアセスメント」です。<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>危険性<rt>きけんせい</rt></ruby>を<ruby>事前<rt>じぜん</rt></ruby>に<ruby>洗<rt>あら</rt></ruby>い<ruby>出<rt>だ</rt></ruby>す<ruby>手法<rt>しゅほう</rt></ruby>です。<br>*(Tiếp theo là "đánh giá rủi ro". Là phương pháp rà soát trước nguy cơ của công việc.)* |
| Thức | <ruby>危険性<rt>きけんせい</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>い<ruby>出<rt>だ</rt></ruby>す、というのは、ヒヤリハットとは<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Rà soát nguy cơ, vậy có khác với báo cáo suýt tai nạn không ạ?)* |
| Giảng viên | いい<ruby>視点<rt>してん</rt></ruby>です。ヒヤリハットは<ruby>起<rt>お</rt></ruby>きた<ruby>後<rt>あと</rt></ruby>、リスクアセスメントは<ruby>起<rt>お</rt></ruby>きる<ruby>前<rt>まえ</rt></ruby>の<ruby>対策<rt>たいさく</rt></ruby>です。<br>*(Góc nhìn tốt. Suýt tai nạn là sau khi xảy ra, đánh giá rủi ro là biện pháp trước khi xảy ra.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>危険<rt>きけん</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きさは、どう<ruby>評価<rt>ひょうか</rt></ruby>しますか?<br>*(Tôi hiểu rồi. Mức độ nguy hiểm thì đánh giá ra sao ạ?)* |
| Giảng viên | <ruby>災害<rt>さいがい</rt></ruby>の「<ruby>重<rt>おも</rt></ruby>さ」と「<ruby>起<rt>お</rt></ruby>こりやすさ」をかけ<ruby>合<rt>あ</rt></ruby>わせて<ruby>点数化<rt>てんすうか</rt></ruby>します。<br>*(Nhân "mức độ nghiêm trọng" với "khả năng xảy ra" của tai nạn rồi quy ra điểm số.)* |
| Thức | <ruby>点数<rt>てんすう</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いものから<ruby>対策<rt>たいさく</rt></ruby>する、ということですね。<br>*(Tức là xử lý từ cái có điểm cao trước ạ.)* |
| Giảng viên | そうです。<ruby>優先<rt>ゆうせん</rt></ruby><ruby>順位<rt>じゅんい</rt></ruby>をつけるのが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>腕<rt>うで</rt></ruby>の<ruby>見<rt>み</rt></ruby>せ<ruby>所<rt>どころ</rt></ruby>です。<br>*(Đúng. Xếp thứ tự ưu tiên chính là chỗ thể hiện tay nghề của đốc công.)* |

---

## Tình huống 5 — Phòng học · 11:30, hỏi giảng viên về 安全衛生責任者

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>職長<rt>しょくちょう</rt></ruby>と<ruby>安全<rt>あんぜん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ<ruby>人<rt>ひと</rt></ruby>がやるのでしょうか?<br>*(Thưa thầy, đốc công và phụ trách an toàn vệ sinh do cùng một người làm ạ?)* |
| Giảng viên | <ruby>下請<rt>したうけ</rt></ruby>けの<ruby>現場<rt>げんば</rt></ruby>では、<ruby>多<rt>おお</rt></ruby>くの<ruby>場合<rt>ばあい</rt></ruby>、<ruby>職長<rt>しょくちょう</rt></ruby>が<ruby>兼<rt>か</rt></ruby>ねます。<br>*(Ở hiện trường nhà thầu phụ, đa phần đốc công kiêm luôn.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>の<ruby>役目<rt>やくめ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Nhiệm vụ của phụ trách an toàn vệ sinh là gì ạ?)* |
| Giảng viên | <ruby>元請<rt>もとうけ</rt></ruby>けとの<ruby>連絡<rt>れんらく</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>主<rt>おも</rt></ruby>な<ruby>役目<rt>やくめ</rt></ruby>です。<ruby>統括<rt>とうかつ</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>と<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Chủ yếu là liên lạc điều chỉnh với tổng thầu. Chia sẻ thông tin với tổng phụ trách an toàn vệ sinh.)* |
| Thức | つまり、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>の<ruby>橋渡<rt>はしわた</rt></ruby>しもする、ということですね。<br>*(Tức là còn làm cầu nối giữa các công ty nữa ạ.)* |
| Giảng viên | そのとおり。<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れると<ruby>事故<rt>じこ</rt></ruby>につながります。<ruby>責任<rt>せきにん</rt></ruby>は<ruby>重<rt>おも</rt></ruby>いですよ。<br>*(Đúng vậy. Liên lạc chậm trễ sẽ dẫn đến tai nạn. Trách nhiệm nặng đấy.)* |
| Thức | はい、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, tôi hiểu rõ rồi ạ.)* |

---

## Tình huống 6 — Căng-tin hội trường · 12:15, trò chuyện với học viên cùng khoá

| Vai | Lời thoại |
|---|---|
| Học viên | <ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですか?<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるとは、すごいですね。<br>*(Anh là người nước ngoài à? Học cả khoá đốc công, giỏi quá nhỉ.)* |
| Thức | ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。とびを<ruby>何年<rt>なんねん</rt></ruby>かやってきました。<ruby>言葉<rt>ことば</rt></ruby>はまだ<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Tôi quê Việt Nam. Làm thợ giàn giáo được mấy năm rồi. Tiếng thì vẫn đang học.)* |
| Học viên | とびですか。<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>でしょう。<ruby>用語<rt>ようご</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくないですか?<br>*(Thợ giàn giáo à. Làm trên cao vất vả nhỉ. Thuật ngữ không khó à?)* |
| Thức | <ruby>難<rt>むずか</rt></ruby>しいです。でも<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>でメモして、<ruby>後<rt>あと</rt></ruby>で<ruby>調<rt>しら</rt></ruby>べます。<br>*(Khó ạ. Nhưng từ nào không hiểu tôi ghi ngay tại chỗ, sau đó tra cứu.)* |
| Học viên | <ruby>努力家<rt>どりょくか</rt></ruby>ですね。お<ruby>互<rt>たが</rt></ruby>い<ruby>午後<rt>ごご</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Anh chăm thật. Buổi chiều cả hai ta cùng cố gắng nhé.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh giúp đỡ.)* |

---

## Tình huống 7 — Phòng học · 13:30, học về 労働災害防止 cụ thể ngành とび

| Vai | Lời thoại |
|---|---|
| Giảng viên | <ruby>建設<rt>けんせつ</rt></ruby><ruby>業<rt>ぎょう</rt></ruby>の<ruby>死亡<rt>しぼう</rt></ruby><ruby>災害<rt>さいがい</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>多<rt>おお</rt></ruby>いのは<ruby>何<rt>なに</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Tai nạn chết người nhiều nhất trong ngành xây dựng, các anh nghĩ là gì?)* |
| Thức | <ruby>墜落<rt>ついらく</rt></ruby>・<ruby>転落<rt>てんらく</rt></ruby>ではないでしょうか。とびの<ruby>現場<rt>げんば</rt></ruby>でも<ruby>一番<rt>いちばん</rt></ruby><ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Có phải là rơi ngã không ạ. Ở hiện trường giàn giáo cũng đáng sợ nhất.)* |
| Giảng viên | <ruby>正解<rt>せいかい</rt></ruby>です。<ruby>約<rt>やく</rt></ruby><ruby>四割<rt>よんわり</rt></ruby>が<ruby>墜落<rt>ついらく</rt></ruby>・<ruby>転落<rt>てんらく</rt></ruby>です。<ruby>職長<rt>しょくちょう</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>徹底<rt>てってい</rt></ruby>させますか?<br>*(Chính xác. Khoảng 40% là rơi ngã. Đốc công phải quán triệt điều gì?)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby><ruby>帯<rt>たい</rt></ruby>…いえ、<ruby>墜落<rt>ついらく</rt></ruby><ruby>制止<rt>せいし</rt></ruby><ruby>用<rt>よう</rt></ruby><ruby>器具<rt>きぐ</rt></ruby>の<ruby>確実<rt>かくじつ</rt></ruby>な<ruby>使用<rt>しよう</rt></ruby>です。<ruby>二丁掛<rt>にちょうが</rt></ruby>けを<ruby>守<rt>まも</rt></ruby>らせます。<br>*(Dây an toàn… à không, sử dụng chắc chắn thiết bị chống rơi. Bắt buộc móc hai móc.)* |
| Giảng viên | <ruby>用語<rt>ようご</rt></ruby>もよく<ruby>知<rt>し</rt></ruby>っていますね。「<ruby>安全<rt>あんぜん</rt></ruby><ruby>帯<rt>たい</rt></ruby>」は<ruby>古<rt>ふる</rt></ruby>い<ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>で、<ruby>今<rt>いま</rt></ruby>は「フルハーネス」が<ruby>原則<rt>げんそく</rt></ruby>です。<br>*(Thuật ngữ anh nắm tốt đấy. "Đai an toàn" là cách gọi cũ, giờ nguyên tắc là "dây toàn thân".)* |
| Thức | はい、フルハーネス<ruby>型<rt>がた</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>使<rt>つか</rt></ruby>わせます。<br>*(Vâng, sẽ cho dùng đúng loại dây toàn thân.)* |

---

## Tình huống 8 — Phòng học · 14:30, học về 部下への指導 (chỉ đạo cấp dưới)

| Vai | Lời thoại |
|---|---|
| Giảng viên | <ruby>職長<rt>しょくちょう</rt></ruby>は<ruby>部下<rt>ぶか</rt></ruby>を<ruby>指導<rt>しどう</rt></ruby>します。ただ<ruby>叱<rt>しか</rt></ruby>るだけでは<ruby>人<rt>ひと</rt></ruby>は<ruby>育<rt>そだ</rt></ruby>ちません。<br>*(Đốc công chỉ đạo cấp dưới. Chỉ mắng thôi thì người ta không trưởng thành.)* |
| Thức | では、どうやって<ruby>指導<rt>しどう</rt></ruby>すればいいですか?<br>*(Vậy chỉ đạo như thế nào thì tốt ạ?)* |
| Giảng viên | まず「やってみせる」、<ruby>次<rt>つぎ</rt></ruby>に「<ruby>言<rt>い</rt></ruby>って<ruby>聞<rt>き</rt></ruby>かせる」、そして「やらせてみる」です。<br>*(Đầu tiên "làm cho xem", tiếp "nói cho nghe", rồi "cho làm thử".)* |
| Thức | <ruby>最後<rt>さいご</rt></ruby>に<ruby>褒<rt>ほ</rt></ruby>める、ですか?<br>*(Cuối cùng là khen ngợi ạ?)* |
| Giảng viên | よく<ruby>知<rt>し</rt></ruby>っていますね。「<ruby>褒<rt>ほ</rt></ruby>めてやらねば<ruby>人<rt>ひと</rt></ruby>は<ruby>動<rt>うご</rt></ruby>かじ」、<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Anh biết nhiều thật. "Không khen thì người ta không hành động", câu nói nổi tiếng.)* |
| Thức | <ruby>後輩<rt>こうはい</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby>にも、そうやって<ruby>教<rt>おし</rt></ruby>えたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi muốn dạy cho cả các đàn em người Việt theo cách đó.)* |

---

## Tình huống 9 — Phòng học · 15:30, hỏi về 育成就労 (chế độ mới)

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>先生<rt>せんせい</rt></ruby>、これから<ruby>来<rt>く</rt></ruby>る<ruby>後輩<rt>こうはい</rt></ruby>は「<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>」になると<ruby>聞<rt>き</rt></ruby>きました。<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Thưa thầy, em nghe đàn em sắp tới sẽ theo "育成就労". Có khác với thực tập kỹ năng không ạ?)* |
| Giảng viên | <ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>は<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>に<ruby>代<rt>か</rt></ruby>わる<ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>です。<ruby>施行<rt>しこう</rt></ruby>は<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>四月<rt>しがつ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<br>*(育成就労 là chế độ mới thay cho thực tập kỹ năng. Dự kiến thi hành khoảng tháng 4 năm 2027.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きく<ruby>変<rt>か</rt></ruby>わりますか?<br>*(Cái gì thay đổi lớn ạ?)* |
| Giảng viên | <ruby>人材<rt>じんざい</rt></ruby>の「<ruby>確保<rt>かくほ</rt></ruby>と<ruby>育成<rt>いくせい</rt></ruby>」が<ruby>目的<rt>もくてき</rt></ruby>になり、<ruby>転籍<rt>てんせき</rt></ruby>も<ruby>一定<rt>いってい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>で<ruby>認<rt>みと</rt></ruby>められます。<br>*(Mục đích thành "bảo đảm và đào tạo" nhân lực, chuyển nơi làm cũng được phép theo điều kiện nhất định.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>理解<rt>りかい</rt></ruby>しておかないと、<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えられませんね。<br>*(Nếu không hiểu đúng chế độ thì không dạy được đàn em nhỉ.)* |
| Giảng viên | そのとおりです。<ruby>制度<rt>せいど</rt></ruby>は<ruby>変<rt>か</rt></ruby>わるので、<ruby>常<rt>つね</rt></ruby>に<ruby>最新<rt>さいしん</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Đúng vậy. Chế độ sẽ thay đổi, anh hãy luôn kiểm tra thông tin mới nhất.)* |

---

## Tình huống 10 — Phòng học · 16:30, làm bài tập nhóm về 作業手順

| Vai | Lời thoại |
|---|---|
| Giảng viên | グループで<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみた</rt></ruby>ての<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えてください。トゥックさん、リーダーをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Theo nhóm hãy nghĩ trình tự thi công lắp giàn giáo. Anh Thức làm trưởng nhóm.)* |
| Thức | はい。まず<ruby>資材<rt>しざい</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>皆<rt>みな</rt></ruby>さん、どう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Vâng. Trước hết bắt đầu từ kiểm tra vật tư. Mọi người thấy sao?)* |
| Học viên | <ruby>賛成<rt>さんせい</rt></ruby>です。<ruby>次<rt>つぎ</rt></ruby>は<ruby>建地<rt>たてじ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる<ruby>順<rt>じゅん</rt></ruby>でいいですか?<br>*(Tôi đồng ý. Tiếp theo theo thứ tự dựng cột đứng được không?)* |
| Thức | はい。でも、その<ruby>前<rt>まえ</rt></ruby>に<ruby>地面<rt>じめん</rt></ruby>の<ruby>水平<rt>すいへい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れたほうが<ruby>安全<rt>あんぜん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Nhưng trước đó nên chèn bước kiểm tra mặt bằng phẳng thì an toàn hơn.)* |
| Học viên | なるほど、<ruby>確<rt>たし</rt></ruby>かに<ruby>大事<rt>だいじ</rt></ruby>ですね。<ruby>各<rt>かく</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>に<ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>も<ruby>書<rt>か</rt></ruby>き<ruby>足<rt>た</rt></ruby>しましょう。<br>*(Ra vậy, đúng là quan trọng. Mỗi công đoạn ta ghi thêm dự báo nguy cơ nhé.)* |
| Thức | いいですね。では、まとめて<ruby>発表<rt>はっぴょう</rt></ruby>しましょう。<br>*(Hay đấy. Vậy tổng hợp lại rồi trình bày nhé.)* |

---

## Tình huống 11 — Bục phát biểu · 17:00, Thức đại diện nhóm trình bày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>私<rt>わたし</rt></ruby>たちのグループの<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>します。<ruby>工程<rt>こうてい</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby>で<ruby>六<rt>むっ</rt></ruby>つです。<br>*(Tôi xin trình bày trình tự thi công của nhóm. Tổng cộng có sáu công đoạn.)* |
| Thức | <ruby>第一<rt>だいいち</rt></ruby>に<ruby>資材<rt>しざい</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>、<ruby>第二<rt>だいに</rt></ruby>に<ruby>地面<rt>じめん</rt></ruby>の<ruby>水平<rt>すいへい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。<br>*(Thứ nhất kiểm tra vật tư, thứ hai kiểm tra mặt bằng phẳng.)* |
| Giảng viên | <ruby>説明<rt>せつめい</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいですね。<ruby>各<rt>かく</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>は<ruby>入<rt>はい</rt></ruby>っていますか?<br>*(Giải thích dễ hiểu đấy. Có lồng dự báo nguy cơ từng công đoạn không?)* |
| Thức | はい。<ruby>建地<rt>たてじ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる<ruby>工程<rt>こうてい</rt></ruby>では「<ruby>転倒<rt>てんとう</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>」を<ruby>赤<rt>あか</rt></ruby>で<ruby>記入<rt>きにゅう</rt></ruby>しました。<br>*(Vâng. Ở công đoạn dựng cột đứng, tôi ghi đỏ "chú ý đổ ngã".)* |
| Giảng viên | <ruby>素晴<rt>すば</rt></ruby>らしいです。<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>がよく<ruby>出<rt>で</rt></ruby>ていますね。<br>*(Tuyệt vời. Kinh nghiệm thực tế thể hiện rõ đấy.)* |
| Thức | ありがとうございます。<ruby>現場<rt>げんば</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>活<rt>い</rt></ruby>かします。<br>*(Cảm ơn thầy. Tôi nhất định sẽ vận dụng tại hiện trường.)* |

---

## Tình huống 12 — Phòng học · 16:00 ngày 2, nghe về 報告・連絡・相談 trong vai 職長

| Vai | Lời thoại |
|---|---|
| Giảng viên | <ruby>職長<rt>しょくちょう</rt></ruby>になると、<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>の<ruby>立場<rt>たちば</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります。<br>*(Lên đốc công thì vị trí trong báo cáo - liên lạc - trao đổi sẽ thay đổi.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>までは<ruby>報告<rt>ほうこく</rt></ruby>する<ruby>側<rt>がわ</rt></ruby>でしたが、<ruby>受<rt>う</rt></ruby>ける<ruby>側<rt>がわ</rt></ruby>にもなる、ということですか?<br>*(Trước giờ em ở bên báo cáo, giờ thành cả bên tiếp nhận nữa ạ?)* |
| Giảng viên | そうです。<ruby>部下<rt>ぶか</rt></ruby>から<ruby>受<rt>う</rt></ruby>け、<ruby>上司<rt>じょうし</rt></ruby>や<ruby>元請<rt>もとうけ</rt></ruby>けへ<ruby>上<rt>あ</rt></ruby>げる、<ruby>両方<rt>りょうほう</rt></ruby>です。<br>*(Đúng. Nhận từ cấp dưới, báo lên cấp trên hoặc tổng thầu, cả hai chiều.)* |
| Thức | <ruby>悪<rt>わる</rt></ruby>い<ruby>報告<rt>ほうこく</rt></ruby>ほど<ruby>早<rt>はや</rt></ruby>く<ruby>上<rt>あ</rt></ruby>げる、ですね。<br>*(Tin xấu thì càng phải báo lên sớm ạ.)* |
| Giảng viên | そのとおり。<ruby>隠<rt>かく</rt></ruby>すと<ruby>取<rt>と</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しがつかなくなります。<br>*(Đúng vậy. Giấu thì sẽ không thể cứu vãn.)* |
| Thức | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em sẽ khắc cốt ghi tâm.)* |

---

## Tình huống 13 — Phòng học · 11:00 ngày 2, học về 異常時の措置 (xử lý khi bất thường)

| Vai | Lời thoại |
|---|---|
| Giảng viên | <ruby>作業<rt>さぎょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>異常<rt>いじょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>つけたら、<ruby>職長<rt>しょくちょう</rt></ruby>はまず<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Phát hiện bất thường trong lúc thi công, đốc công làm gì trước?)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby>を<ruby>止<rt>と</rt></ruby>めて、<ruby>作業員<rt>さぎょういん</rt></ruby>を<ruby>安全<rt>あんぜん</rt></ruby>な<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>避難<rt>ひなん</rt></ruby>させます。<br>*(Dừng thi công, cho công nhân lánh sang nơi an toàn.)* |
| Giảng viên | はい。<ruby>人命<rt>じんめい</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>です。その<ruby>後<rt>あと</rt></ruby>は?<br>*(Đúng. Ưu tiên tính mạng. Sau đó?)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>上司<rt>じょうし</rt></ruby>と<ruby>元請<rt>もとうけ</rt></ruby>けに<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>しません。<br>*(Xác nhận nguyên nhân, báo cáo cấp trên và tổng thầu. Không tự ý phán đoán.)* |
| Giảng viên | よくできました。<ruby>復旧<rt>ふっきゅう</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>後<rt>あと</rt></ruby>です。<ruby>焦<rt>あせ</rt></ruby>ってはいけません。<br>*(Làm tốt lắm. Phục hồi là sau khi xác nhận an toàn. Không được vội.)* |
| Thức | はい、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>焦<rt>あせ</rt></ruby>りません。<br>*(Vâng, tuyệt đối không vội.)* |

---

## Tình huống 14 — Phòng học · 14:00 ngày 2, làm bài kiểm tra cuối khoá

| Vai | Lời thoại |
|---|---|
| Giảng viên | では、<ruby>修了<rt>しゅうりょう</rt></ruby>テストを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>30<rt>さんじっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Giờ bắt đầu bài kiểm tra hoàn thành. Thời gian giới hạn 30 phút.)* |
| Thức | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>読<rt>よ</rt></ruby>めない<ruby>場合<rt>ばあい</rt></ruby>は<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Thưa thầy, trường hợp không đọc được chữ Hán thì hỏi được không ạ?)* |
| Giảng viên | <ruby>言葉<rt>ことば</rt></ruby>の<ruby>読<rt>よ</rt></ruby>み<ruby>方<rt>かた</rt></ruby>だけなら、<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げて<ruby>聞<rt>き</rt></ruby>いてください。<ruby>答<rt>こた</rt></ruby>えは<ruby>教<rt>おし</rt></ruby>えられませんが。<br>*(Nếu chỉ là cách đọc từ thì giơ tay hỏi. Nhưng đáp án thì không chỉ được.)* |
| Thức | はい、ありがとうございます。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてやります。<br>*(Vâng, cảm ơn thầy. Tôi sẽ làm bình tĩnh.)* |
| Giảng viên | <ruby>実務<rt>じつむ</rt></ruby>で<ruby>知<rt>し</rt></ruby>っていることばかりです。<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って。<br>*(Toàn là điều anh biết trong thực tế. Hãy tự tin.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, tôi sẽ cố gắng.)* |

---

## Tình huống 15 — Phòng học · 15:30 ngày 2, nhận 修了証

| Vai | Lời thoại |
|---|---|
| Giảng viên | トゥックさん、<ruby>修了<rt>しゅうりょう</rt></ruby>です。おめでとうございます。<br>*(Anh Thức, anh đã hoàn thành. Chúc mừng anh.)* |
| Thức | ありがとうございます。<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>終<rt>お</rt></ruby>わって<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Cảm ơn thầy. Kết thúc suôn sẻ tôi yên tâm rồi.)* |
| Giảng viên | この<ruby>修了<rt>しゅうりょう</rt></ruby><ruby>証<rt>しょう</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>してください。<ruby>現場<rt>げんば</rt></ruby>で<ruby>提示<rt>ていじ</rt></ruby>を<ruby>求<rt>もと</rt></ruby>められることがあります。<br>*(Giấy chứng nhận này hãy giữ cẩn thận. Có khi tại hiện trường bị yêu cầu xuất trình.)* |
| Thức | はい、コピーも<ruby>取<rt>と</rt></ruby>っておきます。<br>*(Vâng, tôi sẽ giữ cả bản sao.)* |
| Giảng viên | <ruby>外国人<rt>がいこくじん</rt></ruby>でここまでできる<ruby>方<rt>かた</rt></ruby>は<ruby>少<rt>すく</rt></ruby>ないです。<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>職長<rt>しょくちょう</rt></ruby>になってください。<br>*(Người nước ngoài làm được đến đây ít lắm. Hãy thành một đốc công giỏi.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>職長<rt>しょくちょう</rt></ruby>になります。<br>*(Vâng, tôi nhất định sẽ thành đốc công giỏi.)* |

---

## Tình huống 16 — Ngoài hội trường · 17:00 ngày 2, gọi điện báo 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。トゥックです。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>を<ruby>修了<rt>しゅうりょう</rt></ruby>しました。<br>*(Anh Tanigawa, anh vất vả ạ. Em Thức đây. Em đã hoàn thành khoá đốc công.)* |
| Tanigawa | おう、お<ruby>疲<rt>つか</rt></ruby>れさん。<ruby>無事<rt>ぶじ</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>か。どうだった?<br>*(Ờ, vất vả. Hoàn thành suôn sẻ à. Thế nào?)* |
| Thức | <ruby>学<rt>まな</rt></ruby>ぶことが<ruby>多<rt>おお</rt></ruby>かったです。<ruby>特<rt>とく</rt></ruby>にリスクアセスメントの<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Học được nhiều điều ạ. Đặc biệt cách tư duy đánh giá rủi ro rất bổ ích.)* |
| Tanigawa | そうか。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>現場<rt>げんば</rt></ruby>で<ruby>職長<rt>しょくちょう</rt></ruby><ruby>見習<rt>みなら</rt></ruby>いとして<ruby>入<rt>はい</rt></ruby>ってもらう。<br>*(Vậy à. Tuần sau cậu vào công trường mới với tư cách tập sự đốc công.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>学<rt>まな</rt></ruby>んだことを<ruby>現場<rt>げんば</rt></ruby>で<ruby>活<rt>い</rt></ruby>かします。<br>*(Vâng, em rõ rồi ạ. Em sẽ vận dụng những gì đã học tại hiện trường.)* |
| Tanigawa | <ruby>期待<rt>きたい</rt></ruby>しているぞ。ゆっくり<ruby>休<rt>やす</rt></ruby>めよ。<br>*(Tôi kỳ vọng đấy. Nghỉ ngơi đi nhé.)* |

---

## Tình huống 17 — Ga tàu · 17:30, gặp 近藤先輩 đi cùng đường

| Vai | Lời thoại |
|---|---|
| Kondo | おっ、トゥック。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby><ruby>帰<rt>かえ</rt></ruby>りか?<br>*(Ồ, Thức. Đi học đốc công về à?)* |
| Thức | はい、<ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>無事<rt>ぶじ</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>しました。<br>*(Vâng, anh Kondo. Anh vất vả ạ. Em hoàn thành suôn sẻ rồi.)* |
| Kondo | おめでとう。<ruby>俺<rt>おれ</rt></ruby>も<ruby>三年<rt>さんねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けたよ。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>するよな。<br>*(Chúc mừng. Anh cũng học cách đây ba năm. Thật ra ban đầu hồi hộp lắm nhỉ.)* |
| Thức | はい。でも、<ruby>現場<rt>げんば</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えたことが<ruby>多<rt>おお</rt></ruby>くて、<ruby>意外<rt>いがい</rt></ruby>と<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng. Nhưng nhiều thứ em nhớ từ hiện trường nên hiểu được bất ngờ.)* |
| Kondo | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>知識<rt>ちしき</rt></ruby>と<ruby>経験<rt>けいけん</rt></ruby>がつながると<ruby>強<rt>つよ</rt></ruby>いぞ。<br>*(Cái đó quan trọng nhất. Kiến thức nối với kinh nghiệm là mạnh lắm đấy.)* |
| Thức | はい、これからも<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng, từ nay anh chỉ bảo em với.)* |

---

## Tình huống 18 — Ký túc xá · 19:00, ôn lại tài liệu khoá học

| Vai | Lời thoại |
|---|---|
| Hùng | トゥックさん、<ruby>研修<rt>けんしゅう</rt></ruby>どうでしたか?<ruby>難<rt>むずか</rt></ruby>しかったですか?<br>*(Anh Thức, khoá tập huấn thế nào ạ? Khó không ạ?)* |
| Thức | <ruby>漢字<rt>かんじ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて<ruby>大変<rt>たいへん</rt></ruby>だったよ。でも<ruby>内容<rt>ないよう</rt></ruby>はとても<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ。<br>*(Nhiều chữ Hán nên vất vả lắm. Nhưng nội dung rất hữu ích.)* |
| Hùng | <ruby>僕<rt>ぼく</rt></ruby>もいつか<ruby>受<rt>う</rt></ruby>けられますか?<br>*(Em rồi cũng được học chứ ạ?)* |
| Thức | もちろん。<ruby>班長<rt>はんちょう</rt></ruby>として<ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>めば<ruby>受<rt>う</rt></ruby>けられる。<ruby>今<rt>いま</rt></ruby>から<ruby>用語<rt>ようご</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えておくといい。<br>*(Tất nhiên. Tích đủ kinh nghiệm làm tổ trưởng là được học. Bây giờ nên học trước thuật ngữ.)* |
| Hùng | はい!<ruby>教科書<rt>きょうかしょ</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>見<rt>み</rt></ruby>せてもらえますか?<br>*(Vâng! Cho em xem chút giáo trình được không ạ?)* |
| Thức | いいよ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>読<rt>よ</rt></ruby>もう。<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>は<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Được. Cùng đọc nào. Từ nào không hiểu anh chỉ cho.)* |

---

## Tình huống 19 — Phòng Linh gọi video · 21:00, chia sẻ tin vui (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | A lô anh Thức, học hành xong rồi à? Nhìn mặt mệt thế. |
| Thức | Ừ, hai ngày học đốc công, đầu óc quay cuồng vì toàn chữ Hán khó. Nhưng anh đỗ rồi, có giấy chứng nhận. |
| Linh | Giỏi quá! Vậy là anh sắp lên đốc công thật rồi hả? |
| Thức | Tập sự trước đã. Nhưng đây là bước quan trọng. Cố thêm vài năm nữa, anh tính chuyện thi 特定技能 số 2. |
| Linh | Em tin anh làm được. Cứ từ từ, đừng ép mình quá. |
| Thức | Ừ. Cảm ơn em. Thôi anh đi ôn tài liệu tiếp, mai còn lên công trường mới. |

---

## Tình huống 20 — Công trường mới · 7:50 hôm sau, 親方 giới thiệu với 現場監督

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>石川<rt>いしかわ</rt></ruby>さん、おはようございます。<ruby>今度<rt>こんど</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby><ruby>見習<rt>みなら</rt></ruby>いのトゥックです。<br>*(Anh Ishikawa, chào buổi sáng. Đây là Thức, tập sự đốc công đợt này.)* |
| Ishikawa | おはようございます。<ruby>施工<rt>せこう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>の<ruby>石川<rt>いしかわ</rt></ruby>です。<ruby>話<rt>はなし</rt></ruby>は<ruby>聞<rt>き</rt></ruby>いています。よろしく。<br>*(Chào buổi sáng. Tôi là Ishikawa, quản lý thi công. Tôi nghe nói rồi. Mong anh.)* |
| Thức | はじめまして、トゥックと<ruby>申<rt>もう</rt></ruby>します。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>を<ruby>修了<rt>しゅうりょう</rt></ruby>したばかりですが、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めます。<br>*(Rất hân hạnh, tôi tên Thức. Tôi vừa hoàn thành khoá đốc công, sẽ cố gắng hết sức.)* |
| Ishikawa | <ruby>足場<rt>あしば</rt></ruby>のことは<ruby>谷川組<rt>たにがわぐみ</rt></ruby>さんに<ruby>任<rt>まか</rt></ruby>せています。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Chuyện giàn giáo tôi giao cho Tanigawa-gumi. Có gì không rõ cứ hỏi thoải mái.)* |
| Thức | はい、ありがとうございます。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<br>*(Vâng, cảm ơn anh. Tôi sẽ tiến hành với an toàn là trên hết.)* |
| Tanigawa | トゥック、まずは<ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>について<ruby>動<rt>うご</rt></ruby>け。よく<ruby>見<rt>み</rt></ruby>て<ruby>学<rt>まな</rt></ruby>べ。<br>*(Thức, trước hết bám theo đốc công Saito mà làm. Quan sát kỹ mà học.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ rồi ạ.)* |

---

## Đọng lại

Thức bước qua cột mốc đầu tiên trên hành trình lên 職長: hoàn thành khoá đào tạo đốc công an toàn vệ sinh 2 ngày. Từ vị trí người nhận lệnh, Thức bắt đầu học cách tư duy của người chỉ huy — đánh giá rủi ro, quyết định trình tự thi công, chỉ đạo cấp dưới, báo cáo hai chiều. Tiếng Nhật nghiệp vụ chương này xoay quanh tiếp nhận nhiệm vụ mới, hỏi giảng viên lịch sự, trình bày trước nhóm và báo cáo cấp trên. Tuần sau Thức vào công trường mới với tư cách tập sự đốc công, dưới sự dìu dắt của 斉藤職長.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 職長教育 | しょくちょうきょういく | đào tạo đốc công |
> | 安全衛生責任者 | あんぜんえいせいせきにんしゃ | phụ trách an toàn vệ sinh |
> | 受講票 | じゅこうひょう | phiếu dự khoá học |
> | リスクアセスメント | — | đánh giá rủi ro |
> | 作業手順 | さぎょうてじゅん | trình tự thi công |
> | 墜落・転落 | ついらく・てんらく | rơi ngã |
> | フルハーネス | — | dây an toàn toàn thân |
> | 二丁掛け | にちょうがけ | móc hai móc (dây an toàn) |
> | 危険予知 | きけんよち | dự báo nguy cơ |
> | 育成就労 | いくせいしゅうろう | chế độ lao động đào tạo (mới, thay 技能実習) |
> | 修了証 | しゅうりょうしょう | giấy chứng nhận hoàn thành |
> | 元請け | もとうけ | tổng thầu / nhà thầu chính |
> | 施工管理 | せこうかんり | quản lý thi công (kỹ sư) |
> | 異常時の措置 | いじょうじのそち | xử lý khi có bất thường |
> | 見習い | みならい | tập sự / học việc |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000002, 800000037, NULL, 'markdown_book', 'T2. Lần đầu chủ trì họp sáng và KY toàn công trường (朝礼主催)', '# Sách kỹ năng đặc định xây dựng · T2. Lần đầu chủ trì họp sáng và KY toàn công trường (朝礼主催)

> **Mục tiêu nhân vật:** Thức tập sự đốc công tại công trường mới. Lần đầu được 斉藤職長 giao chủ trì 朝礼 (họp sáng) và KY (危険予知) cho một công trường nhỏ. Học mẫu câu tiếng Nhật khi điều hành tập thể: hô khẩu lệnh, điểm danh, phổ biến công việc trong ngày, dẫn dắt KY, tổng kết.

---

## Bối cảnh

Giữa tháng 4 năm 2030. Công trường lắp giàn giáo một toà nhà 5 tầng. 斉藤職長 (Saito) quyết định cho Thức tập chủ trì 朝礼 và KY khi đội chỉ có chục người — quy mô nhỏ để Thức làm quen. Chương này tập trung mẫu câu tiếng Nhật khi đứng trước tập thể: dõng dạc, ngắn gọn, rõ ràng, có khẩu lệnh chuẩn của ngành xây dựng.

---

## Tình huống 1 — Lán công trường · 7:30, Saito giao nhiệm vụ chủ trì

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>、お<ruby>前<rt>まえ</rt></ruby>がやってみろ。<br>*(Thức, họp sáng hôm nay, cậu thử chủ trì đi.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>がですか?まだ<ruby>自信<rt>じしん</rt></ruby>がありませんが…。<br>*(Em ạ? Em chưa tự tin lắm…)* |
| Saito | <ruby>最初<rt>さいしょ</rt></ruby>はみんなそうだ。<ruby>俺<rt>おれ</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>にいる。<ruby>流<rt>なが</rt></ruby>れだけ<ruby>確認<rt>かくにん</rt></ruby>しておけ。<br>*(Ban đầu ai cũng vậy. Có anh đứng bên cạnh. Cậu nắm trình tự là được.)* |
| Thức | はい。<ruby>人数<rt>にんずう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、<ruby>作業<rt>さぎょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>、KY、<ruby>体操<rt>たいそう</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>でいいですか?<br>*(Vâng. Theo thứ tự điểm danh, nội dung công việc, KY, thể dục được không ạ?)* |
| Saito | そうだ。<ruby>声<rt>こえ</rt></ruby>は<ruby>大<rt>おお</rt></ruby>きく、<ruby>短<rt>みじか</rt></ruby>く。<ruby>長<rt>なが</rt></ruby><ruby>話<rt>ばなし</rt></ruby>は<ruby>嫌<rt>きら</rt></ruby>われるぞ。<br>*(Đúng. Nói to, ngắn gọn. Nói dài sẽ bị ghét đấy.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ rồi ạ. Em sẽ cố gắng.)* |

---

## Tình huống 2 — Khoảng sân tập kết · 7:55, Thức tập trung đội

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>集<rt>あつ</rt></ruby>まってください。<br>*(Mọi người, bắt đầu họp sáng. Tập trung lại.)* |
| Kondo | はーい。<br>*(Vâng.)* |
| Thức | <ruby>整列<rt>せいれつ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>前<rt>まえ</rt></ruby>へならえ。<br>*(Xin xếp hàng. Dóng hàng nào.)* |
| Nam | (xếp hàng) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Ổn rồi ạ.)* |
| Thức | おはようございます!<br>*(Chào buổi sáng!)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | では、これから<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。<br>*(Vậy, từ bây giờ tiến hành họp sáng hôm nay.)* |

---

## Tình huống 3 — Hàng ngũ · 7:58, điểm danh và xác nhận sức khoẻ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>出席<rt>しゅっせき</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>です。<ruby>欠席<rt>けっせき</rt></ruby>はありません。<br>*(Hôm nay có mặt 10 người. Không ai vắng.)* |
| Thức | <ruby>体調<rt>たいちょう</rt></ruby>の<ruby>悪<rt>わる</rt></ruby>い<ruby>方<rt>かた</rt></ruby>はいませんか?<br>*(Có ai thấy không khoẻ không?)* |
| Kondo | <ruby>異常<rt>いじょう</rt></ruby>なしです。<br>*(Không có gì bất thường.)* |
| Thức | フンくん、<ruby>昨日<rt>きのう</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>熱<rt>ねつ</rt></ruby>っぽいと<ruby>言<rt>い</rt></ruby>っていましたが、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Hùng, hôm qua em bảo hơi sốt, ổn không?)* |
| Hùng | はい、もう<ruby>下<rt>さ</rt></ruby>がりました。<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Vâng, hạ rồi ạ. Không vấn đề gì.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>はしないでください。<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くなったらすぐ<ruby>言<rt>い</rt></ruby>うこと。<br>*(Đừng gắng sức. Thấy mệt thì báo ngay.)* |

---

## Tình huống 4 — Hàng ngũ · 8:00, phổ biến công việc trong ngày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>北側<rt>きたがわ</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>三<rt>さん</rt></ruby>スパンを<ruby>組<rt>く</rt></ruby>みます。<br>*(Phổ biến công việc hôm nay. Lắp ba khoang giàn giáo phía bắc.)* |
| Thức | A<ruby>班<rt>はん</rt></ruby>は<ruby>建地<rt>たてじ</rt></ruby>の<ruby>建<rt>た</rt></ruby>て<ruby>込<rt>こ</rt></ruby>み、B<ruby>班<rt>はん</rt></ruby>は<ruby>布<rt>ぬの</rt></ruby>と<ruby>腕木<rt>うでぎ</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けです。<br>*(Tổ A dựng cột đứng, tổ B lắp thanh ngang và thanh đỡ.)* |
| Kondo | <ruby>資材<rt>しざい</rt></ruby>は<ruby>足<rt>た</rt></ruby>りていますか?<br>*(Vật tư đủ chứ?)* |
| Thức | はい、<ruby>昨日<rt>きのう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>不足<rt>ふそく</rt></ruby>があれば<ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>手配<rt>てはい</rt></ruby>します。<br>*(Vâng, hôm qua đã kiểm tra. Thiếu thì em đặt trong buổi sáng.)* |
| Thức | <ruby>完了<rt>かんりょう</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は<ruby>午後<rt>ごご</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>時<rt>じ</rt></ruby>です。<ruby>無理<rt>むり</rt></ruby>のないペースでいきましょう。<br>*(Mục tiêu hoàn thành là 3 giờ chiều. Ta làm với nhịp độ không gắng quá.)* |
| Nam | <ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Rõ ạ.)* |

---

## Tình huống 5 — Hàng ngũ · 8:05, dẫn dắt KY (危険予知)

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>次<rt>つぎ</rt></ruby>はKYです。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>で、どんな<ruby>危険<rt>きけん</rt></ruby>がありますか?<br>*(Tiếp theo là KY. Công việc hôm nay có nguy cơ gì?)* |
| Kondo | <ruby>高<rt>たか</rt></ruby>さがあるので、<ruby>墜落<rt>ついらく</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>があります。<br>*(Có độ cao nên có nguy cơ rơi ngã.)* |
| Nam | <ruby>資材<rt>しざい</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げるとき、<ruby>落下<rt>らっか</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>もあります。<br>*(Lúc đưa vật tư lên cao, cũng có nguy cơ rơi vật.)* |
| Thức | そうですね。では<ruby>対策<rt>たいさく</rt></ruby>は?<br>*(Đúng vậy. Vậy biện pháp là gì?)* |
| Hùng | フルハーネスを<ruby>二丁掛<rt>にちょうが</rt></ruby>けで<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Dùng dây toàn thân, móc hai móc chắc chắn.)* |
| Thức | いいですね。<ruby>下<rt>した</rt></ruby>には<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>の<ruby>表示<rt>ひょうじ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>重点<rt>じゅうてん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>二丁掛<rt>にちょうが</rt></ruby>け<ruby>徹底<rt>てってい</rt></ruby>」とします。<br>*(Hay. Phía dưới sẽ treo biển cấm vào. Mục tiêu trọng điểm hôm nay là "quán triệt móc hai móc".)* |

---

## Tình huống 6 — Hàng ngũ · 8:08, hô khẩu lệnh chỉ tay xác nhận

| Vai | Lời thoại |
|---|---|
| Thức | では、<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>をします。<ruby>私<rt>わたし</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせてください。<br>*(Vậy, ta hô và chỉ tay xác nhận. Làm theo tôi.)* |
| Thức | フルハーネス、ヨシ!<br>*(Dây toàn thân, OK!)* |
| Cả đội | フルハーネス、ヨシ!<br>*(Dây toàn thân, OK!)* |
| Thức | <ruby>足元<rt>あしもと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ヨシ!<br>*(Kiểm tra chỗ đứng, OK!)* |
| Cả đội | <ruby>足元<rt>あしもと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ヨシ!<br>*(Kiểm tra chỗ đứng, OK!)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>がよく<ruby>出<rt>で</rt></ruby>ていました。この<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>作業<rt>さぎょう</rt></ruby>しましょう。<br>*(Tiếng hô tốt lắm. Cứ đà này, làm việc an toàn nhé.)* |

---

## Tình huống 7 — Hàng ngũ · 8:10, thể dục và kết thúc 朝礼

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>最後<rt>さいご</rt></ruby>に<ruby>体操<rt>たいそう</rt></ruby>をします。ケガ<ruby>防止<rt>ぼうし</rt></ruby>のため、しっかり<ruby>体<rt>からだ</rt></ruby>をほぐしてください。<br>*(Cuối cùng là thể dục. Để phòng chấn thương, hãy khởi động kỹ.)* |
| Kondo | <ruby>首<rt>くび</rt></ruby>と<ruby>肩<rt>かた</rt></ruby>、<ruby>念入<rt>ねんい</rt></ruby>りにな。<br>*(Cổ với vai, làm kỹ vào.)* |
| Thức | はい。それでは、<ruby>本日<rt>ほんじつ</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で。<ruby>無事故<rt>むじこ</rt></ruby><ruby>無災害<rt>むさいがい</rt></ruby>でいきましょう。<br>*(Vâng. Vậy thì, hôm nay an toàn là trên hết. Ta cùng không tai nạn không sự cố nhé.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |
| Thức | <ruby>以上<rt>いじょう</rt></ruby>で<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>終<rt>お</rt></ruby>わります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Đến đây kết thúc họp sáng. Mong mọi người làm việc tốt!)* |
| Cả đội | お<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Cùng cố gắng!)* |

---

## Tình huống 8 — Bên cạnh sân · 8:15, Saito góp ý sau buổi đầu

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>初<rt>はじ</rt></ruby>めてにしては<ruby>上出来<rt>じょうでき</rt></ruby>だ。<br>*(Thức, lần đầu mà thế là tốt rồi.)* |
| Thức | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>声<rt>こえ</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えてしまいました。<br>*(Cảm ơn anh. Em hồi hộp nên giọng run mất.)* |
| Saito | <ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>はそうだ。ただ、<ruby>作業<rt>さぎょう</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>長<rt>なが</rt></ruby>かったな。<br>*(Ai đầu cũng vậy. Chỉ có điều, phần phổ biến công việc hơi dài.)* |
| Thức | はい、<ruby>次<rt>つぎ</rt></ruby>はもっと<ruby>要点<rt>ようてん</rt></ruby>だけにします。<br>*(Vâng, lần sau em sẽ chỉ nói trọng điểm thôi.)* |
| Saito | それと、KYで<ruby>全員<rt>ぜんいん</rt></ruby>に<ruby>発言<rt>はつげん</rt></ruby>させたのは<ruby>良<rt>よ</rt></ruby>かった。みんなが<ruby>考<rt>かんが</rt></ruby>える。<br>*(Với lại, KY mà cho cả đội phát biểu là tốt. Mọi người cùng suy nghĩ.)* |
| Thức | はい、これからも<ruby>意見<rt>いけん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>すようにします。<br>*(Vâng, từ nay em sẽ tiếp tục khơi ý kiến mọi người.)* |

---

## Tình huống 9 — Khu vật tư · 9:30, điều phối khi thiếu vật liệu

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>布<rt>ぬの</rt></ruby>が<ruby>三本<rt>さんぼん</rt></ruby><ruby>足<rt>た</rt></ruby>りません。<br>*(Anh Thức, thiếu ba thanh ngang.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>数<rt>かず</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますね。すぐ<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Thật à. Khác số hôm qua nhỉ. Em kiểm tra ngay.)* |
| Nam | <ruby>作業<rt>さぎょう</rt></ruby>を<ruby>止<rt>と</rt></ruby>めますか?<br>*(Có dừng việc không ạ?)* |
| Thức | いや、<ruby>東側<rt>ひがしがわ</rt></ruby>の<ruby>分<rt>ぶん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>って<ruby>進<rt>すす</rt></ruby>めてください。その<ruby>間<rt>あいだ</rt></ruby>に<ruby>資材<rt>しざい</rt></ruby><ruby>屋<rt>や</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Không, dùng phần phía đông trước rồi tiến hành. Trong lúc đó em liên lạc bên vật tư.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。そうします。<br>*(Hiểu rồi ạ. Sẽ làm vậy.)* |
| Thức | <ruby>段取<rt>だんど</rt></ruby>りを<ruby>止<rt>と</rt></ruby>めないのが<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>報告<rt>ほうこく</rt></ruby>ありがとう。<br>*(Quan trọng là không để gián đoạn dây chuyền. Cảm ơn em đã báo.)* |

---

## Tình huống 10 — Lán công trường · 9:45, gọi điện đặt thêm vật tư

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>谷川組<rt>たにがわぐみ</rt></ruby>のトゥックです。<br>*(Cảm ơn anh đã hỗ trợ. Tôi là Thức, công ty Tanigawa-gumi.)* |
| Vật tư | はい、お<ruby>世話<rt>せわ</rt></ruby>になっております。どうされましたか?<br>*(Vâng, cảm ơn anh. Có chuyện gì ạ?)* |
| Thức | <ruby>布<rt>ぬの</rt></ruby>を<ruby>三本<rt>さんぼん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>午後<rt>ごご</rt></ruby><ruby>一<rt>いち</rt></ruby>までに<ruby>届<rt>とど</rt></ruby>きますか?<br>*(Xin đặt thêm ba thanh ngang. Đến đầu giờ chiều nay giao kịp không ạ?)* |
| Vật tư | <ruby>確認<rt>かくにん</rt></ruby>します。…<ruby>在庫<rt>ざいこ</rt></ruby>あります。<ruby>午後<rt>ごご</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>配送<rt>はいそう</rt></ruby>できます。<br>*(Tôi kiểm tra. …Còn hàng. 1 giờ chiều giao được.)* |
| Thức | <ruby>助<rt>たす</rt></ruby>かります。<ruby>納品<rt>のうひん</rt></ruby><ruby>書<rt>しょ</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby><ruby>事務所<rt>じむしょ</rt></ruby>へお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(May quá. Phiếu giao hàng gửi về văn phòng công trường giúp tôi.)* |
| Vật tư | <ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi rõ rồi. Mong anh.)* |

---

## Tình huống 11 — Trên giàn giáo · 10:30, nhắc nhở đàn em đeo dây an toàn

| Vai | Lời thoại |
|---|---|
| Thức | フンくん、<ruby>移動<rt>いどう</rt></ruby>するとき、フックが<ruby>外<rt>はず</rt></ruby>れているよ。<br>*(Hùng, lúc di chuyển, móc dây bị tuột ra kìa.)* |
| Hùng | あっ、すみません。<ruby>付<rt>つ</rt></ruby>け<ruby>替<rt>か</rt></ruby>えるとき、<ruby>一瞬<rt>いっしゅん</rt></ruby><ruby>両方<rt>りょうほう</rt></ruby><ruby>外<rt>はず</rt></ruby>れてしまいました。<br>*(A, xin lỗi. Lúc đổi móc, có một thoáng cả hai đều tuột.)* |
| Thức | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<ruby>必<rt>かなら</rt></ruby>ず<ruby>片方<rt>かたほう</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けてから、もう<ruby>片方<rt>かたほう</rt></ruby>を<ruby>外<rt>はず</rt></ruby>す。<br>*(Đó là nguy hiểm nhất. Nhất định móc một bên rồi mới tháo bên kia.)* |
| Hùng | はい、<ruby>二丁掛<rt>にちょうが</rt></ruby>けの<ruby>意味<rt>いみ</rt></ruby>がよく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rõ ý nghĩa của móc hai móc rồi.)* |
| Thức | <ruby>頭<rt>あたま</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かっていても、<ruby>体<rt>からだ</rt></ruby>が<ruby>慣<rt>な</rt></ruby>れるまで<ruby>意識<rt>いしき</rt></ruby>すること。<br>*(Đầu hiểu rồi nhưng đến khi cơ thể quen thì phải ý thức.)* |
| Hùng | はい、<ruby>気<rt>き</rt></ruby>をつけます。ありがとうございます。<br>*(Vâng, em sẽ chú ý. Cảm ơn anh.)* |

---

## Tình huống 12 — Sân tập kết · 12:00, chủ trì họp giữa ca ngắn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>午前<rt>ごぜん</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>予定<rt>よてい</rt></ruby>どおり<ruby>北側<rt>きたがわ</rt></ruby><ruby>二<rt>に</rt></ruby>スパン<ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Xác nhận tiến độ buổi sáng. Đúng kế hoạch, hoàn thành hai khoang phía bắc.)* |
| Kondo | <ruby>順調<rt>じゅんちょう</rt></ruby>だな。<ruby>午後<rt>ごご</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>り<ruby>一<rt>いち</rt></ruby>スパンか。<br>*(Suôn sẻ nhỉ. Chiều còn một khoang à.)* |
| Thức | はい。<ruby>布<rt>ぬの</rt></ruby>の<ruby>追加<rt>ついか</rt></ruby><ruby>分<rt>ぶん</rt></ruby>が<ruby>一時<rt>いちじ</rt></ruby>に<ruby>届<rt>とど</rt></ruby>きます。それまで<ruby>東側<rt>ひがしがわ</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Phần thanh ngang đặt thêm 1 giờ giao tới. Trước đó nhờ mọi người dọn dẹp phía đông.)* |
| Nam | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>昼<rt>ひる</rt></ruby><ruby>休<rt>やす</rt></ruby>みはしっかり<ruby>取<rt>と</rt></ruby>りますか?<br>*(Rõ ạ. Nghỉ trưa vẫn nghỉ đủ chứ?)* |
| Thức | もちろんです。<ruby>休<rt>やす</rt></ruby>むときは<ruby>休<rt>やす</rt></ruby>む。<ruby>午後<rt>ごご</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>のためです。<br>*(Tất nhiên. Lúc nghỉ thì nghỉ. Vì an toàn buổi chiều.)* |
| Kondo | いい<ruby>判断<rt>はんだん</rt></ruby>だ。<br>*(Phán đoán tốt đấy.)* |

---

## Tình huống 13 — Văn phòng công trường · 13:00, nhận hàng và kiểm đếm

| Vai | Lời thoại |
|---|---|
| Tài xế | <ruby>谷川組<rt>たにがわぐみ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>配送<rt>はいそう</rt></ruby>です。<ruby>布<rt>ぬの</rt></ruby><ruby>三本<rt>さんぼん</rt></ruby>、お<ruby>届<rt>とど</rt></ruby>けしました。<br>*(Tanigawa-gumi, hàng giao đây. Ba thanh ngang, đã giao đến.)* |
| Thức | ありがとうございます。<ruby>数量<rt>すうりょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。…<ruby>一<rt>いち</rt></ruby>、<ruby>二<rt>に</rt></ruby>、<ruby>三<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>、<ruby>確<rt>たし</rt></ruby>かに。<br>*(Cảm ơn anh. Tôi kiểm số lượng. …một, hai, ba thanh, đúng rồi.)* |
| Tài xế | では、<ruby>受領<rt>じゅりょう</rt></ruby>サインをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy, anh ký nhận giúp tôi.)* |
| Thức | はい。<ruby>傷<rt>きず</rt></ruby>や<ruby>曲<rt>ま</rt></ruby>がりもありませんね。サインします。<br>*(Vâng. Không trầy không cong nhỉ. Tôi ký.)* |
| Tài xế | ありがとうございました。<br>*(Cảm ơn anh.)* |
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Anh vất vả rồi. Đi cẩn thận.)* |

---

## Tình huống 14 — Trên giàn giáo · 14:30, phối hợp với tổ khác

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>鉄筋<rt>てっきん</rt></ruby><ruby>屋<rt>や</rt></ruby>さん、すみません。<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>から<ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>します。<br>*(Anh bên thợ sắt, xin lỗi. Từ 2 rưỡi chúng tôi làm phía giàn giáo.)* |
| Thợ sắt | ああ、<ruby>了解<rt>りょうかい</rt></ruby>。こっちは<ruby>下<rt>した</rt></ruby>で<ruby>結束<rt>けっそく</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>だ。<br>*(À, rõ. Bên này làm buộc thép ở dưới.)* |
| Thức | <ruby>上<rt>うえ</rt></ruby>から<ruby>工具<rt>こうぐ</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちないよう<ruby>注意<rt>ちゅうい</rt></ruby>しますが、<ruby>真下<rt>ました</rt></ruby>は<ruby>避<rt>さ</rt></ruby>けていただけますか?<br>*(Tôi sẽ chú ý không để dụng cụ rơi từ trên, nhưng anh tránh ngay phía dưới được không?)* |
| Thợ sắt | <ruby>分<rt>わ</rt></ruby>かった。<ruby>東<rt>ひがし</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>って<ruby>作業<rt>さぎょう</rt></ruby>するよ。<br>*(Hiểu rồi. Sẽ dạt sang phía đông mà làm.)* |
| Thức | <ruby>助<rt>たす</rt></ruby>かります。お<ruby>互<rt>たが</rt></ruby>い<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>って<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(May quá. Hai bên cùng í ới nhau cho an toàn.)* |
| Thợ sắt | おう、そうしよう。<br>*(Ờ, làm vậy đi.)* |

---

## Tình huống 15 — Trên giàn giáo · 15:00, kiểm tra hoàn thành công đoạn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>北側<rt>きたがわ</rt></ruby><ruby>三<rt>さん</rt></ruby>スパン、<ruby>組立<rt>くみた</rt></ruby>て<ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>点検<rt>てんけん</rt></ruby>しましょう。<br>*(Ba khoang phía bắc, đã lắp xong. Ta kiểm tra nào.)* |
| Kondo | <ruby>建地<rt>たてじ</rt></ruby>の<ruby>垂直<rt>すいちょく</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>した。<ruby>問題<rt>もんだい</rt></ruby>なし。<br>*(Độ thẳng đứng cột đứng, đã kiểm. Không vấn đề.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりと<ruby>幅木<rt>はばき</rt></ruby>はすべて<ruby>付<rt>つ</rt></ruby>いていますか?<br>*(Lan can và ván chắn chân đã lắp đủ chưa?)* |
| Nam | はい、<ruby>全<rt>すべ</rt></ruby>て<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>け<ruby>済<rt>ず</rt></ruby>みです。<ruby>緊結<rt>きんけつ</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, lắp hết rồi. Mối nối cũng đã kiểm.)* |
| Thức | <ruby>良<rt>よ</rt></ruby>い<ruby>出来<rt>でき</rt></ruby>です。みんな、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Làm tốt lắm. Mọi người, vất vả rồi.)* |
| Kondo | <ruby>段取<rt>だんど</rt></ruby>りが<ruby>良<rt>よ</rt></ruby>かったから<ruby>早<rt>はや</rt></ruby>く<ruby>終<rt>お</rt></ruby>わったな。<br>*(Sắp xếp tốt nên xong sớm nhỉ.)* |

---

## Tình huống 16 — Sân tập kết · 15:30, chủ trì 終礼 (họp tổng kết cuối ngày)

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>終礼<rt>しゅうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>は<ruby>予定<rt>よてい</rt></ruby>どおり<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Bắt đầu họp tổng kết. Công việc hôm nay đã hoàn thành đúng kế hoạch.)* |
| Thức | ケガや<ruby>事故<rt>じこ</rt></ruby>もなく、<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>終<rt>お</rt></ruby>われました。ありがとうございました。<br>*(Không chấn thương không tai nạn, kết thúc an toàn. Cảm ơn mọi người.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>は<ruby>南側<rt>みなみがわ</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>です。<ruby>資材<rt>しざい</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby><ruby>一<rt>いち</rt></ruby>で<ruby>搬入<rt>はんにゅう</rt></ruby>します。<br>*(Mai làm giàn giáo phía nam. Vật tư sẽ chuyển vào đầu giờ sáng.)* |
| Kondo | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>後片付<rt>あとかたづ</rt></ruby>けはこっちでやっておく。<br>*(Rõ. Dọn dẹp cuối ngày để bên này lo.)* |
| Thức | ありがとうございます。<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>数<rt>かず</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。では、お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Cảm ơn anh. Nhờ kiểm cả số dụng cụ. Vậy, mọi người vất vả rồi!)* |
| Cả đội | お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Vất vả rồi!)* |

---

## Tình huống 17 — Văn phòng công trường · 16:00, báo cáo Saito

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Anh Saito, báo cáo công việc hôm nay.)* |
| Saito | おう、どうだった。<br>*(Ờ, thế nào.)* |
| Thức | <ruby>北側<rt>きたがわ</rt></ruby><ruby>三<rt>さん</rt></ruby>スパン<ruby>完了<rt>かんりょう</rt></ruby>。<ruby>布<rt>ぬの</rt></ruby><ruby>不足<rt>ぶそく</rt></ruby>がありましたが、<ruby>追加<rt>ついか</rt></ruby><ruby>手配<rt>てはい</rt></ruby>して<ruby>工程<rt>こうてい</rt></ruby>は<ruby>遅<rt>おく</rt></ruby>れていません。<br>*(Xong ba khoang phía bắc. Có thiếu thanh ngang nhưng đã đặt thêm, tiến độ không chậm.)* |
| Saito | <ruby>不足<rt>ふそく</rt></ruby>のとき、<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>止<rt>と</rt></ruby>めなかったのは<ruby>正解<rt>せいかい</rt></ruby>だ。よく<ruby>判断<rt>はんだん</rt></ruby>した。<br>*(Lúc thiếu mà không dừng việc là đúng. Phán đoán tốt.)* |
| Thức | ありがとうございます。<ruby>原因<rt>げんいん</rt></ruby>は<ruby>昨日<rt>きのう</rt></ruby>の<ruby>数<rt>かぞ</rt></ruby>え<ruby>間違<rt>まちが</rt></ruby>いでした。<ruby>明日<rt>あした</rt></ruby>から<ruby>二人<rt>ふたり</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Cảm ơn anh. Nguyên nhân là đếm sai hôm qua. Từ mai sẽ hai người cùng kiểm.)* |
| Saito | <ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>まで<ruby>考<rt>かんが</rt></ruby>えているな。いいぞ。<br>*(Tính cả phòng tái diễn nữa à. Tốt đấy.)* |

---

## Tình huống 18 — Lán công trường · 16:15, Saito dặn dò thêm

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>仕切<rt>しき</rt></ruby>るのは<ruby>慣<rt>な</rt></ruby>れたか?<br>*(Thức, chủ trì họp sáng quen chưa?)* |
| Thức | まだ<ruby>緊張<rt>きんちょう</rt></ruby>しますが、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>慣<rt>な</rt></ruby>れてきました。<br>*(Vẫn còn hồi hộp ạ, nhưng dần dần quen rồi.)* |
| Saito | <ruby>職長<rt>しょくちょう</rt></ruby>は<ruby>技術<rt>ぎじゅつ</rt></ruby>だけじゃない。<ruby>人<rt>ひと</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かす<ruby>力<rt>ちから</rt></ruby>がいる。<br>*(Đốc công không chỉ là kỹ thuật. Cần năng lực điều khiển con người.)* |
| Thức | はい。<ruby>言葉<rt>ことば</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>もありますが、<ruby>誠実<rt>せいじつ</rt></ruby>にやれば<ruby>伝<rt>つた</rt></ruby>わると<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng. Có rào cản ngôn ngữ ạ, nhưng em nghĩ làm chân thành thì sẽ truyền đạt được.)* |
| Saito | その<ruby>考<rt>かんが</rt></ruby>えは<ruby>間違<rt>まちが</rt></ruby>っていない。<ruby>言葉<rt>ことば</rt></ruby>より<ruby>行動<rt>こうどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ているからな、<ruby>職人<rt>しょくにん</rt></ruby>は。<br>*(Suy nghĩ đó không sai. Vì thợ nhìn hành động hơn lời nói.)* |
| Thức | はい、<ruby>背中<rt>せなか</rt></ruby>で<ruby>見<rt>み</rt></ruby>せられる<ruby>職長<rt>しょくちょう</rt></ruby>になりたいです。<br>*(Vâng, em muốn thành đốc công làm gương bằng chính mình.)* |

---

## Tình huống 19 — Ký túc xá · 19:30, Thức dạy Nam thuật ngữ 朝礼

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>朝礼<rt>ちょうれい</rt></ruby>の<ruby>司会<rt>しかい</rt></ruby>、かっこよかったです。<ruby>僕<rt>ぼく</rt></ruby>もできるようになりたいです。<br>*(Anh Thức, anh chủ trì họp sáng ngầu thật. Em cũng muốn làm được.)* |
| Thức | <ruby>誰<rt>だれ</rt></ruby>でもできるよ。まず<ruby>決<rt>き</rt></ruby>まった<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えること。<br>*(Ai cũng làm được. Trước hết nhớ cách nói cố định.)* |
| Nam | 「<ruby>整列<rt>せいれつ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」とか、ですか?<br>*(Như "xin xếp hàng" ạ?)* |
| Thức | そう。あとは「<ruby>体調<rt>たいちょう</rt></ruby>の<ruby>悪<rt>わる</rt></ruby>い<ruby>方<rt>かた</rt></ruby>はいませんか」「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>重点<rt>じゅうてん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は」。<ruby>型<rt>かた</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えれば<ruby>応用<rt>おうよう</rt></ruby>できる。<br>*(Đúng. Rồi "có ai thấy không khoẻ không", "mục tiêu trọng điểm hôm nay là". Nhớ khuôn là vận dụng được.)* |
| Nam | <ruby>練習<rt>れんしゅう</rt></ruby>します。<ruby>聞<rt>き</rt></ruby>いてもらえますか?<br>*(Em sẽ tập. Anh nghe giúp em được không?)* |
| Thức | もちろん。<ruby>毎晩<rt>まいばん</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつやろう。<br>*(Tất nhiên. Tối nào cũng tập một chút nào.)* |

---

## Tình huống 20 — Sân công trường · 7:55 hôm sau, chủ trì 朝礼 lần hai trôi chảy hơn

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます!<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chào buổi sáng! Bắt đầu họp sáng hôm nay.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>南側<rt>みなみがわ</rt></ruby><ruby>足場<rt>あしば</rt></ruby>。<ruby>重点<rt>じゅうてん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>資材<rt>しざい</rt></ruby><ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>」。<ruby>要点<rt>ようてん</rt></ruby>のみ<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Hôm nay giàn giáo phía nam. Mục tiêu trọng điểm là "chống rơi vật tư". Chỉ nói trọng điểm.)* |
| Saito | (nói nhỏ, gật đầu) <ruby>短<rt>みじか</rt></ruby>くまとまってきたな。<br>*(Ngắn gọn dần rồi đấy.)* |
| Thức | では<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>。<ruby>資材<rt>しざい</rt></ruby><ruby>固定<rt>こてい</rt></ruby>、ヨシ!<br>*(Vậy hô chỉ tay xác nhận. Cố định vật tư, OK!)* |
| Cả đội | <ruby>資材<rt>しざい</rt></ruby><ruby>固定<rt>こてい</rt></ruby>、ヨシ!<br>*(Cố định vật tư, OK!)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>も<ruby>無事故<rt>むじこ</rt></ruby>で。よろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Hôm nay cũng không tai nạn. Mong mọi người!)* |

---

## Đọng lại

Lần đầu chủ trì 朝礼 và KY, Thức học được rằng làm đốc công không chỉ cần tay nghề mà còn cần năng lực điều khiển tập thể: nói to, ngắn, rõ, biết khơi ý kiến mọi người và xử lý tình huống thiếu vật tư mà không làm gián đoạn dây chuyền. Tiếng Nhật nghiệp vụ chương này là các khẩu lệnh chuẩn ngành xây dựng (整列・指差呼称・無事故無災害), cách điều phối tổ khác và báo cáo cấp trên có kèm biện pháp phòng tái diễn. Saito ghi nhận và Thức bắt đầu dạy lại đàn em.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 朝礼 | ちょうれい | họp đầu ca sáng |
> | 終礼 | しゅうれい | họp tổng kết cuối ngày |
> | 危険予知 | きけんよち | dự báo nguy cơ (KY) |
> | 指差呼称 | ゆびさしこしょう | chỉ tay và hô xác nhận |
> | 整列 | せいれつ | xếp hàng |
> | 重点目標 | じゅうてんもくひょう | mục tiêu trọng điểm |
> | 建地 | たてじ | cột đứng (giàn giáo) |
> | 布 | ぬの | thanh ngang (giàn giáo) |
> | 腕木 | うでぎ | thanh đỡ ngang |
> | 二丁掛け | にちょうがけ | móc hai móc dây an toàn |
> | 段取り | だんどり | sắp xếp / dây chuyền công việc |
> | 進捗 | しんちょく | tiến độ |
> | 緊結 | きんけつ | siết chặt mối nối |
> | 再発防止 | さいはつぼうし | phòng tái diễn |
> | 無事故無災害 | むじこむさいがい | không tai nạn không sự cố |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000003, 800000037, NULL, 'markdown_book', 'T3. Lập và điều chỉnh tiến độ, họp phối hợp với kỹ sư thi công (工程打合せ)', '# Sách kỹ năng đặc định xây dựng · T3. Lập và điều chỉnh tiến độ, họp phối hợp với kỹ sư thi công (工程打合せ)

> **Mục tiêu nhân vật:** Thức được giao lập 工程表 (bảng tiến độ) phần giàn giáo và tham gia 打合せ (họp phối hợp) hằng tuần với 現場監督 石川さん (kỹ sư施工管理). Học mẫu câu tiếng Nhật khi đọc/giải thích bảng tiến độ, đề xuất điều chỉnh, thương lượng lịch với các nghề khác, báo cáo phương án.

---

## Bối cảnh

Cuối tháng 4 năm 2030. Toà nhà 5 tầng bước vào giai đoạn nhiều nghề cùng vào (鳶・鉄筋・型枠・コンクリート). 斉藤職長 giao Thức lập 工程表 cho phần giàn giáo và dự họp 工程打合せ với 石川さん. Đây là lần đầu Thức phải tư duy theo dòng thời gian toàn dự án, điều chỉnh khi thời tiết/nghề khác ảnh hưởng. Tiếng Nhật nghiệp vụ chương này xoay quanh ngôn ngữ lập kế hoạch, đề xuất, thương lượng lịch.

---

## Tình huống 1 — Văn phòng công trường · 8:00, Saito giao việc lập 工程表

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>足場<rt>あしば</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>の<ruby>工程表<rt>こうていひょう</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってみろ。<br>*(Thức, thử lập bảng tiến độ phần giàn giáo xem.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>工程表<rt>こうていひょう</rt></ruby>をですか。<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Em lập bảng tiến độ ạ. Anh chỉ cho em dòng tổng thể được không?)* |
| Saito | <ruby>来月<rt>らいげつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>に<ruby>躯体<rt>くたい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。それまでに<ruby>足場<rt>あしば</rt></ruby>を<ruby>各<rt>かく</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>順<rt>じゅん</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げていく。<br>*(Cuối tháng sau xong phần kết cấu thô. Trước đó nâng giàn giáo lần lượt từng tầng.)* |
| Thức | <ruby>鉄筋<rt>てっきん</rt></ruby>や<ruby>型枠<rt>かたわく</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせる<ruby>必要<rt>ひつよう</rt></ruby>がありますね。<br>*(Cần khớp với công việc của thợ sắt và thợ cốp pha nhỉ.)* |
| Saito | そうだ。<ruby>他<rt>た</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>との<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いを<ruby>考<rt>かんが</rt></ruby>えるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい。<br>*(Đúng. Tính phần giao thoa với nhà thầu khác là khó nhất.)* |
| Thức | はい、まず<ruby>各<rt>かく</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>日数<rt>にっすう</rt></ruby>を<ruby>見積<rt>みつ</rt></ruby>もってみます。<br>*(Vâng, trước hết em sẽ ước tính số ngày từng tầng.)* |

---

## Tình huống 2 — Bàn làm việc · 9:00, hỏi Kondo về số ngày thực tế

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>一<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>分<rt>ぶん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>を<ruby>組<rt>く</rt></ruby>むのに<ruby>何日<rt>なんにち</rt></ruby>かかりますか?<br>*(Anh Kondo, lắp giàn giáo một tầng mất mấy ngày ạ?)* |
| Kondo | この<ruby>規模<rt>きぼ</rt></ruby>なら、<ruby>人数<rt>にんずう</rt></ruby><ruby>次第<rt>しだい</rt></ruby>だが<ruby>二日<rt>ふつか</rt></ruby>はみておけ。<br>*(Quy mô này, tuỳ số người nhưng phải tính hai ngày.)* |
| Thức | <ruby>天候<rt>てんこう</rt></ruby>で<ruby>遅<rt>おく</rt></ruby>れることもありますか?<br>*(Có khi vì thời tiết mà chậm không ạ?)* |
| Kondo | <ruby>強風<rt>きょうふう</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>は<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>だ。<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>たせろ。<br>*(Ngày gió mạnh thì dừng làm trên cao. Phải để dư.)* |
| Thức | では<ruby>予備日<rt>よびび</rt></ruby>を<ruby>各<rt>かく</rt></ruby><ruby>階<rt>かい</rt></ruby>に<ruby>半日<rt>はんにち</rt></ruby>ずつ<ruby>入<rt>い</rt></ruby>れます。<br>*(Vậy em sẽ chèn ngày dự phòng mỗi tầng nửa ngày.)* |
| Kondo | それくらいが<ruby>現実的<rt>げんじつてき</rt></ruby>だな。<br>*(Tầm đó là sát thực tế đấy.)* |

---

## Tình huống 3 — Bàn làm việc · 10:00, Thức trình bản nháp 工程表 cho Saito

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>工程表<rt>こうていひょう</rt></ruby>の<ruby>案<rt>あん</rt></ruby>ができました。ご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Anh Saito, em đã làm xong bản nháp tiến độ. Anh xem giúp.)* |
| Saito | …<ruby>各<rt>かく</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>二日<rt>ふつか</rt></ruby><ruby>半<rt>はん</rt></ruby>か。<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>立上<rt>たちあ</rt></ruby>げが<ruby>少<rt>すこ</rt></ruby>し<ruby>遅<rt>おそ</rt></ruby>いな。<br>*(…Mỗi tầng hai ngày rưỡi à. Khởi động tầng ba hơi muộn nhỉ.)* |
| Thức | <ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>は<ruby>鉄筋<rt>てっきん</rt></ruby>の<ruby>配筋<rt>はいきん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>を<ruby>待<rt>ま</rt></ruby>つ<ruby>必要<rt>ひつよう</rt></ruby>があると<ruby>考<rt>かんが</rt></ruby>えました。<br>*(Em nghĩ tầng ba cần chờ thợ sắt xong phần đặt thép.)* |
| Saito | <ruby>判断<rt>はんだん</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しい。だが、<ruby>北面<rt>きためん</rt></ruby>だけ<ruby>先<rt>さき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げられないか?<br>*(Phán đoán đúng. Nhưng riêng mặt bắc nâng trước được không?)* |
| Thức | なるほど、<ruby>面<rt>めん</rt></ruby>ごとに<ruby>分<rt>わ</rt></ruby>けて<ruby>進<rt>すす</rt></ruby>めるんですね。<ruby>修正<rt>しゅうせい</rt></ruby>します。<br>*(Ra vậy, chia theo từng mặt mà tiến hành nhỉ. Em sẽ chỉnh lại.)* |
| Saito | そうやって<ruby>工夫<rt>くふう</rt></ruby>するのが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だ。<br>*(Biết xoay xở như vậy chính là việc của đốc công.)* |

---

## Tình huống 4 — Phòng họp công trường · 13:30, vào họp 工程打合せ với 石川さん

| Vai | Lời thoại |
|---|---|
| Ishikawa | では<ruby>週<rt>しゅう</rt></ruby><ruby>例<rt>れい</rt></ruby>の<ruby>打合<rt>うちあ</rt></ruby>せを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>、トゥックさんお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy bắt đầu họp định kỳ tuần. Bên giàn giáo, mời anh Thức.)* |
| Thức | はい。<ruby>来週<rt>らいしゅう</rt></ruby>は<ruby>二<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>足場<rt>あしば</rt></ruby>を<ruby>完了<rt>かんりょう</rt></ruby>させ、<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>北面<rt>きためん</rt></ruby>に<ruby>着手<rt>ちゃくしゅ</rt></ruby>します。<br>*(Vâng. Tuần sau hoàn thành giàn giáo tầng hai, khởi công mặt bắc tầng ba.)* |
| Ishikawa | <ruby>鉄筋<rt>てっきん</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>さんの<ruby>配筋<rt>はいきん</rt></ruby>と<ruby>重<rt>かさ</rt></ruby>なりますね。<ruby>調整<rt>ちょうせい</rt></ruby>できますか?<br>*(Trùng với phần đặt thép của nhà thầu sắt nhỉ. Điều chỉnh được không?)* |
| Thức | <ruby>南面<rt>みなみめん</rt></ruby>の<ruby>配筋<rt>はいきん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に、<ruby>私<rt>わたし</rt></ruby>たちは<ruby>北面<rt>きためん</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めれば、<ruby>干渉<rt>かんしょう</rt></ruby>しません。<br>*(Trong lúc đặt thép mặt nam, chúng tôi làm mặt bắc thì không xung đột.)* |
| Ishikawa | いい<ruby>提案<rt>ていあん</rt></ruby>です。<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>さんもそれで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Đề xuất tốt. Bên thầu sắt thế cũng ổn chứ?)* |
| Thợ sắt | こちらは<ruby>南<rt>みなみ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めるので、<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Bên tôi làm từ nam theo thứ tự nên không vấn đề.)* |

---

## Tình huống 5 — Phòng họp · 13:45, thương lượng lịch với thợ cốp pha

| Vai | Lời thoại |
|---|---|
| Thợ cốp pha | <ruby>型枠<rt>かたわく</rt></ruby><ruby>側<rt>がわ</rt></ruby>ですが、<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>が<ruby>無<rt>な</rt></ruby>いと<ruby>建込<rt>たてこ</rt></ruby>みができません。<br>*(Bên cốp pha, không có giàn giáo tầng ba thì không lắp được.)* |
| Thức | <ruby>何日<rt>なんにち</rt></ruby>までに<ruby>北面<rt>きためん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Cần giàn giáo mặt bắc trước ngày nào ạ?)* |
| Thợ cốp pha | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>には<ruby>欲<rt>ほ</rt></ruby>しいです。<br>*(Thứ tư tuần sau là muốn có rồi.)* |
| Thức | <ruby>火曜<rt>かよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>までに<ruby>北面<rt>きためん</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>せるように<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Tôi sẽ điều chỉnh để bàn giao mặt bắc tầng ba trước chiều thứ ba.)* |
| Thợ cốp pha | <ruby>助<rt>たす</rt></ruby>かります。それなら<ruby>木曜<rt>もくよう</rt></ruby>から<ruby>建込<rt>たてこ</rt></ruby>みできます。<br>*(May quá. Vậy thì thứ năm có thể lắp.)* |
| Ishikawa | では<ruby>火曜<rt>かよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>を<ruby>区切<rt>くぎ</rt></ruby>りにしましょう。トゥックさん、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy lấy mốc chiều thứ ba. Anh Thức, nhờ anh.)* |

---

## Tình huống 6 — Phòng họp · 14:00, báo cáo rủi ro thời tiết

| Vai | Lời thoại |
|---|---|
| Ishikawa | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>天気<rt>てんき</rt></ruby>はどうですか?<br>*(Thời tiết tuần sau thế nào?)* |
| Thức | <ruby>予報<rt>よほう</rt></ruby>では<ruby>木曜<rt>もくよう</rt></ruby>に<ruby>雨<rt>あめ</rt></ruby>と<ruby>強風<rt>きょうふう</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Dự báo thứ năm có khả năng mưa và gió mạnh.)* |
| Ishikawa | <ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいですね。<ruby>対策<rt>たいさく</rt></ruby>は?<br>*(Làm trên cao khó nhỉ. Biện pháp là gì?)* |
| Thức | <ruby>火曜<rt>かよう</rt></ruby>・<ruby>水曜<rt>すいよう</rt></ruby>で<ruby>北面<rt>きためん</rt></ruby>を<ruby>終<rt>お</rt></ruby>わらせ、<ruby>木曜<rt>もくよう</rt></ruby>は<ruby>地上<rt>ちじょう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>に<ruby>振<rt>ふ</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<br>*(Xong mặt bắc trong thứ ba thứ tư, thứ năm chuyển sang việc dưới mặt đất.)* |
| Ishikawa | <ruby>段取替<rt>だんどりが</rt></ruby>えまで<ruby>考<rt>かんが</rt></ruby>えてあるんですね。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Tính cả phương án đổi dây chuyền rồi à. Tôi yên tâm.)* |
| Thức | <ruby>天候<rt>てんこう</rt></ruby>は<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>して、<ruby>変<rt>か</rt></ruby>われば、すぐご<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Thời tiết tôi kiểm mỗi sáng, có biến động sẽ báo ngay.)* |

---

## Tình huống 7 — Phòng họp · 14:15, ghi nhận và phân công sau họp

| Vai | Lời thoại |
|---|---|
| Ishikawa | では<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>決定<rt>けってい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vậy xác nhận các hạng mục đã quyết hôm nay.)* |
| Thức | <ruby>一<rt>ひと</rt></ruby>つ、<ruby>火曜<rt>かよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>までに<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>北面<rt>きためん</rt></ruby><ruby>足場<rt>あしば</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Một, hoàn thành giàn giáo mặt bắc tầng ba trước chiều thứ ba.)* |
| Thức | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>木曜<rt>もくよう</rt></ruby>は<ruby>天候<rt>てんこう</rt></ruby>により<ruby>地上<rt>ちじょう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>へ<ruby>振替<rt>ふりかえ</rt></ruby>。<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Hai, thứ năm tuỳ thời tiết chuyển việc dưới đất. Hết.)* |
| Ishikawa | <ruby>復唱<rt>ふくしょう</rt></ruby>ありがとうございます。<ruby>議事録<rt>ぎじろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>します。<br>*(Cảm ơn anh nhắc lại. Tôi ghi vào biên bản.)* |
| Thức | <ruby>議事録<rt>ぎじろく</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>していただけますか?<ruby>班<rt>はん</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Biên bản sau anh chia sẻ lại được không? Tôi truyền cho tổ.)* |
| Ishikawa | もちろんです。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>にお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Tất nhiên. Trong hôm nay tôi gửi.)* |

---

## Tình huống 8 — Hành lang · 14:30, 石川さん nhận xét riêng với Thức

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>打合<rt>うちあ</rt></ruby>せでの<ruby>説明<rt>せつめい</rt></ruby>、とても<ruby>分<rt>わ</rt></ruby>かりやすかったです。<br>*(Anh Thức, phần giải thích lúc họp rất dễ hiểu.)* |
| Thức | ありがとうございます。<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>がまだ<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Cảm ơn anh. Thuật ngữ chuyên môn em vẫn chưa tự tin.)* |
| Ishikawa | <ruby>言葉<rt>ことば</rt></ruby>より、<ruby>段取<rt>だんど</rt></ruby>りの<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がしっかりしています。そこが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Hơn cả từ ngữ, cách tư duy dây chuyền của anh chắc chắn. Chỗ đó quan trọng.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からない<ruby>用語<rt>ようご</rt></ruby>は<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Thuật ngữ không hiểu em hỏi thẳng được không ạ?)* |
| Ishikawa | もちろん。<ruby>聞<rt>き</rt></ruby>く<ruby>方<rt>ほう</rt></ruby>が<ruby>間違<rt>まちが</rt></ruby>えるより<ruby>百倍<rt>ひゃくばい</rt></ruby>いいです。<br>*(Tất nhiên. Hỏi còn tốt gấp trăm lần làm sai.)* |
| Thức | はい、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, từ nay mong anh giúp đỡ.)* |

---

## Tình huống 9 — Bàn làm việc · 15:00, cập nhật 工程表 sau họp

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>打合<rt>うちあ</rt></ruby>せの<ruby>結果<rt>けっか</rt></ruby>を<ruby>工程表<rt>こうていひょう</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>しました。<br>*(Anh Saito, em đã cập nhật kết quả họp vào bảng tiến độ.)* |
| Saito | <ruby>火曜<rt>かよう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせたか。<ruby>人<rt>ひと</rt></ruby>は<ruby>足<rt>た</rt></ruby>りるのか?<br>*(Khớp với hoàn thành thứ ba à. Đủ người không?)* |
| Thức | <ruby>月曜<rt>げつよう</rt></ruby>だけ<ruby>二<rt>ふた</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>応援<rt>おうえん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできれば、<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>います。<br>*(Riêng thứ hai nếu xin được hai người hỗ trợ thì kịp.)* |
| Saito | <ruby>応援<rt>おうえん</rt></ruby>の<ruby>要請<rt>ようせい</rt></ruby>は<ruby>早<rt>はや</rt></ruby>めにな。<ruby>明日<rt>あした</rt></ruby><ruby>本社<rt>ほんしゃ</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>しろ。<br>*(Xin hỗ trợ phải sớm. Mai liên lạc công ty.)* |
| Thức | はい、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>にメールで<ruby>依頼<rt>いらい</rt></ruby>しておきます。<br>*(Vâng, trong hôm nay em gửi mail đề nghị.)* |
| Saito | <ruby>先<rt>さき</rt></ruby><ruby>回<rt>まわ</rt></ruby>りの<ruby>段取<rt>だんど</rt></ruby>りはいいぞ。<br>*(Sắp xếp đi trước một bước, tốt đấy.)* |

---

## Tình huống 10 — Bàn làm việc · 15:20, soạn mail xin hỗ trợ nhân lực

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>応援<rt>おうえん</rt></ruby><ruby>依頼<rt>いらい</rt></ruby>のメール、<ruby>表現<rt>ひょうげん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てもらえますか?<br>*(Anh Kondo, mail xin hỗ trợ, anh xem cách diễn đạt giúp em được không?)* |
| Kondo | どれどれ。…「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが」を<ruby>頭<rt>あたま</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けるといい。<br>*(Đâu nào. …Thêm "xin lỗi đã làm phiền" lên đầu thì tốt.)* |
| Thức | <ruby>日付<rt>ひづけ</rt></ruby>と<ruby>必要<rt>ひつよう</rt></ruby><ruby>人数<rt>にんずう</rt></ruby>ははっきり<ruby>書<rt>か</rt></ruby>いたほうがいいですか?<br>*(Ngày và số người cần nên ghi rõ chứ ạ?)* |
| Kondo | <ruby>当然<rt>とうぜん</rt></ruby>だ。「<ruby>月曜<rt>げつよう</rt></ruby><ruby>二<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>」と<ruby>具体的<rt>ぐたいてき</rt></ruby>にな。あいまいだと<ruby>動<rt>うご</rt></ruby>けない。<br>*(Đương nhiên. Ghi cụ thể "thứ hai hai người". Mơ hồ thì không xử lý được.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>理由<rt>りゆう</rt></ruby>も<ruby>一<rt>ひと</rt></ruby><ruby>行<rt>ぎょう</rt></ruby><ruby>添<rt>そ</rt></ruby>えます。<br>*(Hiểu rồi. Em thêm một dòng lý do nữa.)* |
| Kondo | それで<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>伝<rt>つた</rt></ruby>わる。<br>*(Thế là truyền đạt đủ rồi.)* |

---

## Tình huống 11 — Sân công trường · 8:00 thứ hai, phổ biến kế hoạch tuần cho đội

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>工程<rt>こうてい</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>火曜<rt>かよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>までに<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>北面<rt>きためん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>が<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(Phổ biến tiến độ tuần này. Mục tiêu là xong mặt bắc tầng ba trước chiều thứ ba.)* |
| Kondo | <ruby>結構<rt>けっこう</rt></ruby>タイトだな。<ruby>応援<rt>おうえん</rt></ruby>は<ruby>来<rt>く</rt></ruby>るのか?<br>*(Khá gấp nhỉ. Có hỗ trợ tới không?)* |
| Thức | はい、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>二<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>応援<rt>おうえん</rt></ruby>が<ruby>入<rt>はい</rt></ruby>ります。<ruby>無理<rt>むり</rt></ruby>な<ruby>突貫<rt>とっかん</rt></ruby>はしません。<ruby>安全<rt>あんぜん</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>です。<br>*(Vâng, hôm nay có hai người hỗ trợ. Không làm gấp ép. An toàn ưu tiên.)* |
| Nam | <ruby>遅<rt>おく</rt></ruby>れそうなときはどうしますか?<br>*(Lúc có vẻ chậm thì làm sao ạ?)* |
| Thức | すぐ<ruby>私<rt>わたし</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってください。<ruby>段取<rt>だんど</rt></ruby>りを<ruby>組<rt>く</rt></ruby>み<ruby>直<rt>なお</rt></ruby>します。<ruby>無理<rt>むり</rt></ruby>して<ruby>事故<rt>じこ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>困<rt>こま</rt></ruby>ります。<br>*(Báo em ngay. Sẽ sắp xếp lại dây chuyền. Gắng quá để tai nạn là phiền nhất.)* |
| Nam | <ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Rõ ạ.)* |

---

## Tình huống 12 — Trên giàn giáo · 11:00 thứ hai, theo dõi tiến độ thực tế

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>午前<rt>ごぜん</rt></ruby>の<ruby>進<rt>すす</rt></ruby>み<ruby>具合<rt>ぐあい</rt></ruby>はどうですか?<br>*(Anh Kondo, tiến độ buổi sáng thế nào?)* |
| Kondo | <ruby>予定<rt>よてい</rt></ruby>より<ruby>少<rt>すこ</rt></ruby>し<ruby>早<rt>はや</rt></ruby>い。<ruby>応援<rt>おうえん</rt></ruby>が<ruby>効<rt>き</rt></ruby>いてるな。<br>*(Nhanh hơn kế hoạch chút. Hỗ trợ hiệu quả đấy.)* |
| Thức | このペースなら、<ruby>火曜<rt>かよう</rt></ruby><ruby>昼<rt>ひる</rt></ruby>には<ruby>完了<rt>かんりょう</rt></ruby>できそうですね。<br>*(Nhịp này, chắc trưa thứ ba là xong nhỉ.)* |
| Kondo | <ruby>油断<rt>ゆだん</rt></ruby>は<ruby>禁物<rt>きんもつ</rt></ruby>だ。<ruby>早<rt>はや</rt></ruby>いときほどケガが<ruby>多<rt>おお</rt></ruby>い。<br>*(Không được chủ quan. Càng nhanh càng hay chấn thương.)* |
| Thức | はい。<ruby>午後<rt>ごご</rt></ruby>の<ruby>休憩<rt>きゅうけい</rt></ruby><ruby>後<rt>ご</rt></ruby>に、もう<ruby>一度<rt>いちど</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>声<rt>こえ</rt></ruby><ruby>掛<rt>か</rt></ruby>けをします。<br>*(Vâng. Sau giải lao buổi chiều, em sẽ nhắc nhở an toàn lần nữa.)* |
| Kondo | それでいい。<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くなよ。<br>*(Vậy là được. Đừng lơ là đấy.)* |

---

## Tình huống 13 — Trên giàn giáo · 15:00 thứ ba, hoàn thành đúng mốc và bàn giao

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>北面<rt>きためん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>、<ruby>予定<rt>よてい</rt></ruby>どおり<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Ishikawa, giàn giáo mặt bắc tầng ba, hoàn thành đúng kế hoạch.)* |
| Ishikawa | おお、<ruby>火曜<rt>かよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby><ruby>前<rt>まえ</rt></ruby>ですね。<ruby>立派<rt>りっぱ</rt></ruby>です。<br>*(Ồ, trước chiều thứ ba luôn. Giỏi đấy.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すり、<ruby>幅木<rt>はばき</rt></ruby>、<ruby>緊結<rt>きんけつ</rt></ruby>、<ruby>全<rt>すべ</rt></ruby>て<ruby>点検<rt>てんけん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。ご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Lan can, ván chắn chân, mối siết, đã kiểm hết. Anh xác nhận giúp.)* |
| Ishikawa | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ましょう。…<ruby>問題<rt>もんだい</rt></ruby>ありません。<ruby>型枠<rt>かたわく</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>さんに<ruby>引<rt>ひ</rt></ruby>き<ruby>渡<rt>わた</rt></ruby>します。<br>*(Cùng kiểm nào. …Không vấn đề. Tôi bàn giao cho thầu cốp pha.)* |
| Thức | <ruby>引渡<rt>ひきわた</rt></ruby>し<ruby>後<rt>ご</rt></ruby>も、<ruby>不具合<rt>ふぐあい</rt></ruby>があればすぐ<ruby>対応<rt>たいおう</rt></ruby>します。<br>*(Sau bàn giao, có trục trặc gì em xử lý ngay.)* |
| Ishikawa | <ruby>頼<rt>たの</rt></ruby>もしいですね。<br>*(Tin cậy thật đấy.)* |

---

## Tình huống 14 — Phòng họp · 13:30 tuần sau, báo tiến độ tại 打合せ kế tiếp

| Vai | Lời thoại |
|---|---|
| Ishikawa | では<ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>、<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>実績<rt>じっせき</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy bên giàn giáo, báo kết quả thực hiện tuần trước.)* |
| Thức | <ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>北面<rt>きためん</rt></ruby>は<ruby>予定<rt>よてい</rt></ruby>どおり<ruby>完了<rt>かんりょう</rt></ruby>。<ruby>南面<rt>みなみめん</rt></ruby>も<ruby>一日<rt>いちにち</rt></ruby><ruby>前倒<rt>まえだお</rt></ruby>しで<ruby>進<rt>すす</rt></ruby>みました。<br>*(Mặt bắc tầng ba xong đúng kế hoạch. Mặt nam cũng vượt trước một ngày.)* |
| Ishikawa | <ruby>前倒<rt>まえだお</rt></ruby>しですか。<ruby>何<rt>なに</rt></ruby>か<ruby>工夫<rt>くふう</rt></ruby>を?<br>*(Vượt trước à. Có sáng kiến gì không?)* |
| Thức | <ruby>資材<rt>しざい</rt></ruby>を<ruby>前日<rt>ぜんじつ</rt></ruby>に<ruby>各<rt>かく</rt></ruby><ruby>階<rt>かい</rt></ruby>へ<ruby>先行<rt>せんこう</rt></ruby><ruby>配置<rt>はいち</rt></ruby>し、<ruby>運搬<rt>うんぱん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>を<ruby>減<rt>へ</rt></ruby>らしました。<br>*(Vật tư bố trí trước lên từng tầng từ hôm trước, giảm thời gian vận chuyển.)* |
| Ishikawa | いい<ruby>改善<rt>かいぜん</rt></ruby>です。<ruby>他<rt>ほか</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>でも<ruby>参考<rt>さんこう</rt></ruby>になります。<br>*(Cải tiến hay. Công trường khác cũng học hỏi được.)* |

---

## Tình huống 15 — Phòng họp · 13:50, đề xuất điều chỉnh khi nghề khác chậm

| Vai | Lời thoại |
|---|---|
| Thợ cốp pha | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ないですが、<ruby>型枠<rt>かたわく</rt></ruby>が<ruby>二日<rt>ふつか</rt></ruby><ruby>遅<rt>おく</rt></ruby>れそうです。<br>*(Xin lỗi, cốp pha có vẻ chậm hai ngày.)* |
| Ishikawa | <ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>への<ruby>影響<rt>えいきょう</rt></ruby>はどうですか、トゥックさん?<br>*(Ảnh hưởng tới bên giàn giáo thế nào, anh Thức?)* |
| Thức | <ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>立上<rt>たちあ</rt></ruby>げが<ruby>二日<rt>ふつか</rt></ruby><ruby>後<rt>ご</rt></ruby>ろになります。その<ruby>間<rt>あいだ</rt></ruby>に<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>手直<rt>てなお</rt></ruby>しと<ruby>点検<rt>てんけん</rt></ruby>を<ruby>前<rt>まえ</rt></ruby>に<ruby>持<rt>も</rt></ruby>ってきます。<br>*(Khởi động tầng bốn sẽ lùi khoảng hai ngày. Trong lúc đó em đưa việc chỉnh sửa và kiểm tra tầng ba lên trước.)* |
| Ishikawa | <ruby>遊<rt>あそ</rt></ruby>びを<ruby>作<rt>つく</rt></ruby>らない<ruby>段取<rt>だんど</rt></ruby>りですね。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Sắp xếp không để trống nhỉ. May quá.)* |
| Thức | <ruby>遅<rt>おく</rt></ruby>れを<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>す<ruby>余地<rt>よち</rt></ruby>も<ruby>残<rt>のこ</rt></ruby>しておきます。<br>*(Em cũng để dư khoảng để gỡ lại phần chậm.)* |
| Ishikawa | では、その<ruby>方向<rt>ほうこう</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Vậy, tiến hành theo hướng đó nhé.)* |

---

## Tình huống 16 — Bàn làm việc · 15:00, báo cáo Saito phương án ứng phó

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>型枠<rt>かたわく</rt></ruby>が<ruby>二日<rt>ふつか</rt></ruby><ruby>遅<rt>おく</rt></ruby>れます。<ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby><ruby>案<rt>あん</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Saito, cốp pha chậm hai ngày. Em báo cáo phương án bên giàn giáo.)* |
| Saito | <ruby>聞<rt>き</rt></ruby>こう。<br>*(Nói nghe nào.)* |
| Thức | <ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby>を<ruby>後<rt>うし</rt></ruby>ろ<ruby>倒<rt>だお</rt></ruby>しにし、<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>を<ruby>前<rt>まえ</rt></ruby>に。<ruby>人<rt>ひと</rt></ruby>を<ruby>遊<rt>あそ</rt></ruby>ばせません。<br>*(Lùi tầng bốn lại, đưa kiểm tra tầng ba lên trước. Không để người rảnh.)* |
| Saito | <ruby>遅<rt>おく</rt></ruby>れを<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うか。いい<ruby>発想<rt>はっそう</rt></ruby>だ。<br>*(Lấy chỗ chậm mà tận dụng à. Tư duy hay.)* |
| Thức | <ruby>無駄<rt>むだ</rt></ruby>な<ruby>待<rt>ま</rt></ruby>ち<ruby>時間<rt>じかん</rt></ruby>を<ruby>減<rt>へ</rt></ruby>らすのが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>務<rt>つと</rt></ruby>めだと<ruby>学<rt>まな</rt></ruby>びました。<br>*(Em học được giảm thời gian chờ vô ích là bổn phận của đốc công.)* |

---

## Tình huống 17 — Sân công trường · 8:00, phổ biến điều chỉnh cho đội

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>連絡<rt>れんらく</rt></ruby>です。<ruby>型枠<rt>かたわく</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>さんが<ruby>遅<rt>おく</rt></ruby>れるため、<ruby>工程<rt>こうてい</rt></ruby>を<ruby>一部<rt>いちぶ</rt></ruby><ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えます。<br>*(Thông báo. Vì thầu cốp pha chậm, ta đảo một phần tiến độ.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>手直<rt>てなお</rt></ruby>しと<ruby>緊結<rt>きんけつ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>にやります。<br>*(Hôm nay làm trước chỉnh sửa và kiểm mối siết tầng ba.)* |
| Kondo | <ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>立上<rt>たちあ</rt></ruby>げは<ruby>後<rt>あと</rt></ruby>か。<ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Khởi động tầng bốn để sau à. Rõ.)* |
| Nam | <ruby>点検<rt>てんけん</rt></ruby>の<ruby>重点<rt>じゅうてん</rt></ruby>はどこですか?<br>*(Trọng điểm kiểm tra ở đâu ạ?)* |
| Thức | <ruby>緊結<rt>きんけつ</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>みと<ruby>手<rt>て</rt></ruby>すりの<ruby>外<rt>はず</rt></ruby>れです。<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Mối siết bị lỏng và lan can bị tuột. Chỉ tay xác nhận từng cái.)* |
| Nam | はい、<ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Vâng, rõ ạ.)* |

---

## Tình huống 18 — Lán công trường · 16:00, Saito nói về tư duy 工程 dài hạn

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>工程<rt>こうてい</rt></ruby>を<ruby>組<rt>く</rt></ruby>むとき、<ruby>一番<rt>いちばん</rt></ruby><ruby>気<rt>き</rt></ruby>をつけることは<ruby>何<rt>なに</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う?<br>*(Thức, khi lập tiến độ, cậu nghĩ điều cần để ý nhất là gì?)* |
| Thức | <ruby>他<rt>た</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>との<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>い、でしょうか。<br>*(Có phải phần giao thoa với nhà thầu khác không ạ?)* |
| Saito | それも<ruby>大事<rt>だいじ</rt></ruby>だが、<ruby>一番<rt>いちばん</rt></ruby>は「<ruby>狂<rt>くる</rt></ruby>った<ruby>時<rt>とき</rt></ruby>にどう<ruby>戻<rt>もど</rt></ruby>すか」だ。<br>*(Đó cũng quan trọng, nhưng nhất là "khi lệch thì gỡ lại thế nào".)* |
| Thức | <ruby>計画<rt>けいかく</rt></ruby>どおりにいかないことが<ruby>前提<rt>ぜんてい</rt></ruby>、ということですね。<br>*(Tức là lấy việc không đúng kế hoạch làm tiền đề ạ?)* |
| Saito | そうだ。<ruby>余裕<rt>よゆう</rt></ruby>と<ruby>代<rt>か</rt></ruby>わりの<ruby>手<rt>て</rt></ruby>をいくつ<ruby>持<rt>も</rt></ruby>っているか。それが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>だ。<br>*(Đúng. Có bao nhiêu dư địa và phương án thay thế. Đó là năng lực đốc công.)* |
| Thức | はい、<ruby>常<rt>つね</rt></ruby>に<ruby>次<rt>つぎ</rt></ruby>の<ruby>手<rt>て</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えておきます。<br>*(Vâng, em sẽ luôn nghĩ sẵn nước đi tiếp.)* |

---

## Tình huống 19 — Phòng nghỉ Linh nhắn tin · 21:00, động viên ngắn (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, dạo này nhắn tin trễ ghê, bận lắm à? |
| Thức | Ừ, anh đang phải tự lập bảng tiến độ cả phần giàn giáo, lại họp với kỹ sư mỗi tuần. Đầu căng nhưng học được nhiều. |
| Linh | Nghe oai ghê. Anh giờ như chỉ huy nhỏ rồi đó. |
| Thức | Cũng tập sự thôi. Nhưng anh thấy mình tiến bộ thật. Ráng thêm để sau này thi 特定技能 số 2. |
| Linh | Em ủng hộ. Mà nhớ giữ sức khoẻ, đừng thức khuya làm bảng biểu hoài. |
| Thức | Ừ anh biết. Cảm ơn em. Mai còn họp sớm, anh ngủ đây. |

---

## Tình huống 20 — Phòng họp · 13:30, 石川さん đề nghị Thức trình bày phương pháp cho cả họp

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさんの<ruby>先行<rt>せんこう</rt></ruby><ruby>配置<rt>はいち</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>、ほかの<ruby>業者<rt>ぎょうしゃ</rt></ruby>さんにも<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Cách bố trí vật tư trước của anh Thức, chia sẻ cho cả các nhà thầu khác.)* |
| Thức | はい。<ruby>資材<rt>しざい</rt></ruby>を<ruby>前日<rt>ぜんじつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う<ruby>階<rt>かい</rt></ruby>へ<ruby>分<rt>わ</rt></ruby>けて<ruby>置<rt>お</rt></ruby>く。それだけで<ruby>運搬<rt>うんぱん</rt></ruby>が<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>減<rt>へ</rt></ruby>ります。<br>*(Vâng. Chia vật tư đặt sẵn lên tầng sẽ dùng từ hôm trước. Chỉ vậy là vận chuyển giảm nhiều.)* |
| Thợ sắt | <ruby>鉄筋<rt>てっきん</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じことができそうですね。<br>*(Thợ sắt cũng làm tương tự được nhỉ.)* |
| Thức | <ruby>置<rt>お</rt></ruby>き<ruby>場<rt>ば</rt></ruby>の<ruby>確保<rt>かくほ</rt></ruby>と<ruby>養生<rt>ようじょう</rt></ruby>だけ<ruby>注意<rt>ちゅうい</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Chỉ cần chú ý đảm bảo chỗ để và che chắn là ổn.)* |
| Ishikawa | <ruby>現場<rt>げんば</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>入<rt>い</rt></ruby>れましょう。トゥックさん、ありがとうございます。<br>*(Cả công trường cùng áp dụng nhé. Anh Thức, cảm ơn anh.)* |
| Thức | とんでもないです。<ruby>全体<rt>ぜんたい</rt></ruby>が<ruby>早<rt>はや</rt></ruby>くなれば<ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>も<ruby>助<rt>たす</rt></ruby>かります。<br>*(Không có gì ạ. Cả công trường nhanh thì bên giàn giáo cũng được nhờ.)* |

---

## Đọng lại

Thức lần đầu tư duy theo dòng thời gian toàn dự án: lập 工程表, ước tính số ngày, chèn ngày dự phòng cho thời tiết, và thương lượng lịch với các nghề khác tại 工程打合せ. Bài học lớn nhất từ 斉藤職長 là "lập tiến độ phải tiền đề rằng nó sẽ lệch — quan trọng là có bao nhiêu dư địa và phương án thay thế". Tiếng Nhật nghiệp vụ chương này là ngôn ngữ kế hoạch, đề xuất, thương lượng và báo cáo phương án ứng phó. Sáng kiến bố trí vật tư trước của Thức được 石川さん cho áp dụng toàn công trường.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 工程表 | こうていひょう | bảng tiến độ thi công |
> | 打合せ | うちあわせ | họp phối hợp |
> | 取り合い | とりあい | giao thoa / xung đột công việc nhiều nghề |
> | 配筋 | はいきん | đặt bố trí cốt thép |
> | 型枠 | かたわく | cốp pha / khuôn đúc |
> | 躯体 | くたい | kết cấu thô |
> | 前倒し | まえだおし | đẩy sớm tiến độ |
> | 後ろ倒し | うしろだおし | lùi tiến độ |
> | 段取替え | だんどりがえ | đổi dây chuyền công việc |
> | 予備日 | よびび | ngày dự phòng |
> | 議事録 | ぎじろく | biên bản họp |
> | 復唱 | ふくしょう | nhắc lại để xác nhận |
> | 先行配置 | せんこうはいち | bố trí trước (vật tư) |
> | 養生 | ようじょう | che chắn bảo quản |
> | 干渉 | かんしょう | xung đột / chồng lấn |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000004, 800000037, NULL, 'markdown_book', 'T4. Soạn bản trình tự thao tác cho lắp giàn giáo cao tầng (作業手順書作成)', '# Sách kỹ năng đặc định xây dựng · T4. Soạn bản trình tự thao tác cho lắp giàn giáo cao tầng (作業手順書作成)

> **Mục tiêu nhân vật:** Thức được giao soạn 作業手順書 (bản trình tự thao tác) cho công đoạn lắp giàn giáo cao tầng — văn bản chính thức phải nộp 元請け. Học mẫu câu tiếng Nhật khi viết văn bản kỹ thuật, chia nhỏ công đoạn, gắn nguy cơ và biện pháp với từng bước, được Saito sửa, giải thích cho đội.

---

## Bối cảnh

Đầu tháng 5 năm 2030. Công trình lên tầng cao, 元請け yêu cầu 谷川組 nộp 作業手順書 cho công đoạn lắp giàn giáo từ tầng 4 trở lên. 斉藤職長 giao Thức soạn bản nháp — lần đầu Thức phải viết một văn bản kỹ thuật chính thức bằng tiếng Nhật, chia nhỏ thao tác, gắn 危険のポイント và 対策 cho từng bước. Tiếng Nhật nghiệp vụ chương này là ngôn ngữ văn bản hoá quy trình: rõ ràng, theo bước, có chủ ngữ trách nhiệm.

---

## Tình huống 1 — Văn phòng công trường · 8:00, Saito giao soạn 作業手順書

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみた</rt></ruby>ての<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってくれ。<br>*(Thức, soạn bản trình tự thao tác lắp giàn giáo từ tầng bốn trở lên cho tôi.)* |
| Thức | <ruby>元請<rt>もとうけ</rt></ruby>けに<ruby>提出<rt>ていしゅつ</rt></ruby>する<ruby>正式<rt>せいしき</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>ですよね。<ruby>私<rt>わたし</rt></ruby>でいいのですか?<br>*(Là văn bản chính thức nộp tổng thầu phải không ạ. Em làm được chứ ạ?)* |
| Saito | お<ruby>前<rt>まえ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>現場<rt>げんば</rt></ruby>を<ruby>分<rt>わ</rt></ruby>かっている。<ruby>下書<rt>したが</rt></ruby>きは<ruby>俺<rt>おれ</rt></ruby>が<ruby>直<rt>なお</rt></ruby>す。<br>*(Cậu hiểu hiện trường nhất. Bản nháp tôi sửa.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>段階<rt>だんかい</rt></ruby>ごとに<ruby>分<rt>わ</rt></ruby>けて<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Hiểu rồi ạ. Em chia công việc theo từng giai đoạn mà viết được không?)* |
| Saito | そうだ。<ruby>各<rt>かく</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>に<ruby>危険<rt>きけん</rt></ruby>のポイントと<ruby>対策<rt>たいさく</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>付<rt>つ</rt></ruby>けろ。<br>*(Đúng. Mỗi bước nhất định gắn điểm nguy hiểm và biện pháp.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>過去<rt>かこ</rt></ruby>のヒヤリハットも<ruby>参考<rt>さんこう</rt></ruby>にします。<br>*(Vâng, em rõ rồi ạ. Em sẽ tham khảo cả báo cáo suýt tai nạn trước đây.)* |

---

## Tình huống 2 — Bàn làm việc · 9:00, hỏi Kondo về phân chia công đoạn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>高層<rt>こうそう</rt></ruby><ruby>足場<rt>あしば</rt></ruby>の<ruby>組立<rt>くみた</rt></ruby>ては、<ruby>大<rt>おお</rt></ruby>きく<ruby>何<rt>いく</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けますか?<br>*(Anh Kondo, lắp giàn giáo cao tầng chia lớn thành mấy giai đoạn?)* |
| Kondo | <ruby>資材<rt>しざい</rt></ruby><ruby>揚重<rt>ようじゅう</rt></ruby>、<ruby>建地<rt>たてじ</rt></ruby><ruby>建込<rt>たてこ</rt></ruby>み、<ruby>布<rt>ぬの</rt></ruby><ruby>取付<rt>とりつけ</rt></ruby>、<ruby>床付<rt>ゆかづ</rt></ruby>け、<ruby>手<rt>て</rt></ruby>すり<ruby>取付<rt>とりつけ</rt></ruby>。だいたい<ruby>五<rt>いつ</rt></ruby>つだ。<br>*(Đưa vật tư lên cao, dựng cột đứng, lắp thanh ngang, lát sàn, lắp lan can. Cỡ năm bước.)* |
| Thức | <ruby>揚重<rt>ようじゅう</rt></ruby>のとき<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないのは<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Lúc đưa vật tư lên cao nguy hiểm nhất là gì ạ?)* |
| Kondo | <ruby>落下<rt>らっか</rt></ruby>だ。<ruby>玉掛<rt>たまが</rt></ruby>けの<ruby>不良<rt>ふりょう</rt></ruby>と、<ruby>下<rt>した</rt></ruby>の<ruby>立入<rt>たちいり</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>書<rt>か</rt></ruby>け。<br>*(Rơi vật. Móc cáp lỗi, và phải ghi việc cấm vào phía dưới.)* |
| Thức | <ruby>建込<rt>たてこ</rt></ruby>みのときは<ruby>墜落<rt>ついらく</rt></ruby>と<ruby>転倒<rt>てんとう</rt></ruby>ですね。<br>*(Lúc dựng cột thì rơi ngã và đổ ngã nhỉ.)* |
| Kondo | そうだ。<ruby>各<rt>かく</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>の<ruby>主<rt>おも</rt></ruby>な<ruby>危険<rt>きけん</rt></ruby>を<ruby>外<rt>はず</rt></ruby>すなよ。<br>*(Đúng. Nguy cơ chính từng giai đoạn đừng bỏ sót.)* |

---

## Tình huống 3 — Bàn làm việc · 10:00, viết bước 1 và hỏi cách diễn đạt

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>手順<rt>てじゅん</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>ですが、「~する」で<ruby>統一<rt>とういつ</rt></ruby>していいですか?<br>*(Anh Kondo, cách viết trình tự, em thống nhất kết câu "~する" được không?)* |
| Kondo | そうしろ。「~すること」でもいい。<ruby>命令<rt>めいれい</rt></ruby><ruby>形<rt>けい</rt></ruby>は<ruby>使<rt>つか</rt></ruby>うな。<br>*(Cứ vậy. "~すること" cũng được. Đừng dùng thể mệnh lệnh.)* |
| Thức | <ruby>誰<rt>だれ</rt></ruby>がやるかも<ruby>書<rt>か</rt></ruby>いたほうがいいですか?<br>*(Có nên ghi cả ai làm không ạ?)* |
| Kondo | <ruby>担当<rt>たんとう</rt></ruby>を<ruby>明確<rt>めいかく</rt></ruby>にな。「<ruby>合図<rt>あいず</rt></ruby><ruby>者<rt>しゃ</rt></ruby>」「<ruby>玉掛<rt>たまが</rt></ruby>け<ruby>者<rt>しゃ</rt></ruby>」と<ruby>役割<rt>やくわり</rt></ruby>で<ruby>書<rt>か</rt></ruby>く。<br>*(Phải rõ người phụ trách. Ghi theo vai "người ra hiệu", "người móc cáp".)* |
| Thức | なるほど。<ruby>役割<rt>やくわり</rt></ruby>で<ruby>書<rt>か</rt></ruby>けば<ruby>誰<rt>だれ</rt></ruby>が<ruby>読<rt>よ</rt></ruby>んでも<ruby>分<rt>わ</rt></ruby>かりますね。<br>*(Ra vậy. Ghi theo vai thì ai đọc cũng hiểu nhỉ.)* |
| Kondo | <ruby>手順書<rt>てじゅんしょ</rt></ruby>は<ruby>新人<rt>しんじん</rt></ruby>が<ruby>読<rt>よ</rt></ruby>んでも<ruby>動<rt>うご</rt></ruby>けるのが<ruby>理想<rt>りそう</rt></ruby>だ。<br>*(Bản trình tự lý tưởng là người mới đọc cũng làm được.)* |

---

## Tình huống 4 — Bàn làm việc · 11:00, tự nhẩm rà soát từng bước

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>手順<rt>てじゅん</rt></ruby><ruby>一<rt>いち</rt></ruby>、<ruby>資材<rt>しざい</rt></ruby>を<ruby>玉掛<rt>たまが</rt></ruby>けし、<ruby>合図<rt>あいず</rt></ruby><ruby>者<rt>しゃ</rt></ruby>の<ruby>合図<rt>あいず</rt></ruby>で<ruby>揚重<rt>ようじゅう</rt></ruby>する。<br>*(Bước 1, móc cáp vật tư, đưa lên cao theo hiệu của người ra hiệu.)* |
| Thức | <ruby>危険<rt>きけん</rt></ruby>ポイント、<ruby>玉掛<rt>たまが</rt></ruby>け<ruby>不良<rt>ふりょう</rt></ruby>による<ruby>落下<rt>らっか</rt></ruby>。<br>*(Điểm nguy hiểm, rơi vật do móc cáp lỗi.)* |
| Thức | <ruby>対策<rt>たいさく</rt></ruby>、<ruby>玉掛<rt>たまが</rt></ruby>け<ruby>前<rt>まえ</rt></ruby>に<ruby>点検<rt>てんけん</rt></ruby>。<ruby>吊<rt>つ</rt></ruby><ruby>荷<rt>に</rt></ruby><ruby>下<rt>した</rt></ruby>を<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>とする。<br>*(Biện pháp, kiểm tra trước khi móc cáp. Cấm vào dưới vật cẩu.)* |
| Thức | (tự nói) <ruby>主語<rt>しゅご</rt></ruby>がない<ruby>文<rt>ぶん</rt></ruby>があるな。<ruby>直<rt>なお</rt></ruby>そう。<br>*(Có câu thiếu chủ ngữ nhỉ. Sửa lại nào.)* |
| Thức | <ruby>合図<rt>あいず</rt></ruby><ruby>者<rt>しゃ</rt></ruby>は<ruby>吊<rt>つ</rt></ruby><ruby>荷<rt>に</rt></ruby><ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>がいないことを<ruby>確認<rt>かくにん</rt></ruby>する、と。<br>*(Người ra hiệu xác nhận không có ai dưới vật cẩu, vậy là được.)* |
| Thức | これで<ruby>責任<rt>せきにん</rt></ruby>がはっきりする。<br>*(Thế này trách nhiệm rõ ràng.)* |

---

## Tình huống 5 — Bàn làm việc · 13:30, trình bản nháp cho Saito

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>手順書<rt>てじゅんしょ</rt></ruby>の<ruby>下書<rt>したが</rt></ruby>きができました。<br>*(Anh Saito, em đã làm xong bản nháp trình tự.)* |
| Saito | …<ruby>五<rt>ご</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>、よくまとまっている。だが<ruby>手順<rt>てじゅん</rt></ruby><ruby>三<rt>さん</rt></ruby>が<ruby>大<rt>おお</rt></ruby>まかすぎる。<br>*(…Năm bước, gọn đấy. Nhưng bước ba sơ sài quá.)* |
| Thức | <ruby>布<rt>ぬの</rt></ruby><ruby>取付<rt>とりつけ</rt></ruby>のところですね。もっと<ruby>細<rt>こま</rt></ruby>かく<ruby>分<rt>わ</rt></ruby>けますか?<br>*(Chỗ lắp thanh ngang phải không ạ. Chia nhỏ hơn ạ?)* |
| Saito | <ruby>移動<rt>いどう</rt></ruby>と<ruby>取付<rt>とりつけ</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けろ。<ruby>移動<rt>いどう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>の<ruby>墜落<rt>ついらく</rt></ruby>が<ruby>抜<rt>ぬ</rt></ruby>けている。<br>*(Tách di chuyển với lắp đặt ra. Đang sót nguy cơ rơi khi di chuyển.)* |
| Thức | <ruby>確<rt>たし</rt></ruby>かに。<ruby>移動<rt>いどう</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>二丁掛<rt>にちょうが</rt></ruby>けを<ruby>独立<rt>どくりつ</rt></ruby>した<ruby>手順<rt>てじゅん</rt></ruby>にします。<br>*(Đúng thật. Em sẽ tách móc hai móc khi di chuyển thành bước riêng.)* |
| Saito | そうだ。<ruby>事故<rt>じこ</rt></ruby>は<ruby>手順<rt>てじゅん</rt></ruby>の<ruby>切<rt>き</rt></ruby>れ<ruby>目<rt>め</rt></ruby>で<ruby>起<rt>お</rt></ruby>きる。<br>*(Đúng. Tai nạn xảy ra ở chỗ chuyển tiếp giữa các bước.)* |

---

## Tình huống 6 — Bàn làm việc · 14:00, Saito sửa cách dùng từ

| Vai | Lời thoại |
|---|---|
| Saito | この「<ruby>気<rt>き</rt></ruby>をつける」は<ruby>曖昧<rt>あいまい</rt></ruby>だ。<ruby>何<rt>なに</rt></ruby>をどうするか<ruby>書<rt>か</rt></ruby>け。<br>*(Cái "chú ý" này mơ hồ. Phải viết làm gì làm sao.)* |
| Thức | 「<ruby>足元<rt>あしもと</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>」ではなく、「<ruby>足元<rt>あしもと</rt></ruby>の<ruby>突起<rt>とっき</rt></ruby><ruby>物<rt>ぶつ</rt></ruby>を<ruby>除去<rt>じょきょ</rt></ruby>する」ですね。<br>*(Không phải "chú ý chỗ đứng" mà "loại bỏ vật nhô ở chỗ đứng" nhỉ.)* |
| Saito | そのとおり。<ruby>動作<rt>どうさ</rt></ruby>で<ruby>書<rt>か</rt></ruby>けば<ruby>誰<rt>だれ</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じことをやる。<br>*(Đúng vậy. Viết theo động tác thì ai cũng làm như nhau.)* |
| Thức | <ruby>抽象<rt>ちゅうしょう</rt></ruby><ruby>的<rt>てき</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>を<ruby>具体<rt>ぐたい</rt></ruby><ruby>動作<rt>どうさ</rt></ruby>に<ruby>直<rt>なお</rt></ruby>します。<br>*(Em sẽ đổi từ trừu tượng thành động tác cụ thể.)* |
| Saito | <ruby>手順書<rt>てじゅんしょ</rt></ruby>は<ruby>作文<rt>さくぶん</rt></ruby>じゃない。<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>道具<rt>どうぐ</rt></ruby>だ。<br>*(Bản trình tự không phải bài văn. Là công cụ giữ mạng người.)* |
| Thức | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em sẽ khắc cốt ghi tâm.)* |

---

## Tình huống 7 — Bàn làm việc · 15:00, hoàn thiện bản chỉnh sửa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>修正<rt>しゅうせい</rt></ruby><ruby>版<rt>ばん</rt></ruby>です。<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>六<rt>ろく</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>にしました。<br>*(Anh Saito, bản chỉnh sửa đây. Em làm thành sáu bước.)* |
| Saito | <ruby>移動<rt>いどう</rt></ruby>を<ruby>独立<rt>どくりつ</rt></ruby>させたな。<ruby>危険<rt>きけん</rt></ruby>と<ruby>対策<rt>たいさく</rt></ruby>も<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>になった。<br>*(Tách di chuyển ra rồi. Nguy cơ với biện pháp cũng cụ thể hơn.)* |
| Thức | <ruby>最後<rt>さいご</rt></ruby>に<ruby>使用<rt>しよう</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby>と<ruby>保護<rt>ほご</rt></ruby><ruby>具<rt>ぐ</rt></ruby>の<ruby>一覧<rt>いちらん</rt></ruby>も<ruby>付<rt>つ</rt></ruby>けました。<br>*(Cuối cùng em gắn cả danh mục dụng cụ và đồ bảo hộ.)* |
| Saito | <ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くな。これなら<ruby>元請<rt>もとうけ</rt></ruby>けに<ruby>出<rt>だ</rt></ruby>せる。<br>*(Tinh ý đấy. Thế này nộp tổng thầu được.)* |
| Thức | ありがとうございます。<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Cảm ơn anh. Anh kiểm tra lần cuối giúp em được không?)* |
| Saito | <ruby>俺<rt>おれ</rt></ruby>が<ruby>判<rt>はん</rt></ruby>を<ruby>押<rt>お</rt></ruby>す。よく<ruby>書<rt>か</rt></ruby>けている。<br>*(Tôi đóng dấu. Viết tốt lắm.)* |

---

## Tình huống 8 — Văn phòng công trường · 15:30, nộp 石川さん

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみた</rt></ruby>ての<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Anh Ishikawa, em nộp bản trình tự lắp giàn giáo từ tầng bốn trở lên.)* |
| Ishikawa | ありがとうございます。<ruby>拝見<rt>はいけん</rt></ruby>します。…<ruby>危険<rt>きけん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>が<ruby>手順<rt>てじゅん</rt></ruby>ごとに<ruby>明確<rt>めいかく</rt></ruby>ですね。<br>*(Cảm ơn anh. Để tôi xem. …Biện pháp gắn rõ từng bước nhỉ.)* |
| Thức | <ruby>移動<rt>いどう</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>墜落<rt>ついらく</rt></ruby>を<ruby>独立<rt>どくりつ</rt></ruby>した<ruby>手順<rt>てじゅん</rt></ruby>にしてあります。<br>*(Nguy cơ rơi khi di chuyển em tách thành bước riêng.)* |
| Ishikawa | そこは<ruby>事故<rt>じこ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い<ruby>箇所<rt>かしょ</rt></ruby>です。よく<ruby>分<rt>わ</rt></ruby>かっていますね。<br>*(Chỗ đó hay tai nạn. Anh nắm rõ thật.)* |
| Thức | <ruby>不足<rt>ふそく</rt></ruby>があればご<ruby>指摘<rt>してき</rt></ruby>ください。すぐ<ruby>修正<rt>しゅうせい</rt></ruby>します。<br>*(Có thiếu sót anh chỉ ra giúp. Em sửa ngay.)* |
| Ishikawa | <ruby>元請<rt>もとうけ</rt></ruby>けの<ruby>安全<rt>あんぜん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>にも<ruby>回<rt>まわ</rt></ruby>します。<ruby>良<rt>よ</rt></ruby>い<ruby>出来<rt>でき</rt></ruby>です。<br>*(Tôi chuyển cả phụ trách an toàn tổng thầu. Làm tốt lắm.)* |

---

## Tình huống 9 — Hành lang · 15:45, 石川さん góp ý nhỏ

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>一<rt>ひと</rt></ruby>つだけ。<ruby>強風<rt>きょうふう</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>中止<rt>ちゅうし</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>を<ruby>数字<rt>すうじ</rt></ruby>で<ruby>入<rt>い</rt></ruby>れてください。<br>*(Anh Thức, một điểm thôi. Tiêu chuẩn dừng khi gió mạnh hãy ghi bằng con số.)* |
| Thức | <ruby>風速<rt>ふうそく</rt></ruby><ruby>10<rt>じゅう</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>で<ruby>中止<rt>ちゅうし</rt></ruby>、と<ruby>明記<rt>めいき</rt></ruby>すればいいですか?<br>*(Ghi rõ "gió từ 10 mét/giây trở lên thì dừng" được không ạ?)* |
| Ishikawa | そうです。<ruby>判断<rt>はんだん</rt></ruby>に<ruby>迷<rt>まよ</rt></ruby>わせない<ruby>数字<rt>すうじ</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Đúng. Con số để không phải phân vân khi quyết định là quan trọng.)* |
| Thức | <ruby>数字<rt>すうじ</rt></ruby>があれば<ruby>誰<rt>だれ</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じ<ruby>判断<rt>はんだん</rt></ruby>ができますね。<br>*(Có con số thì ai cũng quyết định như nhau nhỉ.)* |
| Ishikawa | そこが<ruby>手順書<rt>てじゅんしょ</rt></ruby>の<ruby>狙<rt>ねら</rt></ruby>いです。<br>*(Đó chính là mục đích của bản trình tự.)* |
| Thức | はい、すぐ<ruby>追記<rt>ついき</rt></ruby>します。ありがとうございます。<br>*(Vâng, em bổ sung ngay. Cảm ơn anh.)* |

---

## Tình huống 10 — Bàn làm việc · 16:00, bổ sung tiêu chuẩn số

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>中止<rt>ちゅうし</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>風速<rt>ふうそく</rt></ruby>だけでいいですか?<br>*(Anh Kondo, tiêu chuẩn dừng chỉ ghi gió thôi được không ạ?)* |
| Kondo | <ruby>降雨<rt>こうう</rt></ruby>と<ruby>雷<rt>かみなり</rt></ruby>も<ruby>入<rt>い</rt></ruby>れろ。<ruby>濡<rt>ぬ</rt></ruby>れた<ruby>足場<rt>あしば</rt></ruby>は<ruby>滑<rt>すべ</rt></ruby>る。<br>*(Thêm mưa và sấm vào. Giàn giáo ướt thì trơn.)* |
| Thức | <ruby>雷<rt>かみなり</rt></ruby><ruby>注意報<rt>ちゅういほう</rt></ruby>で<ruby>即<rt>そく</rt></ruby><ruby>退避<rt>たいひ</rt></ruby>、と<ruby>書<rt>か</rt></ruby>きます。<br>*(Em ghi "có cảnh báo sấm thì lánh ngay".)* |
| Kondo | それでいい。<ruby>金属<rt>きんぞく</rt></ruby><ruby>足場<rt>あしば</rt></ruby>は<ruby>雷<rt>かみなり</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>いからな。<br>*(Vậy được. Giàn giáo kim loại thì sấm đáng sợ thật đấy.)* |
| Thức | <ruby>経験<rt>けいけん</rt></ruby>からの<ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>助<rt>たす</rt></ruby>かります。<br>*(Điểm lưu ý từ kinh nghiệm, may quá.)* |
| Kondo | <ruby>手順書<rt>てじゅんしょ</rt></ruby>に<ruby>現場<rt>げんば</rt></ruby>の<ruby>知恵<rt>ちえ</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>すんだ。<br>*(Lưu trí tuệ hiện trường vào bản trình tự đấy.)* |

---

## Tình huống 11 — Sân công trường · 8:00, phổ biến 手順書 cho đội trước khi áp dụng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>足場<rt>あしば</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Từ hôm nay giàn giáo tầng bốn áp dụng bản trình tự mới.)* |
| Kondo | <ruby>変<rt>か</rt></ruby>わった<ruby>点<rt>てん</rt></ruby>はどこだ?<br>*(Chỗ thay đổi là đâu?)* |
| Thức | <ruby>移動<rt>いどう</rt></ruby>が<ruby>独立<rt>どくりつ</rt></ruby>した<ruby>手順<rt>てじゅん</rt></ruby>になりました。<ruby>移動<rt>いどう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えを<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>します。<br>*(Di chuyển thành bước riêng. Trước khi di chuyển nhất định hô việc đổi móc.)* |
| Nam | <ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すのはなぜですか?<br>*(Sao phải hô ra tiếng ạ?)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>でき、<ruby>周<rt>まわ</rt></ruby>りも<ruby>気<rt>き</rt></ruby>づけるからです。<ruby>無<rt>む</rt></ruby><ruby>意識<rt>いしき</rt></ruby>の<ruby>外<rt>はず</rt></ruby>しを<ruby>防<rt>ふせ</rt></ruby>ぎます。<br>*(Để tự kiểm tra được, người xung quanh cũng nhận ra. Ngừa việc tháo móc vô thức.)* |
| Nam | なるほど、<ruby>理由<rt>りゆう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かると<ruby>守<rt>まも</rt></ruby>りやすいです。<br>*(Ra vậy, hiểu lý do thì dễ tuân thủ hơn.)* |

---

## Tình huống 12 — Trên giàn giáo · 10:30, kiểm tra đội làm đúng 手順書 chưa

| Vai | Lời thoại |
|---|---|
| Thức | フンくん、<ruby>今<rt>いま</rt></ruby>の<ruby>移動<rt>いどう</rt></ruby>、<ruby>手順書<rt>てじゅんしょ</rt></ruby>どおりにできていましたか?<br>*(Hùng, di chuyển vừa rồi, em làm đúng bản trình tự chưa?)* |
| Hùng | はい、「<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えます」と<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してから<ruby>移動<rt>いどう</rt></ruby>しました。<br>*(Vâng, em hô "đổi móc" rồi mới di chuyển.)* |
| Thức | いいですね。<ruby>片方<rt>かたほう</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けてから、もう<ruby>片方<rt>かたほう</rt></ruby>を<ruby>外<rt>はず</rt></ruby>す<ruby>順<rt>じゅん</rt></ruby>も<ruby>守<rt>まも</rt></ruby>れていました。<br>*(Tốt. Thứ tự móc một bên rồi tháo bên kia em cũng giữ được.)* |
| Hùng | <ruby>手順<rt>てじゅん</rt></ruby>が<ruby>体<rt>からだ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってきました。<br>*(Trình tự ngấm vào người rồi ạ.)* |
| Thức | その<ruby>調子<rt>ちょうし</rt></ruby>。<ruby>習慣<rt>しゅうかん</rt></ruby>になれば<ruby>事故<rt>じこ</rt></ruby>は<ruby>減<rt>へ</rt></ruby>ります。<br>*(Cứ đà đó. Thành thói quen thì tai nạn giảm.)* |
| Hùng | はい、<ruby>毎回<rt>まいかい</rt></ruby><ruby>必<rt>かなら</rt></ruby>ずやります。<br>*(Vâng, lần nào em cũng làm.)* |

---

## Tình huống 13 — Trên giàn giáo · 11:00, phát hiện bước thực tế khác 手順書

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>手順書<rt>てじゅんしょ</rt></ruby>では<ruby>布<rt>ぬの</rt></ruby><ruby>先<rt>さき</rt></ruby>だが、<ruby>現場<rt>げんば</rt></ruby>では<ruby>腕木<rt>うでぎ</rt></ruby>を<ruby>先<rt>さき</rt></ruby>にやったほうが<ruby>安全<rt>あんぜん</rt></ruby>だ。<br>*(Thức, bản trình tự ghi thanh ngang trước, nhưng thực tế lắp thanh đỡ trước thì an toàn hơn.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Thật ạ. Anh nói lý do cho em với.)* |
| Kondo | <ruby>腕木<rt>うでぎ</rt></ruby>が<ruby>先<rt>さき</rt></ruby>なら<ruby>足<rt>あし</rt></ruby>を<ruby>掛<rt>か</rt></ruby>ける<ruby>場所<rt>ばしょ</rt></ruby>ができる。<ruby>布<rt>ぬの</rt></ruby><ruby>先<rt>さき</rt></ruby>だと<ruby>無理<rt>むり</rt></ruby>な<ruby>体勢<rt>たいせい</rt></ruby>になる。<br>*(Thanh đỡ trước thì có chỗ đặt chân. Thanh ngang trước thì tư thế gò bó.)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby>のほうが<ruby>正<rt>ただ</rt></ruby>しいですね。<ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>改訂<rt>かいてい</rt></ruby>します。<br>*(Thực tế đúng hơn nhỉ. Em sẽ sửa đổi bản trình tự.)* |
| Kondo | <ruby>勝手<rt>かって</rt></ruby>に<ruby>変<rt>か</rt></ruby>えるなよ。<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>してからだ。<br>*(Đừng tự ý đổi. Phải trao đổi với đốc công đã.)* |
| Thức | はい、<ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>して、<ruby>正式<rt>せいしき</rt></ruby>に<ruby>改訂<rt>かいてい</rt></ruby>します。<br>*(Vâng, em báo cáo anh Saito rồi sửa đổi chính thức.)* |

---

## Tình huống 14 — Văn phòng công trường · 13:00, đề xuất cải tiến 手順書

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>手順書<rt>てじゅんしょ</rt></ruby>の<ruby>改訂<rt>かいてい</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>です。<ruby>布<rt>ぬの</rt></ruby>と<ruby>腕木<rt>うでぎ</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えたいです。<br>*(Anh Saito, em đề xuất sửa đổi bản trình tự. Em muốn đảo thứ tự thanh ngang với thanh đỡ.)* |
| Saito | <ruby>理由<rt>りゆう</rt></ruby>は?<br>*(Lý do?)* |
| Thức | <ruby>腕木<rt>うでぎ</rt></ruby>を<ruby>先<rt>さき</rt></ruby>にすると<ruby>足場<rt>あしば</rt></ruby>になり、<ruby>無理<rt>むり</rt></ruby>な<ruby>体勢<rt>たいせい</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げます。<ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>指摘<rt>してき</rt></ruby>です。<br>*(Thanh đỡ trước thì thành chỗ đặt chân, ngừa tư thế gò bó. Anh Kondo chỉ ra.)* |
| Saito | <ruby>現場<rt>げんば</rt></ruby>から<ruby>出<rt>で</rt></ruby>た<ruby>改善<rt>かいぜん</rt></ruby>はいい。<ruby>改訂<rt>かいてい</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>して、<ruby>元請<rt>もとうけ</rt></ruby>けにも<ruby>連絡<rt>れんらく</rt></ruby>しろ。<br>*(Cải tiến từ hiện trường là tốt. Lưu lịch sử sửa đổi, báo cả tổng thầu.)* |
| Thức | はい。<ruby>版<rt>ばん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>を<ruby>更新<rt>こうしん</rt></ruby>し、<ruby>変更<rt>へんこう</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>明記<rt>めいき</rt></ruby>します。<br>*(Vâng. Em cập nhật số phiên bản, ghi rõ điểm thay đổi.)* |
| Saito | <ruby>書類<rt>しょるい</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby>もできるようになったな。<br>*(Quản lý văn bản cũng làm được rồi đấy.)* |

---

## Tình huống 15 — Văn phòng công trường · 13:30, báo cải tiến cho 石川さん

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>第二<rt>だいに</rt></ruby><ruby>版<rt>ばん</rt></ruby>に<ruby>改訂<rt>かいてい</rt></ruby>しました。<br>*(Anh Ishikawa, em đã sửa bản trình tự lên phiên bản hai.)* |
| Ishikawa | <ruby>変更<rt>へんこう</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Điểm thay đổi là gì?)* |
| Thức | <ruby>布<rt>ぬの</rt></ruby>と<ruby>腕木<rt>うでぎ</rt></ruby>の<ruby>取付<rt>とりつけ</rt></ruby><ruby>順<rt>じゅん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えました。<ruby>無理<rt>むり</rt></ruby>な<ruby>体勢<rt>たいせい</rt></ruby>を<ruby>減<rt>へ</rt></ruby>らすためです。<br>*(Đảo thứ tự lắp thanh ngang và thanh đỡ. Để giảm tư thế gò bó.)* |
| Ishikawa | <ruby>現場<rt>げんば</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>を<ruby>反映<rt>はんえい</rt></ruby>した<ruby>改訂<rt>かいてい</rt></ruby>ですね。こういう<ruby>更新<rt>こうしん</rt></ruby>こそ<ruby>価値<rt>かち</rt></ruby>があります。<br>*(Sửa đổi phản ánh tiếng nói hiện trường nhỉ. Cập nhật như vậy mới có giá trị.)* |
| Thức | <ruby>改訂<rt>かいてい</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>も<ruby>表<rt>ひょう</rt></ruby>にまとめてあります。<br>*(Lịch sử sửa đổi em cũng lập thành bảng.)* |
| Ishikawa | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>他<rt>ほか</rt></ruby>の<ruby>業者<rt>ぎょうしゃ</rt></ruby>にも<ruby>見本<rt>みほん</rt></ruby>として<ruby>見<rt>み</rt></ruby>せたいくらいです。<br>*(Hoàn hảo. Muốn cho cả nhà thầu khác xem làm mẫu luôn.)* |

---

## Tình huống 16 — Lán công trường · 16:00, Saito nói về ý nghĩa 手順書

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてみて<ruby>何<rt>なに</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かった?<br>*(Thức, viết bản trình tự rồi cậu hiểu được gì?)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>が「なんとなく」やっていたことを、<ruby>言葉<rt>ことば</rt></ruby>にする<ruby>難<rt>むずか</rt></ruby>しさです。<br>*(Cái khó của việc diễn đạt thành lời những gì mình "làm theo cảm giác".)* |
| Saito | そこだ。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えていることを<ruby>人<rt>ひと</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>せて、<ruby>初<rt>はじ</rt></ruby>めて<ruby>職長<rt>しょくちょう</rt></ruby>だ。<br>*(Chính chỗ đó. Truyền được cho người cái cơ thể đã nhớ, mới là đốc công.)* |
| Thức | <ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>す<ruby>仕事<rt>しごと</rt></ruby>でもあるんですね。<br>*(Còn là công việc lưu lại kỹ thuật nữa nhỉ.)* |
| Saito | そうだ。<ruby>職人<rt>しょくにん</rt></ruby>が<ruby>辞<rt>や</rt></ruby>めても<ruby>技<rt>わざ</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>る。それが<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>財産<rt>ざいさん</rt></ruby>だ。<br>*(Đúng. Thợ nghỉ thì kỹ thuật vẫn còn. Đó là tài sản của công ty.)* |
| Thức | はい、<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>せる<ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em sẽ tiếp tục viết bản trình tự để lại cho đàn em.)* |

---

## Tình huống 17 — Ký túc xá · 19:30, Thức giải thích 手順書 cho Nam

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順書<rt>てじゅんしょ</rt></ruby>って、ただの<ruby>書類<rt>しょるい</rt></ruby>じゃないんですね。<br>*(Anh Thức, bản trình tự thao tác không chỉ là giấy tờ nhỉ.)* |
| Thức | そう。これがあれば、<ruby>俺<rt>おれ</rt></ruby>がいなくても<ruby>同<rt>おな</rt></ruby>じ<ruby>安全<rt>あんぜん</rt></ruby>な<ruby>作業<rt>さぎょう</rt></ruby>ができる。<br>*(Đúng. Có nó thì không có anh, vẫn làm việc an toàn như nhau được.)* |
| Nam | <ruby>書<rt>か</rt></ruby>くコツはありますか?<br>*(Có bí quyết viết không ạ?)* |
| Thức | 「<ruby>気<rt>き</rt></ruby>をつける」じゃなく、「<ruby>何<rt>なに</rt></ruby>をどうする」と<ruby>動作<rt>どうさ</rt></ruby>で<ruby>書<rt>か</rt></ruby>くこと。<br>*(Không viết "chú ý" mà viết theo động tác "làm gì làm sao".)* |
| Nam | <ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>書<rt>か</rt></ruby>く、ですね。<ruby>練習<rt>れんしゅう</rt></ruby>してみます。<br>*(Viết cụ thể nhỉ. Em sẽ thử tập.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>得意<rt>とくい</rt></ruby>な<ruby>作業<rt>さぎょう</rt></ruby>から<ruby>書<rt>か</rt></ruby>くといいよ。<br>*(Viết từ việc mình thạo nhất là tốt nhất.)* |

---

## Tình huống 18 — Phòng nghỉ Linh gọi điện · 21:00, kể chuyện soạn văn bản (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, nay anh kể giọng vui ghê. Có chuyện gì hay à? |
| Thức | Ừ, anh viết được một bản quy trình kỹ thuật bằng tiếng Nhật, kỹ sư khen, bảo muốn cho nhà thầu khác xem làm mẫu. |
| Linh | Trời, hồi xưa anh đọc menu còn ngại, giờ viết cả văn bản kỹ thuật rồi. |
| Thức | Anh cũng bất ngờ. Cứ làm từng chút là tiến. Anh tính cuối năm thi thêm chứng chỉ nghề, rồi hướng tới 特定技能 số 2. |
| Linh | Em mừng cho anh. Mà nhớ ngủ đủ, đừng viết tài liệu tới khuya. |
| Thức | Ừ, anh biết. Cảm ơn em đã nghe anh kể. |

---

## Tình huống 19 — Sân công trường · 8:00, đội phản hồi tích cực về 手順書 mới

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>改訂<rt>かいてい</rt></ruby><ruby>版<rt>ばん</rt></ruby>になってから<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>になったとみんな<ruby>言<rt>い</rt></ruby>ってるぞ。<br>*(Thức, từ khi có bản sửa đổi mọi người bảo làm việc nhẹ hơn đấy.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。それは<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Thật ạ. Em mừng quá.)* |
| Nam | <ruby>腕木<rt>うでぎ</rt></ruby><ruby>先<rt>さき</rt></ruby>だと<ruby>体<rt>からだ</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>します。<ruby>怖<rt>こわ</rt></ruby>さが<ruby>減<rt>へ</rt></ruby>りました。<br>*(Thanh đỡ trước thì người vững. Bớt sợ rồi ạ.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby>と<ruby>作業<rt>さぎょう</rt></ruby>のしやすさは<ruby>両立<rt>りょうりつ</rt></ruby>できるんです。<br>*(An toàn và dễ làm có thể song hành.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>の<ruby>手順書<rt>てじゅんしょ</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby><ruby>目線<rt>めせん</rt></ruby>だ。だから<ruby>守<rt>まも</rt></ruby>られる。<br>*(Bản trình tự của cậu theo góc nhìn hiện trường. Nên người ta tuân thủ được.)* |
| Thức | これからも<ruby>現場<rt>げんば</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて<ruby>直<rt>なお</rt></ruby>していきます。<br>*(Từ nay em vẫn lắng nghe hiện trường mà sửa.)* |

---

## Tình huống 20 — Văn phòng công trường · 13:30, 石川さん nhờ Thức chia sẻ kinh nghiệm soạn

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>他<rt>た</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>さんに<ruby>手順書<rt>てじゅんしょ</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>してくれませんか?<br>*(Anh Thức, anh nói chút về cách viết bản trình tự cho các đốc công nhà thầu khác được không?)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>でよろしければ。<ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>は<ruby>使<rt>つか</rt></ruby>えませんが。<br>*(Nếu được em thì xin ạ. Em không dùng được từ khó đâu.)* |
| Ishikawa | <ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>はいりません。<ruby>動作<rt>どうさ</rt></ruby>で<ruby>書<rt>か</rt></ruby>く、その<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Không cần từ khó. Hãy truyền cách tư duy viết theo động tác.)* |
| Thức | はい。<ruby>読<rt>よ</rt></ruby>む<ruby>人<rt>ひと</rt></ruby>が<ruby>迷<rt>まよ</rt></ruby>わないように<ruby>数字<rt>すうじ</rt></ruby>と<ruby>動作<rt>どうさ</rt></ruby>で<ruby>書<rt>か</rt></ruby>く。それを<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>話<rt>はな</rt></ruby>します。<br>*(Vâng. Viết bằng con số và động tác để người đọc không phân vân. Em sẽ nói quanh điểm đó.)* |
| Ishikawa | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>が<ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>える。いい<ruby>現場<rt>げんば</rt></ruby>になってきました。<br>*(Người nước ngoài có tay nghề lại dạy về bản trình tự. Công trường tốt dần lên đấy.)* |
| Thức | ありがとうございます。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Cảm ơn anh. Em sẽ chuẩn bị hết sức.)* |

---

## Đọng lại

Thức lần đầu văn bản hoá quy trình thi công thành 作業手順書 chính thức nộp 元請け. Khó nhất không phải tiếng Nhật mà là diễn đạt được những gì cơ thể "làm theo cảm giác" thành câu chữ rõ ràng — viết theo động tác cụ thể, gắn nguy cơ và biện pháp số hoá cho từng bước. Qua góp ý của Saito, Kondo và 石川さん, Thức học cách quản lý phiên bản, ghi lịch sử sửa đổi và tiếp thu cải tiến từ hiện trường. Bài học cốt lõi: bản trình tự là công cụ giữ mạng và lưu kỹ thuật cho thế hệ sau.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 作業手順書 | さぎょうてじゅんしょ | bản trình tự thao tác |
> | 揚重 | ようじゅう | nâng cẩu vật tư lên cao |
> | 玉掛け | たまがけ | móc cáp vật cẩu |
> | 合図者 | あいずしゃ | người ra hiệu |
> | 建込み | たてこみ | dựng lắp (cột, khuôn) |
> | 危険のポイント | きけんのポイント | điểm nguy hiểm |
> | 改訂 | かいてい | sửa đổi (văn bản) |
> | 改訂履歴 | かいていりれき | lịch sử sửa đổi |
> | 版番号 | はんばんごう | số phiên bản |
> | 中止基準 | ちゅうしきじゅん | tiêu chuẩn dừng việc |
> | 風速 | ふうそく | tốc độ gió |
> | 退避 | たいひ | lánh nạn |
> | 体勢 | たいせい | tư thế cơ thể |
> | 突起物 | とっきぶつ | vật nhô ra |
> | 現場目線 | げんばめせん | góc nhìn từ hiện trường |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000005, 800000037, NULL, 'markdown_book', 'T5. Chủ trì đào tạo người mới vào công trường — đón lớp 育成就労 (新規入場者教育)', '# Sách kỹ năng đặc định xây dựng · T5. Chủ trì đào tạo người mới vào công trường — đón lớp 育成就労 (新規入場者教育)

> **Mục tiêu nhân vật:** Thức lần đầu chủ trì 新規入場者教育 (đào tạo người lần đầu vào công trường) cho một nhóm đàn em mới theo chế độ 育成就労 (chế độ mới thay 技能実習, dự kiến thi hành 4/2027 — thông tin đúng tại thời điểm biên soạn 2026). Học mẫu câu tiếng Nhật khi giảng cho người mới, giải thích quy tắc công trường, hỏi đáp, và truyền đạt bằng tiếng Nhật dễ hiểu cho người trình độ thấp.

---

## Bối cảnh

Cuối tháng 5 năm 2030. 谷川組 nhận một nhóm 3 đàn em mới người Việt và Indonesia theo chế độ 育成就労. Theo quy định an toàn, người lần đầu vào công trường phải qua 新規入場者教育. 斉藤職長 giao Thức chủ trì — vừa vì Thức hiểu hiện trường, vừa vì Thức nói được tiếng Việt giúp đàn em. Tiếng Nhật nghiệp vụ chương này là ngôn ngữ giảng dạy: nói chậm, rõ, ví dụ cụ thể, kiểm tra hiểu bài, kết hợp giải thích chế độ mới.

---

## Tình huống 1 — Văn phòng công trường · 8:00, Saito giao chủ trì 新規入場者教育

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>新人<rt>しんじん</rt></ruby>が<ruby>三<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>入<rt>はい</rt></ruby>る。<ruby>新規<rt>しんき</rt></ruby><ruby>入場者<rt>にゅうじょうしゃ</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>をやってくれ。<br>*(Thức, tuần sau có ba người mới vào. Cậu chủ trì đào tạo người mới vào công trường.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>がですか。みんな<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>ですか?<br>*(Em chủ trì ạ. Mọi người theo chế độ 育成就労 ạ?)* |
| Saito | そうだ。<ruby>制度<rt>せいど</rt></ruby>が<ruby>変<rt>か</rt></ruby>わったからな。お<ruby>前<rt>まえ</rt></ruby>が<ruby>制度<rt>せいど</rt></ruby>も<ruby>理解<rt>りかい</rt></ruby>して<ruby>教<rt>おし</rt></ruby>えろ。<br>*(Đúng. Vì chế độ đã đổi. Cậu phải hiểu chế độ rồi dạy.)* |
| Thức | はい。<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>は<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>に<ruby>代<rt>か</rt></ruby>わる<ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>ですよね。<ruby>確認<rt>かくにん</rt></ruby>しておきます。<br>*(Vâng. 育成就労 là chế độ mới thay thực tập kỹ năng phải không ạ. Em sẽ kiểm tra lại.)* |
| Saito | <ruby>制度<rt>せいど</rt></ruby>の<ruby>細<rt>こま</rt></ruby>かい<ruby>点<rt>てん</rt></ruby>は<ruby>変<rt>か</rt></ruby>わることもある。<ruby>最新<rt>さいしん</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>本社<rt>ほんしゃ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>け。<br>*(Chi tiết chế độ có khi đổi. Hỏi công ty thông tin mới nhất.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>からないところは<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>せず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, chỗ không rõ em không tự phán đoán mà sẽ kiểm tra.)* |

---

## Tình huống 2 — Bàn làm việc · 9:00, gọi điện hỏi 本社 về chế độ 育成就労

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>現場<rt>げんば</rt></ruby>のトゥックです。<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>したいことがあります。<br>*(Anh vất vả ạ. Em Thức ở hiện trường. Em muốn xác nhận về chế độ 育成就労.)* |
| Nhân sự | はい、どうぞ。<br>*(Vâng, anh hỏi đi.)* |
| Thức | <ruby>新人<rt>しんじん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するとき、<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>との<ruby>主<rt>おも</rt></ruby>な<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なに</rt></ruby>と<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Khi giải thích cho người mới, khác biệt chính với thực tập kỹ năng nên nói thế nào ạ?)* |
| Nhân sự | <ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>は「<ruby>人材<rt>じんざい</rt></ruby>の<ruby>確保<rt>かくほ</rt></ruby>と<ruby>育成<rt>いくせい</rt></ruby>」が<ruby>目的<rt>もくてき</rt></ruby>で、<ruby>一定<rt>いってい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>で<ruby>転籍<rt>てんせき</rt></ruby>も<ruby>可能<rt>かのう</rt></ruby>です。<br>*(育成就労 mục đích là "bảo đảm và đào tạo nhân lực", có điều kiện thì chuyển nơi làm cũng được.)* |
| Thức | <ruby>施行<rt>しこう</rt></ruby><ruby>時期<rt>じき</rt></ruby>は<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>四月<rt>しがつ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>で<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Thời điểm thi hành dự kiến khoảng tháng 4 năm 2027 đúng không ạ?)* |
| Nhân sự | はい。ただ<ruby>運用<rt>うんよう</rt></ruby>の<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>更新<rt>こうしん</rt></ruby>されるので、<ruby>都度<rt>つど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Vâng. Nhưng chi tiết vận hành sẽ được cập nhật nên anh kiểm tra mỗi lần.)* |

---

## Tình huống 3 — Bàn làm việc · 10:00, chuẩn bị giáo án với Kondo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>新規<rt>しんき</rt></ruby><ruby>入場者<rt>にゅうじょうしゃ</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>で<ruby>絶対<rt>ぜったい</rt></ruby><ruby>外<rt>はず</rt></ruby>せない<ruby>項目<rt>こうもく</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Anh Kondo, đào tạo người mới vào công trường, hạng mục tuyệt đối không được bỏ là gì?)* |
| Kondo | <ruby>現場<rt>げんば</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>、<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>避難<rt>ひなん</rt></ruby><ruby>経路<rt>けいろ</rt></ruby>、<ruby>保護<rt>ほご</rt></ruby><ruby>具<rt>ぐ</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>。この<ruby>三<rt>さん</rt></ruby>つだ。<br>*(Chỗ nguy hiểm ở hiện trường, lối thoát khi khẩn cấp, cách dùng đồ bảo hộ. Ba cái này.)* |
| Thức | <ruby>言葉<rt>ことば</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からない<ruby>新人<rt>しんじん</rt></ruby>には、どう<ruby>伝<rt>つた</rt></ruby>えますか?<br>*(Người mới chưa hiểu tiếng thì truyền đạt thế nào ạ?)* |
| Kondo | <ruby>写真<rt>しゃしん</rt></ruby>と<ruby>実物<rt>じつぶつ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せろ。<ruby>言葉<rt>ことば</rt></ruby>より<ruby>目<rt>め</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かる。<br>*(Cho xem ảnh và vật thật. Hơn lời nói, mắt nhìn là hiểu.)* |
| Thức | <ruby>実際<rt>じっさい</rt></ruby>に<ruby>現場<rt>げんば</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>きながら<ruby>説明<rt>せつめい</rt></ruby>するのもいいですね。<br>*(Vừa đi thực tế quanh công trường vừa giải thích cũng tốt nhỉ.)* |
| Kondo | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>頭<rt>あたま</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る。<br>*(Cái đó nhớ lâu nhất.)* |

---

## Tình huống 4 — Phòng học công trường · 9:00 ngày đầu, mở đầu và tự giới thiệu

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>するトゥックです。<br>*(Mọi người, chào buổi sáng. Tôi là Thức, phụ trách hôm nay.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>もベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Tôi cũng quê Việt Nam. Có gì không hiểu cứ hỏi thoải mái.)* |
| Đàn em 1 | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo.)* |
| Thức | <ruby>今日<rt>きょう</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>のための<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>勉強<rt>べんきょう</rt></ruby>です。<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>話<rt>はなし</rt></ruby>です。<br>*(Hôm nay là buổi học quan trọng vì an toàn. Là chuyện giữ mạng sống.)* |
| Đàn em 2 | <ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Em hồi hộp.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。ゆっくり<ruby>話<rt>はな</rt></ruby>します。<ruby>分<rt>わ</rt></ruby>からなければ<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げてください。<br>*(Không sao. Tôi nói chậm. Không hiểu thì giơ tay.)* |

---

## Tình huống 5 — Phòng học · 9:15, giải thích chế độ 育成就労

| Vai | Lời thoại |
|---|---|
| Đàn em 1 | トゥックさん、<ruby>私<rt>わたし</rt></ruby>たちの<ruby>制度<rt>せいど</rt></ruby>は「<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>」と<ruby>聞<rt>き</rt></ruby>きました。<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Anh Thức, em nghe chế độ của bọn em là "育成就労". Có khác thực tập kỹ năng không ạ?)* |
| Thức | はい、<ruby>違<rt>ちが</rt></ruby>います。<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>は<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>に<ruby>代<rt>か</rt></ruby>わる<ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>です。<br>*(Vâng, khác. 育成就労 là chế độ mới thay thực tập kỹ năng.)* |
| Đàn em 2 | <ruby>何<rt>なに</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>変<rt>か</rt></ruby>わりますか?<br>*(Cái gì thay đổi lớn nhất ạ?)* |
| Thức | <ruby>目的<rt>もくてき</rt></ruby>が「<ruby>人材<rt>じんざい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てる」ことになり、<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たせば<ruby>転籍<rt>てんせき</rt></ruby>もできます。<br>*(Mục đích thành "đào tạo nhân lực", đủ điều kiện thì chuyển nơi làm được.)* |
| Đàn em 1 | <ruby>細<rt>こま</rt></ruby>かいことは<ruby>誰<rt>だれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>けばいいですか?<br>*(Chi tiết thì hỏi ai ạ?)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>は<ruby>更新<rt>こうしん</rt></ruby>されることがあります。<ruby>正式<rt>せいしき</rt></ruby>なことは<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>しません。<br>*(Chế độ có khi được cập nhật. Việc chính thức tôi xác nhận với phụ trách công ty. Không tự phán đoán.)* |

---

## Tình huống 6 — Phòng học · 9:30, dạy quy tắc cơ bản công trường

| Vai | Lời thoại |
|---|---|
| Thức | まず<ruby>基本<rt>きほん</rt></ruby>ルールです。<ruby>現場<rt>げんば</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るとき、<ruby>必<rt>かなら</rt></ruby>ずヘルメットをかぶります。<br>*(Đầu tiên quy tắc cơ bản. Khi vào công trường, nhất định đội mũ bảo hộ.)* |
| Thức | あごひもを<ruby>必<rt>かなら</rt></ruby>ず<ruby>締<rt>し</rt></ruby>めます。ゆるいと<ruby>意味<rt>いみ</rt></ruby>がありません。<br>*(Nhất định cài quai cằm. Lỏng thì vô nghĩa.)* |
| Đàn em 3 | <ruby>暑<rt>あつ</rt></ruby>い<ruby>日<rt>ひ</rt></ruby>も<ruby>締<rt>し</rt></ruby>めますか?<br>*(Ngày nóng cũng cài ạ?)* |
| Thức | はい、<ruby>暑<rt>あつ</rt></ruby>くても<ruby>必<rt>かなら</rt></ruby>ず。<ruby>頭<rt>あたま</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るのが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Vâng, nóng cũng phải. Bảo vệ đầu là quan trọng nhất.)* |
| Đàn em 1 | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Hiểu rồi ạ.)* |
| Thức | <ruby>守<rt>まも</rt></ruby>れますか?<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>しましょう。「あごひも、ヨシ!」<br>*(Tuân thủ được không? Hô ra tiếng xác nhận nào. "Quai cằm, OK!")* |
| Cả nhóm | あごひも、ヨシ!<br>*(Quai cằm, OK!)* |

---

## Tình huống 7 — Phòng học · 9:50, dạy về dây an toàn cho người mới

| Vai | Lời thoại |
|---|---|
| Thức | これがフルハーネスです。<ruby>高<rt>たか</rt></ruby>いところで<ruby>働<rt>はたら</rt></ruby>くとき<ruby>必<rt>かなら</rt></ruby>ず<ruby>使<rt>つか</rt></ruby>います。<br>*(Đây là dây toàn thân. Khi làm trên cao nhất định dùng.)* |
| Đàn em 2 | <ruby>難<rt>むずか</rt></ruby>しそうです。<br>*(Trông khó quá.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>一緒<rt>いっしょ</rt></ruby>にやってみましょう。フックは<ruby>必<rt>かなら</rt></ruby>ず<ruby>二<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>かけます。<br>*(Không sao. Cùng thử nào. Móc nhất định móc hai chỗ.)* |
| Đàn em 3 | どうして<ruby>二<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>ですか?<br>*(Sao lại hai chỗ ạ?)* |
| Thức | <ruby>移動<rt>いどう</rt></ruby>するとき、<ruby>片方<rt>かたほう</rt></ruby>を<ruby>外<rt>はず</rt></ruby>してももう<ruby>片方<rt>かたほう</rt></ruby>が<ruby>体<rt>からだ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。これを<ruby>二丁掛<rt>にちょうが</rt></ruby>けと<ruby>言<rt>い</rt></ruby>います。<br>*(Lúc di chuyển, tháo một bên thì bên kia vẫn giữ người. Gọi là móc hai móc.)* |
| Đàn em 1 | にちょうがけ、<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Móc hai móc, em nhớ rồi.)* |

---

## Tình huống 8 — Hiện trường · 10:30, đi thực tế chỉ chỗ nguy hiểm

| Vai | Lời thoại |
|---|---|
| Thức | ここから<ruby>現場<rt>げんば</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>きます。<ruby>私<rt>わたし</rt></ruby>の<ruby>後<rt>うし</rt></ruby>ろを<ruby>一列<rt>いちれつ</rt></ruby>でついてきてください。<br>*(Từ đây ta đi quanh công trường. Theo sau tôi thành một hàng.)* |
| Thức | ここが<ruby>開口部<rt>かいこうぶ</rt></ruby>です。<ruby>穴<rt>あな</rt></ruby>があります。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づかないでください。<br>*(Đây là lỗ mở. Có hố. Tuyệt đối không lại gần.)* |
| Đàn em 2 | <ruby>柵<rt>さく</rt></ruby>がありますね。<br>*(Có hàng rào nhỉ.)* |
| Thức | はい。<ruby>柵<rt>さく</rt></ruby>を<ruby>外<rt>はず</rt></ruby>すときは<ruby>必<rt>かなら</rt></ruby>ず<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>言<rt>い</rt></ruby>うこと。<ruby>勝手<rt>かって</rt></ruby>に<ruby>外<rt>はず</rt></ruby>さない。<br>*(Vâng. Tháo hàng rào nhất định báo đốc công. Không tự ý tháo.)* |
| Đàn em 3 | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>危<rt>あぶ</rt></ruby>ないですね。<br>*(Hiểu rồi ạ. Nguy hiểm thật nhỉ.)* |
| Thức | そう、ここで<ruby>毎年<rt>まいとし</rt></ruby><ruby>事故<rt>じこ</rt></ruby>が<ruby>起<rt>お</rt></ruby>きています。だから<ruby>何度<rt>なんど</rt></ruby>も<ruby>言<rt>い</rt></ruby>います。<br>*(Đúng, ở đây năm nào cũng có tai nạn. Nên tôi nhắc nhiều lần.)* |

---

## Tình huống 9 — Hiện trường · 10:50, chỉ lối thoát hiểm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>地震<rt>じしん</rt></ruby>や<ruby>火事<rt>かじ</rt></ruby>のとき、ここから<ruby>外<rt>そと</rt></ruby>へ<ruby>逃<rt>に</rt></ruby>げます。<ruby>避難<rt>ひなん</rt></ruby><ruby>経路<rt>けいろ</rt></ruby>です。<br>*(Khi động đất hay cháy, thoát ra ngoài từ đây. Lối thoát hiểm.)* |
| Đàn em 1 | <ruby>集<rt>あつ</rt></ruby>まる<ruby>場所<rt>ばしょ</rt></ruby>はどこですか?<br>*(Chỗ tập trung ở đâu ạ?)* |
| Thức | あの<ruby>駐車場<rt>ちゅうしゃじょう</rt></ruby>です。<ruby>緑<rt>みどり</rt></ruby>の<ruby>旗<rt>はた</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>集合<rt>しゅうごう</rt></ruby>します。<br>*(Bãi đỗ xe kia. Tập hợp ở chỗ có cờ xanh.)* |
| Đàn em 2 | <ruby>覚<rt>おぼ</rt></ruby>えられるか<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Em lo không nhớ được.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歩<rt>ある</rt></ruby>きます。<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えましょう。<br>*(Không sao. Mai cùng đi lại lần nữa. Nhớ bằng cơ thể nào.)* |
| Đàn em 1 | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh.)* |

---

## Tình huống 10 — Phòng học · 11:30, kiểm tra hiểu bài

| Vai | Lời thoại |
|---|---|
| Thức | では<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>現場<rt>げんば</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るとき、まず<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Giờ kiểm tra. Khi vào công trường, làm gì đầu tiên?)* |
| Đàn em 3 | ヘルメットをかぶって、あごひもを<ruby>締<rt>し</rt></ruby>めます。<br>*(Đội mũ bảo hộ, cài quai cằm.)* |
| Thức | <ruby>正解<rt>せいかい</rt></ruby>です。<ruby>高<rt>たか</rt></ruby>いところで<ruby>働<rt>はたら</rt></ruby>くときは?<br>*(Chính xác. Khi làm trên cao thì sao?)* |
| Đàn em 2 | フルハーネスを<ruby>二丁掛<rt>にちょうが</rt></ruby>けで<ruby>使<rt>つか</rt></ruby>います。<br>*(Dùng dây toàn thân, móc hai móc.)* |
| Thức | よくできました。<ruby>柵<rt>さく</rt></ruby>を<ruby>外<rt>はず</rt></ruby>したいときは?<br>*(Giỏi lắm. Muốn tháo hàng rào thì sao?)* |
| Đàn em 1 | <ruby>勝手<rt>かって</rt></ruby>に<ruby>外<rt>はず</rt></ruby>さないで、<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<br>*(Không tự ý tháo, báo đốc công.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>です。みんなよく<ruby>聞<rt>き</rt></ruby>いていました。<br>*(Hoàn hảo. Mọi người nghe kỹ lắm.)* |

---

## Tình huống 11 — Phòng học · 13:00, dạy về 報告 cho người mới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>午後<rt>ごご</rt></ruby>は<ruby>報告<rt>ほうこく</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>です。ケガをしたら、<ruby>小<rt>ちい</rt></ruby>さくても<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>ってください。<br>*(Chiều là chuyện báo cáo. Bị thương dù nhỏ cũng nhất định báo.)* |
| Đàn em 2 | <ruby>小<rt>ちい</rt></ruby>さい<ruby>傷<rt>きず</rt></ruby>でもですか?<br>*(Vết nhỏ cũng báo ạ?)* |
| Thức | はい。<ruby>小<rt>ちい</rt></ruby>さい<ruby>傷<rt>きず</rt></ruby>でも<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>隠<rt>かく</rt></ruby>すと<ruby>後<rt>あと</rt></ruby>で<ruby>大<rt>おお</rt></ruby>きな<ruby>問題<rt>もんだい</rt></ruby>になります。<br>*(Vâng. Vết nhỏ cũng báo. Giấu thì sau thành chuyện lớn.)* |
| Đàn em 3 | <ruby>怒<rt>おこ</rt></ruby>られませんか?<br>*(Có bị mắng không ạ?)* |
| Thức | <ruby>報告<rt>ほうこく</rt></ruby>したことで<ruby>怒<rt>おこ</rt></ruby>りません。<ruby>隠<rt>かく</rt></ruby>したときに<ruby>怒<rt>おこ</rt></ruby>ります。<ruby>正直<rt>しょうじき</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>です。<br>*(Báo cáo thì không mắng. Giấu mới mắng. Trung thực là trên hết.)* |
| Đàn em 1 | <ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Em yên tâm rồi.)* |

---

## Tình huống 12 — Phòng học · 13:30, một đàn em phản hồi tiếng Việt ngắn (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Đàn em 1 | Anh Thức ơi, có chỗ tiếng Nhật em chưa hiểu hết, em hỏi anh bằng tiếng Việt được không? |
| Thức | Được chứ. Nhưng anh sẽ giải thích lại bằng tiếng Nhật một lần nữa, để các em quen từ. Em cứ hỏi. |
| Đàn em 1 | Cái "二丁掛け" là lúc nào cũng phải móc đủ hai móc, kể cả khi đang di chuyển đúng không anh? |
| Thức | Đúng rồi. Đặc biệt là lúc di chuyển mới nguy hiểm nhất. Luôn móc bên này rồi mới tháo bên kia. |
| Đàn em 1 | Em hiểu rồi. Cảm ơn anh, được anh người Việt chỉ em đỡ căng hơn nhiều. |
| Thức | Anh từng như em. Cứ chịu khó, vài tháng là quen hết. Giờ quay lại tiếng Nhật nhé. |

---

## Tình huống 13 — Phòng học · 14:00, ôn lại bằng tiếng Nhật sau giải thích tiếng Việt

| Vai | Lời thoại |
|---|---|
| Thức | では<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>移動<rt>いどう</rt></ruby>するとき、<ruby>先<rt>さき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Giờ xác nhận bằng tiếng Nhật. Khi di chuyển, làm gì trước?)* |
| Đàn em 1 | <ruby>片方<rt>かたほう</rt></ruby>のフックをかけてから、もう<ruby>片方<rt>かたほう</rt></ruby>を<ruby>外<rt>はず</rt></ruby>します。<br>*(Móc một móc rồi mới tháo móc kia.)* |
| Thức | そのとおりです。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す<ruby>言葉<rt>ことば</rt></ruby>は?<br>*(Đúng vậy. Câu hô ra tiếng là gì?)* |
| Đàn em 2 | 「<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えます」です。<br>*("Tôi đổi móc".)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>日本語<rt>にほんご</rt></ruby>でも<ruby>言<rt>い</rt></ruby>えるようになりましたね。<br>*(Hoàn hảo. Nói được bằng tiếng Nhật rồi nhỉ.)* |
| Đàn em 3 | <ruby>自信<rt>じしん</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>出<rt>で</rt></ruby>てきました。<br>*(Em hơi tự tin lên rồi.)* |
| Thức | その<ruby>調子<rt>ちょうし</rt></ruby>。<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えましょう。<br>*(Cứ đà đó. Mỗi ngày học dần dần từ nào.)* |

---

## Tình huống 14 — Phòng học · 14:30, ký xác nhận đã được đào tạo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>最後<rt>さいご</rt></ruby>に、<ruby>受講<rt>じゅこう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>にサインをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cuối cùng, ký vào giấy xác nhận đã học giúp tôi.)* |
| Đàn em 1 | これは<ruby>何<rt>なに</rt></ruby>のサインですか?<br>*(Đây là chữ ký cho cái gì ạ?)* |
| Thức | <ruby>今日<rt>きょう</rt></ruby>の<ruby>教育<rt>きょういく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けた、という<ruby>記録<rt>きろく</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>も<ruby>現場<rt>げんば</rt></ruby>も<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>します。<br>*(Là ghi nhận đã nhận đào tạo hôm nay. Công ty và công trường giữ cẩn thận.)* |
| Đàn em 2 | <ruby>内容<rt>ないよう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からないのにサインしてもいいですか?<br>*(Chưa hiểu nội dung mà ký được không ạ?)* |
| Thức | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないままサインしてはいけません。もう<ruby>一度<rt>いちど</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Câu hỏi hay. Không được ký khi chưa hiểu. Tôi giải thích lại lần nữa.)* |
| Đàn em 2 | ありがとうございます。それなら<ruby>安心<rt>あんしん</rt></ruby>です。<br>*(Cảm ơn anh. Vậy thì yên tâm.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からないことを<ruby>聞<rt>き</rt></ruby>くのは<ruby>恥<rt>は</rt></ruby>ずかしくありません。とても<ruby>大事<rt>だいじ</rt></ruby>なことです。<br>*(Hỏi điều chưa hiểu không xấu hổ. Là điều rất quan trọng.)* |

---

## Tình huống 15 — Văn phòng công trường · 15:00, báo cáo Saito kết quả

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>新規<rt>しんき</rt></ruby><ruby>入場者<rt>にゅうじょうしゃ</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>、<ruby>三<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>です。<br>*(Anh Saito, đào tạo người mới vào, ba người đều hoàn thành.)* |
| Saito | お<ruby>疲<rt>つか</rt></ruby>れ。<ruby>理解<rt>りかい</rt></ruby><ruby>度<rt>ど</rt></ruby>はどうだった?<br>*(Vất vả. Mức độ hiểu thế nào?)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>テストで<ruby>全員<rt>ぜんいん</rt></ruby><ruby>正解<rt>せいかい</rt></ruby>でした。<ruby>言葉<rt>ことば</rt></ruby>が<ruby>不安<rt>ふあん</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>はベトナム<ruby>語<rt>ご</rt></ruby>でも<ruby>補<rt>おぎな</rt></ruby>いました。<br>*(Bài kiểm tra cả ba đều đúng. Chỗ chưa chắc tiếng, em bổ sung cả tiếng Việt.)* |
| Saito | <ruby>母国語<rt>ぼこくご</rt></ruby>で<ruby>補<rt>おぎな</rt></ruby>えるのはお<ruby>前<rt>まえ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みだな。だが<ruby>日本語<rt>にほんご</rt></ruby>もちゃんと<ruby>残<rt>のこ</rt></ruby>したか?<br>*(Bổ sung được bằng tiếng mẹ đẻ là điểm mạnh của cậu. Nhưng có giữ cả tiếng Nhật chứ?)* |
| Thức | はい、<ruby>最後<rt>さいご</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>言<rt>い</rt></ruby>えるように<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, cuối cùng nhất định kiểm tra để nói được bằng tiếng Nhật.)* |
| Saito | それでいい。<ruby>現場<rt>げんば</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>動<rt>うご</rt></ruby>くからな。<br>*(Vậy là được. Vì hiện trường vận hành bằng tiếng Nhật.)* |

---

## Tình huống 16 — Hiện trường · 8:00 hôm sau, kèm đàn em vào ca thực tế

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>から<ruby>実際<rt>じっさい</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>です。まず<ruby>私<rt>わたし</rt></ruby>のそばを<ruby>離<rt>はな</rt></ruby>れないでください。<br>*(Hôm nay làm việc thực tế. Trước hết đừng rời xa tôi.)* |
| Đàn em 1 | はい、<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Vâng, em hồi hộp.)* |
| Thức | <ruby>昨日<rt>きのう</rt></ruby><ruby>習<rt>なら</rt></ruby>ったこと、<ruby>覚<rt>おぼ</rt></ruby>えていますか?<ruby>現場<rt>げんば</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に?<br>*(Cái học hôm qua, nhớ chứ? Trước khi vào công trường?)* |
| Đàn em 1 | ヘルメット、あごひも、フルハーネスの<ruby>点検<rt>てんけん</rt></ruby>です。<br>*(Mũ bảo hộ, quai cằm, kiểm tra dây toàn thân.)* |
| Thức | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>知識<rt>ちしき</rt></ruby>を<ruby>体<rt>からだ</rt></ruby>で<ruby>使<rt>つか</rt></ruby>えるようになりましょう。<br>*(Tuyệt vời. Hãy biến kiến thức thành cái cơ thể dùng được.)* |
| Đàn em 1 | はい、しっかりやります。<br>*(Vâng, em sẽ làm cẩn thận.)* |

---

## Tình huống 17 — Hiện trường · 10:00, sửa lỗi đàn em tại chỗ một cách nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Thức | (gọi nhẹ) ちょっと<ruby>待<rt>ま</rt></ruby>って。<ruby>今<rt>いま</rt></ruby>のフック、<ruby>一<rt>ひと</rt></ruby>つだけだったよ。<br>*(Khoan đã. Móc vừa rồi, chỉ có một móc thôi.)* |
| Đàn em 2 | あっ…すみません。<ruby>急<rt>いそ</rt></ruby>いでしまいました。<br>*(A… xin lỗi. Em vội quá.)* |
| Thức | <ruby>怒<rt>おこ</rt></ruby>っていないよ。<ruby>気<rt>き</rt></ruby>づけたのはいいこと。なぜ<ruby>二<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>かけるんだった?<br>*(Anh không giận. Nhận ra là tốt. Sao phải móc hai chỗ nhỉ?)* |
| Đàn em 2 | <ruby>移動<rt>いどう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>体<rt>からだ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためです。<br>*(Để giữ người trong lúc di chuyển ạ.)* |
| Thức | そう。<ruby>分<rt>わ</rt></ruby>かっているなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。ゆっくりでいいから<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Đúng. Hiểu rồi thì ổn. Chậm cũng được, miễn chắc chắn.)* |
| Đàn em 2 | はい、ありがとうございます。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, cảm ơn anh. Em sẽ chú ý.)* |

---

## Tình huống 18 — Lán công trường · 16:00, Saito nhận xét về cách dạy của Thức

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、お<ruby>前<rt>まえ</rt></ruby>の<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>、<ruby>怒<rt>おこ</rt></ruby>らないんだな。<br>*(Thức, cách cậu dạy, không quát nhỉ.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>も<ruby>怒<rt>おこ</rt></ruby>られて<ruby>萎縮<rt>いしゅく</rt></ruby>した<ruby>経験<rt>けいけん</rt></ruby>があります。<ruby>怖<rt>こわ</rt></ruby>いと<ruby>聞<rt>き</rt></ruby>けなくなります。<br>*(Em từng bị quát nên co rúm lại. Sợ thì không hỏi được nữa.)* |
| Saito | <ruby>一理<rt>いちり</rt></ruby>ある。ただ、<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わるときは<ruby>厳<rt>きび</rt></ruby>しくな。<br>*(Có lý. Nhưng lúc liên quan tính mạng thì phải nghiêm.)* |
| Thức | はい。<ruby>危険<rt>きけん</rt></ruby>なときは<ruby>強<rt>つよ</rt></ruby>く<ruby>止<rt>と</rt></ruby>めます。<ruby>普段<rt>ふだん</rt></ruby>は<ruby>理由<rt>りゆう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Vâng. Lúc nguy hiểm em ngăn mạnh. Bình thường thì giải thích lý do.)* |
| Saito | その<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けができれば<ruby>一人前<rt>いちにんまえ</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>だ。<br>*(Phân biệt được hai cái đó là đốc công lành nghề.)* |
| Thức | はい、その<ruby>感覚<rt>かんかく</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>いていきます。<br>*(Vâng, em sẽ mài giũa cảm giác đó.)* |

---

## Tình huống 19 — Ký túc xá · 19:30, đàn em cảm ơn Thức

| Vai | Lời thoại |
|---|---|
| Đàn em 1 | トゥックさん、<ruby>今日<rt>きょう</rt></ruby>もありがとうございました。<ruby>説明<rt>せつめい</rt></ruby>がとても<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Anh Thức, hôm nay cảm ơn anh. Anh giải thích rất dễ hiểu.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>を<ruby>通<rt>とお</rt></ruby>ってきたからね。<ruby>分<rt>わ</rt></ruby>からない<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かる。<br>*(Vì anh cũng đi qua con đường giống các em. Anh hiểu cảm giác không hiểu.)* |
| Đàn em 3 | <ruby>日本語<rt>にほんご</rt></ruby>、いつか<ruby>上手<rt>じょうず</rt></ruby>になりますか?<br>*(Tiếng Nhật, rồi có giỏi được không ạ?)* |
| Thức | なるよ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>現場<rt>げんば</rt></ruby>で<ruby>使<rt>つか</rt></ruby>えば<ruby>必<rt>かなら</rt></ruby>ず。<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はN5もなかった。<br>*(Được. Mỗi ngày dùng ở hiện trường là chắc chắn. Anh ban đầu còn chưa nổi N5.)* |
| Đàn em 1 | <ruby>勇気<rt>ゆうき</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em có thêm dũng khí. Em sẽ cố gắng.)* |
| Thức | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>分<rt>わ</rt></ruby>からないことはいつでも<ruby>聞<rt>き</rt></ruby>いて。<br>*(Cùng cố gắng nào. Không hiểu gì cứ hỏi bất cứ lúc nào.)* |

---

## Tình huống 20 — Văn phòng công trường · 13:30, 石川さん ghi nhận buổi đào tạo

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>新規<rt>しんき</rt></ruby><ruby>入場者<rt>にゅうじょうしゃ</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>、<ruby>拝見<rt>はいけん</rt></ruby>しました。とても<ruby>丁寧<rt>ていねい</rt></ruby>です。<br>*(Anh Thức, hồ sơ đào tạo người mới vào, tôi xem rồi. Rất chỉn chu.)* |
| Thức | ありがとうございます。<ruby>理解<rt>りかい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>も<ruby>残<rt>のこ</rt></ruby>しました。<br>*(Cảm ơn anh. Em cũng lưu cả ghi nhận kiểm tra mức độ hiểu.)* |
| Ishikawa | <ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えます。こういう<ruby>教育<rt>きょういく</rt></ruby>がますます<ruby>大事<rt>だいじ</rt></ruby>になります。<br>*(Người mới theo 育成就労 sẽ tăng. Đào tạo như vậy càng quan trọng.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>は<ruby>最新<rt>さいしん</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>行<rt>おこな</rt></ruby>っています。<br>*(Phần giải thích chế độ em đều xác nhận thông tin mới nhất với công ty rồi mới làm.)* |
| Ishikawa | その<ruby>慎重<rt>しんちょう</rt></ruby>さが<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>間違<rt>まちが</rt></ruby>った<ruby>制度<rt>せいど</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>は<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>不利益<rt>ふりえき</rt></ruby>になりますから。<br>*(Sự thận trọng đó quan trọng. Vì giải thích chế độ sai sẽ bất lợi cho chính người đó.)* |
| Thức | はい、これからも<ruby>確認<rt>かくにん</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>りません。<br>*(Vâng, từ nay em vẫn không lơ là việc kiểm chứng.)* |

---

## Đọng lại

Thức lần đầu chủ trì 新規入場者教育, đón lớp đàn em theo chế độ mới 育成就労. Bài học lớn nhất là dạy bằng tiếng Nhật dễ hiểu — nói chậm, dùng vật thật, đi thực tế, kiểm tra hiểu bài, và quan trọng là không quát mắng để người mới dám hỏi. Thức tận dụng lợi thế tiếng Việt để bổ trợ nhưng luôn quay lại tiếng Nhật vì hiện trường vận hành bằng tiếng Nhật. Với chế độ 育成就労, Thức cẩn trọng xác nhận thông tin mới nhất với công ty, không tự phán đoán — vì giải thích sai sẽ gây bất lợi cho đàn em.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 新規入場者教育 | しんきにゅうじょうしゃきょういく | đào tạo người lần đầu vào công trường |
> | 育成就労 | いくせいしゅうろう | chế độ lao động đào tạo (mới, thay 技能実習, dự kiến 4/2027) |
> | 転籍 | てんせき | chuyển nơi làm việc |
> | 開口部 | かいこうぶ | lỗ mở (sàn, tường) |
> | 避難経路 | ひなんけいろ | lối thoát hiểm |
> | 保護具 | ほごぐ | đồ bảo hộ |
> | あごひも | — | quai cằm mũ bảo hộ |
> | 受講確認書 | じゅこうかくにんしょ | giấy xác nhận đã học |
> | 理解度 | りかいど | mức độ hiểu bài |
> | 母国語 | ぼこくご | tiếng mẹ đẻ |
> | 萎縮 | いしゅく | co rúm / chùn lại |
> | 柵 | さく | hàng rào chắn |
> | 集合場所 | しゅうごうばしょ | chỗ tập hợp |
> | 使い分け | つかいわけ | phân biệt cách dùng tùy hoàn cảnh |
> | 不利益 | ふりえき | bất lợi / thiệt hại |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000006, 800000037, NULL, 'markdown_book', 'T6. Tuần tra an toàn — phát hiện và yêu cầu chấn chỉnh vi phạm (安全パトロール)', '# Sách kỹ năng đặc định xây dựng · T6. Tuần tra an toàn — phát hiện và yêu cầu chấn chỉnh vi phạm (安全パトロール)

> **Mục tiêu nhân vật:** Thức lần đầu tham gia 安全パトロール (tuần tra an toàn) cùng 元請け. Phát hiện vi phạm 二丁掛け chưa thực hiện đúng, phải chỉ ra (指摘), yêu cầu 是正 (chấn chỉnh) và ghi vào 是正報告. Học mẫu câu tiếng Nhật khi tuần tra, nhắc nhở mà giữ thể diện người vi phạm, viết báo cáo chấn chỉnh, phối hợp đa nghề.

---

## Bối cảnh

Đầu tháng 6 năm 2030. Mỗi tuần 元請け tổ chức 安全パトロール — đoàn đi kiểm tra toàn công trường, gồm 統括安全衛生責任者, 現場監督 石川さん và đại diện các nhà thầu. 斉藤職長 cho Thức tham gia với tư cách đại diện 谷川組. Đây là lần đầu Thức ở vị trí vừa bị kiểm tra vừa phải kiểm tra. Tiếng Nhật nghiệp vụ chương này là ngôn ngữ chỉ ra vi phạm khách quan, yêu cầu chấn chỉnh lịch sự nhưng dứt khoát, và viết 是正報告.

---

## Tình huống 1 — Văn phòng công trường · 8:00, Saito dặn trước khi đi パトロール

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>元請<rt>もとうけ</rt></ruby>けの<ruby>安全<rt>あんぜん</rt></ruby>パトロールに<ruby>同行<rt>どうこう</rt></ruby>しろ。<br>*(Thức, hôm nay đi cùng tuần tra an toàn của tổng thầu.)* |
| Thức | はい。<ruby>私<rt>わたし</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をすればいいですか?<br>*(Vâng. Em cần làm gì ạ?)* |
| Saito | <ruby>谷川組<rt>たにがわぐみ</rt></ruby>の<ruby>代表<rt>だいひょう</rt></ruby>だ。<ruby>指摘<rt>してき</rt></ruby>されたら<ruby>誠実<rt>せいじつ</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えろ。<br>*(Đại diện Tanigawa-gumi. Bị chỉ ra thì trả lời chân thành.)* |
| Thức | <ruby>他<rt>た</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>に<ruby>気<rt>き</rt></ruby>づいたら、<ruby>言<rt>い</rt></ruby>ってもいいですか?<br>*(Phát hiện chỗ nguy hiểm của nhà thầu khác, em nói được không ạ?)* |
| Saito | <ruby>当然<rt>とうぜん</rt></ruby>だ。<ruby>遠慮<rt>えんりょ</rt></ruby>するな。だが<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>には<ruby>気<rt>き</rt></ruby>をつけろ。<ruby>事実<rt>じじつ</rt></ruby>を<ruby>言<rt>い</rt></ruby>うんだ。<br>*(Đương nhiên. Đừng ngại. Nhưng để ý cách nói. Nói sự thật.)* |
| Thức | はい、<ruby>人<rt>ひと</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めず、<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>言<rt>い</rt></ruby>うようにします。<br>*(Vâng, em không trách người mà nói về tình trạng.)* |

---

## Tình huống 2 — Tập kết · 9:00, đoàn パトロール họp xuất phát

| Vai | Lời thoại |
|---|---|
| Tổng phụ trách | では<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>パトロールを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>重点<rt>じゅうてん</rt></ruby>は<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>です。<br>*(Vậy bắt đầu tuần tra an toàn hôm nay. Trọng điểm là làm trên cao.)* |
| Ishikawa | <ruby>各<rt>かく</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>さんの<ruby>代表<rt>だいひょう</rt></ruby>もご<ruby>同行<rt>どうこう</rt></ruby>ください。トゥックさんは<ruby>谷川組<rt>たにがわぐみ</rt></ruby>さんです。<br>*(Đại diện các nhà thầu cùng đi. Anh Thức là Tanigawa-gumi.)* |
| Thức | トゥックです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi là Thức. Mong mọi người giúp đỡ.)* |
| Tổng phụ trách | <ruby>気<rt>き</rt></ruby>づいた<ruby>点<rt>てん</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>で<ruby>言<rt>い</rt></ruby>ってください。<ruby>遠慮<rt>えんりょ</rt></ruby>は<ruby>事故<rt>じこ</rt></ruby>のもとです。<br>*(Phát hiện gì cứ nói tại chỗ. Ngại ngùng là nguồn của tai nạn.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Tôi rõ rồi ạ.)* |
| Ishikawa | では<ruby>北棟<rt>きたとう</rt></ruby>から<ruby>回<rt>まわ</rt></ruby>りましょう。<br>*(Vậy đi từ toà bắc nhé.)* |

---

## Tình huống 3 — Toà bắc tầng 4 · 9:20, phát hiện vi phạm 二丁掛け

| Vai | Lời thoại |
|---|---|
| Thức | (chỉ tay) <ruby>石川<rt>いしかわ</rt></ruby>さん、あの<ruby>作業員<rt>さぎょういん</rt></ruby>さん、フックが<ruby>一<rt>ひと</rt></ruby>つしかかかっていません。<br>*(Anh Ishikawa, người công nhân kia, chỉ móc có một móc.)* |
| Ishikawa | <ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>移動<rt>いどう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>二丁掛<rt>にちょうが</rt></ruby>けができていませんね。<br>*(Đúng thật. Lúc di chuyển không thực hiện móc hai móc nhỉ.)* |
| Tổng phụ trách | あれは<ruby>危<rt>あぶ</rt></ruby>ない。すぐ<ruby>止<rt>と</rt></ruby>めましょう。どの<ruby>業者<rt>ぎょうしゃ</rt></ruby>さんですか?<br>*(Cái đó nguy. Dừng ngay. Nhà thầu nào vậy?)* |
| Thức | <ruby>鉄骨<rt>てっこつ</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>さんのようです。<ruby>声<rt>こえ</rt></ruby>をかけてきます。<br>*(Có vẻ là nhà thầu kết cấu thép. Tôi gọi nhắc.)* |
| Ishikawa | お<ruby>願<rt>ねが</rt></ruby>いします。まず<ruby>安全<rt>あんぜん</rt></ruby>な<ruby>状態<rt>じょうたい</rt></ruby>にしてから<ruby>話<rt>はな</rt></ruby>しましょう。<br>*(Nhờ anh. Đưa về trạng thái an toàn rồi mới nói.)* |
| Thức | はい、<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>一度<rt>いちど</rt></ruby><ruby>止<rt>と</rt></ruby>めてもらいます。<br>*(Vâng, tôi cho dừng việc lại đã.)* |

---

## Tình huống 4 — Toà bắc tầng 4 · 9:23, nhắc người vi phạm khéo léo

| Vai | Lời thoại |
|---|---|
| Thức | すみません、<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>一度<rt>いちど</rt></ruby><ruby>止<rt>と</rt></ruby>めてください。<ruby>安全<rt>あんぜん</rt></ruby>のためです。<br>*(Xin lỗi, dừng việc một lát. Vì an toàn.)* |
| Công nhân | え、<ruby>何<rt>なに</rt></ruby>か<ruby>問題<rt>もんだい</rt></ruby>ありましたか?<br>*(Ơ, có vấn đề gì à?)* |
| Thức | <ruby>今<rt>いま</rt></ruby>の<ruby>移動<rt>いどう</rt></ruby>、フックが<ruby>一<rt>ひと</rt></ruby>つでした。<ruby>二丁掛<rt>にちょうが</rt></ruby>けでお<ruby>願<rt>ねが</rt></ruby>いできますか。<br>*(Lúc di chuyển vừa rồi, móc chỉ một móc. Anh móc hai móc giúp được không.)* |
| Công nhân | ああ…<ruby>急<rt>いそ</rt></ruby>いでいて、つい。<br>*(À… vội quá, lỡ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かります。でもここは<ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby>です。<ruby>一瞬<rt>いっしゅん</rt></ruby>でも<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わります。<br>*(Tôi hiểu. Nhưng đây là tầng bốn. Một thoáng cũng liên quan tính mạng.)* |
| Công nhân | そうですね。すみません、これから<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Đúng vậy. Xin lỗi, từ giờ tôi chú ý.)* |

---

## Tình huống 5 — Toà bắc tầng 4 · 9:26, xác nhận chấn chỉnh tại chỗ

| Vai | Lời thoại |
|---|---|
| Thức | では<ruby>一<rt>いっ</rt></ruby><ruby>緒<rt>しょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<ruby>片方<rt>かたほう</rt></ruby>をかけてから、もう<ruby>片方<rt>かたほう</rt></ruby>を<ruby>移<rt>うつ</rt></ruby>します。<br>*(Vậy cùng xác nhận nào. Móc một bên rồi mới chuyển bên kia.)* |
| Công nhân | (làm theo) こうですね。<br>*(Thế này nhỉ.)* |
| Thức | そうです。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すと<ruby>確実<rt>かくじつ</rt></ruby>です。「<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えます」と。<br>*(Đúng vậy. Hô ra tiếng thì chắc chắn. "Tôi đổi móc".)* |
| Công nhân | <ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えます。…<ruby>確<rt>たし</rt></ruby>かにこっちのほうが<ruby>安心<rt>あんしん</rt></ruby>です。<br>*(Tôi đổi móc. …Đúng là cách này yên tâm hơn.)* |
| Thức | ありがとうございます。<ruby>急<rt>いそ</rt></ruby>がせて<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn anh. Xin lỗi đã làm anh gấp. An toàn là trên hết.)* |
| Công nhân | こちらこそ。<ruby>注意<rt>ちゅうい</rt></ruby>してくれて<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Tôi mới phải cảm ơn. Anh nhắc giúp may quá.)* |

---

## Tình huống 6 — Hành lang tầng 4 · 9:30, 元請け ghi nhận cách xử lý của Thức

| Vai | Lời thoại |
|---|---|
| Tổng phụ trách | トゥックさん、<ruby>注意<rt>ちゅうい</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>でしたね。<br>*(Anh Thức, cách nhắc nhở khéo đấy.)* |
| Thức | <ruby>相手<rt>あいて</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めると<ruby>反発<rt>はんぱつ</rt></ruby>されます。<ruby>事実<rt>じじつ</rt></ruby>を<ruby>言<rt>い</rt></ruby>って<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>直<rt>なお</rt></ruby>すようにしています。<br>*(Trách người thì họ phản kháng. Tôi nói sự thật rồi cùng sửa.)* |
| Ishikawa | 「<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう」がよかったです。<ruby>命令<rt>めいれい</rt></ruby>ではなく。<br>*("Cùng xác nhận nào" hay đấy. Không phải mệnh lệnh.)* |
| Thức | <ruby>守<rt>まも</rt></ruby>ってもらうには、<ruby>納得<rt>なっとく</rt></ruby>してもらうのが<ruby>一番<rt>いちばん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Để người ta tuân thủ, cho họ tâm phục là tốt nhất.)* |
| Tổng phụ trách | その<ruby>考<rt>かんが</rt></ruby>えは<ruby>正<rt>ただ</rt></ruby>しい。ただ、<ruby>記録<rt>きろく</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>しましょう。<br>*(Suy nghĩ đó đúng. Nhưng phải lưu ghi nhận.)* |
| Thức | はい、<ruby>是正<rt>ぜせい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>します。<br>*(Vâng, tôi ghi vào báo cáo chấn chỉnh.)* |

---

## Tình huống 7 — Toà nam tầng 3 · 9:50, kiểm tra phần 谷川組 — bị chỉ ra ngược lại

| Vai | Lời thoại |
|---|---|
| Tổng phụ trách | トゥックさん、こちら<ruby>谷川組<rt>たにがわぐみ</rt></ruby>さんの<ruby>足場<rt>あしば</rt></ruby>ですね。<ruby>幅木<rt>はばき</rt></ruby>が<ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>外<rt>はず</rt></ruby>れています。<br>*(Anh Thức, đây là giàn giáo Tanigawa-gumi nhỉ. Ván chắn chân có một chỗ bị tuột.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですね。ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます。すぐ<ruby>対応<rt>たいおう</rt></ruby>します。<br>*(Đúng thật. Cảm ơn anh đã chỉ ra. Tôi xử lý ngay.)* |
| Tổng phụ trách | <ruby>言<rt>い</rt></ruby><ruby>訳<rt>わけ</rt></ruby>をしないところがいいですね。<br>*(Không bao biện là tốt đấy.)* |
| Thức | <ruby>事実<rt>じじつ</rt></ruby>ですから。<ruby>原因<rt>げんいん</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>して<ruby>再発<rt>さいはつ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぎます。<br>*(Vì đó là sự thật. Tôi sẽ kiểm nguyên nhân và ngừa tái diễn.)* |
| Ishikawa | いつまでに<ruby>直<rt>なお</rt></ruby>せますか?<br>*(Đến khi nào sửa xong?)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>復旧<rt>ふっきゅう</rt></ruby>し、<ruby>写真<rt>しゃしん</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Trong sáng nay phục hồi, báo cáo bằng ảnh.)* |

---

## Tình huống 8 — Toà nam tầng 3 · 9:55, gọi điện cho Kondo xử lý ngay

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>南棟<rt>みなみとう</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>幅木<rt>はばき</rt></ruby>が<ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>外<rt>はず</rt></ruby>れています。<br>*(Anh Kondo, ván chắn chân toà nam tầng ba có một chỗ tuột.)* |
| Kondo | パトロールで<ruby>指摘<rt>してき</rt></ruby>されたか。すぐ<ruby>行<rt>い</rt></ruby>く。<br>*(Bị chỉ ra trong tuần tra à. Anh tới ngay.)* |
| Thức | <ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby><ruby>東<rt>ひがし</rt></ruby><ruby>寄<rt>よ</rt></ruby>り、<ruby>三<rt>さん</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>です。<ruby>固定<rt>こてい</rt></ruby><ruby>金具<rt>かなぐ</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Mặt nam dạt đông, tầng thứ ba. Anh kiểm cả khoá cố định giúp.)* |
| Kondo | <ruby>了解<rt>りょうかい</rt></ruby>。なぜ<ruby>外<rt>はず</rt></ruby>れたか<ruby>原因<rt>げんいん</rt></ruby>も<ruby>見<rt>み</rt></ruby>ておく。<br>*(Rõ. Anh xem cả nguyên nhân vì sao tuột.)* |
| Thức | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>復旧<rt>ふっきゅう</rt></ruby>したら<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>送<rt>おく</rt></ruby>ってください。<br>*(Nhờ anh. Phục hồi xong gửi ảnh cho em.)* |
| Kondo | わかった。<ruby>十<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>直<rt>なお</rt></ruby>す。<br>*(Hiểu rồi. Mười phút sửa xong.)* |

---

## Tình huống 9 — Toà nam tầng 5 · 10:20, phát hiện vật liệu chất bừa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、ここ<ruby>通路<rt>つうろ</rt></ruby>に<ruby>資材<rt>しざい</rt></ruby>が<ruby>積<rt>つ</rt></ruby>んであります。<ruby>避難<rt>ひなん</rt></ruby>の<ruby>邪魔<rt>じゃま</rt></ruby>になります。<br>*(Anh Ishikawa, ở đây vật tư chất trên lối đi. Cản trở thoát hiểm.)* |
| Ishikawa | <ruby>確<rt>たし</rt></ruby>かに。これはどこの<ruby>業者<rt>ぎょうしゃ</rt></ruby>さんですか?<br>*(Đúng thật. Đây của nhà thầu nào?)* |
| Thức | <ruby>表示<rt>ひょうじ</rt></ruby>がありません。<ruby>共用<rt>きょうよう</rt></ruby><ruby>通路<rt>つうろ</rt></ruby>なので<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>です。<br>*(Không có nhãn. Là lối đi chung nên là vấn đề của tất cả.)* |
| Tổng phụ trách | では<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>全体<rt>ぜんたい</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby><ruby>喚起<rt>かんき</rt></ruby>しましょう。<br>*(Vậy họp sáng nhắc nhở toàn thể.)* |
| Thức | <ruby>通路<rt>つうろ</rt></ruby>に<ruby>置<rt>お</rt></ruby>かないルールを<ruby>掲示<rt>けいじ</rt></ruby>で<ruby>見<rt>み</rt></ruby>える<ruby>化<rt>か</rt></ruby>するのもいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi nghĩ nên trực quan hoá quy tắc không để trên lối đi bằng bảng treo.)* |
| Ishikawa | いい<ruby>提案<rt>ていあん</rt></ruby>です。<ruby>掲示<rt>けいじ</rt></ruby><ruby>物<rt>ぶつ</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しましょう。<br>*(Đề xuất tốt. Ta chuẩn bị bảng treo.)* |

---

## Tình huống 10 — Toà nam tầng 3 · 10:40, xác nhận 谷川組 đã chấn chỉnh

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>先<rt>さき</rt></ruby>ほどの<ruby>幅木<rt>はばき</rt></ruby>、<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Ishikawa, ván chắn chân lúc nãy, đã phục hồi xong.)* |
| Ishikawa | <ruby>早<rt>はや</rt></ruby>いですね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。…しっかり<ruby>固定<rt>こてい</rt></ruby>されています。<br>*(Nhanh nhỉ. Cùng kiểm nào. …Cố định chắc rồi.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>固定<rt>こてい</rt></ruby><ruby>金具<rt>かなぐ</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>みでした。<ruby>同<rt>おな</rt></ruby>じ<ruby>列<rt>れつ</rt></ruby>を<ruby>全<rt>すべ</rt></ruby>て<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしました。<br>*(Nguyên nhân là khoá cố định bị lỏng. Cả hàng đó em siết lại hết.)* |
| Ishikawa | <ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>だけでなく<ruby>横展開<rt>よこてんかい</rt></ruby>したんですね。いい<ruby>対応<rt>たいおう</rt></ruby>です。<br>*(Không chỉ một chỗ mà mở rộng cả hàng nhỉ. Xử lý tốt.)* |
| Thức | <ruby>同<rt>おな</rt></ruby>じ<ruby>原因<rt>げんいん</rt></ruby>なら<ruby>他<rt>ほか</rt></ruby>も<ruby>危<rt>あぶ</rt></ruby>ないと<ruby>考<rt>かんが</rt></ruby>えました。<br>*(Cùng nguyên nhân thì chỗ khác cũng nguy, em nghĩ vậy.)* |
| Ishikawa | その<ruby>発想<rt>はっそう</rt></ruby>が<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぎます。<br>*(Tư duy đó ngăn được tai nạn.)* |

---

## Tình huống 11 — Phòng họp · 11:00, họp tổng kết パトロール

| Vai | Lời thoại |
|---|---|
| Tổng phụ trách | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>指摘<rt>してき</rt></ruby><ruby>事項<rt>じこう</rt></ruby>をまとめます。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>二丁掛<rt>にちょうが</rt></ruby>け<ruby>不<rt>ふ</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>。<br>*(Tổng hợp các hạng mục chỉ ra hôm nay. Một, móc hai móc chưa quán triệt.)* |
| Ishikawa | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>谷川組<rt>たにがわぐみ</rt></ruby>さんの<ruby>幅木<rt>はばき</rt></ruby><ruby>外<rt>はず</rt></ruby>れ。これは<ruby>是正<rt>ぜせい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Hai, ván chắn chân Tanigawa-gumi bị tuột. Cái này đã chấn chỉnh.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>と<ruby>横展開<rt>よこてんかい</rt></ruby>まで<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>しました。<br>*(Nguyên nhân và mở rộng cả hàng tôi đã lưu vào ghi nhận.)* |
| Tổng phụ trách | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>通路<rt>つうろ</rt></ruby><ruby>資材<rt>しざい</rt></ruby><ruby>放置<rt>ほうち</rt></ruby>。<ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>注意<rt>ちゅうい</rt></ruby><ruby>喚起<rt>かんき</rt></ruby>します。<br>*(Ba, vật tư bỏ trên lối đi. Sẽ nhắc nhở toàn thể.)* |
| Thức | <ruby>掲示<rt>けいじ</rt></ruby><ruby>物<rt>ぶつ</rt></ruby>は<ruby>谷川組<rt>たにがわぐみ</rt></ruby>で<ruby>用意<rt>ようい</rt></ruby>しましょうか?<br>*(Bảng treo để Tanigawa-gumi chuẩn bị nhé?)* |
| Tổng phụ trách | お<ruby>願<rt>ねが</rt></ruby>いできますか。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Nhờ được không. May quá.)* |

---

## Tình huống 12 — Văn phòng công trường · 13:00, viết 是正報告書

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>是正<rt>ぜせい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いています。<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Anh Saito, em đang viết báo cáo chấn chỉnh. Anh xem giúp được không?)* |
| Saito | どれ。…<ruby>指摘<rt>してき</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>、<ruby>対策<rt>たいさく</rt></ruby>、<ruby>写真<rt>しゃしん</rt></ruby>。<ruby>四<rt>よっ</rt></ruby>つ<ruby>揃<rt>そろ</rt></ruby>っているな。<br>*(Đâu. …Nội dung chỉ ra, nguyên nhân, biện pháp, ảnh. Đủ bốn rồi.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>は「<ruby>固定<rt>こてい</rt></ruby><ruby>金具<rt>かなぐ</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>み」、<ruby>対策<rt>たいさく</rt></ruby>は「<ruby>同<rt>どう</rt></ruby><ruby>列<rt>れつ</rt></ruby><ruby>全<rt>ぜん</rt></ruby><ruby>数<rt>すう</rt></ruby><ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>め」と<ruby>書<rt>か</rt></ruby>きました。<br>*(Nguyên nhân ghi "khoá cố định lỏng", biện pháp ghi "siết lại toàn bộ cả hàng".)* |
| Saito | <ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>でいい。だが<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>策<rt>さく</rt></ruby>を<ruby>一<rt>ひと</rt></ruby><ruby>行<rt>ぎょう</rt></ruby><ruby>足<rt>た</rt></ruby>せ。<br>*(Cụ thể, tốt. Nhưng thêm một dòng biện pháp ngừa tái diễn.)* |
| Thức | 「<ruby>週<rt>しゅう</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>め<ruby>点検<rt>てんけん</rt></ruby>を<ruby>実施<rt>じっし</rt></ruby>」と<ruby>追記<rt>ついき</rt></ruby>します。<br>*(Em bổ sung "thực hiện kiểm tra siết lại tuần một lần".)* |
| Saito | それでいい。<ruby>報告<rt>ほうこく</rt></ruby><ruby>書<rt>しょ</rt></ruby>は<ruby>次<rt>つぎ</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐためにある。<br>*(Vậy là được. Báo cáo có để ngừa tai nạn lần sau.)* |

---

## Tình huống 13 — Sân công trường · 8:00 hôm sau, 朝礼 nhắc 注意喚起 toàn thể

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>連絡<rt>れんらく</rt></ruby>です。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>パトロールで<ruby>三<rt>みっ</rt></ruby>つ<ruby>指摘<rt>してき</rt></ruby>がありました。<br>*(Thông báo. Tuần tra an toàn hôm qua có ba điểm bị chỉ ra.)* |
| Thức | <ruby>特<rt>とく</rt></ruby>に<ruby>移動<rt>いどう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>の<ruby>二丁掛<rt>にちょうが</rt></ruby>け。<ruby>急<rt>いそ</rt></ruby>いでも<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ってください。<br>*(Đặc biệt móc hai móc khi di chuyển. Dù vội cũng nhất định tuân thủ.)* |
| Kondo | <ruby>幅木<rt>はばき</rt></ruby>の<ruby>件<rt>けん</rt></ruby>はどうなった?<br>*(Vụ ván chắn chân thế nào rồi?)* |
| Thức | <ruby>是正<rt>ぜせい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>原因<rt>げんいん</rt></ruby>は<ruby>金具<rt>かなぐ</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>み。<ruby>今後<rt>こんご</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>一<rt>いち</rt></ruby>で<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>め<ruby>点検<rt>てんけん</rt></ruby>します。<br>*(Đã chấn chỉnh. Nguyên nhân là khoá lỏng. Từ nay tuần một lần kiểm siết lại.)* |
| Nam | <ruby>通路<rt>つうろ</rt></ruby>の<ruby>資材<rt>しざい</rt></ruby>はどうしますか?<br>*(Vật tư trên lối đi thì sao ạ?)* |
| Thức | <ruby>通路<rt>つうろ</rt></ruby>には<ruby>絶対<rt>ぜったい</rt></ruby><ruby>置<rt>お</rt></ruby>かない。<ruby>掲示<rt>けいじ</rt></ruby><ruby>物<rt>ぶつ</rt></ruby>も<ruby>本日<rt>ほんじつ</rt></ruby><ruby>設置<rt>せっち</rt></ruby>します。<br>*(Tuyệt đối không để trên lối đi. Bảng treo hôm nay cũng lắp.)* |

---

## Tình huống 14 — Trên giàn giáo · 10:00, đàn em chủ động báo nguy cơ

| Vai | Lời thoại |
|---|---|
| Hùng | トゥックさん、<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>手<rt>て</rt></ruby>すりが<ruby>少<rt>すこ</rt></ruby>しぐらつきます。<br>*(Anh Thức, báo cáo. Lan can tầng bốn hơi lung lay.)* |
| Thức | よく<ruby>気<rt>き</rt></ruby>づいた。すぐ<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<ruby>場所<rt>ばしょ</rt></ruby>はどこ?<br>*(Phát hiện tốt lắm. Đi xem ngay. Chỗ nào?)* |
| Hùng | <ruby>北面<rt>きためん</rt></ruby>の<ruby>角<rt>かど</rt></ruby>です。<ruby>作業<rt>さぎょう</rt></ruby>は<ruby>止<rt>と</rt></ruby>めておきました。<br>*(Góc mặt bắc. Em đã dừng việc lại.)* |
| Thức | <ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>だ。<ruby>危<rt>あぶ</rt></ruby>ないと<ruby>思<rt>おも</rt></ruby>ったら<ruby>止<rt>と</rt></ruby>めて<ruby>報告<rt>ほうこく</rt></ruby>。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Phán đoán đúng. Thấy nguy thì dừng rồi báo. Đó là quan trọng nhất.)* |
| Hùng | パトロールの<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて、<ruby>意識<rt>いしき</rt></ruby>するようになりました。<br>*(Nghe chuyện tuần tra, em bắt đầu để ý hơn.)* |
| Thức | いい<ruby>変化<rt>へんか</rt></ruby>だ。みんながそうなれば<ruby>現場<rt>げんば</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>になる。<br>*(Thay đổi tốt. Mọi người được vậy thì công trường an toàn.)* |

---

## Tình huống 15 — Trên giàn giáo · 10:15, xử lý lan can lung lay

| Vai | Lời thoại |
|---|---|
| Thức | (kiểm tra) <ruby>緊結<rt>きんけつ</rt></ruby>クランプが<ruby>緩<rt>ゆる</rt></ruby>んでいるね。<br>*(Cùm siết bị lỏng nhỉ.)* |
| Hùng | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>幅木<rt>はばき</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>原因<rt>げんいん</rt></ruby>ですか?<br>*(Cùng nguyên nhân với ván chắn chân hôm qua ạ?)* |
| Thức | そうだ。<ruby>振動<rt>しんどう</rt></ruby>でクランプが<ruby>緩<rt>ゆる</rt></ruby>む。やはり<ruby>横展開<rt>よこてんかい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だな。<br>*(Đúng. Rung làm cùm lỏng. Đúng là cần mở rộng kiểm tra cả mảng.)* |
| Hùng | <ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>しますか?<br>*(Kiểm cả tầng bốn ạ?)* |
| Thức | <ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby>と<ruby>五<rt>ご</rt></ruby><ruby>階<rt>かい</rt></ruby>、<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めする。<ruby>君<rt>きみ</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えよう。<br>*(Tầng bốn và năm, siết lại. Em cùng học luôn nhé.)* |
| Hùng | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh chỉ.)* |

---

## Tình huống 16 — Văn phòng công trường · 13:30, báo 石川さん về phát hiện chủ động

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>手<rt>て</rt></ruby>すり<ruby>緩<rt>ゆる</rt></ruby>みを<ruby>作業員<rt>さぎょういん</rt></ruby>が<ruby>発見<rt>はっけん</rt></ruby>し、<ruby>是正<rt>ぜせい</rt></ruby>しました。<br>*(Anh Ishikawa, báo cáo. Công nhân phát hiện lan can lỏng tầng bốn, đã chấn chỉnh.)* |
| Ishikawa | パトロールではなく、<ruby>自主<rt>じしゅ</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>見<rt>み</rt></ruby>つけたんですね。<br>*(Không phải tuần tra mà tự phát hiện nhỉ.)* |
| Thức | はい。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>共有<rt>きょうゆう</rt></ruby>が<ruby>効<rt>き</rt></ruby>いたようです。<ruby>四<rt>よん</rt></ruby>・<ruby>五<rt>ご</rt></ruby><ruby>階<rt>かい</rt></ruby>も<ruby>横展開<rt>よこてんかい</rt></ruby>で<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしました。<br>*(Vâng. Việc chia sẻ hôm qua có tác dụng. Tầng bốn năm cũng siết lại cả mảng.)* |
| Ishikawa | <ruby>作業員<rt>さぎょういん</rt></ruby>が<ruby>自<rt>みずか</rt></ruby>ら<ruby>動<rt>うご</rt></ruby>く<ruby>現場<rt>げんば</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>いです。いい<ruby>文化<rt>ぶんか</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>っています。<br>*(Công trường mà công nhân tự chủ động là mạnh. Văn hoá tốt đang nảy nở.)* |
| Thức | <ruby>是正<rt>ぜせい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>書<rt>しょ</rt></ruby>に<ruby>自主<rt>じしゅ</rt></ruby><ruby>発見<rt>はっけん</rt></ruby>として<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Em ghi vào báo cáo chấn chỉnh là phát hiện tự chủ.)* |
| Ishikawa | ぜひ。<ruby>良<rt>よ</rt></ruby>い<ruby>事例<rt>じれい</rt></ruby>は<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>しましょう。<br>*(Nên thế. Ví dụ tốt cũng lưu lại.)* |

---

## Tình huống 17 — Lán công trường · 16:00, Saito nói về vai trò パトロール

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、パトロールに<ruby>出<rt>で</rt></ruby>てみて<ruby>何<rt>なに</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じた?<br>*(Thức, đi tuần tra rồi cậu cảm thấy gì?)* |
| Thức | <ruby>指摘<rt>してき</rt></ruby>する<ruby>側<rt>がわ</rt></ruby>も、される<ruby>側<rt>がわ</rt></ruby>も、<ruby>目的<rt>もくてき</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだと<ruby>感<rt>かん</rt></ruby>じました。<br>*(Em cảm thấy bên chỉ ra và bên bị chỉ ra, mục đích như nhau.)* |
| Saito | そのとおりだ。<ruby>犯人<rt>はんにん</rt></ruby><ruby>探<rt>さが</rt></ruby>しじゃない。<ruby>事故<rt>じこ</rt></ruby>を<ruby>止<rt>と</rt></ruby>めるためだ。<br>*(Đúng vậy. Không phải tìm thủ phạm. Là để chặn tai nạn.)* |
| Thức | <ruby>責<rt>せ</rt></ruby>めない<ruby>指摘<rt>してき</rt></ruby>のほうが、<ruby>相手<rt>あいて</rt></ruby>が<ruby>本気<rt>ほんき</rt></ruby>で<ruby>直<rt>なお</rt></ruby>すと<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu chỉ ra mà không trách thì người ta mới thật sự sửa.)* |
| Saito | <ruby>職長<rt>しょくちょう</rt></ruby>になると<ruby>指摘<rt>してき</rt></ruby>する<ruby>機会<rt>きかい</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>える。その<ruby>感覚<rt>かんかく</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れるな。<br>*(Lên đốc công thì cơ hội chỉ ra tăng. Đừng quên cảm giác đó.)* |
| Thức | はい、<ruby>守<rt>まも</rt></ruby>る<ruby>気<rt>き</rt></ruby>になってもらう<ruby>指摘<rt>してき</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>がけます。<br>*(Vâng, em sẽ chú tâm chỉ ra theo cách khiến người ta muốn tuân thủ.)* |

---

## Tình huống 18 — Ký túc xá · 19:30, Thức kể Nam cách chỉ ra vi phạm

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>他<rt>ほか</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>の<ruby>間違<rt>まちが</rt></ruby>いを<ruby>言<rt>い</rt></ruby>うの、<ruby>難<rt>むずか</rt></ruby>しくないですか?<br>*(Anh Thức, nói lỗi của người khác, không khó à?)* |
| Thức | <ruby>難<rt>むずか</rt></ruby>しいよ。だからコツがある。「あなたが<ruby>悪<rt>わる</rt></ruby>い」じゃなく「この<ruby>状態<rt>じょうたい</rt></ruby>が<ruby>危<rt>あぶ</rt></ruby>ない」と<ruby>言<rt>い</rt></ruby>う。<br>*(Khó chứ. Nên có bí quyết. Không nói "anh sai" mà nói "tình trạng này nguy".)* |
| Nam | <ruby>人<rt>ひと</rt></ruby>ではなく<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>言<rt>い</rt></ruby>う、ですね。<br>*(Không nói người mà nói tình trạng nhỉ.)* |
| Thức | そう。そして「<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>直<rt>なお</rt></ruby>そう」と<ruby>言<rt>い</rt></ruby>えば、<ruby>相手<rt>あいて</rt></ruby>も<ruby>恥<rt>はじ</rt></ruby>をかかない。<br>*(Đúng. Rồi nói "cùng sửa nào" thì người ta không mất mặt.)* |
| Nam | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>僕<rt>ぼく</rt></ruby>も<ruby>気<rt>き</rt></ruby>づいたら<ruby>言<rt>い</rt></ruby>えるようになりたいです。<br>*(Bổ ích quá. Em cũng muốn phát hiện là nói được.)* |
| Thức | その<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>黙<rt>だま</rt></ruby>っているほうが<ruby>本当<rt>ほんとう</rt></ruby>は<ruby>冷<rt>つめ</rt></ruby>たい。<br>*(Cái tâm thế đó quan trọng. Im lặng mới thật sự là lạnh lùng.)* |

---

## Tình huống 19 — Phòng nghỉ Linh gọi điện · 21:00, kể chuyện tuần tra (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, hôm nay anh đi kiểm tra an toàn cả công trường hả? Nghe căng nhỉ. |
| Thức | Ừ, lần đầu anh đi với đoàn của tổng thầu. Phải nhắc cả người nhà thầu khác móc dây an toàn cho đúng. |
| Linh | Người ta có khó chịu khi anh nhắc không? |
| Thức | Lúc đầu hơi, nhưng anh không trách họ, chỉ nói chỗ đó nguy rồi cùng sửa, nên họ hiểu. Sếp cũng khen cách anh xử lý. |
| Linh | Anh giờ chững chạc thật đấy. Em thấy yên tâm về anh. |
| Thức | Cảm ơn em. Anh ráng để cuối năm thi chứng chỉ nghề rồi hướng tới 特定技能 số 2. Thôi mai dậy sớm, anh nghỉ nhé. |

---

## Tình huống 20 — Phòng họp · 9:00, パトロール kế tiếp ghi nhận cải thiện

| Vai | Lời thoại |
|---|---|
| Tổng phụ trách | <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>パトロールを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>是正<rt>ぜせい</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>から。<br>*(Bắt đầu tuần tra an toàn tuần này. Từ tình hình chấn chỉnh tuần trước.)* |
| Thức | <ruby>谷川組<rt>たにがわぐみ</rt></ruby>、<ruby>幅木<rt>はばき</rt></ruby><ruby>是正<rt>ぜせい</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<ruby>週<rt>しゅう</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めを<ruby>開始<rt>かいし</rt></ruby>しました。<br>*(Tanigawa-gumi, ván chắn chân đã chấn chỉnh. Đã bắt đầu siết lại tuần một lần.)* |
| Ishikawa | <ruby>二丁掛<rt>にちょうが</rt></ruby>けも<ruby>今週<rt>こんしゅう</rt></ruby>は<ruby>違反<rt>いはん</rt></ruby>ゼロでした。<br>*(Móc hai móc tuần này cũng không vi phạm nào.)* |
| Tổng phụ trách | <ruby>全体<rt>ぜんたい</rt></ruby>に<ruby>意識<rt>いしき</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がりましたね。トゥックさんの<ruby>掲示<rt>けいじ</rt></ruby><ruby>物<rt>ぶつ</rt></ruby>も<ruby>効果的<rt>こうかてき</rt></ruby>です。<br>*(Ý thức toàn thể nâng lên nhỉ. Bảng treo của anh Thức cũng hiệu quả.)* |
| Thức | ありがとうございます。でも<ruby>気<rt>き</rt></ruby>を<ruby>緩<rt>ゆる</rt></ruby>めると<ruby>戻<rt>もど</rt></ruby>ります。<ruby>続<rt>つづ</rt></ruby>けることが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Cảm ơn anh. Nhưng lơi lỏng là trở lại ngay. Duy trì mới quan trọng.)* |
| Tổng phụ trách | その<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>意識<rt>いしき</rt></ruby>です。<br>*(Thái độ đó mới là ý thức an toàn thực thụ.)* |

---

## Đọng lại

Thức lần đầu vào vai vừa kiểm tra vừa bị kiểm tra trong 安全パトロール. Bài học cốt lõi: chỉ ra vi phạm không phải để tìm thủ phạm mà để chặn tai nạn — nói về tình trạng chứ không trách người, mời "cùng sửa" để người vi phạm không mất mặt và thật sự muốn tuân thủ. Khi chính 谷川組 bị chỉ ra, Thức không bao biện, xử lý ngay và mở rộng kiểm tra cả mảng (横展開), ghi 是正報告書 đủ bốn phần kèm biện pháp ngừa tái diễn. Văn hoá tự phát hiện nguy cơ bắt đầu lan trong đội.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 安全パトロール | あんぜんパトロール | tuần tra an toàn |
> | 指摘 | してき | chỉ ra (vi phạm/lỗi) |
> | 是正 | ぜせい | chấn chỉnh / khắc phục |
> | 是正報告書 | ぜせいほうこくしょ | báo cáo chấn chỉnh |
> | 統括安全衛生責任者 | とうかつあんぜんえいせいせきにんしゃ | tổng phụ trách an toàn vệ sinh |
> | 二丁掛け | にちょうがけ | móc hai móc dây an toàn |
> | 幅木 | はばき | ván chắn chân (giàn giáo) |
> | 緊結クランプ | きんけつクランプ | cùm siết nối giàn giáo |
> | 増し締め | ましじめ | siết lại (cho chặt thêm) |
> | 横展開 | よこてんかい | mở rộng kiểm tra/xử lý cả mảng |
> | 注意喚起 | ちゅういかんき | nhắc nhở cảnh giác |
> | 自主発見 | じしゅはっけん | tự chủ động phát hiện |
> | 反発 | はんぱつ | phản kháng / chống đối |
> | 見える化 | みえるか | trực quan hoá |
> | 犯人探し | はんにんさがし | việc truy tìm thủ phạm |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000007, 800000037, NULL, 'markdown_book', 'T7. Thi chứng chỉ thợ giàn giáo bậc 2 — học khoa và thực kỹ (とび技能士2級受験)', '# Sách kỹ năng đặc định xây dựng · T7. Thi chứng chỉ thợ giàn giáo bậc 2 — học khoa và thực kỹ (とび技能士2級受験)

> **Mục tiêu nhân vật:** Thức đăng ký thi 2級とび技能士 (技能検定). Phải ôn 学科 (lý thuyết, kanji nặng) và luyện 実技 (thực kỹ). Học mẫu câu tiếng Nhật khi đăng ký thi, hỏi đàn anh về đề lý thuyết, luyện thực kỹ có người chấm, vượt căng thẳng phòng thi.

---

## Bối cảnh

Tháng 7–8 năm 2030. Để củng cố con đường lên 職長 và hướng tới 特定技能2号, Thức đăng ký 技能検定 2級とび技能士 — kỳ thi nhà nước gồm 学科試験 (trắc nghiệm + tự luận, nhiều kanji chuyên môn) và 実技試験 (lắp giàn giáo theo bản vẽ, có giám khảo chấm thời gian và độ chính xác). Tiếng Nhật của Thức N3 hướng N2, phần 学科 là thử thách lớn nhất. Tiếng Nhật nghiệp vụ chương này là ngôn ngữ thủ tục thi, hỏi-đáp ôn tập, hướng dẫn thực kỹ.

---

## Tình huống 1 — Văn phòng công trường · 8:00, Saito khuyến khích thi 技能検定

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今年<rt>ことし</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>、<ruby>二級<rt>にきゅう</rt></ruby>とびを<ruby>受<rt>う</rt></ruby>けてみないか。<br>*(Thức, kỳ thi tay nghề năm nay, thi 2級 thợ giàn giáo xem sao.)* |
| Thức | <ruby>二級<rt>にきゅう</rt></ruby>とび<ruby>技能士<rt>ぎのうし</rt></ruby>ですか。<ruby>学科<rt>がっか</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいと<ruby>聞<rt>き</rt></ruby>きました。<br>*(2級 thợ giàn giáo ạ. Em nghe phần lý thuyết khó lắm.)* |
| Saito | <ruby>実技<rt>じつぎ</rt></ruby>はお<ruby>前<rt>まえ</rt></ruby>なら<ruby>問題<rt>もんだい</rt></ruby>ない。<ruby>学科<rt>がっか</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>壁<rt>かべ</rt></ruby>だな。<br>*(Thực kỹ thì cậu không lo. Kanji phần lý thuyết là rào cản.)* |
| Thức | <ruby>資格<rt>しかく</rt></ruby>があれば<ruby>職長<rt>しょくちょう</rt></ruby>としても<ruby>説得<rt>せっとく</rt></ruby><ruby>力<rt>りょく</rt></ruby>が<ruby>増<rt>ま</rt></ruby>しますね。<br>*(Có chứng chỉ thì làm đốc công cũng thuyết phục hơn nhỉ.)* |
| Saito | そうだ。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すなら<ruby>武器<rt>ぶき</rt></ruby>になる。<br>*(Đúng. Nhắm 特定技能 số 2 thì nó là vũ khí.)* |
| Thức | はい、<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>み<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べます。<br>*(Vâng, em sẽ thử sức. Em sẽ tìm hiểu cách đăng ký.)* |

---

## Tình huống 2 — Bàn làm việc · 9:00, gọi điện hỏi thủ tục đăng ký

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>二級<rt>にきゅう</rt></ruby>とび<ruby>技能士<rt>ぎのうし</rt></ruby>の<ruby>受検<rt>じゅけん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みについて<ruby>伺<rt>うかが</rt></ruby>いたいです。<br>*(Cảm ơn anh. Tôi muốn hỏi về đăng ký dự thi 2級 thợ giàn giáo.)* |
| Hiệp hội | はい。<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>二年<rt>にねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>あれば<ruby>受検<rt>じゅけん</rt></ruby><ruby>資格<rt>しかく</rt></ruby>があります。<br>*(Vâng. Có kinh nghiệm thực tế hai năm trở lên là đủ tư cách dự thi.)* |
| Thức | <ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>は<ruby>五年<rt>ごねん</rt></ruby>あります。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みに<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Kinh nghiệm tôi có năm năm. Đăng ký cần giấy tờ gì ạ?)* |
| Hiệp hội | <ruby>受検<rt>じゅけん</rt></ruby><ruby>申請<rt>しんせい</rt></ruby><ruby>書<rt>しょ</rt></ruby>と<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>が<ruby>要<rt>い</rt></ruby>ります。<br>*(Đơn dự thi và giấy chứng minh kinh nghiệm. Cần công ty xác nhận.)* |
| Thức | <ruby>外国人<rt>がいこくじん</rt></ruby>でも<ruby>受検<rt>じゅけん</rt></ruby>できますか?<br>*(Người nước ngoài cũng dự thi được không ạ?)* |
| Hiệp hội | もちろんです。<ruby>学科<rt>がっか</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>ですが、ふりがな<ruby>付<rt>つ</rt></ruby>きの<ruby>問題<rt>もんだい</rt></ruby>もあります。<br>*(Tất nhiên. Lý thuyết bằng tiếng Nhật, nhưng có cả đề có furigana.)* |

---

## Tình huống 3 — Văn phòng công trường · 9:30, nhờ Saito ký chứng minh kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>の<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか。<br>*(Anh Saito, em nhờ anh điền giấy chứng minh kinh nghiệm được không.)* |
| Saito | いいぞ。<ruby>従事<rt>じゅうじ</rt></ruby><ruby>期間<rt>きかん</rt></ruby>と<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばいいんだな。<br>*(Được. Ghi thời gian làm và nội dung công việc nhỉ.)* |
| Thức | はい。とび<ruby>工事<rt>こうじ</rt></ruby>、<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみた</rt></ruby>て、<ruby>五年<rt>ごねん</rt></ruby><ruby>間<rt>かん</rt></ruby>です。<br>*(Vâng. Thi công giàn giáo, lắp giàn giáo, năm năm.)* |
| Saito | <ruby>会社<rt>かいしゃ</rt></ruby><ruby>印<rt>いん</rt></ruby>は<ruby>本社<rt>ほんしゃ</rt></ruby>でもらえ。<ruby>明日<rt>あした</rt></ruby><ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>ってやる。<br>*(Dấu công ty thì lấy ở trụ sở. Mai tôi mang đi cho.)* |
| Thức | ありがとうございます。<ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りは<ruby>今月<rt>こんげつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>です。<br>*(Cảm ơn anh. Hạn chót là cuối tháng này.)* |
| Saito | <ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>出<rt>だ</rt></ruby>そう。<ruby>勉強<rt>べんきょう</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>しろ。<br>*(Nộp sớm cho dư dả. Tập trung mà học.)* |

---

## Tình huống 4 — Lán công trường · 12:15, hỏi Kondo về dạng đề 学科

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>はどんな<ruby>問題<rt>もんだい</rt></ruby>が<ruby>出<rt>で</rt></ruby>ますか?<br>*(Anh Kondo, thi lý thuyết ra đề kiểu gì?)* |
| Kondo | <ruby>真偽<rt>しんぎ</rt></ruby><ruby>法<rt>ほう</rt></ruby>と<ruby>択一<rt>たくいつ</rt></ruby><ruby>法<rt>ほう</rt></ruby>だ。<ruby>法令<rt>ほうれい</rt></ruby>、<ruby>材料<rt>ざいりょう</rt></ruby>、<ruby>施工<rt>せこう</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby>から<ruby>出<rt>で</rt></ruby>る。<br>*(Đúng-sai và chọn một. Ra từ pháp lệnh, vật liệu, thi công, an toàn.)* |
| Thức | <ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいのはどこですか?<br>*(Khó nhất là phần nào ạ?)* |
| Kondo | <ruby>外国人<rt>がいこくじん</rt></ruby>には<ruby>法令<rt>ほうれい</rt></ruby>だな。<ruby>用語<rt>ようご</rt></ruby>が<ruby>固<rt>かた</rt></ruby>い。<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>を<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>せ。<br>*(Với người nước ngoài là pháp lệnh. Từ ngữ cứng. Cứ làm lại đề cũ.)* |
| Thức | <ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>はどこで<ruby>手<rt>て</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りますか?<br>*(Đề cũ lấy ở đâu ạ?)* |
| Kondo | <ruby>協会<rt>きょうかい</rt></ruby>のサイトと<ruby>本屋<rt>ほんや</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>の<ruby>古<rt>ふる</rt></ruby>い<ruby>問題集<rt>もんだいしゅう</rt></ruby>も<ruby>貸<rt>か</rt></ruby>してやる。<br>*(Trang hiệp hội và hiệu sách. Sách đề cũ của anh cũng cho cậu mượn.)* |

---

## Tình huống 5 — Ký túc xá · 20:00, ôn 学科 — vật lộn với kanji pháp lệnh

| Vai | Lời thoại |
|---|---|
| Thức | (đọc đề) 「<ruby>足場<rt>あしば</rt></ruby>の<ruby>組立<rt>くみた</rt></ruby>て<ruby>等<rt>とう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>主任者<rt>しゅにんしゃ</rt></ruby>」…<ruby>読<rt>よ</rt></ruby>めるけど<ruby>意味<rt>いみ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい。<br>*("Người chủ nhiệm thao tác lắp giàn giáo"… đọc được mà nghĩa khó.)* |
| Hùng | トゥックさん、<ruby>何<rt>なに</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>していますか?<br>*(Anh Thức, anh học gì vậy?)* |
| Thức | <ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby>だ。<ruby>法令<rt>ほうれい</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>が<ruby>固<rt>かた</rt></ruby>くて<ruby>頭<rt>あたま</rt></ruby>に<ruby>入<rt>はい</rt></ruby>らない。<br>*(Lý thuyết kỳ thi tay nghề. Từ pháp lệnh cứng quá không vào đầu.)* |
| Hùng | <ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>読<rt>よ</rt></ruby>むといいって、トゥックさんが<ruby>前<rt>まえ</rt></ruby>に<ruby>言<rt>い</rt></ruby>っていました。<br>*(Anh từng bảo đọc to thì tốt mà.)* |
| Thức | そうだったな。<ruby>自分<rt>じぶん</rt></ruby>のアドバイスを<ruby>忘<rt>わす</rt></ruby>れていた。<ruby>音読<rt>おんどく</rt></ruby>してみる。<br>*(Đúng nhỉ. Lời khuyên của chính mình mà quên. Đọc thành tiếng thử nào.)* |
| Hùng | <ruby>頑張<rt>がんば</rt></ruby>ってください。<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Anh cố lên. Em ủng hộ anh.)* |

---

## Tình huống 6 — Lán công trường · 12:15, Kondo giảng giải một câu khó

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、この<ruby>問題<rt>もんだい</rt></ruby>、<ruby>答<rt>こた</rt></ruby>えが<ruby>分<rt>わ</rt></ruby>かりません。<ruby>単管<rt>たんかん</rt></ruby><ruby>足場<rt>あしば</rt></ruby>の<ruby>建地<rt>たてじ</rt></ruby><ruby>間隔<rt>かんかく</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>です。<br>*(Anh Kondo, câu này em không biết đáp án. Câu về khoảng cách cột đứng giàn giáo ống đơn.)* |
| Kondo | <ruby>桁<rt>けた</rt></ruby><ruby>行<rt>ゆ</rt></ruby>き<ruby>方向<rt>ほうこう</rt></ruby>は<ruby>一<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>八<rt>はち</rt></ruby>メートル<ruby>以下<rt>いか</rt></ruby>だ。<ruby>数字<rt>すうじ</rt></ruby>は<ruby>暗記<rt>あんき</rt></ruby>するしかない。<br>*(Hướng dọc dầm là 1,8 mét trở xuống. Con số chỉ có học thuộc.)* |
| Thức | <ruby>梁間<rt>はりま</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>は<ruby>一<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>五<rt>ご</rt></ruby>メートル<ruby>以下<rt>いか</rt></ruby>でしたよね。<br>*(Hướng ngang dầm là 1,5 mét trở xuống phải không.)* |
| Kondo | よく<ruby>覚<rt>おぼ</rt></ruby>えていた。<ruby>数字<rt>すうじ</rt></ruby><ruby>系<rt>けい</rt></ruby>は<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>点<rt>てん</rt></ruby>が<ruby>取<rt>と</rt></ruby>れる。<br>*(Nhớ tốt đấy. Dạng con số chắc chắn ăn điểm.)* |
| Thức | <ruby>数字<rt>すうじ</rt></ruby>はカードにして<ruby>毎日<rt>まいにち</rt></ruby><ruby>見<rt>み</rt></ruby>ます。<br>*(Con số em làm thẻ xem mỗi ngày.)* |
| Kondo | それがいい。<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えた<ruby>数字<rt>すうじ</rt></ruby>は<ruby>忘<rt>わす</rt></ruby>れない。<br>*(Vậy tốt. Con số nhớ bằng cơ thể thì không quên.)* |

---

## Tình huống 7 — Sân công trường · 16:30, luyện 実技 có Saito chấm thử

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>実技<rt>じつぎ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をするぞ。<ruby>図面<rt>ずめん</rt></ruby>どおりに<ruby>組<rt>く</rt></ruby>め。<ruby>時間<rt>じかん</rt></ruby>を<ruby>計<rt>はか</rt></ruby>る。<br>*(Thức, luyện thực kỹ nào. Lắp theo đúng bản vẽ. Anh bấm giờ.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ですか?<br>*(Vâng, nhờ anh. Thời gian giới hạn bao nhiêu phút ạ?)* |
| Saito | <ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>で<ruby>仕上<rt>しあ</rt></ruby>げろ。<ruby>打<rt>う</rt></ruby>ち<ruby>切<rt>き</rt></ruby>り<ruby>時間<rt>じかん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えると<ruby>失格<rt>しっかく</rt></ruby>だ。<br>*(Hoàn thành trong thời gian chuẩn. Quá thời gian cắt là loại.)* |
| Thức | (lắp xong) <ruby>完成<rt>かんせい</rt></ruby>しました。<br>*(Em xong rồi ạ.)* |
| Saito | <ruby>時間<rt>じかん</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby><ruby>圏<rt>けん</rt></ruby>だ。だが<ruby>緊結<rt>きんけつ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きが<ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>逆<rt>ぎゃく</rt></ruby>だ。<ruby>減点<rt>げんてん</rt></ruby>される。<br>*(Thời gian trong vùng đậu. Nhưng hướng siết một chỗ ngược. Bị trừ điểm.)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>します。…<ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>焦<rt>あせ</rt></ruby>ると<ruby>向<rt>む</rt></ruby>きを<ruby>間違<rt>まちが</rt></ruby>えますね。<br>*(Em kiểm. …Đúng thật. Vội thì sai hướng nhỉ.)* |

---

## Tình huống 8 — Sân công trường · 16:50, Saito chỉ điểm chấm 実技

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>採点<rt>さいてん</rt></ruby>は<ruby>寸法<rt>すんぽう</rt></ruby>、<ruby>緊結<rt>きんけつ</rt></ruby>、<ruby>水平<rt>すいへい</rt></ruby><ruby>垂直<rt>すいちょく</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>、この<ruby>四<rt>よっ</rt></ruby>つだ。<br>*(Chấm điểm là kích thước, mối siết, ngang dọc, thao tác an toàn, bốn cái này.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>も<ruby>採点<rt>さいてん</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>ですか?<br>*(Thao tác an toàn cũng bị chấm ạ?)* |
| Saito | <ruby>当然<rt>とうぜん</rt></ruby>だ。<ruby>保護<rt>ほご</rt></ruby><ruby>具<rt>ぐ</rt></ruby><ruby>未<rt>み</rt></ruby><ruby>着用<rt>ちゃくよう</rt></ruby>は<ruby>一発<rt>いっぱつ</rt></ruby><ruby>失格<rt>しっかく</rt></ruby>もある。<br>*(Đương nhiên. Không đeo đồ bảo hộ có khi loại ngay.)* |
| Thức | <ruby>速<rt>はや</rt></ruby>くても<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>いたら<ruby>意味<rt>いみ</rt></ruby>がないですね。<br>*(Nhanh mà bỏ an toàn thì vô nghĩa nhỉ.)* |
| Saito | そうだ。<ruby>現場<rt>げんば</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じだ。<ruby>普段<rt>ふだん</rt></ruby>どおりやれば<ruby>受<rt>う</rt></ruby>かる。<br>*(Đúng. Giống hiện trường. Làm như mọi ngày là đậu.)* |
| Thức | はい、<ruby>特別<rt>とくべつ</rt></ruby>なことはせず、<ruby>基本<rt>きほん</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>にやります。<br>*(Vâng, em không làm gì đặc biệt, làm cơ bản cho chỉn chu.)* |

---

## Tình huống 9 — Ký túc xá · 21:00, luyện đề và tự kiểm điểm

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) <ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>、<ruby>採点<rt>さいてん</rt></ruby>する。…<ruby>七割<rt>ななわり</rt></ruby>か。<br>*(Đề cũ ba năm, tự chấm. …Bảy phần à.)* |
| Hùng | トゥックさん、<ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>割<rt>わり</rt></ruby>ですか?<br>*(Anh Thức, điểm đậu là mấy phần ạ?)* |
| Thức | <ruby>学科<rt>がっか</rt></ruby>は<ruby>六割<rt>ろくわり</rt></ruby><ruby>五分<rt>ごぶ</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>だ。<ruby>今<rt>いま</rt></ruby>は<ruby>七割<rt>ななわり</rt></ruby>、ぎりぎり<ruby>足<rt>た</rt></ruby>りる。<br>*(Lý thuyết là 65% trở lên. Giờ bảy phần, vừa đủ.)* |
| Hùng | すごいです。あと<ruby>少<rt>すこ</rt></ruby>しですね。<br>*(Giỏi quá. Còn chút nữa thôi nhỉ.)* |
| Thức | <ruby>間違<rt>まちが</rt></ruby>えた<ruby>問題<rt>もんだい</rt></ruby>を<ruby>分析<rt>ぶんせき</rt></ruby>する。<ruby>法令<rt>ほうれい</rt></ruby>でよく<ruby>落<rt>お</rt></ruby>とすな。<br>*(Phân tích câu sai. Hay rớt ở pháp lệnh.)* |
| Hùng | <ruby>苦手<rt>にがて</rt></ruby>なところを<ruby>集中<rt>しゅうちゅう</rt></ruby>ですね。<br>*(Tập trung chỗ yếu nhỉ.)* |

---

## Tình huống 10 — Sân công trường · 16:30, luyện 実技 lần hai cải thiện

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>は<ruby>前回<rt>ぜんかい</rt></ruby>の<ruby>緊結<rt>きんけつ</rt></ruby>ミスを<ruby>意識<rt>いしき</rt></ruby>しろ。<br>*(Hôm nay để ý lỗi mối siết lần trước.)* |
| Thức | はい。<ruby>緊結<rt>きんけつ</rt></ruby>するたびに「<ruby>向<rt>む</rt></ruby>き、ヨシ」と<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Mỗi lần siết em xác nhận "hướng, OK".)* |
| Saito | (chấm) <ruby>今回<rt>こんかい</rt></ruby>は<ruby>向<rt>む</rt></ruby>きミスなし。<ruby>時間<rt>じかん</rt></ruby>も<ruby>短縮<rt>たんしゅく</rt></ruby>した。<br>*(Lần này không lỗi hướng. Thời gian cũng rút ngắn.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>が<ruby>効<rt>き</rt></ruby>きました。<br>*(Hô ra tiếng xác nhận có hiệu quả.)* |
| Saito | <ruby>本番<rt>ほんばん</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じようにやれ。<ruby>緊張<rt>きんちょう</rt></ruby>すると<ruby>声<rt>こえ</rt></ruby>が<ruby>消<rt>き</rt></ruby>えるぞ。<br>*(Thi thật cũng làm vậy. Hồi hộp là tiếng tắt mất đấy.)* |
| Thức | はい、<ruby>本番<rt>ほんばん</rt></ruby>こそ<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng, thi thật càng nhất định hô.)* |

---

## Tình huống 11 — Hội trường thi · 8:40 ngày thi, làm thủ tục 学科

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>受検<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>と<ruby>名前<rt>なまえ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>受検<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してください。<br>*(Tôi kiểm số báo danh và tên. Đưa phiếu dự thi ra.)* |
| Thức | はい、こちらです。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>用<rt>よう</rt></ruby>のふりがな<ruby>付<rt>つ</rt></ruby>き<ruby>問題<rt>もんだい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしてあります。<br>*(Vâng, đây ạ. Tôi đã đăng ký đề có furigana cho người nước ngoài.)* |
| Giám thị | <ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>は<ruby>筆記<rt>ひっき</rt></ruby><ruby>用具<rt>ようぐ</rt></ruby>のみです。<br>*(Đã xác nhận. Trên bàn chỉ để dụng cụ viết.)* |
| Thức | <ruby>時計<rt>とけい</rt></ruby>は<ruby>置<rt>お</rt></ruby>いてもいいですか?<br>*(Đồng hồ để được không ạ?)* |
| Giám thị | <ruby>音<rt>おと</rt></ruby>の<ruby>出<rt>で</rt></ruby>ない<ruby>時計<rt>とけい</rt></ruby>なら<ruby>可<rt>か</rt></ruby>です。<ruby>携帯<rt>けいたい</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>ってください。<br>*(Đồng hồ không kêu thì được. Điện thoại tắt nguồn.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, tôi rõ rồi ạ.)* |

---

## Tình huống 12 — Phòng thi · 9:00, vào 学科試験 (độc thoại căng thẳng)

| Vai | Lời thoại |
|---|---|
| Giám thị | それでは<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>時間<rt>じかん</rt></ruby>は<ruby>百<rt>ひゃく</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Vậy bắt đầu thi lý thuyết. Thời gian là 100 phút.)* |
| Thức | (trong đầu) <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>け。まず<ruby>分<rt>わ</rt></ruby>かる<ruby>問題<rt>もんだい</rt></ruby>から。<br>*(Bình tĩnh. Làm câu biết trước.)* |
| Thức | (trong đầu) <ruby>数字<rt>すうじ</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>だ。<ruby>建地<rt>たてじ</rt></ruby><ruby>間隔<rt>かんかく</rt></ruby>…カードで<ruby>覚<rt>おぼ</rt></ruby>えた。<br>*(Câu con số. Khoảng cách cột đứng… đã thuộc từ thẻ.)* |
| Thức | (trong đầu) <ruby>法令<rt>ほうれい</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>は<ruby>後回<rt>あとまわ</rt></ruby>しにしよう。<ruby>時間<rt>じかん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>いすぎない。<br>*(Câu pháp lệnh để sau. Đừng tốn quá nhiều giờ.)* |
| Thức | (trong đầu) <ruby>見直<rt>みなお</rt></ruby>す<ruby>時間<rt>じかん</rt></ruby>を<ruby>十<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>残<rt>のこ</rt></ruby>す。<ruby>焦<rt>あせ</rt></ruby>るな。<br>*(Để dành mười phút soát lại. Đừng vội.)* |
| Thức | (trong đầu) よし、<ruby>全<rt>ぜん</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>埋<rt>う</rt></ruby>めた。<ruby>練習<rt>れんしゅう</rt></ruby>どおりだ。<br>*(Được, điền hết câu. Đúng như lúc luyện.)* |

---

## Tình huống 13 — Hành lang hội trường · 11:00, gặp Kondo sau 学科

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>学科<rt>がっか</rt></ruby>どうだった?<br>*(Thức, lý thuyết thế nào?)* |
| Thức | <ruby>数字<rt>すうじ</rt></ruby><ruby>系<rt>けい</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>解<rt>と</rt></ruby>けました。<ruby>法令<rt>ほうれい</rt></ruby>は<ruby>半分<rt>はんぶん</rt></ruby><ruby>自信<rt>じしん</rt></ruby>ありません。<br>*(Dạng con số em làm hết. Pháp lệnh thì nửa không chắc.)* |
| Kondo | <ruby>数字<rt>すうじ</rt></ruby>を<ruby>固<rt>かた</rt></ruby>めたなら<ruby>大<rt>おお</rt></ruby>きい。<ruby>法令<rt>ほうれい</rt></ruby>は<ruby>消去<rt>しょうきょ</rt></ruby><ruby>法<rt>ほう</rt></ruby>で<ruby>当<rt>あ</rt></ruby>たることもある。<br>*(Chắc phần con số là lớn. Pháp lệnh dùng loại trừ có khi trúng.)* |
| Thức | <ruby>消去<rt>しょうきょ</rt></ruby><ruby>法<rt>ほう</rt></ruby>、<ruby>使<rt>つか</rt></ruby>いました。<ruby>明<rt>あき</rt></ruby>らかに<ruby>違<rt>ちが</rt></ruby>う<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>消<rt>け</rt></ruby>しました。<br>*(Loại trừ, em có dùng. Gạch phương án rõ sai.)* |
| Kondo | <ruby>賢<rt>かしこ</rt></ruby>い。<ruby>午後<rt>ごご</rt></ruby>の<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>得意<rt>とくい</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>だ。<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えろ。<br>*(Khôn đấy. Thực kỹ chiều là sở trường. Chuyển trạng thái đi.)* |
| Thức | はい、<ruby>学科<rt>がっか</rt></ruby>は<ruby>忘<rt>わす</rt></ruby>れて<ruby>実技<rt>じつぎ</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>します。<br>*(Vâng, quên lý thuyết tập trung thực kỹ.)* |

---

## Tình huống 14 — Khu thi 実技 · 13:00, nhận đề và xác nhận với giám khảo

| Vai | Lời thoại |
|---|---|
| Giám khảo | <ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。この<ruby>図面<rt>ずめん</rt></ruby>どおりに<ruby>足場<rt>あしば</rt></ruby>を<ruby>組<rt>く</rt></ruby>んでください。<br>*(Bắt đầu thi thực kỹ. Lắp giàn giáo theo đúng bản vẽ này.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。…<ruby>寸法<rt>すんぽう</rt></ruby>の<ruby>単位<rt>たんい</rt></ruby>はミリで<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Em xác nhận bản vẽ. …Đơn vị kích thước là milimet đúng không ạ?)* |
| Giám khảo | はい、ミリです。<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>今<rt>いま</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>してください。<ruby>開始<rt>かいし</rt></ruby><ruby>後<rt>ご</rt></ruby>は<ruby>質問<rt>しつもん</rt></ruby>できません。<br>*(Vâng, milimet. Chỗ chưa rõ hỏi bây giờ. Bắt đầu rồi không hỏi được.)* |
| Thức | <ruby>使用<rt>しよう</rt></ruby>する<ruby>部材<rt>ぶざい</rt></ruby>は<ruby>支給<rt>しきゅう</rt></ruby><ruby>品<rt>ひん</rt></ruby>のみですか?<br>*(Vật liệu dùng chỉ là đồ được cấp ạ?)* |
| Giám khảo | そうです。<ruby>支給<rt>しきゅう</rt></ruby><ruby>品<rt>ひん</rt></ruby>のみ<ruby>使用<rt>しよう</rt></ruby>。では<ruby>保護<rt>ほご</rt></ruby><ruby>具<rt>ぐ</rt></ruby><ruby>着用<rt>ちゃくよう</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Đúng. Chỉ đồ được cấp. Vậy đeo đồ bảo hộ rồi bắt đầu.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, xin phép ạ.)* |

---

## Tình huống 15 — Khu thi 実技 · 13:40, vào thực kỹ (độc thoại tập trung)

| Vai | Lời thoại |
|---|---|
| Thức | (trong đầu) フルハーネス、ヨシ。あごひも、ヨシ。<br>*(Dây toàn thân, OK. Quai cằm, OK.)* |
| Thức | (nói nhỏ tay làm) <ruby>建地<rt>たてじ</rt></ruby><ruby>間隔<rt>かんかく</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby>どおり。<ruby>水平<rt>すいへい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ヨシ。<br>*(Khoảng cột đứng, đúng bản vẽ. Kiểm ngang, OK.)* |
| Thức | (nói nhỏ) <ruby>緊結<rt>きんけつ</rt></ruby>、<ruby>向<rt>む</rt></ruby>き、ヨシ。…<ruby>練習<rt>れんしゅう</rt></ruby>どおりだ。<br>*(Mối siết, hướng, OK. …Đúng như lúc luyện.)* |
| Giám khảo | (ghi chép, không nói) …<br>*(…)* |
| Thức | (nói nhỏ) <ruby>手<rt>て</rt></ruby>すり<ruby>取付<rt>とりつけ</rt></ruby>、<ruby>幅木<rt>はばき</rt></ruby>、ヨシ。<ruby>残<rt>のこ</rt></ruby>り<ruby>時間<rt>じかん</rt></ruby><ruby>十<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<br>*(Lắp lan can, ván chắn chân, OK. Còn mười phút.)* |
| Thức | <ruby>完成<rt>かんせい</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xong rồi. Nhờ kiểm tra ạ.)* |

---

## Tình huống 16 — Khu thi 実技 · 14:20, giám khảo xác nhận kết thúc

| Vai | Lời thoại |
|---|---|
| Giám khảo | <ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>完成<rt>かんせい</rt></ruby>ですね。<ruby>道具<rt>どうぐ</rt></ruby>を<ruby>片付<rt>かたづ</rt></ruby>けてください。<br>*(Hoàn thành trong giờ nhỉ. Dọn dụng cụ đi.)* |
| Thức | はい。<ruby>後片付<rt>あとかたづ</rt></ruby>けも<ruby>採点<rt>さいてん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りますか?<br>*(Vâng. Dọn dẹp cuối cũng vào chấm điểm ạ?)* |
| Giám khảo | <ruby>整理<rt>せいり</rt></ruby><ruby>整頓<rt>せいとん</rt></ruby>も<ruby>評価<rt>ひょうか</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>です。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かないように。<br>*(Sắp xếp gọn gàng cũng được đánh giá. Đừng lơi lỏng đến cuối.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>数<rt>かぞ</rt></ruby>えて<ruby>戻<rt>もど</rt></ruby>します。<br>*(Tôi rõ rồi. Em đếm dụng cụ rồi cất lại.)* |
| Giám khảo | <ruby>結構<rt>けっこう</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Được rồi. Anh vất vả.)* |
| Thức | ありがとうございました。<br>*(Cảm ơn thầy ạ.)* |

---

## Tình huống 17 — Ngoài hội trường · 14:40, gọi điện báo Saito

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>試験<rt>しけん</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>完成<rt>かんせい</rt></ruby>できました。<br>*(Anh Saito, em thi xong. Thực kỹ hoàn thành trong giờ.)* |
| Saito | お<ruby>疲<rt>つか</rt></ruby>れ。<ruby>緊結<rt>きんけつ</rt></ruby>の<ruby>向<rt>む</rt></ruby>きは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だったか?<br>*(Vất vả. Hướng mối siết ổn không?)* |
| Thức | はい、<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>したのでミスなしです。<br>*(Vâng, em hô ra tiếng xác nhận nên không lỗi.)* |
| Saito | <ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>生<rt>い</rt></ruby>きたな。<ruby>学科<rt>がっか</rt></ruby>は?<br>*(Luyện tập có tác dụng. Lý thuyết thì sao?)* |
| Thức | <ruby>数字<rt>すうじ</rt></ruby><ruby>系<rt>けい</rt></ruby>は<ruby>確実<rt>かくじつ</rt></ruby>。<ruby>法令<rt>ほうれい</rt></ruby>は<ruby>微妙<rt>びみょう</rt></ruby>ですが、<ruby>合格<rt>ごうかく</rt></ruby><ruby>圏<rt>けん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Con số chắc. Pháp lệnh hơi mong manh nhưng em nghĩ trong vùng đậu.)* |
| Saito | <ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>とう。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Chờ kết quả. Cố gắng tốt lắm.)* |

---

## Tình huống 18 — Lán công trường · 16:00 hôm sau, đồng nghiệp hỏi cảm tưởng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>試験<rt>しけん</rt></ruby><ruby>受<rt>う</rt></ruby>けてみてどうだった?<br>*(Thức, đi thi rồi cảm thấy thế nào?)* |
| Thức | <ruby>学科<rt>がっか</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大変<rt>たいへん</rt></ruby>でした。でも<ruby>準備<rt>じゅんび</rt></ruby>した<ruby>分<rt>ぶん</rt></ruby>は<ruby>出<rt>で</rt></ruby>せました。<br>*(Kanji lý thuyết vất vả thật. Nhưng phần đã chuẩn bị em phát huy được.)* |
| Kondo | <ruby>実技<rt>じつぎ</rt></ruby>は<ruby>普段<rt>ふだん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だからな。<br>*(Thực kỹ thì là việc hằng ngày mà.)* |
| Thức | はい、<ruby>普段<rt>ふだん</rt></ruby>どおりやれば<ruby>怖<rt>こわ</rt></ruby>くないと<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu làm như mọi ngày thì không đáng sợ.)* |
| Kondo | それが<ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>資格<rt>しかく</rt></ruby>は<ruby>後<rt>あと</rt></ruby>からついてくる。<br>*(Cái đó quan trọng. Chứng chỉ rồi sẽ đến.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しみでもあり、<ruby>不安<rt>ふあん</rt></ruby>でもあります。<br>*(Kết quả vừa mong vừa lo.)* |

---

## Tình huống 19 — Phòng nghỉ Linh gọi điện · 21:00, kể chuyện thi (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, hôm nay thi xong chưa? Nghe giọng có vẻ mệt mà nhẹ nhõm. |
| Thức | Xong rồi em. Phần lý thuyết tiếng Nhật nhiều chữ Hán muốn xỉu, nhưng phần lắp giàn giáo anh làm ngon, đúng thời gian. |
| Linh | Mừng cho anh. Anh ôn cả tháng nay vất vả mà. |
| Thức | Ừ, đáng. Có chứng chỉ này thì con đường lên đốc công với hướng tới 特定技能 số 2 chắc hơn. Đợi tháng sau có kết quả. |
| Linh | Em tin anh đậu. Mà đậu hay chưa thì anh vẫn giỏi trong mắt em. |
| Thức | Cảm ơn em nhiều. Thôi để anh nghỉ, mai lại lên công trường. |

---

## Tình huống 20 — Sân công trường · 8:00, Saito thông báo trước đội về việc Thức đi thi

| Vai | Lời thoại |
|---|---|
| Saito | みんなに<ruby>報告<rt>ほうこく</rt></ruby>だ。トゥックが<ruby>二級<rt>にきゅう</rt></ruby>とび<ruby>技能士<rt>ぎのうし</rt></ruby>を<ruby>受検<rt>じゅけん</rt></ruby>した。<br>*(Báo mọi người. Thức đã dự thi 2級 thợ giàn giáo.)* |
| Kondo | <ruby>学科<rt>がっか</rt></ruby>まで<ruby>挑<rt>いど</rt></ruby>むのは<ruby>外国人<rt>がいこくじん</rt></ruby>では<ruby>少<rt>すく</rt></ruby>ない。<ruby>立派<rt>りっぱ</rt></ruby>だ。<br>*(Người nước ngoài thi cả lý thuyết là hiếm. Giỏi đấy.)* |
| Nam | トゥックさん、<ruby>僕<rt>ぼく</rt></ruby>もいつか<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Anh Thức, em rồi cũng muốn thi.)* |
| Thức | <ruby>受<rt>う</rt></ruby>けられるよ。<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>んで、<ruby>今<rt>いま</rt></ruby>から<ruby>用語<rt>ようご</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えておこう。<br>*(Thi được. Tích kinh nghiệm thực tế, từ bây giờ học trước thuật ngữ.)* |
| Saito | <ruby>結果<rt>けっか</rt></ruby>はまだだが、<ruby>挑戦<rt>ちょうせん</rt></ruby>する<ruby>姿勢<rt>しせい</rt></ruby>がこの<ruby>現場<rt>げんば</rt></ruby>を<ruby>強<rt>つよ</rt></ruby>くする。<br>*(Kết quả chưa có, nhưng tinh thần dám thử làm công trường này mạnh.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら、また<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>応援<rt>おうえん</rt></ruby>ありがとうございます。<br>*(Có kết quả em sẽ báo lại. Cảm ơn mọi người ủng hộ.)* |

---

## Đọng lại

Thức đăng ký và dự thi 2級とび技能士 — kỳ thi tay nghề nhà nước gồm 学科 (lý thuyết kanji nặng) và 実技 (thực kỹ có giám khảo chấm). Thử thách lớn nhất đúng như Saito nói là kanji pháp lệnh phần lý thuyết, Thức vượt qua bằng đọc to, làm thẻ con số, luyện đề cũ và dùng phương pháp loại trừ. Phần thực kỹ Thức biến thói quen hô-chỉ-tay xác nhận ở hiện trường thành công cụ tránh lỗi mối siết khi căng thẳng. Bài học: thi cử không phải làm gì đặc biệt mà làm cơ bản chỉn chu như mọi ngày.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 技能検定 | ぎのうけんてい | kỳ thi kiểm định tay nghề (nhà nước) |
> | とび技能士 | とびぎのうし | thợ giàn giáo có chứng chỉ |
> | 学科試験 | がっかしけん | thi lý thuyết |
> | 実技試験 | じつぎしけん | thi thực hành kỹ năng |
> | 受検申請書 | じゅけんしんせいしょ | đơn đăng ký dự thi |
> | 実務経験証明書 | じつむけいけんしょうめいしょ | giấy chứng minh kinh nghiệm thực tế |
> | 真偽法 | しんぎほう | dạng câu đúng-sai |
> | 択一法 | たくいつほう | dạng câu chọn một |
> | 過去問 | かこもん | đề thi các năm trước |
> | 建地間隔 | たてじかんかく | khoảng cách cột đứng giàn giáo |
> | 桁行方向 | けたゆきほうこう | hướng dọc dầm |
> | 梁間方向 | はりまほうこう | hướng ngang dầm |
> | 緊結 | きんけつ | siết nối (giàn giáo) |
> | 打ち切り時間 | うちきりじかん | thời gian cắt (quá là loại) |
> | 消去法 | しょうきょほう | phương pháp loại trừ |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000008, 800000037, NULL, 'markdown_book', 'T8. Đỗ bậc 2 nhưng vấp hồ sơ an toàn (合格と安全書類・グリーンファイル)', '# Sách kỹ năng đặc định xây dựng · T8. Đỗ bậc 2 nhưng vấp hồ sơ an toàn (合格と安全書類・グリーンファイル)

> **Mục tiêu nhân vật:** Thức nhận tin đỗ 2級とび技能士. Nhưng vào vai 職長 thực thụ thì vấp 安全書類 / グリーンファイル (bộ hồ sơ an toàn nộp 元請け, kanji nặng, biểu mẫu phức tạp). 斉藤職長 kèm Thức từng loại. Học mẫu câu tiếng Nhật khi xử lý văn bản hành chính công trường: đọc biểu mẫu, hỏi cách điền, sửa lỗi, nộp đúng hạn.

---

## Bối cảnh

Tháng 9 năm 2030. Thức nhận giấy báo đỗ 2級とび技能士 — niềm vui lớn. Nhưng vai 職長 đòi hỏi quản lý グリーンファイル: 作業員名簿, 工事安全衛生計画書, 持込機械等使用届, 危険物・有害物持込使用届, 再下請負通知書... Đây là điểm yếu của Thức vì kanji hành chính rất nặng và biểu mẫu nhiều. 斉藤職長 kèm sát từng loại. Tiếng Nhật nghiệp vụ chương này là ngôn ngữ văn bản hành chính công trường.

---

## Tình huống 1 — Văn phòng công trường · 8:00, nhận tin đỗ 2級

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>協会<rt>きょうかい</rt></ruby>から<ruby>封筒<rt>ふうとう</rt></ruby>が<ruby>来<rt>き</rt></ruby>ているぞ。<ruby>合否<rt>ごうひ</rt></ruby>だ。<br>*(Thức, có phong bì từ hiệp hội. Đậu rớt đây.)* |
| Thức | (mở) …<ruby>合格<rt>ごうかく</rt></ruby>、と<ruby>書<rt>か</rt></ruby>いてあります。<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(…Ghi "đậu". Em đậu rồi!)* |
| Saito | やったな!<ruby>学科<rt>がっか</rt></ruby>も<ruby>通<rt>とお</rt></ruby>ったか。<ruby>大<rt>たい</rt></ruby>したもんだ。<br>*(Được rồi! Lý thuyết cũng qua à. Cừ thật.)* |
| Thức | ありがとうございます。<ruby>準備<rt>じゅんび</rt></ruby>した<ruby>分<rt>ぶん</rt></ruby>が<ruby>報<rt>むく</rt></ruby>われました。<br>*(Cảm ơn anh. Công chuẩn bị được đền đáp.)* |
| Saito | これで<ruby>名実<rt>めいじつ</rt></ruby>ともにとび<ruby>技能士<rt>ぎのうし</rt></ruby>だ。だが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>本番<rt>ほんばん</rt></ruby>はこれからだぞ。<br>*(Giờ là thợ giàn giáo có danh có thực. Nhưng vai đốc công thực sự mới bắt đầu đấy.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めます。<br>*(Vâng, em sẽ siết lại tinh thần.)* |

---

## Tình huống 2 — Văn phòng công trường · 8:20, Saito giao quản lý グリーンファイル

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>合格<rt>ごうかく</rt></ruby><ruby>祝<rt>いわ</rt></ruby>いに、<ruby>次<rt>つぎ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だ。グリーンファイルを<ruby>担当<rt>たんとう</rt></ruby>してもらう。<br>*(Mừng đậu, việc tiếp theo. Cậu phụ trách bộ hồ sơ an toàn.)* |
| Thức | グリーンファイル…<ruby>安全<rt>あんぜん</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>のことですよね。<br>*(Bộ hồ sơ xanh… là hồ sơ an toàn phải không ạ.)* |
| Saito | そうだ。<ruby>元請<rt>もとうけ</rt></ruby>けに<ruby>出<rt>だ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>一<ruby>式<rt>しき</rt></ruby>だ。<ruby>作業員<rt>さぎょういん</rt></ruby><ruby>名簿<rt>めいぼ</rt></ruby>、<ruby>計画書<rt>けいかくしょ</rt></ruby>、<ruby>各種<rt>かくしゅ</rt></ruby><ruby>届<rt>とどけ</rt></ruby>。<br>*(Đúng. Bộ giấy tờ nộp tổng thầu. Danh sách công nhân, kế hoạch, các loại tờ khai.)* |
| Thức | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>書類<rt>しょるい</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>はまだ<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(Thật ra, kanji giấy tờ em vẫn yếu.)* |
| Saito | <ruby>分<rt>わ</rt></ruby>かっている。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>について<ruby>教<rt>おし</rt></ruby>える。<ruby>一<rt>ひと</rt></ruby>つずつだ。<br>*(Tôi biết. Đầu tôi kèm bên cạnh. Từng cái một.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>苦手<rt>にがて</rt></ruby>を<ruby>克服<rt>こくふく</rt></ruby>します。<br>*(Vâng, mong anh chỉ. Em sẽ khắc phục điểm yếu.)* |

---

## Tình huống 3 — Bàn làm việc · 9:00, học 作業員名簿

| Vai | Lời thoại |
|---|---|
| Saito | まず<ruby>作業員<rt>さぎょういん</rt></ruby><ruby>名簿<rt>めいぼ</rt></ruby>だ。<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>書<rt>か</rt></ruby>く。<br>*(Đầu là danh sách công nhân. Ghi chính xác thông tin từng người.)* |
| Thức | この<ruby>欄<rt>らん</rt></ruby>、「<ruby>雇入<rt>やといい</rt></ruby>れ<ruby>年月日<rt>ねんがっぴ</rt></ruby>」は<ruby>入社日<rt>にゅうしゃび</rt></ruby>のことですか?<br>*(Cột này, "ngày tuyển dụng" là ngày vào công ty ạ?)* |
| Saito | そうだ。「<ruby>血液<rt>けつえき</rt></ruby><ruby>型<rt>がた</rt></ruby>」「<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>連絡先<rt>れんらくさき</rt></ruby>」も<ruby>必<rt>かなら</rt></ruby>ず<ruby>埋<rt>う</rt></ruby>めろ。<ruby>事故<rt>じこ</rt></ruby>のとき<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。<br>*(Đúng. "Nhóm máu", "liên lạc khẩn cấp" cũng phải điền. Lúc tai nạn liên quan tính mạng.)* |
| Thức | 「<ruby>特別<rt>とくべつ</rt></ruby><ruby>教育<rt>きょういく</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>」の<ruby>欄<rt>らん</rt></ruby>には<ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>きますか?<br>*(Cột "hoàn thành đào tạo đặc biệt" ghi gì ạ?)* |
| Saito | フルハーネスや<ruby>足場<rt>あしば</rt></ruby><ruby>特別<rt>とくべつ</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>の<ruby>修了日<rt>しゅうりょうび</rt></ruby>だ。<ruby>資格<rt>しかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>しろ。<br>*(Ngày hoàn thành đào tạo dây toàn thân, giàn giáo đặc biệt. Đối chiếu thẻ chứng chỉ.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>ずつ<ruby>資格<rt>しかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em sẽ xem thẻ chứng chỉ từng người để đối chiếu.)* |

---

## Tình huống 4 — Bàn làm việc · 9:40, vật lộn kanji 工事安全衛生計画書

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、この<ruby>計画書<rt>けいかくしょ</rt></ruby>、<ruby>言葉<rt>ことば</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいです。「<ruby>施工<rt>せこう</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>」とは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Saito, bản kế hoạch này từ khó quá. "Cơ cấu thi công" là gì ạ?)* |
| Saito | <ruby>誰<rt>だれ</rt></ruby>が<ruby>何<rt>なに</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>するか、<ruby>指揮<rt>しき</rt></ruby><ruby>命令<rt>めいれい</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れだ。<ruby>職長<rt>しょくちょう</rt></ruby>はお<ruby>前<rt>まえ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>書<rt>か</rt></ruby>く。<br>*(Ai phụ trách gì, dòng chỉ huy mệnh lệnh. Ô đốc công ghi tên cậu.)* |
| Thức | 「<ruby>有資格者<rt>ゆうしかくしゃ</rt></ruby>」の<ruby>欄<rt>らん</rt></ruby>は<ruby>資格<rt>しかく</rt></ruby><ruby>名<rt>めい</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Cột "người có chứng chỉ" ghi tên chứng chỉ được không ạ?)* |
| Saito | そうだ。お<ruby>前<rt>まえ</rt></ruby>は「<ruby>二級<rt>にきゅう</rt></ruby>とび<ruby>技能士<rt>ぎのうし</rt></ruby>」と<ruby>書<rt>か</rt></ruby>ける。<ruby>合格<rt>ごうかく</rt></ruby>したばかりだろう。<br>*(Đúng. Cậu ghi được "2級 thợ giàn giáo". Vừa đậu mà.)* |
| Thức | あっ、<ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>が<ruby>書類<rt>しょるい</rt></ruby>に<ruby>載<rt>の</rt></ruby>るんですね。<br>*(A, đúng thật. Chứng chỉ của mình được ghi lên giấy tờ nhỉ.)* |
| Saito | <ruby>努力<rt>どりょく</rt></ruby>が<ruby>形<rt>かたち</rt></ruby>になる。だから<ruby>資格<rt>しかく</rt></ruby>は<ruby>大事<rt>だいじ</rt></ruby>なんだ。<br>*(Nỗ lực thành hình. Nên chứng chỉ mới quan trọng.)* |

---

## Tình huống 5 — Bàn làm việc · 10:20, học 持込機械等使用届

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>次<rt>つぎ</rt></ruby>は「<ruby>持込<rt>もちこみ</rt></ruby><ruby>機械<rt>きかい</rt></ruby><ruby>等<rt>とう</rt></ruby><ruby>使用<rt>しよう</rt></ruby><ruby>届<rt>とどけ</rt></ruby>」ですね。<ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>くのですか?<br>*(Tiếp là "tờ khai sử dụng máy mang vào" nhỉ. Ghi gì ạ?)* |
| Saito | <ruby>現場<rt>げんば</rt></ruby>に<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>む<ruby>機械<rt>きかい</rt></ruby>を<ruby>届<rt>とど</rt></ruby>け<ruby>出<rt>で</rt></ruby>る。<ruby>発電機<rt>はつでんき</rt></ruby>、<ruby>電動<rt>でんどう</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby>などだ。<br>*(Khai báo máy mang vào công trường. Máy phát điện, dụng cụ điện v.v.)* |
| Thức | <ruby>点検<rt>てんけん</rt></ruby><ruby>年月日<rt>ねんがっぴ</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Có cần ngày kiểm tra không ạ?)* |
| Saito | <ruby>必須<rt>ひっす</rt></ruby>だ。<ruby>未<rt>み</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>の<ruby>機械<rt>きかい</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>めない。<ruby>元請<rt>もとうけ</rt></ruby>けが<ruby>厳<rt>きび</rt></ruby>しくチェックする。<br>*(Bắt buộc. Máy chưa kiểm thì không mang vào. Tổng thầu kiểm rất ngặt.)* |
| Thức | <ruby>点検<rt>てんけん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>機械<rt>きかい</rt></ruby>ごとに<ruby>確認<rt>かくにん</rt></ruby>して<ruby>転記<rt>てんき</rt></ruby>します。<br>*(Em sẽ kiểm hồ sơ kiểm tra từng máy rồi chép lại.)* |
| Saito | そうしろ。<ruby>転記<rt>てんき</rt></ruby>ミスが<ruby>一番<rt>いちばん</rt></ruby><ruby>多<rt>おお</rt></ruby>い。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>照合<rt>しょうごう</rt></ruby>しろ。<br>*(Vậy đi. Lỗi chép lại nhiều nhất. Hô ra tiếng mà đối chiếu.)* |

---

## Tình huống 6 — Bàn làm việc · 11:00, mắc lỗi điền sai bị Saito chỉ ra

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、ここ。<ruby>作業員<rt>さぎょういん</rt></ruby><ruby>名簿<rt>めいぼ</rt></ruby>の<ruby>生年月日<rt>せいねんがっぴ</rt></ruby>が<ruby>和暦<rt>われき</rt></ruby>と<ruby>西暦<rt>せいれき</rt></ruby>で<ruby>混<rt>ま</rt></ruby>ざっている。<br>*(Thức, chỗ này. Ngày sinh danh sách công nhân lẫn lịch Nhật với dương lịch.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>統一<rt>とういつ</rt></ruby>します。<br>*(Đúng thật. Em xin lỗi. Em thống nhất lại.)* |
| Saito | <ruby>怒<rt>おこ</rt></ruby>ってない。<ruby>書類<rt>しょるい</rt></ruby>は<ruby>慣<rt>な</rt></ruby>れだ。だが<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>見直<rt>みなお</rt></ruby>せ。<br>*(Không giận. Giấy tờ là quen tay. Nhưng trước khi nộp nhất định soát lại.)* |
| Thức | はい。どちらに<ruby>統一<rt>とういつ</rt></ruby>すればいいですか?<br>*(Vâng. Nên thống nhất theo cái nào ạ?)* |
| Saito | <ruby>元請<rt>もとうけ</rt></ruby>けの<ruby>様式<rt>ようしき</rt></ruby>は<ruby>西暦<rt>せいれき</rt></ruby><ruby>指定<rt>してい</rt></ruby>だ。<ruby>西暦<rt>せいれき</rt></ruby>に<ruby>揃<rt>そろ</rt></ruby>えろ。<br>*(Mẫu của tổng thầu chỉ định dương lịch. Gom về dương lịch.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>様式<rt>ようしき</rt></ruby>の<ruby>指定<rt>してい</rt></ruby>も<ruby>先<rt>さき</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>すべきでした。<br>*(Em rõ rồi. Đáng lẽ phải kiểm chỉ định mẫu trước.)* |

---

## Tình huống 7 — Bàn làm việc · 13:00, học 再下請負通知書

| Vai | Lời thoại |
|---|---|
| Thức | 「<ruby>再下請負<rt>さいしたうけおい</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby>」…<ruby>読<rt>よ</rt></ruby>むだけで<ruby>大変<rt>たいへん</rt></ruby>です。<br>*("Thông báo thầu phụ cấp dưới"… đọc thôi đã mệt.)* |
| Saito | <ruby>谷川組<rt>たにがわぐみ</rt></ruby>がさらに<ruby>下<rt>した</rt></ruby>の<ruby>業者<rt>ぎょうしゃ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すとき、<ruby>元請<rt>もとうけ</rt></ruby>けに<ruby>知<rt>し</rt></ruby>らせる<ruby>書類<rt>しょるい</rt></ruby>だ。<br>*(Khi Tanigawa-gumi giao tiếp cho nhà thầu cấp dưới nữa, là giấy báo cho tổng thầu.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>は<ruby>再下請<rt>さいしたうけ</rt></ruby>がありますか?<br>*(Công trường này có thầu phụ cấp dưới không ạ?)* |
| Saito | <ruby>応援<rt>おうえん</rt></ruby>の<ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>が<ruby>入<rt>はい</rt></ruby>るときに<ruby>必要<rt>ひつよう</rt></ruby>になる。<ruby>労災<rt>ろうさい</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>でな。<br>*(Khi có thợ tự doanh hỗ trợ vào thì cần. Liên quan bảo hiểm tai nạn.)* |
| Thức | <ruby>労災<rt>ろうさい</rt></ruby>の<ruby>適用<rt>てきよう</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>も<ruby>書<rt>か</rt></ruby>くのですね。<br>*(Cả quan hệ áp dụng bảo hiểm tai nạn cũng ghi nhỉ.)* |
| Saito | そうだ。<ruby>抜<rt>ぬ</rt></ruby>けると<ruby>事故<rt>じこ</rt></ruby>のとき<ruby>補償<rt>ほしょう</rt></ruby>で<ruby>揉<rt>も</rt></ruby>める。<ruby>正確<rt>せいかく</rt></ruby>さが<ruby>命<rt>いのち</rt></ruby>だ。<br>*(Đúng. Sót thì lúc tai nạn cãi nhau về bồi thường. Chính xác là mạng sống.)* |

---

## Tình huống 8 — Bàn làm việc · 13:40, Thức tự lập checklist

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>書類<rt>しょるい</rt></ruby>のチェックリストを<ruby>作<rt>つく</rt></ruby>りました。<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Anh Saito, em làm danh sách kiểm tra giấy tờ. Anh xem giúp được không?)* |
| Saito | …<ruby>名簿<rt>めいぼ</rt></ruby>、<ruby>計画書<rt>けいかくしょ</rt></ruby>、<ruby>機械<rt>きかい</rt></ruby><ruby>届<rt>とどけ</rt></ruby>、<ruby>通知書<rt>つうちしょ</rt></ruby>。<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>期限<rt>きげん</rt></ruby>も<ruby>書<rt>か</rt></ruby>いてあるな。<br>*(…Danh sách, kế hoạch, tờ khai máy, thông báo. Có ghi cả hạn nộp nhỉ.)* |
| Thức | <ruby>苦手<rt>にがて</rt></ruby>だから<ruby>仕組<rt>しく</rt></ruby>みで<ruby>防<rt>ふせ</rt></ruby>ごうと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Vì em yếu nên muốn phòng bằng cơ chế.)* |
| Saito | いい<ruby>考<rt>かんが</rt></ruby>えだ。<ruby>記憶<rt>きおく</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>るな、<ruby>仕組<rt>しく</rt></ruby>みに<ruby>頼<rt>たよ</rt></ruby>れ。それが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>知恵<rt>ちえ</rt></ruby>だ。<br>*(Suy nghĩ tốt. Đừng dựa trí nhớ, dựa cơ chế. Đó là trí tuệ đốc công.)* |
| Thức | <ruby>提出<rt>ていしゅつ</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>欄<rt>らん</rt></ruby>も<ruby>付<rt>つ</rt></ruby>けました。<br>*(Em gắn cả cột kiểm tra trước khi nộp.)* |
| Saito | <ruby>苦手<rt>にがて</rt></ruby>を<ruby>武器<rt>ぶき</rt></ruby>に<ruby>変<rt>か</rt></ruby>えたな。<br>*(Biến điểm yếu thành vũ khí rồi đấy.)* |

---

## Tình huống 9 — Văn phòng công trường · 14:30, nộp 石川さん lần đầu — bị trả lại

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、グリーンファイルを<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Anh Ishikawa, em nộp bộ hồ sơ an toàn.)* |
| Ishikawa | <ruby>確認<rt>かくにん</rt></ruby>します。…<ruby>作業員<rt>さぎょういん</rt></ruby><ruby>名簿<rt>めいぼ</rt></ruby>の<ruby>健康<rt>けんこう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby><ruby>日<rt>び</rt></ruby>が<ruby>一<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>空欄<rt>くうらん</rt></ruby>です。<br>*(Tôi kiểm. …Ngày khám sức khoẻ danh sách công nhân, một người để trống.)* |
| Thức | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>確認<rt>かくにん</rt></ruby>してすぐ<ruby>追記<rt>ついき</rt></ruby>します。<br>*(Em xin lỗi. Em kiểm rồi bổ sung ngay.)* |
| Ishikawa | <ruby>空欄<rt>くうらん</rt></ruby>のままだと<ruby>受理<rt>じゅり</rt></ruby>できません。<ruby>健診<rt>けんしん</rt></ruby><ruby>未<rt>み</rt></ruby><ruby>受診<rt>じゅしん</rt></ruby>なら<ruby>就労<rt>しゅうろう</rt></ruby>させられません。<br>*(Để trống thì không tiếp nhận được. Chưa khám thì không cho làm việc.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>に<ruby>受診<rt>じゅしん</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>し、ご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Trong hôm nay em xác nhận tình trạng khám rồi báo cáo lại.)* |
| Ishikawa | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>書類<rt>しょるい</rt></ruby>の<ruby>不備<rt>ふび</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>不備<rt>ふび</rt></ruby>です。<br>*(Nhờ anh. Thiếu sót giấy tờ là thiếu sót an toàn.)* |

---

## Tình huống 10 — Bàn làm việc · 14:50, truy nguyên nhân thiếu thông tin

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ナムくんの<ruby>健康<rt>けんこう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby><ruby>日<rt>び</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Anh Kondo, ngày khám sức khoẻ của Nam em không rõ.)* |
| Kondo | ナムは<ruby>先月<rt>せんげつ</rt></ruby><ruby>入<rt>はい</rt></ruby>ったばかりだ。<ruby>健診<rt>けんしん</rt></ruby>がまだかもしれん。<br>*(Nam mới vào tháng trước. Có thể chưa khám.)* |
| Thức | では<ruby>就労<rt>しゅうろう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>受診<rt>じゅしん</rt></ruby>させないといけませんね。<br>*(Vậy phải cho khám trước khi làm việc nhỉ.)* |
| Kondo | そうだ。<ruby>本社<rt>ほんしゃ</rt></ruby>の<ruby>総務<rt>そうむ</rt></ruby>に<ruby>手配<rt>てはい</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>め。<ruby>早<rt>はや</rt></ruby>いほうがいい。<br>*(Đúng. Nhờ tổng vụ trụ sở sắp xếp. Càng sớm càng tốt.)* |
| Thức | すぐ<ruby>連絡<rt>れんらく</rt></ruby>します。<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>就労<rt>しゅうろう</rt></ruby>にも<ruby>関<rt>かか</rt></ruby>わりますから。<br>*(Em liên lạc ngay. Vì liên quan cả việc làm của chính em đó.)* |
| Kondo | <ruby>気<rt>き</rt></ruby>づけてよかった。<ruby>放置<rt>ほうち</rt></ruby>したら<ruby>大<rt>おお</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>だった。<br>*(Phát hiện ra may đấy. Bỏ qua là chuyện lớn.)* |

---

## Tình huống 11 — Bàn làm việc · 15:10, gọi điện sắp xếp khám sức khoẻ

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>現場<rt>げんば</rt></ruby>のトゥックです。ナムくんの<ruby>雇入<rt>やといい</rt></ruby>れ<ruby>時<rt>じ</rt></ruby><ruby>健診<rt>けんしん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>です。<br>*(Anh vất vả. Em Thức ở hiện trường. Về vụ khám sức khoẻ khi tuyển dụng của Nam.)* |
| Tổng vụ | ナムさんですね。<ruby>確認<rt>かくにん</rt></ruby>します。…まだ<ruby>受診<rt>じゅしん</rt></ruby>していませんね。<br>*(Anh Nam à. Tôi kiểm. …Chưa khám nhỉ.)* |
| Thức | <ruby>就労<rt>しゅうろう</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>健診<rt>けんしん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>最短<rt>さいたん</rt></ruby>でいつ<ruby>受<rt>う</rt></ruby>けられますか?<br>*(Cần khám trước khi làm việc. Sớm nhất khi nào khám được ạ?)* |
| Tổng vụ | <ruby>明日<rt>あした</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby>、<ruby>提携<rt>ていけい</rt></ruby><ruby>医院<rt>いいん</rt></ruby>で<ruby>予約<rt>よやく</rt></ruby>できます。<br>*(Sáng mai, đặt được ở phòng khám liên kết.)* |
| Thức | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るまで<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>はさせません。<br>*(Nhờ chị. Đến khi có kết quả em không cho làm trên cao.)* |
| Tổng vụ | <ruby>適切<rt>てきせつ</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>予約<rt>よやく</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>したら<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Phán đoán đúng. Đặt được tôi báo lại.)* |

---

## Tình huống 12 — Sân công trường · 15:30, nói chuyện với Nam về việc tạm hoãn việc cao

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>がある。<ruby>雇入<rt>やといい</rt></ruby>れ<ruby>健診<rt>けんしん</rt></ruby>がまだだったんだ。<br>*(Nam, có chuyện quan trọng. Em chưa khám sức khoẻ khi tuyển dụng.)* |
| Nam | え、すみません。<ruby>僕<rt>ぼく</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>かったですか?<br>*(Ơ, xin lỗi. Lỗi của em ạ?)* |
| Thức | お<ruby>前<rt>まえ</rt></ruby>のせいじゃない。<ruby>手続<rt>てつづ</rt></ruby>きの<ruby>問題<rt>もんだい</rt></ruby>だ。<ruby>明日<rt>あした</rt></ruby><ruby>健診<rt>けんしん</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってくれ。<br>*(Không phải lỗi em. Vấn đề thủ tục. Mai em đi khám nhé.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。それまで<ruby>仕事<rt>しごと</rt></ruby>はどうしますか?<br>*(Hiểu rồi ạ. Đến lúc đó làm việc thế nào ạ?)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るまで<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>はなし。<ruby>地上<rt>ちじょう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>む。<ruby>安全<rt>あんぜん</rt></ruby>のためだ。<br>*(Đến khi có kết quả không lên cao. Làm việc dưới đất. Vì an toàn.)* |
| Nam | はい、ありがとうございます。<ruby>守<rt>まも</rt></ruby>ってもらえて<ruby>安心<rt>あんしん</rt></ruby>します。<br>*(Vâng, cảm ơn anh. Được anh bảo vệ em yên tâm.)* |

---

## Tình huống 13 — Văn phòng công trường · 9:00 hôm sau, báo 石川さん tình hình xử lý

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、ナムくんの<ruby>健診<rt>けんしん</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>受診<rt>じゅしん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Anh Ishikawa, khám sức khoẻ của Nam, dự định khám sáng nay.)* |
| Ishikawa | <ruby>対応<rt>たいおう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>いですね。それまでの<ruby>就労<rt>しゅうろう</rt></ruby>はどうしましたか?<br>*(Xử lý nhanh nhỉ. Đến lúc đó việc làm thì sao?)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>まで<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>から<ruby>外<rt>はず</rt></ruby>し、<ruby>地上<rt>ちじょう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>にしています。<br>*(Đến khi có kết quả em đưa khỏi việc trên cao, cho làm dưới đất.)* |
| Ishikawa | <ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>書類<rt>しょるい</rt></ruby>を<ruby>形<rt>かたち</rt></ruby>だけ<ruby>埋<rt>う</rt></ruby>めなかったのが<ruby>良<rt>よ</rt></ruby>かった。<br>*(Phán đoán đúng. Không điền cho có hình thức là tốt.)* |
| Thức | <ruby>書類<rt>しょるい</rt></ruby>の<ruby>空欄<rt>くうらん</rt></ruby>は<ruby>現実<rt>げんじつ</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>だと<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu ô trống trong giấy tờ là nguy hiểm thực tế.)* |
| Ishikawa | その<ruby>理解<rt>りかい</rt></ruby>こそが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>資質<rt>ししつ</rt></ruby>です。<br>*(Hiểu được điều đó mới là phẩm chất đốc công.)* |

---

## Tình huống 14 — Bàn làm việc · 14:00, hoàn thiện và nộp lại グリーンファイル

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、ナムくんの<ruby>健診<rt>けんしん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>を<ruby>記入<rt>きにゅう</rt></ruby>し、<ruby>再<rt>さい</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Anh Ishikawa, em đã điền kết quả khám của Nam, nộp lại.)* |
| Ishikawa | <ruby>拝見<rt>はいけん</rt></ruby>します。…<ruby>空欄<rt>くうらん</rt></ruby>なし。<ruby>和暦<rt>われき</rt></ruby><ruby>西暦<rt>せいれき</rt></ruby>も<ruby>統一<rt>とういつ</rt></ruby>されていますね。<br>*(Tôi xem. …Không ô trống. Lịch Nhật dương lịch cũng thống nhất rồi nhỉ.)* |
| Thức | チェックリストで<ruby>一<rt>いち</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>ずつ<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Em đã kiểm từng mục bằng danh sách kiểm tra.)* |
| Ishikawa | <ruby>仕組<rt>しく</rt></ruby>みで<ruby>確認<rt>かくにん</rt></ruby>する<ruby>習慣<rt>しゅうかん</rt></ruby>、<ruby>良<rt>よ</rt></ruby>いです。<ruby>受理<rt>じゅり</rt></ruby>します。<br>*(Thói quen kiểm bằng cơ chế, tốt. Tôi tiếp nhận.)* |
| Thức | ありがとうございます。<ruby>苦手<rt>にがて</rt></ruby>でしたが、<ruby>少<rt>すこ</rt></ruby>し<ruby>自信<rt>じしん</rt></ruby>がつきました。<br>*(Cảm ơn anh. Em vốn yếu nhưng đã tự tin hơn chút.)* |
| Ishikawa | <ruby>苦手<rt>にがて</rt></ruby>を<ruby>逃<rt>に</rt></ruby>げずに<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>った<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Là kết quả của việc đối diện điểm yếu thay vì né tránh.)* |

---

## Tình huống 15 — Lán công trường · 16:00, Saito nói về ý nghĩa 書類

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>書類<rt>しょるい</rt></ruby>でつまずいて、<ruby>何<rt>なに</rt></ruby>を<ruby>学<rt>まな</rt></ruby>んだ?<br>*(Thức, vấp giấy tờ rồi học được gì?)* |
| Thức | <ruby>書類<rt>しょるい</rt></ruby>は<ruby>面倒<rt>めんどう</rt></ruby>な<ruby>作業<rt>さぎょう</rt></ruby>ではなく、<ruby>人<rt>ひと</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>仕組<rt>しく</rt></ruby>みだと<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Giấy tờ không phải việc phiền phức mà là cơ chế bảo vệ con người.)* |
| Saito | そこに<ruby>気<rt>き</rt></ruby>づけば<ruby>書類<rt>しょるい</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わる。<ruby>空欄<rt>くうらん</rt></ruby><ruby>一<rt>ひと</rt></ruby>つが<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。<br>*(Nhận ra chỗ đó thì ý nghĩa giấy tờ thay đổi. Một ô trống liên quan tính mạng.)* |
| Thức | <ruby>漢字<rt>かんじ</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>でも、<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かれば<ruby>逃<rt>に</rt></ruby>げなくなりました。<br>*(Dù yếu kanji, hiểu ý nghĩa thì em không né tránh nữa.)* |
| Saito | <ruby>職長<rt>しょくちょう</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>と<ruby>書類<rt>しょるい</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>できて<ruby>一人前<rt>いちにんまえ</rt></ruby>だ。<br>*(Đốc công làm được cả hiện trường và giấy tờ mới là lành nghề.)* |
| Thức | はい、<ruby>両方<rt>りょうほう</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em sẽ mài giũa cả hai.)* |

---

## Tình huống 16 — Bàn làm việc · 13:00 ngày khác, dạy Nam đọc 名簿

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>名簿<rt>めいぼ</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>、<ruby>僕<rt>ぼく</rt></ruby>も<ruby>読<rt>よ</rt></ruby>めるようになりたいです。<br>*(Anh Thức, kanji danh sách, em cũng muốn đọc được.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>も<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>読<rt>よ</rt></ruby>めなかった。よく<ruby>出<rt>で</rt></ruby>る<ruby>言葉<rt>ことば</rt></ruby>から<ruby>覚<rt>おぼ</rt></ruby>えるといい。<br>*(Đầu anh cũng chả đọc nổi. Học từ hay xuất hiện trước là tốt.)* |
| Nam | 「<ruby>雇入<rt>やといい</rt></ruby>れ」とか、<ruby>難<rt>むずか</rt></ruby>しいです。<br>*("Tuyển dụng" gì đó, khó quá.)* |
| Thức | 「<ruby>雇<rt>やと</rt></ruby>う」は<ruby>働<rt>はたら</rt></ruby>かせること。だから<ruby>入社日<rt>にゅうしゃび</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>意味<rt>いみ</rt></ruby>だ。<ruby>意味<rt>いみ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>忘<rt>わす</rt></ruby>れない。<br>*("Tuyển" là cho làm việc. Nên cùng nghĩa ngày vào công ty. Nhớ theo nghĩa thì không quên.)* |
| Nam | <ruby>意味<rt>いみ</rt></ruby>とセットで<ruby>覚<rt>おぼ</rt></ruby>えるんですね。やってみます。<br>*(Nhớ kèm nghĩa nhỉ. Em thử ạ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からない<ruby>字<rt>じ</rt></ruby>はいつでも<ruby>聞<rt>き</rt></ruby>いて。<ruby>俺<rt>おれ</rt></ruby>もそうやって<ruby>覚<rt>おぼ</rt></ruby>えた。<br>*(Chữ không hiểu cứ hỏi. Anh cũng học vậy mà nhớ.)* |

---

## Tình huống 17 — Văn phòng công trường · 13:30, 石川さん giao thêm trách nhiệm

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>月例<rt>げつれい</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>もお<ruby>任<rt>まか</rt></ruby>せできますか?<br>*(Anh Thức, từ tháng sau cập nhật hồ sơ an toàn hằng tháng cũng giao anh được không?)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>でよろしいですか。<ruby>不安<rt>ふあん</rt></ruby>もありますが、やらせていただきます。<br>*(Em được không ạ. Có hơi lo nhưng em xin nhận làm.)* |
| Ishikawa | <ruby>前回<rt>ぜんかい</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>任<rt>まか</rt></ruby>せられると<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Nhìn cách xử lý lần trước tôi đánh giá giao được.)* |
| Thức | チェックリストを<ruby>毎月<rt>まいつき</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>して、<ruby>漏<rt>も</rt></ruby>れを<ruby>防<rt>ふせ</rt></ruby>ぎます。<br>*(Em cập nhật danh sách kiểm tra mỗi tháng, ngừa sót.)* |
| Ishikawa | <ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>むのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Chỗ chưa rõ cứ hỏi. Ôm một mình là nguy nhất.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, không rõ em nhất định kiểm chứng.)* |

---

## Tình huống 18 — Ký túc xá · 19:30, Hùng hỏi về chứng chỉ

| Vai | Lời thoại |
|---|---|
| Hùng | トゥックさん、<ruby>二級<rt>にきゅう</rt></ruby>とび<ruby>技能士<rt>ぎのうし</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、おめでとうございます!<br>*(Anh Thức, chúc mừng anh đậu 2級 thợ giàn giáo!)* |
| Thức | ありがとう。でも<ruby>合格<rt>ごうかく</rt></ruby>より、その<ruby>後<rt>あと</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>のほうが<ruby>大変<rt>たいへん</rt></ruby>だったよ。<br>*(Cảm ơn. Nhưng hơn cả việc đậu, giấy tờ sau đó mới vất vả.)* |
| Hùng | <ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>ったら<ruby>楽<rt>らく</rt></ruby>になると<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Em tưởng lấy chứng chỉ là nhẹ đi.)* |
| Thức | <ruby>逆<rt>ぎゃく</rt></ruby>だよ。<ruby>資格<rt>しかく</rt></ruby>は<ruby>責任<rt>せきにん</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まりだ。でもその<ruby>分<rt>ぶん</rt></ruby><ruby>成長<rt>せいちょう</rt></ruby>できる。<br>*(Ngược lại. Chứng chỉ là khởi đầu của trách nhiệm. Nhưng nhờ vậy trưởng thành được.)* |
| Hùng | <ruby>僕<rt>ぼく</rt></ruby>も<ruby>逃<rt>に</rt></ruby>げずに<ruby>頑張<rt>がんば</rt></ruby>りたいです。<br>*(Em cũng muốn không né tránh mà cố gắng.)* |
| Thức | その<ruby>気持<rt>きも</rt></ruby>ちがあれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びよう。<br>*(Có tâm thế đó là ổn. Cùng tiến lên nào.)* |

---

## Tình huống 19 — Phòng nghỉ Linh gọi điện · 21:00, chia sẻ niềm vui đỗ (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi! Em nghe Hùng nhắn anh đậu chứng chỉ rồi hả? Mừng quá! |
| Thức | Ừ, đậu cả lý thuyết lẫn thực hành. Cái phần chữ Hán muốn xỉu mà qua được. |
| Linh | Em biết mà, anh ôn cả tháng cơ mà. Giờ là thợ giàn giáo có bằng chính thức rồi đó nha. |
| Thức | Ừ. Mà vui chưa được lâu thì lại vấp đống hồ sơ an toàn, chữ Hán hành chính còn khó hơn. Cũng đang dần quen. |
| Linh | Anh cứ từ từ. Em thấy anh tiến xa lắm rồi. Cố thêm chút nữa là tới 特定技能 số 2. |
| Thức | Ừ, mục tiêu vẫn là vậy. Cảm ơn em luôn ở bên động viên. Thôi mai dậy sớm, anh nghỉ nhé. |

---

## Tình huống 20 — Sân công trường · 8:00, Saito thông báo đội về kết quả và trách nhiệm mới

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>報告<rt>ほうこく</rt></ruby>だ。トゥックが<ruby>二級<rt>にきゅう</rt></ruby>とび<ruby>技能士<rt>ぎのうし</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>した。<br>*(Báo cáo. Thức đã đậu 2級 thợ giàn giáo.)* |
| Kondo | おめでとう!<ruby>学科<rt>がっか</rt></ruby>まで<ruby>突破<rt>とっぱ</rt></ruby>したのは<ruby>本当<rt>ほんとう</rt></ruby>にすごい。<br>*(Chúc mừng! Vượt cả lý thuyết là thật sự cừ.)* |
| Saito | <ruby>来月<rt>らいげつ</rt></ruby>から<ruby>安全<rt>あんぜん</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>もトゥックが<ruby>担当<rt>たんとう</rt></ruby>する。<ruby>協力<rt>きょうりょく</rt></ruby>してやってくれ。<br>*(Từ tháng sau cập nhật hồ sơ an toàn cũng Thức phụ trách. Mọi người hỗ trợ.)* |
| Nam | トゥックさんなら<ruby>安心<rt>あんしん</rt></ruby>です。<ruby>名簿<rt>めいぼ</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えてくれます。<br>*(Anh Thức thì yên tâm. Anh ấy còn dạy cả kanji danh sách.)* |
| Thức | <ruby>苦手<rt>にがて</rt></ruby>だったからこそ、<ruby>分<rt>わ</rt></ruby>からない<ruby>人<rt>ひと</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かります。<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<br>*(Chính vì từng yếu nên em hiểu cảm giác người không hiểu. Cùng làm nào.)* |
| Saito | <ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>克服<rt>こくふく</rt></ruby>した<ruby>人間<rt>にんげん</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>い。よくやった。<br>*(Người khắc phục được điểm yếu là mạnh. Làm tốt lắm.)* |

---

## Đọng lại

Niềm vui đỗ 2級とび技能士 đến cùng thử thách mới: グリーンファイル — bộ hồ sơ an toàn nộp 元請け với kanji hành chính nặng. Thức vấp ngay (lẫn lịch Nhật/dương lịch, ô trống ngày khám sức khoẻ) và bị 石川さん trả lại hồ sơ. Bài học cốt lõi: ô trống trong giấy tờ chính là nguy hiểm thực tế — Thức không điền cho có hình thức mà truy nguyên nhân, cho đàn em Nam tạm rời việc trên cao chờ khám sức khoẻ. Thức biến điểm yếu thành vũ khí bằng cách lập checklist, dựa cơ chế thay vì trí nhớ, và bắt đầu dạy lại đàn em đọc kanji theo nghĩa.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | グリーンファイル | — | bộ hồ sơ an toàn nộp tổng thầu |
> | 安全書類 | あんぜんしょるい | hồ sơ an toàn |
> | 作業員名簿 | さぎょういんめいぼ | danh sách công nhân |
> | 工事安全衛生計画書 | こうじあんぜんえいせいけいかくしょ | bản kế hoạch an toàn vệ sinh thi công |
> | 持込機械等使用届 | もちこみきかいとうしようとどけ | tờ khai sử dụng máy mang vào |
> | 再下請負通知書 | さいしたうけおいつうちしょ | thông báo thầu phụ cấp dưới |
> | 雇入れ年月日 | やといいれねんがっぴ | ngày tuyển dụng |
> | 雇入れ時健診 | やといいれじけんしん | khám sức khoẻ khi tuyển dụng |
> | 和暦 | われき | lịch niên hiệu Nhật |
> | 西暦 | せいれき | dương lịch |
> | 施工体制 | せこうたいせい | cơ cấu thi công |
> | 有資格者 | ゆうしかくしゃ | người có chứng chỉ |
> | 受理 | じゅり | tiếp nhận (hồ sơ) |
> | 不備 | ふび | thiếu sót / khiếm khuyết |
> | 空欄 | くうらん | ô để trống |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000009, 800000037, NULL, 'markdown_book', 'T9. Anh Long bàn chuyện thợ tự doanh — Thức tìm hiểu để học (一人親方の話)', '# Sách kỹ năng đặc định xây dựng · T9. Anh Long bàn chuyện thợ tự doanh — Thức tìm hiểu để học (一人親方の話)

> **Mục tiêu nhân vật:** Anh Long (ロンさん, đồng hương đi trước, đã chuyển visa khác) bàn chuyện làm 一人親方 (thợ tự doanh độc lập). Thức tìm hiểu để học thuật ngữ và hiểu rủi ro, NHƯNG biết rõ visa 特定技能 của mình là lao động làm thuê, KHÔNG được tự làm 一人親方. Học mẫu câu tiếng Nhật khi bàn về cơ chế 一人親方, 労災特別加入, hỏi đàn anh, và phân định ranh giới chế độ.

---

## Bối cảnh

Tháng 10 năm 2030. Anh Long — người Việt sang trước Thức nhiều năm, nay đã đổi tư cách lưu trú, đang cân nhắc làm 一人親方. Long rủ Thức cà phê, kể về con đường này. Thức quan tâm tìm hiểu để mở rộng hiểu biết và học thuật ngữ ngành, nhưng xác định rõ: visa 特定技能 hiện tại là tư cách lao động làm thuê, không cho phép tự làm 一人親方. Thức học để biết, để sau này dạy đàn em phân biệt — chứ không tự làm. Tiếng Nhật nghiệp vụ chương này là ngôn ngữ về cơ chế lao động xây dựng, vẫn xen thực tế công trường.

---

## Tình huống 1 — Quán cà phê · 18:00, Long mở chuyện 一人親方

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>俺<rt>おれ</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>あたり<ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>になろうと<ruby>思<rt>おも</rt></ruby>ってるんだ。<br>*(Thức, anh đang tính sang năm làm thợ tự doanh.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>ですか。<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>属<rt>ぞく</rt></ruby>さず<ruby>個人<rt>こじん</rt></ruby>でやる、ということですよね。<br>*(Thợ tự doanh ạ. Tức là không thuộc công ty mà làm cá nhân phải không.)* |
| Long | そうだ。<ruby>請負<rt>うけおい</rt></ruby>で<ruby>仕事<rt>しごと</rt></ruby>を<ruby>取<rt>と</rt></ruby>る。<ruby>自由<rt>じゆう</rt></ruby>だが<ruby>責任<rt>せきにん</rt></ruby>も<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>自分<rt>じぶん</rt></ruby>だ。<br>*(Đúng. Nhận việc theo khoán. Tự do nhưng trách nhiệm cũng tự mình hết.)* |
| Thức | <ruby>興味<rt>きょうみ</rt></ruby>はあります。でも<ruby>私<rt>わたし</rt></ruby>の<ruby>今<rt>いま</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>ではできませんよね。<br>*(Em có hứng thú. Nhưng với tư cách lưu trú hiện tại của em thì không làm được nhỉ.)* |
| Long | そこは<ruby>正<rt>ただ</rt></ruby>しく<ruby>理解<rt>りかい</rt></ruby>してる。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>は<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>が<ruby>前提<rt>ぜんてい</rt></ruby>だからな。<br>*(Chỗ đó cậu hiểu đúng. Vì 特定技能 lấy hợp đồng làm công làm tiền đề mà.)* |
| Thức | はい。<ruby>勉強<rt>べんきょう</rt></ruby>のために<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Vâng. Để học hỏi, anh kể cho em nghe với.)* |

---

## Tình huống 2 — Quán cà phê · 18:10, Thức hỏi cơ chế nhận việc

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>をどう<ruby>取<rt>と</rt></ruby>るのですか?<br>*(Thợ tự doanh nhận việc thế nào ạ?)* |
| Long | <ruby>元請<rt>もとうけ</rt></ruby>けや<ruby>下請<rt>したうけ</rt></ruby>けの<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>常用<rt>じょうよう</rt></ruby>か<ruby>請負<rt>うけおい</rt></ruby>で<ruby>声<rt>こえ</rt></ruby>がかかる。<br>*(Công ty tổng thầu hay thầu phụ gọi theo dạng công nhật hoặc khoán.)* |
| Thức | 「<ruby>常用<rt>じょうよう</rt></ruby>」と「<ruby>請負<rt>うけおい</rt></ruby>」は<ruby>違<rt>ちが</rt></ruby>うのですか?<br>*("Công nhật" và "khoán" khác nhau ạ?)* |
| Long | <ruby>常用<rt>じょうよう</rt></ruby>は<ruby>日<rt>ひ</rt></ruby>ごとの<ruby>単価<rt>たんか</rt></ruby>、<ruby>請負<rt>うけおい</rt></ruby>は<ruby>工事<rt>こうじ</rt></ruby>まるごとの<ruby>金額<rt>きんがく</rt></ruby>だ。<ruby>請負<rt>うけおい</rt></ruby>は<ruby>早<rt>はや</rt></ruby>く<ruby>終<rt>お</rt></ruby>われば<ruby>得<rt>とく</rt></ruby>、<ruby>遅<rt>おく</rt></ruby>れれば<ruby>損<rt>そん</rt></ruby>。<br>*(Công nhật là đơn giá theo ngày, khoán là tiền cả công trình. Khoán xong sớm thì lời, chậm thì lỗ.)* |
| Thức | <ruby>収入<rt>しゅうにゅう</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>しない、ということですね。<br>*(Tức là thu nhập không ổn định nhỉ.)* |
| Long | そこが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いだ。<ruby>会社員<rt>かいしゃいん</rt></ruby>なら<ruby>毎月<rt>まいつき</rt></ruby><ruby>給料<rt>きゅうりょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>る。<br>*(Đó là khác biệt lớn nhất. Nhân viên công ty thì tháng nào cũng có lương.)* |

---

## Tình huống 3 — Quán cà phê · 18:20, hỏi về 労災特別加入

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>会社員<rt>かいしゃいん</rt></ruby>は<ruby>労災<rt>ろうさい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>がありますが、<ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>はどうなりますか?<br>*(Nhân viên công ty có bảo hiểm tai nạn, thợ tự doanh thì sao ạ?)* |
| Long | いい<ruby>質問<rt>しつもん</rt></ruby>だ。<ruby>原則<rt>げんそく</rt></ruby><ruby>対象外<rt>たいしょうがい</rt></ruby>だが、「<ruby>労災<rt>ろうさい</rt></ruby><ruby>特別<rt>とくべつ</rt></ruby><ruby>加入<rt>かにゅう</rt></ruby>」という<ruby>制度<rt>せいど</rt></ruby>がある。<br>*(Câu hỏi hay. Nguyên tắc là không thuộc đối tượng, nhưng có chế độ "tham gia đặc biệt bảo hiểm tai nạn".)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>加入<rt>かにゅう</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>きをするのですね。<br>*(Tự mình làm thủ tục tham gia nhỉ.)* |
| Long | そうだ。<ruby>団体<rt>だんたい</rt></ruby>を<ruby>通<rt>とお</rt></ruby>して<ruby>加入<rt>かにゅう</rt></ruby>する。<ruby>入<rt>はい</rt></ruby>っていないと<ruby>現場<rt>げんば</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れないことも<ruby>多<rt>おお</rt></ruby>い。<br>*(Đúng. Tham gia qua hiệp hội. Không tham gia thì nhiều khi không vào công trường được.)* |
| Thức | <ruby>怪我<rt>けが</rt></ruby>をしたら<ruby>自己<rt>じこ</rt></ruby><ruby>責任<rt>せきにん</rt></ruby>のリスクが<ruby>大<rt>おお</rt></ruby>きいんですね。<br>*(Bị thương thì rủi ro tự chịu trách nhiệm lớn nhỉ.)* |
| Long | <ruby>自由<rt>じゆう</rt></ruby>の<ruby>裏側<rt>うらがわ</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ずリスクがある。よく<ruby>覚<rt>おぼ</rt></ruby>えておけ。<br>*(Mặt sau của tự do luôn có rủi ro. Nhớ kỹ.)* |

---

## Tình huống 4 — Quán cà phê · 18:30, Thức xác định ranh giới chế độ của mình

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて、<ruby>仕組<rt>しく</rt></ruby>みはよく<ruby>分<rt>わ</rt></ruby>かりました。でも<ruby>私<rt>わたし</rt></ruby>は<ruby>今<rt>いま</rt></ruby>やりません。<br>*(Nghe anh kể, em hiểu rõ cơ chế. Nhưng em hiện không làm.)* |
| Long | それでいい。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>は<ruby>雇<rt>やと</rt></ruby>われて<ruby>働<rt>はたら</rt></ruby>く<ruby>資格<rt>しかく</rt></ruby>だからな。<br>*(Vậy là đúng. 特定技能 là tư cách làm thuê mà.)* |
| Thức | はい。<ruby>個人<rt>こじん</rt></ruby><ruby>事業<rt>じぎょう</rt></ruby>として<ruby>請負<rt>うけおい</rt></ruby>はできません。<ruby>違反<rt>いはん</rt></ruby>になります。<br>*(Vâng. Em không thể nhận khoán với tư cách kinh doanh cá nhân. Sẽ thành vi phạm.)* |
| Long | そこを<ruby>勘違<rt>かんちが</rt></ruby>いして<ruby>失敗<rt>しっぱい</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>もいる。お<ruby>前<rt>まえ</rt></ruby>は<ruby>冷静<rt>れいせい</rt></ruby>だな。<br>*(Có người hiểu nhầm chỗ đó rồi vấp. Cậu tỉnh táo đấy.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>知<rt>し</rt></ruby>るのは<ruby>身<rt>み</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためです。<ruby>知<rt>し</rt></ruby>ること<ruby>自体<rt>じたい</rt></ruby>は<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Hiểu đúng chế độ là để tự bảo vệ. Bản thân việc biết là quan trọng.)* |
| Long | その<ruby>姿勢<rt>しせい</rt></ruby>なら<ruby>将来<rt>しょうらい</rt></ruby><ruby>道<rt>みち</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>ける。<br>*(Tâm thế đó thì tương lai sẽ mở đường.)* |

---

## Tình huống 5 — Quán cà phê · 18:40, Long kể khó khăn thực tế

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大変<rt>たいへん</rt></ruby>なのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Thợ tự doanh vất vả nhất là gì ạ?)* |
| Long | <ruby>仕事<rt>しごと</rt></ruby>を<ruby>切<rt>き</rt></ruby>らさないことだ。<ruby>暇<rt>ひま</rt></ruby>な<ruby>時期<rt>じき</rt></ruby>は<ruby>収入<rt>しゅうにゅう</rt></ruby>がゼロになる。<br>*(Không để đứt việc. Lúc rảnh thì thu nhập về không.)* |
| Thức | <ruby>確定<rt>かくてい</rt></ruby><ruby>申告<rt>しんこく</rt></ruby>も<ruby>自分<rt>じぶん</rt></ruby>でやるのですよね。<br>*(Khai thuế cũng tự làm nhỉ.)* |
| Long | そうだ。<ruby>帳簿<rt>ちょうぼ</rt></ruby>、<ruby>経費<rt>けいひ</rt></ruby>、<ruby>税金<rt>ぜいきん</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>管理<rt>かんり</rt></ruby>する。<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>も<ruby>多<rt>おお</rt></ruby>い。<br>*(Đúng. Sổ sách, chi phí, thuế, quản lý hết. Giấy tờ tiếng Nhật cũng nhiều.)* |
| Thức | <ruby>技術<rt>ぎじゅつ</rt></ruby>だけでなく<ruby>経営<rt>けいえい</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>も<ruby>要<rt>い</rt></ruby>るんですね。<br>*(Không chỉ kỹ thuật mà cần cả năng lực kinh doanh nhỉ.)* |
| Long | そこを<ruby>甘<rt>あま</rt></ruby>く<ruby>見<rt>み</rt></ruby>ると<ruby>続<rt>つづ</rt></ruby>かない。<ruby>覚悟<rt>かくご</rt></ruby>がいる<ruby>道<rt>みち</rt></ruby>だ。<br>*(Coi nhẹ chỗ đó thì không trụ được. Là con đường cần quyết tâm.)* |

---

## Tình huống 6 — Quán cà phê · 18:55, Thức học cách nghĩ về con đường nghề

| Vai | Lời thoại |
|---|---|
| Long | お<ruby>前<rt>まえ</rt></ruby>はこれからどうしたいんだ?<br>*(Cậu sắp tới muốn thế nào?)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>職長<rt>しょくちょう</rt></ruby>として<ruby>力<rt>ちから</rt></ruby>をつけたいです。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>も<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Em muốn rèn năng lực làm đốc công trong công ty. Em cũng nhắm 特定技能 số 2.)* |
| Long | <ruby>堅実<rt>けんじつ</rt></ruby>だな。<ruby>二号<rt>にごう</rt></ruby>なら<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>ける。<ruby>家族<rt>かぞく</rt></ruby>も<ruby>呼<rt>よ</rt></ruby>べる。<br>*(Vững vàng đấy. Số 2 thì làm lâu được. Đón cả gia đình được.)* |
| Thức | はい。まず<ruby>会社<rt>かいしゃ</rt></ruby>での<ruby>実績<rt>じっせき</rt></ruby>を<ruby>積<rt>つ</rt></ruby>むことが<ruby>大事<rt>だいじ</rt></ruby>だと<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Vâng. Em nghĩ tích thành tích trong công ty trước là quan trọng.)* |
| Long | <ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>はその<ruby>先<rt>さき</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つにすぎん。<ruby>今<rt>いま</rt></ruby><ruby>焦<rt>あせ</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>はない。<br>*(Thợ tự doanh chỉ là một lựa chọn ở phía sau đó. Giờ không cần vội.)* |
| Thức | <ruby>知識<rt>ちしき</rt></ruby>として<ruby>持<rt>も</rt></ruby>っておきます。ありがとうございます、ロンさん。<br>*(Em giữ làm kiến thức. Cảm ơn anh Long.)* |

---

## Tình huống 7 — Sân công trường · 8:00 hôm sau, 朝礼 bình thường (về với công việc)

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chào buổi sáng. Bắt đầu họp sáng hôm nay.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>五<rt>ご</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>足場<rt>あしば</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>です。<ruby>重点<rt>じゅうてん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>落下<rt>らっか</rt></ruby><ruby>物<rt>ぶつ</rt></ruby>ゼロ」。<br>*(Hôm nay chuẩn bị tháo giàn giáo tầng năm. Mục tiêu trọng điểm là "không rơi vật".)* |
| Kondo | <ruby>解体<rt>かいたい</rt></ruby>は<ruby>組立<rt>くみた</rt></ruby>てより<ruby>危<rt>あぶ</rt></ruby>ないからな。<br>*(Tháo nguy hơn lắp đấy.)* |
| Thức | はい。<ruby>手順<rt>てじゅん</rt></ruby><ruby>書<rt>しょ</rt></ruby>どおり、<ruby>上<rt>うえ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に。<ruby>無理<rt>むり</rt></ruby>な<ruby>取<rt>と</rt></ruby>り<ruby>外<rt>はず</rt></ruby>しはしない。<br>*(Vâng. Theo bản trình tự, tháo từ trên xuống. Không tháo gò ép.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Tình huống 8 — Trên giàn giáo · 10:30, chỉ đạo tháo giàn giáo an toàn

| Vai | Lời thoại |
|---|---|
| Thức | フンくん、<ruby>解体<rt>かいたい</rt></ruby>した<ruby>部材<rt>ぶざい</rt></ruby>は<ruby>下<rt>した</rt></ruby>に<ruby>投<rt>な</rt></ruby>げず、<ruby>必<rt>かなら</rt></ruby>ず<ruby>手渡<rt>てわた</rt></ruby>しで。<br>*(Hùng, vật liệu tháo ra không ném xuống, nhất định chuyền tay.)* |
| Hùng | はい。<ruby>運<rt>はこ</rt></ruby>び<ruby>下<rt>お</rt></ruby>ろす<ruby>順番<rt>じゅんばん</rt></ruby>はどうしますか?<br>*(Vâng. Thứ tự đưa xuống thế nào ạ?)* |
| Thức | <ruby>軽<rt>かる</rt></ruby>いものから。<ruby>重<rt>おも</rt></ruby>い<ruby>布<rt>ぬの</rt></ruby>は<ruby>二人<rt>ふたり</rt></ruby>で<ruby>持<rt>も</rt></ruby>つ。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>無理<rt>むり</rt></ruby>するな。<br>*(Từ cái nhẹ. Thanh ngang nặng thì hai người. Đừng một mình gắng.)* |
| Hùng | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>下<rt>した</rt></ruby>の<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>見<rt>み</rt></ruby>ますか?<br>*(Hiểu rồi. Ai canh cấm vào phía dưới ạ?)* |
| Thức | ナムくんに<ruby>下<rt>した</rt></ruby>の<ruby>監視<rt>かんし</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>む。<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>って<ruby>進<rt>すす</rt></ruby>めよう。<br>*(Anh nhờ Nam canh dưới. Í ới nhau mà làm.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>慎重<rt>しんちょう</rt></ruby>にやります。<br>*(Rõ ạ. Em làm thận trọng.)* |

---

## Tình huống 9 — Sân công trường · 12:00, Kondo hỏi về cuộc gặp Long

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>昨日<rt>きのう</rt></ruby>ロンさんと<ruby>会<rt>あ</rt></ruby>ったんだって?<ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>になるとか。<br>*(Thức, nghe nói hôm qua gặp anh Long? Anh ấy làm thợ tự doanh à.)* |
| Thức | はい、<ruby>来年<rt>らいねん</rt></ruby>あたり<ruby>独立<rt>どくりつ</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えているそうです。<br>*(Vâng, nghe nói anh ấy tính sang năm ra riêng.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>もやりたくなったか?<br>*(Cậu cũng muốn làm à?)* |
| Thức | <ruby>仕組<rt>しく</rt></ruby>みは<ruby>勉強<rt>べんきょう</rt></ruby>になりました。でも<ruby>私<rt>わたし</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>ではできません。<ruby>雇用<rt>こよう</rt></ruby><ruby>前提<rt>ぜんてい</rt></ruby>ですから。<br>*(Cơ chế thì học hỏi được. Nhưng tư cách lưu trú của em không làm được. Vì lấy làm thuê làm tiền đề.)* |
| Kondo | よく<ruby>分<rt>わ</rt></ruby>かってるな。そこを<ruby>勘違<rt>かんちが</rt></ruby>いするとビザを<ruby>失<rt>うしな</rt></ruby>う。<br>*(Hiểu rõ đấy. Hiểu nhầm chỗ đó là mất visa.)* |
| Thức | はい。<ruby>知識<rt>ちしき</rt></ruby>として<ruby>持<rt>も</rt></ruby>ち、<ruby>今<rt>いま</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>力<rt>ちから</rt></ruby>をつけます。<br>*(Vâng. Em giữ làm kiến thức, giờ rèn năng lực trong công ty.)* |

---

## Tình huống 10 — Lán công trường · 13:00, hỏi Saito về con đường chính quy

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>相談<rt>そうだん</rt></ruby>してもいいですか。<br>*(Anh Saito, em trao đổi chút được không ạ.)* |
| Saito | どうした。<br>*(Sao thế.)* |
| Thức | ロンさんから<ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きました。<ruby>私<rt>わたし</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けたいと<ruby>改<rt>あらた</rt></ruby>めて<ruby>思<rt>おも</rt></ruby>いました。<br>*(Em nghe anh Long kể chuyện thợ tự doanh. Em lại càng muốn tiếp tục trong công ty.)* |
| Saito | <ruby>賢明<rt>けんめい</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>では<ruby>雇用<rt>こよう</rt></ruby>での<ruby>就労<rt>しゅうろう</rt></ruby>が<ruby>条件<rt>じょうけん</rt></ruby>だ。<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>伸<rt>の</rt></ruby>びるのが<ruby>正道<rt>せいどう</rt></ruby>だ。<br>*(Sáng suốt. Tư cách của cậu điều kiện là làm thuê. Phát triển trong công ty là chính đạo.)* |
| Thức | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>むには<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Tiến lên 特定技能 số 2 cần gì ạ?)* |
| Saito | <ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>と<ruby>監督<rt>かんとく</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>、そして<ruby>試験<rt>しけん</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>は<ruby>道<rt>みち</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>にいる。<br>*(Kinh nghiệm thực tế và kinh nghiệm giám sát, rồi kỳ thi. Cậu đang đi đúng đường.)* |

---

## Tình huống 11 — Trên giàn giáo · 14:00, xử lý sự cố nhỏ khi tháo

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん!<ruby>布<rt>ぬの</rt></ruby>が<ruby>一本<rt>いっぽん</rt></ruby>、<ruby>引<rt>ひ</rt></ruby>っかかって<ruby>外<rt>はず</rt></ruby>れません。<br>*(Anh Thức! Một thanh ngang bị mắc không tháo ra được.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>るな。<ruby>急<rt>きゅう</rt></ruby>に<ruby>外<rt>はず</rt></ruby>れると<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Đừng giật mạnh. Tuột đột ngột là nguy.)* |
| Nam | どうすればいいですか?<br>*(Phải làm sao ạ?)* |
| Thức | まず<ruby>下<rt>した</rt></ruby>を<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>に。それから<ruby>緊結<rt>きんけつ</rt></ruby>を<ruby>緩<rt>ゆる</rt></ruby>めて、<ruby>二人<rt>ふたり</rt></ruby>で<ruby>支<rt>ささ</rt></ruby>えながら<ruby>外<rt>はず</rt></ruby>す。<br>*(Trước cấm vào phía dưới. Rồi nới mối siết, hai người vừa đỡ vừa tháo.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けながらやります。<br>*(Hiểu rồi. Em vừa hô vừa làm.)* |
| Thức | そうだ。<ruby>焦<rt>あせ</rt></ruby>らなければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>も<ruby>行<rt>い</rt></ruby>く。<br>*(Đúng. Không vội thì ổn. Anh cũng tới.)* |

---

## Tình huống 12 — Sân công trường · 15:30, 終礼 tổng kết ngày tháo an toàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>終礼<rt>しゅうれい</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>、<ruby>落下<rt>らっか</rt></ruby><ruby>物<rt>ぶつ</rt></ruby>ゼロで<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Họp tổng kết. Chuẩn bị tháo hôm nay hoàn thành, không rơi vật.)* |
| Kondo | <ruby>引<rt>ひ</rt></ruby>っかかりも<ruby>慌<rt>あわ</rt></ruby>てず<ruby>処理<rt>しょり</rt></ruby>できたな。<br>*(Chỗ mắc cũng xử lý không hốt hoảng nhỉ.)* |
| Thức | はい、ナムくんが<ruby>無理<rt>むり</rt></ruby>せず<ruby>報告<rt>ほうこく</rt></ruby>してくれたおかげです。<br>*(Vâng, nhờ Nam không gắng mà báo cáo.)* |
| Nam | トゥックさんの<ruby>教<rt>おし</rt></ruby>えどおりにやっただけです。<br>*(Em chỉ làm theo lời anh Thức dạy thôi ạ.)* |
| Thức | それが<ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>明日<rt>あした</rt></ruby>は<ruby>本格<rt>ほんかく</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>。<ruby>同<rt>おな</rt></ruby>じ<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Cái đó quan trọng. Mai tháo chính thức. Giữ nhịp đó, an toàn nhé.)* |
| Cả đội | お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Vất vả rồi!)* |

---

## Tình huống 13 — Quán cà phê · 18:00 ngày khác, Long hỏi tiến triển của Thức

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>仕事<rt>しごと</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>か?<br>*(Thức, công việc thuận chứ?)* |
| Thức | はい。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>見習<rt>みなら</rt></ruby>いから、だいぶ<ruby>任<rt>まか</rt></ruby>される<ruby>仕事<rt>しごと</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えました。<br>*(Vâng. Từ tập sự đốc công, việc được giao đã tăng nhiều.)* |
| Long | <ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>得<rt>え</rt></ruby>るのが<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い。<ruby>俺<rt>おれ</rt></ruby>もそこは<ruby>遠回<rt>とおまわ</rt></ruby>りした。<br>*(Được tin cậy trong công ty là mạnh nhất. Anh cũng đi vòng chỗ đó.)* |
| Thức | ロンさんの<ruby>独立<rt>どくりつ</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>はどうですか?<br>*(Chuẩn bị ra riêng của anh thế nào ạ?)* |
| Long | <ruby>労災<rt>ろうさい</rt></ruby><ruby>特別<rt>とくべつ</rt></ruby><ruby>加入<rt>かにゅう</rt></ruby>と<ruby>取引先<rt>とりひきさき</rt></ruby>を<ruby>固<rt>かた</rt></ruby>めている。<ruby>準備<rt>じゅんび</rt></ruby>が<ruby>九割<rt>きゅうわり</rt></ruby>だ。<br>*(Đang chốt tham gia đặc biệt bảo hiểm và mối làm. Chuẩn bị là chín phần.)* |
| Thức | <ruby>応援<rt>おうえん</rt></ruby>しています。<ruby>道<rt>みち</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>っても<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Em ủng hộ anh. Đường khác nhau nhưng cùng cố gắng nhé.)* |

---

## Tình huống 14 — Ký túc xá · 19:30, Thức dạy Hùng phân biệt chế độ

| Vai | Lời thoại |
|---|---|
| Hùng | トゥックさん、<ruby>一人<rt>ひとり</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>って、<ruby>僕<rt>ぼく</rt></ruby>たちもなれるんですか?<br>*(Anh Thức, thợ tự doanh, bọn em cũng làm được không?)* |
| Thức | いい<ruby>質問<rt>しつもん</rt></ruby>だ。でも<ruby>今<rt>いま</rt></ruby>の<ruby>俺<rt>おれ</rt></ruby>たちの<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>ではできない。<br>*(Câu hỏi hay. Nhưng tư cách lưu trú của bọn mình giờ không làm được.)* |
| Hùng | どうしてですか?<br>*(Vì sao ạ?)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>たちの<ruby>資格<rt>しかく</rt></ruby>は「<ruby>雇<rt>やと</rt></ruby>われて<ruby>働<rt>はたら</rt></ruby>く」のが<ruby>条件<rt>じょうけん</rt></ruby>だ。<ruby>個人<rt>こじん</rt></ruby>で<ruby>請負<rt>うけお</rt></ruby>うと<ruby>違反<rt>いはん</rt></ruby>になる。<br>*(Tư cách bọn mình điều kiện là "làm thuê". Tự nhận khoán cá nhân là vi phạm.)* |
| Hùng | <ruby>知<rt>し</rt></ruby>らなかったら<ruby>危<rt>あぶ</rt></ruby>なかったです。<br>*(Không biết thì nguy quá.)* |
| Thức | だから<ruby>制度<rt>せいど</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>知<rt>し</rt></ruby>るんだ。<ruby>知<rt>し</rt></ruby>ることが<ruby>身<rt>み</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(Nên phải hiểu đúng chế độ. Biết là tự bảo vệ.)* |

---

## Tình huống 15 — Bàn làm việc · 13:00, hỏi 石川さん về tư cách lưu trú khi điền 名簿

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>作業員<rt>さぎょういん</rt></ruby><ruby>名簿<rt>めいぼ</rt></ruby>の<ruby>就労<rt>しゅうろう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>欄<rt>らん</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Anh Ishikawa, em xác nhận về cột tư cách làm việc trong danh sách công nhân.)* |
| Ishikawa | どうぞ。<br>*(Anh nói đi.)* |
| Thức | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>作業員<rt>さぎょういん</rt></ruby>は<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>と<ruby>就労<rt>しゅうろう</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>すべきですよね。<br>*(Công nhân nước ngoài phải ghi chính xác tư cách lưu trú và hạn chế làm việc phải không.)* |
| Ishikawa | そのとおりです。<ruby>資格<rt>しかく</rt></ruby><ruby>外<rt>がい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>は<ruby>本人<rt>ほんにん</rt></ruby>も<ruby>会社<rt>かいしゃ</rt></ruby>も<ruby>罰<rt>ばっ</rt></ruby>せられます。<br>*(Đúng vậy. Làm ngoài tư cách thì cả người và công ty đều bị phạt.)* |
| Thức | だから<ruby>請負<rt>うけおい</rt></ruby>か<ruby>雇用<rt>こよう</rt></ruby>かも<ruby>明確<rt>めいかく</rt></ruby>にしておく<ruby>必要<rt>ひつよう</rt></ruby>がありますね。<br>*(Nên cũng cần làm rõ là khoán hay làm thuê nhỉ.)* |
| Ishikawa | よく<ruby>理解<rt>りかい</rt></ruby>しています。その<ruby>意識<rt>いしき</rt></ruby>が<ruby>外国人<rt>がいこくじん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Anh hiểu kỹ đấy. Ý thức đó bảo vệ người nước ngoài.)* |

---

## Tình huống 16 — Lán công trường · 16:00, Saito đánh giá tư duy thận trọng của Thức

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、ロンさんの<ruby>件<rt>けん</rt></ruby>、お<ruby>前<rt>まえ</rt></ruby>の<ruby>線引<rt>せんび</rt></ruby>きは<ruby>正<rt>ただ</rt></ruby>しかった。<br>*(Thức, vụ anh Long, cậu vạch ranh giới đúng.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>を<ruby>知<rt>し</rt></ruby>るのと、<ruby>制度<rt>せいど</rt></ruby>を<ruby>破<rt>やぶ</rt></ruby>るのは<ruby>別<rt>べつ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em nghĩ biết chế độ và phá chế độ là hai chuyện khác nhau.)* |
| Saito | その<ruby>分<rt>わ</rt></ruby>け<ruby>方<rt>かた</rt></ruby>ができる<ruby>人間<rt>にんげん</rt></ruby>は<ruby>信用<rt>しんよう</rt></ruby>される。<ruby>焦<rt>あせ</rt></ruby>って<ruby>近道<rt>ちかみち</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ぶ<ruby>奴<rt>やつ</rt></ruby>は<ruby>崩<rt>くず</rt></ruby>れる。<br>*(Người phân biệt được như vậy được tin cậy. Kẻ vội chọn đường tắt thì sụp.)* |
| Thức | <ruby>遠回<rt>とおまわ</rt></ruby>りでも<ruby>正<rt>ただ</rt></ruby>しい<ruby>道<rt>みち</rt></ruby>を<ruby>選<rt>えら</rt></ruby>びます。<br>*(Dù đi vòng em vẫn chọn đường đúng.)* |
| Saito | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>はその<ruby>正<rt>ただ</rt></ruby>しい<ruby>道<rt>みち</rt></ruby>の<ruby>先<rt>さき</rt></ruby>にある。<br>*(特定技能 số 2 nằm ở cuối con đường đúng đó.)* |
| Thức | はい、その<ruby>道<rt>みち</rt></ruby>を<ruby>一歩<rt>いっぽ</rt></ruby>ずつ<ruby>進<rt>すす</rt></ruby>みます。<br>*(Vâng, em sẽ đi từng bước trên con đường đó.)* |

---

## Tình huống 17 — Trên giàn giáo · 10:00, ngày tháo chính thức diễn ra trôi chảy

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>各<rt>かく</rt></ruby><ruby>班<rt>はん</rt></ruby>、<ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<ruby>五<rt>ご</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>北面<rt>きためん</rt></ruby>は?<br>*(Các tổ, xác nhận tiến độ. Mặt bắc tầng năm thế nào?)* |
| Kondo | <ruby>北面<rt>きためん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>部材<rt>ぶざい</rt></ruby>は<ruby>地上<rt>ちじょう</rt></ruby>に<ruby>整理<rt>せいり</rt></ruby><ruby>済<rt>ず</rt></ruby>みだ。<br>*(Mặt bắc xong. Vật liệu đã xếp gọn dưới đất.)* |
| Thức | <ruby>南面<rt>みなみめん</rt></ruby>は<ruby>午後<rt>ごご</rt></ruby>から。<ruby>手渡<rt>てわた</rt></ruby>し<ruby>搬出<rt>はんしゅつ</rt></ruby>を<ruby>徹底<rt>てってい</rt></ruby>してください。<br>*(Mặt nam từ chiều. Quán triệt chuyền tay đưa ra ngoài.)* |
| Nam | <ruby>下<rt>した</rt></ruby>の<ruby>監視<rt>かんし</rt></ruby>は<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>僕<rt>ぼく</rt></ruby>がやります。<br>*(Canh dưới em vẫn tiếp tục làm.)* |
| Thức | <ruby>頼<rt>たの</rt></ruby>む。<ruby>順調<rt>じゅんちょう</rt></ruby>だが<ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かないように。<br>*(Nhờ em. Thuận lợi nhưng đừng lơi đến cuối.)* |
| Kondo | <ruby>解体<rt>かいたい</rt></ruby>は<ruby>最後<rt>さいご</rt></ruby>の<ruby>一本<rt>いっぽん</rt></ruby>まで<ruby>気<rt>き</rt></ruby>が<ruby>抜<rt>ぬ</rt></ruby>けないからな。<br>*(Tháo thì đến thanh cuối cùng vẫn không được lơ.)* |

---

## Tình huống 18 — Văn phòng công trường · 13:30, báo 石川さん tiến độ tháo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>五<rt>ご</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>足場<rt>あしば</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>、<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>事故<rt>じこ</rt></ruby>ゼロで<ruby>進<rt>すす</rt></ruby>んでいます。<br>*(Anh Ishikawa, tháo giàn giáo tầng năm thuận lợi. Tiến hành không tai nạn.)* |
| Ishikawa | <ruby>解体<rt>かいたい</rt></ruby>は<ruby>事故<rt>じこ</rt></ruby><ruby>率<rt>りつ</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い<ruby>工程<rt>こうてい</rt></ruby>です。よく<ruby>管理<rt>かんり</rt></ruby>できていますね。<br>*(Tháo là công đoạn tỉ lệ tai nạn cao. Quản lý tốt đấy.)* |
| Thức | <ruby>手順書<rt>てじゅんしょ</rt></ruby>どおり、<ruby>手渡<rt>てわた</rt></ruby>し<ruby>搬出<rt>はんしゅつ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>っています。<br>*(Theo đúng bản trình tự, giữ chuyền tay đưa ra ngoài.)* |
| Ishikawa | <ruby>明日<rt>あした</rt></ruby>には<ruby>完了<rt>かんりょう</rt></ruby>の<ruby>見込<rt>みこ</rt></ruby>みですか?<br>*(Mai có khả năng hoàn thành không?)* |
| Thức | はい、<ruby>天候<rt>てんこう</rt></ruby>が<ruby>崩<rt>くず</rt></ruby>れなければ<ruby>明日<rt>あした</rt></ruby><ruby>午後<rt>ごご</rt></ruby>に<ruby>完了<rt>かんりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, nếu thời tiết không xấu thì dự kiến hoàn thành chiều mai.)* |
| Ishikawa | <ruby>無事<rt>ぶじ</rt></ruby>に<ruby>終<rt>お</rt></ruby>えましょう。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cùng kết thúc an toàn nhé. Nhờ anh.)* |

---

## Tình huống 19 — Phòng nghỉ Linh gọi điện · 21:00, bàn hướng đi tương lai (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, nghe nói anh Long sắp ra làm riêng hả? Anh có tính theo không? |
| Thức | Anh tìm hiểu cho biết thôi. Visa của anh giờ là làm thuê, tự nhận khoán riêng là vi phạm, mất visa luôn. Anh không làm. |
| Linh | Ừ, vậy là đúng rồi. Em cũng lo anh nghe người ta rủ rồi liều. |
| Thức | Không đâu. Anh đi đường chính: rèn nghề trong công ty, lên đốc công, rồi thi 特定技能 số 2. Chậm mà chắc. |
| Linh | Em yên tâm khi nghe anh nói vậy. Anh tỉnh táo là em mừng nhất. |
| Thức | Ừ. Biết chế độ để giữ mình, chứ không phải để lách. Thôi mai dậy sớm, anh nghỉ nhé. |

---

## Tình huống 20 — Sân công trường · 8:00, 朝礼 ngày hoàn tất tháo, Thức nói về con đường đúng

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>で<ruby>五<rt>ご</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>足場<rt>あしば</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>します。<br>*(Chào buổi sáng. Hôm nay hoàn thành tháo giàn giáo tầng năm.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>最後<rt>さいご</rt></ruby>の<ruby>一本<rt>いっぽん</rt></ruby>まで<ruby>手順書<rt>てじゅんしょ</rt></ruby>どおり。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Đến thanh cuối cùng vẫn theo bản trình tự. Không vội, chắc chắn.)* |
| Hùng | トゥックさん、<ruby>無事<rt>ぶじ</rt></ruby><ruby>終<rt>お</rt></ruby>わったら<ruby>嬉<rt>うれ</rt></ruby>しいですね。<br>*(Anh Thức, xong suôn sẻ thì vui nhỉ.)* |
| Thức | <ruby>早道<rt>はやみち</rt></ruby>より<ruby>確<rt>たし</rt></ruby>かな<ruby>道<rt>みち</rt></ruby>。<ruby>仕事<rt>しごと</rt></ruby>も<ruby>人生<rt>じんせい</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じだ。では、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で。<br>*(Đường chắc hơn đường tắt. Việc cũng như đời. Vậy, an toàn là trên hết.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Đọng lại

Anh Long mở ra góc nhìn về 一人親方 — con đường tự do nhưng đầy rủi ro (thu nhập bấp bênh, tự lo 労災特別加入, tự quản sổ sách thuế). Thức tìm hiểu kỹ để học thuật ngữ và hiểu cơ chế lao động xây dựng, nhưng xác định ranh giới rất rõ: visa 特定技能 là tư cách lao động làm thuê, tự nhận khoán cá nhân là vi phạm, có thể mất visa. Bài học cốt lõi từ Saito: biết chế độ và phá chế độ là hai chuyện khác nhau — người phân biệt được mới được tin cậy. Thức chọn con đường chính: rèn nghề trong công ty, lên đốc công, hướng tới 特定技能2号. Thức còn dạy lại đàn em phân biệt chế độ để tự bảo vệ.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 一人親方 | ひとりおやかた | thợ tự doanh độc lập (không thuộc công ty) |
> | 請負 | うけおい | nhận khoán công trình |
> | 常用 | じょうよう | làm công nhật (theo ngày) |
> | 単価 | たんか | đơn giá |
> | 労災特別加入 | ろうさいとくべつかにゅう | tham gia đặc biệt bảo hiểm tai nạn (cho thợ tự doanh) |
> | 雇用契約 | こようけいやく | hợp đồng lao động làm thuê |
> | 確定申告 | かくていしんこく | khai quyết toán thuế |
> | 帳簿 | ちょうぼ | sổ sách kế toán |
> | 資格外就労 | しかくがいしゅうろう | làm việc ngoài tư cách lưu trú (vi phạm) |
> | 在留資格 | ざいりゅうしかく | tư cách lưu trú |
> | 特定技能二号 | とくていぎのうにごう | 特定技能 số 2 (làm lâu dài, đón gia đình) |
> | 解体 | かいたい | tháo dỡ (giàn giáo) |
> | 手渡し搬出 | てわたしはんしゅつ | đưa vật liệu ra bằng cách chuyền tay |
> | 線引き | せんびき | vạch ranh giới / phân định |
> | 近道 | ちかみち | đường tắt |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000010, 800000037, NULL, 'markdown_book', 'T10. Sự cố đa nghề — điều phối xung đột giữa các tổ (取り合い調整)', '# Sách kỹ năng đặc định xây dựng · T10. Sự cố đa nghề — điều phối xung đột giữa các tổ (取り合い調整)

> **Mục tiêu nhân vật:** Trên công trường nhiều nghề, xảy ra 取り合い (xung đột công việc/không gian giữa giàn giáo và tổ điện, tổ ống nước). Thức ở vai 職長 phải điều phối nhiều bên, giữ tiến độ và an toàn, không để xung đột thành cãi vã. Học mẫu câu tiếng Nhật khi hoà giải đa bên, đề xuất phương án trung dung, báo cáo 元請け, ghi biên bản thoả thuận.

---

## Bối cảnh

Tháng 11 năm 2030. Công trình vào giai đoạn hoàn thiện, giàn giáo, tổ điện (電気), tổ ống nước (設備) cùng làm trên không gian hẹp. Phát sinh 取り合い: tổ điện cần giàn giáo Thức chưa tháo, tổ ống cần khoảng trống Thức đang dùng. Căng thẳng dễ thành cãi vã. 斉藤職長 để Thức tự điều phối, có 石川さん hỗ trợ. Tiếng Nhật nghiệp vụ chương này là ngôn ngữ hoà giải, thương lượng đa bên, đề xuất trung dung.

---

## Tình huống 1 — Sân công trường · 8:00, 朝礼 phát hiện dấu hiệu 取り合い

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>四<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby><ruby>南面<rt>みなみめん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>解体<rt>かいたい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Hôm nay dự định tháo giàn giáo mặt nam tầng bốn.)* |
| Thợ điện | ちょっと<ruby>待<rt>ま</rt></ruby>って。そこ、<ruby>電気<rt>でんき</rt></ruby><ruby>配線<rt>はいせん</rt></ruby>がまだ<ruby>終<rt>お</rt></ruby>わってないんだ。<br>*(Khoan đã. Chỗ đó tổ điện chưa đi dây xong.)* |
| Thức | <ruby>配線<rt>はいせん</rt></ruby>に<ruby>足場<rt>あしば</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>、ということですね。<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Tức là đi dây cần giàn giáo phải không. Cho tôi xác nhận.)* |
| Thợ điện | あと<ruby>二日<rt>ふつか</rt></ruby>はかかる。<ruby>勝手<rt>かって</rt></ruby>に<ruby>外<rt>はず</rt></ruby>されたら<ruby>困<rt>こま</rt></ruby>る。<br>*(Còn mất hai ngày. Tự ý tháo thì phiền.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>朝礼<rt>ちょうれい</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>関係<rt>かんけい</rt></ruby><ruby>者<rt>しゃ</rt></ruby>で<ruby>打合<rt>うちあ</rt></ruby>せをしましょう。<br>*(Hiểu rồi. Sau họp sáng các bên liên quan họp nhé.)* |
| Thợ điện | <ruby>頼<rt>たの</rt></ruby>む。<ruby>急<rt>きゅう</rt></ruby>に<ruby>言<rt>い</rt></ruby>われると<ruby>段取<rt>だんど</rt></ruby>りが<ruby>狂<rt>くる</rt></ruby>う。<br>*(Nhờ đấy. Báo gấp thì dây chuyền của tôi loạn.)* |

---

## Tình huống 2 — Lán công trường · 8:30, hỏi Saito hướng xử lý

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>電気<rt>でんき</rt></ruby><ruby>屋<rt>や</rt></ruby>さんと<ruby>足場<rt>あしば</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いが<ruby>起<rt>お</rt></ruby>きました。<br>*(Anh Saito, phát sinh xung đột giữa tổ điện và giàn giáo.)* |
| Saito | よくあることだ。お<ruby>前<rt>まえ</rt></ruby>ならどうする?<br>*(Chuyện thường. Cậu thì xử lý sao?)* |
| Thức | まず<ruby>双方<rt>そうほう</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>き、<ruby>共通<rt>きょうつう</rt></ruby>の<ruby>落<rt>お</rt></ruby>とし<ruby>所<rt>どころ</rt></ruby>を<ruby>探<rt>さが</rt></ruby>します。<br>*(Trước nghe lý lẽ cả hai bên, tìm điểm dung hoà chung.)* |
| Saito | いい<ruby>考<rt>かんが</rt></ruby>えだ。<ruby>勝<rt>か</rt></ruby>ち<ruby>負<rt>ま</rt></ruby>けにするな。<ruby>工程<rt>こうてい</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えろ。<br>*(Suy nghĩ tốt. Đừng biến thành thắng thua. Nghĩ theo tiến độ toàn cục.)* |
| Thức | <ruby>元請<rt>もとうけ</rt></ruby>けの<ruby>石川<rt>いしかわ</rt></ruby>さんにも<ruby>入<rt>はい</rt></ruby>ってもらったほうがいいですか?<br>*(Có nên mời cả anh Ishikawa tổng thầu vào không ạ?)* |
| Saito | <ruby>調整<rt>ちょうせい</rt></ruby>がつかないときは<ruby>呼<rt>よ</rt></ruby>べ。だがまず<ruby>当事者<rt>とうじしゃ</rt></ruby><ruby>同士<rt>どうし</rt></ruby>でやってみろ。<br>*(Không thoả được thì gọi. Nhưng trước cứ để các bên trong cuộc thử.)* |

---

## Tình huống 3 — Hiện trường tầng 4 · 9:00, lắng nghe phía tổ điện

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>電気<rt>でんき</rt></ruby><ruby>屋<rt>や</rt></ruby>さん、<ruby>配線<rt>はいせん</rt></ruby>に<ruby>足場<rt>あしば</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なのはどの<ruby>範囲<rt>はんい</rt></ruby>ですか?<br>*(Anh tổ điện, đi dây cần giàn giáo ở phạm vi nào ạ?)* |
| Thợ điện | <ruby>南面<rt>みなみめん</rt></ruby>の<ruby>東寄<rt>ひがしよ</rt></ruby>り<ruby>半分<rt>はんぶん</rt></ruby>だ。<ruby>西側<rt>にしがわ</rt></ruby>はもう<ruby>使<rt>つか</rt></ruby>わない。<br>*(Nửa dạt đông mặt nam. Phía tây không dùng nữa.)* |
| Thức | では<ruby>西側<rt>にしがわ</rt></ruby>は<ruby>先<rt>さき</rt></ruby>に<ruby>解体<rt>かいたい</rt></ruby>しても<ruby>問題<rt>もんだい</rt></ruby>ないですか?<br>*(Vậy phía tây tháo trước có vấn đề gì không ạ?)* |
| Thợ điện | <ruby>西側<rt>にしがわ</rt></ruby>はかまわない。<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>をあと<ruby>二日<rt>ふつか</rt></ruby><ruby>残<rt>のこ</rt></ruby>してくれ。<br>*(Phía tây không sao. Để nửa đông thêm hai ngày.)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>します。<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>を<ruby>二日<rt>ふつか</rt></ruby>、<ruby>西側<rt>にしがわ</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby><ruby>解体<rt>かいたい</rt></ruby><ruby>可<rt>か</rt></ruby>、ですね。<br>*(Tôi xác nhận. Nửa đông hai ngày, phía tây hôm nay tháo được nhỉ.)* |
| Thợ điện | そうだ。それなら<ruby>助<rt>たす</rt></ruby>かる。<br>*(Đúng. Vậy thì may.)* |

---

## Tình huống 4 — Hiện trường tầng 4 · 9:20, lắng nghe phía tổ ống nước

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>設備<rt>せつび</rt></ruby><ruby>屋<rt>や</rt></ruby>さん、こちらの<ruby>作業<rt>さぎょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh tổ ống nước, cho tôi biết kế hoạch làm bên anh.)* |
| Thợ ống | <ruby>西側<rt>にしがわ</rt></ruby>の<ruby>床下<rt>ゆかした</rt></ruby><ruby>配管<rt>はいかん</rt></ruby>を<ruby>明日<rt>あした</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めたい。<ruby>足場<rt>あしば</rt></ruby>があると<ruby>邪魔<rt>じゃま</rt></ruby>なんだ。<br>*(Muốn bắt đầu lắp ống dưới sàn phía tây từ mai. Có giàn giáo thì vướng.)* |
| Thức | なるほど。<ruby>西側<rt>にしがわ</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>に<ruby>解体<rt>かいたい</rt></ruby>すれば<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いますか?<br>*(Ra vậy. Phía tây tháo xong trong hôm nay thì kịp không?)* |
| Thợ ống | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>なら<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>から<ruby>動<rt>うご</rt></ruby>ける。それで<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Trong hôm nay thì sáng mai làm được. Vậy là đủ.)* |
| Thức | では<ruby>西側<rt>にしがわ</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>を<ruby>最優先<rt>さいゆうせん</rt></ruby>にします。<br>*(Vậy tôi ưu tiên cao nhất tháo phía tây.)* |
| Thợ ống | <ruby>助<rt>たす</rt></ruby>かる。<ruby>調整<rt>ちょうせい</rt></ruby>ありがとう。<br>*(May quá. Cảm ơn anh đã điều chỉnh.)* |

---

## Tình huống 5 — Hiện trường tầng 4 · 9:40, ghép phương án trung dung

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>双方<rt>そうほう</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりました。<ruby>案<rt>あん</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Tôi đã hiểu lý lẽ cả hai. Xin đề xuất phương án.)* |
| Thợ điện | <ruby>聞<rt>き</rt></ruby>こう。<br>*(Nghe nào.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>西側<rt>にしがわ</rt></ruby>のみ<ruby>解体<rt>かいたい</rt></ruby>。<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>は<ruby>配線<rt>はいせん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>まで<ruby>残<rt>のこ</rt></ruby>します。<br>*(Hôm nay chỉ tháo phía tây. Nửa đông giữ đến khi đi dây xong.)* |
| Thợ ống | <ruby>設備<rt>せつび</rt></ruby><ruby>側<rt>がわ</rt></ruby>は<ruby>西側<rt>にしがわ</rt></ruby><ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>から<ruby>使<rt>つか</rt></ruby>えるんだな。<br>*(Bên ống thì phía tây sáng mai dùng được nhỉ.)* |
| Thức | はい。<ruby>電気<rt>でんき</rt></ruby><ruby>側<rt>がわ</rt></ruby>は<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>を<ruby>二日<rt>ふつか</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>。<ruby>三日目<rt>みっかめ</rt></ruby>に<ruby>東<rt>ひがし</rt></ruby>も<ruby>解体<rt>かいたい</rt></ruby>します。<br>*(Vâng. Bên điện giữ nửa đông hai ngày. Ngày thứ ba tháo cả phía đông.)* |
| Thợ điện | それなら<ruby>双方<rt>そうほう</rt></ruby><ruby>納得<rt>なっとく</rt></ruby>だ。<ruby>文句<rt>もんく</rt></ruby>ない。<br>*(Vậy thì cả hai chấp nhận. Không ý kiến gì.)* |

---

## Tình huống 6 — Hiện trường tầng 4 · 10:00, chốt và xác nhận với các bên

| Vai | Lời thoại |
|---|---|
| Thức | では<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>西側<rt>にしがわ</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>、<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>は<ruby>二日<rt>ふつか</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>解体<rt>かいたい</rt></ruby>。<ruby>異存<rt>いぞん</rt></ruby>ありませんか?<br>*(Vậy xác nhận. Hôm nay tháo phía tây, nửa đông tháo sau hai ngày. Có ai phản đối không?)* |
| Thợ điện | ない。<br>*(Không.)* |
| Thợ ống | こちらも<ruby>異存<rt>いぞん</rt></ruby>なし。<br>*(Bên tôi cũng không phản đối.)* |
| Thức | <ruby>口頭<rt>こうとう</rt></ruby>だけだと<ruby>後<rt>あと</rt></ruby>で<ruby>食<rt>く</rt></ruby>い<ruby>違<rt>ちが</rt></ruby>うので、<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ります。<br>*(Chỉ nói miệng thì sau lệch nhau, tôi làm bản xác nhận đơn giản.)* |
| Thợ điện | <ruby>慎重<rt>しんちょう</rt></ruby>だな。それがいい。<br>*(Cẩn thận đấy. Vậy tốt.)* |
| Thức | <ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>元請<rt>もとうけ</rt></ruby>けにも<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Nhờ các anh ký. Tôi chia sẻ cả tổng thầu.)* |

---

## Tình huống 7 — Bàn làm việc · 10:30, soạn 確認書 thoả thuận

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>い<ruby>調整<rt>ちょうせい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>、<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Kondo, bản xác nhận điều phối xung đột, anh xem cách viết giúp.)* |
| Kondo | <ruby>日付<rt>ひづけ</rt></ruby>、<ruby>範囲<rt>はんい</rt></ruby>、<ruby>担当<rt>たんとう</rt></ruby>、<ruby>合意<rt>ごうい</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>。これだけは<ruby>外<rt>はず</rt></ruby>すな。<br>*(Ngày, phạm vi, phụ trách, nội dung thống nhất. Bấy nhiêu đừng bỏ.)* |
| Thức | 「<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>」など<ruby>曖昧<rt>あいまい</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>は<ruby>図<rt>ず</rt></ruby>で<ruby>補<rt>おぎな</rt></ruby>います。<br>*(Từ mơ hồ như "nửa đông" tôi bổ sung bằng hình vẽ.)* |
| Kondo | それが<ruby>賢<rt>かしこ</rt></ruby>い。<ruby>言葉<rt>ことば</rt></ruby>だけだと<ruby>解釈<rt>かいしゃく</rt></ruby>が<ruby>割<rt>わ</rt></ruby>れる。<br>*(Khôn đấy. Chỉ lời thì cách hiểu chia rẽ.)* |
| Thức | <ruby>境界<rt>きょうかい</rt></ruby><ruby>線<rt>せん</rt></ruby>を<ruby>図面<rt>ずめん</rt></ruby>に<ruby>赤<rt>あか</rt></ruby>で<ruby>引<rt>ひ</rt></ruby>いて<ruby>添付<rt>てんぷ</rt></ruby>します。<br>*(Tôi kẻ ranh giới đỏ lên bản vẽ rồi đính kèm.)* |
| Kondo | <ruby>後<rt>あと</rt></ruby>で<ruby>揉<rt>も</rt></ruby>めない<ruby>書類<rt>しょるい</rt></ruby>になるな。<br>*(Thành giấy tờ không cãi nhau về sau đấy.)* |

---

## Tình huống 8 — Văn phòng công trường · 11:00, báo 石川さん kết quả điều phối

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>電気<rt>でんき</rt></ruby>と<ruby>設備<rt>せつび</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>い、<ruby>調整<rt>ちょうせい</rt></ruby>がつきました。<br>*(Anh Ishikawa, xung đột giữa điện và ống nước, đã điều phối xong.)* |
| Ishikawa | <ruby>早<rt>はや</rt></ruby>いですね。どう<ruby>収<rt>おさ</rt></ruby>めましたか?<br>*(Nhanh nhỉ. Xử lý gói lại sao?)* |
| Thức | <ruby>面<rt>めん</rt></ruby>を<ruby>東西<rt>とうざい</rt></ruby>に<ruby>分<rt>わ</rt></ruby>け、<ruby>西<rt>にし</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>、<ruby>東<rt>ひがし</rt></ruby>は<ruby>配線<rt>はいせん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>まで<ruby>残<rt>のこ</rt></ruby>します。<ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>も<ruby>取<rt>と</rt></ruby>りました。<br>*(Chia mặt thành đông tây, tây tháo hôm nay, đông giữ đến khi đi dây xong. Tôi đã lấy bản xác nhận.)* |
| Ishikawa | <ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>まで。<ruby>口約束<rt>くちやくそく</rt></ruby>にしなかったのが<ruby>立派<rt>りっぱ</rt></ruby>です。<br>*(Cả bản xác nhận. Không để hứa miệng là giỏi.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>に<ruby>境界<rt>きょうかい</rt></ruby><ruby>線<rt>せん</rt></ruby>も<ruby>引<rt>ひ</rt></ruby>きました。ご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Tôi kẻ cả ranh giới lên bản vẽ. Anh xác nhận giúp.)* |
| Ishikawa | <ruby>申<rt>もう</rt></ruby>し<ruby>分<rt>ぶん</rt></ruby>ないです。<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>い<ruby>調整<rt>ちょうせい</rt></ruby>の<ruby>見本<rt>みほん</rt></ruby>にします。<br>*(Không gì để chê. Sẽ lấy làm mẫu điều phối xung đột.)* |

---

## Tình huống 9 — Trên giàn giáo · 13:00, chỉ đạo tháo đúng ranh giới đã chốt

| Vai | Lời thoại |
|---|---|
| Thức | みんな、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>西側<rt>にしがわ</rt></ruby>のみ<ruby>解体<rt>かいたい</rt></ruby>。<ruby>赤<rt>あか</rt></ruby>い<ruby>境界<rt>きょうかい</rt></ruby><ruby>線<rt>せん</rt></ruby>を<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>越<rt>こ</rt></ruby>えるな。<br>*(Mọi người, hôm nay chỉ tháo phía tây. Tuyệt đối không vượt vạch đỏ ranh giới.)* |
| Kondo | <ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>はそのまま<ruby>残<rt>のこ</rt></ruby>すんだな。<br>*(Nửa đông giữ nguyên à.)* |
| Thức | はい。<ruby>電気<rt>でんき</rt></ruby><ruby>屋<rt>や</rt></ruby>さんがまだ<ruby>使<rt>つか</rt></ruby>います。<ruby>境界<rt>きょうかい</rt></ruby>に<ruby>目印<rt>めじるし</rt></ruby>テープを<ruby>貼<rt>は</rt></ruby>りました。<br>*(Vâng. Tổ điện còn dùng. Tôi dán băng đánh dấu ở ranh giới.)* |
| Nam | <ruby>間違<rt>まちが</rt></ruby>えて<ruby>東<rt>ひがし</rt></ruby>を<ruby>外<rt>はず</rt></ruby>したら<ruby>大変<rt>たいへん</rt></ruby>ですね。<br>*(Lỡ tháo nhầm phía đông thì gay nhỉ.)* |
| Thức | だから<ruby>目<rt>め</rt></ruby>で<ruby>見<rt>み</rt></ruby>えるようにした。<ruby>迷<rt>まよ</rt></ruby>ったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>俺<rt>おれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>け。<br>*(Nên anh làm cho nhìn thấy được. Phân vân thì nhất định hỏi anh.)* |
| Nam | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>慎重<rt>しんちょう</rt></ruby>にやります。<br>*(Rõ ạ. Em làm thận trọng.)* |

---

## Tình huống 10 — Hiện trường tầng 4 · 14:30, một mâu thuẫn mới phát sinh

| Vai | Lời thoại |
|---|---|
| Thợ ống | トゥックさん、<ruby>西側<rt>にしがわ</rt></ruby><ruby>解体<rt>かいたい</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>資材<rt>しざい</rt></ruby>、ここに<ruby>置<rt>お</rt></ruby>かれると<ruby>明日<rt>あした</rt></ruby><ruby>配管<rt>はいかん</rt></ruby>できない。<br>*(Anh Thức, vật liệu sau tháo phía tây để đây thì mai tôi không lắp ống được.)* |
| Thức | あっ、<ruby>置<rt>お</rt></ruby>き<ruby>場<rt>ば</rt></ruby>まで<ruby>考<rt>かんが</rt></ruby>えていませんでした。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(A, tôi chưa tính đến chỗ để. Xin lỗi.)* |
| Thợ ống | <ruby>解体<rt>かいたい</rt></ruby>はいいんだ。<ruby>置<rt>お</rt></ruby>き<ruby>場<rt>ば</rt></ruby>を<ruby>変<rt>か</rt></ruby>えてくれれば。<br>*(Tháo thì được. Đổi chỗ để là được.)* |
| Thức | <ruby>北側<rt>きたがわ</rt></ruby>の<ruby>空<rt>あ</rt></ruby>きスペースに<ruby>移<rt>うつ</rt></ruby>します。<ruby>当日<rt>とうじつ</rt></ruby>すぐ<ruby>運<rt>はこ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>します。<br>*(Tôi chuyển ra khoảng trống phía bắc. Hôm đó đưa ra ngay.)* |
| Thợ ống | それなら<ruby>問題<rt>もんだい</rt></ruby>ない。<ruby>気<rt>き</rt></ruby>づいてくれて<ruby>助<rt>たす</rt></ruby>かる。<br>*(Vậy không vấn đề. Anh để ý giúp may quá.)* |
| Thức | <ruby>調整<rt>ちょうせい</rt></ruby>は<ruby>一度<rt>いちど</rt></ruby>で<ruby>終<rt>お</rt></ruby>わらないと<ruby>学<rt>まな</rt></ruby>びました。<br>*(Tôi học được điều phối không kết thúc một lần.)* |

---

## Tình huống 11 — Bàn làm việc · 15:00, cập nhật 確認書 thêm mục chỗ để

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>に「<ruby>資材<rt>しざい</rt></ruby><ruby>仮置<rt>かりお</rt></ruby>き<ruby>場<rt>ば</rt></ruby>」の<ruby>項目<rt>こうもく</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>しました。<br>*(Anh Kondo, tôi thêm mục "chỗ để tạm vật liệu" vào bản xác nhận.)* |
| Kondo | <ruby>抜<rt>ぬ</rt></ruby>けに<ruby>気<rt>き</rt></ruby>づいたらすぐ<ruby>直<rt>なお</rt></ruby>す。それでいい。<br>*(Phát hiện sót thì sửa ngay. Vậy tốt.)* |
| Thức | <ruby>解体<rt>かいたい</rt></ruby>だけ<ruby>考<rt>かんが</rt></ruby>えて、その<ruby>後<rt>あと</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れていました。<br>*(Tôi chỉ nghĩ chuyện tháo, mà quên cái sau đó.)* |
| Kondo | <ruby>調整<rt>ちょうせい</rt></ruby>は「その<ruby>先<rt>さき</rt></ruby>」まで<ruby>読<rt>よ</rt></ruby>むのがコツだ。<ruby>経験<rt>けいけん</rt></ruby>で<ruby>身<rt>み</rt></ruby>につく。<br>*(Điều phối là đọc đến "cái phía sau" đó mới khéo. Kinh nghiệm thì sẽ ngấm.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>からは<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>前後<rt>ぜんご</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Từ sau tôi nhất định kiểm cả trước và sau công việc.)* |
| Kondo | それが<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りだ。<br>*(Đó mới là sắp xếp thực thụ.)* |

---

## Tình huống 12 — Sân công trường · 15:30, 終礼 báo kết quả điều phối

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>終礼<rt>しゅうれい</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>西側<rt>にしがわ</rt></ruby><ruby>解体<rt>かいたい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>境界<rt>きょうかい</rt></ruby><ruby>線<rt>せん</rt></ruby><ruby>厳守<rt>げんしゅ</rt></ruby>できました。<br>*(Họp tổng kết. Hôm nay tháo phía tây xong, giữ nghiêm vạch ranh giới.)* |
| Kondo | <ruby>越境<rt>えっきょう</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>ゼロだったな。<br>*(Không tháo vượt ranh giới nào nhỉ.)* |
| Thức | はい。<ruby>明日<rt>あした</rt></ruby>は<ruby>設備<rt>せつび</rt></ruby><ruby>屋<rt>や</rt></ruby>さんが<ruby>西側<rt>にしがわ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>資材<rt>しざい</rt></ruby>は<ruby>北側<rt>きたがわ</rt></ruby>に<ruby>移動<rt>いどう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng. Mai tổ ống vào phía tây. Vật liệu đã chuyển sang phía bắc.)* |
| Nam | <ruby>他<rt>た</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>と<ruby>揉<rt>も</rt></ruby>めずに<ruby>進<rt>すす</rt></ruby>んでよかったです。<br>*(May là tiến hành không cãi nhau với nhà thầu khác.)* |
| Thức | <ruby>揉<rt>も</rt></ruby>めるのは<ruby>誰<rt>だれ</rt></ruby>の<ruby>得<rt>とく</rt></ruby>にもならない。<ruby>明日<rt>あした</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>姿勢<rt>しせい</rt></ruby>で。<br>*(Cãi nhau thì chả ai lợi. Mai cũng giữ tinh thần đó.)* |
| Cả đội | お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Vất vả rồi!)* |

---

## Tình huống 13 — Hiện trường tầng 4 · 9:00 hôm sau, tổ khác lấn nhẹ ranh giới

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>設備<rt>せつび</rt></ruby><ruby>屋<rt>や</rt></ruby>さんの<ruby>道具<rt>どうぐ</rt></ruby>が<ruby>東<rt>ひがし</rt></ruby><ruby>側<rt>がわ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>入<rt>はい</rt></ruby>っています。<br>*(Anh Thức, dụng cụ tổ ống lấn sang phía đông một chút.)* |
| Thức | <ruby>知<rt>し</rt></ruby>らせてくれてありがとう。<ruby>角<rt>かど</rt></ruby>を<ruby>立<rt>た</rt></ruby>てずに<ruby>声<rt>こえ</rt></ruby>をかけよう。<br>*(Cảm ơn em báo. Mình nói khéo không gây gắt.)* |
| Thức | <ruby>設備<rt>せつび</rt></ruby><ruby>屋<rt>や</rt></ruby>さん、すみません。<ruby>東<rt>ひがし</rt></ruby><ruby>側<rt>がわ</rt></ruby>は<ruby>電気<rt>でんき</rt></ruby><ruby>屋<rt>や</rt></ruby>さんの<ruby>作業<rt>さぎょう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>なので、<ruby>道具<rt>どうぐ</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>戻<rt>もど</rt></ruby>していただけますか。<br>*(Anh tổ ống, xin lỗi. Phía đông là phạm vi tổ điện, anh lùi dụng cụ lại chút được không.)* |
| Thợ ống | あ、<ruby>境界<rt>きょうかい</rt></ruby>を<ruby>越<rt>こ</rt></ruby>えてたか。すぐ<ruby>直<rt>なお</rt></ruby>す。<br>*(À, vượt ranh giới à. Tôi chỉnh ngay.)* |
| Thức | ありがとうございます。<ruby>狭<rt>せま</rt></ruby>いので<ruby>難<rt>むずか</rt></ruby>しいですよね。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn anh. Chật nên khó nhỉ. May quá.)* |
| Thợ ống | こちらこそ、<ruby>確認<rt>かくにん</rt></ruby>してくれて<ruby>助<rt>たす</rt></ruby>かる。<br>*(Tôi mới phải cảm ơn anh đã để ý.)* |

---

## Tình huống 14 — Lán công trường · 13:00, Saito phân tích cách điều phối

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いをうまく<ruby>収<rt>おさ</rt></ruby>めたな。コツは<ruby>何<rt>なん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う?<br>*(Thức, gói xung đột khéo đấy. Cậu nghĩ bí quyết là gì?)* |
| Thức | <ruby>先<rt>さき</rt></ruby>に<ruby>双方<rt>そうほう</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>くこと、だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ là nghe lý lẽ cả hai bên trước.)* |
| Saito | そうだ。<ruby>結論<rt>けつろん</rt></ruby>を<ruby>急<rt>いそ</rt></ruby>ぐと<ruby>片方<rt>かたほう</rt></ruby>が<ruby>不満<rt>ふまん</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>す。<ruby>不満<rt>ふまん</rt></ruby>は<ruby>次<rt>つぎ</rt></ruby>の<ruby>火種<rt>ひだね</rt></ruby>だ。<br>*(Đúng. Vội kết luận thì một bên ấm ức. Ấm ức là mồi lửa lần sau.)* |
| Thức | <ruby>納得<rt>なっとく</rt></ruby>してもらうには<ruby>時間<rt>じかん</rt></ruby>がかかりますね。<br>*(Để người ta tâm phục thì mất thời gian nhỉ.)* |
| Saito | だが<ruby>急<rt>いそ</rt></ruby>がば<ruby>回<rt>まわ</rt></ruby>れだ。<ruby>禍根<rt>かこん</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>すより<ruby>百倍<rt>ひゃくばい</rt></ruby>いい。<br>*(Nhưng dục tốc bất đạt. Tốt gấp trăm lần để lại hậu họa.)* |
| Thức | はい、<ruby>急<rt>いそ</rt></ruby>がず、しかし<ruby>遅<rt>おく</rt></ruby>らせず、を<ruby>心<rt>こころ</rt></ruby>がけます。<br>*(Vâng, em chú tâm không vội nhưng cũng không để chậm.)* |

---

## Tình huống 15 — Hiện trường tầng 4 · 14:00, một tổ thứ ba xen vào

| Vai | Lời thoại |
|---|---|
| Thợ sơn | トゥックさん、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>塗装<rt>とそう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りたい。<ruby>足場<rt>あしば</rt></ruby>はいつ<ruby>全<rt>ぜん</rt></ruby><ruby>撤去<rt>てっきょ</rt></ruby>?<br>*(Anh Thức, tuần sau tôi muốn vào sơn. Giàn giáo bao giờ tháo hết?)* |
| Thức | <ruby>塗装<rt>とそう</rt></ruby><ruby>側<rt>がわ</rt></ruby>もありましたね。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>させてください。<br>*(Còn cả tổ sơn nữa nhỉ. Cho tôi sắp xếp lại thứ tự.)* |
| Thợ sơn | <ruby>足場<rt>あしば</rt></ruby>がないと<ruby>高所<rt>こうしょ</rt></ruby><ruby>塗装<rt>とそう</rt></ruby>ができないんだ。<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>してほしい。<br>*(Không giàn giáo thì không sơn trên cao. Ngược lại tôi muốn để lại.)* |
| Thức | <ruby>電気<rt>でんき</rt></ruby>・<ruby>設備<rt>せつび</rt></ruby>は<ruby>解体<rt>かいたい</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>、<ruby>塗装<rt>とそう</rt></ruby>は<ruby>存置<rt>そんち</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>。<ruby>三<rt>さん</rt></ruby><ruby>者<rt>しゃ</rt></ruby>で<ruby>打合<rt>うちあ</rt></ruby>せが<ruby>必要<rt>ひつよう</rt></ruby>ですね。<br>*(Điện-ống muốn tháo, sơn muốn giữ. Cần họp ba bên nhỉ.)* |
| Thợ sơn | <ruby>調整<rt>ちょうせい</rt></ruby><ruby>頼<rt>たの</rt></ruby>む。<ruby>勝手<rt>かって</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めると<ruby>揉<rt>も</rt></ruby>める。<br>*(Nhờ điều phối. Tự tiến hành là cãi nhau.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>、<ruby>三<rt>さん</rt></ruby><ruby>者<rt>しゃ</rt></ruby>と<ruby>元請<rt>もとうけ</rt></ruby>けで<ruby>場<rt>ば</rt></ruby>を<ruby>設<rt>もう</rt></ruby>けます。<br>*(Chiều nay tôi lập cuộc họp ba bên với tổng thầu.)* |

---

## Tình huống 16 — Phòng họp · 16:30, chủ trì họp ba bên có 元請け

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>集<rt>あつ</rt></ruby>まりありがとうございます。<ruby>足場<rt>あしば</rt></ruby><ruby>撤去<rt>てっきょ</rt></ruby><ruby>時期<rt>じき</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Cảm ơn mọi người đã tới. Ta điều chỉnh thời điểm tháo giàn giáo.)* |
| Ishikawa | <ruby>各<rt>かく</rt></ruby><ruby>社<rt>しゃ</rt></ruby>の<ruby>希望<rt>きぼう</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>してください、トゥックさん。<br>*(Sắp xếp nguyện vọng từng bên đi, anh Thức.)* |
| Thức | <ruby>電気<rt>でんき</rt></ruby>・<ruby>設備<rt>せつび</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby><ruby>前半<rt>ぜんはん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<ruby>塗装<rt>とそう</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby><ruby>存置<rt>そんち</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>。<br>*(Điện-ống dự kiến xong nửa đầu tuần sau. Sơn muốn giữ giàn giáo.)* |
| Thức | <ruby>提案<rt>ていあん</rt></ruby>です。<ruby>電気<rt>でんき</rt></ruby>・<ruby>設備<rt>せつび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>塗装<rt>とそう</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う<ruby>面<rt>めん</rt></ruby>だけ<ruby>足場<rt>あしば</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>します。<br>*(Đề xuất. Sau khi điện-ống xong, chỉ giữ giàn giáo mặt mà sơn dùng.)* |
| Thợ sơn | それなら<ruby>塗装<rt>とそう</rt></ruby>もできる。<ruby>異存<rt>いぞん</rt></ruby>ない。<br>*(Vậy thì sơn được. Không phản đối.)* |
| Ishikawa | <ruby>全員<rt>ぜんいん</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>ですね。<ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>にまとめてください。<br>*(Cả ba đồng ý nhỉ. Tổng hợp vào bản xác nhận đi.)* |

---

## Tình huống 17 — Bàn làm việc · 17:30, hoàn tất 確認書 ba bên

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>三<rt>さん</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>です。<ruby>段階<rt>だんかい</rt></ruby><ruby>撤去<rt>てっきょ</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>を<ruby>図<rt>ず</rt></ruby>で<ruby>示<rt>しめ</rt></ruby>しました。<br>*(Bản xác nhận ba bên đồng ý. Tôi thể hiện thứ tự tháo theo giai đoạn bằng hình.)* |
| Ishikawa | <ruby>段階<rt>だんかい</rt></ruby>ごとに<ruby>面<rt>めん</rt></ruby>が<ruby>色分<rt>いろわ</rt></ruby>けされていて<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Mỗi giai đoạn các mặt tô màu khác nhau, dễ hiểu.)* |
| Thức | <ruby>各<rt>かく</rt></ruby><ruby>社<rt>しゃ</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>署名<rt>しょめい</rt></ruby><ruby>欄<rt>らん</rt></ruby>も<ruby>設<rt>もう</rt></ruby>けました。<br>*(Tôi cũng lập ô ký của người phụ trách từng bên.)* |
| Ishikawa | <ruby>口約束<rt>くちやくそく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>さない。<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>い<ruby>調整<rt>ちょうせい</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Không để hứa miệng. Là cơ bản của điều phối xung đột.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>びました。<ruby>仮置<rt>かりお</rt></ruby>き<ruby>場<rt>ば</rt></ruby>の<ruby>抜<rt>ぬ</rt></ruby>けが<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Em học từ thất bại. Lần sót chỗ để tạm đã dạy em.)* |
| Ishikawa | <ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>仕組<rt>しく</rt></ruby>みに<ruby>変<rt>か</rt></ruby>える。それが<ruby>成長<rt>せいちょう</rt></ruby>です。<br>*(Biến thất bại thành cơ chế. Đó là trưởng thành.)* |

---

## Tình huống 18 — Lán công trường · 18:00, Saito đánh giá khả năng điều phối

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>三<rt>さん</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>まで<ruby>仕切<rt>しき</rt></ruby>れるとはな。<br>*(Thức, điều phối được cả ba bên cơ đấy.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かったですが、<ruby>事情<rt>じじょう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>けば<ruby>道<rt>みち</rt></ruby>は<ruby>見<rt>み</rt></ruby>えると<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Đầu em sợ, nhưng hiểu là nghe lý lẽ thì thấy được đường.)* |
| Saito | <ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>半分<rt>はんぶん</rt></ruby>は<ruby>人<rt>ひと</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>することだ。<br>*(Nửa công việc đốc công là điều phối giữa con người.)* |
| Thức | <ruby>技術<rt>ぎじゅつ</rt></ruby>より<ruby>難<rt>むずか</rt></ruby>しいです。でもやりがいがあります。<br>*(Khó hơn kỹ thuật. Nhưng có ý nghĩa.)* |
| Saito | お<ruby>前<rt>まえ</rt></ruby>は<ruby>言葉<rt>ことば</rt></ruby>が<ruby>外国人<rt>がいこくじん</rt></ruby>でも、<ruby>誠実<rt>せいじつ</rt></ruby>さで<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>得<rt>え</rt></ruby>ている。<br>*(Cậu là người nước ngoài về tiếng, nhưng được tin cậy nhờ sự chân thành.)* |
| Thức | その<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>裏切<rt>うらぎ</rt></ruby>らないようにします。<br>*(Em sẽ không phụ niềm tin đó.)* |

---

## Tình huống 19 — Phòng nghỉ Linh gọi điện · 21:00, kể chuyện điều phối (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, nghe giọng hôm nay mệt mà có vẻ tự hào. Có chuyện gì? |
| Thức | Ừ, hôm nay anh đứng ra hoà giải giữa ba tổ thợ điện, ống nước, sơn — họ tranh nhau cái giàn giáo. Anh điều phối êm, ai cũng chịu. |
| Linh | Trời, tiếng Nhật chưa phải mẹ đẻ mà anh làm trọng tài ba bên luôn hả? |
| Thức | Quan trọng không phải nói hay, mà chịu nghe lý lẽ từng bên rồi tìm chỗ ai cũng chấp nhận. Sếp bảo anh được tin nhờ chân thành. |
| Linh | Em phục anh thật. Anh tiến bộ nhiều quá. |
| Thức | Cảm ơn em. Cố thêm chút nữa thôi là đủ điều kiện thi 特定技能 số 2 rồi. Mai dậy sớm, anh nghỉ nhé. |

---

## Tình huống 20 — Sân công trường · 8:00, 朝礼 nói về tinh thần phối hợp đa nghề

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>段階<rt>だんかい</rt></ruby><ruby>撤去<rt>てっきょ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>確認<rt>かくにん</rt></ruby><ruby>書<rt>しょ</rt></ruby>どおりに<ruby>進<rt>すす</rt></ruby>めます。<br>*(Chào buổi sáng. Hôm nay vào tháo theo giai đoạn. Tiến hành đúng bản xác nhận.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>他<rt>た</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>さんの<ruby>範囲<rt>はんい</rt></ruby>には<ruby>絶対<rt>ぜったい</rt></ruby><ruby>入<rt>はい</rt></ruby>らない。<ruby>迷<rt>まよ</rt></ruby>ったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Tuyệt đối không vào phạm vi nhà thầu khác. Phân vân thì nhất định kiểm.)* |
| Kondo | <ruby>現場<rt>げんば</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つのチームだからな。<br>*(Vì công trường là một đội mà.)* |
| Thức | そうです。<ruby>足場<rt>あしば</rt></ruby>は<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えています。<ruby>誇<rt>ほこ</rt></ruby>りを<ruby>持<rt>も</rt></ruby>って<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Đúng. Giàn giáo đỡ công việc của tất cả. Tự hào mà làm an toàn.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Đọng lại

Trên công trường hoàn thiện đa nghề trong không gian hẹp, 取り合い (xung đột công việc/không gian) bùng phát giữa giàn giáo, tổ điện, tổ ống nước rồi cả tổ sơn. Thức ở vai 職長 học cách điều phối: lắng nghe lý lẽ từng bên trước, không biến thành thắng-thua, đề xuất phương án trung dung (chia mặt đông-tây, tháo theo giai đoạn), và đặc biệt là lập 確認書 có hình vẽ ranh giới + chữ ký thay vì hứa miệng. Bài học từ thất bại (quên chỗ để tạm vật liệu) được biến thành cơ chế. Saito đúc kết: nửa công việc đốc công là điều phối giữa con người — và Thức được tin cậy nhờ sự chân thành dù tiếng Nhật không phải tiếng mẹ đẻ.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 取り合い | とりあい | xung đột công việc/không gian giữa các nghề |
> | 調整 | ちょうせい | điều phối / điều chỉnh |
> | 落とし所 | おとしどころ | điểm dung hoà |
> | 確認書 | かくにんしょ | bản xác nhận thoả thuận |
> | 境界線 | きょうかいせん | đường ranh giới |
> | 仮置き場 | かりおきば | chỗ để tạm vật liệu |
> | 存置 | そんち | giữ lại (không tháo) |
> | 段階撤去 | だんかいてっきょ | tháo dỡ theo giai đoạn |
> | 設備屋 | せつびや | tổ thi công thiết bị/ống nước |
> | 配管 | はいかん | lắp đặt đường ống |
> | 配線 | はいせん | đi dây điện |
> | 異存 | いぞん | ý kiến phản đối |
> | 火種 | ひだね | mồi lửa / mầm mâu thuẫn |
> | 禍根 | かこん | hậu họa / mầm tai vạ |
> | 急がば回れ | いそがばまわれ | dục tốc bất đạt (đi vòng cho chắc) |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000011, 800000037, NULL, 'markdown_book', 'T11. Bạn gái Linh — bàn chuyện tương lai xa (リンさんと将来)', '# Sách kỹ năng đặc định xây dựng · T11. Bạn gái Linh — bàn chuyện tương lai xa (リンさんと将来)

> **Mục tiêu nhân vật:** Linh (リンさん, bạn gái đồng hương, CHƯA CƯỚI, không con) qua chơi vùng Thức làm. Hai người bàn tương lai xa — Thức biết chỉ khi đạt 特定技能2号 mới được bảo lãnh gia đình, nên 2号 thành động lực. Đây CHỈ là động lực, KHÔNG cưới, KHÔNG về VN xin phép/đón sang. Chương vẫn giữ ≥18 tình huống hội thoại tiếng Nhật nghiệp vụ; chỉ tối đa 1 cảnh tiếng Việt ngắn.

---

## Bối cảnh

Tháng 12 năm 2030. Cuối năm, Linh từ vùng cô làm sang chơi chỗ Thức vài ngày. Hai người vẫn chưa cưới, vẫn là động lực của nhau. Thức tìm hiểu và biết: chỉ khi lên 特定技能2号 mới đủ điều kiện bảo lãnh gia đình — điều này thành mục tiêu dài hạn, chứ chưa làm gì. Phần lớn chương vẫn là công việc 職長 cuối năm (chuẩn bị nghỉ Tết dương, tổng kết an toàn năm, dặn dò đàn em). Tiếng Nhật nghiệp vụ vẫn là trục chính.

---

## Tình huống 1 — Sân công trường · 8:00, 朝礼 cuối tuần trước kỳ nghỉ năm mới

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>年内<rt>ねんない</rt></ruby><ruby>最後<rt>さいご</rt></ruby>の<ruby>週<rt>しゅう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りました。<br>*(Chào buổi sáng. Đã vào tuần cuối cùng trong năm.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>年末<rt>ねんまつ</rt></ruby>は<ruby>気<rt>き</rt></ruby>が<ruby>緩<rt>ゆる</rt></ruby>みがちです。<ruby>事故<rt>じこ</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>える<ruby>時期<rt>じき</rt></ruby>です。<br>*(Cuối năm hay lơi lỏng. Là thời kỳ tai nạn tăng.)* |
| Kondo | <ruby>毎年<rt>まいとし</rt></ruby><ruby>年末<rt>ねんまつ</rt></ruby>に<ruby>怪我<rt>けが</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いからな。<br>*(Năm nào cuối năm cũng nhiều chấn thương mà.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>重点<rt>じゅうてん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>慣<rt>な</rt></ruby>れによる<ruby>油断<rt>ゆだん</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>」。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>基本<rt>きほん</rt></ruby><ruby>動作<rt>どうさ</rt></ruby>を。<br>*(Mục tiêu trọng điểm hôm nay là "ngừa chủ quan do quen tay". Đến cuối vẫn động tác cơ bản.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Tình huống 2 — Văn phòng công trường · 9:00, Saito giao tổng kết an toàn năm

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今年<rt>ことし</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>実績<rt>じっせき</rt></ruby>を<ruby>年度<rt>ねんど</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>にまとめてくれ。<br>*(Thức, tổng hợp thành tích an toàn năm nay vào báo cáo niên độ.)* |
| Thức | はい。<ruby>無事故<rt>むじこ</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>、ヒヤリハット<ruby>件数<rt>けんすう</rt></ruby>、<ruby>是正<rt>ぜせい</rt></ruby><ruby>件数<rt>けんすう</rt></ruby>でよろしいですか?<br>*(Vâng. Số ngày không tai nạn, số báo cáo suýt tai nạn, số chấn chỉnh được không ạ?)* |
| Saito | それと<ruby>傾向<rt>けいこう</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>も<ruby>付<rt>つ</rt></ruby>けろ。<ruby>数字<rt>すうじ</rt></ruby>だけだと<ruby>意味<rt>いみ</rt></ruby>がない。<br>*(Với cả phân tích xu hướng. Chỉ con số thì vô nghĩa.)* |
| Thức | <ruby>月別<rt>つきべつ</rt></ruby>の<ruby>増減<rt>ぞうげん</rt></ruby>と<ruby>原因<rt>げんいん</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせて<ruby>書<rt>か</rt></ruby>きます。<br>*(Em viết tăng giảm theo tháng kèm nguyên nhân.)* |
| Saito | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>改善<rt>かいぜん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>まで<ruby>提案<rt>ていあん</rt></ruby>できれば<ruby>一人前<rt>いちにんまえ</rt></ruby>だ。<br>*(Đề xuất được cả mục tiêu cải tiến năm sau là lành nghề.)* |
| Thức | <ruby>挑戦<rt>ちょうせん</rt></ruby>します。<ruby>来年<rt>らいねん</rt></ruby>に<ruby>繋<rt>つな</rt></ruby>がる<ruby>報告<rt>ほうこく</rt></ruby>にします。<br>*(Em sẽ thử. Làm báo cáo nối được sang năm sau.)* |

---

## Tình huống 3 — Bàn làm việc · 10:00, hỏi Kondo về số liệu năm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>今年<rt>ことし</rt></ruby>の<ruby>無事故<rt>むじこ</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>は<ruby>何日<rt>なんにち</rt></ruby>ですか?<br>*(Anh Kondo, số ngày liên tục không tai nạn năm nay là bao nhiêu?)* |
| Kondo | <ruby>二百<rt>にひゃく</rt></ruby><ruby>八十<rt>はちじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えた。<ruby>過去<rt>かこ</rt></ruby><ruby>最長<rt>さいちょう</rt></ruby>だ。<br>*(Vượt 280 ngày. Dài nhất từ trước tới nay.)* |
| Thức | すごいですね。<ruby>要因<rt>よういん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Cừ thật. Anh nghĩ yếu tố là gì?)* |
| Kondo | <ruby>二丁掛<rt>にちょうが</rt></ruby>けの<ruby>徹底<rt>てってい</rt></ruby>と、<ruby>自主<rt>じしゅ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えたことだな。<br>*(Quán triệt móc hai móc, và tự kiểm tăng lên.)* |
| Thức | パトロールの<ruby>後<rt>あと</rt></ruby>から<ruby>意識<rt>いしき</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりましたね。<br>*(Từ sau tuần tra ý thức thay đổi nhỉ.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>の<ruby>地道<rt>じみち</rt></ruby>な<ruby>声<rt>こえ</rt></ruby><ruby>掛<rt>か</rt></ruby>けが<ruby>効<rt>き</rt></ruby>いてる。<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>書<rt>か</rt></ruby>いていいぞ。<br>*(Việc cậu nhắc nhở bền bỉ có tác dụng. Ghi vào báo cáo được.)* |

---

## Tình huống 4 — Bàn làm việc · 11:00, trình 年度報告 cho Saito

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>年度<rt>ねんど</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>の<ruby>案<rt>あん</rt></ruby>です。<br>*(Anh Saito, bản nháp báo cáo niên độ.)* |
| Saito | …<ruby>無事故<rt>むじこ</rt></ruby><ruby>記録<rt>きろく</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>、<ruby>要因<rt>よういん</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>もある。<ruby>来年<rt>らいねん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は?<br>*(…Lập kỷ lục không tai nạn, có cả phân tích yếu tố. Mục tiêu năm sau?)* |
| Thức | 「<ruby>新人<rt>しんじん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>の<ruby>強化<rt>きょうか</rt></ruby>」を<ruby>第一<rt>だいいち</rt></ruby>に<ruby>挙<rt>あ</rt></ruby>げました。<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えるからです。<br>*(Em đặt "tăng cường đào tạo người mới" lên đầu. Vì người mới theo 育成就労 sẽ tăng.)* |
| Saito | <ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでいるな。<ruby>制度<rt>せいど</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>を<ruby>見据<rt>みす</rt></ruby>えた<ruby>目標<rt>もくひょう</rt></ruby>だ。<br>*(Đọc trước được nhỉ. Mục tiêu nhìn trước được thay đổi chế độ.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>の<ruby>最新<rt>さいしん</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しながら<ruby>進<rt>すす</rt></ruby>めます。<br>*(Thông tin mới nhất về chế độ em vừa kiểm với công ty vừa tiến hành.)* |
| Saito | それでいい。<ruby>正式<rt>せいしき</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>してくれ。<br>*(Vậy được. Nộp chính thức đi.)* |

---

## Tình huống 5 — Văn phòng công trường · 13:00, nộp 年度報告 cho 石川さん

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>谷川組<rt>たにがわぐみ</rt></ruby>の<ruby>年度<rt>ねんど</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Anh Ishikawa, em nộp báo cáo an toàn niên độ của Tanigawa-gumi.)* |
| Ishikawa | ありがとうございます。…<ruby>分析<rt>ぶんせき</rt></ruby>が<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>ですね。<ruby>数字<rt>すうじ</rt></ruby>に<ruby>物語<rt>ものがたり</rt></ruby>があります。<br>*(Cảm ơn anh. …Phân tích cụ thể nhỉ. Con số có câu chuyện.)* |
| Thức | <ruby>下<rt>さ</rt></ruby>がった<ruby>月<rt>つき</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>も<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きました。<br>*(Tháng giảm em cũng ghi nguyên nhân trung thực.)* |
| Ishikawa | <ruby>悪<rt>わる</rt></ruby>い<ruby>数字<rt>すうじ</rt></ruby>を<ruby>隠<rt>かく</rt></ruby>さないのが<ruby>信頼<rt>しんらい</rt></ruby>に<ruby>繋<rt>つな</rt></ruby>がります。<br>*(Không giấu con số xấu mới dẫn tới được tin cậy.)* |
| Thức | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>もご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Mục tiêu năm sau anh xem giúp.)* |
| Ishikawa | <ruby>現場<rt>げんば</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>参考<rt>さんこう</rt></ruby>にします。<ruby>良<rt>よ</rt></ruby>い<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Tôi lấy làm tham khảo cho cả công trường. Báo cáo tốt.)* |

---

## Tình huống 6 — Trên giàn giáo · 14:30, nhắc đội tránh chủ quan cuối năm

| Vai | Lời thoại |
|---|---|
| Thức | フンくん、<ruby>年末<rt>ねんまつ</rt></ruby>だからこそ<ruby>基本<rt>きほん</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に。<ruby>今<rt>いま</rt></ruby>のフック、<ruby>確認<rt>かくにん</rt></ruby>した?<br>*(Hùng, chính vì cuối năm nên cơ bản phải kỹ. Móc vừa rồi, đã kiểm chưa?)* |
| Hùng | あ、<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すのを<ruby>忘<rt>わす</rt></ruby>れていました。すみません。<br>*(A, em quên hô ra tiếng. Xin lỗi.)* |
| Thức | <ruby>慣<rt>な</rt></ruby>れたときが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。もう<ruby>一度<rt>いちど</rt></ruby>やってみよう。<br>*(Lúc quen tay nguy nhất. Làm lại lần nữa nào.)* |
| Hùng | <ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えます。…<ruby>二丁掛<rt>にちょうが</rt></ruby>け、ヨシ。<br>*(Tôi đổi móc. …Móc hai móc, OK.)* |
| Thức | それでいい。<ruby>無事故<rt>むじこ</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>年<rt>とし</rt></ruby><ruby>越<rt>ご</rt></ruby>しまで<ruby>繋<rt>つな</rt></ruby>げよう。<br>*(Vậy là được. Nối kỷ lục không tai nạn sang qua năm nào.)* |
| Hùng | はい、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>きません。<br>*(Vâng, em không lơi đến cuối.)* |

---

## Tình huống 7 — Sân công trường · 15:30, 終礼 trước kỳ nghỉ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本年<rt>ほんねん</rt></ruby><ruby>最終<rt>さいしゅう</rt></ruby><ruby>日<rt>び</rt></ruby>の<ruby>終礼<rt>しゅうれい</rt></ruby>です。<ruby>一年間<rt>いちねんかん</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby>でした。<br>*(Họp tổng kết ngày cuối năm. Cả năm không tai nạn.)* |
| Cả đội | お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Vất vả rồi!)* |
| Thức | これは<ruby>誰<rt>だれ</rt></ruby>か<ruby>一人<rt>ひとり</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>ではなく、<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>意識<rt>いしき</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Đây không phải sức một người mà là kết quả ý thức của tất cả.)* |
| Kondo | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>記録<rt>きろく</rt></ruby>を<ruby>伸<rt>の</rt></ruby>ばそう。<br>*(Năm sau cũng kéo dài kỷ lục nào.)* |
| Thức | <ruby>休<rt>やす</rt></ruby>み<ruby>中<rt>ちゅう</rt></ruby>も<ruby>体調<rt>たいちょう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>を。<ruby>来年<rt>らいねん</rt></ruby>も<ruby>元気<rt>げんき</rt></ruby>に<ruby>会<rt>あ</rt></ruby>いましょう。<br>*(Trong kỳ nghỉ cũng giữ sức khoẻ. Năm sau gặp nhau khoẻ mạnh nhé.)* |
| Cả đội | よいお<ruby>年<rt>とし</rt></ruby>を!<br>*(Chúc năm mới tốt lành!)* |

---

## Tình huống 8 — Ga tàu · 17:00, Thức ra đón Linh (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh Thức! Đây rồi. Đi tàu xa muốn mỏi chân luôn. |
| Thức | Linh, mệt không? Để anh xách túi cho. Đi bộ một đoạn là tới chỗ anh ở. |
| Linh | Em ổn. Lâu rồi mới gặp, trông anh chững chạc hẳn. Công việc đốc công căng lắm hả? |
| Thức | Cũng nhiều việc, nhưng anh thấy mình trưởng thành. Mai anh dẫn em đi loanh quanh, hôm nay nghỉ cho khoẻ đã. |
| Linh | Ừ. Mà em muốn nghe anh kể chuyện công trường, nghe anh nói tiếng Nhật với mọi người chắc khác xưa lắm. |
| Thức | Mai em xem anh giao ban với đàn em rồi biết. Giờ về nghỉ đã, đói chưa, anh nấu gì đó. |

---

## Tình huống 9 — Quán ăn · 19:00, Linh hỏi về tương lai (tiếng Nhật xen — Thức tập nói)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, nãy em nghe anh gọi điện công việc bằng tiếng Nhật, nói cái gì mà 「特定技能二号」? |
| Thức | À, đó là tư cách lưu trú anh đang hướng tới. Để anh nói lại bằng tiếng Nhật cho quen. <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>しています。<br>*(Em đang nhắm 特定技能 số 2.)* |
| Linh | Nghe oai ghê. Khác số 1 chỗ nào anh? |
| Thức | <ruby>二号<rt>にごう</rt></ruby>になると、<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>けて、<ruby>家族<rt>かぞく</rt></ruby>も<ruby>呼<rt>よ</rt></ruby>べます。Nghĩa là số 2 thì làm lâu dài, được bảo lãnh gia đình. |
| Linh | Vậy là... xa xa sau này, nếu có gia đình thì cũng được sang cùng hả? |
| Thức | Ừ, đó là sau này thôi. Giờ chưa tính gì cả, cứ lo đủ điều kiện 2号 trước đã. Có nó thì mọi thứ mới vững. |

---

## Tình huống 10 — Công trường (Linh đứng xa quan sát) · 8:00, Thức chủ trì 朝礼

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>休<rt>やす</rt></ruby>み<ruby>明<rt>あ</rt></ruby>けの<ruby>初日<rt>しょにち</rt></ruby>です。<ruby>体<rt>からだ</rt></ruby>が<ruby>鈍<rt>にぶ</rt></ruby>っています。<br>*(Chào buổi sáng. Ngày đầu sau kỳ nghỉ. Cơ thể còn ì.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>休<rt>やす</rt></ruby>み<ruby>明<rt>あ</rt></ruby>けは<ruby>事故<rt>じこ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<ruby>準備<rt>じゅんび</rt></ruby><ruby>体操<rt>たいそう</rt></ruby>を<ruby>念入<rt>ねんい</rt></ruby>りに。<br>*(Sau nghỉ hay tai nạn. Khởi động kỹ vào.)* |
| Kondo | <ruby>感覚<rt>かんかく</rt></ruby>を<ruby>戻<rt>もど</rt></ruby>すまで<ruby>慎重<rt>しんちょう</rt></ruby>にな。<br>*(Đến khi lấy lại cảm giác thì thận trọng nhé.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>な<ruby>工程<rt>こうてい</rt></ruby>を<ruby>組<rt>く</rt></ruby>みません。<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>慣<rt>な</rt></ruby>らしていきましょう。<br>*(Hôm nay không xếp tiến độ gắng. Làm quen lại an toàn nào.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Tình huống 11 — Đường về · 17:30, Linh nhận xét sau khi xem Thức làm việc

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, sáng nay em đứng xa nhìn anh điều cả đội bằng tiếng Nhật, em không ngờ luôn. |
| Thức | Hồi mới sang anh đứng đó run lập cập, giờ thì quen rồi. Mỗi ngày nói một chút là tiến. |
| Linh | Mọi người nghe anh răm rắp. Anh có uy thật đấy. |
| Thức | Không phải uy đâu, là tin nhau. Anh làm thật, họ thấy thật thì họ theo. Tiếng Nhật chỉ là công cụ. |
| Linh | Em hiểu vì sao anh quyết tâm 特定技能 số 2 rồi. Anh hợp với con đường này. |
| Thức | Ừ. Cứ chắc từng bước. Em qua chơi cũng là động lực để anh cố thêm. |

---

## Tình huống 12 — Văn phòng công trường · 9:00, hỏi 石川さん về điều kiện 2号

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>し<ruby>伺<rt>うかが</rt></ruby>いたいことがあります。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>のことです。<br>*(Anh Ishikawa, em muốn hỏi chút. Về 特定技能 số 2.)* |
| Ishikawa | <ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>の<ruby>二号<rt>にごう</rt></ruby>ですね。<ruby>何<rt>なに</rt></ruby>が<ruby>知<rt>し</rt></ruby>りたいですか?<br>*(Số 2 ngành xây dựng nhỉ. Anh muốn biết gì?)* |
| Thức | <ruby>班長<rt>はんちょう</rt></ruby>や<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>要件<rt>ようけん</rt></ruby>に<ruby>関係<rt>かんけい</rt></ruby>すると<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em nghe kinh nghiệm tổ trưởng, đốc công liên quan đến điều kiện.)* |
| Ishikawa | はい、<ruby>監督<rt>かんとく</rt></ruby><ruby>者<rt>しゃ</rt></ruby>としての<ruby>経験<rt>けいけん</rt></ruby>と<ruby>試験<rt>しけん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>と<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Vâng, cần kinh nghiệm làm giám sát và đậu kỳ thi. Chi tiết anh kiểm với công ty.)* |
| Thức | はい。<ruby>制度<rt>せいど</rt></ruby>は<ruby>変<rt>か</rt></ruby>わることもあるので、<ruby>正式<rt>せいしき</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng. Chế độ có khi đổi, em sẽ hỏi thông tin chính thức ở công ty.)* |
| Ishikawa | <ruby>慎重<rt>しんちょう</rt></ruby>で<ruby>良<rt>よ</rt></ruby>いです。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>むこと<ruby>自体<rt>じたい</rt></ruby>が<ruby>近道<rt>ちかみち</rt></ruby>です。<br>*(Thận trọng là tốt. Tích kinh nghiệm đốc công tự nó là đường gần.)* |

---

## Tình huống 13 — Lán công trường · 13:00, Saito tư vấn lộ trình 2号

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>二号<rt>にごう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>むには、あと<ruby>何<rt>なに</rt></ruby>が<ruby>足<rt>た</rt></ruby>りませんか?<br>*(Anh Saito, để tiến lên số 2, em còn thiếu gì ạ?)* |
| Saito | <ruby>職長<rt>しょくちょう</rt></ruby>・<ruby>班長<rt>はんちょう</rt></ruby>としての<ruby>従事<rt>じゅうじ</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>がまだ<ruby>足<rt>た</rt></ruby>りていない。<br>*(Số ngày làm đốc công, tổ trưởng vẫn chưa đủ.)* |
| Thức | あとどれくらい<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Còn cần khoảng bao nhiêu ạ?)* |
| Saito | <ruby>今<rt>いま</rt></ruby>のペースなら<ruby>来年度<rt>らいねんど</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>には<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たす。<ruby>焦<rt>あせ</rt></ruby>るな。<br>*(Nhịp này thì trong năm tài chính sau là đủ điều kiện. Đừng vội.)* |
| Thức | <ruby>日数<rt>にっすう</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>しておきます。<br>*(Em sẽ ghi lại số ngày chính xác.)* |
| Saito | それが<ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>証明<rt>しょうめい</rt></ruby>できないと<ruby>経験<rt>けいけん</rt></ruby>も<ruby>無<rt>な</rt></ruby>いことになる。<br>*(Cái đó quan trọng. Không chứng minh được thì kinh nghiệm coi như không có.)* |

---

## Tình huống 14 — Bàn làm việc · 14:00, lập sổ ghi ngày làm 職長/班長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>職長<rt>しょくちょう</rt></ruby><ruby>従事<rt>じゅうじ</rt></ruby><ruby>日<rt>び</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りました。<br>*(Anh Kondo, em làm bảng ghi ngày làm đốc công.)* |
| Kondo | <ruby>日付<rt>ひづけ</rt></ruby>、<ruby>現場<rt>げんば</rt></ruby><ruby>名<rt>めい</rt></ruby>、<ruby>役割<rt>やくわり</rt></ruby>か。きちんとしてるな。<br>*(Ngày, tên công trường, vai trò à. Chỉn chu đấy.)* |
| Thức | <ruby>後<rt>あと</rt></ruby>で<ruby>証明<rt>しょうめい</rt></ruby>が<ruby>要<rt>い</rt></ruby>るときに<ruby>困<rt>こま</rt></ruby>らないようにです。<br>*(Để sau cần chứng minh không phải lúng túng.)* |
| Kondo | <ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>と<ruby>突<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>わせておけ。<ruby>食<rt>く</rt></ruby>い<ruby>違<rt>ちが</rt></ruby>うと<ruby>面倒<rt>めんどう</rt></ruby>だ。<br>*(Đối chiếu với hồ sơ công ty đi. Lệch nhau thì phiền.)* |
| Thức | はい、<ruby>月末<rt>げつまつ</rt></ruby>ごとに<ruby>照合<rt>しょうごう</rt></ruby>します。<br>*(Vâng, cuối tháng nào em cũng đối chiếu.)* |
| Kondo | <ruby>地道<rt>じみち</rt></ruby>だが、それが<ruby>一番<rt>いちばん</rt></ruby><ruby>確<rt>たし</rt></ruby>かな<ruby>道<rt>みち</rt></ruby>だ。<br>*(Bền bỉ, nhưng đó là con đường chắc nhất.)* |

---

## Tình huống 15 — Trên giàn giáo · 10:00, dạy Nam hướng nghề dài hạn

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>僕<rt>ぼく</rt></ruby>も<ruby>将来<rt>しょうらい</rt></ruby><ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>になれますか?<br>*(Anh Thức, em rồi cũng lên 特定技能 số 2 được không?)* |
| Thức | なれるよ。でも<ruby>順番<rt>じゅんばん</rt></ruby>がある。まず<ruby>技能<rt>ぎのう</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけ、<ruby>班長<rt>はんちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>む。<br>*(Được. Nhưng có thứ tự. Trước nắm tay nghề, tích kinh nghiệm tổ trưởng.)* |
| Nam | <ruby>時間<rt>じかん</rt></ruby>がかかりますね。<br>*(Mất thời gian nhỉ.)* |
| Thức | かかる。でも<ruby>一日<rt>いちにち</rt></ruby><ruby>一日<rt>いちにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねだ。<ruby>近道<rt>ちかみち</rt></ruby>はない。<br>*(Mất. Nhưng là tích từng ngày một. Không có đường tắt.)* |
| Nam | トゥックさんを<ruby>見<rt>み</rt></ruby>ていると、<ruby>頑張<rt>がんば</rt></ruby>れそうな<ruby>気<rt>き</rt></ruby>がします。<br>*(Nhìn anh Thức, em thấy mình cố được.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>誰<rt>だれ</rt></ruby>かの<ruby>背中<rt>せなか</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>来<rt>き</rt></ruby>た。お<ruby>前<rt>まえ</rt></ruby>もいつか<ruby>誰<rt>だれ</rt></ruby>かの<ruby>目標<rt>もくひょう</rt></ruby>になる。<br>*(Anh cũng nhìn lưng người khác mà đi. Em rồi cũng thành mục tiêu của ai đó.)* |

---

## Tình huống 16 — Quán cà phê · 18:00, gặp Long bàn chuyện chứng minh kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>二号<rt>にごう</rt></ruby><ruby>狙<rt>ねら</rt></ruby>ってるんだって?<ruby>経験<rt>けいけん</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>は<ruby>準備<rt>じゅんび</rt></ruby>してるか?<br>*(Thức, nghe nói nhắm số 2? Chứng minh kinh nghiệm chuẩn bị chưa?)* |
| Thức | はい、<ruby>従事<rt>じゅうじ</rt></ruby><ruby>日<rt>び</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>毎月<rt>まいつき</rt></ruby><ruby>付<rt>つ</rt></ruby>けています。ロンさんに<ruby>教<rt>おそ</rt></ruby>わった<ruby>慎重<rt>しんちょう</rt></ruby>さです。<br>*(Vâng, em ghi ngày làm mỗi tháng. Sự thận trọng anh Long dạy.)* |
| Long | <ruby>偉<rt>えら</rt></ruby>い。<ruby>記録<rt>きろく</rt></ruby>がないと、やっていても<ruby>証明<rt>しょうめい</rt></ruby>できない。<br>*(Giỏi. Không hồ sơ thì làm cũng không chứng minh được.)* |
| Thức | <ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>とも<ruby>照合<rt>しょうごう</rt></ruby>しています。<br>*(Em đối chiếu cả với hồ sơ công ty.)* |
| Long | お<ruby>前<rt>まえ</rt></ruby>は<ruby>堅実<rt>けんじつ</rt></ruby>だ。<ruby>急<rt>いそ</rt></ruby>がず<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>道<rt>みち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っている。<br>*(Cậu vững vàng. Không vội, làm đường chắc chắn.)* |
| Thức | <ruby>遠回<rt>とおまわ</rt></ruby>りに<ruby>見<rt>み</rt></ruby>えても、それが<ruby>一番<rt>いちばん</rt></ruby><ruby>早<rt>はや</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Trông như đi vòng nhưng em nghĩ đó là nhanh nhất.)* |

---

## Tình huống 17 — Ga tàu · 17:00, tiễn Linh về (tiếng Nhật xen nhẹ)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi, mấy hôm vui quá. Mai em phải về làm rồi. |
| Thức | Ừ, cảm ơn em đã sang. Nhìn anh làm việc chắc em hiểu anh đang đi đường nào rồi. |
| Linh | Em hiểu. Anh cứ lo 特定技能 số 2 cho vững, em không giục gì đâu. |
| Thức | (cười) <ruby>一歩<rt>いっぽ</rt></ruby>ずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。Anh đi từng bước chắc. Có nền rồi tính gì cũng được. |
| Linh | Em chờ được. Anh giữ sức khoẻ, đừng làm quá. |
| Thức | Ừ. Em về cẩn thận. Có gì gọi anh. Lên tàu đi kẻo trễ. |

---

## Tình huống 18 — Sân công trường · 8:00, 朝礼 sau khi Linh về, trở lại nhịp công việc

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>区画<rt>くかく</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみた</rt></ruby>てに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Chào buổi sáng. Hôm nay vào lắp giàn giáo phân khu mới.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>重点<rt>じゅうてん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>新<rt>あたら</rt></ruby>しい<ruby>場所<rt>ばしょ</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby><ruby>把握<rt>はあく</rt></ruby>」。<ruby>初日<rt>しょにち</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>慎重<rt>しんちょう</rt></ruby>に。<br>*(Mục tiêu trọng điểm là "nắm nguy cơ chỗ mới". Ngày đầu đặc biệt thận trọng.)* |
| Kondo | <ruby>地形<rt>ちけい</rt></ruby>も<ruby>違<rt>ちが</rt></ruby>うからな。<ruby>足元<rt>あしもと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>だ。<br>*(Địa hình cũng khác mà. Bắt buộc kiểm chỗ đứng.)* |
| Thức | KYで<ruby>全員<rt>ぜんいん</rt></ruby>から<ruby>危険<rt>きけん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してもらいます。<br>*(Trong KY mình để cả đội nêu chỗ nguy hiểm.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Tình huống 19 — Lán công trường · 16:00, Saito hỏi tâm thế của Thức

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、リンさんが<ruby>来<rt>き</rt></ruby>ていたんだってな。<ruby>気<rt>き</rt></ruby>が<ruby>緩<rt>ゆる</rt></ruby>まなかったか?<br>*(Thức, nghe nói Linh sang chơi à. Không lơi lỏng chứ?)* |
| Thức | <ruby>逆<rt>ぎゃく</rt></ruby>です。<ruby>応援<rt>おうえん</rt></ruby>してくれる<ruby>人<rt>ひと</rt></ruby>がいると、もっと<ruby>頑張<rt>がんば</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>います。<br>*(Ngược lại ạ. Có người ủng hộ thì em muốn cố hơn.)* |
| Saito | いい<ruby>関係<rt>かんけい</rt></ruby>だな。だが<ruby>仕事<rt>しごと</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>だ。<ruby>線<rt>せん</rt></ruby>は<ruby>引<rt>ひ</rt></ruby>けているか?<br>*(Quan hệ tốt đấy. Nhưng việc là việc. Vạch ranh được chứ?)* |
| Thức | はい。<ruby>将来<rt>しょうらい</rt></ruby>のことは<ruby>二号<rt>にごう</rt></ruby>を<ruby>取<rt>と</rt></ruby>ってから。<ruby>今<rt>いま</rt></ruby>は<ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>します。<br>*(Vâng. Chuyện tương lai để sau khi lấy số 2. Giờ tập trung việc trước mắt.)* |
| Saito | その<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>れる<ruby>奴<rt>やつ</rt></ruby>は<ruby>伸<rt>の</rt></ruby>びる。<br>*(Kẻ giữ được thứ tự đó thì tiến.)* |
| Thức | <ruby>足元<rt>あしもと</rt></ruby>を<ruby>固<rt>かた</rt></ruby>めることが、<ruby>将来<rt>しょうらい</rt></ruby>への<ruby>一番<rt>いちばん</rt></ruby>の<ruby>近道<rt>ちかみち</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em nghĩ vững chân hiện tại là đường gần nhất tới tương lai.)* |

---

## Tình huống 20 — Sân công trường · 8:00, 朝礼 — Thức nói về mục tiêu năm tới

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>新<rt>あたら</rt></ruby>しい<ruby>年<rt>とし</rt></ruby>、<ruby>気持<rt>きも</rt></ruby>ちを<ruby>新<rt>あら</rt></ruby>たに<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Chào buổi sáng. Năm mới, mình bắt đầu với tinh thần mới nào.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Hùng | トゥックさん、<ruby>今年<rt>ことし</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Thức, mục tiêu năm nay là gì ạ?)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby>の<ruby>無事故<rt>むじこ</rt></ruby><ruby>記録<rt>きろく</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>。そして<ruby>個人<rt>こじん</rt></ruby>では<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby><ruby>達成<rt>たっせい</rt></ruby>だ。<br>*(Lập lại kỷ lục không tai nạn của công trường. Còn cá nhân là đạt điều kiện 特定技能 số 2.)* |
| Kondo | <ruby>現場<rt>げんば</rt></ruby>も<ruby>個人<rt>こじん</rt></ruby>も<ruby>前<rt>まえ</rt></ruby>へ、だな。<br>*(Cả công trường lẫn cá nhân cùng tiến nhỉ.)* |
| Thức | はい。<ruby>一日<rt>いちにち</rt></ruby><ruby>一日<rt>いちにち</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に。では<ruby>本日<rt>ほんじつ</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で!<br>*(Vâng. Trân trọng từng ngày. Vậy hôm nay cũng an toàn là trên hết!)* |

---

## Đọng lại

Linh qua chơi cuối năm — vẫn chưa cưới, vẫn là động lực của nhau. Thức tìm hiểu và xác định rõ: chỉ khi đạt 特定技能2号 mới đủ điều kiện bảo lãnh gia đình, nên 2号 thành mục tiêu dài hạn — nhưng đó CHỈ là động lực, Thức chưa làm gì, đặt thứ tự "vững chân hiện tại trước, tương lai sau". Phần lớn chương vẫn là công việc 職長 cuối năm: tổng kết an toàn niên độ, ngừa chủ quan dịp lễ, lập sổ ghi ngày làm 職長/班長 để chứng minh kinh nghiệm cho 2号. Bài học từ Saito: kẻ giữ được thứ tự ưu tiên thì tiến; vững chân hiện tại là đường gần nhất tới tương lai.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 特定技能二号 | とくていぎのうにごう | 特定技能 số 2 (làm lâu dài, đón gia đình) |
> | 年度報告 | ねんどほうこく | báo cáo niên độ |
> | 無事故継続日数 | むじこけいぞくにっすう | số ngày liên tục không tai nạn |
> | 傾向分析 | けいこうぶんせき | phân tích xu hướng |
> | 従事日数 | じゅうじにっすう | số ngày tham gia làm việc |
> | 監督者 | かんとくしゃ | người giám sát |
> | 要件 | ようけん | điều kiện cần (yêu cầu) |
> | 照合 | しょうごう | đối chiếu |
> | 突き合わせ | つきあわせ | kiểm tra đối chiếu |
> | 油断防止 | ゆだんぼうし | ngừa chủ quan lơi lỏng |
> | 休み明け | やすみあけ | sau kỳ nghỉ |
> | 区画 | くかく | phân khu (công trường) |
> | 危険把握 | きけんはあく | nắm bắt nguy cơ |
> | 足元を固める | あしもとをかためる | củng cố nền tảng hiện tại |
> | 積み重ね | つみかさね | sự tích luỹ từng chút |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (837000012, 800000037, NULL, 'markdown_book', 'T12. Đủ điều kiện thi 特定技能 số 2 — quyết tâm (二号条件達成)', '# Sách kỹ năng đặc định xây dựng · T12. Đủ điều kiện thi 特定技能 số 2 — quyết tâm (二号条件達成)

> **Mục tiêu nhân vật:** Cuối năm thứ của Sách 37 (tháng 3/2031). Thức tích đủ ngày làm 職長/班長, đủ điều kiện đăng ký thi 特定技能2号. Học mẫu câu tiếng Nhật khi xác nhận điều kiện với công ty, chuẩn bị hồ sơ chứng minh kinh nghiệm, đăng ký thi, và quyết tâm bước sang giai đoạn mới — khép lại Sách 37, mở Sách 38.

---

## Bối cảnh

Tháng 3 năm 2031, khép lại năm 4/2030→3/2031. Sau một năm tập sự rồi đảm nhiệm 職長, Thức đã tích đủ số ngày làm 班長/職長 theo yêu cầu, cộng chứng chỉ 2級とび技能士. Công ty xác nhận Thức đủ điều kiện đăng ký thi 特定技能2号 trong năm tài chính tới. Chương cuối tập trung mẫu câu tiếng Nhật khi xác nhận điều kiện, chuẩn bị hồ sơ chứng minh, đăng ký thi, tổng kết một năm và đặt quyết tâm. Vẫn ≥18 tình huống hội thoại tiếng Nhật nghiệp vụ.

---

## Tình huống 1 — Văn phòng công trường · 8:00, Saito báo tin đủ điều kiện

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、いい<ruby>知<rt>し</rt></ruby>らせだ。お<ruby>前<rt>まえ</rt></ruby>の<ruby>従事<rt>じゅうじ</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>が<ruby>条件<rt>じょうけん</rt></ruby>に<ruby>達<rt>たっ</rt></ruby>した。<br>*(Thức, tin tốt. Số ngày làm của cậu đã đạt điều kiện.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>の、ですか?<br>*(Thật ạ. Của 特定技能 số 2 ạ?)* |
| Saito | そうだ。<ruby>班長<rt>はんちょう</rt></ruby>・<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>を<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>確認<rt>かくにん</rt></ruby>した。<br>*(Đúng. Công ty đã xác nhận số ngày kinh nghiệm tổ trưởng, đốc công.)* |
| Thức | ありがとうございます。<ruby>地道<rt>じみち</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>してきて<ruby>良<rt>よ</rt></ruby>かったです。<br>*(Cảm ơn anh. May là em ghi chép bền bỉ.)* |
| Saito | あの<ruby>記録<rt>きろく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>が<ruby>効<rt>き</rt></ruby>いた。<ruby>証明<rt>しょうめい</rt></ruby>がすぐ<ruby>出<rt>だ</rt></ruby>せる。<br>*(Bảng ghi đó có tác dụng. Xuất chứng minh được ngay.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>のステップを<ruby>会社<rt>かいしゃ</rt></ruby>と<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em sẽ kiểm bước tiếp theo với công ty.)* |

---

## Tình huống 2 — Bàn làm việc · 9:00, gọi điện xác nhận điều kiện với 本社

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>現場<rt>げんば</rt></ruby>のトゥックです。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>の<ruby>受験<rt>じゅけん</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>したいです。<br>*(Cảm ơn anh. Em Thức ở hiện trường. Em muốn xác nhận điều kiện dự thi 特定技能 số 2.)* |
| Nhân sự | はい。<ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>の<ruby>二号<rt>にごう</rt></ruby>ですね。<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Số 2 ngành xây dựng nhỉ. Tôi kiểm.)* |
| Thức | <ruby>必要<rt>ひつよう</rt></ruby>なのは<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>と、<ruby>監督<rt>かんとく</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>で<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Cần đậu kỳ thi tay nghề và chứng minh kinh nghiệm giám sát, đúng không ạ?)* |
| Nhân sự | そのとおりです。トゥックさんは<ruby>二級<rt>にきゅう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>済<rt>ず</rt></ruby>み、<ruby>経験<rt>けいけん</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>も<ruby>充足<rt>じゅうそく</rt></ruby>です。<br>*(Đúng vậy. Anh Thức đã đậu 2級, số ngày kinh nghiệm cũng đủ.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>の<ruby>細<rt>こま</rt></ruby>かい<ruby>運用<rt>うんよう</rt></ruby>は<ruby>変<rt>か</rt></ruby>わることがありますか?<br>*(Vận hành chi tiết chế độ có khi thay đổi không ạ?)* |
| Nhân sự | <ruby>更新<rt>こうしん</rt></ruby>されることがあります。<ruby>出願<rt>しゅつがん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>最新<rt>さいしん</rt></ruby><ruby>要項<rt>ようこう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Có khi được cập nhật. Trước nộp đơn nhất định kiểm thông tin tuyển sinh mới nhất.)* |

---

## Tình huống 3 — Bàn làm việc · 9:40, hỏi Kondo kinh nghiệm chuẩn bị hồ sơ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>経験<rt>けいけん</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>揃<rt>そろ</rt></ruby>えればいいですか?<br>*(Anh Kondo, hồ sơ chứng minh kinh nghiệm cần chuẩn bị gì?)* |
| Kondo | <ruby>従事<rt>じゅうじ</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby><ruby>書<rt>しょ</rt></ruby>と、<ruby>現場<rt>げんば</rt></ruby>ごとの<ruby>役割<rt>やくわり</rt></ruby><ruby>記録<rt>きろく</rt></ruby>だ。<br>*(Giấy chứng minh tình trạng làm việc, và ghi nhận vai trò từng công trường.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>毎月<rt>まいつき</rt></ruby><ruby>付<rt>つ</rt></ruby>けていた<ruby>記録<rt>きろく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>が<ruby>使<rt>つか</rt></ruby>えますか?<br>*(Bảng ghi em làm mỗi tháng dùng được không?)* |
| Kondo | そのまま<ruby>裏付<rt>うらづ</rt></ruby>けになる。<ruby>会社<rt>かいしゃ</rt></ruby><ruby>印<rt>いん</rt></ruby>のある<ruby>正式<rt>せいしき</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせろ。<br>*(Dùng luôn làm minh chứng. Ghép với giấy tờ chính thức có dấu công ty.)* |
| Thức | <ruby>食<rt>く</rt></ruby>い<ruby>違<rt>ちが</rt></ruby>いがないか<ruby>先<rt>さき</rt></ruby>に<ruby>照合<rt>しょうごう</rt></ruby>します。<br>*(Em đối chiếu trước xem có lệch nhau không.)* |
| Kondo | それが<ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>書類<rt>しょるい</rt></ruby>の<ruby>整合<rt>せいごう</rt></ruby><ruby>性<rt>せい</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>だ。<br>*(Cái đó quan trọng. Tính nhất quán hồ sơ là mạng sống.)* |

---

## Tình huống 4 — Bàn làm việc · 10:30, đối chiếu hồ sơ với 石川さん

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>現場<rt>げんば</rt></ruby>での<ruby>職長<rt>しょくちょう</rt></ruby><ruby>従事<rt>じゅうじ</rt></ruby><ruby>期間<rt>きかん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか。<br>*(Anh Ishikawa, xác nhận thời gian làm đốc công tại công trường giúp em được không.)* |
| Ishikawa | <ruby>二号<rt>にごう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby><ruby>用<rt>よう</rt></ruby>ですね。<ruby>記録<rt>きろく</rt></ruby>を<ruby>突<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>わせましょう。<br>*(Để xin số 2 nhỉ. Cùng đối chiếu hồ sơ nào.)* |
| Thức | <ruby>四月<rt>しがつ</rt></ruby>から<ruby>職長<rt>しょくちょう</rt></ruby><ruby>見習<rt>みなら</rt></ruby>い、<ruby>夏<rt>なつ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>に<ruby>職長<rt>しょくちょう</rt></ruby>です。<br>*(Từ tháng tư tập sự đốc công, từ hè chính thức làm đốc công.)* |
| Ishikawa | <ruby>現場<rt>げんば</rt></ruby><ruby>記録<rt>きろく</rt></ruby>とも<ruby>一致<rt>いっち</rt></ruby>しています。<ruby>是正<rt>ぜせい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>や<ruby>打合<rt>うちあ</rt></ruby>せ<ruby>議事録<rt>ぎじろく</rt></ruby>も<ruby>裏付<rt>うらづ</rt></ruby>けになります。<br>*(Khớp cả hồ sơ công trường. Báo cáo chấn chỉnh, biên bản họp cũng là minh chứng.)* |
| Thức | <ruby>日頃<rt>ひごろ</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>が<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>証拠<rt>しょうこ</rt></ruby>になるんですね。<br>*(Giấy tờ thường ngày tất cả thành bằng chứng nhỉ.)* |
| Ishikawa | そうです。<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>してきた<ruby>人<rt>ひと</rt></ruby>が<ruby>報<rt>むく</rt></ruby>われます。<br>*(Đúng. Người nghiêm túc lưu lại được đền đáp.)* |

---

## Tình huống 5 — Bàn làm việc · 11:30, tổng hợp hồ sơ đăng ký

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>のチェックリストを<ruby>作<rt>つく</rt></ruby>りました。<br>*(Anh Saito, em làm danh sách kiểm tra hồ sơ đăng ký.)* |
| Saito | …<ruby>技能士<rt>ぎのうし</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>、<ruby>従事<rt>じゅうじ</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カード。<ruby>漏<rt>も</rt></ruby>れがないな。<br>*(…Thẻ đậu chứng chỉ, chứng minh làm việc, thẻ lưu trú. Không sót.)* |
| Thức | <ruby>苦手<rt>にがて</rt></ruby>だった<ruby>書類<rt>しょるい</rt></ruby>も、<ruby>仕組<rt>しく</rt></ruby>みにすれば<ruby>怖<rt>こわ</rt></ruby>くなくなりました。<br>*(Giấy tờ vốn em yếu, biến thành cơ chế thì hết sợ.)* |
| Saito | グリーンファイルで<ruby>鍛<rt>きた</rt></ruby>えられたな。あの<ruby>苦労<rt>くろう</rt></ruby>が<ruby>生<rt>い</rt></ruby>きている。<br>*(Bộ hồ sơ an toàn tôi luyện cậu rồi. Cái vất vả đó sống lại.)* |
| Thức | はい。<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>と<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Trước nộp em kiểm lần cuối với công ty.)* |
| Saito | <ruby>慎重<rt>しんちょう</rt></ruby>で<ruby>良<rt>よ</rt></ruby>い。それでこそ<ruby>職長<rt>しょくちょう</rt></ruby>だ。<br>*(Thận trọng là tốt. Vậy mới là đốc công.)* |

---

## Tình huống 6 — Bàn làm việc · 13:00, gọi điện xác nhận thông tin tuyển sinh mới nhất

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>二号<rt>にごう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>最新<rt>さいしん</rt></ruby><ruby>要項<rt>ようこう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>したいです。<br>*(Cảm ơn anh. Em muốn xác nhận thông tin tuyển sinh mới nhất của kỳ thi số 2.)* |
| Nhân sự | <ruby>次回<rt>じかい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>来年度<rt>らいねんど</rt></ruby><ruby>前半<rt>ぜんはん</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<ruby>申込<rt>もうしこ</rt></ruby>みは<ruby>二<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>からです。<br>*(Kỳ thi tới dự kiến nửa đầu năm sau. Đăng ký từ hai tháng trước.)* |
| Thức | <ruby>試験<rt>しけん</rt></ruby><ruby>科目<rt>かもく</rt></ruby>は<ruby>変<rt>か</rt></ruby>わっていませんか?<br>*(Môn thi có thay đổi không ạ?)* |
| Nhân sự | <ruby>基本<rt>きほん</rt></ruby><ruby>構成<rt>こうせい</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じですが、<ruby>細部<rt>さいぶ</rt></ruby>は<ruby>公式<rt>こうしき</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ってください。<br>*(Cấu trúc cơ bản như cũ, nhưng chi tiết hãy chờ công bố chính thức.)* |
| Thức | <ruby>公式<rt>こうしき</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら<ruby>連絡<rt>れんらく</rt></ruby>いただけますか?<br>*(Có công bố chính thức anh báo em được không?)* |
| Nhân sự | はい、<ruby>出<rt>で</rt></ruby><ruby>次第<rt>しだい</rt></ruby>すぐお<ruby>知<rt>し</rt></ruby>らせします。<br>*(Vâng, có ngay là tôi báo.)* |

---

## Tình huống 7 — Sân công trường · 8:00, 朝礼 ngày thường (vẫn lo công việc)

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しい<ruby>棟<rt>とう</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>立上<rt>たちあ</rt></ruby>げです。<br>*(Chào buổi sáng. Hôm nay khởi động giàn giáo toà mới.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>重点<rt>じゅうてん</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>地組<rt>じぐ</rt></ruby>みの<ruby>水平<rt>すいへい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>」。<ruby>最初<rt>さいしょ</rt></ruby>が<ruby>狂<rt>くる</rt></ruby>うと<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>狂<rt>くる</rt></ruby>います。<br>*(Mục tiêu trọng điểm là "kiểm phẳng phần lắp dưới đất". Đầu lệch thì lệch hết.)* |
| Kondo | <ruby>基礎<rt>きそ</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>だな。<br>*(Nền móng là mạng sống nhỉ.)* |
| Thức | <ruby>仕事<rt>しごと</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じです。<ruby>足元<rt>あしもと</rt></ruby>を<ruby>固<rt>かた</rt></ruby>めて<ruby>進<rt>すす</rt></ruby>みましょう。<br>*(Việc cũng vậy. Vững chân rồi tiến nào.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Tình huống 8 — Trên giàn giáo · 10:00, chỉ đạo đội như một 職長 trưởng thành

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>地組<rt>じぐ</rt></ruby>みの<ruby>水平<rt>すいへい</rt></ruby>、<ruby>東<rt>ひがし</rt></ruby><ruby>側<rt>がわ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>いです。<br>*(Anh Thức, phẳng phần lắp dưới đất, phía đông hơi thấp.)* |
| Thức | よく<ruby>見<rt>み</rt></ruby>つけた。<ruby>何<rt>なに</rt></ruby>ミリ<ruby>違<rt>ちが</rt></ruby>う?<br>*(Phát hiện tốt. Lệch mấy mili?)* |
| Nam | <ruby>五<rt>ご</rt></ruby>ミリほどです。このまま<ruby>進<rt>すす</rt></ruby>めて<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Khoảng năm mili. Cứ thế tiến được không ạ?)* |
| Thức | ダメだ。<ruby>今<rt>いま</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>すれば<ruby>五<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>。<ruby>後<rt>あと</rt></ruby>でだと<ruby>半日<rt>はんにち</rt></ruby><ruby>無駄<rt>むだ</rt></ruby>になる。<br>*(Không được. Chỉnh giờ thì năm phút. Để sau thì mất nửa ngày.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Hiểu rồi. Em chỉnh ạ.)* |
| Thức | <ruby>早<rt>はや</rt></ruby>めの<ruby>気<rt>き</rt></ruby>づきが<ruby>一番<rt>いちばん</rt></ruby><ruby>得<rt>とく</rt></ruby>だ。よくやった。<br>*(Phát hiện sớm là lợi nhất. Làm tốt lắm.)* |

---

## Tình huống 9 — Lán công trường · 13:00, Saito nói về một năm qua

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、この<ruby>一年<rt>いちねん</rt></ruby>でずいぶん<ruby>変<rt>か</rt></ruby>わったな。<br>*(Thức, một năm qua cậu thay đổi nhiều đấy.)* |
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>まって、いろいろありました。<br>*(Từ khoá đào tạo đốc công, nhiều chuyện lắm.)* |
| Saito | <ruby>朝礼<rt>ちょうれい</rt></ruby><ruby>主催<rt>しゅさい</rt></ruby>、<ruby>工程<rt>こうてい</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>、<ruby>書類<rt>しょるい</rt></ruby>、<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>い。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えた。<br>*(Chủ trì họp sáng, điều phối tiến độ, giấy tờ, xung đột. Vượt hết.)* |
| Thức | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>逃<rt>に</rt></ruby>げずにやっただけです。<br>*(Từng cái một, em chỉ không né tránh mà làm.)* |
| Saito | その「<ruby>逃<rt>に</rt></ruby>げない」が<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい。お<ruby>前<rt>まえ</rt></ruby>は<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>になった。<br>*(Cái "không né tránh" đó khó nhất. Cậu thành đốc công thực thụ rồi.)* |
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>のおかげです。ありがとうございます。<br>*(Nhờ anh Saito ạ. Cảm ơn anh.)* |

---

## Tình huống 10 — Văn phòng công trường · 14:00, nộp hồ sơ đăng ký qua công ty

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>の<ruby>従事<rt>じゅうじ</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Ishikawa, chứng minh làm việc cho đơn số 2, nhờ anh kiểm lần cuối.)* |
| Ishikawa | <ruby>拝見<rt>はいけん</rt></ruby>します。…<ruby>期間<rt>きかん</rt></ruby>、<ruby>役割<rt>やくわり</rt></ruby>、<ruby>現場<rt>げんば</rt></ruby><ruby>名<rt>めい</rt></ruby>、すべて<ruby>整合<rt>せいごう</rt></ruby>しています。<br>*(Tôi xem. …Thời gian, vai trò, tên công trường, tất cả nhất quán.)* |
| Thức | <ruby>会社<rt>かいしゃ</rt></ruby><ruby>記録<rt>きろく</rt></ruby>と<ruby>現場<rt>げんば</rt></ruby><ruby>記録<rt>きろく</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>と<ruby>照合<rt>しょうごう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Hồ sơ công ty và công trường, đã đối chiếu cả hai.)* |
| Ishikawa | <ruby>完璧<rt>かんぺき</rt></ruby>です。これなら<ruby>審査<rt>しんさ</rt></ruby>でも<ruby>問題<rt>もんだい</rt></ruby>ないでしょう。<br>*(Hoàn hảo. Thế này thì xét duyệt cũng không vấn đề.)* |
| Thức | ありがとうございます。<ruby>会社<rt>かいしゃ</rt></ruby><ruby>経由<rt>けいゆ</rt></ruby>で<ruby>正式<rt>せいしき</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Cảm ơn anh. Em nộp chính thức qua công ty.)* |
| Ishikawa | <ruby>長<rt>なが</rt></ruby>い<ruby>道<rt>みち</rt></ruby>でしたね。<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Đường dài nhỉ. Tôi ủng hộ anh.)* |

---

## Tình huống 11 — Bàn làm việc · 15:00, lập kế hoạch ôn thi 2号

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>二号<rt>にごう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて<ruby>勉強<rt>べんきょう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てました。<br>*(Anh Kondo, em lập kế hoạch học hướng tới kỳ thi số 2.)* |
| Kondo | <ruby>二号<rt>にごう</rt></ruby>は<ruby>管理<rt>かんり</rt></ruby>・<ruby>監督<rt>かんとく</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>も<ruby>問<rt>と</rt></ruby>われる。<ruby>一級<rt>いっきゅう</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>だ。<br>*(Số 2 còn hỏi cả kiến thức quản lý giám sát. Nội dung tương đương 1級.)* |
| Thức | <ruby>実技<rt>じつぎ</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>でやっていることです。<ruby>学科<rt>がっか</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>を<ruby>重点<rt>じゅうてん</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Thực kỹ là việc làm ở hiện trường. Em tập trung học kiến thức quản lý phần lý thuyết.)* |
| Kondo | <ruby>賢<rt>かしこ</rt></ruby>い<ruby>戦略<rt>せんりゃく</rt></ruby>だ。<ruby>得意<rt>とくい</rt></ruby>を<ruby>確実<rt>かくじつ</rt></ruby>に、<ruby>苦手<rt>にがて</rt></ruby>を<ruby>重点<rt>じゅうてん</rt></ruby>に。<br>*(Chiến lược khôn. Sở trường chắc, chỗ yếu tập trung.)* |
| Thức | <ruby>二級<rt>にきゅう</rt></ruby>のときと<ruby>同<rt>おな</rt></ruby>じやり<ruby>方<rt>かた</rt></ruby>でいきます。<br>*(Em làm theo cách giống lúc thi 2級.)* |
| Kondo | <ruby>一度<rt>いちど</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>した<ruby>方法<rt>ほうほう</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>い。その<ruby>調子<rt>ちょうし</rt></ruby>だ。<br>*(Cách từng thành công là mạnh. Cứ đà đó.)* |

---

## Tình huống 12 — Trên giàn giáo · 10:00, đàn em hỏi về con đường của Thức

| Vai | Lời thoại |
|---|---|
| Hùng | トゥックさん、<ruby>二号<rt>にごう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>、<ruby>出<rt>だ</rt></ruby>したんですか?<br>*(Anh Thức, đơn số 2, anh nộp rồi ạ?)* |
| Thức | <ruby>会社<rt>かいしゃ</rt></ruby><ruby>経由<rt>けいゆ</rt></ruby>で<ruby>出<rt>だ</rt></ruby>した。<ruby>試験<rt>しけん</rt></ruby>はこれからだ。<br>*(Nộp qua công ty rồi. Kỳ thi còn ở phía trước.)* |
| Hùng | すごいです。<ruby>僕<rt>ぼく</rt></ruby>もそこまで<ruby>行<rt>い</rt></ruby>けますか?<br>*(Cừ quá. Em có tới được đó không ạ?)* |
| Thức | <ruby>行<rt>い</rt></ruby>けるよ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>も<ruby>言<rt>い</rt></ruby>えなかった。<ruby>続<rt>つづ</rt></ruby>けただけだ。<br>*(Tới được. Anh ban đầu còn chả gọi nổi tên bộ phận giàn giáo. Chỉ là kiên trì.)* |
| Hùng | <ruby>続<rt>つづ</rt></ruby>けることが<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいですね。<br>*(Kiên trì khó nhất nhỉ.)* |
| Thức | だから<ruby>毎日<rt>まいにち</rt></ruby><ruby>一<rt>ひと</rt></ruby>つでいい。<ruby>俺<rt>おれ</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>ている。<br>*(Nên mỗi ngày một cái là được. Có anh nhìn bên cạnh.)* |

---

## Tình huống 13 — Quán cà phê · 18:00, gặp Long báo tin

| Vai | Lời thoại |
|---|---|
| Long | トゥック、<ruby>二号<rt>にごう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby><ruby>出<rt>だ</rt></ruby>したそうだな。おめでとう。<br>*(Thức, nghe nói nộp đơn số 2 rồi. Chúc mừng.)* |
| Thức | ありがとうございます。ロンさんの「<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>せ」が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<br>*(Cảm ơn anh. Câu "lưu hồ sơ" của anh Long thật sự hữu ích.)* |
| Long | <ruby>地道<rt>じみち</rt></ruby>な<ruby>奴<rt>やつ</rt></ruby>が<ruby>最後<rt>さいご</rt></ruby>に<ruby>勝<rt>か</rt></ruby>つ。<ruby>俺<rt>おれ</rt></ruby>の<ruby>独立<rt>どくりつ</rt></ruby>も<ruby>順調<rt>じゅんちょう</rt></ruby>だ。<br>*(Người bền bỉ thắng cuối cùng. Việc ra riêng của anh cũng thuận.)* |
| Thức | <ruby>道<rt>みち</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>いますが、お<ruby>互<rt>たが</rt></ruby>い<ruby>前<rt>まえ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>んでいますね。<br>*(Đường khác nhau nhưng cả hai cùng tiến nhỉ.)* |
| Long | そうだな。お<ruby>前<rt>まえ</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>で、<ruby>俺<rt>おれ</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>で。どちらも<ruby>正<rt>ただ</rt></ruby>しい<ruby>道<rt>みち</rt></ruby>だ。<br>*(Ừ. Cậu trong công ty, anh tự doanh. Đều là đường đúng.)* |
| Thức | <ruby>試験<rt>しけん</rt></ruby>に<ruby>受<rt>う</rt></ruby>かったら、また<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Đậu kỳ thi em sẽ báo lại.)* |

---

## Tình huống 14 — Sân công trường · 8:00, 朝礼 — Thức điều hành tự tin

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>年度<rt>ねんど</rt></ruby><ruby>末<rt>まつ</rt></ruby>、<ruby>現場<rt>げんば</rt></ruby><ruby>整理<rt>せいり</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>です。<br>*(Chào buổi sáng. Hôm nay cuối năm tài chính, ngày dọn dẹp công trường.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Thức | <ruby>整理<rt>せいり</rt></ruby>でも<ruby>事故<rt>じこ</rt></ruby>は<ruby>起<rt>お</rt></ruby>きます。<ruby>重<rt>おも</rt></ruby>い<ruby>資材<rt>しざい</rt></ruby>は<ruby>二人<rt>ふたり</rt></ruby>で。<ruby>無理<rt>むり</rt></ruby>はしない。<br>*(Dọn dẹp cũng có tai nạn. Vật tư nặng hai người. Không gắng.)* |
| Kondo | <ruby>気<rt>き</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>みが<ruby>一番<rt>いちばん</rt></ruby><ruby>怖<rt>こわ</rt></ruby>いな。<br>*(Lơi lỏng đáng sợ nhất nhỉ.)* |
| Thức | はい。<ruby>最後<rt>さいご</rt></ruby>の<ruby>一日<rt>いちにち</rt></ruby>も<ruby>初日<rt>しょにち</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>気持<rt>きも</rt></ruby>ちで。<br>*(Vâng. Ngày cuối cùng cũng cùng tâm thế như ngày đầu.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Tình huống 15 — Sân công trường · 15:30, 終礼 tổng kết một năm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本年度<rt>ほんねんど</rt></ruby><ruby>最後<rt>さいご</rt></ruby>の<ruby>終礼<rt>しゅうれい</rt></ruby>です。<ruby>一年間<rt>いちねんかん</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>更新<rt>こうしん</rt></ruby>しました。<br>*(Họp tổng kết cuối năm tài chính. Cả năm, đã lập lại kỷ lục không tai nạn.)* |
| Cả đội | お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Vất vả rồi!)* |
| Thức | みなさん<ruby>一人<rt>ひとり</rt></ruby>ひとりの<ruby>意識<rt>いしき</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>です。<ruby>誇<rt>ほこ</rt></ruby>っていい。<br>*(Là kết quả ý thức của từng người. Đáng tự hào.)* |
| Nam | トゥックさんの<ruby>声<rt>こえ</rt></ruby><ruby>掛<rt>か</rt></ruby>けがあったからです。<br>*(Vì có anh Thức nhắc nhở mà.)* |
| Thức | <ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>続<rt>つづ</rt></ruby>けましょう。<ruby>記録<rt>きろく</rt></ruby>は<ruby>守<rt>まも</rt></ruby>るより<ruby>伸<rt>の</rt></ruby>ばすものです。<br>*(Năm sau cũng tiếp tục. Kỷ lục là thứ để kéo dài chứ không chỉ giữ.)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Tình huống 16 — Lán công trường · 16:00, Saito trao kỳ vọng cho năm tới

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>来年度<rt>らいねんど</rt></ruby>は<ruby>二号<rt>にごう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>年<rt>とし</rt></ruby>だな。<br>*(Thức, năm tài chính sau là năm thi số 2 nhỉ.)* |
| Thức | はい。<ruby>受<rt>う</rt></ruby>かれば<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>けます。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>幅<rt>はば</rt></ruby>も<ruby>広<rt>ひろ</rt></ruby>がります。<br>*(Vâng. Đậu thì làm lâu dài được. Phạm vi công việc cũng rộng ra.)* |
| Saito | お<ruby>前<rt>まえ</rt></ruby>なら<ruby>受<rt>う</rt></ruby>かる。<ruby>実力<rt>じつりょく</rt></ruby>はもう<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Cậu thì đậu. Thực lực đã đủ rồi.)* |
| Thức | <ruby>油断<rt>ゆだん</rt></ruby>はしません。<ruby>合格<rt>ごうかく</rt></ruby>するまで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>きません。<br>*(Em không chủ quan. Đến khi đậu mới thôi căng.)* |
| Saito | その<ruby>慎重<rt>しんちょう</rt></ruby>さがお<ruby>前<rt>まえ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みだ。<ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むぞ。<br>*(Sự thận trọng đó là điểm mạnh của cậu. Năm sau nhờ cậu.)* |
| Thức | はい、<ruby>現場<rt>げんば</rt></ruby>も<ruby>試験<rt>しけん</rt></ruby>も、どちらも<ruby>全力<rt>ぜんりょく</rt></ruby>で。<br>*(Vâng, cả công trường lẫn kỳ thi, đều dốc toàn lực.)* |

---

## Tình huống 17 — Văn phòng công trường · 16:30, 石川さん gửi lời nhắn cuối năm

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>一年間<rt>いちねんかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Anh Thức, một năm vất vả. Bên giàn giáo, thật sự được nhờ.)* |
| Thức | こちらこそ、ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございました。<br>*(Tôi mới phải cảm ơn anh đã chỉ bảo.)* |
| Ishikawa | <ruby>書類<rt>しょるい</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>だったあなたが、<ruby>今<rt>いま</rt></ruby>では<ruby>見本<rt>みほん</rt></ruby>です。<br>*(Anh vốn yếu giấy tờ, giờ thành mẫu mực.)* |
| Thức | <ruby>逃<rt>に</rt></ruby>げずに<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>えたのは、<ruby>皆<rt>みな</rt></ruby>さんの<ruby>支<rt>ささ</rt></ruby>えがあったからです。<br>*(Đối diện được không né tránh là nhờ mọi người nâng đỡ.)* |
| Ishikawa | <ruby>二号<rt>にごう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>受<rt>う</rt></ruby>かってください。<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Kỳ thi số 2, nhất định phải đậu. Tôi ủng hộ anh.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>結果<rt>けっか</rt></ruby>で<ruby>応<rt>こた</rt></ruby>えます。<br>*(Vâng, em nhất định đáp lại bằng kết quả.)* |

---

## Tình huống 18 — Ký túc xá · 19:30, Thức nói với đàn em về chặng đường tới

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>来年度<rt>らいねんど</rt></ruby>から<ruby>忙<rt>いそが</rt></ruby>しくなりますね。<br>*(Anh Thức, từ năm sau bận hơn nhỉ.)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby>も<ruby>試験<rt>しけん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>もある。でも<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>れば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Có cả công trường lẫn ôn thi. Nhưng giữ thứ tự thì ổn.)* |
| Hùng | <ruby>僕<rt>ぼく</rt></ruby>たちに<ruby>何<rt>なに</rt></ruby>かできることはありますか?<br>*(Bọn em làm gì giúp được không ạ?)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>確実<rt>かくじつ</rt></ruby>に。それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>支<rt>ささ</rt></ruby>えだ。<br>*(Làm chắc việc mỗi ngày. Đó là sự nâng đỡ lớn nhất.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>たちもいつか<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>きたいです。<br>*(Bọn em rồi cũng muốn đi con đường đó.)* |
| Thức | <ruby>歩<rt>ある</rt></ruby>けるよ。<ruby>一日<rt>いちにち</rt></ruby><ruby>一日<rt>いちにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねだ。<ruby>俺<rt>おれ</rt></ruby>がその<ruby>証拠<rt>しょうこ</rt></ruby>だ。<br>*(Đi được. Là tích từng ngày một. Anh là bằng chứng.)* |

---

## Tình huống 19 — Phòng nghỉ Linh gọi điện · 21:00, báo tin và quyết tâm (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh ơi! Hôm nay giọng anh khác ghê. Có tin gì hả? |
| Thức | Ừ, anh đủ điều kiện rồi. Đủ ngày làm đốc công, có chứng chỉ, công ty xác nhận. Anh nộp hồ sơ thi 特定技能 số 2 rồi. |
| Linh | Trời ơi, mừng quá! Vậy là sang năm anh thi đúng không? |
| Thức | Ừ, sang năm tài chính. Còn phải ôn, còn phải thi đậu. Nhưng cánh cửa đã mở. Anh đi từng bước, tới đây rồi. |
| Linh | Em biết anh làm được mà. Cả năm nay anh cố gắng nhiều lắm. |
| Thức | Cảm ơn em luôn ở bên. Chặng tới còn dài, nhưng anh không vội. Vững từng bước. Năm mới, mình cùng cố nhé. |

---

## Tình huống 20 — Sân công trường · 8:00 ngày đầu năm tài chính mới, 朝礼 mở chương mới

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>新<rt>あたら</rt></ruby>しい<ruby>年度<rt>ねんど</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>です。<br>*(Chào buổi sáng. Ngày đầu của năm tài chính mới.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |
| Hùng | トゥックさん、<ruby>今年度<rt>こんねんど</rt></ruby>の<ruby>抱負<rt>ほうふ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Thức, quyết tâm năm nay là gì ạ?)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby>の<ruby>無事故<rt>むじこ</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>守<rt>まも</rt></ruby>り、<ruby>二号<rt>にごう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>する。<ruby>二<rt>ふた</rt></ruby>つとも<ruby>必<rt>かなら</rt></ruby>ずやり<ruby>遂<rt>と</rt></ruby>げます。<br>*(Giữ kỷ lục không tai nạn của công trường, và đậu kỳ thi số 2. Cả hai nhất định làm cho được.)* |
| Kondo | <ruby>頼<rt>たの</rt></ruby>もしいな。<ruby>現場<rt>げんば</rt></ruby><ruby>一同<rt>いちどう</rt></ruby>で<ruby>支<rt>ささ</rt></ruby>えるぞ。<br>*(Tin cậy đấy. Cả công trường cùng nâng đỡ nào.)* |
| Thức | ありがとうございます。<ruby>一日<rt>いちにち</rt></ruby><ruby>一日<rt>いちにち</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に。では、<ruby>本日<rt>ほんじつ</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で!<br>*(Cảm ơn mọi người. Trân trọng từng ngày. Vậy, hôm nay cũng an toàn là trên hết!)* |
| Cả đội | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>!<br>*(An toàn là trên hết!)* |

---

## Đọng lại

Khép lại Sách 37: sau một năm từ tập sự lên 職長 thực thụ, Thức tích đủ số ngày làm 班長/職長 cộng chứng chỉ 2級とび技能士, được công ty xác nhận đủ điều kiện đăng ký thi 特定技能2号. Bài học cốt lõi của cả năm: ghi chép bền bỉ thường ngày (sổ ngày làm, 是正報告, 議事録) chính là minh chứng — người nghiêm túc lưu lại được đền đáp. Thức nộp hồ sơ qua công ty, luôn xác nhận thông tin tuyển sinh mới nhất, không tự phán đoán. Cánh cửa 特定技能2号 đã mở nhưng kỳ thi còn ở phía trước — Thức giữ thứ tự "vững chân hiện tại trước", quyết tâm cả công trường lẫn kỳ thi, mở ra chặng đường mới ở Sách 38.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 特定技能二号 | とくていぎのうにごう | 特定技能 số 2 (làm lâu dài, đón gia đình) |
> | 従事日数 | じゅうじにっすう | số ngày tham gia làm việc |
> | 充足 | じゅうそく | đủ / thoả mãn (điều kiện) |
> | 従事状況証明書 | じゅうじじょうきょうしょうめいしょ | giấy chứng minh tình trạng làm việc |
> | 整合性 | せいごうせい | tính nhất quán (hồ sơ) |
> | 突き合わせ | つきあわせ | đối chiếu kiểm tra |
> | 裏付け | うらづけ | minh chứng / căn cứ chứng minh |
> | 出願 | しゅつがん | nộp đơn dự thi |
> | 要項 | ようこう | thông tin/quy định tuyển sinh |
> | 審査 | しんさ | xét duyệt |
> | 監督者経験 | かんとくしゃけいけん | kinh nghiệm làm người giám sát |
> | 地組み | じぐみ | phần giàn giáo lắp dưới đất |
> | 抱負 | ほうふ | quyết tâm / hoài bão |
> | やり遂げる | やりとげる | làm cho bằng được |
> | 積み重ね | つみかさね | sự tích luỹ từng chút |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
