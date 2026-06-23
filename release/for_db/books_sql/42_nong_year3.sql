-- Hizashi LITE book SQL — Linh Y3 — Nông nghiệp năm 3 (SSW1 + xuất khẩu)
-- curriculum_id = 800000042  (book_seq=42)
-- nguồn: books/42_nong_year3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000042, 'N4', 'markdown_book', 'Nông nghiệp', 'Linh Y3 — Nông nghiệp năm 3 (SSW1 + xuất khẩu)', 'Bộ sách Hizashi — Linh Y3 — Nông nghiệp năm 3 (SSW1 + xuất khẩu)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000001, 800000042, NULL, 'markdown_book', 'T1. Mở màn năm ba — sempai-of-sempai và hướng SSW1 (3年目の春・特定技能への準備)', '# Sách thực tập sinh nông nghiệp · T1. Mở màn năm ba — sempai-of-sempai và hướng SSW1 (3年目の春・特定技能への準備)

> **Mục tiêu nhân vật:** Linh (24 tuổi, Đồng Tháp) bước vào năm ba — năm cuối TTS tại nông trại rau Yamamoto (山本農園) ở Ibaraki. Học các mẫu hội thoại tiếng Nhật giai đoạn chuyển sang **特定技能1号 (SSW1)** ngành nông nghiệp: trình bày kế hoạch năm với 親方 Yamamoto, xác nhận về **技能検定3級 → 良好修了 → 免除 SSW1試験**, hỏi lại nghĩa của **転職・業種・育成就労・在留資格**, coach kohai năm 1 Mai bằng やさしい日本語, và quan sát Saori-san nói về **仲間**.

---

## Bối cảnh

Ngày 1 tháng 4 năm 2027, đầu năm tài khoá Nhật. Linh năm cuối TTS tại nông trại rau Yamamoto (山本農園) — cà chua, dưa leo, salad — ở Ibaraki, trình độ N3 (đang chờ kết quả tháng 12 năm trước). Hương (Ikusei năm 2) sắp đón Mai — kohai mới năm 1 từ Việt Nam. Saori-san là chị Nhật làm 10 năm. Đồng nghiệp Sari (Indonesia, SSW1 năm 2) cùng ký túc. Chương này tập trung các mẫu câu công sở giai đoạn chuyển từ TTS sang SSW1: bàn kế hoạch năm với 親方, hỏi lại từ chuyên ngành nông nghiệp + visa, coach kohai mới.

---

## Tình huống 1 — Sân nông trại trước nhà kho · 7:30, 親方 Yamamoto thông báo kế hoạch năm và phân công 指導

| Vai | Lời thoại |
|---|---|
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年度<rt>ねんど</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, chào buổi sáng. Từ hôm nay năm tài khoá 2027 bắt đầu. Mong mọi người hợp tác.)* |
| Cả đội | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Mong anh chỉ bảo.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>今年度<rt>こんねんど</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きな<ruby>変化<rt>へんか</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つ<ruby>伝<rt>つた</rt></ruby>えます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、リンさんが<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、TTS<ruby>最終<rt>さいしゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Có 2 thay đổi lớn năm nay. Thứ nhất, Linh bước vào năm 3, năm cuối TTS.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin được chỉ bảo ạ.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からは<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>として<ruby>農業<rt>のうぎょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けてもらう<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Dự kiến từ tháng 4 năm sau, em làm tiếp với tư cách kỹ năng đặc định số 1 trong ngành nông nghiệp.)* |
| Linh | ありがとうございます。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Em cảm ơn anh. Em sẽ chuẩn bị hết sức.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>にベトナムから<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>マイさんが<ruby>来<rt>き</rt></ruby>ます。フオンさん、<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。リンさんがサポートに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Thứ hai, tháng 5 có kohai Mai từ Việt Nam diện Ikusei. Hương phụ trách kèm, Linh hỗ trợ.)* |
| Hương | え、<ruby>私<rt>わたし</rt></ruby>が<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>ですか? <ruby>務<rt>つと</rt></ruby>まるかどうか<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Ơ, em phụ trách hướng dẫn ạ? Em không tự tin.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>一<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>のリンさんと<ruby>同<rt>おな</rt></ruby>じだ。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>報連相<rt>ほうれんそう</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Không sao. Giống Linh một năm trước. Không hiểu gì thì nhất định báo cáo - liên lạc - bàn bạc.)* |
| Hương | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Đường ra ハウス cà chua · 7:50, Linh coach Hương bằng やさしい日本語

| Vai | Lời thoại |
|---|---|
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>いです。マイさんに<ruby>何<rt>なに</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えればいいか<ruby>分<rt>わ</rt></ruby>からなくて。<br>*(Chị Linh, em sợ thật. Em không biết bắt đầu dạy Mai từ đâu.)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>一<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>はやさしい<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Không sao. Tuần đầu, dạy chào hỏi và tên dụng cụ bằng tiếng Nhật dễ trước.)* |
| Hương | やさしい<ruby>日本語<rt>にほんご</rt></ruby>...というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんなことですか?<br>*(Yasashii Nihongo... cụ thể là thế nào ạ?)* |
| Linh | <ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って、<ruby>一文<rt>いちぶん</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つの<ruby>情報<rt>じょうほう</rt></ruby>だけ<ruby>入<rt>い</rt></ruby>れます。<ruby>難<rt>むずか</rt></ruby>しい<ruby>漢語<rt>かんご</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けて、<ruby>身振<rt>みぶ</rt></ruby>りも<ruby>添<rt>そ</rt></ruby>えます。<br>*(Câu ngắn, mỗi câu một thông tin. Tránh từ Hán khó, kèm cử chỉ.)* |
| Hương | なるほど。<ruby>一<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、リン<ruby>姉<rt>ねえ</rt></ruby>さんも<ruby>私<rt>わたし</rt></ruby>にそうしてくれましたね。<br>*(Ra vậy. Một năm trước chị cũng làm thế với em nhỉ.)* |
| Linh | たとえば「<ruby>鋏<rt>はさみ</rt></ruby>、<ruby>右手<rt>みぎて</rt></ruby>、<ruby>持<rt>も</rt></ruby>って、<ruby>枝<rt>えだ</rt></ruby>、<ruby>切<rt>き</rt></ruby>る」と<ruby>区切<rt>くぎ</rt></ruby>って<ruby>言<rt>い</rt></ruby>う。<ruby>一気<rt>いっき</rt></ruby>に<ruby>長<rt>なが</rt></ruby>く<ruby>説明<rt>せつめい</rt></ruby>しないこと。<br>*(Ví dụ chia "kéo・tay phải・cầm・cành・cắt". Đừng giảng một mạch.)* |
| Hương | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>復習<rt>ふくしゅう</rt></ruby>していただけますか?<br>*(Em hiểu rồi. Tuần sau chị ôn cùng em được không ạ?)* |
| Linh | もちろん。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>にやろう。<br>*(Đương nhiên. Tối thứ Bảy hàng tuần mình tập.)* |

---

## Tình huống 3 — ハウス cà chua, lúc tỉa lá · 9:15, Saori-san nhắc thao tác đúng đầu năm

*Saori-san là chị Nhật làm 10 năm, vai sempai tinh thần.*

| Vai | Lời thoại |
|---|---|
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>おめでとう。<ruby>今年<rt>ことし</rt></ruby>もよろしくね。<br>*(Linh-chan, chúc mừng năm 3. Năm nay cũng nhờ em.)* |
| Linh | <ruby>沙織<rt>さおり</rt></ruby>さん、こちらこそ。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>脇芽<rt>わきめ</rt></ruby>かきから<ruby>始<rt>はじ</rt></ruby>めればよろしいでしょうか?<br>*(Chị Saori, em cũng vậy. Hôm nay em bắt đầu từ tỉa chồi nách được không ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | お<ruby>願<rt>ねが</rt></ruby>い。<ruby>新芽<rt>しんめ</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>して、<ruby>下<rt>した</rt></ruby>の<ruby>古<rt>ふる</rt></ruby>い<ruby>葉<rt>は</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>枚<rt>まい</rt></ruby>ずつ<ruby>取<rt>と</rt></ruby>って。<br>*(Em làm giúp. Để lại chồi non, lấy 3 lá già phía dưới một cụm.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>ですが、<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>花房<rt>かぼう</rt></ruby>の<ruby>下<rt>した</rt></ruby>まで<ruby>取<rt>と</rt></ruby>るということですね。<br>*(Em rõ. Xác nhận: tỉa đến dưới chùm hoa đầu tiên đúng không ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>り。さすが<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>。<br>*(Đúng. Quả là năm 3.)* |
| Linh | あの、マイさんが<ruby>来<rt>き</rt></ruby>たら、この<ruby>作業<rt>さぎょう</rt></ruby>はいつ<ruby>頃<rt>ごろ</rt></ruby><ruby>教<rt>おし</rt></ruby>えるのがいいですか?<br>*(À, Mai sang rồi thì khi nào dạy thao tác này hợp ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>一<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は<ruby>見<rt>み</rt></ruby>せるだけでいい。<ruby>急<rt>いそ</rt></ruby>がせない。<ruby>農業<rt>のうぎょう</rt></ruby>は<ruby>植物<rt>しょくぶつ</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>を<ruby>扱<rt>あつか</rt></ruby>うから。<br>*(Tuần đầu chỉ cho xem là đủ. Đừng giục. Nông nghiệp xử lý sinh mệnh cây mà.)* |

---

## Tình huống 4 — Trạm xe đạp về ký túc · 17:30, ôn lại với Sari câu xác nhận kế hoạch

| Vai | Lời thoại |
|---|---|
| Sari | リンちゃん、<ruby>新年度<rt>しんねんど</rt></ruby>おめでとう!<br>*(Linh-chan, chúc mừng năm tài khoá mới!)* |
| Linh | ありがとう、サリ。サリも<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>だね。<br>*(Cảm ơn Sari. Sari cũng SSW năm 2 rồi nhỉ.)* |
| Sari | はい。あと<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>たったら、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたい。<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びたい。<br>*(Vâng. 3 năm nữa em muốn thi SSW2. Đón gia đình sang.)* |
| Linh | すみません、「<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>」というのは、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べる<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>のことですか?<br>*(Xin lỗi, "SSW2" là tư cách lưu trú đón được gia đình đúng không ạ?)* |
| Sari | そう。<ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザで<ruby>夫<rt>おっと</rt></ruby>と<ruby>子<rt>こ</rt></ruby>どもを<ruby>呼<rt>よ</rt></ruby>べる。<ruby>農業<rt>のうぎょう</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>対象<rt>たいしょう</rt></ruby>になったよ。<br>*(Đúng. Bằng visa lưu trú gia đình, đón được chồng và con. Nông nghiệp giờ cũng vào diện 2 hiệu rồi đấy.)* |
| Linh | え、そうなんですか? <ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Vậy à? Em chưa biết.)* |
| Sari | <ruby>急<rt>いそ</rt></ruby>がず、<ruby>一<rt>ひと</rt></ruby>つずつね。<br>*(Đừng vội, từng bước một thôi.)* |

---

## Tình huống 5 — Phòng 親方 · 14:00, Linh trình bày kế hoạch năm bằng số thứ tự

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>を<ruby>相談<rt>そうだん</rt></ruby>させていただきたいのですが、お<ruby>時間<rt>じかん</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Thưa anh, em muốn xin được bàn về kế hoạch năm 3, anh có thời gian không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | はい、どうぞ。<ruby>遠慮<rt>えんりょ</rt></ruby>なく。<br>*(Mời. Đừng ngại.)* |
| Linh | <ruby>大<rt>おお</rt></ruby>きく<ruby>四<rt>よっ</rt></ruby>つあります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>(<ruby>耕種<rt>こうしゅ</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby>)を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Có 4 việc lớn. Thứ nhất, tháng 9 em muốn thi 技能検定 cấp 3 trồng trọt.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | いいですね。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Tốt. Cái thứ hai?)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPTでN3の<ruby>結果<rt>けっか</rt></ruby><ruby>次第<rt>しだい</rt></ruby>でN2に<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、フオンさんとマイさんの<ruby>指導<rt>しどう</rt></ruby>サポート。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、SSW1の<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>です。<br>*(Hai, kết quả N3 ra sao em tính thi N2 tháng 12. Ba, hỗ trợ kèm Hương và Mai. Bốn, chuẩn bị hồ sơ SSW1.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>確認<rt>かくにん</rt></ruby>ですが、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>と<ruby>認<rt>みと</rt></ruby>められ、SSW1の<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>になるのは<ruby>知<rt>し</rt></ruby>っていますね?<br>*(Cụ thể, tốt. Xác nhận: đậu 技能検定3級 thì được công nhận 良好修了 và miễn thi kỹ năng SSW1, em biết chứ?)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>がSSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つになるということですね。<br>*(Vâng. Tức là chứng chỉ đậu là một giấy tờ cần cho hồ sơ SSW1 đúng không ạ.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>り。よく<ruby>整理<rt>せいり</rt></ruby>されています。<br>*(Đúng. Em sắp xếp tốt.)* |

---

## Tình huống 6 — Phòng 親方 · 14:20, hỏi lại về 転職 và 業種 ngành nông

| Vai | Lời thoại |
|---|---|
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | リンさん、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>伝<rt>つた</rt></ruby>えたい。SSW1になると<ruby>転職<rt>てんしょく</rt></ruby>という<ruby>選択肢<rt>せんたくし</rt></ruby>も<ruby>出<rt>で</rt></ruby>てきます。<br>*(Linh, một việc nữa. Khi sang SSW1, em có thêm lựa chọn chuyển việc.)* |
| Linh | すみません、「<ruby>転職<rt>てんしょく</rt></ruby>」というのは<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えることですよね。SSW1でも<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>なら<ruby>可能<rt>かのう</rt></ruby>ですか?<br>*(Xin lỗi, "tenshoku" là đổi công ty đúng không ạ. SSW1 cùng 業種 thì được phải không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | はい、その<ruby>通<rt>とお</rt></ruby>り。<ruby>業種<rt>ぎょうしゅ</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>の<ruby>分野<rt>ぶんや</rt></ruby>のこと。<ruby>農業<rt>のうぎょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>の<ruby>中<rt>なか</rt></ruby>なら<ruby>耕種<rt>こうしゅ</rt></ruby>から<ruby>畜産<rt>ちくさん</rt></ruby>へ<ruby>移<rt>うつ</rt></ruby>ることもできる。TTSとは<ruby>違<rt>ちが</rt></ruby>う。<br>*(Đúng. 業種 là lĩnh vực. Trong ngành nông nghiệp, từ trồng trọt có thể sang chăn nuôi. Khác TTS.)* |
| Linh | <ruby>給料<rt>きゅうりょう</rt></ruby>や<ruby>勤務<rt>きんむ</rt></ruby><ruby>地<rt>ち</rt></ruby>は<ruby>農場<rt>のうじょう</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うということですね。<br>*(Tức là lương và nơi làm tuỳ nông trại mà khác đúng không ạ.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>北海道<rt>ほっかいどう</rt></ruby>の<ruby>大規模<rt>だいきぼ</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>は<ruby>時給<rt>じきゅう</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。でも<ruby>冬<rt>ふゆ</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しい。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>一<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>考<rt>かんが</rt></ruby>えてください。<br>*(Nông trại quy mô lớn Hokkaido lương giờ cao, nhưng đông khắc nghiệt. Đừng vội, hãy nghĩ trong một năm.)* |
| Linh | はい、<ruby>選択肢<rt>せんたくし</rt></ruby>として<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng, em ghi nhớ như một lựa chọn.)* |

---

## Tình huống 7 — Kho dụng cụ · 15:00, Saori-san nói về 仲間

| Vai | Lời thoại |
|---|---|
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん、<ruby>親方<rt>おやかた</rt></ruby>から<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いた。<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>おめでとう。<br>*(Linh-chan, chị nghe 親方 nói rồi. Chúc mừng năm 3.)* |
| Linh | ありがとうございます。<ruby>実<rt>じつ</rt></ruby>は<ruby>転職<rt>てんしょく</rt></ruby>のことで<ruby>悩<rt>なや</rt></ruby>んでいます。<ruby>沙織<rt>さおり</rt></ruby>さんのご<ruby>意見<rt>いけん</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>いたいのですが。<br>*(Em cảm ơn. Thực ra em đang phân vân chuyện chuyển việc. Em muốn xin ý kiến chị.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>難<rt>むずか</rt></ruby>しい<ruby>質問<rt>しつもん</rt></ruby>ね。<ruby>私<rt>わたし</rt></ruby>はこの<ruby>農園<rt>のうえん</rt></ruby>に<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>いるけど、<ruby>後悔<rt>こうかい</rt></ruby>はしていない。<br>*(Câu hỏi khó. Chị ở nông trại này 10 năm, chưa hối hận.)* |
| Linh | なぜ<ruby>残<rt>のこ</rt></ruby>られたんですか?<br>*(Vì sao chị ở lại được ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>仲間<rt>なかま</rt></ruby>がいるから。<ruby>時給<rt>じきゅう</rt></ruby>はもっと<ruby>高<rt>たか</rt></ruby>い<ruby>農場<rt>のうじょう</rt></ruby>もあった。でも、<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけてくれる<ruby>人<rt>ひと</rt></ruby>がいる<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>。<br>*(Vì có nakama. Cũng có nông trại lương cao hơn. Nhưng nơi mà lúc khó có người giúp thì quý.)* |
| Linh | <ruby>仲間<rt>なかま</rt></ruby>...<ruby>給料<rt>きゅうりょう</rt></ruby>より<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Nakama... quan trọng hơn lương ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>人<rt>ひと</rt></ruby>によるよ。でも<ruby>急<rt>いそ</rt></ruby>がず<ruby>考<rt>かんが</rt></ruby>えてね。お<ruby>金<rt>かね</rt></ruby>だけで<ruby>決<rt>き</rt></ruby>めると<ruby>後悔<rt>こうかい</rt></ruby>することがある。<br>*(Tuỳ người. Nhưng đừng vội. Quyết bằng tiền thôi đôi khi sẽ hối hận.)* |
| Linh | はい。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>として<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng. Em sẽ ghi nhớ.)* |

---

## Tình huống 8 — ハウス dưa leo · 15:40, kiểm tra 害虫 và báo lên 親方

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウスのきゅうりに<ruby>白<rt>しろ</rt></ruby>い<ruby>点<rt>てん</rt></ruby>があります。<ruby>葉<rt>は</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>枚<rt>まい</rt></ruby>ほどです。<br>*(Anh, em báo cáo. Dưa leo nhà kính số 3 có đốm trắng. Khoảng 5 lá.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | うどんこ<ruby>病<rt>びょう</rt></ruby>かもしれない。<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>って<ruby>見<rt>み</rt></ruby>せてくれる?<br>*(Có thể là bệnh phấn trắng. Em chụp ảnh cho anh xem được không?)* |
| Linh | はい、<ruby>撮<rt>と</rt></ruby>りました。これです。<br>*(Vâng, em chụp rồi đây.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | うん、うどんこ<ruby>病<rt>びょう</rt></ruby>の<ruby>初期<rt>しょき</rt></ruby><ruby>症状<rt>しょうじょう</rt></ruby>。<ruby>該当<rt>がいとう</rt></ruby>の<ruby>葉<rt>は</rt></ruby>を<ruby>取<rt>と</rt></ruby>って<ruby>処分<rt>しょぶん</rt></ruby>。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>、JAS<ruby>認証<rt>にんしょう</rt></ruby>でも<ruby>使<rt>つか</rt></ruby>える<ruby>有機<rt>ゆうき</rt></ruby>農薬を<ruby>散布<rt>さんぷ</rt></ruby>します。<br>*(Triệu chứng đầu phấn trắng. Em ngắt lá liên quan đem xử lý. Sáng mai phun thuốc hữu cơ dùng được với chứng nhận JAS.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>有機<rt>ゆうき</rt></ruby><ruby>農薬<rt>のうやく</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby><ruby>ノート<rt>のーと</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>しておきます。<br>*(Em rõ. Em sẽ ghi tên thuốc hữu cơ vào sổ.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | お<ruby>願<rt>ねが</rt></ruby>い。<ruby>来月<rt>らいげつ</rt></ruby>のJAS<ruby>監査<rt>かんさ</rt></ruby>でその<ruby>記録<rt>きろく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>になる。<br>*(Nhờ em. Tháng sau thanh tra JAS sẽ cần sổ ghi này.)* |

---

## Tình huống 9 — Khu rửa tay sau giờ làm · 16:30, Linh hỏi Saori-san về 申請 SSW1

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>沙織<rt>さおり</rt></ruby>さん、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。SSW1の<ruby>申請<rt>しんせい</rt></ruby>について<ruby>少<rt>すこ</rt></ruby>し<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか?<br>*(Chị Saori, em xin lỗi làm phiền lúc chị bận. Em hỏi về hồ sơ SSW1 được không ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | どうぞ。<br>*(Mời.)* |
| Linh | <ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>はいつ<ruby>頃<rt>ごろ</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めればいいでしょうか?<br>*(Em nên bắt đầu chuẩn bị giấy tờ từ khoảng nào ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>半年<rt>はんとし</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からが<ruby>目安<rt>めやす</rt></ruby>。<ruby>農園<rt>のうえん</rt></ruby>が<ruby>出<rt>だ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>と<ruby>本人<rt>ほんにん</rt></ruby>が<ruby>出<rt>だ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>がある。<br>*(Khoảng nửa năm trước, từ tháng 10. Có giấy tờ nông trại nộp và bản thân nộp.)* |
| Linh | <ruby>本人<rt>ほんにん</rt></ruby>が<ruby>用意<rt>ようい</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Giấy tờ bản thân chuẩn bị cụ thể là gì ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>、<ruby>健康<rt>けんこう</rt></ruby><ruby>診断書<rt>しんだんしょ</rt></ruby>など。リストは<ruby>後<rt>あと</rt></ruby>でLINEで<ruby>送<rt>おく</rt></ruby>る。<br>*(Chứng chỉ 技能検定, giấy thuế, juuminhyou, giấy khám sức khoẻ. Lát chị gửi LINE danh sách.)* |
| Linh | ありがとうございます。<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>は<ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>取<rt>と</rt></ruby>れるということですね。<br>*(Em cảm ơn. Giấy nộp thuế lấy ở thị uỷ phải không ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | そう。マイナンバーカードがあれば、コンビニでも<ruby>取<rt>と</rt></ruby>れる。<br>*(Đúng. Có My Number Card thì konbini cũng được.)* |

---

## Tình huống 10 — Ký túc, phòng ăn · 19:30, ăn tối cùng Hương và Sari ôn từ chuyên ngành

| Vai | Lời thoại |
|---|---|
| Linh | いただきます。<br>*(Mời ăn.)* |
| Hương · Sari | いただきます。<br>*(Mời ăn.)* |
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>で「<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>きましたが、TTSと<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんですか?<br>*(Chị Linh, sáng nay nghe "ikusei shuurou", khác TTS chỗ nào ạ?)* |
| Linh | <ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>で、<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>育成<rt>いくせい</rt></ruby>し、そのまま<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めるようになっている。<ruby>転籍<rt>てんせき</rt></ruby>も<ruby>条件付<rt>じょうけんつき</rt></ruby>で<ruby>可能<rt>かのう</rt></ruby>。<br>*(Chế độ mới, đào tạo 3 năm rồi đi thẳng lên kỹ năng đặc định. Chuyển công ty có điều kiện cũng được.)* |
| Sari | じゃあ<ruby>私<rt>わたし</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>のTTSとは<ruby>違<rt>ちが</rt></ruby>うね。マイさんラッキー。<br>*(Vậy khác TTS thời mình. Mai may đấy.)* |
| Hương | <ruby>転籍<rt>てんせき</rt></ruby>...というのは<ruby>転職<rt>てんしょく</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Tenseki có giống tenshoku không ạ?)* |
| Linh | <ruby>似<rt>に</rt></ruby>ているけれど<ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>う。<ruby>転籍<rt>てんせき</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ<ruby>制度<rt>せいど</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>農場<rt>のうじょう</rt></ruby>を<ruby>変<rt>か</rt></ruby>えること、<ruby>転職<rt>てんしょく</rt></ruby>は<ruby>制度<rt>せいど</rt></ruby>そのものを<ruby>変<rt>か</rt></ruby>える<ruby>場合<rt>ばあい</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>むイメージかな。<br>*(Giống nhưng khác. Tenseki là đổi nông trại trong cùng chế độ, tenshoku có thể bao gồm cả đổi chế độ.)* |
| Sari | <ruby>難<rt>むずか</rt></ruby>しい!でもリンちゃん、よく<ruby>勉強<rt>べんきょう</rt></ruby>してる。<br>*(Khó! Mà Linh-chan học kỹ thật.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>はこういう<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えないと<ruby>申請<rt>しんせい</rt></ruby>できないから。<br>*(Năm 3 không nhớ mấy từ này là không nộp được hồ sơ.)* |

---

## Tình huống 11 — Đi siêu thị cuối tuần · 11:00, Linh hỏi Hương về 健康診断書

| Vai | Lời thoại |
|---|---|
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>健康<rt>けんこう</rt></ruby><ruby>診断書<rt>しんだんしょ</rt></ruby>って<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>健診<rt>けんしん</rt></ruby>で<ruby>済<rt>す</rt></ruby>みますか?<br>*(Chị Linh, giấy khám sức khoẻ làm cùng đợt khám nông trại được không ạ?)* |
| Linh | <ruby>項目<rt>こうもく</rt></ruby>が<ruby>足<rt>た</rt></ruby>りない<ruby>場合<rt>ばあい</rt></ruby>がある。<ruby>胸<rt>むね</rt></ruby>のレントゲンや<ruby>尿<rt>にょう</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>など、SSW<ruby>申請<rt>しんせい</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>指定<rt>してい</rt></ruby><ruby>書式<rt>しょしき</rt></ruby>があるよ。<br>*(Có khi thiếu hạng mục. X-quang ngực, xét nghiệm nước tiểu... có biểu mẫu chỉ định cho SSW.)* |
| Hương | じゃあ、<ruby>専用<rt>せんよう</rt></ruby>の<ruby>用紙<rt>ようし</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>病院<rt>びょういん</rt></ruby>に<ruby>行<rt>い</rt></ruby>くということですね。<br>*(Vậy mang biểu mẫu chuyên dụng đến bệnh viện đúng không ạ.)* |
| Linh | そう。<ruby>水戸<rt>みと</rt></ruby><ruby>市<rt>し</rt></ruby>に<ruby>外国人<rt>がいこくじん</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れた<ruby>病院<rt>びょういん</rt></ruby>がある。<ruby>後<rt>あと</rt></ruby>で<ruby>住所<rt>じゅうしょ</rt></ruby>を<ruby>送<rt>おく</rt></ruby>る。<br>*(Đúng. Mito có bệnh viện quen người nước ngoài. Lát chị gửi địa chỉ.)* |
| Hương | ありがとうございます。<ruby>頼<rt>たよ</rt></ruby>りになります。<br>*(Em cảm ơn. Chị đáng tin thật.)* |
| Linh | <ruby>一<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>沙織<rt>さおり</rt></ruby>さんが<ruby>私<rt>わたし</rt></ruby>にそうしてくれた。<ruby>今度<rt>こんど</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>番<rt>ばん</rt></ruby>。<br>*(Một năm trước Saori-san cũng làm thế với chị. Giờ đến lượt chị.)* |

---

## Tình huống 12 — ハウス cà chua sáng thứ Hai · 7:45, dặn dò Hương cách tiếp đón Mai

| Vai | Lời thoại |
|---|---|
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、マイさんの<ruby>到着<rt>とうちゃく</rt></ruby>まであと<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>です。<ruby>何<rt>なに</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>しておけばいいですか?<br>*(Chị Linh, còn 1 tháng Mai sang. Chuẩn bị gì ạ?)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>布団<rt>ふとん</rt></ruby>と<ruby>枕<rt>まくら</rt></ruby>、<ruby>歓迎<rt>かんげい</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>食器<rt>しょっき</rt></ruby>を<ruby>揃<rt>そろ</rt></ruby>える。<br>*(Ba việc. Một, chuẩn bị nệm, gối, bộ chén đĩa đón.)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いたラベルを<ruby>作<rt>つく</rt></ruby>る。<ruby>鋏<rt>はさみ</rt></ruby>、<ruby>長靴<rt>ながぐつ</rt></ruby>、<ruby>軍手<rt>ぐんて</rt></ruby>、<ruby>収穫<rt>しゅうかく</rt></ruby>カゴ。<br>*(Hai, làm nhãn ghi tên dụng cụ. Kéo, ủng, găng vải, sọt thu hoạch.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>に<ruby>食<rt>た</rt></ruby>べるベトナム<ruby>料理<rt>りょうり</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby>。<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>があると<ruby>安心<rt>あんしん</rt></ruby>するから。<br>*(Ba, nguyên liệu nấu món Việt ngày đầu. Có vị quê hương sẽ an tâm.)* |
| Hương | <ruby>細<rt>こま</rt></ruby>かいですね。さすがリン<ruby>姉<rt>ねえ</rt></ruby>さん。<br>*(Chu đáo nhỉ. Quả là chị Linh.)* |
| Linh | <ruby>自分<rt>じぶん</rt></ruby>が<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>に<ruby>欲<rt>ほ</rt></ruby>しかったものを<ruby>用意<rt>ようい</rt></ruby>するだけ。<br>*(Chỉ là chuẩn bị thứ hồi sang mình từng muốn có.)* |

---

## Tình huống 13 — Phòng Linh · 21:00, gọi điện về VN báo tin năm 3 và mời mẹ sang

> Cảnh tiếng Việt — đối thoại thực với mẹ ở Đồng Tháp, chêm từ JP đã học.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Mẹ ơi, hôm nay con vừa họp đầu năm. Anh 親方 Yamamoto thông báo tháng 4 năm sau con chuyển sang SSW1 — kỹ năng đặc định số 1 ngành nông nghiệp. |
| Mẹ | (tiếng Việt) Mẹ mừng quá Linh. Vậy cố nốt một năm nữa thôi con. |
| Linh | (tiếng Việt) Tháng 9 con thi 技能検定 cấp 3, nếu đậu thì được 良好修了, miễn luôn thi kỹ năng SSW1, mẹ ạ. |
| Mẹ | (tiếng Việt) Vậy con tập trung học đi. Bố mẹ ở nhà ổn. |
| Linh | (tiếng Việt) Mẹ ơi, tháng 1 sang năm bố mẹ qua Nhật chơi với con được không? Visa diện 短期滞在 — thăm ngắn 90 ngày. Bên này con viết 招待状 — giấy mời, gửi về cho bố mẹ mang ra Đại sứ quán. |
| Mẹ | (tiếng Việt) 招待状 là gì hả con? Mẹ chưa nghe. |
| Linh | (tiếng Việt) Là giấy con viết ở Nhật mời bố mẹ, kèm bản photo thẻ cư trú 在留カード và giấy chứng minh tài chính bảo lãnh. Bố mẹ chỉ cần cầm qua Đại sứ quán Nhật ở Sài Gòn. |
| Mẹ | (tiếng Việt) Vậy đỡ lo. Hồi cô Tư đi, mẹ không dám hỏi vì sợ rắc rối. Lần này có con ở đó rồi. |
| Linh | (tiếng Việt) Hôm nay con còn học thêm từ mới mẹ ạ: 仲間 nghĩa là đồng đội. Chị Saori — chị Nhật làm 10 năm — bảo nakama quan trọng hơn lương. Con thấy đúng. |
| Mẹ | (tiếng Việt) Đúng đó con. Ở đâu có người tốt thì ở đó là nhà. |
| Linh | (tiếng Việt) Tuần này mẹ gửi cho con bản scan hộ chiếu của bố mẹ nhé, con bắt đầu chuẩn bị thư mời. À mẹ ơi, tháng 5 có em Mai từ Đồng Tháp mình sang đó, con kèm. |
| Mẹ | (tiếng Việt) Trời, đồng hương luôn. Nhớ chăm em nó như cô Saori chăm con đó. |
| Linh | (tiếng Việt) Dạ. Mẹ ngủ sớm, mai con đi làm. |

---

## Tình huống 14 — Ký túc, bàn học · 22:30, ghi sổ kế hoạch năm và chốt bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<br>*(Mùng 1 tháng 4, ngày đầu năm 3. Sắp xếp việc cần xác nhận.)* |
| Linh | <ruby>一<rt>いち</rt></ruby>、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>耕種<rt>こうしゅ</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby>(<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>)で<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>を<ruby>取<rt>と</rt></ruby>る。<ruby>二<rt>に</rt></ruby>、JLPTN2に<ruby>挑戦<rt>ちょうせん</rt></ruby>(<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>)。<br>*(Một, đậu 技能検定3級 trồng trọt (tháng 9) để được 良好修了. Hai, thi JLPT N2 (tháng 12).)* |
| Linh | <ruby>三<rt>さん</rt></ruby>、フオンさんとマイさんの<ruby>指導<rt>しどう</rt></ruby>サポート。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby><ruby>夜<rt>よる</rt></ruby>にやさしい<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby>。<br>*(Ba, hỗ trợ kèm Hương và Mai. Tối thứ Bảy ôn yasashii nihongo.)* |
| Linh | <ruby>四<rt>し</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>。<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>はコンビニ、<ruby>健診<rt>けんしん</rt></ruby>は<ruby>水戸<rt>みと</rt></ruby>の<ruby>病院<rt>びょういん</rt></ruby>。<br>*(Bốn, từ tháng 10 chuẩn bị hồ sơ SSW1. Giấy thuế lấy konbini, khám bệnh viện Mito.)* |
| Linh | <ruby>五<rt>ご</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>母<rt>はは</rt></ruby>を<ruby>短期<rt>たんき</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザで<ruby>招待<rt>しょうたい</rt></ruby>。<ruby>招待状<rt>しょうたいじょう</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カードのコピーを<ruby>準備<rt>じゅんび</rt></ruby>。<br>*(Năm, tháng 1 mời mẹ visa thăm ngắn. Chuẩn bị thư mời và bản photo thẻ cư trú.)* |
| Linh | <ruby>六<rt>ろく</rt></ruby>、<ruby>転職<rt>てんしょく</rt></ruby>は<ruby>急<rt>いそ</rt></ruby>がない。<ruby>仲間<rt>なかま</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にしながら<ruby>一<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>判断<rt>はんだん</rt></ruby>する。<br>*(Sáu, chuyển việc không vội. Trân trọng nakama và để một năm để quyết.)* |
| Linh | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Từng cái một, chắc chắn. Cố lên.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá, Linh nhận thông báo chuyển sang **特定技能1号** ngành nông nghiệp từ tháng 4 năm sau và phân công làm sempai-of-sempai. Học các mẫu câu: trình bày kế hoạch năm có **số thứ tự (一つ目・二つ目)** với 親方 Yamamoto, xác nhận thông tin chuyên ngành bằng **〜ということですね**, hỏi lại từ chuyên ngành visa/chế độ **〜というのは?** (転職・業種・転籍・育成就労・短期滞在), trao đổi về cơ chế **技能検定3級 → 良好修了 → 免除 SSW1試験**, xin ý kiến đàn chị Saori bằng **ご意見を伺いたいのですが**, mời gia đình bằng **短期滞在ビザ + 招待状 + 在留カードのコピー**, báo cáo **害虫** (うどんこ病) bằng pattern "vị trí + hiện tượng + số lượng", và coach kohai bằng **やさしい日本語** — câu ngắn, một câu một thông tin, kèm cử chỉ. Thấm câu của Saori-san: **仲間** đôi khi quan trọng hơn lương.

> Từ vựng & mẫu câu chương này: 3年目・最終年・特定技能1号・育成就労・技能検定3級・耕種農業・良好修了・免除・転職・転籍・業種・農業分野・申請書類・納税証明書・住民票・在留カード・招待状・短期滞在ビザ・指導担当・後輩・仲間・やさしい日本語・選択肢・脇芽かき・うどんこ病・有機農薬・JAS監査・〜というのは・〜ということですね・ご意見を伺いたいのですが・一つ目・二つ目・報連相

---

## Bí quyết chương

- **Sempai-of-sempai**: khi được giao kèm kohai, mình vẫn báo cáo lên 指導担当 chính (Hương), không vượt mặt.
- **やさしい日本語 cho kohai mới**: câu ngắn, 1 câu 1 thông tin, tránh kanji-go khó, kèm cử chỉ — đặc biệt quan trọng với nông nghiệp vì thao tác gắn liền dụng cụ.
- **技能検定3級 + 良好修了 = miễn thi kỹ năng SSW1**: nhớ xin chứng chỉ giấy ngay sau khi đậu.
- **業種 ngành nông** = 農業分野 (耕種 + 畜産). Trong SSW1 có thể chuyển giữa hai, khác hẳn TTS.
- **JAS有機 record**: mọi 農薬 dùng phải ghi sổ — đầu năm là lúc thiết lập format ghi chép cho cả năm.
- **仲間 > 給料 (khi mới)**: Saori-san 10 năm 1 nông trại — đáng để suy ngẫm trước khi quyết transfer.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 年度 | ねんど | NIÊN ĐỘ | năm tài khoá |
| 変化 | へんか | BIẾN HOÁ | thay đổi |
| 最終年 | さいしゅうねん | TỐI CHUNG NIÊN | năm cuối |
| 親方 | おやかた | THÂN PHƯƠNG | chủ trại (cách gọi truyền thống) |
| 農園 | のうえん | NÔNG VIÊN | nông trại |
| 特定技能1号 | とくていぎのういちごう | ĐẶC ĐỊNH KỸ NĂNG NHẤT HIỆU | kỹ năng đặc định số 1 (SSW1) |
| 農業分野 | のうぎょうぶんや | NÔNG NGHIỆP PHÂN DÃ | lĩnh vực nông nghiệp |
| 育成就労 | いくせいしゅうろう | DỤC THÀNH TỰU LAO | chế độ đào tạo lao động (Ikusei) |
| 新人 | しんじん | TÂN NHÂN | người mới |
| 指導担当 | しどうたんとう | CHỈ ĐẠO ĐẢM ĐƯƠNG | người phụ trách hướng dẫn |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | báo cáo - liên lạc - bàn bạc |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 承知 | しょうち | THỪA TRI | hiểu, rõ ý |
| 挨拶 | あいさつ | ÁI TÁT | chào hỏi |
| 道具 | どうぐ | ĐẠO CỤ | dụng cụ |
| 漢語 | かんご | HÁN NGỮ | từ Hán |
| 鋏 | はさみ | GIẢO | kéo (cắt) |
| 枝 | えだ | CHI | cành |
| 脇芽 | わきめ | DỊCH NHA | chồi nách |
| 新芽 | しんめ | TÂN NHA | chồi non |
| 花房 | かぼう | HOA PHÒNG | chùm hoa |
| 害虫 | がいちゅう | HẠI TRÙNG | sâu hại |
| うどんこ病 | うどんこびょう | — BỆNH | bệnh phấn trắng |
| 初期症状 | しょきしょうじょう | SƠ KỲ TRIỆU TRẠNG | triệu chứng giai đoạn đầu |
| 処分 | しょぶん | XỬ PHÂN | xử lý, loại bỏ |
| 有機農薬 | ゆうきのうやく | HỮU CƠ NÔNG DƯỢC | thuốc trừ sâu hữu cơ |
| 散布 | さんぷ | TÁN BỐ | phun, rải |
| 記録 | きろく | KÝ LỤC | ghi chép |
| JAS監査 | ジャスかんさ | — GIÁM SÁT | thanh tra JAS |
| 認証 | にんしょう | NHẬN CHỨNG | chứng nhận |
| 新年度 | しんねんど | TÂN NIÊN ĐỘ | năm tài khoá mới |
| 在留資格 | ざいりゅうしかく | TẠI LƯU TƯ CÁCH | tư cách lưu trú |
| 家族滞在 | かぞくたいざい | GIA TỘC TRỆ TẠI | lưu trú gia đình |
| 申請 | しんせい | THÂN THỈNH | nộp đơn, làm hồ sơ |
| 遠慮 | えんりょ | VIỄN LỰ | ngại, e ngại |
| 技能検定 | ぎのうけんてい | KỸ NĂNG KIỂM ĐỊNH | kỳ thi đánh giá tay nghề |
| 耕種農業 | こうしゅのうぎょう | CANH CHỦNG NÔNG NGHIỆP | trồng trọt |
| 畜産 | ちくさん | SÚC SẢN | chăn nuôi |
| 良好修了 | りょうこうしゅうりょう | LƯƠNG HẢO TU LIỄU | hoàn thành tốt |
| 免除 | めんじょ | MIỄN TRỪ | miễn (thi) |
| 合格証明書 | ごうかくしょうめいしょ | HỢP CÁCH CHỨNG MINH THƯ | giấy chứng nhận đậu |
| 整理 | せいり | CHỈNH LÝ | sắp xếp |
| 転職 | てんしょく | CHUYỂN CHỨC | chuyển việc |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 業種 | ぎょうしゅ | NGHIỆP CHỦNG | ngành nghề |
| 大規模農場 | だいきぼのうじょう | ĐẠI QUY MÔ NÔNG TRƯỜNG | nông trại quy mô lớn |
| 時給 | じきゅう | THỜI CẤP | lương theo giờ |
| 仲間 | なかま | TRỌNG GIAN | đồng đội, bạn đồng hành |
| 後悔 | こうかい | HẬU HỐI | hối hận |
| 貴重 | きちょう | QUÝ TRỌNG | quý giá |
| 申請書類 | しんせいしょるい | THÂN THỈNH THƯ LOẠI | hồ sơ xin |
| 目安 | めやす | MỤC AN | mức ước tính |
| 本人 | ほんにん | BẢN NHÂN | bản thân |
| 納税証明書 | のうぜいしょうめいしょ | NẠP THUẾ CHỨNG MINH THƯ | giấy chứng nhận nộp thuế |
| 住民票 | じゅうみんひょう | TRỤ DÂN PHIẾU | giấy đăng ký cư trú |
| 健康診断書 | けんこうしんだんしょ | KIỆN KHANG CHẨN ĐOÁN THƯ | giấy khám sức khoẻ |
| 市役所 | しやくしょ | THỊ DỊCH SỞ | toà thị chính |
| 取得 | しゅとく | THỦ ĐẮC | lấy, nhận được |
| 制度 | せいど | CHẾ ĐỘ | chế độ |
| 転籍 | てんせき | CHUYỂN TỊCH | chuyển hộ khẩu/công ty |
| 短期滞在 | たんきたいざい | ĐOẢN KỲ TRỆ TẠI | lưu trú ngắn hạn |
| 招待状 | しょうたいじょう | CHIÊU ĐÃI TRẠNG | thư mời |
| 在留カード | ざいりゅうカード | TẠI LƯU — | thẻ cư trú |
| 長靴 | ながぐつ | TRƯỜNG ĐỜ | ủng |
| 軍手 | ぐんて | QUÂN THỦ | găng tay vải |
| 収穫 | しゅうかく | THU HOẠCH | thu hoạch |
| 判断 | はんだん | PHÁN ĐOÁN | quyết định, phán đoán |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000002, 800000042, NULL, 'markdown_book', 'T2. Đăng ký SSW1 nông nghiệp — mensetsu với 親方 (特定技能1号申請・親方面接)', '# Sách thực tập sinh nông nghiệp · T2. Đăng ký SSW1 nông nghiệp — mensetsu với 親方 (特定技能1号申請・親方面接)

> **Mục tiêu nhân vật:** Linh (24t, Đồng Tháp) bước vào tháng 5/2027. Học các mẫu hội thoại tiếng Nhật cho việc **đăng ký SSW1 ngành nông nghiệp**: nộp ý nguyện tiếp tục với 親方 Yamamoto, làm **面接** chính thức để ký 雇用契約書, hỏi 監理団体 về thủ tục, xác nhận với 行政書士, cập nhật **在留資格変更申請**, và báo cáo lộ trình cho gia đình. Tăng cường keigo công sở: お伺いいたします / 〜させていただきます / 拝見する.

---

## Bối cảnh

Ngày 10 tháng 5 năm 2027, Ibaraki, Yamamoto-nōen (山本農園). Linh đã trao đổi sơ bộ về SSW1 từ tháng 4. Hôm nay là buổi 面接 chính thức để 親方 ký vào 雇用契約書 — bước đầu để gửi hồ sơ lên 出入国在留管理庁. Cùng tuần có buổi gặp 監理団体 Ibaraki Kyoudou và sau đó 行政書士 (luật sư hành chính). Chương này tập trung keigo công sở giai đoạn申請, cách hỏi rõ điều kiện hợp đồng (給与・残業・社会保険・住宅費), và cách thuyết phục mẹ ở Việt Nam yên tâm.

---

## Tình huống 1 — Phòng 親方 · 10:00, Linh xin nộp ý nguyện tiếp tục bằng pattern 〜させていただきます

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し、ありがとうございます。<br>*(Thưa anh, chào buổi sáng. Cảm ơn anh đã dành thời gian hôm nay.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | リンさん、どうぞ。<ruby>座<rt>すわ</rt></ruby>って。<br>*(Linh, mời. Em ngồi.)* |
| Linh | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>への<ruby>移行<rt>いこう</rt></ruby>について、<ruby>正式<rt>せいしき</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>させていただきたく、お<ruby>伺<rt>うかが</rt></ruby>いいたしました。<br>*(Em xin phép. Hôm nay em xin chính thức được bàn việc chuyển sang SSW1.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | はい、<ruby>承<rt>うけたまわ</rt></ruby>りました。リンさんの<ruby>意思<rt>いし</rt></ruby>は<ruby>固<rt>かた</rt></ruby>まりましたか?<br>*(Vâng, anh đã rõ. Ý nguyện của em chắc chưa?)* |
| Linh | はい。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>こちらでお<ruby>世話<rt>せわ</rt></ruby>になり、<ruby>農業<rt>のうぎょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたいと<ruby>強<rt>つよ</rt></ruby>く<ruby>思<rt>おも</rt></ruby>っております。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>かせていただきたいです。<br>*(Vâng. 3 năm em được anh chăm sóc, em muốn tiếp tục công việc nông nghiệp. Em mong được làm tiếp ở Yamamoto-nōen.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | ありがたい<ruby>申<rt>もう</rt></ruby>し<ruby>出<rt>で</rt></ruby>です。<ruby>農園<rt>のうえん</rt></ruby>としても<ruby>歓迎<rt>かんげい</rt></ruby>します。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>面接<rt>めんせつ</rt></ruby>を<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby><ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>行<rt>おこな</rt></ruby>いたいですが、<ruby>都合<rt>つごう</rt></ruby>はいかがですか?<br>*(Lời đề nghị quý báu. Phía trại cũng hoan nghênh. Anh muốn tổ chức buổi 面接 chính thức thứ Hai tuần sau 14h, em tiện không?)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>履歴書<rt>りれきしょ</rt></ruby>と<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>させていただきます。<br>*(Vâng, em rõ. Em sẽ chuẩn bị sơ yếu lý lịch và bản motivation.)* |

---

## Tình huống 2 — Phòng họp 監理団体 Ibaraki Kyoudou · 11:00 hôm sau, hỏi quy trình

| Vai | Lời thoại |
|---|---|
| <ruby>担当<rt>たんとう</rt></ruby> | リンさん、3<ruby>年間<rt>ねんかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。SSW1への<ruby>移行<rt>いこう</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>きをご<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Linh-san, em đã vất vả 3 năm. Tôi sẽ giải thích thủ tục chuyển sang SSW1.)* |
| Linh | よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。メモを<ruby>取<rt>と</rt></ruby>らせていただいてもよろしいでしょうか?<br>*(Em xin nhờ ạ. Em xin phép ghi chép được không ạ?)* |
| <ruby>担当<rt>たんとう</rt></ruby> | もちろんです。<ruby>大<rt>おお</rt></ruby>きく<ruby>三<rt>みっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>があります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby>の<ruby>締結<rt>ていけつ</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>の<ruby>収集<rt>しゅうしゅう</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>。<br>*(Đương nhiên. Có 3 giai đoạn lớn. Một, ký 雇用契約書. Hai, thu thập giấy tờ. Ba, xin đổi tư cách lưu trú.)* |
| Linh | すみません、「<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどこで<ruby>申請<rt>しんせい</rt></ruby>するのでしょうか?<br>*(Xin lỗi, "đổi tư cách lưu trú" cụ thể nộp ở đâu ạ?)* |
| <ruby>担当<rt>たんとう</rt></ruby> | <ruby>水戸<rt>みと</rt></ruby>の<ruby>出入国<rt>しゅつにゅうこく</rt></ruby><ruby>在留<rt>ざいりゅう</rt></ruby><ruby>管理庁<rt>かんりちょう</rt></ruby><ruby>支局<rt>しきょく</rt></ruby>です。<ruby>通常<rt>つうじょう</rt></ruby><ruby>2<rt>に</rt></ruby>~<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>で<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<br>*(Cục Quản lý Xuất nhập cảnh và Lưu trú chi nhánh Mito. Thường 2-3 tháng có kết quả.)* |
| Linh | TTSが<ruby>終<rt>お</rt></ruby>わってから<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るまで、<ruby>無職<rt>むしょく</rt></ruby><ruby>期間<rt>きかん</rt></ruby>になるということでしょうか?<br>*(Từ khi TTS hết đến khi có kết quả, em sẽ là thất nghiệp đúng không ạ?)* |
| <ruby>担当<rt>たんとう</rt></ruby> | いいえ、「<ruby>特定<rt>とくてい</rt></ruby><ruby>活動<rt>かつどう</rt></ruby>」という<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>が<ruby>付与<rt>ふよ</rt></ruby>され、その<ruby>間<rt>あいだ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>農園<rt>のうえん</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>けます。<ruby>安心<rt>あんしん</rt></ruby>してください。<br>*(Không. Sẽ được cấp tư cách "特定活動", trong thời gian đó vẫn được làm cùng nông trại. Em yên tâm.)* |
| Linh | ありがとうございます。<ruby>安心<rt>あんしん</rt></ruby>いたしました。<br>*(Em cảm ơn. Em đã yên tâm.)* |

---

## Tình huống 3 — ハウス cà chua giờ nghỉ · 10:30, Saori-san dặn về 雇用契約書

| Vai | Lời thoại |
|---|---|
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>だね。<ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>すべきポイントを<ruby>教<rt>おし</rt></ruby>えてあげる。<br>*(Linh-chan, tuần sau mensetsu nhỉ. Chị chỉ điểm phải xác nhận trong hợp đồng.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em nhờ chị.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>五<rt>いつ</rt></ruby>つある。<ruby>基本給<rt>きほんきゅう</rt></ruby>、<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>手当<rt>てあて</rt></ruby>、<ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>の<ruby>加入<rt>かにゅう</rt></ruby>、<ruby>住宅<rt>じゅうたく</rt></ruby><ruby>費<rt>ひ</rt></ruby>の<ruby>控除<rt>こうじょ</rt></ruby><ruby>額<rt>がく</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>の<ruby>日数<rt>にっすう</rt></ruby>。<br>*(Năm cái. Lương cơ bản, phụ cấp tăng ca, tham gia bảo hiểm xã hội, mức khấu trừ tiền nhà, số ngày nghỉ có lương.)* |
| Linh | <ruby>住宅<rt>じゅうたく</rt></ruby><ruby>費<rt>ひ</rt></ruby>の<ruby>控除<rt>こうじょ</rt></ruby>というのは、<ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>家賃<rt>やちん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>く<ruby>金額<rt>きんがく</rt></ruby>のことですね?<br>*(Khấu trừ tiền nhà là khoản trừ tiền thuê từ lương đúng không ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | そう。TTSの<ruby>時<rt>とき</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>って、SSW1は<ruby>上限<rt>じょうげん</rt></ruby>が<ruby>決<rt>き</rt></ruby>まっている。<ruby>実費<rt>じっぴ</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えてはいけない。<br>*(Đúng. Khác TTS, SSW1 có mức trần. Không được vượt chi phí thực.)* |
| Linh | <ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>は<ruby>年間<rt>ねんかん</rt></ruby><ruby>何<rt>なん</rt></ruby><ruby>日<rt>にち</rt></ruby>くらいでしょうか?<br>*(Nghỉ có lương khoảng bao nhiêu ngày/năm ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>初年度<rt>しょねんど</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>翌年<rt>よくねん</rt></ruby>から<ruby>11<rt>じゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>えていく。リンちゃんはTTS<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>分<rt>ぶん</rt></ruby><ruby>勤<rt>つと</rt></ruby>めているから<ruby>14<rt>じゅうよ</rt></ruby><ruby>日<rt>にち</rt></ruby>もらえるはず。<br>*(Năm đầu 10 ngày, năm sau tăng dần. Linh đã làm 3 năm TTS nên đáng được 14 ngày.)* |
| Linh | ありがとうございます。<ruby>面接<rt>めんせつ</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>いたします。<br>*(Em cảm ơn. Em sẽ xác nhận trong mensetsu.)* |

---

## Tình huống 4 — Ký túc · 21:00, Linh viết 志望動機書 cùng Hương

| Vai | Lời thoại |
|---|---|
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby><ruby>書<rt>しょ</rt></ruby>って<ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>くんですか?<br>*(Chị Linh, motivation viết gì ạ?)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つの<ruby>軸<rt>じく</rt></ruby>で<ruby>書<rt>か</rt></ruby>く。なぜ<ruby>農業<rt>のうぎょう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んだか、<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>何<rt>なに</rt></ruby>を<ruby>学<rt>まな</rt></ruby>んだか、これから<ruby>何<rt>なに</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すか。<br>*(Theo 3 trục. Vì sao chọn nông nghiệp, 3 năm học gì, sắp tới hướng đến gì.)* |
| Hương | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>例<rt>れい</rt></ruby>を<ruby>入<rt>い</rt></ruby>れた<ruby>方<rt>ほう</rt></ruby>がいいですか?<br>*(Có nên thêm ví dụ cụ thể không ạ?)* |
| Linh | <ruby>絶対<rt>ぜったい</rt></ruby>。たとえば<ruby>私<rt>わたし</rt></ruby>は「<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>、うどんこ<ruby>病<rt>びょう</rt></ruby>の<ruby>初期<rt>しょき</rt></ruby><ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>し、<ruby>親方<rt>おやかた</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>して<ruby>被害<rt>ひがい</rt></ruby>を<ruby>最小限<rt>さいしょうげん</rt></ruby>に<ruby>抑<rt>おさ</rt></ruby>えたことから、<ruby>観察<rt>かんさつ</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さを<ruby>学<rt>まな</rt></ruby>びました」と<ruby>書<rt>か</rt></ruby>く。<br>*(Chắc chắn. Ví dụ chị viết "Mùa hè năm 2, phát hiện triệu chứng đầu phấn trắng, báo 親方 và giảm thiểu thiệt hại, em học được tầm quan trọng của quan sát".)* |
| Hương | <ruby>具体的<rt>ぐたいてき</rt></ruby>でいいですね。<br>*(Cụ thể quá ạ.)* |
| Linh | <ruby>抽象的<rt>ちゅうしょうてき</rt></ruby>な「<ruby>頑張<rt>がんば</rt></ruby>ります」だけだと<ruby>弱<rt>よわ</rt></ruby>い。<ruby>数字<rt>すうじ</rt></ruby>と<ruby>場面<rt>ばめん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる。<br>*(Chỉ "em sẽ cố gắng" trừu tượng là yếu. Phải có số liệu và cảnh cụ thể.)* |

---

## Tình huống 5 — Phòng họp nhỏ 親方 · Thứ Hai 14:00, vào mensetsu chính thức (mở đầu + 志望動機)

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>失礼<rt>しつれい</rt></ruby>いたします。グエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin phép. Tôi là Nguyễn Thị Linh. Hôm nay mong anh giúp đỡ.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | どうぞ、お<ruby>座<rt>かけ</rt></ruby>けください。それでは<ruby>面接<rt>めんせつ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。まず、<ruby>志望<rt>しぼう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Mời em ngồi. Bắt đầu mensetsu. Đầu tiên, mời em kể động lực ứng tuyển.)* |
| Linh | はい。<ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>故郷<rt>こきょう</rt></ruby>のメコンデルタで<ruby>祖父母<rt>そふぼ</rt></ruby>が<ruby>水稲<rt>すいとう</rt></ruby><ruby>農家<rt>のうか</rt></ruby>を<ruby>営<rt>いとな</rt></ruby>んでおり、<ruby>幼<rt>おさな</rt></ruby>い<ruby>頃<rt>ころ</rt></ruby>から<ruby>農業<rt>のうぎょう</rt></ruby>に<ruby>親<rt>した</rt></ruby>しんでまいりました。<br>*(Vâng. Có 3 điểm. Một, ở Đồng bằng sông Cửu Long quê em, ông bà làm lúa nước, em quen với nông nghiệp từ nhỏ.)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>での<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>で、<ruby>有機<rt>ゆうき</rt></ruby><ruby>農法<rt>のうほう</rt></ruby>とJAS<ruby>認証<rt>にんしょう</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby>を<ruby>学<rt>まな</rt></ruby>ばせていただきました。<ruby>特<rt>とく</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>、うどんこ<ruby>病<rt>びょう</rt></ruby>の<ruby>初期<rt>しょき</rt></ruby><ruby>症状<rt>しょうじょう</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>して<ruby>被害<rt>ひがい</rt></ruby>を<ruby>抑<rt>おさ</rt></ruby>えた<ruby>経験<rt>けいけん</rt></ruby>から、<ruby>観察<rt>かんさつ</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さを<ruby>実感<rt>じっかん</rt></ruby>しました。<br>*(Hai, 3 năm ở Yamamoto-nōen, em được học nông pháp hữu cơ và quản lý chứng nhận JAS. Đặc biệt mùa hè năm 2, từ kinh nghiệm phát hiện triệu chứng đầu phấn trắng và chặn thiệt hại, em thấm tầm quan trọng của quan sát.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、これからはSSW1として<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>もサポートしながら、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>N2を<ruby>取<rt>と</rt></ruby>り、<ruby>将来<rt>しょうらい</rt></ruby><ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>の<ruby>JAS<rt>ジャス</rt></ruby><ruby>監査<rt>かんさ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>を<ruby>担<rt>にな</rt></ruby>える<ruby>人材<rt>じんざい</rt></ruby>になりたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Ba, sắp tới với tư cách SSW1, em vừa hỗ trợ kèm kohai, vừa lấy 技能検定2級 và N2, hướng tới trở thành nhân lực có thể đảm nhiệm thanh tra JAS của trại.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>説得<rt>せっとく</rt></ruby><ruby>力<rt>りょく</rt></ruby>があります。<br>*(Cụ thể và thuyết phục.)* |

---

## Tình huống 6 — Cùng phòng họp · 14:20, 親方 đưa 雇用契約書, Linh xác nhận từng điểm

| Vai | Lời thoại |
|---|---|
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | こちらが<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby>の<ruby>案<rt>あん</rt></ruby>です。ご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Đây là dự thảo hợp đồng. Em xem qua.)* |
| Linh | <ruby>拝見<rt>はいけん</rt></ruby>いたします。…<ruby>基本給<rt>きほんきゅう</rt></ruby>が<ruby>月額<rt>げつがく</rt></ruby><ruby>19<rt>じゅうきゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>とのことで、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>手当<rt>てあて</rt></ruby>はいかがでしょうか?<br>*(Em xem ạ. Lương cơ bản 190.000 yên/tháng, em rõ. Phụ cấp tăng ca thế nào ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>時給<rt>じきゅう</rt></ruby><ruby>換算<rt>かんさん</rt></ruby>の<ruby>1.25<rt>いってんにご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>、<ruby>深夜<rt>しんや</rt></ruby>は<ruby>1.5<rt>いってんご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>です。<ruby>労働<rt>ろうどう</rt></ruby><ruby>基準法<rt>きじゅんほう</rt></ruby><ruby>通<rt>どお</rt></ruby>り。<br>*(Quy đổi giờ × 1.25, đêm × 1.5. Đúng Luật Lao động.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>住宅<rt>じゅうたく</rt></ruby><ruby>費<rt>ひ</rt></ruby>の<ruby>控除<rt>こうじょ</rt></ruby><ruby>額<rt>がく</rt></ruby>はおいくらでしょうか?<br>*(Rõ. Khấu trừ tiền nhà bao nhiêu ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>水道<rt>すいどう</rt></ruby>・<ruby>光熱費<rt>こうねつひ</rt></ruby><ruby>込<rt>こ</rt></ruby>みで、<ruby>実費<rt>じっぴ</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>です。<br>*(2 vạn/tháng. Gồm điện nước, tương đương chi phí thực.)* |
| Linh | <ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>は<ruby>厚生<rt>こうせい</rt></ruby><ruby>年金<rt>ねんきん</rt></ruby>と<ruby>健康<rt>けんこう</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>加入<rt>かにゅう</rt></ruby>させていただけるということですね。<br>*(Bảo hiểm xã hội gồm cả lương hưu phúc lợi và bảo hiểm y tế đều được tham gia đúng không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | はい。<ruby>労災<rt>ろうさい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>と<ruby>雇用<rt>こよう</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>めて<ruby>4<rt>よん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby><ruby>全<rt>すべ</rt></ruby>て<ruby>加入<rt>かにゅう</rt></ruby>。<br>*(Vâng. Cả bảo hiểm tai nạn lao động và thất nghiệp, đủ 4 loại.)* |
| Linh | <ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>の<ruby>日数<rt>にっすう</rt></ruby>は<ruby>年間<rt>ねんかん</rt></ruby><ruby>14<rt>じゅうよ</rt></ruby><ruby>日<rt>にち</rt></ruby>と<ruby>記載<rt>きさい</rt></ruby>されておりますが、<ruby>勤続<rt>きんぞく</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>はTTSの<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>がれるということでしょうか?<br>*(Ngày nghỉ có lương ghi 14 ngày/năm, thâm niên được nối tiếp từ 3 năm TTS đúng không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>り。<ruby>労働<rt>ろうどう</rt></ruby><ruby>基準法<rt>きじゅんほう</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>39<rt>さんじゅうきゅう</rt></ruby><ruby>条<rt>じょう</rt></ruby>で<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>がれます。<br>*(Đúng. Theo Điều 39 Luật Lao động được kế thừa.)* |
| Linh | <ruby>細<rt>こま</rt></ruby>かいところまでご<ruby>説明<rt>せつめい</rt></ruby>いただき、ありがとうございました。<ruby>家<rt>うち</rt></ruby>で<ruby>一<rt>いち</rt></ruby><ruby>晩<rt>ばん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただいてから、<ruby>明日<rt>あした</rt></ruby><ruby>署名<rt>しょめい</rt></ruby>させていただきます。<br>*(Em cảm ơn anh giải thích chi tiết. Em xin về xem qua một đêm, ngày mai sẽ ký.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | もちろんです。<ruby>慎重<rt>しんちょう</rt></ruby>でよろしい。<br>*(Tất nhiên. Cẩn thận như vậy là tốt.)* |

---

## Tình huống 7 — Phòng họp · 14:50, 親方 hỏi câu khó về tương lai

| Vai | Lời thoại |
|---|---|
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>最後<rt>さいご</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>かせてください。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、リンさんはどこにいたいですか?<br>*(Cuối cùng cho anh hỏi một câu. 5 năm sau, Linh muốn ở đâu?)* |
| Linh | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げてもよろしいでしょうか?<br>*(Em xin được nói thẳng có được không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | もちろん。<br>*(Tất nhiên.)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>は<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>し、<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>のJAS<ruby>監査<rt>かんさ</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>として<ruby>佐織<rt>さおり</rt></ruby>さんから<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>がせていただきたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(5 năm sau em muốn lấy SSW2, và xin được nhận bàn giao vai đầu mối thanh tra JAS từ Saori-san.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>大<rt>おお</rt></ruby>きな<ruby>志<rt>こころざし</rt></ruby>ですね。<ruby>佐織<rt>さおり</rt></ruby>からも<ruby>聞<rt>き</rt></ruby>いていました。<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Chí lớn nhỉ. Anh cũng đã nghe Saori nói. Anh ủng hộ.)* |
| Linh | ありがとうございます。<ruby>身<rt>み</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>いです。<br>*(Em cảm ơn. Em thấy mình phải nghiêm túc hơn.)* |

---

## Tình huống 8 — Văn phòng 行政書士 thị trấn · Sáng thứ Tư 10:00, kiểm tra hồ sơ

| Vai | Lời thoại |
|---|---|
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | リンさん、<ruby>書類<rt>しょるい</rt></ruby><ruby>一式<rt>いっしき</rt></ruby><ruby>拝見<rt>はいけん</rt></ruby>します。…<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby>、<ruby>履歴書<rt>りれきしょ</rt></ruby>、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>パスポート<rt>ぱすぽーと</rt></ruby><ruby>写<rt>うつ</rt></ruby>し...<br>*(Linh, tôi xem qua toàn bộ hồ sơ. Hợp đồng, lý lịch, juuminhyou, giấy thuế, bản photo hộ chiếu...)* |
| Linh | お<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>不<rt>ふ</rt></ruby><ruby>足<rt>そく</rt></ruby>している<ruby>書類<rt>しょるい</rt></ruby>はございますでしょうか?<br>*(Em nhờ ạ. Có giấy nào thiếu không ạ?)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | <ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>がまだですね。<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>とのことなので、<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>になります。<br>*(Chứng chỉ 技能検定3級 chưa có. Tháng 9 thi nên nộp bổ sung sau kết quả.)* |
| Linh | もし<ruby>不<rt>ふ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>だった<ruby>場合<rt>ばあい</rt></ruby>はどうなるのでしょうか?<br>*(Trường hợp em trượt thì sao ạ?)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | その<ruby>場合<rt>ばあい</rt></ruby>はSSW1<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>(<ruby>農業<rt>のうぎょう</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>)を<ruby>別途<rt>べっと</rt></ruby><ruby>受<rt>う</rt></ruby>けていただきます。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>と<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>東京<rt>とうきょう</rt></ruby>で<ruby>実施<rt>じっし</rt></ruby>。<br>*(Khi đó em thi 農業技能測定試験 (kỳ thi kỹ năng SSW1). Tổ chức tháng 11 và tháng 1 ở Tokyo.)* |
| Linh | バックアップ<ruby>案<rt>あん</rt></ruby>があるということですね。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Tức là có phương án dự phòng. Em yên tâm.)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | あと、<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby><ruby>試験<rt>しけん</rt></ruby>N4<ruby>以上<rt>いじょう</rt></ruby>または<ruby>JFT<rt>ジェイエフティ</rt></ruby>-Basicの<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Còn cần chứng chỉ JLPT N4 trở lên hoặc JFT-Basic.)* |
| Linh | N3を<ruby>取得<rt>しゅとく</rt></ruby>しておりますので、その<ruby>証明書<rt>しょうめいしょ</rt></ruby>を<ruby>来週<rt>らいしゅう</rt></ruby><ruby>持参<rt>じさん</rt></ruby>させていただきます。<br>*(Em đã có N3, tuần sau em mang chứng chỉ đến.)* |

---

## Tình huống 9 — Văn phòng 行政書士 · 10:40, hỏi về phí và thời gian

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>手数料<rt>てすうりょう</rt></ruby>はおいくらでしょうか?<br>*(Xin phép hỏi, phí dịch vụ là bao nhiêu ạ?)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | <ruby>当<rt>とう</rt></ruby><ruby>事務所<rt>じむしょ</rt></ruby>では<ruby>12<rt>じゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>+<ruby>消費税<rt>しょうひぜい</rt></ruby>です。<ruby>農園<rt>のうえん</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>分<ruby>と<rt>—</rt></ruby><ruby>本人<rt>ほんにん</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>分の<ruby>取<rt>と</rt></ruby>り<ruby>決<rt>き</rt></ruby>めは<ruby>親方<rt>おやかた</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Văn phòng tôi 12 vạn yên + thuế tiêu dùng. Phần nông trại chịu / bản thân chịu, em xác nhận với 親方.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>申請<rt>しんせい</rt></ruby>から<ruby>結果<rt>けっか</rt></ruby>までの<ruby>期間<rt>きかん</rt></ruby>は、<ruby>通常<rt>つうじょう</rt></ruby>どのくらいでしょうか?<br>*(Rõ. Từ lúc nộp đến kết quả thường mất bao lâu ạ?)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | <ruby>水戸<rt>みと</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>、<ruby>2<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>~<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>。<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>なら、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>~<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>頭<rt>あたま</rt></ruby>には<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<br>*(Trường hợp 入管 Mito, 2-3 tháng. Cuối tháng 10 nộp thì cuối tháng 1 đầu tháng 2 có kết quả.)* |
| Linh | TTSの<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>期間<rt>きかん</rt></ruby><ruby>満了<rt>まんりょう</rt></ruby>が<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>なので、<ruby>余裕<rt>よゆう</rt></ruby>がありますね。<br>*(Tư cách TTS hết tháng 4 nên còn dư thời gian nhỉ.)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | はい。<ruby>万<rt>まん</rt></ruby>が<ruby>一<rt>いち</rt></ruby><ruby>結果<rt>けっか</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れても「<ruby>特定<rt>とくてい</rt></ruby><ruby>活動<rt>かつどう</rt></ruby>」で<ruby>働<rt>はたら</rt></ruby>けるので<ruby>心配<rt>しんぱい</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>です。<br>*(Vâng. Lỡ chậm cũng được "特定活動" làm tiếp nên không cần lo.)* |

---

## Tình huống 10 — ハウス cà chua chiều · 16:00, Linh báo cáo nhanh cho 親方 sau buổi 行政書士

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby>の<ruby>先生<rt>せんせい</rt></ruby>とのお<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせ、<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>終<rt>お</rt></ruby>わりました。ご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Anh ơi, em xin báo cáo: buổi làm việc với luật sư đã xong thuận lợi.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>結果<rt>けっか</rt></ruby>はどうでしたか?<br>*(Em vất vả. Kết quả thế nào?)* |
| Linh | <ruby>大<rt>おお</rt></ruby>きな<ruby>問題<rt>もんだい</rt></ruby>はありません。<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>を<ruby>後<rt>あと</rt></ruby>から<ruby>追加<rt>ついか</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Không vấn đề lớn. Chứng chỉ 技能検定3級 thi tháng 9 sẽ nộp bổ sung sau.)* |
| Linh | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>一<rt>ひと</rt></ruby>つご<ruby>相談<rt>そうだん</rt></ruby>がございます。<ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby><ruby>手数料<rt>てすうりょう</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>の<ruby>負担<rt>ふたん</rt></ruby><ruby>割合<rt>わりあい</rt></ruby>について、<ruby>農園<rt>のうえん</rt></ruby>の<ruby>方針<rt>ほうしん</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>えますでしょうか?<br>*(Em xin phép có một việc cần bàn. Về tỉ lệ chịu phí 12 vạn yên của luật sư, em xin được hỏi phương châm của trại ạ.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>当<rt>とう</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>では<ruby>全額<rt>ぜんがく</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>します。リンさんは<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>人材<rt>じんざい</rt></ruby>ですから。<br>*(Trại chịu toàn bộ. Em là nhân lực quan trọng mà.)* |
| Linh | …ありがとうございます。<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>もございません。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>働<rt>はたら</rt></ruby>かせていただきます。<br>*(…Em cảm ơn. Em không biết nói gì hơn. Em sẽ làm hết sức.)* |

---

## Tình huống 11 — Khu nghỉ ngoài ハウス · 12:30, Saori-san chúc mừng và dặn chuyện 健康診断

| Vai | Lời thoại |
|---|---|
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん、<ruby>面接<rt>めんせつ</rt></ruby>と<ruby>契約<rt>けいやく</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>聞<rt>き</rt></ruby>いたよ、<ruby>手数料<rt>てすうりょう</rt></ruby><ruby>全額<rt>ぜんがく</rt></ruby><ruby>農園<rt>のうえん</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>って。<br>*(Linh-chan, vất vả mensetsu và hợp đồng. Chị nghe rồi, phí trại chịu hết.)* |
| Linh | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>くて、<ruby>言葉<rt>ことば</rt></ruby>になりませんでした。<br>*(Vâng, em thực sự cảm động không nói được lời.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>当然<rt>とうぜん</rt></ruby>のことよ。あと、<ruby>来月<rt>らいげつ</rt></ruby><ruby>頭<rt>あたま</rt></ruby>に<ruby>健康<rt>けんこう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>を<ruby>水戸<rt>みと</rt></ruby><ruby>市民<rt>しみん</rt></ruby><ruby>病院<rt>びょういん</rt></ruby>で<ruby>予約<rt>よやく</rt></ruby>しておいた。<ruby>項目<rt>こうもく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>はSSW<ruby>専用<rt>せんよう</rt></ruby><ruby>書式<rt>しょしき</rt></ruby>。<br>*(Đương nhiên thôi. À, chị đặt khám sức khoẻ đầu tháng sau ở bệnh viện thành phố Mito rồi. Biểu mẫu chuyên dụng SSW.)* |
| Linh | <ruby>細<rt>こま</rt></ruby>かいところまで<ruby>気<rt>き</rt></ruby>を<ruby>配<rt>くば</rt></ruby>っていただき、ありがとうございます。<br>*(Chị chu đáo từng chi tiết, em cảm ơn.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>一<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>が<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>に<ruby>親方<rt>おやかた</rt></ruby>がそうしてくれた。<ruby>恩送<rt>おんおく</rt></ruby>りだよ。<br>*(Một năm trước khi chị khó, 親方 đã làm thế. "Gửi tiếp ân tình" thôi.)* |
| Linh | <ruby>恩送<rt>おんおく</rt></ruby>り…<ruby>素敵<rt>すてき</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>ですね。<ruby>私<rt>わたし</rt></ruby>もマイさんに<ruby>同<rt>おな</rt></ruby>じことをします。<br>*(On-okuri... từ đẹp quá. Em cũng sẽ làm thế với Mai.)* |

---

## Tình huống 12 — Khu rửa xe nông cụ chiều thứ Sáu · 17:00, Linh phổ biến lại quy trình cho Hương

| Vai | Lời thoại |
|---|---|
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>のためにも、SSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Chị Linh, vì em năm sau nữa, chị chỉ em quy trình SSW1 với.)* |
| Linh | いいよ。<ruby>四<rt>よっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>親方<rt>おやかた</rt></ruby>と<ruby>面談<rt>めんだん</rt></ruby>して<ruby>意思<rt>いし</rt></ruby><ruby>表明<rt>ひょうめい</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>監理<rt>かんり</rt></ruby><ruby>団体<rt>だんたい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>して<ruby>制度<rt>せいど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Được. 4 giai đoạn. Một, gặp 親方 bày tỏ ý nguyện. Hai, gặp 監理団体 xác nhận chế độ.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>正式<rt>せいしき</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>と<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby><ruby>締結<rt>ていけつ</rt></ruby>。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby><ruby>経由<rt>けいゆ</rt></ruby>で<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>。<br>*(Ba, mensetsu chính thức và ký hợp đồng. Bốn, qua luật sư nộp 入管 xin đổi tư cách.)* |
| Hương | <ruby>面接<rt>めんせつ</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なことは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Trong mensetsu điều gì quan trọng nhất ạ?)* |
| Linh | <ruby>具体<rt>ぐたい</rt></ruby><ruby>例<rt>れい</rt></ruby>。「<ruby>頑張<rt>がんば</rt></ruby>ります」ではなく、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>場面<rt>ばめん</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>入<rt>い</rt></ruby>れる。<br>*(Ví dụ cụ thể. Không phải "em sẽ cố", mà nhất định kể cảnh cụ thể 3 năm qua.)* |
| Hương | メモします。ありがとうございます。<br>*(Em ghi lại. Em cảm ơn.)* |
| Linh | あと、<ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby>の<ruby>5<rt>ご</rt></ruby><ruby>項目<rt>こうもく</rt></ruby> — <ruby>基本給<rt>きほんきゅう</rt></ruby>、<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>手当<rt>てあて</rt></ruby>、<ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>、<ruby>住宅<rt>じゅうたく</rt></ruby><ruby>費<rt>ひ</rt></ruby><ruby>控除<rt>こうじょ</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby> — を<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Và 5 mục hợp đồng — lương cơ bản, phụ cấp tăng ca, bảo hiểm xã hội, khấu trừ tiền nhà, nghỉ có lương — nhất định kiểm.)* |

---

## Tình huống 13 — Phòng Linh tối thứ Sáu · 21:00, gọi điện về VN báo tin ký hợp đồng

> Cảnh tiếng Việt — đối thoại với mẹ.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Mẹ ơi, hôm nay con ký 雇用契約書 — hợp đồng lao động SSW1 với 親方 Yamamoto rồi. |
| Mẹ | (tiếng Việt) Vậy là chính thức rồi hả con? |
| Linh | (tiếng Việt) Chính thức bước đầu thôi mẹ. Tháng 10 luật sư mới nộp hồ sơ lên 入管 Mito — Cục Quản lý Xuất nhập cảnh. Tháng 1-2 năm sau mới có kết quả. |
| Mẹ | (tiếng Việt) Lương con đủ sống không? |
| Linh | (tiếng Việt) Cơ bản 190 nghìn yên một tháng. Trừ tiền nhà 2 vạn, bảo hiểm các loại nữa, còn khoảng 14-15 vạn. Tăng ca thì × 1.25. Mẹ ạ, hôm nay con xúc động lắm — phí luật sư 12 vạn yên, 親方 chịu hết. |
| Mẹ | (tiếng Việt) Trời, con gặp được người tốt. Nhớ làm việc đàng hoàng nha. |
| Linh | (tiếng Việt) Dạ. À mẹ, mensetsu hôm nay 親方 có hỏi 5 năm sau con muốn ở đâu. Con bảo muốn lấy SSW2 và nhận bàn giao thanh tra JAS từ chị Saori. |
| Mẹ | (tiếng Việt) SSW2 là cái gì hả con? |
| Linh | (tiếng Việt) Là bậc cao hơn SSW1, có thể đón bố mẹ với chồng con sang ở. Bên ngành nông nghiệp giờ cũng vào diện này rồi mẹ. |
| Mẹ | (tiếng Việt) Mẹ chưa nghĩ tới chồng con của mày đâu (cười). Cứ làm tốt việc đã. |
| Linh | (tiếng Việt) Dạ. Tuần sau con đi 健康診断 — khám sức khoẻ ở bệnh viện thành phố Mito. Chị Saori đặt giúp con rồi. Có gì con báo. |
| Mẹ | (tiếng Việt) Ừ, ngủ sớm con. |

---

## Tình huống 14 — Ký túc bàn học · 22:00, Linh kiểm tra lại 雇用契約書 trước khi ký

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby><ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>条<rt>じょう</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>:<ruby>耕種<rt>こうしゅ</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby>、<ruby>有機<rt>ゆうき</rt></ruby><ruby>JAS<rt>ジャス</rt></ruby><ruby>管理<rt>かんり</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>。OK。<br>*(Kiểm tra cuối hợp đồng. Điều 1 nội dung công việc: trồng trọt, phụ trợ quản lý JAS hữu cơ. OK.)* |
| Linh | <ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>条<rt>じょう</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby><ruby>地<rt>ち</rt></ruby>:<ruby>茨城<rt>いばらき</rt></ruby><ruby>県<rt>けん</rt></ruby><ruby>水戸<rt>みと</rt></ruby><ruby>市<rt>し</rt></ruby><ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>。OK。<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>条<rt>じょう</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>:7<ruby>時<rt>じ</rt></ruby>-16<ruby>時<rt>じ</rt></ruby>、<ruby>休憩<rt>きゅうけい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>農繁期<rt>のうはんき</rt></ruby>は<ruby>変動<rt>へんどう</rt></ruby>あり。OK。<br>*(Điều 2 nơi làm: Yamamoto-nōen, Mito, Ibaraki. OK. Điều 3 giờ làm: 7-16, nghỉ 1 tiếng, mùa cao điểm biến động. OK.)* |
| Linh | <ruby>第<rt>だい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>条<rt>じょう</rt></ruby><ruby>賃金<rt>ちんぎん</rt></ruby>:<ruby>基本給<rt>きほんきゅう</rt></ruby><ruby>19<rt>じゅうきゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>割増<rt>わりまし</rt></ruby>25%、<ruby>深夜<rt>しんや</rt></ruby>50%。OK。<ruby>第<rt>だい</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>条<rt>じょう</rt></ruby><ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>:<ruby>4<rt>よん</rt></ruby><ruby>種<rt>しゅ</rt></ruby><ruby>全<rt>すべ</rt></ruby>て<ruby>加入<rt>かにゅう</rt></ruby>。OK。<br>*(Điều 4 lương: cơ bản 19 vạn, tăng ca 25%, đêm 50%. OK. Điều 5 BHXH: tham gia 4 loại. OK.)* |
| Linh | <ruby>第<rt>だい</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>条<rt>じょう</rt></ruby><ruby>住宅<rt>じゅうたく</rt></ruby>:<ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>光熱費<rt>こうねつひ</rt></ruby><ruby>込<rt>こ</rt></ruby>。OK。<ruby>第<rt>だい</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>条<rt>じょう</rt></ruby><ruby>有給<rt>ゆうきゅう</rt></ruby>:<ruby>年<rt>ねん</rt></ruby><ruby>14<rt>じゅうよ</rt></ruby><ruby>日<rt>にち</rt></ruby>、TTS<ruby>勤続<rt>きんぞく</rt></ruby><ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ。OK。<br>*(Điều 6 nhà: 2 vạn/tháng, gồm điện nước. OK. Điều 7 nghỉ phép: 14 ngày/năm, kế thừa thâm niên TTS. OK.)* |
| Linh | <ruby>全<rt>すべ</rt></ruby>てクリア。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>一番<rt>いちばん</rt></ruby>で<ruby>署名<rt>しょめい</rt></ruby>させていただこう。<ruby>恩送<rt>おんおく</rt></ruby>りを<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Tất cả OK. Sáng mai đầu giờ ký. Đừng quên "on-okuri".)* |

---

## Đọng lại chương 2

Linh thực hiện trọn vẹn pipeline đăng ký SSW1 ngành nông nghiệp: **意思表明 với 親方 → 監理団体 → 正式面接 + 雇用契約書 → 行政書士 → 入管申請**. Học các mẫu keigo công sở: **〜させていただきます / お伺いいたします / 拝見いたします / 〜と承知しております / 申し訳ありませんが、ご相談がございます**. Học cách kiểm tra hợp đồng có hệ thống — **5 mục Saori-san dặn**: 基本給・残業手当・社会保険・住宅費控除・有給休暇. Học cách trả lời mensetsu bằng **三つの軸 + 具体例 với 場面と数字**. Học khái niệm "**特定活動**" làm cầu nối tránh thất nghiệp khi đợi 在留資格変更. Học bài học cảm xúc **恩送り** từ Saori-san — ân tình không trả lại người cũ, mà gửi tiếp cho người sau.

> Từ vựng & mẫu câu chương này: 雇用契約書・志望動機書・履歴書・面接・在留資格変更・特定活動・出入国在留管理庁・監理団体・行政書士・基本給・残業手当・割増・社会保険・厚生年金・健康保険・労災保険・雇用保険・住宅費控除・有給休暇・勤続年数・労働基準法・農業技能測定試験・JFT-Basic・恩送り・〜させていただきます・お伺いいたします・拝見いたします・申し訳ありませんが・ご相談がございます

---

## Bí quyết chương

- **5 mục check hợp đồng** = 基本給 / 残業手当 / 社会保険 4種 / 住宅費控除 / 有給休暇. Nhớ ép kanji "× 1.25" và "全額負担" — đừng để ai miệng nói rồi quên ghi.
- **特定活動 visa**: cầu nối từ TTS hết hạn đến SSW1 được cấp. Không thất nghiệp.
- **農業技能測定試験 backup**: nếu trượt 技能検定3級, vẫn còn cửa thi SSW1 chuyên ngành ở Tokyo tháng 11/1.
- **3 trục motivation**: vì sao chọn ngành / 3 năm học gì (場面 + 数字) / 5 năm sau muốn gì.
- **Phí 行政書士 12 vạn yên** thường nhà trại tốt sẽ chịu toàn bộ — luôn hỏi rõ phương châm 親方, không tự giả định.
- **恩送り (on-okuri)**: ân tình gửi tiếp đời sau. Sempai-of-sempai = kèm Mai như Saori-san từng kèm mình.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 移行 | いこう | DI HÀNH | chuyển sang |
| 意思 | いし | Ý TƯ | ý nguyện |
| 申し出 | もうしで | THÂN XUẤT | lời đề nghị |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | sơ yếu lý lịch |
| 志望動機書 | しぼうどうきしょ | CHÍ VỌNG ĐỘNG CƠ THƯ | bản motivation |
| 面接 | めんせつ | DIỆN TIẾP | phỏng vấn |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | tổ chức quản lý TTS |
| 段階 | だんかい | ĐOẠN GIAI | giai đoạn |
| 雇用契約書 | こようけいやくしょ | CỐ DUNG KHẾ ƯỚC THƯ | hợp đồng lao động |
| 締結 | ていけつ | ĐỀ KẾT | ký kết |
| 在留資格変更 | ざいりゅうしかくへんこう | TẠI LƯU TƯ CÁCH BIẾN CANH | đổi tư cách lưu trú |
| 出入国在留管理庁 | しゅつにゅうこくざいりゅうかんりちょう | XUẤT NHẬP QUỐC TẠI LƯU QUẢN LÝ SỞ | Cục Quản lý Xuất nhập cảnh |
| 支局 | しきょく | CHI CỤC | chi nhánh |
| 特定活動 | とくていかつどう | ĐẶC ĐỊNH HOẠT ĐỘNG | tư cách hoạt động đặc định (visa cầu nối) |
| 付与 | ふよ | PHÚ DỮ | cấp |
| 基本給 | きほんきゅう | CƠ BẢN CẤP | lương cơ bản |
| 残業手当 | ざんぎょうてあて | TÀN NGHIỆP THỦ ĐƯƠNG | phụ cấp tăng ca |
| 割増 | わりまし | CÁT TĂNG | phụ thêm phần trăm |
| 深夜 | しんや | THÂM DẠ | đêm khuya |
| 社会保険 | しゃかいほけん | XÃ HỘI BẢO HIỂM | bảo hiểm xã hội |
| 厚生年金 | こうせいねんきん | HẬU SINH NIÊN KIM | lương hưu phúc lợi |
| 健康保険 | けんこうほけん | KIỆN KHANG BẢO HIỂM | bảo hiểm y tế |
| 労災保険 | ろうさいほけん | LAO TAI BẢO HIỂM | bảo hiểm tai nạn lao động |
| 雇用保険 | こようほけん | CỐ DUNG BẢO HIỂM | bảo hiểm thất nghiệp |
| 加入 | かにゅう | GIA NHẬP | tham gia (bảo hiểm) |
| 住宅費控除 | じゅうたくひこうじょ | TRỤ TRẠCH PHÍ KHỐNG TRỪ | khấu trừ tiền nhà |
| 実費 | じっぴ | THỰC PHÍ | chi phí thực |
| 上限 | じょうげん | THƯỢNG HẠN | mức trần |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU GIẢ | nghỉ có lương |
| 日数 | にっすう | NHẬT SỐ | số ngày |
| 勤続年数 | きんぞくねんすう | CẦN TỤC NIÊN SỐ | thâm niên |
| 労働基準法 | ろうどうきじゅんほう | LAO ĐỘNG CƠ CHUẨN PHÁP | Luật Tiêu chuẩn Lao động |
| 引き継ぐ | ひきつぐ | DẪN KẾ | kế thừa, bàn giao |
| 行政書士 | ぎょうせいしょし | HÀNH CHÍNH THƯ SĨ | luật sư hành chính |
| 手数料 | てすうりょう | THỦ SỐ LIỆU | phí dịch vụ |
| 負担 | ふたん | PHỤ ĐẢM | chịu phí |
| 全額 | ぜんがく | TOÀN NGẠCH | toàn bộ số tiền |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 追加 | ついか | TRUY GIA | bổ sung |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | trượt |
| 農業技能測定試験 | のうぎょうぎのうそくていしけん | NÔNG NGHIỆP KỸ NĂNG TRẮC ĐỊNH THÍ NGHIỆM | kỳ thi đánh giá kỹ năng nông nghiệp (SSW1) |
| JFT-Basic | ジェイエフティ — | — | kỳ thi Japan Foundation Test sơ cấp |
| 持参 | じさん | TRÌ THAM | mang theo |
| 拝見 | はいけん | BÁI KIẾN | (kiêm nhường) xem qua |
| 承知 | しょうち | THỪA TRI | hiểu, rõ |
| 申し上げる | もうしあげる | THÂN THƯỢNG | (kính ngữ) nói |
| 恩送り | おんおくり | ÂN TỐNG | gửi tiếp ân tình |
| 意思表明 | いしひょうめい | Ý TƯ BIỂU MINH | bày tỏ ý nguyện |
| 業務内容 | ぎょうむないよう | NGHIỆP VỤ NỘI DUNG | nội dung công việc |
| 勤務地 | きんむち | CẦN VỤ ĐỊA | nơi làm việc |
| 農繁期 | のうはんき | NÔNG PHỒN KỲ | mùa cao điểm nông nghiệp |
| 賃金 | ちんぎん | TRẪM KIM | tiền lương |
| 署名 | しょめい | THỰ DANH | ký tên |
| 健康診断 | けんこうしんだん | KIỆN KHANG CHẨN ĐOÁN | khám sức khoẻ |
| 余裕 | よゆう | DƯ DỤ | dư dả thời gian/tâm lý |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000003, 800000042, NULL, 'markdown_book', 'T3. Báo tin đậu N3 — lộ trình SSW1 + N2 (N3合格・SSW1とN2への道)', '# Sách thực tập sinh nông nghiệp · T3. Báo tin đậu N3 — lộ trình SSW1 + N2 (N3合格・SSW1とN2への道)

> **Mục tiêu nhân vật:** Linh (24t, Đồng Tháp), tháng 6/2027. Học các mẫu hội thoại tiếng Nhật giai đoạn **báo tin vui đậu JLPT N3 (kết quả kỳ tháng 12/2026)**: thông báo với 親方 Yamamoto, chia sẻ với Saori-san, động viên kohai Hương (sắp thi N3) và Mai (mới sang), bàn lộ trình **SSW1 申請 + JLPT N2 + 技能検定3級**, và gọi điện báo gia đình. Tăng cường keigo báo tin (ご報告・お陰様で), khen kohai (素晴らしい・心強い), và phân tích nguyên nhân đậu (反省点・継続点).

---

## Bối cảnh

Ngày 6 tháng 6 năm 2027, Ibaraki, Yamamoto-nōen. Linh mới nhận kết quả JLPT N3 kỳ tháng 12/2026 qua hệ thống online sáng nay — **đậu N3** (đỗ cả 3 phần với 文字語彙 42/60, 読解 38/60, 聴解 45/60, tổng 125/180). Mai đã sang được 1 tháng (từ tháng 5), đang được Hương kèm. Hương đang ôn N3 cho kỳ tháng 7. Cả 3 cùng ký túc với Sari (Indonesia). Chương này tập trung mẫu câu báo tin vui đúng nghi thức Nhật, phân tích kinh nghiệm thi, và lập lộ trình kép SSW1 + JLPT N2.

---

## Tình huống 1 — Phòng nghỉ ハウス · 6:50, Linh nhận kết quả online và cảm xúc đầu tiên

| Vai | Lời thoại |
|---|---|
| Linh | *(mở điện thoại tay run)* …<ruby>合格<rt>ごうかく</rt></ruby>! <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>している!<br>*(Đậu! Đậu thật rồi!)* |
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん、どうしたの?<br>*(Linh-chan, sao thế?)* |
| Linh | <ruby>沙織<rt>さおり</rt></ruby>さん、おはようございます。<ruby>N3<rt>えぬさん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Chị Saori, chào chị. Em đậu N3 rồi!)* |
| <ruby>沙織<rt>さおり</rt></ruby> | え、<ruby>本当<rt>ほんとう</rt></ruby>?おめでとう!よかったね!<br>*(Ơ thật á? Chúc mừng! Mừng quá!)* |
| Linh | お<ruby>陰様<rt>かげさま</rt></ruby>で。<ruby>得点<rt>とくてん</rt></ruby>は<ruby>125<rt>ひゃくにじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<ruby>合格<rt>ごうかく</rt></ruby>ラインが<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>なので、<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>合格<rt>ごうかく</rt></ruby>できました。<br>*(Nhờ chị giúp đỡ. Điểm 125. Đỗ là 95 nên dư khá nhiều.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>親方<rt>おやかた</rt></ruby>に<ruby>早<rt>はや</rt></ruby>く<ruby>報告<rt>ほうこく</rt></ruby>しに<ruby>行<rt>い</rt></ruby>こう。<br>*(Tuyệt vời! Đi báo 親方 nhanh đi.)* |
| Linh | はい。あ、その<ruby>前<rt>まえ</rt></ruby>に、フオンさんとマイさんにも<ruby>共有<rt>きょうゆう</rt></ruby>させてください。<br>*(Vâng. À, trước đó cho em báo Hương và Mai trước đã.)* |

---

## Tình huống 2 — Đường ra ハウス · 7:00, báo Hương và Mai

| Vai | Lời thoại |
|---|---|
| Linh | フオン、マイ、おはよう。<ruby>大<rt>おお</rt></ruby>ニュースがある。<br>*(Hương, Mai chào buổi sáng. Có tin lớn.)* |
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>顔<rt>かお</rt></ruby>が<ruby>明<rt>あか</rt></ruby>るい!まさか…?<br>*(Chị Linh, mặt sáng quá! Lẽ nào...?)* |
| Linh | N3、<ruby>合格<rt>ごうかく</rt></ruby>したよ。<br>*(Đậu N3 rồi.)* |
| Hương | やったー!リン<ruby>姉<rt>ねえ</rt></ruby>さん、おめでとうございます!<br>*(Hoan hô! Chị Linh chúc mừng chị!)* |
| Mai | おめでとうございます!<ruby>私<rt>わたし</rt></ruby>もいつかN3を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Em chúc mừng chị! Em cũng muốn thi N3 một ngày nào đó.)* |
| Linh | フオン、<ruby>来月<rt>らいげつ</rt></ruby>のN3、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>聴解<rt>ちょうかい</rt></ruby>のコツを<ruby>後<rt>あと</rt></ruby>でシェアするね。<br>*(Hương, N3 tháng sau chắc chắn không vấn đề. Lát chị chia sẻ tips choukai.)* |
| Hương | はい!<ruby>心強<rt>こころづよ</rt></ruby>いです。リン<ruby>姉<rt>ねえ</rt></ruby>さんの<ruby>背中<rt>せなか</rt></ruby>を<ruby>追<rt>お</rt></ruby>いかけます。<br>*(Vâng! Em vững tâm lắm. Em sẽ đuổi theo chị.)* |
| Mai | リン<ruby>姉<rt>ねえ</rt></ruby>さんは<ruby>毎日<rt>まいにち</rt></ruby>どのくらい<ruby>勉強<rt>べんきょう</rt></ruby>したんですか?<br>*(Mỗi ngày chị học bao lâu ạ?)* |
| Linh | <ruby>朝<rt>あさ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>夜<rt>よる</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<ruby>仕事<rt>しごと</rt></ruby>もあるから、<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Sáng 30 phút, tối 1 giờ, cuối tuần 3 giờ. Có việc nữa nên mỗi ngày một ít là quan trọng.)* |

---

## Tình huống 3 — Văn phòng 親方 · 8:00, Linh báo cáo chính thức

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、おはようございます。<ruby>朝<rt>あさ</rt></ruby>イチで<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、ご<ruby>報告<rt>ほうこく</rt></ruby>させていただきたいことがございます。<br>*(Thưa anh, chào buổi sáng. Em xin lỗi đầu giờ, em có việc xin báo cáo.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | おはよう、リンさん。どうぞ。<br>*(Chào Linh. Mời.)* |
| Linh | お<ruby>陰様<rt>かげさま</rt></ruby>で、<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby><ruby>試験<rt>しけん</rt></ruby>N3に<ruby>合格<rt>ごうかく</rt></ruby>いたしました。<br>*(Nhờ anh chiếu cố, em đã đậu kỳ thi JLPT N3.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | おお、<ruby>合格<rt>ごうかく</rt></ruby>か!よく<ruby>頑張<rt>がんば</rt></ruby>った!<ruby>本当<rt>ほんとう</rt></ruby>におめでとう。<br>*(Ồ, đậu à! Em cố gắng quá! Thực sự chúc mừng.)* |
| Linh | ありがとうございます。<ruby>仕事<rt>しごと</rt></ruby>と<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>両立<rt>りょうりつ</rt></ruby>できたのは、<ruby>農園<rt>のうえん</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>のご<ruby>理解<rt>りかい</rt></ruby>のお<ruby>陰<rt>かげ</rt></ruby>でございます。<br>*(Em cảm ơn anh. Cân bằng việc và học được là nhờ sự thông cảm của mọi người ở nông trại.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>謙虚<rt>けんきょ</rt></ruby>だね。SSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>必要<rt>ひつよう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>もこれでクリアだ。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いたら<ruby>提<rt>てい</rt></ruby><ruby>出<rt>しゅつ</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>に<ruby>加<rt>くわ</rt></ruby>えよう。<br>*(Em khiêm tốn nhỉ. Điều kiện SSW1 cũng đạt rồi. Có chứng chỉ thì thêm vào hồ sơ.)* |
| Linh | はい。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のN2と<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>させていただきます。<br>*(Tiếp, em xin được thử sức N2 tháng 12 và 技能検定3級 tháng 9.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | N2に<ruby>挑戦<rt>ちょうせん</rt></ruby>?<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>意欲<rt>いよく</rt></ruby>だ。<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Thi N2 á? Chí khí tuyệt vời. Anh ủng hộ.)* |

---

## Tình huống 4 — Phòng họp nhỏ · 8:20, 親方 đề xuất tăng giờ học

| Vai | Lời thoại |
|---|---|
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | リンさん、ひとつ<ruby>提案<rt>ていあん</rt></ruby>があります。<ruby>水曜日<rt>すいようび</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>を「<ruby>学習<rt>がくしゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>」として<ruby>提供<rt>ていきょう</rt></ruby>します。<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>扱<rt>あつか</rt></ruby>いではないが、<ruby>早退<rt>そうたい</rt></ruby><ruby>扱<rt>あつか</rt></ruby>いで<ruby>給与<rt>きゅうよ</rt></ruby><ruby>減額<rt>げんがく</rt></ruby>なし。<br>*(Linh, anh có một đề xuất. Anh cấp cho em chiều thứ Tư từ 15h là "giờ học". Không phải nghỉ phép, mà tính như về sớm không trừ lương.)* |
| Linh | え…<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。そのようなご<ruby>配慮<rt>はいりょ</rt></ruby>をいただいて<ruby>本当<rt>ほんとう</rt></ruby>によろしいのでしょうか?<br>*(Ơ... em thực sự áy náy. Em được nhận sự quan tâm như vậy có được không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | N2を<ruby>取<rt>と</rt></ruby>れば、JAS<ruby>監査<rt>かんさ</rt></ruby>の<ruby>窓口<rt>まどぐち</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せられる。<ruby>農園<rt>のうえん</rt></ruby>にとっても<ruby>投資<rt>とうし</rt></ruby>です。<ruby>遠慮<rt>えんりょ</rt></ruby><ruby>無<rt>な</rt></ruby>く。<br>*(Lấy được N2, anh giao em đầu mối thanh tra JAS được. Trại cũng coi như đầu tư. Đừng ngại.)* |
| Linh | ありがとうございます。<ruby>必<rt>かなら</rt></ruby>ずN2に<ruby>合格<rt>ごうかく</rt></ruby>し、ご<ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えます。<br>*(Em cảm ơn anh. Em nhất định đỗ N2 và đáp lại kỳ vọng.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | フオンさんが<ruby>来年<rt>らいねん</rt></ruby>N3を<ruby>受<rt>う</rt></ruby>ける<ruby>頃<rt>ころ</rt></ruby>には、<ruby>同<rt>おな</rt></ruby>じ<ruby>制度<rt>せいど</rt></ruby>を<ruby>適用<rt>てきよう</rt></ruby>するつもりです。<br>*(Đến lúc Hương thi N3 năm sau, anh cũng áp dụng chế độ tương tự.)* |
| Linh | フオンさんもきっと<ruby>喜<rt>よろこ</rt></ruby>びます。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えしてもよろしいでしょうか?<br>*(Hương chắc chắn vui lắm. Em xin được truyền đạt vào chiều nay được không?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | お<ruby>願<rt>ねが</rt></ruby>い。<br>*(Nhờ em.)* |

---

## Tình huống 5 — ハウス cà chua · 10:00, Saori-san hỏi tips ôn thi

| Vai | Lời thoại |
|---|---|
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>聞<rt>き</rt></ruby>きたかった。どうやってあの<ruby>得点<rt>とくてん</rt></ruby>を<ruby>取<rt>と</rt></ruby>ったの?<br>*(Linh-chan, chị muốn hỏi thật. Em lấy điểm đó kiểu gì?)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つの<ruby>反省<rt>はんせい</rt></ruby><ruby>点<rt>てん</rt></ruby>と<ruby>三<rt>みっ</rt></ruby>つの<ruby>継続<rt>けいぞく</rt></ruby><ruby>点<rt>てん</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けて<ruby>話<rt>はな</rt></ruby>します。まず<ruby>反省<rt>はんせい</rt></ruby><ruby>点<rt>てん</rt></ruby>から。<br>*(Em chia 3 điểm cần cải thiện và 3 điểm cần duy trì. Bắt đầu từ cải thiện.)* |
| Linh | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>文字<rt>もじ</rt></ruby><ruby>語彙<rt>ごい</rt></ruby>で<ruby>同<rt>おな</rt></ruby>じ<ruby>間違<rt>まちが</rt></ruby>いを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>した。<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>には<ruby>音読<rt>おんどく</rt></ruby>と<ruby>訓読<rt>くんどく</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>け。<br>*(Một, văn tự ngữ vựng cứ lặp lỗi. Cụ thể là phân biệt onyomi/kunyomi.)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby>の<ruby>長文<rt>ちょうぶん</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばし<ruby>読<rt>よ</rt></ruby>みしすぎた。<ruby>結果<rt>けっか</rt></ruby><ruby>細<rt>こま</rt></ruby>かい<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>外<rt>はず</rt></ruby>した。<br>*(Hai, đọc hiểu văn dài lướt quá. Hậu quả là chọn nhầm các đáp án chi tiết.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby>でメモが<ruby>多<rt>おお</rt></ruby>すぎて<ruby>次<rt>つぎ</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>に<ruby>追<rt>お</rt></ruby>いつけなかった。<br>*(Ba, choukai ghi nhiều quá nên không kịp câu sau.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>客観的<rt>きゃっかんてき</rt></ruby>に<ruby>自分<rt>じぶん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てるね。<ruby>継続点<rt>けいぞくてん</rt></ruby>は?<br>*(Em nhìn bản thân khách quan ghê. Còn điểm duy trì?)* |
| Linh | <ruby>毎日<rt>まいにち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>単語<rt>たんご</rt></ruby>カード、<ruby>夜<rt>よる</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>、<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>沙織<rt>さおり</rt></ruby>さんとの<ruby>会話<rt>かいわ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>。これは<ruby>絶対<rt>ぜったい</rt></ruby><ruby>続<rt>つづ</rt></ruby>けます。<br>*(Sáng 30 phút thẻ từ, tối 1 giờ đề cũ, cuối tuần luyện hội thoại với chị. Cái này em chắc chắn duy trì.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>会話<rt>かいわ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>楽<rt>たの</rt></ruby>しいよ。<ruby>続<rt>つづ</rt></ruby>けよう。<br>*(Luyện hội thoại chị cũng vui mà. Cứ tiếp tục.)* |

---

## Tình huống 6 — ハウス cà chua giờ nghỉ · 10:30, Linh chia sẻ kinh nghiệm 聴解 cho Hương

| Vai | Lời thoại |
|---|---|
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>聴解<rt>ちょうかい</rt></ruby>のコツを<ruby>教<rt>おし</rt></ruby>えてください。<ruby>私<rt>わたし</rt></ruby>、<ruby>練習<rt>れんしゅう</rt></ruby>では<ruby>取<rt>と</rt></ruby>れるのに<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>聞<rt>き</rt></ruby>き<ruby>逃<rt>のが</rt></ruby>します。<br>*(Chị Linh, chỉ em mẹo choukai. Em luyện được mà thi căng quá nghe sót.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つのコツ。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>問題<rt>もんだい</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>音声<rt>おんせい</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まる<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>読<rt>よ</rt></ruby>む。キーワードを<ruby>○<rt>まる</rt></ruby>で<ruby>囲<rt>かこ</rt></ruby>む。<br>*(3 mẹo. Một, nhất định đọc lựa chọn trước khi audio. Khoanh keyword.)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、メモは<ruby>3<rt>みっ</rt></ruby>つ<ruby>以内<rt>いない</rt></ruby>に<ruby>絞<rt>しぼ</rt></ruby>る。<ruby>誰<rt>だれ</rt></ruby>が・<ruby>何<rt>なに</rt></ruby>を・なぜ。それ<ruby>以外<rt>いがい</rt></ruby>は<ruby>書<rt>か</rt></ruby>かない。<br>*(Hai, ghi gọn trong 3 cái: ai - làm gì - vì sao. Ngoài ra đừng viết.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>答<rt>こた</rt></ruby>えに<ruby>迷<rt>まよ</rt></ruby>ったら<ruby>飛<rt>と</rt></ruby>ばす。<ruby>次<rt>つぎ</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>のために<ruby>頭<rt>あたま</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>える。<ruby>最後<rt>さいご</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って<ruby>勘<rt>かん</rt></ruby>で<ruby>埋<rt>う</rt></ruby>める。<br>*(Ba, phân vân thì bỏ qua. Đổi đầu cho câu sau. Cuối quay lại đoán bừa.)* |
| Hương | なるほど。<ruby>迷<rt>まよ</rt></ruby>ったら<ruby>飛<rt>と</rt></ruby>ばす…<ruby>勇気<rt>ゆうき</rt></ruby>がいりますね。<br>*(Ra vậy. Phân vân thì bỏ... cần dũng khí nhỉ.)* |
| Linh | <ruby>勇気<rt>ゆうき</rt></ruby>より<ruby>戦略<rt>せんりゃく</rt></ruby>。<ruby>満点<rt>まんてん</rt></ruby>は<ruby>狙<rt>ねら</rt></ruby>わない。<ruby>合格<rt>ごうかく</rt></ruby>ラインを<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>超<rt>こ</rt></ruby>えることが<ruby>目的<rt>もくてき</rt></ruby>。<br>*(Không phải dũng khí mà chiến lược. Đừng nhắm điểm tuyệt đối. Mục đích là chắc chắn vượt đỗ.)* |
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さんの<ruby>言葉<rt>ことば</rt></ruby>、ノートに<ruby>書<rt>か</rt></ruby>きます。<br>*(Lời chị, em sẽ ghi vào sổ.)* |

---

## Tình huống 7 — Trạm xe đạp về ký túc · 17:30, Linh thông báo Hương về 学習時間

| Vai | Lời thoại |
|---|---|
| Linh | フオン、<ruby>朝<rt>あさ</rt></ruby><ruby>言<rt>い</rt></ruby>い<ruby>忘<rt>わす</rt></ruby>れたけど、<ruby>親方<rt>おやかた</rt></ruby>から<ruby>大事<rt>だいじ</rt></ruby>な<ruby>提案<rt>ていあん</rt></ruby>があった。<br>*(Hương, sáng quên nói, có đề xuất quan trọng từ 親方.)* |
| Hương | <ruby>何<rt>なん</rt></ruby>ですか?<br>*(Là gì ạ?)* |
| Linh | <ruby>来年<rt>らいねん</rt></ruby>フオンがN3を<ruby>受<rt>う</rt></ruby>ける<ruby>時<rt>とき</rt></ruby>、<ruby>水曜日<rt>すいようび</rt></ruby><ruby>午後<rt>ごご</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>を<ruby>学習<rt>がくしゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>として<ruby>給与<rt>きゅうよ</rt></ruby>カットなしで<ruby>使<rt>つか</rt></ruby>えるって。<br>*(Năm sau khi Hương thi N3, chiều thứ Tư từ 15h dùng làm giờ học, không bị trừ lương.)* |
| Hương | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?そんないい<ruby>条件<rt>じょうけん</rt></ruby>...<br>*(Ơ thật á? Điều kiện tốt thế...)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>は「<ruby>農園<rt>のうえん</rt></ruby>にとっても<ruby>投資<rt>とうし</rt></ruby>」とおっしゃった。フオンの<ruby>頑張<rt>がんば</rt></ruby>りを<ruby>見<rt>み</rt></ruby>ていてくださっている。<br>*(親方 bảo "với trại cũng là đầu tư". Anh đang nhìn nỗ lực của em.)* |
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さんが<ruby>道<rt>みち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってくださったんですね。<br>*(Chị Linh đã mở đường cho em đúng không ạ.)* |
| Linh | <ruby>違<rt>ちが</rt></ruby>う。<ruby>沙織<rt>さおり</rt></ruby>さんが<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことをしたから、<ruby>私<rt>わたし</rt></ruby>たちが<ruby>今<rt>いま</rt></ruby>あるの。<ruby>恩送<rt>おんおく</rt></ruby>りだよ。<br>*(Không. Vì 10 năm trước Saori-san đã làm thế nên giờ tụi mình có. On-okuri thôi.)* |
| Hương | <ruby>恩送<rt>おんおく</rt></ruby>り…<ruby>素敵<rt>すてき</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>。<br>*(On-okuri... từ đẹp quá.)* |

---

## Tình huống 8 — Ký túc, bếp · 19:00, ăn tối, Mai hỏi chiến lược học của Linh

| Vai | Lời thoại |
|---|---|
| Mai | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>私<rt>わたし</rt></ruby>はまだN5しか<ruby>受<rt>う</rt></ruby>けていません。<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>はどう<ruby>立<rt>た</rt></ruby>てたらいいですか?<br>*(Chị Linh, em mới chỉ thi N5. Mục tiêu năm 1 nên đặt sao ạ?)* |
| Linh | <ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>は<ruby>欲張<rt>よくば</rt></ruby>らない。<ruby>三<rt>みっ</rt></ruby>つの<ruby>目標<rt>もくひょう</rt></ruby>でいい。<br>*(Năm 1 đừng tham. 3 mục tiêu đủ.)* |
| Linh | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>う<ruby>道具<rt>どうぐ</rt></ruby>と<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>全<rt>すべ</rt></ruby>て<ruby>覚<rt>おぼ</rt></ruby>える。<ruby>鋏<rt>はさみ</rt></ruby>、<ruby>収穫<rt>しゅうかく</rt></ruby>カゴ、<ruby>脇芽<rt>わきめ</rt></ruby>かき、<ruby>誘引<rt>ゆういん</rt></ruby>...<br>*(Một, nhớ hết tên dụng cụ và thao tác công việc. Kéo, sọt thu hoạch, tỉa chồi nách, dẫn dây...)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、N4を<ruby>来年<rt>らいねん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>受<rt>う</rt></ruby>ける。<ruby>毎日<rt>まいにち</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でいい。<br>*(Hai, thi N4 tháng 7 năm sau. Mỗi ngày 20 phút là đủ.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>沙織<rt>さおり</rt></ruby>さんと<ruby>毎日<rt>まいにち</rt></ruby><ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>の<ruby>雑談<rt>ざつだん</rt></ruby>。<ruby>生<rt>い</rt></ruby>きた<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>耳<rt>みみ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる。<br>*(Ba, mỗi ngày chào và tán gẫu 5 phút với Saori-san. Cho tai nghe tiếng Nhật sống.)* |
| Mai | <ruby>毎日<rt>まいにち</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でいいんですか?<br>*(Mỗi ngày 20 phút được ạ?)* |
| Linh | <ruby>続<rt>つづ</rt></ruby>けることが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>って<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>でやめるより、<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>を<ruby>365<rt>さんびゃくろくじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>続<rt>つづ</rt></ruby>ける<ruby>方<rt>ほう</rt></ruby>がN4は<ruby>取<rt>と</rt></ruby>れる。<br>*(Tiếp tục là quan trọng nhất. Cố 3 giờ trong 3 ngày rồi bỏ thì thua 20 phút × 365 ngày để lấy N4.)* |
| Mai | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>明日<rt>あした</rt></ruby>から<ruby>朝<rt>あさ</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>早<rt>はや</rt></ruby>く<ruby>起<rt>お</rt></ruby>きます。<br>*(Em hiểu. Mai em dậy sớm hơn 20 phút.)* |

---

## Tình huống 9 — Phòng Linh · 20:00, Linh gọi 行政書士 cập nhật N3

| Vai | Lời thoại |
|---|---|
| Linh | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>のグエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Cảm ơn anh chiếu cố. Tôi là Nguyễn Thị Linh ở Yamamoto-nōen.)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | リンさん、<ruby>本日<rt>ほんじつ</rt></ruby>はいかがされましたか?<br>*(Linh-san, hôm nay có việc gì?)* |
| Linh | ご<ruby>報告<rt>ほうこく</rt></ruby>がございます。<ruby>本日<rt>ほんじつ</rt></ruby>、JLPTN3の<ruby>合格<rt>ごうかく</rt></ruby><ruby>結果<rt>けっか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>いたしました。<br>*(Em xin báo cáo. Hôm nay em đã nhận kết quả đậu JLPT N3.)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | おめでとうございます!SSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>要件<rt>ようけん</rt></ruby>は<ruby>余裕<rt>よゆう</rt></ruby>でクリアですね。<br>*(Chúc mừng! Điều kiện tiếng Nhật của SSW1 thừa rồi.)* |
| Linh | はい。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>に<ruby>郵送<rt>ゆうそう</rt></ruby>されるとのことです。<ruby>届<rt>とど</rt></ruby>き<ruby>次第<rt>しだい</rt></ruby><ruby>原本<rt>げんぽん</rt></ruby>を<ruby>御<rt>おん</rt></ruby><ruby>事務所<rt>じむしょ</rt></ruby>にお<ruby>持<rt>も</rt></ruby>ちいたします。<br>*(Vâng. Chứng chỉ giữa tháng sau sẽ gửi bưu điện. Em nhận xong sẽ mang bản gốc đến văn phòng.)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | お<ruby>願<rt>ねが</rt></ruby>いします。あと、<ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つ。N3は<ruby>必<rt>かなら</rt></ruby>ずしも<ruby>必要<rt>ひつよう</rt></ruby>ではなく、N4または<ruby>JFT<rt>ジェイエフティ</rt></ruby>-Basicでも<ruby>申請<rt>しんせい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしたが、N3<ruby>取得<rt>しゅとく</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>みになります。<br>*(Nhờ em. Một lưu ý: N3 không bắt buộc, N4 hoặc JFT-Basic là đủ, nhưng N3 là lợi thế.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>はN2にも<ruby>挑戦<rt>ちょうせん</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng em rõ. Tháng 12 em định thi cả N2.)* |
| <ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby> | <ruby>頼<rt>たの</rt></ruby>もしい。<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Đáng tin cậy. Tôi ủng hộ.)* |

---

## Tình huống 10 — Phòng Linh · 20:30, gọi điện báo gia đình

> Cảnh tiếng Việt — đối thoại với mẹ, có ba chen vào.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Mẹ ơi, con báo tin: đậu N3 rồi mẹ! |
| Mẹ | (tiếng Việt) Trời ơi, mẹ mừng quá Linh! Con của mẹ giỏi quá. Để mẹ gọi ba. Anh ơi, Linh đậu N3 rồi nè! |
| Ba | (tiếng Việt) Con gái ba quá xá. Bao điểm hả con? |
| Linh | (tiếng Việt) 125 trên 180, ba ơi. Đỗ là 95 mà con dư hơn 30 điểm. |
| Ba | (tiếng Việt) Cha mẹ ơi, vậy là làm gì cũng được. Bữa nay ba uống một ly mừng con. |
| Linh | (tiếng Việt) Ba ơi đừng uống nhiều. Mà mẹ ơi, sáng nay con báo 親方 Yamamoto, anh ấy đề xuất cho con chiều thứ Tư từ 3 giờ làm "giờ học" không bị trừ lương để ôn N2 tháng 12. |
| Mẹ | (tiếng Việt) Trời, gặp người tốt nha con. Mẹ nghe có một việc đẹp lại tới một việc đẹp. |
| Linh | (tiếng Việt) Anh ấy còn nói khi em Hương — kohai năm 2 đó mẹ — thi N3 năm sau cũng được áp dụng giống vậy. Con bảo em Hương rồi, em ấy cảm động lắm. |
| Ba | (tiếng Việt) Vậy con ráng giúp em Hương luôn nha. Mình đi xa mà có nhau là quý. |
| Linh | (tiếng Việt) Dạ ba. Bên này có khái niệm 恩送り — "gửi tiếp ân tình". Mình nhận từ người trước, không trả lại mà gửi tiếp cho người sau. Chị Saori bảo con. |
| Mẹ | (tiếng Việt) Hay quá. Cô nói đúng. Mà mẹ với ba dạo này lo cho con sang năm: lúc nào con biết kết quả SSW1? |
| Linh | (tiếng Việt) Tháng 10 luật sư mới nộp, đầu tháng 2 sang năm mới có. Còn lâu mẹ ạ. Mẹ cứ chuẩn bị hộ chiếu để tháng 1 sang con bằng visa thăm ngắn nha. |
| Mẹ | (tiếng Việt) Ừ, tuần này mẹ ra phường làm. |
| Linh | (tiếng Việt) À mẹ, có em Mai từ Đồng Tháp mình đó, em nó nhờ con kèm. Hôm nay em ấy hỏi con cách đặt mục tiêu năm 1. Con nhớ lại con hồi mới sang sợ làm sao. |
| Ba | (tiếng Việt) Con bây giờ là chị lớn rồi đó nghe. Cố lên con. |
| Linh | (tiếng Việt) Dạ. Con đi ngủ. Mai cuối tuần con sẽ gọi tiếp. |

---

## Tình huống 11 — Ký túc, bàn ăn · 21:30, ăn bánh mì kẹp Hương làm để chúc mừng

| Vai | Lời thoại |
|---|---|
| Hương | リン<ruby>姉<rt>ねえ</rt></ruby>さん、これ、<ruby>合格<rt>ごうかく</rt></ruby><ruby>祝<rt>いわ</rt></ruby>いのバインミーです!<br>*(Chị Linh, bánh mì ăn mừng đậu nè!)* |
| Linh | え、<ruby>作<rt>つく</rt></ruby>ってくれたの?ありがとう、フオン。<br>*(Ơ làm cho chị á? Cảm ơn Hương.)* |
| Sari | リンちゃん、おめでとう!サリも<ruby>嬉<rt>うれ</rt></ruby>しい!<br>*(Linh-chan chúc mừng! Sari cũng vui!)* |
| Mai | リン<ruby>姉<rt>ねえ</rt></ruby>さんの<ruby>合格<rt>ごうかく</rt></ruby>のお<ruby>陰<rt>かげ</rt></ruby>で、<ruby>私<rt>わたし</rt></ruby>たちも<ruby>希望<rt>きぼう</rt></ruby>が<ruby>持<rt>も</rt></ruby>てます。<br>*(Nhờ chị đậu mà tụi em cũng có hy vọng.)* |
| Linh | みんな、ありがとう。<ruby>私<rt>わたし</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>人で<ruby>合格<rt>ごうかく</rt></ruby>したんじゃない。<ruby>沙織<rt>さおり</rt></ruby>さん、<ruby>親方<rt>おやかた</rt></ruby>、<ruby>皆<rt>みんな</rt></ruby>のお<ruby>陰<rt>かげ</rt></ruby>。<br>*(Mọi người cảm ơn. Mình không đậu một mình. Nhờ chị Saori, 親方, mọi người.)* |
| Sari | <ruby>次<rt>つぎ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>? フオン?<br>*(Tiếp theo ai? Hương?)* |
| Hương | はい!<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>、N3を<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>取<rt>と</rt></ruby>ります!<br>*(Vâng! Tháng 7 em đậu N3 chắc chắn!)* |
| Mai | <ruby>私<rt>わたし</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>N4。<br>*(Em năm sau tháng 7 N4.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>N2と<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>。みんなで<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Mình tháng 12 N2 và tháng 9 技能検定3級. Cùng cố lên.)* |
| Sari | <ruby>来週末<rt>らいしゅうまつ</rt></ruby>、<ruby>水戸<rt>みと</rt></ruby>の<ruby>千波湖<rt>せんばこ</rt></ruby>に<ruby>桜<rt>さくら</rt></ruby>...じゃなくて<ruby>紫陽花<rt>あじさい</rt></ruby>を<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>こうよ。お<ruby>祝<rt>いわ</rt></ruby>い。<br>*(Cuối tuần sau đi hồ Senba xem... không phải sakura, là hoa cẩm tú cầu. Ăn mừng.)* |
| Linh | いいね、<ruby>皆<rt>みんな</rt></ruby>で<ruby>行<rt>い</rt></ruby>こう。<br>*(Hay đó, cả nhóm đi.)* |

---

## Tình huống 12 — ハウス dưa leo sáng thứ Hai · 7:30, Linh xin nói lời cảm ơn cả đội

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>朝<rt>あさ</rt></ruby>イチで<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いただけますでしょうか?<br>*(Mọi người, chào buổi sáng. Em xin lỗi đầu giờ, cho em xin một chút thời gian được không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | どうぞ、リンさん。<br>*(Mời em Linh.)* |
| Linh | <ruby>先週<rt>せんしゅう</rt></ruby>、JLPTN3に<ruby>合格<rt>ごうかく</rt></ruby>したことをご<ruby>報告<rt>ほうこく</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>改<rt>あらた</rt></ruby>めて<ruby>皆<rt>みな</rt></ruby>さまに<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちをお<ruby>伝<rt>つた</rt></ruby>えしたく、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたしました。<br>*(Tuần trước em đã báo cáo việc đậu JLPT N3. Hôm nay em xin được nói lời cảm ơn lại tới mọi người.)* |
| Linh | <ruby>沙織<rt>さおり</rt></ruby>さんには<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜<rt>どよう</rt></ruby>の<ruby>会話<rt>かいわ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>、<ruby>親方<rt>おやかた</rt></ruby>には<ruby>仕事<rt>しごと</rt></ruby>の<ruby>合間<rt>あいま</rt></ruby>の<ruby>励<rt>はげ</rt></ruby>まし、フオンさんとマイさんには<ruby>共<rt>とも</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>る<ruby>仲間<rt>なかま</rt></ruby>として<ruby>支<rt>ささ</rt></ruby>えていただきました。<br>*(Saori-san luyện hội thoại mỗi thứ Bảy, 親方 động viên giữa giờ làm, Hương và Mai cùng cố gắng như nakama.)* |
| Linh | この<ruby>合格<rt>ごうかく</rt></ruby>は<ruby>私<rt>わたし</rt></ruby><ruby>一<rt>ひと</rt></ruby>人のものではなく、<ruby>農園<rt>のうえん</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さまの<ruby>合格<rt>ごうかく</rt></ruby>でもあります。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Việc đậu này không chỉ của riêng em, mà là của mọi người ở trại. Em thực sự cảm ơn.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん…(<ruby>涙<rt>なみだ</rt></ruby>)<br>*(Linh-chan... (rớm))* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>立派<rt>りっぱ</rt></ruby>な<ruby>挨拶<rt>あいさつ</rt></ruby>でした。さあ、<ruby>今日<rt>きょう</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Lời cảm ơn trang trọng. Nào, hôm nay tiếp tục cố lên.)* |
| Cả đội | おはようございます!<br>*(Chào buổi sáng!)* |

---

## Tình huống 13 — Ký túc bàn học · 23:00, Linh ghi lộ trình kép SSW1 + N2 + 技能検定

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>6<rt>むい</rt></ruby><ruby>日<rt>か</rt></ruby>、N3<ruby>合格<rt>ごうかく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>日<rt>び</rt></ruby>。これからの<ruby>道筋<rt>みちすじ</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<br>*(6/6, ngày xác nhận đậu N3. Sắp xếp lại lộ trình.)* |
| Linh | <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>:N3<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby><ruby>受取<rt>うけと</rt></ruby>。<ruby>行政<rt>ぎょうせい</rt></ruby><ruby>書士<rt>しょし</rt></ruby>に<ruby>持参<rt>じさん</rt></ruby>。<br>*(Giữa tháng 7: nhận chứng chỉ N3. Mang đến luật sư.)* |
| Linh | <ruby>7<rt>しち</rt></ruby>~<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby>:<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>耕種<rt>こうしゅ</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby><ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>集中<rt>しゅうちゅう</rt></ruby><ruby>演習<rt>えんしゅう</rt></ruby>。<ruby>沙織<rt>さおり</rt></ruby>さんに<ruby>実技<rt>じつぎ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>依頼。<br>*(Tháng 7-8: tập trung luyện đề 技能検定3級 trồng trọt. Nhờ Saori-san dạy thực hành.)* |
| Linh | <ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby>:<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>。<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>:SSW1<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>(<ruby>水戸<rt>みと</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>)。<br>*(Đầu tháng 9: thi 技能検定3級. Tháng 10: nộp hồ sơ SSW1 入管 Mito.)* |
| Linh | <ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>:<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>:JLPTN2<ruby>受験<rt>じゅけん</rt></ruby>。<br>*(Tháng 11: kết quả 技能検定. Nộp bổ sung chứng chỉ. Tháng 12: thi JLPT N2.)* |
| Linh | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>:<ruby>母<rt>はは</rt></ruby>を<ruby>短期<rt>たんき</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザで<ruby>招待<rt>しょうたい</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>:SSW1<ruby>結果<rt>けっか</rt></ruby><ruby>通知<rt>つうち</rt></ruby><ruby>受領<rt>じゅりょう</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>:<ruby>在留<rt>ざいりゅう</rt></ruby>カード<ruby>更新<rt>こうしん</rt></ruby>、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>SSW1<ruby>開始<rt>かいし</rt></ruby>。<br>*(Tháng 1: mời mẹ visa thăm ngắn. Tháng 2: nhận kết quả SSW1. Tháng 3: làm thẻ cư trú, tháng 4 SSW1 bắt đầu.)* |
| Linh | <ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>恩送<rt>おんおく</rt></ruby>りを<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Cố lên. Đừng quên on-okuri.)* |

---

## Đọng lại chương 3

Linh báo tin đậu N3 đúng nghi thức Nhật: **お陰様で... + ご報告 với 親方 + 改めての感謝** trước cả đội. Học các mẫu câu báo tin chuyên nghiệp: **お陰様で〜いたしました / ご報告させていただきたい / 〜のご理解のお陰でございます / 改めて感謝の気持ちをお伝えしたく**. Học cách phân tích kinh nghiệm thi cho kohai bằng pattern **反省点 3 + 継続点 3**. Học chiến lược 聴解 (**選択肢先読み / メモ 3つ以内 / 迷ったら飛ばす**). Học khái niệm **学習時間** mà 親方 cấp — không trừ lương — là khoản 投資 chứ không phải ưu ái cá nhân. Hoàn chỉnh **lộ trình kép** SSW1申請 + 技能検定3級 + JLPT N2 cho 12 tháng tới. Thấm thêm bài học **恩送り**: nhận từ Saori → trao cho Hương → trao cho Mai.

> Từ vựng & mẫu câu chương này: 合格・お陰様で・ご報告・改めて・反省点・継続点・学習時間・投資・配慮・要件・文字語彙・読解・聴解・選択肢・キーワード・飛ばし読み・満点・合格ライン・余裕・原本・郵送・励まし・支え・心強い・道筋・整理・〜にご報告させていただきたい・〜のお陰でございます・〜に挑戦させていただきます・ご期待に応えます

---

## Bí quyết chương

- **Khi báo tin vui với cấp trên**: mở bằng "<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、ご<ruby>報告<rt>ほうこく</rt></ruby>させていただきたい" → "<ruby>お陰<rt>かげ</rt></ruby><ruby>様<rt>さま</rt></ruby>で〜いたしました" → "<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き...にご<ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えます". Không khoe điểm trước khi cảm ơn.
- **Phân tích kết quả 3-3**: 3 反省点 + 3 継続点 — pattern Nhật chuẩn để rút kinh nghiệm, dễ dùng cho cả PDCA công việc.
- **聴解 3 nguyên tắc**: đọc lựa chọn trước, ghi tối đa 3 mục (ai-làm gì-vì sao), phân vân bỏ qua quay lại sau.
- **学習時間** = 投資 chứ không phải ưu ái. Nói rõ cho 親方 biết sẽ đáp lại bằng N2 + JAS thanh tra.
- **Mỗi ngày 20 phút > 3 giờ rồi bỏ**: nguyên tắc cho kohai mới (Mai N4).
- **恩送り pipeline**: Saori → Linh → Hương → Mai. Nhận từ ai không quan trọng bằng truyền tiếp cho ai.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 合格 | ごうかく | HỢP CÁCH | đậu, đỗ |
| お陰様で | おかげさまで | ÂM TƯỢNG — | nhờ ơn (kính ngữ) |
| 得点 | とくてん | ĐẮC ĐIỂM | điểm số |
| 合格ライン | ごうかく — | HỢP CÁCH — | mức điểm đỗ |
| 余裕 | よゆう | DƯ DỤ | dư dả |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 朝イチ | あさイチ | TRIỀU — | đầu giờ sáng |
| 恐れ入りますが | おそれいりますが | KHỦNG NHẬP — | xin lỗi (lễ phép trước khi nói) |
| 配慮 | はいりょ | PHỐI LỰ | chiếu cố, quan tâm |
| 早退 | そうたい | TẢO THOÁI | về sớm |
| 給与減額 | きゅうよげんがく | CẤP DỮ GIẢM NGẠCH | giảm lương |
| 投資 | とうし | ĐẦU TƯ | đầu tư |
| 期待に応える | きたいにこたえる | KỲ ĐÃI ỨNG | đáp lại kỳ vọng |
| 反省点 | はんせいてん | PHẢN TỈNH ĐIỂM | điểm cần xem lại |
| 継続点 | けいぞくてん | KẾ TỤC ĐIỂM | điểm cần duy trì |
| 文字語彙 | もじごい | VĂN TỰ NGỮ VỰNG | phần văn tự ngữ vựng |
| 読解 | どっかい | ĐỌC GIẢI | phần đọc hiểu |
| 聴解 | ちょうかい | THÍNH GIẢI | phần nghe hiểu |
| 音読 | おんどく | ÂM ĐỘC | âm Hán-Nhật |
| 訓読 | くんどく | HUẤN ĐỘC | âm thuần Nhật |
| 使い分け | つかいわけ | SỬ DỤNG PHÂN | dùng phân biệt |
| 飛ばし読み | とばしよみ | PHI ĐỌC | đọc lướt |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| キーワード | — | — | từ khoá |
| 戦略 | せんりゃく | CHIẾN LƯỢC | chiến lược |
| 満点 | まんてん | MÃN ĐIỂM | điểm tuyệt đối |
| 単語カード | たんごカード | ĐƠN NGỮ — | thẻ từ vựng |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề năm cũ |
| 会話練習 | かいわれんしゅう | HỘI THOẠI LUYỆN TẬP | luyện hội thoại |
| 誘引 | ゆういん | DỤ DẪN | dẫn dây (kỹ thuật trồng) |
| 雑談 | ざつだん | TẠP ĐÀM | trò chuyện vặt |
| 心強い | こころづよい | TÂM CƯỜNG | vững tâm |
| 背中を追いかける | せなかをおいかける | BỐI TRUNG TRUY — | đuổi theo (lưng người trước) |
| 励まし | はげまし | LỆ — | sự động viên |
| 支える | ささえる | CHI — | nâng đỡ, hỗ trợ |
| 学習時間 | がくしゅうじかん | HỌC TẬP THỜI GIAN | giờ học |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 適用 | てきよう | THÍCH DỤNG | áp dụng |
| 要件 | ようけん | YẾU KIỆN | điều kiện cần |
| 原本 | げんぽん | NGUYÊN BẢN | bản gốc |
| 郵送 | ゆうそう | BƯU TỐNG | gửi bưu điện |
| 持参 | じさん | TRÌ THAM | mang theo |
| 強み | つよみ | CƯỜNG — | điểm mạnh |
| 頼もしい | たのもしい | LẠI — | đáng tin cậy |
| 改めて | あらためて | CẢI — | một lần nữa, lại |
| 感謝 | かんしゃ | CẢM TẠ | sự cảm ơn |
| 頂戴 | ちょうだい | ĐỈNH ĐÃI | (kính ngữ) nhận, xin |
| 立派 | りっぱ | LẬP PHÁI | trang trọng, tốt đẹp |
| 道筋 | みちすじ | ĐẠO CÂN | lộ trình |
| 受取 | うけとり | THỌ THỦ | việc nhận |
| 集中演習 | しゅうちゅうえんしゅう | TẬP TRUNG DIỄN TẬP | luyện tập trung |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | công bố kết quả |
| 通知 | つうち | THÔNG TRI | thông báo |
| 受領 | じゅりょう | THỌ LĨNH | nhận (chính thức) |
| 紫陽花 | あじさい | TỬ DƯƠNG HOA | hoa cẩm tú cầu |
| 千波湖 | せんばこ | THIÊN BA HỒ | Hồ Senba (Mito) |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thách thức, thử sức |
| 意欲 | いよく | Ý DỤC | chí khí, ý chí |
| 謙虚 | けんきょ | KHIÊM HƯ | khiêm tốn |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000004, 800000042, NULL, 'markdown_book', 'T4. Linh dẫn JAS thanh traor — thay Saori-san (JAS監査対応・沙織さんの代理)', '# Sách thực tập sinh nông nghiệp · T4. Linh dẫn JAS thanh traor — thay Saori-san (JAS監査対応・沙織さんの代理)

> **Mục tiêu nhân vật:** Linh (24t, Đồng Tháp), tháng 7/2027. Học các mẫu hội thoại tiếng Nhật cho **vai 監査窓口** lần đầu — dẫn JAS thanh traor Tanaka làm việc thay Saori-san đột xuất nhập viện. Học các kỹ năng: 出迎え (đón) + 名刺交換, giải thích sổ ghi 農薬・肥料 (栽培管理記録), dẫn thanh tra viên đi từng ハウス, xử lý câu hỏi khó về 緩衝帯 (vùng đệm), gọi Saori-san xác nhận khi không chắc, viết 是正処置 (corrective action), tổng kết thanh tra với 親方.

---

## Bối cảnh

Ngày 14 tháng 7 năm 2027, Ibaraki, Yamamoto-nōen. Saori-san — đầu mối JAS thanh tra từ 5 năm nay — đột nhiên nhập viện cấp tính (viêm ruột thừa) tối 13/7. Thanh tra JAS thường niên đã hẹn 14/7 sáng với Tanaka-san của tổ chức 認証機関 ABC Organic. Lùi không được vì thanh tra viên đã lên lịch chéo 3 trại. 親方 Yamamoto giao Linh dẫn thanh tra, có gọi điện hỗ trợ từ Saori-san trong bệnh viện. Hương phụ trợ ghi chép. Đây là **vai 監査窓口 lần đầu** của Linh — vai mà 5 năm sau cô muốn nhận chính thức.

---

## Tình huống 1 — Phòng họp 親方 · 6:30, 親方 phân công Linh thay Saori-san

| Vai | Lời thoại |
|---|---|
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | リンさん、おはようございます。<ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>くからすみません。<br>*(Linh, chào buổi sáng. Xin lỗi gọi sớm.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、おはようございます。<ruby>沙織<rt>さおり</rt></ruby>さんのお<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか?<br>*(Anh chào. Tình trạng chị Saori sao ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>手術<rt>しゅじゅつ</rt></ruby>は<ruby>無事<rt>ぶじ</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>。<ruby>命<rt>いのち</rt></ruby>に<ruby>別状<rt>べつじょう</rt></ruby>はない。ただ、<ruby>今日<rt>きょう</rt></ruby>のJAS<ruby>監査<rt>かんさ</rt></ruby>に<ruby>出<rt>で</rt></ruby>られない。リンさん、<ruby>窓口<rt>まどぐち</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>みたい。<br>*(Mổ thành công. Không nguy hiểm tính mạng. Chỉ là không dự thanh tra JAS hôm nay được. Linh, anh muốn nhờ em làm đầu mối.)* |
| Linh | え、<ruby>私<rt>わたし</rt></ruby>でよろしいのでしょうか? <ruby>正直<rt>しょうじき</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Em á? Em không tự tin lắm.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | リンさんはこの<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>沙織<rt>さおり</rt></ruby>さんの<ruby>横<rt>よこ</rt></ruby>で<ruby>記録<rt>きろく</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てきた。<ruby>誰<rt>だれ</rt></ruby>よりも<ruby>適任<rt>てきにん</rt></ruby>です。<ruby>沙織<rt>さおり</rt></ruby>さんも「リンちゃんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>」と<ruby>言<rt>い</rt></ruby>っている。<br>*(3 năm qua Linh đã thấy Saori làm record. Em phù hợp nhất. Saori cũng bảo "Linh-chan ổn".)* |
| Linh | …<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めさせていただきます。<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>はその<ruby>場<rt>ば</rt></ruby>で<ruby>沙織<rt>さおり</rt></ruby>さんに<ruby>電話<rt>でんわ</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>させていただいてもよろしいでしょうか?<br>*(...Vâng em rõ. Em sẽ làm hết sức. Cho phép em gọi điện hỏi chị Saori khi không rõ được không ạ?)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | もちろん。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>~<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>は<ruby>面会<rt>めんかい</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、それ<ruby>以外<rt>いがい</rt></ruby>もメッセージで<ruby>返事<rt>へんじ</rt></ruby>できると<ruby>言<rt>い</rt></ruby>っていた。フオンさんに<ruby>記録<rt>きろく</rt></ruby><ruby>係<rt>がかり</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>もう。<br>*(Đương nhiên. 9-11h là giờ thăm, ngoài giờ Saori vẫn trả lời tin nhắn. Hương sẽ làm thư ký ghi chép.)* |
| Linh | ありがとうございます。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>でしたね。<ruby>記録<rt>きろく</rt></ruby><ruby>類<rt>るい</rt></ruby>を<ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>しておきます。<br>*(Em cảm ơn. 9h thanh tra viên đến đúng không ạ. Em sẽ chuẩn bị các sổ ở văn phòng.)* |

---

## Tình huống 2 — Văn phòng 8:45, Linh và Hương kiểm tra 栽培管理記録 trước thanh tra

| Vai | Lời thoại |
|---|---|
| Linh | フオン、<ruby>確認<rt>かくにん</rt></ruby>するファイルは<ruby>四<rt>よっ</rt></ruby>つ。<ruby>栽培<rt>さいばい</rt></ruby><ruby>管理<rt>かんり</rt></ruby><ruby>記録<rt>きろく</rt></ruby>、<ruby>肥料<rt>ひりょう</rt></ruby><ruby>使用<rt>しよう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>、<ruby>農薬<rt>のうやく</rt></ruby><ruby>使用<rt>しよう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>、<ruby>出荷<rt>しゅっか</rt></ruby><ruby>記録<rt>きろく</rt></ruby>。<br>*(Hương, có 4 file cần kiểm. Sổ quản lý canh tác, sổ phân bón, sổ thuốc trừ sâu, sổ xuất hàng.)* |
| Hương | はい!<ruby>並<rt>なら</rt></ruby>べました。<ruby>2026<rt>にせんにじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>まで。<br>*(Vâng! Em xếp rồi. Từ 4/2026 đến 6/2027.)* |
| Linh | ありがとう。チェックポイント。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>使用<rt>しよう</rt></ruby>した<ruby>農薬<rt>のうやく</rt></ruby>がJAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>リスト<rt>りすと</rt></ruby>に<ruby>載<rt>の</rt></ruby>っているか。<br>*(Cảm ơn. Điểm check. Một, thuốc trừ sâu đã dùng có trong danh sách cho phép JAS hữu cơ.)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>使用<rt>しよう</rt></ruby><ruby>日<rt>び</rt></ruby>、<ruby>使用<rt>しよう</rt></ruby><ruby>量<rt>りょう</rt></ruby>、<ruby>使用<rt>しよう</rt></ruby><ruby>者<rt>しゃ</rt></ruby><ruby>名<rt>めい</rt></ruby>が<ruby>全<rt>すべ</rt></ruby>て<ruby>記入<rt>きにゅう</rt></ruby>されているか。<br>*(Hai, ngày dùng, lượng dùng, tên người dùng có ghi đủ.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>日<rt>び</rt></ruby>と<ruby>農薬<rt>のうやく</rt></ruby><ruby>使用<rt>しよう</rt></ruby><ruby>日<rt>び</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>が<ruby>適切<rt>てきせつ</rt></ruby>か。<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>使用<rt>しよう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby><ruby>期間<rt>きかん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>っているか。<br>*(Ba, khoảng cách ngày thu hoạch và ngày dùng thuốc có hợp lý. Giai đoạn cấm trước thu hoạch có tuân thủ.)* |
| Hương | <ruby>緊張<rt>きんちょう</rt></ruby>します。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Em hồi hộp. Có ổn không ạ?)* |
| Linh | <ruby>沙織<rt>さおり</rt></ruby>さんが<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>正<rt>ただ</rt></ruby>しく<ruby>記録<rt>きろく</rt></ruby>してきた。<ruby>信<rt>しん</rt></ruby>じよう。<ruby>私<rt>わたし</rt></ruby>たちは<ruby>説明<rt>せつめい</rt></ruby>するだけ。<br>*(3 năm Saori ghi đúng từng ngày. Tin chị ấy. Mình chỉ giải thích thôi.)* |

---

## Tình huống 3 — Cổng nông trại · 9:00, Linh đón Tanaka-san, 名刺交換

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby> | おはようございます。ABC<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby><ruby>機構<rt>きこう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào buổi sáng. Tôi là Tanaka, Tổ chức Chứng nhận hữu cơ ABC.)* |
| Linh | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>のグエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>沙織<rt>さおり</rt></ruby>の<ruby>代理<rt>だいり</rt></ruby>として<ruby>監査<rt>かんさ</rt></ruby>のご<ruby>案内<rt>あんない</rt></ruby>をさせていただきます。<br>*(Tanaka-sama, tôi đợi anh. Tôi là Nguyễn Thị Linh ở Yamamoto-nōen. Hôm nay tôi thay Saori dẫn thanh tra.)* |
| <ruby>田中<rt>たなか</rt></ruby> | あ、<ruby>沙織<rt>さおり</rt></ruby>さんから<ruby>急<rt>きゅう</rt></ruby>な<ruby>入院<rt>にゅういん</rt></ruby>と<ruby>伺<rt>うかが</rt></ruby>いました。<ruby>大変<rt>たいへん</rt></ruby>ですね。<br>*(À, tôi nghe Saori-san nhập viện đột xuất. Vất vả nhỉ.)* |
| Linh | ご<ruby>心配<rt>しんぱい</rt></ruby>いただきありがとうございます。<ruby>手術<rt>しゅじゅつ</rt></ruby>は<ruby>無事<rt>ぶじ</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>いたしました。…<ruby>名刺<rt>めいし</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますでしょうか?<br>*(Cảm ơn anh quan tâm. Mổ thuận lợi rồi. ...Anh cho tôi xin danh thiếp được không?)* |
| <ruby>田中<rt>たなか</rt></ruby> | はい、どうぞ。<br>*(Vâng, mời.)* |
| Linh | (両手で受け取り) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>私<rt>わたし</rt></ruby>の<ruby>名刺<rt>めいし</rt></ruby>はまだ<ruby>作成<rt>さくせい</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>でして、<ruby>本日<rt>ほんじつ</rt></ruby>はメモにてご<ruby>連絡先<rt>れんらくさき</rt></ruby>を<ruby>記<rt>しる</rt></ruby>してお<ruby>渡<rt>わた</rt></ruby>しいたします。<br>*(Nhận hai tay. Tôi nhận. Tanaka-sama, nhờ anh chỉ bảo. Xin lỗi, danh thiếp tôi đang làm, hôm nay tôi viết tay liên hệ trên giấy nhớ gửi anh.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>承知<rt>しょうち</rt></ruby>しました。それでは<ruby>事務所<rt>じむしょ</rt></ruby>へ。<br>*(Tôi hiểu. Vậy ta vào văn phòng.)* |

---

## Tình huống 4 — Văn phòng · 9:10, mở đầu thanh tra, trình bày 概要

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れをご<ruby>説明<rt>せつめい</rt></ruby>させていただきます。<ruby>三<rt>みっ</rt></ruby>つの<ruby>段階<rt>だんかい</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。<br>*(Tanaka-sama, tôi xin trình bày trình tự hôm nay. Có 3 giai đoạn.)* |
| Linh | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>事務所<rt>じむしょ</rt></ruby>での<ruby>書類<rt>しょるい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>から<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>まで。<br>*(Một, kiểm tra giấy tờ tại văn phòng từ 9:10 đến 10:30.)* |
| Linh | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>圃場<rt>ほじょう</rt></ruby>と<ruby>農薬<rt>のうやく</rt></ruby><ruby>保管<rt>ほかん</rt></ruby><ruby>庫<rt>こ</rt></ruby>の<ruby>現地<rt>げんち</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>から<ruby>12<rt>じゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>まで。<br>*(Hai, kiểm tra hiện trường ruộng và kho thuốc từ 10:30 đến 12:00.)* |
| Linh | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、お<ruby>昼<rt>ひる</rt></ruby><ruby>休憩<rt>きゅうけい</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>13<rt>じゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>講評<rt>こうひょう</rt></ruby>と<ruby>是正<rt>ぜせい</rt></ruby><ruby>処置<rt>しょち</rt></ruby>のご<ruby>提示<rt>ていじ</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Ba, sau nghỉ trưa, từ 13:00 nghe nhận xét và corrective action.)* |
| <ruby>田中<rt>たなか</rt></ruby> | はい、<ruby>結構<rt>けっこう</rt></ruby>です。リンさん、<ruby>準備<rt>じゅんび</rt></ruby>が<ruby>行<rt>ゆ</rt></ruby>き<ruby>届<rt>とど</rt></ruby>いていますね。<br>*(Vâng được. Linh-san chuẩn bị chu đáo nhỉ.)* |
| Linh | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>沙織<rt>さおり</rt></ruby>からの<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ<ruby>事項<rt>じこう</rt></ruby>に<ruby>沿<rt>そ</rt></ruby>って<ruby>進<rt>すす</rt></ruby>めさせていただきます。それでは<ruby>栽培<rt>さいばい</rt></ruby><ruby>管理<rt>かんり</rt></ruby><ruby>記録<rt>きろく</rt></ruby>からご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Em cảm ơn. Em sẽ tiến hành theo bàn giao của Saori. Mời anh xem từ sổ quản lý canh tác trước.)* |

---

## Tình huống 5 — Văn phòng · 9:30, Tanaka hỏi về một dòng ghi trong sổ 農薬

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby> | リンさん、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>日<rt>か</rt></ruby>の<ruby>欄<rt>らん</rt></ruby>に「BT<ruby>剤<rt>ざい</rt></ruby>」と<ruby>記載<rt>きさい</rt></ruby>があります。<ruby>製品<rt>せいひん</rt></ruby><ruby>名<rt>めい</rt></ruby>と<ruby>有効<rt>ゆうこう</rt></ruby><ruby>成分<rt>せいぶん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Linh-san, dòng 12/5 ghi "BT剤". Cho tôi biết tên sản phẩm và thành phần chính.)* |
| Linh | はい。<ruby>確認<rt>かくにん</rt></ruby>いたします。…「<ruby>ゼンターリ<rt>ぜんたーり</rt></ruby><ruby>顆粒<rt>かりゅう</rt></ruby><ruby>水和剤<rt>すいわざい</rt></ruby>」、<ruby>有効<rt>ゆうこう</rt></ruby><ruby>成分<rt>せいぶん</rt></ruby>はバチルス・チューリンゲンシス・アイザワイ<ruby>系統<rt>けいとう</rt></ruby>。JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>リスト<rt>りすと</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>されております。<br>*(Vâng. Em kiểm. ..."Zentari, hạt tan trong nước", thành phần là chủng Bacillus thuringiensis aizawai. Có trong danh sách cho phép JAS hữu cơ.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>使用<rt>しよう</rt></ruby><ruby>目的<rt>もくてき</rt></ruby>は?<br>*(Mục đích sử dụng?)* |
| Linh | <ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウスのキャベツの<ruby>青虫<rt>あおむし</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>です。<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>日<rt>か</rt></ruby>に<ruby>沙織<rt>さおり</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>12<rt>じゅうに</rt></ruby><ruby>日<rt>か</rt></ruby>に<ruby>散布<rt>さんぷ</rt></ruby>いたしました。<br>*(Trị sâu xanh bắp cải nhà kính số 3. 10/5 Saori xác nhận xuất hiện, 12/5 phun.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>収穫<rt>しゅうかく</rt></ruby><ruby>日<rt>び</rt></ruby>は?<br>*(Ngày thu hoạch?)* |
| Linh | <ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>日<rt>か</rt></ruby>でございます。<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>使用<rt>しよう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>前<rt>まえ</rt></ruby>までですので、<ruby>29<rt>にじゅうきゅう</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>間<rt>かん</rt></ruby><ruby>空<rt>あ</rt></ruby>けており、<ruby>規定<rt>きてい</rt></ruby><ruby>を<rt>—</rt></ruby><ruby>満<rt>み</rt></ruby>たしております。<br>*(10/6. Khoảng cấm trước thu hoạch là 3 ngày, mình cách 29 ngày, đáp ứng quy định.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>明確<rt>めいかく</rt></ruby>です。<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Rõ ràng. Tiếp tục đi.)* |

---

## Tình huống 6 — Văn phòng · 9:50, Tanaka hỏi câu khó về 緩衝帯, Linh xin gọi Saori

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby> | リンさん、<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby><ruby>図<rt>ず</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<ruby>隣<rt>となり</rt></ruby>の<ruby>慣行<rt>かんこう</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>との<ruby>距離<rt>きょり</rt></ruby>は?<br>*(Cho tôi xem bản đồ vùng đệm. Khoảng cách với trại quy ước bên cạnh?)* |
| Linh | <ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>はこちらでございます。…<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>北側<rt>きたがわ</rt></ruby>の<ruby>距離<rt>きょり</rt></ruby><ruby>数値<rt>すうち</rt></ruby>について、<ruby>私<rt>わたし</rt></ruby>の<ruby>記憶<rt>きおく</rt></ruby>が<ruby>曖昧<rt>あいまい</rt></ruby>なので<ruby>沙織<rt>さおり</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>させていただいてもよろしいでしょうか?<br>*(Bản đồ vùng đệm đây. ...Xin lỗi, số liệu phía bắc em không nhớ chính xác, cho phép em gọi điện hỏi Saori được không?)* |
| <ruby>田中<rt>たなか</rt></ruby> | もちろんです。<ruby>正確<rt>せいかく</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>推測<rt>すいそく</rt></ruby>で<ruby>答<rt>こた</rt></ruby>えないのは<ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>。<br>*(Đương nhiên. Thông tin chính xác mới quan trọng. Không đoán bừa là quyết định đúng.)* |
| Linh | ありがとうございます。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。…<ruby>沙織<rt>さおり</rt></ruby>さん、<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby><ruby>北側<rt>きたがわ</rt></ruby>の<ruby>距離<rt>きょり</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Em cảm ơn. Anh chờ một chút. ...Chị Saori, xin lỗi, khoảng cách phía bắc vùng đệm là bao nhiêu ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>北側<rt>きたがわ</rt></ruby>は<ruby>5<rt>ご</rt></ruby>メートル+<ruby>1<rt>いち</rt></ruby>.<ruby>5<rt>ご</rt></ruby>メートルの<ruby>生<rt>い</rt></ruby>け<ruby>垣<rt>がき</rt></ruby>。<ruby>図面<rt>ずめん</rt></ruby><ruby>P3<rt>ぴーさん</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>。<ruby>慣行<rt>かんこう</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>は<ruby>水稲<rt>すいとう</rt></ruby>で<ruby>飛散<rt>ひさん</rt></ruby><ruby>農薬<rt>のうやく</rt></ruby><ruby>無<rt>な</rt></ruby>し、<ruby>覚書<rt>おぼえがき</rt></ruby>あり。<br>*(Bắc 5m + hàng rào cây 1.5m. Ghi ở trang 3 bản đồ. Trại bên là lúa nước, không thuốc phát tán, có giấy thoả thuận.)* |
| Linh | ありがとうございます。<ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>北側<rt>きたがわ</rt></ruby>は<ruby>5<rt>ご</rt></ruby>メートル+<ruby>生<rt>い</rt></ruby>け<ruby>垣<rt>がき</rt></ruby><ruby>1<rt>いち</rt></ruby>.<ruby>5<rt>ご</rt></ruby>メートル、<ruby>図面<rt>ずめん</rt></ruby>P<ruby>3<rt>さん</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>がございます。<ruby>隣接<rt>りんせつ</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>は<ruby>水稲<rt>すいとう</rt></ruby>で<ruby>飛散<rt>ひさん</rt></ruby><ruby>農薬<rt>のうやく</rt></ruby>は<ruby>使<rt>つか</rt></ruby>っておらず、<ruby>覚書<rt>おぼえがき</rt></ruby>もございます。<br>*(Em cảm ơn. Tanaka-sama, xin lỗi đã để anh chờ. Bắc 5m + hàng rào 1.5m, ghi trang 3 bản đồ. Trại bên là lúa nước không dùng thuốc phát tán, có giấy thoả thuận.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>覚書<rt>おぼえがき</rt></ruby>の<ruby>写<rt>うつ</rt></ruby>しも<ruby>拝見<rt>はいけん</rt></ruby>できますか?<br>*(Tôi xem bản photo giấy thoả thuận được không?)* |
| Linh | こちらでございます。<ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>締結<rt>ていけつ</rt></ruby>、<ruby>有効<rt>ゆうこう</rt></ruby><ruby>期間<rt>きかん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>。<br>*(Đây ạ. Ký 4/2025, hiệu lực 5 năm.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Được rồi.)* |

---

## Tình huống 7 — Đường ra 圃場 · 10:30, dẫn thanh tra viên ra hiện trường

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、こちらが<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby>ハウス、<ruby>主<rt>おも</rt></ruby>にトマトを<ruby>栽培<rt>さいばい</rt></ruby>しております。<ruby>面積<rt>めんせき</rt></ruby>は<ruby>500<rt>ごひゃく</rt></ruby><ruby>平方<rt>へいほう</rt></ruby>メートル。<br>*(Tanaka-sama, đây là nhà kính số 1, chủ yếu trồng cà chua. Diện tích 500m².)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>土壌<rt>どじょう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>はどうされていますか?<br>*(Quản lý đất thế nào?)* |
| Linh | <ruby>緑肥<rt>りょくひ</rt></ruby><ruby>作物<rt>さくもつ</rt></ruby>の<ruby>輪作<rt>りんさく</rt></ruby>と、<ruby>自家<rt>じか</rt></ruby><ruby>製<rt>せい</rt></ruby><ruby>堆肥<rt>たいひ</rt></ruby>の<ruby>投入<rt>とうにゅう</rt></ruby>を<ruby>基本<rt>きほん</rt></ruby>としております。<ruby>堆肥<rt>たいひ</rt></ruby>の<ruby>原料<rt>げんりょう</rt></ruby>は<ruby>近隣<rt>きんりん</rt></ruby><ruby>畜産<rt>ちくさん</rt></ruby><ruby>農家<rt>のうか</rt></ruby>の<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby><ruby>済<rt>ず</rt></ruby>みの<ruby>牛糞<rt>ぎゅうふん</rt></ruby>と、<ruby>当<rt>とう</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>の<ruby>残渣<rt>ざんさ</rt></ruby>です。<br>*(Luân canh cây xanh phân + đổ phân tự ủ. Nguyên liệu là phân bò đã chứng nhận hữu cơ từ trại chăn nuôi gần và xác cây trại em.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>畜産<rt>ちくさん</rt></ruby><ruby>農家<rt>のうか</rt></ruby>の<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>の<ruby>有効<rt>ゆうこう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>済<ruby>み<rt>—</rt></ruby>ですか?<br>*(Hạn hiệu lực chứng nhận của trại chăn nuôi đã kiểm chưa?)* |
| Linh | はい。<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>まで<ruby>有効<rt>ゆうこう</rt></ruby>でございます。<ruby>写<rt>うつ</rt></ruby>しは<ruby>事務所<rt>じむしょ</rt></ruby><ruby>側<rt>がわ</rt></ruby>のファイル<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>されております。<br>*(Vâng. Hiệu lực đến 3/2028. Bản photo lưu file số 2 ở văn phòng.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>後<rt>あと</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Tuyệt. Lát cho tôi xem lại.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>いたしました。フオン、メモして。<br>*(Vâng. Hương, ghi vào.)* |
| Hương | はい!<br>*(Vâng!)* |

---

## Tình huống 8 — 農薬保管庫 · 11:15, kiểm kho thuốc

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>農薬<rt>のうやく</rt></ruby><ruby>保管<rt>ほかん</rt></ruby><ruby>庫<rt>こ</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>します。<ruby>鍵<rt>かぎ</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby>は?<br>*(Tôi xem kho thuốc. Quản lý chìa khoá thế nào?)* |
| Linh | <ruby>鍵<rt>かぎ</rt></ruby>は<ruby>事務所<rt>じむしょ</rt></ruby>の<ruby>金庫<rt>きんこ</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>、<ruby>取扱<rt>とりあつかい</rt></ruby><ruby>者<rt>しゃ</rt></ruby>は<ruby>親方<rt>おやかた</rt></ruby>と<ruby>沙織<rt>さおり</rt></ruby>の<ruby>二<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>のみ。<ruby>使用<rt>しよう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>取扱<rt>とりあつかい</rt></ruby><ruby>記録<rt>きろく</rt></ruby><ruby>簿<rt>ぼ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>いたします。<br>*(Khoá để trong két văn phòng, người được phép chỉ 親方 và Saori. Khi dùng phải ghi sổ giao nhận.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>JAS<ruby>対象<rt>たいしょう</rt></ruby><ruby>外<rt>がい</rt></ruby>の<ruby>農薬<rt>のうやく</rt></ruby>はありませんね?<br>*(Không có thuốc ngoài danh sách JAS hữu cơ chứ?)* |
| Linh | はい、ございません。<ruby>棚<rt>たな</rt></ruby><ruby>左側<rt>ひだりがわ</rt></ruby>がBT<ruby>剤<rt>ざい</rt></ruby><ruby>系<rt>けい</rt></ruby>、<ruby>右側<rt>みぎがわ</rt></ruby>が<ruby>銅水<rt>どうすい</rt></ruby><ruby>和剤<rt>わざい</rt></ruby>、<ruby>下段<rt>げだん</rt></ruby>が<ruby>木酢液<rt>もくさくえき</rt></ruby>。<ruby>全<rt>すべ</rt></ruby>てJAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>品<rt>ひん</rt></ruby>でございます。<br>*(Vâng, không có. Kệ trái BT剤, phải đồng-nước, ngăn dưới mộc-tô (giấm gỗ). Tất cả đều thuộc danh sách JAS cho phép.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>容器<rt>ようき</rt></ruby>のラベル<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>らせてもらいます。<br>*(Tôi chụp ảnh nhãn các chai.)* |
| Linh | はい、どうぞ。フオン、<ruby>明<rt>あか</rt></ruby>るくして。<br>*(Vâng, mời. Hương, bật đèn sáng lên.)* |

---

## Tình huống 9 — 圃場 · 11:40, Tanaka phát hiện một điểm cần 是正

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby> | リンさん、こちらをご<ruby>覧<rt>らん</rt></ruby>ください。<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>す<ruby>標識<rt>ひょうしき</rt></ruby>が<ruby>外<rt>はず</rt></ruby>れて<ruby>倒<rt>たお</rt></ruby>れています。<br>*(Linh-san, xem này. Biển báo vùng đệm bị rơi nằm đó.)* |
| Linh | あ、<ruby>本当<rt>ほんとう</rt></ruby>ですね。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>台風<rt>たいふう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>かと<ruby>思<rt>おも</rt></ruby>われます。<br>*(À thật. Em xin lỗi. Có lẽ do bão số 5 tuần trước.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>軽<rt>かる</rt></ruby>い<ruby>是正<rt>ぜせい</rt></ruby><ruby>処置<rt>しょち</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>になります。<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>復旧<rt>ふっきゅう</rt></ruby>+<ruby>写真<rt>しゃしん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>。<br>*(Là 是正 nhẹ. Trong 2 tuần khắc phục + nộp ảnh.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>までに<ruby>標識<rt>ひょうしき</rt></ruby>を<ruby>立<rt>た</rt></ruby>て<ruby>直<rt>なお</rt></ruby>し、<ruby>明日<rt>あした</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>写真<rt>しゃしん</rt></ruby>付<ruby>き<rt>—</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>書<rt>しょ</rt></ruby>をメールにてお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Em rõ. Chiều nay em dựng lại biển, mai sáng gửi email báo cáo kèm ảnh.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>対応<rt>たいおう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>くて<ruby>助<rt>たす</rt></ruby>かります。<br>*(Xử lý nhanh, đỡ quá.)* |
| Linh | フオン、<ruby>是正<rt>ぜせい</rt></ruby><ruby>処置<rt>しょち</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>標識<rt>ひょうしき</rt></ruby><ruby>復旧<rt>ふっきゅう</rt></ruby>、<ruby>期限<rt>きげん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>28<rt>にじゅうはち</rt></ruby><ruby>日<rt>にち</rt></ruby>。<br>*(Hương, hạng mục 是正, 1 vụ. Dựng biển, hạn 28/7.)* |
| Hương | はい、メモしました!<br>*(Vâng em ghi rồi!)* |

---

## Tình huống 10 — Phòng họp · 13:00, 講評 và là sit-down với Tanaka

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby> | お<ruby>昼<rt>ひる</rt></ruby>を<ruby>挟<rt>はさ</rt></ruby>みまして、<ruby>講評<rt>こうひょう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>の<ruby>有機<rt>ゆうき</rt></ruby>JAS<ruby>認証<rt>にんしょう</rt></ruby>は<ruby>継続<rt>けいぞく</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Xong bữa trưa, chuyển sang nhận xét. Kết luận trước: chứng nhận JAS hữu cơ của Yamamoto-nōen được tiếp tục.)* |
| Linh | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>く<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Em cảm ơn. Em thực sự biết ơn.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>是正<rt>ぜせい</rt></ruby><ruby>処置<rt>しょち</rt></ruby>は<ruby>軽微<rt>けいび</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>のみ。<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby><ruby>標識<rt>ひょうしき</rt></ruby><ruby>復旧<rt>ふっきゅう</rt></ruby>、<ruby>期限<rt>きげん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>。<br>*(Chỉ 1 vụ 是正 nhẹ. Dựng biển vùng đệm, hạn 2 tuần.)* |
| Linh | <ruby>明日<rt>あした</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>写真<rt>しゃしん</rt></ruby>付<ruby>き<rt>—</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます。<br>*(Mai sáng em gửi báo cáo kèm ảnh.)* |
| <ruby>田中<rt>たなか</rt></ruby> | また、<ruby>本日<rt>ほんじつ</rt></ruby>のリンさんの<ruby>対応<rt>たいおう</rt></ruby>について、<ruby>講評<rt>こうひょう</rt></ruby><ruby>欄<rt>らん</rt></ruby>にコメントを<ruby>記載<rt>きさい</rt></ruby>させていただきます。「<ruby>記録<rt>きろく</rt></ruby>の<ruby>把握<rt>はあく</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>で、<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>推測<rt>すいそく</rt></ruby>せず<ruby>確認<rt>かくにん</rt></ruby>する<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>く<ruby>評価<rt>ひょうか</rt></ruby>できる」と。<br>*(Còn về cách xử lý của Linh hôm nay, tôi sẽ ghi nhận xét ở phần đánh giá: "Nắm hồ sơ chính xác, thái độ không đoán bừa mà xác nhận lại đáng được đánh giá cao".)* |
| Linh | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>沙織<rt>さおり</rt></ruby>のお<ruby>陰<rt>かげ</rt></ruby>でございます。<br>*(Em không xứng nhận. Là nhờ chị Saori.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>謙虚<rt>けんきょ</rt></ruby>ですね。<ruby>沙織<rt>さおり</rt></ruby>さんによろしくお<ruby>伝<rt>つた</rt></ruby>えください。<br>*(Em khiêm tốn nhỉ. Cho tôi gửi lời tới Saori-san.)* |
| Linh | <ruby>必<rt>かなら</rt></ruby>ずお<ruby>伝<rt>つた</rt></ruby>えいたします。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Em nhất định truyền lời. Hôm nay em chân thành cảm ơn.)* |

---

## Tình huống 11 — Cổng nông trại · 14:00, tiễn Tanaka

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りください。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Tanaka-sama, anh về cẩn thận. Hôm nay em chân thành cảm ơn.)* |
| <ruby>田中<rt>たなか</rt></ruby> | リンさん、フオンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>来年<rt>らいねん</rt></ruby>もまたよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Linh-san, Hương-san, vất vả rồi. Năm sau lại nhờ các bạn.)* |
| Linh | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em cũng vậy, nhờ anh.)* |
| <ruby>田中<rt>たなか</rt></ruby> | リンさん、<ruby>来年<rt>らいねん</rt></ruby>はぜひ<ruby>名刺<rt>めいし</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しておいてください(<ruby>笑<rt>わら</rt></ruby>)。<br>*(Linh-san, năm sau nhớ chuẩn bị danh thiếp nhé (cười).)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>いたしました!<ruby>必<rt>かなら</rt></ruby>ず<ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Em rõ rồi! Em nhất định chuẩn bị.)* |

---

## Tình huống 12 — Văn phòng · 14:15, báo cáo 親方 ngay

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。ご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Anh ơi, em xin báo cáo.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | お<ruby>疲<rt>つか</rt></ruby>れさま、リンさん、フオンさん。<ruby>結果<rt>けっか</rt></ruby>はどうでしたか?<br>*(Vất vả Linh, Hương. Kết quả thế nào?)* |
| Linh | <ruby>有機<rt>ゆうき</rt></ruby>JAS<ruby>認証<rt>にんしょう</rt></ruby>、<ruby>継続<rt>けいぞく</rt></ruby>です。<br>*(Chứng nhận JAS hữu cơ, được tiếp tục.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | よかった!<ruby>是正<rt>ぜせい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>は?<br>*(Tốt quá! Hạng mục 是正?)* |
| Linh | <ruby>軽微<rt>けいび</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>のみ。<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby><ruby>標識<rt>ひょうしき</rt></ruby><ruby>復旧<rt>ふっきゅう</rt></ruby>、<ruby>期限<rt>きげん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>28<rt>にじゅうはち</rt></ruby><ruby>日<rt>にち</rt></ruby>。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>に<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>、<ruby>明日<rt>あした</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby><ruby>書<rt>しょ</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby><ruby>予定<rt>よてい</rt></ruby>でございます。<br>*(Nhẹ 1 vụ. Dựng biển vùng đệm, hạn 28/7. Chiều nay khắc phục, mai sáng gửi báo cáo.)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>立派<rt>りっぱ</rt></ruby>だ。<ruby>田中<rt>たなか</rt></ruby>さんから<ruby>何<rt>なに</rt></ruby>か<ruby>言<rt>い</rt></ruby>われたか?<br>*(Trang trọng quá. Tanaka có nói gì không?)* |
| Linh | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたしました。「<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>推測<rt>すいそく</rt></ruby>せず<ruby>確認<rt>かくにん</rt></ruby>する<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>評価<rt>ひょうか</rt></ruby>できる」と。<br>*(Em được nhận lời quá đáng. "Thái độ không đoán bừa mà xác nhận lại đáng được đánh giá".)* |
| <ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby> | <ruby>沙織<rt>さおり</rt></ruby>に<ruby>聞<rt>き</rt></ruby>かせたら<ruby>泣<rt>な</rt></ruby>くな。<ruby>明日<rt>あした</rt></ruby>お<ruby>見舞<rt>みま</rt></ruby>いに<ruby>行<rt>い</rt></ruby>こう、<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Saori nghe sẽ khóc. Mai mình đi thăm cùng nhé.)* |
| Linh | はい、ぜひ。<br>*(Vâng, nhất định.)* |

---

## Tình huống 13 — Bệnh viện thành phố Mito · 18:00, thăm Saori-san

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>沙織<rt>さおり</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>お加減<rt>おかげん</rt></ruby>はいかがですか?<br>*(Chị Saori, em xin phép vào. Chị thấy thế nào ạ?)* |
| <ruby>沙織<rt>さおり</rt></ruby> | リンちゃん、フオンちゃん、お<ruby>疲<rt>つか</rt></ruby>れさま!<ruby>監査<rt>かんさ</rt></ruby>どうだった?<br>*(Linh-chan, Hương-chan, vất vả! Thanh tra sao rồi?)* |
| Linh | <ruby>継続<rt>けいぞく</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>です。<ruby>是正<rt>ぜせい</rt></ruby>は<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby><ruby>標識<rt>ひょうしき</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>のみ。<br>*(Được tiếp tục chứng nhận. 是正 chỉ 1 vụ biển vùng đệm.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | やった!リンちゃん、ありがとう。<br>*(Hoan hô! Linh-chan cảm ơn em.)* |
| Linh | こちらこそ。<ruby>沙織<rt>さおり</rt></ruby>さんが<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>正確<rt>せいかく</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>してくださっていたから、<ruby>私<rt>わたし</rt></ruby>は<ruby>説明<rt>せつめい</rt></ruby>するだけでした。<br>*(Em cũng vậy. Vì 3 năm chị ghi chính xác từng ngày nên em chỉ giải thích thôi.)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>田中<rt>たなか</rt></ruby>さんから<ruby>連絡<rt>れんらく</rt></ruby>あった。「リンさんは<ruby>来年<rt>らいねん</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>でいい」って。<br>*(Tanaka đã liên lạc. Bảo "năm sau Linh có thể là đầu mối chính thức".)* |
| Linh | え!<ruby>本当<rt>ほんとう</rt></ruby>ですか? <ruby>沙織<rt>さおり</rt></ruby>さんの<ruby>役<rt>やく</rt></ruby>を<ruby>奪<rt>うば</rt></ruby>うようで…<br>*(Ơ! Thật ạ? Như cướp vai của chị...)* |
| <ruby>沙織<rt>さおり</rt></ruby> | <ruby>違<rt>ちが</rt></ruby>う。<ruby>恩送<rt>おんおく</rt></ruby>り。<ruby>5<rt>ご</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>親方<rt>おやかた</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>に<ruby>窓口<rt>まどぐち</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せてくれた。<ruby>今<rt>いま</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>がリンちゃんに<ruby>渡<rt>わた</rt></ruby>す<ruby>番<rt>ばん</rt></ruby>。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、リンちゃんがフオンちゃんに<ruby>渡<rt>わた</rt></ruby>す。<br>*(Không. On-okuri thôi. 5 năm trước 親方 giao chị. Giờ đến lượt chị giao Linh-chan. 5 năm sau Linh-chan giao Hương-chan.)* |
| Hương | <ruby>私<rt>わたし</rt></ruby>もそんな<ruby>大事<rt>だいじ</rt></ruby>な<ruby>役<rt>やく</rt></ruby>ができるようになりたいです。<br>*(Em cũng muốn làm được vai quan trọng như thế.)* |
| Linh | フオンなら<ruby>絶対<rt>ぜったい</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>沙織<rt>さおり</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>に、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Hương chắc chắn được. Chị Saori, thực sự, thực sự em cảm ơn.)* |

---

## Tình huống 14 — Ký túc, phòng Linh · 21:00, gọi điện về VN

> Cảnh tiếng Việt — gọi mẹ ở Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Mẹ ơi, hôm nay con dẫn JAS thanh tra thay chị Saori — chị Saori bị viêm ruột thừa nhập viện đêm qua. |
| Mẹ | (tiếng Việt) Trời, chị ấy sao rồi con? |
| Linh | (tiếng Việt) Mổ xong, ổn rồi mẹ. Chiều nay con với 親方 đi thăm. Con báo: nông trại được tiếp tục chứng nhận JAS hữu cơ. |
| Mẹ | (tiếng Việt) Một mình con dẫn người ta ạ? |
| Linh | (tiếng Việt) Có em Hương phụ ghi chép. Thanh tra viên là anh Tanaka, đã đi 5 năm rồi nên ảnh quen. Con sợ lắm, có một lúc ảnh hỏi khoảng cách vùng đệm 緩衝帯 con không nhớ, con xin phép gọi chị Saori từ bệnh viện. |
| Mẹ | (tiếng Việt) Vậy ảnh có giận không? |
| Linh | (tiếng Việt) Ngược lại mẹ. Cuối ngày ảnh khen: "Thái độ không đoán bừa mà xác nhận đáng được đánh giá cao". Con không dám nhận. |
| Mẹ | (tiếng Việt) Con dám nhận đó. Mẹ tự hào con. |
| Linh | (tiếng Việt) Mẹ ạ, chị Saori nói khi nghe Tanaka đề xuất con làm 正式窓口 — đầu mối chính thức — từ năm sau. Chị Saori bảo con: "Không phải cướp vai của chị, là 恩送り". |
| Mẹ | (tiếng Việt) Mẹ nhớ con kể từ trước. Cô Saori này hay quá. |
| Linh | (tiếng Việt) Con cảm động lắm. 5 năm trước 親方 giao chị Saori, giờ chị Saori giao con, 5 năm sau con giao em Hương. |
| Mẹ | (tiếng Việt) Đi xa mà gặp người vậy là phước lớn con. Mẹ ngủ đây. Ngày mai nhớ mặc đồ ấm vô bệnh viện thăm chị Saori. |
| Linh | (tiếng Việt) Dạ. Con đem cháo cá lóc con nấu, theo công thức của ngoại. Mẹ ngủ ngon. |

---

## Tình huống 15 — Ký túc bàn học · 22:30, Linh viết 報告書 và bí quyết tổng kết

| Vai | Lời thoại |
|---|---|
| Linh | JAS<ruby>監査<rt>かんさ</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>書<rt>しょ</rt></ruby>、<ruby>下書<rt>したが</rt></ruby>き<ruby>開始<rt>かいし</rt></ruby>。<ruby>件名<rt>けんめい</rt></ruby>:<ruby>有機<rt>ゆうき</rt></ruby>JAS<ruby>定期<rt>ていき</rt></ruby><ruby>監査<rt>かんさ</rt></ruby><ruby>結果<rt>けっか</rt></ruby>ご<ruby>報告<rt>ほうこく</rt></ruby>(<ruby>令和<rt>れいわ</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>14<rt>じゅうよ</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>実施<rt>じっし</rt></ruby><ruby>分<rt>ぶん</rt></ruby>)。<br>*(Báo cáo thanh tra JAS, bắt đầu nháp. Tiêu đề: Báo cáo kết quả thanh tra JAS định kỳ - 14/7/Reiwa 9.)* |
| Linh | <ruby>結論<rt>けつろん</rt></ruby>:<ruby>継続<rt>けいぞく</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>。<ruby>是正<rt>ぜせい</rt></ruby><ruby>処置<rt>しょち</rt></ruby><ruby>軽微<rt>けいび</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>(<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby><ruby>標識<rt>ひょうしき</rt></ruby><ruby>復旧<rt>ふっきゅう</rt></ruby>、<ruby>期限<rt>きげん</rt></ruby><ruby>7<rt>しち</rt></ruby>/<ruby>28<rt>にじゅうはち</rt></ruby>)、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby><ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby><ruby>済<rt>ず</rt></ruby>。<br>*(Kết luận: tiếp tục. 是正 nhẹ 1 vụ (dựng biển vùng đệm, hạn 7/28), chiều nay đã khắc phục.)* |
| Linh | <ruby>反省点<rt>はんせいてん</rt></ruby>:<ruby>緩衝<rt>かんしょう</rt></ruby><ruby>帯<rt>たい</rt></ruby><ruby>数値<rt>すうち</rt></ruby>を<ruby>即答<rt>そくとう</rt></ruby>できなかった。<ruby>来年<rt>らいねん</rt></ruby>までに<ruby>図面<rt>ずめん</rt></ruby><ruby>主要<rt>しゅよう</rt></ruby><ruby>数値<rt>すうち</rt></ruby>を<ruby>暗記<rt>あんき</rt></ruby>。<br>*(Điểm cần cải thiện: số liệu vùng đệm không trả lời ngay. Đến năm sau phải thuộc số liệu chính bản đồ.)* |
| Linh | <ruby>継続点<rt>けいぞくてん</rt></ruby>:<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>推測<rt>すいそく</rt></ruby>せず<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>。<ruby>記録<rt>きろく</rt></ruby><ruby>類<rt>るい</rt></ruby><ruby>事前<rt>じぜん</rt></ruby><ruby>整理<rt>せいり</rt></ruby>。<ruby>来賓<rt>らいひん</rt></ruby><ruby>対応<rt>たいおう</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>名刺<rt>めいし</rt></ruby><ruby>交換<rt>こうかん</rt></ruby><ruby>所作<rt>しょさ</rt></ruby>。<br>*(Điểm duy trì: không đoán, luôn xác nhận. Sắp xếp sổ trước. Nghi thức trao danh thiếp khi tiếp khách.)* |
| Linh | <ruby>今日<rt>きょう</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>:「<ruby>恩送<rt>おんおく</rt></ruby>り」。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>沙織<rt>さおり</rt></ruby>さんから<ruby>受<rt>う</rt></ruby>けた<ruby>役<rt>やく</rt></ruby>をフオンに<ruby>渡<rt>わた</rt></ruby>す。<br>*(Từ của hôm nay: "on-okuri". 5 năm sau giao vai nhận từ Saori cho Hương.)* |
| Linh | <ruby>明日<rt>あした</rt></ruby><ruby>名刺<rt>めいし</rt></ruby><ruby>発注<rt>はっちゅう</rt></ruby>:「<ruby>山本<rt>やまもと</rt></ruby><ruby>農園<rt>のうえん</rt></ruby> JAS<ruby>監査<rt>かんさ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby><ruby>補佐<rt>ほさ</rt></ruby> グエン・ティ・リン」。<br>*(Mai đặt danh thiếp: "Yamamoto-nōen JAS phụ tá thanh tra Nguyễn Thị Linh".)* |

---

## Đọng lại chương 4

Linh dẫn thanh tra JAS lần đầu thay Saori-san đột xuất nhập viện và **thành công lấy 継続認証** với chỉ 1 là 軽微 是正. Học pipeline đón auditor: **出迎え + 名刺交換 (両手 + 頂戴いたします) + 概要説明 3段階 + 書類確認 + 圃場+保管庫巡回 + 講評 + 是正処置 + 見送り**. Học các mẫu câu cốt lõi: **本日、〜の代理として〜させていただきます / 〜様、お待ちしておりました / 申し訳ございません、私の記憶が曖昧なので〜に確認させていただいてもよろしいでしょうか / 推測せず確認する姿勢 / 身に余るお言葉です**. Học khái niệm **栽培管理記録 / 肥料使用記録 / 農薬使用記録 / 出荷記録 / 緩衝帯 / 是正処置**. Học bài học vàng: **不明点を推測せず確認する姿勢が評価される** — không đoán bừa mới là chuyên nghiệp. Chốt mạch **恩送り** đời thứ hai: 親方 → Saori → Linh → Hương.

> Từ vựng & mẫu câu chương này: 監査・代理・窓口・名刺交換・頂戴いたします・栽培管理記録・肥料使用記録・農薬使用記録・出荷記録・JAS有機許可リスト・収穫前使用禁止期間・緩衝帯・隣接農場・覚書・圃場・農薬保管庫・取扱記録簿・是正処置・軽微・継続認証・標識復旧・講評・身に余るお言葉・推測せず確認する姿勢・恩送り・〜の代理として・〜の記憶が曖昧なので・〜に確認させていただいてもよろしいでしょうか

---

## Bí quyết chương

- **Nghi thức 名刺交換**: nhận hai tay, đọc tên + chức danh thành tiếng, để trên bàn phía bên trái thanh tra viên suốt buổi họp. Khi chưa có thiếp: xin lỗi thẳng thắn, viết tay liên hệ.
- **3-phase thanh tra script**: 書類確認 (90 phút) → 圃場+保管庫 (90 phút) → 講評+是正 (60 phút). Khi mở đầu trình bày timeline rõ ràng — chiếm thiện cảm.
- **Khi không nhớ**: KHÔNG đoán. Câu chuẩn: "<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>記憶<rt>きおく</rt></ruby>が<ruby>曖昧<rt>あいまい</rt></ruby>なので〜に<ruby>確認<rt>かくにん</rt></ruby>させていただいてもよろしいでしょうか?" Thanh tra viên sẽ ĐÁNH GIÁ CAO.
- **Sổ JAS bắt buộc 4 loại**: 栽培管理 / 肥料使用 / 農薬使用 / 出荷. Mỗi dòng phải có 5W: 日付・品目・量・使用者・目的.
- **Khoảng cấm trước thu hoạch**: tuỳ thuốc, ghi rõ trên nhãn. Thanh tra sẽ check ngày phun ↔ ngày thu hoạch.
- **是正処置 nhẹ**: cơ hội để show năng lực — xử lý nhanh hơn deadline + nộp ảnh trước hạn = ấn tượng tốt cho năm sau.
- **Tiễn thanh tra viên**: ra tận cổng, cúi đến khi xe khuất tầm mắt. Không quay lưng quá sớm.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 監査 | かんさ | GIÁM TRA | thanh tra, thanh tra |
| 代理 | だいり | ĐẠI LÝ | thay mặt |
| 窓口 | まどぐち | SONG KHẨU | đầu mối, người tiếp đón |
| 適任 | てきにん | THÍCH NHIỆM | phù hợp với nhiệm vụ |
| 面会時間 | めんかいじかん | DIỆN HỘI THỜI GIAN | giờ thăm (bệnh viện) |
| 記録係 | きろくがかり | KÝ LỤC HỆ | thư ký ghi chép |
| 栽培管理記録 | さいばいかんりきろく | TÀI BỒI QUẢN LÝ KÝ LỤC | sổ quản lý canh tác |
| 肥料使用記録 | ひりょうしようきろく | PHÌ LIỆU SỬ DỤNG KÝ LỤC | sổ dùng phân |
| 農薬使用記録 | のうやくしようきろく | NÔNG DƯỢC SỬ DỤNG KÝ LỤC | sổ dùng thuốc trừ sâu |
| 出荷記録 | しゅっかきろく | XUẤT HÀ KÝ LỤC | sổ xuất hàng |
| JAS有機許可リスト | ジャスゆうききょかりすと | — HỮU CƠ HỨA KHẢ — | danh sách thuốc cho phép JAS hữu cơ |
| 収穫前使用禁止期間 | しゅうかくまえしようきんしきかん | THU HOẠCH TIỀN SỬ DỤNG CẤM CHỈ KỲ GIAN | khoảng cấm trước thu hoạch |
| 認証機構 | にんしょうきこう | NHẬN CHỨNG CƠ CẤU | tổ chức chứng nhận |
| 名刺 | めいし | DANH THỊ | danh thiếp |
| 頂戴 | ちょうだい | ĐỈNH ĐÃI | (kiêm nhường) nhận, xin |
| 案内 | あんない | ÁN NỘI | dẫn, hướng dẫn |
| 概要 | がいよう | KHÁI YẾU | tổng quan |
| 圃場 | ほじょう | PHỐ TRƯỜNG | ruộng, đất canh tác |
| 農薬保管庫 | のうやくほかんこ | NÔNG DƯỢC BẢO QUẢN KHỐ | kho thuốc |
| 取扱記録簿 | とりあつかいきろくぼ | THỦ TRỪ KÝ LỤC BẠ | sổ giao nhận |
| 緩衝帯 | かんしょうたい | HOÃN XUNG ĐỚI | vùng đệm |
| 慣行農場 | かんこうのうじょう | QUÁN HÀNH NÔNG TRƯỜNG | trại canh tác quy ước (không hữu cơ) |
| 隣接 | りんせつ | LÂN TIẾP | liền kề |
| 飛散農薬 | ひさんのうやく | PHI TÁN NÔNG DƯỢC | thuốc phát tán |
| 覚書 | おぼえがき | GIÁC THƯ | giấy thoả thuận, biên bản ghi nhớ |
| 図面 | ずめん | ĐỒ DIỆN | bản đồ, bản vẽ |
| 製品名 | せいひんめい | CHẾ PHẨM DANH | tên sản phẩm |
| 有効成分 | ゆうこうせいぶん | HỮU HIỆU THÀNH PHÂN | thành phần chính |
| BT剤 | ビーティーざい | — TỄ | thuốc BT (Bacillus thuringiensis) |
| 顆粒水和剤 | かりゅうすいわざい | KHÔ LẠP THUỶ HOÀ TỄ | hạt tan trong nước |
| 銅水和剤 | どうすいわざい | ĐỒNG THUỶ HOÀ TỄ | thuốc đồng-nước |
| 木酢液 | もくさくえき | MỘC TÔ DỊCH | giấm gỗ |
| 青虫 | あおむし | THANH TRÙNG | sâu xanh |
| 散布 | さんぷ | TÁN BỐ | phun |
| 緑肥作物 | りょくひさくもつ | LỤC PHÌ TÁC VẬT | cây xanh phân |
| 輪作 | りんさく | LUÂN TÁC | luân canh |
| 自家製堆肥 | じかせいたいひ | TỰ GIA CHẾ PHÌ | phân ủ tự làm |
| 牛糞 | ぎゅうふん | NGƯU PHẦN | phân bò |
| 残渣 | ざんさ | TÀN TRA | xác cây, phụ phẩm |
| 標識 | ひょうしき | TIÊU CHÍ | biển báo |
| 復旧 | ふっきゅう | PHỤC CỰU | phục hồi |
| 是正処置 | ぜせいしょち | THỊ CHÍNH XỬ TRÍ | corrective action |
| 軽微 | けいび | KHINH VI | nhẹ, không nghiêm trọng |
| 期限 | きげん | KỲ HẠN | hạn |
| 講評 | こうひょう | GIẢNG BÌNH | nhận xét tổng |
| 継続認証 | けいぞくにんしょう | KẾ TỤC NHẬN CHỨNG | tiếp tục chứng nhận |
| 推測 | すいそく | SUY TRẮC | đoán, suy đoán |
| 姿勢 | しせい | TƯ THẾ | thái độ |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 身に余る | みにあまる | THÂN DƯ | quá đáng (so với mình) |
| 来賓 | らいひん | LAI BÂN | khách đến |
| 所作 | しょさ | SỞ TÁC | nghi thức, cử chỉ |
| 即答 | そくとう | TỨC ĐÁP | trả lời ngay |
| 暗記 | あんき | ÁM KÝ | thuộc lòng |
| 発注 | はっちゅう | PHÁT CHÚ | đặt hàng |
| 担当補佐 | たんとうほさ | ĐẢM ĐƯƠNG PHỤ TÁ | phụ tá phụ trách |
| 手術 | しゅじゅつ | THỦ THUẬT | phẫu thuật |
| 命に別状 | いのちにべつじょう | MỆNH BIỆT TRẠNG | nguy hiểm tính mạng |
| お加減 | おかげん | ÂM GIA GIẢM | (lễ phép) tình trạng sức khoẻ |
| 見送り | みおくり | KIẾN TỐNG | tiễn |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000005, 800000042, NULL, 'markdown_book', 'T5. 親方 đề nghị Linh ở lại SSW1 + quản lý', '# Sách thực tập sinh nông nghiệp · T5. 親方 đề nghị Linh ở lại SSW1 + quản lý

> **Mục tiêu nhân vật:** Linh (24 tuổi, Đồng Tháp, N3+, năm 3 tại nông trại rau Ibaraki). Học mẫu hội thoại tiếng Nhật khi nhận đề nghị thăng tiến: nghe đề nghị chính thức của 親方, hỏi điều kiện hợp đồng SSW1 (給与・住宅・有給・社会保険), trả lời chừng mực chưa cam kết ngay, thương lượng vai trò リーダー, xin thời gian suy nghĩ và hỏi ý gia đình, báo cáo với 監理団体, từ chối/đồng ý lịch sự bằng keigo công sở.

---

## Bối cảnh

Tháng 8 năm 2027. Linh đã ở Ibaraki năm thứ 3, chuẩn bị hết hợp đồng TTS vào tháng 12. Linh có N3, đã dẫn dắt nhóm 6 người làm rau JAS hữu cơ suốt mùa xuân. Sáng nay 親方 Yamamoto gọi vào văn phòng nông trại Yamamoto-nōen — một căn nhà gỗ cũ kế nhà kính. Có cả vợ 親方 (奥さん) và 農場長 Watanabe. Chương này tập trung vào hội thoại nhận đề nghị, hỏi điều kiện, suy nghĩ và phản hồi.

> ⚠️ Chú thích: Quy định 特定技能1号 (SSW1) ngành 農業 áp dụng theo Bộ Nông Lâm Thủy sản Nhật Bản tại thời điểm 2027. Người học nên kiểm tra quy định hiện hành khi cần.

---

## Tình huống 1 — Văn phòng nông trại · 9:00, 親方 mời ngồi và vào đề

*Bàn gỗ, ấm trà mạch nha. 親方 Yamamoto đặt một tập hồ sơ trước mặt Linh.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンちゃん、<ruby>朝<rt>あさ</rt></ruby>から<ruby>呼<rt>よ</rt></ruby>んでごめんね。お<ruby>茶<rt>ちゃ</rt></ruby>どうぞ。<ruby>今日<rt>きょう</rt></ruby>は<ruby>大事<rt>だいじ</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>があるんだ。<br>*(Linh, xin lỗi vì gọi em từ sáng. Uống trà đi. Hôm nay tôi có chuyện quan trọng.)* |
| Linh | はい、いただきます。なんでしょうか?<br>*(Vâng, em xin. Là chuyện gì ạ?)* |
| Yamamoto | <ruby>単刀直入<rt>たんとうちょくにゅう</rt></ruby>に<ruby>言<rt>い</rt></ruby>うね。<ruby>実習生<rt>じっしゅうせい</rt></ruby>の<ruby>契約<rt>けいやく</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったあとも、うちで<ruby>働<rt>はたら</rt></ruby>いてくれないかな。<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>で。<br>*(Tôi nói thẳng nhé. Sau khi hợp đồng thực tập sinh kết thúc, em có thể tiếp tục làm ở chỗ chúng tôi không? Với tư cách 特定技能1号.)* |
| Linh | え...<ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Ơ... thật ạ?)* |
| Yamamoto | <ruby>本気<rt>ほんき</rt></ruby>だよ。リンちゃんの<ruby>働<rt>はたら</rt></ruby>きぶり、ずっと<ruby>見<rt>み</rt></ruby>てきた。<br>*(Tôi nghiêm túc. Cách em làm việc, tôi đã quan sát suốt.)* |

---

## Tình huống 2 — Văn phòng nông trại · 9:10, 親方 nói thêm về vai trò リーダー

| Vai | Lời thoại |
|---|---|
| Yamamoto | しかも、ただの<ruby>作業員<rt>さぎょういん</rt></ruby>じゃなくて、<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>スタッフ<rt>すたっふ</rt></ruby>の<ruby>リーダー<rt>りーだー</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいんだ。<br>*(Hơn nữa, không chỉ là công nhân thường, tôi muốn nhờ em làm リーダー của nhân viên người nước ngoài.)* |
| Linh | リーダー、ですか?<ruby>私<rt>わたし</rt></ruby>に<ruby>務<rt>つと</rt></ruby>まるでしょうか。<br>*(リーダー ạ? Em đảm đương được không ạ?)* |
| Watanabe | リンさんはもう<ruby>春<rt>はる</rt></ruby>から<ruby>実質<rt>じっしつ</rt></ruby>リーダーですよ。<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>り、<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby>——<ruby>全部<rt>ぜんぶ</rt></ruby>できています。<br>*(Cô Linh từ mùa xuân thực tế đã là リーダー rồi. Sắp xếp thu hoạch, hướng dẫn đàn em, quản lý hồ sơ — đều làm được.)* |
| Yamamoto | だから<ruby>正式<rt>せいしき</rt></ruby>に<ruby>役職<rt>やくしょく</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けたい。<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>当然<rt>とうぜん</rt></ruby><ruby>上<rt>あ</rt></ruby>げるよ。<br>*(Vì vậy tôi muốn chính thức trao chức danh. Lương đương nhiên cũng tăng.)* |
| Linh | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>整理<rt>せいり</rt></ruby>させてください。<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか?<br>*(Cảm ơn ông. Cho em sắp xếp suy nghĩ một chút. Em xin phép hỏi điều kiện được không ạ?)* |

---

## Tình huống 3 — Văn phòng nông trại · 9:20, hỏi điều kiện giàc

| Vai | Lời thoại |
|---|---|
| Linh | まず、<ruby>給与<rt>きゅうよ</rt></ruby>はいくらになりますか?<br>*(Trước tiên, lương sẽ là bao nhiêu ạ?)* |
| Yamamoto | <ruby>基本給<rt>きほんきゅう</rt></ruby>が<ruby>月<rt>つき</rt></ruby>22<ruby>万円<rt>まんえん</rt></ruby>、リーダー<ruby>手当<rt>てあて</rt></ruby>が2<ruby>万円<rt>まんえん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby>24<ruby>万円<rt>まんえん</rt></ruby>。<ruby>残業<rt>ざんぎょう</rt></ruby>は<ruby>別途<rt>べっと</rt></ruby><ruby>支給<rt>しきゅう</rt></ruby>。<br>*(Lương cơ bản 22 vạn yên/tháng, phụ cấp リーダー 2 vạn, tổng 24 vạn. Tăng ca chi trả riêng.)* |
| Linh | <ruby>賞与<rt>しょうよ</rt></ruby>はありますか?<br>*(Có thưởng không ạ?)* |
| Yamamoto | <ruby>年<rt>ねん</rt></ruby>2<ruby>回<rt>かい</rt></ruby>、<ruby>合<rt>あ</rt></ruby>わせて<ruby>基本給<rt>きほんきゅう</rt></ruby>の2.5ヶ<ruby>月分<rt>げつぶん</rt></ruby>を<ruby>目安<rt>めやす</rt></ruby>に。<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>出来<rt>でき</rt></ruby>で<ruby>変動<rt>へんどう</rt></ruby>するけどね。<br>*(Hai lần/năm, tổng khoảng 2.5 tháng lương cơ bản. Tùy theo mùa thu hoạch sẽ biến động.)* |
| Linh | <ruby>住宅<rt>じゅうたく</rt></ruby>はどうなりますか?<ruby>今<rt>いま</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>に<ruby>住<rt>す</rt></ruby>めますか?<br>*(Nhà ở thế nào ạ? Em có thể tiếp tục ở ký túc bây giờ không?)* |
| 奥さん | もちろん。<ruby>家賃<rt>やちん</rt></ruby>は<ruby>月<rt>つき</rt></ruby>1<ruby>万<rt>まん</rt></ruby>5<ruby>千円<rt>せんえん</rt></ruby>のままでいいよ。<ruby>水道光熱費<rt>すいどうこうねつひ</rt></ruby>は<ruby>実費<rt>じっぴ</rt></ruby>でね。<br>*(Tất nhiên. Tiền thuê vẫn 1 vạn 5 nghìn yên/tháng. Điện nước thì tính theo thực tế.)* |

---

## Tình huống 4 — Văn phòng nông trại · 9:30, hỏi tiếp 有給・社会保険

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>と<ruby>社会保険<rt>しゃかいほけん</rt></ruby>はどうなりますか?<br>*(Nghỉ phép có lương và bảo hiểm xã hội thế nào ạ?)* |
| Watanabe | <ruby>法律<rt>ほうりつ</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>年<rt>ねん</rt></ruby>10<ruby>日<rt>か</rt></ruby>からスタートで、<ruby>勤続<rt>きんぞく</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>で<ruby>増<rt>ふ</rt></ruby>えます。<ruby>健康保険<rt>けんこうほけん</rt></ruby>、<ruby>厚生年金<rt>こうせいねんきん</rt></ruby>、<ruby>雇用保険<rt>こようほけん</rt></ruby>、<ruby>労災<rt>ろうさい</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>加入<rt>かにゅう</rt></ruby>します。<br>*(Theo luật, bắt đầu 10 ngày/năm, tăng theo thâm niên. Bảo hiểm y tế, lương hưu, thất nghiệp, tai nạn lao động — đều tham gia hết.)* |
| Linh | <ruby>一時帰国<rt>いちじきこく</rt></ruby>はできますか?ベトナム<ruby>正月<rt>しょうがつ</rt></ruby>に<ruby>家族<rt>かぞく</rt></ruby>に<ruby>会<rt>あ</rt></ruby>いたいです。<br>*(Em có thể về nước tạm không? Em muốn gặp gia đình dịp Tết Việt Nam.)* |
| Yamamoto | もちろんOKだよ。<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>閑散期<rt>かんさんき</rt></ruby>なら2<ruby>週間<rt>しゅうかん</rt></ruby>くらい<ruby>連続<rt>れんぞく</rt></ruby>で<ruby>取<rt>と</rt></ruby>れる。<br>*(Đương nhiên OK. Mùa thấp điểm thu hoạch có thể nghỉ liền 2 tuần.)* |
| Linh | <ruby>契約<rt>けいやく</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>何年<rt>なんねん</rt></ruby>ですか?<br>*(Thời hạn hợp đồng là mấy năm ạ?)* |
| Yamamoto | <ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>は<ruby>最長<rt>さいちょう</rt></ruby>5<ruby>年<rt>ねん</rt></ruby>。まずは1<ruby>年<rt>ねん</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>で、<ruby>毎年<rt>まいとし</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>する<ruby>形<rt>かたち</rt></ruby>でどうかな。<br>*(SSW1 tối đa 5 năm. Đầu tiên hợp đồng 1 năm, mỗi năm gia hạn, em thấy thế nào?)* |

---

## Tình huống 5 — Văn phòng nông trại · 9:40, Linh xin thời gian suy nghĩ

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>条件<rt>じょうけん</rt></ruby>はとても<ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>いです。でも、<ruby>家族<rt>かぞく</rt></ruby>とも<ruby>相談<rt>そうだん</rt></ruby>させてください。<ruby>少<rt>すこ</rt></ruby>し<ruby>考<rt>かんが</rt></ruby>える<ruby>時間<rt>じかん</rt></ruby>をいただけますか?<br>*(Điều kiện rất tốt ạ. Nhưng em xin được bàn với gia đình. Cho em một chút thời gian suy nghĩ được không ạ?)* |
| Yamamoto | もちろんだよ。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>決断<rt>けつだん</rt></ruby>だから、ゆっくり<ruby>考<rt>かんが</rt></ruby>えて。<br>*(Đương nhiên. Quyết định quan trọng mà, suy nghĩ kỹ.)* |
| Linh | 2<ruby>週間<rt>しゅうかん</rt></ruby>ほどいただいてもよろしいでしょうか?<br>*(Em xin 2 tuần được không ạ?)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。9<ruby>月<rt>がつ</rt></ruby>の<ruby>初<rt>はじ</rt></ruby>めまでに<ruby>返事<rt>へんじ</rt></ruby>をくれれば、<ruby>書類<rt>しょるい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>が<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>う。<br>*(Được. Trả lời tôi trước đầu tháng 9 thì kịp chuẩn bị giấy tờ.)* |
| Linh | はい、9<ruby>月<rt>がつ</rt></ruby>1<ruby>日<rt>にち</rt></ruby>までに<ruby>必<rt>かなら</rt></ruby>ずお<ruby>返事<rt>へんじ</rt></ruby>します。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng, trước 1/9 em chắc chắn sẽ trả lời. Em rất cảm ơn ông.)* |

---

## Tình huống 6 — Sau văn phòng · 10:00, ngoài hành lang gặp Watanabe

| Vai | Lời thoại |
|---|---|
| Watanabe | リンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<ruby>急<rt>きゅう</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>でびっくりしたでしょう。<br>*(Cô Linh, ổn không? Chuyện đột ngột chắc em ngạc nhiên lắm.)* |
| Linh | はい、<ruby>正直<rt>しょうじき</rt></ruby><ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>です。<br>*(Vâng, thật ra em đầu óc trống rỗng.)* |
| Watanabe | <ruby>親方<rt>おやかた</rt></ruby>は<ruby>本気<rt>ほんき</rt></ruby>だよ。<ruby>跡継<rt>あとつ</rt></ruby>ぎの<ruby>息子<rt>むすこ</rt></ruby>さんが<ruby>東京<rt>とうきょう</rt></ruby>で<ruby>会社員<rt>かいしゃいん</rt></ruby>でしょう?<ruby>農場<rt>のうじょう</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>える<ruby>人<rt>ひと</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なんだ。<br>*(親方 nghiêm túc đấy. Con trai kế nghiệp là nhân viên công ty ở Tokyo phải không? Cần người chống lưng nông trại.)* |
| Linh | ワタナベさんはどう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Bác Watanabe nghĩ sao ạ?)* |
| Watanabe | <ruby>個人<rt>こじん</rt></ruby><ruby>的<rt>てき</rt></ruby>には<ruby>残<rt>のこ</rt></ruby>ってほしい。でも、リンさんの<ruby>人生<rt>じんせい</rt></ruby>だから、よく<ruby>考<rt>かんが</rt></ruby>えて。ベトナムでやりたいことがあるなら<ruby>帰<rt>かえ</rt></ruby>った<ruby>方<rt>ほう</rt></ruby>がいい。<br>*(Riêng tôi muốn em ở lại. Nhưng đời em mà, em suy nghĩ kỹ. Nếu ở Việt Nam có việc muốn làm thì về cũng tốt.)* |
| Linh | ありがとうございます。<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>意見<rt>いけん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn bác. Em mừng vì lời khuyên thẳng thắn.)* |

---

## Tình huống 7 — Nhà kính cà chua · 14:00, kể với Wati (Indonesia)

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、<ruby>今朝<rt>けさ</rt></ruby><ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>呼<rt>よ</rt></ruby>ばれてたよね?<ruby>何<rt>なに</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>?<br>*(Linh, sáng nay chị bị gọi lên văn phòng đúng không? Chuyện gì vậy?)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>に「<ruby>特定技能<rt>とくていぎのう</rt></ruby>でリーダーやらないか」って<ruby>言<rt>い</rt></ruby>われた。<br>*(親方 hỏi "có làm リーダー với 特定技能 không".)* |
| Wati | えー!すごい!<ruby>受<rt>う</rt></ruby>けるの?<br>*(Ồ! Tuyệt vời! Chị nhận không?)* |
| Linh | まだ<ruby>分<rt>わ</rt></ruby>からない。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>する。<br>*(Chưa biết. Bàn với gia đình đã.)* |
| Wati | もし<ruby>受<rt>う</rt></ruby>けたら、<ruby>私<rt>わたし</rt></ruby>も<ruby>嬉<rt>うれ</rt></ruby>しい。リンさんがいると<ruby>安心<rt>あんしん</rt></ruby>。インドネシア<ruby>語<rt>ご</rt></ruby>はできないけど、<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>分<rt>わ</rt></ruby>からないとき<ruby>助<rt>たす</rt></ruby>けてくれるから。<br>*(Nếu chị nhận, em cũng mừng. Có chị là yên tâm. Chị không biết tiếng Indonesia nhưng khi em không hiểu tiếng Nhật chị đều giúp.)* |
| Linh | ありがとう。<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>私<rt>わたし</rt></ruby>もWatiちゃんに<ruby>助<rt>たす</rt></ruby>けられてるよ。<br>*(Cảm ơn. Ngược lại chị cũng được Wati giúp đỡ.)* |

---

## Tình huống 8 — Ký túc xá · 19:30, gọi điện báo cáo 監理団体 (Trung tâm quản lý)

| Vai | Lời thoại |
|---|---|
| 監理員 | はい、<ruby>北関東協同組合<rt>きたかんとうきょうどうくみあい</rt></ruby>です。<br>*(Vâng, Hợp tác xã Bắc Kanto đây.)* |
| Linh | <ruby>山本<rt>やまもと</rt></ruby>ファームのグエン・リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>担当<rt>たんとう</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby>さんはいらっしゃいますか?<br>*(Em là Nguyễn Linh ở Yamamoto-nōen. Cô Kimura phụ trách có ở đó không ạ?)* |
| 木村 | はい、<ruby>木村<rt>きむら</rt></ruby>です。リンさん、どうしましたか?<br>*(Vâng, Kimura đây. Linh, có chuyện gì vậy?)* |
| Linh | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>実<rt>じつ</rt></ruby>は、<ruby>親方<rt>おやかた</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>でリーダーとして<ruby>残<rt>のこ</rt></ruby>らないかという<ruby>提案<rt>ていあん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けました。<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Cảm ơn cô đã quan tâm. Thực ra, em vừa nhận đề nghị từ 親方 là ở lại làm リーダー với tư cách 特定技能1号. Em xin báo cáo.)* |
| 木村 | おめでとうございます!<ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>事前<rt>じぜん</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>がありました。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>納得<rt>なっとく</rt></ruby>できるものでしたか?<br>*(Chúc mừng em! Ông Yamamoto đã trao đổi trước với chúng tôi. Điều kiện em thấy chấp nhận được không?)* |
| Linh | はい、<ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>保険<rt>ほけん</rt></ruby>も<ruby>有給<rt>ゆうきゅう</rt></ruby>もしっかりしています。でも<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>してから<ruby>決<rt>き</rt></ruby>めます。<br>*(Vâng, lương, bảo hiểm, nghỉ phép đều rõ ràng. Nhưng em sẽ quyết sau khi bàn với gia đình.)* |
| 木村 | それがいいです。<ruby>受<rt>う</rt></ruby>けるなら<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>き、ビザの<ruby>変更<rt>へんこう</rt></ruby>などサポートします。<br>*(Vậy là tốt. Nếu nhận, chúng tôi sẽ hỗ trợ thủ tục cơ quan đăng ký hỗ trợ, đổi visa v.v.)* |

---

## Tình huống 9 — Ký túc xá · 21:00, gọi điện về Việt Nam cho ba mẹ

> Cảnh tiếng Việt — gọi về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Mẹ | Alo, Linh hả con? Có chuyện gì mà gọi giờ này? |
| Linh | Mẹ ơi, con có chuyện lớn muốn bàn với ba mẹ. Mẹ kêu ba ra điện thoại với. |
| Mẹ | Trời, gì mà nghiêm trọng vậy? Ba ơi, Linh gọi! |
| Ba | Ờ, ba đây. Con khỏe không? |
| Linh | Con khỏe. Sáng nay 親方 — ông chủ nông trại — đề nghị con ở lại Nhật thêm 5 năm theo diện 特定技能, làm リーダー quản lý anh em ngoại quốc. Lương 24 vạn yên một tháng, có thưởng, có nghỉ phép, có bảo hiểm. |
| Mẹ | Trời ơi, vậy là tốt rồi. Mà... con không về thiệt hả? |
| Linh | Con cũng đang phân vân mẹ. Bên này thì chắc chắn lương cao, học thêm được nhiều. Mà 5 năm xa nhà nữa thì lâu. |
| Ba | Ba thấy vầy. Tiền không phải tất cả, nhưng con đang còn trẻ. Năm năm bên đó tích lũy được, về mở vườn rau kiểu Nhật ở Đồng Tháp cũng được mà. Quan trọng là con muốn gì. |
| Mẹ | Còn chuyện chồng con thì sao? Hai mươi bốn tuổi rồi đó nha. |
| Linh | Mẹ ơi, chuyện đó con tính sau. Bây giờ con muốn nghĩ kỹ nghề nghiệp đã. |
| Ba | Ba ủng hộ. Con suy nghĩ đi rồi cho ba mẹ biết. Đừng vội. |
| Linh | Dạ, con cảm ơn ba mẹ. Hai tuần nữa con trả lời 親方. |

---

## Tình huống 10 — Nhà kính cà chua · Sáng hôm sau, hỏi ý 農場長 Watanabe lần hai

| Vai | Lời thoại |
|---|---|
| Linh | おはようございます。<ruby>昨日<rt>きのう</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Chào buổi sáng ạ. Chuyện hôm qua, cho em xác nhận một điều ạ.)* |
| Watanabe | どうぞ。<br>*(Cứ hỏi.)* |
| Linh | リーダー<ruby>業務<rt>ぎょうむ</rt></ruby>って、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>をしますか?<br>*(Công việc リーダー cụ thể làm gì ạ?)* |
| Watanabe | <ruby>毎日<rt>まいにち</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby><ruby>割<rt>わ</rt></ruby>り<ruby>当<rt>あ</rt></ruby>て、<ruby>新人<rt>しんじん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>、<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>記録<rt>きろく</rt></ruby>の<ruby>取<rt>と</rt></ruby>りまとめ、JAS<ruby>監査<rt>かんさ</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>サポート、<ruby>出荷<rt>しゅっか</rt></ruby>の<ruby>仕分<rt>しわ</rt></ruby>けチェック。<ruby>朝<rt>あさ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>司会<rt>しかい</rt></ruby>してね。<br>*(Họp sáng phân công, hướng dẫn người mới, tổng hợp hồ sơ thu hoạch, hỗ trợ giấy tờ kiểm tra JAS, kiểm tra phân loại xuất hàng. Họp sáng em chủ trì bằng tiếng Nhật.)* |
| Linh | <ruby>朝礼<rt>ちょうれい</rt></ruby>の<ruby>司会<rt>しかい</rt></ruby>...ちょっと<ruby>緊張<rt>きんちょう</rt></ruby>しますね。<br>*(Chủ trì họp sáng... hơi căng thẳng đây.)* |
| Watanabe | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>で<ruby>補佐<rt>ほさ</rt></ruby>する。1ヶ<ruby>月<rt>げつ</rt></ruby>くらいで<ruby>慣<rt>な</rt></ruby>れるよ。<br>*(Không sao. Đầu tiên tôi đứng bên hỗ trợ. Khoảng 1 tháng sẽ quen.)* |

---

## Tình huống 11 — Quán izakaya gần ga · Tối, hỏi sempai Filipino Carlo

| Vai | Lời thoại |
|---|---|
| Linh | Carloさん、<ruby>相談<rt>そうだん</rt></ruby>があります。<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えた<ruby>経験<rt>けいけん</rt></ruby>、どうでしたか?<br>*(Anh Carlo, em có chuyện muốn hỏi. Kinh nghiệm chuyển sang 特定技能 của anh thế nào?)* |
| Carlo | あー、<ruby>俺<rt>おれ</rt></ruby>は2<ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えた。<ruby>給料<rt>きゅうりょう</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がるし、<ruby>転職<rt>てんしょく</rt></ruby>もできる。<ruby>家族<rt>かぞく</rt></ruby>も<ruby>呼<rt>よ</rt></ruby>べる。<br>*(À, anh chuyển 2 năm trước. Lương tăng, được nhảy việc. Đón gia đình sang được.)* |
| Linh | <ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べる?でも<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ができないと<ruby>聞<rt>き</rt></ruby>きました。<br>*(Đón gia đình ạ? Nhưng em nghe nói 特定技能1号 không được bảo lãnh gia đình.)* |
| Carlo | あ、そうだった。1<ruby>号<rt>ごう</rt></ruby>はダメ、2<ruby>号<rt>ごう</rt></ruby>になれば<ruby>呼<rt>よ</rt></ruby>べる。<ruby>俺<rt>おれ</rt></ruby>は<ruby>今<rt>いま</rt></ruby>2<ruby>号<rt>ごう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>してる。<br>*(À, đúng rồi. 1号 thì không, lên 2号 mới đón được. Anh đang nhắm 2号.)* |
| Linh | 2<ruby>号<rt>ごう</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(2号 khó không ạ?)* |
| Carlo | <ruby>農業<rt>のうぎょう</rt></ruby>の2<ruby>号<rt>ごう</rt></ruby>は<ruby>実務<rt>じつむ</rt></ruby>3<ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>+<ruby>試験<rt>しけん</rt></ruby>。リンさんなら5<ruby>年後<rt>ねんご</rt></ruby>には<ruby>狙<rt>ねら</rt></ruby>えるよ。リーダー<ruby>経験<rt>けいけん</rt></ruby>もあるし。<br>*(2号 nông nghiệp cần ≥3 năm thực tế + thi. Em với kinh nghiệm リーダー thì 5 năm sau có thể nhắm tới.)* |
| Linh | なるほど。<ruby>長期<rt>ちょうき</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えるべきですね。<br>*(Vậy à. Phải nghĩ dài hạn ạ.)* |

---

## Tình huống 12 — Ký túc xá · Đêm, viết notebook so sánh option

*Linh tự viết trong sổ tay, KHÔNG dialog — đoạn này chuyển sang Wati hỏi sang.*

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、まだ<ruby>起<rt>お</rt></ruby>きてるの?<br>*(Chị Linh, còn thức à?)* |
| Linh | うん、<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>してる。A: <ruby>特定技能<rt>とくていぎのう</rt></ruby>で<ruby>残<rt>のこ</rt></ruby>る。B: <ruby>帰<rt>かえ</rt></ruby>って<ruby>日本<rt>にほん</rt></ruby><ruby>企業<rt>きぎょう</rt></ruby>に<ruby>就職<rt>しゅうしょく</rt></ruby>。C: <ruby>家族<rt>かぞく</rt></ruby>の<ruby>農園<rt>のうえん</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>う。<br>*(Ờ, đang sắp xếp lựa chọn. A: ở lại 特定技能. B: về làm cho công ty Nhật ở VN. C: phụ vườn gia đình.)* |
| Wati | リンさんは<ruby>本当<rt>ほんとう</rt></ruby>は<ruby>何<rt>なに</rt></ruby>がしたいの?<br>*(Chị thực sự muốn làm gì?)* |
| Linh | ベトナムで<ruby>日本式<rt>にほんしき</rt></ruby>の<ruby>有機<rt>ゆうき</rt></ruby><ruby>農園<rt>のうえん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りたい。それには<ruby>資金<rt>しきん</rt></ruby>と<ruby>経験<rt>けいけん</rt></ruby>がもっと<ruby>必要<rt>ひつよう</rt></ruby>。<br>*(Chị muốn làm vườn hữu cơ kiểu Nhật ở Việt Nam. Cần thêm vốn và kinh nghiệm.)* |
| Wati | じゃあAでお<ruby>金<rt>かね</rt></ruby>と<ruby>経験<rt>けいけん</rt></ruby>を<ruby>貯<rt>た</rt></ruby>めて、それからCに<ruby>戻<rt>もど</rt></ruby>るのは?<br>*(Vậy A để tích vốn và kinh nghiệm, rồi quay về C thì sao?)* |
| Linh | ...そうだね。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>現実的<rt>げんじつてき</rt></ruby>かも。ありがとう、<ruby>頭<rt>あたま</rt></ruby>が<ruby>整理<rt>せいり</rt></ruby>できた。<br>*(...ờ ha. Cái đó hợp lý nhất. Cảm ơn, đầu óc sáng ra rồi.)* |

---

## Tình huống 13 — Văn phòng nông trại · 2 tuần sau, sáng 1/9, Linh trả lời

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>よろしいですか?<ruby>例<rt>れい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でお<ruby>返事<rt>へんじ</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<br>*(Ông chủ, cho em xin chút thời gian được không ạ? Em đến trả lời chuyện hôm trước.)* |
| Yamamoto | おう、<ruby>座<rt>すわ</rt></ruby>って。どう?<br>*(À, ngồi đi. Sao rồi?)* |
| Linh | <ruby>家族<rt>かぞく</rt></ruby>とよく<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>いました。<ruby>条件<rt>じょうけん</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>しました。お<ruby>受<rt>う</rt></ruby>けさせていただきたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em đã bàn kỹ với gia đình. Cũng đã xác nhận điều kiện. Em xin phép nhận lời ạ.)* |
| Yamamoto | おお!<ruby>本当<rt>ほんとう</rt></ruby>か!ありがとう!<br>*(Ồ! Thật không! Cảm ơn em!)* |
| Linh | ただ、<ruby>一<rt>ひと</rt></ruby>つだけお<ruby>願<rt>ねが</rt></ruby>いがあります。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>契約<rt>けいやく</rt></ruby>は3<ruby>年<rt>ねん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いできませんか?5<ruby>年<rt>ねん</rt></ruby>はちょっと<ruby>長<rt>なが</rt></ruby>いので、3<ruby>年後<rt>ねんご</rt></ruby>に<ruby>更新<rt>こうしん</rt></ruby>するか<ruby>判断<rt>はんだん</rt></ruby>させてください。<br>*(Chỉ có một đề nghị. Hợp đồng đầu tiên có thể là 3 năm không ạ? 5 năm hơi dài, sau 3 năm em xin được quyết có gia hạn không.)* |
| Yamamoto | もちろんOK。<ruby>毎年<rt>まいとし</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>って<ruby>言<rt>い</rt></ruby>ったから、3<ruby>年後<rt>ねんご</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きな<ruby>判断<rt>はんだん</rt></ruby>でいいよ。<br>*(Đương nhiên OK. Tôi nói gia hạn hàng năm rồi, 3 năm sau quyết lớn cũng được.)* |
| Linh | ありがとうございます。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ông. Em sẽ cố gắng hết sức.)* |

---

## Tình huống 14 — Nhà kính cà chua · Chiều cùng ngày, thông báo cả đội

| Vai | Lời thoại |
|---|---|
| Watanabe | みなさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>集<rt>あつ</rt></ruby>まってください。リンさんから<ruby>大事<rt>だいじ</rt></ruby>な<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Mọi người, tập trung lại một chút. Linh có thông báo quan trọng.)* |
| Linh | みなさん、いつもお<ruby>世話<rt>せわ</rt></ruby>になっています。<ruby>来年<rt>らいねん</rt></ruby>1<ruby>月<rt>がつ</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>として、リーダーの<ruby>役<rt>やく</rt></ruby>でこの<ruby>農場<rt>のうじょう</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>ることになりました。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, cảm ơn đã luôn quan tâm. Từ tháng 1 năm sau, em sẽ ở lại nông trại này với tư cách 特定技能1号, vai trò リーダー. Mong tiếp tục được mọi người chiếu cố.)* |
| Wati | やった!リンさん<ruby>続<rt>つづ</rt></ruby>けてくれるんだ!<br>*(Tuyệt! Chị Linh ở lại!)* |
| Carlo | おめでとう!リーダーとして<ruby>頑張<rt>がんば</rt></ruby>ろう!<br>*(Chúc mừng! Cùng cố lên với tư cách リーダー!)* |
| Linh | <ruby>未熟<rt>みじゅく</rt></ruby>ですが、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Em còn non kém, mong mọi người chiếu cố. Cùng cố gắng.)* |

---

## Tình huống 15 — Ký túc xá · Đêm, gọi báo ba mẹ kết quả

> Cảnh tiếng Việt — gọi về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Mẹ | Alo Linh, sao rồi? |
| Linh | Mẹ, con quyết rồi. Con nhận lời ở lại 3 năm. Sau đó tính tiếp. |
| Mẹ | Ba năm nữa hả... lâu quá con. |
| Linh | Con biết. Nhưng tiền lương 24 vạn yên một tháng, mỗi tháng con gửi về 12-15 vạn. Ba năm là gần 500 triệu, đủ vốn mở vườn cà chua nhà kính ở Đồng Tháp. |
| Ba | Ba mẹ ủng hộ. Quan trọng là con khỏe và làm việc tử tế. |
| Linh | Tết Tây 2028 con xin về 2 tuần ạ. 親方 nói được. |
| Mẹ | Ờ ờ, vậy là tốt. Ráng giữ gìn sức khỏe nha con. Có gì gọi liền cho mẹ. |
| Linh | Dạ con biết rồi. Cảm ơn ba mẹ đã tin con. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜ていただきたいと思います** — Em xin phép nhận lời (lịch sự cao)
- **少し考える時間をいただけますか** — Cho em chút thời gian suy nghĩ được không
- **条件を伺ってもよろしいですか** — Em xin phép hỏi điều kiện được không
- **〜だけお願いがあります** — Chỉ có một đề nghị
- **〜にお返事します** — Em sẽ trả lời (vào thời điểm…)
- **お世話になっております** — Cảm ơn đã quan tâm (mở đầu điện thoại)
- **報告します** — Em xin báo cáo
- **引き続きよろしくお願いします** — Mong tiếp tục được chiếu cố

> Từ vựng & mẫu câu chương này: 特定技能・リーダー手当・基本給・賞与・有給休暇・社会保険・厚生年金・雇用保険・労災・契約更新・登録支援機関・在留資格変更・一時帰国・閑散期・繁忙期・朝礼司会・新人指導・JAS監査・出荷仕分け・残存・跡継ぎ。

---

## Bí quyết chương

- **報連相 ngược chiều**: Khi cấp trên đề nghị thăng tiến, vẫn phải báo cáo 監理団体 — kênh quản lý chính thức của TTS.
- **〜させてください** vs **〜してもいいですか**: cùng nghĩa "cho em phép", 〜させてください khiêm tốn hơn, dùng khi xin với cấp trên.
- **少し時間をいただけますか** là cứu cánh khi cần suy nghĩ — KHÔNG nên đồng ý ngay vì có thể bất lợi điều kiện.
- **賞与** (thưởng) ở nông nghiệp Nhật biến động theo mùa thu hoạch, nên hỏi rõ "目安は何ヶ月分?" (mục tiêu mấy tháng lương).
- **特定技能1号** không bảo lãnh được gia đình, chỉ 2号 mới được — phải nói rõ với gia đình ở Việt Nam.
- Khi từ chối/đề nghị chỉnh điều kiện, dùng **〜できませんか** (phủ định nghi vấn) lịch sự hơn **〜してください**.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 単刀直入 | たんとうちょくにゅう | ĐƠN ĐAO TRỰC NHẬP | Nói thẳng vào vấn đề |
| 実習生 | じっしゅうせい | THỰC TẬP SINH | Thực tập sinh |
| 契約 | けいやく | KHẾ ƯỚC | Hợp đồng |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | Kỹ năng đặc định (SSW) |
| 本気 | ほんき | BẢN KHÍ | Nghiêm túc |
| 働きぶり | はたらきぶり | — | Cách làm việc |
| 作業員 | さぎょういん | TÁC NGHIỆP VIÊN | Công nhân |
| リーダー | りーだー | — | Trưởng nhóm |
| 実質 | じっしつ | THỰC CHẤT | Trên thực tế |
| 段取り | だんどり | ĐOẠN THỦ | Sắp xếp, trình tự |
| 後輩 | こうはい | HẬU BỐI | Đàn em |
| 指導 | しどう | CHỈ ĐẠO | Hướng dẫn |
| 管理 | かんり | QUẢN LÝ | Quản lý |
| 役職 | やくしょく | DỊCH CHỨC | Chức danh |
| 整理 | せいり | CHỈNH LÝ | Sắp xếp (tư duy) |
| 条件 | じょうけん | ĐIỀU KIỆN | Điều kiện |
| 伺う | うかがう | TỨ | Hỏi (kính ngữ) |
| 給与 | きゅうよ | CẤP DỮ | Tiền lương |
| 基本給 | きほんきゅう | CƠ BẢN CẤP | Lương cơ bản |
| 手当 | てあて | THỦ ĐƯƠNG | Phụ cấp |
| 合計 | ごうけい | HỢP KẾ | Tổng cộng |
| 残業 | ざんぎょう | TÀN NGHIỆP | Tăng ca |
| 別途 | べっと | BIỆT ĐỒ | Riêng biệt |
| 支給 | しきゅう | CHI CẤP | Chi trả |
| 賞与 | しょうよ | THƯỞNG DỮ | Thưởng |
| 目安 | めやす | MỤC AN | Mục tiêu, ước chừng |
| 変動 | へんどう | BIẾN ĐỘNG | Biến động |
| 寮 | りょう | LIÊU | Ký túc xá |
| 家賃 | やちん | GIA CHẤN | Tiền thuê nhà |
| 水道光熱費 | すいどうこうねつひ | THỦY ĐẠO QUANG NHIỆT PHÍ | Tiền điện nước |
| 実費 | じっぴ | THỰC PHÍ | Phí thực tế |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | Nghỉ phép có lương |
| 社会保険 | しゃかいほけん | XÃ HỘI BẢO HIỂM | Bảo hiểm xã hội |
| 法律 | ほうりつ | PHÁP LUẬT | Pháp luật |
| 勤続 | きんぞく | CẦN TỤC | Thâm niên |
| 健康保険 | けんこうほけん | KIỆN KHANG BẢO HIỂM | Bảo hiểm y tế |
| 厚生年金 | こうせいねんきん | HẬU SINH NIÊN KIM | Lương hưu phúc lợi |
| 雇用保険 | こようほけん | CỐ DỤNG BẢO HIỂM | Bảo hiểm thất nghiệp |
| 労災 | ろうさい | LAO TAI | Bảo hiểm tai nạn lao động |
| 加入 | かにゅう | GIA NHẬP | Tham gia |
| 一時帰国 | いちじきこく | NHẤT THỜI QUI QUỐC | Tạm về nước |
| 閑散期 | かんさんき | NHÀN TÁN KỲ | Mùa thấp điểm |
| 期間 | きかん | KỲ GIAN | Thời hạn |
| 更新 | こうしん | CẬP TÂN | Gia hạn |
| 提案 | ていあん | ĐỀ ÁN | Đề nghị |
| 納得 | なっとく | NẠP ĐẮC | Chấp nhận, thông suốt |
| 登録支援機関 | とうろくしえんきかん | ĐĂNG LỤC CHI VIỆN CƠ QUAN | Cơ quan đăng ký hỗ trợ SSW |
| 跡継ぎ | あとつぎ | TÍCH KẾ | Người kế nghiệp |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | Lựa chọn |
| 就職 | しゅうしょく | TỰU CHỨC | Đi làm, xin việc |
| 資金 | しきん | TƯ KIM | Vốn |
| 朝礼 | ちょうれい | TRIỀU LỄ | Họp đầu giờ sáng |
| 司会 | しかい | TƯ HỘI | Chủ trì |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 監査 | かんさ | GIÁM TRA | Kiểm tra, thanh tra |
| 出荷 | しゅっか | XUẤT HÀ | Xuất hàng |
| 仕分け | しわけ | SĨ PHÂN | Phân loại |
| 未熟 | みじゅく | VỊ THỤC | Còn non, chưa thuần thục |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000006, 800000042, NULL, 'markdown_book', 'T6. Xuất khẩu rau sang Singapore — Linh dịch hợp đồng', '# Sách thực tập sinh nông nghiệp · T6. Xuất khẩu rau sang Singapore — Linh dịch hợp đồng

> **Mục tiêu nhân vật:** Linh (24 tuổi, N3+, リーダー nội bộ tại Yamamoto-nōen Ibaraki). Học mẫu hội thoại tiếng Nhật trong dự án xuất khẩu rau JAS hữu cơ sang Singapore: nghe brief từ thương xã (商社), dịch điều khoản hợp đồng JP↔VN/EN, hỏi xác nhận thuật ngữ thương mại (FOB・船積・賞味期限), điều phối lịch đóng gói, báo cáo issue (品質クレーム), giao tiếp với buyer qua phiên dịch.

---

## Bối cảnh

Tháng 9 năm 2027. Yamamoto-nōen bắt đầu xuất khẩu cà chua Momotaro và rau salad hữu cơ JAS sang một chuỗi siêu thị cao cấp ở Singapore. Bên trung gian là thương xã (商社) Marubeni Foods Tokyo. Vì Linh có N3 và làm リーダー nông trại, 親方 nhờ Linh tham gia cuộc họp dịch tài liệu sang tiếng Anh giản dị/tiếng Việt cho đội (vì có sempai Carlo người Philippines biết tiếng Anh tốt). Chương này tập trung hội thoại business JP cấp N3 + thuật ngữ thương mại nông sản.

---

## Tình huống 1 — Văn phòng nông trại · 10:00, 親方 brief Linh trước cuộc họp

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンちゃん、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜日<rt>かようび</rt></ruby>に<ruby>丸紅<rt>まるべに</rt></ruby>フーズの<ruby>担当者<rt>たんとうしゃ</rt></ruby>が<ruby>来<rt>く</rt></ruby>る。シンガポール<ruby>輸出<rt>ゆしゅつ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で。<br>*(Linh, thứ Ba tuần sau người phụ trách của Marubeni Foods sẽ đến. Chuyện xuất khẩu Singapore.)* |
| Linh | はい、いよいよですね。<br>*(Vâng, rốt cuộc cũng đến lúc rồi.)* |
| Yamamoto | リーダーとして<ruby>同席<rt>どうせき</rt></ruby>してほしい。<ruby>契約書<rt>けいやくしょ</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>を<ruby>後<rt>あと</rt></ruby>でチームに<ruby>説明<rt>せつめい</rt></ruby>してもらう。<br>*(Với tư cách リーダー, em tham dự cùng. Sau đó giải thích nội dung hợp đồng cho cả đội.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>資料<rt>しりょう</rt></ruby>はありますか?<br>*(Vâng em hiểu. Có tài liệu trước không ạ?)* |
| Yamamoto | これ。<ruby>覚書<rt>おぼえがき</rt></ruby>のドラフト。<ruby>専門用語<rt>せんもんようご</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから、<ruby>分<rt>わ</rt></ruby>からないところはマーカーしておいて。<br>*(Đây. Bản nháp biên bản ghi nhớ. Nhiều thuật ngữ chuyên môn, chỗ nào không hiểu thì đánh dấu.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>んでおきます。<br>*(Vâng, em sẽ đọc kỹ.)* |

---

## Tình huống 2 — Ký túc xá · 21:00, Linh đọc draft hợp đồng, ghi list hỏi

*Linh ngồi với từ điển tiếng Nhật-Việt, mở bản draft 5 trang. Gọi Carlo sang giúp tiếng Anh.*

| Vai | Lời thoại |
|---|---|
| Linh | Carloさん、ちょっと<ruby>手伝<rt>てつだ</rt></ruby>って。「FOB」って<ruby>知<rt>し</rt></ruby>ってる?<br>*(Anh Carlo, giúp em chút. Biết "FOB" là gì không?)* |
| Carlo | あ、それ<ruby>貿易<rt>ぼうえき</rt></ruby><ruby>用語<rt>ようご</rt></ruby>。Free On Board。<ruby>売<rt>う</rt></ruby>り<ruby>手<rt>て</rt></ruby>が<ruby>船<rt>ふね</rt></ruby>に<ruby>積<rt>つ</rt></ruby>むまでが<ruby>責任<rt>せきにん</rt></ruby>。<br>*(À, đó là thuật ngữ thương mại. Free On Board. Người bán chịu trách nhiệm tới khi lên tàu.)* |
| Linh | <ruby>船積<rt>ふなづみ</rt></ruby>までってこと?その<ruby>後<rt>あと</rt></ruby>は?<br>*(Tức là tới lúc đóng tàu? Sau đó thì sao?)* |
| Carlo | その<ruby>後<rt>あと</rt></ruby>はbuyer。シンガポール<ruby>到着<rt>とうちゃく</rt></ruby>までの<ruby>運賃<rt>うんちん</rt></ruby>と<ruby>保険<rt>ほけん</rt></ruby>は<ruby>買<rt>か</rt></ruby>い<ruby>手<rt>て</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>。<br>*(Sau đó là buyer. Cước và bảo hiểm tới Singapore do người mua trả.)* |
| Linh | なるほど。それから「<ruby>賞味期限<rt>しょうみきげん</rt></ruby>」と「<ruby>消費期限<rt>しょうひきげん</rt></ruby>」の<ruby>違<rt>ちが</rt></ruby>いって<ruby>分<rt>わ</rt></ruby>かる?<br>*(Vậy à. Rồi sự khác biệt giữa 賞味期限 và 消費期限 anh biết không?)* |
| Carlo | <ruby>賞味<rt>しょうみ</rt></ruby>は「<ruby>美味<rt>おい</rt></ruby>しく<ruby>食<rt>た</rt></ruby>べられる<ruby>期限<rt>きげん</rt></ruby>」、<ruby>消費<rt>しょうひ</rt></ruby>は「<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>食<rt>た</rt></ruby>べられる<ruby>期限<rt>きげん</rt></ruby>」。トマトとサラダは<ruby>消費期限<rt>しょうひきげん</rt></ruby>かな。<br>*(賞味 là "hạn ngon", 消費 là "hạn an toàn". Cà chua và salad chắc là 消費期限.)* |

---

## Tình huống 3 — Văn phòng nông trại · Thứ Ba 14:00, cuộc họp với 丸紅 Tanaka

| Vai | Lời thoại |
|---|---|
| Tanaka | はじめまして。<ruby>丸紅<rt>まるべに</rt></ruby>フーズ<ruby>農産物<rt>のうさんぶつ</rt></ruby><ruby>部<rt>ぶ</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Xin chào lần đầu gặp. Tôi là Tanaka, bộ phận nông sản Marubeni Foods.)* |
| Yamamoto | <ruby>山本<rt>やまもと</rt></ruby>です。こちらリーダーのグエン・リンさん。ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Tôi là Yamamoto. Đây là リーダー Nguyễn Linh. Quê Việt Nam.)* |
| Linh | グエン・リンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<br>*(Tôi là Nguyễn Linh. Mong được chỉ giáo. Em xin được học hỏi.)* |
| Tanaka | こちらこそ。<ruby>早速<rt>さっそく</rt></ruby>ですが、シンガポール<ruby>側<rt>がわ</rt></ruby>のバイヤー、Fresh Mart<ruby>社<rt>しゃ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>に<ruby>発注<rt>はっちゅう</rt></ruby>が<ruby>来<rt>き</rt></ruby>ました。<br>*(Tôi cũng vậy. Vào đề luôn, bên buyer Singapore — công ty Fresh Mart — đã chính thức đặt hàng.)* |
| Yamamoto | おお、<ruby>確定<rt>かくてい</rt></ruby>ですか。<br>*(Ồ, chốt rồi sao?)* |
| Tanaka | はい。<ruby>初回<rt>しょかい</rt></ruby><ruby>出荷<rt>しゅっか</rt></ruby>はトマト<ruby>桃太郎<rt>ももたろう</rt></ruby>を1<ruby>週<rt>しゅう</rt></ruby>500<ruby>キロ<rt>きろ</rt></ruby>、ベビーリーフ<ruby>各種<rt>かくしゅ</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせて300<ruby>キロ<rt>きろ</rt></ruby>。10<ruby>月<rt>がつ</rt></ruby>から<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>木曜<rt>もくよう</rt></ruby><ruby>出荷<rt>しゅっか</rt></ruby>です。<br>*(Vâng. Đợt đầu cà chua Momotaro 500kg/tuần, các loại baby leaf tổng 300kg. Từ tháng 10, xuất mỗi thứ Năm hàng tuần.)* |

---

## Tình huống 4 — Văn phòng nông trại · Cuộc họp tiếp · điều khoản FOB

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>取引条件<rt>とりひきじょうけん</rt></ruby>はFOB<ruby>横浜港<rt>よこはまこう</rt></ruby>です。<ruby>船積<rt>ふなづみ</rt></ruby>までが<ruby>山本<rt>やまもと</rt></ruby>ファーム<ruby>側<rt>がわ</rt></ruby>、その<ruby>先<rt>さき</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby>と<ruby>船会社<rt>ふながいしゃ</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>します。<br>*(Điều kiện giao dịch là FOB cảng Yokohama. Tới đóng tàu là phía Yamamoto-nōen, sau đó công ty chúng tôi và hãng tàu lo.)* |
| Linh | すみません、<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>農場<rt>のうじょう</rt></ruby>から<ruby>横浜港<rt>よこはまこう</rt></ruby>までのトラック<ruby>輸送<rt>ゆそう</rt></ruby><ruby>費用<rt>ひよう</rt></ruby>はどちらの<ruby>負担<rt>ふたん</rt></ruby>ですか?<br>*(Xin lỗi, cho em xác nhận. Chi phí vận chuyển bằng xe tải từ nông trại đến cảng Yokohama là bên nào chịu ạ?)* |
| Tanaka | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。FOBの<ruby>定義<rt>ていぎ</rt></ruby>では<ruby>本来<rt>ほんらい</rt></ruby><ruby>売<rt>う</rt></ruby>り<ruby>手<rt>て</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>です。ですが<ruby>今回<rt>こんかい</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby>がトラックを<ruby>手配<rt>てはい</rt></ruby>して<ruby>農場<rt>のうじょう</rt></ruby>まで<ruby>取<rt>と</rt></ruby>りに<ruby>来<rt>き</rt></ruby>ます。<ruby>実質<rt>じっしつ</rt></ruby>EXW<ruby>農場渡<rt>のうじょうわた</rt></ruby>しに<ruby>近<rt>ちか</rt></ruby>い<ruby>運用<rt>うんよう</rt></ruby>です。<br>*(Câu hỏi hay. Theo định nghĩa FOB là người bán chịu. Nhưng lần này công ty chúng tôi sắp xe tải đến tận nông trại lấy. Trên thực tế gần như EXW.)* |
| Yamamoto | それは<ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>い。<ruby>契約書<rt>けいやくしょ</rt></ruby>に<ruby>明記<rt>めいき</rt></ruby>してもらえますか?<br>*(Vậy thì tốt quá. Có thể ghi rõ trong hợp đồng không?)* |
| Tanaka | もちろんです。「<ruby>輸送費<rt>ゆそうひ</rt></ruby>はバイヤー<ruby>負担<rt>ふたん</rt></ruby>」と<ruby>第<rt>だい</rt></ruby>5<ruby>条<rt>じょう</rt></ruby>に<ruby>追記<rt>ついき</rt></ruby>します。<br>*(Tất nhiên. Tôi sẽ thêm "phí vận chuyển buyer chịu" vào điều 5.)* |
| Linh | ありがとうございます。メモします。<br>*(Em cảm ơn. Em ghi lại.)* |

---

## Tình huống 5 — Văn phòng nông trại · Cuộc họp · 賞味期限 và 冷蔵チェーン

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>次<rt>つぎ</rt></ruby>に<ruby>品質<rt>ひんしつ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>です。トマトとベビーリーフは<ruby>消費期限<rt>しょうひきげん</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>収穫日<rt>しゅうかくび</rt></ruby>+10<ruby>日<rt>か</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếp theo là vấn đề chất lượng. Cà chua và baby leaf cần dán nhãn hạn dùng. Ngày thu hoạch + 10 ngày.)* |
| Yamamoto | <ruby>収穫<rt>しゅうかく</rt></ruby>+10<ruby>日<rt>か</rt></ruby>ですね。<ruby>船便<rt>ふなびん</rt></ruby>でシンガポールまで<ruby>何日<rt>なんにち</rt></ruby>かかりますか?<br>*(Thu hoạch + 10 ngày. Đi tàu đến Singapore mất bao nhiêu ngày?)* |
| Tanaka | <ruby>横浜<rt>よこはま</rt></ruby><ruby>出港<rt>しゅっこう</rt></ruby>から4<ruby>日<rt>か</rt></ruby>で<ruby>到着<rt>とうちゃく</rt></ruby>。<ruby>通関<rt>つうかん</rt></ruby>+<ruby>店頭<rt>てんとう</rt></ruby><ruby>陳列<rt>ちんれつ</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>めて6<ruby>日<rt>か</rt></ruby>。<ruby>残<rt>のこ</rt></ruby>り4<ruby>日<rt>か</rt></ruby>が<ruby>店頭<rt>てんとう</rt></ruby><ruby>販売<rt>はんばい</rt></ruby><ruby>期間<rt>かん</rt></ruby>になります。<br>*(Rời cảng Yokohama 4 ngày tới nơi. Tính cả thông quan và lên kệ là 6 ngày. Còn 4 ngày bày bán.)* |
| Linh | <ruby>冷蔵<rt>れいぞう</rt></ruby><ruby>温度<rt>おんど</rt></ruby>は<ruby>何度<rt>なんど</rt></ruby>ですか?<br>*(Nhiệt độ bảo quản lạnh là bao nhiêu ạ?)* |
| Tanaka | コールドチェーンで<ruby>常時<rt>じょうじ</rt></ruby>4<ruby>度<rt>ど</rt></ruby>。<ruby>農場<rt>のうじょう</rt></ruby><ruby>側<rt>がわ</rt></ruby>で<ruby>予冷<rt>よれい</rt></ruby><ruby>処理<rt>しょり</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>します。<br>*(Cold chain luôn ở 4 độ. Phía nông trại làm tiền lạnh giúp.)* |
| Yamamoto | <ruby>予冷<rt>よれい</rt></ruby><ruby>設備<rt>せつび</rt></ruby>はうちにあります。<ruby>収穫<rt>しゅうかく</rt></ruby>2<ruby>時間<rt>じかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に4<ruby>度<rt>ど</rt></ruby>まで<ruby>下<rt>さ</rt></ruby>げます。<br>*(Bên tôi có thiết bị tiền lạnh. Trong 2 tiếng từ lúc thu hoạch sẽ hạ xuống 4 độ.)* |

---

## Tình huống 6 — Văn phòng nông trại · Cuộc họp · 価格 và 支払 điều kiện

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>価格<rt>かかく</rt></ruby>は<ruby>桃太郎<rt>ももたろう</rt></ruby><ruby>大玉<rt>おおだま</rt></ruby>がキロあたり650<ruby>円<rt>えん</rt></ruby>、ベビーリーフが900<ruby>円<rt>えん</rt></ruby>。<ruby>支払<rt>しはらい</rt></ruby>は<ruby>月末締<rt>げつまつし</rt></ruby>め<ruby>翌月末払<rt>よくげつまつばら</rt></ruby>いの<ruby>銀行振込<rt>ぎんこうふりこみ</rt></ruby>。<br>*(Giá Momotaro loại lớn 650 yên/kg, baby leaf 900 yên/kg. Thanh toán: chốt cuối tháng, chuyển khoản cuối tháng sau.)* |
| Yamamoto | <ruby>国内<rt>こくない</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>より20%<ruby>高<rt>たか</rt></ruby>めですね。ありがたいです。<br>*(Cao hơn thị trường nội địa 20%. Cảm ơn.)* |
| Tanaka | JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>のプレミアムです。<ruby>是非<rt>ぜひ</rt></ruby><ruby>品質<rt>ひんしつ</rt></ruby>を<ruby>維持<rt>いじ</rt></ruby>してください。<br>*(Premium do chứng nhận JAS hữu cơ. Mong giữ nguyên chất lượng.)* |
| Linh | <ruby>振込手数料<rt>ふりこみてすうりょう</rt></ruby>はどちらの<ruby>負担<rt>ふたん</rt></ruby>でしょうか?<br>*(Phí chuyển khoản bên nào chịu ạ?)* |
| Tanaka | <ruby>当社<rt>とうしゃ</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>です。<ruby>山本<rt>やまもと</rt></ruby>ファーム<ruby>側<rt>がわ</rt></ruby>は<ruby>受取<rt>うけと</rt></ruby>り<ruby>金額<rt>きんがく</rt></ruby><ruby>満額<rt>まんがく</rt></ruby>です。<br>*(Bên chúng tôi chịu. Phía Yamamoto-nōen nhận đủ số tiền.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ rồi ạ.)* |

---

## Tình huống 7 — Văn phòng nông trại · Cuộc họp · 品質クレーム điều khoản

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>最後<rt>さいご</rt></ruby>に<ruby>品質<rt>ひんしつ</rt></ruby>クレームの<ruby>取<rt>と</rt></ruby>り<ruby>扱<rt>あつか</rt></ruby>いです。<ruby>到着時<rt>とうちゃくじ</rt></ruby>に<ruby>不良率<rt>ふりょうりつ</rt></ruby>が3%を<ruby>超<rt>こ</rt></ruby>えた<ruby>場合<rt>ばあい</rt></ruby>、その<ruby>分<rt>ぶん</rt></ruby>は<ruby>減額<rt>げんがく</rt></ruby>します。<br>*(Cuối cùng là xử lý khiếu nại chất lượng. Khi đến nơi tỷ lệ hỏng vượt 3%, phần đó sẽ trừ tiền.)* |
| Yamamoto | 3%は<ruby>厳<rt>きび</rt></ruby>しいですね。<ruby>船<rt>ふね</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>とか<ruby>当方<rt>とうほう</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby><ruby>外<rt>がい</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>はどうなりますか?<br>*(3% gắt quá. Trường hợp tai nạn tàu hay ngoài trách nhiệm chúng tôi thì sao?)* |
| Tanaka | その<ruby>場合<rt>ばあい</rt></ruby>は<ruby>当然<rt>とうぜん</rt></ruby><ruby>除外<rt>じょがい</rt></ruby>です。<ruby>第<rt>だい</rt></ruby>8<ruby>条<rt>じょう</rt></ruby>「<ruby>不可抗力<rt>ふかこうりょく</rt></ruby>」<ruby>条項<rt>じょうこう</rt></ruby>を<ruby>適用<rt>てきよう</rt></ruby>します。<br>*(Trường hợp đó đương nhiên loại trừ. Áp dụng điều 8 "bất khả kháng".)* |
| Linh | <ruby>不良<rt>ふりょう</rt></ruby>の<ruby>判定<rt>はんてい</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>がしますか?<br>*(Ai phán định hàng hỏng ạ?)* |
| Tanaka | バイヤー<ruby>側<rt>がわ</rt></ruby>の<ruby>検品担当者<rt>けんぴんたんとうしゃ</rt></ruby>と<ruby>当社<rt>とうしゃ</rt></ruby>のシンガポール<ruby>駐在員<rt>ちゅうざいいん</rt></ruby>の<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いで。<ruby>写真<rt>しゃしん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>もメールで<ruby>送<rt>おく</rt></ruby>ります。<br>*(Người kiểm hàng phía buyer và nhân viên thường trú Singapore của công ty chúng tôi cùng chứng kiến. Ảnh ghi nhận cũng gửi mail.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>透明性<rt>とうめいせい</rt></ruby>があって<ruby>安心<rt>あんしん</rt></ruby>です。<br>*(Em rõ. Minh bạch nên yên tâm.)* |

---

## Tình huống 8 — Văn phòng nông trại · 16:00, cuộc họp kết thúc, Linh xin gửi VN

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>一<rt>ひと</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いがあります。チームに<ruby>説明<rt>せつめい</rt></ruby>するために、<ruby>契約書<rt>けいやくしょ</rt></ruby>の<ruby>要点<rt>ようてん</rt></ruby>をベトナム<ruby>語<rt>ご</rt></ruby>と<ruby>英語<rt>えいご</rt></ruby>に<ruby>訳<rt>やく</rt></ruby>してもよろしいでしょうか?<br>*(Anh Tanaka, em có một đề nghị. Để giải thích cho đội, em dịch điểm chính hợp đồng sang tiếng Việt và tiếng Anh được không ạ?)* |
| Tanaka | もちろんどうぞ。<ruby>機密<rt>きみつ</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>として<ruby>社外秘<rt>しゃがいひ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>します。<ruby>価格<rt>かかく</rt></ruby>はSNSやLINEには<ruby>絶対<rt>ぜったい</rt></ruby><ruby>書<rt>か</rt></ruby>かないでください。<br>*(Tất nhiên xin mời. Mong giữ là thông tin mật, không tiết lộ ngoài công ty. Giá tuyệt đối đừng viết lên SNS hay LINE.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>書面<rt>しょめん</rt></ruby>で<ruby>配<rt>くば</rt></ruby>って、<ruby>説明後<rt>せつめいご</rt></ruby><ruby>回収<rt>かいしゅう</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ phát giấy, sau khi giải thích sẽ thu lại.)* |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>意識<rt>いしき</rt></ruby>です。<ruby>山本<rt>やまもと</rt></ruby>さんがリーダーに<ruby>任命<rt>にんめい</rt></ruby>した<ruby>理由<rt>りゆう</rt></ruby>がよく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ý thức tuyệt vời. Tôi đã hiểu lý do ông Yamamoto giao em làm リーダー.)* |
| Linh | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em ngại quá. Em sẽ cố gắng.)* |

---

## Tình huống 9 — Ký túc xá · Buổi tối, Linh dịch điều khoản, hỏi Carlo từ tiếng Anh

| Vai | Lời thoại |
|---|---|
| Linh | Carloさん、「<ruby>不可抗力<rt>ふかこうりょく</rt></ruby>」って<ruby>英語<rt>えいご</rt></ruby>で<ruby>何<rt>なに</rt></ruby>?<br>*(Anh Carlo, 不可抗力 tiếng Anh là gì?)* |
| Carlo | Force majeure。フランス<ruby>語<rt>ご</rt></ruby>だけどビジネス<ruby>英語<rt>えいご</rt></ruby>で<ruby>使<rt>つか</rt></ruby>うよ。<ruby>地震<rt>じしん</rt></ruby>、<ruby>台風<rt>たいふう</rt></ruby>、<ruby>戦争<rt>せんそう</rt></ruby>、<ruby>パンデミック<rt>ぱんでみっく</rt></ruby>とか。<br>*(Force majeure. Là tiếng Pháp nhưng dùng trong tiếng Anh thương mại. Động đất, bão, chiến tranh, pandemic gì gì.)* |
| Linh | 「<ruby>減額<rt>げんがく</rt></ruby>」は?<br>*(減額 là gì?)* |
| Carlo | Price deduction か discount かな。<ruby>契約書<rt>けいやくしょ</rt></ruby>だとprice deduction の<ruby>方<rt>ほう</rt></ruby>がいい。<br>*(Price deduction hoặc discount. Hợp đồng thì price deduction tốt hơn.)* |
| Linh | 「<ruby>収穫日<rt>しゅうかくび</rt></ruby>+10<ruby>日<rt>か</rt></ruby>」は?<br>*(収穫日+10日?)* |
| Carlo | Harvest date plus 10 days. シンプル。<br>*(Harvest date plus 10 days. Đơn giản.)* |
| Linh | ありがとう。<ruby>明日<rt>あした</rt></ruby>チームに<ruby>説明<rt>せつめい</rt></ruby>するから、<ruby>横<rt>よこ</rt></ruby>にいてほしい。<ruby>英語<rt>えいご</rt></ruby>の<ruby>質問<rt>しつもん</rt></ruby>があったらフォローしてくれる?<br>*(Cảm ơn. Mai em giải thích đội, đứng cạnh giúp em nhé. Có câu hỏi tiếng Anh thì hỗ trợ.)* |
| Carlo | もちろん。<br>*(Tất nhiên.)* |

---

## Tình huống 10 — Phòng ăn nông trại · Sáng hôm sau 8:00, brief cả đội

| Vai | Lời thoại |
|---|---|
| Linh | みなさん、<ruby>集<rt>あつ</rt></ruby>まってください。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>のレポートをします。<ruby>来月<rt>らいげつ</rt></ruby>からシンガポール<ruby>輸出<rt>ゆしゅつ</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まります。<br>*(Mọi người, tập trung lại. Em báo cáo cuộc họp hôm qua. Tháng sau bắt đầu xuất Singapore.)* |
| Wati | リンさん、<ruby>量<rt>りょう</rt></ruby>はどれくらい?<br>*(Chị Linh, số lượng bao nhiêu?)* |
| Linh | <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>木曜日<rt>もくようび</rt></ruby>、トマト500キロとベビーリーフ300キロ。<ruby>水曜日<rt>すいようび</rt></ruby>に<ruby>収穫<rt>しゅうかく</rt></ruby>、<ruby>予冷<rt>よれい</rt></ruby>、<ruby>箱詰<rt>はこづ</rt></ruby>め。<ruby>木曜<rt>もくよう</rt></ruby><ruby>朝<rt>あさ</rt></ruby>5<ruby>時<rt>じ</rt></ruby>にトラックが<ruby>来<rt>き</rt></ruby>ます。<br>*(Mỗi thứ Năm, cà chua 500kg, baby leaf 300kg. Thứ Tư thu hoạch, tiền lạnh, đóng hộp. Thứ Năm 5h sáng xe tải đến.)* |
| Carlo | <ruby>水曜<rt>すいよう</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>4<ruby>時<rt>じ</rt></ruby><ruby>起<rt>お</rt></ruby>きか?<ruby>大変<rt>たいへん</rt></ruby>だな。<br>*(Thứ Tư phải dậy 4 giờ sáng à? Vất vả nhỉ.)* |
| Linh | そう、<ruby>露<rt>つゆ</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っているうちに<ruby>収穫<rt>しゅうかく</rt></ruby>すると<ruby>鮮度<rt>せんど</rt></ruby>が<ruby>保<rt>たも</rt></ruby>てる。<ruby>輸出<rt>ゆしゅつ</rt></ruby>はクオリティが<ruby>命<rt>いのち</rt></ruby>。<br>*(Đúng, thu lúc còn sương thì giữ độ tươi. Xuất khẩu chất lượng là tính mạng.)* |
| Wati | <ruby>給料<rt>きゅうりょう</rt></ruby>は<ruby>上<rt>あ</rt></ruby>がりますか?<br>*(Lương có tăng không?)* |
| Linh | <ruby>残業<rt>ざんぎょう</rt></ruby><ruby>分<rt>ぶん</rt></ruby>はちゃんと<ruby>付<rt>つ</rt></ruby>くと<ruby>親方<rt>おやかた</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby><ruby>取<rt>と</rt></ruby>ってあります。<ruby>水曜<rt>すいよう</rt></ruby>の<ruby>早朝<rt>そうちょう</rt></ruby><ruby>手当<rt>てあて</rt></ruby>も<ruby>付<rt>つ</rt></ruby>きます。<br>*(Tăng ca thì trả đủ, đã xác nhận với 親方. Phụ cấp sáng sớm thứ Tư cũng có.)* |

---

## Tình huống 11 — Nhà kính cà chua · 10:30, hỏi Wati về quy trình bao bì

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、シンガポール<ruby>向<rt>む</rt></ruby>けの<ruby>箱<rt>はこ</rt></ruby>は<ruby>今<rt>いま</rt></ruby>のと<ruby>違<rt>ちが</rt></ruby>うの?<br>*(Chị Linh, hộp dành cho Singapore khác hộp hiện tại không?)* |
| Linh | うん、<ruby>違<rt>ちが</rt></ruby>うよ。<ruby>英語<rt>えいご</rt></ruby>ラベル<ruby>付<rt>つ</rt></ruby>き、JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>マーク<ruby>付<rt>つ</rt></ruby>き。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>新<rt>あたら</rt></ruby>しい<ruby>段ボール<rt>だんぼーる</rt></ruby>が<ruby>届<rt>とど</rt></ruby>く。<br>*(Ờ, khác. Có nhãn tiếng Anh, có dấu chứng nhận JAS hữu cơ. Tuần sau thùng carton mới đến.)* |
| Wati | <ruby>表示<rt>ひょうじ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>貼<rt>は</rt></ruby>る?<br>*(Ai dán nhãn?)* |
| Linh | <ruby>箱詰<rt>はこづ</rt></ruby>めの<ruby>人<rt>ひと</rt></ruby>。<ruby>収穫日<rt>しゅうかくび</rt></ruby>と<ruby>消費期限<rt>しょうひきげん</rt></ruby>を<ruby>毎回<rt>まいかい</rt></ruby><ruby>正<rt>ただ</rt></ruby>しく<ruby>書<rt>か</rt></ruby>くこと。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えないで。<br>*(Người đóng hộp. Mỗi lần phải viết đúng ngày thu hoạch và hạn dùng. Tuyệt đối không sai.)* |
| Wati | はい、<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けます。<br>*(Vâng, em chú ý.)* |

---

## Tình huống 12 — Phòng đóng gói · Tuần sau thứ Tư 5:00, đợt xuất đầu tiên

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンちゃん、<ruby>段取<rt>だんど</rt></ruby>りはどう?<br>*(Linh, sắp xếp thế nào rồi?)* |
| Linh | <ruby>収穫<rt>しゅうかく</rt></ruby><ruby>済<rt>ず</rt></ruby>み480キロ、<ruby>予冷<rt>よれい</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<ruby>残<rt>のこ</rt></ruby>り20キロは6<ruby>時<rt>じ</rt></ruby>までに<ruby>終<rt>お</rt></ruby>わります。ベビーリーフは300キロ<ruby>計量<rt>けいりょう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Thu xong 480kg, đang tiền lạnh. Còn 20kg trước 6 giờ xong. Baby leaf 300kg đã cân xong.)* |
| Yamamoto | <ruby>表示<rt>ひょうじ</rt></ruby>ラベルは?<br>*(Nhãn dán?)* |
| Linh | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認済<rt>かくにんずみ</rt></ruby>。<ruby>収穫日<rt>しゅうかくび</rt></ruby>10<ruby>月<rt>がつ</rt></ruby>9<ruby>日<rt>にち</rt></ruby>、<ruby>消費期限<rt>しょうひきげん</rt></ruby>10<ruby>月<rt>がつ</rt></ruby>19<ruby>日<rt>にち</rt></ruby>。<br>*(Xác nhận hết. Ngày thu 9/10, hạn dùng 19/10.)* |
| Yamamoto | <ruby>素晴<rt>すば</rt></ruby>らしい。トラックは<ruby>定刻<rt>ていこく</rt></ruby><ruby>通<rt>どお</rt></ruby>り<ruby>来<rt>く</rt></ruby>る?<br>*(Tuyệt. Xe tải đến đúng giờ chứ?)* |
| Linh | <ruby>運転手<rt>うんてんしゅ</rt></ruby>さんから<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っていて、4<ruby>時<rt>じ</rt></ruby>50<ruby>分<rt>ぷん</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Tài xế đã liên lạc, dự kiến đến 4h50.)* |
| Yamamoto | よし。<ruby>第<rt>だい</rt></ruby>1<ruby>陣<rt>じん</rt></ruby>、<ruby>気<rt>き</rt></ruby><ruby>合<rt>あ</rt></ruby>い<ruby>入<rt>い</rt></ruby>れていこう!<br>*(Tốt. Đợt 1, lên tinh thần nào!)* |

---

## Tình huống 13 — Văn phòng nông trại · Tuần sau, mail từ Tanaka về クレーム

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンちゃん、ちょっと<ruby>来<rt>き</rt></ruby>て。<ruby>田中<rt>たなか</rt></ruby>さんからメールが<ruby>来<rt>き</rt></ruby>た。<ruby>第<rt>だい</rt></ruby>1<ruby>陣<rt>じん</rt></ruby>のトマトに<ruby>潰<rt>つぶ</rt></ruby>れが2.5%<ruby>発生<rt>はっせい</rt></ruby>。<br>*(Linh, lại đây tí. Có mail từ Tanaka. Đợt 1 cà chua bị dập 2.5%.)* |
| Linh | <ruby>不良率<rt>ふりょうりつ</rt></ruby>3%<ruby>以下<rt>いか</rt></ruby>ですね。<ruby>減額<rt>げんがく</rt></ruby><ruby>対象外<rt>たいしょうがい</rt></ruby>。でも<ruby>原因<rt>げんいん</rt></ruby><ruby>究明<rt>きゅうめい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Tỷ lệ hỏng dưới 3%. Không bị trừ tiền. Nhưng cần tìm nguyên nhân.)* |
| Yamamoto | <ruby>写真<rt>しゃしん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ると、<ruby>箱<rt>はこ</rt></ruby>の<ruby>底<rt>そこ</rt></ruby>の<ruby>段<rt>だん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>している。<br>*(Xem ảnh thì tập trung ở tầng đáy hộp.)* |
| Linh | <ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねの<ruby>圧力<rt>あつりょく</rt></ruby>ですね。<ruby>次回<rt>じかい</rt></ruby>から<ruby>箱<rt>はこ</rt></ruby>を5<ruby>段<rt>だん</rt></ruby>から4<ruby>段<rt>だん</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>、<ruby>底<rt>そこ</rt></ruby>にエアクッションを<ruby>追加<rt>ついか</rt></ruby>することを<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Là áp lực chồng. Lần tới em đề nghị giảm chồng từ 5 tầng xuống 4 tầng, thêm đệm khí dưới đáy.)* |
| Yamamoto | OK、<ruby>提案書<rt>ていあんしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いて<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>返信<rt>へんしん</rt></ruby>して。<br>*(OK, viết đề xuất rồi reply Tanaka.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>送<rt>おく</rt></ruby>ります。<br>*(Vâng. Trong ngày em gửi.)* |

---

## Tình huống 14 — Ký túc xá · Tối, gọi điện về Việt Nam khoe ba

> Cảnh tiếng Việt — gọi về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Linh | Ba ơi, hôm nay con kể chuyện này nha. |
| Ba | Ờ, kể đi con. |
| Linh | Con vừa tham gia ký hợp đồng xuất khẩu cà chua sang Singapore. Mỗi tuần 500 ký cà chua, 300 ký rau salad. Con dịch hợp đồng cho cả đội. |
| Ba | Trời, con giỏi vậy hả? Hợp đồng dài bao nhiêu? |
| Linh | Năm trang, có khoảng FOB, hạn dùng, điều khoản bất khả kháng — toàn từ chuyên môn. Con nhờ anh Carlo người Philippines dịch tiếng Anh cho dễ hiểu. |
| Ba | Hợp đồng nông sản kiểu này thì giá cả ra sao? |
| Linh | Cao hơn thị trường nội địa Nhật 20%. Tại có chứng nhận JAS hữu cơ. |
| Ba | À, vậy ba mới hiểu tại sao mấy năm rồi con nói chuyện chứng nhận hữu cơ là quan trọng. Sau này về quê làm vườn, ba con mình làm chứng nhận VietGAP rồi tiến lên hữu cơ. |
| Linh | Dạ đúng rồi ba. Con đang ghi chép lại quy trình từ trồng đến đóng gói. Sau này mang về áp dụng. |
| Ba | Cố gắng. Mà chuyến đầu được khen không? |
| Linh | Cà chua bị dập 2.5%, dưới ngưỡng 3% nên không bị phạt. Con đã đề xuất giảm tầng chồng và thêm đệm khí. Lần tới sẽ tốt hơn. |
| Ba | Ờ giỏi giỏi. Cứ vậy mà tiến. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜させていただきます** — Em xin phép làm (lịch sự cao nhất)
- **確認させてください** — Cho em xác nhận
- **〜の負担はどちら** — Bên nào chịu chi phí
- **〜を明記する** — Ghi rõ trong văn bản
- **〜について承知しました** — Em hiểu/đồng ý về…
- **原因究明が必要です** — Cần tìm nguyên nhân
- **本日中に送ります** — Trong ngày sẽ gửi
- **〜を提案します** — Em đề xuất…

> Từ vựng & mẫu câu chương này: 商社・契約書・覚書・FOB・船積・出荷・収穫日・賞味期限・消費期限・予冷・コールドチェーン・JAS有機認証・振込・月末締め翌月末払い・不良率・減額・不可抗力・社外秘・段ボール・表示ラベル・原因究明・提案書。

---

## Bí quyết chương

- **覚書 (おぼえがき)** thường được dùng trước hợp đồng chính thức (契約書), nội dung tương đương MOU. Đọc cẩn thận điều khoản 単価・支払条件・クレーム.
- **FOB** vs **CIF** vs **EXW**: thuật ngữ Incoterms. Nhớ FOB = "Free On Board" → người bán chịu đến lúc lên tàu.
- **賞味期限** = ngon tới ngày đó (đồ khô, đông lạnh); **消費期限** = an toàn tới ngày đó (tươi, dễ hỏng). Rau quả tươi luôn là 消費期限.
- **コールドチェーン** (cold chain) là dây chuyền lạnh không đứt. Một mắt xích đứt = toàn lô hỏng.
- Khi gặp **クレーム** (khiếu nại), nguyên tắc: ① ghi nhận, ② xin lỗi (申し訳ございません), ③ điều tra (調査), ④ đề xuất giải pháp (再発防止策).
- **社外秘** (bí mật ngoài công ty) — giá xuất khẩu, điều khoản hợp đồng tuyệt đối không lên LINE/Facebook.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 輸出 | ゆしゅつ | DU XUẤT | Xuất khẩu |
| 商社 | しょうしゃ | THƯƠNG XÃ | Công ty thương mại |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | Người phụ trách |
| 同席 | どうせき | ĐỒNG TỊCH | Ngồi cùng (họp) |
| 契約書 | けいやくしょ | KHẾ ƯỚC THƯ | Hợp đồng |
| 内容 | ないよう | NỘI DUNG | Nội dung |
| 承知 | しょうち | THỪA TRI | Hiểu, đồng ý |
| 事前 | じぜん | SỰ TIỀN | Trước, sẵn |
| 資料 | しりょう | TƯ LIỆU | Tài liệu |
| 覚書 | おぼえがき | GIÁC THƯ | Biên bản ghi nhớ |
| 専門用語 | せんもんようご | CHUYÊN MÔN DỤNG NGỮ | Thuật ngữ chuyên môn |
| 貿易 | ぼうえき | MẬU DỊCH | Thương mại |
| 売り手 | うりて | MẠI THỦ | Người bán |
| 買い手 | かいて | MÃI THỦ | Người mua |
| 船積 | ふなづみ | THUYỀN TÍCH | Đóng tàu, xếp lên tàu |
| 責任 | せきにん | TRÁCH NHIỆM | Trách nhiệm |
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 運賃 | うんちん | VẬN CHẤN | Cước phí |
| 保険 | ほけん | BẢO HIỂM | Bảo hiểm |
| 負担 | ふたん | PHỤ ĐẢM | Gánh, chịu (chi phí) |
| 賞味期限 | しょうみきげん | THƯỞNG VỊ KỲ HẠN | Hạn ngon |
| 消費期限 | しょうひきげん | TIÊU PHÍ KỲ HẠN | Hạn dùng |
| 発注 | はっちゅう | PHÁT CHÚ | Đặt hàng |
| 確定 | かくてい | XÁC ĐỊNH | Chốt, xác định |
| 初回 | しょかい | SƠ HỒI | Lần đầu |
| 桃太郎 | ももたろう | ĐÀO THÁI LANG | Giống cà chua Momotaro |
| 取引条件 | とりひきじょうけん | THỦ DẪN ĐIỀU KIỆN | Điều kiện giao dịch |
| 輸送 | ゆそう | DU TỐNG | Vận chuyển |
| 費用 | ひよう | PHÍ DỤNG | Chi phí |
| 定義 | ていぎ | ĐỊNH NGHĨA | Định nghĩa |
| 手配 | てはい | THỦ PHỐI | Sắp xếp, đặt |
| 明記 | めいき | MINH KÝ | Ghi rõ |
| 追記 | ついき | TRUY KÝ | Bổ sung, thêm vào |
| 品質 | ひんしつ | PHẨM CHẤT | Chất lượng |
| 表示 | ひょうじ | BIỂU THỊ | Hiển thị, nhãn |
| 出港 | しゅっこう | XUẤT CẢNG | Rời cảng |
| 通関 | つうかん | THÔNG QUAN | Thông quan |
| 店頭 | てんとう | ĐIẾM ĐẦU | Quầy bán, kệ hàng |
| 陳列 | ちんれつ | TRẦN LIỆT | Trưng bày |
| 販売 | はんばい | PHIẾN MẠI | Bán |
| 冷蔵 | れいぞう | LÃNH TÀNG | Bảo quản lạnh |
| 予冷 | よれい | DỰ LÃNH | Tiền lạnh |
| 設備 | せつび | THIẾT BỊ | Thiết bị |
| 価格 | かかく | GIÁ CÁCH | Giá |
| 大玉 | おおだま | ĐẠI NGỌC | Quả lớn |
| 支払 | しはらい | CHI PHẤT | Thanh toán |
| 銀行振込 | ぎんこうふりこみ | NGÂN HÀNH CHẤN ÁP | Chuyển khoản ngân hàng |
| 国内 | こくない | QUỐC NỘI | Trong nước |
| 市場 | しじょう | THỊ TRƯỜNG | Thị trường |
| 認証 | にんしょう | NHẬN CHỨNG | Chứng nhận |
| 維持 | いじ | DUY TRÌ | Duy trì |
| 手数料 | てすうりょう | THỦ SỐ LIỆU | Phí dịch vụ |
| 受取り | うけとり | THỤ THỦ | Nhận |
| 満額 | まんがく | MÃN NGẠCH | Đủ số |
| クレーム | くれーむ | — | Khiếu nại |
| 不良率 | ふりょうりつ | BẤT LƯƠNG SUẤT | Tỷ lệ hỏng |
| 減額 | げんがく | GIẢM NGẠCH | Giảm tiền, trừ tiền |
| 不可抗力 | ふかこうりょく | BẤT KHẢ KHÁNG LỰC | Bất khả kháng |
| 条項 | じょうこう | ĐIỀU HẠNG | Điều khoản |
| 適用 | てきよう | THÍCH DỤNG | Áp dụng |
| 検品 | けんぴん | KIỂM PHẨM | Kiểm tra hàng |
| 駐在員 | ちゅうざいいん | TRÚ TẠI VIÊN | Nhân viên thường trú |
| 立ち会い | たちあい | LẬP HỘI | Có mặt chứng kiến |
| 透明性 | とうめいせい | THẤU MINH TÍNH | Minh bạch |
| 機密 | きみつ | CƠ MẬT | Bí mật |
| 社外秘 | しゃがいひ | XÃ NGOẠI BÍ | Bảo mật ngoài công ty |
| 回収 | かいしゅう | HỒI THU | Thu lại |
| 任命 | にんめい | NHIỆM MỆNH | Bổ nhiệm |
| 段ボール | だんぼーる | — | Thùng carton |
| 計量 | けいりょう | KẾ LƯỢNG | Cân, đo |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |
| 定刻 | ていこく | ĐỊNH KHẮC | Đúng giờ |
| 第〜陣 | だい〜じん | ĐỆ TRẬN | Đợt thứ |
| 発生 | はっせい | PHÁT SINH | Phát sinh |
| 原因究明 | げんいんきゅうめい | NGUYÊN NHÂN CỨU MINH | Tìm nguyên nhân |
| 圧力 | あつりょく | ÁP LỰC | Áp lực |
| 提案書 | ていあんしょ | ĐỀ ÁN THƯ | Đề xuất bằng văn bản |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000007, 800000042, NULL, 'markdown_book', 'T7. Mua máy cày Yanmar mới — học vận hành', '# Sách thực tập sinh nông nghiệp · T7. Mua máy cày Yanmar mới — học vận hành

> **Mục tiêu nhân vật:** Linh (24 tuổi, N3+, リーダー Yamamoto-nōen Ibaraki). Học mẫu hội thoại tiếng Nhật khi nhận và vận hành máy nông nghiệp mới: tiếp nhân viên kỹ thuật ヤンマー, nghe giải thích spec (馬力・PTO・油圧), đặt câu hỏi an toàn (緊急停止・転倒防止), học thao tác giảng (取扱説明書), báo cáo lỗi kỹ thuật, đặt phụ tùng & service call.

---

## Bối cảnh

Tháng 10 năm 2027. Yamamoto-nōen đầu tư máy cày mới ヤンマー YT347A (47 mã lực) thay máy cày cũ Kubota L-series đời 1998 đã hư động cơ. Sáng nay nhân viên kỹ thuật ヤンマー Murakami và sale Hayashi mang máy mới đến giao + giảng vận hành 1 buổi. Linh được 親方 chỉ định học cùng vì sẽ là リーダー điều phối lịch máy cho cả đội. Chương này tập trung vào hội thoại kỹ thuật, an toàn, hỏi đáp chuyên ngành nông nghiệp.

---

## Tình huống 1 — Sân nông trại · 8:30, đón đoàn ヤンマー đến giao máy

*Xe tải chở máy cày màu cam-đỏ ヤンマー đỗ trước nhà kho. Murakami và Hayashi mặc đồng phục ヤンマー bước xuống.*

| Vai | Lời thoại |
|---|---|
| Hayashi | おはようございます。<ruby>ヤンマー<rt>やんまー</rt></ruby><ruby>関東<rt>かんとう</rt></ruby><ruby>営業所<rt>えいぎょうしょ</rt></ruby>の<ruby>林<rt>はやし</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>はYT347Aの<ruby>納車<rt>のうしゃ</rt></ruby>でお<ruby>伺<rt>うかが</rt></ruby>いしました。<br>*(Chào buổi sáng. Tôi là Hayashi, văn phòng kinh doanh Yanmar Kanto. Hôm nay tôi đến giao máy YT347A.)* |
| Yamamoto | <ruby>山本<rt>やまもと</rt></ruby>です。<ruby>遠<rt>とお</rt></ruby>くまでありがとうございます。<br>*(Tôi là Yamamoto. Cảm ơn đã đến tận đây.)* |
| Murakami | <ruby>技術<rt>ぎじゅつ</rt></ruby>サービス<ruby>担当<rt>たんとう</rt></ruby>の<ruby>村上<rt>むらかみ</rt></ruby>です。<ruby>取扱説明<rt>とりあつかいせつめい</rt></ruby>と<ruby>初期点検<rt>しょきてんけん</rt></ruby>をさせていただきます。<br>*(Tôi là Murakami, kỹ thuật viên service. Tôi sẽ hướng dẫn vận hành và kiểm tra ban đầu.)* |
| Yamamoto | こちらリーダーのグエン・リンさん。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<br>*(Đây là リーダー Nguyễn Linh. Sẽ học cùng tôi.)* |
| Linh | グエン・リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>外国人<rt>がいこくじん</rt></ruby>ですので、<ruby>分<rt>わ</rt></ruby>からないところは<ruby>質問<rt>しつもん</rt></ruby>させてください。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em là Nguyễn Linh. Em là người nước ngoài nên có gì không hiểu xin được hỏi. Mong được chỉ giáo.)* |
| Murakami | もちろんです。<ruby>遠慮<rt>えんりょ</rt></ruby>なくどうぞ。<ruby>安全<rt>あんぜん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>ですから。<br>*(Tất nhiên. Cứ tự nhiên. An toàn là quan trọng nhất.)* |

---

## Tình huống 2 — Sân nông trại · 8:45, Hayashi giới thiệu spec tổng thể

| Vai | Lời thoại |
|---|---|
| Hayashi | こちらYT347Aです。<ruby>馬力<rt>ばりき</rt></ruby>は47<ruby>馬力<rt>ばりき</rt></ruby>、<ruby>排気量<rt>はいきりょう</rt></ruby>2.2リットル、3<ruby>気筒<rt>きとう</rt></ruby>ディーゼル。<ruby>4輪駆動<rt>よんりんくどう</rt></ruby><ruby>標準装備<rt>ひょうじゅんそうび</rt></ruby>です。<br>*(Đây là YT347A. 47 mã lực, dung tích 2.2 lít, diesel 3 xy-lanh. Bốn bánh dẫn động tiêu chuẩn.)* |
| Linh | <ruby>前<rt>まえ</rt></ruby>のクボタは<ruby>何<rt>なん</rt></ruby><ruby>馬力<rt>ばりき</rt></ruby>でしたか?<br>*(Cái Kubota cũ bao nhiêu mã lực ạ?)* |
| Yamamoto | 33<ruby>馬力<rt>ばりき</rt></ruby>だった。だから<ruby>大幅<rt>おおはば</rt></ruby><ruby>アップ<rt>あっぷ</rt></ruby>ですね。<br>*(33 mã lực. Nên tăng lên đáng kể.)* |
| Hayashi | <ruby>面積<rt>めんせき</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えていらっしゃるとのことで、47<ruby>馬力<rt>ばりき</rt></ruby>が<ruby>最適<rt>さいてき</rt></ruby>です。<ruby>燃費<rt>ねんぴ</rt></ruby>も<ruby>良<rt>よ</rt></ruby>くて、<ruby>1時間<rt>いちじかん</rt></ruby><ruby>当<rt>あ</rt></ruby>たり<ruby>軽油<rt>けいゆ</rt></ruby>4リットル<ruby>程度<rt>ていど</rt></ruby>。<br>*(Diện tích tăng thì 47 mã lực là phù hợp nhất. Tiêu hao cũng tốt, dầu diesel khoảng 4 lít/giờ.)* |
| Linh | アタッチメントは<ruby>何<rt>なに</rt></ruby>が<ruby>付<rt>つ</rt></ruby>けられますか?<br>*(Có thể gắn phụ kiện gì ạ?)* |
| Hayashi | ロータリー、プラウ、ハロー、<ruby>畦塗<rt>あぜぬ</rt></ruby>り<ruby>機<rt>き</rt></ruby>、<ruby>施肥機<rt>せひき</rt></ruby>。リフトの<ruby>容量<rt>ようりょう</rt></ruby>が1500キロですので<ruby>大型<rt>おおがた</rt></ruby>もOK。<br>*(Rotary, plow, harrow, máy đắp bờ, máy bón phân. Lift tải 1500kg nên loại lớn cũng OK.)* |

---

## Tình huống 3 — Sân nông trại · 9:00, Murakami giới thiệu cabin & ghế

| Vai | Lời thoại |
|---|---|
| Murakami | では<ruby>運転席<rt>うんてんせき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がってください。リンさんから<ruby>先<rt>さき</rt></ruby>にどうぞ。<br>*(Mời lên ghế lái. Cô Linh trước đi.)* |
| Linh | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, xin phép ạ.)* |
| Murakami | まず<ruby>座席<rt>ざせき</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>。この<ruby>下<rt>した</rt></ruby>のレバーで<ruby>前後<rt>ぜんご</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かせます。<ruby>体重<rt>たいじゅう</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>ノブは<ruby>横<rt>よこ</rt></ruby>。リンさんの<ruby>体重<rt>たいじゅう</rt></ruby>は50キロくらい?<br>*(Đầu tiên chỉnh ghế. Cần này dưới để chỉnh trước sau. Núm chỉnh cân nặng bên hông. Cô Linh khoảng 50kg?)* |
| Linh | 48キロです。<br>*(48 ạ.)* |
| Murakami | では<ruby>軽<rt>かる</rt></ruby>めに<ruby>設定<rt>せってい</rt></ruby>します。<ruby>振動<rt>しんどう</rt></ruby>の<ruby>吸収<rt>きゅうしゅう</rt></ruby>が<ruby>良<rt>よ</rt></ruby>くなって<ruby>疲<rt>つか</rt></ruby>れにくい。<br>*(Vậy chỉnh nhẹ. Sẽ hấp thụ rung tốt, ít mệt.)* |
| Linh | <ruby>長時間<rt>ちょうじかん</rt></ruby><ruby>運転<rt>うんてん</rt></ruby>のとき、<ruby>休憩<rt>きゅうけい</rt></ruby>は<ruby>何時間<rt>なんじかん</rt></ruby>おきが<ruby>目安<rt>めやす</rt></ruby>ですか?<br>*(Lái lâu thì nên nghỉ mỗi mấy tiếng là mục tiêu ạ?)* |
| Murakami | <ruby>2時間<rt>にじかん</rt></ruby>おきに10<ruby>分<rt>ぷん</rt></ruby><ruby>休憩<rt>きゅうけい</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>します。<ruby>疲労<rt>ひろう</rt></ruby>は<ruby>事故<rt>じこ</rt></ruby>の<ruby>元<rt>もと</rt></ruby>です。<br>*(Khuyến nghị nghỉ 10 phút mỗi 2 tiếng. Mệt mỏi là nguyên nhân tai nạn.)* |

---

## Tình huống 4 — Trên ghế lái · 9:15, hệ thống an toàn 緊急停止

| Vai | Lời thoại |
|---|---|
| Murakami | <ruby>次<rt>つぎ</rt></ruby>に<ruby>緊急停止<rt>きんきゅうていし</rt></ruby><ruby>装置<rt>そうち</rt></ruby>です。<ruby>赤<rt>あか</rt></ruby>いキノコ<ruby>型<rt>がた</rt></ruby>ボタンが<ruby>右側<rt>みぎがわ</rt></ruby>。<ruby>押<rt>お</rt></ruby>すと<ruby>全<rt>すべ</rt></ruby>てが<ruby>止<rt>と</rt></ruby>まります。<br>*(Tiếp là nút dừng khẩn cấp. Nút đỏ hình nấm phía bên phải. Nhấn xuống là dừng hết.)* |
| Linh | <ruby>解除<rt>かいじょ</rt></ruby>はどうしますか?<br>*(Mở khóa thế nào ạ?)* |
| Murakami | ボタンを<ruby>右<rt>みぎ</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>すと<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Xoay nút sang phải sẽ trả về.)* |
| Linh | <ruby>転倒防止<rt>てんとうぼうし</rt></ruby>の<ruby>機能<rt>きのう</rt></ruby>はありますか?<br>*(Có chức năng chống lật không ạ?)* |
| Murakami | ROPS(<ruby>転倒<rt>とうとう</rt></ruby><ruby>時保護<rt>じほご</rt></ruby><ruby>構造<rt>こうぞう</rt></ruby>)が<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>装備<rt>そうび</rt></ruby>。あと<ruby>シートベルト<rt>しーとべると</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>です。<ruby>必<rt>かなら</rt></ruby>ず<ruby>締<rt>し</rt></ruby>めてください。<br>*(ROPS — kết cấu bảo vệ khi lật — tiêu chuẩn. Và dây an toàn bắt buộc. Phải thắt.)* |
| Linh | <ruby>坂道<rt>さかみち</rt></ruby>の<ruby>注意点<rt>ちゅういてん</rt></ruby>はありますか?<br>*(Đi dốc cần chú ý gì ạ?)* |
| Murakami | <ruby>下<rt>くだ</rt></ruby>りでは<ruby>低速<rt>ていそく</rt></ruby>ギアでエンジン<ruby>制動<rt>せいどう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うこと。<ruby>急<rt>きゅう</rt></ruby>ブレーキは<ruby>絶対<rt>ぜったい</rt></ruby>ダメ。<ruby>横向<rt>よこむ</rt></ruby>きに<ruby>走<rt>はし</rt></ruby>るのは<ruby>転倒<rt>てんとう</rt></ruby>リスク<ruby>大<rt>だい</rt></ruby>。<br>*(Xuống dốc dùng số thấp để hãm động cơ. Phanh gấp tuyệt đối không. Chạy ngang sườn dốc rủi ro lật lớn.)* |

---

## Tình huống 5 — Trên ghế lái · 9:30, hệ thống PTO và油圧

| Vai | Lời thoại |
|---|---|
| Murakami | これがPTO(<ruby>動力取出<rt>どうりょくとりだ</rt></ruby>し<ruby>軸<rt>じく</rt></ruby>)レバー。<ruby>後<rt>うし</rt></ruby>ろのアタッチメントを<ruby>動<rt>うご</rt></ruby>かす<ruby>動力<rt>どうりょく</rt></ruby>です。<br>*(Đây là cần PTO — trục truyền công suất. Để chạy phụ kiện phía sau.)* |
| Linh | <ruby>速度<rt>そくど</rt></ruby>は<ruby>変<rt>か</rt></ruby>えられますか?<br>*(Có đổi tốc độ được không?)* |
| Murakami | 540rpmと1000rpmの2<ruby>段階<rt>だんかい</rt></ruby>。ロータリーは540、<ruby>畦塗<rt>あぜぬ</rt></ruby>り<ruby>機<rt>き</rt></ruby>は1000<ruby>使<rt>つか</rt></ruby>うことが<ruby>多<rt>おお</rt></ruby>い。<br>*(540rpm và 1000rpm hai cấp. Rotary thường dùng 540, máy đắp bờ dùng 1000.)* |
| Linh | <ruby>油圧<rt>ゆあつ</rt></ruby>レバーはどこですか?<br>*(Cần thủy lực ở đâu ạ?)* |
| Murakami | <ruby>右側<rt>みぎがわ</rt></ruby>。リフトの<ruby>上<rt>あ</rt></ruby>げ<ruby>下<rt>さ</rt></ruby>げ、<ruby>外部<rt>がいぶ</rt></ruby><ruby>油圧<rt>ゆあつ</rt></ruby>はこちら。3<ruby>系統<rt>けいとう</rt></ruby>あります。<br>*(Bên phải. Lên xuống lift, thủy lực ngoài đây. Có 3 mạch.)* |
| Linh | <ruby>圧力<rt>あつりょく</rt></ruby>はどれくらいですか?<br>*(Áp suất bao nhiêu ạ?)* |
| Murakami | <ruby>最高<rt>さいこう</rt></ruby>19MPa。<ruby>圧力計<rt>あつりょくけい</rt></ruby>はメーターパネルにあります。<ruby>赤<rt>あか</rt></ruby>い<ruby>領域<rt>りょういき</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ったら<ruby>停止<rt>ていし</rt></ruby>してください。<br>*(Tối đa 19MPa. Đồng hồ áp ở bảng điều khiển. Vào vùng đỏ thì dừng.)* |

---

## Tình huống 6 — Trên ghế lái · 9:45, Linh thử khởi động và chạy thử

| Vai | Lời thoại |
|---|---|
| Murakami | では<ruby>始動<rt>しどう</rt></ruby>してみましょう。<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>言<rt>い</rt></ruby>いますね。①<ruby>駐車<rt>ちゅうしゃ</rt></ruby>ブレーキ<ruby>確認<rt>かくにん</rt></ruby>、②<ruby>変速<rt>へんそく</rt></ruby>レバー<ruby>中立<rt>ちゅうりつ</rt></ruby>、③クラッチを<ruby>踏<rt>ふ</rt></ruby>む、④キーをON、⑤<ruby>予熱<rt>よねつ</rt></ruby><ruby>5秒<rt>ごびょう</rt></ruby><ruby>待<rt>ま</rt></ruby>つ、⑥スタート<ruby>位置<rt>いち</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>す。<br>*(Thử khởi động. Tôi đọc trình tự. ①Phanh tay, ②cần số trung lập, ③đạp ly hợp, ④chìa khoá ON, ⑤chờ sấy 5 giây, ⑥xoay vị trí start.)* |
| Linh | (làm theo) <ruby>駐車<rt>ちゅうしゃ</rt></ruby>ブレーキ<ruby>確認<rt>かくにん</rt></ruby>...<ruby>中立<rt>ちゅうりつ</rt></ruby>...クラッチ<ruby>踏<rt>ふ</rt></ruby>みました...ON...<ruby>予熱<rt>よねつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>...<ruby>始動<rt>しどう</rt></ruby>!<br>*(Phanh tay xong... trung lập... đạp ly hợp... ON... đang sấy... khởi động!)* |
| Murakami | <ruby>完璧<rt>かんぺき</rt></ruby>です。エンジン<ruby>音<rt>おと</rt></ruby><ruby>聞<rt>き</rt></ruby>いてください。<ruby>異音<rt>いおん</rt></ruby>がないか<ruby>毎回<rt>まいかい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Hoàn hảo. Lắng nghe tiếng máy. Mỗi lần kiểm tra có tiếng lạ không.)* |
| Linh | <ruby>異音<rt>いおん</rt></ruby>って<ruby>例<rt>たと</rt></ruby>えばどんな<ruby>音<rt>おと</rt></ruby>ですか?<br>*(Tiếng lạ ví dụ thế nào ạ?)* |
| Murakami | カタカタ、ガラガラ、シューシュー。<ruby>普段<rt>ふだん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>う<ruby>音<rt>おと</rt></ruby>はすべて<ruby>異音<rt>いおん</rt></ruby>です。<ruby>気<rt>き</rt></ruby>になったらすぐ<ruby>停止<rt>ていし</rt></ruby>。<br>*(Lạch cạch, lọc cọc, xì xì. Tiếng khác bình thường đều là 異音. Bận tâm thì dừng ngay.)* |

---

## Tình huống 7 — Cánh đồng phía bắc · 10:30, chạy thử với rotary

| Vai | Lời thoại |
|---|---|
| Murakami | <ruby>北<rt>きた</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>でロータリーを<ruby>付<rt>つ</rt></ruby>けて<ruby>耕耘<rt>こううん</rt></ruby>してみましょう。リンさん、ロータリーの<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>け<ruby>手順<rt>てじゅん</rt></ruby>は?<br>*(Ra ruộng bắc gắn rotary cày thử. Linh, trình tự gắn rotary?)* |
| Linh | ①<ruby>機械<rt>きかい</rt></ruby><ruby>停止<rt>ていし</rt></ruby>+キーOFF、②3<ruby>点<rt>てん</rt></ruby>リンクをロータリーに<ruby>合<rt>あ</rt></ruby>わせる、③ロックピン<ruby>挿入<rt>そうにゅう</rt></ruby>、④PTO<ruby>軸<rt>じく</rt></ruby><ruby>連結<rt>れんけつ</rt></ruby>、⑤<ruby>油圧<rt>ゆあつ</rt></ruby>ホース<ruby>接続<rt>せつぞく</rt></ruby>。<br>*(①Tắt máy + chìa OFF, ②khớp 3 điểm với rotary, ③cắm chốt khoá, ④kết nối trục PTO, ⑤kết nối ống thủy lực.)* |
| Murakami | <ruby>完璧<rt>かんぺき</rt></ruby>!<ruby>取扱説明書<rt>とりあつかいせつめいしょ</rt></ruby><ruby>読<rt>よ</rt></ruby>みましたね。<br>*(Hoàn hảo! Đọc sách hướng dẫn rồi nhỉ.)* |
| Linh | <ruby>昨夜<rt>さくや</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>みました。<ruby>分<rt>わ</rt></ruby>からない<ruby>漢字<rt>かんじ</rt></ruby>は<ruby>辞書<rt>じしょ</rt></ruby>で<ruby>調<rt>しら</rt></ruby>べました。<br>*(Tối qua em đọc hết. Kanji không hiểu thì tra từ điển.)* |
| Murakami | すごい<ruby>努力<rt>どりょく</rt></ruby>。じゃあ<ruby>耕耘深<rt>こううんしん</rt></ruby>さは15センチに<ruby>設定<rt>せってい</rt></ruby>します。<ruby>速度<rt>そくど</rt></ruby>は2<ruby>速<rt>そく</rt></ruby>でゆっくり。<br>*(Nỗ lực tuyệt. Đặt độ sâu cày 15cm. Tốc độ số 2 chậm.)* |
| Linh | はい、<ruby>始<rt>はじ</rt></ruby>めます。(chạy 30m)<br>*(Vâng, bắt đầu.)* |
| Murakami | きれいに<ruby>耕<rt>たがや</rt></ruby>せました。<ruby>感覚<rt>かんかく</rt></ruby><ruby>掴<rt>つか</rt></ruby>めましたか?<br>*(Cày sạch đẹp. Cảm giác được rồi chứ?)* |
| Linh | はい。クボタより<ruby>振動<rt>しんどう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>なくて<ruby>楽<rt>らく</rt></ruby>です。<br>*(Vâng. Rung ít hơn Kubota, thoải mái hơn.)* |

---

## Tình huống 8 — Cánh đồng phía bắc · 11:30, Wati và Carlo đến học

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、<ruby>新<rt>あたら</rt></ruby>しいトラクター、すごい!<br>*(Chị Linh, máy cày mới, đỉnh!)* |
| Carlo | <ruby>俺<rt>おれ</rt></ruby>たちも<ruby>運転<rt>うんてん</rt></ruby>できる?<br>*(Tụi tao có lái được không?)* |
| Linh | <ruby>免許<rt>めんきょ</rt></ruby>と<ruby>研修<rt>けんしゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。<ruby>農耕車<rt>のうこうしゃ</rt></ruby>の<ruby>大型<rt>おおがた</rt></ruby><ruby>特殊<rt>とくしゅ</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>がある。<br>*(Cần bằng và huấn luyện. Phải lấy bằng "大型特殊 nông nghiệp".)* |
| Murakami | リンさんの<ruby>言<rt>い</rt></ruby>う<ruby>通<rt>とお</rt></ruby>り。<ruby>農場内<rt>のうじょうない</rt></ruby>でも<ruby>労働<rt>ろうどう</rt></ruby><ruby>安全衛生法<rt>あんぜんえいせいほう</rt></ruby>で<ruby>研修<rt>けんしゅう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby><ruby>者<rt>しゃ</rt></ruby>のみ。<ruby>会社<rt>かいしゃ</rt></ruby>として<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>すこと。<br>*(Như Linh nói. Trong nông trại cũng theo Luật An toàn vệ sinh lao động, chỉ người đã qua đào tạo. Công ty phải lưu hồ sơ.)* |
| Wati | <ruby>研修<rt>けんしゅう</rt></ruby>はどこで<ruby>受<rt>う</rt></ruby>ける?<br>*(Đào tạo ở đâu?)* |
| Murakami | <ruby>各県<rt>かくけん</rt></ruby>の<ruby>労働基準局<rt>ろうどうきじゅんきょく</rt></ruby><ruby>指定<rt>してい</rt></ruby>の<ruby>機関<rt>きかん</rt></ruby>で2<ruby>日間<rt>にちかん</rt></ruby>の<ruby>講習<rt>こうしゅう</rt></ruby>。<ruby>外国人<rt>がいこくじん</rt></ruby>でも<ruby>受講<rt>じゅこう</rt></ruby>できます。<br>*(Cơ quan do Cục lao động tỉnh chỉ định, 2 ngày học. Người nước ngoài cũng học được.)* |

---

## Tình huống 9 — Cánh đồng phía bắc · 12:00, bảo dưỡng hằng ngày

| Vai | Lời thoại |
|---|---|
| Murakami | <ruby>毎日<rt>まいにち</rt></ruby>の<ruby>始業前<rt>しぎょうまえ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。①エンジンオイル<ruby>量<rt>りょう</rt></ruby>、②<ruby>冷却水<rt>れいきゃくすい</rt></ruby>、③<ruby>燃料<rt>ねんりょう</rt></ruby>、④タイヤ<ruby>空気圧<rt>くうきあつ</rt></ruby>、⑤<ruby>灯火<rt>とうか</rt></ruby><ruby>類<rt>るい</rt></ruby>。<br>*(Tôi giải thích kiểm tra đầu ca hàng ngày. ①Dầu máy, ②nước làm mát, ③nhiên liệu, ④áp lốp, ⑤đèn.)* |
| Linh | オイル<ruby>交換<rt>こうかん</rt></ruby>はどれくらいの<ruby>間隔<rt>かんかく</rt></ruby>ですか?<br>*(Thay dầu khoảng bao lâu một lần ạ?)* |
| Murakami | <ruby>初回<rt>しょかい</rt></ruby>は50<ruby>時間<rt>じかん</rt></ruby><ruby>稼働後<rt>かどうご</rt></ruby>、その<ruby>後<rt>あと</rt></ruby>は200<ruby>時間<rt>じかん</rt></ruby>ごと、または1<ruby>年<rt>ねん</rt></ruby>に1<ruby>回<rt>かい</rt></ruby>。<br>*(Lần đầu sau 50 giờ chạy, sau đó mỗi 200 giờ hoặc 1 năm/lần.)* |
| Linh | <ruby>稼働時間<rt>かどうじかん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>で<ruby>計<rt>はか</rt></ruby>りますか?<br>*(Giờ chạy đo bằng gì ạ?)* |
| Murakami | メーターパネルにアワーメーター。<ruby>毎日<rt>まいにち</rt></ruby><ruby>稼働<rt>かどう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>して、200<ruby>時間<rt>じかん</rt></ruby><ruby>近<rt>ちか</rt></ruby>くなったら<ruby>連絡<rt>れんらく</rt></ruby>を。サービスマンが<ruby>来<rt>き</rt></ruby>ます。<br>*(Có hour meter trên bảng. Ghi giờ chạy hàng ngày, gần 200 giờ thì gọi. Kỹ thuật viên sẽ đến.)* |
| Linh | エアフィルターは?<br>*(Lọc gió thì sao ạ?)* |
| Murakami | <ruby>毎日<rt>まいにち</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>、100<ruby>時間<rt>じかん</rt></ruby>ごとに<ruby>交換<rt>こうかん</rt></ruby>。ホコリの<ruby>多<rt>おお</rt></ruby>い<ruby>環境<rt>かんきょう</rt></ruby>では<ruby>頻度<rt>ひんど</rt></ruby><ruby>上<rt>あ</rt></ruby>げて。<br>*(Vệ sinh hàng ngày, thay sau 100 giờ. Môi trường nhiều bụi tăng tần suất.)* |

---

## Tình huống 10 — Sân nông trại · 13:30, Hayashi đề cập gói bảo hành

| Vai | Lời thoại |
|---|---|
| Hayashi | <ruby>保証<rt>ほしょう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は2<ruby>年<rt>ねん</rt></ruby>または2000<ruby>時間<rt>じかん</rt></ruby>、いずれか<ruby>早<rt>はや</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>です。<br>*(Bảo hành 2 năm hoặc 2000 giờ, cái nào đến trước.)* |
| Yamamoto | <ruby>追加<rt>ついか</rt></ruby><ruby>保証<rt>ほしょう</rt></ruby>はありますか?<br>*(Có gói bảo hành mở rộng không?)* |
| Hayashi | プレミアム<ruby>保証<rt>ほしょう</rt></ruby><ruby>付<rt>つ</rt></ruby>けると4<ruby>年<rt>ねん</rt></ruby>または4000<ruby>時間<rt>じかん</rt></ruby>まで<ruby>延長<rt>えんちょう</rt></ruby>。<ruby>追加<rt>ついか</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>は<ruby>本体<rt>ほんたい</rt></ruby><ruby>価格<rt>かかく</rt></ruby>の5%。<br>*(Gói premium kéo dài 4 năm hoặc 4000 giờ. Phụ phí 5% giá xe.)* |
| Yamamoto | <ruby>付<rt>つ</rt></ruby>けます。<ruby>安心<rt>あんしん</rt></ruby>のためです。<br>*(Tôi mua. Cho yên tâm.)* |
| Linh | <ruby>故障<rt>こしょう</rt></ruby>のときの<ruby>連絡先<rt>れんらくさき</rt></ruby>は?<br>*(Khi hỏng liên hệ đâu ạ?)* |
| Hayashi | このカード。24<ruby>時間<rt>じかん</rt></ruby>サービスコール。<ruby>関東<rt>かんとう</rt></ruby><ruby>営業所<rt>えいぎょうしょ</rt></ruby>が<ruby>最寄<rt>もよ</rt></ruby>り。<ruby>緊急<rt>きんきゅう</rt></ruby>なら2<ruby>時間<rt>じかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>駆<rt>か</rt></ruby>けつけます。<br>*(Thẻ này. Service call 24 giờ. Văn phòng Kanto gần nhất. Khẩn cấp thì trong 2 giờ chúng tôi tới.)* |
| Linh | <ruby>受領<rt>じゅりょう</rt></ruby>しました。<ruby>事務所<rt>じむしょ</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>に<ruby>貼<rt>は</rt></ruby>っておきます。<br>*(Em đã nhận. Dán lên tường văn phòng.)* |

---

## Tình huống 11 — Cánh đồng phía bắc · 14:30, Linh chạy một mình, gặp vấn đề

*Linh đang chạy ロータリー để cày một mình. Đột nhiên đèn cảnh báo đỏ bật sáng.*

| Vai | Lời thoại |
|---|---|
| Linh | (dừng máy, gọi điện) もしもし、<ruby>村上<rt>むらかみ</rt></ruby>さん、グエン・リンです。<ruby>警告灯<rt>けいこくとう</rt></ruby>が<ruby>点灯<rt>てんとう</rt></ruby>しました。<br>*(Alo, anh Murakami, em Nguyễn Linh. Đèn cảnh báo bật sáng.)* |
| Murakami | どのランプですか?<ruby>色<rt>いろ</rt></ruby>と<ruby>位置<rt>いち</rt></ruby>は?<br>*(Đèn nào? Màu và vị trí?)* |
| Linh | <ruby>赤<rt>あか</rt></ruby>くて、<ruby>温度計<rt>おんどけい</rt></ruby>のマークが<ruby>付<rt>つ</rt></ruby>いています。<ruby>冷却水<rt>れいきゃくすい</rt></ruby><ruby>温度<rt>おんど</rt></ruby>?<br>*(Đỏ, có dấu nhiệt kế. Nhiệt độ nước làm mát?)* |
| Murakami | そうです。エンジン<ruby>過熱<rt>かねつ</rt></ruby>。すぐ<ruby>停止<rt>ていし</rt></ruby>してください。アイドリングで<ruby>5分<rt>ごふん</rt></ruby><ruby>冷<rt>さ</rt></ruby>ましてからエンジン<ruby>切<rt>き</rt></ruby>って。ボンネット<ruby>開<rt>あ</rt></ruby>けて<ruby>冷却水<rt>れいきゃくすい</rt></ruby><ruby>量<rt>りょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Đúng. Máy quá nhiệt. Dừng ngay. Để nổ không tải 5 phút làm mát rồi tắt máy. Mở capot kiểm tra nước.)* |
| Linh | (5 phút sau) <ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>冷却水<rt>れいきゃくすい</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないです。リザーバータンクが<ruby>空<rt>から</rt></ruby><ruby>近<rt>ちか</rt></ruby>く。<br>*(5 phút sau. Đã kiểm tra. Nước làm mát ít. Bình dự trữ gần cạn.)* |
| Murakami | <ruby>納車<rt>のうしゃ</rt></ruby><ruby>時<rt>じ</rt></ruby>は<ruby>満量<rt>まんりょう</rt></ruby>だったはず。どこかで<ruby>漏<rt>も</rt></ruby>れている<ruby>可能性<rt>かのうせい</rt></ruby>あり。<ruby>地面<rt>じめん</rt></ruby>に<ruby>水<rt>みず</rt></ruby>の<ruby>跡<rt>あと</rt></ruby>はありますか?<br>*(Lúc giao chắc chắn đầy. Có khả năng rò đâu đó. Trên mặt đất có dấu nước không?)* |
| Linh | (kiểm tra) はい、ホースの<ruby>接続部<rt>せつぞくぶ</rt></ruby>に<ruby>湿<rt>しめ</rt></ruby>り。<ruby>初期不良<rt>しょきふりょう</rt></ruby>でしょうか?<br>*(Có, chỗ nối ống bị ẩm. Lỗi sản xuất ban đầu phải không?)* |
| Murakami | その<ruby>可能性<rt>かのうせい</rt></ruby><ruby>高<rt>たか</rt></ruby>いです。<ruby>今<rt>いま</rt></ruby>から<ruby>向<rt>む</rt></ruby>かいます。1<ruby>時間<rt>じかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>着<rt>つ</rt></ruby>きます。それまで<ruby>運転<rt>うんてん</rt></ruby>しないでください。<br>*(Khả năng cao. Tôi đến ngay. Trong 1 giờ tới nơi. Đến lúc đó đừng vận hành.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。お<ruby>待<rt>ま</rt></ruby>ちしております。<br>*(Vâng. Em chờ.)* |

---

## Tình huống 12 — Cánh đồng phía bắc · 15:30, Murakami đến sửa

| Vai | Lời thoại |
|---|---|
| Murakami | お<ruby>待<rt>ま</rt></ruby>たせしました。<ruby>状況<rt>じょうきょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。あ、ホースクランプの<ruby>締<rt>し</rt></ruby>め<ruby>付<rt>つ</rt></ruby>けが<ruby>緩<rt>ゆる</rt></ruby>かったですね。<ruby>工場出荷時<rt>こうじょうしゅっかじ</rt></ruby>の<ruby>初期不良<rt>しょきふりょう</rt></ruby>です。<br>*(Xin lỗi đã đợi. Tôi kiểm tra. À, kẹp ống bị lỏng. Lỗi sản xuất từ nhà máy.)* |
| Linh | <ruby>修理<rt>しゅうり</rt></ruby><ruby>費用<rt>ひよう</rt></ruby>は?<br>*(Phí sửa?)* |
| Murakami | もちろん<ruby>無償<rt>むしょう</rt></ruby>。<ruby>保証<rt>ほしょう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby><ruby>内<rt>ない</rt></ruby>。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Tất nhiên miễn phí. Trong bảo hành. Tôi xin lỗi.)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>早<rt>はや</rt></ruby>く<ruby>発見<rt>はっけん</rt></ruby>できてよかったです。<ruby>気<rt>き</rt></ruby>づかずに<ruby>運転<rt>うんてん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けていたらエンジン<ruby>焼<rt>や</rt></ruby>けてました。<br>*(Không sao. May phát hiện sớm. Không biết mà chạy tiếp thì cháy máy.)* |
| Murakami | リンさんの<ruby>対応<rt>たいおう</rt></ruby>が<ruby>素晴<rt>すば</rt></ruby>らしかった。<ruby>警告灯<rt>けいこくとう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てすぐ<ruby>停止<rt>ていし</rt></ruby>、<ruby>連絡<rt>れんらく</rt></ruby>、<ruby>状況<rt>じょうきょう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>——<ruby>教科書<rt>きょうかしょ</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<br>*(Cô Linh xử lý tuyệt vời. Thấy đèn dừng ngay, gọi điện, báo cáo tình huống — đúng sách giáo khoa.)* |
| Linh | <ruby>取扱説明書<rt>とりあつかいせつめいしょ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでいたおかげです。<br>*(Nhờ em đã đọc sách hướng dẫn.)* |

---

## Tình huống 13 — Văn phòng nông trại · 17:00, báo cáo 親方 và cả đội

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>のレポートです。トラクター<ruby>納車<rt>のうしゃ</rt></ruby>と<ruby>取扱<rt>とりあつかい</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>を<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Ông chủ, báo cáo hôm nay. Đã hoàn tất giao máy và đào tạo vận hành.)* |
| Yamamoto | お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>。<ruby>冷却水<rt>れいきゃくすい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いたよ。<ruby>対応<rt>たいおう</rt></ruby>は<ruby>適切<rt>てきせつ</rt></ruby>だった。<br>*(Vất vả. Vụ nước làm mát tôi nghe rồi. Xử lý đúng.)* |
| Linh | <ruby>明日<rt>あした</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>始業前<rt>しぎょうまえ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>します。チェックリストを<ruby>作<rt>つく</rt></ruby>りました。<br>*(Mai bắt đầu ghi kiểm tra đầu ca hàng ngày. Em đã làm bảng kiểm.)* |
| Yamamoto | いいね。Wati ちゃんと Carlo にも<ruby>免許<rt>めんきょ</rt></ruby><ruby>取<rt>と</rt></ruby>らせよう。リーダー<ruby>業務<rt>ぎょうむ</rt></ruby>として<ruby>調整<rt>ちょうせい</rt></ruby>してくれる?<br>*(Tốt. Để Wati và Carlo cũng lấy bằng. Em điều phối thuộc nhiệm vụ リーダー nhé?)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>労働基準局<rt>ろうどうきじゅんきょく</rt></ruby><ruby>指定<rt>してい</rt></ruby><ruby>機関<rt>きかん</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>して、<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>講習日<rt>こうしゅうび</rt></ruby>を<ruby>予約<rt>よやく</rt></ruby>します。<br>*(Vâng. Em liên hệ cơ quan được Cục lao động chỉ định, đặt lịch học tháng sau.)* |

---

## Tình huống 14 — Ký túc xá · Tối, gọi cho ba ở Đồng Tháp

> Cảnh tiếng Việt — gọi về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Linh | Ba ơi, hôm nay con học vận hành máy cày mới. |
| Ba | Mới hả? Cái gì? |
| Linh | Yanmar YT347A, 47 mã lực. Nhà mình hồi xưa có cái Yanmar cũ 25 mã lực nhớ không? |
| Ba | Nhớ chứ, chạy bền lắm. Mấy chục năm rồi. |
| Linh | Cái mới này có cabin máy lạnh, ghế giảm xóc, đèn LED, có ROPS chống lật, có dây an toàn. Nguyên cuốn sách hướng dẫn 200 trang con đọc hết. |
| Ba | Trời, ở Việt Nam mình lái máy cày chân không, đội nón lá. Bên đó kỹ tới vậy hả? |
| Linh | Dạ. Hôm nay con phát hiện rò nước làm mát do ống lỏng. Báo kỹ thuật viên hãng đến sửa, miễn phí trong bảo hành. |
| Ba | Con giỏi rồi đó. Sau này về quê, có vốn ba con mình mua một cái Yanmar lo cho mấy chục công đất. |
| Linh | Con cũng tính vậy. Mà ba nha, bên Nhật ai chạy máy nông nghiệp lớn cũng phải có bằng 大型特殊 nông nghiệp. Bên mình cũng nên học bài bản. |
| Ba | Ờ con học nhiều ghi chép lại đi. Lúc về dùng. |
| Linh | Dạ con đã viết hết vào sổ tay. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜させていただきます** — Em xin phép làm (kính ngữ cao)
- **〜の手順を言いますね** — Tôi đọc trình tự cho em
- **〜してください + 必ず** — Phải … (lệnh an toàn)
- **異音がないか確認** — Kiểm tra có tiếng lạ không
- **すぐ停止してください** — Dừng ngay
- **〜の可能性が高い** — Khả năng cao là…
- **教科書通り** — Đúng sách giáo khoa
- **〜のおかげです** — Nhờ có…

> Từ vựng & mẫu câu chương này: 納車・馬力・排気量・気筒・4輪駆動・PTO・油圧・取扱説明書・緊急停止・ROPS・転倒防止・シートベルト・座席調整・始業前点検・エンジンオイル・冷却水・タイヤ空気圧・アワーメーター・警告灯・初期不良・保証期間・サービスコール・大型特殊免許・労働安全衛生法。

---

## Bí quyết chương

- **〜させていただきます** là kính ngữ siêu lịch sự khi xin phép làm gì cho cấp trên — dùng nhiều trong họp với khách (sale, kỹ thuật viên).
- **3 nguyên tắc an toàn máy nông nghiệp**: ① シートベルト 必ず, ② 異音→ 即停止, ③ 警告灯→ ボンネット 確認 trước khi gọi.
- **アワーメーター** (hour meter) thay vì 走行距離 (km) vì máy cày ở tại chỗ, đo theo giờ chạy.
- **大型特殊免許 (農耕車限定)** là bằng riêng cho xe nông nghiệp lớn; có thể thi bằng tiếng Nhật giản dị, người nước ngoài thi được.
- Khi báo sự cố qua điện thoại: ① màu/vị trí cảnh báo, ② âm thanh, ③ tình trạng nước/khói/dầu, ④ vị trí đang ở. Không "máy có chuyện".
- **初期不良** (defect ban đầu) trong thời gian bảo hành → 無償修理. Phải báo NGAY, không cố chạy tiếp.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 営業所 | えいぎょうしょ | DOANH NGHIỆP SỞ | Văn phòng kinh doanh |
| 納車 | のうしゃ | NẠP XA | Giao xe |
| 技術 | ぎじゅつ | KỸ THUẬT | Kỹ thuật |
| 取扱説明 | とりあつかいせつめい | THỦ HUYNH THUYẾT MINH | Hướng dẫn sử dụng |
| 初期点検 | しょきてんけん | SƠ KỲ ĐIỂM KIỂM | Kiểm tra ban đầu |
| 馬力 | ばりき | MÃ LỰC | Mã lực |
| 排気量 | はいきりょう | BÀI KHÍ LƯỢNG | Dung tích xy-lanh |
| 気筒 | きとう | KHÍ ĐỒNG | Xy-lanh |
| 4輪駆動 | よんりんくどう | TỨ LUÂN KHU ĐỘNG | 4 bánh dẫn động |
| 標準装備 | ひょうじゅんそうび | TIÊU CHUẨN TRANG BỊ | Trang bị tiêu chuẩn |
| 大幅 | おおはば | ĐẠI BỨC | Đáng kể |
| 面積 | めんせき | DIỆN TÍCH | Diện tích |
| 最適 | さいてき | TỐI THÍCH | Phù hợp nhất |
| 燃費 | ねんぴ | NHIÊN PHÍ | Tiêu hao nhiên liệu |
| 軽油 | けいゆ | KHINH DU | Dầu diesel |
| ロータリー | ろーたりー | — | Máy phay đất |
| プラウ | ぷらう | — | Lưỡi cày |
| ハロー | はろー | — | Bừa |
| 畦塗り機 | あぜぬりき | UYỂN ĐỒ CƠ | Máy đắp bờ ruộng |
| 施肥機 | せひき | THI PHỆ CƠ | Máy bón phân |
| 容量 | ようりょう | DUNG LƯỢNG | Tải trọng |
| 運転席 | うんてんせき | VẬN CHUYỂN TỊCH | Ghế lái |
| 座席 | ざせき | TỌA TỊCH | Ghế |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 体重 | たいじゅう | THỂ TRỌNG | Cân nặng |
| 振動 | しんどう | CHẤN ĐỘNG | Rung |
| 吸収 | きゅうしゅう | HẤP THU | Hấp thụ |
| 推奨 | すいしょう | THÔI THƯỞNG | Khuyến nghị |
| 疲労 | ひろう | MỆT NHỌC | Mệt mỏi |
| 緊急停止 | きんきゅうていし | KHẨN CẤP ĐÌNH CHỈ | Dừng khẩn cấp |
| 装置 | そうち | TRANG TRÍ | Thiết bị |
| 解除 | かいじょ | GIẢI TRỪ | Mở khóa, hủy |
| 転倒防止 | てんとうぼうし | CHUYỂN ĐẢO PHÒNG CHỈ | Chống lật |
| 構造 | こうぞう | CẤU TẠO | Kết cấu |
| 必須 | ひっす | TẤT TU | Bắt buộc |
| 坂道 | さかみち | PHẢN ĐẠO | Đường dốc |
| 低速 | ていそく | ĐÊ TỐC | Tốc độ thấp |
| 制動 | せいどう | CHẾ ĐỘNG | Hãm, phanh |
| 動力 | どうりょく | ĐỘNG LỰC | Công suất |
| 動力取出し軸 | どうりょくとりだしじく | ĐỘNG LỰC THỦ XUẤT TRỤC | Trục PTO |
| 油圧 | ゆあつ | DU ÁP | Thủy lực |
| 系統 | けいとう | HỆ THỐNG | Mạch, hệ |
| 圧力 | あつりょく | ÁP LỰC | Áp suất |
| 領域 | りょういき | LÃNH VỰC | Vùng |
| 始動 | しどう | THỦY ĐỘNG | Khởi động |
| 駐車 | ちゅうしゃ | TRÚ XA | Đỗ xe |
| 変速 | へんそく | BIẾN TỐC | Số (hộp số) |
| 中立 | ちゅうりつ | TRUNG LẬP | Số mo, trung lập |
| 予熱 | よねつ | DỰ NHIỆT | Sấy, làm nóng trước |
| 異音 | いおん | DỊ ÂM | Tiếng lạ |
| 耕耘 | こううん | CANH VÂN | Cày bừa |
| 深さ | ふかさ | THÂM | Độ sâu |
| 接続 | せつぞく | TIẾP TỤC | Kết nối |
| 努力 | どりょく | NỖ LỰC | Cố gắng |
| 感覚 | かんかく | CẢM GIÁC | Cảm giác |
| 掴む | つかむ | TRẢO | Nắm bắt |
| 免許 | めんきょ | MIỄN HỨA | Bằng lái |
| 研修 | けんしゅう | NGHIÊN TU | Đào tạo, tập huấn |
| 農耕車 | のうこうしゃ | NÔNG CANH XA | Xe nông nghiệp |
| 大型特殊 | おおがたとくしゅ | ĐẠI HÌNH ĐẶC THÙ | Lớn đặc thù (loại bằng) |
| 労働安全衛生法 | ろうどうあんぜんえいせいほう | LAO ĐỘNG AN TOÀN VỆ SINH PHÁP | Luật an toàn vệ sinh lao động |
| 受講 | じゅこう | THỤ GIẢNG | Tham gia khóa học |
| 講習 | こうしゅう | GIẢNG TẬP | Khóa học |
| 始業前 | しぎょうまえ | THỦY NGHIỆP TIỀN | Trước ca làm |
| 冷却水 | れいきゃくすい | LÃNH KHƯỚC THỦY | Nước làm mát |
| 燃料 | ねんりょう | NHIÊN LIỆU | Nhiên liệu |
| 空気圧 | くうきあつ | KHÔNG KHÍ ÁP | Áp suất khí |
| 灯火類 | とうかるい | ĐĂNG HỎA LOẠI | Đèn các loại |
| 稼働 | かどう | GIÁ ĐỘNG | Vận hành |
| 間隔 | かんかく | GIAN CÁCH | Khoảng cách (thời gian) |
| 清掃 | せいそう | THANH SOÁT | Vệ sinh |
| 頻度 | ひんど | TẦN ĐỘ | Tần suất |
| 保証 | ほしょう | BẢO CHỨNG | Bảo hành |
| 延長 | えんちょう | DIÊN TRƯỜNG | Kéo dài |
| 故障 | こしょう | CỐ CHƯỚNG | Hỏng hóc |
| 警告灯 | けいこくとう | CẢNH CÁO ĐĂNG | Đèn cảnh báo |
| 点灯 | てんとう | ĐIỂM ĐĂNG | Bật sáng |
| 過熱 | かねつ | QUÁ NHIỆT | Quá nhiệt |
| 漏れる | もれる | LẬU | Rò rỉ |
| 接続部 | せつぞくぶ | TIẾP TỤC BỘ | Chỗ nối |
| 湿り | しめり | THẤP | Ẩm ướt |
| 初期不良 | しょきふりょう | SƠ KỲ BẤT LƯƠNG | Lỗi sản xuất ban đầu |
| 修理 | しゅうり | TU LÝ | Sửa chữa |
| 無償 | むしょう | VÔ THƯỞNG | Miễn phí |
| 範囲内 | はんいない | PHẠM VI NỘI | Trong phạm vi |
| 適切 | てきせつ | THÍCH THIẾT | Phù hợp, đúng đắn |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000008, 800000042, NULL, 'markdown_book', 'T8. Thi kentei SSW nông nghiệp (特定技能1号 試験)', '# Sách thực tập sinh nông nghiệp · T8. Thi kentei SSW nông nghiệp (特定技能1号 試験)

> **Mục tiêu nhân vật:** Linh (24 tuổi, N3+, リーダー Yamamoto-nōen Ibaraki). Học mẫu hội thoại tiếng Nhật khi chuẩn bị và đi thi 特定技能1号 nông nghiệp: nhận lịch thi từ 親方, đăng ký qua 試験運営機関 (NSF/ASAT), ôn 2 phần (耕種農業 hoặc 畜産農業 + 共通), luyện đề thực hành phân loại rau, hỏi sempai đã đỗ, phỏng vấn mock, đi thi và nghe phản hồi.

---

## Bối cảnh

Tháng 11 năm 2027. Linh đã đồng ý chuyển 特定技能1号 từ tháng 1/2028. Để đủ điều kiện cấp visa SSW1, Linh phải đỗ kỳ thi 農業技能測定試験 (NSF 制度) phần 耕種農業 (vì làm rau, không phải chăn nuôi). Linh đã có N3 nên miễn phần tiếng Nhật JFT-Basic. Cùng ôn có Wati (Indonesia) chuẩn bị thi tháng 12, và Carlo (Philippines) đã đỗ từ năm ngoái sẵn sàng chia sẻ. Chương này tập trung hội thoại ôn thi và phòng thi.

> ⚠️ Chú thích: Thông tin về 農業技能測定試験 cho 特定技能1号 mô tả theo quy định ASAT/NSF hiệu lực tại thời điểm 2027. Người học nên kiểm tra quy định hiện hành khi cần.

---

## Tình huống 1 — Văn phòng nông trại · 8:30, 親方 thông báo lịch thi đăng ký

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンちゃん、おはよう。<ruby>農業<rt>のうぎょう</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>申込<rt>もうしこ</rt></ruby>みが<ruby>始<rt>はじ</rt></ruby>まったよ。<br>*(Linh, chào buổi sáng. Đăng ký kỳ thi đo lường kỹ năng nông nghiệp đã mở rồi.)* |
| Linh | おはようございます。<ruby>今年度<rt>こんねんど</rt></ruby>のスケジュールは?<br>*(Chào buổi sáng. Lịch năm nay thế nào ạ?)* |
| Yamamoto | <ruby>12月<rt>じゅうにがつ</rt></ruby>15<ruby>日<rt>にち</rt></ruby>に<ruby>水戸市<rt>みとし</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>で<ruby>耕種農業<rt>こうしゅのうぎょう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>。<ruby>申込<rt>もうしこ</rt></ruby>みは<ruby>農林水産省<rt>のうりんすいさんしょう</rt></ruby><ruby>指定<rt>してい</rt></ruby>の<ruby>運営<rt>うんえい</rt></ruby><ruby>機関<rt>きかん</rt></ruby>のサイトから。<br>*(15/12 tại Mito kỳ thi 耕種農業. Đăng ký qua trang của cơ quan vận hành do Bộ Nông Lâm Thủy sản chỉ định.)* |
| Linh | <ruby>受験料<rt>じゅけんりょう</rt></ruby>は?<br>*(Lệ phí thi?)* |
| Yamamoto | 8000<ruby>円<rt>えん</rt></ruby>。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>負担<rt>ふたん</rt></ruby>するよ。リーダー<ruby>候補<rt>こうほ</rt></ruby>の<ruby>投資<rt>とうし</rt></ruby>。<br>*(8000 yên. Công ty trả. Đầu tư cho リーダー tương lai.)* |
| Linh | ありがとうございます。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みは<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にやります。<br>*(Cảm ơn. Em đăng ký trong hôm nay.)* |
| Yamamoto | <ruby>頑張<rt>がんば</rt></ruby>って。リンちゃんなら<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>できる。<br>*(Cố lên. Linh chắc chắn đỗ được.)* |

---

## Tình huống 2 — Ký túc xá · 19:00, đăng ký online cùng Wati

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、<ruby>私<rt>わたし</rt></ruby>も<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みたい。<ruby>一緒<rt>いっしょ</rt></ruby>にやろう。<br>*(Chị Linh, em cũng muốn đăng ký. Cùng làm đi.)* |
| Linh | いいよ。サイト<ruby>開<rt>あ</rt></ruby>くね。マイページ<ruby>登録<rt>とうろく</rt></ruby>から。<br>*(Được. Mở trang nha. Đăng ký My Page trước.)* |
| Wati | <ruby>必要書類<rt>ひつようしょるい</rt></ruby>は<ruby>何<rt>なに</rt></ruby>?<br>*(Cần giấy tờ gì?)* |
| Linh | <ruby>在留<rt>ざいりゅう</rt></ruby>カード、パスポート、<ruby>顔写真<rt>かおじゃしん</rt></ruby><ruby>電子<rt>でんし</rt></ruby>データ。あと<ruby>受験料<rt>じゅけんりょう</rt></ruby><ruby>振込<rt>ふりこみ</rt></ruby>の<ruby>口座番号<rt>こうざばんごう</rt></ruby>。<br>*(Thẻ lưu trú, hộ chiếu, ảnh chân dung file điện tử. Và số tài khoản chuyển lệ phí.)* |
| Wati | <ruby>顔写真<rt>かおじゃしん</rt></ruby>のサイズは?<br>*(Kích thước ảnh?)* |
| Linh | <ruby>縦<rt>たて</rt></ruby>4センチ×<ruby>横<rt>よこ</rt></ruby>3センチ、<ruby>背景白<rt>はいけいしろ</rt></ruby>、6ヶ<ruby>月以内<rt>げついない</rt></ruby><ruby>撮影<rt>さつえい</rt></ruby>。コンビニのプリント<ruby>機<rt>き</rt></ruby>で<ruby>撮<rt>と</rt></ruby>れるよ。<br>*(Dọc 4cm × ngang 3cm, nền trắng, chụp trong 6 tháng. Máy in tại konbini chụp được.)* |
| Wati | <ruby>明日<rt>あした</rt></ruby><ruby>撮<rt>と</rt></ruby>ってくる。リンさんは?<br>*(Mai em đi chụp. Chị Linh thì sao?)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>は<ruby>先週<rt>せんしゅう</rt></ruby><ruby>撮<rt>と</rt></ruby>った。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みできる。<br>*(Chị chụp tuần trước rồi. Đăng ký được.)* |

---

## Tình huống 3 — Phòng nghỉ nông trại · Buổi tối, hỏi Carlo người đã đỗ

| Vai | Lời thoại |
|---|---|
| Linh | Carloさん、<ruby>去年<rt>きょねん</rt></ruby><ruby>受<rt>う</rt></ruby>けたとき、どんな<ruby>問題<rt>もんだい</rt></ruby>が<ruby>出<rt>で</rt></ruby>ましたか?<br>*(Anh Carlo, năm ngoái thi anh, đề thế nào?)* |
| Carlo | <ruby>耕種農業<rt>こうしゅのうぎょう</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>、<ruby>共通問題<rt>きょうつうもんだい</rt></ruby>30<ruby>問<rt>もん</rt></ruby>+<ruby>専門<rt>せんもん</rt></ruby>30<ruby>問<rt>もん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby>60<ruby>分<rt>ぷん</rt></ruby>。マークシート。<br>*(Trường hợp 耕種農業, 30 câu chung + 30 câu chuyên môn. Tổng 60 phút. Bài tô.)* |
| Linh | <ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby>は?<br>*(Điểm đỗ?)* |
| Carlo | 65%。それより<ruby>大事<rt>だいじ</rt></ruby>なのは、<ruby>実技問題<rt>じつぎもんだい</rt></ruby>のような<ruby>写真<rt>しゃしん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<ruby>農機具<rt>のうきぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>、<ruby>農薬<rt>のうやく</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>、<ruby>病害虫<rt>びょうがいちゅう</rt></ruby>の<ruby>見分<rt>みわ</rt></ruby>け<ruby>方<rt>かた</rt></ruby>。<br>*(65%. Quan trọng hơn là nhiều câu ảnh giống thực hành. Tên dụng cụ, cách dùng nông dược, nhận biết sâu bệnh.)* |
| Linh | <ruby>農薬<rt>のうやく</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>って<ruby>具体的<rt>ぐたいてき</rt></ruby>にはどんな?<br>*(Câu hỏi nông dược cụ thể thế nào?)* |
| Carlo | 「<ruby>希釈倍率<rt>きしゃくばいりつ</rt></ruby>1000<ruby>倍<rt>ばい</rt></ruby>で200リットル<ruby>作<rt>つく</rt></ruby>る<ruby>場合<rt>ばあい</rt></ruby>、<ruby>原液<rt>げんえき</rt></ruby><ruby>何<rt>なん</rt></ruby>ミリリットル<ruby>必要<rt>ひつよう</rt></ruby>?」とか。<ruby>計算<rt>けいさん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>もある。<br>*(Như "Pha loãng 1000 lần, làm 200 lít, dung dịch gốc cần bao nhiêu ml?". Có câu tính toán.)* |
| Linh | 200,000÷1000=200ミリリットル。<br>*(200,000÷1000=200ml.)* |
| Carlo | <ruby>正解<rt>せいかい</rt></ruby>!<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、リンさん<ruby>余裕<rt>よゆう</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>。<br>*(Đúng! Yên tâm, em đỗ thoải mái.)* |

---

## Tình huống 4 — Nhà kính cà chua · 14:00, ôn thực hành phân loại rau

*Wati và Linh đứng cạnh bàn phân loại. Trên bàn có 30 quả cà chua đủ size.*

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、<ruby>等級<rt>とうきゅう</rt></ruby><ruby>分<rt>わ</rt></ruby>けの<ruby>基準<rt>きじゅん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Chị Linh, ôn lại tiêu chí phân loại đi.)* |
| Linh | うん。<ruby>大玉<rt>おおだま</rt></ruby>トマトの<ruby>規格<rt>きかく</rt></ruby>は、L<ruby>玉<rt>だま</rt></ruby>が200グラム<ruby>以上<rt>いじょう</rt></ruby>、M<ruby>玉<rt>だま</rt></ruby>が150-200グラム、S<ruby>玉<rt>だま</rt></ruby>が100-150グラム。<br>*(Ờ. Quy cách cà chua quả lớn: L ≥200g, M 150-200g, S 100-150g.)* |
| Wati | <ruby>形<rt>かたち</rt></ruby>は?<br>*(Hình dạng?)* |
| Linh | <ruby>秀品<rt>しゅうひん</rt></ruby>は<ruby>球形<rt>きゅうけい</rt></ruby>、<ruby>傷<rt>きず</rt></ruby>なし、<ruby>色<rt>いろ</rt></ruby>むらなし。<ruby>優品<rt>ゆうひん</rt></ruby>は<ruby>軽<rt>かる</rt></ruby>い<ruby>変形<rt>へんけい</rt></ruby>OK。<ruby>良品<rt>りょうひん</rt></ruby>は<ruby>変形<rt>へんけい</rt></ruby><ruby>大<rt>だい</rt></ruby>でも<ruby>食<rt>た</rt></ruby>べられればOK。<br>*(Hàng tú: cầu, không xước, không vệt. Hàng ưu: biến dạng nhẹ OK. Hàng lương: biến dạng to nhưng ăn được OK.)* |
| Wati | じゃあこれは?(cầm 1 quả)<br>*(Thế quả này?)* |
| Linh | (cân) 180グラム。<ruby>形<rt>かたち</rt></ruby>はきれい。<ruby>色<rt>いろ</rt></ruby>もOK。M<ruby>玉<rt>だま</rt></ruby>・<ruby>秀品<rt>しゅうひん</rt></ruby>ね。<br>*(180g. Hình đẹp. Màu OK. Loại M・hàng tú.)* |
| Wati | これは?(cầm quả lệch)<br>*(Quả này?)* |
| Linh | 220グラム、<ruby>形<rt>かたち</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>歪<rt>ゆが</rt></ruby>んでる。L<ruby>玉<rt>だま</rt></ruby>・<ruby>優品<rt>ゆうひん</rt></ruby>。<br>*(220g, hình hơi méo. L・hàng ưu.)* |
| Wati | <ruby>練習<rt>れんしゅう</rt></ruby>すると<ruby>覚<rt>おぼ</rt></ruby>えるね。<br>*(Luyện thì nhớ ha.)* |

---

## Tình huống 5 — Nhà kính dưa leo · 15:30, ôn 病害虫 nhận diện

| Vai | Lời thoại |
|---|---|
| Linh | この<ruby>葉<rt>は</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>に<ruby>白<rt>しろ</rt></ruby>い<ruby>点<rt>てん</rt></ruby>がある。<ruby>何<rt>なに</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う?<br>*(Mặt dưới lá này có chấm trắng. Em nghĩ là gì?)* |
| Wati | <ruby>粉<rt>こな</rt></ruby><ruby>状<rt>じょう</rt></ruby>?それともポツポツ?<br>*(Dạng bột? Hay chấm chấm?)* |
| Linh | <ruby>粉<rt>こな</rt></ruby><ruby>状<rt>じょう</rt></ruby>。<br>*(Dạng bột.)* |
| Wati | うどんこ<ruby>病<rt>びょう</rt></ruby>!<ruby>白<rt>しろ</rt></ruby>いカビ。<ruby>湿度<rt>しつど</rt></ruby><ruby>高<rt>たか</rt></ruby>いと<ruby>出<rt>で</rt></ruby>る。<br>*(Bệnh phấn trắng! Mốc trắng. Độ ẩm cao thì xuất hiện.)* |
| Linh | <ruby>正解<rt>せいかい</rt></ruby>!<ruby>対策<rt>たいさく</rt></ruby>は?<br>*(Đúng! Đối sách?)* |
| Wati | <ruby>換気<rt>かんき</rt></ruby>を<ruby>良<rt>よ</rt></ruby>くする、<ruby>水<rt>みず</rt></ruby>のかけすぎ<ruby>注意<rt>ちゅうい</rt></ruby>、<ruby>初期<rt>しょき</rt></ruby>なら<ruby>重曹<rt>じゅうそう</rt></ruby><ruby>水<rt>すい</rt></ruby><ruby>散布<rt>さんぷ</rt></ruby>、<ruby>進<rt>すす</rt></ruby>んだら<ruby>農薬<rt>のうやく</rt></ruby>。<br>*(Thông thoáng, tránh tưới nhiều, đầu thì xịt nước baking soda, nặng thì nông dược.)* |
| Linh | じゃあこの<ruby>虫<rt>むし</rt></ruby>は?(chỉ vào lá có lỗ thủng nhỏ)<br>*(Còn con sâu này?)* |
| Wati | <ruby>葉<rt>は</rt></ruby>に<ruby>小<rt>ちい</rt></ruby>さい<ruby>穴<rt>あな</rt></ruby>...アザミウマかな?<br>*(Lỗ nhỏ trên lá... bọ trĩ chăng?)* |
| Linh | <ruby>正解<rt>せいかい</rt></ruby>。アザミウマは<ruby>葉<rt>は</rt></ruby>の<ruby>汁<rt>しる</rt></ruby>を<ruby>吸<rt>す</rt></ruby>うから<ruby>葉<rt>は</rt></ruby>が<ruby>白<rt>しろ</rt></ruby>っぽくなる。<ruby>黄色<rt>きいろ</rt></ruby>の<ruby>粘着<rt>ねんちゃく</rt></ruby>テープで<ruby>捕<rt>と</rt></ruby>る。<br>*(Đúng. Bọ trĩ hút nhựa lá nên lá trắng nhợt. Dùng băng dính vàng bắt.)* |

---

## Tình huống 6 — Phòng họp nông trại · 17:00, mock kentei với 親方 hỏi miệng

| Vai | Lời thoại |
|---|---|
| Yamamoto | じゃあ<ruby>口頭<rt>こうとう</rt></ruby>で<ruby>模擬<rt>もぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>するよ。<ruby>第<rt>だい</rt></ruby>1<ruby>問<rt>もん</rt></ruby>。<ruby>農薬<rt>のうやく</rt></ruby>の<ruby>散布<rt>さんぷ</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>すべき3つは?<br>*(Tôi hỏi miệng mock thi nhé. Câu 1. Trước khi phun nông dược nhất định kiểm tra 3 điều gì?)* |
| Linh | ①<ruby>農薬<rt>のうやく</rt></ruby>の<ruby>登録<rt>とうろく</rt></ruby>と<ruby>適用作物<rt>てきようさくもつ</rt></ruby>、②<ruby>希釈倍率<rt>きしゃくばいりつ</rt></ruby>、③<ruby>使用回数<rt>しようかいすう</rt></ruby>と<ruby>収穫前<rt>しゅうかくまえ</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>。<br>*(①Đăng ký nông dược và cây trồng áp dụng, ②tỷ lệ pha loãng, ③số lần dùng và số ngày trước thu hoạch.)* |
| Yamamoto | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>第<rt>だい</rt></ruby>2<ruby>問<rt>もん</rt></ruby>。<ruby>有機<rt>ゆうき</rt></ruby>JASの<ruby>認証<rt>にんしょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるためには<ruby>何年<rt>なんねん</rt></ruby>の<ruby>転換期<rt>てんかんき</rt></ruby><ruby>間<rt>かん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>?<br>*(Hoàn hảo. Câu 2. Để được chứng nhận JAS hữu cơ cần bao nhiêu năm chuyển đổi?)* |
| Linh | <ruby>多年生<rt>たねんせい</rt></ruby><ruby>作物<rt>さくもつ</rt></ruby>は3<ruby>年<rt>ねん</rt></ruby>、<ruby>多年生<rt>たねんせい</rt></ruby><ruby>以外<rt>いがい</rt></ruby>は2<ruby>年<rt>ねん</rt></ruby>。<br>*(Cây lâu năm 3 năm, không phải lâu năm 2 năm.)* |
| Yamamoto | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>第<rt>だい</rt></ruby>3<ruby>問<rt>もん</rt></ruby>。<ruby>労働<rt>ろうどう</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>法<rt>ほう</rt></ruby>で<ruby>農薬<rt>のうやく</rt></ruby><ruby>散布時<rt>さんぷじ</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>保護具<rt>ほごぐ</rt></ruby>は?<br>*(Đúng. Câu 3. Theo Luật ATVSLĐ, phun nông dược cần bảo hộ gì?)* |
| Linh | マスク、<ruby>防護服<rt>ぼうごふく</rt></ruby>、ゴーグル、<ruby>長靴<rt>ながぐつ</rt></ruby>、<ruby>手袋<rt>てぶくろ</rt></ruby>、<ruby>帽子<rt>ぼうし</rt></ruby>。<ruby>散布後<rt>さんぷご</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ずシャワーで<ruby>洗<rt>あら</rt></ruby>う。<br>*(Mặt nạ, đồ bảo hộ, kính, ủng, găng, mũ. Sau khi phun phải tắm rửa.)* |
| Yamamoto | リンちゃん、<ruby>合格<rt>ごうかく</rt></ruby><ruby>間違<rt>まちが</rt></ruby>いなしだね。<br>*(Linh, chắc đỗ không sai.)* |

---

## Tình huống 7 — Ký túc xá · 21:00, ôn 共通問題 — luật lao động & hỗ trợ ngoại quốc

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、<ruby>共通問題<rt>きょうつうもんだい</rt></ruby>って<ruby>何<rt>なに</rt></ruby>?<br>*(Chị Linh, câu hỏi chung là gì?)* |
| Linh | <ruby>農業<rt>のうぎょう</rt></ruby><ruby>全般<rt>ぜんぱん</rt></ruby>+ベーシック<ruby>法令<rt>ほうれい</rt></ruby>。<ruby>労働基準法<rt>ろうどうきじゅんほう</rt></ruby>、<ruby>農薬取締法<rt>のうやくとりしまりほう</rt></ruby>、<ruby>食品衛生法<rt>しょくひんえいせいほう</rt></ruby>、<ruby>有機<rt>ゆうき</rt></ruby>JAS<ruby>法<rt>ほう</rt></ruby>。<br>*(Tổng quát nông nghiệp + luật cơ bản. Luật tiêu chuẩn lao động, luật kiểm soát nông dược, luật vệ sinh thực phẩm, luật JAS hữu cơ.)* |
| Wati | <ruby>労働基準法<rt>ろうどうきじゅんほう</rt></ruby>って<ruby>農業<rt>のうぎょう</rt></ruby>にも<ruby>適用<rt>てきよう</rt></ruby>?<br>*(Luật tiêu chuẩn lao động cũng áp dụng cho nông nghiệp?)* |
| Linh | <ruby>適用<rt>てきよう</rt></ruby>される。でも<ruby>労働時間<rt>ろうどうじかん</rt></ruby>と<ruby>休憩<rt>きゅうけい</rt></ruby>と<ruby>休日<rt>きゅうじつ</rt></ruby>の<ruby>規定<rt>きてい</rt></ruby>は<ruby>除外<rt>じょがい</rt></ruby>。<ruby>農業<rt>のうぎょう</rt></ruby>は<ruby>天候<rt>てんこう</rt></ruby>に<ruby>左右<rt>さゆう</rt></ruby>されるから。<br>*(Có áp dụng. Nhưng quy định giờ làm, nghỉ giữa ca, ngày nghỉ thì loại trừ. Vì nông nghiệp phụ thuộc thời tiết.)* |
| Wati | え、<ruby>残業代<rt>ざんぎょうだい</rt></ruby><ruby>付<rt>つ</rt></ruby>かないの?<br>*(Ơ, tăng ca không được trả à?)* |
| Linh | <ruby>法律上<rt>ほうりつじょう</rt></ruby>は<ruby>義務<rt>ぎむ</rt></ruby>ではないけど、ちゃんとした<ruby>農家<rt>のうか</rt></ruby>は<ruby>払<rt>はら</rt></ruby>う。<ruby>山本<rt>やまもと</rt></ruby>ファームは<ruby>払<rt>はら</rt></ruby>ってくれる。<br>*(Luật không bắt buộc nhưng nông trại tử tế thì trả. Yamamoto-nōen có trả.)* |
| Wati | <ruby>有給<rt>ゆうきゅう</rt></ruby>と<ruby>社会保険<rt>しゃかいほけん</rt></ruby>は?<br>*(Nghỉ phép và bảo hiểm xã hội?)* |
| Linh | これは<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>適用<rt>てきよう</rt></ruby>。<ruby>有給<rt>ゆうきゅう</rt></ruby>は<ruby>勤続<rt>きんぞく</rt></ruby>6ヶ<ruby>月<rt>げつ</rt></ruby>で10<ruby>日<rt>か</rt></ruby>。<ruby>健康保険<rt>けんこうほけん</rt></ruby>、<ruby>厚生年金<rt>こうせいねんきん</rt></ruby>、<ruby>雇用保険<rt>こようほけん</rt></ruby>、<ruby>労災<rt>ろうさい</rt></ruby>。<br>*(Cái này áp dụng hết. Phép sau 6 tháng được 10 ngày. Bảo hiểm y tế, lương hưu, thất nghiệp, tai nạn lao động.)* |

---

## Tình huống 8 — Ký túc xá · Tuần trước thi, ôn nhanh lần cuối

| Vai | Lời thoại |
|---|---|
| Linh | Watiちゃん、<ruby>明日<rt>あした</rt></ruby><ruby>水戸<rt>みと</rt></ruby>に<ruby>行<rt>い</rt></ruby>くね。<ruby>会場<rt>かいじょう</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>した?<br>*(Wati, mai đi Mito nhé. Đã xác nhận địa điểm chưa?)* |
| Wati | <ruby>水戸<rt>みと</rt></ruby><ruby>商工<rt>しょうこう</rt></ruby>会議<ruby>所<rt>しょ</rt></ruby>。<ruby>駅<rt>えき</rt></ruby>から<ruby>歩<rt>ある</rt></ruby>いて10<ruby>分<rt>ぷん</rt></ruby>。<br>*(Phòng thương mại Mito. 10 phút đi bộ từ ga.)* |
| Linh | <ruby>持<rt>も</rt></ruby>ち<ruby>物<rt>もの</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カード、<ruby>鉛筆<rt>えんぴつ</rt></ruby>2B、<ruby>消<rt>け</rt></ruby>しゴム、<ruby>腕時計<rt>うでどけい</rt></ruby>。スマホは<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>。<br>*(Kiểm đồ. Phiếu dự thi, thẻ cư trú, bút chì 2B, tẩy, đồng hồ. Smartphone cấm mang vào.)* |
| Wati | <ruby>電子<rt>でんし</rt></ruby><ruby>辞書<rt>じしょ</rt></ruby>は?<br>*(Từ điển điện tử?)* |
| Linh | <ruby>禁止<rt>きんし</rt></ruby>。<ruby>計算機<rt>けいさんき</rt></ruby>も<ruby>禁止<rt>きんし</rt></ruby>。<ruby>計算<rt>けいさん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>は<ruby>暗算<rt>あんざん</rt></ruby>か<ruby>問題用紙<rt>もんだいようし</rt></ruby>の<ruby>余白<rt>よはく</rt></ruby>で。<br>*(Cấm. Máy tính cũng cấm. Câu tính toán nhẩm hoặc dùng giấy nháp đề.)* |
| Wati | <ruby>緊張<rt>きんちょう</rt></ruby>するな。<br>*(Hồi hộp quá.)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>準備<rt>じゅんび</rt></ruby>はばっちり。<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>よう。<br>*(Yên tâm, chuẩn bị kỹ rồi. Ngủ sớm thôi.)* |

---

## Tình huống 9 — Tàu điện đi Mito · 7:00 ngày thi

*Linh và Wati ngồi cạnh nhau trên tàu Joban Line từ Toride đi Mito.*

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、<ruby>緊張<rt>きんちょう</rt></ruby>するときどうしてる?<br>*(Chị Linh, hồi hộp thì làm gì?)* |
| Linh | <ruby>深呼吸<rt>しんこきゅう</rt></ruby>。あとは「<ruby>分<rt>わ</rt></ruby>からなくても<ruby>後<rt>あと</rt></ruby>でやる」と<ruby>思<rt>おも</rt></ruby>う。<ruby>難<rt>むずか</rt></ruby>しい<ruby>問題<rt>もんだい</rt></ruby>で<ruby>止<rt>と</rt></ruby>まらない。<br>*(Hít sâu. Rồi tự nghĩ "không hiểu để lại sau". Không dừng ở câu khó.)* |
| Wati | はい。<br>*(Vâng.)* |
| Linh | あと、<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>消去法<rt>しょうきょほう</rt></ruby>で<ruby>絞<rt>しぼ</rt></ruby>る。<ruby>明<rt>あき</rt></ruby>らかに<ruby>違<rt>ちが</rt></ruby>うものを<ruby>外<rt>はず</rt></ruby>すと2つに<ruby>絞<rt>しぼ</rt></ruby>れる。<br>*(Rồi loại trừ đáp án. Loại cái rõ ràng sai thì còn 2.)* |
| Wati | わかった。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Em rõ. Cố lên nào.)* |

---

## Tình huống 10 — Phòng thi Mito 商工会議所 · 9:30, giám thị brief

| Vai | Lời thoại |
|---|---|
| 試験官 | これより<ruby>農業<rt>のうぎょう</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>・<ruby>耕種農業<rt>こうしゅのうぎょう</rt></ruby><ruby>区分<rt>くぶん</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>します。<br>*(Bắt đầu kỳ thi Đo lường kỹ năng nông nghiệp — phân loại 耕種農業.)* |
| 試験官 | <ruby>試験時間<rt>しけんじかん</rt></ruby>は60<ruby>分<rt>ぷん</rt></ruby>。<ruby>問題<rt>もんだい</rt></ruby>は60<ruby>問<rt>もん</rt></ruby>。マークシート<ruby>方式<rt>ほうしき</rt></ruby>。<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証<rt>みぶんしょう</rt></ruby>を<ruby>机<rt>つくえ</rt></ruby>の<ruby>右上<rt>みぎうえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<br>*(60 phút, 60 câu, tô đáp án. Phiếu dự thi và CMND để góc trên phải bàn.)* |
| 試験官 | <ruby>問題<rt>もんだい</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からない<ruby>場合<rt>ばあい</rt></ruby>は<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げてください。<ruby>翻訳<rt>ほんやく</rt></ruby>はしませんが、<ruby>問題用紙<rt>もんだいようし</rt></ruby>の<ruby>不備<rt>ふび</rt></ruby>などにはお<ruby>答<rt>こた</rt></ruby>えします。<br>*(Không hiểu đề thì giơ tay. Chúng tôi không dịch, nhưng nếu đề lỗi sẽ giải đáp.)* |
| 試験官 | <ruby>不正行為<rt>ふせいこうい</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>、<ruby>退室<rt>たいしつ</rt></ruby>+<ruby>無効<rt>むこう</rt></ruby>+5<ruby>年間<rt>ねんかん</rt></ruby><ruby>受験禁止<rt>じゅけんきんし</rt></ruby>。それでは、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Phát hiện gian lận: ra khỏi phòng, hủy bài, cấm thi 5 năm. Bắt đầu nào.)* |
| Linh | (in trong đầu) <ruby>深呼吸<rt>しんこきゅう</rt></ruby>...<ruby>始<rt>はじ</rt></ruby>めよう。<br>*(Hít sâu... bắt đầu nào.)* |

---

## Tình huống 11 — Phòng thi · 10:00, giữa giờ thi Linh gặp câu khó, hỏi giám thị

| Vai | Lời thoại |
|---|---|
| Linh | (giơ tay) すみません。<br>*(Xin lỗi.)* |
| 試験官 | (đi tới) どうしましたか?<br>*(Có chuyện gì?)* |
| Linh | (chỉ vào đề) この<ruby>問題<rt>もんだい</rt></ruby>23<ruby>番<rt>ばん</rt></ruby>、<ruby>写真<rt>しゃしん</rt></ruby>が<ruby>不鮮明<rt>ふせんめい</rt></ruby>です。<ruby>葉<rt>は</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>がよく<ruby>見<rt>み</rt></ruby>えません。<br>*(Câu 23, ảnh không rõ. Em không nhìn rõ màu lá.)* |
| 試験官 | <ruby>確認<rt>かくにん</rt></ruby>します。(xem) あ、<ruby>印刷<rt>いんさつ</rt></ruby>の<ruby>不備<rt>ふび</rt></ruby>ですね。<ruby>予備<rt>よび</rt></ruby><ruby>用紙<rt>ようし</rt></ruby>に<ruby>差<rt>さ</rt></ruby>し<ruby>替<rt>か</rt></ruby>えます。<br>*(Để tôi kiểm. À, lỗi in. Đổi cho em tờ dự phòng.)* |
| Linh | ありがとうございます。<br>*(Em cảm ơn.)* |

---

## Tình huống 12 — Trước phòng thi · 11:00, xong thi gặp Wati

| Vai | Lời thoại |
|---|---|
| Wati | リンさん、どうだった?<br>*(Chị Linh, sao rồi?)* |
| Linh | <ruby>多分<rt>たぶん</rt></ruby>OK。<ruby>計算<rt>けいさん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>が3<ruby>問<rt>もん</rt></ruby>あって、<ruby>農薬<rt>のうやく</rt></ruby><ruby>希釈<rt>きしゃく</rt></ruby>と<ruby>肥料<rt>ひりょう</rt></ruby><ruby>配合<rt>はいごう</rt></ruby>。<ruby>難<rt>むずか</rt></ruby>しかったのは<ruby>有機<rt>ゆうき</rt></ruby>JASの<ruby>細<rt>こま</rt></ruby>かい<ruby>規定<rt>きてい</rt></ruby>。Watiちゃんは?<br>*(Chắc OK. 3 câu tính: pha nông dược và phối hợp phân bón. Khó là quy định chi tiết JAS hữu cơ. Wati sao?)* |
| Wati | <ruby>共通<rt>きょうつう</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>専門<rt>せんもん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>はちょっと<ruby>自信<rt>じしん</rt></ruby>ない。<ruby>病気<rt>びょうき</rt></ruby>の<ruby>写真<rt>しゃしん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>かった。<br>*(Phần chung OK. Phần chuyên môn không tự tin. Nhiều câu ảnh bệnh.)* |
| Linh | <ruby>結果<rt>けっか</rt></ruby>は2<ruby>週間後<rt>しゅうかんご</rt></ruby>。とりあえずお<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>。<ruby>水戸<rt>みと</rt></ruby>でラーメン<ruby>食<rt>た</rt></ruby>べて<ruby>帰<rt>かえ</rt></ruby>ろう。<br>*(Kết quả 2 tuần sau. Tạm thời vất vả rồi. Ăn ramen ở Mito rồi về.)* |
| Wati | <ruby>賛成<rt>さんせい</rt></ruby>!<br>*(Đồng ý!)* |

---

## Tình huống 13 — Văn phòng nông trại · 2 tuần sau, mở kết quả online

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンちゃん、<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby><ruby>日<rt>び</rt></ruby>だね。マイページ<ruby>開<rt>あ</rt></ruby>けて。<br>*(Linh, hôm nay công bố kết quả. Mở My Page.)* |
| Linh | (mở laptop, login) ログインします...<ruby>結果<rt>けっか</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>...<br>*(Đăng nhập... hiển thị kết quả...)* |
| Linh | (đọc) 「<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>得点<rt>とくてん</rt></ruby>82<ruby>点<rt>てん</rt></ruby>/100<ruby>点<rt>てん</rt></ruby>」<br>*("Đỗ. Điểm 82/100")* |
| Yamamoto | やった!82<ruby>点<rt>てん</rt></ruby>は<ruby>立派<rt>りっぱ</rt></ruby>だ。<br>*(Tuyệt! 82 điểm là xuất sắc.)* |
| Linh | (cảm động) ありがとうございます...<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn... em thực sự vui mừng.)* |
| Yamamoto | これで<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby><ruby>揃<rt>そろ</rt></ruby>った。<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めよう。<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>する。<br>*(Đủ điều kiện 特定技能1号 nông nghiệp. Tháng sau bắt đầu thủ tục đổi tư cách lưu trú. Tôi liên hệ cơ quan đăng ký hỗ trợ.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。Watiちゃんの<ruby>結果<rt>けっか</rt></ruby>もみてみます。<br>*(Vâng. Để em xem kết quả Wati luôn.)* |

---

## Tình huống 14 — Nhà kính cà chua · Wati kết quả

| Vai | Lời thoại |
|---|---|
| Wati | (chạy vào, hớt hải) リンさん、リンさん!<br>*(Chị Linh, chị Linh!)* |
| Linh | どう?<br>*(Sao?)* |
| Wati | <ruby>不合格<rt>ふごうかく</rt></ruby>...62<ruby>点<rt>てん</rt></ruby>。あと3<ruby>点<rt>てん</rt></ruby>だった。<br>*(Trượt... 62 điểm. Thiếu 3 điểm.)* |
| Linh | (ôm Wati) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>次回<rt>じかい</rt></ruby>3<ruby>月<rt>がつ</rt></ruby>にまた<ruby>受<rt>う</rt></ruby>けられるよ。3ヶ<ruby>月<rt>げつ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>すれば<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>する。<br>*(Không sao, không sao. Tháng 3 thi lại được. Luyện 3 tháng nữa chắc chắn đỗ.)* |
| Wati | <ruby>恥<rt>は</rt></ruby>ずかしい...<br>*(Xấu hổ...)* |
| Linh | <ruby>恥<rt>は</rt></ruby>ずかしくないよ。<ruby>初回<rt>しょかい</rt></ruby>の<ruby>合格率<rt>ごうかくりつ</rt></ruby>は60%くらい。Watiちゃんの<ruby>苦手<rt>にがて</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>復習<rt>ふくしゅう</rt></ruby>しよう。リーダーとして<ruby>応援<rt>おうえん</rt></ruby>するから。<br>*(Không xấu hổ. Tỷ lệ đỗ lần đầu khoảng 60%. Phần em yếu chị ôn cùng. Chị làm リーダー sẽ ủng hộ em.)* |
| Wati | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em nhờ chị.)* |

---

## Tình huống 15 — Ký túc xá · Tối cùng ngày, gọi điện về Việt Nam

> Cảnh tiếng Việt — gọi về Đồng Tháp.

| Vai | Lời thoại |
|---|---|
| Linh | Mẹ ơi, con đỗ rồi. |
| Mẹ | Trời ơi, con đỗ thiệt hả? Mẹ mừng quá! |
| Linh | Dạ, 82 trên 100. Tiêu chuẩn đỗ là 65 nên dư nhiều. |
| Mẹ | Ba ơi, Linh đỗ kentei rồi nè! |
| Ba | Ờ, ba nghe. Giỏi giỏi. Vậy là từ tháng 1 chính thức làm SSW1 đúng không? |
| Linh | Dạ. Ông chủ liên hệ cơ quan đăng ký hỗ trợ để đổi visa rồi. Visa SSW1 mất khoảng 2 tháng. |
| Mẹ | Lương 24 vạn yên một tháng đó hả? |
| Linh | Dạ. Hợp đồng 3 năm. Sau 3 năm con sẽ tính việc về quê mở vườn cà chua nhà kính. |
| Ba | Cứ vậy mà tiến. À, mà nhỏ Wati ra sao? |
| Linh | Nhỏ Wati trượt 3 điểm. Tháng 3 thi lại. Con sẽ giúp nhỏ ôn. |
| Mẹ | Tội nghiệp. Con làm リーダー rồi phải lo cho em út. |
| Linh | Dạ, đó là trách nhiệm. Mà mẹ ơi, Tết tây này con xin nghỉ 2 tuần về Việt Nam. Mẹ chuẩn bị bánh tét nha. |
| Mẹ | Chắc chắn rồi, mẹ gói cho con bánh tét nhân chuối nhân đậu xanh, mỗi loại 5 đòn. |
| Linh | Dạ con thèm bánh tét lắm! Con sẽ gọi báo cụ thể ngày sau. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜の申込みが始まりました** — Đăng ký… đã bắt đầu
- **〜が必要 + 持ち物** — Cần (giấy tờ, vật dụng)
- **〜を確認する** — Xác nhận, kiểm tra
- **手を挙げてください** — Giơ tay (trong phòng thi)
- **印刷の不備** — Lỗi in
- **〜には自信ない** — Không tự tin về…
- **次回〜にまた受けられる** — Lần sau có thể thi lại vào…
- **〜として応援する** — Với tư cách… ủng hộ

> Từ vựng & mẫu câu chương này: 農業技能測定試験・耕種農業・畜産農業・特定技能1号・運営機関・申込・受験料・在留カード・顔写真・合格点・等級分け・秀品・優品・良品・希釈倍率・原液・うどんこ病・アザミウマ・粘着テープ・農薬取締法・食品衛生法・有機JAS法・転換期間・労働基準法適用除外・予備用紙・不正行為・受験禁止・合格率・登録支援機関。

---

## Bí quyết chương

- **農業技能測定試験**: chia 2 phân loại — 耕種農業 (trồng trọt: rau, lúa) và 畜産農業 (chăn nuôi). Chọn theo công việc thực tế.
- **65% là điểm đỗ** — không cần 100. Loại trừ đáp án rõ sai trước, hỏi lại đề có lỗi in.
- **Phòng thi**: smartphone・máy tính cấm. Đồng hồ analog mang được.
- **農業 đặc thù trong 労働基準法**: được loại trừ quy định giờ làm/nghỉ, NHƯNG bảo hiểm + nghỉ phép vẫn áp dụng đầy đủ.
- Khi đồng nghiệp trượt: KHÔNG nói "Tại sao trượt?" → dùng "次回頑張ろう / 一緒に復習しよう" (cùng cố lần sau, cùng ôn lại).
- **〜として応援する** — biểu hiện vai trò リーダー, không chỉ làm việc mà còn nâng đỡ tinh thần đàn em.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 農業技能測定試験 | のうぎょうぎのうそくていしけん | NÔNG NGHIỆP KỸ NĂNG TRẮC ĐỊNH THÍ NGHIỆM | Thi đo lường kỹ năng nông nghiệp |
| 耕種農業 | こうしゅのうぎょう | CANH CHỦNG NÔNG NGHIỆP | Nông nghiệp trồng trọt |
| 畜産農業 | ちくさんのうぎょう | SÚC SẢN NÔNG NGHIỆP | Nông nghiệp chăn nuôi |
| 申込み | もうしこみ | THÂN VIÊN | Đăng ký |
| 年度 | ねんど | NIÊN ĐỘ | Năm tài khóa |
| 会場 | かいじょう | HỘI TRƯỜNG | Địa điểm |
| 農林水産省 | のうりんすいさんしょう | NÔNG LÂM THỦY SẢN TỈNH | Bộ Nông Lâm Thủy sản |
| 指定 | してい | CHỈ ĐỊNH | Chỉ định |
| 運営機関 | うんえいきかん | VẬN DOANH CƠ QUAN | Cơ quan vận hành |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | Lệ phí thi |
| 投資 | とうし | ĐẦU TƯ | Đầu tư |
| 在留カード | ざいりゅうかーど | TẠI LƯU | Thẻ cư trú |
| 顔写真 | かおじゃしん | NHAN TẢ CHÂN | Ảnh chân dung |
| 撮影 | さつえい | NHIẾP ẢNH | Chụp ảnh |
| 共通問題 | きょうつうもんだい | CỘNG THÔNG VẤN ĐỀ | Câu hỏi chung |
| 専門 | せんもん | CHUYÊN MÔN | Chuyên môn |
| 合格点 | ごうかくてん | HỢP CÁCH ĐIỂM | Điểm đỗ |
| 実技問題 | じつぎもんだい | THỰC KỸ VẤN ĐỀ | Câu hỏi thực hành |
| 農機具 | のうきぐ | NÔNG CƠ CỤ | Dụng cụ nông nghiệp |
| 農薬 | のうやく | NÔNG DƯỢC | Thuốc nông nghiệp |
| 病害虫 | びょうがいちゅう | BỆNH HẠI TRÙNG | Sâu bệnh |
| 見分け方 | みわけかた | KIẾN PHÂN | Cách phân biệt |
| 希釈倍率 | きしゃくばいりつ | HY THÍCH BỘI SUẤT | Tỷ lệ pha loãng |
| 原液 | げんえき | NGUYÊN DỊCH | Dung dịch gốc |
| 計算問題 | けいさんもんだい | KẾ TOÁN VẤN ĐỀ | Câu hỏi tính toán |
| 等級分け | とうきゅうわけ | ĐẲNG CẤP PHÂN | Phân loại |
| 規格 | きかく | QUY CÁCH | Quy cách |
| 秀品 | しゅうひん | TÚ PHẨM | Hàng loại 1 (tú) |
| 優品 | ゆうひん | ƯU PHẨM | Hàng loại 2 (ưu) |
| 良品 | りょうひん | LƯƠNG PHẨM | Hàng loại 3 (lương) |
| 球形 | きゅうけい | CẦU HÌNH | Hình cầu |
| 変形 | へんけい | BIẾN HÌNH | Biến dạng |
| 色むら | いろむら | SẮC | Vệt màu, lem màu |
| うどんこ病 | うどんこびょう | — BỆNH | Bệnh phấn trắng |
| アザミウマ | あざみうま | — | Bọ trĩ |
| 粘着テープ | ねんちゃくてーぷ | NIÊM TRƯỚC | Băng dính |
| 換気 | かんき | HOÁN KHÍ | Thông gió |
| 重曹 | じゅうそう | TRỌNG TÀO | Baking soda |
| 散布 | さんぷ | TÁN BỐ | Phun, rắc |
| 模擬試験 | もぎしけん | MÔ NGHỊ THÍ NGHIỆM | Thi mock, thi thử |
| 登録 | とうろく | ĐĂNG LỤC | Đăng ký |
| 適用作物 | てきようさくもつ | THÍCH DỤNG TÁC VẬT | Cây trồng được áp dụng |
| 使用回数 | しようかいすう | SỬ DỤNG HỒI SỐ | Số lần dùng |
| 収穫前日数 | しゅうかくまえにっすう | THU HOẠCH TIỀN NHẬT SỐ | Số ngày trước thu hoạch |
| 有機JAS | ゆうきじゃす | HỮU CƠ | JAS hữu cơ |
| 転換期間 | てんかんきかん | CHUYỂN HOÁN KỲ GIAN | Thời gian chuyển đổi |
| 多年生 | たねんせい | ĐA NIÊN SINH | Lâu năm |
| 保護具 | ほごぐ | BẢO HỘ CỤ | Đồ bảo hộ |
| 防護服 | ぼうごふく | PHÒNG HỘ PHỤC | Quần áo bảo hộ |
| 長靴 | ながぐつ | TRƯỜNG NGOA | Ủng |
| 労働基準法 | ろうどうきじゅんほう | LAO ĐỘNG TIÊU CHUẨN PHÁP | Luật tiêu chuẩn lao động |
| 農薬取締法 | のうやくとりしまりほう | NÔNG DƯỢC THỦ THỦ PHÁP | Luật kiểm soát nông dược |
| 食品衛生法 | しょくひんえいせいほう | THỰC PHẨM VỆ SINH PHÁP | Luật vệ sinh thực phẩm |
| 適用除外 | てきようじょがい | THÍCH DỤNG TRỪ NGOẠI | Loại trừ áp dụng |
| 残業代 | ざんぎょうだい | TÀN NGHIỆP ĐẠI | Tiền tăng ca |
| 義務 | ぎむ | NGHĨA VỤ | Nghĩa vụ |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | Phiếu dự thi |
| 鉛筆 | えんぴつ | DUYÊN BÚT | Bút chì |
| 消しゴム | けしごむ | TIÊU | Tẩy |
| 腕時計 | うでどけい | UYỂN THỜI KẾ | Đồng hồ đeo tay |
| 持ち込み禁止 | もちこみきんし | TRÌ KHÔNG CẤM CHỈ | Cấm mang vào |
| 計算機 | けいさんき | KẾ TOÁN CƠ | Máy tính |
| 暗算 | あんざん | ÁM TOÁN | Nhẩm |
| 余白 | よはく | DƯ BẠCH | Phần trống, khoảng trắng |
| 深呼吸 | しんこきゅう | THÂM HÔ HẤP | Hít thở sâu |
| 消去法 | しょうきょほう | TIÊU KHỨ PHÁP | Phương pháp loại trừ |
| 試験官 | しけんかん | THÍ NGHIỆM QUAN | Giám thị |
| 区分 | くぶん | KHU PHÂN | Phân loại, mục |
| 開始 | かいし | KHAI THỦY | Bắt đầu |
| 翻訳 | ほんやく | PHIÊN DỊCH | Phiên dịch |
| 不備 | ふび | BẤT BỊ | Thiếu sót, lỗi |
| 不正行為 | ふせいこうい | BẤT CHÍNH HÀNH VI | Hành vi gian lận |
| 退室 | たいしつ | THOÁI THẤT | Ra khỏi phòng |
| 無効 | むこう | VÔ HIỆU | Vô hiệu, hủy |
| 受験禁止 | じゅけんきんし | THỤ NGHIỆM CẤM CHỈ | Cấm dự thi |
| 不鮮明 | ふせんめい | BẤT TIÊN MINH | Không rõ ràng |
| 印刷 | いんさつ | ẤN LOÁT | In ấn |
| 予備用紙 | よびようし | DỰ BỊ DỤNG CHỈ | Giấy dự phòng |
| 差し替える | さしかえる | SAI THẾ | Đổi, thay thế |
| 配合 | はいごう | PHỐI HỢP | Phối trộn |
| 規定 | きてい | QUY ĐỊNH | Quy định |
| 自信 | じしん | TỰ TÍN | Tự tin |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 発表 | はっぴょう | PHÁT BIỂU | Công bố |
| 得点 | とくてん | ĐẮC ĐIỂM | Điểm đạt |
| 立派 | りっぱ | LẬP PHÁI | Xuất sắc |
| 在留資格変更 | ざいりゅうしかくへんこう | TẠI LƯU TƯ CÁCH BIẾN CANH | Đổi tư cách lưu trú |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | Trượt |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | Tỷ lệ đỗ |
| 苦手分野 | にがてぶんや | KHỔ THỦ PHÂN GIẢ | Lĩnh vực kém |
| 復習 | ふくしゅう | PHỤC TẬP | Ôn lại |
| 応援 | おうえん | ỨNG VIỆN | Cổ vũ, ủng hộ |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000009, 800000042, NULL, 'markdown_book', 'T9. 親方 bàn về kế thừa nông trại', '# Sách thực tập sinh nông nghiệp · T9. 親方 bàn về kế thừa nông trại

> **Mục tiêu nhân vật:** Linh (24 tuổi, Đồng Tháp). Học các mẫu hội thoại tiếng Nhật khi cấp trên tâm sự chuyện gia đình – kế nghiệp: lắng nghe câu chuyện đời (お話を伺う), hỏi thăm tế nhị về gia đình (お子さんは〜), trao đổi quan điểm về tương lai nông trại (跡継ぎ・後継者), khen-an ủi đúng mực (ご苦労が偲ばれます), kể chuyện gia đình mình bằng tiếng Nhật (うちの父は〜), và đề xuất giúp đỡ khi cấp trên gặp khó (お力になれれば).

---

## Bối cảnh

Cuối tháng 1 năm 2028, nông trại rau Ibaraki của 親方 Yamamoto. Linh đã sang Nhật được 2 năm 10 tháng, sắp hết hợp đồng TTS 3 năm vào tháng 3, đang ôn để chuyển SSW1. Trình độ N3, đã thi đỗ 検定 cấp 3 và lấy chứng chỉ JAS有機 phụ. Mùa đông Ibaraki lạnh -3°C, ハウス (nhà kính) đang trồng cà chua và salad vụ đông. Sau bữa trưa, 親方 mời Linh ngồi lại uống trà ở 母屋 (nhà chính) — chuyện hôm nay không phải về việc, mà là câu chuyện gia đình ông đã giữ trong lòng nhiều năm: ai sẽ kế nghiệp nông trại 3 đời này.

---

## Tình huống 1 — Phòng nghỉ ハウス · 11:50, 親方 hẹn Linh sang nhà chính sau bữa trưa

| Vai | Lời thoại |
|---|---|
| 親方 | リンさん、お<ruby>昼<rt>ひる</rt></ruby>のあと、<ruby>母屋<rt>おもや</rt></ruby>でお<ruby>茶<rt>ちゃ</rt></ruby>でも<ruby>飲<rt>の</rt></ruby>みませんか？<br>*(Linh, sau bữa trưa qua nhà chính uống trà không?)* |
| Linh | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>何<rt>なに</rt></ruby>かありますか？<br>*(Vâng, được ạ. Có chuyện gì không?)* |
| 親方 | いや、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>じゃなくて、<ruby>少<rt>すこ</rt></ruby>し<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いてもらいたくて。<br>*(Không, không phải chuyện công việc, là chuyện cá nhân muốn nhờ em nghe.)* |
| Linh | はい、もちろんです。<ruby>13<rt>じゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います。<br>*(Vâng, tất nhiên. 13h em sẽ sang ạ.)* |
| 親方 | アリさんとカルロくんには、<ruby>午後<rt>ごご</rt></ruby>のハウス<ruby>3<rt>さん</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>収穫<rt>しゅうかく</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>んでおきました。<br>*(Anh đã nhờ Ali với Carlo thu hoạch ハウス số 3 chiều nay rồi.)* |

---

## Tình huống 2 — 母屋, phòng khách Nhật · 13:00, vào nhà chính, chào bà 親方

*Linh cởi giày ở 玄関, bước lên 畳. Đây là lần đầu Linh được mời vào phòng khách 母屋 — trước nay chỉ vào bếp lấy 弁当.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>失礼<rt>しつれい</rt></ruby>します。お<ruby>邪魔<rt>じゃま</rt></ruby>します。<br>*(Em xin phép. Em xin làm phiền.)* |
| Bà 親方 | リンさん、よく<ruby>来<rt>き</rt></ruby>てくれました。こたつにどうぞ。<br>*(Linh, em đến rồi à. Vào kotatsu đi.)* |
| Linh | わあ、こたつ、<ruby>初<rt>はじ</rt></ruby>めて<ruby>入<rt>はい</rt></ruby>ります。<ruby>温<rt>あたた</rt></ruby>かいですね。<br>*(Ồ, kotatsu, lần đầu em được vào. Ấm quá ạ.)* |
| Bà 親方 | お<ruby>茶<rt>ちゃ</rt></ruby>と、<ruby>大福<rt>だいふく</rt></ruby>もありますよ。<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。<br>*(Có trà với daifuku đây. Đừng ngại nhé.)* |
| Linh | ありがとうございます。<ruby>頂戴<rt>ちょうだい</rt></ruby>します。<br>*(Em cảm ơn ạ. Em xin nhận.)* |
| 親方 | (mang ấm trà ra) <ruby>家内<rt>かない</rt></ruby>がリンさんに<ruby>会<rt>あ</rt></ruby>いたがってたんだ。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>いて、ちゃんとお<ruby>茶<rt>ちゃ</rt></ruby>に<ruby>呼<rt>よ</rt></ruby>んだことなかったからね。<br>*(Bà nhà tôi đã muốn gặp em. 3 năm rồi mà chưa mời em uống trà đàng hoàng lần nào.)* |

---

## Tình huống 3 — こたつ · 13:15, 親方 mở chuyện về 3 đời nông trại

| Vai | Lời thoại |
|---|---|
| 親方 | リンさん、この<ruby>農場<rt>のうじょう</rt></ruby>は、<ruby>3<rt>さん</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>なんだよ。<br>*(Linh, nông trại này đời thứ 3 đấy.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>、ですか？<br>*(Đời thứ 3 ạ?)* |
| 親方 | <ruby>祖父<rt>そふ</rt></ruby>が<ruby>戦後<rt>せんご</rt></ruby>に<ruby>開墾<rt>かいこん</rt></ruby>して、<ruby>父<rt>ちち</rt></ruby>がハウス<ruby>農業<rt>のうぎょう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めて、<ruby>私<rt>わたし</rt></ruby>がJAS<ruby>有機<rt>ゆうき</rt></ruby>を<ruby>取<rt>と</rt></ruby>った。<br>*(Ông tôi khai khẩn sau chiến tranh, bố tôi bắt đầu nông nghiệp nhà kính, tôi lấy JAS hữu cơ.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby>で、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>変<rt>か</rt></ruby>えてきたんですね。<br>*(Qua 3 thế hệ, từng chút một thay đổi nhỉ.)* |
| 親方 | そう。<ruby>土地<rt>とち</rt></ruby>は<ruby>4<rt>よん</rt></ruby>ヘクタール、ハウスは<ruby>12<rt>じゅうに</rt></ruby><ruby>棟<rt>とう</rt></ruby>、トラクター<ruby>3<rt>さん</rt></ruby><ruby>台<rt>だい</rt></ruby>。<ruby>祖父<rt>そふ</rt></ruby>から<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>いだものを、<ruby>増<rt>ふ</rt></ruby>やしてきたつもりだ。<br>*(Phải. 4 hecta đất, 12 nhà kính, 3 máy kéo. Những thứ nhận từ ông, tôi đã tăng dần lên.)* |
| Linh | <ruby>大変<rt>たいへん</rt></ruby>なご<ruby>苦労<rt>くろう</rt></ruby>が<ruby>偲<rt>しの</rt></ruby>ばれます。<br>*(Em cảm nhận được những vất vả vô cùng ạ.)* |
| 親方 | (cười nhẹ) <ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>を<ruby>知<rt>し</rt></ruby>っているね、リンさん。N3<ruby>合格<rt>ごうかく</rt></ruby><ruby>者<rt>しゃ</rt></ruby>だけのことはある。<br>*(Em biết cả từ khó nhỉ Linh. Quả đúng là người đỗ N3.)* |

---

## Tình huống 4 — こたつ · 13:30, 親方 nói về con trai cả Kenji rời nông trại

| Vai | Lời thoại |
|---|---|
| 親方 | (rót trà thêm) でもね、リンさん、<ruby>跡継<rt>あとつ</rt></ruby>ぎがいないんだ。<br>*(Nhưng Linh à, không có người kế nghiệp.)* |
| Linh | (đặt chén trà xuống nhẹ) ご<ruby>長男<rt>ちょうなん</rt></ruby>さんは、<ruby>東京<rt>とうきょう</rt></ruby>にいらっしゃると<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em nghe nói anh cả đang ở Tokyo ạ.)* |
| 親方 | そう。<ruby>健司<rt>けんじ</rt></ruby>はIT<ruby>会社<rt>がいしゃ</rt></ruby>でエンジニアをしている。<ruby>年収<rt>ねんしゅう</rt></ruby>は<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>だ。<br>*(Phải. Kenji làm kỹ sư công ty IT. Lương 1 năm gấp 3 nông trại.)* |
| Bà 親方 | <ruby>10<rt>じゅう</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>大学<rt>だいがく</rt></ruby>を<ruby>出<rt>で</rt></ruby>るとき、はっきり<ruby>言<rt>い</rt></ruby>われました。「<ruby>農業<rt>のうぎょう</rt></ruby>はやらない」と。<br>*(10 năm trước, lúc tốt nghiệp đại học, nó nói thẳng: "Con không làm nông".)* |
| 親方 | <ruby>無理<rt>むり</rt></ruby>もない。<ruby>朝<rt>あさ</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>起<rt>お</rt></ruby>き、<ruby>休<rt>やす</rt></ruby>みなし、<ruby>台風<rt>たいふう</rt></ruby>で<ruby>一<rt>いっ</rt></ruby><ruby>晩<rt>ばん</rt></ruby>でハウスが<ruby>潰<rt>つぶ</rt></ruby>れることもある。<br>*(Không trách được. 4h sáng dậy, không nghỉ, có khi 1 đêm bão sập cả nhà kính.)* |
| Linh | お<ruby>気持<rt>きも</rt></ruby>ち、<ruby>分<rt>わ</rt></ruby>かります。<ruby>私<rt>わたし</rt></ruby>の<ruby>故郷<rt>こきょう</rt></ruby>でも、<ruby>若<rt>わか</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>はみんな<ruby>都市<rt>とし</rt></ruby>へ<ruby>行<rt>い</rt></ruby>きます。<br>*(Em hiểu tâm trạng đó ạ. Quê em cũng vậy, người trẻ đều ra thành phố.)* |
| 親方 | そうか。ベトナムでも<ruby>同<rt>おな</rt></ruby>じか。<br>*(Vậy à. Việt Nam cũng giống nhỉ.)* |

---

## Tình huống 5 — こたつ · 13:45, 親方 hỏi Linh về gia đình ở Đồng Tháp

| Vai | Lời thoại |
|---|---|
| 親方 | リンさんのご<ruby>家族<rt>かぞく</rt></ruby>はベトナムで<ruby>何<rt>なに</rt></ruby>をしていますか？<br>*(Gia đình em ở Việt Nam làm gì?)* |
| Linh | <ruby>父<rt>ちち</rt></ruby>は<ruby>稲作<rt>いなさく</rt></ruby><ruby>農家<rt>のうか</rt></ruby>です。メコンデルタの<ruby>同<rt>どう</rt></ruby>タップ<ruby>省<rt>しょう</rt></ruby>で、<ruby>3<rt>さん</rt></ruby><ruby>町歩<rt>ちょうぶ</rt></ruby>ぐらいの<ruby>田<rt>た</rt></ruby>んぼを<ruby>持<rt>も</rt></ruby>っています。<br>*(Bố em làm ruộng lúa. Ở tỉnh Đồng Tháp đồng bằng Mekong, có khoảng 3 町歩 ruộng.)* |
| 親方 | <ruby>3<rt>さん</rt></ruby><ruby>町歩<rt>ちょうぶ</rt></ruby>か。お<ruby>父<rt>とう</rt></ruby>さんもベテランの<ruby>農家<rt>のうか</rt></ruby>さんだね。<ruby>米<rt>こめ</rt></ruby>は<ruby>年<rt>ねん</rt></ruby><ruby>何<rt>なん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>取<rt>と</rt></ruby>れる？<br>*(3 町歩 cơ à. Bố em cũng là nông dân lão làng nhỉ. Lúa 1 năm mấy vụ?)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>期作<rt>きさく</rt></ruby>です。<ruby>冬春<rt>とうしゅん</rt></ruby>、<ruby>夏秋<rt>かしゅう</rt></ruby>、<ruby>秋冬<rt>しゅうとう</rt></ruby>。<ruby>水<rt>みず</rt></ruby>が<ruby>豊<rt>ゆた</rt></ruby>かなので。<br>*(3 vụ ạ. Đông xuân, hè thu, thu đông. Vì nhiều nước.)* |
| 親方 | <ruby>3<rt>さん</rt></ruby><ruby>期作<rt>きさく</rt></ruby>！すごいな。<ruby>日本<rt>にほん</rt></ruby>は<ruby>米<rt>こめ</rt></ruby>は<ruby>年<rt>ねん</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>だけだよ。<br>*(3 vụ! Đỉnh quá. Nhật mỗi năm chỉ 1 vụ thôi.)* |
| Linh | <ruby>兄<rt>あに</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>歳<rt>さい</rt></ruby><ruby>上<rt>うえ</rt></ruby>で、ホーチミンの<ruby>工場<rt>こうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<ruby>農業<rt>のうぎょう</rt></ruby>は<ruby>継<rt>つ</rt></ruby>がないと<ruby>言<rt>い</rt></ruby>っています。<br>*(Anh trai em hơn 3 tuổi, làm xưởng ở Sài Gòn. Anh ấy bảo không nối nghiệp nông.)* |
| Bà 親方 | あらまあ、リンさんのお<ruby>家<rt>うち</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じなのね。<br>*(Ôi, nhà em cũng giống nhỉ.)* |
| Linh | はい、<ruby>父<rt>ちち</rt></ruby>もそれを<ruby>寂<rt>さび</rt></ruby>しがっています。<br>*(Vâng, bố em cũng buồn vì điều đó.)* |

---

## Tình huống 6 — こたつ · 14:00, 親方 nói về con gái Yumi đã lấy chồng

| Vai | Lời thoại |
|---|---|
| 親方 | <ruby>娘<rt>むすめ</rt></ruby>の<ruby>由美<rt>ゆみ</rt></ruby>は、<ruby>5<rt>ご</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>水戸<rt>みと</rt></ruby>の<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>員<rt>いん</rt></ruby>と<ruby>結婚<rt>けっこん</rt></ruby>した。<br>*(Con gái Yumi 5 năm trước lấy nhân viên ngân hàng ở Mito.)* |
| 親方 | <ruby>婿養子<rt>むこようし</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>もうかと<ruby>思<rt>おも</rt></ruby>ったが、<ruby>相手<rt>あいて</rt></ruby>の<ruby>家<rt>うち</rt></ruby>も<ruby>長男<rt>ちょうなん</rt></ruby>でね。<br>*(Đã định nhờ làm 婿養子 (rể nhập tịch), nhưng nhà bên kia cũng là con trai cả.)* |
| Linh | <ruby>婿養子<rt>むこようし</rt></ruby>、というと？<br>*(婿養子, nghĩa là sao ạ?)* |
| 親方 | <ruby>娘<rt>むすめ</rt></ruby>の<ruby>家<rt>うち</rt></ruby>に<ruby>夫<rt>おっと</rt></ruby>が<ruby>入<rt>はい</rt></ruby>って、<ruby>姓<rt>せい</rt></ruby>を<ruby>継<rt>つ</rt></ruby>ぐ<ruby>制度<rt>せいど</rt></ruby>だ。<ruby>農家<rt>のうか</rt></ruby>ではよくある。<br>*(Chế độ chồng vào nhà vợ, kế họ. Nhà nông thường có.)* |
| Linh | なるほど、ベトナムにはない<ruby>制度<rt>せいど</rt></ruby>です。<br>*(Em hiểu rồi, Việt Nam không có chế độ này.)* |
| Bà 親方 | <ruby>由美<rt>ゆみ</rt></ruby>は<ruby>月<rt>つき</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>孫<rt>まご</rt></ruby>を<ruby>連<rt>つ</rt></ruby>れて<ruby>来<rt>き</rt></ruby>てくれます。それで<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(Yumi tháng 2 lần đưa cháu sang. Vậy là đủ rồi.)* |
| 親方 | <ruby>子供<rt>こども</rt></ruby>の<ruby>人生<rt>じんせい</rt></ruby>を<ruby>縛<rt>しば</rt></ruby>るわけにはいかない。<br>*(Không thể trói buộc cuộc đời con.)* |

---

## Tình huống 7 — こたつ · 14:15, 親方 nói thẳng ý định thuê SSW1 nước ngoài

| Vai | Lời thoại |
|---|---|
| 親方 | リンさん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うとね、<ruby>跡継<rt>あとつ</rt></ruby>ぎがいないなら、<ruby>農場<rt>のうじょう</rt></ruby>を<ruby>畳<rt>たた</rt></ruby>むか、<ruby>誰<rt>だれ</rt></ruby>かに<ruby>譲<rt>ゆず</rt></ruby>るかの<ruby>2<rt>に</rt></ruby><ruby>択<rt>たく</rt></ruby>だ。<br>*(Linh, thật lòng, nếu không có người kế nghiệp, chỉ có 2 lựa chọn: đóng cửa nông trại hay nhường ai đó.)* |
| Linh | (gật chậm) はい。<br>*(Vâng.)* |
| 親方 | <ruby>畳<rt>たた</rt></ruby>むのは<ruby>祖父<rt>そふ</rt></ruby>と<ruby>父<rt>ちち</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ない。だから、<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>と<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てて、<ruby>農場<rt>のうじょう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたい。<br>*(Đóng cửa thì có lỗi với ông và bố. Nên anh muốn nuôi người 特定技能 1号 và 2号 nước ngoài, để duy trì nông trại.)* |
| Linh | <ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby>も<ruby>呼<rt>よ</rt></ruby>べると<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em nghe SSW2 có thể gọi gia đình sang.)* |
| 親方 | そうだ。アリさんは<ruby>来年<rt>らいねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける。カルロくんも<ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る。リンさんは……<br>*(Đúng. Ali sang năm thi 2号. Carlo cũng vào năm 2 của 1号. Còn Linh…)* |
| Linh | (im lặng, nhìn chén trà) はい。<br>*(Vâng.)* |
| 親方 | <ruby>強制<rt>きょうせい</rt></ruby>はしない。ただ、リンさんがSSW1を<ruby>続<rt>つづ</rt></ruby>けてくれたら、ここはとても<ruby>助<rt>たす</rt></ruby>かる。<br>*(Anh không ép. Chỉ là nếu Linh tiếp tục SSW1, ở đây sẽ rất nhờ.)* |

---

## Tình huống 8 — こたつ · 14:30, Linh hỏi cụ thể về kế hoạch 5-10 năm

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>1<rt>ひと</rt></ruby>つ<ruby>伺<rt>うかが</rt></ruby>ってもいいですか？<br>*(親方, em xin hỏi một câu được không ạ?)* |
| 親方 | もちろん、<ruby>何<rt>なん</rt></ruby>でも。<br>*(Đương nhiên, gì cũng được.)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>の<ruby>農場<rt>のうじょう</rt></ruby>は、どんなイメージですか？<br>*(5 năm, 10 năm nữa nông trại sẽ thế nào ạ?)* |
| 親方 | いい<ruby>質問<rt>しつもん</rt></ruby>だ。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>はJAS<ruby>有機<rt>ゆうき</rt></ruby>のブランドを<ruby>確立<rt>かくりつ</rt></ruby>して、<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>高級<rt>こうきゅう</rt></ruby>スーパーに<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>出荷<rt>しゅっか</rt></ruby>したい。<br>*(Câu hỏi hay. 5 năm nữa muốn lập thương hiệu JAS有機, xuất thẳng siêu thị cao cấp Tokyo.)* |
| 親方 | <ruby>10<rt>じゅう</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>は、<ruby>海外<rt>かいがい</rt></ruby><ruby>輸出<rt>ゆしゅつ</rt></ruby>もしたい。ベトナム、シンガポール、<ruby>香港<rt>ホンコン</rt></ruby>。<br>*(10 năm nữa muốn xuất khẩu nước ngoài. Việt Nam, Singapore, Hong Kong.)* |
| Linh | ベトナムへの<ruby>輸出<rt>ゆしゅつ</rt></ruby>、ですか。<br>*(Xuất sang Việt Nam ạ?)* |
| 親方 | そうだ。リンさんがベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>営業<rt>えいぎょう</rt></ruby>できれば、こんなに<ruby>強<rt>つよ</rt></ruby>いことはない。<br>*(Phải. Nếu Linh kinh doanh được bằng tiếng Việt, không gì mạnh hơn.)* |
| Linh | (mắt sáng lên) <ruby>面白<rt>おもしろ</rt></ruby>そうですね。<br>*(Nghe thú vị quá ạ.)* |

---

## Tình huống 9 — こたつ · 14:50, 親方 cho xem ảnh ông nội — 3 thế hệ kế thừa

*親方 mang ra một album cũ, lật từng trang ảnh đen trắng.*

| Vai | Lời thoại |
|---|---|
| 親方 | これが<ruby>祖父<rt>そふ</rt></ruby>。<ruby>1946<rt>せんきゅうひゃくよんじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>戦争<rt>せんそう</rt></ruby>から<ruby>帰<rt>かえ</rt></ruby>って、<ruby>森<rt>もり</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いた。<br>*(Đây là ông nội. 1946, đi chiến tranh về, khai phá rừng.)* |
| Linh | <ruby>素手<rt>すで</rt></ruby>で、<ruby>開墾<rt>かいこん</rt></ruby>ですか？<br>*(Khai khẩn bằng tay không ạ?)* |
| 親方 | <ruby>鍬<rt>くわ</rt></ruby>と<ruby>鎌<rt>かま</rt></ruby>だけ。<ruby>家族<rt>かぞく</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>人<rt>にん</rt></ruby>でね。<br>*(Cuốc và liềm thôi. 6 người trong nhà.)* |
| 親方 | (lật trang) これが<ruby>父<rt>ちち</rt></ruby>。<ruby>1980<rt>せんきゅうひゃくはちじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>のビニールハウスを<ruby>建<rt>た</rt></ruby>てたとき。<br>*(Đây là bố. 1980, dựng nhà kính nylon đầu tiên.)* |
| Linh | お<ruby>父<rt>とう</rt></ruby>さんの<ruby>顔<rt>かお</rt></ruby>、<ruby>親方<rt>おやかた</rt></ruby>そっくりですね。<br>*(Mặt bố giống 親方 quá ạ.)* |
| 親方 | (cười) よく<ruby>言<rt>い</rt></ruby>われる。これが<ruby>2002<rt>にせんに</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>がJAS<ruby>有機<rt>ゆうき</rt></ruby>を<ruby>取<rt>と</rt></ruby>った<ruby>日<rt>ひ</rt></ruby>。<br>*(Hay được khen vậy. Đây là 2002, ngày tôi lấy JAS有機.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby>、<ruby>80<rt>はちじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>、すごい<ruby>歴史<rt>れきし</rt></ruby>です。<br>*(3 thế hệ, 80 năm, lịch sử ghê quá ạ.)* |
| 親方 | この<ruby>80<rt>はちじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>を、<ruby>無<rt>む</rt></ruby>にしたくない。<ruby>跡継<rt>あとつ</rt></ruby>ぎが<ruby>血<rt>ち</rt></ruby>のつながりでなくても、<ruby>心<rt>こころ</rt></ruby>でつながっていれば、それで<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(80 năm này, không muốn thành con số không. Người kế nghiệp dù không có quan hệ máu mủ, kết nối bằng tâm là đủ rồi.)* |

---

## Tình huống 10 — こたつ · 15:10, Linh kể chuyện cha mình ở Đồng Tháp

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>の<ruby>父<rt>ちち</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いていただけますか？<br>*(親方, em kể về bố em được không ạ?)* |
| 親方 | ぜひ、<ruby>聞<rt>き</rt></ruby>かせて。<br>*(Hẳn rồi, kể đi.)* |
| Linh | <ruby>父<rt>ちち</rt></ruby>は<ruby>52<rt>ごじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>、ベトナム<ruby>戦争<rt>せんそう</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>生<rt>う</rt></ruby>まれて、<ruby>祖父<rt>そふ</rt></ruby>の<ruby>田<rt>た</rt></ruby>んぼを<ruby>継<rt>つ</rt></ruby>ぎました。<br>*(Bố em 52 tuổi, sinh sau chiến tranh Việt Nam, kế thừa ruộng của ông nội.)* |
| Linh | <ruby>祖父<rt>そふ</rt></ruby>は<ruby>解放後<rt>かいほうご</rt></ruby>、<ruby>沼地<rt>ぬまち</rt></ruby>を<ruby>埋<rt>う</rt></ruby>めて、<ruby>1<rt>いち</rt></ruby>から<ruby>稲<rt>いね</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てました。<br>*(Ông em sau giải phóng, lấp đầm lầy, từ con số 0 nuôi cây lúa.)* |
| 親方 | <ruby>親方<rt>おやかた</rt></ruby>の<ruby>祖父<rt>そふ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じだ。<ruby>戦後<rt>せんご</rt></ruby>に<ruby>土地<rt>とち</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いたんだね。<br>*(Giống ông tôi quá. Khai đất sau chiến tranh nhỉ.)* |
| Linh | はい。<ruby>父<rt>ちち</rt></ruby>はいつも「<ruby>土<rt>つち</rt></ruby>は<ruby>裏切<rt>うらぎ</rt></ruby>らない」と<ruby>言<rt>い</rt></ruby>っています。ベトナム<ruby>語<rt>ご</rt></ruby>で「Đất không phụ người」。<br>*(Vâng. Bố em luôn nói "Đất không phụ người". Tiếng Việt là "Đất không phụ người".)* |
| 親方 | (mắt mở to) その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>日本<rt>にほん</rt></ruby>の<ruby>農家<rt>のうか</rt></ruby>もそっくりだ。「<ruby>土<rt>つち</rt></ruby>は<ruby>嘘<rt>うそ</rt></ruby>をつかない」と<ruby>言<rt>い</rt></ruby>うんだ。<br>*(Câu đó, nông dân Nhật cũng y hệt. Nói "Đất không nói dối".)* |
| Linh | (cười) <ruby>言葉<rt>ことば</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>っても、<ruby>農家<rt>のうか</rt></ruby>の<ruby>心<rt>こころ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じですね。<br>*(Ngôn ngữ khác nhau, lòng nông dân lại giống nhau nhỉ.)* |

---

## Tình huống 11 — こたつ · 15:30, Linh chưa trả lời, xin thời gian suy nghĩ

| Vai | Lời thoại |
|---|---|
| 親方 | リンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>、すぐに<ruby>答<rt>こた</rt></ruby>えなくていい。<br>*(Linh, câu chuyện hôm nay, không cần trả lời ngay.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| 親方 | <ruby>来月<rt>らいげつ</rt></ruby>お<ruby>母<rt>かあ</rt></ruby>さんが<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>く</rt></ruby>るんだろう？お<ruby>母<rt>かあ</rt></ruby>さんと<ruby>相談<rt>そうだん</rt></ruby>してから<ruby>決<rt>き</rt></ruby>めてほしい。<br>*(Tháng sau mẹ em sang Nhật phải không? Bàn với mẹ rồi hãy quyết.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>母<rt>はは</rt></ruby>と<ruby>父<rt>ちち</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>します。<br>*(Vâng, em nhất định sẽ bàn với mẹ và bố.)* |
| Bà 親方 | お<ruby>母<rt>かあ</rt></ruby>さんが<ruby>来<rt>く</rt></ruby>る<ruby>日<rt>ひ</rt></ruby>は、ぜひうちに<ruby>夕<rt>ゆう</rt></ruby><ruby>食<rt>しょく</rt></ruby>を<ruby>食<rt>た</rt></ruby>べに<ruby>来<rt>き</rt></ruby>てください。<ruby>私<rt>わたし</rt></ruby>がフォーを<ruby>作<rt>つく</rt></ruby>って<ruby>待<rt>ま</rt></ruby>っています。<br>*(Hôm mẹ em đến, mời sang nhà tôi ăn tối nhé. Tôi sẽ nấu phở chờ.)* |
| Linh | (cười) <ruby>奥様<rt>おくさま</rt></ruby>、フォーが<ruby>作<rt>つく</rt></ruby>れるんですか？<br>*(Cô ơi, cô nấu được phở ạ?)* |
| Bà 親方 | <ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、リンさんが<ruby>教<rt>おし</rt></ruby>えてくれたじゃない。<ruby>練習<rt>れんしゅう</rt></ruby>してきました。<br>*(2 năm trước Linh dạy tôi đấy. Tôi đã luyện tập.)* |
| Linh | <ruby>感激<rt>かんげき</rt></ruby>です……<ruby>母<rt>はは</rt></ruby>が<ruby>喜<rt>よろこ</rt></ruby>びます。<br>*(Em xúc động quá... Mẹ em sẽ vui lắm.)* |

---

## Tình huống 12 — Đường về 寮 · 16:00, gặp Ali và Carlo, trao đổi nhanh

| Vai | Lời thoại |
|---|---|
| Ali | (Indonesia, đang khuân thùng cà chua) リンさん、<ruby>長<rt>なが</rt></ruby>かったですね。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>？<br>*(Linh, lâu thật. Ổn không?)* |
| Linh | アリさん、ありがとう。<ruby>親方<rt>おやかた</rt></ruby>と<ruby>家族<rt>かぞく</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしていました。<br>*(Ali cảm ơn anh. Em nói chuyện gia đình với 親方.)* |
| Carlo | (Philippines) <ruby>跡継<rt>あとつ</rt></ruby>ぎの<ruby>話<rt>はなし</rt></ruby>でしょう？<ruby>俺<rt>おれ</rt></ruby>にも<ruby>去年<rt>きょねん</rt></ruby><ruby>同<rt>おな</rt></ruby>じことを<ruby>聞<rt>き</rt></ruby>かれた。<br>*(Chuyện kế nghiệp đúng không? Anh năm ngoái cũng được hỏi y vậy.)* |
| Linh | カルロくんも？<br>*(Carlo cũng à?)* |
| Carlo | <ruby>親方<rt>おやかた</rt></ruby>は<ruby>本気<rt>ほんき</rt></ruby>だよ。SSW<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>したら、<ruby>分<rt>わ</rt></ruby>けて<ruby>担当<rt>たんとう</rt></ruby>させてもらえるかも。<br>*(親方 nghiêm túc đó. Đỗ SSW2 thì có thể được chia vùng phụ trách.)* |
| Ali | <ruby>俺<rt>おれ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>取<rt>と</rt></ruby>って、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びたい。リンさんも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>ろうよ。<br>*(Anh sẽ lấy 2号, gọi gia đình sang. Linh ở lại cùng đi.)* |
| Linh | (cười) みんなで<ruby>3<rt>さん</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る、ってこと？<br>*(Cả bọn cùng giữ đời thứ 3 hả?)* |
| Carlo | そう、インターナショナル<ruby>跡継<rt>あとつ</rt></ruby>ぎチーム！<br>*(Đúng, đội kế nghiệp quốc tế!)* |

---

## Tình huống 13 — 寮, phòng Linh · 21:00, gọi điện về Đồng Tháp cho mẹ (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — Linh báo mẹ chuyện 親方 đề nghị, lần đầu nói thật về việc có thể không về.

| Vai | Lời thoại |
|---|---|
| Linh | (VN, video call) Mẹ ơi, con đây. Hôm nay con có chuyện muốn kể. |
| Mẹ Linh | (VN) Con đi đứng cẩn thận không, sao mặt buồn buồn? |
| Linh | (VN) Không phải buồn đâu mẹ. Hôm nay 親方 — ông chủ nông trại — mời con vào nhà chính uống trà. Ông kể chuyện 3 đời nhà ông. Ông nội mở rừng từ 1946, bố ông xây nhà kính, ông lấy chứng chỉ hữu cơ JAS. |
| Mẹ Linh | (VN) Ô, giống ông ngoại con quá. Ông ngoại cũng lấp đầm lầy ở Đồng Tháp năm 1976. |
| Linh | (VN) Đúng đấy mẹ. Con cũng kể ông nghe chuyện ông ngoại. Ông bảo "Đất không nói dối" tiếng Nhật giống y "Đất không phụ người" của bố con. |
| Mẹ Linh | (VN, cười) Ôi, hai ông già nông dân hai nước giống nhau ghê. |
| Linh | (VN, hạ giọng) Mẹ ơi… con trai cả ông ấy đi Tokyo làm IT, con gái lấy chồng ngân hàng. Không có ai kế nghiệp nông trại. Ông muốn con ở lại làm SSW1, dài hạn. |
| Mẹ Linh | (VN, im một chút) Vậy con tính sao? |
| Linh | (VN) Con chưa trả lời. Ông bảo đợi mẹ sang tháng sau, bàn với mẹ rồi quyết. Vợ ông còn nói sẽ nấu phở đón mẹ. |
| Mẹ Linh | (VN, xúc động) Bà Nhật mà biết nấu phở à? |
| Linh | (VN) Bà tập 2 năm rồi mẹ ạ. Hồi con dạy bà cách pha nước dùng đấy. |
| Mẹ Linh | (VN) Linh à, mẹ nói thật: bố con với mẹ đã chuẩn bị tinh thần con không về quê làm ruộng. Nếu con ở Nhật làm nông được, cũng là làm nông cho người ta tin tưởng. Mẹ không phản đối. |
| Linh | (VN) Mẹ ơi… |
| Mẹ Linh | (VN) Nhưng tháng sau mẹ sang, mẹ muốn gặp ông 親方 trước, mẹ phải xem tận mắt rồi mới yên tâm. |
| Linh | (VN) Vâng mẹ. Ông cũng muốn gặp mẹ. Con mong tháng sau lắm rồi. |

---

## Đọng lại chương 9

Chương 9 mở ra giai đoạn quyết định của Linh năm 3: **親方 chính thức ngỏ lời** muốn Linh ở lại làm SSW1 dài hạn để gánh vác việc kế nghiệp nông trại. Học viên đọc chương này nắm được bộ mẫu câu trang trọng khi cấp trên Nhật tâm sự chuyện gia đình – kế nghiệp: **lời mời uống trà chính thức** (お<ruby>茶<rt>ちゃ</rt></ruby>でも<ruby>飲<rt>の</rt></ruby>みませんか・<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>), **lắng nghe và đồng cảm khéo léo** (お<ruby>気持<rt>きも</rt></ruby>ち、<ruby>分<rt>わ</rt></ruby>かります・ご<ruby>苦労<rt>くろう</rt></ruby>が<ruby>偲<rt>しの</rt></ruby>ばれます), **hỏi thăm gia đình cấp trên tế nhị** (ご<ruby>長男<rt>ちょうなん</rt></ruby>さんは・<ruby>跡継<rt>あとつ</rt></ruby>ぎ・<ruby>婿養子<rt>むこようし</rt></ruby>), **kể chuyện gia đình mình bằng tiếng Nhật** (<ruby>父<rt>ちち</rt></ruby>は<ruby>稲作<rt>いなさく</rt></ruby><ruby>農家<rt>のうか</rt></ruby>です・<ruby>3<rt>さん</rt></ruby><ruby>期作<rt>きさく</rt></ruby>です), **thảo luận tương lai 5-10 năm của nông trại** (<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>のイメージ・<ruby>輸出<rt>ゆしゅつ</rt></ruby>), và **xin thời gian suy nghĩ trước quyết định lớn** (すぐに<ruby>答<rt>こた</rt></ruby>えなくていい・<ruby>母<rt>はは</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>します). Hai ông nông dân – Việt và Nhật – chạm được nhau qua một câu tục ngữ giống hệt nhau: "Đất không phụ người" = 「<ruby>土<rt>つち</rt></ruby>は<ruby>嘘<rt>うそ</rt></ruby>をつかない」. Đây cũng là chương đầu tiên Linh được mời vào 母屋 ngồi こたつ — bước chuyển từ thực tập sinh sang người được gia đình 親方 đối xử như con cháu.

> Từ vựng & mẫu câu chương này: <ruby>母屋<rt>おもや</rt></ruby>・こたつ・<ruby>跡継<rt>あとつ</rt></ruby>ぎ・<ruby>後継者<rt>こうけいしゃ</rt></ruby>・<ruby>婿養子<rt>むこようし</rt></ruby>・<ruby>開墾<rt>かいこん</rt></ruby>・<ruby>稲作<rt>いなさく</rt></ruby>・<ruby>農家<rt>のうか</rt></ruby>・<ruby>3<rt>さん</rt></ruby><ruby>期作<rt>きさく</rt></ruby>・<ruby>町歩<rt>ちょうぶ</rt></ruby>・<ruby>3<rt>さん</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>・JAS<ruby>有機<rt>ゆうき</rt></ruby>・<ruby>輸出<rt>ゆしゅつ</rt></ruby>・<ruby>営業<rt>えいぎょう</rt></ruby>・<ruby>強制<rt>きょうせい</rt></ruby>・<ruby>譲<rt>ゆず</rt></ruby>る・<ruby>畳<rt>たた</rt></ruby>む・<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぐ・<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>・お<ruby>気持<rt>きも</rt></ruby>ち、<ruby>分<rt>わ</rt></ruby>かります・ご<ruby>苦労<rt>くろう</rt></ruby>が<ruby>偲<rt>しの</rt></ruby>ばれます・すぐに<ruby>答<rt>こた</rt></ruby>えなくていい・<ruby>母<rt>はは</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>します・<ruby>土<rt>つち</rt></ruby>は<ruby>嘘<rt>うそ</rt></ruby>をつかない・<ruby>土<rt>つち</rt></ruby>は<ruby>裏切<rt>うらぎ</rt></ruby>らない

## Bí quyết chương

- **Setting こたつ + 母屋**: cảnh chuyện cá nhân lớn ở Nhật luôn diễn ra ngoài nơi làm việc — vào nhà chính, ngồi こたつ, uống trà → dấu hiệu cấp trên muốn nói chuyện thực lòng.
- **Mẫu hỏi gia đình cấp trên tế nhị**: không hỏi thẳng "tại sao con không kế nghiệp" mà gợi qua "ご<ruby>長男<rt>ちょうなん</rt></ruby>さんは~にいらっしゃると<ruby>聞<rt>き</rt></ruby>きました" → để cấp trên tự kể.
- **Kể chuyện gia đình mình ngắn gọn**: cấu trúc 3 câu — nghề (<ruby>稲作<rt>いなさく</rt></ruby><ruby>農家<rt>のうか</rt></ruby>) + quy mô (<ruby>3<rt>さん</rt></ruby><ruby>町歩<rt>ちょうぶ</rt></ruby>) + đặc điểm (<ruby>3<rt>さん</rt></ruby><ruby>期作<rt>きさく</rt></ruby>) — đủ cho người Nhật hình dung.
- **Đồng cảm bằng cấu trúc song song**: tìm điểm chung văn hoá (ông tôi/ông em đều khai khẩn sau chiến tranh, tục ngữ giống nhau) → tạo cây cầu cảm xúc.
- **Không trả lời ngay quyết định lớn**: văn hoá Nhật quý trọng người "<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>してから<ruby>決<rt>き</rt></ruby>める" hơn người gật ngay tại chỗ.
- **婿養子・SSW2号**: kiến thức nền văn hoá – pháp lý quan trọng cho TTS nông nghiệp muốn ở lâu dài.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 母屋 | おもや | MẪU ỐC | nhà chính |
| 個人的 | こじんてき | CÁ NHÂN ĐÍCH | mang tính cá nhân |
| 伺 | うかが | TỬ | hỏi (khiêm nhường) |
| 玄関 | げんかん | HUYỀN QUAN | sảnh cửa vào |
| 畳 | たたみ | ĐIỆP | chiếu tatami |
| 邪魔 | じゃま | TÀ MA | làm phiền |
| こたつ | こたつ | — | bàn sưởi |
| 大福 | だいふく | ĐẠI PHÚC | bánh daifuku |
| 遠慮 | えんりょ | VIỄN LỰ | khách sáo, e ngại |
| 家内 | かない | GIA NỘI | vợ tôi |
| 農場 | のうじょう | NÔNG TRƯỜNG | nông trại |
| 3代目 | さんだいめ | TAM ĐẠI MỤC | đời thứ 3 |
| 祖父 | そふ | TỔ PHỤ | ông nội |
| 戦後 | せんご | CHIẾN HẬU | hậu chiến |
| 開墾 | かいこん | KHAI KHẨN | khai khẩn |
| 農業 | のうぎょう | NÔNG NGHIỆP | nông nghiệp |
| 有機 | ゆうき | HỮU CƠ | hữu cơ |
| 世代 | せだい | THẾ ĐẠI | thế hệ |
| 受け継 | うけつ | THỤ KẾ | kế thừa |
| 苦労 | くろう | KHỔ LAO | vất vả |
| 偲 | しの | TƯ | cảm nhận, hoài niệm |
| 跡継 | あとつぎ | TÍCH KẾ | người kế nghiệp |
| 長男 | ちょうなん | TRƯỜNG NAM | con trai cả |
| 年収 | ねんしゅう | NIÊN THU | thu nhập 1 năm |
| 大学 | だいがく | ĐẠI HỌC | đại học |
| 故郷 | こきょう | CỐ HƯƠNG | quê hương |
| 都市 | とし | ĐÔ THỊ | đô thị |
| 稲作 | いなさく | ĐẠO TÁC | trồng lúa |
| 農家 | のうか | NÔNG GIA | nhà nông |
| 省 | しょう | TỈNH | tỉnh |
| 田 | た | ĐIỀN | ruộng |
| 町歩 | ちょうぶ | ĐINH BỘ | đơn vị diện tích ruộng (≈ha) |
| 期作 | きさく | KỲ TÁC | vụ mùa |
| 豊 | ゆた | PHONG | dồi dào |
| 兄 | あに | HUYNH | anh trai |
| 寂 | さび | TỊCH | cô đơn, buồn |
| 娘 | むすめ | NƯƠNG | con gái |
| 結婚 | けっこん | KẾT HÔN | kết hôn |
| 婿養子 | むこようし | TẾ DƯỠNG TỬ | rể nhập tịch nhà vợ |
| 制度 | せいど | CHẾ ĐỘ | chế độ |
| 縛 | しば | PHƯỢC | trói buộc |
| 正直 | しょうじき | CHÍNH TRỰC | thật lòng |
| 譲 | ゆず | NHƯỢNG | nhường |
| 申し訳 | もうしわけ | THÂN DỊCH | có lỗi, áy náy |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | kỹ năng đặc định (SSW) |
| 強制 | きょうせい | CƯỜNG CHẾ | bắt ép |
| 質問 | しつもん | CHẤT VẤN | câu hỏi |
| 確立 | かくりつ | XÁC LẬP | xác lập |
| 高級 | こうきゅう | CAO CẤP | cao cấp |
| 出荷 | しゅっか | XUẤT HÀ | xuất hàng |
| 海外 | かいがい | HẢI NGOẠI | nước ngoài |
| 輸出 | ゆしゅつ | THÂU XUẤT | xuất khẩu |
| 営業 | えいぎょう | DOANH NGHIỆP | kinh doanh |
| 素手 | すで | TỐ THỦ | tay không |
| 鍬 | くわ | SỦNG | cuốc |
| 鎌 | かま | LIÊM | liềm |
| 歴史 | れきし | LỊCH SỬ | lịch sử |
| 沼地 | ぬまち | CHIỂU ĐỊA | đất đầm lầy |
| 埋 | う | MAI | lấp |
| 稲 | いね | ĐẠO | cây lúa |
| 解放 | かいほう | GIẢI PHÓNG | giải phóng |
| 裏切 | うらぎ | LÝ THIẾT | phản bội, phụ |
| 嘘 | うそ | HƯ | nói dối |
| 相談 | そうだん | TƯƠNG ĐÀM | bàn bạc |
| 練習 | れんしゅう | LUYỆN TẬP | luyện tập |
| 感激 | かんげき | CẢM KÍCH | xúc động, cảm kích |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000010, 800000042, NULL, 'markdown_book', 'T10. Mẹ Linh sang Nhật thăm con (短期滞在ビザ)', '# Sách thực tập sinh nông nghiệp · T10. Mẹ Linh sang Nhật thăm con (短期滞在ビザ)

> **Mục tiêu nhân vật:** Linh (24 tuổi, Đồng Tháp). Học các mẫu hội thoại tiếng Nhật khi đón gia đình từ VN bằng visa 短期滞在: đón người thân ở sân bay (お迎えに上がりました), xử lý nhập cảnh hộ người không biết tiếng (入国審査の通訳), giới thiệu mẹ với cấp trên và bà 親方 (お引き合わせ・お母をご紹介します), phiên dịch nội dung bàn về tương lai con (進路の通訳), giải thích văn hoá ăn cơm こたつ và phong tục nông thôn Nhật, và cảm ơn cấp trên đã chăm sóc con suốt 3 năm (3<ruby>年間<rt>ねんかん</rt></ruby>娘がお世話になりました).

---

## Bối cảnh

Đầu tháng 2 năm 2028, sân bay Narita và nông trại Ibaraki. Mẹ Linh (50 tuổi, bà Sáu, từ Đồng Tháp) lần đầu sang Nhật bằng visa 短期滞在 (du lịch thăm thân) 15 ngày, do 親方 Yamamoto bảo lãnh giấy mời. Lý do thực sự: 親方 đề nghị Linh ở lại làm SSW1 dài hạn kế nghiệp nông trại (chương 5), nên mẹ muốn tận mắt xem nơi con gái sống. Trời Ibaraki -2°C, có tuyết mỏng. Bà Sáu chưa từng đi máy bay quốc tế, chỉ biết vài câu chào tiếng Anh từ TV. Chương này tập trung: kỹ năng dẫn người thân lần đầu đến Nhật, phiên dịch hai chiều cho buổi gặp cấp trên quan trọng, và cảnh nông thôn Nhật trong mắt người mẹ nông dân Việt.

---

## Tình huống 1 — Cổng đến quốc tế, sân bay Narita · 14:30, Linh chờ mẹ ra cửa Arrival

*Linh cầm tấm bảng giấy "Bà SÁU — Mẹ" viết bằng tiếng Việt và tên Nhật katakana バー サウ. Trong tay là túi áo khoác dày, khẩu trang và đôi giày tuyết dự phòng.*

| Vai | Lời thoại |
|---|---|
| Linh | (độc thoại tự nhủ) <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>母<rt>はは</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えに<ruby>来<rt>き</rt></ruby>ました。<br>*(Ngày 5/2/2028, em đi đón mẹ.)* |
| Linh | (nhân viên nhìn bảng, hỏi) どちらからのお<ruby>客様<rt>きゃくさま</rt></ruby>をお<ruby>待<rt>ま</rt></ruby>ちですか？<br>*(Anh đợi khách từ đâu?)* |
| Linh | はい、ベトナム・ホーチミンから、VN<ruby>318<rt>さんいちはち</rt></ruby><ruby>便<rt>びん</rt></ruby>、<ruby>母<rt>はは</rt></ruby>です。<ruby>初<rt>はじ</rt></ruby>めての<ruby>来日<rt>らいにち</rt></ruby>なので<ruby>少<rt>すこ</rt></ruby>し<ruby>心配<rt>しんぱい</rt></ruby>で。<br>*(Vâng, chuyến VN318 từ Tp.HCM Việt Nam, là mẹ tôi. Lần đầu sang Nhật nên hơi lo.)* |
| Nhân viên | <ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<ruby>入国審査<rt>にゅうこくしんさ</rt></ruby>に<ruby>40<rt>よんじゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ほどかかります。<br>*(Dự định đến khoảng 15h. Xét nhập cảnh mất khoảng 40 phút.)* |
| Linh | ありがとうございます。ここで<ruby>待<rt>ま</rt></ruby>たせていただきます。<br>*(Em cảm ơn. Em xin đợi ở đây.)* |

---

## Tình huống 2 — Cổng Arrival · 15:50, mẹ Linh bước ra, hai mẹ con gặp lại sau 3 năm

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | (VN, đẩy xe vali nhỏ, mắt tìm kiếm) Linh ơi! |
| Linh | (VN, chạy đến ôm chầm) Mẹ! Mẹ ơi, con đây! |
| Mẹ Linh | (VN, khóc) Trời ơi 3 năm rồi mới gặp con. Sao con gầy thế? |
| Linh | (VN, cười) Không gầy đâu mẹ, con cao lên 2 cm đấy. Đường có mệt không mẹ? |
| Mẹ Linh | (VN) Mệt chứ con. Mẹ chưa bao giờ đi máy bay xa thế. Lúc xuống máy bay, mẹ không biết đi đâu, may có cô tiếp viên dắt vào hàng nhập cảnh. |
| Linh | (VN) Mẹ mặc áo này vào đi, lạnh -2°C đấy. Trong vali có áo khoác con gửi trước hồi Tết không? |
| Mẹ Linh | (VN) Có chứ con, mẹ mặc 3 lớp ở nhà rồi. Mà sao tuyết trắng vậy con, đẹp ghê! |
| Linh | (VN) Mai đến nông trại, tuyết còn nhiều hơn. Đi mẹ, ra ga bắt 高速バス về Mito. 3 tiếng đường nhé. |
| Mẹ Linh | (VN) 3 tiếng à? Trời, từ Đồng Tháp lên Sài Gòn cũng 3 tiếng. |

---

## Tình huống 3 — Trạm bus Narita · 16:30, mẹ Linh không biết tiếng, Linh giúp mua vé

*Quầy bán vé bus tốc hành Narita → Mito. Bà Sáu ngó nghiêng tấm bản đồ Nhật, chỉ tay vào biển hiệu kanji không hiểu.*

| Vai | Lời thoại |
|---|---|
| Linh | (đến quầy) すみません、<ruby>水戸<rt>みと</rt></ruby><ruby>駅<rt>えき</rt></ruby><ruby>行<rt>ゆ</rt></ruby>きの<ruby>高速<rt>こうそく</rt></ruby>バス、<ruby>大人<rt>おとな</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>片道<rt>かたみち</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin lỗi, cho 2 vé bus tốc hành đi ga Mito, 1 chiều, người lớn.)* |
| Nhân viên | <ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>発<rt>はつ</rt></ruby>でよろしいですか？お<ruby>一人様<rt>ひとりさま</rt></ruby><ruby>4,200<rt>よんせんにひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(17h10 khởi hành được không? Mỗi người 4200 yên.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>2<rt>ふた</rt></ruby>つ<ruby>並<rt>なら</rt></ruby>びの<ruby>席<rt>せき</rt></ruby>はありますか？<ruby>母<rt>はは</rt></ruby>がベトナムから<ruby>初<rt>はじ</rt></ruby>めて<ruby>来日<rt>らいにち</rt></ruby>したので。<br>*(Vâng. Có ghế 2 cạnh nhau không ạ? Mẹ tôi lần đầu sang Nhật từ Việt Nam.)* |
| Nhân viên | <ruby>窓側<rt>まどがわ</rt></ruby>と<ruby>通路側<rt>つうろがわ</rt></ruby>の<ruby>並<rt>なら</rt></ruby>びでお<ruby>取<rt>と</rt></ruby>りしました。お<ruby>母<rt>かあ</rt></ruby>さんを<ruby>窓側<rt>まどがわ</rt></ruby>にどうぞ。<br>*(Tôi lấy 1 ghế cạnh cửa sổ và 1 ghế lối đi cạnh nhau. Mời mẹ ngồi cửa sổ nhé.)* |
| Linh | (dịch sang VN) Mẹ, cô bảo mẹ ngồi cạnh cửa sổ, con ngồi bên ngoài. |
| Mẹ Linh | (VN, cúi đầu chào nhân viên) Cảm ơn. (cố nói) アリガトウ。 |
| Nhân viên | (cười) <ruby>日本<rt>にほん</rt></ruby><ruby>語<rt>ご</rt></ruby>、お<ruby>上手<rt>じょうず</rt></ruby>ですね。 <ruby>気<rt>き</rt></ruby>をつけてお<ruby>越<rt>こ</rt></ruby>しください。<br>*(Tiếng Nhật giỏi quá. Đi đường cẩn thận nhé.)* |

---

## Tình huống 4 — Trên xe bus tốc hành · 18:00, mẹ Linh nhìn ra cửa sổ ngắm cảnh

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | (VN, nhìn ra ngoài) Con ơi, sao đồng ruộng vuông vắn thế? Ở quê mình toàn cong cong. |
| Linh | (VN) Nhật họ chia ruộng vuông để chạy máy nông nghiệp dễ. Mẹ nhìn xa kia thấy mấy nhà kính trắng không? Đó là ハウス, chỗ con làm cũng vậy. |
| Mẹ Linh | (VN) Lớn ghê. Cả cánh đồng toàn ハウス. |
| Linh | (VN) Ibaraki là vựa rau lớn nhất Kanto đấy mẹ. Cà chua, dưa leo, salad chủ yếu sản xuất ở đây. |
| Mẹ Linh | (VN) Sao mẹ không thấy người làm ngoài đồng? Bên mình giờ này dân ra ruộng đông lắm. |
| Linh | (VN) Mùa đông họ làm trong nhà kính hết, ngoài đồng -2°C ai ra. Với lại Nhật ít người trẻ làm nông, máy móc làm gần hết. |
| Mẹ Linh | (VN, im lặng nhìn rồi) Vậy ông 親方 con kể, ông không có ai kế nghiệp thật à? |
| Linh | (VN) Vâng mẹ. Ông có con trai làm IT Tokyo, con gái lấy chồng ngân hàng. Cả vùng này đa số nông trại đều thiếu người kế nghiệp. |
| Mẹ Linh | (VN) Lạ ghê. Đất tốt, ruộng vuông, máy đầy đủ mà không ai làm. |

---

## Tình huống 5 — Ga Mito · 20:30, 親方 ra đón bằng xe pickup

| Vai | Lời thoại |
|---|---|
| 親方 | リンさん、おかえり！お<ruby>母様<rt>かあさま</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして。<ruby>山本<rt>やまもと</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。お<ruby>迎<rt>むか</rt></ruby>えに<ruby>上<rt>あ</rt></ruby>がりました。<br>*(Linh, về rồi! Bác gái, rất hân hạnh. Tôi tên Yamamoto. Tôi đến đón ạ.)* |
| Linh | (dịch sang VN) Mẹ, đây là 親方 — ông Yamamoto, chủ nông trại con. Ông tự lái xe ra đón mẹ con mình. |
| Mẹ Linh | (VN, cúi đầu chào) Xin chào ông! Cảm ơn ông đã chăm con tôi 3 năm. (cố nói) ハジメマシテ。 |
| 親方 | (cười, cúi đầu) こちらこそ。リンさんは<ruby>家族<rt>かぞく</rt></ruby><ruby>同然<rt>どうぜん</rt></ruby>です。お<ruby>母様<rt>かあさま</rt></ruby>、<ruby>長<rt>なが</rt></ruby>い<ruby>旅<rt>たび</rt></ruby>でお<ruby>疲<rt>つか</rt></ruby>れでしょう。お<ruby>荷物<rt>にもつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がお<ruby>持<rt>も</rt></ruby>ちします。<br>*(Tôi mới phải cảm ơn. Linh như người nhà rồi. Bác gái chắc mệt vì đường xa. Tôi xách hành lý nhé.)* |
| Linh | (dịch) Ông bảo coi con như người nhà, để ông xách vali cho mẹ. |
| Mẹ Linh | (VN, ngại) Trời ơi, để ông chủ xách thì ngại quá. |
| Linh | (sang JP) <ruby>母<rt>はは</rt></ruby>が<ruby>恐縮<rt>きょうしゅく</rt></ruby>しております。<br>*(Mẹ em thấy ngại lắm ạ.)* |
| 親方 | お<ruby>気<rt>き</rt></ruby>になさらず。<ruby>車<rt>くるま</rt></ruby>は<ruby>南口<rt>みなみぐち</rt></ruby>です。<ruby>外<rt>そと</rt></ruby>は<ruby>雪<rt>ゆき</rt></ruby>です。お<ruby>母様<rt>かあさま</rt></ruby>、お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Đừng ngại. Xe ở cửa Nam. Bên ngoài tuyết. Bác chú ý dưới chân nhé.)* |

---

## Tình huống 6 — 母屋 nhà 親方 · 21:30, bà 親方 đón mẹ Linh, mâm cơm tối có cả món Việt

*親方 đưa hai mẹ con thẳng về 母屋 chứ không về 寮 — bà 親方 đã chuẩn bị bữa tối từ chiều, kotatsu được mở sẵn, có cả tô phở.*

| Vai | Lời thoại |
|---|---|
| Bà 親方 | (mở cửa, vẫy) リンさん、おかえりなさい！お<ruby>母様<rt>かあさま</rt></ruby>、ようこそ<ruby>茨城<rt>いばらき</rt></ruby>へ。<br>*(Linh, về rồi! Bác gái, chào mừng đến Ibaraki.)* |
| Linh | (dịch) Mẹ, đây là vợ ông 親方, gọi là 奥様 (おくさま). |
| Mẹ Linh | (VN, cúi đầu) Chào chị, em là mẹ Linh. (cố nói) ヨロシク オネガイシマス。 |
| Bà 親方 | (cười tươi) <ruby>練習<rt>れんしゅう</rt></ruby>してきましたね！フォーを<ruby>作<rt>つく</rt></ruby>って<ruby>待<rt>ま</rt></ruby>っていました。リンさんに<ruby>教<rt>おし</rt></ruby>えてもらったレシピで。<br>*(Bác tập trước rồi nhỉ! Tôi đã nấu phở chờ đấy. Theo công thức Linh dạy.)* |
| Linh | (dịch sang VN) Bà bảo bà nấu phở theo công thức con dạy. Mẹ thử xem có giống quê mình không. |
| Mẹ Linh | (VN, mở nắp tô phở, hít) Trời ơi, mùi y hệt nhà mình. Bà này khéo ghê. |
| Bà 親方 | <ruby>味<rt>あじ</rt></ruby>はどうですか？<ruby>足<rt>た</rt></ruby>りないものがあれば、リンさんが<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vị thế nào? Thiếu gì thì Linh chỉ bác nhé.)* |
| Mẹ Linh | (nếm) Ngon! (cố nói) オイシイ！ |
| Linh | (dịch) Mẹ bảo ngon thật. Bà ơi, nhưng quê em thường thêm chút giá đỗ với rau quế, có không ạ? |
| Bà 親方 | あ、<ruby>用意<rt>ようい</rt></ruby>してあります！(bưng đĩa rau ra) <ruby>水戸<rt>みと</rt></ruby>の<ruby>八百屋<rt>やおや</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>寄<rt>よ</rt></ruby>せました。<br>*(À, có chuẩn bị rồi! Tôi nhờ tiệm rau Mito đặt giúp.)* |
| 親方 | (vừa rót trà) お<ruby>母様<rt>かあさま</rt></ruby>、こたつに<ruby>足<rt>あし</rt></ruby>を<ruby>入<rt>い</rt></ruby>れてください。<ruby>下<rt>した</rt></ruby>から<ruby>温<rt>あたた</rt></ruby>かいです。<br>*(Bác gái, cho chân vào kotatsu đi. Từ dưới ấm lắm.)* |
| Mẹ Linh | (cho chân vào, kêu lên) (VN) Trời ơi ấm cả người! Sao Nhật có món thần kỳ thế này con. |

---

## Tình huống 7 — こたつ · 22:00, mẹ Linh chính thức cảm ơn cấp trên 3 năm

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | (VN, ngồi ngay ngắn, hai tay đặt lên đùi) Linh, dịch cho mẹ. Mẹ muốn nói tử tế. |
| Linh | (gật) Vâng mẹ. |
| Mẹ Linh | (VN) Ông Yamamoto, bà Yamamoto, vợ chồng nhà tôi ở Đồng Tháp xin gửi lời cảm ơn ông bà 3 năm qua đã chăm sóc cháu Linh như con cháu trong nhà. |
| Linh | (dịch JP) <ruby>山本<rt>やまもと</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>奥様<rt>おくさま</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>のリンをお<ruby>世話<rt>せわ</rt></ruby>になりました。ベトナム・<ruby>同<rt>どう</rt></ruby>タップの<ruby>夫婦<rt>ふうふ</rt></ruby>を<ruby>代<rt>か</rt></ruby>わって<ruby>厚<rt>あつ</rt></ruby>く<ruby>御礼<rt>おんれい</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Bác Yamamoto, bác gái, đã chăm sóc con gái Linh 3 năm. Thay mặt vợ chồng ở Đồng Tháp Việt Nam, xin gửi lời cảm ơn sâu sắc.)* |
| Mẹ Linh | (VN) Cháu sang Nhật từ 22 tuổi, không biết tiếng, không kinh nghiệm. Vợ chồng tôi lo lắm. Nhưng năm nào cháu cũng kể chuyện ông bà tốt thế nào. |
| Linh | (dịch JP) <ruby>娘<rt>むすめ</rt></ruby>は<ruby>22<rt>にじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>で、<ruby>言葉<rt>ことば</rt></ruby>も<ruby>仕事<rt>しごと</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>もなく<ruby>来日<rt>らいにち</rt></ruby>しました。<ruby>夫婦<rt>ふうふ</rt></ruby>はとても<ruby>心配<rt>しんぱい</rt></ruby>しておりました。ですが、<ruby>毎年<rt>まいとし</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>から<ruby>山本<rt>やまもと</rt></ruby><ruby>様<rt>さま</rt></ruby>ご<ruby>夫妻<rt>ふさい</rt></ruby>のご<ruby>厚情<rt>こうじょう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>っております。<br>*(Con gái 22 tuổi sang Nhật không biết tiếng, không kinh nghiệm. Vợ chồng tôi rất lo. Nhưng năm nào cũng nghe con kể về tình cảm hai bác.)* |
| 親方 | (cúi đầu sâu) こちらこそ、リンさんは<ruby>働<rt>はたら</rt></ruby>き<ruby>者<rt>もの</rt></ruby>で<ruby>真面目<rt>まじめ</rt></ruby>で、<ruby>娘<rt>むすめ</rt></ruby><ruby>同然<rt>どうぜん</rt></ruby>に<ruby>思<rt>おも</rt></ruby>っております。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、こちらこそありがとうございました。<br>*(Chúng tôi mới phải cảm ơn. Linh chăm chỉ, nghiêm túc, tôi coi như con gái. 3 năm qua, chúng tôi mới phải cảm ơn.)* |
| Bà 親方 | (mắt đỏ) リンさんが<ruby>来<rt>き</rt></ruby>てから、<ruby>家<rt>いえ</rt></ruby>が<ruby>明<rt>あか</rt></ruby>るくなりました。<br>*(Từ khi Linh đến, nhà tôi sáng sủa hơn.)* |
| Linh | (dịch) Bà bảo từ khi có con, nhà ấm áp hơn. |
| Mẹ Linh | (VN, khóc, lấy khăn) Trời ơi… |

---

## Tình huống 8 — こたつ · 22:30, 親方 chính thức đề nghị qua phiên dịch của Linh

| Vai | Lời thoại |
|---|---|
| 親方 | お<ruby>母様<rt>かあさま</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>はリンさんのことで、お<ruby>願<rt>ねが</rt></ruby>いがありまして<ruby>来日<rt>らいにち</rt></ruby>していただきました。<br>*(Bác gái, hôm nay có chuyện về Linh muốn nhờ, nên tôi mời bác sang Nhật.)* |
| Linh | (dịch) Mẹ, ông nói hôm nay mời mẹ sang vì có chuyện về con cần bàn. |
| 親方 | リンさんは<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>でTTSの<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>が<ruby>満了<rt>まんりょう</rt></ruby>します。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1で<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>働<rt>はたら</rt></ruby>いていただきたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Linh tháng 3 hết hợp đồng TTS 3 năm. Tôi mong em làm tiếp SSW1 từ tháng 4.)* |
| Linh | (dịch) Mẹ, tháng 3 con hết hợp đồng TTS. Ông muốn con ký SSW1 làm tiếp. |
| 親方 | さらに、<ruby>長期的<rt>ちょうきてき</rt></ruby>には、この<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>運営<rt>うんえい</rt></ruby>をリンさんに<ruby>託<rt>たく</rt></ruby>していきたい。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>にはSSW2<ruby>号<rt>ごう</rt></ruby>に<ruby>昇格<rt>しょうかく</rt></ruby>し、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べる<ruby>資格<rt>しかく</rt></ruby>も<ruby>取<rt>と</rt></ruby>れます。<br>*(Hơn nữa, lâu dài tôi muốn giao việc quản lý nông trại cho Linh. 5 năm nữa lên SSW2号, có tư cách gọi gia đình sang.)* |
| Linh | (dịch chậm) Mẹ, ông bảo lâu dài muốn giao nông trại cho con quản lý. 5 năm nữa lên SSW2 thì con được gọi gia đình sang. |
| Mẹ Linh | (VN, im một lúc, đặt tay lên tay Linh) Linh à, ông nói thật lòng đó chứ? |
| Linh | (sang JP) <ruby>母<rt>はは</rt></ruby>が、ご<ruby>本心<rt>ほんしん</rt></ruby>からのお<ruby>話<rt>はなし</rt></ruby>でしょうか、と<ruby>伺<rt>うかが</rt></ruby>っております。<br>*(Mẹ em hỏi đây có thật lòng không ạ?)* |
| 親方 | (cúi đầu) <ruby>本心<rt>ほんしん</rt></ruby>でございます。<ruby>農場<rt>のうじょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>代<rt>だい</rt></ruby><ruby>続<rt>つづ</rt></ruby>いたものです。<ruby>血<rt>ち</rt></ruby>のつながりはなくとも、リンさんに<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>いでほしい。<br>*(Thật lòng ạ. Nông trại đã 3 đời. Dù không huyết thống, tôi muốn Linh kế thừa.)* |
| Linh | (dịch sang VN) Ông bảo thật lòng. Nông trại 3 đời rồi, dù không họ hàng, ông muốn con kế thừa. |
| Mẹ Linh | (VN, nắm tay 親方) Cảm ơn ông. Tôi xin về suy nghĩ. |

---

## Tình huống 9 — 寮 Linh · 23:30, đêm đầu mẹ ngủ ở 寮 con

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | (VN, nhìn quanh phòng nhỏ 6 chiếu) Phòng con ở đây à? Nhỏ thế. |
| Linh | (VN) Nhỏ nhưng đủ mẹ ạ. Có máy sưởi, có bếp nhỏ. Mẹ ngủ giường con, con trải futon dưới đất. |
| Mẹ Linh | (VN) Không, mẹ ngủ futon được mà. Hồi xưa mẹ cũng ngủ chiếu suốt. |
| Linh | (VN, dứt khoát) Mẹ ngủ giường. Con quen rồi. Mẹ tắm bồn đi, con đã hâm nóng nước rồi. |
| Mẹ Linh | (VN) Mẹ chưa bao giờ tắm bồn kiểu Nhật. Sao tắm? |
| Linh | (VN) Mẹ tắm ngoài bồn cho sạch trước, xong mới vào ngâm. Nước nóng 40°C, ngâm 15 phút thôi không là tụt huyết áp. |
| Mẹ Linh | (VN, cười) Bên này tắm cũng có quy tắc nhỉ. |
| Linh | (VN) Mẹ ơi, hôm nay ông nói chuyện kế nghiệp, mẹ thấy sao? |
| Mẹ Linh | (VN, suy nghĩ) Mẹ thấy ông bà tử tế thật. Bà nấu phở đúng vị, lại còn đặt mua giá đỗ với rau quế. Đó là tâm chứ không phải diễn. |
| Linh | (VN) Vâng mẹ. |
| Mẹ Linh | (VN) Nhưng mẹ chưa quyết. Mai mẹ ra đồng xem con làm việc, xem ハウス, gặp đồng nghiệp con, rồi mẹ nói. |
| Linh | (VN) Vâng mẹ. Ngủ đi mẹ, mai 6 giờ con dậy đi làm sớm. |

---

## Tình huống 10 — ハウス số 5 · 7:30 sáng, mẹ Linh đi cùng ra đồng, gặp Ali và Carlo

| Vai | Lời thoại |
|---|---|
| Linh | (chỉ vào nhà kính) Mẹ, đây là ハウス số 5, trồng cà chua vụ đông. |
| Mẹ Linh | (VN, ngạc nhiên) Sao mùa đông lại trồng cà chua được? |
| Linh | (VN) Trong nhà kính ấm hơn 15°C. Có lò sưởi gas tự động. |
| Ali | (Indonesia, vẫy) リンさん、おはよう！(thấy mẹ Linh) こちら、お<ruby>母様<rt>かあさま</rt></ruby>ですか？<br>*(Linh chào buổi sáng! Đây là mẹ Linh à?)* |
| Linh | はい、<ruby>母<rt>はは</rt></ruby>です。ご<ruby>紹介<rt>しょうかい</rt></ruby>します。アリさん、インドネシアから<ruby>来<rt>き</rt></ruby>ました。<ruby>同僚<rt>どうりょう</rt></ruby>です。<br>*(Vâng, mẹ em. Em xin giới thiệu. Anh Ali, từ Indonesia. Đồng nghiệp.)* |
| Ali | (cúi đầu) お<ruby>母様<rt>かあさま</rt></ruby>、はじめまして。リンさんはとても<ruby>頼<rt>たよ</rt></ruby>りになる<ruby>先輩<rt>せんぱい</rt></ruby>です。<br>*(Bác gái, rất hân hạnh. Linh là sempai rất tin cậy.)* |
| Linh | (dịch) Mẹ, anh Ali bảo coi con là sempai tin cậy. |
| Mẹ Linh | (VN, cười) Sang đây tự nhiên thành sempai à? |
| Carlo | (Philippines, đến) お<ruby>母様<rt>かあさま</rt></ruby>、おはようございます！<ruby>息子<rt>むすこ</rt></ruby>のように<ruby>育<rt>そだ</rt></ruby>てていただいて、<ruby>感謝<rt>かんしゃ</rt></ruby>しています。リンさんと<ruby>同<rt>おな</rt></ruby>じく。<br>*(Bác gái, chào buổi sáng! Cảm ơn bác đã dưỡng dục, cũng giống Linh.)* |
| Linh | (dịch) Anh Carlo bảo cảm ơn mẹ vì sinh ra con — như sinh ra anh ấy vậy. Ý là quý con. |
| Mẹ Linh | (VN, vẫy tay với hai người, dùng câu đã tập) ヨロシク オネガイシマス。 |
| Ali, Carlo | (cùng cúi đầu) こちらこそ！ |

---

## Tình huống 11 — Trong ハウス · 8:30, mẹ Linh xem con thu hoạch cà chua

| Vai | Lời thoại |
|---|---|
| Linh | Mẹ, cầm cái khay này, con cắt cuống rồi đặt vào. |
| Mẹ Linh | (VN) Trời cà chua to ghê. Mà xếp hàng thẳng tắp luôn. |
| Linh | (VN) Đây là giống フルティカ — cà chua trung. Mỗi cây cao 2m, có dây leo. Mỗi cây cho 30-40 quả/vụ. |
| Mẹ Linh | (VN, cầm 1 quả) Sao quả đỏ đều thế con, không có chỗ xanh chỗ đỏ. |
| Linh | (VN) Bí quyết là điều khiển nhiệt độ ban đêm 10°C, ban ngày 22°C. Có máy tự động. Mẹ nhìn cái màn hình kia. |
| Mẹ Linh | (VN, ngó màn hình) Nhật quá! Bên mình cứ làm theo cảm tính, không có máy đo. |
| Linh | (Linh nói tiếng Nhật với mẹ, dạy mẹ vài câu) お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>収穫<rt>しゅうかく</rt></ruby>、と<ruby>言<rt>い</rt></ruby>います。「シュウカク」。<br>*(Mẹ, "thu hoạch" gọi là 収穫. "Shuukaku".)* |
| Mẹ Linh | (lặp) シュウカク。 |
| 親方 | (bước vào ハウス) お<ruby>母様<rt>かあさま</rt></ruby>、リンさんは<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>名人<rt>めいじん</rt></ruby>ですよ。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>で<ruby>200<rt>にひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>取<rt>と</rt></ruby>れます。<br>*(Bác gái, Linh là cao thủ thu hoạch đấy. 1 giờ hái 200 quả.)* |
| Linh | (dịch sang VN, ngại) Ông khen con là 名人 thu hoạch. |
| Mẹ Linh | (VN, vỗ vai Linh) Con tôi đấy. |

---

## Tình huống 12 — 母屋 bữa trưa · 12:00, mẹ Linh trả lời 親方

*Sau khi xem cả 4 ハウス, gặp Ali Carlo, ngắm trang thiết bị, kotatsu lại được mở. Bà Sáu đã quyết.*

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | (VN) Linh, dịch cho mẹ nói chuyện hôm qua. |
| Linh | (gật) Vâng mẹ. |
| Mẹ Linh | (VN) Ông Yamamoto, bà Yamamoto, sáng nay tôi đi xem ハウス, gặp Ali, Carlo, thấy con tôi làm việc. Tôi yên tâm rồi. |
| Linh | (dịch JP) <ruby>山本<rt>やまもと</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>奥様<rt>おくさま</rt></ruby>、<ruby>今朝<rt>けさ</rt></ruby>ハウスを<ruby>拝見<rt>はいけん</rt></ruby>し、<ruby>同僚<rt>どうりょう</rt></ruby>の<ruby>方々<rt>かたがた</rt></ruby>にもお<ruby>会<rt>あ</rt></ruby>いし、<ruby>娘<rt>むすめ</rt></ruby>の<ruby>働<rt>はたら</rt></ruby>き<ruby>振<rt>ぶ</rt></ruby>りを<ruby>見<rt>み</rt></ruby>させていただきました。<ruby>安心<rt>あんしん</rt></ruby>いたしました。<br>*(Bác Yamamoto, bác gái, sáng nay xem ハウス, gặp các đồng nghiệp, được nhìn con làm việc. Tôi yên tâm rồi.)* |
| Mẹ Linh | (VN) Linh có ở lại Nhật làm SSW1 hay không, tôi để cháu tự quyết. Nhưng nếu cháu chọn ở lại, vợ chồng tôi đồng ý. |
| Linh | (dịch JP) <ruby>娘<rt>むすめ</rt></ruby>がSSW1で<ruby>残<rt>のこ</rt></ruby>るかどうかは<ruby>本人<rt>ほんにん</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せます。ただ、<ruby>本人<rt>ほんにん</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>ることを<ruby>選<rt>えら</rt></ruby>ぶなら、<ruby>夫婦<rt>ふうふ</rt></ruby>として<ruby>賛成<rt>さんせい</rt></ruby>いたします。<br>*(Việc con ở lại SSW1 hay không, để con tự quyết. Nhưng nếu cháu chọn ở lại, vợ chồng tôi đồng ý.)* |
| 親方 | (cúi đầu sâu) ありがとうございます。お<ruby>母様<rt>かあさま</rt></ruby>のご<ruby>理解<rt>りかい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Cảm ơn bác. Sự thấu hiểu của bác, tôi thực sự cảm ơn.)* |
| Mẹ Linh | (VN, tiếp) Nhưng tôi có một điều xin ông bà. Mỗi năm Tết âm, cho cháu về Việt Nam 2 tuần. Cháu đi 3 năm chưa về lần nào. |
| Linh | (dịch JP) <ruby>1<rt>ひと</rt></ruby>つだけお<ruby>願<rt>ねが</rt></ruby>いがあります。<ruby>毎年<rt>まいとし</rt></ruby>テト（ベトナム<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>）に<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>娘<rt>むすめ</rt></ruby>を<ruby>帰省<rt>きせい</rt></ruby>させてください。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>一度<rt>いちど</rt></ruby>も<ruby>帰<rt>かえ</rt></ruby>っていないので。<br>*(Chỉ có 1 đề nghị: mỗi năm Tết Việt cho cháu về 2 tuần. 3 năm qua cháu chưa về lần nào.)* |
| 親方 | もちろんです。<ruby>農閑期<rt>のうかんき</rt></ruby>ですので、<ruby>毎年<rt>まいとし</rt></ruby>テトの<ruby>帰省<rt>きせい</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>確保<rt>かくほ</rt></ruby>いたします。<br>*(Đương nhiên. Mùa nông nhàn mà. Mỗi năm Tết về phép, tôi nhất định đảm bảo.)* |
| Mẹ Linh | (VN, cúi đầu sâu) Cảm ơn ông bà. |

---

## Tình huống 13 — Đồng ruộng cạnh nhà 親方 · 14:00, mẹ Linh xuống ruộng nhìn đất

*Khoảnh ruộng nhỏ cạnh nhà chính, đất ngủ đông phủ tuyết mỏng. Bà Sáu xuống ruộng, cào tuyết, bốc lên một nắm đất.*

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | (VN, bốc đất lên ngửi) Đất tốt thật con ơi. Đen, tơi, ẩm vừa phải. |
| Linh | (VN) Đất Ibaraki nổi tiếng tốt mẹ ạ. Có cả đất núi lửa Tsukuba pha vào. |
| Mẹ Linh | (VN) Khác đất Đồng Tháp. Đồng Tháp đất phù sa nhiều mùn, đất này chắc hơn. |
| 親方 | (đến gần) お<ruby>母様<rt>かあさま</rt></ruby>、<ruby>土<rt>つち</rt></ruby>を<ruby>触<rt>さわ</rt></ruby>っていらっしゃるんですね。<br>*(Bác đang sờ đất nhỉ.)* |
| Mẹ Linh | (qua Linh dịch) Tôi cũng là nông dân ông ạ. Mỗi lần ra ruộng, việc đầu tiên là bốc đất ngửi. |
| 親方 | (cười lớn) お<ruby>母様<rt>かあさま</rt></ruby>も<ruby>農家<rt>のうか</rt></ruby>ですか！どうりでリンさんが<ruby>土<rt>つち</rt></ruby>に<ruby>愛情<rt>あいじょう</rt></ruby>を<ruby>持<rt>も</rt></ruby>っているわけだ。<br>*(Bác cũng làm nông à! Bảo sao Linh có tình cảm với đất.)* |
| Linh | (dịch) Ông cười bảo bảo sao con yêu đất, hoá ra di truyền từ mẹ. |
| Mẹ Linh | (VN, bưng nắm đất, cho vào túi áo) Cho mẹ xin một nắm đất Nhật mang về Đồng Tháp được không? Mẹ để cạnh bàn thờ tổ tiên. Sau này con làm dâu đất này, tổ tiên biết. |
| Linh | (dịch nhỏ) Mẹ muốn xin nắm đất Nhật mang về quê. Đặt cạnh bàn thờ tổ tiên, để tổ tiên biết con làm việc trên đất này. |
| 親方 | (xúc động, cúi đầu) どうぞ、お<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>りください。<ruby>3<rt>さん</rt></ruby><ruby>代<rt>だい</rt></ruby>の<ruby>土<rt>つち</rt></ruby>です。ご<ruby>先祖様<rt>せんぞさま</rt></ruby>に<ruby>届<rt>とど</rt></ruby>けてください。<br>*(Mời bác, mang về đi. Đất 3 đời đấy. Xin gửi đến tổ tiên.)* |

---

## Tình huống 14 — 寮 Linh · 21:00, đêm cuối, hai mẹ con gói quà mang về Việt Nam (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — đêm cuối trước khi mẹ về VN, gói quà, dặn dò.

| Vai | Lời thoại |
|---|---|
| Mẹ Linh | (VN, ngồi xếp đồ) Con, hộp này là gì? |
| Linh | (VN) Đó là 納豆 đông lạnh con mua cho bố — bố nói muốn thử. Mẹ để vali có đá khô, qua hải quan chắc OK. |
| Mẹ Linh | (VN) Mùi mạnh ghê, mẹ bịt 3 lớp túi luôn. Còn cái túi vải này? |
| Linh | (VN) Khăn của bà 親方 tặng mẹ. Bà bảo dệt từ vải Mito. |
| Mẹ Linh | (VN) Bà ấy chu đáo quá. Hôm qua dạy mẹ làm 餅 nữa. Mẹ về cũng thử làm xem. |
| Linh | (VN) Mẹ về kể bố nghe chuyện 親方 đề nghị. Bố không phản đối chứ? |
| Mẹ Linh | (VN) Bố con là người khô khan, nhưng mẹ biết bố thương con. Bố sẽ chỉ hỏi 1 câu: "Con có hạnh phúc không". Nếu con đáp có, bố không nói gì nữa. |
| Linh | (VN, hơi run giọng) Vậy mẹ về nói với bố là con có. Sang đây 3 năm, lúc đầu khóc nhiều, giờ thì… con thấy mình thuộc về đất này. |
| Mẹ Linh | (VN) Mẹ nghe rồi. Còn cái nắm đất kia, mẹ đặt cạnh bàn thờ ông ngoại. Ông ngoại là người khai đất Đồng Tháp, ông sẽ vui khi cháu ngoại khai một mảnh đất mới ở Nhật. |
| Linh | (VN, ôm mẹ) Mẹ ơi… |
| Mẹ Linh | (VN, vỗ lưng Linh) Linh à, 3 năm con đi, mẹ quen rồi. Con cứ ở lại. Nhưng Tết phải về 2 tuần, ông 親方 hứa rồi. |
| Linh | (VN) Vâng mẹ. Mai con đưa mẹ ra sân bay sớm. Bay 11h, mình phải đi 6h sáng. |
| Mẹ Linh | (VN) Mẹ ngủ trước. Con cũng ngủ sớm đi. |
| Linh | (VN, nhìn nắm đất gói trong giấy bóng kính trên bàn) Mẹ ơi… cảm ơn mẹ đã sang. |
| Mẹ Linh | (VN, đã thiu thiu) Ngủ đi con. |

---

## Đọng lại chương 10

Chương 10 dạy nguyên bộ kỹ năng tiếng Nhật mà TTS năm 3 cần khi đón gia đình sang Nhật bằng visa 短期滞在 — đây là một trong những khoảnh khắc lớn nhất đời người đi xuất khẩu lao động. Học viên đọc xong nắm được: **mẫu câu đón người thân ở sân bay** (お<ruby>迎<rt>むか</rt></ruby>えに<ruby>上<rt>あ</rt></ruby>がりました・お<ruby>荷物<rt>にもつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がお<ruby>持<rt>も</rt></ruby>ちします), **giao tiếp với nhân viên quầy vé thay cho người thân không biết tiếng** (<ruby>並<rt>なら</rt></ruby>びの<ruby>席<rt>せき</rt></ruby>はありますか・<ruby>初<rt>はじ</rt></ruby>めての<ruby>来日<rt>らいにち</rt></ruby>), **giới thiệu mẹ với cấp trên trang trọng** (<ruby>母<rt>はは</rt></ruby>です・ご<ruby>紹介<rt>しょうかい</rt></ruby>します・ご<ruby>夫妻<rt>ふさい</rt></ruby>のご<ruby>厚情<rt>こうじょう</rt></ruby>), **phiên dịch hai chiều VN–JP cho buổi gặp cấp trên cực kỳ quan trọng** (<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になりました・<ruby>本心<rt>ほんしん</rt></ruby>でございます), **mẫu câu mẹ xin một đặc quyền cho con** (<ruby>毎年<rt>まいとし</rt></ruby>テトに<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>帰省<rt>きせい</rt></ruby>させてください), và **giải thích văn hoá nông thôn Nhật cho mẹ** (こたつの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>・<ruby>風呂<rt>ふろ</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>・<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>名人<rt>めいじん</rt></ruby>). Chốt chương là khoảnh khắc bà Sáu — nông dân Đồng Tháp — bốc một nắm đất Ibaraki mang về đặt cạnh bàn thờ tổ tiên: nghi thức nông dân ngầm hai dân tộc gặp nhau, vượt qua mọi rào cản ngôn ngữ. Đây là đêm Linh thực sự xác lập: mình thuộc về đất này, và mẹ đã chính thức trao ban.

> Từ vựng & mẫu câu chương này: <ruby>短期滞在<rt>たんきたいざい</rt></ruby>・<ruby>入国審査<rt>にゅうこくしんさ</rt></ruby>・<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>・<ruby>高速<rt>こうそく</rt></ruby>バス・<ruby>片道<rt>かたみち</rt></ruby>・<ruby>並<rt>なら</rt></ruby>びの<ruby>席<rt>せき</rt></ruby>・お<ruby>迎<rt>むか</rt></ruby>えに<ruby>上<rt>あ</rt></ruby>がりました・<ruby>家族<rt>かぞく</rt></ruby><ruby>同然<rt>どうぜん</rt></ruby>・<ruby>恐縮<rt>きょうしゅく</rt></ruby>・ご<ruby>夫妻<rt>ふさい</rt></ruby>・ご<ruby>厚情<rt>こうじょう</rt></ruby>・<ruby>働<rt>はたら</rt></ruby>き<ruby>者<rt>もの</rt></ruby>・<ruby>本心<rt>ほんしん</rt></ruby>・<ruby>運営<rt>うんえい</rt></ruby>・<ruby>託<rt>たく</rt></ruby>す・<ruby>昇格<rt>しょうかく</rt></ruby>・SSW2<ruby>号<rt>ごう</rt></ruby>・<ruby>賛成<rt>さんせい</rt></ruby>・<ruby>帰省<rt>きせい</rt></ruby>・<ruby>農閑期<rt>のうかんき</rt></ruby>・<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>名人<rt>めいじん</rt></ruby>・<ruby>愛情<rt>あいじょう</rt></ruby>・<ruby>先祖様<rt>せんぞさま</rt></ruby>・<ruby>3<rt>さん</rt></ruby><ruby>代<rt>だい</rt></ruby>の<ruby>土<rt>つち</rt></ruby>・<ruby>娘<rt>むすめ</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になりました・<ruby>本人<rt>ほんにん</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せます

## Bí quyết chương

- **短期滞在 visa**: visa du lịch thăm thân 15-90 ngày, cần thư bảo lãnh của 受入会社 hoặc người Nhật bảo lãnh + chứng minh tài chính. Cấp trên 親方 đứng tên bảo lãnh = tín hiệu cực kỳ trang trọng.
- **Phiên dịch hai chiều có chiến lược**: khi mẹ nói câu cảm xúc dài, nên dịch tóm theo cụm, không cướp giây hơi — để mẹ và cấp trên cùng "thở" giữa câu.
- **Bà 親方 nấu phở**: cao trào tình cảm — phụ nữ Nhật học công thức món Việt 2 năm để đón mẹ học viên = level chăm sóc gần như mẹ chồng.
- **Nắm đất tổ tiên**: motif "nông dân toàn thế giới gặp nhau qua đất" — học viên đọc sẽ nhớ rằng người nông dân Việt và Nhật đều có cùng nghi thức bốc đất ngửi.
- **Mẫu xin đặc quyền Tết về phép**: <ruby>1<rt>ひと</rt></ruby>つだけお<ruby>願<rt>ねが</rt></ruby>いがあります → <ruby>毎年<rt>まいとし</rt></ruby>〜させてください — câu này quý hơn vàng cho TTS chuyển SSW.
- **Mẹ quyết "để con tự quyết"**: trí tuệ cha mẹ Việt — không quyết hộ con cả đời, chỉ xác lập tinh thần "vợ chồng tôi đồng ý".

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 短期滞在 | たんきたいざい | ĐOẢN KỲ TRỆ TẠI | lưu trú ngắn hạn |
| 到着 | とうちゃく | ĐÁO TRƯỚC | đến nơi |
| 予定 | よてい | DỰ ĐỊNH | dự định |
| 入国審査 | にゅうこくしんさ | NHẬP QUỐC THẨM TRA | xét nhập cảnh |
| 来日 | らいにち | LAI NHẬT | sang Nhật |
| 客様 | きゃくさま | KHÁCH DẠNG | khách quý |
| 高速バス | こうそくバス | CAO TỐC — | xe bus tốc hành |
| 片道 | かたみち | PHIẾN ĐẠO | một chiều |
| 並び | ならび | TỊNH | xếp cạnh nhau |
| 席 | せき | TỊCH | chỗ ngồi |
| 窓側 | まどがわ | SONG TRẮC | bên cửa sổ |
| 通路側 | つうろがわ | THÔNG LỘ TRẮC | bên lối đi |
| 上手 | じょうず | THƯỢNG THỦ | giỏi |
| 越 | こ | VIỆT | đến (kính ngữ) |
| 茨城 | いばらき | TỪ THÀNH | tỉnh Ibaraki |
| 同然 | どうぜん | ĐỒNG NHIÊN | như là, giống hệt |
| 旅 | たび | LỮ | hành trình |
| 荷物 | にもつ | HÀ VẬT | hành lý |
| 恐縮 | きょうしゅく | KHỦNG SÚC | ngại, áy náy |
| 雪 | ゆき | TUYẾT | tuyết |
| 足元 | あしもと | TÚC NGUYÊN | dưới chân |
| 八百屋 | やおや | BÁT BÁCH ỐC | tiệm rau |
| 取り寄 | とりよ | THỦ KÝ | đặt mua, gọi đến |
| 厚情 | こうじょう | HẬU TÌNH | tình cảm sâu nặng |
| 夫妻 | ふさい | PHU THÊ | vợ chồng |
| 御礼 | おんれい | NGỰ LỄ | lời cảm tạ |
| 厚 | あつ | HẬU | dày, sâu sắc |
| 申し上 | もうしあ | THÂN THƯỢNG | xin thưa (kính ngữ) |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 心配 | しんぱい | TÂM BỐI | lo lắng |
| 働き者 | はたらきもの | LAO ĐỘNG GIẢ | người chăm chỉ |
| 真面目 | まじめ | CHÂN DIỆN MỤC | nghiêm túc |
| 明 | あか | MINH | sáng |
| 契約 | けいやく | KHẾ ƯỚC | hợp đồng |
| 満了 | まんりょう | MÃN LIỄU | mãn hạn |
| 引き続 | ひきつづ | DẪN TỤC | tiếp tục |
| 長期的 | ちょうきてき | TRƯỜNG KỲ ĐÍCH | dài hạn |
| 運営 | うんえい | VẬN DOANH | vận hành |
| 託 | たく | THÁC | giao phó |
| 昇格 | しょうかく | THĂNG CÁCH | thăng cấp |
| 資格 | しかく | TƯ CÁCH | tư cách |
| 本心 | ほんしん | BẢN TÂM | thật lòng |
| 受け継 | うけつ | THỤ KẾ | kế thừa |
| 任 | まか | NHIỆM | phó thác |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 理解 | りかい | LÝ GIẢI | thấu hiểu |
| 旧正月 | きゅうしょうがつ | CỰU CHÍNH NGUYỆT | Tết âm |
| 帰省 | きせい | QUY TỈNH | về quê |
| 農閑期 | のうかんき | NÔNG NHÀN KỲ | mùa nông nhàn |
| 確保 | かくほ | XÁC BẢO | đảm bảo |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 紹介 | しょうかい | THIỆU GIỚI | giới thiệu |
| 頼 | たよ | LẠI | tin cậy |
| 育 | そだ | DỤC | dưỡng dục |
| 感謝 | かんしゃ | CẢM TẠ | cảm tạ |
| 名人 | めいじん | DANH NHÂN | bậc thầy |
| 拝見 | はいけん | BÁI KIẾN | xem (khiêm nhường) |
| 安心 | あんしん | AN TÂM | yên tâm |
| 本人 | ほんにん | BẢN NHÂN | chính người đó |
| 愛情 | あいじょう | ÁI TÌNH | tình yêu |
| 触 | さわ | XÚC | chạm, sờ |
| 土 | つち | THỔ | đất |
| 先祖様 | せんぞさま | TIÊN TỔ DẠNG | tổ tiên |
| 届 | とど | GIỚI | gửi đến |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000011, 800000042, NULL, 'markdown_book', 'T11. Linh quyết định ở lại, ký hợp đồng SSW1', '# Sách thực tập sinh nông nghiệp · T11. Linh quyết định ở lại, ký hợp đồng SSW1

> **Mục tiêu nhân vật:** Linh (24 tuổi, Đồng Tháp). Học các mẫu hội thoại tiếng Nhật khi chuyển từ TTS sang 特定技能1号: thông báo quyết định cho cấp trên (お返事させていただきます), trao đổi với 監理団体 và 登録支援機関 (説明を受ける), đọc-hỏi điều khoản hợp đồng (給与・社会保険・有給休暇), nộp hồ sơ ở 入国管理局 (在留資格変更), khám sức khỏe và làm lại 在留カード, và mở đường đi dài hạn (5 năm SSW1 + 2号).

---

## Bối cảnh

Cuối tháng 2 năm 2028, nông trại Ibaraki và 入国管理局 Mito (sau là Tsukuba). Mẹ Linh đã về VN tuần trước. Linh đã suy nghĩ kỹ, hôm nay sẽ chính thức trả lời 親方. Hợp đồng TTS hết 31/3, từ 1/4 cần có 在留資格 mới = 特定技能1号. Quy trình chuyển đổi cần: hoàn tất 3 năm TTS (miễn thi 技能評価試験 và 日本語), khám sức khỏe, đổi 在留カード, ký hợp đồng mới với 受入機関 (vẫn là nông trại Yamamoto) và 登録支援機関 mới. Trình độ N3, đã có 検定 cấp 3 và JAS有機. Chương này tập trung: kỹ năng giao tiếp Nhật trong toàn bộ quy trình thủ tục — cuộc đời nhiều khi không phải vất vả lao động, mà là vất vả giấy tờ.

---

## Tình huống 1 — 寮 Linh · 6:00, độc thoại đêm trước quyết định

| Vai | Lời thoại |
|---|---|
| Linh | (ngồi trước bàn, mở vở ghi 2 cột "Về VN" / "Ở lại Nhật") <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>。<br>*(Ngày 15/2/2028, 6 giờ sáng.)* |
| Linh | (viết tiếng Việt vào "Về VN") Về quê, gặp bố mẹ, có thể về phụ ruộng. Lương thấp. Mất 3 năm xây dựng ở đây. |
| Linh | (viết "Ở lại") Lương SSW1 gấp 2 TTS. 5 năm sau có thể gọi gia đình. Có 親方 tin tưởng. Cô đơn ban đầu. |
| Linh | (gấp vở, hít sâu) <ruby>決<rt>き</rt></ruby>めました。<ruby>残<rt>のこ</rt></ruby>ります。<br>*(Mình đã quyết. Mình sẽ ở lại.)* |
| Linh | <ruby>母<rt>はは</rt></ruby>が<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>った<ruby>土<rt>つち</rt></ruby>は、ご<ruby>先祖様<rt>せんぞさま</rt></ruby>に<ruby>届<rt>とど</rt></ruby>いた。<ruby>今<rt>いま</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がここで<ruby>耕<rt>たがや</rt></ruby>す<ruby>番<rt>ばん</rt></ruby>。<br>*(Nắm đất mẹ mang về đã đến tổ tiên. Giờ đến lượt mình cày ở đây.)* |

---

## Tình huống 2 — Văn phòng 親方 · 8:00, Linh chính thức trả lời

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby><ruby>礼<rt>れい</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(親方, em xin chút thời gian trước briefing sáng được không ạ?)* |
| 親方 | もちろん、どうぞ。<ruby>座<rt>すわ</rt></ruby>って。<br>*(Tất nhiên, em ngồi đi.)* |
| Linh | (đứng nghiêm, hai tay đặt trước) <ruby>先月<rt>せんげつ</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>、ずっと<ruby>考<rt>かんが</rt></ruby>えてまいりました。お<ruby>返事<rt>へんじ</rt></ruby>させていただきます。<br>*(Câu chuyện tháng trước em đã suy nghĩ liên tục. Xin được trả lời.)* |
| 親方 | (gật, không cắt lời) はい。<br>*(Vâng.)* |
| Linh | <ruby>母<rt>はは</rt></ruby>と<ruby>父<rt>ちち</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>しまして、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>で<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>かせていただきたく、お<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Đã bàn với mẹ và bố, em xin được tiếp tục làm với tư cách SSW1 tại nông trại Yamamoto từ tháng 4 ạ.)* |
| Linh | (cúi đầu 30 độ, giữ 3 giây) どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin được nhờ cậy ạ.)* |
| 親方 | (đứng dậy, cúi đầu đáp) ありがとう、リンさん。こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn Linh. Tôi cũng vậy, xin nhờ em.)* |
| 親方 | (giọng nhẹ) お<ruby>母様<rt>かあさま</rt></ruby>はお<ruby>元気<rt>げんき</rt></ruby>ですか？<br>*(Bác gái khoẻ không?)* |
| Linh | <ruby>無事<rt>ぶじ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>って、フォーの<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>と<ruby>奥様<rt>おくさま</rt></ruby>のお<ruby>餅<rt>もち</rt></ruby>の<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>近所<rt>きんじょ</rt></ruby>に<ruby>自慢<rt>じまん</rt></ruby>しているそうです。<br>*(Mẹ em về an toàn rồi, đang khoe khắp xóm cách làm phở và cách bà 奥様 dạy làm mochi.)* |
| 親方 | (cười lớn) よかった！では<ruby>早速<rt>さっそく</rt></ruby>、<ruby>監理団体<rt>かんりだんたい</rt></ruby>と<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>しよう。<br>*(May quá! Vậy tôi gọi 監理団体 và 登録支援機関 ngay.)* |

---

## Tình huống 3 — Văn phòng nông trại · 10:00, gọi điện 監理団体 phía TTS

| Vai | Lời thoại |
|---|---|
| 親方 | (gọi điện, để loa ngoài) お<ruby>世話<rt>せわ</rt></ruby>になっております、<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>の<ruby>山本<rt>やまもと</rt></ruby>です。<br>*(Xin chào, tôi là Yamamoto của nông trại Yamamoto.)* |
| 監理団体 | お<ruby>世話<rt>せわ</rt></ruby>になっております、<ruby>関東<rt>かんとう</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby><ruby>協同組合<rt>きょうどうくみあい</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>です。<br>*(Xin chào, tôi là Tanaka từ HTX Nông nghiệp Kanto.)* |
| 親方 | グエン・ティ・リンさんの<ruby>件<rt>けん</rt></ruby>で。<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>でTTS<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>が<ruby>満了<rt>まんりょう</rt></ruby>します。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>することになりました。<br>*(Về việc Nguyễn Thị Linh. Hết hợp đồng TTS 3 năm cuối tháng 3. Từ tháng 4 sẽ chuyển sang 特定技能1号.)* |
| 監理団体 | おめでとうございます。リンさんは<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>済<rt>ず</rt></ruby>みですので、<ruby>農業<rt>のうぎょう</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>免除<rt>めんじょ</rt></ruby>です。<br>*(Xin chúc mừng. Linh đã đỗ 技能検定 cấp 3 nên được miễn 試験 đánh giá kỹ năng nông nghiệp.)* |
| 親方 | <ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は？<br>*(Còn 試験 tiếng Nhật?)* |
| 監理団体 | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>良好<rt>りょうこう</rt></ruby>な<ruby>修了<rt>しゅうりょう</rt></ruby><ruby>実績<rt>じっせき</rt></ruby>なので、<ruby>JFT-Basic<rt>ジェイエフティーベーシック</rt></ruby>も<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力試験<rt>のうりょくしけん</rt></ruby>N4<ruby>以上<rt>いじょう</rt></ruby>も<ruby>免除<rt>めんじょ</rt></ruby>です。N3<ruby>合格<rt>ごうかく</rt></ruby><ruby>済<rt>ず</rt></ruby>みですし。<br>*(3 năm hoàn thành tốt nên được miễn cả JFT-Basic và JLPT N4 trở lên. Hơn nữa em ấy đã đỗ N3.)* |
| Linh | (ghé vào) <ruby>田中様<rt>たなかさま</rt></ruby>、リンです。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>送出<rt>そうしゅつ</rt></ruby><ruby>機関<rt>きかん</rt></ruby>への<ruby>挨拶<rt>あいさつ</rt></ruby>はどうすればよろしいでしょうか？<br>*(Anh Tanaka, em là Linh. 3 năm qua đã nhờ vả nhiều. Em chào 送出機関 phía VN thế nào ạ?)* |
| 監理団体 | <ruby>送出<rt>そうしゅつ</rt></ruby><ruby>機関<rt>きかん</rt></ruby>には<ruby>私<rt>わたし</rt></ruby>どもから<ruby>正式<rt>せいしき</rt></ruby>に<ruby>通知<rt>つうち</rt></ruby>します。リンさんは<ruby>感謝<rt>かんしゃ</rt></ruby>のメッセージを<ruby>送<rt>おく</rt></ruby>っていただければ<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Tôi sẽ thông báo chính thức cho 送出機関. Em chỉ cần gửi tin nhắn cảm ơn là đủ.)* |

---

## Tình huống 4 — Quán cà phê Mito · 14:00, gặp 登録支援機関 mới

*Phía SSW1 không dùng 監理団体 nữa mà chuyển sang 登録支援機関. 親方 đã chọn công ty Hanamizu Support cho Linh.*

| Vai | Lời thoại |
|---|---|
| Hanamizu | (đứng dậy bắt tay) <ruby>花水<rt>はなみず</rt></ruby>サポートの<ruby>山本<rt>やまもと</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi là Yamamoto của Hanamizu Support. Hôm nay xin nhờ.)* |
| Linh | リンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là Linh. Xin nhờ ạ.)* |
| Yamamoto | では、<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>からご<ruby>説明<rt>せつめい</rt></ruby>いたします。<br>*(Vậy tôi xin giải thích vai trò của 登録支援機関.)* |
| Yamamoto | TTS<ruby>時代<rt>じだい</rt></ruby>の<ruby>監理団体<rt>かんりだんたい</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>い、<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>の<ruby>支援<rt>しえん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。<ruby>住居<rt>じゅうきょ</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>、<ruby>生活<rt>せいかつ</rt></ruby>オリエンテーション、<ruby>役所<rt>やくしょ</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>き<ruby>同行<rt>どうこう</rt></ruby>、<ruby>苦情<rt>くじょう</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>などです。<br>*(Khác với 監理団体 thời TTS, 登録支援機関 phụ trách 10 hạng mục hỗ trợ. Tìm nhà, định hướng sinh hoạt, đi cùng làm thủ tục, tiếp nhận khiếu nại…)* |
| Linh | <ruby>住居<rt>じゅうきょ</rt></ruby>はTTS<ruby>時代<rt>じだい</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>に<ruby>住<rt>す</rt></ruby>み<ruby>続<rt>つづ</rt></ruby>けられますか？<br>*(Em có ở tiếp 寮 thời TTS được không ạ?)* |
| Yamamoto | はい、<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>提供<rt>ていきょう</rt></ruby>します。<ruby>家賃<rt>やちん</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>給与<rt>きゅうよ</rt></ruby>から<ruby>天引<rt>てんび</rt></ruby>きです。<br>*(Có. Nông trại Yamamoto sẽ tiếp tục cung cấp. Tiền nhà 20.000 yên/tháng, trừ thẳng lương.)* |
| Linh | <ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>具体的<rt>ぐたいてき</rt></ruby>にいくらでしょうか？<br>*(Lương cụ thể bao nhiêu ạ?)* |
| Yamamoto | <ruby>月<rt>つき</rt></ruby><ruby>給<rt>きゅう</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>手当<rt>てあて</rt></ruby><ruby>別途<rt>べっと</rt></ruby>。<ruby>賞与<rt>しょうよ</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>日<rt>か</rt></ruby>です。<br>*(Lương tháng 220.000 yên, thêm phụ cấp tăng ca. Thưởng 2 lần/năm, nghỉ phép 10 ngày/năm.)* |
| Linh | TTSの<ruby>時<rt>とき</rt></ruby>の<ruby>1.8<rt>いってんはち</rt></ruby><ruby>倍<rt>ばい</rt></ruby>くらいですね。<br>*(Khoảng 1.8 lần so với thời TTS nhỉ.)* |
| Yamamoto | <ruby>社会保険<rt>しゃかいほけん</rt></ruby>、<ruby>厚生年金<rt>こうせいねんきん</rt></ruby>、<ruby>雇用保険<rt>こようほけん</rt></ruby>、<ruby>労災保険<rt>ろうさいほけん</rt></ruby>、<ruby>全<rt>すべ</rt></ruby>て<ruby>会社<rt>かいしゃ</rt></ruby><ruby>負担<rt>ふたん</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>です。<br>*(Bảo hiểm xã hội, lương hưu, thất nghiệp, tai nạn lao động — công ty chịu 1 nửa.)* |

---

## Tình huống 5 — Quán cà phê Mito · 15:00, đọc hợp đồng SSW1 từng điều khoản

| Vai | Lời thoại |
|---|---|
| Yamamoto | (đặt xấp hợp đồng) <ruby>契約書<rt>けいやくしょ</rt></ruby><ruby>本体<rt>ほんたい</rt></ruby>です。<ruby>1<rt>いっ</rt></ruby><ruby>条<rt>じょう</rt></ruby>ずつ<ruby>確認<rt>かくにん</rt></ruby>しましょう。<ruby>分<rt>わ</rt></ruby>からないところはすぐお<ruby>聞<rt>き</rt></ruby>きください。<br>*(Hợp đồng chính. Mình kiểm tra từng điều. Không hiểu gì cứ hỏi ngay.)* |
| Linh | はい。<br>*(Vâng.)* |
| Yamamoto | <ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>条<rt>じょう</rt></ruby>、<ruby>業務内容<rt>ぎょうむないよう</rt></ruby>。<ruby>耕種<rt>こうしゅ</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby><ruby>全般<rt>ぜんぱん</rt></ruby>と<ruby>記載<rt>きさい</rt></ruby>されていますね。<br>*(Điều 3, nội dung công việc. Ghi "nông nghiệp trồng trọt toàn diện".)* |
| Linh | この「<ruby>耕種<rt>こうしゅ</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby><ruby>全般<rt>ぜんぱん</rt></ruby>」は、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれますか？<br>*(Câu này cụ thể bao gồm gì ạ?)* |
| Yamamoto | <ruby>栽培管理<rt>さいばいかんり</rt></ruby>、<ruby>収穫<rt>しゅうかく</rt></ruby>、<ruby>出荷<rt>しゅっか</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>、<ruby>農作物<rt>のうさくぶつ</rt></ruby>の<ruby>運搬<rt>うんぱん</rt></ruby>です。<ruby>畜産<rt>ちくさん</rt></ruby>は<ruby>含<rt>ふく</rt></ruby>みません。<br>*(Quản lý trồng trọt, thu hoạch, điều chỉnh xuất hàng, vận chuyển. Không bao gồm chăn nuôi.)* |
| Linh | <ruby>第<rt>だい</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>条<rt>じょう</rt></ruby>の<ruby>労働時間<rt>ろうどうじかん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>週<rt>しゅう</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>月<rt>げつ</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>。これは<ruby>農繁期<rt>のうはんき</rt></ruby>でも<ruby>守<rt>まも</rt></ruby>られますか？<br>*(Em xin kiểm tra điều 7 — thời gian lao động. 1 ngày 8h, tuần 40h, tăng ca 45h/tháng. Mùa vụ bận có giữ được không ạ?)* |
| Yamamoto | <ruby>農業<rt>のうぎょう</rt></ruby>は<ruby>労働基準法<rt>ろうどうきじゅんほう</rt></ruby>の<ruby>適用除外<rt>てきようじょがい</rt></ruby><ruby>業種<rt>ぎょうしゅ</rt></ruby>ですが、<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>はあえて<ruby>労基法<rt>ろうきほう</rt></ruby><ruby>準拠<rt>じゅんきょ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでいます。<br>*(Nông nghiệp là ngành ngoại lệ với Luật lao động, nhưng nông trại Yamamoto chủ động chọn tuân thủ luật.)* |
| Linh | (ngạc nhiên) <ruby>適用除外<rt>てきようじょがい</rt></ruby>、<ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Ngoại lệ áp dụng, em chưa biết.)* |
| Yamamoto | <ruby>多<rt>おお</rt></ruby>くの<ruby>農家<rt>のうか</rt></ruby>は<ruby>適用除外<rt>てきようじょがい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていますが、<ruby>山本<rt>やまもと</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>例外<rt>れいがい</rt></ruby>です。リンさん、ラッキーですね。<br>*(Nhiều nhà nông dùng ngoại lệ, nhưng Yamamoto là ngoại lệ. Linh may đấy.)* |
| Linh | (gật) <ruby>分<rt>わ</rt></ruby>かりました。<ruby>署名<rt>しょめい</rt></ruby>させていただきます。<br>*(Em hiểu rồi. Em xin ký.)* |

---

## Tình huống 6 — Mito 駅前クリニック · 9:00 hôm sau, khám sức khỏe lao động

| Vai | Lời thoại |
|---|---|
| Tiếp tân | <ruby>本日<rt>ほんじつ</rt></ruby>のご<ruby>予約<rt>よやく</rt></ruby>のリンさんですね。<ruby>労働省<rt>ろうどうしょう</rt></ruby>の<ruby>定期<rt>ていき</rt></ruby><ruby>健康診断<rt>けんこうしんだん</rt></ruby><ruby>項目<rt>こうもく</rt></ruby><ruby>全<rt>ぜん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>です。<br>*(Linh có hẹn hôm nay nhỉ. Khám sức khỏe định kỳ Bộ Lao động — 10 hạng mục.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, xin nhờ.)* |
| Bác sĩ | (đo huyết áp) <ruby>血圧<rt>けつあつ</rt></ruby>は<ruby>118<rt>ひゃくじゅうはち</rt></ruby>/<ruby>72<rt>ななじゅうに</rt></ruby>、<ruby>正常<rt>せいじょう</rt></ruby>です。リンさん、<ruby>農作業<rt>のうさぎょう</rt></ruby>でぎっくり<ruby>腰<rt>ごし</rt></ruby>などしたことはありますか？<br>*(Huyết áp 118/72, bình thường. Linh, khi làm nông có bị đau lưng cấp gì không?)* |
| Linh | <ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>に<ruby>軽<rt>かる</rt></ruby>く<ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めましたが、<ruby>湿布<rt>しっぷ</rt></ruby>で<ruby>治<rt>なお</rt></ruby>りました。<ruby>現在<rt>げんざい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Mùa hè năm 1 em bị đau lưng nhẹ, dán salonpas hết. Giờ ổn rồi.)* |
| Bác sĩ | <ruby>農繁期<rt>のうはんき</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>腰<rt>こし</rt></ruby>のストレッチを<ruby>習慣<rt>しゅうかん</rt></ruby><ruby>化<rt>か</rt></ruby>しましょう。<ruby>聴診器<rt>ちょうしんき</rt></ruby>を<ruby>当<rt>あ</rt></ruby>てます。<br>*(Trước mùa vụ bận hãy tập thói quen giãn lưng. Tôi áp ống nghe.)* |
| Linh | はい。<br>*(Vâng.)* |
| Bác sĩ | <ruby>呼吸器<rt>こきゅうき</rt></ruby><ruby>異常<rt>いじょう</rt></ruby>なし、<ruby>心音<rt>しんおん</rt></ruby><ruby>正常<rt>せいじょう</rt></ruby>。<ruby>胸部<rt>きょうぶ</rt></ruby>レントゲン<ruby>異常<rt>いじょう</rt></ruby>なし。<ruby>採血<rt>さいけつ</rt></ruby>もこの<ruby>後<rt>あと</rt></ruby><ruby>行<rt>おこな</rt></ruby>います。<br>*(Hô hấp không bất thường, tim bình thường. X quang ngực bình thường. Lấy máu sẽ làm sau.)* |
| Linh | <ruby>診断書<rt>しんだんしょ</rt></ruby>はいつ<ruby>頂<rt>いただ</rt></ruby>けますか？<br>*(Bao giờ em nhận giấy khám ạ?)* |
| Bác sĩ | <ruby>3<rt>みっ</rt></ruby><ruby>日後<rt>かご</rt></ruby>に<ruby>郵送<rt>ゆうそう</rt></ruby>します。<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>するんですよね？<br>*(3 ngày sau gửi qua bưu điện. Em nộp 入管 phải không?)* |
| Linh | はい、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Vâng, em dùng nộp đơn 在留資格変更.)* |

---

## Tình huống 7 — 寮 phòng Linh · 19:00, soạn hồ sơ 在留資格変更

| Vai | Lời thoại |
|---|---|
| Linh | (trải tất cả giấy tờ trên bàn, đối chiếu bảng kiểm) <ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請書<rt>しんせいしょ</rt></ruby>、よし。<ruby>写真<rt>しゃしん</rt></ruby><ruby>4cm×3cm<rt>よんセンチさんセンチ</rt></ruby>、よし。<br>*(Đơn xin đổi tư cách lưu trú, OK. Ảnh 4x3 cm, OK.)* |
| Linh | <ruby>パスポート<rt>ぱすぽーと</rt></ruby><ruby>原本<rt>げんぽん</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カード<ruby>原本<rt>げんぽん</rt></ruby>、よし。<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>修了証<rt>しゅうりょうしょう</rt></ruby>、よし。<br>*(Hộ chiếu gốc và 在留 card gốc, OK. Giấy hoàn thành thực tập sinh, OK.)* |
| Linh | <ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby><ruby>写<rt>うつ</rt></ruby>し、<ruby>受入機関<rt>うけいれきかん</rt></ruby>の<ruby>登記簿<rt>とうきぼ</rt></ruby><ruby>謄本<rt>とうほん</rt></ruby>、<ruby>決算書<rt>けっさんしょ</rt></ruby>、よし。<br>*(Bản sao hợp đồng lao động, đăng ký kinh doanh của bên tiếp nhận, báo cáo tài chính, OK.)* |
| Linh | <ruby>健康診断書<rt>けんこうしんだんしょ</rt></ruby>はまだ……あ、これ<ruby>3<rt>みっ</rt></ruby><ruby>日後<rt>かご</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Giấy khám sức khỏe chưa… à, 3 ngày nữa nhận.)* |
| Linh | (mở Line, nhắn 山本さん) <ruby>山本様<rt>やまもとさま</rt></ruby>、<ruby>申請書類<rt>しんせいしょるい</rt></ruby><ruby>一覧<rt>いちらん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>健康診断書<rt>けんこうしんだんしょ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>き<ruby>次第<rt>しだい</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby>に<ruby>水戸<rt>みと</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>出向<rt>でむ</rt></ruby>く<ruby>予定<rt>よてい</rt></ruby>です。ご<ruby>同行<rt>どうこう</rt></ruby><ruby>頂<rt>いただ</rt></ruby>けますでしょうか？<br>*(Anh Yamamoto, em đã kiểm tra danh sách hồ sơ. Giấy khám đến nơi xong, dự định thứ 4 tuần sau đi 水戸 入管. Anh đi cùng em được không?)* |
| Yamamoto | (reply ngay) <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby><ruby>前<rt>まえ</rt></ruby>で<ruby>待<rt>ま</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせしましょう。<br>*(Đã rõ. Gặp nhau 9h trước 入管.)* |

---

## Tình huống 8 — 水戸入管 · 9:00, lấy số, nộp hồ sơ tại cửa số 3

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、おはようございます。<ruby>整理券<rt>せいりけん</rt></ruby>を<ruby>取<rt>と</rt></ruby>りました。<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>、<ruby>待<rt>ま</rt></ruby>ち<ruby>番号<rt>ばんごう</rt></ruby>A23です。<br>*(Linh chào buổi sáng. Tôi đã lấy số. Cửa 3, số chờ A23.)* |
| Linh | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Em cảm ơn. Em hơi căng.)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>書類<rt>しょるい</rt></ruby>は<ruby>完璧<rt>かんぺき</rt></ruby>です。<br>*(Yên tâm, hồ sơ hoàn hảo.)* |
| Loa | <ruby>整理券<rt>せいりけん</rt></ruby>A23の<ruby>方<rt>かた</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>へお<ruby>越<rt>こ</rt></ruby>しください。<br>*(Số A23, mời đến cửa 3.)* |
| Linh | (đến cửa, cúi nhẹ) おはようございます。<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng. Em xin nộp đơn xin đổi tư cách lưu trú.)* |
| 入管<ruby>職員<rt>しょくいん</rt></ruby> | <ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>への<ruby>変更<rt>へんこう</rt></ruby>ですね。<ruby>書類<rt>しょるい</rt></ruby><ruby>一式<rt>いっしき</rt></ruby><ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Chuyển từ 技能実習2号 sang 特定技能1号 phải không? Cho tôi xem toàn bộ hồ sơ.)* |
| Linh | はい、こちらに<ruby>揃<rt>そろ</rt></ruby>えてございます。<br>*(Vâng, đã đầy đủ ở đây.)* |
| 職員 | (lật kiểm tra) <ruby>受入機関<rt>うけいれきかん</rt></ruby>は<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>、<ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>は<ruby>花水<rt>はなみず</rt></ruby>サポート。<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>免除<rt>めんじょ</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>も<ruby>免除<rt>めんじょ</rt></ruby>。<br>*(Bên tiếp nhận là nông trại Yamamoto, 登録支援機関 là Hanamizu Support. Miễn 試験 đánh giá kỹ năng, miễn 試験 tiếng Nhật.)* |
| 職員 | <ruby>受理<rt>じゅり</rt></ruby>します。<ruby>審査<rt>しんさ</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です。<ruby>結果<rt>けっか</rt></ruby>はハガキでお<ruby>知<rt>し</rt></ruby>らせします。<br>*(Tôi tiếp nhận. Thời gian xét duyệt khoảng 4 tuần. Kết quả sẽ báo qua bưu thiếp.)* |
| Linh | ありがとうございました。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 9 — Văn phòng nông trại · sáng hôm sau, 親方 báo tin cho Ali và Carlo

| Vai | Lời thoại |
|---|---|
| 親方 | みんな、<ruby>朝礼<rt>ちょうれい</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>大事<rt>だいじ</rt></ruby>な<ruby>発表<rt>はっぴょう</rt></ruby>があります。<br>*(Mọi người, trước briefing có thông báo quan trọng.)* |
| 親方 | リンさんが<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>として<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>ることになりました。<br>*(Linh quyết định ở lại nông trại Yamamoto từ tháng 4 với tư cách SSW1.)* |
| Ali | (vỗ tay đầu tiên) おめでとうリン！<br>*(Chúc mừng Linh!)* |
| Carlo | やった！インターナショナル<ruby>跡継<rt>あとつ</rt></ruby>ぎチーム<ruby>結成<rt>けっせい</rt></ruby>！<br>*(Hoan hô! Đội kế nghiệp quốc tế thành lập!)* |
| Linh | みなさん、ありがとうございます。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mọi người, em cảm ơn. Từ giờ xin nhờ tiếp.)* |
| 親方 | リンさんは<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>な<ruby>社員<rt>しゃいん</rt></ruby><ruby>扱<rt>あつか</rt></ruby>いです。<ruby>後輩<rt>こうはい</rt></ruby>のカルロくんへの<ruby>指導<rt>しどう</rt></ruby>も<ruby>正式<rt>せいしき</rt></ruby>に<ruby>担当<rt>たんとう</rt></ruby>してもらいます。<br>*(Linh từ tháng 4 là nhân viên chính thức. Sẽ chính thức phụ trách hướng dẫn Carlo.)* |
| Carlo | リン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>正式<rt>せいしき</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Linh sempai, em xin nhờ chính thức!)* |
| Linh | カルロくん、こちらこそ<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Carlo, mình cùng cố nhé.)* |
| Ali | (đùa) <ruby>俺<rt>おれ</rt></ruby>がSSW2<ruby>号<rt>ごう</rt></ruby><ruby>取<rt>と</rt></ruby>るのが<ruby>先<rt>さき</rt></ruby>か、リンが<ruby>取<rt>と</rt></ruby>るのが<ruby>先<rt>さき</rt></ruby>か、<ruby>競争<rt>きょうそう</rt></ruby>だな。<br>*(Anh lấy SSW2号 trước hay Linh trước, thi đua nhé.)* |
| Linh | (cười) <ruby>絶対<rt>ぜったい</rt></ruby><ruby>負<rt>ま</rt></ruby>けません。<br>*(Em không thua đâu.)* |

---

## Tình huống 10 — Bưu điện Mito · 1 tuần sau, nhận hagaki kết quả 入管 và đến 役所 đổi 在留カード

*Tin nhanh: kết quả 入管 chỉ mất 18 ngày — nhanh hơn dự kiến. 親方 chở Linh đến 役所 Mito để báo địa chỉ.*

| Vai | Lời thoại |
|---|---|
| Linh | (cầm hagaki) <ruby>許可<rt>きょか</rt></ruby>されました！<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>です！<br>*(Được duyệt rồi! SSW1 - 5 năm!)* |
| 親方 | (vỗ vai) よかった、リンさん！では<ruby>役所<rt>やくしょ</rt></ruby>に<ruby>住所変更<rt>じゅうしょへんこう</rt></ruby><ruby>届<rt>とどけ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>そう。<br>*(May quá Linh! Vậy đi 役所 nộp khai báo đổi địa chỉ.)* |
| 役所職員 | リンさん、<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードは<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>有効<rt>ゆうこう</rt></ruby>です。<ruby>住所<rt>じゅうしょ</rt></ruby>は<ruby>従来<rt>じゅうらい</rt></ruby><ruby>通<rt>どお</rt></ruby>り<ruby>水戸市<rt>みとし</rt></ruby><ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby><ruby>寮<rt>りょう</rt></ruby>でよろしいですか？<br>*(Linh, 在留 card mới có hiệu lực 5 năm. Địa chỉ vẫn 寮 nông trại Yamamoto phải không?)* |
| Linh | はい、<ruby>変更<rt>へんこう</rt></ruby>ありません。<br>*(Vâng, không đổi.)* |
| 役所職員 | <ruby>国民健康保険<rt>こくみんけんこうほけん</rt></ruby>は<ruby>社会保険<rt>しゃかいほけん</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>わるので、<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>保険証<rt>ほけんしょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。<br>*(国民健康保険 sẽ đổi sang 社会保険, em nhận thẻ bảo hiểm mới từ công ty.)* |
| Linh | マイナンバーカードはそのままでよろしいですか？<br>*(My Number card vẫn giữ như cũ ạ?)* |
| 役所職員 | はい、マイナンバーは<ruby>不変<rt>ふへん</rt></ruby>です。<ruby>住所<rt>じゅうしょ</rt></ruby><ruby>裏<rt>うら</rt></ruby><ruby>書<rt>が</rt></ruby>きの<ruby>更新<rt>こうしん</rt></ruby>もこちらでいたします。<br>*(My Number không đổi. Cập nhật mặt sau địa chỉ tôi làm luôn.)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>有効<rt>ゆうこう</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby>カード……(nhìn) これからの<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(在留 card hiệu lực 5 năm... 5 năm tới em sẽ cố gắng.)* |

---

## Tình huống 11 — Ngân hàng JA Bank Mito · 14:00, mở tài khoản 給与振込 mới

| Vai | Lời thoại |
|---|---|
| Linh | すみません、<ruby>給与振込<rt>きゅうよふりこみ</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>口座<rt>こうざ</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>するんですが、TTS<ruby>時代<rt>じだい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>口座<rt>こうざ</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けられますか？<br>*(Xin lỗi, em cần nộp thông tin tài khoản nhận lương cho công ty, có dùng tiếp tài khoản thời TTS không?)* |
| 行員 | はい、<ruby>口座<rt>こうざ</rt></ruby>はそのまま<ruby>継続<rt>けいぞく</rt></ruby><ruby>利用<rt>りよう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。ただ、<ruby>登録<rt>とうろく</rt></ruby><ruby>住所<rt>じゅうしょ</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カードの<ruby>更新<rt>こうしん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Có, tài khoản dùng tiếp được. Nhưng cần cập nhật địa chỉ và 在留 card.)* |
| Linh | (đưa 在留カード新) こちらが<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードです。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>有効<rt>ゆうこう</rt></ruby>になりました。<br>*(Đây là 在留 card mới, hiệu lực 5 năm.)* |
| 行員 | おめでとうございます！<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>になりましたね。<ruby>銀行<rt>ぎんこう</rt></ruby>としても<ruby>定期<rt>ていき</rt></ruby><ruby>預金<rt>よきん</rt></ruby>や<ruby>住宅<rt>じゅうたく</rt></ruby>ローンのご<ruby>提案<rt>ていあん</rt></ruby>が<ruby>可能<rt>かのう</rt></ruby>になります。<br>*(Chúc mừng! Đã thành 5 năm. Ngân hàng cũng có thể đề xuất gửi định kỳ và vay nhà.)* |
| Linh | (cười) <ruby>住宅<rt>じゅうたく</rt></ruby>ローンはまだ<ruby>早<rt>はや</rt></ruby>いです。でも<ruby>定期<rt>ていき</rt></ruby><ruby>預金<rt>よきん</rt></ruby>は<ruby>考<rt>かんが</rt></ruby>えます。ベトナムへの<ruby>送金<rt>そうきん</rt></ruby><ruby>手数料<rt>てすうりょう</rt></ruby><ruby>優遇<rt>ゆうぐう</rt></ruby>はありますか？<br>*(Vay nhà còn sớm. Nhưng gửi định kỳ thì em sẽ tính. Có ưu đãi phí chuyển tiền VN không?)* |
| 行員 | はい、JA Bankは<ruby>東南<rt>とうなん</rt></ruby>アジア<ruby>送金<rt>そうきん</rt></ruby>に<ruby>特化<rt>とっか</rt></ruby>したプランがあります。<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>まで<ruby>手数料<rt>てすうりょう</rt></ruby><ruby>半額<rt>はんがく</rt></ruby>です。<br>*(Có. JA Bank có gói chuyên gửi Đông Nam Á. 3 lần/tháng giảm nửa phí.)* |
| Linh | お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin đăng ký.)* |

---

## Tình huống 12 — Lễ ký hợp đồng chính thức · 31/3 16:00, 母屋 nhà 親方

*Ngày cuối của TTS. Bữa tối cuối cùng tại 母屋 đồng thời là lễ ký hợp đồng SSW1. Bà 親方 chuẩn bị mâm sashimi, gohan, tô canh miso.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>付<rt>づ</rt></ruby>けで、リンさんの<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>が<ruby>満了<rt>まんりょう</rt></ruby>します。<br>*(Vậy, hôm nay 31/3, 技能実習2号 của Linh mãn hạn.)* |
| Yamamoto | <ruby>明日<rt>あす</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>より、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>雇用契約<rt>こようけいやく</rt></ruby>が<ruby>発効<rt>はっこう</rt></ruby>します。リンさん、<ruby>親方<rt>おやかた</rt></ruby><ruby>様<rt>さま</rt></ruby>、ご<ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ mai 1/4, hợp đồng SSW1 có hiệu lực. Linh, 親方, xin ký.)* |
| Linh | (cầm bút, ký) グエン・ティ・リン。<br>*(Nguyễn Thị Linh.)* |
| 親方 | (ký bên cạnh) <ruby>山本<rt>やまもと</rt></ruby><ruby>太郎<rt>たろう</rt></ruby>。<br>*(Yamamoto Taro.)* |
| Yamamoto | おめでとうございます。<ruby>正式<rt>せいしき</rt></ruby>に<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>雇用契約<rt>こようけいやく</rt></ruby>が<ruby>成立<rt>せいりつ</rt></ruby>しました。<br>*(Chúc mừng. Hợp đồng lao động 5 năm chính thức thành lập.)* |
| 親方 | (đứng dậy, nâng cốc) <ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Xin phép đề xướng nâng cốc.)* |
| 親方 | <ruby>本日<rt>ほんじつ</rt></ruby>はリンさんの<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>と、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>う<ruby>会<rt>かい</rt></ruby>です。リンさんの<ruby>新<rt>あたら</rt></ruby>しい<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねん</rt></ruby>に、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Hôm nay là tiệc mừng Linh kết thúc 技能実習 3 năm và nhận chức SSW1. Vì 5 năm mới của Linh, 乾杯!)* |
| Cả bàn | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Bà 親方 | リンちゃん、これからは<ruby>家族<rt>かぞく</rt></ruby>として、よろしくね。<br>*(Linh, từ giờ là người nhà nhé.)* |
| Linh | (cúi đầu, mắt đỏ) はい、お<ruby>父<rt>とう</rt></ruby>さん、お<ruby>母<rt>かあ</rt></ruby>さん。<br>*(Vâng, cha, mẹ.)* |
| 親方 | (mắt cũng đỏ) お<ruby>父<rt>とう</rt></ruby>さん、か……<br>*(Cha à…)* |

---

## Tình huống 13 — 寮 phòng Linh · 23:00, đêm cuối thời TTS, gọi điện về VN báo tin (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — đêm cuối thời TTS, gọi báo bố mẹ.

| Vai | Lời thoại |
|---|---|
| Linh | (VN, video call) Mẹ ơi, bố ơi, con đây! |
| Mẹ Linh | (VN) Linh à, sao gọi muộn thế, có chuyện gì không? |
| Linh | (VN) Mẹ, hôm nay con ký hợp đồng SSW1 rồi. 5 năm. |
| Bố Linh | (VN, lần đầu xuất hiện) Linh à, bố nghe mẹ kể chuyện rồi. Con quyết là tốt. |
| Linh | (VN, ngạc nhiên) Bố! Bố ngồi đó từ lúc nào? |
| Bố Linh | (VN, cười khô) Bố đợi cuộc gọi cả tối. Con tự quyết được, bố vui. Bố chỉ hỏi 1 câu thôi nhé. |
| Linh | (VN) Vâng bố. |
| Bố Linh | (VN, chậm) Con có thấy mình hạnh phúc không? |
| Linh | (VN, không cần nghĩ) Có bố ạ. |
| Bố Linh | (VN, gật) Vậy thì xong. Tết âm con về 2 tuần nhé, bố mẹ chờ. |
| Linh | (VN) Vâng bố, ông 親方 hứa rồi. Bố mẹ ơi, hôm nay ký hợp đồng xong, ông bà gọi con là お父さん, お母さん bằng tiếng Nhật. Bà Yamamoto bảo "từ giờ là người nhà". |
| Mẹ Linh | (VN, mắt đỏ) Ôi, ông bà gọi con thế à? |
| Linh | (VN) Vâng. Con cũng gọi ông bà là "お父さん, お母さん". Nhưng mẹ ơi, bố mẹ ruột vẫn là số một. Nhật chỉ là bố mẹ thứ hai. |
| Bố Linh | (VN, cười) Con khéo. Một đứa con có thể có nhiều người thương, không sao. |
| Mẹ Linh | (VN) Linh à, nắm đất con cho mẹ mang về, mẹ đặt cạnh ảnh ông ngoại rồi. Tuần trước trên bàn thờ có khói hương quẩn lại 3 lần ở chỗ nắm đất. Ông ngoại đồng ý đó con. |
| Linh | (VN, khóc) Mẹ… |
| Bố Linh | (VN) Linh à, đất Nhật bây giờ là của con. Con cày cẩn thận. Đừng phụ lòng ai. Cả ông Yamamoto, cả ông ngoại, cả bố mẹ. |
| Linh | (VN) Vâng bố. Con sẽ cẩn thận. Bố mẹ ngủ đi nhé, mai 6 giờ con dậy đi làm — ngày đầu SSW1. |
| Mẹ Linh | (VN) Mai con đi làm cẩn thận. Mẹ thương con. |
| Linh | (VN, gác máy, nhìn 在留 card mới trên bàn) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>。<br>*(1 tháng 4, ngày đầu SSW1.)* |

---

## Đọng lại chương 11

Chương 11 dạy nguyên bộ kỹ năng tiếng Nhật cho TTS chuyển sang SSW1 — bộ thủ tục mà bất kỳ ai làm xuất khẩu lao động ở Nhật đều phải đi qua. Học viên đọc xong nắm được: **thông báo quyết định cho cấp trên trang trọng** (お<ruby>返事<rt>へんじ</rt></ruby>させていただきます・<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>働<rt>はたら</rt></ruby>かせていただきたく), **giao tiếp với 監理団体 và 登録支援機関** (お<ruby>世話<rt>せわ</rt></ruby>になっております・<ruby>10<rt>じゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>の<ruby>支援<rt>しえん</rt></ruby>), **đọc-hỏi điều khoản hợp đồng có chủ ý** (<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれますか・<ruby>労働時間<rt>ろうどうじかん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください), **khám sức khỏe lao động cho 入管** (<ruby>労働省<rt>ろうどうしょう</rt></ruby><ruby>定期<rt>ていき</rt></ruby><ruby>健康診断<rt>けんこうしんだん</rt></ruby>・<ruby>診断書<rt>しんだんしょ</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>けますか), **nộp hồ sơ 在留資格変更 ở 入管** (<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いいたします), **đổi 在留 card và mở tài khoản giảm phí gửi tiền VN** (<ruby>口座<rt>こうざ</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby><ruby>利用<rt>りよう</rt></ruby>・<ruby>東南<rt>とうなん</rt></ruby>アジア<ruby>送金<rt>そうきん</rt></ruby><ruby>優遇<rt>ゆうぐう</rt></ruby>), và **lễ ký hợp đồng chính thức trong gia đình 親方** (<ruby>雇用契約<rt>こようけいやく</rt></ruby>が<ruby>発効<rt>はっこう</rt></ruby>・<ruby>家族<rt>かぞく</rt></ruby>として). Chốt chương là khoảnh khắc cô gái Đồng Tháp lần đầu gọi 親方 và vợ ông là "お<ruby>父<rt>とう</rt></ruby>さん・お<ruby>母<rt>かあ</rt></ruby>さん" — bố mẹ thứ hai trên đất Nhật, trong khi vẫn giữ vẹn lòng với bố mẹ ruột ở Đồng Tháp. Đêm cuối thời TTS, bố Linh — người đàn ông khô khan — chỉ hỏi đúng 1 câu: "Con có thấy mình hạnh phúc không?". Đó cũng là câu hỏi mà mọi TTS phải tự trả lời trước khi ký SSW1.

> Từ vựng & mẫu câu chương này: <ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>・<ruby>監理団体<rt>かんりだんたい</rt></ruby>・<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>・<ruby>送出機関<rt>そうしゅつきかん</rt></ruby>・<ruby>技能評価試験<rt>ぎのうひょうかしけん</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby>・<ruby>労働基準法<rt>ろうどうきじゅんほう</rt></ruby>・<ruby>適用除外<rt>てきようじょがい</rt></ruby>・<ruby>賞与<rt>しょうよ</rt></ruby>・<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>・<ruby>社会保険<rt>しゃかいほけん</rt></ruby>・<ruby>厚生年金<rt>こうせいねんきん</rt></ruby>・<ruby>雇用保険<rt>こようほけん</rt></ruby>・<ruby>労災保険<rt>ろうさいほけん</rt></ruby>・<ruby>定期<rt>ていき</rt></ruby><ruby>健康診断<rt>けんこうしんだん</rt></ruby>・<ruby>診断書<rt>しんだんしょ</rt></ruby>・<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>・<ruby>整理券<rt>せいりけん</rt></ruby>・<ruby>受理<rt>じゅり</rt></ruby>・<ruby>審査期間<rt>しんさきかん</rt></ruby>・<ruby>給与<rt>きゅうよ</rt></ruby><ruby>振込<rt>ふりこみ</rt></ruby>・<ruby>送金<rt>そうきん</rt></ruby><ruby>手数料<rt>てすうりょう</rt></ruby>・お<ruby>返事<rt>へんじ</rt></ruby>させていただきます・<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>働<rt>はたら</rt></ruby>かせていただきたく・<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれますか・<ruby>家族<rt>かぞく</rt></ruby>として

## Bí quyết chương

- **TTS→SSW1 đặc quyền miễn thi**: nếu TTS hoàn thành 3 năm tốt + 技能検定3級 + cùng ngành = miễn 技能評価試験 và 日本語試験 (JFT-Basic).
- **Hợp đồng SSW1 đọc kỹ điều khoản労働時間**: nông nghiệp là 労働基準法適用除外 nên không phải nhà nào cũng tuân thủ 1 ngày 8h. Học viên phải hỏi rõ tại điểm này.
- **10 hạng mục hỗ trợ của 登録支援機関**: khác với 監理団体 thời TTS (chủ yếu quản lý), 登録支援機関 thiên về 支援 (hỗ trợ) — bao gồm cả đi cùng làm thủ tục役所 và 入管.
- **Khám sức khỏe lao động cho 入管**: 10 hạng mục chuẩn Bộ Lao động — huyết áp, X-quang ngực, máu, lưng. Khi khám ở クリニック, học viên cần dặn rõ "<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>します" để bác sĩ ra đúng định dạng giấy.
- **5 năm 在留 card mở cửa**: ngân hàng cho phép gửi định kỳ + sau này lên SSW2 có thể vay nhà — đây là cơ hội kinh tế lớn cho TTS Việt.
- **Gọi 親方 là お父さん**: cao trào tình cảm — cách xưng hô này thường gặp ở các nông trại gia đình Nhật khi nhận TTS lâu năm thành người nhà.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 耕 | たがや | CANH | cày bừa |
| 番 | ばん | PHIÊN | phiên, lượt |
| 返事 | へんじ | PHẢN SỰ | trả lời |
| 引き続 | ひきつづ | DẪN TỤC | tiếp tục |
| 申し上 | もうしあ | THÂN THƯỢNG | xin thưa |
| 無事 | ぶじ | VÔ SỰ | bình an |
| 自慢 | じまん | TỰ MẠN | khoe, tự hào |
| 早速 | さっそく | TẢO TỐC | ngay lập tức |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | đoàn thể quản lý (TTS) |
| 登録支援機関 | とうろくしえんきかん | ĐĂNG LỤC CHI VIỆN CƠ QUAN | cơ quan hỗ trợ đăng ký (SSW) |
| 協同組合 | きょうどうくみあい | HIỆP ĐỒNG TỔ HỢP | hợp tác xã |
| 件 | けん | KIỆN | việc, vụ |
| 移行 | いこう | DI HÀNH | chuyển sang |
| 技能検定 | ぎのうけんてい | KỸ NĂNG KIỂM ĐỊNH | kiểm định kỹ năng |
| 測定 | そくてい | TRẮC ĐỊNH | đo lường |
| 免除 | めんじょ | MIỄN TRỪ | miễn trừ |
| 良好 | りょうこう | LƯƠNG HẢO | tốt đẹp |
| 修了 | しゅうりょう | TU LIỄU | hoàn thành |
| 実績 | じっせき | THỰC TÍCH | thành tích thực tế |
| 能力試験 | のうりょくしけん | NĂNG LỰC THÍ NGHIỆM | kỳ thi năng lực |
| 送出機関 | そうしゅつきかん | TỐNG XUẤT CƠ QUAN | cơ quan phái cử (VN) |
| 通知 | つうち | THÔNG TRI | thông báo |
| 役割 | やくわり | DỊCH CÁT | vai trò |
| 説明 | せつめい | THUYẾT MINH | giải thích |
| 項目 | こうもく | HẠNG MỤC | hạng mục |
| 住居 | じゅうきょ | TRỤ CƯ | nơi ở |
| 確保 | かくほ | XÁC BẢO | đảm bảo |
| 役所 | やくしょ | DỊCH SỞ | cơ quan hành chính |
| 同行 | どうこう | ĐỒNG HÀNH | đi cùng |
| 苦情 | くじょう | KHỔ TÌNH | khiếu nại |
| 提供 | ていきょう | ĐỀ CUNG | cung cấp |
| 家賃 | やちん | GIA TRỊ | tiền nhà |
| 天引 | てんび | THIÊN DẪN | trừ thẳng |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 月給 | げっきゅう | NGUYỆT CẤP | lương tháng |
| 残業 | ざんぎょう | TÀN NGHIỆP | tăng ca |
| 手当 | てあて | THỦ ĐƯƠNG | phụ cấp |
| 別途 | べっと | BIỆT ĐỒ | riêng |
| 賞与 | しょうよ | THƯỞNG DỮ | tiền thưởng |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU GIẢ | nghỉ phép có lương |
| 社会保険 | しゃかいほけん | XÃ HỘI BẢO HIỂM | bảo hiểm xã hội |
| 厚生年金 | こうせいねんきん | HẬU SINH NIÊN KIM | lương hưu |
| 雇用保険 | こようほけん | CỐ DỤNG BẢO HIỂM | bảo hiểm thất nghiệp |
| 労災保険 | ろうさいほけん | LAO TAI BẢO HIỂM | bảo hiểm tai nạn lao động |
| 負担 | ふたん | PHỤ ĐẢM | gánh chi phí |
| 契約書 | けいやくしょ | KHẾ ƯỚC THƯ | hợp đồng (văn bản) |
| 条 | じょう | ĐIỀU | điều khoản |
| 業務内容 | ぎょうむないよう | NGHIỆP VỤ NỘI DUNG | nội dung công việc |
| 耕種 | こうしゅ | CANH CHỦNG | trồng trọt |
| 全般 | ぜんぱん | TOÀN BÀN | toàn bộ |
| 含 | ふく | HÀM | bao gồm |
| 栽培管理 | さいばいかんり | TÀI BỒI QUẢN LÝ | quản lý canh tác |
| 運搬 | うんぱん | VẬN BAN | vận chuyển |
| 畜産 | ちくさん | SÚC SẢN | chăn nuôi |
| 労働時間 | ろうどうじかん | LAO ĐỘNG THỜI GIAN | thời gian lao động |
| 労働基準法 | ろうどうきじゅんほう | LAO ĐỘNG CƠ CHUẨN PHÁP | Luật chuẩn lao động |
| 適用除外 | てきようじょがい | THÍCH DỤNG TRỪ NGOẠI | ngoại lệ áp dụng |
| 業種 | ぎょうしゅ | NGHIỆP CHỦNG | loại ngành |
| 準拠 | じゅんきょ | CHUẨN CỨ | tuân thủ |
| 例外 | れいがい | LỆ NGOẠI | ngoại lệ |
| 署名 | しょめい | THỰ DANH | ký tên |
| 健康診断 | けんこうしんだん | KIỆN KHANG CHẨN ĐOÁN | khám sức khỏe |
| 血圧 | けつあつ | HUYẾT ÁP | huyết áp |
| 正常 | せいじょう | CHÍNH THƯỜNG | bình thường |
| 腰 | こし | YÊU | lưng |
| 湿布 | しっぷ | THẤP BỐ | miếng dán giảm đau |
| 聴診器 | ちょうしんき | THÍNH CHẨN KHÍ | ống nghe |
| 呼吸器 | こきゅうき | HÔ HẤP KHÍ | hô hấp |
| 心音 | しんおん | TÂM ÂM | tiếng tim |
| 胸部 | きょうぶ | HUNG BỘ | phần ngực |
| 採血 | さいけつ | THÁI HUYẾT | lấy máu |
| 診断書 | しんだんしょ | CHẨN ĐOÁN THƯ | giấy chẩn đoán |
| 郵送 | ゆうそう | BƯU TỐNG | gửi bưu điện |
| 入管 | にゅうかん | NHẬP QUẢN | cục quản lý xuất nhập cảnh |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 許可 | きょか | HỨA KHẢ | cho phép |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | đơn xin |
| 原本 | げんぽん | NGUYÊN BẢN | bản gốc |
| 修了証 | しゅうりょうしょう | TU LIỄU CHỨNG | giấy hoàn thành |
| 登記簿 | とうきぼ | ĐĂNG KÝ BẠ | sổ đăng ký |
| 謄本 | とうほん | ĐẰNG BẢN | bản sao có chứng nhận |
| 決算書 | けっさんしょ | QUYẾT TOÁN THƯ | báo cáo tài chính |
| 整理券 | せいりけん | CHỈNH LÝ QUYỂN | phiếu số thứ tự |
| 窓口 | まどぐち | SONG KHẨU | quầy |
| 受理 | じゅり | THỤ LÝ | tiếp nhận |
| 審査 | しんさ | THẨM TRA | xét duyệt |
| 期間 | きかん | KỲ GIAN | thời gian |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 国民健康保険 | こくみんけんこうほけん | QUỐC DÂN KIỆN KHANG BẢO HIỂM | bảo hiểm y tế quốc dân |
| 切り替 | きりか | THIẾT THẾ | chuyển đổi |
| 不変 | ふへん | BẤT BIẾN | không đổi |
| 振込 | ふりこみ | CHẤN VÀO | chuyển khoản |
| 口座 | こうざ | KHẨU TỌA | tài khoản |
| 継続 | けいぞく | KẾ TỤC | tiếp tục |
| 定期預金 | ていきよきん | ĐỊNH KỲ DỰ KIM | tiết kiệm định kỳ |
| 住宅 | じゅうたく | TRỤ TRẠCH | nhà ở |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 送金 | そうきん | TỐNG KIM | chuyển tiền |
| 手数料 | てすうりょう | THỦ SỐ LIỆU | phí dịch vụ |
| 優遇 | ゆうぐう | ƯU NGỘ | ưu đãi |
| 特化 | とっか | ĐẶC HÓA | chuyên biệt hóa |
| 半額 | はんがく | BÁN NGẠCH | nửa giá |
| 発効 | はっこう | PHÁT HIỆU | có hiệu lực |
| 成立 | せいりつ | THÀNH LẬP | thành lập |
| 就任 | しゅうにん | TỰU NHIỆM | nhậm chức |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (842000012, 800000042, NULL, 'markdown_book', 'T12. Tổng kết 3 năm, bonenkai chia tay TTS chuyển SSW', '# Sách thực tập sinh nông nghiệp · T12. Tổng kết 3 năm, bonenkai chia tay TTS chuyển SSW

> **Mục tiêu nhân vật:** Linh (25 tuổi, Đồng Tháp). Học các mẫu hội thoại tổng kết 3 năm tại Nhật: bonenkai khoá TTS cuối (TTS<ruby>修了<rt>しゅうりょう</rt></ruby>パーティー), phát biểu cảm ơn tổng kết theo cấu trúc Nhật (お時間を頂戴いたします → kể từng người → cúi đầu), giới thiệu kohai mới đến với khách (新人を紹介), 乾杯の音頭 ba ý nghĩa (慰労・修了・就任), nhận quà nhận giấy tốt nghiệp 修了証 hai tay (頂戴いたします), và chào nhậm chức SSW1 trước朝礼 cùng ngày 1/4.

---

## Bối cảnh

Cuối tháng 3 năm 2028, izakaya 「いばらき<ruby>亭<rt>てい</rt></ruby>」 gần ga Mito và nông trại Yamamoto Ibaraki. Linh hoàn thành 3 năm TTS, 1/4 chuyển SSW1 (chương 11). Trình độ N3, JAS有機, 技能検定3級. Đây là chương cuối của bộ Linh — bonenkai TTS chia tay đồng kỳ + lễ tốt nghiệp + lễ nhậm chức SSW1 dồn vào một ngày. Khách mời gồm: 親方 Yamamoto và bà 奥様, đồng nghiệp Ali (Indonesia, vừa đỗ SSW2号), Carlo (Philippines, mới năm 2 SSW1), kohai vừa sang Tâm (Đồng Tháp, đồng hương Linh đón hồi tháng 11), đồng kỳ Wati (Indonesia, làm nông trại Hokkaido, lặn lội bay xuống), và 田中 監理団体 + 山本 登録支援機関. Chương khoá lại 36 chương = 3 năm × 12 của bộ Linh.

---

## Tình huống 1 — 寮 phòng Linh · 6:00 sáng 31/3, độc thoại đối chiếu 2 bộ đồng phục

| Vai | Lời thoại |
|---|---|
| Linh | (đứng trước tủ, nhìn hai bộ đồng phục treo song song) <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>31<rt>さんじゅういち</rt></ruby><ruby>日<rt>にち</rt></ruby>、TTS<ruby>最後<rt>さいご</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>です。<br>*(Ngày 31/3/2028, sáng cuối cùng của TTS.)* |
| Linh | この<ruby>緑<rt>みどり</rt></ruby>のバッジの<ruby>作業着<rt>さぎょうぎ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、ハウスで<ruby>泥<rt>どろ</rt></ruby>と<ruby>汗<rt>あせ</rt></ruby>と<ruby>太陽<rt>たいよう</rt></ruby>を<ruby>知<rt>し</rt></ruby>っている。<br>*(Bộ áo lao động badge xanh lá này 3 năm rồi, nó biết bùn, mồ hôi và mặt trời trong ハウス.)* |
| Linh | (đặt tay lên bộ mới) <ruby>明日<rt>あした</rt></ruby>から<ruby>着<rt>き</rt></ruby>るSSW1の<ruby>作業着<rt>さぎょうぎ</rt></ruby>はバッジが<ruby>青<rt>あお</rt></ruby>に<ruby>変<rt>か</rt></ruby>わる。<br>*(Bộ SSW1 em mặc từ mai, badge đổi sang xanh dương.)* |
| Linh | <ruby>形<rt>かたち</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ、<ruby>泥<rt>どろ</rt></ruby>と<ruby>汗<rt>あせ</rt></ruby>と<ruby>太陽<rt>たいよう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ。でも<ruby>意味<rt>いみ</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>う。<br>*(Hình dáng giống nhau, bùn mồ hôi mặt trời cũng giống. Nhưng ý nghĩa khác.)* |
| Linh | (VN, tự nhủ) Hôm nay phải nói cảm ơn rõ ràng, không khóc giữa bài phát biểu. |

---

## Tình huống 2 — ハウス số 1 · 7:30, ngày làm cuối TTS, chào sáng và đếm cây

| Vai | Lời thoại |
|---|---|
| Tâm | (kohai mới sang 4 tháng, đồng hương Đồng Tháp) リン<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます！<ruby>本日<rt>ほんじつ</rt></ruby>はTTS<ruby>最後<rt>さいご</rt></ruby>の<ruby>勤務日<rt>きんむび</rt></ruby>ですね。<br>*(Linh sempai, chào buổi sáng! Hôm nay là ngày làm cuối TTS phải không ạ.)* |
| Linh | おはよう、タムくん。そう、TTSは<ruby>本日<rt>ほんじつ</rt></ruby>まで。<ruby>感慨深<rt>かんがいぶか</rt></ruby>い<ruby>一日<rt>いちにち</rt></ruby>になりそう。<br>*(Chào Tâm. Đúng vậy, TTS chỉ đến hôm nay. Có vẻ sẽ là một ngày đầy cảm xúc.)* |
| Tâm | (cười ngại) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>成田<rt>なりた</rt></ruby><ruby>空港<rt>くうこう</rt></ruby>まで<ruby>迎<rt>むか</rt></ruby>えに<ruby>来<rt>き</rt></ruby>ていただいたこと、<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Sempai, lần chị đón em ở sân bay Narita tháng 11, em nhớ cả đời.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>もそうだった。インドネシア<ruby>人<rt>じん</rt></ruby>のアリさんが<ruby>迎<rt>むか</rt></ruby>えに<ruby>来<rt>き</rt></ruby>てくれた。<br>*(3 năm trước chị cũng thế. Ali người Indonesia đã ra đón chị.)* |
| Tâm | <ruby>次<rt>つぎ</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来<rt>き</rt></ruby>たら、<ruby>私<rt>わたし</rt></ruby>が<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>きますね。<br>*(Khi có kohai người Việt mới đến, em sẽ đi đón ạ.)* |
| Linh | これが「<ruby>循環<rt>じゅんかん</rt></ruby>」というものだね。<ruby>先輩<rt>せんぱい</rt></ruby>から<ruby>受<rt>う</rt></ruby>けたものを<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>す。<br>*(Đây chính là "vòng tuần hoàn" đấy. Nhận từ đàn anh thì trao cho đàn em.)* |
| Linh | では、<ruby>本日<rt>ほんじつ</rt></ruby>のフルティカ<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>号棟<rt>ごうとう</rt></ruby><ruby>200<rt>にひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>4<rt>よん</rt></ruby><ruby>号棟<rt>ごうとう</rt></ruby><ruby>150<rt>ひゃくごじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy, kế hoạch thu cà chua hôm nay: nhà 3 200 quả, nhà 4 150 quả. Xin nhờ.)* |
| Tâm | はい！<br>*(Vâng!)* |

---

## Tình huống 3 — Ga Mito · 11:00, Linh ra đón Wati từ Hokkaido

*Đồng kỳ Wati (Indonesia) cùng chuyến bay sang Nhật 3 năm trước, làm nông trại bò sữa Hokkaido. Tự bay xuống Mito cho bonenkai Linh.*

| Vai | Lời thoại |
|---|---|
| Wati | (vẫy tay từ cửa soát vé) リン！<ruby>北海道<rt>ほっかいどう</rt></ruby>から<ruby>来<rt>き</rt></ruby>たよー！<br>*(Linh! Tôi từ Hokkaido sang đây!)* |
| Linh | (chạy ôm) ワティ！<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>来<rt>き</rt></ruby>てくれた！<br>*(Wati! Cậu đến thật rồi!)* |
| Wati | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来日<rt>らいにち</rt></ruby>した<ruby>同期<rt>どうき</rt></ruby>のリンが<ruby>呼<rt>よ</rt></ruby>んでくれたから、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>来<rt>く</rt></ruby>るって<ruby>決<rt>き</rt></ruby>めてた。<br>*(Linh — 同期 cùng máy bay sang Nhật 3 năm trước — mời, nên tôi quyết chắc chắn đến.)* |
| Linh | <ruby>北海道<rt>ほっかいどう</rt></ruby>からどのくらいかかった？<br>*(Từ Hokkaido mất bao lâu?)* |
| Wati | <ruby>新千歳<rt>しんちとせ</rt></ruby>から<ruby>羽田<rt>はねだ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>半<rt>はん</rt></ruby>、それから<ruby>常磐線<rt>じょうばんせん</rt></ruby>で<ruby>水戸<rt>みと</rt></ruby>まで<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<br>*(Shin-Chitose đến Haneda 1 tiếng rưỡi, rồi tàu Joban 2 tiếng đến Mito.)* |
| Linh | <ruby>大変<rt>たいへん</rt></ruby>だったね。アリさんと<ruby>会<rt>あ</rt></ruby>うのは<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>ぶり？<br>*(Vất vả nhỉ. Gặp lại Ali sau 3 năm à?)* |
| Wati | <ruby>来日<rt>らいにち</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>で<ruby>東京<rt>とうきょう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>だった、あれ<ruby>以来<rt>いらい</rt></ruby>。<br>*(Lúc training nhập cảnh ở Tokyo 1 tuần cùng, sau đó là chưa.)* |
| Linh | アリさんSSW2<ruby>号<rt>ごう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>したよ。<ruby>家族<rt>かぞく</rt></ruby><ruby>呼<rt>よ</rt></ruby>べる<ruby>準備<rt>じゅんび</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。<br>*(Ali đỗ SSW2号 rồi. Đang chuẩn bị gọi gia đình.)* |
| Wati | <ruby>俺<rt>おれ</rt></ruby>も<ruby>来年<rt>らいねん</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>する。<ruby>畜産<rt>ちくさん</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>でね。<br>*(Tôi sang năm cũng thi. Ngành chăn nuôi.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>経<rt>た</rt></ruby>って、みんなSSW<ruby>道<rt>みち</rt></ruby>に<ruby>進<rt>すす</rt></ruby>むね。<br>*(3 năm trôi, ai cũng đi đường SSW nhỉ.)* |

---

## Tình huống 4 — Trên đường đến izakaya · 17:30, giới thiệu địa điểm với Wati và Tâm

| Vai | Lời thoại |
|---|---|
| Linh | (chỉ biển hiệu) ここが<ruby>3<rt>さん</rt></ruby><ruby>年連続<rt>ねんれんぞく</rt></ruby><ruby>年末年始会<rt>ねんまつねんしかい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>く<ruby>居酒屋<rt>いざかや</rt></ruby>「いばらき<ruby>亭<rt>てい</rt></ruby>」です。<br>*(Đây là izakaya "Ibaraki-tei", nơi tổ chức tiệc cuối năm 3 năm liên tiếp.)* |
| Tâm | (VN, nhỏ) Chị, nơi đây chị kể em nhiều quá. |
| Linh | (VN) Đúng rồi. Bonenkai năm nhất, năm hai, giờ là năm ba. Năm 1 lúc chị sang, năm 2 lúc Carlo sang, năm 3 hôm nay có cả Tâm, cả Wati. Vòng tròn lớn. |
| Wati | <ruby>3<rt>さん</rt></ruby><ruby>年連続<rt>ねんれんぞく</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>店<rt>みせ</rt></ruby>って、<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>伝統<rt>でんとう</rt></ruby>だね。<br>*(3 năm liên tiếp cùng quán, đúng truyền thống nông trại rồi.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>の<ruby>馴染<rt>なじ</rt></ruby>みの<ruby>店<rt>みせ</rt></ruby>で、<ruby>大将<rt>たいしょう</rt></ruby>も<ruby>私<rt>わたし</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてくれています。<br>*(Quán quen của 親方, ông chủ quán cũng đã nhớ mặt em.)* |
| Tâm | (VN, lo) Chị, em chưa biết cách "kanpai" chuẩn, chị dạy em không? |
| Linh | (VN) Đơn giản: cốc thấp hơn cốc cấp trên 1 cm khi cụng. Mắt nhìn người đối diện. Uống được bao nhiêu uống, đừng cố. |
| Wati | (cười, nghe lén tiếng Việt) ベトナム<ruby>語<rt>ご</rt></ruby><ruby>講座<rt>こうざ</rt></ruby><ruby>始<rt>はじ</rt></ruby>まった？<br>*(Lớp tiếng Việt bắt đầu à?)* |
| Linh | (cười) <ruby>新人<rt>しんじん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。<br>*(Đang training kohai.)* |

---

## Tình huống 5 — Bàn izakaya · 18:00, Linh giới thiệu khách đặc biệt với 親方

| Vai | Lời thoại |
|---|---|
| 親方 | みんな、お<ruby>疲<rt>つか</rt></ruby>れさまでした！<ruby>本日<rt>ほんじつ</rt></ruby>のスペシャルゲスト、リンさんが<ruby>紹介<rt>しょうかい</rt></ruby>してください。<br>*(Mọi người vất vả rồi! Khách đặc biệt hôm nay, Linh giới thiệu nhé.)* |
| Linh | (đứng dậy, cúi nhẹ) はい、ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。<br>*(Vâng, em xin phép giới thiệu.)* |
| Linh | まず、<ruby>北海道<rt>ほっかいどう</rt></ruby>の<ruby>酪農<rt>らくのう</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>から<ruby>来<rt>き</rt></ruby>てくれた<ruby>同期<rt>どうき</rt></ruby>のワティです。インドネシア・ジャワ<ruby>島<rt>とう</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>同<rt>おな</rt></ruby>じVN300<ruby>便<rt>びん</rt></ruby>で<ruby>来日<rt>らいにち</rt></ruby>しました。<br>*(Trước hết, Wati - 同期 đến từ nông trại bò sữa Hokkaido. Quê đảo Java Indonesia. Cùng chuyến bay VN300 sang Nhật 3 năm trước.)* |
| Wati | (cúi đầu) はじめまして、ワティと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>招<rt>まね</rt></ruby>きいただきありがとうございます。<br>*(Rất hân hạnh, em là Wati. Cảm ơn anh đã mời em ạ.)* |
| Linh | <ruby>続<rt>つづ</rt></ruby>いて、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>来<rt>き</rt></ruby>た<ruby>新人<rt>しんじん</rt></ruby><ruby>後輩<rt>こうはい</rt></ruby>のタムです。<ruby>同<rt>どう</rt></ruby>タップ<ruby>省<rt>しょう</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>故郷<rt>こきょう</rt></ruby>です。<br>*(Tiếp đến, kohai mới Tâm — sang tháng 11. Tỉnh Đồng Tháp, cùng quê em.)* |
| Tâm | (cúi đầu sâu) はじめまして、タムです。<ruby>22<rt>にじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>、<ruby>農業<rt>のうぎょう</rt></ruby><ruby>未経験<rt>みけいけん</rt></ruby>でしたが、リン<ruby>先輩<rt>せんぱい</rt></ruby>のおかげで<ruby>毎日<rt>まいにち</rt></ruby>が<ruby>勉強<rt>べんきょう</rt></ruby>になっております。<br>*(Rất hân hạnh, em là Tâm. 22 tuổi, chưa từng làm nông, nhờ Linh sempai mỗi ngày em đều học được.)* |
| 親方 | こちらこそ、お<ruby>二人<rt>ふたり</rt></ruby>とも、ようこそ<ruby>茨城<rt>いばらき</rt></ruby>へ。リンさんは<ruby>娘<rt>むすめ</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>です。<br>*(Tôi cũng vậy, chào mừng cả hai đến Ibaraki. Linh với chúng tôi như con gái.)* |
| Bà 親方 | ワティさん、<ruby>北海道<rt>ほっかいどう</rt></ruby>のチーズ、お<ruby>土産<rt>みやげ</rt></ruby>に<ruby>持<rt>も</rt></ruby>ってきてくれてありがとう。リンさんから<ruby>聞<rt>き</rt></ruby>いていた<ruby>同期<rt>どうき</rt></ruby>に<ruby>会<rt>あ</rt></ruby>えて<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Wati, cảm ơn em mang phô mai Hokkaido làm quà. Vui được gặp đồng kỳ mà Linh kể.)* |

---

## Tình huống 6 — Bàn chính · 18:15, 親方 đề xướng nâng cốc với 3 ý nghĩa

| Vai | Lời thoại |
|---|---|
| 親方 | (đứng dậy, cầm cốc) では、<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vậy xin phép đề xướng nâng cốc.)* |
| 親方 | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会<rt>かい</rt></ruby>には<ruby>3<rt>みっ</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>があります。<br>*(Buổi hôm nay có 3 ý nghĩa.)* |
| 親方 | <ruby>一<rt>ひと</rt></ruby>つ、<ruby>年度末<rt>ねんどまつ</rt></ruby>の<ruby>慰労会<rt>いろうかい</rt></ruby>として。<ruby>二<rt>ふた</rt></ruby>つ、リンさんのTTS<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>契約満了<rt>けいやくまんりょう</rt></ruby>と<ruby>修了<rt>しゅうりょう</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>う<ruby>会<rt>かい</rt></ruby>として。<ruby>三<rt>みっ</rt></ruby>つ、リンさんとアリさんの<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>・2<ruby>号<rt>ごう</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby><ruby>祝賀会<rt>しゅくがかい</rt></ruby>として。<br>*(Một, tiệc úy lạo cuối năm tài khoá. Hai, mừng Linh kết thúc hợp đồng TTS 3 năm và tốt nghiệp. Ba, tiệc nhậm chức SSW1 của Linh và SSW2号 của Ali.)* |
| Cả bàn | (vỗ tay lớn) |
| 親方 | グラスをお<ruby>持<rt>も</rt></ruby>ちください……<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Mời mọi người cầm cốc... 乾杯!)* |
| Cả bàn | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Ali | (cụng cốc với Linh) リン、<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>取<rt>と</rt></ruby>るの<ruby>俺<rt>おれ</rt></ruby>が<ruby>先<rt>さき</rt></ruby>になっちゃったね。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby><ruby>追<rt>お</rt></ruby>いついて。<br>*(Linh, tôi lấy 2号 trước rồi nhé. 5 năm nữa đuổi kịp đi.)* |
| Linh | (cụng cốc lại) <ruby>絶対<rt>ぜったい</rt></ruby><ruby>追<rt>お</rt></ruby>いつきます。<br>*(Em nhất định đuổi kịp.)* |
| Tâm | (lễ phép cụng cốc cốc thấp hơn 1 cm) リン<ruby>先輩<rt>せんぱい</rt></ruby>、おめでとうございます。 |

---

## Tình huống 7 — Bàn chính · 19:00, Linh phát biểu cảm ơn 3 năm

| Vai | Lời thoại |
|---|---|
| 親方 | リンさん、<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Linh, xin một lời phát biểu.)* |
| Linh | (đứng dậy, đặt cốc xuống) はい、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Vâng, xin phép được dành chút thời gian.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>22<rt>にじゅうに</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>はN5に<ruby>受<rt>う</rt></ruby>かったばかりで、<ruby>農業<rt>のうぎょう</rt></ruby>は<ruby>父<rt>ちち</rt></ruby>の<ruby>田<rt>た</rt></ruby>んぼを<ruby>手伝<rt>てつだ</rt></ruby>った<ruby>経験<rt>けいけん</rt></ruby>しかありませんでした。<br>*(3 năm trước, em 22 tuổi, vừa đỗ N5, nông nghiệp chỉ có kinh nghiệm phụ ruộng của bố.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ご</rt></ruby>の<ruby>今<rt>いま</rt></ruby>、JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>修了、<ruby>農薬<rt>のうやく</rt></ruby><ruby>取扱<rt>とりあつかい</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>修了、<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、N3<ruby>合格<rt>ごうかく</rt></ruby>。これは<ruby>皆様<rt>みなさま</rt></ruby>のおかげです。<br>*(3 năm sau, em hoàn thành tập huấn JAS hữu cơ, tập huấn xử lý 農薬, đỗ 技能検定 cấp 3, đỗ N3. Tất cả nhờ mọi người.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>には<ruby>父親<rt>ちちおや</rt></ruby>のように<ruby>支<rt>ささ</rt></ruby>えていただきました。<ruby>奥様<rt>おくさま</rt></ruby>には<ruby>母親<rt>ははおや</rt></ruby>のようにご<ruby>飯<rt>はん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っていただきました。<br>*(親方 đỡ đầu em như cha. 奥様 nấu cơm cho em như mẹ.)* |
| Linh | アリさんには<ruby>兄<rt>あに</rt></ruby>のように<ruby>農作業<rt>のうさぎょう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただきました。カルロくんは<ruby>頼<rt>たよ</rt></ruby>もしい<ruby>戦友<rt>せんゆう</rt></ruby>です。<br>*(Ali dạy em việc nhà nông như anh trai. Carlo là chiến hữu tin cậy.)* |
| Linh | タムくんは<ruby>妹<rt>いもうと</rt></ruby>のような<ruby>後輩<rt>こうはい</rt></ruby>です。これからもしっかり<ruby>守<rt>まも</rt></ruby>ります。<br>*(Tâm là kohai như em gái em. Từ giờ em sẽ bảo vệ em ấy.)* |
| Linh | <ruby>田中様<rt>たなかさま</rt></ruby>、<ruby>山本様<rt>やまもとさま</rt></ruby>、TTS<ruby>監理団体<rt>かんりだんたい</rt></ruby>と<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>には、<ruby>事務手続<rt>じむてつづ</rt></ruby>きから<ruby>生活<rt>せいかつ</rt></ruby>の<ruby>悩<rt>なや</rt></ruby>みまでお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Anh Tanaka, anh Yamamoto, các anh chị 監理団体 và 登録支援機関 đã giúp em từ thủ tục đến cả lo lắng đời sống.)* |
| Linh | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>1<ruby>日<rt>にち</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>として<ruby>新<rt>あたら</rt></ruby>しい<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るお<ruby>手伝<rt>てつだ</rt></ruby>いができれば、これに<ruby>勝<rt>まさ</rt></ruby>る<ruby>幸<rt>しあわ</rt></ruby>せはありません。<br>*(Từ 1/4 em bắt đầu 5 năm mới với tư cách SSW1. Nếu được góp tay giữ đời thứ 3 nông trại, không hạnh phúc nào hơn.)* |
| Linh | (cúi đầu sâu 3 giây) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(3 năm qua, thực sự cảm ơn ạ. Từ giờ cũng mong được chỉ bảo tiếp.)* |
| Cả bàn | (vỗ tay rất to, kéo dài) |
| Wati | (VN giả vờ) Chị Linh giỏi quá! (đùa) |

---

## Tình huống 8 — Bàn chính · 19:30, nhận 修了証 + cuốn sổ 指導員 từ 親方

| Vai | Lời thoại |
|---|---|
| 親方 | リンさん、<ruby>2<rt>に</rt></ruby>つお<ruby>渡<rt>わた</rt></ruby>ししたいものがあります。<br>*(Linh, có 2 thứ muốn trao em.)* |
| Linh | はい、<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Vâng, em xin nhận ạ.)* |
| 親方 | (đưa khung bằng hai tay) まずこれ、<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>修了証<rt>しゅうりょうしょう</rt></ruby>です。<ruby>国際<rt>こくさい</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby><ruby>協力機構<rt>きょうりょくきこう</rt></ruby><ruby>OTIT<rt>オーティーアイティー</rt></ruby><ruby>発行<rt>はっこう</rt></ruby>です。<br>*(Trước hết, giấy 修了証 thực tập sinh. Do OTIT phát hành.)* |
| Linh | (nhận hai tay, cúi đầu) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Em xin nhận ạ.)* |
| 親方 | (đưa cuốn sổ da) これは<ruby>指導員<rt>しどういん</rt></ruby><ruby>手帳<rt>てちょう</rt></ruby>です。<ruby>明日<rt>あす</rt></ruby>から<ruby>後輩<rt>こうはい</rt></ruby>のタムくんとカルロくんを<ruby>正式<rt>せいしき</rt></ruby>に<ruby>指導<rt>しどう</rt></ruby>する<ruby>立場<rt>たちば</rt></ruby>になります。<br>*(Đây là sổ tay 指導員. Mai bắt đầu chính thức hướng dẫn kohai Tâm và Carlo.)* |
| Linh | (nhận hai tay) <ruby>必<rt>かなら</rt></ruby>ず<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てます。<br>*(Em nhất định sẽ chăm sóc các em cẩn thận.)* |
| 親方 | <ruby>表紙<rt>ひょうし</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>に、メッセージを<ruby>書<rt>か</rt></ruby>いておきました。あとでゆっくり<ruby>読<rt>よ</rt></ruby>んでください。<br>*(Mặt sau bìa, tôi đã ghi tin nhắn. Sau hãy đọc từ từ.)* |
| Linh | <ruby>頂<rt>いただ</rt></ruby>いた<ruby>2<rt>ふた</rt></ruby>つの<ruby>宝物<rt>たからもの</rt></ruby>、<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(2 báu vật được nhận, em sẽ giữ gìn cả đời.)* |

---

## Tình huống 9 — Bàn phụ · 20:00, mở video call cho bố mẹ ở Đồng Tháp

*Lần đầu bố Linh thực sự "lên hình" với 親方 — bố ít nói nhưng đêm nay ngồi sẵn cả tiếng đợi.*

| Vai | Lời thoại |
|---|---|
| Linh | (mở video call) Bố, mẹ! Cả bàn đây này! |
| Mẹ Linh | (VN, qua màn hình) Linh ơi, mẹ thấy con rồi! |
| Bố Linh | (VN, ngồi cạnh, lần đầu lên hình) Linh à! |
| 親方 | (ghé vào màn hình, vẫy tay) お<ruby>父様<rt>とうさま</rt></ruby>、お<ruby>母様<rt>かあさま</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして！<ruby>山本<rt>やまもと</rt></ruby>です。<br>*(Bác trai, bác gái, rất hân hạnh! Tôi là Yamamoto.)* |
| Bố Linh | (VN) Anh Yamamoto! Cảm ơn anh chăm con tôi 3 năm. Vợ tôi về kể anh chị tốt với con cháu lắm! |
| Linh | (dịch sang JP) <ruby>父<rt>ちち</rt></ruby>が、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にしていただいてありがとうございますと<ruby>申<rt>もう</rt></ruby>しております。<br>*(Bố em nói cảm ơn bác đã chăm con gái suốt 3 năm.)* |
| 親方 | こちらこそ、リンさんは<ruby>娘<rt>むすめ</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>です。これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tôi mới phải cảm ơn, Linh như con gái với chúng tôi. Mong hai bác tiếp tục tin tưởng.)* |
| Linh | (dịch sang VN) Bác bảo coi con như con gái, mong bố mẹ tiếp tục tin tưởng. |
| Bố Linh | (VN, hắng giọng) Anh Yamamoto, tôi xin phép nói thẳng. Tết âm tháng 2 cho con tôi về 2 tuần được không. |
| Linh | (dịch JP) <ruby>父<rt>ちち</rt></ruby>が、テトの<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>帰省<rt>きせい</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>いです。<br>*(Bố em xin phép cho em về 2 tuần dịp Tết.)* |
| 親方 | もちろんです。<ruby>母様<rt>かあさま</rt></ruby>にも<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>にお<ruby>約束<rt>やくそく</rt></ruby>しました。<ruby>毎年<rt>まいとし</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>確保<rt>かくほ</rt></ruby>します。<br>*(Đương nhiên. Tôi đã hứa với bác gái tháng 2 rồi. Mỗi năm tôi nhất định đảm bảo.)* |
| Linh | (dịch sang VN) Ông bảo đã hứa với mẹ rồi, mỗi năm sẽ giữ Tết cho con về 2 tuần. |
| Bố Linh | (VN, gật chậm) Cảm ơn anh. Tôi yên tâm. |
| Mẹ Linh | (VN, khóc) Bác ơi, gia đình mình mang ơn bác cả đời. |

---

## Tình huống 10 — Bàn phụ · 20:30, Tâm tặng nón lá VN cho 奥様

| Vai | Lời thoại |
|---|---|
| Tâm | <ruby>奥様<rt>おくさま</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>からお<ruby>世話<rt>せわ</rt></ruby>になっておりますタムです。<ruby>同<rt>どう</rt></ruby>タップ<ruby>省<rt>しょう</rt></ruby>から<ruby>家族<rt>かぞく</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>んで<ruby>送<rt>おく</rt></ruby>っていただいた<ruby>小<rt>ちい</rt></ruby>さなプレゼントです。<br>*(奥様, em là Tâm — sang từ tháng 11 chịu ơn bà. Có món quà nhỏ em nhờ nhà gửi từ Đồng Tháp.)* |
| Bà 親方 | あら、いいの？<ruby>気<rt>き</rt></ruby>を<ruby>遣<rt>つか</rt></ruby>わなくていいのに。<br>*(Ôi được không? Đừng để ý chứ.)* |
| Tâm | (đưa hộp dài) どうぞ、<ruby>開<rt>あ</rt></ruby>けてみてください。<br>*(Mời bác mở xem ạ.)* |
| Bà 親方 | (mở) これは……ノンラー！ベトナムの<ruby>笠<rt>かさ</rt></ruby>！<br>*(Đây là... nón lá! Nón Việt Nam!)* |
| Tâm | はい、<ruby>同<rt>どう</rt></ruby>タップで<ruby>母<rt>はは</rt></ruby>が<ruby>手作<rt>てづく</rt></ruby>りで<ruby>編<rt>あ</rt></ruby>んだものです。<ruby>夏<rt>なつ</rt></ruby>の<ruby>畑仕事<rt>はたけしごと</rt></ruby>に<ruby>是非<rt>ぜひ</rt></ruby>。<br>*(Vâng, mẹ em ở Đồng Tháp tự đan tay. Mùa hè làm ruộng dùng nhé.)* |
| Bà 親方 | (đội thử) わあ、<ruby>軽<rt>かる</rt></ruby>くて<ruby>涼<rt>すず</rt></ruby>しい！<br>*(Ôi, nhẹ và mát!)* |
| Linh | (cười) <ruby>奥様<rt>おくさま</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby><ruby>夏<rt>なつ</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>でノンラー<ruby>姿<rt>すがた</rt></ruby>、<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(Bà ơi, hè sang năm hình ảnh bà đội nón lá ngoài đồng, em mong lắm.)* |
| Bà 親方 | リンさんから<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>ベトナム<ruby>米<rt>こめ</rt></ruby>を、お<ruby>母様<rt>かあさま</rt></ruby>からフォーのレシピを、タムさんからノンラーを<ruby>頂<rt>いただ</rt></ruby>きました。<ruby>家<rt>うち</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>しずつベトナムになっています。<br>*(Hai năm trước Linh tặng tôi gạo Việt, mẹ Linh dạy công thức phở, Tâm tặng nón lá. Nhà tôi đang dần dần thành Việt Nam.)* |

---

## Tình huống 11 — Bàn chính · 21:00, Wati phát biểu đồng kỳ

| Vai | Lời thoại |
|---|---|
| Wati | (đứng dậy) <ruby>同期<rt>どうき</rt></ruby>として<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Với tư cách 同期, xin phép một lời.)* |
| Wati | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、リンと<ruby>同<rt>おな</rt></ruby>じVN300<ruby>便<rt>びん</rt></ruby>で<ruby>来日<rt>らいにち</rt></ruby>しました。<ruby>北海道<rt>ほっかいどう</rt></ruby>と<ruby>茨城<rt>いばらき</rt></ruby>で<ruby>離<rt>はな</rt></ruby>れていましたが、LINEで<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>を<ruby>取<rt>と</rt></ruby>っていました。<br>*(3 năm trước, em cùng chuyến VN300 với Linh sang Nhật. Hokkaido và Ibaraki tuy xa, nhưng tuần nào cũng nhắn LINE.)* |
| Wati | リンが「JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby><ruby>受<rt>う</rt></ruby>かった」と<ruby>言<rt>い</rt></ruby>えば、<ruby>俺<rt>おれ</rt></ruby>も<ruby>畜産<rt>ちくさん</rt></ruby><ruby>技能検定<rt>ぎのうけんてい</rt></ruby>を<ruby>取<rt>と</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Linh bảo "đỗ tập huấn JAS hữu cơ" thì em cũng muốn lấy 技能検定 chăn nuôi.)* |
| Wati | <ruby>同期<rt>どうき</rt></ruby>って、こういうものですね。<ruby>来年<rt>らいねん</rt></ruby><ruby>俺<rt>おれ</rt></ruby>もSSW<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>します。これからも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう！<br>*(同期 là vậy đấy. Sang năm em cũng thi SSW2号. Cùng cố gắng tiếp nhé!)* |
| Linh | (đứng lên, vỗ vai Wati) ワティ、ありがとう。<ruby>同期<rt>どうき</rt></ruby>がいてくれたから<ruby>頑張<rt>がんば</rt></ruby>れた。<br>*(Wati, cảm ơn cậu. Có 同期 nên mới cố được.)* |
| Cả bàn | (vỗ tay) |

---

## Tình huống 12 — Phòng karaoke izakaya · 22:00, 3 người Việt + Wati + Ali hát "見上げてごらん夜の星を"

| Vai | Lời thoại |
|---|---|
| 親方 | カラオケ<ruby>始<rt>はじ</rt></ruby>めますよー！<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>歌<rt>うた</rt></ruby>いますか？<br>*(Karaoke bắt đầu nhé! Ai hát đầu tiên?)* |
| Tâm | リン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby>みんなで<ruby>歌<rt>うた</rt></ruby>いましょう！<br>*(Linh sempai, mọi người nước ngoài hát chung đi!)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>人<rt>にん</rt></ruby>で？<ruby>何<rt>なに</rt></ruby>を<ruby>歌<rt>うた</rt></ruby>うの？<br>*(5 người à? Hát bài gì?)* |
| Ali | <ruby>坂本<rt>さかもと</rt></ruby><ruby>九<rt>きゅう</rt></ruby>「<ruby>見上<rt>みあ</rt></ruby>げてごらん<ruby>夜<rt>よる</rt></ruby>の<ruby>星<rt>ほし</rt></ruby>を」はどう？<ruby>親方<rt>おやかた</rt></ruby>がいつも<ruby>口<rt>くち</rt></ruby>ずさんでいる<ruby>曲<rt>きょく</rt></ruby>。<br>*(Bài "Mi-agete goran yoru no hoshi wo" của Sakamoto Kyuu được không? Bài 親方 hay hát.)* |
| Linh | いいね、「<ruby>見上<rt>みあ</rt></ruby>げてごらん<ruby>夜<rt>よる</rt></ruby>の<ruby>星<rt>ほし</rt></ruby>を、<ruby>小<rt>ちい</rt></ruby>さな<ruby>星<rt>ほし</rt></ruby>の<ruby>小<rt>ちい</rt></ruby>さな<ruby>光<rt>ひかり</rt></ruby>が」。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>農業<rt>のうぎょう</rt></ruby>TTSにぴったり。<br>*(Hay đấy: "Hãy nhìn lên bầu trời đêm, ánh sao nhỏ của những ngôi sao nhỏ". Hợp với TTS nông nghiệp nước ngoài quá.)* |
| 5 người | (cùng hát) <ruby>見上<rt>みあ</rt></ruby>げてごらん<ruby>夜<rt>よる</rt></ruby>の<ruby>星<rt>ほし</rt></ruby>を〜<ruby>小<rt>ちい</rt></ruby>さな<ruby>星<rt>ほし</rt></ruby>の<ruby>小<rt>ちい</rt></ruby>さな<ruby>光<rt>ひかり</rt></ruby>が〜ささやかな<ruby>幸<rt>しあわ</rt></ruby>せをうたってる〜<br>*(Hãy nhìn lên bầu trời đêm... ánh sao nhỏ của những ngôi sao nhỏ... đang hát lên hạnh phúc giản dị...)* |
| Tâm | (ghi hình bằng điện thoại) Em gửi mẹ con ở Đồng Tháp xem. |
| 親方 | (mắt đỏ) <ruby>素晴<rt>すば</rt></ruby>らしい！ベトナム、インドネシア、フィリピン、<ruby>3<rt>さん</rt></ruby>カ<ruby>国<rt>こく</rt></ruby>の<ruby>合唱<rt>がっしょう</rt></ruby>だ。<br>*(Tuyệt vời! Đại hợp xướng 3 nước: Việt Nam, Indonesia, Philippines.)* |

---

## Tình huống 13 — Bàn chính · 23:00, 親方 phát biểu khoá tiệc

| Vai | Lời thoại |
|---|---|
| 親方 | (đứng dậy) <ruby>最後<rt>さいご</rt></ruby>に、<ruby>農場<rt>のうじょう</rt></ruby>を<ruby>代表<rt>だいひょう</rt></ruby>して<ruby>一言<rt>ひとこと</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Cuối cùng, thay mặt nông trại, tôi xin nói một lời.)* |
| 親方 | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>外国人<rt>がいこくじん</rt></ruby>TTSの<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れは<ruby>初<rt>はじ</rt></ruby>めてで、<ruby>農場<rt>のうじょう</rt></ruby>として<ruby>不安<rt>ふあん</rt></ruby>でした。<br>*(Thật lòng, 3 năm trước nhận TTS nước ngoài là lần đầu, nông trại rất lo.)* |
| 親方 | しかしリンさんが<ruby>来<rt>き</rt></ruby>てくれて、<ruby>農場<rt>のうじょう</rt></ruby>そのものが<ruby>変<rt>か</rt></ruby>わりました。<ruby>家内<rt>かない</rt></ruby>はフォーの<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>え、<ruby>私<rt>わたし</rt></ruby>は「<ruby>土<rt>つち</rt></ruby>は<ruby>裏切<rt>うらぎ</rt></ruby>らない」というベトナムの<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Nhưng Linh đến, cả nông trại đã thay đổi. Vợ tôi học nấu phở, tôi học được câu Việt "Đất không phụ người".)* |
| 親方 | <ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れた<ruby>側<rt>がわ</rt></ruby>のはずが、<ruby>私<rt>わたし</rt></ruby>たちもリンさんから<ruby>学<rt>まな</rt></ruby>ばせていただきました。<br>*(Chúng tôi ở phía nhận, nhưng cũng đã học được từ Linh rất nhiều.)* |
| 親方 | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>1<ruby>日<rt>にち</rt></ruby>からSSW1として、また<ruby>長<rt>なが</rt></ruby>くお<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いいただきたい。<ruby>3<rt>さん</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>の<ruby>農場<rt>のうじょう</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>守<rt>まも</rt></ruby>ってほしい。<br>*(Từ 1/4 em làm SSW1, mong em đồng hành lâu dài. Mong em cùng giữ nông trại đời thứ 3.)* |
| 親方 | (cúi đầu sâu) <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Hôm nay thực sự cảm ơn.)* |
| Linh | (khóc, cúi đầu đáp lễ) こちらこそ、ありがとうございました。 |

---

## Tình huống 14 — 寮 phòng Linh · sáng 1/4, 6:00, độc thoại cài cúc đồng phục SSW1

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>1<ruby>日<rt>にち</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>です。<br>*(Ngày 1/4, ngày đầu SSW1.)* |
| Linh | (mặc đồng phục mới, đứng trước gương) バッジが<ruby>青<rt>あお</rt></ruby>に<ruby>変<rt>か</rt></ruby>わりました。<br>*(Badge đổi sang xanh dương rồi.)* |
| Linh | (cài cúc thứ nhất) 1つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>後輩<rt>こうはい</rt></ruby>のタムくんとカルロくんを<ruby>守<rt>まも</rt></ruby>る<ruby>指導員<rt>しどういん</rt></ruby>として。<br>*(Cúc thứ nhất — với tư cách 指導員 bảo vệ kohai Tâm và Carlo.)* |
| Linh | (cài cúc thứ hai) 2つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>3<ruby>代目<rt>だいめ</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えるSSW1として。<br>*(Cúc thứ hai — với tư cách SSW1 ủng hộ đời thứ 3 nông trại Yamamoto.)* |
| Linh | (cài cúc thứ ba) 3つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>同<rt>どう</rt></ruby>タップの<ruby>父<rt>ちち</rt></ruby>と<ruby>母<rt>はは</rt></ruby>に<ruby>誇<rt>ほこ</rt></ruby>られる<ruby>娘<rt>むすめ</rt></ruby>として。<br>*(Cúc thứ ba — với tư cách con gái khiến bố mẹ Đồng Tháp tự hào.)* |
| Linh | (hít sâu, nhìn nắm đất Đồng Tháp mẹ gửi sang đặt trong hộp gỗ trên bàn) <ruby>行<rt>い</rt></ruby>ってきます。<br>*(Em đi đây.)* |

---

## Tình huống 15 — Trước cổng nông trại · 7:30, kohai chào Linh với badge mới

| Vai | Lời thoại |
|---|---|
| Tâm | リン<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます！<br>*(Linh sempai, chào buổi sáng!)* |
| Carlo | バッジ、<ruby>青<rt>あお</rt></ruby>になりましたね！<br>*(Badge đổi sang xanh rồi nhỉ!)* |
| Linh | おはよう、<ruby>二人<rt>ふたり</rt></ruby>とも。<ruby>本日<rt>ほんじつ</rt></ruby>からSSW1と<ruby>指導員<rt>しどういん</rt></ruby>です。<br>*(Chào hai đứa. Từ hôm nay là SSW1 và 指導員.)* |
| Tâm | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>を「<ruby>指導員<rt>しどういん</rt></ruby>」に<ruby>変<rt>か</rt></ruby>えたほうがいいでしょうか？<br>*(Sempai, em đổi cách gọi sang "指導員" có phải không?)* |
| Linh | (cười) いいえ、「<ruby>先輩<rt>せんぱい</rt></ruby>」のままがいいです。<ruby>役職<rt>やくしょく</rt></ruby>は<ruby>変<rt>か</rt></ruby>わっても、<ruby>二人<rt>ふたり</rt></ruby>との<ruby>関係<rt>かんけい</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらないから。<br>*(Không, cứ "sempai" là được. Chức vụ đổi nhưng quan hệ với hai đứa không đổi.)* |
| Carlo | はい、<ruby>嬉<rt>うれ</rt></ruby>しいです！<br>*(Vâng, em vui quá!)* |

---

## Tình huống 16 — Trước ハウス số 1 · 8:00, 朝礼 và mẫu câu nhậm chức SSW1

| Vai | Lời thoại |
|---|---|
| 親方 | みんな、<ruby>朝礼<rt>ちょうれい</rt></ruby><ruby>始<rt>はじ</rt></ruby>めます。<ruby>整列<rt>せいれつ</rt></ruby>してください。<br>*(Mọi người, briefing sáng bắt đầu. Xin xếp hàng.)* |
| 親方 | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>の<ruby>新<rt>あたら</rt></ruby>しい<ruby>体制<rt>たいせい</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>します。<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>、グエン・ティ・リンさん、<ruby>指導員<rt>しどういん</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>。<ruby>特定技能<rt>とくていぎのう</rt></ruby>2<ruby>号<rt>ごう</rt></ruby>、アリさん、<ruby>副<rt>ふく</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>。<br>*(Từ hôm nay xin giới thiệu cơ cấu mới nông trại Yamamoto: SSW1 Nguyễn Thị Linh nhậm 指導員, SSW2号 Ali nhậm phó chủ nhiệm.)* |
| Cả nông trại | (vỗ tay) |
| 親方 | リンさん、<ruby>就任<rt>しゅうにん</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Linh, xin phát biểu nhậm chức.)* |
| Linh | (bước lên một bước, cúi đầu) みなさん、おはようございます。<br>*(Mọi người, chào buổi sáng.)* |
| Linh | <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>かせていただきます、グエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Em là Nguyễn Thị Linh, từ hôm nay làm việc với tư cách SSW1.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>みなさんから<ruby>教<rt>おし</rt></ruby>えていただいたこと――JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>栽培<rt>さいばい</rt></ruby>、ハウス<ruby>温度管理<rt>おんどかんり</rt></ruby>、<ruby>害虫防除<rt>がいちゅうぼうじょ</rt></ruby>、<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>出荷<rt>しゅっか</rt></ruby>、<ruby>報連相<rt>ほうれんそう</rt></ruby>――これらを<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>正<rt>ただ</rt></ruby>しく<ruby>伝<rt>つた</rt></ruby>えていきたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Những điều mọi người đã dạy em 3 năm — canh tác JAS hữu cơ, quản lý nhiệt độ nhà kính, phòng trừ sâu, thu hoạch xuất hàng, 報連相 — em muốn truyền lại đúng cho kohai.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>きますので、これからもご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Có gì không hiểu em nhất định sẽ hỏi, mong mọi người tiếp tục chỉ bảo.)* |
| Linh | (cúi đầu sâu) どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin được mong nhờ ạ.)* |
| Cả nông trại | (vỗ tay lớn) |
| 親方 | では、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>土<rt>つち</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>、<ruby>太陽<rt>たいよう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy bắt đầu công việc hôm nay. Biết ơn đất, biết ơn mặt trời, biết ơn khách hàng.)* |
| Cả nông trại | お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Xin được mong nhờ!)* |

---

## Tình huống 17 — 寮 phòng Linh · 21:00, gọi điện báo cáo ngày đầu SSW1 về Đồng Tháp (cảnh tiếng Việt khoá chương + khoá bộ 3 năm)

> Cảnh tiếng Việt — đêm cuối của bộ Linh, giữ mạch nhân vật và khép lại 3 năm.

| Vai | Lời thoại |
|---|---|
| Linh | (VN, video call) Bố, mẹ! Hôm nay con xong ngày đầu SSW1 rồi. |
| Mẹ Linh | (VN) Mệt không con? Phát biểu trước cả nông trại có run không? |
| Linh | (VN) Mẹ ơi, con không run đâu. 3 năm rồi, con đã quen phát biểu bằng tiếng Nhật. Sáng nay con nói được câu "<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>かせていただきます" trơn tru luôn. |
| Bố Linh | (VN, hắng giọng) Bố nghe ông Yamamoto nói chuyện hôm qua. Ông là người tử tế. Con cứ làm cho tốt. |
| Linh | (VN) Vâng bố. Ông tặng con cuốn sổ tay 指導員 với giấy 修了証. Sổ ghi tin nhắn của ông phía sau bìa, con đọc tối nay rồi. Ông viết "Linh-san, xin gửi gắm tương lai nông trại 3 đời. Cuốn sổ này sẽ là cuốn 修了証 thứ 2 của em — không phải tốt nghiệp TTS, mà là tốt nghiệp đời người". |
| Mẹ Linh | (VN, khóc) Trời ơi, ông Yamamoto viết hay quá. |
| Linh | (VN) Mẹ ơi, hôm qua bonenkai có cả ông bà Yamamoto, Ali, Carlo, Tâm, và Wati từ Hokkaido bay xuống. Hát "Mi-agete goran" 5 người 3 nước. Tâm có ghi hình, lát gửi mẹ xem. |
| Bố Linh | (VN) Tâm đó, em hàng xóm bên kia kênh, con biết mà. |
| Linh | (VN) Vâng bố. Tâm hôm qua tặng bà 奥様 cái nón lá mẹ Tâm tự đan. Bà đội thử suốt buổi. |
| Mẹ Linh | (VN) Mẹ nói chuyện với mẹ Tâm rồi. Mẹ kể bà ấy biết bà Yamamoto nấu phở rồi. Hôm nào sang Nhật, mẹ với mẹ Tâm cùng đi. |
| Linh | (VN, cười khóc) Mẹ! Lần này 2 mẹ cùng sang à? |
| Mẹ Linh | (VN) Đợi con lên SSW2号 con tự gọi 4 người sang. Mẹ chờ. |
| Linh | (VN) Vâng. 5 năm nữa con cố lên 2号. Khi đó bố mẹ sang ở 1 năm với con. |
| Bố Linh | (VN, im lặng một chút) Linh à, ông ngoại nhập gia tiên hôm 20 vừa rồi cúng kỳ. Mẹ con nói trên bàn thờ khói hương quẩn 3 lần ở nắm đất Nhật. Ông ngoại đồng ý đó con. |
| Linh | (VN, mắt đỏ) Bố… Bố mẹ ngủ đi, mai 6 giờ con dậy đi làm. Mai con với Tâm thu cà chua nhà 3, sau đó dạy Tâm cách dùng máy đo nhiệt độ. |
| Mẹ Linh | (VN) Linh à, mẹ chỉ mong con ăn no, ngủ ngon, làm việc cẩn thận. Đất Nhật bây giờ là của con. |
| Linh | (VN, gác máy, nhìn nắm đất Đồng Tháp trong hộp gỗ trên bàn, đặt cạnh cuốn sổ 指導員 và 修了証) Đồng Tháp ơi, Ibaraki ơi, hai bên đất, một đứa con. |
| Linh | <ruby>明日<rt>あした</rt></ruby>から、<ruby>新<rt>あたら</rt></ruby>しい<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まる。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Từ mai, 5 năm mới bắt đầu. Cố lên.)* |

---

## Đọng lại chương 12

Chương cuối của bộ Linh dạy nguyên trọn bộ mẫu câu giao tiếp trang trọng cho TTS Việt Nam ngành nông nghiệp khép lại 3 năm và bước sang SSW1: **giới thiệu khách đặc biệt với cấp trên** (ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます), **đề xướng 乾杯 với cấu trúc 3 ý nghĩa** (<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会<rt>かい</rt></ruby>には<ruby>3<rt>みっ</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>があります → <ruby>慰労<rt>いろう</rt></ruby>・<ruby>修了<rt>しゅうりょう</rt></ruby>・<ruby>就任<rt>しゅうにん</rt></ruby>), **phát biểu cảm ơn tổng kết theo cấu trúc Nhật** (お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします → 親方/奥様/同期/後輩/監理団体/登録支援機関 → cúi đầu), **nhận quà bằng hai tay và đáp lễ trang trọng** (<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします), **phiên dịch hai chiều Nhật–Việt** cho bố mẹ qua video call gặp cấp trên xin đặc quyền Tết, và **mẫu câu nhậm chức 指導員 SSW1 trong 朝礼** (<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>かせていただきます). Linh đã tổng kết được 3 năm bằng đúng các kỹ năng mà bộ sách đã dạy: từ N5 ngày đầu (T1 rainichi), 種まき・<ruby>害虫<rt>がいちゅう</rt></ruby><ruby>防除<rt>ぼうじょ</rt></ruby> năm 1, JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>監査<rt>かんさ</rt></ruby>・<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby> năm 2, đến <ruby>跡継<rt>あとつ</rt></ruby>ぎ・<ruby>家族<rt>かぞく</rt></ruby><ruby>来日<rt>らいにち</rt></ruby>・SSW1<ruby>移行<rt>いこう</rt></ruby> năm 3. Triết lý nghề nông — biết ơn đất, biết ơn mặt trời, biết ơn khách hàng — được 親方 chốt lại trong câu cuối朝礼. Nắm đất Đồng Tháp mẹ gửi sang Nhật đặt cạnh cuốn sổ 指導員 và 修了証 trên bàn Linh: hai bên đất, một đứa con. Vòng tròn 同期 (Wati) + sempai-kohai (Ali-Linh-Tâm-Carlo) khép lại 3 năm, mở ra 5 năm SSW1 mới.

> Từ vựng & mẫu câu chương này: <ruby>年末年始会<rt>ねんまつねんしかい</rt></ruby>・<ruby>慰労会<rt>いろうかい</rt></ruby>・<ruby>契約満了<rt>けいやくまんりょう</rt></ruby>・<ruby>修了<rt>しゅうりょう</rt></ruby>・<ruby>就任<rt>しゅうにん</rt></ruby>・<ruby>祝賀会<rt>しゅくがかい</rt></ruby>・<ruby>修了証<rt>しゅうりょうしょう</rt></ruby>・<ruby>指導員<rt>しどういん</rt></ruby><ruby>手帳<rt>てちょう</rt></ruby>・<ruby>同期<rt>どうき</rt></ruby>・<ruby>後輩<rt>こうはい</rt></ruby>・<ruby>朝礼<rt>ちょうれい</rt></ruby>・<ruby>循環<rt>じゅんかん</rt></ruby>・<ruby>感慨深<rt>かんがいぶか</rt></ruby>い・JAS<ruby>有機<rt>ゆうき</rt></ruby>・<ruby>農薬<rt>のうやく</rt></ruby><ruby>取扱<rt>とりあつかい</rt></ruby>・<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>・<ruby>報連相<rt>ほうれんそう</rt></ruby>・<ruby>害虫防除<rt>がいちゅうぼうじょ</rt></ruby>・<ruby>温度管理<rt>おんどかんり</rt></ruby>・<ruby>土<rt>つち</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>・<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>・ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます・お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>本日<rt>ほんじつ</rt></ruby>より〜として<ruby>働<rt>はたら</rt></ruby>かせていただきます・<ruby>娘<rt>むすめ</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>です・これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします

## Bí quyết chương

- **Closure 3 năm**: chương cuối của bộ Linh — tổng kết toàn bộ kỹ năng đã dạy xuyên 36 chương (3 năm × 12).
- **Triple ý nghĩa bonenkai**: cấu trúc 3 lý do (慰労・修了・就任) giúp người học nắm được template phát biểu trang trọng.
- **Vòng tròn 同期 + sempai-kohai**: Wati (đồng kỳ Hokkaido) + Ali-Carlo (sempai-đồng nghiệp) + Tâm (kohai cùng quê) = mô hình quan hệ ngang-dọc người đi Nhật cần thuộc.
- **修了証 + 指導員手帳**: hai vật symbol "graduation" của nông nghiệp TTS — học viên đọc sẽ nhớ mẫu câu nhận quà trang trọng <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします + <ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします.
- **3 cúc đồng phục SSW1**: cài cúc 3 tầng — 指導員, SSW1, con gái — dạy người học cách tự xác lập nhiều vai trò song song khi làm nghề ở Nhật.
- **Nắm đất Đồng Tháp + cuốn sổ 指導員**: motif khoá bộ — đặt 2 vật cạnh nhau trên bàn = "hai bên đất, một đứa con", triết lý của lớp TTS Việt Nam đi xuất khẩu lao động nông nghiệp.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 作業着 | さぎょうぎ | TÁC NGHIỆP TRƯỚC | đồ lao động |
| 緑 | みどり | LỤC | màu xanh lá |
| 青 | あお | THANH | màu xanh dương |
| 泥 | どろ | NÊ | bùn |
| 汗 | あせ | HÃN | mồ hôi |
| 太陽 | たいよう | THÁI DƯƠNG | mặt trời |
| 形 | かたち | HÌNH | hình dáng |
| 意味 | いみ | Ý VỊ | ý nghĩa |
| 勤務日 | きんむび | CẦN VỤ NHẬT | ngày làm |
| 感慨深 | かんがいぶか | CẢM KHÁI THÂM | đầy cảm xúc |
| 空港 | くうこう | KHÔNG CẢNG | sân bay |
| 真似 | まね | CHÂN TỰ | bắt chước |
| 渡 | わた | ĐỘ | trao |
| 循環 | じゅんかん | TUẦN HOÀN | tuần hoàn |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 酪農 | らくのう | LẠC NÔNG | chăn nuôi bò sữa |
| 北海道 | ほっかいどう | BẮC HẢI ĐẠO | Hokkaido |
| 同期 | どうき | ĐỒNG KỲ | đồng kỳ, cùng lứa |
| 常磐線 | じょうばんせん | THƯỜNG BÀN TUYẾN | tuyến Joban |
| 以来 | いらい | DĨ LAI | từ đó tới nay |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thử thách |
| 畜産 | ちくさん | SÚC SẢN | chăn nuôi |
| 分野 | ぶんや | PHÂN DÃ | lĩnh vực |
| 進 | すす | TIẾN | tiến |
| 連続 | れんぞく | LIÊN TỤC | liên tục |
| 馴染 | なじみ | TUẦN NHIỄM | quen thuộc |
| 大将 | たいしょう | ĐẠI TƯỚNG | ông chủ quán |
| 講座 | こうざ | GIẢNG TỌA | lớp học |
| 研修 | けんしゅう | NGHIÊN TU | tập huấn |
| 招 | まね | CHIÊU | mời |
| 出身 | しゅっしん | XUẤT THÂN | xuất thân |
| 故郷 | こきょう | CỐ HƯƠNG | quê hương |
| 未経験 | みけいけん | VỊ KINH NGHIỆM | chưa từng làm |
| 娘同様 | むすめどうよう | NƯƠNG ĐỒNG DẠNG | như con gái |
| 土産 | みやげ | THỔ SẢN | quà |
| 音頭 | おんど | ÂM ĐẦU | đề xướng |
| 年度末 | ねんどまつ | NIÊN ĐỘ MẠT | cuối năm tài khoá |
| 慰労会 | いろうかい | ÚY LAO HỘI | tiệc úy lạo |
| 契約満了 | けいやくまんりょう | KHẾ ƯỚC MÃN LIỄU | hết hợp đồng |
| 修了 | しゅうりょう | TU LIỄU | hoàn thành |
| 祝賀会 | しゅくがかい | CHÚC HẠ HỘI | tiệc chúc mừng |
| 追 | お | TRUY | đuổi theo |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | xin nhận |
| 講習 | こうしゅう | GIẢNG TẬP | tập huấn |
| 農薬 | のうやく | NÔNG DƯỢC | thuốc nông nghiệp |
| 取扱 | とりあつかい | THỦ TRÁP | xử lý, sử dụng |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 父親 | ちちおや | PHỤ THÂN | cha |
| 母親 | ははおや | MẪU THÂN | mẹ |
| 戦友 | せんゆう | CHIẾN HỮU | chiến hữu |
| 守 | まも | THỦ | bảo vệ |
| 修了証 | しゅうりょうしょう | TU LIỄU CHỨNG | giấy tốt nghiệp |
| 発行 | はっこう | PHÁT HÀNH | phát hành |
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | huấn luyện viên |
| 手帳 | てちょう | THỦ TRƯỚNG | sổ tay |
| 立場 | たちば | LẬP TRƯỜNG | vị thế |
| 表紙 | ひょうし | BIỂU CHỈ | bìa |
| 宝物 | たからもの | BẢO VẬT | báu vật |
| 一生 | いっしょう | NHẤT SINH | cả đời |
| 存在 | そんざい | TỒN TẠI | sự tồn tại |
| 約束 | やくそく | ƯỚC NHẶC | hứa hẹn |
| 帰省 | きせい | QUY TỈNH | về quê |
| 笠 | かさ | LẠP | nón |
| 編 | あ | BIÊN | đan, dệt |
| 畑仕事 | はたけしごと | ĐIỀN SỰ | làm ruộng |
| 是非 | ぜひ | THỊ PHI | hẳn rồi, mời |
| 軽 | かる | KHINH | nhẹ |
| 涼 | すず | LƯƠNG | mát |
| 姿 | すがた | TƯ | dáng dấp |
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 側 | がわ | TRẮC | phía |
| 学 | まな | HỌC | học |
| 付合 | つきあ | PHÓ HỢP | giao tiếp |
| 体制 | たいせい | THỂ CHẾ | cơ cấu |
| 副主任 | ふくしゅにん | PHÓ CHỦ NHIỆM | phó chủ nhiệm |
| 栽培 | さいばい | TÀI BỒI | canh tác |
| 温度管理 | おんどかんり | ÔN ĐỘ QUẢN LÝ | quản lý nhiệt độ |
| 害虫防除 | がいちゅうぼうじょ | HẠI TRÙNG PHÒNG TRỪ | phòng trừ sâu |
| 出荷 | しゅっか | XUẤT HÀ | xuất hàng |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | báo cáo - liên lạc - tham vấn |
| 整列 | せいれつ | CHỈNH LIỆT | xếp hàng |
| 客様 | きゃくさま | KHÁCH DẠNG | khách hàng |
| 役職 | やくしょく | DỊCH CHỨC | chức vụ |
| 関係 | かんけい | QUAN HỆ | quan hệ |
| 初日 | しょにち | SƠ NHẬT | ngày đầu |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
