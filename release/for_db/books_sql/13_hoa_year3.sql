-- Hizashi LITE book SQL — Một Năm của Hoa Y3
-- curriculum_id = 800000013  (book_seq=13)
-- nguồn: books/13_hoa_year3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000013, 'N4', 'markdown_book', 'Thực phẩm', 'Một Năm của Hoa Y3', 'Bộ sách Hizashi — Một Năm của Hoa Y3', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000001, 800000013, NULL, 'markdown_book', 'T1. Mở màn năm ba — chuyển hướng SSW1 (3年目の春・特定技能への準備)', '# Sách thực tập sinh thực phẩm · T1. Mở màn năm ba — chuyển hướng SSW1 (3年目の春・特定技能への準備)

> **Mục tiêu nhân vật:** Hoa (24 tuổi, Hà Nội) bước vào năm ba — năm cuối thực tập sinh tại nhà máy thực phẩm Saitama Foods (埼玉フーズ) ở Saitama. Học các mẫu hội thoại tiếng Nhật cho giai đoạn chuyển sang **特定技能1号 (SSW1)**: trình bày kế hoạch năm với 鈴木 (Suzuki), trao đổi về **技能検定3級** và **良好修了** để được miễn thi SSW1, hỏi lại nghĩa của **転職・業種・短期滞在ビザ・招待状**, coach 後輩 Mai cách kèm kohai mới bằng やさしい日本語, quan sát đàn chị Kimura nói về 仲間, và xác nhận thông tin visa thăm ngắn 90 ngày cho mẹ.

---

## Bối cảnh

Ngày 1 tháng 4 năm 2028, đầu năm tài khoá Nhật. Hoa năm cuối TTS tại nhà máy chế biến thực phẩm Saitama Foods (埼玉フーズ) ở Saitama, trình độ N3 đang ôn. Mai (Ikusei năm 2) sắp đón kohai mới Trang; Putri (Indonesia, SSW1 năm 2) vẫn ở cùng ký túc. Chương này tập trung các mẫu câu giao tiếp công sở giai đoạn chuyển từ TTS sang SSW1: bàn kế hoạch năm với cấp trên, hỏi lại từ chuyên ngành visa, mời mẹ sang Nhật bằng 短期滞在ビザ, và coach đàn em.

---

## Tình huống 1 — Phòng họp nhỏ nhà máy · 9:00, Tanaka thông báo kế hoạch năm và phân công 指導

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年度<rt>ねんど</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, chào buổi sáng. Từ hôm nay năm tài khoá 2028 bắt đầu. Mong mọi người hợp tác.)* |
| Cả phòng | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Mong anh chỉ bảo.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>今年度<rt>こんねんど</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きな<ruby>変化<rt>へんか</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つお<ruby>伝<rt>つた</rt></ruby>えします。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、ホアさんが<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、つまりTTS<ruby>最終<rt>さいしゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Có hai thay đổi lớn trong năm tài khoá này. Thứ nhất, Hoa bước vào năm 3, tức là năm cuối của diện TTS.)* |
| Hoa | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin được chỉ bảo ạ.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>来年<rt>らいねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からは<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>として<ruby>勤務<rt>きんむ</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けていただく<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Dự kiến từ tháng 4 năm sau, Hoa sẽ tiếp tục làm việc với tư cách kỹ năng đặc định số 1.)* |
| Hoa | ありがとうございます。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>いたします。<br>*(Em cảm ơn anh. Em sẽ chuẩn bị hết sức ạ.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>にベトナムから<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>チャンさんが<ruby>来<rt>き</rt></ruby>ます。マイさん、<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。ホアさんがサポートに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Thứ hai, tháng 5 sẽ có kohai mới tên Trang từ Việt Nam diện Ikusei. Mai, em phụ trách kèm cặp. Hoa hỗ trợ.)* |
| Mai | え、<ruby>私<rt>わたし</rt></ruby>が<ruby>指導<rt>しどう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>ですか? <ruby>務<rt>つと</rt></ruby>まるかどうか<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Ơ, em phụ trách kèm cặp ạ? Em không tự tin mình làm nổi.)* |
| <ruby>田中<rt>たなか</rt></ruby> | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>一<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>のホアさんと<ruby>同<rt>おな</rt></ruby>じです。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>報連相<rt>ほうれんそう</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Không sao. Giống Hoa một năm trước. Có gì không hiểu thì nhất định báo cáo - liên lạc - bàn bạc.)* |
| Mai | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Hành lang sau họp · 9:30, Hoa coach Mai bằng やさしい日本語

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>いです。チャンさんに<ruby>何<rt>なに</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えればいいか<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Chị Hoa, em sợ thật. Em không biết phải dạy Trang cái gì.)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>一<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は、やさしい<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Không sao. Tuần đầu, em dạy chào hỏi và tên dụng cụ bằng tiếng Nhật dễ trước.)* |
| Mai | やさしい<ruby>日本語<rt>にほんご</rt></ruby>...というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんなことですか?<br>*(Yasashii Nihongo... cụ thể là như thế nào ạ?)* |
| Hoa | <ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って、<ruby>一文<rt>いちぶん</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つの<ruby>情報<rt>じょうほう</rt></ruby>だけ<ruby>入<rt>い</rt></ruby>れます。<ruby>難<rt>むずか</rt></ruby>しい<ruby>漢語<rt>かんご</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けて、<ruby>身振<rt>みぶ</rt></ruby>りも<ruby>添<rt>そ</rt></ruby>えます。<br>*(Dùng câu ngắn, mỗi câu chỉ một thông tin. Tránh từ Hán khó, kèm cử chỉ.)* |
| Mai | なるほど。<ruby>一<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、ホア<ruby>姉<rt>ねえ</rt></ruby>さんも<ruby>私<rt>わたし</rt></ruby>にそうしてくれましたね。<br>*(Ra vậy. Một năm trước chị cũng làm thế với em nhỉ.)* |
| Hoa | <ruby>覚<rt>おぼ</rt></ruby>えてる? たとえば、「<ruby>包丁<rt>ほうちょう</rt></ruby>、<ruby>右手<rt>みぎて</rt></ruby>、<ruby>持<rt>も</rt></ruby>って、<ruby>下<rt>した</rt></ruby>に<ruby>切<rt>き</rt></ruby>る」と<ruby>区切<rt>くぎ</rt></ruby>って<ruby>言<rt>い</rt></ruby>う。<ruby>一気<rt>いっき</rt></ruby>に<ruby>長<rt>なが</rt></ruby>く<ruby>説明<rt>せつめい</rt></ruby>しない。<br>*(Em nhớ chứ? Ví dụ chia ra "包丁・tay phải・cầm・cắt xuống". Đừng giảng một mạch dài.)* |
| Mai | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>復習<rt>ふくしゅう</rt></ruby>していただけますか?<br>*(Em hiểu rồi. Tuần sau chị ôn cùng em được không ạ?)* |
| Hoa | もちろん。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Đương nhiên. Tối thứ Bảy hàng tuần mình tập nhé.)* |

---

## Tình huống 3 — Trạm xe buýt · 6:30 chiều hôm trước, ôn lại với Putri câu xác nhận kế hoạch

| Vai | Lời thoại |
|---|---|
| Putri | おはよう、ホアちゃん! <ruby>新年度<rt>しんねんど</rt></ruby>おめでとう。<br>*(Chào Hoa-chan! Chúc mừng năm tài khoá mới.)* |
| Hoa | おはよう、プトゥリ。プトゥリも<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>だね。<br>*(Chào Putri. Putri cũng năm 2 kỹ năng đặc định rồi nhỉ.)* |
| Putri | はい。あと<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>たったら、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Vâng. 3 năm nữa, em muốn thi 特定技能2号.)* |
| Hoa | すみません、「<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>」というのは、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べる<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>のことですか?<br>*(Xin lỗi, "特定技能2号" có phải là tư cách lưu trú đón được gia đình không?)* |
| Putri | そうです。<ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザで<ruby>父<rt>ちち</rt></ruby>と<ruby>母<rt>はは</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べます。<br>*(Đúng vậy. Bằng visa lưu trú gia đình, đón được bố mẹ sang.)* |
| Hoa | プトゥリは<ruby>計画<rt>けいかく</rt></ruby>が<ruby>具体的<rt>ぐたいてき</rt></ruby>でいいね。<ruby>私<rt>わたし</rt></ruby>はまずSSW1の<ruby>申請<rt>しんせい</rt></ruby>からだ。<br>*(Putri có kế hoạch cụ thể đấy. Mình thì bắt đầu từ hồ sơ SSW1.)* |
| Putri | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つずつね。<br>*(Không sao, từng bước một thôi.)* |

---

## Tình huống 4 — Phòng nghỉ Suzuki · 14:00, Hoa trình bày kế hoạch năm bằng số thứ tự

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>を<ruby>相談<rt>そうだん</rt></ruby>させていただきたいのですが、お<ruby>時間<rt>じかん</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Anh Suzuki, em muốn xin được bàn về kế hoạch năm thứ 3, anh có thời gian không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | はい、どうぞ。<ruby>遠慮<rt>えんりょ</rt></ruby>なく。<br>*(Vâng, mời em. Đừng ngại.)* |
| Hoa | <ruby>大<rt>おお</rt></ruby>きく<ruby>四<rt>よっ</rt></ruby>つあります。<ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Có 4 việc lớn. Thứ nhất, tháng 8 em muốn thi 技能検定 cấp 3.)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | いいですね。<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Tốt đấy. Cái thứ hai?)* |
| Hoa | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPTでN3を<ruby>受<rt>う</rt></ruby>けます。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、マイさんとチャンさんの<ruby>指導<rt>しどう</rt></ruby>サポート。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、SSW1の<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>です。<br>*(Thứ hai, JLPT tháng 12 em thi N3. Thứ ba, hỗ trợ kèm Mai và Trang. Thứ tư, chuẩn bị hồ sơ xin SSW1.)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | <ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>確認<rt>かくにん</rt></ruby>ですが、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>と<ruby>認<rt>みと</rt></ruby>められ、SSW1の<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>になるのは<ruby>知<rt>し</rt></ruby>っていますね?<br>*(Cụ thể, tuyệt vời. Xác nhận lại: nếu đậu 技能検定3級 sẽ được công nhận 良好修了 và miễn thi kỹ năng SSW1, em biết chứ?)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しております。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>がSSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つになるということですね。<br>*(Vâng, em rõ ạ. Tức là chứng chỉ đậu sẽ là một trong các giấy tờ cần cho hồ sơ SSW1 đúng không ạ.)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | その<ruby>通<rt>とお</rt></ruby>りです。よく<ruby>整理<rt>せいり</rt></ruby>されています。<br>*(Đúng vậy. Em sắp xếp tốt đấy.)* |

---

## Tình huống 5 — Phòng nghỉ Suzuki · 14:20, hỏi lại về 転職 và 業種

| Vai | Lời thoại |
|---|---|
| <ruby>鈴木<rt>すずき</rt></ruby> | ホアさん、もう<ruby>一<rt>ひと</rt></ruby>つお<ruby>伝<rt>つた</rt></ruby>えしたいことがあります。SSW1になると<ruby>転職<rt>てんしょく</rt></ruby>という<ruby>選択肢<rt>せんたくし</rt></ruby>も<ruby>出<rt>で</rt></ruby>てきます。<br>*(Hoa-san, còn một điều nữa anh muốn nói. Khi thành SSW1, em sẽ có thêm lựa chọn chuyển việc.)* |
| Hoa | すみません、「<ruby>転職<rt>てんしょく</rt></ruby>」というのは<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えることですよね。SSW1でも<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>なら<ruby>可能<rt>かのう</rt></ruby>ですか?<br>*(Xin lỗi, "tenshoku" là đổi công ty đúng không ạ. Với SSW1 cùng 業種 thì được phải không ạ?)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>業種<rt>ぎょうしゅ</rt></ruby>というのは<ruby>仕事<rt>しごと</rt></ruby>の<ruby>分野<rt>ぶんや</rt></ruby>のことで、<ruby>食品<rt>しょくひん</rt></ruby><ruby>製造<rt>せいぞう</rt></ruby><ruby>業<rt>ぎょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>でなら<ruby>他社<rt>たしゃ</rt></ruby>へ<ruby>移<rt>うつ</rt></ruby>れます。TTSとは<ruby>違<rt>ちが</rt></ruby>います。<br>*(Vâng, đúng vậy. 業種 là lĩnh vực công việc, trong ngành chế biến thực phẩm thì có thể chuyển sang công ty khác. Khác với TTS.)* |
| Hoa | <ruby>給料<rt>きゅうりょう</rt></ruby>や<ruby>勤務<rt>きんむ</rt></ruby><ruby>地<rt>ち</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うということですね。<br>*(Tức là lương và nơi làm tuỳ công ty mà khác nhau ạ.)* |
| <ruby>鈴木<rt>すずき</rt></ruby> | <ruby>東京<rt>とうきょう</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>は<ruby>給料<rt>きゅうりょう</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い<ruby>傾向<rt>けいこう</rt></ruby>です。でも<ruby>家賃<rt>やちん</rt></ruby>も<ruby>高<rt>たか</rt></ruby>い。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>一<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>考<rt>かんが</rt></ruby>えてください。<br>*(Công ty Tokyo lương có xu hướng cao. Nhưng tiền nhà cũng cao. Đừng vội, hãy nghĩ trong một năm.)* |
| Hoa | はい、<ruby>選択肢<rt>せんたくし</rt></ruby>として<ruby>覚<rt>おぼ</rt></ruby>えておきます。<ruby>教<rt>おし</rt></ruby>えていただき、ありがとうございました。<br>*(Vâng, em sẽ nhớ như một lựa chọn. Em cảm ơn anh đã chỉ bảo.)* |

---

## Tình huống 6 — Phòng thay đồ · 15:30, quan sát đàn chị Kimura nói về 仲間

| Vai | Lời thoại |
|---|---|
| <ruby>木村<rt>きむら</rt></ruby> | ホアさん、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>おめでとう。<ruby>食品<rt>しょくひん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>として<ruby>頼<rt>たよ</rt></ruby>りにしてますよ。<br>*(Hoa-san, chúc mừng năm 3. Tôi tin cậy em với tư cách phụ trách vệ sinh thực phẩm đấy.)* |
| Hoa | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ありがとうございます。<ruby>実<rt>じつ</rt></ruby>は<ruby>転職<rt>てんしょく</rt></ruby>のことで<ruby>悩<rt>なや</rt></ruby>んでいます。<ruby>先輩<rt>せんぱい</rt></ruby>のご<ruby>意見<rt>いけん</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>いたいのですが。<br>*(Chị Kimura, em cảm ơn. Thực ra em đang phân vân chuyện chuyển việc. Em muốn xin ý kiến chị.)* |
| <ruby>木村<rt>きむら</rt></ruby> | <ruby>難<rt>むずか</rt></ruby>しい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>私<rt>わたし</rt></ruby>はこの<ruby>工場<rt>こうじょう</rt></ruby>に<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>いますが、<ruby>後悔<rt>こうかい</rt></ruby>はしていません。<br>*(Câu hỏi khó nhỉ. Chị ở nhà máy này 10 năm, nhưng chưa hối hận.)* |
| Hoa | なぜ<ruby>残<rt>のこ</rt></ruby>られたんですか?<br>*(Vì sao chị ở lại được ạ?)* |
| <ruby>木村<rt>きむら</rt></ruby> | <ruby>仲間<rt>なかま</rt></ruby>がいるからです。<ruby>給料<rt>きゅうりょう</rt></ruby>はもっと<ruby>高<rt>たか</rt></ruby>い<ruby>会社<rt>かいしゃ</rt></ruby>もありました。でも、<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけてくれる<ruby>人<rt>ひと</rt></ruby>がいる<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>です。<br>*(Vì có đồng đội. Cũng có công ty lương cao hơn. Nhưng nơi mà khi khó khăn có người lên tiếng giúp thì rất quý.)* |
| Hoa | <ruby>仲間<rt>なかま</rt></ruby>...<ruby>給料<rt>きゅうりょう</rt></ruby>より<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Đồng đội... quan trọng hơn lương ạ?)* |
| <ruby>木村<rt>きむら</rt></ruby> | <ruby>人<rt>ひと</rt></ruby>によります。でも<ruby>急<rt>いそ</rt></ruby>がず<ruby>考<rt>かんが</rt></ruby>えてくださいね。お<ruby>金<rt>かね</rt></ruby>だけで<ruby>決<rt>き</rt></ruby>めると<ruby>後悔<rt>こうかい</rt></ruby>することがあります。<br>*(Tuỳ người. Nhưng em đừng vội nghĩ. Quyết bằng tiền không thôi đôi khi sẽ hối hận đấy.)* |
| Hoa | はい。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>として<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Vâng. Em sẽ ghi nhớ như một lời quan trọng.)* |

---

## Tình huống 7 — Khu vực đóng gói · 16:00, Hoa hỏi Satou kinh nghiệm 申請 SSW1

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。SSW1の<ruby>申請<rt>しんせい</rt></ruby>について<ruby>少<rt>すこ</rt></ruby>し<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか?<br>*(Anh Satou, em xin lỗi làm phiền lúc anh bận. Em hỏi về hồ sơ SSW1 được không ạ?)* |
| Satou | どうぞ。<ruby>何<rt>なに</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Mời. Hỏi gì cũng được.)* |
| Hoa | <ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>はいつ<ruby>頃<rt>ごろ</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めればいいでしょうか?<br>*(Em nên bắt đầu chuẩn bị hồ sơ từ khoảng nào ạ?)* |
| Satou | <ruby>半年<rt>はんとし</rt></ruby><ruby>前<rt>まえ</rt></ruby>、つまり<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からが<ruby>目安<rt>めやす</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>出<rt>だ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>と<ruby>本人<rt>ほんにん</rt></ruby>が<ruby>出<rt>だ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>があります。<br>*(Khoảng nửa năm trước, tức là từ tháng 10. Có giấy tờ công ty nộp và giấy tờ bản thân nộp.)* |
| Hoa | <ruby>本人<rt>ほんにん</rt></ruby>が<ruby>用意<rt>ようい</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Giấy tờ bản thân chuẩn bị cụ thể là gì ạ?)* |
| Satou | <ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>、<ruby>健康<rt>けんこう</rt></ruby><ruby>診断書<rt>しんだんしょ</rt></ruby>などです。リストを<ruby>後<rt>あと</rt></ruby>でメールします。<br>*(Chứng chỉ 技能検定, giấy nộp thuế, juuminhyou, giấy khám sức khoẻ. Lát anh email danh sách cho em.)* |
| Hoa | ありがとうございます。<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>は<ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>取<rt>と</rt></ruby>れるということですね。<br>*(Em cảm ơn anh. Giấy nộp thuế lấy ở thị uỷ phải không ạ?)* |
| Satou | そうです。マイナンバーカードがあれば、コンビニでも<ruby>取<rt>と</rt></ruby>れます。<br>*(Đúng. Nếu có thẻ My Number thì lấy ở konbini cũng được.)* |

---

## Tình huống 8 — Ký túc, phòng ăn · 19:30, ăn tối cùng Mai và Putri ôn từ chuyên ngành

| Vai | Lời thoại |
|---|---|
| Hoa | いただきます。<br>*(Mời ăn.)* |
| Mai · Putri | いただきます。<br>*(Mời ăn.)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>で「<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>きましたが、TTSと<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんですか?<br>*(Chị Hoa, sáng nay nghe "ikusei shuurou", khác TTS chỗ nào ạ?)* |
| Hoa | <ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>で、<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>育成<rt>いくせい</rt></ruby>し、そのまま<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めるようになっています。<ruby>転籍<rt>てんせき</rt></ruby>も<ruby>条件付<rt>じょうけんつき</rt></ruby>で<ruby>可能<rt>かのう</rt></ruby>です。<br>*(Là chế độ mới, đào tạo 3 năm rồi đi thẳng lên kỹ năng đặc định. Chuyển công ty có điều kiện cũng được.)* |
| Putri | じゃあ<ruby>私<rt>わたし</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>のTTSとは<ruby>違<rt>ちが</rt></ruby>うね。チャンさんはラッキーかも。<br>*(Vậy khác TTS thời mình. Trang có khi may đấy.)* |
| Mai | <ruby>転籍<rt>てんせき</rt></ruby>...というのは<ruby>転職<rt>てんしょく</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Tenseki... có giống tenshoku không ạ?)* |
| Hoa | <ruby>似<rt>に</rt></ruby>ているけれど<ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>う。<ruby>転籍<rt>てんせき</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ<ruby>制度<rt>せいど</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えること、<ruby>転職<rt>てんしょく</rt></ruby>は<ruby>制度<rt>せいど</rt></ruby>そのものを<ruby>変<rt>か</rt></ruby>える<ruby>場合<rt>ばあい</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>むイメージかな。<br>*(Giống nhưng khác. Tenseki là đổi công ty trong cùng chế độ, tenshoku có thể bao gồm cả đổi chế độ.)* |
| Putri | <ruby>難<rt>むずか</rt></ruby>しい!でもホアちゃん、よく<ruby>勉強<rt>べんきょう</rt></ruby>してる。<br>*(Khó nhỉ! Mà Hoa-chan học kỹ thật.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>はこういう<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えないと<ruby>申請<rt>しんせい</rt></ruby>できないから。<br>*(Năm 3 không nhớ mấy từ này là không nộp được hồ sơ.)* |

---

## Tình huống 9 — Phòng Hoa · 21:00, gọi điện về VN xác nhận 短期滞在ビザ cho mẹ

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ JP qua trao đổi với mẹ.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mẹ ơi, hôm nay con vừa họp đầu năm. Anh Tanaka thông báo tháng 4 năm sau con sẽ chuyển sang SSW1 — kỹ năng đặc định số 1. |
| Mẹ | (tiếng Việt) Mẹ mừng quá Hoa. Con cố nốt một năm này nữa thôi. |
| Hoa | (tiếng Việt) Mẹ ơi, tháng 1 sang năm mẹ với bố sang Nhật chơi với con được không? Con tìm hiểu rồi, visa diện 短期滞在 — thăm ngắn 90 ngày. Bên con sẽ làm 招待状 — giấy mời, gửi về cho bố mẹ mang ra Đại sứ quán. |
| Mẹ | (tiếng Việt) Mẹ chưa nghe rõ. 招待状 là gì hả con? |
| Hoa | (tiếng Việt) Là giấy con viết ở Nhật mời bố mẹ, kèm bản photo thẻ cư trú 在留カード của con và giấy chứng minh con đủ khả năng tài chính bảo lãnh. Mẹ với bố chỉ cần cầm qua Đại sứ quán Nhật ở Hà Nội thôi. |
| Mẹ | (tiếng Việt) Vậy đỡ lo. Hồi đi anh ba, mẹ không dám hỏi vì sợ rắc rối. Lần này có con ở đó rồi. |
| Hoa | (tiếng Việt) Mẹ yên tâm. Hôm nay con học thêm từ mới: 仲間 nghĩa là đồng đội — chị Kimura bảo nakama quan trọng hơn tiền lương. Con thấy đúng mẹ ạ. |
| Mẹ | (tiếng Việt) Đúng đó con. Ở đâu có người tốt thì ở đó là nhà. |
| Hoa | (tiếng Việt) Tuần này mẹ gửi cho con bản scan hộ chiếu của mẹ với bố nhé, con bắt đầu chuẩn bị thư mời. |
| Mẹ | (tiếng Việt) Ừ, mẹ nhờ con Lan chụp giúp. Ngủ sớm con, mai còn đi làm. |

---

## Tình huống 10 — Ký túc, bàn học · 22:30, ghi sổ kế hoạch năm và chốt lại bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<br>*(Mùng 1 tháng 4, ngày đầu năm 3. Mình sắp xếp những điều xác nhận hôm nay.)* |
| Hoa | <ruby>一<rt>いち</rt></ruby>、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>(<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby>)で<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>を<ruby>取<rt>と</rt></ruby>る。<ruby>二<rt>に</rt></ruby>、JLPTN3を<ruby>受<rt>う</rt></ruby>ける(<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>)。<br>*(Một, đậu 技能検定 cấp 3 (tháng 8) để được 良好修了. Hai, thi JLPT N3 (tháng 12).)* |
| Hoa | <ruby>三<rt>さん</rt></ruby>、マイさんとチャンさんの<ruby>指導<rt>しどう</rt></ruby>サポート。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby><ruby>夜<rt>よる</rt></ruby>にやさしい<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby>。<br>*(Ba, hỗ trợ kèm Mai và Trang. Tối thứ Bảy hàng tuần ôn yasashii nihongo.)* |
| Hoa | <ruby>四<rt>し</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>からSSW1<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>。<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>はコンビニ<ruby>取得<rt>しゅとく</rt></ruby><ruby>可能<rt>かのう</rt></ruby>。<br>*(Bốn, từ tháng 10 chuẩn bị hồ sơ SSW1. Giấy nộp thuế lấy được ở konbini.)* |
| Hoa | <ruby>五<rt>ご</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>母<rt>はは</rt></ruby>を<ruby>短期<rt>たんき</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザで<ruby>招待<rt>しょうたい</rt></ruby>する。<ruby>招待状<rt>しょうたいじょう</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カードのコピーを<ruby>準備<rt>じゅんび</rt></ruby>。<br>*(Năm, tháng 1 mời mẹ sang bằng visa thăm ngắn. Chuẩn bị thư mời và bản photo thẻ cư trú.)* |
| Hoa | <ruby>六<rt>ろく</rt></ruby>、<ruby>転職<rt>てんしょく</rt></ruby>は<ruby>急<rt>いそ</rt></ruby>がない。<ruby>仲間<rt>なかま</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にしながら<ruby>一<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>判断<rt>はんだん</rt></ruby>する。<br>*(Sáu, chuyện chuyển việc không vội. Trân trọng nakama và để một năm để quyết.)* |
| Hoa | <ruby>一<rt>ひと</rt></ruby>つずつ、<ruby>確実<rt>かくじつ</rt></ruby>に。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Từng cái một, chắc chắn. Cố lên.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá, Hoa nhận thông báo chuyển sang **特定技能1号** từ tháng 4 năm sau và phân công sang vai sempai-of-sempai. Học các mẫu câu giai đoạn này: trình bày kế hoạch năm có **số thứ tự (一つ目・二つ目)** với cấp trên Suzuki, xác nhận thông tin chuyên ngành bằng **〜ということですね**, hỏi lại lễ phép từ chuyên ngành visa **〜というのは?** (転職・業種・転籍・育成就労・短期滞在), trao đổi về cơ chế **技能検定3級 → 良好修了 → 免除 SSW1試験**, xin ý kiến đàn chị bằng **ご意見を伺いたいのですが**, và mời gia đình sang Nhật qua **短期滞在ビザ + 招待状 + 在留カードのコピー**. Đồng thời học cách coach kohai bằng **やさしい日本語** — câu ngắn, một câu một thông tin, kèm cử chỉ — và thấm câu của 木村先輩: **仲間** đôi khi quan trọng hơn lương.

> Từ vựng & mẫu câu chương này: 3年目・最終年・特定技能1号・育成就労・技能検定3級・良好修了・免除・転職・転籍・業種・申請書類・納税証明書・住民票・在留カード・招待状・短期滞在ビザ・指導担当・後輩・仲間・やさしい日本語・選択肢・〜というのは・〜ということですね・ご意見を伺いたいのですが・一つ目・二つ目・報連相

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 年度 | ねんど | NIÊN ĐỘ | năm tài khoá |
| 変化 | へんか | BIẾN HOÁ | thay đổi |
| 最終年 | さいしゅうねん | TỐI CHUNG NIÊN | năm cuối |
| 特定技能1号 | とくていぎのういちごう | ĐẶC ĐỊNH KỸ NĂNG NHẤT HIỆU | kỹ năng đặc định số 1 (SSW1) |
| 勤務 | きんむ | CẦN VỤ | làm việc, công tác |
| 育成就労 | いくせいしゅうろう | DỤC THÀNH TỰU LAO | chế độ đào tạo lao động (Ikusei) |
| 新人 | しんじん | TÂN NHÂN | người mới |
| 指導担当 | しどうたんとう | CHỈ ĐẠO ĐẢM ĐƯƠNG | người phụ trách hướng dẫn |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | báo cáo - liên lạc - bàn bạc |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 承知 | しょうち | THỪA TRI | hiểu, rõ ý |
| 挨拶 | あいさつ | ÁI TÁT | chào hỏi |
| 道具 | どうぐ | ĐẠO CỤ | dụng cụ |
| 漢語 | かんご | HÁN NGỮ | từ Hán |
| 包丁 | ほうちょう | BAO ĐINH | dao bếp |
| 新年度 | しんねんど | TÂN NIÊN ĐỘ | năm tài khoá mới |
| 在留資格 | ざいりゅうしかく | TẠI LƯU TƯ CÁCH | tư cách lưu trú |
| 家族滞在 | かぞくたいざい | GIA TỘC TRỆ TẠI | lưu trú gia đình |
| 申請 | しんせい | THÂN THỈNH | nộp đơn, làm hồ sơ |
| 遠慮 | えんりょ | VIỄN LỰ | ngại, e ngại |
| 技能検定 | ぎのうけんてい | KỸ NĂNG KIỂM ĐỊNH | kỳ thi đánh giá tay nghề |
| 良好修了 | りょうこうしゅうりょう | LƯƠNG HẢO TU LIỄU | hoàn thành tốt |
| 免除 | めんじょ | MIỄN TRỪ | miễn (thi) |
| 合格証明書 | ごうかくしょうめいしょ | HỢP CÁCH CHỨNG MINH THƯ | giấy chứng nhận đậu |
| 整理 | せいり | CHỈNH LÝ | sắp xếp |
| 転職 | てんしょく | CHUYỂN CHỨC | chuyển việc |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 業種 | ぎょうしゅ | NGHIỆP CHỦNG | ngành nghề |
| 食品製造業 | しょくひんせいぞうぎょう | THỰC PHẨM CHẾ TẠO NGHIỆP | ngành chế biến thực phẩm |
| 他社 | たしゃ | THA XÃ | công ty khác |
| 給料 | きゅうりょう | CẤP LIỆU | lương |
| 勤務地 | きんむち | CẦN VỤ ĐỊA | nơi làm việc |
| 傾向 | けいこう | KHUYNH HƯỚNG | xu hướng |
| 家賃 | やちん | GIA THUÊ | tiền thuê nhà |
| 食品衛生責任者 | しょくひんえいせいせきにんしゃ | THỰC PHẨM VỆ SINH TRÁCH NHIỆM GIẢ | người phụ trách vệ sinh thực phẩm |
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
| 確認事項 | かくにんじこう | XÁC NHẬN SỰ HẠNG | hạng mục cần xác nhận |
| 判断 | はんだん | PHÁN ĐOÁN | quyết định, phán đoán |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000002, 800000013, NULL, 'markdown_book', 'T2. Hoa nhận kohai Trang — vai trò sempai bậc 2 (チャンさん到着)', '# Sách thực tập sinh thực phẩm · T2. Hoa nhận kohai Trang — vai trò sempai bậc 2 (チャンさん到着)

> **Mục tiêu nhân vật:** Hoa (thực tập sinh năm 3 tại nhà máy thực phẩm Saitama) hướng dẫn Mai cách đón đàn em Trang mới sang. Học các mẫu hội thoại tiếng Nhật khi làm sempai bậc 2: coach đàn em cách dùng やさしい日本語 (câu ngắn + nói chậm), đón kohai ở sân bay và tự giới thiệu, xác nhận thông tin trên xe (〜ということですね), hỏi lại lễ phép khi chưa hiểu (〜というのは？), quan sát đàn anh sửa lỗi quy trình bảo hộ, chào hỏi 工場長 và 先輩 khi đưa kohai vào nhà máy lần đầu.

---

## Bối cảnh

Ngày 15 tháng 5 năm 2028. Trang sang Nhật theo visa 育成就労 (Ikusei Shuurou), vào cùng nhà máy thực phẩm với Hoa và Mai ở Saitama. Hoa đã là thực tập sinh năm 3, lần đầu đứng ở vai sempai bậc 2 — không trực tiếp dạy kohai mới mà coach Mai (năm 2) cách đón và dạy lại Trang. Trình độ tiếng Nhật của Hoa N3, Mai N4, Trang N5 mới đỗ. Chương này tập trung các mẫu câu sempai dùng khi đón kohai và truyền nghề: chỉ dẫn ngắn gọn, hỏi lại - xác nhận, sửa lỗi quy trình mà không làm kohai xấu hổ.

---

## Tình huống 1 — Ký túc · 1 tuần trước, 21:00, Hoa coach Mai cách đón kohai

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>来週<rt>らいしゅう</rt></ruby>チャンさんを<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>きますね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>しましょう。<br>*(Mai-san, tuần sau mình đi đón Trang nhé. Cùng chuẩn bị nào.)* |
| Mai | はい... <ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えるのは<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Vâng... em hơi căng thẳng. Lần đầu đón đàn em.)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>もマイさんを<ruby>同<rt>おな</rt></ruby>じように<ruby>迎<rt>むか</rt></ruby>えました。<ruby>覚<rt>おぼ</rt></ruby>えていますか？<br>*(Không sao. 1 năm trước chị cũng đón em y như vậy. Em còn nhớ không?)* |
| Mai | はい、もちろん<ruby>覚<rt>おぼ</rt></ruby>えています。コツは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Vâng, đương nhiên em nhớ. Bí quyết là gì ạ?)* |
| Hoa | <ruby>笑顔<rt>えがお</rt></ruby>と「やさしい<ruby>日本語<rt>にほんご</rt></ruby>」です。<ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>でゆっくり<ruby>話<rt>はな</rt></ruby>します。<br>*(Nụ cười và "tiếng Nhật dễ". Câu ngắn, nói chậm.)* |
| Mai | やさしい<ruby>日本語<rt>にほんご</rt></ruby>...というのは？<br>*(Yasashii nihongo... nghĩa là gì ạ?)* |
| Hoa | <ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わないで、N5レベルの<ruby>人<rt>ひと</rt></ruby>にも<ruby>分<rt>わ</rt></ruby>かる<ruby>日本語<rt>にほんご</rt></ruby>です。<ruby>鈴木<rt>すずき</rt></ruby>さんが<ruby>私<rt>わたし</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Là tiếng Nhật không dùng từ khó, người trình độ N5 cũng hiểu. Anh Suzuki đã dạy chị.)* |
| Mai | なるほど。<ruby>看板<rt>かんばん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>持<rt>も</rt></ruby>ちますか？<br>*(Ra vậy. Bảng tên em cầm ạ?)* |
| Hoa | はい、マイさんが<ruby>持<rt>も</rt></ruby>ってください。「チャンさん」とカタカナで<ruby>書<rt>か</rt></ruby>きます。<ruby>分<rt>わ</rt></ruby>かりやすいですから。<br>*(Vâng, em cầm. Viết "チャンさん" bằng katakana. Cho dễ nhìn.)* |
| Mai | はい！<ruby>明日<rt>あした</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Vâng! Mai em luyện trước.)* |

---

## Tình huống 2 — Sân bay Narita · 6:45, Mai đón Trang lần đầu

| Vai | Lời thoại |
|---|---|
| Mai | (cầm bảng "チャンさん", đứng cạnh Hoa) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>緊張<rt>きんちょう</rt></ruby>します...<br>*(Chị Hoa, em hồi hộp quá...)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>がそばにいます。<ruby>笑顔<rt>えがお</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れないで。<br>*(Không sao. Có chị bên cạnh. Đừng quên nụ cười.)* |
| Trang | (kéo vali ra, nhìn thấy bảng tên) あ、マイさん！ホアさん！<br>*(A, chị Mai! Chị Hoa!)* |
| Mai | チャンさんですね？<ruby>初<rt>はじ</rt></ruby>めまして。マイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Là em Trang đúng không? Rất hân hạnh. Chị tên Mai. Mong em chỉ giáo.)* |
| Trang | はじめまして！グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします！<br>*(Rất hân hạnh! Em tên là Nguyễn Thị Trang. Mong các chị giúp đỡ ạ!)* |
| Hoa | <ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Đường dài vất vả rồi. Em có khoẻ không?)* |
| Trang | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です！<ruby>飛行機<rt>ひこうき</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてでしたが、<ruby>楽<rt>たの</rt></ruby>しかったです。<br>*(Vâng, em khoẻ ạ! Lần đầu đi máy bay nhưng vui ạ.)* |
| Mai | お<ruby>姉<rt>ねえ</rt></ruby>さんって<ruby>呼<rt>よ</rt></ruby>んでいいですよ。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>外<rt>そと</rt></ruby>では。<br>*(Em gọi "chị" cũng được. Khi ở ngoài công ty.)* |
| Trang | マイ<ruby>姉<rt>ねえ</rt></ruby>さん！ホア<ruby>姉<rt>ねえ</rt></ruby>さん！ありがとうございます！<br>*(Chị Mai! Chị Hoa! Em cảm ơn ạ!)* |
| Hoa | これから<ruby>車<rt>くるま</rt></ruby>で<ruby>埼玉<rt>さいたま</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>まで<ruby>1<rt>いち</rt></ruby><ruby>時間半<rt>じかんはん</rt></ruby>ぐらいかかります。<br>*(Bây giờ đi xe về ký túc ở Saitama mất khoảng 1 tiếng rưỡi.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Trên xe về Saitama · 7:30, xác nhận thông tin + hỏi lại

| Vai | Lời thoại |
|---|---|
| Mai | チャンさん、<ruby>埼玉県<rt>さいたまけん</rt></ruby>は<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>北<rt>きた</rt></ruby>にあります。<ruby>工場<rt>こうじょう</rt></ruby>は<ruby>川口市<rt>かわぐちし</rt></ruby>です。<br>*(Trang ơi, tỉnh Saitama ở phía bắc Tokyo. Nhà máy ở thành phố Kawaguchi.)* |
| Trang | <ruby>川口市<rt>かわぐちし</rt></ruby>...ですね。メモします。<br>*(Thành phố Kawaguchi... ạ. Em ghi lại.)* |
| Hoa | <ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>食品<rt>しょくひん</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>です。<ruby>主<rt>おも</rt></ruby>にお<ruby>弁当<rt>べんとう</rt></ruby>の<ruby>惣菜<rt>そうざい</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っています。<br>*(Công ty mình là nhà máy thực phẩm. Chủ yếu làm món ăn cho cơm hộp.)* |
| Trang | すみません、「<ruby>惣菜<rt>そうざい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi chị, "souzai" nghĩa là gì ạ?)* |
| Hoa | お<ruby>弁当<rt>べんとう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っているおかずのことです。<ruby>唐揚<rt>からあ</rt></ruby>げ、<ruby>卵焼<rt>たまごや</rt></ruby>き、サラダなど。<br>*(Là các món phụ trong cơm hộp. Như gà chiên, trứng cuộn, salad...)* |
| Trang | なるほど、お<ruby>弁当<rt>べんとう</rt></ruby>のおかずを<ruby>作<rt>つく</rt></ruby>る<ruby>工場<rt>こうじょう</rt></ruby>ということですね。<br>*(Em hiểu rồi, tức là nhà máy làm món ăn kèm cho cơm hộp đúng không ạ.)* |
| Mai | そうです。<ruby>毎日<rt>まいにち</rt></ruby>コンビニとスーパーに<ruby>納品<rt>のうひん</rt></ruby>します。<br>*(Đúng. Hàng ngày giao cho cửa hàng tiện lợi và siêu thị.)* |
| Trang | <ruby>納品<rt>のうひん</rt></ruby>...というのは？<br>*(Nouhin... nghĩa là gì ạ?)* |
| Mai | <ruby>商品<rt>しょうひん</rt></ruby>をお<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>届<rt>とど</rt></ruby>けることです。<br>*(Là việc giao sản phẩm đến khách hàng.)* |
| Trang | <ruby>商品<rt>しょうひん</rt></ruby>を<ruby>届<rt>とど</rt></ruby>ける、ということですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Giao hàng cho khách, đúng không ạ. Em hiểu rồi.)* |
| Hoa | (nói nhỏ với Mai bằng tiếng Việt) Em thấy không, Trang dùng "〜ということですね" để xác nhận giống chị dạy em năm ngoái. |
| Mai | (nhỏ giọng đáp lại) Vâng chị, em thấy rồi. |

---

## Tình huống 4 — Trên xe gần Kawaguchi · 8:30, Hoa giải thích vai trò 3 người

| Vai | Lời thoại |
|---|---|
| Hoa | チャンさん、<ruby>当社<rt>とうしゃ</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>になります。<ruby>私<rt>わたし</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>、マイさんが<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>、チャンさんが<ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>です。<br>*(Trang ơi, công ty có 3 người Việt rồi. Chị năm 3, Mai năm 2, em năm 1.)* |
| Trang | わー、<ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby>ですね！<br>*(Wow, 3 thế hệ luôn ạ!)* |
| Hoa | はい。<ruby>仕事<rt>しごと</rt></ruby>では、マイさんがチャンさんの<ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>指導者<rt>しどうしゃ</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>はサポートします。<br>*(Vâng. Trong công việc, Mai là người trực tiếp hướng dẫn em. Chị hỗ trợ.)* |
| Trang | <ruby>指導者<rt>しどうしゃ</rt></ruby>...というのは？<br>*(Shidousha... nghĩa là gì ạ?)* |
| Mai | <ruby>教<rt>おし</rt></ruby>えてくれる<ruby>人<rt>ひと</rt></ruby>のことです。<ruby>仕事<rt>しごと</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えるトレーナー。<br>*(Là người dạy. Người huấn luyện công việc.)* |
| Trang | はい、マイ<ruby>姉<rt>ねえ</rt></ruby>さんがトレーナー、ホア<ruby>姉<rt>ねえ</rt></ruby>さんがサポート、ということですね。<br>*(Vâng, chị Mai trainer, chị Hoa hỗ trợ, đúng không ạ.)* |
| Hoa | そうです。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>遠慮<rt>えんりょ</rt></ruby>しないでね。<br>*(Đúng vậy. Có gì không hiểu phải hỏi. Đừng ngại nhé.)* |
| Trang | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Hoa | それから、<ruby>食品<rt>しょくひん</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>では「<ruby>衛生<rt>えいせい</rt></ruby>」が<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby>マイさんが<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えます。<br>*(Còn nữa, ở nhà máy thực phẩm "vệ sinh" là quan trọng nhất. Mai sẽ dạy em kỹ vào ngày mai.)* |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ nhớ kỹ.)* |

---

## Tình huống 5 — Ký túc · 10:30, gặp Putri người Indonesia

| Vai | Lời thoại |
|---|---|
| Putri | (mở cửa, vẫy tay) チャンさん！<ruby>初<rt>はじ</rt></ruby>めまして！プトゥリです！<br>*(Trang-san! Rất hân hạnh! Tôi là Putri!)* |
| Trang | (cúi đầu) はじめまして！グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh! Em tên là Nguyễn Thị Trang. Mong chị chỉ giáo.)* |
| Putri | これ、インドネシアのお<ruby>菓子<rt>かし</rt></ruby>です。<ruby>歓迎<rt>かんげい</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Đây, bánh Indonesia. Là tấm lòng chào đón.)* |
| Trang | わー、ありがとうございます！<br>*(Wow, em cảm ơn chị ạ!)* |
| Mai | プトゥリさんは<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>にも<ruby>同<rt>おな</rt></ruby>じことをしてくれました。<ruby>伝統<rt>でんとう</rt></ruby>です。<br>*(1 năm trước chị Putri cũng làm vậy với em. Là truyền thống.)* |
| Putri | <ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>は<ruby>4<rt>よ</rt></ruby><ruby>人<rt>にん</rt></ruby>になりますね。ベトナム<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>、インドネシア<ruby>1人<rt>ひとり</rt></ruby>。<br>*(Ký túc công ty thành 4 người rồi. Việt Nam 3, Indonesia 1.)* |
| Trang | <ruby>賑<rt>にぎ</rt></ruby>やかですね！<br>*(Vui nhộn quá ạ!)* |
| Hoa | これからよろしくね、チャンさん。<ruby>分<rt>わ</rt></ruby>からないことがあったら、<ruby>誰<rt>だれ</rt></ruby>にでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Từ giờ chỉ giáo nhé, Trang. Có gì không hiểu thì hỏi bất kỳ ai.)* |
| Trang | はい、ありがとうございます！<br>*(Vâng, em cảm ơn ạ!)* |

---

## Tình huống 6 — Phòng Trang · 11:00, Mai hướng dẫn quy định ký túc

| Vai | Lời thoại |
|---|---|
| Mai | チャンさん、ここがあなたの<ruby>部屋<rt>へや</rt></ruby>です。<ruby>一人部屋<rt>ひとりべや</rt></ruby>です。<br>*(Trang-san, đây là phòng em. Phòng một người.)* |
| Trang | わー、<ruby>広<rt>ひろ</rt></ruby>いです！<br>*(Wow, rộng quá ạ!)* |
| Mai | <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>いました。<ruby>寮<rt>りょう</rt></ruby>のルールを<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(1 năm trước em cũng nói y như vậy. Chị giải thích quy định ký túc nhé.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị ạ.)* |
| Mai | ゴミ<ruby>出<rt>だ</rt></ruby>しは<ruby>曜日<rt>ようび</rt></ruby>で<ruby>決<rt>き</rt></ruby>まっています。<ruby>燃<rt>も</rt></ruby>えるゴミは<ruby>月<rt>げつ</rt></ruby>と<ruby>木<rt>もく</rt></ruby>です。<br>*(Đổ rác phân theo thứ. Rác cháy được vào thứ Hai và thứ Năm.)* |
| Trang | すみません、「<ruby>燃<rt>も</rt></ruby>えるゴミ」というのは？<br>*(Xin lỗi chị, "moeru gomi" nghĩa là gì ạ?)* |
| Mai | <ruby>紙<rt>かみ</rt></ruby>とか<ruby>生<rt>なま</rt></ruby>ゴミとか、<ruby>火<rt>ひ</rt></ruby>で<ruby>燃<rt>も</rt></ruby>やせるゴミのことです。<br>*(Là giấy, rác hữu cơ — rác có thể đốt được.)* |
| Trang | なるほど、<ruby>火<rt>ひ</rt></ruby>で<ruby>燃<rt>も</rt></ruby>やせるゴミですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra vậy, rác đốt được ạ. Em hiểu rồi.)* |
| Mai | <ruby>表<rt>ひょう</rt></ruby>を<ruby>冷蔵庫<rt>れいぞうこ</rt></ruby>に<ruby>貼<rt>は</rt></ruby>っておきます。<ruby>分<rt>わ</rt></ruby>からなくなったら<ruby>見<rt>み</rt></ruby>てください。<br>*(Chị dán bảng lên tủ lạnh. Quên thì xem nhé.)* |
| Trang | はい、ありがとうございます！<br>*(Vâng, em cảm ơn chị!)* |
| Mai | あと、<ruby>洗濯機<rt>せんたくき</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>にあります。<ruby>夜<rt>よる</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>使<rt>つか</rt></ruby>えません。<ruby>音<rt>おと</rt></ruby>がうるさいですから。<br>*(Còn nữa, máy giặt ở tầng 1. Sau 10 giờ tối không dùng được. Vì tiếng ồn.)* |
| Trang | はい、<ruby>了解<rt>りょうかい</rt></ruby>しました！<br>*(Vâng, em hiểu rồi ạ!)* |
| Hoa | (đứng quan sát ngoài hành lang, mỉm cười)<br>*(quan sát từ ngoài hành lang)* |

---

## Tình huống 7 — Hành lang · 11:30, Hoa khen Mai cách dạy

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がとても<ruby>上手<rt>じょうず</rt></ruby>でした。<br>*(Mai-san, cách dạy giỏi lắm.)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>ですか？<br>*(Thật ạ?)* |
| Hoa | はい。<ruby>笑顔<rt>えがお</rt></ruby>と<ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>と、<ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>はすぐ<ruby>説明<rt>せつめい</rt></ruby>。<ruby>完璧<rt>かんぺき</rt></ruby>でした。<br>*(Vâng. Cười, câu ngắn, từ khó giải thích ngay. Hoàn hảo.)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さんから<ruby>習<rt>なら</rt></ruby>った<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(Đó là cách em học từ chị Hoa.)* |
| Hoa | <ruby>私<rt>わたし</rt></ruby>も<ruby>鈴木<rt>すずき</rt></ruby>さんから<ruby>習<rt>なら</rt></ruby>いました。<ruby>恩返<rt>おんがえ</rt></ruby>しの<ruby>連鎖<rt>れんさ</rt></ruby>ですね。<br>*(Chị cũng học từ anh Suzuki. Là chuỗi đáp ơn nhỉ.)* |
| Mai | <ruby>素敵<rt>すてき</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Lời đẹp quá.)* |
| Hoa | これからもチャンさんを<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てましょう。<br>*(Từ giờ cùng nuôi dạy Trang chu đáo nhé.)* |
| Mai | はい！<br>*(Vâng!)* |

---

## Tình huống 8 — Bếp ký túc · 12:30, nấu cơm chung 4 người

| Vai | Lời thoại |
|---|---|
| Trang | わー、<ruby>4<rt>よ</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>料理<rt>りょうり</rt></ruby>するんですか？<br>*(Wow, 4 người cùng nấu ạ?)* |
| Putri | はい。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>の<ruby>伝統<rt>でんとう</rt></ruby>です。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>は<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>ります。<br>*(Vâng. Truyền thống ký túc công ty. Mỗi thứ Bảy đều nấu cùng nhau.)* |
| Trang | チャンは<ruby>料理<rt>りょうり</rt></ruby>が<ruby>大好<rt>だいす</rt></ruby>きです！<ruby>家<rt>いえ</rt></ruby>でも<ruby>毎日<rt>まいにち</rt></ruby><ruby>作<rt>つく</rt></ruby>っていました。<br>*(Trang thích nấu ăn lắm! Ở nhà ngày nào cũng nấu ạ.)* |
| Mai | チャンさんはダナンの<ruby>料理<rt>りょうり</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>ですか？<br>*(Trang giỏi món Đà Nẵng phải không?)* |
| Trang | はい！ミークアンと<ruby>麺<rt>めん</rt></ruby><ruby>料理<rt>りょうり</rt></ruby>がいろいろ<ruby>作<rt>つく</rt></ruby>れます。<br>*(Vâng! Mì Quảng và các món mì khác em đều làm được.)* |
| Hoa | わー、<ruby>食<rt>た</rt></ruby>べてみたいです！<br>*(Wow, chị muốn ăn thử!)* |
| Putri | <ruby>来週<rt>らいしゅう</rt></ruby>はチャンさんが<ruby>作<rt>つく</rt></ruby>りますか？<br>*(Tuần sau Trang nấu nhé?)* |
| Trang | はい！<ruby>必<rt>かなら</rt></ruby>ず<ruby>作<rt>つく</rt></ruby>ります！<br>*(Vâng! Em nhất định sẽ nấu!)* |
| Mai | じゃあローテーションを<ruby>決<rt>き</rt></ruby>めましょう。<ruby>今週<rt>こんしゅう</rt></ruby>はプトゥリさんのインドネシア<ruby>料理<rt>りょうり</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby>はチャンさんのダナン<ruby>料理<rt>りょうり</rt></ruby>。<br>*(Vậy mình quyết vòng. Tuần này món Indonesia của chị Putri, tuần sau món Đà Nẵng của Trang.)* |
| Hoa | その<ruby>次<rt>つぎ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>のハノイ<ruby>料理<rt>りょうり</rt></ruby>、その<ruby>次<rt>つぎ</rt></ruby>はマイさんのホーチミン<ruby>料理<rt>りょうり</rt></ruby>。<br>*(Tiếp theo là món Hà Nội của chị, rồi món Sài Gòn của Mai.)* |
| Trang | <ruby>素敵<rt>すてき</rt></ruby>！<br>*(Tuyệt vời!)* |

---

## Tình huống 9 — Cổng nhà máy · Sáng hôm sau 7:30, Trang vào nhà máy lần đầu

| Vai | Lời thoại |
|---|---|
| Mai | チャンさん、<ruby>緊張<rt>きんちょう</rt></ruby>していますか？<br>*(Trang-san, có căng thẳng không?)* |
| Trang | <ruby>少<rt>すこ</rt></ruby>しです...<br>*(Một chút ạ...)* |
| Mai | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じでした。<ruby>今日<rt>きょう</rt></ruby>はホア<ruby>姉<rt>ねえ</rt></ruby>さんから<ruby>習<rt>なら</rt></ruby>った<ruby>方法<rt>ほうほう</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えますね。<br>*(Không sao. 1 năm trước chị cũng vậy. Hôm nay chị dạy em theo cách học từ chị Hoa nhé.)* |
| Trang | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị giúp đỡ ạ.)* |
| Hoa | <ruby>挨拶<rt>あいさつ</rt></ruby>はちゃんと<ruby>練習<rt>れんしゅう</rt></ruby>しましたか？<br>*(Câu chào đã luyện kỹ chưa?)* |
| Trang | はい。「お<ruby>世話<rt>せわ</rt></ruby>になります」と「よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」です。<br>*(Vâng. "Em xin được giúp đỡ" và "Mong các anh chị chỉ giáo".)* |
| Hoa | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げるタイミングも<ruby>忘<rt>わす</rt></ruby>れないで。<br>*(Tuyệt vời. Đừng quên thời điểm cúi đầu.)* |
| Trang | はい！<br>*(Vâng!)* |

---

## Tình huống 10 — Phòng tiếp khách · 8:00, chào hỏi 田中工場長

| Vai | Lời thoại |
|---|---|
| Tanaka | チャンさん、<ruby>当社<rt>とうしゃ</rt></ruby>へようこそ。<ruby>田中<rt>たなか</rt></ruby>です。<br>*(Trang-san, hoan nghênh đến công ty. Tôi là Tanaka.)* |
| Trang | (cúi đầu thật sâu) お<ruby>世話<rt>せわ</rt></ruby>になります。グエン・ティ・チャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu sâu. Em xin được chỉ giáo. Em tên là Nguyễn Thị Trang. Mong ông giúp đỡ.)* |
| Tanaka | <ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Đường dài vất vả rồi. Có khoẻ không?)* |
| Trang | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ありがとうございます。<br>*(Vâng, em khoẻ ạ. Em cảm ơn ông.)* |
| Tanaka | あなたで<ruby>当社<rt>とうしゃ</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>人目<rt>にんめ</rt></ruby>です。マイさんが<ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>指導者<rt>しどうしゃ</rt></ruby>、ホアさんがサポートします。<br>*(Em là người Việt thứ 3 của công ty. Mai-san là người hướng dẫn trực tiếp, Hoa-san hỗ trợ.)* |
| Trang | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Tanaka | <ruby>当社<rt>とうしゃ</rt></ruby>では「<ruby>衛生<rt>えいせい</rt></ruby>」と「<ruby>報連相<rt>ほうれんそう</rt></ruby>」が<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Ở công ty mình "vệ sinh" và "報連相" rất quan trọng. Có gì không hiểu phải hỏi.)* |
| Trang | すみません、「<ruby>報連相<rt>ほうれんそう</rt></ruby>」というのは？<br>*(Xin lỗi, "報連相" nghĩa là gì ạ?)* |
| Tanaka | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>使<rt>つか</rt></ruby>います。<br>*(Là viết tắt của báo cáo - liên lạc - bàn bạc. Hàng ngày đều dùng.)* |
| Trang | <ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>ですね。<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Báo cáo, liên lạc, bàn bạc ạ. Em nhất định sẽ nhớ.)* |
| Tanaka | <ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Cố gắng nhé.)* |

---

## Tình huống 11 — Khu sản xuất · 8:30, chào hỏi 先輩 đoàn cũ

| Vai | Lời thoại |
|---|---|
| Satou | チャンさん、<ruby>初<rt>はじ</rt></ruby>めまして。<ruby>佐藤<rt>さとう</rt></ruby>です。よろしく。<br>*(Trang-san, rất hân hạnh. Tôi là Satou. Mong em chỉ giáo.)* |
| Trang | (cúi đầu) <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Anh Satou, em mong anh chỉ giáo ạ.)* |
| Yamada | <ruby>明<rt>あか</rt></ruby>るい<ruby>子<rt>こ</rt></ruby>ですね！<ruby>当社<rt>とうしゃ</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いそうです。<br>*(Cô bé tươi tắn nhỉ! Trông hợp với công ty đấy.)* |
| Trang | ありがとうございます、<ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>！<br>*(Em cảm ơn anh, anh Yamada!)* |
| Kimura | チャンさん、<ruby>食品<rt>しょくひん</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>では<ruby>衛生<rt>えいせい</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>です。<ruby>気<rt>き</rt></ruby>をつけてくださいね。<br>*(Trang-san, ở nhà máy thực phẩm vệ sinh là mạng sống. Cẩn thận nhé.)* |
| Trang | はい、<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, chị Kimura, em nhất định sẽ tuân thủ.)* |
| Mai | (thì thầm với Hoa) チャンさん、すごく<ruby>明<rt>あか</rt></ruby>るいですね。<ruby>私<rt>わたし</rt></ruby>とは<ruby>反対<rt>はんたい</rt></ruby>。<br>*(Trang tươi tắn quá. Trái ngược với em.)* |
| Hoa | <ruby>反対<rt>はんたい</rt></ruby>の<ruby>性格<rt>せいかく</rt></ruby>はいいバランスです。マイさんは<ruby>慎重<rt>しんちょう</rt></ruby>、チャンさんは<ruby>明<rt>あか</rt></ruby>るい。<br>*(Tính cách trái nhau là cân bằng tốt. Mai cẩn trọng, Trang tươi tắn.)* |

---

## Tình huống 12 — Phòng thay đồ · 9:00, Mai dạy quy trình bảo hộ 10 bước

| Vai | Lời thoại |
|---|---|
| Mai | チャンさん、<ruby>衛生<rt>えいせい</rt></ruby>のため、<ruby>10<rt>じゅう</rt></ruby>のステップを<ruby>覚<rt>おぼ</rt></ruby>えてください。<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Trang-san, vì vệ sinh, hãy nhớ 10 bước. Thứ tự rất quan trọng.)* |
| Trang | はい、お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Vâng, mời chị ạ!)* |
| Mai | <ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>。<ruby>靴<rt>くつ</rt></ruby>を<ruby>専用<rt>せんよう</rt></ruby>の<ruby>長靴<rt>ながぐつ</rt></ruby>に<ruby>変<rt>か</rt></ruby>えます。<br>*(Bước 1. Đổi giày sang ủng chuyên dụng.)* |
| Trang | はい！<br>*(Vâng!)* |
| Mai | <ruby>2<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>。<ruby>粘着<rt>ねんちゃく</rt></ruby>マットの<ruby>上<rt>うえ</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>きます。ホコリを<ruby>取<rt>と</rt></ruby>るためです。<br>*(Bước 2. Đi trên thảm dính. Để gỡ bụi.)* |
| Trang | <ruby>粘着<rt>ねんちゃく</rt></ruby>マット...というのは？<br>*(Nenchaku matto... nghĩa là gì ạ?)* |
| Mai | くっつくマットです。<ruby>足<rt>あし</rt></ruby>のホコリがマットにくっつきます。<br>*(Là thảm dính. Bụi ở chân sẽ dính vào thảm.)* |
| Trang | なるほど。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra vậy. Em hiểu rồi.)* |
| Mai | <ruby>3<rt>さん</rt></ruby>つ<ruby>目<rt>め</rt></ruby>。<ruby>白衣<rt>はくい</rt></ruby>を<ruby>着<rt>き</rt></ruby>ます。<ruby>4<rt>よ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>。<ruby>帽子<rt>ぼうし</rt></ruby>を<ruby>被<rt>かぶ</rt></ruby>ります。<ruby>髪<rt>かみ</rt></ruby>を<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<br>*(Bước 3. Mặc áo trắng. Bước 4. Đội mũ. Gom hết tóc vào trong.)* |
| Trang | はい！<br>*(Vâng!)* |
| Mai | ゆっくりで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>急<rt>いそ</rt></ruby>がないで。<br>*(Chậm cũng được. Đừng vội.)* |
| Trang | はい、ゆっくりやります！<br>*(Vâng, em làm từ từ!)* |
| Hoa | (đứng xa quan sát, gật đầu với Kimura đi qua)<br>*(quan sát từ xa, gật đầu hài lòng với Kimura đi ngang)* |

---

## Tình huống 13 — Phòng thay đồ · 9:15, Trang sai bước — Mai sửa nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Trang | (đeo găng tay ngay sau khi mặc tạp dề, trước khi rửa tay)<br>*(định đeo găng ngay sau tạp dề)* |
| Mai | あ、ちょっと<ruby>待<rt>ま</rt></ruby>って、チャンさん。<br>*(À, chờ chút, Trang-san.)* |
| Trang | え？<ruby>間違<rt>まちが</rt></ruby>えましたか？<br>*(Ơ? Em sai ạ?)* |
| Mai | <ruby>手袋<rt>てぶくろ</rt></ruby>は<ruby>最後<rt>さいご</rt></ruby>のステップです。<ruby>先<rt>さき</rt></ruby>に<ruby>手<rt>て</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>って、<ruby>消毒<rt>しょうどく</rt></ruby>してから<ruby>手袋<rt>てぶくろ</rt></ruby>です。<br>*(Găng tay là bước cuối. Phải rửa tay, sát khuẩn trước rồi mới đeo găng.)* |
| Trang | あ、ごめんなさい！<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>間違<rt>まちが</rt></ruby>えました。<br>*(A, em xin lỗi! Em sai thứ tự ạ.)* |
| Mai | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>間違<rt>まちが</rt></ruby>えます。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>間違<rt>まちが</rt></ruby>いをしました。<br>*(Không sao. Ai cũng sai lúc đầu. 1 năm trước chị cũng sai y như vậy.)* |
| Trang | <ruby>本当<rt>ほんとう</rt></ruby>ですか？<br>*(Thật ạ?)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>です。ホア<ruby>姉<rt>ねえ</rt></ruby>さんも<ruby>同<rt>おな</rt></ruby>じように<ruby>優<rt>やさ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Thật. Chị Hoa cũng dạy lại em y như vậy, nhẹ nhàng.)* |
| Hoa | (đi qua, dừng lại, mỉm cười) チャンさん、<ruby>間違<rt>まちが</rt></ruby>えても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>大切<rt>たいせつ</rt></ruby>なのは、<ruby>間違<rt>まちが</rt></ruby>いに<ruby>気<rt>き</rt></ruby>づいて<ruby>直<rt>なお</rt></ruby>すことです。<br>*(Trang-san, sai cũng không sao. Điều quan trọng là nhận ra cái sai và sửa.)* |
| Trang | はい、ありがとうございます！もう<ruby>一度<rt>いちど</rt></ruby>やります。<br>*(Vâng, em cảm ơn các chị! Em làm lại.)* |
| Mai | はい、<ruby>最初<rt>さいしょ</rt></ruby>から。<ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>靴<rt>くつ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えます。<br>*(Vâng, từ đầu nhé. Bước 1, đổi giày.)* |

---

## Tình huống 14 — Hành lang · 9:30, Kimura quan sát đàn anh và đàn em

| Vai | Lời thoại |
|---|---|
| Kimura | (kéo Hoa ra hành lang) ホアさん、ちょっといいですか？<br>*(Hoa-san, có chút thời gian không?)* |
| Hoa | はい、<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Vâng, chị Kimura, có chuyện gì ạ?)* |
| Kimura | マイさんの<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>、とても<ruby>上手<rt>じょうず</rt></ruby>になりましたね。<br>*(Cách dạy của Mai giỏi hơn nhiều rồi.)* |
| Hoa | はい。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng. Em mừng lắm.)* |
| Kimura | ホアさんの<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がマイさんに、マイさんの<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がチャンさんに<ruby>伝<rt>つた</rt></ruby>わっていますね。<br>*(Cách Hoa-san dạy truyền đến Mai-san, cách Mai-san dạy truyền đến Trang-san nhỉ.)* |
| Hoa | <ruby>連鎖<rt>れんさ</rt></ruby>です。<br>*(Là chuỗi ạ.)* |
| Kimura | はい、<ruby>美<rt>うつく</rt></ruby>しい<ruby>連鎖<rt>れんさ</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>伝統<rt>でんとう</rt></ruby>になりますね。<br>*(Vâng, chuỗi đẹp. Sẽ thành truyền thống của công ty.)* |
| Hoa | ありがとうございます。<br>*(Em cảm ơn chị ạ.)* |

---

## Tình huống 15 — Ký túc · 21:00, Hoa + Mai + Trang nói tiếng Việt cuối ngày

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP trong ngày.

| Vai | Lời thoại |
|---|---|
| Trang | (tiếng Việt) Hai chị ơi, ngày đầu em mệt quá nhưng vui quá! |
| Mai | (tiếng Việt) Chị biết. Một năm trước chị cũng y như vậy. Hôm nay em làm tốt đấy. |
| Hoa | (tiếng Việt) Trang, em hỏi lại nhiều lắm — như "souzai là gì", "nouhin là gì", "shidousha là gì". Tốt đấy, đừng ngại hỏi. |
| Trang | (tiếng Việt) Vâng chị. Em sợ hỏi nhiều bị chê dốt. |
| Hoa | (tiếng Việt) Không. Ở Nhật, hỏi rồi xác nhận lại bằng "〜ということですね" mới là người chuyên nghiệp. Im lặng mới bị chê. |
| Mai | (tiếng Việt) Em nhớ chị Hoa dạy chị câu này: "Không hiểu mà giả vờ hiểu — đến lúc làm sai, hậu quả to hơn". |
| Trang | (tiếng Việt) Em ghi vào sổ. À chị, "報連相" hôm nay ông Tanaka nhắc, là báo cáo - liên lạc - bàn bạc đúng không ạ? |
| Hoa | (tiếng Việt) Đúng rồi. Ba việc đó mỗi ngày đều phải làm. Còn "衛生" là vệ sinh, từ quan trọng nhất nhà máy thực phẩm. |
| Trang | (tiếng Việt) Hôm nay em sai bước đeo găng — em xấu hổ ghê. |
| Mai | (tiếng Việt) Không có gì xấu hổ. Ai cũng sai. Chị Kimura cũng từng sai. Quan trọng là biết sai rồi sửa. |
| Trang | (tiếng Việt) Vâng chị. Em mong 3 năm tới được học nhiều như hai chị. |
| Hoa | (tiếng Việt) Thì học thôi. Mỗi ngày một chút. Mai 7 giờ rưỡi xuống sảnh nhé. Ngủ ngon. |
| Trang | (tiếng Việt) Vâng, ngủ ngon hai chị! |

---

## Đọng lại chương 2

Ngày đầu Trang đến, Hoa lần đầu đứng ở vai sempai bậc 2 — không trực tiếp dạy mà coach Mai cách đón và dạy lại đàn em. Các mẫu câu trọng tâm chương này: **đón kohai ở sân bay** (お疲れさまでした・〜と申します・よろしくお願いいたします), **xác nhận thông tin** (〜ということですね) và **hỏi lại lễ phép** khi gặp từ chuyên ngành (〜というのは？・意味を教えていただけますか), **giải thích bằng やさしい日本語** (câu ngắn + thay từ khó bằng cách diễn giải, vd 燃えるゴミ → 火で燃やせるゴミ), **chào hỏi 工場長 và 先輩 khi vào nhà máy lần đầu** (お世話になります・よろしくお願いいたします), và **sửa lỗi quy trình bảo hộ mà không làm kohai mất mặt** (誰でも最初は間違えます・大切なのは間違いに気づいて直すこと). Nhận ra nguyên tắc lớn: nghề thực phẩm trọng **衛生** đến từng bước quy trình, văn hoá công sở Nhật trọng **報連相**, và việc dạy nghề ở Nhật là **連鎖** — sempai truyền cho kohai, kohai trở thành sempai truyền tiếp cho lớp sau.

> Từ vựng & mẫu câu chương này: 到着・指導者・後輩・先輩・育成就労・惣菜・納品・衛生・報連相・報告・連絡・相談・燃えるゴミ・粘着マット・白衣・手袋・消毒・連鎖・やさしい日本語・お世話になります・〜と申します・〜というのは・〜ということですね・よろしくお願いいたします・お疲れさまでした・誰でも最初は間違えます

## Bí quyết chương

- **Sempai bậc 2**: Hoa không trực tiếp dạy Trang mà coach Mai cách dạy — kết quả nối tiếp "Hoa đã sẵn sàng làm trainer" trong các sách năm 3-năm 4.
- **Mai mirror Hoa**: chứng minh chuỗi dạy có hiệu quả qua 1 vòng (Suzuki → Hoa → Mai → Trang).
- **Multi-cultural**: 3 VN + 1 Indo trong ký túc — rotation bữa ăn = pattern "đa văn hoá tại nơi làm việc Nhật".
- **Contrast tính cách**: Trang vui vẻ năng động — Mai trầm cẩn trọng — balance team tốt, không phải clone nhau.

> *"Năm 1 mình được Suzuki đón. Năm 2 mình đón Mai. Năm 3 mình thấy Mai đón Trang — và mình coach Mai. Vòng tròn đẹp."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 到着 | とうちゃく | ĐÁO TRƯỚC | đến nơi |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng, hồi hộp |
| 後輩 | こうはい | HẬU BỐI | đàn em |
| 笑顔 | えがお | TIẾU NHAN | nụ cười |
| 看板 | かんばん | KHÁN BẢN | bảng hiệu |
| 長旅 | ながたび | TRƯỜNG LỮ | đường dài |
| 体調 | たいちょう | THỂ ĐIỀU | tình trạng sức khoẻ |
| 寮 | りょう | LIÊU | ký túc xá |
| 当社 | とうしゃ | ĐƯƠNG XÃ | công ty mình |
| 食品工場 | しょくひんこうじょう | THỰC PHẨM CÔNG TRƯỜNG | nhà máy thực phẩm |
| 弁当 | べんとう | BIỆN ĐƯƠNG | cơm hộp |
| 惣菜 | そうざい | TỔNG THÁI | món ăn kèm |
| 唐揚げ | からあげ | ĐƯỜNG DƯƠNG | gà chiên |
| 卵焼き | たまごやき | NOÃN THIÊU | trứng cuộn |
| 納品 | のうひん | NẠP PHẨM | giao hàng |
| 商品 | しょうひん | THƯƠNG PHẨM | sản phẩm |
| 指導者 | しどうしゃ | CHỈ ĐẠO GIẢ | người hướng dẫn |
| 衛生 | えいせい | VỆ SINH | vệ sinh |
| 歓迎 | かんげい | HOAN NGHÊNH | chào đón |
| 伝統 | でんとう | TRUYỀN THỐNG | truyền thống |
| 一人部屋 | ひとりべや | NHẤT NHÂN BỘ ỐC | phòng một người |
| 燃えるゴミ | もえるゴミ | NHIÊN — | rác đốt được |
| 生ゴミ | なまゴミ | SINH — | rác hữu cơ |
| 冷蔵庫 | れいぞうこ | LÃNH TÀNG KHỐ | tủ lạnh |
| 洗濯機 | せんたくき | TẨY ĐÁC CƠ | máy giặt |
| 以降 | いこう | DĨ HẬU | từ ... trở đi |
| 了解 | りょうかい | LIỄU GIẢI | hiểu rõ |
| 完璧 | かんぺき | HOÀN BÍCH | hoàn hảo |
| 方法 | ほうほう | PHƯƠNG PHÁP | phương pháp |
| 恩返し | おんがえし | ÂN PHẢN | đáp ơn |
| 連鎖 | れんさ | LIÊN TOẢ | chuỗi, dây chuyền |
| 麺料理 | めんりょうり | DIỆN LIỆU LÝ | món mì |
| 反対 | はんたい | PHẢN ĐỐI | trái ngược |
| 性格 | せいかく | TÍNH CÁCH | tính cách |
| 慎重 | しんちょう | THẬN TRỌNG | cẩn trọng |
| 専用 | せんよう | CHUYÊN DỤNG | chuyên dụng |
| 長靴 | ながぐつ | TRƯỜNG NGOA | ủng |
| 粘着マット | ねんちゃくマット | NIÊM TRƯỚC — | thảm dính |
| 白衣 | はくい | BẠCH Y | áo trắng (bảo hộ) |
| 帽子 | ぼうし | MẠO TỬ | mũ |
| 手袋 | てぶくろ | THỦ ĐẠI | găng tay |
| 消毒 | しょうどく | TIÊU ĐỘC | sát khuẩn |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | bàn bạc |
| 略 | りゃく | LƯỢC | viết tắt |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000003, 800000013, NULL, 'markdown_book', 'T3. Học N3 và chuẩn bị 技能検定 (二刀流の準備)', '# Sách thực tập sinh thực phẩm · T3. Học N3 và chuẩn bị 技能検定 (二刀流の準備)

> **Mục tiêu nhân vật:** Hoa (năm 3 tại Nhật, ngành chế biến thực phẩm) chạy song song hai mục tiêu thi cử. Học các mẫu hội thoại tiếng Nhật về **đặt mục tiêu học tập** (〜までに〜合格したい), **xin cấp trên giải thích kỳ thi chuyên ngành** (〜について教えてください), **hỏi lại từ chuyên ngành kỹ thuật** (〜というのは何ですか・〜という意味ですか), **quan sát đàn anh hướng dẫn đàn em rồi góp ý lễ phép** (1つだけアドバイスがあります), **nhờ đàn anh luyện thực hành cuối tuần** (〜の練習を手伝ってください), và **báo cáo tiến độ cho cấp trên** (順調です・〜%できました).

---

## Bối cảnh

Tháng 6 năm 2028. Hoa đang năm thứ 3 tại nhà máy chế biến thực phẩm Saitama Foods (埼玉フーズ) ở Saitama, trình độ tiếng Nhật N4 (đang ôn N3). Đặt hai mục tiêu cùng lúc: **技能検定3級 食品加工** (tháng 8) và **JLPT N3** (tháng 12). Cùng phòng có Mai (đàn em năm 2) đang dạy Trang (đàn em năm 1) về vệ sinh. Chương này tập trung mẫu câu giao tiếp dùng cho việc lập kế hoạch học tập, hỏi cấp trên/đàn anh về kỳ thi chuyên ngành, và quan sát rồi góp ý cách dạy đàn em.

---

## Tình huống 1 — Phòng Hoa · 21:00, học cách tự lập kế hoạch học tập bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Hoa | (mở sổ tay, viết kế hoạch) <ruby>今夜<rt>こんや</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>は、N3 の<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>一時間<rt>いちじかん</rt></ruby>と、<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>一時間<rt>いちじかん</rt></ruby>です。<br>*(Việc học tối nay là một tiếng ngữ pháp N3 và một tiếng luyện 技能検定.)* |
| Hoa | <ruby>計画<rt>けいかく</rt></ruby>は、<ruby>八月<rt>はちがつ</rt></ruby>までに<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>して、<ruby>十二月<rt>じゅうにがつ</rt></ruby>までに N3 に<ruby>合格<rt>ごうかく</rt></ruby>することです。<br>*(Kế hoạch là đến tháng 8 đậu 技能検定 cấp 3, và đến tháng 12 đậu N3.)* |
| Hoa | <ruby>毎日<rt>まいにち</rt></ruby><ruby>二時間<rt>にじかん</rt></ruby>ずつ<ruby>続<rt>つづ</rt></ruby>けます。<ruby>無理<rt>むり</rt></ruby>はしません。<br>*(Mỗi ngày học hai tiếng đều đặn. Không gắng quá sức.)* |
| Hoa | (gấp sổ, hít sâu) <ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Cố lên nào.)* |

---

## Tình huống 2 — Phòng anh Suzuki · 14:00, hỏi cấp trên về kỳ thi 技能検定

| Vai | Lời thoại |
|---|---|
| Hoa | (gõ cửa) <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Anh Suzuki, em xin phép. Anh dạy em về kỳ thi 技能検定 cấp 3 được không ạ?)* |
| Suzuki | はい、どうぞ。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>は、<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>の「<ruby>良好修了<rt>りょうこうしゅうりょう</rt></ruby>」を<ruby>証明<rt>しょうめい</rt></ruby>する<ruby>試験<rt>しけん</rt></ruby>です。<br>*(Vâng, vào đi. 技能検定 cấp 3 là kỳ thi chứng nhận "hoàn tất tốt" giai đoạn thực tập kỹ năng.)* |
| Hoa | すみません、「<ruby>良好修了<rt>りょうこうしゅうりょう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "良好修了" nghĩa là gì ạ?)* |
| Suzuki | <ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>を<ruby>真面目<rt>まじめ</rt></ruby>に、ちゃんと<ruby>終<rt>お</rt></ruby>えたという<ruby>意味<rt>いみ</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby>すれば、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>されます。<br>*(Là ý hoàn thành thực tập kỹ năng một cách nghiêm túc, trọn vẹn. Nếu đậu thì được miễn 技能試験 của Kỹ năng đặc định 1.)* |
| Hoa | <ruby>免除<rt>めんじょ</rt></ruby>...というのは、<ruby>受<rt>う</rt></ruby>けなくてもいいということですね?<br>*(Miễn... tức là không cần thi đúng không ạ?)* |
| Suzuki | そうです。<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>なら、<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>も<ruby>免除<rt>めんじょ</rt></ruby>になります。<br>*(Đúng vậy. Nếu cùng ngành nghề thì cả 日本語試験 cũng được miễn.)* |
| Hoa | <ruby>二<rt>ふた</rt></ruby>つも<ruby>免除<rt>めんじょ</rt></ruby>ですか。とても<ruby>大事<rt>だいじ</rt></ruby>な<ruby>試験<rt>しけん</rt></ruby>ですね。<br>*(Được miễn cả hai môn ạ. Đúng là kỳ thi rất quan trọng.)* |
| Suzuki | はい。<ruby>形式<rt>けいしき</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby>と<ruby>学科<rt>がっか</rt></ruby>の<ruby>二<rt>ふた</rt></ruby>つです。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>工場<rt>こうじょう</rt></ruby>で<ruby>行<rt>おこな</rt></ruby>います。<br>*(Vâng. Hình thức gồm hai phần: thực hành và lý thuyết. Thi tại nhà máy của công ty mình.)* |
| Hoa | <ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>受<rt>う</rt></ruby>けられるんですか? <ruby>試験官<rt>しけんかん</rt></ruby>はどなたですか?<br>*(Có thể thi ngay ở công ty mình ạ? Giám khảo là ai vậy ạ?)* |
| Suzuki | JITCO から<ruby>試験官<rt>しけんかん</rt></ruby>が<ruby>来<rt>き</rt></ruby>ます。<ruby>当日<rt>とうじつ</rt></ruby>は<ruby>外部<rt>がいぶ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>が<ruby>評価<rt>ひょうか</rt></ruby>します。<br>*(Giám khảo từ JITCO đến. Hôm thi là người ngoài đánh giá.)* |

---

## Tình huống 3 — Phòng anh Suzuki · 14:20, hỏi lại chi tiết về nội dung thi

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>実技<rt>じつぎ</rt></ruby>は<ruby>食品<rt>しょくひん</rt></ruby><ruby>加工<rt>かこう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>です。<ruby>正<rt>ただ</rt></ruby>しい<ruby>手順<rt>てじゅん</rt></ruby>で、<ruby>決<rt>き</rt></ruby>まった<ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>終<rt>お</rt></ruby>わらせます。<br>*(Phần thực hành là thao tác chế biến thực phẩm. Theo đúng quy trình và xong trong thời gian quy định.)* |
| Hoa | <ruby>手順<rt>てじゅん</rt></ruby>というのは、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Quy trình là giống công việc hàng ngày ạ?)* |
| Suzuki | はい、<ruby>基本<rt>きほん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じです。<ruby>原料<rt>げんりょう</rt></ruby>の<ruby>計量<rt>けいりょう</rt></ruby>、<ruby>洗浄<rt>せんじょう</rt></ruby>、<ruby>加工<rt>かこう</rt></ruby>、<ruby>包装<rt>ほうそう</rt></ruby>などです。<br>*(Vâng, cơ bản giống nhau. Cân nguyên liệu, rửa, gia công, đóng gói, v.v.)* |
| Hoa | <ruby>学科<rt>がっか</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>は?<br>*(Còn phần lý thuyết ạ?)* |
| Suzuki | <ruby>選択<rt>せんたく</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>です。HACCP、<ruby>衛生<rt>えいせい</rt></ruby><ruby>管理<rt>かんり</rt></ruby>、<ruby>労働<rt>ろうどう</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby>の<ruby>三<rt>みっ</rt></ruby>つが<ruby>中心<rt>ちゅうしん</rt></ruby>です。<br>*(Câu hỏi trắc nghiệm. Trọng tâm là ba mảng: HACCP, quản lý vệ sinh, an toàn lao động.)* |
| Hoa | HACCP の<ruby>勉強<rt>べんきょう</rt></ruby>は<ruby>去年<rt>きょねん</rt></ruby>しましたので、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(HACCP em đã học năm ngoái rồi, nên em nghĩ ổn ạ.)* |
| Suzuki | コーディネーターの<ruby>資格<rt>しかく</rt></ruby>を<ruby>持<rt>も</rt></ruby>っているから<ruby>有利<rt>ゆうり</rt></ruby>ですね。<ruby>合格率<rt>ごうかくりつ</rt></ruby>は<ruby>食品<rt>しょくひん</rt></ruby><ruby>加工<rt>かこう</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>で<ruby>約<rt>やく</rt></ruby><ruby>九十<rt>きゅうじゅう</rt></ruby>パーセントです。<br>*(Em có chứng chỉ coordinator nên có lợi. Tỷ lệ đậu 食品加工 cấp 3 khoảng 90%.)* |
| Hoa | わあ、<ruby>高<rt>たか</rt></ruby>いですね。<br>*(Wow, cao thật.)* |
| Suzuki | はい。ちゃんと<ruby>準備<rt>じゅんび</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Vâng. Chuẩn bị đàng hoàng thì ổn. Cố gắng nhé.)* |
| Hoa | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。ありがとうございました。<br>*(Vâng, em sẽ cố. Em cảm ơn anh ạ.)* |

---

## Tình huống 4 — Khu thay đồ · 9:00, quan sát Mai dạy Trang về 二度洗い

> Hoa đứng phía sau quan sát — kỹ năng quan sát đàn anh/đàn em làm mẫu.

| Vai | Lời thoại |
|---|---|
| Mai | チャンさん、<ruby>今日<rt>きょう</rt></ruby>は「<ruby>二度<rt>にど</rt></ruby><ruby>洗<rt>あら</rt></ruby>い」を<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<br>*(Trang, hôm nay mình luyện "rửa hai lần" nhé.)* |
| Trang | <ruby>二度<rt>にど</rt></ruby><ruby>洗<rt>あら</rt></ruby>いというのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Rửa hai lần là gì hả chị?)* |
| Mai | <ruby>三十秒<rt>さんじゅうびょう</rt></ruby><ruby>洗<rt>あら</rt></ruby>って、もう<ruby>一度<rt>いちど</rt></ruby><ruby>三十秒<rt>さんじゅうびょう</rt></ruby><ruby>洗<rt>あら</rt></ruby>って、<ruby>最後<rt>さいご</rt></ruby>にアルコール<ruby>消毒<rt>しょうどく</rt></ruby>をします。<br>*(Rửa 30 giây, rửa thêm 30 giây nữa, cuối cùng khử trùng bằng cồn.)* |
| Trang | <ruby>長<rt>なが</rt></ruby>いですね。<ruby>時間<rt>じかん</rt></ruby>がよく<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Lâu quá. Em không biết canh thời gian.)* |
| Mai | コツがあります。ABCの<ruby>歌<rt>うた</rt></ruby>を<ruby>頭<rt>あたま</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>二回<rt>にかい</rt></ruby><ruby>歌<rt>うた</rt></ruby>うと、ちょうど<ruby>三十秒<rt>さんじゅうびょう</rt></ruby>になります。<br>*(Có mẹo. Hát ABC trong đầu hai lần là vừa đúng 30 giây.)* |
| Trang | ABCの<ruby>歌<rt>うた</rt></ruby>?<br>*(Bài hát ABC?)* |
| Mai | アメリカの<ruby>子<rt>こ</rt></ruby>どもが<ruby>習<rt>なら</rt></ruby>う<ruby>歌<rt>うた</rt></ruby>です。エー、ビー、シー、ディーと<ruby>続<rt>つづ</rt></ruby>く<ruby>歌<rt>うた</rt></ruby>です。<br>*(Là bài hát trẻ em Mỹ học. Bài có A, B, C, D nối tiếp đó.)* |
| Trang | あ、<ruby>知<rt>し</rt></ruby>っています!<ruby>面白<rt>おもしろ</rt></ruby>いコツですね。<br>*(À, em biết rồi! Mẹo hay quá.)* |
| Mai | では、<ruby>一緒<rt>いっしょ</rt></ruby>にやってみましょう。(mở vòi nước, bắt đầu rửa)<br>*(Vậy mình cùng làm thử nhé.)* |
| Hoa | (đứng phía sau, khẽ gật đầu một mình)<br>*(Mai đã thuộc nằm lòng — Hoa nhận ra mình từng dạy y như vậy một năm trước.)* |

---

## Tình huống 5 — Hành lang nhà ăn · 12:30, Hoa góp ý cho Mai (lễ phép)

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、とても<ruby>上手<rt>じょうず</rt></ruby>でしたよ。<br>*(Mai, sáng nay em giải thích giỏi lắm.)* |
| Mai | <ruby>姉<rt>ねえ</rt></ruby>さんから<ruby>習<rt>なら</rt></ruby>ったとおりにやっただけです。<br>*(Em chỉ làm theo cách chị từng dạy thôi mà.)* |
| Hoa | <ruby>一<rt>ひと</rt></ruby>つだけ、アドバイスをしてもいい?<br>*(Chị góp ý em một điều thôi, được không?)* |
| Mai | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, chị nói đi ạ.)* |
| Hoa | チャンさんは<ruby>明<rt>あか</rt></ruby>るくて<ruby>素直<rt>すなお</rt></ruby>な<ruby>子<rt>こ</rt></ruby>です。でも<ruby>衛生<rt>えいせい</rt></ruby>のところは、<ruby>少<rt>すこ</rt></ruby>し<ruby>厳<rt>きび</rt></ruby>しい<ruby>顔<rt>かお</rt></ruby>もしてあげてください。<br>*(Trang là cô bé vui vẻ và ngoan. Nhưng phần vệ sinh, em nên thỉnh thoảng tỏ ra hơi nghiêm khắc một chút.)* |
| Mai | <ruby>厳<rt>きび</rt></ruby>しい<ruby>顔<rt>かお</rt></ruby>...ですか? <ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Tỏ ra nghiêm khắc... ạ? Khó quá.)* |
| Hoa | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>してください。やさしいけど、<ruby>衛生<rt>えいせい</rt></ruby>のルールは<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>譲<rt>ゆず</rt></ruby>りません。<br>*(Em nhớ chị Kimura đi. Dịu dàng nhưng tuyệt đối không nhân nhượng về quy tắc vệ sinh.)* |
| Mai | あー、<ruby>分<rt>わ</rt></ruby>かりました。「やさしいけど<ruby>譲<rt>ゆず</rt></ruby>らない」ですね。<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(À, em hiểu rồi. "Dịu nhưng không nhân nhượng" ạ. Em sẽ tập.)* |
| Hoa | はい、それで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Ừ, thế là đủ rồi.)* |

---

## Tình huống 6 — Phòng ký túc · 21:30, Hoa và Mai cùng học buổi tối

| Vai | Lời thoại |
|---|---|
| Mai | (nhìn sách trên bàn Hoa) <ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>ですか?<br>*(Chị, đang học ạ?)* |
| Hoa | はい、N3 の<ruby>文法<rt>ぶんぽう</rt></ruby>です。<br>*(Ừ, ngữ pháp N3.)* |
| Mai | <ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Khó không chị?)* |
| Hoa | N4 より<ruby>抽象的<rt>ちゅうしょうてき</rt></ruby>です。「<ruby>〜<rt> </rt></ruby>ばかりに」「<ruby>〜<rt> </rt></ruby>ようがない」など、<ruby>気持<rt>きも</rt></ruby>ちを<ruby>表<rt>あらわ</rt></ruby>す<ruby>文法<rt>ぶんぽう</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いです。<br>*(Trừu tượng hơn N4. Nhiều ngữ pháp diễn đạt cảm xúc như "〜ばかりに", "〜ようがない".)* |
| Mai | わあ、<ruby>知<rt>し</rt></ruby>らない<ruby>文型<rt>ぶんけい</rt></ruby>です。<br>*(Wow, mẫu câu em không biết.)* |
| Hoa | <ruby>来年<rt>らいねん</rt></ruby>、マイさんも N3 を<ruby>受<rt>う</rt></ruby>けられますよ。<br>*(Năm sau em cũng thi N3 được nhé.)* |
| Mai | <ruby>私<rt>わたし</rt></ruby>は<ruby>十二月<rt>じゅうにがつ</rt></ruby>に N4 を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Em muốn thi N4 vào tháng 12.)* |
| Hoa | え、<ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>ですね! <ruby>私<rt>わたし</rt></ruby>は N3。<br>*(Ơ, cùng ngày kìa! Chị thi N3.)* |
| Mai | <ruby>二人<rt>ふたり</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>りましょう!<br>*(Hai chị em cùng cố nhé!)* |
| Hoa | はい。<ruby>分<rt>わ</rt></ruby>からないところがあったら<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Ừ. Chỗ nào không hiểu thì hỏi chị nhé.)* |

---

## Tình huống 7 — Nhà ăn · 12:00, Trang khen Mai

| Vai | Lời thoại |
|---|---|
| Trang | マイ<ruby>姉<rt>ねえ</rt></ruby>さんって、<ruby>本当<rt>ほんとう</rt></ruby>にやさしいですね。<br>*(Chị Mai dịu dàng thật đấy.)* |
| Mai | え、そうですか?<br>*(Ơ, vậy hả?)* |
| Trang | <ruby>説明<rt>せつめい</rt></ruby>がとても<ruby>分<rt>わ</rt></ruby>かりやすいです。<ruby>怖<rt>こわ</rt></ruby>くないし。<br>*(Chị giải thích rất dễ hiểu. Không sợ.)* |
| Mai | ありがとうございます。ホア<ruby>姉<rt>ねえ</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えてもらった<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(Cảm ơn em. Đây là cách chị Hoa từng dạy chị.)* |
| Trang | ホア<ruby>姉<rt>ねえ</rt></ruby>さんも、マイ<ruby>姉<rt>ねえ</rt></ruby>さんもいなかったら、<ruby>私<rt>わたし</rt></ruby>はもっと<ruby>怖<rt>こわ</rt></ruby>かったと<ruby>思<rt>おも</rt></ruby>います。<br>*(Nếu không có cả chị Hoa và chị Mai, chắc em sợ hơn nhiều.)* |
| Mai | <ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じでしたよ。<ruby>一年前<rt>いちねんまえ</rt></ruby>、ホア<ruby>姉<rt>ねえ</rt></ruby>さんがいなかったら、<ruby>私<rt>わたし</rt></ruby>も<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Chị cũng vậy mà. Một năm trước, không có chị Hoa thì chị cũng sợ.)* |
| Trang | <ruby>家族<rt>かぞく</rt></ruby>みたいですね。<br>*(Cứ như gia đình ấy chị.)* |
| Mai | <ruby>姉妹<rt>しまい</rt></ruby>です。<br>*(Là chị em mà.)* |

---

## Tình huống 8 — Khu thực hành · thứ 7, 10:00, nhờ đàn anh Satou luyện 技能検定

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>っていただけませんか?<br>*(Anh Satou, xin lỗi đã làm phiền lúc anh bận. Anh giúp em luyện 技能検定 được không ạ?)* |
| Satou | もちろんいいですよ。<ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>今<rt>いま</rt></ruby>まで<ruby>三人<rt>さんにん</rt></ruby>が<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Tất nhiên là được. Công ty mình tới giờ đã có ba người đậu.)* |
| Hoa | え、どなたですか?<br>*(Ơ, là ai vậy ạ?)* |
| Satou | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と、<ruby>私<rt>わたし</rt></ruby>と、<ruby>山田<rt>やまだ</rt></ruby>さんです。<br>*(Chị Kimura, anh, và Yamada-san.)* |
| Hoa | みなさん<ruby>合格<rt>ごうかく</rt></ruby>されたんですね。<br>*(Mọi người đều đậu cả nhỉ.)* |
| Satou | はい。コツが<ruby>一<rt>ひと</rt></ruby>つあります。<ruby>速<rt>はや</rt></ruby>さよりも<ruby>正確<rt>せいかく</rt></ruby>さです。<br>*(Vâng. Có một bí quyết. Chính xác quan trọng hơn nhanh.)* |
| Hoa | すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>速<rt>はや</rt></ruby>さより<ruby>正確<rt>せいかく</rt></ruby>さ、ということですね?<br>*(Xin anh nhắc lại giúp em. Chính xác quan trọng hơn nhanh, đúng không ạ?)* |
| Satou | そのとおりです。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>、<ruby>午前中<rt>ごぜんちゅう</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<br>*(Đúng vậy. Mỗi sáng thứ 7, mình cùng luyện nhé.)* |
| Hoa | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng, mong anh chỉ bảo. Em cảm ơn anh nhiều ạ.)* |

---

## Tình huống 9 — Khu thực hành · thứ 7, 11:00, làm bài luyện 第1課題 với Satou

| Vai | Lời thoại |
|---|---|
| Satou | では、<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いっ</rt></ruby><ruby>課題<rt>かだい</rt></ruby>:<ruby>原料<rt>げんりょう</rt></ruby>の<ruby>計量<rt>けいりょう</rt></ruby>です。<br>*(Vậy, bài 1: cân nguyên liệu.)* |
| Hoa | はい。<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Vâng. Em chuẩn bị ạ.)* |
| Satou | <ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>五分<rt>ごふん</rt></ruby>。<ruby>誤差<rt>ごさ</rt></ruby>はプラスマイナス<ruby>二<rt>に</rt></ruby>グラム<ruby>以内<rt>いない</rt></ruby>です。<br>*(Thời gian giới hạn là 5 phút. Sai số trong khoảng ±2 gram.)* |
| Hoa | <ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>五分<rt>ごふん</rt></ruby>、<ruby>誤差<rt>ごさ</rt></ruby>プラスマイナス<ruby>二<rt>に</rt></ruby>グラムですね。<br>*(Thời gian 5 phút, sai số ±2 gram ạ.)* |
| Satou | はい、では<ruby>始<rt>はじ</rt></ruby>めてください。(bấm đồng hồ)<br>*(Vâng, bắt đầu nhé.)* |
| Hoa | (cân nguyên liệu, tay vững, mắt nhìn cân) ...<ruby>終<rt>お</rt></ruby>わりました。<br>*(... Em làm xong rồi.)* |
| Satou | <ruby>時間<rt>じかん</rt></ruby>は<ruby>四分<rt>よんぷん</rt></ruby><ruby>五十秒<rt>ごじゅうびょう</rt></ruby>。<ruby>誤差<rt>ごさ</rt></ruby>はプラス<ruby>一<rt>いち</rt></ruby>グラム。<ruby>合格<rt>ごうかく</rt></ruby>です!<br>*(Thời gian 4 phút 50 giây. Sai số +1 gram. Đậu!)* |
| Hoa | やった!<br>*(Tuyệt!)* |
| Satou | <ruby>本番<rt>ほんばん</rt></ruby>もこの<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ってください。<ruby>焦<rt>あせ</rt></ruby>らずに、<ruby>正確<rt>せいかく</rt></ruby>に。<br>*(Thi thật cũng giữ phong độ này nhé. Đừng vội, cứ chính xác.)* |
| Hoa | はい、ありがとうございます!<br>*(Vâng, em cảm ơn anh!)* |

---

## Tình huống 10 — Phòng họp nhỏ · thứ 6, 16:00, báo cáo tiến độ với Suzuki

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はどうですか?<br>*(Hoa, việc học thế nào rồi?)* |
| Hoa | <ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>に<ruby>手伝<rt>てつだ</rt></ruby>ってくださっています。<br>*(Suôn sẻ ạ. Anh Satou giúp em mỗi thứ 7.)* |
| Suzuki | それはよかった。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>はどのくらいですか?<br>*(Tốt quá. Chuẩn bị 技能検定 được khoảng bao nhiêu rồi?)* |
| Hoa | <ruby>六十<rt>ろくじゅう</rt></ruby>パーセントぐらいです。<ruby>計量<rt>けいりょう</rt></ruby>と<ruby>洗浄<rt>せんじょう</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>レベルになりました。<br>*(Khoảng 60% ạ. Phần cân và rửa đã đạt mức đậu rồi.)* |
| Suzuki | N3 は?<br>*(N3 thì sao?)* |
| Hoa | <ruby>毎晩<rt>まいばん</rt></ruby><ruby>一時間<rt>いちじかん</rt></ruby>ずつ。<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>二百<rt>にひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えました。<ruby>四十<rt>よんじゅう</rt></ruby>パーセントぐらいです。<br>*(Mỗi tối một tiếng. Em đã nhớ 200 mẫu ngữ pháp. Khoảng 40%.)* |
| Suzuki | すごいですね。でも<ruby>無理<rt>むり</rt></ruby>はしないでください。<ruby>体<rt>からだ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>ですよ。<br>*(Giỏi đấy. Nhưng đừng quá sức. Sức khoẻ là quan trọng nhất.)* |
| Hoa | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。チャンさんの<ruby>方<rt>ほう</rt></ruby>はマイさんが<ruby>上手<rt>じょうず</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれています。<br>*(Vâng, em ổn. Bên Trang thì Mai dạy rất giỏi ạ.)* |
| Suzuki | <ruby>素晴<rt>すば</rt></ruby>らしいですね。チームになっています。<br>*(Tuyệt vời. Đã thành một đội rồi đấy.)* |

---

## Tình huống 11 — Phòng ăn ký túc · tối thứ 7, 4 cô gái ăn cơm Trang nấu

| Vai | Lời thoại |
|---|---|
| Trang | <ruby>今夜<rt>こんや</rt></ruby>はミークアンです!<ruby>中部<rt>ちゅうぶ</rt></ruby>ベトナムの<ruby>麺<rt>めん</rt></ruby>です。<br>*(Tối nay là mì Quảng! Mì miền Trung Việt Nam.)* |
| Hoa | <ruby>初<rt>はじ</rt></ruby>めて<ruby>食<rt>た</rt></ruby>べます。おいしそう!<br>*(Lần đầu chị được ăn. Trông ngon quá!)* |
| Mai | <ruby>北部<rt>ほくぶ</rt></ruby>には<ruby>無<rt>な</rt></ruby>い<ruby>料理<rt>りょうり</rt></ruby>です。<br>*(Món ở miền Bắc không có.)* |
| Putri | (cô bạn Indonesia cùng phòng) わあ、<ruby>具<rt>ぐ</rt></ruby>が<ruby>沢山<rt>たくさん</rt></ruby>!<br>*(Wow, đồ ăn kèm nhiều quá!)* |
| Hoa | ミークアンは<ruby>中部<rt>ちゅうぶ</rt></ruby>ベトナムの<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>麺<rt>めん</rt></ruby>で、<ruby>具<rt>ぐ</rt></ruby>がとても<ruby>多<rt>おお</rt></ruby>いです。<br>*(Mì Quảng là loại mì nổi tiếng miền Trung Việt Nam, có rất nhiều đồ ăn kèm.)* |
| Putri | おいしい!ありがとう、チャンさん!<br>*(Ngon! Cảm ơn Trang!)* |
| Trang | <ruby>嬉<rt>うれ</rt></ruby>しいです!<br>*(Em vui quá!)* |

---

## Tình huống 12 — Phòng Hoa · 23:00, gọi điện chị Linh (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch gia đình. Hoa gọi LINE video về chị Linh ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Chị Linh ơi, bé Bảo khoẻ không chị? |
| Linh | (tiếng Việt) Bảo bốn tháng rồi, bụ bẫm lắm em. Em sao, học hành thế nào? |
| Hoa | (tiếng Việt) Em đang chạy hai đường. Tháng 8 thi 技能検定 cấp 3 — chứng minh "良好修了", đỗ thì sau này lên SSW1 được miễn cả thi nghề lẫn thi tiếng. Tháng 12 thi JLPT N3. |
| Linh | (tiếng Việt) Hai cái cùng lúc à? Có cố quá không em? |
| Hoa | (tiếng Việt) Em chia mỗi tối hai tiếng, ngữ pháp với luyện thao tác. Anh Satou đàn anh ở công ty nhận luyện thực hành cho em sáng thứ 7. Anh ấy bảo "chính xác hơn nhanh" — em đang khắc cốt câu đó. |
| Linh | (tiếng Việt) Mai sao rồi? |
| Hoa | (tiếng Việt) Mai đang dạy Trang vệ sinh — chiêu 二度洗い 30 giây nhân hai cộng cồn. Mai hát ABC để canh giờ y như em từng dạy nó. Cảm giác chuyền tay nhau, hay lắm chị. |
| Linh | (tiếng Việt) Nghe vững rồi. Mẹ với anh dưới này cũng ổn. Sáu tháng nữa mẹ qua thăm em được không? |
| Hoa | (tiếng Việt) Được chị, em đỗ 技能検定 xong là tháng 9 visa thân nhân làm được rồi. Mẹ qua đúng đợt em ôn N3 luôn. |
| Linh | (tiếng Việt) Ừ. Cố nhưng đừng quên ngủ. Anh Suzuki nói đúng — sức khoẻ là nhất. |
| Hoa | (tiếng Việt) Vâng chị. Hôn bé Bảo giúp em. Em đi nghỉ đây. |

---

## Tình huống 13 — Phòng Hoa · 23:30, viết nhật ký cuối tháng (đặt mục tiêu)

| Vai | Lời thoại |
|---|---|
| Hoa | (viết nhật ký bằng tiếng Nhật) <ruby>六月<rt>ろくがつ</rt></ruby><ruby>三十日<rt>さんじゅうにち</rt></ruby>。<ruby>二<rt>に</rt></ruby>か<ruby>月目<rt>げつめ</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>、<ruby>順調<rt>じゅんちょう</rt></ruby>です。<br>*(30 tháng 6. Tháng thứ hai của kế hoạch học, đang suôn sẻ.)* |
| Hoa | <ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>は<ruby>六十<rt>ろくじゅう</rt></ruby>パーセント、N3 は<ruby>四十<rt>よんじゅう</rt></ruby>パーセント。<br>*(Chuẩn bị 技能検定 60%, N3 40%.)* |
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>、<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>ってくれます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Anh Satou giúp luyện mỗi thứ 7. Thực sự biết ơn.)* |
| Hoa | マイさんがチャンさんに<ruby>教<rt>おし</rt></ruby>えている<ruby>姿<rt>すがた</rt></ruby>は、<ruby>一年前<rt>いちねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>とマイさんと<ruby>同<rt>おな</rt></ruby>じです。<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>言<rt>い</rt></ruby>っていた「<ruby>仲間<rt>なかま</rt></ruby>」というのはこのことだと<ruby>思<rt>おも</rt></ruby>います。<br>*(Hình ảnh Mai dạy Trang giống y hệt một năm trước, chị Hoa dạy Mai. "Đồng đội" mà chị Kimura nói đến — chắc là điều này.)* |
| Hoa | <ruby>八月<rt>はちがつ</rt></ruby>まで、あと<ruby>四十<rt>よんじゅう</rt></ruby>パーセント。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Đến tháng 8 còn 40% nữa. Cố lên nào.)* |

---

## Đọng lại chương 3

Tháng 6 năm thứ 3, Hoa bước vào giai đoạn "nhị đao lưu" — vừa học JLPT vừa chuẩn bị 技能検定. Trong chương này Hoa tổng hợp nhiều kỹ năng giao tiếp tiếng Nhật mới: **xin cấp trên giải thích kỳ thi chuyên ngành** (〜について教えていただけますか), **hỏi lại lễ phép khi không biết thuật ngữ** (〜というのは何ですか・もう一度お願いします), **xác nhận lại nội dung quan trọng** (〜ということですね), **góp ý đàn em một cách dịu dàng** (一つだけアドバイスをしてもいい?・〜けど〜ない), **nhờ đàn anh luyện thực hành cuối tuần** (お忙しいところすみません・〜手伝っていただけませんか), và **báo cáo tiến độ học tập** (順調です・〜パーセントぐらいです). Đồng thời Hoa nhận ra hai khái niệm cốt lõi của nghề và của 技能実習: **良好修了** là tấm vé miễn 技能試験 SSW1 cùng ngành, và **速さより正確さ** — phương châm thi 技能検定 cũng đúng với cả nghề chế biến thực phẩm. Cuối cùng, hình ảnh Mai dạy Trang lặp lại cách Hoa từng dạy Mai một năm trước — chuỗi truyền tay đàn em làm cho chữ **仲間** mà chị Kimura hay nói trở nên cụ thể.

> Từ vựng & mẫu câu chương này: 技能検定・良好修了・特定技能・免除・技能試験・日本語試験・実技・学科・試験官・JITCO・原料・計量・誤差・制限時間・本番・順調・二度洗い・消毒・HACCP・衛生管理・労働安全・速さより正確さ・仲間・〜について教えていただけますか・〜というのは何ですか・〜ということですね・〜手伝っていただけませんか・一つだけアドバイスをしてもいい・〜パーセントぐらいです

## Bí quyết chương

- **Hai mục tiêu chạy song song**: 技能検定 (tháng 8) + N3 (tháng 12), mỗi tối chia 2 tiếng — pattern "二刀流" sẽ thấy kết quả ở năm 4.
- **Chuỗi truyền tay**: Kimura → Hoa → Mai → Trang. Mỗi đàn em thành đàn chị sau đúng 1 năm.
- **Câu thần chú**: *"速さより正確さ"* — Satou để lại, áp dụng được cho cả thi 技能検定 lẫn nghề chế biến thực phẩm.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 合格 | ごうかく | HỢP CÁCH | đậu, đạt |
| 無理 | むり | VÔ LÝ | quá sức |
| 失礼 | しつれい | THẤT LỄ | xin lỗi (lễ phép) |
| 技能実習 | ぎのうじっしゅう | KỸ NĂNG THỰC TẬP | thực tập kỹ năng |
| 証明 | しょうめい | CHỨNG MINH | chứng minh |
| 試験 | しけん | THÍ NGHIỆM | kỳ thi |
| 真面目 | まじめ | CHÂN DIỆN MỤC | nghiêm túc |
| 形式 | けいしき | HÌNH THỨC | hình thức |
| 実技 | じつぎ | THỰC KỸ | thực hành |
| 学科 | がっか | HỌC KHOA | lý thuyết |
| 試験官 | しけんかん | THÍ NGHIỆM QUAN | giám khảo |
| 外部 | がいぶ | NGOẠI BỘ | bên ngoài |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 食品加工 | しょくひんかこう | THỰC PHẨM GIA CÔNG | chế biến thực phẩm |
| 手順 | てじゅん | THỦ THUẬN | quy trình |
| 原料 | げんりょう | NGUYÊN LIỆU | nguyên liệu |
| 計量 | けいりょう | KẾ LƯỢNG | cân đo |
| 洗浄 | せんじょう | TẨY TỊNH | rửa sạch |
| 加工 | かこう | GIA CÔNG | gia công |
| 包装 | ほうそう | BAO TRANG | đóng gói |
| 衛生管理 | えいせいかんり | VỆ SINH QUẢN LÝ | quản lý vệ sinh |
| 労働安全 | ろうどうあんぜん | LAO ĐỘNG AN TOÀN | an toàn lao động |
| 資格 | しかく | TƯ CÁCH | chứng chỉ |
| 有利 | ゆうり | HỮU LỢI | có lợi |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | tỷ lệ đậu |
| 二度洗い | にどあらい | NHỊ ĐỘ TẨY | rửa hai lần |
| 抽象的 | ちゅうしょうてき | TRỪU TƯỢNG ĐÍCH | trừu tượng |
| 文型 | ぶんけい | VĂN HÌNH | mẫu câu |
| 姉妹 | しまい | TỶ MUỘI | chị em |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | thời gian giới hạn |
| 誤差 | ごさ | NGỘ SAI | sai số |
| 本番 | ほんばん | BẢN PHIÊN | thi/diễn thật |
| 焦る | あせる | TIÊU | sốt ruột, vội |
| 正確 | せいかく | CHÍNH XÁC | chính xác |
| 順調 | じゅんちょう | THUẬN ĐIỀU | suôn sẻ |
| 課題 | かだい | KHOÁ ĐỀ | bài tập, đề bài |
| 中部 | ちゅうぶ | TRUNG BỘ | miền Trung |
| 北部 | ほくぶ | BẮC BỘ | miền Bắc |
| 具 | ぐ | CỤ | nhân, đồ ăn kèm |
| 感謝 | かんしゃ | CẢM TẠ | biết ơn |
| 姿 | すがた | TƯ | dáng vẻ, hình ảnh |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000004, 800000013, NULL, 'markdown_book', 'T4. Khủng hoảng line lớn — Hoa lead (大きな危機、ホアがリード)', '# Sách thực tập sinh thực phẩm · T4. Khủng hoảng line lớn — Hoa lead (大きな危機、ホアがリード)

> **Mục tiêu nhân vật:** Hoa (năm 3, thực tập sinh thực phẩm) chỉ huy xử lý sự cố nhiễm chéo allergen lớn nhất 3 năm tại line cơm hộp. Học các mẫu hội thoại tiếng Nhật trong tình huống khẩn cấp tại nhà máy: hô báo khẩn (緊急です), báo cáo sự cố ngắn gọn cho cấp trên (5W1H), phân vai chỉ đạo team (〜してください・〜お願いします), hỏi lại tình trạng tiến độ (進捗はいかがですか), xác nhận lại để tránh nhầm (〜ということですね), và quan sát 工場長 dẫn dắt phân tích nguyên nhân gốc bằng **5 Why**.

---

## Bối cảnh

Tháng 7 năm 2028. Hoa năm thứ 3 tại nhà máy cơm hộp Saitama Foods (埼玉フーズ) ở Saitama, đã có chứng chỉ 食品衛生責任者 và HACCP coordinator. Trình độ tiếng Nhật N3 (đang ôn để thi tháng 12). Hôm nay dây chuyền A2 gặp sự cố lớn nhất 3 năm: 1200 hộp cơm sót nhãn cảnh báo allergen điều (カシューナッツ). Chương này tập trung các mẫu câu giao tiếp khi xử lý khủng hoảng tại line sản xuất: hô báo khẩn, báo cáo cấp trên, phân công team, theo dõi tiến độ và phân tích **5 Why** sau sự cố.

---

## Tình huống 1 — Cuối dây chuyền A2 · 13:00, học cách hô báo khẩn cấp khi phát hiện lỗi nhãn

| Vai | Lời thoại |
|---|---|
| Hoa | (kiểm tra nhãn cuối line, đột nhiên dừng tay) え!? この<ruby>表示<rt>ひょうじ</rt></ruby>...カシューナッツの<ruby>表示<rt>ひょうじ</rt></ruby>がない!<br>*(Ơ!? Cái nhãn này... không có ghi điều!)* |
| Hoa | (mở log nguyên liệu trên tablet) <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>原料<rt>げんりょう</rt></ruby>にカシューナッツが<ruby>追加<rt>ついか</rt></ruby>されている。もう<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>も<ruby>流<rt>なが</rt></ruby>れた...<br>*(Nguyên liệu hôm nay có thêm điều. Mà 1200 hộp đã chạy qua line rồi...)* |
| Hoa | (hít một hơi, bấm nút dừng dây chuyền, còi báo vang lên) <ruby>緊急<rt>きんきゅう</rt></ruby>です! アレルゲン<ruby>表示漏<rt>ひょうじも</rt></ruby>れ、ラインA2、<ruby>停止<rt>ていし</rt></ruby>します!<br>*(Khẩn cấp! Sót nhãn allergen, dây chuyền A2, dừng máy!)* |
| Satou | (từ đầu line chạy lại) ホアさん、どうしました?<br>*(Hoa-san, có chuyện gì?)* |
| Hoa | カシューナッツの<ruby>表示漏<rt>ひょうじも</rt></ruby>れです。<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>、すでにラインを<ruby>通過<rt>つうか</rt></ruby>しました。<ruby>幸<rt>さいわ</rt></ruby>い、まだ<ruby>出荷<rt>しゅっか</rt></ruby>していません。<br>*(Sót nhãn điều. 1200 hộp đã chạy qua line. May là chưa xuất kho.)* |
| Satou | アレルゲン<ruby>表示漏<rt>ひょうじも</rt></ruby>れはクラスIIリコール<ruby>級<rt>きゅう</rt></ruby>です。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>します。ホアさんは<ruby>製品<rt>せいひん</rt></ruby>の<ruby>区分<rt>くぶん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Sót nhãn allergen là mức thu hồi Class II. Em báo khẩn anh Tanaka. Hoa-san bắt đầu phân loại sản phẩm đi.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Bên dây chuyền A2 · 13:05, học cách giao việc khẩn cho đàn em

| Vai | Lời thoại |
|---|---|
| Mai | (chạy đến, thở dốc) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>何<rt>なに</rt></ruby>がありましたか?<br>*(Chị Hoa, có chuyện gì vậy ạ?)* |
| Trang | (theo sau) アラームが<ruby>鳴<rt>な</rt></ruby>っていますが...<br>*(Còi báo vang vang luôn ạ...)* |
| Hoa | カシューナッツの<ruby>表示漏<rt>ひょうじも</rt></ruby>れです。<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>不適合品<rt>ふてきごうひん</rt></ruby>になりました。<br>*(Sót nhãn điều. 1200 hộp, toàn bộ thành hàng không đạt.)* |
| Mai | え、そんなに!?<br>*(Ơ, nhiều vậy ạ!?)* |
| Hoa | <ruby>2人<rt>ふたり</rt></ruby>とも、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>聞<rt>き</rt></ruby>いてください。これから<ruby>製品<rt>せいひん</rt></ruby>を<ruby>区分<rt>くぶん</rt></ruby>します。<ruby>赤<rt>あか</rt></ruby>いマークの<ruby>付<rt>つ</rt></ruby>いたコンテナに<ruby>移<rt>うつ</rt></ruby>してください。<br>*(Hai đứa, bình tĩnh nghe chị nói. Bây giờ mình phân loại sản phẩm. Chuyển vào container có dán mark đỏ.)* |
| Trang | <ruby>赤<rt>あか</rt></ruby>いマーク...<ruby>不適合品<rt>ふてきごうひん</rt></ruby>の<ruby>印<rt>しるし</rt></ruby>ですね?<br>*(Mark đỏ... là dấu hàng không đạt đúng không ạ?)* |
| Hoa | そうです。よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>正確<rt>せいかく</rt></ruby>に。<ruby>1個<rt>いっこ</rt></ruby>も<ruby>残<rt>のこ</rt></ruby>さないでください。<br>*(Đúng vậy. Nhớ kỹ thật đấy. Đừng vội, làm chính xác. Đừng bỏ sót hộp nào.)* |
| Mai | はい!<br>*(Vâng!)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>からないことがあったら、すぐ<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Có gì không hiểu, hỏi chị ngay nhé.)* |

---

## Tình huống 3 — Bên dây chuyền A2 · 13:15, học cách báo cáo sự cố lên 工場長 theo cấu trúc 5W1H

| Vai | Lời thoại |
|---|---|
| Tanaka | (đến, mặt nghiêm) ホアさん、<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Hoa-san, báo cáo tình hình.)* |
| Hoa | はい。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby>、ラインA2の<ruby>弁当<rt>べんとう</rt></ruby><ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>にカシューナッツの<ruby>表示漏<rt>ひょうじも</rt></ruby>れを<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Vâng. 13:00 hôm nay, dây chuyền A2 1200 hộp cơm bị sót nhãn điều. Em xin lỗi.)* |
| Tanaka | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Nguyên nhân là gì?)* |
| Hoa | <ruby>原料部<rt>げんりょうぶ</rt></ruby>からの<ruby>原料変更<rt>げんりょうへんこう</rt></ruby>の<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れました。<ruby>本日<rt>ほんじつ</rt></ruby>のサラダにカシューナッツが<ruby>追加<rt>ついか</rt></ruby>されましたが、ラベルの<ruby>更新<rt>こうしん</rt></ruby>が<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いませんでした。<br>*(Bộ phận nguyên liệu báo đổi nguyên liệu chậm. Salad hôm nay thêm điều, nhưng cập nhật nhãn không kịp.)* |
| Tanaka | <ruby>出荷<rt>しゅっか</rt></ruby>はどうなっていますか?<br>*(Việc xuất hàng thế nào?)* |
| Hoa | <ruby>幸<rt>さいわ</rt></ruby>いまだ<ruby>出荷<rt>しゅっか</rt></ruby>していません。<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>すべて<ruby>工場内<rt>こうじょうない</rt></ruby>にあります。<br>*(May là chưa xuất hàng. Cả 1200 hộp vẫn còn trong nhà máy.)* |
| Tanaka | よかった。<ruby>外部<rt>がいぶ</rt></ruby>リコールは<ruby>不要<rt>ふよう</rt></ruby>です。<ruby>正<rt>ただ</rt></ruby>しいラベルに<ruby>貼<rt>は</rt></ruby>り<ruby>替<rt>か</rt></ruby>えれば<ruby>出荷可能<rt>しゅっかかのう</rt></ruby>です。<br>*(May quá. Không cần thu hồi từ ngoài. Dán lại nhãn đúng là có thể xuất.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>2<rt>に</rt></ruby><ruby>時間以内<rt>じかんいない</rt></ruby>に<ruby>完了<rt>かんりょう</rt></ruby>します。<br>*(Vâng, em rõ ạ. Em sẽ hoàn thành trong 2 tiếng.)* |

---

## Tình huống 4 — Bên dây chuyền A2 · 13:20, học cách phân vai team trong khủng hoảng

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、<ruby>今回<rt>こんかい</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>はあなたが<ruby>指揮<rt>しき</rt></ruby>を<ruby>取<rt>と</rt></ruby>ってください。<br>*(Hoa-san, em chỉ huy đợt xử lý lần này.)* |
| Hoa | え、<ruby>私<rt>わたし</rt></ruby>がですか?<br>*(Ơ, em ạ?)* |
| Tanaka | はい。あなたは<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>でHACCPコーディネーターです。<ruby>適任<rt>てきにん</rt></ruby>です。<br>*(Vâng. Em là người chịu trách nhiệm vệ sinh thực phẩm và HACCP coordinator. Em là người phù hợp.)* |
| Hoa | はい、かしこまりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em hiểu ạ. Em sẽ cố gắng.)* |
| Hoa | (quay sang team, giọng rõ ràng) みなさん、<ruby>役割<rt>やくわり</rt></ruby>を<ruby>分担<rt>ぶんたん</rt></ruby>します。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しいラベルの<ruby>印刷<rt>いんさつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, em phân vai. Anh Satou, nhờ anh in nhãn mới.)* |
| Satou | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Em rõ. 30 phút sẽ chuẩn bị xong.)* |
| Hoa | <ruby>高橋<rt>たかはし</rt></ruby>さんはQCの<ruby>立場<rt>たちば</rt></ruby>で<ruby>製品<rt>せいひん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>記録<rt>きろく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Takahashi với vai trò QC, nhờ anh kiểm tra sản phẩm và ghi chép.)* |
| Takahashi | はい、<ruby>記録<rt>きろく</rt></ruby>シートを<ruby>用意<rt>ようい</rt></ruby>します。<br>*(Vâng, em chuẩn bị phiếu ghi.)* |
| Hoa | マイさんとチャンさんは<ruby>古<rt>ふる</rt></ruby>いラベルを<ruby>剥<rt>は</rt></ruby>がす<ruby>作業<rt>さぎょう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mai và Trang, nhờ hai em bóc nhãn cũ.)* |
| Mai・Trang | はい!<br>*(Vâng ạ!)* |
| Hoa | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>原料部<rt>げんりょうぶ</rt></ruby>との<ruby>連絡体制<rt>れんらくたいせい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>していただけますか?<ruby>同<rt>おな</rt></ruby>じ<ruby>事故<rt>じこ</rt></ruby>を<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>さないために。<br>*(Chị Kimura, chị kiểm tra giúp em hệ thống liên lạc với bộ phận nguyên liệu được không ạ? Để không lặp lại sự cố.)* |
| Kimura | <ruby>分<rt>わ</rt></ruby>かりました。すぐに<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Hiểu rồi. Chị liên lạc ngay.)* |
| Hoa | みなさん、<ruby>2<rt>に</rt></ruby><ruby>時間以内<rt>じかんいない</rt></ruby>に<ruby>解決<rt>かいけつ</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, mình sẽ giải quyết trong 2 tiếng. Nhờ mọi người.)* |

---

## Tình huống 5 — Trước cửa kho đệm · 13:30, học cách hỏi lại để xác nhận quy trình

| Vai | Lời thoại |
|---|---|
| Trang | (đang bóc nhãn, ngẩng lên) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、すみません、<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>したいです。<br>*(Chị Hoa, cho em hỏi một chút ạ.)* |
| Hoa | はい、どうぞ。<br>*(Ừ, em nói đi.)* |
| Trang | <ruby>古<rt>ふる</rt></ruby>いラベルを<ruby>剥<rt>は</rt></ruby>がしたあと、すぐに<ruby>新<rt>あたら</rt></ruby>しいラベルを<ruby>貼<rt>は</rt></ruby>っていいですか?<br>*(Sau khi bóc nhãn cũ, em dán nhãn mới ngay được không ạ?)* |
| Hoa | いいえ、その<ruby>前<rt>まえ</rt></ruby>に<ruby>高橋<rt>たかはし</rt></ruby>さんのQC<ruby>確認<rt>かくにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>1個<rt>いっこ</rt></ruby>ずつ、<ruby>剥<rt>は</rt></ruby>がす→QC→<ruby>貼<rt>は</rt></ruby>るの<ruby>順番<rt>じゅんばん</rt></ruby>です。<br>*(Không, trước đó phải qua kiểm tra QC của anh Takahashi. Từng hộp một, theo thứ tự: bóc → QC → dán.)* |
| Trang | <ruby>剥<rt>は</rt></ruby>がす→QC→<ruby>貼<rt>は</rt></ruby>る、ということですね。<br>*(Tức là bóc → QC → dán, đúng không ạ?)* |
| Hoa | そうです。<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>さないとあとで<ruby>追跡<rt>ついせき</rt></ruby>できなくなります。<ruby>食品<rt>しょくひん</rt></ruby>のトレーサビリティが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Đúng. Không lưu lại sẽ không truy vết được. Truy xuất nguồn gốc thực phẩm rất quan trọng.)* |
| Trang | トレーサビリティ...すみません、それは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Truy xuất nguồn gốc... xin lỗi, là gì ạ?)* |
| Hoa | <ruby>製品<rt>せいひん</rt></ruby>が「いつ・どこで・<ruby>誰<rt>だれ</rt></ruby>が・どうやって」<ruby>作<rt>つく</rt></ruby>られたか、<ruby>後<rt>あと</rt></ruby>からたどれる<ruby>仕組<rt>しく</rt></ruby>みのことです。<br>*(Là cơ chế cho phép truy ngược "lúc nào, ở đâu, ai, làm thế nào" tạo ra sản phẩm.)* |
| Trang | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Ra vậy, em hiểu rồi. Cảm ơn chị.)* |

---

## Tình huống 6 — Quan sát 佐藤 in nhãn mới · 13:40, học mẫu câu kiểm tra chất lượng nhãn

| Vai | Lời thoại |
|---|---|
| Hoa | (đến chỗ máy in nhãn) <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ラベルはいかがですか?<br>*(Anh Satou, nhãn thế nào rồi ạ?)* |
| Satou | (giơ một mẫu nhãn) これです。アレルゲン<ruby>表示<rt>ひょうじ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Đây này. Em kiểm tra lại phần allergen giúp anh.)* |
| Hoa | (đọc kỹ) <ruby>小麦<rt>こむぎ</rt></ruby>・<ruby>卵<rt>たまご</rt></ruby>・<ruby>乳<rt>にゅう</rt></ruby>・<ruby>大豆<rt>だいず</rt></ruby>・カシューナッツ...<ruby>5<rt>ご</rt></ruby><ruby>品目<rt>ひんもく</rt></ruby><ruby>記載<rt>きさい</rt></ruby>されています。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Bột mì, trứng, sữa, đậu nành, điều... ghi đủ 5 hạng mục. Ổn rồi ạ.)* |
| Satou | フォントの<ruby>大<rt>おお</rt></ruby>きさはどうですか?<ruby>消費者庁<rt>しょうひしゃちょう</rt></ruby>の<ruby>基準<rt>きじゅん</rt></ruby>に<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Cỡ chữ thì sao? Có đúng chuẩn của Tổng cục Tiêu dùng không?)* |
| Hoa | (lấy thước đo) <ruby>8<rt>はち</rt></ruby>ポイント<ruby>以上<rt>いじょう</rt></ruby>が<ruby>基準<rt>きじゅん</rt></ruby>ですね。これは<ruby>10<rt>じゅう</rt></ruby>ポイントです。<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Chuẩn là 8 point trở lên. Cái này 10 point. Không vấn đề ạ.)* |
| Satou | よし。では<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>印刷<rt>いんさつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Tốt. Vậy anh in 1200 cái.)* |
| Hoa | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>印刷<rt>いんさつ</rt></ruby><ruby>後<rt>ご</rt></ruby>も<ruby>抜<rt>ぬ</rt></ruby>き<ruby>取<rt>と</rt></ruby>り<ruby>検査<rt>けんさ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ anh. Sau khi in cũng kiểm tra ngẫu nhiên giúp em.)* |
| Satou | はい、<ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Vâng, em rõ.)* |

---

## Tình huống 7 — Bên dây chuyền A2 · 14:30, học mẫu câu hỏi tiến độ team

| Vai | Lời thoại |
|---|---|
| Hoa | みなさん、<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>経<rt>た</rt></ruby>ちました。<ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をします。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、いかがですか?<br>*(Mọi người, đã 1 tiếng. Em check tiến độ. Anh Satou thế nào ạ?)* |
| Satou | <ruby>新<rt>あたら</rt></ruby>しいラベルは<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>完成<rt>かんせい</rt></ruby>しました。<br>*(Nhãn mới đã in xong 1200 cái.)* |
| Hoa | <ruby>素晴<rt>すば</rt></ruby>らしいです。<ruby>高橋<rt>たかはし</rt></ruby>さん、QCの<ruby>進捗<rt>しんちょく</rt></ruby>は?<br>*(Tuyệt vời. Anh Takahashi, tiến độ QC?)* |
| Takahashi | <ruby>800<rt>はっぴゃく</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>残<rt>のこ</rt></ruby>り<ruby>400<rt>よんひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>、あと<ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>終<rt>お</rt></ruby>わります。<br>*(Đã kiểm 800 hộp. Còn 400, thêm 40 phút nữa là xong.)* |
| Hoa | マイさんとチャンさんは?<br>*(Mai và Trang thì sao?)* |
| Mai | <ruby>600<rt>ろっぴゃく</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>剥<rt>は</rt></ruby>がし<ruby>済<rt>ず</rt></ruby>みです。<ruby>順調<rt>じゅんちょう</rt></ruby>です。<br>*(Em bóc xong 600 hộp. Suôn sẻ ạ.)* |
| Trang | <ruby>私<rt>わたし</rt></ruby>は<ruby>500<rt>ごひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Em được 500 hộp. Em cố gắng tiếp ạ!)* |
| Hoa | お<ruby>二人<rt>ふたり</rt></ruby>とも、すごいスピードですね。<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>原料部<rt>げんりょうぶ</rt></ruby>のほうは?<br>*(Hai em tốc độ tốt quá. Chị Kimura, bên nguyên liệu sao ạ?)* |
| Kimura | <ruby>原料部<rt>げんりょうぶ</rt></ruby>と<ruby>新<rt>あたら</rt></ruby>しい<ruby>連絡体制<rt>れんらくたいせい</rt></ruby>について<ruby>合意<rt>ごうい</rt></ruby>しました。<ruby>明日<rt>あす</rt></ruby><ruby>文書化<rt>ぶんしょか</rt></ruby>します。<br>*(Đã thống nhất hệ thống liên lạc mới với bộ phận nguyên liệu. Mai sẽ văn bản hoá.)* |
| Hoa | みなさん、ありがとうございます。<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>り<ruby>2<rt>に</rt></ruby><ruby>時間以内<rt>じかんいない</rt></ruby>に<ruby>完了<rt>かんりょう</rt></ruby>できそうです。<br>*(Mọi người, cảm ơn. Có vẻ đúng hẹn xong trong 2 tiếng.)* |

---

## Tình huống 8 — Bên dây chuyền A2 · 15:00, học mẫu câu báo kết thúc xử lý

| Vai | Lời thoại |
|---|---|
| Takahashi | (giơ tay) ホアさん、<ruby>最後<rt>さいご</rt></ruby>の<ruby>1個<rt>いっこ</rt></ruby>、QC<ruby>確認<rt>かくにん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です!<br>*(Hoa-san, hộp cuối cùng, QC xong rồi!)* |
| Mai | <ruby>新<rt>あたら</rt></ruby>しいラベル<ruby>貼<rt>は</rt></ruby>り<ruby>替<rt>か</rt></ruby>えも<ruby>完了<rt>かんりょう</rt></ruby>!<br>*(Dán lại nhãn mới cũng xong rồi ạ!)* |
| Trang | <ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>全件処理<rt>ぜんけんしょり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です!<br>*(1200 hộp, đã xử lý xong toàn bộ!)* |
| Hoa | (gọi Tanaka qua bộ đàm) <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、ホアです。ラインA2、<ruby>全<rt>ぜん</rt></ruby><ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>のラベル<ruby>貼<rt>は</rt></ruby>り<ruby>替<rt>か</rt></ruby>えとQC<ruby>確認<rt>かくにん</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Tanaka, em Hoa. Dây chuyền A2, đã hoàn thành dán lại nhãn và QC cho cả 1200 hộp.)* |
| Tanaka | (đến tận nơi) お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>2<rt>に</rt></ruby><ruby>時間以内<rt>じかんいない</rt></ruby>、<ruby>素晴<rt>すば</rt></ruby>らしいスピードです。<br>*(Vất vả rồi. Trong 2 tiếng, tốc độ tuyệt vời.)* |
| Hoa | みなさんの<ruby>協力<rt>きょうりょく</rt></ruby>のおかげです。<br>*(Nhờ mọi người hợp tác ạ.)* |
| Tanaka | <ruby>明日<rt>あす</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>会議室<rt>かいぎしつ</rt></ruby>で<ruby>5<rt>ファイブ</rt></ruby>Why<ruby>分析<rt>ぶんせき</rt></ruby>と<ruby>再発防止策<rt>さいはつぼうしさく</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>をします。ホアさん、<ruby>司会<rt>しかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mai 9h sáng họp phân tích 5 Why và biện pháp ngăn tái phạm ở phòng họp. Hoa-san, em chủ trì.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 9 — Hành lang sau line · 15:30, học cách phản hồi đàn em

| Vai | Lời thoại |
|---|---|
| Trang | (mắt sáng) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にすごかったです!<br>*(Chị Hoa, tuyệt vời thật ạ!)* |
| Mai | あんなに<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>指示<rt>しじ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>せるなんて。<br>*(Bình tĩnh đưa chỉ thị như vậy.)* |
| Hoa | みなさんの<ruby>協力<rt>きょうりょく</rt></ruby>のおかげですよ。<ruby>2人<rt>ふたり</rt></ruby>とも、ラベル<ruby>剥<rt>は</rt></ruby>がしの<ruby>作業<rt>さぎょう</rt></ruby>がとても<ruby>正確<rt>せいかく</rt></ruby>でした。<br>*(Nhờ mọi người hợp tác đó. Hai đứa bóc nhãn cực kỳ chính xác.)* |
| Trang | <ruby>私<rt>わたし</rt></ruby>もいつか、ホア<ruby>姉<rt>ねえ</rt></ruby>さんみたいになれますか?<br>*(Em có thể trở thành như chị Hoa được không ạ?)* |
| Hoa | なれますよ。<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>もチャンさんと<ruby>同<rt>おな</rt></ruby>じでした。<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ<ruby>覚<rt>おぼ</rt></ruby>えれば、<ruby>必<rt>かなら</rt></ruby>ずできるようになります。<br>*(Được mà. 3 năm trước, chị cũng như Trang. Mỗi ngày học một chút, chắc chắn sẽ làm được.)* |
| Mai | <ruby>今日<rt>きょう</rt></ruby>、<ruby>一番<rt>いちばん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>になったのは「<ruby>急<rt>いそ</rt></ruby>がず<ruby>正確<rt>せいかく</rt></ruby>に」という<ruby>言葉<rt>ことば</rt></ruby>でした。<br>*(Hôm nay câu em học được nhất là "Đừng vội, làm chính xác".)* |
| Hoa | それは<ruby>食品工場<rt>しょくひんこうじょう</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>覚<rt>おぼ</rt></ruby>えておいてくださいね。<br>*(Đó là câu quan trọng nhất ở nhà máy thực phẩm. Hai đứa nhớ kỹ nhé.)* |

---

## Tình huống 10 — Phòng họp · Hôm sau 9:00, quan sát 工場長 dẫn dắt 5 Why

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>昨日<rt>きのう</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>の<ruby>5<rt>ファイブ</rt></ruby>Why<ruby>分析<rt>ぶんせき</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。Q1: なぜカシューナッツの<ruby>表示漏<rt>ひょうじも</rt></ruby>れが<ruby>発生<rt>はっせい</rt></ruby>しましたか?<br>*(Hôm nay phân tích 5 Why về sự cố hôm qua. Q1: Vì sao sót nhãn điều?)* |
| Satou | <ruby>原料変更<rt>げんりょうへんこう</rt></ruby>の<ruby>連絡<rt>れんらく</rt></ruby>がライン<ruby>側<rt>がわ</rt></ruby>に<ruby>遅<rt>おく</rt></ruby>れたからです。<br>*(Vì thông báo đổi nguyên liệu đến line muộn.)* |
| Hoa | Q2: なぜ<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れたのですか?<br>*(Q2: Vì sao thông báo muộn?)* |
| Kimura | メールだけで、<ruby>受信確認<rt>じゅしんかくにん</rt></ruby>の<ruby>仕組<rt>しく</rt></ruby>みがなかったからです。<br>*(Chỉ có email, không có cơ chế xác nhận đã nhận.)* |
| Hoa | Q3: なぜ<ruby>受信確認<rt>じゅしんかくにん</rt></ruby>の<ruby>仕組<rt>しく</rt></ruby>みがなかったのですか?<br>*(Q3: Vì sao không có cơ chế xác nhận đã nhận?)* |
| Kimura | <ruby>規定<rt>きてい</rt></ruby>に<ruby>原料変更時<rt>げんりょうへんこうじ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>プロセスが<ruby>記載<rt>きさい</rt></ruby>されていませんでした。<br>*(Quy định không ghi quy trình xác nhận khi đổi nguyên liệu.)* |
| Tanaka | <ruby>根本原因<rt>こんぽんげんいん</rt></ruby>はここですね。<ruby>規定<rt>きてい</rt></ruby>の<ruby>欠陥<rt>けっかん</rt></ruby>です。<br>*(Nguyên nhân gốc nằm đây. Quy định có khiếm khuyết.)* |
| Hoa | <ruby>再発防止策<rt>さいはつぼうしさく</rt></ruby>として、<ruby>原料変更時<rt>げんりょうへんこうじ</rt></ruby>はメール+<ruby>電話<rt>でんわ</rt></ruby>+<ruby>受信確認<rt>じゅしんかくにん</rt></ruby>サインの<ruby>3<rt>さん</rt></ruby><ruby>重<rt>じゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>規定<rt>きてい</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>することを<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Biện pháp ngăn tái phạm, em đề xuất thêm vào quy định: khi đổi nguyên liệu phải xác nhận 3 lớp — email + điện thoại + chữ ký xác nhận đã nhận.)* |
| Tanaka | <ruby>採用<rt>さいよう</rt></ruby>します。ホアさん、<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>規定改訂<rt>きていかいてい</rt></ruby>の<ruby>原案<rt>げんあん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Áp dụng. Hoa-san, đến tuần sau nộp dự thảo sửa quy định.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 11 — Phòng 工場長 · 10:30, được đề nghị thăng chức

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>があります。<br>*(Hoa-san, anh có chuyện muốn nói.)* |
| Hoa | はい、何でしょうか?<br>*(Vâng, có chuyện gì ạ?)* |
| Tanaka | <ruby>昨日<rt>きのう</rt></ruby>のリーダーシップ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしかったです。<ruby>冷静<rt>れいせい</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>、<ruby>明確<rt>めいかく</rt></ruby>な<ruby>指示<rt>しじ</rt></ruby>、<ruby>謙虚<rt>けんきょ</rt></ruby>な<ruby>姿勢<rt>しせい</rt></ruby>。<br>*(Lãnh đạo hôm qua tuyệt vời. Phán đoán bình tĩnh, chỉ thị rõ ràng, thái độ khiêm tốn.)* |
| Hoa | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Em không dám ạ.)* |
| Tanaka | <ruby>来年<rt>らいねん</rt></ruby>SSW1に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>わったら、ホアさんを<ruby>正式<rt>せいしき</rt></ruby>にチームリーダーに<ruby>任命<rt>にんめい</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えています。<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がります。<br>*(Sang năm khi chuyển sang SSW1, anh đang nghĩ chính thức bổ nhiệm em làm trưởng nhóm. Lương cũng tăng.)* |
| Hoa | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか? ありがとうございます。<br>*(Ơ, thật ạ? Em cảm ơn anh ạ.)* |
| Tanaka | すぐに<ruby>返事<rt>へんじ</rt></ruby>をしなくていいです。ゆっくり<ruby>考<rt>かんが</rt></ruby>えてください。<br>*(Không cần trả lời ngay. Em từ từ suy nghĩ.)* |
| Hoa | はい。<ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>をいただけますか?<br>*(Vâng. Cho em xin chút thời gian được không ạ?)* |
| Tanaka | もちろんです。<br>*(Tất nhiên.)* |

---

## Tình huống 12 — Ký túc · 21:00, gọi điện về cho mẹ (Cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng chuyên ngành qua hội thoại với mẹ.

| Vai | Lời thoại |
|---|---|
| Mẹ Hoa | (tiếng Việt) Hoa ơi, hôm nay con kể gì cho mẹ nghe đi. |
| Hoa | (tiếng Việt) Mẹ ơi, hôm nay con xử lý sự cố lớn nhất 3 năm. Dây chuyền cơm hộp sót nhãn cảnh báo điều — 1200 hộp lận. |
| Mẹ Hoa | (tiếng Việt) Trời, có ai làm sao không con? |
| Hoa | (tiếng Việt) Không mẹ, may là chưa xuất kho. Mà bên Nhật người dị ứng hạt điều mà ăn nhầm là đi cấp cứu liền, nên 表示漏れ (sót nhãn) là lỗi nặng lắm. |
| Mẹ Hoa | (tiếng Việt) Rồi con xử lý thế nào? |
| Hoa | (tiếng Việt) Anh Tanaka chủ xưởng giao con chỉ huy luôn. Con phân vai: anh Satou in nhãn mới, anh Takahashi bên QC kiểm, Mai với Trang bóc nhãn cũ, chị Kimura phụ trách hệ thống liên lạc. 2 tiếng xong hết. |
| Mẹ Hoa | (tiếng Việt) Con của mẹ giỏi quá. |
| Hoa | (tiếng Việt) Hôm sau con chủ trì họp 5 Why phân tích nguyên nhân gốc luôn mẹ. Hỏi 5 lần "tại sao" để ra được lỗi nằm ở quy định, không phải ở người. |
| Mẹ Hoa | (tiếng Việt) Hay đấy. Mà sao giọng con hơi lăn tăn? |
| Hoa | (tiếng Việt) Anh Tanaka nói sang năm con lên SSW1 sẽ chính thức làm trưởng nhóm, lương tăng. Nhưng con đang nghĩ chuyển việc đi công ty lớn hơn... |
| Mẹ Hoa | (tiếng Việt) Con cứ suy nghĩ kỹ. Cả đồng nghiệp lẫn lương, cả Mai với Trang con dìu dắt nữa. Không vội. |
| Hoa | (tiếng Việt) Vâng mẹ. Con sẽ nghĩ trong 1 năm. Mẹ ngủ ngon nha. |

---

## Đọng lại chương 4

Hoa trải qua sự cố lớn nhất 3 năm và lần đầu được giao **chỉ huy xử lý khủng hoảng** ở một line sản xuất. Học được chuỗi mẫu câu cho người chịu trách nhiệm tại nhà máy thực phẩm: **hô báo khẩn cấp** (緊急です・〜停止します), **báo cáo cấp trên theo 5W1H** (本日〜時、ライン〜で〜を確認しました・申し訳ございません), **phân vai team** (〜先輩、〜をお願いします・〜さんは〜を担当してください), **hỏi lại để xác nhận quy trình** (〜ということですね・トレーサビリティ), **theo dõi tiến độ** (進捗確認をします・いかがですか), và **dẫn dắt 5 Why** (なぜ〜したのですか・根本原因はここですね). Quan sát 工場長 cách bình tĩnh giao quyền và phân tích lỗi nằm ở quy định chứ không đổ tại cá nhân. Cuối ngày Hoa nhận ra: tiếng Nhật trong khủng hoảng không phải tiếng Nhật hoa mỹ — mà là tiếng Nhật **ngắn, rõ, đúng thứ tự, có ghi chép** — đó chính là phẩm chất của một リーダー ngành thực phẩm.

> Từ vựng & mẫu câu chương này: 緊急・表示漏れ・アレルゲン・カシューナッツ・不適合品・クラスIIリコール・出荷・回収・指揮を取る・食品衛生責任者・HACCPコーディネーター・トレーサビリティ・抜き取り検査・進捗確認・5Why分析・根本原因・再発防止策・受信確認・規定・任命・申し訳ございません・〜をお願いします・〜ということですね・進捗はいかがですか・なぜ〜したのですか

## Bí quyết chương

- **Người xử lý khủng hoảng** = bình tĩnh + phân vai rõ + check tiến độ mỗi giờ + ghi chép.
- **Sót nhãn allergen Class II**: nếu chưa xuất kho = dán lại nhãn, không cần thu hồi từ ngoài.
- **5 Why** dùng đúng = ra lỗi nằm ở **quy định/quy trình**, không đổ tại cá nhân.
- **Chuỗi chuẩn bị**: lời mời thăng chức ở t04 → tension chuyển việc vs ở lại kết quả ở chương sau.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 表示 | ひょうじ | BIỂU THỊ | nhãn ghi, hiển thị |
| カシューナッツ | カシューナッツ | — | hạt điều |
| 追加 | ついか | TRUY GIA | thêm vào |
| 緊急 | きんきゅう | KHẨN CẤP | khẩn cấp |
| アレルゲン | アレルゲン | — | allergen, chất gây dị ứng |
| 表示漏れ | ひょうじもれ | BIỂU THỊ LẬU | sót nhãn |
| 停止 | ていし | ĐÌNH CHỈ | dừng lại |
| 通過 | つうか | THÔNG QUÁ | đi qua |
| 出荷 | しゅっか | XUẤT HÀ | xuất hàng |
| クラスIIリコール | クラスツーリコール | — | thu hồi loại II |
| 製品 | せいひん | CHẾ PHẨM | sản phẩm |
| 区分 | くぶん | KHU PHÂN | phân loại |
| 不適合品 | ふてきごうひん | BẤT THÍCH HỢP PHẨM | hàng không đạt |
| 印 | しるし | ẤN | dấu hiệu |
| 状況 | じょうきょう | TRẠNG HUỐNG | tình hình |
| 申し訳 | もうしわけ | THÂN DỊCH | lời xin lỗi |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 原料部 | げんりょうぶ | NGUYÊN LIỆU BỘ | bộ phận nguyên liệu |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 更新 | こうしん | CANH TÂN | cập nhật |
| 回収 | かいしゅう | HỒI THU | thu hồi |
| 出荷可能 | しゅっかかのう | XUẤT HÀ KHẢ NĂNG | có thể xuất hàng |
| 対応 | たいおう | ĐỐI ỨNG | xử lý, đối phó |
| 指揮 | しき | CHỈ HUY | chỉ huy |
| 適任 | てきにん | THÍCH NHIỆM | người phù hợp |
| 役割 | やくわり | DỊCH CÁT | vai trò |
| 分担 | ぶんたん | PHÂN ĐẢM | phân công |
| 印刷 | いんさつ | ẤN LOÁT | in ấn |
| 立場 | たちば | LẬP TRƯỜNG | vai trò, vị trí |
| 記録 | きろく | KÝ LỤC | ghi chép |
| 剥がす | はがす | BÁC | bóc, gỡ |
| 連絡体制 | れんらくたいせい | LIÊN LẠC THỂ CHẾ | hệ thống liên lạc |
| 事故 | じこ | SỰ CỐ | sự cố |
| 解決 | かいけつ | GIẢI QUYẾT | giải quyết |
| 追跡 | ついせき | TRUY TÍCH | truy vết |
| トレーサビリティ | トレーサビリティ | — | truy xuất nguồn gốc |
| 仕組み | しくみ | SĨ TỔ | cơ chế |
| 小麦 | こむぎ | TIỂU MẠCH | bột mì |
| 乳 | にゅう | NHŨ | sữa |
| 大豆 | だいず | ĐẠI ĐẬU | đậu nành |
| 品目 | ひんもく | PHẨM MỤC | hạng mục |
| 記載 | きさい | KÝ TẢI | ghi vào |
| 消費者庁 | しょうひしゃちょう | TIÊU PHÍ GIẢ SẢNH | Tổng cục Tiêu dùng |
| 基準 | きじゅん | CƠ CHUẨN | tiêu chuẩn |
| 抜き取り検査 | ぬきとりけんさ | BẠT THỦ KIỂM TRA | kiểm tra ngẫu nhiên |
| 進捗 | しんちょく | TIẾN HẬU | tiến độ |
| 完成 | かんせい | HOÀN THÀNH | hoàn thành |
| 文書化 | ぶんしょか | VĂN THƯ HOÁ | văn bản hoá |
| 全件処理 | ぜんけんしょり | TOÀN KIỆN XỬ LÝ | xử lý toàn bộ |
| 協力 | きょうりょく | HIỆP LỰC | hợp tác |
| 再発防止策 | さいはつぼうしさく | TÁI PHÁT PHÒNG CHỈ SÁCH | biện pháp ngăn tái phạm |
| 司会 | しかい | TƯ HỘI | chủ trì |
| 指示 | しじ | CHỈ THỊ | chỉ thị |
| 分析 | ぶんせき | PHÂN TÍCH | phân tích |
| 受信確認 | じゅしんかくにん | THỌ TÍN XÁC NHẬN | xác nhận đã nhận |
| 規定 | きてい | QUY ĐỊNH | quy định |
| 根本原因 | こんぽんげんいん | CĂN BẢN NGUYÊN NHÂN | nguyên nhân gốc |
| 欠陥 | けっかん | KHIẾM HÃM | khiếm khuyết |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 採用 | さいよう | THẢI DỤNG | áp dụng, tuyển dụng |
| 改訂 | かいてい | CẢI ĐÍNH | sửa đổi |
| 原案 | げんあん | NGUYÊN ÁN | dự thảo |
| 冷静 | れいせい | LÃNH TĨNH | bình tĩnh |
| 明確 | めいかく | MINH XÁC | rõ ràng |
| 謙虚 | けんきょ | KHIÊM HƯ | khiêm tốn |
| 姿勢 | しせい | TƯ THẾ | thái độ, tư thế |
| 任命 | にんめい | NHIỆM MỆNH | bổ nhiệm |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000005, 800000013, NULL, 'markdown_book', 'T5. Ngày thi đỗ kỳ thi kỹ năng quốc gia (技能検定3級合格)', '# Sách thực tập sinh thực phẩm · T5. Ngày thi đỗ kỳ thi kỹ năng quốc gia (技能検定3級合格)

> **Mục tiêu nhân vật:** Hoa (24 tuổi, Saitama) dự thi 技能検定3級 ngành 食品製造 ngay tại nhà máy đang làm. Học các mẫu hội thoại tiếng Nhật cho người thi kỹ năng quốc gia: chào hỏi cấp trên + 試験官 (giám khảo JITCO) buổi sáng thi, **báo cáo từng bước thao tác** khi làm thực hành (計量・包装・衛生管理), **trả lời 口頭試問** về HACCP và xử lý 異物混入, **hỏi lại lễ phép** khi chưa rõ yêu cầu của examiner (〜というのは?), **nhận phản hồi và khiêm tốn cảm ơn** (恐縮です・ありがとうございます), và mẫu câu hướng dẫn đàn em (kouhai) ôn thi 3級 năm sau.

---

## Bối cảnh

Tháng 8 năm 2028, Saitama đang nóng đỉnh điểm 36°C. Hoa năm thứ 3 chương trình 技能実習, đã ôn 2 tháng cùng chủ nhiệm Suzuki. Examiner Morita từ JITCO bay từ Tokyo lên nhà máy 1 ngày để chấm thi 実技 + 口頭試問. Mai và Trang — kouhai năm 2 sẽ thi 3級 năm sau — đến cổ vũ và quan sát học hỏi. Chương này tập trung các mẫu câu thực dụng ngày thi kỹ năng quốc gia: tường thuật thao tác bằng tiếng Nhật, hỏi đáp với giám khảo, trả lời vấn đáp HACCP, và cách nhận lời khen của cấp trên.

---

## Tình huống 1 — Phòng staff nhà máy · 6:00, chào hỏi đàn em đến cổ vũ trước giờ thi

| Vai | Lời thoại |
|---|---|
| Hoa | (tự nhủ, ngồi xuống ghế) <ruby>今日<rt>きょう</rt></ruby>は<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>です。<ruby>緊張<rt>きんちょう</rt></ruby>しますが、<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>十分<rt>じゅうぶん</rt></ruby>しました。<br>*(Hôm nay là ngày thi 技能検定 3級. Hồi hộp thật, nhưng mình đã chuẩn bị đủ rồi.)* |
| Mai | (mở cửa, hơi thở gấp) <ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます！<ruby>応援<rt>おうえん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Chị ơi, chào buổi sáng! Em đến cổ vũ ạ.)* |
| Hoa | マイちゃん、ありがとう。<ruby>早<rt>はや</rt></ruby>いね。<br>*(Mai, cảm ơn em. Đến sớm thế.)* |
| Trang | (vào sau Mai, cầm hộp bánh nhỏ) <ruby>私<rt>わたし</rt></ruby>もです！これ、ベトナムのお<ruby>菓子<rt>かし</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Em cũng đến ạ! Đây, bánh Việt Nam. Chúc chị cố lên.)* |
| Hoa | (mỉm cười, đỡ hộp bánh) ありがとう。<ruby>二人<rt>ふたり</rt></ruby>がいてくれて、<ruby>力<rt>ちから</rt></ruby>になります。<br>*(Cảm ơn em. Có hai đứa cạnh, chị thấy có thêm sức.)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby><ruby>私<rt>わたし</rt></ruby>も<ruby>受<rt>う</rt></ruby>けますから、<ruby>今日<rt>きょう</rt></ruby>はしっかり<ruby>見<rt>み</rt></ruby>させてください。<br>*(Chị ơi, năm sau em cũng thi, hôm nay em xin được quan sát kỹ ạ.)* |
| Hoa | うん。マイちゃんが<ruby>見<rt>み</rt></ruby>てくれると<ruby>嬉<rt>うれ</rt></ruby>しい。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になるね。<br>*(Ừ. Có em quan sát chị thấy vui. Cùng học hỏi nhau nhé.)* |

---

## Tình huống 2 — Văn phòng chủ nhiệm · 6:30, Suzuki dặn dò flow thi và 3 項目 thực hành

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、おはよう。<ruby>準備<rt>じゅんび</rt></ruby>はいい？<br>*(Hoa, chào. Em sẵn sàng chưa?)* |
| Hoa | はい、<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, chủ nhiệm, em ổn ạ.)* |
| Suzuki | <ruby>試験官<rt>しけんかん</rt></ruby>は<ruby>東京<rt>とうきょう</rt></ruby>から<ruby>来<rt>く</rt></ruby>る<ruby>JITCO<rt>ジツコ</rt></ruby>の<ruby>森田<rt>もりた</rt></ruby>さんです。<ruby>厳<rt>きび</rt></ruby>しいけど、フェアな<ruby>方<rt>かた</rt></ruby>ですよ。<br>*(Giám khảo là anh Morita từ JITCO Tokyo. Nghiêm khắc nhưng công bằng đấy.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Suzuki | <ruby>普段通<rt>ふだんどお</rt></ruby>りやれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>緊張<rt>きんちょう</rt></ruby>しないでね。<br>*(Cứ làm như bình thường là được. Đừng căng nhé.)* |
| Hoa | はい。<ruby>実技試験<rt>じつぎしけん</rt></ruby>の<ruby>項目<rt>こうもく</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただけますか？<br>*(Vâng. Em xin phép xác nhận lại các hạng mục thực hành một lần nữa được không ạ?)* |
| Suzuki | もちろん。<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>、<ruby>計<rt>けい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<ruby>項目<rt>こうもく</rt></ruby><ruby>1<rt>いち</rt></ruby>は<ruby>原料<rt>げんりょう</rt></ruby><ruby>計量<rt>けいりょう</rt></ruby>、<ruby>項目<rt>こうもく</rt></ruby><ruby>2<rt>に</rt></ruby>は<ruby>包装<rt>ほうそう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>、<ruby>項目<rt>こうもく</rt></ruby><ruby>3<rt>さん</rt></ruby>は<ruby>衛生<rt>えいせい</rt></ruby><ruby>管理<rt>かんり</rt></ruby><ruby>記録<rt>きろく</rt></ruby>です。<br>*(Tất nhiên. Thực hành 3 mục, tổng 2 tiếng. Mục 1 cân nguyên liệu, mục 2 thao tác đóng gói, mục 3 ghi chép quản lý vệ sinh.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>記録<rt>きろく</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>書<rt>か</rt></ruby>くようにします。<br>*(Em hiểu rồi. Em sẽ chú ý ghi chép cẩn thận.)* |
| Suzuki | そう、<ruby>記録<rt>きろく</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。<ruby>項目<rt>こうもく</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>もあるから、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>答<rt>こた</rt></ruby>えてね。<br>*(Đúng, ghi chép quan trọng. Sau các mục còn vấn đáp miệng nữa, bình tĩnh trả lời nhé.)* |
| Hoa | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |

---

## Tình huống 3 — Cổng nhà máy · 8:00, chào 試験官 và làm quen JITCO Morita

| Vai | Lời thoại |
|---|---|
| Tanaka | (cúi đầu chào examiner) <ruby>森田<rt>もりた</rt></ruby>さん、お<ruby>世話<rt>せわ</rt></ruby>になります。タナカと<ruby>申<rt>もう</rt></ruby>します。<br>*(Anh Morita, cảm ơn anh đã đến. Tôi tên là Tanaka.)* |
| Examiner Morita | <ruby>JITCO<rt>ジツコ</rt></ruby>の<ruby>森田<rt>もりた</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tôi là Morita từ JITCO. Hôm nay xin được hợp tác ạ.)* |
| Tanaka | こちらが<ruby>受験者<rt>じゅけんしゃ</rt></ruby>のホアさんです。<br>*(Đây là Hoa-san, người dự thi.)* |
| Hoa | (cúi đầu) <ruby>初<rt>はじ</rt></ruby>めまして。グエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Rất hân hạnh. Em tên là Nguyễn Thị Hoa. Hôm nay mong anh chỉ bảo ạ.)* |
| Examiner Morita | よろしく、ホアさん。<ruby>緊張<rt>きんちょう</rt></ruby>しないで、<ruby>普段通<rt>ふだんどお</rt></ruby>りやってくださいね。<br>*(Chào em Hoa. Đừng căng, cứ làm như bình thường nhé.)* |
| Hoa | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Examiner Morita | では、<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょうか。<ruby>最初<rt>さいしょ</rt></ruby>はラインAでよろしいですか？<br>*(Vậy ta bắt đầu thi thực hành nhé. Bắt đầu ở dây chuyền A được chứ?)* |
| Hoa | はい、ラインAへご<ruby>案内<rt>あんない</rt></ruby>します。こちらへどうぞ。<br>*(Vâng, em xin dẫn anh sang dây chuyền A ạ. Mời anh theo lối này.)* |

---

## Tình huống 4 — Dây chuyền A · 8:30, mục 1 cân nguyên liệu — tường thuật từng bước

| Vai | Lời thoại |
|---|---|
| Examiner Morita | (đưa tờ công thức) では、<ruby>原料<rt>げんりょう</rt></ruby><ruby>計量<rt>けいりょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。レシピはこれです。<ruby>小麦粉<rt>こむぎこ</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby>g、<ruby>砂糖<rt>さとう</rt></ruby><ruby>200<rt>にひゃく</rt></ruby>g、<ruby>塩<rt>しお</rt></ruby><ruby>10<rt>じゅう</rt></ruby>g。<br>*(Vậy, làm cân nguyên liệu cho tôi xem nhé. Công thức đây. Bột mì 500g, đường 200g, muối 10g.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。まず<ruby>計量器<rt>けいりょうき</rt></ruby>のキャリブレーションを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em rõ ạ. Trước tiên em kiểm tra hiệu chuẩn cân.)* |
| Examiner Morita | (vừa quan sát vừa ghi vào sổ) はい、どうぞ。<br>*(Vâng, mời em.)* |
| Hoa | ゼロ<ruby>点<rt>てん</rt></ruby>をセットしました。<ruby>次<rt>つぎ</rt></ruby>に<ruby>小麦粉<rt>こむぎこ</rt></ruby>を<ruby>計<rt>はか</rt></ruby>ります。<br>*(Em đã set về điểm 0. Tiếp theo cân bột mì.)* |
| Hoa | (đổ bột chậm rãi, theo dõi mặt cân) <ruby>500<rt>ごひゃく</rt></ruby>g、<ruby>誤差<rt>ごさ</rt></ruby>は±<ruby>2<rt>に</rt></ruby>g<ruby>以内<rt>いない</rt></ruby>です。<br>*(500g, sai số trong ±2g ạ.)* |
| Examiner Morita | <ruby>記録<rt>きろく</rt></ruby>はどうしますか？<br>*(Phần ghi chép em làm thế nào?)* |
| Hoa | <ruby>計量<rt>けいりょう</rt></ruby><ruby>記録<rt>きろく</rt></ruby><ruby>票<rt>ひょう</rt></ruby>に<ruby>時刻<rt>じこく</rt></ruby>、<ruby>担当者<rt>たんとうしゃ</rt></ruby><ruby>名<rt>めい</rt></ruby>、<ruby>実測値<rt>じっそくち</rt></ruby>を<ruby>記入<rt>きにゅう</rt></ruby>します。<br>*(Em ghi vào phiếu cân: giờ, tên người thực hiện, giá trị đo thực tế.)* |
| Hoa | (vừa ghi vừa nói) <ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>35<rt>さんじゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>、グエン・ティ・ホア、<ruby>小麦粉<rt>こむぎこ</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby>g。<br>*(8 giờ 35 phút, Nguyễn Thị Hoa, bột mì 500g.)* |
| Examiner Morita | いいですね。<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Tốt. Em làm tiếp đi.)* |

---

## Tình huống 5 — Line đóng gói · 9:30, mục 2 thao tác đóng gói — kiểm hạn sử dụng và mã lô

| Vai | Lời thoại |
|---|---|
| Examiner Morita | <ruby>次<rt>つぎ</rt></ruby>は<ruby>包装<rt>ほうそう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>です。<ruby>10<rt>じゅう</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>包<rt>つつ</rt></ruby>んでください。<br>*(Tiếp theo là thao tác đóng gói. Em đóng 10 hộp nhé.)* |
| Hoa | はい。まず<ruby>手<rt>て</rt></ruby><ruby>洗<rt>あら</rt></ruby>いをしてから<ruby>手袋<rt>てぶくろ</rt></ruby>を<ruby>装着<rt>そうちゃく</rt></ruby>します。<br>*(Vâng. Trước tiên em rửa tay rồi đeo găng ạ.)* |
| Hoa | (kiểm tra bao bì trước khi đóng) <ruby>包装<rt>ほうそう</rt></ruby><ruby>材<rt>ざい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>賞味期限<rt>しょうみきげん</rt></ruby><ruby>2029<rt>にせんにじゅうきゅう</rt></ruby>/<ruby>3<rt>さん</rt></ruby>/<ruby>15<rt>じゅうご</rt></ruby>、ロット<ruby>番号<rt>ばんごう</rt></ruby>L<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>0815<rt>ぜろはちいちご</rt></ruby>です。<br>*(Em kiểm tra bao bì. Hạn sử dụng 2029/3/15, mã lô L20280815 ạ.)* |
| Examiner Morita | すみません、<ruby>確認<rt>かくにん</rt></ruby>のタイミングはいつですか？<br>*(Xin hỏi, thời điểm kiểm tra là khi nào?)* |
| Hoa | <ruby>包装<rt>ほうそう</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>する<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>途中<rt>とちゅう</rt></ruby>でロットが<ruby>変<rt>か</rt></ruby>わったらもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em nhất thiết kiểm tra trước khi bắt đầu đóng gói. Nếu đổi lô giữa chừng thì kiểm tra lại lần nữa.)* |
| Examiner Morita | (gật đầu, ghi chú) はい、<ruby>続<rt>つづ</rt></ruby>けて。<br>*(Vâng, làm tiếp đi.)* |
| Hoa | (đóng gói cẩn thận từng hộp) <ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>、<ruby>密封<rt>みっぷう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>...<ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>...<br>*(Hộp 1, kiểm tra độ kín. Hộp 2... hộp 3...)* |
| Hoa | (15 phút sau, đặt hộp cuối) <ruby>10<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>不良品<rt>ふりょうひん</rt></ruby>は<ruby>0<rt>ゼロ</rt></ruby>です。<br>*(Em đã hoàn thành 10 hộp. Hàng lỗi 0 ạ.)* |
| Examiner Morita | <ruby>速<rt>はや</rt></ruby>くて<ruby>正確<rt>せいかく</rt></ruby>ですね。<br>*(Nhanh và chính xác đấy.)* |
| Hoa | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 6 — Phòng QC · 10:30, mục 3 ghi 衛生管理記録 và xác nhận nồng độ tẩy rửa

| Vai | Lời thoại |
|---|---|
| Examiner Morita | <ruby>最後<rt>さいご</rt></ruby>に、<ruby>本日<rt>ほんじつ</rt></ruby>のラインAの<ruby>衛生<rt>えいせい</rt></ruby><ruby>管理<rt>かんり</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>記入<rt>きにゅう</rt></ruby>してください。<br>*(Cuối cùng, em ghi phiếu quản lý vệ sinh dây chuyền A hôm nay nhé.)* |
| Hoa | はい。<ruby>記入<rt>きにゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>は<ruby>清掃<rt>せいそう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>、<ruby>使用<rt>しよう</rt></ruby><ruby>洗剤<rt>せんざい</rt></ruby>、<ruby>担当者<rt>たんとうしゃ</rt></ruby>、<ruby>確認者<rt>かくにんしゃ</rt></ruby>です。<br>*(Vâng. Các mục cần ghi gồm giờ bắt đầu vệ sinh, hoá chất sử dụng, người thực hiện, người kiểm tra.)* |
| Hoa | <ruby>使用<rt>しよう</rt></ruby><ruby>洗剤<rt>せんざい</rt></ruby>は<ruby>次亜塩素酸<rt>じあえんそさん</rt></ruby>ナトリウム<ruby>200<rt>にひゃく</rt></ruby><ruby>ppm<rt>ピーピーエム</rt></ruby>です。<br>*(Hoá chất tẩy rửa: Natri hypochlorit 200ppm.)* |
| Hoa | <ruby>濃度<rt>のうど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>はテストペーパーを<ruby>使用<rt>しよう</rt></ruby>します。<br>*(Kiểm tra nồng độ em dùng giấy thử ạ.)* |
| Examiner Morita | <ruby>濃度<rt>のうど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>毎回<rt>まいかい</rt></ruby>するのは<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Việc kiểm nồng độ mỗi lần rất quan trọng. Em có hiểu lý do không?)* |
| Hoa | はい。<ruby>濃度<rt>のうど</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないと<ruby>殺菌<rt>さっきん</rt></ruby><ruby>効果<rt>こうか</rt></ruby>がありません。<ruby>濃<rt>こ</rt></ruby>すぎても<ruby>食品<rt>しょくひん</rt></ruby>に<ruby>残留<rt>ざんりゅう</rt></ruby>するリスクがあります。<br>*(Vâng. Nồng độ thiếu thì không có tác dụng sát trùng. Đậm quá thì có nguy cơ tồn dư trên thực phẩm.)* |
| Examiner Morita | (gật đầu, ghi điểm) いいですね。<ruby>記録<rt>きろく</rt></ruby>を<ruby>完了<rt>かんりょう</rt></ruby>してください。<br>*(Tốt. Em hoàn thành ghi chép đi.)* |
| Hoa | はい、<ruby>記入<rt>きにゅう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em đã ghi xong. Mời anh xác nhận ạ.)* |

---

## Tình huống 7 — Phòng QC · 11:00, 口頭試問 — trả lời 7 nguyên tắc HACCP và xử lý 異物混入

| Vai | Lời thoại |
|---|---|
| Examiner Morita | では、<ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<ruby>HACCP<rt>ハサップ</rt></ruby>の<ruby>7<rt>なな</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>を<ruby>言<rt>い</rt></ruby>えますか？<br>*(Vậy chuyển sang vấn đáp. Em đọc 7 nguyên tắc HACCP được không?)* |
| Hoa | はい、<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<ruby>1<rt>いち</rt></ruby>、<ruby>危害<rt>きがい</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>重要<rt>じゅうよう</rt></ruby><ruby>管理点<rt>かんりてん</rt></ruby><ruby>CCP<rt>シーシーピー</rt></ruby>の<ruby>決定<rt>けってい</rt></ruby>。<br>*(Vâng, em đọc theo thứ tự. 1, phân tích mối nguy. 2, xác định điểm kiểm soát tới hạn CCP.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby>、<ruby>管理基準<rt>かんりきじゅん</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby>。<ruby>4<rt>よん</rt></ruby>、モニタリング<ruby>方法<rt>ほうほう</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby>。<br>*(3, thiết lập tiêu chuẩn quản lý. 4, thiết lập phương pháp giám sát.)* |
| Hoa | <ruby>5<rt>ご</rt></ruby>、<ruby>是正<rt>ぜせい</rt></ruby><ruby>措置<rt>そち</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby>。<ruby>6<rt>ろく</rt></ruby>、<ruby>検証<rt>けんしょう</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby>。<ruby>7<rt>なな</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby>の<ruby>文書化<rt>ぶんしょか</rt></ruby>です。<br>*(5, thiết lập hành động khắc phục. 6, thiết lập phương pháp kiểm chứng. 7, văn bản hoá ghi chép.)* |
| Examiner Morita | <ruby>完璧<rt>かんぺき</rt></ruby>ですね。では<ruby>最後<rt>さいご</rt></ruby>の<ruby>質問<rt>しつもん</rt></ruby>。<ruby>異物混入<rt>いぶつこんにゅう</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>したらどうしますか？<br>*(Hoàn hảo. Vậy câu cuối. Nếu phát hiện dị vật trộn lẫn thì em làm gì?)* |
| Hoa | すみません、「<ruby>発見<rt>はっけん</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>」というのは、<ruby>自分<rt>じぶん</rt></ruby>のラインの<ruby>製品<rt>せいひん</rt></ruby>で<ruby>見<rt>み</rt></ruby>つけた<ruby>場合<rt>ばあい</rt></ruby>でよろしいですか？<br>*(Xin lỗi, "trường hợp phát hiện" ý anh là trường hợp tìm thấy trong sản phẩm trên line mình đúng không ạ?)* |
| Examiner Morita | はい、その<ruby>通<rt>とお</rt></ruby>りです。<br>*(Đúng, chính xác.)* |
| Hoa | はい。まず<ruby>即座<rt>そくざ</rt></ruby>にラインを<ruby>停止<rt>ていし</rt></ruby>します。<ruby>該当<rt>がいとう</rt></ruby>ロットを<ruby>隔離<rt>かくり</rt></ruby>し、<ruby>上司<rt>じょうし</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng. Trước tiên em sẽ dừng dây chuyền ngay lập tức. Sau đó cách ly lô liên quan và báo cáo cấp trên.)* |
| Hoa | <ruby>次<rt>つぎ</rt></ruby>に<ruby>原因<rt>げんいん</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>い、<ruby>是正<rt>ぜせい</rt></ruby><ruby>措置<rt>そち</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>します。<ruby>最後<rt>さいご</rt></ruby>に<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止策<rt>ぼうしさく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てます。<br>*(Tiếp theo điều tra nguyên nhân và ghi biện pháp khắc phục. Cuối cùng lập biện pháp phòng tái phát.)* |
| Examiner Morita | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>答<rt>こた</rt></ruby>えです。<ruby>以上<rt>いじょう</rt></ruby>で<ruby>試験<rt>しけん</rt></ruby>を<ruby>終了<rt>しゅうりょう</rt></ruby>します。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Câu trả lời tuyệt vời. Đến đây kết thúc kỳ thi. Em vất vả rồi.)* |
| Hoa | (cúi đầu sâu) ありがとうございました。<br>*(Em xin cảm ơn ạ.)* |

---

## Tình huống 8 — Phòng staff nghỉ trưa · 12:00, Hoa chia sẻ kinh nghiệm thi cho kouhai (dạy đàn em)

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです！どうでしたか？<br>*(Chị ơi, vất vả rồi! Sao rồi ạ?)* |
| Hoa | <ruby>正式<rt>せいしき</rt></ruby>な<ruby>結果<rt>けっか</rt></ruby>は<ruby>分<rt>わ</rt></ruby>からないけど、ベストは<ruby>尽<rt>つ</rt></ruby>くしたよ。<br>*(Kết quả chính thức thì chưa biết, nhưng chị đã làm hết sức.)* |
| Trang | <ruby>試験官<rt>しけんかん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>、<ruby>怖<rt>こわ</rt></ruby>そうでしたか？<br>*(Anh giám khảo trông sợ không ạ?)* |
| Hoa | ううん、<ruby>優<rt>やさ</rt></ruby>しかった。<ruby>分<rt>わ</rt></ruby>からないことは「〜というのは？」と<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<br>*(Không, hiền lắm. Có gì không rõ thì cứ hỏi lại "〜nghĩa là?" cũng không sao đâu.)* |
| Mai | <ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>はどんな<ruby>質問<rt>しつもん</rt></ruby>でしたか？<br>*(Phần vấn đáp họ hỏi câu gì ạ?)* |
| Hoa | <ruby>HACCP<rt>ハサップ</rt></ruby>の<ruby>7<rt>なな</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>と<ruby>異物混入<rt>いぶつこんにゅう</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>。<ruby>7<rt>なな</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>は<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>楽<rt>らく</rt></ruby>だよ。<br>*(7 nguyên tắc HACCP và cách xử lý dị vật. Học 7 nguyên tắc theo thứ tự thì dễ nhớ lắm.)* |
| Trang | <ruby>記録<rt>きろく</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>のコツはありますか？<br>*(Chị có mẹo viết phiếu ghi chép không ạ?)* |
| Hoa | <ruby>時刻<rt>じこく</rt></ruby>・<ruby>担当者<rt>たんとうしゃ</rt></ruby>・<ruby>実測値<rt>じっそくち</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>書<rt>か</rt></ruby>く。それから<ruby>濃度<rt>のうど</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>もメモする。<br>*(Nhất định ghi giờ, người thực hiện, giá trị đo. Rồi cách kiểm nồng độ cũng note vào nữa.)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>のノートをコピーしてもいいですか？<br>*(Em copy ghi chép của chị được không ạ?)* |
| Hoa | もちろん。<ruby>来年<rt>らいねん</rt></ruby>マイちゃんも<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>するよ。<br>*(Được chứ. Năm sau Mai nhất định đỗ luôn.)* |

---

## Tình huống 9 — Phòng họp · 13:00, examiner cho cảm nhận sơ bộ — nhận lời khen khiêm tốn

| Vai | Lời thoại |
|---|---|
| Examiner Morita | ホアさん、ちょっといいですか？<br>*(Hoa-san, gặp một chút được không?)* |
| Hoa | はい、<ruby>森田<rt>もりた</rt></ruby>さん。<br>*(Vâng, anh Morita.)* |
| Examiner Morita | <ruby>結果<rt>けっか</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby><ruby>正式<rt>せいしき</rt></ruby>に<ruby>通知<rt>つうち</rt></ruby>しますが、<ruby>今<rt>いま</rt></ruby><ruby>感想<rt>かんそう</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>しお<ruby>伝<rt>つた</rt></ruby>えしてもいいですか？<br>*(Kết quả sẽ thông báo chính thức sau, nhưng giờ tôi nói cảm nhận một chút được không?)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nghe ạ.)* |
| Examiner Morita | ホアさんは<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>のレベルを<ruby>大<rt>おお</rt></ruby>きく<ruby>超<rt>こ</rt></ruby>えていますよ。<ruby>特<rt>とく</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>の<ruby>正確<rt>せいかく</rt></ruby>さと<ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>のレベルが<ruby>高<rt>たか</rt></ruby>いです。<br>*(Hoa-san đã vượt xa mức 3級 đấy. Đặc biệt độ chính xác ghi chép và mức trả lời vấn đáp rất cao.)* |
| Hoa | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。スズキ<ruby>主任<rt>しゅにん</rt></ruby>と<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>HACCP<rt>ハサップ</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>のおかげです。<br>*(Em không dám ạ. Tất cả là nhờ chủ nhiệm Suzuki và khoá đào tạo HACCP của công ty.)* |
| Examiner Morita | <ruby>謙虚<rt>けんきょ</rt></ruby>ですね。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてもいいかもしれません。<br>*(Khiêm tốn nhỉ. Có khi em nên thi cả 2級 nữa.)* |
| Hoa | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>...すみません、「<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんな<ruby>条件<rt>じょうけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか？<br>*(2 級... xin lỗi, "thi 2級" cụ thể cần điều kiện gì ạ?)* |
| Examiner Morita | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>SSW1<rt>エスエスダブリューワン</rt></ruby><ruby>移行後<rt>いこうご</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>してみてください。<br>*(2 級 cần kinh nghiệm thực tế từ 3 năm trở lên. Sau khi chuyển SSW1 em thử thách thi đi.)* |
| Hoa | はい、<ruby>考<rt>かんが</rt></ruby>えさせていただきます。<br>*(Vâng, em xin được suy nghĩ thêm ạ.)* |

---

## Tình huống 10 — Văn phòng · 14:00, Tanaka nghe đánh giá sơ bộ và lời khen mô hình đào tạo

| Vai | Lời thoại |
|---|---|
| Examiner Morita | タナカさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Anh Tanaka, hôm nay cảm ơn anh đã hỗ trợ.)* |
| Tanaka | こちらこそ、ありがとうございます。ホアさんはどうでしたか？<br>*(Tôi cũng vậy, cảm ơn anh. Hoa-san thế nào ạ?)* |
| Examiner Morita | <ruby>正式<rt>せいしき</rt></ruby><ruby>結果<rt>けっか</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>ですが、<ruby>合格<rt>ごうかく</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>でしょう。<br>*(Kết quả chính thức 2 tuần nữa, nhưng chắc chắn đỗ.)* |
| Tanaka | (mỉm cười rạng rỡ) ありがとうございます！<br>*(Cảm ơn anh!)* |
| Examiner Morita | <ruby>記録<rt>きろく</rt></ruby><ruby>管理<rt>かんり</rt></ruby>のレベルが<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>高<rt>たか</rt></ruby>いです。<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>教育<rt>きょういく</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>が<ruby>素晴<rt>すば</rt></ruby>らしいですね。<br>*(Trình độ quản lý ghi chép rất cao. Cơ chế đào tạo của công ty anh thật tuyệt vời.)* |
| Tanaka | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。スズキ<ruby>主任<rt>しゅにん</rt></ruby>がホアさんをよく<ruby>指導<rt>しどう</rt></ruby>してくれました。<br>*(Em không dám ạ. Chủ nhiệm Suzuki đã chỉ dạy Hoa-san rất tốt.)* |
| Examiner Morita | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>育成<rt>いくせい</rt></ruby>のモデルケースですよ。JITCOの<ruby>事例集<rt>じれいしゅう</rt></ruby>に<ruby>紹介<rt>しょうかい</rt></ruby>させてください。<br>*(Đây là mô hình mẫu trong đào tạo người nước ngoài. Cho phép tôi giới thiệu trong tập tình huống của JITCO nhé.)* |
| Tanaka | (cúi đầu) もちろんです。<ruby>光栄<rt>こうえい</rt></ruby>に<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Tất nhiên ạ. Đó là vinh dự của chúng tôi.)* |

---

## Tình huống 11 — Văn phòng · 15:00, Suzuki + Tanaka khuyên Hoa cân nhắc 2級 sau khi chuyển SSW1

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>森田<rt>もりた</rt></ruby><ruby>試験官<rt>しけんかん</rt></ruby>がべた<ruby>褒<rt>ぼ</rt></ruby>めだったよ。<br>*(Hoa, vất vả rồi. Giám khảo Morita khen hết lời đấy.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>ですか？<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Thật ạ? Em mừng quá.)* |
| Tanaka | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>も<ruby>勧<rt>すす</rt></ruby>められたそうですね。<br>*(Còn được khuyên thi cả 2級 nữa nhỉ.)* |
| Hoa | はい...でも<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>とのことです。<br>*(Vâng... nhưng nghe nói cần 3 năm kinh nghiệm trở lên ạ.)* |
| Suzuki | ホアさんは<ruby>今<rt>いま</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>だから、<ruby>来年<rt>らいねん</rt></ruby>SSW1になったら<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けられますよ。<br>*(Hoa đã năm 3 rồi, sang năm chuyển SSW1 là đủ điều kiện thi 2級.)* |
| Tanaka | やってみますか？<ruby>会社<rt>かいしゃ</rt></ruby>もサポートします。<br>*(Em có thử không? Công ty sẽ hỗ trợ.)* |
| Hoa | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>考<rt>かんが</rt></ruby>えさせてください。SSW1の<ruby>仕事<rt>しごと</rt></ruby>と<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>、<ruby>両立<rt>りょうりつ</rt></ruby>できるか<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Thật lòng, xin để em suy nghĩ. Em lo việc làm SSW1 với học 2級 có cân được không.)* |
| Suzuki | <ruby>無理<rt>むり</rt></ruby>はしないでね。でも<ruby>選択肢<rt>せんたくし</rt></ruby>があることは<ruby>覚<rt>おぼ</rt></ruby>えておいて。<br>*(Đừng ép mình. Nhưng nhớ là em có lựa chọn này nhé.)* |
| Hoa | はい、ありがとうございます。じっくり<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Vâng, em cảm ơn. Em sẽ suy nghĩ kỹ ạ.)* |

---

## Tình huống 12 — Ký túc · 18:00, báo tin cho Linh và Andi qua LINE

| Vai | Lời thoại |
|---|---|
| Mai | (đứng cạnh nhìn điện thoại Hoa) <ruby>先輩<rt>せんぱい</rt></ruby>、いい<ruby>顔<rt>かお</rt></ruby>ですね。<br>*(Chị ơi, mặt vui ghê.)* |
| Hoa | (cười, mở LINE) リンとアンディに<ruby>報告<rt>ほうこく</rt></ruby>するね。<br>*(Để chị báo Linh và Andi nhé.)* |
| Hoa | (gõ tin nhắn) 「<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>です！<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>も<ruby>勧<rt>すす</rt></ruby>められました」<br>*(Gõ: "Chắc chắn đỗ 技能検定 3級! Còn được khuyên thi cả 2級".)* |
| Linh | (LINE đã đọc, trả lời ngay) 「<ruby>凄<rt>すご</rt></ruby>い！<ruby>姉<rt>ねえ</rt></ruby>ちゃん<ruby>凄<rt>すご</rt></ruby>すぎる！」<br>*(LINE: "Tuyệt! Chị quá đỉnh!")* |
| Andi | (LINE đã đọc) 「<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>！？<ruby>勧<rt>すす</rt></ruby>められたなら<ruby>絶対<rt>ぜったい</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>すべきだよ」<br>*(LINE: "2級!? Được khuyên thì nhất định nên thử.")* |
| Hoa | (gõ trả lời) 「アンディも<ruby>来年<rt>らいねん</rt></ruby><ruby>受<rt>う</rt></ruby>けるの？」<br>*(Gõ: "Andi sang năm cũng thi à?")* |
| Andi | 「<ruby>俺<rt>おれ</rt></ruby>は<ruby>金属系<rt>きんぞくけい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける<ruby>予定<rt>よてい</rt></ruby>。<ruby>食品<rt>しょくひん</rt></ruby><ruby>系<rt>けい</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>うけど、<ruby>緊張<rt>きんちょう</rt></ruby>するな」<br>*(LINE: "Tôi định thi 3級 ngành kim loại. Khác ngành thực phẩm nhưng vẫn hồi hộp.")* |
| Hoa | 「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>普段通<rt>ふだんどお</rt></ruby>りでいいよ。<ruby>頑張<rt>がんば</rt></ruby>って！」<br>*(Gõ: "Không sao, cứ làm như bình thường thôi. Cố lên nhé!")* |

---

## Tình huống 13 — Phòng riêng · 20:00, gọi điện báo tin cho mẹ ở Việt Nam (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Mẹ Hoa | (tiếng Việt, qua video call) Alô, Hoa hả con? |
| Hoa | (tiếng Việt) Mẹ ơi, con có tin vui! |
| Mẹ Hoa | (tiếng Việt) Sao đấy con? |
| Hoa | (tiếng Việt) Hôm nay con thi 技能検定 3級 — kỳ thi kỹ năng quốc gia. Examiner sơ bộ bảo con chắc chắn đỗ rồi mẹ ạ. Còn khuyên con sau này thi cả 2級 nữa. |
| Mẹ Hoa | (tiếng Việt) Trời ơi, giỏi quá con! Mẹ mừng đến không nói được. Bố con biết chưa? |
| Hoa | (tiếng Việt) Lát con gọi bố. Mẹ này... có chuyện này con muốn hỏi. |
| Mẹ Hoa | (tiếng Việt) Gì hả con? |
| Hoa | (tiếng Việt) Mẹ có muốn sang Nhật chơi không? Visa du lịch ngắn hạn 90 ngày. Con đón mẹ, dẫn mẹ đi xem cái nhà máy con làm, gặp chị Suzuki — chủ nhiệm dạy con bao nhiêu thứ. |
| Mẹ Hoa | (tiếng Việt) Con... con nói thật đấy à? Mẹ chưa bao giờ ra nước ngoài, lo lắm. |
| Hoa | (tiếng Việt) Con nghiêm túc mà mẹ. Tháng 1 năm sau, đúng dịp công ty cho con nghỉ Tết. Con đã tính tiền vé rồi. Cái chứng chỉ 良好修了 hôm nay là 3 năm con sống thật ở đây — con muốn mẹ thấy tận mắt. |
| Mẹ Hoa | (tiếng Việt) Mẹ... mẹ phải bàn với bố con. Nhưng... cảm ơn con. Mẹ thương con quá. |
| Hoa | (tiếng Việt) Mẹ suy nghĩ đi. Còn mấy tháng cơ mà. Thôi mẹ đi nghỉ đi, mai con đi làm sớm. |
| Mẹ Hoa | (tiếng Việt) Ừ, ngủ ngoan con. Giữ sức khoẻ nhé. |

---

## Đọng lại chương 5

Hoa trải qua trọn một ngày thi kỹ năng quốc gia tại chính nhà máy đang làm — và học được trọn bộ mẫu câu người thực tập sinh phải dùng ngày thi: **chào hỏi giám khảo JITCO** (初めまして・本日はよろしくお願いいたします), **tường thuật thao tác từng bước** khi thực hành 計量・包装・衛生管理 (ゼロ点をセットしました・確認します・記入します), **trả lời 口頭試問** mạch lạc về **HACCP の 7 原則** và quy trình xử lý **異物混入** (ライン停止 → 隔離 → 報告 → 是正措置 → 再発防止策), **hỏi lại lễ phép** khi chưa rõ phạm vi câu hỏi (「〜というのは？」), và **nhận lời khen khiêm tốn** trước cấp trên (恐縮です・〜のおかげです・考えさせていただきます). Đồng thời học cách **truyền lại kinh nghiệm cho kouhai** — Mai và Trang sẽ thi 3級 năm sau, được Hoa hướng dẫn lại bằng đúng những mẫu câu vừa dùng. Phẩm chất nghề thực phẩm Hoa mang theo: ghi chép chính xác đến từng giờ phút và độ chính xác nồng độ 200ppm.

> Từ vựng & mẫu câu chương này: 技能検定・3級・良好修了・試験官・JITCO・受験者・実技試験・口頭試問・原料計量・計量器・キャリブレーション・誤差・記録票・実測値・包装作業・賞味期限・ロット番号・密封確認・不良品・衛生管理記録・次亜塩素酸ナトリウム・濃度確認・殺菌効果・HACCP・危害分析・重要管理点CCP・管理基準・モニタリング・是正措置・検証・記録の文書化・異物混入・ライン停止・隔離・再発防止策・〜というのは？・恐縮です・考えさせていただきます・普段通り・ベストを尽くす

## Bí quyết chương

- **Thi tại nơi làm**: Examiner đến nhà máy đang làm — Hoa bình tĩnh hơn vì quen môi trường, dùng được mẫu câu tường thuật thao tác hằng ngày.
- **Ghi chép = điểm thưởng**: Examiner khen "ghi chép cao hơn 3級" — Hoa làm việc thật chứ không học chỉ để thi.
- **Khuyên thi 2級 cao hơn**: Mở cửa vượt cấp. Hoa khôn ngoan dùng mẫu câu「考えさせていただきます」— chưa quyết, ưu tiên SSW1.
- **Bandura**: Mai + Trang quan sát Hoa thi → năm sau hai em thi tự tin hơn vì có "hình mẫu" gần.
- **Khởi đầu T10 emotional climax**: Lời mời mẹ qua Nhật — sẽ thấy kết quả ở chương sau.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 級 | きゅう | CẤP | Cấp, bậc |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 応援 | おうえん | ỨNG VIỆN | Cổ vũ, ủng hộ |
| 先輩 | せんぱい | TIÊN BỐI | Đàn anh, đàn chị (sempai) |
| 主任 | しゅにん | CHỦ NHIỆM | Chủ nhiệm, tổ trưởng |
| 実技試験 | じつぎしけん | THỰC KỸ THÍ NGHIỆM | Thi thực hành |
| 項目 | こうもく | HẠNG MỤC | Hạng mục |
| 確認 | かくにん | XÁC NHẬN | Xác nhận, kiểm tra |
| 作業 | さぎょう | TÁC NGHIỆP | Thao tác, công việc |
| 口頭試問 | こうとうしもん | KHẨU ĐẦU THÍ VẤN | Vấn đáp miệng |
| 受験者 | じゅけんしゃ | THỤ NGHIỆM GIẢ | Người dự thi |
| 計量器 | けいりょうき | KẾ LƯỢNG KHÍ | Cân, máy cân |
| キャリブレーション | — | — | Hiệu chuẩn (calibration) |
| 以内 | いない | DĨ NỘI | Trong phạm vi |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | Người phụ trách |
| 実測値 | じっそくち | THỰC TRẮC TRỊ | Giá trị đo thực |
| 記入 | きにゅう | KÝ NHẬP | Ghi vào |
| 賞味期限 | しょうみきげん | THƯỞNG VỊ KỲ HẠN | Hạn sử dụng |
| 番号 | ばんごう | PHIÊN HIỆU | Số hiệu |
| 密封 | みっぷう | MẬT PHONG | Đóng kín |
| 不良品 | ふりょうひん | BẤT LƯƠNG PHẨM | Hàng lỗi |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |
| 清掃 | せいそう | THANH TẢO | Vệ sinh, dọn dẹp |
| 洗剤 | せんざい | TẨY TỄ | Hoá chất tẩy rửa |
| 次亜塩素酸 | じあえんそさん | THỨ Á DIÊM TỐ TOAN | Hypochlorit |
| 濃度 | のうど | NỒNG ĐỘ | Nồng độ |
| 殺菌 | さっきん | SÁT KHUẨN | Diệt khuẩn |
| 効果 | こうか | HIỆU QUẢ | Hiệu quả |
| 残留 | ざんりゅう | TÀN LƯU | Tồn dư |
| 原則 | げんそく | NGUYÊN TẮC | Nguyên tắc |
| 危害分析 | きがいぶんせき | NGUY HẠI PHÂN TÍCH | Phân tích mối nguy |
| 重要管理点 | じゅうようかんりてん | TRỌNG YẾU QUẢN LÝ ĐIỂM | Điểm kiểm soát tới hạn |
| 管理基準 | かんりきじゅん | QUẢN LÝ CƠ CHUẨN | Tiêu chuẩn quản lý |
| 是正措置 | ぜせいそち | THỊ CHÍNH THỐ TRÍ | Hành động khắc phục |
| 検証 | けんしょう | KIỂM CHỨNG | Kiểm chứng |
| 異物混入 | いぶつこんにゅう | DỊ VẬT HỖN NHẬP | Dị vật trộn lẫn |
| 発見 | はっけん | PHÁT KIẾN | Phát hiện |
| 即座 | そくざ | TỨC TOẠ | Ngay lập tức |
| 隔離 | かくり | CÁCH LY | Cách ly |
| 原因調査 | げんいんちょうさ | NGUYÊN NHÂN ĐIỀU TRA | Điều tra nguyên nhân |
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |
| 恐縮 | きょうしゅく | KHỦNG SÚC | Không dám, ngại |
| 実務経験 | じつむけいけん | THỰC VỤ KINH NGHIỆM | Kinh nghiệm thực tế |
| 移行 | いこう | DI HÀNH | Chuyển sang |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | Thử thách |
| 育成 | いくせい | DỤC THÀNH | Đào tạo |
| 事例集 | じれいしゅう | SỰ LỆ TẬP | Tập tình huống |
| 光栄 | こうえい | QUANG VINH | Vinh dự |
| 受験 | じゅけん | THỤ NGHIỆM | Dự thi |
| 両立 | りょうりつ | LƯỠNG LẬP | Cân bằng cả hai |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000006, 800000013, NULL, 'markdown_book', 'T6. Mensetsu cuối kỳ — Bàn hồ sơ chuyển SSW1 (面接最終)', '# Sách thực tập sinh thực phẩm · T6. Mensetsu cuối kỳ — Bàn hồ sơ chuyển SSW1 (面接最終)

> **Mục tiêu nhân vật:** Hoa (25 tuổi, Hà Nội) bước vào buổi mensetsu cuối với cán bộ phụ trách Suzuki tại văn phòng tổ chức tiếp nhận. Học các mẫu hội thoại tiếng Nhật trong buổi tư vấn chuyển tư cách lưu trú: chào hỏi cấp trên đầu buổi mensetsu (お世話になりました), nghe và xác nhận điều kiện hồ sơ 在留資格変更 (〜ということですね), hỏi lại lễ phép về thuật ngữ chuyên ngành (〜というのは?), đặt câu hỏi về 給与水準・受入機関・転職 với 主任, trả lời câu hỏi cá nhân của cấp trên một cách lễ phép, và đóng buổi mensetsu (お世話になりました・ありがとうございました).

---

## Bối cảnh

Tháng 9 năm 2028. Hoa đang ở năm cuối tư cách thực tập sinh (TTS) ngành chế biến thực phẩm tại Saitama Foods (Omiya). Hôm nay là buổi mensetsu cuối với Suzuki 主任 — cán bộ phụ trách của tổ chức tiếp nhận, người sẽ làm hồ sơ 在留資格変更 (đổi visa TTS → SSW1). Trình độ tiếng Nhật N3. Chương này tập trung các mẫu câu giao tiếp trong buổi mensetsu hành chính: hỏi lại thuật ngữ visa, xác nhận giấy tờ, hỏi về 給与・転職, và lễ nghĩa đóng buổi với cấp trên.

---

## Tình huống 1 — Văn phòng tổ chức tiếp nhận Omiya · 9:00, chào hỏi mở đầu mensetsu

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、おはようございます。どうぞお<ruby>入<rt>はい</rt></ruby>りください。<br>*(Chào Hoa-san. Mời em vào.)* |
| Hoa | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）おはようございます、スズキ<ruby>主任<rt>しゅにん</rt></ruby>。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Chào Suzuki chủ nhiệm. Hôm nay mong anh giúp đỡ ạ.)* |
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby>はTTSとしての<ruby>最終面接<rt>さいしゅうめんせつ</rt></ruby>です。SSW1<ruby>移行<rt>いこう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Hôm nay là mensetsu cuối với tư cách TTS. Tôi sẽ giải thích chi tiết vụ chuyển sang SSW1 nhé.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Vâng, em rõ ạ. Ba năm qua thật sự cảm ơn anh.)* |
| Suzuki | こちらこそ。では、<ruby>始<rt>はじ</rt></ruby>めましょう。お<ruby>茶<rt>ちゃ</rt></ruby>はいかがですか？<br>*(Tôi cũng vậy. Vậy chúng ta bắt đầu nhé. Em uống trà chứ?)* |
| Hoa | はい、いただきます。<br>*(Vâng, em xin ạ.)* |

---

## Tình huống 2 — Văn phòng · 9:15, nghe tổng kết 3 năm và đáp lễ

| Vai | Lời thoại |
|---|---|
| Suzuki | まず、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りから<ruby>始<rt>はじ</rt></ruby>めますね。<ruby>遅刻<rt>ちこく</rt></ruby><ruby>欠勤<rt>けっきん</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>、<ruby>事故<rt>じこ</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>、<ruby>苦情<rt>くじょう</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>です。<br>*(Trước tiên ôn lại 3 năm nhé. Đi muộn 0, tai nạn 0, khiếu nại 0.)* |
| Hoa | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Suzuki | それから、<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>し、HACCP<ruby>講習<rt>こうしゅう</rt></ruby>も<ruby>修了<rt>しゅうりょう</rt></ruby>しました。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>も<ruby>合格<rt>ごうかく</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>です。<br>*(Ngoài ra em đã lấy chứng chỉ 食品衛生責任者, hoàn thành khoá HACCP. 技能検定 3級 cũng chắc đỗ.)* |
| Hoa | <ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Là nhờ mọi người ạ.)* |
| Suzuki | <ruby>後輩<rt>こうはい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>もよくやってくれました。マイさんの<ruby>育成<rt>いくせい</rt></ruby>、チャンさんの<ruby>受入<rt>うけいれ</rt></ruby>、どちらも<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>正直<rt>しょうじき</rt></ruby><ruby>言<rt>い</rt></ruby>って、ホアさんは<ruby>模範<rt>もはん</rt></ruby>ケースですよ。<br>*(Hướng dẫn 2 đàn em em cũng làm tốt. Đào tạo Mai và đón Trang, cả hai đều thuận lợi. Thật lòng mà nói, em là trường hợp gương mẫu đấy.)* |
| Hoa | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em không dám ạ. Em sẽ tiếp tục cố gắng.)* |

---

## Tình huống 3 — Văn phòng · 9:30, nghe danh sách giấy tờ 在留資格変更

| Vai | Lời thoại |
|---|---|
| Suzuki | では、SSW1<ruby>申請<rt>しんせい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>は<ruby>五<rt>いつ</rt></ruby>つあります。<br>*(Giờ vào vụ nộp đơn SSW1. Giấy tờ cần có năm loại.)* |
| Hoa | はい、メモを<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vâng, em xin phép ghi chép ạ.)* |
| Suzuki | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>在留資格変更許可申請書<rt>ざいりゅうしかくへんこうきょかしんせいしょ</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格証<rt>ごうかくしょう</rt></ruby>です。<br>*(Thứ nhất là đơn xin đổi tư cách lưu trú. Thứ hai là bằng 技能検定 3級.)* |
| Hoa | はい。<br>*(Vâng.)* |
| Suzuki | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>良好修了<rt>りょうこうしゅうりょう</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>当組合<rt>とうくみあい</rt></ruby>が<ruby>発行<rt>はっこう</rt></ruby>します。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>、<ruby>受入機関<rt>うけいれきかん</rt></ruby>と<ruby>新規<rt>しんき</rt></ruby>に<ruby>結<rt>むす</rt></ruby>びます。<ruby>五<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>支援計画<rt>しえんけいかく</rt></ruby><ruby>書<rt>しょ</rt></ruby>です。<br>*(Thứ ba là giấy chứng nhận 良好修了 do tổ chức tôi cấp. Thứ tư là hợp đồng lao động ký mới với 受入機関. Thứ năm là kế hoạch hỗ trợ.)* |
| Hoa | すみません、「<ruby>良好修了<rt>りょうこうしゅうりょう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi anh, "良好修了" nghĩa là gì ạ?)* |
| Suzuki | TTSの<ruby>期間<rt>きかん</rt></ruby>を<ruby>問題<rt>もんだい</rt></ruby>なく<ruby>修了<rt>しゅうりょう</rt></ruby>したという<ruby>意味<rt>いみ</rt></ruby>です。<ruby>遅刻<rt>ちこく</rt></ruby>や<ruby>事故<rt>じこ</rt></ruby>がなく、<ruby>技能<rt>ぎのう</rt></ruby>も<ruby>身<rt>み</rt></ruby>に<ruby>付<rt>つ</rt></ruby>いた、と<ruby>組合<rt>くみあい</rt></ruby>が<ruby>証明<rt>しょうめい</rt></ruby>します。<br>*(Nghĩa là hoàn thành kỳ TTS không sự cố. Tổ chức chứng nhận em không đi muộn, không tai nạn và đã có kỹ năng.)* |
| Hoa | なるほど、<ruby>組合<rt>くみあい</rt></ruby>が「<ruby>問題<rt>もんだい</rt></ruby>なく<ruby>終<rt>お</rt></ruby>えた」と<ruby>証明<rt>しょうめい</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>ということですね。<br>*(Em hiểu rồi, là giấy mà tổ chức chứng nhận "đã kết thúc không sự cố" đúng không ạ.)* |
| Suzuki | そうです。よく<ruby>分<rt>わ</rt></ruby>かりましたね。<br>*(Đúng vậy. Em hiểu nhanh đấy.)* |

---

## Tình huống 4 — Văn phòng · 9:50, xác nhận miễn thi và 関連職種

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>次<rt>つぎ</rt></ruby>に<ruby>関連職種<rt>かんれんしょくしゅ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>です。ホアさんは<ruby>食品<rt>しょくひん</rt></ruby><ruby>製造<rt>せいぞう</rt></ruby><ruby>業<rt>ぎょう</rt></ruby>で<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>働<rt>はたら</rt></ruby>きました。SSW1の<ruby>飲食料品<rt>いんしょくりょうひん</rt></ruby><ruby>製造業<rt>せいぞうぎょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>分野<rt>ぶんや</rt></ruby>です。<br>*(Tiếp đến xác nhận ngành liên quan. Em đã làm chế biến thực phẩm 3 năm. Cùng ngành 飲食料品製造業 của SSW1.)* |
| Hoa | はい。<br>*(Vâng.)* |
| Suzuki | <ruby>従<rt>したが</rt></ruby>って、<ruby>技能試験<rt>ぎのうしけん</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby>になります。<br>*(Do đó, được miễn cả 技能試験 lẫn 日本語試験.)* |
| Hoa | え、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>両方<rt>りょうほう</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby>ですか？すみません、<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Ơ, miễn cả hai thật ạ? Xin lỗi anh, cho em xác nhận lại ạ.)* |
| Suzuki | はい。TTS<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>良好<rt>りょうこう</rt></ruby>に<ruby>修了<rt>しゅうりょう</rt></ruby>して、<ruby>関連職種<rt>かんれんしょくしゅ</rt></ruby>であれば<ruby>自動<rt>じどう</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>免除<rt>めんじょ</rt></ruby>です。<br>*(Vâng. TTS号2 hoàn thành tốt, lại đúng ngành liên quan thì tự động được miễn.)* |
| Hoa | つまり、<ruby>新<rt>あたら</rt></ruby>しい<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けなくてもいい、ということですね。<br>*(Nghĩa là em không cần thi mới, đúng không ạ.)* |
| Suzuki | そのとおりです。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>実績<rt>じっせき</rt></ruby>が<ruby>試験<rt>しけん</rt></ruby>の<ruby>代<rt>か</rt></ruby>わりになります。<br>*(Đúng vậy. Thành tích 3 năm thay cho kỳ thi.)* |
| Hoa | <ruby>安心<rt>あんしん</rt></ruby>しました。ありがとうございます。<br>*(Em yên tâm rồi. Em cảm ơn anh.)* |

---

## Tình huống 5 — Văn phòng · 10:15, hỏi lại lễ phép về hai phương án 受入機関

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>次<rt>つぎ</rt></ruby>は<ruby>受入機関<rt>うけいれきかん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>です。<ruby>選択肢<rt>せんたくし</rt></ruby>は<ruby>二<rt>ふた</rt></ruby>つあります。<br>*(Tiếp đến là vụ 受入機関. Có hai lựa chọn.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Suzuki | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>現在<rt>げんざい</rt></ruby>の<ruby>埼玉<rt>さいたま</rt></ruby>フーズと<ruby>新規<rt>しんき</rt></ruby><ruby>雇用契約<rt>こようけいやく</rt></ruby>を<ruby>結<rt>むす</rt></ruby>ぶこと。<ruby>二<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>他<rt>た</rt></ruby>の<ruby>受入機関<rt>うけいれきかん</rt></ruby>に<ruby>転職<rt>てんしょく</rt></ruby>することです。<br>*(Thứ nhất là ký hợp đồng mới với Saitama Foods hiện tại. Thứ hai là chuyển sang 受入機関 khác.)* |
| Hoa | すみません、「<ruby>受入機関<rt>うけいれきかん</rt></ruby>」というのは<ruby>会社<rt>かいしゃ</rt></ruby>そのものという<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi anh, "受入機関" nghĩa là chính công ty đó luôn ạ?)* |
| Suzuki | はい、SSW1を<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れる<ruby>会社<rt>かいしゃ</rt></ruby>のことです。SSW1<ruby>受入<rt>うけいれ</rt></ruby>の<ruby>登録<rt>とうろく</rt></ruby>がある<ruby>会社<rt>かいしゃ</rt></ruby>でなければなりません。<br>*(Vâng, là công ty nhận SSW1. Phải là công ty đã có đăng ký tiếp nhận SSW1.)* |
| Hoa | <ruby>転職<rt>てんしょく</rt></ruby>もできるんですね。TTSの<ruby>時<rt>とき</rt></ruby>はできなかったのですが…<br>*(Chuyển việc cũng được nhỉ. Hồi TTS thì không được mà…)* |
| Suzuki | そう、ここがTTSと<ruby>違<rt>ちが</rt></ruby>うところです。SSW1は<ruby>同<rt>おな</rt></ruby>じ<ruby>分野<rt>ぶんや</rt></ruby><ruby>内<rt>ない</rt></ruby>であれば<ruby>転職<rt>てんしょく</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Đúng, chỗ này khác TTS. SSW1 cùng ngành là chuyển được.)* |
| Hoa | <ruby>条件<rt>じょうけん</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Anh cho em biết kỹ điều kiện được không ạ?)* |
| Suzuki | <ruby>飲食料品<rt>いんしょくりょうひん</rt></ruby><ruby>製造業<rt>せいぞうぎょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby><ruby>内<rt>ない</rt></ruby>であること、<ruby>新<rt>あたら</rt></ruby>しい<ruby>会社<rt>かいしゃ</rt></ruby>がSSW1<ruby>受入<rt>うけいれ</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていること、この<ruby>二<rt>ふた</rt></ruby>つです。<br>*(Trong cùng ngành 飲食料品製造業, công ty mới phải có đăng ký nhận SSW1. Hai điều đó.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>埼玉<rt>さいたま</rt></ruby>フーズに<ruby>残<rt>のこ</rt></ruby>りたい<ruby>気持<rt>きも</rt></ruby>ちが<ruby>強<rt>つよ</rt></ruby>いです。<br>*(Em hiểu rồi. Thật lòng em muốn ở lại Saitama Foods nhiều ạ.)* |
| Suzuki | タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>からも「ホアさんを<ruby>残<rt>のこ</rt></ruby>したい」と<ruby>連絡<rt>れんらく</rt></ruby>がありましたよ。<br>*(Tanaka trưởng nhà máy cũng nhắn "muốn giữ Hoa-san" đấy.)* |
| Hoa | <ruby>嬉<rt>うれ</rt></ruby>しいです。ありがとうございます。<br>*(Em mừng quá ạ. Em cảm ơn anh.)* |

---

## Tình huống 6 — Văn phòng · 10:35, quan sát cách Suzuki nhả thông tin 給与水準

| Vai | Lời thoại |
|---|---|
| Suzuki | ただ、ホアさんに<ruby>一<rt>ひと</rt></ruby>つ<ruby>言<rt>い</rt></ruby>っておきたいことがあります。<br>*(Có một điều tôi muốn nói trước với em.)* |
| Hoa | はい、<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Vâng, là chuyện gì ạ?)* |
| Suzuki | SSW1の<ruby>給与<rt>きゅうよ</rt></ruby><ruby>水準<rt>すいじゅん</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>によって<ruby>大<rt>おお</rt></ruby>きく<ruby>違<rt>ちが</rt></ruby>います。<br>*(Mức lương SSW1 khác biệt rất lớn tuỳ công ty.)* |
| Hoa | すみません、「<ruby>給与<rt>きゅうよ</rt></ruby><ruby>水準<rt>すいじゅん</rt></ruby>」というのは<ruby>月給<rt>げっきゅう</rt></ruby>の<ruby>平均<rt>へいきん</rt></ruby><ruby>値<rt>ち</rt></ruby>のことでしょうか？<br>*(Xin lỗi anh, "給与水準" tức là mức lương tháng trung bình ạ?)* |
| Suzuki | そうです。<ruby>埼玉<rt>さいたま</rt></ruby>フーズは<ruby>真面目<rt>まじめ</rt></ruby>で<ruby>良<rt>よ</rt></ruby>い<ruby>会社<rt>かいしゃ</rt></ruby>ですが、<ruby>都心<rt>としん</rt></ruby>の<ruby>大手<rt>おおて</rt></ruby>と<ruby>比<rt>くら</rt></ruby>べると<ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>低<rt>ひく</rt></ruby>めです。<br>*(Đúng vậy. Saitama Foods là công ty tử tế, nhưng so với hãng lớn nội đô thì lương thấp hơn.)* |
| Hoa | <ruby>差<rt>さ</rt></ruby>はどれくらいでしょうか？<br>*(Chênh khoảng bao nhiêu ạ?)* |
| Suzuki | <ruby>東京<rt>とうきょう</rt></ruby>の<ruby>大手<rt>おおて</rt></ruby>SSW1なら、<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>多<rt>おお</rt></ruby>い<ruby>場合<rt>ばあい</rt></ruby>もあります。<br>*(SSW1 hãng lớn ở Tokyo có khi nhiều hơn 3 đến 5 vạn yên/tháng.)* |
| Hoa | え、<ruby>結構<rt>けっこう</rt></ruby><ruby>差<rt>さ</rt></ruby>がありますね。<br>*(Ơ, chênh nhiều thật ạ.)* |
| Suzuki | ただし、<ruby>東京<rt>とうきょう</rt></ruby>は<ruby>家賃<rt>やちん</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<ruby>差<rt>さ</rt></ruby><ruby>引<rt>ひ</rt></ruby>くと<ruby>同<rt>おな</rt></ruby>じくらいになる<ruby>可能性<rt>かのうせい</rt></ruby>もあります。<br>*(Nhưng tiền nhà Tokyo cao. Trừ ra có khi bằng nhau.)* |
| Hoa | なるほど、<ruby>給与<rt>きゅうよ</rt></ruby>だけで<ruby>判断<rt>はんだん</rt></ruby>してはいけない、ということですね。<br>*(Em hiểu rồi, không nên chỉ nhìn lương mà quyết đúng không ạ.)* |
| Suzuki | そうです。<ruby>選択肢<rt>せんたくし</rt></ruby>として<ruby>知<rt>し</rt></ruby>っておいてください。<br>*(Đúng vậy. Biết để có lựa chọn nhé.)* |
| Hoa | はい、<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Vâng, em sẽ cân nhắc kỹ ạ.)* |

---

## Tình huống 7 — Văn phòng · 10:55, xác nhận timeline申請

| Vai | Lời thoại |
|---|---|
| Suzuki | では<ruby>申請<rt>しんせい</rt></ruby>のスケジュールを<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Vậy chúng ta xác nhận lịch nộp đơn nhé.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Suzuki | <ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>合格証<rt>ごうかくしょう</rt></ruby>を<ruby>正式<rt>せいしき</rt></ruby>に<ruby>受領<rt>じゅりょう</rt></ruby>します。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>までに<ruby>受入機関<rt>うけいれきかん</rt></ruby>を<ruby>決定<rt>けってい</rt></ruby>して、<ruby>雇用契約<rt>こようけいやく</rt></ruby>を<ruby>結<rt>むす</rt></ruby>びます。<br>*(Tháng 10 nhận chính thức bằng 技能検定. Đến tháng 11 chốt 受入機関 và ký hợp đồng.)* |
| Hoa | <ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>までに<ruby>受入機関<rt>うけいれきかん</rt></ruby>を<ruby>決<rt>き</rt></ruby>める、ということですね。<br>*(Đến tháng 11 phải chốt 受入機関, đúng không ạ.)* |
| Suzuki | そうです。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>在留資格変更<rt>ざいりゅうしかくへんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>します。<ruby>入管<rt>にゅうかん</rt></ruby>の<ruby>審査<rt>しんさ</rt></ruby>は<ruby>2<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>から<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>かかります。<br>*(Đúng. Tháng 12 nộp đơn 在留資格変更. Cục xuất nhập cảnh xét từ 2 đến 3 tháng.)* |
| Hoa | <ruby>切<rt>き</rt></ruby>れ<ruby>目<rt>め</rt></ruby>なく<ruby>移行<rt>いこう</rt></ruby>できるでしょうか？<br>*(Có chuyển tiếp liền mạch được không ạ?)* |
| Suzuki | <ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めば、<ruby>3<rt>さん</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>にTTS<ruby>契約<rt>けいやく</rt></ruby>が<ruby>終了<rt>しゅうりょう</rt></ruby>し、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>からSSW1<ruby>勤務<rt>きんむ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>になります。<br>*(Nếu thuận lợi thì cuối tháng 3 kết thúc HĐ TTS, từ 1 tháng 4 bắt đầu làm SSW1.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。メモしておきます。<br>*(Vâng em hiểu rồi. Em ghi lại ạ.)* |

---

## Tình huống 8 — Văn phòng · 11:20, hỏi lễ phép về 永住権 và 就労資格

| Vai | Lời thoại |
|---|---|
| Hoa | スズキ<ruby>主任<rt>しゅにん</rt></ruby>、もう<ruby>一<rt>ひと</rt></ruby>つお<ruby>聞<rt>き</rt></ruby>きしてもよろしいでしょうか？<br>*(Suzuki chủ nhiệm, em hỏi thêm một câu được không ạ?)* |
| Suzuki | はい、どうぞ。<br>*(Vâng, em hỏi đi.)* |
| Hoa | SSW1の<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>後<rt>あと</rt></ruby>はどうなりますか？<ruby>永住権<rt>えいじゅうけん</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れたいのですが…<br>*(Sau 5 năm SSW1 thì sao ạ? Em cũng đang muốn nghĩ tới 永住権…)* |
| Suzuki | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>正確<rt>せいかく</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えます。SSW2への<ruby>移行<rt>いこう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すのが<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Câu hỏi hay đấy. Tôi nói thông tin chính xác nhé. Cơ bản là hướng đến chuyển SSW2.)* |
| Hoa | SSW2の<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Điều kiện SSW2 là gì ạ?)* |
| Suzuki | <ruby>飲食料品<rt>いんしょくりょうひん</rt></ruby><ruby>製造業<rt>せいぞうぎょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>のSSW2<ruby>試験<rt>しけん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>と<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>です。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>でも<ruby>免除<rt>めんじょ</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Đỗ kỳ thi SSW2 ngành 飲食料品製造業 và có kinh nghiệm thực tế. Đỗ 技能検定 2級 cũng được miễn.)* |
| Hoa | あ、それで<ruby>森田<rt>もりた</rt></ruby><ruby>試験官<rt>しけんかん</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>めてくださったのですね。<br>*(À, nên Examiner Morita đã khuyên em thi 2級 ạ.)* |
| Suzuki | そう、その<ruby>意味<rt>いみ</rt></ruby>です。<ruby>永住権<rt>えいじゅうけん</rt></ruby>については、<ruby>原則<rt>げんそく</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>連続在留<rt>れんぞくざいりゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>で、そのうち<ruby>就労資格<rt>しゅうろうしかく</rt></ruby>で<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Đúng, ý là vậy. Còn 永住権 nguyên tắc cần 10 năm liên tục cư trú, trong đó ít nhất 5 năm bằng 就労資格.)* |
| Hoa | すみません、「<ruby>就労資格<rt>しゅうろうしかく</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか？SSW1も<ruby>入<rt>はい</rt></ruby>りますか？<br>*(Xin lỗi anh, "就労資格" cụ thể là gì ạ? SSW1 có được tính không ạ?)* |
| Suzuki | これが<ruby>重要<rt>じゅうよう</rt></ruby>なポイントです。TTSとSSW1は<ruby>就労資格<rt>しゅうろうしかく</rt></ruby>には<ruby>含<rt>ふく</rt></ruby>まれません。SSW2や<ruby>技人国<rt>ぎじんこく</rt></ruby>などが<ruby>就労資格<rt>しゅうろうしかく</rt></ruby>になります。<br>*(Đây là điểm quan trọng. TTS và SSW1 KHÔNG tính vào 就労資格. SSW2 và 技人国… mới là 就労資格.)* |
| Hoa | え、SSW1は<ruby>含<rt>ふく</rt></ruby>まれないんですか！？<br>*(Ơ, SSW1 không được tính ạ!?)* |
| Suzuki | はい。だから<ruby>2034<rt>にせんさんじゅうよん</rt></ruby><ruby>年<rt>ねん</rt></ruby>にSSW2に<ruby>移行<rt>いこう</rt></ruby>してから<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>、つまり<ruby>2039<rt>にせんさんじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たします。<ruby>実際<rt>じっさい</rt></ruby>に<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りるのはもう<ruby>少<rt>すこ</rt></ruby>し<ruby>先<rt>さき</rt></ruby>になる<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<br>*(Vâng. Vậy nên 2034 chuyển SSW2 rồi 5 năm sau, tức 2039 mới đủ điều kiện. Thực tế xuống giấy phép có thể muộn hơn chút.)* |
| Hoa | <ruby>長<rt>なが</rt></ruby>い<ruby>道<rt>みち</rt></ruby>ですね…<br>*(Đường dài thật ạ…)* |
| Suzuki | <ruby>長<rt>なが</rt></ruby>いですね。でも<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てれば<ruby>達成<rt>たっせい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Dài đấy. Nhưng có kế hoạch thì đạt được.)* |
| Hoa | はい、<ruby>正確<rt>せいかく</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただいてありがとうございます。<br>*(Vâng, cảm ơn anh đã cho em thông tin chính xác ạ.)* |

---

## Tình huống 9 — Quán định shoku gần ga · 12:30, trả lời câu hỏi cá nhân của cấp trên

| Vai | Lời thoại |
|---|---|
| Suzuki | お<ruby>昼<rt>ひる</rt></ruby>、<ruby>奢<rt>おご</rt></ruby>りますよ。<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>感謝<rt>かんしゃ</rt></ruby>です。<br>*(Trưa nay tôi mời. Cảm ơn 3 năm.)* |
| Hoa | え、そんな、<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>本当<rt>ほんとう</rt></ruby>によろしいんですか？<br>*(Dạ thôi, em ngại quá ạ. Anh chắc không ạ?)* |
| Suzuki | <ruby>気<rt>き</rt></ruby>にしないで。ホアさん、<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>質問<rt>しつもん</rt></ruby>をしてもいいですか？<br>*(Đừng ngại. Hoa-san, tôi hỏi chuyện cá nhân được không?)* |
| Hoa | はい、どうぞ。<br>*(Vâng, mời anh ạ.)* |
| Suzuki | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>長期<rt>ちょうき</rt></ruby><ruby>日本<rt>にほん</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る<ruby>気<rt>き</rt></ruby>がありますか？<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>ですよ。<br>*(Thật sự em có ý ở Nhật lâu dài không? Hơn 10 năm đấy.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>は「<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>稼<rt>かせ</rt></ruby>いで<ruby>帰国<rt>きこく</rt></ruby>する」と<ruby>思<rt>おも</rt></ruby>っていました。でも<ruby>今<rt>いま</rt></ruby>は<ruby>気持<rt>きも</rt></ruby>ちが<ruby>変<rt>か</rt></ruby>わりました。<br>*(Ba năm trước em nghĩ "kiếm 3 năm rồi về". Nhưng giờ em đã thay đổi suy nghĩ ạ.)* |
| Suzuki | どう<ruby>変<rt>か</rt></ruby>わりましたか？<br>*(Thay đổi thế nào?)* |
| Hoa | <ruby>仕事<rt>しごと</rt></ruby>が<ruby>好<rt>す</rt></ruby>きになりました。マイさんとチャンさんへの<ruby>責任<rt>せきにん</rt></ruby>もあります。それに、タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>には<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Em đã yêu công việc. Em có trách nhiệm với Mai và Trang. Hơn nữa, em mang ơn Tanaka trưởng nhà máy rất nhiều ạ.)* |
| Suzuki | <ruby>気持<rt>きも</rt></ruby>ちは<ruby>大事<rt>だいじ</rt></ruby>です。でも<ruby>家族<rt>かぞく</rt></ruby>のことも<ruby>考<rt>かんが</rt></ruby>えてくださいね。<br>*(Tình cảm quan trọng. Nhưng cũng nghĩ đến gia đình nhé.)* |
| Hoa | はい。<ruby>来年<rt>らいねん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>母<rt>はは</rt></ruby>が<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>く</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>です。<ruby>母<rt>はは</rt></ruby>の<ruby>反応<rt>はんのう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てから<ruby>最終的<rt>さいしゅうてき</rt></ruby>に<ruby>決<rt>き</rt></ruby>めます。<br>*(Vâng. Tháng 1 sang năm mẹ em dự định sang Nhật. Em xem phản ứng của mẹ rồi quyết cuối cùng ạ.)* |
| Suzuki | いい<ruby>判断<rt>はんだん</rt></ruby>ですね。<ruby>一<rt>ひと</rt></ruby>つの<ruby>大<rt>おお</rt></ruby>きな<ruby>決断<rt>けつだん</rt></ruby>は、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えるべきです。<br>*(Quyết định hay đấy. Quyết định lớn nên cùng gia đình suy nghĩ.)* |
| Hoa | はい、<ruby>本当<rt>ほんとう</rt></ruby>にそう<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng, em cũng thật sự nghĩ vậy ạ.)* |

---

## Tình huống 10 — Văn phòng · 13:45, bàn về 後輩 Mai (quan sát cách 主任 dạy vai sempai)

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>午後<rt>ごご</rt></ruby>はマイさんの<ruby>件<rt>けん</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>しましょう。<br>*(Chiều mình nói chút về vụ Mai nhé.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Suzuki | マイさんは<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。あと<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>でSSW1<ruby>移行<rt>いこう</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>になります。<br>*(Mai đang năm 2 育成就労. Còn 1 năm là quyết chuyển SSW1.)* |
| Hoa | すみません、「<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>」というのは<ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>でしたよね？<br>*(Xin lỗi anh, "育成就労" là chế độ mới đúng không ạ?)* |
| Suzuki | そうです。TTSに<ruby>代<rt>か</rt></ruby>わる<ruby>制度<rt>せいど</rt></ruby>です。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>と、JFT-Basicまたは<ruby>N4<rt>エヌよん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Đúng vậy. Chế độ thay cho TTS. Điều kiện là đỗ 技能検定 3級 và JFT-Basic hoặc N4.)* |
| Hoa | マイは<ruby>昨年<rt>さくねん</rt></ruby>N4に<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>受<rt>う</rt></ruby>けます。<br>*(Mai năm ngoái đã đỗ N4. 技能検定 sang năm sẽ thi ạ.)* |
| Suzuki | <ruby>合格<rt>ごうかく</rt></ruby>すればSSW1<ruby>移行<rt>いこう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。ホアさんがSSW1の<ruby>先輩<rt>せんぱい</rt></ruby>として<ruby>支<rt>ささ</rt></ruby>えてあげてください。<br>*(Đỗ là chuyển được SSW1. Em làm sempai SSW1 hỗ trợ Mai nhé.)* |
| Hoa | はい、<ruby>必<rt>かなら</rt></ruby>ずそうします。<ruby>具体的<rt>ぐたいてき</rt></ruby>にはどう<ruby>支<rt>ささ</rt></ruby>えればいいですか？<br>*(Vâng, chắc chắn em sẽ làm vậy. Cụ thể em nên hỗ trợ thế nào ạ?)* |
| Suzuki | まず<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>の<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>解<rt>と</rt></ruby>くこと。<ruby>次<rt>つぎ</rt></ruby>に、ホアさんが<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>困<rt>こま</rt></ruby>ったことをマイさんに<ruby>伝<rt>つた</rt></ruby>えてあげてください。<br>*(Trước hết cùng giải đề cũ 技能検定. Tiếp đó, kể cho Mai những khó khăn em đã gặp 3 năm trước.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>することですね。<br>*(Vâng em hiểu rồi. Là chia sẻ kinh nghiệm của bản thân đúng không ạ.)* |
| Suzuki | そうです。<ruby>面白<rt>おもしろ</rt></ruby>い<ruby>循環<rt>じゅんかん</rt></ruby>ですね。ホアさんがSSW1、マイさんがTTS<ruby>最終<rt>さいしゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>、チャンさんが<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>。<br>*(Đúng. Vòng quay thú vị nhỉ. Em SSW1, Mai năm cuối TTS, Trang năm 1.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby>ですね。<br>*(Là 3 thế hệ ạ.)* |
| Suzuki | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>環境<rt>かんきょう</rt></ruby>です。<br>*(Môi trường tuyệt vời.)* |

---

## Tình huống 11 — Văn phòng · 16:00, đóng buổi mensetsu lễ phép

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>本日<rt>ほんじつ</rt></ruby>のミーティングはここまでにしましょう。<br>*(Buổi họp hôm nay đến đây nhé.)* |
| Hoa | はい、ありがとうございました。<br>*(Vâng, em cảm ơn anh ạ.)* |
| Suzuki | <ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby>までに<ruby>受入機関<rt>うけいれきかん</rt></ruby><ruby>決定<rt>けってい</rt></ruby>のご<ruby>連絡<rt>れんらく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>決定後<rt>けっていご</rt></ruby>、<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めます。<br>*(Đầu tháng 11 em báo lại quyết định 受入機関 nhé. Sau khi quyết, mình tiến hành chuẩn bị giấy tờ.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby>までにご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Vâng em rõ ạ. Đầu tháng 11 em sẽ liên lạc.)* |
| Hoa | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）スズキ<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Cúi đầu sâu. Suzuki chủ nhiệm, 3 năm qua thật sự cảm ơn anh ạ.)* |
| Suzuki | こちらこそ。SSW1になっても、<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>連絡<rt>れんらく</rt></ruby>してくださいね。<br>*(Tôi cũng vậy. Thành SSW1 rồi, có gì khó cứ liên lạc bất cứ lúc nào nhé.)* |
| Hoa | はい、<ruby>必<rt>かなら</rt></ruby>ずご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, chắc chắn em sẽ liên lạc ạ. Em xin phép ạ.)* |
| Suzuki | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vất vả rồi.)* |

---

## Tình huống 12 — Trên tàu về Saitama · 17:30, gọi điện về cho mẹ (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại thuật ngữ JP đã học qua hội thoại với mẹ ở quê.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mẹ ơi, con vừa xong mensetsu cuối với anh Suzuki chủ nhiệm rồi. |
| Mẹ Hoa | (tiếng Việt) Thế nào con? Mẹ lo cả ngày. |
| Hoa | (tiếng Việt) Mọi việc thuận lợi mẹ ạ. Anh ấy bảo con là "trường hợp gương mẫu". Hồ sơ chuyển sang visa SSW1 chỉ cần năm loại giấy, lại được miễn cả kỳ thi tay nghề lẫn thi tiếng Nhật. |
| Mẹ Hoa | (tiếng Việt) Vì sao được miễn vậy con? |
| Hoa | (tiếng Việt) Vì con đã làm đủ ba năm thực tập sinh ngành thực phẩm, cùng ngành 飲食料品製造業 với SSW1, lại có chứng nhận hoàn thành tốt — gọi là 良好修了. Anh Suzuki bảo cứ thế là tự động được miễn. |
| Mẹ Hoa | (tiếng Việt) Thế con định ở lại Saitama Foods hay sang chỗ khác? |
| Hoa | (tiếng Việt) Anh Suzuki gợi ý có thể chuyển việc — gọi là 転職 — sang công ty lớn ở Tokyo, lương cao hơn 3 đến 5 vạn yên mỗi tháng. Nhưng tiền nhà Tokyo đắt nên trừ ra cũng tương đương. Với lại bác Tanaka trưởng nhà máy đã nhắn anh Suzuki là muốn giữ con. |
| Mẹ Hoa | (tiếng Việt) Vậy con quyết thế nào? |
| Hoa | (tiếng Việt) Con muốn đợi tháng 1 mẹ sang chơi rồi mới quyết. Mà mẹ ơi, anh ấy còn nói chuyện vĩnh trú nữa. Phải đủ 10 năm cư trú, trong đó 5 năm bằng tư cách lao động 就労資格. Nhưng SSW1 không tính vào đó đâu, phải lên SSW2 mới tính. |
| Mẹ Hoa | (tiếng Việt) Thế tức là đường còn dài lắm con nhỉ. |
| Hoa | (tiếng Việt) Sớm nhất phải tới 2039 con mới đủ điều kiện nộp đơn vĩnh trú. Mười sáu năm nữa cơ mẹ ạ. |
| Mẹ Hoa | (tiếng Việt) Con cố gắng. Mẹ với em đợi con. Tháng 1 mẹ sang là sang luôn ba tuần đấy nhé. |
| Hoa | (tiếng Việt) Vâng mẹ. Con cũng tới ga rồi, con cúp đây. Mẹ ngủ ngon. |

---

## Đọng lại chương 6

Hoa trải qua buổi mensetsu hành chính cuối kỳ TTS và học được trọn bộ mẫu câu giao tiếp với cán bộ phụ trách: **chào hỏi mở đầu** (お世話になりました・本日はよろしくお願いいたします), **xác nhận giấy tờ** (〜ということですね) cho năm loại hồ sơ chuyển visa **在留資格変更** (申請書・技能検定合格証・良好修了証明書・雇用契約書・支援計画書), và **hỏi lại lễ phép thuật ngữ** chuyên ngành bằng mẫu **〜というのは何ですか・意味を教えていただけますか** (良好修了・受入機関・給与水準・就労資格・育成就労). Quan trọng nhất là Hoa nhận ra **TTS và SSW1 không tính vào 就労資格** cho **永住権**, nên đường lên vĩnh trú phải đi qua **SSW2** sau khi đỗ **技能検定 2級**. Buổi trưa cô được cấp trên hỏi chuyện cá nhân và học cách trả lời lễ phép với mẫu **気持ちが変わりました・家族と一緒に考えるべきです**. Cuối ngày, gọi điện kể lại cho mẹ — vừa giữ mạch nhân vật, vừa ôn lại bộ thuật ngữ visa bằng tiếng Việt.

> Từ vựng & mẫu câu chương này: 最終面接・在留資格変更許可申請書・技能検定・良好修了証明書・雇用契約書・支援計画書・受入機関・関連職種・飲食料品製造業・技能試験・日本語試験・免除・転職・給与水準・就労資格・永住権・SSW1・SSW2・育成就労・JFT-Basic・〜というのは何ですか・〜ということですね・意味を教えていただけますか・お世話になりました・恐縮です・承知しました・失礼いたします

## Bí quyết chương

- **Suzuki gợi ý hướng 転職**: Không ép. Cho thông tin cân bằng. Hoa có quyền chọn.
- **Mốc thời gian 永住権 chính xác**: 2039 (sớm nhất). Suzuki giải thích TTS+SSW1 không tính 就労資格.
- **3 thế hệ TTS-Ikusei**: Hoa SSW1, Mai năm 2 Ikusei, Trang năm 1 Ikusei. Chuẩn bị cho T11+T12.
- **Hoa đợi mẹ**: T6 mở đường cho T10. Mẹ là yếu tố quyết định ở lại hay về.
- **Bandura**: Suzuki = người dẫn dắt lý tính (cho thông tin), khác Tanaka dẫn dắt cảm xúc (cho ơn nghĩa).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 最終面接 | さいしゅうめんせつ | TỐI CHUNG DIỆN TIẾP | Phỏng vấn cuối kỳ |
| 説明 | せつめい | THUYẾT MINH | Giải thích |
| 振り返り | ふりかえり | CHẤN PHẢN | Ôn lại, hồi tưởng |
| 遅刻 | ちこく | TRÌ KHẮC | Đi muộn |
| 欠勤 | けっきん | KHIẾM CẦN | Nghỉ không phép |
| 苦情 | くじょう | KHỔ TÌNH | Khiếu nại |
| 講習 | こうしゅう | GIẢNG TẬP | Khoá tập huấn |
| 修了 | しゅうりょう | TU LIỄU | Hoàn thành (khoá học) |
| 指導 | しどう | CHỈ ĐẠO | Chỉ dạy |
| 受入 | うけいれ | THỤ NHẬP | Tiếp nhận |
| 模範 | もはん | MÔ PHẠM | Gương mẫu |
| 書類 | しょるい | THƯ LOẠI | Giấy tờ |
| 在留資格変更許可申請書 | ざいりゅうしかくへんこうきょかしんせいしょ | TẠI LƯU TƯ CÁCH BIẾN ĐỔI HỨA KHẢ THÂN THỈNH THƯ | Đơn xin đổi tư cách lưu trú |
| 合格証 | ごうかくしょう | HỢP CÁCH CHỨNG | Bằng đỗ |
| 証明書 | しょうめいしょ | CHỨNG MINH THƯ | Giấy chứng nhận |
| 組合 | くみあい | TỔ HỢP | Tổ chức, nghiệp đoàn |
| 発行 | はっこう | PHÁT HÀNH | Phát hành, cấp |
| 雇用契約書 | こようけいやくしょ | CỐ DỤNG KHẾ ƯỚC THƯ | Hợp đồng lao động |
| 受入機関 | うけいれきかん | THỤ NHẬP CƠ QUAN | Tổ chức tiếp nhận |
| 支援計画書 | しえんけいかくしょ | CHI VIỆN KẾ HOẠCH THƯ | Kế hoạch hỗ trợ |
| 関連職種 | かんれんしょくしゅ | QUAN LIÊN CHỨC CHỦNG | Ngành liên quan |
| 飲食料品製造業 | いんしょくりょうひんせいぞうぎょう | ẨM THỰC LIỆU PHẨM CHẾ TẠO NGHIỆP | Ngành chế biến thực phẩm và đồ uống |
| 分野 | ぶんや | PHÂN DÃ | Lĩnh vực, ngành |
| 技能試験 | ぎのうしけん | KỸ NĂNG THÍ NGHIỆM | Kỳ thi kỹ năng |
| 日本語試験 | にほんごしけん | NHẬT BẢN NGỮ THÍ NGHIỆM | Kỳ thi tiếng Nhật |
| 実績 | じっせき | THỰC TÍCH | Thành tích |
| 雇用契約 | こようけいやく | CỐ DỤNG KHẾ ƯỚC | Hợp đồng lao động |
| 登録 | とうろく | ĐĂNG LỤC | Đăng ký |
| 条件 | じょうけん | ĐIỀU KIỆN | Điều kiện |
| 工場長 | こうじょうちょう | CÔNG XƯỞNG TRƯỞNG | Trưởng nhà máy |
| 給与水準 | きゅうよすいじゅん | CẤP DỮ THUỶ CHUẨN | Mức lương |
| 月給 | げっきゅう | NGUYỆT CẤP | Lương tháng |
| 平均値 | へいきんち | BÌNH QUÂN TRỊ | Giá trị trung bình |
| 都心 | としん | ĐÔ TÂM | Nội đô |
| 大手 | おおて | ĐẠI THỦ | Hãng lớn |
| 受領 | じゅりょう | THỤ LÃNH | Nhận lãnh |
| 決定 | けってい | QUYẾT ĐỊNH | Quyết định |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp |
| 入管 | にゅうかん | NHẬP QUẢN | Cục xuất nhập cảnh |
| 審査 | しんさ | THẨM TRA | Xét duyệt |
| 永住権 | えいじゅうけん | VĨNH TRỤ QUYỀN | Quyền vĩnh trú |
| 視野 | しや | THỊ DÃ | Tầm nhìn |
| 連続在留 | れんぞくざいりゅう | LIÊN TỤC TẠI LƯU | Cư trú liên tục |
| 就労資格 | しゅうろうしかく | TỰU LAO TƯ CÁCH | Tư cách lao động |
| 技人国 | ぎじんこく | KỸ NHÂN QUỐC | Kỹ thuật-Nhân văn-Quốc tế (visa) |
| 個人的 | こじんてき | CÁ NHÂN ĐÍCH | Cá nhân |
| 帰国 | きこく | QUY QUỐC | Về nước |
| 責任 | せきにん | TRÁCH NHIỆM | Trách nhiệm |
| 反応 | はんのう | PHẢN ỨNG | Phản ứng |
| 決断 | けつだん | QUYẾT ĐOÁN | Quyết định |
| 過去問 | かこもん | QUÁ KHỨ VẤN | Đề thi cũ |
| 循環 | じゅんかん | TUẦN HOÀN | Vòng tuần hoàn |
| 世代 | せだい | THẾ ĐẠI | Thế hệ |
| 環境 | かんきょう | HOÀN CẢNH | Môi trường |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000007, 800000013, NULL, 'markdown_book', 'T7. Triển lãm thực phẩm Tokyo — gặp người tuyển dụng (展示会)', '# Sách thực tập sinh thực phẩm · T7. Triển lãm thực phẩm Tokyo — gặp người tuyển dụng (展示会)

> **Mục tiêu nhân vật:** Hoa (năm 3, Saitama Foods) cùng cô Kondo đi triển lãm JFE Food EXPO tại Tokyo Big Sight. Học các mẫu hội thoại tiếng Nhật trong môi trường triển lãm chuyên ngành: đăng ký vào hội chợ với tên + công ty, **trao đổi danh thiếp** (名刺交換) với sales tại gian hàng, kết nối chuyên ngành với **同期** từ khoá HACCP, **hỏi lại** từ chuyên ngành khi chưa hiểu, nghe **recruiter pitch điều kiện tuyển dụng** (給与・賞与・社員寮・主任候補), và xin lời khuyên cấp trên về quyết định chuyển việc.

---

## Bối cảnh

Tháng 10 năm 2028. Hoa đã là thực tập sinh năm 3 tại **埼玉フーズ** — nhà máy thực phẩm ở Saitama, sắp chuyển sang visa SSW1. Hôm nay cô đi cùng **コンドウ先生** (HACCP coordinator) tới hội chợ JFE Food EXPO ở Tokyo Big Sight (Odaiba) — triển lãm ngành thực phẩm lớn nhất Nhật Bản với hơn 500 công ty. Trình độ tiếng Nhật N3. Chương này tập trung các mẫu câu giao tiếp trong hội chợ chuyên ngành: chào hỏi đăng ký, đổi danh thiếp, hỏi lại từ kỹ thuật, kết nối chuyên ngành với đồng môn nước ngoài, và đối thoại với người tuyển dụng.

---

## Tình huống 1 — Ga Saitama · 6:00, chào cấp trên và xác nhận lịch trình

| Vai | Lời thoại |
|---|---|
| Kondo | ホアさん、おはようございます。<ruby>早<rt>はや</rt></ruby>いですね。<br>*(Hoa-san, chào buổi sáng. Em đến sớm nhỉ.)* |
| Hoa | おはようございます、コンドウ<ruby>先生<rt>せんせい</rt></ruby>。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng cô Kondo. Mong cô chỉ bảo ạ.)* |
| Kondo | <ruby>東京<rt>とうきょう</rt></ruby>ビッグサイトまで<ruby>電車<rt>でんしゃ</rt></ruby>で<ruby>1<rt>いち</rt></ruby><ruby>時間半<rt>じかんはん</rt></ruby>ぐらいかかります。<br>*(Đến Tokyo Big Sight bằng tàu mất khoảng 1 tiếng rưỡi.)* |
| Hoa | <ruby>展示会<rt>てんじかい</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Lần đầu em đi triển lãm. Em hơi căng thẳng ạ.)* |
| Kondo | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。JFE Food EXPOは<ruby>食品<rt>しょくひん</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby><ruby>最大<rt>さいだい</rt></ruby>の<ruby>展示会<rt>てんじかい</rt></ruby>で、<ruby>500<rt>ごひゃく</rt></ruby><ruby>社<rt>しゃ</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>が<ruby>出展<rt>しゅってん</rt></ruby>します。<br>*(Không sao đâu. JFE Food EXPO là triển lãm lớn nhất ngành thực phẩm, hơn 500 công ty trưng bày.)* |
| Hoa | わ、すごいですね。たくさん<ruby>勉強<rt>べんきょう</rt></ruby>になりそうです。<br>*(Wow, hoành tráng quá. Chắc sẽ học được nhiều ạ.)* |
| Kondo | では、<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Vậy mình đi nhé.)* |

---

## Tình huống 2 — Trên tàu Saikyo · 7:00, nghe cấp trên dặn 3 mục đích đi triển lãm

| Vai | Lời thoại |
|---|---|
| Kondo | ホアさん、<ruby>展示会<rt>てんじかい</rt></ruby>に<ruby>行<rt>い</rt></ruby>く<ruby>目的<rt>もくてき</rt></ruby>を<ruby>三<rt>みっ</rt></ruby>つ<ruby>覚<rt>おぼ</rt></ruby>えておいてください。<br>*(Em ghi nhớ ba mục đích đi triển lãm nhé.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin nghe ạ.)* |
| Kondo | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>新<rt>あたら</rt></ruby>しい<ruby>機械<rt>きかい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ること。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>業界<rt>ぎょうかい</rt></ruby>のトレンドを<ruby>知<rt>し</rt></ruby>ること。<br>*(Một là xem máy móc mới. Hai là biết xu hướng của ngành.)* |
| Hoa | <ruby>業界<rt>ぎょうかい</rt></ruby>のトレンド、ですね。<br>*(Xu hướng ngành, vâng ạ.)* |
| Kondo | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>同期<rt>どうき</rt></ruby>や<ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>と<ruby>交流<rt>こうりゅう</rt></ruby>することです。<br>*(Ba là giao lưu với 同期 và người trong ngành.)* |
| Hoa | すみません、「<ruby>同期<rt>どうき</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "doki" nghĩa là gì ạ?)* |
| Kondo | <ruby>同<rt>おな</rt></ruby>じ<ruby>時期<rt>じき</rt></ruby>に<ruby>講習<rt>こうしゅう</rt></ruby>や<ruby>研修<rt>けんしゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けた<ruby>仲間<rt>なかま</rt></ruby>のことです。ホアさんはHACCP<ruby>講習<rt>こうしゅう</rt></ruby>の<ruby>同期<rt>どうき</rt></ruby>がたくさんいますよ。<br>*(Là bạn cùng tham gia khoá đào tạo hoặc lớp tập huấn cùng kỳ. Em có nhiều 同期 ở khoá HACCP đấy.)* |
| Hoa | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>会<rt>あ</rt></ruby>えるのが<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(À em hiểu rồi. Em mong được gặp lại lắm ạ.)* |

---

## Tình huống 3 — Trước cửa Big Sight · 8:30, chào hỏi nhân viên dẫn đường

| Vai | Lời thoại |
|---|---|
| Hoa | わ、<ruby>大<rt>おお</rt></ruby>きい!この<ruby>三角形<rt>さんかくけい</rt></ruby>の<ruby>建物<rt>たてもの</rt></ruby>が<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>東京<rt>とうきょう</rt></ruby>ビッグサイトですね。<br>*(Wow, lớn quá! Toà nhà hình tam giác này là Tokyo Big Sight nổi tiếng nhỉ.)* |
| Kondo | はい、<ruby>逆三角形<rt>ぎゃくさんかくけい</rt></ruby>のデザインで<ruby>世界的<rt>せかいてき</rt></ruby>に<ruby>有名<rt>ゆうめい</rt></ruby>です。<br>*(Vâng, thiết kế tam giác ngược nổi tiếng thế giới.)* |
| Hoa | コンドウ<ruby>先生<rt>せんせい</rt></ruby>、<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>ってもいいですか?<br>*(Cô Kondo, em chụp ảnh được không ạ?)* |
| Kondo | もちろん。<ruby>記念<rt>きねん</rt></ruby>になりますね。<br>*(Tất nhiên. Để làm kỷ niệm nhé.)* |
| Nhân viên | おはようございます。<ruby>受付<rt>うけつけ</rt></ruby>カウンターは<ruby>東<rt>ひがし</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>ホール<rt>ほーる</rt></ruby>の<ruby>入<rt>い</rt></ruby>り<ruby>口<rt>ぐち</rt></ruby>にございます。<br>*(Chào buổi sáng. Quầy đăng ký ở lối vào East Hall 1 ạ.)* |
| Hoa | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 4 — Quầy đăng ký · 9:00, học cách báo tên và công ty

| Vai | Lời thoại |
|---|---|
| Reception | おはようございます。お<ruby>名前<rt>なまえ</rt></ruby>と<ruby>会社名<rt>かいしゃめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Cho xin tên và tên công ty ạ.)* |
| Hoa | グエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。<ruby>埼玉<rt>さいたま</rt></ruby>フーズから<ruby>参<rt>まい</rt></ruby>りました。<br>*(Tôi tên là Nguyễn Thị Hoa. Đến từ Saitama Foods ạ.)* |
| Reception | <ruby>確認<rt>かくにん</rt></ruby>いたしました。こちらが<ruby>名札<rt>なふだ</rt></ruby>と<ruby>会場<rt>かいじょう</rt></ruby>パンフレットです。<br>*(Đã xác nhận. Đây là thẻ tên và sách hướng dẫn hội trường.)* |
| Hoa | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Reception | <ruby>本日<rt>ほんじつ</rt></ruby>はごゆっくりお<ruby>楽<rt>たの</rt></ruby>しみください。<br>*(Hôm nay xin mời quý khách thoải mái thưởng thức triển lãm.)* |
| Hoa | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |
| Kondo | では、まず<ruby>東<rt>ひがし</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>ホール<rt>ほーる</rt></ruby>から<ruby>見<rt>み</rt></ruby>ましょう。<ruby>包装機械<rt>ほうそうきかい</rt></ruby>のエリアです。<br>*(Vậy mình xem từ East Hall 1 nhé. Khu vực máy đóng gói.)* |
| Hoa | はい!<br>*(Vâng!)* |

---

## Tình huống 5 — Gian hàng máy đóng gói · 10:00, hỏi lại từ chuyên ngành và đổi danh thiếp

| Vai | Lời thoại |
|---|---|
| Kondo | これは<ruby>最新<rt>さいしん</rt></ruby>のAI<ruby>包装機<rt>ほうそうき</rt></ruby>ですね。すごい。<br>*(Đây là máy đóng gói AI mới nhất nhỉ. Hay quá.)* |
| Hoa | コンドウ<ruby>先生<rt>せんせい</rt></ruby>、「AI<ruby>包装機<rt>ほうそうき</rt></ruby>」はどんな<ruby>機械<rt>きかい</rt></ruby>ですか?<br>*(Cô Kondo, "máy đóng gói AI" là loại máy thế nào ạ?)* |
| Kondo | <ruby>異物<rt>いぶつ</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>と<ruby>不良品<rt>ふりょうひん</rt></ruby><ruby>除外<rt>じょがい</rt></ruby>を<ruby>自動<rt>じどう</rt></ruby>でやってくれる<ruby>機械<rt>きかい</rt></ruby>です。<br>*(Là máy tự động phát hiện dị vật và loại bỏ hàng lỗi.)* |
| Hoa | すみません、「<ruby>異物<rt>いぶつ</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>」というのは?<br>*(Xin lỗi, "ibutsu kenshutsu" nghĩa là gì ạ?)* |
| Kondo | <ruby>食品<rt>しょくひん</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>髪<rt>かみ</rt></ruby>の<ruby>毛<rt>け</rt></ruby>や<ruby>金属<rt>きんぞく</rt></ruby>などの<ruby>異物<rt>いぶつ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っていないか、<ruby>機械<rt>きかい</rt></ruby>で<ruby>探<rt>さが</rt></ruby>すことです。<br>*(Là việc dùng máy dò tìm xem có vật lạ như tóc, kim loại lẫn vào trong thực phẩm hay không.)* |
| Hoa | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。HACCPで<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>項目<rt>こうもく</rt></ruby>ですね。<br>*(Em hiểu rồi. Là hạng mục quan trọng trong HACCP nhỉ.)* |
| Sales | こんにちは!ご<ruby>興味<rt>きょうみ</rt></ruby>がございますか?<br>*(Xin chào! Anh chị có quan tâm không ạ?)* |
| Kondo | <ruby>埼玉<rt>さいたま</rt></ruby>フーズのコンドウと<ruby>申<rt>もう</rt></ruby>します。HACCPコーディネーターをしております。お<ruby>名刺<rt>めいし</rt></ruby>を<ruby>交換<rt>こうかん</rt></ruby>させてください。<br>*(Tôi là Kondo, Saitama Foods. Tôi làm điều phối viên HACCP. Cho phép tôi trao đổi danh thiếp.)* |
| Sales | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tôi mới phải cảm ơn ạ, rất mong được hợp tác.)* |
| Hoa | (cúi đầu, hơi lúng túng) すみません、<ruby>私<rt>わたし</rt></ruby>はまだ<ruby>実習生<rt>じっしゅうせい</rt></ruby>で<ruby>名刺<rt>めいし</rt></ruby>を<ruby>持<rt>も</rt></ruby>っておりません。<br>*(Xin lỗi, em vẫn là thực tập sinh nên chưa có danh thiếp ạ.)* |
| Sales | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。お<ruby>名前<rt>なまえ</rt></ruby>だけ<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Không sao đâu ạ. Tôi sẽ nhớ tên em thôi.)* |

---

## Tình huống 6 — Cafe area · 11:30, gặp 同期 cũ từ khoá HACCP

| Vai | Lời thoại |
|---|---|
| Yang | あれ、ホアさん!?<br>*(Ơ, có phải Hoa-san không!?)* |
| Hoa | え、ヤン<ruby>君<rt>くん</rt></ruby>!お<ruby>久<rt>ひさ</rt></ruby>しぶりです!<br>*(Ơ, Yang-kun! Lâu rồi không gặp!)* |
| Yang | やっぱりホアさんだ!HACCPコース<ruby>以来<rt>いらい</rt></ruby>ですね。もう<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>になります。<br>*(Đúng là Hoa-san! Từ khoá HACCP đến giờ. Đã 2 năm rồi nhỉ.)* |
| Hoa | <ruby>早<rt>はや</rt></ruby>いですね。ヤン<ruby>君<rt>くん</rt></ruby>はミャンマー<ruby>出身<rt>しゅっしん</rt></ruby>で、<ruby>千葉<rt>ちば</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>でしたよね?<br>*(Nhanh thật. Yang-kun là người Myanmar, làm ở công ty Chiba đúng không?)* |
| Yang | はい、よく<ruby>覚<rt>おぼ</rt></ruby>えていますね。<ruby>今<rt>いま</rt></ruby>もそこで<ruby>働<rt>はたら</rt></ruby>いています。<ruby>来年<rt>らいねん</rt></ruby>SSW1へ<ruby>移行<rt>いこう</rt></ruby>する<ruby>準備中<rt>じゅんびちゅう</rt></ruby>です。<br>*(Vâng, em nhớ kỹ nhỉ. Vẫn đang làm ở đó. Đang chuẩn bị chuyển sang SSW1 năm sau.)* |
| Hoa | わ、<ruby>同<rt>おな</rt></ruby>じです!<ruby>私<rt>わたし</rt></ruby>もSSW1へ<ruby>移行<rt>いこう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Wow, giống em! Em cũng dự định chuyển sang SSW1.)* |
| Yang | お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>りましょう。<ruby>食品衛生<rt>しょくひんえいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>はもう<ruby>取<rt>と</rt></ruby>りましたか?<br>*(Cùng cố lên. Em đã lấy chứng chỉ Người phụ trách vệ sinh thực phẩm chưa?)* |
| Hoa | はい、<ruby>去年<rt>きょねん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>しました。ヤン<ruby>君<rt>くん</rt></ruby>は?<br>*(Em đỗ năm ngoái rồi. Yang-kun thì sao?)* |
| Yang | <ruby>私<rt>わたし</rt></ruby>もです。<ruby>同期<rt>どうき</rt></ruby>はやっぱり<ruby>頼<rt>たよ</rt></ruby>りになりますね。<br>*(Em cũng vậy. 同期 đúng là chỗ dựa đáng tin cậy.)* |

---

## Tình huống 7 — Cafe area · 11:45, Yang giới thiệu sempai SSW1 năm 3

| Vai | Lời thoại |
|---|---|
| Yang | ホアさん、こちらは<ruby>友達<rt>ともだち</rt></ruby>のリ・ミンさんです。<ruby>韓国<rt>かんこく</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>で、<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>食品工場<rt>しょくひんこうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<br>*(Hoa-san, đây là bạn của em, anh Lee-Min. Người Hàn Quốc, đang làm tại nhà máy thực phẩm ở Tokyo.)* |
| Lee | <ruby>初<rt>はじ</rt></ruby>めまして、リと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh, tôi là Lee. Mong được giúp đỡ.)* |
| Hoa | <ruby>初<rt>はじ</rt></ruby>めまして、グエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh, em tên là Nguyễn Thị Hoa. Mong anh giúp đỡ.)* |
| Lee | <ruby>私<rt>わたし</rt></ruby>はSSW1の<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。<ruby>食品<rt>しょくひん</rt></ruby><ruby>製造<rt>せいぞう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<br>*(Tôi đang là SSW1 năm thứ 3. Làm trong lĩnh vực sản xuất thực phẩm.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>ですね。お<ruby>聞<rt>き</rt></ruby>きしたいことがたくさんあります。<br>*(Là sempai năm 3 ạ. Em có nhiều điều muốn hỏi anh.)* |
| Lee | はい、なんでも<ruby>聞<rt>き</rt></ruby>いてください。<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>は<ruby>家賃<rt>やちん</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いですが、<ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>高<rt>たか</rt></ruby>いです。<br>*(Vâng, cứ hỏi thoải mái. Công ty Tokyo nhà cao nhưng lương cũng cao.)* |
| Hoa | <ruby>差<rt>さ</rt></ruby><ruby>引<rt>ひ</rt></ruby>くとどのくらい<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Trừ ra thì chênh nhau bao nhiêu ạ?)* |
| Lee | <ruby>埼玉<rt>さいたま</rt></ruby>より<ruby>月<rt>つき</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>ぐらい<ruby>多<rt>おお</rt></ruby>く<ruby>残<rt>のこ</rt></ruby>ると<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi nghĩ dư khoảng 20.000 yên một tháng so với ở Saitama.)* |

---

## Tình huống 8 — Food court · 12:30, ăn trưa 4 người và quan sát đàn anh giới thiệu công ty

| Vai | Lời thoại |
|---|---|
| Yang | コンドウ<ruby>先生<rt>せんせい</rt></ruby>、お<ruby>昼<rt>ひる</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>にいかがですか?<br>*(Cô Kondo, mời cô ăn trưa cùng được không ạ?)* |
| Kondo | はい、ぜひ。<ruby>4<rt>よん</rt></ruby><ruby>人<rt>にん</rt></ruby>でゆっくり<ruby>話<rt>はな</rt></ruby>しましょう。<br>*(Vâng, mời nhé. Bốn người mình nói chuyện thoải mái.)* |
| Lee | コンドウ<ruby>先生<rt>せんせい</rt></ruby>はホアさんの<ruby>上司<rt>じょうし</rt></ruby>ですか?<br>*(Cô Kondo là cấp trên của Hoa-san ạ?)* |
| Kondo | <ruby>同<rt>おな</rt></ruby>じ<ruby>会社<rt>かいしゃ</rt></ruby>のHACCPコーディネーターです。ホアさんを<ruby>指導<rt>しどう</rt></ruby>しています。<br>*(Là điều phối viên HACCP cùng công ty. Tôi đang hướng dẫn Hoa.)* |
| Lee | <ruby>専門家<rt>せんもんか</rt></ruby>の<ruby>方<rt>かた</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来<rt>こ</rt></ruby>られるなんて、いいですね。<br>*(Được đi cùng chuyên gia, tốt thật nhỉ.)* |
| Hoa | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>恵<rt>めぐ</rt></ruby>まれています。<br>*(Vâng, em thật sự được nhiều ưu ái ạ.)* |
| Yang | <ruby>埼玉<rt>さいたま</rt></ruby>フーズは<ruby>実習生<rt>じっしゅうせい</rt></ruby>の<ruby>扱<rt>あつか</rt></ruby>いがいいと<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em nghe nói Saitama Foods đối xử thực tập sinh tốt.)* |
| Hoa | はい、<ruby>皆<rt>みな</rt></ruby>さん<ruby>親切<rt>しんせつ</rt></ruby>で、<ruby>教<rt>おし</rt></ruby>えてくださいます。<br>*(Vâng, mọi người tử tế và chỉ bảo cho em.)* |
| Lee | <ruby>私<rt>わたし</rt></ruby>のところは<ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>良<rt>よ</rt></ruby>いですが、<ruby>人間関係<rt>にんげんかんけい</rt></ruby>は<ruby>普通<rt>ふつう</rt></ruby>です。<ruby>何<rt>なに</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にするかは<ruby>人<rt>ひと</rt></ruby>によりますね。<br>*(Chỗ tôi lương cao nhưng quan hệ con người thì bình thường. Coi trọng cái gì thì tuỳ người.)* |

---

## Tình huống 9 — Cafe area · 13:30, được sempai mời gặp recruiter

| Vai | Lời thoại |
|---|---|
| Lee | ホアさん、<ruby>実<rt>じつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>、SSW1を<ruby>募集中<rt>ぼしゅうちゅう</rt></ruby>なんです。<br>*(Hoa-san, thật ra công ty tôi đang tuyển SSW1 đấy.)* |
| Hoa | え、そうなんですか?<br>*(Ơ, vậy ạ?)* |
| Lee | はい。<ruby>同<rt>おな</rt></ruby>じ<ruby>食品<rt>しょくひん</rt></ruby><ruby>製造<rt>せいぞう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>です。<ruby>興味<rt>きょうみ</rt></ruby>があれば、リクルーターを<ruby>紹介<rt>しょうかい</rt></ruby>しますよ。<br>*(Vâng. Cùng ngành sản xuất thực phẩm. Nếu em quan tâm, anh giới thiệu người tuyển dụng cho.)* |
| Hoa | すみません、「リクルーター」というのは<ruby>何<rt>なに</rt></ruby>をする<ruby>人<rt>ひと</rt></ruby>ですか?<br>*(Xin lỗi, "recruiter" là người làm gì ạ?)* |
| Lee | <ruby>採用<rt>さいよう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>のことです。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>や<ruby>給与<rt>きゅうよ</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>してくれます。<br>*(Là người phụ trách tuyển dụng. Họ sẽ giải thích điều kiện và lương của công ty.)* |
| Hoa | (phân vân) ...<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>くだけでもいいですか?<br>*(...em chỉ nghe nói chuyện thôi có được không ạ?)* |
| Lee | もちろんです。<ruby>無理<rt>むり</rt></ruby>に<ruby>決<rt>き</rt></ruby>める<ruby>必要<rt>ひつよう</rt></ruby>はありません。<br>*(Tất nhiên. Không cần phải quyết định ngay đâu.)* |
| Hoa | では、お<ruby>願<rt>ねが</rt></ruby>いします。コンドウ<ruby>先生<rt>せんせい</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>のホールを<ruby>見<rt>み</rt></ruby>ているので、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>合流<rt>ごうりゅう</rt></ruby>します。<br>*(Vậy nhờ anh giúp. Cô Kondo đang xem hội trường khác, 30 phút nữa em sẽ gặp lại cô.)* |
| Lee | では、<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Vậy mình đi.)* |

---

## Tình huống 10 — Gian Tokyo Foods · 14:00, nghe recruiter giới thiệu điều kiện

| Vai | Lời thoại |
|---|---|
| Lee | <ruby>木下<rt>きのした</rt></ruby>さん、こちらがホアさんです。<ruby>埼玉<rt>さいたま</rt></ruby>フーズで<ruby>実習生<rt>じっしゅうせい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、SSW1へ<ruby>移行<rt>いこう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Anh Kinoshita, đây là Hoa-san. Đang là thực tập sinh năm 3 ở Saitama Foods, dự định chuyển SSW1.)* |
| Kinoshita | <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>東京<rt>とうきょう</rt></ruby>フーズ<ruby>採用<rt>さいよう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>の<ruby>木下<rt>きのした</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Rất hân hạnh, tôi là Kinoshita, phụ trách tuyển dụng Tokyo Foods.)* |
| Hoa | <ruby>初<rt>はじ</rt></ruby>めまして、グエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh, em tên là Nguyễn Thị Hoa. Mong anh chỉ bảo.)* |
| Kinoshita | <ruby>食品衛生<rt>しょくひんえいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>と<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>されたとお<ruby>聞<rt>き</rt></ruby>きしました。<br>*(Tôi nghe nói em đã đỗ chứng chỉ Người phụ trách vệ sinh thực phẩm và Kỹ năng kiểm định cấp 3.)* |
| Hoa | はい、<ruby>去年<rt>きょねん</rt></ruby><ruby>取<rt>と</rt></ruby>りました。<br>*(Vâng, em đã lấy năm ngoái ạ.)* |
| Kinoshita | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>魅力的<rt>みりょくてき</rt></ruby>な<ruby>候補者<rt>こうほしゃ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<ruby>当社<rt>とうしゃ</rt></ruby>のSSW1<ruby>初年度<rt>しょねんど</rt></ruby><ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>賞与<rt>しょうよ</rt></ruby>は<ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>です。<br>*(Tôi nghĩ em là ứng viên rất hấp dẫn. Lương SSW1 năm đầu của công ty chúng tôi là 230.000 yên/tháng, thưởng 2 lần/năm.)* |
| Hoa | すみません、「<ruby>賞与<rt>しょうよ</rt></ruby>」というのは?<br>*(Xin lỗi, "shouyo" nghĩa là gì ạ?)* |
| Kinoshita | ボーナスのことです。<ruby>夏<rt>なつ</rt></ruby>と<ruby>冬<rt>ふゆ</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>支給<rt>しきゅう</rt></ruby>します。<br>*(Là thưởng (bonus). Cấp 2 lần vào mùa hè và mùa đông.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Em hiểu rồi. Em cảm ơn ạ.)* |

---

## Tình huống 11 — Gian Tokyo Foods · 14:15, nghe recruiter pitch 3 thế mạnh

| Vai | Lời thoại |
|---|---|
| Kinoshita | <ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みを<ruby>三<rt>みっ</rt></ruby>つご<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>給与<rt>きゅうよ</rt></ruby>が<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>上位<rt>じょうい</rt></ruby><ruby>20<rt>にじっ</rt></ruby>パーセントです。<br>*(Tôi xin giải thích 3 thế mạnh của công ty. Một là lương top 20% của ngành.)* |
| Hoa | はい。<br>*(Vâng.)* |
| Kinoshita | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>社員寮<rt>しゃいんりょう</rt></ruby>が<ruby>無料<rt>むりょう</rt></ruby>で、<ruby>都内<rt>とない</rt></ruby>の<ruby>個室<rt>こしつ</rt></ruby>です。<br>*(Hai là ký túc nhân viên miễn phí, phòng riêng trong nội đô Tokyo.)* |
| Hoa | <ruby>個室<rt>こしつ</rt></ruby>で<ruby>無料<rt>むりょう</rt></ruby>ですか。すごいですね。<br>*(Phòng riêng mà miễn phí ạ. Tuyệt quá.)* |
| Kinoshita | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、SSW2への<ruby>移行<rt>いこう</rt></ruby><ruby>支援<rt>しえん</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>受験料<rt>じゅけんりょう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>負担<rt>ふたん</rt></ruby>します。<br>*(Ba là hỗ trợ chuyển lên SSW2. Lệ phí thi cấp 2 do công ty đài thọ.)* |
| Hoa | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>魅力的<rt>みりょくてき</rt></ruby>な<ruby>条件<rt>じょうけん</rt></ruby>です。<br>*(Điều kiện rất hấp dẫn ạ.)* |
| Kinoshita | ホアさんのレベルでしたら、<ruby>将来<rt>しょうらい</rt></ruby><ruby>主任候補<rt>しゅにんこうほ</rt></ruby>として<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Với trình độ của Hoa-san, chúng tôi đang dự kiến là ứng viên chủ nhiệm trong tương lai.)* |
| Hoa | <ruby>主任候補<rt>しゅにんこうほ</rt></ruby>...<ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(Ứng viên chủ nhiệm... em rất vinh hạnh ạ.)* |
| Kinoshita | <ruby>無理<rt>むり</rt></ruby>には<ruby>申<rt>もう</rt></ruby>しません。こちらが<ruby>名刺<rt>めいし</rt></ruby>です。<ruby>11<rt>じゅういち</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までに<ruby>連絡<rt>れんらく</rt></ruby>いただければ<ruby>幸<rt>さいわ</rt></ruby>いです。<br>*(Chúng tôi không ép. Đây là danh thiếp. Mong em liên lạc trước cuối tháng 11.)* |
| Hoa | はい、<ruby>検討<rt>けんとう</rt></ruby>させていただきます。<br>*(Vâng, em xin phép cân nhắc.)* |

---

## Tình huống 12 — Hành lang Big Sight · 14:30, xin lời khuyên sempai

| Vai | Lời thoại |
|---|---|
| Lee | どうでしたか?<br>*(Sao rồi?)* |
| Hoa | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>魅力的<rt>みりょくてき</rt></ruby>です。でも<ruby>少<rt>すこ</rt></ruby>し<ruby>迷<rt>まよ</rt></ruby>っています。<br>*(Nói thật là hấp dẫn. Nhưng em hơi phân vân.)* |
| Lee | どうしてですか?<br>*(Sao vậy?)* |
| Hoa | <ruby>埼玉<rt>さいたま</rt></ruby>フーズの<ruby>皆<rt>みな</rt></ruby>さんを<ruby>裏切<rt>うらぎ</rt></ruby>るような<ruby>気<rt>き</rt></ruby>がします。<br>*(Em có cảm giác như đang phản bội mọi người ở Saitama Foods.)* |
| Lee | <ruby>裏切<rt>うらぎ</rt></ruby>りではありませんよ。<ruby>転職<rt>てんしょく</rt></ruby>は<ruby>働<rt>はたら</rt></ruby>く<ruby>人<rt>ひと</rt></ruby>の<ruby>権利<rt>けんり</rt></ruby>です。<br>*(Không phải phản bội đâu. Chuyển việc là quyền của người lao động.)* |
| Hoa | そうでしょうか...<br>*(Vậy ạ...)* |
| Lee | <ruby>私<rt>わたし</rt></ruby>も<ruby>実習生<rt>じっしゅうせい</rt></ruby><ruby>時代<rt>じだい</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>転職<rt>てんしょく</rt></ruby>しました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ない<ruby>気持<rt>きも</rt></ruby>ちはありましたが、<ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>だったと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Tôi cũng chuyển từ công ty thời thực tập sinh. Có chút áy náy, nhưng tôi nghĩ là quyết định đúng.)* |
| Hoa | <ruby>家族<rt>かぞく</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>してみます。<br>*(Em sẽ bàn với gia đình ạ.)* |
| Lee | それがいいです。よく<ruby>考<rt>かんが</rt></ruby>えてから<ruby>決<rt>き</rt></ruby>めてください。<br>*(Đúng vậy. Suy nghĩ kỹ rồi hãy quyết.)* |

---

## Tình huống 13 — Hall tây · 15:00, xin lời khuyên cấp trên Kondo

| Vai | Lời thoại |
|---|---|
| Kondo | ホアさん、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりましたね。<ruby>何<rt>なに</rt></ruby>かありましたか?<br>*(Hoa-san, mặt em khác rồi. Có chuyện gì sao?)* |
| Hoa | コンドウ<ruby>先生<rt>せんせい</rt></ruby>、<ruby>正直<rt>しょうじき</rt></ruby>にお<ruby>話<rt>はな</rt></ruby>しします。<ruby>東京<rt>とうきょう</rt></ruby>フーズのリクルーターと<ruby>話<rt>はな</rt></ruby>して、<ruby>転職<rt>てんしょく</rt></ruby>を<ruby>誘<rt>さそ</rt></ruby>われました。<br>*(Thưa cô Kondo, em xin nói thật. Em đã nói chuyện với recruiter của Tokyo Foods và được mời chuyển việc.)* |
| Kondo | (im lặng một chút) ...そうですか。<br>*(...vậy à.)* |
| Hoa | <ruby>給与<rt>きゅうよ</rt></ruby>がかなり<ruby>高<rt>たか</rt></ruby>くて、<ruby>少<rt>すこ</rt></ruby>し<ruby>迷<rt>まよ</rt></ruby>っています。<br>*(Lương khá cao, em hơi phân vân ạ.)* |
| Kondo | これはホアさん<ruby>自身<rt>じしん</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>からは<ruby>賛成<rt>さんせい</rt></ruby>も<ruby>反対<rt>はんたい</rt></ruby>もしません。<br>*(Đây là quyết định của bản thân em. Tôi không tán thành cũng không phản đối.)* |
| Hoa | はい...<br>*(Vâng...)* |
| Kondo | ただ<ruby>一<rt>ひと</rt></ruby>つだけ<ruby>言<rt>い</rt></ruby>わせてください。<ruby>給与<rt>きゅうよ</rt></ruby>だけで<ruby>判断<rt>はんだん</rt></ruby>しないでください。<ruby>20<rt>にじゅう</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>新人<rt>しんじん</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>をタナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>ててくださいました。その<ruby>恩<rt>おん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずに、<ruby>今<rt>いま</rt></ruby>もここにいます。<br>*(Nhưng cho tôi nói một điều. Đừng quyết chỉ vì lương. 20 năm trước, lúc tôi mới vào nghề, ông chủ xưởng Tanaka đã dạy dỗ tôi. Tôi không quên ơn ấy nên đến giờ vẫn ở đây.)* |
| Hoa | <ruby>先生<rt>せんせい</rt></ruby>は<ruby>後悔<rt>こうかい</rt></ruby>していませんか?<br>*(Cô không hối hận ạ?)* |
| Kondo | <ruby>後悔<rt>こうかい</rt></ruby>はありません。お<ruby>金<rt>かね</rt></ruby>では<ruby>買<rt>か</rt></ruby>えないものもあります。<br>*(Tôi không hối hận. Có những thứ tiền không mua được.)* |
| Hoa | (cúi đầu) <ruby>分<rt>わ</rt></ruby>かりました。よく<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Em hiểu rồi. Em sẽ suy nghĩ kỹ.)* |

---

## Tình huống 14 — Tàu về Saitama · 18:00, gọi điện về cho mẹ ở Việt Nam

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Alô mẹ ơi, con đang về tàu từ Tokyo. Hôm nay con đi triển lãm thực phẩm với cô Kondo. |
| Mẹ Hoa | (tiếng Việt) Ừ, vui không con? Có quen được bạn nào không? |
| Hoa | (tiếng Việt) Có mẹ ạ. Gặp lại Yang — bạn cùng khoá HACCP người Myanmar — gọi là 同期 đó mẹ. Bạn ấy cũng sắp chuyển SSW1 giống con. |
| Mẹ Hoa | (tiếng Việt) Vui ghê. Có chuyện gì khác không, mẹ thấy giọng con hơi khang khác. |
| Hoa | (tiếng Việt) Có mẹ ạ. Hôm nay có một công ty Tokyo mời con chuyển sang. Họ trả 230.000 yên một tháng, cộng thêm 賞与 — tức là tiền thưởng — hai lần một năm. Ký túc miễn phí ngay trong Tokyo. |
| Mẹ Hoa | (tiếng Việt) Cao hơn chỗ con bây giờ nhiều không? |
| Hoa | (tiếng Việt) Cao hơn khoảng 30.000 yên một tháng. Một năm dư thêm gần 80 triệu đồng tiền Việt. |
| Mẹ Hoa | (tiếng Việt) Thế còn chỗ Saitama hiện tại? Cô Kondo, ông chủ xưởng Tanaka tốt với con vậy mà... |
| Hoa | (tiếng Việt) Đấy mới khó mẹ ạ. Cô Kondo bảo "đừng quyết chỉ vì lương". Cô kể 20 năm trước ông Tanaka dạy cô, cô vẫn nhớ ơn. Con nghe xong cứ thấy day dứt. |
| Mẹ Hoa | (tiếng Việt) Con cứ suy nghĩ kỹ, đừng vội. Người mình trọng cái nghĩa hơn cái tiền. Nhưng quyết là quyết của con, mẹ không cản. |
| Hoa | (tiếng Việt) Vâng mẹ. Con sẽ cân nhắc đến cuối tháng 11. Con phải xuống ga rồi, mai con gọi lại. |
| Mẹ Hoa | (tiếng Việt) Ừ, ngủ ngon nhé con. |

---

## Đọng lại chương 7

Một ngày ở Tokyo Big Sight, Hoa học được nhiều mẫu câu giao tiếp trong môi trường hội chợ chuyên ngành: **đăng ký với tên + công ty** (〜と申します・〜から参りました), **trao đổi danh thiếp** (お名刺を交換させてください), **hỏi lại từ chuyên ngành** (〜というのは何ですか / どんな機械ですか) với các từ kỹ thuật như **異物検出・包装機・賞与・主任候補**, **chào hỏi 同期** sau thời gian dài (お久しぶりです・以来ですね), **quan sát đàn anh giới thiệu công ty** trong bữa trưa kết nối chuyên ngành, và **đối thoại với recruiter** nghe pitch ba thế mạnh (給与・社員寮・SSW2移行支援). Quan trọng nhất, Hoa học cách **xin lời khuyên cấp trên** khi đứng trước quyết định lớn và nghe cô Kondo nhắc một câu khoá: **給与だけで判断しないでください** — đừng quyết chỉ vì lương. Đó là bài học về văn hoá nghĩa tình trong môi trường công sở Nhật.

> Từ vựng & mẫu câu chương này: 展示会・出展・同期・名刺交換・採用担当・リクルーター・転職・主任候補・社員寮・給与・賞与・初年度・移行支援・異物検出・不良品除外・包装機・食品衛生責任者・技能検定・業界トレンド・〜と申します・〜から参りました・〜というのは・お久しぶりです・検討させていただきます・給与だけで判断しないでください

## Bí quyết chương

- **Xây dựng quan hệ thật**: Yang (Myanmar) + Lee (Hàn Quốc) là 同期 từ HACCP khoá. Mạng nhỏ nhưng có giá trị.
- **Recruiter lịch sự**: Kinoshita không ép, đưa danh thiếp + thời hạn cân nhắc 1 tháng.
- **Kondo neutral**: Không cản, không ủng hộ. Chỉ "đừng quyết chỉ vì lương" — câu khoá.
- **Kondo''s story = mirror**: 20 năm trước Tanaka dạy Kondo. Sau Hoa cũng thành Kondo? Mở câu hỏi cho T11.
- **Hoa giấu Suzuki/Tanaka**: Áy náy. Khởi đầu căng thẳng.

> *"Lương cao hơn 30.000 yên. Hay 20 năm ơn không hối hận. Lựa chọn nào?"*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 展示会 | てんじかい | TRIỂN THỊ HỘI | Triển lãm |
| 出展 | しゅってん | XUẤT TRIỂN | Trưng bày, xuất gian |
| 業界 | ぎょうかい | NGHIỆP GIỚI | Ngành, giới |
| 最大 | さいだい | TỐI ĐẠI | Lớn nhất |
| 食品 | しょくひん | THỰC PHẨM | Thực phẩm |
| 目的 | もくてき | MỤC ĐÍCH | Mục đích |
| 機械 | きかい | CƠ GIỚI | Máy móc |
| 同期 | どうき | ĐỒNG KỲ | Bạn cùng khoá |
| 研修 | けんしゅう | NGHIÊN TU | Tập huấn |
| 三角形 | さんかくけい | TAM GIÁC HÌNH | Hình tam giác |
| 建物 | たてもの | KIẾN VẬT | Toà nhà |
| 逆三角形 | ぎゃくさんかくけい | NGHỊCH TAM GIÁC HÌNH | Tam giác ngược |
| 受付 | うけつけ | THỤ PHÓ | Quầy lễ tân |
| 会社名 | かいしゃめい | HỘI XÃ DANH | Tên công ty |
| 名札 | なふだ | DANH TRÁT | Thẻ tên |
| 会場 | かいじょう | HỘI TRƯỜNG | Hội trường |
| 包装機械 | ほうそうきかい | BAO TRANG CƠ GIỚI | Máy đóng gói |
| 最新 | さいしん | TỐI TÂN | Mới nhất |
| 包装機 | ほうそうき | BAO TRANG CƠ | Máy đóng gói |
| 異物 | いぶつ | DỊ VẬT | Vật lạ |
| 検出 | けんしゅつ | KIỂM XUẤT | Phát hiện, dò |
| 除外 | じょがい | TRỪ NGOẠI | Loại trừ |
| 金属 | きんぞく | KIM THUỘC | Kim loại |
| 名刺 | めいし | DANH THỨ | Danh thiếp |
| 交換 | こうかん | GIAO HOÁN | Trao đổi |
| 実習生 | じっしゅうせい | THỰC TẬP SINH | Thực tập sinh |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán, xuất thân |
| 準備中 | じゅんびちゅう | CHUẨN BỊ TRUNG | Đang chuẩn bị |
| 製造 | せいぞう | CHẾ TẠO | Sản xuất |
| 給与 | きゅうよ | CẤP DỮ | Lương |
| 上司 | じょうし | THƯỢNG TƯ | Cấp trên |
| 専門家 | せんもんか | CHUYÊN MÔN GIA | Chuyên gia |
| 親切 | しんせつ | THÂN THIẾT | Tử tế |
| 人間関係 | にんげんかんけい | NHÂN GIAN QUAN HỆ | Quan hệ con người |
| 募集中 | ぼしゅうちゅう | MỘ TẬP TRUNG | Đang tuyển |
| 採用担当 | さいようたんとう | THẢI DỤNG ĐẢM ĐƯƠNG | Phụ trách tuyển dụng |
| リクルーター | — | — | Người tuyển dụng (recruiter) |
| 紹介 | しょうかい | THIỆU GIỚI | Giới thiệu |
| 候補者 | こうほしゃ | HẬU BỔ GIẢ | Ứng viên |
| 初年度 | しょねんど | SƠ NIÊN ĐỘ | Năm đầu |
| 賞与 | しょうよ | THƯỞNG DỮ | Tiền thưởng (bonus) |
| 支給 | しきゅう | CHI CẤP | Cấp phát |
| 上位 | じょうい | THƯỢNG VỊ | Top, hạng cao |
| 社員寮 | しゃいんりょう | XÃ VIÊN LIÊU | Ký túc nhân viên |
| 無料 | むりょう | VÔ LIỆU | Miễn phí |
| 個室 | こしつ | CÁ THẤT | Phòng riêng |
| 都内 | とない | ĐÔ NỘI | Nội đô Tokyo |
| 移行支援 | いこうしえん | DI HÀNH CHI VIỆN | Hỗ trợ chuyển đổi |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | Lệ phí thi |
| 負担 | ふたん | PHỤ ĐẢM | Đài thọ, gánh |
| 主任候補 | しゅにんこうほ | CHỦ NHIỆM HẬU BỔ | Ứng viên chủ nhiệm |
| 検討 | けんとう | KIỂM THẢO | Cân nhắc |
| 裏切り | うらぎり | LÝ THIẾT | Phản bội |
| 権利 | けんり | QUYỀN LỢI | Quyền |
| 賛成 | さんせい | TÁN THÀNH | Tán thành |
| 恩 | おん | ÂN | Ơn |
| 業界トレンド | ぎょうかいトレンド | NGHIỆP GIỚI — | Xu hướng ngành |
| HACCPコーディネーター | — | — | Điều phối viên HACCP |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000008, 800000013, NULL, 'markdown_book', 'T8. Thanh tra Lawson — Hoa dẫn đoàn (ローソン監査)', '# Sách thực tập sinh thực phẩm · T8. Thanh tra Lawson — Hoa dẫn đoàn (ローソン監査)

> **Mục tiêu nhân vật:** Hoa (24 tuổi, Hà Nội) năm 3 tại Saitama Foods, lần đầu dẫn đoàn kiểm tra của Lawson. Học các mẫu hội thoại tiếng Nhật phục vụ kiểm tra chất lượng tại nhà máy thực phẩm: nhận brief từ cấp trên (任せる・全権), chào hỏi đoàn thanh tra và tự giới thiệu chuyên môn (食品衛生責任者・技能検定), trình bày quy trình quản lý nhiệt độ (温度管理), giải thích thẳng thắn sự cố cũ (クロスコンタミ・是正措置), làm mẫu truy xuất nguồn gốc (トレーサビリティ), hỏi lại lễ phép khi chưa rõ yêu cầu (〜というのは？・〜ということですね), và đáp lại lời đề nghị thăng chức (リーダー・任命).

---

## Bối cảnh

Tháng 11 năm 2028. Hoa đã làm việc gần 3 năm tại **株式会社埼玉フーズ** — nhà máy bento ở Saitama vừa ký hợp đồng OEM với Lawson. Trình độ tiếng Nhật N3 (sắp thi JLPT tháng 12), đã đỗ 食品衛生責任者 và 技能検定 3級. Hôm nay đoàn 品質管理部 của Lawson đến kiểm tra hiện trường lần đầu, Tanaka 工場長 giao toàn quyền cho Hoa dẫn đoàn. Chương này tập trung các mẫu câu giao tiếp tại buổi thanh tra nhà máy thực phẩm: nhận trách nhiệm từ cấp trên, đón đoàn khách doanh nghiệp, giới thiệu quy trình quản lý vệ sinh — nhiệt độ — dị vật, báo cáo trung thực sự cố cũ, đáp lời đề nghị bổ nhiệm.

---

## Tình huống 1 — Văn phòng công ty · 7:30, nhận brief từ 工場長 + học mẫu câu "全権を任せる"

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、おはようございます。<br>*(Hoa, chào buổi sáng.)* |
| Hoa | おはようございます、<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>。<br>*(Em chào ông Tanaka 工場長 ạ.)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>のローソン<ruby>監査<rt>かんさ</rt></ruby>ですが、ホアさんに<ruby>全権<rt>ぜんけん</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Về buổi thanh tra Lawson hôm nay, tôi muốn giao toàn quyền cho em.)* |
| Hoa | え、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>私<rt>わたし</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>してもよろしいのでしょうか？<br>*(Ơ, em phụ trách thật sự được không ạ?)* |
| Tanaka | はい。<ruby>私<rt>わたし</rt></ruby>は<ruby>事務所<rt>じむしょ</rt></ruby>から<ruby>見<rt>み</rt></ruby>ています。<ruby>困<rt>こま</rt></ruby>ったことがあれば、すぐ<ruby>呼<rt>よ</rt></ruby>んでください。<br>*(Vâng. Tôi xem từ văn phòng. Có gì khó cứ gọi tôi ngay.)* |
| Hoa | ローソンさんは<ruby>基準<rt>きじゅん</rt></ruby>が<ruby>厳<rt>きび</rt></ruby>しいと<ruby>聞<rt>き</rt></ruby>いていますので、<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Em nghe nói Lawson tiêu chuẩn rất khắt khe nên hơi hồi hộp ạ.)* |
| Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>のクロスコンタミ<ruby>事故<rt>じこ</rt></ruby>を<ruby>解決<rt>かいけつ</rt></ruby>した<ruby>実績<rt>じっせき</rt></ruby>があります。ホアさんなら<ruby>必<rt>かなら</rt></ruby>ずできますよ。<br>*(Không sao. Em có thành tích xử lý sự cố nhiễm chéo hồi tháng 4 rồi. Hoa thì chắc chắn làm được.)* |
| Hoa | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu sâu. Vâng, em sẽ cố gắng hết sức. Mong ông giúp đỡ ạ.)* |

---

## Tình huống 2 — Phòng QC · 8:00, Suzuki 主任 ôn tập bảng kiểm + học từ "トレーサビリティ"

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>今日<rt>きょう</rt></ruby>のローソン<ruby>監査<rt>かんさ</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>すると<ruby>聞<rt>き</rt></ruby>きました。<ruby>準備<rt>じゅんび</rt></ruby>はどうですか？<br>*(Hoa, tôi nghe em phụ trách thanh tra Lawson hôm nay. Chuẩn bị thế nào rồi?)* |
| Hoa | <ruby>昨夜<rt>さくや</rt></ruby>、ローソンさんの<ruby>監査<rt>かんさ</rt></ruby>チェックリストを<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>全<rt>ぜん</rt></ruby><ruby>52<rt>ごじゅうに</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>です。<br>*(Đêm qua em đã rà toàn bộ danh mục thanh tra của Lawson. Tổng 52 mục ạ.)* |
| Suzuki | <ruby>52<rt>ごじゅうに</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>もありますか。<ruby>記録<rt>きろく</rt></ruby><ruby>類<rt>るい</rt></ruby>は<ruby>整<rt>そろ</rt></ruby>いましたか？<br>*(Tới 52 mục cơ à. Hồ sơ ghi chép đã đủ chưa?)* |
| Hoa | はい、<ruby>過去<rt>かこ</rt></ruby><ruby>6<rt>ろっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>をフォルダーに<ruby>整理<rt>せいり</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。ただ、<ruby>一<rt>ひと</rt></ruby>つ<ruby>不安<rt>ふあん</rt></ruby>な<ruby>項目<rt>こうもく</rt></ruby>があります。<br>*(Vâng, đã sắp xếp xong 6 tháng vào folder ạ. Chỉ có một mục em chưa yên tâm.)* |
| Suzuki | どの<ruby>項目<rt>こうもく</rt></ruby>ですか？<br>*(Mục nào vậy?)* |
| Hoa | トレーサビリティです。すみません、<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>手順<rt>てじゅん</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby><ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Truy xuất nguồn gốc ạ. Xin lỗi chị, chị giảng lại quy trình cụ thể cho em một lần được không ạ?)* |
| Suzuki | <ruby>原料<rt>げんりょう</rt></ruby>ロットから<ruby>製品<rt>せいひん</rt></ruby>ロット、そして<ruby>出荷先<rt>しゅっかさき</rt></ruby>まで<ruby>追跡<rt>ついせき</rt></ruby>することです。<ruby>監査官<rt>かんさかん</rt></ruby>に「<ruby>30<rt>さんじゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>追<rt>お</rt></ruby>えますか？」と<ruby>聞<rt>き</rt></ruby>かれることが<ruby>多<rt>おお</rt></ruby>いです。<br>*(Truy lô nguyên liệu → lô sản phẩm → nơi xuất hàng. Người kiểm thường hỏi "Truy được trong 30 phút không?".)* |
| Hoa | <ruby>原料<rt>げんりょう</rt></ruby>ロット→<ruby>製品<rt>せいひん</rt></ruby>ロット→<ruby>出荷先<rt>しゅっかさき</rt></ruby>ということですね。<br>*(Tức là lô nguyên liệu → lô sản phẩm → nơi xuất hàng phải không ạ?)* |
| Suzuki | そうです。<ruby>15<rt>じゅうご</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>にPCで<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<br>*(Đúng vậy. 15 phút nữa luyện trên máy tính nhé.)* |
| Hoa | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị giúp đỡ.)* |

---

## Tình huống 3 — Khu sản xuất · 8:30, dặn dò Mai và Trang (quan sát đàn anh hướng dẫn đàn em)

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます！<br>*(Sempai, chào chị!)* |
| Hoa | マイちゃん、チャンちゃん、おはよう。<ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>いいですか？<br>*(Mai, Trang, chào hai em. Cho chị xin chút thời gian được không?)* |
| Trang | はい、もちろんです。<br>*(Vâng, được ạ.)* |
| Hoa | <ruby>本日<rt>ほんじつ</rt></ruby>ローソンさんの<ruby>監査<rt>かんさ</rt></ruby>があります。<ruby>監査官<rt>かんさかん</rt></ruby>が<ruby>現場<rt>げんば</rt></ruby>で<ruby>質問<rt>しつもん</rt></ruby>するかもしれません。<br>*(Hôm nay có thanh tra của Lawson. Người kiểm có thể hỏi các em ngay tại hiện trường.)* |
| Mai | え、<ruby>私<rt>わたし</rt></ruby>たちも<ruby>質問<rt>しつもん</rt></ruby>されますか？<br>*(Ơ, bọn em cũng bị hỏi ạ?)* |
| Hoa | はい、<ruby>普段通<rt>ふだんどお</rt></ruby>りに<ruby>答<rt>こた</rt></ruby>えれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>嘘<rt>うそ</rt></ruby>をつかないで、「<ruby>確認<rt>かくにん</rt></ruby>します」と<ruby>言<rt>い</rt></ruby>ってください。<br>*(Vâng, cứ trả lời như mọi ngày là ổn. Cái gì không biết tuyệt đối đừng nói dối, hãy bảo "em xin phép kiểm tra lại".)* |
| Trang | <ruby>異物<rt>いぶつ</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かれたら、どう<ruby>答<rt>こた</rt></ruby>えればいいですか？<br>*(Nếu bị hỏi xử lý khi phát hiện dị vật thì em trả lời thế nào ạ?)* |
| Hoa | ライン<ruby>停止<rt>ていし</rt></ruby>、<ruby>該当<rt>がいとう</rt></ruby>ロット<ruby>隔離<rt>かくり</rt></ruby>、<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>—この<ruby>三<rt>みっ</rt></ruby>つを<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>言<rt>い</rt></ruby>えばOKです。<br>*(Dừng dây chuyền, cách ly lô liên quan, báo cáo cấp trên — nói lần lượt 3 bước này là ổn.)* |
| Mai | はい、<ruby>覚<rt>おぼ</rt></ruby>えました。<ruby>先輩<rt>せんぱい</rt></ruby>、ファイト！<br>*(Vâng, em nhớ rồi. Chị cố lên ạ!)* |
| Hoa | ありがとう。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Cảm ơn em. Cùng cố gắng nhé.)* |

---

## Tình huống 4 — Sảnh cổng nhà máy · 9:00, đón đoàn Lawson + tự giới thiệu chuyên môn

| Vai | Lời thoại |
|---|---|
| Hoa | （<ruby>玄関<rt>げんかん</rt></ruby>で<ruby>待<rt>ま</rt></ruby>つ、お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>到着<rt>とうちゃく</rt></ruby>）<ruby>埼玉<rt>さいたま</rt></ruby>フーズへようこそ。<br>*(Đợi ở cửa, khách đến. Hoan nghênh đến Saitama Foods.)* |
| Sasaki | おはようございます。ローソン<ruby>品質管理部<rt>ひんしつかんりぶ</rt></ruby>の<ruby>佐々木<rt>ささき</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào. Tôi là Sasaki, Phòng quản lý chất lượng Lawson.)* |
| Hoa | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>初<rt>はじ</rt></ruby>めまして。<ruby>本日<rt>ほんじつ</rt></ruby>ご<ruby>案内<rt>あんない</rt></ruby>させていただきますグエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。<br>*(Cúi đầu. Rất hân hạnh. Em là Nguyễn Thị Hoa, người dẫn đoàn hôm nay ạ.)* |
| Sasaki | ホアさん...<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>ですか？<br>*(Hoa-san... Em là người nước ngoài?)* |
| Hoa | はい、ベトナムから<ruby>参<rt>まい</rt></ruby>りました。<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>として<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。<br>*(Vâng, em từ Việt Nam tới. Em là thực tập sinh kỹ năng năm thứ 3 tại đây ạ.)* |
| Sasaki | <ruby>失礼<rt>しつれい</rt></ruby>ですが、<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>はいらっしゃらないのですか？<br>*(Xin phép, ông Tanaka 工場長 không có ở đây à?)* |
| Hoa | <ruby>田中<rt>たなか</rt></ruby>は<ruby>事務所<rt>じむしょ</rt></ruby>で<ruby>待機<rt>たいき</rt></ruby>しております。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby>は、<ruby>私<rt>わたし</rt></ruby>が<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>と<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格者<rt>ごうかくしゃ</rt></ruby>としてご<ruby>案内<rt>あんない</rt></ruby>させていただきます。<br>*(Ông Tanaka đứng dự phòng ở văn phòng. Thanh tra hôm nay em sẽ dẫn với tư cách là 食品衛生責任者 và người đỗ 技能検定 3級ạ.)* |
| Sasaki | （<ruby>少<rt>すこ</rt></ruby>し<ruby>表情<rt>ひょうじょう</rt></ruby>が<ruby>和<rt>やわ</rt></ruby>らぐ）あ、<ruby>失礼<rt>しつれい</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vẻ mặt dịu lại. À, xin lỗi. Hôm nay mong em giúp đỡ.)* |
| Hoa | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em mới phải mong anh giúp đỡ ạ.)* |

---

## Tình huống 5 — Phòng họp · 9:15, họp mở đầu + trình bày kế hoạch thanh tra

| Vai | Lời thoại |
|---|---|
| Hoa | （<ruby>資料<rt>しりょう</rt></ruby>を<ruby>配<rt>くば</rt></ruby>る）<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れをご<ruby>説明<rt>せつめい</rt></ruby>いたします。<br>*(Phát tài liệu. Em xin trình bày tiến trình hôm nay.)* |
| Sasaki | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời em.)* |
| Hoa | まずブリーフィング、その<ruby>後<rt>あと</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>ツアー、<ruby>最後<rt>さいご</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby><ruby>類<rt>るい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>です。<ruby>所要時間<rt>しょようじかん</rt></ruby>は<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。<br>*(Đầu tiên briefing, sau đó tour nhà máy, cuối cùng kiểm hồ sơ. Thời gian dự kiến khoảng 4 tiếng.)* |
| Sasaki | <ruby>結構<rt>けっこう</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>概要<rt>がいよう</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Được. Cho tôi nghe tổng quan công ty em trước.)* |
| Hoa | はい。<ruby>埼玉<rt>さいたま</rt></ruby>フーズは<ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>、<ruby>製造<rt>せいぞう</rt></ruby><ruby>品目<rt>ひんもく</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>は、<ruby>来月<rt>らいげつ</rt></ruby><ruby>初出荷<rt>はつしゅっか</rt></ruby><ruby>予定<rt>よてい</rt></ruby>のベトナム<ruby>風<rt>ふう</rt></ruby>サンドイッチでございます。<br>*(Vâng. Saitama Foods có 30 nhân viên, sản xuất 5 loại sản phẩm. Đối tượng thanh tra hôm nay là bánh sandwich kiểu Việt Nam, dự kiến xuất lô đầu tháng sau ạ.)* |
| Sasaki | <ruby>分<rt>わ</rt></ruby>かりました。では<ruby>現場<rt>げんば</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りましょう。<br>*(OK. Vậy mình ra hiện trường nhé.)* |

---

## Tình huống 6 — Khu nhận nguyên liệu · 9:45, trình bày 温度管理 + hỏi lại "校正"

| Vai | Lời thoại |
|---|---|
| Hoa | こちらが<ruby>原料<rt>げんりょう</rt></ruby><ruby>受入<rt>うけいれ</rt></ruby><ruby>場<rt>ば</rt></ruby>でございます。<br>*(Đây là khu nhận nguyên liệu ạ.)* |
| Sasaki | <ruby>温度<rt>おんど</rt></ruby><ruby>管理<rt>かんり</rt></ruby>はどのようにされていますか？<br>*(Quản lý nhiệt độ thế nào?)* |
| Hoa | <ruby>受入<rt>うけいれ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>温度<rt>おんど</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>記録<rt>きろく</rt></ruby>します。<ruby>冷蔵<rt>れいぞう</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>℃<rt>ど</rt></ruby><ruby>以下<rt>いか</rt></ruby>、<ruby>冷凍<rt>れいとう</rt></ruby>はマイナス<ruby>18<rt>じゅうはち</rt></ruby><ruby>℃<rt>ど</rt></ruby><ruby>以下<rt>いか</rt></ruby>を<ruby>基準<rt>きじゅん</rt></ruby>としています。<br>*(Khi nhận hàng nhất định kiểm và ghi nhiệt độ. Tiêu chuẩn: lạnh ≤4℃, đông ≤-18℃ ạ.)* |
| Sasaki | <ruby>記録<rt>きろく</rt></ruby><ruby>票<rt>ひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho tôi xem phiếu ghi.)* |
| Hoa | （ファイルを<ruby>渡<rt>わた</rt></ruby>す）こちらでございます。<ruby>過去<rt>かこ</rt></ruby><ruby>3<rt>さん</rt></ruby>ヶ<ruby>月分<rt>げつぶん</rt></ruby>です。<br>*(Đưa file. Đây ạ. Của 3 tháng gần nhất.)* |
| Sasaki | （ファイルを<ruby>確認<rt>かくにん</rt></ruby>）...<ruby>欠<rt>か</rt></ruby>けがありませんね。OK。<ruby>温度計<rt>おんどけい</rt></ruby>の<ruby>校正<rt>こうせい</rt></ruby><ruby>記録<rt>きろく</rt></ruby>もありますか？<br>*(Kiểm file. Không có chỗ thiếu. OK. Có phiếu hiệu chuẩn nhiệt kế không?)* |
| Hoa | すみません、「<ruby>校正<rt>こうせい</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどの<ruby>記録<rt>きろく</rt></ruby>でしょうか？<br>*(Em xin lỗi, "校正" cụ thể là phiếu nào ạ?)* |
| Sasaki | <ruby>温度計<rt>おんどけい</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しい<ruby>値<rt>あたい</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>しているかを<ruby>定期的<rt>ていきてき</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>する<ruby>作業<rt>さぎょう</rt></ruby>です。<br>*(Là việc điều chỉnh định kỳ để xác nhận nhiệt kế hiển thị đúng giá trị.)* |
| Hoa | あ、キャリブレーションのことですね。はい、<ruby>毎月<rt>まいつき</rt></ruby><ruby>外部<rt>がいぶ</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>に<ruby>依頼<rt>いらい</rt></ruby>しております。こちらが<ruby>記録<rt>きろく</rt></ruby>です。<br>*(À, là calibration đấy ạ. Vâng, hàng tháng công ty thuê đơn vị bên ngoài. Đây là phiếu ghi.)* |
| Sasaki | （メモを<ruby>取<rt>と</rt></ruby>る）<ruby>毎月<rt>まいつき</rt></ruby><ruby>校正<rt>こうせい</rt></ruby>は<ruby>素晴<rt>すば</rt></ruby>らしいですね。<br>*(Ghi chú. Hiệu chuẩn hàng tháng là tuyệt vời.)* |

---

## Tình huống 7 — Kho cách ly allergen · 10:30, báo cáo trung thực sự cố cũ

| Vai | Lời thoại |
|---|---|
| Sasaki | <ruby>次<rt>つぎ</rt></ruby>はアレルゲン<ruby>管理<rt>かんり</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếp theo cho tôi xem quản lý allergen.)* |
| Hoa | こちらがアレルゲン<ruby>分離<rt>ぶんり</rt></ruby><ruby>保管庫<rt>ほかんこ</rt></ruby>でございます。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>のクロスコンタミ<ruby>事故<rt>じこ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>、<ruby>分離<rt>ぶんり</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>いたしました。<br>*(Đây là kho cách ly allergen ạ. Sau sự cố nhiễm chéo tháng 4, công ty đã tăng cường hệ thống cách ly.)* |
| Sasaki | クロスコンタミ<ruby>事故<rt>じこ</rt></ruby>とは？<br>*(Sự cố nhiễm chéo là gì?)* |
| Hoa | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>に、カシューナッツの<ruby>表示<rt>ひょうじ</rt></ruby><ruby>漏<rt>も</rt></ruby>れが<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>発生<rt>はっせい</rt></ruby>いたしました。<ruby>出荷前<rt>しゅっかまえ</rt></ruby>に<ruby>社内<rt>しゃない</rt></ruby>で<ruby>発見<rt>はっけん</rt></ruby>し、<ruby>不適合品<rt>ふてきごうひん</rt></ruby>として<ruby>処分<rt>しょぶん</rt></ruby>し、<ruby>是正<rt>ぜせい</rt></ruby><ruby>措置<rt>そち</rt></ruby>も<ruby>実施<rt>じっし</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Tháng 4, có 1.200 sản phẩm sót nhãn hạt điều. Phát hiện trong nội bộ trước khi xuất, đã xử lý hàng không đạt và thực hiện biện pháp khắc phục.)* |
| Sasaki | （<ruby>沈黙<rt>ちんもく</rt></ruby>）...<ruby>事故<rt>じこ</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>はありますか？<br>*(Im lặng. Có báo cáo sự cố không?)* |
| Hoa | はい、<ruby>是正<rt>ぜせい</rt></ruby><ruby>措置<rt>そち</rt></ruby><ruby>記録<rt>きろく</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせて、<ruby>本日<rt>ほんじつ</rt></ruby>ご<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でございます。<br>*(Vâng, kèm theo phiếu ghi biện pháp khắc phục, hôm nay em có thể nộp ngay ạ.)* |
| Sasaki | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>していただいて、<ruby>感心<rt>かんしん</rt></ruby>しました。<br>*(Em báo cáo trung thực, tôi rất khâm phục.)* |
| Hoa | <ruby>隠<rt>かく</rt></ruby>すと<ruby>監査<rt>かんさ</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>がなくなりますので。<ruby>食品<rt>しょくひん</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>と<ruby>教<rt>おそ</rt></ruby>わってまいりました。<br>*(Vì giấu thì thanh tra mất ý nghĩa. Em được dạy thực phẩm phải an toàn là trên hết ạ.)* |
| Sasaki | （<ruby>頷<rt>うなず</rt></ruby>く）<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>姿勢<rt>しせい</rt></ruby>です。<br>*(Gật đầu. Thái độ rất đáng quý.)* |

---

## Tình huống 8 — Trước PC quản lý lô · 11:00, làm mẫu trực tiếp truy xuất nguồn gốc

| Vai | Lời thoại |
|---|---|
| Sasaki | トレーサビリティテストをさせていただいてもよろしいですか？<br>*(Em cho tôi test truy xuất nguồn gốc được không?)* |
| Hoa | もちろんです。どの<ruby>製品<rt>せいひん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょうか？<br>*(Tất nhiên ạ. Mình bắt đầu từ sản phẩm nào?)* |
| Sasaki | （<ruby>商品<rt>しょうひん</rt></ruby>を<ruby>指<rt>ゆび</rt></ruby>さす）この<ruby>製品<rt>せいひん</rt></ruby>、ロット<ruby>番号<rt>ばんごう</rt></ruby>L<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>1101<rt>いちいちぜろいち</rt></ruby>です。<ruby>30<rt>さんじゅう</rt></ruby><ruby>分以内<rt>ふんいない</rt></ruby>に<ruby>原料<rt>げんりょう</rt></ruby>ロットまで<ruby>追<rt>お</rt></ruby>えますか？<br>*(Chỉ sản phẩm. Sản phẩm này, lô L20281101. Truy được tới lô nguyên liệu trong 30 phút không?)* |
| Hoa | やってみます。（PCで<ruby>検索<rt>けんさく</rt></ruby>）<br>*(Em làm thử. Tìm trên PC.)* |
| Hoa | L<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>1101<rt>いちいちぜろいち</rt></ruby>の<ruby>製造<rt>せいぞう</rt></ruby><ruby>日<rt>び</rt></ruby>は<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>ついたち</rt></ruby><ruby>日<rt>か</rt></ruby>でございます。<br>*(Ngày sản xuất của L20281101 là 1/11/2028 ạ.)* |
| Hoa | <ruby>使用<rt>しよう</rt></ruby><ruby>原料<rt>げんりょう</rt></ruby>は、<ruby>小麦粉<rt>こむぎこ</rt></ruby>がA<ruby>社<rt>しゃ</rt></ruby>ロットW<ruby>1023<rt>いちぜろにさん</rt></ruby>、<ruby>豚肉<rt>ぶたにく</rt></ruby>がB<ruby>社<rt>しゃ</rt></ruby>ロットP<ruby>1029<rt>いちぜろにきゅう</rt></ruby>、<ruby>野菜<rt>やさい</rt></ruby>がC<ruby>社<rt>しゃ</rt></ruby>ロットV<ruby>1031<rt>いちぜろさんいち</rt></ruby>です。<br>*(Nguyên liệu sử dụng: bột mì A-W1023, thịt heo B-P1029, rau C-V1031.)* |
| Hoa | <ruby>出荷先<rt>しゅっかさき</rt></ruby>は<ruby>埼玉県内<rt>さいたまけんない</rt></ruby>の<ruby>生協<rt>せいきょう</rt></ruby>チェーン<ruby>120<rt>ひゃくにじゅう</rt></ruby><ruby>店舗<rt>てんぽ</rt></ruby>です。<ruby>所要時間<rt>しょようじかん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>でした。<br>*(Nơi xuất là chuỗi siêu thị hợp tác xã trong Saitama, 120 cửa hàng. Mất 3 phút 20 giây ạ.)* |
| Sasaki | <ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ですか！<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>平均<rt>へいきん</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>ですから、トップレベルです。<br>*(3 phút sao! Bình quân ngành 30 phút, đây là top.)* |
| Hoa | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 9 — Line đóng gói · 11:30, giải thích quy trình kiểm dị vật 3 bước

| Vai | Lời thoại |
|---|---|
| Sasaki | <ruby>異物<rt>いぶつ</rt></ruby><ruby>混入<rt>こんにゅう</rt></ruby><ruby>検査<rt>けんさ</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>してください。<br>*(Em hãy giải thích quy trình kiểm dị vật.)* |
| Hoa | はい、<ruby>3<rt>さん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>でございます。<ruby>第一<rt>だいいち</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>は<ruby>金属探知機<rt>きんぞくたんちき</rt></ruby>、<ruby>第二<rt>だいに</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>はX<ruby>線<rt>せん</rt></ruby><ruby>検査<rt>けんさ</rt></ruby><ruby>機<rt>き</rt></ruby>、<ruby>第三<rt>だいさん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>は<ruby>目視<rt>もくし</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>です。<br>*(Vâng, 3 bước ạ. Bước 1 máy dò kim loại, bước 2 máy X-quang, bước 3 kiểm bằng mắt thường.)* |
| Sasaki | テストピースの<ruby>確認<rt>かくにん</rt></ruby><ruby>頻度<rt>ひんど</rt></ruby>は？<br>*(Tần suất kiểm test piece?)* |
| Hoa | <ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ごとに<ruby>確認<rt>かくにん</rt></ruby>し、<ruby>記録票<rt>きろくひょう</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>しております。<br>*(Cứ 2 tiếng một lần kiểm và lưu trên phiếu ạ.)* |
| Sasaki | <ruby>業界<rt>ぎょうかい</rt></ruby><ruby>標準<rt>ひょうじゅん</rt></ruby>は<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ですが、<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいですね。<br>*(Chuẩn ngành 4 tiếng, 2 tiếng là nghiêm đấy.)* |
| Hoa | クロスコンタミ<ruby>事故<rt>じこ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>、<ruby>頻度<rt>ひんど</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>倍<rt>ばい</rt></ruby>にいたしました。<ruby>同<rt>おな</rt></ruby>じ<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>二度<rt>にど</rt></ruby>と<ruby>起<rt>お</rt></ruby>こさないためです。<br>*(Sau sự cố nhiễm chéo, tăng gấp đôi tần suất. Để không lặp lại sai lầm cũ ạ.)* |
| Sasaki | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>姿勢<rt>しせい</rt></ruby>です。<br>*(Thái độ tuyệt vời.)* |

---

## Tình huống 10 — Line đóng gói · 12:00, Sasaki hỏi Mai và Trang trực tiếp

| Vai | Lời thoại |
|---|---|
| Sasaki | <ruby>現場<rt>げんば</rt></ruby>のスタッフに<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>してもよろしいですか？<br>*(Tôi hỏi trực tiếp staff hiện trường được không?)* |
| Hoa | はい、どうぞ。<br>*(Vâng, mời anh.)* |
| Sasaki | （マイに）<ruby>異物<rt>いぶつ</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>した<ruby>時<rt>とき</rt></ruby>、どう<ruby>対応<rt>たいおう</rt></ruby>しますか？<br>*(Quay sang Mai. Phát hiện dị vật thì em xử lý thế nào?)* |
| Mai | （<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>）えーと、まずラインを<ruby>停止<rt>ていし</rt></ruby>して、<ruby>該当<rt>がいとう</rt></ruby>ロットを<ruby>隔離<rt>かくり</rt></ruby>し、ホア<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Hơi căng. Dạ, đầu tiên dừng dây chuyền, cách ly lô liên quan, rồi báo chị Hoa ạ.)* |
| Sasaki | ホアさんに<ruby>先<rt>さき</rt></ruby>に？<ruby>工場長<rt>こうじょうちょう</rt></ruby>ではなく？<br>*(Báo chị Hoa trước? Không phải 工場長?)* |
| Mai | はい、まずホア<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>し、そのあとホア<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>にエスカレーションいたします。<br>*(Vâng, đầu tiên em báo chị Hoa, sau đó chị Hoa sẽ báo lên ông Tanaka 工場長.)* |
| Sasaki | <ruby>体制<rt>たいせい</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>ですね。（チャンに）<ruby>手洗<rt>てあら</rt></ruby>いの<ruby>頻度<rt>ひんど</rt></ruby>は？<br>*(Hệ thống rõ ràng nhỉ. Sang Trang. Tần suất rửa tay?)* |
| Trang | <ruby>入退室<rt>にゅうたいしつ</rt></ruby>のたび、<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>、そして<ruby>異物<rt>いぶつ</rt></ruby>に<ruby>触<rt>ふ</rt></ruby>れた<ruby>後<rt>あと</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>手<rt>て</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>います。<br>*(Mỗi lần ra vào phòng, mỗi tiếng một lần, và sau khi chạm vật lạ chắc chắn rửa tay ạ.)* |
| Sasaki | (ホアに) スタッフの<ruby>教育<rt>きょういく</rt></ruby>がよく<ruby>行<rt>い</rt></ruby>き<ruby>届<rt>とど</rt></ruby>いていますね。<br>*(Quay sang Hoa. Đào tạo staff đầy đủ thật.)* |
| Hoa | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 11 — Phòng họp · 12:30, nghỉ trưa + Sasaki chia sẻ thật lòng

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>30<rt>さんじゅう</rt></ruby><ruby>分間<rt>ふんかん</rt></ruby>のお<ruby>昼休<rt>ひるやす</rt></ruby>みでございます。<ruby>13<rt>じゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>記録<rt>きろく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>再開<rt>さいかい</rt></ruby>いたします。<br>*(Em xin phép nghỉ trưa 30 phút. 13h sẽ tiếp tục kiểm hồ sơ ạ.)* |
| Sasaki | ホアさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>をしてもいいですか？<br>*(Hoa, cho tôi nói chút chuyện cá nhân được không?)* |
| Hoa | はい、どうぞ。<br>*(Vâng, mời anh.)* |
| Sasaki | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>朝<rt>あさ</rt></ruby>「<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>」と<ruby>聞<rt>き</rt></ruby>いて、<ruby>少<rt>すこ</rt></ruby>し<ruby>不安<rt>ふあん</rt></ruby>でした。<br>*(Nói thật, sáng nghe "người nước ngoài phụ trách" tôi hơi lo.)* |
| Hoa | はい、<ruby>分<rt>わ</rt></ruby>かります。よく<ruby>言<rt>い</rt></ruby>われます。<br>*(Vâng em hiểu. Em hay nghe câu đó ạ.)* |
| Sasaki | しかし、<ruby>記録<rt>きろく</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>で、<ruby>事故<rt>じこ</rt></ruby>も<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してくださって、トレーサビリティも<ruby>速<rt>はや</rt></ruby>い。<ruby>今<rt>いま</rt></ruby>はとても<ruby>感心<rt>かんしん</rt></ruby>しています。<br>*(Nhưng ghi chép chính xác, sự cố cũng báo trung thực, truy xuất nguồn gốc lại nhanh. Giờ tôi rất khâm phục.)* |
| Hoa | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>と<ruby>近藤<rt>こんどう</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>育<rt>そだ</rt></ruby>てていただいたおかげです。<br>*(Là nhờ ông Tanaka 工場長 và chị Kondo 主任 đã đào tạo em 3 năm ạ.)* |
| Sasaki | <ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>教育<rt>きょういく</rt></ruby>レベルがよく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Tôi đã thấy rõ mức đào tạo của công ty em.)* |

---

## Tình huống 12 — Phòng họp · 13:30, kiểm hồ sơ 11 mục theo thứ tự

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>記録<rt>きろく</rt></ruby><ruby>類<rt>るい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>を<ruby>再開<rt>さいかい</rt></ruby>いたします。<ruby>過去<rt>かこ</rt></ruby><ruby>6<rt>ろっ</rt></ruby>ヶ<ruby>月分<rt>げつぶん</rt></ruby>の<ruby>11<rt>じゅういち</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>でございます。<br>*(Xin tiếp tục phần kiểm hồ sơ. 11 mục của 6 tháng gần nhất ạ.)* |
| Sasaki | では<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>拝見<rt>はいけん</rt></ruby>します。<ruby>1<rt>いち</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>、<ruby>原料<rt>げんりょう</rt></ruby><ruby>受入<rt>うけいれ</rt></ruby><ruby>記録<rt>きろく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi xem theo thứ tự. Số 1, ghi nhận nguyên liệu.)* |
| Hoa | （ファイルを<ruby>渡<rt>わた</rt></ruby>す）こちらでございます。<br>*(Đưa file. Đây ạ.)* |
| Sasaki | （めくる）...<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>、<ruby>清掃<rt>せいそう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>。<br>*(Lật. Được. Số 2, ghi vệ sinh.)* |
| Hoa | （<ruby>渡<rt>わた</rt></ruby>す）こちらは<ruby>洗剤<rt>せんざい</rt></ruby><ruby>濃度<rt>のうど</rt></ruby>も<ruby>毎回<rt>まいかい</rt></ruby><ruby>記録<rt>きろく</rt></ruby>しております。<br>*(Đưa. Bên này em ghi cả nồng độ hoá chất từng lần ạ.)* |
| Sasaki | <ruby>濃度<rt>のうど</rt></ruby>まで<ruby>記録<rt>きろく</rt></ruby>するのはいいですね。<br>*(Ghi cả nồng độ là tốt.)* |
| Hoa | （<ruby>残<rt>のこ</rt></ruby>り<ruby>9<rt>きゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>を<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>す）<br>*(Lần lượt đưa 9 mục còn lại.)* |
| Sasaki | （<ruby>1<rt>いち</rt></ruby><ruby>時間後<rt>じかんご</rt></ruby>）<ruby>11<rt>じゅういち</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>すべて<ruby>確認<rt>かくにん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(1 tiếng sau. Đã kiểm xong toàn bộ 11 mục.)* |

---

## Tình huống 13 — Phòng họp · 14:30, nhận finding nhỏ + cam kết khắc phục

| Vai | Lời thoại |
|---|---|
| Sasaki | <ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>だけ<ruby>気<rt>き</rt></ruby>になる<ruby>点<rt>てん</rt></ruby>があります。<br>*(Có 1 điểm tôi muốn lưu ý.)* |
| Hoa | はい、お<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Vâng, xin mời anh.)* |
| Sasaki | ペストコントロールの<ruby>記録<rt>きろく</rt></ruby>ですが、<ruby>業者<rt>ぎょうしゃ</rt></ruby><ruby>名<rt>めい</rt></ruby>はあるものの、<ruby>担当者<rt>たんとうしゃ</rt></ruby><ruby>名<rt>めい</rt></ruby>が<ruby>抜<rt>ぬ</rt></ruby>けている<ruby>場合<rt>ばあい</rt></ruby>がありました。<br>*(Phiếu pest control, có tên đơn vị nhưng có lúc thiếu tên người phụ trách.)* |
| Hoa | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>業者<rt>ぎょうしゃ</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>記入<rt>きにゅう</rt></ruby><ruby>漏<rt>も</rt></ruby>れでございます。<br>*(Em xin lỗi. Là bên đơn vị quên ghi ạ.)* |
| Sasaki | <ruby>軽微<rt>けいび</rt></ruby><ruby>指摘<rt>してき</rt></ruby>ですが、<ruby>是正<rt>ぜせい</rt></ruby><ruby>計画書<rt>けいかくしょ</rt></ruby>のご<ruby>提出<rt>ていしゅつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>期限<rt>きげん</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<br>*(Finding nhẹ, nhưng xin nộp kế hoạch khắc phục. Hạn 1 tuần.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>業者<rt>ぎょうしゃ</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>し、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>担当者<rt>たんとうしゃ</rt></ruby><ruby>名<rt>めい</rt></ruby>を<ruby>必須<rt>ひっす</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>とさせていただきます。<ruby>計画書<rt>けいかくしょ</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>にお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Vâng, em rõ ạ. Em sẽ liên lạc đơn vị, từ tháng sau bắt buộc ghi tên người phụ trách. Kế hoạch trong ngày mai em sẽ gửi.)* |
| Sasaki | <ruby>明日<rt>あした</rt></ruby>ですか。<ruby>早<rt>はや</rt></ruby>いですね。<br>*(Mai sao. Nhanh nhỉ.)* |
| Hoa | <ruby>是正<rt>ぜせい</rt></ruby>は<ruby>早<rt>はや</rt></ruby>いほうがいいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Em nghĩ khắc phục càng sớm càng tốt ạ.)* |

---

## Tình huống 14 — Phòng họp · 15:00, Sasaki tuyên bố kết quả thanh tra

| Vai | Lời thoại |
|---|---|
| Sasaki | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をお<ruby>伝<rt>つた</rt></ruby>えします。<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Tôi thông báo kết quả thanh tra hôm nay. Đỗ.)* |
| Hoa | （<ruby>胸<rt>むね</rt></ruby>を<ruby>撫<rt>な</rt></ruby>で<ruby>下<rt>お</rt></ruby>ろす）ありがとうございます。<br>*(Thở phào. Em cảm ơn anh.)* |
| Sasaki | <ruby>軽微<rt>けいび</rt></ruby><ruby>指摘<rt>してき</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>、<ruby>重大<rt>じゅうだい</rt></ruby><ruby>指摘<rt>してき</rt></ruby><ruby>0<rt>ゼロ</rt></ruby><ruby>件<rt>けん</rt></ruby>です。OEM<ruby>契約<rt>けいやく</rt></ruby>は<ruby>正式<rt>せいしき</rt></ruby>に<ruby>承認<rt>しょうにん</rt></ruby>させていただきます。<br>*(Finding nhẹ 1, finding nghiêm trọng 0. Hợp đồng OEM được duyệt chính thức.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Em thật sự cảm ơn anh ạ.)* |
| Sasaki | <ruby>個人的<rt>こじんてき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>でこのレベルは<ruby>稀<rt>まれ</rt></ruby>です。<br>*(Cá nhân tôi nói, năm thứ 3 mà mức này hiếm có.)* |
| Hoa | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<br>*(Cúi đầu sâu. Em quá khen ạ.)* |
| Sasaki | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んでいただけますか？<br>*(Em gọi ông Tanaka giúp tôi được không?)* |
| Hoa | はい、<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Vâng, anh đợi em một lát ạ.)* |

---

## Tình huống 15 — Phòng họp · 15:15, Tanaka đến + Sasaki khen công khai

| Vai | Lời thoại |
|---|---|
| Tanaka | お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Cảm ơn anh đã đến.)* |
| Sasaki | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby><ruby>監査<rt>かんさ</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>でございます。<ruby>来週<rt>らいしゅう</rt></ruby>のラボ<ruby>結果<rt>けっか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>正式<rt>せいしき</rt></ruby>にOEMを<ruby>承認<rt>しょうにん</rt></ruby>いたします。<br>*(Tanaka-san, thanh tra hiện trường hôm nay đỗ. Tuần sau kiểm kết quả lab xong sẽ chính thức duyệt OEM.)* |
| Tanaka | ありがとうございます。<br>*(Cảm ơn anh.)* |
| Sasaki | ホアさんを<ruby>育<rt>そだ</rt></ruby>てられた<ruby>御社<rt>おんしゃ</rt></ruby>を<ruby>褒<rt>ほ</rt></ruby>めさせていただきたい。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>と<ruby>聞<rt>き</rt></ruby>いた<ruby>朝<rt>あさ</rt></ruby>は<ruby>不安<rt>ふあん</rt></ruby>でしたが、<ruby>朝<rt>あさ</rt></ruby>から<ruby>夕方<rt>ゆうがた</rt></ruby>まで<ruby>完璧<rt>かんぺき</rt></ruby>な<ruby>対応<rt>たいおう</rt></ruby>でした。<br>*(Cho tôi khen quý công ty đã đào tạo Hoa. Thật ra sáng nghe người nước ngoài phụ trách tôi lo, nhưng từ sáng đến chiều ứng xử hoàn hảo.)* |
| Tanaka | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。ホアさんの<ruby>努力<rt>どりょく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Em quá khen. Là kết quả nỗ lực của Hoa.)* |
| Sasaki | <ruby>事故<rt>じこ</rt></ruby>を<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する<ruby>姿勢<rt>しせい</rt></ruby>、<ruby>是正対応<rt>ぜせいたいおう</rt></ruby>の<ruby>速<rt>はや</rt></ruby>さ、トレーサビリティ<ruby>3<rt>さん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<ruby>業界<rt>ぎょうかい</rt></ruby>トップレベルです。<br>*(Báo cáo sự cố trung thực, xử lý khắc phục nhanh, traceability 3 phút. Top ngành.)* |
| Tanaka | （ホアを<ruby>見<rt>み</rt></ruby>て<ruby>笑<rt>わら</rt></ruby>う）<ruby>本人<rt>ほんにん</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えておきます。<br>*(Nhìn Hoa cười. Tôi sẽ chuyển lại cho em ấy.)* |

---

## Tình huống 16 — Phòng staff · 17:00, sau khi đoàn về, Tanaka đề nghị bổ nhiệm リーダー

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hoa, hôm nay em thực sự vất vả rồi.)* |
| Hoa | ありがとうございます。<br>*(Em cảm ơn ông.)* |
| Tanaka | <ruby>一<rt>ひと</rt></ruby>つ<ruby>正式<rt>せいしき</rt></ruby>にお<ruby>話<rt>はなし</rt></ruby>したいことがあります。SSW<ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>へ<ruby>移行<rt>いこう</rt></ruby>した<ruby>後<rt>あと</rt></ruby>、ホアさんを<ruby>当<rt>とう</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>のリーダーに<ruby>任命<rt>にんめい</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Có một việc tôi muốn nói chính thức. Sau khi em chuyển SSW1, tôi muốn bổ nhiệm em làm trưởng nhóm của xưởng này.)* |
| Hoa | え！？<ruby>本当<rt>ほんとう</rt></ruby>でしょうか。<br>*(Ơ!? Thật ạ?)* |
| Tanaka | はい。リーダーは<ruby>主任<rt>しゅにん</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>で、<ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>加算<rt>かさん</rt></ruby>、マイさんとチャンさんを<ruby>含<rt>ふく</rt></ruby>む<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby><ruby>権限<rt>けんげん</rt></ruby>も<ruby>持<rt>も</rt></ruby>つことになります。<br>*(Vâng. Trưởng nhóm là ứng viên chủ nhiệm, lương cộng thêm 30.000 yên/tháng, có quyền hướng dẫn các kohai gồm Mai và Trang.)* |
| Hoa | （<ruby>言葉<rt>ことば</rt></ruby>を<ruby>失<rt>うしな</rt></ruby>う）...<br>*(Mất lời.)* |
| Tanaka | <ruby>即答<rt>そくとう</rt></ruby>はいりません。<ruby>11<rt>じゅういち</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までにお<ruby>返事<rt>へんじ</rt></ruby>ください。<br>*(Không cần trả lời ngay. Đến cuối tháng 11 em trả lời.)* |
| Hoa | はい、<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えさせていただきます。<br>*(Vâng, em sẽ suy nghĩ nghiêm túc.)* |
| Tanaka | <ruby>東京<rt>とうきょう</rt></ruby>からオファーがあったと<ruby>近藤<rt>こんどう</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いています。<ruby>怒<rt>おこ</rt></ruby>っていませんよ。<ruby>選<rt>えら</rt></ruby>ぶ<ruby>権利<rt>けんり</rt></ruby>はホアさんにあります。<ruby>私<rt>わたし</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>は「<ruby>残<rt>のこ</rt></ruby>ってほしい」というシグナルです。<br>*(Tôi nghe Kondo bảo em có lời mời từ Tokyo. Không giận đâu. Quyền chọn là của em. Lời mời của tôi chỉ là tín hiệu "mong em ở lại".)* |
| Hoa | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Cúi đầu sâu. Em thật sự cảm ơn ông ạ.)* |

---

## Tình huống 17 — Ký túc · 21:00, gọi điện về cho mẹ và em (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê Hà Nội.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mẹ ơi, hôm nay con dẫn đoàn kiểm tra của Lawson. |
| Mẹ Hoa | (tiếng Việt) Lawson là cái gì hả con? |
| Hoa | (tiếng Việt) Là chuỗi cửa hàng tiện lợi rất to ở Nhật, mẹ ạ. Họ kiểm tra nhà máy mình suốt cả ngày. Sáng con run lắm, ông Sasaki bên Lawson thấy con là người Việt còn ngạc nhiên, hỏi "工場長 đâu". |
| Mẹ Hoa | (tiếng Việt) Trời, thế con trả lời thế nào? |
| Hoa | (tiếng Việt) Con nói thẳng rằng con là người phụ trách hôm nay, có chứng chỉ 食品衛生責任者 với 技能検定 3級. Họ mới chịu yên tâm. |
| Em Hoa | (tiếng Việt, ghé màn hình) Chị Hoa, mấy chữ chị nói khó hiểu quá! |
| Hoa | (tiếng Việt) 食品衛生責任者 là người chịu trách nhiệm vệ sinh thực phẩm. 技能検定 là kỳ thi tay nghề Nhật. Còn トレーサビリティ là truy xuất nguồn gốc, từ lô nguyên liệu ra tới cửa hàng — chị làm trong 3 phút 20 giây. |
| Em Hoa | (tiếng Việt) Wow! Chị giỏi quá. |
| Hoa | (tiếng Việt) Còn một chuyện nữa. Chiều ông 工場長 đề nghị thăng chị lên リーダー — trưởng nhóm, tăng 30.000 yên một tháng, được dạy lại mấy đứa đàn em. |
| Mẹ Hoa | (tiếng Việt) Trời ơi, con có chịu không? |
| Hoa | (tiếng Việt) Con chưa trả lời mẹ ạ. Bên Tokyo cũng có lời mời, con phải nghĩ kỹ. Cuối tháng 11 con quyết. |
| Mẹ Hoa | (tiếng Việt) Tùy con. Nhưng mẹ nghĩ chỗ nào người ta tin con và dạy con thì giữ. |
| Hoa | (tiếng Việt) Vâng mẹ. Con cũng nghĩ vậy. Thôi muộn rồi, mẹ với em đi ngủ đi, mai con vẫn phải đi làm sớm. |

---

## Đọng lại chương 8

Thanh tra Lawson là buổi thử lửa thật sự. Hoa học cách **nhận trách nhiệm từ cấp trên** (全権を任せる・精一杯頑張ります), **đón đoàn thanh tra và tự giới thiệu chuyên môn** (本日ご案内させていただきます・食品衛生責任者・技能検定3級), **trình bày quy trình quản lý nhiệt độ** (受入時温度確認・冷蔵4℃以下・冷凍マイナス18℃以下・校正), **báo cáo trung thực sự cố cũ** (クロスコンタミ事故・不適合品処分・是正措置), **làm mẫu trực tiếp truy xuất nguồn gốc** (トレーサビリティ・原料ロット→製品ロット→出荷先), **giải thích quy trình kiểm dị vật** (金属探知機・X線検査機・目視検査・テストピース), **hỏi lại lễ phép khi chưa rõ** (〜というのはどの記録でしょうか・〜ということですね), và đáp lại lời đề nghị thăng chức đúng mực (真剣に考えさせていただきます). Phía sau từng câu là một nguyên tắc lớn của ngành thực phẩm: **隠すと監査の意味がなくなる** — giấu đi thì thanh tra mất ý nghĩa, **食品は安全第一** — thực phẩm an toàn là trên hết.

> Từ vựng & mẫu câu chương này: 監査・品質管理部・食品衛生責任者・技能検定・全権を任せる・温度管理・受入時温度確認・冷蔵・冷凍・校正・キャリブレーション・アレルゲン・クロスコンタミ・不適合品・是正措置・トレーサビリティ・原料ロット・出荷先・異物混入・金属探知機・X線検査機・目視検査・テストピース・軽微指摘・是正計画書・任命・リーダー・主任候補・〜というのは・〜ということですね・ご案内させていただきます・精一杯頑張ります・恐縮でございます・真剣に考えさせていただきます

## Bí quyết chương

- **Tanaka trao toàn quyền**: Bước test cuối cùng. Hoa phải lead 100%.
- **Sasaki ban đầu nghi**: Bias "外国人 担当" — Hoa phá vỡ bằng năng lực và chứng chỉ.
- **Honest reporting cross-contam**: Không giấu sự cố T4. Sasaki khen "感心".
- **Kondo báo Tanaka về offer Tokyo**: Tanaka biết hết — không giận. Tanaka đề nghị vai trưởng nhóm = cách giữ Hoa bằng tin tưởng, không bằng emotional pressure.
- **Khởi đầu T11 mạnh**: 2 offer trên bàn (Tokyo +30.000 lương vs Saitama trưởng nhóm +30.000 + kèm dàn nhân vật cũ). Hoa phải quyết cuối tháng 11.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 監査 | かんさ | GIÁM TRA | Kiểm tra, thanh tra |
| 全権 | ぜんけん | TOÀN QUYỀN | Toàn quyền |
| 任せる | まかせる | NHIỆM | Giao phó |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 事務所 | じむしょ | SỰ VỤ SỞ | Văn phòng |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức mình |
| 不安 | ふあん | BẤT AN | Bất an |
| トレーサビリティ | — | — | Truy xuất nguồn gốc |
| 出荷先 | しゅっかさき | XUẤT HOÁ TIÊN | Nơi xuất hàng |
| 監査官 | かんさかん | GIÁM TRA QUAN | Người kiểm tra |
| 現場 | げんば | HIỆN TRƯỜNG | Hiện trường |
| 品質管理部 | ひんしつかんりぶ | PHẨM CHẤT QUẢN LÝ BỘ | Phòng quản lý chất lượng |
| 案内 | あんない | ÁN NỘI | Hướng dẫn, dẫn đoàn |
| 技能実習生 | ぎのうじっしゅうせい | KỸ NĂNG THỰC TẬP SINH | Thực tập sinh kỹ năng |
| 待機 | たいき | ĐÃI CƠ | Đứng dự phòng |
| 資料 | しりょう | TƯ LIỆU | Tài liệu |
| 所要時間 | しょようじかん | SỞ YẾU THỜI GIAN | Thời gian cần |
| 概要 | がいよう | KHÁI YẾU | Tổng quan |
| 従業員 | じゅうぎょういん | TÒNG NGHIỆP VIÊN | Nhân viên |
| 対象 | たいしょう | ĐỐI TƯỢNG | Đối tượng |
| 初出荷 | はつしゅっか | SƠ XUẤT HOÁ | Lô xuất đầu |
| 温度管理 | おんどかんり | ÔN ĐỘ QUẢN LÝ | Quản lý nhiệt độ |
| 冷蔵 | れいぞう | LÃNH TÀNG | Bảo quản lạnh |
| 冷凍 | れいとう | LÃNH ĐÔNG | Đông lạnh |
| 校正 | こうせい | HIỆU CHÍNH | Hiệu chuẩn |
| 温度計 | おんどけい | ÔN ĐỘ KẾ | Nhiệt kế |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 外部業者 | がいぶぎょうしゃ | NGOẠI BỘ NGHIỆP GIẢ | Đơn vị bên ngoài |
| アレルゲン | — | — | Chất gây dị ứng (allergen) |
| 分離 | ぶんり | PHÂN LY | Tách biệt |
| 保管庫 | ほかんこ | BẢO QUẢN KHỐ | Kho bảo quản |
| クロスコンタミ | — | — | Nhiễm chéo |
| 強化 | きょうか | CƯỜNG HOÁ | Tăng cường |
| 処分 | しょぶん | XỬ PHÂN | Xử lý |
| 報告書 | ほうこくしょ | BÁO CÁO THƯ | Báo cáo |
| 沈黙 | ちんもく | TRẦM MẶC | Im lặng |
| 感心 | かんしん | CẢM TÂM | Khâm phục |
| 検索 | けんさく | KIỂM SÁCH | Tìm kiếm |
| 製造日 | せいぞうび | CHẾ TẠO NHẬT | Ngày sản xuất |
| 生協 | せいきょう | SINH HIỆP | Hợp tác xã tiêu dùng |
| 店舗 | てんぽ | ĐIẾM PHỐ | Cửa hàng |
| 平均 | へいきん | BÌNH QUÂN | Bình quân |
| 混入 | こんにゅう | HỖN NHẬP | Trộn lẫn |
| 検査 | けんさ | KIỂM TRA | Kiểm tra |
| 段階 | だんかい | ĐOẠN GIAI | Bước, giai đoạn |
| 金属探知機 | きんぞくたんちき | KIM THUỘC THÁM TRI CƠ | Máy dò kim loại |
| 目視 | もくし | MỤC THỊ | Kiểm bằng mắt |
| 頻度 | ひんど | TẦN ĐỘ | Tần suất |
| 標準 | ひょうじゅん | TIÊU CHUẨN | Tiêu chuẩn |
| 失敗 | しっぱい | THẤT BẠI | Thất bại, sai lầm |
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| エスカレーション | — | — | Báo cấp lên trên |
| 体制 | たいせい | THỂ CHẾ | Hệ thống, cơ chế |
| 入退室 | にゅうたいしつ | NHẬP THỐI THẤT | Ra vào phòng |
| 教育 | きょういく | GIÁO DỤC | Đào tạo |
| 努力 | どりょく | NỖ LỰC | Nỗ lực |
| 再開 | さいかい | TÁI KHAI | Tiếp tục lại |
| 拝見 | はいけん | BÁI KIẾN | Xin xem |
| 軽微指摘 | けいびしてき | KHINH VI CHỈ TRÍCH | Finding nhẹ |
| 是正計画書 | ぜせいけいかくしょ | THỊ CHÍNH KẾ HOẠCH THƯ | Kế hoạch khắc phục |
| 業者 | ぎょうしゃ | NGHIỆP GIẢ | Đơn vị, nhà thầu |
| 必須 | ひっす | TẤT TU | Bắt buộc |
| 承認 | しょうにん | THỪA NHẬN | Phê duyệt |
| 契約 | けいやく | KHẾ ƯỚC | Hợp đồng |
| リーダー | — | — | Trưởng nhóm |
| 加算 | かさん | GIA TOÁN | Cộng thêm |
| 権限 | けんげん | QUYỀN HẠN | Quyền hạn |
| 即答 | そくとう | TỨC ĐÁP | Trả lời ngay |
| 真剣 | しんけん | CHÂN KIẾM | Nghiêm túc |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000009, 800000013, NULL, 'markdown_book', 'T9. Ngày thi N3 (N3受験日)', '# Sách thực tập sinh thực phẩm · T9. Ngày thi N3 (N3受験日)

> **Mục tiêu nhân vật:** Hoa (24 tuổi, Hà Nội, năm 3 nhà máy thực phẩm Saitama) đi thi JLPT N3 tại Saitama University. Học các mẫu hội thoại tiếng Nhật quanh ngày thi: chào hỏi 後輩 cổ vũ buổi sáng, xác nhận giấy tờ thi (受験票・身分証), hỏi đáp về tiêu chuẩn đỗ và lý do học (SSW2・転職), nghe chỉ dẫn của giám thị trong phòng thi, hỏi lại lễ phép khi 後輩 chưa hiểu thuật ngữ chuyên ngành (合格基準・良好修了), báo cáo cấp trên qua LINE (本日〜が終わりました).

---

## Bối cảnh

Chủ nhật 3 tháng 12 năm 2028. Hoa đi thi JLPT N3 tại Saitama University, Sakura-ku. Trình độ tiếng Nhật N4 đã đỗ 2 năm trước; đây là kỳ thi nâng cấp. Hai 後輩 cùng nhà máy là Mai và Trang đi cùng cổ vũ. Chương này tập trung các mẫu câu giao tiếp trong và quanh kỳ thi JLPT: cảm ơn người cổ vũ, giải thích lý do học tiếng, xác nhận giấy tờ, hỏi lại thuật ngữ JLPT, báo cáo kết quả với cấp trên Nhật.

---

## Tình huống 1 — Phòng riêng ký túc · 22:00 đêm trước thi, tự nhủ và nhắn em gái

| Vai | Lời thoại |
|---|---|
| Hoa | （<ruby>机<rt>つくえ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>でテキストを<ruby>閉<rt>と</rt></ruby>じる）<ruby>明日<rt>あした</rt></ruby>はいよいよN3の<ruby>本番<rt>ほんばん</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>してきました。<br>*(Đóng sách trên bàn. Mai cuối cùng cũng tới ngày thi N3 chính thức rồi. Mình đã học suốt 2 năm.)* |
| Hoa | <ruby>文法<rt>ぶんぽう</rt></ruby>と<ruby>語彙<rt>ごい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>いますが、<ruby>聴解<rt>ちょうかい</rt></ruby>はまだ<ruby>少<rt>すこ</rt></ruby>し<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Ngữ pháp với từ vựng chắc ổn, nhưng phần nghe hiểu thì vẫn hơi lo.)* |
| Linh | （LINE）<ruby>姉<rt>ねえ</rt></ruby>ちゃん、<ruby>明日<rt>あした</rt></ruby>N3だよね？<ruby>頑張<rt>がんば</rt></ruby>って！<br>*(Chị ơi, mai chị thi N3 đúng không? Cố lên nhé!)* |
| Hoa | （<ruby>返信<rt>へんしん</rt></ruby>する）ありがとう、リン。<ruby>今<rt>いま</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>している。でも<ruby>準備<rt>じゅんび</rt></ruby>はちゃんとしたから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Trả lời. Cảm ơn Linh. Giờ chị cũng hơi hồi hộp. Nhưng chuẩn bị đầy đủ rồi nên ổn thôi.)* |
| Linh | <ruby>姉<rt>ねえ</rt></ruby>ちゃんなら<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>できる。<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>てね。<br>*(Chị thì chắc chắn đỗ. Ngủ sớm nhé.)* |
| Hoa | はい、もう<ruby>寝<rt>ね</rt></ruby>ます。おやすみなさい。<br>*(Vâng, chị đi ngủ đây. Chúc em ngủ ngon.)* |

---

## Tình huống 2 — Sảnh ký túc · 7:30 sáng thi, 後輩 Mai và Trang đến đưa đi cổ vũ

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます！<br>*(Sempai, chào buổi sáng ạ!)* |
| Trang | おはようございます！<ruby>今日<rt>きょう</rt></ruby>は<ruby>応援<rt>おうえん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào sempai ạ! Hôm nay tụi em đến cổ vũ.)* |
| Hoa | （<ruby>驚<rt>おどろ</rt></ruby>く）え、<ruby>2人<rt>ふたり</rt></ruby>とも、こんなに<ruby>朝早<rt>あさはや</rt></ruby>くからありがとう。<br>*(Ngạc nhiên. Ơ, cả hai đến sớm thế, cảm ơn nhiều nhé.)* |
| Mai | <ruby>会場<rt>かいじょう</rt></ruby>まで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>かせてください。<br>*(Cho tụi em đi cùng sempai đến điểm thi với.)* |
| Hoa | <ruby>1人<rt>ひとり</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<br>*(Chị đi một mình được mà.)* |
| Trang | いいえ、<ruby>先輩<rt>せんぱい</rt></ruby>のために<ruby>応援<rt>おうえん</rt></ruby>したいです。<br>*(Không ạ, tụi em muốn cổ vũ cho sempai.)* |
| Hoa | （<ruby>笑<rt>わら</rt></ruby>う）ありがとう。じゃ、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<br>*(Cười. Cảm ơn nhé. Vậy mình cùng đi.)* |
| Trang | <ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証<rt>みぶんしょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Phiếu báo danh với giấy tờ tùy thân ổn không ạ?)* |
| Hoa | はい、<ruby>昨夜<rt>ゆうべ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>在留<rt>ざいりゅう</rt></ruby>カードも<ruby>持<rt>も</rt></ruby>っています。<br>*(Có, tối qua chị kiểm 3 lần rồi. Thẻ cư trú cũng mang theo.)* |

---

## Tình huống 3 — Trên tàu đi Saitama · 8:00, giải thích lý do thi N3 (hỏi đáp với 後輩)

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、N3に<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>何<rt>なに</rt></ruby>か<ruby>変<rt>か</rt></ruby>わりますか？<br>*(Sempai, đỗ N3 rồi thì có gì thay đổi không ạ?)* |
| Hoa | <ruby>実<rt>じつ</rt></ruby>は、SSW1への<ruby>移行<rt>いこう</rt></ruby>には<ruby>関係<rt>かんけい</rt></ruby>ないんです。<br>*(Thật ra, để chuyển sang SSW1 thì không liên quan đâu.)* |
| Mai | え、<ruby>関係<rt>かんけい</rt></ruby>ないんですか？<br>*(Ơ, không liên quan ạ?)* |
| Hoa | はい。<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>良好<rt>りょうこう</rt></ruby>に<ruby>修了<rt>しゅうりょう</rt></ruby>して、<ruby>関連<rt>かんれん</rt></ruby><ruby>職種<rt>しょくしゅ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めば、N3はいりません。<br>*(Vâng. Nếu hoàn thành tốt thực tập kỹ năng số 2 và chuyển sang ngành liên quan thì không cần N3.)* |
| Trang | すみません、「<ruby>良好<rt>りょうこう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi sempai, "ryoukou shuuryou" nghĩa là gì ạ?)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>真面目<rt>まじめ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>いて、<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>して、<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>終<rt>お</rt></ruby>えるという<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Nghĩa là làm việc nghiêm túc 3 năm, đỗ kỹ năng kiểm định cấp 3 và hoàn thành an toàn.)* |
| Trang | なるほど、ちゃんと<ruby>終<rt>お</rt></ruby>えるということですね。<br>*(Ra vậy, tức là hoàn thành đàng hoàng ạ.)* |
| Mai | じゃ、<ruby>先輩<rt>せんぱい</rt></ruby>は<ruby>何<rt>なん</rt></ruby>のためにN3を<ruby>受<rt>う</rt></ruby>けるんですか？<br>*(Vậy sempai thi N3 vì lý do gì ạ?)* |
| Hoa | <ruby>自分<rt>じぶん</rt></ruby>のためです。<ruby>将来<rt>しょうらい</rt></ruby>SSW2に<ruby>移行<rt>いこう</rt></ruby>する<ruby>時<rt>とき</rt></ruby>や、<ruby>転職<rt>てんしょく</rt></ruby>する<ruby>時<rt>とき</rt></ruby>に<ruby>有利<rt>ゆうり</rt></ruby>になるからです。<ruby>給与<rt>きゅうよ</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>にもなります。<br>*(Vì bản thân chị. Sau này chuyển SSW2 hay chuyển việc thì sẽ có lợi. Cũng là sức để đàm phán lương.)* |
| Mai | わ、<ruby>長期的<rt>ちょうきてき</rt></ruby>な<ruby>視点<rt>してん</rt></ruby>ですね。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Wow, tầm nhìn dài hạn ạ. Em học hỏi được nhiều.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>姉<rt>あね</rt></ruby>のリンも<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>っていました。「<ruby>勉強<rt>べんきょう</rt></ruby>は<ruby>裏切<rt>うらぎ</rt></ruby>らない」って。<br>*(3 năm trước chị Linh cũng nói y vậy. "Việc học không phản bội mình".)* |

---

## Tình huống 4 — Cổng Saitama University · 8:45, nhận bùa hộ mệnh từ 後輩

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>会場<rt>かいじょう</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby>しました。<br>*(Đến điểm thi rồi ạ.)* |
| Hoa | <ruby>大学<rt>だいがく</rt></ruby>って<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きいですね。<br>*(Đại học to thật đấy.)* |
| Trang | <ruby>受験者<rt>じゅけんしゃ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いですね！<br>*(Thí sinh đông quá!)* |
| Mai | <ruby>5<rt>ご</rt></ruby><ruby>百<rt>ひゃく</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>いそうです。<br>*(Có vẻ hơn 500 người đấy.)* |
| Hoa | <ruby>急<rt>きゅう</rt></ruby>に<ruby>緊張<rt>きんちょう</rt></ruby>してきました...<br>*(Tự dưng hồi hộp lên...)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、これ、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。<br>*(Sempai, cái này, sempai nhận giúp em.)* |
| Hoa | え？お<ruby>守<rt>まも</rt></ruby>りですか？<br>*(Ơ? Bùa hộ mệnh à?)* |
| Mai | はい、<ruby>大宮<rt>おおみや</rt></ruby><ruby>氷川神社<rt>ひかわじんじゃ</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby><ruby>祈願<rt>きがん</rt></ruby>のお<ruby>守<rt>まも</rt></ruby>りを<ruby>買<rt>か</rt></ruby>ってきました。<br>*(Vâng, em mua bùa cầu đỗ ở đền Hikawa Omiya rồi ạ.)* |
| Hoa | （<ruby>涙<rt>なみだ</rt></ruby>が<ruby>出<rt>で</rt></ruby>る）<ruby>2人<rt>ふたり</rt></ruby>とも、ありがとう...<br>*(Nước mắt trào ra. Cảm ơn hai đứa nhiều...)* |
| Trang | （<ruby>飴<rt>あめ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）チャンからは<ruby>飴<rt>あめ</rt></ruby>です。<ruby>休<rt>やす</rt></ruby>み<ruby>時間<rt>じかん</rt></ruby>に<ruby>食<rt>た</rt></ruby>べてください。<br>*(Đưa kẹo. Em Trang tặng sempai kẹo. Lúc nghỉ giải lao sempai ăn nhé.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<ruby>頑張<rt>がんば</rt></ruby>ってきます。<br>*(Cảm ơn thật lòng. Chị sẽ cố gắng.)* |

---

## Tình huống 5 — Phòng thi A108 · 9:00, nghe giám thị chỉ dẫn (quan sát người Nhật làm chuẩn)

| Vai | Lời thoại |
|---|---|
| Hoa | （<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）A<ruby>108<rt>いちぜろはち</rt></ruby>、こちらの<ruby>教室<rt>きょうしつ</rt></ruby>ですね。<br>*(Kiểm số báo danh. A108, đúng phòng này.)* |
| Hoa | （<ruby>席<rt>せき</rt></ruby>に<ruby>着<rt>つ</rt></ruby>いて<ruby>深呼吸<rt>しんこきゅう</rt></ruby>する）<ruby>周<rt>まわ</rt></ruby>りは<ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>もベトナムの<ruby>方<rt>かた</rt></ruby>もミャンマーの<ruby>方<rt>かた</rt></ruby>もいます。<ruby>多国籍<rt>たこくせき</rt></ruby>ですね。<br>*(Ngồi vào ghế hít thở sâu. Xung quanh có người Trung, người Việt, người Myanmar. Đa quốc tịch ghê.)* |
| 試験官 | みなさん、おはようございます。これから<ruby>言語知識<rt>げんごちしき</rt></ruby>（<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>）の<ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>時間<rt>じかん</rt></ruby>は<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Mọi người chào buổi sáng. Bây giờ bắt đầu phần thi kiến thức ngôn ngữ (chữ - từ vựng). Thời gian là 30 phút.)* |
| 試験官 | <ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>鉛筆<rt>えんぴつ</rt></ruby>と<ruby>消<rt>け</rt></ruby>しゴム<ruby>以外<rt>いがい</rt></ruby>のものは<ruby>置<rt>お</rt></ruby>かないでください。<br>*(Trên bàn không được để gì ngoài phiếu báo danh, bút chì và tẩy.)* |
| Hoa | （お<ruby>守<rt>まも</rt></ruby>りをポケットに<ruby>入<rt>い</rt></ruby>れる）はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Cho bùa hộ mệnh vào túi. Vâng, đã hiểu.)* |
| 試験官 | <ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>は<ruby>切<rt>き</rt></ruby>ってください。<ruby>不正<rt>ふせい</rt></ruby><ruby>行為<rt>こうい</rt></ruby>は<ruby>失格<rt>しっかく</rt></ruby>になります。<br>*(Vui lòng tắt nguồn điện thoại di động. Hành vi gian lận sẽ bị loại.)* |
| Hoa | （<ruby>携帯<rt>けいたい</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>る）<br>*(Tắt nguồn điện thoại.)* |
| 試験官 | では、<ruby>問題<rt>もんだい</rt></ruby><ruby>用紙<rt>ようし</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いてください。<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vậy mọi người mở đề bài. Bắt đầu.)* |
| Hoa | （<ruby>問題<rt>もんだい</rt></ruby><ruby>用紙<rt>ようし</rt></ruby>をめくる）<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Lật đề thi. Cố lên nào.)* |

---

## Tình huống 6 — Phòng thi A108 · 11:30, phần nghe hiểu

| Vai | Lời thoại |
|---|---|
| 試験官 | これから<ruby>聴解<rt>ちょうかい</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>時間<rt>じかん</rt></ruby>は<ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Bây giờ bắt đầu phần thi nghe hiểu. Thời gian là 40 phút.)* |
| 音声 | <ruby>問題<rt>もんだい</rt></ruby><ruby>1<rt>いち</rt></ruby>。<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>男<rt>おとこ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>と<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>話<rt>はな</rt></ruby>しています。<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>何<rt>なに</rt></ruby>をしますか。<br>*(Câu 1. Tại công ty, một người đàn ông và một người phụ nữ đang nói chuyện. Ngày mai người phụ nữ sẽ làm gì?)* |
| 音声 | <ruby>男<rt>おとこ</rt></ruby>「タナカさん、この<ruby>書類<rt>しょるい</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>してください。」<ruby>女<rt>おんな</rt></ruby>「<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>午前中<rt>ごぜんちゅう</rt></ruby>にお<ruby>渡<rt>わた</rt></ruby>しします。」<br>*(Đàn ông: "Tanaka-san, giấy này, mai nộp giúp tôi." Nữ: "Vâng đã hiểu. Sáng mai tôi sẽ đưa.")* |
| Hoa | （<ruby>心<rt>こころ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で）この<ruby>会話<rt>かいわ</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>いている。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かる。<br>*(Trong đầu. Câu này hàng ngày ở công ty mình nghe rồi. Ổn thôi, hiểu mà.)* |
| 音声 | <ruby>問題<rt>もんだい</rt></ruby><ruby>2<rt>に</rt></ruby>。<ruby>男<rt>おとこ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>と<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>電話<rt>でんわ</rt></ruby>で<ruby>話<rt>はな</rt></ruby>しています...<br>*(Câu 2. Đàn ông và phụ nữ đang nói chuyện điện thoại...)* |
| Hoa | （<ruby>集中<rt>しゅうちゅう</rt></ruby>して<ruby>聞<rt>き</rt></ruby>く）<br>*(Tập trung nghe.)* |

---

## Tình huống 7 — Sảnh ngoài phòng thi · 14:00, ra khỏi điểm thi, hỏi đáp với 後輩 về tiêu chuẩn đỗ

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>！お<ruby>疲<rt>つか</rt></ruby>れさまでした！<br>*(Sempai! Vất vả rồi ạ!)* |
| Trang | お<ruby>顔<rt>かお</rt></ruby>が<ruby>赤<rt>あか</rt></ruby>いですね。<br>*(Mặt sempai đỏ kìa.)* |
| Hoa | はぁ...<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>疲<rt>つか</rt></ruby>れました。<ruby>5<rt>ご</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>集中<rt>しゅうちゅう</rt></ruby>するのは<ruby>大変<rt>たいへん</rt></ruby>です。<br>*(Hà... mệt thật sự. Tập trung 5 tiếng vất vả lắm.)* |
| Mai | どうでしたか？<br>*(Thế nào ạ?)* |
| Hoa | <ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>と<ruby>文法<rt>ぶんぽう</rt></ruby>・<ruby>読解<rt>どっかい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しい<ruby>問題<rt>もんだい</rt></ruby>もありました。<br>*(Chữ - từ vựng với ngữ pháp - đọc hiểu chị nghĩ ổn. Nghe hiểu có câu khó.)* |
| Trang | すみません、N3の<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>はどんな<ruby>基準<rt>きじゅん</rt></ruby>ですか？<br>*(Xin lỗi sempai, tiêu chuẩn đỗ N3 là tiêu chuẩn như thế nào ạ?)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>科目<rt>かもく</rt></ruby>の<ruby>合計<rt>ごうけい</rt></ruby>が<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>で、<ruby>各<rt>かく</rt></ruby><ruby>科目<rt>かもく</rt></ruby>も<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>ないと<ruby>合格<rt>ごうかく</rt></ruby>できません。<br>*(Tổng 3 môn từ 95 điểm trở lên, và mỗi môn phải từ 19 điểm trở lên mới đỗ.)* |
| Mai | え、<ruby>各<rt>かく</rt></ruby><ruby>科目<rt>かもく</rt></ruby>も<ruby>基準<rt>きじゅん</rt></ruby>があるんですか？<br>*(Ơ, từng môn cũng có tiêu chuẩn riêng ạ?)* |
| Hoa | はい。<ruby>合計<rt>ごうけい</rt></ruby><ruby>点<rt>てん</rt></ruby>が<ruby>高<rt>たか</rt></ruby>くても、<ruby>1<rt>いっ</rt></ruby><ruby>科目<rt>かもく</rt></ruby>でも<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>未満<rt>みまん</rt></ruby>だと<ruby>不合格<rt>ふごうかく</rt></ruby>です。<br>*(Vâng. Dù tổng điểm cao, chỉ cần một môn dưới 19 điểm là rớt.)* |
| Trang | <ruby>厳<rt>きび</rt></ruby>しいですね。<ruby>結果<rt>けっか</rt></ruby>はいつ<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Khắt khe ghê. Khi nào biết kết quả ạ?)* |
| Hoa | <ruby>約<rt>やく</rt></ruby><ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月後<rt>げつご</rt></ruby>に<ruby>公式<rt>こうしき</rt></ruby>サイトで<ruby>確認<rt>かくにん</rt></ruby>できます。<br>*(Khoảng 1 tháng sau là kiểm trên trang chính thức được.)* |
| Mai | お<ruby>祝<rt>いわ</rt></ruby>いに<ruby>居酒屋<rt>いざかや</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう！<br>*(Đi izakaya ăn mừng đi ạ!)* |
| Hoa | （<ruby>笑<rt>わら</rt></ruby>う）まだ<ruby>合格<rt>ごうかく</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>じゃないけど、お<ruby>疲<rt>つか</rt></ruby>れ<ruby>祝<rt>いわ</rt></ruby>いならいいですね。<br>*(Cười. Tuy chưa chắc đỗ, nhưng mừng vì thi xong thì được nhỉ.)* |

---

## Tình huống 8 — Izakaya Omiya · 17:00, ăn mừng cùng 後輩 (3 thế hệ cùng học)

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>受験<rt>じゅけん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした！<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Vất vả vì kỳ thi rồi ạ! Cạn ly!)* |
| Trang | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn!)* |
| Hoa | <ruby>乾杯<rt>かんぱい</rt></ruby>。<ruby>2人<rt>ふたり</rt></ruby>とも、<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Cạn. Cả hai đứa, cảm ơn thật lòng.)* |
| Mai | <ruby>当然<rt>とうぜん</rt></ruby>です！<ruby>先輩<rt>せんぱい</rt></ruby>がいつも<ruby>私<rt>わたし</rt></ruby>たちを<ruby>助<rt>たす</rt></ruby>けてくれますから。<br>*(Đương nhiên ạ! Vì sempai luôn giúp đỡ tụi em.)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>がいるから<ruby>私<rt>わたし</rt></ruby>たちも<ruby>頑張<rt>がんば</rt></ruby>れます。<br>*(Có sempai nên tụi em mới cố được.)* |
| Hoa | （<ruby>嬉<rt>うれ</rt></ruby>しそうに<ruby>笑<rt>わら</rt></ruby>う）ありがとう。<br>*(Cười vui. Cảm ơn nhé.)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby><ruby>私<rt>わたし</rt></ruby>もN3を<ruby>受<rt>う</rt></ruby>けたいです。<br>*(Sempai, sang năm em cũng muốn thi N3 ạ.)* |
| Trang | <ruby>私<rt>わたし</rt></ruby>はN4から<ruby>受<rt>う</rt></ruby>けます。<br>*(Em thì thi từ N4.)* |
| Hoa | いいですね。<ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>ですね。<br>*(Tốt đấy. Ba thế hệ cùng học rồi nhỉ.)* |
| Mai | じゃ、<ruby>勉強会<rt>べんきょうかい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めませんか？<ruby>週<rt>しゅう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>とか。<br>*(Vậy mình bắt đầu nhóm học đi ạ? Mỗi tuần 1 lần, tối thứ Bảy chẳng hạn.)* |
| Hoa | いいアイデアです。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Ý hay đấy. Tuần sau mình bắt đầu nhé.)* |

---

## Tình huống 9 — Phòng riêng ký túc · 21:00, báo cáo cấp trên qua LINE

| Vai | Lời thoại |
|---|---|
| Hoa | （タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>送信<rt>そうしん</rt></ruby>）<ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>本日<rt>ほんじつ</rt></ruby>のN3<ruby>試験<rt>しけん</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>終了<rt>しゅうりょう</rt></ruby>いたしました。<ruby>結果<rt>けっか</rt></ruby>は<ruby>約<rt>やく</rt></ruby><ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月後<rt>げつご</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かります。<br>*(Gửi trưởng nhà máy Tanaka. Anh trưởng nhà máy, em vất vả ạ. Hôm nay em đã hoàn thành kỳ thi N3 an toàn. Kết quả khoảng 1 tháng nữa sẽ biết.)* |
| Tanaka | お<ruby>疲<rt>つか</rt></ruby>れさま、ホアさん！<ruby>5<rt>ご</rt></ruby><ruby>時間<rt>じかん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大変<rt>たいへん</rt></ruby>だったでしょう。<br>*(Vất vả rồi, Hoa-san! Thi 5 tiếng chắc mệt lắm nhỉ.)* |
| Hoa | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>疲<rt>つか</rt></ruby>れましたが、マイさんとチャンさんが<ruby>応援<rt>おうえん</rt></ruby>に<ruby>来<rt>き</rt></ruby>てくれて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しかったです。<br>*(Vâng, hơi mệt, nhưng Mai-san và Trang-san đến cổ vũ, em rất vui ạ.)* |
| Tanaka | いい<ruby>後輩<rt>こうはい</rt></ruby>ですね。ところで、<ruby>来月<rt>らいげつ</rt></ruby>お<ruby>母様<rt>かあさま</rt></ruby>が<ruby>日本<rt>にほん</rt></ruby>にいらっしゃるとのことですが、<ruby>準備<rt>じゅんび</rt></ruby>はいかがですか？<br>*(Hậu bối tốt nhỉ. À mà tháng sau mẹ em sang Nhật, em chuẩn bị thế nào?)* |
| Hoa | はい、フライトの<ruby>確認<rt>かくにん</rt></ruby>はもう<ruby>済<rt>す</rt></ruby>みました。<ruby>明日<rt>あした</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, em đã kiểm chuyến bay rồi. Mai em định kiểm lại lần nữa.)* |
| Tanaka | <ruby>実<rt>じつ</rt></ruby>は<ruby>家内<rt>かない</rt></ruby>も、お<ruby>母様<rt>かあさま</rt></ruby>に<ruby>会<rt>あ</rt></ruby>いたいと<ruby>言<rt>い</rt></ruby>っています。お<ruby>時間<rt>じかん</rt></ruby>があれば、ぜひ。<br>*(Thật ra vợ tôi cũng nói muốn gặp mẹ em. Nếu có thời gian thì mời cô đến.)* |
| Hoa | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか？<ruby>母<rt>はは</rt></ruby>が<ruby>喜<rt>よろこ</rt></ruby>びます。<br>*(Ơ, thật ạ? Mẹ em sẽ vui lắm.)* |
| Tanaka | お<ruby>母様<rt>かあさま</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>伝<rt>つた</rt></ruby>えたいんです。<br>*(Tôi muốn gửi lời cảm ơn đến mẹ em.)* |
| Hoa | ありがとうございます。<ruby>日程<rt>にってい</rt></ruby>が<ruby>決<rt>き</rt></ruby>まりましたら、ご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Cảm ơn anh ạ. Khi nào quyết định lịch em sẽ liên lạc.)* |

---

## Tình huống 10 — Phòng riêng ký túc · 1 tháng sau, sáng kiểm kết quả + gọi điện về mẹ

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê (Hoa ở phòng riêng, không có đồng hương cùng phòng nên gọi video về VN).

| Vai | Lời thoại |
|---|---|
| Hoa | （PCでJLPT<ruby>公式<rt>こうしき</rt></ruby>サイトを<ruby>開<rt>あ</rt></ruby>く、<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>と<ruby>暗証番号<rt>あんしょうばんごう</rt></ruby>を<ruby>入力<rt>にゅうりょく</rt></ruby>する）<br>*(Mở trang JLPT chính thức trên PC, nhập số báo danh và mật khẩu.)* |
| Hoa | (tiếng Việt, lẩm bẩm) Lạy trời... bấm xem nào. |
| Hoa | <ruby>合格<rt>ごうかく</rt></ruby>！<ruby>合計<rt>ごうけい</rt></ruby><ruby>140<rt>ひゃくよんじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>！<br>*(Đỗ! Tổng 140 điểm!)* |
| Hoa | （<ruby>涙<rt>なみだ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>いて<ruby>母<rt>はは</rt></ruby>にビデオ<ruby>通話<rt>つうわ</rt></ruby>をかける）<br>*(Lau nước mắt và gọi video cho mẹ.)* |
| Hoa | (tiếng Việt) Mẹ ơi! Con đỗ N3 rồi! |
| Mẹ Hoa | (tiếng Việt) Trời ơi! Hoa ơi, mẹ biết mà! Mẹ tự hào về con quá! |
| Hoa | (tiếng Việt) 140 điểm mẹ ơi, vượt mức 95 nhiều lắm. Cả Mai với Trang hôm đó đưa con đi cổ vũ, còn mua bùa hộ mệnh tặng con. |
| Mẹ Hoa | (tiếng Việt) Hai cô em tốt thật. Mẹ qua bên đấy nhớ cảm ơn tụi nó nhé. |
| Hoa | (tiếng Việt) Vâng. À mẹ ơi, anh Tanaka trưởng nhà máy nói vợ anh ấy cũng muốn gặp mẹ. Lúc mẹ sang con dẫn đến nhà anh ấy chơi nhé. |
| Mẹ Hoa | (tiếng Việt) Trời, người Nhật mà tử tế thế cơ à. Mẹ cũng muốn cảm ơn anh ấy đã chăm con suốt 3 năm. |
| Linh | (tiếng Việt, ghé vào màn hình) Chị! Em nghe nói đỗ N3 rồi! Chị siêu thật, vượt 2 cấp từ N5 lên N3 trong 3 năm. |
| Hoa | (tiếng Việt) Linh nhớ câu Linh nói hồi xưa không — "học không bao giờ phụ mình"? Đúng thật. N3 không cần cho SSW1 nhưng giờ chị tự tin nói chuyện với người tuyển dụng Tokyo, bàn giấy tờ với anh Suzuki. Đầu tư dài hạn mà em. |
| Linh | (tiếng Việt) Em nhớ chứ. Sang năm em cũng cố lên N2. |
| Mẹ Hoa | (tiếng Việt) Ừ, hai chị em cùng cố. Thôi mẹ đi chuẩn bị hành lý đây, hôm sau mẹ bay. |
| Hoa | (tiếng Việt) Dạ, con đợi mẹ. |

---

## Tình huống 11 — Phòng ăn nhà máy · 12:00 hôm sau, báo cáo trực tiếp đồng nghiệp Nhật

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、おはよう。N3はどうでしたか？<br>*(Hoa-san, chào. N3 thế nào rồi?)* |
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby>さん、おはようございます。<ruby>昨日<rt>きのう</rt></ruby><ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Anh Suzuki, chào buổi sáng. Hôm qua có kết quả rồi. Em đỗ ạ.)* |
| Suzuki | おめでとう！<ruby>当然<rt>とうぜん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>ですね。<ruby>何<rt>なん</rt></ruby><ruby>点<rt>てん</rt></ruby>でしたか？<br>*(Chúc mừng! Kết quả đương nhiên thôi. Bao nhiêu điểm?)* |
| Hoa | <ruby>合計<rt>ごうけい</rt></ruby><ruby>140<rt>ひゃくよんじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<br>*(Tổng 140 điểm ạ.)* |
| Kondo | え、<ruby>140<rt>ひゃくよんじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>！？すごいですね、ホアさん！<br>*(Ơ, 140 điểm! Tuyệt vời quá, Hoa-san!)* |
| Hoa | ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんがいつも<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてくださったおかげです。<br>*(Cảm ơn ạ. Nhờ mọi người luôn dạy em tiếng Nhật chu đáo.)* |
| Tanaka | （<ruby>入<rt>はい</rt></ruby>ってくる）ホアさん、おめでとう！<ruby>今夜<rt>こんや</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>小<rt>ちい</rt></ruby>さなお<ruby>祝<rt>いわ</rt></ruby>いをしましょう。<br>*(Đi vào. Hoa-san, chúc mừng! Tối nay mình tổ chức ăn mừng nhỏ ở công ty đi.)* |
| Hoa | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em không dám ạ. Mong các anh chiếu cố.)* |
| Suzuki | これでホアさんはSSW2にも<ruby>転職<rt>てんしょく</rt></ruby>にも<ruby>有利<rt>ゆうり</rt></ruby>ですね。<br>*(Vậy là Hoa-san sẽ có lợi cả khi lên SSW2 lẫn khi chuyển việc nhỉ.)* |
| Hoa | はい、<ruby>長期的<rt>ちょうきてき</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えて<ruby>受<rt>う</rt></ruby>けました。<br>*(Vâng, em thi vì nghĩ về dài hạn.)* |

---

## Đọng lại chương 9

Hoa trải qua một ngày trọn vẹn xoay quanh kỳ thi N3: tối hôm trước nhắn em gái bằng mẫu **緊張しています・準備はちゃんとしました**; sáng được 後輩 đưa đi với câu cảm ơn **応援に来てくれてありがとう** và xác nhận giấy tờ **受験票と身分証**; trên tàu giải thích lý do học bằng **〜のため・〜時に有利になります**, đồng thời 後輩 Trang dùng mẫu **〜というのはどういう意味ですか** để hỏi lại thuật ngữ **良好修了**; ở cổng trường nhận お守り với **合格祈願**; trong phòng thi nghe giám thị chỉ dẫn theo trình tự **机の上に〜以外置かないでください・携帯の電源を切ってください・始めてください**; ra khỏi điểm thi giải thích **合格基準** (合計95点以上＋各科目19点以上); cuối cùng báo cáo trưởng nhà máy bằng mẫu khiêm tốn **本日〜が無事に終了いたしました・結果が出ました・合格しました**. Hoa nhận ra triết lý nghề: N3 không bắt buộc cho 技能実習2号良好修了→SSW1, nhưng cần cho SSW2・転職・給与交渉 — học tiếng là **đầu tư dài hạn** chứ không phải nghĩa vụ trước mắt.

> Từ vựng & mẫu câu chương này: 本番・受験票・身分証・在留カード・受験番号・暗証番号・言語知識・文字・語彙・文法・読解・聴解・合格基準・合計・各科目・公式サイト・結果発表・合格祈願・お守り・良好修了・技能実習2号・関連職種・SSW2・転職・給与交渉・長期的な視点・勉強は裏切らない・本日〜が終了いたしました・〜というのはどういう意味ですか・〜のため・お疲れさまでした

## Bí quyết chương

- **N3 không cần cho SSW1**: trục mẫu câu để Hoa giải thích "đầu tư dài hạn" — luyện cho người học cách trình bày lý do bằng 〜のため + 〜時に有利.
- **Mai+Trang đưa đi**: Pattern "kohai chăm sóc sempai" — mirror cảnh sempai chăm Hoa hồi T1, cho 後輩 dùng mẫu 応援する・お守り・合格祈願.
- **Giám thị trong phòng thi**: cảnh "quan sát người Nhật làm chuẩn" — người học nghe được trình tự chỉ dẫn cố định trong mọi kỳ thi JLPT.
- **Tanaka mời mẹ Hoa**: khởi đầu cho T10 (mẹ sang Nhật).

> *"N3 không cần cho SSW1. Nhưng cần cho mình. Học không phản bội."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu báo danh |
| 身分証 | みぶんしょう | THÂN PHẬN CHỨNG | giấy tờ tùy thân |
| 在留 | ざいりゅう | TẠI LƯU | cư trú |
| 良好 | りょうこう | LƯƠNG HẢO | tốt đẹp |
| 関連 | かんれん | QUAN LIÊN | liên quan |
| 職種 | しょくしゅ | CHỨC CHỦNG | ngành nghề |
| 検定 | けんてい | KIỂM ĐỊNH | kiểm định |
| 交渉 | こうしょう | GIAO THIỆP | đàm phán |
| 長期的 | ちょうきてき | TRƯỜNG KỲ ĐÍCH | dài hạn |
| 視点 | してん | THỊ ĐIỂM | tầm nhìn |
| 裏切 | うらぎ | LÝ THIẾT | phản bội |
| 守 | まもり | THỦ | bùa hộ mệnh |
| 神社 | じんじゃ | THẦN XÃ | đền thờ |
| 祈願 | きがん | KỲ NGUYỆN | cầu nguyện |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |
| 教室 | きょうしつ | GIÁO THẤT | phòng học |
| 深呼吸 | しんこきゅう | THÂM HÔ HẤP | hít thở sâu |
| 多国籍 | たこくせき | ĐA QUỐC TỊCH | đa quốc tịch |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | kiến thức ngôn ngữ |
| 文字 | もじ | VĂN TỰ | chữ viết |
| 鉛筆 | えんぴつ | DIÊN BÚT | bút chì |
| 携帯 | けいたい | HUỀ ĐỚI | di động |
| 電源 | でんげん | ĐIỆN NGUYÊN | nguồn điện |
| 不正行為 | ふせいこうい | BẤT CHÍNH HÀNH VI | hành vi gian lận |
| 失格 | しっかく | THẤT CÁCH | bị loại |
| 集中 | しゅうちゅう | TẬP TRUNG | tập trung |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 科目 | かもく | KHOA MỤC | môn |
| 合計 | ごうけい | HỢP KẾ | tổng cộng |
| 未満 | みまん | VỊ MÃN | dưới mức |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | không đỗ |
| 公式 | こうしき | CÔNG THỨC | chính thức |
| 居酒屋 | いざかや | CƯ TỬU ỐC | quán nhậu |
| 確定 | かくてい | XÁC ĐỊNH | xác định |
| 乾杯 | かんぱい | CAN BÔI | cạn ly |
| 同時 | どうじ | ĐỒNG THỜI | cùng lúc |
| 勉強会 | べんきょうかい | MIỄN CƯỠNG HỘI | nhóm học |
| 送信 | そうしん | TỐNG TÍN | gửi tin |
| 本日 | ほんじつ | BẢN NHẬT | hôm nay |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 暗証番号 | あんしょうばんごう | ÁM CHỨNG PHIÊN HIỆU | mật khẩu |
| 入力 | にゅうりょく | NHẬP LỰC | nhập vào |
| 丁寧 | ていねい | ĐINH NINH | chu đáo |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000010, 800000013, NULL, 'markdown_book', 'T10. Mẹ qua thăm Nhật (母来日)', '# Sách thực tập sinh thực phẩm · T10. Mẹ qua thăm Nhật (母来日)

> **Mục tiêu nhân vật:** Hoa (năm 3, thực tập sinh chế biến thực phẩm tại Saitama) đón mẹ sang Nhật thăm 4 tuần. Học các mẫu hội thoại tiếng Nhật khi đóng vai trò **phiên dịch gia đình–công ty**: giới thiệu người thân với cấp trên (<ruby>母<rt>はは</rt></ruby>のグエン・ティ・ランです), nhận quà và đáp lễ thay mẹ (お土産・恐れ入ります), hỏi lại lễ phép khi chưa hiểu thuật ngữ (〜というのは？), nhờ người lạ giúp đỡ ngoài đường (<ruby>写真<rt>しゃしん</rt></ruby><ruby>撮<rt>と</rt></ruby>っていただけますか), xin nghỉ phép có lý do gia đình (<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます), quan sát cấp trên Tanaka cách tiếp đón khách Việt Nam.

---

## Bối cảnh

Tháng 1 năm 2029. Hoa đã làm việc 3 năm tại nhà máy chế biến thực phẩm Saitama, trình độ tiếng Nhật N3. Mẹ Hoa (52 tuổi) lần đầu rời Việt Nam, sang thăm 4 tuần (15/1–12/2). Hoa xin nghỉ 4 ngày có lương để dẫn mẹ đi và đưa mẹ vào nhà máy gặp anh Tanaka chủ xưởng. Chương này tập trung các mẫu câu **phiên dịch giữa gia đình và đồng nghiệp Nhật**, **tiếp đón khách**, **nhờ giúp đỡ ngoài đường**, và **xin nghỉ phép có lý do**.

---

## Tình huống 1 — Sân bay Narita · 9:30, xin lỗi nhân viên hàng không khi tìm mẹ

| Vai | Lời thoại |
|---|---|
| Hoa | （<ruby>到着<rt>とうちゃく</rt></ruby>ロビーで<ruby>待<rt>ま</rt></ruby>ちながら<ruby>案内<rt>あんない</rt></ruby><ruby>係<rt>がかり</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかける）すみません、ベトナム<ruby>航空<rt>こうくう</rt></ruby><ruby>VN<rt>ブイエヌ</rt></ruby><ruby>200<rt>にひゃく</rt></ruby><ruby>便<rt>びん</rt></ruby>はもう<ruby>到着<rt>とうちゃく</rt></ruby>しましたか？<br>*(Đợi ở sảnh đến, hỏi nhân viên hướng dẫn. Xin lỗi, chuyến VN200 của Vietnam Airlines đã đến chưa ạ?)* |
| 案内係 | はい、<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby>しました。<ruby>入国<rt>にゅうこく</rt></ruby><ruby>審査<rt>しんさ</rt></ruby>に<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらいかかります。<br>*(Vâng, đã đến lúc 9:25. Thủ tục nhập cảnh mất khoảng 30 phút.)* |
| Hoa | <ruby>母<rt>はは</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えに<ruby>来<rt>き</rt></ruby>ました。<ruby>初<rt>はじ</rt></ruby>めての<ruby>来日<rt>らいにち</rt></ruby>なので、ちょっと<ruby>心配<rt>しんぱい</rt></ruby>しています。<br>*(Em đến đón mẹ. Mẹ em lần đầu sang Nhật nên em hơi lo.)* |
| 案内係 | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>出口<rt>でぐち</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つしかありません。ここで<ruby>待<rt>ま</rt></ruby>っていれば<ruby>必<rt>かなら</rt></ruby>ず<ruby>会<rt>あ</rt></ruby>えます。<br>*(Không sao đâu. Lối ra chỉ có một thôi. Đợi ở đây nhất định sẽ gặp được.)* |
| Hoa | ありがとうございます。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Em cảm ơn ạ. Em yên tâm rồi.)* |

---

## Tình huống 2 — Sảnh đến Narita · 10:00, gặp mẹ sau 3 năm (chuyển VN ↔ JP)

| Vai | Lời thoại |
|---|---|
| Mẹ Hoa | (tiếng Việt, kéo vali ra) Hoa! Con ơi! |
| Hoa | (tiếng Việt, chạy lại ôm) Mẹ! Mẹ đi đường có mệt không? |
| Mẹ Hoa | (tiếng Việt) Hơi mệt. Nhưng nhìn thấy con là khoẻ rồi. Sao con gầy thế? |
| Hoa | (tiếng Việt) Con không gầy đâu mẹ, do áo mùa đông thôi. Mẹ đưa vali con kéo cho. |
| Hoa | <ruby>母<rt>かあ</rt></ruby>さん、ここから<ruby>成田<rt>なりた</rt></ruby>エクスプレスに<ruby>乗<rt>の</rt></ruby>って<ruby>埼玉<rt>さいたま</rt></ruby>まで<ruby>帰<rt>かえ</rt></ruby>ります。<br>*(Mẹ ơi, từ đây mình đi Narita Express về Saitama.)* |
| Mẹ Hoa | (tiếng Việt) Con cứ nói tiếng Nhật thoải mái. Mẹ chưa hiểu nhưng vui khi nghe. |
| Hoa | (tiếng Việt) Vâng. Đi tàu khoảng 2 tiếng. Mẹ ngủ một giấc nhé. |

---

## Tình huống 3 — Trên Narita Express · 11:00, dạy mẹ vài câu tiếng Nhật cơ bản

| Vai | Lời thoại |
|---|---|
| Mẹ Hoa | (tiếng Việt) Mai mẹ gặp anh Tanaka. Con dạy mẹ vài câu chào đi. |
| Hoa | (tiếng Việt) Vâng. Câu đầu tiên là "Xin chào, rất hân hạnh": <ruby>初<rt>はじ</rt></ruby>めまして、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hajimemashite, yoroshiku onegai shimasu.)* |
| Mẹ Hoa | (tiếng Việt) Hajimemashite... yoroshiku... khó quá. |
| Hoa | (tiếng Việt) Không sao mẹ, chỉ cần "Hajimemashite" + cúi đầu là được. Con sẽ dịch hết. |
| Hoa | あと、ありがとうございます (cảm ơn) と すみません (xin lỗi / xin nhờ). この<ruby>二<rt>ふた</rt></ruby>つだけで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Còn nữa, arigatou gozaimasu và sumimasen. Chỉ hai câu này là đủ ạ.)* |
| Mẹ Hoa | (tiếng Việt) Arigatou. Sumimasen. Mẹ nhớ rồi. |
| Hoa | (tiếng Việt) Mẹ giỏi quá. Tới Saitama là dùng được luôn. |

---

## Tình huống 4 — Trước cổng nhà máy · 8:50 hôm sau, Hoa xin phép cấp trên đưa mẹ vào

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>母<rt>はは</rt></ruby>が<ruby>工場<rt>こうじょう</rt></ruby><ruby>見学<rt>けんがく</rt></ruby>にまいります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh chủ nhiệm Suzuki, chào buổi sáng. Hôm nay mẹ em tới tham quan nhà máy. Mong anh giúp đỡ ạ.)* |
| Suzuki | おはよう。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いていますよ。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>玄関<rt>げんかん</rt></ruby>でお<ruby>迎<rt>むか</rt></ruby>えします。<br>*(Chào em. Tôi nghe từ trưởng nhà máy Tanaka rồi. 9 giờ tôi ra đón ở sảnh.)* |
| Hoa | ありがとうございます。<ruby>母<rt>はは</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>がわからないので、<ruby>私<rt>わたし</rt></ruby>が<ruby>通訳<rt>つうやく</rt></ruby>します。<br>*(Em cảm ơn ạ. Mẹ em không biết tiếng Nhật nên em sẽ phiên dịch.)* |
| Suzuki | はい、<ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>今日<rt>きょう</rt></ruby>と<ruby>明日<rt>あした</rt></ruby>は<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>ですね。<br>*(Vâng, tôi rõ. Hôm nay và mai em nghỉ phép có lương đúng không?)* |
| Hoa | はい、<ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>先週<rt>せんしゅう</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>しました。<ruby>4<rt>よっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vâng, đơn em đã nộp tuần trước rồi. Em xin nghỉ phép có lương 4 ngày ạ.)* |
| Suzuki | <ruby>家族<rt>かぞく</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>時間<rt>じかん</rt></ruby>ですから、ゆっくり<ruby>過<rt>す</rt></ruby>ごしてください。<br>*(Đây là thời gian quan trọng với gia đình, em hãy thư thả nhé.)* |

---

## Tình huống 5 — Sảnh nhà máy · 9:00, giới thiệu mẹ với anh Tanaka (kỹ năng phiên dịch)

| Vai | Lời thoại |
|---|---|
| Tanaka | （<ruby>玄関<rt>げんかん</rt></ruby>で<ruby>笑顔<rt>えがお</rt></ruby>で）お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>遠路<rt>えんろ</rt></ruby>はるばるようこそおいでくださいました。<br>*(Đứng ở sảnh, mỉm cười. Chào bác, hoan nghênh bác đã từ xa đến.)* |
| Hoa | <ruby>母<rt>かあ</rt></ruby>さん、こちらが<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>です。(tiếng Việt) Mẹ ơi, đây là anh Tanaka chủ xưởng. Anh nói "Hoan nghênh bác từ xa đến". |
| Mẹ Hoa | (cúi đầu) はじめまして。(tiếng Việt) Cảm ơn anh đã chăm sóc con tôi 3 năm qua. |
| Hoa | （<ruby>通訳<rt>つうやく</rt></ruby>）<ruby>母<rt>はは</rt></ruby>が「<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしてくださってありがとうございます」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Phiên dịch. Mẹ em nói "Cảm ơn anh đã chăm sóc con gái tôi suốt 3 năm".)* |
| Tanaka | こちらこそ、ホアさんは<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>宝<rt>たから</rt></ruby>です。お<ruby>母<rt>かあ</rt></ruby>さんのおかげで<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>娘<rt>むすめ</rt></ruby>さんに<ruby>育<rt>そだ</rt></ruby>てていただきました。<br>*(Tôi mới phải cảm ơn, Hoa-san là kho báu của công ty. Nhờ bác mà chúng tôi có một cô con gái tuyệt vời.)* |
| Hoa | (tiếng Việt) Mẹ ơi, anh ấy nói con là "kho báu của công ty", và cảm ơn mẹ đã nuôi con. |
| Mẹ Hoa | (tiếng Việt, rưng rưng) Anh khen quá. |
| Hoa | <ruby>母<rt>はは</rt></ruby>が「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ em nói "Bác quá khen rồi".)* |

---

## Tình huống 6 — Phòng họp · 9:30, hỏi lại lễ phép khi vợ Tanaka nói về bento

| Vai | Lời thoại |
|---|---|
| Vợ Tanaka | <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>田中<rt>たなか</rt></ruby><ruby>美智子<rt>みちこ</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はベトナム<ruby>風<rt>ふう</rt></ruby>のお<ruby>弁当<rt>べんとう</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>いたしました。<br>*(Rất hân hạnh, tôi là Tanaka Michiko. Hôm nay tôi đã chuẩn bị bento kiểu Việt Nam ạ.)* |
| Hoa | (tiếng Việt) Mẹ, đây là vợ anh Tanaka. Chị ấy nói đã chuẩn bị bento kiểu Việt. |
| Mẹ Hoa | (tiếng Việt) Trời, chu đáo quá. Chị ấy biết nấu món Việt sao? |
| Hoa | すみません、「ベトナム<ruby>風<rt>ふう</rt></ruby>」というのは、どんな<ruby>料理<rt>りょうり</rt></ruby>ですか？<ruby>母<rt>はは</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>したいです。<br>*(Xin lỗi, "kiểu Việt Nam" là món gì ạ? Em muốn giải thích cho mẹ.)* |
| Vợ Tanaka | <ruby>豚肉<rt>ぶたにく</rt></ruby><ruby>炒<rt>いた</rt></ruby>めと<ruby>生<rt>なま</rt></ruby><ruby>春巻<rt>はるま</rt></ruby>きです。<ruby>去年<rt>きょねん</rt></ruby>ホアさんから<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Thịt heo xào và gỏi cuốn. Năm ngoái tôi được Hoa-san dạy cách làm.)* |
| Hoa | (tiếng Việt) Là thịt heo xào với gỏi cuốn mẹ ạ. Con dạy chị ấy năm ngoái. |
| Mẹ Hoa | (tiếng Việt) Con dạy người Nhật nấu món Việt? Mẹ tự hào quá. |
| Hoa | <ruby>母<rt>はは</rt></ruby>がとても<ruby>感激<rt>かんげき</rt></ruby>しております。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Mẹ em rất xúc động ạ. Em xin cảm ơn rất nhiều.)* |

---

## Tình huống 7 — Phòng đóng gói · 10:30, quan sát Tanaka giới thiệu Mai+Trang (đàn em)

| Vai | Lời thoại |
|---|---|
| Tanaka | お<ruby>母<rt>かあ</rt></ruby>さん、こちらが<ruby>新人<rt>しんじん</rt></ruby>のマイさんとチャンさんです。<ruby>二人<rt>ふたり</rt></ruby>ともホアさんの<ruby>後輩<rt>こうはい</rt></ruby>です。<br>*(Bác ơi, đây là hai bạn mới Mai và Trang. Cả hai đều là đàn em của Hoa-san.)* |
| Mai | <ruby>初<rt>はじ</rt></ruby>めまして、マイです！<ruby>ホア先輩<rt>せんぱい</rt></ruby>にいつもお<ruby>世話<rt>せわ</rt></ruby>になっています。<br>*(Rất hân hạnh, em Mai ạ! Lúc nào cũng được chị Hoa giúp đỡ.)* |
| Trang | チャンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em tên là Trang. Mong cô giúp đỡ ạ.)* |
| Hoa | (tiếng Việt) Mẹ, đây là Mai với Trang. Hai đứa là đàn em của con, con dạy chúng nó. |
| Mẹ Hoa | (tiếng Việt) Hai cháu nói tiếng Nhật được luôn nhỉ. Cô cảm ơn các cháu thân với Hoa. |
| Mai | (tiếng Việt) Cô! Chị Hoa dạy bọn cháu mọi thứ — từ cách đóng gói đến cách viết báo cáo. Bọn cháu rất biết ơn. |
| Tanaka | （<ruby>横<rt>よこ</rt></ruby>から）ホアさんは「<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>」が<ruby>上手<rt>じょうず</rt></ruby>です。<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>叱<rt>しか</rt></ruby>らずに、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えてくれます。<br>*(Bên cạnh. Hoa-san dạy rất khéo. Không la mắng khi sai mà cùng suy nghĩ với đàn em.)* |
| Hoa | (tiếng Việt) Anh Tanaka khen con dạy đàn em không la mắng, cùng suy nghĩ. |
| Mẹ Hoa | (tiếng Việt) Anh dạy con tôi như vậy. Con tôi mới biết dạy lại em. |

---

## Tình huống 8 — Asakusa · 11:00 hôm sau, nhờ người lạ chụp ảnh giúp

| Vai | Lời thoại |
|---|---|
| Mẹ Hoa | (tiếng Việt) Cổng đỏ to quá! Như trong phim! |
| Hoa | (tiếng Việt) Đây là Kaminarimon — cổng nổi tiếng nhất Tokyo. Mẹ đứng dưới đèn lồng để con chụp nhé. |
| Mẹ Hoa | (tiếng Việt) Con đứng cùng đi. Mẹ muốn có ảnh hai mẹ con. |
| Hoa | （<ruby>通行人<rt>つうこうにん</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかける）すみません、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>母<rt>はは</rt></ruby>と<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>っていただけませんか？<br>*(Bắt chuyện với người qua đường. Xin lỗi đã làm phiền lúc anh bận. Anh chụp giúp tôi với mẹ một tấm được không ạ?)* |
| Người qua đường | はい、いいですよ。<ruby>携帯<rt>けいたい</rt></ruby><ruby>貸<rt>か</rt></ruby>してください。<ruby>雷門<rt>かみなりもん</rt></ruby>を<ruby>背景<rt>はいけい</rt></ruby>に<ruby>入<rt>い</rt></ruby>れますね。<br>*(Vâng, được ạ. Đưa điện thoại đây. Tôi lấy Kaminarimon làm phông nhé.)* |
| Hoa | ありがとうございます。<ruby>母<rt>はは</rt></ruby>がベトナムから<ruby>初<rt>はじ</rt></ruby>めて<ruby>来<rt>き</rt></ruby>たんです。<br>*(Cảm ơn anh. Mẹ em lần đầu sang Nhật từ Việt Nam.)* |
| Người qua đường | あら、それは<ruby>記念<rt>きねん</rt></ruby>ですね。はい、チーズ！<br>*(Ô, vậy là kỷ niệm rồi. Nào, cười nào!)* |
| Hoa | ありがとうございました。<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Em cảm ơn ạ. Anh giúp em quá.)* |
| Mẹ Hoa | (tiếng Việt) Con nói tiếng Nhật trôi chảy quá. Mẹ tự hào. |

---

## Tình huống 9 — Quán sushi Asakusa · 13:00, gọi món + hỏi nguyên liệu cho mẹ

| Vai | Lời thoại |
|---|---|
| Nhân viên | いらっしゃいませ。<ruby>何名様<rt>なんめいさま</rt></ruby>ですか？<br>*(Mời quý khách. Mấy người ạ?)* |
| Hoa | <ruby>二名<rt>にめい</rt></ruby>です。<ruby>母<rt>はは</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めて<ruby>寿司<rt>すし</rt></ruby>を<ruby>食<rt>た</rt></ruby>べるので、おすすめを<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Hai người ạ. Mẹ em lần đầu ăn sushi, anh giới thiệu giúp món nào ngon được không?)* |
| Nhân viên | <ruby>初心者<rt>しょしんしゃ</rt></ruby>でしたら、<ruby>玉子<rt>たまご</rt></ruby>・サーモン・えびのセットがおすすめです。<ruby>生<rt>なま</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>でも<ruby>食<rt>た</rt></ruby>べやすいです。<br>*(Người mới ăn thì em xin gợi ý set trứng - cá hồi - tôm. Người không quen đồ sống cũng dễ ăn.)* |
| Hoa | すみません、「<ruby>生<rt>なま</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>」というのは、<ruby>生魚<rt>なまざかな</rt></ruby>が<ruby>食<rt>た</rt></ruby>べられない<ruby>人<rt>ひと</rt></ruby>という<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "không quen đồ sống" có nghĩa là người không ăn được cá sống phải không ạ?)* |
| Nhân viên | はい、そういう<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Vâng, đúng nghĩa đó ạ.)* |
| Hoa | では、そのセットを<ruby>二<rt>ふた</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。あと、<ruby>温<rt>あたた</rt></ruby>かいお<ruby>茶<rt>ちゃ</rt></ruby>もいただけますか？<br>*(Vậy cho em hai set đó ạ. Và cho em thêm trà nóng được không?)* |
| Mẹ Hoa | (tiếng Việt, sau khi ăn) Cá hồi ngon quá. Khác hẳn sushi mẹ ăn hồi ở quê. |
| Hoa | (tiếng Việt) Vâng. Sushi Nhật làm bằng cá tươi cùng ngày. |

---

## Tình huống 10 — Phòng họp công ty · 14:00 tuần sau, Tanaka tặng quà mẹ

| Vai | Lời thoại |
|---|---|
| Tanaka | お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はささやかですが、お<ruby>土産<rt>みやげ</rt></ruby>をご<ruby>用意<rt>ようい</rt></ruby>いたしました。<br>*(Bác ơi, hôm nay tôi có chút quà nhỏ ạ.)* |
| Hoa | (tiếng Việt) Mẹ ơi, anh Tanaka tặng quà. |
| Mẹ Hoa | (tiếng Việt) Trời, không cần đâu mà. |
| Tanaka | （<ruby>箱<rt>はこ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<ruby>京都<rt>きょうと</rt></ruby>の<ruby>絹<rt>きぬ</rt></ruby>のスカーフです。お<ruby>母<rt>かあ</rt></ruby>さんに<ruby>似合<rt>にあ</rt></ruby>うと<ruby>思<rt>おも</rt></ruby>います。<br>*(Đưa hộp. Là khăn lụa Kyoto. Tôi nghĩ sẽ hợp với bác.)* |
| Mẹ Hoa | (tiếng Việt, mở hộp) Đẹp quá! Cảm ơn anh chị nhiều. |
| Hoa | <ruby>母<rt>はは</rt></ruby>が「とても<ruby>嬉<rt>うれ</rt></ruby>しい、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ em nói "Tôi vui lắm, xin cảm ơn rất nhiều".)* |
| Tanaka | お<ruby>母<rt>かあ</rt></ruby>さんの<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>娘<rt>むすめ</rt></ruby>さんを<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>預<rt>あず</rt></ruby>からせていただきました。<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Tôi đã được giữ con gái quý của bác suốt 3 năm. Đây là lòng biết ơn của tôi.)* |
| Mẹ Hoa | (tiếng Việt, qua Hoa dịch) Tôi mới phải cảm ơn anh. Tôi chỉ sinh con. Anh và mọi người đã dạy con tôi nên người. |
| Hoa | <ruby>母<rt>はは</rt></ruby>は「<ruby>私<rt>わたし</rt></ruby>は<ruby>娘<rt>むすめ</rt></ruby>を<ruby>産<rt>う</rt></ruby>んだだけです。<ruby>育<rt>そだ</rt></ruby>ててくださったのは<ruby>皆様<rt>みなさま</rt></ruby>です」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ em nói "Tôi chỉ sinh con thôi. Người dạy dỗ là quý vị".)* |

---

## Tình huống 11 — Phòng họp · 14:30, Suzuki giao hồ sơ đánh giá hạng A

| Vai | Lời thoại |
|---|---|
| Suzuki | お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>私<rt>わたし</rt></ruby>からも<ruby>一<rt>ひと</rt></ruby>つお<ruby>渡<rt>わた</rt></ruby>ししたいものがあります。<br>*(Bác ơi, tôi cũng có một thứ muốn giao cho bác.)* |
| Hoa | (tiếng Việt) Mẹ, anh Suzuki cũng có gì đó cho mẹ. |
| Suzuki | （<ruby>書類<rt>しょるい</rt></ruby><ruby>渡<rt>わた</rt></ruby>す）<ruby>監督<rt>かんとく</rt></ruby><ruby>団体<rt>だんたい</rt></ruby>からホアさんの<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby><ruby>記録<rt>きろく</rt></ruby>です。<br>*(Đưa hồ sơ. Đây là hồ sơ đánh giá 3 năm của Hoa-san từ tổ chức giám sát.)* |
| Hoa | すみません、「<ruby>評価<rt>ひょうか</rt></ruby><ruby>記録<rt>きろく</rt></ruby>」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんな<ruby>書類<rt>しょるい</rt></ruby>ですか？<br>*(Xin lỗi, "hồ sơ đánh giá" cụ thể là loại giấy tờ gì ạ?)* |
| Suzuki | <ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>ぶり・<ruby>勤怠<rt>きんたい</rt></ruby>・<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>を<ruby>総合<rt>そうごう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>したものです。ホアさんはAランクです。<ruby>過去<rt>かこ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>のみ。<br>*(Là tài liệu đánh giá tổng hợp công việc, chuyên cần và năng lực tiếng Nhật của thực tập sinh. Hoa-san hạng A. 10 năm qua chỉ có 3 người.)* |
| Hoa | (tiếng Việt, run giọng) Mẹ... con được đánh giá hạng A. 10 năm qua chỉ 3 người. |
| Mẹ Hoa | (tiếng Việt, khóc, ôm Hoa) Hoa con... mẹ tự hào. |
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、<ruby>母<rt>はは</rt></ruby>がとても<ruby>感激<rt>かんげき</rt></ruby>しております。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Anh Suzuki, mẹ em xúc động lắm. Em xin cảm ơn anh rất nhiều.)* |

---

## Tình huống 12 — Phòng Hoa · 21:00 đêm trước mẹ về, bàn việc chọn công ty SSW1

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mẹ ơi, con có chuyện muốn hỏi mẹ. |
| Mẹ Hoa | (tiếng Việt) Nói đi con. |
| Hoa | (tiếng Việt) Con có 2 lời mời SSW1. Một ở Saitama — anh Tanaka mời ở lại làm trưởng nhóm. Một ở Tokyo — công ty lớn hơn, lương ban đầu cao hơn 50.000 yên. |
| Mẹ Hoa | (tiếng Việt) Mẹ hỏi con một câu. Con cảm thấy đâu là nhà? |
| Hoa | (tiếng Việt) Saitama. Anh Tanaka, anh Suzuki, vợ anh Tanaka, Mai, Trang... |
| Mẹ Hoa | (tiếng Việt) Vậy con còn phân vân làm gì. |
| Hoa | (tiếng Việt) Còn tiền mẹ ạ. |
| Mẹ Hoa | (tiếng Việt) Hoa, mẹ ở quê 30 năm, mẹ học một điều: tiền mất rồi sẽ kiếm lại. Người mất rồi không lấy lại. |
| Hoa | (tiếng Việt, khóc) Vâng. |
| Mẹ Hoa | (tiếng Việt) Anh Tanaka như bố thứ hai của con. Mai, Trang như em gái. Đó là gia đình Nhật của con. Đừng bỏ. |
| Hoa | (tiếng Việt) Mai con sẽ báo anh Suzuki ạ. Con sẽ ở lại Saitama. |
| Mẹ Hoa | (tiếng Việt) Mẹ tự hào vì con biết quyết. |

---

## Tình huống 13 — Phòng họp · sáng hôm sau 9:00, Hoa báo Suzuki quyết định ở lại

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Anh Suzuki, anh cho em một chút thời gian được không ạ. Em có báo cáo về vụ visa kỹ năng đặc định 1.)* |
| Suzuki | はい、どうぞ。<br>*(Vâng, mời em.)* |
| Hoa | <ruby>母<rt>はは</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>した<ruby>結果<rt>けっか</rt></ruby>、<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>はお<ruby>断<rt>ことわ</rt></ruby>りして、<ruby>当社<rt>とうしゃ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>らせていただきたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Sau khi bàn với mẹ, em đã từ chối công ty Tokyo và muốn ở lại công ty mình ạ.)* |
| Suzuki | そうですか。ご<ruby>家族<rt>かぞく</rt></ruby>とよく<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>って<ruby>決<rt>き</rt></ruby>めたのは<ruby>素晴<rt>すば</rt></ruby>らしいです。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>も<ruby>喜<rt>よろこ</rt></ruby>びます。<br>*(Vậy à. Bàn bạc kỹ với gia đình rồi quyết là tuyệt vời. Trưởng nhà máy Tanaka cũng sẽ vui.)* |
| Hoa | <ruby>給料<rt>きゅうりょう</rt></ruby>より、ここの<ruby>皆様<rt>みなさま</rt></ruby>と<ruby>働<rt>はたら</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けたい<ruby>気持<rt>きも</rt></ruby>ちが<ruby>強<rt>つよ</rt></ruby>いです。<br>*(So với lương, em thấy muốn được tiếp tục làm với mọi người ở đây hơn.)* |
| Suzuki | <ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>しましょう。<br>*(Giấy tờ cần thiết tuần sau mình bắt đầu chuẩn bị nhé.)* |
| Hoa | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nhờ anh ạ.)* |

---

## Tình huống 14 — Cổng ra Narita · 10:00 sáng 12/2, tiễn mẹ về Việt Nam

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>母<rt>かあ</rt></ruby>さん、チェックイン<ruby>終<rt>お</rt></ruby>わりましたね。<br>*(Mẹ ơi, check-in xong rồi nhỉ.)* |
| Mẹ Hoa | (tiếng Việt) Ừ. 4 tuần trôi nhanh quá. |
| Hoa | (tiếng Việt) Mẹ này, đây là bento Việt vợ anh Tanaka làm để mẹ ăn trên máy bay. |
| Mẹ Hoa | (tiếng Việt) Trời, chị ấy chu đáo quá. |
| Hoa | (tiếng Việt) Mẹ về thay con cảm ơn chị ấy nhé. Lần sau mẹ sang, con dạy mẹ nói "ありがとうございました" cho thành thạo. |
| Mẹ Hoa | (tiếng Việt) Hoa, mẹ thấy con trưởng thành lắm. Mẹ yên tâm về con. |
| Hoa | (tiếng Việt, khóc) Mẹ giữ sức khoẻ. 5 năm sau hết SSW1 con sẽ về thăm mẹ với bố. |
| Mẹ Hoa | (tiếng Việt) Ừ. Hạnh phúc quan trọng hơn thành công, đừng quên. |
| Hoa | (tiếng Việt) Vâng. |
| Mẹ Hoa | (tiếng Việt, ôm Hoa lần cuối) Mẹ đi đây. Hàng tuần video call mẹ nhé. |
| Hoa | (tiếng Việt) Vâng. Mẹ đi cẩn thận. |

---

## Đọng lại chương 10

Trong 4 tuần mẹ qua thăm, Hoa lần đầu trải nghiệm vai trò **phiên dịch gia đình–công ty** và học được hàng loạt mẫu câu trang trọng: **giới thiệu người thân với cấp trên** (<ruby>母<rt>はは</rt></ruby>のグエン・ティ・ランです・こちらが<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>です), **chuyển lời gián tiếp** (<ruby>母<rt>はは</rt></ruby>が「〜」と<ruby>申<rt>もう</rt></ruby>しております), **xin nghỉ phép có lý do gia đình** (<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます), **nhận quà và đáp lễ** (<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります・<ruby>感激<rt>かんげき</rt></ruby>しております), **nhờ người lạ giúp đỡ ngoài đường** (<ruby>写真<rt>しゃしん</rt></ruby><ruby>撮<rt>と</rt></ruby>っていただけませんか), **hỏi lại lễ phép thuật ngữ chưa hiểu** (〜というのは？・どんな<ruby>意味<rt>いみ</rt></ruby>ですか), **báo cáo quyết định công việc** (お<ruby>断<rt>ことわ</rt></ruby>りして<ruby>当社<rt>とうしゃ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>らせていただきたいです). Qua việc quan sát anh Tanaka đón tiếp mẹ và vợ anh nấu bento Việt, Hoa nhận ra **văn hoá tiếp đãi khách Nhật** rất trọng nghi lễ — quà 3 lớp, cách chuyển lời gián tiếp, cách dùng kính ngữ với người lớn tuổi. Cuối cùng câu mẹ dặn "tiền mất kiếm lại được, người mất không lấy lại" giúp Hoa quyết định ở lại Saitama thay vì chạy theo lương cao Tokyo.

> Từ vựng & mẫu câu chương này: <ruby>来日<rt>らいにち</rt></ruby>・<ruby>短期滞在<rt>たんきたいざい</rt></ruby>・<ruby>遠路<rt>えんろ</rt></ruby>はるばる・<ruby>通訳<rt>つうやく</rt></ruby>・<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>・<ruby>申請書<rt>しんせいしょ</rt></ruby>・<ruby>工場見学<rt>こうじょうけんがく</rt></ruby>・<ruby>後輩<rt>こうはい</rt></ruby>・<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります・<ruby>感激<rt>かんげき</rt></ruby>しております・<ruby>評価<rt>ひょうか</rt></ruby><ruby>記録<rt>きろく</rt></ruby>・Aランク・<ruby>監督<rt>かんとく</rt></ruby><ruby>団体<rt>だんたい</rt></ruby>・<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>・<ruby>京都<rt>きょうと</rt></ruby>の<ruby>絹<rt>きぬ</rt></ruby>・<ruby>雷門<rt>かみなりもん</rt></ruby>・<ruby>浅草寺<rt>せんそうじ</rt></ruby>・〜と<ruby>申<rt>もう</rt></ruby>しております・〜というのは？・<ruby>写真<rt>しゃしん</rt></ruby><ruby>撮<rt>と</rt></ruby>っていただけませんか・<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます・お<ruby>断<rt>ことわ</rt></ruby>りして<ruby>残<rt>のこ</rt></ruby>らせていただきたいです

## Bí quyết chương

- **CLIMAX EMOTIONAL**: Mẹ qua thăm = đỉnh cao 3 năm sách 11+12+13.
- **Triple bridge**: Mẹ Hoa ↔ Tanaka (cảm ơn nuôi con), Mẹ Hoa ↔ Vợ Tanaka (bento), Mẹ Hoa ↔ Mai+Trang (đàn em).
- **Câu mẹ chốt**: "Tiền mất kiếm lại được. Người mất không lấy lại" → giúp Hoa quyết stay Saitama.
- **5 năm tới**: SSW1 → SSW2 → mở đường đón bố mẹ sang Nhật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 案内係 | あんないがかり | ÁN NỘI HỆ | nhân viên hướng dẫn |
| 航空 | こうくう | HÀNG KHÔNG | hàng không |
| 入国審査 | にゅうこくしんさ | NHẬP QUỐC THẨM TRA | thủ tục nhập cảnh |
| 迎 | むかえ | NGHÊNH | đón |
| 来日 | らいにち | LAI NHẬT | sang Nhật |
| 心配 | しんぱい | TÂM PHỐI | lo lắng |
| 出口 | でぐち | XUẤT KHẨU | lối ra |
| 安心 | あんしん | AN TÂM | yên tâm |
| 工場 | こうじょう | CÔNG TRƯỜNG | nhà máy |
| 見学 | けんがく | KIẾN HỌC | tham quan |
| 玄関 | げんかん | HUYỀN QUAN | sảnh, cửa chính |
| 通訳 | つうやく | THÔNG DỊCH | phiên dịch |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | nghỉ phép có lương |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | đơn xin |
| 家族 | かぞく | GIA TỘC | gia đình |
| 大切 | たいせつ | ĐẠI THIẾT | quan trọng |
| 遠路 | えんろ | VIỄN LỘ | đường xa |
| 宝 | たから | BẢO | kho báu |
| 育 | そだてる | DỤC | nuôi dạy |
| 恐れ入 | おそれい | KHỦNG NHẬP | quá khen, cảm tạ |
| 風 | ふう | PHONG | kiểu |
| 料理 | りょうり | LIỆU LÝ | món ăn |
| 豚肉 | ぶたにく | ĐỒN NHỤC | thịt heo |
| 春巻 | はるまき | XUÂN QUYỂN | nem cuốn |
| 感激 | かんげき | CẢM KÍCH | xúc động |
| 教 | おしえ | GIÁO | dạy |
| 叱 | しか | XÍCH | la mắng |
| 通行人 | つうこうにん | THÔNG HÀNH NHÂN | người qua đường |
| 写真 | しゃしん | TẢ CHÂN | ảnh |
| 背景 | はいけい | BỐI CẢNH | phông nền |
| 記念 | きねん | KỶ NIỆM | kỷ niệm |
| 寿司 | すし | THỌ TƯ | sushi |
| 初心者 | しょしんしゃ | SƠ TÂM GIẢ | người mới |
| 玉子 | たまご | NGỌC TỬ | trứng |
| 生 | なま | SINH | tươi sống |
| 苦手 | にがて | KHỔ THỦ | không quen |
| 生魚 | なまざかな | SINH NGƯ | cá sống |
| 土産 | みやげ | THỔ SẢN | quà |
| 用意 | ようい | DỤNG Ý | chuẩn bị |
| 絹 | きぬ | QUYÊN | lụa |
| 似合 | にあ | TỰ HỢP | hợp với |
| 預 | あずか | DỰ | gửi gắm |
| 産 | う | SẢN | sinh |
| 皆様 | みなさま | GIAI DẠNG | quý vị |
| 監督団体 | かんとくだんたい | GIÁM ĐỐC ĐOÀN THỂ | tổ chức giám sát |
| 評価記録 | ひょうかきろく | BÌNH GIÁ KÝ LỤC | hồ sơ đánh giá |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 勤怠 | きんたい | CẦN ĐÃI | chuyên cần |
| 能力 | のうりょく | NĂNG LỰC | năng lực |
| 総合 | そうごう | TỔNG HỢP | tổng hợp |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | kỹ năng đặc định |
| 断 | ことわ | ĐOẠN | từ chối |
| 残 | のこ | TÀN | ở lại |
| 必要 | ひつよう | TẤT YẾU | cần thiết |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000011, 800000013, NULL, 'markdown_book', 'T11. Quyết định ở lại Saitama (留まる選択)', '# Sách thực tập sinh thực phẩm · T11. Quyết định ở lại Saitama (留まる選択)

> **Mục tiêu nhân vật:** Hoa (24 tuổi, Hà Nội) chuẩn bị chuyển từ TTS sang SSW1 sau 3 năm tại Saitama Foods. Học các mẫu hội thoại tiếng Nhật để xử lý quyết định nghề nghiệp lớn: xin lời khuyên cấp trên (ご相談があります・ご意見を伺いたい), trao đổi keigo với 受入機関 (受入機関を決定しました), nhận lời bổ nhiệm trưởng nhóm (リーダー任命を謹んでお受けします), từ chối lời mời chuyển việc lịch sự (申し訳ございませんが・大変名誉でした), báo cáo cho kouhai (4月から正式指導員になります), và quan sát cách 先輩 (Satou) chia sẻ kinh nghiệm từ chối offer cũ.

---

## Bối cảnh

Tháng 2 năm 2029. Hoa làm việc đã 3 năm tại **埼玉フーズ** ở Saitama — nhà máy chế biến thực phẩm. Trình độ tiếng Nhật N3. Cuối tháng 2 phải báo 受入機関 cho chuyển đổi SSW1: ở lại Saitama Foods hay nhận offer từ 東京フーズ (anh Kinoshita). Chương này tập trung các mẫu câu giao tiếp khi đưa ra và truyền đạt quyết định nghề nghiệp lớn: xin tư vấn 先輩, nhận/từ chối offer bằng keigo, nhận lời bổ nhiệm và báo tin cho kouhai.

---

## Tình huống 1 — Phòng riêng ký túc · 6:30, tự sắp xếp suy nghĩ bằng nhật ký tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Hoa | (mở sổ, viết) <ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>はつ</rt></ruby><ruby>日<rt>か</rt></ruby>。<ruby>母<rt>はは</rt></ruby>が<ruby>帰国<rt>きこく</rt></ruby>してから<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>経<rt>た</rt></ruby>ちました。<br>*(Ngày 20 tháng 2. Đã một tuần trôi qua kể từ khi mẹ về nước.)* |
| Hoa | <ruby>気持<rt>きも</rt></ruby>ちはまだ<ruby>完全<rt>かんぜん</rt></ruby>には<ruby>整<rt>ととの</rt></ruby>っていませんが、<ruby>結論<rt>けつろん</rt></ruby>は<ruby>出<rt>で</rt></ruby>ています。<br>*(Cảm xúc chưa hoàn toàn sắp xếp, nhưng kết luận đã có.)* |
| Hoa | <ruby>受入機関<rt>うけいれきかん</rt></ruby>は<ruby>埼玉<rt>さいたま</rt></ruby>フーズに<ruby>残<rt>のこ</rt></ruby>ります。<ruby>東京<rt>とうきょう</rt></ruby>フーズの<ruby>件<rt>けん</rt></ruby>はお<ruby>断<rt>ことわ</rt></ruby>りします。<br>*(受入機関 ở lại Saitama Foods. Vụ Tokyo Foods sẽ từ chối.)* |
| Hoa | (VN, lẩm bẩm) Trước khi báo chính thức, hôm nay phải gặp anh Satou, hai đứa Mai-Trang, chị Kimura và em Linh. Nghe ý kiến lần cuối rồi mới chốt với anh Suzuki. |
| Hoa | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>します。<ruby>朝<rt>あさ</rt></ruby>はサトウ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>、<ruby>昼<rt>ひる</rt></ruby>はマイちゃんとチャンちゃんに<ruby>話<rt>はな</rt></ruby>します。<br>*(Sắp xếp lịch hôm nay. Sáng xin tư vấn anh Satou, trưa nói chuyện với Mai và Trang.)* |
| Hoa | <ruby>夕方<rt>ゆうがた</rt></ruby>キムラ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>、<ruby>夜<rt>よる</rt></ruby>は<ruby>妹<rt>いもうと</rt></ruby>のリンとビデオ<ruby>通話<rt>つうわ</rt></ruby>です。<br>*(Chiều gọi chị Kimura, tối video call em gái Linh.)* |

---

## Tình huống 2 — Phòng nhân viên · 8:00, xin lời khuyên 先輩 cũ (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Satou | ホアちゃん、おはよう。<ruby>今日<rt>きょう</rt></ruby>は<ruby>早<rt>はや</rt></ruby>いね。<br>*(Hoa, chào buổi sáng. Hôm nay đến sớm nhỉ.)* |
| Hoa | サトウ<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます。ちょっとご<ruby>相談<rt>そうだん</rt></ruby>があるんですが、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>いいですか?<br>*(Anh Satou, chào anh ạ. Em có chuyện muốn xin tư vấn, anh có rảnh chút không ạ?)* |
| Satou | <ruby>転職<rt>てんしょく</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でしょう?<ruby>社内<rt>しゃない</rt></ruby>でもう<ruby>噂<rt>うわさ</rt></ruby>になっているよ。<br>*(Vụ chuyển việc đúng không? Trong công ty đã đồn rồi đấy.)* |
| Hoa | え、<ruby>恥<rt>は</rt></ruby>ずかしいです。すみません。<br>*(Ơ, ngại quá. Em xin lỗi.)* |
| Satou | <ruby>恥<rt>は</rt></ruby>ずかしくないよ。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>った<ruby>人<rt>ひと</rt></ruby>には<ruby>当然<rt>とうぜん</rt></ruby>の<ruby>悩<rt>なや</rt></ruby>みだ。<br>*(Không có gì ngại. Người đã cố gắng 3 năm thì lo lắng vậy là đương nhiên.)* |
| Hoa | <ruby>先輩<rt>せんぱい</rt></ruby>のご<ruby>意見<rt>いけん</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>いたいです。<br>*(Em muốn được nghe ý kiến của anh ạ.)* |
| Satou | <ruby>個人的<rt>こじんてき</rt></ruby>には<ruby>残<rt>のこ</rt></ruby>ってほしい。でも<ruby>無理<rt>むり</rt></ruby>には<ruby>勧<rt>すす</rt></ruby>められない。<ruby>君<rt>きみ</rt></ruby>の<ruby>人生<rt>じんせい</rt></ruby>だから。<br>*(Cá nhân tôi muốn em ở lại. Nhưng không thể ép. Vì là cuộc đời em.)* |
| Hoa | <ruby>先輩<rt>せんぱい</rt></ruby><ruby>自身<rt>じしん</rt></ruby>は、どうしてこの<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>長<rt>なが</rt></ruby>くいらっしゃるんですか?<br>*(Bản thân anh, vì sao anh ở lại công ty này lâu vậy ạ?)* |
| Satou | <ruby>15<rt>じゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>転職<rt>てんしょく</rt></ruby>のチャンスがあった。<ruby>給料<rt>きゅうりょう</rt></ruby>はかなり<ruby>高<rt>たか</rt></ruby>かった。でも<ruby>断<rt>ことわ</rt></ruby>った。<br>*(15 năm trước, có cơ hội chuyển việc. Lương cao hơn nhiều. Nhưng tôi từ chối.)* |
| Hoa | <ruby>後悔<rt>こうかい</rt></ruby>はありませんでしたか?<br>*(Anh không hối hận sao ạ?)* |
| Satou | <ruby>一度<rt>いちど</rt></ruby>もない。<ruby>理由<rt>りゆう</rt></ruby>はタナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>への<ruby>恩<rt>おん</rt></ruby>と、ここの<ruby>家族<rt>かぞく</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>の<ruby>雰囲気<rt>ふんいき</rt></ruby>だ。お<ruby>金<rt>かね</rt></ruby>では<ruby>買<rt>か</rt></ruby>えない。<br>*(Chưa một lần. Lý do là ơn với trưởng xưởng Tanaka và bầu không khí như gia đình ở đây. Tiền không mua được.)* |
| Hoa | (gật đầu) <ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em học được nhiều ạ. Em cảm ơn anh.)* |

---

## Tình huống 3 — Phòng staff · 12:30, báo lựa chọn cho hai kouhai và xin ý kiến

| Vai | Lời thoại |
|---|---|
| Hoa | マイちゃん、チャンちゃん、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>に<ruby>大事<rt>だいじ</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>があります。<ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>いいですか?<br>*(Mai, Trang, chị có chuyện quan trọng muốn nói với hai em. Có chút thời gian không?)* |
| Mai | はい、<ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Vâng, chị.)* |
| Hoa | SSW1<ruby>移行<rt>いこう</rt></ruby>のことで、<ruby>選択肢<rt>せんたくし</rt></ruby>が<ruby>2<rt>ふた</rt></ruby>つあります。<ruby>1<rt>ひと</rt></ruby>つは<ruby>埼玉<rt>さいたま</rt></ruby>フーズに<ruby>残<rt>のこ</rt></ruby>ること、もう<ruby>1<rt>ひと</rt></ruby>つは<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>転職<rt>てんしょく</rt></ruby>することです。<br>*(Về chuyển sang SSW1, chị có 2 lựa chọn. Một là ở Saitama Foods, hai là chuyển sang công ty ở Tokyo.)* |
| Mai | (mặt biến sắc) え...<ruby>東京<rt>とうきょう</rt></ruby>ですか?<br>*(Ơ... Tokyo ạ?)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Chị, thật ạ?)* |
| Hoa | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>の<ruby>意見<rt>いけん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きたいんです。どう<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Chị muốn nghe ý kiến thật của hai em. Hai em nghĩ thế nào?)* |
| Mai | (nước mắt rưng rưng) <ruby>先輩<rt>せんぱい</rt></ruby>...<ruby>残<rt>のこ</rt></ruby>ってほしいですけど、<ruby>先輩<rt>せんぱい</rt></ruby>のキャリアが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Chị... em muốn chị ở lại, nhưng sự nghiệp của chị quan trọng.)* |
| Hoa | マイちゃん、<ruby>泣<rt>な</rt></ruby>かないで。<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>の<ruby>本音<rt>ほんね</rt></ruby>が<ruby>聞<rt>き</rt></ruby>きたいだけです。<br>*(Mai, đừng khóc. Chị chỉ muốn nghe lòng thật của hai em.)* |
| Trang | <ruby>給料<rt>きゅうりょう</rt></ruby>の<ruby>差<rt>さ</rt></ruby>はどれくらいあるんですか?<br>*(Chênh lệch lương khoảng bao nhiêu ạ?)* |
| Hoa | <ruby>東京<rt>とうきょう</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>多<rt>おお</rt></ruby>いです。でもタナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>からリーダー<ruby>役<rt>やく</rt></ruby>のオファーがあって、それも<ruby>同<rt>おな</rt></ruby>じく<ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>です。<br>*(Tokyo cao hơn 30.000 yên/tháng. Nhưng trưởng xưởng Tanaka có mời làm trưởng nhóm, cộng thêm 30.000 yên giống vậy.)* |
| Mai | <ruby>同<rt>おな</rt></ruby>じくらいですね。<ruby>悩<rt>なや</rt></ruby>むのも<ruby>当然<rt>とうぜん</rt></ruby>です。<br>*(Bằng nhau ạ. Chị phân vân là đương nhiên.)* |
| Trang | <ruby>悩<rt>なや</rt></ruby>むのなら、<ruby>気持<rt>きも</rt></ruby>ちで<ruby>選<rt>えら</rt></ruby>んだ<ruby>方<rt>ほう</rt></ruby>がいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ phân vân thì chọn theo cảm xúc tốt hơn.)* |

---

## Tình huống 4 — Phòng staff · 13:00, Mai nói thật lòng (kouhai xin sempai ở lại)

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、もう<ruby>1<rt>ひと</rt></ruby>つ<ruby>言<rt>い</rt></ruby>ってもいいですか?<br>*(Chị, em nói thêm một điều được không?)* |
| Hoa | もちろん、どうぞ。<br>*(Đương nhiên, em nói đi.)* |
| Mai | <ruby>来年<rt>らいねん</rt></ruby><ruby>私<rt>わたし</rt></ruby>がSSW1<ruby>移行<rt>いこう</rt></ruby>を<ruby>判断<rt>はんだん</rt></ruby>する<ruby>時<rt>とき</rt></ruby>、<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>埼玉<rt>さいたま</rt></ruby>フーズにいてほしいんです。<br>*(Sang năm khi em quyết SSW1, em muốn chị đang ở Saitama Foods.)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>がいないと、<ruby>正直<rt>しょうじき</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Không có chị, thật lòng em lo lắng.)* |
| Hoa | (im lặng, gật đầu) ...<br>*(...)* |
| Mai | でも、これは<ruby>先輩<rt>せんぱい</rt></ruby>を<ruby>縛<rt>しば</rt></ruby>るための<ruby>話<rt>はなし</rt></ruby>じゃないです。<ruby>東京<rt>とうきょう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでも、<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Nhưng đây không phải nói để trói buộc chị. Chị chọn Tokyo, em vẫn cổ vũ.)* |
| Hoa | (cúi đầu) マイちゃん、<ruby>本音<rt>ほんね</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってくれてありがとう。<ruby>判断<rt>はんだん</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きな<ruby>材料<rt>ざいりょう</rt></ruby>になります。<br>*(Mai, cảm ơn em đã nói thật lòng. Sẽ là chất liệu lớn cho quyết định của chị.)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>もマイ<ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Chị, em cũng cùng tâm trạng với chị Mai.)* |

---

## Tình huống 5 — Văn phòng tổ chức · 14:00 hôm sau, hỏi lại keigo trước khi báo Suzuki

| Vai | Lời thoại |
|---|---|
| Hoa | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します。スズキ<ruby>主任<rt>しゅにん</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>いただきありがとうございます。<br>*(Em xin phép. Anh Suzuki chủ nhiệm, cảm ơn anh đã dành thời gian.)* |
| Suzuki | ホアさん、どうぞお<ruby>座<rt>すわ</rt></ruby>りください。<ruby>結論<rt>けつろん</rt></ruby>は<ruby>出<rt>で</rt></ruby>ましたか?<br>*(Hoa, mời em ngồi. Em đã có kết luận chưa?)* |
| Hoa | はい。<ruby>受入機関<rt>うけいれきかん</rt></ruby>は<ruby>埼玉<rt>さいたま</rt></ruby>フーズに<ruby>決定<rt>けってい</rt></ruby>いたしました。<br>*(Vâng. 受入機関 em đã quyết định là Saitama Foods.)* |
| Suzuki | (gật đầu) <ruby>分<rt>わ</rt></ruby>かりました。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Tôi hiểu rồi. Thật lòng nói, tôi mừng.)* |
| Hoa | すみません、<ruby>1<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させていただきたいんですが、「<ruby>受入機関<rt>うけいれきかん</rt></ruby>を<ruby>決定<rt>けってい</rt></ruby>する」というのは、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>の<ruby>提出<rt>ていしゅつ</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>むということですか?<br>*(Xin lỗi, em muốn xác nhận một điều. "決定 受入機関" có bao gồm cả việc nộp giấy tờ chính thức không ạ?)* |
| Suzuki | はい。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>しましょう。<ruby>入管<rt>にゅうかん</rt></ruby>への<ruby>申請<rt>しんせい</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Vâng. Tuần sau cùng chuẩn bị giấy tờ cần. Nộp cho 入管 trong tháng 3.)* |
| Hoa | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>東京<rt>とうきょう</rt></ruby>フーズへのお<ruby>断<rt>ことわ</rt></ruby>りは、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>で<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Em rõ ạ. Việc từ chối Tokyo Foods, chiều nay em sẽ gọi điện liên lạc.)* |
| Suzuki | <ruby>礼儀正<rt>れいぎただ</rt></ruby>しくお<ruby>断<rt>ことわ</rt></ruby>りしてください。<ruby>業界<rt>ぎょうかい</rt></ruby>は<ruby>狭<rt>せま</rt></ruby>いですから、<ruby>後<rt>あと</rt></ruby>でまたお<ruby>会<rt>あ</rt></ruby>いするかもしれません。<br>*(Hãy từ chối lịch sự. Vì ngành hẹp, sau này có thể còn gặp lại.)* |
| Hoa | はい、<ruby>気<rt>き</rt></ruby>をつけます。<ruby>具体的<rt>ぐたいてき</rt></ruby>に、どんな<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>がいいですか?<br>*(Vâng, em sẽ cẩn thận. Cụ thể, cách nói nào tốt ạ?)* |
| Suzuki | 「<ruby>大変<rt>たいへん</rt></ruby><ruby>名誉<rt>めいよ</rt></ruby>でしたが、<ruby>現在<rt>げんざい</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る<ruby>判断<rt>はんだん</rt></ruby>をしました」と<ruby>言<rt>い</rt></ruby>えば<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Nói "Rất vinh dự, nhưng em đã quyết ở lại công ty hiện tại" là đủ.)* |
| Hoa | ありがとうございます。メモしておきます。<br>*(Em cảm ơn ạ. Em ghi lại.)* |

---

## Tình huống 6 — Phòng trưởng xưởng · 15:00, nhận lời bổ nhiệm trưởng nhóm

| Vai | Lời thoại |
|---|---|
| Hoa | (gõ cửa) タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby><ruby>少<rt>すこ</rt></ruby>しよろしいですか?<br>*(Anh Tanaka chủ xưởng, anh có chút thời gian không ạ?)* |
| Tanaka | はい、ホアさん、どうぞ。<br>*(Vâng, Hoa, mời vào.)* |
| Hoa | <ruby>受入機関<rt>うけいれきかん</rt></ruby>を<ruby>埼玉<rt>さいたま</rt></ruby>フーズに<ruby>決<rt>き</rt></ruby>めました。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きお<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Em quyết 受入機関 là Saitama Foods. Em sẽ tiếp tục được anh chỉ bảo.)* |
| Tanaka | (cười rạng rỡ) ありがとう、ホアさん。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cảm ơn em, Hoa. Thật lòng tôi mừng.)* |
| Hoa | それから、リーダー<ruby>任命<rt>にんめい</rt></ruby>のオファーも<ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けします。<br>*(Và lời mời bổ nhiệm trưởng nhóm, em xin trân trọng nhận ạ.)* |
| Tanaka | <ruby>本当<rt>ほんとう</rt></ruby>に?ありがとう。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>からSSW1<ruby>移行<rt>いこう</rt></ruby>と<ruby>同時<rt>どうじ</rt></ruby>にリーダー<ruby>就任<rt>しゅうにん</rt></ruby>です。<br>*(Thật à? Cảm ơn em. Từ 1 tháng 4 vừa chuyển SSW1 vừa nhậm chức trưởng nhóm.)* |
| Hoa | <ruby>責任<rt>せきにん</rt></ruby><ruby>重大<rt>じゅうだい</rt></ruby>ですが、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Trách nhiệm lớn, nhưng em sẽ cố gắng.)* |
| Tanaka | ホアさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。マイちゃんとチャンちゃんを<ruby>育<rt>そだ</rt></ruby>てた<ruby>実績<rt>じっせき</rt></ruby>があります。<br>*(Hoa thì ổn thôi. Em đã có thành tích dạy Mai và Trang.)* |
| Hoa | すみません、リーダーの<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>業務<rt>ぎょうむ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Xin lỗi, anh giải thích giúp em công việc cụ thể của trưởng nhóm được không ạ?)* |
| Tanaka | <ruby>毎朝<rt>まいあさ</rt></ruby>のミーティング<ruby>進行<rt>しんこう</rt></ruby>、シフト<ruby>表<rt>ひょう</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>、それから<ruby>新人<rt>しんじん</rt></ruby>の<ruby>指導員<rt>しどういん</rt></ruby>です。<ruby>詳<rt>くわ</rt></ruby>しくは<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>研修<rt>けんしゅう</rt></ruby>します。<br>*(Điều hành họp sáng, điều chỉnh bảng ca, và làm 指導員 cho người mới. Chi tiết tháng 3 sẽ tập huấn.)* |
| Hoa | (cúi đầu sâu) よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mong anh giúp đỡ ạ.)* |

---

## Tình huống 7 — Phòng staff · 17:00, Tanaka mời cơm tối tại nhà (quan sát đàn anh đối xử kouhai)

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、<ruby>今夜<rt>こんや</rt></ruby><ruby>夕食<rt>ゆうしょく</rt></ruby>、<ruby>家内<rt>かない</rt></ruby>と<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>でどうですか?<br>*(Hoa, tối nay ăn cơm 3 người với vợ tôi nhé?)* |
| Hoa | え、<ruby>本当<rt>ほんとう</rt></ruby>にいいんですか?<br>*(Ơ, thật được không ạ?)* |
| Tanaka | <ruby>家内<rt>かない</rt></ruby>もホアさんの<ruby>決断<rt>けつだん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて<ruby>祝<rt>いわ</rt></ruby>いたいと<ruby>言<rt>い</rt></ruby>っています。<br>*(Vợ tôi nghe quyết định của em rồi, bảo muốn mừng.)* |
| Hoa | ありがとうございます。<ruby>場所<rt>ばしょ</rt></ruby>はどちらですか?<br>*(Em cảm ơn ạ. Địa điểm ở đâu ạ?)* |
| Tanaka | <ruby>家<rt>うち</rt></ruby>に<ruby>来<rt>こ</rt></ruby>ない?<ruby>家内<rt>かない</rt></ruby>がベトナム<ruby>料理<rt>りょうり</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>しています。<ruby>母<rt>はは</rt></ruby><ruby>上<rt>うえ</rt></ruby>に<ruby>習<rt>なら</rt></ruby>ったフォーだそうです。<br>*(Đến nhà tôi nhé? Vợ chuẩn bị món Việt. Nghe nói là phở chị ấy học từ mẹ em.)* |
| Hoa | <ruby>母<rt>はは</rt></ruby>から<ruby>習<rt>なら</rt></ruby>ったフォー...<ruby>嬉<rt>うれ</rt></ruby>しすぎます。<br>*(Phở học từ mẹ em... em mừng quá ạ.)* |
| Tanaka | <ruby>家内<rt>かない</rt></ruby>は<ruby>料理<rt>りょうり</rt></ruby>に<ruby>真面目<rt>まじめ</rt></ruby>なんです。<ruby>失敗<rt>しっぱい</rt></ruby>したら<ruby>笑<rt>わら</rt></ruby>ってあげてください。<br>*(Vợ tôi nghiêm túc với nấu ăn lắm. Nếu thất bại em cứ cười cho cô ấy nhé.)* |
| Hoa | (cười) はい、もちろん。<ruby>何時<rt>なんじ</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>えばいいですか?<br>*(Vâng, đương nhiên. Em đến lúc mấy giờ thì hợp ạ?)* |
| Tanaka | <ruby>20<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>家<rt>うち</rt></ruby>で<ruby>待<rt>ま</rt></ruby>っています。<ruby>住所<rt>じゅうしょ</rt></ruby>は<ruby>後<rt>あと</rt></ruby>でLINEします。<br>*(20h đợi em ở nhà. Địa chỉ sẽ LINE sau.)* |

---

## Tình huống 8 — Phòng nhân viên · 19:00, gọi điện từ chối Kinoshita bằng keigo

| Vai | Lời thoại |
|---|---|
| Hoa | (cầm điện thoại, hít thở sâu, bấm số) ...<br>*(...)* |
| Kinoshita | はい、キノシタです。<br>*(Vâng, Kinoshita đây.)* |
| Hoa | <ruby>夜分<rt>やぶん</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くに<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>埼玉<rt>さいたま</rt></ruby>フーズのホアです。<br>*(Em xin lỗi vì gọi muộn ạ. Em là Hoa ở Saitama Foods.)* |
| Kinoshita | あ、ホアさん!ご<ruby>連絡<rt>れんらく</rt></ruby>ありがとうございます。<br>*(À, Hoa-san! Cảm ơn em đã liên lạc.)* |
| Hoa | キノシタさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>現在<rt>げんざい</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る<ruby>判断<rt>はんだん</rt></ruby>をいたしました。<br>*(Anh Kinoshita, em thật xin lỗi, em đã quyết định ở lại công ty hiện tại ạ.)* |
| Kinoshita | あ、そうですか...<br>*(À, vậy à...)* |
| Hoa | お<ruby>声<rt>こえ</rt></ruby>がけくださって<ruby>大変<rt>たいへん</rt></ruby><ruby>名誉<rt>めいよ</rt></ruby>でした。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh đã ngỏ lời, em vô cùng vinh dự. Em thật sự cảm ơn ạ.)* |
| Kinoshita | <ruby>残念<rt>ざんねん</rt></ruby>ですが、<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>します。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか?<br>*(Tiếc, nhưng tôi cảm ơn quyết định thẳng thắn. Hỏi lý do được không?)* |
| Hoa | はい。<ruby>現在<rt>げんざい</rt></ruby>の<ruby>職場<rt>しょくば</rt></ruby>でリーダー<ruby>任命<rt>にんめい</rt></ruby>のオファーをいただき、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>同僚<rt>どうりょう</rt></ruby>との<ruby>絆<rt>きずな</rt></ruby>も<ruby>大切<rt>たいせつ</rt></ruby>にしたいと<ruby>考<rt>かんが</rt></ruby>えました。<br>*(Vâng. Em được mời bổ nhiệm trưởng nhóm tại nơi làm hiện tại, và em muốn trân trọng tình đồng nghiệp 3 năm qua.)* |
| Kinoshita | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>理由<rt>りゆう</rt></ruby>です。<ruby>業界<rt>ぎょうかい</rt></ruby>は<ruby>狭<rt>せま</rt></ruby>いですから、またどこかでお<ruby>会<rt>あ</rt></ruby>いしましょう。<br>*(Lý do tuyệt vời. Vì ngành hẹp, hẹn gặp lại đâu đó.)* |
| Hoa | はい。<ruby>名刺<rt>めいし</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>させていただきます。お<ruby>元気<rt>げんき</rt></ruby>で。<br>*(Vâng. Em sẽ giữ kỹ danh thiếp ạ. Anh giữ sức khoẻ.)* |
| Kinoshita | お<ruby>元気<rt>げんき</rt></ruby>で。<br>*(Em khoẻ nhé.)* |

---

## Tình huống 9 — Nhà Tanaka · 20:00, bữa tối phở Việt và lời chào "gia đình"

| Vai | Lời thoại |
|---|---|
| Vợ Tanaka | (mở cửa) ホアさん、ようこそ!<br>*(Hoa-san, hoan nghênh!)* |
| Hoa | (cúi đầu) お<ruby>邪魔<rt>じゃま</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>招<rt>まね</rt></ruby>きいただきありがとうございます。<br>*(Em xin phép vào ạ. Hôm nay cảm ơn anh chị đã mời ạ.)* |
| Vợ Tanaka | フォーを<ruby>作<rt>つく</rt></ruby>りましたよ。お<ruby>母<rt>かあ</rt></ruby>さんに<ruby>来日中<rt>らいにちちゅう</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(Tôi làm phở rồi. Lúc mẹ em sang chơi đã dạy tôi.)* |
| Hoa | え!<ruby>本当<rt>ほんとう</rt></ruby>のフォーですね。いい<ruby>香<rt>かお</rt></ruby>り...<br>*(Ơ! Phở thật ạ. Thơm quá...)* |
| Tanaka | ホアさん、まず<ruby>食<rt>た</rt></ruby>べてみて。<ruby>家内<rt>かない</rt></ruby>が<ruby>1<rt>いち</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>していたんです。<br>*(Hoa, ăn thử trước đi. Vợ tôi đã luyện cả tuần đấy.)* |
| Hoa | (nếm thử) ...<ruby>本当<rt>ほんとう</rt></ruby>においしい!<ruby>母<rt>はは</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>です。<br>*(... thật sự ngon ạ! Vị của mẹ em.)* |
| Vợ Tanaka | よかった!<ruby>合格<rt>ごうかく</rt></ruby>ですね。<br>*(Tốt quá! Đậu rồi nhé.)* |
| Tanaka | ホアさん、<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>に<ruby>家族<rt>かぞく</rt></ruby>として<ruby>歓迎<rt>かんげい</rt></ruby>します。<ruby>困<rt>こま</rt></ruby>ったことがあれば、いつでも<ruby>家<rt>うち</rt></ruby>に<ruby>来<rt>き</rt></ruby>てください。<br>*(Hoa, từ hôm nay chính thức hoan nghênh em như gia đình. Có gì khó khăn cứ đến nhà tôi bất cứ lúc nào.)* |
| Hoa | (nước mắt rơi) はい...ありがとうございます。<br>*(Vâng... em cảm ơn ạ.)* |
| Vợ Tanaka | (cười) <ruby>泣<rt>な</rt></ruby>かないで!フォーが<ruby>冷<rt>さ</rt></ruby>めちゃうよ!<br>*(Đừng khóc! Phở nguội mất!)* |
| Hoa | (vừa cười vừa lau nước mắt) はい、いただきます。<br>*(Vâng, em ăn ạ.)* |

---

## Tình huống 10 — Phòng staff · 22:00, báo tin chính thức cho Mai và Trang

| Vai | Lời thoại |
|---|---|
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>!お<ruby>帰<rt>かえ</rt></ruby>りなさい。どうでしたか?<br>*(Chị! Chị về rồi. Thế nào ạ?)* |
| Hoa | スズキ<ruby>主任<rt>しゅにん</rt></ruby>にもタナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>にも<ruby>正式<rt>せいしき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しました。<ruby>埼玉<rt>さいたま</rt></ruby>フーズに<ruby>残<rt>のこ</rt></ruby>ります。<br>*(Chị đã báo cáo chính thức với cả anh Suzuki lẫn anh Tanaka. Chị ở lại Saitama Foods.)* |
| Mai | (khóc oà) よかった〜!<br>*(Mừng quá ~!)* |
| Trang | (lau nước mắt) <ruby>本当<rt>ほんとう</rt></ruby>によかったです。<br>*(Thật mừng ạ.)* |
| Hoa | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも、<ruby>泣<rt>な</rt></ruby>かないで。それから、もう<ruby>1<rt>ひと</rt></ruby>つお<ruby>知<rt>し</rt></ruby>らせがあります。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からマイちゃんとチャンちゃんの<ruby>正式<rt>せいしき</rt></ruby><ruby>指導員<rt>しどういん</rt></ruby>になります。<br>*(Hai em, đừng khóc. Còn nữa, chị có một tin nữa. Từ tháng 4 chị sẽ là 指導員 chính thức của Mai và Trang.)* |
| Mai | え、リーダー<ruby>任命<rt>にんめい</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたんですか?<br>*(Ơ, chị nhận lời bổ nhiệm trưởng nhóm ạ?)* |
| Hoa | はい。<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>のためにも<ruby>残<rt>のこ</rt></ruby>ったんです。<br>*(Vâng. Chị ở lại cũng vì hai em.)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>...<ruby>抱<rt>だ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>ってもいいですか?<br>*(Chị... ôm nhau được không ạ?)* |
| Hoa | (cười) もちろん。<br>*(Đương nhiên.)* |
| 3 người | (ôm nhau giữa phòng staff, ai nấy đều khóc cười)<br>*(im lặng ôm nhau)* |
| Hoa | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からは<ruby>本当<rt>ほんとう</rt></ruby>のチームです。<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ tháng 4 sẽ là một đội thực sự. Hai em, từ giờ trở đi mong các em giúp đỡ.)* |

---

## Tình huống 11 — Phòng ký túc · 23:00, gọi điện báo em gái (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — gọi điện báo em gái ở Việt Nam, ôn lại từ JP đã học trong chương.

| Vai | Lời thoại |
|---|---|
| Linh | (VN, video call) Chị! Mặt sao tươi thế? Hôm qua còn mệt mỏi cơ mà. |
| Hoa | (VN) Chị quyết rồi em. 受入機関 chị chọn là Saitama Foods. Hôm nay chị báo anh Suzuki, anh Tanaka, rồi gọi điện từ chối anh Kinoshita ở Tokyo luôn. |
| Linh | (VN) Em biết chị sẽ chọn vậy mà. Vụ "リーダー任命" sao rồi? |
| Hoa | (VN) Chị nhận rồi. Tháng 4 vừa lên SSW1 vừa nhậm chức trưởng nhóm — anh Tanaka gọi là "就任" ấy. Lương 220.000 yên cộng thưởng hai lần. Mai và Trang chị sẽ là 指導員 chính thức của hai đứa. |
| Linh | (VN) Oa, sang trang luôn. Còn từ chối anh Kinoshita có khó không? |
| Hoa | (VN) Anh Suzuki dạy chị câu "大変名誉でした" và "申し訳ございません" — kiểu xin lỗi rất lịch sự ấy. Bảo "業界狭い", sau này có thể gặp lại nên đừng cắt cầu. |
| Linh | (VN) Đỉnh thật. Tiếng Nhật chị bây giờ keigo hẳn hoi. |
| Hoa | (VN) Phải học chứ em. Trưởng nhóm rồi thì hằng sáng phải chạy ミーティング, điều chỉnh シフト表, dạy 新人. Mệt nhưng mà vui. |
| Linh | (VN) Sang năm em với chồng và cháu Bo sang thăm chị. Đi ăn phở nhà anh Tanaka luôn. |
| Hoa | (VN) Vợ anh Tanaka làm phở ngon thật đấy. Mẹ dạy hồi sang chơi ấy. |
| Linh | (VN) Chị ơi, vậy chị ngủ sớm đi. Mai còn đi làm. |
| Hoa | (VN) Ừ. Saitama là nhà rồi em. Ngủ ngon nhé. |

---

## Đọng lại chương 11

Hoa đi qua một ngày dài chính thức hoá quyết định lớn của 3 năm đầu ở Nhật. Em học được các mẫu câu nghề nghiệp quan trọng: **xin tư vấn 先輩** (ご相談があります・ご意見を伺いたい), **nhận lời bổ nhiệm** (リーダー任命を謹んでお受けします・就任いたします), **báo cáo 受入機関 cho 主任** (受入機関を決定いたしました), **xác nhận lại keigo trước khi hành động** (〜というのは〜ということですか?), **từ chối offer lịch sự** (申し訳ございませんが・大変名誉でした・業界は狭いですから), và **báo tin cho kouhai** (4月から正式指導員になります). Đồng thời em quan sát 先輩 Satou kể chuyện 15 năm trước từ chối offer cao hơn vì **恩** và **家族同様の雰囲気** — bài học rằng tiền và nghề không phải mọi thứ. Vợ anh Tanaka nấu phở từ công thức mẹ em dạy — một phép ẩn dụ rằng **gia đình thứ hai** ở Nhật là thật, và Saitama đã chính thức là nhà.

> Từ vựng & mẫu câu chương này: 受入機関・任命・就任・指導員・転職・移行・SSW1・リーダー役・シフト表・名刺・業界が狭い・名誉・申し訳ございません・礼儀正しく・恩・家族同様・嬉し泣き・謹んでお受けします・ご意見を伺いたい・〜ということですか・大変名誉でした・引き続きお世話になります

## Bí quyết chương

- **5 người tư vấn**: Satou (sempai cũ, kể chuyện từ chối offer), Mai (kouhai emotional), Trang (kouhai neutral), Suzuki (主任 dạy keigo từ chối), Kinoshita (offer-giver). Mỗi người dạy một mẫu câu khác nhau.
- **Hoa quyết bằng cảm xúc + lý trí + keigo**: Quyết trong lòng từ trước, nhưng dùng cả chương để học cách *truyền đạt* quyết định bằng tiếng Nhật chuẩn mực.
- **Từ chối Kinoshita lịch sự**: "大変名誉でした" + "業界は狭いですから" — etiquette business JP.
- **Vợ Tanaka học phở từ mẹ Hoa**: Callback T10 + biểu tượng gia đình hoà hợp.
- **3 người ôm nhau**: Hoa-Mai-Trang tam giác sempai-kouhai khép lại 3 năm đầu.

> *"Saitama là nhà. Stay."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 完全 | かんぜん | HOÀN TOÀN | hoàn toàn |
| 結論 | けつろん | KẾT LUẬN | kết luận |
| 予定 | よてい | DỰ ĐỊNH | dự kiến |
| 妹 | いもうと | MUỘI | em gái |
| 通話 | つうわ | THÔNG THOẠI | gọi điện |
| 社内 | しゃない | XÃ NỘI | trong công ty |
| 噂 | うわさ | TRUYỀN | tin đồn |
| 恥 | はずか | SỈ | xấu hổ |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | đương nhiên |
| 悩 | なや | NÃO | trăn trở |
| 意見 | いけん | Ý KIẾN | ý kiến |
| 伺 | うかが | TỨ | xin nghe |
| 勧 | すす | KHUYẾN | khuyên |
| 人生 | じんせい | NHÂN SINH | cuộc đời |
| 自身 | じしん | TỰ THÂN | bản thân |
| 理由 | りゆう | LÝ DO | lý do |
| 同様 | どうよう | ĐỒNG DẠNG | tương tự |
| 雰囲気 | ふんいき | PHÂN VI KHÍ | bầu không khí |
| 正直 | しょうじき | CHÍNH TRỰC | thẳng thắn |
| 差 | さ | SAI | chênh lệch |
| 本音 | ほんね | BẢN ÂM | lòng thật |
| 縛 | しば | PHƯỢC | trói buộc |
| 材料 | ざいりょう | TÀI LIỆU | chất liệu |
| 正式 | せいしき | CHÍNH THỨC | chính thức |
| 含 | ふく | HÀM | bao gồm |
| 礼儀正 | れいぎただ | LỄ NGHI CHÍNH | lễ phép |
| 名誉 | めいよ | DANH DỰ | vinh dự |
| 引 | ひ | DẪN | dắt, tiếp |
| 続 | つづ | TỤC | tiếp tục |
| 謹 | つつし | CẨN | cẩn trọng, trân trọng |
| 受 | う | THỤ | nhận |
| 就任 | しゅうにん | TỰU NHIỆM | nhậm chức |
| 重大 | じゅうだい | TRỌNG ĐẠI | nặng nề |
| 業務 | ぎょうむ | NGHIỆP VỤ | công việc |
| 進行 | しんこう | TIẾN HÀNH | tiến hành |
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | huấn luyện viên |
| 家内 | かない | GIA NỘI | vợ |
| 祝 | いわ | CHÚC | mừng |
| 練習 | れんしゅう | LUYỆN TẬP | luyện tập |
| 夜分 | やぶん | DẠ PHẦN | đêm khuya |
| 申訳 | もうしわけ | THÂN DỊCH | xin lỗi |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 絆 | きずな | BẠN | tình thân |
| 保管 | ほかん | BẢO QUẢN | bảo quản |
| 邪魔 | じゃま | TÀ MA | làm phiền |
| 招 | まね | CHIÊU | mời |
| 香 | かお | HƯƠNG | mùi thơm |
| 味 | あじ | VỊ | vị |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (813000012, 800000013, NULL, 'markdown_book', 'T12. Bonenkai cuối và chuyển sang SSW1 (TTS終了・SSW1開始)', '# Sách thực tập sinh thực phẩm · T12. Bonenkai cuối và chuyển sang SSW1 (TTS終了・SSW1開始)

> **Mục tiêu nhân vật:** Hoa (24 tuổi, Hà Nội) khép lại 3 năm TTS và bước sang SSW1 tại nhà máy thực phẩm Saitama. Học các mẫu hội thoại tổng kết 3 năm: phát biểu cảm ơn trong bonenkai (お礼の挨拶), giới thiệu khách đặc biệt với cấp trên (紹介する), 乾杯の音頭 (đề xướng nâng cốc), nhận quà từ cấp trên và đáp lễ (頂戴いたします), phiên dịch hai chiều Nhật–Việt cho người thân, và mẫu câu nhậm chức trưởng nhóm trước朝礼 (リーダーとして〜).

---

## Bối cảnh

Ngày 30 tháng 3 năm 2029, izakaya gần ga Omiya, Saitama. Hoa kết thúc 3 năm hợp đồng TTS tại nhà máy thực phẩm và 1/4 chính thức chuyển sang SSW1 kiêm trưởng nhóm phòng sản xuất. Trình độ tiếng Nhật N3 (đang ôn N2). Chương cuối cùng của bộ Hoa tập trung các mẫu câu giao tiếp trong tiệc tổng kết: chào hỏi khách đặc biệt, nâng cốc trang trọng, phát biểu cảm ơn theo cấu trúc Nhật, nhận quà có đáp lễ, dịch hai chiều cho gia đình từ VN sang gặp đồng nghiệp Nhật, và câu chào nhậm chức sáng đầu tiên ở vị trí mới.

---

## Tình huống 1 — Phòng riêng ký túc · 6:30, độc thoại đối chiếu đồng phục cũ-mới

| Vai | Lời thoại |
|---|---|
| Hoa | (nhìn hai bộ đồng phục treo song song) <ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>、TTS<ruby>最後<rt>さいご</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>です。<br>*(Ngày 30/3/2029, sáng cuối cùng của TTS.)* |
| Hoa | この<ruby>緑<rt>みどり</rt></ruby>のバッジの<ruby>制服<rt>せいふく</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>着<rt>き</rt></ruby>てきました。<br>*(Bộ đồng phục badge xanh lá này em đã mặc mỗi ngày suốt 3 năm.)* |
| Hoa | (đặt tay lên đồng phục mới) <ruby>明日<rt>あした</rt></ruby>から<ruby>着<rt>き</rt></ruby>るSSW1の<ruby>制服<rt>せいふく</rt></ruby>はバッジが<ruby>青<rt>あお</rt></ruby>に<ruby>変<rt>か</rt></ruby>わります。<br>*(Bộ SSW1 em mặc từ mai, badge đổi sang xanh dương.)* |
| Hoa | <ruby>形<rt>かたち</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じですが、<ruby>意味<rt>いみ</rt></ruby>は<ruby>全<rt>まった</rt></ruby>く<ruby>違<rt>ちが</rt></ruby>います。<br>*(Hình dáng giống nhau, nhưng ý nghĩa hoàn toàn khác.)* |
| Hoa | (VN, tự nhủ) Hôm nay phải nói thật rõ ràng, không khóc giữa bài phát biểu. |

---

## Tình huống 2 — Phòng staff · 7:00, chào sáng và nhắc lại vòng tròn đàn anh-đàn em (quan sát kohai)

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます！<ruby>本日<rt>ほんじつ</rt></ruby>はTTS<ruby>最後<rt>さいご</rt></ruby>の<ruby>勤務日<rt>きんむび</rt></ruby>ですね。<br>*(Hoa sempai, chào buổi sáng! Hôm nay là ngày làm cuối cùng của TTS phải không ạ.)* |
| Hoa | おはよう、マイちゃん、チャンちゃん。そうだね、<ruby>感慨深<rt>かんがいぶか</rt></ruby>い<ruby>一日<rt>いちにち</rt></ruby>になりそう。<br>*(Chào Mai, Trang. Đúng vậy, có vẻ sẽ là một ngày đầy cảm xúc.)* |
| Trang | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>マイ<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>来<rt>き</rt></ruby>た<ruby>日<rt>ひ</rt></ruby>のことを<ruby>覚<rt>おぼ</rt></ruby>えていますか？<br>*(Sempai, chị có nhớ ngày Mai sempai sang 2 năm trước không?)* |
| Hoa | もちろん。<ruby>私<rt>わたし</rt></ruby>がバッジを<ruby>持<rt>も</rt></ruby>って<ruby>成田<rt>なりた</rt></ruby><ruby>空港<rt>くうこう</rt></ruby>まで<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>ったよね。<br>*(Đương nhiên. Chị cầm bảng đến tận sân bay Narita đón em mà.)* |
| Mai | <ruby>去年<rt>きょねん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がチャンを<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>きました。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>来<rt>く</rt></ruby>るでしょうか？<br>*(Năm ngoái em đi đón Trang. Sang năm ai sẽ đến nhỉ?)* |
| Hoa | <ruby>新<rt>あたら</rt></ruby>しいベトナム<ruby>人<rt>じん</rt></ruby><ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来<rt>き</rt></ruby>たら、<ruby>今度<rt>こんど</rt></ruby>はチャンちゃんが<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>ってあげてね。<br>*(Nếu có kohai người Việt mới đến, lần này Trang đi đón giúp nhé.)* |
| Trang | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>きます。<ruby>先輩<rt>せんぱい</rt></ruby>たちのやり<ruby>方<rt>かた</rt></ruby>を<ruby>真似<rt>まね</rt></ruby>します。<br>*(Vâng, em nhất định sẽ đi. Em sẽ học theo cách của các đàn chị.)* |
| Hoa | これが「<ruby>循環<rt>じゅんかん</rt></ruby>」というものだね。<ruby>先輩<rt>せんぱい</rt></ruby>から<ruby>受<rt>う</rt></ruby>けたものを<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>す。<br>*(Đây chính là "vòng tuần hoàn" đấy. Nhận từ đàn anh thì trao lại cho đàn em.)* |

---

## Tình huống 3 — Trước ga Omiya · 11:00, đón gia đình em gái từ Việt Nam (cảnh song ngữ)

| Vai | Lời thoại |
|---|---|
| Linh | (VN, vẫy tay) Chị Hoa! Bọn em đây! |
| Hoa | (VN, chạy lại) Linh! Tuấn! Bo! Một năm rồi mới gặp! |
| Tuấn | (VN, cúi đầu) Chị Hoa, lần đầu được gặp chị, em là Tuấn ạ. |
| Hoa | (VN) Em rể, đừng khách sáo. Đi đường có mệt không? |
| Bo | (con 2 tuổi) ぱぱー！<br>*(Pa pa!)* |
| Hoa | (VN, bế Bo lên) Ơ, cháu nói được tiếng Nhật rồi cơ à? |
| Linh | (VN) Mẹ con dạy "ba ba" mà cháu cứ "pa pa". Nghe Nhật quá. |
| Hoa | (VN với Bo) Bo, gọi dì là <ruby>ホア<rt>ほあ</rt></ruby>おばちゃん nhé. Tối nay Bo gặp ông おじちゃん Tanaka cũng phải chào nha. |
| Bo | (lè lưỡi) おばー！<br>*(Bà ơi!)* |
| Tuấn | (VN, cười) Cháu nó học nhanh nhỉ. |
| Hoa | (VN) Tối nay bonenkai cuối năm. Em chuẩn bị tinh thần nhé, người Nhật uống là phải dô đủ vòng. |
| Linh | (VN) Em có quà bí mật cho chị, lát chị mới được mở. |

---

## Tình huống 4 — Ga Omiya · 13:00, gặp lại đồng kỳ Andi từ Nagoya

| Vai | Lời thoại |
|---|---|
| Andi | (vẫy tay từ cửa soát vé) ホアちゃーん！<br>*(Hoa ơi!)* |
| Hoa | アンディ！<ruby>名古屋<rt>なごや</rt></ruby>から<ruby>新幹線<rt>しんかんせん</rt></ruby>でどのくらいかかった？<br>*(Andi! Từ Nagoya đi shinkansen mất bao lâu?)* |
| Andi | <ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>半<rt>はん</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来日<rt>らいにち</rt></ruby>した<ruby>同期<rt>どうき</rt></ruby>のホアちゃんが<ruby>呼<rt>よ</rt></ruby>んでくれたから、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>来<rt>く</rt></ruby>るって<ruby>決<rt>き</rt></ruby>めてた。<br>*(1 tiếng rưỡi. Hoa-chan là 同期 cùng máy bay sang Nhật 3 năm trước mời, nên tôi đã quyết chắc chắn đến.)* |
| Hoa | こちら<ruby>姉<rt>あね</rt></ruby>のリンと、ご<ruby>主人<rt>しゅじん</rt></ruby>のトゥアン、<ruby>息子<rt>むすこ</rt></ruby>のボーくんです。<br>*(Đây là chị gái Linh, anh rể Tuấn và cháu Bo.)* |
| Andi | はじめまして、アンディと<ruby>申<rt>もう</rt></ruby>します。インドネシアから<ruby>来<rt>き</rt></ruby>て、<ruby>名古屋<rt>なごや</rt></ruby>の<ruby>自動車部品<rt>じどうしゃぶひん</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<br>*(Rất hân hạnh, em tên là Andi. Em từ Indonesia sang, làm ở nhà máy linh kiện ô tô tại Nagoya.)* |
| Linh | (VN, chậm) Andi, chị có nghe em kể nhiều! |
| Hoa | (dịch sang JP) <ruby>姉<rt>あね</rt></ruby>がアンディの<ruby>話<rt>はなし</rt></ruby>をよく<ruby>聞<rt>き</rt></ruby>いていたって。<br>*(Chị em bảo nghe em kể chuyện Andi nhiều lắm.)* |
| Andi | (cười) <ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>俺<rt>おれ</rt></ruby>も<ruby>来月<rt>らいげつ</rt></ruby>SSW1に<ruby>移行<rt>いこう</rt></ruby>するから、ホアちゃんと<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>だね。<br>*(Vui quá. Tháng sau em cũng chuyển SSW1, nên cùng đường với Hoa-chan.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>飛行機<rt>ひこうき</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ご</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>。<ruby>偶然<rt>ぐうぜん</rt></ruby>じゃないと<ruby>思<rt>おも</rt></ruby>う。<br>*(3 năm trước cùng máy bay, 3 năm sau cùng tư cách lưu trú. Mình nghĩ không phải tình cờ đâu.)* |

---

## Tình huống 5 — Trên đường đến izakaya · 17:30, giới thiệu địa điểm truyền thống

| Vai | Lời thoại |
|---|---|
| Hoa | (chỉ biển hiệu) ここが<ruby>毎年<rt>まいとし</rt></ruby><ruby>年末年始会<rt>ねんまつねんしかい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>く<ruby>居酒屋<rt>いざかや</rt></ruby>「<ruby>大宮<rt>おおみや</rt></ruby><ruby>亭<rt>てい</rt></ruby>」です。<br>*(Đây là izakaya "Omiya-tei", nơi tổ chức tiệc cuối năm hằng năm.)* |
| Linh | (VN) Chỗ này em nghe chị kể nhiều quá! Bonenkai năm nhất, năm hai, giờ là năm ba. |
| Hoa | (VN) Đúng rồi. Năm 1 lúc em sang, năm 2 lúc Mai sang, năm 3 hôm nay cả nhà em sang. Vòng tròn lớn. |
| Andi | <ruby>3<rt>さん</rt></ruby><ruby>年連続<rt>ねんれんぞく</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>店<rt>みせ</rt></ruby>って、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>伝統<rt>でんとう</rt></ruby>だね。<br>*(3 năm liên tiếp cùng một quán, đúng là truyền thống công ty rồi.)* |
| Hoa | タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>の<ruby>馴染<rt>なじ</rt></ruby>みの<ruby>店<rt>みせ</rt></ruby>で、<ruby>大将<rt>たいしょう</rt></ruby>も<ruby>私<rt>わたし</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてくれています。<br>*(Quán quen của Tanaka, ông chủ quán cũng đã nhớ mặt em.)* |
| Tuấn | (VN, nhỏ) Em vào không biết uống gì, chị gọi giùm em. |
| Hoa | (VN) Em uống ô long trà cho tỉnh, tối nay còn dắt Bo đi vệ sinh đấy. |

---

## Tình huống 6 — Bàn izakaya · 18:00, Hoa giới thiệu khách đặc biệt với cấp trên

| Vai | Lời thoại |
|---|---|
| Tanaka | みんな、お<ruby>疲<rt>つか</rt></ruby>れさまでした！<ruby>本日<rt>ほんじつ</rt></ruby>のスペシャルゲスト、ホアさんが<ruby>紹介<rt>しょうかい</rt></ruby>してください。<br>*(Mọi người vất vả rồi! Khách đặc biệt hôm nay, để Hoa giới thiệu nhé.)* |
| Hoa | (đứng dậy, cúi nhẹ) はい、ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。<ruby>姉<rt>あね</rt></ruby>のリン、その<ruby>夫<rt>おっと</rt></ruby>のトゥアン、<ruby>息子<rt>むすこ</rt></ruby>のボー、そして<ruby>名古屋<rt>なごや</rt></ruby>から<ruby>来<rt>き</rt></ruby>てくれた<ruby>同期<rt>どうき</rt></ruby>のアンディです。<br>*(Vâng, em xin phép giới thiệu. Chị gái Linh, chồng chị là Tuấn, cháu Bo, và bạn 同期 Andi từ Nagoya đến.)* |
| Linh | (VN, cúi đầu) <ruby>始<rt>はじ</rt></ruby>めまして、リンです。 (đoạn JP đã thuộc) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>妹<rt>いもうと</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Rất hân hạnh, em là Linh. Cảm ơn các anh chị đã chăm sóc em gái em suốt 3 năm.)* |
| Tanaka | こちらこそ、リンさん、ようこそ<ruby>埼玉<rt>さいたま</rt></ruby>へ。ホアさんは<ruby>娘<rt>むすめ</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>です。<br>*(Tôi cũng vậy, Linh-san, chào mừng đến Saitama. Với chúng tôi Hoa-san như con gái.)* |
| Vợ Tanaka | リンさん、ホアさんのお<ruby>母<rt>かあ</rt></ruby>さんが<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、フォーの<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてくれましたよ。<br>*(Linh-san, lúc mẹ Hoa sang chơi đã dạy chị cách nấu phở đấy.)* |
| Linh | (VN, xúc động) Chị ơi! Mẹ em kể nhiều về chị, em cảm ơn chị nhiều! |
| Hoa | (dịch) <ruby>母<rt>はは</rt></ruby>から<ruby>奥様<rt>おくさま</rt></ruby>のことをよく<ruby>聞<rt>き</rt></ruby>いていて、<ruby>感謝<rt>かんしゃ</rt></ruby>しているそうです。<br>*(Chị em bảo nghe mẹ em kể về vợ ông nhiều, rất biết ơn.)* |
| Bo | (chạy quanh bàn) おじちゃん！<br>*(Ông bác!)* |
| Tanaka | (cười, bế Bo) おお、ボーくん、おじちゃんですよ。<br>*(Ô, Bo-kun, ông bác đây!)* |

---

## Tình huống 7 — Bàn chính · 18:15, Tanaka đề xướng nâng cốc với 3 ý nghĩa

| Vai | Lời thoại |
|---|---|
| Tanaka | (đứng dậy, cầm cốc) では、<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vậy xin phép tôi đề xướng nâng cốc.)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会<rt>かい</rt></ruby>には<ruby>3<rt>みっ</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>があります。<br>*(Buổi hôm nay có 3 ý nghĩa.)* |
| Tanaka | <ruby>一<rt>ひと</rt></ruby>つ、<ruby>年度末<rt>ねんどまつ</rt></ruby>の<ruby>慰労会<rt>いろうかい</rt></ruby>として。<ruby>二<rt>ふた</rt></ruby>つ、ホアさんのTTS<ruby>契約満了<rt>けいやくまんりょう</rt></ruby>とSSW1<ruby>移行<rt>いこう</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>う<ruby>会<rt>かい</rt></ruby>として。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>製造部<rt>せいぞうぶ</rt></ruby><ruby>新<rt>あたら</rt></ruby>しいリーダー<ruby>就任<rt>しゅうにん</rt></ruby><ruby>祝賀会<rt>しゅくがかい</rt></ruby>として。<br>*(Một, tiệc úy lạo cuối năm tài khoá. Hai, mừng Hoa kết thúc hợp đồng TTS và chuyển sang SSW1. Ba, tiệc nhậm chức trưởng nhóm mới của phòng sản xuất.)* |
| Cả bàn | (vỗ tay lớn) |
| Tanaka | グラスをお<ruby>持<rt>も</rt></ruby>ちください...<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Mời mọi người cầm cốc... 乾杯!)* |
| Cả bàn | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Linh | (VN, đập cốc với Tuấn) Cạn! |
| Bo | (bắt chước) ぱい！<br>*(Pai!)* |

---

## Tình huống 8 — Bàn chính · 19:00, Hoa phát biểu cảm ơn 3 năm (mẫu phát biểu tổng kết)

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hoa-san, xin một lời phát biểu.)* |
| Hoa | (đứng dậy, đặt cốc xuống) はい、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Vâng, xin phép được dành chút thời gian.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>21<rt>にじゅういち</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>はN5に<ruby>受<rt>う</rt></ruby>かったばかりで、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>もゼロ、<ruby>不安<rt>ふあん</rt></ruby>でいっぱいでした。<br>*(3 năm trước, em 21 tuổi, vừa đỗ N5, không kinh nghiệm làm việc, đầy lo lắng.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ご</rt></ruby>の<ruby>今<rt>いま</rt></ruby>、<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>、<ruby>HACCP<rt>ハサップ</rt></ruby><ruby>研修修了<rt>けんしゅうしゅうりょう</rt></ruby>、<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、N3<ruby>合格<rt>ごうかく</rt></ruby>。これは<ruby>皆様<rt>みなさま</rt></ruby>のおかげです。<br>*(3 năm sau, em có Sekininsha vệ sinh thực phẩm, hoàn thành HACCP, 技能検定 cấp 3, đỗ N3. Tất cả nhờ mọi người.)* |
| Hoa | タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>には<ruby>父親<rt>ちちおや</rt></ruby>のように<ruby>支<rt>ささ</rt></ruby>えていただきました。コンドウ<ruby>先生<rt>せんせい</rt></ruby>には<ruby>専門技術<rt>せんもんぎじゅつ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Trưởng nhà máy Tanaka đỡ đầu em như cha. Thầy Kondo dạy em kỹ thuật chuyên môn.)* |
| Hoa | サトウ<ruby>先輩<rt>せんぱい</rt></ruby>には<ruby>姉<rt>あね</rt></ruby>のように<ruby>相談<rt>そうだん</rt></ruby>に<ruby>乗<rt>の</rt></ruby>っていただきました。スズキ<ruby>主任<rt>しゅにん</rt></ruby>には<ruby>道<rt>みち</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>していただきました。<br>*(Chị Satou tư vấn em như chị gái. Chủ nhiệm Suzuki đã chỉ đường cho em.)* |
| Hoa | マイちゃん、チャンちゃんは<ruby>妹<rt>いもうと</rt></ruby>のような<ruby>後輩<rt>こうはい</rt></ruby>です。これからもしっかり<ruby>守<rt>まも</rt></ruby>ります。<br>*(Mai và Trang là kohai như em gái em. Từ giờ em sẽ bảo vệ các em.)* |
| Hoa | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>からSSW1とリーダーに<ruby>就任<rt>しゅうにん</rt></ruby>いたします。<ruby>責任<rt>せきにん</rt></ruby>は<ruby>重<rt>おも</rt></ruby>いですが、<ruby>怖<rt>こわ</rt></ruby>くありません。<ruby>皆様<rt>みなさま</rt></ruby>が<ruby>支<rt>ささ</rt></ruby>えてくださるからです。<br>*(Từ 1/4 em nhậm SSW1 và làm trưởng nhóm. Trách nhiệm nặng nhưng em không sợ. Vì mọi người sẽ ủng hộ em.)* |
| Hoa | (cúi đầu sâu, giữ 3 giây) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(3 năm, thật sự cảm ơn ạ. Từ giờ cũng mong được chỉ bảo tiếp.)* |
| Cả bàn | (vỗ tay rất to, kéo dài) |
| Linh | (VN, mắt đỏ) Chị Hoa giỏi quá rồi. |

---

## Tình huống 9 — Bàn chính · 19:30, nhận cuốn sổ tay 指導員 thứ 3 từ Tanaka (mẫu nhận quà trang trọng)

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、<ruby>会社<rt>かいしゃ</rt></ruby>からお<ruby>渡<rt>わた</rt></ruby>ししたいものがあります。<br>*(Hoa-san, công ty có thứ muốn trao cho em.)* |
| Hoa | はい、<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Vâng, là gì thế ạ?)* |
| Tanaka | (đưa hộp bằng hai tay) <ruby>指導員手帳<rt>しどういんてちょう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>です。<br>*(Sổ tay 指導員, cuốn thứ 3.)* |
| Hoa | (đỡ bằng hai tay, cúi đầu) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Em xin nhận ạ.)* |
| Tanaka | <ruby>1<rt>いっ</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>はTTS<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に、<ruby>2<rt>に</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>はマイさんを<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れた<ruby>時<rt>とき</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>しました。<br>*(Cuốn 1 trao lúc em vào TTS năm đầu, cuốn 2 lúc nhận Mai.)* |
| Tanaka | <ruby>3<rt>さん</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>はSSW1<ruby>移行<rt>いこう</rt></ruby>と<ruby>正式<rt>せいしき</rt></ruby><ruby>指導員<rt>しどういん</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby>の<ruby>記念<rt>きねん</rt></ruby>です。マイさん、チャンさん、そして<ruby>来年<rt>らいねん</rt></ruby><ruby>来<rt>く</rt></ruby>る<ruby>新人<rt>しんじん</rt></ruby>を<ruby>託<rt>たく</rt></ruby>します。<br>*(Cuốn 3 là kỷ niệm chuyển SSW1 và chính thức nhậm 指導員. Tôi giao em Mai, Trang, và người mới sang năm.)* |
| Hoa | (mở bìa, thấy chữ viết tay) <ruby>工場長<rt>こうじょうちょう</rt></ruby>のメッセージ...<br>*(Tin nhắn của trưởng nhà máy ạ...)* |
| Tanaka | あとでゆっくり<ruby>読<rt>よ</rt></ruby>んでください。<ruby>必<rt>かなら</rt></ruby>ず<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>ててほしいです。<br>*(Đọc từ từ sau nhé. Mong em chăm sóc các em ấy thật cẩn thận.)* |
| Hoa | <ruby>必<rt>かなら</rt></ruby>ず<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てます。<ruby>頂<rt>いただ</rt></ruby>いた<ruby>3<rt>さん</rt></ruby><ruby>冊<rt>さつ</rt></ruby>の<ruby>手帳<rt>てちょう</rt></ruby>、<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Em sẽ nhất định chăm sóc cẩn thận. 3 cuốn sổ được nhận, em sẽ giữ gìn cả đời.)* |

---

## Tình huống 10 — Bàn phụ · 20:00, em gái mở video call cho bố mẹ ở Việt Nam (cảnh song ngữ)

| Vai | Lời thoại |
|---|---|
| Linh | (VN) Chị ơi, bất ngờ của em đây này. |
| Hoa | (VN) Gì thế? |
| Linh | (mở video call, màn hình hiện bố mẹ ở quê) Mẹ, bố! Chị Hoa đây! |
| Mẹ Hoa | (VN, qua màn hình) Hoa ơi, mẹ thấy con rồi! |
| Bố Hoa | (VN) Hoa! Bố tự hào về con lắm! 3 năm con không về, mà bố mẹ nghe các bác Tanaka khen liên tục. |
| Hoa | (VN, khóc) Bố! Mẹ! Hôm nay con chính thức xong TTS rồi. Mai con chuyển SSW1. |
| Tanaka | (ghé vào màn hình, vẫy tay) ご<ruby>両親<rt>りょうしん</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして！タナカと<ruby>申<rt>もう</rt></ruby>します。<br>*(Hai bác, rất hân hạnh! Tôi tên là Tanaka.)* |
| Bố Hoa | (VN) Anh Tanaka! Cảm ơn anh đã chăm con tôi 3 năm. Vợ tôi về kể anh chị tốt với con cháu lắm! |
| Hoa | (dịch sang JP) <ruby>父<rt>ちち</rt></ruby>が、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>娘<rt>むすめ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にしていただいてありがとうございますと<ruby>申<rt>もう</rt></ruby>しております。<br>*(Bố em nói cảm ơn ông đã chăm sóc con gái suốt 3 năm.)* |
| Tanaka | こちらこそ、ホアさんは<ruby>娘<rt>むすめ</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>です。これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tôi mới phải cảm ơn, Hoa-san như con gái với chúng tôi. Mong hai bác tiếp tục tin tưởng.)* |
| Hoa | (dịch sang VN) Bác bảo coi con như con gái, mong bố mẹ tiếp tục tin tưởng. |
| Mẹ Hoa | (VN, khóc) Bác ơi, gia đình mình mang ơn các bác cả đời. |

---

## Tình huống 11 — Bàn phụ · 20:30, hai kohai tặng hộp danh thiếp da

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>とチャンから、<ruby>小<rt>ちい</rt></ruby>さなプレゼントです。<br>*(Hoa sempai, từ em và Trang, một món quà nhỏ.)* |
| Hoa | え、<ruby>気<rt>き</rt></ruby>を<ruby>遣<rt>つか</rt></ruby>わなくていいのに。<br>*(Ơ, các em đừng để ý chứ.)* |
| Trang | (đưa hộp) どうぞ<ruby>開<rt>あ</rt></ruby>けてみてください。<br>*(Chị mở thử xem ạ.)* |
| Hoa | (mở, lấy ra hộp da) これは...<ruby>名刺入<rt>めいしい</rt></ruby>れ！<br>*(Đây là... hộp đựng danh thiếp!)* |
| Mai | はい。<ruby>東京<rt>とうきょう</rt></ruby>EXPOで<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>名刺入<rt>めいしい</rt></ruby>れを<ruby>持<rt>も</rt></ruby>っていなくて<ruby>恥<rt>は</rt></ruby>ずかしい<ruby>思<rt>おも</rt></ruby>いをしたって<ruby>話<rt>はな</rt></ruby>、<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Vâng. Em vẫn nhớ chuyện ở Tokyo EXPO chị không có hộp danh thiếp nên ngại.)* |
| Trang | <ruby>本革<rt>ほんがわ</rt></ruby>です。SSW1になったら<ruby>名刺<rt>めいし</rt></ruby>を<ruby>持<rt>も</rt></ruby>てるので、<ruby>長<rt>なが</rt></ruby>く<ruby>使<rt>つか</rt></ruby>っていただきたくて。<br>*(Da thật ạ. Lên SSW1 chị được phát danh thiếp, nên bọn em muốn chị dùng được lâu.)* |
| Hoa | (mắt đỏ, ôm hộp) <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも、こんなに<ruby>覚<rt>おぼ</rt></ruby>えていてくれたんだ...ありがとう、<ruby>本当<rt>ほんとう</rt></ruby>に。<br>*(Hai đứa nhớ kỹ thế này à... Cảm ơn các em, thật sự cảm ơn.)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>がリーダーになっても、ずっと<ruby>先輩<rt>せんぱい</rt></ruby>です。<br>*(Chị có lên trưởng nhóm, vẫn mãi là sempai của em.)* |

---

## Tình huống 12 — Bàn chính · 21:00, Andi phát biểu đồng kỳ

| Vai | Lời thoại |
|---|---|
| Andi | (đứng dậy) <ruby>同期<rt>どうき</rt></ruby>として<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Với tư cách 同期, xin phép một lời.)* |
| Andi | <ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、ホアちゃんと<ruby>同<rt>おな</rt></ruby>じVN300<ruby>便<rt>びん</rt></ruby>で<ruby>来日<rt>らいにち</rt></ruby>しました。<ruby>名古屋<rt>なごや</rt></ruby>と<ruby>埼玉<rt>さいたま</rt></ruby>で<ruby>離<rt>はな</rt></ruby>れていましたが、LINEで<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>を<ruby>取<rt>と</rt></ruby>っていました。<br>*(3 năm trước, em cùng chuyến VN300 với Hoa sang Nhật. Nagoya và Saitama tuy xa, nhưng tuần nào cũng nhắn LINE.)* |
| Andi | ホアちゃんが「<ruby>食品衛生<rt>しょくひんえいせい</rt></ruby><ruby>受<rt>う</rt></ruby>かった」と<ruby>言<rt>い</rt></ruby>えば、<ruby>俺<rt>おれ</rt></ruby>も<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備<rt>せいび</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Hoa-chan bảo "đỗ vệ sinh thực phẩm" thì em cũng muốn lấy chứng chỉ bảo dưỡng ô tô.)* |
| Andi | <ruby>同期<rt>どうき</rt></ruby>って、こういうものですね。<ruby>来月<rt>らいげつ</rt></ruby><ruby>俺<rt>おれ</rt></ruby>もSSW1に<ruby>移行<rt>いこう</rt></ruby>します。これからも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう！<br>*(同期 là vậy đấy. Tháng sau em cũng chuyển SSW1. Cùng cố gắng tiếp nhé!)* |
| Hoa | (đứng lên, vỗ vai Andi) アンディ、ありがとう。<ruby>同期<rt>どうき</rt></ruby>がいてくれたから<ruby>頑張<rt>がんば</rt></ruby>れた。<br>*(Andi, cảm ơn cậu. Có 同期 nên mới cố được.)* |
| Cả bàn | (vỗ tay) |

---

## Tình huống 13 — Phòng karaoke izakaya · 22:00, ba người Việt hát chung bài 糸

| Vai | Lời thoại |
|---|---|
| Yamada | カラオケ<ruby>始<rt>はじ</rt></ruby>めますよー！<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>歌<rt>うた</rt></ruby>いますか？<br>*(Karaoke bắt đầu nhé! Ai hát đầu tiên?)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>歌<rt>うた</rt></ruby>いましょう！<br>*(Sempai, ba chị em mình hát chung nhé!)* |
| Hoa | え、<ruby>恥<rt>は</rt></ruby>ずかしいよ。<ruby>何<rt>なに</rt></ruby>を<ruby>歌<rt>うた</rt></ruby>うの？<br>*(Ơ, ngại lắm. Hát bài gì?)* |
| Trang | <ruby>中島<rt>なかじま</rt></ruby>みゆきの「<ruby>糸<rt>いと</rt></ruby>」はどうですか？コンドウ<ruby>先生<rt>せんせい</rt></ruby>がいつも<ruby>口<rt>くち</rt></ruby>ずさんでいる<ruby>曲<rt>きょく</rt></ruby>です。<br>*(Bài "Ito" của Nakajima Miyuki được không ạ? Bài thầy Kondou hay hát.)* |
| Hoa | いいね、「<ruby>縦<rt>たて</rt></ruby>の<ruby>糸<rt>いと</rt></ruby>はあなた、<ruby>横<rt>よこ</rt></ruby>の<ruby>糸<rt>いと</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>」。<ruby>私<rt>わたし</rt></ruby>たち<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>にぴったり。<br>*(Hay đấy, "Sợi dọc là anh, sợi ngang là em". Hợp với 3 chị em mình quá.)* |
| Ba người | (cùng hát đoạn điệp khúc) <ruby>逢<rt>あ</rt></ruby>うべき<ruby>糸<rt>いと</rt></ruby>に<ruby>出会<rt>であ</rt></ruby>えることを<ruby>人<rt>ひと</rt></ruby>は<ruby>仕合<rt>しあわ</rt></ruby>せと<ruby>呼<rt>よ</rt></ruby>びます〜<br>*(Việc gặp được sợi chỉ định mệnh, người ta gọi là hạnh phúc...)* |
| Linh | (VN, ghi hình bằng điện thoại) Em quay lại gửi mẹ. |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしい！ベトナム<ruby>人<rt>じん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby>の<ruby>合唱<rt>がっしょう</rt></ruby>だ。<br>*(Tuyệt vời! Đại hợp xướng 3 thế hệ người Việt.)* |

---

## Tình huống 14 — Bàn chính · 23:00, Tanaka phát biểu khoá tiệc (mẫu phát biểu tổng kết của cấp trên)

| Vai | Lời thoại |
|---|---|
| Tanaka | (đứng dậy) <ruby>最後<rt>さいご</rt></ruby>に、<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>代表<rt>だいひょう</rt></ruby>して<ruby>一言<rt>ひとこと</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Cuối cùng, thay mặt công ty, tôi xin nói một lời.)* |
| Tanaka | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>3<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>外国人<rt>がいこくじん</rt></ruby>TTSの<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れは<ruby>初<rt>はじ</rt></ruby>めてで、<ruby>会社<rt>かいしゃ</rt></ruby>として<ruby>不安<rt>ふあん</rt></ruby>でした。<br>*(Thật lòng, 3 năm trước nhận TTS nước ngoài là lần đầu, công ty rất lo.)* |
| Tanaka | しかしホアさんが<ruby>来<rt>き</rt></ruby>てくれて、<ruby>会社<rt>かいしゃ</rt></ruby>そのものが<ruby>変<rt>か</rt></ruby>わりました。<ruby>家内<rt>かない</rt></ruby>はフォーの<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>え、<ruby>私<rt>わたし</rt></ruby>は「アロー」というベトナム<ruby>語<rt>ご</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Nhưng Hoa-san đến, cả công ty đã thay đổi. Vợ tôi học nấu phở, tôi học được câu "alô" tiếng Việt.)* |
| Tanaka | <ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れた<ruby>側<rt>がわ</rt></ruby>のはずが、<ruby>私<rt>わたし</rt></ruby>たちもホアさんから<ruby>学<rt>まな</rt></ruby>ばせていただきました。<br>*(Chúng tôi ở phía nhận, nhưng cũng đã học được từ Hoa-san rất nhiều.)* |
| Tanaka | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>からSSW1<ruby>＆<rt>アンド</rt></ruby>リーダーとして、また<ruby>長<rt>なが</rt></ruby>くお<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いいただきたい。<br>*(Từ 1/4 em làm SSW1 và trưởng nhóm, mong em đồng hành lâu dài với chúng tôi.)* |
| Tanaka | (cúi đầu sâu) <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Hôm nay thực sự cảm ơn.)* |
| Hoa | (khóc, cúi đầu đáp lễ) こちらこそ、ありがとうございました。 |

---

## Tình huống 15 — Phòng riêng · sáng 1/4, 6:00, độc thoại cài cúc đồng phục SSW1

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>、SSW1<ruby>初日<rt>しょにち</rt></ruby>です。<br>*(Ngày 1/4, ngày đầu SSW1.)* |
| Hoa | (mặc đồng phục mới, đứng trước gương) バッジが<ruby>青<rt>あお</rt></ruby>に<ruby>変<rt>か</rt></ruby>わりました。<br>*(Badge đổi sang xanh dương rồi.)* |
| Hoa | (cài cúc thứ nhất) <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るリーダーとして。<br>*(Cúc thứ nhất — với tư cách trưởng nhóm bảo vệ kohai.)* |
| Hoa | (cài cúc thứ hai) <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>恩返<rt>おんがえ</rt></ruby>しする<ruby>社員<rt>しゃいん</rt></ruby>として。<br>*(Cúc thứ hai — với tư cách nhân viên báo đáp công ty.)* |
| Hoa | (cài cúc thứ ba) <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>のボタン――<ruby>家族<rt>かぞく</rt></ruby>に<ruby>誇<rt>ほこ</rt></ruby>られる<ruby>娘<rt>むすめ</rt></ruby>として。<br>*(Cúc thứ ba — với tư cách con gái khiến gia đình tự hào.)* |
| Hoa | (hít sâu) <ruby>行<rt>い</rt></ruby>ってきます。<br>*(Em đi đây.)* |

---

## Tình huống 16 — Trước cổng nhà máy · 7:30, kohai chào Hoa với badge mới

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます！<br>*(Hoa sempai, chào buổi sáng!)* |
| Trang | バッジ、<ruby>青<rt>あお</rt></ruby>になりましたね！<br>*(Badge đổi sang xanh rồi nhỉ!)* |
| Hoa | おはよう、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも。<ruby>本日<rt>ほんじつ</rt></ruby>からSSW1とリーダーです。<br>*(Chào hai đứa. Từ hôm nay là SSW1 và trưởng nhóm.)* |
| Mai | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いがあります。<br>*(Sempai, em có một đề nghị.)* |
| Hoa | はい、<ruby>何<rt>なに</rt></ruby>？<br>*(Vâng, gì thế?)* |
| Mai | <ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>を「リーダー」に<ruby>変<rt>か</rt></ruby>えたほうがいいでしょうか？<br>*(Em đổi cách gọi sang "trưởng nhóm" có phải không ạ?)* |
| Hoa | (cười) いいえ、「<ruby>先輩<rt>せんぱい</rt></ruby>」のままがいいです。<ruby>役職<rt>やくしょく</rt></ruby>は<ruby>変<rt>か</rt></ruby>わっても、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>との<ruby>関係<rt>かんけい</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらないから。<br>*(Không, cứ "sempai" là được. Chức vụ đổi nhưng quan hệ với hai đứa không đổi.)* |
| Trang | はい、<ruby>嬉<rt>うれ</rt></ruby>しいです！<br>*(Vâng, em vui quá!)* |

---

## Tình huống 17 — Dây chuyền A · 8:00, 朝礼 và mẫu câu nhậm chức trưởng nhóm

| Vai | Lời thoại |
|---|---|
| Tanaka | みんな、<ruby>朝礼<rt>ちょうれい</rt></ruby><ruby>始<rt>はじ</rt></ruby>めます。<ruby>整列<rt>せいれつ</rt></ruby>してください。<br>*(Mọi người, briefing sáng bắt đầu. Xin xếp hàng.)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>製造部<rt>せいぞうぶ</rt></ruby>の<ruby>新<rt>あたら</rt></ruby>しいリーダーを<ruby>紹介<rt>しょうかい</rt></ruby>します。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>、グエン・ティ・ホアさんです。<br>*(Từ hôm nay xin giới thiệu trưởng nhóm mới của phòng sản xuất. Đặc định kỹ năng 1, Nguyễn Thị Hoa.)* |
| Cả phòng | (vỗ tay) |
| Tanaka | ホアさん、<ruby>就任<rt>しゅうにん</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hoa-san, xin phát biểu nhậm chức.)* |
| Hoa | (bước lên một bước, cúi đầu) みなさん、おはようございます。<br>*(Mọi người, chào buổi sáng.)* |
| Hoa | <ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>製造部<rt>せいぞうぶ</rt></ruby>リーダーとして<ruby>働<rt>はたら</rt></ruby>かせていただきます、グエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。<br>*(Em là Nguyễn Thị Hoa, từ hôm nay làm việc với tư cách trưởng nhóm phòng sản xuất.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>みなさんから<ruby>教<rt>おし</rt></ruby>えていただいたこと――<ruby>5S<rt>ごエス</rt></ruby>、<ruby>HACCP<rt>ハサップ</rt></ruby>、<ruby>報連相<rt>ほうれんそう</rt></ruby>、<ruby>異物混入<rt>いぶつこんにゅう</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>――これらを<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>正<rt>ただ</rt></ruby>しく<ruby>伝<rt>つた</rt></ruby>えていきたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Những điều mọi người đã dạy em 3 năm — 5S, HACCP, 報連相, phòng dị vật — em muốn truyền lại đúng cho kohai.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>きますので、これからもご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Có gì không hiểu em nhất định sẽ hỏi, mong mọi người tiếp tục chỉ bảo.)* |
| Hoa | (cúi đầu sâu) どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin được mong nhờ ạ.)* |
| Cả phòng | (vỗ tay lớn) |
| Tanaka | では、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>安全第一<rt>あんぜんだいいち</rt></ruby>、<ruby>品質第一<rt>ひんしつだいいち</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy bắt đầu công việc hôm nay. An toàn trên hết, chất lượng trên hết.)* |
| Cả phòng | お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Xin được mong nhờ!)* |

---

## Tình huống 18 — Ký túc · 21:00, gọi điện báo cáo về cho mẹ và Linh (cảnh tiếng Việt khoá chương)

> Cảnh tiếng Việt — giữ mạch nhân vật và khép lại 3 năm.

| Vai | Lời thoại |
|---|---|
| Hoa | (VN, video call) Mẹ ơi, hôm nay con xong ngày đầu SSW1 rồi. |
| Mẹ Hoa | (VN) Mệt không con? Phát biểu trước cả phòng có run không? |
| Hoa | (VN) Mẹ ơi, con không run đâu. 3 năm rồi, con đã quen phát biểu bằng tiếng Nhật. Sáng nay con nói được câu "本日より製造部リーダーとして働かせていただきます" trơn tru luôn. |
| Linh | (VN, ghé vào) Chị ơi, hôm qua Tuấn với Bo về Hà Nội rồi. Cháu cứ đòi "おじちゃん Tanaka". |
| Hoa | (VN, cười) Ông Tanaka nhắn tin hỏi Bo đến nhà chưa. Mẹ ơi, bác Tanaka gửi mẹ cuốn sổ tay 指導員 thứ 3, lúc nào con về con cho mẹ xem. |
| Mẹ Hoa | (VN) Mẹ tự hào về con lắm. 3 năm trước con đi, mẹ khóc nửa tháng. Giờ con đứng làm trưởng nhóm, mẹ kể với cả xóm. |
| Hoa | (VN) Mẹ ơi, con không gọi điện về khóc nữa đâu. Từ giờ con gọi về kể tin tốt thôi. |
| Linh | (VN) Chị nhớ giữ sức khoẻ. Hộp danh thiếp Mai với Trang tặng đẹp lắm, em chụp gửi mẹ rồi. |
| Hoa | (VN, nhìn cuốn sổ 指導員 thứ 3 trên bàn) Linh ơi, hồi xưa chị 21 tuổi, sang Nhật một mình, N5 vừa đỗ. Giờ 24 tuổi, có badge xanh, có hai em kohai, có cuốn sổ tay 指導員 thứ 3 trong tay. Giấc mơ cũ vẫn còn, mà cuộc đời mới cũng bắt đầu rồi. |
| Mẹ Hoa | (VN, khóc cười) Mẹ chỉ mong con ăn no, ngủ ngon, làm việc cẩn thận. |
| Hoa | (VN) Vâng mẹ. Con đi ngủ đây. Mai 6 giờ con dậy. Saitama là nhà của con rồi mẹ ạ. |

---

## Đọng lại chương 12

Chương khép lại 3 năm TTS bằng một bonenkai dạy nguyên trọn bộ mẫu câu giao tiếp trang trọng của người đi làm tại Nhật: **giới thiệu khách đặc biệt với cấp trên** (ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます), **đề xướng 乾杯 với cấu trúc 3 ý nghĩa** (<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>会<rt>かい</rt></ruby>には<ruby>3<rt>みっ</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>があります), **phát biểu cảm ơn tổng kết theo cấu trúc Nhật** (お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします → liệt kê người đã giúp → cúi đầu), **nhận quà bằng hai tay và đáp lễ trang trọng** (<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>一生<rt>いっしょう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします), **phiên dịch hai chiều Nhật–Việt** cho gia đình gặp cấp trên, và **mẫu câu nhậm chức trưởng nhóm trong 朝礼** (<ruby>本日<rt>ほんじつ</rt></ruby>より〜として<ruby>働<rt>はたら</rt></ruby>かせていただきます). Hoa đã tổng kết được 3 năm bằng đúng các kỹ năng mà bộ sách đã dạy: từ N5 ngày đầu (T1), HACCP và 食品衛生責任者 năm 2, đến 報連相・5S・<ruby>異物混入<rt>いぶつこんにゅう</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby> năm 3. Triết lý nghề thực phẩm — an toàn trên hết, chất lượng trên hết — được Tanaka chốt lại trong câu cuối朝礼 và Hoa nhận lấy như cuốn sổ tay 指導員 thứ 3: nhận từ đàn anh, trao lại cho đàn em, đó là <ruby>循環<rt>じゅんかん</rt></ruby>.

> Từ vựng & mẫu câu chương này: <ruby>年末年始会<rt>ねんまつねんしかい</rt></ruby>・<ruby>慰労会<rt>いろうかい</rt></ruby>・<ruby>契約満了<rt>けいやくまんりょう</rt></ruby>・<ruby>移行<rt>いこう</rt></ruby>・<ruby>就任<rt>しゅうにん</rt></ruby>・<ruby>祝賀会<rt>しゅくがかい</rt></ruby>・<ruby>指導員手帳<rt>しどういんてちょう</rt></ruby>・<ruby>同期<rt>どうき</rt></ruby>・<ruby>後輩<rt>こうはい</rt></ruby>・<ruby>朝礼<rt>ちょうれい</rt></ruby>・<ruby>製造部<rt>せいぞうぶ</rt></ruby>・<ruby>名刺入<rt>めいしい</rt></ruby>れ・<ruby>本革<rt>ほんがわ</rt></ruby>・<ruby>循環<rt>じゅんかん</rt></ruby>・<ruby>感慨深<rt>かんがいぶか</rt></ruby>い・<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>・HACCP・<ruby>技能検定<rt>ぎのうけんてい</rt></ruby>・<ruby>報連相<rt>ほうれんそう</rt></ruby>・<ruby>異物混入防止<rt>いぶつこんにゅうぼうし</rt></ruby>・<ruby>安全第一<rt>あんぜんだいいち</rt></ruby>・<ruby>品質第一<rt>ひんしつだいいち</rt></ruby>・<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>・ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます・お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・<ruby>本日<rt>ほんじつ</rt></ruby>より〜として<ruby>働<rt>はたら</rt></ruby>かせていただきます・<ruby>娘<rt>むすめ</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>です・これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします

## Bí quyết chương

- **Closure 3 năm**: chương cuối của bộ Hoa — tổng kết toàn bộ kỹ năng đã dạy xuyên 36 chương (3 năm × 12).
- **Triple ý nghĩa bonenkai**: cấu trúc 3 lý do giúp người học nắm được template phát biểu trang trọng của Nhật.
- **Vòng tròn 同期 + kohai**: Andi (đồng kỳ) + Mai/Trang (kohai) = mô hình quan hệ ngang-dọc người đi Nhật cần thuộc.
- **Cuốn sổ 指導員 thứ 3**: symbol "graduation" — học viên đọc sẽ nhớ mẫu câu nhận quà trang trọng <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします.
- **3 cúc đồng phục SSW1**: cài cúc 3 tầng — trưởng nhóm, nhân viên báo đáp, con gái — dạy người học cách tự xác lập nhiều vai trò song song khi làm nghề ở Nhật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 制服 | せいふく | CHẾ PHỤC | đồng phục |
| 緑 | みどり | LỤC | màu xanh lá |
| 青 | あお | THANH | màu xanh dương |
| 形 | かたち | HÌNH | hình dáng |
| 意味 | いみ | Ý VỊ | ý nghĩa |
| 勤務日 | きんむび | CẦN VỤ NHẬT | ngày làm việc |
| 感慨深 | かんがいぶか | CẢM KHÁI THÂM | đầy cảm xúc |
| 空港 | くうこう | KHÔNG CẢNG | sân bay |
| 真似 | まね | CHÂN TỰ | bắt chước |
| 渡 | わた | ĐỘ | trao |
| 新幹線 | しんかんせん | TÂN CÁN TUYẾN | tàu siêu tốc |
| 主人 | しゅじん | CHỦ NHÂN | chồng |
| 息子 | むすこ | TỨC TỬ | con trai |
| 自動車部品 | じどうしゃぶひん | TỰ ĐỘNG XA BỘ PHẨM | linh kiện ô tô |
| 偶然 | ぐうぜん | NGẪU NHIÊN | tình cờ |
| 年末年始会 | ねんまつねんしかい | NIÊN MẠT NIÊN THỦY HỘI | tiệc cuối năm |
| 連続 | れんぞく | LIÊN TỤC | liên tục |
| 馴染 | なじみ | TUẦN NHIỄM | quen thuộc |
| 大将 | たいしょう | ĐẠI TƯỚNG | ông chủ quán |
| 夫 | おっと | PHU | chồng |
| 娘 | むすめ | NƯƠNG | con gái |
| 奥様 | おくさま | ÁO DẠNG | bà, phu nhân |
| 音頭 | おんど | ÂM ĐẦU | đề xướng |
| 年度末 | ねんどまつ | NIÊN ĐỘ MẠT | cuối năm tài khóa |
| 慰労会 | いろうかい | ÚY LAO HỘI | tiệc úy lạo |
| 契約満了 | けいやくまんりょう | KHẾ ƯỚC MÃN LIỄU | hết hợp đồng |
| 製造部 | せいぞうぶ | CHẾ TẠO BỘ | phòng sản xuất |
| 祝賀会 | しゅくがかい | CHÚC HẠ HỘI | tiệc chúc mừng |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | xin nhận |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 研修修了 | けんしゅうしゅうりょう | NGHIÊN TU TU LIỄU | hoàn thành tập huấn |
| 父親 | ちちおや | PHỤ THÂN | cha |
| 支 | ささ | CHI | đỡ, hỗ trợ |
| 専門技術 | せんもんぎじゅつ | CHUYÊN MÔN KỸ THUẬT | kỹ thuật chuyên môn |
| 道 | みち | ĐẠO | con đường |
| 示 | しめ | THỊ | chỉ ra |
| 守 | まも | THỦ | bảo vệ |
| 指導員手帳 | しどういんてちょう | CHỈ ĐẠO VIÊN THỦ TRƯỚNG | sổ tay huấn luyện viên |
| 託 | たく | THÁC | giao phó |
| 一生 | いっしょう | NHẤT SINH | cả đời |
| 両親 | りょうしん | LƯỠNG THÂN | cha mẹ |
| 存在 | そんざい | TỒN TẠI | sự tồn tại |
| 名刺入 | めいしいれ | DANH THÍCH NHẬP | hộp danh thiếp |
| 本革 | ほんがわ | BẢN CÁCH | da thật |
| 整備 | せいび | CHỈNH BỊ | bảo dưỡng |
| 縦 | たて | TUNG | dọc |
| 横 | よこ | HOÀNH | ngang |
| 糸 | いと | TY | sợi chỉ |
| 仕合 | しあわ | SĨ HỢP | hạnh phúc |
| 合唱 | がっしょう | HỢP XƯỚNG | hợp xướng |
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 側 | がわ | TRẮC | phía |
| 学 | まな | HỌC | học |
| 付合 | つきあ | PHÓ HỢP | giao tiếp, đi cùng |
| 初日 | しょにち | SƠ NHẬT | ngày đầu |
| 恩返 | おんがえ | ÂN PHẢN | báo đáp |
| 社員 | しゃいん | XÃ VIÊN | nhân viên |
| 誇 | ほこ | KHOA | tự hào |
| 朝礼 | ちょうれい | TRIỀU LỄ | họp sáng |
| 整列 | せいれつ | CHỈNH LIỆT | xếp hàng |
| 防止 | ぼうし | PHÒNG CHỈ | phòng chống |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | an toàn trên hết |
| 品質第一 | ひんしつだいいち | PHẨM CHẤT ĐỆ NHẤT | chất lượng trên hết |
| 役職 | やくしょく | DỊCH CHỨC | chức vụ |
| 関係 | かんけい | QUAN HỆ | quan hệ |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
