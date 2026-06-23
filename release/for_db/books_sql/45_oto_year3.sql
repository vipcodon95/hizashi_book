-- Hizashi LITE book SQL — Phong Y3 — Ô tô năm 3 (SSW1 + 整備士 2級)
-- curriculum_id = 800000045  (book_seq=45)
-- nguồn: books/45_oto_year3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000045, 'N4', 'markdown_book', 'Ô tô', 'Phong Y3 — Ô tô năm 3 (SSW1 + 整備士 2級)', 'Bộ sách Hizashi — Phong Y3 — Ô tô năm 3 (SSW1 + 整備士 2級)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000001, 800000045, NULL, 'markdown_book', 'T1. Mở màn năm ba — sempai của sempai (3年目の春・先輩の先輩として)', '# Sách thực tập sinh ô tô · T1. Mở màn năm ba — sempai của sempai (3年目の春・先輩の先輩として)

> **Mục tiêu nhân vật:** Phong (23 tuổi, Hải Phòng) bước vào năm ba — năm cuối TTS tại Garage Anjo (安城自動車整備工場) ở Aichi, hệ Toyota. Học các mẫu hội thoại tiếng Nhật cho năm 3 ngành ô tô: nhận phân công **指導補佐** với hai kohai (Tuấn năm 2, Đức năm 1 mới sang), trình bày lộ trình năm bằng **一つ目・二つ目** với 工場長 Sato, hỏi lại lễ phép từ chuyên ngành **〜というのは?** (自動車整備士2級・実技試験・受検資格), bàn giao công cụ bằng **〜をお願いします**, coach kohai bằng **やさしい日本語** (câu ngắn, một thông tin / câu), và xác nhận thông tin với cấp trên bằng **〜ということですね**.

---

## Bối cảnh

Ngày 1 tháng 4 năm 2027, đầu năm tài khoá Nhật. Phong vào năm cuối TTS tại Garage Anjo (Aichi), N3 đang ôn, đã đậu 自動車整備士3級 năm trước. Tuấn (Hải Dương, năm 2, đã đậu 検定3級) vẫn ở cùng ký túc. Carlos (Brazil, đồng nghiệp lâu năm) chuyển ca sáng. Đức (Thái Bình, năm 1 mới sang tháng 5/2027) chuẩn bị đến. Chương này tập trung mẫu câu giao tiếp công sở giai đoạn chuyển sang vai sempai của sempai: bàn kế hoạch năm với 工場長, hỗ trợ Tuấn kèm Đức, và xác nhận hướng **自動車整備士2級 + SSW1**.

---

## Tình huống 1 — Phòng họp xưởng · 8:30, 工場長 Sato thông báo nhân sự năm tài khoá mới

| Vai | Lời thoại |
|---|---|
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年度<rt>ねんど</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, chào buổi sáng. Từ hôm nay năm tài khoá 2027 bắt đầu. Xin mọi người hợp tác.)* |
| Cả xưởng | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Mong anh chỉ bảo.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>大<rt>おお</rt></ruby>きな<ruby>変更<rt>へんこう</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つお<ruby>伝<rt>つた</rt></ruby>えします。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、フォンさんが<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>り、TTS<ruby>最終<rt>さいしゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<br>*(Có hai thay đổi lớn. Một, Phong vào năm 3, năm cuối TTS.)* |
| Phong | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin được chỉ bảo ạ.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からは<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>「<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備<rt>せいび</rt></ruby>」として<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>勤務<rt>きんむ</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tháng 4 sang năm, Phong sẽ chuyển sang 特定技能1号 ngành bảo dưỡng ô tô và tiếp tục làm tại công ty.)* |
| Phong | ありがとうございます。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Em cảm ơn ạ. Em sẽ chuẩn bị hết sức.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>にベトナムから<ruby>新人<rt>しんじん</rt></ruby>ドゥックさんが<ruby>来<rt>き</rt></ruby>ます。<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>はトゥアンさん、フォンさんが<ruby>補佐<rt>ほさ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Hai, giữa tháng 5 có kohai mới Đức từ Việt Nam sang. Phụ trách chính là Tuấn, Phong hỗ trợ.)* |
| Tuấn | え、<ruby>私<rt>わたし</rt></ruby>が<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>ですか? <ruby>務<rt>つと</rt></ruby>まるかどうか<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Ơ, em phụ trách chính ạ? Em không tự tin lắm.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。フォンさんが<ruby>補佐<rt>ほさ</rt></ruby>に<ruby>付<rt>つ</rt></ruby>きます。<ruby>困<rt>こま</rt></ruby>ったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>報連相<rt>ほうれんそう</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Không sao. Có Phong hỗ trợ. Khó khăn thì báo cáo - liên lạc - bàn bạc.)* |
| Tuấn | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Hành lang sau họp · 9:00, Phong trấn an Tuấn và phân vai

| Vai | Lời thoại |
|---|---|
| Tuấn | フォン<ruby>兄<rt>にい</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>いです。ドゥックさんに<ruby>何<rt>なに</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えればいいんでしょうか。<br>*(Anh Phong, em sợ thật. Em không biết phải dạy Đức cái gì trước ạ.)* |
| Phong | <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>一<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は、<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>から。それと<ruby>安全<rt>あんぜん</rt></ruby><ruby>規則<rt>きそく</rt></ruby>です。<br>*(Bình tĩnh. Tuần đầu thì chỉ chào hỏi, tên dụng cụ, và quy tắc an toàn thôi.)* |
| Tuấn | やさしい<ruby>日本語<rt>にほんご</rt></ruby>でということですよね?<br>*(Bằng yasashii nihongo đúng không ạ?)* |
| Phong | そう。<ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>で、<ruby>一文<rt>いちぶん</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つの<ruby>情報<rt>じょうほう</rt></ruby>だけ。<ruby>難<rt>むずか</rt></ruby>しい<ruby>漢語<rt>かんご</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けて、<ruby>実物<rt>じつぶつ</rt></ruby>を<ruby>指<rt>さ</rt></ruby>しながら。<br>*(Đúng. Câu ngắn, mỗi câu một thông tin. Tránh từ Hán khó, vừa chỉ vật thật vừa nói.)* |
| Tuấn | <ruby>例<rt>たと</rt></ruby>えば、どんな<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>ですか?<br>*(Ví dụ nói thế nào ạ?)* |
| Phong | 「これはスパナ。<ruby>10<rt>じゅう</rt></ruby>ミリ。<ruby>右手<rt>みぎて</rt></ruby>で<ruby>持<rt>も</rt></ruby>つ。<ruby>右<rt>みぎ</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>す」と<ruby>区切<rt>くぎ</rt></ruby>る。<ruby>一気<rt>いっき</rt></ruby>に<ruby>長<rt>なが</rt></ruby>く<ruby>言<rt>い</rt></ruby>わない。<br>*(Chia ra: "Đây là spana. 10mm. Cầm bằng tay phải. Vặn sang phải". Đừng nói một mạch dài.)* |
| Tuấn | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>復習<rt>ふくしゅう</rt></ruby>していただけますか?<br>*(Em hiểu rồi. Tối thứ Bảy hàng tuần, anh ôn cùng em được không?)* |
| Phong | もちろん。<ruby>俺<rt>おれ</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだったから。<br>*(Đương nhiên. Hai năm trước anh cũng vậy mà.)* |

---

## Tình huống 3 — Khu lift số 2 · 9:30, 整備士長 Yamada bàn giao danh sách công cụ và quy trình bàn giao kohai

| Vai | Lời thoại |
|---|---|
| <ruby>山田<rt>やまだ</rt></ruby> | フォン、ちょっといいか。ドゥック<ruby>君<rt>くん</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>工具<rt>こうぐ</rt></ruby>セットを<ruby>準備<rt>じゅんび</rt></ruby>してほしいんだ。<br>*(Phong, có chút việc. Anh muốn em chuẩn bị bộ dụng cụ cho Đức.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>内容<rt>ないよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してもよろしいですか?<br>*(Vâng, em rõ. Em xác nhận nội dung được không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | スパナ<ruby>10<rt>じゅう</rt></ruby>・<ruby>12<rt>じゅうに</rt></ruby>・<ruby>14<rt>じゅうよん</rt></ruby>ミリ、ラチェット、<ruby>軍手<rt>ぐんて</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>組<rt>くみ</rt></ruby>、<ruby>保護<rt>ほご</rt></ruby>メガネ、それと<ruby>名札<rt>なふだ</rt></ruby>。<ruby>金曜<rt>きんよう</rt></ruby>までにお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Spana 10-12-14mm, ratchet, găng tay 5 đôi, kính bảo hộ, và biển tên. Xong trước thứ Sáu nhé.)* |
| Phong | <ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>名札<rt>なふだ</rt></ruby>は<ruby>事務所<rt>じむしょ</rt></ruby>で<ruby>作<rt>つく</rt></ruby>ってもらえばいいということですね?<br>*(Cho em xác nhận lại. Biển tên thì nhờ văn phòng làm đúng không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | そう。<ruby>鈴木<rt>すずき</rt></ruby>さんに<ruby>伝<rt>つた</rt></ruby>えれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Đúng. Báo Suzuki là được.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。ロッカーの<ruby>番号<rt>ばんごう</rt></ruby>は<ruby>空<rt>あ</rt></ruby>いている<ruby>23<rt>にじゅうさん</rt></ruby><ruby>番<rt>ばん</rt></ruby>でよろしいでしょうか?<br>*(Em rõ. Số tủ trống là số 23, dùng số đó được không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | いいよ。<ruby>新人<rt>しんじん</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>せるようにしておいてくれ。<br>*(Được. Sắp xếp để hôm đầu của kohai là đưa được luôn.)* |
| Phong | はい、<ruby>金曜<rt>きんよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>までに<ruby>完了<rt>かんりょう</rt></ruby>させて<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em sẽ xong trước chiều thứ Sáu rồi báo cáo lại.)* |

---

## Tình huống 4 — Phòng nghỉ 工場長 · 11:00, Phong trình bày kế hoạch năm bằng số thứ tự

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>をご<ruby>相談<rt>そうだん</rt></ruby>させていただきたいのですが、お<ruby>時間<rt>じかん</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Sếp Sato, em muốn xin được bàn kế hoạch năm 3, anh có thời gian không ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | どうぞ、<ruby>遠慮<rt>えんりょ</rt></ruby>なく。<br>*(Mời em, đừng ngại.)* |
| Phong | <ruby>大<rt>おお</rt></ruby>きく<ruby>四<rt>よっ</rt></ruby>つあります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Có 4 việc lớn. Một, tháng 10 em muốn thi lý thuyết 自動車整備士 cấp 2.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | いいね。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Tốt đấy. Cái thứ hai?)* |
| Phong | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPTでN3を<ruby>受<rt>う</rt></ruby>けます。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、トゥアンさんの<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>を<ruby>補佐<rt>ほさ</rt></ruby>します。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1の<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Hai, JLPT tháng 12 em thi N3. Ba, hỗ trợ Tuấn kèm Đức. Bốn, từ tháng 10 chuẩn bị hồ sơ SSW1.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>具体的<rt>ぐたいてき</rt></ruby>でいい。<ruby>確認<rt>かくにん</rt></ruby>だが、<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しているからSSW1の<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>免除<rt>めんじょ</rt></ruby>になるのは<ruby>知<rt>し</rt></ruby>っているね?<br>*(Cụ thể, tốt. Xác nhận: em đã đậu 自動車整備士 cấp 3 nên được miễn thi kỹ năng SSW1, em biết chứ?)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>がSSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つになるということですね。<br>*(Vâng. Tức là chứng chỉ đậu sẽ là một trong các giấy tờ cần cho hồ sơ SSW1.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>り。よく<ruby>整理<rt>せいり</rt></ruby>されている。<br>*(Đúng vậy. Sắp xếp tốt.)* |

---

## Tình huống 5 — Phòng nghỉ 工場長 · 11:20, Phong hỏi lại về 受検資格 và 実技試験

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>のことで<ruby>確認<rt>かくにん</rt></ruby>させてください。「<ruby>受検<rt>じゅけん</rt></ruby><ruby>資格<rt>しかく</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh, cho em xác nhận về 自動車整備士 cấp 2. "受検資格" cụ thể là gì ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>受検<rt>じゅけん</rt></ruby><ruby>資格<rt>しかく</rt></ruby>というのは、<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるための<ruby>条件<rt>じょうけん</rt></ruby>のこと。<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得後<rt>しゅとくご</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Là điều kiện để được dự thi. Sau khi đậu cấp 3, cần 3 năm kinh nghiệm thực tế.)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>...<ruby>私<rt>わたし</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>から<ruby>1<rt>いち</rt></ruby><ruby>年半<rt>ねんはん</rt></ruby>です。<ruby>受<rt>う</rt></ruby>けられるんですか?<br>*(Ba năm... em mới đậu cấp 3 được một năm rưỡi. Em thi được không ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>先<rt>さき</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めて<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年度<rt>ねんど</rt></ruby><ruby>以降<rt>いこう</rt></ruby>になる。<br>*(Thi lý thuyết thì bắt đầu chuẩn bị trước được. Thi thực hành thì phải từ năm tài khoá 2028 trở đi.)* |
| Phong | すみません、「<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>」というのは、<ruby>実際<rt>じっさい</rt></ruby>に<ruby>車<rt>くるま</rt></ruby>を<ruby>整備<rt>せいび</rt></ruby>する<ruby>試験<rt>しけん</rt></ruby>ですね?<br>*(Xin lỗi, "実技試験" là thi thực hành bảo dưỡng xe thật phải không ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | そう。<ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>にエンジン<ruby>分解<rt>ぶんかい</rt></ruby>、<ruby>診断<rt>しんだん</rt></ruby>、<ruby>組<rt>く</rt></ruby>み<ruby>立<rt>た</rt></ruby>てを<ruby>行<rt>おこな</rt></ruby>う。<ruby>学科<rt>がっか</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば、<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>整備<rt>せいび</rt></ruby><ruby>振興会<rt>しんこうかい</rt></ruby>の<ruby>講習<rt>こうしゅう</rt></ruby>で<ruby>免除<rt>めんじょ</rt></ruby>もできる。<br>*(Đúng. Trong thời gian giới hạn, tháo lắp engine, chẩn đoán, ráp lại. Nếu đậu lý thuyết thì khoá học của Hiệp hội bảo dưỡng có thể được miễn thực hành.)* |
| Phong | なるほど。<ruby>学科<rt>がっか</rt></ruby>と<ruby>講習<rt>こうしゅう</rt></ruby>の<ruby>二<rt>ふた</rt></ruby>つを<ruby>目<rt>め</rt></ruby><ruby>指<rt>ざ</rt></ruby>す、ということですね。<br>*(Ra vậy. Tức là nhắm vào hai cái: lý thuyết và khoá học, đúng không ạ.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>り。SSW1の<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>るのが<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>方針<rt>ほうしん</rt></ruby>だ。<br>*(Đúng vậy. Dùng 3 năm SSW1 để lấy cấp 2 là phương châm công ty.)* |

---

## Tình huống 6 — Khu rửa xe · 13:00, Carlos chia sẻ kinh nghiệm chuyển TTS→SSW1

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>おめでとう。SSW1に<ruby>進<rt>すす</rt></ruby>むんだろ?<br>*(Phong, chúc mừng năm 3. Em đi tiếp SSW1 hả?)* |
| Phong | はい、カルロスさん。<ruby>申請<rt>しんせい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からのつもりです。<br>*(Vâng anh Carlos. Em định chuẩn bị hồ sơ từ tháng 10.)* |
| Carlos | <ruby>半年<rt>はんとし</rt></ruby><ruby>前<rt>まえ</rt></ruby>からでちょうどいい。<ruby>本人<rt>ほんにん</rt></ruby>が<ruby>用意<rt>ようい</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>と<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>出<rt>だ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>と、<ruby>分<rt>わ</rt></ruby>けておくと<ruby>楽<rt>らく</rt></ruby>だ。<br>*(Từ nửa năm trước là vừa. Chia ra giấy tờ bản thân và giấy tờ công ty thì dễ.)* |
| Phong | <ruby>本人<rt>ほんにん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>は<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Phần bản thân cụ thể là gì ạ?)* |
| Carlos | <ruby>整備士<rt>せいびし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>、<ruby>健康<rt>けんこう</rt></ruby><ruby>診断書<rt>しんだんしょ</rt></ruby>。マイナンバーカードがあればコンビニで<ruby>取<rt>と</rt></ruby>れるよ。<br>*(Chứng chỉ 整備士 cấp 3, giấy nộp thuế, juuminhyou, giấy khám sức khoẻ. Có thẻ My Number thì lấy ở konbini cũng được.)* |
| Phong | コンビニで<ruby>取<rt>と</rt></ruby>れるということですね。<ruby>市役所<rt>しやくしょ</rt></ruby>まで<ruby>行<rt>い</rt></ruby>かなくていいんだ。<br>*(Lấy được ở konbini ạ. Khỏi phải lên thị uỷ nhỉ.)* |
| Carlos | <ruby>平日<rt>へいじつ</rt></ruby><ruby>仕事<rt>しごと</rt></ruby>の<ruby>俺<rt>おれ</rt></ruby>たちには<ruby>助<rt>たす</rt></ruby>かるな。<br>*(Bọn mình đi làm ngày thường thì tiện lắm.)* |

---

## Tình huống 7 — Văn phòng · 14:00, Phong xin Suzuki danh sách giấy tờ chi tiết

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>鈴木<rt>すずき</rt></ruby>さん、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。SSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>一覧<rt>いちらん</rt></ruby>をいただけますか?<br>*(Chị Suzuki, em xin lỗi làm phiền lúc bận. Em xin danh sách giấy tờ cần cho SSW1 được không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | はい。<ruby>今週中<rt>こんしゅうちゅう</rt></ruby>にメールでお<ruby>送<rt>おく</rt></ruby>りします。<ruby>会社<rt>かいしゃ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>は<ruby>雇用<rt>こよう</rt></ruby><ruby>契約書<rt>けいやくしょ</rt></ruby>と<ruby>事業所<rt>じぎょうしょ</rt></ruby><ruby>概要書<rt>がいようしょ</rt></ruby>などです。<br>*(Vâng. Tuần này tôi gửi email. Phần công ty là hợp đồng lao động, bản tổng quan cơ sở...)* |
| Phong | <ruby>事業所<rt>じぎょうしょ</rt></ruby><ruby>概要書<rt>がいようしょ</rt></ruby>というのは、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>ですか?<br>*(Bản tổng quan cơ sở là giấy mô tả công ty ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | そうです。<ruby>従業員数<rt>じゅうぎょういんすう</rt></ruby>、<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>、<ruby>就労<rt>しゅうろう</rt></ruby><ruby>場所<rt>ばしょ</rt></ruby>などを<ruby>記載<rt>きさい</rt></ruby>します。フォンさん<ruby>本人<rt>ほんにん</rt></ruby>は<ruby>用意<rt>ようい</rt></ruby>しなくて<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Đúng. Ghi số nhân viên, nội dung công việc, nơi làm việc. Phong không cần chuẩn bị.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本人<rt>ほんにん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby><ruby>開始<rt>かいし</rt></ruby>でよろしいでしょうか?<br>*(Em rõ. Phần bản thân bắt đầu chuẩn bị từ tháng 10 được không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | はい、それで<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>います。<ruby>分<rt>わ</rt></ruby>からないことがあったらいつでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Vâng, đủ kịp. Có gì không hiểu cứ hỏi.)* |

---

## Tình huống 8 — Khu lift số 1 · 15:30, 整備士長 Yamada giao xe đầu năm cho Phong

| Vai | Lời thoại |
|---|---|
| <ruby>山田<rt>やまだ</rt></ruby> | フォン、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby><ruby>最初<rt>さいしょ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だ。アクアの<ruby>12<rt>じゅうに</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>担当<rt>たんとう</rt></ruby>してくれ。<br>*(Phong, việc đầu năm 3. Em phụ trách một mình bảo dưỡng 12 tháng cho Aqua.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>点検<rt>てんけん</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>シートをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Cho em xin bảng các mục kiểm tra ạ.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | ここに。<ruby>下回<rt>したまわ</rt></ruby>り、<ruby>油<rt>あぶら</rt></ruby><ruby>類<rt>るい</rt></ruby>、ブレーキパッド、タイヤの<ruby>溝<rt>みぞ</rt></ruby>、バッテリー<ruby>電圧<rt>でんあつ</rt></ruby>。<br>*(Đây. Gầm xe, các loại dầu, má phanh, rãnh lốp, điện áp bình.)* |
| Phong | <ruby>確認<rt>かくにん</rt></ruby>させてください。タイヤの<ruby>溝<rt>みぞ</rt></ruby>は<ruby>1.6<rt>いってんろく</rt></ruby>ミリ<ruby>以下<rt>いか</rt></ruby>なら<ruby>交換<rt>こうかん</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>でよろしいでしょうか?<br>*(Cho em xác nhận. Rãnh lốp dưới 1.6mm thì đề xuất thay đúng không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | そう。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>する<ruby>準備<rt>じゅんび</rt></ruby>もしておいてくれ。<br>*(Đúng. Chuẩn bị cả phần giải thích cho khách nữa.)* |
| Phong | はい、<ruby>整備<rt>せいび</rt></ruby><ruby>完了後<rt>かんりょうご</rt></ruby>に<ruby>結果<rt>けっか</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Vâng, bảo dưỡng xong em sẽ báo cáo kết quả.)* |

---

## Tình huống 9 — Khu lift số 1 · 16:30, Phong báo cáo phát hiện bất thường

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>報告<rt>ほうこく</rt></ruby>です。アクアの<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>、ブレーキパッドの<ruby>残量<rt>ざんりょう</rt></ruby>が<ruby>前<rt>まえ</rt></ruby><ruby>輪<rt>りん</rt></ruby><ruby>2<rt>に</rt></ruby>ミリでした。<br>*(Anh Yamada, em báo cáo. Kiểm tra Aqua, độ dày má phanh bánh trước còn 2mm.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>2<rt>に</rt></ruby>ミリ...<ruby>交換<rt>こうかん</rt></ruby><ruby>時期<rt>じき</rt></ruby>だな。お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>提案<rt>ていあん</rt></ruby>するか?<br>*(2mm... đến lúc thay rồi. Em đề xuất với khách chứ?)* |
| Phong | はい。<ruby>新品<rt>しんぴん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>10<rt>じゅう</rt></ruby>ミリ、<ruby>限界<rt>げんかい</rt></ruby><ruby>1<rt>いち</rt></ruby>ミリということで、<ruby>残<rt>のこ</rt></ruby>り<ruby>2<rt>に</rt></ruby>ミリは<ruby>早<rt>はや</rt></ruby>めの<ruby>交換<rt>こうかん</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Vâng. Mới là 10mm, giới hạn 1mm, còn 2mm em đề xuất thay sớm.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>説明<rt>せつめい</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>、<ruby>練習<rt>れんしゅう</rt></ruby>して<ruby>俺<rt>おれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>かせてみて。<br>*(Em luyện cách giải thích rồi nói cho anh nghe thử.)* |
| Phong | はい。「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>でブレーキパッドの<ruby>残<rt>のこ</rt></ruby>りが<ruby>2<rt>に</rt></ruby>ミリでした。<ruby>限界値<rt>げんかいち</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>いため、<ruby>早期<rt>そうき</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>をお<ruby>勧<rt>すす</rt></ruby>めします。<ruby>費用<rt>ひよう</rt></ruby>は<ruby>前輪<rt>ぜんりん</rt></ruby><ruby>左右<rt>さゆう</rt></ruby>で<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>千円<rt>せんえん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です」。<br>*(Vâng. "Kiểm tra hôm nay má phanh còn 2mm. Gần ngưỡng giới hạn nên kính đề nghị thay sớm. Chi phí hai bánh trước khoảng 12.000 yên.")* |
| <ruby>山田<rt>やまだ</rt></ruby> | いいね。<ruby>数字<rt>すうじ</rt></ruby>と<ruby>費用<rt>ひよう</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせて<ruby>言<rt>い</rt></ruby>うのが<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>らしい。<br>*(Hay. Nói đủ con số kèm chi phí, ra dáng năm 3 rồi.)* |

---

## Tình huống 10 — Khu nghỉ giữa ca · 17:00, Phong và Tuấn lên lịch ôn yasashii nihongo

| Vai | Lời thoại |
|---|---|
| Tuấn | フォン<ruby>兄<rt>にい</rt></ruby>さん、ドゥックさんが<ruby>来<rt>く</rt></ruby>る<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>までの<ruby>予定<rt>よてい</rt></ruby>を<ruby>立<rt>た</rt></ruby>てたいです。<br>*(Anh Phong, em muốn lên lịch trước ngày 15/5 Đức đến.)* |
| Phong | いいね。<ruby>四<rt>よっ</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>けよう。<ruby>第一週<rt>だいいっしゅう</rt></ruby>:<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>自己<rt>じこ</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>。<ruby>第二週<rt>だいにしゅう</rt></ruby>:<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>。<br>*(Được. Chia 4 tuần. Tuần 1: chào hỏi và tự giới thiệu. Tuần 2: tên dụng cụ.)* |
| Tuấn | <ruby>第三週<rt>だいさんしゅう</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>規則<rt>きそく</rt></ruby>でいいですか?<br>*(Tuần 3 là quy tắc an toàn được không ạ?)* |
| Phong | そう。<ruby>保護<rt>ほご</rt></ruby>メガネ、<ruby>軍手<rt>ぐんて</rt></ruby>、<ruby>立<rt>た</rt></ruby>ち<ruby>位置<rt>いち</rt></ruby>、リフトの<ruby>下<rt>した</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>時<rt>とき</rt></ruby>の<ruby>合図<rt>あいず</rt></ruby>。<ruby>第四週<rt>だいよんしゅう</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby><ruby>動作<rt>どうさ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる。<br>*(Đúng. Kính bảo hộ, găng tay, vị trí đứng, ám hiệu khi chui xuống lift. Tuần 4 cho xem động tác cơ bản thay dầu.)* |
| Tuấn | <ruby>合図<rt>あいず</rt></ruby>...というのは、<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すことですか?<br>*(Ám hiệu... là lên tiếng phát ra phải không ạ?)* |
| Phong | そう。「リフト<ruby>下<rt>した</rt></ruby>、<ruby>入<rt>はい</rt></ruby>ります」と<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す。<ruby>事故<rt>じこ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>だ。<br>*(Đúng. Phải hô "Vào dưới lift đây". Cơ bản phòng tai nạn.)* |
| Tuấn | はい、ノートに<ruby>整理<rt>せいり</rt></ruby>しておきます。<br>*(Vâng, em sắp xếp vào sổ.)* |

---

## Tình huống 11 — Lối ra xưởng · 18:00, Phong hỏi Carlos kinh nghiệm 整備士2級

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>はどう<ruby>進<rt>すす</rt></ruby>めましたか?<br>*(Anh Carlos, anh học lý thuyết cấp 2 thế nào ạ?)* |
| Carlos | <ruby>過去問<rt>かこもん</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>解<rt>と</rt></ruby>いた。<ruby>振興会<rt>しんこうかい</rt></ruby>の<ruby>問題集<rt>もんだいしゅう</rt></ruby>がいい。<br>*(Đề năm trước 3 năm, làm 3 lượt. Bộ đề của Hiệp hội bảo dưỡng tốt.)* |
| Phong | <ruby>苦手<rt>にがて</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>はありましたか?<br>*(Anh có phần nào yếu không ạ?)* |
| Carlos | <ruby>電気<rt>でんき</rt></ruby><ruby>装置<rt>そうち</rt></ruby>と<ruby>法令<rt>ほうれい</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しかった。<ruby>特<rt>とく</rt></ruby>に<ruby>道路<rt>どうろ</rt></ruby><ruby>運送<rt>うんそう</rt></ruby><ruby>車両<rt>しゃりょう</rt></ruby><ruby>法<rt>ほう</rt></ruby>。<br>*(Hệ thống điện và luật khó. Đặc biệt là Luật phương tiện vận tải đường bộ.)* |
| Phong | <ruby>法令<rt>ほうれい</rt></ruby>...というのは<ruby>法律<rt>ほうりつ</rt></ruby>のことですよね。<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しそうです。<br>*(法令 là luật phải không ạ. Tiếng Nhật chắc khó.)* |
| Carlos | そう。<ruby>用語<rt>ようご</rt></ruby>カードを<ruby>作<rt>つく</rt></ruby>って、<ruby>通勤<rt>つうきん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えるのが<ruby>俺<rt>おれ</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>だった。<ruby>貸<rt>か</rt></ruby>すよ、<ruby>俺<rt>おれ</rt></ruby>のノート。<br>*(Đúng. Anh làm thẻ thuật ngữ, học lúc đi làm về. Anh cho mượn vở.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>ですか? <ruby>助<rt>たす</rt></ruby>かります。ありがとうございます。<br>*(Thật ạ? Cứu em rồi. Em cảm ơn anh.)* |

---

## Tình huống 12 — Phòng thay đồ · 18:30, 整備士長 Yamada nói về 信頼

| Vai | Lời thoại |
|---|---|
| <ruby>山田<rt>やまだ</rt></ruby> | フォン、<ruby>今日<rt>きょう</rt></ruby>のブレーキ<ruby>提案<rt>ていあん</rt></ruby>、よかった。<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>は<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>積<rt>つ</rt></ruby>む<ruby>年<rt>とし</rt></ruby>だ。<br>*(Phong, đề xuất phanh hôm nay tốt. Năm 3 là năm tích uy tín.)* |
| Phong | <ruby>信頼<rt>しんらい</rt></ruby>を<ruby>積<rt>つ</rt></ruby>む...どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Tích uy tín... nghĩa thế nào ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>毎日<rt>まいにち</rt></ruby>の<ruby>小<rt>ちい</rt></ruby>さい<ruby>仕事<rt>しごと</rt></ruby>を<ruby>確実<rt>かくじつ</rt></ruby>にやる。それが<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>なって、お<ruby>客様<rt>きゃくさま</rt></ruby>も<ruby>同僚<rt>どうりょう</rt></ruby>もフォンに<ruby>任<rt>まか</rt></ruby>せられると<ruby>思<rt>おも</rt></ruby>うようになる。<br>*(Làm việc nhỏ hàng ngày cho chắc chắn. Chồng lên nhau, khách và đồng nghiệp sẽ nghĩ "giao cho Phong được".)* |
| Phong | <ruby>給料<rt>きゅうりょう</rt></ruby>より<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Quan trọng hơn lương ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>くなら、<ruby>信頼<rt>しんらい</rt></ruby>が<ruby>先<rt>さき</rt></ruby>だ。<ruby>給料<rt>きゅうりょう</rt></ruby>は<ruby>後<rt>あと</rt></ruby>からついてくる。<br>*(Nếu làm lâu, uy tín đi trước. Lương theo sau.)* |
| Phong | はい、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>として<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng, em sẽ ghi nhớ như một lời quan trọng.)* |

---

## Tình huống 13 — Ký túc, phòng ăn · 19:30, Phong và Tuấn ôn từ chuyên ngành SSW1

| Vai | Lời thoại |
|---|---|
| Phong | いただきます。<br>*(Mời ăn.)* |
| Tuấn | いただきます。<ruby>兄<rt>にい</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>「<ruby>受検<rt>じゅけん</rt></ruby><ruby>資格<rt>しかく</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>きましたが、<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>と<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>で<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんですか?<br>*(Mời ăn. Anh, hôm nay em nghe "受検資格", cấp 3 và cấp 2 khác gì nhau ạ?)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>受<rt>う</rt></ruby>けられる。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得後<rt>しゅとくご</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>だ。<br>*(Cấp 3 cần 1 năm kinh nghiệm. Cấp 2 cần thêm 3 năm sau cấp 3.)* |
| Tuấn | <ruby>長<rt>なが</rt></ruby>いですね。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>ると<ruby>何<rt>なに</rt></ruby>がいいんですか?<br>*(Lâu nhỉ. Có cấp 2 thì được gì ạ?)* |
| Phong | <ruby>分解<rt>ぶんかい</rt></ruby><ruby>整備<rt>せいび</rt></ruby>ができる。エンジンやミッションを<ruby>分<rt>わ</rt></ruby>けて<ruby>整備<rt>せいび</rt></ruby>する<ruby>許可<rt>きょか</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>作業<rt>さぎょう</rt></ruby>だ。<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がる。<br>*(Được làm bảo dưỡng tháo lắp. Tháo engine, hộp số là việc cần giấy phép. Lương cũng tăng.)* |
| Tuấn | じゃあ<ruby>俺<rt>おれ</rt></ruby>も<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>から<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vậy em cũng cố từ cấp 3.)* |
| Phong | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける<ruby>時<rt>とき</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>がSSW1で<ruby>支<rt>ささ</rt></ruby>えるよ。<br>*(Hè sang năm em thi cấp 3, anh đang là SSW1 sẽ hỗ trợ.)* |

---

## Tình huống 14 — Phòng Phong · 21:00, gọi điện về Hải Phòng báo tin năm 3

> Cảnh tiếng Việt — gọi điện về VN, ôn lại từ JP qua trao đổi với mẹ và bố (bố làm cơ khí).

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Mẹ ơi, hôm nay con họp đầu năm tài khoá Nhật. Sếp Sato thông báo tháng 4 năm sau con sẽ chuyển sang SSW1 — kỹ năng đặc định số 1, vẫn ở công ty này. |
| Mẹ | (tiếng Việt) Mẹ mừng quá Phong. Vậy là con đi tiếp 5 năm nữa được không? |
| Phong | (tiếng Việt) Vâng, SSW1 là 5 năm. Trong 5 năm đó con sẽ thi 自動車整備士 cấp 2 — bảo dưỡng ô tô bậc 2. Có cấp 2 là được làm 分解整備 — tức là tháo engine với hộp số ra để bảo dưỡng đó mẹ. |
| Bố | (tiếng Việt, cầm máy) Cha mày, vậy là chính ngạch rồi nhỉ? Ở nhà nghề cơ khí mà có cái bằng đó là to lắm. |
| Phong | (tiếng Việt) Bố ơi, sếp xưởng hôm nay nói câu này hay lắm: 信頼 — shinrai, nghĩa là uy tín. Sếp bảo "Năm 3 là năm tích uy tín, lương sẽ theo sau". |
| Bố | (tiếng Việt) Đúng đó. Ở Hải Phòng làm thợ máy cũng vậy, người ta tin mình thì khách quay lại, lương rồi cũng có. |
| Mẹ | (tiếng Việt, cầm máy lại) Có kohai mới chưa con? |
| Phong | (tiếng Việt) Có ạ, tháng 5 này Đức sang. Em đó năm 1. Bạn Tuấn em đang lo phụ trách kèm, con là phụ tá, anh em thực tập sinh Việt Nam có ba người luôn rồi. |
| Mẹ | (tiếng Việt) Tốt quá. Có anh em đỡ buồn. Con nhớ chỉ Đức cho tử tế nhé. |
| Phong | (tiếng Việt) Vâng ạ. Tuần này con và Tuấn lên lịch yasashii nihongo — tiếng Nhật dễ — bốn tuần cho Đức rồi. Mẹ với bố giữ sức khoẻ, tuần sau con gọi. |

---

## Tình huống 15 — Ký túc, bàn học · 22:30, Phong ghi sổ kế hoạch năm bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>。<ruby>確認<rt>かくにん</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<br>*(Mùng 1 tháng 4, ngày đầu năm 3. Sắp xếp các hạng mục xác nhận.)* |
| Phong | <ruby>一<rt>いち</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>。<ruby>過去問<rt>かこもん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>。<br>*(Một, tháng 10 thi lý thuyết 整備士 cấp 2. Đề năm trước 3 năm, 3 lượt.)* |
| Phong | <ruby>二<rt>に</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>JLPT N3。<ruby>三<rt>さん</rt></ruby>、ドゥックさんの<ruby>指導<rt>しどう</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>(<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>〜)、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜<rt>どよう</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>。<br>*(Hai, JLPT N3 tháng 12. Ba, hỗ trợ kèm Đức (từ tháng 5), tối thứ Bảy hàng tuần ôn.)* |
| Phong | <ruby>四<rt>し</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>。<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>はコンビニ。<br>*(Bốn, từ tháng 10 chuẩn bị hồ sơ SSW1. Giấy nộp thuế ở konbini.)* |
| Phong | <ruby>五<rt>ご</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>確実<rt>かくじつ</rt></ruby>に。<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>積<rt>つ</rt></ruby>む<ruby>年<rt>とし</rt></ruby>。<br>*(Năm, việc hàng ngày làm cho chắc. Năm tích uy tín.)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Từng cái một, chắc chắn. Cố lên.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá 2027, Phong nhận thông báo chuyển sang **特定技能1号 自動車整備** từ tháng 4/2028 và vào vai sempai-of-sempai khi kohai Đức sắp sang. Học các mẫu câu chuyển giai đoạn: trình bày kế hoạch năm có **số thứ tự (一つ目・二つ目・三つ目・四つ目)** với 工場長 Sato, xác nhận thông tin bằng **〜ということですね**, hỏi lại lễ phép từ chuyên ngành **〜というのは?** (受検資格・実技試験・事業所概要書・法令・合図), bàn giao nhiệm vụ bằng **〜をお願いします**, báo cáo phát hiện bằng **報告です + 数字 + 提案します**, và xin ý kiến đàn anh bằng **少し伺ってもよろしいですか**. Đồng thời học cách coach kohai bằng **やさしい日本語** — câu ngắn, một thông tin / câu, kèm chỉ vật thật — và thấm câu của 山田整備士長: **信頼を積む** — uy tín đi trước, lương theo sau.

> Từ vựng & mẫu câu chương này: 3年目・最終年・特定技能1号・自動車整備士2級・3級・受検資格・実技試験・学科試験・分解整備・整備振興会・指導担当・指導補佐・申請書類・納税証明書・事業所概要書・雇用契約書・点検項目・ブレーキパッド残量・限界値・早期交換・信頼・仲間・やさしい日本語・〜というのは・〜ということですね・〜をお願いします・少し伺ってもよろしいですか・報連相

---

## Bí quyết chương

- **3年目 = năm dạy lại + năm chuẩn bị SSW1**: việc của Phong không còn là làm cho xong, mà là **làm cho Đức nhìn thấy chuẩn**.
- **指導担当 vs 指導補佐**: chỉ có một người chính (Tuấn), Phong KHÔNG được dẫm vai. Cách nói nhường: 「トゥアンさんに<ruby>確認<rt>かくにん</rt></ruby>してから〜」.
- **やさしい日本語 cho xưởng**: tách 4 ý / 1 thao tác — "đây là gì + bao nhiêu mm + tay nào cầm + xoay chiều nào". Không bao giờ một câu trộn 2 thao tác.
- **報告 chuẩn năm 3**: phải đi kèm **con số (mm/円/年) + đề xuất (提案します)**, không chỉ thông báo trống.
- **自動車整備士2級 受検資格**: cần 3 năm thực tế sau cấp 3 → Phong thi lý thuyết trước trong SSW1, thi thực hành về sau.
- **信頼を積む**: lời 整備士長 — uy tín nhỏ tích lại; cốt lõi văn hoá garage Nhật, khác hẳn "đổi việc lấy lương cao".

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 年度 | ねんど | NIÊN ĐỘ | năm tài khoá |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 最終年 | さいしゅうねん | TỐI CHUNG NIÊN | năm cuối |
| 特定技能1号 | とくていぎのういちごう | ĐẶC ĐỊNH KỸ NĂNG NHẤT HIỆU | kỹ năng đặc định số 1 (SSW1) |
| 自動車整備 | じどうしゃせいび | TỰ ĐỘNG XA CHỈNH BỊ | bảo dưỡng ô tô |
| 勤務継続 | きんむけいぞく | CẦN VỤ KẾ TỤC | tiếp tục công tác |
| 新人 | しんじん | TÂN NHÂN | người mới |
| 指導担当 | しどうたんとう | CHỈ ĐẠO ĐẢM ĐƯƠNG | người phụ trách hướng dẫn |
| 補佐 | ほさ | BỔ TÁ | trợ tá, phụ tá |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | báo cáo - liên lạc - bàn bạc |
| 承知 | しょうち | THỪA TRI | hiểu, rõ ý |
| 工具 | こうぐ | CÔNG CỤ | dụng cụ |
| 安全規則 | あんぜんきそく | AN TOÀN QUY TẮC | quy tắc an toàn |
| 軍手 | ぐんて | QUÂN THỦ | găng tay vải |
| 保護メガネ | ほごメガネ | BẢO HỘ — | kính bảo hộ |
| 名札 | なふだ | DANH TRÁT | biển tên |
| 事務所 | じむしょ | SỰ VỤ SỞ | văn phòng |
| 自動車整備士 | じどうしゃせいびし | TỰ ĐỘNG XA CHỈNH BỊ SỸ | thợ bảo dưỡng ô tô (chứng chỉ) |
| 学科試験 | がっかしけん | HỌC KHOA THỬ NGHIỆM | thi lý thuyết |
| 実技試験 | じつぎしけん | THỰC KỸ THỬ NGHIỆM | thi thực hành |
| 受検資格 | じゅけんしかく | THỤ KIỂM TƯ CÁCH | điều kiện dự thi |
| 実務経験 | じつむけいけん | THỰC VỤ KINH NGHIỆM | kinh nghiệm thực tế |
| 整備振興会 | せいびしんこうかい | CHỈNH BỊ CHẤN HƯNG HỘI | Hiệp hội bảo dưỡng |
| 講習 | こうしゅう | GIẢNG TẬP | khoá học |
| 免除 | めんじょ | MIỄN TRỪ | miễn (thi) |
| 合格証明書 | ごうかくしょうめいしょ | HỢP CÁCH CHỨNG MINH THƯ | giấy chứng nhận đậu |
| 申請書類 | しんせいしょるい | THÂN THỈNH THƯ LOẠI | hồ sơ xin |
| 雇用契約書 | こようけいやくしょ | CỐ DỤNG KHẾ ƯỚC THƯ | hợp đồng lao động |
| 事業所概要書 | じぎょうしょがいようしょ | SỰ NGHIỆP SỞ KHÁI YẾU THƯ | bản tổng quan cơ sở |
| 納税証明書 | のうぜいしょうめいしょ | NẠP THUẾ CHỨNG MINH THƯ | giấy chứng nhận nộp thuế |
| 住民票 | じゅうみんひょう | TRỤ DÂN PHIẾU | giấy đăng ký cư trú |
| 健康診断書 | けんこうしんだんしょ | KIỆN KHANG CHẨN ĐOÁN THƯ | giấy khám sức khoẻ |
| 点検項目 | てんけんこうもく | ĐIỂM KIỂM HẠNG MỤC | mục kiểm tra |
| 下回り | したまわり | HẠ HỒI | gầm xe |
| 油類 | あぶらるい | DU LOẠI | các loại dầu |
| ブレーキパッド | ブレーキパッド | — | má phanh |
| 残量 | ざんりょう | TÀN LƯỢNG | lượng còn lại |
| 限界値 | げんかいち | HẠN GIỚI TRỊ | giá trị giới hạn |
| 早期交換 | そうきこうかん | TẢO KỲ GIAO HOÁN | thay sớm |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 分解整備 | ぶんかいせいび | PHÂN GIẢI CHỈNH BỊ | bảo dưỡng tháo lắp |
| ミッション | ミッション | — | hộp số |
| 電気装置 | でんきそうち | ĐIỆN KHÍ TRANG TRỊ | hệ thống điện |
| 法令 | ほうれい | PHÁP LỆNH | luật, pháp lệnh |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi năm trước |
| 問題集 | もんだいしゅう | VẤN ĐỀ TẬP | bộ đề |
| 合図 | あいず | HỢP ĐỒ | ám hiệu |
| 事故防止 | じこぼうし | SỰ CỐ PHÒNG CHỈ | phòng tai nạn |
| 信頼 | しんらい | TÍN LẠI | uy tín, sự tin cậy |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 確認事項 | かくにんじこう | XÁC NHẬN SỰ HẠNG | hạng mục xác nhận |
| 遠慮 | えんりょ | VIỄN LỰ | ngại, e ngại |
| 整理 | せいり | CHỈNH LÝ | sắp xếp |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 通勤 | つうきん | THÔNG CẦN | đi làm |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000002, 800000045, NULL, 'markdown_book', 'T2. Đăng ký SSW1 — mensetsu với 工場長 (特定技能1号申請・面接)', '# Sách thực tập sinh ô tô · T2. Đăng ký SSW1 — mensetsu với 工場長 (特定技能1号申請・面接)

> **Mục tiêu nhân vật:** Phong (23 tuổi, Hải Phòng) chuẩn bị hồ sơ chuyển từ TTS năm 3 sang **特定技能1号 自動車整備**. Học các mẫu hội thoại tiếng Nhật cho quy trình申請 SSW1: tự xin **正式な面接** với 工場長 Sato, trình bày động cơ bằng **〜たいと考えております**, trả lời câu hỏi chuyên ngành (経験・強み・弱み・キャリアプラン) bằng keigo, xác nhận **雇用条件通知書** điều khoản lương-giờ-bảo hiểm, hỏi lễ phép **〜について教えていただけますか**, ký **書類記入** ở chi nhánh **行政書士事務所**, và báo cáo tiến độ bằng **〜まで完了いたしました**.

---

## Bối cảnh

Tháng 5 năm 2027, Phong vào tháng thứ 2 năm 3 tại Garage Anjo. Đức (kohai năm 1) đã sang được 2 tuần. Sếp Sato thông báo lịch **正式な面接** SSW1 vào sáng thứ Năm để chốt sớm hồ sơ. Văn phòng phối hợp với 行政書士 Watanabe ở Okazaki làm thủ tục **在留資格変更許可申請**. Chương này tập trung mẫu câu cho cả hai phía: chuẩn bị-mensetsu chính thức và quy trình giấy tờ pháp lý.

---

## Tình huống 1 — Phòng văn phòng · 8:30, Suzuki giao lịch mensetsu chính thức cho Phong

| Vai | Lời thoại |
|---|---|
| <ruby>鈴木<rt>すずき</rt></ruby> | フォンさん、おはようございます。SSW1の<ruby>正式<rt>せいしき</rt></ruby>な<ruby>面接<rt>めんせつ</rt></ruby>の<ruby>日程<rt>にってい</rt></ruby>が<ruby>決<rt>き</rt></ruby>まりました。<br>*(Phong-san, chào buổi sáng. Đã chốt lịch phỏng vấn chính thức SSW1.)* |
| Phong | おはようございます。いつになりましたか?<br>*(Chào buổi sáng. Khi nào ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | <ruby>今週<rt>こんしゅう</rt></ruby><ruby>木曜日<rt>もくようび</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>はつか</rt></ruby><ruby>日<rt>か</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>から、<ruby>会議室<rt>かいぎしつ</rt></ruby>Aで<ruby>佐藤<rt>さとう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>と<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>が<ruby>同席<rt>どうせき</rt></ruby>します。<br>*(Thứ Năm tuần này, 20/5, từ 9 giờ sáng tại phòng họp A. Sếp Sato và 整備士長 Yamada cùng dự.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>当日<rt>とうじつ</rt></ruby>、<ruby>準備<rt>じゅんび</rt></ruby>するものを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Em rõ. Em xin được biết hôm đó cần chuẩn bị gì ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | <ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>のコピー、<ruby>履歴書<rt>りれきしょ</rt></ruby>、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>を<ruby>書<rt>か</rt></ruby>いた<ruby>用紙<rt>ようし</rt></ruby>。<ruby>服装<rt>ふくそう</rt></ruby>は<ruby>作業着<rt>さぎょうぎ</rt></ruby>ではなく、<ruby>清潔<rt>せいけつ</rt></ruby>な<ruby>私服<rt>しふく</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bản photo chứng chỉ cấp 3, sơ yếu lý lịch, đơn ghi động cơ. Trang phục không mặc đồ làm, mặc đồ thường sạch sẽ.)* |
| Phong | はい、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>の<ruby>用紙<rt>ようし</rt></ruby>はテンプレートがありますか?<br>*(Vâng, đơn động cơ có mẫu sẵn không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | あります。<ruby>後<rt>あと</rt></ruby>でメールします。A4<ruby>一<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>、<ruby>手書<rt>てが</rt></ruby>きが<ruby>望<rt>のぞ</rt></ruby>ましいです。<br>*(Có. Lát tôi gửi email. A4 một trang, viết tay là tốt nhất.)* |
| Phong | <ruby>手書<rt>てが</rt></ruby>き...ということですね。<ruby>水曜日<rt>すいようび</rt></ruby>までに<ruby>下書<rt>したが</rt></ruby>きを<ruby>見<rt>み</rt></ruby>ていただいてもよろしいでしょうか?<br>*(Viết tay... đúng không ạ. Trước thứ Tư em đưa anh xem nháp được không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | もちろん、いつでもどうぞ。<br>*(Đương nhiên, lúc nào cũng được.)* |

---

## Tình huống 2 — Khu lift số 2 · 10:00, Phong xin 整備士長 Yamada lời khuyên về 志望動機

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby>さん、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。<ruby>木曜日<rt>もくようび</rt></ruby>の<ruby>面接<rt>めんせつ</rt></ruby>について<ruby>少<rt>すこ</rt></ruby>し<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか?<br>*(Anh Yamada, em xin lỗi làm phiền. Em hỏi về phỏng vấn thứ Năm được không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | どうぞ。<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>のことか?<br>*(Mời. Chuyện động cơ à?)* |
| Phong | はい。<ruby>正直<rt>しょうじき</rt></ruby>に「<ruby>給料<rt>きゅうりょう</rt></ruby>を<ruby>稼<rt>かせ</rt></ruby>ぎたい」と<ruby>書<rt>か</rt></ruby>くのは<ruby>失礼<rt>しつれい</rt></ruby>でしょうか?<br>*(Vâng. Em viết thẳng "muốn kiếm lương" thì có thất lễ không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>失礼<rt>しつれい</rt></ruby>ではないが、<ruby>面接<rt>めんせつ</rt></ruby><ruby>用<rt>よう</rt></ruby>には<ruby>足<rt>た</rt></ruby>りない。<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んだ<ruby>技術<rt>ぎじゅつ</rt></ruby>、これから<ruby>身<rt>み</rt></ruby>につけたい<ruby>技術<rt>ぎじゅつ</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>でどう<ruby>貢献<rt>こうけん</rt></ruby>したいか、の<ruby>三<rt>みっ</rt></ruby>つを<ruby>軸<rt>じく</rt></ruby>にしろ。<br>*(Không thất lễ, nhưng cho phỏng vấn thì chưa đủ. Lấy 3 trục: kỹ thuật học được 2 năm qua, kỹ thuật muốn nắm tiếp, và cách đóng góp cho công ty.)* |
| Phong | <ruby>三<rt>みっ</rt></ruby>つの<ruby>軸<rt>じく</rt></ruby>...ということですね。<ruby>具体的<rt>ぐたいてき</rt></ruby>に、これまでの<ruby>技術<rt>ぎじゅつ</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>とブレーキ<ruby>整備<rt>せいび</rt></ruby>でいいですか?<br>*(Ba trục... đúng không ạ. Cụ thể, kỹ thuật đến giờ là thay dầu và bảo dưỡng phanh được không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | プラス、<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>下回<rt>したまわ</rt></ruby>り<ruby>点検<rt>てんけん</rt></ruby>と<ruby>12<rt>じゅうに</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>。これからは<ruby>分解<rt>ぶんかい</rt></ruby><ruby>整備<rt>せいび</rt></ruby>と<ruby>電気<rt>でんき</rt></ruby><ruby>系<rt>けい</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>と<ruby>書<rt>か</rt></ruby>け。<br>*(Thêm kiểm tra gầm 車検 và bảo dưỡng 12 tháng. Sắp tới viết là tháo lắp và chẩn đoán điện.)* |
| Phong | <ruby>貢献<rt>こうけん</rt></ruby>については、<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>の<ruby>補佐<rt>ほさ</rt></ruby>と<ruby>多言語<rt>たげんご</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>でよろしいでしょうか?<br>*(Phần đóng góp, em viết hỗ trợ kèm kohai và xử lý đa ngôn ngữ được không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | いい<ruby>視点<rt>してん</rt></ruby>だ。ベトナム<ruby>人<rt>じん</rt></ruby><ruby>後輩<rt>こうはい</rt></ruby>の<ruby>橋渡<rt>はしわた</rt></ruby>しになると<ruby>書<rt>か</rt></ruby>け。<br>*(Góc nhìn tốt. Viết là làm cầu nối cho kohai Việt Nam.)* |
| Phong | <ruby>橋渡<rt>はしわた</rt></ruby>し...という<ruby>言葉<rt>ことば</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Hashiwatashi... em mới nghe. Em sẽ nhớ.)* |

---

## Tình huống 3 — Ký túc, bàn học · 21:00 hôm đó, Phong viết nháp 志望動機

> Phong viết nháp một mình, độc thoại ngắn để soát từ. Không phải đối thoại bảng.

*Phong viết nháp 志望動機 trên giấy A4, đọc lại từng câu để chỉnh từ.*

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>は<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>来日<rt>らいにち</rt></ruby>し、<ruby>安城<rt>あんじょう</rt></ruby><ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備<rt>せいび</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>させていただきました。<br>*(Động cơ ứng tuyển. Tôi sang Nhật tháng 5/2025, đã được làm 2 năm tại Garage Anjo.)* |
| Phong | この<ruby>間<rt>あいだ</rt></ruby>に、オイル<ruby>交換<rt>こうかん</rt></ruby>・ブレーキ<ruby>整備<rt>せいび</rt></ruby>・<ruby>12<rt>じゅうに</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>・<ruby>車検<rt>しゃけん</rt></ruby><ruby>下回<rt>したまわ</rt></ruby>り<ruby>点検<rt>てんけん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>習得<rt>しゅうとく</rt></ruby>し、<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>いたしました。<br>*(Trong thời gian này tôi đã nắm các kỹ thuật cơ bản và lấy được 自動車整備士 cấp 3.)* |
| Phong | <ruby>今後<rt>こんご</rt></ruby>は<ruby>分解<rt>ぶんかい</rt></ruby><ruby>整備<rt>せいび</rt></ruby>と<ruby>電気<rt>でんき</rt></ruby><ruby>系<rt>けい</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけ、<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>取得<rt>しゅとく</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Sau này tôi muốn nắm kỹ thuật tháo lắp và chẩn đoán điện, nhắm tới cấp 2.)* |
| Phong | また、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>後輩<rt>こうはい</rt></ruby>の<ruby>育成<rt>いくせい</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby>を<ruby>通<rt>つう</rt></ruby>じて、<ruby>多言語<rt>たげんご</rt></ruby>の<ruby>橋渡<rt>はしわた</rt></ruby>しとして<ruby>当社<rt>とうしゃ</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Đồng thời thông qua hỗ trợ đào tạo kohai Việt Nam, tôi muốn đóng góp cho công ty với vai cầu nối đa ngôn ngữ.)* |
| Phong | <ruby>以上<rt>いじょう</rt></ruby>の<ruby>理由<rt>りゆう</rt></ruby>から、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>として<ruby>当社<rt>とうしゃ</rt></ruby>での<ruby>勤務<rt>きんむ</rt></ruby>を<ruby>志望<rt>しぼう</rt></ruby>いたします。<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vì các lý do trên, tôi xin được tiếp tục làm việc với tư cách 特定技能1号 tại công ty. Kính mong được xem xét.)* |

---

## Tình huống 4 — Văn phòng Suzuki · 17:00 thứ Tư, Suzuki sửa bản nháp

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>の<ruby>下書<rt>したが</rt></ruby>きを<ruby>見<rt>み</rt></ruby>ていただきたいのですが、よろしいでしょうか?<br>*(Chị Suzuki, em xin chị xem hộ nháp đơn động cơ được không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | はい、どうぞ。... よく<ruby>書<rt>か</rt></ruby>けています。<ruby>一<rt>いち</rt></ruby><ruby>点<rt>てん</rt></ruby>だけ、<ruby>三<rt>さん</rt></ruby><ruby>段落<rt>だんらく</rt></ruby><ruby>目<rt>め</rt></ruby>の「<ruby>身<rt>み</rt></ruby>につけ」を「<ruby>習得<rt>しゅうとく</rt></ruby>し」に<ruby>変<rt>か</rt></ruby>えてはいかがでしょう。<ruby>履歴書<rt>りれきしょ</rt></ruby><ruby>調<rt>ちょう</rt></ruby>になります。<br>*(Vâng, đưa đây. ... Viết tốt đấy. Một điểm thôi: đoạn 3 đổi "mi ni tsuke" thành "shuutoku shi" thì giọng văn lý lịch hơn.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。「<ruby>身<rt>み</rt></ruby>につけ」と「<ruby>習得<rt>しゅうとく</rt></ruby>」の<ruby>違<rt>ちが</rt></ruby>いはなんでしょうか?<br>*(Em rõ. Khác nhau thế nào giữa "mi ni tsuke" và "shuutoku" ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | <ruby>意味<rt>いみ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じです。「<ruby>習得<rt>しゅうとく</rt></ruby>」の<ruby>方<rt>ほう</rt></ruby>が<ruby>書<rt>か</rt></ruby>き<ruby>言葉<rt>ことば</rt></ruby>で<ruby>正式<rt>せいしき</rt></ruby>な<ruby>場面<rt>ばめん</rt></ruby><ruby>向<rt>む</rt></ruby>き。<ruby>面接<rt>めんせつ</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>では<ruby>漢語<rt>かんご</rt></ruby>が<ruby>多<rt>おお</rt></ruby>めの<ruby>方<rt>ほう</rt></ruby>が<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>見<rt>み</rt></ruby>えます。<br>*(Nghĩa giống. "Shuutoku" là từ viết, hợp khung chính thức. Giấy phỏng vấn thì nhiều từ Hán trông nghiêm túc hơn.)* |
| Phong | なるほど、<ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Ra vậy, em học được rồi. Em cảm ơn chị.)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | あと、<ruby>署名<rt>しょめい</rt></ruby><ruby>欄<rt>らん</rt></ruby>に<ruby>日付<rt>ひづけ</rt></ruby>と<ruby>氏名<rt>しめい</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずに。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>、<ruby>清書<rt>せいしょ</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきてください。<br>*(Và đừng quên ngày và họ tên ở ô chữ ký. Sáng mai mang bản viết sạch đến.)* |

---

## Tình huống 5 — Phòng họp A · 9:00 thứ Năm, mensetsu chính thức bắt đầu

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin phép vào. Hôm nay xin được phỏng vấn ạ.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | おはようございます。お<ruby>座<rt>すわ</rt></ruby>りください。<ruby>緊張<rt>きんちょう</rt></ruby>しないで、いつも<ruby>通<rt>どお</rt></ruby>りで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Chào buổi sáng. Mời ngồi. Đừng căng thẳng, như mọi ngày thôi.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | まず、<ruby>簡単<rt>かんたん</rt></ruby>に<ruby>自己<rt>じこ</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đầu tiên, em tự giới thiệu ngắn.)* |
| Phong | はい。ベトナム・ハイフォン<ruby>出身<rt>しゅっしん</rt></ruby>のフォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>23<rt>にじゅうさん</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>来日<rt>らいにち</rt></ruby>し、<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習生<rt>じっしゅうせい</rt></ruby>として<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>してまいりました。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng. Tôi là Phong, quê Hải Phòng - Việt Nam, 23 tuổi. Tôi sang Nhật tháng 5/2025, đã làm 2 năm tại công ty với tư cách thực tập sinh kỹ năng. Hôm nay xin được phỏng vấn ạ.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | ありがとうございます。これまでの<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>で、<ruby>一番<rt>いちばん</rt></ruby><ruby>身<rt>み</rt></ruby>についた<ruby>技術<rt>ぎじゅつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Cảm ơn. 2 năm qua, kỹ thuật em nắm được nhất là gì?)* |

---

## Tình huống 6 — Phòng họp A · 9:10, câu hỏi 強み・弱み

| Vai | Lời thoại |
|---|---|
| Phong | はい。<ruby>一番<rt>いちばん</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>の<ruby>一連<rt>いちれん</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れです。<ruby>下回<rt>したまわ</rt></ruby>り、<ruby>油類<rt>あぶらるい</rt></ruby>、ブレーキパッド、タイヤの<ruby>溝<rt>みぞ</rt></ruby>まで、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>担当<rt>たんとう</rt></ruby>できるようになりました。<br>*(Vâng. Nhất là quy trình bảo dưỡng 12 tháng. Gầm, các loại dầu, má phanh, rãnh lốp, em đã làm được một mình.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みは<ruby>何<rt>なん</rt></ruby>だと<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Em nghĩ điểm mạnh của mình là gì?)* |
| Phong | <ruby>確認<rt>かくにん</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>らないことです。<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>聞<rt>き</rt></ruby>き、<ruby>数字<rt>すうじ</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>することを<ruby>習慣<rt>しゅうかん</rt></ruby>にしてきました。<br>*(Là không bỏ qua công đoạn xác nhận. Không hiểu thì luôn hỏi sempai, và quen báo cáo bằng con số.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>逆<rt>ぎゃく</rt></ruby>に、<ruby>弱<rt>よわ</rt></ruby>みは?<br>*(Ngược lại, điểm yếu?)* |
| Phong | <ruby>電気<rt>でんき</rt></ruby><ruby>系統<rt>けいとう</rt></ruby>の<ruby>診断<rt>しんだん</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>です。<ruby>配線図<rt>はいせんず</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>力<rt>ちから</rt></ruby>がまだ<ruby>足<rt>た</rt></ruby>りないと<ruby>感<rt>かん</rt></ruby>じています。SSW1<ruby>期間<rt>きかん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>振興会<rt>しんこうかい</rt></ruby>の<ruby>講習<rt>こうしゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けて<ruby>克服<rt>こくふく</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Em yếu chẩn đoán điện. Em thấy đọc sơ đồ dây chưa đủ. Trong SSW1 em muốn theo khoá học Hiệp hội bảo dưỡng để khắc phục.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>弱<rt>よわ</rt></ruby>みを<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>対策<rt>たいさく</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>言<rt>い</rt></ruby>えるのはいい。<br>*(Nói điểm yếu kèm phương án cụ thể là tốt.)* |

---

## Tình huống 7 — Phòng họp A · 9:20, câu hỏi キャリアプラン 5 năm

| Vai | Lời thoại |
|---|---|
| <ruby>佐藤<rt>さとう</rt></ruby> | SSW1は<ruby>最長<rt>さいちょう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。フォンさんの<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(SSW1 tối đa 5 năm. Em nói kế hoạch 5 năm của em.)* |
| Phong | はい。<ruby>三<rt>みっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えております。<ruby>第一<rt>だいいち</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby>と<ruby>実技<rt>じつぎ</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>します。<br>*(Vâng. Em chia 3 giai đoạn. Giai đoạn 1, năm 1-2, em sẽ lấy lý thuyết và thực hành 自動車整備士 cấp 2.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>第二<rt>だいに</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>は?<br>*(Giai đoạn 2?)* |
| Phong | <ruby>第二<rt>だいに</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>から<ruby>4<rt>よん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、JLPT N2を<ruby>取得<rt>しゅとく</rt></ruby>し、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>もできる<ruby>整備士<rt>せいびし</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<ruby>第三<rt>だいさん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>には<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>への<ruby>移行<rt>いこう</rt></ruby>を<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れています。<br>*(Giai đoạn 2, năm 3-4, em lấy JLPT N2, nhắm thành thợ bảo dưỡng tiếp được khách. Giai đoạn 3, năm 5, em tính tới chuyển 特定技能2号.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>になると<ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザも<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る。<ruby>結婚<rt>けっこん</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>などは?<br>*(Lên cấp 2 thì có thể visa lưu trú gia đình. Có dự định kết hôn không?)* |
| Phong | <ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>予定<rt>よてい</rt></ruby>は<ruby>未定<rt>みてい</rt></ruby>です。ですが、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べる<ruby>制度<rt>せいど</rt></ruby>があることは<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Riêng cá nhân chưa định. Nhưng có chế độ đón được gia đình là động lực.)* |

---

## Tình huống 8 — Phòng họp A · 9:35, Phong hỏi ngược về 雇用条件

| Vai | Lời thoại |
|---|---|
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>逆<rt>ぎゃく</rt></ruby>に、フォンさんから<ruby>質問<rt>しつもん</rt></ruby>はありますか?<br>*(Ngược lại, em có câu hỏi không?)* |
| Phong | はい、<ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、SSW1<ruby>移行後<rt>いこうご</rt></ruby>の<ruby>雇用<rt>こよう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Vâng, em có 3 câu. Một, sau khi chuyển SSW1, điều kiện việc làm thế nào ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>基本<rt>きほん</rt></ruby><ruby>給<rt>きゅう</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>から<ruby>25<rt>にじゅうご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得後<rt>しゅとくご</rt></ruby>は<ruby>28<rt>にじゅうはち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がります。<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>代<rt>だい</rt></ruby>は<ruby>別途<rt>べっと</rt></ruby><ruby>支給<rt>しきゅう</rt></ruby>です。<br>*(Lương cơ bản 23-25 vạn yên/tháng, sau khi đậu cấp 2 lên 28 vạn. Tăng ca trả riêng.)* |
| Phong | ありがとうございます。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>と<ruby>厚生<rt>こうせい</rt></ruby><ruby>年金<rt>ねんきん</rt></ruby>の<ruby>加入<rt>かにゅう</rt></ruby>は<ruby>継続<rt>けいぞく</rt></ruby>でよろしいでしょうか?<br>*(Cảm ơn. Hai, bảo hiểm xã hội và 厚生年金 vẫn tiếp tục đúng không ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | はい、<ruby>当然<rt>とうぜん</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>です。<ruby>雇用<rt>こよう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby>に<ruby>明記<rt>めいき</rt></ruby>されます。<br>*(Đúng, đương nhiên tiếp tục. Sẽ ghi rõ trong giấy thông báo điều kiện việc làm.)* |
| Phong | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>住居<rt>じゅうきょ</rt></ruby>は<ruby>現<rt>げん</rt></ruby><ruby>寮<rt>りょう</rt></ruby>を<ruby>継続<rt>けいぞく</rt></ruby>できますか?<br>*(Ba, em ở tiếp ký túc hiện tại được không ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby><ruby>寮<rt>りょう</rt></ruby>を<ruby>提供<rt>ていきょう</rt></ruby>します。<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>家賃<rt>やちん</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby><ruby>付<rt>つ</rt></ruby>きで<ruby>個人<rt>こじん</rt></ruby><ruby>賃貸<rt>ちんたい</rt></ruby>も<ruby>選<rt>えら</rt></ruby>べます。<br>*(2 năm đầu công ty cung cấp ký túc. Từ năm 3 có thể chọn thuê riêng có hỗ trợ tiền nhà.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>大変<rt>たいへん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em rõ. Em học được nhiều. Em cảm ơn ạ.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>面接<rt>めんせつ</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>申請<rt>しんせい</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>きに<ruby>入<rt>はい</rt></ruby>りましょう。<br>*(Phỏng vấn hôm nay đậu. Tuần sau bắt đầu thủ tục xin.)* |

---

## Tình huống 9 — Cổng văn phòng 行政書士 Watanabe ở Okazaki · 14:00 tuần sau

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>安城<rt>あんじょう</rt></ruby><ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備<rt>せいび</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>のフォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>とお<ruby>約束<rt>やくそく</rt></ruby>しております。<br>*(Em xin phép. Em là Phong, Garage Anjo. Em có hẹn 14h với thầy Watanabe.)* |
| <ruby>受付<rt>うけつけ</rt></ruby> | お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Chúng tôi đang đợi. Xin đợi một chút.)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | フォンさん、<ruby>渡辺<rt>わたなべ</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>です。<br>*(Tôi là Watanabe. Xin hân hạnh. Hôm nay điền giấy xin phép thay đổi tư cách lưu trú.)* |
| Phong | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin được hướng dẫn.)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | こちらの<ruby>申請書<rt>しんせいしょ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>氏名<rt>しめい</rt></ruby>はパスポート<ruby>通<rt>どお</rt></ruby>りローマ<ruby>字<rt>じ</rt></ruby>で。<br>*(Em điền vào đơn xin này. Họ tên viết Latin theo hộ chiếu.)* |
| Phong | <ruby>住所<rt>じゅうしょ</rt></ruby><ruby>欄<rt>らん</rt></ruby>は<ruby>現在<rt>げんざい</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>の<ruby>住所<rt>じゅうしょ</rt></ruby>でよろしいですか?<br>*(Ô địa chỉ điền địa chỉ ký túc hiện tại được không ạ?)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | はい、<ruby>住民票<rt>じゅうみんひょう</rt></ruby><ruby>記載<rt>きさい</rt></ruby>の<ruby>住所<rt>じゅうしょ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đúng, theo địa chỉ ghi trong juuminhyou.)* |
| Phong | <ruby>申請<rt>しんせい</rt></ruby><ruby>理由<rt>りゆう</rt></ruby><ruby>欄<rt>らん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>と<ruby>書<rt>か</rt></ruby>けばよろしいでしょうか?<br>*(Ô lý do xin viết gì ạ?)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | 「<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>に<ruby>伴<rt>ともな</rt></ruby>う<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>への<ruby>移行<rt>いこう</rt></ruby>」と<ruby>記載<rt>きさい</rt></ruby>してください。<br>*(Ghi "Chuyển sang 特定技能1号 do kết thúc thực tập kỹ năng số 2".)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ.)* |

---

## Tình huống 10 — Văn phòng 行政書士 · 14:30, Phong hỏi về 標準処理期間

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りるまで、<ruby>大体<rt>だいたい</rt></ruby>どのくらいかかりますか?<br>*(Thầy Watanabe, đến khi được duyệt, thường mất bao lâu ạ?)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | <ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>処理<rt>しょり</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>から<ruby>4<rt>よん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>です。<ruby>混<rt>こ</rt></ruby>み<ruby>具合<rt>ぐあい</rt></ruby>によります。<br>*(Thời gian xử lý chuẩn là 2-4 tháng. Tuỳ độ đông.)* |
| Phong | すみません、「<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>処理<rt>しょり</rt></ruby><ruby>期間<rt>きかん</rt></ruby>」というのは、<ruby>入管<rt>にゅうかん</rt></ruby>が<ruby>審査<rt>しんさ</rt></ruby>する<ruby>期間<rt>きかん</rt></ruby>のことですね?<br>*(Xin lỗi, "標準処理期間" là thời gian Cục xuất nhập cảnh thẩm tra phải không ạ?)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>りです。<ruby>現行<rt>げんこう</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby>カードの<ruby>有効<rt>ゆうこう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>が<ruby>切<rt>き</rt></ruby>れる<ruby>前<rt>まえ</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby>することが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Đúng vậy. Quan trọng là nộp trước khi hạn thẻ cư trú hiện tại hết.)* |
| Phong | <ruby>私<rt>わたし</rt></ruby>の<ruby>現行<rt>げんこう</rt></ruby><ruby>在留<rt>ざいりゅう</rt></ruby>カードは<ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>期限<rt>きげん</rt></ruby>です。<ruby>余裕<rt>よゆう</rt></ruby>はありますか?<br>*(Thẻ cư trú em hết 30/4 sang năm. Có dư thời gian không ạ?)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | はい、<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>余裕<rt>よゆう</rt></ruby>です。<ruby>仮<rt>かり</rt></ruby>に<ruby>許可<rt>きょか</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れても「<ruby>特例<rt>とくれい</rt></ruby><ruby>期間<rt>きかん</rt></ruby>」<ruby>2<rt>に</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>が<ruby>適用<rt>てきよう</rt></ruby>されます。<ruby>心配<rt>しんぱい</rt></ruby>いりません。<br>*(Vâng, thừa thời gian. Nếu lỡ chậm thì áp dụng "tokurei kikan" 2 tháng. Khỏi lo.)* |
| Phong | ありがとうございます。<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>でした。<br>*(Em cảm ơn. Em mới nghe lần đầu từ này.)* |

---

## Tình huống 11 — Văn phòng 行政書士 · 15:00, ký 雇用条件通知書

| Vai | Lời thoại |
|---|---|
| <ruby>渡辺<rt>わたなべ</rt></ruby> | こちらが<ruby>雇用<rt>こよう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby>です。<ruby>内容<rt>ないよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đây là giấy thông báo điều kiện việc làm. Em kiểm nội dung rồi ký.)* |
| Phong | はい。<ruby>基本<rt>きほん</rt></ruby><ruby>給<rt>きゅう</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>千円<rt>せんえん</rt></ruby>、<ruby>勤務<rt>きんむ</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>から<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>休憩<rt>きゅうけい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>週休<rt>しゅうきゅう</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>制<rt>せい</rt></ruby>...<ruby>確認<rt>かくにん</rt></ruby>いたしました。<br>*(Vâng. Lương cơ bản 235.000 yên, giờ làm 8h30-17h30, nghỉ 1 tiếng, tuần nghỉ 2 ngày... em đã xác nhận.)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | <ruby>残業<rt>ざんぎょう</rt></ruby><ruby>単価<rt>たんか</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>付与<rt>ふよ</rt></ruby>もご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Đơn giá tăng ca, phép có lương 10 ngày, em xác nhận cả nữa.)* |
| Phong | はい、<ruby>確認<rt>かくにん</rt></ruby>しております。<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>は<ruby>入社<rt>にゅうしゃ</rt></ruby>から<ruby>半年後<rt>はんとしご</rt></ruby><ruby>付与<rt>ふよ</rt></ruby>ということですね。<br>*(Vâng. Phép có lương là nửa năm sau khi vào công ty mới được cấp, đúng không ạ.)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | <ruby>正確<rt>せいかく</rt></ruby>には、TTSからの<ruby>継続<rt>けいぞく</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>なので、すでに<ruby>付与<rt>ふよ</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>残<rt>のこ</rt></ruby>り<ruby>日数<rt>にっすう</rt></ruby>は<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>がれます。<br>*(Chính xác hơn, vì tiếp tục từ TTS nên đã được cấp rồi. Số ngày còn lại được chuyển tiếp.)* |
| Phong | なるほど、ありがとうございます。<ruby>署名<rt>しょめい</rt></ruby>させていただきます。<br>*(Ra vậy, em cảm ơn. Em xin ký ạ.)* |

---

## Tình huống 12 — Sảnh văn phòng · 15:45, Phong xác nhận lịch tiếp theo

| Vai | Lời thoại |
|---|---|
| <ruby>渡辺<rt>わたなべ</rt></ruby> | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>はここまでです。<ruby>次<rt>つぎ</rt></ruby>のステップは、<ruby>来月<rt>らいげつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>に<ruby>名古屋<rt>なごや</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>です。<br>*(Điền giấy hôm nay đến đây. Bước tiếp theo, giữa tháng sau nộp lên Cục xuất nhập cảnh Nagoya.)* |
| Phong | <ruby>私<rt>わたし</rt></ruby>も<ruby>同行<rt>どうこう</rt></ruby>する<ruby>必要<rt>ひつよう</rt></ruby>はありますか?<br>*(Em có cần đi cùng không ạ?)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | <ruby>原則<rt>げんそく</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>です。<ruby>本人<rt>ほんにん</rt></ruby><ruby>出頭<rt>しゅっとう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>場合<rt>ばあい</rt></ruby>のみ、ご<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Nguyên tắc không cần. Chỉ khi cần em ra mặt mới liên lạc.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りた<ruby>後<rt>あと</rt></ruby>のスケジュールも<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Em rõ. Lịch sau khi được duyệt em xin được biết luôn?)* |
| <ruby>渡辺<rt>わたなべ</rt></ruby> | <ruby>許可後<rt>きょかご</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る<ruby>日<rt>ひ</rt></ruby>を<ruby>指定<rt>してい</rt></ruby>します。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り<ruby>当日<rt>とうじつ</rt></ruby>は<ruby>本人<rt>ほんにん</rt></ruby><ruby>出頭<rt>しゅっとう</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>です。<br>*(Sau khi duyệt, sẽ hẹn ngày nhận thẻ cư trú mới. Hôm nhận phải đích thân.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>して<ruby>参<rt>まい</rt></ruby>ります。ありがとうございました。<br>*(Vâng, em nhất định xin phép có lương để đến. Em cảm ơn ạ.)* |

---

## Tình huống 13 — Xưởng, khu nghỉ · 17:30, Phong báo cáo 工場長

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Sếp Sato, em báo cáo tiến độ hôm nay.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>。どうだった?<br>*(Vất vả. Sao rồi?)* |
| Phong | <ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のところで<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請書<rt>しんせいしょ</rt></ruby>の<ruby>記入<rt>きにゅう</rt></ruby>と<ruby>雇用<rt>こよう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby>の<ruby>署名<rt>しょめい</rt></ruby>まで<ruby>完了<rt>かんりょう</rt></ruby>いたしました。<br>*(Tại chỗ thầy Watanabe em đã xong điền đơn xin thay đổi tư cách lưu trú và ký giấy thông báo điều kiện việc làm.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>順調<rt>じゅんちょう</rt></ruby>だね。<ruby>次<rt>つぎ</rt></ruby>は?<br>*(Suôn sẻ. Tiếp theo?)* |
| Phong | <ruby>来月<rt>らいげつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>に<ruby>名古屋<rt>なごや</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>へ<ruby>提出<rt>ていしゅつ</rt></ruby>、<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>処理<rt>しょり</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>から<ruby>4<rt>よん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>とのことです。<br>*(Giữa tháng sau nộp lên Cục xuất nhập cảnh Nagoya, thời gian xử lý chuẩn 2-4 tháng.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>余裕<rt>よゆう</rt></ruby>がある<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>でいい。お<ruby>金<rt>かね</rt></ruby>のことで<ruby>分<rt>わ</rt></ruby>からないことはあったか?<br>*(Tiến độ thư thái là tốt. Có chỗ nào về tiền chưa hiểu không?)* |
| Phong | <ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>がTTSから<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>がれることを<ruby>初<rt>はじ</rt></ruby>めて<ruby>知<rt>し</rt></ruby>りました。<br>*(Em mới biết phép có lương được chuyển tiếp từ TTS.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | いい<ruby>気<rt>き</rt></ruby>づきだ。<ruby>残<rt>のこ</rt></ruby>り<ruby>日数<rt>にっすう</rt></ruby>は<ruby>鈴木<rt>すずき</rt></ruby>さんに<ruby>聞<rt>き</rt></ruby>けば<ruby>教<rt>おし</rt></ruby>えてくれる。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り<ruby>当日<rt>とうじつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>えばいい。<br>*(Phát hiện hay. Số ngày còn hỏi Suzuki sẽ biết. Dùng vào hôm nhận thẻ là được.)* |

---

## Tình huống 14 — Phòng Phong · 21:00, gọi điện về Hải Phòng báo tin đậu mensetsu

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Mẹ ơi, sáng nay con phỏng vấn chính thức SSW1 — kỹ năng đặc định số 1. Sếp Sato bảo "Phỏng vấn hôm nay đậu" luôn rồi mẹ. |
| Mẹ | (tiếng Việt) Trời, mừng quá Phong! Vậy là sang năm con vẫn ở garage đó hả con? |
| Phong | (tiếng Việt) Vâng, vẫn Garage Anjo. Lương cơ bản 23 vạn 5 nghìn yên, tương đương khoảng 41 triệu đồng. Bao bảo hiểm xã hội với 厚生年金 — bảo hiểm hưu trí. Tháng 4 năm sau con đổi sang thẻ cư trú mới — SSW1 đó mẹ. |
| Mẹ | (tiếng Việt) Lương tốt hơn rồi đó con. Có tăng ca không? |
| Phong | (tiếng Việt) Có ạ. Tăng ca trả riêng, đơn giá 1.25 lần. Hôm nay ở chỗ thầy 行政書士 — thầy luật sư chuyên xuất nhập cảnh, con học được từ mới: 標準処理期間 — thời gian xử lý chuẩn, là 2-4 tháng đó mẹ. |
| Mẹ | (tiếng Việt) Mẹ không hiểu lắm. Nhưng con cố. À bố con bảo, có cái bằng cấp 2 thợ ô tô đó là to lắm, ở quê người ta nể. |
| Phong | (tiếng Việt) Vâng, con đang nhắm cấp 2 — 自動車整備士2級. Sang năm con bắt đầu học lý thuyết. À mẹ ơi, hôm phỏng vấn anh Yamada hỏi con có dự định kết hôn không, vì lên 特定技能2号 — cấp 2 đặc định là đón được vợ con sang. Con bảo chưa định, nhưng con thấy mở rộng lựa chọn. |
| Mẹ | (tiếng Việt) Mẹ không giục đâu, nhưng con cũng 23 rồi đó. Cứ tập trung cái bằng 2 cái đã. |
| Phong | (tiếng Việt) Vâng. Tuần sau con gửi mẹ ít tiền về lo giỗ ông nội. Mẹ với bố giữ sức khoẻ. |

---

## Tình huống 15 — Ký túc, bàn học · 22:30, Phong ghi sổ tiến độ hồ sơ

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>はつか</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>面接<rt>めんせつ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<br>*(Ngày 20/5, đậu phỏng vấn. Sắp xếp tiến độ hôm nay.)* |
| Phong | <ruby>一<rt>いち</rt></ruby>、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby><ruby>清書<rt>せいしょ</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<ruby>二<rt>に</rt></ruby>、<ruby>面接<rt>めんせつ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(Một, bản sạch động cơ đã nộp. Hai, đã đậu phỏng vấn.)* |
| Phong | <ruby>三<rt>さん</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請書<rt>しんせいしょ</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<ruby>四<rt>し</rt></ruby>、<ruby>雇用<rt>こよう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby><ruby>署名<rt>しょめい</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(Ba, đã điền đơn xin thay đổi tư cách lưu trú. Bốn, đã ký giấy thông báo điều kiện việc làm.)* |
| Phong | <ruby>次<rt>つぎ</rt></ruby>のステップ:<ruby>来月<rt>らいげつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby><ruby>名古屋<rt>なごや</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>、<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>処理<rt>しょり</rt></ruby><ruby>期間<rt>きかん</rt></ruby><ruby>2<rt>に</rt></ruby>〜<ruby>4<rt>よん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>。<br>*(Bước tiếp: giữa tháng sau nộp Cục Nagoya, thời gian xử lý chuẩn 2-4 tháng.)* |
| Phong | <ruby>許可<rt>きょか</rt></ruby><ruby>下<rt>お</rt></ruby>り<ruby>次第<rt>しだい</rt></ruby>:<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カード<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り(<ruby>本人<rt>ほんにん</rt></ruby><ruby>出頭<rt>しゅっとう</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>)。<br>*(Tháng 4 sang năm: nhận thẻ cư trú mới (bắt buộc đích thân, xin phép có lương).)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Từng cái một, chắc chắn.)* |

---

## Đọng lại chương 2

Phong vượt qua 正式な面接 SSW1 với 工場長 Sato và 整備士長 Yamada, sau đó hoàn thành 書類記入 tại 行政書士 Watanabe. Học các mẫu câu mensetsu chuyên nghiệp: tự giới thiệu **〜と申します + 来日年月 + 勤務年数**, trình bày động cơ bằng **3 trục (経験・今後・貢献)** với keigo **〜と考えております**, xử lý câu hỏi **強み・弱み** kèm **具体的な対策**, vẽ **キャリアプラン theo段階** (第一段階・第二段階・第三段階), và hỏi ngược lễ phép bằng **〜について教えていただけますか**. Trong khâu thủ tục, học từ pháp lý **在留資格変更許可申請・雇用条件通知書・標準処理期間・特例期間・本人出頭** và xác nhận điều khoản hợp đồng bằng **〜ということですね**. Báo cáo tiến độ chuẩn năm 3: **〜まで完了いたしました + 次のステップ**.

> Từ vựng & mẫu câu chương này: 正式な面接・志望動機・履歴書・自己紹介・強み・弱み・キャリアプラン・段階・貢献・橋渡し・在留資格変更許可申請・雇用条件通知書・標準処理期間・特例期間・本人出頭・有給休暇引き継ぎ・社会保険・厚生年金・基本給・残業単価・家賃補助・〜と考えております・〜について教えていただけますか・〜と申します・〜まで完了いたしました・〜ということですね

---

## Bí quyết chương

- **Mensetsu garage Toyota系**: Sato kiểu sếp thực tế, ưu tiên **con số + đề xuất cụ thể** hơn lời hoa mỹ. Câu trả lời phải có **時期・金額・段階**.
- **志望動機 ba trục**: 過去 (đã có gì) + 未来 (muốn gì) + 貢献 (cho ai). Tránh "muốn kiếm tiền" thuần.
- **強み・弱み phải có 対策**: nói yếu mà không kèm cách khắc phục → trượt.
- **行政書士 vs 入管**: 行政書士 (luật sư hành chính) làm hộ giấy, 入管 (Cục xuất nhập cảnh) ra quyết định. Phong không tự đi 入管 trừ khi được gọi.
- **特例期間 2 tháng**: cứu cánh khi 在留カード hết hạn trước khi có duyệt SSW1 — không hoảng.
- **有給休暇引き継ぎ TTS→SSW1**: ngày phép KHÔNG reset, công ty tính tiếp — nhớ hỏi Suzuki số ngày dư.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 正式 | せいしき | CHÍNH THỨC | chính thức |
| 面接 | めんせつ | DIỆN TIẾP | phỏng vấn |
| 日程 | にってい | NHẬT TRÌNH | lịch ngày |
| 会議室 | かいぎしつ | HỘI NGHỊ THẤT | phòng họp |
| 工場長 | こうじょうちょう | CÔNG XƯỞNG TRƯỞNG | giám đốc xưởng |
| 整備士長 | せいびしちょう | CHỈNH BỊ SỸ TRƯỞNG | trưởng kỹ thuật |
| 同席 | どうせき | ĐỒNG TỊCH | đồng dự |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | sơ yếu lý lịch |
| 志望動機 | しぼうどうき | CHÍ VỌNG ĐỘNG CƠ | động cơ ứng tuyển |
| 服装 | ふくそう | PHỤC TRANG | trang phục |
| 作業着 | さぎょうぎ | TÁC NGHIỆP TRƯỚC | đồ làm việc |
| 清潔 | せいけつ | THANH KHIẾT | sạch sẽ |
| 手書き | てがき | THỦ THƯ | viết tay |
| 下書き | したがき | HẠ THƯ | bản nháp |
| 清書 | せいしょ | THANH THƯ | bản viết sạch |
| 強み | つよみ | CƯỜNG VỊ | điểm mạnh |
| 弱み | よわみ | NHƯỢC VỊ | điểm yếu |
| 確認作業 | かくにんさぎょう | XÁC NHẬN TÁC NGHIỆP | thao tác xác nhận |
| 電気系統 | でんきけいとう | ĐIỆN KHÍ HỆ THỐNG | hệ thống điện |
| 配線図 | はいせんず | PHỐI TUYẾN ĐỒ | sơ đồ dây điện |
| 克服 | こくふく | KHẮC PHỤC | khắc phục |
| 対策 | たいさく | ĐỐI SÁCH | phương án đối phó |
| キャリアプラン | キャリアプラン | — | lộ trình nghề nghiệp |
| 段階 | だんかい | ĐOẠN GIAI | giai đoạn |
| 貢献 | こうけん | CỐNG HIẾN | đóng góp |
| 橋渡し | はしわたし | KIỀU ĐỘ | cầu nối |
| 移行 | いこう | DI HÀNH | chuyển đổi |
| 視野 | しや | THỊ DÃ | tầm nhìn |
| 結婚 | けっこん | KẾT HÔN | kết hôn |
| 雇用条件 | こようじょうけん | CỐ DỤNG ĐIỀU KIỆN | điều kiện việc làm |
| 雇用条件通知書 | こようじょうけんつうちしょ | CỐ DỤNG ĐIỀU KIỆN THÔNG TRI THƯ | giấy thông báo điều kiện việc làm |
| 基本給 | きほんきゅう | CƠ BẢN CẤP | lương cơ bản |
| 残業代 | ざんぎょうだい | TÀN NGHIỆP ĐẠI | tiền tăng ca |
| 社会保険 | しゃかいほけん | XÃ HỘI BẢO HIỂM | bảo hiểm xã hội |
| 厚生年金 | こうせいねんきん | HẬU SINH NIÊN KIM | bảo hiểm hưu trí |
| 家賃補助 | やちんほじょ | GIA THUÊ BỔ TRỢ | hỗ trợ tiền nhà |
| 賃貸 | ちんたい | THUÊ CHO THUÊ | thuê nhà |
| 行政書士 | ぎょうせいしょし | HÀNH CHÍNH THƯ SỸ | luật sư hành chính |
| 在留資格変更許可申請 | ざいりゅうしかくへんこうきょかしんせい | TẠI LƯU TƯ CÁCH BIẾN CANH HỨA KHẢ THÂN THỈNH | xin phép thay đổi tư cách lưu trú |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | đơn xin |
| 申請理由 | しんせいりゆう | THÂN THỈNH LÝ DO | lý do xin |
| 入管 | にゅうかん | NHẬP QUẢN | Cục xuất nhập cảnh |
| 標準処理期間 | ひょうじゅんしょりきかん | TIÊU CHUẨN XỬ LÝ KỲ GIAN | thời gian xử lý chuẩn |
| 審査 | しんさ | THẨM TRA | thẩm tra |
| 有効期限 | ゆうこうきげん | HỮU HIỆU KỲ HẠN | hạn hiệu lực |
| 特例期間 | とくれいきかん | ĐẶC LỆ KỲ GIAN | thời gian đặc lệ |
| 本人出頭 | ほんにんしゅっとう | BẢN NHÂN XUẤT ĐẦU | đích thân ra mặt |
| 署名 | しょめい | THỰ DANH | chữ ký |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU GIẢ | nghỉ phép có lương |
| 引き継ぎ | ひきつぎ | DẪN KẾ | chuyển tiếp, bàn giao |
| 進捗 | しんちょく | TIẾN TRIỆT | tiến độ |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 完了 | かんりょう | HOÀN LIỄU | hoàn thành |
| 同行 | どうこう | ĐỒNG HÀNH | đi cùng |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000003, 800000045, NULL, 'markdown_book', 'T3. Đậu N3 — lộ trình SSW1 và N2 (N3合格・SSW1とN2へ)', '# Sách thực tập sinh ô tô · T3. Đậu N3 — lộ trình SSW1 và N2 (N3合格・SSW1とN2へ)

> **Mục tiêu nhân vật:** Phong (24 tuổi, Hải Phòng) đầu năm 2028, đậu JLPT N3 kỳ tháng 12/2027 (kết quả ra cuối tháng 1). Học các mẫu hội thoại tiếng Nhật cho khoảnh khắc thông báo: **報告いたします + 結果 + お礼**, chia sẻ tin với 工場長 Sato và 整備士長 Yamada, được giao **接客** thử nghiệm với khách, hoạch định **N2学習計画** trong SSW1, và phối hợp Tuấn để Đức (kohai năm 1) cũng vào lộ trình N4.

---

## Bối cảnh

Ngày 28 tháng 1 năm 2028. Kết quả JLPT 12/2027 vừa lên trang MyJLPT lúc 10:00. Phong vào trang lúc trưa nghỉ, đậu N3 với 102/180 (Đọc 35/60, Nghe 40/60, Từ vựng-Ngữ pháp 27/60). Trong khi đó SSW1 申請 đã nộp lên Cục Nagoya tháng 6/2027, đang chờ duyệt. Đức đã làm được 8 tháng, bắt đầu chuẩn bị N4 (7/2028). Chương tập trung mẫu câu báo tin tốt nghiêm túc, không khoe; nhận giao việc 接客 mới; và thiết kế lộ trình N2.

---

## Tình huống 1 — Phòng nghỉ giữa ca · 12:15, Phong xem điểm trên điện thoại

*Phong đang ăn trưa với Tuấn ở phòng nghỉ, mở MyJLPT trên điện thoại.*

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>た。<ruby>合格<rt>ごうかく</rt></ruby>だ!<br>*(Tuấn, kết quả ra rồi. Đậu!)* |
| Tuấn | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか? おめでとうございます!<ruby>点数<rt>てんすう</rt></ruby>は?<br>*(Ơ thật ạ? Chúc mừng anh! Bao điểm ạ?)* |
| Phong | <ruby>総合<rt>そうごう</rt></ruby><ruby>102<rt>ひゃくに</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>だから、ぎりぎり。<ruby>各<rt>かく</rt></ruby><ruby>科目<rt>かもく</rt></ruby>も<ruby>基準点<rt>きじゅんてん</rt></ruby>を<ruby>越<rt>こ</rt></ruby>えた。<br>*(Tổng 102 điểm. Đậu là 95 nên sát nút. Mỗi phần đều qua điểm chuẩn.)* |
| Tuấn | やった!<ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>かったんですか?<br>*(Tuyệt! Phần nghe mạnh nhất hả anh?)* |
| Phong | うん、<ruby>40<rt>よんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>毎日<rt>まいにち</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>で<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いてるおかげだと<ruby>思<rt>おも</rt></ruby>う。<br>*(Ừ, 40 điểm. Nhờ ngày nào cũng nghe tiếng Nhật ở xưởng.)* |
| Tuấn | <ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>苦手<rt>にがて</rt></ruby>は<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>ですか?<br>*(Ngược lại yếu là từ vựng - chữ ạ?)* |
| Phong | そう、<ruby>27<rt>にじゅうなな</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>基準点<rt>きじゅんてん</rt></ruby>が<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>だからセーフ。N2では<ruby>本気<rt>ほんき</rt></ruby>で<ruby>漢字<rt>かんじ</rt></ruby>をやらないと。<br>*(Đúng, 27. Chuẩn 19 nên thoát. Lên N2 phải học kanji nghiêm túc.)* |
| Tuấn | まず、<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう!<br>*(Trước hết đi báo cáo sếp đi anh!)* |

---

## Tình huống 2 — Văn phòng 工場長 · 13:00, Phong báo cáo Sato

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby><ruby>少<rt>すこ</rt></ruby>しよろしいでしょうか?<ruby>ご報告<rt>ごほうこく</rt></ruby>がございます。<br>*(Sếp Sato, em xin một chút thời gian được không ạ? Em có việc báo cáo.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | はい、どうぞ。<br>*(Vâng, mời.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>、JLPT N3の<ruby>結果<rt>けっか</rt></ruby>が<ruby>発表<rt>はっぴょう</rt></ruby>され、<ruby>無事<rt>ぶじ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>することができました。<ruby>ご報告<rt>ごほうこく</rt></ruby>いたします。<br>*(Hôm nay kết quả JLPT N3 công bố, em đã đậu an toàn. Em xin báo cáo.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | おめでとう、フォンさん!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいニュースだ。<ruby>点数<rt>てんすう</rt></ruby>は<ruby>余裕<rt>よゆう</rt></ruby>あった?<br>*(Chúc mừng Phong! Tin vui thật. Điểm có dư không?)* |
| Phong | <ruby>総合<rt>そうごう</rt></ruby><ruby>102<rt>ひゃくに</rt></ruby><ruby>点<rt>てん</rt></ruby>で、ぎりぎりでした。<ruby>聴解<rt>ちょうかい</rt></ruby>に<ruby>救<rt>すく</rt></ruby>われました。<br>*(Tổng 102, sát nút. Phần nghe cứu em.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | <ruby>仕事<rt>しごと</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っている<ruby>成果<rt>せいか</rt></ruby>だね。これからのことだけど、N2は<ruby>考<rt>かんが</rt></ruby>えてる?<br>*(Thành quả dùng tiếng Nhật trong việc làm. Sắp tới em có tính N2 không?)* |
| Phong | はい、SSW1<ruby>期間<rt>きかん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>取得<rt>しゅとく</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております。お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>もできるようになるためです。<br>*(Vâng, em muốn lấy trong thời gian SSW1. Để có thể tiếp khách.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | いいね。<ruby>接客<rt>せっきゃく</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>始<rt>はじ</rt></ruby>めよう。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>受付<rt>うけつけ</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってもらおうかな。<br>*(Tốt. Bắt đầu luyện 接客 dần. Tuần sau cho em hỗ trợ tiếp tân nhé.)* |
| Phong | <ruby>大変<rt>たいへん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>努<rt>つと</rt></ruby>めます。<br>*(Em rất vui. Em sẽ cố gắng hết sức.)* |

---

## Tình huống 3 — Khu lift số 2 · 13:30, Yamada chúc mừng và giao bài test thực tế

| Vai | Lời thoại |
|---|---|
| <ruby>山田<rt>やまだ</rt></ruby> | フォン、N3<ruby>合格<rt>ごうかく</rt></ruby><ruby>聞<rt>き</rt></ruby>いたぞ。おめでとう。<br>*(Phong, anh nghe đậu N3 rồi. Chúc mừng.)* |
| Phong | ありがとうございます。<ruby>山田<rt>やまだ</rt></ruby>さんのおかげでもあります。<ruby>毎日<rt>まいにち</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>していただいた<ruby>整備<rt>せいび</rt></ruby><ruby>用語<rt>ようご</rt></ruby>が<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<br>*(Em cảm ơn. Cũng nhờ anh. Thuật ngữ bảo dưỡng anh giảng mỗi ngày em dùng được.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>嬉<rt>うれ</rt></ruby>しいね。じゃあ<ruby>今日<rt>きょう</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>し<ruby>難<rt>むずか</rt></ruby>しい<ruby>仕事<rt>しごと</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>む。<ruby>16<rt>じゅうろく</rt></ruby><ruby>時<rt>じ</rt></ruby>のフィットの<ruby>診断<rt>しんだん</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>へ<ruby>説明<rt>せつめい</rt></ruby>もフォンが<ruby>担当<rt>たんとう</rt></ruby>してみて。<br>*(Vui đấy. Vậy từ hôm nay giao việc khó hơn chút. 16h xe Fit chẩn đoán, em giải thích cho khách luôn.)* |
| Phong | はい...<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていただいてもよろしいでしょうか?<br>*(Vâng... thật ra em hơi căng. Em luyện trước anh xem được không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | もちろん。<ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>客<rt>きゃく</rt></ruby><ruby>役<rt>やく</rt></ruby>をやる。<br>*(Đương nhiên. 15h30, anh đóng vai khách.)* |
| Phong | ありがとうございます。<ruby>準備<rt>じゅんび</rt></ruby>して<ruby>参<rt>まい</rt></ruby>ります。<br>*(Em cảm ơn. Em sẽ chuẩn bị.)* |

---

## Tình huống 4 — Khu lift · 15:30, Phong luyện 接客 với Yamada đóng vai khách

| Vai | Lời thoại |
|---|---|
| Phong | お<ruby>客様<rt>きゃくさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>本日<rt>ほんじつ</rt></ruby>のフィットの<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>説明<rt>せつめい</rt></ruby>させていただきます。<br>*(Thưa quý khách, xin lỗi đã để chờ. Tôi xin được giải thích kết quả kiểm tra Fit hôm nay.)* |
| <ruby>山田<rt>やまだ</rt></ruby>(<ruby>客<rt>きゃく</rt></ruby>) | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời.)* |
| Phong | エンジンオイルの<ruby>汚<rt>よご</rt></ruby>れが<ruby>進<rt>すす</rt></ruby>んでおり、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>交換<rt>こうかん</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>いたします。<ruby>費用<rt>ひよう</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Dầu engine bẩn nhiều, kính đề nghị thay hôm nay. Chi phí 5.500 yên.)* |
| <ruby>山田<rt>やまだ</rt></ruby>(<ruby>客<rt>きゃく</rt></ruby>) | <ruby>前回<rt>ぜんかい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>から<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>経<rt>た</rt></ruby>ってないんだけど、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>?<br>*(Mới thay chưa được một năm, có cần thật không?)* |
| Phong | <ruby>走行<rt>そうこう</rt></ruby><ruby>距離<rt>きょり</rt></ruby>が<ruby>8<rt>はち</rt></ruby><ruby>千<rt>せん</rt></ruby>キロを<ruby>超<rt>こ</rt></ruby>えており、<ruby>推奨<rt>すいしょう</rt></ruby><ruby>交換<rt>こうかん</rt></ruby><ruby>距離<rt>きょり</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>千<rt>せん</rt></ruby>キロから<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby>キロでございます。<ruby>放置<rt>ほうち</rt></ruby>するとエンジン<ruby>内部<rt>ないぶ</rt></ruby>が<ruby>摩耗<rt>まもう</rt></ruby>する<ruby>恐<rt>おそ</rt></ruby>れがございます。<br>*(Số km đã chạy vượt 8.000, khuyến nghị thay là 5.000-10.000km ạ. Để nguyên có nguy cơ mòn trong engine.)* |
| <ruby>山田<rt>やまだ</rt></ruby>(<ruby>客<rt>きゃく</rt></ruby>) | なるほど。じゃあ、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ra vậy. Vậy nhờ thay.)* |
| Phong | かしこまりました。<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>お<ruby>待<rt>ま</rt></ruby>たせいたします。<br>*(Vâng ạ. Xin để quý khách chờ khoảng 30 phút.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | (<ruby>普通<rt>ふつう</rt></ruby>の<ruby>口調<rt>くちょう</rt></ruby>) <ruby>距離<rt>きょり</rt></ruby><ruby>数<rt>すう</rt></ruby>を<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えたのがよかった。「<ruby>放置<rt>ほうち</rt></ruby>すると」は<ruby>少<rt>すこ</rt></ruby>し<ruby>強<rt>つよ</rt></ruby>すぎるかな。「<ruby>放<rt>ほう</rt></ruby>っておくと」のほうが<ruby>柔<rt>やわ</rt></ruby>らかい。<br>*(Giọng bình thường. Nói được con số km là tốt. "放置すると" hơi nặng. "放っておくと" mềm hơn.)* |
| Phong | はい、<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng, em ghi nhớ.)* |

---

## Tình huống 5 — Khu tiếp tân · 16:00, Phong tiếp khách Fit thật

| Vai | Lời thoại |
|---|---|
| <ruby>客<rt>きゃく</rt></ruby> | こんにちは、<ruby>16<rt>じゅうろく</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>予約<rt>よやく</rt></ruby>の<ruby>森<rt>もり</rt></ruby>です。<br>*(Xin chào, tôi là Mori đã hẹn 16h.)* |
| Phong | いらっしゃいませ、<ruby>森<rt>もり</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>本日<rt>ほんじつ</rt></ruby>はフィットの<ruby>点検<rt>てんけん</rt></ruby>でいらっしゃいますね。<br>*(Xin chào quý ông Mori, chúng tôi đang đợi. Hôm nay quý ông đến bảo dưỡng Fit đúng không ạ.)* |
| <ruby>森<rt>もり</rt></ruby> | はい、<ruby>最近<rt>さいきん</rt></ruby>エンジンの<ruby>音<rt>おと</rt></ruby>が<ruby>気<rt>き</rt></ruby>になって。<br>*(Vâng, gần đây tiếng engine hơi lạ.)* |
| Phong | <ruby>具体的<rt>ぐたいてき</rt></ruby>には、どのような<ruby>音<rt>おと</rt></ruby>でしょうか?<ruby>始動時<rt>しどうじ</rt></ruby>ですか、それとも<ruby>走行<rt>そうこう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>ですか?<br>*(Cụ thể là tiếng thế nào ạ? Lúc khởi động hay đang chạy ạ?)* |
| <ruby>森<rt>もり</rt></ruby> | <ruby>朝<rt>あさ</rt></ruby><ruby>一<rt>いち</rt></ruby>の<ruby>始動時<rt>しどうじ</rt></ruby>に、カラカラと。<br>*(Buổi sáng lúc khởi động, tiếng lạch cạch.)* |
| Phong | かしこまりました。<ruby>始動時<rt>しどうじ</rt></ruby>の<ruby>異音<rt>いおん</rt></ruby>ですね。エンジンオイルの<ruby>劣化<rt>れっか</rt></ruby>か、バルブ<ruby>系<rt>けい</rt></ruby>の<ruby>可能<rt>かのう</rt></ruby><ruby>性<rt>せい</rt></ruby>が<ruby>考<rt>かんが</rt></ruby>えられます。これから<ruby>点検<rt>てんけん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>らせていただきます。<ruby>所要<rt>しょよう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>程<rt>ほど</rt></ruby>です。<br>*(Vâng. Tiếng lạ lúc khởi động ạ. Có thể do dầu xuống cấp hoặc hệ valve. Em bắt đầu kiểm tra. Thời gian khoảng 40 phút.)* |
| <ruby>森<rt>もり</rt></ruby> | じゃあ、<ruby>待合<rt>まちあい</rt></ruby><ruby>室<rt>しつ</rt></ruby>で<ruby>待<rt>ま</rt></ruby>たせてもらいます。<br>*(Vậy tôi đợi ở phòng chờ.)* |
| Phong | お<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>は<ruby>温<rt>あたた</rt></ruby>かいお<ruby>茶<rt>ちゃ</rt></ruby>とコーヒー、どちらがよろしいでしょうか?<br>*(Đồ uống ạ, trà nóng hay cà phê quý ông dùng ạ?)* |
| <ruby>森<rt>もり</rt></ruby> | コーヒーで。<br>*(Cà phê.)* |
| Phong | かしこまりました。お<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Vâng ạ. Em mang lên ngay.)* |

---

## Tình huống 6 — Khu lift · 16:45, Phong báo cáo Yamada kết quả chẩn đoán

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby>さん、フィットの<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>です。エンジンオイル<ruby>残量<rt>ざんりょう</rt></ruby><ruby>適正<rt>てきせい</rt></ruby><ruby>下限<rt>かげん</rt></ruby><ruby>近<rt>ちか</rt></ruby>く、<ruby>粘度<rt>ねんど</rt></ruby><ruby>低下<rt>ていか</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>異音<rt>いおん</rt></ruby>は<ruby>始動時<rt>しどうじ</rt></ruby>のみ、<ruby>暖機後<rt>だんきご</rt></ruby><ruby>消失<rt>しょうしつ</rt></ruby>。<br>*(Anh Yamada, kết quả Fit. Dầu engine gần dưới hạn cho phép, độ nhớt giảm xác nhận. Tiếng lạ chỉ lúc khởi động, sau khi máy nóng thì hết.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | バルブクリアランスは?<br>*(Khe hở valve thế nào?)* |
| Phong | <ruby>聴診<rt>ちょうしん</rt></ruby><ruby>器<rt>き</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>しましたが、<ruby>異常<rt>いじょう</rt></ruby>ありません。<ruby>原因<rt>げんいん</rt></ruby>はオイル<ruby>劣化<rt>れっか</rt></ruby>の<ruby>可能<rt>かのう</rt></ruby><ruby>性<rt>せい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<br>*(Em đã nghe bằng thiết bị nghe, không bất thường. Khả năng cao là dầu xuống cấp.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | じゃあ<ruby>提案<rt>ていあん</rt></ruby>は?<br>*(Vậy đề xuất?)* |
| Phong | エンジンオイル<ruby>交換<rt>こうかん</rt></ruby>と<ruby>添加剤<rt>てんかざい</rt></ruby><ruby>投入<rt>とうにゅう</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>でご<ruby>提案<rt>ていあん</rt></ruby>します。<ruby>次回<rt>じかい</rt></ruby><ruby>異音<rt>いおん</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>はバルブ<ruby>調整<rt>ちょうせい</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>します。<br>*(Thay dầu engine + đổ phụ gia, tổng 7.500 yên đề xuất. Nếu lần sau tiếng lạ vẫn còn thì tính đến chỉnh valve.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | いいね。お<ruby>客様<rt>きゃくさま</rt></ruby>には「<ruby>次回<rt>じかい</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>」の<ruby>条件付<rt>じょうけんつ</rt></ruby>き<ruby>提案<rt>ていあん</rt></ruby>を<ruby>強調<rt>きょうちょう</rt></ruby>しろ。<ruby>過剰<rt>かじょう</rt></ruby><ruby>整備<rt>せいび</rt></ruby>に<ruby>見<rt>み</rt></ruby>えないように。<br>*(Tốt. Với khách nhấn cái đề xuất có điều kiện "lần sau vẫn còn". Đừng để trông như bảo dưỡng quá tay.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ.)* |

---

## Tình huống 7 — Khu tiếp tân · 17:00, Phong giải thích với khách Mori

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>森<rt>もり</rt></ruby>様、<ruby>大変<rt>たいへん</rt></ruby>お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>説明<rt>せつめい</rt></ruby>させていただきます。<br>*(Thưa ông Mori, xin lỗi đã để chờ. Em xin được giải thích kết quả.)* |
| <ruby>森<rt>もり</rt></ruby> | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng.)* |
| Phong | お<ruby>聞<rt>き</rt></ruby>きいただいた<ruby>朝<rt>あさ</rt></ruby>の<ruby>異音<rt>いおん</rt></ruby>ですが、エンジンオイルの<ruby>劣化<rt>れっか</rt></ruby>が<ruby>主<rt>おも</rt></ruby>な<ruby>原因<rt>げんいん</rt></ruby>と<ruby>考<rt>かんが</rt></ruby>えられます。<ruby>残量<rt>ざんりょう</rt></ruby>も<ruby>下限<rt>かげん</rt></ruby><ruby>近<rt>ちか</rt></ruby>くまで<ruby>減<rt>へ</rt></ruby>っておりました。<br>*(Tiếng lạ buổi sáng ông nghe thấy, nguyên nhân chính có thể là dầu xuống cấp. Lượng dầu cũng đã giảm gần mức dưới.)* |
| <ruby>森<rt>もり</rt></ruby> | バルブとかじゃないんだね?<ruby>大事<rt>おおごと</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>ってた。<br>*(Không phải valve à? Tôi tưởng việc lớn.)* |
| Phong | はい、<ruby>聴診<rt>ちょうしん</rt></ruby><ruby>器<rt>き</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>しましたが、バルブの<ruby>異常<rt>いじょう</rt></ruby>は<ruby>見<rt>み</rt></ruby>られません。まずはオイル<ruby>交換<rt>こうかん</rt></ruby>と<ruby>添加剤<rt>てんかざい</rt></ruby>で<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>るのをお<ruby>勧<rt>すす</rt></ruby>めいたします。<ruby>費用<rt>ひよう</rt></ruby>は<ruby>7<rt>なな</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Vâng, em đã kiểm bằng máy nghe, không thấy valve bất thường. Trước hết em xin đề nghị thay dầu + phụ gia rồi theo dõi. Chi phí 7.500 yên.)* |
| <ruby>森<rt>もり</rt></ruby> | じゃあそれで。<br>*(Vậy đi với phương án đó.)* |
| Phong | ありがとうございます。<ruby>1<rt>いち</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>付<rt>つ</rt></ruby>け<ruby>加<rt>くわ</rt></ruby>えさせていただきますと、<ruby>次回<rt>じかい</rt></ruby>もし<ruby>同<rt>おな</rt></ruby>じ<ruby>異音<rt>いおん</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>く<ruby>場合<rt>ばあい</rt></ruby>は、バルブクリアランスの<ruby>再<rt>さい</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>させていただきます。<br>*(Em cảm ơn. Em xin bổ sung một ý: lần sau nếu vẫn còn tiếng đó, em sẽ đề xuất chỉnh lại khe hở valve.)* |
| <ruby>森<rt>もり</rt></ruby> | <ruby>分<rt>わ</rt></ruby>かった、その<ruby>時<rt>とき</rt></ruby>はまたお<ruby>願<rt>ねが</rt></ruby>いするよ。<br>*(Hiểu rồi, lúc đó tôi lại nhờ.)* |

---

## Tình huống 8 — Phòng nghỉ · 18:00, Yamada phản hồi và Carlos chúc mừng

| Vai | Lời thoại |
|---|---|
| <ruby>山田<rt>やまだ</rt></ruby> | フォン、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>接客<rt>せっきゃく</rt></ruby>、よかった。<ruby>特<rt>とく</rt></ruby>に「<ruby>次回<rt>じかい</rt></ruby>もし<ruby>同<rt>おな</rt></ruby>じ<ruby>異音<rt>いおん</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>く<ruby>場合<rt>ばあい</rt></ruby>は」の<ruby>付<rt>つ</rt></ruby>け<ruby>加<rt>くわ</rt></ruby>えが<ruby>絶妙<rt>ぜつみょう</rt></ruby>だった。<br>*(Phong, tiếp khách hôm nay tốt. Đặc biệt câu "lần sau nếu vẫn còn" thêm vào hay lắm.)* |
| Phong | ありがとうございます。<ruby>練習<rt>れんしゅう</rt></ruby>のとき、「<ruby>放置<rt>ほうち</rt></ruby>すると」を<ruby>変<rt>か</rt></ruby>えるよう<ruby>教<rt>おし</rt></ruby>えていただいた<ruby>件<rt>けん</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby>でも<ruby>意識<rt>いしき</rt></ruby>しました。<br>*(Em cảm ơn. Lúc tập anh dạy sửa "放置すると", lúc thật em cũng ý thức.)* |
| Carlos | フォン、N3<ruby>合格<rt>ごうかく</rt></ruby>に<ruby>初<rt>はじ</rt></ruby>めての<ruby>接客<rt>せっきゃく</rt></ruby>、ダブルおめでとう!<br>*(Phong, đậu N3 và tiếp khách lần đầu, double chúc mừng!)* |
| Phong | カルロスさん、ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Anh Carlos, em cảm ơn. Em căng lắm.)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>がN3<ruby>取<rt>と</rt></ruby>った<ruby>時<rt>とき</rt></ruby>も、<ruby>初<rt>はじ</rt></ruby>めての<ruby>接客<rt>せっきゃく</rt></ruby>はバルブの<ruby>説明<rt>せつめい</rt></ruby>で<ruby>頭<rt>あたま</rt></ruby><ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になった。<br>*(Hồi anh đậu N3, lần đầu tiếp khách giải thích valve, anh trắng đầu luôn.)* |
| Phong | カルロスさんでも?<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Cả anh Carlos cũng vậy ạ? Động viên em rồi.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | N2<ruby>取<rt>と</rt></ruby>ったら、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>として<ruby>正式<rt>せいしき</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>せるようになる。<br>*(Đậu N2 rồi, em sẽ chính thức đứng tên phụ trách khách.)* |
| Phong | <ruby>目標<rt>もくひょう</rt></ruby>ができました。<br>*(Em có mục tiêu rồi.)* |

---

## Tình huống 9 — Ký túc, phòng Phong · 20:00, Phong và Tuấn lên kế hoạch N2

| Vai | Lời thoại |
|---|---|
| Tuấn | フォン<ruby>兄<rt>にい</rt></ruby>さん、N2の<ruby>勉強<rt>べんきょう</rt></ruby>はどう<ruby>進<rt>すす</rt></ruby>めるつもりですか?<br>*(Anh, anh định học N2 thế nào?)* |
| Phong | <ruby>三<rt>みっ</rt></ruby>つの<ruby>柱<rt>はしら</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えてる。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>漢字<rt>かんじ</rt></ruby>と<ruby>語彙<rt>ごい</rt></ruby>。<ruby>毎日<rt>まいにち</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>、アプリで。<br>*(Ba trụ. Một, kanji và từ vựng. Mỗi ngày 20 từ qua app.)* |
| Tuấn | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Hai?)* |
| Phong | <ruby>文法<rt>ぶんぽう</rt></ruby>。<ruby>新<rt>しん</rt></ruby><ruby>完全<rt>かんぜん</rt></ruby>マスターN2<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>1<rt>いっ</rt></ruby><ruby>周<rt>しゅう</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>読解<rt>どっかい</rt></ruby>と<ruby>聴解<rt>ちょうかい</rt></ruby>。<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>解<rt>と</rt></ruby>く。<br>*(Ngữ pháp. Bộ "Shin Kanzen Master" N2 trong 3 tháng 1 vòng. Ba là đọc và nghe. Đề năm trước từ tháng 10 làm.)* |
| Tuấn | <ruby>受験<rt>じゅけん</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>ですか?<br>*(Thi tháng 12 ạ?)* |
| Phong | <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>、ダメだったら<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>受<rt>う</rt></ruby>けるつもり。<br>*(Tháng 7/2028 thử, không được thì tháng 12. Tính thi 2 lần.)* |
| Tuấn | <ruby>俺<rt>おれ</rt></ruby>はN3を<ruby>同<rt>おな</rt></ruby>じ<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けに<ruby>行<rt>い</rt></ruby>けますね。<br>*(Em N3 cùng tháng 12. Đi thi cùng anh được.)* |
| Phong | いいね。ドゥックは?<br>*(Hay. Đức thì sao?)* |
| Tuấn | ドゥックは<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>N4を<ruby>受<rt>う</rt></ruby>けたいって。<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>勉強会<rt>べんきょうかい</rt></ruby>しましょうか?<br>*(Đức bảo muốn thi N4 tháng 7. Ba người mình mở group học chứ?)* |
| Phong | <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>に。<ruby>俺<rt>おれ</rt></ruby>がN2<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>するついでに、トゥアンに<ruby>聞<rt>き</rt></ruby>かせる。トゥアンがドゥックにN4<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>える。<br>*(Tối thứ Tư hàng tuần. Anh giảng ngữ pháp N2 vừa luyện vừa cho Tuấn nghe. Tuấn dạy N4 cho Đức.)* |
| Tuấn | <ruby>連鎖<rt>れんさ</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>ですね!<br>*(Học theo chuỗi ạ!)* |

---

## Tình huống 10 — Phòng ăn ký túc · 20:30, Đức tham gia

| Vai | Lời thoại |
|---|---|
| Tuấn | ドゥック、フォン<ruby>兄<rt>にい</rt></ruby>さんがN3<ruby>合格<rt>ごうかく</rt></ruby>したよ。<br>*(Đức, anh Phong đậu N3 đấy.)* |
| Đức | え!フォン<ruby>兄<rt>にい</rt></ruby>さん、おめでとうございます!すごい!<br>*(Ơ! Anh Phong, chúc mừng anh! Giỏi quá!)* |
| Phong | ありがとう、ドゥック。<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>のN4、<ruby>準備<rt>じゅんび</rt></ruby>はどう?<br>*(Cảm ơn Đức. N4 tháng 7, chuẩn bị thế nào?)* |
| Đức | <ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>っています。でも<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Em cố mỗi ngày 1 tiếng. Nhưng kanji thật sự khó.)* |
| Phong | <ruby>俺<rt>おれ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じだった。<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>から<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>楽<rt>らく</rt></ruby>になる。<ruby>整備士<rt>せいびし</rt></ruby>、<ruby>工具<rt>こうぐ</rt></ruby>、<ruby>点検<rt>てんけん</rt></ruby>、<ruby>交換<rt>こうかん</rt></ruby>、こういう<ruby>仕事<rt>しごと</rt></ruby><ruby>関連<rt>かんれん</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>。<br>*(Anh hồi đó cũng vậy. Học từ tên dụng cụ là dễ. 整備士・工具・点検・交換, mấy kanji liên quan công việc.)* |
| Đức | なるほど。<ruby>毎日<rt>まいにち</rt></ruby><ruby>見<rt>み</rt></ruby>てる<ruby>言葉<rt>ことば</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めればいいんですね。<br>*(Ra vậy. Bắt đầu từ từ thấy hàng ngày là tốt nhỉ.)* |
| Tuấn | <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>勉強会<rt>べんきょうかい</rt></ruby>することにした。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めよう。<br>*(Tối thứ Tư mỗi tuần, 3 người mở group. Tuần sau bắt đầu.)* |
| Đức | はい!よろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Vâng! Em xin được chỉ bảo!)* |

---

## Tình huống 11 — Phòng Phong · 21:00, Phong gọi 工場長 báo lịch nhận thẻ cư trú

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>夜分<rt>やぶん</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くに<ruby>失礼<rt>しつれい</rt></ruby>いたします。フォンです。<br>*(Sếp Sato, xin lỗi gọi muộn ạ. Em là Phong.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | はい、フォンさん、どうした?<br>*(Vâng, Phong, gì vậy?)* |
| Phong | <ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>がございました。SSW1の<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>り、<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードの<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り<ruby>日<rt>び</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>決<rt>き</rt></ruby>まりました。<br>*(Thầy Watanabe vừa liên lạc. SSW1 đã duyệt, ngày nhận thẻ cư trú mới là 15/2.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | おお、よかった!N3<ruby>合格<rt>ごうかく</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>に<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>朗報<rt>ろうほう</rt></ruby>だ。<br>*(Ồ, hay quá! Cùng ngày đậu N3 lại có tin vui thứ hai.)* |
| Phong | はい、<ruby>当日<rt>とうじつ</rt></ruby><ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>させていただいてもよろしいでしょうか?<br>*(Vâng, hôm đó em xin xin phép có lương được không ạ?)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | もちろん。<ruby>明日<rt>あした</rt></ruby><ruby>鈴木<rt>すずき</rt></ruby>さんに<ruby>申請<rt>しんせい</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してくれ。<br>*(Đương nhiên. Mai em nộp đơn cho Suzuki.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>夜分<rt>やぶん</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>いたしました。<br>*(Vâng, em rõ. Em xin lỗi đã gọi muộn.)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | おやすみ、フォンさん。<br>*(Ngủ ngon, Phong.)* |

---

## Tình huống 12 — Phòng Phong · 21:30, gọi điện về Hải Phòng báo tin đôi

> Cảnh tiếng Việt — Phong gọi mẹ báo cùng lúc đậu N3 và SSW1 duyệt.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Mẹ ơi, hôm nay con có hai tin vui! |
| Mẹ | (tiếng Việt) Trời, hai tin lận hả con? |
| Phong | (tiếng Việt) Vâng. Một, con đậu JLPT N3 — kỳ thi năng lực tiếng Nhật N3 đó mẹ. 102 điểm. Hai, sếp Watanabe — thầy luật xuất nhập cảnh báo SSW1 — kỹ năng đặc định số 1 đã được duyệt. Ngày 15/2 con lên Cục xuất nhập cảnh Nagoya nhận thẻ cư trú mới. |
| Mẹ | (tiếng Việt) Mẹ mừng chảy nước mắt rồi đây Phong. Bố mày đang xem TV, để mẹ gọi. (gọi) Ông ơi, thằng Phong nó đậu N3 với có visa mới rồi! |
| Bố | (tiếng Việt, cầm máy) Phong, giỏi! Vậy là từ đây đi tiếp 5 năm SSW1 đó hả? |
| Phong | (tiếng Việt) Vâng ạ. Trong 5 năm con sẽ thi tiếp N2 — N2 là cấp cao hơn, và 自動車整備士 cấp 2 — thợ bảo dưỡng ô tô bậc 2. Tháng 7 năm nay con thử N2 lần một. Sếp Yamada bảo đậu N2 là con được chính thức đứng tên phụ trách khách. |
| Bố | (tiếng Việt) Hôm nay tiếp khách lần đầu chưa con? |
| Phong | (tiếng Việt) Vâng, chiều nay tiếp một bác tên Mori, xe Honda Fit, máy có tiếng lạ buổi sáng. Con chẩn đoán là dầu xuống cấp, đề xuất thay dầu với phụ gia. Sếp Yamada khen con thêm câu "lần sau nếu vẫn còn thì sẽ chỉnh valve" hay. |
| Mẹ | (tiếng Việt, lấy lại máy) Con cứ thế là tốt. Nói nhẹ nhàng, khách quay lại. À, Tết âm hôm nào mẹ gửi ít bánh chưng nhà gói qua nhé? |
| Phong | (tiếng Việt) Vâng, mẹ gửi qua đường EMS. Tết âm năm nay 17/2 mẹ ơi, sau ngày con nhận thẻ 2 ngày, vui ghép luôn. Tuần sau con và Tuấn và Đức mở group học mỗi tối thứ Tư. Mẹ với bố giữ sức khoẻ. |

---

## Tình huống 13 — Ký túc, bàn học · 22:30, Phong ghi sổ kế hoạch năm 2028

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>28<rt>にじゅうはち</rt></ruby><ruby>日<rt>にち</rt></ruby>。N3<ruby>合格<rt>ごうかく</rt></ruby>とSSW1<ruby>許可<rt>きょか</rt></ruby><ruby>下<rt>お</rt></ruby>り。<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えます。<br>*(28/1. Đậu N3 và SSW1 duyệt. Sắp xếp kế hoạch 2028.)* |
| Phong | <ruby>一<rt>いち</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>新<rt>あたら</rt></ruby><ruby>在留<rt>ざいりゅう</rt></ruby>カード<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り。<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby><ruby>明日<rt>あした</rt></ruby>。<br>*(Một, 15/2 nhận thẻ cư trú mới. Mai xin phép.)* |
| Phong | <ruby>二<rt>に</rt></ruby>、N2<ruby>勉強<rt>べんきょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<ruby>毎日<rt>まいにち</rt></ruby><ruby>漢字<rt>かんじ</rt></ruby><ruby>語彙<rt>ごい</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>新完全<rt>しんかんぜん</rt></ruby>マスターN2<ruby>文法<rt>ぶんぽう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>。<br>*(Hai, bắt đầu học N2. Mỗi ngày 20 kanji+từ vựng, Shin Kanzen Master N2 ngữ pháp 3 tháng.)* |
| Phong | <ruby>三<rt>さん</rt></ruby>、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>SSW1<ruby>移行<rt>いこう</rt></ruby>、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>N2<ruby>第一回<rt>だいいっかい</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>N2<ruby>第二回<rt>だいにかい</rt></ruby>。<br>*(Ba, tháng 4 chuyển SSW1, tháng 7 thử N2 lần 1, tháng 12 N2 lần 2.)* |
| Phong | <ruby>四<rt>し</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>。<ruby>過去問<rt>かこもん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>。<br>*(Bốn, tháng 10 thi lý thuyết cấp 2. Đề 3 năm × 3 lượt.)* |
| Phong | <ruby>五<rt>ご</rt></ruby>、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>勉強会<rt>べんきょうかい</rt></ruby>(<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>)、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜<rt>どよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>やさしい<ruby>日本語<rt>にほんご</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>。<br>*(Năm, tối thứ Tư hàng tuần group học (3 người), tối thứ Bảy ôn yasashii nihongo.)* |
| Phong | <ruby>六<rt>ろく</rt></ruby>、<ruby>接客<rt>せっきゃく</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。<br>*(Sáu, hỗ trợ 接客 2 lần / tuần.)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>積<rt>つ</rt></ruby>む<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>へ。<br>*(Từng cái một, chắc chắn. Hướng tới năm 2 tích uy tín.)* |

---

## Đọng lại chương 3

Phong nhận hai tin lớn cùng ngày: đậu **JLPT N3 102/180** và **SSW1 申請許可** được duyệt. Học các mẫu câu giai đoạn này: báo tin tốt nghiêm túc bằng **ご報告いたします + 結果 + お礼**, nhận giao việc **接客** lần đầu với khách thật, dùng keigo **〜させていただきます・お持ちいたします・付け加えさせていただきますと**, giải thích chẩn đoán bằng **数値 + 提案 + 次回条件**, và lên lộ trình N2 theo **三つの柱** (語彙・文法・読解聴解) + **二回受験戦略** (tháng 7 + tháng 12). Đồng thời học cách phối hợp 3 người Việt thành **勉強会** chuỗi học (Phong→Tuấn→Đức), gọi điện báo cáo 工場長 ngoài giờ bằng **夜分遅くに失礼いたします**, và xin **有給休暇** đúng quy trình.

> Từ vựng & mẫu câu chương này: 合格・総合点・基準点・聴解・読解・文字語彙・文法・接客・受付補助・点検結果・走行距離・推奨交換距離・粘度低下・異音・始動時・暖機後・バルブクリアランス・聴診器・添加剤・過剰整備・条件付き提案・新完全マスター・連鎖学習・在留カード受け取り・有給休暇申請・ご報告いたします・〜させていただきます・〜と考えております・夜分遅くに失礼いたします・付け加えさせていただきますと

---

## Bí quyết chương

- **JLPT合格 報告**: KHÔNG khoe điểm chủ động; chỉ nói khi sếp hỏi. Mẫu chuẩn: 「<ruby>無事<rt>ぶじ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>することができました」.
- **N2接客 đẳng cấp**: chìa khoá là **条件付き提案** — không khẳng định tuyệt đối, luôn để "lần sau nếu vẫn còn thì".
- **柔らかい言葉**: "<ruby>放置<rt>ほうち</rt></ruby>すると" (cứng) → "<ruby>放<rt>ほう</rt></ruby>っておくと" (mềm). Khách Nhật rất ghét cảm giác bị doạ.
- **連鎖学習 group 3 người**: Phong giảng N2 → Tuấn nghe ké → Tuấn giảng N4 cho Đức → Đức là người được hưởng lợi nhất. Cùng nhau bền hơn học một mình.
- **電話の時間帯**: gọi sếp sau 20:00 phải mở đầu「<ruby>夜分<rt>やぶん</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くに<ruby>失礼<rt>しつれい</rt></ruby>いたします」.
- **N2合格 → đứng tên 接客**: Yamada nói thẳng. Đây là **mệnh động lực thực tế** quan trọng hơn lương — uy tín chuyên môn đi đôi bằng cấp.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 結果 | けっか | KẾT QUẢ | kết quả |
| 合格 | ごうかく | HỢP CÁCH | đậu |
| 総合点 | そうごうてん | TỔNG HỢP ĐIỂM | tổng điểm |
| 基準点 | きじゅんてん | CƠ CHUẨN ĐIỂM | điểm chuẩn |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 文字・語彙 | もじ・ごい | VĂN TỰ - NGỮ VỰNG | chữ - từ vựng |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 余裕 | よゆう | DƯ DỤ | dư dả, thừa |
| 発表 | はっぴょう | PHÁT BIỂU | công bố |
| 朗報 | ろうほう | LÃNG BÁO | tin vui |
| 接客 | せっきゃく | TIẾP KHÁCH | tiếp khách |
| 受付補助 | うけつけほじょ | THỤ PHÓ BỔ TRỢ | hỗ trợ tiếp tân |
| お客様応対 | おきゃくさまおうたい | KHÁCH ỨNG ĐỐI | tiếp đãi khách |
| 異音 | いおん | DỊ ÂM | tiếng lạ |
| 始動時 | しどうじ | THUỶ ĐỘNG THỜI | lúc khởi động |
| 暖機後 | だんきご | NOÃN CƠ HẬU | sau khi máy nóng |
| 走行距離 | そうこうきょり | TẨU HÀNH CỰ LY | số km đã chạy |
| 推奨交換距離 | すいしょうこうかんきょり | THÔI TƯỞNG GIAO HOÁN CỰ LY | km khuyến nghị thay |
| 粘度低下 | ねんどていか | NIÊM ĐỘ ĐÊ HẠ | giảm độ nhớt |
| 残量 | ざんりょう | TÀN LƯỢNG | lượng còn lại |
| 適正下限 | てきせいかげん | THÍCH CHÍNH HẠ HẠN | mức dưới cho phép |
| 摩耗 | まもう | MA HAO | mài mòn |
| 添加剤 | てんかざい | THÊM GIA TỄ | phụ gia |
| 投入 | とうにゅう | ĐẦU NHẬP | đổ vào |
| バルブクリアランス | バルブクリアランス | — | khe hở valve |
| 聴診器 | ちょうしんき | THÍNH CHẨN KHÍ | thiết bị nghe (chẩn đoán) |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 過剰整備 | かじょうせいび | QUÁ THẶNG CHỈNH BỊ | bảo dưỡng quá tay |
| 条件付き提案 | じょうけんつきていあん | ĐIỀU KIỆN PHÓ ĐỀ ÁN | đề xuất có điều kiện |
| 検討 | けんとう | KIỂM THẢO | xem xét |
| 強調 | きょうちょう | CƯỜNG ĐIỆU | nhấn mạnh |
| 待合室 | まちあいしつ | ĐÃI HỢP THẤT | phòng chờ |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng |
| 真っ白 | まっしろ | CHÂN BẠCH | trắng xoá (đầu trắng) |
| 励み | はげみ | LỆ MIỄN | động lực |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 柱 | はしら | TRỤ | trụ cột |
| 新完全マスター | しんかんぜんマスター | TÂN HOÀN TOÀN — | Shin Kanzen Master (giáo trình) |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi năm trước |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thử thách |
| 連鎖学習 | れんさがくしゅう | LIÊN TOẢ HỌC TẬP | học theo chuỗi |
| 勉強会 | べんきょうかい | MIỄN CƯỜNG HỘI | nhóm học |
| 関連 | かんれん | QUAN LIÊN | liên quan |
| 在留カード | ざいりゅうカード | TẠI LƯU — | thẻ cư trú |
| 受け取り | うけとり | THỤ THỦ | nhận |
| 許可 | きょか | HỨA KHẢ | duyệt, cho phép |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | đơn xin |
| 夜分 | やぶん | DẠ PHÂN | đêm khuya |
| 失礼 | しつれい | THẤT LỄ | thất lễ |
| 移行 | いこう | DI HÀNH | chuyển sang |
| 学科試験 | がっかしけん | HỌC KHOA THỬ NGHIỆM | thi lý thuyết |
| 推奨 | すいしょう | THÔI TƯỞNG | khuyến nghị |
| 所要時間 | しょよう じかん | SỞ YẾU THỜI GIAN | thời gian cần |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000004, 800000045, NULL, 'markdown_book', 'T4. Học cho 自動車整備士 2級 — chuyên sâu (整備士2級・学科対策)', '# Sách thực tập sinh ô tô · T4. Học cho 自動車整備士 2級 — chuyên sâu (整備士2級・学科対策)

> **Mục tiêu nhân vật:** Phong (24 tuổi, Hải Phòng) bước vào lộ trình **自動車整備士2級** trong giai đoạn SSW1, ôn thi học khoa ngày 10/10/2028. Học các mẫu hội thoại tiếng Nhật cho học tập kỹ thuật chuyên sâu: hỏi 整備士長 Yamada **〜の仕組みを教えていただけますか** về hệ thống điện ô tô, đọc **配線図** với từ chuyên ngành, trao đổi câu **過去問** với Carlos, đăng ký **整備振興会** khoá học thực hành, mượn **教科書** thư viện 工場, và tổ chức **勉強会** với Tuấn-Đức quanh chủ đề kỹ thuật.

---

## Bối cảnh

Tháng 4/2028. Phong vừa chính thức chuyển sang **特定技能1号 自動車整備** sau lễ trao thẻ cư trú mới ngày 15/2. Ôn thi 整備士2級学科 còn 6 tháng. Yamada vừa nhận thêm vai 講師 cho khoá 整備振興会 chi nhánh Aichi, mở lớp mỗi tối thứ Ba. Carlos đã đậu cấp 2 từ 3 năm trước, kèm Phong. Đức bắt đầu mê hệ thống điện ô tô. Chương tập trung 13 tình huống học chuyên sâu — không có sự cố lớn, không drama; trọng tâm là **学習 + 質問 + 整理**.

---

## Tình huống 1 — Khu lift số 3 · 8:45, Phong xin Yamada giảng cấu tạo オルタネーター

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby>さん、おはようございます。お<ruby>仕事<rt>しごと</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>しご<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?<br>*(Anh Yamada, chào buổi sáng. Trước giờ làm em hỏi chút được không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | おはよう。どうぞ。<br>*(Chào. Mời.)* |
| Phong | <ruby>過去問<rt>かこもん</rt></ruby>でオルタネーターの<ruby>仕組<rt>しく</rt></ruby>みについての<ruby>問題<rt>もんだい</rt></ruby>がありました。<ruby>発電<rt>はつでん</rt></ruby>の<ruby>原理<rt>げんり</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Trong đề năm trước có câu về cấu tạo máy phát. Anh giảng nguyên lý phát điện cho em được không?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | いい<ruby>質問<rt>しつもん</rt></ruby>だ。オルタネーターは<ruby>交流<rt>こうりゅう</rt></ruby><ruby>発電機<rt>はつでんき</rt></ruby>と<ruby>呼<rt>よ</rt></ruby>ぶ。エンジンの<ruby>回転<rt>かいてん</rt></ruby>で<ruby>磁石<rt>じしゃく</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>し、コイル<ruby>内<rt>ない</rt></ruby>に<ruby>電流<rt>でんりゅう</rt></ruby>を<ruby>発生<rt>はっせい</rt></ruby>させる。<br>*(Câu hỏi tốt. Alternator gọi là máy phát điện xoay chiều. Vòng quay engine quay nam châm, sinh dòng điện trong cuộn dây.)* |
| Phong | <ruby>交流<rt>こうりゅう</rt></ruby>...というのは<ruby>直流<rt>ちょくりゅう</rt></ruby>の<ruby>反対<rt>はんたい</rt></ruby>ですか?<br>*(交流... đối lập với 直流 ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | そう。<ruby>交流<rt>こうりゅう</rt></ruby>は<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わる<ruby>電流<rt>でんりゅう</rt></ruby>、<ruby>直流<rt>ちょくりゅう</rt></ruby>は<ruby>一定<rt>いってい</rt></ruby>。<ruby>車<rt>くるま</rt></ruby>のバッテリーは<ruby>直流<rt>ちょくりゅう</rt></ruby>だから、<ruby>交流<rt>こうりゅう</rt></ruby>を<ruby>整流器<rt>せいりゅうき</rt></ruby>(レクチファイア)で<ruby>直流<rt>ちょくりゅう</rt></ruby>に<ruby>変<rt>か</rt></ruby>える。<br>*(Đúng. AC là dòng đổi chiều, DC là dòng cố định. Bình xe là DC, nên AC phải qua bộ chỉnh lưu (rectifier) chuyển thành DC.)* |
| Phong | <ruby>整流器<rt>せいりゅうき</rt></ruby>...は<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>です。ダイオードと<ruby>同<rt>おな</rt></ruby>じものですか?<br>*(整流器... em mới nghe. Có phải giống diode không?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | ダイオードを<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせて<ruby>整流器<rt>せいりゅうき</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る。<ruby>6<rt>ろっ</rt></ruby><ruby>個<rt>こ</rt></ruby>のダイオードでブリッジ<ruby>整流<rt>せいりゅう</rt></ruby><ruby>回路<rt>かいろ</rt></ruby>。<br>*(Ghép diode lại làm rectifier. 6 diode tạo mạch chỉnh lưu cầu.)* |
| Phong | ありがとうございます。<ruby>絵<rt>え</rt></ruby>を<ruby>描<rt>か</rt></ruby>いて<ruby>整理<rt>せいり</rt></ruby>してみます。<br>*(Em cảm ơn. Em sẽ vẽ ra để sắp xếp.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>火曜<rt>かよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>の<ruby>振興会<rt>しんこうかい</rt></ruby><ruby>講座<rt>こうざ</rt></ruby>でも<ruby>取<rt>と</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げるから、<ruby>復習<rt>ふくしゅう</rt></ruby>として<ruby>来<rt>き</rt></ruby>てくれ。<br>*(Tối thứ Ba khoá Hiệp hội cũng dạy chủ đề này, em đến ôn.)* |

---

## Tình huống 2 — Phòng thư viện 工場 · 12:30, Phong mượn 教科書 từ Suzuki

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>鈴木<rt>すずき</rt></ruby>さん、お<ruby>昼<rt>ひる</rt></ruby><ruby>休<rt>やす</rt></ruby>みに<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>図書<rt>としょ</rt></ruby><ruby>室<rt>しつ</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>を<ruby>借<rt>か</rt></ruby>りたいのですが。<br>*(Chị Suzuki, em làm phiền giờ nghỉ trưa. Em muốn mượn sách thư viện.)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | はい、どうぞ。どの<ruby>本<rt>ほん</rt></ruby>ですか?<br>*(Vâng, mời. Sách nào?)* |
| Phong | 「<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>ガソリン自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>教科書<rt>きょうかしょ</rt></ruby>」と「<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>ジーゼル<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>教科書<rt>きょうかしょ</rt></ruby>」の<ruby>2<rt>に</rt></ruby><ruby>冊<rt>さつ</rt></ruby>です。<br>*(Hai cuốn: "Sách giáo khoa 整備士 cấp 2 ô tô xăng" và "ô tô diesel".)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | <ruby>2<rt>に</rt></ruby><ruby>冊<rt>さつ</rt></ruby>とも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>貸出<rt>かしだし</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>延長<rt>えんちょう</rt></ruby><ruby>可<rt>か</rt></ruby>です。<ruby>記録<rt>きろく</rt></ruby><ruby>用紙<rt>ようし</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cả hai đều được. Hạn 2 tuần, gia hạn được. Em ghi vào sổ.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>過去問<rt>かこもん</rt></ruby><ruby>集<rt>しゅう</rt></ruby>もありますか?<br>*(Em rõ. Bộ đề năm trước có không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | <ruby>過去<rt>かこ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>あります。コピーが<ruby>残<rt>のこ</rt></ruby>っていれば<ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Có 5 năm trở lại. Còn bản photo thì tôi cho luôn.)* |
| Phong | ありがとうございます。<ruby>大変<rt>たいへん</rt></ruby><ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn. Cứu em rồi.)* |

---

## Tình huống 3 — Khu nghỉ giữa ca · 13:00, Phong và Carlos trao đổi 過去問 câu khó

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>解<rt>と</rt></ruby>けますか?<br>*(Anh Carlos, đề 2025 đợt 1 câu 23, anh giải được không?)* |
| Carlos | <ruby>見<rt>み</rt></ruby>せて。... ああ、ブレーキ<ruby>倍力<rt>ばいりょく</rt></ruby><ruby>装置<rt>そうち</rt></ruby>の<ruby>仕組<rt>しく</rt></ruby>みの<ruby>問題<rt>もんだい</rt></ruby>か。<ruby>答<rt>こた</rt></ruby>えは「ウ」だ。<br>*(Đưa xem. À, câu về cấu tạo bộ trợ lực phanh. Đáp án "Ư".)* |
| Phong | なぜですか?<ruby>私<rt>わたし</rt></ruby>は「イ」と<ruby>迷<rt>まよ</rt></ruby>いました。<br>*(Vì sao ạ? Em phân vân giữa "Ư" và "I".)* |
| Carlos | 「イ」は<ruby>真空<rt>しんくう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う<ruby>説明<rt>せつめい</rt></ruby>だが、<ruby>圧力差<rt>あつりょくさ</rt></ruby>の<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>逆<rt>ぎゃく</rt></ruby>。マスターバックは<ruby>大気圧<rt>たいきあつ</rt></ruby>と<ruby>真空<rt>しんくう</rt></ruby>の<ruby>差<rt>さ</rt></ruby>でダイヤフラムを<ruby>押<rt>お</rt></ruby>す。<br>*(I là phần dùng chân không, nhưng chiều áp lệch ngược. Master back đẩy diaphragm bằng chênh áp khí quyển và chân không.)* |
| Phong | なるほど、<ruby>大気圧<rt>たいきあつ</rt></ruby>が<ruby>押<rt>お</rt></ruby>す<ruby>側<rt>がわ</rt></ruby>ですね。<ruby>私<rt>わたし</rt></ruby>は<ruby>真空<rt>しんくう</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>ると<ruby>勘違<rt>かんちが</rt></ruby>いしていました。<br>*(Ra vậy, khí quyển là phía đẩy. Em lầm tưởng chân không kéo.)* |
| Carlos | よくある<ruby>勘違<rt>かんちが</rt></ruby>いだ。<ruby>図<rt>ず</rt></ruby>を<ruby>描<rt>か</rt></ruby>いて<ruby>矢印<rt>やじるし</rt></ruby>の<ruby>向<rt>む</rt></ruby>きを<ruby>確認<rt>かくにん</rt></ruby>するといい。<br>*(Lầm phổ biến. Vẽ ra và check hướng mũi tên là tốt.)* |
| Phong | やってみます。あと<ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>あるんですが、<ruby>夜<rt>よる</rt></ruby>でもよろしいですか?<br>*(Em sẽ làm. Em còn 3 câu nữa, tối được không ạ?)* |
| Carlos | いいよ。<ruby>19<rt>じゅうく</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>休憩室<rt>きゅうけいしつ</rt></ruby>で。<br>*(Được. 19h phòng nghỉ.)* |

---

## Tình huống 4 — Khu lift số 1 · 14:00, Phong đọc 配線図 với Yamada

| Vai | Lời thoại |
|---|---|
| <ruby>山田<rt>やまだ</rt></ruby> | フォン、<ruby>本日<rt>ほんじつ</rt></ruby>はカローラの<ruby>電装<rt>でんそう</rt></ruby><ruby>系<rt>けい</rt></ruby>。<ruby>配線図<rt>はいせんず</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>読<rt>よ</rt></ruby>もう。<br>*(Phong, hôm nay hệ điện Corolla. Đọc sơ đồ cùng nhau.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin được hướng dẫn.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | これがバッテリーから<ruby>始<rt>はじ</rt></ruby>まる<ruby>電源<rt>でんげん</rt></ruby><ruby>系統<rt>けいとう</rt></ruby>。<ruby>赤線<rt>あかせん</rt></ruby>はプラス、<ruby>黒線<rt>くろせん</rt></ruby>はマイナス<ruby>接地<rt>せっち</rt></ruby>。<br>*(Đây là mạch nguồn bắt đầu từ bình. Đường đỏ là dương, đen là âm tiếp đất.)* |
| Phong | この<ruby>四角<rt>しかく</rt></ruby>い<ruby>記号<rt>きごう</rt></ruby>はヒューズですね?<ruby>数字<rt>すうじ</rt></ruby>はアンペアでよろしいですか?<br>*(Ký hiệu vuông này là cầu chì đúng không ạ? Số là ampe phải không?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | そう。<ruby>15<rt>じゅうご</rt></ruby>Aヒューズ、<ruby>20<rt>にじゅう</rt></ruby>Aヒューズ。<ruby>定格<rt>ていかく</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>電流<rt>でんりゅう</rt></ruby>が<ruby>流<rt>なが</rt></ruby>れると<ruby>切<rt>き</rt></ruby>れる<ruby>仕組<rt>しく</rt></ruby>みだ。<br>*(Đúng. Cầu chì 15A, 20A. Cơ chế là dòng vượt định mức thì đứt.)* |
| Phong | <ruby>定格<rt>ていかく</rt></ruby>...<ruby>許<rt>ゆる</rt></ruby>される<ruby>最大<rt>さいだい</rt></ruby><ruby>値<rt>ち</rt></ruby>のことですね。<br>*(Định mức... là trị tối đa cho phép phải không ạ.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | そう。じゃあこの<ruby>丸<rt>まる</rt></ruby>に<ruby>線<rt>せん</rt></ruby>が<ruby>入<rt>はい</rt></ruby>った<ruby>記号<rt>きごう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>だ?<br>*(Đúng. Vậy ký hiệu vòng tròn có gạch là gì?)* |
| Phong | <ruby>電球<rt>でんきゅう</rt></ruby>...ランプですね。<br>*(Bóng đèn... đèn ạ.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>三角形<rt>さんかくけい</rt></ruby>はダイオード、<ruby>波線<rt>なみせん</rt></ruby>はコイル。<ruby>記号<rt>きごう</rt></ruby><ruby>表<rt>ひょう</rt></ruby>は<ruby>教科書<rt>きょうかしょ</rt></ruby>の<ruby>巻末<rt>かんまつ</rt></ruby>にある。<br>*(Đúng. Tam giác là diode, đường lượn là cuộn dây. Bảng ký hiệu ở cuối sách giáo khoa.)* |
| Phong | <ruby>暗記<rt>あんき</rt></ruby>するしかないですね。<ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby>ずつ<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Phải học thuộc thôi nhỉ. Em học 3 ký hiệu/ngày.)* |

---

## Tình huống 5 — Phòng họp nhỏ · 17:30 thứ Ba, khoá 振興会 do Yamada giảng

| Vai | Lời thoại |
|---|---|
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>振興会<rt>しんこうかい</rt></ruby><ruby>講座<rt>こうざ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。テーマは「<ruby>充電<rt>じゅうでん</rt></ruby><ruby>系統<rt>けいとう</rt></ruby>」。<br>*(Bắt đầu khoá Hiệp hội hôm nay. Chủ đề "hệ thống nạp điện".)* |
| Phong | よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin được học.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>朝<rt>あさ</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>したオルタネーターの<ruby>復習<rt>ふくしゅう</rt></ruby>から。<ruby>発電<rt>はつでん</rt></ruby><ruby>原理<rt>げんり</rt></ruby>を<ruby>言<rt>い</rt></ruby>える<ruby>人<rt>ひと</rt></ruby>?<br>*(Ôn alternator hồi sáng. Ai nói được nguyên lý phát điện?)* |
| Phong | はい。エンジン<ruby>回転<rt>かいてん</rt></ruby>で<ruby>磁石<rt>じしゃく</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>し、コイル<ruby>内<rt>ない</rt></ruby>に<ruby>電流<rt>でんりゅう</rt></ruby>を<ruby>誘導<rt>ゆうどう</rt></ruby>し<ruby>発生<rt>はっせい</rt></ruby>させます。<ruby>整流器<rt>せいりゅうき</rt></ruby>で<ruby>交流<rt>こうりゅう</rt></ruby>を<ruby>直流<rt>ちょくりゅう</rt></ruby>に<ruby>変換<rt>へんかん</rt></ruby>します。<br>*(Vâng. Vòng quay engine quay nam châm, cảm ứng sinh dòng trong cuộn. Rectifier chuyển AC sang DC.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>、ICレギュレーターの<ruby>役割<rt>やくわり</rt></ruby>は?<br>*(Hoàn hảo. Tiếp, vai trò IC regulator?)* |
| Phong | <ruby>発電<rt>はつでん</rt></ruby><ruby>電圧<rt>でんあつ</rt></ruby>を<ruby>一定<rt>いってい</rt></ruby>に<ruby>保<rt>たも</rt></ruby>つことです。エンジン<ruby>回転<rt>かいてん</rt></ruby><ruby>数<rt>すう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わっても、バッテリー<ruby>電圧<rt>でんあつ</rt></ruby><ruby>14<rt>じゅうよん</rt></ruby>ボルト<ruby>前後<rt>ぜんご</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Giữ điện áp phát ra ổn định. Dù vòng tua thay đổi, vẫn giữ áp bình khoảng 14V.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>14<rt>じゅうよん</rt></ruby>ボルト<ruby>前後<rt>ぜんご</rt></ruby>と<ruby>言<rt>い</rt></ruby>えたのがいい。<ruby>13.8<rt>じゅうさんてんはち</rt></ruby>から<ruby>14.5<rt>じゅうよんてんご</rt></ruby>がよくある<ruby>正常<rt>せいじょう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>。<br>*(Nói được khoảng 14V là tốt. 13.8-14.5V là dải bình thường.)* |
| Phong | <ruby>範囲<rt>はんい</rt></ruby>の<ruby>数字<rt>すうじ</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em sẽ nhớ luôn dải số đó.)* |

---

## Tình huống 6 — Khoá 振興会 · 18:30, câu hỏi từ học viên khác

| Vai | Lời thoại |
|---|---|
| Học viên | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>充電<rt>じゅうでん</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>の<ruby>診断<rt>しんだん</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Thầy Yamada, dạy quy trình chẩn đoán nạp điện kém ạ.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | フォン、<ruby>答<rt>こた</rt></ruby>えてみるか?<br>*(Phong, em trả lời thử?)* |
| Phong | はい。<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>三<rt>みっ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、エンジン<ruby>停止時<rt>ていしじ</rt></ruby>のバッテリー<ruby>電圧<rt>でんあつ</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>、<ruby>正常値<rt>せいじょうち</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby>ボルト<ruby>以上<rt>いじょう</rt></ruby>。<br>*(Vâng. Tuần tự 3 bước. Một, đo áp bình lúc tắt máy, bình thường trên 12V.)* |
| Phong | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、エンジン<ruby>始動<rt>しどう</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>電圧<rt>でんあつ</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>、<ruby>正常<rt>せいじょう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>は<ruby>13.8<rt>じゅうさんてんはち</rt></ruby>から<ruby>14.5<rt>じゅうしてんご</rt></ruby>ボルト。<br>*(Hai, đo sau khi nổ máy, dải bình thường 13.8-14.5V.)* |
| Phong | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>負荷<rt>ふか</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby>での<ruby>測定<rt>そくてい</rt></ruby>。ヘッドライトやエアコンON<ruby>状態<rt>じょうたい</rt></ruby>で<ruby>電圧<rt>でんあつ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きく<ruby>下<rt>さ</rt></ruby>がる<ruby>場合<rt>ばあい</rt></ruby>、オルタネーター<ruby>不良<rt>ふりょう</rt></ruby>の<ruby>可能<rt>かのう</rt></ruby><ruby>性<rt>せい</rt></ruby>。<br>*(Ba, đo lúc có tải. Bật pha + điều hoà, nếu áp tụt nhiều thì có thể alternator hỏng.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>順番<rt>じゅんばん</rt></ruby>と<ruby>数値<rt>すうち</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>っている。これが<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>レベルの<ruby>回答<rt>かいとう</rt></ruby>だ。<br>*(Tuyệt. Đủ tuần tự và con số. Đây là cấp độ 整備士 cấp 2.)* |
| Phong | ありがとうございます。<ruby>過去問<rt>かこもん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えた<ruby>手順<rt>てじゅん</rt></ruby>です。<br>*(Em cảm ơn. Em học từ đề năm trước.)* |

---

## Tình huống 7 — Phòng họp nhỏ · 19:30, sau khoá học, Phong xin Yamada lời khuyên ưu tiên

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>もありがとうございました。<ruby>残<rt>のこ</rt></ruby>り<ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>優先<rt>ゆうせん</rt></ruby>すべき<ruby>分野<rt>ぶんや</rt></ruby>はどこでしょうか?<br>*(Anh, hôm nay em cảm ơn nữa. Còn 6 tháng, em nên ưu tiên mảng nào ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | 「<ruby>故障<rt>こしょう</rt></ruby><ruby>原因<rt>げんいん</rt></ruby>」と「<ruby>法令<rt>ほうれい</rt></ruby>」だ。フォンの<ruby>場合<rt>ばあい</rt></ruby>、<ruby>整備<rt>せいび</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>で<ruby>身<rt>み</rt></ruby>についている。<br>*(Là "nguyên nhân hỏng" và "luật". Trường hợp em, kiến thức bảo dưỡng đã nắm ở hiện trường.)* |
| Phong | <ruby>法令<rt>ほうれい</rt></ruby>は<ruby>外国人<rt>がいこくじん</rt></ruby>には<ruby>特<rt>とく</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しいですよね。<br>*(Luật với người nước ngoài đặc biệt khó nhỉ.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | そう。<ruby>道路<rt>どうろ</rt></ruby><ruby>運送<rt>うんそう</rt></ruby><ruby>車両<rt>しゃりょう</rt></ruby><ruby>法<rt>ほう</rt></ruby>、<ruby>同<rt>どう</rt></ruby><ruby>施行<rt>しこう</rt></ruby><ruby>規則<rt>きそく</rt></ruby>、<ruby>保安<rt>ほあん</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>の<ruby>三本<rt>さんぼん</rt></ruby><ruby>柱<rt>ばしら</rt></ruby>。<ruby>各<rt>かく</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>程度<rt>ていど</rt></ruby><ruby>出<rt>で</rt></ruby>る。<br>*(Đúng. Luật phương tiện vận tải đường bộ, quy tắc thi hành, tiêu chuẩn an toàn — 3 trụ. Mỗi mảng khoảng 10 câu.)* |
| Phong | <ruby>三<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>柱<rt>ばしら</rt></ruby>...というのは、<ruby>三<rt>みっ</rt></ruby>つの<ruby>主要<rt>しゅよう</rt></ruby>な<ruby>法律<rt>ほうりつ</rt></ruby>ですね?<br>*(Ba trụ... là ba luật chính phải không ạ?)* |
| <ruby>山田<rt>やまだ</rt></ruby> | そう。<ruby>俺<rt>おれ</rt></ruby>のノートを<ruby>貸<rt>か</rt></ruby>す。<ruby>条文<rt>じょうぶん</rt></ruby>を<ruby>暗記<rt>あんき</rt></ruby>するんじゃなく、<ruby>例<rt>たと</rt></ruby>えと<ruby>違反例<rt>いはんれい</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えるといい。<br>*(Đúng. Anh cho mượn vở. Đừng học thuộc lòng điều khoản, học bằng ví dụ và ví dụ vi phạm.)* |
| Phong | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn. Anh cứu em.)* |

---

## Tình huống 8 — Khu nghỉ · 19:00 tối khác, Phong và Carlos giải 3 câu khó

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>続<rt>つづ</rt></ruby>きの<ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>です。<ruby>問<rt>もん</rt></ruby><ruby>41<rt>よんじゅういち</rt></ruby>、ABS<ruby>装置<rt>そうち</rt></ruby>の<ruby>作動<rt>さどう</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>説明<rt>せつめい</rt></ruby>しているのはどれか。<br>*(Anh, 3 câu tiếp. Câu 41, mô tả nào đúng cho hoạt động ABS.)* |
| Carlos | これは<ruby>定番<rt>ていばん</rt></ruby>。「タイヤがロックする<ruby>直前<rt>ちょくぜん</rt></ruby>で<ruby>油圧<rt>ゆあつ</rt></ruby>を<ruby>制御<rt>せいぎょ</rt></ruby>し、ロックを<ruby>防止<rt>ぼうし</rt></ruby>する」が<ruby>正解<rt>せいかい</rt></ruby>。<br>*(Câu kinh điển. "Điều khiển áp dầu ngay trước khi lốp bị khoá, chống khoá bánh" là đúng.)* |
| Phong | 「<ruby>急<rt>きゅう</rt></ruby>ブレーキ<ruby>時<rt>じ</rt></ruby>に<ruby>制動<rt>せいどう</rt></ruby>距離を<ruby>短<rt>みじか</rt></ruby>くする」は<ruby>間違<rt>まちが</rt></ruby>いですね?<br>*(Câu "phanh gấp làm giảm quãng đường phanh" sai phải không ạ?)* |
| Carlos | そう。ABSは<ruby>制動<rt>せいどう</rt></ruby><ruby>距離<rt>きょり</rt></ruby>を<ruby>短<rt>みじか</rt></ruby>くするためではなく、ハンドル<ruby>操作<rt>そうさ</rt></ruby>を<ruby>可能<rt>かのう</rt></ruby>にするための<ruby>装置<rt>そうち</rt></ruby>だ。これは<ruby>引<rt>ひ</rt></ruby>っかけ<ruby>問題<rt>もんだい</rt></ruby>。<br>*(Đúng. ABS không để giảm quãng phanh, mà để giữ lái được. Câu bẫy.)* |
| Phong | なるほど、<ruby>引<rt>ひ</rt></ruby>っかけ<ruby>問題<rt>もんだい</rt></ruby>...<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Ra vậy, 引っかけ問題... em mới nghe.)* |
| Carlos | <ruby>正<rt>ただ</rt></ruby>しそうに<ruby>見<rt>み</rt></ruby>えるけど<ruby>細部<rt>さいぶ</rt></ruby>が<ruby>間違<rt>まちが</rt></ruby>っている<ruby>問題<rt>もんだい</rt></ruby>。<ruby>試験<rt>しけん</rt></ruby>でも<ruby>必<rt>かなら</rt></ruby>ず<ruby>数<rt>すう</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>出<rt>で</rt></ruby>る。<br>*(Trông đúng nhưng chi tiết sai. Thi cũng luôn có vài câu.)* |
| Phong | <ruby>細部<rt>さいぶ</rt></ruby>まで<ruby>読<rt>よ</rt></ruby>むことですね。<br>*(Phải đọc đến chi tiết phải không ạ.)* |
| Carlos | そう。<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>読<rt>よ</rt></ruby>む<ruby>癖<rt>くせ</rt></ruby>をつけろ。<br>*(Đúng. Tập thói quen đọc lựa chọn 2 lần.)* |

---

## Tình huống 9 — Ký túc, phòng ăn · 20:00, 勉強会 nhóm 3 người

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>勉強会<rt>べんきょうかい</rt></ruby><ruby>始<rt>はじ</rt></ruby>めよう。テーマは「<ruby>引<rt>ひ</rt></ruby>っかけ<ruby>問題<rt>もんだい</rt></ruby>の<ruby>見<rt>み</rt></ruby><ruby>分<rt>わ</rt></ruby>け<ruby>方<rt>かた</rt></ruby>」。<br>*(Bắt đầu group hôm nay. Chủ đề "cách nhận diện câu bẫy".)* |
| Tuấn | フォン<ruby>兄<rt>にい</rt></ruby>さん、<ruby>引<rt>ひ</rt></ruby>っかけ<ruby>問題<rt>もんだい</rt></ruby>って<ruby>具体的<rt>ぐたいてき</rt></ruby>にはどんなのですか?<br>*(Anh Phong, câu bẫy cụ thể là kiểu nào ạ?)* |
| Phong | カルロスさんに<ruby>教<rt>おし</rt></ruby>えてもらった<ruby>例<rt>れい</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>する。ABSの<ruby>働<rt>はたら</rt></ruby>きを「<ruby>制動<rt>せいどう</rt></ruby><ruby>距離<rt>きょり</rt></ruby>を<ruby>短<rt>みじか</rt></ruby>くする」と<ruby>書<rt>か</rt></ruby>いてある<ruby>選択肢<rt>せんたくし</rt></ruby>は<ruby>間違<rt>まちが</rt></ruby>い。<br>*(Anh giới thiệu ví dụ Carlos dạy. Lựa chọn ghi "ABS làm giảm quãng phanh" là sai.)* |
| Đức | え、<ruby>短<rt>みじか</rt></ruby>くしないんですか?<br>*(Ơ, không giảm ạ?)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>の<ruby>目的<rt>もくてき</rt></ruby>は「ハンドル<ruby>操作<rt>そうさ</rt></ruby>を<ruby>保<rt>たも</rt></ruby>つこと」。<ruby>距離<rt>きょり</rt></ruby>はむしろ<ruby>同<rt>おな</rt></ruby>じか<ruby>長<rt>なが</rt></ruby>くなることもある。<br>*(Mục đích thật là "giữ được lái". Quãng đường có khi bằng hoặc dài hơn.)* |
| Tuấn | じゃあN3の<ruby>読解<rt>どっかい</rt></ruby>でも<ruby>細部<rt>さいぶ</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけないといけませんね。<br>*(Vậy đọc N3 cũng phải để ý chi tiết nhỉ.)* |
| Phong | そう。「すべて」「<ruby>必<rt>かなら</rt></ruby>ず」「<ruby>一度<rt>いちど</rt></ruby>も」が<ruby>選択肢<rt>せんたくし</rt></ruby>に<ruby>出<rt>で</rt></ruby>てきたら<ruby>要<rt>よう</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(Đúng. Lựa chọn có "tất cả", "nhất định", "không một lần nào" là phải lưu ý.)* |
| Đức | ドゥックのN4でも<ruby>同<rt>おな</rt></ruby>じですか?<br>*(N4 của Đức em cũng vậy ạ?)* |
| Phong | <ruby>同<rt>おな</rt></ruby>じだ。<ruby>言語<rt>げんご</rt></ruby>テストの<ruby>共通<rt>きょうつう</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>。<br>*(Giống. Nguyên tắc chung cho thi ngôn ngữ.)* |
| Tuấn | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>学<rt>まな</rt></ruby>びは「<ruby>細部<rt>さいぶ</rt></ruby>まで<ruby>読<rt>よ</rt></ruby>む」ですね。ノートに<ruby>大<rt>おお</rt></ruby>きく<ruby>書<rt>か</rt></ruby>いておきます。<br>*(Bài học hôm nay là "đọc đến chi tiết". Em viết to vào vở.)* |

---

## Tình huống 10 — Phòng Phong · 22:00, Phong và Tuấn so 過去問 lý thuyết

| Vai | Lời thoại |
|---|---|
| Tuấn | フォン<ruby>兄<rt>にい</rt></ruby>さん、<ruby>俺<rt>おれ</rt></ruby>もちょっと<ruby>整備士<rt>せいびし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てみたいです。<ruby>難<rt>むずか</rt></ruby>しさを<ruby>知<rt>し</rt></ruby>っておきたい。<br>*(Anh, em cũng muốn xem đề năm trước 整備士 cấp 3. Em muốn biết trước độ khó.)* |
| Phong | いいよ。これは<ruby>俺<rt>おれ</rt></ruby>が<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けた<ruby>問題<rt>もんだい</rt></ruby>。<ruby>50<rt>ごじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby><ruby>35<rt>さんじゅうご</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>正解<rt>せいかい</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>だった。<br>*(Được. Đây là đề anh thi cách đây 1 năm. 50 câu được 35 là đậu.)* |
| Tuấn | <ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>何<rt>なん</rt></ruby><ruby>問<rt>もん</rt></ruby>ですか?<br>*(Ngưỡng đậu bao nhiêu câu ạ?)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>(<ruby>60<rt>ろくじゅう</rt></ruby>パーセント)。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>60<rt>ろくじゅう</rt></ruby>パーセント。<br>*(Cấp 3 là 30 câu (60%). Cấp 2 cũng 60%.)* |
| Tuấn | <ruby>俺<rt>おれ</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>夏<rt>なつ</rt></ruby><ruby>受<rt>う</rt></ruby>ける<ruby>予定<rt>よてい</rt></ruby>。<ruby>今<rt>いま</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby><ruby>始<rt>はじ</rt></ruby>めると<ruby>遅<rt>おそ</rt></ruby>くないですか?<br>*(Em định thi hè sang năm. Bây giờ bắt đầu có muộn không?)* |
| Phong | <ruby>遅<rt>おそ</rt></ruby>くない。<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>ある。<ruby>俺<rt>おれ</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>準備<rt>じゅんび</rt></ruby>した。<br>*(Không muộn. Còn 1 năm 3 tháng. Anh chuẩn bị 10 tháng.)* |
| Tuấn | <ruby>明日<rt>あした</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>過去問<rt>かこもん</rt></ruby>やります。<br>*(Từ mai mỗi ngày 30 phút giải đề.)* |
| Phong | いい<ruby>計画<rt>けいかく</rt></ruby>。<ruby>分<rt>わ</rt></ruby>からない<ruby>問題<rt>もんだい</rt></ruby>は<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>の<ruby>勉強会<rt>べんきょうかい</rt></ruby>で<ruby>聞<rt>き</rt></ruby>けばいい。<br>*(Kế hoạch tốt. Câu không hiểu hỏi vào group thứ Tư hàng tuần.)* |

---

## Tình huống 11 — Phòng Phong · 22:30, gọi điện về Hải Phòng nói chuyện với bố

> Cảnh tiếng Việt — Phong gọi bố hỏi kinh nghiệm về máy phát ô tô (bố làm cơ khí).

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, hôm nay con học về máy phát ô tô — オルタネーター, alternator. Con muốn hỏi bố kinh nghiệm ở ga ra Hải Phòng. |
| Bố | (tiếng Việt) Ờ, máy phát thì bố sửa nhiều. Con hỏi gì? |
| Phong | (tiếng Việt) Sếp Yamada bảo có cái 整流器 — bộ chỉnh lưu, dùng 6 con diode ghép cầu để chuyển AC sang DC. Bố ngày xưa có hay phải thay 6 con đó không? |
| Bố | (tiếng Việt) À cái cầu diode. Có chứ, hỏng một con là máy phát ra điện yếu liền. Hồi đó bố thay cả cụm vì lẻ ra mua không có. |
| Phong | (tiếng Việt) Ở Nhật mình cũng thường thay cả cụm. Một con là 200 yên, nhưng công bóc ra với hàn lại đắt hơn. |
| Bố | (tiếng Việt) Ờ, bên Nhật tiền công nó cao mà. À nói cho bố nghe, ICレギュレーター — IC regulator giữ áp 14V đúng không con? |
| Phong | (tiếng Việt) Vâng bố! Dải bình thường 13.8 đến 14.5V. Bố nhớ kỹ thật. |
| Bố | (tiếng Việt) Mấy chục năm sửa máy mà con. À, con học cho cái bằng cấp 2 đó là gồm cả 法令 — luật giao thông phải không? |
| Phong | (tiếng Việt) Vâng. Có 3 trụ: Luật phương tiện vận tải đường bộ, Quy tắc thi hành, Tiêu chuẩn an toàn. Sếp Yamada bảo học bằng ví dụ vi phạm chứ không phải thuộc lòng điều khoản. |
| Bố | (tiếng Việt) Sếp con dạy hay. Ở mình cũng vậy, lái xe ngoài đường cứ nhớ chỗ nào hay bị thổi phạt là biết luật. |
| Phong | (tiếng Việt) Vâng. Tuần này con sẽ gửi mẹ một ít. Bố giữ sức khoẻ. Mai con dậy sớm lên lift số 1. |

---

## Tình huống 12 — Khu lift số 1 · 8:15 sáng hôm sau, Phong dùng kiến thức mới giải thích cho Đức

| Vai | Lời thoại |
|---|---|
| Đức | フォン<ruby>兄<rt>にい</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>のヴィッツ、バッテリー<ruby>電圧<rt>でんあつ</rt></ruby><ruby>11.5<rt>じゅういってんご</rt></ruby>ボルトでした。<ruby>低<rt>ひく</rt></ruby>いですよね?<br>*(Anh Phong, Vitz hôm nay đo bình 11.5V. Thấp đúng không ạ?)* |
| Phong | そうだね、<ruby>停止時<rt>ていしじ</rt></ruby><ruby>正常値<rt>せいじょうち</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby>ボルト<ruby>以上<rt>いじょう</rt></ruby>。<ruby>11.5<rt>じゅういってんご</rt></ruby>は<ruby>明<rt>あき</rt></ruby>らかに<ruby>低<rt>ひく</rt></ruby>い。<br>*(Đúng. Lúc tắt máy chuẩn từ 12V. 11.5 rõ là thấp.)* |
| Đức | エンジンかけて<ruby>測<rt>はか</rt></ruby>った<ruby>方<rt>ほう</rt></ruby>がいいですか?<br>*(Nổ máy đo lại được không ạ?)* |
| Phong | はい、<ruby>始動<rt>しどう</rt></ruby><ruby>後<rt>ご</rt></ruby><ruby>13.8<rt>じゅうさんてんはち</rt></ruby>から<ruby>14.5<rt>じゅうしてんご</rt></ruby>ボルトに<ruby>上<rt>あ</rt></ruby>がれば<ruby>充電<rt>じゅうでん</rt></ruby><ruby>系統<rt>けいとう</rt></ruby>は<ruby>正常<rt>せいじょう</rt></ruby>、バッテリー<ruby>自体<rt>じたい</rt></ruby>の<ruby>劣化<rt>れっか</rt></ruby>。<br>*(Vâng, sau khi nổ lên 13.8-14.5V là hệ nạp bình thường, bình bị xuống cấp.)* |
| Đức | <ruby>上<rt>あ</rt></ruby>がらなかったら?<br>*(Không lên thì sao ạ?)* |
| Phong | オルタネーターか<ruby>整流器<rt>せいりゅうき</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>の<ruby>可能<rt>かのう</rt></ruby><ruby>性<rt>せい</rt></ruby>。<ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>して、<ruby>負荷<rt>ふか</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby>でも<ruby>測<rt>はか</rt></ruby>る。<br>*(Khả năng alternator hoặc rectifier hỏng. Báo anh Yamada, đo cả lúc có tải.)* |
| Đức | フォン<ruby>兄<rt>にい</rt></ruby>さん、すごい。<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>のおかげですか?<br>*(Anh Phong giỏi. Nhờ học cấp 2 hả anh?)* |
| Phong | そう。<ruby>昨日<rt>きのう</rt></ruby><ruby>振興会<rt>しんこうかい</rt></ruby>で<ruby>習<rt>なら</rt></ruby>った<ruby>診断<rt>しんだん</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>そのままだ。<br>*(Đúng. Đúng quy trình chẩn đoán hôm qua học ở Hiệp hội.)* |
| Đức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>そうなれるように、N4<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cũng cố để 3 năm sau như anh. Em cố N4.)* |

---

## Tình huống 13 — Ký túc, bàn học · 23:00, Phong ghi sổ tuần và lịch ôn thi

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>週<rt>しゅう</rt></ruby>、<ruby>学習<rt>がくしゅう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<br>*(Tuần 3 tháng 4, sắp xếp ghi chép học tập.)* |
| Phong | <ruby>一<rt>いち</rt></ruby>、<ruby>振興会<rt>しんこうかい</rt></ruby><ruby>講座<rt>こうざ</rt></ruby><ruby>出席<rt>しゅっせき</rt></ruby><ruby>済<rt>ず</rt></ruby>み(<ruby>充電<rt>じゅうでん</rt></ruby><ruby>系統<rt>けいとう</rt></ruby>)。<ruby>二<rt>に</rt></ruby>、<ruby>図書<rt>としょ</rt></ruby><ruby>室<rt>しつ</rt></ruby>から<ruby>教科書<rt>きょうかしょ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>冊<rt>さつ</rt></ruby>と<ruby>過去問<rt>かこもん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby><ruby>借用<rt>しゃくよう</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(Một, đã dự khoá Hiệp hội (hệ nạp điện). Hai, đã mượn 2 sách giáo khoa + đề 5 năm.)* |
| Phong | <ruby>三<rt>さん</rt></ruby>、カルロスさんと<ruby>過去問<rt>かこもん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>解説<rt>かいせつ</rt></ruby>(ブレーキ・ABS)。<ruby>四<rt>し</rt></ruby>、<ruby>勉強会<rt>べんきょうかい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby><ruby>実施<rt>じっし</rt></ruby><ruby>済<rt>ず</rt></ruby>み(<ruby>引<rt>ひ</rt></ruby>っかけ<ruby>問題<rt>もんだい</rt></ruby>)。<br>*(Ba, giải 4 câu với Carlos (Phanh - ABS). Bốn, đã làm group thứ Tư (câu bẫy).)* |
| Phong | <ruby>残<rt>のこ</rt></ruby>り<ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>の<ruby>優先<rt>ゆうせん</rt></ruby><ruby>順位<rt>じゅんい</rt></ruby>:<ruby>一<rt>いち</rt></ruby>、<ruby>故障<rt>こしょう</rt></ruby><ruby>原因<rt>げんいん</rt></ruby>(<ruby>電気<rt>でんき</rt></ruby><ruby>系<rt>けい</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>)。<ruby>二<rt>に</rt></ruby>、<ruby>法令<rt>ほうれい</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>柱<rt>ばしら</rt></ruby>(<ruby>山田<rt>やまだ</rt></ruby>さんノート)。<br>*(Ưu tiên 6 tháng còn lại: Một, nguyên nhân hỏng (trọng tâm điện). Hai, 3 trụ luật (vở anh Yamada).)* |
| Phong | <ruby>三<rt>さん</rt></ruby>、<ruby>引<rt>ひ</rt></ruby>っかけ<ruby>問題<rt>もんだい</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>(<ruby>選択肢<rt>せんたくし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>読<rt>よ</rt></ruby>む<ruby>癖<rt>くせ</rt></ruby>)。<ruby>四<rt>し</rt></ruby>、<ruby>過去問<rt>かこもん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>周<rt>しゅう</rt></ruby>。<br>*(Ba, đối phó câu bẫy (đọc lựa chọn 2 lần). Bốn, đề 5 năm × 3 vòng.)* |
| Phong | <ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>/<ruby>50<rt>ごじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>。<br>*(10/10 thi thật, mục tiêu đậu 40/50.)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>積<rt>つ</rt></ruby>む<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>柱<rt>はしら</rt></ruby>。<br>*(Từng cái một, chắc chắn. Trụ của năm 2 tích uy tín.)* |

---

## Đọng lại chương 4

Phong bắt đầu lộ trình **自動車整備士2級学科** với 6 tháng chuẩn bị. Học các mẫu câu học chuyên sâu: hỏi cấu tạo bằng **〜の仕組みを教えていただけますか + 発電原理**, đọc 配線図 với từ chuyên ngành **記号・定格・ヒューズ・整流器・電球・コイル**, giải 過去問 với câu trả lời chuẩn cấp 2 (**順番 + 数値 + 範囲**), tránh **引っかけ問題** bằng cách đọc lựa chọn 2 lần. Trao đổi nhóm 3 người Việt theo chuỗi Phong→Tuấn→Đức, mỗi người chia sẻ cấp độ tương ứng. Học từ Yamada **三本柱 法令** (Luật phương tiện vận tải, Quy tắc thi hành, Tiêu chuẩn an toàn) — học bằng ví dụ vi phạm, không thuộc điều khoản. Áp dụng kiến thức mới vào việc thật ngay sáng hôm sau (chẩn đoán Vitz cho Đức xem). Lịch chốt: **10/10/2028 thi thật, mục tiêu 40/50**.

> Từ vựng & mẫu câu chương này: 仕組み・原理・発電・交流・直流・整流器・ダイオード・コイル・磁石・電流・電圧・電源系統・配線図・記号・ヒューズ・定格・電球・ICレギュレーター・正常範囲・負荷状態・充電系統・診断手順・故障原因・法令三本柱・道路運送車両法・施行規則・保安基準・引っかけ問題・選択肢・要注意・過去問・教科書・振興会講座・〜の仕組みを教えていただけますか・〜の役割は・順番に三つ

---

## Bí quyết chương

- **質問のレベル感**: hỏi 整備士長 phải có **chuẩn bị bằng câu hỏi cụ thể** (từ đề năm trước, từ tình huống thật), không hỏi mơ hồ kiểu "anh giảng giúp em".
- **数値で答える文化**: trả lời lý thuyết cấp 2 luôn phải kèm **range cụ thể** (13.8-14.5V, 12V以上). Đáp số chung chung trượt.
- **引っかけ問題 = 3 từ khoá**: 「すべて」「<ruby>必<rt>かなら</rt></ruby>ず」「<ruby>一度<rt>いちど</rt></ruby>も」 thấy là phải nghi.
- **配線図記号 = bảng cuối sách**: học 3 ký hiệu / ngày, đừng học một lèo.
- **法令 với người nước ngoài**: học bằng **違反例** (ví dụ vi phạm cụ thể) — ai cũng nhớ chuyện ai bị phạt, không ai nhớ điều khoản.
- **連鎖学習 chéo cấp**: anh giảng cấp 2 → em năm 2 hấp thụ giảm cấp → giảng lại cho năm 1. Cách nhanh nhất để chính người giảng nhớ kỹ.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 仕組み | しくみ | SĨ TỔ | cơ chế, cấu tạo |
| 原理 | げんり | NGUYÊN LÝ | nguyên lý |
| 発電 | はつでん | PHÁT ĐIỆN | phát điện |
| オルタネーター | オルタネーター | — | máy phát điện |
| 交流 | こうりゅう | GIAO LƯU | điện xoay chiều (AC) |
| 直流 | ちょくりゅう | TRỰC LƯU | điện một chiều (DC) |
| 整流器 | せいりゅうき | CHỈNH LƯU KHÍ | bộ chỉnh lưu (rectifier) |
| ダイオード | ダイオード | — | diode |
| コイル | コイル | — | cuộn dây |
| 磁石 | じしゃく | TỪ THẠCH | nam châm |
| 電流 | でんりゅう | ĐIỆN LƯU | dòng điện |
| 電圧 | でんあつ | ĐIỆN ÁP | điện áp |
| 誘導 | ゆうどう | DỤ ĐẠO | cảm ứng |
| 変換 | へんかん | BIẾN HOÁN | chuyển đổi |
| 電源系統 | でんげんけいとう | ĐIỆN NGUYÊN HỆ THỐNG | hệ thống nguồn |
| 配線図 | はいせんず | PHỐI TUYẾN ĐỒ | sơ đồ dây điện |
| 記号 | きごう | KÝ HIỆU | ký hiệu |
| 接地 | せっち | TIẾP ĐỊA | tiếp đất, mass |
| ヒューズ | ヒューズ | — | cầu chì |
| 定格 | ていかく | ĐỊNH CÁCH | định mức |
| 電球 | でんきゅう | ĐIỆN CẦU | bóng đèn |
| ICレギュレーター | ICレギュレーター | — | IC điều áp |
| 正常範囲 | せいじょうはんい | CHÍNH THƯỜNG PHẠM VI | dải bình thường |
| 負荷状態 | ふかじょうたい | PHỤ HÀ TRẠNG THÁI | trạng thái có tải |
| 充電系統 | じゅうでんけいとう | SUNG ĐIỆN HỆ THỐNG | hệ thống nạp |
| 診断手順 | しんだんてじゅん | CHẨN ĐOÁN THỦ TRÌNH | quy trình chẩn đoán |
| 順番 | じゅんばん | THUẬN PHIÊN | tuần tự |
| 故障原因 | こしょうげんいん | CỐ CHƯỚNG NGUYÊN NHÂN | nguyên nhân hỏng hóc |
| 法令 | ほうれい | PHÁP LỆNH | luật, pháp lệnh |
| 三本柱 | さんぼんばしら | TAM BỔN TRỤ | ba trụ chính |
| 道路運送車両法 | どうろうんそうしゃりょうほう | ĐẠO LỘ VẬN TỐNG XA LƯỢNG PHÁP | Luật phương tiện vận tải đường bộ |
| 施行規則 | しこうきそく | THI HÀNH QUY TẮC | quy tắc thi hành |
| 保安基準 | ほあんきじゅん | BẢO AN CƠ CHUẨN | tiêu chuẩn an toàn |
| 条文 | じょうぶん | ĐIỀU VĂN | điều khoản |
| 違反例 | いはんれい | VI PHẠM LỆ | ví dụ vi phạm |
| 引っかけ問題 | ひっかけもんだい | DẪN — VẤN ĐỀ | câu bẫy |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 要注意 | ようちゅうい | YẾU CHÚ Ý | cần lưu ý |
| 細部 | さいぶ | TẾ BỘ | chi tiết nhỏ |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi năm trước |
| 教科書 | きょうかしょ | GIÁO KHOA THƯ | sách giáo khoa |
| 図書室 | としょしつ | ĐỒ THƯ THẤT | thư viện (phòng) |
| 貸出期間 | かしだしきかん | THẢI XUẤT KỲ GIAN | thời hạn cho mượn |
| 振興会講座 | しんこうかいこうざ | CHẤN HƯNG HỘI GIẢNG TỌA | khoá học Hiệp hội bảo dưỡng |
| 圧力差 | あつりょくさ | ÁP LỰC SAI | chênh lệch áp |
| 大気圧 | たいきあつ | ĐẠI KHÍ ÁP | áp khí quyển |
| 真空 | しんくう | CHÂN KHÔNG | chân không |
| ダイヤフラム | ダイヤフラム | — | màng (diaphragm) |
| マスターバック | マスターバック | — | bộ trợ lực phanh |
| 制御 | せいぎょ | CHẾ NGỰ | điều khiển |
| 防止 | ぼうし | PHÒNG CHỈ | ngăn ngừa |
| 制動距離 | せいどうきょり | CHẾ ĐỘNG CỰ LY | quãng đường phanh |
| ハンドル操作 | ハンドルそうさ | — TÁC SỬ | thao tác lái |
| 暗記 | あんき | ÁM KÝ | học thuộc lòng |
| 巻末 | かんまつ | QUYỂN MẠT | cuối sách |
| 借用 | しゃくよう | THẢI DỤNG | mượn |
| 解説 | かいせつ | GIẢI THUYẾT | giải thích |
| 出席 | しゅっせき | XUẤT TỊCH | dự, tham dự |
| 優先順位 | ゆうせんじゅんい | ƯU TIÊN THUẬN VỊ | thứ tự ưu tiên |
| 本番 | ほんばん | BỔN PHIÊN | thi thật, lúc thật |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000005, 800000045, NULL, 'markdown_book', 'T05. Mentor hai kohai cùng lúc (後輩二人)', '# Sách ô tô năm 3 · T05. Mentor hai kohai cùng lúc (後輩二人)

> **Mục tiêu nhân vật:** Phong (24 tuổi, Hải Phòng) — TTS năm 3 tại garage **トヨタモビリティ愛知 安城店**. Học các mẫu hội thoại tiếng Nhật khi **mentor hai kohai mới đến cùng lúc**: phân công việc song song cho hai người (〜さんはAを、〜さんはBを), chỉnh sửa lỗi nhẹ nhàng (〜ところを少し直してみよう), hỏi lại để xác nhận đã hiểu (〜と理解していい？), khen-chê cân bằng giữa hai kohai (〜の方が早いけど〜の方が丁寧), báo cáo song song lên 整備士長 (〜と〜、二人とも〜), và mẫu câu giải hoà khi kohai cãi nhau nhẹ.

---

## Bối cảnh

Đầu tháng 5/2027. Phong đã sang Nhật tròn 2 năm, vừa lên SSW1 hồi tháng 4, đang chuẩn bị thi 整備士 2級 tháng 10. Trình độ N3+, keigo công sở vững. Garage năm nay nhận **2 kohai TTS Việt Nam cùng lúc**: Tuấn (20t, Nghệ An) và Đức (22t, Nam Định), cả hai mới sang được 1 tháng, đang ở trung tâm 監理団体 thì chuyển về garage. 整備士長 Yamada giao Phong làm 教育係 cho cả hai. Chương này tập trung mẫu câu **mentor song song hai kohai** — phân vai, chỉnh sửa, hoà giải.

---

## Tình huống 1 — Phòng nghỉ garage · 8:30 thứ Hai, gặp hai kohai lần đầu

*Yamada dẫn Tuấn và Đức vào phòng nghỉ, giới thiệu Phong là 教育係.*

| Vai | Lời thoại |
|---|---|
| Yamada | フォン<ruby>君<rt>くん</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>後輩<rt>こうはい</rt></ruby><ruby>二人<rt>ふたり</rt></ruby>です。トゥアン<ruby>君<rt>くん</rt></ruby>とドゥック<ruby>君<rt>くん</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>から<ruby>君<rt>きみ</rt></ruby>が<ruby>教育係<rt>きょういくがかり</rt></ruby>だよ。<br>*(Phong, đây là hai kohai mới — Tuấn và Đức. Từ hôm nay em là người phụ trách đào tạo.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng em đã rõ. Xin được giúp đỡ.)* |
| Phong | （<ruby>二人<rt>ふたり</rt></ruby>に）はじめまして、フォンです。<ruby>同<rt>おな</rt></ruby>じベトナム<ruby>人<rt>じん</rt></ruby>だから<ruby>日本語<rt>にほんご</rt></ruby>でもベトナム<ruby>語<rt>ご</rt></ruby>でもいいよ。<br>*(Quay sang hai em. Chào, anh tên Phong. Cùng người Việt nên tiếng Nhật hay tiếng Việt đều được.)* |
| Tuấn | （<ruby>緊張<rt>きんちょう</rt></ruby>して）トゥアンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Căng thẳng. Em là Tuấn, mong anh chỉ bảo!)* |
| Đức | ドゥックです。<ruby>整備<rt>せいび</rt></ruby>はまだ<ruby>全<rt>まった</rt></ruby>く<ruby>分<rt>わ</rt></ruby>かりません…よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em là Đức. Sửa xe em chưa biết gì cả… mong anh chỉ.)* |
| Phong | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はそうだった。ゆっくり<ruby>覚<rt>おぼ</rt></ruby>えていこう。<br>*(Không sao, 2 năm trước anh cũng vậy. Cứ từ từ học.)* |

---

## Tình huống 2 — Khu thay dầu · 9:00, phân công song song lần đầu

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>今日<rt>きょう</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めよう。トゥアン<ruby>君<rt>くん</rt></ruby>は<ruby>道具<rt>どうぐ</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>して、ドゥック<ruby>君<rt>くん</rt></ruby>は<ruby>車<rt>くるま</rt></ruby>をリフトに<ruby>上<rt>あ</rt></ruby>げてみよう。<br>*(Hôm nay bắt đầu từ thay dầu. Tuấn chuẩn bị dụng cụ, Đức nâng xe lên lift thử nhé.)* |
| Tuấn | はい！どの<ruby>道具<rt>どうぐ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか？<br>*(Vâng! Cần dụng cụ nào ạ?)* |
| Phong | オイルパン、<ruby>新<rt>あたら</rt></ruby>しいオイルフィルター、<ruby>17<rt>じゅうなな</rt></ruby>ミリのスパナ、そしてジョッキ。<br>*(Khay dầu, lọc dầu mới, cờ-lê 17 ly, và bình rót.)* |
| Đức | あの、リフトのスイッチは<ruby>左<rt>ひだり</rt></ruby>ですか？<br>*(Dạ, công tắc lift bên trái phải không ạ?)* |
| Phong | <ruby>緑<rt>みどり</rt></ruby>のボタンが<ruby>上<rt>あ</rt></ruby>げる、<ruby>赤<rt>あか</rt></ruby>のが<ruby>下<rt>お</rt></ruby>ろす。<ruby>必<rt>かなら</rt></ruby>ず<ruby>車<rt>くるま</rt></ruby>の<ruby>下<rt>した</rt></ruby>に<ruby>誰<rt>だれ</rt></ruby>もいないか<ruby>確認<rt>かくにん</rt></ruby>してね。<br>*(Nút xanh là lên, đỏ là hạ. Nhất định phải kiểm tra dưới xe không có ai.)* |
| Đức | はい、<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>上<rt>あ</rt></ruby>げます。<br>*(Vâng, em sẽ kiểm tra rồi mới nâng.)* |
| Phong | じゃ、<ruby>俺<rt>おれ</rt></ruby>は<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>てる。<ruby>分<rt>わ</rt></ruby>からなかったらすぐ<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Vậy anh đứng bên xem. Không hiểu thì hỏi ngay.)* |

---

## Tình huống 3 — Khu thay dầu · 9:30, chỉnh sửa lỗi của Tuấn nhẹ nhàng

*Tuấn vặn bulông xả dầu quá chặt.*

| Vai | Lời thoại |
|---|---|
| Tuấn | フォンさん、<ruby>締<rt>し</rt></ruby>めました！<br>*(Anh Phong, em siết xong rồi!)* |
| Phong | ちょっと<ruby>見<rt>み</rt></ruby>せて…うん、<ruby>少<rt>すこ</rt></ruby>し<ruby>強<rt>つよ</rt></ruby>すぎるかな。<br>*(Cho anh xem chút… ừm, hơi chặt quá rồi.)* |
| Tuấn | え、<ruby>強<rt>つよ</rt></ruby>すぎますか？<br>*(Hả, chặt quá ạ?)* |
| Phong | このボルトは<ruby>規定<rt>きてい</rt></ruby>トルクが<ruby>35<rt>さんじゅうご</rt></ruby>ニュートンメーター。トルクレンチで<ruby>音<rt>おと</rt></ruby>が「カチッ」と<ruby>鳴<rt>な</rt></ruby>るまで。<br>*(Bulông này lực siết quy định 35 Nm. Dùng cờ-lê lực, đến khi nghe "tách" là dừng.)* |
| Tuấn | あ、トルクレンチを<ruby>使<rt>つか</rt></ruby>うんですね…すみません。<br>*(À phải dùng cờ-lê lực… em xin lỗi.)* |
| Phong | <ruby>謝<rt>あやま</rt></ruby>らなくていいよ。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>でも<ruby>知<rt>し</rt></ruby>らない。<ruby>強<rt>つよ</rt></ruby>すぎるとネジ<ruby>山<rt>やま</rt></ruby>が<ruby>潰<rt>つぶ</rt></ruby>れてオイル<ruby>漏<rt>も</rt></ruby>れになるから<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Không cần xin lỗi. Đầu ai cũng không biết. Siết quá thì hỏng ren, rò dầu, nên chú ý.)* |
| Tuấn | はい、<ruby>覚<rt>おぼ</rt></ruby>えました。トルクレンチ、トルクレンチ…<br>*(Vâng em nhớ rồi. Cờ-lê lực, cờ-lê lực…)* |
| Phong | じゃあもう<ruby>一回<rt>いっかい</rt></ruby>、トルクレンチで<ruby>締<rt>し</rt></ruby>め<ruby>直<rt>なお</rt></ruby>してみよう。<br>*(Vậy thử siết lại bằng cờ-lê lực một lần nữa.)* |

---

## Tình huống 4 — Khu thay dầu · 10:00, hỏi lại Đức để xác nhận đã hiểu

| Vai | Lời thoại |
|---|---|
| Phong | ドゥック<ruby>君<rt>くん</rt></ruby>、<ruby>今<rt>いま</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>自分<rt>じぶん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で<ruby>言<rt>い</rt></ruby>ってみて。<br>*(Đức, quy trình vừa rồi em thử nói lại bằng lời mình xem.)* |
| Đức | えっと、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>、リフトを<ruby>上<rt>あ</rt></ruby>げる。<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>、ボルトを<ruby>外<rt>はず</rt></ruby>してオイルを<ruby>抜<rt>ぬ</rt></ruby>く。<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>、フィルターを<ruby>交換<rt>こうかん</rt></ruby>。<ruby>4<rt>よん</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しいオイルを<ruby>入<rt>い</rt></ruby>れる。<br>*(Ờm, một, nâng lift. Hai, tháo bulông xả dầu. Ba, thay lọc. Bốn, đổ dầu mới.)* |
| Phong | うん、<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しい。じゃあオイルの<ruby>量<rt>りょう</rt></ruby>はどうやって<ruby>確認<rt>かくにん</rt></ruby>する？<br>*(Ừm, thứ tự đúng. Vậy lượng dầu kiểm tra thế nào?)* |
| Đức | …すみません、それはまだ<ruby>分<rt>わ</rt></ruby>かりません。<br>*(…Em xin lỗi, cái đó em chưa biết.)* |
| Phong | <ruby>分<rt>わ</rt></ruby>からないと<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うのは<ruby>偉<rt>えら</rt></ruby>い。レベルゲージという<ruby>棒<rt>ぼう</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>いて、<ruby>上下<rt>じょうげ</rt></ruby>の<ruby>線<rt>せん</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>にあればOK。<br>*(Thành thật nói "không biết" là giỏi đấy. Rút thanh gọi là level gauge, nằm giữa hai vạch là OK.)* |
| Đức | レベルゲージ…と<ruby>理解<rt>りかい</rt></ruby>していいですか？<br>*(Level gauge… em hiểu vậy được không?)* |
| Phong | OK。じゃあ<ruby>自分<rt>じぶん</rt></ruby>でやってみて。<ruby>俺<rt>おれ</rt></ruby>は<ruby>見<rt>み</rt></ruby>てる。<br>*(OK. Vậy em tự làm thử. Anh đứng xem.)* |

---

## Tình huống 5 — Khu thay dầu · 10:30, khen-chê cân bằng giữa hai kohai

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>二人<rt>ふたり</rt></ruby>とも、ちょっと<ruby>集合<rt>しゅうごう</rt></ruby>。<br>*(Hai đứa tập trung chút.)* |
| Tuấn | はい！<br>*(Vâng!)* |
| Đức | はい。<br>*(Vâng.)* |
| Phong | トゥアン<ruby>君<rt>くん</rt></ruby>は<ruby>動<rt>うご</rt></ruby>きが<ruby>早<rt>はや</rt></ruby>くていい。でも、ちょっと<ruby>急<rt>いそ</rt></ruby>ぎすぎ。トルクの<ruby>確認<rt>かくにん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れがち。<br>*(Tuấn em làm nhanh, tốt. Nhưng hơi vội. Hay quên xác nhận lực siết.)* |
| Tuấn | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ chú ý.)* |
| Phong | ドゥック<ruby>君<rt>くん</rt></ruby>は<ruby>動<rt>うご</rt></ruby>きが<ruby>遅<rt>おそ</rt></ruby>めだけど、<ruby>丁寧<rt>ていねい</rt></ruby>。<ruby>確認<rt>かくにん</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ずやってる。ただ、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>声<rt>こえ</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きく。<br>*(Đức em hơi chậm nhưng cẩn thận. Luôn check kỹ. Chỉ là nói to lên chút.)* |
| Đức | はい、すみません、<ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さいとよく<ruby>言<rt>い</rt></ruby>われます。<br>*(Vâng em xin lỗi, nhiều người bảo em nói nhỏ.)* |
| Phong | <ruby>二人<rt>ふたり</rt></ruby>がお<ruby>互<rt>たが</rt></ruby>いを<ruby>見<rt>み</rt></ruby>て<ruby>学<rt>まな</rt></ruby>べば、いいペアになると<ruby>思<rt>おも</rt></ruby>うよ。<br>*(Hai em nhìn nhau học, chắc thành cặp tốt.)* |

---

## Tình huống 6 — Phòng nghỉ · 12:00, ăn trưa, hỏi cuộc sống ký túc

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>寮生活<rt>りょうせいかつ</rt></ruby>はどう？<ruby>慣<rt>な</rt></ruby>れた？<br>*(Cuộc sống ký túc sao? Quen chưa?)* |
| Tuấn | <ruby>料理<rt>りょうり</rt></ruby>がちょっと…<ruby>毎日<rt>まいにち</rt></ruby>インスタントラーメンです。<br>*(Cơm hơi… ngày nào cũng mì gói.)* |
| Phong | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はそうだった。<ruby>土曜日<rt>どようび</rt></ruby>、ベトナム<ruby>食材<rt>しょくざい</rt></ruby>の<ruby>店<rt>みせ</rt></ruby>に<ruby>連<rt>つ</rt></ruby>れて<ruby>行<rt>い</rt></ruby>くよ。<br>*(Cười. Anh hồi đầu cũng vậy. Thứ bảy anh dẫn đi cửa hàng đồ Việt.)* |
| Đức | <ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>魚<rt>さかな</rt></ruby><ruby>醤<rt>しょう</rt></ruby><ruby>油<rt>ゆ</rt></ruby>と<ruby>米<rt>こめ</rt></ruby>が<ruby>欲<rt>ほ</rt></ruby>しいです。<br>*(Thật ạ! Em muốn nước mắm với gạo.)* |
| Phong | <ruby>名古屋<rt>なごや</rt></ruby>の<ruby>大須<rt>おおす</rt></ruby>にベトナム<ruby>人街<rt>じんがい</rt></ruby>がある。<ruby>電車<rt>でんしゃ</rt></ruby>で<ruby>40<rt>よんじゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<br>*(Ở Osu Nagoya có khu người Việt. Đi tàu 40 phút.)* |
| Tuấn | フォンさんは<ruby>自分<rt>じぶん</rt></ruby>で<ruby>料理<rt>りょうり</rt></ruby>しますか？<br>*(Anh Phong tự nấu hả?)* |
| Phong | うん、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>からは<ruby>自炊<rt>じすい</rt></ruby>だよ。<ruby>外食<rt>がいしょく</rt></ruby>は<ruby>高<rt>たか</rt></ruby>いから。<br>*(Ừm, từ năm 2 anh tự nấu. Ăn ngoài đắt mà.)* |

---

## Tình huống 7 — Khu xe khách hàng · 14:00, dạy hai kohai chào khách

*Một khách hàng đưa xe vào kiểm tra phanh.*

| Vai | Lời thoại |
|---|---|
| Phong | お<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>挨拶<rt>あいさつ</rt></ruby>する<ruby>時<rt>とき</rt></ruby>は、<ruby>必<rt>かなら</rt></ruby>ず「いらっしゃいませ」と<ruby>言<rt>い</rt></ruby>って<ruby>礼<rt>れい</rt></ruby>。<ruby>二人<rt>ふたり</rt></ruby>でやってみよう。<br>*(Chào khách thì luôn nói "irasshaimase" và cúi chào. Hai đứa thử đi.)* |
| Tuấn・Đức | いらっしゃいませ！（<ruby>礼<rt>れい</rt></ruby>）<br>*(Kính chào quý khách! Cúi.)* |
| Phong | OK。<ruby>声<rt>こえ</rt></ruby>はいい。でもドゥック<ruby>君<rt>くん</rt></ruby>、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>顔<rt>かお</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げて。<br>*(OK. Giọng tốt. Nhưng Đức ngẩng mặt lên chút.)* |
| Phong | （<ruby>客<rt>きゃく</rt></ruby>に）いらっしゃいませ、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>本日<rt>ほんじつ</rt></ruby>はどのようなご<ruby>用件<rt>ようけん</rt></ruby>でしょうか。<br>*(Với khách. Kính chào, để ngài chờ ạ. Hôm nay quý khách cần gì ạ?)* |
| Khách | ブレーキの<ruby>音<rt>おと</rt></ruby>が<ruby>気<rt>き</rt></ruby>になって…<ruby>点検<rt>てんけん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếng phanh hơi lạ… nhờ kiểm tra.)* |
| Phong | かしこまりました。<ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Vâng đã rõ. Xin nhận khoảng 40 phút thời gian ạ.)* |
| Phong | （<ruby>後輩<rt>こうはい</rt></ruby>に）<ruby>聞<rt>き</rt></ruby>こえた？「かしこまりました」が「<ruby>分<rt>わ</rt></ruby>かりました」の<ruby>敬語<rt>けいご</rt></ruby>。<br>*(Với kohai. Nghe chưa? "kashikomarimashita" là kính ngữ của "wakarimashita".)* |
| Tuấn | かしこまりました！<ruby>覚<rt>おぼ</rt></ruby>えました！<br>*(Vâng đã rõ! Em nhớ rồi!)* |

---

## Tình huống 8 — Khu phanh · 14:40, phân công kiểm tra phanh song song

| Vai | Lời thoại |
|---|---|
| Phong | じゃあ<ruby>分担<rt>ぶんたん</rt></ruby>するよ。トゥアン<ruby>君<rt>くん</rt></ruby>は<ruby>前<rt>まえ</rt></ruby>のタイヤを<ruby>外<rt>はず</rt></ruby>して、ドゥック<ruby>君<rt>くん</rt></ruby>は<ruby>後<rt>うし</rt></ruby>ろをやろう。<br>*(Phân chia nhé. Tuấn tháo bánh trước, Đức tháo bánh sau.)* |
| Tuấn | はい。インパクトレンチでいいですか？<br>*(Vâng. Dùng súng vặn ốc được không ạ?)* |
| Phong | OK。<ruby>外<rt>はず</rt></ruby>すのはインパクト、<ruby>付<rt>つ</rt></ruby>ける<ruby>時<rt>とき</rt></ruby>はトルクレンチ。<br>*(OK. Tháo dùng súng, lắp lại dùng cờ-lê lực.)* |
| Đức | <ruby>後<rt>うし</rt></ruby>ろのナットの<ruby>規定<rt>きてい</rt></ruby>トルクは？<br>*(Lực siết quy định ốc sau ạ?)* |
| Phong | このカローラなら<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンメーター。<ruby>整備<rt>せいび</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>確認<rt>かくにん</rt></ruby>するクセをつけて。<br>*(Corolla này 103 Nm. Tập thói quen xem sổ kỹ thuật xác nhận.)* |
| Tuấn | <ruby>整備<rt>せいび</rt></ruby><ruby>書<rt>しょ</rt></ruby>はどこにありますか？<br>*(Sổ kỹ thuật ở đâu ạ?)* |
| Phong | <ruby>事務所<rt>じむしょ</rt></ruby>のタブレットでも<ruby>見<rt>み</rt></ruby>られる。<ruby>俺<rt>おれ</rt></ruby>のIDで<ruby>入<rt>はい</rt></ruby>れるから<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Trên máy tính bảng văn phòng cũng xem được. Vào bằng ID anh, anh chỉ cho.)* |

---

## Tình huống 9 — Khu phanh · 15:30, hoà giải khi hai kohai cãi nhau

*Đức làm chậm khiến Tuấn sốt ruột, lên giọng nói tiếng Việt.*

| Vai | Lời thoại |
|---|---|
| Tuấn | （ベトナム<ruby>語<rt>ご</rt></ruby>で）<ruby>急<rt>いそ</rt></ruby>げよ、お<ruby>客<rt>きゃく</rt></ruby>さん<ruby>待<rt>ま</rt></ruby>ってるんだから！<br>*(Tiếng Việt. Nhanh lên đi, khách đang chờ kìa!)* |
| Đức | （ベトナム<ruby>語<rt>ご</rt></ruby>で）<ruby>急<rt>いそ</rt></ruby>いだら<ruby>間違<rt>まちが</rt></ruby>えるじゃないか。<br>*(Tiếng Việt. Vội thì sai mất.)* |
| Phong | （<ruby>近<rt>ちか</rt></ruby>づいて、<ruby>静<rt>しず</rt></ruby>かに）<ruby>二人<rt>ふたり</rt></ruby>、お<ruby>客<rt>きゃく</rt></ruby>さんの<ruby>前<rt>まえ</rt></ruby>で<ruby>大<rt>おお</rt></ruby>きい<ruby>声<rt>こえ</rt></ruby>はやめよう。<br>*(Tới gần, nhỏ giọng. Hai đứa, trước khách đừng lớn tiếng.)* |
| Tuấn | …すみません。<br>*(…Em xin lỗi.)* |
| Phong | トゥアン<ruby>君<rt>くん</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちも<ruby>分<rt>わ</rt></ruby>かる。でもブレーキは<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。<ruby>慎重<rt>しんちょう</rt></ruby>さが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Tâm trạng Tuấn anh hiểu. Nhưng phanh liên quan tính mạng. Cẩn trọng quan trọng.)* |
| Đức | はい…<br>*(Vâng…)* |
| Phong | <ruby>急<rt>いそ</rt></ruby>ぐところと<ruby>慎重<rt>しんちょう</rt></ruby>にやるところを<ruby>分<rt>わ</rt></ruby>けよう。<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>早<rt>はや</rt></ruby>く、<ruby>整備<rt>せいび</rt></ruby><ruby>本体<rt>ほんたい</rt></ruby>はゆっくり。<br>*(Việc cần nhanh và việc cần chậm tách ra. Chuẩn bị dụng cụ thì nhanh, sửa thì chậm.)* |
| Tuấn | <ruby>分<rt>わ</rt></ruby>かりました。ドゥック<ruby>君<rt>くん</rt></ruby>、ごめん。<br>*(Em hiểu rồi. Đức, xin lỗi nhé.)* |
| Đức | こちらこそ。<br>*(Tớ cũng vậy.)* |

---

## Tình huống 10 — Cạnh xe · 16:00, dạy báo cáo 報連相 cho khách

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>点検<rt>てんけん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったらお<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>結果<rt>けっか</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>する。<ruby>俺<rt>おれ</rt></ruby>が<ruby>見本<rt>みほん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せるから、よく<ruby>聞<rt>き</rt></ruby>いて。<br>*(Kiểm tra xong thì giải thích cho khách. Anh làm mẫu, hai đứa nghe.)* |
| Phong | （<ruby>客<rt>きゃく</rt></ruby>に）お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Với khách. Để ngài chờ ạ. Em xin báo cáo kết quả kiểm tra.)* |
| Phong | <ruby>前輪<rt>ぜんりん</rt></ruby>のブレーキパッドが<ruby>残<rt>のこ</rt></ruby>り<ruby>2<rt>に</rt></ruby>ミリで、<ruby>交換<rt>こうかん</rt></ruby><ruby>時期<rt>じき</rt></ruby>です。<ruby>後輪<rt>こうりん</rt></ruby>はまだ<ruby>5<rt>ご</rt></ruby>ミリあります。<br>*(Má phanh bánh trước còn 2 ly, tới thời điểm thay. Bánh sau còn 5 ly.)* |
| Khách | <ruby>交換<rt>こうかん</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>はおいくらですか？<br>*(Giá thay bao nhiêu?)* |
| Phong | <ruby>部品<rt>ぶひん</rt></ruby><ruby>代<rt>だい</rt></ruby><ruby>込<rt>こ</rt></ruby>みで<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2千<rt>にせん</rt></ruby><ruby>円<rt>えん</rt></ruby>ほどです。<br>*(Bao gồm phụ tùng khoảng 12 nghìn yên ạ.)* |
| Khách | じゃあ<ruby>今日<rt>きょう</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>してください。<br>*(Vậy hôm nay thay luôn nhé.)* |
| Phong | （<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>後<rt>あと</rt></ruby>で）<ruby>結果<rt>けっか</rt></ruby>を<ruby>言<rt>い</rt></ruby>う<ruby>時<rt>とき</rt></ruby>は、<ruby>数字<rt>すうじ</rt></ruby>と<ruby>料金<rt>りょうきん</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>う。「<ruby>2<rt>に</rt></ruby>ミリ」「<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2千<rt>にせん</rt></ruby><ruby>円<rt>えん</rt></ruby>」みたいに<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>に。<br>*(Với kohai sau đó. Báo kết quả thì nhất định nêu con số và giá. "2 ly", "12 nghìn yên" — cụ thể.)* |

---

## Tình huống 11 — Phòng 整備士長 · 17:00, báo cáo song song lên Yamada

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Xin phép. Em xin báo cáo tiến độ kohai hôm nay.)* |
| Yamada | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời em.)* |
| Phong | トゥアン<ruby>君<rt>くん</rt></ruby>とドゥック<ruby>君<rt>くん</rt></ruby>、<ruby>二人<rt>ふたり</rt></ruby>ともオイル<ruby>交換<rt>こうかん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Tuấn và Đức cả hai đều nhớ quy trình cơ bản thay dầu.)* |
| Phong | トゥアン<ruby>君<rt>くん</rt></ruby>は<ruby>動<rt>うご</rt></ruby>きが<ruby>早<rt>はや</rt></ruby>いが、トルクの<ruby>確認<rt>かくにん</rt></ruby>が<ruby>不十分<rt>ふじゅうぶん</rt></ruby>でした。<ruby>明日<rt>あした</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>させます。<br>*(Tuấn làm nhanh nhưng check lực siết chưa đủ. Mai cho luyện lại.)* |
| Phong | ドゥック<ruby>君<rt>くん</rt></ruby>は<ruby>動<rt>うご</rt></ruby>きは<ruby>遅<rt>おそ</rt></ruby>めですが、<ruby>確認<rt>かくにん</rt></ruby>が<ruby>確実<rt>かくじつ</rt></ruby>です。<ruby>声<rt>こえ</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きく<ruby>出<rt>だ</rt></ruby>す<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đức chậm nhưng chắc. Cần luyện nói to.)* |
| Yamada | よく<ruby>観察<rt>かんさつ</rt></ruby>してるね。<ruby>二人<rt>ふたり</rt></ruby>の<ruby>性格<rt>せいかく</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせて<ruby>指導<rt>しどう</rt></ruby>することが<ruby>大事<rt>だいじ</rt></ruby>だよ。<br>*(Quan sát tốt đấy. Dạy theo tính cách từng người là quan trọng.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng em đã rõ.)* |
| Yamada | フォン<ruby>君<rt>くん</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はあんな<ruby>感<rt>かん</rt></ruby>じだったよ。<ruby>立派<rt>りっぱ</rt></ruby>になったな。<br>*(Phong 2 năm trước cũng vậy đấy. Trưởng thành rồi nhỉ.)* |
| Phong | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Lời khen quá lớn so với em.)* |

---

## Tình huống 12 — Phòng nghỉ · 17:30, dặn dò hai kohai cuối ngày

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>今日<rt>きょう</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>初日<rt>しょにち</rt></ruby>でよく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Hôm nay vất vả rồi. Hai đứa ngày đầu cố tốt.)* |
| Tuấn | フォンさんのおかげです。<br>*(Nhờ anh Phong ạ.)* |
| Phong | <ruby>明日<rt>あした</rt></ruby>はタイヤ<ruby>交換<rt>こうかん</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>する。<ruby>朝<rt>あさ</rt></ruby><ruby>8時<rt>はちじ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>には<ruby>着<rt>つ</rt></ruby>いていてね。<br>*(Mai luyện thay lốp. 8 giờ 15 đến nơi nhé.)* |
| Đức | <ruby>8時<rt>はちじ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ですね、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(8 giờ 15, em đã rõ.)* |
| Phong | <ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてね。<ruby>恥<rt>は</rt></ruby>ずかしがらなくていい。<ruby>聞<rt>き</rt></ruby>かない<ruby>方<rt>ほう</rt></ruby>が<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Không hiểu thì cứ hỏi. Không cần ngại. Không hỏi mới nguy hiểm.)* |
| Tuấn・Đức | はい、ありがとうございます！<br>*(Vâng, em cảm ơn anh!)* |
| Phong | あと、LINE<ruby>交換<rt>こうかん</rt></ruby>しよう。<ruby>夜<rt>よる</rt></ruby><ruby>分<rt>わ</rt></ruby>からないことあったら<ruby>聞<rt>き</rt></ruby>いて。<br>*(À, kết bạn LINE đi. Đêm có gì không hiểu thì hỏi.)* |

---

## Tình huống 13 — Quán cơm Việt Osu · 19:30 thứ Bảy, dẫn hai kohai đi ăn

| Vai | Lời thoại |
|---|---|
| Phong | （<ruby>店員<rt>てんいん</rt></ruby>に）すみません、フォー<ruby>三<rt>みっ</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Với nhân viên. Em xin 3 phở.)* |
| Tuấn | わー、ベトナムの<ruby>味<rt>あじ</rt></ruby>だ！<ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>ぶり！<br>*(Ồ, vị Việt Nam! Một tháng rồi mới được ăn!)* |
| Đức | フォンさん、ベトナムの<ruby>魚<rt>さかな</rt></ruby><ruby>醤<rt>しょう</rt></ruby><ruby>油<rt>ゆ</rt></ruby>ありますか？<br>*(Anh Phong, có nước mắm Việt không?)* |
| Phong | あるよ。<ruby>店<rt>みせ</rt></ruby>の<ruby>奥<rt>おく</rt></ruby>に<ruby>並<rt>なら</rt></ruby>んでる。<ruby>食<rt>た</rt></ruby>べ<ruby>終<rt>お</rt></ruby>わったら<ruby>買<rt>か</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>ろう。<br>*(Có. Bày trong cùng. Ăn xong mua về.)* |
| Tuấn | フォンさん、<ruby>奥<rt>おく</rt></ruby>さんは？<br>*(Anh Phong, vợ anh đâu?)* |
| Phong | （<ruby>苦笑<rt>くしょう</rt></ruby>）まだだよ。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>受<rt>う</rt></ruby>かってから<ruby>考<rt>かんが</rt></ruby>える。<br>*(Cười khổ. Chưa đâu. Đỗ cấp 2 rồi mới tính.)* |
| Đức | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>って<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>ですか？<br>*(Cấp 2 là chứng chỉ thợ sửa cấp 2 ạ?)* |
| Phong | うん、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>受<rt>う</rt></ruby>ける。<ruby>君<rt>きみ</rt></ruby>たちも<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby><ruby>受<rt>う</rt></ruby>けるんだよ。<ruby>今<rt>いま</rt></ruby>から<ruby>用語<rt>ようご</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えていこう。<br>*(Ừm, tháng 10 thi. 3 năm nữa hai em cũng thi. Từ giờ ghi nhớ thuật ngữ đi.)* |

---

## Tình huống 14 — Garage · sáng thứ Hai tuần sau, kohai gặp tình huống mới — báo lên Phong

| Vai | Lời thoại |
|---|---|
| Tuấn | フォンさん！<ruby>緊急<rt>きんきゅう</rt></ruby>です！<br>*(Anh Phong! Khẩn cấp!)* |
| Phong | どうした？<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>話<rt>はな</rt></ruby>して。<br>*(Sao thế? Bình tĩnh nói.)* |
| Tuấn | お<ruby>客<rt>きゃく</rt></ruby>さんが<ruby>来<rt>き</rt></ruby>て、<ruby>車<rt>くるま</rt></ruby>が<ruby>動<rt>うご</rt></ruby>かないって！<br>*(Khách đến bảo xe không chạy!)* |
| Phong | OK、まず<ruby>客<rt>きゃく</rt></ruby>さんに「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください」と<ruby>伝<rt>つた</rt></ruby>えて。それから<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>。<br>*(OK, trước nói với khách "vui lòng chờ chút". Rồi liên lạc 整備士長.)* |
| Đức | <ruby>俺<rt>おれ</rt></ruby>が<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>言<rt>い</rt></ruby>います！<br>*(Em nói với khách!)* |
| Phong | OK、トゥアン<ruby>君<rt>くん</rt></ruby>は<ruby>整備士長<rt>せいびしちょう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んできて。<ruby>俺<rt>おれ</rt></ruby>は<ruby>車<rt>くるま</rt></ruby>を<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>く。<br>*(OK, Tuấn gọi 整備士長 đến. Anh xem xe.)* |
| Phong | （<ruby>後<rt>あと</rt></ruby>で<ruby>後輩<rt>こうはい</rt></ruby>に）<ruby>緊急<rt>きんきゅう</rt></ruby>の<ruby>時<rt>とき</rt></ruby>こそ「<ruby>誰<rt>だれ</rt></ruby>が・<ruby>何<rt>なに</rt></ruby>を・いつまでに」を<ruby>決<rt>き</rt></ruby>める。<ruby>報連相<rt>ほうれんそう</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>だよ。<br>*(Sau đó với kohai. Khẩn cấp càng phải xác định "ai/làm gì/khi nào xong". Cơ bản 報連相 đấy.)* |

---

## Tình huống 15 — Phòng trọ Phong · 21:00 thứ Sáu, gọi điện về Hải Phòng

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Mẹ | Phong à, dạo này garage thế nào con? |
| Phong | Mẹ ơi, tháng này con bắt đầu làm 教育係 — tức là người phụ trách đào tạo cho 2 em kohai mới sang. |
| Mẹ | Ôi giời, con phải trông 2 đứa luôn à? Có vất không? |
| Phong | Cũng hơi vất, mẹ ạ. Tuấn thì nhanh nhưng ẩu, hay quên check トルク — lực siết bulông ấy mẹ. Còn Đức thì cẩn thận nhưng chậm, nói nhỏ xíu. |
| Mẹ | Hai đứa khác tính thế cơ à. Con dạy được không? |
| Phong | Được mẹ ạ. 整備士長 Yamada bảo "dạy theo tính cách từng người là quan trọng". Con để Tuấn làm cùng Đức, một đứa kéo lại, một đứa đẩy lên. |
| Mẹ | Cẩn thận chứ bulông phanh mà siết sai là chết người đấy con. |
| Phong | Vâng mẹ. Con dạy chúng nó dùng トルクレンチ — cờ-lê lực — đến khi nghe "tách" mới dừng. Hôm trước con còn dẫn 2 đứa ra Osu Nagoya ăn phở Việt mẹ ạ. |
| Mẹ | Ừ, cũng phải đối xử với chúng như em mình. Mai mẹ ra chợ Sắt mua ít cá khô gửi sang cho mấy đứa nhé. |
| Phong | Mẹ gửi thì tốt quá! Đức nó thèm 魚醤 — nước mắm — lắm. |
| Mẹ | Còn 整備士 2級 thi tháng 10 ôn đến đâu rồi? |
| Phong | Con đang ôn lý thuyết động cơ, mẹ. Tháng 8 lễ hội mùa hè Aichi xong là con cắm đầu vào ôn. |
| Mẹ | Ừ, cố lên con. Dạy em mà bản thân vẫn phải thi. Mẹ tự hào về con lắm. |
| Phong | Vâng mẹ. Con sẽ cố. |

---

## Đọng lại chương

**Mẫu câu mentor song song:**
- **〜さんはAを、〜さんはBを** — phân công vai cho 2 người: 「トゥアン<ruby>君<rt>くん</rt></ruby>は<ruby>道具<rt>どうぐ</rt></ruby>を、ドゥック<ruby>君<rt>くん</rt></ruby>は<ruby>車<rt>くるま</rt></ruby>をリフトに」
- **ちょっと〜すぎるかな** — chỉnh lỗi nhẹ nhàng: 「<ruby>少<rt>すこ</rt></ruby>し<ruby>強<rt>つよ</rt></ruby>すぎるかな」
- **〜と理解していい？** — kohai xác nhận đã hiểu: 「レベルゲージと<ruby>理解<rt>りかい</rt></ruby>していいですか？」
- **〜の方が〜だけど、〜の方が〜** — so sánh cân bằng 2 kohai
- **二人とも〜** — báo cáo song song lên cấp trên: 「<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>基本<rt>きほん</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました」
- **誰が・何を・いつまでに** — tam giác báo cáo khẩn cấp

> Từ vựng & mẫu câu chương này: <ruby>教育係<rt>きょういくがかり</rt></ruby>・<ruby>後輩<rt>こうはい</rt></ruby>・<ruby>規定<rt>きてい</rt></ruby>トルク・トルクレンチ・レベルゲージ・<ruby>整備<rt>せいび</rt></ruby><ruby>書<rt>しょ</rt></ruby>・<ruby>分担<rt>ぶんたん</rt></ruby>・<ruby>慎重<rt>しんちょう</rt></ruby>・<ruby>確認<rt>かくにん</rt></ruby>・<ruby>報連相<rt>ほうれんそう</rt></ruby>・かしこまりました・<ruby>承知<rt>しょうち</rt></ruby>いたしました・<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る・<ruby>緊急<rt>きんきゅう</rt></ruby>・<ruby>観察<rt>かんさつ</rt></ruby>。

## Bí quyết chương

- **Mentor 2 người cùng lúc**: chia việc song song thay vì tuần tự, tận dụng tính cách khác nhau.
- **Sửa lỗi không hạ thấp**: dùng「<ruby>謝<rt>あやま</rt></ruby>らなくていい」+ giải thích hậu quả thực tế (ren hỏng, rò dầu).
- **Khen-chê cân bằng**: mỗi kohai có ưu nhược, chỉ ra cụ thể, không so sánh "em hơn em kia".
- **Hoà giải kohai cãi nhau**: kéo về câu chuyện chung (an toàn khách hàng), không phân định ai đúng.
- **Báo cáo song song lên sempai**: dùng「<ruby>二人<rt>ふたり</rt></ruby>とも〜」khi cả hai cùng đạt, tách riêng「〜<ruby>君<rt>くん</rt></ruby>は〜」khi cá nhân khác nhau.
- **LINE riêng cho kohai**: kênh hỏi đáp ngoài giờ giảm áp lực.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 後輩 | こうはい | HẬU BỐI | đàn em, kohai |
| 教育係 | きょういくがかり | GIÁO DỤC HỆ | người phụ trách đào tạo |
| 同じ | おなじ | ĐỒNG | giống nhau, cùng |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng |
| 整備 | せいび | CHỈNH BỊ | bảo dưỡng, sửa chữa |
| 道具 | どうぐ | ĐẠO CỤ | dụng cụ |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| リフト | — | — | lift, cầu nâng |
| オイル交換 | オイルこうかん | — GIAO HOÁN | thay dầu |
| オイルフィルター | — | — | lọc dầu |
| スパナ | — | — | cờ-lê |
| 確認 | かくにん | XÁC NHẬN | xác nhận, kiểm tra |
| 規定 | きてい | QUY ĐỊNH | quy định |
| トルク | — | — | lực siết, mô-men xoắn |
| トルクレンチ | — | — | cờ-lê lực |
| ニュートンメーター | — | — | Newton-mét (Nm) |
| ネジ山 | ねじやま | — SƠN | ren ốc |
| 潰れる | つぶれる | — | bị bẹp, hỏng |
| 漏れ | もれ | LẬU | rò rỉ |
| 手順 | てじゅん | THỦ TUẦN | quy trình, các bước |
| ボルト | — | — | bulông |
| 外す | はずす | NGOẠI | tháo, gỡ |
| 抜く | ぬく | BẠT | rút, xả |
| レベルゲージ | — | — | que thăm dầu |
| 理解 | りかい | LÝ GIẢI | hiểu |
| 集合 | しゅうごう | TẬP HỢP | tập trung |
| 急ぐ | いそぐ | CẤP | vội, gấp |
| 丁寧 | ていねい | ĐINH NINH | cẩn thận, lịch sự |
| 寮生活 | りょうせいかつ | LIÊU SINH HOẠT | sống ký túc |
| 自炊 | じすい | TỰ XUY | tự nấu ăn |
| 食材 | しょくざい | THỰC TÀI | thực phẩm, nguyên liệu |
| 魚醤油 | ぎょしょうゆ | NGƯ TƯƠNG DU | nước mắm |
| 挨拶 | あいさつ | ÁI ÁP | chào hỏi |
| いらっしゃいませ | — | — | kính chào quý khách |
| 用件 | ようけん | DỤNG KIỆN | việc cần, công việc |
| かしこまりました | — | — | vâng, đã rõ (kính ngữ) |
| 頂戴 | ちょうだい | ĐỈNH ĐÁI | xin nhận (khiêm nhường) |
| 分担 | ぶんたん | PHÂN ĐẢM | phân chia công việc |
| インパクトレンチ | — | — | súng vặn ốc |
| 整備書 | せいびしょ | CHỈNH BỊ THƯ | sổ kỹ thuật |
| タブレット | — | — | máy tính bảng |
| 慎重 | しんちょう | THẬN TRỌNG | cẩn trọng |
| 命 | いのち | MỆNH | tính mạng |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| パッド | — | — | má phanh |
| 残り | のこり | TÀN | còn lại |
| 部品代 | ぶひんだい | BỘ PHẨM ĐẠI | tiền phụ tùng |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 進捗 | しんちょく | TIẾN CHỈNH | tiến độ |
| 不十分 | ふじゅうぶん | BẤT THẬP PHÂN | chưa đủ |
| 確実 | かくじつ | XÁC THỰC | chắc chắn |
| 観察 | かんさつ | QUAN SÁT | quan sát |
| 指導 | しどう | CHỈ ĐẠO | chỉ dẫn, dạy |
| 性格 | せいかく | TÍNH CÁCH | tính cách |
| 立派 | りっぱ | LẬP PHÁI | đường hoàng, giỏi |
| 緊急 | きんきゅう | KHẨN CẤP | khẩn cấp |
| 落ち着く | おちつく | LẠC TRƯỚC | bình tĩnh |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | báo cáo - liên lạc - bàn bạc |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000006, 800000045, NULL, 'markdown_book', 'T06. Brand Lexus — học keigo tiếp khách VIP (レクサス導入)', '# Sách ô tô năm 3 · T06. Brand Lexus — học keigo tiếp khách VIP (レクサス導入)

> **Mục tiêu nhân vật:** Phong (24t, Hải Phòng) — garage **トヨタモビリティ愛知 安城店** mở thêm corner **レクサス** cao cấp. Học các mẫu hội thoại tiếng Nhật khi **tiếp khách VIP Lexus**: chào tôn kính tột bậc (お<ruby>越<rt>こ</rt></ruby>しいただき<ruby>誠<rt>まこと</rt></ruby>に〜), giải thích kỹ thuật bằng kính ngữ chuyên ngành (〜でございます・〜と<ruby>申<rt>もう</rt></ruby>します), xin phép trước mỗi hành động (〜させていただいてもよろしいでしょうか), báo giá khéo léo (お<ruby>見積<rt>みつ</rt></ruby>もりは〜<ruby>程度<rt>ていど</rt></ruby>になります), xử lý phàn nàn của khách VIP (お<ruby>詫<rt>わ</rt></ruby>び申し上げます), và trà nước phục vụ chờ.

---

## Bối cảnh

Tháng 6/2027. Garage trở thành **トヨタ＋レクサス併設店** — mở góc Lexus chính thức. 整備士長 Yamada chọn 3 thợ tiếp Lexus: Suzuki (Nhật, trưởng nhóm), Carlos (Brazil, 4 năm SSW2) và Phong. Trước khi tiếp khách thật, cả nhóm được training keigo và 接客 (sekkyaku) một tuần với 女性 lễ tân Murakami chuyển từ Lexus Nagoya sang. Chương này tập trung **keigo tiếp khách VIP** + xử lý tình huống khách hàng cao cấp.

---

## Tình huống 1 — Phòng training · 8:30 thứ Hai, Murakami giới thiệu chuẩn Lexus

| Vai | Lời thoại |
|---|---|
| Murakami | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>からレクサス<ruby>接客<rt>せっきゃく</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>いたします、ムラカミと<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào buổi sáng. Từ hôm nay tôi phụ trách training tiếp khách Lexus, tên Murakami.)* |
| Phong | フォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>整備<rt>せいび</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em tên Phong. Phụ trách kỹ thuật. Xin chỉ giáo.)* |
| Murakami | レクサスは「<ruby>究極<rt>きゅうきょく</rt></ruby>のおもてなし」を<ruby>標榜<rt>ひょうぼう</rt></ruby>するブランドです。お<ruby>客様<rt>きゃくさま</rt></ruby>はトヨタ<ruby>店<rt>てん</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>倍<rt>ばい</rt></ruby>のサービスを<ruby>期待<rt>きたい</rt></ruby>しています。<br>*(Lexus là thương hiệu nêu cao "đỉnh cao omotenashi". Khách kỳ vọng gấp đôi dịch vụ Toyota.)* |
| Carlos | おもてなしって、<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>には？<br>*(Omotenashi cụ thể là gì?)* |
| Murakami | お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>言<rt>い</rt></ruby>う<ruby>前<rt>まえ</rt></ruby>に<ruby>気<rt>き</rt></ruby>づくこと、<ruby>言葉遣<rt>ことばづか</rt></ruby>い、<ruby>動作<rt>どうさ</rt></ruby>、<ruby>身<rt>み</rt></ruby>だしなみ、すべてです。<br>*(Để ý trước khi khách nói, lời ăn tiếng nói, cử chỉ, trang phục — tất cả.)* |
| Phong | <ruby>言葉遣<rt>ことばづか</rt></ruby>いは<ruby>普段<rt>ふだん</rt></ruby>のトヨタ<ruby>接客<rt>せっきゃく</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Lời ăn tiếng nói khác đãi khách Toyota thường ngày ạ?)* |
| Murakami | はい、「いらっしゃいませ」ではなく「お<ruby>越<rt>こ</rt></ruby>しいただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます」と<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Vâng, không phải "irasshaimase" mà là "okoshi-itadaki makoto ni arigatou gozaimasu".)* |

---

## Tình huống 2 — Phòng training · 9:30, luyện chào VIP tột bậc

| Vai | Lời thoại |
|---|---|
| Murakami | では、ロールプレイをしましょう。<ruby>私<rt>わたし</rt></ruby>がお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>役<rt>やく</rt></ruby>、フォンさんが<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れ<ruby>係<rt>がかり</rt></ruby>。<br>*(Vậy ta roleplay. Tôi đóng khách, Phong đóng người đón.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, xin được hướng dẫn.)* |
| Murakami | （ドアを<ruby>開<rt>あ</rt></ruby>けて<ruby>入<rt>はい</rt></ruby>る）こんにちは。<br>*(Mở cửa vào. Xin chào.)* |
| Phong | （<ruby>礼<rt>れい</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>）お<ruby>越<rt>こ</rt></ruby>しいただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。レクサス<ruby>安城<rt>あんじょう</rt></ruby><ruby>店<rt>てん</rt></ruby>へようこそ。<br>*(Cúi 30 độ. Cảm tạ ngài đã quá bộ đến. Hân hạnh chào mừng đến Lexus Anjo.)* |
| Murakami | あ、いいですね。<ruby>礼<rt>れい</rt></ruby>の<ruby>角度<rt>かくど</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>秒間<rt>びょうかん</rt></ruby>キープ。<ruby>顔<rt>かお</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げる<ruby>時<rt>とき</rt></ruby>もゆっくり。<br>*(À, tốt đấy. Cúi 30 độ, giữ 3 giây. Khi ngẩng cũng từ từ.)* |
| Phong | （もう<ruby>一度<rt>いちど</rt></ruby>ゆっくり）お<ruby>越<rt>こ</rt></ruby>しいただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Làm lại chậm. Cảm tạ ngài đã quá bộ đến.)* |
| Murakami | <ruby>外国人<rt>がいこくじん</rt></ruby>のフォンさんがここまで<ruby>言<rt>い</rt></ruby>えるのは<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って。<br>*(Người nước ngoài như Phong nói được đến mức này là tuyệt vời. Tự tin lên.)* |

---

## Tình huống 3 — Showroom Lexus · 10:00 thứ Tư, khách VIP đầu tiên đến

*Khách hàng đầu tiên: 田中, chủ doanh nghiệp 60 tuổi, lái LS500h, đến 6 tháng/lần.*

| Vai | Lời thoại |
|---|---|
| Phong | （<ruby>車<rt>くるま</rt></ruby>が<ruby>近<rt>ちか</rt></ruby>づく<ruby>音<rt>おと</rt></ruby>）お<ruby>客様<rt>きゃくさま</rt></ruby>です！<ruby>持<rt>も</rt></ruby>ち<ruby>場<rt>ば</rt></ruby>へ！<br>*(Tiếng xe đến. Khách hàng! Vào vị trí!)* |
| Phong | （<ruby>車<rt>くるま</rt></ruby>のドアを<ruby>静<rt>しず</rt></ruby>かに<ruby>開<rt>あ</rt></ruby>ける）<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>越<rt>こ</rt></ruby>しいただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Lặng lẽ mở cửa xe. Quý ngài Tanaka, cảm tạ ngài đã quá bộ đến.)* |
| Tanaka | あ、どうも。<ruby>6<rt>ろっ</rt></ruby>ヶ<ruby>月点検<rt>げつてんけん</rt></ruby>でね。<br>*(À, cảm ơn. Kiểm định 6 tháng nhé.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>させていただきますフォンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Em đã rõ. Hôm nay em xin phép phụ trách. Em tên Phong.)* |
| Tanaka | フォンさん？<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>？<br>*(Phong à? Người nước ngoài?)* |
| Phong | はい、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>でございます。<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>受験<rt>じゅけん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, em xuất thân Việt Nam ạ. Dự định thi cấp 2 thợ sửa vào tháng 10.)* |
| Tanaka | ほう、<ruby>立派<rt>りっぱ</rt></ruby>だね。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ồ, đáng nể đấy. Nhờ em nhé.)* |
| Phong | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>応接<rt>おうせつ</rt></ruby><ruby>室<rt>しつ</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Dạ vâng, em xin được giúp ngài. Em xin dẫn ngài đến phòng tiếp khách.)* |

---

## Tình huống 4 — Phòng tiếp khách Lexus · 10:10, mời trà và xin phép kiểm tra xe

| Vai | Lời thoại |
|---|---|
| Phong | こちらにお<ruby>掛<rt>か</rt></ruby>けくださいませ。<br>*(Mời ngài ngồi đây ạ.)* |
| Tanaka | ありがとう。<br>*(Cảm ơn.)* |
| Phong | お<ruby>飲<rt>の</rt></ruby><ruby>物<rt>もの</rt></ruby>は<ruby>何<rt>なに</rt></ruby>がよろしいでしょうか。コーヒー、<ruby>緑茶<rt>りょくちゃ</rt></ruby>、<ruby>玉露<rt>ぎょくろ</rt></ruby>、お<ruby>水<rt>みず</rt></ruby>がございます。<br>*(Đồ uống ngài dùng gì ạ? Có cà phê, trà xanh, ngọc lộ, và nước ạ.)* |
| Tanaka | <ruby>玉露<rt>ぎょくろ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho tôi ngọc lộ.)* |
| Phong | かしこまりました。<ruby>玉露<rt>ぎょくろ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Vâng đã rõ. Em xin mang ngọc lộ.)* |
| Phong | （<ruby>戻<rt>もど</rt></ruby>って）お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>熱<rt>あつ</rt></ruby>うございますので、お<ruby>気<rt>き</rt></ruby>をつけくださいませ。<br>*(Quay lại. Để ngài chờ. Hơi nóng, xin ngài cẩn thận.)* |
| Phong | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、お<ruby>車<rt>くるま</rt></ruby>を<ruby>整備<rt>せいび</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>へお<ruby>預<rt>あず</rt></ruby>かりさせていただいてもよろしいでしょうか。<br>*(Xin lỗi làm phiền, em được phép nhận xe vào xưởng kiểm tra ạ?)* |
| Tanaka | はい、どうぞ。キーはここに。<br>*(Vâng, mời. Chìa đây.)* |
| Phong | <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>点検<rt>てんけん</rt></ruby>は<ruby>約<rt>やく</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Em xin nhận. Kiểm tra xin nhận khoảng 1 tiếng ạ.)* |

---

## Tình huống 5 — Khu lift Lexus riêng · 10:30, Phong và Suzuki làm việc trên LS500h

| Vai | Lời thoại |
|---|---|
| Suzuki | フォン<ruby>君<rt>くん</rt></ruby>、レクサスの<ruby>車<rt>くるま</rt></ruby>には<ruby>普通<rt>ふつう</rt></ruby>のタオルを<ruby>使<rt>つか</rt></ruby>っちゃダメだよ。<br>*(Phong, xe Lexus không dùng khăn thường được đâu.)* |
| Phong | え、<ruby>何<rt>なに</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですか？<br>*(Ơ, dùng gì ạ?)* |
| Suzuki | マイクロファイバーの<ruby>専用<rt>せんよう</rt></ruby>タオル。<ruby>塗装<rt>とそう</rt></ruby>に<ruby>傷<rt>きず</rt></ruby>が<ruby>付<rt>つ</rt></ruby>かないようにね。<br>*(Khăn microfiber chuyên dụng. Để không xước sơn.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>手袋<rt>てぶくろ</rt></ruby>も<ruby>専用<rt>せんよう</rt></ruby>のものですか？<br>*(Em đã rõ. Găng tay cũng chuyên dụng ạ?)* |
| Suzuki | そう、<ruby>白<rt>しろ</rt></ruby>い<ruby>手袋<rt>てぶくろ</rt></ruby>。<ruby>指紋<rt>しもん</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けないために。<br>*(Đúng, găng tay trắng. Để không in vân tay.)* |
| Phong | <ruby>細<rt>こま</rt></ruby>かい<ruby>気<rt>き</rt></ruby>づかいですね…<br>*(Để ý tỉ mỉ quá nhỉ…)* |
| Suzuki | レクサスのお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>千万円<rt>せんまんえん</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>を<ruby>買<rt>か</rt></ruby>うんだ。サービスもそれに<ruby>見合<rt>みあ</rt></ruby>うように。<br>*(Khách Lexus mua xe 10 triệu yên đấy. Dịch vụ tương xứng.)* |
| Phong | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em học hỏi được nhiều.)* |

---

## Tình huống 6 — Lift Lexus · 11:00, phát hiện vấn đề nhỏ — bàn xử lý

| Vai | Lời thoại |
|---|---|
| Phong | スズキさん、<ruby>左後<rt>ひだりうし</rt></ruby>ろのタイヤの<ruby>溝<rt>みぞ</rt></ruby>が<ruby>規定<rt>きてい</rt></ruby>より<ruby>浅<rt>あさ</rt></ruby>いです。<ruby>3<rt>さん</rt></ruby>ミリしかありません。<br>*(Anh Suzuki, rãnh lốp sau trái nông hơn quy định. Chỉ còn 3 ly.)* |
| Suzuki | <ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>残<rt>のこ</rt></ruby>り<ruby>4<rt>よん</rt></ruby>ミリ<ruby>以下<rt>いか</rt></ruby>は<ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>めよう。<br>*(Đúng thật. Dưới 4 ly là đề nghị thay. Đề xuất thay cả 4 lốp.)* |
| Phong | レクサス<ruby>純正<rt>じゅんせい</rt></ruby>タイヤだといくらぐらいですか？<br>*(Lốp Lexus chính hãng giá tầm bao nhiêu ạ?)* |
| Suzuki | LS<ruby>用<rt>よう</rt></ruby>の<ruby>19<rt>じゅうきゅう</rt></ruby>インチ、<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>込<rt>こ</rt></ruby>みで<ruby>22<rt>にじゅうに</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>ぐらい。<br>*(19 inch cho LS, 4 chiếc khoảng 220 nghìn yên.)* |
| Phong | お<ruby>客様<rt>きゃくさま</rt></ruby>にご<ruby>説明<rt>せつめい</rt></ruby>する<ruby>時<rt>とき</rt></ruby>、<ruby>料金<rt>りょうきん</rt></ruby>はどう<ruby>伝<rt>つた</rt></ruby>えればよろしいですか？<br>*(Khi trình bày với khách, giá nên nói thế nào ạ?)* |
| Suzuki | 「お<ruby>見積<rt>みつ</rt></ruby>もりは<ruby>22<rt>にじゅうに</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>になります」。「<ruby>程度<rt>ていど</rt></ruby>」「〜になります」が<ruby>柔<rt>やわ</rt></ruby>らかい。<br>*(「Báo giá khoảng 220 nghìn yên ạ」. "Khoảng" + "trở thành" cho mềm.)* |
| Phong | なるほど、<ruby>金額<rt>きんがく</rt></ruby>を<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>言<rt>い</rt></ruby>うより<ruby>柔<rt>やわ</rt></ruby>らかいですね。<br>*(Em hiểu rồi, nhẹ nhàng hơn nói thẳng số tiền.)* |

---

## Tình huống 7 — Phòng tiếp khách · 11:30, báo cáo và đề xuất khéo léo

| Vai | Lời thoại |
|---|---|
| Phong | （<ruby>礼<rt>れい</rt></ruby>）<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Cúi. Quý ngài Tanaka, để ngài chờ. Em xin được báo cáo kết quả kiểm tra.)* |
| Tanaka | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời em.)* |
| Phong | <ruby>全体<rt>ぜんたい</rt></ruby>として<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>良好<rt>りょうこう</rt></ruby>な<ruby>状態<rt>じょうたい</rt></ruby>でございます。エンジン、ブレーキ、<ruby>足回<rt>あしまわ</rt></ruby>り、<ruby>全<rt>すべ</rt></ruby>て<ruby>問題<rt>もんだい</rt></ruby>ございません。<br>*(Tổng thể trạng thái rất tốt ạ. Động cơ, phanh, gầm — không có vấn đề.)* |
| Tanaka | それは<ruby>良<rt>よ</rt></ruby>かった。<br>*(Vậy may quá.)* |
| Phong | ただ、<ruby>一点<rt>いってん</rt></ruby>ご<ruby>提案<rt>ていあん</rt></ruby>がございます。<ruby>左後<rt>ひだりうし</rt></ruby>ろのタイヤの<ruby>溝<rt>みぞ</rt></ruby>が<ruby>3<rt>さん</rt></ruby>ミリでございまして、<ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby><ruby>時期<rt>じき</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っております。<br>*(Tuy nhiên, em có một đề xuất. Rãnh lốp sau trái 3 ly, đã vào thời điểm khuyến nghị thay.)* |
| Tanaka | え、もうそんな<ruby>時期<rt>じき</rt></ruby>か。<br>*(Ơ, đã tới lúc đó à.)* |
| Phong | <ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>でお<ruby>見積<rt>みつ</rt></ruby>もりは<ruby>22<rt>にじゅうに</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>になります。レクサス<ruby>純正<rt>じゅんせい</rt></ruby>でございます。<br>*(Thay đồng thời 4 chiếc, báo giá khoảng 220 nghìn yên ạ. Chính hãng Lexus.)* |
| Tanaka | <ruby>純正<rt>じゅんせい</rt></ruby>でね。<ruby>本日<rt>ほんじつ</rt></ruby>できる？<br>*(Chính hãng nhé. Hôm nay làm được không?)* |
| Phong | はい、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>までにご<ruby>用意<rt>ようい</rt></ruby>できます。<ruby>確認<rt>かくにん</rt></ruby>させていただきますので、<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Vâng, em chuẩn bị được trước 5 giờ chiều. Em xin xác nhận, ngài vui lòng chờ một chút.)* |

---

## Tình huống 8 — Phòng training · 13:00, Murakami review buổi sáng

| Vai | Lời thoại |
|---|---|
| Murakami | フォンさん、<ruby>午前中<rt>ごぜんちゅう</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby><ruby>対応<rt>たいおう</rt></ruby><ruby>素晴<rt>すば</rt></ruby>らしかったですよ。<br>*(Phong, đối ứng khách buổi sáng tuyệt vời đấy.)* |
| Phong | ありがとうございます。でも<ruby>反省点<rt>はんせいてん</rt></ruby>もあります。<br>*(Em cảm ơn. Nhưng cũng có điểm cần rút kinh nghiệm.)* |
| Murakami | おっしゃってください。<br>*(Mời em nói.)* |
| Phong | お<ruby>茶<rt>ちゃ</rt></ruby>をお<ruby>出<rt>だ</rt></ruby>しする<ruby>時<rt>とき</rt></ruby>、<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>のみ</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>遠<rt>とお</rt></ruby>かったかもしれません。<br>*(Khi mời trà, vị trí chén có thể hơi xa.)* |
| Murakami | よく<ruby>気<rt>き</rt></ruby>づきましたね。<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>のみ</rt></ruby>は<ruby>取<rt>と</rt></ruby>っ<ruby>手<rt>て</rt></ruby>がお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>右<rt>みぎ</rt></ruby>に<ruby>来<rt>く</rt></ruby>るように、お<ruby>客様<rt>きゃくさま</rt></ruby>から<ruby>30<rt>さんじゅう</rt></ruby>センチ<ruby>程度<rt>ていど</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>です。<br>*(Em để ý tốt. Chén để tay cầm hướng phải khách, cách khách khoảng 30 cm.)* |
| Phong | あと、<ruby>料金<rt>りょうきん</rt></ruby>を<ruby>言<rt>い</rt></ruby>う<ruby>時<rt>とき</rt></ruby>、<ruby>声<rt>こえ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Còn nữa, khi nói tiền, giọng em hơi căng thẳng.)* |
| Murakami | <ruby>料金<rt>りょうきん</rt></ruby>は<ruby>遠慮<rt>えんりょ</rt></ruby>せずに<ruby>堂々<rt>どうどう</rt></ruby>と。レクサスのお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>金額<rt>きんがく</rt></ruby>より<ruby>価値<rt>かち</rt></ruby>を<ruby>見<rt>み</rt></ruby>ますから。<br>*(Tiền thì đường hoàng, không ngại. Khách Lexus xem giá trị hơn giá.)* |

---

## Tình huống 9 — Khu lift Lexus · 15:00, thay lốp — Phong dạy Tuấn quy chuẩn Lexus

*Tuấn lên xem.*

| Vai | Lời thoại |
|---|---|
| Tuấn | フォンさん、レクサスの<ruby>整備<rt>せいび</rt></ruby>はトヨタと<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Anh Phong, sửa Lexus khác Toyota không?)* |
| Phong | <ruby>基本<rt>きほん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ。でも<ruby>細<rt>こま</rt></ruby>かい<ruby>気<rt>き</rt></ruby>づかいが<ruby>違<rt>ちが</rt></ruby>う。<ruby>白<rt>しろ</rt></ruby>い<ruby>手袋<rt>てぶくろ</rt></ruby>、マイクロファイバータオル、<ruby>専用<rt>せんよう</rt></ruby><ruby>養生<rt>ようじょう</rt></ruby>シート。<br>*(Cơ bản giống. Nhưng tinh tế khác. Găng trắng, khăn microfiber, tấm bảo vệ chuyên dụng.)* |
| Tuấn | <ruby>養生<rt>ようじょう</rt></ruby>シートって？<br>*(Tấm bảo vệ là gì ạ?)* |
| Phong | <ruby>運転席<rt>うんてんせき</rt></ruby>のシートとフロアマットに<ruby>被<rt>かぶ</rt></ruby>せる<ruby>透明<rt>とうめい</rt></ruby>のシート。<ruby>汚<rt>よご</rt></ruby>れないように。<br>*(Tấm trong suốt phủ lên ghế lái và thảm sàn. Để không bẩn.)* |
| Tuấn | お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>見<rt>み</rt></ruby>てなくても？<br>*(Khách không nhìn cũng vậy ạ?)* |
| Phong | <ruby>見<rt>み</rt></ruby>てなくてもやる。<ruby>見<rt>み</rt></ruby>られた<ruby>時<rt>とき</rt></ruby>に<ruby>差<rt>さ</rt></ruby>が<ruby>出<rt>で</rt></ruby>る。<br>*(Không nhìn cũng làm. Lúc bị nhìn thấy mới có chênh lệch.)* |
| Tuấn | なるほど、それがおもてなしですね。<br>*(Em hiểu, đó là omotenashi.)* |
| Phong | そうそう。<ruby>誰<rt>だれ</rt></ruby>も<ruby>見<rt>み</rt></ruby>てなくてもベストを<ruby>尽<rt>つ</rt></ruby>くす。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>姿勢<rt>しせい</rt></ruby>。<br>*(Đúng vậy. Không ai nhìn vẫn làm hết sức. Thái độ quan trọng.)* |

---

## Tình huống 10 — Phòng tiếp khách · 16:30, khách VIP thứ 2 phàn nàn — xử lý lời xin lỗi

*Bà Sato, 55t, đi UX250h. Lần trước thay dầu, ai đó để dấu vân tay trên capô.*

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>前回<rt>ぜんかい</rt></ruby><ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、ボンネットに<ruby>指紋<rt>しもん</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っていたの。レクサスでこういうのは<ruby>初<rt>はじ</rt></ruby>めて。<br>*(Lần trước đến, vân tay còn trên capô. Ở Lexus là lần đầu thế.)* |
| Phong | （<ruby>深<rt>ふか</rt></ruby>く<ruby>礼<rt>れい</rt></ruby>）この<ruby>度<rt>たび</rt></ruby>はご<ruby>不快<rt>ふかい</rt></ruby>な<ruby>思<rt>おも</rt></ruby>いをおかけし、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<br>*(Cúi sâu. Lần này đã khiến quý bà khó chịu, em vô cùng xin lỗi.)* |
| Sato | あなたじゃないでしょうけど、レクサスとしてどう<ruby>考<rt>かんが</rt></ruby>えてるの？<br>*(Không phải em đâu nhưng Lexus nghĩ thế nào?)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>させていただきますフォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>店舗<rt>てんぽ</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby>として、<ruby>心<rt>こころ</rt></ruby>よりお<ruby>詫<rt>わ</rt></ruby>び<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Hôm nay em xin phép phụ trách, tên Phong. Với tư cách trách nhiệm cửa hàng, em thành tâm xin lỗi.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>外装<rt>がいそう</rt></ruby><ruby>磨<rt>みが</rt></ruby>き<ruby>込<rt>こ</rt></ruby>みを<ruby>無料<rt>むりょう</rt></ruby>でさせていただきます。それから<ruby>店長<rt>てんちょう</rt></ruby>もご<ruby>挨拶<rt>あいさつ</rt></ruby>に<ruby>参<rt>まい</rt></ruby>ります。<br>*(Hôm nay em xin được đánh bóng ngoại thất miễn phí. Sau đó cửa hàng trưởng cũng sẽ đến chào.)* |
| Sato | そこまでしなくていいけど…<ruby>気持<rt>きも</rt></ruby>ちは<ruby>嬉<rt>うれ</rt></ruby>しいわ。<br>*(Không cần đến mức đó nhưng… lòng thành thì vui.)* |
| Phong | <ruby>今後<rt>こんご</rt></ruby>このようなことがないよう、<ruby>整備<rt>せいび</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>見直<rt>みなお</rt></ruby>します。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<br>*(Từ nay không để xảy ra nữa, toàn bộ chúng em sẽ xem lại quy trình. Em thực sự xin lỗi.)* |

---

## Tình huống 11 — Phòng 整備士長 · 17:30, báo cáo sự cố Sato

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でご<ruby>報告<rt>ほうこく</rt></ruby>がございます。<br>*(Xin phép. Em có báo cáo về vụ bà Sato.)* |
| Yamada | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời em.)* |
| Phong | <ruby>前回<rt>ぜんかい</rt></ruby>のオイル<ruby>交換<rt>こうかん</rt></ruby>でボンネットに<ruby>指紋<rt>しもん</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っていたとのご<ruby>指摘<rt>してき</rt></ruby>でした。<br>*(Lần thay dầu trước, có nhận xét vân tay còn trên capô.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>外装<rt>がいそう</rt></ruby><ruby>磨<rt>みが</rt></ruby>き<ruby>込<rt>こ</rt></ruby>みを<ruby>無料<rt>むりょう</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>させていただきました。<ruby>承認<rt>しょうにん</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>かずに<ruby>判断<rt>はんだん</rt></ruby>してしまい、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Hôm nay em đã miễn phí đánh bóng ngoại thất. Em quyết định không xin phê duyệt trước, xin lỗi anh.)* |
| Yamada | いや、その<ruby>判断<rt>はんだん</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しい。<ruby>店長<rt>てんちょう</rt></ruby>にも<ruby>共有<rt>きょうゆう</rt></ruby>しておく。<br>*(Không, quyết định đó đúng. Sẽ chia sẻ với cửa hàng trưởng.)* |
| Phong | <ruby>原因<rt>げんいん</rt></ruby>として、<ruby>白手袋<rt>しろてぶくろ</rt></ruby>の<ruby>着用<rt>ちゃくよう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>が<ruby>不十分<rt>ふじゅうぶん</rt></ruby>だった<ruby>可能<rt>かのう</rt></ruby><ruby>性<rt>せい</rt></ruby>がございます。<ruby>明日<rt>あした</rt></ruby><ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>させてください。<br>*(Nguyên nhân khả năng do kiểm tra đeo găng trắng chưa đủ. Mai sáng họp em xin được chia sẻ.)* |
| Yamada | お<ruby>願<rt>ねが</rt></ruby>いする。フォン<ruby>君<rt>くん</rt></ruby>、レクサス<ruby>担当<rt>たんとう</rt></ruby>として<ruby>立派<rt>りっぱ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>ったな。<br>*(Nhờ em. Phong trưởng thành thành người phụ trách Lexus đấy.)* |
| Phong | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。<br>*(Lời khen quá lớn so với em ạ.)* |

---

## Tình huống 12 — Khu xe khách · 18:00, tiễn khách Sato

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>磨<rt>みが</rt></ruby>き<ruby>込<rt>こ</rt></ruby>みも<ruby>完了<rt>かんりょう</rt></ruby>しております。<br>*(Quý bà Sato, để bà chờ. Đánh bóng cũng đã hoàn tất.)* |
| Sato | わ、ピカピカ！ありがとう。<br>*(Ồ, bóng loáng! Cảm ơn em.)* |
| Phong | こちら<ruby>店長<rt>てんちょう</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>でございます。<br>*(Đây là cửa hàng trưởng Yamada ạ.)* |
| Yamada | （<ruby>深<rt>ふか</rt></ruby>く<ruby>礼<rt>れい</rt></ruby>）<ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、この<ruby>度<rt>たび</rt></ruby>はご<ruby>不快<rt>ふかい</rt></ruby>な<ruby>思<rt>おも</rt></ruby>いをおかけし、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<br>*(Cúi sâu. Quý bà Sato, lần này khiến bà khó chịu, vô cùng xin lỗi.)* |
| Sato | フォンさんがとても<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>してくれたから、もう<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。また<ruby>来<rt>き</rt></ruby>ますよ。<br>*(Vì Phong đối ứng rất chu đáo nên không sao nữa. Tôi sẽ lại đến.)* |
| Phong | お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りくださいませ。<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>来店<rt>らいてん</rt></ruby><ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Xin bà về cẩn thận ạ. Hôm nay cảm tạ bà đã đến.)* |
| Sato | （<ruby>車<rt>くるま</rt></ruby>に<ruby>乗<rt>の</rt></ruby>る）バイバイ。<br>*(Lên xe. Tạm biệt.)* |
| Phong | （<ruby>車<rt>くるま</rt></ruby>が<ruby>見<rt>み</rt></ruby>えなくなるまで<ruby>礼<rt>れい</rt></ruby>）<br>*(Cúi đến khi xe khuất.)* |

---

## Tình huống 13 — Phòng nghỉ · 18:30, Carlos và Phong nói chuyện về Lexus

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>初日<rt>しょにち</rt></ruby>でクレーム<ruby>対応<rt>たいおう</rt></ruby>はキツかったね。<br>*(Phong, vất vả rồi. Ngày đầu mà xử lý phàn nàn căng đấy.)* |
| Phong | カルロスさん、<ruby>正直<rt>しょうじき</rt></ruby><ruby>緊張<rt>きんちょう</rt></ruby>しました。でも<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Anh Carlos, thật sự em căng thẳng. Nhưng học được nhiều.)* |
| Carlos | レクサスのお<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいけど、<ruby>認<rt>みと</rt></ruby>めてくれると<ruby>長<rt>なが</rt></ruby>く<ruby>来<rt>き</rt></ruby>てくれる。<br>*(Khách Lexus khắt khe nhưng công nhận rồi thì đến lâu dài.)* |
| Phong | カルロスさんはどのぐらいレクサス<ruby>担当<rt>たんとう</rt></ruby>ですか？<br>*(Anh Carlos phụ trách Lexus bao lâu rồi?)* |
| Carlos | <ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>。<ruby>最初<rt>さいしょ</rt></ruby>はクレームもらった<ruby>時<rt>とき</rt></ruby><ruby>泣<rt>な</rt></ruby>きそうだったよ。<br>*(Năm thứ 2. Hồi đầu bị phàn nàn suýt khóc luôn.)* |
| Phong | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>同<rt>おな</rt></ruby>じですね。<br>*(Cười. Giống nhau quá.)* |
| Carlos | フォンの<ruby>敬語<rt>けいご</rt></ruby>はもう<ruby>俺<rt>おれ</rt></ruby>より<ruby>上手<rt>うま</rt></ruby>いよ。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>取<rt>と</rt></ruby>ったら<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>店<rt>みせ</rt></ruby>のエースだ。<br>*(Kính ngữ của Phong giỏi hơn tôi rồi. Lấy được cấp 2 thợ sửa là ace của cửa hàng thật đấy.)* |
| Phong | <ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Tháng 10 em sẽ cố.)* |

---

## Tình huống 14 — Phòng trọ Phong · 22:00 thứ Bảy, gọi về Hải Phòng

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Bố | Phong à, dạo này garage ra sao? |
| Phong | Bố ơi, tháng này garage con mở thêm corner Lexus — bố biết Lexus không, dòng cao cấp của Toyota ấy. Con được chọn vào nhóm 3 thợ phụ trách. |
| Bố | Ôi giời, được phụ trách dòng xịn cơ à. Khách bên đấy có khó tính không? |
| Phong | Khó cực bố ạ. Có bà 佐藤 — Sato — kêu lần trước xe để dấu vân tay trên capô. Con phải cúi xin lỗi mãi rồi đánh bóng miễn phí. |
| Bố | Vân tay capô thôi mà cũng kêu à? Bên Việt mình thì… |
| Phong | Vâng bố, Nhật khắt khe lắm. Xe LS500h người ta mua 10 triệu yên — khoảng 1.8 tỷ Việt — thì cũng đáng. Bên này dùng găng trắng, khăn microfiber, tấm bảo vệ ghế, không bao giờ tay trần chạm sơn. |
| Bố | Cẩn thận thế cơ à. Có học được gì cho mình không con? |
| Phong | Học được nhiều bố ạ. Lời nói thì không bao giờ nói "tiền là 220 nghìn yên" mà nói "báo giá khoảng 220 nghìn yên trở thành ạ" — nhẹ nhàng hơn. 整備士長 Yamada bảo con "trưởng thành thành người phụ trách Lexus rồi". |
| Bố | Con thi 整備士 2級 tháng 10 đến đâu rồi? |
| Phong | Tháng 8 lễ hội hè Aichi xong là con cắm đầu vào ôn. Hết tháng 10 con báo bố. |
| Bố | Ừ, làm tới đi con. Đợt này về Tết Tây con mua ít quà cho mẹ với em nhé. |
| Phong | Vâng bố, con sẽ mua mỹ phẩm Shiseido cho mẹ với máy chơi game cho thằng Đạt. |
| Bố | Ừ, giữ sức khoẻ. |

---

## Đọng lại chương

**Mẫu câu keigo tiếp khách VIP Lexus:**
- **お越しいただき誠にありがとうございます** — chào VIP tột bậc thay cho 「いらっしゃいませ」
- **〜と申します・〜でございます** — giới thiệu/khẳng định khiêm nhường
- **〜させていただいてもよろしいでしょうか** — xin phép trước mọi hành động (cao nhất)
- **お見積もりは〜程度になります** — báo giá khéo léo, 「程度」+「になります」làm mềm
- **この度はご不快な思いをおかけし、誠に申し訳ございませんでした** — xin lỗi khách phàn nàn
- **頂戴いたします・〜くださいませ** — nhận đồ / yêu cầu cực kính

> Từ vựng & mẫu câu chương này: お<ruby>越<rt>こ</rt></ruby>し・<ruby>誠<rt>まこと</rt></ruby>に・<ruby>究極<rt>きゅうきょく</rt></ruby>・<ruby>標榜<rt>ひょうぼう</rt></ruby>・<ruby>玉露<rt>ぎょくろ</rt></ruby>・<ruby>湯<rt>ゆ</rt></ruby><ruby>呑<rt>のみ</rt></ruby>・<ruby>純正<rt>じゅんせい</rt></ruby>・<ruby>養生<rt>ようじょう</rt></ruby>シート・<ruby>外装<rt>がいそう</rt></ruby><ruby>磨<rt>みが</rt></ruby>き<ruby>込<rt>こ</rt></ruby>み・お<ruby>詫<rt>わ</rt></ruby>び・<ruby>応接<rt>おうせつ</rt></ruby><ruby>室<rt>しつ</rt></ruby>・<ruby>身<rt>み</rt></ruby>だしなみ・<ruby>気<rt>き</rt></ruby>づかい・<ruby>程度<rt>ていど</rt></ruby>・<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>る・<ruby>承知<rt>しょうち</rt></ruby>。

## Bí quyết chương

- **Lexus = "誰も見てなくてもベスト"**: găng trắng, tấm bảo vệ ghế ngay cả khi khách không nhìn.
- **Báo giá mềm**: thay 「<ruby>22<rt>にじゅうに</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>です」→「<ruby>22<rt>にじゅうに</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>になります」khoảng + trở thành.
- **Xin lỗi 3 bước**: nhận lỗi (申し訳ございません) → đề xuất bù đắp (磨き込み無料) → cam kết tương lai (今後このようなことがないよう).
- **Cúi tiễn khách**: cúi đến khi xe khuất tầm mắt — gọi là 見送り (mi-okuri).
- **Trà ngọc lộ**: chén đặt tay cầm hướng phải, cách khách 30 cm, báo "熱うございます" trước.
- **Người nước ngoài + Lexus**: chính việc Phong là người Việt nói được keigo này càng tạo ấn tượng — đừng giấu xuất thân.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 接客 | せっきゃく | TIẾP KHÁCH | tiếp khách |
| 研修 | けんしゅう | NGHIÊN TU | training, đào tạo |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 究極 | きゅうきょく | CỨU CỰC | tận cùng, đỉnh cao |
| おもてなし | — | — | đãi khách kiểu Nhật |
| 標榜 | ひょうぼう | TIÊU BẢNG | nêu cao, khẳng định |
| 期待 | きたい | KỲ ĐÃI | kỳ vọng |
| 言葉遣い | ことばづかい | NGÔN DIỆP KHIỂN | cách dùng từ |
| 動作 | どうさ | ĐỘNG TÁC | cử chỉ |
| 身だしなみ | みだしなみ | THÂN — | trang phục, ngoại hình |
| 越す | こす | VIỆT | đến (kính ngữ) |
| 誠に | まことに | THÀNH | thành thật, thực sự |
| ロールプレイ | — | — | đóng vai luyện tập |
| 角度 | かくど | GIÁC ĐỘ | góc, độ |
| 出身 | しゅっしん | XUẤT THÂN | xuất thân, quê quán |
| 応接室 | おうせつしつ | ỨNG TIẾP THẤT | phòng tiếp khách |
| 案内 | あんない | ÁN NỘI | dẫn đường, hướng dẫn |
| 玉露 | ぎょくろ | NGỌC LỘ | trà ngọc lộ (loại cao cấp) |
| 湯呑 | ゆのみ | THANG ẨM | chén trà |
| 取っ手 | とって | THỦ THỦ | tay cầm |
| 預かる | あずかる | DỰ | nhận giữ, nhận trông |
| 程度 | ていど | TRÌNH ĐỘ | mức độ, khoảng |
| 純正 | じゅんせい | THUẦN CHÍNH | chính hãng |
| 養生シート | ようじょうシート | DƯỠNG SINH — | tấm bảo vệ |
| 透明 | とうめい | THẤU MINH | trong suốt |
| マイクロファイバー | — | — | microfiber |
| 専用 | せんよう | CHUYÊN DỤNG | chuyên dụng |
| 塗装 | とそう | ĐỒ TRANG | sơn xe |
| 指紋 | しもん | CHỈ VĂN | vân tay |
| 細かい | こまかい | TẾ | tỉ mỉ |
| 気づかい | きづかい | KHÍ — | sự để ý, quan tâm |
| 見合う | みあう | KIẾN HỢP | tương xứng |
| 溝 | みぞ | CÁCH | rãnh (lốp) |
| 推奨 | すいしょう | THÔI XƯỚNG | khuyến nghị |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 見積もり | みつもり | KIẾN TÍCH | báo giá |
| 良好 | りょうこう | LƯƠNG HẢO | tốt, ổn |
| 状態 | じょうたい | TRẠNG THÁI | trạng thái |
| 足回り | あしまわり | TÚC HỒI | hệ thống gầm |
| 反省点 | はんせいてん | PHẢN TỈNH ĐIỂM | điểm cần rút kinh nghiệm |
| 遠慮 | えんりょ | VIỄN LỰ | khách sáo, ngại |
| 堂々 | どうどう | ĐƯỜNG ĐƯỜNG | đường hoàng |
| 価値 | かち | GIÁ TRỊ | giá trị |
| 不快 | ふかい | BẤT KHOÁI | khó chịu |
| お詫び | おわび | — TẠ | lời xin lỗi |
| 申し訳 | もうしわけ | THÂN ÁN | xin lỗi (trang trọng) |
| 外装 | がいそう | NGOẠI TRANG | ngoại thất xe |
| 磨き込み | みがきこみ | MA NHẬP | đánh bóng kỹ |
| 店長 | てんちょう | ĐIẾM TRƯỞNG | cửa hàng trưởng |
| 承認 | しょうにん | THỪA NHẬN | phê duyệt |
| 判断 | はんだん | PHÁN ĐOÁN | quyết định |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 朝礼 | ちょうれい | TRIỀU LỄ | họp sáng |
| 着用 | ちゃくよう | TRƯỚC DỤNG | đeo, mặc |
| 見送り | みおくり | KIẾN TỐNG | tiễn đưa |
| 完了 | かんりょう | HOÀN LIỄU | hoàn tất |
| 来店 | らいてん | LAI ĐIẾM | đến cửa hàng |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000007, 800000045, NULL, 'markdown_book', 'T07. Lễ hội mùa hè Aichi — dẫn kohai mặc yukata (夏祭り)', '# Sách ô tô năm 3 · T07. Lễ hội mùa hè Aichi — dẫn kohai mặc yukata (夏祭り)

> **Mục tiêu nhân vật:** Phong (24t, Hải Phòng) — dẫn 2 kohai (Tuấn + Đức) và đồng nghiệp đi **大須夏まつり** Nagoya tháng 8/2027. Học các mẫu hội thoại tiếng Nhật mùa hè: rủ rê tự nhiên (〜ない？/〜よう), thuê và mặc <ruby>浴衣<rt>ゆかた</rt></ruby> (お<ruby>直<rt>なお</rt></ruby>しお<ruby>願<rt>ねが</rt></ruby>いします), mặc cả ở quầy 屋台 (もう<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>くなりますか), xem 盆踊り và 花火 (〜と<ruby>言<rt>い</rt></ruby>えば), tránh nắng và uống đủ nước (<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby><ruby>気<rt>き</rt></ruby>をつけて), chăm sóc kohai bị say nắng.

---

## Bối cảnh

Đầu tháng 8/2027. Aichi nắng 35°C. Garage nghỉ お<ruby>盆<rt>ぼん</rt></ruby> 5 ngày 13-17/8. Phong rủ Tuấn, Đức, Carlos, và Suzuki đi **大須夏まつり** ở Nagoya tối thứ Bảy 9/8 — lễ hội lớn nhất Aichi mùa hè, có pháo hoa cuối tháng tại Toyota City. Trước đi, Phong dẫn 2 kohai đến tiệm thuê yukata. Chương này tập trung **văn hoá mùa hè Nhật** + chăm sóc kohai.

---

## Tình huống 1 — Phòng nghỉ garage · 12:00 thứ Tư, Phong rủ kohai đi lễ hội

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン<ruby>君<rt>くん</rt></ruby>、ドゥック<ruby>君<rt>くん</rt></ruby>、<ruby>今週<rt>こんしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>、<ruby>夏<rt>なつ</rt></ruby>まつりに<ruby>行<rt>い</rt></ruby>かない？<br>*(Tuấn, Đức, thứ Bảy này đi lễ hội hè không?)* |
| Tuấn | え、<ruby>夏<rt>なつ</rt></ruby>まつりって？<br>*(Hả, lễ hội hè là gì ạ?)* |
| Phong | <ruby>大須<rt>おおす</rt></ruby><ruby>夏<rt>なつ</rt></ruby>まつり。<ruby>名古屋<rt>なごや</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>有名<rt>ゆうめい</rt></ruby>。<ruby>屋台<rt>やたい</rt></ruby>、<ruby>盆踊<rt>ぼんおど</rt></ruby>り、<ruby>花火<rt>はなび</rt></ruby>もある。<br>*(Lễ hội hè Osu. Nổi nhất Nagoya. Có hàng quán, múa bon, cả pháo hoa.)* |
| Đức | <ruby>面白<rt>おもしろ</rt></ruby>そうですね！でもお<ruby>金<rt>かね</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かな…<br>*(Có vẻ vui ạ! Nhưng tiền có ổn không…)* |
| Phong | <ruby>入場<rt>にゅうじょう</rt></ruby>は<ruby>無料<rt>むりょう</rt></ruby>。<ruby>屋台<rt>やたい</rt></ruby>で<ruby>食<rt>た</rt></ruby>べても<ruby>1<rt>いっ</rt></ruby><ruby>人<rt>り</rt></ruby><ruby>2000<rt>にせん</rt></ruby><ruby>円<rt>えん</rt></ruby>あれば<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(Vào miễn phí. Ăn hàng quán mỗi người 2000 yên là đủ.)* |
| Tuấn | <ruby>浴衣<rt>ゆかた</rt></ruby>って<ruby>着<rt>き</rt></ruby>られるんですか？<br>*(Yukata mặc được không ạ?)* |
| Phong | おっ、いい<ruby>質問<rt>しつもん</rt></ruby>。<ruby>金曜日<rt>きんようび</rt></ruby><ruby>仕事<rt>しごと</rt></ruby><ruby>後<rt>あと</rt></ruby>、レンタル<ruby>屋<rt>や</rt></ruby>に<ruby>連<rt>つ</rt></ruby>れて<ruby>行<rt>い</rt></ruby>く。<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>3500<rt>さんぜんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>ぐらい。<br>*(Ồ, câu hỏi hay. Tối thứ Sáu sau giờ làm, anh dẫn ra tiệm thuê. Một ngày khoảng 3500 yên.)* |
| Carlos | （<ruby>横<rt>よこ</rt></ruby>から）<ruby>俺<rt>おれ</rt></ruby>も<ruby>行<rt>い</rt></ruby>くよ。<ruby>去年<rt>きょねん</rt></ruby><ruby>浴衣<rt>ゆかた</rt></ruby><ruby>買<rt>か</rt></ruby>ったから<ruby>持<rt>も</rt></ruby>ってる。<br>*(Từ bên. Tôi cũng đi. Năm ngoái mua yukata rồi, có sẵn.)* |

---

## Tình huống 2 — Tiệm thuê yukata Osu · 19:00 thứ Sáu, chọn yukata

| Vai | Lời thoại |
|---|---|
| Tenshu | いらっしゃいませ。<ruby>浴衣<rt>ゆかた</rt></ruby>のレンタルでございますか？<br>*(Kính chào. Anh chị thuê yukata ạ?)* |
| Phong | はい、<ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>分<rt>ぶん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>明日<rt>あした</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>から<ruby>夜<rt>よる</rt></ruby>までです。<br>*(Vâng, cho 3 người. Mai chiều đến tối.)* |
| Tenshu | <ruby>男性<rt>だんせい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>ですね。こちらからお<ruby>選<rt>えら</rt></ruby>びください。<br>*(3 nam ạ. Mời các anh chọn bên này.)* |
| Tuấn | わー、<ruby>柄<rt>がら</rt></ruby>がいっぱい！どれにしようかな…<br>*(Ồ nhiều hoạ tiết! Chọn cái nào nhỉ…)* |
| Đức | <ruby>俺<rt>おれ</rt></ruby>はこの<ruby>紺色<rt>こんいろ</rt></ruby>がいい。<ruby>地味<rt>じみ</rt></ruby>だけど。<br>*(Em chọn cái xanh đen này. Tuy đơn giản.)* |
| Phong | ドゥック<ruby>君<rt>くん</rt></ruby>に<ruby>似合<rt>にあ</rt></ruby>うよ。トゥアン<ruby>君<rt>くん</rt></ruby>は<ruby>明<rt>あか</rt></ruby>るい<ruby>色<rt>いろ</rt></ruby>がいいんじゃない？<br>*(Hợp với Đức đấy. Tuấn chọn màu sáng hơn nhỉ?)* |
| Tuấn | この<ruby>水色<rt>みずいろ</rt></ruby>に<ruby>白<rt>しろ</rt></ruby>い<ruby>波<rt>なみ</rt></ruby><ruby>柄<rt>がら</rt></ruby>、かっこいい！<br>*(Cái xanh nước biển vân sóng trắng này, ngầu!)* |
| Phong | （<ruby>店主<rt>てんしゅ</rt></ruby>に）<ruby>帯<rt>おび</rt></ruby>の<ruby>結<rt>むす</rt></ruby>び<ruby>方<rt>かた</rt></ruby>、<ruby>教<rt>おし</rt></ruby>えていただけますか？<ruby>初<rt>はじ</rt></ruby>めての<ruby>者<rt>もの</rt></ruby>が<ruby>二人<rt>ふたり</rt></ruby>いるんです。<br>*(Với chủ tiệm. Cách thắt obi chỉ giúp em được không ạ? Có 2 người lần đầu.)* |
| Tenshu | もちろんです。<ruby>男性<rt>だんせい</rt></ruby>は「<ruby>貝<rt>かい</rt></ruby>の<ruby>口<rt>くち</rt></ruby><ruby>結<rt>むす</rt></ruby>び」が<ruby>定番<rt>ていばん</rt></ruby>。<ruby>簡単<rt>かんたん</rt></ruby>ですよ。<br>*(Đương nhiên. Nam dùng "kai-no-kuchi musubi" là chuẩn. Đơn giản thôi.)* |

---

## Tình huống 3 — Tiệm yukata · 19:30, mặc thử và xin chỉnh

| Vai | Lời thoại |
|---|---|
| Tuấn | フォンさん、これ<ruby>長<rt>なが</rt></ruby>すぎませんか？<ruby>足<rt>あし</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>きずって。<br>*(Anh Phong, cái này dài quá không ạ? Vạt áo lê.)* |
| Phong | （<ruby>店主<rt>てんしゅ</rt></ruby>に）すみません、<ruby>裾<rt>すそ</rt></ruby>が<ruby>長<rt>なが</rt></ruby>いようです。お<ruby>直<rt>なお</rt></ruby>しお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Với chủ tiệm. Xin lỗi, gấu áo có vẻ dài. Nhờ chỉnh ạ.)* |
| Tenshu | はい、<ruby>身長<rt>しんちょう</rt></ruby><ruby>165<rt>ひゃくろくじゅうご</rt></ruby>センチぐらいですね。<ruby>1<rt>いち</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>小<rt>ちい</rt></ruby>さいサイズで<ruby>試<rt>ため</rt></ruby>しましょう。<br>*(Vâng, cao 165 cm nhỉ. Thử size nhỏ hơn một bậc.)* |
| Đức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>胸<rt>むね</rt></ruby>の<ruby>合<rt>あ</rt></ruby>わせ、これでいいですか？<br>*(Phần ngực vạt áo, thế này được không ạ?)* |
| Tenshu | <ruby>男性<rt>だんせい</rt></ruby>は<ruby>左<rt>ひだり</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>、つまり<ruby>左前<rt>ひだりまえ</rt></ruby>です。<ruby>右<rt>みぎ</rt></ruby>が<ruby>上<rt>うえ</rt></ruby>になると<ruby>亡<rt>な</rt></ruby>くなった<ruby>方<rt>かた</rt></ruby>の<ruby>着<rt>き</rt></ruby>せ<ruby>方<rt>かた</rt></ruby>。<br>*(Nam là trái phủ lên, tức "hidari-mae". Phải lên là cách mặc người mất.)* |
| Đức | え、そうなんですか！<ruby>大事<rt>だいじ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>です。<br>*(Hả vậy ạ! Thông tin quan trọng đây.)* |
| Phong | ベトナムにはこういう<ruby>決<rt>き</rt></ruby>まりはないからね。<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Việt Nam không có quy tắc này. Để ý nhé.)* |
| Tenshu | <ruby>下駄<rt>げた</rt></ruby>もご<ruby>用意<rt>ようい</rt></ruby>しております。<ruby>慣<rt>な</rt></ruby>れていないと<ruby>痛<rt>いた</rt></ruby>くなりますので、<ruby>絆創膏<rt>ばんそうこう</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちください。<br>*(Cũng có guốc geta. Không quen sẽ đau, mang băng cá nhân theo.)* |

---

## Tình huống 4 — Ga 大須観音 · 17:30 thứ Bảy, gặp nhau dưới chân ga

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、お<ruby>疲<rt>つか</rt></ruby>れさま！<br>*(Anh Carlos, vất vả rồi!)* |
| Carlos | おー、フォンの<ruby>浴衣<rt>ゆかた</rt></ruby><ruby>似合<rt>にあ</rt></ruby>ってるよ。<br>*(Ồ, yukata Phong hợp đấy.)* |
| Phong | カルロスさんもブラジル<ruby>柄<rt>がら</rt></ruby>みたいでカッコいい！<br>*(Anh Carlos cũng giống hoạ tiết Brazil, ngầu!)* |
| Tuấn | （<ruby>下駄<rt>げた</rt></ruby>でぎこちなく<ruby>歩<rt>ある</rt></ruby>く）うわ、<ruby>歩<rt>ある</rt></ruby>きにくい！<br>*(Bước guốc lóng ngóng. Ồ khó đi quá!)* |
| Đức | (<ruby>笑<rt>わら</rt></ruby>う) <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れないね。<br>*(Cười. Đúng là không quen.)* |
| Phong | カランコロンって<ruby>音<rt>おと</rt></ruby>が<ruby>夏<rt>なつ</rt></ruby>の<ruby>風物詩<rt>ふうぶつし</rt></ruby>だよ。<br>*(Tiếng "ka-ran ko-ron" là âm thanh đặc trưng mùa hè đấy.)* |
| Carlos | スズキさんはどこ？<br>*(Anh Suzuki đâu?)* |
| Phong | LINE<ruby>見<rt>み</rt></ruby>る…あ、もう<ruby>来<rt>き</rt></ruby>てるって。<ruby>入口<rt>いりぐち</rt></ruby>の<ruby>鳥居<rt>とりい</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>待<rt>ま</rt></ruby>ってる。<br>*(Xem LINE… à, anh ấy đến rồi. Đang đợi trước cổng torii.)* |

---

## Tình huống 5 — Quầy 焼きそば · 18:30, mua đồ ăn — thử mặc cả

| Vai | Lời thoại |
|---|---|
| Yatai | いらっしゃい！<ruby>焼<rt>や</rt></ruby>きそば<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>1300<rt>せんさんびゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>！<br>*(Mời vào! Yakisoba 1 hộp 500 yên, 3 hộp 1300 yên!)* |
| Phong | おじさん、<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>買<rt>か</rt></ruby>ったらもう<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>くなりますか？<br>*(Bác ơi, 5 hộp có rẻ hơn được không ạ?)* |
| Yatai | お<ruby>兄<rt>にい</rt></ruby>さん、<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby>なら<ruby>2000<rt>にせん</rt></ruby><ruby>円<rt>えん</rt></ruby>でいいよ！<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>100<rt>ひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>引<rt>び</rt></ruby>き！<br>*(Cậu, 5 hộp 2000 yên! Giảm 100 mỗi hộp!)* |
| Phong | ありがとうございます！<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cảm ơn! Cho 5 hộp.)* |
| Tuấn | フォンさん、<ruby>屋台<rt>やたい</rt></ruby>って<ruby>値段<rt>ねだん</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>できるんですか？<br>*(Anh Phong, hàng quán mặc cả được ạ?)* |
| Phong | <ruby>少<rt>すこ</rt></ruby>しなら。<ruby>個数<rt>こすう</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い<ruby>時<rt>とき</rt></ruby>と、<ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くなったら。<ruby>強<rt>つよ</rt></ruby>く<ruby>値切<rt>ねぎ</rt></ruby>るのは<ruby>失礼<rt>しつれい</rt></ruby>だから「もう<ruby>少<rt>すこ</rt></ruby>し」程度に。<br>*(Chút thôi. Khi mua nhiều và đêm muộn. Mặc cả mạnh là bất lịch sự nên chỉ "thêm chút".)* |
| Đức | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em học được rồi.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>は、ベトナムの<ruby>市場<rt>いちば</rt></ruby>の<ruby>半分<rt>はんぶん</rt></ruby>ぐらい<ruby>柔<rt>やわ</rt></ruby>らかく<ruby>言<rt>い</rt></ruby>うのがコツ。<br>*(Thực ra mềm nửa chợ Việt là bí quyết.)* |

---

## Tình huống 6 — Quầy 金魚すくい · 19:00, kohai thử trò vớt cá vàng

| Vai | Lời thoại |
|---|---|
| Tuấn | <ruby>金魚<rt>きんぎょ</rt></ruby>すくい！やってみたい！<br>*(Vớt cá vàng! Em muốn thử!)* |
| Yatai | <ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>300<rt>さんびゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、ポイ<ruby>3<rt>さん</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>付<rt>つ</rt></ruby>き！<br>*(Một lượt 300 yên, kèm 3 vợt poi!)* |
| Tuấn | （<ruby>挑戦<rt>ちょうせん</rt></ruby>）ぐっ、<ruby>紙<rt>かみ</rt></ruby>がすぐ<ruby>破<rt>やぶ</rt></ruby>れる！<br>*(Thử. Hự, giấy rách ngay!)* |
| Đức | コツがあるんですか？<br>*(Có mẹo không ạ?)* |
| Phong | ポイを<ruby>水平<rt>すいへい</rt></ruby>に<ruby>入<rt>い</rt></ruby>れて、<ruby>金魚<rt>きんぎょ</rt></ruby>の<ruby>下<rt>した</rt></ruby>から<ruby>静<rt>しず</rt></ruby>かに<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる。<ruby>水<rt>みず</rt></ruby>から<ruby>出<rt>だ</rt></ruby>す<ruby>瞬間<rt>しゅんかん</rt></ruby>が<ruby>勝負<rt>しょうぶ</rt></ruby>。<br>*(Đặt poi nằm ngang, nâng từ dưới cá lên nhẹ. Khoảnh khắc rút khỏi nước là quyết định.)* |
| Tuấn | （<ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>）<ruby>取<rt>と</rt></ruby>れた！<br>*(Lượt 3. Vớt được rồi!)* |
| Yatai | おー、<ruby>上手<rt>じょうず</rt></ruby>！<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>る？<br>*(Ồ giỏi! Mang về không?)* |
| Tuấn | （フォンに）<ruby>寮<rt>りょう</rt></ruby>で<ruby>飼<rt>か</rt></ruby>えますか？<br>*(Với Phong. Nuôi trong ký túc được không ạ?)* |
| Phong | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>水槽<rt>すいそう</rt></ruby><ruby>買<rt>か</rt></ruby>わなきゃ。とりあえずもらって、<ruby>明日<rt>あした</rt></ruby><ruby>俺<rt>おれ</rt></ruby>のうちで<ruby>飼<rt>か</rt></ruby>うか？<br>*(Cười. Phải mua bể đã. Cứ nhận, mai về nuôi nhà anh?)* |

---

## Tình huống 7 — Khu nghỉ công viên · 19:30, Đức bị say nắng — chăm sóc

*Đức ngồi xuống ghế, mặt nhợt nhạt.*

| Vai | Lời thoại |
|---|---|
| Đức | フォンさん…ちょっと<ruby>気持<rt>きも</rt></ruby>ち<ruby>悪<rt>わる</rt></ruby>くて。<ruby>頭<rt>あたま</rt></ruby>がくらくらします。<br>*(Anh Phong… em hơi khó chịu. Đầu choáng.)* |
| Phong | （<ruby>額<rt>ひたい</rt></ruby>を<ruby>触<rt>さわ</rt></ruby>る）<ruby>熱<rt>あつ</rt></ruby>い！<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>かもしれない。<br>*(Sờ trán. Nóng! Có khi say nắng.)* |
| Phong | カルロスさん、コンビニで<ruby>経口<rt>けいこう</rt></ruby><ruby>補水液<rt>ほすいえき</rt></ruby>と<ruby>氷<rt>こおり</rt></ruby><ruby>買<rt>か</rt></ruby>ってきて。OS-1がベスト。<br>*(Carlos, ra konbini mua dung dịch bù nước và đá. OS-1 là tốt nhất.)* |
| Carlos | OK、すぐ<ruby>戻<rt>もど</rt></ruby>る！<br>*(OK, quay lại ngay!)* |
| Phong | ドゥック<ruby>君<rt>くん</rt></ruby>、<ruby>浴衣<rt>ゆかた</rt></ruby>の<ruby>帯<rt>おび</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>緩<rt>ゆる</rt></ruby>めるよ。<ruby>息<rt>いき</rt></ruby><ruby>苦<rt>くる</rt></ruby>しくない？<br>*(Đức, anh nới lỏng obi cho. Có khó thở không?)* |
| Đức | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です…すみません<ruby>迷惑<rt>めいわく</rt></ruby>かけて。<br>*(Vâng không sao… em xin lỗi làm phiền.)* |
| Phong | <ruby>謝<rt>あやま</rt></ruby>らなくていい。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>でもなる。ベトナム<ruby>人<rt>じん</rt></ruby>は<ruby>暑<rt>あつ</rt></ruby>さに<ruby>強<rt>つよ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>われがちだけど、<ruby>湿度<rt>しつど</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うから。<br>*(Không cần xin lỗi. Say nắng ai cũng bị. Người Việt hay bị tưởng chịu nóng, nhưng độ ẩm khác.)* |
| Tuấn | <ruby>水<rt>みず</rt></ruby>もうちょっと<ruby>飲<rt>の</rt></ruby>む？<br>*(Uống thêm nước nhé?)* |
| Phong | <ruby>一気<rt>いっき</rt></ruby>に<ruby>飲<rt>の</rt></ruby>むと<ruby>吐<rt>は</rt></ruby>く。<ruby>少<rt>すこ</rt></ruby>しずつ。<br>*(Uống ực sẽ ói. Từng ít một.)* |
| Carlos | （<ruby>戻<rt>もど</rt></ruby>る）OS-1と<ruby>氷<rt>こおり</rt></ruby>と<ruby>冷<rt>つめ</rt></ruby>たいタオル！<br>*(Quay lại. OS-1, đá và khăn lạnh!)* |
| Phong | ありがとう。<ruby>首<rt>くび</rt></ruby>と<ruby>脇<rt>わき</rt></ruby>の<ruby>下<rt>した</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やそう。<br>*(Cảm ơn. Làm mát cổ và nách.)* |

---

## Tình huống 8 — Băng ghế công viên · 20:00, Đức hồi phục — Phong dạy kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Đức | だいぶ<ruby>楽<rt>らく</rt></ruby>になりました。ありがとうございました。<br>*(Đỡ nhiều rồi. Cảm ơn các anh.)* |
| Phong | <ruby>良<rt>よ</rt></ruby>かった。<ruby>夏<rt>なつ</rt></ruby>の<ruby>日本<rt>にほん</rt></ruby>は<ruby>気<rt>き</rt></ruby>をつけて。<ruby>朝<rt>あさ</rt></ruby>から<ruby>水<rt>みず</rt></ruby>を<ruby>1<rt>いち</rt></ruby>リットル<ruby>飲<rt>の</rt></ruby>む<ruby>習慣<rt>しゅうかん</rt></ruby>を。<br>*(May rồi. Hè Nhật cẩn thận. Tập thói quen sáng uống 1 lít nước.)* |
| Tuấn | <ruby>麦茶<rt>むぎちゃ</rt></ruby>でもいいですか？<br>*(Trà lúa mạch cũng được ạ?)* |
| Phong | うん、<ruby>麦茶<rt>むぎちゃ</rt></ruby>は<ruby>夏<rt>なつ</rt></ruby>の<ruby>定番<rt>ていばん</rt></ruby>。<ruby>塩分<rt>えんぶん</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>だから、<ruby>梅干<rt>うめぼ</rt></ruby>しか<ruby>塩<rt>しお</rt></ruby>タブレットも<ruby>持<rt>も</rt></ruby>って。<br>*(Ừm, trà lúa mạch là chuẩn hè. Muối cũng quan trọng, mang ô mai hay viên muối.)* |
| Đức | <ruby>塩<rt>しお</rt></ruby>タブレットってどこで<ruby>買<rt>か</rt></ruby>えるんですか？<br>*(Viên muối mua đâu ạ?)* |
| Phong | コンビニのレジ<ruby>横<rt>よこ</rt></ruby>か、ドラッグストア。<ruby>100<rt>ひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>ぐらい。<br>*(Cạnh quầy thu konbini hoặc drugstore. Tầm 100 yên.)* |
| Carlos | ブラジル<ruby>人<rt>じん</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はみんなやられたよ。<ruby>湿気<rt>しっけ</rt></ruby>がね。<br>*(Người Brazil hồi đầu cũng bị hết. Độ ẩm ấy.)* |
| Phong | <ruby>来<rt>き</rt></ruby><ruby>年<rt>ねん</rt></ruby>からは<ruby>気<rt>き</rt></ruby>をつけような。<ruby>仕事<rt>しごと</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じ。リフトの<ruby>下<rt>した</rt></ruby>は<ruby>40<rt>よんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>超<rt>こ</rt></ruby>えるから。<br>*(Sang năm cẩn thận nhé. Trong work cũng vậy. Dưới lift hơn 40 độ đấy.)* |

---

## Tình huống 9 — Khu 盆踊り · 20:30, vào vòng tròn múa

| Vai | Lời thoại |
|---|---|
| Suzuki | フォン<ruby>君<rt>くん</rt></ruby>たち、<ruby>盆踊<rt>ぼんおど</rt></ruby>り<ruby>参加<rt>さんか</rt></ruby>しよう！<br>*(Phong này, tham gia múa bon đi!)* |
| Phong | <ruby>俺<rt>おれ</rt></ruby>、<ruby>振付<rt>ふりつけ</rt></ruby><ruby>知<rt>し</rt></ruby>らないんですけど…<br>*(Em không biết động tác…)* |
| Suzuki | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>真似<rt>まね</rt></ruby>するだけ。<ruby>盆踊<rt>ぼんおど</rt></ruby>りといえば<ruby>炭坑節<rt>たんこうぶし</rt></ruby>だよ。<br>*(Không sao, bắt chước thôi. Múa bon là phải có tankoubushi.)* |
| Tuấn | <ruby>櫓<rt>やぐら</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>でみんな<ruby>歌<rt>うた</rt></ruby>ってる！<br>*(Trên giàn yagura mọi người đang hát!)* |
| Đức | （<ruby>体<rt>からだ</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かして）<ruby>意外<rt>いがい</rt></ruby>と<ruby>楽<rt>たの</rt></ruby>しい！<br>*(Lắc người. Bất ngờ vui ghê!)* |
| Phong | （<ruby>動画<rt>どうが</rt></ruby>を<ruby>撮<rt>と</rt></ruby>る）これベトナムの<ruby>家族<rt>かぞく</rt></ruby>に<ruby>送<rt>おく</rt></ruby>ろう。<br>*(Quay video. Gửi gia đình Việt Nam đi.)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>もブラジルの<ruby>嫁<rt>よめ</rt></ruby>に<ruby>送<rt>おく</rt></ruby>る！<br>*(Tôi cũng gửi vợ ở Brazil!)* |
| Suzuki | <ruby>日本<rt>にほん</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>といえば<ruby>盆踊<rt>ぼんおど</rt></ruby>りと<ruby>花火<rt>はなび</rt></ruby>と<ruby>蝉<rt>せみ</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>だ。<br>*(Hè Nhật là phải có múa bon, pháo hoa, và tiếng ve.)* |

---

## Tình huống 10 — Bờ sông 庄内川 · 21:00, ngồi xem pháo hoa

| Vai | Lời thoại |
|---|---|
| Tuấn | わー！<ruby>大<rt>おお</rt></ruby>きい！<br>*(Ồ! To quá!)* |
| Đức | <ruby>本物<rt>ほんもの</rt></ruby>の<ruby>花火<rt>はなび</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めて！<br>*(Pháo hoa thật, lần đầu em xem!)* |
| Phong | <ruby>日本<rt>にほん</rt></ruby>の<ruby>花火<rt>はなび</rt></ruby><ruby>師<rt>し</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>は<ruby>世界一<rt>せかいいち</rt></ruby>だよ。<br>*(Kỹ thuật pháo hoa Nhật số 1 thế giới đấy.)* |
| Suzuki | あれ「<ruby>菊<rt>きく</rt></ruby>」っていう<ruby>形<rt>かたち</rt></ruby>。<ruby>名前<rt>なまえ</rt></ruby>があるんだよ、それぞれに。<br>*(Hình đó tên "kiku" — cúc. Mỗi loại có tên đấy.)* |
| Phong | え、<ruby>形<rt>かたち</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>があるんですか？<br>*(Hả, hình có tên ạ?)* |
| Suzuki | うん、<ruby>菊<rt>きく</rt></ruby>、<ruby>牡丹<rt>ぼたん</rt></ruby>、スターマイン、<ruby>柳<rt>やなぎ</rt></ruby>。<ruby>柳<rt>やなぎ</rt></ruby>は<ruby>枝<rt>えだ</rt></ruby>みたいに<ruby>垂<rt>た</rt></ruby>れるやつ。<br>*(Ừm, kiku, botan, starmine, yanagi. Yanagi là loại rủ xuống như cành.)* |
| Carlos | これだ、<ruby>柳<rt>やなぎ</rt></ruby>！<br>*(Đây này, yanagi!)* |
| Đức | フォンさん、<ruby>来年<rt>らいねん</rt></ruby>もみんなで<ruby>来<rt>き</rt></ruby>たいですね。<br>*(Anh Phong, sang năm cũng đến cùng nhau nhé.)* |
| Phong | <ruby>来年<rt>らいねん</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>がSSW1の<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>。<ruby>君<rt>きみ</rt></ruby>たちも<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>来<rt>こ</rt></ruby>よう。<br>*(Sang năm anh năm 2 SSW1. Hai em cũng năm 2. Nhất định đến.)* |

---

## Tình huống 11 — Tàu về Anjo · 22:30, trên tàu nói chuyện với Suzuki

| Vai | Lời thoại |
|---|---|
| Suzuki | フォン<ruby>君<rt>くん</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>の<ruby>面倒<rt>めんどう</rt></ruby>よく<ruby>見<rt>み</rt></ruby>てるね。ドゥック<ruby>君<rt>くん</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>も<ruby>立派<rt>りっぱ</rt></ruby>だった。<br>*(Phong, em chăm 2 kohai tốt nhỉ. Xử lý vụ Đức cũng giỏi.)* |
| Phong | <ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>のお<ruby>盆<rt>ぼん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>もスズキさんに<ruby>救<rt>すく</rt></ruby>われたんですよ。<br>*(お盆 2 năm trước, em cũng được anh Suzuki cứu mà.)* |
| Suzuki | あったなあ。トヨタ<ruby>城<rt>じょう</rt></ruby>の<ruby>花火大会<rt>はなびたいかい</rt></ruby>で<ruby>君<rt>きみ</rt></ruby>が<ruby>倒<rt>たお</rt></ruby>れて、<ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby><ruby>呼<rt>よ</rt></ruby>ぼうかと<ruby>思<rt>おも</rt></ruby>った。<br>*(Có đấy. Pháo hoa lễ Toyota Castle em ngất, tôi định gọi xe cấp cứu.)* |
| Phong | あの<ruby>時<rt>とき</rt></ruby>もOS-1<ruby>買<rt>か</rt></ruby>ってきてくれましたね。<ruby>今<rt>いま</rt></ruby><ruby>俺<rt>おれ</rt></ruby>がドゥック<ruby>君<rt>くん</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことしてる。<br>*(Lúc đó anh cũng mua OS-1. Giờ em làm điều đó cho Đức.)* |
| Suzuki | それが<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>。フォン<ruby>君<rt>くん</rt></ruby>はもう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>先輩<rt>せんぱい</rt></ruby>だ。<br>*(Đó là việc của sempai. Phong giờ là sempai đường hoàng rồi.)* |
| Phong | <ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かりたいです。<br>*(Cấp 2 thợ sửa tháng 10, em quyết tâm đỗ.)* |
| Suzuki | お<ruby>盆<rt>ぼん</rt></ruby><ruby>明<rt>あ</rt></ruby>けから<ruby>俺<rt>おれ</rt></ruby>も<ruby>実技<rt>じつぎ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>に<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>うよ。<br>*(Sau お盆 tôi cũng kèm em luyện thực hành.)* |
| Phong | ありがとうございます！<br>*(Em cảm ơn anh!)* |

---

## Tình huống 12 — Phòng trọ Phong · 23:30, gửi ảnh về VN qua Zalo

*Phong ngồi xem ảnh trong điện thoại trước khi gọi Zalo.*

| Vai | Lời thoại |
|---|---|
| Phong | （<ruby>独<rt>ひと</rt></ruby>り<ruby>言<rt>ごと</rt></ruby>）よし、<ruby>母<rt>はは</rt></ruby>さんに<ruby>送<rt>おく</rt></ruby>る<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ぼう。<br>*(Tự nhủ. Chọn ảnh gửi cho mẹ nào.)* |

---

## Tình huống 13 — Phòng trọ Phong · 23:45, gọi Zalo về Hải Phòng

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Mẹ | Phong ơi, sao gọi muộn thế con? |
| Phong | Mẹ xem ảnh con vừa gửi này — con với mấy đứa em đi 大須夏まつり ở Nagoya. |
| Mẹ | Ôi giời ơi con mặc 浴衣 — yukata — đẹp thế! Như diễn viên Nhật vậy! |
| Phong | (Cười) Tuấn với Đức cũng mặc đấy mẹ. Đức thì mặc xanh đen, Tuấn xanh nước biển vân sóng. |
| Mẹ | Hai đứa ăn được không con? Có quen Nhật không? |
| Phong | Đức bị 熱中症 — say nắng — chiều nay mẹ ạ. Con phải mua OS-1 — dung dịch bù nước — cho uống, làm lạnh cổ với nách. Giờ nó ổn rồi. |
| Mẹ | Trời ơi, sao mặc 浴衣 còn nóng? |
| Phong | Yukata mỏng nhưng obi siết chặt bụng, lại trời 35 độ, thêm 湿気 — độ ẩm — cao. Người Việt mình tưởng chịu nóng nhưng độ ẩm khác mà mẹ. |
| Mẹ | Ừ cẩn thận chứ. Có 花火 — pháo hoa — không con? |
| Phong | Có mẹ, bên bờ sông Shōnaigawa. Đẹp lắm. Anh Suzuki dạy con tên các loại pháo hoa: 菊 — hoa cúc, 牡丹 — mẫu đơn, 柳 — liễu rủ. Pháo hoa Nhật có tên hình thù mẹ ạ. |
| Mẹ | Học được nhiều thứ vui đấy con. |
| Phong | Còn mẹ ơi, Tuấn vớt được 金魚 — cá vàng — ở 屋台 — quầy hàng. Mai con dạy nó nuôi. |
| Mẹ | Đợt này về Tết Tây nhớ mang con cá vàng giống về cho mẹ với. |
| Phong | Con mang đầu cá vàng giấy thôi nhé mẹ. (Cười) |
| Mẹ | Cố gắng nhé con, 10 tháng nữa thi 2 級 thì lo ôn cẩn thận. |
| Phong | Vâng mẹ. お盆 xong là con cắm đầu vào ôn. Anh Suzuki còn hứa kèm thực hành. |
| Mẹ | Ừ, ngủ đi. Yêu con. |
| Phong | Yêu mẹ. |

---

## Đọng lại chương

**Mẫu câu mùa hè:**
- **〜ない？/〜よう** — rủ rê tự nhiên: 「<ruby>夏<rt>なつ</rt></ruby>まつりに<ruby>行<rt>い</rt></ruby>かない？」
- **お直しお願いします** — yêu cầu chỉnh sửa: gấu áo, kích cỡ
- **もう少し安くなりますか** — mặc cả nhẹ ở 屋台
- **〜と言えば〜** — nêu chủ đề điển hình: 「<ruby>盆踊<rt>ぼんおど</rt></ruby>りといえば<ruby>炭坑節<rt>たんこうぶし</rt></ruby>」
- **熱中症気をつけて + 補水液** — kit chăm sóc say nắng: OS-1, đá, làm mát cổ/nách, nới obi
- **左前** — quy tắc mặc kimono/yukata nam (trái lên trên)

> Từ vựng & mẫu câu chương này: <ruby>夏<rt>なつ</rt></ruby>まつり・<ruby>屋台<rt>やたい</rt></ruby>・<ruby>盆踊<rt>ぼんおど</rt></ruby>り・<ruby>花火<rt>はなび</rt></ruby>・<ruby>浴衣<rt>ゆかた</rt></ruby>・<ruby>帯<rt>おび</rt></ruby>・<ruby>下駄<rt>げた</rt></ruby>・<ruby>裾<rt>すそ</rt></ruby>・<ruby>左前<rt>ひだりまえ</rt></ruby>・<ruby>金魚<rt>きんぎょ</rt></ruby>すくい・<ruby>焼<rt>や</rt></ruby>きそば・<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>・<ruby>経口<rt>けいこう</rt></ruby><ruby>補水液<rt>ほすいえき</rt></ruby>・<ruby>麦茶<rt>むぎちゃ</rt></ruby>・<ruby>梅干<rt>うめぼ</rt></ruby>し・<ruby>菊<rt>きく</rt></ruby>・<ruby>柳<rt>やなぎ</rt></ruby>。

## Bí quyết chương

- **Yukata nam = 左前**: trái phủ lên phải, ngược lại là cách mặc người đã mất.
- **Chuẩn bị mùa hè**: chai nước 1L, OS-1 dự phòng, viên muối, mũ, kem chống nắng SPF50.
- **Say nắng 4 bước**: nới đai → làm mát cổ/nách → uống ít một bù điện giải → nghỉ chỗ mát.
- **Mặc cả 屋台**: chỉ "mua nhiều rẻ hơn không" hoặc "đêm muộn còn không", tuyệt đối không trả giá rát như chợ VN.
- **Pháo hoa có tên**: 菊・牡丹・柳・スターマイン — biết tên thì sempai sẽ ấn tượng.
- **Nối truyền sempai → kohai**: Suzuki cứu Phong 2 năm trước, giờ Phong cứu Đức — vòng tròn tử tế.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 夏まつり | なつまつり | HẠ — | lễ hội mùa hè |
| 屋台 | やたい | ỐC ĐÀI | quầy hàng rong |
| 盆踊り | ぼんおどり | BỒN VŨ | múa lễ Obon |
| 花火 | はなび | HOA HOẢ | pháo hoa |
| 入場 | にゅうじょう | NHẬP TRƯỜNG | vào cửa |
| 無料 | むりょう | VÔ LIỆU | miễn phí |
| 浴衣 | ゆかた | DỤC Y | yukata, kimono hè |
| レンタル | — | — | thuê |
| 柄 | がら | BÍNH | hoạ tiết |
| 紺色 | こんいろ | THIỆN SẮC | xanh đen |
| 地味 | じみ | ĐỊA VỊ | giản dị, kín đáo |
| 似合う | にあう | TƯ HỢP | hợp với |
| 帯 | おび | ĐÁI | thắt lưng |
| 結ぶ | むすぶ | KẾT | thắt, buộc |
| 定番 | ていばん | ĐỊNH BẢN | chuẩn, kinh điển |
| 裾 | すそ | CƯ | gấu áo |
| 直し | なおし | TRỰC | chỉnh sửa |
| 身長 | しんちょう | THÂN TRƯỜNG | chiều cao |
| 試す | ためす | THÍ | thử |
| 合わせ | あわせ | HỢP | mép vạt áo |
| 左前 | ひだりまえ | TẢ TIỀN | trái lên trên (mặc kimono) |
| 下駄 | げた | HẠ ĐÀ | guốc gỗ |
| 慣れる | なれる | QUÁN | quen |
| 絆創膏 | ばんそうこう | BẰNG SÁNG CAO | băng cá nhân |
| 鳥居 | とりい | ĐIỂU CƯ | cổng torii |
| 風物詩 | ふうぶつし | PHONG VẬT THI | đặc trưng mùa |
| 焼きそば | やきそば | THIÊU — | mì xào |
| 個数 | こすう | CÁ SỐ | số lượng |
| 値切る | ねぎる | TRỊ — | mặc cả |
| 失礼 | しつれい | THẤT LỄ | bất lịch sự |
| 市場 | いちば | THỊ TRƯỜNG | chợ |
| 金魚すくい | きんぎょすくい | KIM NGƯ — | vớt cá vàng |
| ポイ | — | — | vợt giấy vớt cá |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thử thách |
| 水平 | すいへい | THUỶ BÌNH | nằm ngang |
| 瞬間 | しゅんかん | THUẤN GIAN | khoảnh khắc |
| 勝負 | しょうぶ | THẮNG PHỤ | thắng thua, quyết định |
| 水槽 | すいそう | THUỶ TÀO | bể nuôi cá |
| 飼う | かう | TỰ | nuôi |
| 熱中症 | ねっちゅうしょう | NHIỆT TRUNG CHỨNG | say nắng |
| 経口補水液 | けいこうほすいえき | KINH KHẨU BỔ THUỶ DỊCH | dung dịch bù nước uống |
| 緩める | ゆるめる | HOÃN | nới lỏng |
| 息苦しい | いきぐるしい | TỨC KHỔ | khó thở |
| 迷惑 | めいわく | MÊ HOẶC | làm phiền |
| 湿度 | しつど | THẤP ĐỘ | độ ẩm |
| 湿気 | しっけ | THẤP KHÍ | hơi ẩm |
| 一気に | いっきに | NHẤT KHÍ | một hơi |
| 吐く | はく | THỔ | nôn, ói |
| 脇 | わき | DIỆP | nách |
| 冷やす | ひやす | LÃNH | làm mát |
| 楽 | らく | LẠC | thoải mái |
| 習慣 | しゅうかん | TẬP QUÁN | thói quen |
| 麦茶 | むぎちゃ | MẠCH TRÀ | trà lúa mạch |
| 塩分 | えんぶん | DIÊM PHÂN | muối |
| 梅干し | うめぼし | MAI CAN | ô mai muối |
| 塩タブレット | しおタブレット | DIÊM — | viên muối |
| 振付 | ふりつけ | CHẤN PHÓ | động tác múa |
| 真似 | まね | CHÂN TỰ | bắt chước |
| 炭坑節 | たんこうぶし | THAN KHANH TIẾT | bài múa truyền thống |
| 櫓 | やぐら | LỖ | giàn cao |
| 動画 | どうが | ĐỘNG HOẠ | video |
| 嫁 | よめ | GIÁ | vợ |
| 蝉 | せみ | THIỀN | ve sầu |
| 菊 | きく | CÚC | hoa cúc (kiểu pháo) |
| 牡丹 | ぼたん | MẪU ĐƠN | mẫu đơn (kiểu pháo) |
| 柳 | やなぎ | LIỄU | liễu rủ (kiểu pháo) |
| 救急車 | きゅうきゅうしゃ | CỨU CẤP XA | xe cấp cứu |
| 倒れる | たおれる | ĐẢO | ngã, ngất |
| 実技 | じつぎ | THỰC KỸ | thực hành |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000008, 800000045, NULL, 'markdown_book', 'T08. Thi 整備士 2級 (整備士2級受験)', '# Sách ô tô năm 3 · T08. Thi 整備士 2級 (整備士2級受験)

> **Mục tiêu nhân vật:** Phong (24t, Hải Phòng) — thi **自動車整備士 2級ガソリン** tháng 10/2027. Học các mẫu hội thoại tiếng Nhật quanh kỳ thi quốc gia: hỏi sempai cấu trúc bài thi (〜の<ruby>傾向<rt>けいこう</rt></ruby>は〜), luyện thực hành chẩn đoán (<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>〜), đăng ký dự thi tại 試験会場 (<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>), phỏng vấn giám khảo thực hành (はい・〜<ruby>確認<rt>かくにん</rt></ruby>いたしました), báo kết quả lên 整備士長 (お<ruby>陰<rt>かげ</rt></ruby>さまで<ruby>合格<rt>ごうかく</rt></ruby>), và mẫu câu khiêm tốn nhận chúc mừng.

---

## Bối cảnh

Tháng 9-10/2027. Sau お盆 Phong cắm đầu ôn 整備士 2級 ガソリン — chứng chỉ thợ sửa cấp 2 xăng. Đây là 国家資格 (quốc gia), tỉ lệ đỗ ~40%, gồm **学科** (lý thuyết, 40 câu) và **実技** (thực hành chẩn đoán động cơ). Thi 学科 ngày 12/10 (CN), 実技 sẽ miễn vì Phong đã đỗ 認定試験 do trường nghề garage tổ chức tháng 9. Suzuki kèm thực hành sau giờ làm. Chương này tập trung **mẫu câu kỳ thi quốc gia** + cảm xúc trước/sau kết quả.

---

## Tình huống 1 — Phòng nghỉ garage · 17:30 thứ Hai, Suzuki giải thích cấu trúc thi

| Vai | Lời thoại |
|---|---|
| Phong | スズキさん、<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>傾向<rt>けいこう</rt></ruby>はどうですか？<br>*(Anh Suzuki, đề lý thuyết cấp 2 thợ sửa có khuynh hướng nào ạ?)* |
| Suzuki | エンジン<ruby>基礎<rt>きそ</rt></ruby>、<ruby>電装<rt>でんそう</rt></ruby>、シャシ、<ruby>法規<rt>ほうき</rt></ruby>。<ruby>40<rt>よんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>のうち<ruby>28<rt>にじゅうはち</rt></ruby><ruby>問<rt>もん</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>。<br>*(Cơ bản động cơ, điện, gầm, luật. 40 câu được 28 là đỗ.)* |
| Phong | <ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>70<rt>ななじゅう</rt></ruby>％ですね。<ruby>過去問<rt>かこもん</rt></ruby>はどこで<ruby>手<rt>て</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りますか？<br>*(Ngưỡng đỗ 70%. Đề cũ lấy ở đâu ạ?)* |
| Suzuki | <ruby>日整連<rt>にっせいれん</rt></ruby>の<ruby>公式<rt>こうしき</rt></ruby>サイトでPDFが<ruby>無料<rt>むりょう</rt></ruby>でダウンロードできる。<ruby>過去<rt>かこ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>。<br>*(Trang chính thức Nisseiren tải PDF miễn phí. 5 năm gần nhất.)* |
| Phong | ありがとうございます！<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>受験者<rt>じゅけんしゃ</rt></ruby>の<ruby>合格率<rt>ごうかくりつ</rt></ruby>はどのぐらいですか？<br>*(Em cảm ơn! Tỉ lệ đỗ của thí sinh nước ngoài tầm bao nhiêu?)* |
| Suzuki | <ruby>正直<rt>しょうじき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>割<rt>わり</rt></ruby><ruby>程度<rt>ていど</rt></ruby>と<ruby>聞<rt>き</rt></ruby>く。<ruby>漢字<rt>かんじ</rt></ruby>の<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから。<br>*(Thật lòng nghe khoảng 30%. Vì thuật ngữ chuyên ngành nhiều kanji.)* |
| Phong | フリガナはありますか？<br>*(Có furigana không ạ?)* |
| Suzuki | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>受験者<rt>じゅけんしゃ</rt></ruby><ruby>用<rt>よう</rt></ruby>にフリガナ<ruby>付<rt>つ</rt></ruby>き<ruby>問題用紙<rt>もんだいようし</rt></ruby>が<ruby>申請<rt>しんせい</rt></ruby>できる。<ruby>申込<rt>もうしこ</rt></ruby>みで<ruby>選択<rt>せんたく</rt></ruby>。<br>*(Cho thí sinh nước ngoài có thể xin đề có furigana. Chọn khi đăng ký.)* |
| Phong | あ、それは<ruby>必<rt>かなら</rt></ruby>ず<ruby>申請<rt>しんせい</rt></ruby>します。<br>*(À, em nhất định sẽ xin.)* |

---

## Tình huống 2 — Trung tâm 試験申込 Nagoya · 9:00 thứ Sáu, đăng ký thi

| Vai | Lời thoại |
|---|---|
| Phong | おはようございます。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>ガソリンの<ruby>申込<rt>もうしこ</rt></ruby>みに<ruby>参<rt>まい</rt></ruby>りました。<br>*(Chào buổi sáng. Em đến đăng ký cấp 2 xăng.)* |
| Madoguchi | <ruby>受験申込書<rt>じゅけんもうしこみしょ</rt></ruby>と<ruby>顔写真<rt>かおじゃしん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby>、それから<ruby>在留<rt>ざいりゅう</rt></ruby>カードのコピーをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho xem đơn đăng ký thi, 2 ảnh chân dung, và bản sao thẻ cư trú.)* |
| Phong | こちらでございます。あとフリガナ<ruby>付<rt>つ</rt></ruby>き<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>希望<rt>きぼう</rt></ruby>します。<br>*(Đây ạ. Và em muốn xin đề có furigana.)* |
| Madoguchi | はい、こちらの<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>受験者<rt>じゅけんしゃ</rt></ruby><ruby>申請<rt>しんせい</rt></ruby><ruby>用紙<rt>ようし</rt></ruby>にもご<ruby>記入<rt>きにゅう</rt></ruby>ください。<br>*(Vâng, mời điền thêm vào đơn xin dành cho thí sinh nước ngoài.)* |
| Phong | <ruby>受験料<rt>じゅけんりょう</rt></ruby>はおいくらでしょうか。<br>*(Lệ phí thi bao nhiêu ạ?)* |
| Madoguchi | <ruby>学科<rt>がっか</rt></ruby>のみ<ruby>受験<rt>じゅけん</rt></ruby>でしたら<ruby>5400<rt>ごせんよんひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。お<ruby>支払<rt>しはら</rt></ruby>いは<ruby>現金<rt>げんきん</rt></ruby>のみとなっております。<br>*(Chỉ thi lý thuyết là 5400 yên. Thanh toán chỉ tiền mặt.)* |
| Phong | （<ruby>財布<rt>さいふ</rt></ruby>から）<ruby>5400<rt>ごせんよんひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Lấy ví. Em xin nộp 5400 yên.)* |
| Madoguchi | （<ruby>領収書<rt>りょうしゅうしょ</rt></ruby>と<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<ruby>受験票<rt>じゅけんひょう</rt></ruby>は<ruby>9<rt>く</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>に<ruby>郵送<rt>ゆうそう</rt></ruby>いたします。<ruby>会場<rt>かいじょう</rt></ruby>は<ruby>名古屋<rt>なごや</rt></ruby><ruby>工業<rt>こうぎょう</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>です。<br>*(Đưa biên lai và phiếu báo thi. Phiếu thi sẽ gửi bưu điện cuối tháng 9. Địa điểm: ĐH Công nghệ Nagoya.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>いたしました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em đã rõ. Mong được hỗ trợ.)* |

---

## Tình huống 3 — Phòng học garage · 19:00 thứ Ba, ôn nhóm với Suzuki và Carlos

| Vai | Lời thoại |
|---|---|
| Suzuki | じゃあ<ruby>今日<rt>きょう</rt></ruby>はエンジン<ruby>編<rt>へん</rt></ruby>。フォン<ruby>君<rt>くん</rt></ruby>、ノッキングの<ruby>原因<rt>げんいん</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つ<ruby>挙<rt>あ</rt></ruby>げて。<br>*(Hôm nay phần động cơ. Phong, nêu 3 nguyên nhân kích nổ.)* |
| Phong | はい。<ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>点火時期<rt>てんかじき</rt></ruby>が<ruby>早<rt>はや</rt></ruby>すぎる。<ruby>2<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>燃料<rt>ねんりょう</rt></ruby>のオクタン<ruby>価<rt>か</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>い。<ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>燃焼室<rt>ねんしょうしつ</rt></ruby>にカーボン<ruby>堆積<rt>たいせき</rt></ruby>。<br>*(Vâng. 1, đánh lửa quá sớm. 2, chỉ số octane thấp. 3, tích cacbon buồng đốt.)* |
| Suzuki | <ruby>完璧<rt>かんぺき</rt></ruby>。じゃあカルロス<ruby>君<rt>くん</rt></ruby>、<ruby>圧縮比<rt>あっしゅくひ</rt></ruby>が<ruby>高<rt>たか</rt></ruby>すぎたらどうなる？<br>*(Hoàn hảo. Carlos, tỉ số nén cao quá thì sao?)* |
| Carlos | ノッキングが<ruby>起<rt>お</rt></ruby>こりやすい。あとは<ruby>排気<rt>はいき</rt></ruby>ガスの<ruby>温度<rt>おんど</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がってバルブが<ruby>痛<rt>いた</rt></ruby>む。<br>*(Dễ kích nổ. Còn nhiệt khí thải lên cao làm hỏng van.)* |
| Phong | スズキさん、<ruby>電装<rt>でんそう</rt></ruby><ruby>系<rt>けい</rt></ruby>がいちばん<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(Anh Suzuki, em yếu nhất phần điện.)* |
| Suzuki | <ruby>電装<rt>でんそう</rt></ruby>はオームの<ruby>法則<rt>ほうそく</rt></ruby>と<ruby>回路<rt>かいろ</rt></ruby>の<ruby>並列<rt>へいれつ</rt></ruby>・<ruby>直列<rt>ちょくれつ</rt></ruby>を<ruby>確実<rt>かくじつ</rt></ruby>にすれば<ruby>8<rt>はち</rt></ruby><ruby>割<rt>わり</rt></ruby><ruby>取<rt>と</rt></ruby>れる。<br>*(Điện chắc luật Ohm và nối song/nối tiếp là được 80%.)* |
| Phong | <ruby>並列<rt>へいれつ</rt></ruby>は<ruby>電圧<rt>でんあつ</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じ、<ruby>直列<rt>ちょくれつ</rt></ruby>は<ruby>電流<rt>でんりゅう</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じですね。<br>*(Song song điện áp giống, nối tiếp dòng giống.)* |
| Suzuki | そう。それを<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えてる<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから、フォン<ruby>君<rt>くん</rt></ruby>は<ruby>有利<rt>ゆうり</rt></ruby>だ。<br>*(Đúng. Nhiều người nhớ ngược, Phong có lợi thế.)* |

---

## Tình huống 4 — Xưởng garage · 20:30, luyện thực hành chẩn đoán động cơ

| Vai | Lời thoại |
|---|---|
| Suzuki | じゃ<ruby>実技<rt>じつぎ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>がこの<ruby>古<rt>ふる</rt></ruby>いカローラに<ruby>故障<rt>こしょう</rt></ruby>を<ruby>仕込<rt>しこ</rt></ruby>んだ。<ruby>診断<rt>しんだん</rt></ruby>してみて。<br>*(Vậy thực hành. Tôi gài lỗi Corolla cũ này. Em chẩn đoán đi.)* |
| Phong | （エンジンスタート）あ、アイドリングが<ruby>不安定<rt>ふあんてい</rt></ruby>です。<ruby>回転数<rt>かいてんすう</rt></ruby>がふらついています。<br>*(Khởi động. À, ga ralanti không ổn. Vòng tua lảo đảo.)* |
| Suzuki | どこから<ruby>調<rt>しら</rt></ruby>べる？<br>*(Bắt đầu từ đâu?)* |
| Phong | まず<ruby>診断機<rt>しんだんき</rt></ruby>をつなぎます。OBD2のポート、<ruby>運転席<rt>うんてんせき</rt></ruby><ruby>下<rt>した</rt></ruby>です。<br>*(Trước hết nối máy chẩn đoán. Cổng OBD2 dưới ghế lái.)* |
| Suzuki | OK、<ruby>診断<rt>しんだん</rt></ruby>コードは？<br>*(OK, mã chẩn đoán?)* |
| Phong | P0171…<ruby>燃料<rt>ねんりょう</rt></ruby><ruby>系統<rt>けいとう</rt></ruby><ruby>希薄<rt>きはく</rt></ruby>。<ruby>空気<rt>くうき</rt></ruby><ruby>過多<rt>かた</rt></ruby>か<ruby>燃料<rt>ねんりょう</rt></ruby><ruby>不足<rt>ぶそく</rt></ruby>です。<br>*(P0171… hệ thống xăng nghèo. Quá nhiều khí hoặc thiếu xăng.)* |
| Suzuki | <ruby>原因<rt>げんいん</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>は？<br>*(Nguyên nhân khả năng?)* |
| Phong | <ruby>1<rt>いち</rt></ruby>つ、エアフローセンサーの<ruby>故障<rt>こしょう</rt></ruby>。<ruby>2<rt>に</rt></ruby>つ、インテークマニホールドの<ruby>漏<rt>も</rt></ruby>れ。<ruby>3<rt>さん</rt></ruby>つ、<ruby>燃料<rt>ねんりょう</rt></ruby>ポンプ<ruby>低下<rt>ていか</rt></ruby>。<br>*(1, hỏng cảm biến lưu lượng khí. 2, rò ống nạp. 3, bơm xăng yếu.)* |
| Suzuki | じゃあどう<ruby>絞<rt>しぼ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>む？<br>*(Vậy thu hẹp thế nào?)* |
| Phong | エアフローセンサーを<ruby>外<rt>はず</rt></ruby>して<ruby>抵抗値<rt>ていこうち</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ります。<ruby>規定値<rt>きていち</rt></ruby><ruby>外<rt>がい</rt></ruby>なら<ruby>確定<rt>かくてい</rt></ruby>。<br>*(Tháo cảm biến đo trở kháng. Ngoài giá trị quy định là xác định.)* |
| Suzuki | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>正解<rt>せいかい</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>が<ruby>仕込<rt>しこ</rt></ruby>んだのはエアフローセンサーの<ruby>断線<rt>だんせん</rt></ruby>だ。<br>*(Cười. Đúng. Tôi gài đứt dây cảm biến lưu lượng khí.)* |
| Phong | やった！<br>*(Yes!)* |

---

## Tình huống 5 — Phòng trọ · 22:30 chủ nhật, học một mình, mệt

*Phong gọi LINE Suzuki khi đang đuối.*

| Vai | Lời thoại |
|---|---|
| Phong | スズキさん、すみません<ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>く。<ruby>一<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>いいですか？<br>*(Anh Suzuki, em xin lỗi muộn. Em hỏi một câu được không ạ?)* |
| Suzuki | おう、どうした？<br>*(Ờ, sao thế?)* |
| Phong | <ruby>触媒<rt>しょくばい</rt></ruby>の<ruby>三元<rt>さんげん</rt></ruby><ruby>触媒<rt>しょくばい</rt></ruby>の<ruby>働<rt>はたら</rt></ruby>き、HC・CO・NOxを<ruby>同時<rt>どうじ</rt></ruby>に<ruby>浄化<rt>じょうか</rt></ruby>すると<ruby>習<rt>なら</rt></ruby>いましたが、<ruby>仕組<rt>しく</rt></ruby>みが<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Em học bộ xúc tác 3 chiều xử lý đồng thời HC, CO, NOx, nhưng không hiểu cơ chế.)* |
| Suzuki | いいタイミング。<ruby>酸化<rt>さんか</rt></ruby>と<ruby>還元<rt>かんげん</rt></ruby>が<ruby>同時<rt>どうじ</rt></ruby>に<ruby>起<rt>お</rt></ruby>こる<ruby>狭<rt>せま</rt></ruby>い<ruby>領域<rt>りょういき</rt></ruby>を「ウィンドウ」と<ruby>呼<rt>よ</rt></ruby>ぶ。<ruby>空燃比<rt>くうねんひ</rt></ruby>が<ruby>14.7<rt>じゅうよんてんなな</rt></ruby><ruby>付近<rt>ふきん</rt></ruby>。<br>*(Đúng lúc. Vùng hẹp ô-xy hoá khử xảy ra đồng thời gọi "window". Tỉ lệ không khí-xăng quanh 14.7.)* |
| Phong | あ、なるほど！O2センサーで<ruby>常<rt>つね</rt></ruby>に<ruby>14.7<rt>じゅうよんてんなな</rt></ruby>に<ruby>制御<rt>せいぎょ</rt></ruby>している<ruby>理由<rt>りゆう</rt></ruby>ですね。<br>*(À thì ra! Vì thế cảm biến O2 luôn điều khiển ở 14.7.)* |
| Suzuki | そう。よくつながった。<ruby>過去問<rt>かこもん</rt></ruby>でこの<ruby>分野<rt>ぶんや</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>出<rt>で</rt></ruby>てる。<br>*(Đúng. Em nối tốt. Đề cũ luôn ra phần này.)* |
| Phong | ありがとうございます！もう<ruby>少<rt>すこ</rt></ruby>し<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn anh! Em cố thêm chút.)* |
| Suzuki | <ruby>寝<rt>ね</rt></ruby>るのも<ruby>勉強<rt>べんきょう</rt></ruby>のうちだぞ。<ruby>明日<rt>あした</rt></ruby><ruby>仕事<rt>しごと</rt></ruby>あるから<ruby>12<rt>じゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>までには<ruby>寝<rt>ね</rt></ruby>てね。<br>*(Ngủ cũng là học. Mai đi làm, ngủ trước 12 giờ nhé.)* |
| Phong | はい！<br>*(Vâng!)* |

---

## Tình huống 6 — Phòng nghỉ · 12:00 thứ Tư trước thi 3 ngày, Tuấn và Đức động viên

| Vai | Lời thoại |
|---|---|
| Tuấn | フォンさん、<ruby>日曜日<rt>にちようび</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>ですよね？<br>*(Anh Phong, chủ nhật thi thật rồi nhỉ?)* |
| Phong | うん、ちょっと<ruby>緊張<rt>きんちょう</rt></ruby>してる。<br>*(Ừm, anh hơi căng.)* |
| Đức | <ruby>俺<rt>おれ</rt></ruby>たちもう<ruby>祈<rt>いの</rt></ruby>っています。<br>*(Hai đứa em đã cầu nguyện rồi.)* |
| Tuấn | ベトナム<ruby>人<rt>じん</rt></ruby>で<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>受<rt>う</rt></ruby>かったら<ruby>俺<rt>おれ</rt></ruby>たちの<ruby>希望<rt>きぼう</rt></ruby>です！<br>*(Người Việt đỗ cấp 2 thợ sửa là hi vọng của chúng em!)* |
| Phong | プレッシャーかけるなよ（<ruby>笑<rt>わら</rt></ruby>）<br>*(Đừng tạo áp lực chứ. Cười.)* |
| Đức | フォンさん、<ruby>当日<rt>とうじつ</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby><ruby>寮<rt>りょう</rt></ruby>で<ruby>用意<rt>ようい</rt></ruby>します。<ruby>鶏肉<rt>とりにく</rt></ruby>の<ruby>粥<rt>かゆ</rt></ruby>と<ruby>梅干<rt>うめぼ</rt></ruby>し。<br>*(Anh Phong, sáng ngày thi đồ ăn em chuẩn bị ở ký túc. Cháo gà và ô mai.)* |
| Phong | え、<ruby>本当<rt>ほんとう</rt></ruby>に？ありがとう。お<ruby>腹<rt>なか</rt></ruby><ruby>壊<rt>こわ</rt></ruby>さないものがいいね。<br>*(Hả thật ạ? Cảm ơn em. Đồ không hỏng bụng là tốt.)* |
| Tuấn | フォンさんが<ruby>受<rt>う</rt></ruby>かったら、<ruby>俺<rt>おれ</rt></ruby>たちも<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Anh Phong đỗ thì em sẽ cố thi cấp 3!)* |
| Phong | <ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。まず<ruby>俺<rt>おれ</rt></ruby>がやる。<br>*(Lần lượt cố nhé. Anh làm trước.)* |

---

## Tình huống 7 — Phòng trọ Phong · 6:30 chủ nhật ngày thi

*Đức gửi LINE: "Cháo gà với ô mai đã để trước cửa phòng anh ạ."*

| Vai | Lời thoại |
|---|---|
| Phong | （<ruby>独<rt>ひと</rt></ruby>り<ruby>言<rt>ごと</rt></ruby>）よし、<ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カード、HBの<ruby>鉛筆<rt>えんぴつ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>、<ruby>消<rt>け</rt></ruby>しゴム、<ruby>時計<rt>とけい</rt></ruby>。OK。<br>*(Tự nhủ. Phiếu thi, thẻ cư trú, 3 bút chì HB, gôm, đồng hồ. OK.)* |
| Phong | （<ruby>食<rt>た</rt></ruby>べる）<ruby>粥<rt>かゆ</rt></ruby><ruby>美味<rt>おい</rt></ruby>しい…ドゥック<ruby>君<rt>くん</rt></ruby>ありがとう。<br>*(Ăn. Cháo ngon… cảm ơn Đức.)* |
| Phong | （LINEで<ruby>母<rt>はは</rt></ruby>さんに）「<ruby>会場<rt>かいじょう</rt></ruby>に<ruby>出発<rt>しゅっぱつ</rt></ruby>します」<br>*(Gửi LINE cho mẹ. "Con xuất phát đến điểm thi.")* |

---

## Tình huống 8 — Cổng 名古屋工業大学 · 8:45, gặp thí sinh khác

| Vai | Lời thoại |
|---|---|
| Phong | （<ruby>会場<rt>かいじょう</rt></ruby>マップを<ruby>見<rt>み</rt></ruby>る）<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>号館<rt>ごうかん</rt></ruby>か。<br>*(Xem bản đồ. Phòng số 3 ở toà 2.)* |
| Other | あの、<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>ですか？<br>*(Anh ơi, thi cấp 2 ạ?)* |
| Phong | はい、<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>ガソリンです。<br>*(Vâng, cấp 2 xăng.)* |
| Other | <ruby>同<rt>おな</rt></ruby>じです！<ruby>2<rt>に</rt></ruby><ruby>号館<rt>ごうかん</rt></ruby>はあちらだそうですよ。<br>*(Cùng đấy! Nghe nói toà 2 phía kia.)* |
| Phong | ありがとうございます。お<ruby>互<rt>たが</rt></ruby>いに<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Cảm ơn anh. Cùng cố lên nhé.)* |
| Other | フリガナ<ruby>付<rt>つ</rt></ruby>き<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>されましたか？<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですよね。<br>*(Anh xin đề có furigana chưa? Anh người nước ngoài nhỉ.)* |
| Phong | はい、<ruby>申請<rt>しんせい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Vâng, em xin rồi. Em xuất thân Việt Nam.)* |
| Other | すごい！<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Giỏi quá! Cố lên anh.)* |

---

## Tình huống 9 — Phòng thi · 9:30, vào chỗ, kiểm tra giấy tờ

| Vai | Lời thoại |
|---|---|
| Shikenkan | <ruby>受験<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby><ruby>5847<rt>ごはちよんなな</rt></ruby><ruby>番<rt>ばん</rt></ruby>、ファン・ティ・フォンさん。<br>*(Số báo danh 5847, Phan Thị Phong.)* |
| Phong | （<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる）はい！<br>*(Giơ tay. Vâng!)* |
| Shikenkan | <ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>本人<rt>ほんにん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>をご<ruby>提示<rt>ていじ</rt></ruby>ください。<br>*(Cho xem phiếu thi và giấy tờ tuỳ thân.)* |
| Phong | <ruby>在留<rt>ざいりゅう</rt></ruby>カードでもよろしいでしょうか。<br>*(Thẻ cư trú được không ạ?)* |
| Shikenkan | はい、<ruby>結構<rt>けっこう</rt></ruby>です。（<ruby>確認<rt>かくにん</rt></ruby>）<ruby>確認<rt>かくにん</rt></ruby>いたしました。フリガナ<ruby>付<rt>つ</rt></ruby>き<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>されておりますね。<br>*(Vâng, được. Kiểm tra. Đã xác nhận. Anh xin đề có furigana đúng không.)* |
| Phong | はい、その<ruby>通<rt>とお</rt></ruby>りです。<br>*(Vâng, đúng vậy ạ.)* |
| Shikenkan | こちらの<ruby>問題用紙<rt>もんだいようし</rt></ruby>をお<ruby>使<rt>つか</rt></ruby>いください。<ruby>開始<rt>かいし</rt></ruby><ruby>合図<rt>あいず</rt></ruby>までお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Dùng đề này. Chờ hiệu lệnh bắt đầu.)* |
| Phong | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |

---

## Tình huống 10 — Trong giờ thi · 10:00-12:00, lúc nghỉ giữa, độc thoại ngắn (không trong bảng dialog)

*Phong làm bài 2 tiếng. Câu 1-30 trôi chảy, câu 31-40 phần luật giao thông hơi khó. Phong khoanh đáp án rồi đánh dấu các câu chưa chắc để quay lại. Đến 11:55, kiểm tra tổng thể xong, nộp bài.*

---

## Tình huống 11 — Trước cổng trường · 12:30, gọi điện Suzuki sau thi

| Vai | Lời thoại |
|---|---|
| Phong | スズキさん、<ruby>終<rt>お</rt></ruby>わりました！<br>*(Anh Suzuki, em xong rồi!)* |
| Suzuki | お<ruby>疲<rt>つか</rt></ruby>れさま。どうだった？<br>*(Vất vả rồi. Sao rồi?)* |
| Phong | エンジン<ruby>編<rt>へん</rt></ruby>と<ruby>電装<rt>でんそう</rt></ruby><ruby>編<rt>へん</rt></ruby>は<ruby>自信<rt>じしん</rt></ruby>ある。シャシも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>法規<rt>ほうき</rt></ruby><ruby>編<rt>へん</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>問<rt>もん</rt></ruby>ぐらい<ruby>迷<rt>まよ</rt></ruby>った。<br>*(Phần động cơ với điện em tự tin. Gầm cũng ổn. Phần luật phân vân khoảng 4 câu.)* |
| Suzuki | <ruby>4<rt>よん</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>外<rt>はず</rt></ruby>しても<ruby>36<rt>さんじゅうろく</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>正解<rt>せいかい</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>ラインの<ruby>28<rt>にじゅうはち</rt></ruby><ruby>問<rt>もん</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きく<ruby>超<rt>こ</rt></ruby>えてる。<br>*(Sai 4 câu vẫn 36 đúng. Vượt xa ngưỡng 28.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>ですか？まだドキドキです。<br>*(Thật ạ? Em vẫn hồi hộp.)* |
| Suzuki | <ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>は<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby>だったよね。<ruby>3<rt>さん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>。<br>*(Công bố ngày 5/11 nhỉ. 3 tuần sau.)* |
| Phong | はい、<ruby>3<rt>さん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>長<rt>なが</rt></ruby>そう…<br>*(Vâng, 3 tuần dài quá…)* |
| Suzuki | <ruby>今夜<rt>こんや</rt></ruby><ruby>祝<rt>いわ</rt></ruby>いに<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>こう。<ruby>結果<rt>けっか</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>なく、<ruby>今日<rt>きょう</rt></ruby>まで<ruby>頑張<rt>がんば</rt></ruby>ったんだから。<br>*(Tối nay đi nhậu mừng đi. Kết quả không quan trọng, em cố đến hôm nay là được.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Vâng, em xin ạ!)* |

---

## Tình huống 12 — Garage · 9:00 thứ Tư 5/11, ngày công bố kết quả

*Phong vào trang web 日整連, gõ số báo danh.*

| Vai | Lời thoại |
|---|---|
| Phong | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>受験<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>5847…合格…！<br>*(Nhìn màn hình. Số 5847… đỗ!)* |
| Phong | （<ruby>大声<rt>おおごえ</rt></ruby>）スズキさん！<ruby>受<rt>う</rt></ruby>かりました！<br>*(Lớn tiếng. Anh Suzuki! Em đỗ rồi!)* |
| Suzuki | （<ruby>駆<rt>か</rt></ruby>けてくる）<ruby>本当<rt>ほんとう</rt></ruby>か！おめでとう！<br>*(Chạy tới. Thật à! Chúc mừng!)* |
| Carlos | やったぞ！<br>*(Yes!)* |
| Tuấn | フォンさん<ruby>合格<rt>ごうかく</rt></ruby>！おめでとう！<br>*(Anh Phong đỗ! Chúc mừng!)* |
| Đức | （<ruby>泣<rt>な</rt></ruby>きそう）<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>良<rt>よ</rt></ruby>かったです！<br>*(Suýt khóc. May quá ạ!)* |
| Phong | みんなのおかげです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Nhờ mọi người. Em thực sự cảm ơn.)* |
| Yamada | （<ruby>事務所<rt>じむしょ</rt></ruby>から）フォン<ruby>君<rt>くん</rt></ruby>、おめでとう！<br>*(Từ văn phòng. Phong, chúc mừng!)* |

---

## Tình huống 13 — Phòng 整備士長 · 13:00, báo cáo Yamada chính thức

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>ガソリンの<ruby>合格<rt>ごうかく</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>きました。ご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Xin phép. Hôm nay em đã đỗ cấp 2 thợ sửa xăng. Em xin báo cáo.)* |
| Yamada | おめでとう、フォン<ruby>君<rt>くん</rt></ruby>。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>3<rt>さん</rt></ruby><ruby>人目<rt>にんめ</rt></ruby>だ。<br>*(Chúc mừng Phong. Thợ sửa nước ngoài lấy cấp 2, là người thứ 3 ở công ty này.)* |
| Phong | お<ruby>陰<rt>かげ</rt></ruby>さまで<ruby>合格<rt>ごうかく</rt></ruby>できました。スズキさんに<ruby>毎日<rt>まいにち</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>指導<rt>しどう</rt></ruby>していただきました。<br>*(Nhờ trời em đã đỗ. Anh Suzuki ngày nào cũng kèm em tối.)* |
| Yamada | <ruby>来月<rt>らいげつ</rt></ruby>から<ruby>給与<rt>きゅうよ</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5千<rt>ごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>アップさせていただく。<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>だ。<br>*(Từ tháng sau tăng lương 15 nghìn yên. Phụ cấp chứng chỉ.)* |
| Phong | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか！ありがとうございます！<br>*(Hả thật ạ! Em cảm ơn!)* |
| Yamada | それから、<ruby>来年<rt>らいねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>整備<rt>せいび</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてほしい。<ruby>店<rt>みせ</rt></ruby>の<ruby>主任<rt>しゅにん</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby>として<ruby>育<rt>そだ</rt></ruby>てたい。<br>*(Và tháng 3 năm sau muốn em học khoá chủ nhiệm bảo dưỡng. Tôi muốn đào tạo em làm chủ nhiệm thợ sửa của cửa hàng.)* |
| Phong | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>精<rt>せい</rt></ruby><ruby>一杯<rt>いっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>らせていただきます。<br>*(Lời khen quá lớn so với em. Em xin được cố hết sức.)* |
| Yamada | これからは<ruby>後輩<rt>こうはい</rt></ruby><ruby>育成<rt>いくせい</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ nay nhờ em đào tạo kohai luôn.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng, em đã rõ.)* |

---

## Tình huống 14 — Izakaya 鳥貴族 Anjo · 19:30 thứ Sáu, ăn mừng với cả nhóm

| Vai | Lời thoại |
|---|---|
| Suzuki | （ジョッキを<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる）<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>祝<rt>いわ</rt></ruby>い、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Nâng cốc. Mừng đỗ cấp 2, cạn!)* |
| Mọi người | 乾杯！<br>*(Cạn!)* |
| Carlos | フォン、<ruby>俺<rt>おれ</rt></ruby>より<ruby>早<rt>はや</rt></ruby>く<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取<rt>と</rt></ruby>ったな。<br>*(Phong, lấy cấp 2 trước cả tôi.)* |
| Phong | （<ruby>恐縮<rt>きょうしゅく</rt></ruby>）<ruby>運<rt>うん</rt></ruby>が<ruby>良<rt>よ</rt></ruby>かっただけです。<br>*(Khúm núm. Em chỉ may mắn.)* |
| Suzuki | <ruby>運<rt>うん</rt></ruby>じゃない、<ruby>努力<rt>どりょく</rt></ruby>だ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時<rt>じ</rt></ruby>まで<ruby>勉強<rt>べんきょう</rt></ruby>してたの<ruby>知<rt>し</rt></ruby>ってる。<br>*(Không phải may, là nỗ lực. Tôi biết em học đến 2 giờ sáng.)* |
| Tuấn | フォンさん、<ruby>俺<rt>おれ</rt></ruby>たちにも<ruby>勉強法<rt>べんきょうほう</rt></ruby><ruby>教<rt>おし</rt></ruby>えてください！<br>*(Anh Phong, dạy bọn em phương pháp học!)* |
| Phong | もちろん。<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>より<ruby>優<rt>やさ</rt></ruby>しいから<ruby>2<rt>に</rt></ruby><ruby>年後<rt>ねんご</rt></ruby><ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かる。<br>*(Đương nhiên. Cấp 3 dễ hơn cấp 2, 2 năm nữa hai em nhất định đỗ.)* |
| Đức | <ruby>俺<rt>おれ</rt></ruby>たち、フォンさんみたいになりたいです。<br>*(Bọn em muốn được như anh.)* |
| Phong | お<ruby>互<rt>たが</rt></ruby>いに<ruby>成長<rt>せいちょう</rt></ruby>しよう。<ruby>俺<rt>おれ</rt></ruby>もまだまだ。<ruby>主任<rt>しゅにん</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>が<ruby>来年<rt>らいねん</rt></ruby><ruby>春<rt>はる</rt></ruby>に<ruby>待<rt>ま</rt></ruby>ってる。<br>*(Cùng trưởng thành nhé. Anh cũng còn nhiều thứ. Khoá chủ nhiệm chờ anh xuân sang năm.)* |

---

## Tình huống 15 — Phòng trọ Phong · 23:00, gọi Zalo về Hải Phòng báo tin

> Cảnh tiếng Việt — gọi điện về VN.

| Vai | Lời thoại |
|---|---|
| Mẹ | A lô Phong à, sao gọi muộn thế con? Có chuyện gì? |
| Phong | Mẹ ơi, con đỗ rồi! 整備士 2級 — chứng chỉ thợ sửa cấp 2 — con đỗ rồi mẹ ạ! |
| Mẹ | Ôi giời ơi! Đỗ thật rồi à con! Bố ơi, Phong nó đỗ rồi! |
| Bố | (Xa xa) Đỗ thật à? Trời ơi! |
| Phong | Mẹ, đây là 国家資格 — chứng chỉ quốc gia. Đỗ 70% là đậu, con sai 4 câu trong 40 câu, được 36/40 mẹ ạ. |
| Mẹ | Sao con học giỏi thế! Người Việt mà đỗ chứng chỉ Nhật được không? |
| Phong | Có mẹ, công ty con có 2 người Việt đỗ rồi, con là người thứ 3. 整備士長 — sếp xưởng — Yamada bảo con từ tháng sau tăng lương 15 nghìn yên — khoảng 2.7 triệu Việt mẹ ạ. |
| Mẹ | Trời ơi 2.7 triệu! Con gửi về mẹ giữ thêm nhé. |
| Phong | Vâng mẹ. Còn nữa, ông Yamada muốn cho con đi học 主任者講習 — khoá chủ nhiệm bảo dưỡng — tháng 3 sang năm. Để đào tạo con làm chủ nhiệm thợ sửa của cửa hàng. |
| Bố | (Vào nghe) Phong à, bố tự hào lắm. Hồi đầu sang con kêu khó muốn về, giờ thì… |
| Phong | Vâng bố. Con cám ơn bố mẹ đã không cho con bỏ về. Cả anh Suzuki — sempai sửa xe — kèm con mỗi tối. Tuấn với Đức — hai kohai mới — sáng nay nấu cháo gà với ô mai cho con ăn trước thi. |
| Mẹ | Mọi người tốt với con quá. Khi nào về Tết Tây? |
| Phong | Tết Tây con không về được mẹ ạ, garage cao điểm お正月. Nhưng tháng 5 năm sau con xin nghỉ hè dài, con về thăm. |
| Mẹ | Ừ, giữ sức khoẻ con. Ăn uống đầy đủ. |
| Phong | Vâng mẹ. Yêu bố mẹ. |
| Bố | Yêu con. |

---

## Đọng lại chương

**Mẫu câu kỳ thi quốc gia:**
- **〜の傾向は〜** — hỏi khuynh hướng đề: 「<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>傾向<rt>けいこう</rt></ruby>はどうですか」
- **フリガナ付き問題用紙を申請する** — quyền lợi thí sinh nước ngoài
- **受験票・本人確認書類** — quy trình kiểm tra giấy tờ; 在留カード thay được giấy tờ tuỳ thân
- **故障診断の流れ**: <ruby>診断機<rt>しんだんき</rt></ruby> → <ruby>診断<rt>しんだん</rt></ruby>コード → <ruby>原因<rt>げんいん</rt></ruby><ruby>候補<rt>こうほ</rt></ruby> → <ruby>絞<rt>しぼ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>み → <ruby>確定<rt>かくてい</rt></ruby>
- **お陰さまで合格できました** — báo đỗ khiêm tốn lên cấp trên
- **身に余るお言葉です** — đáp lễ khi được khen / được giao trọng trách

> Từ vựng & mẫu câu chương này: <ruby>傾向<rt>けいこう</rt></ruby>・<ruby>過去問<rt>かこもん</rt></ruby>・<ruby>受験票<rt>じゅけんひょう</rt></ruby>・<ruby>受験料<rt>じゅけんりょう</rt></ruby>・<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>・<ruby>申請<rt>しんせい</rt></ruby>・<ruby>診断機<rt>しんだんき</rt></ruby>・<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>・<ruby>原因<rt>げんいん</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>・<ruby>絞<rt>しぼ</rt></ruby>り<ruby>込<rt>こ</rt></ruby>む・お<ruby>陰<rt>かげ</rt></ruby>さまで・<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>・<ruby>主任<rt>しゅにん</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>。

## Bí quyết chương

- **Furigana付き問題用紙**: quyền cho thí sinh nước ngoài, đăng ký khi nộp đơn. Đừng ngại xin.
- **70% = 28/40**: tính sai an toàn — sai 12 câu vẫn đỗ. Đừng hoảng khi gặp 1-2 câu lạ.
- **OBD2 chẩn đoán**: nối máy → đọc mã (P0xxx) → liệt kê 2-3 nguyên nhân khả năng → đo trở kháng/điện áp → khoanh vùng.
- **空燃比 14.7**: tỉ lệ vàng cho 三元触媒 — ra đề thường xuyên.
- **資格手当**: chứng chỉ → tăng lương cố định mỗi tháng (cấp 2 ガソリン ~15 nghìn yên).
- **Đỗ rồi giữ khiêm tốn**: 「お<ruby>陰<rt>かげ</rt></ruby>さまで」, 「<ruby>運<rt>うん</rt></ruby>が<ruby>良<rt>よ</rt></ruby>かっただけ」 — không khoe khoang.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 整備士 | せいびし | CHỈNH BỊ SĨ | thợ sửa xe (có chứng chỉ) |
| 2級 | にきゅう | NHỊ CẤP | cấp 2 |
| ガソリン | — | — | xăng |
| 学科 | がっか | HỌC KHOA | lý thuyết |
| 実技 | じつぎ | THỰC KỸ | thực hành |
| 傾向 | けいこう | KHUYNH HƯỚNG | khuynh hướng, xu hướng |
| 電装 | でんそう | ĐIỆN TRANG | hệ thống điện |
| シャシ | — | — | gầm xe |
| 法規 | ほうき | PHÁP QUY | luật, quy định |
| 合格 | ごうかく | HỢP CÁCH | đỗ, đậu |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề năm trước |
| 公式 | こうしき | CÔNG THỨC | chính thức |
| 受験者 | じゅけんしゃ | THỤ THÍ GIẢ | thí sinh |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | tỉ lệ đỗ |
| 専門用語 | せんもんようご | CHUYÊN MÔN DỤNG NGỮ | thuật ngữ chuyên ngành |
| フリガナ | — | — | furigana |
| 問題用紙 | もんだいようし | VẤN ĐỀ DỤNG CHỈ | đề thi |
| 申請 | しんせい | THÂN THỈNH | xin, đăng ký |
| 申込み | もうしこみ | THÂN VẬN | đăng ký |
| 受験申込書 | じゅけんもうしこみしょ | THỤ THÍ — THƯ | đơn đăng ký thi |
| 顔写真 | かおじゃしん | NHAN TẢ CHÂN | ảnh chân dung |
| 受験料 | じゅけんりょう | THỤ THÍ LIỆU | lệ phí thi |
| 領収書 | りょうしゅうしょ | LĨNH THU THƯ | biên lai |
| 受験票 | じゅけんひょう | THỤ THÍ PHIẾU | phiếu báo thi |
| 郵送 | ゆうそう | BƯU TỐNG | gửi bưu điện |
| 会場 | かいじょう | HỘI TRƯỜNG | địa điểm thi |
| ノッキング | — | — | kích nổ |
| 点火時期 | てんかじき | ĐIỂM HOẢ THỜI KỲ | thời điểm đánh lửa |
| オクタン価 | オクタンか | — GIÁ | chỉ số octane |
| 燃焼室 | ねんしょうしつ | NHIÊN THIÊU THẤT | buồng đốt |
| 堆積 | たいせき | ĐỐI TÍCH | tích tụ, đóng cặn |
| 圧縮比 | あっしゅくひ | ÁP SÚC TỈ | tỉ số nén |
| 排気 | はいき | BÀI KHÍ | khí thải |
| 苦手 | にがて | KHỔ THỦ | yếu, không thạo |
| 並列 | へいれつ | TỊNH LIỆT | song song |
| 直列 | ちょくれつ | TRỰC LIỆT | nối tiếp |
| 電圧 | でんあつ | ĐIỆN ÁP | điện áp |
| 電流 | でんりゅう | ĐIỆN LƯU | dòng điện |
| 故障 | こしょう | CỐ CHƯỚNG | hỏng hóc |
| 診断 | しんだん | CHẨN ĐOÁN | chẩn đoán |
| 診断機 | しんだんき | CHẨN ĐOÁN CƠ | máy chẩn đoán |
| アイドリング | — | — | ga-ralanti |
| 回転数 | かいてんすう | HỒI CHUYỂN SỐ | số vòng tua |
| 燃料系統 | ねんりょうけいとう | NHIÊN LIỆU HỆ THỐNG | hệ thống nhiên liệu |
| 希薄 | きはく | HI BẠC | nghèo, loãng |
| エアフローセンサー | — | — | cảm biến lưu lượng khí |
| インテークマニホールド | — | — | ống nạp |
| 抵抗値 | ていこうち | ĐỀ KHÁNG TRỊ | giá trị trở kháng |
| 規定値 | きていち | QUY ĐỊNH TRỊ | giá trị quy định |
| 断線 | だんせん | ĐOẠN TUYẾN | đứt dây |
| 触媒 | しょくばい | XÚC MÔI | xúc tác |
| 三元触媒 | さんげんしょくばい | TAM NGUYÊN XÚC MÔI | xúc tác 3 chiều |
| 浄化 | じょうか | TỊNH HOÁ | làm sạch |
| 酸化 | さんか | TOAN HOÁ | ô-xy hoá |
| 還元 | かんげん | HOÀN NGUYÊN | khử |
| 空燃比 | くうねんひ | KHÔNG NHIÊN TỈ | tỉ lệ không khí-nhiên liệu |
| 制御 | せいぎょ | CHẾ NGỰ | điều khiển |
| 本番 | ほんばん | BẢN PHIÊN | thi thật, giờ G |
| 祈る | いのる | KỲ | cầu nguyện |
| 鶏肉 | とりにく | KÊ NHỤC | thịt gà |
| 粥 | かゆ | CHÚC | cháo |
| 鉛筆 | えんぴつ | DUYÊN BÚT | bút chì |
| 開始合図 | かいしあいず | KHAI THỦY HỢP ĐỒ | hiệu lệnh bắt đầu |
| 候補 | こうほ | HẬU BỔ | khả năng, ứng viên |
| 絞り込む | しぼりこむ | TƯU NHẬP | thu hẹp, khoanh vùng |
| 確定 | かくてい | XÁC ĐỊNH | xác định |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | công bố kết quả |
| 取得 | しゅとく | THỦ ĐẮC | đạt được, lấy |
| お陰さまで | おかげさまで | — | nhờ ơn (khiêm) |
| 資格手当 | しかくてあて | TƯ CÁCH THỦ ĐƯƠNG | phụ cấp chứng chỉ |
| 主任者 | しゅにんしゃ | CHỦ NHIỆM GIẢ | người chủ nhiệm |
| 講習 | こうしゅう | GIẢNG TẬP | khoá học |
| 育成 | いくせい | DỤC THÀNH | đào tạo |
| 努力 | どりょく | NỖ LỰC | nỗ lực |
| 運 | うん | VẬN | may mắn |
| 成長 | せいちょう | THÀNH TRƯỞNG | trưởng thành |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000009, 800000045, NULL, 'markdown_book', 'T9. Xử lý bảo hành phức tạp với khách hàng giận (保証対応・クレーム)', '# Sách thực tập sinh ô tô · T9. Xử lý bảo hành phức tạp với khách hàng giận (保証対応・クレーム)

> **Mục tiêu nhân vật:** Phong (24 tuổi, Hải Phòng) — TTS năm 3 tại garage Toyota Aichi, trình độ N3. Học các mẫu hội thoại tiếng Nhật của thợ máy đứng tuyến đầu xử lý bảo hành khó: chào khách giận dữ và nhận giận có trật tự (お叱り受け), hỏi triệu chứng kỹ thuật với khách không chuyên (症状ヒアリング), giải thích phạm vi 保証 trong-ngoài (保証範囲のご説明), xin gia hạn tạm thời chờ xác minh メーカー (お時間を頂戴), từ chối lịch sự khi ngoài bảo hành (誠に申し訳ございませんが), và báo cáo lại 工場長 sau khi tiễn khách (上司への報告).

## Bối cảnh

Ngày 12 tháng 11 năm 2027, garage Toyota Aichi, khu vực Toyota City. Phong đã vào năm 3 TTS, vừa đỗ 自動車整備士 2級 vài tuần trước nên 工場長 Sato giao thử nhiệm vụ tiếp khách trực tiếp tại 受付カウンター — vị trí trước nay chỉ người Nhật làm. Sáng nay khách Takahashi-san đem chiếc Corolla 7 năm tuổi vào, lái nói thẳng "車検出したばかりなのにエンジンから変な音がする" với giọng rất gắt. Chương này tập trung mẫu câu nhận giận của khách, hỏi triệu chứng, giải thích phạm vi bảo hành, và báo cáo cấp trên — kỹ năng keigo đứng tuyến đầu.

---

## Tình huống 1 — Phòng staff garage · 7:45, 工場長 giao việc tiếp khách bảo hành

| Vai | Lời thoại |
|---|---|
| Sato | フォンくん、おはよう。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、おめでとう。<br>*(Phong, chào buổi sáng. Chúc mừng em đỗ 2級.)* |
| Phong | ありがとうございます、<ruby>工場長<rt>こうじょうちょう</rt></ruby>。<br>*(Em cảm ơn trưởng nhà máy.)* |
| Sato | きょうから<ruby>受付<rt>うけつけ</rt></ruby>カウンターに<ruby>立<rt>た</rt></ruby>ってもらう。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>にタカハシ<ruby>様<rt>さま</rt></ruby>がカローラを<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>む。<br>*(Từ hôm nay em đứng quầy lễ tân. 9 giờ Takahashi-sama mang xe Corolla vào.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>いたしました。どのような<ruby>件<rt>けん</rt></ruby>でしょうか？<br>*(Em rõ. Là việc gì ạ?)* |
| Sato | <ruby>先月<rt>せんげつ</rt></ruby><ruby>車検<rt>しゃけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたばかりなのに、エンジンから<ruby>異音<rt>いおん</rt></ruby>がするとお<ruby>怒<rt>おこ</rt></ruby>りの<ruby>様子<rt>ようす</rt></ruby>だ。<br>*(Tháng trước vừa kiểm định mà giờ có tiếng lạ từ máy, khách có vẻ rất giận.)* |
| Phong | エンジンの<ruby>異音<rt>いおん</rt></ruby>ですか…ベルトか、それともピストンか…<br>*(Tiếng lạ từ máy ạ... không biết do dây curoa hay piston...)* |
| Sato | <ruby>診断<rt>しんだん</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>がやる。きみの<ruby>仕事<rt>しごと</rt></ruby>は<ruby>受付<rt>うけつけ</rt></ruby>で<ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>ること。<br>*(Chẩn đoán sau Yamada trưởng thợ làm. Việc em là hỏi triệu chứng cho đúng ở quầy.)* |
| Phong | はい。<ruby>怒<rt>おこ</rt></ruby>っている<ruby>方<rt>かた</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>するのは<ruby>初<rt>はじ</rt></ruby>めてですので、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng. Em lần đầu tiếp khách đang giận, em sẽ cẩn thận.)* |
| Sato | コツは<ruby>三<rt>みっ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>を<ruby>最後<rt>さいご</rt></ruby>まで<ruby>聞<rt>き</rt></ruby>く。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>しない。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>分<rt>わ</rt></ruby>からないことは「<ruby>確認<rt>かくにん</rt></ruby>いたします」と<ruby>言<rt>い</rt></ruby>う。<br>*(Có 3 mẹo. Một, nghe khách đến hết. Hai, không tự ý phán. Ba, không biết thì nói "em sẽ kiểm tra".)* |
| Phong | はい、<ruby>三<rt>みっ</rt></ruby>つ、しっかり<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, 3 điều em ghi nhớ kỹ.)* |

---

## Tình huống 2 — Quầy lễ tân · 8:55, chuẩn bị giấy tờ và 整備記録簿 trước khi khách đến

| Vai | Lời thoại |
|---|---|
| Yamada | フォン、タカハシ<ruby>様<rt>さま</rt></ruby>の<ruby>整備記録簿<rt>せいびきろくぼ</rt></ruby>、これだ。<br>*(Phong, sổ ghi bảo dưỡng của Takahashi-sama đây.)* |
| Phong | ありがとうございます。<ruby>先月<rt>せんげつ</rt></ruby><ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby>に<ruby>車検<rt>しゃけん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>担当<rt>たんとう</rt></ruby>は<ruby>鈴木<rt>すずき</rt></ruby>さんですね。<br>*(Em cảm ơn. 10 tháng trước hoàn tất kiểm định, người phụ trách là Suzuki-san nhỉ.)* |
| Yamada | <ruby>交換<rt>こうかん</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby>は<ruby>4<rt>よっ</rt></ruby>つ：オイル、エレメント、ワイパー、ブレーキパッド<ruby>前後<rt>ぜんご</rt></ruby>。<br>*(Linh kiện thay 4 món: dầu, lọc, gạt mưa, má phanh trước sau.)* |
| Phong | エンジン<ruby>内部<rt>ないぶ</rt></ruby>は<ruby>触<rt>さわ</rt></ruby>っていないんですね。<br>*(Trong động cơ không động vào ạ.)* |
| Yamada | そうだ。だから「<ruby>車検<rt>しゃけん</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>でエンジン<ruby>異音<rt>いおん</rt></ruby>」というのは<ruby>論理的<rt>ろんりてき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと<ruby>難<rt>むずか</rt></ruby>しい。<br>*(Đúng. Vì vậy "kiểm định gây tiếng lạ động cơ" về mặt logic khó xảy ra.)* |
| Phong | でも、お<ruby>客様<rt>きゃくさま</rt></ruby>には<ruby>最初<rt>さいしょ</rt></ruby>からそう<ruby>言<rt>い</rt></ruby>わないほうがいいですよね？<br>*(Nhưng với khách thì không nên nói thẳng từ đầu phải không ạ?)* |
| Yamada | そのとおり。まずはお<ruby>怒<rt>いか</rt></ruby>りを<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>める。<ruby>原因<rt>げんいん</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>は<ruby>診断後<rt>しんだんご</rt></ruby>だ。<br>*(Đúng vậy. Trước hết tiếp nhận sự giận. Chuyện nguyên nhân để sau khi chẩn đoán.)* |

---

## Tình huống 3 — Quầy lễ tân · 9:00, khách đến trong cơn giận (nhận giận đúng cách)

*Cửa kính tự động mở. Takahashi-san — khoảng 55 tuổi, mặc áo khoác, gương mặt căng — bước vào, chìa khoá xe đặt mạnh xuống quầy.*

| Vai | Lời thoại |
|---|---|
| Takahashi | おたく、<ruby>先月<rt>せんげつ</rt></ruby><ruby>車検<rt>しゃけん</rt></ruby><ruby>出<rt>だ</rt></ruby>したばかりなのに、エンジンから<ruby>変<rt>へん</rt></ruby>な<ruby>音<rt>おと</rt></ruby>がするんだよ！どうなってるの？<br>*(Quán anh, vừa đem đi kiểm định tháng trước mà máy ra tiếng lạ! Thế là sao?)* |
| Phong | (cúi 30 độ, giữ 2 giây) タカハシ<ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>来店<rt>らいてん</rt></ruby>ありがとうございます。<ruby>大変<rt>たいへん</rt></ruby>ご<ruby>不快<rt>ふかい</rt></ruby>な<ruby>思<rt>おも</rt></ruby>いをさせてしまい、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Takahashi-sama, hôm nay cảm ơn quý khách đã tới. Việc khiến quý khách thấy khó chịu, em thành thật xin lỗi.)* |
| Takahashi | <ruby>謝<rt>あやま</rt></ruby>ってもらいたいんじゃないんだよ！<ruby>原因<rt>げんいん</rt></ruby>と<ruby>解決策<rt>かいけつさく</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きたいんだ！<br>*(Tôi không cần xin lỗi! Tôi muốn nghe nguyên nhân và cách giải quyết!)* |
| Phong | はい、おっしゃるとおりでございます。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>突<rt>つ</rt></ruby>き<ruby>止<rt>と</rt></ruby>めるため、まず<ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>伺<rt>うかが</rt></ruby>わせてください。<br>*(Vâng, đúng như quý khách nói. Để tìm chính xác nguyên nhân, xin cho em hỏi triệu chứng thật chi tiết.)* |
| Takahashi | (thở mạnh) <ruby>外国人<rt>がいこくじん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>するの？ちゃんと<ruby>理解<rt>りかい</rt></ruby>できるのか？<br>*(Giải thích cho người nước ngoài à? Có hiểu nổi không?)* |
| Phong | (giữ giọng bình tĩnh, không nao núng) はい、<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>資格<rt>しかく</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>しております。ご<ruby>不安<rt>ふあん</rt></ruby>でしたら、<ruby>後<rt>あと</rt></ruby>ほど<ruby>整備士長<rt>せいびしちょう</rt></ruby>も<ruby>同席<rt>どうせき</rt></ruby>させていただきます。<br>*(Vâng, em đã lấy chứng chỉ 2級. Nếu quý khách lo, em sẽ mời trưởng thợ cùng tham gia.)* |
| Takahashi | (lặng vài giây) ...じゃあ<ruby>話<rt>はな</rt></ruby>す。<br>*(...Thôi thì nói.)* |

---

## Tình huống 4 — Quầy lễ tân · 9:05, hỏi triệu chứng có hệ thống (5W1H kỹ thuật)

| Vai | Lời thoại |
|---|---|
| Phong | (đặt sổ giấy, cầm bút) では、<ruby>異音<rt>いおん</rt></ruby>はいつ<ruby>頃<rt>ごろ</rt></ruby>から<ruby>気<rt>き</rt></ruby>になり<ruby>始<rt>はじ</rt></ruby>めましたか？<br>*(Vậy ạ, tiếng lạ bắt đầu từ khi nào quý khách thấy bận tâm?)* |
| Takahashi | <ruby>1<rt>いっ</rt></ruby><ruby>週間前<rt>しゅうかんまえ</rt></ruby>くらいかな。<ruby>朝<rt>あさ</rt></ruby>エンジンをかけたとき、「カラカラ」って<ruby>音<rt>おと</rt></ruby>がする。<br>*(Khoảng một tuần trước. Sáng khởi máy có tiếng "karakara".)* |
| Phong | <ruby>朝<rt>あさ</rt></ruby><ruby>始動時<rt>しどうじ</rt></ruby>のみですか？それとも<ruby>走行中<rt>そうこうちゅう</rt></ruby>も？<br>*(Chỉ lúc khởi máy buổi sáng, hay khi đang chạy cũng có?)* |
| Takahashi | <ruby>始動<rt>しどう</rt></ruby>して<ruby>2<rt>に</rt></ruby>~<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>すると<ruby>消<rt>き</rt></ruby>える。<ruby>走<rt>はし</rt></ruby>っているときは<ruby>気<rt>き</rt></ruby>にならない。<br>*(Khởi máy 2-3 phút thì hết. Lúc chạy không để ý.)* |
| Phong | (ghi chép) <ruby>冷間時<rt>れいかんじ</rt></ruby>のみ、<ruby>暖機後<rt>だんきご</rt></ruby><ruby>消失<rt>しょうしつ</rt></ruby>、ですね。<ruby>音<rt>おと</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>運転席側<rt>うんてんせきがわ</rt></ruby>、<ruby>助手席側<rt>じょしゅせきがわ</rt></ruby>、どちらから<ruby>聞<rt>き</rt></ruby>こえますか？<br>*(Vậy chỉ khi máy lạnh, hâm xong thì hết. Tiếng phát ra từ phía ghế lái hay ghế phụ ạ?)* |
| Takahashi | うーん、<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>あたりかな。ボンネットの<ruby>真下<rt>ました</rt></ruby>から。<br>*(Hừm, chính giữa thì phải. Ngay dưới ca-pô.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>最近<rt>さいきん</rt></ruby>、<ruby>長距離運転<rt>ちょうきょりうんてん</rt></ruby>や<ruby>悪路<rt>あくろ</rt></ruby>を<ruby>走<rt>はし</rt></ruby>られたことはございますか？<br>*(Em rõ. Gần đây quý khách có chạy đường dài hay đường xấu không ạ?)* |
| Takahashi | <ruby>先週<rt>せんしゅう</rt></ruby><ruby>長野<rt>ながの</rt></ruby>まで<ruby>家族<rt>かぞく</rt></ruby><ruby>旅行<rt>りょこう</rt></ruby>で<ruby>往復<rt>おうふく</rt></ruby><ruby>600<rt>ろっぴゃく</rt></ruby>キロ。<ruby>山道<rt>やまみち</rt></ruby>も<ruby>結構<rt>けっこう</rt></ruby>あった。<br>*(Tuần trước đi Nagano cùng gia đình, khứ hồi 600 km. Đường núi cũng nhiều.)* |
| Phong | ありがとうございます。<ruby>大変<rt>たいへん</rt></ruby><ruby>重要<rt>じゅうよう</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>でございます。<br>*(Em cảm ơn. Đây là thông tin rất quan trọng.)* |
| Takahashi | <ruby>関係<rt>かんけい</rt></ruby>あるの？<br>*(Có liên quan à?)* |
| Phong | <ruby>診断<rt>しんだん</rt></ruby>の<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>絞<rt>しぼ</rt></ruby>るために<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>です。<ruby>勝手<rt>かって</rt></ruby>な<ruby>推測<rt>すいそく</rt></ruby>は<ruby>避<rt>さ</rt></ruby>けたいので、これから<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎます。<br>*(Để khoanh vùng chẩn đoán cần thông tin này. Em tránh đoán bừa, nên giờ sẽ chuyển sang trưởng thợ.)* |

---

## Tình huống 5 — Quầy lễ tân · 9:15, giải thích phạm vi 保証 trong/ngoài

| Vai | Lời thoại |
|---|---|
| Takahashi | で、<ruby>修理代<rt>しゅうりだい</rt></ruby>は<ruby>無料<rt>むりょう</rt></ruby>だよね？<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>保証<rt>ほしょう</rt></ruby>があるんだろ？<br>*(Thế phí sửa miễn phí chứ? Có bảo hành kiểm định mà nhỉ?)* |
| Phong | (đặt brochure 保証範囲) こちらが<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>保証<rt>ほしょう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby><ruby>表<rt>ひょう</rt></ruby>でございます。<br>*(Đây là bảng phạm vi bảo hành của bên em.)* |
| Phong | <ruby>車検時<rt>しゃけんじ</rt></ruby>に<ruby>交換<rt>こうかん</rt></ruby>した<ruby>部品<rt>ぶひん</rt></ruby>と、<ruby>整備作業<rt>せいびさぎょう</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>は<ruby>6<rt>ろっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>または<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby>キロまで<ruby>保証<rt>ほしょう</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>です。<br>*(Linh kiện thay khi kiểm định và chỗ thao tác bảo dưỡng được bảo hành 6 tháng hoặc 10.000 km.)* |
| Takahashi | じゃあエンジンも<ruby>入<rt>はい</rt></ruby>るだろ？<br>*(Vậy máy cũng được chứ?)* |
| Phong | <ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>先月<rt>せんげつ</rt></ruby>の<ruby>車検<rt>しゃけん</rt></ruby>では、エンジン<ruby>内部<rt>ないぶ</rt></ruby>の<ruby>整備<rt>せいび</rt></ruby>は<ruby>行<rt>おこな</rt></ruby>っておりません。<br>*(Em thành thật xin lỗi, nhưng kiểm định tháng trước không thao tác trong động cơ.)* |
| Phong | <ruby>交換<rt>こうかん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>はオイル、エレメント、ワイパー、ブレーキパッド<ruby>前後<rt>ぜんご</rt></ruby>の<ruby>4<rt>よん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>のみでございます。<br>*(Chỗ thay chỉ 4 nơi: dầu, lọc, gạt mưa, má phanh trước sau.)* |
| Takahashi | じゃあエンジンの<ruby>音<rt>おと</rt></ruby>は<ruby>保証<rt>ほしょう</rt></ruby><ruby>外<rt>がい</rt></ruby>ってこと？<ruby>納得<rt>なっとく</rt></ruby>いかないな！<br>*(Vậy tiếng máy là ngoài bảo hành à? Tôi không chấp nhận!)* |
| Phong | お<ruby>気持<rt>きも</rt></ruby>ち、よく<ruby>分<rt>わ</rt></ruby>かります。ただ、<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>する<ruby>前<rt>まえ</rt></ruby>に「<ruby>保証外<rt>ほしょうがい</rt></ruby>」と<ruby>決<rt>き</rt></ruby>めつけるわけではございません。<br>*(Em rất hiểu tâm trạng quý khách. Tuy nhiên trước khi rõ nguyên nhân, em không phán "ngoài bảo hành".)* |
| Phong | まずは<ruby>無料<rt>むりょう</rt></ruby>で<ruby>診断<rt>しんだん</rt></ruby>させていただき、<ruby>原因<rt>げんいん</rt></ruby>が<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>に<ruby>関係<rt>かんけい</rt></ruby>している<ruby>場合<rt>ばあい</rt></ruby>は、もちろん<ruby>無料<rt>むりょう</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>いたします。<br>*(Trước hết em chẩn đoán miễn phí, nếu nguyên nhân liên quan đến chỗ bên em thao tác thì đương nhiên xử lý miễn phí.)* |
| Takahashi | (giọng đỡ hơn) ...じゃあまず<ruby>診<rt>み</rt></ruby>てくれ。<br>*(...Thôi thì xem trước đi.)* |

---

## Tình huống 6 — Quầy lễ tân · 9:25, xin gia hạn thời gian và mời nước

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>診断<rt>しんだん</rt></ruby>には<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>半<rt>はん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Chẩn đoán xin cho phép em mất khoảng 1 tiếng rưỡi.)* |
| Takahashi | <ruby>1<rt>いち</rt></ruby><ruby>時間半<rt>じかんはん</rt></ruby>？<ruby>長<rt>なが</rt></ruby>くないか？<br>*(1 tiếng rưỡi? Không lâu quá à?)* |
| Phong | <ruby>始動時<rt>しどうじ</rt></ruby>の<ruby>異音<rt>いおん</rt></ruby>は、エンジンが<ruby>冷<rt>つめ</rt></ruby>たい<ruby>状態<rt>じょうたい</rt></ruby>でないと<ruby>再現<rt>さいげん</rt></ruby>できません。<br>*(Tiếng lạ lúc khởi máy chỉ tái hiện được khi máy lạnh.)* |
| Phong | <ruby>今<rt>いま</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>されたばかりですので、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>冷<rt>ひ</rt></ruby>やしてから<ruby>始動<rt>しどう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>、その<ruby>後<rt>あと</rt></ruby>リフトに<ruby>上<rt>あ</rt></ruby>げて<ruby>下回<rt>したまわ</rt></ruby>り<ruby>確認<rt>かくにん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間半<rt>じかんはん</rt></ruby>でございます。<br>*(Quý khách vừa đến, cần 30 phút để nguội rồi chẩn đoán khởi máy, sau đó nâng lên cầu kiểm tra gầm, tổng 1 tiếng rưỡi.)* |
| Takahashi | (gật đầu) なるほど、<ruby>説明<rt>せつめい</rt></ruby>すれば<ruby>分<rt>わ</rt></ruby>かる。<br>*(Thì ra, giải thích thì hiểu chứ.)* |
| Phong | お<ruby>待<rt>ま</rt></ruby>ちの<ruby>間<rt>あいだ</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>のラウンジでお<ruby>過<rt>す</rt></ruby>ごしいただけます。コーヒーまたは<ruby>日本茶<rt>にほんちゃ</rt></ruby>、どちらがよろしいですか？<br>*(Trong lúc chờ mời quý khách ở phòng chờ tầng 2. Quý khách dùng cà phê hay trà Nhật ạ?)* |
| Takahashi | じゃあ<ruby>日本茶<rt>にほんちゃ</rt></ruby>で。<br>*(Trà Nhật vậy.)* |
| Phong | かしこまりました。Wi-Fiの<ruby>暗証<rt>あんしょう</rt></ruby>はテーブルに<ruby>記載<rt>きさい</rt></ruby>がございます。<ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ごとにご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Em đã rõ. Mật khẩu Wi-Fi có ghi trên bàn. Tiến độ em sẽ báo cáo 30 phút một lần.)* |

---

## Tình huống 7 — Xưởng · 9:35, Phong và Yamada bàn diagnostic plan

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、ヒアリング<ruby>結果<rt>けっか</rt></ruby>です。<ruby>冷間時<rt>れいかんじ</rt></ruby>のカラカラ<ruby>音<rt>おと</rt></ruby>、<ruby>2<rt>に</rt></ruby>~<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>消失<rt>しょうしつ</rt></ruby>、<ruby>長野<rt>ながの</rt></ruby><ruby>往復<rt>おうふく</rt></ruby><ruby>600<rt>ろっぴゃく</rt></ruby>キロ<ruby>後<rt>ご</rt></ruby>から<ruby>発生<rt>はっせい</rt></ruby>。<br>*(Trưởng thợ, kết quả hỏi đây. Tiếng karakara khi máy lạnh, 2-3 phút thì hết, xuất hiện sau khi đi Nagano khứ hồi 600km.)* |
| Yamada | (suy nghĩ) <ruby>典型的<rt>てんけいてき</rt></ruby>な<ruby>症状<rt>しょうじょう</rt></ruby>だな。<ruby>3<rt>みっ</rt></ruby>つの<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>考<rt>かんが</rt></ruby>えられる。<br>*(Triệu chứng điển hình. Có thể 3 khả năng.)* |
| Yamada | <ruby>一<rt>ひと</rt></ruby>つ、タイミングチェーンのテンショナー<ruby>不良<rt>ふりょう</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、ヒートシールドの<ruby>緩<rt>ゆる</rt></ruby>み。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>排気<rt>はいき</rt></ruby><ruby>系<rt>けい</rt></ruby>のフランジ<ruby>劣化<rt>れっか</rt></ruby>。<br>*(Một, hỏng tensioner xích cam. Hai, lỏng tấm chắn nhiệt. Ba, lão hoá mặt bích hệ xả.)* |
| Phong | <ruby>長野<rt>ながの</rt></ruby><ruby>山道<rt>やまみち</rt></ruby><ruby>600<rt>ろっぴゃく</rt></ruby>キロから<ruby>発生<rt>はっせい</rt></ruby>したという<ruby>点<rt>てん</rt></ruby>からすると、ヒートシールドか<ruby>排気系<rt>はいきけい</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>そうですね。<br>*(Vì xuất hiện sau đường núi Nagano 600km, khả năng cao là tấm chắn nhiệt hay hệ xả ạ.)* |
| Yamada | お、よく<ruby>気<rt>き</rt></ruby>づいた。<ruby>山道<rt>やまみち</rt></ruby>の<ruby>振動<rt>しんどう</rt></ruby>でボルトが<ruby>緩<rt>ゆる</rt></ruby>むケースは<ruby>多<rt>おお</rt></ruby>い。<br>*(Ồ, em nhận ra hay đấy. Rung đường núi làm bu-lông lỏng là ca thường gặp.)* |
| Yamada | じゃあ<ruby>順番<rt>じゅんばん</rt></ruby>はこう：①<ruby>冷間始動<rt>れいかんしどう</rt></ruby>で<ruby>音源<rt>おんげん</rt></ruby><ruby>特定<rt>とくてい</rt></ruby>、②リフト<ruby>上<rt>あ</rt></ruby>げてヒートシールド<ruby>目視<rt>もくし</rt></ruby>、③<ruby>排気<rt>はいき</rt></ruby><ruby>系<rt>けい</rt></ruby>ボルト<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めテスト。<br>*(Thứ tự thế này: ①xác định nguồn tiếng khi khởi máy lạnh, ②nâng lên nhìn tấm chắn, ③test siết lại bu-lông hệ xả.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>記録<rt>きろく</rt></ruby>はわたしが<ruby>取<rt>と</rt></ruby>ります。<br>*(Em rõ. Em sẽ ghi chép.)* |

---

## Tình huống 8 — Xưởng dưới cầu · 10:30, phát hiện ヒートシールド lỏng

| Vai | Lời thoại |
|---|---|
| Yamada | (đèn pin chiếu vào tấm chắn nhiệt) フォン、ここ<ruby>見<rt>み</rt></ruby>てみろ。<br>*(Phong, xem chỗ này này.)* |
| Phong | (cúi xuống) あ、ボルトが<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>脱落<rt>だつらく</rt></ruby>していますね。<br>*(A, rơi mất một bu-lông kìa.)* |
| Yamada | <ruby>残<rt>のこ</rt></ruby>り<ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>も<ruby>緩<rt>ゆる</rt></ruby>んでいる。だから<ruby>冷間時<rt>れいかんじ</rt></ruby>に<ruby>排気<rt>はいき</rt></ruby><ruby>熱<rt>ねつ</rt></ruby>で<ruby>膨張<rt>ぼうちょう</rt></ruby>するまでカラカラ<ruby>振動<rt>しんどう</rt></ruby>していたんだ。<br>*(3 cái còn lại cũng lỏng. Nên khi máy lạnh trước khi nhiệt khí xả nở ra, nó rung "karakara".)* |
| Phong | では<ruby>原因<rt>げんいん</rt></ruby><ruby>判明<rt>はんめい</rt></ruby>ですね。これは<ruby>車検整備<rt>しゃけんせいび</rt></ruby>とは<ruby>関係<rt>かんけい</rt></ruby>ないですよね？<br>*(Vậy đã rõ nguyên nhân. Cái này không liên quan kiểm định phải không?)* |
| Yamada | <ruby>関係<rt>かんけい</rt></ruby>ない。ヒートシールドは<ruby>車検<rt>しゃけん</rt></ruby>では<ruby>触<rt>さわ</rt></ruby>らない<ruby>箇所<rt>かしょ</rt></ruby>だ。<ruby>長野<rt>ながの</rt></ruby><ruby>山道<rt>やまみち</rt></ruby>の<ruby>振動<rt>しんどう</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>できる。<br>*(Không liên quan. Tấm chắn nhiệt là chỗ không động đến khi kiểm định. Có thể kết luận rung đường núi Nagano là nguyên nhân.)* |
| Phong | <ruby>修理<rt>しゅうり</rt></ruby><ruby>費用<rt>ひよう</rt></ruby>は<ruby>有償<rt>ゆうしょう</rt></ruby>ですが、ボルト<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>と<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めだけなら<ruby>軽<rt>かる</rt></ruby>めですよね？<br>*(Sửa có tính phí, nhưng nếu chỉ thay 4 bu-lông và siết thì cũng nhẹ thôi nhỉ?)* |
| Yamada | <ruby>部品代<rt>ぶひんだい</rt></ruby><ruby>1,200<rt>せんにひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>工賃<rt>こうちん</rt></ruby><ruby>4,500<rt>よんせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>税抜<rt>ぜいぬ</rt></ruby>き<ruby>合計<rt>ごうけい</rt></ruby><ruby>5,700<rt>ごせんななひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>くらいだろう。<br>*(Phụ tùng 1.200 yên, công 4.500 yên, chưa thuế tổng khoảng 5.700 yên.)* |
| Phong | お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>正<rt>ただ</rt></ruby>しくお<ruby>伝<rt>つた</rt></ruby>えできます。ご<ruby>同席<rt>どうせき</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いできますか？<br>*(Em báo lại khách đúng đắn được. Trưởng thợ tham gia cùng được không ạ?)* |
| Yamada | もちろん。きみが<ruby>主<rt>しゅ</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>補足<rt>ほそく</rt></ruby>だ。<br>*(Đương nhiên. Em chính giải thích, anh bổ sung.)* |

---

## Tình huống 9 — Phòng chờ · 11:00, báo cáo kết quả cho khách kèm hiện vật

| Vai | Lời thoại |
|---|---|
| Phong | (cầm khay có bu-lông lỏng và tấm chắn nhiệt cũ ảnh in) タカハシ<ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>いたしました。<br>*(Takahashi-sama, em xin lỗi đã để đợi. Đã tìm ra nguyên nhân.)* |
| Takahashi | で、<ruby>何<rt>なに</rt></ruby>だったの？<br>*(Thế là gì?)* |
| Phong | (đưa ảnh) こちらがエンジン<ruby>下部<rt>かぶ</rt></ruby>にあるヒートシールドという<ruby>遮熱板<rt>しゃねつばん</rt></ruby>でございます。ボルトが<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>脱落<rt>だつらく</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>緩<rt>ゆる</rt></ruby>みでございました。<br>*(Đây là tấm chắn nhiệt ở phần dưới động cơ. 1 bu-lông rơi, 3 cái lỏng.)* |
| Takahashi | (xem ảnh) 本当だ、<ruby>穴<rt>あな</rt></ruby>が<ruby>見<rt>み</rt></ruby>えるな。<br>*(Đúng thật, thấy lỗ rồi.)* |
| Yamada | タカハシ<ruby>様<rt>さま</rt></ruby>、<ruby>遮熱板<rt>しゃねつばん</rt></ruby>は<ruby>排気<rt>はいき</rt></ruby><ruby>熱<rt>ねつ</rt></ruby>を<ruby>遮<rt>さえぎ</rt></ruby>る<ruby>役割<rt>やくわり</rt></ruby>で、<ruby>車検整備<rt>しゃけんせいび</rt></ruby>では<ruby>取<rt>と</rt></ruby>り<ruby>外<rt>はず</rt></ruby>しません。<ruby>長野<rt>ながの</rt></ruby>の<ruby>山道<rt>やまみち</rt></ruby><ruby>振動<rt>しんどう</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>と<ruby>判断<rt>はんだん</rt></ruby>しております。<br>*(Takahashi-sama, tấm chắn này chắn nhiệt khí xả, kiểm định không tháo. Em kết luận do rung đường núi Nagano.)* |
| Takahashi | (lặng) ...じゃあおたくの<ruby>責任<rt>せきにん</rt></ruby>じゃないってこと？<br>*(...Vậy không phải lỗi quán anh?)* |
| Phong | <ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げにくいのですが、<ruby>車検時<rt>しゃけんじ</rt></ruby>の<ruby>整備内容<rt>せいびないよう</rt></ruby>とは<ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>因果関係<rt>いんがかんけい</rt></ruby>はございません。<br>*(Em thưa rất khó nói, nhưng không có quan hệ nhân quả trực tiếp với nội dung kiểm định.)* |
| Phong | ただ、<ruby>車検時<rt>しゃけんじ</rt></ruby>に<ruby>遮熱板<rt>しゃねつばん</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>みも<ruby>確認<rt>かくにん</rt></ruby>すべきだったというご<ruby>指摘<rt>してき</rt></ruby>でしたら、それは<ruby>我々<rt>われわれ</rt></ruby>の<ruby>点検範囲<rt>てんけんはんい</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げる<ruby>機会<rt>きかい</rt></ruby>として<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>めます。<br>*(Nếu quý khách góp ý lúc kiểm định nên kiểm cả độ lỏng tấm chắn, em xin tiếp thu để mở rộng phạm vi kiểm tra.)* |
| Takahashi | (gật đầu) <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれたのはよかった。それで、いくらかかる？<br>*(Anh nói thẳng cũng được. Vậy hết bao nhiêu?)* |
| Phong | <ruby>部品代<rt>ぶひんだい</rt></ruby>1,200<ruby>円<rt>えん</rt></ruby>、<ruby>工賃<rt>こうちん</rt></ruby>4,500<ruby>円<rt>えん</rt></ruby>、<ruby>税込<rt>ぜいこ</rt></ruby>みで<ruby>合計<rt>ごうけい</rt></ruby>6,270<ruby>円<rt>えん</rt></ruby>でございます。<br>*(Phụ tùng 1.200, công 4.500, gồm thuế tổng 6.270 yên.)* |
| Takahashi | <ruby>意外<rt>いがい</rt></ruby>と<ruby>安<rt>やす</rt></ruby>いな。じゃあやってくれ。<br>*(Rẻ hơn tôi tưởng. Vậy làm đi.)* |

---

## Tình huống 10 — Quầy lễ tân · 11:15, viết phiếu báo giá và lấy chữ ký đồng ý

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>修理<rt>しゅうり</rt></ruby><ruby>同意書<rt>どういしょ</rt></ruby>でございます。ご<ruby>確認<rt>かくにん</rt></ruby>のうえ、<ruby>下<rt>した</rt></ruby>の<ruby>欄<rt>らん</rt></ruby>にご<ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Đây là phiếu đồng ý sửa chữa. Xin quý khách xác nhận và ký vào ô dưới.)* |
| Takahashi | (đọc) <ruby>作業時間<rt>さぎょうじかん</rt></ruby><ruby>約<rt>やく</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>...わかった。<br>*(Thời gian thao tác khoảng 40 phút... được rồi.)* |
| Phong | <ruby>作業<rt>さぎょう</rt></ruby><ruby>完了後<rt>かんりょうご</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby>タカハシ<ruby>様<rt>さま</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>下回<rt>したまわ</rt></ruby>りを<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Sau khi hoàn tất em sẽ cùng quý khách xác nhận lại phần gầm.)* |
| Takahashi | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>られるの？<br>*(Được xem cùng à?)* |
| Phong | はい、リフトの<ruby>下<rt>した</rt></ruby>まで<ruby>降<rt>お</rt></ruby>りていただけますので、<ruby>実際<rt>じっさい</rt></ruby>のボルトの<ruby>位置<rt>いち</rt></ruby>と<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めトルクを<ruby>確<rt>たし</rt></ruby>かめていただけます。<br>*(Vâng, quý khách xuống dưới cầu được, có thể xem trực tiếp vị trí bu-lông và lực siết.)* |
| Takahashi | (ký) タカハシ。<ruby>透明性<rt>とうめいせい</rt></ruby>があっていいね。<br>*(Sato. Minh bạch như thế tốt đấy.)* |
| Phong | ありがとうございます。<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎますので、しばらくラウンジでお<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Em cảm ơn. Em sẽ chuyển sang trưởng thợ, xin mời quý khách đợi tiếp ở phòng chờ.)* |

---

## Tình huống 11 — Khoang sửa · 11:30, Phong phụ Yamada siết bu-lông và ghi トルク

| Vai | Lời thoại |
|---|---|
| Yamada | フォン、トルクレンチ<ruby>持<rt>も</rt></ruby>ってきて。<ruby>規定値<rt>きていち</rt></ruby>は<ruby>20<rt>にじゅう</rt></ruby>ニュートン<ruby>米<rt>メートル</rt></ruby>だ。<br>*(Phong, lấy cờ-lê lực giúp anh. Mức quy định 20 Nm.)* |
| Phong | はい、<ruby>20<rt>にじゅう</rt></ruby>N・mに<ruby>設定<rt>せってい</rt></ruby>します。<br>*(Vâng, em chỉnh sang 20 N·m.)* |
| Yamada | <ruby>新<rt>あたら</rt></ruby>しいボルトは<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>とも<ruby>交換<rt>こうかん</rt></ruby>。<ruby>古<rt>ふる</rt></ruby>いのは<ruby>金属疲労<rt>きんぞくひろう</rt></ruby>がある<ruby>可能性<rt>かのうせい</rt></ruby>。<br>*(Bu-lông mới thay cả 4. Cái cũ có thể đã mỏi kim loại.)* |
| Phong | <ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めの<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>対角線<rt>たいかくせん</rt></ruby><ruby>順<rt>じゅん</rt></ruby>でよろしいでしょうか？<br>*(Thứ tự siết theo đường chéo phải không ạ?)* |
| Yamada | そう、<ruby>対角線<rt>たいかくせん</rt></ruby>で<ruby>均等<rt>きんとう</rt></ruby>に。<ruby>歪<rt>ゆが</rt></ruby>みを<ruby>防<rt>ふせ</rt></ruby>ぐ。<br>*(Đúng, chéo cho đều. Tránh vênh.)* |
| Phong | (siết xong) <ruby>1<rt>いっ</rt></ruby><ruby>本目<rt>ぽんめ</rt></ruby>OK、<ruby>2<rt>に</rt></ruby><ruby>本目<rt>ほんめ</rt></ruby>OK、<ruby>3<rt>さん</rt></ruby><ruby>本目<rt>ぼんめ</rt></ruby>OK、<ruby>4<rt>よん</rt></ruby><ruby>本目<rt>ほんめ</rt></ruby>OK。<ruby>全<rt>すべ</rt></ruby>て<ruby>20<rt>にじゅう</rt></ruby>N・mで<ruby>固定<rt>こてい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Số 1 OK, số 2 OK, số 3 OK, số 4 OK. Tất cả siết đủ 20 Nm.)* |
| Yamada | <ruby>整備記録簿<rt>せいびきろくぼ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れるな。トルク<ruby>値<rt>ち</rt></ruby>と<ruby>使用<rt>しよう</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby>も。<br>*(Đừng quên ghi sổ bảo dưỡng. Cả lực siết và dụng cụ.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>写真<rt>しゃしん</rt></ruby>も<ruby>撮<rt>と</rt></ruby>ってデジタル<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>します。<br>*(Em rõ. Em chụp ảnh để lưu hồ sơ số.)* |

---

## Tình huống 12 — Dưới cầu · 11:50, xác minh chéo với khách (showing the work)

| Vai | Lời thoại |
|---|---|
| Phong | タカハシ<ruby>様<rt>さま</rt></ruby>、ヘルメットをどうぞ。リフトの<ruby>下<rt>した</rt></ruby>までご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Takahashi-sama, mời quý khách mũ bảo hộ. Em đưa quý khách xuống dưới cầu.)* |
| Takahashi | (đội mũ) いやー、お<ruby>客<rt>きゃく</rt></ruby>がここまで<ruby>入<rt>はい</rt></ruby>れるのか。<br>*(Ô, khách vào tận đây được à.)* |
| Phong | <ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>透明性<rt>とうめいせい</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしておりますので。こちらが<ruby>新<rt>あたら</rt></ruby>しく<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けたボルト<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>でございます。<br>*(Bên em coi trọng minh bạch. Đây là 4 bu-lông mới lắp.)* |
| Phong | (chiếu đèn pin) こちらの<ruby>銀色<rt>ぎんいろ</rt></ruby>が<ruby>新品<rt>しんぴん</rt></ruby>、<ruby>横<rt>よこ</rt></ruby>の<ruby>古<rt>ふる</rt></ruby>いボルトと<ruby>比<rt>くら</rt></ruby>べると<ruby>違<rt>ちが</rt></ruby>いがお<ruby>分<rt>わ</rt></ruby>かりになりますか？<br>*(Bạc này là mới, so với bu-lông cũ bên cạnh quý khách thấy khác không ạ?)* |
| Takahashi | (cúi xuống xem) ああ、<ruby>明<rt>あき</rt></ruby>らかに<ruby>新<rt>あたら</rt></ruby>しいな。さびもない。<br>*(À, rõ ràng mới hơn. Không gỉ.)* |
| Phong | トルクは<ruby>規定値<rt>きていち</rt></ruby><ruby>20<rt>にじゅう</rt></ruby>N・mで<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>とも<ruby>均等<rt>きんとう</rt></ruby>に<ruby>締<rt>し</rt></ruby>めております。テスト<ruby>走行<rt>そうこう</rt></ruby>で<ruby>異音<rt>いおん</rt></ruby><ruby>消失<rt>しょうしつ</rt></ruby>も<ruby>確認済<rt>かくにんず</rt></ruby>みでございます。<br>*(Lực siết quy định 20 N·m, cả 4 đều đều. Đã chạy thử, xác nhận hết tiếng lạ.)* |
| Takahashi | (vỗ vai Phong nhẹ) きみ、ベトナム<ruby>人<rt>じん</rt></ruby>だっけ？<ruby>説明<rt>せつめい</rt></ruby>がしっかりしていて<ruby>感心<rt>かんしん</rt></ruby>したよ。<br>*(Em, người Việt nhỉ? Giải thích chắc chắn, anh khâm phục đấy.)* |
| Phong | (cúi đầu) ありがとうございます。お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn quý khách. Em vui vì giúp được.)* |

---

## Tình huống 13 — Quầy lễ tân · 12:00, kết toán và lời chào tiễn khách

| Vai | Lời thoại |
|---|---|
| Phong | タカハシ<ruby>様<rt>さま</rt></ruby>、お<ruby>会計<rt>かいけい</rt></ruby><ruby>6,270<rt>ろくせんにひゃくななじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>でございます。<br>*(Takahashi-sama, tiền 6.270 yên ạ.)* |
| Sato | (đưa thẻ) カードで。<br>*(Bằng thẻ.)* |
| Phong | (thao tác máy POS) ご<ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin quý khách ký vào ạ.)* |
| Phong | (đưa hoá đơn và sổ bảo dưỡng) こちらが<ruby>領収書<rt>りょうしゅうしょ</rt></ruby>と<ruby>整備記録簿<rt>せいびきろくぼ</rt></ruby>でございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業内容<rt>さぎょうないよう</rt></ruby>と<ruby>写真<rt>しゃしん</rt></ruby>が<ruby>記録<rt>きろく</rt></ruby>されております。<br>*(Đây là hoá đơn và sổ bảo dưỡng. Đã ghi nội dung thao tác hôm nay và ảnh chụp.)* |
| Sato | <ruby>写真<rt>しゃしん</rt></ruby>まで？すごいな。<br>*(Cả ảnh à? Hay đấy.)* |
| Phong | <ruby>万一<rt>まんいち</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>症状<rt>しょうじょう</rt></ruby>が<ruby>再発<rt>さいはつ</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>、<ruby>3<rt>さん</rt></ruby>か<ruby>月以内<rt>げついない</rt></ruby>であれば<ruby>無償<rt>むしょう</rt></ruby>で<ruby>再点検<rt>さいてんけん</rt></ruby>いたします。<br>*(Lỡ tái phát triệu chứng, trong 3 tháng em kiểm lại miễn phí.)* |
| Sato | わかった。<ruby>最初<rt>さいしょ</rt></ruby>はキレて<ruby>悪<rt>わる</rt></ruby>かったね。<br>*(Hiểu rồi. Lúc đầu nổi giận, xin lỗi nhé.)* |
| Phong | とんでもございません。お<ruby>客様<rt>きゃくさま</rt></ruby>のご<ruby>不安<rt>ふあん</rt></ruby>は<ruby>当然<rt>とうぜん</rt></ruby>のことでございます。<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>来店<rt>らいてん</rt></ruby>ありがとうございました。<br>*(Không có gì đâu ạ. Quý khách lo lắng là đương nhiên. Hôm nay cảm ơn quý khách đã đến.)* |
| Phong | (cúi 45 độ, đợi xe ra khỏi cổng mới đứng thẳng) お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りくださいませ。<br>*(Xin quý khách về cẩn thận.)* |

---

## Tình huống 14 — Phòng 工場長 · 12:15, báo cáo lên cấp trên theo cấu trúc 結論→経緯→所感

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？タカハシ<ruby>様<rt>さま</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>にまいりました。<br>*(Trưởng nhà máy, em xin phép thời gian được không? Em đến báo cáo việc Takahashi-sama.)* |
| Sato | おう、<ruby>座<rt>すわ</rt></ruby>って。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>聞<rt>き</rt></ruby>こう。<br>*(Ờ, ngồi đi. Nghe kết luận trước.)* |
| Phong | はい。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、ヒートシールドのボルト<ruby>緩<rt>ゆる</rt></ruby>みが<ruby>原因<rt>げんいん</rt></ruby>で、<ruby>有償修理<rt>ゆうしょうしゅうり</rt></ruby><ruby>6,270<rt>ろくせんにひゃくななじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>でご<ruby>納得<rt>なっとく</rt></ruby>いただきました。<br>*(Vâng. Nói kết luận trước, nguyên nhân lỏng bu-lông tấm chắn nhiệt, sửa có tính phí 6.270 yên, khách đồng ý.)* |
| Sato | <ruby>経緯<rt>けいい</rt></ruby>を<ruby>簡潔<rt>かんけつ</rt></ruby>に。<br>*(Diễn biến gọn lại.)* |
| Phong | <ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>来店時<rt>らいてんじ</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>はかなりお<ruby>怒<rt>いか</rt></ruby>りでした。まずお<ruby>気持<rt>きも</rt></ruby>ちをお<ruby>受<rt>う</rt></ruby>けし、<ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>り、<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>と<ruby>診断<rt>しんだん</rt></ruby>、<ruby>長野<rt>ながの</rt></ruby><ruby>山道<rt>やまみち</rt></ruby><ruby>振動<rt>しんどう</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>と<ruby>判明<rt>はんめい</rt></ruby>、<ruby>下回<rt>したまわ</rt></ruby>りにご<ruby>同行<rt>どうこう</rt></ruby>いただき<ruby>説明<rt>せつめい</rt></ruby>、<ruby>納得<rt>なっとく</rt></ruby>いただいてご<ruby>退店<rt>たいてん</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>です。<br>*(9 giờ khách đến, rất giận. Em tiếp nhận tâm trạng, hỏi triệu chứng, chẩn đoán cùng Yamada, kết luận do rung đường núi Nagano, mời khách xuống gầm giải thích, khách đồng ý và ra về lúc 12 giờ.)* |
| Sato | <ruby>所感<rt>しょかん</rt></ruby>は？<br>*(Cảm nghĩ?)* |
| Phong | <ruby>反省点<rt>はんせいてん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>最初<rt>さいしょ</rt></ruby>「<ruby>外国人<rt>がいこくじん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>できるか」と<ruby>言<rt>い</rt></ruby>われた<ruby>際<rt>さい</rt></ruby>、<ruby>感情<rt>かんじょう</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>動<rt>うご</rt></ruby>きました。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>車検時<rt>しゃけんじ</rt></ruby>に<ruby>遮熱板<rt>しゃねつばん</rt></ruby><ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めを<ruby>点検項目<rt>てんけんこうもく</rt></ruby>に<ruby>加<rt>くわ</rt></ruby>えるべきだと<ruby>感<rt>かん</rt></ruby>じました。<br>*(2 điểm tự kiểm. Một, lúc bị nói "người nước ngoài giải thích được không" em xao cảm xúc một chút. Hai, em thấy nên thêm hạng mục siết tấm chắn vào kiểm định.)* |
| Sato | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はよい<ruby>気<rt>き</rt></ruby>づきだ。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>提案<rt>ていあん</rt></ruby>として<ruby>発表<rt>はっぴょう</rt></ruby>してくれ。<br>*(Cái thứ hai là nhận xét hay. Tuần sau briefing sáng em phát biểu đề xuất.)* |
| Phong | はい、しっかり<ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Vâng, em sẽ chuẩn bị chu đáo.)* |
| Sato | あと<ruby>一<rt>ひと</rt></ruby>つ、フォン。きょうのきみの<ruby>対応<rt>たいおう</rt></ruby>、<ruby>日本人<rt>にほんじん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じレベルにできる<ruby>者<rt>もの</rt></ruby>は<ruby>少<rt>すく</rt></ruby>ない。<ruby>誇<rt>ほこ</rt></ruby>っていい。<br>*(Còn một điều, Phong. Cách xử lý hôm nay của em, nhân viên Nhật cũng ít người làm được mức ấy. Em tự hào được.)* |
| Phong | (cúi đầu sâu) ありがとうございます、<ruby>工場長<rt>こうじょうちょう</rt></ruby>。<br>*(Em cảm ơn trưởng nhà máy.)* |

---

## Tình huống 15 — Phòng nghỉ · 13:00, Yamada phân tích case study cho Phong

| Vai | Lời thoại |
|---|---|
| Yamada | (đưa cà phê lon) フォン、お<ruby>疲<rt>つか</rt></ruby>れ。<ruby>初<rt>はじ</rt></ruby>めての<ruby>怒<rt>おこ</rt></ruby>り<ruby>顧客<rt>こきゃく</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>、<ruby>合格点<rt>ごうかくてん</rt></ruby>だ。<br>*(Phong, vất vả. Tiếp khách giận lần đầu, đạt điểm rồi.)* |
| Phong | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しました…<br>*(Em cảm ơn. Em đã hồi hộp...)* |
| Yamada | きみは<ruby>三<rt>みっ</rt></ruby>つ<ruby>正<rt>ただ</rt></ruby>しくできた。<ruby>一<rt>ひと</rt></ruby>つ、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>を<ruby>最後<rt>さいご</rt></ruby>まで<ruby>聞<rt>き</rt></ruby>いた。<br>*(Em làm đúng 3 điều. Một, nghe khách đến hết.)* |
| Phong | はい、<ruby>遮<rt>さえぎ</rt></ruby>らないように<ruby>気<rt>き</rt></ruby>をつけました。<br>*(Vâng, em chú ý không cắt lời.)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>勝手<rt>かって</rt></ruby>に「<ruby>保証外<rt>ほしょうがい</rt></ruby>」と<ruby>言<rt>い</rt></ruby>わずに、<ruby>診断後<rt>しんだんご</rt></ruby>に<ruby>事実<rt>じじつ</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>した。<br>*(Hai, không tự ý nói "ngoài bảo hành", giải thích bằng sự thật sau chẩn đoán.)* |
| Yamada | <ruby>三<rt>みっ</rt></ruby>つ、お<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>下回<rt>したまわ</rt></ruby>りに<ruby>連<rt>つ</rt></ruby>れていって<ruby>実物<rt>じつぶつ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せた。あれが<ruby>決<rt>き</rt></ruby>め<ruby>手<rt>て</rt></ruby>だった。<br>*(Ba, dắt khách xuống gầm cho xem tận mắt. Đó là chìa khoá.)* |
| Phong | お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>納得<rt>なっとく</rt></ruby>される<ruby>瞬間<rt>しゅんかん</rt></ruby>は、<ruby>説明<rt>せつめい</rt></ruby>ではなく「<ruby>見<rt>み</rt></ruby>る」ことなんですね。<br>*(Khoảnh khắc khách chấp nhận không phải lúc giải thích mà lúc "nhìn thấy" nhỉ.)* |
| Yamada | そう。<ruby>整備<rt>せいび</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>は<ruby>専門用語<rt>せんもんようご</rt></ruby>だらけだから、<ruby>視覚化<rt>しかくか</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い<ruby>武器<rt>ぶき</rt></ruby>だ。<br>*(Đúng. Tiếng nghề toàn thuật ngữ, nên trực quan hoá là vũ khí mạnh nhất.)* |
| Phong | <ruby>整備士<rt>せいびし</rt></ruby>は<ruby>手<rt>て</rt></ruby>で<ruby>直<rt>なお</rt></ruby>すだけじゃなくて、<ruby>言葉<rt>ことば</rt></ruby>で<ruby>安心<rt>あんしん</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す<ruby>仕事<rt>しごと</rt></ruby>でもあるんですね。<br>*(Thợ máy không chỉ sửa bằng tay mà còn trao yên tâm bằng lời nói nhỉ.)* |
| Yamada | (cười) <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>整備士<rt>せいびし</rt></ruby>になったな、フォン。<br>*(3 năm em đã thành thợ máy thật sự, Phong.)* |

---

## Tình huống 16 — Ký túc · 21:00, gọi điện về cho bố (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — bố Phong từng làm cơ khí ở Hải Phòng, nay nghỉ hưu. Phong gọi video call kể chuyện ngày đầu đứng quầy.

| Vai | Lời thoại |
|---|---|
| Bố Phong | (VN, video) Phong! Hôm nay sao mặt căng thế con? |
| Phong | (VN) Bố ơi, hôm nay con đứng quầy lễ tân lần đầu. Tiếp một bác Nhật giận lắm, đem xe vào kêu mới kiểm định mà máy ra tiếng lạ. |
| Bố Phong | (VN) Ơ, thế nó tự đến mắng mày à? Khổ thân con. |
| Phong | (VN) Không, ban đầu căng nhưng cuối cùng bác ấy còn vỗ vai con khen. Hoá ra do bu-lông tấm chắn nhiệt lỏng vì bác đi đường núi Nagano 600 cây. |
| Bố Phong | (VN, mắt sáng lên) Heat shield à? Hồi bố làm cơ khí ở cảng cũng hay gặp. Rung lắc mạnh là bu-lông tự lỏng. Loại bolt đó M8 hay M10? |
| Phong | (VN) M8 ạ. Lực siết 20 Niu-tơn mét. Bố vẫn nhớ kỹ ghê. |
| Bố Phong | (VN, cười) 30 năm trong nghề chứ ít à con. Bố tự hào con đứng quầy lễ tân nói tiếng Nhật được. Hồi xưa bố mơ làm việc với người Nhật mà không có cơ hội. |
| Phong | (VN) Bố ơi, hôm nay 工場長 Sato khen con. Bác nói "người Nhật cũng ít người làm được mức này". |
| Bố Phong | (VN, lặng vài giây, mắt đỏ) Phong ơi, bố thấy chuyến bay đưa con sang Nagoya 3 năm trước là đúng nhất rồi. |
| Phong | (VN) Bố ơi, còn 4 tháng nữa con xong TTS. Con đang nghĩ làm SSW1 ở lại đây. Bác Sato đã hỏi. |
| Bố Phong | (VN) Con tính kỹ. Mẹ thì mong con về, nhưng nghề của con đang lên. Quyết định là của con. |
| Phong | (VN) Vâng bố. Con cảm ơn bố hiểu con. Mai con dậy 6 giờ rưỡi, con đi ngủ đây. |
| Bố Phong | (VN) Ngủ ngon. Mai có giận khách nào nữa nhớ kiên nhẫn nhé, đừng cãi tay đôi. |
| Phong | (VN, cười) Vâng bố. Chúc bố mẹ ngủ ngon. |

---

## Đọng lại chương

**Mẫu câu trục chính chương này:**

- **大変ご不快な思いをさせてしまい、誠に申し訳ございません** — Em thành thật xin lỗi đã khiến quý khách khó chịu (nhận giận chuẩn).
- **症状を詳しく伺わせてください** — Xin cho em hỏi chi tiết triệu chứng (mở phỏng vấn kỹ thuật).
- **〜と判断するわけではございません** — Không có nghĩa em phán "..."（giữ trung lập trước chẩn đoán).
- **〜時間を頂戴いたします** — Xin cho phép em mất ... thời gian (xin gia hạn keigo).
- **誠に申し上げにくいのですが** — Em thưa rất khó nói, nhưng... (mở cửa từ chối lịch sự).
- **結論から申し上げますと** — Nói kết luận trước (báo cáo cấp trên).

**Từ vựng & mẫu câu chương này:** 保証範囲・整備記録簿・症状・冷間時・暖機・異音・遮熱板・ヒートシールド・トルク・規定値・対角線順・増し締め・脱落・金属疲労・透明性・お叱り・お時間を頂戴・誠に申し訳ございません・承知いたしました・頂戴いたします・結論から申し上げますと・お役に立てて嬉しいです.

---

## Bí quyết chương

- **Nhận giận trước, giải thích sau**: cúi 30 độ, "誠に申し訳ございません" trước khi nói bất cứ lý lẽ kỹ thuật nào — đừng phòng thủ.
- **Không phán "ngoài bảo hành" trước khi chẩn đoán**: cụm "〜と決めつけるわけではございません" để giữ trung lập, mời khách vào quá trình chẩn đoán.
- **Visualization là vũ khí mạnh nhất**: thuật ngữ kỹ thuật (heat shield, torque, tensioner) khách không hiểu — đưa vật thật, ảnh, mời xuống gầm hiệu quả hơn 10 phút giải thích.
- **Báo cáo cấp trên theo 結論→経緯→所感**: cấp trên Nhật ghét nghe vòng vo, luôn bắt đầu bằng kết quả.
- **Khi bị thử thách bằng "外国人に説明できるか"**: giữ giọng bình tĩnh, đưa fact cụ thể (chứng chỉ 2級, mời sempai cùng) — không tự ái, không co lại.
- **Tự kiểm sau case xong**: ghi 2 điểm cải tiến (phản ứng cảm xúc + đề xuất quy trình) — sempai sẽ đánh giá kohai biết tự nhìn lại.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 保証 | ほしょう | BẢO CHỨNG | bảo hành |
| 範囲 | はんい | PHẠM VI | phạm vi |
| 受付 | うけつけ | THỤ PHÓ | quầy lễ tân |
| カウンター | カウンター | — | quầy |
| 車検 | しゃけん | XA KIỂM | kiểm định xe |
| 異音 | いおん | DỊ ÂM | tiếng lạ |
| 症状 | しょうじょう | CHỨNG TRẠNG | triệu chứng |
| ヒアリング | ヒアリング | — | phỏng vấn lấy thông tin |
| 整備記録簿 | せいびきろくぼ | CHỈNH BỊ KÝ LỤC BẠ | sổ ghi bảo dưỡng |
| 交換 | こうかん | GIAO HOÁN | thay (linh kiện) |
| 部品 | ぶひん | BỘ PHẨM | phụ tùng |
| エレメント | エレメント | — | lọc (dầu/khí) |
| ワイパー | ワイパー | — | gạt mưa |
| ブレーキパッド | ブレーキパッド | — | má phanh |
| お叱り | おしかり | — | sự la mắng (kính ngữ) |
| 受け止める | うけとめる | THỤ CHỈ | tiếp nhận, hứng |
| 不快 | ふかい | BẤT KHOÁI | khó chịu |
| 申し訳ない | もうしわけない | THÂN DỊCH | xin lỗi (trang trọng) |
| 冷間時 | れいかんじ | LÃNH GIAN THỜI | lúc máy lạnh |
| 暖機 | だんき | NOÃN CƠ | hâm máy |
| 始動 | しどう | THUỶ ĐỘNG | khởi động |
| 走行中 | そうこうちゅう | TẨU HÀNH TRUNG | đang chạy |
| ボンネット | ボンネット | — | ca-pô |
| 長距離 | ちょうきょり | TRƯỜNG CỰ LY | đường dài |
| 悪路 | あくろ | ÁC LỘ | đường xấu |
| 山道 | やまみち | SƠN ĐẠO | đường núi |
| 振動 | しんどう | CHẤN ĐỘNG | rung động |
| 推測 | すいそく | THÔI TRẮC | suy đoán |
| 因果関係 | いんがかんけい | NHÂN QUẢ QUAN HỆ | quan hệ nhân quả |
| 遮熱板 | しゃねつばん | GIÁ NHIỆT BẢN | tấm chắn nhiệt |
| ヒートシールド | ヒートシールド | — | heat shield |
| ボルト | ボルト | — | bu-lông |
| 脱落 | だつらく | THOÁT LẠC | rơi rớt |
| 緩み | ゆるみ | HOÃN | sự lỏng |
| 金属疲労 | きんぞくひろう | KIM THUỘC BÌ LAO | mỏi kim loại |
| トルクレンチ | トルクレンチ | — | cờ-lê lực |
| 規定値 | きていち | QUY ĐỊNH TRỊ | giá trị quy định |
| 対角線 | たいかくせん | ĐỐI GIÁC TUYẾN | đường chéo |
| 均等 | きんとう | QUÂN ĐẲNG | đều, cân bằng |
| 増し締め | ましじめ | TĂNG TIỆT | siết bổ sung |
| 歪み | ゆがみ | OAI | sự vênh |
| 診断 | しんだん | CHẨN ĐOÁN | chẩn đoán |
| 判明 | はんめい | PHÁN MINH | làm rõ |
| 工賃 | こうちん | CÔNG NGHIỄM | tiền công |
| 部品代 | ぶひんだい | BỘ PHẨM ĐẠI | phí phụ tùng |
| 税込み | ぜいこみ | THUẾ NHẬP | đã gồm thuế |
| 領収書 | りょうしゅうしょ | LĨNH THU THƯ | hoá đơn |
| 同意書 | どういしょ | ĐỒNG Ý THƯ | giấy đồng ý |
| 署名 | しょめい | THỰ DANH | chữ ký |
| 再点検 | さいてんけん | TÁI ĐIỂM KIỂM | kiểm lại |
| 透明性 | とうめいせい | THẤU MINH TÍNH | minh bạch |
| 視覚化 | しかくか | THỊ GIÁC HOÁ | trực quan hoá |
| 経緯 | けいい | KINH VĨ | diễn biến |
| 所感 | しょかん | SỞ CẢM | cảm nghĩ, nhận xét |
| 反省点 | はんせいてん | PHẢN TỈNH ĐIỂM | điểm tự kiểm |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 朝礼 | ちょうれい | TRIỀU LỄ | briefing sáng |
| 頂戴いたします | ちょうだいいたします | ĐỈNH ĐÁI | em xin nhận (kính ngữ) |
| 承知いたしました | しょうちいたしました | THỪA TRI | em đã rõ (kính ngữ) |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000010, 800000045, NULL, 'markdown_book', 'T10. Khách hàng đặc biệt khó tính — クレーマー対応 keigo', '# Sách thực tập sinh ô tô · T10. Khách hàng đặc biệt khó tính — クレーマー対応 keigo

> **Mục tiêu nhân vật:** Phong (24 tuổi, Hải Phòng) — TTS năm 3 tại garage Toyota Aichi, N3. Học các mẫu hội thoại tiếng Nhật xử lý クレーマー (khách hàng quá khích): chào hỏi mở cuộc với khách lặp lại nhiều ca (ご足労いただきありがとうございます), điều phối khi khách nâng giọng (落ち着いてお話しいただけますか), thẳng thừng lịch sự khi khách yêu cầu vô lý (ご要望には沿いかねます), kéo cấp trên vào đúng lúc (上司に確認のうえ), xác nhận thoả thuận bằng văn bản (書面にて残させていただきます), và viết 始末書 cho nội bộ (始末書の書き方).

## Bối cảnh

Ngày 5 tháng 12 năm 2027, garage Toyota Aichi. Sau case bảo hành Takahashi-san thành công tháng trước, 工場長 Sato giao Phong tiếp tục đứng quầy. Sáng nay khách Kuroda-san — đàn ông khoảng 50 tuổi, đã đến quán 3 lần trong 2 tuần, mỗi lần kêu một triệu chứng khác nhau nhưng chẩn đoán đều không tái hiện. Lần này khách yêu cầu "đổi xe mới hoặc bồi thường 500.000 yên", giọng to giữa phòng chờ. Chương này tập trung mẫu câu xử lý クレーマー theo quy trình ba bậc (hiện trường → trưởng nhóm → trưởng nhà máy), và cách viết 始末書 nội bộ.

---

## Tình huống 1 — Phòng staff · 7:30, briefing sáng về case khó

| Vai | Lời thoại |
|---|---|
| Sato | みんな、おはよう。きょうは<ruby>朝礼<rt>ちょうれい</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>共有<rt>きょうゆう</rt></ruby>がある。<br>*(Mọi người chào buổi sáng. Hôm nay trước briefing có chuyện chia sẻ.)* |
| Sato | クロダ<ruby>様<rt>さま</rt></ruby>、ご<ruby>記憶<rt>きおく</rt></ruby>にありますね？<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>下<ruby>旬<rt>じゅん</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>来店<rt>らいてん</rt></ruby>されている<ruby>方<rt>かた</rt></ruby>です。<br>*(Quý khách Kuroda, mọi người còn nhớ chứ? Là người đã đến 3 lần từ cuối tháng 11.)* |
| Yamada | はい、<ruby>毎回<rt>まいかい</rt></ruby><ruby>違<rt>ちが</rt></ruby>う<ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>主張<rt>しゅちょう</rt></ruby>されますが、<ruby>診断<rt>しんだん</rt></ruby>で<ruby>再現<rt>さいげん</rt></ruby>できないお<ruby>客様<rt>きゃくさま</rt></ruby>ですね。<br>*(Vâng, mỗi lần khẳng định triệu chứng khác nhau nhưng chẩn đoán không tái hiện được.)* |
| Sato | <ruby>昨晩<rt>さくばん</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>から<ruby>電話<rt>でんわ</rt></ruby>があり、「<ruby>新車<rt>しんしゃ</rt></ruby>と<ruby>交換<rt>こうかん</rt></ruby>するか<ruby>500,000<rt>ごじゅうまん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>するか、どちらかを<ruby>求<rt>もと</rt></ruby>める」とのご<ruby>要望<rt>ようぼう</rt></ruby>でした。<br>*(Tối qua có điện thoại từ khách, yêu cầu "đổi xe mới hoặc bồi thường 500.000 yên, chọn một".)* |
| Phong | <ruby>賠償<rt>ばいしょう</rt></ruby><ruby>500,000<rt>ごじゅうまん</rt></ruby><ruby>円<rt>えん</rt></ruby>…<ruby>根拠<rt>こんきょ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Bồi thường 500.000 yên... căn cứ là gì ạ?)* |
| Sato | <ruby>明確<rt>めいかく</rt></ruby>な<ruby>根拠<rt>こんきょ</rt></ruby>はご<ruby>提示<rt>ていじ</rt></ruby>いただけていない。これは<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、クレーマー<ruby>案件<rt>あんけん</rt></ruby>として<ruby>扱<rt>あつか</rt></ruby>う<ruby>段階<rt>だんかい</rt></ruby>だ。<br>*(Khách chưa đưa căn cứ rõ ràng. Thật lòng, đây đến giai đoạn xử lý như案件 クレーマー rồi.)* |
| Sato | <ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>来店<rt>らいてん</rt></ruby><ruby>予約<rt>よやく</rt></ruby>。フォン、<ruby>受付<rt>うけつけ</rt></ruby><ruby>初対応<rt>しょたいおう</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>む。<ruby>山田<rt>やまだ</rt></ruby>と<ruby>私<rt>わたし</rt></ruby>がバックアップする。<br>*(10 giờ khách hẹn đến. Phong, em tiếp đầu tiên ở quầy. Yamada và tôi backup.)* |
| Phong | (lặng vài giây) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em đã rõ.)* |
| Sato | <ruby>三<rt>みっ</rt></ruby>つのルールだ。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>謝罪<rt>しゃざい</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で<ruby>過失<rt>かしつ</rt></ruby>を<ruby>認<rt>みと</rt></ruby>めない。「ご<ruby>不快<rt>ふかい</rt></ruby>な<ruby>思<rt>おも</rt></ruby>いをさせてしまい」までで<ruby>止<rt>と</rt></ruby>める。<br>*(3 quy tắc. Một, tuyệt đối không thừa nhận lỗi qua câu xin lỗi. Dừng ở "khiến quý khách khó chịu".)* |
| Sato | <ruby>二<rt>ふた</rt></ruby>つ、その<ruby>場<rt>ば</rt></ruby>で<ruby>金額<rt>きんがく</rt></ruby>や<ruby>交換<rt>こうかん</rt></ruby>の<ruby>約束<rt>やくそく</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>にしない。「<ruby>確認<rt>かくにん</rt></ruby>のうえお<ruby>返事<rt>へんじ</rt></ruby>いたします」。<br>*(Hai, tuyệt đối không hứa số tiền hay đổi xe tại chỗ. "Em sẽ kiểm tra rồi phản hồi".)* |
| Sato | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>会話<rt>かいわ</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>録音<rt>ろくおん</rt></ruby>。「<ruby>正確<rt>せいかく</rt></ruby>な<ruby>対応<rt>たいおう</rt></ruby>のため<ruby>録音<rt>ろくおん</rt></ruby>させていただきます」と<ruby>事前<rt>じぜん</rt></ruby>に<ruby>告知<rt>こくち</rt></ruby>する。<br>*(Ba, nhất định ghi âm hội thoại. Báo trước "để phản hồi chính xác xin phép em ghi âm".)* |
| Phong | <ruby>3<rt>みっ</rt></ruby>つ、しっかり<ruby>守<rt>まも</rt></ruby>ります。<br>*(3 điều, em giữ chặt.)* |

---

## Tình huống 2 — Phòng staff · 7:55, Yamada dạy Phong các cụm「断る keigo」

| Vai | Lời thoại |
|---|---|
| Yamada | フォン、クレーマー<ruby>対応<rt>たいおう</rt></ruby>でいちばん<ruby>難<rt>むずか</rt></ruby>しいのは「<ruby>断<rt>ことわ</rt></ruby>る<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>」だ。<br>*(Phong, khó nhất xử クレーマー là "cách từ chối".)* |
| Phong | はい、「できません」では<ruby>角<rt>かど</rt></ruby>が<ruby>立<rt>た</rt></ruby>ちますよね。<br>*(Vâng, "không được" thì gãy quá ạ.)* |
| Yamada | そうだ。<ruby>4<rt>よっ</rt></ruby>つの<ruby>形<rt>かたち</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてくれ。<ruby>一<rt>ひと</rt></ruby>つ、「ご<ruby>要望<rt>ようぼう</rt></ruby>には<ruby>沿<rt>そ</rt></ruby>いかねます」。<br>*(Đúng. Nhớ 4 dạng. Một, "không thể đáp ứng yêu cầu của quý khách".)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ、「<ruby>大変<rt>たいへん</rt></ruby><ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>規定<rt>きてい</rt></ruby>により<ruby>対応<rt>たいおう</rt></ruby>いたしかねます」。<br>*(Hai, "Rất ngại nhưng theo quy định bên em em không thể xử lý".)* |
| Yamada | <ruby>三<rt>みっ</rt></ruby>つ、「ご<ruby>提案<rt>ていあん</rt></ruby>はありがたく<ruby>承<rt>うけたまわ</rt></ruby>りますが、お<ruby>受<rt>う</rt></ruby>けすることは<ruby>難<rt>むずか</rt></ruby>しいです」。<br>*(Ba, "Em xin tiếp thu đề xuất của quý khách nhưng khó tiếp nhận".)* |
| Yamada | <ruby>四<rt>よっ</rt></ruby>つ、「ご<ruby>意向<rt>いこう</rt></ruby>は<ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>上司<rt>じょうし</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>のうえ、<ruby>改<rt>あらた</rt></ruby>めてご<ruby>連絡<rt>れんらく</rt></ruby>いたします」。これが<ruby>一番<rt>いちばん</rt></ruby><ruby>便利<rt>べんり</rt></ruby>だ。<br>*(Bốn, "Em đã ghi nhận ý quý khách. Em kiểm tra với cấp trên rồi liên lạc lại". Cái này tiện nhất.)* |
| Phong | <ruby>4<rt>よっ</rt></ruby><ruby>つ目<rt>め</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby>を<ruby>稼<rt>かせ</rt></ruby>げますね。<br>*(Cái thứ 4 câu được thời gian nhỉ.)* |
| Yamada | そう。お<ruby>客様<rt>きゃくさま</rt></ruby>もすぐの<ruby>返事<rt>へんじ</rt></ruby>を<ruby>強要<rt>きょうよう</rt></ruby>しにくくなる。<br>*(Đúng. Khách cũng khó ép trả lời ngay.)* |
| Phong | <ruby>練習<rt>れんしゅう</rt></ruby>してみます。「ご<ruby>意向<rt>いこう</rt></ruby>は<ruby>承<rt>うけたまわ</rt></ruby>りました…」<br>*(Em luyện thử. "Em đã ghi nhận ý quý khách...")* |
| Yamada | もう<ruby>少<rt>すこ</rt></ruby>し<ruby>声<rt>こえ</rt></ruby>を<ruby>低<rt>ひく</rt></ruby>く。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いた<ruby>声<rt>こえ</rt></ruby>はそれだけで<ruby>武器<rt>ぶき</rt></ruby>だ。<br>*(Trầm giọng thêm chút. Giọng điềm tĩnh là vũ khí rồi.)* |

---

## Tình huống 3 — Quầy lễ tân · 10:00, khách đến với giọng cao

*Kuroda-san bước vào, vali đen, không chào, đặt thẳng tay lên quầy.*

| Vai | Lời thoại |
|---|---|
| Kuroda | おたく、<ruby>昨日<rt>きのう</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>した<ruby>件<rt>けん</rt></ruby>、<ruby>返事<rt>へんじ</rt></ruby><ruby>聞<rt>き</rt></ruby>こうか。<br>*(Quán anh, việc tôi gọi hôm qua, nghe câu trả lời đi.)* |
| Phong | (cúi 30 độ) クロダ<ruby>様<rt>さま</rt></ruby>、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>足労<rt>そくろう</rt></ruby>いただきありがとうございます。<br>*(Kuroda-sama, chào buổi sáng. Hôm nay cảm ơn quý khách đã chịu khó đến.)* |
| Phong | <ruby>正確<rt>せいかく</rt></ruby>な<ruby>対応<rt>たいおう</rt></ruby>のため、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会話<rt>かいわ</rt></ruby>は<ruby>録音<rt>ろくおん</rt></ruby>させていただきます。<ruby>了承<rt>りょうしょう</rt></ruby>のうえ、お<ruby>話<rt>はなし</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>わせていただきます。<br>*(Để phản hồi chính xác, em xin phép ghi âm hội thoại hôm nay. Sau khi quý khách đồng ý, em xin nghe.)* |
| Kuroda | <ruby>録音<rt>ろくおん</rt></ruby>？こっちが<ruby>困<rt>こま</rt></ruby>っているのに<ruby>録音<rt>ろくおん</rt></ruby>かよ！<br>*(Ghi âm? Tôi đang khổ mà còn ghi âm à!)* |
| Phong | (giữ giọng trầm) <ruby>双方<rt>そうほう</rt></ruby>の<ruby>権利<rt>けんり</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るための<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>規定<rt>きてい</rt></ruby>でございます。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>発言<rt>はつげん</rt></ruby>も<ruby>正確<rt>せいかく</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>されますので、ご<ruby>不利<rt>ふり</rt></ruby>には<ruby>働<rt>はたら</rt></ruby>きません。<br>*(Đây là quy định bên em để bảo vệ quyền lợi cả hai bên. Lời quý khách cũng được ghi chính xác, không bất lợi cho quý khách.)* |
| Kuroda | (lặng) ...じゃあ<ruby>勝手<rt>かって</rt></ruby>にしろ。<br>*(...Thôi thì tuỳ.)* |
| Phong | ありがとうございます。<ruby>応接室<rt>おうせつしつ</rt></ruby>にご<ruby>案内<rt>あんない</rt></ruby>いたします。お<ruby>飲<rt>の</rt></ruby>み<ruby>物<rt>もの</rt></ruby>はコーヒー、お<ruby>茶<rt>ちゃ</rt></ruby>、どちらがよろしいですか？<br>*(Em cảm ơn. Em mời quý khách sang phòng tiếp khách. Quý khách dùng cà phê hay trà?)* |
| Kuroda | (cau mày) いらない。<ruby>早<rt>はや</rt></ruby>く<ruby>用件<rt>ようけん</rt></ruby>を。<br>*(Không cần. Vào việc nhanh đi.)* |

---

## Tình huống 4 — Phòng tiếp khách · 10:10, khách bắt đầu lớn tiếng và Phong điều chỉnh

| Vai | Lời thoại |
|---|---|
| Kuroda | (đập bàn nhẹ) で、<ruby>新車<rt>しんしゃ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>か<ruby>50<rt>ごじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>か、どっちにする？<br>*(Vậy đổi xe mới hay đền 500.000 yên, chọn cái nào?)* |
| Phong | クロダ<ruby>様<rt>さま</rt></ruby>、ご<ruby>意向<rt>いこう</rt></ruby>は<ruby>昨日<rt>きのう</rt></ruby>のお<ruby>電話<rt>でんわ</rt></ruby>で<ruby>承<rt>うけたまわ</rt></ruby>っております。<br>*(Kuroda-sama, ý quý khách hôm qua qua điện thoại em đã ghi nhận.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>改<rt>あらた</rt></ruby>めて、ご<ruby>主張<rt>しゅちょう</rt></ruby>の<ruby>根拠<rt>こんきょ</rt></ruby>となる<ruby>事実<rt>じじつ</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>させてください。<br>*(Hôm nay xin phép em sắp xếp lại các sự kiện làm căn cứ cho yêu cầu của quý khách.)* |
| Kuroda | <ruby>事実<rt>じじつ</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>？お<ruby>前<rt>まえ</rt></ruby>が<ruby>俺<rt>おれ</rt></ruby>を<ruby>嘘<rt>うそ</rt></ruby>つき<ruby>呼<rt>よ</rt></ruby>ばわりするのか！<br>*(Sự kiện? Mày gọi tao là kẻ nói dối à!)* |
| Phong | (cúi đầu nhẹ, giọng càng trầm hơn) いいえ、<ruby>決<rt>けっ</rt></ruby>してそのような<ruby>意図<rt>いと</rt></ruby>はございません。クロダ<ruby>様<rt>さま</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてお<ruby>話<rt>はな</rt></ruby>しいただけますでしょうか。<br>*(Không, em hoàn toàn không có ý đó. Kuroda-sama, quý khách bình tĩnh nói chuyện được không ạ.)* |
| Phong | <ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>では<ruby>正確<rt>せいかく</rt></ruby>に<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れず、ご<ruby>主張<rt>しゅちょう</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>記録<rt>きろく</rt></ruby>することが<ruby>難<rt>むずか</rt></ruby>しくなります。<br>*(Giọng to em không nghe chính xác được, khó ghi lại đúng yêu cầu của quý khách.)* |
| Kuroda | (lặng vài giây, giọng nhỏ lại) ...<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>日<rt>か</rt></ruby>、おたくで<ruby>整備<rt>せいび</rt></ruby><ruby>受<rt>う</rt></ruby>けた<ruby>後<rt>あと</rt></ruby>、<ruby>翌日<rt>よくじつ</rt></ruby>からハンドルが<ruby>重<rt>おも</rt></ruby>くなった。<br>*(...Ngày 20/11, sau khi bảo dưỡng ở quán anh, hôm sau vô lăng nặng đi.)* |
| Phong | (mở file) <ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>日<rt>か</rt></ruby>のご<ruby>来店<rt>らいてん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>でございます。<ruby>作業内容<rt>さぎょうないよう</rt></ruby>はオイル<ruby>交換<rt>こうかん</rt></ruby>のみです。ハンドル<ruby>系統<rt>けいとう</rt></ruby>には<ruby>触<rt>ふ</rt></ruby>れておりません。<br>*(Đây là hồ sơ đến cửa ngày 20/11. Nội dung thao tác chỉ thay dầu. Không động vào hệ thống vô lăng.)* |
| Kuroda | <ruby>因果<rt>いんが</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>を<ruby>証明<rt>しょうめい</rt></ruby>できるのか？<br>*(Chứng minh được không có liên quan nhân quả à?)* |
| Phong | <ruby>逆<rt>ぎゃく</rt></ruby>に、クロダ<ruby>様<rt>さま</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby>のオイル<ruby>交換<rt>こうかん</rt></ruby>がハンドル<ruby>重<rt>おも</rt></ruby>くなりに<ruby>結<rt>むす</rt></ruby>びついた<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>仕組<rt>しく</rt></ruby>みをご<ruby>説明<rt>せつめい</rt></ruby>いただけますか？<br>*(Ngược lại, Kuroda-sama có thể giải thích cơ chế cụ thể nào nối thay dầu của bên em với vô lăng nặng được không ạ?)* |
| Kuroda | (im) ...<ruby>俺<rt>おれ</rt></ruby>は<ruby>整備士<rt>せいびし</rt></ruby>じゃない！<br>*(...Tôi không phải thợ máy!)* |
| Phong | おっしゃるとおりです。ですので<ruby>当社<rt>とうしゃ</rt></ruby>が<ruby>無償<rt>むしょう</rt></ruby>で<ruby>診断<rt>しんだん</rt></ruby>いたします。<ruby>結果<rt>けっか</rt></ruby><ruby>次第<rt>しだい</rt></ruby>でご<ruby>対応<rt>たいおう</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>いたします。<br>*(Đúng như quý khách nói. Vì thế bên em chẩn đoán miễn phí. Tuỳ kết quả mà cân nhắc xử lý.)* |

---

## Tình huống 5 — Phòng tiếp khách · 10:25, khách đẩy yêu cầu vô lý, Phong từ chối lịch sự

| Vai | Lời thoại |
|---|---|
| Kuroda | <ruby>診断<rt>しんだん</rt></ruby>はもうやっただろう、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>も！<ruby>異常<rt>いじょう</rt></ruby>なしと<ruby>言<rt>い</rt></ruby>うが、<ruby>俺<rt>おれ</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>運転<rt>うんてん</rt></ruby>している。<ruby>俺<rt>おれ</rt></ruby>の<ruby>感覚<rt>かんかく</rt></ruby>を<ruby>否定<rt>ひてい</rt></ruby>するのか！<br>*(Chẩn đoán làm rồi mà, 3 lần! Bảo không bất thường, nhưng tôi lái mỗi ngày. Phủ định cảm giác của tôi à!)* |
| Phong | クロダ<ruby>様<rt>さま</rt></ruby>のご<ruby>感覚<rt>かんかく</rt></ruby>を<ruby>否定<rt>ひてい</rt></ruby>するつもりは<ruby>毛頭<rt>もうとう</rt></ruby>ございません。<br>*(Em hoàn toàn không có ý phủ định cảm giác của Kuroda-sama.)* |
| Phong | しかし、<ruby>新車<rt>しんしゃ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>と<ruby>50<rt>ごじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>のご<ruby>要望<rt>ようぼう</rt></ruby>につきましては、<ruby>誠<rt>まこと</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、ご<ruby>要望<rt>ようぼう</rt></ruby>には<ruby>沿<rt>そ</rt></ruby>いかねます。<br>*(Tuy nhiên về yêu cầu đổi xe mới và bồi thường 500.000 yên, em rất ngại, không thể đáp ứng được.)* |
| Kuroda | <ruby>沿<rt>そ</rt></ruby>いかねるって<ruby>何<rt>なん</rt></ruby>だ！<ruby>誠意<rt>せいい</rt></ruby>がないだろう！<br>*(Không đáp ứng là sao! Không có thành ý!)* |
| Phong | <ruby>当社<rt>とうしゃ</rt></ruby>として<ruby>誠意<rt>せいい</rt></ruby>をもってご<ruby>対応<rt>たいおう</rt></ruby>しております。<br>*(Bên em đang xử lý bằng thành ý.)* |
| Phong | <ruby>1<rt>いち</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>の<ruby>無償<rt>むしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>を<ruby>実施<rt>じっし</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>もご<ruby>足労<rt>そくろう</rt></ruby>に<ruby>対<rt>たい</rt></ruby>して<ruby>応接<rt>おうせつ</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、ご<ruby>主張<rt>しゅちょう</rt></ruby>を<ruby>事実関係<rt>じじつかんけい</rt></ruby>とともに<ruby>整理<rt>せいり</rt></ruby>してご<ruby>提示<rt>ていじ</rt></ruby>。<br>*(1, đã làm chẩn đoán miễn phí 3 lần. 2, hôm nay cũng tiếp quý khách đến tận đây. 3, sắp xếp yêu cầu cùng sự kiện và trình bày.)* |
| Phong | これらは<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>誠意<rt>せいい</rt></ruby>の<ruby>表<rt>あらわ</rt></ruby>れと<ruby>考<rt>かんが</rt></ruby>えております。<ruby>金銭<rt>きんせん</rt></ruby>や<ruby>車両<rt>しゃりょう</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>は<ruby>誠意<rt>せいい</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>でございます。<br>*(Đây là biểu hiện thành ý của bên em. Tiền hay đổi xe là vấn đề khác với thành ý.)* |
| Kuroda | (giọng to lại) お<ruby>前<rt>まえ</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby>のくせに<ruby>俺<rt>おれ</rt></ruby>に<ruby>説教<rt>せっきょう</rt></ruby>するな！<ruby>店長<rt>てんちょう</rt></ruby><ruby>出<rt>だ</rt></ruby>せ！<br>*(Mày, là người nước ngoài mà thuyết giáo tao! Gọi trưởng cửa hàng ra!)* |
| Phong | (giữ giọng đều) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>整備士長<rt>せいびしちょう</rt></ruby>と<ruby>工場長<rt>こうじょうちょう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ばせていただきます。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<br>*(Em đã rõ. Em xin phép gọi trưởng thợ và trưởng nhà máy. Xin quý khách chờ một chút.)* |

---

## Tình huống 6 — Hành lang · 10:30, brief nhanh cho Yamada và Sato trước khi vào

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>状況<rt>じょうきょう</rt></ruby>です。<br>*(Trưởng nhà máy, trưởng thợ, tình hình đây.)* |
| Phong | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>主張<rt>しゅちょう</rt></ruby>：<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>日<rt>か</rt></ruby>のオイル<ruby>交換<rt>こうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>ハンドルが<ruby>重<rt>おも</rt></ruby>い。<ruby>因果関係<rt>いんがかんけい</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>は<ruby>得<rt>え</rt></ruby>られていません。<br>*(Khẳng định của khách: sau thay dầu 20/11 vô lăng nặng. Không có giải thích quan hệ nhân quả.)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>の<ruby>診断結果<rt>しんだんけっか</rt></ruby>：<ruby>異常<rt>いじょう</rt></ruby>なし。お<ruby>客様<rt>きゃくさま</rt></ruby>は「<ruby>外国人<rt>がいこくじん</rt></ruby>に<ruby>説教<rt>せっきょう</rt></ruby>されるな」と<ruby>発言<rt>はつげん</rt></ruby>、<ruby>店長<rt>てんちょう</rt></ruby><ruby>同席<rt>どうせき</rt></ruby>を<ruby>要望<rt>ようぼう</rt></ruby>。<ruby>録音<rt>ろくおん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(3 lần chẩn đoán: không bất thường. Khách nói "đừng thuyết giáo người nước ngoài", yêu cầu trưởng cửa hàng cùng tham gia. Đang ghi âm.)* |
| Sato | フォン、よくやった。<ruby>差別的<rt>さべつてき</rt></ruby><ruby>発言<rt>はつげん</rt></ruby>が<ruby>出<rt>で</rt></ruby>た<ruby>時点<rt>じてん</rt></ruby>で<ruby>会社<rt>かいしゃ</rt></ruby>として<ruby>強<rt>つよ</rt></ruby>く<ruby>出<rt>で</rt></ruby>る<ruby>準備<rt>じゅんび</rt></ruby>はできた。<br>*(Phong, em làm tốt. Phát ngôn phân biệt xuất hiện thì công ty có cớ ra mặt cứng.)* |
| Yamada | きみは<ruby>同席<rt>どうせき</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>ける？それとも<ruby>下<rt>さ</rt></ruby>がる？<br>*(Em tiếp tục cùng hay rút?)* |
| Phong | <ruby>同席<rt>どうせき</rt></ruby>させてください。<ruby>記録<rt>きろく</rt></ruby><ruby>係<rt>がかり</rt></ruby>として<ruby>横<rt>よこ</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>ります。<br>*(Em xin được cùng tham gia. Em ngồi bên cạnh làm thư ký ghi chép.)* |
| Sato | よし。<ruby>主<rt>しゅ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>受<rt>う</rt></ruby>ける。きみは<ruby>記録<rt>きろく</rt></ruby><ruby>係<rt>がかり</rt></ruby>に<ruby>徹<rt>てっ</rt></ruby>する。<br>*(Được. Chính tôi đứng ra. Em làm thư ký tuyệt đối.)* |

---

## Tình huống 7 — Phòng tiếp khách · 10:35, Sato vào với keigo cứng

| Vai | Lời thoại |
|---|---|
| Sato | (cúi đầu, đưa danh thiếp) クロダ<ruby>様<rt>さま</rt></ruby>、<ruby>工場長<rt>こうじょうちょう</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>でございます。お<ruby>待<rt>ま</rt></ruby>たせいたしました。<br>*(Kuroda-sama, tôi là Sato, trưởng nhà máy. Xin lỗi đã để đợi.)* |
| Kuroda | (ngó danh thiếp) で、<ruby>店長<rt>てんちょう</rt></ruby>、<ruby>結論<rt>けつろん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてくれ。<br>*(Vậy trưởng cửa hàng, nghe kết luận đi.)* |
| Sato | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>新車<rt>しんしゃ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>および<ruby>50<rt>ごじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>のご<ruby>要望<rt>ようぼう</rt></ruby>には<ruby>応<rt>おう</rt></ruby>じかねます。<br>*(Tôi xin nói kết luận trước. Bên chúng tôi không thể đáp ứng yêu cầu đổi xe mới và bồi thường 500.000 yên.)* |
| Kuroda | <ruby>何<rt>なん</rt></ruby>だと！<br>*(Cái gì!)* |
| Sato | <ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つでございます。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>の<ruby>診断<rt>しんだん</rt></ruby>で<ruby>異常<rt>いじょう</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>されておりません。<br>*(Có 3 lý do. Một, 3 lần chẩn đoán không phát hiện bất thường.)* |
| Sato | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>整備内容<rt>せいびないよう</rt></ruby>とハンドル<ruby>違和感<rt>いわかん</rt></ruby>の<ruby>因果関係<rt>いんがかんけい</rt></ruby>が<ruby>説明<rt>せつめい</rt></ruby>されておりません。<br>*(Hai, không có giải thích quan hệ nhân quả giữa thao tác bên tôi và cảm giác lạ vô lăng.)* |
| Sato | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>先<rt>さき</rt></ruby>ほどクロダ<ruby>様<rt>さま</rt></ruby>がスタッフのフォンに<ruby>対<rt>たい</rt></ruby>して「<ruby>外国人<rt>がいこくじん</rt></ruby>のくせに」と<ruby>差別的<rt>さべつてき</rt></ruby>な<ruby>発言<rt>はつげん</rt></ruby>をされました。<br>*(Ba, vừa rồi Kuroda-sama có phát ngôn phân biệt với nhân viên Phong: "là người nước ngoài mà".)* |
| Sato | <ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>国籍<rt>こくせき</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わらず<ruby>有資格<rt>ゆうしかく</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby>を<ruby>配置<rt>はいち</rt></ruby>しております。フォンは<ruby>自動車整備士<rt>じどうしゃせいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得者<rt>しゅとくしゃ</rt></ruby>であり、<ruby>日本人<rt>にほんじん</rt></ruby>スタッフと<ruby>同等<rt>どうとう</rt></ruby>の<ruby>権限<rt>けんげん</rt></ruby>がございます。<br>*(Bên tôi bố trí thợ có chứng chỉ không phân biệt quốc tịch. Phong là người có chứng chỉ 2級, có quyền hạn tương đương nhân viên Nhật.)* |
| Sato | この<ruby>発言<rt>はつげん</rt></ruby>は<ruby>録音<rt>ろくおん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>っております。<br>*(Phát ngôn này còn lưu trong ghi âm.)* |
| Kuroda | (sựng người) ...<ruby>差別的<rt>さべつてき</rt></ruby>と<ruby>言<rt>い</rt></ruby>うつもりじゃ…<br>*(...Tôi không có ý phân biệt...)* |
| Sato | クロダ<ruby>様<rt>さま</rt></ruby>のご<ruby>意図<rt>いと</rt></ruby>は<ruby>承<rt>うけたまわ</rt></ruby>りました。しかし<ruby>言葉<rt>ことば</rt></ruby>として<ruby>残<rt>のこ</rt></ruby>った<ruby>事実<rt>じじつ</rt></ruby>は<ruby>変<rt>か</rt></ruby>えられません。<br>*(Em đã ghi nhận ý quý khách. Nhưng sự thật lời nói đã đọng lại không đổi được.)* |

---

## Tình huống 8 — Phòng tiếp khách · 10:50, đề xuất giải pháp có giới hạn (alternative offer)

| Vai | Lời thoại |
|---|---|
| Sato | クロダ<ruby>様<rt>さま</rt></ruby>のご<ruby>不安<rt>ふあん</rt></ruby>を<ruby>解消<rt>かいしょう</rt></ruby>するため、<ruby>当社<rt>とうしゃ</rt></ruby>から<ruby>三<rt>みっ</rt></ruby>つの<ruby>選択肢<rt>せんたくし</rt></ruby>をご<ruby>提案<rt>ていあん</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Để giải toả lo lắng của Kuroda-sama, bên chúng tôi xin đề xuất 3 lựa chọn.)* |
| Sato | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、メーカー<ruby>認定<rt>にんてい</rt></ruby>の<ruby>第三者<rt>だいさんしゃ</rt></ruby><ruby>整備工場<rt>せいびこうじょう</rt></ruby>での<ruby>再診断<rt>さいしんだん</rt></ruby>。<ruby>費用<rt>ひよう</rt></ruby>は<ruby>当社負担<rt>とうしゃふたん</rt></ruby>、<ruby>結果<rt>けっか</rt></ruby>は<ruby>双方<rt>そうほう</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>。<br>*(Một, chẩn đoán lại tại xưởng bảo dưỡng bên thứ ba được hãng chứng nhận. Phí bên tôi chịu, kết quả chia sẻ hai bên.)* |
| Sato | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ハンドル<ruby>系統<rt>けいとう</rt></ruby>の<ruby>無償<rt>むしょう</rt></ruby><ruby>点検整備<rt>てんけんせいび</rt></ruby>と<ruby>代車<rt>だいしゃ</rt></ruby><ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>ご<ruby>提供<rt>ていきょう</rt></ruby>。<br>*(Hai, kiểm tra-bảo dưỡng hệ thống vô lăng miễn phí, cung cấp xe thay thế 3 ngày miễn phí.)* |
| Sato | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>納得<rt>なっとく</rt></ruby>されない<ruby>場合<rt>ばあい</rt></ruby>は、<ruby>自動車公正取引協議会<rt>じどうしゃこうせいとりひききょうぎかい</rt></ruby>の<ruby>相談窓口<rt>そうだんまどぐち</rt></ruby>をご<ruby>紹介<rt>しょうかい</rt></ruby>いたします。<br>*(Ba, nếu quý khách không hài lòng, tôi giới thiệu cửa tư vấn của Hiệp hội Giao dịch Ô tô Công bằng.)* |
| Kuroda | <ruby>50<rt>ごじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>は…<br>*(Bồi thường 500.000 yên thì...)* |
| Sato | <ruby>金銭<rt>きんせん</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>は<ruby>過失<rt>かしつ</rt></ruby>が<ruby>確定<rt>かくてい</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>に<ruby>限<rt>かぎ</rt></ruby>られます。<ruby>第三者<rt>だいさんしゃ</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>で<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>過失<rt>かしつ</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>すれば、<ruby>法令<rt>ほうれい</rt></ruby>に<ruby>基<rt>もと</rt></ruby>づき<ruby>適切<rt>てきせつ</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>いたします。<br>*(Bồi thường tiền chỉ giới hạn khi có lỗi xác định. Nếu chẩn đoán bên thứ ba xác định lỗi bên tôi, sẽ xử lý phù hợp theo pháp luật.)* |
| Kuroda | (gãi đầu) ...<ruby>第三者<rt>だいさんしゃ</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>か。<br>*(...Chẩn đoán bên thứ ba à.)* |
| Sato | これが<ruby>当社<rt>とうしゃ</rt></ruby>からの<ruby>最終<rt>さいしゅう</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>でございます。<ruby>本日<rt>ほんじつ</rt></ruby>ご<ruby>結論<rt>けつろん</rt></ruby>いただかなくても<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>ご<ruby>検討<rt>けんとう</rt></ruby>のお<ruby>時間<rt>じかん</rt></ruby>を<ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Đây là đề xuất cuối từ bên tôi. Hôm nay quý khách không cần kết luận. Tôi cho quý khách 1 tuần cân nhắc.)* |
| Kuroda | (lặng lâu) ...<ruby>第<rt>だい</rt></ruby><ruby>三者<rt>さんしゃ</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>、いつできる？<br>*(...Chẩn đoán bên thứ ba, khi nào làm được?)* |
| Sato | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby>でご<ruby>都合<rt>つごう</rt></ruby>はいかがでしょうか？<br>*(Thứ tư tuần sau 13 giờ quý khách tiện không ạ?)* |
| Kuroda | わかった、それで。<br>*(Được, thế nhé.)* |

---

## Tình huống 9 — Phòng tiếp khách · 11:00, chốt bằng văn bản và chữ ký

| Vai | Lời thoại |
|---|---|
| Phong | クロダ<ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>を<ruby>書面<rt>しょめん</rt></ruby>にて<ruby>残<rt>のこ</rt></ruby>させていただきます。ご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Kuroda-sama, em xin lưu nội dung hôm nay bằng văn bản. Xin quý khách xác nhận.)* |
| Phong | (đọc to từng dòng) <ruby>合意<rt>ごうい</rt></ruby><ruby>事項<rt>じこう</rt></ruby><ruby>一<rt>いち</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby>、メーカー<ruby>認定<rt>にんてい</rt></ruby>の<ruby>第三者<rt>だいさんしゃ</rt></ruby><ruby>整備工場<rt>せいびこうじょう</rt></ruby>にて<ruby>再診断<rt>さいしんだん</rt></ruby>。<ruby>費用<rt>ひよう</rt></ruby><ruby>当社負担<rt>とうしゃふたん</rt></ruby>。<br>*(Hạng mục thoả thuận 1, thứ tư tuần sau 13 giờ chẩn đoán lại tại xưởng bên thứ ba được hãng chứng nhận. Phí bên tôi chịu.)* |
| Phong | <ruby>二<rt>に</rt></ruby>、<ruby>診断<rt>しんだん</rt></ruby><ruby>期間中<rt>きかんちゅう</rt></ruby><ruby>代車<rt>だいしゃ</rt></ruby><ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>ご<ruby>提供<rt>ていきょう</rt></ruby>。<br>*(2, cung cấp xe thay thế miễn phí 3 ngày trong thời gian chẩn đoán.)* |
| Phong | <ruby>三<rt>さん</rt></ruby>、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>過失<rt>かしつ</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>、<ruby>法令<rt>ほうれい</rt></ruby>に<ruby>基<rt>もと</rt></ruby>づき<ruby>賠償<rt>ばいしょう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>。<ruby>過失<rt>かしつ</rt></ruby>が<ruby>確認<rt>かくにん</rt></ruby>されない<ruby>場合<rt>ばあい</rt></ruby>、<ruby>本件<rt>ほんけん</rt></ruby>を<ruby>終了<rt>しゅうりょう</rt></ruby>とする。<br>*(3, nếu xác định lỗi bên tôi sẽ xử lý bồi thường theo pháp luật. Nếu không xác định được lỗi, kết thúc vụ việc.)* |
| Kuroda | (đọc kỹ) ...<ruby>三<rt>さん</rt></ruby><ruby>条<rt>じょう</rt></ruby>の「<ruby>本件<rt>ほんけん</rt></ruby>を<ruby>終了<rt>しゅうりょう</rt></ruby>」って、もう<ruby>来<rt>く</rt></ruby>るなってこと？<br>*(...Mục 3 "kết thúc vụ việc" nghĩa là đừng đến nữa à?)* |
| Sato | いいえ、<ruby>本件<rt>ほんけん</rt></ruby>のクレームに<ruby>関<rt>かん</rt></ruby>しては<ruby>終了<rt>しゅうりょう</rt></ruby>という<ruby>意味<rt>いみ</rt></ruby>でございます。<ruby>今後<rt>こんご</rt></ruby><ruby>別<rt>べつ</rt></ruby>の<ruby>整備<rt>せいび</rt></ruby><ruby>案件<rt>あんけん</rt></ruby>はもちろん<ruby>歓迎<rt>かんげい</rt></ruby>いたします。<br>*(Không, có nghĩa kết thúc khiếu nại của vụ này. Vụ bảo dưỡng khác sau này tất nhiên hoan nghênh.)* |
| Kuroda | (lấy bút, ký) クロダ。<br>*(Kuroda.)* |
| Phong | ありがとうございます。<ruby>1<rt>いっ</rt></ruby><ruby>部<rt>ぶ</rt></ruby>はクロダ<ruby>様<rt>さま</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>部<rt>ぶ</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>保管<rt>ほかん</rt></ruby>いたします。<br>*(Em cảm ơn. Một bản quý khách giữ, một bản bên em lưu.)* |

---

## Tình huống 10 — Lối ra · 11:15, Phong tiễn khách với lễ phép đầy đủ

| Vai | Lời thoại |
|---|---|
| Phong | クロダ<ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>足労<rt>そくろう</rt></ruby>いただきありがとうございました。<br>*(Kuroda-sama, hôm nay cảm ơn quý khách đã chịu khó đến.)* |
| Phong | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>50<rt>ごじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>に<ruby>当店<rt>とうてん</rt></ruby>にお<ruby>越<rt>こ</rt></ruby>しください。<ruby>代車<rt>だいしゃ</rt></ruby>のご<ruby>用意<rt>ようい</rt></ruby>をしてお<ruby>待<rt>ま</rt></ruby>ちしております。<br>*(Thứ tư tuần sau 12:50 mời quý khách đến cửa hàng. Em sẽ chuẩn bị sẵn xe thay thế đợi.)* |
| Kuroda | (giọng nhỏ) ...<ruby>悪<rt>わる</rt></ruby>かったな、さっきの<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>。<br>*(...Xin lỗi vụ "người nước ngoài" lúc nãy.)* |
| Phong | (cúi đầu, không vui không buồn) お<ruby>気<rt>き</rt></ruby>になさらないでください。<ruby>水曜日<rt>すいようび</rt></ruby>、お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>越<rt>こ</rt></ruby>しくださいませ。<br>*(Xin quý khách đừng để tâm. Thứ tư xin quý khách đi cẩn thận.)* |
| Phong | (cúi 45 độ, đợi xe ra cổng mới đứng thẳng) |

---

## Tình huống 11 — Phòng staff · 11:30, debrief với Sato

| Vai | Lời thoại |
|---|---|
| Sato | フォン、お<ruby>疲<rt>つか</rt></ruby>れさま。きょうの<ruby>対応<rt>たいおう</rt></ruby>は<ruby>満点<rt>まんてん</rt></ruby>だ。<br>*(Phong, vất vả. Cách xử lý hôm nay full điểm.)* |
| Phong | ありがとうございます。「<ruby>外国人<rt>がいこくじん</rt></ruby>のくせに」と<ruby>言<rt>い</rt></ruby>われた<ruby>瞬間<rt>しゅんかん</rt></ruby>、<ruby>正直<rt>しょうじき</rt></ruby><ruby>胸<rt>むね</rt></ruby>が<ruby>熱<rt>あつ</rt></ruby>くなりました。<br>*(Em cảm ơn. Lúc bị nói "là người nước ngoài mà", thật lòng em nóng ngực.)* |
| Sato | <ruby>当然<rt>とうぜん</rt></ruby>だ。<ruby>怒<rt>おこ</rt></ruby>っていい<ruby>場面<rt>ばめん</rt></ruby>だ。だが、<ruby>怒<rt>おこ</rt></ruby>らずに<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>させる<ruby>判断<rt>はんだん</rt></ruby>ができた。<br>*(Đương nhiên. Đó là cảnh được phép giận. Nhưng em đã quyết định không giận mà ghi vào record.)* |
| Phong | クロダ<ruby>様<rt>さま</rt></ruby>が<ruby>最後<rt>さいご</rt></ruby>に「<ruby>悪<rt>わる</rt></ruby>かった」と<ruby>言<rt>い</rt></ruby>われたとき、<ruby>少<rt>すこ</rt></ruby>し<ruby>救<rt>すく</rt></ruby>われた<ruby>気<rt>き</rt></ruby>がします。<br>*(Lúc Kuroda-sama nói "xin lỗi" cuối cùng, em thấy có chút được cứu rỗi.)* |
| Sato | あれは<ruby>君<rt>きみ</rt></ruby>の<ruby>毅然<rt>きぜん</rt></ruby>とした<ruby>態度<rt>たいど</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>した<ruby>謝罪<rt>しゃざい</rt></ruby>だ。<ruby>低姿勢<rt>ていしせい</rt></ruby>だけでは<ruby>出<rt>で</rt></ruby>てこなかった。<br>*(Đó là lời xin lỗi do thái độ kiên định của em kéo ra. Chỉ khom lưng thì không có.)* |
| Sato | ところで、<ruby>本件<rt>ほんけん</rt></ruby>の<ruby>始末書<rt>しまつしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてくれ。<ruby>社内<rt>しゃない</rt></ruby><ruby>記録<rt>きろく</rt></ruby>として<ruby>残<rt>のこ</rt></ruby>す。<br>*(À này, em viết 始末書 vụ này nhé. Lưu hồ sơ nội bộ.)* |
| Phong | <ruby>始末書<rt>しまつしょ</rt></ruby>…はじめてです。<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(始末書... em lần đầu. Trưởng dạy em cách viết được không?)* |
| Sato | クレーマー<ruby>案件<rt>あんけん</rt></ruby>は「<ruby>始末書<rt>しまつしょ</rt></ruby>」ではなく「<ruby>顛末書<rt>てんまつしょ</rt></ruby>」が<ruby>正<rt>ただ</rt></ruby>しい。<ruby>過失<rt>かしつ</rt></ruby>はないからね。<br>*(Vụ クレーマー đúng phải gọi "顛末書" chứ không phải "始末書". Vì không có lỗi mà.)* |
| Phong | <ruby>顛末書<rt>てんまつしょ</rt></ruby>…<ruby>事実<rt>じじつ</rt></ruby>の<ruby>経緯<rt>けいい</rt></ruby>を<ruby>書<rt>か</rt></ruby>くものですね。<br>*(顛末書... viết diễn biến sự kiện nhỉ.)* |
| Sato | そう。<ruby>5W1H<rt>ファイブダブリュー</rt></ruby>で<ruby>事実<rt>じじつ</rt></ruby>のみ。<ruby>感情<rt>かんじょう</rt></ruby>や<ruby>推測<rt>すいそく</rt></ruby>は<ruby>書<rt>か</rt></ruby>かない。<ruby>最後<rt>さいご</rt></ruby>に<ruby>再発防止策<rt>さいはつぼうしさく</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つ<ruby>提案<rt>ていあん</rt></ruby>。<br>*(Đúng. 5W1H, chỉ sự kiện. Không viết cảm xúc hay suy đoán. Cuối cùng đề xuất 3 biện pháp phòng tái phát.)* |

---

## Tình huống 12 — Bàn của Phong · 14:00, viết 顛末書 và Yamada kiểm tra bản nháp

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>顛末書<rt>てんまつしょ</rt></ruby>の<ruby>下書<rt>したが</rt></ruby>きを<ruby>見<rt>み</rt></ruby>ていただけますか？<br>*(Trưởng thợ, xem nháp 顛末書 giúp em được không?)* |
| Yamada | (đọc) ふむ…「<ruby>令和<rt>れいわ</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>、クロダ<ruby>様<rt>さま</rt></ruby><ruby>来店<rt>らいてん</rt></ruby>。<ruby>応接室<rt>おうせつしつ</rt></ruby>にて<ruby>対応<rt>たいおう</rt></ruby>」――<ruby>事実<rt>じじつ</rt></ruby><ruby>関係<rt>かんけい</rt></ruby><ruby>OK<rt>オーケー</rt></ruby>。<br>*(Ừm... "Reiwa 9 năm 12/5 10 giờ, Kuroda-sama đến. Xử lý tại phòng tiếp khách" — sự kiện OK.)* |
| Yamada | ここ、「<ruby>お客様<rt>きゃくさま</rt></ruby>はかなり<ruby>感情的<rt>かんじょうてき</rt></ruby>でした」――これは<ruby>主観<rt>しゅかん</rt></ruby>だ。<ruby>削除<rt>さくじょ</rt></ruby>。<br>*(Chỗ này, "khách rất xúc động" — chủ quan. Xoá.)* |
| Phong | あ、「<ruby>声<rt>こえ</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げての<ruby>発言<rt>はつげん</rt></ruby>あり」に<ruby>変<rt>か</rt></ruby>えます。<br>*(À, em đổi thành "có phát ngôn cao giọng".)* |
| Yamada | そう、<ruby>客観的<rt>きゃっかんてき</rt></ruby><ruby>事実<rt>じじつ</rt></ruby>に。それから「<ruby>外国人<rt>がいこくじん</rt></ruby>のくせに」の<ruby>発言<rt>はつげん</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>原文<rt>げんぶん</rt></ruby>のまま<ruby>引用<rt>いんよう</rt></ruby>。<br>*(Đúng, sang sự kiện khách quan. Còn câu "là người nước ngoài mà" nhất định trích nguyên văn.)* |
| Phong | <ruby>引用符<rt>いんようふ</rt></ruby>「」で<ruby>囲<rt>かこ</rt></ruby>みます。<br>*(Em sẽ dùng ngoặc kép "".)* |
| Yamada | <ruby>再発防止策<rt>さいはつぼうしさく</rt></ruby><ruby>3<rt>みっ</rt></ruby>つは？<br>*(3 biện pháp phòng tái phát?)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>同一<rt>どういつ</rt></ruby><ruby>顧客<rt>こきゃく</rt></ruby>からのクレーム<ruby>時<rt>じ</rt></ruby>、<ruby>応接室<rt>おうせつしつ</rt></ruby>で<ruby>録音<rt>ろくおん</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>。<br>*(Một, khi 1 khách khiếu nại từ 3 lần trở lên, bắt buộc ghi âm trong phòng tiếp khách.)* |
| Phong | <ruby>二<rt>に</rt></ruby>、<ruby>差別的<rt>さべつてき</rt></ruby><ruby>発言<rt>はつげん</rt></ruby>があった<ruby>場合<rt>ばあい</rt></ruby>、<ruby>即座<rt>そくざ</rt></ruby>に<ruby>工場長<rt>こうじょうちょう</rt></ruby>を<ruby>同席<rt>どうせき</rt></ruby>。<br>*(Hai, có phát ngôn phân biệt thì ngay lập tức mời trưởng nhà máy.)* |
| Phong | <ruby>三<rt>さん</rt></ruby>、<ruby>合意事項<rt>ごういじこう</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>書面化<rt>しょめんか</rt></ruby>し、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>署名<rt>しょめい</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>。<br>*(Ba, hạng mục thoả thuận bắt buộc văn bản hoá, khách bắt buộc ký.)* |
| Yamada | <ruby>三<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>とも<ruby>採用<rt>さいよう</rt></ruby><ruby>価値<rt>かち</rt></ruby>あり。よく<ruby>書<rt>か</rt></ruby>けた。<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>するように。<br>*(Cả 3 đều đáng áp dụng. Viết khá. Nộp trưởng nhà máy đi.)* |

---

## Tình huống 13 — Phòng nghỉ · 15:30, đồng kỳ Brazil Carlos hỏi chuyện

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>聞<rt>き</rt></ruby>いたよ。<ruby>朝<rt>あさ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だった？<br>*(Phong, anh nghe rồi. Vụ sáng nay ổn không?)* |
| Phong | カルロスさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でした。「<ruby>外国人<rt>がいこくじん</rt></ruby>のくせに」って<ruby>言<rt>い</rt></ruby>われたけど、<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>すことができたから。<br>*(Anh Carlos, em ổn. Bị nói "là người nước ngoài mà" nhưng em ghi vào record được rồi.)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>、ブラジル<ruby>人<rt>じん</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>日本<rt>にほん</rt></ruby>にいるけど、<ruby>同<rt>おな</rt></ruby>じこと<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>言<rt>い</rt></ruby>われた。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>泣<rt>な</rt></ruby>いたよ。<br>*(Anh, người Brazil ở Nhật 7 năm, bị nói y vậy 3 lần. Lần đầu anh khóc đấy.)* |
| Phong | <ruby>泣<rt>な</rt></ruby>くより<ruby>記録<rt>きろく</rt></ruby>のほうがいいですね。<br>*(Khóc thì không bằng ghi lại nhỉ.)* |
| Carlos | (cười) お<ruby>前<rt>まえ</rt></ruby>、もう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>整備士<rt>せいびし</rt></ruby>だよ。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>来<rt>き</rt></ruby>たばかりの<ruby>頃<rt>ころ</rt></ruby>、N5で「すみません」しか<ruby>言<rt>い</rt></ruby>えなかったのに。<br>*(Mày, đã là thợ máy đàng hoàng rồi. 3 năm trước mới đến, N5 chỉ nói được "sumimasen".)* |
| Phong | カルロスさんが<ruby>言<rt>い</rt></ruby>ってくれた「<ruby>外国人<rt>がいこくじん</rt></ruby>は<ruby>泣<rt>な</rt></ruby>かないで<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>せ」って、<ruby>今日<rt>きょう</rt></ruby>初めて<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Câu anh Carlos nói "người nước ngoài đừng khóc, ghi lại đi", hôm nay em mới thật sự hiểu.)* |
| Carlos | (đập vai Phong) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1<ruby>続<rt>つづ</rt></ruby>けるんだろ？<ruby>俺<rt>おれ</rt></ruby>も<ruby>4<rt>よん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>SSW1<ruby>更新<rt>こうしん</rt></ruby>だ。これからも<ruby>仲間<rt>なかま</rt></ruby>だな。<br>*(Tháng 4 mày tiếp SSW1 chứ? Anh cũng năm 4 SSW1 gia hạn. Đồng đội tiếp nhé.)* |
| Phong | はい、<ruby>頼<rt>たよ</rt></ruby>りにしています。<br>*(Vâng, em trông cậy vào anh.)* |

---

## Tình huống 14 — Phòng 工場長 · 17:00, nộp 顛末書 và nghe đánh giá thẳng

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>顛末書<rt>てんまつしょ</rt></ruby>でございます。ご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Trưởng nhà máy, 顛末書 đây. Xin trưởng kiểm tra.)* |
| Sato | (đọc kỹ 2 phút) <ruby>事実<rt>じじつ</rt></ruby>のみ。<ruby>主観<rt>しゅかん</rt></ruby>なし。<ruby>引用<rt>いんよう</rt></ruby><ruby>原文<rt>げんぶん</rt></ruby>あり。<ruby>再発防止策<rt>さいはつぼうしさく</rt></ruby><ruby>3<rt>みっ</rt></ruby>つ<ruby>具体的<rt>ぐたいてき</rt></ruby>。<ruby>完璧<rt>かんぺき</rt></ruby>だ。<br>*(Chỉ sự kiện. Không chủ quan. Có trích nguyên văn. 3 biện pháp phòng tái phát cụ thể. Hoàn hảo.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn.)* |
| Sato | <ruby>本件<rt>ほんけん</rt></ruby>は<ruby>本社<rt>ほんしゃ</rt></ruby>のコンプライアンス<ruby>部<rt>ぶ</rt></ruby>にも<ruby>共有<rt>きょうゆう</rt></ruby>する。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>差別<rt>さべつ</rt></ruby><ruby>発言<rt>はつげん</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby><ruby>事例<rt>じれい</rt></ruby>として<ruby>残<rt>のこ</rt></ruby>すべきだ。<br>*(Vụ này tôi cũng chia sẻ phòng Compliance trụ sở. Cần lưu như case ghi lại phát ngôn phân biệt người nước ngoài.)* |
| Phong | はい。<ruby>同<rt>おな</rt></ruby>じ<ruby>立場<rt>たちば</rt></ruby>の<ruby>外国人<rt>がいこくじん</rt></ruby>スタッフが<ruby>泣<rt>な</rt></ruby>き<ruby>寝入<rt>ねい</rt></ruby>りしないように<ruby>役立<rt>やくだ</rt></ruby>てばと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Em mong nó hữu ích để nhân viên nước ngoài cùng cảnh không phải nuốt nước mắt một mình.)* |
| Sato | フォン、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>話<rt>はな</rt></ruby>したい<ruby>件<rt>けん</rt></ruby>がある。<br>*(Phong, anh có một việc nữa muốn nói.)* |
| Phong | はい？<br>*(Vâng?)* |
| Sato | きみ、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からのSSW1<ruby>移行<rt>いこう</rt></ruby>、<ruby>正式<rt>せいしき</rt></ruby>に<ruby>決<rt>き</rt></ruby>めたか？<br>*(Em quyết chính thức chuyển SSW1 từ tháng 4 chưa?)* |
| Phong | はい、<ruby>気持<rt>きも</rt></ruby>ちは<ruby>固<rt>かた</rt></ruby>まっています。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>で<ruby>正式<rt>せいしき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Vâng, em đã quyết. Tháng sau em sẽ chính thức trình bày khi mensetsu.)* |
| Sato | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からは<ruby>受付<rt>うけつけ</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>いてもらいたい。<ruby>今日<rt>きょう</rt></ruby>のような<ruby>対応<rt>たいおう</rt></ruby>は、もう<ruby>日本人<rt>にほんじん</rt></ruby><ruby>並<rt>な</rt></ruby>みじゃない、<ruby>日本人<rt>にほんじん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>だ。<br>*(Từ tháng 4 anh muốn em làm chủ nhiệm quầy lễ tân. Xử lý như hôm nay không chỉ ngang người Nhật, hơn người Nhật rồi.)* |
| Phong | (cúi đầu sâu, lặng vài giây) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(Vinh dự vượt sức em.)* |

---

## Tình huống 15 — Ký túc · 21:00, gọi điện về cho mẹ (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — mẹ Phong ở Hải Phòng, không hiểu chuyên môn nhưng nghe Phong kể.

| Vai | Lời thoại |
|---|---|
| Mẹ Phong | (VN) Phong! Hôm nay mệt không con? |
| Phong | (VN) Mẹ ơi, hôm nay con xử lý một ông khách Nhật khó. Ông ấy đòi đền 500.000 yên với đổi xe mới. |
| Mẹ Phong | (VN, hốt hoảng) Trời ơi, mày làm hỏng gì rồi à? |
| Phong | (VN) Không phải mẹ ơi. Garage không có lỗi. Ông ấy là クレーマー — kiểu người chuyên đi đòi tiền. |
| Mẹ Phong | (VN) Ơ thế ổn không? Người ta lớn tiếng mày sợ không? |
| Phong | (VN) Lúc đầu sợ. Mà rồi ông ấy nói "là người nước ngoài mà thuyết giáo tao" — con vẫn bình tĩnh, ghi âm hết. Cuối cùng bác 工場長 Sato ra mặt nói cứng, ông ấy chịu ký giấy thoả thuận xong đi về. |
| Mẹ Phong | (VN, im lặng) ...mẹ thương con. |
| Phong | (VN) Mẹ ơi đừng thương. Hôm nay bác Sato bảo con tháng 4 lên làm 受付主任 — kiểu trưởng quầy lễ tân. Lương sẽ cao hơn người Nhật mới vào. |
| Mẹ Phong | (VN) Bác ấy tin con đến thế cơ à? Mẹ tự hào quá. |
| Phong | (VN) Con nghĩ về quyết định SSW1 chính thức rồi mẹ. Con ở lại Aichi thêm 4-5 năm nữa. Khi nào tích đủ tiền, con về mở garage nhỏ ở Hải Phòng. |
| Mẹ Phong | (VN, khóc cười) Phong ơi, hồi mày đi 21 tuổi bé tí. Giờ 24 tuổi nói chuyện cứng cáp như đàn anh. |
| Phong | (VN) Con sẽ về Tết Nguyên đán. Mẹ chuẩn bị bún chả cá Hải Phòng nhé, con thèm 3 năm rồi. |
| Mẹ Phong | (VN) Mẹ làm cả nồi to. Con nhớ giữ ấm cổ họng, mùa đông Aichi lạnh đấy. |
| Phong | (VN) Vâng mẹ. Con yêu mẹ. |
| Mẹ Phong | (VN) Mẹ yêu con. Ngủ ngon nhé. |

---

## Đọng lại chương

**Mẫu câu trục chính chương này:**

- **本日はご足労いただきありがとうございます** — Hôm nay cảm ơn quý khách đã chịu khó đến (chào クレーマー lịch sự nhưng có khoảng cách).
- **落ち着いてお話しいただけますか** — Quý khách bình tĩnh nói chuyện được không (yêu cầu hạ giọng).
- **ご要望には沿いかねます** — Không thể đáp ứng yêu cầu (từ chối keigo).
- **大変恐縮ですが、〜いたしかねます** — Rất ngại nhưng em không thể... (từ chối lịch sự).
- **ご意向は承りました。上司に確認のうえ、改めてご連絡いたします** — Em ghi nhận ý quý khách. Kiểm tra cấp trên rồi liên lạc lại (câu thời gian).
- **書面にて残させていただきます** — Em xin lưu bằng văn bản (cứng hoá thoả thuận).

**Từ vựng & mẫu câu chương này:** クレーマー・賠償・新車交換・根拠・要望・足労・録音・了承・差別的発言・毅然・応接室・代車・第三者診断・自動車公正取引協議会・書面・合意事項・署名・顛末書・始末書・再発防止策・引用・客観的事実・受付主任・コンプライアンス・身に余る光栄・お気になさらないでください・誠に恐縮ですが.

---

## Bí quyết chương

- **Báo trước "録音させていただきます" trước khi khách nói**: thay đổi hành vi khách ngay lập tức, đồng thời tạo bằng chứng nếu khách phát ngôn phân biệt.
- **Từ chối có 4 tầng**: "沿いかねます" → "対応いたしかねます" → "お受けすることは難しい" → "上司に確認のうえ改めて". Dùng theo mức độ cứng tăng dần.
- **Khi bị phân biệt chủng tộc**: KHÔNG nổi giận tại chỗ, ghi đúng nguyên văn vào record, để cấp trên Nhật xử lý phát ngôn — tiếng nói của bản thân không bằng tiếng nói qua công ty.
- **Cấu trúc 3 lý do từ chối**: "理由は三つでございます。一つ、… 二つ、… 三つ、…" — keigo đếm rõ ràng làm khó tranh cãi.
- **顛末書 ≠ 始末書**: 始末書 viết khi NHÂN VIÊN có lỗi, 顛末書 viết khi mô tả sự kiện không lỗi. クレーマー case luôn dùng 顛末書.
- **Trích nguyên văn câu phân biệt vào 顛末書**: dùng「」, không paraphrase — tránh việc người đọc sau cho rằng nhân viên phóng đại.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| クレーマー | クレーマー | — | khách khiếu nại cực đoan |
| 案件 | あんけん | ÁN KIỆN | vụ việc |
| 賠償 | ばいしょう | BỒI THƯỜNG | bồi thường |
| 新車交換 | しんしゃこうかん | TÂN XA GIAO HOÁN | đổi xe mới |
| 根拠 | こんきょ | CĂN CỨ | căn cứ |
| 要望 | ようぼう | YÊU VỌNG | yêu cầu, mong muốn |
| ご足労 | ごそくろう | TÚC LAO | sự chịu khó đi lại |
| 録音 | ろくおん | LỤC ÂM | ghi âm |
| 了承 | りょうしょう | LIỄU THỪA | đồng ý |
| 主張 | しゅちょう | CHỦ TRƯƠNG | khẳng định |
| 落ち着く | おちつく | LẠC TRƯỚC | bình tĩnh |
| 因果関係 | いんがかんけい | NHÂN QUẢ QUAN HỆ | quan hệ nhân quả |
| 過失 | かしつ | QUÁ THẤT | sai sót, lỗi |
| 否定 | ひてい | PHỦ ĐỊNH | phủ định |
| 差別的 | さべつてき | SAI BIỆT ĐÍCH | có tính phân biệt |
| 発言 | はつげん | PHÁT NGÔN | phát ngôn |
| 国籍 | こくせき | QUỐC TỊCH | quốc tịch |
| 有資格 | ゆうしかく | HỮU TƯ CÁCH | có chứng chỉ |
| 権限 | けんげん | QUYỀN HẠN | quyền hạn |
| 同等 | どうとう | ĐỒNG ĐẲNG | ngang nhau |
| 毅然 | きぜん | NGHỊ NHIÊN | kiên định |
| 応接室 | おうせつしつ | ỨNG TIẾP THẤT | phòng tiếp khách |
| 代車 | だいしゃ | ĐẠI XA | xe thay thế |
| 第三者 | だいさんしゃ | ĐỆ TAM GIẢ | bên thứ ba |
| 認定 | にんてい | NHẬN ĐỊNH | được công nhận |
| 公正取引 | こうせいとりひき | CÔNG CHÍNH THỦ DỊCH | giao dịch công bằng |
| 協議会 | きょうぎかい | HIỆP NGHỊ HỘI | hiệp hội |
| 相談窓口 | そうだんまどぐち | TƯƠNG ĐÀM SONG KHẨU | cửa tư vấn |
| 法令 | ほうれい | PHÁP LỆNH | pháp luật |
| 書面 | しょめん | THƯ DIỆN | văn bản |
| 合意事項 | ごういじこう | HỢP Ý SỰ HẠNG | hạng mục thoả thuận |
| 署名 | しょめい | THỰ DANH | chữ ký |
| 保管 | ほかん | BẢO QUẢN | lưu giữ |
| 顛末書 | てんまつしょ | ĐIÊN MẠT THƯ | báo cáo diễn biến |
| 始末書 | しまつしょ | THUỶ MẠT THƯ | bản tự kiểm có lỗi |
| 再発防止 | さいはつぼうし | TÁI PHÁT PHÒNG CHỈ | phòng tái phát |
| 客観的 | きゃっかんてき | KHÁCH QUAN ĐÍCH | khách quan |
| 主観 | しゅかん | CHỦ QUAN | chủ quan |
| 引用 | いんよう | DẪN DỤNG | trích dẫn |
| 原文 | げんぶん | NGUYÊN VĂN | nguyên văn |
| コンプライアンス | コンプライアンス | — | tuân thủ |
| 寝入り | ねいり | TẨM NHẬP | ngủ thiếp, im chịu |
| 受付主任 | うけつけしゅにん | THỤ PHÓ CHỦ NHIỆM | chủ nhiệm lễ tân |
| 移行 | いこう | DI HÀNH | chuyển sang |
| 面談 | めんだん | DIỆN ĐÀM | phỏng vấn |
| 身に余る | みにあまる | THÂN DƯ | vượt sức |
| 光栄 | こうえい | QUANG VINH | vinh dự |
| 沿いかねる | そいかねる | DUYÊN | không đáp ứng được |
| 恐縮 | きょうしゅく | KHỦNG SÚC | ngại, áy náy |
| 承る | うけたまわる | THỪA | xin tiếp nhận (khiêm ngữ) |
| 検討 | けんとう | KIỂM THẢO | cân nhắc |
| 同席 | どうせき | ĐỒNG TỊCH | cùng tham gia |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000011, 800000045, NULL, 'markdown_book', 'T11. Phong quyết định ở lại SSW1 (特定技能1号への移行決断)', '# Sách thực tập sinh ô tô · T11. Phong quyết định ở lại SSW1 (特定技能1号への移行決断)

> **Mục tiêu nhân vật:** Phong (25 tuổi, Hải Phòng) — TTS năm 3 tại garage Toyota Aichi, N3 (đang ôn N2). Học các mẫu hội thoại tiếng Nhật trong giai đoạn ra quyết định chuyển SSW1: tham vấn cấp trên về tương lai (今後の進路についてご相談), nghe đề nghị tăng lương và chức danh (条件面のご提示), phân tích pros/cons với đồng kỳ (メリット・デメリット整理), thuyết phục gia đình qua điện thoại (家族への説明), mensetsu chính thức với 工場長 (正式面談), và ký 雇用契約書 SSW1 (雇用契約締結).

## Bối cảnh

Ngày 18 tháng 1 năm 2028, garage Toyota Aichi. Còn 10 tuần nữa TTS năm 3 của Phong kết thúc (31/3). Sau case クレーマー Kuroda tháng trước, Sato đã đánh tiếng giao chức 受付主任 nếu Phong chuyển SSW1. Phong cần ra quyết định chính thức: về VN (mẹ mong) hay ở lại Aichi thêm 5 năm (bố ủng hộ, sự nghiệp đang lên). Chương này tập trung mẫu câu tham vấn — đề nghị — phân tích — quyết định — ký kết SSW1, vốn là quy trình mọi TTS năm 3 đều trải qua.

---

## Tình huống 1 — Ký túc · 5:45, độc thoại trước gương trong sáng sớm tuyết rơi đầu năm

| Vai | Lời thoại |
|---|---|
| Phong | (nhìn ra cửa sổ tuyết phủ Aichi) <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>18<rt>じゅうはち</rt></ruby><ruby>日<rt>にち</rt></ruby>。<ruby>来日<rt>らいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>よん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>目<rt>め</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>です。<br>*(18/1. Sáng tháng thứ 3 năm 4 sang Nhật.)* |
| Phong | (cầm hai phong bì trên bàn) この<ruby>2<rt>に</rt></ruby><ruby>通<rt>つう</rt></ruby>の<ruby>手紙<rt>てがみ</rt></ruby>。<ruby>一<rt>ひと</rt></ruby>つは<ruby>監理団体<rt>かんりだんたい</rt></ruby>からの<ruby>帰国<rt>きこく</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby><ruby>案内<rt>あんない</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つは<ruby>会社<rt>かいしゃ</rt></ruby>からのSSW1<ruby>提示書<rt>ていじしょ</rt></ruby>。<br>*(Hai phong thư. Một là hướng dẫn chuẩn bị về nước từ 監理団体. Hai là đề nghị SSW1 của công ty.)* |
| Phong | <ruby>3<rt>みっ</rt></ruby>か<ruby>月以内<rt>げついない</rt></ruby>に<ruby>決<rt>き</rt></ruby>めなければならない。<ruby>母<rt>はは</rt></ruby>は<ruby>帰<rt>かえ</rt></ruby>ってこいと<ruby>言<rt>い</rt></ruby>う。<ruby>父<rt>ちち</rt></ruby>はおまえに<ruby>任<rt>まか</rt></ruby>せると<ruby>言<rt>い</rt></ruby>う。<br>*(Phải quyết trong 3 tháng. Mẹ bảo về. Bố bảo tuỳ con.)* |
| Phong | (VN, tự nhủ) 25 tuổi rồi. Lần này phải tự đứng quyết định cuộc đời mình. |
| Phong | <ruby>今日<rt>きょう</rt></ruby>、<ruby>工場長<rt>こうじょうちょう</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>のお<ruby>時間<rt>じかん</rt></ruby>をいただこう。<br>*(Hôm nay xin xếp thời gian tham vấn với trưởng nhà máy.)* |

---

## Tình huống 2 — Phòng staff · 7:50, xin Sato thời gian tham vấn chính thức

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>のお<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Trưởng nhà máy, sáng bận xin lỗi đã làm phiền.)* |
| Sato | おう、フォン、おはよう。<ruby>何<rt>なに</rt></ruby>かあったか？<br>*(Ờ, Phong, chào. Có chuyện gì?)* |
| Phong | <ruby>今後<rt>こんご</rt></ruby>の<ruby>進路<rt>しんろ</rt></ruby>についてご<ruby>相談<rt>そうだん</rt></ruby>させていただきたく、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できればと<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Em muốn xin tham vấn về con đường tương lai, mong trưởng cho phép thời gian.)* |
| Sato | (gật đầu) ついに<ruby>来<rt>き</rt></ruby>たか。きょうの<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>応接室<rt>おうせつしつ</rt></ruby>でどう？<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>枠<rt>わく</rt></ruby><ruby>取<rt>と</rt></ruby>ろう。<br>*(Cuối cùng cũng đến. Hôm nay 14 giờ phòng tiếp khách được không? Anh để 1 tiếng.)* |
| Phong | はい、<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng, 14 giờ, em đã rõ.)* |
| Sato | <ruby>正式<rt>せいしき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>ではなく、<ruby>事前<rt>じぜん</rt></ruby>の<ruby>相談<rt>そうだん</rt></ruby>でいいか？<br>*(Không phải mensetsu chính thức, là tham vấn trước đúng không?)* |
| Phong | はい、まだ<ruby>結論<rt>けつろん</rt></ruby>は<ruby>出<rt>だ</rt></ruby>しておりません。<ruby>判断材料<rt>はんだんざいりょう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えたく、<ruby>会社側<rt>かいしゃがわ</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>と<ruby>期待<rt>きたい</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>伺<rt>うかが</rt></ruby>いたいです。<br>*(Vâng, em chưa kết luận. Em muốn chuẩn bị thông tin để quyết, muốn nghe đúng điều kiện và kỳ vọng của công ty.)* |
| Sato | <ruby>素晴<rt>すば</rt></ruby>らしいアプローチだ。<ruby>準備<rt>じゅんび</rt></ruby>してくる。<br>*(Cách tiếp cận hay đấy. Anh chuẩn bị.)* |

---

## Tình huống 3 — Phòng tiếp khách · 14:00, Sato trình bày 雇用条件 SSW1

| Vai | Lời thoại |
|---|---|
| Sato | フォン、まず<ruby>会社側<rt>かいしゃがわ</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>明確<rt>めいかく</rt></ruby>にしよう。<br>*(Phong, trước hết làm rõ điều kiện phía công ty.)* |
| Sato | (đặt giấy A4 lên bàn) <ruby>雇用形態<rt>こようけいたい</rt></ruby>：<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>、<ruby>正社員<rt>せいしゃいん</rt></ruby><ruby>扱<rt>あつか</rt></ruby>い。<ruby>契約期間<rt>けいやくきかん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>更新<rt>こうしん</rt></ruby><ruby>可能<rt>かのう</rt></ruby>。<br>*(Hình thức tuyển dụng: Đặc định kỹ năng 1, làm chính thức. Hợp đồng 5 năm, có thể gia hạn.)* |
| Phong | <ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>ですか…<br>*(5 năm ạ...)* |
| Sato | SSW1の<ruby>制度<rt>せいど</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby>だ。その<ruby>後<rt>あと</rt></ruby>はSSW2へ<ruby>移行<rt>いこう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>、SSW2は<ruby>家族帯同<rt>かぞくたいどう</rt></ruby>と<ruby>永住申請<rt>えいじゅうしんせい</rt></ruby>の<ruby>道<rt>みち</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>く。<br>*(Trần chế độ SSW1. Sau đó chuyển SSW2 được, SSW2 mở đường mang gia đình và xin vĩnh trú.)* |
| Phong | <ruby>給与<rt>きゅうよ</rt></ruby>はいかがでしょうか？<br>*(Lương thế nào ạ?)* |
| Sato | <ruby>基本給<rt>きほんきゅう</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>。TTS<ruby>時代<rt>じだい</rt></ruby>の<ruby>16<rt>じゅうろく</rt></ruby><ruby>万<rt>まん</rt></ruby>から<ruby>44<rt>よんじゅうよん</rt></ruby>パーセント<ruby>増<rt>ぞう</rt></ruby>だ。<br>*(Lương cơ bản 23 vạn yên/tháng. Tăng 44% so với 16 vạn thời TTS.)* |
| Phong | (ghi vào sổ) <ruby>賞与<rt>しょうよ</rt></ruby>は…<br>*(Thưởng thì...)* |
| Sato | <ruby>夏<rt>なつ</rt></ruby><ruby>1.5<rt>いってんご</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、<ruby>冬<rt>ふゆ</rt></ruby><ruby>2<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>。<ruby>年<rt>ねん</rt></ruby><ruby>3.5<rt>さんてんご</rt></ruby>か<ruby>月分<rt>げつぶん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>年収<rt>ねんしゅう</rt></ruby><ruby>356<rt>さんびゃくごじゅうろく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>。<br>*(Hè 1.5 tháng, đông 2 tháng. Năm 3.5 tháng, tổng thu nhập năm khoảng 356 vạn yên.)* |
| Phong | <ruby>役職<rt>やくしょく</rt></ruby>については？<br>*(Về chức vụ?)* |
| Sato | <ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>兼<rt>けん</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby>。<ruby>役職手当<rt>やくしょくてあて</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>1.5<rt>いってんご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>顧客<rt>こきゃく</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>と<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いする。<br>*(Chủ nhiệm lễ tân kiêm thợ máy. Phụ cấp chức vụ 1.5 vạn/tháng. Em phụ trách cả tiếp khách nước ngoài và đào tạo kohai.)* |
| Phong | (lặng vài giây) <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>条件<rt>じょうけん</rt></ruby>です。<br>*(Điều kiện vượt sức em.)* |
| Sato | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るのではない、きみが<ruby>勝<rt>か</rt></ruby>ち<ruby>取<rt>と</rt></ruby>った<ruby>条件<rt>じょうけん</rt></ruby>だ。<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、N3、クロダ<ruby>件<rt>けん</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>、すべて<ruby>実績<rt>じっせき</rt></ruby>だ。<br>*(Không phải vượt sức, là điều kiện em giành được. Chứng chỉ 2級, N3, vụ Kuroda, tất cả là thành tích.)* |

---

## Tình huống 4 — Phòng tiếp khách · 14:25, Phong hỏi về phúc lợi và住居 sau TTS

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>住居<rt>じゅうきょ</rt></ruby>は<ruby>現在<rt>げんざい</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>を<ruby>継続<rt>けいぞく</rt></ruby><ruby>利用<rt>りよう</rt></ruby>できますか？<br>*(Em có thể tiếp tục ở ký túc hiện tại không ạ?)* |
| Sato | <ruby>寮<rt>りょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>で<ruby>延長<rt>えんちょう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>だが、SSW1は<ruby>原則<rt>げんそく</rt></ruby><ruby>自宅<rt>じたく</rt></ruby><ruby>賃貸<rt>ちんたい</rt></ruby>。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>住宅手当<rt>じゅうたくてあて</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>を<ruby>支給<rt>しきゅう</rt></ruby>する。<br>*(Ký túc gia hạn miễn phí 3 tháng được, nhưng SSW1 nguyên tắc thuê nhà riêng. Công ty cho phụ cấp nhà ở 2 vạn/tháng.)* |
| Phong | <ruby>賃貸<rt>ちんたい</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>の<ruby>保証人<rt>ほしょうにん</rt></ruby>は？<br>*(Người bảo lãnh thuê nhà?)* |
| Sato | <ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>法人保証<rt>ほうじんほしょう</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>受<rt>う</rt></ruby>ける。<ruby>初期費用<rt>しょきひよう</rt></ruby><ruby>無利子<rt>むりし</rt></ruby><ruby>貸付<rt>かしつけ</rt></ruby>、<ruby>給与<rt>きゅうよ</rt></ruby>から<ruby>分割<rt>ぶんかつ</rt></ruby><ruby>返済<rt>へんさい</rt></ruby>可。<br>*(Công ty bảo lãnh pháp nhân. Cho vay phí ban đầu không lãi, trừ dần vào lương.)* |
| Phong | <ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>は？<br>*(Nghỉ phép có lương?)* |
| Sato | <ruby>初年度<rt>しょねんど</rt></ruby><ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>から<ruby>11<rt>じゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>毎年<rt>まいとし</rt></ruby><ruby>増加<rt>ぞうか</rt></ruby>。<ruby>夏季<rt>かき</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby><ruby>4<rt>よっ</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>年末年始<rt>ねんまつねんし</rt></ruby><ruby>9<rt>ここの</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>連休<rt>れんきゅう</rt></ruby><ruby>込<rt>こ</rt></ruby>み。<br>*(Năm đầu 10 ngày, từ năm 2 11 ngày, mỗi năm tăng. Nghỉ hè 4 ngày, năm mới 9 ngày bao gồm cả nghỉ liền.)* |
| Phong | <ruby>帰国<rt>きこく</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>に<ruby>取<rt>と</rt></ruby>れますか？<br>*(Nghỉ về nước có riêng không ạ?)* |
| Sato | <ruby>年<rt>ねん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>連続<rt>れんぞく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>帰国<rt>きこく</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>を<ruby>有給<rt>ゆうきゅう</rt></ruby>で<ruby>取<rt>と</rt></ruby>れるよう<ruby>配慮<rt>はいりょ</rt></ruby>している。<ruby>航空券<rt>こうくうけん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>。<br>*(Năm 1 lần nghỉ về nước liên tục 2 tuần được, dùng phép có lương. Vé máy bay 3 năm 1 lần công ty chi.)* |
| Phong | (ghi nhanh) <ruby>大変<rt>たいへん</rt></ruby><ruby>手厚<rt>てあつ</rt></ruby>い<ruby>条件<rt>じょうけん</rt></ruby>だと<ruby>感<rt>かん</rt></ruby>じます。<br>*(Em thấy điều kiện rất chu đáo.)* |
| Sato | <ruby>当社<rt>とうしゃ</rt></ruby>はSSW1を<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れて<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、<ruby>制度<rt>せいど</rt></ruby>も<ruby>整<rt>ととの</rt></ruby>えてきた。フォンが<ruby>第<rt>だい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>号<rt>ごう</rt></ruby>になる。<br>*(Bên anh nhận SSW1 năm thứ 3, chế độ cũng hoàn thiện. Phong là số 4.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>のご<ruby>提示<rt>ていじ</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby>とよく<ruby>相談<rt>そうだん</rt></ruby>のうえ、<ruby>2<rt>に</rt></ruby><ruby>週間以内<rt>しゅうかんいない</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>な<ruby>返事<rt>へんじ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Đề nghị hôm nay em sẽ bàn kỹ với gia đình, trong 2 tuần em sẽ trả lời chính thức.)* |
| Sato | <ruby>急<rt>いそ</rt></ruby>がなくていい。きみの<ruby>人生<rt>じんせい</rt></ruby>だ。<ruby>納得<rt>なっとく</rt></ruby>のいく<ruby>決断<rt>けつだん</rt></ruby>をしてくれ。<br>*(Đừng vội. Là cuộc đời em. Hãy ra quyết định mà em chấp nhận.)* |

---

## Tình huống 5 — Phòng nghỉ · 16:00, Phong bàn với Carlos về pros/cons

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、ちょっと<ruby>相談<rt>そうだん</rt></ruby><ruby>乗<rt>の</rt></ruby>ってください。<br>*(Anh Carlos, anh tư vấn em chút.)* |
| Carlos | おう、SSW1<ruby>提示<rt>ていじ</rt></ruby><ruby>聞<rt>き</rt></ruby>いた？<br>*(Ờ, nghe đề nghị SSW1 rồi à?)* |
| Phong | はい、<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>に。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>悪<rt>わる</rt></ruby>くないですが、<ruby>5<rt>ご</rt></ruby><ruby>年契約<rt>ねんけいやく</rt></ruby>って<ruby>長<rt>なが</rt></ruby>いですよね。<br>*(Vâng, 14 giờ. Điều kiện không tệ, nhưng hợp đồng 5 năm dài quá nhỉ.)* |
| Carlos | <ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>は<ruby>長<rt>なが</rt></ruby>いと<ruby>感<rt>かん</rt></ruby>じるか、<ruby>短<rt>みじか</rt></ruby>いと<ruby>感<rt>かん</rt></ruby>じるかは<ruby>目的<rt>もくてき</rt></ruby><ruby>次第<rt>しだい</rt></ruby>。お<ruby>前<rt>まえ</rt></ruby>の<ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なに</rt></ruby>？<br>*(Cảm thấy 5 năm dài hay ngắn tuỳ mục đích. Mục đích của mày là gì?)* |
| Phong | <ruby>正直<rt>しょうじき</rt></ruby><ruby>言<rt>い</rt></ruby>うと、<ruby>2<rt>に</rt></ruby>つあります。<ruby>一<rt>ひと</rt></ruby>つ、ハイフォンに<ruby>自分<rt>じぶん</rt></ruby>の<ruby>整備工場<rt>せいびこうじょう</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>く<ruby>資金<rt>しきん</rt></ruby><ruby>貯<rt>た</rt></ruby>める。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけて<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てたい。<br>*(Thật lòng có 2. Một, tích tiền mở garage riêng ở Hải Phòng. Hai, học kỹ thuật để đào tạo kohai.)* |
| Carlos | (lấy giấy) じゃあ<ruby>整理<rt>せいり</rt></ruby>しよう。<ruby>残<rt>のこ</rt></ruby>るメリット：<ruby>給与<rt>きゅうよ</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>356<rt>さんびゃくごじゅうろく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>役職<rt>やくしょく</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>、トヨタ<ruby>系<rt>けい</rt></ruby>の<ruby>専門技術<rt>せんもんぎじゅつ</rt></ruby>、N2<ruby>取得<rt>しゅとく</rt></ruby><ruby>機会<rt>きかい</rt></ruby>。<br>*(Vậy sắp xếp. Ưu điểm ở lại: lương 356 vạn/năm, kinh nghiệm chức vụ, kỹ thuật chuyên môn Toyota, cơ hội lấy N2.)* |
| Phong | <ruby>残<rt>のこ</rt></ruby>るデメリットは、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>離<rt>はな</rt></ruby>れる<ruby>時間<rt>じかん</rt></ruby>がさらに<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>母<rt>はは</rt></ruby>が<ruby>寂<rt>さび</rt></ruby>しがる、<ruby>結婚<rt>けっこん</rt></ruby><ruby>機会<rt>きかい</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れる、<ruby>体調<rt>たいちょう</rt></ruby><ruby>面<rt>めん</rt></ruby>。<br>*(Nhược điểm ở lại: xa nhà thêm 5 năm, mẹ buồn, lập gia đình muộn, sức khoẻ.)* |
| Carlos | <ruby>帰国<rt>きこく</rt></ruby>メリット：<ruby>家族<rt>かぞく</rt></ruby><ruby>同居<rt>どうきょ</rt></ruby>、ハイフォンの<ruby>友人<rt>ゆうじん</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>貯金<rt>ちょきん</rt></ruby>でベトナム<ruby>基準<rt>きじゅん</rt></ruby>なら<ruby>結構<rt>けっこう</rt></ruby><ruby>大<rt>おお</rt></ruby>きい。<br>*(Lợi về nước: ở với gia đình, bạn bè Hải Phòng, tiết kiệm 3 năm theo chuẩn VN là khá.)* |
| Phong | <ruby>帰国<rt>きこく</rt></ruby>デメリットは、ベトナムでは<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>資格<rt>しかく</rt></ruby>が<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>認<rt>みと</rt></ruby>められない、<ruby>専門技術<rt>せんもんぎじゅつ</rt></ruby>が<ruby>陳腐化<rt>ちんぷか</rt></ruby>、N3<ruby>止<rt>ど</rt></ruby>まりだと<ruby>日系<rt>にっけい</rt></ruby>就<ruby>職<rt>しょく</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい。<br>*(Bất lợi về nước: chứng chỉ 2級 không được công nhận trực tiếp ở VN, kỹ thuật chuyên môn bị lạc hậu, dừng N3 thì khó vào công ty Nhật.)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>のアドバイスは、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>残<rt>のこ</rt></ruby>る<ruby>意義<rt>いぎ</rt></ruby>を<ruby>明確<rt>めいかく</rt></ruby>にすること。<ruby>金<rt>かね</rt></ruby>だけで<ruby>残<rt>のこ</rt></ruby>るなら<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby><ruby>後悔<rt>こうかい</rt></ruby>する。<br>*(Lời khuyên: làm rõ ý nghĩa ở thêm 5 năm. Chỉ vì tiền mà ở thì 5 năm sau hối hận.)* |
| Phong | <ruby>意義<rt>いぎ</rt></ruby>…<br>*(Ý nghĩa...)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>は<ruby>7<rt>なな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>日本<rt>にほん</rt></ruby>にいる。<ruby>意義<rt>いぎ</rt></ruby>は「<ruby>子供<rt>こども</rt></ruby>に<ruby>日<rt>にっ</rt></ruby><ruby>系<rt>けい</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けさせたい」だ。お<ruby>前<rt>まえ</rt></ruby>は<ruby>独身<rt>どくしん</rt></ruby>、<ruby>意義<rt>いぎ</rt></ruby>を<ruby>探<rt>さが</rt></ruby>す<ruby>必要<rt>ひつよう</rt></ruby>がある。<br>*(Anh ở Nhật 7 năm. Ý nghĩa là "cho con học hệ Nhật". Mày độc thân, cần tìm ý nghĩa.)* |

---

## Tình huống 6 — Phòng riêng · 21:00, video call với bố mẹ ở Hải Phòng (cảnh tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Phong | (VN, video call) Mẹ, bố, con muốn bàn chính thức với cả nhà về quyết định SSW1. |
| Mẹ Phong | (VN, ngay lập tức) Con về đi Phong. Mẹ chờ 3 năm rồi. |
| Bố Phong | (VN, bình tĩnh) Vợ, để nó nói. Phong, ngồi xuống nói rõ điều kiện. |
| Phong | (VN) Bố, công ty đề nghị làm 受付主任 — kiểu trưởng quầy lễ tân, lương 23 vạn yên/tháng, năm 356 vạn yên — khoảng 600 triệu đồng/năm. Hợp đồng 5 năm. |
| Mẹ Phong | (VN, ngạc nhiên) 600 triệu một năm? |
| Phong | (VN) Vâng. Năm 1 trừ chi phí ăn ở, gửi về được khoảng 350-400 triệu. 5 năm có thể tích 1.5-1.8 tỷ. |
| Bố Phong | (VN) Đủ mở garage ở Hải Phòng. |
| Phong | (VN) Mà không chỉ tiền bố ơi. Bác Sato giao 後輩 chỉ dạy. Con sẽ học cách quản lý người, không chỉ sửa xe. |
| Mẹ Phong | (VN) Nhưng 5 năm nữa con 30 tuổi. Bao giờ cưới vợ? |
| Phong | (VN, lặng) Mẹ... cô Hương ở quê đã đi lấy chồng năm ngoái. Hồi xưa con với cô ấy có hẹn nhưng con đi Nhật, không giữ được. Lần này con không có ai đợi nữa. |
| Mẹ Phong | (VN, khóc) Đấy là lỗi của mẹ. Mẹ không nên để con đi sớm thế. |
| Phong | (VN) Không phải lỗi của mẹ. Là con chọn. Con không hối hận. Con đã đỗ 自動車整備士 2級 — chứng chỉ Nhật cao nhất. Hồi ở Hải Phòng con không bao giờ mơ đạt được. |
| Bố Phong | (VN) Phong, bố hỏi thẳng: con muốn ở lại hay về? Đừng nghĩ vì mẹ, vì bố. |
| Phong | (VN, ngẩng đầu) Bố ơi, con muốn ở lại. 5 năm nữa con về với 1.5 tỷ và kỹ thuật Toyota chính thống. Mở garage ở Hải Phòng tên Phong-Tomoda với mẫu xe Việt-Nhật. |
| Bố Phong | (VN, gật đầu) Đó là câu trả lời bố chờ. Bố ủng hộ. |
| Mẹ Phong | (VN, lau nước mắt) ...mẹ không vui, nhưng mẹ không cản. Một điều — mỗi tuần phải gọi video. |
| Phong | (VN) Vâng mẹ. Hứa. Mỗi Chủ nhật 9 giờ tối giờ Việt Nam, không trễ. |
| Bố Phong | (VN) Còn một điều: cô Linh hàng xóm có cháu gái 23 tuổi, đang học tiếng Nhật N4. Bố không ép, nhưng nếu con muốn bố giới thiệu, Tết con về gặp thử. |
| Phong | (VN, cười ngại) ...bố tính kế từ lâu rồi à. |
| Bố Phong | (VN, cười) 3 năm rồi. |

---

## Tình huống 7 — Phòng riêng · 22:30, viết メリット・デメリット 表 cuối cùng

| Vai | Lời thoại |
|---|---|
| Phong | (cầm sổ tay, viết thành bảng) <ruby>残留<rt>ざんりゅう</rt></ruby>メリット：<br>*(Ở lại — ưu điểm:)* |
| Phong | <ruby>1<rt>いち</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>1.5<rt>いってんご</rt></ruby><ruby>億<rt>おく</rt></ruby><ruby>VND<rt>ベトナムドン</rt></ruby><ruby>貯金<rt>ちょきん</rt></ruby><ruby>可能<rt>かのう</rt></ruby>。<br>*(1, có thể tiết kiệm 1.5 tỷ VND trong 5 năm.)* |
| Phong | <ruby>2<rt>に</rt></ruby>、トヨタ<ruby>正規<rt>せいき</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>習<ruby>得<rt>とく</rt></ruby>。<br>*(2, học kỹ thuật chính quy Toyota.)* |
| Phong | <ruby>3<rt>さん</rt></ruby>、<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>。<br>*(3, kinh nghiệm chủ nhiệm lễ tân.)* |
| Phong | <ruby>4<rt>よん</rt></ruby>、N2<ruby>取得<rt>しゅとく</rt></ruby><ruby>機会<rt>きかい</rt></ruby>。<br>*(4, cơ hội lấy N2.)* |
| Phong | <ruby>5<rt>ご</rt></ruby>、SSW2<ruby>移行<rt>いこう</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>。<br>*(5, chuẩn bị chuyển SSW2.)* |
| Phong | <ruby>残留<rt>ざんりゅう</rt></ruby>デメリット：<br>*(Ở lại — nhược điểm:)* |
| Phong | <ruby>1<rt>いち</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>離<rt>はな</rt></ruby>れる<ruby>計<rt>けい</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>年<rt>ねん</rt></ruby>。<br>*(1, xa nhà tổng 8 năm.)* |
| Phong | <ruby>2<rt>に</rt></ruby>、<ruby>結婚<rt>けっこん</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>歳<rt>さい</rt></ruby><ruby>以降<rt>いこう</rt></ruby>。<br>*(2, lập gia đình từ sau 30 tuổi.)* |
| Phong | <ruby>3<rt>さん</rt></ruby>、<ruby>母<rt>はは</rt></ruby>の<ruby>体調<rt>たいちょう</rt></ruby><ruby>心配<rt>しんぱい</rt></ruby>。<br>*(3, lo sức khoẻ mẹ.)* |
| Phong | <ruby>4<rt>よん</rt></ruby>、<ruby>愛知<rt>あいち</rt></ruby>冬<ruby>厳<rt>きび</rt></ruby>しい。<br>*(4, mùa đông Aichi khắc nghiệt.)* |
| Phong | (gấp sổ) <ruby>5<rt>ご</rt></ruby><ruby>対<rt>たい</rt></ruby><ruby>4<rt>よん</rt></ruby>、<ruby>数<rt>かず</rt></ruby>ではなく<ruby>重<rt>おも</rt></ruby>みで<ruby>判断<rt>はんだん</rt></ruby>する。<ruby>父<rt>ちち</rt></ruby>の「ええ<ruby>答<rt>こた</rt></ruby>えだ」が<ruby>決<rt>き</rt></ruby>めてくれた。<br>*(5 đối 4, không quyết bằng số mà bằng trọng lượng. Câu "câu trả lời hay" của bố đã giúp em quyết.)* |
| Phong | (lấy điện thoại nhắn LINE cho mẹ) Mẹ ơi, con yêu mẹ. Con sẽ ở lại 5 năm. Hứa giữ sức khoẻ và gọi video Chủ nhật nào cũng được.<br>*(Mẹ ơi, con yêu mẹ. Con sẽ ở lại 5 năm. Hứa giữ sức khoẻ và gọi video Chủ nhật nào cũng được.)* |

---

## Tình huống 8 — Phòng staff · sáng 22/1, báo Sato quyết định

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Trưởng nhà máy, em xin 1 phút được không?)* |
| Sato | おう、フォン。<br>*(Ờ, Phong.)* |
| Phong | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>のうえ、SSW1への<ruby>移行<rt>いこう</rt></ruby>をお<ruby>受<rt>う</rt></ruby>けすることに<ruby>決<rt>き</rt></ruby>めました。<br>*(Em nói kết luận trước. Sau khi bàn với gia đình, em đã quyết tiếp nhận chuyển SSW1.)* |
| Sato | (lặng vài giây, sau đó cười rộng) ありがとう、フォン。<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>代表<rt>だいひょう</rt></ruby>して<ruby>嬉<rt>うれ</rt></ruby>しく<ruby>思<rt>おも</rt></ruby>う。<br>*(Cảm ơn Phong. Thay mặt công ty anh vui mừng.)* |
| Phong | <ruby>正式<rt>せいしき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>の<ruby>日程<rt>にってい</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin trưởng sắp xếp lịch mensetsu chính thức.)* |
| Sato | <ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>本社<rt>ほんしゃ</rt></ruby><ruby>人事部<rt>じんじぶ</rt></ruby><ruby>同席<rt>どうせき</rt></ruby>で<ruby>正式<rt>せいしき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>。<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby><ruby>締結<rt>ていけつ</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>で。<br>*(5/2 lúc 10 giờ, mensetsu chính thức có phòng nhân sự trụ sở. Ký hợp đồng tại chỗ.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em đã rõ.)* |
| Sato | フォン、<ruby>一<rt>ひと</rt></ruby>つ<ruby>言<rt>い</rt></ruby>っておく。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>長<rt>なが</rt></ruby>く<ruby>感<rt>かん</rt></ruby>じることもあるだろう。<ruby>家<rt>いえ</rt></ruby>が<ruby>恋<rt>こい</rt></ruby>しい<ruby>夜<rt>よる</rt></ruby>もあるだろう。<br>*(Phong, anh nói một điều. 5 năm có lúc thấy dài. Có đêm sẽ nhớ nhà.)* |
| Sato | そのときは<ruby>私<rt>わたし</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってほしい。きみは<ruby>同<rt>おな</rt></ruby>じ<ruby>釜<rt>かま</rt></ruby>の<ruby>飯<rt>めし</rt></ruby>を<ruby>食<rt>く</rt></ruby>う<ruby>仲間<rt>なかま</rt></ruby>だ。<br>*(Lúc ấy hãy nói với anh. Em là đồng đội cùng ăn chung nồi cơm.)* |
| Phong | (cúi đầu sâu, mắt đỏ) ありがとうございます、<ruby>工場長<rt>こうじょうちょう</rt></ruby>。<br>*(Em cảm ơn trưởng nhà máy.)* |

---

## Tình huống 9 — Phòng tiếp khách · 5/2 10:00, mensetsu chính thức cùng phòng nhân sự bản trụ sở

| Vai | Lời thoại |
|---|---|
| Trưởng phòng NS | (đưa danh thiếp hai tay) フォンさん、<ruby>本社<rt>ほんしゃ</rt></ruby><ruby>人事部<rt>じんじぶ</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>の<ruby>高橋<rt>たかはし</rt></ruby>でございます。<br>*(Phong-san, tôi là Takahashi, trưởng phòng nhân sự trụ sở.)* |
| Phong | (đỡ hai tay) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。グエン・ヴァン・フォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin nhận. Em là Nguyễn Văn Phong. Hôm nay xin được mong nhờ.)* |
| Takahashi | <ruby>愛知<rt>あいち</rt></ruby>ガレージの<ruby>佐藤<rt>さとう</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>から<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>高<rt>たか</rt></ruby>い<ruby>評価<rt>ひょうか</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いております。<br>*(Tôi đã nghe đánh giá rất cao từ trưởng nhà máy Sato của garage Aichi.)* |
| Phong | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Lời quá khen.)* |
| Takahashi | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つの<ruby>確認<rt>かくにん</rt></ruby>をさせていただきます。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>志望動機<rt>しぼうどうき</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby>のキャリアビジョン。<ruby>三<rt>みっ</rt></ruby>つ、ご<ruby>家族<rt>かぞく</rt></ruby>のご<ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Hôm nay xin xác nhận 3 điều. Một, động cơ. Hai, tầm nhìn nghề nghiệp 5 năm sau. Ba, gia đình đồng ý.)* |
| Phong | <ruby>志望動機<rt>しぼうどうき</rt></ruby>でございます。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>よん</rt></ruby>か<ruby>月間<rt>げつかん</rt></ruby>のTTS<ruby>期間中<rt>きかんちゅう</rt></ruby>、<ruby>整備士<rt>せいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>し、トヨタ<ruby>系<rt>けい</rt></ruby><ruby>整備技術<rt>せいびぎじゅつ</rt></ruby>を<ruby>体系的<rt>たいけいてき</rt></ruby>に<ruby>学<rt>まな</rt></ruby>びました。<br>*(Động cơ. Trong 3 năm 4 tháng TTS em đã lấy chứng chỉ 2級, học có hệ thống kỹ thuật bảo dưỡng hệ Toyota.)* |
| Phong | <ruby>1<rt>いち</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>と<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>むため、SSW1への<ruby>移行<rt>いこう</rt></ruby>を<ruby>希望<rt>きぼう</rt></ruby>いたします。<br>*(Em mong chuyển SSW1 để lấy chứng chỉ 1級 và tích kinh nghiệm hướng dẫn kohai.)* |
| Takahashi | キャリアビジョンは？<br>*(Tầm nhìn nghề nghiệp?)* |
| Phong | <ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby>、SSW2への<ruby>移行<rt>いこう</rt></ruby>を<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れつつ、<ruby>最終的<rt>さいしゅうてき</rt></ruby>にはハイフォン<ruby>市<rt>し</rt></ruby>でトヨタ<ruby>正規<rt>せいき</rt></ruby><ruby>整備技術<rt>ぎじゅつ</rt></ruby>を<ruby>持<rt>も</rt></ruby>つ<ruby>独立<rt>どくりつ</rt></ruby><ruby>整備工場<rt>せいびこうじょう</rt></ruby>を<ruby>開業<rt>かいぎょう</rt></ruby>することを<ruby>目標<rt>もくひょう</rt></ruby>としております。<br>*(5 năm sau, vừa xem xét chuyển SSW2, mục tiêu cuối là mở garage độc lập có kỹ thuật chính quy Toyota tại Hải Phòng.)* |
| Takahashi | <ruby>当社<rt>とうしゃ</rt></ruby>のベトナム<ruby>進出<rt>しんしゅつ</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>とも<ruby>合致<rt>がっち</rt></ruby>しますね。<ruby>将来<rt>しょうらい</rt></ruby><ruby>協業<rt>きょうぎょう</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>もあります。<br>*(Hợp với kế hoạch vào Việt Nam của bên anh. Có thể hợp tác sau này.)* |
| Phong | (ngạc nhiên) ベトナム<ruby>進出<rt>しんしゅつ</rt></ruby>のご<ruby>計画<rt>けいかく</rt></ruby>があるのですか？<br>*(Có kế hoạch vào VN ạ?)* |
| Takahashi | <ruby>2032<rt>にせんさんじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>を<ruby>目処<rt>めど</rt></ruby>にハノイとホーチミンに<ruby>研修<rt>けんしゅう</rt></ruby>センター<ruby>設立<rt>せつりつ</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。フォンさんのような<ruby>方<rt>かた</rt></ruby>は<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>現地責任者<rt>げんちせきにんしゃ</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>です。<br>*(Dự kiến lập trung tâm đào tạo Hà Nội và TPHCM, mục tiêu 2032. Người như Phong-san là ứng viên phụ trách hiện địa tương lai.)* |
| Phong | (cúi đầu sâu) <ruby>大変<rt>たいへん</rt></ruby><ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Em rất được khích lệ.)* |
| Takahashi | ご<ruby>家族<rt>かぞく</rt></ruby>のご<ruby>了解<rt>りょうかい</rt></ruby>は？<br>*(Gia đình đồng ý?)* |
| Phong | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>18<rt>じゅうはち</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>、<ruby>両親<rt>りょうしん</rt></ruby>とビデオ<ruby>通話<rt>つうわ</rt></ruby>で<ruby>正式<rt>せいしき</rt></ruby>に<ruby>合意<rt>ごうい</rt></ruby>いたしました。<ruby>父<rt>ちち</rt></ruby>は<ruby>積極的<rt>せっきょくてき</rt></ruby>に<ruby>賛成<rt>さんせい</rt></ruby>、<ruby>母<rt>はは</rt></ruby>は<ruby>条件付<rt>じょうけんつ</rt></ruby>き――<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>日曜<rt>にちよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>のビデオ<ruby>通話<rt>つうわ</rt></ruby>――で<ruby>了承<rt>りょうしょう</rt></ruby>いたしました。<br>*(Tối 18/1 em đã chính thức bàn với bố mẹ qua video. Bố tích cực ủng hộ, mẹ có điều kiện — video tối Chủ nhật hàng tuần — và đồng ý.)* |
| Takahashi | <ruby>素晴<rt>すば</rt></ruby>らしいご<ruby>家族<rt>かぞく</rt></ruby>です。では、<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>の<ruby>締結<rt>ていけつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>みましょう。<br>*(Gia đình tuyệt vời. Vậy chuyển sang ký hợp đồng.)* |

---

## Tình huống 10 — Phòng tiếp khách · 11:30, đọc và ký 雇用契約書 từng điều

| Vai | Lời thoại |
|---|---|
| Takahashi | (đưa hợp đồng 12 trang) <ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>でございます。<ruby>重要<rt>じゅうよう</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Hợp đồng lao động đây. Em xác nhận từng hạng mục quan trọng.)* |
| Takahashi | <ruby>第一条<rt>だいいちじょう</rt></ruby><ruby>雇用形態<rt>こようけいたい</rt></ruby>：<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>、<ruby>無期雇用<rt>むきこよう</rt></ruby><ruby>正社員<rt>せいしゃいん</rt></ruby><ruby>扱<rt>あつか</rt></ruby>い、<ruby>在留期間<rt>ざいりゅうきかん</rt></ruby>に<ruby>連動<rt>れんどう</rt></ruby>。<br>*(Điều 1 hình thức: SSW1, chính thức không thời hạn, gắn với thời gian lưu trú.)* |
| Phong | <ruby>確認<rt>かくにん</rt></ruby>いたしました。<br>*(Em đã xác nhận.)* |
| Takahashi | <ruby>第二条<rt>だいにじょう</rt></ruby><ruby>業務内容<rt>ぎょうむないよう</rt></ruby>：<ruby>自動車整備士<rt>じどうしゃせいびし</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby>、<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>。<br>*(Điều 2 nội dung: thợ máy ô tô, chủ nhiệm lễ tân, hướng dẫn kohai.)* |
| Takahashi | <ruby>第三条<rt>だいさんじょう</rt></ruby><ruby>給与<rt>きゅうよ</rt></ruby>：<ruby>基本給<rt>きほんきゅう</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>230,000<rt>にじゅうさんまん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>役職手当<rt>やくしょくてあて</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>15,000<rt>いちまんごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>住宅手当<rt>じゅうたくてあて</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>20,000<rt>にまん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>月<rt>つき</rt></ruby><ruby>265,000<rt>にじゅうろくまんごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<br>*(Điều 3 lương: cơ bản 230.000, chức vụ 15.000, nhà ở 20.000, tổng tháng 265.000 yên.)* |
| Phong | <ruby>賞与<rt>しょうよ</rt></ruby>と<ruby>昇給<rt>しょうきゅう</rt></ruby>については…？<br>*(Thưởng và tăng lương?)* |
| Takahashi | <ruby>第四条<rt>だいよんじょう</rt></ruby><ruby>賞与<rt>しょうよ</rt></ruby>：<ruby>年<rt>ねん</rt></ruby><ruby>3.5<rt>さんてんご</rt></ruby>か<ruby>月分<rt>げつぶん</rt></ruby><ruby>業績連動<rt>ぎょうせきれんどう</rt></ruby>。<ruby>第五条<rt>だいごじょう</rt></ruby><ruby>昇給<rt>しょうきゅう</rt></ruby>：<ruby>毎年<rt>まいとし</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>人事<rt>じんじ</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>に<ruby>基<rt>もと</rt></ruby>づく。<br>*(Điều 4 thưởng: năm 3.5 tháng theo kết quả. Điều 5 tăng lương: tháng 4 hàng năm, theo đánh giá.)* |
| Takahashi | <ruby>第六条<rt>だいろくじょう</rt></ruby><ruby>休日<rt>きゅうじつ</rt></ruby>：<ruby>週休<rt>しゅうきゅう</rt></ruby><ruby>2<rt>ふつ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>制<rt>せい</rt></ruby>、<ruby>祝日<rt>しゅくじつ</rt></ruby><ruby>休<rt>やす</rt></ruby>み、<ruby>年末年始<rt>ねんまつねんし</rt></ruby><ruby>9<rt>ここの</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>連休<rt>れんきゅう</rt></ruby>、<ruby>夏季<rt>かき</rt></ruby><ruby>4<rt>よっ</rt></ruby><ruby>日<rt>か</rt></ruby>、ベトナム<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby><ruby>特別休<rt>とくべつきゅう</rt></ruby><ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>。<br>*(Điều 6 ngày nghỉ: 2 ngày/tuần, lễ Nhật, năm mới 9 ngày, hè 4 ngày, Tết VN nghỉ đặc biệt 3 ngày.)* |
| Phong | ベトナム<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby><ruby>特別休<rt>とくべつきゅう</rt></ruby>…<ruby>有給<rt>ゆうきゅう</rt></ruby>ですか？<br>*(Tết VN đặc biệt... có lương không ạ?)* |
| Takahashi | はい、<ruby>有給扱<rt>ゆうきゅうあつか</rt></ruby>い。<ruby>本社<rt>ほんしゃ</rt></ruby>として、<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>の<ruby>本国<rt>ほんごく</rt></ruby><ruby>文化<rt>ぶんか</rt></ruby><ruby>尊重<rt>そんちょう</rt></ruby>を<ruby>明文化<rt>めいぶんか</rt></ruby>しております。<br>*(Vâng, tính lương. Trụ sở đã viết rõ tôn trọng văn hoá quê hương cho nhân viên nước ngoài.)* |
| Phong | (cảm động) ありがとうございます。<br>*(Em cảm ơn.)* |
| Takahashi | <ruby>最後<rt>さいご</rt></ruby>に<ruby>第十二条<rt>だいじゅうにじょう</rt></ruby><ruby>退職<rt>たいしょく</rt></ruby>：<ruby>30<rt>さんじゅう</rt></ruby><ruby>日前<rt>にちまえ</rt></ruby><ruby>書面通知<rt>しょめんつうち</rt></ruby>。<ruby>退職金制度<rt>たいしょくきんせいど</rt></ruby><ruby>有<rt>あ</rt></ruby>り、<ruby>3<rt>さん</rt></ruby><ruby>年以上<rt>ねんいじょう</rt></ruby><ruby>勤続<rt>きんぞく</rt></ruby>で<ruby>支給<rt>しきゅう</rt></ruby>。<br>*(Cuối, điều 12 nghỉ việc: báo bằng văn bản 30 ngày trước. Có chế độ trợ cấp thôi việc, từ 3 năm trở lên.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>いたしました。すべての<ruby>条項<rt>じょうこう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>納得<rt>なっとく</rt></ruby>のうえ<ruby>署名<rt>しょめい</rt></ruby>させていただきます。<br>*(Em đã rõ. Em đã xác nhận toàn bộ điều khoản, ký với sự đồng thuận.)* |
| Phong | (ký bút mực đen) グエン・ヴァン・フォン。<br>*(Nguyễn Văn Phong.)* |
| Takahashi | (đóng dấu công ty) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>付<rt>づ</rt></ruby>けで<ruby>有効<rt>ゆうこう</rt></ruby>。フォンさん、<ruby>正式<rt>せいしき</rt></ruby>に<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>正社員<rt>せいしゃいん</rt></ruby>です。<br>*(Hiệu lực 1/4. Phong-san chính thức là nhân viên chính thức của công ty.)* |
| Sato | (đứng dậy bắt tay) フォン、<ruby>長<rt>なが</rt></ruby>くよろしく。<br>*(Phong, gắn bó lâu dài nhé.)* |
| Phong | (giữ tay bắt 3 giây, đáp lễ) こちらこそ、<ruby>末永<rt>すえなが</rt></ruby>くお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em cũng mong nhờ trưởng dài lâu.)* |

---

## Tình huống 11 — Quán cà phê gần garage · 13:30, Yamada mời Phong ăn mừng

| Vai | Lời thoại |
|---|---|
| Yamada | フォン、<ruby>正式<rt>せいしき</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>締結<rt>ていけつ</rt></ruby>おめでとう。<br>*(Phong, chúc mừng em ký hợp đồng chính thức.)* |
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、ありがとうございます。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>育<rt>そだ</rt></ruby>てていただいたからこその<ruby>本日<rt>ほんじつ</rt></ruby>です。<br>*(Trưởng thợ, em cảm ơn. Vì được trưởng dạy 3 năm mới có hôm nay.)* |
| Yamada | (cười) <ruby>俺<rt>おれ</rt></ruby>は<ruby>道具<rt>どうぐ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>しただけ。<ruby>使<rt>つか</rt></ruby>ったのはきみだ。<br>*(Anh chỉ trao dụng cụ. Sử dụng là em.)* |
| Phong | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>受付主任<rt>うけつけしゅにん</rt></ruby>と<ruby>整備士<rt>せいびし</rt></ruby><ruby>兼務<rt>けんむ</rt></ruby>です。<ruby>不安<rt>ふあん</rt></ruby>もあります。<br>*(Tháng 4 em kiêm chủ nhiệm lễ tân và thợ máy. Cũng lo.)* |
| Yamada | <ruby>不安<rt>ふあん</rt></ruby>がない<ruby>新人<rt>しんじん</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>は<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>い。<ruby>不安<rt>ふあん</rt></ruby>は<ruby>慎重<rt>しんちょう</rt></ruby>さの<ruby>源<rt>みなもと</rt></ruby>だ。<br>*(Chủ nhiệm mới không lo mới đáng sợ. Lo là gốc của cẩn trọng.)* |
| Yamada | <ruby>一<rt>ひと</rt></ruby>つアドバイスをやろう。<ruby>主任<rt>しゅにん</rt></ruby>になったら「<ruby>知<rt>し</rt></ruby>らない」と<ruby>言<rt>い</rt></ruby>うのが<ruby>怖<rt>こわ</rt></ruby>くなる。でも<ruby>知<rt>し</rt></ruby>らないことは「<ruby>確認<rt>かくにん</rt></ruby>します」と<ruby>言<rt>い</rt></ruby>えばいい。<br>*(Một lời khuyên. Lên chủ nhiệm sẽ sợ nói "không biết". Nhưng không biết cứ nói "em sẽ kiểm tra".)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Đó là câu trưởng nhà máy dạy em 3 năm trước.)* |
| Yamada | <ruby>覚<rt>おぼ</rt></ruby>えていたか。<br>*(Em nhớ à.)* |
| Phong | <ruby>初日<rt>しょにち</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>でした。<ruby>3<rt>さん</rt></ruby><ruby>年経<rt>ねんた</rt></ruby>っても<ruby>有効<rt>ゆうこう</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>って、すごいですね。<br>*(Briefing sáng ngày đầu. Câu nói qua 3 năm vẫn còn hiệu lực, tuyệt nhỉ.)* |
| Yamada | <ruby>本当<rt>ほんとう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>は<ruby>古<rt>ふる</rt></ruby>びない。さて、<ruby>祝杯<rt>しゅくはい</rt></ruby>はビールでいい？<br>*(Lời nghề thật không lỗi thời. Nhân tiện, chúc mừng bằng bia được không?)* |
| Phong | はい、<ruby>夜<rt>よる</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby><ruby>無<rt>な</rt></ruby>しなので<ruby>1<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>だけお<ruby>受<rt>う</rt></ruby>けします。<br>*(Vâng, không trực tối nên em xin nhận 1 ly.)* |

---

## Tình huống 12 — Cửa hàng đồ điện · 17:00, mua điện thoại mới gửi mẹ

| Vai | Lời thoại |
|---|---|
| Phong | (vào bigcamera) すみません、<ruby>母<rt>はは</rt></ruby>に<ruby>贈<rt>おく</rt></ruby>る<ruby>携帯電話<rt>けいたいでんわ</rt></ruby>を<ruby>探<rt>さが</rt></ruby>しています。<br>*(Xin lỗi, em đang tìm điện thoại tặng mẹ.)* |
| Staff | お<ruby>母様<rt>かあさま</rt></ruby>はどちらにお<ruby>住<rt>す</rt></ruby>まいですか？<br>*(Mẹ quý khách ở đâu ạ?)* |
| Phong | ベトナムのハイフォン<ruby>市<rt>し</rt></ruby>です。<ruby>毎週<rt>まいしゅう</rt></ruby>ビデオ<ruby>通話<rt>つうわ</rt></ruby>するので、カメラと<ruby>音質<rt>おんしつ</rt></ruby>がよくて、<ruby>操作<rt>そうさ</rt></ruby>が<ruby>簡単<rt>かんたん</rt></ruby>なものが<ruby>希望<rt>きぼう</rt></ruby>です。<br>*(Thành phố Hải Phòng, Việt Nam. Tuần nào cũng video call nên em cần máy camera-âm thanh tốt, thao tác đơn giản.)* |
| Staff | <ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>クラスのこちらの<ruby>機種<rt>きしゅ</rt></ruby>はいかがでしょうか。<ruby>夜間<rt>やかん</rt></ruby><ruby>撮影<rt>さつえい</rt></ruby>もきれいです。<br>*(Mẫu này khoảng 5 vạn yên thế nào? Chụp đêm cũng đẹp.)* |
| Phong | <ruby>分割払<rt>ぶんかつばら</rt></ruby>いはできますか？<br>*(Trả góp được không ạ?)* |
| Staff | <ruby>24<rt>にじゅうよん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>金利<rt>きんり</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>でございます。<ruby>月<rt>つき</rt></ruby><ruby>2,083<rt>にせんはちじゅうさん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<br>*(24 tháng không lãi. Mỗi tháng 2.083 yên.)* |
| Phong | はい、それでお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>本日<rt>ほんじつ</rt></ruby>はSSW1<ruby>契約<rt>けいやく</rt></ruby><ruby>記念<rt>きねん</rt></ruby>ですので、<ruby>包装<rt>ほうそう</rt></ruby>を<ruby>赤<rt>あか</rt></ruby>にしていただけますか。<br>*(Vâng, em chốt vậy. Hôm nay kỷ niệm ký SSW1, gói màu đỏ giúp em được không?)* |
| Staff | おめでとうございます。<ruby>赤<rt>あか</rt></ruby>の<ruby>包装紙<rt>ほうそうし</rt></ruby>でお<ruby>包<rt>つつ</rt></ruby>みいたします。<br>*(Chúc mừng. Em gói giấy đỏ.)* |

---

## Tình huống 13 — Bưu điện · 18:00, gửi quà về Hải Phòng

| Vai | Lời thoại |
|---|---|
| Phong | EMSでハイフォン<ruby>市<rt>し</rt></ruby>に<ruby>送<rt>おく</rt></ruby>りたいです。<br>*(Gửi EMS sang thành phố Hải Phòng giúp em.)* |
| Nhân viên | <ruby>内容物<rt>ないようぶつ</rt></ruby>は？<br>*(Đồ bên trong?)* |
| Phong | <ruby>携帯電話<rt>けいたいでんわ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>台<rt>だい</rt></ruby>、<ruby>母<rt>はは</rt></ruby>への<ruby>贈<rt>おく</rt></ruby>り<ruby>物<rt>もの</rt></ruby>です。<br>*(1 điện thoại di động, quà tặng mẹ.)* |
| Nhân viên | <ruby>金額<rt>きんがく</rt></ruby><ruby>申告<rt>しんこく</rt></ruby>と<ruby>関税<rt>かんぜい</rt></ruby><ruby>計算<rt>けいさん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>2,800<rt>にせんはっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>3<rt>みっ</rt></ruby>か<ruby>日<rt>か</rt></ruby><ruby>以内<rt>いない</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Cần khai giá và tính thuế. 2.800 yên, dự kiến đến trong 3 ngày.)* |
| Phong | カードに<ruby>手紙<rt>てがみ</rt></ruby>も<ruby>入<rt>い</rt></ruby>れていいですか？<br>*(Em được kèm thư trong card không?)* |
| Nhân viên | はい、<ruby>同梱<rt>どうこん</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Vâng, để cùng được.)* |
| Phong | (viết thư tay) <ruby>母<rt>はは</rt></ruby>へ、ビデオ<ruby>通話<rt>つうわ</rt></ruby>がきれいに<ruby>映<rt>うつ</rt></ruby>るように。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>日曜<rt>にちよう</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>電話<rt>でんわ</rt></ruby>します。フォンより。<br>*(Tặng mẹ, để video call hiện rõ. Tối Chủ nhật 9 giờ hàng tuần con sẽ gọi nhất định. Từ Phong.)* |

---

## Tình huống 14 — Ký túc · 22:00, viết nhật ký tổng kết quyết định (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — Phong viết nhật ký riêng cho mình bằng tiếng Việt, vì có những điều khó nói cả bằng tiếng Nhật lẫn ngoài miệng.

| Vai | Lời thoại |
|---|---|
| Phong | (mở sổ tay, viết bằng tiếng Việt) 22/1/2028, 22 giờ. Hôm nay ký 雇用契約書 SSW1. |
| Phong | (viết tiếp) 25 tuổi. Cách Hải Phòng 3.700 km. Từ giờ thêm 5 năm nữa cách quê hương. |
| Phong | (lặng, nhìn ra cửa sổ tuyết) Lúc bố nói "đó là câu trả lời bố chờ", tôi mới biết bố cũng đã chờ tôi tự đứng ra quyết định. Suốt 3 năm bố không bao giờ bảo tôi nên làm gì, chỉ hỏi tôi muốn gì. |
| Phong | (viết) Mẹ khóc. Nhưng cuối cùng mẹ chỉ xin một điều — gọi điện Chủ nhật nào cũng được. Mẹ không xin gì lớn cả. Tôi sẽ giữ. |
| Phong | (viết) Bác Sato bắt tay tôi 3 giây. Lúc bắt tay tôi mới hiểu — "đồng đội cùng ăn chung nồi cơm" không phải lời lịch sự. Bác ấy thật sự coi tôi như thế. |
| Phong | (viết) Carlos hỏi "ý nghĩa của việc ở lại 5 năm là gì". Tôi đã trả lời được. Không phải vì tiền. Là vì tôi muốn 30 tuổi về Hải Phòng với cuốn 整備士1級 trong tay, mở garage Phong-Tomoda, dạy nghề cho thanh niên Hải Phòng đang loay hoay như tôi cách đây 5 năm. |
| Phong | (viết) Tết tôi về. Cô Linh có giới thiệu cháu gái. Bố tính kế từ lâu. Tôi sẽ gặp, không hứa gì, nhưng sẽ gặp. |
| Phong | (gấp sổ, mở Tomoda Notepad điện thoại, viết bằng Nhật) <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>道<rt>みち</rt></ruby>の<ruby>第一日<rt>だいいちにち</rt></ruby>。<br>*(22/1/2028, ngày đầu tiên của con đường mới.)* |
| Phong | (tắt đèn, nằm xuống) Mai dậy 6:30. Còn 9 tuần TTS. Sau đó là cuộc đời mới. |

---

## Đọng lại chương

**Mẫu câu trục chính chương này:**

- **今後の進路についてご相談させていただきたく、お時間を頂戴できればと存じます** — Xin tham vấn về con đường tương lai, mong dành cho em thời gian (xin mensetsu trang trọng).
- **判断材料を整えたく** — Em muốn chuẩn bị tư liệu để quyết (đặt vị thế chủ động chứ không bị động).
- **身に余る条件です/光栄です** — Điều kiện/vinh dự vượt sức em (đáp lễ đề nghị tốt).
- **〜を視野に入れつつ、最終的には〜することを目標としております** — Vừa xem xét..., mục tiêu cuối là... (trình bày kế hoạch dài hạn ở mensetsu).
- **すべての条項を確認し、納得のうえ署名させていただきます** — Em đã xác nhận toàn bộ điều khoản, ký với sự đồng thuận (chốt hợp đồng).
- **末永くお願いいたします** — Mong gắn bó lâu dài (đáp lễ bắt tay sếp).

**Từ vựng & mẫu câu chương này:** 進路・相談・特定技能1号・正社員・契約期間・更新・基本給・賞与・役職手当・住宅手当・有給休暇・帰国休暇・夏季休暇・年末年始・週休2日制・退職金・無期雇用・在留期間・志望動機・キャリアビジョン・面談・雇用契約書・締結・条項・法人保証・無利子貸付・分割返済・配慮・現地責任者・候補・進出・了承・身に余る・末永く.

---

## Bí quyết chương

- **Xin mensetsu phân làm 2 bước**: bước 1 "ご相談" (tham vấn, hỏi điều kiện), bước 2 "正式面談" (chính thức, ký hợp đồng). Đừng nhảy thẳng — sempai Nhật trọng quy trình.
- **Khi nhận đề nghị**: KHÔNG đồng ý tại chỗ ngay cả khi điều kiện tốt. Luôn "家族と相談のうえ〜以内に正式な返事" — vừa thể hiện trách nhiệm gia đình, vừa câu thời gian phân tích.
- **Phân tích pros/cons với đồng kỳ trước**: bàn với gia đình trước khi bàn với đồng kỳ dễ bị cảm xúc lấn át. Bàn với đồng kỳ trước cho rõ logic, sau đó mới về gia đình thuyết phục.
- **Khi báo bố mẹ**: trình bày con số cụ thể (lương vạn yên + tỷ đồng tương đương) — phụ huynh thế hệ trước cần con số cụ thể, không phải khái niệm.
- **Đọc 雇用契約書 từng điều khoản**: keigo "確認いたしました" sau mỗi điều thay vì chỉ ký mù. Tạo ấn tượng chuyên nghiệp.
- **Tâm thế "5 năm là dài hay ngắn tuỳ mục đích"**: nếu chỉ vì tiền sẽ hối hận, cần có "意義" rõ ràng (kỹ thuật, kohai, mục tiêu về VN mở garage).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 進路 | しんろ | TIẾN LỘ | con đường tương lai |
| 相談 | そうだん | TƯƠNG ĐÀM | tham vấn |
| 特定技能1号 | とくていぎのういちごう | ĐẶC ĐỊNH KỸ NĂNG | SSW1 |
| 正社員 | せいしゃいん | CHÍNH XÃ VIÊN | nhân viên chính thức |
| 雇用形態 | こようけいたい | CỐ DỤNG HÌNH THÁI | hình thức tuyển dụng |
| 契約期間 | けいやくきかん | KHẾ ƯỚC KỲ GIAN | thời hạn hợp đồng |
| 更新 | こうしん | CANH TÂN | gia hạn |
| 基本給 | きほんきゅう | CƠ BẢN CẤP | lương cơ bản |
| 賞与 | しょうよ | THƯỞNG DỮ | tiền thưởng |
| 役職手当 | やくしょくてあて | DỊCH CHỨC THỦ ĐƯƠNG | phụ cấp chức vụ |
| 住宅手当 | じゅうたくてあて | TRỤ TRẠCH THỦ ĐƯƠNG | phụ cấp nhà ở |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HÀ | nghỉ phép có lương |
| 帰国休暇 | きこくきゅうか | QUY QUỐC HƯU HÀ | nghỉ về nước |
| 夏季休暇 | かききゅうか | HẠ QUÝ HƯU HÀ | nghỉ hè |
| 年末年始 | ねんまつねんし | NIÊN MẠT NIÊN THUỶ | cuối năm đầu năm |
| 週休2日制 | しゅうきゅうふつかせい | CHU HƯU CHẾ | chế độ nghỉ 2 ngày/tuần |
| 退職金 | たいしょくきん | THOÁI CHỨC KIM | tiền trợ cấp thôi việc |
| 無期雇用 | むきこよう | VÔ KỲ CỐ DỤNG | tuyển dụng không kỳ hạn |
| 在留期間 | ざいりゅうきかん | TẠI LƯU KỲ GIAN | thời hạn lưu trú |
| 志望動機 | しぼうどうき | CHÍ VỌNG ĐỘNG CƠ | động cơ ứng tuyển |
| キャリアビジョン | キャリアビジョン | — | tầm nhìn nghề nghiệp |
| 面談 | めんだん | DIỆN ĐÀM | phỏng vấn |
| 雇用契約書 | こようけいやくしょ | CỐ DỤNG KHẾ ƯỚC THƯ | hợp đồng lao động |
| 締結 | ていけつ | ĐẾ KẾT | ký kết |
| 条項 | じょうこう | ĐIỀU HẠNG | điều khoản |
| 法人保証 | ほうじんほしょう | PHÁP NHÂN BẢO CHỨNG | bảo lãnh pháp nhân |
| 無利子貸付 | むりしかしつけ | VÔ LỢI TỬ THẢI PHÓ | cho vay không lãi |
| 分割返済 | ぶんかつへんさい | PHÂN CÁT PHẢN TẾ | trả góp |
| 配慮 | はいりょ | PHỐI LỰ | quan tâm, sắp xếp |
| 現地責任者 | げんちせきにんしゃ | HIỆN ĐỊA TRÁCH NHIỆM GIẢ | phụ trách hiện địa |
| 候補 | こうほ | HẬU BỔ | ứng viên |
| 進出 | しんしゅつ | TIẾN XUẤT | tiến vào, mở rộng |
| 了承 | りょうしょう | LIỄU THỪA | đồng ý |
| 身に余る | みにあまる | THÂN DƯ | vượt sức |
| 光栄 | こうえい | QUANG VINH | vinh dự |
| 末永く | すえながく | MẠT VĨNH | dài lâu |
| 視野 | しや | THỊ DÃ | tầm nhìn |
| 業績連動 | ぎょうせきれんどう | NGHIỆP TÍCH LIÊN ĐỘNG | gắn với kết quả |
| メリット | メリット | — | ưu điểm |
| デメリット | デメリット | — | nhược điểm |
| 同期 | どうき | ĐỒNG KỲ | bạn cùng đợt |
| 独立 | どくりつ | ĐỘC LẬP | độc lập |
| 開業 | かいぎょう | KHAI NGHIỆP | mở nghề, mở quán |
| 協業 | きょうぎょう | HIỆP NGHIỆP | hợp tác |
| 文化尊重 | ぶんかそんちょう | VĂN HOÁ TÔN TRỌNG | tôn trọng văn hoá |
| 旧正月 | きゅうしょうがつ | CỰU CHÍNH NGUYỆT | Tết Nguyên Đán |
| 明文化 | めいぶんか | MINH VĂN HOÁ | viết rõ thành văn |
| 励み | はげみ | LỆ | sự khích lệ |
| 寮 | りょう | LIÊU | ký túc |
| 賃貸 | ちんたい | NHIỄM THẢI | thuê (nhà) |
| 保証人 | ほしょうにん | BẢO CHỨNG NHÂN | người bảo lãnh |
| 初期費用 | しょきひよう | SƠ KỲ PHÍ DỤNG | phí ban đầu |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (845000012, 800000045, NULL, 'markdown_book', 'T12. Tổng kết 3 năm — bonenkai chia tay TTS chuyển sang SSW1 (TTS終了・SSW1開始)', '# Sách thực tập sinh ô tô · T12. Tổng kết 3 năm — bonenkai chia tay TTS chuyển sang SSW1 (TTS終了・SSW1開始)

> **Mục tiêu nhân vật:** Phong (25 tuổi, Hải Phòng) khép lại 3 năm TTS và bước sang SSW1 kiêm chủ nhiệm lễ tân tại garage Toyota Aichi. Học các mẫu hội thoại tổng kết 3 năm: phát biểu cảm ơn trong tiệc tổng kết (締めの挨拶), giới thiệu gia đình từ VN sang với cấp trên (家族紹介), 乾杯の音頭 (đề xướng nâng cốc), nhận quà từ cấp trên và đáp lễ (頂戴いたします), phiên dịch hai chiều Nhật–Việt cho người thân, và mẫu câu nhậm chức trước朝礼 (受付主任就任挨拶).

## Bối cảnh

Ngày 31 tháng 3 năm 2028, izakaya gần ga Toyota-shi, Aichi. Phong kết thúc 3 năm hợp đồng TTS tại garage Toyota Aichi và 1/4 chính thức chuyển sang SSW1 kiêm chủ nhiệm lễ tân. Trình độ tiếng Nhật N3 (sắp thi N2 tháng 7). Chương cuối của bộ Phong tập trung các mẫu câu giao tiếp trong tiệc tổng kết: chào khách đặc biệt (gia đình bố mẹ từ VN sang lần đầu), nâng cốc trang trọng, phát biểu cảm ơn theo cấu trúc Nhật, nhận chìa khoá ngăn dụng cụ riêng có đáp lễ, dịch hai chiều cho bố mẹ gặp Sato-Yamada, và phát biểu nhậm chức sáng 1/4 ở vị trí mới.

---

## Tình huống 1 — Ký túc · 6:30, độc thoại đối chiếu đồng phục TTS-SSW1

| Vai | Lời thoại |
|---|---|
| Phong | (nhìn hai bộ đồng phục treo song song) <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby>、TTS<ruby>最後<rt>さいご</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>です。<br>*(Ngày 31/3/2028, sáng cuối cùng của TTS.)* |
| Phong | このベージュの<ruby>作業着<rt>さぎょうぎ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、エンジンオイルとブレーキ<ruby>粉<rt>ふん</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby>かぶってきました。<br>*(Bộ workwear màu be này 3 năm hứng dầu máy và bụi phanh mỗi ngày.)* |
| Phong | (đặt tay lên đồng phục mới) <ruby>明日<rt>あした</rt></ruby>からの<ruby>制服<rt>せいふく</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>。<ruby>朝<rt>あさ</rt></ruby>はネイビーの<ruby>受付制服<rt>うけつけせいふく</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby>は<ruby>整備<rt>せいび</rt></ruby><ruby>作業着<rt>さぎょうぎ</rt></ruby>に<ruby>着替<rt>きが</rt></ruby>える。<br>*(Đồng phục từ mai 2 loại. Sáng đồng phục lễ tân navy, chiều thay sang workwear sửa xe.)* |
| Phong | <ruby>制服<rt>せいふく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>は、<ruby>2<rt>ふた</rt></ruby>つの<ruby>役割<rt>やくわり</rt></ruby>の<ruby>象徴<rt>しょうちょう</rt></ruby>です。<br>*(2 đồng phục là biểu tượng 2 vai trò.)* |
| Phong | (VN, tự nhủ) Hôm nay bố mẹ sang Nagoya. 25 tuổi đón bố mẹ trên đất Nhật — chuyện 3 năm trước không nghĩ tới. |

---

## Tình huống 2 — Sân bay Chubu · 11:00, đón bố mẹ từ VN sang lần đầu

| Vai | Lời thoại |
|---|---|
| Bố Phong | (VN, vẫy tay) Phong! Bố mẹ đây! |
| Phong | (VN, chạy lại, ôm) Bố! Mẹ! Lần đầu bố mẹ ra nước ngoài, mệt không? |
| Mẹ Phong | (VN, ngơ ngác) Mẹ ngủ trên máy bay không được. Sân bay rộng quá Phong. |
| Phong | (VN) Đây là Chubu, sân bay Nagoya. 3 năm trước con đáp xuống đây với cái cặp 10 kg, có bác Sato đến đón. |
| Bố Phong | (VN, nhìn quanh) Sạch quá. Cửa kính sáng bóng. Hải Phòng đi 10 năm nữa chưa chắc bằng. |
| Phong | (VN) Bố ơi, tối nay là tiệc 送別会 — tiệc tiễn TTS — của con. Bác Sato mời cả bố mẹ. |
| Mẹ Phong | (VN, lo) Mẹ không biết tiếng Nhật! Phải làm sao? |
| Phong | (VN, cười) Con dịch hết cho mẹ. Mẹ chỉ cần ngồi, cười, gật đầu là được. Người Nhật đánh giá cao mẹ chỉ vì mẹ đã sinh và nuôi con. |
| Bố Phong | (VN, gật) Có quà cho bác Sato chưa? |
| Phong | (VN) Có. Trà sen Tây Hồ và tranh sơn mài Hải Phòng — quà bố mẹ chọn gửi sang trước. Con đã chuẩn bị giấy gói đỏ Nhật. |

---

## Tình huống 3 — Trên shuttle Meitetsu · 12:30, dạy bố mẹ vài câu chào keigo cơ bản

| Vai | Lời thoại |
|---|---|
| Phong | (VN) Mẹ, con dạy mẹ 3 câu thôi. Câu 1: "Hajimemashite" — rất hân hạnh. |
| Mẹ Phong | はじめまして… はじめまして。<br>*(Hajimemashite... Hajimemashite.)* |
| Phong | (VN) Tốt! Câu 2: "Osewa ni narimashita" — cảm ơn đã chăm sóc. Câu này quan trọng nhất. |
| Mẹ Phong | お<ruby>世話<rt>せわ</rt></ruby>になりました…<br>*(Osewa ni narimashita...)* |
| Phong | (VN) Câu 3: "Yoroshiku onegai shimasu" — mong nhờ. Dùng khi rời. |
| Mẹ Phong | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>頭<rt>あたま</rt></ruby><ruby>痛<rt>いた</rt></ruby>くなった、Phong<ruby>ơi<rt>ơi</rt></ruby>。<br>*(Yoroshiku onegai shimasu. Đau đầu rồi Phong ơi.)* |
| Bố Phong | (VN, đã chuẩn bị từ trước) Phong, bố tập rồi: "<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>息子<rt>むすこ</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました". Đúng không? |
| Phong | (VN, gật) Vâng bố, đúng rồi. Sato-san chính là sếp 工場長 đó bố. |
| Bố Phong | (VN, thở phào) Bố sợ lẫn tên. Đoạn còn lại con dịch giùm. |
| Phong | (VN) Vâng. Bố cứ chào "<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>息子<rt>むすこ</rt></ruby>をお<ruby>世話<rt>せわ</rt></ruby>になりました" là được. Đoạn còn lại con dịch. |

---

## Tình huống 4 — Trước izakaya "Toyota-tei" · 17:30, gặp Carlos đến từ Nagoya

| Vai | Lời thoại |
|---|---|
| Carlos | (vẫy tay từ ngoài) フォーン！<ruby>今夜<rt>こんや</rt></ruby>の<ruby>主役<rt>しゅやく</rt></ruby>！<br>*(Phong-ng! Vai chính tối nay!)* |
| Phong | カルロスさん！<ruby>名古屋<rt>なごや</rt></ruby><ruby>市内<rt>しない</rt></ruby>からどのくらい？<br>*(Anh Carlos! Từ trung tâm Nagoya bao lâu?)* |
| Carlos | <ruby>地下鉄<rt>ちかてつ</rt></ruby>と<ruby>名鉄<rt>めいてつ</rt></ruby>で<ruby>50<rt>ごじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>来<rt>く</rt></ruby>るって<ruby>決<rt>き</rt></ruby>めてた。<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>来<rt>き</rt></ruby>てくれって<ruby>頼<rt>たの</rt></ruby>んでも<ruby>来<rt>こ</rt></ruby>てくれた<ruby>同志<rt>どうし</rt></ruby>だからな。<br>*(Tàu điện ngầm và Meitetsu 50 phút. Anh quyết chắc chắn đến. 3 năm trước em là người chịu đến khi anh mời, đồng chí mà.)* |
| Phong | こちら<ruby>父<rt>ちち</rt></ruby>のミン、<ruby>母<rt>はは</rt></ruby>のチンです。<br>*(Đây là bố em — bác Minh, mẹ em — bác Chinh.)* |
| Carlos | (cúi sâu, nói tiếng Việt bập bẹ) <ruby>Chào<rt>ちゃお</rt></ruby> <ruby>bác<rt>ばっく</rt></ruby>！<ruby>Cháu<rt>ちゃう</rt></ruby> <ruby>Carlos<rt>カルロス</rt></ruby>、<ruby>Brazil<rt>ブラジル</rt></ruby>。<br>*(Chào bác! Cháu Carlos, Brazil.)* |
| Mẹ Phong | (VN, ngạc nhiên) Trời, Carlos nói tiếng Việt được! |
| Carlos | (cười, tiếng Nhật) フォンに<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>教<rt>おそ</rt></ruby>わりました。「こんにちは」と「<ruby>美味<rt>おい</rt></ruby>しい」と「<ruby>乾杯<rt>かんぱい</rt></ruby>」だけですが。<br>*(Em học Phong 3 năm. Mỗi "xin chào", "ngon", "cạn ly" thôi.)* |
| Phong | (dịch sang VN cho mẹ) Anh Carlos bảo học con 3 năm, biết "xin chào", "ngon", "cạn ly". |
| Mẹ Phong | (VN, cười) Đủ để ăn nhậu rồi. |

---

## Tình huống 5 — Bàn izakaya · 18:00, giới thiệu bố mẹ với Sato

| Vai | Lời thoại |
|---|---|
| Sato | (đứng dậy, cúi đầu) <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>佐藤<rt>さとう</rt></ruby>でございます。フォンさんの<ruby>工場長<rt>こうじょうちょう</rt></ruby>として<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>お世話<rt>おせわ</rt></ruby>になっております。<br>*(Rất hân hạnh, tôi là Sato. Với tư cách trưởng nhà máy của Phong, đã được hai bác cho 3 năm.)* |
| Bố Phong | (đứng dậy, cúi đầu 90 độ) <ruby>佐藤<rt>さとう</rt></ruby>さん！<ruby>息子<rt>むすこ</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Sato-san! Cảm ơn ông đã chăm con trai tôi 3 năm. Thật sự cảm ơn.)* |
| Sato | (cúi đáp lễ) こちらこそ、ミンさん。フォンさんがいてくれたから、<ruby>当社<rt>とうしゃ</rt></ruby>も<ruby>多<rt>おお</rt></ruby>くを<ruby>学<rt>まな</rt></ruby>ばせていただきました。<br>*(Tôi mới phải cảm ơn, ông Minh. Có Phong chúng tôi học được rất nhiều.)* |
| Phong | (dịch sang VN cho bố) Bác Sato bảo "chúng tôi mới cảm ơn, vì có Phong nên công ty học được nhiều". |
| Mẹ Phong | (cúi nhẹ, đọc câu đã thuộc) はじめまして。お<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Hajimemashite. Osewa ni narimashita.)* |
| Sato | (cười, cúi đáp) チンさん、ようこそ<ruby>愛知<rt>あいち</rt></ruby>へ。<ruby>家内<rt>かない</rt></ruby>もフォンさんがベトナム<ruby>料理<rt>りょうり</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってくれた<ruby>時<rt>とき</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby><ruby>感動<rt>かんどう</rt></ruby>しておりました。<br>*(Bác Chinh, chào mừng đến Aichi. Vợ tôi rất cảm động lúc Phong nấu món Việt Nam mời.)* |
| Phong | (dịch) Vợ bác Sato rất cảm động lúc con nấu món Việt mời. |
| Mẹ Phong | (VN, mắt đỏ) Phong nấu được món gì? |
| Phong | (VN) Phở bò mẹ ơi. Con học mẹ qua YouTube. |
| Vợ Sato | (đến bàn, đưa món) チンさん、これフォンさんに<ruby>習<rt>なら</rt></ruby>った<ruby>春巻<rt>はるま</rt></ruby>きです。<ruby>味<rt>あじ</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Bác Chinh, đây là nem em học Phong. Bác nếm thử.)* |
| Mẹ Phong | (VN, sau khi nếm) Trời ơi, đúng vị Hải Phòng! Phong, mày dạy được vợ bác Sato à? |

---

## Tình huống 6 — Bàn chính · 18:15, Sato đề xướng nâng cốc

| Vai | Lời thoại |
|---|---|
| Sato | (đứng dậy, cầm cốc) では、<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vậy xin phép tôi đề xướng nâng cốc.)* |
| Sato | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会<rt>かい</rt></ruby>には<ruby>3<rt>みっ</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>がございます。<br>*(Buổi hôm nay có 3 ý nghĩa.)* |
| Sato | <ruby>一<rt>ひと</rt></ruby>つ、フォンさんのTTS<ruby>契約満了<rt>けいやくまんりょう</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>う<ruby>会<rt>かい</rt></ruby>として。<ruby>二<rt>ふた</rt></ruby>つ、SSW1<ruby>移行<rt>いこう</rt></ruby>および<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby><ruby>祝賀会<rt>しゅくがかい</rt></ruby>として。<ruby>三<rt>みっ</rt></ruby>つ、ベトナムからお<ruby>越<rt>こ</rt></ruby>しのご<ruby>両親<rt>りょうしん</rt></ruby><ruby>歓迎会<rt>かんげいかい</rt></ruby>として。<br>*(Một, mừng Phong kết thúc hợp đồng TTS. Hai, mừng chuyển SSW1 và nhậm chức chủ nhiệm lễ tân. Ba, đón bố mẹ Phong từ Việt Nam sang.)* |
| Cả bàn | (vỗ tay) |
| Sato | グラスをお<ruby>持<rt>も</rt></ruby>ちください...<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Xin mời cầm cốc... cạn ly!)* |
| Cả bàn | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Bố Phong | (đập cốc với Phong) Cạn! Con trai bố! |
| Mẹ Phong | (đập nhẹ với vợ Sato) かんぱい！<br>*(Kanpai!)* |
| Carlos | (đập cốc với Bố Phong) ミンさん、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Bác Minh, cạn ly!)* |

---

## Tình huống 7 — Bàn chính · 19:00, Phong phát biểu cảm ơn 3 năm

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phong-san, xin một lời.)* |
| Phong | (đứng dậy, đặt cốc xuống) はい、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Vâng, xin phép dành chút thời gian.)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>21<rt>にじゅういち</rt></ruby><ruby>歳<rt>さい</rt></ruby>のわたしはN5<ruby>合格<rt>ごうかく</rt></ruby><ruby>直後<rt>ちょくご</rt></ruby>、<ruby>整備<rt>せいび</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>ゼロ、<ruby>不安<rt>ふあん</rt></ruby>でいっぱいでした。<br>*(11/2025, 3 năm trước, em 21 tuổi, vừa đỗ N5, kinh nghiệm sửa xe bằng 0, lo lắng đầy mình.)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ご</rt></ruby>の<ruby>今<rt>いま</rt></ruby>、<ruby>自動車整備士<rt>じどうしゃせいびし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、N3<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>内定<rt>ないてい</rt></ruby>。これは<ruby>皆様<rt>みなさま</rt></ruby>のおかげです。<br>*(3 năm sau, em có chứng chỉ 2級, đỗ N3, được tuyển chủ nhiệm lễ tân. Tất cả nhờ mọi người.)* |
| Phong | <ruby>佐藤工場長<rt>さとうこうじょうちょう</rt></ruby>には<ruby>父親<rt>ちちおや</rt></ruby>のように<ruby>支<rt>ささ</rt></ruby>えていただきました。<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>には<ruby>整備技術<rt>せいびぎじゅつ</rt></ruby>のすべてを<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Trưởng nhà máy Sato đỡ em như cha. Trưởng thợ Yamada dạy em mọi kỹ thuật sửa xe.)* |
| Phong | カルロスさんは<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>同志<rt>どうし</rt></ruby>として、<ruby>泣<rt>な</rt></ruby>かないで<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>すことを<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Anh Carlos với tư cách đồng chí nước ngoài đã dạy em không khóc mà ghi lại.)* |
| Phong | そして、<ruby>本日<rt>ほんじつ</rt></ruby>ベトナムからお<ruby>越<rt>こ</rt></ruby>しの<ruby>両親<rt>りょうしん</rt></ruby>へ。<br>*(Và với bố mẹ từ Việt Nam sang hôm nay.)* |
| Phong | (quay sang bố mẹ, chuyển sang tiếng Việt) Bố ơi, mẹ ơi. 3 năm trước con đi với cái cặp 10 ký và mộng mơ. Hôm nay con đứng đây với chứng chỉ Nhật và hợp đồng 5 năm. Tất cả vì bố mẹ cho con được đi. |
| Phong | (chuyển lại Nhật) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>よりSSW1と<ruby>受付主任<rt>うけつけしゅにん</rt></ruby>に<ruby>就任<rt>しゅうにん</rt></ruby>いたします。<ruby>責任<rt>せきにん</rt></ruby>は<ruby>重<rt>おも</rt></ruby>く、<ruby>不安<rt>ふあん</rt></ruby>もあります。<br>*(Từ 1/4 em nhậm SSW1 và chủ nhiệm lễ tân. Trách nhiệm nặng, cũng có lo.)* |
| Phong | しかし、<ruby>皆様<rt>みなさま</rt></ruby>が<ruby>支<rt>ささ</rt></ruby>えてくださること、ベトナムにいる<ruby>家族<rt>かぞく</rt></ruby>が<ruby>応援<rt>おうえん</rt></ruby>してくれること、それで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Nhưng có mọi người ủng hộ, gia đình Việt Nam tiếp sức, vậy là đủ.)* |
| Phong | (cúi đầu sâu, giữ 3 giây) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(3 năm, thật sự cảm ơn. Từ giờ cũng xin được mong nhờ.)* |
| Cả bàn | (vỗ tay rất to) |
| Bố Phong | (VN, mắt đỏ) Phong, mày làm bố tự hào quá. |

---

## Tình huống 8 — Bàn chính · 19:30, nhận chìa khoá ngăn dụng cụ riêng (mẫu nhận quà)

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、<ruby>会社<rt>かいしゃ</rt></ruby>からお<ruby>渡<rt>わた</rt></ruby>ししたいものがあります。<br>*(Phong-san, công ty có cái muốn trao em.)* |
| Phong | はい、<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Vâng, là gì ạ?)* |
| Sato | (đưa hộp gỗ bằng hai tay) <ruby>専用<rt>せんよう</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby>キャビネットの<ruby>鍵<rt>かぎ</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>本目<rt>ほんめ</rt></ruby>です。<br>*(Chìa khoá ngăn dụng cụ riêng, cái thứ 2.)* |
| Phong | (đỡ bằng hai tay, cúi đầu) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Em xin nhận.)* |
| Sato | <ruby>1<rt>いっ</rt></ruby><ruby>本目<rt>ぽんめ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>取得時<rt>しゅとくじ</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>した<ruby>共用<rt>きょうよう</rt></ruby><ruby>区画<rt>くかく</rt></ruby>の<ruby>鍵<rt>かぎ</rt></ruby>でした。<br>*(Cái 1 là chìa khoá ngăn chung trao lúc em lấy 2級.)* |
| Sato | <ruby>2<rt>に</rt></ruby><ruby>本目<rt>ほんめ</rt></ruby>はSSW1<ruby>移行<rt>いこう</rt></ruby>と<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>の<ruby>記念<rt>きねん</rt></ruby>として、<ruby>専用<rt>せんよう</rt></ruby><ruby>区画<rt>くかく</rt></ruby>の<ruby>鍵<rt>かぎ</rt></ruby>。<ruby>名前<rt>なまえ</rt></ruby><ruby>入<rt>い</rt></ruby>りの<ruby>銘板<rt>めいばん</rt></ruby>もキャビネットに<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けてあります。<br>*(Cái 2 kỷ niệm chuyển SSW1 và nhậm chủ nhiệm lễ tân, là chìa khoá ngăn riêng. Bảng tên cũng gắn vào tủ.)* |
| Phong | (mở hộp, thấy chìa khoá đồng kèm tag khắc tên) <ruby>NGUYỄN<rt>グエン</rt></ruby> <ruby>VĂN<rt>ヴァン</rt></ruby> <ruby>PHONG<rt>フォン</rt></ruby>…<br>*(Nguyễn Văn Phong...)* |
| Sato | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>正社員<rt>せいしゃいん</rt></ruby>として<ruby>4<rt>よん</rt></ruby><ruby>人目<rt>にんめ</rt></ruby>、<ruby>受付主任<rt>うけつけしゅにん</rt></ruby>としては<ruby>初<rt>はじ</rt></ruby>めての<ruby>外国人<rt>がいこくじん</rt></ruby>です。<br>*(Em là người thứ 4 làm nhân viên chính thức nước ngoài, người đầu tiên làm chủ nhiệm lễ tân nước ngoài.)* |
| Phong | (lặng vài giây, cảm động) <ruby>初<rt>はじ</rt></ruby>めての<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>受付主任<rt>うけつけしゅにん</rt></ruby>…<ruby>道<rt>みち</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>開<rt>ひら</rt></ruby>く<ruby>責任<rt>せきにん</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じます。<br>*(Người đầu tiên... em cảm nhận trách nhiệm mở đường.)* |
| Sato | <ruby>道<rt>みち</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>開<rt>ひら</rt></ruby>くのは<ruby>大変<rt>たいへん</rt></ruby>です。でも、きみのあとに<ruby>来<rt>く</rt></ruby>る<ruby>外国人<rt>がいこくじん</rt></ruby>スタッフが<ruby>楽<rt>らく</rt></ruby>になる。<ruby>頼<rt>たの</rt></ruby>みます。<br>*(Mở đường vất vả. Nhưng nhân viên nước ngoài đến sau em sẽ dễ hơn. Nhờ em.)* |
| Phong | <ruby>必<rt>かなら</rt></ruby>ず<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>務<rt>つと</rt></ruby>めます。<ruby>頂<rt>いただ</rt></ruby>いた<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>の<ruby>鍵<rt>かぎ</rt></ruby>、<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Em nhất định làm tròn. 2 chìa khoá được nhận em giữ gìn cả đời.)* |

---

## Tình huống 9 — Bàn phụ · 20:00, bố mẹ gặp Yamada và nói chuyện cơ khí

| Vai | Lời thoại |
|---|---|
| Yamada | (đến bàn bố mẹ, đưa danh thiếp 2 tay) ミンさん、<ruby>整備士長<rt>せいびしちょう</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>です。フォンさんに<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>整備<rt>せいび</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えました。<br>*(Bác Minh, tôi là Yamada trưởng thợ. Tôi dạy Phong sửa xe 3 năm.)* |
| Bố Phong | (cúi 90 độ) <ruby>山田<rt>やまだ</rt></ruby>さん！<ruby>息子<rt>むすこ</rt></ruby>に<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてくれてありがとう。 (VN với Phong) Con dịch tiếp đi! |
| Phong | (dịch sang Nhật) <ruby>父<rt>ちち</rt></ruby>は「<ruby>息子<rt>むすこ</rt></ruby>に<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただき<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Bố em bảo "Cảm ơn ông đã dạy kỹ thuật cho con trai tôi".)* |
| Phong | <ruby>父<rt>ちち</rt></ruby>はハイフォン<ruby>港<rt>こう</rt></ruby>で<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>機械工<rt>きかいこう</rt></ruby>でした。<br>*(Bố em làm thợ cơ khí ở cảng Hải Phòng 30 năm.)* |
| Yamada | (mắt sáng lên) ほう、<ruby>機械工<rt>きかいこう</rt></ruby>のお<ruby>父様<rt>とうさま</rt></ruby>ですか。フォンの<ruby>手<rt>て</rt></ruby>つきが<ruby>初日<rt>しょにち</rt></ruby>から<ruby>素人<rt>しろうと</rt></ruby>じゃないと<ruby>感<rt>かん</rt></ruby>じていました。お<ruby>父様<rt>とうさま</rt></ruby>の<ruby>遺伝<rt>いでん</rt></ruby>ですね。<br>*(Ồ, bố làm cơ khí à. Anh thấy tay nghề Phong từ ngày đầu không phải kẻ nghiệp dư. Là di truyền từ bố.)* |
| Phong | (dịch sang VN) Bác Yamada bảo từ ngày đầu thấy tay con không phải kẻ nghiệp dư, là di truyền từ bố. |
| Bố Phong | (VN, mắt đỏ, đưa quà) Quà này tôi mang từ Hải Phòng. Trà sen Tây Hồ và tranh sơn mài. Con dịch giùm. |
| Phong | (dịch sang Nhật) <ruby>父<rt>ちち</rt></ruby>からのお<ruby>土産<rt>みやげ</rt></ruby>です。<ruby>西<rt>にし</rt></ruby><ruby>湖<rt>こ</rt></ruby>の<ruby>蓮<rt>はす</rt></ruby><ruby>茶<rt>ちゃ</rt></ruby>とハイフォンの<ruby>漆絵<rt>うるしえ</rt></ruby>です。<br>*(Quà của bố em. Trà sen Tây Hồ và tranh sơn mài Hải Phòng.)* |
| Yamada | (đỡ 2 tay) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>家宝<rt>かほう</rt></ruby>として<ruby>大切<rt>たいせつ</rt></ruby>にいたします。<br>*(Em xin nhận. Em sẽ giữ như bảo vật gia đình.)* |

---

## Tình huống 10 — Bàn chính · 20:30, video call cho bà nội ở quê (cảnh song ngữ)

| Vai | Lời thoại |
|---|---|
| Mẹ Phong | (VN) Phong, gọi cho bà nội đi, bà chờ. |
| Phong | (VN) Vâng mẹ. (mở video call) |
| Bà nội Phong | (VN, qua màn hình) Phong cháu ngoan của bà! Bà nhìn thấy cháu rồi! |
| Phong | (VN) Bà ơi! Cháu đang ở tiệc tổng kết bên Nhật, bố mẹ cũng đây. |
| Bà nội | (VN) Cháu cho bà thấy ông Sato. Bố cháu kể nhiều quá! |
| Phong | (vẫy Sato sang) <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>祖母<rt>そぼ</rt></ruby>からの<ruby>挨拶<rt>あいさつ</rt></ruby>です。<br>*(Trưởng nhà máy, lời chào từ bà nội em.)* |
| Sato | (ghé màn hình, vẫy tay) おばあ<ruby>様<rt>さま</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして！<ruby>佐藤<rt>さとう</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。フォンさんは<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>息子<rt>むすこ</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>です。<br>*(Bà ơi, rất hân hạnh! Tôi tên Sato. Phong-san như con trai quý của chúng tôi.)* |
| Phong | (dịch sang VN) Bác Sato chào bà, bảo coi cháu như con trai. |
| Bà nội | (VN, lau nước mắt) Ông Sato ơi, bà ngoài 80 rồi, không sống lâu được. Nhờ ông coi sóc cháu tôi giúp. |
| Phong | (dịch sang Nhật) <ruby>祖母<rt>そぼ</rt></ruby>は<ruby>80<rt>はちじゅう</rt></ruby><ruby>歳<rt>さい</rt></ruby><ruby>過<rt>す</rt></ruby>ぎ、<ruby>長<rt>なが</rt></ruby>くないかもしれない、<ruby>孫<rt>まご</rt></ruby>をどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いしますと<ruby>申<rt>もう</rt></ruby>しております。<br>*(Bà bảo đã ngoài 80 có thể không lâu nữa, mong bác giúp đỡ cháu.)* |
| Sato | (cúi đầu trước camera) おばあ<ruby>様<rt>さま</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ずお<ruby>孫<rt>まご</rt></ruby>さんを<ruby>大切<rt>たいせつ</rt></ruby>にいたします。ご<ruby>安心<rt>あんしん</rt></ruby>ください。<br>*(Bà ơi, tôi nhất định trân trọng cháu của bà. Bà yên tâm.)* |
| Bà nội | (VN, khóc cười) Phong cháu thế là bà yên tâm. Cháu nhớ Tết về thắp hương cho ông. |
| Phong | (VN) Vâng bà. Cháu hứa Tết về. |

---

## Tình huống 11 — Bàn karaoke · 21:30, Phong hát "桜坂" cùng bố

| Vai | Lời thoại |
|---|---|
| Yamada | フォンさん、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>主役<rt>しゅやく</rt></ruby>、カラオケお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Phong-san, vai chính 3 năm, karaoke nhờ em!)* |
| Phong | <ruby>父<rt>ちち</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>いたいです。<ruby>福山雅治<rt>ふくやままさはる</rt></ruby>の「<ruby>桜坂<rt>さくらざか</rt></ruby>」を。<br>*(Em muốn hát cùng bố. Bài "Sakurazaka" của Fukuyama Masaharu.)* |
| Bố Phong | (VN, ngạc nhiên) Bài đấy bố biết! Bố nghe karaoke ở quán cạnh nhà! |
| Phong | (VN) Bố ơi, hồi xưa bố hay hát bài này cho con nghe. Con sang Nhật mới biết nó là bài Nhật. |
| Bố Phong | (VN, cười) Bố đâu biết tiếng Nhật, hát phỏng âm thôi. Mày dịch giùm hôm nay. |
| Hai bố con | (cùng hát) <ruby>君<rt>きみ</rt></ruby>よずっと<ruby>幸<rt>しあわ</rt></ruby>せに〜 <ruby>風<rt>かぜ</rt></ruby>に<ruby>揺<rt>ゆ</rt></ruby>られて<ruby>歩<rt>ある</rt></ruby>いていこう〜<br>*(Em hãy mãi hạnh phúc nhé... Cứ đong đưa trong gió mà đi tiếp...)* |
| Sato | (vỗ tay, mắt đỏ) <ruby>父<rt>ちち</rt></ruby>と<ruby>息子<rt>むすこ</rt></ruby>がベトナムと<ruby>日本<rt>にほん</rt></ruby>の<ruby>歌<rt>うた</rt></ruby>を<ruby>越<rt>こ</rt></ruby>えて<ruby>歌<rt>うた</rt></ruby>う。<ruby>素晴<rt>すば</rt></ruby>らしい。<br>*(Bố và con trai hát bài Nhật vượt qua biên giới Việt-Nhật. Tuyệt vời.)* |
| Mẹ Phong | (VN, quay điện thoại) Mẹ quay gửi bà nội. |

---

## Tình huống 12 — Bàn chính · 22:30, Sato phát biểu khoá tiệc

| Vai | Lời thoại |
|---|---|
| Sato | (đứng dậy) <ruby>最後<rt>さいご</rt></ruby>に、<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>代表<rt>だいひょう</rt></ruby>して<ruby>一言<rt>ひとこと</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Cuối cùng, thay mặt công ty xin một lời.)* |
| Sato | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>ベトナム<ruby>人<rt>じん</rt></ruby>TTSの<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れは<ruby>初<rt>はじ</rt></ruby>めてで、<ruby>会社<rt>かいしゃ</rt></ruby>として<ruby>不安<rt>ふあん</rt></ruby>でした。<br>*(Thật lòng, 3 năm trước nhận TTS Việt Nam là lần đầu, công ty rất lo.)* |
| Sato | <ruby>専門用語<rt>せんもんようご</rt></ruby>だらけの<ruby>整備<rt>せいび</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>で<ruby>外国人<rt>がいこくじん</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>つのか、お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れていただけるのか、<ruby>正直<rt>しょうじき</rt></ruby><ruby>分<rt>わ</rt></ruby>かりませんでした。<br>*(Trong ngành sửa xe đầy thuật ngữ, không biết người nước ngoài có lớn được không, khách có chấp nhận không.)* |
| Sato | しかしフォンさんが<ruby>来<rt>き</rt></ruby>てくれて、<ruby>会社<rt>かいしゃ</rt></ruby>そのものが<ruby>変<rt>か</rt></ruby>わりました。<br>*(Nhưng Phong đến, cả công ty đã thay đổi.)* |
| Sato | <ruby>家内<rt>かない</rt></ruby>はフォを<ruby>作<rt>つく</rt></ruby>れるようになり、<ruby>山田<rt>やまだ</rt></ruby>は「<ruby>カムオン<rt>かむおん</rt></ruby>」と<ruby>言<rt>い</rt></ruby>えるようになり、<ruby>私<rt>わたし</rt></ruby>はベトナム<ruby>市場<rt>しじょう</rt></ruby><ruby>進出<rt>しんしゅつ</rt></ruby>を<ruby>本気<rt>ほんき</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えるようになりました。<br>*(Vợ tôi nấu được phở, Yamada nói được "cảm ơn", tôi nghiêm túc nghĩ chuyện vào thị trường VN.)* |
| Sato | <ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れた<ruby>側<rt>がわ</rt></ruby>のはずが、<ruby>私<rt>わたし</rt></ruby>たちもフォンさんから<ruby>学<rt>まな</rt></ruby>ばせていただきました。<br>*(Chúng tôi ở phía nhận, nhưng cũng đã học được từ Phong.)* |
| Sato | クロダ<ruby>様<rt>さま</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でフォンさんが<ruby>毅然<rt>きぜん</rt></ruby>と<ruby>対応<rt>たいおう</rt></ruby>したとき、わたしは<ruby>確信<rt>かくしん</rt></ruby>しました。「<ruby>外国人<rt>がいこくじん</rt></ruby>だから<ruby>守<rt>まも</rt></ruby>る」のではなく、「<ruby>有能<rt>ゆうのう</rt></ruby>だから<ruby>任<rt>まか</rt></ruby>せる」段階に来た、と。<br>*(Lúc Phong xử lý kiên định vụ Kuroda, tôi đã chắc chắn. Không phải "bảo vệ vì là người nước ngoài" mà "giao việc vì có năng lực".)* |
| Sato | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>からSSW1<ruby>＆<rt>アンド</rt></ruby><ruby>受付主任<rt>うけつけしゅにん</rt></ruby>として、<ruby>少<rt>すく</rt></ruby>なくとも<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>、できれば<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>お<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いいただきたい。<br>*(Từ 1/4 em làm SSW1 và chủ nhiệm lễ tân, ít nhất 5 năm, nếu được 10 năm mong đồng hành.)* |
| Sato | (cúi đầu sâu, quay sang bố mẹ) ミンさん、チンさん、<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>息子<rt>むすこ</rt></ruby>さんをお<ruby>預<rt>あず</rt></ruby>かりしてきました。これからも<ruby>必<rt>かなら</rt></ruby>ず<ruby>大切<rt>たいせつ</rt></ruby>にいたします。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Bác Minh, bác Chinh, đã được gửi gắm con trai quý báu. Từ giờ tôi nhất định trân trọng. Hôm nay thật sự cảm ơn.)* |
| Phong | (dịch sang VN cho bố mẹ, mắt đỏ) Bác Sato bảo "đã được gửi gắm con trai quý báu, từ giờ nhất định trân trọng". |
| Bố Phong | (đứng dậy, cúi 90 độ) <ruby>佐藤<rt>さとう</rt></ruby>さん、ありがとうございました！ |
| Mẹ Phong | (cúi đầu, lau nước mắt) ありがとうございます。 |

---

## Tình huống 13 — Lối ra izakaya · 23:00, Carlos bắt tay Phong tạm biệt

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>明日<rt>あした</rt></ruby>からも<ruby>同<rt>おな</rt></ruby>じ<ruby>愛知<rt>あいち</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Phong, từ mai vẫn cùng Aichi cố gắng nhé.)* |
| Phong | カルロスさん、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>ありがとう。「<ruby>外国人<rt>がいこくじん</rt></ruby>は<ruby>泣<rt>な</rt></ruby>かないで<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>せ」、<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Anh Carlos, 3 năm cảm ơn anh. "Người nước ngoài đừng khóc, ghi lại đi" — em sẽ không quên cả đời.)* |
| Carlos | (cười, vỗ vai) お<ruby>前<rt>まえ</rt></ruby>はもう<ruby>俺<rt>おれ</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えた。<ruby>受付主任<rt>うけつけしゅにん</rt></ruby>として<ruby>俺<rt>おれ</rt></ruby>の<ruby>名古屋<rt>なごや</rt></ruby><ruby>支店<rt>してん</rt></ruby>からの<ruby>問<rt>と</rt></ruby>い<ruby>合<rt>あ</rt></ruby>わせも<ruby>受<rt>う</rt></ruby>けてくれるんだろ？<br>*(Mày vượt anh rồi. Với chức chủ nhiệm lễ tân, mày tiếp cả query từ chi nhánh Nagoya của anh chứ?)* |
| Phong | はい、<ruby>毎月<rt>まいつき</rt></ruby><ruby>第一<rt>だいいち</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>、カルロスさんに<ruby>状況<rt>じょうきょう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, thứ 6 đầu tháng mỗi tháng em sẽ báo cáo tình hình anh Carlos.)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>がSSW2に<ruby>移行<rt>いこう</rt></ruby>するときは、お<ruby>前<rt>まえ</rt></ruby>のアドバイスを<ruby>聞<rt>き</rt></ruby>くからな。<br>*(Lúc anh chuyển SSW2, anh sẽ hỏi mày.)* |
| Phong | こちらこそ、<ruby>来年<rt>らいねん</rt></ruby>SSW2の<ruby>移行<rt>いこう</rt></ruby><ruby>面談<rt>めんだん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Em mới phải nhờ. Sang năm chúc anh cố gắng mensetsu chuyển SSW2.)* |

---

## Tình huống 14 — Phòng riêng · sáng 1/4, 6:00, độc thoại cài cúc đồng phục lễ tân SSW1

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>、SSW1<ruby>初日<rt>しょにち</rt></ruby>です。<br>*(Ngày 1/4, ngày đầu SSW1.)* |
| Phong | (mặc đồng phục lễ tân navy, đứng trước gương) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>作業着<rt>さぎょうぎ</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>う、<ruby>襟<rt>えり</rt></ruby>のある<ruby>制服<rt>せいふく</rt></ruby>です。<br>*(Khác workwear 3 năm, đồng phục có cổ áo.)* |
| Phong | (cài cúc thứ nhất) <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>後輩<rt>こうはい</rt></ruby>外国人スタッフのために<ruby>道<rt>みち</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>開<rt>ひら</rt></ruby>く<ruby>受付主任<rt>うけつけしゅにん</rt></ruby>として。<br>*(Cúc 1 — chủ nhiệm lễ tân mở đường cho kohai nước ngoài đến sau.)* |
| Phong | (cài cúc thứ hai) <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>恩返<rt>おんがえ</rt></ruby>しする<ruby>整備士<rt>せいびし</rt></ruby>として。<br>*(Cúc 2 — thợ máy báo đáp công ty.)* |
| Phong | (cài cúc thứ ba) <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のボタン――ハイフォンの<ruby>両親<rt>りょうしん</rt></ruby>と<ruby>祖母<rt>そぼ</rt></ruby>に<ruby>誇<rt>ほこ</rt></ruby>られる<ruby>息子<rt>むすこ</rt></ruby>として。<br>*(Cúc 3 — con trai khiến bố mẹ và bà ở Hải Phòng tự hào.)* |
| Phong | (đeo bảng tên "NGUYỄN VĂN PHONG / 受付主任") |
| Phong | (hít sâu) <ruby>行<rt>い</rt></ruby>ってきます。<br>*(Em đi đây.)* |

---

## Tình huống 15 — Cổng garage · 7:30, kohai mới Brazil Joao chào Phong với đồng phục mới

| Vai | Lời thoại |
|---|---|
| Joao | (TTS Brazil mới đến tháng 3) フォン<ruby>先輩<rt>せんぱい</rt></ruby>！おはようございます！<br>*(Phong sempai! Chào buổi sáng!)* |
| Phong | おはよう、ジョアン。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>が<ruby>変<rt>か</rt></ruby>わるね。<br>*(Chào Joao. Từ hôm nay cách gọi đổi nhỉ.)* |
| Joao | はい、<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>！<br>*(Vâng, chủ nhiệm lễ tân sempai!)* |
| Phong | (cười) ジョアン、「<ruby>先輩<rt>せんぱい</rt></ruby>」だけで<ruby>十分<rt>じゅうぶん</rt></ruby>。<ruby>役職<rt>やくしょく</rt></ruby>は<ruby>変<rt>か</rt></ruby>わっても、きみとの<ruby>関係<rt>かんけい</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらない。<br>*(Joao, "sempai" là đủ. Chức vụ đổi nhưng quan hệ với em không đổi.)* |
| Joao | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いていいですか？<ruby>外国人<rt>がいこくじん</rt></ruby>がここで<ruby>受付主任<rt>うけつけしゅにん</rt></ruby>になれる、ということは、<ruby>俺<rt>おれ</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ればなれますか？<br>*(Sempai, em hỏi một điều được không? Người nước ngoài lên chủ nhiệm lễ tân được, vậy em cố gắng cũng được không?)* |
| Phong | (cúi xuống bằng tầm mắt Joao) ジョアン、<ruby>俺<rt>おれ</rt></ruby>がきみのために<ruby>道<rt>みち</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>開<rt>ひら</rt></ruby>いた。きみは<ruby>俺<rt>おれ</rt></ruby>より<ruby>早<rt>はや</rt></ruby>くなれるはずだ。<br>*(Joao, anh đã mở đường cho em. Em phải nhanh hơn anh.)* |
| Joao | (mắt sáng) はい、<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng em sẽ cố!)* |

---

## Tình huống 16 — Khu chính · 8:00, 朝礼 và phát biểu nhậm chức 受付主任

| Vai | Lời thoại |
|---|---|
| Sato | みんな、<ruby>朝礼<rt>ちょうれい</rt></ruby><ruby>始<rt>はじ</rt></ruby>めます。<ruby>整列<rt>せいれつ</rt></ruby>してください。<br>*(Mọi người, briefing sáng bắt đầu. Xếp hàng.)* |
| Sato | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年度<rt>ねんど</rt></ruby><ruby>新<rt>あたら</rt></ruby>しい<ruby>体制<rt>たいせい</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>します。<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>兼<rt>けん</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>、グエン・ヴァン・フォンさんを<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Hôm nay xin công bố cơ cấu mới năm 2028. Chủ nhiệm lễ tân kiêm thợ máy, đặc định kỹ năng 1, Nguyễn Văn Phong.)* |
| Cả phòng | (vỗ tay) |
| Sato | フォンさん、<ruby>就任<rt>しゅうにん</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phong-san, xin phát biểu nhậm chức.)* |
| Phong | (bước lên một bước, cúi đầu) みなさん、おはようございます。<br>*(Mọi người, chào buổi sáng.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>受付主任<rt>うけつけしゅにん</rt></ruby><ruby>兼<rt>けん</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>かせていただきます、グエン・ヴァン・フォンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Em là Nguyễn Văn Phong, từ hôm nay làm việc với tư cách chủ nhiệm lễ tân kiêm thợ máy.)* |
| Phong | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>みなさんから<ruby>教<rt>おし</rt></ruby>えていただいたこと――<ruby>5S<rt>ごエス</rt></ruby>、<ruby>トルク管理<rt>トルクかんり</rt></ruby>、<ruby>整備記録<rt>せいびきろく</rt></ruby>、<ruby>顧客対応<rt>こきゃくたいおう</rt></ruby>――これらを<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>正<rt>ただ</rt></ruby>しく<ruby>伝<rt>つた</rt></ruby>えていきたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Những điều mọi người dạy 3 năm — 5S, quản lý lực siết, ghi hồ sơ bảo dưỡng, đối khách — em muốn truyền lại đúng cho kohai.)* |
| Phong | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>初<rt>はじ</rt></ruby>めての<ruby>受付主任<rt>うけつけしゅにん</rt></ruby>として、<ruby>言葉<rt>ことば</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>や<ruby>文化<rt>ぶんか</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いを<ruby>感<rt>かん</rt></ruby>じる<ruby>場面<rt>ばめん</rt></ruby>もあるかと<ruby>存<rt>ぞん</rt></ruby>じます。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>きますので、これからもご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Với tư cách chủ nhiệm lễ tân nước ngoài đầu tiên, sẽ có lúc rào cản ngôn ngữ-văn hoá. Có gì không hiểu em nhất định hỏi, mong mọi người tiếp tục chỉ bảo.)* |
| Phong | (cúi đầu sâu) どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin được mong nhờ.)* |
| Cả phòng | (vỗ tay lớn) |
| Sato | では、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>安全第一<rt>あんぜんだいいち</rt></ruby>、<ruby>品質第一<rt>ひんしつだいいち</rt></ruby>、<ruby>顧客第一<rt>こきゃくだいいち</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy bắt đầu công việc hôm nay. An toàn trên hết, chất lượng trên hết, khách hàng trên hết.)* |
| Cả phòng | お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Xin được mong nhờ!)* |

---

## Tình huống 17 — Khách sạn Toyota-shi · 21:00, gọi điện ăn cơm tối cùng bố mẹ (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — bố mẹ ở khách sạn Toyota-shi, ngày mai bay về VN. Phong sang ăn cơm tối cuối cùng với bố mẹ trước khi tiễn ra Chubu.

| Vai | Lời thoại |
|---|---|
| Phong | (VN) Bố mẹ, hôm nay con đi làm SSW1 ngày đầu rồi. |
| Mẹ Phong | (VN) Mệt không con? Phát biểu trước cả phòng có run không? |
| Phong | (VN) Mẹ ơi, con không run đâu. 3 năm rồi, con đã quen phát biểu tiếng Nhật. Sáng nay con nói được câu "本日より受付主任兼整備士として働かせていただきます" trơn tru. |
| Bố Phong | (VN, gật) Bố biết. Hôm qua nghe bác Sato khen mày là "vai chính tối nay", bố đã biết là quyết định đúng. |
| Mẹ Phong | (VN, lau nước mắt) Phong, mẹ chưa cảm ơn con. Tối qua bác Sato bảo "đã được gửi gắm con trai quý báu". Mẹ cảm thấy mình không một mình nuôi con nữa, có cả người Nhật nuôi giúp. |
| Phong | (VN) Mẹ ơi đừng cảm ơn con. Tất cả là vì bố mẹ. Hồi xưa 21 tuổi con đi, mẹ cho con cái cặp 10 ký, có cuốn sổ tay nấu phở mẹ viết tay. Giờ vợ bác Sato biết nấu phở Hải Phòng nhờ cuốn sổ ấy. |
| Mẹ Phong | (VN, ngạc nhiên) Mày để cuốn sổ của mẹ cho người ta à? |
| Phong | (VN) Con copy lại. Cuốn gốc mẹ viết con vẫn giữ trong vali. |
| Bố Phong | (VN, hỏi) Phong, mai bố mẹ về Hải Phòng. Mày bao giờ về? |
| Phong | (VN) Tết Nguyên đán 2029 con về 2 tuần. Tết 2030 con xin nghỉ dài, về 3 tuần — đó là điều khoản trong hợp đồng. |
| Bố Phong | (VN) Cô Linh hàng xóm có cháu gái — cô Hà — học N4 sắp xong. Tết về bố muốn con gặp. |
| Phong | (VN, cười ngại) Bố tính kế sát quá. |
| Bố Phong | (VN) Bố 60 tuổi rồi. Bố muốn còn sức bế cháu. |
| Phong | (VN, lặng) ...vâng bố. Con sẽ gặp. Không hứa gì, nhưng con sẽ gặp tử tế. |
| Mẹ Phong | (VN, cười) Con ngoan. Phong ơi, mẹ hỏi một câu thôi — 5 năm sau, con có chắc về Hải Phòng không? |
| Phong | (VN, nhìn ra cửa sổ Toyota-shi đêm) Mẹ ơi, con không dám hứa 100%. Có thể SSW2 con sẽ ở thêm 5 năm nữa. Nhưng dù 5 năm hay 10 năm, garage con mở ở Hải Phòng đã có tên rồi — Phong-Tomoda Auto. |
| Mẹ Phong | (VN, gật) Vậy mẹ chờ. Không cần con về ngay, chỉ cần con không quên đường về. |
| Phong | (VN, mắt đỏ) Mẹ ơi, con không bao giờ quên. Mẹ là sợi dây kéo con về. Bố là người chỉ con đường đi. Hai sợi dây không bao giờ đứt. |
| Bố Phong | (VN, vỗ vai Phong) Thôi đủ rồi. Ăn cơm. Mai bố mẹ về VN sớm. |
| Phong | (VN, gắp đồ ăn cho mẹ) Mẹ ăn nhiều vào. Ngày mai con đưa bố mẹ ra Chubu lúc 9 giờ, bay 11 giờ. |
| Mẹ Phong | (VN) Phong, con cũng ăn đi. Mai con đi làm tiếp. |

---

## Đọng lại chương

**Mẫu câu trục chính chương này:**

- **本日はご足労いただきありがとうございます** — Hôm nay cảm ơn quý vị đã chịu khó đến (đón gia đình).
- **乾杯の音頭を取らせていただきます** — Em xin phép đề xướng nâng cốc.
- **本日の会には〇つの意味がございます** — Buổi hôm nay có ... ý nghĩa (mở phát biểu).
- **頂戴いたします** — Em xin nhận (nhận quà 2 tay).
- **道を切り開く責任を感じます** — Em cảm nhận trách nhiệm mở đường (nhận chức danh đầu tiên).
- **本日より〜として働かせていただきます** — Từ hôm nay em làm việc với tư cách... (phát biểu nhậm chức).
- **大切な息子さんをお預かりしてきました** — Đã được gửi gắm con trai quý báu (sếp nói với phụ huynh).

**Từ vựng & mẫu câu chương này:** 送別会・契約満了・SSW1移行・受付主任・就任・乾杯の音頭・頂戴いたします・専用工具キャビネット・銘板・道を切り開く・有能だから任せる・ベトナム進出・お預かり・お土産・蓮茶・漆絵・家宝・年度・体制・5S・トルク管理・整備記録・顧客対応・安全第一・品質第一・顧客第一.

---

## Bí quyết chương

- **Bonenkai có 3 ý nghĩa**: 工場長 mở bằng cấu trúc "三つの意味" — luôn liệt kê 3 ý nghĩa tiệc khi nhân vật chính nhiều vai trò (kết TTS + chuyển SSW1 + đón gia đình).
- **Phụ huynh không biết tiếng Nhật ở Nhật**: dạy trước 3 câu "はじめまして / お世話になりました / よろしくお願いします", phần còn lại nhân vật chính dịch hai chiều — không bao giờ để phụ huynh ngồi câm.
- **Quà tặng sempai**: trà sen / tranh sơn mài / cà phê VN — đặc sản nguyên gốc của quê hương, không phải đồ generic. Đáp lễ keigo: "頂戴いたします" + "家宝として大切にいたします".
- **Bài hát karaoke 父子**: chọn ca khúc Nhật mà bố biết qua phỏng âm — tạo khoảnh khắc bố tham gia được, không phải "khán giả ngồi nhìn".
- **Đeo bảng tên ngày đầu nhậm chức**: chữ romaji + chức danh tiếng Nhật — biểu tượng identity hai bên.
- **Phát biểu nhậm chức**: cấu trúc "3 năm học gì → muốn truyền cho kohai → rào cản còn lại → mong chỉ bảo" — keigo công sở chuẩn cho người mới lên chức.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 送別会 | そうべつかい | TỐNG BIỆT HỘI | tiệc tiễn |
| 契約満了 | けいやくまんりょう | KHẾ ƯỚC MÃN LIỄU | hết hạn hợp đồng |
| 移行 | いこう | DI HÀNH | chuyển sang |
| 受付主任 | うけつけしゅにん | THỤ PHÓ CHỦ NHIỆM | chủ nhiệm lễ tân |
| 就任 | しゅうにん | TỰU NHIỆM | nhậm chức |
| 祝賀会 | しゅくがかい | CHÚC HẠ HỘI | tiệc mừng |
| 歓迎会 | かんげいかい | HOAN NGHÊNH HỘI | tiệc đón |
| 乾杯 | かんぱい | CAN BÔI | cạn ly |
| 音頭 | おんど | ÂM ĐẦU | sự đề xướng |
| 一言 | ひとこと | NHẤT NGÔN | một lời |
| 頂戴いたします | ちょうだいいたします | ĐỈNH ĐÁI | em xin nhận (kính ngữ) |
| 専用 | せんよう | CHUYÊN DỤNG | dùng riêng |
| 工具 | こうぐ | CÔNG CỤ | dụng cụ |
| キャビネット | キャビネット | — | ngăn, tủ |
| 鍵 | かぎ | KIỀN | chìa khoá |
| 銘板 | めいばん | MINH BẢN | bảng khắc tên |
| 区画 | くかく | KHU HOẠCH | khu vực, ngăn |
| 道を切り開く | みちをきりひらく | ĐẠO THIẾT KHAI | mở đường |
| 有能 | ゆうのう | HỮU NĂNG | có năng lực |
| 任せる | まかせる | NHIỆM | giao phó |
| 進出 | しんしゅつ | TIẾN XUẤT | mở rộng (thị trường) |
| お預かり | おあずかり | DỰ | sự gửi gắm |
| お土産 | おみやげ | ĐỊA SẢN | quà đặc sản |
| 蓮茶 | はすちゃ | LIÊN TRÀ | trà sen |
| 漆絵 | うるしえ | TẤT HOẠ | tranh sơn mài |
| 家宝 | かほう | GIA BẢO | bảo vật gia đình |
| 同志 | どうし | ĐỒNG CHÍ | đồng chí |
| 同期 | どうき | ĐỒNG KỲ | bạn cùng đợt |
| 機械工 | きかいこう | CƠ GIỚI CÔNG | thợ cơ khí |
| 遺伝 | いでん | DI TRUYỀN | di truyền |
| 桜坂 | さくらざか | ANH HOA PHẢN | dốc hoa anh đào (bài hát) |
| 主役 | しゅやく | CHỦ DỊCH | vai chính |
| 年度 | ねんど | NIÊN ĐỘ | năm tài khoá |
| 体制 | たいせい | THỂ CHẾ | cơ cấu, hệ thống |
| 紹介 | しょうかい | THIỆU GIỚI | giới thiệu |
| 朝礼 | ちょうれい | TRIỀU LỄ | briefing sáng |
| 整列 | せいれつ | CHỈNH LIỆT | xếp hàng |
| 製造部 | せいぞうぶ | CHẾ TẠO BỘ | phòng sản xuất |
| 5S | ごエス | — | 5S quản lý hiện trường |
| トルク管理 | トルクかんり | QUẢN LÝ | quản lý lực siết |
| 整備記録 | せいびきろく | CHỈNH BỊ KÝ LỤC | hồ sơ bảo dưỡng |
| 顧客対応 | こきゃくたいおう | CỐ KHÁCH ĐỐI ỨNG | đối khách |
| 言葉の壁 | ことばのかべ | NGÔN BÍCH | rào cản ngôn ngữ |
| 文化の違い | ぶんかのちがい | VĂN HOÁ | khác biệt văn hoá |
| ご指導 | ごしどう | CHỈ ĐẠO | sự chỉ bảo (kính) |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | an toàn trên hết |
| 品質第一 | ひんしつだいいち | PHẨM CHẤT ĐỆ NHẤT | chất lượng trên hết |
| 顧客第一 | こきゃくだいいち | CỐ KHÁCH ĐỆ NHẤT | khách hàng trên hết |
| 内定 | ないてい | NỘI ĐỊNH | tuyển nội bộ trước khi vào chính thức |
| 整備士長 | せいびしちょう | CHỈNH BỊ SĨ TRƯỞNG | trưởng thợ |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | trưởng nhà máy |
| 春巻き | はるまき | XUÂN | nem cuốn (mượn nghĩa) |
| 蓮 | はす | LIÊN | hoa sen |
| 漆 | うるし | TẤT | sơn mài |
| 確信 | かくしん | XÁC TÍN | chắc chắn |
| 毅然 | きぜん | NGHỊ NHIÊN | kiên định |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
