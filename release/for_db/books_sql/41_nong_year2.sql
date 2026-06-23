-- Hizashi LITE book SQL — Linh Y2 — Nông nghiệp năm 2 (sempai-of-sempai + JAS)
-- curriculum_id = 800000041  (book_seq=41)
-- nguồn: books/41_nong_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000041, 'N4', 'markdown_book', 'Nông nghiệp', 'Linh Y2 — Nông nghiệp năm 2 (sempai-of-sempai + JAS)', 'Bộ sách Hizashi — Linh Y2 — Nông nghiệp năm 2 (sempai-of-sempai + JAS)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000001, 800000041, NULL, 'markdown_book', 'T1. Khởi đầu năm 2 — sempai-of-sempai (二年目の朝・先輩の先輩へ)', '# Sách thực tập sinh nông nghiệp · T1. Khởi đầu năm 2 — sempai-of-sempai (二年目の朝・先輩の先輩へ)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp) bước vào năm 2 tại nông trại rau Ibaraki, trình độ N4→N3. Học các mẫu hội thoại tiếng Nhật của sempai năm 2: chào năm tài khoá mới với đồng nghiệp (新年度もよろしくお願いいたします), nhận giao trách nhiệm trưởng ハウス từ 親方 (承知しました・精一杯やらせていただきます), bàn phân công đón kohai mới với sempai (〜について相談させてください), xác nhận lại lịch JAS có機 với Saori-san (〜ということでよろしいでしょうか), hỏi lại từ chuyên ngành (〜というのは何のことですか), an ủi và động viên kohai sắp sang qua điện thoại (心配しないでくださいね・大丈夫ですよ).

---

## Bối cảnh

Ngày 1 tháng 4 năm 2026. Linh sang Nhật tròn 1 năm tại nông trại Yamamoto Farm, vùng Ibaraki — chuyên dưa hấu, dưa leo, cà chua trong nhà kính ハウス. Đợt kohai mới gồm Hương (TTS năm 1, Cần Thơ) sẽ sang tháng 5, vào ở cùng phòng. Linh vừa lên năm 2, được giao trưởng nhà kính 第3ハウス kiêm chỉ đạo viên (指導員) cho Hương. Chương này tập trung mẫu câu sempai năm 2: nhận trách nhiệm, bàn bạc đón kohai, lập lịch JAS có機 với Saori-san, gọi điện về VN trấn an Hương.

---

## Tình huống 1 — Sân ký túc · 5:45, chào năm tài khoá với Dewi và Riko

| Vai | Lời thoại |
|---|---|
| Dewi | リンちゃん、おはよう!<ruby>新年度<rt>しんねんど</rt></ruby>おめでとう。<br>*(Linh-chan, chào buổi sáng! Chúc mừng năm tài khoá mới.)* |
| Linh | おはよう、デウィ。<ruby>新年度<rt>しんねんど</rt></ruby>おめでとう。<ruby>今日<rt>きょう</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>だね。<br>*(Chào Dewi. Chúc mừng năm tài khoá mới. Hôm nay là bắt đầu năm thứ 2 nhỉ.)* |
| Riko | リンさん、おめでとうございます。<ruby>桜<rt>さくら</rt></ruby>もちょうど<ruby>満開<rt>まんかい</rt></ruby>ですよ。<br>*(Linh-san, chúc mừng. Hoa anh đào cũng đúng độ nở rộ rồi đấy.)* |
| Linh | あ、<ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>去年<rt>きょねん</rt></ruby><ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>も<ruby>桜<rt>さくら</rt></ruby>でした。<ruby>早<rt>はや</rt></ruby>いですね。<br>*(À, đúng thật. Năm ngoái đến cũng là mùa hoa anh đào. Nhanh thật.)* |
| Dewi | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>って<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>早<rt>はや</rt></ruby>いね。リンちゃん、もう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>先輩<rt>せんぱい</rt></ruby>だよ。<br>*(Một năm trôi nhanh thật. Linh-chan đã là sempai đáng nể rồi.)* |
| Linh | いえいえ、まだまだです。デウィのほうが<ruby>先輩<rt>せんぱい</rt></ruby>ですから。<br>*(Không không, còn phải học nhiều. Dewi là sempai trước mà.)* |
| Riko | <ruby>来月<rt>らいげつ</rt></ruby><ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来<rt>く</rt></ruby>るんでしょう?ベトナムの<ruby>方<rt>かた</rt></ruby>。<br>*(Tháng sau kohai sẽ đến phải không? Người Việt Nam.)* |
| Linh | はい、フォンさんという<ruby>子<rt>こ</rt></ruby>です。<ruby>同<rt>おな</rt></ruby>じ<ruby>部屋<rt>へや</rt></ruby>になります。<br>*(Vâng, tên là Hương. Cùng phòng luôn.)* |
| Dewi | <ruby>楽<rt>たの</rt></ruby>しみだね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Mong chờ ghê. Cùng cố gắng nhé.)* |

---

## Tình huống 2 — Cổng nông trại · 6:30, chào 親方 Yamamoto đầu năm

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、おはようございます。<ruby>新年度<rt>しんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Thưa親方, chào buổi sáng. Năm tài khoá mới mong ông chỉ bảo ạ.)* |
| Yamamoto | おはよう、リンちゃん。よろしくな。もう<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>か、<ruby>早<rt>はや</rt></ruby>いもんだ。<br>*(Chào Linh-chan. Cùng cố lên nhé. Đã năm thứ 2 rồi à, nhanh thật.)* |
| Linh | はい、おかげさまで。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, nhờ ông cả. Năm nay cũng mong ông chỉ bảo ạ.)* |
| Yamamoto | リンちゃん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウスの<ruby>担当<rt>たんとう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたい。<br>*(Linh-chan, từ hôm nay tôi muốn giao em phụ trách nhà kính số 3.)* |
| Linh | え、<ruby>私<rt>わたし</rt></ruby>がですか?<br>*(Ơ, là em ạ?)* |
| Yamamoto | <ruby>去年<rt>きょねん</rt></ruby>のスイカの<ruby>収穫<rt>しゅうかく</rt></ruby>、よくやってくれたからな。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Vụ thu hoạch dưa hấu năm ngoái em làm tốt mà. Không sao đâu.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>精一杯<rt>せいいっぱい</rt></ruby>やらせていただきます。<br>*(Em rõ ạ. Em xin được làm hết sức.)* |
| Yamamoto | サオリと<ruby>相談<rt>そうだん</rt></ruby>しながらやってくれ。<ruby>困<rt>こま</rt></ruby>ったらすぐ<ruby>呼<rt>よ</rt></ruby>べよ。<br>*(Cứ bàn với Saori mà làm. Có khó là gọi tôi ngay.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 3 — 第3ハウス · 7:00, nhận bàn giao từ Saori-san sempai

*Saori-san là sempai năm 3 người Nhật, phụ trách 第3ハウス trước khi chuyển sang quản lý JAS toàn farm.*

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、おはよう。<ruby>今日<rt>きょう</rt></ruby>からよろしくね。<br>*(Linh-chan, chào buổi sáng. Từ hôm nay nhờ em nhé.)* |
| Linh | サオリさん、おはようございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Saori-san, chào buổi sáng. Việc bàn giao, mong chị chỉ bảo ạ.)* |
| Saori | この<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウスは<ruby>小玉<rt>こだま</rt></ruby>スイカ<ruby>専用<rt>せんよう</rt></ruby>です。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>は<ruby>定植<rt>ていしょく</rt></ruby>、<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>収穫<rt>しゅうかく</rt></ruby>です。<br>*(Nhà kính số 3 này chuyên dưa hấu nhỏ kodama. Tháng 4 trồng, tháng 6 bắt đầu thu hoạch.)* |
| Linh | すみません、「<ruby>定植<rt>ていしょく</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>のことですか?<br>*(Xin lỗi chị, "定植" cụ thể là gì ạ?)* |
| Saori | <ruby>苗<rt>なえ</rt></ruby>を<ruby>本<rt>ほん</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>に<ruby>植<rt>う</rt></ruby>えることです。<ruby>種<rt>たね</rt></ruby>まきとは<ruby>違<rt>ちが</rt></ruby>いますよ。<br>*(Trồng cây giống ra ruộng chính. Khác với gieo hạt.)* |
| Linh | なるほど、<ruby>苗<rt>なえ</rt></ruby>を<ruby>植<rt>う</rt></ruby>えることですね。メモします。<br>*(Ra vậy, là trồng cây giống. Em ghi lại.)* |
| Saori | <ruby>大切<rt>たいせつ</rt></ruby>な<ruby>点<rt>てん</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つ。<ruby>温度<rt>おんど</rt></ruby><ruby>管理<rt>かんり</rt></ruby>、<ruby>水<rt>みず</rt></ruby>やり、<ruby>受粉<rt>じゅふん</rt></ruby>です。<br>*(Có 3 điểm quan trọng. Quản lý nhiệt độ, tưới nước, thụ phấn.)* |
| Linh | <ruby>温度<rt>おんど</rt></ruby>・<ruby>水<rt>みず</rt></ruby>・<ruby>受粉<rt>じゅふん</rt></ruby>、ということですね。<br>*(Tức là nhiệt độ, nước, và thụ phấn ạ.)* |
| Saori | そう。<ruby>受粉<rt>じゅふん</rt></ruby>はミツバチを<ruby>入<rt>い</rt></ruby>れますが、<ruby>足<rt>た</rt></ruby>りない<ruby>時<rt>とき</rt></ruby>は<ruby>手<rt>て</rt></ruby><ruby>受粉<rt>じゅふん</rt></ruby>もします。<br>*(Đúng. Thụ phấn thì thả ong mật, nhưng thiếu thì làm bằng tay nữa.)* |
| Linh | <ruby>手<rt>て</rt></ruby><ruby>受粉<rt>じゅふん</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cách thụ phấn bằng tay, lát chị chỉ em được không ạ?)* |
| Saori | もちろん。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>にやろう。<br>*(Tất nhiên. Sáng mai cùng làm nhé.)* |

---

## Tình huống 4 — Văn phòng farm · 9:00, 親方 thông báo về kohai mới

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンちゃん、サオリ、ちょっと<ruby>来<rt>き</rt></ruby>てくれ。<br>*(Linh, Saori, đến đây chút.)* |
| Linh/Saori | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, xin phép ạ.)* |
| Yamamoto | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby>に、ベトナムから<ruby>新人<rt>しんじん</rt></ruby>が<ruby>1人<rt>ひとり</rt></ruby><ruby>来<rt>く</rt></ruby>る。<ruby>名前<rt>なまえ</rt></ruby>はフォンさん、<ruby>20<rt>はたち</rt></ruby><ruby>歳<rt>さい</rt></ruby>だ。<br>*(Ngày 10/5, có người mới từ Việt Nam đến. Tên Hương, 20 tuổi.)* |
| Linh | はい、<ruby>監理団体<rt>かんりだんたい</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けました。<br>*(Vâng, em đã nhận liên lạc từ đoàn thể giám sát.)* |
| Yamamoto | リンちゃんに<ruby>指導員<rt>しどういん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたい。<ruby>同<rt>おな</rt></ruby>じベトナム<ruby>人<rt>じん</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>部屋<rt>へや</rt></ruby>、いいだろう?<br>*(Tôi muốn nhờ Linh-chan làm chỉ đạo viên. Cùng người Việt, cùng phòng, được chứ?)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>でよろしいんでしょうか?まだ<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>ですが...<br>*(Em làm có ổn không ạ? Em mới năm thứ 2 mà...)* |
| Saori | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>もサポートします。リンちゃんの<ruby>方<rt>ほう</rt></ruby>がベトナム<ruby>語<rt>ご</rt></ruby><ruby>通<rt>つう</rt></ruby>じるから、<ruby>安心<rt>あんしん</rt></ruby>でしょう。<br>*(Không sao. Tôi cũng hỗ trợ. Linh-chan nói tiếng Việt được, kohai mới yên tâm hơn.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>精一杯<rt>せいいっぱい</rt></ruby>やらせていただきます。<br>*(Em rõ ạ. Em sẽ làm hết sức.)* |
| Yamamoto | フォンさんの<ruby>日本語<rt>にほんご</rt></ruby>はN5、<ruby>農業<rt>のうぎょう</rt></ruby>は<ruby>未経験<rt>みけいけん</rt></ruby>だ。ゆっくり<ruby>教<rt>おし</rt></ruby>えてやってくれ。<br>*(Hương trình độ N5, chưa từng làm nông. Dạy chậm cho em ấy nhé.)* |
| Linh | はい、わかりました。ありがとうございます。<br>*(Vâng, em hiểu rồi. Em cảm ơn ạ.)* |

---

## Tình huống 5 — Phòng giải lao · 10:30, bàn lịch đón Hương với Saori-san

| Vai | Lời thoại |
|---|---|
| Linh | サオリさん、フォンさんの<ruby>件<rt>けん</rt></ruby>について<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Saori-san, về việc Hương-san, cho em xin được bàn ạ.)* |
| Saori | はい、どうぞ。<br>*(Vâng, mời.)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby>に<ruby>成田<rt>なりた</rt></ruby><ruby>空港<rt>くうこう</rt></ruby>に<ruby>着<rt>つ</rt></ruby>くそうです。<ruby>誰<rt>だれ</rt></ruby>が<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>きますか?<br>*(Nghe nói ngày 10/5 đến sân bay Narita. Ai sẽ đi đón ạ?)* |
| Saori | <ruby>監理団体<rt>かんりだんたい</rt></ruby>のバスが<ruby>成田<rt>なりた</rt></ruby>まで<ruby>行<rt>い</rt></ruby>きます。<ruby>農場<rt>のうじょう</rt></ruby>には<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>ごろ<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Bus đoàn thể giám sát đi tới Narita. Đến farm khoảng 5 giờ chiều dự kiến.)* |
| Linh | では、<ruby>到着<rt>とうちゃく</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>は<ruby>夕食<rt>ゆうしょく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をしておきますね。フォーを<ruby>作<rt>つく</rt></ruby>ろうかな。<br>*(Vậy ngày đến em sẽ chuẩn bị sẵn bữa tối. Em định nấu phở.)* |
| Saori | いいですね、<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>が<ruby>嬉<rt>うれ</rt></ruby>しいでしょう。<br>*(Hay đấy, vị quê chắc kohai sẽ vui.)* |
| Linh | <ruby>翌日<rt>よくじつ</rt></ruby>から<ruby>仕事<rt>しごと</rt></ruby>ですか?<br>*(Hôm sau là bắt đầu công việc luôn ạ?)* |
| Saori | <ruby>初<rt>はじ</rt></ruby>めの<ruby>3日間<rt>みっかかん</rt></ruby>は<ruby>監理団体<rt>かんりだんたい</rt></ruby>の<ruby>研修<rt>けんしゅう</rt></ruby>。それから<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(3 ngày đầu là đào tạo của đoàn thể giám sát. Sau đó mới làm farm.)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>14日<rt>じゅうよっか</rt></ruby>から<ruby>仕事<rt>しごと</rt></ruby><ruby>開始<rt>かいし</rt></ruby>、ということでよろしいでしょうか?<br>*(Tức là từ 14/5 bắt đầu công việc, đúng không ạ?)* |
| Saori | はい、そうです。よく<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Đúng vậy. Em nhớ kỹ đấy.)* |

---

## Tình huống 6 — 第3ハウス · 11:00, nhận chỉ thị về tiêu chuẩn JAS có機

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウスはJAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby>を<ruby>取<rt>と</rt></ruby>っています。<ruby>知<rt>し</rt></ruby>っていますか?<br>*(Linh-chan, nhà kính số 3 có chứng nhận JAS hữu cơ. Em biết không?)* |
| Linh | あ、<ruby>名前<rt>なまえ</rt></ruby>だけ<ruby>聞<rt>き</rt></ruby>いたことがあります。「JAS<ruby>有機<rt>ゆうき</rt></ruby>」というのは、<ruby>何<rt>なん</rt></ruby>のことですか?<br>*(À, em chỉ nghe tên. "JAS hữu cơ" cụ thể là gì ạ?)* |
| Saori | <ruby>農薬<rt>のうやく</rt></ruby>や<ruby>化学<rt>かがく</rt></ruby><ruby>肥料<rt>ひりょう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わないで<ruby>育<rt>そだ</rt></ruby>てた<ruby>農作物<rt>のうさくぶつ</rt></ruby>の<ruby>国<rt>くに</rt></ruby>の<ruby>認証<rt>にんしょう</rt></ruby>です。<br>*(Chứng nhận của nhà nước cho nông sản trồng không dùng thuốc trừ sâu hay phân hoá học.)* |
| Linh | <ruby>普通<rt>ふつう</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Khác ruộng thường nhỉ.)* |
| Saori | はい。<ruby>使<rt>つか</rt></ruby>っていい<ruby>資材<rt>しざい</rt></ruby>のリストがあります。<ruby>毎日<rt>まいにち</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けないといけません。<br>*(Vâng. Có danh sách vật tư được phép dùng. Phải ghi nhật ký mỗi ngày.)* |
| Linh | <ruby>記録<rt>きろく</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けないといけない、ということですね。<br>*(Tức là phải ghi nhật ký mỗi ngày, đúng không ạ?)* |
| Saori | そう。<ruby>来月<rt>らいげつ</rt></ruby>JASの<ruby>監査<rt>かんさ</rt></ruby>があります。<ruby>田中<rt>たなか</rt></ruby><ruby>監査員<rt>かんさいん</rt></ruby>が<ruby>来<rt>こ</rt></ruby>られます。<br>*(Đúng. Tháng sau có thanh tra JAS. Anh Tanaka kiểm toán viên sẽ đến.)* |
| Linh | <ruby>監査<rt>かんさ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>はいつから<ruby>始<rt>はじ</rt></ruby>めますか?<br>*(Chuẩn bị thanh tra bắt đầu từ khi ạ?)* |
| Saori | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>書類<rt>しょるい</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>しましょう。<br>*(Tuần sau cùng sắp xếp hồ sơ nhé.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em rõ ạ. Mong chị chỉ bảo.)* |

---

## Tình huống 7 — Đồng dưa hấu · 13:30, dạy Dewi cách quan sát nụ hoa (luyện vai sempai)

*Linh thử dạy lại cho Dewi (kohai năm 1 cũ vẫn ở đợt 1) một kỹ năng — vừa luyện vai sempai.*

| Vai | Lời thoại |
|---|---|
| Linh | デウィ、ちょっと<ruby>見<rt>み</rt></ruby>てくれる?この<ruby>花<rt>はな</rt></ruby>、<ruby>雄花<rt>おばな</rt></ruby>と<ruby>雌花<rt>めばな</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かる?<br>*(Dewi, xem cho mình chút? Hoa này, hoa đực và hoa cái, phân biệt được không?)* |
| Dewi | え、どっちがどっち?<br>*(Ơ, cái nào là cái nào?)* |
| Linh | <ruby>花<rt>はな</rt></ruby>の<ruby>下<rt>した</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>小<rt>ちい</rt></ruby>さい<ruby>実<rt>み</rt></ruby>のような<ruby>膨<rt>ふく</rt></ruby>らみがあれば<ruby>雌花<rt>めばな</rt></ruby>です。<br>*(Hãy nhìn dưới hoa. Nếu có phần phình lên như quả con là hoa cái.)* |
| Dewi | あ、こっちは<ruby>膨<rt>ふく</rt></ruby>らんでる!<ruby>雌花<rt>めばな</rt></ruby>だ。<br>*(À, cái này phình lên kìa! Hoa cái.)* |
| Linh | そう、よくできました。<ruby>雌花<rt>めばな</rt></ruby>が<ruby>受粉<rt>じゅふん</rt></ruby>するとスイカになります。<br>*(Đúng, giỏi lắm. Hoa cái thụ phấn rồi sẽ thành dưa hấu.)* |
| Dewi | リンちゃん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>先輩<rt>せんぱい</rt></ruby>みたい。<br>*(Linh-chan, đúng là sempai luôn.)* |
| Linh | ありがとう。<ruby>来月<rt>らいげつ</rt></ruby>フォンさんが<ruby>来<rt>く</rt></ruby>るから、<ruby>練習<rt>れんしゅう</rt></ruby>してるんだ。<br>*(Cảm ơn. Tháng sau Hương sang nên mình tập trước.)* |
| Dewi | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、リンちゃんなら<ruby>絶対<rt>ぜったい</rt></ruby>うまく<ruby>教<rt>おし</rt></ruby>えられるよ。<br>*(Yên tâm, Linh-chan chắc chắn dạy giỏi mà.)* |

---

## Tình huống 8 — Văn phòng farm · 15:00, gặp 監理員 Suzuki bàn về Hương

| Vai | Lời thoại |
|---|---|
| Suzuki | リンさん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいですか?<br>*(Linh-san, có một chút thời gian không?)* |
| Linh | はい、<ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, anh Suzuki, em xin phép ạ.)* |
| Suzuki | フォンさんの<ruby>件<rt>けん</rt></ruby>です。<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby><ruby>制度<rt>せいど</rt></ruby>での<ruby>1<rt>いち</rt></ruby><ruby>期生<rt>きせい</rt></ruby>になります。<br>*(Việc của Hương-san. Là khoá 1 theo chế độ Ikusei Shuurou.)* |
| Linh | あ、<ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>になるんですね。<ruby>私<rt>わたし</rt></ruby>は<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>のままですよね?<br>*(À, sẽ là chế độ mới ạ. Em vẫn TTS cũ đúng không ạ?)* |
| Suzuki | はい、リンさんは<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年契約<rt>ねんけいやく</rt></ruby>の<ruby>最後<rt>さいご</rt></ruby>までそのままです。<br>*(Vâng, Linh-san vẫn TTS đến hết hợp đồng 3 năm.)* |
| Linh | フォンさんと<ruby>制度<rt>せいど</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんですか?<br>*(Khác chế độ với Hương-san ạ?)* |
| Suzuki | <ruby>制度<rt>せいど</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>いますが、<ruby>仕事<rt>しごと</rt></ruby>と<ruby>生活<rt>せいかつ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じです。<ruby>気<rt>き</rt></ruby>にしないでください。<br>*(Chế độ khác nhưng công việc và sinh hoạt giống nhau. Đừng bận tâm.)* |
| Linh | わかりました。<ruby>指導員<rt>しどういん</rt></ruby>として<ruby>気<rt>き</rt></ruby>をつけることはありますか?<br>*(Em rõ rồi. Làm chỉ đạo viên cần lưu ý gì ạ?)* |
| Suzuki | <ruby>毎月<rt>まいつき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けてください。<ruby>体調<rt>たいちょう</rt></ruby>と<ruby>仕事<rt>しごと</rt></ruby>と<ruby>悩<rt>なや</rt></ruby>みを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Mỗi tháng ghi biên bản gặp mặt. Xác nhận sức khoẻ, công việc, và lo lắng.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。フォーマットをいただけますか?<br>*(Vâng, em rõ ạ. Anh cho em mẫu được không ạ?)* |
| Suzuki | はい、メールで<ruby>送<rt>おく</rt></ruby>ります。<br>*(Vâng, tôi gửi qua email.)* |

---

## Tình huống 9 — Bếp ký túc · 18:00, Dewi và Riko bàn dọn phòng đón Hương

| Vai | Lời thoại |
|---|---|
| Dewi | リンちゃん、フォンさんの<ruby>部屋<rt>へや</rt></ruby>、<ruby>準備<rt>じゅんび</rt></ruby>しようよ。<br>*(Linh-chan, phòng Hương-san, mình chuẩn bị thôi.)* |
| Linh | うん、<ruby>布団<rt>ふとん</rt></ruby>と<ruby>机<rt>つくえ</rt></ruby>と...<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>かな?<br>*(Ừ, futon và bàn và... cần gì nhỉ?)* |
| Riko | <ruby>初<rt>はじ</rt></ruby>めての<ruby>方<rt>かた</rt></ruby>には、<ruby>歯<rt>は</rt></ruby>ブラシとか、シャンプーとか、<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>分<ruby>用意<rt>ようい</rt></ruby>してあげると<ruby>嬉<rt>うれ</rt></ruby>しいですよ。<br>*(Người mới sang, bàn chải, dầu gội, chuẩn bị sẵn 1 tuần đầu là vui lắm đấy.)* |
| Linh | あ、<ruby>本当<rt>ほんとう</rt></ruby>そうですね。<ruby>私<rt>わたし</rt></ruby>も<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、<ruby>何<rt>なに</rt></ruby>も<ruby>持<rt>も</rt></ruby>っていなかったから。<br>*(À, đúng nhỉ. Lúc em đến cũng chẳng có gì.)* |
| Dewi | プトゥリ<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>に<ruby>洗剤<rt>せんざい</rt></ruby>くれたよ。<ruby>嬉<rt>うれ</rt></ruby>しかった。<br>*(Putri sempai cho em xà phòng. Vui lắm.)* |
| Linh | <ruby>次<rt>つぎ</rt></ruby>の<ruby>休<rt>やす</rt></ruby>みに、ドンキで<ruby>買<rt>か</rt></ruby>い<ruby>物<rt>もの</rt></ruby>しよう。<br>*(Nghỉ tới mình đi Don Quijote mua sắm nhé.)* |
| Riko | <ruby>日本<rt>にほん</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>もあげたらどう?<ruby>絵<rt>え</rt></ruby>のあるやつ。<br>*(Tặng sách Nhật cũng được nhỉ? Loại có tranh ấy.)* |
| Linh | いいですね。<ruby>私<rt>わたし</rt></ruby>が<ruby>使<rt>つか</rt></ruby>っていた<ruby>絵本<rt>えほん</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>します。<br>*(Hay đấy. Em sẽ đưa sách tranh em từng dùng.)* |
| Dewi | <ruby>楽<rt>たの</rt></ruby>しみだね。<br>*(Háo hức ghê.)* |

---

## Tình huống 10 — 第3ハウス · 19:00, Saori-san dạy cách quản lý nhật ký JAS

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、これがJAS<ruby>記録<rt>きろく</rt></ruby>ノートです。<br>*(Linh-chan, đây là sổ nhật ký JAS.)* |
| Linh | <ruby>厚<rt>あつ</rt></ruby>いですね。<ruby>毎日<rt>まいにち</rt></ruby><ruby>書<rt>か</rt></ruby>くんですか?<br>*(Dày nhỉ. Phải viết mỗi ngày ạ?)* |
| Saori | <ruby>毎日<rt>まいにち</rt></ruby>です。<ruby>作業<rt>さぎょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>、<ruby>使<rt>つか</rt></ruby>った<ruby>資材<rt>しざい</rt></ruby>、<ruby>天気<rt>てんき</rt></ruby>、<ruby>気温<rt>きおん</rt></ruby>、<ruby>担当者<rt>たんとうしゃ</rt></ruby>です。<br>*(Mỗi ngày. Nội dung công việc, vật tư đã dùng, thời tiết, nhiệt độ, người phụ trách.)* |
| Linh | 「<ruby>資材<rt>しざい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>のことですか?<br>*(資材 cụ thể là gì ạ?)* |
| Saori | <ruby>肥料<rt>ひりょう</rt></ruby>、<ruby>種<rt>たね</rt></ruby>、<ruby>苗<rt>なえ</rt></ruby>、ビニール、<ruby>農業<rt>のうぎょう</rt></ruby>で<ruby>使<rt>つか</rt></ruby>うものすべてです。<br>*(Phân, hạt, cây giống, ni lông, tất cả vật tư dùng trong nông nghiệp.)* |
| Linh | <ruby>肥料<rt>ひりょう</rt></ruby>と<ruby>種<rt>たね</rt></ruby>と<ruby>苗<rt>なえ</rt></ruby>、ということですね。<br>*(Là phân, hạt, và cây giống, đúng không ạ?)* |
| Saori | そう。<ruby>有機<rt>ゆうき</rt></ruby><ruby>肥料<rt>ひりょう</rt></ruby>しか<ruby>使<rt>つか</rt></ruby>えません。<ruby>名前<rt>なまえ</rt></ruby>、<ruby>量<rt>りょう</rt></ruby>、ロット<ruby>番号<rt>ばんごう</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Đúng. Chỉ dùng phân hữu cơ thôi. Phải viết tên, lượng, số lô.)* |
| Linh | <ruby>難<rt>むずか</rt></ruby>しそうですが、<ruby>毎日<rt>まいにち</rt></ruby><ruby>続<rt>つづ</rt></ruby>ければ<ruby>慣<rt>な</rt></ruby>れますね。<br>*(Khó nhỉ, nhưng mỗi ngày làm sẽ quen.)* |
| Saori | そうそう。<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>はいつでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Đúng vậy. Không hiểu thì cứ hỏi bất cứ lúc nào.)* |
| Linh | はい、ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Vâng, em cảm ơn chị đã chỉ bảo.)* |

---

## Tình huống 11 — Phòng Linh · 21:00, Zalo video với Hương lần đầu (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Hương ở Cần Thơ đang lo lắng vì sắp sang Nhật. Linh gọi trấn an.

| Vai | Lời thoại |
|---|---|
| Linh | Alo Hương, nghe được không em? Chị Linh đây. |
| Hương | Dạ chị, em nghe rõ. Em chào chị ạ. |
| Linh | Tháng sau em sang nhỉ. Lo không em? |
| Hương | Dạ em lo lắm chị. Tiếng Nhật em mới N5, sợ không hiểu sempai nói gì. |
| Linh | Chị cũng vậy lúc mới sang đấy. Sang đây em cứ nói "*sumimasen, mou ichido onegaishimasu*" — xin lỗi, làm ơn nói lại — là sempai lặp lại liền. |
| Hương | Vâng chị. Còn công việc nông trại em chưa làm bao giờ. |
| Linh | Yên tâm, *親方* Yamamoto rất tốt. *Saori-san* sempai năm 3 cũng dịu dàng. Chị làm chỉ đạo viên cho em, gọi là *shidouin* — 指導員. |
| Hương | Thật ạ? Vậy em yên tâm hẳn rồi chị. |
| Linh | Phòng em ở cùng chị, chị Dewi (Indonesia) và chị Riko (Nhật) phòng bên. Cả ba người đều dễ thương. |
| Hương | Em mang gì sang chị? |
| Linh | Mì gói, ruốc, cà phê G7 — quan trọng. Còn dầu gội, xà phòng bên này có hết, đừng nặng vali. À mang theo *zairyū card* sau khi nhập cảnh sẽ được phát ngay tại sân bay. |
| Hương | Vâng chị. Chế độ mới em sang sẽ là *Ikusei Shuurou* phải không chị? |
| Linh | Đúng rồi. *Ikusei Shuurou* — 育成就労. Khác chị một tí, nhưng công việc giống y. Em sau 1 năm có thể chuyển công ty, gọi là *tenseki* — 転籍. Chị thì hết hợp đồng 3 năm rồi mới được chuyển sang Tokutei Ginou. |
| Hương | Em hiểu rồi chị. Em sẽ cố. Chị ơi, em hỏi cái này được không... lương có đủ gửi về quê không chị? |
| Linh | Năm đầu lương sau khi trừ ký túc, ăn uống, bảo hiểm còn khoảng 12-13 man (24-26 triệu VNĐ). Gửi về 8-9 man được. Đừng tiêu lung tung là ổn. |
| Hương | Em cảm ơn chị nhiều. May có chị, em đỡ run hẳn rồi. |
| Linh | Đừng lo. Sang đây có chị. Hôm em đến chị nấu phở đón em nhé. |
| Hương | Hu hu chị tốt quá. Em chào chị, em đi học tiếng đây ạ. |

---

## Tình huống 12 — Bàn học phòng Linh · 22:30, ghi nhật ký sempai và lập kế hoạch tháng 5

| Vai | Lời thoại |
|---|---|
| Linh | (đọc nhẩm khi viết) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1日<rt>ついたち</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>。<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウス<ruby>担当<rt>たんとう</rt></ruby>になりました。<br>*(1/4, ngày đầu năm thứ 2. Mình được giao phụ trách nhà kính số 3.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>:<ruby>定植<rt>ていしょく</rt></ruby>・<ruby>受粉<rt>じゅふん</rt></ruby>・JAS<ruby>有機<rt>ゆうき</rt></ruby>・<ruby>資材<rt>しざい</rt></ruby>・<ruby>監査<rt>かんさ</rt></ruby>・<ruby>指導員<rt>しどういん</rt></ruby>・<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>・<ruby>転籍<rt>てんせき</rt></ruby>。<br>*(Từ học hôm nay: trồng cây giống, thụ phấn, JAS hữu cơ, vật tư, thanh tra, chỉ đạo viên, Ikusei Shuurou, chuyển công ty.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えた<ruby>表現<rt>ひょうげん</rt></ruby>:<ruby>精一杯<rt>せいいっぱい</rt></ruby>やらせていただきます・<ruby>相談<rt>そうだん</rt></ruby>させてください・〜ということでよろしいでしょうか・〜というのは<ruby>何<rt>なん</rt></ruby>のことですか・<ruby>心配<rt>しんぱい</rt></ruby>しないでくださいね。<br>*(Mẫu câu đã học: em xin làm hết sức, cho em được bàn, ~ đúng không ạ, ~ là gì, đừng lo.)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>:<ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby>フォン<ruby>到着<rt>とうちゃく</rt></ruby>、<ruby>14日<rt>じゅうよっか</rt></ruby><ruby>仕事<rt>しごと</rt></ruby><ruby>開始<rt>かいし</rt></ruby>、<ruby>中旬<rt>ちゅうじゅん</rt></ruby>JAS<ruby>監査<rt>かんさ</rt></ruby>。<br>*(Lịch tháng 5: 10/5 Hương đến, 14/5 bắt đầu việc, giữa tháng có thanh tra JAS.)* |
| Linh | <ruby>頑張<rt>がんば</rt></ruby>ろう、リン。<br>*(Cố lên, Linh.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá 2026, Linh học bộ mẫu câu sempai năm 2 trong môi trường nông trại Nhật: **chào năm mới với 親方 và sempai** (新年度もよろしくお願いいたします), **nhận trách nhiệm trưởng nhà kính** (承知しました・精一杯やらせていただきます), **xin bàn bạc lễ phép** (〜について相談させてください), **xác nhận lại lịch** (〜ということでよろしいでしょうか), **hỏi lại từ chuyên ngành** (〜というのは何のことですか), **cảm ơn chỉ bảo** (ご指導ありがとうございます). Đồng thời nắm khái niệm **JAS有機**, **資材**, **記録**, **受粉**, **定植** — bộ thuật ngữ nông nghiệp trồng dưa hấu trong ハウス. Phân biệt **技能実習** (Linh thuộc chế độ cũ) và **育成就労** (Hương khoá 1 chế độ mới) — biết khái niệm **転籍**. Cuối cùng tập kỹ năng người sempai-of-sempai: gọi trấn an kohai bằng tiếng Việt, chuẩn bị phòng và đồ dùng, làm chỉ đạo viên 指導員 ghi biên bản gặp mặt hàng tháng.

> Từ vựng & mẫu câu chương này: 新年度・第3ハウス・小玉スイカ・定植・受粉・手受粉・JAS有機・農薬・化学肥料・資材・監査・記録・指導員・育成就労・転籍・面談記録・新年度もよろしくお願いいたします・精一杯やらせていただきます・〜について相談させてください・〜ということでよろしいでしょうか・〜というのは何のことですか・心配しないでくださいね

## Bí quyết chương

- 「<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウス<ruby>担当<rt>たんとう</rt></ruby>」 = trưởng nhà kính. Trong nông trại Nhật, mỗi ハウス có 1 担当者 chịu trách nhiệm hoàn toàn.
- JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証<rt>にんしょう</rt></ruby> = chứng nhận hữu cơ quốc gia. Phải ghi nhật ký mỗi ngày: tên 資材, lượng, ロット<ruby>番号<rt>ばんごう</rt></ruby>.
- <ruby>定植<rt>ていしょく</rt></ruby> ≠ <ruby>種<rt>たね</rt></ruby>まき. 定植 = đem 苗 (cây giống đã ươm) ra ruộng chính. 種まき = gieo hạt vào khay ươm.
- <ruby>受粉<rt>じゅふん</rt></ruby> dưa hấu: thường thả ミツバチ (ong mật); thiếu thì <ruby>手<rt>て</rt></ruby><ruby>受粉<rt>じゅふん</rt></ruby> bằng tay. Phân biệt <ruby>雄花<rt>おばな</rt></ruby> (đực) và <ruby>雌花<rt>めばな</rt></ruby> (cái) qua phần phình dưới hoa.
- <ruby>指導員<rt>しどういん</rt></ruby> bắt buộc ghi <ruby>面談<rt>めんだん</rt></ruby><ruby>記録<rt>きろく</rt></ruby> hàng tháng: 体調・仕事・悩み.
- TTS cũ và Ikusei sống chung 1 nông trại — khác chế độ nhưng cùng công việc.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新年度 | しんねんど | TÂN NIÊN ĐỘ | Năm tài khoá mới (bắt đầu 1/4) |
| 二年目 | にねんめ | NHỊ NIÊN MỤC | Năm thứ hai |
| 満開 | まんかい | MÃN KHAI | Nở rộ |
| 親方 | おやかた | THÂN PHƯƠNG | Chủ nông trại, sư phụ |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 第3ハウス | だいさんハウス | ĐỆ TAM — | Nhà kính số 3 |
| 小玉スイカ | こだまスイカ | TIỂU NGỌC — | Dưa hấu kodama (giống nhỏ) |
| 収穫 | しゅうかく | THU HOẠCH | Thu hoạch |
| 承知 | しょうち | THỪA TRI | Hiểu rõ, vâng rõ |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức mình |
| 引き継ぎ | ひきつぎ | DẪN KẾ | Bàn giao |
| 専用 | せんよう | CHUYÊN DỤNG | Chuyên dùng |
| 定植 | ていしょく | ĐỊNH THỰC | Trồng cây giống ra ruộng chính |
| 苗 | なえ | MIÊU | Cây giống |
| 種まき | たねまき | CHỦNG — | Gieo hạt |
| 温度管理 | おんどかんり | ÔN ĐỘ QUẢN LÝ | Quản lý nhiệt độ |
| 水やり | みずやり | THUỶ — | Tưới nước |
| 受粉 | じゅふん | THỤ PHẤN | Thụ phấn |
| 手受粉 | てじゅふん | THỦ THỤ PHẤN | Thụ phấn bằng tay |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | Đoàn thể giám sát |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | Người hướng dẫn |
| 未経験 | みけいけん | VỊ KINH NGHIỆM | Chưa có kinh nghiệm |
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 故郷 | こきょう | CỐ HƯƠNG | Quê hương |
| 翌日 | よくじつ | DỰC NHẬT | Ngày hôm sau |
| 研修 | けんしゅう | NGHIÊN TU | Đào tạo, học việc |
| 認証 | にんしょう | NHẬN CHỨNG | Chứng nhận |
| 有機 | ゆうき | HỮU CƠ | Hữu cơ |
| 農薬 | のうやく | NÔNG DƯỢC | Thuốc trừ sâu, thuốc nông nghiệp |
| 化学肥料 | かがくひりょう | HOÁ HỌC PHÌ LIỆU | Phân bón hoá học |
| 農作物 | のうさくぶつ | NÔNG TÁC VẬT | Nông sản |
| 資材 | しざい | TƯ TÀI | Vật tư |
| 記録 | きろく | KÝ LỤC | Ghi chép, nhật ký |
| 監査 | かんさ | GIÁM TRA | Thanh tra |
| 監査員 | かんさいん | GIÁM TRA VIÊN | Kiểm toán viên |
| 雄花 | おばな | HÙNG HOA | Hoa đực |
| 雌花 | めばな | THƯ HOA | Hoa cái |
| 膨らみ | ふくらみ | — | Phần phình lên |
| 育成就労 | いくせいしゅうろう | DỤC THÀNH TỰU LAO | Ikusei Shuurou (chế độ mới) |
| 一期生 | いちきせい | NHẤT KỲ SINH | Khoá đầu tiên |
| 技能実習 | ぎのうじっしゅう | KỸ NĂNG THỰC TẬP | TTS (chế độ cũ) |
| 契約 | けいやく | KHẾ ƯỚC | Hợp đồng |
| 転籍 | てんせき | CHUYỂN TỊCH | Chuyển công ty |
| 面談記録 | めんだんきろく | DIỆN ĐÀM KÝ LỤC | Biên bản gặp mặt |
| 体調 | たいちょう | THỂ ĐIỀU | Sức khoẻ |
| 悩み | なやみ | NÃO — | Lo lắng, băn khoăn |
| 肥料 | ひりょう | PHÌ LIỆU | Phân bón |
| 種 | たね | CHỦNG | Hạt giống |
| 量 | りょう | LƯỢNG | Lượng |
| ロット番号 | ロットばんごう | — PHIÊN HIỆU | Số lô |
| 初日 | しょにち | SƠ NHẬT | Ngày đầu tiên |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000002, 800000041, NULL, 'markdown_book', 'T2. Kohai Hương đến (後輩フォン到着)', '# Sách thực tập sinh nông nghiệp · T2. Kohai Hương đến (後輩フォン到着)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp) đón kohai Hương đến nông trại Yamamoto vào ngày 10/5/2026. Học các mẫu hội thoại tiếng Nhật của sempai-of-sempai: giới thiệu kohai với 親方 và 先輩 (こちらが新人のフォンさんです), dạy kohai cách dùng kính ngữ với cấp trên (〜と申します), giải thích từng bước công việc khi dạy (まず〜してください・次に〜), khen kohai khi làm được (上手ですね・よくできました), nhắc nhở nhẹ nhàng khi sai (こうした方がいいですよ), báo cáo tiến độ kohai với 親方 (順調です・〜が課題です).

---

## Bối cảnh

Ngày 10 tháng 5 năm 2026. Hương (20 tuổi, Cần Thơ, N5, chưa từng làm nông) đến nông trại Yamamoto qua bus đoàn thể giám sát từ sân bay Narita. Sau 3 ngày đào tạo của 監理団体, Hương chính thức bắt đầu công việc tại 第3ハウス dưới sự hướng dẫn của Linh. Chương này tập trung mẫu câu sempai dạy kohai từ buổi đầu: giới thiệu, dắt tham quan, dạy kỹ năng cơ bản (sortえる cây giống, tưới nước, ghi nhật ký JAS), khen-nhắc đúng cách, báo cáo lại với 親方.

---

## Tình huống 1 — Cổng farm · 17:15, bus đoàn thể giám sát đến

| Vai | Lời thoại |
|---|---|
| Linh | (vẫy tay khi bus dừng) フォンさーん!こっちこっち!<br>*(Hương ơi! Đây này, đây!)* |
| Hương | (xuống bus, kéo vali) リンさん!<br>*(Chị Linh!)* |
| Linh | フォンさん、ようこそ。<ruby>長<rt>なが</rt></ruby>い<ruby>旅<rt>たび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hương, chào mừng. Đi đường dài vất vả rồi.)* |
| Hương | リンさん、ありがとうございます。とても<ruby>疲<rt>つか</rt></ruby>れました。<br>*(Chị Linh, em cảm ơn. Em rất mệt.)* |
| Suzuki | リンさん、フォンさんを<ruby>引<rt>ひ</rt></ruby>き<ruby>渡<rt>わた</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Linh-san, tôi bàn giao Hương-san. Nhờ em nhé.)* |
| Linh | <ruby>鈴木<rt>すずき</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>確<rt>たし</rt></ruby>かにお<ruby>受<rt>う</rt></ruby>けしました。<br>*(Anh Suzuki, vất vả rồi. Em đã nhận chắc chắn ạ.)* |
| Hương | <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Suzuki, em chân thành cảm ơn ạ.)* |
| Suzuki | フォンさん、<ruby>頑張<rt>がんば</rt></ruby>ってくださいね。<ruby>来月<rt>らいげつ</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>で<ruby>会<rt>あ</rt></ruby>いましょう。<br>*(Hương-san, cố gắng nhé. Tháng sau gặp lại ở buổi gặp mặt.)* |
| Hương | はい!<br>*(Vâng!)* |
| Linh | じゃ、まず<ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>って、<ruby>親方<rt>おやかた</rt></ruby>に<ruby>挨拶<rt>あいさつ</rt></ruby>しましょう。<br>*(Vậy đầu tiên đến văn phòng, chào親方 nhé.)* |

---

## Tình huống 2 — Văn phòng farm · 17:30, giới thiệu Hương với 親方 Yamamoto

*Linh dạy Hương cách tự giới thiệu lễ phép trước khi vào.*

| Vai | Lời thoại |
|---|---|
| Linh | (thì thầm với Hương trước khi vào) 「<ruby>初<rt>はじ</rt></ruby>めまして、フォンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」だけ<ruby>言<rt>い</rt></ruby>えばOKだよ。<br>*(Chỉ cần nói "Rất hân hạnh, em là Hương, mong được chỉ bảo" là được.)* |
| Hương | <ruby>申<rt>もう</rt></ruby>します...<ruby>申<rt>もう</rt></ruby>します...<br>*(Mou-shi-masu... mou-shi-masu...)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>失礼<rt>しつれい</rt></ruby>します!<br>*(Yên tâm. Xin phép!)* |
| Yamamoto | おう、リン、フォンさんか。<ruby>入<rt>はい</rt></ruby>ってくれ。<br>*(Ờ, Linh, Hương-san hả. Vào đi.)* |
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、こちらが<ruby>新人<rt>しんじん</rt></ruby>のフォンさんです。<br>*(Thưa親方, đây là người mới Hương.)* |
| Hương | (cúi đầu sâu) <ruby>初<rt>はじ</rt></ruby>めまして、フォンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Rất hân hạnh, em là Hương. Mong được chỉ bảo ạ.)* |
| Yamamoto | おう、よく<ruby>来<rt>き</rt></ruby>たな。<ruby>山本<rt>やまもと</rt></ruby>だ。これからよろしく。<ruby>困<rt>こま</rt></ruby>ったらリンに<ruby>聞<rt>き</rt></ruby>けよ。<br>*(Ờ, đến rồi à. Tôi là Yamamoto. Từ giờ nhờ em. Có khó hỏi Linh.)* |
| Hương | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>はもう<ruby>遅<rt>おそ</rt></ruby>い。ゆっくり<ruby>休<rt>やす</rt></ruby>めよ。<br>*(Hôm nay muộn rồi. Nghỉ ngơi đầy đủ nhé.)* |
| Linh | <ruby>失礼<rt>しつれい</rt></ruby>します。ありがとうございました。<br>*(Em xin phép. Em cảm ơn ạ.)* |

---

## Tình huống 3 — Phòng ký túc · 18:00, dẫn Hương về phòng, ăn phở

| Vai | Lời thoại |
|---|---|
| Linh | フォン、ここがお<ruby>部屋<rt>へや</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>部屋<rt>へや</rt></ruby>だよ。<br>*(Hương, đây là phòng. Cùng phòng với chị nhé.)* |
| Hương | わー、<ruby>広<rt>ひろ</rt></ruby>い!きれい!<br>*(Wow, rộng! Sạch sẽ!)* |
| Linh | <ruby>布団<rt>ふとん</rt></ruby>はこっち、<ruby>机<rt>つくえ</rt></ruby>はあっち。<ruby>必要<rt>ひつよう</rt></ruby>なものは<ruby>用意<rt>ようい</rt></ruby>してある。<br>*(Futon đằng này, bàn đằng kia. Đồ cần thiết chị chuẩn bị sẵn rồi.)* |
| Hương | (xúc động) <ruby>歯<rt>は</rt></ruby>ブラシも、シャンプーも...リンさん、ありがとうございます。<br>*(Bàn chải, dầu gội... chị Linh, em cảm ơn chị.)* |
| Linh | <ruby>気<rt>き</rt></ruby>にしないで。<ruby>私<rt>わたし</rt></ruby>も<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、サオリさんに<ruby>助<rt>たす</rt></ruby>けてもらった。<br>*(Đừng để bụng. Lúc chị mới sang Saori-san cũng giúp chị.)* |
| Hương | (tiếng Việt nhỏ) Chị Linh ơi em đói quá... |
| Linh | フォー<ruby>作<rt>つく</rt></ruby>っておいた。<ruby>食<rt>た</rt></ruby>べに<ruby>行<rt>い</rt></ruby>こう。<br>*(Chị nấu phở rồi. Đi ăn thôi.)* |
| Hương | え!フォー!<ruby>本当<rt>ほんとう</rt></ruby>に?<br>*(Ơ! Phở! Thật ạ?)* |
| Linh | デウィとリコも<ruby>待<rt>ま</rt></ruby>ってる。<br>*(Dewi và Riko cũng đang đợi.)* |

---

## Tình huống 4 — Bếp ký túc · 18:15, Hương chào bạn cùng ký túc

| Vai | Lời thoại |
|---|---|
| Dewi | フォンちゃーん!<ruby>初<rt>はじ</rt></ruby>めまして、デウィです。インドネシアから<ruby>来<rt>き</rt></ruby>ました。<br>*(Hương-chan ơi! Rất hân hạnh, tôi là Dewi. Từ Indonesia đến.)* |
| Hương | デウィさん、<ruby>初<rt>はじ</rt></ruby>めまして、フォンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Dewi-san, rất hân hạnh, em là Hương.)* |
| Riko | <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>佐藤<rt>さとう</rt></ruby>リコです。<ruby>日本人<rt>にほんじん</rt></ruby>です。よろしくね。<br>*(Rất hân hạnh, tôi là Riko Sato. Người Nhật. Nhờ em nhé.)* |
| Hương | リコさん、<ruby>日本語<rt>にほんご</rt></ruby>がまだ<ruby>下手<rt>へた</rt></ruby>です。すみません。<br>*(Chị Riko, tiếng Nhật em còn dở. Em xin lỗi.)* |
| Riko | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>!ゆっくり<ruby>話<rt>はな</rt></ruby>すから、<ruby>心配<rt>しんぱい</rt></ruby>しないでね。<br>*(Không sao! Chị sẽ nói chậm, đừng lo.)* |
| Dewi | フォンちゃん、フォー<ruby>食<rt>た</rt></ruby>べよう!<ruby>私<rt>わたし</rt></ruby>たちも<ruby>大好<rt>だいす</rt></ruby>き。<br>*(Hương-chan, ăn phở thôi! Tụi mình cũng thích lắm.)* |
| Hương | リンさんのフォー、おいしい!<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>!<br>*(Phở chị Linh, ngon! Vị quê!)* |
| Linh | よかった。<ruby>明日<rt>あした</rt></ruby>から<ruby>頑張<rt>がんば</rt></ruby>ろうね。<br>*(May quá. Mai bắt đầu cố gắng nhé.)* |

---

## Tình huống 5 — 第3ハウス · 14/5 sáng 6:30, Linh giới thiệu nhà kính cho Hương

*Sau 3 ngày đào tạo, Hương bắt đầu công việc đầu tiên ở farm.*

| Vai | Lời thoại |
|---|---|
| Linh | フォン、ここが<ruby>私<rt>わたし</rt></ruby>たちの<ruby>働<rt>はたら</rt></ruby>く<ruby>場所<rt>ばしょ</rt></ruby>、<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウス。<br>*(Hương, đây là nơi mình làm việc, nhà kính số 3.)* |
| Hương | <ruby>大<rt>おお</rt></ruby>きいですね!<ruby>暑<rt>あつ</rt></ruby>い...<br>*(To quá! Nóng...)* |
| Linh | <ruby>朝<rt>あさ</rt></ruby>でもこの<ruby>暑<rt>あつ</rt></ruby>さ。<ruby>水分<rt>すいぶん</rt></ruby><ruby>補給<rt>ほきゅう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れないでね。<br>*(Sáng còn nóng thế này. Đừng quên uống nước nhé.)* |
| Hương | はい。<br>*(Vâng.)* |
| Linh | これが<ruby>小玉<rt>こだま</rt></ruby>スイカの<ruby>苗<rt>なえ</rt></ruby>。これから<ruby>定植<rt>ていしょく</rt></ruby>します。<br>*(Đây là cây giống dưa hấu kodama. Từ giờ đem trồng ra ruộng.)* |
| Hương | 「<ruby>定植<rt>ていしょく</rt></ruby>」って<ruby>何<rt>なん</rt></ruby>ですか?<br>*(定植 là gì ạ?)* |
| Linh | <ruby>苗<rt>なえ</rt></ruby>を<ruby>本<rt>ほん</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>に<ruby>植<rt>う</rt></ruby>えること。<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>わからなかった。<br>*(Trồng cây giống ra ruộng chính. Hồi đầu chị cũng chưa biết.)* |
| Hương | リンさんも<ruby>同<rt>おな</rt></ruby>じ?<br>*(Chị Linh cũng vậy?)* |
| Linh | うん。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じだった。だから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。ゆっくり<ruby>覚<rt>おぼ</rt></ruby>えよう。<br>*(Ừ. Một năm trước, giống y. Vì vậy yên tâm. Học từ từ thôi.)* |

---

## Tình huống 6 — 第3ハウス · 7:00, dạy cách trồng cây giống (bước-1-bước-2)

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>定植<rt>ていしょく</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えます。よく<ruby>見<rt>み</rt></ruby>てね。<br>*(Chị chỉ cách trồng cây nhé. Nhìn kỹ.)* |
| Hương | はい!<br>*(Vâng!)* |
| Linh | まず、<ruby>土<rt>つち</rt></ruby>に<ruby>穴<rt>あな</rt></ruby>を<ruby>掘<rt>ほ</rt></ruby>ります。<ruby>深<rt>ふか</rt></ruby>さはこのくらい。<br>*(Đầu tiên, đào hố trong đất. Sâu cỡ này.)* |
| Linh | <ruby>次<rt>つぎ</rt></ruby>に、ポットから<ruby>苗<rt>なえ</rt></ruby>を<ruby>優<rt>やさ</rt></ruby>しく<ruby>出<rt>だ</rt></ruby>します。<ruby>根<rt>ね</rt></ruby>を<ruby>傷<rt>きず</rt></ruby>つけないように。<br>*(Tiếp theo, lấy cây giống ra khỏi chậu nhẹ nhàng. Đừng làm tổn thương rễ.)* |
| Linh | それから、<ruby>穴<rt>あな</rt></ruby>に<ruby>入<rt>い</rt></ruby>れて、<ruby>土<rt>つち</rt></ruby>をかけます。<ruby>強<rt>つよ</rt></ruby>く<ruby>押<rt>お</rt></ruby>さない。<br>*(Sau đó cho vào hố, lấp đất. Đừng ấn mạnh.)* |
| Linh | <ruby>最後<rt>さいご</rt></ruby>に、<ruby>水<rt>みず</rt></ruby>をたっぷりやります。これで<ruby>完成<rt>かんせい</rt></ruby>。<ruby>分<rt>わ</rt></ruby>かった?<br>*(Cuối cùng, tưới nước đẫm. Xong. Hiểu chưa?)* |
| Hương | はい、<ruby>分<rt>わ</rt></ruby>かりました。やってみてもいいですか?<br>*(Vâng, em hiểu rồi. Em thử được không?)* |
| Linh | もちろん。やってみて。<br>*(Tất nhiên. Làm thử đi.)* |
| Hương | (làm chậm) こう?<br>*(Thế này?)* |
| Linh | <ruby>上手<rt>じょうず</rt></ruby>!でもね、<ruby>根<rt>ね</rt></ruby>がもう<ruby>少<rt>すこ</rt></ruby>し<ruby>深<rt>ふか</rt></ruby>いほうがいいですよ。<br>*(Giỏi! Nhưng mà rễ nên sâu hơn một chút nữa.)* |
| Hương | あ、こうですか?<br>*(À, thế này ạ?)* |
| Linh | はい、ちょうどいい。よくできました!<br>*(Vâng, vừa đúng. Làm tốt lắm!)* |

---

## Tình huống 7 — 第3ハウス · 9:00, Saori-san đến kiểm tra, Hương chào sempai

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>進<rt>すす</rt></ruby>み<ruby>具合<rt>ぐあい</rt></ruby>はどう?<br>*(Linh-chan, tiến độ thế nào?)* |
| Linh | サオリさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。フォン、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>挨拶<rt>あいさつ</rt></ruby>を。<br>*(Saori-san, vất vả ạ. Hương, chào chị sempai Sato đi.)* |
| Hương | (cúi sâu) <ruby>初<rt>はじ</rt></ruby>めまして、フォンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Rất hân hạnh, em là Hương. Mong chị chỉ bảo ạ.)* |
| Saori | フォンさん、ようこそ。<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>困<rt>こま</rt></ruby>ったら<ruby>私<rt>わたし</rt></ruby>にも<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Hương-san, chào mừng. Chị là Sato. Có khó cứ hỏi chị nhé.)* |
| Saori | (xem cây) リンちゃん、フォンさん、<ruby>定植<rt>ていしょく</rt></ruby>きれいにできてますね。<br>*(Linh-chan, Hương-san, trồng cây gọn gàng đấy.)* |
| Linh | ありがとうございます。フォンが<ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>植<rt>う</rt></ruby>えました。<br>*(Cảm ơn chị. Hương trồng được 10 cây rồi.)* |
| Saori | フォンさん、<ruby>初日<rt>しょにち</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>はすごいですよ。<br>*(Hương-san, ngày đầu trồng 10 cây là giỏi đấy.)* |
| Hương | リンさんが<ruby>優<rt>やさ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてくれましたから。<br>*(Vì chị Linh chỉ ân cần lắm.)* |
| Saori | リンちゃんも<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>先輩<rt>せんぱい</rt></ruby>になりましたね。<br>*(Linh-chan đã thành sempai đáng nể rồi.)* |
| Linh | (đỏ mặt) いえいえ、まだまだです。<br>*(Không, không, em còn phải học nhiều.)* |

---

## Tình huống 8 — 第3ハウス · 10:30, dạy ghi nhật ký JAS

| Vai | Lời thoại |
|---|---|
| Linh | フォン、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>がもう<ruby>一<rt>ひと</rt></ruby>つ。JAS<ruby>記録<rt>きろく</rt></ruby>ノート。<br>*(Hương, có một việc quan trọng nữa. Sổ nhật ký JAS.)* |
| Hương | 「JAS」って<ruby>何<rt>なん</rt></ruby>ですか?<br>*(JAS là gì ạ?)* |
| Linh | <ruby>日本<rt>にほん</rt></ruby>の<ruby>有機<rt>ゆうき</rt></ruby><ruby>農産物<rt>のうさんぶつ</rt></ruby>の<ruby>認証<rt>にんしょう</rt></ruby>。<ruby>農薬<rt>のうやく</rt></ruby>と<ruby>化学<rt>かがく</rt></ruby><ruby>肥料<rt>ひりょう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わない。<br>*(Chứng nhận nông sản hữu cơ của Nhật. Không dùng thuốc trừ sâu và phân hoá học.)* |
| Hương | <ruby>普通<rt>ふつう</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>うんですね。<br>*(Khác bình thường nhỉ.)* |
| Linh | そう。<ruby>毎日<rt>まいにち</rt></ruby><ruby>記録<rt>きろく</rt></ruby>をつけないといけません。<ruby>書<rt>か</rt></ruby>くのは<ruby>四<rt>よっ</rt></ruby>つ。<ruby>日付<rt>ひづけ</rt></ruby>、<ruby>作業<rt>さぎょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>、<ruby>使<rt>つか</rt></ruby>った<ruby>資材<rt>しざい</rt></ruby>、<ruby>担当者<rt>たんとうしゃ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>。<br>*(Đúng. Mỗi ngày phải ghi. Viết 4 điểm. Ngày, nội dung công việc, vật tư đã dùng, tên người phụ trách.)* |
| Hương | <ruby>難<rt>むずか</rt></ruby>しそう...<br>*(Trông khó...)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>例<rt>たと</rt></ruby>えば<ruby>今日<rt>きょう</rt></ruby>:「<ruby>5<rt>ご</rt></ruby>/<ruby>14<rt>じゅうよん</rt></ruby>、<ruby>定植<rt>ていしょく</rt></ruby>、<ruby>苗<rt>なえ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>、フォン・リン」。<br>*(Yên tâm. Ví dụ hôm nay: "14/5, trồng cây, 10 cây giống, Hương・Linh".)* |
| Hương | あ、そう<ruby>書<rt>か</rt></ruby>けばいいですね。<br>*(À, viết thế là được nhỉ.)* |
| Linh | やってみて。<br>*(Thử viết đi.)* |
| Hương | (viết) こうですか?<br>*(Thế này ạ?)* |
| Linh | <ruby>上手<rt>じょうず</rt></ruby>!でも<ruby>字<rt>じ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さい。<ruby>監査員<rt>かんさいん</rt></ruby>さんが<ruby>読<rt>よ</rt></ruby>めるように、<ruby>大<rt>おお</rt></ruby>きく<ruby>書<rt>か</rt></ruby>いた<ruby>方<rt>ほう</rt></ruby>がいいですよ。<br>*(Giỏi! Nhưng chữ nhỏ quá. Để kiểm toán viên đọc được, nên viết to hơn.)* |
| Hương | はい!<br>*(Vâng!)* |

---

## Tình huống 9 — Phòng giải lao · 12:00, ăn trưa, Hương hỏi Linh chuyện văn hoá

| Vai | Lời thoại |
|---|---|
| Hương | リンさん、<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Chị Linh, em hỏi được không?)* |
| Linh | もちろん、<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いて。<br>*(Tất nhiên, hỏi gì cũng được.)* |
| Hương | さっき<ruby>親方<rt>おやかた</rt></ruby>に「<ruby>承知<rt>しょうち</rt></ruby>しました」って<ruby>言<rt>い</rt></ruby>いましたよね。なんで「わかりました」じゃないんですか?<br>*(Nãy với親方 chị nói "shouchi shimashita". Sao không phải "wakarimashita"?)* |
| Linh | いい<ruby>質問<rt>しつもん</rt></ruby>。「<ruby>承知<rt>しょうち</rt></ruby>しました」は<ruby>目上<rt>めうえ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う。「わかりました」は<ruby>友達<rt>ともだち</rt></ruby>レベル。<br>*(Câu hỏi hay. "Shouchi shimashita" dùng với người trên. "Wakarimashita" mức bạn bè.)* |
| Hương | じゃあ、<ruby>親方<rt>おやかた</rt></ruby>とサオリさんには「<ruby>承知<rt>しょうち</rt></ruby>しました」、デウィさんには「わかった」?<br>*(Vậy với親方 và Saori-san dùng "shouchi shimashita", với Dewi-san dùng "wakatta"?)* |
| Linh | そのとおり!よくわかったね。<br>*(Đúng! Em hiểu nhanh đấy.)* |
| Hương | リンさんには?<br>*(Với chị Linh thì sao?)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>はベトナム<ruby>人<rt>じん</rt></ruby>だし、<ruby>同<rt>おな</rt></ruby>じ<ruby>部屋<rt>へや</rt></ruby>。「わかった」でいいよ。でも<ruby>仕事<rt>しごと</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>丁寧<rt>ていねい</rt></ruby>に「わかりました」かな。<br>*(Chị là người Việt, cùng phòng. "Wakatta" được. Nhưng lúc làm việc lễ phép hơn thì "wakarimashita".)* |
| Hương | わかりました!<br>*(Vâng ạ!)* |
| Linh | (cười) はい、それでいいよ。<br>*(Ừ, vậy là được.)* |

---

## Tình huống 10 — 第3ハウス · 14:00, Hương sai cách tưới — Linh nhắc nhở nhẹ

| Vai | Lời thoại |
|---|---|
| Linh | フォン、ちょっと<ruby>待<rt>ま</rt></ruby>って。<ruby>水<rt>みず</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>うかな。<br>*(Hương, đợi chút. Cách tưới nước hơi khác đấy.)* |
| Hương | え、<ruby>間違<rt>まちが</rt></ruby>えました?<br>*(Ơ, em sai ạ?)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>怒<rt>おこ</rt></ruby>ってないよ。<ruby>葉<rt>は</rt></ruby>っぱに<ruby>水<rt>みず</rt></ruby>をかけると<ruby>病気<rt>びょうき</rt></ruby>になりやすい。<ruby>根元<rt>ねもと</rt></ruby>に<ruby>水<rt>みず</rt></ruby>をやった<ruby>方<rt>ほう</rt></ruby>がいいですよ。<br>*(Không sao, chị không giận. Tưới lên lá thì cây dễ bị bệnh. Tưới gốc thì tốt hơn.)* |
| Hương | あ、<ruby>知<rt>し</rt></ruby>りませんでした。<ruby>葉<rt>は</rt></ruby>っぱはダメですね。<br>*(À, em không biết. Lá không được nhỉ.)* |
| Linh | スイカは<ruby>特<rt>とく</rt></ruby>に<ruby>葉<rt>は</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いから。<ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>く、<ruby>根元<rt>ねもと</rt></ruby>に、たっぷり。これが<ruby>三<rt>みっ</rt></ruby>つのコツ。<br>*(Dưa hấu đặc biệt yếu lá. Sáng sớm, ở gốc, đẫm. Đó là 3 bí quyết.)* |
| Hương | <ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>く・<ruby>根元<rt>ねもと</rt></ruby>に・たっぷり、ですね。メモします。<br>*(Sáng sớm, gốc, đẫm, em ghi lại.)* |
| Linh | やってみて。<br>*(Làm thử đi.)* |
| Hương | (tưới lại) こう?<br>*(Thế này?)* |
| Linh | はい、<ruby>完璧<rt>かんぺき</rt></ruby>!よくできました。<br>*(Vâng, hoàn hảo! Làm tốt lắm.)* |
| Hương | リンさん、<ruby>怒<rt>おこ</rt></ruby>らないで<ruby>教<rt>おし</rt></ruby>えてくれて、ありがとうございます。<br>*(Chị Linh, cảm ơn chị không la mà chỉ em.)* |
| Linh | <ruby>当然<rt>とうぜん</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はたくさん<ruby>間違<rt>まちが</rt></ruby>えたから。<br>*(Đương nhiên thôi. Chị lúc đầu cũng sai nhiều mà.)* |

---

## Tình huống 11 — Văn phòng farm · 17:00, Linh báo cáo tiến độ Hương với 親方

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。フォンの<ruby>初日<rt>しょにち</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Thưa親方, em xin phép. Báo cáo ngày đầu của Hương ạ.)* |
| Yamamoto | おう、<ruby>座<rt>すわ</rt></ruby>って。どうだった?<br>*(Ờ, ngồi đi. Thế nào?)* |
| Linh | <ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>定植<rt>ていしょく</rt></ruby>を<ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>、<ruby>水<rt>みず</rt></ruby>やりとJAS<ruby>記録<rt>きろく</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Suôn sẻ ạ. Trồng được 10 cây, tưới nước và nhật ký JAS cũng đã học.)* |
| Yamamoto | <ruby>初日<rt>しょにち</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>か、いいな。<br>*(Ngày đầu 10 cây, tốt đấy.)* |
| Linh | はい。<ruby>真面目<rt>まじめ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えが<ruby>早<rt>はや</rt></ruby>いです。ただ、<ruby>水<rt>みず</rt></ruby>やりで<ruby>葉<rt>は</rt></ruby>っぱに<ruby>水<rt>みず</rt></ruby>をかけてしまったので、<ruby>注意<rt>ちゅうい</rt></ruby>しました。<br>*(Vâng. Nghiêm túc và học nhanh. Chỉ có khi tưới nước tưới phải lá nên em đã nhắc.)* |
| Yamamoto | そうか。それは<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>はやる。<ruby>課題<rt>かだい</rt></ruby>は?<br>*(Vậy à. Cái đó ai cũng bị lúc đầu. Còn vấn đề gì không?)* |
| Linh | <ruby>日本語<rt>にほんご</rt></ruby>がN5なので、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>用語<rt>ようご</rt></ruby>がまだ<ruby>分<rt>わ</rt></ruby>かりません。これが<ruby>課題<rt>かだい</rt></ruby>です。<br>*(Tiếng Nhật N5 nên thuật ngữ công việc em ấy chưa hiểu. Đó là vấn đề.)* |
| Yamamoto | リンが<ruby>横<rt>よこ</rt></ruby>にいるから<ruby>安心<rt>あんしん</rt></ruby>だ。ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>してもいいよ。<br>*(Có Linh bên cạnh là yên tâm rồi. Giải thích bằng tiếng Việt cũng được.)* |
| Linh | はい、ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Vâng, em cảm ơn ông đã chỉ bảo.)* |
| Yamamoto | また<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>したら<ruby>報告<rt>ほうこく</rt></ruby>くれ。お<ruby>疲<rt>つか</rt></ruby>れさん。<br>*(Một tuần nữa lại báo cáo. Vất vả rồi.)* |
| Linh | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |

---

## Tình huống 12 — Bếp ký túc · 20:30, Hương gọi điện về VN (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Hương gọi về cho mẹ ở Cần Thơ kể về ngày đầu.

| Vai | Lời thoại |
|---|---|
| Hương | Alo mẹ ơi, con đây ạ! |
| Mẹ Hương | Con khoẻ không? Đến nơi an toàn không con? |
| Hương | Dạ con khoẻ. Hôm nay là ngày đầu con làm ở nông trại. Mẹ, ở đây tốt lắm. |
| Mẹ Hương | Có ai chỉ con không? |
| Hương | Có chị Linh, sempai người Việt, người Đồng Tháp. Chị làm chỉ đạo viên — họ gọi là *shidouin* — 指導員 cho con. Tối qua chị nấu phở cho con ăn. |
| Mẹ Hương | May quá con. Công việc khó không? |
| Hương | Khó nhưng học được mẹ ạ. Hôm nay con học trồng cây dưa hấu — gọi là *teishoku* — 定植. Trồng được 10 cây! Bác chủ — gọi là *親方 (oyakata)* khen luôn. |
| Mẹ Hương | Giỏi quá con! |
| Hương | Còn phải ghi nhật ký mỗi ngày, gọi là *JAS有機 (yuuki)* — chứng nhận hữu cơ. Không được dùng phân hoá học, gọi là *化学肥料 (kagaku hiryou)*. Khó nhớ lắm mẹ. |
| Mẹ Hương | Từ từ con. Nhớ giữ sức khoẻ. |
| Hương | Có chị Dewi (Indonesia) và chị Riko (Nhật) cùng ký túc. Ai cũng dễ thương. À, bác chủ Yamamoto giải thích con thuộc chế độ mới — *Ikusei Shuurou* (育成就労). Sau 1 năm con có thể chuyển công ty nếu muốn, gọi là *tenseki* (転籍). Nhưng con thấy chỗ này tốt, con không định chuyển đâu. |
| Mẹ Hương | Ừ, giữ chỗ tốt là quan trọng nhất. |
| Hương | Hôm nay con tưới sai cách, đổ nước lên lá. Chị Linh không la đâu mẹ. Chị chỉ nói "*koushita hou ga ii desu yo*" — làm thế này thì tốt hơn. Chị tốt thật mẹ ạ. |
| Mẹ Hương | Phước nhà mình con gặp người tốt. Cố lên con. |
| Hương | Vâng mẹ. Mai con dậy 5h. Con đi ngủ đây ạ. |

---

## Tình huống 13 — Phòng Linh · 21:30, Linh ghi nhật ký chỉ đạo viên đầu tiên

| Vai | Lời thoại |
|---|---|
| Linh | (viết sổ面談記録) <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>14日<rt>じゅうよっか</rt></ruby>、フォンさん<ruby>初日<rt>しょにち</rt></ruby>。<br>*(14/5, ngày đầu của Hương.)* |
| Linh | <ruby>体調<rt>たいちょう</rt></ruby>:<ruby>良好<rt>りょうこう</rt></ruby>、<ruby>長旅<rt>ながたび</rt></ruby>の<ruby>疲<rt>つか</rt></ruby>れあり。<ruby>仕事<rt>しごと</rt></ruby>:<ruby>定植<rt>ていしょく</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>、<ruby>水<rt>みず</rt></ruby>やり、JAS<ruby>記録<rt>きろく</rt></ruby>。<ruby>悩<rt>なや</rt></ruby>み:<ruby>日本語<rt>にほんご</rt></ruby><ruby>用語<rt>ようご</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい。<br>*(Sức khoẻ tốt, mệt do đi đường dài. Việc: trồng 10 cây, tưới nước, ghi JAS. Lo: thuật ngữ tiếng Nhật khó.)* |
| Linh | <ruby>今日<rt>きょう</rt></ruby><ruby>使<rt>つか</rt></ruby>った<ruby>表現<rt>ひょうげん</rt></ruby>:こちらが<ruby>新人<rt>しんじん</rt></ruby>のフォンさんです・まず〜<ruby>次<rt>つぎ</rt></ruby>に〜・<ruby>上手<rt>じょうず</rt></ruby>ですね・こうした<ruby>方<rt>ほう</rt></ruby>がいいですよ・<ruby>順調<rt>じゅんちょう</rt></ruby>です・<ruby>課題<rt>かだい</rt></ruby>は<ruby>用語<rt>ようご</rt></ruby>です。<br>*(Mẫu câu đã dùng: đây là người mới Hương, đầu tiên ~ tiếp theo ~, giỏi đấy, làm thế này thì tốt hơn, suôn sẻ, vấn đề là thuật ngữ.)* |
| Linh | <ruby>明日<rt>あした</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>:<ruby>定植<rt>ていしょく</rt></ruby><ruby>続<rt>つづ</rt></ruby>き、<ruby>手<rt>て</rt></ruby><ruby>受粉<rt>じゅふん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる。<br>*(Lịch mai: tiếp tục trồng, cho xem thụ phấn bằng tay.)* |
| Linh | フォン、よく<ruby>頑張<rt>がんば</rt></ruby>った。<ruby>私<rt>わたし</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Hương, cố gắng tốt lắm. Mình cũng phải cố.)* |

---

## Đọng lại chương 2

Ngày đón Hương 10/5/2026 và ngày đầu công việc 14/5, Linh học bộ mẫu câu sempai-of-sempai trong nông trại Nhật: **giới thiệu kohai với 親方 và 先輩** (こちらが新人のフォンさんです), **dạy kohai tự giới thiệu** (〜と申します), **dạy kỹ năng theo bước** (まず〜・次に〜・それから〜・最後に〜), **khen kohai** (上手ですね・よくできました・完璧!), **nhắc nhở nhẹ nhàng** (こうした方がいいですよ・少し違うかな), **báo cáo tiến độ kohai** với 親方 (順調です・課題は〜です・ご報告いたします). Đồng thời nắm thuật ngữ JAS hữu cơ qua thực hành: **定植** (trồng cây giống), **根元** (gốc cây), **JAS記録ノート** với 4 mục bắt buộc (ngày, công việc, vật tư, người làm). Đặc biệt học bài học văn hoá cách dùng kính ngữ phân tầng: **承知しました** (với 親方・先輩) ≠ **わかりました** (với đồng lứa) ≠ **わかった** (với bạn cùng phòng).

> Từ vựng & mẫu câu chương này: 新人・申します・引き渡す・初日・定植・根元・葉っぱ・水やり・JAS記録ノート・有機農産物・課題・順調・面談記録・こちらが新人の〜です・まず〜次に〜・上手ですね・よくできました・こうした方がいいですよ・少し違うかな・順調です・課題は〜です・ご報告いたします・心配しないでね

## Bí quyết chương

- <ruby>新人<rt>しんじん</rt></ruby> = người mới. Khi giới thiệu kohai luôn dùng cấu trúc 「こちらが<ruby>新人<rt>しんじん</rt></ruby>の〜さんです」.
- Dạy nghề Nhật theo bộ 4: **まず → 次に → それから → 最後に**. Kohai nhớ thứ tự dễ hơn.
- Khen → nhắc → khen lại: 上手ですね → でも〜した方がいいですよ → よくできました. KHÔNG la, KHÔNG quát.
- Tưới dưa hấu: <ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>く・<ruby>根元<rt>ねもと</rt></ruby>に・たっぷり. Tưới lá → cây dễ bệnh.
- Phân tầng kính ngữ: 承知しました (kính) > わかりました (lễ phép) > わかった (thân). Dạy kohai nhận đối tượng để chọn từ.
- Báo cáo kohai với 親方 theo cấu trúc 3 phần: 順調 / 課題 / 来週予定.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 引き渡し | ひきわたし | DẪN DOẠN | Bàn giao (người) |
| 確かに | たしかに | XÁC — | Chắc chắn, đúng vậy |
| 申す | もうす | THÂN | Nói (khiêm nhường ngữ) |
| 失礼します | しつれいします | THẤT LỄ — | Xin phép (vào/ra) |
| 布団 | ふとん | BỐ ĐOÀN | Chăn nệm Nhật |
| 必要 | ひつよう | TẤT YẾU | Cần thiết |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 故郷 | こきょう | CỐ HƯƠNG | Quê hương |
| 場所 | ばしょ | TRƯỜNG SỞ | Nơi chốn |
| 水分補給 | すいぶんほきゅう | THUỶ PHẦN BỔ CẤP | Bổ sung nước (cho cơ thể) |
| 定植 | ていしょく | ĐỊNH THỰC | Trồng cây giống ra ruộng |
| 苗 | なえ | MIÊU | Cây giống |
| 穴 | あな | HUYỆT | Lỗ, hố |
| 深さ | ふかさ | THÂM — | Độ sâu |
| 根 | ね | CĂN | Rễ |
| 根元 | ねもと | CĂN NGUYÊN | Gốc cây |
| 傷つける | きずつける | THƯƠNG — | Làm tổn thương |
| 完成 | かんせい | HOÀN THÀNH | Hoàn thành |
| 上手 | じょうず | THƯỢNG THỦ | Giỏi, khéo |
| 進み具合 | すすみぐあい | TIẾN — — | Tiến độ |
| 立派 | りっぱ | LẬP PHÁI | Đáng nể, xuất sắc |
| 葉っぱ | はっぱ | DIỆP — | Lá cây |
| 病気 | びょうき | BỆNH KHÍ | Bệnh |
| 弱い | よわい | NHƯỢC | Yếu |
| 朝早く | あさはやく | TRIÊU TẢO — | Sáng sớm |
| たっぷり | — | — | Đẫm, đầy đủ |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | Đương nhiên |
| 記録 | きろく | KÝ LỤC | Ghi chép |
| 認証 | にんしょう | NHẬN CHỨNG | Chứng nhận |
| 有機 | ゆうき | HỮU CƠ | Hữu cơ |
| 農産物 | のうさんぶつ | NÔNG SẢN VẬT | Nông sản |
| 農薬 | のうやく | NÔNG DƯỢC | Thuốc trừ sâu |
| 化学肥料 | かがくひりょう | HOÁ HỌC PHÌ LIỆU | Phân bón hoá học |
| 日付 | ひづけ | NHẬT PHÓ | Ngày tháng |
| 作業内容 | さぎょうないよう | TÁC NGHIỆP NỘI DUNG | Nội dung công việc |
| 資材 | しざい | TƯ TÀI | Vật tư |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | Người phụ trách |
| 監査員 | かんさいん | GIÁM TRA VIÊN | Kiểm toán viên |
| 目上 | めうえ | MỤC THƯỢNG | Người trên (cấp trên/sempai) |
| 丁寧 | ていねい | ĐINH NINH | Lễ phép, lịch sự |
| 間違える | まちがえる | GIAN VI — | Sai, nhầm |
| 順調 | じゅんちょう | THUẬN ĐIỀU | Suôn sẻ |
| 用語 | ようご | DỤNG NGỮ | Thuật ngữ |
| 課題 | かだい | KHOÁ ĐỀ | Vấn đề, đề tài |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 面談記録 | めんだんきろく | DIỆN ĐÀM KÝ LỤC | Biên bản gặp mặt |
| 体調 | たいちょう | THỂ ĐIỀU | Sức khoẻ |
| 良好 | りょうこう | LƯƠNG HẢO | Tốt |
| 悩み | なやみ | NÃO — | Lo lắng |
| 長旅 | ながたび | TRƯỜNG LỮ | Đi đường dài |
| 真面目 | まじめ | CHÂN DIỆN MỤC | Nghiêm túc |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000003, 800000041, NULL, 'markdown_book', 'T3. Thanh tra JAS hữu cơ (JAS有機認証監査)', '# Sách thực tập sinh nông nghiệp · T3. Thanh tra JAS hữu cơ (JAS有機認証監査)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, N4→N3) chuẩn bị hồ sơ và đón đoàn thanh tra JAS有機 cùng Saori-san vào cuối tháng 5/2026. Học các mẫu hội thoại tiếng Nhật chuyên ngành nông nghiệp hữu cơ: trao đổi tài liệu với sempai (〜のファイルをご確認いただけますか), giải thích lưu trình resource cho kiểm toán viên (こちらが〜の記録です), trả lời câu hỏi nghiệp vụ kiểu hỏi-đáp formal (お答えいたします・〜と認識しております), nhận chỉ ra sai sót và cam kết sửa (申し訳ございません・改善いたします), cảm ơn sau khi thanh tra kết thúc (お忙しい中ありがとうございました).

---

## Bối cảnh

Cuối tháng 5 năm 2026. Sau khi Hương đã ổn định ở 第3ハウス, Saori-san chuyển trọng tâm sang chuẩn bị thanh tra JAS有機 định kỳ hàng năm — sẽ diễn ra ngày 28/5. Kiểm toán viên là 田中 (Tanaka) từ trung tâm chứng nhận hữu cơ Nhật. Linh phụ Saori-san sắp xếp 5 loại hồ sơ: 圃場図, 資材リスト, 作業記録, 出荷記録, 苦情記録. Chương này tập trung mẫu câu chuyên ngành kiểm toán + keigo formal khi giao tiếp với người ngoài công ty.

---

## Tình huống 1 — Văn phòng farm · 9:00, Saori-san phân chia chuẩn bị hồ sơ

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、おはよう。<ruby>来週<rt>らいしゅう</rt></ruby>のJAS<ruby>監査<rt>かんさ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>、<ruby>本格的<rt>ほんかくてき</rt></ruby>に<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Linh-chan, chào buổi sáng. Chuẩn bị thanh tra JAS tuần sau, bắt đầu nghiêm túc nhé.)* |
| Linh | サオリさん、おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Saori-san, chào buổi sáng. Mong chị chỉ bảo ạ.)* |
| Saori | <ruby>準備<rt>じゅんび</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>は<ruby>五<rt>いつ</rt></ruby>つ。<ruby>圃場図<rt>ほじょうず</rt></ruby>、<ruby>資材<rt>しざい</rt></ruby>リスト、<ruby>作業<rt>さぎょう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>、<ruby>出荷<rt>しゅっか</rt></ruby><ruby>記録<rt>きろく</rt></ruby>、<ruby>苦情<rt>くじょう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>です。<br>*(Hồ sơ chuẩn bị có 5 loại. Bản đồ ruộng, danh sách vật tư, nhật ký công việc, nhật ký xuất hàng, nhật ký khiếu nại.)* |
| Linh | すみません、「<ruby>圃場図<rt>ほじょうず</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>のことですか?<br>*(Xin lỗi, "圃場図" cụ thể là gì ạ?)* |
| Saori | <ruby>畑<rt>はたけ</rt></ruby>とハウスの<ruby>地図<rt>ちず</rt></ruby>です。どこに<ruby>何<rt>なに</rt></ruby>を<ruby>植<rt>う</rt></ruby>えているか、<ruby>隣<rt>となり</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>との<ruby>距離<rt>きょり</rt></ruby>も<ruby>書<rt>か</rt></ruby>きます。<br>*(Bản đồ ruộng và nhà kính. Trồng gì ở đâu, khoảng cách với ruộng kế bên cũng phải ghi.)* |
| Linh | なぜ<ruby>隣<rt>となり</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>との<ruby>距離<rt>きょり</rt></ruby>も<ruby>書<rt>か</rt></ruby>くんですか?<br>*(Sao lại phải ghi khoảng cách với ruộng kế bên ạ?)* |
| Saori | いい<ruby>質問<rt>しつもん</rt></ruby>。<ruby>隣<rt>となり</rt></ruby>が<ruby>農薬<rt>のうやく</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていたら、<ruby>風<rt>かぜ</rt></ruby>で<ruby>飛<rt>と</rt></ruby>んでくる<ruby>可能性<rt>かのうせい</rt></ruby>があるから。これを<ruby>飛散<rt>ひさん</rt></ruby>と<ruby>言<rt>い</rt></ruby>います。<br>*(Câu hỏi hay. Nếu kế bên dùng thuốc, có khả năng bay theo gió tới. Gọi là 飛散 — bay tản.)* |
| Linh | なるほど。<ruby>飛散<rt>ひさん</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐ<ruby>距離<rt>きょり</rt></ruby>を<ruby>取<rt>と</rt></ruby>る、ということですね。<br>*(Ra vậy. Giữ khoảng cách để chống bay tản, đúng không ạ?)* |
| Saori | そう。リンちゃんは<ruby>作業<rt>さぎょう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>と<ruby>出荷<rt>しゅっか</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>してください。<br>*(Đúng. Linh-chan lo sắp xếp nhật ký công việc và nhật ký xuất hàng.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em rõ ạ. Em sẽ cố gắng hết sức.)* |

---

## Tình huống 2 — Văn phòng farm · 10:30, Linh kiểm tra nhật ký, phát hiện thiếu sót

| Vai | Lời thoại |
|---|---|
| Linh | サオリさん、ちょっとよろしいでしょうか?<br>*(Saori-san, em xin một chút thời gian được không ạ?)* |
| Saori | はい、どうぞ。<br>*(Vâng, mời.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>に<ruby>担当者<rt>たんとうしゃ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>がありません。<br>*(Ghi chép ngày 15/3 thiếu tên người phụ trách ạ.)* |
| Saori | え、<ruby>本当<rt>ほんとう</rt></ruby>?<ruby>見<rt>み</rt></ruby>せてください。<br>*(Ơ, thật à? Cho chị xem.)* |
| Linh | こちらです。<ruby>作業<rt>さぎょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>と<ruby>資材<rt>しざい</rt></ruby>は<ruby>書<rt>か</rt></ruby>いてあるんですが、<ruby>担当者<rt>たんとうしゃ</rt></ruby>が<ruby>空欄<rt>くうらん</rt></ruby>です。<br>*(Đây ạ. Nội dung công việc và vật tư có viết, nhưng người phụ trách bỏ trống.)* |
| Saori | あー、その<ruby>日<rt>ひ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>休<rt>やす</rt></ruby>みで<ruby>親方<rt>おやかた</rt></ruby>がやっていました。<ruby>書<rt>か</rt></ruby>き<ruby>忘<rt>わす</rt></ruby>れですね。<br>*(À, hôm đó chị nghỉ親方 làm. Quên ghi tên thật.)* |
| Linh | どうしますか?<ruby>監査<rt>かんさ</rt></ruby>で<ruby>問題<rt>もんだい</rt></ruby>になりませんか?<br>*(Làm thế nào ạ? Có gây vấn đề trong thanh tra không?)* |
| Saori | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>追記<rt>ついき</rt></ruby>します。「<ruby>後日<rt>ごじつ</rt></ruby><ruby>追記<rt>ついき</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いて、<ruby>親方<rt>おやかた</rt></ruby>のサインをもらいましょう。<ruby>嘘<rt>うそ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>ダメです。<br>*(Sẽ ghi bổ sung trung thực. Viết "ghi bổ sung sau", lấy chữ ký親方. Nói dối tuyệt đối không được.)* |
| Linh | わかりました。<ruby>正直<rt>しょうじき</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>ですね。<br>*(Em hiểu rồi. Trung thực là quan trọng nhất nhỉ.)* |
| Saori | そう。<ruby>監査員<rt>かんさいん</rt></ruby>は<ruby>嘘<rt>うそ</rt></ruby>をすぐ<ruby>見<rt>み</rt></ruby>つけます。<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>方<rt>ほう</rt></ruby>が<ruby>信頼<rt>しんらい</rt></ruby>されます。<br>*(Đúng. Kiểm toán viên phát hiện gian dối ngay. Trung thực thì được tin.)* |

---

## Tình huống 3 — Cánh đồng · 13:00, Linh và Saori đi đo lại 圃場 với GPS

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、これがGPSです。<ruby>圃場<rt>ほじょう</rt></ruby>の<ruby>四<rt>よっ</rt></ruby>つの<ruby>角<rt>かど</rt></ruby>で<ruby>座標<rt>ざひょう</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Linh-chan, đây là GPS. Ghi toạ độ 4 góc của ruộng.)* |
| Linh | はい、<ruby>北東<rt>ほくとう</rt></ruby>の<ruby>角<rt>かど</rt></ruby>からですね。<br>*(Vâng, từ góc đông bắc nhỉ.)* |
| Saori | そう。<ruby>北東<rt>ほくとう</rt></ruby>、<ruby>南東<rt>なんとう</rt></ruby>、<ruby>南西<rt>なんせい</rt></ruby>、<ruby>北西<rt>ほくせい</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>。<br>*(Đúng. Thứ tự đông bắc, đông nam, tây nam, tây bắc.)* |
| Linh | <ruby>隣<rt>となり</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>は<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>畑<rt>はたけ</rt></ruby>でしたよね?<br>*(Ruộng kế bên là ruộng anh Tanaka phải không ạ?)* |
| Saori | はい、<ruby>普通<rt>ふつう</rt></ruby>の<ruby>農法<rt>のうほう</rt></ruby>で<ruby>米<rt>こめ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っています。<ruby>距離<rt>きょり</rt></ruby>を<ruby>測<rt>はか</rt></ruby>りましょう。<br>*(Vâng, trồng lúa bằng phương pháp thường. Đo khoảng cách đi.)* |
| Linh | (đo) <ruby>20<rt>にじゅう</rt></ruby>メートルです。<br>*(20 mét ạ.)* |
| Saori | OK、<ruby>規定<rt>きてい</rt></ruby>の<ruby>10<rt>じゅう</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>あります。<ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>。<br>*(OK, trên quy định 10 mét. Kiểm tra cả vùng đệm.)* |
| Linh | 「<ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(緩衝地帯 là gì ạ?)* |
| Saori | <ruby>有機<rt>ゆうき</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>と<ruby>普通<rt>ふつう</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>の<ruby>空<rt>あ</rt></ruby>き<ruby>地<rt>ち</rt></ruby>。<ruby>農薬<rt>のうやく</rt></ruby>の<ruby>飛散<rt>ひさん</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐ<ruby>役割<rt>やくわり</rt></ruby>です。<br>*(Khoảng trống giữa ruộng hữu cơ và ruộng thường. Có vai trò chống bay tản thuốc.)* |
| Linh | <ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby> = vùng đệm chống bay tản、ということですね。<br>*(Tức là vùng đệm chống bay tản, đúng không ạ?)* |
| Saori | ベトナム<ruby>語<rt>ご</rt></ruby>でメモしててもいいですよ。<ruby>覚<rt>おぼ</rt></ruby>えやすいから。<br>*(Ghi tiếng Việt cũng được. Để dễ nhớ.)* |

---

## Tình huống 4 — Văn phòng farm · 15:00, sắp xếp file 資材 vật tư

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>資材<rt>しざい</rt></ruby>リストはこのバインダーにあります。<br>*(Linh-chan, danh sách vật tư trong bìa này.)* |
| Linh | <ruby>有機<rt>ゆうき</rt></ruby><ruby>肥料<rt>ひりょう</rt></ruby>、<ruby>有機<rt>ゆうき</rt></ruby><ruby>種子<rt>しゅし</rt></ruby>...あ、これは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Phân hữu cơ, hạt giống hữu cơ... à, cái này là gì ạ?)* |
| Saori | 「<ruby>緑肥<rt>りょくひ</rt></ruby>」です。<ruby>畑<rt>はたけ</rt></ruby>に<ruby>植<rt>う</rt></ruby>えて<ruby>土<rt>つち</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>す<ruby>植物<rt>しょくぶつ</rt></ruby>。<ruby>土<rt>つち</rt></ruby>を<ruby>豊<rt>ゆた</rt></ruby>かにします。<br>*(Phân xanh. Cây trồng rồi vùi vào đất. Làm đất phong phú.)* |
| Linh | <ruby>緑肥<rt>りょくひ</rt></ruby>=<ruby>緑色<rt>みどりいろ</rt></ruby>の<ruby>肥料<rt>ひりょう</rt></ruby>?<br>*(緑肥 = phân màu xanh?)* |
| Saori | (cười) そうですね、<ruby>言葉<rt>ことば</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>はそうだけど、<ruby>実際<rt>じっさい</rt></ruby>は<ruby>植物<rt>しょくぶつ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>です。クローバーとか、レンゲとか。<br>*(Đúng, nghĩa từ là vậy, nhưng thực tế là tên cây. Như cỏ ba lá, hoa renge.)* |
| Linh | なるほど、<ruby>植物<rt>しょくぶつ</rt></ruby>そのものを<ruby>肥料<rt>ひりょう</rt></ruby>として<ruby>使<rt>つか</rt></ruby>うんですね。<br>*(Ra vậy, dùng chính cây làm phân nhỉ.)* |
| Saori | そう。<ruby>監査<rt>かんさ</rt></ruby>では「<ruby>緑肥<rt>りょくひ</rt></ruby>の<ruby>種類<rt>しゅるい</rt></ruby>と<ruby>使用量<rt>しようりょう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください」とよく<ruby>聞<rt>き</rt></ruby>かれます。<br>*(Vâng. Trong thanh tra thường hỏi "cho biết loại và lượng phân xanh".)* |
| Linh | じゃあ、<ruby>答<rt>こた</rt></ruby>えを<ruby>準備<rt>じゅんび</rt></ruby>しておきます。<br>*(Vậy em chuẩn bị trước câu trả lời.)* |
| Saori | リンちゃん、すごい<ruby>進歩<rt>しんぽ</rt></ruby>ですね!<br>*(Linh-chan tiến bộ quá!)* |
| Linh | サオリさんの<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がいいからです。<br>*(Vì chị Saori dạy hay.)* |

---

## Tình huống 5 — 第3ハウス · 16:00, Linh giải thích cho Hương về JAS thanh tra

| Vai | Lời thoại |
|---|---|
| Hương | リンさん、<ruby>来週<rt>らいしゅう</rt></ruby>「かんさ」が<ruby>来<rt>く</rt></ruby>ると<ruby>聞<rt>き</rt></ruby>きました。<ruby>怖<rt>こわ</rt></ruby>いですか?<br>*(Chị Linh, em nghe tuần sau có "thanh tra" đến. Có đáng sợ không ạ?)* |
| Linh | フォン、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>怖<rt>こわ</rt></ruby>くないよ。<br>*(Hương, yên tâm. Không đáng sợ.)* |
| Hương | <ruby>監査員<rt>かんさいん</rt></ruby>さんが<ruby>怒<rt>おこ</rt></ruby>ったらどうしますか?<br>*(Nếu kiểm toán viên la thì sao ạ?)* |
| Linh | <ruby>怒<rt>おこ</rt></ruby>らないですよ。<ruby>監査員<rt>かんさいん</rt></ruby>は<ruby>記録<rt>きろく</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、<ruby>質問<rt>しつもん</rt></ruby>をするだけ。<br>*(Không la đâu. Kiểm toán viên chỉ xem hồ sơ và hỏi câu hỏi.)* |
| Hương | <ruby>私<rt>わたし</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をすればいいですか?<br>*(Em phải làm gì ạ?)* |
| Linh | <ruby>普通<rt>ふつう</rt></ruby>に<ruby>仕事<rt>しごと</rt></ruby>してて。<ruby>挨拶<rt>あいさつ</rt></ruby>だけ<ruby>頑張<rt>がんば</rt></ruby>って。「<ruby>初<rt>はじ</rt></ruby>めまして、フォンと<ruby>申<rt>もう</rt></ruby>します」って。<br>*(Cứ làm việc bình thường. Cố gắng chào thôi. "Rất hân hạnh, em là Hương".)* |
| Hương | はい!もし<ruby>質問<rt>しつもん</rt></ruby>されたら?<br>*(Vâng! Nếu được hỏi thì sao ạ?)* |
| Linh | <ruby>知<rt>し</rt></ruby>っていることを<ruby>正直<rt>しょうじき</rt></ruby>に。<ruby>知<rt>し</rt></ruby>らない<ruby>時<rt>とき</rt></ruby>は「すみません、<ruby>分<rt>わ</rt></ruby>からないので<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてもよろしいでしょうか」って。<br>*(Biết gì nói trung thực. Không biết thì "xin lỗi em không biết, em hỏi Sato sempai được không ạ".)* |
| Hương | わかりました。<ruby>正直<rt>しょうじき</rt></ruby>に、ですね。<br>*(Vâng. Trung thực ạ.)* |
| Linh | そう。<ruby>嘘<rt>うそ</rt></ruby>を<ruby>言<rt>い</rt></ruby>うと、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>になる。<br>*(Đúng. Nói dối là sẽ thành vấn đề thật sự.)* |

---

## Tình huống 6 — 28/5 sáng 8:30, kiểm toán viên Tanaka đến

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>田中<rt>たなか</rt></ruby><ruby>監査員<rt>かんさいん</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、ありがとうございます。<br>*(Anh Tanaka kiểm toán viên, hôm nay anh bận vẫn đến, cảm ơn anh.)* |
| Tanaka | <ruby>山本<rt>やまもと</rt></ruby>さん、こちらこそお<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Yamamoto, nhờ anh chiếu cố. Hôm nay mong anh chỉ bảo.)* |
| Yamamoto | こちらが<ruby>有機<rt>ゆうき</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>と、<ruby>新<rt>あたら</rt></ruby>しい<ruby>担当<rt>たんとう</rt></ruby>のリンです。<br>*(Đây là Sato phụ trách hữu cơ, và Linh phụ trách mới.)* |
| Saori | <ruby>佐藤<rt>さとう</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em là Sato. Mong anh chỉ bảo ạ.)* |
| Linh | <ruby>初<rt>はじ</rt></ruby>めまして、リンと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Rất hân hạnh, em là Linh. Từ Việt Nam. Mong anh chỉ bảo ạ.)* |
| Tanaka | リンさん、<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>ですね。<ruby>田中<rt>たなか</rt></ruby>です。よろしく。<br>*(Linh-san tiếng Nhật giỏi nhỉ. Tôi là Tanaka. Nhờ em.)* |
| Linh | ありがとうございます。まだまだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>です。<br>*(Em cảm ơn ạ. Em còn đang học nhiều ạ.)* |
| Tanaka | では、<ruby>会議室<rt>かいぎしつ</rt></ruby>で<ruby>書類<rt>しょるい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょうか。<br>*(Vậy, bắt đầu từ kiểm tra hồ sơ ở phòng họp nhé.)* |

---

## Tình huống 7 — Phòng họp · 9:00, trình bày 圃場図 và 資材リスト

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>田中<rt>たなか</rt></ruby><ruby>監査員<rt>かんさいん</rt></ruby>、まず<ruby>圃場図<rt>ほじょうず</rt></ruby>のファイルをご<ruby>確認<rt>かくにん</rt></ruby>いただけますか。<br>*(Anh Tanaka kiểm toán viên, đầu tiên xin anh kiểm tra file bản đồ ruộng ạ.)* |
| Tanaka | はい、<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Vâng, tôi xem.)* |
| Saori | <ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウスがJAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>認証圃場<rt>にんしょうほじょう</rt></ruby>です。<ruby>隣<rt>となり</rt></ruby>の<ruby>慣行<rt>かんこう</rt></ruby><ruby>農法<rt>のうほう</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>とは<ruby>20<rt>にじゅう</rt></ruby>メートル<ruby>離<rt>はな</rt></ruby>れております。<br>*(Nhà kính số 3 là ruộng được chứng nhận JAS hữu cơ. Cách ruộng nông pháp thường kế bên 20 mét.)* |
| Tanaka | <ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby>は<ruby>確保<rt>かくほ</rt></ruby>されていますね。リンさん、<ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vùng đệm có đảm bảo nhỉ. Linh-san, cho biết vai trò vùng đệm.)* |
| Linh | はい、お<ruby>答<rt>こた</rt></ruby>えいたします。<ruby>隣<rt>となり</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>から<ruby>農薬<rt>のうやく</rt></ruby>が<ruby>風<rt>かぜ</rt></ruby>で<ruby>飛<rt>と</rt></ruby>んでくる「<ruby>飛散<rt>ひさん</rt></ruby>」を<ruby>防<rt>ふせ</rt></ruby>ぐ<ruby>役割<rt>やくわり</rt></ruby>と<ruby>認識<rt>にんしき</rt></ruby>しております。<br>*(Vâng, em xin trả lời. Em hiểu rằng vai trò là chống "bay tản" thuốc từ ruộng kế theo gió.)* |
| Tanaka | (gật) よく<ruby>勉強<rt>べんきょう</rt></ruby>されてますね。<ruby>次<rt>つぎ</rt></ruby>、<ruby>資材<rt>しざい</rt></ruby>リストを<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Học kỹ đấy. Tiếp theo, tôi xem danh sách vật tư.)* |
| Saori | こちらが<ruby>使用<rt>しよう</rt></ruby><ruby>資材<rt>しざい</rt></ruby>のリストです。<ruby>有機<rt>ゆうき</rt></ruby><ruby>肥料<rt>ひりょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>、<ruby>緑肥<rt>りょくひ</rt></ruby>はレンゲを<ruby>使<rt>つか</rt></ruby>っています。<br>*(Đây là danh sách vật tư đã dùng. Phân hữu cơ 3 loại, phân xanh dùng renge.)* |
| Tanaka | レンゲの<ruby>使用量<rt>しようりょう</rt></ruby>はどのくらいですか?<br>*(Lượng renge sử dụng bao nhiêu?)* |
| Linh | お<ruby>答<rt>こた</rt></ruby>えいたします。<ruby>10<rt>じゅう</rt></ruby>アールあたり<ruby>5<rt>ご</rt></ruby>キロです。<br>*(Em xin trả lời. 5 kg/10a.)* |
| Tanaka | <ruby>適正<rt>てきせい</rt></ruby>な<ruby>量<rt>りょう</rt></ruby>ですね。<br>*(Lượng phù hợp.)* |

---

## Tình huống 8 — Phòng họp · 10:00, Tanaka phát hiện sai sót, Linh xin lỗi

| Vai | Lời thoại |
|---|---|
| Tanaka | (lật sổ) ちょっとお<ruby>聞<rt>き</rt></ruby>きしたいんですが、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>に<ruby>担当者<rt>たんとうしゃ</rt></ruby><ruby>欄<rt>らん</rt></ruby>が<ruby>後日<rt>ごじつ</rt></ruby><ruby>追記<rt>ついき</rt></ruby>になっていますね。<br>*(Tôi muốn hỏi chút, ngày 15/3 cột người phụ trách ghi bổ sung sau nhỉ.)* |
| Saori | はい。その<ruby>日<rt>ひ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>不在<rt>ふざい</rt></ruby>で、<ruby>山本<rt>やまもと</rt></ruby>が<ruby>作業<rt>さぎょう</rt></ruby>しましたが、<ruby>当日<rt>とうじつ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れていました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Vâng. Hôm đó em vắng, anh Yamamoto làm, nhưng quên ghi trong ngày. Em thật sự xin lỗi.)* |
| Tanaka | <ruby>追記<rt>ついき</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しい<ruby>対応<rt>たいおう</rt></ruby>です。ただ、<ruby>記録<rt>きろく</rt></ruby>は<ruby>当日<rt>とうじつ</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けるのが<ruby>原則<rt>げんそく</rt></ruby>です。<br>*(Ghi bổ sung là cách xử lý đúng. Nhưng nguyên tắc là ghi trong ngày.)* |
| Linh | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>今後<rt>こんご</rt></ruby>、<ruby>不在<rt>ふざい</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ<ruby>記録<rt>きろく</rt></ruby>のルールを<ruby>改善<rt>かいぜん</rt></ruby>いたします。<br>*(Em xin lỗi. Từ nay sẽ cải thiện quy tắc ghi bàn giao khi vắng mặt.)* |
| Tanaka | リンさん、<ruby>具体的<rt>ぐたいてき</rt></ruby>にはどう<ruby>改善<rt>かいぜん</rt></ruby>しますか?<br>*(Linh-san, cụ thể cải thiện thế nào?)* |
| Linh | はい。<ruby>担当者<rt>たんとうしゃ</rt></ruby>が<ruby>不在<rt>ふざい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>は、<ruby>作業<rt>さぎょう</rt></ruby>した<ruby>人<rt>ひと</rt></ruby>が<ruby>必<rt>かなら</rt></ruby>ず<ruby>当日<rt>とうじつ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>するルールに<ruby>変<rt>か</rt></ruby>えます。チェックリストも<ruby>作<rt>つく</rt></ruby>ります。<br>*(Vâng. Khi người phụ trách vắng, người làm việc bắt buộc ghi trong ngày. Em sẽ làm cả bảng kiểm.)* |
| Tanaka | いい<ruby>対応<rt>たいおう</rt></ruby>ですね。<ruby>軽微<rt>けいび</rt></ruby>な<ruby>指摘<rt>してき</rt></ruby><ruby>事項<rt>じこう</rt></ruby>として<ruby>記録<rt>きろく</rt></ruby>します。<ruby>次<rt>つぎ</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby>までに<ruby>改善<rt>かいぜん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xử lý tốt. Tôi ghi là điểm nhắc nhẹ. Trước thanh tra sau xin báo cáo cải thiện.)* |
| Saori | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 9 — 第3ハウス · 11:00, kiểm toán viên ra ruộng kiểm tra thực địa

| Vai | Lời thoại |
|---|---|
| Tanaka | では、<ruby>圃場<rt>ほじょう</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>させていただきます。<br>*(Vậy, cho tôi xem ruộng.)* |
| Saori | はい、こちらが<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby>ハウスでございます。<ruby>小玉<rt>こだま</rt></ruby>スイカを<ruby>栽培<rt>さいばい</rt></ruby>しております。<br>*(Vâng, đây là nhà kính số 3. Đang trồng dưa hấu kodama.)* |
| Tanaka | <ruby>定植<rt>ていしょく</rt></ruby>の<ruby>時期<rt>じき</rt></ruby>は?<br>*(Thời gian trồng?)* |
| Linh | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>14日<rt>じゅうよっか</rt></ruby>まで、<ruby>合計<rt>ごうけい</rt></ruby><ruby>120<rt>ひゃくにじゅう</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>定植<rt>ていしょく</rt></ruby>いたしました。<br>*(Từ 15/4 đến 14/5, tổng trồng 120 cây ạ.)* |
| Tanaka | フォンさん、こんにちは。<ruby>仕事<rt>しごと</rt></ruby><ruby>慣<rt>な</rt></ruby>れましたか?<br>*(Hương-san, chào em. Quen việc chưa?)* |
| Hương | (lúng túng) <ruby>初<rt>はじ</rt></ruby>めまして、フォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>慣<rt>な</rt></ruby>れています。<br>*(Rất hân hạnh, em là Hương. Em đang quen dần ạ.)* |
| Tanaka | <ruby>毎日<rt>まいにち</rt></ruby>JAS<ruby>記録<rt>きろく</rt></ruby>はつけていますか?<br>*(Có ghi nhật ký JAS mỗi ngày không?)* |
| Hương | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>付<rt>つ</rt></ruby>けています。<br>*(Vâng, mỗi ngày em ghi ạ.)* |
| Tanaka | <ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho tôi xem.)* |
| Hương | (đưa sổ) こちらです。<br>*(Đây ạ.)* |
| Tanaka | (xem) <ruby>字<rt>じ</rt></ruby>もきれいで、<ruby>項目<rt>こうもく</rt></ruby>も<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>書<rt>か</rt></ruby>いてありますね。<ruby>新人<rt>しんじん</rt></ruby>さんなのに<ruby>立派<rt>りっぱ</rt></ruby>です。<br>*(Chữ đẹp, các mục đủ. Người mới mà giỏi.)* |
| Hương | リンさんが<ruby>教<rt>おし</rt></ruby>えてくれましたから。<br>*(Vì chị Linh chỉ ạ.)* |
| Linh | (đỏ mặt) いえいえ。<br>*(Không không.)* |

---

## Tình huống 10 — Phòng họp · 13:30, kết thúc thanh tra, đánh giá

| Vai | Lời thoại |
|---|---|
| Tanaka | では、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をお<ruby>伝<rt>つた</rt></ruby>えします。<br>*(Vậy, tôi thông báo kết quả thanh tra hôm nay.)* |
| Yamamoto/Saori/Linh | お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin mời ạ.)* |
| Tanaka | <ruby>全体的<rt>ぜんたいてき</rt></ruby>に<ruby>非常<rt>ひじょう</rt></ruby>によく<ruby>管理<rt>かんり</rt></ruby>されています。<ruby>認証<rt>にんしょう</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>はございません。<br>*(Tổng thể quản lý rất tốt. Không có vấn đề về duy trì chứng nhận.)* |
| Yamamoto | ありがとうございます。<br>*(Cảm ơn anh ạ.)* |
| Tanaka | <ruby>指摘<rt>してき</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby>:<ruby>当日<rt>とうじつ</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>の<ruby>徹底<rt>てってい</rt></ruby>。<ruby>改善<rt>かいぜん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>6<rt>ろっ</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までにご<ruby>提出<rt>ていしゅつ</rt></ruby>ください。<br>*(Có 1 điểm nhắc: ghi trong ngày phải triệt để. Đến cuối tháng 6 xin nộp kế hoạch cải thiện.)* |
| Saori | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>必<rt>かなら</rt></ruby>ず<ruby>提出<rt>ていしゅつ</rt></ruby>いたします。<br>*(Em rõ ạ. Chắc chắn em sẽ nộp.)* |
| Tanaka | リンさんは<ruby>初<rt>はじ</rt></ruby>めての<ruby>監査<rt>かんさ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>とのことですが、<ruby>大変<rt>たいへん</rt></ruby><ruby>立派<rt>りっぱ</rt></ruby>でした。<br>*(Nghe nói Linh-san lần đầu tiếp thanh tra, nhưng rất xuất sắc.)* |
| Linh | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<br>*(Em không dám nhận. Là nhờ Sato sempai ạ.)* |
| Tanaka | では、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、ありがとうございました。<br>*(Vậy hôm nay mọi người bận vẫn đón, cảm ơn nhiều.)* |
| All | こちらこそ、お<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>ありがとうございました。<br>*(Chính chúng em mới phải cảm ơn anh bận vẫn đến.)* |

---

## Tình huống 11 — Cổng farm · 14:30, tiễn Tanaka, Saori-san khen Linh

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>素晴<rt>すば</rt></ruby>らしかったよ。<br>*(Linh-chan, vất vả thật. Tuyệt vời lắm.)* |
| Linh | サオリさん、ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Saori-san, em cảm ơn chị. Em hồi hộp ghê.)* |
| Saori | <ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、<ruby>完璧<rt>かんぺき</rt></ruby>だった。「<ruby>認識<rt>にんしき</rt></ruby>しております」って、ちゃんと<ruby>言<rt>い</rt></ruby>えたね。<br>*(Giải thích vùng đệm hoàn hảo. Câu "em nhận thức rằng" cũng nói đúng nhỉ.)* |
| Linh | <ruby>昨日<rt>きのう</rt></ruby><ruby>家<rt>うち</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>しました。<ruby>10<rt>じゅっ</rt></ruby><ruby>回<rt>かい</rt></ruby>くらい。<br>*(Em luyện ở nhà hôm qua. Khoảng 10 lần.)* |
| Saori | (cười) <ruby>努力家<rt>どりょくか</rt></ruby>だね。だから<ruby>上達<rt>じょうたつ</rt></ruby>が<ruby>早<rt>はや</rt></ruby>い。<br>*(Chăm chỉ thật. Vì vậy mới tiến bộ nhanh.)* |
| Linh | フォンも<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Hương cũng cố gắng nữa.)* |
| Saori | フォンさんの<ruby>記録<rt>きろく</rt></ruby>ノートを<ruby>褒<rt>ほ</rt></ruby>められたよ。<br>*(Sổ nhật ký của Hương được khen đấy.)* |
| Linh | リンが<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em vui lắm.)* |
| Saori | <ruby>改善<rt>かいぜん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>ろう。<br>*(Kế hoạch cải thiện, tuần sau cùng làm nhé.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em mong chị chỉ bảo ạ.)* |

---

## Tình huống 12 — Văn phòng farm · 17:00, báo cáo với 親方

| Vai | Lời thoại |
|---|---|
| Saori | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Thưa親方, báo cáo thanh tra hôm nay ạ.)* |
| Yamamoto | おう、どうだった?<br>*(Ờ, thế nào?)* |
| Saori | <ruby>認証<rt>にんしょう</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby>なしです。<ruby>指摘<rt>してき</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>当日<rt>とうじつ</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>の<ruby>徹底<rt>てってい</rt></ruby>です。<br>*(Duy trì chứng nhận không vấn đề. Nhắc 1 điểm là phải triệt để ghi trong ngày.)* |
| Yamamoto | あー、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>俺<rt>おれ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>か。すまんかった。<br>*(À, vụ tháng 3 của tôi à. Xin lỗi.)* |
| Saori | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>改善<rt>かいぜん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>来月<rt>らいげつ</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>します。リンと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>ります。<br>*(Không sao. Đến tháng sau em sẽ nộp kế hoạch cải thiện. Em cùng làm với Linh.)* |
| Yamamoto | リン、<ruby>今日<rt>きょう</rt></ruby>はよくやってくれた。<ruby>田中<rt>たなか</rt></ruby>さんも<ruby>褒<rt>ほ</rt></ruby>めてたぞ。<br>*(Linh, hôm nay em làm tốt. Anh Tanaka cũng khen đấy.)* |
| Linh | ありがとうございます。<ruby>初<rt>はじ</rt></ruby>めての<ruby>監査<rt>かんさ</rt></ruby>で<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em cảm ơn ạ. Lần đầu tiếp thanh tra em học được nhiều thật.)* |
| Yamamoto | <ruby>来年<rt>らいねん</rt></ruby>はリンに<ruby>主<rt>しゅ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せようかな。<br>*(Năm sau giao Linh phụ trách chính nhỉ.)* |
| Linh | え、<ruby>私<rt>わたし</rt></ruby>ですか?...<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Ơ, em ạ? ...Em sẽ cố gắng!)* |

---

## Tình huống 13 — Phòng Linh · 21:00, gọi Zalo cho bố ở Đồng Tháp (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Linh khoe bố về cuộc thanh tra hôm nay.

| Vai | Lời thoại |
|---|---|
| Linh | A lô bố ơi, con đây ạ. |
| Bố Linh | Linh à, hôm nay con sao rồi? Mẹ con bảo hôm nay con có thi gì đó. |
| Linh | Không phải thi đâu bố. Hôm nay có đoàn thanh tra JAS có機 — họ là cơ quan chứng nhận nông sản hữu cơ của Nhật. Họ đến kiểm tra nông trại con đó bố. |
| Bố Linh | Vậy quan trọng lắm con. Con có sao không? |
| Linh | Thành công bố ạ! Chú kiểm toán viên — gọi là *kansa-in* (監査員) — tên là Tanaka, khen con đó bố. Con giải thích vùng đệm — gọi là *kanshou-chitai* (緩衝地帯) — bằng tiếng Nhật trôi chảy. |
| Bố Linh | Giỏi quá con. Vùng đệm là gì? |
| Linh | Là khoảng đất trống giữa ruộng hữu cơ và ruộng dùng thuốc, để thuốc khỏi bay qua. Mình gọi là *hisan* (飛散) — bay tản. Ruộng có機 phải cách ruộng thường ít nhất 10 mét, nông trại con cách 20 mét nên ổn. |
| Bố Linh | Nhật họ kỹ ghê con. Mình ở quê thì... đâu có quan tâm. |
| Linh | Bố ơi, ở Nhật làm hữu cơ kiếm tiền nhiều hơn nông sản thường gấp 2-3 lần đó bố. Sau này con học hết bài, có khi về Đồng Tháp con mở nông trại hữu cơ. |
| Bố Linh | Ừ ý hay đó con. Có gì cần tiền đầu tư bố mẹ ủng hộ. |
| Linh | Còn nữa bố, chị Saori sempai khen con. Bác chủ — *親方 (oyakata)* — nói năm sau giao con làm trưởng phụ trách JAS chính của nông trại! Con run lắm bố. |
| Bố Linh | Con cứ làm hết sức là được. Bố tự hào con lắm. |
| Linh | Em Hương — kohai mới sang — cũng được khen sổ nhật ký đẹp. Con vui lắm bố. |
| Bố Linh | Có em mới sang, con giữ vai chị thật tốt vào. Nó cũng xa nhà cũng nhớ nhà. |
| Linh | Vâng bố. Con biết. Thôi muộn rồi bố ngủ đi nhé. Con thương bố mẹ. |

---

## Tình huống 14 — Bàn học · 22:00, Linh ghi sổ nhật ký sempai

| Vai | Lời thoại |
|---|---|
| Linh | (viết) <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>28<rt>にじゅうはち</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めてのJAS<ruby>監査<rt>かんさ</rt></ruby>。<br>*(28/5, lần đầu tiếp thanh tra JAS.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>:<ruby>圃場図<rt>ほじょうず</rt></ruby>・<ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby>・<ruby>飛散<rt>ひさん</rt></ruby>・<ruby>慣行<rt>かんこう</rt></ruby><ruby>農法<rt>のうほう</rt></ruby>・<ruby>緑肥<rt>りょくひ</rt></ruby>・<ruby>軽微<rt>けいび</rt></ruby>な<ruby>指摘<rt>してき</rt></ruby><ruby>事項<rt>じこう</rt></ruby>・<ruby>改善<rt>かいぜん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>・<ruby>当日<rt>とうじつ</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>・<ruby>苦情<rt>くじょう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>。<br>*(Từ học hôm nay: bản đồ ruộng, vùng đệm, bay tản, nông pháp thường, phân xanh, điểm nhắc nhẹ, kế hoạch cải thiện, ghi trong ngày, nhật ký khiếu nại.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えた keigo:<ruby>拝見<rt>はいけん</rt></ruby>します・お<ruby>答<rt>こた</rt></ruby>えいたします・〜と<ruby>認識<rt>にんしき</rt></ruby>しております・<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません・<ruby>改善<rt>かいぜん</rt></ruby>いたします・<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります・お<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>ありがとうございました。<br>*(Keigo đã học: hai-ken (xem khiêm), o-kotae itashimasu, ~ to ninshiki shite orimasu, mou-shi-wake gozaimasen, kaizen itashimasu, osore irimasu, oisogashii naka arigatou.)* |
| Linh | <ruby>来年<rt>らいねん</rt></ruby>は<ruby>主<rt>しゅ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>?<ruby>頑張<rt>がんば</rt></ruby>ろう、リン。<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>夢<rt>ゆめ</rt></ruby>:N2<ruby>合格<rt>ごうかく</rt></ruby> + JAS<ruby>主担当<rt>しゅたんとう</rt></ruby>。<br>*(Năm sau làm phụ trách chính? Cố lên Linh. Mơ ước năm 3: đậu N2 + làm trưởng phụ trách JAS.)* |

---

## Đọng lại chương 3

Cuối tháng 5/2026, Linh trải nghiệm lần đầu tiếp đoàn thanh tra JAS có機 cùng Saori-san, học bộ mẫu câu keigo formal khi giao tiếp với người ngoài công ty: **giới thiệu lễ phép** (〜と申します・〜から来ました), **trao đổi tài liệu với sempai** (〜のファイルをご確認いただけますか), **giải thích bằng kính ngữ** (こちらが〜です・〜を栽培しております), **trả lời formal câu hỏi nghiệp vụ** (お答えいたします・〜と認識しております), **nhận lỗi và cam kết sửa** (申し訳ございません・改善いたします・〜に変えます), **cảm ơn kiểu công sở** (お忙しい中ありがとうございました・恐れ入ります). Nắm bộ thuật ngữ chuyên ngành JAS hữu cơ: **圃場図** (bản đồ ruộng), **緩衝地帯** (vùng đệm), **飛散** (bay tản thuốc), **慣行農法** (nông pháp thường, đối lập 有機), **緑肥** (phân xanh — phân làm từ cây), **資材リスト** + **作業記録** + **出荷記録** + **苦情記録**. Bài học lớn nhất: trong kiểm toán, **trung thực** = **được tin** — nói dối sẽ bị phát hiện ngay; ghi bổ sung sau với chữ "後日追記" + chữ ký là cách xử lý đúng.

> Từ vựng & mẫu câu chương này: 圃場図・資材リスト・作業記録・出荷記録・苦情記録・緩衝地帯・飛散・慣行農法・緑肥・有機認証・指摘事項・軽微・改善計画・当日記入・追記・拝見・〜のファイルをご確認いただけますか・お答えいたします・〜と認識しております・申し訳ございません・改善いたします・〜に変えます・恐れ入ります・お忙しい中ありがとうございました

## Bí quyết chương

- JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>監査<rt>かんさ</rt></ruby> chuẩn bị 5 bộ hồ sơ: <ruby>圃場図<rt>ほじょうず</rt></ruby>・<ruby>資材<rt>しざい</rt></ruby>リスト・<ruby>作業<rt>さぎょう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>・<ruby>出荷<rt>しゅっか</rt></ruby><ruby>記録<rt>きろく</rt></ruby>・<ruby>苦情<rt>くじょう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>.
- <ruby>緩衝地帯<rt>かんしょうちたい</rt></ruby> ≥ 10m giữa ruộng hữu cơ và ruộng <ruby>慣行<rt>かんこう</rt></ruby><ruby>農法<rt>のうほう</rt></ruby> — ngăn <ruby>飛散<rt>ひさん</rt></ruby> thuốc.
- <ruby>緑肥<rt>りょくひ</rt></ruby> = cây trồng-cày vùi làm phân (clover, renge), tính theo kg/10a (アール).
- Quên ghi → **ghi bổ sung trung thực** + viết "<ruby>後日<rt>ごじつ</rt></ruby><ruby>追記<rt>ついき</rt></ruby>" + chữ ký người làm. KHÔNG sửa lén.
- Keigo trả lời formal: 「お<ruby>答<rt>こた</rt></ruby>えいたします + ... + と<ruby>認識<rt>にんしき</rt></ruby>しております」 — formal hơn 〜と思います nhiều.
- Khi nhận lỗi: 申し訳ございません → giải thích nguyên nhân → 今後 + biện pháp cụ thể → cam kết 改善いたします.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本格的 | ほんかくてき | BẢN CÁCH ĐÍCH | Chính thức, nghiêm túc |
| 書類 | しょるい | THƯ LOẠI | Hồ sơ, giấy tờ |
| 圃場図 | ほじょうず | PHỐ TRƯỜNG ĐỒ | Bản đồ ruộng |
| 資材 | しざい | TƯ TÀI | Vật tư |
| 作業記録 | さぎょうきろく | TÁC NGHIỆP KÝ LỤC | Nhật ký công việc |
| 出荷記録 | しゅっかきろく | XUẤT HÀ KÝ LỤC | Nhật ký xuất hàng |
| 苦情記録 | くじょうきろく | KHỔ TÌNH KÝ LỤC | Nhật ký khiếu nại |
| 地図 | ちず | ĐỊA ĐỒ | Bản đồ |
| 距離 | きょり | CỰ LY | Khoảng cách |
| 飛散 | ひさん | PHI TÁN | Bay tản, phát tán |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | Khả năng |
| 防ぐ | ふせぐ | PHÒNG | Ngăn, chống |
| 緩衝地帯 | かんしょうちたい | HOÃN XUNG ĐỊA ĐỚI | Vùng đệm |
| 慣行農法 | かんこうのうほう | QUÁN HÀNH NÔNG PHÁP | Nông pháp thường (đối lập hữu cơ) |
| 整理 | せいり | CHỈNH LÝ | Sắp xếp |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | Người phụ trách |
| 空欄 | くうらん | KHÔNG LAN | Cột trống |
| 不在 | ふざい | BẤT TẠI | Vắng mặt |
| 追記 | ついき | TRUY KÝ | Ghi bổ sung |
| 後日 | ごじつ | HẬU NHẬT | Ngày sau |
| 嘘 | うそ | — | Lời nói dối |
| 信頼 | しんらい | TÍN LẠI | Tin tưởng |
| 座標 | ざひょう | TOẠ TIÊU | Toạ độ |
| 角 | かど | GIÁC | Góc |
| 北東 | ほくとう | BẮC ĐÔNG | Đông bắc |
| 規定 | きてい | QUY ĐỊNH | Quy định |
| 役割 | やくわり | DỊCH CÁT | Vai trò |
| 緑肥 | りょくひ | LỤC PHÌ | Phân xanh |
| 種子 | しゅし | CHỦNG TỬ | Hạt giống |
| 使用量 | しようりょう | SỬ DỤNG LƯỢNG | Lượng sử dụng |
| 進歩 | しんぽ | TIẾN BỘ | Tiến bộ |
| 怖い | こわい | — | Sợ |
| 正直 | しょうじき | CHÍNH TRỰC | Trung thực |
| 監査員 | かんさいん | GIÁM TRA VIÊN | Kiểm toán viên |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 拝見 | はいけん | BÁI KIẾN | Xem (khiêm nhường) |
| 認証圃場 | にんしょうほじょう | NHẬN CHỨNG PHỐ TRƯỜNG | Ruộng được chứng nhận |
| 確保 | かくほ | XÁC BẢO | Đảm bảo |
| 認識 | にんしき | NHẬN THỨC | Nhận thức |
| 栽培 | さいばい | TÀI BỒI | Canh tác, trồng trọt |
| 合計 | ごうけい | HỢP KẾ | Tổng cộng |
| 項目 | こうもく | HẠNG MỤC | Mục, hạng mục |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 認証継続 | にんしょうけいぞく | NHẬN CHỨNG KẾ TỤC | Duy trì chứng nhận |
| 指摘 | してき | CHỈ TRÍCH | Chỉ ra (sai sót) |
| 事項 | じこう | SỰ HẠNG | Hạng mục |
| 軽微 | けいび | KHINH VI | Nhẹ, không nặng |
| 当日記入 | とうじつきにゅう | ĐƯƠNG NHẬT KÝ NHẬP | Ghi trong ngày |
| 徹底 | てってい | TRIỆT ĐỂ | Triệt để |
| 改善 | かいぜん | CẢI THIỆN | Cải thiện |
| 改善計画 | かいぜんけいかく | CẢI THIỆN KẾ HOẠCH | Kế hoạch cải thiện |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp, trình |
| 申し訳ございません | もうしわけございません | THÂN DỊCH — | Em xin lỗi (formal) |
| 恐れ入ります | おそれいります | KHỦNG NHẬP — | Em không dám nhận, em ngại ạ |
| 主担当 | しゅたんとう | CHỦ ĐẢM ĐƯƠNG | Phụ trách chính |
| 努力家 | どりょくか | NỖ LỰC GIA | Người chăm chỉ |
| 上達 | じょうたつ | THƯỢNG ĐẠT | Tiến bộ (kỹ năng) |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000004, 800000041, NULL, 'markdown_book', 'T4. Thu hoạch海なり và chuyến đi chợ Tsukiji (大収穫・海なり・築地行き)', '# Sách thực tập sinh nông nghiệp · T4. Thu hoạch海なり và chuyến đi chợ Tsukiji (大収穫・海なり・築地行き)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, N4→N3) lần đầu chỉ huy nhóm thu hoạch dưa hấu quy mô lớn (海なり) tại 第3ハウス và áp tải chuyến xe tải lên chợ Tsukiji Tokyo. Học các mẫu hội thoại tiếng Nhật chuyên ngành nông sản: chỉ đạo nhóm thu hoạch trên ruộng (〜してください・〜に気をつけて), kiểm tra chất lượng dưa với 親方 (糖度を測ります・〜度です), điều phối đóng gói và dán nhãn xuất hàng (出荷ラベルを貼る・〜玉/〜箱), giao tiếp với tài xế và 仲卸 chợ Tsukiji (お預かりします・搬入をお願いします), thuyết minh sản phẩm hữu cơ cho khách thăm chợ (JAS有機の小玉スイカでございます).

---

## Bối cảnh

Cuối tháng 6 đầu tháng 7 năm 2026. Sau JAS監査 thành công, Saori-san chuyển sang quản lý toàn farm, giao 第3ハウス cho Linh chỉ huy chính. Đợt thu hoạch dưa hấu kodama 海なり (uminari — "tiếng sóng" — tên thương mại của giống dưa Yamamoto Farm) chính thức bắt đầu: 800 quả. 6 quả/thùng, đích đến chợ bán buôn Tsukiji Tokyo (chợ trung tâm dưa hấu Nhật). 親方 Yamamoto giao Linh áp tải chuyến xe tải 4 tấn — sempai-of-sempai đi xa lần đầu.

---

## Tình huống 1 — 第3ハウス · 5:30 sáng, Linh briefing team trước thu hoạch

| Vai | Lời thoại |
|---|---|
| Linh | みんな、おはようございます。<ruby>今日<rt>きょう</rt></ruby>から<ruby>海<rt>うみ</rt></ruby>なりの<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>開始<rt>かいし</rt></ruby>です。<br>*(Mọi người, chào buổi sáng. Hôm nay bắt đầu thu hoạch Uminari.)* |
| Dewi/Hương/Riko | おはようございます!<br>*(Chào buổi sáng!)* |
| Linh | <ruby>説明<rt>せつめい</rt></ruby>します。<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>は<ruby>四<rt>よっ</rt></ruby>つ。<br>*(Em giải thích. Thu hoạch có 4 bước.)* |
| Linh | まず、<ruby>音<rt>おと</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて<ruby>熟<rt>じゅく</rt></ruby>しているか<ruby>確認<rt>かくにん</rt></ruby>します。ポンポンと<ruby>低<rt>ひく</rt></ruby>い<ruby>音<rt>おと</rt></ruby>がOK。<br>*(Đầu tiên, gõ nghe tiếng để xác nhận chín. Tiếng "pôm pôm" trầm là OK.)* |
| Linh | <ruby>次<rt>つぎ</rt></ruby>に、ハサミで<ruby>蔓<rt>つる</rt></ruby>を<ruby>切<rt>き</rt></ruby>ります。<ruby>蔓<rt>つる</rt></ruby>を<ruby>3<rt>さん</rt></ruby>センチ<ruby>残<rt>のこ</rt></ruby>す。<br>*(Tiếp theo, cắt cuống bằng kéo. Để lại 3 cm cuống.)* |
| Linh | それから、<ruby>優<rt>やさ</rt></ruby>しく<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げて、コンテナへ。<ruby>落<rt>お</rt></ruby>とすと<ruby>傷<rt>きず</rt></ruby>になります。<br>*(Sau đó, nâng nhẹ nhàng bỏ vào container. Rơi là dập.)* |
| Linh | <ruby>最後<rt>さいご</rt></ruby>に、コンテナを<ruby>3<rt>さん</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>積<rt>つ</rt></ruby>まない。<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Cuối cùng, không xếp container quá 3 tầng. Lưu ý nhé.)* |
| Hương | リンさん、<ruby>音<rt>おと</rt></ruby>がよく<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>は?<br>*(Chị Linh, lúc không phân biệt được tiếng thì sao?)* |
| Linh | <ruby>無理<rt>むり</rt></ruby>に<ruby>切<rt>き</rt></ruby>らないで、<ruby>私<rt>わたし</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>判断<rt>はんだん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい<ruby>時<rt>とき</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Đừng cắt liều, gọi em. Lúc khó quyết thì xác nhận quan trọng.)* |
| Dewi | <ruby>了解<rt>りょうかい</rt></ruby>!<ruby>頑張<rt>がんば</rt></ruby>ろう!<br>*(Rõ! Cố lên!)* |

---

## Tình huống 2 — 第3ハウス · 6:30, Linh hướng dẫn Hương cách nghe âm

| Vai | Lời thoại |
|---|---|
| Hương | リンさん、これ、<ruby>切<rt>き</rt></ruby>っていいですか?<br>*(Chị Linh, cái này, cắt được chưa ạ?)* |
| Linh | (gõ) ポン...ポン...ちょっと<ruby>高<rt>たか</rt></ruby>い<ruby>音<rt>おと</rt></ruby>だね。まだ<ruby>早<rt>はや</rt></ruby>い。<br>*(Pôm... pôm... Tiếng hơi cao. Còn sớm.)* |
| Hương | <ruby>高<rt>たか</rt></ruby>い<ruby>音<rt>おと</rt></ruby>=まだ<ruby>早<rt>はや</rt></ruby>い、<ruby>低<rt>ひく</rt></ruby>い<ruby>音<rt>おと</rt></ruby>=<ruby>熟<rt>じゅく</rt></ruby>している、ということですね。<br>*(Tiếng cao = còn sớm, tiếng thấp = đã chín, đúng không ạ?)* |
| Linh | そう!よく<ruby>覚<rt>おぼ</rt></ruby>えたね。<ruby>隣<rt>となり</rt></ruby>の<ruby>玉<rt>たま</rt></ruby>はどう?<br>*(Đúng! Nhớ giỏi. Quả kế bên thì sao?)* |
| Hương | (gõ) ポン...あ、<ruby>低<rt>ひく</rt></ruby>い!<br>*(Pôm... à, thấp!)* |
| Linh | はい、それは<ruby>熟<rt>じゅく</rt></ruby>してる。<ruby>蔓<rt>つる</rt></ruby>も<ruby>枯<rt>か</rt></ruby>れかけてるね。<br>*(Vâng, đó là chín rồi. Cuống cũng đang khô nhỉ.)* |
| Hương | <ruby>蔓<rt>つる</rt></ruby>も<ruby>見<rt>み</rt></ruby>るんですか?<br>*(Phải nhìn cả cuống ạ?)* |
| Linh | <ruby>音<rt>おと</rt></ruby>と<ruby>蔓<rt>つる</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>蔓<rt>つる</rt></ruby>が<ruby>緑<rt>みどり</rt></ruby>でピンとしてたら、まだ<ruby>早<rt>はや</rt></ruby>い。<br>*(Tiếng và cuống, kiểm tra cả hai. Cuống còn xanh và thẳng là còn sớm.)* |
| Hương | やってみます!<br>*(Em thử ạ!)* |
| Linh | ハサミ、ゆっくり。<ruby>蔓<rt>つる</rt></ruby>を<ruby>3<rt>さん</rt></ruby>センチ<ruby>残<rt>のこ</rt></ruby>す。<br>*(Kéo, chậm thôi. Để cuống 3 cm.)* |
| Hương | (cắt) できました!<br>*(Xong rồi ạ!)* |
| Linh | <ruby>上手<rt>じょうず</rt></ruby>!きれいに<ruby>切<rt>き</rt></ruby>れてる。<br>*(Giỏi! Cắt gọn lắm.)* |

---

## Tình huống 3 — Lán sơ chế · 9:00, 親方 đo độ ngọt và phân loại

| Vai | Lời thoại |
|---|---|
| Yamamoto | リン、<ruby>糖度<rt>とうど</rt></ruby><ruby>測<rt>はか</rt></ruby>るぞ。これが<ruby>糖度計<rt>とうどけい</rt></ruby>だ。<br>*(Linh, đo độ ngọt nhé. Đây là máy đo độ Brix.)* |
| Linh | <ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Xin chỉ cách dùng ạ.)* |
| Yamamoto | <ruby>果汁<rt>かじゅう</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>取<rt>と</rt></ruby>って、ここに<ruby>垂<rt>た</rt></ruby>らす。<ruby>蓋<rt>ふた</rt></ruby>を<ruby>閉<rt>し</rt></ruby>めて、<ruby>光<rt>ひかり</rt></ruby>に<ruby>当<rt>あ</rt></ruby>てて<ruby>覗<rt>のぞ</rt></ruby>く。<br>*(Lấy ít nước quả, nhỏ vào đây. Đóng nắp, đưa ra ánh sáng, ngó vào.)* |
| Linh | (làm) <ruby>12<rt>じゅうに</rt></ruby><ruby>度<rt>ど</rt></ruby>です!<br>*(12 độ ạ!)* |
| Yamamoto | おお、<ruby>合格<rt>ごうかく</rt></ruby>だ。<ruby>海<rt>うみ</rt></ruby>なりは<ruby>11<rt>じゅういち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>が<ruby>基準<rt>きじゅん</rt></ruby>。<br>*(Ố, đậu rồi. Uminari tiêu chuẩn từ 11 độ trở lên.)* |
| Linh | <ruby>11<rt>じゅういち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以下<rt>いか</rt></ruby>はどうしますか?<br>*(Dưới 11 độ thì làm thế nào ạ?)* |
| Yamamoto | <ruby>規格外<rt>きかくがい</rt></ruby>として、<ruby>直売所<rt>ちょくばいじょ</rt></ruby>で<ruby>安<rt>やす</rt></ruby>く<ruby>売<rt>う</rt></ruby>る。または<ruby>従業員<rt>じゅうぎょういん</rt></ruby>に<ruby>配<rt>くば</rt></ruby>るな。<br>*(Loại ngoài tiêu chuẩn, bán ở cửa hàng tại chỗ giá rẻ. Hoặc phát cho nhân viên.)* |
| Linh | <ruby>規格外<rt>きかくがい</rt></ruby>って、<ruby>味<rt>あじ</rt></ruby>は<ruby>悪<rt>わる</rt></ruby>くないですよね?<br>*(Loại ngoài tiêu chuẩn, vị không tệ phải không ạ?)* |
| Yamamoto | <ruby>味<rt>あじ</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらん。<ruby>形<rt>かたち</rt></ruby>や<ruby>大<rt>おお</rt></ruby>きさが<ruby>規格<rt>きかく</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わないだけだ。<ruby>築地<rt>つきじ</rt></ruby>には<ruby>送<rt>おく</rt></ruby>れない。<br>*(Vị không đổi. Chỉ là hình dáng hay kích cỡ không hợp tiêu chuẩn. Không gửi Tsukiji được.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>糖度<rt>とうど</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>度<rt>ど</rt></ruby>を<ruby>基準<rt>きじゅん</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けます。<br>*(Em rõ ạ. Phân loại theo chuẩn 11 độ.)* |

---

## Tình huống 4 — Lán đóng gói · 10:30, hướng dẫn dán nhãn xuất hàng

| Vai | Lời thoại |
|---|---|
| Linh | フォン、デウィ、リコさん、<ruby>箱詰<rt>はこづ</rt></ruby>めとラベル<ruby>貼<rt>は</rt></ruby>りやります。<br>*(Hương, Dewi, Riko, mình đóng thùng và dán nhãn nhé.)* |
| Riko | リンさん、<ruby>箱<rt>はこ</rt></ruby>に<ruby>何<rt>なん</rt></ruby><ruby>玉<rt>たま</rt></ruby><ruby>入<rt>い</rt></ruby>れますか?<br>*(Linh-san, một thùng cho mấy quả ạ?)* |
| Linh | <ruby>小玉<rt>こだま</rt></ruby>スイカは<ruby>6<rt>ろっ</rt></ruby><ruby>玉<rt>たま</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>段<rt>だん</rt></ruby>×<ruby>3<rt>さん</rt></ruby><ruby>列<rt>れつ</rt></ruby>に<ruby>並<rt>なら</rt></ruby>べて。<ruby>間<rt>あいだ</rt></ruby>に<ruby>緩衝材<rt>かんしょうざい</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<br>*(Dưa hấu nhỏ 6 quả. Xếp 2 tầng × 3 hàng. Chèn vật đệm vào giữa.)* |
| Dewi | <ruby>緩衝材<rt>かんしょうざい</rt></ruby>って<ruby>何<rt>なに</rt></ruby>?<br>*(Vật đệm là gì?)* |
| Linh | これだよ、<ruby>発泡<rt>はっぽう</rt></ruby>シート。<ruby>傷<rt>きず</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐため。<br>*(Cái này, tấm xốp foam. Để chống trầy.)* |
| Hương | ラベルはどこに<ruby>貼<rt>は</rt></ruby>りますか?<br>*(Nhãn dán đâu ạ?)* |
| Linh | <ruby>箱<rt>はこ</rt></ruby>の<ruby>長<rt>なが</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>の<ruby>側面<rt>そくめん</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby>。「JAS<ruby>有機<rt>ゆうき</rt></ruby>」のシールも<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Mặt bên dài của thùng, dán 2 cái. Đừng quên sticker "JAS hữu cơ".)* |
| Hương | このピンクのが「JAS<ruby>有機<rt>ゆうき</rt></ruby>」シールですか?<br>*(Cái hồng này là sticker "JAS hữu cơ" ạ?)* |
| Linh | そう、ピンク=JAS<ruby>有機<rt>ゆうき</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>貼<rt>は</rt></ruby>って。これがないと<ruby>有機<rt>ゆうき</rt></ruby>として<ruby>売<rt>う</rt></ruby>れません。<br>*(Đúng, hồng = JAS hữu cơ. Phải dán. Thiếu là không bán được dưới danh nghĩa hữu cơ.)* |
| Riko | <ruby>確<rt>たし</rt></ruby>かに<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Đúng là quan trọng nhỉ.)* |

---

## Tình huống 5 — Lán đóng gói · 12:00, Linh báo tiến độ Saori-san

| Vai | Lời thoại |
|---|---|
| Saori | リンちゃん、<ruby>進<rt>すす</rt></ruby>み<ruby>具合<rt>ぐあい</rt></ruby>は?<br>*(Linh-chan, tiến độ thế nào?)* |
| Linh | サオリさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>320<rt>さんびゃくにじゅう</rt></ruby><ruby>玉<rt>たま</rt></ruby>、<ruby>箱詰<rt>はこづ</rt></ruby>め<ruby>50<rt>ごじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Saori-san, vất vả ạ. Thu hoạch 320 quả, đóng thùng 50 thùng xong.)* |
| Saori | <ruby>順調<rt>じゅんちょう</rt></ruby>ね。<ruby>糖度<rt>とうど</rt></ruby>の<ruby>平均<rt>へいきん</rt></ruby>は?<br>*(Suôn sẻ nhỉ. Độ Brix trung bình bao nhiêu?)* |
| Linh | <ruby>11<rt>じゅういち</rt></ruby>.<ruby>8<rt>はち</rt></ruby><ruby>度<rt>ど</rt></ruby>です。<ruby>規格外<rt>きかくがい</rt></ruby>は<ruby>15<rt>じゅうご</rt></ruby><ruby>玉<rt>たま</rt></ruby>でした。<br>*(11.8 độ ạ. Loại ngoài chuẩn 15 quả.)* |
| Saori | いい<ruby>数字<rt>すうじ</rt></ruby>!<ruby>規格外<rt>きかくがい</rt></ruby>も<ruby>少<rt>すく</rt></ruby>ない。<ruby>明日<rt>あした</rt></ruby>の<ruby>築地<rt>つきじ</rt></ruby><ruby>行<rt>い</rt></ruby>き、リンちゃんが<ruby>同行<rt>どうこう</rt></ruby>するのよね?<br>*(Số đẹp! Loại ngoài chuẩn cũng ít. Chuyến Tsukiji ngày mai, Linh-chan đi cùng đúng không?)* |
| Linh | はい、<ruby>親方<rt>おやかた</rt></ruby>からお<ruby>願<rt>ねが</rt></ruby>いされました。<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Vâng, ông親方 đã giao. Em hơi hồi hộp.)* |
| Saori | <ruby>運転手<rt>うんてんしゅ</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>慣<rt>な</rt></ruby>れているから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。リンちゃんの<ruby>仕事<rt>しごと</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ。<ruby>1<rt>ひと</rt></ruby>つ、<ruby>搬入<rt>はんにゅう</rt></ruby><ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い。<ruby>2<rt>ふた</rt></ruby>つ、<ruby>仲卸<rt>なかおろし</rt></ruby>さんに<ruby>挨拶<rt>あいさつ</rt></ruby>。<ruby>3<rt>みっ</rt></ruby>つ、<ruby>受領<rt>じゅりょう</rt></ruby><ruby>書<rt>しょ</rt></ruby>をもらう。<br>*(Bác tài Kimura quen rồi, yên tâm. Việc Linh-chan có 3. Một, chứng kiến bốc hàng. Hai, chào người 仲卸. Ba, lấy biên nhận.)* |
| Linh | メモします。<ruby>搬入<rt>はんにゅう</rt></ruby><ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い・<ruby>挨拶<rt>あいさつ</rt></ruby>・<ruby>受領<rt>じゅりょう</rt></ruby><ruby>書<rt>しょ</rt></ruby>、ですね。<br>*(Em ghi lại. Chứng kiến bốc hàng, chào, biên nhận, ạ.)* |
| Saori | 「<ruby>仲卸<rt>なかおろし</rt></ruby>」=<ruby>中間<rt>ちゅうかん</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>。<ruby>築地<rt>つきじ</rt></ruby>で<ruby>農家<rt>のうか</rt></ruby>と<ruby>小売店<rt>こうりてん</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ<ruby>人<rt>ひと</rt></ruby>です。<br>*(仲卸 = doanh nghiệp trung gian. Ở Tsukiji là người đứng giữa nông dân và cửa hàng bán lẻ.)* |
| Linh | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Em học được. Em cảm ơn ạ.)* |

---

## Tình huống 6 — Sân farm · 3:00 sáng hôm sau, Linh gặp tài xế Kimura

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>木村<rt>きむら</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Bác Kimura, chào buổi sáng. Hôm nay mong bác chỉ bảo ạ.)* |
| Kimura | おう、リンちゃんか。よろしくな。<ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>のドライブだ、<ruby>寝<rt>ね</rt></ruby>ててもいいぞ。<br>*(Ờ, Linh-chan hả. Nhờ em. 3 tiếng đi, ngủ được đấy.)* |
| Linh | いえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>築地<rt>つきじ</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてなので、<ruby>勉強<rt>べんきょう</rt></ruby>させてください。<br>*(Không, em không sao. Tsukiji lần đầu, cho em được học.)* |
| Kimura | <ruby>築地<rt>つきじ</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>過<rt>す</rt></ruby>ぎが<ruby>一番<rt>いちばん</rt></ruby><ruby>賑<rt>にぎ</rt></ruby>やかだ。<ruby>俺<rt>おれ</rt></ruby>たちは<ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Tsukiji 6 giờ sáng nhộn nhịp nhất. Mình dự kiến đến 5h30.)* |
| Linh | <ruby>50<rt>ごじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby><ruby>積<rt>つ</rt></ruby>みましたよね?<br>*(Đã chất 50 thùng đúng không bác?)* |
| Kimura | <ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みだ。<ruby>納品書<rt>のうひんしょ</rt></ruby>はリンちゃんが<ruby>持<rt>も</rt></ruby>ってるな?<br>*(Đã kiểm rồi. Phiếu giao hàng em cầm chứ?)* |
| Linh | はい、<ruby>3<rt>さん</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Vâng, em chuẩn bị 3 tờ.)* |
| Kimura | じゃあ<ruby>出発<rt>しゅっぱつ</rt></ruby>するか。<br>*(Vậy xuất phát.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong bác chỉ bảo ạ.)* |

---

## Tình huống 7 — Trên xe tải · 4:30, Kimura kể chuyện chợ Tsukiji

| Vai | Lời thoại |
|---|---|
| Kimura | リンちゃん、<ruby>築地<rt>つきじ</rt></ruby>は<ruby>1935<rt>せんきゅうひゃくさんじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby>からの<ruby>歴史<rt>れきし</rt></ruby>ある<ruby>市場<rt>しじょう</rt></ruby>だ。<br>*(Linh-chan, Tsukiji là chợ có lịch sử từ năm 1935.)* |
| Linh | <ruby>90<rt>きゅうじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>!すごい<ruby>歴史<rt>れきし</rt></ruby>ですね。<br>*(90 năm! Lịch sử ghê.)* |
| Kimura | <ruby>魚<rt>さかな</rt></ruby>が<ruby>有名<rt>ゆうめい</rt></ruby>だけど、<ruby>野菜<rt>やさい</rt></ruby>や<ruby>果物<rt>くだもの</rt></ruby>もな。<ruby>俺<rt>おれ</rt></ruby>たちのスイカは<ruby>果実<rt>かじつ</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る。<br>*(Cá nổi tiếng, nhưng rau quả cũng có. Dưa hấu của tụi mình vào chợ trái cây.)* |
| Linh | <ruby>仲卸<rt>なかおろし</rt></ruby>さんはどんな<ruby>方<rt>かた</rt></ruby>ですか?<br>*(Người 仲卸 là người thế nào ạ?)* |
| Kimura | <ruby>俺<rt>おれ</rt></ruby>たちの<ruby>仲卸<rt>なかおろし</rt></ruby>は<ruby>大島<rt>おおしま</rt></ruby><ruby>商店<rt>しょうてん</rt></ruby>の<ruby>大島<rt>おおしま</rt></ruby>さん。<ruby>3<rt>さん</rt></ruby><ruby>代目<rt>だいめ</rt></ruby>だ。<ruby>厳<rt>きび</rt></ruby>しいけど<ruby>優<rt>やさ</rt></ruby>しい。<br>*(仲卸 của tụi mình là ông Oshima ở cửa hàng Oshima. Đời thứ 3. Nghiêm nhưng tốt.)* |
| Linh | <ruby>挨拶<rt>あいさつ</rt></ruby>はどう<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Chào thì nói thế nào ạ?)* |
| Kimura | 「<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>からまいりました、リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」でいい。<br>*(Cứ "Em đến từ nông trại Yamamoto, em là Linh. Hôm nay mong anh chỉ bảo" là được.)* |
| Linh | <ruby>練習<rt>れんしゅう</rt></ruby>しておきます。<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>からまいりました...<br>*(Em sẽ luyện. Em đến từ nông trại Yamamoto...)* |
| Kimura | (cười) <ruby>真面目<rt>まじめ</rt></ruby>だな。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>子<rt>こ</rt></ruby>が<ruby>来<rt>く</rt></ruby>るのは<ruby>大島<rt>おおしま</rt></ruby>さんも<ruby>聞<rt>き</rt></ruby>いている。<br>*(Nghiêm túc thật. Yên tâm, anh Oshima cũng nghe có người Việt đến rồi.)* |

---

## Tình huống 8 — Chợ Tsukiji · 5:30, đến nơi, gặp Oshima-san 仲卸

| Vai | Lời thoại |
|---|---|
| Kimura | <ruby>大島<rt>おおしま</rt></ruby>さーん、おはようございます。<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>です。<br>*(Anh Oshima ơi, chào buổi sáng. Nông trại Yamamoto đây.)* |
| Oshima | おう、<ruby>木村<rt>きむら</rt></ruby>ちゃん、<ruby>朝<rt>あさ</rt></ruby>から<ruby>御苦労<rt>ごくろう</rt></ruby>さん。あれ、<ruby>今日<rt>きょう</rt></ruby>は<ruby>女<rt>おんな</rt></ruby>の<ruby>子<rt>こ</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>か?<br>*(Ờ Kimura, sáng sớm vất vả. Ơ, hôm nay đi với em gái à?)* |
| Linh | (cúi sâu) <ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>からまいりました、リンと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em đến từ nông trại Yamamoto, em là Linh. Từ Việt Nam đến. Hôm nay mong anh chỉ bảo ạ.)* |
| Oshima | おお、しっかりしてるな!<ruby>大島<rt>おおしま</rt></ruby>です。<ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>いてたよ。よろしく。<br>*(Ố, đàng hoàng quá! Tôi là Oshima. Anh Yamamoto bảo rồi. Nhờ em.)* |
| Linh | <ruby>50<rt>ごじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>お<ruby>納<rt>おさ</rt></ruby>めいたします。<ruby>納品書<rt>のうひんしょ</rt></ruby>でございます。<br>*(50 thùng, hôm nay xin được giao. Đây là phiếu giao hàng ạ.)* |
| Oshima | (xem) <ruby>糖度<rt>とうど</rt></ruby><ruby>平均<rt>へいきん</rt></ruby><ruby>11<rt>じゅういち</rt></ruby>.<ruby>8<rt>はち</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>立派<rt>りっぱ</rt></ruby>だな。<ruby>海<rt>うみ</rt></ruby>なりは<ruby>毎年<rt>まいとし</rt></ruby><ruby>楽<rt>たの</rt></ruby>しみだよ。<br>*(Brix trung bình 11.8 độ, ngon đấy. Uminari năm nào tôi cũng háo hức.)* |
| Linh | ありがとうございます。<ruby>搬入<rt>はんにゅう</rt></ruby>はどこにすればよろしいでしょうか?<br>*(Em cảm ơn. Bốc hàng vào đâu thì được ạ?)* |
| Oshima | <ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>レーンの<ruby>奥<rt>おく</rt></ruby>に<ruby>俺<rt>おれ</rt></ruby>のところがある。<ruby>木村<rt>きむら</rt></ruby>ちゃん、<ruby>知<rt>し</rt></ruby>ってるな?<br>*(Cuối làn số 3 là chỗ tôi. Kimura biết nhỉ?)* |
| Kimura | はい、<ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Vâng, rõ.)* |

---

## Tình huống 9 — Chợ Tsukiji · 5:50, bốc hàng vào kho Oshima

| Vai | Lời thoại |
|---|---|
| Oshima | リンちゃん、<ruby>搬入<rt>はんにゅう</rt></ruby><ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>箱数<rt>はこすう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>む。<br>*(Linh-chan, nhờ em chứng kiến bốc hàng. Đếm số thùng giúp.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em rõ ạ.)* |
| Linh | (đếm) <ruby>1<rt>いち</rt></ruby>、<ruby>2<rt>に</rt></ruby>、<ruby>3<rt>さん</rt></ruby>...<ruby>10<rt>じゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby>。<ruby>11<rt>じゅういち</rt></ruby>、<ruby>12<rt>じゅうに</rt></ruby>...<ruby>20<rt>にじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby>。<br>*(1, 2, 3...10 thùng. 11, 12...20 thùng.)* |
| Worker | (worker chợ) <ruby>姉<rt>ねえ</rt></ruby>ちゃん、JAS<ruby>有機<rt>ゆうき</rt></ruby>か。<ruby>珍<rt>めずら</rt></ruby>しいな。<br>*(Cô em, JAS hữu cơ à. Hiếm đấy.)* |
| Linh | はい、<ruby>有機<rt>ゆうき</rt></ruby><ruby>栽培<rt>さいばい</rt></ruby>の<ruby>小玉<rt>こだま</rt></ruby>スイカ「<ruby>海<rt>うみ</rt></ruby>なり」でございます。<br>*(Vâng, là dưa hấu kodama hữu cơ "Uminari" ạ.)* |
| Worker | 「<ruby>海<rt>うみ</rt></ruby>なり」って<ruby>名前<rt>なまえ</rt></ruby>、いいな。<br>*(Tên "Uminari" hay nhỉ.)* |
| Linh | <ruby>叩<rt>たた</rt></ruby>くと<ruby>海<rt>うみ</rt></ruby>の<ruby>波<rt>なみ</rt></ruby>のような<ruby>音<rt>おと</rt></ruby>がするからだそうです。<br>*(Nghe nói vì gõ vào có tiếng như sóng biển.)* |
| Linh | (đếm tiếp) ...<ruby>48<rt>よんじゅうはち</rt></ruby>、<ruby>49<rt>よんじゅうきゅう</rt></ruby>、<ruby>50<rt>ごじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby>。<ruby>全数<rt>ぜんすう</rt></ruby>OKです!<br>*(...48, 49, 50 thùng. Đủ số!)* |
| Oshima | <ruby>確<rt>たし</rt></ruby>かに<ruby>50<rt>ごじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby>。お<ruby>預<rt>あず</rt></ruby>かりします。<br>*(Đúng 50 thùng. Tôi nhận.)* |

---

## Tình huống 10 — Văn phòng Oshima商店 · 6:15, nhận biên nhận

| Vai | Lời thoại |
|---|---|
| Oshima | リンちゃん、これが<ruby>受領書<rt>じゅりょうしょ</rt></ruby>だ。<ruby>農場<rt>のうじょう</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>してくれ。<br>*(Linh-chan, đây là biên nhận. Đưa cho nông trại.)* |
| Linh | はい、<ruby>確<rt>たし</rt></ruby>かにお<ruby>受<rt>う</rt></ruby>けいたしました。ありがとうございます。<br>*(Vâng, em nhận chắc chắn. Em cảm ơn ạ.)* |
| Oshima | <ruby>競<rt>せ</rt></ruby>りは<ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>から。<ruby>結果<rt>けっか</rt></ruby>は<ruby>昼<rt>ひる</rt></ruby><ruby>過<rt>す</rt></ruby>ぎに<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>する。<br>*(Đấu giá từ 7 giờ sáng. Kết quả trưa tôi báo anh Yamamoto.)* |
| Linh | <ruby>競<rt>せ</rt></ruby>りも<ruby>見<rt>み</rt></ruby>てもよろしいでしょうか?<br>*(Đấu giá em được xem không ạ?)* |
| Oshima | おお、<ruby>勉強<rt>べんきょう</rt></ruby><ruby>熱心<rt>ねっしん</rt></ruby>だな!<ruby>見<rt>み</rt></ruby>ていいよ。あそこの<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>から<ruby>見学<rt>けんがく</rt></ruby>できる。<br>*(Ố, chịu học nhỉ! Xem được. Tầng 2 đằng kia có chỗ tham quan.)* |
| Linh | ありがとうございます!<br>*(Em cảm ơn ạ!)* |
| Oshima | <ruby>木村<rt>きむら</rt></ruby>ちゃん、<ruby>朝<rt>あさ</rt></ruby><ruby>飯<rt>めし</rt></ruby><ruby>食<rt>く</rt></ruby>ってきな。リンちゃんも。<ruby>築地<rt>つきじ</rt></ruby>の<ruby>玉子焼<rt>たまごや</rt></ruby>き、<ruby>絶品<rt>ぜっぴん</rt></ruby>だぞ。<br>*(Kimura, đi ăn sáng đi. Linh-chan cũng vậy. Trứng cuộn Tsukiji ngon tuyệt.)* |
| Linh | はい、<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Vâng, em xin phép ạ.)* |

---

## Tình huống 11 — Khu ăn uống chợ Tsukiji · 6:45, ăn sáng với Kimura

| Vai | Lời thoại |
|---|---|
| Kimura | リンちゃん、お<ruby>疲<rt>つか</rt></ruby>れさん。よくやったな。<br>*(Linh-chan, vất vả rồi. Làm tốt lắm.)* |
| Linh | <ruby>木村<rt>きむら</rt></ruby>さんもお<ruby>疲<rt>つか</rt></ruby>れさまでした。ドキドキしました。<br>*(Bác Kimura cũng vất vả. Em hồi hộp lắm.)* |
| Kimura | <ruby>大島<rt>おおしま</rt></ruby>さん、リンちゃんを<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>ったみたいだぞ。あの<ruby>人<rt>ひと</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby>に<ruby>厳<rt>きび</rt></ruby>しいんだけど。<br>*(Anh Oshima có vẻ thích Linh-chan đấy. Ông ấy khó tính với người nước ngoài lắm.)* |
| Linh | え、そうなんですか?<br>*(Ơ, vậy ạ?)* |
| Kimura | <ruby>挨拶<rt>あいさつ</rt></ruby>がしっかりしてたから。「<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>からまいりました」って、ちゃんと<ruby>言<rt>い</rt></ruby>えただろ?<br>*(Vì em chào đàng hoàng. "Đến từ nông trại Yamamoto" em nói được mà.)* |
| Linh | <ruby>練習<rt>れんしゅう</rt></ruby>しました。<ruby>10<rt>じゅっ</rt></ruby><ruby>回<rt>かい</rt></ruby>くらい。<br>*(Em đã luyện. Khoảng 10 lần.)* |
| Kimura | (cười) <ruby>努力<rt>どりょく</rt></ruby><ruby>家<rt>か</rt></ruby>だな。<ruby>玉子焼<rt>たまごや</rt></ruby>きどうだ?<br>*(Chăm thật. Trứng cuộn thế nào?)* |
| Linh | おいしいです!<ruby>甘<rt>あま</rt></ruby>くて、<ruby>柔<rt>やわ</rt></ruby>らかい。<br>*(Ngon ạ! Ngọt và mềm.)* |
| Kimura | <ruby>東京<rt>とうきょう</rt></ruby><ruby>名物<rt>めいぶつ</rt></ruby>だ。お<ruby>土産<rt>みやげ</rt></ruby>に<ruby>買<rt>か</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>ろう。フォンちゃんにも。<br>*(Đặc sản Tokyo. Mua làm quà mang về. Cho cả Hương-chan.)* |
| Linh | ありがとうございます!フォンも<ruby>喜<rt>よろこ</rt></ruby>ぶと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em cảm ơn! Em nghĩ Hương cũng sẽ vui.)* |

---

## Tình huống 12 — Tầng 2 chợ Tsukiji · 7:00, Linh xem đấu giá lần đầu

| Vai | Lời thoại |
|---|---|
| Linh | (xem trên tầng 2) わー、すごい<ruby>人<rt>ひと</rt></ruby>!<br>*(Wow, đông quá!)* |
| Worker | (đứng cạnh) <ruby>初<rt>はじ</rt></ruby>めて?<br>*(Lần đầu à?)* |
| Linh | はい、<ruby>初<rt>はじ</rt></ruby>めてです。あの<ruby>手<rt>て</rt></ruby>の<ruby>動<rt>うご</rt></ruby>きは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Vâng, lần đầu. Động tác tay kia là gì ạ?)* |
| Worker | あれが<ruby>競<rt>せ</rt></ruby>り。<ruby>指<rt>ゆび</rt></ruby>の<ruby>数<rt>かず</rt></ruby>で<ruby>値段<rt>ねだん</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>すんだ。<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すと<ruby>他<rt>ほか</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>聞<rt>き</rt></ruby>こえちゃうから。<br>*(Đó là đấu giá. Dùng ngón tay chỉ giá. Nói thành lời thì người khác nghe.)* |
| Linh | なるほど!<ruby>静<rt>しず</rt></ruby>かに<ruby>競<rt>せ</rt></ruby>るんですね。<br>*(Ra vậy! Đấu giá thầm thì nhỉ.)* |
| Worker | <ruby>築地<rt>つきじ</rt></ruby><ruby>独特<rt>どくとく</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>だ。<ruby>江戸<rt>えど</rt></ruby><ruby>時代<rt>じだい</rt></ruby>から<ruby>続<rt>つづ</rt></ruby>いている。<br>*(Phương pháp đặc trưng Tsukiji. Từ thời Edo.)* |
| Linh | <ruby>歴史<rt>れきし</rt></ruby>がありますね。あ、<ruby>海<rt>うみ</rt></ruby>なりが<ruby>出<rt>で</rt></ruby>てきました!<br>*(Có lịch sử nhỉ. À, Uminari ra rồi!)* |
| Worker | おっ、JAS<ruby>有機<rt>ゆうき</rt></ruby><ruby>小玉<rt>こだま</rt></ruby>スイカか。<ruby>高<rt>たか</rt></ruby>く<ruby>売<rt>う</rt></ruby>れそうだな。<br>*(Ố, JAS hữu cơ dưa hấu nhỏ à. Chắc bán được giá.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>たちの<ruby>農場<rt>のうじょう</rt></ruby>のです!<br>*(Của nông trại em đấy ạ!)* |
| Worker | おお、<ruby>誇<rt>ほこ</rt></ruby>りに<ruby>思<rt>おも</rt></ruby>っていいぞ。<br>*(Ố, tự hào được đấy.)* |

---

## Tình huống 13 — Trên xe tải về · 11:00, gọi報告 親方

*Đường về Ibaraki, Linh gọi điện báo cáo親方.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。リンです。ご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Thưa親方, vất vả ạ. Linh đây. Em xin báo cáo.)* |
| Yamamoto | おう、リン、どうだった?<br>*(Ờ Linh, thế nào?)* |
| Linh | <ruby>築地<rt>つきじ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>、<ruby>搬入<rt>はんにゅう</rt></ruby><ruby>50<rt>ごじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>受領書<rt>じゅりょうしょ</rt></ruby>もいただきました。<br>*(Đến Tsukiji 5h30, bốc 50 thùng xong, biên nhận em cũng nhận rồi.)* |
| Yamamoto | <ruby>大島<rt>おおしま</rt></ruby>さんの<ruby>反応<rt>はんのう</rt></ruby>は?<br>*(Phản ứng anh Oshima thế nào?)* |
| Linh | <ruby>糖度<rt>とうど</rt></ruby><ruby>11<rt>じゅういち</rt></ruby>.<ruby>8<rt>はち</rt></ruby><ruby>度<rt>ど</rt></ruby>を「<ruby>立派<rt>りっぱ</rt></ruby>」とおっしゃっていただきました。<br>*(Anh Oshima nói Brix 11.8 độ là "ngon".)* |
| Yamamoto | おお、それは<ruby>嬉<rt>うれ</rt></ruby>しいな。<ruby>競<rt>せ</rt></ruby>り<ruby>結果<rt>けっか</rt></ruby>は?<br>*(Ố, mừng quá. Kết quả đấu giá?)* |
| Linh | <ruby>競<rt>せ</rt></ruby>りは<ruby>見学<rt>けんがく</rt></ruby>させていただきました。<ruby>結果<rt>けっか</rt></ruby>は<ruby>昼<rt>ひる</rt></ruby><ruby>過<rt>す</rt></ruby>ぎに<ruby>大島<rt>おおしま</rt></ruby>さんから<ruby>親方<rt>おやかた</rt></ruby>にご<ruby>連絡<rt>れんらく</rt></ruby>があるそうです。<br>*(Em được xem đấu giá. Kết quả trưa anh Oshima sẽ báo親方 ạ.)* |
| Yamamoto | わかった。<ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>ってきな。<br>*(OK. Cẩn thận về nhé.)* |
| Linh | はい、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em xin phép ạ.)* |

---

## Tình huống 14 — Phòng Linh đêm muộn · 22:00, Zalo nhóm gia đình Đồng Tháp (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Linh kể về chuyến Tsukiji trong group Zalo gia đình.

| Vai | Lời thoại |
|---|---|
| Linh | Cả nhà ơi, hôm nay con đi chợ Tsukiji rồi! |
| Mẹ Linh | Tsukiji là gì con? |
| Linh | Là chợ bán buôn lớn nhất Nhật mẹ. Lịch sử 90 năm, ở Tokyo. Người ta gọi là *Tsukiji shijou* (築地市場). Cá tươi nổi tiếng, nhưng rau quả cũng nhiều. |
| Bố Linh | Sao con đi chợ? |
| Linh | Nông trại con thu hoạch dưa hấu — gọi là *kodama suika* (小玉スイカ) — giống nhỏ ngọt. Tên thương hiệu là *Uminari* (海なり) — nghĩa là "tiếng sóng biển", vì gõ vào kêu pôm pôm như sóng. Bác chủ giao con áp tải xe tải 50 thùng đi Tokyo. |
| Em Linh | Chị giỏi quá! |
| Linh | 3 giờ sáng dậy, lên xe, 5h30 đến Tsukiji. Con gặp *nakaoroshi* (仲卸) — người trung gian — tên Oshima. Bác tài Kimura bảo bác Oshima khó tính với người nước ngoài, nhưng con chào đúng kiểu nên bác mến luôn! |
| Bố Linh | Chào sao con? |
| Linh | "*Yamamoto noujou kara mairimashita, Linh to moushimasu*" — Em đến từ nông trại Yamamoto, em là Linh — kiểu khiêm tốn nhất, cúi sâu. Con tập 10 lần trên xe đó bố! |
| Mẹ Linh | Hihi con của mẹ. Rồi sao? |
| Linh | Đếm đủ 50 thùng, đưa phiếu giao hàng (*nouhinsho* — 納品書), nhận biên nhận (*juryousho* — 受領書). Sau đó xem đấu giá — gọi là *seri* (競り). Lạ lắm mẹ ơi, người ta đấu giá im lặng, chỉ giơ ngón tay biểu thị giá. Phương pháp từ thời Edo. |
| Em Linh | Cool quá chị! |
| Linh | Dưa hấu nông trại con bán được giá cao vì có chứng nhận JAS hữu cơ — *JAS-yuuki* (JAS有機). Hữu cơ ở Nhật đắt gấp 2-3 lần thường. |
| Bố Linh | Con học được nhiều rồi đấy. Sau này về Đồng Tháp mở nông trại hữu cơ được rồi. |
| Linh | Vâng bố. Còn mua trứng cuộn *tamagoyaki* (玉子焼き) Tsukiji nổi tiếng nữa, làm quà cho em Hương, chị Dewi, chị Riko. Tiền ăn sáng bác tài Kimura bao luôn, không cho con trả! |
| Mẹ Linh | May con gặp người tốt. Giữ sức khoẻ. |
| Linh | Vâng mẹ. Mai con dậy 5h. Con đi ngủ. Cả nhà thương con! |

---

## Tình huống 15 — Bàn học Linh · 23:00, ghi nhật ký sempai cuối ngày dài

| Vai | Lời thoại |
|---|---|
| Linh | (viết) <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5日<rt>いつか</rt></ruby>、<ruby>築地<rt>つきじ</rt></ruby><ruby>初<rt>はじ</rt></ruby><ruby>同行<rt>どうこう</rt></ruby>。<ruby>海<rt>うみ</rt></ruby>なり<ruby>50<rt>ごじゅっ</rt></ruby><ruby>箱<rt>ばこ</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby><ruby>納品<rt>のうひん</rt></ruby>。<br>*(5/7, lần đầu đi áp tải Tsukiji. Uminari 50 thùng giao an toàn.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>:<ruby>海<rt>うみ</rt></ruby>なり・<ruby>糖度<rt>とうど</rt></ruby>・<ruby>糖度計<rt>とうどけい</rt></ruby>・<ruby>規格外<rt>きかくがい</rt></ruby>・<ruby>緩衝材<rt>かんしょうざい</rt></ruby>・<ruby>箱詰<rt>はこづ</rt></ruby>め・JAS<ruby>有機<rt>ゆうき</rt></ruby>シール・<ruby>納品書<rt>のうひんしょ</rt></ruby>・<ruby>受領書<rt>じゅりょうしょ</rt></ruby>・<ruby>仲卸<rt>なかおろし</rt></ruby>・<ruby>搬入<rt>はんにゅう</rt></ruby>・<ruby>競<rt>せ</rt></ruby>り・<ruby>果実<rt>かじつ</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>。<br>*(Từ học hôm nay: Uminari, độ Brix, máy đo Brix, ngoài tiêu chuẩn, vật đệm, đóng thùng, sticker JAS, phiếu giao, biên nhận, người 仲卸, bốc hàng, đấu giá, chợ trái cây.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えた keigo:〜からまいりました・お<ruby>納<rt>おさ</rt></ruby>めいたします・お<ruby>預<rt>あず</rt></ruby>かりします・<ruby>確<rt>たし</rt></ruby>かにお<ruby>受<rt>う</rt></ruby>けいたしました・<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします・〜でございます。<br>*(Keigo: đến từ ~, xin giao ~, tôi nhận giữ, em nhận chắc chắn, em xin phép ăn, là ~.)* |
| Linh | <ruby>大島<rt>おおしま</rt></ruby>さんに<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>られた!<ruby>挨拶<rt>あいさつ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>のおかげ。<br>*(Được anh Oshima quý! Nhờ luyện chào 10 lần.)* |
| Linh | <ruby>明日<rt>あした</rt></ruby>は<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>日目<rt>にちめ</rt></ruby>。<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>には<ruby>築地<rt>つきじ</rt></ruby><ruby>独立<rt>どくりつ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>?<br>*(Mai thu hoạch ngày 2. Cố lên. Năm 3 sẽ tự đi Tsukiji một mình?)* |

---

## Đọng lại chương 4

Đầu tháng 7/2026, Linh trải nghiệm đợt thu hoạch quy mô lớn 800 quả dưa hấu kodama Uminari + lần đầu áp tải xe tải lên chợ Tsukiji Tokyo. Học bộ mẫu câu chuyên ngành chuỗi cung ứng nông sản: **chỉ đạo team thu hoạch theo bước** (まず音を聞いて → 蔓を3センチ残す → 優しく持ち上げる → 3段以上積まない), **kiểm tra độ ngọt với 親方** (糖度を測ります・〜度です・規格外), **đóng gói + dán nhãn** (6玉/箱・緩衝材を入れる・JAS有機シールを貼る), **giao tiếp với 仲卸 chợ formal** (〜からまいりました・お納めいたします・お預かりします・頂戴いたします・〜でございます), **báo cáo lại với 親方** qua điện thoại (搬入完了・受領書もいただきました). Nắm chuỗi cung ứng nông sản hữu cơ Nhật: 農家 → 仲卸 (Tsukiji) → 競り → 小売店 → 消費者. Hiểu cách đấu giá thầm bằng ngón tay đặc trưng Tsukiji có từ Edo. Bài học cá nhân: luyện chào 10 lần trên xe = được người khó tính như Oshima-san quý — **chuẩn bị** quan trọng hơn **năng lực bẩm sinh**.

> Từ vựng & mẫu câu chương này: 海なり・小玉スイカ・収穫・糖度・糖度計・規格外・蔓・コンテナ・箱詰め・緩衝材・JAS有機シール・納品書・受領書・仲卸・搬入・競り・果実市場・築地・〜からまいりました・お納めいたします・お預かりします・確かにお受けいたしました・頂戴いたします・〜でございます・搬入完了

## Bí quyết chương

- Thu hoạch dưa hấu kodama: **音を聞く** → **蔓を3cm残す** → **優しく持ち上げ** → **3段以下積み**. Sai 1 → quả nứt → 規格外.
- <ruby>糖度<rt>とうど</rt></ruby> (độ Brix): chuẩn Tsukiji ≥ 11 độ. Dưới = 規格外 (bán直売所, biếu nhân viên — vị không tệ chỉ là dạng/cỡ).
- Đóng thùng có 3 bộ phận: 6 quả + 緩衝材 + sticker (JAS có機 hồng). Thiếu sticker = không bán hữu cơ được.
- Chuỗi Tsukiji: 農家 → **仲卸** (trung gian) → **競り** (đấu giá) → 小売店. 仲卸 quyết định mọi việc giao hàng.
- Đấu giá Tsukiji = giơ ngón tay thầm lặng (từ Edo). Khác kiểu Tây phương hô lớn.
- Keigo formal khi giao hàng cho đối tác ngoài: 〜からまいりました > お納めいたします > お預かりします > 頂戴いたします. Luyện 10 lần trước khi gặp.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 海なり | うみなり | HẢI — | Uminari (giống dưa thương hiệu) |
| 小玉スイカ | こだまスイカ | TIỂU NGỌC — | Dưa hấu kodama (giống nhỏ) |
| 収穫 | しゅうかく | THU HOẠCH | Thu hoạch |
| 手順 | てじゅん | THỦ THUẬN | Quy trình, các bước |
| 熟す | じゅくす | THỤC | Chín, chín muồi |
| 蔓 | つる | MAN | Cuống, dây leo |
| ハサミ | — | — | Kéo |
| コンテナ | — | — | Container, khay |
| 段 | だん | ĐOẠN | Tầng (xếp chồng) |
| 積む | つむ | TÍCH | Xếp chồng |
| 傷 | きず | THƯƠNG | Vết dập, vết thương |
| 枯れる | かれる | KHÔ | Khô, héo |
| 糖度 | とうど | ĐƯỜNG ĐỘ | Độ ngọt (Brix) |
| 糖度計 | とうどけい | ĐƯỜNG ĐỘ KẾ | Máy đo Brix |
| 果汁 | かじゅう | QUẢ TRẤP | Nước quả |
| 蓋 | ふた | CÁI | Nắp |
| 基準 | きじゅん | CƠ CHUẨN | Tiêu chuẩn |
| 規格外 | きかくがい | QUY CÁCH NGOẠI | Ngoài tiêu chuẩn |
| 直売所 | ちょくばいじょ | TRỰC MÃI SỞ | Cửa hàng bán tại chỗ |
| 従業員 | じゅうぎょういん | TÒNG NGHIỆP VIÊN | Nhân viên |
| 形 | かたち | HÌNH | Hình dáng |
| 箱詰め | はこづめ | TƯƠNG SUNG | Đóng thùng |
| 玉 | たま | NGỌC | Quả (lượng từ dưa hấu) |
| 列 | れつ | LIỆT | Hàng, dãy |
| 緩衝材 | かんしょうざい | HOÃN XUNG TÀI | Vật đệm chống va đập |
| 発泡シート | はっぽうシート | PHÁT BÀO — | Tấm xốp foam |
| 側面 | そくめん | TRẮC DIỆN | Mặt bên |
| シール | — | — | Sticker, nhãn |
| 同行 | どうこう | ĐỒNG HÀNH | Đi cùng, áp tải |
| 運転手 | うんてんしゅ | VẬN CHUYỂN THỦ | Tài xế |
| 搬入 | はんにゅう | BAN NHẬP | Bốc hàng vào kho |
| 立ち会い | たちあい | LẬP HỘI | Chứng kiến, có mặt |
| 仲卸 | なかおろし | TRỌNG TOÁI | Người trung gian (chợ buôn) |
| 受領書 | じゅりょうしょ | THỌ LĨNH THƯ | Biên nhận |
| 納品書 | のうひんしょ | NẠP PHẨM THƯ | Phiếu giao hàng |
| 市場 | しじょう | THỊ TRƯỜNG | Chợ |
| 果実市場 | かじつしじょう | QUẢ THỰC THỊ TRƯỜNG | Chợ trái cây |
| 競り | せり | CẠNH | Đấu giá |
| 商店 | しょうてん | THƯƠNG ĐIỂM | Cửa hàng |
| 代目 | だいめ | ĐẠI MỤC | Đời thứ ~ |
| 預かる | あずかる | DỰ | Nhận giữ |
| 全数 | ぜんすう | TOÀN SỐ | Toàn bộ số |
| 反応 | はんのう | PHẢN ỨNG | Phản ứng |
| 見学 | けんがく | KIẾN HỌC | Tham quan, học hỏi |
| 玉子焼き | たまごやき | NGỌC TỬ THIÊU | Trứng cuộn Nhật |
| 絶品 | ぜっぴん | TUYỆT PHẨM | Tuyệt phẩm |
| 名物 | めいぶつ | DANH VẬT | Đặc sản |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | Xin nhận (khiêm nhường) |
| 指 | ゆび | CHỈ | Ngón tay |
| 数 | かず | SỐ | Số |
| 値段 | ねだん | TRỊ ĐOẠN | Giá |
| 示す | しめす | THỊ | Chỉ ra, biểu thị |
| 独特 | どくとく | ĐỘC ĐẶC | Đặc trưng, riêng biệt |
| 江戸時代 | えどじだい | GIANG HỘ THỜI ĐẠI | Thời Edo |
| 誇り | ほこり | KHOA | Tự hào |
| 平均 | へいきん | BÌNH QUÂN | Trung bình |
| 数字 | すうじ | SỐ TỰ | Con số |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn tất |
| 無事 | ぶじ | VÔ SỰ | An toàn, không sự cố |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000005, 800000041, NULL, 'markdown_book', 'T5. Sự cố kho lạnh — rau hỏng do nhiệt độ (置場トラブル)', '# Sách nông nghiệp năm 2 · T5. Sự cố kho lạnh — rau hỏng do nhiệt độ (置場トラブル)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, năm 2 thực tập nông nghiệp Ibaraki, N4 đang luyện N3). Học các mẫu hội thoại tiếng Nhật trong sự cố vận hành kho lạnh và xử lý hàng hỏng: phát hiện bất thường nhiệt độ và báo ngay (〜が おかしいです / 至急報告), mô tả thiệt hại định lượng (〜ケース が ダメになりました), báo cáo 親方 theo 報連相 (報告・連絡・相談), gọi điện cho thợ điện lạnh (冷凍機の業者), điền 不適合報告書 (báo cáo không phù hợp) bằng keigo, xin lỗi và nhận trách nhiệm phần mình (確認不足でした・申し訳ございません), đề xuất biện pháp phòng ngừa (再発防止策).

---

## Bối cảnh

Đầu tháng 7 năm 2026. Nông trại 山本農場 ở 茨城県 đang mùa thu hoạch dưa leo và xà lách. Kho lạnh số 2 (置場2号) chứa khoảng 80 thùng (ケース) xà lách chuẩn bị xuất cho 直売所 và siêu thị Aeon. Sáng nay Linh là người mở cửa kho đầu tiên thì thấy nhiệt độ hiển thị +12℃ thay vì +4℃ như cài đặt — máy lạnh đã hỏng từ đêm qua. Linh đang là sempai năm 2, có 1 kohai Indonesia (Dewi, đến tháng 4) phía dưới. Chương này tập trung các mẫu câu xử lý sự cố nông nghiệp: phát hiện-báo cáo-xử lý-ghi báo cáo-đề xuất phòng ngừa.

---

## Tình huống 1 — Cửa kho lạnh số 2 · 6:30, phát hiện nhiệt độ bất thường

*Linh mở cửa kho như thường lệ, thấy đèn báo nhiệt độ nhấp nháy đỏ.*

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>温度計<rt>おんどけい</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）あれ？<ruby>12<rt>じゅうに</rt></ruby><ruby>度<rt>ど</rt></ruby>？おかしいな…<ruby>設定<rt>せってい</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>度<rt>ど</rt></ruby>のはず。<br>*(Nhìn nhiệt kế. Ơ? 12 độ? Lạ thật… cài đặt phải là 4 độ chứ.)* |
| Linh | （<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る）<ruby>空気<rt>くうき</rt></ruby>がぬるい。<ruby>冷凍機<rt>れいとうき</rt></ruby>の<ruby>音<rt>おと</rt></ruby>もしない。これは<ruby>故障<rt>こしょう</rt></ruby>だ。<br>*(Bước vào. Không khí ấm. Máy lạnh cũng không nổ. Hỏng rồi.)* |
| Linh | （レタスの<ruby>箱<rt>はこ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>）<ruby>葉<rt>は</rt></ruby>っぱがしおれてる…<ruby>親方<rt>おやかた</rt></ruby>にすぐ<ruby>報告<rt>ほうこく</rt></ruby>しないと。<br>*(Kiểm tra thùng xà lách. Lá héo rồi… phải báo bác chủ Yamamoto ngay.)* |

---

## Tình huống 2 — Sân nông trại · 6:35, gọi điện 親方 báo gấp

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>電話<rt>でんわ</rt></ruby>）<ruby>親方<rt>おやかた</rt></ruby>、おはようございます。<ruby>朝<rt>あさ</rt></ruby><ruby>早<rt>はや</rt></ruby>くすみません、リンです。<br>*(Điện thoại. Bác chủ Yamamoto ạ, em chào buổi sáng. Xin lỗi gọi sớm, em là Linh.)* |
| 親方 | おはよう。どうした？<br>*(Chào. Có chuyện gì?)* |
| Linh | <ruby>至急<rt>しきゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>置場<rt>おきば</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>冷凍機<rt>れいとうき</rt></ruby>が<ruby>故障<rt>こしょう</rt></ruby>しています。<ruby>庫内<rt>こない</rt></ruby><ruby>温度<rt>おんど</rt></ruby>が<ruby>12<rt>じゅうに</rt></ruby><ruby>度<rt>ど</rt></ruby>まで<ruby>上<rt>あ</rt></ruby>がっています。<br>*(Em báo cáo khẩn cấp. Máy lạnh kho số 2 đang hỏng. Nhiệt độ trong kho đã lên 12 độ.)* |
| 親方 | <ruby>何<rt>なん</rt></ruby>だって？レタスはどうなった？<br>*(Cái gì? Xà lách thì sao?)* |
| Linh | <ruby>葉<rt>は</rt></ruby>がしおれている<ruby>箱<rt>はこ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いです。まだ<ruby>全部<rt>ぜんぶ</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>していません。<br>*(Nhiều thùng lá đã héo. Em chưa kiểm tra hết.)* |
| 親方 | わかった、<ruby>今<rt>いま</rt></ruby>からすぐ<ruby>行<rt>い</rt></ruby>く。<ruby>君<rt>きみ</rt></ruby>は<ruby>扉<rt>とびら</rt></ruby>を<ruby>閉<rt>し</rt></ruby>めておけ。<ruby>冷気<rt>れいき</rt></ruby>が<ruby>逃<rt>に</rt></ruby>げないように。<br>*(Hiểu rồi, tôi đi ngay bây giờ. Em đóng cửa kho lại. Đừng để hơi lạnh thoát ra.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Kho lạnh 2号 · 6:50, 親方 đến hiện trường

| Vai | Lời thoại |
|---|---|
| 親方 | （<ruby>到着<rt>とうちゃく</rt></ruby>）リン、<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてくれ。<br>*(Tới nơi. Linh, kể chi tiết tình hình cho tôi.)* |
| Linh | はい。<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>に<ruby>扉<rt>とびら</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けたら、<ruby>温度<rt>おんど</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>赤<rt>あか</rt></ruby>く<ruby>点滅<rt>てんめつ</rt></ruby>していました。<ruby>冷凍機<rt>れいとうき</rt></ruby>の<ruby>運転<rt>うんてん</rt></ruby><ruby>音<rt>おと</rt></ruby>もありません。<br>*(Vâng. 6 giờ 30 em mở cửa thì thấy bảng hiển thị nhiệt độ nhấp nháy đỏ. Tiếng máy lạnh chạy cũng không có.)* |
| 親方 | <ruby>昨日<rt>きのう</rt></ruby><ruby>夜<rt>よる</rt></ruby><ruby>最後<rt>さいご</rt></ruby>に<ruby>閉<rt>し</rt></ruby>めたのは？<br>*(Tối qua người đóng cửa cuối cùng là ai?)* |
| Linh | <ruby>夕方<rt>ゆうがた</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>私<rt>わたし</rt></ruby>が<ruby>閉<rt>し</rt></ruby>めました。その<ruby>時<rt>とき</rt></ruby>は<ruby>温度<rt>おんど</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>度<rt>ど</rt></ruby>で<ruby>正常<rt>せいじょう</rt></ruby>でした。<br>*(6 giờ chiều em là người đóng. Lúc đó nhiệt độ 4 độ bình thường.)* |
| 親方 | （<ruby>機械<rt>きかい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>）コンプレッサーが<ruby>動<rt>うご</rt></ruby>いていない。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>止<rt>と</rt></ruby>まったな。<br>*(Kiểm tra máy. Máy nén không chạy. Dừng giữa đêm rồi.)* |
| Linh | <ruby>申<rt>もう</rt></ruby><ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>夜間<rt>やかん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>ができていませんでした。<br>*(Em xin lỗi ạ. Em chưa kiểm tra ban đêm.)* |
| 親方 | <ruby>夜間<rt>やかん</rt></ruby>は<ruby>機械<rt>きかい</rt></ruby>が<ruby>勝手<rt>かって</rt></ruby>に<ruby>動<rt>うご</rt></ruby>くものだから、<ruby>君<rt>きみ</rt></ruby>のせいじゃない。とにかく<ruby>被害<rt>ひがい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Đêm máy chạy tự động, không phải lỗi em. Trước hết xác nhận thiệt hại đã.)* |

---

## Tình huống 4 — Trong kho · 7:10, kiểm đếm thiệt hại định lượng

| Vai | Lời thoại |
|---|---|
| 親方 | <ruby>箱<rt>はこ</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>箱<rt>はこ</rt></ruby>ずつ<ruby>開<rt>あ</rt></ruby>けて、ダメなものと<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>なものを<ruby>分<rt>わ</rt></ruby>けてくれ。<br>*(Mở từng thùng một, phân loại hỏng và còn tốt.)* |
| Linh | はい。（<ruby>確認<rt>かくにん</rt></ruby>しながら）この<ruby>箱<rt>はこ</rt></ruby>は<ruby>葉<rt>は</rt></ruby>っぱが<ruby>茶色<rt>ちゃいろ</rt></ruby>くなっています。ダメですね。<br>*(Vâng. Vừa kiểm tra. Thùng này lá đã ngả nâu rồi. Hỏng.)* |
| 親方 | <ruby>触<rt>さわ</rt></ruby>って<ruby>柔<rt>やわ</rt></ruby>らかいのも<ruby>出荷<rt>しゅっか</rt></ruby><ruby>不可<rt>ふか</rt></ruby>だ。<ruby>厳<rt>きび</rt></ruby>しく<ruby>選別<rt>せんべつ</rt></ruby>してくれ。<br>*(Sờ thấy mềm cũng không xuất được. Phân loại nghiêm nhé.)* |
| Linh | はい。…<ruby>合計<rt>ごうけい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。ダメな<ruby>箱<rt>はこ</rt></ruby>が<ruby>52<rt>ごじゅうに</rt></ruby>ケース、まだ<ruby>使<rt>つか</rt></ruby>えるのが<ruby>28<rt>にじゅうはち</rt></ruby>ケースです。<br>*(Vâng… Em đếm tổng. Thùng hỏng 52 ca-sét, còn dùng được 28 ca-sét.)* |
| 親方 | <ruby>52<rt>ごじゅうに</rt></ruby>ケース…<ruby>1<rt>いち</rt></ruby>ケース<ruby>3000<rt>さんぜん</rt></ruby><ruby>円<rt>えん</rt></ruby>として<ruby>15<rt>じゅうご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>の<ruby>損失<rt>そんしつ</rt></ruby>だな。<br>*(52 ca-sét… mỗi ca-sét 3000 yên thì thiệt hại 15 vạn yên.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby><ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Em thực sự xin lỗi ạ.)* |
| 親方 | <ruby>機械<rt>きかい</rt></ruby>の<ruby>故障<rt>こしょう</rt></ruby>だ、<ruby>謝<rt>あやま</rt></ruby>らなくていい。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>次<rt>つぎ</rt></ruby>からどうするかだ。<br>*(Máy hỏng, không cần xin lỗi. Quan trọng là từ giờ làm thế nào.)* |

---

## Tình huống 5 — Văn phòng nông trại · 7:40, gọi thợ điện lạnh

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>電話<rt>でんわ</rt></ruby>）もしもし、<ruby>常陸<rt>ひたち</rt></ruby><ruby>冷機<rt>れいき</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>さんですか？<br>*(Điện thoại. Alo, có phải công ty cơ điện lạnh Hitachi Reiki không ạ?)* |
| 業者 | はい、<ruby>常陸<rt>ひたち</rt></ruby><ruby>冷機<rt>れいき</rt></ruby>でございます。<br>*(Vâng, Hitachi Reiki đây ạ.)* |
| Linh | <ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>のリンと<ruby>申<rt>もう</rt></ruby>します。<ruby>置場<rt>おきば</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>冷凍機<rt>れいとうき</rt></ruby>が<ruby>停止<rt>ていし</rt></ruby>しております。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>修理<rt>しゅうり</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか。<br>*(Em là Linh ở nông trại Yamamoto. Máy lạnh kho số 2 của bên em đang dừng. Hôm nay sửa giúp được không ạ?)* |
| 業者 | <ruby>型番<rt>かたばん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Cho biết mã máy được không ạ?)* |
| Linh | はい、ダイキンの<ruby>業務用<rt>ぎょうむよう</rt></ruby> LSVNP<ruby>5<rt>ご</rt></ruby>FCです。<br>*(Vâng, máy công nghiệp Daikin LSVNP5FC ạ.)* |
| 業者 | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>午前<rt>ごぜん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>までに<ruby>技術者<rt>ぎじゅつしゃ</rt></ruby>を<ruby>派遣<rt>はけん</rt></ruby>いたします。<br>*(Rõ ạ. Trước 10 giờ sáng sẽ cử kỹ thuật viên đến.)* |
| Linh | ありがとうございます。<ruby>住所<rt>じゅうしょ</rt></ruby>はご<ruby>存<rt>ぞん</rt></ruby>じでしょうか？<br>*(Em cảm ơn. Anh biết địa chỉ chứ ạ?)* |
| 業者 | はい、<ruby>登録<rt>とうろく</rt></ruby>がございますので<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, có lưu rồi, không sao ạ.)* |
| Linh | よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Mong anh giúp ạ. Em xin phép.)* |

---

## Tình huống 6 — Sân kho · 8:00, hướng dẫn kohai Dewi xử lý hàng hỏng

*Dewi (Indonesia, 21t, đến tháng 4) vừa đi làm tới.*

| Vai | Lời thoại |
|---|---|
| Dewi | リン<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます。<ruby>何<rt>なに</rt></ruby>かあったんですか？<br>*(Chị Linh, em chào buổi sáng. Có chuyện gì ạ?)* |
| Linh | おはよう、デウィちゃん。<ruby>冷凍機<rt>れいとうき</rt></ruby>が<ruby>故障<rt>こしょう</rt></ruby>して、レタスが<ruby>52<rt>ごじゅうに</rt></ruby>ケースだめになっちゃった。<br>*(Chào em Dewi. Máy lạnh hỏng, mất 52 thùng xà lách rồi.)* |
| Dewi | えー、<ruby>大変<rt>たいへん</rt></ruby>ですね…<br>*(Ôi, tệ thật…)* |
| Linh | デウィちゃん、ダメな<ruby>箱<rt>はこ</rt></ruby>はあっちの<ruby>軽<rt>けい</rt></ruby>トラックに<ruby>積<rt>つ</rt></ruby>んで、<ruby>堆肥場<rt>たいひば</rt></ruby>に<ruby>運<rt>はこ</rt></ruby>んでください。<br>*(Dewi, thùng hỏng chất lên xe ben kia, mang ra bãi ủ phân giúp chị.)* |
| Dewi | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>葉<rt>は</rt></ruby>っぱは<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>捨<rt>す</rt></ruby>てるんですか？<br>*(Vâng, em hiểu. Lá vứt hết ạ?)* |
| Linh | <ruby>捨<rt>す</rt></ruby>てるんじゃなくて、<ruby>堆肥<rt>たいひ</rt></ruby>にするの。<ruby>農場<rt>のうじょう</rt></ruby>では<ruby>何<rt>なに</rt></ruby>も<ruby>無駄<rt>むだ</rt></ruby>にしない。<br>*(Không phải vứt, mà ủ thành phân. Ở nông trại không lãng phí gì cả.)* |
| Dewi | なるほど。<ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Hiểu rồi. Em rõ.)* |
| Linh | <ruby>箱<rt>はこ</rt></ruby>は<ruby>洗<rt>あら</rt></ruby>って<ruby>戻<rt>もど</rt></ruby>してね。<br>*(Thùng nhớ rửa rồi trả lại nhé.)* |

---

## Tình huống 7 — Kho 2号 · 10:00, kỹ thuật viên đến chẩn đoán

| Vai | Lời thoại |
|---|---|
| 技術者 | <ruby>常陸<rt>ひたち</rt></ruby><ruby>冷機<rt>れいき</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>診<rt>み</rt></ruby>させていただきます。<br>*(Tôi là Sato bên Hitachi Reiki. Tôi xin phép xem máy.)* |
| 親方 | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ anh.)* |
| 技術者 | （<ruby>10<rt>じゅっ</rt></ruby><ruby>分後<rt>ぷんご</rt></ruby>）コンプレッサーの<ruby>基板<rt>きばん</rt></ruby>が<ruby>焼<rt>や</rt></ruby>けています。<ruby>多分<rt>たぶん</rt></ruby><ruby>落雷<rt>らくらい</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>ですね。<br>*(10 phút sau. Bo mạch máy nén bị cháy. Có lẽ do ảnh hưởng sét đánh.)* |
| 親方 | <ruby>昨夜<rt>さくや</rt></ruby><ruby>雷<rt>かみなり</rt></ruby>がすごかったからな。<ruby>修理<rt>しゅうり</rt></ruby>にどれくらいかかりますか？<br>*(Đêm qua sét to thật. Sửa mất bao lâu?)* |
| 技術者 | <ruby>部品<rt>ぶひん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>で<ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です。<ruby>費用<rt>ひよう</rt></ruby>は<ruby>部品<rt>ぶひん</rt></ruby>と<ruby>工賃<rt>こうちん</rt></ruby>で<ruby>8<rt>はち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>ほど。<br>*(Thay linh kiện khoảng 3 tiếng. Chi phí linh kiện và công khoảng 8 vạn yên.)* |
| Linh | あの…<ruby>落雷<rt>らくらい</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐ<ruby>方法<rt>ほうほう</rt></ruby>はありますか？<br>*(Dạ… có cách phòng sét nào không ạ?)* |
| 技術者 | サージプロテクターを<ruby>付<rt>つ</rt></ruby>けると<ruby>安心<rt>あんしん</rt></ruby>ですよ。<ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>くらいで<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けられます。<br>*(Gắn thêm chống xung sét thì yên tâm. Khoảng 1 vạn yên là lắp được.)* |
| 親方 | ついでに<ruby>付<rt>つ</rt></ruby>けてください。<br>*(Tiện thể lắp luôn giúp.)* |

---

## Tình huống 8 — Văn phòng · 11:30, viết 不適合報告書 (báo cáo không phù hợp)

| Vai | Lời thoại |
|---|---|
| 親方 | リン、<ruby>不適合<rt>ふてきごう</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてくれ。<ruby>取引先<rt>とりひきさき</rt></ruby>のイオンに<ruby>提出<rt>ていしゅつ</rt></ruby>する。<br>*(Linh, viết báo cáo không phù hợp giúp tôi. Gửi cho đối tác Aeon.)* |
| Linh | はい。<ruby>発生<rt>はっせい</rt></ruby><ruby>日時<rt>にちじ</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>、<ruby>被害<rt>ひがい</rt></ruby><ruby>数<rt>すう</rt></ruby>、<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>策<rt>さく</rt></ruby>でいいですか？<br>*(Vâng. Ngày giờ phát sinh, nguyên nhân, số thiệt hại, biện pháp phòng tái phát đúng không ạ?)* |
| 親方 | そうだ。<ruby>原因<rt>げんいん</rt></ruby>は「<ruby>落雷<rt>らくらい</rt></ruby>による<ruby>冷凍機<rt>れいとうき</rt></ruby><ruby>基板<rt>きばん</rt></ruby><ruby>故障<rt>こしょう</rt></ruby>」、<ruby>被害<rt>ひがい</rt></ruby>は「レタス<ruby>52<rt>ごじゅうに</rt></ruby>ケース<ruby>廃棄<rt>はいき</rt></ruby>」。<br>*(Đúng. Nguyên nhân là "bo máy lạnh hỏng do sét", thiệt hại là "phải bỏ 52 thùng xà lách".)* |
| Linh | <ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>策<rt>さく</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つ<ruby>提案<rt>ていあん</rt></ruby>してもいいですか？<br>*(Biện pháp phòng tái phát em đề xuất 2 cái được không ạ?)* |
| 親方 | 言ってみろ。<br>*(Nói thử xem.)* |
| Linh | <ruby>1つ目<rt>ひとつめ</rt></ruby>はサージプロテクターを<ruby>設置<rt>せっち</rt></ruby>すること。<ruby>2つ目<rt>ふたつめ</rt></ruby>は<ruby>温度<rt>おんど</rt></ruby><ruby>異常<rt>いじょう</rt></ruby>を<ruby>携帯<rt>けいたい</rt></ruby>に<ruby>通知<rt>つうち</rt></ruby>するアラートを<ruby>導入<rt>どうにゅう</rt></ruby>すること、はどうでしょうか。<br>*(Một là lắp chống xung sét. Hai là đưa vào hệ thống cảnh báo bất thường nhiệt độ qua điện thoại, được không ạ?)* |
| 親方 | いい<ruby>提案<rt>ていあん</rt></ruby>だ。<ruby>君<rt>きみ</rt></ruby>もずいぶん<ruby>成長<rt>せいちょう</rt></ruby>したな。<br>*(Đề xuất hay. Em trưởng thành nhiều rồi đấy.)* |
| Linh | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 9 — Gọi điện cho Aeon · 13:00, xin lỗi và điều chỉnh đơn

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>電話<rt>でんわ</rt></ruby>）イオンの<ruby>仕入<rt>しい</rt></ruby>れ<ruby>担当<rt>たんとう</rt></ruby><ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>でいらっしゃいますか？<br>*(Điện thoại. Có phải anh Tanaka phụ trách thu mua bên Aeon không ạ?)* |
| 田中 | はい、<ruby>田中<rt>たなか</rt></ruby>です。<br>*(Vâng, Tanaka đây.)* |
| Linh | <ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>のリンと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>納品<rt>のうひん</rt></ruby>について、ご<ruby>連絡<rt>れんらく</rt></ruby>がございます。<br>*(Em là Linh bên nông trại Yamamoto. Em có việc cần liên hệ về giao hàng hôm nay ạ.)* |
| 田中 | どうしましたか？<br>*(Có gì không?)* |
| Linh | <ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby><ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>冷凍機<rt>れいとうき</rt></ruby>の<ruby>故障<rt>こしょう</rt></ruby>により、レタスを<ruby>予定<rt>よてい</rt></ruby>の<ruby>80<rt>はちじゅう</rt></ruby>ケースから<ruby>28<rt>にじゅうはち</rt></ruby>ケースに<ruby>減<rt>へ</rt></ruby>らさせていただきたいのですが。<br>*(Em xin lỗi nhưng do máy lạnh hỏng, em xin được giảm xà lách từ 80 thùng dự kiến xuống 28 thùng ạ.)* |
| 田中 | そうですか…<ruby>残<rt>のこ</rt></ruby>りはいつ<ruby>納品<rt>のうひん</rt></ruby>できますか？<br>*(Vậy à… còn lại khi nào giao được?)* |
| Linh | <ruby>明後日<rt>あさって</rt></ruby>には<ruby>収穫<rt>しゅうかく</rt></ruby><ruby>分<rt>ぶん</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>納品<rt>のうひん</rt></ruby>できる<ruby>予定<rt>よてい</rt></ruby>です。<ruby>詳<rt>くわ</rt></ruby>しくは<ruby>後<rt>のち</rt></ruby>ほど<ruby>不適合<rt>ふてきごう</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>をメールでお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Ngày kia em giao bổ sung phần thu hoạch được. Chi tiết em sẽ gửi báo cáo qua mail sau ạ.)* |
| 田中 | <ruby>了解<rt>りょうかい</rt></ruby>しました。お<ruby>互<rt>たが</rt></ruby>い<ruby>大変<rt>たいへん</rt></ruby>ですね、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Tôi rõ rồi. Cả hai cùng vất vả nhỉ, cố lên.)* |
| Linh | ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em cảm ơn ạ. Em xin phép.)* |

---

## Tình huống 10 — Sân nông trại · 14:30, Dewi hỏi lại từ chuyên ngành

| Vai | Lời thoại |
|---|---|
| Dewi | <ruby>先輩<rt>せんぱい</rt></ruby>、さっきの「<ruby>不適合<rt>ふてきごう</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>」って<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Chị ơi, "không phù hợp báo cáo thư" lúc nãy là gì ạ?)* |
| Linh | <ruby>商品<rt>しょうひん</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>があった<ruby>時<rt>とき</rt></ruby>、<ruby>取引先<rt>とりひきさき</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>だよ。<ruby>原因<rt>げんいん</rt></ruby>と<ruby>対策<rt>たいさく</rt></ruby>を<ruby>書<rt>か</rt></ruby>く。<br>*(Là giấy gửi cho đối tác khi hàng có vấn đề. Viết nguyên nhân và biện pháp.)* |
| Dewi | なるほど。「<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>策<rt>さく</rt></ruby>」というのは？<br>*(Ra vậy. "Tái phát phòng chỉ sách" là?)* |
| Linh | <ruby>同<rt>おな</rt></ruby>じ<ruby>事故<rt>じこ</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>起<rt>お</rt></ruby>きないようにする<ruby>方法<rt>ほうほう</rt></ruby>のこと。「サージプロテクター<ruby>設置<rt>せっち</rt></ruby>」とか。<br>*(Là cách để cùng một sự cố không xảy ra lần thứ hai. Ví dụ "lắp chống xung sét".)* |
| Dewi | リン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>がとても<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Chị Linh tiếng Nhật giỏi quá.)* |
| Linh | ありがとう。<ruby>私<rt>わたし</rt></ruby>も<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はデウィちゃんと<ruby>同<rt>おな</rt></ruby>じだったよ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>をメモすれば、すぐ<ruby>覚<rt>おぼ</rt></ruby>えられる。<br>*(Cảm ơn. Một năm trước chị cũng giống em thôi. Mỗi ngày ghi lại từ không biết là sẽ nhớ nhanh.)* |
| Dewi | <ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cố gắng.)* |

---

## Tình huống 11 — Kho 2号 · 16:00, máy được sửa xong, kiểm tra lại

| Vai | Lời thoại |
|---|---|
| 技術者 | <ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>運転<rt>うんてん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Sửa xong rồi ạ. Nhờ kiểm tra vận hành.)* |
| 親方 | リン、<ruby>温度<rt>おんど</rt></ruby>を<ruby>見<rt>み</rt></ruby>てくれ。<br>*(Linh, xem nhiệt độ đi.)* |
| Linh | はい。<ruby>現在<rt>げんざい</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>下<rt>さ</rt></ruby>がっています。<ruby>設定<rt>せってい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>度<rt>ど</rt></ruby>、コンプレッサー<ruby>正常<rt>せいじょう</rt></ruby><ruby>動作<rt>どうさ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Vâng. Hiện 10 độ, đang xuống. Cài đặt 4 độ, máy nén đang chạy bình thường.)* |
| 技術者 | サージプロテクターはここに<ruby>設置<rt>せっち</rt></ruby>しました。<ruby>雷<rt>かみなり</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>は<ruby>万全<rt>ばんぜん</rt></ruby>です。<br>*(Chống xung sét lắp ở đây. Phòng chống sét đã chu toàn.)* |
| 親方 | ありがとうございました。<br>*(Cảm ơn anh nhiều.)* |
| Linh | あの、アラート<ruby>機能<rt>きのう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>も<ruby>見積<rt>みつ</rt></ruby>もりをいただけますか？<br>*(Dạ, vụ chức năng cảnh báo nhờ anh báo giá luôn được không ạ?)* |
| 技術者 | わかりました、<ruby>来週<rt>らいしゅう</rt></ruby>までにお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Rõ ạ, tuần sau tôi gửi qua.)* |

---

## Tình huống 12 — Văn phòng · 17:30, 親方 tổng kết và khen ngợi

| Vai | Lời thoại |
|---|---|
| 親方 | リン、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>によくやった。<ruby>朝<rt>あさ</rt></ruby>すぐ<ruby>報告<rt>ほうこく</rt></ruby>してくれたから<ruby>被害<rt>ひがい</rt></ruby>を<ruby>最小限<rt>さいしょうげん</rt></ruby>に<ruby>抑<rt>おさ</rt></ruby>えられた。<br>*(Linh, hôm nay em làm tốt thật. Em báo ngay từ sáng nên thiệt hại giảm xuống mức tối thiểu.)* |
| Linh | いえ、まだまだです。<ruby>夜間<rt>やかん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>仕組<rt>しく</rt></ruby>みがあれば、もっと<ruby>早<rt>はや</rt></ruby>く<ruby>気<rt>き</rt></ruby>づけたかもしれません。<br>*(Không, em còn kém. Nếu có hệ thống kiểm tra ban đêm thì đã phát hiện sớm hơn rồi.)* |
| 親方 | だから<ruby>君<rt>きみ</rt></ruby>のアラート<ruby>提案<rt>ていあん</rt></ruby>はいいんだ。<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>導入<rt>どうにゅう</rt></ruby>しよう。<br>*(Nên đề xuất cảnh báo của em mới hay. Tháng sau triển khai luôn.)* |
| Linh | ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em cảm ơn ạ. Em học được rất nhiều.)* |
| 親方 | <ruby>来年<rt>らいねん</rt></ruby>は<ruby>君<rt>きみ</rt></ruby>に<ruby>置場<rt>おきば</rt></ruby><ruby>管理<rt>かんり</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せようと<ruby>思<rt>おも</rt></ruby>っている。<ruby>頑張<rt>がんば</rt></ruby>れよ。<br>*(Sang năm tôi định giao em phụ trách quản lý kho. Cố lên.)* |
| Linh | はい、<ruby>精<rt>せい</rt></ruby>いっぱい<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng, em sẽ cố gắng hết sức ạ!)* |

---

## Tình huống 13 — Ký túc xá · 21:00, gọi điện về mẹ ở Đồng Tháp (cảnh tiếng Việt)

> Cảnh tiếng Việt — Linh gọi điện về VN sau một ngày dài.

| Vai | Lời thoại |
|---|---|
| Linh | Alo, mẹ ơi, con đây. Bên này muộn rồi mà bên nhà chắc 7 giờ tối thôi nhỉ. |
| Mẹ | Con gái! Hôm nay làm có mệt không? |
| Linh | Mệt lắm mẹ ơi. Sáng nay kho lạnh của trại con hỏng máy, mất 52 thùng xà lách, thiệt hại 15 vạn yên cơ. |
| Mẹ | Ôi trời, có sao không con? Có bị bác chủ Yamamoto mắng không? |
| Linh | Không, *親方* không mắng. Bác bảo do sét đánh hỏng bo máy lạnh chứ không phải lỗi con. Mà con còn được khen vì sáng phát hiện sớm rồi *報連相* — báo cáo, liên lạc, tham vấn — đúng quy trình đó mẹ. |
| Mẹ | Con học được nhiều thật. *Hourensou* là gì mẹ nghe lạ. |
| Linh | Là quy tắc giao tiếp công ty Nhật mẹ ạ. Hôm nay con còn viết được cả *不適合報告書* — báo cáo không phù hợp gửi siêu thị Aeon. Đề xuất lắp *chống xung sét* và cảnh báo nhiệt độ qua điện thoại. Bác chủ Yamamoto khen đề xuất hay, sang năm còn cho con phụ trách quản lý kho. |
| Mẹ | Giỏi quá con! Vậy là sang năm con thành sempai rồi nhỉ. |
| Linh | Vâng mẹ. À, có em *Dewi* người Indonesia kohai của con, hôm nay con dạy em ấy cách phân loại hàng hỏng và ủ phân. Em ấy ngoan lắm. |
| Mẹ | Nhớ giúp đỡ em ấy như các anh chị giúp con hồi mới sang nhé. |
| Linh | Vâng mẹ. Tháng 8 con xin nghỉ Obon được mấy ngày, định đi chơi với *Dewi* cho biết. |
| Mẹ | Đi cho thoải mái đầu óc. Đừng làm việc quá sức nghe chưa. |
| Linh | Vâng mẹ. Con đi tắm rồi đi ngủ đây. Mai 5 giờ con dậy thu hoạch dưa leo bù phần xà lách hỏng cho Aeon. Mẹ ngủ ngon. |
| Mẹ | Ngủ ngon con gái. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜がおかしいです / 〜が故障しています** — "〜 bất thường / 〜 đang hỏng" (báo sự cố)
- **至急ご報告です** — "Em báo cáo khẩn cấp" (mở đầu báo gấp)
- **〜ケースがダメになりました** — "mất 〜 thùng" (định lượng thiệt hại)
- **大変申し訳ございませんが、〜させていただきたいのですが** — "Em xin lỗi, em xin được phép 〜" (xin điều chỉnh)
- **再発防止策として、〜を提案いたします** — "Là biện pháp phòng tái phát, em đề xuất 〜"
- **〜というのは何ですか？** — "〜 nghĩa là gì?" (hỏi lại từ chưa hiểu)

> Từ vựng & mẫu câu chương này: 冷凍機・置場・故障・コンプレッサー・基板・落雷・サージプロテクター・不適合報告書・廃棄・再発防止策・報連相・選別・出荷不可・堆肥・取引先・納品・仕入れ・温度異常・アラート・運転確認 — đều là từ vận hành kho lạnh nông trại Nhật.

## Bí quyết chương

- **Khi phát hiện sự cố: BÁO TRƯỚC — XỬ LÝ SAU.** Trong văn hoá Nhật, 5 phút đầu báo cáo quan trọng hơn 1 giờ tự xử lý.
- **Định lượng cụ thể khi báo cáo.** "52 ケース, 15万円" rõ ràng hơn "rất nhiều, thiệt hại lớn".
- **Khi xin lỗi đối tác**: dùng 「大変申し訳ございませんが」 + giải pháp thay thế (giao ngày kia) — không chỉ xin lỗi suông.
- **不適合報告書** là văn bản bắt buộc trong chuỗi cung ứng nông sản Nhật khi có sự cố — gồm 4 mục: 発生日時, 原因, 被害, 再発防止策.
- **Sét đánh là nguyên nhân rất phổ biến** ở Ibaraki/Tochigi mùa hè — nông trại nào cũng nên có サージプロテクター.
- **Là sempai năm 2, dạy kohai bằng cách dịch từ chuyên ngành ra tiếng đơn giản** — đừng dùng keigo phức tạp với người N5.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 置場 | おきば | TRÍ TRƯỜNG | kho chứa, nơi đặt hàng |
| 温度計 | おんどけい | ÔN ĐỘ KẾ | nhiệt kế |
| 設定 | せってい | THIẾT ĐỊNH | cài đặt |
| 冷凍機 | れいとうき | LÃNH ĐÔNG CƠ | máy làm lạnh, máy cấp đông |
| 故障 | こしょう | CỐ CHƯỚNG | sự cố, hỏng hóc |
| 庫内 | こない | KHỐ NỘI | trong kho |
| 至急 | しきゅう | CHÍ CẤP | khẩn cấp |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | tham vấn, trao đổi |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | quy tắc Báo-Liên-Tham trong công ty Nhật |
| 扉 | とびら | PHI | cửa (kho, tủ) |
| 冷気 | れいき | LÃNH KHÍ | hơi lạnh |
| 状況 | じょうきょう | TRẠNG HUỐNG | tình hình |
| 点滅 | てんめつ | ĐIỂM DIỆT | nhấp nháy (đèn) |
| 運転 | うんてん | VẬN CHUYỂN | vận hành |
| 正常 | せいじょう | CHÍNH THƯỜNG | bình thường |
| コンプレッサー | — | — | máy nén |
| 確認 | かくにん | XÁC NHẬN | kiểm tra, xác nhận |
| 被害 | ひがい | BỊ HẠI | thiệt hại |
| 選別 | せんべつ | TUYỂN BIỆT | phân loại |
| 出荷不可 | しゅっかふか | XUẤT HÀ BẤT KHẢ | không thể xuất hàng |
| 損失 | そんしつ | TỔN THẤT | tổn thất, lỗ |
| 廃棄 | はいき | PHẾ KHÍ | bỏ đi, tiêu hủy |
| 堆肥 | たいひ | ĐÔI PHÌ | phân ủ |
| 堆肥場 | たいひば | ĐÔI PHÌ TRƯỜNG | bãi ủ phân |
| 軽トラック | けいトラック | KHINH — | xe ben nhỏ |
| 型番 | かたばん | HÌNH PHIÊN | mã model |
| 業者 | ぎょうしゃ | NGHIỆP GIẢ | nhà thầu, đơn vị dịch vụ |
| 技術者 | ぎじゅつしゃ | KỸ THUẬT GIẢ | kỹ thuật viên |
| 基板 | きばん | CƠ BẢN | bo mạch |
| 落雷 | らくらい | LẠC LÔI | sét đánh |
| サージプロテクター | — | — | thiết bị chống xung sét |
| 部品 | ぶひん | BỘ PHẨM | linh kiện |
| 工賃 | こうちん | CÔNG TRẢ | tiền công |
| 不適合報告書 | ふてきごうほうこくしょ | BẤT THÍCH HỢP BÁO CÁO THƯ | báo cáo không phù hợp |
| 取引先 | とりひきさき | THỦ DẪN TIÊN | đối tác, khách hàng |
| 仕入れ | しいれ | SĨ NHẬP | thu mua, nhập hàng |
| 納品 | のうひん | NẠP PHẨM | giao hàng |
| 発生日時 | はっせいにちじ | PHÁT SINH NHẬT THỜI | ngày giờ phát sinh |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 再発防止策 | さいはつぼうしさく | TÁI PHÁT PHÒNG CHỈ SÁCH | biện pháp phòng tái phát |
| 設置 | せっち | THIẾT TRÍ | lắp đặt |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| アラート | — | — | cảnh báo |
| 通知 | つうち | THÔNG TRI | thông báo |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 見積もり | みつもり | KIẾN TÍCH | báo giá, ước tính |
| 万全 | ばんぜん | VẠN TOÀN | chu toàn |
| 最小限 | さいしょうげん | TỐI THIỂU HẠN | mức tối thiểu |
| 任せる | まかせる | NHIỆM | giao phó, ủy thác |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000006, 800000041, NULL, 'markdown_book', 'T6. Thi 技能検定 3級 nông nghiệp (技能検定3級・農業)', '# Sách nông nghiệp năm 2 · T6. Thi 技能検定 3級 nông nghiệp (技能検定3級・農業)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, năm 2, N4 hướng N3). Học các mẫu hội thoại tiếng Nhật phục vụ kỳ thi 技能検定 3級 ngành nông nghiệp (canh tác đồng ruộng — 施設野菜栽培): hỏi thủ tục đăng ký với 監理団体, ôn lý thuyết với sempai (病害虫・農薬・肥料・栽培暦), luyện 実技 — thao tác cấy giống và pha thuốc đúng nồng độ, chào hỏi giám khảo và trả lời 試験官 (検定員) bằng けいご, xử lý khi căng thẳng quên từ (もう一度お願いします), nhận kết quả và báo 親方, tổ chức tiệc chúc mừng nhỏ với kohai.

---

## Bối cảnh

Tháng 7 năm 2026. Linh đã sang Nhật được 16 tháng, đang chuẩn bị thi 技能検定 3級 chuyên ngành 施設野菜栽培 (trồng rau nhà kính) — kỳ thi quốc gia bắt buộc cho TTS năm 2 để xét chuyển sang giai đoạn 2 (技能実習2号 → 3号). Kỳ thi gồm 学科試験 (lý thuyết 50 câu trắc nghiệm 60 phút) và 実技試験 (thực hành 2 giờ tại 試験場 ở 茨城農業大学校 Mito). Lệ phí 監理団体 lo. Trượt phải về nước nên Linh rất áp lực. Chương này tập trung từ vựng và mẫu câu xuyên suốt quá trình: đăng ký → ôn → thi → công bố kết quả.

---

## Tình huống 1 — Văn phòng 監理団体 · 9:30, đăng ký dự thi 技能検定3級

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>の<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>、リンです。<br>*(Em xin phép. Em là Linh, thực tập sinh kỹ năng ở nông trại Yamamoto.)* |
| 担当 | はい、リンさん。<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みですね。<br>*(Vâng, chị Linh. Đăng ký kentei 3 kyuu đúng không.)* |
| Linh | はい。<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>と<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させていただきたいのですが。<br>*(Vâng. Em muốn được xác nhận phiếu dự thi và giấy tờ cần thiết ạ.)* |
| 担当 | <ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>み<ruby>書<rt>しょ</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カードのコピー、<ruby>顔写真<rt>かおじゃしん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby>です。<br>*(Đơn đăng ký, bản copy thẻ zairyuu, 2 ảnh chân dung.)* |
| Linh | <ruby>持<rt>も</rt></ruby>ってまいりました。あの、<ruby>試験<rt>しけん</rt></ruby><ruby>科目<rt>かもく</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby><ruby>野菜<rt>やさい</rt></ruby><ruby>栽培<rt>さいばい</rt></ruby>で<ruby>合<rt>あ</rt></ruby>っていますか？<br>*(Em mang đủ rồi. Dạ, môn thi là Shisetsu Yasai Saibai có đúng không ạ?)* |
| 担当 | はい、<ruby>合<rt>あ</rt></ruby>っています。<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>です。<ruby>両方<rt>りょうほう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですよ。<br>*(Vâng, đúng. Cả thi lý thuyết và thực hành. Phải đỗ cả hai nhé.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>試験<rt>しけん</rt></ruby><ruby>日<rt>び</rt></ruby>はいつでしょうか。<br>*(Em rõ rồi. Ngày thi là khi nào ạ?)* |
| 担当 | <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>水戸<rt>みと</rt></ruby>の<ruby>農業<rt>のうぎょう</rt></ruby><ruby>大学校<rt>だいがっこう</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>集合<rt>しゅうごう</rt></ruby>です。<br>*(25 tháng 7, trường Đại học Nông nghiệp Mito. Tập trung 9 giờ sáng.)* |

---

## Tình huống 2 — Ký túc xá · 19:30, sempai Việt cho mượn 過去問

*Sempai Tuấn (năm 3, sắp về nước) sang phòng Linh đưa tập đề.*

| Vai | Lời thoại |
|---|---|
| Tuấn | Linh ơi, đây là *過去問* — đề thi 3 năm gần nhất chị xin được của 田中先輩. Em xem trước cho quen. |
| Linh | Anh ơi cảm ơn! Khó không anh? |
| Tuấn | <ruby>学科<rt>がっか</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>択<rt>たく</rt></ruby>で<ruby>50<rt>ごじゅっ</rt></ruby><ruby>問<rt>もん</rt></ruby>。<ruby>病害虫<rt>びょうがいちゅう</rt></ruby>、<ruby>農薬<rt>のうやく</rt></ruby>、<ruby>肥料<rt>ひりょう</rt></ruby>、<ruby>栽培暦<rt>さいばいごよみ</rt></ruby>がよく<ruby>出<rt>で</rt></ruby>るよ。<br>*(Trắc nghiệm 4 lựa chọn 50 câu. Sâu bệnh, thuốc, phân bón, lịch canh tác hay ra.)* |
| Linh | <ruby>農薬<rt>のうやく</rt></ruby>の<ruby>希釈<rt>きしゃく</rt></ruby><ruby>倍率<rt>ばいりつ</rt></ruby>の<ruby>計算<rt>けいさん</rt></ruby>がちょっと<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(Em hơi yếu phần tính tỉ lệ pha loãng thuốc.)* |
| Tuấn | あ、<ruby>例<rt>たと</rt></ruby>えば「<ruby>1000<rt>せん</rt></ruby><ruby>倍<rt>ばい</rt></ruby><ruby>液<rt>えき</rt></ruby>を<ruby>10<rt>じゅう</rt></ruby>リットル<ruby>作<rt>つく</rt></ruby>る<ruby>時<rt>とき</rt></ruby>、<ruby>原液<rt>げんえき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ml？」<br>*(À, ví dụ "pha 10 lít dung dịch 1000 lần thì lấy bao nhiêu ml nguyên chất?")* |
| Linh | えーと、<ruby>10000<rt>いちまん</rt></ruby>ml ÷ <ruby>1000<rt>せん</rt></ruby> = <ruby>10<rt>じゅう</rt></ruby>mlです。<br>*(Ờm, 10000 ml chia 1000 bằng 10 ml.)* |
| Tuấn | <ruby>正解<rt>せいかい</rt></ruby>！それさえできれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>苗<rt>なえ</rt></ruby>の<ruby>定植<rt>ていしょく</rt></ruby>、<ruby>誘引<rt>ゆういん</rt></ruby>、<ruby>農薬<rt>のうやく</rt></ruby><ruby>調合<rt>ちょうごう</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>課題<rt>かだい</rt></ruby>。<br>*(Đúng! Làm được thế là ổn. Thực hành là 3 bài: cấy cây con, buộc dây leo, pha thuốc.)* |
| Linh | <ruby>誘引<rt>ゆういん</rt></ruby>って？<br>*(Buộc dây leo là?)* |
| Tuấn | きゅうりの<ruby>蔓<rt>つる</rt></ruby>を<ruby>紐<rt>ひも</rt></ruby>で<ruby>支柱<rt>しちゅう</rt></ruby>に<ruby>絡<rt>から</rt></ruby>める<ruby>作業<rt>さぎょう</rt></ruby>。<ruby>普段<rt>ふだん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby>やってるやつだよ。<br>*(Công việc dùng dây buộc tua dưa leo vào cọc. Việc em vẫn làm hàng ngày đấy.)* |
| Linh | あ、なんだ、それなら<ruby>安心<rt>あんしん</rt></ruby>です。<br>*(À thế à, vậy thì yên tâm.)* |

---

## Tình huống 3 — Nhà kính · 6:00 sáng hôm sau, 親方 huấn luyện thực hành

| Vai | Lời thoại |
|---|---|
| 親方 | リン、<ruby>今日<rt>きょう</rt></ruby>から<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>検定<rt>けんてい</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしよう。<br>*(Linh, từ hôm nay mỗi sáng 1 tiếng luyện đề kentei.)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Vâng, nhờ bác!)* |
| 親方 | まず<ruby>苗<rt>なえ</rt></ruby>の<ruby>定植<rt>ていしょく</rt></ruby>。<ruby>株間<rt>かぶま</rt></ruby>は<ruby>何<rt>なん</rt></ruby>センチだ？<br>*(Đầu tiên cấy cây con. Khoảng cách giữa cây là bao nhiêu cm?)* |
| Linh | きゅうりは<ruby>50<rt>ごじゅっ</rt></ruby>センチ、<ruby>条間<rt>じょうま</rt></ruby>は<ruby>80<rt>はちじゅっ</rt></ruby>センチです。<br>*(Dưa leo 50 cm, khoảng cách hàng 80 cm.)* |
| 親方 | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>植<rt>う</rt></ruby>える<ruby>深<rt>ふか</rt></ruby>さは？<br>*(Đúng. Độ sâu trồng?)* |
| Linh | <ruby>根<rt>ね</rt></ruby>っこの<ruby>土<rt>つち</rt></ruby>の<ruby>表面<rt>ひょうめん</rt></ruby>と<ruby>畝<rt>うね</rt></ruby>の<ruby>表面<rt>ひょうめん</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じ<ruby>高<rt>たか</rt></ruby>さです。<ruby>深<rt>ふか</rt></ruby>すぎると<ruby>根<rt>ね</rt></ruby>っこが<ruby>腐<rt>くさ</rt></ruby>ります。<br>*(Mặt đất bầu cây và mặt luống cùng cao. Trồng sâu quá rễ thối.)* |
| 親方 | よく<ruby>勉強<rt>べんきょう</rt></ruby>している。<ruby>実際<rt>じっさい</rt></ruby>にやってみろ。<ruby>時間<rt>じかん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>るぞ。<br>*(Học kỹ đấy. Làm thử đi. Tôi bấm giờ.)* |
| Linh | はい、<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Vâng, em bắt đầu.)* |

---

## Tình huống 4 — Nhà kho · 6:30, luyện pha thuốc theo nồng độ

| Vai | Lời thoại |
|---|---|
| 親方 | <ruby>次<rt>つぎ</rt></ruby>は<ruby>農薬<rt>のうやく</rt></ruby><ruby>調合<rt>ちょうごう</rt></ruby>だ。アブラムシ<ruby>用<rt>よう</rt></ruby>の<ruby>殺虫剤<rt>さっちゅうざい</rt></ruby>を<ruby>2000<rt>にせん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>で<ruby>20<rt>にじゅう</rt></ruby>リットル<ruby>作<rt>つく</rt></ruby>れ。<br>*(Tiếp theo pha thuốc. Pha 20 lít thuốc trừ rệp tỉ lệ 2000 lần.)* |
| Linh | はい。<ruby>20000<rt>にまん</rt></ruby>ml ÷ <ruby>2000<rt>にせん</rt></ruby> = <ruby>10<rt>じゅう</rt></ruby>ml の<ruby>原液<rt>げんえき</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Vâng. 20000 ml chia 2000 bằng 10 ml nguyên chất.)* |
| 親方 | <ruby>計算<rt>けいさん</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しい。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってみろ。<br>*(Tính đúng. Nói thứ tự xem.)* |
| Linh | はい。<ruby>1<rt>いち</rt></ruby>、<ruby>防護<rt>ぼうご</rt></ruby><ruby>具<rt>ぐ</rt></ruby>を<ruby>着用<rt>ちゃくよう</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>水<rt>みず</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>10<rt>じゅう</rt></ruby>リットル<ruby>入<rt>い</rt></ruby>れる。<ruby>3<rt>さん</rt></ruby>、<ruby>原液<rt>げんえき</rt></ruby><ruby>10<rt>じゅう</rt></ruby>mlを<ruby>計<rt>はか</rt></ruby>って<ruby>入<rt>い</rt></ruby>れる。<ruby>4<rt>よん</rt></ruby>、<ruby>残<rt>のこ</rt></ruby>りの<ruby>水<rt>みず</rt></ruby><ruby>10<rt>じゅう</rt></ruby>リットルを<ruby>加<rt>くわ</rt></ruby>えて<ruby>合計<rt>ごうけい</rt></ruby><ruby>20<rt>にじゅう</rt></ruby>リットル。<ruby>5<rt>ご</rt></ruby>、よく<ruby>混<rt>ま</rt></ruby>ぜる。<br>*(Vâng. 1, mặc đồ bảo hộ. 2, đổ nước trước 10 lít. 3, đong 10 ml nguyên chất đổ vào. 4, thêm 10 lít nước còn lại đủ 20 lít. 5, khuấy đều.)* |
| 親方 | <ruby>完璧<rt>かんぺき</rt></ruby>だ。<ruby>試験<rt>しけん</rt></ruby>では<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>するんだぞ。<ruby>指<rt>ゆび</rt></ruby><ruby>差<rt>さ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>だ。<br>*(Hoàn hảo. Khi thi nhớ nói ra tiếng để xác nhận nhé. Chỉ tay-gọi tên đó.)* |
| Linh | はい、「<ruby>水<rt>みず</rt></ruby><ruby>10<rt>じゅう</rt></ruby>リットル、ヨシ！」のような<ruby>感<rt>かん</rt></ruby>じですね。<br>*(Vâng, kiểu như "Nước 10 lít, OK!" phải không ạ.)* |
| 親方 | そうだ。<br>*(Đúng vậy.)* |

---

## Tình huống 5 — Phòng học của 監理団体 · 19:00, ôn lý thuyết nhóm

*Linh ôn với Dewi (Indonesia, năm 1 cũng phải chuẩn bị) và sempai Tuấn.*

| Vai | Lời thoại |
|---|---|
| Tuấn | <ruby>問題<rt>もんだい</rt></ruby><ruby>1<rt>いち</rt></ruby>。「うどんこ<ruby>病<rt>びょう</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>か」、<ruby>4<rt>よん</rt></ruby><ruby>択<rt>たく</rt></ruby>。<br>*(Câu 1. "Nguyên nhân bệnh phấn trắng là gì?" 4 lựa chọn.)* |
| Linh | <ruby>糸状菌<rt>しじょうきん</rt></ruby>、つまりカビです。<ruby>湿度<rt>しつど</rt></ruby>が<ruby>高<rt>たか</rt></ruby>くて<ruby>風通<rt>かぜとお</rt></ruby>しが<ruby>悪<rt>わる</rt></ruby>いと<ruby>発生<rt>はっせい</rt></ruby>します。<br>*(Nấm sợi, tức là mốc. Sinh ra khi ẩm cao và thông gió kém.)* |
| Tuấn | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>問題<rt>もんだい</rt></ruby><ruby>2<rt>に</rt></ruby>。「<ruby>窒素<rt>ちっそ</rt></ruby><ruby>過多<rt>かた</rt></ruby>の<ruby>症状<rt>しょうじょう</rt></ruby>は？」<br>*(Đúng. Câu 2. "Triệu chứng dư đạm là?")* |
| Dewi | あの…<ruby>葉<rt>は</rt></ruby>っぱが<ruby>緑<rt>みどり</rt></ruby><ruby>濃<rt>こ</rt></ruby>くなって、<ruby>実<rt>み</rt></ruby>がなりにくくなる、ですか？<br>*(Dạ… lá xanh đậm hơn, khó ra quả ạ?)* |
| Tuấn | <ruby>正解<rt>せいかい</rt></ruby>！デウィちゃんもよく<ruby>勉強<rt>べんきょう</rt></ruby>してるね。<br>*(Đúng! Dewi cũng học kỹ đấy.)* |
| Dewi | <ruby>先輩<rt>せんぱい</rt></ruby>たちの<ruby>過去問<rt>かこもん</rt></ruby>のおかげです。<br>*(Nhờ đề cũ của các anh chị ạ.)* |
| Linh | <ruby>問題<rt>もんだい</rt></ruby><ruby>3<rt>さん</rt></ruby>、<ruby>私<rt>わたし</rt></ruby><ruby>出<rt>だ</rt></ruby>します。「<ruby>栽培暦<rt>さいばいごよみ</rt></ruby>とは<ruby>何<rt>なに</rt></ruby>か」。<br>*(Câu 3, em ra. "Lịch canh tác là gì?")* |
| Tuấn | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>農作業<rt>のうさぎょう</rt></ruby>の<ruby>予定表<rt>よていひょう</rt></ruby>。<ruby>播種<rt>はしゅ</rt></ruby>、<ruby>定植<rt>ていしょく</rt></ruby>、<ruby>収穫<rt>しゅうかく</rt></ruby>の<ruby>時期<rt>じき</rt></ruby>を<ruby>書<rt>か</rt></ruby>いたもの。<br>*(Bảng kế hoạch nông vụ cả năm. Ghi thời điểm gieo, cấy, thu hoạch.)* |
| Linh | <ruby>正解<rt>せいかい</rt></ruby>です。<br>*(Đúng ạ.)* |

---

## Tình huống 6 — Ga 水戸 · 8:30 ngày thi, hồi hộp gọi 親方

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>電話<rt>でんわ</rt></ruby>）<ruby>親方<rt>おやかた</rt></ruby>、おはようございます。<ruby>無事<rt>ぶじ</rt></ruby><ruby>水戸<rt>みと</rt></ruby><ruby>駅<rt>えき</rt></ruby>に<ruby>着<rt>つ</rt></ruby>きました。<br>*(Điện thoại. Bác chủ Yamamoto, em chào sáng. Em đã đến ga Mito an toàn.)* |
| 親方 | おう、<ruby>緊張<rt>きんちょう</rt></ruby>してるか？<br>*(Ờ, có hồi hộp không?)* |
| Linh | <ruby>少<rt>すこ</rt></ruby>し…<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えそうです。<br>*(Một chút… tay em sắp run rồi.)* |
| 親方 | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>畑<rt>はたけ</rt></ruby>でやっていることを<ruby>普通<rt>ふつう</rt></ruby>にやればいい。<br>*(Không sao. Cứ làm bình thường những gì em làm hàng ngày ở ruộng.)* |
| Linh | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cố gắng.)* |
| 親方 | <ruby>1<rt>ひと</rt></ruby>つだけ。<ruby>分<rt>わ</rt></ruby>からない<ruby>問題<rt>もんだい</rt></ruby>があっても、<ruby>飛<rt>と</rt></ruby>ばして<ruby>次<rt>つぎ</rt></ruby>へ<ruby>行<rt>い</rt></ruby>け。<ruby>時間<rt>じかん</rt></ruby>を<ruby>無駄<rt>むだ</rt></ruby>にするな。<br>*(Một điều thôi. Câu nào không hiểu thì bỏ qua, sang câu tiếp. Đừng phí thời gian.)* |
| Linh | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>結果<rt>けっか</rt></ruby>はあとでご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em rõ. Kết quả em báo cáo sau ạ.)* |
| 親方 | おう、いってこい。<br>*(Ờ, đi đi.)* |

---

## Tình huống 7 — 試験場入口 · 8:55, lễ tân và 検定員 hướng dẫn

| Vai | Lời thoại |
|---|---|
| 受付 | <ruby>受験<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>と<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho xem số báo danh và phiếu dự thi.)* |
| Linh | はい、こちらです。<ruby>受験<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby><ruby>1247<rt>いちにいよんなな</rt></ruby><ruby>番<rt>ばん</rt></ruby>、グエン・ティ・リンです。<br>*(Vâng, đây ạ. Số báo danh 1247, Nguyen Thi Linh.)* |
| 受付 | A<ruby>会場<rt>かいじょう</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>です。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>までに<ruby>着席<rt>ちゃくせき</rt></ruby>してください。<br>*(Hội trường A, phòng số 3 tầng 2. Vui lòng vào chỗ ngồi trước 9 giờ 20.)* |
| Linh | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |
| 検定員 | （<ruby>教室<rt>きょうしつ</rt></ruby>で）<ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>検定員<rt>けんていいん</rt></ruby>の<ruby>森田<rt>もりた</rt></ruby>です。<ruby>携帯電話<rt>けいたいでんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って<ruby>鞄<rt>かばん</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に。<br>*(Trong phòng. Mọi người chào sáng. Tôi là Morita, giám khảo. Điện thoại tắt nguồn cho vào cặp.)* |
| Linh | はい。<br>*(Vâng.)* |
| 検定員 | <ruby>試験<rt>しけん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>60<rt>ろくじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>途中退室<rt>とちゅうたいしつ</rt></ruby>はできません。それでは、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Thời gian thi 60 phút. Không được rời phòng giữa chừng. Mời bắt đầu.)* |

---

## Tình huống 8 — Phòng 実技試験 · 11:00, vào ca thực hành

| Vai | Lời thoại |
|---|---|
| 検定員 | <ruby>1247<rt>いちにいよんなな</rt></ruby><ruby>番<rt>ばん</rt></ruby>、リンさん。<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>課題<rt>かだい</rt></ruby>はトマト<ruby>苗<rt>なえ</rt></ruby>の<ruby>定植<rt>ていしょく</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>株<rt>かぶ</rt></ruby>、<ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Số 1247, chị Linh. Bắt đầu thi thực hành. Bài là cấy 5 cây con cà chua, giới hạn 20 phút.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nhờ ạ.)* |
| 検定員 | では、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vâng, mời bắt đầu.)* |
| Linh | （<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>で）<ruby>株間<rt>かぶま</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby>センチ、ヨシ！<ruby>植<rt>う</rt></ruby>え<ruby>穴<rt>あな</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ヨシ！<br>*(Chỉ tay-gọi tên. Khoảng cách cây 40 cm, OK! Hố trồng OK!)* |
| 検定員 | （<ruby>記録<rt>きろく</rt></ruby>している）<br>*(Đang ghi chép.)* |
| Linh | （<ruby>5<rt>ご</rt></ruby><ruby>株<rt>かぶ</rt></ruby><ruby>終<rt>お</rt></ruby>わって）<ruby>定植<rt>ていしょく</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>株<rt>かぶ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>所要<rt>しょよう</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>14<rt>じゅうよん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Xong 5 cây. Cấy xong 5 cây ạ. Thời gian 14 phút.)* |
| 検定員 | <ruby>確認<rt>かくにん</rt></ruby>します。<ruby>1<rt>いち</rt></ruby><ruby>株目<rt>かぶめ</rt></ruby>、<ruby>植<rt>う</rt></ruby>え<ruby>付<rt>つ</rt></ruby>けの<ruby>深<rt>ふか</rt></ruby>さがちょっと<ruby>浅<rt>あさ</rt></ruby>いですが、<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby><ruby>内<rt>ない</rt></ruby>です。<br>*(Tôi kiểm tra. Cây số 1 trồng hơi cạn nhưng trong giới hạn cho phép.)* |
| Linh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>いたしました。<br>*(Vâng, em rõ rồi. Em xin lỗi ạ.)* |

---

## Tình huống 9 — Bục thi 実技 · 11:20, căng thẳng quên từ

| Vai | Lời thoại |
|---|---|
| 検定員 | <ruby>次<rt>つぎ</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>は<ruby>農薬<rt>のうやく</rt></ruby><ruby>調合<rt>ちょうごう</rt></ruby>です。<ruby>1500<rt>せんごひゃく</rt></ruby><ruby>倍<rt>ばい</rt></ruby><ruby>液<rt>えき</rt></ruby><ruby>15<rt>じゅうご</rt></ruby>リットルを<ruby>作<rt>つく</rt></ruby>ってください。<br>*(Bài tiếp pha thuốc. Pha 15 lít dung dịch 1500 lần.)* |
| Linh | はい。…えーと、<ruby>15<rt>じゅうご</rt></ruby><ruby>000<rt>せん</rt></ruby>ml ÷ <ruby>1500<rt>せんごひゃく</rt></ruby> = …<br>*(Vâng. Ờm, 15000 ml chia 1500 bằng…)* |
| Linh | （<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>）すみません、もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただけますか？<br>*(Đầu trắng xoá. Xin lỗi, em xác nhận lại được không ạ?)* |
| 検定員 | どうぞ、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>計算<rt>けいさん</rt></ruby>してください。<br>*(Vâng, bình tĩnh tính đi.)* |
| Linh | （<ruby>深呼吸<rt>しんこきゅう</rt></ruby>）<ruby>15000<rt>いちまんごせん</rt></ruby> ÷ <ruby>1500<rt>せんごひゃく</rt></ruby> = <ruby>10<rt>じゅう</rt></ruby>。<ruby>原液<rt>げんえき</rt></ruby><ruby>10<rt>じゅう</rt></ruby>mlです。<br>*(Hít thở sâu. 15000 chia 1500 bằng 10. Nguyên chất 10 ml.)* |
| 検定員 | <ruby>正解<rt>せいかい</rt></ruby>です。<ruby>調合<rt>ちょうごう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Đúng. Bắt đầu pha đi.)* |
| Linh | はい。<ruby>防護<rt>ぼうご</rt></ruby><ruby>具<rt>ぐ</rt></ruby><ruby>着用<rt>ちゃくよう</rt></ruby>、ヨシ！<ruby>水<rt>みず</rt></ruby><ruby>7<rt>なな</rt></ruby>リットル<ruby>投入<rt>とうにゅう</rt></ruby>、ヨシ！…<br>*(Vâng. Mặc bảo hộ, OK! Đổ 7 lít nước, OK!…)* |

---

## Tình huống 10 — Sảnh trường · 13:00, ăn trưa cùng thí sinh khác

| Vai | Lời thoại |
|---|---|
| Bambang | あ、リンさん、お<ruby>疲<rt>つか</rt></ruby>れさま。インドネシアのバンバンです。<ruby>実技<rt>じつぎ</rt></ruby>どうでしたか？<br>*(Ơ, chị Linh, vất vả rồi. Tôi là Bambang Indonesia. Thi thực hành thế nào?)* |
| Linh | <ruby>計算<rt>けいさん</rt></ruby>のところで<ruby>一<rt>いっ</rt></ruby><ruby>瞬<rt>しゅん</rt></ruby><ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になって…でも<ruby>検定員<rt>けんていいん</rt></ruby>さんが<ruby>優<rt>やさ</rt></ruby>しくて<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Lúc tính em bị trắng đầu một giây… nhưng giám khảo dễ thương cứu em.)* |
| Bambang | <ruby>分<rt>わ</rt></ruby>かります。<ruby>私<rt>わたし</rt></ruby>も<ruby>誘引<rt>ゆういん</rt></ruby>の<ruby>紐<rt>ひも</rt></ruby>が<ruby>切<rt>き</rt></ruby>れてやり<ruby>直<rt>なお</rt></ruby>しました。<br>*(Em hiểu. Em cũng bị đứt dây buộc, phải làm lại.)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だったんですか？<br>*(Có ổn không?)* |
| Bambang | <ruby>検定員<rt>けんていいん</rt></ruby>が「<ruby>慌<rt>あわ</rt></ruby>てなくていいよ」と<ruby>言<rt>い</rt></ruby>ってくれました。<br>*(Giám khảo bảo "không cần vội đâu" mà.)* |
| Linh | <ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>検定員<rt>けんていいん</rt></ruby>って<ruby>厳<rt>きび</rt></ruby>しいかと<ruby>思<rt>おも</rt></ruby>ったら、<ruby>意外<rt>いがい</rt></ruby>と<ruby>親切<rt>しんせつ</rt></ruby>でしたね。<br>*(Em cứ tưởng giám khảo Nhật khó tính, không ngờ tử tế.)* |
| Bambang | <ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby>ですよね。<br>*(Công bố kết quả tháng sau nhỉ.)* |
| Linh | はい、<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>郵送<rt>ゆうそう</rt></ruby>です。お<ruby>互<rt>たが</rt></ruby>い<ruby>合格<rt>ごうかく</rt></ruby>するといいですね。<br>*(Vâng, 20 tháng 8 gửi bưu điện. Mong cả hai cùng đỗ.)* |

---

## Tình huống 11 — Nhà trọ · 8月20日, mở phong bì kết quả

| Vai | Lời thoại |
|---|---|
| Dewi | リン<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>封筒<rt>ふうとう</rt></ruby><ruby>来<rt>き</rt></ruby>ましたよ！<br>*(Chị Linh, phong bì đến rồi!)* |
| Linh | （<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>える）<ruby>緊張<rt>きんちょう</rt></ruby>する…デウィちゃん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>開<rt>あ</rt></ruby>けてくれる？<br>*(Tay run. Hồi hộp quá… Dewi mở cùng chị nhé?)* |
| Dewi | はい！せーの、で<ruby>開<rt>あ</rt></ruby>けましょう。<br>*(Vâng! Đếm 1, 2, 3 rồi mở nhé.)* |
| Linh | せーの…（<ruby>開封<rt>かいふう</rt></ruby>）<br>*(1, 2, 3… Mở phong bì.)* |
| Linh | <ruby>合格<rt>ごうかく</rt></ruby>！<ruby>学科<rt>がっか</rt></ruby><ruby>88<rt>はちじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>！<ruby>受<rt>う</rt></ruby>かった！<br>*(Đỗ! Lý thuyết 88 điểm, thực hành đỗ! Em đỗ rồi!)* |
| Dewi | おめでとうございます、<ruby>先輩<rt>せんぱい</rt></ruby>！<br>*(Chúc mừng chị!)* |
| Linh | ありがとう！<ruby>親方<rt>おやかた</rt></ruby>にすぐ<ruby>電話<rt>でんわ</rt></ruby>する！<br>*(Cảm ơn! Phải gọi ngay cho bác chủ Yamamoto!)* |

---

## Tình huống 12 — Sân nông trại · 8月20日 chiều, báo 親方 và liên hoan

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>！<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>しました！<br>*(Bác! Em đỗ kentei 3 kyuu rồi!)* |
| 親方 | おお、よかったな！<ruby>点数<rt>てんすう</rt></ruby>は？<br>*(Ồ, tốt quá! Bao nhiêu điểm?)* |
| Linh | <ruby>学科<rt>がっか</rt></ruby><ruby>88<rt>はちじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby>はAランクでした。<br>*(Lý thuyết 88 điểm, thực hành hạng A.)* |
| 親方 | すばらしい。これで<ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>号<rt>ごう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>める。<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>れよ。<br>*(Tuyệt vời. Vậy là chuyển được từ 2 sang 3 (giai đoạn). Năm thứ 3 cố lên.)* |
| Linh | はい！ありがとうございます。<br>*(Vâng! Em cảm ơn ạ.)* |
| 親方 | <ruby>今夜<rt>こんや</rt></ruby>、うちで<ruby>焼肉<rt>やきにく</rt></ruby>パーティーだ。デウィちゃんも<ruby>呼<rt>よ</rt></ruby>べ。<br>*(Tối nay liên hoan nướng thịt ở nhà tôi. Gọi cả Dewi đến.)* |
| Linh | わー、ありがとうございます！<br>*(Wow, em cảm ơn ạ!)* |
| 親方 | <ruby>受<rt>う</rt></ruby>かったお<ruby>祝<rt>いわ</rt></ruby>いだ。<ruby>遠慮<rt>えんりょ</rt></ruby>するな。<br>*(Chúc mừng đỗ. Đừng khách sáo.)* |

---

## Tình huống 13 — Phòng ký túc · 22:00, gọi điện về Đồng Tháp (cảnh tiếng Việt)

> Cảnh tiếng Việt — Linh gọi báo tin về bố mẹ.

| Vai | Lời thoại |
|---|---|
| Linh | Alo, bố ơi! Con báo tin vui đây! |
| Bố | Cái gì mà phấn khích thế con? |
| Linh | Con đỗ *技能検定 3級* rồi bố! Cái kỳ thi tay nghề quốc gia con ôn cả tháng đó! |
| Bố | Trời ơi giỏi quá! Bằng cấp Nhật cấp đúng không? Vậy là về nước cũng có giá trị à? |
| Linh | Vâng bố. Đây là bằng *kỹ năng quốc gia Nhật* — về Việt Nam vẫn dùng được, mà quan trọng là sang giai đoạn 2 năm thứ 3 phải có nó. Con được *学科 88 điểm*, *実技 hạng A* luôn bố ơi. |
| Bố | Mẹ ơi, Linh đỗ rồi! Cô con gái út giỏi nhất nhà. |
| Mẹ | (xa xa) Mừng quá! Có liên hoan không con? |
| Linh | Có mẹ, *親方* — bác chủ trại tối nay mở tiệc *yakiniku* nướng thịt cho con. Con dắt em *Dewi* — kohai Indonesia đi cùng. |
| Bố | Hôm thi căng thẳng không con? |
| Linh | Căng lắm bố. Lúc *thi thực hành* phải tính tỉ lệ pha thuốc 1500 lần, con đột nhiên trắng đầu, may *検定員* — giám khảo dễ thương bảo cứ bình tĩnh tính lại. Cuối cùng làm đúng. |
| Bố | Thế là sang năm thứ 3 con vẫn ở chỗ bác chủ — *親方 (oyakata)* à? |
| Linh | Vâng bố. Năm thứ 3 còn thi *JLPT N3* tháng 12 nữa. Mục tiêu sang giai đoạn *特定技能 SSW* về sau ở thêm 5 năm. |
| Bố | Cố lên con! Bố mẹ ở nhà tự hào lắm. |
| Linh | Vâng bố, con đi liên hoan đây. Bố mẹ ngủ ngon. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜の申し込みをお願いします / 確認させていただきたいのですが** — đăng ký lễ phép
- **〜倍液を〜リットル作ります** — pha dung dịch theo tỉ lệ + thể tích
- **指差呼称 "〜、ヨシ！"** — chỉ tay-gọi tên xác nhận khi thực hành
- **すみません、もう一度確認させていただけますか？** — xin xác nhận lại khi căng thẳng
- **〜点で合格しました／Aランクでした** — báo kết quả thi
- **〜のおかげで合格できました** — cảm ơn người giúp

> Từ vựng & mẫu câu chương này: 技能検定・3級・施設野菜栽培・学科試験・実技試験・受験票・受験番号・検定員・過去問・希釈倍率・原液・防護具・指差呼称・株間・条間・定植・誘引・支柱・栽培暦・うどんこ病・糸状菌・窒素過多・合格・郵送・許容範囲 — bộ từ vựng thi tay nghề nông nghiệp.

## Bí quyết chương

- **指差呼称 (chỉ tay-gọi tên)** là kỹ thuật giảm sai sót của Nhật — khi thi 実技 phải nói ra tiếng từng bước, giám khảo cho điểm cao hơn.
- **Khi căng thẳng quên** đừng im lặng — nói 「もう一度確認させていただけますか」 + hít thở sâu. Giám khảo Nhật không trừ điểm vì hỏi lại.
- **Công thức pha thuốc**: thể tích (ml) ÷ tỉ lệ = lượng nguyên chất (ml). Học thuộc, làm trong đầu được.
- **過去問** (đề cũ) là vàng — xin sempai năm 3, đề lặp 60-70%.
- **Trượt 技能検定 3級 = phải về nước** không chuyển được sang 2号 → 3号. Áp lực cao nhưng đề không khó.
- Khi nhận tin đỗ, **nhớ gọi 親方 trước, gia đình sau** — đúng văn hoá công sở Nhật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 技能検定 | ぎのうけんてい | KỸ NĂNG KIỂM ĐỊNH | thi tay nghề quốc gia |
| 3級 | さんきゅう | TAM CẤP | hạng 3, cấp 3 |
| 技能実習生 | ぎのうじっしゅうせい | KỸ NĂNG THỰC TẬP SINH | thực tập sinh kỹ năng |
| 施設野菜栽培 | しせつやさいさいばい | THI THIẾT DÃ THÁI TÀI BỒI | trồng rau nhà kính |
| 申し込み | もうしこみ | THÂN — | đăng ký, nộp đơn |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu dự thi |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |
| 在留カード | ざいりゅう— | TẠI LƯU — | thẻ cư trú |
| 学科試験 | がっかしけん | HỌC KHOA THÍ NGHIỆM | thi lý thuyết |
| 実技試験 | じつぎしけん | THỰC KỸ THÍ NGHIỆM | thi thực hành |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi các năm cũ |
| 病害虫 | びょうがいちゅう | BỆNH HẠI TRÙNG | sâu bệnh |
| 農薬 | のうやく | NÔNG DƯỢC | thuốc bảo vệ thực vật |
| 肥料 | ひりょう | PHÌ LIỆU | phân bón |
| 栽培暦 | さいばいごよみ | TÀI BỒI LỊCH | lịch canh tác |
| 希釈倍率 | きしゃくばいりつ | HY THÍCH BỘI SUẤT | tỉ lệ pha loãng |
| 原液 | げんえき | NGUYÊN DỊCH | dung dịch nguyên chất |
| 苗 | なえ | MIÊU | cây con, mầm cây |
| 定植 | ていしょく | ĐỊNH THỰC | cấy ra ruộng |
| 誘引 | ゆういん | DỤ DẪN | dẫn dây cho cây leo |
| 蔓 | つる | MAN | dây leo, tua cuốn |
| 支柱 | しちゅう | CHI TRỤ | cọc đỡ cây |
| 紐 | ひも | NỮU | dây buộc |
| 株間 | かぶま | CHU GIAN | khoảng cách giữa cây |
| 条間 | じょうま | ĐIỀU GIAN | khoảng cách giữa hàng |
| 畝 | うね | LUỐNG | luống đất |
| 播種 | はしゅ | BÁ CHỦNG | gieo hạt |
| 収穫 | しゅうかく | THU HOẠCH | thu hoạch |
| 防護具 | ぼうごぐ | PHÒNG HỘ CỤ | đồ bảo hộ |
| 着用 | ちゃくよう | TRƯỚC DỤNG | mặc, đeo |
| 調合 | ちょうごう | ĐIỀU HỢP | pha trộn |
| 指差呼称 | ゆびさしこしょう | CHỈ SAI HÔ XƯNG | chỉ tay-gọi tên |
| 検定員 | けんていいん | KIỂM ĐỊNH VIÊN | giám khảo thi tay nghề |
| 着席 | ちゃくせき | TRƯỚC TỊCH | vào chỗ ngồi |
| 途中退室 | とちゅうたいしつ | ĐỒ TRUNG THOÁI THẤT | rời phòng giữa giờ |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | giới hạn thời gian |
| 課題 | かだい | KHOÁ ĐỀ | đề bài |
| 所要時間 | しょようじかん | SỞ YẾU THỜI GIAN | thời gian sử dụng |
| 許容範囲 | きょようはんい | HỨA DUNG PHẠM VI | phạm vi cho phép |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng, hồi hộp |
| 深呼吸 | しんこきゅう | THÂM HÔ HẤP | hít thở sâu |
| うどんこ病 | うどんこびょう | — BỆNH | bệnh phấn trắng |
| 糸状菌 | しじょうきん | TI TRẠNG KHUẨN | nấm sợi |
| 窒素過多 | ちっそかた | TRẠCH TỐ QUÁ ĐA | dư đạm |
| 症状 | しょうじょう | CHỨNG TRẠNG | triệu chứng |
| 合格 | ごうかく | HỢP CÁCH | đỗ, đạt |
| 郵送 | ゆうそう | BƯU TỐNG | gửi bưu điện |
| 焼肉 | やきにく | THIÊU NHỤC | nướng thịt |
| ランク | — | — | hạng, rank |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | công bố kết quả |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000007, 800000041, NULL, 'markdown_book', 'T7. Obon mùa hè — về quê Dewi và lễ hội địa phương (お盆・地元の夏祭り)', '# Sách nông nghiệp năm 2 · T7. Obon mùa hè — về quê Dewi và lễ hội địa phương (お盆・地元の夏祭り)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, năm 2, N4→N3). Học các mẫu hội thoại tiếng Nhật cuộc sống dịp Obon: xin nghỉ Obon đúng phép với 親方 (お盆休みをいただきたいのですが), chào hỏi và quà cáp khi đến nhà người Indonesia của Dewi (招かれた時の挨拶・手土産), tham gia 盆踊り tại 神社, ăn thử quầy 屋台 và hỏi giá-mua đồ ăn, nói chuyện với お年寄り tại lễ hội về ý nghĩa Obon, chia sẻ Tết Việt Nam so với Obon Nhật, đi viếng mộ (お墓参り) cùng gia đình homestay, kể qua điện thoại cho gia đình về văn hoá Nhật.

---

## Bối cảnh

Tháng 8 năm 2026, kỳ nghỉ Obon (13-16/8). Nông trại nghỉ 4 ngày — đây là kỳ nghỉ dài nhất trong năm cho TTS. Năm ngoái Linh chỉ nghỉ ở ký túc, năm nay được Dewi (Indonesia, kohai) rủ về nhà *họ hàng người Indonesia của Dewi đang định cư ở thị trấn Tsukuba* — nhà bác Pak Yudi (làm việc cho viện nghiên cứu Tsukuba) — chơi 2 ngày. Sau đó hai chị em quay về 神栖 ở Ibaraki tham gia 夏祭り tại 神社 địa phương cùng gia đình homestay (山田家). Chương này tập trung văn hoá lễ hội mùa hè + tiếng Nhật giao tiếp xã hội ngoài giờ làm.

---

## Tình huống 1 — Văn phòng nông trại · 7:30, xin nghỉ Obon

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、おはようございます。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<br>*(Bác chủ Yamamoto, em chào sáng. Em xin ít phút được không ạ?)* |
| 親方 | おはよう、どうした？<br>*(Chào, có gì?)* |
| Linh | お<ruby>盆<rt>ぼん</rt></ruby><ruby>休<rt>やす</rt></ruby>みのことでご<ruby>相談<rt>そうだん</rt></ruby>させていただきたいのですが。<br>*(Em muốn được tham vấn về kỳ nghỉ Obon ạ.)* |
| 親方 | お盆は<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>16<rt>じゅうろく</rt></ruby><ruby>日<rt>にち</rt></ruby>まで<ruby>4日間<rt>よっかかん</rt></ruby><ruby>休<rt>やす</rt></ruby>みだ。<ruby>計画<rt>けいかく</rt></ruby>はあるか？<br>*(Obon 13 đến 16/8 nghỉ 4 ngày. Có kế hoạch gì không?)* |
| Linh | はい、<ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>と<ruby>14<rt>じゅうよん</rt></ruby><ruby>日<rt>にち</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>のデウィちゃんと<ruby>一緒<rt>いっしょ</rt></ruby>に、デウィちゃんのおじさんの<ruby>家<rt>いえ</rt></ruby>、つくば<ruby>市<rt>し</rt></ruby>に<ruby>遊<rt>あそ</rt></ruby>びに<ruby>行<rt>い</rt></ruby>こうと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng, 13-14 em định đi cùng kohai Dewi về nhà bác của Dewi ở Tsukuba chơi ạ.)* |
| 親方 | おう、いい<ruby>計画<rt>けいかく</rt></ruby>だな。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>同士<rt>どうし</rt></ruby><ruby>仲<rt>なか</rt></ruby><ruby>良<rt>よ</rt></ruby>くするのは<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Ờ, kế hoạch hay. Người nước ngoài thân thiết nhau là quan trọng.)* |
| Linh | <ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>は<ruby>神栖<rt>かみす</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って、<ruby>山田<rt>やまだ</rt></ruby>さんと<ruby>地元<rt>じもと</rt></ruby>の<ruby>夏祭<rt>なつまつ</rt></ruby>りに<ruby>行<rt>い</rt></ruby>く<ruby>予定<rt>よてい</rt></ruby>です。<br>*(15 em về Kamisu, định đi lễ hội mùa hè địa phương với cô chú Yamada.)* |
| 親方 | いいな、お<ruby>祭<rt>まつ</rt></ruby>りは<ruby>絶対<rt>ぜったい</rt></ruby><ruby>行<rt>い</rt></ruby>った<ruby>方<rt>ほう</rt></ruby>がいい。<ruby>16<rt>じゅうろく</rt></ruby><ruby>日<rt>にち</rt></ruby>は？<br>*(Tốt, lễ hội nhất định phải đi. Còn 16?)* |
| Linh | <ruby>休<rt>やす</rt></ruby>んでベトナムに<ruby>電話<rt>でんわ</rt></ruby>します。<br>*(Em nghỉ và gọi điện về Việt Nam.)* |
| 親方 | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>気<rt>き</rt></ruby>をつけて<ruby>行<rt>い</rt></ruby>ってこい。<br>*(Hiểu rồi. Đi cẩn thận nhé.)* |

---

## Tình huống 2 — Siêu thị Kasumi · 12 tháng 8, mua quà tặng

| Vai | Lời thoại |
|---|---|
| Linh | デウィちゃん、おじさんの<ruby>家<rt>うち</rt></ruby>へ<ruby>手土産<rt>てみやげ</rt></ruby><ruby>何<rt>なに</rt></ruby>がいいかな？<br>*(Dewi, quà cho nhà bác chọn gì nhỉ?)* |
| Dewi | おじさんとおばさんは<ruby>甘<rt>あま</rt></ruby>いものが<ruby>好<rt>す</rt></ruby>きです。あと、いとこの<ruby>子供<rt>こども</rt></ruby><ruby>2人<rt>ふたり</rt></ruby>がいます。<br>*(Bác trai và bác gái thích đồ ngọt. Còn có 2 con của anh chị họ.)* |
| Linh | じゃあ、<ruby>水戸<rt>みと</rt></ruby>の<ruby>梅<rt>うめ</rt></ruby>ようかんと、<ruby>子供<rt>こども</rt></ruby><ruby>用<rt>よう</rt></ruby>にポッキーセットはどう？<br>*(Vậy mứt mơ youkan của Mito, với set Pocky cho trẻ con thế nào?)* |
| Dewi | いいですね。あ、おじさんはイスラム<ruby>教徒<rt>きょうと</rt></ruby>なので、ハラル<ruby>確認<rt>かくにん</rt></ruby>しないと。<br>*(Hay đấy. À, bác trai theo đạo Hồi, phải kiểm tra halal.)* |
| Linh | あ、そうだった！ようかんは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かな…<br>*(À đúng rồi! Youkan có ổn không nhỉ…)* |
| Dewi | <ruby>原材料<rt>げんざいりょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てみます。…<ruby>砂糖<rt>さとう</rt></ruby>、<ruby>梅<rt>うめ</rt></ruby>、<ruby>寒天<rt>かんてん</rt></ruby>、これだけです。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Để em xem nguyên liệu. Đường, mơ, rau câu, chỉ thế thôi. Ổn ạ.)* |
| Linh | よかった。ポッキーは…<ruby>乳<rt>にゅう</rt></ruby><ruby>成分<rt>せいぶん</rt></ruby><ruby>入<rt>はい</rt></ruby>りだから<ruby>子供<rt>こども</rt></ruby>には<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(May. Pocky có sữa nên trẻ con ăn được.)* |
| 店員 | お<ruby>会計<rt>かいけい</rt></ruby><ruby>3<rt>さんぜん</rt></ruby><ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>袋<rt>ふくろ</rt></ruby>はご<ruby>入用<rt>にゅうよう</rt></ruby>ですか？<br>*(Thanh toán 3200 yên. Cần túi không ạ?)* |
| Linh | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cho em xin.)* |

---

## Tình huống 3 — Nhà Pak Yudi ở Tsukuba · 13/8 chiều, chào hỏi gặp mặt

| Vai | Lời thoại |
|---|---|
| Dewi | おじさん、おばさん、こんにちは！デウィです。<br>*(Bác trai, bác gái, cháu chào! Là Dewi đây.)* |
| Pak Yudi | デウィ！よく<ruby>来<rt>き</rt></ruby>たね。<ruby>暑<rt>あつ</rt></ruby>かっただろう。<br>*(Dewi! Mừng cháu. Nóng nhỉ.)* |
| Dewi | こちら、<ruby>同<rt>おな</rt></ruby>じ<ruby>農場<rt>のうじょう</rt></ruby>のリン<ruby>先輩<rt>せんぱい</rt></ruby>です。ベトナム<ruby>人<rt>じん</rt></ruby>です。<br>*(Đây là chị Linh sempai cùng nông trại. Người Việt Nam.)* |
| Linh | <ruby>初<rt>はじ</rt></ruby>めまして、リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>招<rt>まね</rt></ruby>きいただきありがとうございます。これ、つまらないものですが…<br>*(Lần đầu gặp, em là Linh. Hôm nay cảm ơn bác đã mời. Đây, vật mọn thôi nhưng…)* |
| Pak Yudi | わざわざありがとうね。リンさんは<ruby>日本語<rt>にほんご</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Cảm ơn cháu đi đường xa. Linh tiếng Nhật giỏi nhỉ.)* |
| Linh | いえいえ、まだまだです。デウィちゃんとは<ruby>普段<rt>ふだん</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby>で<ruby>話<rt>はな</rt></ruby>しています。<br>*(Đâu có, em còn kém. Em với Dewi thường nói tiếng Nhật.)* |
| おばさん | どうぞ<ruby>上<rt>あ</rt></ruby>がってください。<ruby>冷<rt>つめ</rt></ruby>たいお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しています。<br>*(Mời các cháu vào nhà. Bác chuẩn bị trà lạnh.)* |
| Linh | お<ruby>邪魔<rt>じゃま</rt></ruby>します。<br>*(Em xin phép.)* |

---

## Tình huống 4 — Phòng khách nhà Pak Yudi · 15:00, ăn nhẹ và trò chuyện

| Vai | Lời thoại |
|---|---|
| Pak Yudi | リンさんは<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>てどのくらいになりますか？<br>*(Linh sang Nhật bao lâu rồi?)* |
| Linh | <ruby>1<rt>いっ</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>よん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>になります。<br>*(Một năm 4 tháng ạ. Sang năm thứ hai.)* |
| Pak Yudi | <ruby>農業<rt>のうぎょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>はどうですか？<br>*(Công việc nông nghiệp thế nào?)* |
| Linh | <ruby>大変<rt>たいへん</rt></ruby>ですが、<ruby>親方<rt>おやかた</rt></ruby>が<ruby>優<rt>やさ</rt></ruby>しいので<ruby>頑張<rt>がんば</rt></ruby>れています。<ruby>先月<rt>せんげつ</rt></ruby><ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>にも<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Vất vả nhưng bác chủ Yamamoto dễ thương nên em cố được. Tháng trước em cũng đỗ kentei 3 kyuu rồi.)* |
| Pak Yudi | おお、すごいですね！<ruby>家族<rt>かぞく</rt></ruby><ruby>喜<rt>よろこ</rt></ruby>んだでしょう。<br>*(Ồ, giỏi quá! Gia đình mừng nhỉ.)* |
| Linh | はい、<ruby>両親<rt>りょうしん</rt></ruby>が<ruby>泣<rt>な</rt></ruby>いていました。<br>*(Vâng, bố mẹ em khóc luôn.)* |
| いとこ | （<ruby>子供<rt>こども</rt></ruby>）リンおねえちゃん、ベトナムってどこ？<br>*(Trẻ con. Chị Linh, Việt Nam là ở đâu?)* |
| Linh | <ruby>日本<rt>にほん</rt></ruby>の<ruby>南<rt>みなみ</rt></ruby>、<ruby>飛行機<rt>ひこうき</rt></ruby>で<ruby>5<rt>ご</rt></ruby><ruby>時間<rt>じかん</rt></ruby>くらい。<ruby>暑<rt>あつ</rt></ruby>くて、<ruby>果物<rt>くだもの</rt></ruby>がいっぱいあるよ。マンゴーとかドラゴンフルーツ。<br>*(Phía nam Nhật Bản, máy bay khoảng 5 tiếng. Nóng, nhiều trái cây lắm. Như xoài hay thanh long.)* |
| いとこ | ドラゴンフルーツ！<ruby>食<rt>た</rt></ruby>べてみたい！<br>*(Thanh long! Em muốn ăn thử!)* |
| Linh | <ruby>今度<rt>こんど</rt></ruby>ベトナムから<ruby>送<rt>おく</rt></ruby>ってもらうね。<br>*(Lần tới chị bảo gửi từ Việt Nam sang nhé.)* |

---

## Tình huống 5 — Đường phố Tsukuba · 14/8 tối, đi 盆踊り tại 公園

| Vai | Lời thoại |
|---|---|
| Pak Yudi | <ruby>近所<rt>きんじょ</rt></ruby>の<ruby>公園<rt>こうえん</rt></ruby>で<ruby>盆踊<rt>ぼんおど</rt></ruby>りをやってる。<ruby>行<rt>い</rt></ruby>ってみるかい？<br>*(Công viên gần đây đang múa Bon-odori. Đi xem không?)* |
| Linh & Dewi | はい、ぜひ！<br>*(Vâng, đi ạ!)* |
| Linh | （<ruby>公園<rt>こうえん</rt></ruby>で）わぁ、<ruby>提灯<rt>ちょうちん</rt></ruby>がきれいですね！<br>*(Ở công viên. Wa, đèn lồng đẹp quá!)* |
| Pak Yudi | <ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>の<ruby>櫓<rt>やぐら</rt></ruby>で<ruby>太鼓<rt>たいこ</rt></ruby>を<ruby>叩<rt>たた</rt></ruby>いて、<ruby>周<rt>まわ</rt></ruby>りで<ruby>輪<rt>わ</rt></ruby>になって<ruby>踊<rt>おど</rt></ruby>るんだよ。<br>*(Giữa là cái yagura, đánh trống, xung quanh xếp vòng tròn múa.)* |
| Dewi | <ruby>私<rt>わたし</rt></ruby><ruby>踊<rt>おど</rt></ruby>り<ruby>方<rt>かた</rt></ruby><ruby>知<rt>し</rt></ruby>らないです…<br>*(Em không biết múa đâu…)* |
| Pak Yudi | <ruby>前<rt>まえ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>の<ruby>真似<rt>まね</rt></ruby>すればいい。<ruby>炭坑節<rt>たんこうぶし</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>簡単<rt>かんたん</rt></ruby>。<br>*(Bắt chước người trước là được. Tankoubushi dễ nhất.)* |
| お年寄り | （<ruby>近<rt>ちか</rt></ruby>くで）あら、<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>？よく<ruby>来<rt>き</rt></ruby>てくれたね。<br>*(Gần đó. Ơ, các cháu nước ngoài? Mừng các cháu đến.)* |
| Linh | こんばんは。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Cháu chào tối. Cháu đến từ Việt Nam.)* |
| お年寄り | お<ruby>盆<rt>ぼん</rt></ruby>はご<ruby>先祖様<rt>せんぞさま</rt></ruby>が<ruby>帰<rt>かえ</rt></ruby>ってくる<ruby>日<rt>ひ</rt></ruby>。<ruby>踊<rt>おど</rt></ruby>って<ruby>迎<rt>むか</rt></ruby>えるんだよ。<br>*(Obon là ngày tổ tiên về thăm. Múa để đón họ đó.)* |
| Linh | なるほど、ベトナムのお<ruby>正月<rt>しょうがつ</rt></ruby>テトと<ruby>似<rt>に</rt></ruby>てますね。<ruby>祖先<rt>そせん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にするところが。<br>*(Ra vậy, giống Tết Việt Nam quá. Phần coi trọng tổ tiên.)* |
| お年寄り | そうかい、どこの<ruby>国<rt>くに</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>にするものは<ruby>同<rt>おな</rt></ruby>じだね。<br>*(Vậy à, nước nào cũng coi trọng những thứ giống nhau nhỉ.)* |

---

## Tình huống 6 — Quầy 屋台 · 21:00, mua đồ ăn lễ hội

| Vai | Lời thoại |
|---|---|
| Dewi | リン<ruby>先輩<rt>せんぱい</rt></ruby>、たこ<ruby>焼<rt>や</rt></ruby>き<ruby>食<rt>た</rt></ruby>べたい！<br>*(Chị Linh, em muốn ăn takoyaki!)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>もそろそろお<ruby>腹<rt>なか</rt></ruby>すいた。<ruby>行<rt>い</rt></ruby>こう。<br>*(Chị cũng đói rồi. Đi thôi.)* |
| Linh | （<ruby>屋台<rt>やたい</rt></ruby>で）すみません、たこ<ruby>焼<rt>や</rt></ruby>き<ruby>1<rt>いち</rt></ruby>パック、いくらですか？<br>*(Ở quầy. Anh ơi, một hộp takoyaki bao nhiêu ạ?)* |
| 店員 | <ruby>8<rt>はっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>入<rt>い</rt></ruby>り<ruby>600<rt>ろっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Hộp 8 viên 600 yên.)* |
| Linh | <ruby>2<rt>に</rt></ruby>パックお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>1<rt>いっ</rt></ruby>パックは<ruby>豚<rt>ぶた</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>きでお<ruby>願<rt>ねが</rt></ruby>いできますか？<br>*(Cho em 2 hộp. 1 hộp xin không thịt heo được không?)* |
| 店員 | たこ<ruby>焼<rt>や</rt></ruby>きには<ruby>豚肉<rt>ぶたにく</rt></ruby><ruby>入<rt>はい</rt></ruby>っていませんよ。<ruby>蛸<rt>たこ</rt></ruby>だけです。<br>*(Takoyaki không có thịt heo đâu. Chỉ bạch tuộc thôi.)* |
| Dewi | <ruby>蛸<rt>たこ</rt></ruby>はOKです。じゃあ<ruby>2<rt>に</rt></ruby>パックそのままで。<br>*(Bạch tuộc OK. Vậy 2 hộp như thường.)* |
| 店員 | はい、<ruby>合計<rt>ごうけい</rt></ruby><ruby>1200<rt>せんにひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>熱<rt>あつ</rt></ruby>いから<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Vâng, tổng 1200 yên. Nóng đó, cẩn thận.)* |
| Linh | ありがとうございます。あ、かき<ruby>氷<rt>ごおり</rt></ruby>のお<ruby>店<rt>みせ</rt></ruby>はどこですか？<br>*(Cảm ơn ạ. À, quầy đá bào ở đâu ạ?)* |
| 店員 | あっち、<ruby>金魚<rt>きんぎょ</rt></ruby>すくいの<ruby>隣<rt>となり</rt></ruby>です。<br>*(Đằng kia, cạnh quầy vớt cá vàng.)* |
| Linh | ありがとうございます。<br>*(Cảm ơn ạ.)* |

---

## Tình huống 7 — Phía sau lễ hội · 21:30, vớt cá vàng và 浴衣 của Dewi

| Vai | Lời thoại |
|---|---|
| Dewi | リン<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>浴衣<rt>ゆかた</rt></ruby><ruby>可愛<rt>かわい</rt></ruby>いですね。<br>*(Yukata của chị Linh đẹp ghê.)* |
| Linh | <ruby>山田<rt>やまだ</rt></ruby>おばさんが<ruby>貸<rt>か</rt></ruby>してくれたの。デウィちゃんのもピンクで<ruby>素敵<rt>すてき</rt></ruby>だよ。<br>*(Cô Yamada cho mượn đó. Của Dewi màu hồng đẹp lắm.)* |
| Dewi | <ruby>初<rt>はじ</rt></ruby>めて<ruby>着<rt>き</rt></ruby>たけど、<ruby>歩<rt>ある</rt></ruby>きにくいです…<br>*(Lần đầu mặc, đi khó quá…)* |
| Linh | <ruby>小幅<rt>こはば</rt></ruby>でゆっくり<ruby>歩<rt>ある</rt></ruby>くのよ。さあ、<ruby>金魚<rt>きんぎょ</rt></ruby>すくい<ruby>挑戦<rt>ちょうせん</rt></ruby>しよう！<br>*(Bước nhỏ và đi từ từ. Nào, thử vớt cá vàng đi!)* |
| 店員 | いらっしゃい！<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>300<rt>さんびゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、ポイ<ruby>3<rt>さん</rt></ruby><ruby>枚<rt>まい</rt></ruby>で<ruby>挑戦<rt>ちょうせん</rt></ruby>できますよ。<br>*(Mời các cháu! 1 lượt 300 yên, có 3 vợt thử.)* |
| Linh | <ruby>2人<rt>ふたり</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho 2 người ạ.)* |
| Dewi | （<ruby>挑戦<rt>ちょうせん</rt></ruby>）あー、<ruby>破<rt>やぶ</rt></ruby>れちゃった！<br>*(Thử. A, rách rồi!)* |
| 店員 | <ruby>水<rt>みず</rt></ruby>から<ruby>出<rt>だ</rt></ruby>すのが<ruby>早<rt>はや</rt></ruby>すぎたね。ゆっくり、<ruby>斜<rt>なな</rt></ruby>めに<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる。<br>*(Cháu nhấc khỏi nước nhanh quá. Từ từ, nâng nghiêng lên.)* |
| Linh | （<ruby>挑戦<rt>ちょうせん</rt></ruby>）あ、<ruby>金魚<rt>きんぎょ</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>匹<rt>ぴき</rt></ruby><ruby>捕<rt>つか</rt></ruby>まえました！<br>*(Thử. Á, em vớt được 1 con!)* |
| 店員 | <ruby>上手<rt>じょうず</rt></ruby>！<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>ってもいいよ。<br>*(Giỏi! Mang về luôn được nhé.)* |
| Linh | おばさんの<ruby>家<rt>うち</rt></ruby>でかえるかな…まあ<ruby>記念<rt>きねん</rt></ruby>に。<br>*(Nhà cô có nuôi được không nhỉ… thôi làm kỷ niệm.)* |

---

## Tình huống 8 — Nhà 山田 ở Kamisu · 15/8 sáng, đi 墓参り

*Linh và Dewi đã quay về Kamisu, ngủ tại nhà Yamada.*

| Vai | Lời thoại |
|---|---|
| 山田さん | おはよう、リンちゃん、デウィちゃん。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>墓参<rt>はかまい</rt></ruby>りに<ruby>行<rt>い</rt></ruby>くよ。<br>*(Chào sáng Linh, Dewi. Hôm nay đi viếng mộ nhé.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>たちも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>っていいんですか？<br>*(Bọn cháu đi cùng được không ạ?)* |
| 山田おばさん | もちろん。<ruby>家族<rt>かぞく</rt></ruby><ruby>同然<rt>どうぜん</rt></ruby>だから。<br>*(Tất nhiên. Như người nhà mà.)* |
| Linh | ありがとうございます。<ruby>何<rt>なに</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていけばいいですか？<br>*(Cảm ơn cô. Cần mang gì ạ?)* |
| 山田おばさん | お<ruby>花<rt>はな</rt></ruby>、お<ruby>線香<rt>せんこう</rt></ruby>、それから<ruby>水<rt>みず</rt></ruby>とバケツ。お<ruby>墓<rt>はか</rt></ruby>を<ruby>掃除<rt>そうじ</rt></ruby>するからね。<br>*(Hoa, hương, rồi nước với xô. Phải dọn mộ mà.)* |
| Dewi | お<ruby>墓<rt>はか</rt></ruby><ruby>掃除<rt>そうじ</rt></ruby>するんですか？<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Dọn mộ ạ? Em mới nghe lần đầu.)* |
| 山田さん | <ruby>墓石<rt>ぼせき</rt></ruby>を<ruby>水<rt>みず</rt></ruby>で<ruby>洗<rt>あら</rt></ruby>って、<ruby>雑草<rt>ざっそう</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くんだ。ご<ruby>先祖様<rt>せんぞさま</rt></ruby>が<ruby>気持<rt>きも</rt></ruby>ちよく<ruby>帰<rt>かえ</rt></ruby>って<ruby>来<rt>こ</rt></ruby>られるように。<br>*(Rửa bia mộ bằng nước, nhổ cỏ dại. Để tổ tiên về thăm thoải mái.)* |
| Linh | ベトナムでも<ruby>同<rt>おな</rt></ruby>じです。テトの<ruby>前<rt>まえ</rt></ruby>にお<ruby>墓<rt>はか</rt></ruby><ruby>掃除<rt>そうじ</rt></ruby>します。<br>*(Việt Nam cũng vậy. Trước Tết là dọn mộ.)* |
| 山田さん | おお、<ruby>似<rt>に</rt></ruby>てるんだね。<br>*(Ồ, giống nhau nhỉ.)* |

---

## Tình huống 9 — Nghĩa trang chùa · 10:00, đặt hoa và 合掌

| Vai | Lời thoại |
|---|---|
| 山田おばさん | これが<ruby>山田<rt>やまだ</rt></ruby><ruby>家<rt>け</rt></ruby>のお<ruby>墓<rt>はか</rt></ruby>。<ruby>主人<rt>しゅじん</rt></ruby>のお<ruby>父<rt>とう</rt></ruby>さんとお<ruby>母<rt>かあ</rt></ruby>さん、それから<ruby>祖父母<rt>そふぼ</rt></ruby>が<ruby>眠<rt>ねむ</rt></ruby>っています。<br>*(Đây là mộ gia đình Yamada. Bố mẹ chồng cô, rồi ông bà cố đang yên nghỉ.)* |
| Linh | （<ruby>合掌<rt>がっしょう</rt></ruby>）はじめまして、ベトナムから<ruby>来<rt>き</rt></ruby>たリンと<ruby>申<rt>もう</rt></ruby>します。<ruby>山田<rt>やまだ</rt></ruby><ruby>家<rt>け</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になっています。<br>*(Chắp tay. Cháu chào, cháu là Linh từ Việt Nam. Cháu được nhà Yamada giúp đỡ.)* |
| Dewi | （<ruby>合掌<rt>がっしょう</rt></ruby>）デウィです。インドネシアから<ruby>来<rt>き</rt></ruby>ました。<br>*(Chắp tay. Cháu là Dewi. Từ Indonesia.)* |
| 山田さん | （<ruby>線香<rt>せんこう</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる）<ruby>父<rt>ちち</rt></ruby>さん、<ruby>母<rt>かあ</rt></ruby>さん、<ruby>今年<rt>ことし</rt></ruby>もまた<ruby>来<rt>き</rt></ruby>ました。<br>*(Cắm hương. Cha, mẹ, năm nay con lại đến.)* |
| 山田おばさん | <ruby>外国<rt>がいこく</rt></ruby>の<ruby>子<rt>こ</rt></ruby>たちも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来<rt>き</rt></ruby>てくれましたよ。<br>*(Có cả mấy đứa nước ngoài đi cùng đó.)* |
| Linh | （<ruby>小声<rt>こごえ</rt></ruby>で）デウィちゃん、お<ruby>祈<rt>いの</rt></ruby>りの<ruby>仕方<rt>しかた</rt></ruby>は<ruby>宗教<rt>しゅうきょう</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うから、デウィちゃんは<ruby>自分<rt>じぶん</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>でいいよ。<br>*(Nhỏ tiếng. Dewi à, cách cầu nguyện mỗi đạo khác nhau, em theo cách của em được.)* |
| Dewi | はい、<ruby>心<rt>こころ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>でお<ruby>祈<rt>いの</rt></ruby>りしました。<br>*(Vâng, em cầu trong lòng rồi.)* |
| 山田おばさん | それでいいのよ。<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大切<rt>たいせつ</rt></ruby>だから。<br>*(Thế là được rồi. Tấm lòng mới quan trọng.)* |

---

## Tình huống 10 — Trên đường về · 12:00, hỏi sâu về văn hoá Obon

| Vai | Lời thoại |
|---|---|
| Linh | おばさん、お<ruby>盆<rt>ぼん</rt></ruby>のときに「<ruby>迎<rt>むか</rt></ruby>え<ruby>火<rt>び</rt></ruby>」とか「<ruby>送<rt>おく</rt></ruby>り<ruby>火<rt>び</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>きました。<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Cô ơi, cháu nghe Obon có "lửa đón" với "lửa tiễn". Là gì ạ?)* |
| 山田おばさん | <ruby>13<rt>じゅうさん</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>に<ruby>家<rt>いえ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>火<rt>ひ</rt></ruby>を<ruby>焚<rt>た</rt></ruby>いて、ご<ruby>先祖様<rt>せんぞさま</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えるの。<ruby>16<rt>じゅうろく</rt></ruby><ruby>日<rt>にち</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>はまた<ruby>火<rt>ひ</rt></ruby>を<ruby>焚<rt>た</rt></ruby>いて<ruby>送<rt>おく</rt></ruby>る。<br>*(Chiều 13 đốt lửa trước nhà đón tổ tiên. Chiều 16 lại đốt lửa tiễn về.)* |
| Linh | じゃあ、<ruby>京都<rt>きょうと</rt></ruby>の<ruby>大文字<rt>だいもんじ</rt></ruby>もそれですか？<br>*(Vậy "đại văn tự" ở Kyoto cũng là đó ạ?)* |
| 山田さん | そう、<ruby>大規模<rt>だいきぼ</rt></ruby>な<ruby>送<rt>おく</rt></ruby>り<ruby>火<rt>び</rt></ruby>だね。<ruby>山<rt>やま</rt></ruby>に<ruby>大<rt>だい</rt></ruby>きな「<ruby>大<rt>だい</rt></ruby>」の<ruby>字<rt>じ</rt></ruby>を<ruby>燃<rt>も</rt></ruby>やすんだ。<br>*(Đúng, là lửa tiễn quy mô lớn. Đốt chữ "đại" to trên núi.)* |
| Linh | テレビで<ruby>見<rt>み</rt></ruby>たことあります。きれいでした。<br>*(Cháu xem trên TV rồi. Đẹp lắm.)* |
| 山田おばさん | <ruby>来年<rt>らいねん</rt></ruby><ruby>京都<rt>きょうと</rt></ruby>に<ruby>連<rt>つ</rt></ruby>れて<ruby>行<rt>い</rt></ruby>ってあげようか。<br>*(Năm sau cô đưa các cháu đi Kyoto nhé.)* |
| Linh | え！<ruby>本当<rt>ほんとう</rt></ruby>ですか？<br>*(Eh! Thật ạ?)* |
| 山田さん | <ruby>家内<rt>かない</rt></ruby>がそう<ruby>言<rt>い</rt></ruby>うなら<ruby>確定<rt>かくてい</rt></ruby>だ（<ruby>笑<rt>わら</rt></ruby>）。<br>*(Vợ tôi đã nói thì chắc chắn rồi nhé. Cười.)* |

---

## Tình huống 11 — Bàn ăn nhà 山田 · 15/8 tối, Linh nấu phở Việt cảm ơn

| Vai | Lời thoại |
|---|---|
| Linh | おばさん、<ruby>今夜<rt>こんや</rt></ruby><ruby>私<rt>わたし</rt></ruby>がベトナム<ruby>料理<rt>りょうり</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってもいいですか？<br>*(Cô ơi, tối nay cháu nấu món Việt được không ạ?)* |
| 山田おばさん | あら<ruby>嬉<rt>うれ</rt></ruby>しい！<ruby>何<rt>なに</rt></ruby><ruby>作<rt>つく</rt></ruby>るの？<br>*(Ôi mừng quá! Nấu gì cháu?)* |
| Linh | フォーです。<ruby>米<rt>こめ</rt></ruby>の<ruby>麺<rt>めん</rt></ruby>のスープです。<ruby>鶏<rt>とり</rt></ruby><ruby>肉<rt>にく</rt></ruby>と<ruby>香草<rt>こうそう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Phở ạ. Súp mì gạo. Dùng thịt gà với rau thơm.)* |
| Dewi | <ruby>私<rt>わたし</rt></ruby>も<ruby>手伝<rt>てつだ</rt></ruby>います。<br>*(Em phụ với.)* |
| 山田さん | アジアの<ruby>料理<rt>りょうり</rt></ruby>は<ruby>嬉<rt>うれ</rt></ruby>しいね。<ruby>材料<rt>ざいりょう</rt></ruby>は<ruby>足<rt>た</rt></ruby>りる？<br>*(Món châu Á là mừng. Đủ nguyên liệu không?)* |
| Linh | はい、<ruby>業務<rt>ぎょうむ</rt></ruby>スーパーでフォーの<ruby>麺<rt>めん</rt></ruby>とパクチーを<ruby>買<rt>か</rt></ruby>ってきました。<br>*(Vâng, cháu mua bánh phở với rau mùi ở siêu thị Gyomu rồi.)* |
| 山田おばさん | <ruby>業務<rt>ぎょうむ</rt></ruby>スーパーって<ruby>本当<rt>ほんとう</rt></ruby><ruby>便利<rt>べんり</rt></ruby>よね。<br>*(Siêu thị Gyomu tiện thật.)* |
| Linh | （<ruby>食<rt>た</rt></ruby>べる<ruby>時間<rt>じかん</rt></ruby>）どうですか？<br>*(Đến giờ ăn. Vị thế nào ạ?)* |
| 山田さん | うまい！<ruby>体<rt>からだ</rt></ruby>が<ruby>温<rt>あたた</rt></ruby>まる。<ruby>夏<rt>なつ</rt></ruby>なのに<ruby>不思議<rt>ふしぎ</rt></ruby>と<ruby>食<rt>た</rt></ruby>べたくなるね。<br>*(Ngon! Người ấm lên. Mùa hè mà lại muốn ăn, lạ thật.)* |
| 山田おばさん | リンちゃんが<ruby>家<rt>うち</rt></ruby>にいると<ruby>毎日<rt>まいにち</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しいわ。<br>*(Có Linh ở nhà mỗi ngày đều vui.)* |
| Linh | おばさんたちのおかげで、<ruby>日本<rt>にほん</rt></ruby>のお<ruby>盆<rt>ぼん</rt></ruby>を<ruby>体験<rt>たいけん</rt></ruby>できました。ありがとうございます。<br>*(Nhờ cô chú, cháu trải nghiệm được Obon Nhật. Cảm ơn cô chú ạ.)* |

---

## Tình huống 12 — Ký túc xá · 16/8 tối, gọi điện về Đồng Tháp (cảnh tiếng Việt)

> Cảnh tiếng Việt — Linh kể chuyện Obon cho mẹ và em gái út.

| Vai | Lời thoại |
|---|---|
| Linh | Alo, mẹ! Em Tâm có ở đó không? |
| Mẹ | Có, em đang ngồi cạnh mẹ. Có gì mà cười tươi thế con? |
| Linh | Con vừa nghỉ Obon 4 ngày, đi chơi thích lắm. Mẹ biết Obon là gì không? Giống Tết của Nhật mẹ ạ, là lễ *tổ tiên về thăm nhà*. |
| Tâm | Chị Linh, có lì xì không? |
| Linh | (cười) Obon không lì xì em ơi, chỉ có *múa Bon-odori* quanh tháp giữa làng, ăn *takoyaki*, vớt cá vàng. Chị có ảnh đẹp lắm, sẽ gửi *Zalo* cho em. |
| Mẹ | Đi với ai con? |
| Linh | Đi với em *Dewi* — kohai Indonesia. Đầu tiên 2 ngày về nhà bác của Dewi ở *Tsukuba*, sau đó về *Kamisu* với cô chú *Yamada* — gia đình homestay con quen từ năm ngoái. Cô Yamada cho con mượn *yukata* — áo mỏng mùa hè đó mẹ. |
| Mẹ | Có giống áo dài Việt mình không? |
| Linh | Không mẹ ơi, là *kimono mùa hè* dệt bông, mặc đi lễ hội. À, sáng 15 cô chú dẫn con đi *thăm mộ* gia đình. Người Nhật cũng dọn mộ, thắp hương, đặt hoa giống mình lúc Tết — chỉ khác là Tết Nhật là tháng 8 không phải tháng 1. |
| Tâm | Chị có ăn được hết món Nhật không? |
| Linh | Có em, ngon lắm. Mà tối qua chị nấu *phở* cảm ơn cô chú Yamada. Cô chú khen ngon, bảo "mùa hè sao tự nhiên muốn ăn" (cười). |
| Mẹ | Giỏi quá con. Ở bên đó có gia đình Nhật quý mến thế là phước lắm. |
| Linh | Vâng mẹ. Sang năm cô chú còn rủ con đi xem *大文字* — đốt lửa hình chữ "đại" trên núi Kyoto. Hứa hẹn đó mẹ. |
| Mẹ | Mong cho con sang năm gặp nhiều may mắn nữa. Ngày mai con lại đi làm à? |
| Linh | Vâng, 4 giờ sáng dậy thu hoạch dưa leo. Mẹ với em ngủ ngon. |
| Tâm | Chị Linh, lần sau gửi *yukata* về cho em mặc Tết được không? |
| Linh | (cười) Để chị xem có size em không nhé. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **お休みのことでご相談させていただきたいのですが** — xin nghỉ keigo
- **本日はお招きいただきありがとうございます。つまらないものですが…** — chào và đưa quà
- **〜抜きでお願いできますか？** — hỏi món không có thành phần X (halal-friendly)
- **お墓参り・お線香・合掌・墓石を洗う** — bộ từ viếng mộ
- **〜のおかげで〜を体験できました** — cảm ơn vì cho trải nghiệm
- **どこの国も大事にするものは同じだね** — đồng cảm văn hoá

> Từ vựng & mẫu câu chương này: お盆・盆踊り・櫓・太鼓・提灯・浴衣・屋台・たこ焼き・かき氷・金魚すくい・ポイ・お墓参り・お線香・合掌・墓石・雑草・先祖様・迎え火・送り火・大文字・手土産・原材料・ハラル・業務スーパー — bộ từ văn hoá lễ hội mùa hè Nhật.

## Bí quyết chương

- **手土産 khi đến nhà người Nhật** là bắt buộc — 1500-3000 yên là vừa. Câu nhường khiêm: "つまらないものですが" hoặc hiện đại hơn "お口に合うかわかりませんが".
- **Halal-friendly khi đi với bạn Hồi giáo**: luôn kiểm tra 原材料 (nguyên liệu) — đặc biệt tránh 豚 (heo), みりん, rượu.
- **Obon 8/13-8/16** là kỳ nghỉ duy nhất trong năm cả công sở Nhật đóng cửa — TTS nên dùng thời gian này để giao lưu văn hoá.
- **Khi viếng mộ Nhật**: rửa bia mộ + đặt hoa + thắp hương + 合掌 (chắp tay cúi đầu). Người không theo Phật giáo có thể chỉ cần cầu nguyện trong lòng.
- **盆踊り = đón tổ tiên bằng vũ điệu** — múa quanh 櫓 (tháp gỗ giữa quảng trường), điệu 炭坑節 dễ nhất.
- Tết Việt và Obon Nhật **có triết lý chung**: tổ tiên về thăm con cháu, dọn mộ trước lễ, sum họp gia đình.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| お盆 | おぼん | — BỒN | Obon, lễ tổ tiên Nhật |
| お盆休み | おぼんやすみ | — BỒN HƯU | nghỉ Obon |
| 相談 | そうだん | TƯƠNG ĐÀM | tham vấn, bàn bạc |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 後輩 | こうはい | HẬU BỐI | đàn em, kohai |
| 手土産 | てみやげ | THỦ THỔ SẢN | quà cầm đến nhà |
| 原材料 | げんざいりょう | NGUYÊN TÀI LIỆU | nguyên liệu |
| ハラル | — | — | halal (Hồi giáo cho phép) |
| 寒天 | かんてん | HÀN THIÊN | rau câu, agar |
| 招く | まねく | CHIÊU | mời, đón |
| お邪魔します | おじゃまします | — TÀ MA — | xin phép vào nhà |
| つまらないもの | — | — | "vật mọn" (khiêm tốn khi tặng) |
| 盆踊り | ぼんおどり | BỒN VŨ | múa Bon-odori |
| 提灯 | ちょうちん | ĐỀ ĐỀNG | đèn lồng giấy |
| 櫓 | やぐら | LẦU | tháp gỗ dựng giữa lễ hội |
| 太鼓 | たいこ | THÁI CỔ | trống lớn |
| 輪になる | わになる | LUÂN — | xếp thành vòng tròn |
| 炭坑節 | たんこうぶし | THAN KHANH TIẾT | điệu múa Tankoubushi |
| 真似 | まね | CHÂN TỰ | bắt chước |
| 先祖様 | せんぞさま | TIÊN TỔ — | tổ tiên (kính) |
| 屋台 | やたい | ỐC ĐÀI | quầy ăn lễ hội |
| たこ焼き | たこやき | — THIÊU | takoyaki, bạch tuộc viên |
| かき氷 | かきごおり | — BĂNG | đá bào |
| 金魚すくい | きんぎょすくい | KIM NGƯ — | vớt cá vàng |
| ポイ | — | — | vợt giấy mỏng (vớt cá vàng) |
| 浴衣 | ゆかた | DỤC Y | yukata, kimono mùa hè cotton |
| 小幅 | こはば | TIỂU PHÚC | bước nhỏ |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thử thách |
| 記念 | きねん | KỶ NIỆM | kỷ niệm |
| お墓参り | おはかまいり | — MỘ THAM — | viếng mộ |
| お線香 | おせんこう | — TUYẾN HƯƠNG | hương, nhang |
| 合掌 | がっしょう | HỢP CHƯỞNG | chắp tay cầu nguyện |
| 墓石 | ぼせき | MỘ THẠCH | bia mộ |
| 雑草 | ざっそう | TẠP THẢO | cỏ dại |
| 迎え火 | むかえび | NGHINH HOẢ | lửa đón tổ tiên |
| 送り火 | おくりび | TỐNG HOẢ | lửa tiễn tổ tiên |
| 大文字 | だいもんじ | ĐẠI VĂN TỰ | lửa hình chữ "đại" Kyoto |
| 焚く | たく | PHẦN | đốt (lửa, hương) |
| 祈り | いのり | KỲ | cầu nguyện |
| 宗教 | しゅうきょう | TÔN GIÁO | tôn giáo |
| 業務スーパー | ぎょうむスーパー | NGHIỆP VỤ — | siêu thị Gyomu (giá rẻ) |
| 香草 | こうそう | HƯƠNG THẢO | rau thơm |
| パクチー | — | — | rau mùi, ngò |
| 体験 | たいけん | THỂ NGHIỆM | trải nghiệm |
| 家族同然 | かぞくどうぜん | GIA TỘC ĐỒNG NHIÊN | như người trong nhà |
| 不思議 | ふしぎ | BẤT TƯ NGHỊ | kỳ lạ, không thể nghĩ |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000008, 800000041, NULL, 'markdown_book', 'T8. Ôn JLPT N3 nước rút (N3対策・直前期)', '# Sách nông nghiệp năm 2 · T8. Ôn JLPT N3 nước rút (N3対策・直前期)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, năm 2, đỉnh điểm luyện N3 tháng 12/2026). Học các mẫu hội thoại tiếng Nhật xoay quanh học thi JLPT: đăng ký thi online tại 日本国際教育支援協会 (JEES) qua web, lập kế hoạch ôn 4 kỹ năng (文字語彙・文法読解・聴解), trao đổi với giáo viên lớp 日本語教室 ở 公民館, học nhóm với sempai và kohai, sửa lỗi ngữ pháp khó (〜たびに, 〜ばかりに, 受身形), ngày thi tại 試験会場, gọi điện cho thầy giáo cũ ở VN xin lời khuyên.

---

## Bối cảnh

Tháng 10 đến tháng 12 năm 2026. Linh đã thi N4 từ năm 1 (đỗ điểm cao), đang nước rút N3 — kỳ thi sẽ tổ chức ngày *Chủ nhật đầu tháng 12* tại 茨城大学 Mito. Linh học mỗi tối 2 tiếng sau ca làm + thứ bảy 4 tiếng tại 日本語教室 公民館 神栖 do tình nguyện viên dạy. Bạn cùng học: Tuấn (Việt, năm 3, đã đỗ N3 năm ngoái — giờ làm trợ giảng), Dewi (Indonesia, chuẩn bị N4), Sari (Philippines, N3 đợt này). Chương này tập trung từ vựng và mẫu câu sinh hoạt học thi.

---

## Tình huống 1 — Phòng ký túc · 19:00, đăng ký thi N3 trên web JEES

| Vai | Lời thoại |
|---|---|
| Linh | デウィちゃん、JLPTの<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みサイトを<ruby>開<rt>ひら</rt></ruby>いたよ。<br>*(Dewi ơi, chị mở web đăng ký JLPT rồi.)* |
| Dewi | <ruby>私<rt>わたし</rt></ruby>もN<ruby>4<rt>よん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みたいです！<br>*(Em cũng muốn đăng ký N4!)* |
| Linh | <ruby>必要<rt>ひつよう</rt></ruby>なものは、メールアドレス、<ruby>顔写真<rt>かおじゃしん</rt></ruby>のデータ、クレジットカード、<ruby>在留<rt>ざいりゅう</rt></ruby>カード<ruby>番号<rt>ばんごう</rt></ruby>です。<br>*(Cần địa chỉ mail, ảnh chân dung, thẻ tín dụng, số thẻ zairyuu.)* |
| Dewi | クレジットカードがないです…<br>*(Em không có thẻ tín dụng…)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、コンビニ<ruby>払<rt>ばら</rt></ruby>いも<ruby>選<rt>えら</rt></ruby>べるよ。<br>*(Không sao, chọn được thanh toán convini đó.)* |
| Linh | （<ruby>入力<rt>にゅうりょく</rt></ruby>しながら）<ruby>受験<rt>じゅけん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>はN<ruby>3<rt>さん</rt></ruby>、<ruby>会場<rt>かいじょう</rt></ruby>は<ruby>茨城<rt>いばらき</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>水戸<rt>みと</rt></ruby>キャンパス、<ruby>受験料<rt>じゅけんりょう</rt></ruby><ruby>7500<rt>ななせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>。<br>*(Vừa nhập. Cấp thi N3, hội trường Đại học Ibaraki cơ sở Mito, lệ phí 7500 yên.)* |
| Dewi | <ruby>結構<rt>けっこう</rt></ruby>するんですね。<br>*(Cũng đắt nhỉ.)* |
| Linh | でも、<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>半額<rt>はんがく</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>が<ruby>出<rt>で</rt></ruby>るって。<br>*(Nhưng đỗ thì công ty hỗ trợ một nửa.)* |
| Dewi | <ruby>本当<rt>ほんとう</rt></ruby>ですか！がんばらなきゃ。<br>*(Thật ạ! Phải cố gắng.)* |

---

## Tình huống 2 — 公民館 · Thứ bảy 14:00, gặp 先生 lớp 日本語教室

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、こんにちは。リンです。<br>*(Cô Sato, cháu chào. Cháu là Linh.)* |
| 先生 | リンさん、こんにちは。<ruby>今日<rt>きょう</rt></ruby>から<ruby>本格的<rt>ほんかくてき</rt></ruby>にN<ruby>3<rt>さん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めますよ。<br>*(Linh, chào cháu. Hôm nay bắt đầu ôn N3 nghiêm túc nhé.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>苦手<rt>にがて</rt></ruby>な<ruby>分野<rt>ぶんや</rt></ruby>は<ruby>聴解<rt>ちょうかい</rt></ruby>と<ruby>長文<rt>ちょうぶん</rt></ruby><ruby>読解<rt>どっかい</rt></ruby>です。<br>*(Vâng, em nhờ cô. Phần em yếu là nghe và đọc bài dài.)* |
| 先生 | <ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、N<ruby>3<rt>さん</rt></ruby><ruby>模試<rt>もし</rt></ruby>の<ruby>音声<rt>おんせい</rt></ruby>を<ruby>聞<rt>き</rt></ruby>き<ruby>流<rt>なが</rt></ruby>すこと。<ruby>読解<rt>どっかい</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>に<ruby>5<rt>ご</rt></ruby><ruby>問<rt>もん</rt></ruby>、<ruby>時間<rt>じかん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>って<ruby>解<rt>と</rt></ruby>くこと。<br>*(Nghe thì mỗi ngày 30 phút, bật trôi audio đề thi mẫu N3. Đọc thì 1 tuần 5 bài, bấm giờ làm.)* |
| Linh | <ruby>1<rt>いち</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>に<ruby>5<rt>ご</rt></ruby><ruby>問<rt>もん</rt></ruby>、できるかな…<br>*(Tuần 5 bài, có làm được không…)* |
| 先生 | できる。<ruby>仕事<rt>しごと</rt></ruby>から<ruby>帰<rt>かえ</rt></ruby>って<ruby>1<rt>いち</rt></ruby><ruby>問<rt>もん</rt></ruby>ずつ、<ruby>土曜<rt>どよう</rt></ruby><ruby>日<rt>び</rt></ruby>にここで<ruby>2<rt>に</rt></ruby><ruby>問<rt>もん</rt></ruby>。<ruby>合<rt>あ</rt></ruby>わせて<ruby>5<rt>ご</rt></ruby><ruby>問<rt>もん</rt></ruby>。<br>*(Làm được. Đi làm về 1 bài/ngày, thứ bảy ở đây 2 bài. Cộng 5 bài.)* |
| Linh | なるほど。<ruby>文法<rt>ぶんぽう</rt></ruby>はどうしたらいいですか？<br>*(Ra vậy. Còn ngữ pháp thì sao ạ?)* |
| 先生 | 「TRY!N<ruby>3<rt>さん</rt></ruby><ruby>文法<rt>ぶんぽう</rt></ruby>」と「<ruby>新<rt>しん</rt></ruby>かんぜんマスター」の<ruby>2<rt>に</rt></ruby><ruby>冊<rt>さつ</rt></ruby>で<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(Cuốn "TRY! N3 ngữ pháp" và "Shin Kanzen Master" 2 quyển là đủ.)* |
| Linh | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>本屋<rt>ほんや</rt></ruby>で<ruby>注文<rt>ちゅうもん</rt></ruby>します。<br>*(Em rõ. Cháu sẽ đặt nhà sách.)* |

---

## Tình huống 3 — Trong xe đi làm · 6:30, luyện 聴解 trôi tai

*Linh đeo tai nghe nghe audio trong lúc 親方 chở đi ruộng.*

| Vai | Lời thoại |
|---|---|
| 親方 | リン、<ruby>何<rt>なに</rt></ruby><ruby>聞<rt>き</rt></ruby>いてるんだ？<br>*(Linh, đang nghe gì đấy?)* |
| Linh | あ、すみません。N<ruby>3<rt>さん</rt></ruby>の<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>です。<br>*(À, em xin lỗi. Em đang luyện nghe N3.)* |
| 親方 | <ruby>1<rt>いち</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>かせてくれ。どんな<ruby>問題<rt>もんだい</rt></ruby>だ？<br>*(Cho tôi nghe thử. Đề kiểu gì?)* |
| Linh | （<ruby>音声<rt>おんせい</rt></ruby><ruby>再生<rt>さいせい</rt></ruby>）「<ruby>男<rt>おとこ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>と<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>話<rt>はな</rt></ruby>しています。<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>何時<rt>なんじ</rt></ruby>に<ruby>家<rt>いえ</rt></ruby>を<ruby>出<rt>で</rt></ruby>ますか」<br>*(Phát audio. "Người đàn ông và phụ nữ đang nói chuyện. Ngày mai người phụ nữ rời nhà lúc mấy giờ?")* |
| 親方 | おお、これくらいのスピード<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れるのか？<br>*(Ồ, tốc độ này nghe được hả?)* |
| Linh | まだ<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>会話<rt>かいわ</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くて、<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>時間<rt>じかん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないです。<br>*(Còn khó ạ. Hội thoại nhanh, không đủ giờ đọc đáp án.)* |
| 親方 | <ruby>慣<rt>な</rt></ruby>れるしかないな。<ruby>畑<rt>はたけ</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>している<ruby>間<rt>あいだ</rt></ruby>も<ruby>聞<rt>き</rt></ruby>いてていいよ。<br>*(Phải quen thôi. Lúc làm ngoài ruộng cứ nghe đi.)* |
| Linh | あ、ありがとうございます。<br>*(A, cảm ơn bác.)* |
| 親方 | <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はこんな<ruby>会話<rt>かいわ</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からなかっただろう。<ruby>進歩<rt>しんぽ</rt></ruby>してるよ。<br>*(Một năm trước em đâu hiểu được hội thoại thế này. Em tiến bộ đấy.)* |
| Linh | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cố gắng.)* |

---

## Tình huống 4 — 公民館 · Thứ bảy, ngữ pháp khó 〜たびに và 〜ばかりに

| Vai | Lời thoại |
|---|---|
| 先生 | <ruby>今日<rt>きょう</rt></ruby>は「〜たびに」と「〜ばかりに」を<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Hôm nay học "〜tabini" và "〜bakarini".)* |
| Linh | <ruby>似<rt>に</rt></ruby>てる<ruby>形<rt>かたち</rt></ruby>ですが、<ruby>意味<rt>いみ</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(Hình dạng giống nhau nhưng nghĩa khác ạ?)* |
| 先生 | <ruby>全<rt>まった</rt></ruby>く<ruby>違<rt>ちが</rt></ruby>うのよ。「たびに」は「<ruby>毎<rt>まい</rt></ruby>〜」、「ばかりに」は「<ruby>原因<rt>げんいん</rt></ruby>で<ruby>悪<rt>わる</rt></ruby>い<ruby>結果<rt>けっか</rt></ruby>」。<br>*(Khác hẳn. "Tabini" là "mỗi 〜", "bakarini" là "vì 〜 mà kết quả xấu".)* |
| Sari | <ruby>例文<rt>れいぶん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin câu ví dụ.)* |
| 先生 | 「<ruby>母<rt>はは</rt></ruby>に<ruby>会<rt>あ</rt></ruby>うたびに<ruby>泣<rt>な</rt></ruby>いてしまう」=<ruby>毎回<rt>まいかい</rt></ruby><ruby>母<rt>はは</rt></ruby>に<ruby>会<rt>あ</rt></ruby>うと<ruby>泣<rt>な</rt></ruby>く。<br>*("Cứ gặp mẹ là khóc" = mỗi lần gặp mẹ là khóc.)* |
| Linh | あ、<ruby>分<rt>わ</rt></ruby>かります。「お<ruby>盆<rt>ぼん</rt></ruby>で<ruby>母<rt>はは</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>するたびに<ruby>泣<rt>な</rt></ruby>いてしまう」みたいな。<br>*(À em hiểu. Kiểu "Cứ Obon gọi điện cho mẹ là khóc".)* |
| 先生 | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>は「<ruby>一<rt>ひと</rt></ruby><ruby>言<rt>こと</rt></ruby><ruby>余計<rt>よけい</rt></ruby>なことを<ruby>言<rt>い</rt></ruby>ったばかりに、<ruby>友達<rt>ともだち</rt></ruby>と<ruby>喧嘩<rt>けんか</rt></ruby>になった」。<br>*(Hoàn hảo. Tiếp là "Chỉ vì nói thêm một câu thừa mà cãi nhau với bạn".)* |
| Sari | <ruby>原因<rt>げんいん</rt></ruby>と<ruby>悪<rt>わる</rt></ruby>い<ruby>結果<rt>けっか</rt></ruby>、ですね。<br>*(Nguyên nhân và kết quả xấu nhỉ.)* |
| Linh | じゃあ「<ruby>残業<rt>ざんぎょう</rt></ruby>したばかりに、<ruby>電車<rt>でんしゃ</rt></ruby>に<ruby>乗<rt>の</rt></ruby>り<ruby>遅<rt>おく</rt></ruby>れた」も OK ですか？<br>*(Vậy "chỉ vì tăng ca mà lỡ tàu" cũng OK ạ?)* |
| 先生 | <ruby>正解<rt>せいかい</rt></ruby>！ふたりとも<ruby>上達<rt>じょうたつ</rt></ruby>してるね。<br>*(Đúng! Cả hai cùng tiến bộ.)* |

---

## Tình huống 5 — 公民館 phòng tự học · 16:00, học nhóm với Tuấn-sempai

| Vai | Lời thoại |
|---|---|
| Tuấn | リンちゃん、N<ruby>3<rt>さん</rt></ruby>の<ruby>受身形<rt>うけみけい</rt></ruby>はもう<ruby>覚<rt>おぼ</rt></ruby>えた？<br>*(Linh, đã nhớ thể bị động N3 chưa?)* |
| Linh | <ruby>普通<rt>ふつう</rt></ruby>の<ruby>受身<rt>うけみ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですが、<ruby>使役<rt>しえき</rt></ruby><ruby>受身<rt>うけみ</rt></ruby>がまだ<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(Bị động thường thì ổn, bị động sai khiến em vẫn yếu.)* |
| Tuấn | <ruby>使役<rt>しえき</rt></ruby><ruby>受身<rt>うけみ</rt></ruby>はね、「<ruby>嫌<rt>いや</rt></ruby>なのに<ruby>無理<rt>むり</rt></ruby>やりさせられる」<ruby>感<rt>かん</rt></ruby>じ。<br>*(Bị động sai khiến là cảm giác "không thích nhưng bị bắt làm".)* |
| Linh | <ruby>例<rt>たと</rt></ruby>えば？<br>*(Ví dụ?)* |
| Tuấn | 「<ruby>親方<rt>おやかた</rt></ruby>に<ruby>休日<rt>きゅうじつ</rt></ruby><ruby>出勤<rt>しゅっきん</rt></ruby>させられました」。<ruby>嫌<rt>いや</rt></ruby>でも<ruby>働<rt>はたら</rt></ruby>かなければいけなかった。<br>*("Em bị bác chủ Yamamoto bắt đi làm ngày nghỉ". Không thích nhưng phải làm.)* |
| Linh | あ、なるほど！じゃあ「<ruby>忘年会<rt>ぼうねんかい</rt></ruby>で<ruby>歌<rt>うた</rt></ruby>を<ruby>歌<rt>うた</rt></ruby>わせられました」も？<br>*(À hiểu rồi! Vậy "bị ép hát ở tiệc tất niên" cũng được?)* |
| Tuấn | <ruby>正解<rt>せいかい</rt></ruby>！<ruby>変化<rt>へんか</rt></ruby>のルールも<ruby>覚<rt>おぼ</rt></ruby>えてる？<br>*(Đúng! Quy tắc biến đổi nhớ chứ?)* |
| Linh | <ruby>歌<rt>うた</rt></ruby>う→<ruby>歌<rt>うた</rt></ruby>わせる→<ruby>歌<rt>うた</rt></ruby>わせられる。<ruby>食<rt>た</rt></ruby>べる→<ruby>食<rt>た</rt></ruby>べさせる→<ruby>食<rt>た</rt></ruby>べさせられる。<br>*(Uta-u → uta-waseru → uta-waserareru. Taberu → tabesaseru → tabesaserareru.)* |
| Tuấn | <ruby>完璧<rt>かんぺき</rt></ruby>！<ruby>短<rt>みじか</rt></ruby>く「<ruby>歌<rt>うた</rt></ruby>わされた」とも<ruby>言<rt>い</rt></ruby>えるよ。<br>*(Hoàn hảo! Có thể nói tắt "uta-wasareta".)* |

---

## Tình huống 6 — Phòng ký túc · 23:00, Linh dạy Dewi từ vựng N4

| Vai | Lời thoại |
|---|---|
| Dewi | リン<ruby>先輩<rt>せんぱい</rt></ruby>、N<ruby>4<rt>よん</rt></ruby>の<ruby>単語<rt>たんご</rt></ruby>でわからないのがあります。<br>*(Chị Linh, có từ N4 em không hiểu.)* |
| Linh | どれ？<br>*(Cái nào?)* |
| Dewi | 「<ruby>夢中<rt>むちゅう</rt></ruby>」と「<ruby>熱心<rt>ねっしん</rt></ruby>」は<ruby>同<rt>おな</rt></ruby>じですか？<br>*("Muchu" và "nesshin" giống nhau ạ?)* |
| Linh | <ruby>似<rt>に</rt></ruby>てるけど<ruby>違<rt>ちが</rt></ruby>うよ。「<ruby>夢中<rt>むちゅう</rt></ruby>」は<ruby>周<rt>まわ</rt></ruby>りが<ruby>見<rt>み</rt></ruby>えないくらい<ruby>没頭<rt>ぼっとう</rt></ruby>すること。「<ruby>熱心<rt>ねっしん</rt></ruby>」は<ruby>一生<rt>いっしょう</rt></ruby><ruby>懸命<rt>けんめい</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>むこと。<br>*(Giống nhưng khác. "Muchu" là đắm chìm tới mức không thấy xung quanh. "Nesshin" là chăm chỉ nỗ lực.)* |
| Dewi | <ruby>例文<rt>れいぶん</rt></ruby>ください。<br>*(Cho câu ví dụ.)* |
| Linh | 「ゲームに<ruby>夢中<rt>むちゅう</rt></ruby>になって<ruby>食事<rt>しょくじ</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れた」「<ruby>先生<rt>せんせい</rt></ruby>は<ruby>熱心<rt>ねっしん</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれる」<br>*("Đắm vào game quên ăn cơm" / "Cô giáo dạy tận tâm".)* |
| Dewi | あ、<ruby>分<rt>わ</rt></ruby>かりました！「リン<ruby>先輩<rt>せんぱい</rt></ruby>はN<ruby>3<rt>さん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>に<ruby>夢中<rt>むちゅう</rt></ruby>です」<br>*(A em hiểu! "Chị Linh đắm chìm trong ôn N3".)* |
| Linh | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>夢中<rt>むちゅう</rt></ruby>というより、<ruby>必死<rt>ひっし</rt></ruby>かな。<br>*(Cười. So với đắm chìm thì là "sống còn" thì đúng hơn.)* |
| Dewi | <ruby>必死<rt>ひっし</rt></ruby>って？<br>*("Hisshi" là?)* |
| Linh | <ruby>命<rt>いのち</rt></ruby>がけ、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>したい<ruby>気持<rt>きも</rt></ruby>ち。<br>*(Hết mình, nhất định phải đỗ.)* |
| Dewi | リン<ruby>先輩<rt>せんぱい</rt></ruby><ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>かりますよ。<br>*(Chị Linh nhất định đỗ thôi.)* |

---

## Tình huống 7 — Phòng ăn nông trại · 12:30, hỏi từ vựng nông nghiệp qua 親方

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>親方<rt>おやかた</rt></ruby>、N<ruby>3<rt>さん</rt></ruby>の<ruby>読解<rt>どっかい</rt></ruby>に「<ruby>収益<rt>しゅうえき</rt></ruby>」って<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきて、<ruby>意味<rt>いみ</rt></ruby>がよくわかりません。<br>*(Bác, trong bài đọc N3 có từ "shuueki", em không hiểu nghĩa.)* |
| 親方 | <ruby>収益<rt>しゅうえき</rt></ruby>は「<ruby>儲<rt>もう</rt></ruby>け」のことだ。<ruby>売上<rt>うりあげ</rt></ruby>から<ruby>経費<rt>けいひ</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>いた<ruby>残<rt>のこ</rt></ruby>りだな。<br>*(Shuueki là "lời". Doanh thu trừ chi phí ra phần dư đó.)* |
| Linh | <ruby>農場<rt>のうじょう</rt></ruby>でも<ruby>使<rt>つか</rt></ruby>いますか？<br>*(Nông trại cũng dùng ạ?)* |
| 親方 | もちろん。「<ruby>今年<rt>ことし</rt></ruby>の<ruby>収益<rt>しゅうえき</rt></ruby>は<ruby>去年<rt>きょねん</rt></ruby>より<ruby>10<rt>じゅっ</rt></ruby>パーセント<ruby>増<rt>ふ</rt></ruby>えた」とか。<br>*(Tất nhiên. Như "lợi nhuận năm nay tăng 10% so với năm ngoái".)* |
| Linh | あ、なるほど。じゃあ「<ruby>収入<rt>しゅうにゅう</rt></ruby>」と<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(À hiểu rồi. Vậy khác "shuunyuu" ạ?)* |
| 親方 | <ruby>収入<rt>しゅうにゅう</rt></ruby>は<ruby>入<rt>はい</rt></ruby>ってくるお<ruby>金<rt>かね</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby>。<ruby>収益<rt>しゅうえき</rt></ruby>は<ruby>手元<rt>てもと</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>るお<ruby>金<rt>かね</rt></ruby>。<br>*(Shuunyuu là toàn bộ tiền vào. Shuueki là tiền còn lại trong tay.)* |
| Linh | <ruby>勉強<rt>べんきょう</rt></ruby>になります。メモします。<br>*(Em học được. Em ghi lại.)* |
| 親方 | リン、<ruby>働<rt>はたら</rt></ruby>きながら<ruby>勉強<rt>べんきょう</rt></ruby>するのは<ruby>偉<rt>えら</rt></ruby>いな。<ruby>体<rt>からだ</rt></ruby><ruby>壊<rt>こわ</rt></ruby>すなよ。<br>*(Linh, vừa làm vừa học là giỏi đấy. Đừng làm hỏng sức khoẻ.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |

---

## Tình huống 8 — Phòng ký túc · 22:00, làm 模試 bấm giờ và mất tinh thần

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>1<rt>いち</rt></ruby><ruby>人<rt>ひと</rt></ruby>でつぶやく）はぁ…<ruby>模試<rt>もし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>なのに<ruby>合格点<rt>ごうかくてん</rt></ruby><ruby>取<rt>と</rt></ruby>れない…<br>*(Một mình lẩm bẩm. Haa… lần thứ 3 thi thử mà không đạt điểm đỗ…)* |
| Dewi | （<ruby>入<rt>はい</rt></ruby>って<ruby>来<rt>く</rt></ruby>る）<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<ruby>泣<rt>な</rt></ruby>きそうな<ruby>顔<rt>かお</rt></ruby>してます。<br>*(Bước vào. Chị ơi, không sao chứ? Mặt sắp khóc rồi.)* |
| Linh | <ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>30<rt>さんじゅっ</rt></ruby><ruby>点満点<rt>てんまんてん</rt></ruby>の<ruby>14<rt>じゅうよん</rt></ruby><ruby>点<rt>てん</rt></ruby>しか<ruby>取<rt>と</rt></ruby>れなかった…<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby><ruby>19<rt>じゅうきゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>なのに。<br>*(Nghe tối đa 30 chỉ được 14… mà chuẩn đỗ là 19.)* |
| Dewi | あと<ruby>1<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>あります。<ruby>先輩<rt>せんぱい</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>努力<rt>どりょく</rt></ruby>してるじゃないですか。<br>*(Còn 1 tháng nữa. Chị nỗ lực hàng ngày mà.)* |
| Linh | でも<ruby>仕事<rt>しごと</rt></ruby>から<ruby>帰<rt>かえ</rt></ruby>って<ruby>疲<rt>つか</rt></ruby>れて、<ruby>集中<rt>しゅうちゅう</rt></ruby>できない<ruby>日<rt>ひ</rt></ruby>もある。<br>*(Mà đi làm về mệt, có ngày không tập trung được.)* |
| Dewi | じゃあ、<ruby>明日<rt>あした</rt></ruby>から<ruby>朝<rt>あさ</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>時半<rt>じはん</rt></ruby>に<ruby>起<rt>お</rt></ruby>きて<ruby>聴解<rt>ちょうかい</rt></ruby>やりませんか？<ruby>私<rt>わたし</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Vậy từ mai 4 giờ rưỡi sáng dậy luyện nghe nhé? Em cùng chị.)* |
| Linh | デウィちゃん…ありがとう。じゃあ<ruby>明日<rt>あした</rt></ruby>から<ruby>朝活<rt>あさかつ</rt></ruby>しよう。<br>*(Dewi… cảm ơn em. Vậy từ mai bắt đầu "asakatsu" thôi.)* |
| Dewi | <ruby>朝活<rt>あさかつ</rt></ruby>って？<br>*("Asakatsu" là?)* |
| Linh | <ruby>朝<rt>あさ</rt></ruby>に<ruby>活動<rt>かつどう</rt></ruby>すること。<ruby>日本<rt>にほん</rt></ruby><ruby>人<rt>じん</rt></ruby>がよく<ruby>言<rt>い</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>。<br>*(Hoạt động vào buổi sáng. Từ người Nhật hay dùng.)* |

---

## Tình huống 9 — Phòng ký túc · 18:30 cuối tuần, gọi điện thầy giáo cũ ở VN

*Linh gọi LINE Video cho thầy Phong — giáo viên tiếng Nhật ở trung tâm Việt Nam.*

| Vai | Lời thoại |
|---|---|
| Linh | Em chào thầy Phong! Lâu quá em mới gọi điện thầy ạ. |
| Thầy Phong | Linh đây à! Bên Nhật mấy giờ rồi? |
| Linh | Bên này 6 rưỡi tối thầy. Em đang nước rút N3, sắp thi đầu tháng 12. |
| Thầy | Tốt quá! Em luyện đến đâu rồi? |
| Linh | Thầy ơi, em yếu *聴解* — nghe ạ. Mới làm 模試 được 14/30, chuẩn đỗ là 19/30. Em lo quá. |
| Thầy | (chuyển sang JP) リン、<ruby>聴解<rt>ちょうかい</rt></ruby>のコツを<ruby>教<rt>おし</rt></ruby>えるよ。まず<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>読<rt>よ</rt></ruby>むこと。<ruby>質問<rt>しつもん</rt></ruby>のキーワードに<ruby>○<rt>まる</rt></ruby>をつけて、<ruby>音声<rt>おんせい</rt></ruby>を<ruby>聞<rt>き</rt></ruby>く。<br>*(Linh, thầy mách mẹo. Đầu tiên đọc đáp án trước. Khoanh tròn keyword của câu hỏi, rồi nghe.)* |
| Linh | はい、やってみます。あと、<ruby>音声<rt>おんせい</rt></ruby>が<ruby>速<rt>はや</rt></ruby>く<ruby>感<rt>かん</rt></ruby>じるんですが。<br>*(Vâng, em sẽ thử. Còn nữa, em cảm thấy audio nhanh.)* |
| Thầy | <ruby>速<rt>はや</rt></ruby>く<ruby>聞<rt>き</rt></ruby>こえるのは<ruby>慣<rt>な</rt></ruby>れの<ruby>問題<rt>もんだい</rt></ruby>。<ruby>1.25<rt>いってんにご</rt></ruby><ruby>倍速<rt>ばいそく</rt></ruby>で<ruby>聞<rt>き</rt></ruby>く<ruby>練習<rt>れんしゅう</rt></ruby>をしたらいい。<ruby>本番<rt>ほんばん</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>く<ruby>感<rt>かん</rt></ruby>じるよ。<br>*(Nghe nhanh là do chưa quen. Luyện nghe tốc độ 1.25x. Khi thi thật sẽ thấy chậm.)* |
| Linh | <ruby>1.25<rt>いってんにご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>！すごい<ruby>発想<rt>はっそう</rt></ruby>です。<br>*(1.25 lần! Ý hay quá thầy.)* |
| Thầy | Em đừng quá áp lực. *N3 không phải đích cuối*, chỉ là cột mốc. Em đỗ kentei 3 kyuu rồi đúng không? Vậy là em đã chứng minh được khả năng. |
| Linh | Vâng thầy. Cảm ơn thầy. Em sẽ cố hết sức. |
| Thầy | Chúc em thi tốt. Sau khi đỗ gửi ảnh thầy khoe học sinh khoá sau nhé. |
| Linh | Vâng thầy! |

---

## Tình huống 10 — Phòng ký túc · Sáng 4:30 ngày thi, chuẩn bị đi 試験会場

| Vai | Lời thoại |
|---|---|
| Dewi | <ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます。<ruby>朝<rt>あさ</rt></ruby><ruby>御飯<rt>ごはん</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>しました。<br>*(Chị ơi chào sáng. Em chuẩn bị bữa sáng rồi.)* |
| Linh | デウィちゃん、ありがとう。<ruby>何<rt>なに</rt></ruby><ruby>作<rt>つく</rt></ruby>ってくれたの？<br>*(Dewi, cảm ơn em. Em làm gì đó?)* |
| Dewi | おにぎりと、お<ruby>味噌汁<rt>みそしる</rt></ruby>です。<ruby>頭<rt>あたま</rt></ruby>に<ruby>糖分<rt>とうぶん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だからチョコレートも<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>。<br>*(Cơm nắm và súp miso. Não cần đường nên thêm 1 thanh chocolate.)* |
| Linh | <ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くね、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かる。<br>*(Em tinh tế ghê, đỡ chị thật.)* |
| Dewi | <ruby>持<rt>も</rt></ruby>ち<ruby>物<rt>もの</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しましたか？<br>*(Đồ mang đi đã kiểm tra chưa?)* |
| Linh | <ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カード、<ruby>鉛筆<rt>えんぴつ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>、<ruby>消<rt>け</rt></ruby>しゴム<ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby>、<ruby>時計<rt>とけい</rt></ruby>、<ruby>水<rt>みず</rt></ruby>。<br>*(Phiếu dự thi, thẻ zairyuu, 3 bút chì, 2 gôm, đồng hồ, nước.)* |
| Dewi | <ruby>携帯<rt>けいたい</rt></ruby>は？<br>*(Điện thoại?)* |
| Linh | <ruby>携帯<rt>けいたい</rt></ruby>は<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>めるけど<ruby>電源<rt>でんげん</rt></ruby><ruby>切<rt>き</rt></ruby>って<ruby>鞄<rt>かばん</rt></ruby>の<ruby>中<rt>なか</rt></ruby>。<br>*(Mang vào được nhưng tắt nguồn để trong cặp.)* |
| Dewi | <ruby>頑張<rt>がんば</rt></ruby>ってきてください！<br>*(Chúc chị cố lên!)* |
| Linh | ありがとう、<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Cảm ơn, chị đi đây.)* |

---

## Tình huống 11 — 茨城大学水戸キャンパス · 12:00, giờ giải lao giữa các môn

| Vai | Lời thoại |
|---|---|
| Sari | リンさん、<ruby>1<rt>いち</rt></ruby><ruby>限目<rt>げんめ</rt></ruby>どうでしたか？<br>*(Chị Linh, môn 1 thế nào?)* |
| Linh | <ruby>文字語彙<rt>もじごい</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でした。<ruby>漢字<rt>かんじ</rt></ruby>の<ruby>読<rt>よ</rt></ruby>みで<ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>くらい<ruby>迷<rt>まよ</rt></ruby>ったけど。<br>*(Chữ-từ vựng thì ổn. Đọc kanji em do dự khoảng 3 câu.)* |
| Sari | <ruby>私<rt>わたし</rt></ruby>は「<ruby>賢<rt>かしこ</rt></ruby>い」と「<ruby>賑<rt>にぎ</rt></ruby>やか」がわからなくて<ruby>適当<rt>てきとう</rt></ruby>に<ruby>選<rt>えら</rt></ruby>びました。<br>*(Em "kashikoi" với "nigiyaka" không biết, chọn bừa.)* |
| Linh | あ、「<ruby>賢<rt>かしこ</rt></ruby>い」は「<ruby>頭<rt>あたま</rt></ruby>がいい」、「<ruby>賑<rt>にぎ</rt></ruby>やか」は「<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて<ruby>楽<rt>たの</rt></ruby>しい」だよ。<br>*("Kashikoi" là "thông minh", "nigiyaka" là "đông người vui vẻ".)* |
| Sari | <ruby>覚<rt>おぼ</rt></ruby>えていたはずなのに<ruby>緊張<rt>きんちょう</rt></ruby>で<ruby>飛<rt>と</rt></ruby>びました。<br>*(Em nhớ rồi mà hồi hộp quên hết.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>もそうだった。これから<ruby>文法<rt>ぶんぽう</rt></ruby><ruby>読解<rt>どっかい</rt></ruby>と<ruby>聴解<rt>ちょうかい</rt></ruby>。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Em cũng vậy. Tiếp theo ngữ pháp-đọc hiểu và nghe. Cùng cố lên.)* |
| Sari | おにぎり<ruby>食<rt>た</rt></ruby>べました？<br>*(Ăn cơm nắm chưa?)* |
| Linh | デウィちゃんが<ruby>作<rt>つく</rt></ruby>ってくれたの。<ruby>後輩<rt>こうはい</rt></ruby><ruby>愛<rt>あい</rt></ruby><ruby>感<rt>かん</rt></ruby>じる。<br>*(Dewi làm cho. Cảm nhận tình của kohai.)* |
| Sari | いい<ruby>後輩<rt>こうはい</rt></ruby>ですね。<br>*(Kohai tốt nhỉ.)* |
| Linh | <ruby>来年<rt>らいねん</rt></ruby>はデウィちゃんがN<ruby>4<rt>よん</rt></ruby><ruby>受<rt>う</rt></ruby>かる<ruby>番<rt>ばん</rt></ruby>。<br>*(Năm sau đến lượt Dewi đỗ N4.)* |

---

## Tình huống 12 — 出口 · 17:00 sau khi thi xong

| Vai | Lời thoại |
|---|---|
| Linh | （<ruby>大<rt>おお</rt></ruby>きく<ruby>息<rt>いき</rt></ruby>を<ruby>吐<rt>は</rt></ruby>く）<ruby>終<rt>お</rt></ruby>わったぁ…<br>*(Thở dài. Xong rồi…)* |
| Tuấn | （<ruby>迎<rt>むか</rt></ruby>えに<ruby>来<rt>く</rt></ruby>る）リンちゃん、お<ruby>疲<rt>つか</rt></ruby>れさま！どうだった？<br>*(Đến đón. Linh, vất vả rồi! Sao rồi?)* |
| Linh | <ruby>聴解<rt>ちょうかい</rt></ruby>はだいぶできた<ruby>気<rt>き</rt></ruby>がする！<ruby>1.25<rt>いってんにご</rt></ruby><ruby>倍速<rt>ばいそく</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>効<rt>き</rt></ruby>きました。<br>*(Nghe em cảm thấy làm khá! Luyện 1.25x có hiệu quả.)* |
| Tuấn | おお、よかった！<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>だっけ？<br>*(Ồ tốt! Công bố kết quả cuối tháng 1 năm sau nhỉ?)* |
| Linh | はい、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>です。<br>*(Vâng, khoảng 25 tháng 1.)* |
| Tuấn | <ruby>今夜<rt>こんや</rt></ruby><ruby>居酒屋<rt>いざかや</rt></ruby><ruby>行<rt>い</rt></ruby>こう。<ruby>受験<rt>じゅけん</rt></ruby><ruby>仲間<rt>なかま</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby><ruby>誘<rt>さそ</rt></ruby>って。<br>*(Tối nay đi izakaya đi. Mời cả nhóm thi.)* |
| Linh | <ruby>嬉<rt>うれ</rt></ruby>しい！デウィちゃんとサリさんも？<br>*(Mừng quá! Cả Dewi và Sari nữa?)* |
| Tuấn | もちろん。お<ruby>祝<rt>いわ</rt></ruby>いは<ruby>結果<rt>けっか</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>なくやる！<br>*(Tất nhiên. Liên hoan không liên quan kết quả!)* |
| Linh | はい、<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(Vâng, em mong chờ.)* |

---

## Tình huống 13 — Phòng ký túc · 23:30, gọi điện về Đồng Tháp báo tin (cảnh tiếng Việt)

> Cảnh tiếng Việt — Linh gọi về sau khi thi xong và đi liên hoan về.

| Vai | Lời thoại |
|---|---|
| Linh | Alo bố, mẹ! Con đây. Con thi xong rồi! |
| Mẹ | Con gái! Sao rồi con? Mẹ chờ điện thoại từ chiều. |
| Linh | Mệt chứ mẹ. Mà *聴解* — phần nghe con thấy ổn. Anh *Tuấn sempai* gọi điện hỏi, con nói nghe ổn thì anh ấy mới yên tâm. |
| Bố | Mấy phần mạnh phần yếu thế nào? |
| Linh | *文字語彙* — chữ và từ vựng, em làm ổn. *文法読解* — ngữ pháp với đọc hiểu, em phân vân vài câu khó. *聴解* — nghe nhờ luyện 1.25x theo lời thầy *Phong* nên không thấy nhanh nữa. |
| Bố | Thầy Phong dạy con hồi trung tâm đúng không? Vẫn liên lạc à? |
| Linh | Vâng bố, tuần trước con video call hỏi thầy. Thầy bảo *N3 không phải đích cuối, chỉ là cột mốc*. Lời thầy giúp con bớt áp lực. |
| Mẹ | Bao giờ có kết quả con? |
| Linh | 25 tháng 1 năm sau mẹ ạ. |
| Mẹ | Mong cho con đỗ. À, em *Dewi* tốt với con quá. Mẹ nghe nó dậy 4 rưỡi sáng làm cơm nắm. |
| Linh | Vâng mẹ. Em ấy còn pha cả *misoshiru* — súp miso, lo cả chocolate cho con nữa. Tối nay anh *Tuấn* rủ cả nhóm đi izakaya — quán nhậu Nhật — liên hoan kết thúc kỳ thi. Vui lắm mẹ. |
| Bố | Đỗ hay không cũng tự hào nha con. Vừa làm việc vừa ôn thi N3 không dễ. |
| Linh | Vâng bố. À tháng sau là lễ *正月* — Tết Nhật, con xin được nghỉ 6 ngày từ 30/12 đến 4/1. Định đi *Tokyo* chơi với em Dewi. |
| Mẹ | Ừ, cho thoải mái đầu óc. Mẹ với bố ở nhà chờ tin con đỗ N3. |
| Linh | Vâng. Bố mẹ ngủ ngon. Con cũng đi ngủ đây, ngày mai 5 giờ con dậy đi làm rồi. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜たびに** — "Cứ 〜 là 〜" (lặp lại tự nhiên)
- **〜ばかりに** — "Chỉ vì 〜 mà kết quả xấu"
- **使役受身 〜させられる / 〜される** — "bị ép phải làm"
- **〜のコツを教える** — "mách mẹo về 〜"
- **〜倍速で聞く** — "nghe ở tốc độ 〜 lần"
- **〜してみる / 〜してみます** — "thử làm 〜"
- **お疲れさま！** — câu chào sau khi thi/làm việc

> Từ vựng & mẫu câu chương này: JLPT・N3・受験料・受験票・申し込み・聴解・読解・文字語彙・文法・模試・合格点・合格基準・選択肢・倍速・受身形・使役受身・夢中・熱心・必死・朝活・収益・収入・経費・賢い・賑やか・努力・本番 — bộ từ vựng cuộc sống học thi tại Nhật.

## Bí quyết chương

- **Đăng ký JLPT online tại jees-jlpt.jp**: cần email, ảnh chân dung, thẻ zairyuu. Đỗ thì xin công ty hỗ trợ một nửa lệ phí (nhiều 監理団体 có chính sách này).
- **Luyện 聴解 ở 1.25x tốc độ** — khi thi thật sẽ thấy chậm, dễ bắt keyword.
- **Đọc đáp án trước, khoanh keyword câu hỏi** — chiến thuật vàng phần nghe.
- **Tránh nhầm "たびに" vs "ばかりに"**: tabini = mỗi lần, bakarini = chỉ vì (xấu).
- **使役受身** trong tiếng Nhật **luôn mang sắc thái không tự nguyện** — dùng để than phiền nhẹ, không dùng với người trên.
- Khi 落ち込み (mất tinh thần), **nói với người xung quanh** — Dewi-kohai/Tuấn-sempai/親方 đều thành nguồn động lực.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 申し込み | もうしこみ | THÂN — | đăng ký, nộp đơn |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | lệ phí thi |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu dự thi |
| 会場 | かいじょう | HỘI TRƯỜNG | hội trường thi |
| 補助 | ほじょ | BỔ TRỢ | hỗ trợ (tài chính) |
| 半額 | はんがく | BÁN NGẠCH | nửa giá |
| 本格的 | ほんかくてき | BẢN CÁCH TÍCH | đúng nghĩa, nghiêm túc |
| 対策 | たいさく | ĐỐI SÁCH | luyện đề, đối phó |
| 苦手 | にがて | KHỔ THỦ | yếu, kém |
| 分野 | ぶんや | PHÂN DÃ | lĩnh vực |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 文字語彙 | もじごい | VĂN TỰ NGỮ VỰNG | chữ và từ vựng |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 模試 | もし | MÔ THÍ | thi thử |
| 音声 | おんせい | ÂM THANH | âm thanh, audio |
| 聞き流す | ききながす | VĂN LƯU | nghe trôi tai |
| 時間を測る | じかんをはかる | THỜI GIAN — TRẮC | bấm giờ |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | đáp án trắc nghiệm |
| 倍速 | ばいそく | BỘI TỐC | tốc độ x lần |
| 慣れ | なれ | QUÁN | quen, thành thạo |
| 受身形 | うけみけい | THỤ THÂN HÌNH | thể bị động |
| 使役受身 | しえきうけみ | SỬ DỊCH THỤ THÂN | bị động sai khiến |
| 残業 | ざんぎょう | TÀN NGHIỆP | tăng ca |
| 乗り遅れる | のりおくれる | THỪA TRỄ | lỡ tàu xe |
| 喧嘩 | けんか | HUYÊN HOA | cãi nhau |
| 余計 | よけい | DƯ KẾ | thừa, quá mức |
| 夢中 | むちゅう | MỘNG TRUNG | đắm chìm, mê |
| 熱心 | ねっしん | NHIỆT TÂM | tận tâm, nhiệt tình |
| 必死 | ひっし | TẤT TỬ | hết mình, sống còn |
| 没頭 | ぼっとう | MỘT ĐẦU | đắm mình |
| 朝活 | あさかつ | TRIÊU HOẠT | hoạt động sớm sáng |
| 集中 | しゅうちゅう | TẬP TRUNG | tập trung |
| 努力 | どりょく | NỖ LỰC | nỗ lực |
| 合格点 | ごうかくてん | HỢP CÁCH ĐIỂM | điểm đỗ |
| 合格基準 | ごうかくきじゅん | HỢP CÁCH CƠ CHUẨN | chuẩn đỗ |
| 満点 | まんてん | MÃN ĐIỂM | điểm tối đa |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng |
| 収益 | しゅうえき | THU ÍCH | lợi nhuận |
| 収入 | しゅうにゅう | THU NHẬP | thu nhập, tiền vào |
| 経費 | けいひ | KINH PHÍ | chi phí |
| 売上 | うりあげ | MÃI THƯỢNG | doanh thu |
| 賢い | かしこい | HIỀN | thông minh |
| 賑やか | にぎやか | NÁO | nhộn nhịp, đông vui |
| 持ち物 | もちもの | TRÌ VẬT | đồ mang theo |
| 鉛筆 | えんぴつ | DUYÊN BÚT | bút chì |
| 消しゴム | けしゴム | TIÊU — | gôm tẩy |
| 本番 | ほんばん | BẢN PHIÊN | thi thật, "show thật" |
| コツ | — | — | mẹo, bí quyết |
| 落ち込む | おちこむ | LẠC NHẬP | mất tinh thần |
| 発表 | はっぴょう | PHÁT BIỂU | công bố |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000009, 800000041, NULL, 'markdown_book', 'T9. Hỗ trợ thu hoạch lúa nông trại lân cận (近所の稲作農家の手伝い)', '# Sách thực tập sinh nông nghiệp năm 2 · T9. Hỗ trợ thu hoạch lúa nông trại lân cận (近所の稲作農家の手伝い)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, năm 2 Ibaraki). Học các mẫu hội thoại tiếng Nhật khi sang nông trại khác hỗ trợ thu hoạch: chào hỏi ngoài đơn vị tiếp nhận, hỏi quy trình コンバイン, báo cáo 親方 mới, xin phép nghỉ giải lao, mượn dụng cụ, ứng phó khi gặp mưa bất chợt.

---

## Bối cảnh

Tháng 9 năm 2026, đầu mùa thu hoạch lúa (<ruby>稲刈<rt>いねか</rt></ruby>り) ở vùng Ibaraki. Nông trại bác Yamada (lúa, gạo Koshihikari) thiếu người, nhờ 親方 Yamamoto bên trang trại rau cho mượn Linh 5 ngày. Linh quen rau cải, dưa leo nhưng lúa và máy gặt liên hợp (コンバイン) thì lần đầu. Chương này tập trung học chào hỏi sang đơn vị khác, hỏi quy trình mới, mượn dụng cụ, và 報連相 khi không phải sempai quen.

---

## Tình huống 1 — Trang trại rau Tanaka · 6:30, 親方 dặn dò trước khi đi

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>5日間<rt>いつかかん</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>田<rt>た</rt></ruby>んぼを<ruby>手伝<rt>てつだ</rt></ruby>ってください。<ruby>稲刈<rt>いねか</rt></ruby>りの<ruby>応援<rt>おうえん</rt></ruby>です。<br>*(Linh ơi, từ hôm nay 5 ngày, sang ruộng bác Yamada giúp nhé. Hỗ trợ gặt lúa đó.)* |
| Linh | はい、わかりました。でも<ruby>私<rt>わたし</rt></ruby>、<ruby>稲刈<rt>いねか</rt></ruby>りは<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Vâng ạ. Nhưng em chưa từng gặt lúa bao giờ. Liệu có ổn không ạ?)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>教<rt>おし</rt></ruby>えてくれます。わからないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>くこと。それから、ちゃんと<ruby>挨拶<rt>あいさつ</rt></ruby>してね。<ruby>田中<rt>たなか</rt></ruby>の<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>背負<rt>せお</rt></ruby>っているから。<br>*(Yên tâm. Bác Yamada sẽ dạy. Có gì không hiểu nhớ hỏi. Với lại nhớ chào hỏi đàng hoàng. Vì em đang mang danh nông trại Yamamoto đấy.)* |
| Linh | はい、しっかり<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng hết sức ạ.)* |
| Yamamoto | お<ruby>弁当<rt>べんとう</rt></ruby>は<ruby>持<rt>も</rt></ruby>った? <ruby>長靴<rt>ながぐつ</rt></ruby>と<ruby>軍手<rt>ぐんて</rt></ruby>もね。<br>*(Cơm hộp đem chưa? Ủng và găng vải cũng nhé.)* |
| Linh | はい、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>用意<rt>ようい</rt></ruby>しました。<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Vâng, em chuẩn bị đủ rồi. Em đi đây ạ.)* |

---

## Tình huống 2 — Trước ruộng nhà Yamada · 7:00, chào hỏi lần đầu

| Vai | Lời thoại |
|---|---|
| Linh | おはようございます。<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>から<ruby>来<rt>き</rt></ruby>ました、グエン・ティ・リンと<ruby>申<rt>もう</rt></ruby>します。<ruby>5日間<rt>いつかかん</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng ạ. Em từ nông trại Yamamoto sang, tên là Nguyễn Thị Linh ạ. 5 ngày tới mong bác chỉ bảo ạ.)* |
| Yamada | おお、リンさんね。<ruby>話<rt>はなし</rt></ruby>は<ruby>聞<rt>き</rt></ruby>いてるよ。<ruby>野菜<rt>やさい</rt></ruby>のほうで<ruby>2年目<rt>にねんめ</rt></ruby>だってね。<br>*(Ồ, em Linh đây à. Bác nghe nói rồi. Bên rau làm năm 2 rồi nhỉ.)* |
| Linh | はい、そうです。でも<ruby>稲<rt>いね</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてですので、いろいろ<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng ạ. Nhưng lúa thì lần đầu nên mong bác chỉ bảo nhiều ạ.)* |
| Yamada | うん、うん。<ruby>稲刈<rt>いねか</rt></ruby>りは<ruby>主<rt>おも</rt></ruby>にコンバインだから、<ruby>力仕事<rt>ちからしごと</rt></ruby>はそんなにない。リンさんには<ruby>袋詰<rt>ふくろづ</rt></ruby>めと<ruby>運搬<rt>うんぱん</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>ってもらうよ。<br>*(Ừ ừ. Gặt lúa chủ yếu là máy combine, không nặng nhọc lắm đâu. Em Linh thì giúp bác đóng bao và vận chuyển nhé.)* |
| Linh | はい、わかりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em hiểu rồi. Em sẽ cố gắng ạ.)* |
| Yamada | あ、そうそう。うちでは<ruby>朝<rt>あさ</rt></ruby>と<ruby>10時<rt>じゅうじ</rt></ruby>と<ruby>3時<rt>さんじ</rt></ruby>に<ruby>休憩<rt>きゅうけい</rt></ruby>するから。お<ruby>茶<rt>ちゃ</rt></ruby>と<ruby>漬物<rt>つけもの</rt></ruby>、<ruby>遠慮<rt>えんりょ</rt></ruby>しないでね。<br>*(À, à. Nhà bác nghỉ giải lao buổi sáng, 10 giờ và 3 giờ. Trà với dưa muối đừng ngại nhé.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn bác ạ.)* |

---

## Tình huống 3 — Cạnh ruộng · 7:30, được giới thiệu コンバイン

*Bác Yamada chỉ vào máy gặt liên hợp đang đậu trên bờ ruộng.*

| Vai | Lời thoại |
|---|---|
| Yamada | これがコンバイン。<ruby>稲<rt>いね</rt></ruby>を<ruby>刈<rt>か</rt></ruby>って、<ruby>脱穀<rt>だっこく</rt></ruby>して、<ruby>籾<rt>もみ</rt></ruby>を<ruby>袋<rt>ふくろ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れるところまで<ruby>一台<rt>いちだい</rt></ruby>でやる<ruby>機械<rt>きかい</rt></ruby>だ。<br>*(Đây là máy gặt liên hợp. Một máy làm hết: cắt lúa, tách hạt, đóng thóc vào bao.)* |
| Linh | すごいですね。<ruby>運転<rt>うんてん</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Hay quá ạ. Vận hành có khó không ạ?)* |
| Yamada | <ruby>慣<rt>な</rt></ruby>れれば<ruby>難<rt>むずか</rt></ruby>しくないけど、<ruby>免許<rt>めんきょ</rt></ruby>と<ruby>経験<rt>けいけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。リンさんは<ruby>運転<rt>うんてん</rt></ruby>はしなくていい。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づかないこと。<ruby>巻<rt>ま</rt></ruby>き<ruby>込<rt>こ</rt></ruby>まれたら<ruby>大変<rt>たいへん</rt></ruby>だ。<br>*(Quen rồi thì không khó, nhưng cần bằng và kinh nghiệm. Em Linh không cần lái. Tuyệt đối không lại gần. Bị cuốn vào là nguy hiểm đấy.)* |
| Linh | はい、<ruby>気<rt>き</rt></ruby>をつけます。コンバインが<ruby>動<rt>うご</rt></ruby>いている<ruby>間<rt>あいだ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をすればいいですか?<br>*(Vâng, em sẽ cẩn thận ạ. Trong lúc máy chạy thì em làm gì ạ?)* |
| Yamada | コンバインが<ruby>満杯<rt>まんぱい</rt></ruby>になったら<ruby>合図<rt>あいず</rt></ruby>するから、<ruby>軽<rt>けい</rt></ruby>トラまで<ruby>袋<rt>ふくろ</rt></ruby>を<ruby>運<rt>はこ</rt></ruby>んで<ruby>積<rt>つ</rt></ruby>む。<ruby>一袋<rt>ひとふくろ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby>キロぐらい、<ruby>腰<rt>こし</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Khi máy đầy bác sẽ ra hiệu, em mang bao ra xe tải nhỏ chất lên. Một bao khoảng 30 kg, để ý cái lưng nhé.)* |
| Linh | はい、<ruby>腰<rt>こし</rt></ruby>を<ruby>落<rt>お</rt></ruby>として<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げます。<br>*(Vâng, em sẽ hạ lưng xuống mới nâng lên ạ.)* |

---

## Tình huống 4 — Bên bờ ruộng · 9:00, vác bao thóc lần đầu

| Vai | Lời thoại |
|---|---|
| Yamada | (vẫy tay từ trên máy) リンさーん! <ruby>満杯<rt>まんぱい</rt></ruby>! <ruby>袋<rt>ふくろ</rt></ruby>、<ruby>運<rt>はこ</rt></ruby>んで!<br>*(Linh ơi! Đầy rồi! Mang bao đi!)* |
| Linh | はーい!<ruby>今<rt>いま</rt></ruby><ruby>行<rt>い</rt></ruby>きます!<br>*(Dạ! Em đến ngay đây ạ!)* |
| Linh | (nâng bao) ...<ruby>結構<rt>けっこう</rt></ruby><ruby>重<rt>おも</rt></ruby>い。<br>*(... Nặng phết.)* |
| Yamada | <ruby>無理<rt>むり</rt></ruby>しないで。<ruby>二人<rt>ふたり</rt></ruby>で<ruby>持<rt>も</rt></ruby>ってもいいから、<ruby>誠<rt>まこと</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んで。<br>*(Đừng cố sức. Hai người khiêng cũng được, gọi Makoto đến.)* |
| Linh | はい、すみません、<ruby>誠<rt>まこと</rt></ruby>さーん、<ruby>手伝<rt>てつだ</rt></ruby>ってもらえますか?<br>*(Vâng, xin lỗi, anh Makoto ơi, anh phụ em được không ạ?)* |
| Makoto | おう、いいよ。<ruby>一<rt>いち</rt></ruby>、<ruby>二<rt>に</rt></ruby>の<ruby>三<rt>さん</rt></ruby>で<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げよう。<br>*(Ờ, được. Đếm 1, 2, 3 cùng nâng nhé.)* |
| Linh | はい、<ruby>一<rt>いち</rt></ruby>、<ruby>二<rt>に</rt></ruby>...<ruby>三<rt>さん</rt></ruby>!<br>*(Vâng, một, hai... ba!)* |
| Makoto | リンさん、<ruby>腰<rt>こし</rt></ruby>じゃなくて<ruby>足<rt>あし</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>で<ruby>立<rt>た</rt></ruby>つんだよ。<br>*(Linh ơi, đứng lên bằng sức chân chứ không phải lưng đâu nha.)* |
| Linh | あ、はい。ありがとうございます、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(À vâng. Cảm ơn anh, em học được nhiều rồi ạ.)* |

---

## Tình huống 5 — Bờ ruộng · 10:00, giờ giải lao お茶

| Vai | Lời thoại |
|---|---|
| Bà Yamada | リンさん、お<ruby>茶<rt>ちゃ</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>よ。こっちで<ruby>座<rt>すわ</rt></ruby>って。<br>*(Linh ơi, đến giờ trà rồi. Sang đây ngồi đi.)* |
| Linh | はい、ありがとうございます。お<ruby>邪魔<rt>じゃま</rt></ruby>します。<br>*(Vâng, cảm ơn bác ạ. Em xin phép ngồi cùng ạ.)* |
| Bà Yamada | これ、うちで<ruby>漬<rt>つ</rt></ruby>けた<ruby>大根<rt>だいこん</rt></ruby>の<ruby>漬物<rt>つけもの</rt></ruby>。<ruby>食<rt>た</rt></ruby>べてみて。<br>*(Đây là củ cải muối nhà bác tự muối. Ăn thử đi.)* |
| Linh | いただきます。...<ruby>美味<rt>おい</rt></ruby>しい!<ruby>少<rt>すこ</rt></ruby>し<ruby>甘<rt>あま</rt></ruby>くて、<ruby>歯<rt>は</rt></ruby>ごたえもいいですね。<br>*(Em xin phép ăn ạ. ... Ngon quá! Hơi ngọt mà giòn nữa ạ.)* |
| Bà Yamada | ベトナムにも<ruby>漬物<rt>つけもの</rt></ruby>あるの?<br>*(Việt Nam có dưa muối không cháu?)* |
| Linh | はい、あります。<ruby>大根<rt>だいこん</rt></ruby>や<ruby>白菜<rt>はくさい</rt></ruby>を<ruby>塩<rt>しお</rt></ruby>と<ruby>酢<rt>す</rt></ruby>で<ruby>漬<rt>つ</rt></ruby>けます。「ドゥアムオイ」と<ruby>言<rt>い</rt></ruby>います。<br>*(Dạ có ạ. Bọn cháu muối củ cải và cải thảo bằng muối và giấm. Gọi là "dưa muối" ạ.)* |
| Bà Yamada | へえ、<ruby>似<rt>に</rt></ruby>てるね。<ruby>今度<rt>こんど</rt></ruby>、<ruby>作<rt>つく</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えて。<br>*(Ồ giống nhỉ. Lần sau dạy bác cách làm với.)* |
| Linh | はい、ぜひ。<br>*(Vâng, nhất định ạ.)* |

---

## Tình huống 6 — Ruộng · 11:30, hỏi không hiểu từ vựng

| Vai | Lời thoại |
|---|---|
| Yamada | リンさん、あっちの<ruby>稲<rt>いね</rt></ruby>は<ruby>倒伏<rt>とうふく</rt></ruby>しているから、コンバインで<ruby>刈<rt>か</rt></ruby>りにくい。<ruby>手<rt>て</rt></ruby>で<ruby>起<rt>お</rt></ruby>こしてくれる?<br>*(Linh ơi, lúa bên kia bị đổ rạp rồi, máy khó cắt. Em dựng lên bằng tay giúp được không?)* |
| Linh | すみません、「<ruby>倒伏<rt>とうふく</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi bác, "tousuke" là gì ạ?)* |
| Yamada | あ、<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>でごめんね。<ruby>稲<rt>いね</rt></ruby>が<ruby>風<rt>かぜ</rt></ruby>や<ruby>雨<rt>あめ</rt></ruby>で<ruby>倒<rt>たお</rt></ruby>れること。「<ruby>倒<rt>たお</rt></ruby>れている<ruby>稲<rt>いね</rt></ruby>」って<ruby>覚<rt>おぼ</rt></ruby>えていい。<br>*(À, từ chuyên môn xin lỗi nhé. Là lúa bị đổ vì gió hoặc mưa. Nhớ là "lúa bị đổ" cũng được.)* |
| Linh | わかりました。「<ruby>倒伏<rt>とうふく</rt></ruby>」=<ruby>倒<rt>たお</rt></ruby>れた<ruby>稲<rt>いね</rt></ruby>ですね。メモします。<br>*(Em hiểu rồi ạ. "Tousuke" = lúa bị đổ. Em ghi chú lại ạ.)* |
| Yamada | <ruby>偉<rt>えら</rt></ruby>いね、メモするんだ。<ruby>稲<rt>いね</rt></ruby>を<ruby>束<rt>たば</rt></ruby>ごとに<ruby>起<rt>お</rt></ruby>こして、<ruby>紐<rt>ひも</rt></ruby>で<ruby>軽<rt>かる</rt></ruby>く<ruby>結<rt>むす</rt></ruby>んでくれればいい。<br>*(Giỏi đấy, có ghi chú. Em dựng từng bụi lúa, lấy dây buộc nhẹ là được.)* |
| Linh | はい、やってみます。<br>*(Vâng, em làm thử ạ.)* |

---

## Tình huống 7 — Ruộng · 13:00, sau giờ cơm, mượn liềm

| Vai | Lời thoại |
|---|---|
| Linh | すみません、<ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>鎌<rt>かま</rt></ruby>をお<ruby>借<rt>か</rt></ruby>りしてもいいですか? <ruby>隅<rt>すみ</rt></ruby>の<ruby>稲<rt>いね</rt></ruby>はコンバインが<ruby>届<rt>とど</rt></ruby>かないので。<br>*(Xin phép, bác Yamada, em mượn cái liềm được không ạ? Lúa ở góc máy không tới được.)* |
| Yamada | お、<ruby>気<rt>き</rt></ruby>がつくね。これ、<ruby>使<rt>つか</rt></ruby>って。<ruby>刃<rt>は</rt></ruby>が<ruby>鋭<rt>するど</rt></ruby>いから<ruby>指<rt>ゆび</rt></ruby>を<ruby>切<rt>き</rt></ruby>らないように。<br>*(Ồ, để ý ghê. Đây, dùng đi. Lưỡi sắc lắm, coi chừng đứt tay.)* |
| Linh | はい、<ruby>気<rt>き</rt></ruby>をつけます。<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng em cẩn thận. Bác chỉ em cách dùng với ạ.)* |
| Yamada | <ruby>左手<rt>ひだりて</rt></ruby>で<ruby>稲<rt>いね</rt></ruby>の<ruby>束<rt>たば</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>って、<ruby>右手<rt>みぎて</rt></ruby>の<ruby>鎌<rt>かま</rt></ruby>で<ruby>根元<rt>ねもと</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>くように<ruby>切<rt>き</rt></ruby>る。<ruby>振<rt>ふ</rt></ruby>り<ruby>下<rt>お</rt></ruby>ろさない、<ruby>引<rt>ひ</rt></ruby>くんだよ。<br>*(Tay trái nắm bụi lúa, tay phải dùng liềm cắt phía gốc theo hướng kéo về. Không chém xuống, mà kéo.)* |
| Linh | はい、<ruby>引<rt>ひ</rt></ruby>くんですね。やってみます。...あ、できました!<br>*(Vâng, kéo về ạ. Em thử... À, được rồi ạ!)* |
| Yamada | うん、<ruby>上手<rt>じょうず</rt></ruby>。<ruby>束<rt>たば</rt></ruby>にして<ruby>横<rt>よこ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いておけば、あとで<ruby>脱穀<rt>だっこく</rt></ruby>するから。<br>*(Ừ, khéo đấy. Gom thành bó để bên cạnh, lát nữa tách hạt.)* |

---

## Tình huống 8 — Bờ ruộng · 14:30, mưa bất chợt

*Trời đang nắng đột nhiên kéo mây đen.*

| Vai | Lời thoại |
|---|---|
| Makoto | やばい、<ruby>雨雲<rt>あまぐも</rt></ruby>が<ruby>来<rt>き</rt></ruby>た! <ruby>山田<rt>やまだ</rt></ruby>さーん、<ruby>夕立<rt>ゆうだち</rt></ruby>です!<br>*(Toi rồi, mây mưa đến kìa! Bác Yamada ơi, mưa rào tới!)* |
| Yamada | <ruby>急<rt>いそ</rt></ruby>げ! <ruby>袋<rt>ふくろ</rt></ruby>を<ruby>軽<rt>けい</rt></ruby>トラに<ruby>積<rt>つ</rt></ruby>んで、ブルーシートをかけて!<br>*(Nhanh lên! Chất bao lên xe tải, phủ bạt xanh vào!)* |
| Linh | はい!<ruby>私<rt>わたし</rt></ruby>はどこから<ruby>運<rt>はこ</rt></ruby>びますか?<br>*(Vâng! Em vận chuyển từ đâu trước ạ?)* |
| Yamada | <ruby>手前<rt>てまえ</rt></ruby>の<ruby>10袋<rt>じゅっぷくろ</rt></ruby>から!<ruby>濡<rt>ぬ</rt></ruby>れたら<ruby>品質<rt>ひんしつ</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる!<br>*(10 bao gần nhất trước! Ướt là chất lượng tụt!)* |
| Linh | わかりました!<br>*(Em hiểu rồi ạ!)* |
| Makoto | リンさん、こっちもう<ruby>1袋<rt>ひとふくろ</rt></ruby>! いっしょに!<br>*(Linh, bên này thêm 1 bao nữa! Cùng nhau!)* |
| Linh | はい!<ruby>一<rt>いち</rt></ruby>、<ruby>二<rt>に</rt></ruby>、<ruby>三<rt>さん</rt></ruby>!<br>*(Vâng! Một, hai, ba!)* |
| Yamada | ナイス!ブルーシート、しっかり<ruby>結<rt>むす</rt></ruby>んで! <ruby>風<rt>かぜ</rt></ruby>で<ruby>飛<rt>と</rt></ruby>ばないように!<br>*(Tốt! Bạt xanh buộc chặt vào! Đừng để gió thổi bay!)* |

---

## Tình huống 9 — Trong kho sấy · 15:30, sau cơn mưa

| Vai | Lời thoại |
|---|---|
| Yamada | ふう、<ruby>助<rt>たす</rt></ruby>かった。みんなありがとう。リンさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>動<rt>うご</rt></ruby>きが<ruby>速<rt>はや</rt></ruby>かったね。<br>*(Hú, may quá. Cảm ơn mọi người. Linh thật sự nhanh nhẹn nhỉ.)* |
| Linh | いえいえ、まだまだです。<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Dạ không ạ, em còn kém lắm. Nhờ mọi người cả ạ.)* |
| Makoto | リンさん、<ruby>声<rt>こえ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいから<ruby>連携<rt>れんけい</rt></ruby>しやすかったよ。「はい!」って<ruby>返事<rt>へんじ</rt></ruby>がはっきりしてる。<br>*(Linh trả lời to nên dễ phối hợp lắm. "Hai!" rõ ràng.)* |
| Linh | ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby><ruby>農場<rt>のうじょう</rt></ruby>の<ruby>親方<rt>おやかた</rt></ruby>に「<ruby>返事<rt>へんじ</rt></ruby>はしっかり」っていつも<ruby>言<rt>い</rt></ruby>われています。<br>*(Dạ cảm ơn anh. 親方 nông trại Yamamoto lúc nào cũng nhắc "Trả lời rõ ràng vào".)* |
| Yamada | いい<ruby>親方<rt>おやかた</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わってるね。さあ、<ruby>乾燥機<rt>かんそうき</rt></ruby>に<ruby>籾<rt>もみ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れよう。リンさん、<ruby>見学<rt>けんがく</rt></ruby>していい?<br>*(Em được dạy bởi 親方 tốt đấy. Nào, cho thóc vào máy sấy thôi. Linh muốn xem không?)* |
| Linh | はい、ぜひ<ruby>見<rt>み</rt></ruby>たいです。<br>*(Dạ có, em rất muốn xem ạ.)* |

---

## Tình huống 10 — Buổi tối, gọi điện về cho 親方 Yamamoto

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>夜分<rt>やぶん</rt></ruby>すみません。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Bác Yamamoto, làm phiền bác buổi tối ạ. Em báo cáo hôm nay ạ.)* |
| Yamamoto | お<ruby>疲<rt>つか</rt></ruby>れさま、リンさん。どうだった?<br>*(Vất vả rồi Linh. Sao rồi?)* |
| Linh | <ruby>無事<rt>ぶじ</rt></ruby>に<ruby>1日目<rt>いちにちめ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。コンバインの<ruby>袋詰<rt>ふくろづ</rt></ruby>めと<ruby>運搬<rt>うんぱん</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>いました。<ruby>午後<rt>ごご</rt></ruby>、<ruby>夕立<rt>ゆうだち</rt></ruby>がありましたが、みんなで<ruby>急<rt>いそ</rt></ruby>いで<ruby>袋<rt>ふくろ</rt></ruby>をしまえました。<br>*(Ngày đầu kết thúc bình an ạ. Em phụ đóng bao và vận chuyển. Buổi chiều có mưa rào nhưng mọi người kịp dọn bao.)* |
| Yamamoto | よかった。けがはない?<br>*(Tốt rồi. Có bị thương không?)* |
| Linh | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>誠<rt>まこと</rt></ruby>さんに<ruby>袋<rt>ふくろ</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>わって、<ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めずに<ruby>済<rt>す</rt></ruby>みました。<br>*(Vâng, em ổn ạ. Anh Makoto chỉ em cách khiêng bao nên không bị đau lưng.)* |
| Yamamoto | それは<ruby>良<rt>よ</rt></ruby>かった。<ruby>明日<rt>あした</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ってね。お<ruby>休<rt>やす</rt></ruby>み。<br>*(Vậy là tốt. Mai cố gắng nhé. Ngủ ngon.)* |
| Linh | はい、お<ruby>休<rt>やす</rt></ruby>みなさい。<br>*(Vâng, chúc bác ngủ ngon ạ.)* |

---

## Tình huống 11 — Ruộng · Ngày 3, 8:30, hỏi về Koshihikari

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>山田<rt>やまだ</rt></ruby>さん、この<ruby>稲<rt>いね</rt></ruby>はコシヒカリですか?<br>*(Bác Yamada, lúa này là Koshihikari ạ?)* |
| Yamada | そう、よく<ruby>知<rt>し</rt></ruby>ってるね。<ruby>日本<rt>にほん</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>品種<rt>ひんしゅ</rt></ruby>だ。<ruby>粘<rt>ねば</rt></ruby>りと<ruby>甘<rt>あま</rt></ruby>みが<ruby>強<rt>つよ</rt></ruby>い。<br>*(Đúng rồi, em biết nhiều đấy. Giống nổi tiếng nhất Nhật Bản. Dẻo và ngọt.)* |
| Linh | ベトナムでも「コシヒカリ」、スーパーで<ruby>見<rt>み</rt></ruby>たことがあります。とても<ruby>高<rt>たか</rt></ruby>かったです。<br>*(Ở Việt Nam em cũng thấy "Koshihikari" trong siêu thị ạ. Đắt lắm ạ.)* |
| Yamada | <ruby>海外<rt>かいがい</rt></ruby>に<ruby>輸出<rt>ゆしゅつ</rt></ruby>するときは<ruby>高<rt>たか</rt></ruby>くなるね。うちのコシヒカリは<ruby>地元<rt>じもと</rt></ruby>のJAに<ruby>出荷<rt>しゅっか</rt></ruby>して、<ruby>一部<rt>いちぶ</rt></ruby>は<ruby>直売所<rt>ちょくばいじょ</rt></ruby>で<ruby>売<rt>う</rt></ruby>る。<br>*(Xuất khẩu thì đắt nhỉ. Koshihikari của bác bán cho JA địa phương, một phần bán ở cửa hàng trực tiếp.)* |
| Linh | <ruby>直売所<rt>ちょくばいじょ</rt></ruby>って、<ruby>農家<rt>のうか</rt></ruby>が<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>売<rt>う</rt></ruby>るお<ruby>店<rt>みせ</rt></ruby>ですか?<br>*(Cửa hàng trực tiếp là chỗ nông dân tự bán ạ?)* |
| Yamada | そう。<ruby>新鮮<rt>しんせん</rt></ruby>で<ruby>安<rt>やす</rt></ruby>い。お<ruby>客<rt>きゃく</rt></ruby>さんと<ruby>顔<rt>かお</rt></ruby>が<ruby>見<rt>み</rt></ruby>える<ruby>関係<rt>かんけい</rt></ruby>。<ruby>農家<rt>のうか</rt></ruby>にとって<ruby>大事<rt>だいじ</rt></ruby>な<ruby>場所<rt>ばしょ</rt></ruby>だ。<br>*(Đúng. Tươi và rẻ. Mối quan hệ thấy mặt khách. Quan trọng với nông dân lắm.)* |

---

## Tình huống 12 — Ruộng · Ngày 4, 11:00, xin nghỉ giữa giờ vì mệt

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>山田<rt>やまだ</rt></ruby>さん、すみません、ちょっとお<ruby>願<rt>ねが</rt></ruby>いがあります。<br>*(Bác Yamada, xin lỗi, em có việc nhờ ạ.)* |
| Yamada | どうしたの?<br>*(Sao thế?)* |
| Linh | <ruby>少<rt>すこ</rt></ruby>し<ruby>頭<rt>あたま</rt></ruby>がふらふらします。<ruby>10分<rt>じゅっぷん</rt></ruby>だけ<ruby>日陰<rt>ひかげ</rt></ruby>で<ruby>休<rt>やす</rt></ruby>んでもいいですか?<br>*(Em hơi choáng đầu ạ. Em xin nghỉ 10 phút trong bóng râm được không ạ?)* |
| Yamada | もちろん!むしろ<ruby>早<rt>はや</rt></ruby>く<ruby>言<rt>い</rt></ruby>ってくれてよかった。<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>をちゃんとして。<br>*(Tất nhiên rồi! Còn may là em nói sớm. Bổ sung nước cho đủ vào.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, cảm ơn bác ạ.)* |
| Yamada | <ruby>無理<rt>むり</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby><ruby>禁物<rt>きんもつ</rt></ruby>だ。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>になったら<ruby>大変<rt>たいへん</rt></ruby>。リンさんを<ruby>怪我<rt>けが</rt></ruby>させたら<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ない。<br>*(Tuyệt đối không được cố quá. Bị say nắng là rắc rối. Để Linh bị thương thì bác có lỗi với bác Yamamoto lắm.)* |
| Linh | ありがとうございます。<ruby>10分<rt>じゅっぷん</rt></ruby>で<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Cảm ơn bác. 10 phút em quay lại ạ.)* |

---

## Tình huống 13 — Ngày cuối, 16:00, cảm ơn và tạm biệt nhà Yamada

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>5日間<rt>いつかかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>稲<rt>いね</rt></ruby>のこと、たくさん<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(5 ngày qua em đã được giúp đỡ rất nhiều. Bác đã dạy em nhiều điều về lúa ạ.)* |
| Yamada | こちらこそ、リンさんがいてくれて<ruby>助<rt>たす</rt></ruby>かったよ。<ruby>真面目<rt>まじめ</rt></ruby>で<ruby>気<rt>き</rt></ruby>がきく。また<ruby>来年<rt>らいねん</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いしようかな。<br>*(Bác cũng vậy, có Linh giúp đỡ là may đấy. Chăm chỉ, ý tứ. Sang năm lại nhờ nữa nhé.)* |
| Bà Yamada | これ、お<ruby>米<rt>こめ</rt></ruby>とお<ruby>漬物<rt>つけもの</rt></ruby>。<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>って。<br>*(Đây, gạo với dưa muối. Cầm về đi.)* |
| Linh | こんなに...いいんですか? ありがとうございます。<br>*(Nhiều thế này... được không ạ? Cảm ơn bác.)* |
| Yamada | コシヒカリ、<ruby>新米<rt>しんまい</rt></ruby>だよ。<ruby>炊<rt>た</rt></ruby>きたては<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>美味<rt>おい</rt></ruby>しい。ベトナムの<ruby>友達<rt>ともだち</rt></ruby>にも<ruby>味<rt>あじ</rt></ruby>わってもらって。<br>*(Koshihikari, gạo mới đấy. Nấu mới ăn ngon thật đấy. Cho bạn Việt Nam thưởng thức luôn.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, chắc chắn ạ. Em cảm ơn bác rất nhiều. Em xin phép ạ.)* |

---

## Tình huống 14 — Ký túc, buổi tối, gọi điện về Đồng Tháp

> Cảnh tiếng Việt — Linh gọi video về cho mẹ.

| Vai | Lời thoại |
|---|---|
| Linh | A lô mẹ ơi, con đây. Tuần này con sang nông trại lúa hàng xóm phụ gặt 5 ngày nha mẹ. |
| Mẹ | Trời, gặt lúa hả con? Lúa bên Nhật nó khác lúa miền Tây mình không? |
| Linh | Khác lắm mẹ ơi. Họ có máy gặt liên hợp コンバイン to đùng, một cái máy gặt - tách hạt - đóng bao luôn. Con không phải lội bùn như mình nha. |
| Mẹ | Ủa rồi con làm gì? |
| Linh | Con khiêng bao thóc 30 ký, chở ra xe tải nhỏ thôi. Có anh đồng nghiệp người Nhật tên Makoto chỉ con cách nâng bằng chân chứ không phải lưng, đỡ đau hẳn. |
| Mẹ | Có biết cẩn thận là tốt. Mà sao tự dưng sang chỗ người ta? |
| Linh | Bác Yamada bên ruộng lúa thiếu người, 親方 Yamamoto cho con sang giúp. Họ trả tiền thêm cho 親方 con cũng được. Bác Yamada còn cho con bao gạo Koshihikari mới gặt với hũ dưa muối đem về kìa mẹ. |
| Mẹ | Trời ơi người Nhật tử tế ghê. Con nhớ gửi lời cảm ơn bác cẩn thận nha. |
| Linh | Dạ con sang biếu hộp bánh đậu xanh trước rồi. Mẹ yên tâm, con học được nhiều cái mới — sang trang trại khác phải chào hỏi trước, mang danh 親方 của mình, làm gì cũng phải chỉn chu hơn. |
| Mẹ | Vậy là con trưởng thành rồi đó. Giữ sức khỏe, mẹ thương. |
| Linh | Dạ con thương mẹ. Cuối tuần con gọi tiếp. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜から<ruby>来<rt>き</rt></ruby>ました、〜と<ruby>申<rt>もう</rt></ruby>します** — Tôi đến từ ~, tên là ~ (chào hỏi lần đầu sang nơi khác)
- **〜は<ruby>初<rt>はじ</rt></ruby>めてですので、<ruby>教<rt>おし</rt></ruby>えてください** — Lần đầu làm ~ nên xin chỉ bảo
- **「〜」というのは<ruby>何<rt>なん</rt></ruby>ですか?** — "~" là gì ạ? (hỏi từ chuyên môn)
- **〜を<ruby>借<rt>か</rt></ruby>りてもいいですか?** — Em mượn ~ được không ạ?
- **<ruby>10分<rt>じゅっぷん</rt></ruby>だけ<ruby>休<rt>やす</rt></ruby>んでもいいですか?** — Em nghỉ 10 phút có được không ạ?
- **<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です** — Báo cáo hôm nay ạ (báo cáo 親方 cuối ngày)
- **お<ruby>世話<rt>せわ</rt></ruby>になりました** — Cảm ơn đã giúp đỡ trong thời gian qua

> Từ vựng & mẫu câu chương này: <ruby>稲刈<rt>いねか</rt></ruby>り・コンバイン・<ruby>籾<rt>もみ</rt></ruby>・<ruby>袋詰<rt>ふくろづ</rt></ruby>め・<ruby>運搬<rt>うんぱん</rt></ruby>・<ruby>倒伏<rt>とうふく</rt></ruby>・<ruby>鎌<rt>かま</rt></ruby>・<ruby>脱穀<rt>だっこく</rt></ruby>・<ruby>夕立<rt>ゆうだち</rt></ruby>・<ruby>軽<rt>けい</rt></ruby>トラ・ブルーシート・<ruby>乾燥機<rt>かんそうき</rt></ruby>・コシヒカリ・<ruby>新米<rt>しんまい</rt></ruby>・<ruby>直売所<rt>ちょくばいじょ</rt></ruby>・<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>・<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>・<ruby>応援<rt>おうえん</rt></ruby>.

---

## Bí quyết chương

- **Mang danh 親方 mình** — Sang đơn vị khác, mọi lỗi của mình sẽ phản chiếu lên 親方 và đoàn thể tiếp nhận. Câu chào đầu tiên phải nhắc rõ "Tôi từ trang trại ~ tới".
- **Hỏi từ chuyên môn ngay** — Như「<ruby>倒伏<rt>とうふく</rt></ruby>」là từ ngành lúa, không có trong sách N3. Cứ hỏi và ghi chú, người Nhật nông thôn thường tự thấy có lỗi vì dùng từ khó.
- **Khiêng bao 30kg dùng chân** — Đặc thù bao thóc Nhật. Hạ thấp người, nâng bằng đùi và mông, không cong lưng. Hỏng lưng là hỏng nghề.
- **Mưa rào (<ruby>夕立<rt>ゆうだち</rt></ruby>) mùa thu Kanto** — Vùng Ibaraki tháng 9 hay có mưa rào chiều. Thóc ướt là tụt giá. Khi có hiệu lệnh khẩn, "Hai!" thật to và làm theo, đừng hỏi nhiều.
- **「<ruby>無理<rt>むり</rt></ruby>は<ruby>禁物<rt>きんもつ</rt></ruby>」** — Văn hoá nông thôn coi trọng an toàn hơn năng suất 1 ngày. Choáng đầu, nóng quá phải xin nghỉ ngay. 親方 sợ nhất là TTS bị say nắng (<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>).
- **<ruby>新米<rt>しんまい</rt></ruby> là quà quý** — Bao gạo mới Koshihikari ngày cuối là cảm ơn cao nhất từ nông dân lúa. Nhận hai tay, cúi đầu, không từ chối.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 稲刈り | いねかり | ĐẠO XẢO | gặt lúa |
| 田んぼ | たんぼ | ĐIỀN | ruộng lúa |
| 応援 | おうえん | ỨNG VIỆN | hỗ trợ, chi viện |
| 背負う | せおう | BỐI PHỤ | mang vác, gánh trách nhiệm |
| 長靴 | ながぐつ | TRƯỜNG NGOA | ủng cao su |
| 軍手 | ぐんて | QUÂN THỦ | găng tay vải |
| コンバイン | — | — | máy gặt liên hợp |
| 脱穀 | だっこく | THOÁT CỐC | tách hạt khỏi bông lúa |
| 籾 | もみ | NHỊ | thóc (lúa chưa xay) |
| 袋詰め | ふくろづめ | ĐẠI TIẾT | đóng vào bao |
| 運搬 | うんぱん | VẬN BAN | vận chuyển |
| 巻き込む | まきこむ | QUYỂN VÀO | cuốn vào, kéo vào |
| 満杯 | まんぱい | MÃN BÔI | đầy ắp |
| 合図 | あいず | HỢP ĐỒ | tín hiệu, ra hiệu |
| 軽トラ | けいとら | KHINH — | xe tải nhỏ (kei-truck) |
| 持ち上げる | もちあげる | TRÌ THƯỢNG | nâng lên |
| 漬物 | つけもの | TÝ VẬT | dưa muối |
| 大根 | だいこん | ĐẠI CĂN | củ cải trắng |
| 歯ごたえ | はごたえ | XỈ — | độ giòn (khi nhai) |
| 倒伏 | とうふく | ĐẢO PHỤC | (lúa) bị đổ rạp |
| 束 | たば | THÚC | bó (lúa) |
| 紐 | ひも | NỮU | dây buộc |
| 鎌 | かま | LIÊM | liềm |
| 刃 | は | NHẪN | lưỡi (dao, liềm) |
| 鋭い | するどい | DUỆ | sắc nhọn |
| 根元 | ねもと | CĂN NGUYÊN | gốc (cây, lúa) |
| 振り下ろす | ふりおろす | CHẤN HẠ | chém xuống |
| 雨雲 | あまぐも | VŨ VÂN | mây mưa |
| 夕立 | ゆうだち | TỊCH LẬP | mưa rào chiều |
| ブルーシート | — | — | bạt nhựa xanh |
| 品質 | ひんしつ | PHẨM CHẤT | chất lượng |
| 乾燥機 | かんそうき | CAN TÁO CƠ | máy sấy |
| 連携 | れんけい | LIÊN HUỀ | phối hợp |
| 返事 | へんじ | PHẢN SỰ | trả lời, đáp lại |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 無事 | ぶじ | VÔ SỰ | bình an, không sự cố |
| 痛める | いためる | THỐNG | làm đau, làm tổn thương |
| コシヒカリ | — | — | gạo Koshihikari |
| 品種 | ひんしゅ | PHẨM CHỦNG | giống (lúa, cây) |
| 粘り | ねばり | NIÊM | độ dẻo |
| 輸出 | ゆしゅつ | DU XUẤT | xuất khẩu |
| 直売所 | ちょくばいじょ | TRỰC MẠI SỞ | cửa hàng nông dân bán trực tiếp |
| 新鮮 | しんせん | TÂN TIÊN | tươi |
| 水分補給 | すいぶんほきゅう | THUỶ PHẦN BỔ CẤP | bổ sung nước |
| 熱中症 | ねっちゅうしょう | NHIỆT TRUNG CHỨNG | say nắng |
| 禁物 | きんもつ | CẤM VẬT | điều cấm kỵ |
| 怪我 | けが | QUÁI NGÃ | thương tích |
| 真面目 | まじめ | CHÂN DIỆN MỤC | nghiêm túc, chăm chỉ |
| 気がきく | きがきく | KHÍ — | ý tứ, biết để ý |
| 新米 | しんまい | TÂN MỄ | gạo mới |
| 炊きたて | たきたて | XUÝ — | vừa nấu xong |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000010, 800000041, NULL, 'markdown_book', 'T10. Học lái máy cày & an toàn lao động (トラクター講習と安全教育)', '# Sách thực tập sinh nông nghiệp năm 2 · T10. Học lái máy cày & an toàn lao động (トラクター講習と安全教育)

> **Mục tiêu nhân vật:** Linh (23 tuổi, Đồng Tháp, năm 2 Ibaraki). Học các mẫu hội thoại tiếng Nhật khi tham gia khoá đào tạo trong nông trại: hiểu hướng dẫn an toàn lao động (<ruby>安全衛生<rt>あんぜんえいせい</rt></ruby>), hỏi trước khi vận hành, ký 同意書, ứng phó tình huống KYT (危険予知), báo cáo sự cố nhỏ, học bằng <ruby>大型特殊<rt>おおがたとくしゅ</rt></ruby>.

---

## Bối cảnh

Tháng 10 năm 2026. Sau vụ thu hoạch lúa, nông trại Yamamoto mở khoá tập huấn vận hành máy cày (トラクター) cho TTS năm 2. Linh chưa được lái thật (cần bằng <ruby>大型特殊<rt>おおがたとくしゅ</rt></ruby>), nhưng sẽ học lý thuyết an toàn, ngồi xem 親方 vận hành, và tập kiểm tra trước khi xuất xe (<ruby>始業<rt>しぎょう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>). Chương này tập trung các mẫu câu báo cáo trước/sau ca, KYT, xác nhận hiểu hướng dẫn an toàn, mượn dụng cụ.

---

## Tình huống 1 — Nhà kho · 8:00, mở đầu khoá tập huấn

| Vai | Lời thoại |
|---|---|
| Yamamoto | おはようございます。<ruby>今日<rt>きょう</rt></ruby>から<ruby>3日間<rt>みっかかん</rt></ruby>、トラクターの<ruby>安全教育<rt>あんぜんきょういく</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。<ruby>2年目<rt>にねんめ</rt></ruby>の<ruby>実習生<rt>じっしゅうせい</rt></ruby>には<ruby>必修<rt>ひっしゅう</rt></ruby>です。<br>*(Chào buổi sáng. Từ hôm nay 3 ngày, bác tổ chức tập huấn an toàn máy cày. TTS năm 2 bắt buộc tham gia.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong bác chỉ bảo ạ.)* |
| Yamamoto | まず<ruby>大事<rt>だいじ</rt></ruby>なのは、<ruby>運転<rt>うんてん</rt></ruby>するには<ruby>大型特殊<rt>おおがたとくしゅ</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>か<ruby>農耕車<rt>のうこうしゃ</rt></ruby><ruby>限定<rt>げんてい</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Trước tiên quan trọng nhất, để lái cần bằng "đại hình đặc thù" hoặc bằng giới hạn xe nông nghiệp.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>はまだ<ruby>免許<rt>めんきょ</rt></ruby>がありません。<ruby>運転<rt>うんてん</rt></ruby>できないということですか?<br>*(Em chưa có bằng. Tức là em không lái được phải không ạ?)* |
| Yamamoto | そうです。<ruby>今回<rt>こんかい</rt></ruby>は<ruby>座学<rt>ざがく</rt></ruby>と<ruby>点検<rt>てんけん</rt></ruby>と<ruby>助手席<rt>じょしゅせき</rt></ruby><ruby>同乗<rt>どうじょう</rt></ruby>まで。<ruby>来年<rt>らいねん</rt></ruby>、<ruby>免許<rt>めんきょ</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>支援<rt>しえん</rt></ruby>もします。<br>*(Đúng vậy. Lần này chỉ học lý thuyết, kiểm tra xe và ngồi cạnh ghế phụ. Sang năm bác sẽ hỗ trợ thi bằng.)* |
| Linh | はい、ぜひ<ruby>取<rt>と</rt></ruby>りたいです。<br>*(Vâng, em rất muốn lấy bằng ạ.)* |

---

## Tình huống 2 — Phòng họp nhỏ · 8:30, lý thuyết tai nạn máy cày

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>農作業<rt>のうさぎょう</rt></ruby>の<ruby>死亡事故<rt>しぼうじこ</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>多<rt>おお</rt></ruby>いのは、トラクターの<ruby>転倒<rt>てんとう</rt></ruby>と<ruby>転落<rt>てんらく</rt></ruby>です。<br>*(Tai nạn chết người trong nông nghiệp nhiều nhất là máy cày bị lật và rơi.)* |
| Linh | え、そんなに<ruby>多<rt>おお</rt></ruby>いんですか?<br>*(Ơ, nhiều đến vậy ạ?)* |
| Yamamoto | はい。<ruby>毎年<rt>まいとし</rt></ruby><ruby>全国<rt>ぜんこく</rt></ruby>で<ruby>約<rt>やく</rt></ruby><ruby>100人<rt>ひゃくにん</rt></ruby>が<ruby>亡<rt>な</rt></ruby>くなります。<ruby>多<rt>おお</rt></ruby>くは<ruby>高齢<rt>こうれい</rt></ruby>の<ruby>農家<rt>のうか</rt></ruby>と<ruby>畔<rt>あぜ</rt></ruby>からの<ruby>転落<rt>てんらく</rt></ruby>。<br>*(Vâng. Mỗi năm cả nước khoảng 100 người chết. Phần lớn là nông dân lớn tuổi và rơi từ bờ ruộng.)* |
| Linh | <ruby>怖<rt>こわ</rt></ruby>いですね。<ruby>防<rt>ふせ</rt></ruby>ぐ<ruby>方法<rt>ほうほう</rt></ruby>はありますか?<br>*(Sợ thật ạ. Có cách phòng tránh không ạ?)* |
| Yamamoto | ありますよ。<ruby>3<rt>みっ</rt></ruby>つだけ<ruby>覚<rt>おぼ</rt></ruby>えて。<ruby>一<rt>ひと</rt></ruby>つ、シートベルトと<ruby>安全<rt>あんぜん</rt></ruby>フレーム。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>畔<rt>あぜ</rt></ruby>に<ruby>斜<rt>なな</rt></ruby>めに<ruby>進入<rt>しんにゅう</rt></ruby>しない。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>一人<rt>ひとり</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>避<rt>さ</rt></ruby>ける。<br>*(Có chứ. Nhớ 3 điều. Một, thắt dây và khung an toàn. Hai, không đi chéo qua bờ ruộng. Ba, tránh làm việc một mình.)* |
| Linh | メモします。シートベルト、<ruby>斜<rt>なな</rt></ruby>めに<ruby>進入<rt>しんにゅう</rt></ruby>しない、<ruby>一人<rt>ひとり</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>避<rt>さ</rt></ruby>ける。<br>*(Em ghi chú. Thắt dây, không đi chéo, tránh làm một mình.)* |

---

## Tình huống 3 — Nhà kho · 9:30, đứng cạnh máy cày Kubota

| Vai | Lời thoại |
|---|---|
| Yamamoto | これがうちのトラクター、クボタの<ruby>30馬力<rt>さんじゅうばりき</rt></ruby>。<ruby>後<rt>うし</rt></ruby>ろにロータリーをつけて<ruby>耕<rt>たがや</rt></ruby>します。<br>*(Đây là máy cày nhà bác, Kubota 30 mã lực. Phía sau gắn lưỡi xới đất.)* |
| Linh | ロータリーというのは、<ruby>土<rt>つち</rt></ruby>を<ruby>耕<rt>たがや</rt></ruby>す<ruby>刃<rt>は</rt></ruby>ですか?<br>*(Rotary là lưỡi cày xới đất ạ?)* |
| Yamamoto | そう、<ruby>回転<rt>かいてん</rt></ruby>する<ruby>爪<rt>つめ</rt></ruby>で<ruby>土<rt>つち</rt></ruby>を<ruby>砕<rt>くだ</rt></ruby>く。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>動<rt>うご</rt></ruby>いている<ruby>時<rt>とき</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づかないこと。<ruby>巻<rt>ま</rt></ruby>き<ruby>込<rt>こ</rt></ruby>まれたら<ruby>足<rt>あし</rt></ruby>がなくなる。<br>*(Đúng. Móng quay đập vụn đất. Tuyệt đối không lại gần khi nó quay. Bị cuốn vào là mất chân.)* |
| Linh | はい、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>近<rt>ちか</rt></ruby>づきません。<br>*(Vâng, em tuyệt đối không lại gần ạ.)* |
| Yamamoto | あとPTOシャフト。これも<ruby>回転<rt>かいてん</rt></ruby><ruby>軸<rt>じく</rt></ruby>で、<ruby>服<rt>ふく</rt></ruby>や<ruby>髪<rt>かみ</rt></ruby>が<ruby>巻<rt>ま</rt></ruby>き<ruby>込<rt>こ</rt></ruby>まれる<ruby>事故<rt>じこ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<ruby>長<rt>なが</rt></ruby>い<ruby>服<rt>ふく</rt></ruby>、タオル、<ruby>厳禁<rt>げんきん</rt></ruby>。<br>*(Còn trục PTO. Cũng là trục quay, hay có tai nạn quần áo và tóc bị cuốn. Áo dài, khăn — cấm tuyệt đối.)* |
| Linh | わかりました。<ruby>髪<rt>かみ</rt></ruby>は<ruby>結<rt>むす</rt></ruby>びます。<br>*(Em hiểu. Tóc em sẽ buộc lại ạ.)* |

---

## Tình huống 4 — Cạnh máy cày · 10:30, học 始業点検

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>毎朝<rt>まいあさ</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>始業<rt>しぎょう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>をします。チェックリストを<ruby>渡<rt>わた</rt></ruby>すから、<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Mỗi sáng phải kiểm tra trước khi vận hành. Bác đưa danh sách kiểm, em check từng mục.)* |
| Linh | はい。エンジンオイル、<ruby>冷却水<rt>れいきゃくすい</rt></ruby>、<ruby>燃料<rt>ねんりょう</rt></ruby>、タイヤ<ruby>空気圧<rt>くうきあつ</rt></ruby>...<br>*(Vâng. Dầu máy, nước làm mát, nhiên liệu, áp suất lốp...)* |
| Yamamoto | そう、よく<ruby>読<rt>よ</rt></ruby>めるね。オイルを<ruby>見<rt>み</rt></ruby>てごらん。レベルゲージを<ruby>抜<rt>ぬ</rt></ruby>いて、いったん<ruby>拭<rt>ふ</rt></ruby>いて、もう<ruby>一度<rt>いちど</rt></ruby><ruby>差<rt>さ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Ừ, đọc giỏi đấy. Xem dầu thử. Rút que đo, lau, cắm lại lần nữa, rồi kiểm.)* |
| Linh | (làm theo) ...<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>の<ruby>線<rt>せん</rt></ruby>と<ruby>上<rt>うえ</rt></ruby>の<ruby>線<rt>せん</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>です。<br>*(... Ở giữa vạch giữa và vạch trên ạ.)* |
| Yamamoto | バッチリ。<ruby>適正<rt>てきせい</rt></ruby>レベル。リンさん、メカに<ruby>強<rt>つよ</rt></ruby>いね。<br>*(Chuẩn. Mức ổn. Linh giỏi cơ khí đấy.)* |
| Linh | ありがとうございます。<ruby>父<rt>ちち</rt></ruby>はベトナムでバイクの<ruby>修理<rt>しゅうり</rt></ruby>をしているので、<ruby>少<rt>すこ</rt></ruby>し<ruby>慣<rt>な</rt></ruby>れています。<br>*(Cảm ơn bác. Bố em sửa xe máy ở Việt Nam nên em quen sơ sơ ạ.)* |
| Yamamoto | へえ、それは<ruby>強<rt>つよ</rt></ruby>みだ。<ruby>将来<rt>しょうらい</rt></ruby><ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つよ。<br>*(Ồ, là điểm mạnh đấy. Sau này sẽ có ích.)* |

---

## Tình huống 5 — Phòng họp · 13:00, KYT (危険予知トレーニング)

*Bác Yamamoto treo tranh: cảnh máy cày trên bờ ruộng nghiêng, có người đứng phía sau.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | この<ruby>絵<rt>え</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、どんな<ruby>危険<rt>きけん</rt></ruby>があると<ruby>思<rt>おも</rt></ruby>いますか? これがKYT、<ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby><ruby>訓練<rt>くんれん</rt></ruby>です。<br>*(Nhìn bức tranh này, em nghĩ có nguy hiểm gì? Đây là KYT, huấn luyện dự đoán nguy hiểm.)* |
| Linh | えーっと、まず<ruby>畔<rt>あぜ</rt></ruby>が<ruby>傾<rt>かたむ</rt></ruby>いていますので、トラクターが<ruby>転倒<rt>てんとう</rt></ruby>する<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Ờm, bờ ruộng đang nghiêng nên có khả năng máy cày bị lật ạ.)* |
| Yamamoto | いいね、<ruby>1番<rt>いちばん</rt></ruby>。ほかには?<br>*(Hay đấy, ý 1. Còn gì nữa?)* |
| Linh | <ruby>後<rt>うし</rt></ruby>ろに<ruby>人<rt>ひと</rt></ruby>が<ruby>立<rt>た</rt></ruby>っているので、バックしたら<ruby>轢<rt>ひ</rt></ruby>く<ruby>危険<rt>きけん</rt></ruby>があります。<br>*(Có người đứng phía sau nên nếu lùi thì có nguy cơ cán phải ạ.)* |
| Yamamoto | そう! トラクターは<ruby>後方<rt>こうほう</rt></ruby><ruby>視界<rt>しかい</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>い。バック<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず「<ruby>後<rt>うし</rt></ruby>ろよし!」と<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す。<br>*(Đúng! Máy cày tầm nhìn sau kém. Trước khi lùi luôn nói lớn "Sau OK!".)* |
| Linh | <ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>呼称<rt>こしょう</rt></ruby>ですね、<ruby>工場<rt>こうじょう</rt></ruby>でやるみたいに。<br>*(Là chỉ tay xướng tên ạ, giống như trong nhà máy ấy.)* |
| Yamamoto | そう。<ruby>農業<rt>のうぎょう</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じ。<ruby>声<rt>こえ</rt></ruby>と<ruby>指<rt>ゆび</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>すると<ruby>事故<rt>じこ</rt></ruby>が<ruby>10分<rt>じゅっぷん</rt></ruby>の<ruby>1<rt>いち</rt></ruby>になる。<br>*(Đúng. Nông nghiệp cũng vậy. Xác nhận bằng giọng và ngón tay thì tai nạn giảm 1/10.)* |

---

## Tình huống 6 — Sân kho · 14:00, ngồi ghế phụ lần đầu

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>助手席<rt>じょしゅせき</rt></ruby>に<ruby>乗<rt>の</rt></ruby>って。<ruby>同乗<rt>どうじょう</rt></ruby>は<ruby>本来<rt>ほんらい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>だけど、<ruby>研修目的<rt>けんしゅうもくてき</rt></ruby>で<ruby>特別<rt>とくべつ</rt></ruby>に<ruby>許可<rt>きょか</rt></ruby>。<br>*(Linh lên ghế phụ đi. Đi chung vốn cấm, nhưng vì mục đích đào tạo nên đặc cách.)* |
| Linh | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。シートベルトを<ruby>締<rt>し</rt></ruby>めます。<br>*(Vâng, em xin phép. Em thắt dây ạ.)* |
| Yamamoto | エンジンをかける<ruby>前<rt>まえ</rt></ruby>に、ギアがニュートラルか<ruby>確認<rt>かくにん</rt></ruby>。「ニュートラルよし!」<br>*(Trước khi nổ máy, kiểm tra số ở mo. "Mo OK!")* |
| Linh | ニュートラルよし!<br>*(Mo OK ạ!)* |
| Yamamoto | <ruby>周囲<rt>しゅうい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、「<ruby>前<rt>まえ</rt></ruby>よし!<ruby>後<rt>うし</rt></ruby>ろよし!」<br>*(Quan sát xung quanh, "Trước OK! Sau OK!")* |
| Linh | <ruby>前<rt>まえ</rt></ruby>よし!<ruby>後<rt>うし</rt></ruby>ろよし!<br>*(Trước OK! Sau OK ạ!)* |
| Yamamoto | エンジン<ruby>始動<rt>しどう</rt></ruby>! どう、<ruby>振動<rt>しんどう</rt></ruby>すごい?<br>*(Nổ máy! Sao, rung dữ không?)* |
| Linh | はい、おしりまでブルブルします。<br>*(Vâng, rung tới mông luôn ạ.)* |
| Yamamoto | はは、これに<ruby>慣<rt>な</rt></ruby>れる<ruby>必要<rt>ひつよう</rt></ruby>がある。ゆっくり<ruby>前進<rt>ぜんしん</rt></ruby>するよ、<ruby>掴<rt>つか</rt></ruby>まって。<br>*(Hà hà, phải quen cái này. Bác tiến chậm nhé, bám chắc vào.)* |

---

## Tình huống 7 — Ruộng khô · 14:30, học quan sát từ ghế phụ

| Vai | Lời thoại |
|---|---|
| Yamamoto | この<ruby>畔<rt>あぜ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>るとき、どう<ruby>進入<rt>しんにゅう</rt></ruby>すると<ruby>思<rt>おも</rt></ruby>う?<br>*(Em nghĩ qua bờ ruộng này thì đi vào kiểu gì?)* |
| Linh | さっきの<ruby>話<rt>はなし</rt></ruby>では...<ruby>斜<rt>なな</rt></ruby>めじゃなくて、<ruby>真<rt>ま</rt></ruby>っ<ruby>直<rt>す</rt></ruby>ぐ<ruby>直角<rt>ちょっかく</rt></ruby>で<ruby>進入<rt>しんにゅう</rt></ruby>?<br>*(Lúc nãy bác nói... không đi chéo, mà đi thẳng vuông góc ạ?)* |
| Yamamoto | <ruby>正解<rt>せいかい</rt></ruby>! <ruby>斜<rt>なな</rt></ruby>めだと<ruby>片<rt>かた</rt></ruby><ruby>輪<rt>わ</rt></ruby>だけ<ruby>畔<rt>あぜ</rt></ruby>に<ruby>乗<rt>の</rt></ruby>ってバランスを<ruby>崩<rt>くず</rt></ruby>す。<ruby>真<rt>ま</rt></ruby>っ<ruby>直<rt>す</rt></ruby>ぐなら<ruby>両<rt>りょう</rt></ruby><ruby>輪<rt>わ</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がる。<br>*(Đúng! Đi chéo thì một bánh lên bờ, mất cân bằng. Đi thẳng thì cả hai bánh lên cùng lúc.)* |
| Linh | なるほど。<ruby>速度<rt>そくど</rt></ruby>は?<br>*(Ra vậy. Còn tốc độ ạ?)* |
| Yamamoto | <ruby>歩<rt>ある</rt></ruby>くぐらいの<ruby>速度<rt>そくど</rt></ruby>、<ruby>時速<rt>じそく</rt></ruby><ruby>3<rt>さん</rt></ruby>キロ<ruby>以下<rt>いか</rt></ruby>。<ruby>急<rt>きゅう</rt></ruby>ハンドル、<ruby>急<rt>きゅう</rt></ruby>ブレーキ、<ruby>絶対<rt>ぜったい</rt></ruby>ダメ。<br>*(Tốc độ đi bộ, dưới 3km/h. Lái gấp, phanh gấp tuyệt đối không.)* |
| Linh | <ruby>覚<rt>おぼ</rt></ruby>えました。<ruby>真<rt>ま</rt></ruby>っ<ruby>直<rt>す</rt></ruby>ぐ、ゆっくり、<ruby>急<rt>きゅう</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>なし。<br>*(Em nhớ rồi. Thẳng, chậm, không thao tác gấp.)* |

---

## Tình huống 8 — Nhà kho · 15:30, ký 同意書

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>研修<rt>けんしゅう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>の<ruby>同意書<rt>どういしょ</rt></ruby>です。<ruby>内容<rt>ないよう</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでから<ruby>署名<rt>しょめい</rt></ruby>してください。<br>*(Đây là biên bản đồng ý hoàn thành khoá đào tạo. Em đọc nội dung rồi ký nhé.)* |
| Linh | はい。...あの、ここの「<ruby>免責<rt>めんせき</rt></ruby><ruby>事項<rt>じこう</rt></ruby>」というのは、<ruby>意味<rt>いみ</rt></ruby>がよくわかりません。<br>*(Vâng. ... Bác ơi, chỗ "miễn trừ trách nhiệm" này em chưa hiểu rõ ý ạ.)* |
| Yamamoto | <ruby>研修<rt>けんしゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたのに<ruby>指示<rt>しじ</rt></ruby>に<ruby>従<rt>したが</rt></ruby>わずに<ruby>事故<rt>じこ</rt></ruby>を<ruby>起<rt>お</rt></ruby>こしたら、リンさん<ruby>自身<rt>じしん</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby>になるという<ruby>意味<rt>いみ</rt></ruby>。<br>*(Nghĩa là đã được đào tạo mà không làm theo chỉ dẫn rồi gây tai nạn thì là trách nhiệm của bản thân Linh.)* |
| Linh | わかりました。<ruby>逆<rt>ぎゃく</rt></ruby>に、<ruby>指示<rt>しじ</rt></ruby>に<ruby>従<rt>したが</rt></ruby>っていれば、<ruby>農場<rt>のうじょう</rt></ruby>が<ruby>保険<rt>ほけん</rt></ruby>でカバーしますか?<br>*(Em hiểu rồi. Ngược lại, nếu làm theo chỉ dẫn thì trang trại bảo hiểm chi trả ạ?)* |
| Yamamoto | そう、ちゃんとしている。<ruby>労災保険<rt>ろうさいほけん</rt></ruby>に<ruby>加入<rt>かにゅう</rt></ruby>している。<ruby>怪我<rt>けが</rt></ruby>したら<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>して。<ruby>小<rt>ちい</rt></ruby>さい<ruby>傷<rt>きず</rt></ruby>でも。<br>*(Đúng, đầy đủ rồi. Có bảo hiểm tai nạn lao động. Bị thương phải báo. Vết thương nhỏ cũng phải báo.)* |
| Linh | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>します。サインします。<br>*(Vâng, chắc chắn em sẽ báo cáo. Em ký ạ.)* |

---

## Tình huống 9 — Sân kho · Ngày 2, 9:00, phát hiện bất thường

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>で<ruby>気<rt>き</rt></ruby>になることがあります。<br>*(Bác Yamamoto, kiểm tra sáng có chỗ em băn khoăn ạ.)* |
| Yamamoto | どうした?<br>*(Sao thế?)* |
| Linh | <ruby>左<rt>ひだり</rt></ruby><ruby>後輪<rt>こうりん</rt></ruby>の<ruby>空気圧<rt>くうきあつ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>低<rt>ひく</rt></ruby>いです。<ruby>右<rt>みぎ</rt></ruby>と<ruby>比<rt>くら</rt></ruby>べると<ruby>明<rt>あき</rt></ruby>らかに<ruby>違<rt>ちが</rt></ruby>います。<br>*(Áp suất bánh sau bên trái hơi thấp ạ. So với bên phải khác hẳn ạ.)* |
| Yamamoto | おお、よく<ruby>気<rt>き</rt></ruby>がついた。<ruby>見<rt>み</rt></ruby>せて。...あ、<ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>釘<rt>くぎ</rt></ruby>が<ruby>刺<rt>さ</rt></ruby>さってる。<ruby>昨日<rt>きのう</rt></ruby><ruby>道<rt>みち</rt></ruby>で<ruby>拾<rt>ひろ</rt></ruby>ったかな。<br>*(Ồ, để ý kỹ đấy. Cho bác xem. ... À, đúng rồi. Có cái đinh đâm vào. Chắc hôm qua trên đường lụm phải.)* |
| Linh | <ruby>修理<rt>しゅうり</rt></ruby>しますか?<br>*(Sửa luôn ạ?)* |
| Yamamoto | する。リンさんの<ruby>報告<rt>ほうこく</rt></ruby>のおかげで<ruby>大<rt>おお</rt></ruby>きな<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げた。<ruby>畔<rt>あぜ</rt></ruby>でバーストしたら<ruby>転倒<rt>てんとう</rt></ruby>する。<br>*(Sửa. Nhờ Linh báo cáo mà ngăn được tai nạn lớn. Bể lốp trên bờ ruộng là lật ngay.)* |
| Linh | お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em được có ích, vui quá ạ.)* |

---

## Tình huống 10 — Phòng họp · Ngày 2, 13:30, học các biển báo nông nghiệp

| Vai | Lời thoại |
|---|---|
| Yamamoto | この<ruby>赤<rt>あか</rt></ruby>い<ruby>三角形<rt>さんかくけい</rt></ruby>のマーク、<ruby>知<rt>し</rt></ruby>ってる?<br>*(Em biết dấu tam giác đỏ này không?)* |
| Linh | トラクターの<ruby>後<rt>うし</rt></ruby>ろに<ruby>付<rt>つ</rt></ruby>いているマークですか? <ruby>低速車<rt>ていそくしゃ</rt></ruby>マーク?<br>*(Là dấu gắn phía sau máy cày ạ? Dấu xe tốc độ chậm?)* |
| Yamamoto | そう、<ruby>低速車両<rt>ていそくしゃりょう</rt></ruby>マーク。<ruby>道路<rt>どうろ</rt></ruby>を<ruby>走<rt>はし</rt></ruby>るときに<ruby>必須<rt>ひっす</rt></ruby>。<ruby>後<rt>うし</rt></ruby>ろの<ruby>車<rt>くるま</rt></ruby>に「ゆっくり<ruby>走<rt>はし</rt></ruby>ってます」と<ruby>知<rt>し</rt></ruby>らせる。<br>*(Đúng, dấu xe tốc độ chậm. Bắt buộc khi đi trên đường. Báo xe sau biết "tôi đi chậm".)* |
| Linh | ベトナムにはないですね。<br>*(Việt Nam không có ạ.)* |
| Yamamoto | <ruby>農作業<rt>のうさぎょう</rt></ruby><ruby>事故<rt>じこ</rt></ruby>の<ruby>多<rt>おお</rt></ruby>くは<ruby>公道<rt>こうどう</rt></ruby>での<ruby>追突<rt>ついとつ</rt></ruby>。だからこれが<ruby>大事<rt>だいじ</rt></ruby>。<ruby>夕方<rt>ゆうがた</rt></ruby>はライトも<ruby>必<rt>かなら</rt></ruby>ず<ruby>点<rt>つ</rt></ruby>けて。<br>*(Tai nạn nông nghiệp nhiều là bị tông từ phía sau trên đường công. Nên cái này quan trọng. Tối nhớ bật đèn.)* |
| Linh | はい、メモします。<br>*(Vâng em ghi chú ạ.)* |

---

## Tình huống 11 — Sân kho · Ngày 3, 10:00, bị xước tay nhẹ

*Linh trượt tay khi tháo bu-lông, tay chảy máu nhẹ.*

| Vai | Lời thoại |
|---|---|
| Linh | あ、<ruby>痛<rt>いた</rt></ruby>っ。<br>*(Á, đau.)* |
| Makoto | リン、どうした? あ、<ruby>血<rt>ち</rt></ruby>が<ruby>出<rt>で</rt></ruby>てる!<ruby>田中<rt>たなか</rt></ruby>さーん!<br>*(Linh, sao thế? À, chảy máu kìa! Bác Yamamoto ơi!)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です、<ruby>小<rt>ちい</rt></ruby>さい<ruby>傷<rt>きず</rt></ruby>です。すみません、<ruby>騒<rt>さわ</rt></ruby>がせて。<br>*(Em không sao, vết nhỏ ạ. Xin lỗi làm ồn ạ.)* |
| Yamamoto | <ruby>小<rt>ちい</rt></ruby>さくても<ruby>報告<rt>ほうこく</rt></ruby>するルール。<ruby>救急<rt>きゅうきゅう</rt></ruby>キットを<ruby>持<rt>も</rt></ruby>ってきて。<br>*(Nhỏ cũng phải báo, đó là quy định. Lấy hộp cứu thương ra đây.)* |
| Linh | はい、すみません。<br>*(Vâng, xin lỗi ạ.)* |
| Yamamoto | <ruby>謝<rt>あやま</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>ないよ。これは<ruby>正<rt>ただ</rt></ruby>しい<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>傷<rt>きず</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>って、<ruby>消毒<rt>しょうどく</rt></ruby>して、<ruby>絆創膏<rt>ばんそうこう</rt></ruby>。<ruby>破傷風<rt>はしょうふう</rt></ruby>の<ruby>予防接種<rt>よぼうせっしゅ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Không cần xin lỗi. Đây là báo cáo đúng. Rửa, sát trùng, dán urgo. Tiêm phòng uốn ván em có chưa?)* |
| Linh | はい、<ruby>去年<rt>きょねん</rt></ruby><ruby>入国<rt>にゅうこく</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けました。<br>*(Vâng, năm ngoái trước khi sang em đã tiêm rồi ạ.)* |
| Yamamoto | よし。これも<ruby>労災<rt>ろうさい</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>す。「ヒヤリ・ハット」<ruby>報告書<rt>ほうこくしょ</rt></ruby>もつけよう。<br>*(OK. Cái này ghi lại vào hồ sơ tai nạn lao động luôn. Đính kèm báo cáo "hiyari-hatto" nữa.)* |

---

## Tình huống 12 — Sân kho · Ngày 3, 11:00, hỏi về "ヒヤリ・ハット"

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby>さん、「ヒヤリ・ハット」というのは?<br>*(Bác Yamamoto, "hiyari-hatto" là gì ạ?)* |
| Yamamoto | <ruby>怪我<rt>けが</rt></ruby>はしなかったけど、「<ruby>危<rt>あぶ</rt></ruby>なかった!」と<ruby>感<rt>かん</rt></ruby>じた<ruby>瞬間<rt>しゅんかん</rt></ruby>のこと。「ヒヤリ」と「ハット」、<ruby>両方<rt>りょうほう</rt></ruby><ruby>驚<rt>おどろ</rt></ruby>く<ruby>音<rt>おと</rt></ruby>。<br>*(Là khoảnh khắc tuy không bị thương nhưng cảm thấy "nguy hiểm!". "Hiyari" và "hatto" đều là âm thanh giật mình.)* |
| Linh | あ、ベトナム<ruby>語<rt>ご</rt></ruby>でも「ặc!」とか「giật mình」みたいですね。<br>*(À, tiếng Việt cũng có "ặc" hay "giật mình" ạ.)* |
| Yamamoto | おもしろい!<ruby>同<rt>おな</rt></ruby>じだね。これを<ruby>記録<rt>きろく</rt></ruby>して<ruby>共有<rt>きょうゆう</rt></ruby>すると、<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げる。「ハインリッヒの<ruby>法則<rt>ほうそく</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>いたことある?<br>*(Hay nhỉ! Giống nhau nhỉ. Ghi và chia sẻ thì ngăn được tai nạn thật. Em nghe "định luật Heinrich" chưa?)* |
| Linh | いいえ、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Chưa ạ, lần đầu em nghe.)* |
| Yamamoto | <ruby>1<rt>いち</rt></ruby>つの<ruby>重大事故<rt>じゅうだいじこ</rt></ruby>の<ruby>裏<rt>うら</rt></ruby>に<ruby>29<rt>にじゅうきゅう</rt></ruby>の<ruby>軽<rt>けい</rt></ruby><ruby>事故<rt>じこ</rt></ruby>、<ruby>300<rt>さんびゃく</rt></ruby>のヒヤリ・ハットがある。<ruby>300<rt>さんびゃく</rt></ruby>を<ruby>潰<rt>つぶ</rt></ruby>せば、<ruby>重大事故<rt>じゅうだいじこ</rt></ruby>は<ruby>起<rt>お</rt></ruby>きない。<br>*(Đằng sau 1 tai nạn nghiêm trọng có 29 tai nạn nhẹ và 300 lần "giật mình". Dập 300 cái thì tai nạn nghiêm trọng không xảy ra.)* |
| Linh | <ruby>深<rt>ふか</rt></ruby>いですね。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Sâu sắc ạ. Em học được nhiều ạ.)* |

---

## Tình huống 13 — Phòng họp · Ngày 3, 15:00, nhận giấy chứng nhận

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、これが<ruby>修了証<rt>しゅうりょうしょう</rt></ruby>です。<ruby>来年<rt>らいねん</rt></ruby><ruby>大型特殊<rt>おおがたとくしゅ</rt></ruby><ruby>免許<rt>めんきょ</rt></ruby>を<ruby>取<rt>と</rt></ruby>るときに<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つよ。<br>*(Linh, đây là giấy chứng nhận hoàn thành. Sang năm thi bằng "đại hình đặc thù" sẽ có ích.)* |
| Linh | ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>します。<br>*(Cảm ơn bác. Em sẽ giữ cẩn thận ạ.)* |
| Yamamoto | <ruby>3日間<rt>みっかかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>んでくれた。タイヤの<ruby>異常<rt>いじょう</rt></ruby>に<ruby>気<rt>き</rt></ruby>づいたのも、KYTの<ruby>回答<rt>かいとう</rt></ruby>も<ruby>素晴<rt>すば</rt></ruby>らしかった。<br>*(3 ngày em rất nghiêm túc. Việc nhận ra bất thường lốp, câu trả lời KYT đều xuất sắc.)* |
| Linh | <ruby>父<rt>ちち</rt></ruby>がいつも「<ruby>機械<rt>きかい</rt></ruby>は<ruby>触<rt>さわ</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>音<rt>おと</rt></ruby>を<ruby>聞<rt>き</rt></ruby>け」と<ruby>言<rt>い</rt></ruby>っています。<ruby>今<rt>いま</rt></ruby><ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>っています。<br>*(Bố em luôn nói "Trước khi sờ máy thì nghe tiếng nó đã". Giờ có ích thật ạ.)* |
| Yamamoto | いいお<ruby>父<rt>とう</rt></ruby>さんだね。リンさん、<ruby>将来<rt>しょうらい</rt></ruby><ruby>農機<rt>のうき</rt></ruby>オペレーターでも<ruby>整備士<rt>せいびし</rt></ruby>でも、<ruby>道<rt>みち</rt></ruby>はたくさんある。<br>*(Bố em hay đấy. Linh ơi, sau này em làm vận hành máy nông nghiệp hay thợ bảo dưỡng, đường rộng lắm.)* |
| Linh | はい、<ruby>夢<rt>ゆめ</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>がりました。ありがとうございます。<br>*(Vâng, ước mơ em rộng ra rồi ạ. Cảm ơn bác ạ.)* |

---

## Tình huống 14 — Ký túc, buổi tối, gọi điện về cho bố ở Đồng Tháp

> Cảnh tiếng Việt — Linh gọi cho bố.

| Vai | Lời thoại |
|---|---|
| Linh | A lô ba, con Linh đây. Ba có rảnh không? Con khoe ba cái này. |
| Ba | Ờ ờ, ba đang vá lốp, nói đi con. |
| Linh | Hôm nay con vừa xong khoá tập huấn 3 ngày về máy cày トラクター ở trang trại. Có giấy chứng nhận luôn nha ba. Sang năm con thi bằng lái máy cày 大型特殊 luôn. |
| Ba | Trời ơi, con gái ba lái máy cày hả? Hồi xưa ba mơ cái này mà không có điều kiện. |
| Linh | Hôm qua con phát hiện bánh sau máy cày non hơi, kiểm tra ra cái đinh đâm vô. 親方 khen con quá trời, nói nhờ con mà tránh được tai nạn lớn. |
| Ba | Hay quá ha! Là nhờ hồi nhỏ ba dạy con cách nhìn xe ngoài tiệm đó. Ba nói rồi mà, "Trước khi sờ máy phải nghe tiếng nó đã". |
| Linh | Dạ con nhắc câu này y chang với bác Yamamoto. Bác khen ba luôn đó. |
| Ba | Giời ơi cảm ơn ổng giùm ba. Mà nguy hiểm không con? Máy cày bên đó bự lắm hả? |
| Linh | Bự ba ạ, Kubota 30 mã lực. Mà người Nhật làm an toàn kỹ lắm — KYT, ヒヤリ・ハット, biên bản tai nạn, bảo hiểm 労災 đầy đủ. Bị xước tay xíu cũng phải báo. |
| Ba | Vậy là đúng bài rồi. Ba mừng quá. Con ráng học bằng đàng hoàng nha, mai mốt về VN, mở tiệm cơ khí nông nghiệp với ba. |
| Linh | Dạ con cũng đang nghĩ vậy đó ba. Hai ba con làm chung. |
| Ba | Ờ. Mẹ đang nấu canh chua, ba kêu ra ăn nhe — à mà con bên kia khuya rồi, ngủ đi. |
| Linh | Dạ con chào ba, con thương ba mẹ. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜には〜<ruby>免許<rt>めんきょ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です** — Để làm ~ cần có bằng ~
- **「〜」というのは<ruby>意味<rt>いみ</rt></ruby>がよくわかりません** — "~" em chưa hiểu rõ ý
- **<ruby>気<rt>き</rt></ruby>になることがあります** — Em có chỗ băn khoăn
- **〜<ruby>可能性<rt>かのうせい</rt></ruby>があります** — Có khả năng ~
- **<ruby>前<rt>まえ</rt></ruby>よし!<ruby>後<rt>うし</rt></ruby>ろよし!** — Trước OK! Sau OK! (chỉ tay xướng tên)
- **<ruby>小<rt>ちい</rt></ruby>さい<ruby>傷<rt>きず</rt></ruby>でも<ruby>報告<rt>ほうこく</rt></ruby>します** — Vết thương nhỏ cũng báo cáo
- **<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>します** — Em sẽ giữ cẩn thận

> Từ vựng & mẫu câu chương này: トラクター・<ruby>大型特殊<rt>おおがたとくしゅ</rt></ruby>・<ruby>転倒<rt>てんとう</rt></ruby>・<ruby>転落<rt>てんらく</rt></ruby>・<ruby>畔<rt>あぜ</rt></ruby>・ロータリー・PTOシャフト・<ruby>始業<rt>しぎょう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>・KYT・<ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>呼称<rt>こしょう</rt></ruby>・<ruby>同乗<rt>どうじょう</rt></ruby>・<ruby>同意書<rt>どういしょ</rt></ruby>・<ruby>労災保険<rt>ろうさいほけん</rt></ruby>・ヒヤリ・ハット・ハインリッヒ・<ruby>修了証<rt>しゅうりょうしょう</rt></ruby>・<ruby>低速車<rt>ていそくしゃ</rt></ruby>マーク.

---

## Bí quyết chương

- **Bằng <ruby>大型特殊<rt>おおがたとくしゅ</rt></ruby> = chìa khoá thăng tiến** — Có bằng này lương cao hơn rõ. Nhiều trang trại trả tiền học cho TTS năm 2 nếu cam kết ở lại 3 năm.
- **3 nguyên tắc chống lật máy cày** — Thắt dây + ROPS frame, không đi chéo bờ, không làm một mình. Thuộc lòng vì đây là tử thần số 1 nông nghiệp Nhật.
- **<ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>呼称<rt>こしょう</rt></ruby> (chỉ tay xướng tên)** — Văn hoá an toàn Nhật, dùng cả trong tàu shinkansen lẫn ruộng. "Mae yoshi! Ushiro yoshi!" giảm tai nạn 10 lần — nói thật to, không ngượng.
- **ヒヤリ・ハット = báo cáo "giật mình"** — Nguyên tắc Heinrich 1:29:300. Văn hoá Nhật khuyến khích báo cả lúc chưa bị thương. KHÔNG sợ bị mắng, ngược lại được khen.
- **<ruby>免責<rt>めんせき</rt></ruby><ruby>事項<rt>じこう</rt></ruby> trong 同意書** — Đọc kỹ trước khi ký. Hỏi đến khi hiểu hết. Đặc biệt phần "không làm theo chỉ dẫn = tự chịu trách nhiệm".
- **Bố/mẹ làm nghề cơ khí = lợi thế** — Đưa câu chuyện gia đình vào hội thoại với 親方, người Nhật rất quý TTS có gốc kỹ thuật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| トラクター | — | — | máy cày, máy kéo nông nghiệp |
| 安全教育 | あんぜんきょういく | AN TOÀN GIÁO DỤC | giáo dục an toàn |
| 実習生 | じっしゅうせい | THỰC TẬP SINH | thực tập sinh |
| 必修 | ひっしゅう | TẤT TU | bắt buộc (môn học, khoá) |
| 大型特殊 | おおがたとくしゅ | ĐẠI HÌNH ĐẶC THÙ | (bằng lái) đại hình đặc thù |
| 農耕車 | のうこうしゃ | NÔNG CANH XA | xe nông nghiệp |
| 免許 | めんきょ | MIỄN HỨA | bằng lái, giấy phép |
| 座学 | ざがく | TOẠ HỌC | học lý thuyết |
| 助手席 | じょしゅせき | TRỢ THỦ TỊCH | ghế phụ |
| 同乗 | どうじょう | ĐỒNG THỪA | ngồi chung, cùng đi |
| 死亡事故 | しぼうじこ | TỬ VONG SỰ CỐ | tai nạn chết người |
| 転倒 | てんとう | CHUYỂN ĐẢO | bị lật |
| 転落 | てんらく | CHUYỂN LẠC | bị rơi xuống |
| 畔 | あぜ | BÀN | bờ ruộng |
| 高齢 | こうれい | CAO LINH | cao tuổi |
| シートベルト | — | — | dây an toàn |
| 進入 | しんにゅう | TIẾN NHẬP | đi vào, tiến vào |
| ロータリー | — | — | lưỡi cày xới (rotary) |
| 爪 | つめ | TRẢO | móng (máy cày), móng tay |
| 砕く | くだく | TOẠI | đập vụn, nghiền |
| 巻き込む | まきこむ | QUYỂN VÀO | cuốn vào |
| 厳禁 | げんきん | NGHIÊM CẤM | nghiêm cấm |
| 始業点検 | しぎょうてんけん | THỦY NGHIỆP ĐIỂM KIỂM | kiểm tra trước ca |
| 冷却水 | れいきゃくすい | LÃNH KHƯỚC THUỶ | nước làm mát |
| 燃料 | ねんりょう | NHIÊN LIỆU | nhiên liệu |
| 空気圧 | くうきあつ | KHÔNG KHÍ ÁP | áp suất không khí |
| レベルゲージ | — | — | que thăm dầu |
| 適正 | てきせい | THÍCH CHÍNH | phù hợp, đúng mức |
| 修理 | しゅうり | TU LÝ | sửa chữa |
| 危険予知 | きけんよち | NGUY HIỂM DỰ TRI | dự đoán nguy hiểm (KYT) |
| 訓練 | くんれん | HUẤN LUYỆN | huấn luyện |
| 傾く | かたむく | KHUYNH | nghiêng |
| 後方視界 | こうほうしかい | HẬU PHƯƠNG THỊ GIỚI | tầm nhìn phía sau |
| 指差し呼称 | ゆびさしこしょう | CHỈ SAI HÔ XƯNG | chỉ tay xướng tên |
| ニュートラル | — | — | (số) mo, trung lập |
| 始動 | しどう | THỦY ĐỘNG | khởi động |
| 振動 | しんどう | CHẤN ĐỘNG | rung |
| 直角 | ちょっかく | TRỰC GIÁC | vuông góc |
| 片輪 | かたわ | PHIẾN LUÂN | một bên bánh |
| 速度 | そくど | TỐC ĐỘ | tốc độ |
| 同意書 | どういしょ | ĐỒNG Ý THƯ | biên bản đồng ý |
| 署名 | しょめい | THỰ DANH | ký tên |
| 免責事項 | めんせきじこう | MIỄN TRÁCH SỰ HẠNG | điều khoản miễn trách nhiệm |
| 労災保険 | ろうさいほけん | LAO TAI BẢO HIỂM | bảo hiểm tai nạn lao động |
| 加入 | かにゅう | GIA NHẬP | tham gia (bảo hiểm) |
| 釘 | くぎ | ĐINH | đinh |
| 刺さる | ささる | THÍCH | đâm vào, cắm vào |
| バースト | — | — | nổ lốp |
| 低速車両 | ていそくしゃりょう | ĐÊ TỐC XA LƯỢNG | xe tốc độ chậm |
| 公道 | こうどう | CÔNG ĐẠO | đường công cộng |
| 追突 | ついとつ | TRUY ĐỘT | tông từ phía sau |
| 救急キット | きゅうきゅう — | CỨU CẤP — | hộp cứu thương |
| 消毒 | しょうどく | TIÊU ĐỘC | sát trùng |
| 絆創膏 | ばんそうこう | BĂNG SƯƠNG CAO | băng dán cá nhân |
| 破傷風 | はしょうふう | PHÁ THƯƠNG PHONG | uốn ván |
| 予防接種 | よぼうせっしゅ | DỰ PHÒNG TIẾP CHỦNG | tiêm phòng |
| ヒヤリ・ハット | — | — | khoảnh khắc giật mình (suýt tai nạn) |
| 法則 | ほうそく | PHÁP TẮC | định luật |
| 重大事故 | じゅうだいじこ | TRỌNG ĐẠI SỰ CỐ | tai nạn nghiêm trọng |
| 修了証 | しゅうりょうしょう | TU LIỄU CHỨNG | giấy chứng nhận hoàn thành |
| 保管 | ほかん | BẢO QUẢN | bảo quản, cất giữ |
| 整備士 | せいびし | CHỈNH BỊ SĨ | thợ bảo dưỡng |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000011, 800000041, NULL, 'markdown_book', 'T11. Mùa đông phục hồi đất và lên kế hoạch năm 3 (冬の土づくりと3年目計画)', '# Sách thực tập sinh nông nghiệp năm 2 · T11. Mùa đông phục hồi đất và lên kế hoạch năm 3 (冬の土づくりと3年目計画)

> **Mục tiêu nhân vật:** Linh (24 tuổi, Đồng Tháp, năm 2 cuối Ibaraki). Học các mẫu hội thoại tiếng Nhật trong mùa thấp điểm: thảo luận <ruby>土<rt>つち</rt></ruby>づくり (phục hồi đất), <ruby>堆肥<rt>たいひ</rt></ruby> phân ủ, đọc <ruby>土壌<rt>どじょう</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>, 1-on-1 với 親方 về kế hoạch năm 3 (SSW), bàn về 在留資格 chuyển đổi, và giữ tinh thần qua mùa đông dài.

---

## Bối cảnh

Tháng 1-2 năm 2027. Mùa đông Ibaraki lạnh -5°C, ruộng phủ tuyết. Vụ vegetable nghỉ, công việc chủ yếu trong nhà kính (ハウス) sưởi, bảo dưỡng máy móc, và làm đất chuẩn bị xuân. 親方 Yamamoto mở buổi 1-on-1 với từng TTS năm 2 để hỏi về kế hoạch năm 3 — gia hạn 技能実習, hay chuyển sang 特定技能 (SSW), hay về nước. Linh đã đậu N3 (12/2026), đã đậu 検定 3級. Chương này tập trung mẫu câu thảo luận chuyên môn về đất, hội thoại 1-on-1 lập kế hoạch dài hạn, và giữ vững tâm lý qua mùa đông.

---

## Tình huống 1 — Nhà kính sưởi · 8:00, buổi sáng -3°C

| Vai | Lời thoại |
|---|---|
| Yamamoto | おはよう、リンさん。<ruby>今朝<rt>けさ</rt></ruby>は<ruby>冷<rt>ひ</rt></ruby>えたね。マイナス<ruby>5度<rt>ごど</rt></ruby>だったよ。<br>*(Chào buổi sáng Linh. Sáng nay lạnh nhỉ. -5 độ đấy.)* |
| Linh | おはようございます。ベトナムでは<ruby>経験<rt>けいけん</rt></ruby>したことのない<ruby>寒<rt>さむ</rt></ruby>さです。でも<ruby>慣<rt>な</rt></ruby>れてきました。<br>*(Chào buổi sáng ạ. Ở Việt Nam em chưa từng trải qua cái lạnh thế này. Nhưng em quen rồi ạ.)* |
| Yamamoto | ハウスの<ruby>中<rt>なか</rt></ruby>はいいよ、<ruby>15度<rt>じゅうごど</rt></ruby>くらい。<ruby>今日<rt>きょう</rt></ruby>は<ruby>苗<rt>なえ</rt></ruby>の<ruby>植<rt>う</rt></ruby>え<ruby>替<rt>か</rt></ruby>えと<ruby>土<rt>つち</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をしよう。<br>*(Trong nhà kính tốt rồi, khoảng 15 độ. Hôm nay đảo cây con và chuẩn bị đất.)* |
| Linh | はい。<ruby>外<rt>そと</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>は<ruby>雪<rt>ゆき</rt></ruby>でしばらく<ruby>使<rt>つか</rt></ruby>えないですよね。<br>*(Vâng. Ruộng ngoài đang tuyết phủ chắc còn lâu mới dùng được nhỉ.)* |
| Yamamoto | そう、<ruby>3月<rt>さんがつ</rt></ruby>まで<ruby>休<rt>やす</rt></ruby>ませる。でも<ruby>休<rt>やす</rt></ruby>ませる<ruby>間<rt>あいだ</rt></ruby>に<ruby>土<rt>つち</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるんだ。<br>*(Đúng, cho nó nghỉ đến tháng 3. Nhưng trong lúc nghỉ là lúc nuôi đất đấy.)* |
| Linh | <ruby>土<rt>つち</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てる、ですか? <ruby>面白<rt>おもしろ</rt></ruby>い<ruby>表現<rt>ひょうげん</rt></ruby>ですね。<br>*(Nuôi đất ạ? Cách diễn đạt thú vị quá.)* |

---

## Tình huống 2 — Sân nhà kho · 9:30, làm 堆肥

| Vai | Lời thoại |
|---|---|
| Yamamoto | これが<ruby>堆肥置<rt>たいひお</rt></ruby>き<ruby>場<rt>ば</rt></ruby>。<ruby>夏<rt>なつ</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>り<ruby>野菜<rt>やさい</rt></ruby>と<ruby>牛糞<rt>ぎゅうふん</rt></ruby>、もみ<ruby>殻<rt>がら</rt></ruby>を<ruby>混<rt>ま</rt></ruby>ぜて<ruby>発酵<rt>はっこう</rt></ruby>させている。<br>*(Đây là chỗ ủ phân. Bác trộn rau thừa mùa hè + phân bò + vỏ trấu cho lên men.)* |
| Linh | (cúi sát) ...<ruby>温<rt>あたた</rt></ruby>かいですね、<ruby>湯気<rt>ゆげ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ています。<br>*(... Ấm nhỉ, có hơi nước bốc lên.)* |
| Yamamoto | <ruby>中<rt>なか</rt></ruby>は<ruby>60度<rt>ろくじゅうど</rt></ruby>くらいになる。<ruby>微生物<rt>びせいぶつ</rt></ruby>が<ruby>働<rt>はたら</rt></ruby>いている<ruby>証拠<rt>しょうこ</rt></ruby>。<ruby>2週間<rt>にしゅうかん</rt></ruby>に<ruby>1回<rt>いっかい</rt></ruby><ruby>切<rt>き</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す。<br>*(Trong lên đến 60 độ. Là bằng chứng vi sinh đang hoạt động. 2 tuần đảo 1 lần.)* |
| Linh | <ruby>切<rt>き</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>すというのは、<ruby>上下<rt>じょうげ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えることですか?<br>*(Đảo có phải là trộn trên dưới ngược lại không ạ?)* |
| Yamamoto | そう、<ruby>酸素<rt>さんそ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れるため。<ruby>酸素<rt>さんそ</rt></ruby>がないと<ruby>嫌気性発酵<rt>けんきせいはっこう</rt></ruby>になって<ruby>臭<rt>くさ</rt></ruby>くなる。<br>*(Đúng, để đưa oxy vào. Không có oxy là lên men yếm khí, hôi thối.)* |
| Linh | わかりました。<ruby>今日<rt>きょう</rt></ruby><ruby>切<rt>き</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しますか?<br>*(Em hiểu rồi. Hôm nay đảo ạ?)* |
| Yamamoto | やろう。フォークでひっくり<ruby>返<rt>かえ</rt></ruby>す。<ruby>重労働<rt>じゅうろうどう</rt></ruby>だから<ruby>休<rt>やす</rt></ruby>みながらね。<br>*(Làm thôi. Dùng nĩa lật ngược. Lao động nặng nên vừa làm vừa nghỉ.)* |

---

## Tình huống 3 — Văn phòng nhỏ · 11:00, đọc kết quả 土壌分析

| Vai | Lời thoại |
|---|---|
| Yamamoto | JAから<ruby>土壌<rt>どじょう</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>来<rt>き</rt></ruby>た。リンさんも<ruby>見<rt>み</rt></ruby>てごらん。<br>*(JA gửi kết quả phân tích đất rồi. Linh cũng xem đi.)* |
| Linh | はい。...pH<ruby>6.2<rt>ろくてんに</rt></ruby>、<ruby>窒素<rt>ちっそ</rt></ruby>、<ruby>燐<rt>りん</rt></ruby>、<ruby>加里<rt>かり</rt></ruby>...あ、<ruby>有機物含量<rt>ゆうきぶつがんりょう</rt></ruby>が<ruby>3.5<rt>さんてんご</rt></ruby>%です。<br>*(Vâng. ... pH 6.2, đạm, lân, kali... À, hàm lượng hữu cơ 3.5% ạ.)* |
| Yamamoto | よく<ruby>読<rt>よ</rt></ruby>めるね、<ruby>感心<rt>かんしん</rt></ruby>。<ruby>理想<rt>りそう</rt></ruby>は<ruby>4<rt>よん</rt></ruby>%<ruby>以上<rt>いじょう</rt></ruby>だから、<ruby>少<rt>すこ</rt></ruby>し<ruby>足<rt>た</rt></ruby>りない。だから<ruby>堆肥<rt>たいひ</rt></ruby>をたっぷり<ruby>入<rt>い</rt></ruby>れる。<br>*(Em đọc giỏi đấy, khâm phục. Lý tưởng trên 4%, đang hơi thiếu. Nên cần bón nhiều phân ủ.)* |
| Linh | pHは<ruby>6.2<rt>ろくてんに</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(pH 6.2 ổn không ạ?)* |
| Yamamoto | <ruby>野菜<rt>やさい</rt></ruby>には<ruby>6.0<rt>ろくてんれい</rt></ruby>から<ruby>6.8<rt>ろくてんはち</rt></ruby>が<ruby>最適<rt>さいてき</rt></ruby>。<ruby>6.2<rt>ろくてんに</rt></ruby>はちょうどいい。リンさん、<ruby>勉強<rt>べんきょう</rt></ruby>してるね。<ruby>本<rt>ほん</rt></ruby><ruby>読<rt>よ</rt></ruby>んでる?<br>*(Rau thì 6.0-6.8 là tối ưu. 6.2 vừa đẹp. Linh, em chịu khó học nhỉ. Đọc sách à?)* |
| Linh | はい、<ruby>夜<rt>よる</rt></ruby>、ハウスの<ruby>本<rt>ほん</rt></ruby>と<ruby>土<rt>つち</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでいます。<ruby>3年目<rt>さんねんめ</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて。<br>*(Vâng, tối em đọc sách về nhà kính và đất ạ. Hướng tới năm 3 ạ.)* |
| Yamamoto | <ruby>素晴<rt>すば</rt></ruby>らしい。その<ruby>話<rt>はなし</rt></ruby>、<ruby>明日<rt>あした</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>でゆっくりしよう。<br>*(Tuyệt vời. Câu chuyện đó, mai ta nói chuyện riêng kỹ.)* |

---

## Tình huống 4 — Nhà kính, giờ giải lao · 14:00, đồng nghiệp Indonesia hỏi N3

| Vai | Lời thoại |
|---|---|
| Dewi | リンさん、N3<ruby>合格<rt>ごうかく</rt></ruby>したって<ruby>本当<rt>ほんとう</rt></ruby>? おめでとう!<br>*(Linh chị, nghe nói chị đậu N3? Chúc mừng!)* |
| Linh | ありがとう、デウィさん!<ruby>12月<rt>じゅうにがつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>でぎりぎりだったけど、<ruby>合格<rt>ごうかく</rt></ruby>できた。<br>*(Cảm ơn Dewi! Kỳ thi tháng 12 sát nút lắm nhưng em qua được.)* |
| Dewi | <ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>、<ruby>教<rt>おし</rt></ruby>えてもらえる? <ruby>私<rt>わたし</rt></ruby>も<ruby>来年<rt>らいねん</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>したい。<br>*(Chị chỉ em cách học được không? Năm sau em cũng muốn thử.)* |
| Linh | もちろん!まず<ruby>毎日<rt>まいにち</rt></ruby><ruby>30分<rt>さんじゅっぷん</rt></ruby>でいいから<ruby>続<rt>つづ</rt></ruby>けること。<ruby>私<rt>わたし</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby><ruby>5時<rt>ごじ</rt></ruby><ruby>半<rt>はん</rt></ruby>に<ruby>起<rt>お</rt></ruby>きて<ruby>単語<rt>たんご</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてた。<br>*(Tất nhiên! Đầu tiên duy trì mỗi ngày 30 phút thôi. Chị thì 5h30 sáng dậy học từ vựng.)* |
| Dewi | <ruby>朝<rt>あさ</rt></ruby><ruby>5時<rt>ごじ</rt></ruby><ruby>半<rt>はん</rt></ruby>!? すごい...<br>*(5h30 sáng!? Đỉnh quá...)* |
| Linh | <ruby>夜<rt>よる</rt></ruby>は<ruby>疲<rt>つか</rt></ruby>れて<ruby>頭<rt>あたま</rt></ruby>に<ruby>入<rt>はい</rt></ruby>らない。<ruby>朝<rt>あさ</rt></ruby>のほうが<ruby>静<rt>しず</rt></ruby>かで<ruby>集中<rt>しゅうちゅう</rt></ruby>できる。あと、<ruby>農場<rt>のうじょう</rt></ruby>での<ruby>会話<rt>かいわ</rt></ruby>もぜんぶ<ruby>勉強<rt>べんきょう</rt></ruby>になる。<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>はすぐ<ruby>聞<rt>き</rt></ruby>く。<br>*(Tối thì mệt, không vào đầu. Sáng yên tĩnh, tập trung hơn. Với lại hội thoại ở trang trại cũng là học. Từ nào không hiểu hỏi bác Yamamoto ngay.)* |
| Dewi | <ruby>聞<rt>き</rt></ruby>くのが<ruby>恥<rt>は</rt></ruby>ずかしくない?<br>*(Hỏi không ngại à?)* |
| Linh | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>恥<rt>は</rt></ruby>ずかしかった。でも<ruby>分<rt>わ</rt></ruby>からないまま<ruby>仕事<rt>しごと</rt></ruby>するほうが<ruby>怖<rt>こわ</rt></ruby>い。<ruby>勇気<rt>ゆうき</rt></ruby>を<ruby>出<rt>だ</rt></ruby>そう、デウィさん。<br>*(Lúc đầu ngại. Nhưng làm việc mà không hiểu còn sợ hơn. Mình cứ dám hỏi đi, Dewi.)* |

---

## Tình huống 5 — Nhà kính · Buổi chiều, Linh dạy Dewi từ vựng đất

| Vai | Lời thoại |
|---|---|
| Linh | デウィさん、「<ruby>土壌<rt>どじょう</rt></ruby>」って<ruby>知<rt>し</rt></ruby>ってる?<br>*(Dewi, em biết "dojou" không?)* |
| Dewi | え、<ruby>土<rt>つち</rt></ruby>のこと? <ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>...<br>*(Là đất hả? Khó quá...)* |
| Linh | そう、<ruby>農業<rt>のうぎょう</rt></ruby>で<ruby>使<rt>つか</rt></ruby>う<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>。「<ruby>土<rt>つち</rt></ruby>」と<ruby>同<rt>おな</rt></ruby>じだけど、<ruby>科学的<rt>かがくてき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うとき<ruby>使<rt>つか</rt></ruby>う。あと「<ruby>堆肥<rt>たいひ</rt></ruby>」=<ruby>有機<rt>ゆうき</rt></ruby>の<ruby>肥料<rt>ひりょう</rt></ruby>、「<ruby>窒素<rt>ちっそ</rt></ruby>・<ruby>燐<rt>りん</rt></ruby>・<ruby>加里<rt>かり</rt></ruby>」=N・P・K。<br>*(Đúng, thuật ngữ chuyên môn nông nghiệp. Giống "tsuchi" nhưng dùng khi nói khoa học. Còn "taihi" = phân hữu cơ, "chisso/rin/kari" = N/P/K.)* |
| Dewi | おお、リンさんはもう<ruby>先生<rt>せんせい</rt></ruby>みたい!<br>*(Ô chị Linh như cô giáo luôn!)* |
| Linh | <ruby>違<rt>ちが</rt></ruby>うよ、<ruby>私<rt>わたし</rt></ruby>もまだ<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>来年<rt>らいねん</rt></ruby><ruby>3月<rt>さんがつ</rt></ruby>、<ruby>農業<rt>のうぎょう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>もチャレンジしよう。<br>*(Đâu mà, chị cũng đang học. Cùng cố nha. Tháng 3 năm sau cùng thử thi 検定 2級 nhé.)* |
| Dewi | <ruby>2級<rt>にきゅう</rt></ruby>? <ruby>難<rt>むずか</rt></ruby>しそう...でも、リンさんと<ruby>一緒<rt>いっしょ</rt></ruby>なら。<br>*(2級? Có vẻ khó... nhưng nếu có chị đi cùng.)* |

---

## Tình huống 6 — Phòng họp nhỏ · Ngày hôm sau 13:00, 1-on-1 với 親方

*Bác Yamamoto pha trà nóng, để hai ly đối diện. Một quyển sổ nhỏ mở sẵn.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、お<ruby>茶<rt>ちゃ</rt></ruby>どうぞ。<ruby>今日<rt>きょう</rt></ruby>は<ruby>3年目<rt>さんねんめ</rt></ruby>のことを<ruby>話<rt>はな</rt></ruby>そう。<br>*(Linh, mời trà. Hôm nay ta nói chuyện năm 3 nhé.)* |
| Linh | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn bác. Mong bác chỉ bảo ạ.)* |
| Yamamoto | リンさんの<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>は<ruby>2027年<rt>にせんにじゅうななねん</rt></ruby><ruby>8月<rt>はちがつ</rt></ruby>で<ruby>3年<rt>さんねん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わる。その<ruby>後<rt>あと</rt></ruby>のことを<ruby>聞<rt>き</rt></ruby>きたい。<br>*(Thực tập kỹ năng của Linh kết thúc 3 năm vào tháng 8/2027. Bác muốn nghe sau đó em định thế nào.)* |
| Linh | はい。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、まだ<ruby>迷<rt>まよ</rt></ruby>っています。<ruby>選択肢<rt>せんたくし</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つあると<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Thật ra em vẫn đang phân vân ạ. Em nghĩ có 3 lựa chọn ạ.)* |
| Yamamoto | <ruby>聞<rt>き</rt></ruby>かせて。<br>*(Nghe nào.)* |
| Linh | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>帰国<rt>きこく</rt></ruby>してベトナムで<ruby>働<rt>はたら</rt></ruby>く。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1号<rt>いちごう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えて<ruby>日本<rt>にほん</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>3号<rt>さんごう</rt></ruby>であと<ruby>2年<rt>にねん</rt></ruby>。<br>*(Thứ nhất, về Việt Nam làm việc. Thứ hai, chuyển sang SSW 1 ở lại Nhật. Thứ ba, thực tập kỹ năng 3号 thêm 2 năm.)* |
| Yamamoto | よく<ruby>整理<rt>せいり</rt></ruby>できてる。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>私<rt>わたし</rt></ruby>はリンさんに<ruby>2号<rt>にごう</rt></ruby>、つまり<ruby>特定技能<rt>とくていぎのう</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>めたい。<br>*(Sắp xếp gọn ghẽ đấy. Thật lòng, bác muốn khuyên Linh đi theo lựa chọn 2, tức là SSW.)* |
| Linh | なぜですか?<br>*(Vì sao ạ?)* |

---

## Tình huống 7 — Phòng họp · 13:30, 親方 giải thích lý do khuyên SSW

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>理由<rt>りゆう</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ、リンさんはN3<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>農業<rt>のうぎょう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>。<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たしている。<br>*(Có 3 lý do. Một, Linh đậu N3, đậu 検定 nông nghiệp 3 cấp. Đủ điều kiện SSW rồi.)* |
| Linh | はい。<br>*(Vâng.)* |
| Yamamoto | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>給料<rt>きゅうりょう</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がる。<ruby>実習生<rt>じっしゅうせい</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>って<ruby>日本人<rt>にほんじん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>賃金<rt>ちんぎん</rt></ruby>。<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>代<rt>だい</rt></ruby>もちゃんと<ruby>出<rt>で</rt></ruby>る。<ruby>転職<rt>てんしょく</rt></ruby>もできる。<br>*(Hai, lương tăng. Khác TTS, được mức lương như người Nhật. Tiền tăng ca cũng đủ. Có thể đổi việc.)* |
| Linh | <ruby>転職<rt>てんしょく</rt></ruby>もできるんですか?<br>*(Đổi việc được luôn ạ?)* |
| Yamamoto | できる。<ruby>同<rt>おな</rt></ruby>じ<ruby>農業<rt>のうぎょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>の<ruby>中<rt>なか</rt></ruby>でね。でも<ruby>私<rt>わたし</rt></ruby>はうちで<ruby>続<rt>つづ</rt></ruby>けてほしい。<ruby>給料<rt>きゅうりょう</rt></ruby>もちゃんと<ruby>上<rt>あ</rt></ruby>げる。<br>*(Được. Trong cùng ngành nông nghiệp. Nhưng bác muốn em ở lại đây. Lương bác sẽ tăng đàng hoàng.)* |
| Linh | ありがとうございます。<ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>理由<rt>りゆう</rt></ruby>は?<br>*(Cảm ơn bác. Lý do thứ 3 ạ?)* |
| Yamamoto | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>5年後<rt>ごねんご</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>2号<rt>にごう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えれば<ruby>家族<rt>かぞく</rt></ruby>も<ruby>呼<rt>よ</rt></ruby>べる、<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>もある。リンさんは<ruby>才能<rt>さいのう</rt></ruby>がある、<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>けば<ruby>大<rt>おお</rt></ruby>きく<ruby>成長<rt>せいちょう</rt></ruby>できる。<br>*(Ba, 5 năm sau chuyển SSW 2号 thì gọi gia đình sang được, có đường vĩnh trú. Linh có tài năng, làm dài hạn sẽ phát triển lớn.)* |
| Linh | (im lặng một lát) ...ありがとうございます。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>嬉<rt>うれ</rt></ruby>しいです。でも<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(... Cảm ơn bác. Thật lòng em vui ạ. Nhưng cho em bàn với gia đình ạ.)* |
| Yamamoto | もちろん。<ruby>急<rt>いそ</rt></ruby>がない。<ruby>4月<rt>しがつ</rt></ruby>までに<ruby>答<rt>こた</rt></ruby>えがあれば<ruby>手続<rt>てつづ</rt></ruby>きが<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>う。<br>*(Tất nhiên. Không vội. Đến tháng 4 có câu trả lời là kịp thủ tục.)* |

---

## Tình huống 8 — Phòng họp · 14:00, Linh hỏi về lo lắng

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>し<ruby>心配<rt>しんぱい</rt></ruby>なことがあります。<br>*(Bác Yamamoto, em có chút lo lắng ạ.)* |
| Yamamoto | なんでも<ruby>言<rt>い</rt></ruby>って。<br>*(Cứ nói đi.)* |
| Linh | <ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>変<rt>か</rt></ruby>わると、<ruby>監理団体<rt>かんりだんたい</rt></ruby>のサポートがなくなりますよね。<ruby>自分<rt>じぶん</rt></ruby>で<ruby>役所<rt>やくしょ</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>き、<ruby>税金<rt>ぜいきん</rt></ruby>、<ruby>住<rt>す</rt></ruby>まいを<ruby>探<rt>さが</rt></ruby>すのが<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Sang SSW thì 監理団体 không hỗ trợ nữa nhỉ. Em lo phải tự lo thủ tục hành chính, thuế, tìm nhà.)* |
| Yamamoto | いい<ruby>質問<rt>しつもん</rt></ruby>。<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>というのがあって、それが<ruby>監理団体<rt>かんりだんたい</rt></ruby>の<ruby>代<rt>か</rt></ruby>わりにサポートしてくれる。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>契約<rt>けいやく</rt></ruby>している<ruby>機関<rt>きかん</rt></ruby>がある。<br>*(Câu hỏi hay. Có "tổ chức hỗ trợ đăng ký" thay 監理団体 hỗ trợ. Công ty bác có hợp đồng với một tổ chức rồi.)* |
| Linh | <ruby>住<rt>す</rt></ruby>まいは?<ruby>寮<rt>りょう</rt></ruby>を<ruby>出<rt>で</rt></ruby>ないといけませんか?<br>*(Còn nhà ở thì sao ạ? Em phải ra khỏi ký túc không ạ?)* |
| Yamamoto | <ruby>寮<rt>りょう</rt></ruby>はそのまま<ruby>使<rt>つか</rt></ruby>えるよ。<ruby>家賃<rt>やちん</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がるけど、<ruby>給料<rt>きゅうりょう</rt></ruby>の<ruby>上<rt>あ</rt></ruby>がりのほうが<ruby>大<rt>おお</rt></ruby>きい。<br>*(Ký túc cứ dùng tiếp. Tiền nhà tăng chút thôi, nhưng lương tăng nhiều hơn.)* |
| Linh | わかりました。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Em hiểu rồi. Em yên tâm rồi ạ.)* |

---

## Tình huống 9 — Phòng họp · 14:30, hỏi về kế hoạch dài hạn

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>将来<rt>しょうらい</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>はベトナムで<ruby>農業<rt>のうぎょう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めたいです。<ruby>有機<rt>ゆうき</rt></ruby><ruby>野菜<rt>やさい</rt></ruby>を<ruby>作<rt>つく</rt></ruby>って、<ruby>地元<rt>じもと</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>に<ruby>売<rt>う</rt></ruby>りたい。<br>*(Tương lai em muốn về Việt Nam làm nông. Trồng rau hữu cơ, bán cho dân địa phương ạ.)* |
| Yamamoto | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>夢<rt>ゆめ</rt></ruby>!でもベトナムで<ruby>有機<rt>ゆうき</rt></ruby><ruby>野菜<rt>やさい</rt></ruby>は<ruby>市場<rt>しじょう</rt></ruby>あるの?<br>*(Ước mơ đẹp! Nhưng rau hữu cơ ở Việt Nam có thị trường không?)* |
| Linh | <ruby>都市<rt>とし</rt></ruby>では<ruby>増<rt>ふ</rt></ruby>えています。<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>関心<rt>かんしん</rt></ruby>が<ruby>高<rt>たか</rt></ruby>くなっています。でも、<ruby>技術<rt>ぎじゅつ</rt></ruby>と<ruby>資本<rt>しほん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Ở thành phố đang tăng ạ. Người ta quan tâm an toàn thực phẩm. Nhưng cần kỹ thuật và vốn.)* |
| Yamamoto | だから<ruby>特定技能<rt>とくていぎのう</rt></ruby>がいい。<ruby>5年<rt>ごねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>けば<ruby>資金<rt>しきん</rt></ruby>もたまる、<ruby>技術<rt>ぎじゅつ</rt></ruby>も<ruby>深<rt>ふか</rt></ruby>まる。うちの<ruby>有機<rt>ゆうき</rt></ruby>JAS<ruby>認証<rt>にんしょう</rt></ruby>のノウハウ、ぜんぶ<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Vậy thì SSW càng phù hợp. Làm 5 năm tích được vốn, kỹ thuật sâu hơn. Bí quyết JAS hữu cơ của bác, dạy hết.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>ですか? とても<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Thật ạ? Em mừng quá ạ.)* |
| Yamamoto | リンさんがベトナムで<ruby>成功<rt>せいこう</rt></ruby>したら、<ruby>私<rt>わたし</rt></ruby>も<ruby>遊<rt>あそ</rt></ruby>びに<ruby>行<rt>い</rt></ruby>く。メコンの<ruby>野菜<rt>やさい</rt></ruby>を<ruby>見<rt>み</rt></ruby>たい。<br>*(Linh thành công ở Việt Nam là bác sang chơi. Bác muốn xem rau Mekong.)* |
| Linh | ぜひ!ベトナム<ruby>料理<rt>りょうり</rt></ruby>もたくさん<ruby>食<rt>た</rt></ruby>べていただきます。<br>*(Nhất định ạ! Em sẽ mời bác ăn nhiều món Việt ạ.)* |

---

## Tình huống 10 — Phòng họp · 15:00, kết thúc 1-on-1

| Vai | Lời thoại |
|---|---|
| Yamamoto | じゃあ、<ruby>今日<rt>きょう</rt></ruby>はここまで。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して、また<ruby>2月末<rt>にがつまつ</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>き<ruby>話<rt>はな</rt></ruby>そう。<br>*(Vậy hôm nay đến đây. Bàn với gia đình rồi cuối tháng 2 nói tiếp.)* |
| Linh | はい。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>私<rt>わたし</rt></ruby>の<ruby>将来<rt>しょうらい</rt></ruby>をこんなに<ruby>考<rt>かんが</rt></ruby>えてくれて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Vâng. Em cảm ơn bác rất nhiều ạ. Bác nghĩ cho tương lai em đến vậy, em rất biết ơn ạ.)* |
| Yamamoto | リンさんは<ruby>2年間<rt>にねんかん</rt></ruby><ruby>真面目<rt>まじめ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>いてくれた。<ruby>家族<rt>かぞく</rt></ruby>みたいなものだよ。<br>*(2 năm em làm việc chăm chỉ. Như người nhà rồi đấy.)* |
| Linh | (mắt rưng rưng) ありがとうございます...<br>*(... Cảm ơn bác ạ.)* |
| Yamamoto | はは、<ruby>泣<rt>な</rt></ruby>かないで。<ruby>3年目<rt>さんねんめ</rt></ruby>もあるし、その<ruby>後<rt>あと</rt></ruby>もある。さあ、<ruby>仕事<rt>しごと</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ろう。<ruby>堆肥<rt>たいひ</rt></ruby>の<ruby>切<rt>き</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しが<ruby>待<rt>ま</rt></ruby>ってる。<br>*(Hà hà, đừng khóc. Còn năm 3, còn sau đó nữa mà. Nào, quay lại làm việc thôi. Phân ủ còn chờ đảo kìa.)* |

---

## Tình huống 11 — Nhà kính · Buổi chiều, kohai Nam vào tìm Linh

| Vai | Lời thoại |
|---|---|
| Nam | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>し<ruby>相談<rt>そうだん</rt></ruby>してもいい?<br>*(Chị Linh ơi, em xin tư vấn một chút được không?)* |
| Linh | もちろん。どうしたの?<br>*(Tất nhiên rồi. Sao thế?)* |
| Nam | <ruby>冬<rt>ふゆ</rt></ruby>になってから<ruby>気持<rt>きも</rt></ruby>ちが<ruby>沈<rt>しず</rt></ruby>む。<ruby>家族<rt>かぞく</rt></ruby>に<ruby>会<rt>あ</rt></ruby>いたい。<ruby>仕事<rt>しごと</rt></ruby>も<ruby>少<rt>すく</rt></ruby>なくて<ruby>退屈<rt>たいくつ</rt></ruby>で...<br>*(Vào mùa đông em hay buồn. Em nhớ nhà. Việc cũng ít, em thấy chán...)* |
| Linh | わかる、<ruby>私<rt>わたし</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>そうだった。<ruby>冬季<rt>とうき</rt></ruby>うつっていうらしい。<ruby>太陽<rt>たいよう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないから<ruby>体<rt>からだ</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>が<ruby>変<rt>か</rt></ruby>わる。<br>*(Chị hiểu, năm ngoái chị cũng vậy. Gọi là trầm cảm mùa đông. Ít nắng nên cơ thể thay đổi.)* |
| Nam | どうすればいい?<br>*(Phải làm sao ạ?)* |
| Linh | <ruby>3<rt>みっ</rt></ruby>つ<ruby>提案<rt>ていあん</rt></ruby>するね。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>朝<rt>あさ</rt></ruby><ruby>外<rt>そと</rt></ruby>に<ruby>15分<rt>じゅうごふん</rt></ruby><ruby>出<rt>で</rt></ruby>る。<ruby>太陽<rt>たいよう</rt></ruby>の<ruby>光<rt>ひかり</rt></ruby>を<ruby>浴<rt>あ</rt></ruby>びる。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>運動<rt>うんどう</rt></ruby>する。<ruby>寮<rt>りょう</rt></ruby>の<ruby>周<rt>まわ</rt></ruby>りを<ruby>歩<rt>ある</rt></ruby>くだけでもいい。<ruby>三<rt>みっ</rt></ruby>つ、ベトナム<ruby>料理<rt>りょうり</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る。<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>は<ruby>薬<rt>くすり</rt></ruby>。<br>*(Chị đề xuất 3 cách. Một, sáng ra ngoài 15 phút. Tắm nắng. Hai, vận động. Đi bộ quanh ký túc cũng được. Ba, nấu món Việt. Vị quê hương là thuốc đấy.)* |
| Nam | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>今度<rt>こんど</rt></ruby>の<ruby>休<rt>やす</rt></ruby>みに<ruby>一緒<rt>いっしょ</rt></ruby>にフォーを<ruby>作<rt>つく</rt></ruby>りませんか?<br>*(Chị Linh, hôm nghỉ chị cùng em nấu phở được không?)* |
| Linh | いいね!<ruby>日曜日<rt>にちようび</rt></ruby><ruby>午後<rt>ごご</rt></ruby>、<ruby>寮<rt>りょう</rt></ruby>のキッチンで。デウィさんとマルクさんも<ruby>呼<rt>よ</rt></ruby>ぼう。<br>*(Hay đấy! Chiều chủ nhật ở bếp ký túc. Mời cả Dewi và Mark nữa.)* |

---

## Tình huống 12 — Cảnh tiếng Việt — Tối thứ 7, gọi điện về cho cả nhà

> Cảnh tiếng Việt — Họp gia đình qua Zalo: bố, mẹ, em trai Linh ngồi quây bên màn hình.

| Vai | Lời thoại |
|---|---|
| Linh | Cả nhà ơi, hôm nay con cần họp gia đình. Có chuyện quan trọng. |
| Mẹ | Trời ơi con nói nghe đáng sợ vậy. Có chuyện gì? |
| Linh | Không phải chuyện xấu mẹ ơi. 親方 Yamamoto hôm trước nói chuyện 1-1 với con, ổng muốn con ở lại thêm 5 năm theo diện 特定技能 SSW sau khi xong 3 năm 技能実習. |
| Ba | 5 năm nữa? Tức là tổng cộng 8 năm bên đó? |
| Linh | Dạ. Lương cao hơn nhiều, có thể đổi việc trong ngành, sau 5 năm có thể chuyển 2号 thì kéo gia đình sang được, có đường vĩnh trú. |
| Mẹ | (im lặng) Con gái... mẹ muốn con về. Con đi 2 năm rồi mẹ thấy con khác rồi. Mẹ nhớ con. |
| Linh | Mẹ ơi... con cũng nhớ mẹ. Nhưng nghe con nói hết đã. Bác Yamamoto hứa dạy con kỹ thuật JAS hữu cơ. Cái này về Việt Nam mở trang trại rau sạch là vàng. |
| Ba | Ba nghe Tanaka tử tế từ năm ngoái rồi. Ba thấy đó là cơ hội thật, không phải dụ dỗ. Lương SSW chính thức đàng hoàng, không phải 3 năm xong là hết. |
| Em trai | Chị Linh ơi, em đang học cấp 3, em cũng định sang Nhật học nông nghiệp luôn nè. Chị ở lại thì sau này hai chị em làm chung trang trại ở Đồng Tháp. |
| Linh | Cảm ơn em. Mẹ ơi, con xin mẹ cho con thêm 5 năm. Con hứa mỗi năm về thăm nhà 1 lần. Năm thứ 4 nếu mẹ qua thăm con cũng được, con lo tiền vé hết. |
| Mẹ | (rớm nước mắt) ... Mẹ chịu thôi. Nhưng con phải hứa giữ sức khỏe. Đừng có ham làm quá. |
| Linh | Dạ con hứa. Con thương mẹ, thương ba, thương em. |
| Ba | Ờ. Con cứ trả lời bác Yamamoto là gia đình ủng hộ. Mai mốt 2 cha con làm farm chung, ba nói rồi mà. |
| Linh | Dạ. Vậy chiều mai con báo lại bác Yamamoto nha. Cảm ơn cả nhà nhiều. |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜を<ruby>育<rt>そだ</rt></ruby>てる** — Nuôi dưỡng ~ (kể cả đất, không chỉ sinh vật)
- **〜<ruby>選択肢<rt>せんたくし</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つあると<ruby>思<rt>おも</rt></ruby>います** — Em nghĩ có 3 lựa chọn
- **<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、〜** — Thật lòng mà nói thì ~
- **<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させてください** — Cho em bàn với gia đình ạ
- **<ruby>少<rt>すこ</rt></ruby>し<ruby>心配<rt>しんぱい</rt></ruby>なことがあります** — Em có chút lo lắng
- **〜<ruby>感謝<rt>かんしゃ</rt></ruby>しています** — Em biết ơn ~ (formal hơn ありがとう)
- **〜を<ruby>勧<rt>すす</rt></ruby>めたい** — Bác/Tôi muốn khuyên ~

> Từ vựng & mẫu câu chương này: <ruby>堆肥<rt>たいひ</rt></ruby>・<ruby>切<rt>き</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>し・<ruby>発酵<rt>はっこう</rt></ruby>・<ruby>微生物<rt>びせいぶつ</rt></ruby>・<ruby>嫌気性<rt>けんきせい</rt></ruby>・<ruby>土壌分析<rt>どじょうぶんせき</rt></ruby>・pH・<ruby>窒素<rt>ちっそ</rt></ruby>・<ruby>燐<rt>りん</rt></ruby>・<ruby>加里<rt>かり</rt></ruby>・<ruby>有機物含量<rt>ゆうきぶつがんりょう</rt></ruby>・<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>3号<rt>さんごう</rt></ruby>・<ruby>特定技能<rt>とくていぎのう</rt></ruby>・<ruby>登録支援機関<rt>とうろくしえんきかん</rt></ruby>・<ruby>永住権<rt>えいじゅうけん</rt></ruby>・JAS<ruby>認証<rt>にんしょう</rt></ruby>・<ruby>冬季<rt>とうき</rt></ruby>うつ.

---

## Bí quyết chương

- **「<ruby>土<rt>つち</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てる」 — triết lý nông nghiệp Nhật** — Đất là cơ thể sống, có vi sinh, có chu kỳ. Mùa đông là lúc đất nghỉ và "ăn" phân ủ. Đem triết lý này về Việt Nam là khác biệt với canh tác thông thường.
- **<ruby>堆肥<rt>たいひ</rt></ruby><ruby>切<rt>き</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>し** — 2 tuần đảo 1 lần là then chốt. Để yên là yếm khí, hôi. Đảo đúng cách thì lên đến 60-70°C, tiêu diệt mầm bệnh.
- **1-on-1 với 親方 năm cuối là quyết định lớn** — Chuẩn bị trước 3 lựa chọn rõ ràng + lý do mỗi cái. Người Nhật trọng người có suy nghĩ độc lập chứ không phải "bác bảo sao em nghe vậy".
- **<ruby>特定技能<rt>とくていぎのう</rt></ruby> 1号 vs 2号** — 1号 = 5 năm, không gia đình. 2号 = không giới hạn năm, gọi gia đình, gần như vĩnh trú. Mục tiêu của TTS giỏi là leo lên 2号.
- **<ruby>冬季<rt>とうき</rt></ruby>うつ (trầm cảm mùa đông)** — Có thật, do thiếu nắng vùng Kanto. Cách chống: tắm nắng sáng + vận động + nấu món quê. Sempai phải chủ động hỏi kohai.
- **Họp gia đình quyết định 5 năm tiếp** — Quyết định lớn không tự một mình. Mẹ thường níu, ba thường thực dụng — chuẩn bị tâm lý cho cả hai. Hứa lịch về thăm cụ thể, không hứa chung chung.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 冷える | ひえる | LÃNH | trở lạnh, hạ nhiệt |
| ハウス | — | — | nhà kính (greenhouse) |
| 苗 | なえ | MIÊU | cây con |
| 植え替え | うえかえ | THỰC THẾ | đảo cây, sang chậu |
| 育てる | そだてる | DỤC | nuôi dưỡng |
| 堆肥 | たいひ | ĐÔI PHỈ | phân ủ |
| 牛糞 | ぎゅうふん | NGƯU PHÂN | phân bò |
| もみ殻 | もみがら | NHỊ XÁC | vỏ trấu |
| 発酵 | はっこう | PHÁT TẢO | lên men |
| 湯気 | ゆげ | THANG KHÍ | hơi nước nóng |
| 微生物 | びせいぶつ | VI SINH VẬT | vi sinh vật |
| 証拠 | しょうこ | CHỨNG CỨ | chứng cứ |
| 切り返し | きりかえし | THIẾT PHẢN | đảo ngược (phân ủ) |
| 酸素 | さんそ | TOAN TỐ | oxy |
| 嫌気性 | けんきせい | HIỀM KHÍ TÍNH | yếm khí |
| フォーク | — | — | nĩa (loại to để xúc phân) |
| 土壌分析 | どじょうぶんせき | THỔ NHƯỠNG PHÂN TÍCH | phân tích đất |
| 窒素 | ちっそ | TRỆ TỐ | đạm (N) |
| 燐 | りん | LÂN | lân (P) |
| 加里 | かり | GIA LÝ | kali (K) |
| 有機物含量 | ゆうきぶつがんりょう | HỮU CƠ VẬT HÀM LƯỢNG | hàm lượng hữu cơ |
| 最適 | さいてき | TỐI THÍCH | tối ưu |
| 合格 | ごうかく | HỢP CÁCH | đậu, trúng tuyển |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | thử thách, chinh phục |
| 集中 | しゅうちゅう | TẬP TRUNG | tập trung |
| 勇気 | ゆうき | DŨNG KHÍ | dũng khí |
| 土壌 | どじょう | THỔ NHƯỠNG | đất (thuật ngữ khoa học) |
| 専門用語 | せんもんようご | CHUYÊN MÔN DỤNG NGỮ | thuật ngữ chuyên môn |
| 検定 | けんてい | KIỂM ĐỊNH | kỳ thi sát hạch |
| 面談 | めんだん | DIỆN ĐÀM | gặp riêng (1-on-1) |
| 技能実習 | ぎのうじっしゅう | KỸ NĂNG THỰC TẬP | thực tập kỹ năng (visa) |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | lựa chọn |
| 帰国 | きこく | QUY QUỐC | về nước |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | kỹ năng đặc định (SSW) |
| 整理 | せいり | CHỈNH LÝ | sắp xếp, hệ thống |
| 勧める | すすめる | KHUYẾN | khuyên, đề xuất |
| 賃金 | ちんぎん | NHẪM KIM | tiền lương |
| 残業代 | ざんぎょうだい | TÀN NGHIỆP ĐẠI | tiền tăng ca |
| 転職 | てんしょく | CHUYỂN CHỨC | chuyển việc |
| 分野 | ぶんや | PHÂN DÃ | lĩnh vực |
| 永住権 | えいじゅうけん | VĨNH TRỤ QUYỀN | quyền vĩnh trú |
| 才能 | さいのう | TÀI NĂNG | tài năng |
| 成長 | せいちょう | THÀNH TRƯỞNG | trưởng thành, phát triển |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | đoàn thể quản lý (TTS) |
| 登録支援機関 | とうろくしえんきかん | ĐĂNG LỤC CHI VIỆN CƠ QUAN | tổ chức hỗ trợ đăng ký (SSW) |
| 役所 | やくしょ | DỊCH SỞ | cơ quan hành chính |
| 税金 | ぜいきん | THUẾ KIM | tiền thuế |
| 寮 | りょう | LIÊU | ký túc xá |
| 家賃 | やちん | GIA NHẪM | tiền thuê nhà |
| 安心 | あんしん | AN TÂM | yên tâm |
| 市場 | しじょう | THỊ TRƯỜNG | thị trường |
| 関心 | かんしん | QUAN TÂM | sự quan tâm |
| 資本 | しほん | TƯ BẢN | vốn |
| 資金 | しきん | TƯ KIM | vốn (tiền tích lũy) |
| 認証 | にんしょう | NHẬN CHỨNG | chứng nhận |
| ノウハウ | — | — | bí quyết, know-how |
| 感謝 | かんしゃ | CẢM TẠ | biết ơn |
| 沈む | しずむ | TRẦM | chìm xuống, ủ rũ |
| 冬季うつ | とうきうつ | ĐÔNG QUÝ — | trầm cảm mùa đông |
| 退屈 | たいくつ | THỐI KHUẤT | chán, buồn tẻ |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 故郷 | こきょう | CỐ HƯƠNG | quê hương |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (841000012, 800000041, NULL, 'markdown_book', 'T12. Tổng kết năm 2 — N3, 検定 3級, chuẩn bị SSW (2年目総まとめ・3年目へ)', '# Sách thực tập sinh nông nghiệp năm 2 · T12. Tổng kết năm 2 — N3, 検定 3級, chuẩn bị SSW (2年目総まとめ・3年目へ)

> **Mục tiêu nhân vật:** Linh (24 tuổi, Đồng Tháp, năm 2 kết thúc). Học các mẫu hội thoại tiếng Nhật tổng kết và chuyển giai đoạn: báo cáo thành tích lên 監理団体, phỏng vấn chuyển 特定技能, mua vé về Việt Nam ngắn ngày, dạy lại kohai mới, viết thư tay 感謝状 cho 親方, chia tay tạm thời nông trại.

---

## Bối cảnh

Tháng 3 năm 2027. Vụ xuân chuẩn bị bắt đầu. Linh đã quyết định chuyển sang <ruby>特定技能<rt>とくていぎのう</rt></ruby> 1号 sau khi kết thúc 技能実習 vào tháng 8. Cô vừa nhận kết quả 検定 nông nghiệp 3級 (đậu), tổng kết năm 2 trước 監理団体, làm thủ tục phỏng vấn chuyển visa, đặt vé về Việt Nam 10 ngày vào tháng 4. Đồng thời sắp đón đợt TTS năm 1 mới, Linh sẽ là sempai. Chương này tập trung tổng kết, mẫu câu trang trọng cảm ơn, phỏng vấn visa, và bàn giao kinh nghiệm.

---

## Tình huống 1 — Phòng họp 監理団体 · 10:00, báo cáo tổng kết năm 2

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>2年目<rt>にねんめ</rt></ruby>の<ruby>総括<rt>そうかつ</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Em Nguyễn vất vả rồi. Ta bắt đầu phỏng vấn tổng kết năm 2 nhé.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong cô chỉ bảo ạ.)* |
| Sato | まず、<ruby>成果<rt>せいか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。N3<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>農業<rt>のうぎょう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、トラクター<ruby>安全教育<rt>あんぜんきょういく</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>。<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>1年<rt>いちねん</rt></ruby>でした。<br>*(Trước tiên xác nhận thành tích. Đậu N3, đậu 検定 nông nghiệp 3 cấp, hoàn thành tập huấn máy cày. 1 năm tuyệt vời.)* |
| Linh | ありがとうございます。<ruby>監理団体<rt>かんりだんたい</rt></ruby>のサポートと、<ruby>山本<rt>やまもと</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>のおかげです。<br>*(Cảm ơn cô ạ. Nhờ sự hỗ trợ của 監理団体 và bác 親方 Yamamoto ạ.)* |
| Sato | <ruby>謙虚<rt>けんきょ</rt></ruby>ですね。<ruby>事故<rt>じこ</rt></ruby>もゼロ、<ruby>欠勤<rt>けっきん</rt></ruby>もなし、<ruby>同僚<rt>どうりょう</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby>も<ruby>最高<rt>さいこう</rt></ruby>。<ruby>誇<rt>ほこ</rt></ruby>っていいです。<br>*(Khiêm tốn quá. Tai nạn 0, vắng mặt 0, đồng nghiệp đánh giá cao nhất. Cứ tự hào đi.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, cảm ơn cô ạ.)* |
| Sato | では<ruby>3年目<rt>さんねんめ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Vậy hãy cho cô nghe kế hoạch năm 3.)* |

---

## Tình huống 2 — Phòng họp 監理団体 · 10:30, thông báo quyết định SSW

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>した<ruby>結果<rt>けっか</rt></ruby>、<ruby>3年目<rt>さんねんめ</rt></ruby>を<ruby>終<rt>お</rt></ruby>えた<ruby>後<rt>あと</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1号<rt>いちごう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>することに<ruby>決<rt>き</rt></ruby>めました。<br>*(Kết quả bàn với gia đình, em quyết định sau khi xong năm 3 sẽ chuyển sang SSW 1号 ạ.)* |
| Sato | おお、<ruby>嬉<rt>うれ</rt></ruby>しい<ruby>知<rt>し</rt></ruby>らせです。<ruby>田中<rt>たなか</rt></ruby>さんからも<ruby>強<rt>つよ</rt></ruby>く<ruby>推薦<rt>すいせん</rt></ruby>がありました。<br>*(Ồ, tin vui quá. Bác Yamamoto cũng có giới thiệu mạnh nhé.)* |
| Linh | はい。<ruby>家族<rt>かぞく</rt></ruby>も<ruby>応援<rt>おうえん</rt></ruby>してくれています。<ruby>5年<rt>ごねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いて、<ruby>有機<rt>ゆうき</rt></ruby><ruby>栽培<rt>さいばい</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけて、ベトナムに<ruby>戻<rt>もど</rt></ruby>って<ruby>農業<rt>のうぎょう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めたいです。<br>*(Vâng. Gia đình ủng hộ em. Em muốn làm 5 năm, học kỹ thuật canh tác hữu cơ rồi về Việt Nam khởi nghiệp nông nghiệp ạ.)* |
| Sato | <ruby>明確<rt>めいかく</rt></ruby>な<ruby>目標<rt>もくひょう</rt></ruby>ですね。<ruby>手続<rt>てつづ</rt></ruby>きを<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>8月<rt>はちがつ</rt></ruby>の<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>の<ruby>2<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>から<ruby>申請<rt>しんせい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mục tiêu rõ ràng. Cô giải thích thủ tục. 2 tháng trước khi hoàn thành thực tập tháng 8 thì bắt đầu xin.)* |
| Linh | <ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Hồ sơ cần những gì ạ?)* |
| Sato | N3<ruby>合格証<rt>ごうかくしょう</rt></ruby>、<ruby>農業<rt>のうぎょう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby><ruby>合格証<rt>ごうかくしょう</rt></ruby>、<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>修了証<rt>しゅうりょうしょう</rt></ruby>、<ruby>健康診断書<rt>けんこうしんだんしょ</rt></ruby>、パスポート、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>。リストを<ruby>渡<rt>わた</rt></ruby>します。<br>*(Giấy chứng N3, giấy chứng 検定 3 cấp, giấy hoàn thành thực tập, khám sức khỏe, hộ chiếu, giấy cư trú. Cô đưa danh sách.)* |
| Linh | はい、ありがとうございます。<br>*(Vâng, em cảm ơn cô ạ.)* |

---

## Tình huống 3 — Phòng họp · 11:00, hỏi về chuyến về Việt Nam ngắn ngày

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>4月<rt>しがつ</rt></ruby>に<ruby>10日間<rt>とおかかん</rt></ruby>ベトナムに<ruby>帰<rt>かえ</rt></ruby>りたいのですが、<ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Cô Sato, tháng 4 em muốn về Việt Nam 10 ngày, có được không ạ?)* |
| Sato | もちろん<ruby>可能<rt>かのう</rt></ruby>。<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>っているはずです。<ruby>田中<rt>たなか</rt></ruby>さんとは<ruby>話<rt>はな</rt></ruby>しましたか?<br>*(Tất nhiên được. Phép có lương em chắc còn. Đã nói với bác Yamamoto chưa?)* |
| Linh | はい、<ruby>了承<rt>りょうしょう</rt></ruby>を<ruby>得<rt>え</rt></ruby>ました。<ruby>4月<rt>しがつ</rt></ruby><ruby>10日<rt>とおか</rt></ruby>から<ruby>20日<rt>はつか</rt></ruby>まで、<ruby>10日間<rt>とおかかん</rt></ruby>です。<br>*(Vâng, em đã được đồng ý ạ. Từ 10 đến 20 tháng 4, 10 ngày ạ.)* |
| Sato | わかりました。<ruby>再入国許可<rt>さいにゅうこくきょか</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>があります。<ruby>出発<rt>しゅっぱつ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby>か<ruby>月前<rt>げつまえ</rt></ruby>までに<ruby>入管<rt>にゅうかん</rt></ruby>へ。<br>*(Hiểu rồi. Phải xin tái nhập quốc. 1 tháng trước khi đi đến cục xuất nhập cảnh.)* |
| Linh | <ruby>3月末<rt>さんがつまつ</rt></ruby>までですね。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Đến cuối tháng 3 ạ. Em ghi nhớ ạ.)* |
| Sato | あと<ruby>飛行機<rt>ひこうき</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>は<ruby>早<rt>はや</rt></ruby>めに。<ruby>4月<rt>しがつ</rt></ruby>は<ruby>桜<rt>さくら</rt></ruby>シーズンで<ruby>高<rt>たか</rt></ruby>くなります。<br>*(Còn vé máy bay đặt sớm. Tháng 4 mùa hoa anh đào nên đắt.)* |
| Linh | はい、<ruby>今晩<rt>こんばん</rt></ruby><ruby>調<rt>しら</rt></ruby>べます。<br>*(Vâng tối nay em tra ạ.)* |

---

## Tình huống 4 — Ký túc, buổi tối · 20:00, đặt vé máy bay

*Linh ngồi trước laptop, gọi điện thoại cho đại lý vé tiếng Nhật.*

| Vai | Lời thoại |
|---|---|
| Đại lý | お<ruby>電話<rt>でんわ</rt></ruby>ありがとうございます。トラベルABCでございます。<br>*(Cảm ơn quý khách đã gọi. Travel ABC xin nghe.)* |
| Linh | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、<ruby>航空券<rt>こうくうけん</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>をしたいのですが。<br>*(Xin lỗi, em muốn đặt vé máy bay ạ.)* |
| Đại lý | はい。<ruby>出発<rt>しゅっぱつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>日<rt>にち</rt></ruby>、どちら<ruby>行<rt>ゆ</rt></ruby>きでしょうか?<br>*(Vâng. Xuất phát ngày nào, đi đâu ạ?)* |
| Linh | <ruby>4月<rt>しがつ</rt></ruby><ruby>10日<rt>とおか</rt></ruby>、<ruby>成田<rt>なりた</rt></ruby>からホーチミン、<ruby>復路<rt>ふくろ</rt></ruby>は<ruby>4月<rt>しがつ</rt></ruby><ruby>20日<rt>はつか</rt></ruby>です。<br>*(Mùng 10 tháng 4, từ Narita đi Hồ Chí Minh, chiều về 20/4 ạ.)* |
| Đại lý | <ruby>承知<rt>しょうち</rt></ruby>しました。エコノミークラスでよろしいですか?<br>*(Đã rõ ạ. Hạng phổ thông được chứ ạ?)* |
| Linh | はい、エコノミーで。<ruby>一番<rt>いちばん</rt></ruby><ruby>安<rt>やす</rt></ruby>い<ruby>便<rt>びん</rt></ruby>はおいくらですか?<br>*(Vâng, phổ thông. Chuyến rẻ nhất bao nhiêu ạ?)* |
| Đại lý | ベトナム<ruby>航空<rt>こうくう</rt></ruby>の<ruby>直行<rt>ちょっこう</rt></ruby><ruby>便<rt>びん</rt></ruby>で<ruby>往復<rt>おうふく</rt></ruby><ruby>9万<rt>きゅうまん</rt></ruby><ruby>5千<rt>ごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>諸<rt>しょ</rt></ruby><ruby>税<rt>ぜい</rt></ruby><ruby>込<rt>こ</rt></ruby>みでございます。<br>*(Hàng VN trực bay, khứ hồi 95.000 yên, đã gồm thuế ạ.)* |
| Linh | では、それでお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>支払<rt>しはら</rt></ruby>いはコンビニ<ruby>払<rt>ばら</rt></ruby>いでもいいですか?<br>*(Vậy em đặt vé đó ạ. Thanh toán ở konbini được không ạ?)* |
| Đại lý | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でございます。<ruby>3日<rt>みっか</rt></ruby><ruby>以内<rt>いない</rt></ruby>にお<ruby>支払<rt>しはら</rt></ruby>いください。<br>*(Vâng, được ạ. Trong 3 ngày xin thanh toán ạ.)* |
| Linh | わかりました。ありがとうございました。<br>*(Em hiểu rồi. Cảm ơn anh nhiều ạ.)* |

---

## Tình huống 5 — Sân nông trại · Ngày hôm sau 8:00, đón TTS năm 1 mới

*Hai bạn TTS mới (Tuấn, Hằng) vừa từ Narita xuống, bác Yamamoto và Linh đứng đón ở sân.*

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>紹介<rt>しょうかい</rt></ruby>するよ。<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>のトゥアンさんとハンさん。<br>*(Linh, bác giới thiệu nhé. TTS mới là Tuấn và Hằng.)* |
| Linh | (cúi chào) はじめまして、グエン・ティ・リンです。<ruby>2年目<rt>にねんめ</rt></ruby>のセンパイになります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào lần đầu, mình là Nguyễn Thị Linh. Là sempai năm 2. Mong các em chỉ bảo.)* |
| Tuấn | (cúi rất sâu) はじめまして、トゥアンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào lần đầu, em tên Tuấn ạ. Mong chị giúp đỡ ạ.)* |
| Linh | (chuyển sang tiếng Việt nhẹ giọng) Hai em đường xa mệt rồi nhỉ. Có bị say máy bay không? |
| Hằng | Trời chị Linh nói tiếng Việt được! Em cứ tưởng phải nói tiếng Nhật suốt em sợ chết khiếp. |
| Linh | (cười) Yên tâm, từ từ. Trước mặt 親方 thì cố tiếng Nhật, riêng với chị thì nói tiếng Việt được. Mà cứ nói tiếng Nhật càng nhiều càng tốt. |
| Yamamoto | リンさん、ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>してあげて。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>だから。<br>*(Linh giải thích bằng tiếng Việt giúp họ đi. Tháng đầu vất vả lắm.)* |
| Linh | はい、<ruby>任<rt>まか</rt></ruby>せてください。<br>*(Vâng, để em lo ạ.)* |

---

## Tình huống 6 — Ký túc · Buổi tối, sempai-kohai 1 đối 1 với Tuấn

| Vai | Lời thoại |
|---|---|
| Tuấn | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>し<ruby>聞<rt>き</rt></ruby>いてもいいですか? <ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>眠<rt>ねむ</rt></ruby>れません。<br>*(Chị Linh ơi, em hỏi chút được không? Em căng thẳng quá ngủ không được.)* |
| Linh | わかる。<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>そうだった。<ruby>2年前<rt>にねんまえ</rt></ruby>。<br>*(Chị hiểu. Hồi đầu chị cũng thế. 2 năm trước.)* |
| Tuấn | <ruby>農場<rt>のうじょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>、できるかな...<ruby>農業<rt>のうぎょう</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>がほとんどなくて。<br>*(Em không biết có làm việc được không... Em hầu như không có kinh nghiệm làm nông.)* |
| Linh | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>もメコンで<ruby>米<rt>こめ</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるのを<ruby>見<rt>み</rt></ruby>たことしかなかった。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>3<rt>みっ</rt></ruby>つだけ。<ruby>挨拶<rt>あいさつ</rt></ruby>、<ruby>返事<rt>へんじ</rt></ruby>、<ruby>報連相<rt>ほうれんそう</rt></ruby>。<br>*(Yên tâm. Chị hồi đó cũng chỉ thấy người ta trồng lúa ở Mekong thôi. Quan trọng có 3 thứ. Chào hỏi, trả lời, ho-ren-so.)* |
| Tuấn | ほうれんそう?<br>*(Ho-ren-so?)* |
| Linh | <ruby>報告<rt>ほうこく</rt></ruby>、<ruby>連絡<rt>れんらく</rt></ruby>、<ruby>相談<rt>そうだん</rt></ruby>。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>く。<ruby>間違<rt>まちが</rt></ruby>えたらすぐ<ruby>言<rt>い</rt></ruby>う。<ruby>隠<rt>かく</rt></ruby>すと<ruby>大<rt>おお</rt></ruby>きな<ruby>問題<rt>もんだい</rt></ruby>になる。<br>*(Báo cáo, liên lạc, bàn bạc. Không hiểu thì hỏi ngay. Sai thì nói ngay. Giấu là chuyện nhỏ thành to.)* |
| Tuấn | わかりました。あと、<ruby>日本語<rt>にほんご</rt></ruby>はどうやって<ruby>勉強<rt>べんきょう</rt></ruby>すればいいですか?<br>*(Em hiểu rồi. Còn tiếng Nhật học sao chị?)* |
| Linh | <ruby>毎日<rt>まいにち</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>がいい。それから<ruby>農場<rt>のうじょう</rt></ruby>で<ruby>聞<rt>き</rt></ruby>いた<ruby>言葉<rt>ことば</rt></ruby>をメモする。<ruby>1年<rt>いちねん</rt></ruby><ruby>続<rt>つづ</rt></ruby>ければN4は<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>する。<br>*(Mỗi ngày 30 phút, sáng là tốt nhất. Rồi ghi chú từ nghe được ở trang trại. Kiên trì 1 năm chắc chắn đậu N4.)* |
| Tuấn | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Chị Linh, em cảm ơn chị thật sự ạ.)* |

---

## Tình huống 7 — Nhà kho · Ngày sau, dạy Tuấn cách 報連相

*Tuấn vừa làm rớt bịch hạt giống, vài hạt rơi ra sàn.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (luống cuống) リン<ruby>姉<rt>ねえ</rt></ruby>さん、どうしよう...<ruby>種<rt>たね</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>落<rt>お</rt></ruby>ちた。<ruby>言<rt>い</rt></ruby>わなくてもいいですか?<br>*(Chị Linh, làm sao đây... hạt giống rớt một ít. Không nói có được không ạ?)* |
| Linh | ダメ。すぐ<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>して。<br>*(Không được. Báo bác Yamamoto ngay đi.)* |
| Tuấn | でも<ruby>怒<rt>おこ</rt></ruby>られるのが<ruby>怖<rt>こわ</rt></ruby>いです...<br>*(Nhưng em sợ bị mắng...)* |
| Linh | <ruby>隠<rt>かく</rt></ruby>すほうがもっと<ruby>怒<rt>おこ</rt></ruby>られる。すぐ<ruby>言<rt>い</rt></ruby>うと<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>怒<rt>おこ</rt></ruby>らない、むしろほめてくれる。<ruby>本当<rt>ほんとう</rt></ruby>に。<br>*(Giấu mới bị mắng to. Nói ngay bác Yamamoto không mắng, còn khen ấy. Thật đấy.)* |
| Tuấn | (đi đến chỗ Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、すみません、<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>種<rt>たね</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>落<rt>お</rt></ruby>としてしまいました。<br>*(Bác Yamamoto, xin lỗi, em có báo cáo. Em làm rớt hạt giống một ít ạ.)* |
| Yamamoto | おお、すぐ<ruby>報告<rt>ほうこく</rt></ruby>してくれたんだ。<ruby>偉<rt>えら</rt></ruby>い。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しなら<ruby>問題<rt>もんだい</rt></ruby>ない。<ruby>箒<rt>ほうき</rt></ruby>で<ruby>掃<rt>はい</rt></ruby>いて、<ruby>使<rt>つか</rt></ruby>えるなら<ruby>使<rt>つか</rt></ruby>おう。<ruby>次<rt>つぎ</rt></ruby>は<ruby>袋<rt>ふくろ</rt></ruby>の<ruby>口<rt>くち</rt></ruby>をしっかり<ruby>持<rt>も</rt></ruby>ってね。<br>*(Ồ, báo cáo ngay đấy. Giỏi. Yên tâm, ít thôi không sao. Quét bằng chổi, còn dùng được thì dùng. Lần sau giữ chặt miệng bao nhé.)* |
| Tuấn | (nhìn Linh, mắt sáng) <ruby>本当<rt>ほんとう</rt></ruby>だ...<br>*(Đúng thật...)* |
| Linh | (cười) <ruby>言<rt>い</rt></ruby>ったでしょ。<br>*(Chị nói rồi mà.)* |

---

## Tình huống 8 — Nhà kho · 10:30, viết 感謝状 cho bác Yamamoto

*Linh ngồi bàn nhỏ, viết thư tay bằng giấy washi.*

| Vai | Lời thoại |
|---|---|
| Linh | (cầm thư đến, cúi đầu) <ruby>田中<rt>たなか</rt></ruby>さん、ちょっとお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<br>*(Bác Yamamoto, bác có chút thời gian không ạ?)* |
| Yamamoto | うん、どうした?<br>*(Ờ, sao thế?)* |
| Linh | <ruby>2年間<rt>にねんかん</rt></ruby>のお<ruby>礼<rt>れい</rt></ruby>として、<ruby>手紙<rt>てがみ</rt></ruby>を<ruby>書<rt>か</rt></ruby>きました。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>っていただけますか?<br>*(Để cảm ơn 2 năm qua, em viết thư ạ. Bác nhận giúp em được không ạ?)* |
| Yamamoto | (mỉm cười, hơi cảm động) <ruby>手紙<rt>てがみ</rt></ruby>...ありがとう。<ruby>読<rt>よ</rt></ruby>んでもいい?<br>*(Thư à... cảm ơn. Bác đọc nhé?)* |
| Linh | はい、どうぞ。<br>*(Vâng, mời bác.)* |
| Yamamoto | (đọc lẩm bẩm) 「<ruby>田中<rt>たなか</rt></ruby>さま、<ruby>2年間<rt>にねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>もろくに<ruby>話<rt>はな</rt></ruby>せず、<ruby>農業<rt>のうぎょう</rt></ruby>のことも<ruby>何<rt>なに</rt></ruby>も<ruby>知<rt>し</rt></ruby>りませんでした。<ruby>田中<rt>たなか</rt></ruby>さまは<ruby>私<rt>わたし</rt></ruby>を<ruby>娘<rt>むすめ</rt></ruby>のように<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>ててくださいました...」<br>*("Kính gửi bác Yamamoto, 2 năm qua em đã được bác giúp đỡ rất nhiều. Khi mới sang Nhật, tiếng Nhật em không nói thông, nông nghiệp em cũng không biết gì. Bác đã coi em như con gái mà chỉ bảo...")* |
| Yamamoto | (giọng nghẹn) ...ありがとう、リンさん。<ruby>大切<rt>たいせつ</rt></ruby>にする。<ruby>家<rt>いえ</rt></ruby>の<ruby>仏壇<rt>ぶつだん</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>くに<ruby>置<rt>お</rt></ruby>く。<br>*(... Cảm ơn Linh. Bác sẽ giữ cẩn thận. Để gần bàn thờ trong nhà.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Em cảm ơn bác rất nhiều ạ.)* |

---

## Tình huống 9 — Phòng khách nhà 親方 · 18:00, ăn tối cùng gia đình Tanaka

*Bà Tanaka mời Linh và Tuấn, Hằng ăn tối, có cả hàng xóm bác Yamada.*

| Vai | Lời thoại |
|---|---|
| Bà Tanaka | みんないらっしゃい。<ruby>今夜<rt>こんや</rt></ruby>はおでんよ。<ruby>寒<rt>さむ</rt></ruby>いから<ruby>温<rt>あたた</rt></ruby>まって。<br>*(Mọi người ngồi đi. Tối nay bác làm oden. Trời lạnh, ăn cho ấm.)* |
| Linh | わあ、おでんですか、<ruby>初<rt>はじ</rt></ruby>めて<ruby>食<rt>た</rt></ruby>べます。<ruby>美味<rt>おい</rt></ruby>しそうですね。<br>*(Wow, oden ạ, em ăn lần đầu. Trông ngon quá ạ.)* |
| Yamada | リンさん、<ruby>3年目<rt>さんねんめ</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>るんだって? その<ruby>後<rt>あと</rt></ruby>も<ruby>残<rt>のこ</rt></ruby>るんだろう。うちの<ruby>稲刈<rt>いねか</rt></ruby>りもまた<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Linh, nghe nói năm 3 cũng cố nhé? Sau đó còn ở lại nữa nhỉ. Vụ gặt lúa nhà bác lại nhờ em.)* |
| Linh | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>山田<rt>やまだ</rt></ruby>さんのコシヒカリ、<ruby>家族<rt>かぞく</rt></ruby>もおいしかったって<ruby>言<rt>い</rt></ruby>っていました。<br>*(Vâng, mong bác chỉ bảo ạ. Koshihikari của bác, gia đình em cũng khen ngon ạ.)* |
| Yamada | (cười lớn) はは、それは<ruby>嬉<rt>うれ</rt></ruby>しい。ベトナムまで<ruby>味<rt>あじ</rt></ruby>を<ruby>届<rt>とど</rt></ruby>けたか。<br>*(Hà hà, bác mừng quá. Vị tới tận Việt Nam à.)* |
| Yamamoto | リンさん、トゥアンさんとハンさん、これからもよろしくね。リンさんが<ruby>2年前<rt>にねんまえ</rt></ruby>に<ruby>来<rt>き</rt></ruby>たときと<ruby>同<rt>おな</rt></ruby>じだ。みんな<ruby>家族<rt>かぞく</rt></ruby>だ。<br>*(Linh, Tuấn, Hằng, từ nay nhờ mọi người. Giống Linh 2 năm trước. Mọi người là người nhà.)* |
| Hằng | (rưng rưng) <ruby>本当<rt>ほんとう</rt></ruby>に...<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Em... em cảm ơn bác rất nhiều ạ.)* |
| Bà Tanaka | <ruby>泣<rt>な</rt></ruby>かなくていいの。さあ、<ruby>食<rt>た</rt></ruby>べて。<ruby>大根<rt>だいこん</rt></ruby>は<ruby>味<rt>あじ</rt></ruby>が<ruby>染<rt>し</rt></ruby>みてるよ。<br>*(Đừng khóc. Nào, ăn đi. Củ cải ngấm vị lắm đấy.)* |

---

## Tình huống 10 — Sân bay Narita · 4/10, trước khi bay về Việt Nam

| Vai | Lời thoại |
|---|---|
| Yamamoto | リンさん、<ruby>気<rt>き</rt></ruby>をつけて。<ruby>家族<rt>かぞく</rt></ruby>に<ruby>会<rt>あ</rt></ruby>えるね、<ruby>嬉<rt>うれ</rt></ruby>しいでしょう。<br>*(Linh cẩn thận nhé. Sắp được gặp gia đình, vui nhỉ.)* |
| Linh | はい、すごく<ruby>嬉<rt>うれ</rt></ruby>しいです。でも<ruby>10日<rt>とおか</rt></ruby><ruby>後<rt>ご</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>戻<rt>もど</rt></ruby>ってきます。<br>*(Vâng, em vui lắm ạ. Nhưng 10 ngày sau em chắc chắn quay lại ạ.)* |
| Yamamoto | これ、お<ruby>土産<rt>みやげ</rt></ruby>。お<ruby>父<rt>とう</rt></ruby>さんとお<ruby>母<rt>かあ</rt></ruby>さんに。うちの<ruby>農場<rt>のうじょう</rt></ruby>の<ruby>野菜<rt>やさい</rt></ruby>...は<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>めないから、<ruby>梅干<rt>うめぼ</rt></ruby>しと<ruby>緑茶<rt>りょくちゃ</rt></ruby>。<br>*(Đây, quà. Cho bố mẹ em. Rau trang trại bác thì mang về không được nên đây là mơ muối với trà xanh.)* |
| Linh | ありがとうございます。<ruby>母<rt>はは</rt></ruby>は<ruby>梅干<rt>うめぼ</rt></ruby>しの<ruby>味<rt>あじ</rt></ruby>が<ruby>気<rt>き</rt></ruby>になっていました。<ruby>喜<rt>よろこ</rt></ruby>びます。<br>*(Em cảm ơn bác. Mẹ em đang tò mò vị mơ muối ạ. Chắc mẹ vui lắm.)* |
| Yamamoto | あと、ベトナムでゆっくり<ruby>休<rt>やす</rt></ruby>んで。<ruby>仕事<rt>しごと</rt></ruby>のことは<ruby>忘<rt>わす</rt></ruby>れて。<br>*(Còn về Việt Nam nghỉ ngơi cho khoẻ. Quên việc đi.)* |
| Linh | はい、ありがとうございます。トゥアンとハンをよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em cảm ơn bác. Tuấn và Hằng nhờ bác ạ.)* |
| Yamamoto | <ruby>任<rt>まか</rt></ruby>せて。じゃ、<ruby>4月<rt>しがつ</rt></ruby>20<ruby>日<rt>にち</rt></ruby>に<ruby>迎<rt>むか</rt></ruby>えに<ruby>来<rt>く</rt></ruby>るからね。<br>*(Cứ giao bác. Vậy 20/4 bác ra đón nhé.)* |
| Linh | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Vâng, mong bác ạ. Em đi đây ạ.)* |

---

## Tình huống 11 — Sân bay Tân Sơn Nhất · 23:00 cùng ngày, gặp gia đình

> Cảnh tiếng Việt — Linh vừa ra khỏi khu nhập cảnh, cả nhà đứng đón ở cửa.

| Vai | Lời thoại |
|---|---|
| Mẹ | (chạy ra ôm) Linh ơi! Con gái mẹ! Trời ơi đen rồi nha, có ốm hơn không ta. |
| Linh | Mẹ ơi! Con thương mẹ quá. Không ốm đâu mẹ, người nông trại bên đó cho ăn no lắm. |
| Ba | (ôm vai con gái) Về được rồi. Đi đường có khoẻ không con? |
| Linh | Khoẻ ba ơi. Mà ba có khoẻ không, ba gầy đi đó. |
| Em trai | Chị Linh ơi, em nè! Cho em xem điện thoại bên Nhật chị mua đi. |
| Linh | (cười) Ờ, mà mai mới khoe. Trễ rồi mình về nhà cái đã. |
| Mẹ | Mẹ nấu canh chua cá lóc với cá kho tộ ở nhà rồi. Con đói chưa? |
| Linh | Mẹ ơi, từ lúc lên máy bay con đã nhịn để dành bụng cho canh chua mẹ nấu. |
| Ba | Mà thôi mẹ nó, đi cái đã, về xe rồi nói chuyện. Trễ rồi. |
| Linh | (vừa kéo vali vừa quay sang em trai) Em ơi, chị mang về quà cho cả nhà. 親方 Yamamoto gửi mơ muối với trà cho ba mẹ nha. Mẹ thử thấy ngon thì mẹ ép luôn cho con mang qua khoe lại đó. |
| Mẹ | Giời ơi người ta tử tế quá vậy. Mai mẹ nấu nồi cà ri để con quay clip gửi cho người ta coi. |
| Linh | Dạ dạ, đúng rồi mẹ. Mà về nhà mình đã, con muốn ngủ một giấc trên giường tre của mẹ. Đêm nay con không cần điều hoà gì hết. |
| Ba | Ờ về thôi. Hai năm rồi, đêm nay nhà mình đủ 4 người. |

---

## Tình huống 12 — Phòng khách nhà ở Đồng Tháp · Sáng hôm sau, cả nhà ăn sáng

> Cảnh tiếng Việt — Bàn ăn sáng, ba ngồi đầu bàn, mẹ bê tô bún ra, em trai vừa ngủ dậy.

| Vai | Lời thoại |
|---|---|
| Mẹ | Linh ơi, bún bò Huế nha. Mẹ dậy từ 4 giờ sáng nấu rồi. |
| Linh | Mẹ ơi sao mẹ cực vậy, con dậy con phụ. |
| Mẹ | Cực gì, mẹ vui mà. Hai năm mới có dịp nấu cho con. |
| Ba | Linh nè, con tính sao về 5 năm SSW đó, ba muốn nghe kỹ. |
| Linh | Dạ. Con ở 5 năm 特定技能 1号. Lương 1 tháng khoảng 22-25 man, tức là cỡ 35-40 triệu đồng. Trừ chi phí thì để dành được tầm 20 triệu/tháng. 5 năm là cỡ 1 tỷ. |
| Ba | (gật gù) Số đó về mình mở trại rau thuỷ canh được đó. |
| Linh | Dạ con tính y chang ba. 親方 hứa dạy con kỹ thuật JAS hữu cơ. Con học chuyên về cà chua bi với rau salad. Về mình làm rau sạch cho TP HCM. |
| Em trai | Vậy em học xong cấp 3 em qua chỗ chị Linh học luôn được không? |
| Linh | Được chứ. Mà em phải học tiếng Nhật giỏi trước nha. Tối thiểu N4 mới qua nổi. |
| Mẹ | Chị Linh học gì em học nấy. Mà ăn đi đã, bún nguội rồi kìa. |
| Ba | Linh à, ba mẹ tự hào con lắm. Đi 2 năm về thấy con khác hẳn — chững chạc, có kế hoạch. |
| Linh | Dạ con cảm ơn ba mẹ. Tất cả nhờ ba mẹ cho con đi. |

---

## Tình huống 13 — Nông trại Tanaka · 20/4, quay lại Nhật

| Vai | Lời thoại |
|---|---|
| Yamamoto | お<ruby>帰<rt>かえ</rt></ruby>り、リンさん!<br>*(Mừng em về, Linh!)* |
| Linh | ただいま<ruby>戻<rt>もど</rt></ruby>りました。<ruby>10日間<rt>とおかかん</rt></ruby>、ありがとうございました。<br>*(Em đã về ạ. 10 ngày qua cảm ơn bác ạ.)* |
| Yamamoto | <ruby>家族<rt>かぞく</rt></ruby>はみんな<ruby>元気<rt>げんき</rt></ruby>?<br>*(Gia đình khoẻ cả chứ?)* |
| Linh | はい、みんな<ruby>元気<rt>げんき</rt></ruby>です。<ruby>父<rt>ちち</rt></ruby>からこれを<ruby>預<rt>あず</rt></ruby>かりました。ベトナムの<ruby>蓮茶<rt>はすちゃ</rt></ruby>と<ruby>家族<rt>かぞく</rt></ruby>の<ruby>写真<rt>しゃしん</rt></ruby>です。<br>*(Vâng, mọi người đều khoẻ. Ba em gửi bác cái này. Trà sen Việt Nam và ảnh gia đình ạ.)* |
| Yamamoto | これは<ruby>嬉<rt>うれ</rt></ruby>しい。お<ruby>父<rt>とう</rt></ruby>さんに「ありがとう」と<ruby>伝<rt>つた</rt></ruby>えて。さあ、<ruby>春<rt>はる</rt></ruby>の<ruby>種<rt>たね</rt></ruby>まきが<ruby>始<rt>はじ</rt></ruby>まる。<ruby>3年目<rt>さんねんめ</rt></ruby>もよろしく。<br>*(Bác mừng quá. Gửi lời cảm ơn bố em. Nào, gieo hạt mùa xuân bắt đầu rồi. Năm 3 nhờ em.)* |
| Linh | はい、<ruby>新<rt>あたら</rt></ruby>しい<ruby>気持<rt>きも</rt></ruby>ちで<ruby>頑張<rt>がんば</rt></ruby>ります。トゥアンとハンは?<br>*(Vâng, em sẽ cố với tâm thế mới ạ. Tuấn và Hằng đâu rồi ạ?)* |
| Yamamoto | ハウスにいるよ。リンさんを<ruby>待<rt>ま</rt></ruby>ってる。<br>*(Trong nhà kính. Đang chờ Linh kìa.)* |
| Linh | はい、<ruby>挨拶<rt>あいさつ</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Vâng, em đi chào ngay ạ.)* |

---

## Đọng lại chương

**Mẫu câu trọng tâm:**
- **〜することに<ruby>決<rt>き</rt></ruby>めました** — Em đã quyết định ~ (thông báo trang trọng)
- **<ruby>了承<rt>りょうしょう</rt></ruby>を<ruby>得<rt>え</rt></ruby>ました** — Em đã được đồng ý (formal hơn いいですって)
- **<ruby>承知<rt>しょうち</rt></ruby>しました** — Đã hiểu/đã rõ (keigo, trên 分かりました)
- **<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>っていただけますか?** — Bác nhận giúp em được không ạ? (đưa quà/thư)
- **ただいま<ruby>戻<rt>もど</rt></ruby>りました** — Em đã quay về (chính thức sau chuyến đi)
- **〜<ruby>新<rt>あたら</rt></ruby>しい<ruby>気持<rt>きも</rt></ruby>ちで<ruby>頑張<rt>がんば</rt></ruby>ります** — Em sẽ cố với tâm thế mới
- **<ruby>娘<rt>むすめ</rt></ruby>のように<ruby>育<rt>そだ</rt></ruby>ててくださいました** — Bác đã dạy bảo em như con gái (trong thư cảm ơn)

> Từ vựng & mẫu câu chương này: <ruby>総括<rt>そうかつ</rt></ruby>・<ruby>成果<rt>せいか</rt></ruby>・<ruby>謙虚<rt>けんきょ</rt></ruby>・<ruby>欠勤<rt>けっきん</rt></ruby>・<ruby>誇<rt>ほこ</rt></ruby>る・<ruby>移行<rt>いこう</rt></ruby>・<ruby>推薦<rt>すいせん</rt></ruby>・<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>・<ruby>再入国許可<rt>さいにゅうこくきょか</rt></ruby>・<ruby>入管<rt>にゅうかん</rt></ruby>・<ruby>航空券<rt>こうくうけん</rt></ruby>・<ruby>復路<rt>ふくろ</rt></ruby>・<ruby>諸税<rt>しょぜい</rt></ruby>・<ruby>感謝状<rt>かんしゃじょう</rt></ruby>・<ruby>仏壇<rt>ぶつだん</rt></ruby>・<ruby>梅干<rt>うめぼ</rt></ruby>し・<ruby>蓮茶<rt>はすちゃ</rt></ruby>・<ruby>報連相<rt>ほうれんそう</rt></ruby>.

---

## Bí quyết chương

- **Thư tay 感謝状 cho 親方 cuối năm 2** — Văn hoá Nhật trọng thư viết tay. Mua giấy washi, bút máy, viết bằng kanji nếu được. Bác Yamamoto sẽ đặt cạnh 仏壇 (bàn thờ) — đỉnh cao trân trọng.
- **Lễ chuyển 技能実習 → 特定技能** — Thông báo chính thức cho 監理団体 bằng câu「<ruby>移行<rt>いこう</rt></ruby>することに<ruby>決<rt>き</rt></ruby>めました」chứ không「やりたい」. Quyết định = trang trọng.
- **Sempai năm 2 cho kohai năm 1** — 3 nguyên tắc dạy lại: 挨拶 + 返事 + 報連相. Đừng dạy hết một lúc. Dạy bằng tiếng Việt riêng OK, nhưng trước mặt 親方 luôn tiếng Nhật.
- **<ruby>再入国許可<rt>さいにゅうこくきょか</rt></ruby> trước khi về VN** — Phải xin tại 入管 trước 1 tháng. Nếu không xin, visa hủy luôn = ác mộng. Đoàn 監理団体 phải nhắc, nhưng tự mình cũng nên biết.
- **Đặt vé tháng 4 đắt vì 桜 (anh đào)** — Người Việt thường tránh tháng 4-5. Đặt 6 tuần trước. Vé khứ hồi Narita-SGN/HAN khoảng 90-110 man đỉnh, 60-70 thấp điểm.
- **Trở lại Nhật sau về thăm = mang quà cho 親方** — Trà sen, cà phê, bánh đậu xanh là chuẩn. Kèm ảnh gia đình tăng tình cảm — bác sẽ dán lên tường văn phòng.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 総括 | そうかつ | TỔNG QUÁT | tổng kết |
| 面談 | めんだん | DIỆN ĐÀM | gặp mặt trao đổi |
| 成果 | せいか | THÀNH QUẢ | thành quả |
| 合格 | ごうかく | HỢP CÁCH | đậu (kỳ thi) |
| 修了 | しゅうりょう | TU LIỄU | hoàn thành (khoá) |
| 謙虚 | けんきょ | KHIÊM HƯ | khiêm tốn |
| 欠勤 | けっきん | KHUYẾT CẦN | vắng mặt |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 誇る | ほこる | KHOA | tự hào |
| 移行 | いこう | DI HÀNH | chuyển đổi (visa, hình thức) |
| 推薦 | すいせん | SUY TIẾN | giới thiệu, tiến cử |
| 応援 | おうえん | ỨNG VIỆN | ủng hộ |
| 栽培 | さいばい | TÀI BỒI | trồng trọt, canh tác |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 申請 | しんせい | THÂN THỈNH | xin (giấy tờ, visa) |
| 合格証 | ごうかくしょう | HỢP CÁCH CHỨNG | giấy chứng nhận đậu |
| 健康診断書 | けんこうしんだんしょ | KIỆN KHANG CHẨN ĐOÁN THƯ | giấy khám sức khoẻ |
| 住民票 | じゅうみんひょう | TRỤ DÂN PHIẾU | giấy cư trú |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | phép có lương |
| 了承 | りょうしょう | LIỄU THỪA | sự đồng ý (formal) |
| 再入国許可 | さいにゅうこくきょか | TÁI NHẬP QUỐC HỨA KHẢ | giấy phép tái nhập quốc |
| 入管 | にゅうかん | NHẬP QUẢN | cục xuất nhập cảnh |
| 出発 | しゅっぱつ | XUẤT PHÁT | xuất phát |
| 桜 | さくら | ANH | hoa anh đào |
| 航空券 | こうくうけん | HÀNG KHÔNG KHOÁN | vé máy bay |
| 予約 | よやく | DỰ ƯỚC | đặt trước |
| 復路 | ふくろ | PHỤC LỘ | chiều về |
| 承知 | しょうち | THỪA TRI | đã hiểu (keigo) |
| 直行便 | ちょっこうびん | TRỰC HÀNH TIỆN | chuyến bay thẳng |
| 往復 | おうふく | VÃNG PHỤC | khứ hồi |
| 諸税 | しょぜい | CHƯ THUẾ | các loại thuế |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng |
| 任せる | まかせる | NHIỆM | giao phó, trao việc |
| 隠す | かくす | ẨN | giấu |
| 種 | たね | CHỦNG | hạt giống |
| 落とす | おとす | LẠC | làm rớt |
| 箒 | ほうき | TRỬU | chổi |
| 掃く | はく | TẢO | quét |
| 感謝状 | かんしゃじょう | CẢM TẠ TRẠNG | thư cảm ơn (chính thức) |
| 手紙 | てがみ | THỦ CHỈ | thư tay |
| 受け取る | うけとる | THỌ THỦ | tiếp nhận |
| 娘 | むすめ | NƯƠNG | con gái |
| 仏壇 | ぶつだん | PHẬT ĐÀN | bàn thờ Phật |
| おでん | — | — | oden (món hầm Nhật) |
| 染みる | しみる | NHIỄM | thấm, ngấm |
| 土産 | みやげ | THỔ SẢN | quà |
| 持ち込む | もちこむ | TRÌ NHẬP | mang vào (qua hải quan) |
| 梅干し | うめぼし | MAI CAN | mơ muối |
| 緑茶 | りょくちゃ | LỤC TRÀ | trà xanh |
| 蓮茶 | はすちゃ | LIÊN TRÀ | trà sen |
| 写真 | しゃしん | TẢ CHÂN | ảnh chụp |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | báo cáo - liên lạc - bàn bạc |
| 種まき | たねまき | CHỦNG — | gieo hạt |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
